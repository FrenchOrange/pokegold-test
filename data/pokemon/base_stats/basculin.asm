	db BASCULIN ; 056

	db  70,  92,  65,  98,  80,  55
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 190 ; catch rate
	db 161 ; base exp
IF DEF(_GOLD)
	db NO_ITEM, DEEPSEATOOTH ; items
ELIF DEF(_SILVER)
	db NO_ITEM, DEEPSEASCALE ; items
ENDC
	db GENDER_F50 ; gender ratio

	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/basculin/front.dimensions"

	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm CUT, SURF, WATERFALL, DIVE
	; end
