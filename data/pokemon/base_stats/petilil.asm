	db PETILIL ; 054

	db  45,  35,  50,  30,  70,  50
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 190 ; catch rate
	db 56 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio

	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/petilil/front.dimensions"

	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GRASS, EGG_GRASS ; egg groups

	; tm/hm learnset
	tmhm CUT
	; end
