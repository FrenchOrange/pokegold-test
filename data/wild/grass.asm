JohtoGrassWildMons:

	def_grass_wildmons ROUTE_1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 2, PATRAT
	db 2, LILLIPUP
	db 3, PATRAT
	db 3, LILLIPUP
	db 4, PATRAT
	db 4, LILLIPUP
	db 4, LILLIPUP
	; day
	db 2, PATRAT
	db 2, LILLIPUP
	db 3, PATRAT
	db 3, LILLIPUP
	db 4, PATRAT
	db 4, LILLIPUP
	db 4, LILLIPUP
	; nite
	db 2, PATRAT
	db 2, LILLIPUP
	db 3, PATRAT
	db 3, LILLIPUP
	db 4, PATRAT
	db 4, LILLIPUP
	db 4, LILLIPUP
	end_grass_wildmons

	def_grass_wildmons ROUTE_1_WEST
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 32, HERDIER
	db 33, HERDIER
	db 32, WATCHOG
	db 35, WATCHOG
	db 34, HERDIER
	db 32, SCRAGGY
	db 35, SCRAGGY
	; day
	db 32, HERDIER
	db 33, HERDIER
	db 32, WATCHOG
	db 35, WATCHOG
	db 34, HERDIER
	db 32, SCRAGGY
	db 35, SCRAGGY
	; nite
	db 32, HERDIER
	db 33, HERDIER
	db 32, WATCHOG
	db 35, WATCHOG
	db 34, HERDIER
	db 32, SCRAGGY
	db 35, SCRAGGY
	end_grass_wildmons

	db -1 ; end
