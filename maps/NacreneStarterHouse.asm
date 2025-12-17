	object_const_def
	const NACRENESTARTERHOUSE_YOUNGSTER
	const NACRENESTARTERHOUSE_COOLTRAINERF1
	const NACRENESTARTERHOUSE_COOLTRAINERF2

NacreneStarterHouse_MapScripts:
	def_scene_scripts

	def_callbacks

NacreneStarterHouseYoungster:
	jumptextfaceplayer NacreneStarterHouseYoungsterText

NacreneStarterHouseCooltrainerF1:
	jumptextfaceplayer NacreneStarterHouseCooltrainerF1Text

NacreneStarterHouseYoungsterText:
	text "BURGH is an"
	line "artist, and also"
	cont "the GYM LEADER in"
	cont "CASTELIA CITY."

	para "We want to be like"
	line "him!"
	done

NacreneStarterHouseCooltrainerF1Text:
	text "BURGH used this"
	line "warehouse until"
	cont "two years ago!"

	para "When BURGH gets"
	line "artist's block, he"
	cont "comes back here to"
	cont "NACRENE CITY!"
	done


NacreneStarterHouseCooltrainerF2:
	faceplayer
	opentext
	checkevent EVENT_GOT_ITEM_IN_NACRENE_STARTER_HOUSE
	iftrue GotStarterHouseEvent
	writetext NacreneStarterHouseCooltrainerF2IntroText
	loadmenu NacreneStarterMenu_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, SnivyAnswer
	ifequal 2, OshawottAnswer
	ifequal 3, TepigAnswer
	ifequal 4, StarterQuit
	end

SnivyAnswer:
	writetext PickedSnivyStarter
	yesorno
	iffalse SaidNoStarter
	writetext PickedSnivyStarterItemText
	waitbutton
	verbosegiveitem MIRACLE_SEED
	sjump GotStarterHouseEvent

OshawottAnswer:
	writetext PickedOshawottStarter
	yesorno
	iffalse SaidNoStarter
	writetext PickedOshawottStarterItemText
	waitbutton
	verbosegiveitem MYSTIC_WATER
	sjump GotStarterHouseEvent

TepigAnswer:
	writetext PickedTepigStarter
	yesorno
	iffalse SaidNoStarter
	writetext PickedTepigStarterItemText
	waitbutton
	verbosegiveitem CHARCOAL
	sjump GotStarterHouseEvent

SaidNoStarter:
	writetext NacreneStarterHouseCooltrainerF2RepeatText
	loadmenu NacreneStarterMenu_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, SnivyAnswer
	ifequal 2, OshawottAnswer
	ifequal 3, TepigAnswer
	ifequal 4, StarterQuit
	end

GotStarterHouseEvent:
	writetext NacreneStarterHouseCooltrainerF2AfterText
	waitbutton
	closetext
	setevent EVENT_GOT_ITEM_IN_NACRENE_STARTER_HOUSE
	end

StarterQuit:
	writetext NacreneStarterHouseCooltrainerF2QuitText
	waitbutton
	closetext
	end

NacreneStarterMenu_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 9, 2, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 4 ; items
	db "SNIVY@"
	db "OSHAWOTT@"
	db "TEPIG@"
	db "Quit"

NacreneStarterHouseCooltrainerF2IntroText:
	text "That thing you"
	line "have is a #DEX,"
	cont "isn't it?"

	para "Wow! Coooool! You"
	line "collect #MON!"
	cont "OK! I'll help you."

	para "Which #MON did"
	line "you choose at the"
	cont "beginning of your"
	cont "journey?"
	done

PickedSnivyStarter:
	text "You picked SNIVY?"
	done

PickedOshawottStarter:
	text "You picked"
	line "OSHAWOTT?"
	done

PickedTepigStarter:
	text "You picked TEPIG?"
	done

PickedSnivyStarterItemText:
	text "You have SNIVY!"

	para "Then I will give"
	line "you this!"

	para "When you let your"
	line "#MON hold it,"
	cont "it can raise the"

	para "power of Grass-"
	line "type moves!"
	done

PickedOshawottStarterItemText:
	text "You have"
	line "OSHAWOTT!"

	para "Then I will give"
	line "you this!"

	para "When you let your"
	line "#MON hold it,"
	cont "it can raise the"

	para "power of Water-"
	line "type moves!"
	done

PickedTepigStarterItemText:
	text "You have TEPIG!"

	para "Then I will give"
	line "you this!"

	para "When you let your"
	cont "#MON hold it,"
	cont "it can raise the"

	para "power of Fire-type"
	line "moves!"
	done

NacreneStarterHouseCooltrainerF2AfterText:
	text "A lot of items"
	line "have effects when"
	cont "#MON hold them,"

	para "so try to find"
	line "them!"

	para "Well, work hard to"
	line "fill up your"
	cont "#DEX!"

	para "Good luck!"
	done

NacreneStarterHouseCooltrainerF2RepeatText:
	text "Then, what is the"
	line "#MON you chose"
	cont "at the beginning"
	cont "of your journey?"
	done

NacreneStarterHouseCooltrainerF2QuitText:
	text "If you want to"
	line "tell me, please"
	cont "speak to me!"
	done

NacreneStarterHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, NACRENE_CITY, 7
	warp_event  5,  7, NACRENE_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneStarterHouseYoungster, -1
	object_event  7,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneStarterHouseCooltrainerF1, -1
	object_event  3,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneStarterHouseCooltrainerF2, -1
