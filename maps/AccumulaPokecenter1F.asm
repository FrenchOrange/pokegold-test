	object_const_def
	const ACCUMULAPOKECENTER1F_NURSE
	const ACCUMULAPOKECENTER1F_CLERK
	const ACCUMULAPOKECENTER1F_JUNIPER
	const ACCUMULAPOKECENTER1F_BIANCA

AccumulaPokecenter1F_MapScripts:
	def_scene_scripts
	scene_script AccumulaPokecenter1FFollow, SCENE_ACCUMULAPOKECENTER1F_FOLLOW
	scene_script AccumulaPokecenter1FHeal, SCENE_ACCUMULAPOKECENTER1F_HEAL
	scene_script AccumulaPokecenter1FNoop, SCENE_ACCUMULAPOKECENTER1F_NOOP

	def_callbacks

AccumulaPokecenter1FFollow:
	sdefer AccumulaPokecenter1F_FollowJuniper
	setscene SCENE_ACCUMULAPOKECENTER1F_NOOP
AccumulaPokecenter1FHeal:
AccumulaPokecenter1FNoop:
	end

AccumulaPokecenter1F_FollowJuniper:
	disappear ACCUMULAPOKECENTER1F_BIANCA
	moveobject ACCUMULAPOKECENTER1F_BIANCA, 5,  4
	appear ACCUMULAPOKECENTER1F_BIANCA
	turnobject ACCUMULAPOKECENTER1F_JUNIPER, DOWN
	opentext
	writetext JuniperIntroText
	waitbutton
	closetext
	follow ACCUMULAPOKECENTER1F_JUNIPER, PLAYER
	applymovement ACCUMULAPOKECENTER1F_JUNIPER, JuniperMovesUp
	turnobject ACCUMULAPOKECENTER1F_BIANCA, LEFT
	showemote EMOTE_SHOCK, ACCUMULAPOKECENTER1F_BIANCA, 15
	applymovement ACCUMULAPOKECENTER1F_BIANCA, BiancaMovesUp
	opentext
	writetext BiancaIntroText
	waitbutton
	closetext
	turnobject PLAYER, LEFT
	turnobject ACCUMULAPOKECENTER1F_BIANCA, LEFT
	opentext
	writetext JuniperExplainHealingText
	waitbutton
	closetext
	setscene SCENE_ACCUMULAPOKECENTER1F_HEAL
	stopfollow
	end

AccumulaPokecenter1FNurseScript:
	checkscene
	ifequal SCENE_ACCUMULAPOKECENTER1F_HEAL, .SceneNurseEvent
	jumpstd PokecenterNurseScript

.SceneNurseEvent:
	opentext
	writetext SceneNurseDayText
	promptbutton
	writetext SceneNurseAskHealText
	pause 20
	turnobject LAST_TALKED, LEFT
	pause 10
	special HealParty
	playmusic MUSIC_NONE
	setval HEALMACHINE_POKECENTER
	special HealMachineAnim
	pause 30
	special RestartMapMusic
	turnobject LAST_TALKED, DOWN
	pause 10

	writetext SceneNurseReturnPokemonText
	pause 20

	writetext SceneNurseGoodbyeText

	turnobject LAST_TALKED, UP
	pause 10
	turnobject LAST_TALKED, DOWN
	pause 10

	waitbutton
	closetext
	pause 5
FollowJuniper_Cont:
	turnobject PLAYER, LEFT
	turnobject ACCUMULAPOKECENTER1F_JUNIPER, RIGHT
	opentext
	writetext JuniperAfterHealingText
	waitbutton
	closetext
	follow ACCUMULAPOKECENTER1F_JUNIPER, PLAYER
	applymovement ACCUMULAPOKECENTER1F_JUNIPER, JuniperWalksToPC
	stopfollow
	applymovement ACCUMULAPOKECENTER1F_JUNIPER, PlayerWalksBack
	turnobject ACCUMULAPOKECENTER1F_JUNIPER, DOWN
	applymovement PLAYER, PlayerWalksToPC
	turnobject PLAYER, UP
	applymovement ACCUMULAPOKECENTER1F_JUNIPER, JuniperWalksDown

	disappear ACCUMULAPOKECENTER1F_BIANCA
	moveobject ACCUMULAPOKECENTER1F_BIANCA, 8,  3
	appear ACCUMULAPOKECENTER1F_BIANCA

	applymovement ACCUMULAPOKECENTER1F_BIANCA, BiancaWalksToPC
	turnobject ACCUMULAPOKECENTER1F_BIANCA, DOWN
	opentext
	writetext JuniperExplainPCText
	waitbutton
	closetext
	turnobject ACCUMULAPOKECENTER1F_JUNIPER, UP
	opentext
	writetext SomeoneExchangeText
	waitbutton
	closetext
	follow ACCUMULAPOKECENTER1F_JUNIPER, PLAYER
	applymovement ACCUMULAPOKECENTER1F_JUNIPER, JuniperWalksToMart
	stopfollow
	applymovement ACCUMULAPOKECENTER1F_BIANCA, BiancaWalksToMart
	turnobject PLAYER, LEFT
	opentext
	writetext JuniperExplainMartText
	waitbutton
	closetext
	applymovement ACCUMULAPOKECENTER1F_JUNIPER, BiancaWalksToMart
	applymovement ACCUMULAPOKECENTER1F_JUNIPER, JuniperLeaves
	playsound SFX_EXIT_BUILDING
	disappear ACCUMULAPOKECENTER1F_JUNIPER
	waitsfx
	turnobject PLAYER, RIGHT
	opentext
	writetext BiancaAfterSceneText
	waitbutton
	closetext
	setscene SCENE_ACCUMULAPOKECENTER1F_NOOP
	end

