	object_const_def

P2Lab_MapScripts:
	def_scene_scripts

	def_callbacks

P2LabMemo:
	opentext
	writetext P2LabMemoIntroText
	yesorno
	iffalse .SaidNoMonitor
.SaidNoMonitor:
	writetext P2LabMemoLoreText
	waitbutton
	closetext
	end


P2LabMemoIntroText:
	text "There is a memo"
	line "stuck to the side"
	cont "of the monitor."

	para "Read it?"
	done

P2LabMemoLoreText:
	text "My lord N apparent"
	line "-ly rejected my"
	cont "research…"

	para "But my research is"
	line "necessary for"
	cont "TEAM PLASMA to"
	cont "reach its goal…"

	para "The strongest"
	line "#MON…"

	para "The rest of the"
	line "memo is torn and"
	cont "can't be read."
	done

P2LabScopeLens:
	itemball SCOPE_LENS ; replaces Dubious Disc

P2Lab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, ROUTE_17, 3
	warp_event  5,  7, ROUTE_17, 3

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, P2LabMemo

	def_object_events
	object_event  5,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, P2LabScopeLens, EVENT_P2_LAB_SCOPE_LENS
