	object_const_def
	const ACCUMULARPSCONDO1F_YOUNGSTER
	const ACCUMULARPSCONDO1F_MIDDLEF
	const ACCUMULARPSCONDO1F_LITTLEBOY

AccumulaRPSCondo1F_MapScripts:
	def_scene_scripts

	def_callbacks

AccumulaRPSCondo1FYoungster:
	jumptextfaceplayer AccumulaRPSCondo1FYoungsterText

AccumulaRPSCondo1FMiddleF:
	jumptextfaceplayer AccumulaRPSCondo1FMiddleFText

AccumulaRPSCondo1FLittleBoy:
	jumptextfaceplayer AccumulaRPSCondo1FLittleBoyText

AccumulaRPSCondo1FYoungsterText:
	text "Even if they're"
	line "weak now, #MON"
	cont "will be strong if"
	cont "you train them."

	para "Love is what's"
	line "important!"
	done

AccumulaRPSCondo1FMiddleFText:
	text "If you get strong,"
	line "you can move"
	cont "forward."

	para "If you move"
	line "forward, you'll be"
	cont "stronger."

	para "That's the cool"
	line "thing about"
	cont "journeys!"
	done

AccumulaRPSCondo1FLittleBoyText:
	text "When a hero leads"
	line "the world, a"
	cont "#MON is going"

	para "to come and help"
	line "the hero…"

	para "Everybody in the"
	line "UNOVA region knows"
	cont "that legend!"
	done

AccumulaRPSCondo1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, ACCUMULA_TOWN, 3
	warp_event  5,  7, ACCUMULA_TOWN, 3
	warp_event  7,  1, ACCUMULA_RPS_CONDO_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaRPSCondo1FYoungster, -1
	object_event  7,  4, SPRITE_MIDDLE_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaRPSCondo1FMiddleF, -1
	object_event  3,  3, SPRITE_LITTLE_BOY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaRPSCondo1FLittleBoy, -1
