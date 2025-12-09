	db HAPPINY ; 176

	db  110,  5,  5,  30,  15,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 130 ; catch rate
	db 110 ; base exp
	db OVAL_STONE, NO_ITEM ; items
	db GENDER_F100 ; gender ratio

	db 40 ; step cycles to hatch

	INCBIN "gfx/pokemon/happiny/front.dimensions"

	db GROWTH_FAST ; growth rate
	dn EGG_UNDISCOVERED, EGG_UNDISCOVERED ; egg groups

	; tm/hm learnset
	tmhm 
	; end
