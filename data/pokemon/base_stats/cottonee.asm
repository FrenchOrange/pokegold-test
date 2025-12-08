	db COTTONEE ; 052

	db  40,  27,  60,  66,  37,  50
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 190 ; catch rate
	db 56 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/cottonee/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GRASS, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm 
	; end
