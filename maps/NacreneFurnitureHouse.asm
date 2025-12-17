	object_const_def
	const NACRENEFURNITUREHOUSE_COOLTRAINERF

NacreneFurnitureHouse_MapScripts:
	def_scene_scripts

	def_callbacks

NacreneFurnitureHouseCooltrainerF:
	jumptextfaceplayer NacreneFurnitureHouseCooltrainerFText

NacreneFurnitureHouseCooltrainerFText:
	text "I design furniture"
	line "for a living."

	para "Living in a ware-"
	line "house is great! I"
	cont "have all the space"

	para "I could ever want"
	line "to store my"
	cont "creations."
	done

NacreneFurnitureHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, NACRENE_CITY, 6
	warp_event  5,  7, NACRENE_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneFurnitureHouseCooltrainerF, -1
