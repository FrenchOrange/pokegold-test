; these blocks all use COLL_CUT_TREE in one quadrant
CutTreeBlockPointers:
; tileset, block list pointer
	dbw TILESET_OVERWORLD,    .overworld
	db -1 ; end

.overworld:
; facing block, replacement block, animation
	db $0b, $0a, 1 ; grass
	db $35, $4c, 0 ; tree
	db -1 ; end


; these blocks all use COLL_WHIRLPOOL in one quadrant
WhirlpoolBlockPointers:
	dbw TILESET_OVERWORLD, .johto
	db -1 ; end

.johto:
; facing block, replacement block, animation
	db $41, $41, 0
	db -1 ; end
