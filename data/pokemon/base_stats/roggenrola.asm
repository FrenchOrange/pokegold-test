	db ROGGENROLA ; 030

	db  55,  75,  85,  15,  25,  25
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ROCK ; type
	db 255 ; catch rate
	db 56 ; base exp
	db EVERSTONE, HARD_STONE ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/roggenrola/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm STRENGTH
	; end
