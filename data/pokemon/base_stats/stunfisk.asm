	db STUNFISK ; 124

	db 109,  66,  84,  32,  81,  99
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ELECTRIC ; type
	db 75 ; catch rate
	db 165 ; base exp
	db NO_ITEM, SOFT_SAND ; items
	db GENDER_F50 ; gender ratio

	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/stunfisk/front.dimensions"

	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_AMORPHOUS ; egg groups

	; tm/hm learnset
	tmhm SURF
	; end
