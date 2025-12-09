	object_const_def

Route1_MapScripts:
	def_scene_scripts

	def_callbacks

Route1Sign:
	jumptext Route1SignText

Route1TrainerTips:
	jumptext Route1TrainerTipsText

Route1SignText:
	text "ROUTE 1"
	done

Route1TrainerTipsText:
	text "TRAINER TIPS!"

	para "Make an effort to"
	line "talk to all the"
	cont "people you meet"
	cont "on your journey!"

	para "Chances are they"
	line "will have some-"
	cont "thing useful to"
	cont "tell you."
	done

Route1_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 12,  8, BGEVENT_READ, Route1Sign
	bg_event 14, 30, BGEVENT_READ, Route1Sign
	bg_event 14, 20, BGEVENT_READ, Route1TrainerTips

	def_object_events
