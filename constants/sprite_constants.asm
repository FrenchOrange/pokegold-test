; sprite ids
; OverworldSprites indexes (see data/sprites/sprites.asm)
	const_def
	const SPRITE_NONE              ; 00
	const SPRITE_CHRIS             ; (TEMP) 01
	const SPRITE_CHRIS_BIKE        ; (TEMP) 02
	const SPRITE_GAMEBOY_KID       ; (TEMP) 03
	const SPRITE_CHEREN            ; (TEMP) 04
	const SPRITE_JUNIPER           ; (TEMP) 05
	const SPRITE_GHETSIS           ; (TEMP) 06
	const SPRITE_N                 ; (TEMP) 07
	const SPRITE_TRIAD             ; (TEMP) 08
	const SPRITE_ELDER             ; (TEMP) 09
	const SPRITE_CHILI             ; (TEMP) 0a
	const SPRITE_CRESS             ; (TEMP) 0b
	const SPRITE_MOM               ; (TEMP) 0c
	const SPRITE_LOOKER            ; (TEMP) 0d
	const SPRITE_CYNTHIA           ; (TEMP) 0e
	const SPRITE_BIANCA            ; (TEMP) 0f
	const SPRITE_CEDRIC            ; (TEMP) 10
	const SPRITE_SHAUNTAL          ; (TEMP) 11
	const SPRITE_CILAN             ; (TEMP) 12
	const SPRITE_LENORA            ; (TEMP) 13
	const SPRITE_BURGH             ; (TEMP) 14
	const SPRITE_ELESA             ; (TEMP) 15
	const SPRITE_CLAY              ; (TEMP) 16
	const SPRITE_SKYLA             ; (TEMP) 17
	const SPRITE_BRYCEN            ; (TEMP) 18
	const SPRITE_IRIS              ; (TEMP) 19
	const SPRITE_DRAYDEN           ; (TEMP) 1a
	const SPRITE_GRIMSLEY          ; (TEMP) 1b
	const SPRITE_MARSHAL           ; (TEMP) 1c
	const SPRITE_CAITLIN           ; (TEMP) 1d
	const SPRITE_ALDER             ; (TEMP) 1e
	const SPRITE_INGO              ; (TEMP) 1f
	const SPRITE_EMMET             ; (TEMP) 20
	const SPRITE_ANTHEA            ; (TEMP) 21
	const SPRITE_CONCORDIA         ; (TEMP) 22
	const SPRITE_COOLTRAINER_M     ; 23
	const SPRITE_COOLTRAINER_F     ; 24
	const SPRITE_LITTLE_BOY        ; 25
	const SPRITE_LITTLE_GIRL       ; 26
	const SPRITE_YOUNGSTER         ; 27
	const SPRITE_LASS              ; 28
	const SPRITE_GIRL              ; 29
	const SPRITE_SUPER_NERD        ; 2a
	const SPRITE_ROCKER            ; 2b
	const SPRITE_MIDDLE_M          ; 2c
	const SPRITE_MIDDLE_F          ; 2d
	const SPRITE_GRAMPS            ; 2e
	const SPRITE_GRANNY            ; 2f
	const SPRITE_SWIMMER           ; 30
	const SPRITE_OFFICE_MAN        ; 31
	const SPRITE_OFFICE_WOMAN      ; 32
	const SPRITE_GRUNT             ; (TEMP) 33
	const SPRITE_GRUNT_GIRL        ; (TEMP) 34
	const SPRITE_NURSE             ; 35
	const SPRITE_LINK_RECEPTIONIST ; 36
	const SPRITE_CLERK             ; 37
	const SPRITE_FISHER            ; 38
	const SPRITE_SCIENTIST         ; 39
	const SPRITE_SAGE              ; 3a
	const SPRITE_GENTLEMAN         ; 3b
	const SPRITE_OFFICER           ; 3c
	const SPRITE_GYM_GUIDE         ; 3d
	const SPRITE_HIKER             ; 3e
	const SPRITE_BIKER             ; 3f
	const SPRITE_GUARD             ; 40
	const SPRITE_MONSTER           ; (TEMP) 41
	const SPRITE_FAIRY             ; (TEMP) 42
	const SPRITE_BIRD              ; (TEMP) 43
	const SPRITE_DRAGON            ; (TEMP) 44
	const SPRITE_SURF              ; 45
	const SPRITE_POKE_BALL         ; 46
	const SPRITE_BOOK              ; 47
	const SPRITE_PAPER             ; (TEMP) 48
	const SPRITE_COOK              ; 49
	const SPRITE_BOULDER           ; 4a
	const SPRITE_GOLD_TROPHY       ; (TEMP) 4b
	const SPRITE_SILVER_TROPHY     ; (TEMP) 4c
	const SPRITE_CHRIS_RUN         ; (TEMP) 4d
