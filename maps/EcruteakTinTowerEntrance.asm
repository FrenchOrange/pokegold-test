	object_const_def

EcruteakTinTowerEntrance_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakTinTowerEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, ECRUTEAK_CITY, 3
	warp_event  5, 17, ECRUTEAK_CITY, 3
	warp_event  5,  3, ECRUTEAK_TIN_TOWER_ENTRANCE, 4
	warp_event 17, 15, ECRUTEAK_TIN_TOWER_ENTRANCE, 3
	warp_event 17,  3, ECRUTEAK_TIN_TOWER_BACK_ENTRANCE, 3

	def_coord_events

	def_bg_events

	def_object_events
