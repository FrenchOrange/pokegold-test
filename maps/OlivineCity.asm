	object_const_def

OlivineCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, OlivineCityFlypointCallback

OlivineCityFlypointCallback:
	setflag ENGINE_FLYPOINT_OLIVINE
	endcallback

OlivineCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 21, OLIVINE_POKECENTER_1F, 1
	warp_event 10, 11, OLIVINE_GYM, 1

	def_coord_events

	def_bg_events

	def_object_events
