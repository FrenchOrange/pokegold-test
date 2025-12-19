	object_const_def
	const NACRENECAFE_OFFICEWOMAN
	const NACRENECAFE_LASS
	const NACRENECAFE_FISHER
	const NACRENECAFE_YOUNGSTER
	const NACRENECAFE_COOLTRAINERF
	const NACRENECAFE_COOLTRAINERM
	const NACRENECAFE_MIDDLEM

NacreneCafe_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, NacreneCafeSpecialCallback

NacreneCafeSpecialCallback:
	readvar VAR_WEEKDAY
	ifequal WEDNESDAY, .WednesdaySpecial
	clearevent EVENT_GOT_CAFE_WAREHOUSE_SPECIAL
.WednesdaySpecial:
	endcallback

NacreneCafeOfficeWoman:
	faceplayer
	opentext
	readvar VAR_WEEKDAY
	ifequal WEDNESDAY, .WednesdaySpecial
	writetext NacreneCafeOfficeWomanText
	waitbutton
	closetext
	end

.WednesdaySpecial:
	checkevent EVENT_GOT_CAFE_WAREHOUSE_SPECIAL
	iftrue .GotSpecial
	writetext NacreneCafeOfficeWomanText
	waitbutton
	writetext NacreneCafeOfficeWomanText2
	waitbutton
	verbosegiveitem SODA_POP
	setevent EVENT_GOT_CAFE_WAREHOUSE_SPECIAL
.GotSpecial:
	writetext NacreneCafeOfficeWomanAfter
	waitbutton
	closetext
	end

NacreneCafeLass:
	jumptextfaceplayer NacreneCafeLassText

NacreneCafeFisher:
	jumptextfaceplayer NacreneCafeFisherText

NacreneCafeYoungster:
	jumptextfaceplayer NacreneCafeYoungsterText

NacreneCafeCooltrainerF:
	jumptextfaceplayer NacreneCafeCooltrainerFText

NacreneCafeCooltrainerM:
	jumptextfaceplayer NacreneCafeCooltrainerMText

NacreneCafeMiddleM:
	jumptextfaceplayer NacreneCafeMiddleMText

NacreneCafeOfficeWomanText:
	text "Welcome to"
	line "CAFE WAREHOUSE, a"
	cont "stylish café in a"
	cont "rural area!"
	done

NacreneCafeOfficeWomanText2:
	text "Our café has a"
	line "special on"
	cont "Wednesdays!"

	para "Here, have a"
	line "SODA POP!"
	done

NacreneCafeOfficeWomanAfter:
	text "Enjoy the taste of"
	line "our specialty!"
	done

NacreneCafeLassText:
	text "This café has a"
	line "special on"
	cont "Wednesdays!"
	done

NacreneCafeFisherText:
	text "Do you know about"
	line "the PC?"

	para "I heard it is a"
	line "useful device you"
	cont "can use at the"
	cont "#MON CENTER."
	done

NacreneCafeYoungsterText:
	text "The STRIATON CITY"
	line "GYM LEADERs are a"
	cont "great triplet"
	cont "combo!"

	para "The Grass-type"
	line "#MON user,"
	cont "CILAN, chooses"
	cont "great tea leaves."

	para "The Water-type"
	line "#MON user,"
	cont "CRESS, prepares"
	cont "the best water."

	para "And the Fire-type"
	line "#MON user,"
	cont "CHILI, pours hot"

	para "water at the right"
	line "heat."

	para "No wonder their"
	line "tea is the best!"
	done

NacreneCafeCooltrainerFText:
	text "Yes, I know!"

	para "If I use, say, an"
	line "X ATTACK on my"
	cont "current #MON,"

	para "its attack stat"
	line "will be raised for"
	cont "the duration of"
	cont "the battle."
	done

NacreneCafeCooltrainerMText:
	text "When you battle,"
	line "you can use items"
	cont "to turn the tide"
	cont "in your favor!"
	done

NacreneCafeMiddleMText:
	text "As far as I'm"
	line "concerned, it"
	cont "doesn't matter that"

	para "the café is in a"
	line "rural area that"
	cont "nobody knows."
	done

NacreneCafe_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 11, NACRENE_CITY, 10
	warp_event  7, 11, NACRENE_CITY, 10

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  9, SPRITE_OFFICE_WOMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneCafeOfficeWoman, -1
	object_event  8,  5, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneCafeLass, -1
	object_event  6,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneCafeFisher, -1
	object_event  6,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneCafeYoungster, -1
	object_event  6,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneCafeCooltrainerF, -1
	object_event  6,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneCafeCooltrainerM, -1
	object_event  2,  5, SPRITE_MIDDLE_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneCafeMiddleM, -1
