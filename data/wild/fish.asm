DEF time_group EQUS "0," ; use the nth TimeFishGroups entry

MACRO fishgroup
; chance, old rod, good rod, super rod
	db \1
	dw \2
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH
	fishgroup 50 percent + 1, .Shore
	fishgroup 50 percent + 1, .Ocean
	fishgroup 50 percent + 1, .Lake
	fishgroup 50 percent + 1, .Pond
	fishgroup 50 percent + 1, .Dratini
	fishgroup 50 percent + 1, .Qwilfish_Swarm
	fishgroup 50 percent + 1, .Remoraid_Swarm
	fishgroup 50 percent + 1, .Gyarados
	fishgroup 50 percent + 1, .Dratini_2
	fishgroup 50 percent + 1, .WhirlIslands
	fishgroup 50 percent + 1, .Qwilfish
	fishgroup 50 percent + 1, .Remoraid
	fishgroup 50 percent + 1, .Qwilfish_NoSwarm
	assert_table_length NUM_FISHGROUPS

.Shore:
	db  40 percent,     BASCULIN, 10
	db  90 percent + 1, BASCULIN, 10
	db 100 percent,     BASCULIN, 10

.Ocean:
	db  40 percent,     MAGIKARP, 40
	db  70 percent,     time_group 3
	db  90 percent + 1, MAGIKARP, 40
	db 100 percent,     MAGIKARP, 40

.Lake:
	db  40 percent,     MAGIKARP, 40
	db  70 percent,     time_group 5
	db  90 percent + 1, MAGIKARP, 40
	db 100 percent,     MAGIKARP, 40

.Pond:
	db  40 percent,     MAGIKARP, 40
	db  70 percent,     time_group 7
	db  90 percent + 1, MAGIKARP, 40
	db 100 percent,     MAGIKARP, 40

.Dratini:
	db  40 percent,     MAGIKARP, 40
	db  70 percent,     time_group 9
	db  90 percent + 1, MAGIKARP, 40
	db 100 percent,     MAGIKARP, 40

.Qwilfish_Swarm:
	db  40 percent,     MAGIKARP, 40
	db  70 percent,     time_group 11
	db  90 percent + 1, MAGIKARP, 40
	db 100 percent,     MAGIKARP, 40

.Remoraid_Swarm:
	db  40 percent,     MAGIKARP, 40
	db  70 percent,     time_group 13
	db  90 percent + 1, MAGIKARP, 40
	db 100 percent,     MAGIKARP, 40

.Gyarados:
	db  40 percent,     MAGIKARP, 40
	db  70 percent,     time_group 15
	db  90 percent + 1, MAGIKARP, 40
	db 100 percent,     MAGIKARP, 40

.Dratini_2:
	db  40 percent,     MAGIKARP, 10
	db  70 percent,     time_group 17
	db  90 percent + 1, MAGIKARP, 10
	db 100 percent,     MAGIKARP, 10

.WhirlIslands:
	db  40 percent,     MAGIKARP, 40
	db  70 percent,     time_group 19
	db  90 percent + 1, MAGIKARP, 40
	db 100 percent,     MAGIKARP, 40

.Qwilfish_NoSwarm:
.Qwilfish:
	db  40 percent,     MAGIKARP, 40
	db  70 percent,     time_group 21
	db  90 percent + 1, MAGIKARP, 40
	db 100 percent,     MAGIKARP, 40

.Remoraid:
	db  40 percent,     MAGIKARP, 40
	db  70 percent,     time_group 7
	db  90 percent + 1, MAGIKARP, 40
	db 100 percent,     MAGIKARP, 40

TimeFishGroups:
	;  day              nite
	db MAGIKARP,   20,  MAGIKARP,   20 ; 0
	db MAGIKARP,   40,  MAGIKARP,   40 ; 1
	db MAGIKARP,   20,  MAGIKARP,   20 ; 2
	db MAGIKARP,   40,  MAGIKARP,   40 ; 3
	db MAGIKARP,   20,  MAGIKARP,   20 ; 4
	db MAGIKARP,   40,  MAGIKARP,   40 ; 5
	db MAGIKARP,   20,  MAGIKARP,   20 ; 6
	db MAGIKARP,   40,  MAGIKARP,   40 ; 7
	db MAGIKARP,   20,  MAGIKARP,   20 ; 8
	db MAGIKARP,   40,  MAGIKARP,   40 ; 9
	db MAGIKARP,   20,  MAGIKARP,   20 ; 10
	db MAGIKARP,   40,  MAGIKARP,   40 ; 11
	db MAGIKARP,   20,  MAGIKARP,   20 ; 12
	db MAGIKARP,   40,  MAGIKARP,   40 ; 13
	db MAGIKARP,   20,  MAGIKARP,   20 ; 14
	db MAGIKARP,   40,  MAGIKARP,   40 ; 15
	db MAGIKARP,   10,  MAGIKARP,   10 ; 16
	db MAGIKARP,   10,  MAGIKARP,   10 ; 17
	db MAGIKARP,   20,  MAGIKARP,   20 ; 18
	db MAGIKARP,   40,  MAGIKARP,   40 ; 19
	db MAGIKARP,   20,  MAGIKARP,   20 ; 20
	db MAGIKARP,   40,  MAGIKARP,   40 ; 21
