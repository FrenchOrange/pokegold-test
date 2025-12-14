	object_const_def

	const STRIATONFENNELCONDO1F_YOUNGSTER1
	const STRIATONFENNELCONDO1F_YOUNGSTER2
	const STRIATONFENNELCONDO1F_GIRL
	const STRIATONFENNELCONDO1F_FISHER
	const STRIATONFENNELCONDO1F_FENNEL

StriatonFennelCondo1F_MapScripts:
	def_scene_scripts
	scene_script StriatonFennelCondo1FScene, SCENE_STRIATONFENNELCONDO1F_TURN
	scene_script StriatonFennelCondo1FFollow, SCENE_STRIATONFENNELCONDO1F_FOLLOW
	scene_script StriatonFennelCondo1FNoop, SCENE_STRIATONFENNELCONDO1F_NOOP

	def_callbacks

StriatonFennelCondo1FScene:
	turnobject PLAYER, UP
	setscene SCENE_STRIATONFENNELCONDO1F_NOOP
StriatonFennelCondo1FNoop:
	end

StriatonFennelCondo1FFollow:
	sdefer StriatonFennelCondo1FFollowScript
	end

StriatonFennelCondo1FFollowScript:
	follow STRIATONFENNELCONDO1F_FENNEL, PLAYER
	applymovement STRIATONFENNELCONDO1F_FENNEL, FennelWalksUp1
	turnobject STRIATONFENNELCONDO1F_FENNEL, DOWN
	stopfollow
	opentext
	writetext Fennel1FDialogue1
	waitbutton
	closetext
	applymovement STRIATONFENNELCONDO1F_FENNEL, FennelWalksUp2
	turnobject STRIATONFENNELCONDO1F_FENNEL, DOWN
	applymovement PLAYER, FennelWalksUp2
	opentext
	writetext Fennel1FDialogue2
	waitbutton
	closetext
	applymovement STRIATONFENNELCONDO1F_FENNEL, FennelLeaves
	playsound SFX_EXIT_BUILDING
	disappear STRIATONFENNELCONDO1F_FENNEL
	waitsfx
	applymovement PLAYER, FennelCondo1FPlayerWalksUp
	applymovement PLAYER, FennelLeaves
	warpcheck
	setscene SCENE_STRIATONFENNELCONDO1F_NOOP
	end

Fennel1FDialogue1:
	text "FENNEL: You're"
	line "going to meet all"
	cont "of the POKéMON in"

	para "the UNOVA region."
	line "Am I right?"

	para "Oh, the stairs are"
	line "right here!"
	done

Fennel1FDialogue2:
	text "FENNEL: My room is"
	line "upstairs here."

	para "Come on, go"
	line "upstairs!"
	done

FennelWalksUp1:
	step UP
FennelWalksUp2:
	step UP
FennelCondo1FPlayerWalksUp:
	step UP
	step_end

FennelLeaves:
	step RIGHT
	step RIGHT
	step_end

StriatonFennelCondo1FYoungster1:
	jumptextfaceplayer StriatonFennelCondo1FYoungster1Text

StriatonFennelCondo1FYoungster2:
	jumptextfaceplayer StriatonFennelCondo1FYoungster2Text

StriatonFennelCondo1FGirl:
	jumptextfaceplayer StriatonFennelCondo1FGirlText

StriatonFennelCondo1FFisher:
	jumptextfaceplayer StriatonFennelCondo1FFisherText

StriatonFennelCondo1FYoungster1Text:
	text "You can't go"
	line "upstairs now!"

	para "'Cause FENNEL said"
	line "she was testing"
	cont "something, and she"

	para "had a scary look"
	line "on her face!"
	done

StriatonFennelCondo1FYoungster2Text:
	text "She may not look"
	line "like it, but"
	cont "FENNEL is a great"
	cont "scientist!"
	done

StriatonFennelCondo1FGirlText:
	text "Some evolve and"
	line "some don't…"

	para "#MON really are"
	line "curious creatures."
	done

StriatonFennelCondo1FFisherText:
	text "After a battle, to"
	line "my surprise, my"
	cont "#MON evolved"

	para "and changed its"
	line "appearance!"
	done

StriatonFennelCondo1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, STRIATON_CITY, 10
	warp_event  5,  7, STRIATON_CITY, 11
	warp_event  7,  1, STRIATON_FENNEL_CONDO_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonFennelCondo1FYoungster1, EVENT_FENNELS_CONDO_YOUNGSTER_1
	object_event  3,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonFennelCondo1FYoungster2, EVENT_FENNELS_CONDO_YOUNGSTER_2
	object_event  3,  4, SPRITE_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonFennelCondo1FGirl, -1
	object_event  8,  5, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonFennelCondo1FFisher, -1
	object_event  5,  6, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FENNEL_IN_CONDO_1F
