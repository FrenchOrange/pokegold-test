	object_const_def
	const ROUTE3GATE_LINK_RECEPTIONIST
	const ROUTE3GATE_GIRL
	const ROUTE3GATE_LASS

Route3Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route3GateReceptionist:
	jumptext Route3GateReceptionistText

Route3GateGirl:
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	faceplayer
	opentext
	writetext Route3GateGirlGreetingText
	promptbutton
; Question 1
	writetext Route3GateQuestion1Text
	promptbutton
	loadmenu Route3GateQuestion1_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .OutsideAnswer
	ifequal 2, .AtHomeAnswer
	ifequal 3, .AtHomeAnswer ; Neither

.OutsideAnswer:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
.AtHomeAnswer:
	sjump Question2

Question2:
	writetext Route3GateQuestion2Text
	promptbutton
	loadmenu Route3GateQuestion2_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .EverybodyAnswer
	ifequal 2, .NobodyAnswer
	ifequal 3, .NeitherAnswer
	end

.EverybodyAnswer:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .PickedOutside1
	writetext Route3GateGirlAtHomeEverybody
	promptbutton
	closetext
	end

.NobodyAnswer:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .PickedOutside2
	writetext Route3GateGirlAtHomeNobody
	promptbutton
	closetext
	end

.PickedOutside1:
	writetext Route3GateGirlOutsideEverybody
	promptbutton
	closetext
	end

.PickedOutside2:
	writetext Route3GateGirlOutsideNobody
	promptbutton
	closetext
	end

.NeitherAnswer:
	writetext Route3GateGirlNeither
	promptbutton
	closetext
	end


Route3GateQuestion1_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 9, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Outside@"
	db "At home@"
	db "Neither@"

Route3GateQuestion2_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 7, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "The former@"
	db "The latter@"
	db "Neither@"

Route3GateGirlGreetingText:
	text "Hi! I have some"
	line "questions for you!"
	done

Route3GateQuestion1Text:
	text "If you want to"
	line "play, which do you"
	cont "prefer: outside or"
	cont "at home?"
	done

Route3GateQuestion2Text:
	text "I see, I see!"

	para "Then, which one"
	line "are you interested"
	cont "in: the thing"

	para "everybody knows"
	line "or the thing"
	cont "nobody knows?"
	done

Route3GateGirlNeither:
	text "Oh, really?"

	para "In my view, you"
	line "are a person with"
	cont "common sense!"
	done

Route3GateGirlOutsideEverybody:
	text "Oh, really?"

	para "I'd say you are"
	line "quite active!"
	done

Route3GateGirlOutsideNobody:
	text "Oh, really?"

	para "I'd say you are"
	line "very curious!"
	done

Route3GateGirlAtHomeEverybody:
	text "Oh, really?"

	para "I'd say you are"
	line "quite composed!"
	done

Route3GateGirlAtHomeNobody:
	text "Oh, really?"

	para "I'd say you are"
	line "quite relaxed!"
	done

Route3GateLass:
	jumptextfaceplayer Route3GateLassText

Route3GateReceptionistText:
	text "Hello, trainer!"

	para "I think POTIONS"
	line "are important for"
	cont "a trip!"
	done

Route3GateLassText:
	text "I should have"
	line "bought more #"
	cont "BALLS!"

	para "A #MON I wanted"
	line "to catch appeared,"
	cont "and I missed it!"
	done

Route3GateBulletin:
	opentext
.Loop
	writetext Route3GateText1
	yesorno
	iffalse .Done
	writetext Route3GateText2
	yesorno
	iffalse .Done
	writetext Route3GateText3
	yesorno
	iftrue .Loop
.Done:
	closetext
	end

Route3GateText1:
	text "Tourists come for"
	line "the warehouses and"
	cont "the MUSEUM."

	para "Keep watching?"
	done

Route3GateText2:
	text "You can still see"
	line "the rail tracks."

	para "Keep watching?"
	done

Route3GateText3:
	text "This is a place"
	line "for people drawn"
	cont "to the arts."

	para "Keep watching?"
	done

Route3Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, NACRENE_CITY, 3
	warp_event  0,  5, NACRENE_CITY, 4
	warp_event  9,  4, ROUTE_3, 1
	warp_event  9,  5, ROUTE_3, 2

	def_coord_events

	def_bg_events
	bg_event  4,  2, BGEVENT_READ, Route3GateBulletin
	bg_event  5,  2, BGEVENT_READ, Route3GateBulletin

	def_object_events
	object_event  8,  2, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route3GateReceptionist, -1
	object_event  2,  5, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route3GateGirl, -1
	object_event  7,  5, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route3GateLass, -1
