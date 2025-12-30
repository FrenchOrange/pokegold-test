	object_const_def
	const NACRENEMUSEUM_DRAGON_STONE
	const NACRENEMUSEUM_LINK_RECEPTIONIST1
	const NACRENEMUSEUM_LINK_RECEPTIONIST2
	const NACRENEMUSEUM_LINK_RECEPTIONIST3
	const NACRENEMUSEUM_SCIENTIST
	const NACRENEMUSEUM_YOUNGSTER
	const NACRENEMUSEUM_GRAMPS
	const NACRENEMUSEUM_LITTLE_GIRL

NacreneMuseum_MapScripts:
	def_scene_scripts

	def_callbacks

NacreneMuseumDragonStone:
	jumptext NacreneMuseumDragonStoneText

NacreneMuseumReceptionist1:
	jumptext NacreneMuseumReceptionist1Text

NacreneMuseumReceptionist2:
	jumptext NacreneMuseumReceptionist2Text

NacreneMuseumScientist:
	jumptextfaceplayer NacreneMuseumScientistText

NacreneMuseumYoungster:
	jumptextfaceplayer NacreneMuseumYoungsterText

NacreneMuseumGramps:
	jumptextfaceplayer NacreneMuseumGrampsText

NacreneMuseumLittleGirl:
	jumptextfaceplayer NacreneMuseumLittleGirlText

NacreneMuseumDragonStoneText:
IF DEF(_GOLD)
	text "A small white orb"
ELIF DEF(_SILVER)
	text "A small black orb"
ENDC
	line "is on display."
	done

NacreneMuseumReceptionist1Text:
	text "You can get to the"
	line "#MON GYM by"
	cont "going to the back"
	cont "of the MUSEUM!"
	done

NacreneMuseumReceptionist2Text:
	text "Welcome to the"
	line "NACRENE MUSEUM!"
	done

NacreneMuseumScientistText:
	text "At the end of the"
	line "GYM, a very strong"
	cont "and kind GYM"
	cont "LEADER is waiting."

	para "By the way, LENORA"
	line "the LEADER happens"
	cont "to be my wife!"
	done

NacreneMuseumYoungsterText:
	text "Rare POKéMON from"
	line "around the world…"

	para "Museums are packed"
	line "with adventure!"
	done

NacreneMuseumGrampsText:
	text "I hear that some"
	line "#MON react in"
	cont "strange ways to"

	para "stones such as"
	line "the ones here."
	done

NacreneMuseumLittleGirlText:
	text "The GYM LEADER"
	line "here studies"
	cont "fossils and"
	cont "ancient artifacts."
	done

FossilReceptionist:
	opentext
	checkevent EVENT_GAVE_RECEPTIONIST_PLUME_FOSSIL
	iftrue GiveArchen
	checkevent EVENT_GAVE_RECEPTIONIST_COVER_FOSSIL
	iftrue GiveTirtouga
	writetext FossilReceptionistIntroText
	waitbutton
	checkitem PLUME_FOSSIL
	iftrue GotFossil
	checkitem COVER_FOSSIL
	iftrue GotFossil
	writetext FossilReceptionistNoFossilText
	waitbutton
	closetext
	end

GotFossil:
	writetext FossilReceptionistHasFossilText
	yesorno
	iffalse .Cancel
.WrongFossilLoop:
	writetext FossilReceptionistMenuText
	loadmenu ReviveFossil_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .PlumeFossil
	ifequal 2, .CoverFossil
	ifequal 3, .Cancel
	end

