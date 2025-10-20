	object_const_def

AccumulaTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, AccumulaTownFlypointCallback

AccumulaTownFlypointCallback:
	setflag ENGINE_FLYPOINT_ACCUMULA
	endcallback

AccumulaTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 13, CHERRYGROVE_POKECENTER_1F, 1

	def_coord_events

	def_bg_events

	def_object_events

