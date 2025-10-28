	object_const_def

TinTower5F_MapScripts:
	def_scene_scripts

	def_callbacks

TinTower5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 15, TIN_TOWER_6F, 2
	warp_event  2,  4, TIN_TOWER_4F, 1
	warp_event  2, 14, TIN_TOWER_4F, 3
	warp_event 17, 15, TIN_TOWER_4F, 4

	def_coord_events

	def_bg_events

	def_object_events
