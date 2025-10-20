	object_const_def
	const OLIVINEPOKECENTER1F_NURSE
	const OLIVINEPOKECENTER1F_CLERK

OlivinePokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

OlivinePokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

OlivinePokecenter1FClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_OLIVINE
	closetext
	end

OlivinePokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, OLIVINE_CITY, 1
	warp_event  4,  7, OLIVINE_CITY, 1
	warp_event 12,  0, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePokecenter1FNurseScript, -1
	object_event  8,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePokecenter1FClerkScript, -1
