; MailGFXPointers indexes
; LoadMailPalettes.MailPals indexes (see gfx/mail/mail.pal)
	const_def
	const MAIL_INDEX  ; 0
DEF NUM_MAIL EQU const_value

ReadPartyMonMail:
	ld a, [wCurPartyMon]
	ld hl, sPartyMail
	ld bc, MAIL_STRUCT_LENGTH
	call AddNTimes
	ld d, h
	ld e, l
ReadAnyMail:
	push de
	call ClearBGPalettes
	call ClearSprites
	call ClearTilemap
	call DisableLCD
	call LoadFontsExtra
	pop de
	call .LoadGFX
	call EnableLCD
	call WaitBGMap
	ld a, [wCurMailIndex]
	ld e, a
	farcall LoadMailPalettes
	call SetDefaultBGPAndOBP
	xor a
	ldh [hJoyPressed], a
	call .loop
	call ClearBGPalettes
	call DisableLCD
	call LoadStandardFont
	jp EnableLCD

.loop
	call GetJoypad
	ldh a, [hJoyPressed]
	and PAD_A | PAD_B | PAD_START
	jr z, .loop
	vc_patch Forbid_printing_mail
if DEF(_GOLD_VC) || DEF(_SILVER_VC)
	and NO_INPUT
else
	and PAD_START
endc
	vc_patch_end
	jr nz, .pressed_start
	ret

.pressed_start
	ld a, [wJumptableIndex]
	push af
	callfar PrintMailAndExit ; printer
	pop af
	ld [wJumptableIndex], a
	jr .loop

.LoadGFX:
	ld h, d
	ld l, e
	push hl
	ld a, BANK(sPartyMail)
	call OpenSRAM
	ld de, sPartyMon1MailAuthorID - sPartyMon1Mail
	add hl, de
	ld a, [hli] ; author id
	ld [wCurMailAuthorID], a
	ld a, [hli]
	ld [wCurMailAuthorID + 1], a
	ld a, [hli] ; species
	ld [wCurPartySpecies], a
	ld b, [hl] ; type
	call CloseSRAM
	ld hl, MailGFXPointers
	ld c, 0
.loop2
	ld a, [hli]
	cp b
	jr z, .got_pointer
	cp -1
	jr z, .invalid
	inc c
	inc hl
	inc hl
	jr .loop2

.invalid
	ld hl, MailGFXPointers
	inc hl

.got_pointer
	ld a, c
	ld [wCurMailIndex], a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, .done
	pop bc
	push de
	jp hl
.done
	ret

MailGFXPointers:
; entries correspond to *MAIL_INDEX constants
	table_width 3
	dbw MAIL,  LoadMailGFX
	assert_table_length NUM_MAIL
	db -1 ; end

LoadMailGFX:
	push bc
	ld hl, vTiles2 tile $31

	ld de, MailBorderGFX
	ld c, 8 * TILE_1BPP_SIZE
	call LoadMailGFX_Color1

	ld de, MailPokeBallGFX
	ld c, 4 * TILE_1BPP_SIZE
	call LoadMailGFX_Color3

	ld de, MailBorderGFX + 6 * TILE_1BPP_SIZE
	ld c, 1 * TILE_1BPP_SIZE
	call LoadMailGFX_Color2

	call DrawMailBorder
	hlcoord 2, 15
	ld a, $3d ; underline
	call Mail_Draw16TileRow
	ld a, $39 ; poke_ball
	hlcoord 16, 13
	call Mail_Draw2x2Graphic
	hlcoord 2, 13
	call Mail_Draw2x2Graphic
	pop hl
	jp MailGFX_PlaceMessage

MailGFX_GenerateMonochromeTilesColor2:
.loop
	xor a
	ld [hli], a
	ld a, $ff
	ld [hli], a
	dec bc
	ld a, b
	or c
	jr nz, .loop
	ret

MailGFX_PlaceMessage:
	ld bc, MAIL_STRUCT_LENGTH
	ld de, wTempMail
	ld a, BANK(sPartyMail)
	call OpenSRAM
	call CopyBytes
	call CloseSRAM
	ld hl, wTempMailAuthor
	ld de, wMonOrItemNameBuffer
	ld bc, NAME_LENGTH - 1
	call CopyBytes
	ld a, "@"
	ld [wTempMailAuthor], a
	ld [wMonOrItemNameBuffer + NAME_LENGTH - 1], a
	ld de, wTempMailMessage
	hlcoord 2, 7
	call PlaceString
	ld de, wMonOrItemNameBuffer
	ld a, [de]
	and a
	ret z
	ld a, [wCurMailIndex]
	hlcoord 8, 14
	jp PlaceString

