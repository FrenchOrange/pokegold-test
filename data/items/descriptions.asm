ItemDescriptions:
; entries correspond to item ids (see constants/item_constants.asm)
	table_width 2
	dw MasterBallDesc
	dw UltraBallDesc
	dw BrightpowderDesc
	dw GreatBallDesc
	dw PokeBallDesc
	dw BicycleDesc
	dw EvoStoneDesc
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
	dw EscapeRopeDesc
	dw RepelDesc
	dw MaxElixirDesc
	dw EvoStoneDesc
	dw EvoStoneDesc
	dw EvoStoneDesc
	dw HPUpDesc
	dw ProteinDesc
	dw IronDesc
	dw CarbosDesc
	dw CalciumDesc
	dw RareCandyDesc
	dw XAccuracyDesc
	dw EvoStoneDesc
	dw MetalPowderDesc
	dw NuggetDesc
	dw PokeDollDesc
	dw FullHealDesc
	dw ReviveDesc
	dw MaxReviveDesc
	dw GuardSpecDesc
	dw SuperRepelDesc
	dw MaxRepelDesc
	dw DireHitDesc
	dw FreshWaterDesc
	dw SodaPopDesc
	dw LemonadeDesc
	dw XAttackDesc
	dw XDefendDesc
	dw XSpeedDesc
	dw XSpecialDesc
	dw CoinCaseDesc
	dw ItemfinderDesc
	dw ExpShareDesc
	dw DeepSeaToothDesc
	dw SuperRodDesc
	dw PPUpDesc
	dw EtherDesc
	dw MaxEtherDesc
	dw ElixirDesc
	dw LibertyPassDesc
	dw LightStoneDesc
	dw MoomooMilkDesc
	dw QuickClawDesc
	dw PechaBerryDesc
	dw DeepSeaScaleDesc
	dw SoftSandDesc
	dw SharpBeakDesc
	dw CheriBerryDesc
	dw AspearBerryDesc
	dw RawstBerryDesc
	dw PoisonBarbDesc
	dw PersimBerryDesc
	dw ChestoBerryDesc
	dw RelicCopperDesc
	dw TinyMushroomDesc
	dw BigMushroomDesc
	dw SilverPowderDesc
	dw RelicSilverDesc
	dw RedShardDesc
	dw AmuletCoinDesc
	dw RelicGoldDesc
	dw RelicVaseDesc
	dw CleanseTagDesc
	dw MysticWaterDesc
	dw TwistedSpoonDesc
	dw RelicBandDesc
	dw BlackBeltDesc
	dw RelicStatueDesc
	dw BlueShardDesc
	dw RelicCrownDesc
	dw BlackGlassesDesc
	dw SilkScarfDesc
	dw SmokeBallDesc
	dw NeverMeltIceDesc
	dw MagnetDesc
	dw LumBerryDesc
	dw PearlDesc
	dw BigPearlDesc
	dw EverStoneDesc
	dw SpellTagDesc
	dw RageCandyBarDesc
	dw EvoStoneDesc
	dw EvoStoneDesc
	dw MiracleSeedDesc
	dw FocusBandDesc
	dw EvioliteDesc
	dw EnergyPowderDesc
	dw EnergyRootDesc
	dw HealPowderDesc
	dw RevivalHerbDesc
	dw HardStoneDesc
	dw LuckyEggDesc
	dw DragonSkullDesc
	dw StardustDesc
	dw StarPieceDesc
	dw PlasmaDriveDesc
	dw MagmarizerDesc
	dw ElectirizerDesc
	dw EvoStoneDesc
	dw CharcoalDesc
	dw BerryJuiceDesc
	dw ScopeLensDesc
	dw YellowShardDesc
	dw GreenShardDesc
	dw DragonFangDesc
	dw LeftoversDesc
	dw PlumeFossilDesc
	dw CoverFossilDesc
	dw HeartScaleDesc
	dw LeppaBerryDesc
	dw CasteliaConeDesc
	dw TimerBallDesc
	dw MailDesc
	dw NestBallDesc
	dw NetBallDesc
	dw QuickBallDesc
	dw HealBallDesc
	dw LuxuryBallDesc
	dw DuskBallDesc
	dw RepeatBallDesc
	dw RazorClawDesc
	dw RazorFangDesc
	dw EvoStoneDesc
	dw OranBerryDesc
	dw SitrusBerryDesc
	dw GramDesc
	dw DiveBallDesc
	dw DarkStoneDesc
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

BrightpowderDesc:
	db   "Lowers the foe's"
	next "accuracy. (HOLD)@"

GreatBallDesc:
	db   "A BALL with a de-"
	next "cent success rate.@"

PokeBallDesc:
	db   "An item for catch-"
	next "ing #MON.@"

BicycleDesc:
	db   "A collapsible bike"
	next "for fast movement.@"

EvoStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

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
	db   "Restores #MON"
	next "HP by 50.@"

PotionDesc:
	db   "Restores #MON"
	next "HP by 20.@"

EscapeRopeDesc:
	db   "Use for escaping"
	next "from caves, etc.@"

