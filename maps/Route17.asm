	object_const_def

Route17_MapScripts:
	def_scene_scripts

	def_callbacks

Route17_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 47, 30, ROUTE_17_GATE, 1
	warp_event 47, 31, ROUTE_17_GATE, 2

	def_coord_events

	def_bg_events

	def_object_events
