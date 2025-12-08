	db SCRAFTY ; 066

	db  65,  90, 115,  58,  45, 115
	;   hp  atk  def  spd  sat  sdf

	db DARK, FIGHTING ; type
	db 90 ; catch rate
	db 171 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/scrafty/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm STRENGTH
	; end
