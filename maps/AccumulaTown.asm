	object_const_def

AccumulaTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, AccumulaTownFlypointCallback

AccumulaTownFlypointCallback:
	setflag ENGINE_FLYPOINT_ACCUMULA
	endcallback

AccumulaTownSign:
	jumptext AccumulaTownSignText

AccumulaTownSignText:
	text "ACCUMULA TOWN"
	line "The Fast-Growing"
	cont "Town!"
	done

AccumulaTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 13, ACCUMULA_POKECENTER_1F, 1
	warp_event  7,  5, ACCUMULA_GREAT_BAG_CONDO_1F, 1
	warp_event  3,  5, ACCUMULA_RPS_CONDO_1F, 1
	warp_event  1, 15, ACCUMULA_NEWLYWEDS_CONDO_1F, 1
	warp_event  0,  6, ROUTE_2_GATE, 1
	warp_event  0,  7, ROUTE_2_GATE, 2
	warp_event 13,  5, ACCUMULA_SIBLINGS_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 14, 16, BGEVENT_READ, AccumulaTownSign

	def_object_events

