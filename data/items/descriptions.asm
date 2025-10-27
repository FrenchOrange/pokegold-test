ItemDescriptions:
; entries correspond to item ids (see constants/item_constants.asm)
	table_width 2
	dw MasterBallDesc
	dw UltraBallDesc
	dw GreatBallDesc
	dw PokeBallDesc
	dw NetBallDesc
	dw DiveBallDesc
	dw NestBallDesc
	dw RepeatBallDesc
	dw TimerBallDesc
	dw LuxuryBallDesc
	dw DuskBallDesc
	dw HealBallDesc
	dw QuickBallDesc
	dw AntidoteDesc
	dw BurnHealDesc
	dw IceHealDesc
	dw AwakeningDesc
	dw ParlyzHealDesc
	dw FullRestoreDesc
	dw MaxPotionDesc
	dw HyperPotionDesc
	dw SuperPotionDesc
	dw PotionDesc
	dw FullHealDesc
	dw ReviveDesc
	dw MaxReviveDesc
	dw FreshWaterDesc
	dw SodaPopDesc
	dw LemonadeDesc
	dw MoomooMilkDesc
	dw EnergyPowderDesc
	dw EnergyRootDesc
	dw HealPowderDesc
	dw RevivalHerbDesc
	dw EtherDesc
	dw MaxEtherDesc
	dw ElixirDesc
	dw MaxElixirDesc
	dw BerryJuiceDesc
	dw HPUpDesc
	dw ProteinDesc
	dw IronDesc
	dw CarbosDesc
	dw CalciumDesc
	dw RareCandyDesc
	dw PPUpDesc
	dw GuardSpecDesc
	dw DireHitDesc
	dw XAttackDesc
	dw XDefendDesc
	dw XSpeedDesc
	dw XAccuracyDesc
	dw XSpecialDesc
	dw PokeDollDesc
	dw RedShardDesc
	dw BlueShardDesc
	dw YellowShardDesc
	dw GreenShardDesc
	dw EscapeRopeDesc
	dw RepelDesc
	dw SuperRepelDesc
	dw MaxRepelDesc
	dw EvoStoneDesc
	dw EvoStoneDesc
	dw EvoStoneDesc
	dw EvoStoneDesc
	dw EvoStoneDesc
	dw EvoStoneDesc
	dw EvoStoneDesc
	dw EvoStoneDesc
	dw EvoStoneDesc
	dw TinyMushroomDesc
	dw BigMushroomDesc
	dw PearlDesc
	dw BigPearlDesc
	dw StardustDesc
	dw StarPieceDesc
	dw NuggetDesc
	dw HeartScaleDesc
	dw MailDesc
	dw CheriBerryDesc
	dw ChestoBerryDesc
	dw PechaBerryDesc
	dw RawstBerryDesc
	dw AspearBerryDesc
	dw LeppaBerryDesc
	dw OranBerryDesc
	dw PersimBerryDesc
	dw LumBerryDesc
	dw SitrusBerryDesc
	dw BrightpowderDesc
	dw ExpShareDesc
	dw QuickClawDesc
	dw SilverPowderDesc
	dw AmuletCoinDesc
	dw CleanseTagDesc
	dw SmokeBallDesc
	dw FocusBandDesc
	dw EverStoneDesc
	dw EvioliteDesc
	dw LuckyEggDesc
	dw ScopeLensDesc
	dw LeftoversDesc
	dw SoftSandDesc
	dw HardStoneDesc
	dw MiracleSeedDesc
	dw BlackGlassesDesc
	dw BlackBeltDesc
	dw MagnetDesc
	dw MysticWaterDesc
	dw SharpBeakDesc
	dw PoisonBarbDesc
	dw NeverMeltIceDesc
	dw SpellTagDesc
	dw TwistedSpoonDesc
	dw CharcoalDesc
	dw DragonFangDesc
	dw SilkScarfDesc
	dw MetalPowderDesc
	dw DeepSeaToothDesc
	dw DeepSeaScaleDesc
	dw ElectirizerDesc
	dw MagmarizerDesc
	dw RazorClawDesc
	dw RazorFangDesc
	dw PlasmaDriveDesc
	dw PlumeFossilDesc
	dw CoverFossilDesc
	dw RelicCopperDesc
	dw RelicSilverDesc
	dw RelicGoldDesc
	dw RelicVaseDesc
	dw RelicBandDesc
	dw RelicStatueDesc
	dw RelicCrownDesc
	dw CasteliaConeDesc
	dw RageCandyBarDesc
	dw BicycleDesc
	dw ItemfinderDesc
	dw CoinCaseDesc
	dw SuperRodDesc
	dw LightStoneDesc
	dw DarkStoneDesc
	dw DragonSkullDesc
	dw GramDesc
	dw LibertyPassDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	dw TeruSamaDesc
	assert_table_length NUM_ITEMS

