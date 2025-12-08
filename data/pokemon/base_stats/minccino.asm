	db MINCCINO ; 078

	db  55,  50,  40,  75,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 60 ; base exp
	db CHESTO_BERRY, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/minccino/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm 
	; end
