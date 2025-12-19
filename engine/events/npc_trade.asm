NPCTrade::
	ld a, e
	ld [wJumptableIndex], a
	call Trade_GetDialog
	ld b, CHECK_FLAG
	call TradeFlagAction
	ld a, TRADE_DIALOG_DONE
	jr nz, .done

	ld a, TRADE_DIALOG_INTRO
	call PrintTradeText

	call YesNoBox
	ld a, TRADE_DIALOG_CANCEL
	jr c, .done

; Select givemon from party
	ld b, PARTYMENUACTION_GIVE_MON
	farcall SelectTradeOrDayCareMon
	ld a, TRADE_DIALOG_CANCEL
	jr c, .done

	ld e, NPCTRADE_GIVEMON
	call GetTradeAttr
	ld a, [wCurPartySpecies]
	cp [hl]
	ld a, TRADE_DIALOG_WRONG
	jr nz, .done

	call CheckTradeGender
	ld a, TRADE_DIALOG_WRONG
	jr c, .done

	ld b, SET_FLAG
	call TradeFlagAction

	ld a, TRADE_DIALOG_LETSTRADE
	call PrintTradeText

	call DoNPCTrade
	call .TradeAnimation
	call GetTradeMonNames

	ld hl, TradedForText
	call PrintText

	ld a, [wMapGroup]
	cp GROUP_NACRENE_CITY
	jr z, .traded_with_Dye

;	ld a, [wMapGroup]
;	cp GROUP_DRIFTVEIL_CITY
;	jr z, .traded_with_Kyle

	call RestartMapMusic

	ld a, TRADE_DIALOG_AFTER

.done
	call PrintTradeText
	ret

.traded_with_Dye
	ld de, EVENT_TRADED_WITH_LASS_DYE
	ld b, SET_FLAG
	call EventFlagAction

	call RestartMapMusic
	ld a, TRADE_DIALOG_AFTER
	call PrintTradeText
	ret

;.traded_with_Kyle
;	ld de, EVENT_TRADED_WITH_YOUNGSTER_KYLE
;	ld b, SET_FLAG
;	call EventFlagAction
;
;	call RestartMapMusic
;	ld a, TRADE_DIALOG_AFTER
;	call PrintTradeText
;	ret

.TradeAnimation:
	call DisableSpriteUpdates
	ld a, [wJumptableIndex]
	push af
	; wTradeDialog aliases wFrameCounter, which TradeAnimation uses
	ld a, [wTradeDialog]
	push af
	predef TradeAnimation
	pop af
	ld [wTradeDialog], a
	pop af
	ld [wJumptableIndex], a
	call ReturnToMapWithSpeechTextbox
	ret

CheckTradeGender:
	xor a
	ld [wMonType], a

	ld e, NPCTRADE_GENDER
	call GetTradeAttr
	ld a, [hl]
	and a ; TRADE_GENDER_EITHER
	jr z, .matching
	cp TRADE_GENDER_MALE
	jr z, .check_male
	; TRADE_GENDER_FEMALE
	farcall GetGender
	jr nz, .not_matching
	jr .matching

.check_male
	farcall GetGender
	jr z, .not_matching

.matching
	and a
	ret

.not_matching
	scf
	ret

TradeFlagAction:
	ld hl, wTradeFlags
	ld a, [wJumptableIndex]
	ld c, a
	predef SmallFarFlagAction
	ld a, c
	and a
	ret

Trade_GetDialog:
	ld e, NPCTRADE_DIALOG
	call GetTradeAttr
	ld a, [hl]
	ld [wTradeDialog], a
	ret

