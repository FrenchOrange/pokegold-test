SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evos_attacks_pointers.asm"

SnivyEvosAttacks:
	db EVOLVE_LEVEL, 17, SERVINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ServineEvosAttacks:
	db EVOLVE_LEVEL, 36, SERPERIOR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SerperiorEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TepigEvosAttacks:
	db EVOLVE_LEVEL, 17, PIGNITE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PigniteEvosAttacks:
	db EVOLVE_LEVEL, 36, EMBOAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

EmboarEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

OshawottEvosAttacks:
	db EVOLVE_LEVEL, 17, DEWOTT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DewottEvosAttacks:
	db EVOLVE_LEVEL, 36, SAMUROTT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SamurottEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PatratEvosAttacks:
	db EVOLVE_LEVEL, 20, WATCHOG
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

WatchogEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LillipupEvosAttacks:
	db EVOLVE_LEVEL, 16, HERDIER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HerdierEvosAttacks:
	db EVOLVE_LEVEL, 32, STOUTLAND
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

StoutlandEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PurrloinEvosAttacks:
	db EVOLVE_LEVEL, 20, LIEPARD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LiepardEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PansageEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, SIMISAGE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SimisageEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PansearEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, SIMISEAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SimisearEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PanpourEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, SIMIPOUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SimipourEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MunnaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, MUSHARNA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MusharnaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PidoveEvosAttacks:
	db EVOLVE_LEVEL, 21, TRANQUILL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TranquillEvosAttacks:
	db EVOLVE_LEVEL, 32, UNFEZANT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

UnfezantEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BlitzleEvosAttacks:
	db EVOLVE_LEVEL, 27, ZEBSTRIKA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ZebstrikaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

RoggenrolaEvosAttacks:
	db EVOLVE_LEVEL, 25, BOLDORE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BoldoreEvosAttacks:
	db EVOLVE_TRADE, -1, GIGALITH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GigalithEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

WoobatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, SWOOBAT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SwoobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DrilburEvosAttacks:
	db EVOLVE_LEVEL, 31, EXCADRILL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ExcadrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AudinoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TimburrEvosAttacks:
	db EVOLVE_LEVEL, 25, GURDURR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GurdurrEvosAttacks:
	db EVOLVE_TRADE, -1, CONKELDURR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ConkeldurrEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TympoleEvosAttacks:
	db EVOLVE_LEVEL, 25, PALPITOAD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PalpitoadEvosAttacks:
	db EVOLVE_LEVEL, 36, SEISMITOAD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SeismitoadEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ThrohEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SawkEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SewaddleEvosAttacks:
	db EVOLVE_LEVEL, 20, SWADLOON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SwadloonEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, LEAVANNY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LeavannyEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

VenipedeEvosAttacks:
	db EVOLVE_LEVEL, 22, WHIRLIPEDE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

WhirlipedeEvosAttacks:
	db EVOLVE_LEVEL, 30, SCOLIPEDE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ScolipedeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CottoneeEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, WHIMSICOTT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

WhimsicottEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PetililEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, LILLIGANT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LilligantEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BasculinEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SandileEvosAttacks:
	db EVOLVE_LEVEL, 29, KROKOROK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

KrokorokEvosAttacks:
	db EVOLVE_LEVEL, 40, KROOKODILE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

KrookodileEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DarumakaEvosAttacks:
	db EVOLVE_LEVEL, 35, DARMANITAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DarmanitanEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MaractusEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DwebbleEvosAttacks:
	db EVOLVE_LEVEL, 34, CRUSTLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CrustleEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ScraggyEvosAttacks:
	db EVOLVE_LEVEL, 39, SCRAFTY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ScraftyEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SigilyphEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

YamaskEvosAttacks:
	db EVOLVE_LEVEL, 34, COFAGRIGUS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CofagrigusEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TirtougaEvosAttacks:
	db EVOLVE_LEVEL, 37, CARRACOSTA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CarracostaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ArchenEvosAttacks:
	db EVOLVE_LEVEL, 37, ARCHEOPS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ArcheopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TrubbishEvosAttacks:
	db EVOLVE_LEVEL, 36, GARBODOR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GarbodorEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ZoruaEvosAttacks:
	db EVOLVE_LEVEL, 30, ZOROARK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ZoroarkEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MinccinoEvosAttacks:
	db EVOLVE_ITEM, SHINY_STONE, CINCCINO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CinccinoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GothitaEvosAttacks:
	db EVOLVE_LEVEL, 32, GOTHORITA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GothoritaEvosAttacks:
	db EVOLVE_LEVEL, 41, GOTHITELLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GothitelleEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SolosisEvosAttacks:
	db EVOLVE_LEVEL, 32, DUOSION
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DuosionEvosAttacks:
	db EVOLVE_LEVEL, 41, REUNICLUS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ReuniclusEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DucklettEvosAttacks:
	db EVOLVE_LEVEL, 35, SWANNA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SwannaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

VanilliteEvosAttacks:
	db EVOLVE_LEVEL, 35, VANILLISH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

VanillishEvosAttacks:
	db EVOLVE_LEVEL, 47, VANILLUXE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

VanilluxeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DeerlingEvosAttacks:
	db EVOLVE_LEVEL, 34, SAWSBUCK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SawsbuckEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

EmolgaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

KarrablastEvosAttacks:
	db EVOLVE_TRADE, -1, ESCAVALIER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

EscavalierEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FoongusEvosAttacks:
	db EVOLVE_LEVEL, 39, AMOONGUSS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AmoongussEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FrillishEvosAttacks:
	db EVOLVE_LEVEL, 40, JELLICENT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

JellicentEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AlomomolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

JoltikEvosAttacks:
	db EVOLVE_LEVEL, 36, GALVANTULA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GalvantulaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FerroseedEvosAttacks:
	db EVOLVE_LEVEL, 40, FERROTHORN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FerrothornEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

KlinkEvosAttacks:
	db EVOLVE_LEVEL, 38, KLANG
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

KlangEvosAttacks:
	db EVOLVE_LEVEL, 49, KLINKLANG
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

KlinklangEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TynamoEvosAttacks:
	db EVOLVE_LEVEL, 39, EELEKTRIK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

EelektrikEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, EELEKTROSS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

EelektrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ElgyemEvosAttacks:
	db EVOLVE_LEVEL, 42, BEHEEYEM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BeheeyemEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LitwickEvosAttacks:
	db EVOLVE_LEVEL, 41, LAMPENT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LampentEvosAttacks:
	db EVOLVE_ITEM, DUSK_STONE, CHANDELURE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ChandelureEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AxewEvosAttacks:
	db EVOLVE_LEVEL, 38, FRAXURE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FraxureEvosAttacks:
	db EVOLVE_LEVEL, 48, HAXORUS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HaxorusEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CubchooEvosAttacks:
	db EVOLVE_LEVEL, 37, BEARTIC
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BearticEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CryogonalEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ShelmetEvosAttacks:
	db EVOLVE_TRADE, -1, ACCELGOR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AccelgorEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

StunfiskEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MienfooEvosAttacks:
	db EVOLVE_LEVEL, 50, MIENSHAO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MienshaoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DruddigonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GolettEvosAttacks:
	db EVOLVE_LEVEL, 43, GOLURK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GolurkEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PawniardEvosAttacks:
	db EVOLVE_LEVEL, 52, BISHARP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BisharpEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BouffalantEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

RuffletEvosAttacks:
	db EVOLVE_LEVEL, 54, BRAVIARY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BraviaryEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

VullabyEvosAttacks:
	db EVOLVE_LEVEL, 54, MANDIBUZZ
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MandibuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HeatmorEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DurantEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DeinoEvosAttacks:
	db EVOLVE_LEVEL, 50, ZWEILOUS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ZweilousEvosAttacks:
	db EVOLVE_LEVEL, 64, HYDREIGON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HydreigonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LarvestaEvosAttacks:
	db EVOLVE_LEVEL, 59, VOLCARONA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

VolcaronaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CobalionEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TerrakionEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

VirizionEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TornadusEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ThundurusEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ReshiramEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ZekromEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LandorusEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

KyuremEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

KeldeoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MeloettaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GenesectEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

VictiniEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MagnezoneEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GlaceonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

RioluEvosAttacks:
	db EVOLVE_HAPPINESS, TR_MORNDAY, LUCARIO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LucarioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, MAGNEZONE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	; moves are not sorted by level
	db 1, TACKLE
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, TANGROWTH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db EVOLVE_TRADE, ELECTIRIZER, ELECTIVIRE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db EVOLVE_TRADE, MAGMARIZER, MAGMORTAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db EVOLVE_ITEM, LEAF_STONE, LEAFEON
	db EVOLVE_ITEM, ICE_STONE, GLACEON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db EVOLVE_ITEM, DUSK_STONE, HONCHKROW
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db EVOLVE_ITEM, DUSK_STONE, MISMAGIUS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MismagiusEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db EVOLVE_HOLDING, RAZOR_FANG, 1, GLISCOR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GliscorEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ShuppetEvosAttacks:
	db EVOLVE_LEVEL, 37, BANETTE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BanetteEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HonchkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

WeavileEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BaltoyEvosAttacks:
	db EVOLVE_LEVEL, 36, CLAYDOL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ClaydolEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db EVOLVE_HOLDING, RAZOR_CLAW, 1, WEAVILE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SableyeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MawileEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LunatoneEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SolrockEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db EVOLVE_ITEM, ICE_STONE, MAMOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MamoswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CorphishEvosAttacks:
	db EVOLVE_LEVEL, 30, CRAWDAUNT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CrawdauntEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MantykeEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, MANTINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AbsolEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ClamperlEvosAttacks:
	db EVOLVE_TRADE, DEEPSEATOOTH, HUNTAIL
	db EVOLVE_TRADE, DEEPSEASCALE, GOREBYSS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HuntailEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GorebyssEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BeldumEvosAttacks:
	db EVOLVE_LEVEL, 20, METANG
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MetangEvosAttacks:
	db EVOLVE_LEVEL, 45, METAGROSS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MetagrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LatiasEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LatiosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HappinyEvosAttacks:
	db EVOLVE_LEVEL, 30, CHANSEY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TangrowthEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ElectivireEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MagmortarEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GibleEvosAttacks:
	db EVOLVE_LEVEL, 24, GABITE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GabiteEvosAttacks:
	db EVOLVE_LEVEL, 48, GARCHOMP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GarchompEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HeatranEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CresseliaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LeafeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PoochyenaEvosAttacks:
	db EVOLVE_LEVEL, 18, MIGHTYENA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MightyenaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves
