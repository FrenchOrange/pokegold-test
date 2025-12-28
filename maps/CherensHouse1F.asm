	object_const_def
	const CHERENSHOUSE1F_MIDDLEF
	const CHERENSHOUSE1F_MIDDLEM

CherensHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks

CherensHouse1FCherensMom:
	faceplayer
	opentext
	checkevent EVENT_GOT_POKEDEX
	iftrue .CherensMomAfter
	writetext CherensHouse1FCherensMom_InitialText
	waitbutton
	closetext
	end

.CherensMomAfter:
	writetext CherensHouse1FCherensMom_AfterText
	waitbutton
	closetext
	end

CherensHouse1FCherensDad:
	faceplayer
	opentext
	checkevent EVENT_GOT_POKEDEX
	iftrue .CherensDadAfter
	writetext CherensHouse1FCherensDad_InitialText
	waitbutton
	closetext
	end

.CherensDadAfter:
	writetext CherensHouse1FCherensDad_AfterText
	waitbutton
	closetext
	end

CherensHouse1FCherensMom_InitialText:
	text "CHEREN's MOM:"
	line "That CHEREN."

	para "I'm sure he's at"
	line "the laboratory."

	para "He's so… How should"
	line "I put it? Diligent"
	cont "or, better,"
	cont "conscientious."
	done

CherensHouse1FCherensMom_AfterText:
	text "CHEREN's MOM:"
	line "Why, <PLAYER>."

	para "I hear you were"
	line "asked you to"
	cont "complete the"

	para "#DEX by the"
	line "professor."

	para "Don't worry!"

	para "You'll always have"
	line "#MON by your"
	cont "side."
	done

CherensHouse1FCherensDad_InitialText:
	text "CHEREN's DAD:"
	line "Hey, <PLAYER>!"

	para "I heard it from"
	line "the professor!"

	para "So, you're getting"
	line "a #MON, eh?"

	para "Oh, you've already"
	line "got it!"

	para "Hm, that sure is a"
	line "cute #MON."

	para "And you're all"
	line "finally your"
	cont "Trainer journeys?"

	para "Well, let me read"
	line "you a passage from"
	cont "a book called"
	cont "'Adventure Rules'."

	para "'The START Button"
	line "is vital for"
	cont "Trainers.'"

	para "Never forget that."
	done

CherensHouse1FCherensDad_AfterText:
	text "CHEREN's DAD:"
	line "Traveling's great!"

	para "You encounter so"
	line "many things you've"
	cont "never seen and"

	para "things you don't"
	line "yet understand."

	para "Wherever you go,"
	line "you'll learn"
	cont "something new and"
	cont "grow up a little."
	done

CherensHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, NUVEMA_TOWN, 4
	warp_event  5,  7, NUVEMA_TOWN, 4
	warp_event  8,  1, CHERENS_HOUSE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_MIDDLE_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherensHouse1FCherensMom, -1
	object_event  8,  4, SPRITE_MIDDLE_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherensHouse1FCherensDad, -1
