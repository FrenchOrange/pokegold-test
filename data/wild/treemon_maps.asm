MACRO treemon_map
	map_id \1
	db \2 ; treemon set
ENDM

TreeMonMaps:
	db -1

RockMonMaps:
	treemon_map CIANWOOD_CITY,             TREEMON_SET_ROCK
	treemon_map ROUTE_40,                  TREEMON_SET_ROCK
	treemon_map DARK_CAVE_VIOLET_ENTRANCE, TREEMON_SET_ROCK
	treemon_map SLOWPOKE_WELL_B1F,         TREEMON_SET_ROCK
	db -1
