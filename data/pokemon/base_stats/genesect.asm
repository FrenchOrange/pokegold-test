	db GENESECT ; 155

	db  71, 120,  95,  99, 120,  95
	;   hp  atk  def  spd  sat  sdf

	db BUG, STEEL ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 120 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/genesect/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_UNDISCOVERED, EGG_UNDISCOVERED ; egg groups

	; tm/hm learnset
	tmhm FLY
	; end
