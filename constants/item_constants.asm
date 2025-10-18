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
	const BRIGHTPOWDER ; (TEMP) 03
	const GREAT_BALL   ; 04
	const POKE_BALL    ; 05
	const TOWN_MAP     ; (TEMP) 06
	const BICYCLE      ; (TEMP) 07
	const MOON_STONE   ; (TEMP) 08
	const ANTIDOTE     ; (TEMP) 09
	const BURN_HEAL    ; (TEMP) 0a
	const ICE_HEAL     ; (TEMP) 0b
	const AWAKENING    ; (TEMP) 0c
	const PARLYZ_HEAL  ; (TEMP) 0d
	const FULL_RESTORE ; (TEMP) 0e
	const MAX_POTION   ; (TEMP) 0f
	const HYPER_POTION ; (TEMP) 10
	const SUPER_POTION ; (TEMP) 11
	const POTION       ; (TEMP) 12
	const ESCAPE_ROPE  ; (TEMP) 13
	const REPEL        ; (TEMP) 14
	const MAX_ELIXIR   ; (TEMP) 15
	const FIRE_STONE   ; (TEMP) 16
	const THUNDERSTONE ; (TEMP) 17
	const WATER_STONE  ; (TEMP) 18
	const ITEM_19      ; (TEMP) 19
	const HP_UP        ; (TEMP) 1a
	const PROTEIN      ; (TEMP) 1b
	const IRON         ; (TEMP) 1c
	const CARBOS       ; (TEMP) 1d
	const LUCKY_PUNCH  ; (TEMP) 1e
	const CALCIUM      ; (TEMP) 1f
	const RARE_CANDY   ; (TEMP) 20
	const X_ACCURACY   ; (TEMP) 21
	const LEAF_STONE   ; (TEMP) 22
	const METAL_POWDER ; (TEMP) 23
	const NUGGET       ; (TEMP) 24
	const POKE_DOLL    ; (TEMP) 25
	const FULL_HEAL    ; (TEMP) 26
	const REVIVE       ; (TEMP) 27
	const MAX_REVIVE   ; (TEMP) 28
	const GUARD_SPEC   ; (TEMP) 29
	const SUPER_REPEL  ; (TEMP) 2a
	const MAX_REPEL    ; (TEMP) 2b
	const DIRE_HIT     ; (TEMP) 2c
	const ITEM_2D      ; (TEMP) 2d
	const FRESH_WATER  ; (TEMP) 2e
	const SODA_POP     ; (TEMP) 2f
	const LEMONADE     ; (TEMP) 30
	const X_ATTACK     ; (TEMP) 31
	const ITEM_32      ; (TEMP) 32
	const X_DEFEND     ; (TEMP) 33
	const X_SPEED      ; (TEMP) 34
	const X_SPECIAL    ; (TEMP) 35
	const COIN_CASE    ; (TEMP) 36
	const ITEMFINDER   ; (TEMP) 37
	const POKE_FLUTE   ; (TEMP) 38
	const EXP_SHARE    ; (TEMP) 39
	const OLD_ROD      ; (TEMP) 3a
	const GOOD_ROD     ; (TEMP) 3b
	const SILVER_LEAF  ; (TEMP) 3c
	const SUPER_ROD    ; (TEMP) 3d
	const PP_UP        ; (TEMP) 3e
	const ETHER        ; (TEMP) 3f
	const MAX_ETHER    ; (TEMP) 40
	const ELIXIR       ; (TEMP) 41
	const RED_SCALE    ; (TEMP) 42
	const SECRETPOTION ; (TEMP) 43
	const S_S_TICKET   ; (TEMP) 44
	const MYSTERY_EGG  ; (TEMP) 45
	const ITEM_46      ; (TEMP) 46
	const SILVER_WING  ; (TEMP) 47
	const MOOMOO_MILK  ; (TEMP) 48
	const QUICK_CLAW   ; (TEMP) 49
	const PECHA_BERRY  ; (TEMP) 4a
	const GOLD_LEAF    ; (TEMP) 4b
	const SOFT_SAND    ; (TEMP) 4c
	const SHARP_BEAK   ; (TEMP) 4d
	const CHERI_BERRY  ; (TEMP) 4e
	const ASPEAR_BERRY ; (TEMP) 4f
	const RAWST_BERRY  ; (TEMP) 50
	const POISON_BARB  ; (TEMP) 51
	const KINGS_ROCK   ; (TEMP) 52
	const PERSIM_BERRY ; (TEMP) 53
	const CHESTO_BERRY ; (TEMP) 54
	const RED_APRICORN ; (TEMP) 55
	const TINYMUSHROOM ; (TEMP) 56
	const BIG_MUSHROOM ; (TEMP) 57
	const SILVERPOWDER ; (TEMP) 58
	const BLU_APRICORN ; (TEMP) 59
	const ITEM_5A      ; (TEMP) 5a
	const AMULET_COIN  ; (TEMP) 5b
	const YLW_APRICORN ; (TEMP) 5c
	const GRN_APRICORN ; (TEMP) 5d
	const CLEANSE_TAG  ; (TEMP) 5e
	const MYSTIC_WATER ; (TEMP) 5f
	const TWISTEDSPOON ; (TEMP) 60
	const WHT_APRICORN ; (TEMP) 61
	const BLACK_BELT_I ; (TEMP) 62
	const BLK_APRICORN ; (TEMP) 63
	const ITEM_64      ; (TEMP) 64
	const PNK_APRICORN ; (TEMP) 65
	const BLACKGLASSES ; (TEMP) 66
	const SLOWPOKETAIL ; (TEMP) 67
	const SILK_SCARF   ; (TEMP) 68
	const STICK        ; (TEMP) 69
	const SMOKE_BALL   ; (TEMP) 6a
	const NEVERMELTICE ; (TEMP) 6b
	const MAGNET       ; (TEMP) 6c
	const LUM_BERRY    ; (TEMP) 6d
	const PEARL        ; (TEMP) 6e
	const BIG_PEARL    ; (TEMP) 6f
	const EVERSTONE    ; (TEMP) 70
	const SPELL_TAG    ; (TEMP) 71
	const RAGECANDYBAR ; (TEMP) 72
	const ITEM_73      ; (TEMP) 73
	const ITEM_74      ; (TEMP) 74
	const MIRACLE_SEED ; (TEMP) 75
	const THICK_CLUB   ; (TEMP) 76
	const FOCUS_BAND   ; (TEMP) 77
	const ITEM_78      ; (TEMP) 78
	const ENERGYPOWDER ; (TEMP) 79
	const ENERGY_ROOT  ; (TEMP) 7a
	const HEAL_POWDER  ; (TEMP) 7b
	const REVIVAL_HERB ; (TEMP) 7c
	const HARD_STONE   ; (TEMP) 7d
	const LUCKY_EGG    ; (TEMP) 7e
	const CARD_KEY     ; (TEMP) 7f
	const MACHINE_PART ; (TEMP) 80
	const ITEM_81      ; (TEMP) 81
	const LOST_ITEM    ; (TEMP) 82
	const STARDUST     ; (TEMP) 83
	const STAR_PIECE   ; (TEMP) 84
	const BASEMENT_KEY ; (TEMP) 85
	const PASS         ; (TEMP) 86
	const ITEM_87      ; (TEMP) 87
	const ITEM_88      ; (TEMP) 88
	const ITEM_89      ; (TEMP) 89
	const CHARCOAL     ; (TEMP) 8a
	const BERRY_JUICE  ; (TEMP) 8b
	const SCOPE_LENS   ; (TEMP) 8c
	const ITEM_8D      ; (TEMP) 8d
	const ITEM_8E      ; (TEMP) 8e
	const METAL_COAT   ; (TEMP) 8f
	const DRAGON_FANG  ; (TEMP) 90
	const ITEM_91      ; (TEMP) 91
	const LEFTOVERS    ; (TEMP) 92
	const ITEM_93      ; (TEMP) 93
	const ITEM_94      ; (TEMP) 94
	const ITEM_95      ; (TEMP) 95
	const LEPPA_BERRY  ; (TEMP) 96
	const DRAGON_SCALE ; (TEMP) 97
	const BERSERK_GENE ; (TEMP) 98
	const ITEM_99      ; (TEMP) 99
	const ITEM_9A      ; (TEMP) 9a
	const ITEM_9B      ; (TEMP) 9b
	const SACRED_ASH   ; (TEMP) 9c
	const HEAVY_BALL   ; (TEMP) 9d
	const MAIL         ; (TEMP) 9e
	const LEVEL_BALL   ; (TEMP) 9f
	const LURE_BALL    ; (TEMP) a0
	const QUICK_BALL   ; a1
	const ITEM_A2      ; (TEMP) a2
	const LIGHT_BALL   ; (TEMP) a3
	const FRIEND_BALL  ; (TEMP) a4
	const MOON_BALL    ; (TEMP) a5
	const LOVE_BALL    ; (TEMP) a6
	const NORMAL_BOX   ; (TEMP) a7
	const GORGEOUS_BOX ; (TEMP) a8
	const SUN_STONE    ; (TEMP) a9
	const POLKADOT_BOW ; (TEMP) aa
	const ITEM_AB      ; (TEMP) ab
	const UP_GRADE     ; (TEMP) ac
	const ORAN_BERRY   ; (TEMP) ad
	const SITRUS_BERRY ; (TEMP) ae
	const SQUIRTBOTTLE ; (TEMP) af
	const ITEM_B0      ; (TEMP) b0
	const PARK_BALL    ; (TEMP) b1
	const RAINBOW_WING ; (TEMP) b2
	const ITEM_B3      ; (TEMP) b3
	const BRICK_PIECE  ; (TEMP) b4
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
	add_hm CUT          ; (TEMP) f3
	add_hm FLY          ; (TEMP) f4
	add_hm SURF         ; (TEMP) f5
	add_hm STRENGTH     ; (TEMP) f6
	add_hm FLASH        ; (TEMP) f7
	add_hm WHIRLPOOL    ; (TEMP) f8
	add_hm WATERFALL    ; (TEMP) f9
DEF NUM_HMS EQU __tmhm_value__ - NUM_TMS - 1

DEF NUM_TM_HM EQU NUM_TMS + NUM_HMS

	const ITEM_FA       ; (TEMP) fa

DEF USE_SCRIPT_VAR EQU $00
DEF ITEM_FROM_MEM  EQU $ff

; leftovers from red
DEF SAFARI_BALL    EQU $08 ; MOON_STONE
DEF MOON_STONE_RED EQU $0a ; BURN_HEAL
DEF FULL_HEAL_RED  EQU $34 ; X_SPEED
