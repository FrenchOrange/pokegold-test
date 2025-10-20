	object_const_def
	const CHERRYGROVEPOKECENTER1F_NURSE
	const CHERRYGROVEPOKECENTER1F_CLERK

CherrygrovePokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CherrygrovePokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

CherrygrovePokecenter1FClerkScript:
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

CherrygrovePokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ACCUMULA_TOWN, 1
	warp_event  4,  7, ACCUMULA_TOWN, 1
	warp_event 12,  0, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FNurseScript, -1
	object_event  8,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FClerkScript, -1
