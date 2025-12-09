	db CARRACOSTA ; 071

	db  74, 108, 133,  32,  83,  65
	;   hp  atk  def  spd  sat  sdf

	db WATER, ROCK ; type
	db 45 ; catch rate
	db 173 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio

	db 30 ; step cycles to hatch

	INCBIN "gfx/pokemon/carracosta/front.dimensions"

	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm SURF, STRENGTH, WATERFALL, DIVE
	; end
