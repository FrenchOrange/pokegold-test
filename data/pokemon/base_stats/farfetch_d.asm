	db FARFETCH_D ; 171

	db  52,  65,  55,  60,  58,  62
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 132 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio

	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/farfetch_d/front.dimensions"

	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm CUT, FLY
	; end
