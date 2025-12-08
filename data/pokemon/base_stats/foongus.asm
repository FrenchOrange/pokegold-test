	db FOONGUS ; 096

	db  69,  55,  45,  15,  55,  55
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 190 ; catch rate
	db 59 ; base exp
	db TINYMUSHROOM, BIG_MUSHROOM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/foongus/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GRASS, EGG_GRASS ; egg groups

	; tm/hm learnset
	tmhm 
	; end
