	object_const_def

Route2Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route2Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  3, ACCUMULA_TOWN, 5
	warp_event  9,  4, ACCUMULA_TOWN, 6
	warp_event  0,  3, ROUTE_2, 1
	warp_event  0,  4, ROUTE_2, 2

	def_coord_events

	def_bg_events

	def_object_events
