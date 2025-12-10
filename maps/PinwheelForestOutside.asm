PinwheelForestOutside_MapScripts:
	def_scene_scripts

	def_callbacks

PinwheelForestOutsideSign:
	jumptext PinwheelForestOutsideSignText

PinwheelForestOutsideSignText:
	text "PINWHEEL FOREST"

	para "Did you remember"
	line "to pack an"
	cont "ANTIDOTE?"
	done

PinwheelForestOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  6, PINWHEEL_FOREST, 1
	warp_event  2,  7, PINWHEEL_FOREST, 2

	def_coord_events

	def_bg_events
	bg_event  4,  0, BGEVENT_READ, PinwheelForestOutsideSign

	def_object_events
