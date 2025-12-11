	object_const_def
	const ACCUMULAGREATBAGCONDO2F_YOUNGSTER
	const ACCUMULAGREATBAGCONDO2F_GIRL

AccumulaGreatBagCondo2F_MapScripts:
	def_scene_scripts

	def_callbacks

AccumulaGreatBagCondo2FYoungster:
	jumptextfaceplayer AccumulaGreatBagCondo2FYoungsterText

AccumulaGreatBagCondo2FGirl:
	jumptextfaceplayer AccumulaGreatBagCondo2FGirlText

AccumulaGreatBagCondo2FYoungsterText:
	text "Wow, you have that"
	line "great BAG that can"
	cont "store anything!"

	para "Why don't you buy"
	line "a lot of POTIONS"
	cont "and put them in"
	cont "your BAG?"
	done

AccumulaGreatBagCondo2FGirlText:
	text "Weak #MON,"
	line "strong #MON,"
	cont "cool #MON, cute"
	cont "#MON…"

	para "Many #MON look"
	line "forward to meeting"
	cont "you!"
	done

AccumulaGreatBagCondo2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  1, ACCUMULA_GREAT_BAG_CONDO_1F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaGreatBagCondo2FYoungster, -1
	object_event  8,  5, SPRITE_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaGreatBagCondo2FGirl, -1
