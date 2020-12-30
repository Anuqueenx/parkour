translations.es = {
	name = "es",
	fullname = "Español",

	-- Error messages
	corrupt_map = "<r>Mapa corrupto. Cargando otro.",
	corrupt_map_vanilla = "<r>[ERROR] <n>No se pudo obtener información de este mapa.",
	corrupt_map_mouse_start = "<r>[ERROR] <n>El mapa tiene que tener un punto de inicio de los ratones.",
	corrupt_map_needing_chair = "<r>[ERROR] <n>El mapa tiene que tener el sillón del final.",
	corrupt_map_missing_checkpoints = "<r>[ERROR] <n>El mapa tiene que tener al menos un checkpoint (anclaje amarillo).",
	corrupt_data = "<r>Tristemente, tus datos estaban corruptos. Se han reiniciado.",
	min_players = "<r>Para guardar datos, deben haber al menos 4 jugadores únicos en la sala. <bl>[%s/%s]",
	tribe_house = "<r>Para guardar datos, debes jugar fuera de una casa de tribu.",
	invalid_syntax = "<r>Sintaxis inválida.",
	code_error = "<r>Apareció un error: <bl>%s-%s-%s %s",
	emergency_mode = "<r>Empezando apagado de emergencia, no se admiten más jugadores. Por favor ve a otra sala #parkour.",
	leaderboard_not_loaded = "<r>La tabla de clasificación aun no ha sido cargada. Espera un minuto.",
	max_power_keys = "<v>[#] <r>Solo puedes tener como máximo %s poderes en la misma tecla.",

	-- Help window
	help = "Ayuda",
	staff = "Staff",
	rules = "Reglas",
	contribute = "Contribuir",
	changelog = "Novedades",
	help_help = "<p align = 'center'><font size = '14'>¡Bienvenido a <T>#parkour!</T></font></p>\n<font size = '12'><p align='center'><J>Tu objetivo es alcanzar todos los puntos de control hasta que completes el mapa.</J></p>\n\n<N>• Presiona la tecla <O>O</O>, escribe <O>!op</O> o clickea el <O>botón de configuración</O> para abrir el <T>menú de opciones</T>.\n• Presiona la tecla <O>P</O> o clickea el <O>ícono de la mano</O> arriba a la derecha para abrir el <T>menú de poderes</T>.\n• Presiona la tecla <O>L</O> o escribe <O>!lb</O> para abrir el <T>ranking</T>.\n• Presiona la tecla <O>M</O> o <O>Delete</O> como atajo para <T>/mort</T>, podes alternarlas en el menú de <J>Opciones</J>.\n• Para conocer más acerca de nuestro <O>staff</O> y las <O>reglas de parkour</O>, clickea en las pestañas de <T>Staff</T> y <T>Reglas</T>.\n• Click <a href='event:discord'><o>here</o></a> to get the discord invite link and <a href='event:map_submission'><o>here</o></a> to get the map submission topic link.\n• Use <o>up</o> and <o>down</o> arrow keys when you need to scroll.\n\n<p align = 'center'><font size = '13'><T>¡Las contribuciones están abiertas! Para más detalles, ¡clickea en la pestaña <O>Contribuir</O>!</T></font></p>",
	help_staff = "<p align = 'center'><font size = '13'><r>NOTA: El staff de Parkour NO ES staff de Transformice y NO TIENEN ningún poder en el juego, sólamente dentro del módulo.</r>\nEl staff de Parkour se asegura de que el módulo corra bien con la menor cantidad de problemas, y siempre están disponibles para ayudar a los jugadores cuando sea necesario.</font></p>\nPuedes escribir <D>!staff</D> en el chat para ver la lista de staff.\n\n<font color = '#E7342A'>Administradores:</font> Son los responsables de mantener el módulo añadiendo nuevas actualizaciones y arreglando bugs.\n\n<font color = '#D0A9F0'>Lideres de Equipos:</font> Ellos supervisan los equipos de Moderadores y Mappers, asegurándose de que hagan un buen trabajo. También son los responsables de reclutar nuevos miembros al staff.\n\n<font color = '#FFAAAA'>Moderadores:</font> Son los responsables de ejercer las reglas del módulo y sancionar a quienes no las sigan.\n\n<font color = '#25C059'>Mappers:</font> Son los responsables de revisar, añadir y quitar mapas en el módulo para asegurarse de que tengas un buen gameplay.",
	help_rules = "<font size = '13'><B><J>Todas las reglas en los Terminos y Condiciones de Transformice también aplican a #parkour</J></B></font>\n\nSi encuentras algún jugador rompiendo estas reglas, susurra a los moderadores de parkour en el juego. Si no hay moderadores online, es recomendable reportarlo en discord.\nCuando reportes, por favor agrega el servidor, el nombre de la sala, y el nombre del jugador.\n• Ej: en-#parkour10 Blank#3495 trollear\nEvidencia, como fotos, videos y gifs ayudan y son apreciados, pero no son necesarios.\n\n<font size = '11'>• No se permite el uso de <font color = '#ef1111'>hacks, glitches o bugs</font>\n• <font color = '#ef1111'>Farmear con VPN</font> será considerado un <B>abuso</B> y no está permitido. <p align = 'center'><font color = '#cc2222' size = '12'><B>\nCualquier persona rompiendo estas reglas será automáticamente baneado.</B></font></p>\n\n<font size = '12'>Transformice acepta el concepto de trollear. Pero <font color='#cc2222'><B>no está permitido en #parkour.</B></font></font>\n\n<p align = 'center'><J>Trollear es cuando un jugador intencionalmente usa sus poderes o consumibles para hacer que otros jugadores no completen el mapa.</j></p>\n• Trollear como venganza <B>no es una razón válida</B> para trollear a alguien y aún así seras sancionado.\n• Ayudar a jugadores que no quieren completar el mapa con ayuda y no parar cuando te lo piden también es considerado trollear.\n• <J>Si un jugador no quiere ayuda, por favor ayuda a otros jugadores</J>. Sin embargo, si otro jugador necesita ayuda en el mismo punto, puedes ayudarlos [a los dos].\n\nSi un jugador es atrapado trolleando, será sancionado en base de tiempo. Trollear repetidas veces llevará a sanciones más largas y severas.",
	help_contribute = "<font size='14'>\n<p align='center'>El equipo de administración de parkour ama el codigo abierto porque <t>ayuda a la comunidad</t>. Podés <o>ver</o> y <o>modificar</o> el código de parkour en <o><u><a href='event:github'>GitHub</a></u></o>.\n\nMantener el módulo es <t>estrictamente voluntario</t>, por lo que cualquier ayuda con respecto al <t>código</t>, <t>reportes de bugs</t>, <t>sugerencias</t> y <t>creación de mapas</t> siempre será <u>bienvenida y apreciada</u>.\nPodés <vp>reportar bugs</vp> y <vp>dar sugerencias</vp> en <o><u><a href='event:discord'>Discord</a></u></o> y/o <o><u><a href='event:github'>GitHub</a></u></o>.\nPodés <vp>enviar tus mapas</vp> en nuestro <o><u><a href='event:map_submission'>Hilo del Foro</a></u></o>.\n\nMantener parkour no es caro, pero tampoco es gratis. Realmente apreciaríamos si pudieras ayudarnos <t>donando cualquier cantidad</t> <o><u><a href='event:donate'>aquí</a></u></o>.\n<u>Todas las donaciones serán destinadas a mejorar el módulo.</u></p>",
	help_changelog = "<font size='13'><p align='center'><o>Versión 2.9.0 - 13/12/2020</o></p>\n\n<font size='11'>• ¡Se cambiaron algunas imágenes por <ch>Navidad</ch>!\n• Se arreglaron algunos <r>bugs visuales</r>\n• Se mejoró la <vp>infrastructura del módulo</vp>\n• Ahora podés <t>reiniciar un poder</t> a su <t>tecla original</t>\n• <cep>Cuando todos terminan el mapa</cep>, el temporizador será de <cep>5 segundos en vez de 20</cep>.\n• <cs>Se añadió el modo AFK</cs>\n• Se incrementó el <ps>tiempo de espera de la bola de nieve</ps>",

	-- Congratulation messages
	reached_level = "<d>¡Felicitaciones! Alcanzaste el nivel <vp>%s</vp>. (<vp>%ss</vp>)",
	finished = "<d><o>%s</o> completó el parkour en <vp>%s</vp> segundos, <fc>¡felicitaciones!",
	unlocked_power = "<ce><d>%s</d> desbloqueó el poder <vp>%s<ce>.",

	-- Information messages
	mod_apps = "<j>¡Las aplicaciones para moderador de parkour están abiertas! Usa este link: <rose>%s",
	staff_power = "<r>El staff de Parkour <b>no tiene</b> ningún poder afuera de las salas de #parkour.",
	donate = "<vp>¡Escribe <b>!donate</b> si te gustaría donar a este módulo!",
	paused_events = "<cep><b>[¡Advertencia!]</b> <n>El módulo está entrando en estado crítico y está siendo pausado.",
	resumed_events = "<n2>El módulo ha sido reanudado.",
	welcome = "<n>¡Bienvenido a <t>#parkour</t>!",
	module_update = "<r><b>[¡Advertencia!]</b> <n>El módulo se actualizará en <d>%02d:%02d</d>.",
	leaderboard_loaded = "<j>La tabla de clasificación ha sido cargada. Presiona L para abrirla.",
	kill_minutes = "<R>Tus poderes fueron desactivados por %s minutos.",
	permbanned = "<r>Has sido baneado permanentemente de #parkour.",
	tempbanned = "<r>Has sido baneado de #parkour por %s minutos.",
	forum_topic = "<rose>Para más información del módulo visita este link: %s",
	report = "<j>¿Quieres reportar a un jugador de parkour? <t><b>/c Parkour#8558 .report Usuario#0000</b></t>",

	-- Records
	records_enabled = "<v>[#] <d>El modo de récords está activado en esta sala. ¡Las estadísticas no cuentan y los poderes están desactivados!\nPuedes encontrar más información sobre récords en <b>%s</b>",
	records_admin = "<v>[#] <d>Eres un administrador de esta sala de récords. Puedes usar los comandos <b>!map</b>, <b>!setcp</b>, <b>!pw</b> y <b>!time</b>.",
	records_completed = "<v>[#] <d>¡Completaste el mapa! Si te gustaría rehacerlo, escribe <b>!redo</b>.",
	records_submit = "<v>[#] <d>¡Wow! Parece que completaste el mapa con el tiempo más rápido en la sala. Si te gustaría enviar tu record, escribe <b>!submit</b>.",
	records_invalid_map = "<v>[#] <r>Parece que este mapa no está en la rotación de parkour... ¡No puedes enviar un récord en el!",
	records_not_fastest = "<v>[#] <r>Parece que no eres el más rápido en la sala...",
	records_already_submitted = "<v>[#] <r>¡Ya enviaste un récord para este mapa!",
	records_submitted = "<v>[#] <d>Tu récord para el mapa <b>%s</b> ha sido enviado.",

	-- Miscellaneous
	afk_popup = "\n<p align='center'><font size='30'><bv><b>ESTÁS EN MODO AFK</b></bv>\nMUÉVETE PARA REAPARECER</font>\n\n<font size='30'><u><t>Recordatorios:</t></u></font>\n\n<font size='15'><r>¡Los jugadores con una línea roja sobre ellos no quieren ayuda!\n¡Trollear/bloquear a otros jugadores en parkour NO está permitido!<d>\n¡Únete a nuestro <cep><a href='event:discord'>servidor de discord</a></cep>!\n¿Quieres contribuir con código? Vé a nuestro <cep><a href='event:github'>repositorio de github</a></cep>\n¿Tienes un buen mapa para enviar? Envíalo a nuestro <cep><a href='event:map_submission'>hilo de presentaciones de mapas</a></cep>\n¡Checkea nuestro <cep><a href='event:forum'>hilo oficial</a></cep> para más información!\n¡Ayúdanos <cep><a href='event:donate'>donando!</a></cep>",
	options = "<p align='center'><font size='20'>Opciones de Parkour</font></p>\n\nUsar teclado <b>QWERTY</b> (desactivar si usas <b>AZERTY</b>)\n\nUsar la tecla <b>M</b> como atajo para <b>/mort</b> (desactivar si usas <b>DEL</b>)\n\nMostrar tiempos de espera de tus poderes\n\nMostrar el botón de poderes\n\nMostrar el botón de ayuda\n\nMostrar mensajes al completar un mapa\n\nMostrar indicador para no recibir ayuda",
	cooldown = "<v>[#] <r>Espera unos segundos antes de hacer eso de nuevo.",
	power_options = ("<font size='13' face='Lucida Console,Liberation Mono,Courier New'>Teclado <b>QWERTY</b>" ..
					 "\n\n<b>Esconder</b> cantidad de mapas" ..
					 "\n\nUsar <b>tecla original</b>"),
	unlock_power = ("<font size='13' face='Lucida Console,Liberation Mono,Courier New'><p align='center'>Completa <v>%s</v> mapas" ..
					"<font size='5'>\n\n</font>para desbloquear" ..
					"<font size='5'>\n\n</font><v>%s</v>"),
	upgrade_power = ("<font size='13' face='Lucida Console,Liberation Mono,Courier New'><p align='center'>Completa <v>%s</v> mapas" ..
					"<font size='5'>\n\n</font>para mejorar a" ..
					"<font size='5'>\n\n</font><v>%s</v>"),
	unlock_power_rank = ("<font size='13' face='Lucida Console,Liberation Mono,Courier New'><p align='center'>Posición <v>%s</v>" ..
					"<font size='5'>\n\n</font>para desbloquear" ..
					"<font size='5'>\n\n</font><v>%s</v>"),
	upgrade_power_rank = ("<font size='13' face='Lucida Console,Liberation Mono,Courier New'><p align='center'>Posición <v>%s</v>" ..
					"<font size='5'>\n\n</font>para mejorar a" ..
					"<font size='5'>\n\n</font><v>%s</v>"),
	maps_info = ("<p align='center'><font size='13' face='Lucida Console,Liberation Mono,Courier New'><b><v>%s</v></b>" ..
				 "<font size='5'>\n\n</font>Mapas Completados"),
	overall_info = ("<p align='center'><font size='13' face='Lucida Console,Liberation Mono,Courier New'><b><v>%s</v></b>" ..
					"<font size='5'>\n\n</font>Posición General"),
	weekly_info = ("<p align='center'><font size='13' face='Lucida Console,Liberation Mono,Courier New'><b><v>%s</v></b>" ..
				   "<font size='5'>\n\n</font>Posición Semanal"),
	badges = "<font size='14' face='Lucida Console,Liberation Mono,Courier New,Verdana'>Insignias (%s): <a href='event:_help:badge'><j>[?]</j></a>",
	private_maps = "<bl>La cantidad de mapas de este jugador es privada. <a href='event:_help:private_maps'><j>[?]</j></a></bl>\n",
	profile = ("<font size='12' face='Lucida Console,Liberation Mono,Courier New,Verdana'>%s%s %s\n\n" ..
				"Posición general: <b><v>%s</v></b>\n\n" ..
				"Posición semanal: <b><v>%s</v></b>"),
	map_count = "Cantidad de mapas: <b><v>%s</v> / <a href='event:_help:yellow_maps'><j>%s</j></a> / <a href='event:_help:red_maps'><r>%s</r></a></b>",
	help_badge = "Las insignias son logros que un usuario puede obtener. Clickéalas para ver su descripción.",
	help_private_maps = "¡A este jugador no le gusta compartir su cantidad de mapas! Podés esconder la tuya en tu perfil.",
	help_yellow_maps = "Los mapas en amarillo fueron completados en esta semana.",
	help_red_maps = "Los mapas en rojo fueron completados en la última hora.",
	help_badge_1 = "Este jugador fue un miembro del staff de parkour.",
	help_badge_2 = "Este jugador está o estuvo en la página 1 del ranking general.",
	help_badge_3 = "Este jugador está o estuvo en la página 2 del ranking general.",
	help_badge_4 = "Este jugador está o estuvo en la página 3 del ranking general.",
	help_badge_5 = "Este jugador está o estuvo en la página 4 del ranking general.",
	help_badge_6 = "Este jugador está o estuvo en la página 5 del ranking general.",
	help_badge_7 = "Este jugador estuvo en el podio cuando el ranking semanal se reinició.",
	help_badge_8 = "Este jugador tiene un record de 30 mapas en una hora.",
	help_badge_9 = "Este jugador tiene un record de 35 mapas en una hora.",
	help_badge_10 = "Este jugador tiene un record de 40 mapas en una hora.",
	help_badge_11 = "Este jugador tiene un record de 45 mapas en una hora.",
	help_badge_12 = "Este jugador tiene un record de 50 mapas en una hora.",
	help_badge_13 = "Este jugador tiene un record de 55 mapas en una hora.",
	help_badge_14 = "Este jugador verificó su cuenta de discord en el servidor oficial de parkour (escribe <b>!discord</b>).",
	help_badge_15 = "Este jugador tuvo el tiempo más rápido en 1 mapa.",
	help_badge_16 = "Este jugador tuvo el tiempo más rápido en 5 mapas.",
	help_badge_17 = "Este jugador tuvo el tiempo más rápido en 10 mapas.",
	help_badge_18 = "Este jugador tuvo el tiempo más rápido en 15 mapas.",
	help_badge_19 = "Este jugador tuvo el tiempo más rápido en 20 mapas.",
	help_badge_20 = "Este jugador tuvo el tiempo más rápido en 25 mapas.",
	help_badge_21 = "Este jugador tuvo el tiempo más rápido en 30 mapas.",
	help_badge_22 = "Este jugador tuvo el tiempo más rápido en 35 mapas.",
	help_badge_23 = "Este jugador tuvo el tiempo más rápido en 40 mapas.",
	make_public = "hacer público",
	make_private = "hacer privado",
	moderators = "Moderadores",
	mappers = "Mappers",
	managers = "Líderes",
	administrators = "Administradores",
	close = "Cerrar",
	cant_load_bot_profile = "<v>[#] <r>No puedes ver el perfil de este bot ya que #parkour lo usa internamente para funcionar.",
	cant_load_profile = "<v>[#] <r>El jugador <b>%s</b> parece estar desconectado o no existe.",
	like_map = "¿Te gusta este mapa?",
	yes = "Sí",
	no = "No",
	idk = "No lo sé",
	unknown = "Desconocido",
	powers = "Poderes",
	press = "<vp>Presiona %s",
	click = "<vp>Haz clic",
	ranking_pos = "Rank #%s",
	completed_maps = "<p align='center'><BV><B>Mapas completados: %s</B></p></BV>",
	leaderboard = "Tabla de clasificación",
	position = "<V><p align=\"center\">Posición",
	username = "<V><p align=\"center\">Jugador",
	community = "<V><p align=\"center\">Comunidad",
	completed = "<V><p align=\"center\">Mapas completados",
	overall_lb = "General",
	weekly_lb = "Semanal",
	new_lang = "<v>[#] <d>Lenguaje cambiado a Español",

	-- Power names
	balloon = "Globo",
	masterBalloon = "Globo Maestro",
	bubble = "Burbuja",
	fly = "Volar",
	snowball = "Bola de nieve",
	speed = "Velocidad",
	teleport = "Teletransporte",
	smallbox = "Caja pequeña",
	cloud = "Nube",
	rip = "Tumba",
	choco = "Chocolate",
	bigBox = "Caja grande",
	trampoline = "Trampolín",
	toilet = "Inodoro",
	pig = "Cerdito",
	sink = "Lavamanos",
	bathtub = "Bañera",
	campfire = "Fogata",
	chair = "Silla",
}
