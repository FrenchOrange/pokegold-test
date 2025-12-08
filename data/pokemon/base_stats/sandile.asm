	db SANDILE ; 057

	db  50,  72,  35,  65,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db GROUND, DARK ; type
	db 180 ; catch rate
	db 58 ; base exp
	db NO_ITEM, BLACKGLASSES ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sandile/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm CUT
	; end
