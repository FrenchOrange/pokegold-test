	object_const_def
	const DREAMYARDOUTSIDE_BOULDER

DreamyardOutside_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_CMDQUEUE, DreamyardOutsideSetUpStoneTableCallback
	callback MAPCALLBACK_TILES, DreamyardOutsidePitCallback

DreamyardOutsideSetUpStoneTableCallback:
	writecmdqueue .CommandQueue
	endcallback

.CommandQueue:
	cmdqueue CMDQUEUE_STONETABLE, .StoneTable ; check if any stones are sitting on a warp

.StoneTable:
	stonetable 3, DREAMYARDOUTSIDE_BOULDER, .Boulder1
	db -1 ; end

.Boulder1:
	refreshscreen $86
	disappear DREAMYARDOUTSIDE_BOULDER
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 12, 26, $2b
	setevent EVENT_BOULDER_ON_DREAMYARD
	closetext
	end

DreamyardOutsideBoulder:
	jumpstd StrengthBoulderScript

DreamyardOutsidePitCallback:
	checkevent EVENT_BOULDER_ON_DREAMYARD
	iffalse .BoulderNotPushed
	changeblock 12, 26, $2b
.BoulderNotPushed:
	endcallback

DreamyardOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0, 22, STRIATON_CITY, 3
	warp_event  0, 23, STRIATON_CITY, 4
	warp_event 12, 27, NUVEMA_TOWN, 1 ; pit
	warp_event 38,  8, DREAMYARD_INTERIOR, 1
	warp_event 10, 32, DREAMYARD_INTERIOR, 2
	warp_event 38, 36, DREAMYARD_INTERIOR, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event 12, 28, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DreamyardOutsideBoulder, EVENT_BOULDER_ON_ROUTE_2
