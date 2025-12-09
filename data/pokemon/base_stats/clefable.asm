	db CLEFABLE ; 161

	db  95,  70,  73,  60,  85,  90
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 25 ; catch rate
	db 217 ; base exp
	db LEPPA_BERRY, MOON_STONE ; items
	db GENDER_F75 ; gender ratio

	db 10 ; step cycles to hatch

	INCBIN "gfx/pokemon/clefable/front.dimensions"

	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm STRENGTH
	; end
