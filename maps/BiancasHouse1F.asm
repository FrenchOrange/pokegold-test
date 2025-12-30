	object_const_def
	const BIANCASHOUSE1F_MIDDLEF
	const BIANCASHOUSE1F_FISHER
	const BIANCASHOUSE1F_BIANCA

BiancasHouse1F_MapScripts:
	def_scene_scripts
	scene_script BiancasHouse1FConfrontation, SCENE_BIANCASHOUSE1F_CONFRONTATION
	scene_script BiancasHouse1FNoop, SCENE_BIANCASHOUSE1F_NOOP

	def_callbacks

BiancasHouse1FConfrontation:
	sdefer BiancasHouse1FConfrontationScript
BiancasHouse1FNoop:
	end

BiancasHouse1FConfrontationScript:
	turnobject BIANCASHOUSE1F_FISHER, LEFT
	applymovement PLAYER, BiancasHousePlayerWalksUp
	applymovement BIANCASHOUSE1F_FISHER, BiancasHouseBiancasDadStep
	opentext
	writetext ConfrontationDialogue1
	waitbutton
	closetext
	applymovement BIANCASHOUSE1F_BIANCA, BiancasHouseBiancaWalksDown
	showemote EMOTE_SHOCK, BIANCASHOUSE1F_BIANCA, 15
	turnobject BIANCASHOUSE1F_BIANCA, LEFT
	pause 5
	turnobject BIANCASHOUSE1F_BIANCA, RIGHT
	pause 5
	turnobject BIANCASHOUSE1F_BIANCA, DOWN
	opentext
	writetext ConfrontationDialogue2
	waitbutton
	closetext
	applymovement BIANCASHOUSE1F_BIANCA, BiancasHouseBiancaLeaves
	turnobject PLAYER, DOWN
	applymovement BIANCASHOUSE1F_BIANCA, BiancasHouseBiancaWalksDown
	playsound SFX_EXIT_BUILDING
	disappear BIANCASHOUSE1F_BIANCA
	waitsfx
	setscene SCENE_BIANCASHOUSE1F_NOOP
	end

BiancasHousePlayerWalksUp:
	step UP
	step RIGHT
	step UP
	step_end

BiancasHouseBiancasDadStep:
	step LEFT
	step_end

BiancasHouseBiancaLeaves:
	step LEFT
	step DOWN
BiancasHouseBiancaWalksDown:
	step DOWN
	step_end

ConfrontationDialogue1:
	text "No, no, a thousand"
	line "times no!"

	para "BIANCA: But, I'm…"
	line "I'm a good trainer"
	cont "who got a #MON"
	cont "and everything!"

	para "I can totally go"
	line "on an adventure!"
	done

ConfrontationDialogue2:
	text "BIANCA: Oh…"
	line "It's OK."

	para "…It's fine!"

	para "I'll be waiting for"
	line "you in front of"
	cont "the lab, OK?"
	done



BiancasHouse1FBiancasMom:
	jumptextfaceplayer BiancasHouse1FBiancasMomText

BiancasHouse1FBiancasDad:
	jumptextfaceplayer BiancasHouse1FBiancasDadText

BiancasHouse1FBiancasMomText:
	text "BIANCA's MOM:"
	line "Don't mind my"
	cont "husband, dear."

	para "He's just being"
	line "overprotective."

	para "All children go on"
	line "adventures with"
	cont "#MON."

	para "It's part of"
	line "growing up."
	done

BiancasHouse1FBiancasDadText:
	text "BIANCA's DAD: What"
	line "nonsense is this?"

	para "How could my"
	line "daughter, who"
	cont "knows nothing"

	para "about the world,"
	line "be going on a"
	cont "#MON journey?"
	done

BiancasHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, NUVEMA_TOWN, 3
	warp_event  5,  7, NUVEMA_TOWN, 3
	warp_event  8,  1, BIANCAS_HOUSE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  2, SPRITE_MIDDLE_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BiancasHouse1FBiancasMom, -1
	object_event  7,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BiancasHouse1FBiancasDad, -1
	object_event  5,  3, SPRITE_BIANCA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BIANCA_CONFRONTS_HER_DAD
