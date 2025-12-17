	object_const_def

Route1West_MapScripts:
	def_scene_scripts

	def_callbacks

Route1WestSign:
	jumptext Route1WestSignText

Route1WestSignText:
	text "ROUTE 1"
	done

Route1West_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 28, ROUTE_17_GATE, 3
	warp_event  4, 29, ROUTE_17_GATE, 4

	def_coord_events

	def_bg_events
	bg_event 10, 28, BGEVENT_READ, Route1WestSign

	def_object_events
