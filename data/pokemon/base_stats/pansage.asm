	db PANSAGE ; 017

	db  50,  53,  48,  64,  53,  48
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 190 ; catch rate
	db 63 ; base exp
	db ORAN_BERRY, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/pansage/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm CUT
	; end
