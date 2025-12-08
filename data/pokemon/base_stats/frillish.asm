	db FRILLISH ; 098

	db  55,  40,  50,  40,  65,  85
	;   hp  atk  def  spd  sat  sdf

	db WATER, GHOST ; type
	db 190 ; catch rate
	db 67 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/frillish/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups

	; tm/hm learnset
	tmhm SURF, WATERFALL, DIVE
	; end
