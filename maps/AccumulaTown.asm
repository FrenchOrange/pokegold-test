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
	warp_event  7,  5, CHERRYGROVE_EVOLUTION_SPEECH_HOUSE, 1
	warp_event  3,  5, CHERRYGROVE_GYM_SPEECH_HOUSE, 1
	warp_event  1, 15, GUIDE_GENTS_HOUSE, 1
	warp_event  0,  6, ROUTE_2_GATE, 1
	warp_event  0,  7, ROUTE_2_GATE, 2

	def_coord_events

	def_bg_events

	def_object_events

