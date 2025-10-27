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
	const TINYMUSHROOM ; 48
	const BIG_MUSHROOM ; 49
	const PEARL        ; 4a
	const BIG_PEARL    ; 4b
	const STARDUST     ; 4c
	const STAR_PIECE   ; 4d
	const NUGGET       ; 4e
	const HEART_SCALE  ; 4f
	const MAIL         ; 50
	const CHERI_BERRY  ; 51
	const CHESTO_BERRY ; 52
	const PECHA_BERRY  ; 53
	const RAWST_BERRY  ; 54
	const ASPEAR_BERRY ; 55
	const LEPPA_BERRY  ; 56
	const ORAN_BERRY   ; 57
	const PERSIM_BERRY ; 58
	const LUM_BERRY    ; 59
	const SITRUS_BERRY ; 5a
	const BRIGHTPOWDER ; 5b
	const EXP_SHARE    ; 5c
	const QUICK_CLAW   ; 5d
	const SILVERPOWDER ; 5e
	const AMULET_COIN  ; 5f
	const CLEANSE_TAG  ; 60
	const SMOKE_BALL   ; 61
	const FOCUS_BAND   ; 62
	const EVERSTONE    ; 63
	const EVIOLITE     ; 64
	const LUCKY_EGG    ; 65
	const SCOPE_LENS   ; 66
	const LEFTOVERS    ; 67
	const SOFT_SAND    ; 68
	const HARD_STONE   ; 69
	const MIRACLE_SEED ; 6a
	const BLACKGLASSES ; 6b
	const BLACK_BELT_I ; 6c
	const MAGNET       ; 6d
	const MYSTIC_WATER ; 6e
	const SHARP_BEAK   ; 6f
	const POISON_BARB  ; 70
	const NEVERMELTICE ; 71
	const SPELL_TAG    ; 72
	const TWISTEDSPOON ; 73
	const CHARCOAL     ; 74
	const DRAGON_FANG  ; 75
	const SILK_SCARF   ; 76
	const METAL_POWDER ; 77
	const DEEPSEATOOTH ; 78
	const DEEPSEASCALE ; 79
	const ELECTIRIZER  ; 7a
	const MAGMARIZER   ; 7b
	const RAZOR_CLAW   ; 7c
	const RAZOR_FANG   ; 7d
	const PLASMA_DRIVE ; 7e
	const PLUME_FOSSIL ; 7f
	const COVER_FOSSIL ; 80
	const RELIC_COPPER ; 81
	const RELIC_SILVER ; 82
	const RELIC_GOLD   ; 83
	const RELIC_VASE   ; 84
	const RELIC_BAND   ; 85
	const RELIC_STATUE ; 86
	const RELIC_CROWN  ; 87
	const CASTELIACONE ; 88
	const RAGECANDYBAR ; 89
	const BICYCLE      ; 8a
	const ITEMFINDER   ; 8b
	const COIN_CASE    ; 8c
	const SUPER_ROD    ; 8d
	const LIGHT_STONE  ; 8e
	const DARK_STONE   ; 8f
	const DRAGON_SKULL ; 90
	const GRAM         ; 91
	const LIBERTY_PASS ; 92
	const ITEM_06      ; (TEMP) 06
	const ITEM_19      ; (TEMP) 19
	const ITEM_1E      ; (TEMP) 1e
	const ITEM_2D      ; (TEMP) 2d
	const ITEM_32      ; (TEMP) 32
	const ITEM_38      ; (TEMP) 38
	const ITEM_3A      ; (TEMP) 3a
	const ITEM_3B      ; (TEMP) 3b
	const ITEM_42      ; (TEMP) 42
	const ITEM_43      ; (TEMP) 43
	const ITEM_45      ; (TEMP) 45
	const ITEM_46      ; (TEMP) 46
	const ITEM_52      ; (TEMP) 52
	const ITEM_67      ; (TEMP) 67
	const ITEM_69      ; (TEMP) 69
	const ITEM_76      ; (TEMP) 76
	const ITEM_7F      ; (TEMP) 7f
	const ITEM_80      ; (TEMP) 80
	const ITEM_81      ; (TEMP) 81
	const ITEM_85      ; (TEMP) 85
	const ITEM_8F      ; (TEMP) 8f
	const ITEM_91      ; (TEMP) 91
	const ITEM_97      ; (TEMP) 97
	const ITEM_99      ; (TEMP) 99
	const ITEM_9A      ; (TEMP) 9a
	const ITEM_9B      ; (TEMP) 9b
	const ITEM_9C      ; (TEMP) 9c
	const ITEM_A2      ; (TEMP) a2
	const ITEM_AA      ; (TEMP) aa
	const ITEM_AB      ; (TEMP) ab
	const ITEM_AC      ; (TEMP) ac
	const ITEM_B0      ; (TEMP) b0
	const ITEM_B3      ; (TEMP) b3
	const ITEM_B4      ; (TEMP) b4
	const ITEM_B5      ; (TEMP) b5
	const ITEM_B6      ; (TEMP) b6
	const ITEM_B7      ; (TEMP) b7
	const ITEM_B8      ; (TEMP) b8
	const ITEM_B9      ; (TEMP) b9
	const ITEM_BA      ; (TEMP) ba
	const ITEM_BB      ; (TEMP) bb
	const ITEM_BC      ; (TEMP) bc
	const ITEM_BD      ; (TEMP) bd
	const ITEM_BE      ; (TEMP) be
	const ITEM_C3      ; (TEMP) c3
	const ITEM_DC      ; (TEMP) dc
	const ITEM_FA      ; (TEMP) fa
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
	add_hm CUT          ; f3
	add_hm FLY          ; f4
	add_hm SURF         ; f5
	add_hm STRENGTH     ; f6
	add_hm WATERFALL    ; f7
	add_hm DIVE         ; f8
DEF NUM_HMS EQU __tmhm_value__ - NUM_TMS - 1

DEF NUM_TM_HM EQU NUM_TMS + NUM_HMS

DEF USE_SCRIPT_VAR EQU $00
DEF ITEM_FROM_MEM  EQU $ff
