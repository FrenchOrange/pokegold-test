	object_const_def

FastShipB1F_MapScripts:
	def_scene_scripts

	def_callbacks

FastShipB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, FAST_SHIP_1F, 11
	warp_event 31, 13, FAST_SHIP_1F, 12

	def_coord_events

	def_bg_events

	def_object_events
