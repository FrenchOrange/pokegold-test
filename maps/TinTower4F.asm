	object_const_def

TinTower4F_MapScripts:
	def_scene_scripts

	def_callbacks

TinTower4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  4, TIN_TOWER_5F, 2
	warp_event 16,  2, TIN_TOWER_3F, 2
	warp_event  2, 14, TIN_TOWER_5F, 3
	warp_event 17, 15, TIN_TOWER_5F, 4

	def_coord_events

	def_bg_events

	def_object_events
