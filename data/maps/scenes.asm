MACRO scene_var
; map, variable
	map_id \1
	dw \2
ENDM

MapScenes::
	scene_var POKECENTER_2F,                               wPokecenter2FSceneID
	scene_var TRADE_CENTER,                                wTradeCenterSceneID
	scene_var COLOSSEUM,                                   wColosseumSceneID
	scene_var PLAYERS_HOUSE_2F,                            wPlayersHouse2FSceneID
	scene_var PLAYERS_HOUSE_1F,                            wPlayersHouse1FSceneID
	scene_var NUVEMA_TOWN,                                 wNuvemaTownSceneID
	scene_var BIANCAS_HOUSE_1F,                            wBiancasHouse1FSceneID
	scene_var JUNIPERS_LAB,                                wJunipersLabSceneID
	scene_var P2_LAB,                                      wP2LabSceneID
	scene_var ACCUMULA_TOWN,                               wAccumulaTownSceneID
	scene_var ACCUMULA_POKECENTER_1F,                      AccumulaPokecenter1FSceneID
	scene_var STRIATON_SIX_TEAM_CONDO_1F,                  wStriatonSixTeamCondo1FSceneID
	scene_var STRIATON_NICKNAME_CONDO_1F,                  wStriatonNicknameCondo1FSceneID
	scene_var STRIATON_FENNEL_CONDO_1F,                    wStriatonFennelCondo1FSceneID
	scene_var STRIATON_FENNEL_CONDO_2F,                    wStriatonFennelCondo2FSceneID
	scene_var DREAMYARD_OUTSIDE,                           wDreamyardOutsideSceneID
	scene_var NACRENE_CITY,                                wNacreneCitySceneID
	scene_var NACRENE_MUSEUM,                              wNacreneMuseumSceneID
	scene_var PINWHEEL_FOREST,                             wPinwheelForestSceneID
; unused onward
	scene_var ROUTE_24,                                    wRoute24SceneID
	scene_var ROUTE_25,                                    wRoute25SceneID
	scene_var ROUTE_26,                                    wRoute26SceneID
	scene_var ROUTE_27,                                    wRoute27SceneID
	scene_var ROUTE_28,                                    wRoute28SceneID
	scene_var ROUTE_29,                                    wRoute29SceneID
	scene_var ROUTE_30,                                    wRoute30SceneID
	scene_var ROUTE_31,                                    wRoute31SceneID
	scene_var ROUTE_32,                                    wRoute32SceneID
	scene_var ROUTE_33,                                    wRoute33SceneID
	scene_var ROUTE_34,                                    wRoute34SceneID
	scene_var ROUTE_35,                                    wRoute35SceneID
	scene_var TRAINER_HOUSE_B1F,                           wTrainerHouseB1FSceneID
	scene_var INDIGO_PLATEAU_POKECENTER_1F,                wIndigoPlateauPokecenter1FSceneID
	scene_var WILLS_ROOM,                                  wWillsRoomSceneID
	scene_var KOGAS_ROOM,                                  wKogasRoomSceneID
	scene_var BRUNOS_ROOM,                                 wBrunosRoomSceneID
	scene_var KARENS_ROOM,                                 wKarensRoomSceneID
	scene_var LANCES_ROOM,                                 wLancesRoomSceneID
	scene_var HALL_OF_FAME,                                wHallOfFameSceneID
	scene_var GOLDENROD_GYM,                               wGoldenrodGymSceneID
	scene_var GOLDENROD_MAGNET_TRAIN_STATION,              wGoldenrodMagnetTrainStationSceneID
	scene_var OLIVINE_CITY,                                wOlivineCitySceneID
	scene_var MAHOGANY_TOWN,                               wMahoganyTownSceneID
	scene_var SPROUT_TOWER_3F,                             wSproutTower3FSceneID
	scene_var BURNED_TOWER_1F,                             wBurnedTower1FSceneID
	scene_var BURNED_TOWER_B1F,                            wBurnedTowerB1FSceneID
	scene_var RADIO_TOWER_4F,                              wRadioTower4FSceneID
	scene_var RADIO_TOWER_5F,                              wRadioTower5FSceneID
	scene_var RUINS_OF_ALPH_OUTSIDE,                       wRuinsOfAlphOutsideSceneID
	scene_var RUINS_OF_ALPH_INNER_CHAMBER,                 wRuinsOfAlphInnerChamberSceneID
	scene_var SPROUT_TOWER_2F,                             wSproutTower2fSceneID
	scene_var TEAM_ROCKET_BASE_B1F,                        wTeamRocketBaseB1FSceneID
	scene_var TEAM_ROCKET_BASE_B2F,                        wTeamRocketBaseB2FSceneID
	scene_var TEAM_ROCKET_BASE_B3F,                        wTeamRocketBaseB3FSceneID
	scene_var VICTORY_ROAD,                                wVictoryRoadSceneID
	scene_var GOLDENROD_CITY,                              wGoldenrodCitySceneID
	scene_var OLIVINE_PORT,                                wOlivinePortSceneID
	scene_var FAST_SHIP_1F,                                wFastShip1FSceneID
	scene_var FAST_SHIP_B1F,                               wFastShipB1FSceneID
	db -1 ; end
