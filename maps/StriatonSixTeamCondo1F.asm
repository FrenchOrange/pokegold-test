	object_const_def
	const STRIATONSIXTEAMCONDO1F_YOUNGSTER1
	const STRIATONSIXTEAMCONDO1F_MIDDLEF
	const STRIATONSIXTEAMCONDO1F_YOUNGSTER2

StriatonSixTeamCondo1F_MapScripts:
	def_scene_scripts
	scene_script StriatonSixTeamCondo1FScene, SCENE_STRIATONSIXTEAMCONDO1F_TURN
	scene_script StriatonSixTeamCondo1FNoop, SCENE_STRIATONSIXTEAMCONDO1F_NOOP

	def_callbacks

StriatonSixTeamCondo1FScene:
	turnobject PLAYER, UP
	setscene SCENE_STRIATONSIXTEAMCONDO1F_NOOP
StriatonSixTeamCondo1FNoop:
	end

StriatonSixTeamCondo1FYoungster1:
	jumptextfaceplayer StriatonSixTeamCondo1FYoungster1Text

StriatonSixTeamCondo1FMiddleF:
	jumptextfaceplayer StriatonSixTeamCondo1FMiddleFText

StriatonSixTeamCondo1FYoungster2:
	jumptextfaceplayer StriatonSixTeamCondo1FYoungster2Text

StriatonSixTeamCondo1FYoungster1Text:
	text "The CABLE CLUB! It"
	line "links your friends"
	cont "from the second"

	para "floor of a POKéMON"
	line "CENTER!"

	para "All you need is a"
	line "Game Link Cable."
	done

StriatonSixTeamCondo1FMiddleFText:
	text "You can tell how"
	line "strong Trainers"
	cont "are by the number"

	para "of GYM BADGES they"
	line "have!"

	para "If you're a Trainer"
	line "you should chall-"
	cont "enge GYM LEADERs"

	para "and collect a lot"
	line "of BADGES!"
	done

StriatonSixTeamCondo1FYoungster2Text:
	text "Lately, I have a"
	line "favorite model."

	para "Her name is ELESA,"
	line "and her #MON"
	cont "are strong, too!"
	done

StriatonSixTeamCondo1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, STRIATON_CITY, 6
	warp_event  5,  7, STRIATON_CITY, 7
	warp_event  7,  1, STRIATON_SIX_TEAM_CONDO_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonSixTeamCondo1FYoungster1, -1
	object_event  3,  2, SPRITE_MIDDLE_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonSixTeamCondo1FMiddleF, -1
	object_event  7,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonSixTeamCondo1FYoungster2, -1
