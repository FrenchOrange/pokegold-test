MACRO overworld_sprite
; pointer, length, type, palette
	dw \1
	db \2 tiles, BANK(\1), \3, \4
ENDM

OverworldSprites:
; entries correspond to SPRITE_* constants
	table_width NUM_SPRITEDATA_FIELDS
	overworld_sprite ChrisSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite ChrisBikeSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite GameboyKidSpriteGFX, 12, STANDING_SPRITE, PAL_OW_GREEN
	overworld_sprite CherenSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite JuniperSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite GhetsisSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite NSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite TriadSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite ElderSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite ChiliSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite CressSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite MomSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite LookerSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite CynthiaSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite BiancaSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite CedricSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite ShauntalSpriteGFX, 12, STANDING_SPRITE, PAL_OW_RED
	overworld_sprite CilanSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite LenoraSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite BurghSpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite ElesaSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite ClaySpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite SkylaSpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite BrycenSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite IrisSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite DraydenSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite GrimsleySpriteGFX, 12, STANDING_SPRITE, PAL_OW_BLUE
	overworld_sprite MarshalSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite CaitlinSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite AlderSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite IngoSpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite EmmetSpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite AntheaSpriteGFX, 12, STANDING_SPRITE, PAL_OW_BROWN
	overworld_sprite ConcordiaSpriteGFX, 12, STANDING_SPRITE, PAL_OW_RED
	overworld_sprite CooltrainerMSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite CooltrainerFSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite LittleBoySpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite LittleGirlSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite YoungsterSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite LassSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite GirlSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite SuperNerdSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite RockerSpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite MiddleMSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite MiddleFSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite GrampsSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite GrannySpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite SwimmerSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite OfficeManSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite OfficeWomanSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite GruntSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite GruntGirlSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite NurseSpriteGFX, 12, STANDING_SPRITE, PAL_OW_RED
	overworld_sprite LinkReceptionistSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite ClerkSpriteGFX, 12, STANDING_SPRITE, PAL_OW_GREEN
	overworld_sprite FisherSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite ScientistSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite SageSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite GentlemanSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite OfficerSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite GymGuideSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite HikerSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite BikerSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite GuardSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite MonsterSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite FairySpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite BirdSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite DragonSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite SurfSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite PokeBallSpriteGFX, 4, STILL_SPRITE, PAL_OW_RED
	overworld_sprite BookSpriteGFX, 4, STILL_SPRITE, PAL_OW_BROWN
	overworld_sprite PaperSpriteGFX, 4, STILL_SPRITE, PAL_OW_BLUE
	overworld_sprite CookSpriteGFX, 12, STANDING_SPRITE, PAL_OW_RED
	overworld_sprite BoulderSpriteGFX, 4, STILL_SPRITE, PAL_OW_ROCK
	overworld_sprite GoldTrophySpriteGFX, 4, STILL_SPRITE, PAL_OW_BROWN
	overworld_sprite SilverTrophySpriteGFX, 4, STILL_SPRITE, PAL_OW_EMOTE
	overworld_sprite ChrisRunSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	assert_table_length NUM_OVERWORLD_SPRITES
