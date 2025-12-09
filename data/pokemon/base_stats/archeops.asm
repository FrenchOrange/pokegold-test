	db ARCHEOPS ; 073

	db  75, 140,  65, 110, 112,  65
	;   hp  atk  def  spd  sat  sdf

	db ROCK, FLYING ; type
	db 45 ; catch rate
	db 177 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio

	db 30 ; step cycles to hatch

	INCBIN "gfx/pokemon/archeops/front.dimensions"

	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm CUT, FLY
	; end
