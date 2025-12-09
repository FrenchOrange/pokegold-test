	db WOOBAT ; 033

	db  55,  45,  43,  72,  55,  43
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_T, FLYING ; type
	db 190 ; catch rate
	db 65 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio

	db 15 ; step cycles to hatch

	INCBIN "gfx/pokemon/woobat/front.dimensions"

	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm FLY
	; end