DrawMailBorder:
	hlcoord 0, 0
	ld a, $31
	ld [hli], a
	inc a
	call Mail_DrawTopBottomBorder
	inc a
	ld [hli], a
	inc a
	call Mail_DrawLeftRightBorder
	ld a, $36
	ld [hli], a
	inc a
	call Mail_DrawTopBottomBorder
	hlcoord 19, 1
	ld a, $35
	call Mail_DrawLeftRightBorder
	ld a, $38
	ld [hl], a
	ret

DrawMailBorder2:
	hlcoord 0, 0
	ld a, $31
	ld [hli], a
	inc a
	call Mail_DrawTopBottomBorder
	ld [hl], $31
	inc hl
	inc a
	call Mail_DrawLeftRightBorder
	ld [hl], $31
	inc hl
	inc a
	call Mail_DrawTopBottomBorder
	hlcoord 19, 1
	ld a, $35
	call Mail_DrawLeftRightBorder
	ld [hl], $31
	ret

Mail_Place14TileAlternatingRow:
	push af
	ld b, 14 / 2
	jr Mail_PlaceAlternatingRow

Mail_Place18TileAlternatingRow:
	push af
	ld b, 18 / 2
	; fallthrough

Mail_PlaceAlternatingRow:
.loop
	ld [hli], a
	inc a
	ld [hli], a
	dec a
	dec b
	jr nz, .loop
	ld [hl], a
	pop af
	ret

Mail_Place14TileAlternatingColumn:
	push af
	ld b, 14 / 2
	jr Mail_PlaceAlternatingColumn

Mail_Place16TileAlternatingColumn:
	push af
	ld b, 16 / 2

Mail_PlaceAlternatingColumn:
.loop
	ld [hl], a
	ld de, SCREEN_WIDTH
	add hl, de
	inc a
	ld [hl], a
	add hl, de
	dec a
	dec b
	jr nz, .loop
	ld [hl], a
	pop af
	ret

Mail_Draw7TileRow: ; unreferenced
	ld b, 7
	jr Mail_DrawRowLoop

Mail_Draw13TileRow:
	ld b, 13
	jr Mail_DrawRowLoop

Mail_Draw16TileRow:
	ld b, 16
	jr Mail_DrawRowLoop

Mail_DrawTopBottomBorder:
	ld b, SCREEN_WIDTH - 2
	jr Mail_DrawRowLoop

Mail_DrawFullWidthBorder:
	ld b, SCREEN_WIDTH
	; fallthrough

Mail_DrawRowLoop:
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	ret

Mail_DrawLeftRightBorder:
	ld b, SCREEN_HEIGHT - 2
	ld de, SCREEN_WIDTH
.loop
	ld [hl], a
	add hl, de
	dec b
	jr nz, .loop
	ret

Mail_Draw2x2Graphic:
	push af
	ld [hli], a
	inc a
	ld [hl], a
	ld bc, SCREEN_WIDTH - 1
	add hl, bc
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	pop af
	ret

Mail_Draw3x2Graphic:
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	ld bc, SCREEN_WIDTH - 2
	add hl, bc
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	ret

LoadMailGFX_Color1:
.loop
	ld a, [de]
	inc de
	ld [hli], a
	xor a
	ld [hli], a
	dec c
	jr nz, .loop
	ret

LoadMailGFX_Color2:
.loop
	xor a
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .loop
	ret

LoadMailGFX_Color3:
.loop
	ld a, [de]
	inc de
	ld [hli], a
	ld [hli], a
	dec c
	jr nz, .loop
	ret

MailPokeBallGFX:
INCBIN "gfx/mail/poke_ball.1bpp"

MailBorderGFX:
INCBIN "gfx/mail/border.1bpp"

ItemIsMail:
	ld a, d
	ld hl, MailItems
	ld de, 1
	jp IsInArray

INCLUDE "data/items/mail_items.asm"
