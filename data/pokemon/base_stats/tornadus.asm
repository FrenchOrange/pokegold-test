	db TORNADUS ; 147

	db  79, 115,  70, 111, 125,  80
	;   hp  atk  def  spd  sat  sdf

	db FLYING, FLYING ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio

	db 120 ; step cycles to hatch

	INCBIN "gfx/pokemon/tornadus/front.dimensions"

	db GROWTH_SLOW ; growth rate
	dn EGG_UNDISCOVERED, EGG_UNDISCOVERED ; egg groups

	; tm/hm learnset
	tmhm FLY, STRENGTH
	; end
