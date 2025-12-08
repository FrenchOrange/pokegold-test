	db BEHEEYEM ; 112

	db  75,  75,  75,  40, 125,  95
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 90 ; catch rate
	db 170 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/beheeyem/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_HUMANLIKE, EGG_HUMANLIKE ; egg groups

	; tm/hm learnset
	tmhm 
	; end
