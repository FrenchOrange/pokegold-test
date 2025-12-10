	object_const_def

Route2East_MapScripts:
	def_scene_scripts

	def_callbacks

Route2EastSign:
	jumptext Route2EastSignText

Route2EastSignText:
	text "ROUTE 2"
	done

Route2East_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  4,  2, BGEVENT_READ, Route2EastSign

	def_object_events
