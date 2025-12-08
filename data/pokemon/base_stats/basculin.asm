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
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/basculin/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm CUT, SURF, WATERFALL, DIVE
	; end
