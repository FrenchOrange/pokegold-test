	object_const_def

CherensHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks

CherensHousePCScript:
	jumptext CherensHouse2FPCText

CherensHouse2FPCText:
	text "<PLAYER> checked"
	line "the PC screen."

	para "Adventure Rules -"
	line "Chapter 1"

	para "The START Button"
	line "opens the menu."

	para "Adventure Rules -"
	line "Chapter 2"

	para "Record your pro-"
	line "gress with SAVE."

	para "There is nothing"
	line "else on here…"
	done

CherensHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  1, CHERENS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  0,  6, BGEVENT_READ, CherensHousePCScript

	def_object_events
