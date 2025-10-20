	object_const_def

EcruteakCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, EcruteakCityFlypointCallback

EcruteakCityFlypointCallback:
	setflag ENGINE_FLYPOINT_ECRUTEAK
	endcallback

EcruteakCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 27, ECRUTEAK_POKECENTER_1F, 1
	warp_event  6, 27, ECRUTEAK_GYM, 1

	def_coord_events

	def_bg_events

	def_object_events
