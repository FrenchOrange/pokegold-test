	object_const_def
	const ROUTE2GATE_LINK_RECEPTIONIST
	const ROUTE2GATE_GIRL

Route2Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route2GateReceptionist:
	jumptext Route2GateReceptionistText

Route2GateGirl:
	jumptextfaceplayer Route2GateGirlText

Route2GateReceptionistText:
	text "Good afternoon,"
	line "Trainer!"

	para "This is a gate for"
	line "travelers!"

	para "Please check the"
	line "electric bulletin"
	cont "board!"
	done

Route2GateGirlText:
	text "Watching the info"
	line "-rmation changing"
	cont "on the electric"
	cont "bulletin board…"

	para "It makes me happy."
	line "I find it so"
	cont "soothing!"
	done

Route2Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  4, ACCUMULA_TOWN, 5
	warp_event  9,  5, ACCUMULA_TOWN, 6
	warp_event  0,  4, ROUTE_2, 1
	warp_event  0,  5, ROUTE_2, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  2, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route2GateReceptionist, -1
	object_event  3,  5, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route2GateGirl, -1
