	db SAWK ; 045

	db  75, 125,  75,  85,  30,  75
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 163 ; base exp
	db NO_ITEM, BLACK_BELT_I ; items
	db GENDER_F0 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sawk/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANLIKE, EGG_HUMANLIKE ; egg groups

	; tm/hm learnset
	tmhm STRENGTH
	; end
