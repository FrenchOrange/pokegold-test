	object_const_def

BurnedTowerB1F_MapScripts:
	def_scene_scripts

	def_callbacks

BurnedTowerB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  3, BURNED_TOWER_1F, 3
	warp_event 17,  7, BURNED_TOWER_1F, 7
	warp_event 10,  8, BURNED_TOWER_1F, 9
	warp_event  3, 13, BURNED_TOWER_1F, 10
	warp_event 17, 14, BURNED_TOWER_1F, 12
	warp_event  7, 15, BURNED_TOWER_1F, 14

	def_coord_events

	def_bg_events

	def_object_events
