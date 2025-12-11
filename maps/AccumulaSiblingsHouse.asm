	object_const_def
	const ACCUMULASIBLINGSHOUSE_MINCCINO
	const ACCUMULASIBLINGSHOUSE_GIRL
	const ACCUMULASIBLINGSHOUSE_YOUNGSTER

AccumulaSiblingsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

AccumulaSiblingsHouseMinccino:
	faceplayer
	opentext
	writetext AccumulaSiblingsHouseMinccinoText
	cry MINCCINO
	waitbutton
	closetext
	end

AccumulaSiblingsHouseGirl:
	jumptextfaceplayer AccumulaSiblingsHouseGirlText

AccumulaSiblingsHouseYoungster:
	jumptextfaceplayer AccumulaSiblingsHouseYoungsterText

AccumulaSiblingsHouseMinccinoText:
	text "MINCCINO: Chip"
	line "kwip!"
	done

AccumulaSiblingsHouseGirlText:
	text "My brother plays"
	line "the drums, but he's"
	cont "not a ruffian."

	para "My heart races"
	line "with his when I"
	cont "hear him play."
	done

AccumulaSiblingsHouseYoungsterText:
	text "My sister plays"
	line "piano, but she's"
	cont "not snobbish."

	para "My heart echoes"
	line "with hers when I"
	cont "hear her play."
	done

AccumulaSiblingsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ACCUMULA_TOWN, 7
	warp_event  3,  7, ACCUMULA_TOWN, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_FAIRY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaSiblingsHouseMinccino, -1
	object_event  3,  5, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaSiblingsHouseGirl, -1
	object_event  4,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaSiblingsHouseYoungster, -1
