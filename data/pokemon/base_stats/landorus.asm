	db LANDORUS ; 151

	db  89, 125,  90, 101, 115,  80
	;   hp  atk  def  spd  sat  sdf

	db GROUND, FLYING ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio

	db 120 ; step cycles to hatch

	INCBIN "gfx/pokemon/landorus/front.dimensions"

	db GROWTH_SLOW ; growth rate
	dn EGG_UNDISCOVERED, EGG_UNDISCOVERED ; egg groups

	; tm/hm learnset
	tmhm FLY, STRENGTH
	; end
