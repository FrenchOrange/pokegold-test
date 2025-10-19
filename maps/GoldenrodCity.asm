	object_const_def

GoldenrodCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, GoldenrodCityFlypointCallback

GoldenrodCityFlypointCallback:
	setflag ENGINE_FLYPOINT_GOLDENROD
	endcallback

GoldenrodCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 24,  7, GOLDENROD_GYM, 1
	warp_event 15, 27, GOLDENROD_POKECENTER_1F, 1
	warp_event 24, 27, GOLDENROD_DEPT_STORE_1F, 1

	def_coord_events

	def_bg_events

	def_object_events
