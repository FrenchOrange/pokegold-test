	object_const_def
	const NACRENESTATHOUSE_YOUNGSTER
	const NACRENESTATHOUSE_HIKER1
	const NACRENESTATHOUSE_HIKER2
	const NACRENESTATHOUSE_CLERK

NacreneStatHouse_MapScripts:
	def_scene_scripts

	def_callbacks

NacreneStatHouseYoungster:
	jumptextfaceplayer NacreneStatHouseYoungsterText

NacreneStatHouseHiker1:
	jumptextfaceplayer NacreneStatHouseHiker1Text

NacreneStatHouseHiker2:
	jumptextfaceplayer NacreneStatHouseHiker2Text

NacreneStatHouseYoungsterText:
	text "DIRE HIT?"

	para "In UNOVA, it's"
	line "called DIRE HIT."

	para "Huh? It's the same?"

	para "…Anyway, in a"
	line "battle, it's very"
	cont "powerful when a"

	para "move is a critical"
	line "hit!"
	done

NacreneStatHouseHiker1Text:
	text "Just now, I traded"
	line "a #MON holding"
	cont "an item!"

	para "So, it's like the"
	line "item is a present!"
	done

NacreneStatHouseHiker2Text:
	text "Trading is great!"

	para "With a Game Link"
	line "Cable you can"
	cont "exchange #MON"
	cont "with your friends."
	done

NacreneStatHouseClerk:
	faceplayer
	opentext
	writetext NacreneStatHouseClerkText
	waitbutton
	pokemart MARTTYPE_STANDARD, MART_NACRENE_STAT
	closetext
	end

NacreneStatHouseClerkText:
	text "I started a shop"
	line "in this warehouse!"
	done

NacreneStatHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  9, NACRENE_CITY, 8
	warp_event  5,  9, NACRENE_CITY, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneStatHouseYoungster, -1
	object_event  2,  2, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneStatHouseHiker1, -1
	object_event  7,  2, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneStatHouseHiker2, -1
	object_event  2,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneStatHouseClerk, -1
