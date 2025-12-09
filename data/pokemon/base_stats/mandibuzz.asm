	db MANDIBUZZ ; 136

	db 110,  65, 105,  80,  55,  95
	;   hp  atk  def  spd  sat  sdf

	db DARK, FLYING ; type
	db 60 ; catch rate
	db 179 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio

	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/mandibuzz/front.dimensions"

	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CUT, FLY
	; end
