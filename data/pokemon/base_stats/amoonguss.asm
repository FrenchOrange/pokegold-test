	db AMOONGUSS ; 097

	db 114,  85,  70,  30,  85,  80
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 75 ; catch rate
	db 162 ; base exp
	db TINYMUSHROOM, BIG_MUSHROOM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/amoonguss/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GRASS, EGG_GRASS ; egg groups

	; tm/hm learnset
	tmhm 
	; end
