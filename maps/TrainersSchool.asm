	object_const_def
	const TRAINERSSCHOOL_GENTLEMAN
	const TRAINERSSCHOOL_GIRL
	const TRAINERSSCHOOL_YOUNGSTER1
	const TRAINERSSCHOOL_YOUNGSTER2
	const TRAINERSSCHOOL_COOLTRAINERM

TrainersSchool_MapScripts:
	def_scene_scripts

	def_callbacks

AcademyBlackboard:
	opentext
	writetext AcademyBlackboardText
.Loop:
	loadmenu .BlackboardMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Poison
	ifequal 2, .Paralysis
	ifequal 3, .Sleep
	ifequal 4, .Burn
	ifequal 5, .Freeze
	closetext
	end

.Poison:
	writetext AcademyPoisonText
	waitbutton
	sjump .Loop

.Paralysis:
	writetext AcademyParalysisText
	waitbutton
	sjump .Loop

.Sleep:
	writetext AcademySleepText
	waitbutton
	sjump .Loop

.Burn:
	writetext AcademyBurnText
	waitbutton
	sjump .Loop

.Freeze:
	writetext AcademyFreezeText
	waitbutton
	sjump .Loop

.BlackboardMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 11, 8
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	dn 3, 2 ; rows, columns
	db 5 ; spacing
	dba .Text
	dbw BANK(@), NULL

.Text:
	db "PSN@"
	db "PAR@"
	db "SLP@"
	db "BRN@"
	db "FRZ@"
	db "QUIT@"

AcademyBookshelf:
	jumpstd DifficultBookshelfScript

AcademyBlackboardText:
	text "The blackboard"
	line "explain #MON"

	para "status changes in"
	line "battle."

	para "What do you want"
	line "to read about?"
	done

AcademyPoisonText:
	text "If poisoned, a"
	line "#MON steadily"
	cont "loses HP."

	para "Poison lingers"
	line "after the battle,"

	para "and HP is lost as"
	line "you walk."

	para "To cure it, use an"
	line "ANTIDOTE."
	done

AcademyParalysisText:
	text "Paralysis reduces"
	line "speed and may"
	cont "prevent movement."

	para "It remains after"
	line "battle, so use"
	cont "a PARLYZ HEAL."
	done

AcademySleepText:
	text "If a #MON falls"
	line "asleep, it will be"
	cont "unable to attack."

	para "The #MON may"
	line "wake up on its own"
	cont "but if a battle"

	para "ends while it is"
	line "sleeping, it will"
	cont "stay asleep."

	para "Wake it up with"
	line "an AWAKENING."
	done

AcademyBurnText:
	text "A burn reduces"
	line "attack stat and"

	para "steadily reduces"
	line "the victim's HP."

	para "A burn lingers"
	line "after battle."

	para "Cure a burn using"
	line "a BURN HEAL."
	done

AcademyFreezeText:
	text "If a #MON is"
	line "frozen, it becomes"
	cont "totally helpless."

	para "The POKéMON may"
	line "thaw out on its"
	cont "own, but if a"

	para "battle ends while"
	line "it is frozen, it"
	cont "will stay frozen."

	para "Thaw it out using"
	line "an ICE HEAL."
	done

TrainersSchoolGentleman:
	jumptextfaceplayer TrainersSchoolGentlemanText

TrainersSchoolGirl:
	jumptextfaceplayer TrainersSchoolGirlText

TrainersSchoolYoungster1:
	jumptextfaceplayer TrainersSchoolYoungster1Text

TrainersSchoolCooltrainerM:
	jumptextfaceplayer TrainersSchoolCooltrainerMText

TrainersSchoolGentlemanText:
	text "This TRAINERS'"
	line "SCHOOL exists to"
	cont "meet the demands"

	para "of Trainers who"
	line "want to know more"
	cont "about #MON"

	para "because they love"
	line "them!"
	done

TrainersSchoolGirlText:
	text "#MON undergo a"
	line "mysterious process"
	cont "named 'Evolution'."

	para "Most #MON evo-"
	line "lve after winning"
	cont "enough battles."

	para "Others only do"
	line "when in contact"
	cont "with a given item."

	para "But there are also"
	line "#MON that don't"
	cont "have an evolution."
	done

