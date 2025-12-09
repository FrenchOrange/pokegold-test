	db VIRIZION ; 146

	db  91,  90,  72, 108,  90, 129
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FIGHTING ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio

	db 80 ; step cycles to hatch

	INCBIN "gfx/pokemon/virizion/front.dimensions"

	db GROWTH_SLOW ; growth rate
	dn EGG_UNDISCOVERED, EGG_UNDISCOVERED ; egg groups

	; tm/hm learnset
	tmhm CUT, STRENGTH
	; end
