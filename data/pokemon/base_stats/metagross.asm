	db METAGROSS ; 243

	db  80, 135, 130,  70,  95,  90
	;   hp  atk  def  spd  sat  sdf

	db STEEL, PSYCHIC_TYPE ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, METAL_COAT ; items
	db GENDER_UNKNOWN ; gender ratio

	db 40 ; step cycles to hatch

	INCBIN "gfx/pokemon/metagross/front.dimensions"

	db GROWTH_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm CUT, STRENGTH
	; end