RepelDesc:
	db   "Repels weak #-"
	next "MON for 100 steps.@"

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

XAccuracyDesc:
	db   "Raises accuracy."
	next "(1 BTL)@"

MetalPowderDesc:
	db   "Raises DEFENSE of"
	next "DITTO. (HOLD)@"

NuggetDesc:
	db   "Made of pure gold."
	next "Sell high.@"

PokeDollDesc:
	db   "Use to escape from"
	next "a wild #MON.@"

FullHealDesc:
	db   "Eliminates all"
	next "status problems.@"

ReviveDesc:
	db   "Restores a fainted"
	next "#MON to 1/2 HP.@"

MaxReviveDesc:
	db   "Fully restores a"
	next "fainted #MON.@"

GuardSpecDesc:
	db   "Prevents stat"
	next "reduction. (1 BTL)@"

SuperRepelDesc:
	db   "Repels weak #-"
	next "MON for 200 steps.@"

MaxRepelDesc:
	db   "Repels weak #-"
	next "MON for 250 steps.@"

DireHitDesc:
	db   "Ups critical hit"
	next "ratio. (1 BTL)@"

FreshWaterDesc:
	db   "Restores #MON"
	next "HP by 50.@"

SodaPopDesc:
	db   "Restores #MON"
	next "HP by 60.@"

LemonadeDesc:
	db   "Restores #MON"
	next "HP by 80.@"

XAttackDesc:
	db   "Raises ATTACK."
	next "(1 BTL)@"

XDefendDesc:
	db   "Raises DEFENSE."
	next "(1 BTL)@"

XSpeedDesc:
	db   "Raises SPEED."
	next "(1 BTL)@"

XSpecialDesc:
	db   "Raises SPECIAL"
	next "stats. (1 BTL)@"

CoinCaseDesc:
	db   "Holds up to 9,999"
	next "game coins.@"

ItemfinderDesc:
	db   "Checks for unseen"
	next "items in the area.@"

ExpShareDesc:
	db   "Shares battle EXP."
	next "points. (HOLD)@"

DeepSeaToothDesc:
	db   "Raises CLAMPERL's"
	next "SP.ATK. (HOLD)@"

SuperRodDesc:
	db   "High-tech ROD for"
	next "catching #MON.@"

PPUpDesc:
	db   "Raises max PP of"
	next "a selected move.@"

EtherDesc:
	db   "Restores PP of one"
	next "move by 10.@"

MaxEtherDesc:
	db   "Fully restores PP"
	next "of one move.@"

ElixirDesc:
	db   "Restores PP of all"
	next "moves by 10.@"

LibertyPassDesc:
	db   "Special pass to go"
	next "to LIBERTY GARDEN.@"

LightStoneDesc:
	db   "A stone containing"
	next "RESHIRAM's essence.@"

MoomooMilkDesc:
	db   "Restores #MON"
	next "HP by 100.@"

QuickClawDesc:
	db   "Raises 1st strike"
	next "ratio. (HOLD)@"

PechaBerryDesc:
	db   "A self-cure for"
	next "poison. (HOLD)@"

DeepSeaScaleDesc:
	db   "Raises CLAMPERL's"
	next "SP.DEF. (HOLD)@"

SoftSandDesc:
	db   "Powers up ground-"
	next "type moves. (HOLD)@"

SharpBeakDesc:
	db   "Powers up flying-"
	next "type moves. (HOLD)@"

CheriBerryDesc:
	db   "A self-cure for"
	next "paralysis. (HOLD)@"

AspearBerryDesc:
	db   "A self-cure for"
	next "freezing. (HOLD)@"

RawstBerryDesc:
	db   "A self-heal for a"
	next "burn. (HOLD)@"

PoisonBarbDesc:
	db   "Powers up poison-"
	next "type moves. (HOLD)@"

RazorFangDesc:
	db   "May make the foe"
	next "flinch. (HOLD)@"

PersimBerryDesc:
	db   "A self-cure for"
	next "confusion. (HOLD)@"

ChestoBerryDesc:
	db   "A self-awakening"
	next "for sleep. (HOLD)@"

RelicCopperDesc:
	db   "An ancient copper"
	next "coin. Sell high.@"

TinyMushroomDesc:
	db   "An ordinary mush-"
	next "room. Sell low.@"

BigMushroomDesc:
	db   "A rare mushroom."
	next "Sell high.@"

SilverPowderDesc:
	db   "Powers up bug-type"
	next "moves. (HOLD)@"

RelicSilverDesc:
	db   "An ancient silver"
	next "coin. Sell high.@"

RedShardDesc:
	db   "A small red shard."
	next "Sell low.@"

AmuletCoinDesc:
	db   "Doubles monetary"
	next "earnings. (HOLD)@"

RelicGoldDesc:
	db   "An ancient gold"
	next "coin. Sell high.@"

RelicVaseDesc:
	db   "An ancient vase."
	next "Sell high.@"

CleanseTagDesc:
	db   "Helps repel wild"
	next "#MON. (HOLD)@"

