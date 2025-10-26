; IconPointers indexes (see data/icon_pointers.asm)
	const_def
	const ICON_NULL
	const ICON_FISH
	const ICON_BIRD
	const ICON_MONSTER
	const ICON_CLEFAIRY
	const ICON_PLANT
	const ICON_BUG
	const ICON_GHOST
	const ICON_FOX
	const ICON_QUADRUPED
	const ICON_SHELL
	const ICON_BLOB
	const ICON_SNAKE
	const ICON_VOLTORB
	const ICON_GEODUDE
	const ICON_EGG
	const ICON_BAT
	const ICON_BIGMON
DEF NUM_ICONS EQU const_value - 1

; LoadMenuMonIcon.Jumptable indexes (see engine/gfx/mon_icons.asm)
	const_def
	const MONICON_PARTYMENU
	const MONICON_NAMINGSCREEN
	const MONICON_MOVES
	const MONICON_TRADE
