	object_const_def

Route3Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route3Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  3, NACRENE_CITY, 3
	warp_event  0,  4, NACRENE_CITY, 4
	warp_event  9,  3, ROUTE_3, 1
	warp_event  9,  4, ROUTE_3, 2

	def_coord_events

	def_bg_events

	def_object_events
