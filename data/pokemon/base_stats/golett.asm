	db GOLETT ; 128

	db  59,  74,  50,  35,  35,  50
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GHOST ; type
	db 190 ; catch rate
	db 61 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/golett/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm STRENGTH
	; end
