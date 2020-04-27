local join_bot = "Tocutoeltuco#6919"
local join_epoch = os.time({year=2020, month=1, day=1, hour=0})
local join_to_delete = {_count = 0}
local waiting_mod = false
local next_join_check = os.time() + 15000
local waiting_mod_timeout = 0

onEvent("PlayerDataLoaded", function(player, data)
	if player ~= join_bot then return end

	local done
	done, data = pcall(json.decode, data)
	if not done then
		system.savePlayerData(player, "{}")
	end

	if room.name == "*#parkour0maps" then
		eventJoinSystemDataLoaded(join_bot, data)
	else
		local now = os.time() - join_epoch
		join_to_delete._count = 0

		for room_name, expire in next, data do
			if not expire[1] then
				if now >= expire[2] then
					join_to_delete._count = join_to_delete._count + 1
					join_to_delete[join_to_delete._count] = room_name

				elseif room_name == room.name then
					waiting_mod = true
					waiting_mod_timeout = now + 15000

					tfm.exec.setRoomMaxPlayers(20)
				end
			end
		end

		for idx = 1, join_to_delete._count do
			data[join_to_delete[idx]] = nil
		end

		system.savePlayerData(join_bot, json.encode(data))
	end
end)

onEvent("Loop", function()
	local now = os.time()
	if now >= next_join_check then
		system.loadPlayerData(join_bot)
		next_join_check = now + 15000
	end
	if waiting_mod then
		tfm.exec.setRoomMaxPlayers(20)
		if (now - join_epoch) >= waiting_mod_timeout then
			waiting_mod = false
		end
	else
		tfm.exec.setRoomMaxPlayers(12)
	end
end)