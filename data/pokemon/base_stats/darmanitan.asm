	db DARMANITAN ; 061

	db 105, 140,  55,  95,  30,  55
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 60 ; catch rate
	db 168 ; base exp
	db RAWST_BERRY, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/darmanitan/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm STRENGTH
	; end
