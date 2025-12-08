	db BEARTIC ; 120

	db  95, 110,  80,  50,  70,  80
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 120 ; catch rate
	db 61 ; base exp
	db ASPEAR_BERRY, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/beartic/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm CUT, SURF, STRENGTH, DIVE
	; end
