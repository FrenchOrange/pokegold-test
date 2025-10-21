	object_const_def
	const PLAYERSHOUSE2F_POKEBALL1
	const PLAYERSHOUSE2F_POKEBALL2
	const PLAYERSHOUSE2F_POKEBALL3

PlayersHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PlayersHouse2FInitializeRoomCallback

PlayersHouse2FInitializeRoomCallback:
	checkevent EVENT_INITIALIZED_EVENTS
	iftrue .SkipInitialization
	jumpstd InitializeEventsScript
	endcallback

.SkipInitialization:
	endcallback

PlayersHousePCScript:
	jumptext PlayersHouse2FPCText

;	opentext
;	special PlayersHousePC
;	iftrue .Warp
;	closetext
;	end
;.Warp:
;	warp NONE, 0, 0
;	end

PlayersHouse2FTV:
	jumptext PlayersHouse2FTVText

PlayersHouse2FBed:
	jumptext PlayersHouse2FBedText

PlayersHouse2FConsole:
	jumptext PlayersHouse2FConsoleText

PlayersHouse2FTVText:
	text "It's a television"
	line "that Dad bought!"
	done

PlayersHouse2FBedText:
	text "It's a bed."

	para "The sheets smell"
	line "great because Mom"
	cont "just washed them!"
	done

PlayersHouse2FConsoleText:
	text "It's a SUPER NES!"
	line "It has a MULTITAP!"
	done

PlayersHouse2FPCText:
	text "<PLAYER> checked"
	line "the PC."

	para "#MON Basics..."

	para "People live"
	line "alongside #MON"
	cont "in this world."

	para "The people who"
	line "battle with"
	cont "#MON are called"
	cont "#MON Trainers."
	done

DebugSign:
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	setflag ENGINE_MAP_CARD
	setflag ENGINE_RADIO_CARD
	setflag ENGINE_POKEDEX
	setflag ENGINE_FLYPOINT_NUVEMA
	setflag ENGINE_FLYPOINT_ACCUMULA
	setflag ENGINE_FLYPOINT_STRIATON
	setflag ENGINE_FLYPOINT_NACRENE
;	setflag ENGINE_ZEPHYRBADGE
;	setflag ENGINE_HIVEBADGE
;	setflag ENGINE_PLAINBADGE
;	setflag ENGINE_FOGBADGE
;	setflag ENGINE_MINERALBADGE
;	setflag ENGINE_STORMBADGE
;	setflag ENGINE_GLACIERBADGE
;	setflag ENGINE_RISINGBADGE
	giveitem MASTER_BALL, 99
	giveitem RARE_CANDY, 99
	giveitem MAX_REPEL, 99
	giveitem ESCAPE_ROPE, 99
	giveitem MAIL, 5
	giveitem BICYCLE
	giveitem SUPER_ROD
	giveitem HM_CUT
	giveitem HM_FLY
	giveitem HM_SURF
	giveitem HM_STRENGTH
	giveitem HM_FLASH
	giveitem HM_WHIRLPOOL
	giveitem HM_WATERFALL
	giveitem TM_DIG
	opentext
; debug team
	givepoke FERALIGATR, 100
	givepoke PIDGEOT, 100
	givepoke LAPRAS, 100
	givepoke PIKACHU, 100
	givepoke DIGLETT, 100
	givepoke DITTO, 100
; debug hm
	loadmem wPartyMon1Moves+0, SURF
	loadmem wPartyMon1Moves+1, ROCK_SMASH
	loadmem wPartyMon2Moves+0, FLY
	loadmem wPartyMon2Moves+1, STRENGTH
	loadmem wPartyMon2Moves+2, CUT
	loadmem wPartyMon3Moves+2, WATERFALL
	loadmem wPartyMon4Moves+0, FLASH
	loadmem wPartyMon4Moves+1, HEADBUTT
	closetext
;	setevent EVENT_GOT_RUNNING_SHOES
;	setmapscene PLAYERS_HOUSE_1F, SCENE_PLAYERSHOUSE1F_NOOP
	playsound SFX_WARP_TO
	special FadeOutToBlack
	waitsfx
	warp STRIATON_CITY, 15, 4
	end

PlayersHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  1, PLAYERS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  0,  6, BGEVENT_READ, PlayersHousePCScript
	bg_event  3,  1, BGEVENT_READ, PlayersHouse2FTV
	bg_event  3,  2, BGEVENT_READ, PlayersHouse2FConsole
	bg_event  9,  6, BGEVENT_READ, PlayersHouse2FBed
	bg_event  9,  7, BGEVENT_READ, PlayersHouse2FBed
	bg_event  8,  0, BGEVENT_READ, DebugSign

	def_object_events
	object_event  5,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  4,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
