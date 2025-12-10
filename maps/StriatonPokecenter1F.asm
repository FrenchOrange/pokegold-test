	object_const_def
	const STRIATONPOKECENTER1F_NURSE
	const STRIATONPOKECENTER1F_CLERK
	const STRIATONPOKECENTER1F_MIDDLE_M

StriatonPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

StriatonPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

StriatonPokecenter1FClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_VIOLET
	closetext
	end

StriatonPokecenter1FMiddleMScript:
	jumptextfaceplayer StriatonPokecenter1FMiddleMText

StriatonPokecenter1FSitting:
	opentext
	writetext StriatonPokecenter1FSittingText
	promptbutton
	closetext
	end

StriatonPokecenter1FMiddleMText:
	text "Have you been"
	line "catching #MON?"

	para "When you have more"
	line "#MON you're less"
	cont "likely to lose in"
	cont "battles, and it's"

	para "more fun to look"
	line "at your #DEX"
	cont "and PC BOX!"
	done

StriatonPokecenter1FSittingText:
	text "I've just learned"
	line "that the more GYM"
	cont "BADGES you win,"

	para "the more items you"
	line "can buy at a shop!"
	done

StriatonPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, STRIATON_CITY, 2
	warp_event  4,  7, STRIATON_CITY, 2
	warp_event 12,  0, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_READ, StriatonPokecenter1FSitting

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonPokecenter1FNurseScript, -1
	object_event  8,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonPokecenter1FClerkScript, -1
	object_event  9,  6, SPRITE_MIDDLE_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonPokecenter1FMiddleMScript, -1
