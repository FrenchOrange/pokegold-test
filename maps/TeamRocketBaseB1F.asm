	object_const_def

TeamRocketBaseB1F_MapScripts:
	def_scene_scripts

	def_callbacks

TeamRocketBaseB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 14, TEAM_ROCKET_BASE_B2F, 1
	warp_event  5, 15, TEAM_ROCKET_BASE_B1F, 4
	warp_event 25,  2, TEAM_ROCKET_BASE_B1F, 3

	def_coord_events

	def_bg_events

	def_object_events
