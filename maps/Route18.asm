	object_const_def
	const ROUTE18_BOULDER

Route18_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_CMDQUEUE, Route18SetUpStoneTableCallback
	callback MAPCALLBACK_TILES, Route18PitCallback

Route18SetUpStoneTableCallback:
	writecmdqueue .CommandQueue
	endcallback

.CommandQueue:
	cmdqueue CMDQUEUE_STONETABLE, .StoneTable ; check if any stones are sitting on a warp

.StoneTable:
	stonetable 1, ROUTE18_BOULDER, .Boulder1
	db -1 ; end

.Boulder1:
	refreshscreen $86
	disappear ROUTE2_BOULDER
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 18, 26, $6d
	setevent EVENT_BOULDER_ON_ROUTE_18
	closetext
	end

Route18Boulder:
	jumpstd StrengthBoulderScript

Route18PitCallback:
	checkevent EVENT_BOULDER_ON_ROUTE_18
	iffalse .BoulderNotPushed
	changeblock 18, 26, $6d
.BoulderNotPushed:
	endcallback

Route18_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 19, 27, NUVEMA_TOWN, 1 ; pit
	warp_event 21, 15, ROUTE_18_EGG_BARRACK, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 19, 26, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route18Boulder, EVENT_BOULDER_ON_ROUTE_18