MasterBallDesc:
	db   "The best BALL. It"
	next "never misses.@"

UltraBallDesc:
	db   "A BALL with a high"
	next "rate of success.@"

GreatBallDesc:
	db   "A BALL with a de-"
	next "cent success rate.@"

PokeBallDesc:
	db   "An item for catch-"
	next "ing #MON.@"

NetBallDesc:
	db   "A BALL for WATER"
	next "or BUG #MON.@"

DiveBallDesc:
	db "A BALL for under-"
	next "water #MON.@"

NestBallDesc:
	db   "A BALL for weaker"
	next "#MON.@"

RepeatBallDesc:
	db   "A BALL for #MON"
	next "caught before.@"

TimerBallDesc:
	db   "A BALL for late"
	next "in a battle.@"

LuxuryBallDesc:
	db   "A cozy BALL to"
	next "befriend #MON.@"

DuskBallDesc:
	db   "A BALL for night-"
	next "time or caves.@"

HealBallDesc:
	db   "A remedial BALL to"
	next "heal #mon.@"

QuickBallDesc:
	db   "A BALL for early"
	next "in a battle.@"

AntidoteDesc:
	db   "Cures poisoned"
	next "#MON.@"

BurnHealDesc:
	db   "Heals burned"
	next "#MON.@"

IceHealDesc:
	db   "Defrosts frozen"
	next "#MON.@"

AwakeningDesc:
	db   "Awakens sleeping"
	next "#MON.@"

ParlyzHealDesc:
	db   "Heals paralyzed"
	next "#MON.@"

FullRestoreDesc:
	db   "Fully restores HP"
	next "& status.@"

MaxPotionDesc:
	db   "Fully restores"
	next "#MON HP.@"

HyperPotionDesc:
	db   "Restores #MON"
	next "HP by 200.@"

SuperPotionDesc:
FreshWaterDesc:
	db   "Restores #MON"
	next "HP by 50.@"

PotionDesc:
BerryJuiceDesc:
	db   "Restores #MON"
	next "HP by 20.@"

FullHealDesc:
	db   "Eliminates all"
	next "status problems.@"

ReviveDesc:
	db   "Restores a fainted"
	next "#MON to 1/2 HP.@"

MaxReviveDesc:
	db   "Fully restores a"
	next "fainted #MON.@"

SodaPopDesc:
	db   "Restores #MON"
	next "HP by 60.@"

LemonadeDesc:
	db   "Restores #MON"
	next "HP by 80.@"

MoomooMilkDesc:
	db   "Restores #MON"
	next "HP by 100.@"

EnergyPowderDesc:
	db   "Restores #MON"
	next "HP by 50. Bitter.@"

EnergyRootDesc:
	db   "Restores #MON"
	next "HP by 200. Bitter.@"

HealPowderDesc:
	db   "Cures all status"
	next "problems. Bitter.@"

RevivalHerbDesc:
	db   "Revives fainted"
	next "#MON. Bitter.@"

EtherDesc:
	db   "Restores PP of one"
	next "move by 10.@"

MaxEtherDesc:
	db   "Fully restores PP"
	next "of one move.@"

ElixirDesc:
	db   "Restores PP of all"
	next "moves by 10.@"

MaxElixirDesc:
	db   "Fully restores the"
	next "PP of one #MON.@"

HPUpDesc:
	db   "Raises the HP of"
	next "one #MON.@"

ProteinDesc:
	db   "Raises ATTACK of"
	next "one #MON.@"

IronDesc:
	db   "Raises DEFENSE of"
	next "one #MON.@"

CarbosDesc:
	db   "Raises SPEED of"
	next "one #MON.@"

CalciumDesc:
	db   "Ups SPECIAL stats"
	next "of one #MON.@"

RareCandyDesc:
	db   "Raises level of a"
	next "#MON by one.@"

