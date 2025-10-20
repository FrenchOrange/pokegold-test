	object_const_def
	const ROUTE2_BOULDER

Route2_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_CMDQUEUE, Route2SetUpStoneTableCallback
	callback MAPCALLBACK_TILES, Route2PitCallback

Route2SetUpStoneTableCallback:
	writecmdqueue .CommandQueue
	endcallback

.CommandQueue:
	cmdqueue CMDQUEUE_STONETABLE, .StoneTable ; check if any stones are sitting on a warp

.StoneTable:
	stonetable 3, ROUTE2_BOULDER, .Boulder1
	db -1 ; end

.Boulder1:
	refreshscreen $86
	disappear ROUTE2_BOULDER
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 8, 26, $6d
	setevent EVENT_BOULDER_ON_ROUTE_2
	closetext
	end

Route2Boulder:
	jumpstd StrengthBoulderScript

Route2PitCallback:
	checkevent EVENT_BOULDER_ON_ROUTE_2
	iffalse .BoulderNotPushed
	changeblock 8, 26, $6d
.BoulderNotPushed:
	endcallback

Route2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 24, ROUTE_2_GATE, 3
	warp_event 15, 25, ROUTE_2_GATE, 4
	warp_event  9, 27, NUVEMA_TOWN, 1 ; pit

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9, 26, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route2Boulder, EVENT_BOULDER_ON_ROUTE_2
