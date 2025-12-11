	object_const_def
	const ACCUMULAGREATBAGCONDO1F_MIDDLEF
	const ACCUMULAGREATBAGCONDO1F_LITTLEGIRL

AccumulaGreatBagCondo1F_MapScripts:
	def_scene_scripts

	def_callbacks

AccumulaGreatBagCondo1FMiddleF:
	jumptextfaceplayer AccumulaGreatBagCondo1FMiddleFText

AccumulaGreatBagCondo1FLittleGirl:
	jumptextfaceplayer AccumulaGreatBagCondo1FLittleGirlText

AccumulaGreatBagCondo1FMiddleFText:
	text "On ROUTE 2, many"
	line "Trainers train"
	cont "their POKéMON by"

	para "having them"
	line "battle!"
	done

AccumulaGreatBagCondo1FLittleGirlText:
	text "Guess what I know!"
	line "I know! POKéMON"
	cont "can remember up to"

	para "four moves at a"
	line "time! Hee hee!"
	done

AccumulaGreatBagCondo1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, ACCUMULA_TOWN, 2
	warp_event  5,  7, ACCUMULA_TOWN, 2
	warp_event  7,  1, ACCUMULA_GREAT_BAG_CONDO_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  5, SPRITE_MIDDLE_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaGreatBagCondo1FMiddleF, -1
	object_event  3,  3, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaGreatBagCondo1FLittleGirl, -1