JuniperMovesUp:
	step UP
	step UP
	step UP
	step LEFT
	turn_head RIGHT
	step_end

BiancaMovesUp:
	step LEFT
PlayerWalksBack:
	step UP
	step_end

JuniperWalksToPC:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
BiancaWalksToPC:
	step RIGHT
	step RIGHT
PlayerWalksToPC:
	step RIGHT
	step RIGHT
	step_end

JuniperWalksDown:
	step DOWN
	turn_head RIGHT
	step_end

JuniperWalksToMart:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step LEFT
	turn_head RIGHT
	step_end

BiancaWalksToMart:
	step LEFT
	step LEFT
	step LEFT
	step_end

JuniperLeaves:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

JuniperIntroText:
	text "PROFESSOR JUNIPER:"
	line "This is a #MON"
	cont "CENTER!"

	para "Don't you feel"
	line "better as soon as"
	cont "you step through"
	cont "the door?"

	para "OK, let's start"
	line "your tour!"
	done

BiancaIntroText:
	text "BIANCA: Ooh, wait"
	line "for me!"
	done

JuniperExplainHealingText:
	text "PROFESSOR JUNIPER:"
	line "A #MON CENTER"
	cont "is a truly"
	cont "incredible place!"

	para "Do you know why?"

	para "Because your"
	line "#MON can be"
	cont "healed!"

	para "And, what's more,"
	line "it's totally free!"

	para "A #MON CENTER"
	line "is a Trainer's"
	cont "best friend!"

	para "Here, <PLAYER>,"
	line "give it a try."
	done

JuniperAfterHealingText:
	text "PROFESSOR JUNIPER:"
	line "OK. Now that your"
	cont "#MON have"

	para "rested, I'll show"
	line "you how to use the"
	cont "PC SYSTEM."
	done

JuniperExplainPCText:
	text "PROFESSOR JUNIPER:"
	line "This is the PC."

	para "It's free for any"
	line "Trainer to use."

	para "You can store"
	line "#MON in your PC"
	cont "BOXES or select"

	para "#MON stored in"
	line "your PC to take"
	cont "along with you."

	para "Also, if you catch"
	line "a new #MON"
	cont "while you have six"

	para "#MON traveling"
	line "with you, the"
	cont "#MON you just"

	para "caught is sent"
	line "automatically to"
	cont "the PC network!"

	para "Surprising, isn't"
	line "it? Amazing, even."

	para "Here's something"
	line "else that's cool."

	para "If you select my"
	line "PC, I'll evaluate"
	cont "the progress you've" 

	para "made on your"
	line "#DEX!"
	done

SomeoneExchangeText:
	text "BIANCA: PROFESSOR…"
	line "The screen says"
	cont "'SOMEONE's PC'."

	para "Who is SOMEONE?"

	para "PROFESSOR JUNIPER:"
	line "Very good, BIANCA."

	para "That's a great"
	line "observation!"

	para "Good question, and"
	line "I'd like to say"
	cont "more, but for now,"

	para "just ignore that"
	line "and go ahead and"
	cont "use the PC."

	para "'SOMEONE' is the"
	line "person who made"
	cont "the #MON"
	cont "STORAGE SYSTEM."

	para "…Someone I'm sure"
	line "you'll meet"
	cont "someday!"

	para "OK, let's move on!"
	done

