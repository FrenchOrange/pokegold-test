	object_const_def
	const NACRENEPOETHOUSE_YOUNGSTER1
	const NACRENEPOETHOUSE_YOUNGSTER2
	const NACRENEPOETHOUSE_LITTLEBOY

NacrenePoetHouse_MapScripts:
	def_scene_scripts

	def_callbacks

NacrenePoetHouseYoungster1:
	jumptextfaceplayer NacrenePoetHouseYoungster1Text

NacrenePoetHouseYoungster2:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .AltPoetText
	writetext NacrenePoetHouseYoungster2Text1
	waitbutton
	closetext
	end

.AltPoetText:
	writetext NacrenePoetHouseYoungster2Text2
	waitbutton
	closetext
	end

NacrenePoetHouseLittleBoy:
	jumptextfaceplayer NacrenePoetHouseLittleBoyText

NacrenePoetHouseYoungster1Text:
	text "I play the guitar and"
	line "have #MON"
	cont "battles every day."

	para "I keep doing that"
	line "'cause I enjoy it!"
	done

NacrenePoetHouseYoungster2Text1:
	text "I am a poet…"
	line "I write poems."

	para "Every day, I"
	line "stretch my"
	cont "imagination and"

	para "devote myself to"
	line "my creative"
	cont "activity."

	para "People dream when"
	line "sleeping, but if a"
	cont "POKéMON dreams…"

	para "I cannot even"
	line "imagine how it is…"
	done

NacrenePoetHouseYoungster2Text2:
	text "I am a poet…"
	line "I write poems."

	para "Every day, I"
	line "stretch my"
	cont "imagination and"

	para "devote myself to"
	line "my creative"
	cont "activity."

	para "People dream when"
	line "sleeping, but if a"
	cont "POKéMON dreams…"

	para "Just thinking"
	line "about it fuels my"
	cont "imagination."

	para "#MON probably"
	line "enjoy sleeping,"
	cont "too!"
	done

NacrenePoetHouseLittleBoyText:
	text "Even the same kind"
	line "of #MON can"
	cont "have different"
	cont "strengths!"
	done

NacrenePoetHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  9, NACRENE_CITY, 9
	warp_event  5,  9, NACRENE_CITY, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacrenePoetHouseYoungster1, -1
	object_event  2,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacrenePoetHouseYoungster2, -1
	object_event  8,  6, SPRITE_LITTLE_BOY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacrenePoetHouseLittleBoy, -1
