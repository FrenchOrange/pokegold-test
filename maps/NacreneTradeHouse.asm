	object_const_def
	const NACRENETRADEHOUSE_LASS
	const NACRENETRADEHOUSE_GIRL
	const NACRENETRADEHOUSE_PLANT_POKEMON
	const NACRENETRADEHOUSE_SUPERNERD

NacreneTradeHouse_MapScripts:
	def_scene_scripts

	def_callbacks

NacreneTradeHouseLass:
	faceplayer
	opentext
	checkevent EVENT_BEAT_LASS_DYE
	iftrue BeatLassDye
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue PostGameTradeLass
DidntTradeWithDye:
	trade NPC_TRADE_DYE
	waitbutton
	closetext
	end

PostGameTradeLass:
	checkevent EVENT_TRADED_WITH_LASS_DYE
	iffalse DidntTradeWithDye
	writetext NacreneTradeHouseLassAskBattleText
	yesorno
	iffalse RefusedLassBattle
	writetext NacreneTradeHouseLassAgreedText
	waitbutton
	closetext
	winlosstext LassDyeWinLossText, 0
	loadtrainer LASS, DYE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LASS_DYE
	opentext
BeatLassDye:
	writetext LassDyeAfterBattleText
	waitbutton
	closetext
	end

RefusedLassBattle:
	writetext NacreneTradeHouseLassRefusedText
	waitbutton
	closetext
	end

NacreneTradeHouseLassAskBattleText:
IF DEF(_GOLD)
	text "The COTTONEE that"
	line "I got from you has"
ELIF DEF(_SILVER)
	text "The PETILIL that I"
	line "got from you has"
ENDC
	cont "grown up and"

	para "become very"
	line "strong!"

	para "Let's have a"
	line "battle!"
	done

NacreneTradeHouseLassRefusedText:
	text "I want to show you"
IF DEF(_GOLD)
	line "how COTTONEE has"
ELIF DEF(_SILVER)
	line "how PETILIL has"
ENDC
	cont "grown up…"
	done

NacreneTradeHouseLassAgreedText:
	text "Yay! I'll show off"
	line "how I trained this"
	cont "POKéMON!"
	done

LassDyeWinLossText:
	text "Did you see how I"
	line "trained it?"
	done

LassDyeAfterBattleText:
	text "I had a great"
	line "time!"

	para "I traded my #-"
	line "MON with yours,"
	cont "and on top of"

	para "that, we had a"
	line "great battle."

	para "I'm so happy to be"
	line "with #MON!"
	done

NacreneTradeHouseGirl:
	faceplayer
	opentext
	writetext NacreneTradeHouseGirlText
	waitbutton
	jumpstd HappinessCheckScript

NacreneTradeHousePlantPokemon:
	opentext
	checkver
	iftrue .Condo2FPetilil_Loop ; White version
	writetext NacreneTradeHouseCottoneeText
	cry COTTONEE
	waitbutton
	closetext
	end

.Condo2FPetilil_Loop
	writetext NacreneTradeHousePetililText
	cry PETILIL
	waitbutton
	closetext
	end

NacreneTradeHouseSuperNerd:
	jumptextfaceplayer NacreneTradeHouseSuperNerdText

NacreneTradeHouseGirlText:
	text "Oh my, what a"
	line "lovely Trainer!"

	para "What kind of #-"
	line "MON do you have?"
	done

NacreneTradeHouseCottoneeText:
	text "COTTONEE: Fwish"
	line "fwish!"
	done

NacreneTradeHousePetililText:
	text "PETILIL: Pwoof…"
	done

NacreneTradeHouseSuperNerdText:
	text "#MON you"
	line "get through trades"
	cont "grow up fast."

	para "But be careful!"

	para "If a traded"
	line "#MON grows up"
	cont "too much, it won't"
	cont "listen to you."

	para "But if you have a"
	line "lot of BADGES,"
	cont "you'll be OK."
	done

NacreneTradeHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  9, NACRENE_CITY, 5
	warp_event  5,  9, NACRENE_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  2, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneTradeHouseLass, -1
	object_event  7,  7, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneTradeHouseGirl, -1
	object_event  8,  7, SPRITE_COTTONEE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneTradeHousePlantPokemon, -1
	object_event  2,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneTradeHouseSuperNerd, -1
