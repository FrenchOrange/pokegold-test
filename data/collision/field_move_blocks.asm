; these blocks all use COLL_CUT_TREE in one quadrant
CutTreeBlockPointers:
; tileset, block list pointer
	dbw TILESET_OVERWORLD,    .overworld
	dbw TILESET_PLATEAU,      .plateau
	dbw TILESET_FOREST,       .forest
	db -1 ; end

.overworld:
; facing block, replacement block, animation
	db $0b, $0a, 1 ; grass
	db $35, $4c, 0 ; tree
	db -1 ; end

.plateau
; facing block, replacement block, animation
	db $04, $46, 1 ; grass
	db $13, $12, 1 ; grass
	db -1 ; end

.forest:
; facing block, replacement block, animation
	db $01, $04, 1 ; grass
	db $06, $14, 1 ; grass
	db $07, $15, 1 ; grass
	db $12, $04, 1 ; grass
	db $13, $04, 1 ; grass
	db $16, $04, 1 ; grass
	db $17, $04, 1 ; grass
	db $25, $21, 1 ; grass
	db $28, $2c, 0 ; tree
	db -1 ; end


; these blocks all use COLL_WHIRLPOOL in one quadrant
WhirlpoolBlockPointers:
	dbw TILESET_OVERWORLD, .johto
	db -1 ; end

.johto:
; facing block, replacement block, animation
	db $41, $41, 0
	db -1 ; end
