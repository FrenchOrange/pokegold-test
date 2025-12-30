	object_const_def
	const ROUTE18EGGBARRACK_COOLTRAINERM
	const ROUTE18EGGBARRACK_COOLTRAINERF
	const ROUTE18EGGBARRACK_HIKER

Route18EggBarrack_MapScripts:
	def_scene_scripts

	def_callbacks

Route18EggBarrackCooltrainerM:
	faceplayer
	opentext
	checkevent EVENT_GOT_LARVESTA_EGG
	iftrue .GotLarvestaEgg
	checkevent EVENT_SPOKE_TO_LARVESTA_EGG_NPC
	iftrue .SpokeToEggNPC
	writetext Route18EggBarrackCooltrainerM_IntroText
	waitbutton
	setevent EVENT_SPOKE_TO_LARVESTA_EGG_NPC
.SpokeToEggNPC:
	writetext Route18EggBarrackCooltrainerM_SpokeText
	yesorno
	iffalse .RefusedLarvestEgg
	readvar VAR_PARTYCOUNT 
	ifequal PARTY_LENGTH, .PartyFull
	giveegg LARVESTA, EGG_LEVEL
	getstring STRING_BUFFER_4, .eggname
	scall .GivesLarvestaEgg
	writetext Route18EggBarrackCooltrainerM_GiveEggText
	waitbutton
	setevent EVENT_GOT_LARVESTA_EGG
.GotLarvestaEgg:
	writetext Route18EggBarrackCooltrainerM_PostEggText
	waitbutton
	closetext
	end

.RefusedLarvestEgg
	writetext Route18EggBarrackCooltrainerM_SaidNoText
	waitbutton
	closetext
	end

.eggname
	db "EGG@"

.GivesLarvestaEgg:
	jumpstd ReceiveEggScript
	end

.PartyFull:
	writetext Route18EggBarrackCooltrainerM_PartyFullText
	waitbutton
	closetext
	end

Route18EggBarrackCooltrainerF:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .HealedInBarrack
	writetext Route18EggBarrackCooltrainerF_PreHealText
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	playsound SFX_FULL_HEAL
	special HealParty
	pause 30
	special FadeInFromBlack
	opentext
.HealedInBarrack:
	writetext Route18EggBarrackCooltrainerF_PostHealText
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	end zzz

Route18EggBarrackHiker:
	opentext
	checkevent EVENT_SPOKE_TO_HARD_STONE_NPC
	iftrue .SpokeToHardStoneNPC
	writetext Route18EggBarrackHiker_IntroText
	promptbutton
	setevent EVENT_SPOKE_TO_HARD_STONE_NPC
.SpokeToHardStoneNPC:
	writetext Route18EggBarrackHiker_SpokeText
	promptbutton
	checkitem HARD_STONE
	iffalse .NoHardStone
	writetext Route18EggBarrackHiker_ItemBagText
	special PlaceMoneyTopRight
	yesorno
	iffalse .SaidNoHardStone
	writetext Route18EggBarrackHiker_YesItemText
	waitbutton
	waitsfx
	takeitem HARD_STONE
	playsound SFX_TRANSACTION
	givemoney $0, 10000
	special PlaceMoneyTopRight
	pause 30
	closetext
	opentext
	writetext Route18EggBarrackHiker_AfterText
	waitbutton
	closetext
	end

.NoHardStone:
	writetext Route18EggBarrackHiker_NoItemText
	waitbutton
	closetext
	end

.SaidNoHardStone:
	writetext Route18EggBarrackHiker_SaidNoText
	waitbutton
	closetext
	end

Route18EggBarrackCooltrainerM_IntroText:
	text "#MON trainer."

	para "The sparkle in"
	line "your eyes…"

	para "I feel your"
	line "kindness toward"
	cont "#MON!"

	para "I have decided!"
	line "I will entrust the"
	cont "EGG I found in the"

	para "RELIC CASTLE to"
	line "you!"
	done

Route18EggBarrackCooltrainerM_SpokeText:
	text "Would you like to"
	line "receive this EGG"
	cont "and raise it?"
	done

Route18EggBarrackCooltrainerM_SaidNoText:
	text "Well, that's cert-"
	line "ainly up to you."
	done

Route18EggBarrackCooltrainerM_PartyFullText:
	text "I appreciate your"
	line "thought, but you"
	cont "cannot take the"

	para "EGG right now"
	line "because your party"
	cont "is full."
	done

Route18EggBarrackCooltrainerM_GiveEggText:
	text "Yes! I'm counting"
	line "on you."
	done

Route18EggBarrackCooltrainerM_PostEggText:
	text "#MON EGGS hatch"
	line "when you carry"
	cont "them with you."

	para "Being around"
	line "healthy #MON"
	cont "helps them grow!"
	done

Route18EggBarrackCooltrainerF_PreHealText:
	text "Wait! Wait!"

	para "Aren't your #MON"
	line "a bit tired?"

	para "Here, don't be shy!"
	line "Let them rest!"
	done

Route18EggBarrackCooltrainerF_PostHealText:
	text "Your #MON are"
	line "so energetic!"
	done

Route18EggBarrackHiker_IntroText:
	text "Hey, check it out."
	line "I've got a sweet"
	cont "deal for ya!"

	para "You know how"
	line "#MON like to"
	cont "hide behind stones"
	cont "or rocks, yeah?"

	para "Sometimes they"
	line "hide cool stuff."

	para "If you find some-"
	line "thing cool from"
	cont "one such #MON,"

	para "you should bring"
	line "it to me."

	para "I'll make it worth"
	line "your while."
	done

Route18EggBarrackHiker_SpokeText:
	text "What's up? Did you"
	line "find something"
	cont "cool for me?"
	done

Route18EggBarrackHiker_ItemBagText:
	text "Hey, nice!"
	line "Let me check out"
	cont "that HARD STONE…"

	para "I'll give you"
	line "¥10000 for it."
	cont "Whaddaya say?"
	done

Route18EggBarrackHiker_YesItemText:
	text "Turned over the"
	line "HARD STONE and"
	cont "received ¥10000!"
	done

Route18EggBarrackHiker_AfterText:
	text "Hey, thanks!"

	para "I bet I can sell"
	line "this to a"
	cont "collector for way"

	para "more than I just"
	line "gave you."

	para "Ha! That's business"
	line "for ya!"
	done

Route18EggBarrackHiker_SaidNoText:
	text "Hey, come see me"
	line "if you find someth"
	cont "-ing cool, got it?"

	para "I'll make it worth"
	line "your while."
	done

Route18EggBarrackHiker_NoItemText:
	text "…Nope, nothing"
	line "cool in your BAG."

	para "Oh well. Maybe"
	line "next time!"
	done

Route18EggBarrack_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, ROUTE_18, 2
	warp_event  4,  9, ROUTE_18, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route18EggBarrackCooltrainerM, -1
	object_event  6,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route18EggBarrackCooltrainerF, -1
	object_event  7,  2, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route18EggBarrackHiker, -1
