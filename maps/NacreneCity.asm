	object_const_def

NacreneCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, NacreneCityFlypointCallback

NacreneCityFlypointCallback:
	setflag ENGINE_FLYPOINT_NACRENE
	endcallback

NacreneCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 11, AZALEA_POKECENTER_1F, 1
	warp_event 24,  3, AZALEA_GYM, 1
	warp_event 37, 14, ROUTE_3_GATE, 1
	warp_event 37, 15, ROUTE_3_GATE, 2
	warp_event 26, 11, KURTS_HOUSE, 1
	warp_event 32, 11, CHARCOAL_KILN, 1

	def_coord_events

	def_bg_events

	def_object_events
