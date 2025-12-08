	db GARBODOR ; 075

	db  80,  95,  82,  75,  60,  82
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 60 ; catch rate
	db 166 ; base exp
	db NO_ITEM, NUGGET ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/garbodor/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm 
	; end
