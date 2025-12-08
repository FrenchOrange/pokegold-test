	db EMOLGA ; 093

	db  55,  75,  60, 103,  75,  60
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, FLYING ; type
	db 200 ; catch rate
	db 150 ; base exp
	db CHERI_BERRY, CHERI_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/emolga/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm CUT
	; end
