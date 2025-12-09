	db JYNX ; 182

	db  65,  50,  35,  95, 115,  95
	;   hp  atk  def  spd  sat  sdf

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 159 ; base exp
	db ASPEAR_BERRY, ASPEAR_BERRY ; items
	db GENDER_F100 ; gender ratio

	db 25 ; step cycles to hatch

	INCBIN "gfx/pokemon/jynx/front.dimensions"

	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANLIKE, EGG_HUMANLIKE ; egg groups

	; tm/hm learnset
	tmhm 
	; end
