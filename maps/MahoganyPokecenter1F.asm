	object_const_def
	const MAHOGANYPOKECENTER1F_NURSE
	const MAHOGANYPOKECENTER1F_CLERK

MahoganyPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

MahoganyPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

MahoganyPokecenter1FClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_MAHOGANY_2
	closetext
	end

MahoganyPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, MAHOGANY_TOWN, 4
	warp_event  4,  7, MAHOGANY_TOWN, 4
	warp_event 12,  0, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyPokecenter1FNurseScript, -1
	object_event  8,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyPokecenter1FClerkScript, 0
