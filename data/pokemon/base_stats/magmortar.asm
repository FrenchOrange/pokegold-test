	db MAGMORTAR ; 188

	db 100,  75, 115,  85,  90, 115
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 30 ; catch rate
	db 243 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio

	db 25 ; step cycles to hatch

	INCBIN "gfx/pokemon/magmortar/front.dimensions"

	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANLIKE, EGG_HUMANLIKE ; egg groups

	; tm/hm learnset
	tmhm STRENGTH
	; end
