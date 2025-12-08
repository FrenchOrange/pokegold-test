	db ZOROARK ; 077

	db  60, 105,  60, 105, 120,  60
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 45 ; catch rate
	db 179 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/zoroark/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm CUT
	; end
