	db SOLOSIS ; 083

	db  45,  30,  40,  20, 105,  50
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 200 ; catch rate
	db 58 ; base exp
	db PERSIM_BERRY, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/solosis/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups

	; tm/hm learnset
	tmhm 
	; end
