	object_const_def

PinwheelForest_MapScripts:
	def_scene_scripts

	def_callbacks

PinwheelForestTrainerTips:
	jumptext PinwheelForestTrainerTipsText

PinwheelForestTrainerTipsText:
	text "TRAINER TIPS!"

	para "A forest is likely"
	line "to contain many"
	cont "well-hidden items!"

	para "They may be hard"
	line "to find, so look"
	cont "carefully!"
	done

PinwheelForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 43, 30, PINWHEEL_FOREST_OUTSIDE, 1
	warp_event 43, 31, PINWHEEL_FOREST_OUTSIDE, 2

	def_coord_events

	def_bg_events
	bg_event 23, 25, BGEVENT_READ, PinwheelForestTrainerTips

	def_object_events
