	db THUNDURUS ; 148

	db  79, 115,  70, 111, 125,  80
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, FLYING ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 100 ; unknown 1
	db 120 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/thundurus/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_UNDISCOVERED, EGG_UNDISCOVERED ; egg groups

	; tm/hm learnset
	tmhm FLY, STRENGTH
	; end
