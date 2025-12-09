	db CRYOGONAL ; 121

	db  70,  50,  30, 105,  95, 135
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 25 ; catch rate
	db 180 ; base exp
	db NO_ITEM, NEVERMELTICE ; items
	db GENDER_UNKNOWN ; gender ratio

	db 25 ; step cycles to hatch

	INCBIN "gfx/pokemon/cryogonal/front.dimensions"

	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm 
	; end
