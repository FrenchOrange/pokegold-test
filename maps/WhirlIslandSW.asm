	object_const_def

WhirlIslandSW_MapScripts:
	def_scene_scripts

	def_callbacks

WhirlIslandSW_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, ROUTE_41, 3
	warp_event 17,  3, WHIRL_ISLAND_B1F, 5
	warp_event  3,  3, WHIRL_ISLAND_B1F, 4
	warp_event  3, 15, WHIRL_ISLAND_NW, 3
	warp_event 17, 15, WHIRL_ISLAND_B2F, 4

	def_coord_events

	def_bg_events

	def_object_events