PPUpDesc:
	db   "Raises max PP of"
	next "a selected move.@"

GuardSpecDesc:
	db   "Prevents stat"
	next "reduction. (1 BTL)@"

DireHitDesc:
	db   "Ups critical hit"
	next "ratio. (1 BTL)@"

XAttackDesc:
	db   "Raises ATTACK."
	next "(1 BTL)@"

XDefendDesc:
	db   "Raises DEFENSE."
	next "(1 BTL)@"

XSpeedDesc:
	db   "Raises SPEED."
	next "(1 BTL)@"

XAccuracyDesc:
	db   "Raises accuracy."
	next "(1 BTL)@"

XSpecialDesc:
	db   "Raises SPECIAL"
	next "stats. (1 BTL)@"

PokeDollDesc:
	db   "Use to escape from"
	next "a wild #MON.@"

RedShardDesc:
	db   "A small red shard."
	next "Sell low.@"

BlueShardDesc:
	db   "A small blue"
	next "shard. Sell low.@"

YellowShardDesc:
	db   "A small yellow"
	next "shard. Sell low.@"

GreenShardDesc:
	db   "A small green"
	next "shard. Sell low.@"

EscapeRopeDesc:
	db   "Use for escaping"
	next "from caves, etc.@"

RepelDesc:
	db   "Repels weak #-"
	next "MON for 100 steps.@"

SuperRepelDesc:
	db   "Repels weak #-"
	next "MON for 200 steps.@"

MaxRepelDesc:
	db   "Repels weak #-"
	next "MON for 250 steps.@"

EvoStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

TinyMushroomDesc:
	db   "An ordinary mush-"
	next "room. Sell low.@"

BigMushroomDesc:
	db   "A rare mushroom."
	next "Sell high.@"

PearlDesc:
	db   "A beautiful pearl."
	next "Sell low.@"

BigPearlDesc:
	db   "A big, beautiful"
	next "pearl. Sell high.@"

StardustDesc:
	db   "Pretty, red sand."
	next "Sell high.@"

StarPieceDesc:
	db   "A hunk of red gem."
	next "Sell very high.@"

NuggetDesc:
	db   "Made of pure gold."
	next "Sell high.@"

HeartScaleDesc:
	db   "A lovely scale,"
	next "coveted by some.@"

MailDesc:
	db   "MAIL for #MON."
	next "(HOLD)@"

CheriBerryDesc:
	db   "A self-cure for"
	next "paralysis. (HOLD)@"

ChestoBerryDesc:
	db   "A self-awakening"
	next "for sleep. (HOLD)@"

PechaBerryDesc:
	db   "A self-cure for"
	next "poison. (HOLD)@"

RawstBerryDesc:
	db   "A self-heal for a"
	next "burn. (HOLD)@"

AspearBerryDesc:
	db   "A self-cure for"
	next "freezing. (HOLD)@"

LeppaBerryDesc:
	db   "A self-restore"
	next "item. (10PP, HOLD)@"

OranBerryDesc:
	db   "A self-restore"
	next "item. (10HP, HOLD)@"

PersimBerryDesc:
	db   "A self-cure for"
	next "confusion. (HOLD)@"

LumBerryDesc:
	db   "Cures all status"
	next "problems. (HOLD)@"

SitrusBerryDesc:
	db   "A self-restore"
	next "item. (30HP, HOLD)@"

BrightpowderDesc:
	db   "Lowers the foe's"
	next "accuracy. (HOLD)@"

ExpShareDesc:
	db   "Shares battle EXP."
	next "points. (HOLD)@"

QuickClawDesc:
	db   "Raises 1st strike"
	next "ratio. (HOLD)@"

SilverPowderDesc:
	db   "Powers up bug-type"
	next "moves. (HOLD)@"

AmuletCoinDesc:
	db   "Doubles monetary"
	next "earnings. (HOLD)@"

CleanseTagDesc:
	db   "Helps repel wild"
	next "#MON. (HOLD)@"

SmokeBallDesc:
	db   "Escape from wild"
	next "#MON. (HOLD)@"

FocusBandDesc:
	db   "May prevent faint-"
	next "ing. (HOLD)@"

EverStoneDesc:
	db   "Stops evolution."
	next "(HOLD)@"

EvioliteDesc:
	db   "Ups DEF and SP.DEF"
	next "of evolvers.@"
	done

