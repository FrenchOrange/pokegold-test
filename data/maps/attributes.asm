MACRO map_attributes
;\1: map name
;\2: map id
;\3: border block
;\4: connections: combo of NORTH, SOUTH, WEST, and/or EAST, or 0 for none
	DEF CURRENT_MAP_WIDTH = \2_WIDTH
	DEF CURRENT_MAP_HEIGHT = \2_HEIGHT
\1_MapAttributes::
	db \3
	db CURRENT_MAP_HEIGHT, CURRENT_MAP_WIDTH
	db BANK(\1_Blocks)
	dw \1_Blocks
	db BANK(\1_MapScripts) ; aka BANK(\1_MapEvents)
	dw \1_MapScripts
	dw \1_MapEvents
	db \4
ENDM

; Connections go in order: north, south, west, east
MACRO connection
;\1: direction
;\2: map name
;\3: map id
;\4: offset of the target map relative to the current map
;    (x offset for east/west, y offset for north/south)

	; LEGACY: Support for old connection macro
	if _NARG == 6
		connection \1, \2, \3, (\4) - (\5)
	else

		; Calculate tile offsets for source (current) and target maps
		DEF _src = 0
		DEF _tgt = (\4) + 3
		if _tgt < 0
			DEF _src = -_tgt
			DEF _tgt = 0
		endc

		if !STRCMP("\1", "north")
			DEF _blk = \3_WIDTH * (\3_HEIGHT - 3) + _src
			DEF _map = _tgt
			DEF _win = (\3_WIDTH + 6) * \3_HEIGHT + 1
			DEF _y = \3_HEIGHT * 2 - 1
			DEF _x = (\4) * -2
			DEF _len = CURRENT_MAP_WIDTH + 3 - (\4)
			if _len > \3_WIDTH
				DEF _len = \3_WIDTH
			endc

		elif !STRCMP("\1", "south")
			DEF _blk = _src
			DEF _map = (CURRENT_MAP_WIDTH + 6) * (CURRENT_MAP_HEIGHT + 3) + _tgt
			DEF _win = \3_WIDTH + 7
			DEF _y = 0
			DEF _x = (\4) * -2
			DEF _len = CURRENT_MAP_WIDTH + 3 - (\4)
			if _len > \3_WIDTH
				DEF _len = \3_WIDTH
			endc

		elif !STRCMP("\1", "west")
			DEF _blk = (\3_WIDTH * _src) + \3_WIDTH - 3
			DEF _map = (CURRENT_MAP_WIDTH + 6) * _tgt
			DEF _win = (\3_WIDTH + 6) * 2 - 6
			DEF _y = (\4) * -2
			DEF _x = \3_WIDTH * 2 - 1
			DEF _len = CURRENT_MAP_HEIGHT + 3 - (\4)
			if _len > \3_HEIGHT
				DEF _len = \3_HEIGHT
			endc

		elif !STRCMP("\1", "east")
			DEF _blk = (\3_WIDTH * _src)
			DEF _map = (CURRENT_MAP_WIDTH + 6) * _tgt + CURRENT_MAP_WIDTH + 3
			DEF _win = \3_WIDTH + 7
			DEF _y = (\4) * -2
			DEF _x = 0
			DEF _len = CURRENT_MAP_HEIGHT + 3 - (\4)
			if _len > \3_HEIGHT
				DEF _len = \3_HEIGHT
			endc

		else
			fail "Invalid direction for 'connection'."
		endc

		map_id \3
		dw \2_Blocks + _blk
		dw wOverworldMapBlocks + _map
		db _len - _src
		db \3_WIDTH
		db _y, _x
		dw wOverworldMapBlocks + _win

	endc