TrainersSchoolYoungster1Text:
	text "There is a way to"
	line "cancel evolution!"

	para "I'll read the book" 
	line "about it to you."
	cont "Are you ready?"

	para "'You can surprise"
	line "a #MON and stop"
	cont "its evolution by"

	para "pressing the B"
	line "Button right as it"
	cont "starts evolving.'"
	done

TrainersSchoolCooltrainerMText:
	text "Some moves can"
	line "only be taught"
	cont "with TMs."

	para "TMs can be used"
	line "over and over, so"
	cont "you might want to"
	cont "use them a lot."

	para "If you don't like"
	line "the move you"
	cont "taught, you can"

	para "always use a"
	line "different TM."
	done

TrainersSchoolYoungster2:
	faceplayer
	opentext
	checkevent EVENT_GOT_TRAINER_SCHOOL_FULL_HEAL
	iftrue .PassedTheTest
	writetext TrainersSchoolYoungster2IntroText
	yesorno
	iffalse .Refused
; Question1
	writetext TrainersSchoolYoungster2Question1Text
	promptbutton
	loadmenu TrainersSchoolYoungster2Question_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Question2
	ifequal 2, .WrongAnswer
	ifequal 3, .WrongAnswer
	end

.Question2:
	writetext TrainersSchoolYoungster2Question2Text
	promptbutton
	loadmenu TrainersSchoolYoungster2Question_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .WrongAnswer
	ifequal 2, .WrongAnswer
	ifequal 3, .RightAnswer
	end

.RightAnswer:
	writetext TrainersSchoolYoungster2RightAnswerText
	waitbutton
	verbosegiveitem FULL_HEAL
.PassedTheTest:
	writetext TrainersSchoolYoungster2PassedTestText
	waitbutton
	closetext
	setevent EVENT_GOT_TRAINER_SCHOOL_FULL_HEAL
	end

.WrongAnswer:
	writetext TrainersSchoolYoungster2WrongAnswerText
	waitbutton
	closetext
	end

.Refused:
	writetext TrainersSchoolYoungster2SayNoText
	waitbutton
	closetext
	end

TrainersSchoolYoungster2Question_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 5, 3, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "ANTIDOTE@"
	db "PARALYZ HEAL@"
	db "AWAKENING@"

TrainersSchoolYoungster2IntroText:
	text "Would you like to"
	line "take a quiz about"
	cont "status conditions?"
	done

TrainersSchoolYoungster2SayNoText:
	text "Come talk to me if"
	line "you want to take a"
	cont "quiz."
	done

TrainersSchoolYoungster2Question1Text:
	text "So here is the"
	line "question:"

	para "Which of the"
	line "following items"
	cont "cures poison?"
	done

TrainersSchoolYoungster2Question2Text:
	text "Ding ding ding!"

	para "Right answer!"
	line "Now for the next"
	cont "question."

	para "The item that"
	line "cures paralysis is"
	cont "PARALYZ HEAL, but…"

	para "Which of the"
	line "following items"
	cont "wakes up a"
	cont "sleeping #MON?"
	done

TrainersSchoolYoungster2RightAnswerText:
	text "Ding ding ding!"
	line "We have a winner!"
	cont "Fantastic answer!"

	para "Since you know so"
	line "much about status"
	cont "conditions, I'll"
	cont "give you this!"
	done

TrainersSchoolYoungster2PassedTestText:
	text "FULL HEAL does"
	line "exactly what the"
	cont "name suggests--it"

	para "heals all status"
	line "conditions!"
	done

TrainersSchoolYoungster2WrongAnswerText:
	text "Buzzzzz! Too bad…"

	para "That's incorrect."

	para "Please try again"
	line "sometime!"
	done

TrainersSchool_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, STRIATON_CITY, 5
	warp_event  5, 15, STRIATON_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  8,  1, BGEVENT_READ, AcademyBookshelf
	bg_event  9,  1, BGEVENT_READ, AcademyBookshelf
	bg_event  3,  0, BGEVENT_READ, AcademyBlackboard
	bg_event  4,  0, BGEVENT_READ, AcademyBlackboard

	def_object_events
	object_event  3, 13, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainersSchoolGentleman, -1
	object_event  6, 11, SPRITE_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainersSchoolGirl, -1
	object_event  8,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainersSchoolYoungster1, -1
	object_event  9,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainersSchoolYoungster2, -1
	object_event  3,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainersSchoolCooltrainerM, -1
