	db RESHIRAM ; 149

	db 100, 120, 100,  90, 150, 120
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, FIRE ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio

	db 120 ; step cycles to hatch

	INCBIN "gfx/pokemon/reshiram/front.dimensions"

	db GROWTH_SLOW ; growth rate
	dn EGG_UNDISCOVERED, EGG_UNDISCOVERED ; egg groups

	; tm/hm learnset
	tmhm CUT, FLY, STRENGTH
	; end
