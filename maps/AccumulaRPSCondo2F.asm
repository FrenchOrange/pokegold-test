	object_const_def
	const ACCUMULARPSCONDO2F_PATRAT
	const ACCUMULARPSCONDO2F_FISHER
	const ACCUMULARPSCONDO2F_LITTLEGIRL

AccumulaRPSCondo2F_MapScripts:
	def_scene_scripts

	def_callbacks

AccumulaRPSCondo2FPatrat:
	faceplayer
	opentext
	writetext AccumulaRPSCondo2FPatratText
	cry PATRAT
	waitbutton
	closetext
	end

AccumulaRPSCondo2FFisher:
	faceplayer
	opentext
	checkevent EVENT_GOT_POKE_BALL_FROM_ACCUMULA_CONDO
	iftrue .GotBall
	writetext AccumulaRPSCondo2FFisher_BeforeBallText
	waitbutton
	verbosegiveitem POKE_BALL
.GotBall:
	writetext AccumulaRPSCondo2FFisher_AfterBallText
	waitbutton
	closetext
	setevent EVENT_GOT_POKE_BALL_FROM_ACCUMULA_CONDO
	end

AccumulaRPSCondo2FLittleGirl:
	faceplayer
	opentext
	writetext AccumulaRPSCondo2FLittleGirlIntroText
	yesorno
	iffalse .Done
	writetext AccumulaRPSCondo2FLittleGirlPlayText
	loadmenu RockPaperScissors_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, FireAnswer
	ifequal 2, GrassAnswer
	ifequal 3, WaterAnswer
	end

.Done
	writetext AccumulaRPSCondo2FLittleGirlRefusedText
	waitbutton
	closetext
	end

FireAnswer:
	random 2
	ifequal 0, .FiftyFiftyAnswer1
	writetext PickedFireWon
	waitbutton
	closetext
	end

.FiftyFiftyAnswer1:
	writetext PickedFireLost
	waitbutton
	closetext
	end

GrassAnswer:
	random 2
	ifequal 0, .FiftyFiftyAnswer2
	writetext PickedGrassWon
	waitbutton
	closetext
	end

.FiftyFiftyAnswer2:
	writetext PickedGrassLost
	waitbutton
	closetext
	end

WaterAnswer:
	random 2
	ifequal 0, .FiftyFiftyAnswer3
	writetext PickedWaterWon
	waitbutton
	closetext
	end

.FiftyFiftyAnswer3:
	writetext PickedWaterLost
	waitbutton
	closetext
	end

RockPaperScissors_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 12, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "FIRE@"
	db "GRASS@"
	db "WATER@"


AccumulaRPSCondo2FLittleGirlIntroText:
	text "Hi, hi!"

	para "Let's play #MON"
	line "rock-paper-"
	cont "scissors!"
	done

AccumulaRPSCondo2FLittleGirlRefusedText:
	text "Oh, that's no fun!"
	done

AccumulaRPSCondo2FLittleGirlPlayText:
	text "Here goes!"
	line "#MON rock-paper"
	cont "-scissors…"
	done

PickedFireWon:
	text "FIRE… … GRASS!"

	para "Your #MON is"
	line "Fire-type, mine"
	cont "is Grass-type…"

	para "Grass-type is weak"
	line "against Fire-type…"
	cont "so I lose."
	done

PickedFireLost:
	text "FIRE… … WATER!"

	para "Your #MON is"
	line "Fire-type, mine"
	cont "is Water-type…"

	para "Fire-type is weak"
	line "against Water-"
	cont "type… so I win!"
	done

PickedGrassWon:
	text "GRASS… … WATER!"

	para "Your #MON is"
	line "Grass-type, mine"
	cont "is Water-type…"

	para "Water-type is weak"
	line "against Grass-"
	cont "type… so I lose."
	done

PickedGrassLost:
	text "GRASS… … FIRE!"

	para "Your #MON is"
	line "Grass-type, mine"
	cont "is Fire-type…"

	para "Grass-type is weak"
	line "against Fire-type…"
	cont "so I win!"
	done

PickedWaterWon:
	text "WATER… … FIRE!"

	para "Your #MON is"
	line "Water-type, mine"
	cont "is Fire-type…"

	para "Fire-type is weak"
	line "against Water-"
	cont "type… so I lose."
	done

PickedWaterLost:
	text "WATER… … GRASS!"

	para "Your #MON is"
	line "Water-type, mine"
	cont "is Grass-type…"

	para "Water-type is weak"
	line "against Grass-"
	cont "type… so I win!"
	done

AccumulaRPSCondo2FPatratText:
	text "PATRAT: Skree"
	line "skree!"
	done

AccumulaRPSCondo2FFisher_BeforeBallText:
	text "Here's a # BALL"
	line "I got in the past."

	para "I'm going to give"
	line "it to you."
	done

AccumulaRPSCondo2FFisher_AfterBallText:
	text "You can't catch a"
	line "#MON if you"
	cont "don't have a #"
	cont "BALL!"

	para "There are many typ"
	line "-es of # BALLS,"
	cont "so use the best"
	cont "one for the job."
	done

AccumulaRPSCondo2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  1, ACCUMULA_RPS_CONDO_1F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaRPSCondo2FPatrat, -1
	object_event  7,  5, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaRPSCondo2FFisher, -1
	object_event  3,  5, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaRPSCondo2FLittleGirl, -1