DoNPCTrade:
	ld e, NPCTRADE_GIVEMON
	call GetTradeAttr
	ld a, [hl]
	ld [wPlayerTrademonSpecies], a

	ld e, NPCTRADE_GETMON
	call GetTradeAttr
	ld a, [hl]
	ld [wOTTrademonSpecies], a

	ld a, [wPlayerTrademonSpecies]
	ld de, wPlayerTrademonSpeciesName
	call GetTradeMonName
	call CopyTradeName

	ld a, [wOTTrademonSpecies]
	ld de, wOTTrademonSpeciesName
	call GetTradeMonName
	call CopyTradeName

	ld hl, wPartyMonOTs
	ld bc, NAME_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld de, wPlayerTrademonOTName
	call CopyTradeName

	ld hl, wPlayerName
	ld de, wPlayerTrademonSenderName
	call CopyTradeName

	ld hl, wPartyMon1ID
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld de, wPlayerTrademonID
	call Trade_CopyTwoBytes

	ld hl, wPartyMon1DVs
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld de, wPlayerTrademonDVs
	call Trade_CopyTwoBytes

	ld hl, wPartyMon1Level
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld a, [hl]
	ld [wCurPartyLevel], a
	ld a, [wOTTrademonSpecies]
	ld [wCurPartySpecies], a
	xor a
	ld [wMonType], a ; PARTYMON
	ld [wPokemonWithdrawDepositParameter], a ; REMOVE_PARTY
	callfar RemoveMonFromPartyOrBox
	predef TryAddMonToParty

	ld e, NPCTRADE_NICKNAME
	call GetTradeAttr
	ld de, wOTTrademonNickname
	call CopyTradeName

	ld hl, wPartyMonNicknames
	ld bc, MON_NAME_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonNickname
	call CopyTradeName

	ld e, NPCTRADE_OT_NAME
	call GetTradeAttr
	push hl
	ld de, wOTTrademonOTName
	call CopyTradeName
	pop hl
	ld de, wOTTrademonSenderName
	call CopyTradeName

	ld hl, wPartyMonOTs
	ld bc, NAME_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonOTName
	call CopyTradeName

	ld e, NPCTRADE_DVS
	call GetTradeAttr
	ld de, wOTTrademonDVs
	call Trade_CopyTwoBytes

	ld hl, wPartyMon1DVs
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonDVs
	call Trade_CopyTwoBytes

	ld e, NPCTRADE_OT_ID
	call GetTradeAttr
	ld de, wOTTrademonID + 1
	call Trade_CopyTwoBytesReverseEndian

	ld hl, wPartyMon1ID
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonID
	call Trade_CopyTwoBytes

	ld e, NPCTRADE_ITEM
	call GetTradeAttr
	push hl
	ld hl, wPartyMon1Item
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfLastPartymon
	pop hl
	ld a, [hl]
	ld [de], a

	push af
	push bc
	push de
	push hl
	ld a, [wCurPartyMon]
	push af
	ld a, [wPartyCount]
	dec a
	ld [wCurPartyMon], a
	farcall ComputeNPCTrademonStats
	pop af
	ld [wCurPartyMon], a
	pop hl
	pop de
	pop bc
	pop af
	ret

GetTradeAttr:
	ld d, 0
	push de
	ld a, [wJumptableIndex]
	and $f
	swap a
	ld e, a
	ld d, 0
	ld hl, NPCTrades
	add hl, de
	add hl, de
	pop de
	add hl, de
	ret

Trade_GetAttributeOfCurrentPartymon:
	ld a, [wCurPartyMon]
	call AddNTimes
	ret

Trade_GetAttributeOfLastPartymon:
	ld a, [wPartyCount]
	dec a
	call AddNTimes
	ld e, l
	ld d, h
	ret

GetTradeMonName:
	push de
	ld [wNamedObjectIndex], a
	call GetBasePokemonName
	ld hl, wStringBuffer1
	pop de
	ret

CopyTradeName:
	ld bc, NAME_LENGTH
	call CopyBytes
	ret

Trade_CopyTwoBytes:
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	ret

Trade_CopyTwoBytesReverseEndian:
	ld a, [hli]
	ld [de], a
	dec de
	ld a, [hl]
	ld [de], a
	ret

GetTradeMonNames:
	ld e, NPCTRADE_GETMON
	call GetTradeAttr
	ld a, [hl]
	call GetTradeMonName

	ld de, wStringBuffer2
	call CopyTradeName

	ld e, NPCTRADE_GIVEMON
	call GetTradeAttr
	ld a, [hl]
	call GetTradeMonName

	ld de, wMonOrItemNameBuffer
	call CopyTradeName

	ld hl, wStringBuffer1
.loop
	ld a, [hli]
	cp "@"
	jr nz, .loop

	dec hl
	push hl
	ld e, NPCTRADE_GENDER
	call GetTradeAttr
	ld a, [hl]
	pop hl
	and a ; TRADE_GENDER_EITHER
	ret z
	cp TRADE_GENDER_MALE
	ld a, "♂"
	jr z, .done
	; TRADE_GENDER_FEMALE
	ld a, "♀"
.done
	ld [hli], a
	ld [hl], "@"
	ret

INCLUDE "data/events/npc_trades.asm"

PrintTradeText:
	push af
	call GetTradeMonNames
	pop af
	ld bc, 2 * 5
	ld hl, TradeTexts
	call AddNTimes
	ld a, [wTradeDialog]
	ld c, a
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call PrintText
	ret

