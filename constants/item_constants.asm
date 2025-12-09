; item ids
; indexes for:
; - ItemNames (see data/items/names.asm)
; - ItemDescriptions (see data/items/descriptions.asm)
; - ItemAttributes (see data/items/attributes.asm)
; - ItemEffects (see engine/items/item_effects.asm)
	const_def
	const NO_ITEM      ; 00
	const MASTER_BALL  ; 01
	const ULTRA_BALL   ; 02
	const GREAT_BALL   ; 03
	const POKE_BALL    ; 04
	const NET_BALL     ; 05
	const DIVE_BALL    ; 06
	const NEST_BALL    ; 07
	const REPEAT_BALL  ; 08
	const TIMER_BALL   ; 09
	const LUXURY_BALL  ; 0a
	const DUSK_BALL    ; 0b
	const HEAL_BALL    ; 0c
	const QUICK_BALL   ; 0d
	const ANTIDOTE     ; 0e
	const BURN_HEAL    ; 0f
	const ICE_HEAL     ; 10
	const AWAKENING    ; 11
	const PARLYZ_HEAL  ; 12
	const FULL_RESTORE ; 13
	const MAX_POTION   ; 14
	const HYPER_POTION ; 15
	const SUPER_POTION ; 16
	const POTION       ; 17
	const FULL_HEAL    ; 18
	const REVIVE       ; 19
	const MAX_REVIVE   ; 1a
	const FRESH_WATER  ; 1b
	const SODA_POP     ; 1c
	const LEMONADE     ; 1d
	const MOOMOO_MILK  ; 1e
	const ENERGYPOWDER ; 1f
	const ENERGY_ROOT  ; 20
	const HEAL_POWDER  ; 21
	const REVIVAL_HERB ; 22
	const ETHER        ; 23
	const MAX_ETHER    ; 24
	const ELIXIR       ; 25
	const MAX_ELIXIR   ; 26
	const BERRY_JUICE  ; 27
	const HP_UP        ; 28
	const PROTEIN      ; 29
	const IRON         ; 2a
	const CARBOS       ; 2b
	const CALCIUM      ; 2c
	const RARE_CANDY   ; 2d
	const PP_UP        ; 2e
	const GUARD_SPEC   ; 2f
	const DIRE_HIT     ; 30
	const X_ATTACK     ; 31
	const X_DEFEND     ; 32
	const X_SPEED      ; 33
	const X_ACCURACY   ; 34
	const X_SPECIAL    ; 35
	const POKE_DOLL    ; 36
	const RED_SHARD    ; 37
	const BLUE_SHARD   ; 38
	const YELLOW_SHARD ; 39
	const GREEN_SHARD  ; 3a
	const ESCAPE_ROPE  ; 3b
	const REPEL        ; 3c
	const SUPER_REPEL  ; 3d
	const MAX_REPEL    ; 3e
	const SUN_STONE    ; 3f
	const MOON_STONE   ; 40
	const FIRE_STONE   ; 41
	const THUNDERSTONE ; 42
	const WATER_STONE  ; 43
	const LEAF_STONE   ; 44
	const SHINY_STONE  ; 45
	const DUSK_STONE   ; 46
	const ICE_STONE    ; 47
	const OVAL_STONE   ; 48
	const TINYMUSHROOM ; 49
	const BIG_MUSHROOM ; 4a
	const PEARL        ; 4b
	const BIG_PEARL    ; 4b
	const STARDUST     ; 4d
	const STAR_PIECE   ; 4e
	const NUGGET       ; 4f
	const HEART_SCALE  ; 50
	const MAIL         ; 51
	const CHERI_BERRY  ; 52
	const CHESTO_BERRY ; 53
	const PECHA_BERRY  ; 54
	const RAWST_BERRY  ; 55
	const ASPEAR_BERRY ; 56
	const LEPPA_BERRY  ; 57
	const ORAN_BERRY   ; 58
	const PERSIM_BERRY ; 59
	const LUM_BERRY    ; 5a
	const SITRUS_BERRY ; 5b
	const BRIGHTPOWDER ; 5c
	const EXP_SHARE    ; 5d
	const QUICK_CLAW   ; 5e
	const SILVERPOWDER ; 5f
	const AMULET_COIN  ; 60
	const CLEANSE_TAG  ; 61
	const SMOKE_BALL   ; 62
	const FOCUS_BAND   ; 63
	const EVERSTONE    ; 64
	const EVIOLITE     ; 65
	const LUCKY_EGG    ; 66
	const SCOPE_LENS   ; 67
	const METAL_COAT   ; 68
	const LEFTOVERS    ; 69
	const SOFT_SAND    ; 6a
	const HARD_STONE   ; 6b
	const MIRACLE_SEED ; 6c
	const BLACKGLASSES ; 6d
	const BLACK_BELT_I ; 6e
	const MAGNET       ; 6f
	const MYSTIC_WATER ; 70
	const SHARP_BEAK   ; 71
	const POISON_BARB  ; 72
	const NEVERMELTICE ; 73
	const SPELL_TAG    ; 74
	const TWISTEDSPOON ; 75
	const CHARCOAL     ; 76
	const DRAGON_FANG  ; 77
	const SILK_SCARF   ; 78
	const METAL_POWDER ; 79
	const DEEPSEATOOTH ; 7a
	const DEEPSEASCALE ; 7b
	const ELECTIRIZER  ; 7c
	const MAGMARIZER   ; 7d
	const RAZOR_CLAW   ; 7e
	const RAZOR_FANG   ; 7f
	const PLASMA_DRIVE ; 80
	const PLUME_FOSSIL ; 81
	const COVER_FOSSIL ; 82
	const RELIC_COPPER ; 83
	const RELIC_SILVER ; 84
	const RELIC_GOLD   ; 85
	const RELIC_VASE   ; 86
	const RELIC_BAND   ; 87
	const RELIC_STATUE ; 88
	const RELIC_CROWN  ; 89
	const CASTELIACONE ; 8a
	const RAGECANDYBAR ; 8b
	const BICYCLE      ; 8c
	const ITEMFINDER   ; 8d
	const COIN_CASE    ; 8e
	const SUPER_ROD    ; 8f
	const LIGHT_STONE  ; 90
	const DARK_STONE   ; 91
	const DRAGON_SKULL ; 92
	const GRAM         ; 93
	const LIBERTY_PASS ; 94
	const ITEM_95      ; 95
	const ITEM_96      ; 96
	const ITEM_97      ; 97
	const ITEM_98      ; 98
	const ITEM_99      ; 99
