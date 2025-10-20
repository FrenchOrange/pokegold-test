	object_const_def

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
	opentext
	special PlayersHousePC
	iftrue .Warp
	closetext
	end
.Warp:
	warp NONE, 0, 0
	end

DebugSign:
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	setflag ENGINE_MAP_CARD
	setflag ENGINE_RADIO_CARD
	setflag ENGINE_POKEDEX
	setflag ENGINE_FLYPOINT_NUVEMA
	setflag ENGINE_FLYPOINT_ACCUMULA
	setflag ENGINE_FLYPOINT_VIOLET
	setflag ENGINE_FLYPOINT_AZALEA
	setflag ENGINE_FLYPOINT_GOLDENROD
	setflag ENGINE_FLYPOINT_ECRUTEAK
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
	warp VIOLET_CITY, 31, 26
	end

PlayersHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  1, PLAYERS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_UP, PlayersHousePCScript
	bg_event  3,  0, BGEVENT_READ, DebugSign

	def_object_events
