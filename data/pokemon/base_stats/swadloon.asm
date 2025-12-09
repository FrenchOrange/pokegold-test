	db SWADLOON ; 047

	db  55,  63,  90,  42,  50,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, GRASS ; type
	db 120 ; catch rate
	db 133 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio

	db 15 ; step cycles to hatch

	INCBIN "gfx/pokemon/swadloon/front.dimensions"

	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm CUT
	; end
