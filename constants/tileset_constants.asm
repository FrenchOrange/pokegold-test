; Tilesets indexes (see data/tilesets.asm)
	const_def
	const TILESET_OVERWORLD            ; 00
	const TILESET_PLAYERS_HOUSE        ; 01
	const TILESET_HOUSE                ; 02
	const TILESET_MANSION              ; 03
	const TILESET_PORT                 ; 04
	const TILESET_LOBBY                ; 05
	const TILESET_PLATEAU              ; 06
	const TILESET_GYM                  ; 07
	const TILESET_POKECENTER           ; 08
	const TILESET_GATE                 ; 09
	const TILESET_FOREST               ; 0a
	const TILESET_DREAMYARD            ; 0b
	const TILESET_TOWER                ; 0c
	const TILESET_CAVE                 ; 0d
	const TILESET_MART                 ; 0e
	const TILESET_SHIP                 ; 0f
	const TILESET_CLUB                 ; 10
	const TILESET_FACILITY             ; 11
	const TILESET_UNDERGROUND          ; 12
	const TILESET_ELITE_FOUR_ROOM      ; 13
	const TILESET_TRAIN_STATION        ; 14
	const TILESET_ABYSSAL_RUINS        ; 15
	const TILESET_DARK_CAVE            ; 16
DEF NUM_TILESETS EQU const_value

; wTileset struct size
DEF TILESET_LENGTH EQU 15

; bg palette values (see gfx/tilesets/*_palette_map.asm)
; TilesetBGPalette indexes (see gfx/tilesets/bg_tiles.pal)
	const_def
	const PAL_BG_GRAY   ; 0
	const PAL_BG_RED    ; 1
	const PAL_BG_GREEN  ; 2
	const PAL_BG_WATER  ; 3
	const PAL_BG_YELLOW ; 4
	const PAL_BG_BROWN  ; 5
	const PAL_BG_ROOF   ; 6
	const PAL_BG_TEXT   ; 7
