	object_const_def
	const NACRENEPOKECENTER1F_NURSE
	const NACRENEPOKECENTER1F_CLERK
	const NACRENEPOKECENTER1F_LASS
	const NACRENEPOKECENTER1F_HIKER

NacrenePokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

NacrenePokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

NacrenePokecenter1FClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_AZALEA
	closetext
	end

NacrenePokecenter1FLassScript:
	jumptextfaceplayer NacrenePokecenter1FLassText

NacrenePokecenter1FHikerScript:
	jumptextfaceplayer NacrenePokecenter1FHikerText

NacrenePokecenter1FSitting:
	opentext
	writetext NacrenePokecenter1FSittingText
	promptbutton
	closetext
	end

NacrenePokecenter1FLassText:
	text "Hi, trainer!"

	para "Do you know a"
	line "#MON called"
	cont "AUDINO?"

	para "It's a #MON that"
	line "I sometimes find"
	cont "when I'm walking."

	para "It gives out a lot"
	line "of EXP. Points."

	para "It's kind of a"
	line "friendly #MON,"
	cont "isn't it?"
	done

NacrenePokecenter1FHikerText:
	text "I heard that the"
	line "fossils in the"
	cont "MUSEUM were found"
	cont "in TWIST MOUNTAIN."

	para "Then, a person"
	line "called CLAY appar-"
	cont "ently donated them"
	cont "to the MUSEUM."
	done

NacrenePokecenter1FSittingText:
	text "From the PC at a"
	line "#MON CENTER,"
	cont "you can have"

	para "PROF.JUNIPER rate"
	line "your #DEX."

	para "It's so cool!"
	done

NacrenePokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, NACRENE_CITY, 1
	warp_event  4,  7, NACRENE_CITY, 1
	warp_event 12,  0, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_READ, NacrenePokecenter1FSitting

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacrenePokecenter1FNurseScript, -1
	object_event  8,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacrenePokecenter1FClerkScript, -1
	object_event  6,  3, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacrenePokecenter1FLassScript, -1
	object_event  2,  5, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacrenePokecenter1FHikerScript, -1
