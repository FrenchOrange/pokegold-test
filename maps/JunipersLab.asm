	object_const_def

JunipersLab_MapScripts:
	def_scene_scripts

	def_callbacks

JunipersLabPC:
	jumptext JunipersLabPCText

JunipersLabRulebook1:
	jumptext JunipersLabRulebook1Text

JunipersLabRulebook2:
	jumptext JunipersLabRulebook2Text

JunipersLabPhoto:
	opentext
	checkevent EVENT_MET_CEDRIC
	iftrue .MetCedric
	writetext JunipersLabPhotoManText
	promptbutton
	closetext
	end

.MetCedric:
	writetext JunipersLabPhotoCedricText
	promptbutton
	closetext
	end

JunipersLabPCText:
	text "There are lots of"
	line "materials and"
	cont "research reports"
	cont "about #MON!"
	done

JunipersLabRulebook1Text:
	text "Adventure Rules -"
	line "Chapter 1"

	para "The START Button"
	line "opens the menu."
	done

JunipersLabRulebook2Text:
	text "Adventure Rules -"
	line "Chapter 2"

	para "Record your pro-"
	line "gress with SAVE."
	done

JunipersLabPhotoManText:
	text "Who is this with"
	line "PROF.JUNIPER?"

	para "There's a smiling"
	line "man in the photo."
	done

JunipersLabPhotoCedricText:
	text "Father and"
	line "daughter…"

	para "Its a photo of the"
	line "two PROF.JUNIPERS."
	done

JunipersLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  9, NUVEMA_TOWN, 1
	warp_event  3,  9, NUVEMA_TOWN, 1

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_READ, JunipersLabPC
	bg_event  3,  2, BGEVENT_READ, JunipersLabRulebook1
	bg_event  4,  2, BGEVENT_READ, JunipersLabRulebook2

	def_object_events
	object_event  5,  3, SPRITE_CLIPBOARD, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JunipersLabPhoto, -1
