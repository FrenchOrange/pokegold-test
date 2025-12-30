	object_const_def
	const STRIATONNICKNAMECONDO2F_YOUNGSTER
	const STRIATONNICKNAMECONDO2F_LASS
	const STRIATONNICKNAMECONDO2F_GENTLEMAN

StriatonNicknameCondo2F_MapScripts:
	def_scene_scripts

	def_callbacks

StriatonNicknameCondo2FYoungster:
	jumptextfaceplayer StriatonNicknameCondo2FYoungsterText

StriatonNicknameCondo2FLass:
	jumptextfaceplayer StriatonNicknameCondo2FLassText

StriatonNicknameCondo2FGentleman:
	jumptextfaceplayer StriatonNicknameCondo2FGentlemanText

StriatonNicknameCondo2FYoungsterText:
	text "I went abroad to"
	line "have #MON"
	cont "battles!"
	done

StriatonNicknameCondo2FLassText:
	text "Hi, traveling"
	line "trainer!"

	para "Your family must"
	line "be talking about"
	cont "you right now!"
	done

StriatonNicknameCondo2FGentlemanText:
	text "Do your #MON"
	line "have nicknames?"

	para "When we give a"
	line "#MON a"
	cont "nickname, we grow"
	cont "attached to it."

	para "Don't you agree?"
	done

StriatonNicknameCondo2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  1, STRIATON_NICKNAME_CONDO_1F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonNicknameCondo2FYoungster, -1
	object_event  9,  3, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonNicknameCondo2FLass, -1
	object_event  4,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonNicknameCondo2FGentleman, -1
