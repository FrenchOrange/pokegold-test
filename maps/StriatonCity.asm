	object_const_def

StriatonCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, StriatonCityFlypointCallback

StriatonCityFlypointCallback:
	setflag ENGINE_FLYPOINT_STRIATON
	endcallback

StriatonCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 22,  3, VIOLET_GYM, 1
	warp_event 15,  3, VIOLET_POKECENTER_1F, 1
	warp_event 31,  2, DREAMYARD_OUTSIDE, 1
	warp_event 31,  3, DREAMYARD_OUTSIDE, 2

	def_coord_events

	def_bg_events

	def_object_events
