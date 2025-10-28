INCLUDE "data/trainers/party_pointers.asm"

Trainers:
; Trainer data structure:
; - db "NAME@", TRAINERTYPE_* constant
; - 1 to 6 Pokémon:
;    * for TRAINERTYPE_NORMAL:     db level, species
;    * for TRAINERTYPE_MOVES:      db level, species, 4 moves
;    * for TRAINERTYPE_ITEM:       db level, species, item
;    * for TRAINERTYPE_ITEM_MOVES: db level, species, item, 4 moves
; - db -1 ; end

FalknerGroup:

WhitneyGroup:

BugsyGroup:

MortyGroup:

PryceGroup:

JasmineGroup:

ChuckGroup:

ClairGroup:

Rival1Group:

PokemonProfGroup:

WillGroup:
	; WILL (1)
	db "WILL@", TRAINERTYPE_NORMAL
	db 10, RATTATA
	db -1 ; end

PKMNTrainerGroup:
	; CAL (1)
	db "CAL@", TRAINERTYPE_NORMAL
	db 10, RATTATA
	db -1 ; end

	; CAL (2)
	db "CAL@", TRAINERTYPE_NORMAL
	db 10, RATTATA
	db -1 ; end

	; CAL (3)
	db "CAL@", TRAINERTYPE_NORMAL
	db 10, RATTATA
	db -1 ; end

BrunoGroup:
	; BRUNO (1)
	db "BRUNO@", TRAINERTYPE_NORMAL
	db 10, RATTATA
	db -1 ; end

KarenGroup:
	; KAREN (1)
	db "KAREN@", TRAINERTYPE_NORMAL
	db 10, RATTATA
	db -1 ; end

KogaGroup:
	; KOGA (1)
	db "KOGA@", TRAINERTYPE_NORMAL
	db 10, RATTATA
	db -1 ; end

ChampionGroup:
	; CHAMPION (1)
	db "LANCE@", TRAINERTYPE_NORMAL
	db 10, RATTATA
	db -1 ; end

BrockGroup:

MistyGroup:

LtSurgeGroup:

ScientistGroup:

ErikaGroup:

YoungsterGroup:

SchoolboyGroup:

BirdKeeperGroup:

LassGroup:

JanineGroup:

CooltrainerMGroup:

CooltrainerFGroup:

BeautyGroup:

PokemaniacGroup:

GruntMGroup:

GentlemanGroup:

SkierGroup:

TeacherGroup:

SabrinaGroup:

BugCatcherGroup:

FisherGroup:

SwimmerMGroup:

SwimmerFGroup:

SailorGroup:

SuperNerdGroup:

Rival2Group:

GuitaristGroup:

HikerGroup:

BikerGroup:

BlaineGroup:

BurglarGroup:

FirebreatherGroup:

JugglerGroup:

BlackbeltGroup:

ExecutiveMGroup:

PsychicGroup:

PicnickerGroup:

CamperGroup:

ExecutiveFGroup:

SageGroup:

MediumGroup:

BoarderGroup:

PokefanMGroup:

KimonoGirlGroup:

TwinsGroup:

PokefanFGroup:

RedGroup:

BlueGroup:

OfficerGroup:

GruntFGroup:
