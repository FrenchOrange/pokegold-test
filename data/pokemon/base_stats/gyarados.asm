	db GYARADOS ; 190

	db  95, 125,  79,  81,  60, 100
	;   hp  atk  def  spd  sat  sdf

	db WATER, FLYING ; type
	db 45 ; catch rate
	db 189 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio

	db 5 ; step cycles to hatch

	INCBIN "gfx/pokemon/gyarados/front.dimensions"

	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm SURF, STRENGTH, WATERFALL, DIVE
	; end
