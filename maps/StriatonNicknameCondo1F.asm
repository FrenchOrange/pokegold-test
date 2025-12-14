	object_const_def

	const STRIATONNICKNAMECONDO1F_GRAMPS
	const STRIATONNICKNAMECONDO1F_GRANNY
	const STRIATONNICKNAMECONDO1F_FISHER

StriatonNicknameCondo1F_MapScripts:
	def_scene_scripts
	scene_script StriatonNicknameCondo1FScene, SCENE_STRIATONNICKNAMECONDO1F_TURN
	scene_script StriatonNicknameCondo1FNoop, SCENE_STRIATONNICKNAMECONDO1F_NOOP

	def_callbacks

StriatonNicknameCondo1FScene:
	turnobject PLAYER, UP
	setscene SCENE_STRIATONNICKNAMECONDO1F_NOOP
StriatonNicknameCondo1FNoop:
	end

StriatonNicknameCondo1FGramps:
	jumptextfaceplayer StriatonNicknameCondo1FGrampsText

StriatonNicknameCondo1FGranny:
	jumptextfaceplayer StriatonNicknameCondo1FGrannyText

StriatonNicknameCondo1FFisher:
	faceplayer
	opentext
	checkevent EVENT_GOT_GREAT_BALL_FROM_STRIATON_CONDO
	iftrue .GotBall
	writetext StriatonNicknameCondo1FFisher_BeforeBallText
	waitbutton
	verbosegiveitem GREAT_BALL
.GotBall:
	writetext StriatonNicknameCondo1FFisher_AfterBallText
	waitbutton
	closetext
	setevent EVENT_GOT_GREAT_BALL_FROM_STRIATON_CONDO
	end

StriatonNicknameCondo1FGrampsText:
	text "The beginning of"
	line "my relationship"
	cont "with my wife was"

	para "our #MON"
	line "battles."

	para "I could not defeat"
	line "her, even though I"
	cont "tried many times!"
	done

StriatonNicknameCondo1FGrannyText:
	text "My husband and I"
	line "are compatible…"

	para "because he cannot"
	line "beat me in battle!"
	done

StriatonNicknameCondo1FFisher_BeforeBallText:
	text "Oh! Trainer!"

	para "Do you have enough"
	line "# BALLS?"

	para "Don't be shy. Take"
	line "this with you!"
	done

StriatonNicknameCondo1FFisher_AfterBallText:
	text "You can't have too"
	line "many # BALLS!"

	para "My advice is that"
	line "when you use a"
	cont "better # BALL,"

	para "it's easier to"
	line "catch #MON!"
	done

StriatonNicknameCondo1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, STRIATON_CITY, 8
	warp_event  5,  7, STRIATON_CITY, 9
	warp_event  7,  1, STRIATON_NICKNAME_CONDO_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonNicknameCondo1FGramps, -1
	object_event  2,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonNicknameCondo1FGranny, -1
	object_event  8,  5, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonNicknameCondo1FFisher, -1
