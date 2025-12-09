	db ZORUA ; 076

	db  40,  65,  40,  65,  80,  40
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 75 ; catch rate
	db 66 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio

	db 25 ; step cycles to hatch

	INCBIN "gfx/pokemon/zorua/front.dimensions"

	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm CUT
	; end
