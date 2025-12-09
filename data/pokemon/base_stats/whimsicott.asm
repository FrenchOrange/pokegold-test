	db WHIMSICOTT ; 053

	db  60,  67,  85, 116,  77,  75
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 75 ; catch rate
	db 168 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio

	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/whimsicott/front.dimensions"

	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GRASS, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm 
	; end