ENDM


	map_attributes NuvemaTown, NUVEMA_TOWN, $43, NORTH | WEST
	connection north, Route1, ROUTE_1, 0
	connection west, Route1West, ROUTE_1_WEST, -9

	map_attributes AccumulaTown, ACCUMULA_TOWN, $0f, NORTH | SOUTH | WEST
	connection north, Route2East, ROUTE_2_EAST, 0
	connection south, Route1, ROUTE_1, -1
	connection west, Route2, ROUTE_2, -9

	map_attributes StriatonCity, STRIATON_CITY, $0f, SOUTH | WEST
	connection south, Route2East, ROUTE_2_EAST, 6
	connection west, Route3, ROUTE_3, -9

	map_attributes NacreneCity, NACRENE_CITY, $0f, WEST | EAST
	connection west, PinwheelForestOutside, PINWHEEL_FOREST_OUTSIDE, 0
	connection east, Route3, ROUTE_3, -9

	map_attributes CianwoodCity, CIANWOOD_CITY, $0f, 0

	map_attributes GoldenrodCity, GOLDENROD_CITY, $0f, 0

	map_attributes OlivineCity, OLIVINE_CITY, $0f, 0

	map_attributes EcruteakCity, ECRUTEAK_CITY, $0f, 0

	map_attributes MahoganyTown, MAHOGANY_TOWN, $0f, 0

	map_attributes LakeOfRage, LAKE_OF_RAGE, $0f, 0

	map_attributes BlackthornCity, BLACKTHORN_CITY, $0f, 0

	map_attributes Route1, ROUTE_1, $0f, NORTH | SOUTH | WEST
	connection north, AccumulaTown, ACCUMULA_TOWN, 1
	connection south, NuvemaTown, NUVEMA_TOWN, 0
	connection west, Route1West, ROUTE_1_WEST, 9

	map_attributes Route1West, ROUTE_1_WEST, $43, WEST | EAST
	connection west, Route17, ROUTE_17, -1
	connection east, Route1, ROUTE_1, -9

	map_attributes Route17, ROUTE_17, $43, WEST | EAST
	connection west, Route18, ROUTE_18, 0
	connection east, Route1West, ROUTE_1_WEST, 1

	map_attributes Route18, ROUTE_18, $43, EAST
	connection east, Route17, ROUTE_17, 0

	map_attributes Route2, ROUTE_2, $0f, EAST
	connection east, Route2East, ROUTE_2_EAST, 0

	map_attributes Route2East, ROUTE_2_EAST, $0f, NORTH | SOUTH | WEST
	connection north, StriatonCity, STRIATON_CITY, -6
	connection south, AccumulaTown, ACCUMULA_TOWN, 0
	connection west, Route2, ROUTE_2, 0

	map_attributes Route3, ROUTE_3, $0f, WEST | EAST
	connection west, NacreneCity, NACRENE_CITY, 9
	connection east, StriatonCity, STRIATON_CITY, 9

	map_attributes PinwheelForestOutside, PINWHEEL_FOREST_OUTSIDE, $0f, SOUTH | EAST
	connection south, PinwheelForestOutsideSouth, PINWHEEL_FOREST_OUTSIDE_SOUTH, 0
	connection east, NacreneCity, NACRENE_CITY, 0

	map_attributes PinwheelForestOutsideSouth, PINWHEEL_FOREST_OUTSIDE_SOUTH, $0f, NORTH
	connection north, PinwheelForestOutside, PINWHEEL_FOREST_OUTSIDE, 0

	map_attributes Route26, ROUTE_26, $0f, 0

	map_attributes Route27, ROUTE_27, $0f, 0

	map_attributes Route28, ROUTE_28, $0f, 0

	map_attributes Route29, ROUTE_29, $0f, 0

	map_attributes Route30, ROUTE_30, $0f, 0

	map_attributes Route31, ROUTE_31, $0f, 0

	map_attributes Route32, ROUTE_32, $0f, 0

	map_attributes Route33, ROUTE_33, $0f, 0

	map_attributes Route34, ROUTE_34, $0f, 0

	map_attributes Route35, ROUTE_35, $0f, 0

	map_attributes Route36, ROUTE_36, $0f, 0

	map_attributes Route37, ROUTE_37, $0f, 0

	map_attributes Route38, ROUTE_38, $0f, 0

	map_attributes Route39, ROUTE_39, $0f, 0

	map_attributes Route40, ROUTE_40, $0f, 0

	map_attributes Route41, ROUTE_41, $0f, 0

	map_attributes Route42, ROUTE_42, $0f, 0

	map_attributes Route43, ROUTE_43, $0f, 0

	map_attributes Route44, ROUTE_44, $0f, 0

	map_attributes Route22, ROUTE_22, $0f, 0

	map_attributes Route21, ROUTE_21, $0f, 0

	map_attributes Route20, ROUTE_20, $0f, 0

	map_attributes Route19, ROUTE_19, $0f, 0

	map_attributes Route16, ROUTE_16, $0f, 0

	map_attributes Route7, ROUTE_7, $0f, 0

	map_attributes Route15, ROUTE_15, $0f, 0

	map_attributes Route14, ROUTE_14, $0f, 0

	map_attributes Route13, ROUTE_13, $0f, 0

	map_attributes Route12, ROUTE_12, $0f, 0

	map_attributes Route11, ROUTE_11, $0f, 0

	map_attributes Route6, ROUTE_6, $0f, 0

	map_attributes Route5, ROUTE_5, $0f, 0

	map_attributes Route9, ROUTE_9, $0f, 0

	map_attributes Route24, ROUTE_24, $0f, 0

	map_attributes Route25, ROUTE_25, $0f, 0

	map_attributes Route4, ROUTE_4, $0f, 0

	map_attributes Route8, ROUTE_8, $0f, 0

	map_attributes Route10North, ROUTE_10_NORTH, $0f, 0

	map_attributes Route10South, ROUTE_10_SOUTH, $0f, 0

	map_attributes Route23, ROUTE_23, $0f, 0

	map_attributes PlayersHouse1F, PLAYERS_HOUSE_1F, $00, 0
	map_attributes PlayersHouse2F, PLAYERS_HOUSE_2F, $00, 0
	map_attributes BiancasHouse1F, BIANCAS_HOUSE_1F, $00, 0
	map_attributes BiancasHouse2F, BIANCAS_HOUSE_2F, $00, 0
	map_attributes CherensHouse1F, CHERENS_HOUSE_1F, $00, 0
	map_attributes CherensHouse2F, CHERENS_HOUSE_2F, $00, 0
	map_attributes JunipersLab, JUNIPERS_LAB, $00, 0
	map_attributes AccumulaPokecenter1F, ACCUMULA_POKECENTER_1F, $00, 0
	map_attributes AccumulaRPSCondo1F, ACCUMULA_RPS_CONDO_1F, $00, 0
	map_attributes AccumulaRPSCondo2F, ACCUMULA_RPS_CONDO_2F, $00, 0
	map_attributes AccumulaGreatBagCondo1F, ACCUMULA_GREAT_BAG_CONDO_1F, $00, 0
	map_attributes AccumulaGreatBagCondo2F, ACCUMULA_GREAT_BAG_CONDO_2F, $00, 0
	map_attributes AccumulaNewlywedsCondo1F, ACCUMULA_NEWLYWEDS_CONDO_1F, $00, 0
	map_attributes AccumulaNewlywedsCondo2F, ACCUMULA_NEWLYWEDS_CONDO_2F, $00, 0
	map_attributes AccumulaSiblingsHouse, ACCUMULA_SIBLINGS_HOUSE, $00, 0
	map_attributes VioletGym, VIOLET_GYM, $00, 0
	map_attributes TrainersSchool, TRAINERS_SCHOOL, $00, 0
	map_attributes StriatonNicknameCondo1F, STRIATON_NICKNAME_CONDO_1F, $00, 0
	map_attributes StriatonNicknameCondo2F, STRIATON_NICKNAME_CONDO_2F, $00, 0
	map_attributes StriatonPokecenter1F, STRIATON_POKECENTER_1F, $00, 0
	map_attributes StriatonSixTeamCondo1F, STRIATON_SIX_TEAM_CONDO_1F, $00, 0
	map_attributes StriatonSixTeamCondo2F, STRIATON_SIX_TEAM_CONDO_2F, $00, 0
	map_attributes StriatonFennelCondo1F, STRIATON_FENNEL_CONDO_1F, $00, 0
	map_attributes StriatonFennelCondo2F, STRIATON_FENNEL_CONDO_2F, $00, 0
	map_attributes Route2Gate, ROUTE_2_GATE, $00, 0
	map_attributes Route3Gate, ROUTE_2_GATE, $00, 0
	map_attributes Route17Gate, ROUTE_17_GATE, $00, 0
	map_attributes DreamyardOutside, DREAMYARD_OUTSIDE, $1f, 0
	map_attributes PinwheelForest, PINWHEEL_FOREST, $02, 0
	map_attributes SlowpokeWellB2F, SLOWPOKE_WELL_B2F, $09, 0
	map_attributes SproutTower1F, SPROUT_TOWER_1F, $00, 0
	map_attributes SproutTower2F, SPROUT_TOWER_2F, $00, 0
	map_attributes SproutTower3F, SPROUT_TOWER_3F, $00, 0
	map_attributes TinTower1F, TIN_TOWER_1F, $00, 0
	map_attributes TinTower2F, TIN_TOWER_2F, $00, 0
	map_attributes TinTower3F, TIN_TOWER_3F, $00, 0
	map_attributes TinTower4F, TIN_TOWER_4F, $00, 0
	map_attributes TinTower5F, TIN_TOWER_5F, $00, 0
	map_attributes TinTower6F, TIN_TOWER_6F, $00, 0
	map_attributes TinTower7F, TIN_TOWER_7F, $00, 0
	map_attributes TinTower8F, TIN_TOWER_8F, $00, 0
	map_attributes TinTower9F, TIN_TOWER_9F, $00, 0
	map_attributes BurnedTower1F, BURNED_TOWER_1F, $00, 0
	map_attributes BurnedTowerB1F, BURNED_TOWER_B1F, $09, 0
	map_attributes NationalPark, NATIONAL_PARK, $00, 0
	map_attributes NationalParkBugContest, NATIONAL_PARK_BUG_CONTEST, $00, 0
	map_attributes RadioTower1F, RADIO_TOWER_1F, $00, 0
	map_attributes RadioTower2F, RADIO_TOWER_2F, $00, 0
	map_attributes RadioTower3F, RADIO_TOWER_3F, $00, 0
	map_attributes RadioTower4F, RADIO_TOWER_4F, $00, 0
	map_attributes RadioTower5F, RADIO_TOWER_5F, $00, 0
	map_attributes RuinsOfAlphOutside, RUINS_OF_ALPH_OUTSIDE, $05, 0
	map_attributes RuinsOfAlphHoOhChamber, RUINS_OF_ALPH_HO_OH_CHAMBER, $00, 0
	map_attributes RuinsOfAlphKabutoChamber, RUINS_OF_ALPH_KABUTO_CHAMBER, $00, 0
	map_attributes RuinsOfAlphOmanyteChamber, RUINS_OF_ALPH_OMANYTE_CHAMBER, $00, 0
	map_attributes RuinsOfAlphAerodactylChamber, RUINS_OF_ALPH_AERODACTYL_CHAMBER, $00, 0
	map_attributes RuinsOfAlphInnerChamber, RUINS_OF_ALPH_INNER_CHAMBER, $00, 0
	map_attributes RuinsOfAlphResearchCenter, RUINS_OF_ALPH_RESEARCH_CENTER, $00, 0
	map_attributes UnionCave1F, UNION_CAVE_1F, $09, 0
	map_attributes UnionCaveB1F, UNION_CAVE_B1F, $09, 0
	map_attributes UnionCaveB2F, UNION_CAVE_B2F, $09, 0
	map_attributes OlivineLighthouse1F, OLIVINE_LIGHTHOUSE_1F, $00, 0
	map_attributes OlivineLighthouse2F, OLIVINE_LIGHTHOUSE_2F, $00, 0
	map_attributes OlivineLighthouse3F, OLIVINE_LIGHTHOUSE_3F, $00, 0
	map_attributes OlivineLighthouse4F, OLIVINE_LIGHTHOUSE_4F, $00, 0
	map_attributes OlivineLighthouse5F, OLIVINE_LIGHTHOUSE_5F, $00, 0
	map_attributes OlivineLighthouse6F, OLIVINE_LIGHTHOUSE_6F, $00, 0
	map_attributes TeamRocketBaseB1F, TEAM_ROCKET_BASE_B1F, $00, 0
	map_attributes TeamRocketBaseB2F, TEAM_ROCKET_BASE_B2F, $00, 0
	map_attributes TeamRocketBaseB3F, TEAM_ROCKET_BASE_B3F, $00, 0
	map_attributes GoldenrodUnderground, GOLDENROD_UNDERGROUND, $00, 0
	map_attributes GoldenrodUndergroundSwitchRoomEntrances, GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, $00, 0
	map_attributes GoldenrodDeptStoreB1F, GOLDENROD_DEPT_STORE_B1F, $00, 0
	map_attributes GoldenrodUndergroundWarehouse, GOLDENROD_UNDERGROUND_WAREHOUSE, $00, 0
	map_attributes MountMortar1FOutside, MOUNT_MORTAR_1F_OUTSIDE, $09, 0
	map_attributes MountMortar1FInside, MOUNT_MORTAR_1F_INSIDE, $09, 0
	map_attributes MountMortar2FInside, MOUNT_MORTAR_2F_INSIDE, $09, 0
	map_attributes MountMortarB1F, MOUNT_MORTAR_B1F, $09, 0
	map_attributes IcePath1F, ICE_PATH_1F, $09, 0
	map_attributes IcePathB1F, ICE_PATH_B1F, $19, 0
	map_attributes IcePathB2FMahoganySide, ICE_PATH_B2F_MAHOGANY_SIDE, $19, 0
	map_attributes IcePathB2FBlackthornSide, ICE_PATH_B2F_BLACKTHORN_SIDE, $19, 0
	map_attributes IcePathB3F, ICE_PATH_B3F, $19, 0
	map_attributes WhirlIslandNW, WHIRL_ISLAND_NW, $09, 0
	map_attributes WhirlIslandNE, WHIRL_ISLAND_NE, $09, 0
	map_attributes WhirlIslandSW, WHIRL_ISLAND_SW, $09, 0
	map_attributes WhirlIslandCave, WHIRL_ISLAND_CAVE, $09, 0
	map_attributes WhirlIslandSE, WHIRL_ISLAND_SE, $0f, 0
	map_attributes WhirlIslandB1F, WHIRL_ISLAND_B1F, $09, 0
	map_attributes WhirlIslandB2F, WHIRL_ISLAND_B2F, $2e, 0
	map_attributes WhirlIslandLugiaChamber, WHIRL_ISLAND_LUGIA_CHAMBER, $0f, 0
	map_attributes DarkCaveVioletEntrance, DARK_CAVE_VIOLET_ENTRANCE, $09, 0
	map_attributes DarkCaveBlackthornEntrance, DARK_CAVE_BLACKTHORN_ENTRANCE, $09, 0
	map_attributes TohjoFalls, TOHJO_FALLS, $09, 0
	map_attributes OlivinePokecenter1F, OLIVINE_POKECENTER_1F, $00, 0
	map_attributes OlivineGym, OLIVINE_GYM, $00, 0
	map_attributes OlivineTimsHouse, OLIVINE_TIMS_HOUSE, $00, 0
	map_attributes OlivineHouseBeta, OLIVINE_HOUSE_BETA, $00, 0
	map_attributes OlivinePunishmentSpeechHouse, OLIVINE_PUNISHMENT_SPEECH_HOUSE, $00, 0
	map_attributes OlivineGoodRodHouse, OLIVINE_GOOD_ROD_HOUSE, $00, 0
	map_attributes OlivineCafe, OLIVINE_CAFE, $00, 0
	map_attributes MahoganyRedGyaradosSpeechHouse, MAHOGANY_RED_GYARADOS_SPEECH_HOUSE, $00, 0
	map_attributes MahoganyGym, MAHOGANY_GYM, $00, 0
	map_attributes MahoganyPokecenter1F, MAHOGANY_POKECENTER_1F, $00, 0
	map_attributes VictoryRoad, VICTORY_ROAD, $1d, 0
	map_attributes EcruteakTinTowerEntrance, ECRUTEAK_TIN_TOWER_ENTRANCE, $00, 0
	map_attributes EcruteakTinTowerBackEntrance, ECRUTEAK_TIN_TOWER_BACK_ENTRANCE, $00, 0
	map_attributes EcruteakPokecenter1F, ECRUTEAK_POKECENTER_1F, $00, 0
	map_attributes EcruteakLugiaSpeechHouse, ECRUTEAK_LUGIA_SPEECH_HOUSE, $00, 0
	map_attributes DanceTheater, DANCE_THEATER, $00, 0
	map_attributes EcruteakGym, ECRUTEAK_GYM, $00, 0
	map_attributes EcruteakItemfinderHouse, ECRUTEAK_ITEMFINDER_HOUSE, $00, 0
	map_attributes BlackthornGym1F, BLACKTHORN_GYM_1F, $00, 0
	map_attributes BlackthornGym2F, BLACKTHORN_GYM_2F, $00, 0
	map_attributes BlackthornDragonSpeechHouse, BLACKTHORN_DRAGON_SPEECH_HOUSE, $00, 0
	map_attributes BlackthornEmysHouse, BLACKTHORN_EMYS_HOUSE, $00, 0
	map_attributes BlackthornPokecenter1F, BLACKTHORN_POKECENTER_1F, $00, 0
	map_attributes MoveDeletersHouse, MOVE_DELETERS_HOUSE, $00, 0
	map_attributes NacrenePokecenter1F, NACRENE_POKECENTER_1F, $00, 0
	map_attributes CharcoalKiln, CHARCOAL_KILN, $00, 0
	map_attributes KurtsHouse, KURTS_HOUSE, $00, 0
	map_attributes AzaleaGym, AZALEA_GYM, $00, 0
	map_attributes LakeOfRageHiddenPowerHouse, LAKE_OF_RAGE_HIDDEN_POWER_HOUSE, $00, 0
	map_attributes LakeOfRageMagikarpHouse, LAKE_OF_RAGE_MAGIKARP_HOUSE, $00, 0
	map_attributes GoldenrodGym, GOLDENROD_GYM, $00, 0
	map_attributes GoldenrodBikeShop, GOLDENROD_BIKE_SHOP, $00, 0
	map_attributes GoldenrodHappinessRater, GOLDENROD_HAPPINESS_RATER, $00, 0
	map_attributes GoldenrodMagnetTrainStation, GOLDENROD_MAGNET_TRAIN_STATION, $00, 0
	map_attributes GoldenrodFlowerShop, GOLDENROD_FLOWER_SHOP, $00, 0
	map_attributes GoldenrodPokecenter1F, GOLDENROD_POKECENTER_1F, $00, 0
	map_attributes GoldenrodPPSpeechHouse, GOLDENROD_PP_SPEECH_HOUSE, $00, 0
	map_attributes GoldenrodNameRater, GOLDENROD_NAME_RATER, $00, 0
	map_attributes GoldenrodDeptStore1F, GOLDENROD_DEPT_STORE_1F, $00, 0
	map_attributes GoldenrodDeptStore2F, GOLDENROD_DEPT_STORE_2F, $00, 0
	map_attributes GoldenrodDeptStore3F, GOLDENROD_DEPT_STORE_3F, $00, 0
	map_attributes GoldenrodDeptStore4F, GOLDENROD_DEPT_STORE_4F, $00, 0
	map_attributes GoldenrodDeptStore5F, GOLDENROD_DEPT_STORE_5F, $00, 0
	map_attributes GoldenrodDeptStore6F, GOLDENROD_DEPT_STORE_6F, $00, 0
	map_attributes GoldenrodDeptStoreElevator, GOLDENROD_DEPT_STORE_ELEVATOR, $00, 0
	map_attributes GoldenrodGameCorner, GOLDENROD_GAME_CORNER, $00, 0
	map_attributes DayCare, DAY_CARE, $00, 0
	map_attributes OlivinePort, OLIVINE_PORT, $0a, 0
	map_attributes FastShip1F, FAST_SHIP_1F, $00, 0
	map_attributes FastShipCabins_NNW_NNE_NE, FAST_SHIP_CABINS_NNW_NNE_NE, $00, 0
	map_attributes FastShipCabins_SW_SSW_NW, FAST_SHIP_CABINS_SW_SSW_NW, $00, 0
	map_attributes FastShipCabins_SE_SSE_CaptainsCabin, FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN, $00, 0
	map_attributes FastShipB1F, FAST_SHIP_B1F, $00, 0
	map_attributes OlivinePortPassage, OLIVINE_PORT_PASSAGE, $00, 0
	map_attributes TinTowerRoof, TIN_TOWER_ROOF, $00, 0
	map_attributes IndigoPlateauPokecenter1F, INDIGO_PLATEAU_POKECENTER_1F, $00, 0
	map_attributes WillsRoom, WILLS_ROOM, $00, 0
	map_attributes KogasRoom, KOGAS_ROOM, $00, 0
	map_attributes BrunosRoom, BRUNOS_ROOM, $00, 0
	map_attributes KarensRoom, KARENS_ROOM, $00, 0
	map_attributes LancesRoom, LANCES_ROOM, $00, 0
	map_attributes HallOfFame, HALL_OF_FAME, $00, 0
	map_attributes Pokecenter2F, POKECENTER_2F, $00, 0
	map_attributes TradeCenter, TRADE_CENTER, $00, 0
	map_attributes Colosseum, COLOSSEUM, $00, 0
	map_attributes ManiasHouse, MANIAS_HOUSE, $00, 0
	map_attributes CianwoodGym, CIANWOOD_GYM, $00, 0
	map_attributes CianwoodPokecenter1F, CIANWOOD_POKECENTER_1F, $00, 0
	map_attributes CianwoodPharmacy, CIANWOOD_PHARMACY, $00, 0
	map_attributes CianwoodPhotoStudio, CIANWOOD_PHOTO_STUDIO, $00, 0
	map_attributes CianwoodLugiaSpeechHouse, CIANWOOD_LUGIA_SPEECH_HOUSE, $00, 0
	map_attributes TrainerHouse1F, TRAINER_HOUSE_1F, $00, 0
	map_attributes TrainerHouseB1F, TRAINER_HOUSE_B1F, $00, 0
	map_attributes SilphCo1F, SILPH_CO_1F, $00, 0
