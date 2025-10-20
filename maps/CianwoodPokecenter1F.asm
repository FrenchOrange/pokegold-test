	object_const_def
	const CIANWOODPOKECENTER1F_NURSE
	const CIANWOODPOKECENTER1F_CLERK

CianwoodPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CianwoodPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

CianwoodPokecenter1FClerkScript:
	opentext
	pokemart MARTTYPE_PHARMACY, MART_CIANWOOD
	closetext
	end

CianwoodPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CIANWOOD_CITY, 3
	warp_event  4,  7, CIANWOOD_CITY, 3
	warp_event 12,  0, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodPokecenter1FNurseScript, -1
	object_event  8,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodPokecenter1FClerkScript, -1
