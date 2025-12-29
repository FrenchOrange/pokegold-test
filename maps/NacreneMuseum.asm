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
	jumptextfaceplayer NacreneMuseumReceptionist1Text

NacreneMuseumReceptionist2:
	jumptextfaceplayer NacreneMuseumReceptionist2Text

NacreneMuseumReceptionist3:
	jumptextfaceplayer NacreneMuseumReceptionist3Text

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

NacreneMuseumReceptionist3Text:
	text "WIP."
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
	warp_event  6, 21, NACRENE_CITY, 2
	warp_event  7, 21, NACRENE_CITY, 2
	warp_event  6,  0, NACRENE_GYM, 1
	warp_event  7,  0, NACRENE_GYM, 1

	def_coord_events

	def_bg_events
	bg_event  3,  6, BGEVENT_READ, DragonStoneExhibit
	bg_event  9,  8, BGEVENT_READ, UnknownPlateExhibit
	bg_event 10,  8, BGEVENT_READ, UnknownPlateExhibit
	bg_event  0, 11, BGEVENT_READ, ChargestoneRocksExhibit
	bg_event  1, 11, BGEVENT_READ, ChargestoneRocksExhibit
	bg_event 12, 11, BGEVENT_READ, FestivalMaskExhibit
	bg_event 13, 11, BGEVENT_READ, FestivalMaskExhibit
	bg_event  1, 14, BGEVENT_READ, HardShelledFossilExhibit
	bg_event 11, 14, BGEVENT_READ, OldBonesExhibit
	bg_event  6, 11, BGEVENT_READ, DragoniteFossil
	bg_event  7, 11, BGEVENT_READ, DragoniteFossil

	def_object_events
	object_event  4,  7, SPRITE_DRAGON_STONE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneMuseumDragonStone, -1
	object_event  4, 19, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneMuseumReceptionist1, -1
	object_event  4, 20, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneMuseumReceptionist2, -1
	object_event  9, 19, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneMuseumReceptionist3, -1
	object_event  7,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneMuseumScientist, -1
	object_event 11, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneMuseumYoungster, -1
	object_event  1,  9, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneMuseumGramps, -1
	object_event  4,  2, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneMuseumLittleGirl, -1
