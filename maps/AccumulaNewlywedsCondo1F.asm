	object_const_def
	const ACCUMULANEWLYWEDSCONDO1F_GIRL
	const ACCUMULANEWLYWEDSCONDO1F_MIDDLEF
	const ACCUMULANEWLYWEDSCONDO1F_LITTLEBOY

AccumulaNewlywedsCondo1F_MapScripts:
	def_scene_scripts

	def_callbacks

AccumulaNewlywedsCondo1FGirl:
	jumptextfaceplayer AccumulaNewlywedsCondo1FGirlText

AccumulaNewlywedsCondo1FMiddleF:
	jumptextfaceplayer AccumulaNewlywedsCondo1FMiddleFText

AccumulaNewlywedsCondo1FLittleBoy:
	jumptextfaceplayer AccumulaNewlywedsCondo1FLittleBoyText

AccumulaNewlywedsCondo1FGirlText:
	text "How many #"
	line "BALLS do you have?"

	para "If you think you"
	line "don't have enough,"
	cont "it's a good idea to"

	para "buy some at a shop"
	line "in a #MON"
	cont "CENTER!"
	done

AccumulaNewlywedsCondo1FMiddleFText:
	text "It is important to"
	line "train your #MON"
	cont "in battle, but"

	para "when their HP goes"
	line "down, take them to"
	cont "a #MON CENTER."
	done

AccumulaNewlywedsCondo1FLittleBoyText:
	text "Oh! Your #MON!"
	line "You're so lucky."
	cont "I envy you."

	para "I want to be a"
	line "Trainer, too!"
	done

AccumulaNewlywedsCondo1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, ACCUMULA_TOWN, 4
	warp_event  5,  7, ACCUMULA_TOWN, 4
	warp_event  7,  1, ACCUMULA_NEWLYWEDS_CONDO_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaNewlywedsCondo1FGirl, -1
	object_event  7,  3, SPRITE_MIDDLE_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaNewlywedsCondo1FMiddleF, -1
	object_event  2,  5, SPRITE_LITTLE_BOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaNewlywedsCondo1FLittleBoy, -1
