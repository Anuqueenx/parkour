translations.en = {
	name = "en",
	fullname = "English",

	-- Error messages
	corrupt_map = "<r>Corrupt map. Loading another.",
	corrupt_map_vanilla = "<r>[ERROR] <n>Can not get information of this map.",
	corrupt_map_mouse_start = "<r>[ERROR] <n>This map needs to have a start position (mouse spawn point).",
	corrupt_map_needing_chair = "<r>[ERROR] <n>The map needs to have the end chair.",
	corrupt_map_missing_checkpoints = "<r>[ERROR] <n>The map needs to have at least one checkpoint (yellow nail).",
	corrupt_data = "<r>Unfortunately, your data was corrupt and has been reset.",
	min_players = "<r>To save your data, there must be at least 4 unique players in the room. <bl>[%s/%s]",
	tribe_house = "<r>Data will not be saved in tribehouses.",
	invalid_syntax = "<r>Invalid syntax.",
	code_error = "<r>An error appeared: <bl>%s-%s-%s %s",
	emergency_mode = "<r>Initiating emergency shutdown, no new players allowed. Please go to another #parkour room.",
	leaderboard_not_loaded = "<r>The leaderboard has not been loaded yet. Wait a minute.",

	-- Help window
	help = "Help",
	staff = "Staff",
	rules = "Rules",
	contribute = "Contribute",
	changelog = "News",
	help_help = "<p align = 'center'><font size = '14'>Welcome to <T>#parkour!</T></font></p>\n<font size = '12'><p align='center'><J>Your goal is to reach all the checkpoints until you complete the map.</J></p>\n\n<N>• Press <O>O</O>, type <O>!op</O> or click the <O>configuration button</O> to open the <T>options menu</T>.\n• Press <O>P</O> or click the <O>hand icon</O> at the top-right to open the <T>powers menu</T>.\n• Press <O>L</O> or type <O>!lb</O> to open the <T>leaderboard</T>.\n• Press the <O>M</O> or <O>Delete</O> key to <T>/mort</T>, you can toggle the keys in the <J>Options</J> menu.\n• To know more about our <O>staff</O> and the <O>rules of parkour</O>, click on the <T>Staff</T> and <T>Rules</T> tab respectively.\n• Click <a href='event:discord'><o>here</o></a> to get the discord invite link and <a href='event:map_submission'><o>here</o></a> to get the map submission topic link.\n• Use <o>up</o> and <o>down</o> arrow keys when you need to scroll.\n\n<p align = 'center'><font size = '13'><T>Contributions are now open! For further details, click on the <O>Contribute</O> tab!</T></font></p>",
	help_staff = "<p align = 'center'><font size = '13'><r>DISCLAIMER: Parkour staff ARE NOT Transformice staff and DO NOT have any power in the game itself, only within the module.</r>\nParkour staff ensure that the module runs smoothly with minimal issues, and are always available to assist players whenever necessary.</font></p>\nYou can type <D>!staff</D> in the chat to see the staff list.\n\n<font color = '#E7342A'>Administrators:</font> They are responsible for maintaining the module itself by adding new updates and fixing bugs.\n\n<font color = '#D0A9F0'>Team Managers:</font> They oversee the Moderator and Mapper teams, making sure they are performing their jobs well. They are also responsible for recruiting new members to the staff team.\n\n<font color = '#FFAAAA'>Moderators:</font> They are responsible for enforcing the rules of the module and punishing individuals who do not follow them.\n\n<font color = '#25C059'>Mappers:</font> They are responsible for reviewing, adding, and removing maps within the module to ensure that you have an enjoyable gameplay.",
	help_rules = "<font size = '13'><B><J>All rules in the Transformice Terms and Conditions also apply to #parkour</J></B></font>\n\nIf you find any player breaking these rules, whisper the parkour mods in-game. If no mods are online, then it is recommended to report it in the discord server.\nWhen reporting, please include the server, room name, and player name.\n• Ex: en-#parkour10 Blank#3495 trolling\nEvidence, such as screenshots, videos and gifs are helpful and appreciated, but not necessary.\n\n<font size = '11'>• No <font color = '#ef1111'>hacks, glitches or bugs</font> are to be used in #parkour rooms\n• <font color = '#ef1111'>VPN farming</font> will be considered an <B>exploit</B> and is not allowed. <p align = 'center'><font color = '#cc2222' size = '12'><B>\nAnyone caught breaking these rules will be immediately banned.</B></font></p>\n\n<font size = '12'>Transformice allows the concept of trolling. However, <font color='#cc2222'><B>we will not allow it in parkour.</B></font></font>\n\n<p align = 'center'><J>Trolling is when a player intentionally uses their powers or consumables to prevent other players from finishing the map.</j></p>\n• Revenge trolling is <B>not a valid reason</B> to troll someone and you will still be punished.\n• Forcing help onto players trying to solo the map and refusing to stop when asked is also considered trolling.\n• <J>If a player does not want help or prefers to solo a map, please try your best to help other players</J>. However if another player needs help in the same checkpoint as the solo player, you can help them [both].\n\nIf a player is caught trolling, they will be punished on a time basis. Note that repeated trolling will lead to longer and more severe punishments.",
	help_contribute = "<font size='14'>\n<p align='center'>The parkour management team loves open source code because it <t>helps the community</t>. You can <o>view</o> and <o>modify</o> the source code on <o><u><a href='event:github'>GitHub</a></u></o>.\n\nMaintaining the module is <t>strictly voluntary</t>, so any help regarding <t>code</t>, <t>bug reports</t>, <t>suggestions</t> and <t>creating maps</t> is always <u>welcome and appreciated</u>.\nYou can <vp>report bugs</vp> and <vp>give suggestions</vp> on <o><u><a href='event:discord'>Discord</a></u></o> and/or <o><u><a href='event:github'>GitHub</a></u></o>.\nYou can <vp>submit your maps</vp> in our <o><u><a href='event:map_submission'>Forum Thread</a></u></o>.\n\nMaintaining parkour is not expensive, but it is not free either. We'd love if you could help us by <t>donating any amount</t> <o><u><a href='event:donate'>here</a></u></o>.\n<u>All donations will go towards improving the module.</u></p>",
	help_changelog = "<font size='13'><p align='center'><o>Version 2.5.0 - 05/09/2020</o></p>\n\n<font size='11'>• Fixed most bugs regarding room crashes.\n• The <cep>!staff</cep> command now has a window.\n• When you finish a map, you can use <cep>!cp</cep> to teleport to a previous checkpoint.\n• Profile system! Type <cep>!profile [player]</cep> to see their profile.\n• Some maps will <vp>periodically</vp> show a poll so you can vote to <vp>keep</vp> or <r>remove</r> it.\n• <b>6 new powers were added!</b>\n• <u>Your time</u> will start counting <u>after you first move</u>.\n• The player who finishes with the shortest time will have a <font color='#ffffff'>white nickname</font>.\n• You can now <d>change your power key bindings</d>.\n• You can use the <cep>!map</cep> command in your tribehouse to <vp>skip a map</vp>.\n• You can press <cep>F</cep> to enable or disable the <r>no-help line</r>.\n• <i>(Probably)</i> new bugs :(",

	-- Congratulation messages
	reached_level = "<d>Congratulations! You've reached level <vp>%s</vp>.",
	finished = "<d><o>%s</o> finished the parkour in <vp>%s</vp> seconds, <fc>congratulations!",
	unlocked_power = "<ce><d>%s</d> unlocked the <vp>%s</vp> power.",

	-- Information messages
	staff_power = "<p align='center'><font size='12'><r>Parkour staff <b>do not</b> have any power outside of #parkour rooms.",
	donate = "<vp>Type <b>!donate</b> if you would like to donate for this module!",
	paused_events = "<cep><b>[Warning!]</b> <n>The module has reached it's critical limit and is being paused.",
	resumed_events = "<n2>The module has been resumed.",
	welcome = "<n>Welcome to <t>#parkour</t>!",
	module_update = "<r><b>[Warning!]</b> <n>The module will update in <d>%02d:%02d</d>.",
	leaderboard_loaded = "<j>The leaderboard has been loaded. Press L to open it.",
	kill_minutes = "<R>Your powers have been disabled for %s minutes.",
	permbanned = "<r>You have been permanently banned from #parkour.",
	tempbanned = "<r>You have been banned from #parkour for %s minutes.",

	-- Miscellaneous
	options = "<p align='center'><font size='20'>Parkour Options</font></p>\n\nUse particles for checkpoints\n\nUse <b>QWERTY</b> keyboard (disable if <b>AZERTY</b>)\n\nUse <b>M</b> hotkey for <b>/mort</b> (disable for <b>DEL</b>)\n\nShow your power cooldowns\n\nShow powers button\n\nShow help button\n\nShow map completion announcements\n\nShow no help symbol",
	cooldown = "<v>[#] <r>Wait a few seconds before doing that again.",
	power_options = ("<font size='13' face='Lucida Console'><b>QWERTY</b> keyboard" ..
					 "\n\n<b>Hide</b> map count"),
	unlock_power = ("<font size='13' face='Lucida Console'><p align='center'>Complete <v>%s</v> maps" ..
					"<font size='5'>\n\n</font>to unlock" ..
					"<font size='5'>\n\n</font><v>%s</v>"),
	upgrade_power = ("<font size='13' face='Lucida Console'><p align='center'>Complete <v>%s</v> maps" ..
					"<font size='5'>\n\n</font>to upgrade to" ..
					"<font size='5'>\n\n</font><v>%s</v>"),
	unlock_power_rank = ("<font size='13' face='Lucida Console'><p align='center'>Rank <v>%s</v>" ..
					"<font size='5'>\n\n</font>to unlock" ..
					"<font size='5'>\n\n</font><v>%s</v>"),
	upgrade_power_rank = ("<font size='13' face='Lucida Console'><p align='center'>Rank <v>%s</v>" ..
					"<font size='5'>\n\n</font>to upgrade to" ..
					"<font size='5'>\n\n</font><v>%s</v>"),
	maps_info = ("<p align='center'><font size='13' face='Lucida Console'><b><v>%s</v></b>" ..
				 "<font size='5'>\n\n</font>Completed Maps"),
	overall_info = ("<p align='center'><font size='13' face='Lucida Console'><b><v>%s</v></b>" ..
					"<font size='5'>\n\n</font>Overall Leaderboard"),
	weekly_info = ("<p align='center'><font size='13' face='Lucida Console'><b><v>%s</v></b>" ..
				   "<font size='5'>\n\n</font>Weekly Leaderboard"),
	badges = "<font size='14' face='Lucida Console,Verdana'>Badges (%s): <a href='event:_help:badge'><j>[?]</j></a>",
	private_maps = "<bl>This player's map count is private. <a href='event:_help:private_maps'><j>[?]</j></a></bl>\n",
	profile = ("<font size='12' face='Lucida Console,Verdana'>%s%s %s\n\n" ..
				"Overall leaderboard position: <b><v>%s</v></b>\n\n" ..
				"Weekly leaderboard position: <b><v>%s</v></b>"),
	map_count = "Map count: <b><v>%s</v></b>",
	help_badge = "Badges are accomplishments a player can get. Click over them to see their description.",
	help_private_maps = "This player doesn't like to share their map count publicly! You can hide them too in your profile.",
	help_badge_1 = "This player has been a parkour staff member in the past.",
	help_badge_2 = "This player is or was in the page 1 of the overall leaderboard.",
	help_badge_3 = "This player is or was in the page 2 of the overall leaderboard.",
	help_badge_4 = "This player is or was in the page 3 of the overall leaderboard.",
	help_badge_5 = "This player is or was in the page 4 of the overall leaderboard.",
	help_badge_6 = "This player is or was in the page 5 of the overall leaderboard.",
	help_badge_7 = "This player has been in the podium of the weekly leaderboard when it has reset.",
	help_badge_8 = "This player has got a record of 30 maps per hour.",
	help_badge_9 = "This player has got a record of 35 maps per hour.",
	help_badge_10 = "This player has got a record of 40 maps per hour.",
	help_badge_11 = "This player has got a record of 45 maps per hour.",
	help_badge_12 = "This player has got a record of 50 maps per hour.",
	help_badge_13 = "This player has got a record of 55 maps per hour.",
	make_public = "make public",
	make_private = "make private",
	moderators = "Moderators",
	mappers = "Mappers",
	managers = "Managers",
	administrators = "Administrators",
	close = "Close",
	cant_load_bot_profile = "<v>[#] <r>You can't see this bot's profile since #parkour uses it internally to work properly.",
	cant_load_profile = "<v>[#] <r>The player <b>%s</b> seems to be offline or does not exist.",
	like_map = "Do you like this map?",
	yes = "Yes",
	no = "No",
	idk = "I don't know",
	unknown = "Unknown",
	powers = "Powers",
	press = "<vp>Press %s",
	click = "<vp>Left click",
	ranking_pos = "Rank #%s",
	completed_maps = "<p align='center'><BV><B>Completed maps: %s</B></p></BV>",
	leaderboard = "Leaderboard",
	position = "<V><p align=\"center\">Position",
	username = "<V><p align=\"center\">Username",
	community = "<V><p align=\"center\">Community",
	completed = "<V><p align=\"center\">Completed maps",
	overall_lb = "Overall",
	weekly_lb = "Weekly",
	new_lang = "<v>[#] <d>Language set to English",

	-- Power names
	balloon = "Balloon",
	masterBalloon = "Master Ballon",
	bubble = "Bubble",
	fly = "Fly",
	snowball = "Snowball",
	speed = "Speed",
	teleport = "Teleport",
	smallbox = "Small box",
	cloud = "Cloud",
	rip = "Tombstone",
	choco = "Chocoplank",
	bigBox = "Big box",
	trampoline = "Trampoline",
	toilet = "Toilet",
	pig = "Pig",
	sink = "Sink",
	bathtub = "Bathtub",
	campfire = "Campfire",
	chair = "Chair",
}