.PlumeFossil:
	checkitem PLUME_FOSSIL
	iffalse .WrongFossil
	getitemname STRING_BUFFER_3, PLUME_FOSSIL
	writetext FossilReceptionistMonText
	promptbutton
	closetext
	setevent EVENT_GAVE_RECEPTIONIST_PLUME_FOSSIL
	takeitem PLUME_FOSSIL

	applymovement NACRENEMUSEUM_LINK_RECEPTIONIST3, ReceptionistWalksToDoor
	disappear NACRENEMUSEUM_LINK_RECEPTIONIST3
	playsound SFX_ENTER_DOOR
	pause 35
	moveobject NACRENEMUSEUM_LINK_RECEPTIONIST3, 11, 14
	appear NACRENEMUSEUM_LINK_RECEPTIONIST3
	waitsfx
	playsound SFX_EXIT_BUILDING
	applymovement NACRENEMUSEUM_LINK_RECEPTIONIST3, ReceptionistWalksToCounter

	opentext
	getmonname STRING_BUFFER_3, ARCHEN
	writetext FossilReceptionistRevivedText
	waitbutton
	sjump FossilReceptionist

.CoverFossil:
	checkitem COVER_FOSSIL
	iffalse .WrongFossil
	getitemname STRING_BUFFER_3, COVER_FOSSIL
	writetext FossilReceptionistMonText
	promptbutton
	closetext
	setevent EVENT_GAVE_RECEPTIONIST_COVER_FOSSIL
	takeitem COVER_FOSSIL

	applymovement NACRENEMUSEUM_LINK_RECEPTIONIST3, ReceptionistWalksToDoor
	disappear NACRENEMUSEUM_LINK_RECEPTIONIST3
	playsound SFX_ENTER_DOOR
	pause 35
	moveobject NACRENEMUSEUM_LINK_RECEPTIONIST3, 11, 14
	appear NACRENEMUSEUM_LINK_RECEPTIONIST3
	waitsfx
	playsound SFX_EXIT_BUILDING
	applymovement NACRENEMUSEUM_LINK_RECEPTIONIST3, ReceptionistWalksToCounter

	opentext
	getmonname STRING_BUFFER_3, TIRTOUGA
	writetext FossilReceptionistRevivedText
	waitbutton
	sjump FossilReceptionist

.WrongFossil
	writetext FossilReceptionistWrongText
	waitbutton
	sjump .WrongFossilLoop

.Cancel
	writetext FossilReceptionistCancelText
	waitbutton
	closetext
	end

GiveArchen:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, NoRoom
	clearevent EVENT_GAVE_RECEPTIONIST_PLUME_FOSSIL
	getmonname STRING_BUFFER_3, ARCHEN
	writetext FossilReceptionistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	givepoke ARCHEN, 30
	closetext
	end

GiveTirtouga:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, NoRoom
	clearevent EVENT_GAVE_RECEPTIONIST_COVER_FOSSIL
	getmonname STRING_BUFFER_3, TIRTOUGA
	writetext FossilReceptionistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	givepoke TIRTOUGA, 30
	closetext
	end

NoRoom:
	writetext FossilReceptionistPartyFullText
	waitbutton
	closetext
	end

ReviveFossil_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 3, 14, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 3 ; items
	db "PLUME FOSSIL@"
	db "COVER FOSSIL@"
	db "CANCEL@"

ReceptionistWalksToDoor:
	step RIGHT
	step RIGHT
	step UP
	step_end

ReceptionistWalksToCounter:
	step DOWN
	step LEFT
	step LEFT
	step_end

FossilReceptionistIntroText:
	text "I research #MON"
	line "fossils here."
	done

FossilReceptionistNoFossilText:
	text "If you have a"
	line "fossil, bring it"
	cont "to me!"
	done

FossilReceptionistWrongText:
	text "Oh, it appears to"
	line "not be the same"
	cont "kind of fossil."
	done

FossilReceptionistHasFossilText:
	text "You have a fossil,"
	line "don't you?"

	para "May I turn it back"
	line "into a #MON?"
	done

FossilReceptionistCancelText:
	text "Oh, you'd like to"
	line "keep it as a"
	cont "fossil? OK!"
	done

FossilReceptionistMenuText:
	text "Which fossil"
	line "should I turn back"
	cont "into a #MON?"
	done

