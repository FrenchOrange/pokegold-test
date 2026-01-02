MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	table_width 4
	landmark  -8, -16, SpecialMapName
	landmark 124, 132, NuvemaTownName
	landmark 124, 124, Route1Name
	landmark 124, 116, AccumulaTownName
	landmark 124, 108, Route2Name
	landmark 124, 100, StriatonCityName
	landmark 132, 100, DreamyardName
	landmark 116, 100, Route3Name
	landmark 116,  96, WellspringCaveName
	landmark 108, 100, NacreneCityName
	landmark 100, 100, PinwheelForestName
	landmark 112, 124, Route17Name
	landmark 100, 124, Route18Name
	landmark 116, 120, P2LabName
; vanilla
	landmark   0,   0, SproutTowerName
	landmark   0,   0, Route32Name
	landmark   0,   0, RuinsOfAlphName
	landmark   0,   0, UnionCaveName
	landmark   0,   0, Route33Name
	landmark   0,   0, Route34Name
	landmark   0,   0, GoldenrodCityName
	landmark   0,   0, RadioTowerName
	landmark   0,   0, Route35Name
	landmark   0,   0, NationalParkName
	landmark   0,   0, Route36Name
	landmark   0,   0, Route37Name
	landmark   0,   0, EcruteakCityName
	landmark   0,   0, TinTowerName
	landmark   0,   0, BurnedTowerName
	landmark   0,   0, Route38Name
	landmark   0,   0, Route39Name
	landmark   0,   0, OlivineCityName
	landmark   0,   0, LighthouseName
	landmark   0,   0, Route40Name
	landmark   0,   0, WhirlIslandsName
	landmark   0,   0, Route41Name
	landmark   0,   0, CianwoodCityName
	landmark   0,   0, Route42Name
	landmark   0,   0, MtMortarName
	landmark   0,   0, MahoganyTownName
	landmark   0,   0, Route43Name
	landmark   0,   0, LakeOfRageName
	landmark   0,   0, IcePathName
	landmark   0,   0, BlackthornCityName
	landmark   0,   0, DragonsDenName
	landmark   0,   0, DarkCaveName
	landmark   0,   0, Route29Name
	landmark   0,   0, Route30Name
	landmark   0,   0, Route31Name
	landmark   0,   0, Route4Name
	landmark   0,   0, Route24Name
	landmark   0,   0, Route25Name
	landmark   0,   0, Route5Name
	landmark   0,   0, Route6Name
	landmark   0,   0, Route7Name
	landmark   0,   0, Route8Name
	landmark   0,   0, Route9Name
	landmark   0,   0, Route10Name
	landmark   0,   0, Route11Name
	landmark   0,   0, Route12Name
	landmark   0,   0, Route13Name
	landmark   0,   0, Route14Name
	landmark   0,   0, Route15Name
	landmark   0,   0, Route16Name
	landmark   0,   0, Route19Name
	landmark   0,   0, Route20Name
	landmark   0,   0, Route21Name
	landmark   0,   0, Route22Name
	landmark   0,   0, VictoryRoadName
	landmark   0,   0, Route23Name
	landmark   0,   0, IndigoPlateauName
	landmark   0,   0, Route26Name
	landmark   0,   0, Route27Name
	landmark   0,   0, TohjoFallsName
	landmark   0,   0, Route28Name
	landmark   0,   0, FastShipName
	assert_table_length NUM_LANDMARKS

; towns
NuvemaTownName:      db "NUVEMA TOWN@"
AccumulaTownName:    db "ACCUMULA<BSP>TOWN@"
StriatonCityName:    db "STRIATON<BSP>CITY@"
NacreneCityName:     db "NACRENE<BSP>CITY@"
GoldenrodCityName:   db "GOLDENROD<BSP>CITY@"
EcruteakCityName:    db "ECRUTEAK<BSP>CITY@"
OlivineCityName:     db "OLIVINE<BSP>CITY@"
CianwoodCityName:    db "CIANWOOD<BSP>CITY@"
MahoganyTownName:    db "MAHOGANY<BSP>TOWN@"
LakeOfRageName:      db "LAKE OF<BSP>RAGE@"
BlackthornCityName:  db "BLACKTHORN<BSP>CITY@"
; dungeons
DreamyardName:       db "DREAMYARD@"
WellspringCaveName:  db "WELLSPRING<BSP>CAVE@"
PinwheelForestName:  db "PINWHEEL<BSP>FOREST@"
P2LabName:           db "P2 LAB@"
SproutTowerName:     db "SPROUT<BSP>TOWER@"
RuinsOfAlphName:     db "RUINS<BSP>OF ALPH@"
UnionCaveName:       db "UNION CAVE@"
RadioTowerName:      db "RADIO TOWER@"
NationalParkName:    db "NATIONAL<BSP>PARK@"
TinTowerName:        db "TIN TOWER@"
LighthouseName:      db "LIGHTHOUSE@"
WhirlIslandsName:    db "WHIRL<BSP>ISLANDS@"
MtMortarName:        db "MT.MORTAR@"
DragonsDenName:      db "DRAGON'S<BSP>DEN@"
IcePathName:         db "ICE PATH@"
DarkCaveName:        db "DARK CAVE@"
BurnedTowerName:     db "BURNED<BSP>TOWER@"
TohjoFallsName:      db "TOHJO FALLS@"
VictoryRoadName:     db "VICTORY<BSP>ROAD@"
IndigoPlateauName:   db "INDIGO<BSP>PLATEAU@"
; routes
Route1Name:          db "ROUTE 1@"
Route2Name:          db "ROUTE 2@"
Route3Name:          db "ROUTE 3@"
Route4Name:          db "ROUTE 4@"
Route5Name:          db "ROUTE 5@"
Route6Name:          db "ROUTE 6@"
Route7Name:          db "ROUTE 7@"
Route8Name:          db "ROUTE 8@"
Route9Name:          db "ROUTE 9@"
Route10Name:         db "ROUTE 10@"
Route11Name:         db "ROUTE 11@"
Route12Name:         db "ROUTE 12@"
Route13Name:         db "ROUTE 13@"
Route14Name:         db "ROUTE 14@"
Route15Name:         db "ROUTE 15@"
Route16Name:         db "ROUTE 16@"
Route17Name:         db "ROUTE 17@"
Route18Name:         db "ROUTE 18@"
Route19Name:         db "ROUTE 19@"
Route20Name:         db "ROUTE 20@"
Route21Name:         db "ROUTE 21@"
Route22Name:         db "ROUTE 22@"
Route23Name:         db "ROUTE 23@"
Route24Name:         db "ROUTE 24@"
Route25Name:         db "ROUTE 25@"
Route26Name:         db "ROUTE 26@"
Route27Name:         db "ROUTE 27@"
Route28Name:         db "ROUTE 28@"
Route29Name:         db "ROUTE 29@"
Route30Name:         db "ROUTE 30@"
Route31Name:         db "ROUTE 31@"
Route32Name:         db "ROUTE 32@"
Route33Name:         db "ROUTE 33@"
Route34Name:         db "ROUTE 34@"
Route35Name:         db "ROUTE 35@"
Route36Name:         db "ROUTE 36@"
Route37Name:         db "ROUTE 37@"
Route38Name:         db "ROUTE 38@"
Route39Name:         db "ROUTE 39@"
Route40Name:         db "ROUTE 40@"
Route41Name:         db "ROUTE 41@"
Route42Name:         db "ROUTE 42@"
Route43Name:         db "ROUTE 43@"
; special
FastShipName:        db "FAST SHIP@"
SpecialMapName:      db "SPECIAL@"