DEF NUM_ITEMS EQU const_value - 1

DEF __tmhm_value__ = 1

MACRO add_tmnum
	DEF \1_TMNUM EQU __tmhm_value__
	DEF __tmhm_value__ += 1
ENDM

MACRO add_tm
; Defines three constants:
; - TM_\1: the item id, starting at $bf
; - \1_TMNUM: the learnable TM/HM flag, starting at 1
; - TM##_MOVE: alias for the move id, equal to the value of \1
	const TM_\1
	DEF TM{02d:__tmhm_value__}_MOVE = \1
	add_tmnum \1
ENDM

; see data/moves/tmhm_moves.asm for moves
DEF TM01 EQU const_value
	add_tm DYNAMICPUNCH ; (TEMP) bf
	add_tm HEADBUTT     ; (TEMP) c0
	add_tm CURSE        ; (TEMP) c1
	add_tm ROLLOUT      ; (TEMP) c2
	add_tm ROAR         ; (TEMP) c4
	add_tm TOXIC        ; (TEMP) c5
	add_tm ZAP_CANNON   ; (TEMP) c6
	add_tm ROCK_SMASH   ; (TEMP) c7
	add_tm PSYCH_UP     ; (TEMP) c8
	add_tm HIDDEN_POWER ; (TEMP) c9
	add_tm SUNNY_DAY    ; (TEMP) ca
	add_tm SWEET_SCENT  ; (TEMP) cb
	add_tm SNORE        ; (TEMP) cc
	add_tm BLIZZARD     ; (TEMP) cd
	add_tm HYPER_BEAM   ; (TEMP) ce
	add_tm ICY_WIND     ; (TEMP) cf
	add_tm PROTECT      ; (TEMP) d0
	add_tm RAIN_DANCE   ; (TEMP) d1
	add_tm GIGA_DRAIN   ; (TEMP) d2
	add_tm ENDURE       ; (TEMP) d3
	add_tm FRUSTRATION  ; (TEMP) d4
	add_tm SOLARBEAM    ; (TEMP) d5
	add_tm IRON_TAIL    ; (TEMP) d6
	add_tm DRAGONBREATH ; (TEMP) d7
	add_tm THUNDER      ; (TEMP) d8
	add_tm EARTHQUAKE   ; (TEMP) d9
	add_tm RETURN       ; (TEMP) da
	add_tm DIG          ; (TEMP) db
	add_tm PSYCHIC_M    ; (TEMP) dd
	add_tm SHADOW_BALL  ; (TEMP) de
	add_tm MUD_SLAP     ; (TEMP) df
	add_tm DOUBLE_TEAM  ; (TEMP) e0
	add_tm ICE_PUNCH    ; (TEMP) e1
	add_tm SWAGGER      ; (TEMP) e2
	add_tm SLEEP_TALK   ; (TEMP) e3
	add_tm SLUDGE_BOMB  ; (TEMP) e4
	add_tm SANDSTORM    ; (TEMP) e5
	add_tm FIRE_BLAST   ; (TEMP) e6
	add_tm SWIFT        ; (TEMP) e7
	add_tm DEFENSE_CURL ; (TEMP) e8
	add_tm THUNDERPUNCH ; (TEMP) e9
	add_tm DREAM_EATER  ; (TEMP) ea
	add_tm DETECT       ; (TEMP) eb
	add_tm REST         ; (TEMP) ec
	add_tm ATTRACT      ; (TEMP) ed
	add_tm THIEF        ; (TEMP) ee
	add_tm STEEL_WING   ; (TEMP) ef
	add_tm FIRE_PUNCH   ; (TEMP) f0
	add_tm FURY_CUTTER  ; (TEMP) f1
	add_tm NIGHTMARE    ; (TEMP) f2
	add_tm FLASH        ; (TEMP) f7
DEF NUM_TMS EQU __tmhm_value__ - 1

MACRO add_hm
; Defines three constants:
; - HM_\1: the item id, starting at $f3
; - \1_TMNUM: the learnable TM/HM flag, starting at 51
; - HM##_MOVE: alias for the move id, equal to the value of \1
	const HM_\1
	DEF HM_VALUE = __tmhm_value__ - NUM_TMS
	DEF HM{02d:HM_VALUE}_MOVE = \1
	add_tmnum \1
ENDM

DEF HM01 EQU const_value
	add_hm CUT          ; f9
	add_hm FLY          ; fa
	add_hm SURF         ; fb
	add_hm STRENGTH     ; fc
	add_hm WATERFALL    ; fd
	add_hm DIVE         ; fe
DEF NUM_HMS EQU __tmhm_value__ - NUM_TMS - 1

DEF NUM_TM_HM EQU NUM_TMS + NUM_HMS

DEF USE_SCRIPT_VAR EQU $00
DEF ITEM_FROM_MEM  EQU $ff
