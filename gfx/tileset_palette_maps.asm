MACRO tilepal
; used in gfx/tilesets/*_palette_map.asm
; vram bank, pals
	DEF x = OAM_BANK\1
	rept (_NARG - 1) / 2
		dn (x | PAL_BG_\3), (x | PAL_BG_\2)
		shift 2
	endr
ENDM

TilesetOverworldPalMap:
TilesetPlayersHousePalMap:
TilesetHousePalMap:
TilesetMansionPalMap:
TilesetPortPalMap:
TilesetLobbyPalMap:
TilesetPlateauPalMap:
TilesetGymPalMap:
TilesetPokecenterPalMap:
TilesetGatePalMap:
TilesetForestPalMap:
TilesetClubPalMap:
TilesetFacilityPalMap:
TilesetMartPalMap:
TilesetGameCornerPalMap:
TilesetEliteFourRoomPalMap:
TilesetTraditionalHousePalMap:
TilesetTowerPalMap:
TilesetCavePalMap:
TilesetDarkCavePalMap:
TilesetRuinsOfAlphPalMap:
TilesetTrainStationPalMap:
TilesetUndergroundPalMap:
TilesetChampionsRoomPalMap:
TilesetShipPalMap:
TilesetIcePathPalMap:
INCLUDE "gfx/tilesets/dummy_palette_map.asm"

MapGroupPalettes:
; entries correspond to MAPGROUP_* constants
rept NUM_MAP_GROUPS
	db PAL_BG_ROOF
endr
