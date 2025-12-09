	db LATIOS ; 245

	db  80,  90,  80, 110, 130, 110
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, PSYCHIC_TYPE ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio

	db 120 ; step cycles to hatch

	INCBIN "gfx/pokemon/latias/front.dimensions"

	db GROWTH_SLOW ; growth rate
	dn EGG_UNDISCOVERED, EGG_UNDISCOVERED ; egg groups

	; tm/hm learnset
	tmhm CUT, FLY, SURF, WATERFALL, DIVE
	; end
