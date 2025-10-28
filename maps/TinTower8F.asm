	object_const_def

TinTower8F_MapScripts:
	def_scene_scripts

	def_callbacks

TinTower8F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  5, TIN_TOWER_7F, 2
	warp_event  2, 11, TIN_TOWER_9F, 1
	warp_event 16,  7, TIN_TOWER_9F, 2
	warp_event 10,  3, TIN_TOWER_9F, 3
	warp_event 14, 15, TIN_TOWER_9F, 6
	warp_event  6,  9, TIN_TOWER_9F, 7

	def_coord_events

	def_bg_events

	def_object_events
