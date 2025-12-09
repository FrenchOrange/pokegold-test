	db SMOOCHUM ; 181

	db  45,  30,  15,  65,  85,  65
	;   hp  atk  def  spd  sat  sdf

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 61 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio

	db 25 ; step cycles to hatch

	INCBIN "gfx/pokemon/smoochum/front.dimensions"

	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_UNDISCOVERED, EGG_UNDISCOVERED ; egg groups

	; tm/hm learnset
	tmhm 
	; end