DEF NUM_OVERWORLD_SPRITES EQU const_value - 1

; SpriteMons indexes (see data/sprites/sprite_mons.asm)
	const_next $80
DEF SPRITE_POKEMON EQU const_value
	const SPRITE_UNOWN ; 80
	const SPRITE_GEODUDE ; 81
	const SPRITE_GROWLITHE ; 82
	const SPRITE_WEEDLE ; 83
	const SPRITE_SHELLDER ; 84
	const SPRITE_ODDISH ; 85
	const SPRITE_GENGAR ; 86
	const SPRITE_ZUBAT ; 87
	const SPRITE_MAGIKARP ; 88
	const SPRITE_SQUIRTLE ; 89
	const SPRITE_TOGEPI ; 8a
	const SPRITE_BUTTERFREE ; 8b
	const SPRITE_DIGLETT ; 8c
	const SPRITE_POLIWAG ; 8d
	const SPRITE_PIKACHU ; 8e
	const SPRITE_CLEFAIRY ; 8f
	const SPRITE_CHARMANDER ; 90
	const SPRITE_JYNX ; 91
	const SPRITE_STARMIE ; 92
	const SPRITE_BULBASAUR ; 93
	const SPRITE_JIGGLYPUFF ; 94
	const SPRITE_GRIMER ; 95
	const SPRITE_EKANS ; 96
	const SPRITE_PARAS ; 97
	const SPRITE_TENTACOOL ; 98
	const SPRITE_TAUROS ; 99
	const SPRITE_MACHOP ; 9a
	const SPRITE_VOLTORB ; 9b
	const SPRITE_LAPRAS ; 9c
	const SPRITE_RHYDON ; 9d
	const SPRITE_MOLTRES ; 9e
	const SPRITE_SNORLAX ; 9f
	const SPRITE_GYARADOS ; a0
	const SPRITE_LUGIA ; a1
	const SPRITE_HO_OH ; a2
DEF NUM_POKEMON_SPRITES EQU const_value - SPRITE_POKEMON

; special GetMonSprite values (see engine/overworld/overworld.asm)
	const_next $e0
	const SPRITE_DAY_CARE_MON_1 ; e0
	const SPRITE_DAY_CARE_MON_2 ; e1

; wVariableSprites indexes (see wram.asm)
	const_next $f0
DEF SPRITE_VARS EQU const_value
	const SPRITE_CONSOLE ; f0
	const SPRITE_DOLL_1 ; f1
	const SPRITE_DOLL_2 ; f2
	const SPRITE_BIG_DOLL ; f3
	const SPRITE_FUCHSIA_GYM_1 ; f4
	const SPRITE_FUCHSIA_GYM_2 ; f5
	const SPRITE_FUCHSIA_GYM_3 ; f6
	const SPRITE_FUCHSIA_GYM_4 ; f7
	const SPRITE_COPYCAT ; f8
	const SPRITE_JANINE_IMPERSONATOR ; f9
