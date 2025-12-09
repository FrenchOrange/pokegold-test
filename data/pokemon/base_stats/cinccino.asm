	db CINCCINO ; 079

	db  75,  95,  60, 115,  65,  60
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 60 ; catch rate
	db 165 ; base exp
	db CHESTO_BERRY, NO_ITEM ; items
	db GENDER_F75 ; gender ratio

	db 15 ; step cycles to hatch

	INCBIN "gfx/pokemon/cinccino/front.dimensions"

	db GROWTH_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm 
	; end
