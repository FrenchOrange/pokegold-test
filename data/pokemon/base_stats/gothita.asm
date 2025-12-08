	db GOTHITA ; 080

	db  45,  30,  50,  45,  55,  65
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 200 ; catch rate
	db 58 ; base exp
	db PERSIM_BERRY, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gothita/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANLIKE, EGG_HUMANLIKE ; egg groups

	; tm/hm learnset
	tmhm
	; end
