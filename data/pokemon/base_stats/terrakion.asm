	db TERRAKION ; 145

	db  91, 129,  90, 108,  72,  90
	;   hp  atk  def  spd  sat  sdf

	db ROCK, FIGHTING ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 80 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/terrakion/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_UNDISCOVERED, EGG_UNDISCOVERED ; egg groups

	; tm/hm learnset
	tmhm CUT, STRENGTH
	; end