FossilReceptionistMonText:
	text "All right!"

	para "I will turn the"
	line "@"
	text_ram wStringBuffer3
	text " back"
	cont "into a #MON!"
	done

FossilReceptionistRevivedText:
	text "The fossil you ga-"
	line "ve me turned back"
	cont "into a #MON!"

	para "This is @"
	text_ram wStringBuffer3
	text "!"

	para "Please take good"
	line "care of it."
	done

FossilReceptionistPartyFullText:
	text "Oh, I'm sorry."
	line "Your party's full."

	para "I will keep it"
	line "with extra care,"
	cont "so please come"

	para "back to pick it up"
	line "when you can!"
	done

FossilReceptionistReceiveText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

DragonStoneExhibit:
	jumptext DragonStoneExhibitText

UnknownPlateExhibit:
	jumptext UnknownPlateExhibitText

ChargestoneRocksExhibit:
	jumptext ChargestoneRocksExhibitText

FestivalMaskExhibit:
	jumptext FestivalMaskExhibitText

HardShelledFossilExhibit:
	jumptext HardShelledFossilExhibitText

OldBonesExhibit:
	jumptext OldBonesExhibitText

DragoniteFossil:
	jumptext DragoniteFossilText

DragonStoneExhibitText:
	text "An ancient round"
	line "stone found buried"
	cont "in the desert."
	done

UnknownPlateExhibitText:
	text "A plate with an"
	line "unknown script"
	cont "carved into it."
	done

ChargestoneRocksExhibitText:
	text "Rocks sampled from"
	line "CHARGESTONE CAVE."

	para "Theorized to be"
	line "THUNDERSTONES."
	done

FestivalMaskExhibitText:
	text "A mask that anci-"
	line "ent people used to"
	cont "wear at festivals."
	done

HardShelledFossilExhibitText:
	text "It's a fossil of a"
	line "#MON that was"
	cont "protected by a"
	cont "very hard shell."
	done

OldBonesExhibitText:
	text "Bones that were"
	line "once carried as"
	cont "weapons by a"

	para "certain kind of"
	line "POKéMON."
	done

DragoniteFossilText:
	text "This is a skeletal"
	line "specimen from a"
	cont "POKéMON that flew"
	cont "around the world."
	done

NacreneMuseum_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 17, NACRENE_CITY, 2
	warp_event  7, 17, NACRENE_CITY, 2
	warp_event  6,  0, NACRENE_GYM, 1
	warp_event  7,  0, NACRENE_GYM, 1

	def_coord_events

	def_bg_events
	bg_event  3,  5, BGEVENT_READ, DragonStoneExhibit
	bg_event  9,  7, BGEVENT_READ, UnknownPlateExhibit
	bg_event 10,  7, BGEVENT_READ, UnknownPlateExhibit
	bg_event  0,  8, BGEVENT_READ, ChargestoneRocksExhibit
	bg_event  1,  8, BGEVENT_READ, ChargestoneRocksExhibit
	bg_event 12,  8, BGEVENT_READ, FestivalMaskExhibit
	bg_event 13,  8, BGEVENT_READ, FestivalMaskExhibit
	bg_event  1, 11, BGEVENT_READ, HardShelledFossilExhibit
	bg_event 11, 11, BGEVENT_READ, OldBonesExhibit
	bg_event  6, 10, BGEVENT_READ, DragoniteFossil
	bg_event  7, 10, BGEVENT_READ, DragoniteFossil

	def_object_events
	object_event  4,  6, SPRITE_DRAGON_STONE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneMuseumDragonStone, -1
	object_event  4, 15, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneMuseumReceptionist1, -1
	object_event  4, 16, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneMuseumReceptionist2, -1
	object_event  9, 15, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FossilReceptionist, -1
	object_event  7,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneMuseumScientist, -1
	object_event  9, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneMuseumYoungster, -1
	object_event  1,  6, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneMuseumGramps, -1
	object_event  4,  2, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneMuseumLittleGirl, -1
