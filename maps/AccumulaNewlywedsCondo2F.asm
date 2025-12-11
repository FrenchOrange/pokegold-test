	object_const_def
	const ACCUMULANEWLYWEDSCONDO2F_YOUNGSTER
	const ACCUMULANEWLYWEDSCONDO2F_GIRL

AccumulaNewlywedsCondo2F_MapScripts:
	def_scene_scripts

	def_callbacks

AccumulaNewlywedsCondo2FYoungster:
	jumptextfaceplayer AccumulaNewlywedsCondo2FYoungsterText

AccumulaNewlywedsCondo2FGirl:
	jumptextfaceplayer AccumulaNewlywedsCondo2FGirlText

AccumulaNewlywedsCondo2FYoungsterText:
	text "We've just gotten"
	line "married."

	para "Men and women are"
	line "so different,"
	cont "aren't they?"

	para "But I don't see"
	line "much difference"
	cont "male and female"
	cont "#MON…"
	done

AccumulaNewlywedsCondo2FGirlText:
	text "Someone said that"
	line "because there are"
	cont "different ideas,"

	para "disputes will"
	line "arise…"

	para "Someone else said"
	line "that because there"
	cont "are different"

	para "ideas, the world"
	line "will expand…"

	para "I guess they're"
	line "both right."
	done

AccumulaNewlywedsCondo2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  1, ACCUMULA_NEWLYWEDS_CONDO_1F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaNewlywedsCondo2FYoungster, -1
	object_event  4,  4, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaNewlywedsCondo2FGirl, -1
