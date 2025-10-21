	object_const_def

Route17Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route17Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  3, ROUTE_17, 1
	warp_event  0,  4, ROUTE_17, 2
	warp_event  9,  3, ROUTE_1_WEST, 1
	warp_event  9,  4, ROUTE_1_WEST, 2

	def_coord_events

	def_bg_events

	def_object_events
