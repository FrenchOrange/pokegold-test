	object_const_def
	const ECRUTEAKPOKECENTER1F_NURSE
	const ECRUTEAKPOKECENTER1F_CLERK

EcruteakPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

EcruteakPokecenter1FClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_ECRUTEAK
	closetext
	end

EcruteakPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 6
	warp_event  4,  7, ECRUTEAK_CITY, 6
	warp_event 12,  0, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FNurseScript, -1
	object_event  8,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FClerkScript, -1
