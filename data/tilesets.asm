MACRO tileset
	dba \1GFX, \1Meta, \1Coll
	dw \1Anim
	dw NULL
	dw \1PalMap
ENDM

; Associated data:
; - The *GFX, *Meta, and *Coll are defined in gfx/tilesets.asm
; - The *PalMap are defined in gfx/tileset_palette_maps.asm
; - The *Anim are defined in engine/tilesets/tileset_anims.asm

Tilesets::
; entries correspond to TILESET_* constants (see constants/tileset_constants.asm)
	table_width TILESET_LENGTH
	tileset TilesetOverworld
	tileset TilesetPlayersHouse
	tileset TilesetHouse
	tileset TilesetMansion
	tileset TilesetPort
	tileset TilesetLobby
	tileset TilesetPlateau
	tileset TilesetGym
	tileset TilesetPokecenter
	tileset TilesetGate
	tileset TilesetForest
	tileset TilesetDreamyard
	tileset TilesetTower
	tileset TilesetCave
	tileset TilesetMart
	tileset TilesetShip
	tileset TilesetClub
	tileset TilesetFacility
	tileset TilesetUnderground
	tileset TilesetEliteFourRoom
	tileset TilesetTrainStation
	tileset TilesetAbyssalRuins
	tileset TilesetDarkCave
	assert_table_length NUM_TILESETS
