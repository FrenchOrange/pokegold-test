	object_const_def

WhirlIslandB2F_MapScripts:
	def_scene_scripts

	def_callbacks

WhirlIslandB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  5, WHIRL_ISLAND_B1F, 7
	warp_event  7, 11, WHIRL_ISLAND_B1F, 8
	warp_event  7, 25, WHIRL_ISLAND_LUGIA_CHAMBER, 1
	warp_event 13, 31, WHIRL_ISLAND_SW, 5

	def_coord_events

	def_bg_events

	def_object_events