JuniperExplainMartText:
	text "PROFESSOR JUNIPER:"
	line "Now, this is the"
	cont "# MART."

	para "This is the place"
	line "to buy useful"
	cont "items and sell the"

	para "ones you don't need"
	line "anymore!"

	para "The gentleman over"
	line "there will help"
	cont "you with a smile!"

	para "PROFESSOR JUNIPER:"
	line "Let's wrap this up."

	para "I've given you the"
	line "basics of being a"
	cont "Trainer!"

	para "I'm heading back"
	line "to NUVEMA TOWN."

	para "One final thing…"

	para "When you get to"
	line "STRIATON CITY, go"
	cont "and meet an"

	para "inventor named"
	line "FENNEL."

	para "She's a friend of"
	line "mine from long"
	cont "ago, and I'm sure"

	para "she'll help you on"
	line "your way!"

	para "Best of luck! I"
	line "hope that your"
	cont "journeys prove to"

	para "be the adventure"
	line "of a lifetime!"
	done

BiancaAfterSceneText:
	text "BIANCA: Ooh! What"
	line "should I buy?"

	para "POTIONS and #"
	line "BALLS are defini-"
	cont "tely important."

	para "Ummm… thinking…"
	done

SceneNurseDayText:
	text "Hello!"
	line "Welcome to our"
	cont "#MON CENTER."
	done

SceneNurseAskHealText:
	text "We can heal your"
	line "#MON to perfect"
	cont "health."

	para "Shall we heal your"
	line "#MON?"
	done

SceneNurseReturnPokemonText:
	text "Thank you for"
	line "waiting."

	para "Your #MON are"
	line "fully healed."
	done

SceneNurseGoodbyeText:
	text "We hope to see you"
	line "again."
	done

AccumulaPokecenter1FClerkScript:
	opentext
	checkflag ENGINE_ZEPHYRBADGE
	iftrue .GotFirstBadge
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE
	closetext
	end

.GotFirstBadge:
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE_DEX
	closetext
	end

AccumulaPokecenter1FSitting:
	opentext
	writetext AccumulaPokecenter1FSittingText
	promptbutton
	closetext
	end

AccumulaPokecenter1FSittingText:
	text "Be sure to save"
	line "what's happened up"
	cont "to this point"
	cont "before you forget."

	para "Then you can take"
	line "a break."
	done


AccumulaPokecenter1FTryToLeave:
	turnobject PLAYER, UP
	turnobject ACCUMULAPOKECENTER1F_JUNIPER, DOWN
	opentext
	writetext JuniperTryToLeaveText
	waitbutton
	closetext
	applymovement PLAYER, PlayerWalksBack
	turnobject ACCUMULAPOKECENTER1F_JUNIPER, UP
	end

AccumulaPokecenter1FJuniperScript:
	jumptextfaceplayer AccumulaPokecenter1FJuniperText

AccumulaPokecenter1FBiancaScript:
	faceplayer
	opentext
	checkscene
	ifequal SCENE_ACCUMULAPOKECENTER1F_NOOP, .AfterScene
	writetext AccumulaPokecenter1FBiancaText
	waitbutton
	closetext
	end

.AfterScene:
	writetext BiancaAfterSceneText
	waitbutton
	closetext
	end

JuniperTryToLeaveText:
	text "PROFESSOR JUNIPER:"
	line "Hey, <PLAYER>."

	para "Where are you off"
	line "to? Humor me and"
	cont "talk to the lady"

	para "at the counter."
	line "Let her take your"
	cont "#MON."
	done

AccumulaPokecenter1FJuniperText:
	text "PROFESSOR JUNIPER:"
	line "You should be talk"
	cont "-ing to the lady"

	para "at the counter,"
	line "not to me…"
	done

AccumulaPokecenter1FBiancaText:
	text "BIANCA: All you"
	line "need to do is give"
	cont "her your #MON,"
	cont "<PLAYER>."
	done

AccumulaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ACCUMULA_TOWN, 1
	warp_event  4,  7, ACCUMULA_TOWN, 1
	warp_event 12,  0, POKECENTER_2F, 1

	def_coord_events
	coord_event  3,  4, SCENE_ACCUMULAPOKECENTER1F_HEAL, AccumulaPokecenter1FTryToLeave

	def_bg_events
	bg_event  0,  4, BGEVENT_READ, AccumulaPokecenter1FSitting

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaPokecenter1FNurseScript, -1
	object_event  8,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaPokecenter1FClerkScript, -1
	object_event  3,  6, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaPokecenter1FJuniperScript, EVENT_ACCUMULA_POKECENTER_JUNIPER
	object_event  9,  3, SPRITE_BIANCA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaPokecenter1FBiancaScript, EVENT_ACCUMULA_POKECENTER_BIANCA
