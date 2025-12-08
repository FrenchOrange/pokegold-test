	object_const_def

GoldenrodDeptStore1F_MapScripts:
	def_scene_scripts

	def_callbacks


GoldenrodDeptStore1FElevatorButton:
	jumpstd ElevatorButtonScript


GoldenrodDeptStore1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, GOLDENROD_CITY, 10
	warp_event  8,  7, GOLDENROD_CITY, 10
	warp_event 15,  0, GOLDENROD_DEPT_STORE_2F, 2
	warp_event  2,  0, GOLDENROD_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, GoldenrodDeptStore1FElevatorButton

	def_object_events