LuckyEggDesc:
	db   "Earns extra EXP."
	next "points. (HOLD)@"

ScopeLensDesc:
RazorClawDesc:
	db   "Raises critical"
	next "hit ratio. (HOLD)@"

LeftoversDesc:
	db   "Restores HP during"
	next "battle. (HOLD)@"

SoftSandDesc:
	db   "Powers up ground-"
	next "type moves. (HOLD)@"

HardStoneDesc:
	db   "Powers up rock-"
	next "type moves. (HOLD)@"

MiracleSeedDesc:
	db   "Powers up grass-"
	next "type moves. (HOLD)@"

BlackGlassesDesc:
	db   "Powers up dark-"
	next "type moves. (HOLD)@"

BlackBeltDesc:
	db   "Boosts fighting-"
	next "type moves. (HOLD)@"

MagnetDesc:
	db   "Boosts electric-"
	next "type moves. (HOLD)@"

MysticWaterDesc:
	db   "Powers up water-"
	next "type moves. (HOLD)@"

SharpBeakDesc:
	db   "Powers up flying-"
	next "type moves. (HOLD)@"

PoisonBarbDesc:
	db   "Powers up poison-"
	next "type moves. (HOLD)@"

NeverMeltIceDesc:
	db   "Powers up ice-type"
	next "moves. (HOLD)@"

SpellTagDesc:
	db   "Powers up ghost-"
	next "type moves. (HOLD)@"

TwistedSpoonDesc:
	db   "Powers up psychic-"
	next "type moves. (HOLD)@"

CharcoalDesc:
	db   "Powers up fire-"
	next "type moves. (HOLD)@"

DragonFangDesc:
	db   "Powers up dragon-"
	next "type moves. (HOLD)@"

SilkScarfDesc:
	db   "Powers up normal-"
	next "type moves. (HOLD)@"

MetalPowderDesc:
	db   "Raises DEFENSE of"
	next "DITTO. (HOLD)@"

DeepSeaToothDesc:
	db   "Raises SP.ATK. of"
	next "CLAMPERL. (HOLD)@"

DeepSeaScaleDesc:
	db   "Raises SP.DEF. of"
	next "CLAMPERL. (HOLD)@"

ElectirizerDesc:
	db   "A box packed with"
	next "electric energy.@"

MagmarizerDesc:
	db   "A box packed with"
	next "magma energy.@"

RazorFangDesc:
	db   "May make the foe"
	next "flinch. (HOLD)@"

PlasmaDriveDesc:
	db   "Boosts ATTACK but"
	next "causes confusion.@"

PlumeFossilDesc:
	db   "A fossilized"
	next "#MON wing.@"

CoverFossilDesc:
	db   "A fossilized"
	next "#MON shell.@"

RelicCopperDesc:
	db   "An ancient copper"
	next "coin. Sell high.@"

RelicSilverDesc:
	db   "An ancient silver"
	next "coin. Sell high.@"

RelicGoldDesc:
	db   "An ancient gold"
	next "coin. Sell high.@"

RelicVaseDesc:
	db   "An ancient vase."
	next "Sell high.@"

RelicBandDesc:
	db   "An ancient brace-"
	next "let. Sell high.@"

RelicStatueDesc:
	db   "An ancient statue."
	next "Sell high.@"

RelicCrownDesc:
	db   "An ancient crown."
	next "Sell high.@"

CasteliaConeDesc:
RageCandyBarDesc:
	db   "Cures all status"
	next "problems.@"

BicycleDesc:
	db   "A collapsible bike"
	next "for fast movement.@"

ItemfinderDesc:
	db   "Checks for unseen"
	next "items in the area.@"

CoinCaseDesc:
	db   "Holds up to 9,999"
	next "game coins.@"

SuperRodDesc:
	db   "High-tech ROD for"
	next "catching #MON.@"

LightStoneDesc:
	db   "A stone containing"
	next "RESHIRAM's essence.@"

DarkStoneDesc:
	db   "A stone containing"
	next "ZEKROM's essence.@"

DragonSkullDesc:
	db   "A skull of a brave"
	next "#MON.@"

GramDesc:
	db   "Important letter"
	next "that WINGULL lost.@"

LibertyPassDesc:
	db   "Special pass to go"
	next "to LIBERTY GARDEN.@"

TeruSamaDesc:
	db   "?@"
