	object_const_def

MahoganyTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, MahoganyTownFlypointCallback

MahoganyTownFlypointCallback:
	setflag ENGINE_FLYPOINT_MAHOGANY
	endcallback

MahoganyTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  7, MAHOGANY_MART_1F, 1
	warp_event  6, 13, MAHOGANY_GYM, 1
	warp_event 15, 13, MAHOGANY_POKECENTER_1F, 1

	def_coord_events

	def_bg_events

	def_object_events
