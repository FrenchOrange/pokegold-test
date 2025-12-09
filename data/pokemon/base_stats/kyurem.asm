	db KYUREM ; 152

	db 125, 130,  90,  95, 130,  90
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, ICE ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio

	db 120 ; step cycles to hatch

	INCBIN "gfx/pokemon/kyurem/front.dimensions"

	db GROWTH_SLOW ; growth rate
	dn EGG_UNDISCOVERED, EGG_UNDISCOVERED ; egg groups

	; tm/hm learnset
	tmhm CUT, FLY, STRENGTH
	; end
