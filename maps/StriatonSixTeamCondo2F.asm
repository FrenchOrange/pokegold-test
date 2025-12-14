	object_const_def
	const STRIATONSIXTEAMCONDO2F_YOUNGSTER
	const STRIATONSIXTEAMCONDO2F_LASS
	const STRIATONSIXTEAMCONDO2F_PLANT_POKEMON
	const STRIATONSIXTEAMCONDO2F_PATRAT

StriatonSixTeamCondo2F_MapScripts:
	def_scene_scripts

	def_callbacks

StriatonSixTeamCondo2FYoungster:
	jumptextfaceplayer StriatonSixTeamCondo2FYoungsterText

StriatonSixTeamCondo2FLass:
	jumptextfaceplayer StriatonSixTeamCondo2FLassText

StriatonSixTeamCondo2FPatrat:
	faceplayer
	opentext
	writetext StriatonSixTeamCondo2FPatratText
	cry PATRAT
	waitbutton
	closetext
	turnobject STRIATONSIXTEAMCONDO2F_PATRAT, RIGHT
	end

StriatonSixTeamCondo2FPlantPokemon:
	opentext
	checkver
	iftrue .Condo2FPetilil_Loop ; White version
	writetext StriatonSixTeamCondo2FCottoneeText
	cry COTTONEE
	waitbutton
	closetext
	end

.Condo2FPetilil_Loop
	writetext StriatonSixTeamCondo2FPetililText
	cry PETILIL
	waitbutton
	closetext
	end

StriatonSixTeamCondo2FYoungsterText:
	text "I've trained only"
	line "Fire-type #MON,"
	cont "'cause they're my"
	cont "favorites!"

	para "But they had no"
	line "chance in a battle"
	cont "against Water-type"
	cont "#MON…"

	para "Sigh… Maybe I"
	line "should try to"
	cont "train #MON of"
	cont "other types."
	done

StriatonSixTeamCondo2FLassText:
	text "It's quite hard to"
	line "train six #MON"
	cont "at once, so I've"

	para "heard some"
	line "Trainers focus on"
	cont "training three"
	cont "#MON at a time."
	done

StriatonSixTeamCondo2FPatratText:
	text "PATRAT: Skreee!"
	done

StriatonSixTeamCondo2FCottoneeText:
	text "COTTONEE: Fwee-"
	line "oosh!"
	done

StriatonSixTeamCondo2FPetililText:
	text "PETILIL: Fwee lee"
	line "lee… ♪"
	done

StriatonSixTeamCondo2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  1, STRIATON_SIX_TEAM_CONDO_1F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonSixTeamCondo2FYoungster, -1
	object_event  3,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonSixTeamCondo2FLass, -1
	object_event  2,  5, SPRITE_COTTONEE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonSixTeamCondo2FPlantPokemon, -1
	object_event  6,  7, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonSixTeamCondo2FPatrat, -1