TradeTexts:
; entries correspond to TRADE_DIALOG_* × TRADE_DIALOGSET_* constants
; TRADE_DIALOG_INTRO
	dw NPCTradeIntroDye
	dw NPCTradeIntroKyle
	dw NPCTradeIntroManny
	dw NPCTradeIntroLillian
	dw NPCTradeIntroAnder
; TRADE_DIALOG_CANCEL
	dw NPCTradeCancelDye
	dw NPCTradeCancelKyle
	dw NPCTradeCancelManny
	dw NPCTradeCancelLillian
	dw NPCTradeCancelAnder
; TRADE_DIALOG_WRONG
	dw NPCTradeWrongDye
	dw NPCTradeWrongKyle
	dw NPCTradeWrongManny
	dw NPCTradeWrongLillian
	dw NPCTradeWrongAnder
; TRADE_DIALOG_LETSTRADE
	dw NPCTradeLetsTradeDye
	dw NPCTradeLetsTradeKyle
	dw NPCTradeLetsTradeManny
	dw NPCTradeLetsTradeLillian
	dw NPCTradeLetsTradeAnder
; TRADE_DIALOG_AFTER
	dw NPCTradeAfterDye
	dw NPCTradeAfterKyle
	dw NPCTradeAfterManny
	dw NPCTradeAfterLillian
	dw NPCTradeAfterAnder
; TRADE_DIALOG_AFTER
	dw NPCTradeDoneDye
	dw NPCTradeDoneKyle
	dw NPCTradeDoneManny
	dw NPCTradeDoneLillian
	dw NPCTradeDoneAnder

TradedForText:
	; traded givemon for getmon
	text_far Text_NPCTraded
	text_asm
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	ld hl, .done
	ret

.done
	text_far _NPCTradeFanfareText
	text_end

NPCTradeIntroDye:
	text_far _NPCTradeIntroDye
	text_end

NPCTradeCancelDye:
	text_far _NPCTradeCancelDye
	text_end

NPCTradeWrongDye:
	text_far _NPCTradeWrongDye
	text_end

NPCTradeLetsTradeDye:
	text_far _NPCTradeLetsTradeDye
	text_end

NPCTradeAfterDye:
	text_far _NPCTradeAfterDye
	text_end

NPCTradeDoneDye:
	text_far _NPCTradeDoneDye
	text_end


NPCTradeIntroKyle:
	text_far _NPCTradeIntroKyle
	text_end

NPCTradeCancelKyle:
	text_far _NPCTradeCancelKyle
	text_end

NPCTradeWrongKyle:
	text_far _NPCTradeWrongKyle
	text_end

NPCTradeLetsTradeKyle:
	text_far _NPCTradeLetsTradeKyle
	text_end

NPCTradeAfterKyle:
	text_far _NPCTradeAfterKyle
	text_end

NPCTradeDoneKyle:
	text_far _NPCTradeDoneKyle
	text_end


NPCTradeIntroManny:
	text_far _NPCTradeIntroManny
	text_end

NPCTradeCancelManny:
	text_far _NPCTradeCancelManny
	text_end

NPCTradeWrongManny:
	text_far _NPCTradeWrongManny
	text_end

NPCTradeLetsTradeManny:
	text_far _NPCTradeLetsTradeManny
	text_end

NPCTradeAfterManny:
	text_far _NPCTradeAfterManny
	text_end

NPCTradeDoneManny:
	text_far _NPCTradeDoneManny
	text_end


NPCTradeIntroLillian:
	text_far _NPCTradeIntroLillian
	text_end

NPCTradeCancelLillian:
	text_far _NPCTradeCancelLillian
	text_end

NPCTradeWrongLillian:
	text_far _NPCTradeWrongLillian
	text_end

NPCTradeLetsTradeLillian:
	text_far _NPCTradeLetsTradeLillian
	text_end

NPCTradeAfterLillian:
	text_far _NPCTradeAfterLillian
	text_end

NPCTradeDoneLillian:
	text_far _NPCTradeDoneLillian
	text_end


NPCTradeIntroAnder:
	text_far _NPCTradeIntroAnder
	text_end

NPCTradeCancelAnder:
	text_far _NPCTradeCancelAnder
	text_end

NPCTradeWrongAnder:
	text_far _NPCTradeWrongAnder
	text_end

NPCTradeLetsTradeAnder:
	text_far _NPCTradeLetsTradeAnder
	text_end

NPCTradeAfterAnder:
	text_far _NPCTradeAfterAnder
	text_end

NPCTradeDoneAnder:
	text_far _NPCTradeDoneAnder
	text_end
