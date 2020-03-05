import aiotfm
import aiomysql
import aiohttp
import asyncio
import re
import os

HANDSHAKE     = ( 1 << 8) + 255
LIST_FORUM    = ( 2 << 8) + 255
LIST_MAPS     = ( 3 << 8) + 255
UNREADS       = ( 4 << 8) + 255
OPEN_VOTATION = ( 5 << 8) + 255
NEW_COMMENT   = ( 6 << 8) + 255
NEW_MAP_VOTE  = ( 7 << 8) + 255
DELETE_MSG    = ( 8 << 8) + 255
RESTORE_MSG   = ( 9 << 8) + 255
CHANGE_STATUS = (10 << 8) + 255
NEW_VOTATION  = (11 << 8) + 255
PERM_MAP      = (12 << 8) + 255

MIGRATE_DATA  = (13 << 8) + 255 # This packet is not related to the map system, but is here so we don't use a lot of resources.

class Client(aiotfm.Client):
	version = b"1.0.0-beta"
	pool = None

	async def handle_packet(self, conn, packet):
		CCC = packet.readCode()
		if CCC == (29, 20):
			self.dispatch("lua_textarea", packet.read32(), packet.readString())

		elif CCC == (28, 5):
			packet.read16()
			if packet.readUTF() == "$CarteIntrouvable":
				self.dispatch("map_info", None, None, None)

		elif CCC == (6, 20):
			packet.readBool()
			data = packet.readUTF()
			match = re.search(r"(\+?[A-Za-z][A-Za-z0-9_]{2,20}(?:#\d{4})?) - (@\d+) - \d+ - \d+% - P(\d+)", data)

			if match is not None:
				self.dispatch("map_info", *match.group(1, 2), int(match.group(3)))

		packet.pos = 0
		await super().handle_packet(conn, packet)

	async def on_migrating_data(self, to_send): # Acts as a bridge.
		if self.pool is not None and b"," in to_send:
			async with self.pool.acquire() as conn:
				async with conn.cursor() as cursor:
					player, data = to_send.split(b",", 1)
					player = player.decode()

					await cursor.execute("SELECT `player` FROM `migrated` WHERE `player`=%s", (player,))
					if (await cursor.fetchone()) is not None:
						return self.drawbattle.dispatch("migrating_data", player.encode())

		await self.sendLuaCallback(MIGRATE_DATA, to_send)

	async def getMapInfo(self, mapcode, timeout=3.0):
		await self.sendCommand("info " + mapcode)
		return await self.wait_for("on_map_info", timeout=timeout)

	async def on_login_ready(self, *args):
		print("[MAPPER] Connected. Logging in...")
		await self.login("Tocutoeltuco#2629", os.getenv("MAPPER_PASSWORD"), encrypted=False, room="*#parkour0maps")

	async def on_logged(self, *args):
		print("[MAPPER] Logged in!")

	async def sendLuaCallback(self, txt_id, text):
		packet = aiotfm.Packet.new(29, 21)
		await self.bulle.send(packet.write32(txt_id).writeString(text))

	async def sendForumList(self, cursor):
		await cursor.execute("SELECT code, upvote FROM votes")
		votes = await cursor.fetchall()

		await cursor.execute(
			"SELECT \
				b.name as author, a.code, a.permed, \
				a.archived, \
				d.name as started, \
				e.name as last, \
				a.comments \
			FROM \
				discussions as a \
				INNER JOIN user_names as b ON b.id = a.author \
				LEFT JOIN user_names as d ON d.id = a.started \
				LEFT JOIN user_names as e ON e.id = a.last"
		)

		data = []
		for row in await cursor.fetchall():
			votes_count = 0
			for vote in votes:
				if vote["code"] == row["code"]:
					if vote["upvote"]:
						votes_count += 1
					else:
						votes_count -= 1

			data.extend([
				row["author"], str(row["code"]), str(row["permed"]),
				str(votes_count), str(row["archived"]),
				" " if row["started"] is None else row["started"],
				" " if row["last"] is None else row["last"],
				str(row["comments"])
			])

		await self.sendLuaCallback(LIST_FORUM, ",".join(map(str, data)))

	async def sendMapList(self, cursor):
		await cursor.execute(
			"SELECT \
				a.code, b.name \
			FROM \
				maps as a \
				INNER JOIN user_names as b ON b.id = a.author"
		)
		packet = ",".join(
			map(
				lambda row: f'{row["name"]},{row["code"]}',
				await cursor.fetchall()
			)
		)

		await self.sendLuaCallback(LIST_MAPS, packet)

	async def watchMap(self, code, expected, every=1.0, timeout=15.0):
		start = self.loop.time()
		while self.loop.time() - start < timeout:
			next_one = self.loop.time() + every
			author, code, perm = await self.getMapInfo(code, timeout=every)

			if perm == expected:
				return True

			now = self.loop.time()
			if now > 0:
				await asyncio.sleep(next_one - now)
		return False

	async def changeMapPerm(self, code, perm, timeout=15.0):
		await self.whisper("Sharpiebot#0000", "p" + perm + " " + code)
		return await self.watchMap(code, int(perm), every=1.0, timeout=timeout)

	async def on_lua_textarea(self, txt_id, text):
		if txt_id & 255 != 255:
			return

		if txt_id == HANDSHAKE:
			try:
				self.pool = await aiomysql.create_pool(
					host=os.getenv("DB_IP"), port=3306,
					user=os.getenv("DB_USER"), password=os.getenv("DB_PASSWORD"),
					db="parkour", loop=self.loop,
					autocommit=True, cursorclass=aiomysql.DictCursor
				)
			except:
				return await self.sendLuaCallback(HANDSHAKE, b"not ok;" + self.version + b"-no_pool")

			if text == (self.version + b"-pool"):
				async with self.pool.acquire() as conn:
					async with conn.cursor() as cursor:
						await self.sendLuaCallback(HANDSHAKE, "ok")
						await self.sendForumList(cursor)
						await self.sendMapList(cursor)

				return
			await self.sendLuaCallback(HANDSHAKE, b"not ok;" + self.version + b"-pool")

		elif txt_id == UNREADS:
			data = text.decode().split(",")

			async with self.pool.acquire() as conn:
				async with conn.cursor() as cursor:
					await cursor.execute("REPLACE INTO user_names VALUES (%s, %s)", (data[0], data[1]))

					if len(data) == 4:
						return await self.sendLuaCallback(UNREADS, ",".join(data))

					codes = data[4:]
					placeholders = "(" + (", ".join(["%s"] * (len(data) - 4))) + ")"
					await cursor.execute(
						"SELECT code, until \
						FROM user_read \
						WHERE user = %s AND code IN " + placeholders,
						[data[0]] + codes
					)

					shown = []
					packet = data[:4]
					for row in await cursor.fetchall():
						code = str(row["code"])
						shown.append(code)
						packet.append(code)
						packet.append(str(row["until"]))

					for code in codes:
						if code not in shown:
							packet.append(code)
							packet.append("0")

					await self.sendLuaCallback(UNREADS, ",".join(packet))

		elif txt_id == OPEN_VOTATION:
			data = text.decode().split(",")
			user = data.pop(0)
			page = data.pop(0)
			can_delete = data.pop(0)
			limit = 12

			async with self.pool.acquire() as conn:
				async with conn.cursor() as cursor:
					await cursor.execute(
						"REPLACE INTO user_read \
							(user, code, until) \
						VALUES \
							(%s, %s, %s)",
						data
					)

					if can_delete == "1":
						await cursor.execute(
							"SELECT \
								a.id, b.name, a.message, c.name as moderator \
							FROM \
								comments as a \
								INNER JOIN user_names as b ON b.id = a.author \
								LEFT JOIN user_names as c ON c.id = a.deleted \
							WHERE \
								a.code = %s \
							LIMIT %s,%s",
							(data[1], int(page), limit)
						)
					else:
						await cursor.execute(
							"SELECT \
								a.id, b.name, a.message, c.name as moderator \
							FROM \
								comments as a \
								INNER JOIN user_names as b ON b.id = a.author \
								LEFT JOIN user_names as c ON c.id = a.deleted \
							WHERE \
								a.code = %s AND a.deleted is null \
							LIMIT %s,%s",
							(data[1], int(page), limit)
						)
					comments = await cursor.fetchall()

					vote = " "
					votes = 0
					mapper = int(data[0])
					await cursor.execute("SELECT mapper, upvote FROM votes WHERE code=%s", (data[1],))
					for row in await cursor.fetchall():
						if row["mapper"] == mapper:
							vote = str(row["upvote"])

						if row["upvote"]:
							votes += 1
						else:
							votes -= 1

					packet = [user, data[1], page, can_delete, vote, str(votes)]
					for comment in comments:
						packet.extend([
							str(comment["id"]), comment["name"],
							" " if comment["moderator"] is None else comment["moderator"],
							comment["message"].replace("&", "&0").replace(",", "&1")
						])

					await self.sendLuaCallback(OPEN_VOTATION, ",".join(packet))

		elif txt_id == DELETE_MSG:
			data = text.decode().split(",")

			async with self.pool.acquire() as conn:
				async with conn.cursor() as cursor:
					await cursor.execute("UPDATE comments SET deleted=%s WHERE id=%s", data)

		elif txt_id == RESTORE_MSG:
			async with self.pool.acquire() as conn:
				async with conn.cursor() as cursor:
					await cursor.execute("UPDATE comments SET deleted=null WHERE id=%s", (text.decode(),))

		elif txt_id == NEW_MAP_VOTE:
			player, code, vote = text.decode().split(",")

			async with self.pool.acquire() as conn:
				async with conn.cursor() as cursor:
					if vote == " ":
						await cursor.execute(
							"DELETE FROM votes WHERE mapper=%s AND code=%s",
							(player, code)
						)

					else:
						await cursor.execute("REPLACE INTO votes VALUES (%s, %s, %s)", (player, code, vote))

		elif txt_id == CHANGE_STATUS:
			code, archived = text.decode().split(",")

			async with self.pool.acquire() as conn:
				async with conn.cursor() as cursor:
					await cursor.execute("UPDATE discussions SET archived=%s WHERE code=%s", (archived, code))

		elif txt_id == NEW_COMMENT:
			data = text.decode().split(",", 2)

			async with self.pool.acquire() as conn:
				async with conn.cursor() as cursor:
					await cursor.execute("INSERT INTO comments VALUES (null, %s, %s, %s, null)", data)
					await cursor.execute("UPDATE discussions SET comments=comments+1, last=%s WHERE code=%s", (data[1], data[0]))
					await cursor.execute("UPDATE discussions SET started=last WHERE started=0 AND code=%s", (data[0],))

		elif txt_id == NEW_VOTATION:
			player, code = text.decode().split(",")
			try:
				author, _, perm = await self.getMapInfo("@" + code)
			except:
				return await self.sendLuaCallback(NEW_VOTATION, player + ",1," + code + ", , ")

			if author is None:
				return await self.sendLuaCallback(NEW_VOTATION, player + ",1," + code + ", , ")

			elif perm not in (22, 41):
				return await self.sendLuaCallback(NEW_VOTATION, player + ",2," + code + ", , ")

			else:
				if "#" not in author:
					author += "#0000"
				author = author.capitalize()

				async with aiohttp.ClientSession() as session:
					async with session.get("https://cheese.formice.com/api/mouse/@{}".format(author.replace("#", "%23").replace("+", "%2B"))) as resp:
						response = await resp.json()

						if "id" not in response:
							return await self.sendLuaCallback(NEW_VOTATION, player + ",3," + code + ", , ")

						else:
							async with self.pool.acquire() as conn:
								async with conn.cursor() as cursor:
									await cursor.execute("REPLACE INTO user_names VALUES (%s, %s)", (response["id"], author))

									if perm == 41:
										await cursor.execute("SELECT * FROM maps WHERE code = %s", (code,))
										if (await cursor.fetchone()) is None:
											return await self.sendLuaCallback(NEW_VOTATION, player + ",4," + code + ", , ")

									await cursor.execute(
										"INSERT INTO discussions VALUES (%s, %s, %s, 0, 0, 0, 0)",
										(response["id"], code, 1 if perm == 41 else 0)
									)
									return await self.sendLuaCallback(NEW_VOTATION, player + ",0," + code + "," + author + "," + ("1" if perm == 41 else "0"))

		elif txt_id == PERM_MAP:
			player, code, _perm = text.decode().split(",")
			perm = _perm == "1"

			try:
				author, _, map_perm = await self.getMapInfo("@" + code)
			except:
				return await self.sendLuaCallback(PERM_MAP, player + "," + _perm + ",1,1," + code + ", ")

			if author is None:
				return await self.sendLuaCallback(PERM_MAP, player + "," + _perm + ",1,1," + code + ", ")

			elif (perm and map_perm != 22) or (not perm and map_perm != 41):
				return await self.sendLuaCallback(PERM_MAP, player + "," + _perm + ",2,1," + code + ", ")

			else:
				async with aiohttp.ClientSession() as session:
					async with session.get("https://cheese.formice.com/api/mouse/@{}".format(author.replace("#", "%23").replace("+", "%2B"))) as resp:
						response = await resp.json()

						if "id" not in response:
							return await self.sendLuaCallback(PERM_MAP, player + "," + _perm + ",3,1," + code + ", ")

						else:
							async with self.pool.acquire() as conn:
								async with conn.cursor() as cursor:
									await cursor.execute("REPLACE INTO user_names VALUES (%s, %s)", (response["id"], author))

									await cursor.execute("SELECT * FROM maps WHERE code = %s", (code,))
									row = await cursor.fetchone()
									if perm and row is not None:
										return await self.sendLuaCallback(PERM_MAP, player + "," + _perm + ",4,1," + code + ", ")
									elif not perm and row is None:
										return await self.sendLuaCallback(PERM_MAP, player + "," + _perm + ",5,1," + code + ", ")

									await self.sendLuaCallback(PERM_MAP, player + "," + _perm + ",6,0," + code + ", ")

									if not (await self.changeMapPerm("@" + code, "41" if perm else "22")):
										return await self.sendLuaCallback(PERM_MAP, player +"," + _perm +  ",7,1," + code + ", ")

									if perm:
										await cursor.execute("INSERT INTO maps VALUES (%s, %s)", (response["id"], code))
										await cursor.execute("UPDATE discussions SET permed=1 WHERE code=%s", (code,))
									else:
										await cursor.execute("DELETE FROM maps WHERE code=%s", (code,))
										await cursor.execute("UPDATE discussions SET permed=0 WHERE code=%s", (code,))

									await self.sendLuaCallback(PERM_MAP, player + "," + _perm + ",0,1," + code + "," + author)

		elif txt_id == MIGRATE_DATA:
			if self.pool is not None:
				async with self.pool.acquire() as conn:
					async with conn.cursor() as cursor:
						await cursor.execute("INSERT INTO `migrated` VALUES (%s)", (text.decode(),))

			self.drawbattle.dispatch("migrating_data", text)