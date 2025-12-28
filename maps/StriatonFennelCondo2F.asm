	object_const_def
	const STRIATONFENNELCONDO2F_FENNEL
	const STRIATONFENNELCONDO2F_AMANITA

StriatonFennelCondo2F_MapScripts:
	def_scene_scripts
	scene_script StriatonFennelCondo2FMeetFennelScene, SCENE_STRIATONFENNELCONDO2F_MEETFENNEL
	scene_script StriatonFennelCondo2FNoop, SCENE_STRIATONFENNELCONDO2F_NOOP

	def_callbacks

StriatonFennelCondo2FMeetFennelScene:
	sdefer MeetFennel
StriatonFennelCondo2FNoop:
	end

MeetFennel:
	applymovement PLAYER, PlayerWalksToFennel
	opentext
	writetext MeetFennelText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, STRIATONFENNELCONDO2F_FENNEL, 15
	opentext
	writetext FennelGiveHMText
	waitbutton
	verbosegiveitem HM_CUT
	setevent EVENT_GOT_HM01_CUT
	writetext FennelExplainHMText
	waitbutton
	closetext
	setscene SCENE_STRIATONFENNELCONDO2F_NOOP
	end

PlayerWalksToFennel:
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

MeetFennelText:
	text "So like I said,"
	line "I'm FENNEL, and as"
	cont "you can see, I'm a"
	cont "scientist."

	para "In fact, the subj-"
	line "ect I'm researching"
	cont "is Trainers!"

	para "PROF.JUNIPER is my"
	line "friend from"
	cont "college."

	para "She asked me to"
	line "help you guys."
	done

FennelGiveHMText:
	text "So!"

	para "I'll give you"
	line "something to help"
	cont "you."

	para "This is a HIDDEN"
	line "MACHINE for you!"
	done

FennelExplainHMText:
	text "There are some"
	line "moves that a #-"
	cont "MON can use even"

	para "when it is not"
	line "fighting!"

	para "With this HIDDEN"
	line "MACHINE, you can"
	cont "teach your #MON"
	cont "a move called CUT."

	para "It can cut down a"
	line "small tree."

	para "And you can use a"
	line "HIDDEN MACHINE as"
	cont "many times as you"
	cont "want, like a TM."

	para "Isn't that great?"

	para "But it's difficult"
	line "to make a #MON"
	cont "forget a hidden"

	para "move once it"
	line "learns it."

	para "And I'd like to ask"
	line "you a favor, too!"

	para "On the outskirts"
	line "of STRIATON CITY"
	cont "is a place called"
	cont "the DREAMYARD."

	para "I'd like some of"
	line "the DREAM MIST"
	cont "that a #MON"

	para "there called MUNNA"
	line "gives off."

	para "It would help"
	line "greatly with my"
	cont "studies!"
	done

StriatonFennelCondo2FFennel:
	jumptextfaceplayer StriatonFennelCondo2FFennel_PreMistText

StriatonFennelCondo2FFennel_PreMistText:
	text "FENNEL: So JUNIPER"
	line "asked you to fill"
	cont "out the #DEX?"

	para "It is a challenge"
	line "to update the"
	cont "#DEX regularly,"
	cont "isn't it?"

	para "Oops! I got"
	line "distracted! Please"
	cont "bring me some of"

	para "the DREAM MIST"
	line "that MUNNA gives"
	cont "off in the"
	cont "DREAMYARD!"
	done

StriatonFennelCondo2FAmanita:
	faceplayer
	opentext
	checkevent EVENT_MET_AMANITA
	iftrue .MetAmanita
	writetext StriatonFennelCondo2FAmanita_IntroText
	waitbutton
	special UpdateAmanitasName
	yesorno
	iffalse .Refused
	writetext StriatonFennelCondo2FAmanita_SaidYesText
	waitbutton
	closetext
	setevent EVENT_MET_AMANITA
	end

.MetAmanita:
	writetext StriatonFennelCondo2FAmanita_MetHerText
	waitbutton
	closetext
	end

.Refused:
	writetext StriatonFennelCondo2FAmanita_SaidNoText
	waitbutton
	closetext
	setevent EVENT_MET_AMANITA
	end

StriatonFennelCondo2FAmanita_IntroText:
	text "Are you a Trainer?"

	para "Do you use the PC"
	line "at #MON"
	cont "CENTERS?"

	para "I am AMANITA. I"
	line "maintain the BOX"
	cont "system."

	para "Do you know about"
	line "the PC BOXES?"
	done

StriatonFennelCondo2FAmanita_SaidYesText:
	text "AMANITA: Amazing!"

	para "If you like to"
	line "catch #MON, do"
	cont "remember to leave"

	para "enough space in"
	line "your current BOX!"
	done

StriatonFennelCondo2FAmanita_SaidNoText:
	text "AMANITA: Let me"
	line "give you a quick"
	cont "how-to!"

	para "Having a team of"
	line "six #MON has"
	cont "any #MON recei-"

	para "ved afterwards be"
	line "sent to the PC"
	cont "STORAGE SYSTEM."

	para "Each box can store"
	line "up to 20 #MON!"
	done

StriatonFennelCondo2FAmanita_MetHerText:
	text "AMANITA: Catch a"
	line "lot of POKéMON,"
	cont "and use the PC"
	cont "SYSTEM a lot!"
	done

FennelsBookshelf1:
	jumptext StriatonFennelCondo2FBookshelf1Text

FennelsBookshelf2:
	jumptext StriatonFennelCondo2FBookshelf2Text

FennelsLaptop:
	opentext
	writetext StriatonFennelCondo2FLaptopText
	waitbutton
	closetext
	end

StriatonFennelCondo2FBookshelf1Text:
	text "MYSTERY GIFT Help"

	para "Having trouble"
	line "using it? Ask"
	cont "AMANITA for help!"
	done

StriatonFennelCondo2FBookshelf2Text:
	text "What's the #MON"
	line "STORAGE SYSTEM?"

	para "The person who"
	line "developed the PC's"
	cont "#MON STORAGE"

	para "SYSTEM is BILL in"
	line "the KANTO region."
	done

StriatonFennelCondo2FLaptopText:
	text "The monitor of the"
	line "PC does not show"
	cont "anything…"
	done

StriatonFennelCondo2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  1, STRIATON_FENNEL_CONDO_1F, 3

	def_coord_events

	def_bg_events
	bg_event  0,  2, BGEVENT_READ, FennelsBookshelf1
	bg_event  1,  2, BGEVENT_READ, FennelsBookshelf2
	bg_event  0,  6, BGEVENT_READ, FennelsLaptop

	def_object_events
	object_event  8,  6, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonFennelCondo2FFennel, -1
	object_event  3,  5, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonFennelCondo2FAmanita, -1
