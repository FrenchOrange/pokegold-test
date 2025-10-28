	object_const_def

SproutTower1F_MapScripts:
	def_scene_scripts

	def_callbacks

SproutTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  4, SPROUT_TOWER_2F, 1
	warp_event  2,  6, SPROUT_TOWER_2F, 2
	warp_event 17,  3, SPROUT_TOWER_2F, 3

	def_coord_events

	def_bg_events

	def_object_events
