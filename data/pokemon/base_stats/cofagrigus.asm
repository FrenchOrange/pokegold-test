	db COFAGRIGUS ; 069

	db  58,  50, 145,  30,  95, 105
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 90 ; catch rate
	db 169 ; base exp
	db NO_ITEM, SPELL_TAG ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/cofagrigus/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_AMORPHOUS ; egg groups

	; tm/hm learnset
	tmhm 
	; end
