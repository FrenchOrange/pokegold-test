	object_const_def

StriatonCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, StriatonCityFlypointCallback

StriatonCityFlypointCallback:
	setflag ENGINE_FLYPOINT_STRIATON
	setmapscene STRIATON_SIX_TEAM_CONDO_1F, SCENE_STRIATONSIXTEAMCONDO1F_TURN
	setmapscene STRIATON_NICKNAME_CONDO_1F, SCENE_STRIATONNICKNAMECONDO1F_TURN
	endcallback

StriatonCitySign:
	jumptext StriatonCitySignText

TrainerSchoolSign:
	jumptext TrainerSchoolSignText

StriatonGymSign:
	jumptext StriatonGymSignText

DreamyardSign:
	jumptext DreamyardSignText

StriatonCitySignText:
	text "STRIATON CITY"
	line "Three Stand"
	cont "Together as One!"
	done

TrainerSchoolSignText:
	text "TRAINERS' SCHOOL"
	line "Brush up on"
	cont "#MON knowledge!"
	done

StriatonGymSignText:
	text "STRIATON CITY"
	line "#MON GYM"
	cont "LEADER: ---"

	para "Triple Trouble!"
	done

DreamyardSignText:
	text "DREAMYARD ahead."
	line "A place for novice"
	cont "trainers."
	done

StriatonCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 22,  3, STRIATON_GYM, 1
	warp_event 15,  3, STRIATON_POKECENTER_1F, 1
	warp_event 31,  2, DREAMYARD_OUTSIDE, 1
	warp_event 31,  3, DREAMYARD_OUTSIDE, 2
	warp_event  9,  3, TRAINERS_SCHOOL, 1
	warp_event  9, 10, STRIATON_SIX_TEAM_CONDO_1F, 1
	warp_event  9, 11, STRIATON_SIX_TEAM_CONDO_1F, 2
	warp_event 21, 12, STRIATON_NICKNAME_CONDO_1F, 1
	warp_event 21, 13, STRIATON_NICKNAME_CONDO_1F, 2
	warp_event 21,  8, STRIATON_FENNEL_CONDO_1F, 1
	warp_event 21,  9, STRIATON_FENNEL_CONDO_1F, 2

	def_coord_events

	def_bg_events
	bg_event  4,  6, BGEVENT_READ, StriatonCitySign
	bg_event 13,  3, BGEVENT_READ, TrainerSchoolSign
	bg_event 24,  4, BGEVENT_READ, StriatonGymSign
	bg_event 28,  2, BGEVENT_READ, DreamyardSign

	def_object_events
