	db DRUDDIGON ; 127

	db  77, 120,  90,  48,  60,  90
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 170 ; base exp
	db NO_ITEM, DRAGON_FANG ; items
	db GENDER_F50 ; gender ratio

	db 30 ; step cycles to hatch

	INCBIN "gfx/pokemon/druddigon/front.dimensions"

	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_DRAGON, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm CUT, SURF, STRENGTH
	; end
