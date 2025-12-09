	db LUNATONE ; 229

	db  70,  55,  65,  70,  95,  75
	;   hp  atk  def  spd  sat  sdf

	db ROCK, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 161 ; base exp
	db NO_ITEM, MOON_STONE ; items
	db GENDER_UNKNOWN ; gender ratio

	db 25 ; step cycles to hatch

	INCBIN "gfx/pokemon/lunatone/front.dimensions"

	db GROWTH_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm 
	; end
