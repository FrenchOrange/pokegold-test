	object_const_def

MountMortar2FInside_MapScripts:
	def_scene_scripts

	def_callbacks

MountMortar2FInside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 33, MOUNT_MORTAR_1F_OUTSIDE, 4
	warp_event  3,  5, MOUNT_MORTAR_1F_INSIDE, 6

	def_coord_events

	def_bg_events

	def_object_events
