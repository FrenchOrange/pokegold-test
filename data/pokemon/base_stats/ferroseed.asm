	db FERROSEED ; 103

	db  44,  50,  91,  10,  24,  86
	;   hp  atk  def  spd  sat  sdf

	db GRASS, STEEL ; type
	db 255 ; catch rate
	db 61 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ferroseed/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GRASS, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm 
	; end
