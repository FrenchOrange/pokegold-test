	object_const_def

	const STRIATONFENNELCONDO1F_YOUNGSTER1
	const STRIATONFENNELCONDO1F_GIRL
	const STRIATONFENNELCONDO1F_FISHER

StriatonFennelCondo1F_MapScripts:
	def_scene_scripts
	scene_script StriatonFennelCondo1FScene, SCENE_STRIATONFENNELCONDO1F_TURN
	scene_script StriatonFennelCondo1FNoop, SCENE_STRIATONFENNELCONDO1F_NOOP

	def_callbacks

StriatonFennelCondo1FScene:
	turnobject PLAYER, UP
	setscene SCENE_STRIATONFENNELCONDO1F_NOOP
StriatonFennelCondo1FNoop:
	end

StriatonFennelCondo1FYoungster1:
	jumptextfaceplayer StriatonFennelCondo1FYoungster1Text

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
	object_event  6,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonFennelCondo1FYoungster1, -1
	object_event  3,  4, SPRITE_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonFennelCondo1FGirl, -1
	object_event  8,  5, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonFennelCondo1FFisher, -1
