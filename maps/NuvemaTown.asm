	object_const_def

NuvemaTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, NuvemaTownFlypointCallback

NuvemaTownFlypointCallback:
	setflag ENGINE_FLYPOINT_NUVEMA
	endcallback

NuvemaTownSign:
	jumptext NuvemaTownSignText

JuniperLabSign:
	jumptext JuniperLabSignText

NuvemaTownSignText:
	text "NUVEMA TOWN"
	line "The Start of"
	cont "Something Big!"
	done

JuniperLabSignText:
	text "JUNIPER POKéMON"
	line "RESEARCH LAB"
	done

NuvemaTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  5, JUNIPERS_LAB, 1
	warp_event  9,  9, PLAYERS_HOUSE_1F, 1
	warp_event  5, 13, BIANCAS_HOUSE, 1
	warp_event 13, 13, CHERENS_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 10, 10, BGEVENT_READ, NuvemaTownSign
	bg_event  2,  6, BGEVENT_READ, JuniperLabSign

	def_object_events
