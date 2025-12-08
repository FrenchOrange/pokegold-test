	db VULLABY ; 135

	db  70,  55,  75,  60,  45,  65
	;   hp  atk  def  spd  sat  sdf

	db DARK, FLYING ; type
	db 190 ; catch rate
	db 70 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/vullaby/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CUT, FLY
	; end
