	db GOTHITELLE ; 082

	db  70,  55,  95,  65,  95, 110
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 50 ; catch rate
	db 221 ; base exp
	db PERSIM_BERRY, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gothitelle/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANLIKE, EGG_HUMANLIKE ; egg groups

	; tm/hm learnset
	tmhm
	; end
