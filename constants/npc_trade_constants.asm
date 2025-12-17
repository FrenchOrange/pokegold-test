; npctrade struct members (see data/events/npc_trades.asm)
rsreset
DEF NPCTRADE_DIALOG   rb
DEF NPCTRADE_GIVEMON  rb
DEF NPCTRADE_GETMON   rb
DEF NPCTRADE_NICKNAME rb MON_NAME_LENGTH
DEF NPCTRADE_DVS      rw
DEF NPCTRADE_ITEM     rb
DEF NPCTRADE_OT_ID    rw
DEF NPCTRADE_OT_NAME  rb NAME_LENGTH
DEF NPCTRADE_GENDER   rb
                      rb_skip
DEF NPCTRADE_STRUCT_LENGTH EQU _RS

; NPCTrades indexes (see data/events/npc_trades.asm)
	const_def
	const NPC_TRADE_DYE     ; 0
	const NPC_TRADE_KYLE    ; 1
	const NPC_TRADE_MANNY   ; 2
	const NPC_TRADE_LILLIAN ; 3
	const NPC_TRADE_ANDER   ; 4
DEF NUM_NPC_TRADES EQU const_value

; trade gender limits
	const_def
	const TRADE_GENDER_EITHER
	const TRADE_GENDER_MALE
	const TRADE_GENDER_FEMALE

; TradeTexts indexes (see engine/events/npc_trade.asm)

; trade dialogs
	const_def
	const TRADE_DIALOG_INTRO
	const TRADE_DIALOG_CANCEL
	const TRADE_DIALOG_WRONG
	const TRADE_DIALOG_LETSTRADE
	const TRADE_DIALOG_AFTER
	const TRADE_DIALOG_DONE
DEF NUM_TRADE_DIALOGS EQU const_value

; trade dialog sets
	const_def
	const TRADE_DIALOGSET_DYE
	const TRADE_DIALOGSET_KYLE
	const TRADE_DIALOGSET_MANNY
	const TRADE_DIALOGSET_LILLIAN
	const TRADE_DIALOGSET_ANDER
DEF NUM_TRADE_DIALOGSETS EQU const_value
