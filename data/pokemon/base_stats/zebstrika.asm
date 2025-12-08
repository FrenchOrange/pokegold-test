	db ZEBSTRIKA ; 029

	db  75, 100,  63, 116,  80,  63
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 75 ; catch rate
	db 174 ; base exp
	db CHERI_BERRY, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/zebstrika/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm 
	; end
