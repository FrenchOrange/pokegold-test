	object_const_def

PlayersHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks

PlayersHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, NUVEMA_TOWN, 2
	warp_event  5,  7, NUVEMA_TOWN, 2
	warp_event  0,  1, PLAYERS_HOUSE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
