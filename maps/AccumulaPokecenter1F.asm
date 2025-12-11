	object_const_def
	const ACCUMULAPOKECENTER1F_NURSE
	const ACCUMULAPOKECENTER1F_CLERK

AccumulaPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

AccumulaPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

AccumulaPokecenter1FClerkScript:
	opentext
	checkflag ENGINE_ZEPHYRBADGE
	iftrue .GotFirstBadge
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE
	closetext
	end

.GotFirstBadge:
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE_DEX
	closetext
	end

AccumulaPokecenter1FSitting:
	opentext
	writetext AccumulaPokecenter1FSittingText
	promptbutton
	closetext
	end

AccumulaPokecenter1FSittingText:
	text "Be sure to save"
	line "what's happened up"
	cont "to this point"
	cont "before you forget."

	para "Then you can take"
	line "a break."
	done

AccumulaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ACCUMULA_TOWN, 1
	warp_event  4,  7, ACCUMULA_TOWN, 1
	warp_event 12,  0, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_READ, AccumulaPokecenter1FSitting

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaPokecenter1FNurseScript, -1
	object_event  8,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaPokecenter1FClerkScript, -1
