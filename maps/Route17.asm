	object_const_def

Route17_MapScripts:
	def_scene_scripts

	def_callbacks

Route17Sign:
	jumptext Route17SignText

Route17SignText:
	text "ROUTE 17"

	para "Beware of rapidly"
	line "flowing water!"
	done

Route17_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 47, 30, ROUTE_17_GATE, 1
	warp_event 47, 31, ROUTE_17_GATE, 2
	warp_event 40,  3, P2_LAB, 1

	def_coord_events

	def_bg_events
	bg_event 46, 28, BGEVENT_READ, Route17Sign

	def_object_events
