MACRO tilecoll
; used in data/tilesets/*_collision.asm
	db COLL_\1, COLL_\2, COLL_\3, COLL_\4
ENDM


SECTION "Tileset Data 1", ROMX

TilesetOverworldGFX::
INCBIN "gfx/tilesets/overworld.2bpp.lz"

TilesetOverworldMeta::
INCBIN "data/tilesets/overworld_metatiles.bin"

TilesetOverworldColl::
INCLUDE "data/tilesets/overworld_collision.asm"

TilesetPlateauMeta::
INCBIN "data/tilesets/plateau_metatiles.bin"

TilesetPlateauColl::
INCLUDE "data/tilesets/plateau_collision.asm"

TilesetDreamyardGFX::
INCBIN "gfx/tilesets/dreamyard.2bpp.lz"

TilesetDreamyardMeta::
INCBIN "data/tilesets/dreamyard_metatiles.bin"

TilesetDreamyardColl::
INCLUDE "data/tilesets/dreamyard_collision.asm"


SECTION "Tileset Data 2", ROMX

TilesetGateGFX::
INCBIN "gfx/tilesets/gate.2bpp.lz"

TilesetGateMeta::
INCBIN "data/tilesets/gate_metatiles.bin"

TilesetGateColl::
INCLUDE "data/tilesets/gate_collision.asm"

TilesetPokecenterGFX::
INCBIN "gfx/tilesets/pokecenter.2bpp.lz"

TilesetPokecenterMeta::
INCBIN "data/tilesets/pokecenter_metatiles.bin"

TilesetPokecenterColl::
INCLUDE "data/tilesets/pokecenter_collision.asm"

TilesetPortGFX::
INCBIN "gfx/tilesets/port.2bpp.lz"

TilesetPortMeta::
INCBIN "data/tilesets/port_metatiles.bin"

TilesetPortColl::
INCLUDE "data/tilesets/port_collision.asm"

TilesetPlayersHouseGFX::
INCBIN "gfx/tilesets/players_house.2bpp.lz"

TilesetPlayersHouseMeta::
INCBIN "data/tilesets/players_house_metatiles.bin"

TilesetPlayersHouseColl::
INCLUDE "data/tilesets/players_house_collision.asm"

TilesetMansionGFX::
INCBIN "gfx/tilesets/mansion.2bpp.lz"

TilesetMansionMeta::
INCBIN "data/tilesets/mansion_metatiles.bin"

TilesetMansionColl::
INCLUDE "data/tilesets/mansion_collision.asm"

TilesetCaveGFX::
INCBIN "gfx/tilesets/cave.2bpp.lz"

TilesetCaveMeta::
TilesetDarkCaveMeta::
INCBIN "data/tilesets/cave_metatiles.bin"

TilesetCaveColl::
TilesetDarkCaveColl::
INCLUDE "data/tilesets/cave_collision.asm"


SECTION "Tileset Data 3", ROMX

TilesetTowerGFX::
INCBIN "gfx/tilesets/tower.2bpp.lz"

TilesetTowerMeta::
INCBIN "data/tilesets/tower_metatiles.bin"

TilesetTowerColl::
INCLUDE "data/tilesets/tower_collision.asm"

TilesetClubGFX::
INCBIN "gfx/tilesets/club.2bpp.lz"

TilesetClubMeta::
INCBIN "data/tilesets/club_metatiles.bin"

TilesetClubColl::
INCLUDE "data/tilesets/club_collision.asm"

TilesetFacilityGFX::
INCBIN "gfx/tilesets/facility.2bpp.lz"

TilesetFacilityMeta::
INCBIN "data/tilesets/facility_metatiles.bin"

TilesetFacilityColl::
INCLUDE "data/tilesets/facility_collision.asm"

TilesetMartGFX::
INCBIN "gfx/tilesets/mart.2bpp.lz"

TilesetMartMeta::
INCBIN "data/tilesets/mart_metatiles.bin"

TilesetMartColl::
INCLUDE "data/tilesets/mart_collision.asm"

TilesetTrainStationGFX::
INCBIN "gfx/tilesets/train_station.2bpp.lz"

TilesetTrainStationMeta::
INCBIN "data/tilesets/train_station_metatiles.bin"

TilesetTrainStationColl::
INCLUDE "data/tilesets/train_station_collision.asm"


SECTION "Tileset Data 4", ROMX

TilesetEliteFourRoomGFX::
INCBIN "gfx/tilesets/elite_four_room.2bpp.lz"

TilesetEliteFourRoomMeta::
INCBIN "data/tilesets/elite_four_room_metatiles.bin"

TilesetEliteFourRoomColl::
INCLUDE "data/tilesets/elite_four_room_collision.asm"

TilesetGymGFX::
INCBIN "gfx/tilesets/gym.2bpp.lz"

TilesetGymMeta::
INCBIN "data/tilesets/gym_metatiles.bin"

TilesetAbyssalRuinsGFX::
INCBIN "gfx/tilesets/abyssal_ruins.2bpp.lz"

TilesetAbyssalRuinsMeta::
INCBIN "data/tilesets/abyssal_ruins_metatiles.bin"

TilesetAbyssalRuinsColl::
INCLUDE "data/tilesets/abyssal_ruins_collision.asm"

TilesetLobbyGFX::
INCBIN "gfx/tilesets/lobby.2bpp.lz"

TilesetLobbyMeta::
INCBIN "data/tilesets/lobby_metatiles.bin"

TilesetLobbyColl::
INCLUDE "data/tilesets/lobby_collision.asm"

TilesetUndergroundGFX::
INCBIN "gfx/tilesets/underground.2bpp.lz"

TilesetUndergroundMeta::
INCBIN "data/tilesets/underground_metatiles.bin"

TilesetUndergroundColl::
INCLUDE "data/tilesets/underground_collision.asm"

TilesetDarkCaveGFX::
INCBIN "gfx/tilesets/dark_cave.2bpp.lz"

TilesetForestGFX::
INCBIN "gfx/tilesets/forest.2bpp.lz"


SECTION "Tileset Data 5", ROMX

TilesetHouseGFX::
INCBIN "gfx/tilesets/house.2bpp.lz"

TilesetHouseMeta::
INCBIN "data/tilesets/house_metatiles.bin"

TilesetHouseColl::
INCLUDE "data/tilesets/house_collision.asm"

TilesetShipGFX::
INCBIN "gfx/tilesets/ship.2bpp.lz"

TilesetShipMeta::
INCBIN "data/tilesets/ship_metatiles.bin"

TilesetShipColl::
INCLUDE "data/tilesets/ship_collision.asm"

TilesetForestColl::
INCLUDE "data/tilesets/forest_collision.asm"


SECTION "Tileset Data 6", ROMX

TilesetGymColl::
INCLUDE "data/tilesets/gym_collision.asm"

TilesetPlateauGFX::
INCBIN "gfx/tilesets/plateau.2bpp.lz"

TilesetForestMeta::
INCBIN "data/tilesets/forest_metatiles.bin"
