	db BRAVIARY ; 134

	db 100, 123,  75,  80,  57,  75
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 60 ; catch rate
	db 179 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio

	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/braviary/front.dimensions"

	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CUT, FLY, STRENGTH
	; end