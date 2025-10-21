	object_const_def

Route3_MapScripts:
	def_scene_scripts

	def_callbacks

Route3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 32, ROUTE_3_GATE, 3
	warp_event  4, 33, ROUTE_3_GATE, 4

	def_coord_events

	def_bg_events

	def_object_events