MysticWaterDesc:
	db   "Powers up water-"
	next "type moves. (HOLD)@"

TwistedSpoonDesc:
	db   "Powers up psychic-"
	next "type moves. (HOLD)@"

RelicBandDesc:
	db   "An ancient brace-"
	next "let. Sell high.@"

BlackBeltDesc:
	db   "Boosts fighting-"
	next "type moves. (HOLD)@"

RelicStatueDesc:
	db   "An ancient statue."
	next "Sell high.@"

BlueShardDesc:
	db   "A small blue"
	next "shard. Sell low.@"

RelicCrownDesc:
	db   "An ancient crown."
	next "Sell high.@"

BlackGlassesDesc:
	db   "Powers up dark-"
	next "type moves. (HOLD)@"

SilkScarfDesc:
	db   "Powers up normal-"
	next "type moves. (HOLD)@"

SmokeBallDesc:
	db   "Escape from wild"
	next "#MON. (HOLD)@"

NeverMeltIceDesc:
	db   "Powers up ice-type"
	next "moves. (HOLD)@"

MagnetDesc:
	db   "Boosts electric-"
	next "type moves. (HOLD)@"

LumBerryDesc:
	db   "Cures all status"
	next "problems. (HOLD)@"

PearlDesc:
	db   "A beautiful pearl."
	next "Sell low.@"

BigPearlDesc:
	db   "A big, beautiful"
	next "pearl. Sell high.@"

EverStoneDesc:
	db   "Stops evolution."
	next "(HOLD)@"

SpellTagDesc:
	db   "Powers up ghost-"
	next "type moves. (HOLD)@"

RageCandyBarDesc:
CasteliaConeDesc:
	db   "Cures all status"
	next "problems.@"

MiracleSeedDesc:
	db   "Powers up grass-"
	next "type moves. (HOLD)@"

FocusBandDesc:
	db   "May prevent faint-"
	next "ing. (HOLD)@"

EvioliteDesc:
	db   "Ups DEF and SP.DEF"
	next "of evolvers.@"
	done

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

HardStoneDesc:
	db   "Powers up rock-"
	next "type moves. (HOLD)@"

LuckyEggDesc:
	db   "Earns extra EXP."
	next "points. (HOLD)@"

DragonSkullDesc:
	db   "A skull of a brave"
	next "#MON.@"

StardustDesc:
	db   "Pretty, red sand."
	next "Sell high.@"

StarPieceDesc:
	db   "A hunk of red gem."
	next "Sell very high.@"

PlasmaDriveDesc:
	db   "Boosts ATTACK but"
	next "causes confusion.@"

MagmarizerDesc:
	db   "A box packed with"
	next "magma energy.@"

ElectirizerDesc:
	db   "A box packed with"
	next "electric energy.@"

CharcoalDesc:
	db   "Powers up fire-"
	next "type moves. (HOLD)@"

BerryJuiceDesc:
	db   "Restores #MON"
	next "HP by 20.@"

ScopeLensDesc:
RazorClawDesc:
	db   "Raises critical"
	next "hit ratio. (HOLD)@"

YellowShardDesc:
	db   "A small yellow"
	next "shard. Sell low.@"

GreenShardDesc:
	db   "A small green"
	next "shard. Sell low.@"

DragonFangDesc:
	db   "Powers up dragon-"
	next "type moves. (HOLD)@"

LeftoversDesc:
	db   "Restores HP during"
	next "battle. (HOLD)@"

PlumeFossilDesc:
	db   "A fossilized"
	next "#MON wing.@"

CoverFossilDesc:
	db   "A fossilized"
	next "#MON shell.@"

HeartScaleDesc:
	db   "A lovely scale,"
	next "coveted by some.@"

LeppaBerryDesc:
	db   "A self-restore"
	next "item. (10PP, HOLD)@"

TimerBallDesc:
	db   "A BALL for late"
	next "in a battle.@"

MailDesc:
	db   "MAIL for #MON."
	next "(HOLD)@"

NestBallDesc:
	db   "A BALL for weaker"
	next "#MON.@"

NetBallDesc:
	db   "A BALL for WATER"
	next "or BUG #MON.@"

QuickBallDesc:
	db   "A BALL for early"
	next "in a battle.@"

HealBallDesc:
	db   "A remedial BALL to"
	next "heal #mon.@"

LuxuryBallDesc:
	db   "A cozy BALL to"
	next "befriend #MON.@"

DuskBallDesc:
	db   "A BALL for night-"
	next "time or caves.@"

RepeatBallDesc:
	db   "A BALL for #MON"
	next "caught before.@"

OranBerryDesc:
	db   "A self-restore"
	next "item. (10HP, HOLD)@"

SitrusBerryDesc:
	db   "A self-restore"
	next "item. (30HP, HOLD)@"

GramDesc:
	db   "Important letter"
	next "that WINGULL lost.@"

DiveBallDesc:
	db "A BALL for under-"
	next "water #MON.@"

DarkStoneDesc:
	db   "A stone containing"
	next "ZEKROM's essence.@"

TeruSamaDesc:
	db   "?@"
