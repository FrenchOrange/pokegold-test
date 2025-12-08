	db SWOOBAT ; 034

	db  67,  57,  55, 114,  77,  55
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_T, FLYING ; type
	db 45 ; catch rate
	db 149 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/swoobat/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm FLY
	; end
