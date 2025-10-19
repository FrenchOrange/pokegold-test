	object_const_def

AzaleaTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, AzaleaTownFlypointCallback

AzaleaTownFlypointCallback:
	setflag ENGINE_FLYPOINT_AZALEA
	endcallback

AzaleaTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  9, AZALEA_POKECENTER_1F, 1
	warp_event 21,  5, AZALEA_MART, 2
	warp_event 10, 15, AZALEA_GYM, 1

	def_coord_events

	def_bg_events

	def_object_events
