	object_const_def

GoldenrodDeptStore5F_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodDeptStore5FElevatorButton:
	jumpstd ElevatorButtonScript

GoldenrodDeptStore5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  0, GOLDENROD_DEPT_STORE_4F, 1
	warp_event 15,  0, GOLDENROD_DEPT_STORE_6F, 1
	warp_event  2,  0, GOLDENROD_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, GoldenrodDeptStore5FElevatorButton

	def_object_events
