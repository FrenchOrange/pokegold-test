	object_const_def
	const ROUTE17GATE_LINK_RECEPTIONIST
	const ROUTE17GATE_LASS

Route17Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route17GateReceptionist:
	jumptext Route17GateReceptionistText

Route17GateLass:
	jumptextfaceplayer Route17GateLassText

Route17GateReceptionistText:
	text "There is nothing"
	line "of interest beyond"
	cont "here, and the"

	para "electric bulletin"
	line "board has gone"
	cont "pitch black."

	para "Kind of refreshing"
	line "isn't it?"
	done

Route17GateLassText:
	text "Wasting money is"
	line "bad, but wasting"
	cont "time? Even worse!"

	para "There are some"
	line "things that can"
	cont "only be done now!"
	done

Route17GateBulletin:
	end

Route17Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ROUTE_17, 1
	warp_event  0,  5, ROUTE_17, 2
	warp_event  9,  4, ROUTE_1_WEST, 1
	warp_event  9,  5, ROUTE_1_WEST, 2

	def_coord_events

	def_bg_events
	bg_event  4,  2, BGEVENT_READ, Route17GateBulletin
	bg_event  5,  2, BGEVENT_READ, Route17GateBulletin

	def_object_events
	object_event  8,  2, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route17GateReceptionist, -1
	object_event  1,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route17GateLass, -1
