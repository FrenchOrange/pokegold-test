	object_const_def

CianwoodCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CianwoodCityFlypointCallback

CianwoodCityFlypointCallback:
	setflag ENGINE_FLYPOINT_CIANWOOD
	endcallback

CianwoodCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 43, CIANWOOD_GYM, 1
	warp_event 23, 43, CIANWOOD_POKECENTER_1F, 1

	def_coord_events

	def_bg_events

	def_object_events
