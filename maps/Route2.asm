	object_const_def

Route2_MapScripts:
	def_scene_scripts

	def_callbacks

Route2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 24, ROUTE_2_GATE, 3
	warp_event 15, 25, ROUTE_2_GATE, 4

	def_coord_events

	def_bg_events

	def_object_events
