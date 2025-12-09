	db CHANSEY ; 177

	db 250,  05,  05,  50,  35, 105
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 255 ; base exp
	db OVAL_STONE, NO_ITEM ; items
	db GENDER_F100 ; gender ratio

	db 40 ; step cycles to hatch

	INCBIN "gfx/pokemon/chansey/front.dimensions"

	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm STRENGTH
	; end
