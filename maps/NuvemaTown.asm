	object_const_def

NuvemaTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, NuvemaTownFlypointCallback

NuvemaTownNoop1Scene:
	end

NuvemaTownNoop2Scene:
	end

NuvemaTownFlypointCallback:
	setflag ENGINE_FLYPOINT_NUVEMA
	endcallback

NuvemaTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  5, ELMS_LAB, 1
	warp_event  9,  9, PLAYERS_HOUSE_1F, 1
	warp_event  5, 13, PLAYERS_NEIGHBORS_HOUSE, 1
	warp_event 13, 13, ELMS_HOUSE, 1

	def_coord_events

	def_bg_events

	def_object_events
