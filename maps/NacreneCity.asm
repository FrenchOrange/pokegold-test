	object_const_def

NacreneCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, NacreneCityFlypointCallback

NacreneCityFlypointCallback:
	setflag ENGINE_FLYPOINT_NACRENE
	endcallback

NacreneCitySign:
	jumptext NacreneCitySignText

CafeWarehouseSign:
	jumptext CafeWarehouseSignText

NacreneGymSign:
	jumptext NacreneGymSignText

NacreneCitySignText:
	text "NACRENE CITY"
	line "A Pearl of a Place"
	done

CafeWarehouseSignText:
	text "CAFE WAREHOUSE"

	para "Try our delicious"
	line "specials on"
	cont "Wednesdays."
	done

NacreneGymSignText:
	text "NACRENE CITY"
	line "#MON GYM"
	cont "LEADER: LENORA"

	para "An Archeologist"
	line "with Backbone."
	done

NacreneCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 11, NACRENE_POKECENTER_1F, 1
	warp_event 24,  3, AZALEA_GYM, 1
	warp_event 37, 14, ROUTE_3_GATE, 1
	warp_event 37, 15, ROUTE_3_GATE, 2
	warp_event 26, 11, NACRENE_TRADE_HOUSE, 1
	warp_event 32, 11, NACRENE_FURNITURE_HOUSE, 1
	warp_event  8, 11, NACRENE_STARTER_HOUSE, 1
	warp_event 12, 11, NACRENE_STAT_HOUSE, 1
	warp_event 32,  5, NACRENE_POET_HOUSE, 1
	warp_event  9,  3, NACRENE_CAFE, 1

	def_coord_events

	def_bg_events
	bg_event 36, 12, BGEVENT_READ, NacreneCitySign
	bg_event 11,  5, BGEVENT_READ, CafeWarehouseSign
	bg_event 22,  4, BGEVENT_READ, NacreneGymSign

	def_object_events
