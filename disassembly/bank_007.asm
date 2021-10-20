; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    rlca
    add hl, bc
    ld b, b
    ld d, [hl]
    ld h, h
    ld l, b
    ld h, h
    add sp, $56
    ld a, [$c90d]
    rst $00
    xor a
    ld l, d
    rla
    ld b, b
    ret z

    ld b, e
    xor b
    ld b, h
    inc b
    ld l, e
    ld hl, $c90d
    inc [hl]
    call Call_007_6a8f
    call Call_007_402b
    call Call_007_690d
    call Call_007_405c
    call Call_007_690d
    ret


Call_007_402b:
    ld de, $704d
    call Call_007_68dc
    ld de, $7090
    call Call_007_68dc
    ld a, [wCurrGoldLo]
    ldh [$d5], a
    ld a, [wCurrGoldMid]
    ldh [$d6], a
    ld a, [wCurrGoldHi]
    ldh [$d7], a
    ld hl, $002e
    call Call_007_6880
    call Call_000_1fb9
    call Call_007_6c8f
    ld de, $44b4
    ld a, [wMenu_selection]
    call Call_007_6d4e
    ret


Call_007_405c:
    ld a, [$ca8d]
    or a
    jr z, jr_007_40c4

    ld a, $00
    ld hl, $caca
    call Call_000_224a
    ld hl, $95c0
    call Call_007_43ab
    ld a, $00
    ld hl, $caca
    call Call_000_224a
    ld hl, $8500
    call Call_007_66b1
    ld a, [$ca8d]
    cp $01
    jr z, jr_007_40c4

    ld a, $01
    ld hl, $caca
    call Call_000_224a
    ld hl, $8800
    call Call_007_43ab
    ld a, $01
    ld hl, $caca
    call Call_000_224a
    ld hl, $8600
    call Call_007_66b1
    ld a, [$ca8d]
    cp $02
    jr z, jr_007_40c4

    ld a, $02
    ld hl, $caca
    call Call_000_224a
    ld hl, $8a40
    call Call_007_43ab
    ld a, $02
    ld hl, $caca
    call Call_000_224a
    ld hl, $8700
    call Call_007_66b1

jr_007_40c4:
    call Call_007_4469
    call Call_007_4226
    ld a, [$ca8d]
    or a
    ret z

    ld a, $5c
    ld hl, $00e1
    call Call_007_4154
    ld a, $20
    ld hl, $01c1
    call Call_007_4173
    ld hl, $00e1
    ld a, $00
    call Call_007_4181
    ld a, $00
    ld hl, $9590
    call Call_007_41aa
    ld hl, $01e1
    ld a, $00
    call Call_007_41b7
    ld a, [$ca8d]
    cp $01
    ret z

    ld a, $80
    ld hl, $00e7
    call Call_007_4154
    ld a, $24
    ld hl, $01c7
    call Call_007_4173
    ld hl, $00e7
    ld a, $01
    call Call_007_4181
    ld a, $01
    ld hl, $95a0
    call Call_007_41aa
    ld hl, $01e7
    ld a, $01
    call Call_007_41b7
    ld a, [$ca8d]
    cp $02
    ret z

    ld a, $a4
    ld hl, $00ed
    call Call_007_4154
    ld a, $28
    ld hl, $01cd
    call Call_007_4173
    ld hl, $00ed
    ld a, $02
    call Call_007_4181
    ld a, $02
    ld hl, $95b0
    call Call_007_41aa
    ld hl, $01ed
    ld a, $02
    call Call_007_41b7
    ret


Call_007_4154:
    ld c, a
    ld a, [$c92f]
    or a
    ret nz

    ld a, c
    ld c, $06

jr_007_415d:
    push hl
    push af
    call Call_007_6880
    pop af
    ld b, $06

jr_007_4165:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_007_4165

    pop hl
    ld de, $0020
    add hl, de
    dec c
    jr nz, jr_007_415d

    ret


Call_007_4173:
    push af
    call Call_007_6880
    pop af
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl], a
    inc a
    ret


Call_007_4181:
    push af
    ld a, l
    ld [$c820], a
    ld a, h
    ld [$c821], a
    pop af
    push af
    ld hl, $caca
    call Call_000_2229
    ld a, [hl]
    ld [$c81e], a
    pop af
    add $04
    ld [$c81f], a
    ld a, [$c92f]
    or a
    ret nz

    ld hl, $1706
    rst $10
    ld hl, $1708
    rst $10
    ret


Call_007_41aa:
    push hl
    ld hl, $cacc
    call Call_000_2229
    ld a, [hl]
    pop hl
    call Call_007_6a3d
    ret


Call_007_41b7:
    push hl
    ldh [$d5], a
    call Call_007_6880
    ld a, $de
    ld [hl+], a
    ld a, $df
    ld [hl+], a
    ld a, $e4
    ld [hl+], a
    ldh a, [$d5]
    add $59
    inc hl
    inc hl
    ld [hl-], a
    dec hl
    push hl
    ld hl, $cb0c
    ldh a, [$d5]
    call Call_000_224a
    pop hl
    ld c, a
    ld b, $00
    call Call_007_7007
    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    push hl
    call Call_007_6880
    ld a, $e0
    ld [hl+], a
    ld a, $e1
    ld [hl+], a
    ld a, $e4
    ld [hl+], a
    push hl
    ld hl, $cb11
    ldh a, [$d5]
    call Call_000_224f
    pop hl
    call Call_007_6fe2
    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    push hl
    call Call_007_6880
    ld a, $e0
    ld [hl+], a
    ld a, $e2
    ld [hl+], a
    ld a, $e4
    ld [hl+], a
    push hl
    ld hl, $cb15
    ldh a, [$d5]
    call Call_000_224f
    pop hl
    call Call_007_6fe2
    pop hl
    ret


Call_007_4226:
    ld a, [$c92f]
    or a
    ret z

    ld a, $59
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    ld hl, $95c0
    ld de, $1401
    call Call_007_69b6
    ld de, $ca42
    ld hl, $93c0
    call Call_007_69ef
    ld de, $7cee
    call Call_007_68dc
    ld b, $00
    ld c, $00

jr_007_4251:
    push bc
    ld hl, $ca94
    ld a, b
    call Call_000_267e
    pop bc
    jr z, jr_007_425d

    inc c

jr_007_425d:
    inc b
    ld a, b
    cp $f0
    jr nz, jr_007_4251

    ld b, $00
    ld hl, $0110
    call Call_007_6880
    call Call_000_2071
    ld a, [$cab8]
    ld c, a
    ld b, $00
    ld hl, $00ae
    call Call_007_6880
    call Call_000_20ad
    ld a, [$cab7]
    ld c, a
    ld b, $00
    ld hl, $00b1
    call Call_007_6880
    call Call_000_20ad
    call Call_007_42b4
    ret


Call_007_4290:
    ld a, [$c92f]
    or a
    ret z

    ld a, [$cab8]
    ld c, a
    ld b, $00
    ld hl, $00ae
    call Call_007_6889
    call Call_000_20ad
    ld a, [$cab7]
    ld c, a
    ld b, $00
    ld hl, $00b1
    call Call_007_6889
    call Call_000_20ad
    ret


Call_007_42b4:
    ld hl, HeaderOldLicenseeCode
    call Call_007_42cd
    ld hl, $0151
    call Call_007_4301
    ld hl, $016b
    call Call_007_4331
    ld hl, $0171
    call Call_007_436e
    ret


Call_007_42cd:
    call Call_007_6880
    push hl
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_007_42d8:
    push de
    ld a, [de]
    or a
    jr z, jr_007_42ee

    cp $02
    jr z, jr_007_42ee

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_007_42ee

    inc c

jr_007_42ee:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_007_42d8

    pop hl
    ld b, $00
    call Call_000_2082
    ret


Call_007_4301:
    call Call_007_6880
    push hl
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_007_430c:
    push de
    ld a, [de]
    or a
    jr z, jr_007_431e

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr z, jr_007_431e

    inc c

jr_007_431e:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_007_430c

    pop hl
    ld b, $00
    call Call_000_2082
    ret


Call_007_4331:
    call Call_007_6880
    ld c, $00
    ld a, [$ca41]
    bit 7, a
    jr z, jr_007_4368

    push hl
    ld hl, $b124
    ld b, $14
    ld c, $00

jr_007_4345:
    push hl
    call Call_000_20ee
    or a
    jr z, jr_007_435b

    ld a, l
    add $63
    ld l, a
    ld a, h
    adc $00
    ld h, a
    call Call_000_20ee
    or a
    jr nz, jr_007_435b

    inc c

jr_007_435b:
    pop hl
    ld a, l
    add $95
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_007_4345

    pop hl

jr_007_4368:
    ld b, $00
    call Call_000_2082
    ret


Call_007_436e:
    call Call_007_6880
    ld c, $00
    ld a, [$ca41]
    bit 7, a
    jr z, jr_007_43a5

    push hl
    ld hl, $b124
    ld b, $14
    ld c, $00

jr_007_4382:
    push hl
    call Call_000_20ee
    or a
    jr z, jr_007_4398

    ld a, l
    add $63
    ld l, a
    ld a, h
    adc $00
    ld h, a
    call Call_000_20ee
    or a
    jr z, jr_007_4398

    inc c

jr_007_4398:
    pop hl
    ld a, l
    add $95
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_007_4382

    pop hl

jr_007_43a5:
    ld b, $00
    call Call_000_2082
    ret


Call_007_43ab:
    cp $ff
    ret z

    push hl
    ld l, a
    ld h, $00
    add hl, hl
    ld a, l
    add $9f
    ld l, a
    ld a, h
    adc $2b
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    ld a, [$c92f]
    or a
    ret nz

    call Call_000_1577
    ret


    call Call_007_4290
    ld hl, wMenu_selection
    res 7, [hl]
    ld a, [wJoypad_current_frame]
    and $30
    jr z, jr_007_43e1

    ld a, [wMenu_selection]
    xor $01
    ld [wMenu_selection], a
    jr jr_007_43f0

jr_007_43e1:
    ld a, [wJoypad_current_frame]
    and $c0
    jr z, jr_007_43f6

    ld a, [wMenu_selection]
    xor $02
    ld [wMenu_selection], a

jr_007_43f0:
    xor a
    ld [$c914], a
    jr jr_007_445c

jr_007_43f6:
    ld a, [wJoypad_current_frame]
    and $08
    jr z, jr_007_441b

    ld a, [$c92f]
    xor $01
    ld [$c92f], a
    ld hl, $c5a0
    ld bc, $0100
    ld a, $e0
    call Call_000_12c7
    call Call_007_690d
    call Call_007_405c
    call Call_007_690d
    jr jr_007_445c

jr_007_441b:
    ld a, [wJoypad_current_frame]
    and $06
    jr z, jr_007_442c

    ld hl, $c90d
    inc [hl]
    ld hl, $c90d
    inc [hl]
    jr jr_007_445c

jr_007_442c:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jr z, jr_007_445c

    ld a, $59
    call Call_000_1b2c
    ld hl, $c90d
    inc [hl]
    call Call_007_6a8f
    call Call_007_402b
    call Call_007_690d
    xor a
    ld [$c90e], a
    ld hl, wMenu_selection
    set 7, [hl]
    ld hl, wOPTN_and_Item_selection
    ld bc, $0007
    ld a, $00
    call Call_000_12c7
    call Call_007_4469

jr_007_445c:
    ld de, $44b4
    ld a, [wMenu_selection]
    call Call_007_6c94
    call Call_007_6779
    ret


Call_007_4469:
    ld hl, $9200
    ld a, $01
    call Call_007_4482
    ld hl, $9240
    ld a, $02
    call Call_007_4482
    ld hl, $9280
    ld a, $03
    call Call_007_4482
    ret


Call_007_4482:
    ld b, a
    ld a, [$ca8d]
    cp b
    jr nc, jr_007_4498

    ld b, $20

jr_007_448b:
    ld a, $ff
    call Write_gfx_tile_and_inc_HL
    xor a
    call Write_gfx_tile_and_inc_HL
    dec b
    jr nz, jr_007_448b

    ret


jr_007_4498:
    push hl
    ld a, b
    dec a
    ld hl, $cac2
    call Call_000_2229
    ld e, l
    ld d, h
    pop hl
    call Call_007_69ef
    ret


    ld a, [wMenu_selection]
    rst $00
    cp [hl]
    ld b, h
    adc d
    ld c, d
    ld h, d
    ld d, e
    sub h
    ld e, h
    ld hl, $2600
    nop
    ld h, c
    nop
    ld h, [hl]
    nop
    rst $38
    rst $38
    ld a, [$c90e]
    rst $00
    ldh [rLY], a
    ei
    ld b, l
    ld d, l
    ld b, [hl]
    xor e
    ld b, [hl]
    or b
    ld b, [hl]
    cp c
    ld b, [hl]
    jp z, $fe46

    ld b, a
    jr nc, jr_007_451c

    xor e
    ld c, b
    and $48
    ld [de], a
    ld c, d
    ld e, d
    ld c, d
    ld h, [hl]
    ld c, d
    ld a, b
    ld c, d
    call Call_007_4469

Call_007_44e3:
    ld de, $70ad
    call Call_007_68dc
    ld de, $70f7
    call Call_007_68dc
    ld de, $71af
    call Call_007_68dc
    ld a, [wOPTN_and_Item_selection]
    ld [$cac0], a
    call Call_007_466d
    call Call_007_4689
    ld de, $724f
    call Call_007_68dc
    call Call_007_451e
    call Call_007_6c8f
    ld de, $4632
    ld a, [wOPTN_and_Item_selection]
    call Call_007_6d4e
    call Call_007_690d
    ld hl, $c90e

jr_007_451c:
    inc [hl]
    ret


Call_007_451e:
    call Call_007_45ee
    ld hl, $cac2
    call Call_007_6da8
    ld e, l
    ld d, h
    ld hl, $93c0
    call Call_007_69ef
    ld hl, $cacc
    call Call_007_6dba
    ld hl, $9300
    call Call_007_6a3d
    ld hl, $cb0c
    call Call_007_6dba
    push af
    ld hl, $cb0d
    call Call_007_6da8
    pop af
    cp [hl]
    ld a, $90
    jr c, jr_007_4550

    ld a, $ac

jr_007_4550:
    ld hl, $8800
    call Call_007_6a41
    ld hl, $cb0c
    call Call_007_6dba
    ld c, a
    ld b, $00
    ld hl, $0031
    call Call_007_6880
    call Call_000_2082
    ld hl, $cb19
    ld de, $0070
    call Call_007_45e2
    ld hl, $cb1b
    ld de, $00b0
    call Call_007_45e2
    ld hl, $cb1d
    ld de, $00f0
    call Call_007_45e2
    ld hl, $cb1f
    ld de, $0130
    call Call_007_45e2
    ld hl, $cb21
    ld de, $0170
    call Call_007_45e2
    ld hl, $cb11
    ld de, $01cc
    call Call_007_45e2
    ld hl, $cb13
    ld de, $01d0
    call Call_007_45e2
    ld hl, $cb15
    ld de, $020c
    call Call_007_45e2
    ld hl, $cb17
    ld de, $0210
    call Call_007_45e2
    ld hl, $cb0b
    call Call_007_6dba
    ld b, a
    ld hl, $01f0
    call Call_007_6880
    bit 0, b
    ld a, $e0
    jr z, jr_007_45ce

    ld a, $d7

jr_007_45ce:
    ld [hl+], a
    bit 2, b
    ld a, $e0
    jr z, jr_007_45d7

    ld a, $d8

jr_007_45d7:
    ld [hl+], a
    bit 7, b
    ld a, $e0
    jr z, jr_007_45e0

    ld a, $d9

jr_007_45e0:
    ld [hl], a
    ret


Call_007_45e2:
    push de
    call Call_007_6dcd
    pop hl
    call Call_007_6880
    call Call_000_2071
    ret


Call_007_45ee:
    ld a, [wGameState]
    bit 1, a
    ret z

    ld a, [wOPTN_and_Item_selection]
    ld [$cac0], a
    ret


    call Call_007_463a
    jr z, jr_007_460f

    call Call_007_45ee
    call Call_007_451e
    call Call_007_690d
    call Call_007_466d
    call Call_007_4689

jr_007_460f:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_007_4620

    call Call_007_6a8f
    ld a, $01
    ld [$c90d], a
    jr jr_007_4631

jr_007_4620:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_007_4631

    ld a, $59
    call Call_000_1b2c
    ld hl, $c90e
    inc [hl]

Jump_007_4631:
jr_007_4631:
    ret


    ld h, c
    nop
    and c
    nop
    pop hl
    nop
    rst $38
    rst $38

Call_007_463a:
    ld de, $4632
    ld hl, wOPTN_and_Item_selection
    ld a, [$ca8d]
    ld b, a
    ld a, [hl]
    push af
    call Call_007_6c3f
    pop af
    ld hl, wOPTN_and_Item_selection
    and $7f
    ld b, a
    ld a, [hl]
    and $7f
    cp b
    ret


Call_007_4655:
    call Call_007_466d
    call Call_007_4689
    ld de, $724f
    call Call_007_68dc
    call Call_007_690d
    ld hl, $c90e
    inc [hl]
    xor a
    ld [$c90f], a
    ret


Call_007_466d:
    ld hl, $caca
    call Call_007_6dba
    ld l, a
    ld h, $00
    add hl, hl
    ld a, l
    add $9f
    ld l, a
    ld a, h
    adc $2b
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $8b00
    call Call_000_1577
    ret


Call_007_4689:
    ld hl, $0141
    ld a, l
    ld [$c820], a
    ld a, h
    ld [$c821], a
    ld hl, $caca
    call Call_007_6dba
    ld [$c81e], a
    ld a, $04
    ld [$c81f], a
    ld hl, $1706
    rst $10
    ld hl, $1708
    rst $10
    ret


    ld hl, $c90e
    inc [hl]
    ret


    ld hl, $c90e
    inc [hl]
    ld hl, $c90e
    inc [hl]
    ret


    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ret


Call_007_46ca:
    call Call_007_46d2
    ld hl, $c90e
    inc [hl]
    ret


Call_007_46d2:
    call Call_007_45ee
    ld hl, $cac2
    call Call_007_6da8
    ld e, l
    ld d, h
    ld hl, $93c0
    call Call_007_69ef
    ld hl, $cacc
    call Call_007_6dba
    ld hl, $9300
    call Call_007_6a3d
    ld hl, $cb0c
    call Call_007_6dba
    push af
    ld hl, $cb0d
    call Call_007_6da8
    pop af
    cp [hl]
    ld a, $90
    jr c, jr_007_4704

    ld a, $ac

jr_007_4704:
    ld hl, $8800
    call Call_007_6a41
    call Call_007_6d8b
    ld d, a
    ld hl, $0107
    rst $10
    ld a, d
    ld [$c823], a
    ld a, $0a
    ld [$c822], a
    ld hl, $9330
    ld de, $0901
    call Call_007_69b6
    ld hl, $cacb
    call Call_007_6dba
    ld c, a
    push bc
    ld hl, $cb23
    call Call_007_6dba
    ld hl, $95b0
    pop bc
    call Call_007_6942
    ld hl, $caca
    call Call_007_6dba
    ld [$c823], a
    ld a, $05
    ld [$c822], a
    ld hl, $94c0
    ld de, $0901
    call Call_007_69b6
    ld hl, $cacd
    call Call_007_6da8
    ld e, l
    ld d, h
    ld hl, $9550
    call Call_007_69ef
    ld de, $727b
    call Call_007_68dc
    ld de, $7333
    call Call_007_68dc
    ld hl, $cb0c
    call Call_007_6dba
    ld c, a
    ld b, $00
    ld hl, $0031
    call Call_007_6880
    call Call_000_2082
    ld hl, $cb0e
    call Call_007_6da8
    ld a, [hl+]
    ldh [$d5], a
    ld a, [hl+]
    ldh [$d6], a
    ld a, [hl]
    ldh [$d7], a
    ld hl, $016b
    call Call_007_6880
    call Call_000_1f90
    ld hl, $cb0e
    call Call_007_6da8
    ld a, [hl+]
    ldh [$d5], a
    ld a, [hl+]
    ldh [$d6], a
    ld a, [hl]
    ldh [$d7], a
    ld a, [$cac0]
    push af
    call Call_007_6d8b
    ld [$cac0], a
    ld hl, $cb0c
    call Call_000_223b
    ld a, [hl]
    cp $63
    jr z, jr_007_47ca

    push af
    ld a, [$cac0]
    ld hl, $cb0d
    call Call_000_223b
    pop af
    cp [hl]
    jr z, jr_007_47ca

    ld hl, $1300
    rst $10

jr_007_47ca:
    pop af
    ld [$cac0], a
    ld hl, $cb0e
    call Call_007_6da8
    ldh a, [$d5]
    sub [hl]
    inc hl
    ldh [$d5], a
    ldh a, [$d6]
    sbc [hl]
    inc hl
    ldh [$d6], a
    ldh a, [$d7]
    sbc [hl]
    ldh [$d7], a
    ld hl, $020b
    call Call_007_6880
    call Call_000_1f90
    call Call_007_690d
    ld hl, $caca
    call Call_007_6dba
    ld hl, $8500
    call Call_007_66b1
    ret


    call Call_007_463a
    jr z, jr_007_480a

    ld a, $0d
    ld [$c90e], a
    jr jr_007_482f

jr_007_480a:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_007_481b

    call Call_007_44e3
    ld a, $01
    ld [$c90e], a
    jr jr_007_482f

jr_007_481b:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_007_482c

    ld a, $59
    call Call_000_1b2c
    ld hl, $c90e
    inc [hl]

Jump_007_482c:
    call Call_007_66c8

jr_007_482f:
    ret


    ld de, $71f7
    call Call_007_68a0
    call Call_007_486b
    ld de, $737b
    call Call_007_68dc
    call Call_007_690d
    ld hl, $caca
    call Call_007_6dba
    ld l, a
    ld h, $00
    add hl, hl
    ld a, l
    add $9f
    ld l, a
    ld a, h
    adc $2b
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $8b00
    call Call_000_1577
    ld de, $724f
    call Call_007_68dc
    call Call_007_690d
    ld hl, $c90e
    inc [hl]
    ret


Call_007_486b:
    ld hl, $caea
    call Call_007_6da8
    ld e, l
    ld d, h
    ld hl, $9650
    call Call_007_488e
    call Call_007_488e
    call Call_007_488e
    ld hl, $8830
    call Call_007_488e
    call Call_007_488e
    call Call_007_488e
    call Call_007_488e

Call_007_488e:
    push de
    push hl
    ld a, [de]
    ld [$c823], a
    ld a, $06
    ld [$c822], a
    ld de, $0901
    call Call_007_69b6
    pop hl
    ld a, l
    add $90
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


    call Call_007_463a
    jr z, jr_007_48bf

    call Call_007_45ee
    call Call_007_486b
    call Call_007_690d
    call Call_007_466d
    call Call_007_4689

Call_007_48bf:
jr_007_48bf:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_007_48d4

    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    jr jr_007_48e5

jr_007_48d4:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_007_48e5

    ld a, $59
    call Call_000_1b2c
    ld hl, $c90e
    inc [hl]

Jump_007_48e5:
jr_007_48e5:
    ret


Call_007_48e6:
    ld de, $746b
    call Call_007_68dc
    call Call_007_690d
    call Call_007_48f7
    ld hl, $c90e
    inc [hl]
    ret


Call_007_48f7:
    ld hl, $cb44
    call Call_007_6da8
    ld e, l
    ld d, h
    ld hl, $88c0
    call Call_007_69ef
    ld hl, $cad8
    call Call_007_6da8
    ld e, l
    ld d, h
    ld hl, $8900
    call Call_007_69ef
    ld hl, $cad6
    call Call_007_6dba
    cp $ff
    jr z, jr_007_4927

    ld [$da31], a
    ld hl, $0301
    rst $10
    ld a, [$da33]

jr_007_4927:
    ld c, a
    push bc
    ld hl, $cb4c
    call Call_007_6dba
    ld hl, $95e0
    pop bc
    call Call_007_6942
    ld hl, $cad6
    call Call_007_6dba
    ld [$c823], a
    ld a, $05
    ld [$c822], a
    ld hl, $94c0
    ld de, $0901
    call Call_007_69a5
    ld hl, $cb4d
    call Call_007_6da8
    ld e, l
    ld d, h
    ld hl, $8940
    call Call_007_69ef
    ld hl, $cae1
    call Call_007_6da8
    ld e, l
    ld d, h
    ld hl, $8980
    call Call_007_69ef
    ld hl, $cad7
    call Call_007_6dba
    cp $ff
    jr z, jr_007_497d

    ld [$da31], a
    ld hl, $0301
    rst $10
    ld a, [$da33]

jr_007_497d:
    ld c, a
    push bc
    ld hl, $cb55
    call Call_007_6dba
    ld hl, $9660
    pop bc
    call Call_007_6942
    ld hl, $cad7
    call Call_007_6dba
    ld [$c823], a
    ld a, $05
    ld [$c822], a
    ld hl, $9550
    ld de, $0901
    call Call_007_69a5
    ld de, $755b
    call Call_007_68dc
    ld de, $75db
    call Call_007_68dc
    call Call_007_690d
    ld hl, $cad7
    call Call_007_6dba
    cp $ff
    jr nz, jr_007_49c6

    ld de, $7223
    call Call_007_68dc
    call Call_007_690d
    ret


jr_007_49c6:
    ld l, a
    ld h, $00
    add hl, hl
    ld a, l
    add $9f
    ld l, a
    ld a, h
    adc $2b
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld de, $724f
    call Call_007_68dc
    ld de, $765b
    call Call_007_68dc
    call Call_007_690d
    ld hl, $cad6
    call Call_007_6dba
    ld l, a
    ld h, $00
    add hl, hl
    ld a, l
    add $9f
    ld l, a
    ld a, h
    adc $2b
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $cad6
    call Call_007_6dba
    ld hl, $8600
    call Call_007_66b1
    ld hl, $cad7
    call Call_007_6dba
    ld hl, $8700
    call Call_007_66b1
    ret


    call Call_007_463a
    jr z, jr_007_4a1e

    ld a, $0e
    ld [$c90e], a
    jr jr_007_4a59

Call_007_4a1e:
jr_007_4a1e:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_007_4a45

    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld de, $71f7
    call Call_007_68dc
    call Call_007_690d
    ld de, $746b
    call Call_007_68dc
    call Call_007_690d
    jr jr_007_4a59

jr_007_4a45:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_007_4a56

    ld a, $59
    call Call_000_1b2c
    ld hl, $c90e
    inc [hl]

Jump_007_4a56:
    call Call_007_670e

jr_007_4a59:
    ret


    call Call_007_6a8f
    call Call_007_690d
    ld a, $01
    ld [$c90d], a
    ret


    call Call_007_45ee
    call Call_007_46d2
    call Call_007_466d
    call Call_007_4689
    ld a, $07
    ld [$c90e], a
    ret


    call Call_007_45ee
    call Call_007_48f7
    call Call_007_466d
    call Call_007_4689
    ld a, $0b
    ld [$c90e], a
    ret


    ld a, [$c90e]
    rst $00
    or b
    ld c, d
    ret z

    ld c, d
    or d
    ld c, e
    ld h, c
    ld c, h
    rst $08
    ld c, h
    ld d, c
    ld c, l
    xor h
    ld c, [hl]
    db $fd
    ld c, [hl]
    add c
    ld c, a
    and a
    ld c, a
    dec b
    ld d, d
    inc de
    ld d, d
    inc d
    ld d, d
    ld h, l
    ld d, d
    ld a, d
    ld d, d
    push bc
    ld d, d
    scf
    ld d, e
    call Call_007_4b69
    call Call_007_4b21
    ld hl, $c90e
    inc [hl]
    call Call_007_4b99
    ld a, [$c90f]	;load number of filled inv slots into a
    or a
    ret nz		;check to see if it's 0

    ld a, $0c		;may have something to do with the "Empty" text in the bag.
    ld [$c90e], a
    ret


    call Call_007_4b99
    call Call_007_6a8f
    ld de, $704d
    call Call_007_68dc
    ld de, $7090
    call Call_007_68dc
    ld de, $7748
    call Call_007_68dc
    ld de, $77d9
    call Call_007_68dc
    ld a, [wCurrGoldLo]
    ldh [$d5], a
    ld a, [wCurrGoldMid]
    ldh [$d6], a
    ld a, [wCurrGoldHi]
    ldh [$d7], a
    ld hl, $002e
    call Call_007_6880
    call Call_000_1fb9
    call Call_007_6c8f
    ld de, $44b4
    ld a, [wMenu_selection]
    call Call_007_6d4e
    ld de, $4c53
    ld b, $05
    ld a, [$c90f]
    ld c, a
    ld hl, wOPTN_and_Item_selection
    call Call_007_6d2c
    call Call_007_690d
    ld hl, $c90e
    inc [hl]
    ret


Call_007_4b21:
    ld de, wInventory
    ld a, [wPLAN_selection]
    ld b, a
    add a
    add a
    add b
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $9700
    call Call_007_4b46
    ld hl, $8800
    call Call_007_4b46
    call Call_007_4b46
    call Call_007_4b46
    call Call_007_4b46

Call_007_4b46:
    push de
    push hl
    ld a, [de]		;load item ID into a and check if the slot is empty
    cp $ff
    jr nz, jr_007_4b4f

    ld a, $00

jr_007_4b4f:
    ld [$c823], a
    ld a, $08
    ld [$c822], a
    ld de, $0901
    call Call_007_69b6
    pop hl
    ld a, l
    add $90
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


Call_007_4b69:
    ld hl, wInventory
    ld a, [wPLAN_selection]
    ld b, a
    add a
    add a
    add b
    ld b, a
    ld a, [wOPTN_and_Item_selection]
    and $7f
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]		;check if inventory slot is empty
    cp $ff
    jr nz, jr_007_4b87

    ld a, $00

jr_007_4b87:
    ld [$c823], a
    ld a, $09
    ld [$c822], a
    ld hl, $94c0
    ld de, $1202
    call Call_007_69b6
    ret

;Possible name: CountFilledInvSlots
Call_007_4b99:			;checks for first empty inventory slot. Places the number of full slots in reg c
    ld hl, wInventory
    ld b, $14			;num inventroy slots
    ld c, $00			;number of filled inv slots

jr_007_4ba0:
    ld a, [hl+]
    cp $00
    jr z, jr_007_4bad		;if item ID is 0, skip next check

    cp $ff
    jr z, jr_007_4bad		;if inv slot is blank, skip next code block

    inc c			;if slot was not empty, increment c and loop again. 
    dec b
    jr nz, jr_007_4ba0

jr_007_4bad:
    ld a, c
    ld [$c90f], a		;c90f is used for total number of items in inventory. May be others. 
    ret


    ld de, $4c53
    ld hl, wOPTN_and_Item_selection
    ld a, [$c90f]
    ld c, a
    ld b, $05
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_007_6b7f
    pop af
    ld hl, wOPTN_and_Item_selection
    and $7f
    ld b, a
    ld a, [hl]
    and $7f
    cp b
    jr z, jr_007_4bd6

    call Call_007_4b69

jr_007_4bd6:
    pop af
    ld hl, wPLAN_selection
    cp [hl]
    jr z, jr_007_4be3

    call Call_007_4b21
    call Call_007_4b69

jr_007_4be3:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_007_4bf4

    call Call_007_6a8f
    ld a, $01
    ld [$c90d], a
    jr jr_007_4c27

jr_007_4bf4:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_007_4c07

    ld a, $59
    call Call_000_1b2c
    ld hl, $c90e
    inc [hl]
    jr jr_007_4c27

Jump_007_4c07:
    ld a, [wJoypad_current_frame]
    bit 2, a
    jp z, Jump_007_4c27

    ld a, $59
    call Call_000_1b2c
    call Call_007_4c28
    xor a
    ld [wOPTN_and_Item_selection], a
    ld [wPLAN_selection], a
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ret


Jump_007_4c27:
jr_007_4c27:
    ret


Call_007_4c28:
    ld hl, wInventory
    ld b, $14

jr_007_4c2d:
    ld a, [hl]
    or a
    jr nz, jr_007_4c33

    ld [hl], $ff

jr_007_4c33:
    inc hl
    dec b
    jr nz, jr_007_4c2d

    ld c, $14

jr_007_4c39:
    ld hl, wInventory
    ld de, $ca52
    ld b, $13

jr_007_4c41:
    ld a, [de]
    cp [hl]
    jr nc, jr_007_4c4a

    push af
    ld a, [hl]
    ld [de], a
    pop af
    ld [hl], a

jr_007_4c4a:
    inc de
    inc hl
    dec b
    jr nz, jr_007_4c41

    dec c
    jr nz, jr_007_4c39

    ret


    sub c
    ld bc, $0069
    xor c
    nop
    jp hl


    nop
    add hl, hl
    ld bc, $0169
    rst $38
    rst $38
    call Call_007_6a8f
    call Call_007_6c8f
    ld de, $704d
    call Call_007_68dc
    ld de, $44b4
    ld a, [wMenu_selection]
    call Call_007_6d4e
    ld de, $7090
    call Call_007_68dc
    ld a, [wCurrGoldLo]
    ldh [$d5], a
    ld a, [wCurrGoldMid]
    ldh [$d6], a
    ld a, [wCurrGoldHi]
    ldh [$d7], a
    ld hl, $002e
    call Call_007_6880
    call Call_000_1fb9
    ld de, $7748
    call Call_007_68dc
    ld de, $4c53
    ld b, $05
    ld a, [$c90f]
    ld c, a
    ld hl, wOPTN_and_Item_selection
    call Call_007_6d2c
    ld de, $77d9
    call Call_007_68dc
    ld de, $798b
    call Call_007_68dc
    ld de, $4d4b
    ld a, [$c8dd]
    call Call_007_6d4e
    call Call_007_690d
    ld de, $560b
    ld hl, $8e50
    call Call_000_1577
    ld hl, $c90e
    inc [hl]
    ret


    ld de, $4d4b
    ld hl, $c8dd
    ld b, $02
    call Call_007_6c08
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_007_4cef

    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    jr jr_007_4d4a

jr_007_4cef:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_007_4d4a

    ld hl, wInventory
    ld a, [wPLAN_selection]
    ld b, a
    add a
    add a
    add b
    ld b, a
    ld a, [wOPTN_and_Item_selection]
    and $7f
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]		;loads selected item's ID into a
    ld [$da5e], a
    ld hl, $0302
    rst $10
    
    ld a, $59
    call Call_000_1b2c
    ld hl, $c90e
    inc [hl]
    ld a, [$c8dd]
    cp $80
    jr z, jr_007_4d4a

    ld hl, $c90e
    inc [hl]
    ld hl, $c90e
    inc [hl]
    ld hl, $c90e
    inc [hl]
    ld hl, $c90e
    inc [hl]
    ld hl, $c90e
    inc [hl]
    ld hl, $c90e
    inc [hl]
    ld hl, $c90e
    inc [hl]
    ld hl, $c90e
    inc [hl]
    ld hl, $c90e
    inc [hl]

Jump_007_4d4a:
jr_007_4d4a:
    ret

    db $61, $00, $a1, $00, $ff, $ff
        
    ld a, [$da66]
    cp $02
    jr z, jr_007_4d6b

    cp $03
    jr z, jr_007_4d6b

    ld a, [$da67]
    cp $00
    jr z, jr_007_4d74

    cp $02
    jr z, jr_007_4d74

    cp $04
    jr z, jr_007_4d74

jr_007_4d6b:
    ld hl, $c90e
    inc [hl]
    ld hl, $c90e
    inc [hl]
    ret


jr_007_4d74:
    ld de, $7748
    call Call_007_68dc
    ld de, $4c53
    ld b, $05
    ld a, [$c90f]
    ld c, a
    ld hl, wOPTN_and_Item_selection
    call Call_007_6d2c
    ld de, $79be
    call Call_007_68dc
    call Call_007_4da6
    call Call_007_6c8f
    ld de, $4ef5
    ld a, [$c8de]
    call Call_007_6d4e
    call Call_007_690d
    ld hl, $c90e
    inc [hl]
    ret


Call_007_4da6:
    ld a, [wPLAN_selection]
    ld b, a
    add a
    add a
    add b
    ld b, a
    ld a, [wOPTN_and_Item_selection]
    and $7f
    add b
    ld hl, wInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$da5e], a
    cp $05
    jp z, Jump_007_4e56

    cp $06
    jp z, Jump_007_4e56

    cp $0e
    jp z, Jump_007_4e56

    cp $08
    jp z, Jump_007_4eab

    cp $09
    jp z, Jump_007_4eab

    cp $0b
    jp z, Jump_007_4eab

    cp $0f
    jp z, Jump_007_4eab

    cp $10
    jp z, Jump_007_4eab

    cp $11
    jp z, Jump_007_4eab

    cp $12
    jp z, Jump_007_4eab

    cp $13
    jp z, Jump_007_4eab

    cp $14
    jp z, Jump_007_4eab

    cp $15
    jp z, Jump_007_4eab

    cp $16
    jp z, Jump_007_4eab

    cp $17
    jp z, Jump_007_4eab

    cp $1f
    jp z, Jump_007_4eab

    cp $20
    jp z, Jump_007_4eab

    cp $21
    jp z, Jump_007_4eab

    cp $22
    jp z, Jump_007_4eab

    cp $23
    jp z, Jump_007_4eab

    cp $24
    jp z, Jump_007_4eab

    ld de, $7957
    call Call_007_68dc
    ld hl, $cb11
    ld a, [$c8de]
    call Call_000_224f
    ld hl, $0201
    call Call_007_6880
    call Call_000_2071
    ld hl, $cb13
    ld a, [$c8de]
    call Call_000_224f
    ld hl, $0205
    call Call_007_6880
    call Call_000_2071
    jr jr_007_4e80

Jump_007_4e56:
    ld de, $7a08
    call Call_007_68dc
    ld hl, $cb15
    ld a, [$c8de]
    call Call_000_224f
    ld hl, $0201
    call Call_007_6880
    call Call_000_2071
    ld hl, $cb17
    ld a, [$c8de]
    call Call_000_224f
    ld hl, $0205
    call Call_007_6880
    call Call_000_2071

jr_007_4e80:
    ld hl, $cb0b
    ld a, [$c8de]
    call Call_000_224a
    ld b, a
    ld hl, $01c5
    call Call_007_6880
    bit 0, b
    ld a, $e0
    jr z, jr_007_4e98

    ld a, $d7

jr_007_4e98:
    ld [hl+], a
    bit 2, b
    ld a, $e0
    jr z, jr_007_4ea1

    ld a, $d8

jr_007_4ea1:
    ld [hl+], a
    bit 7, b
    ld a, $e0
    jr z, jr_007_4eaa

    ld a, $d9

jr_007_4eaa:
    ld [hl], a

Jump_007_4eab:
    ret


    ld de, $4ef5
    ld hl, $c8de
    ld a, [$ca8d]
    ld b, a
    ld a, [hl]
    push af
    call Call_007_6c08
    pop af
    ld hl, $c8de
    and $7f
    ld b, a
    ld a, [hl]
    and $7f
    cp b
    jr z, jr_007_4ece

    call Call_007_4da6
    call Call_007_690d

jr_007_4ece:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_007_4ee3

    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    jr jr_007_4ef4

jr_007_4ee3:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_007_4ef4

    ld a, $59
    call Call_000_1b2c
    ld hl, $c90e
    inc [hl]

Jump_007_4ef4:
jr_007_4ef4:
    ret


    pop hl
    nop
    ld hl, $6101
    ld bc, $ffff
    ld de, $ca42
    ld hl, $c180
    call Call_000_0c80
    ld hl, $cac2
    ld a, [$c8de]
    call Call_000_2229
    ld e, l
    ld d, h
    ld hl, $c190
    call Call_000_0c80
    ld a, [wPLAN_selection]
    ld b, a
    add a
    add a
    add b
    ld b, a
    ld a, [wOPTN_and_Item_selection]
    and $7f
    add b
    ld hl, wInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$da5e], a
    ld l, a
    ld h, $08
    ld de, $c1a0
    call Call_000_097a
    ld a, [$da66]
    cp $00
    jr z, jr_007_4f55

    cp $01
    jr z, jr_007_4f55

    ld h, $0d
    ld a, $01
    ld l, a
    call Call_000_096d
    ld a, $ff
    ld [$da5e], a
    jr jr_007_4f68

jr_007_4f55:
    ld h, $0d
    ld a, [$da69]
    ld l, a
    call Call_000_096d
    ld a, [$c8de]
    ld [$da60], a
    ld hl, $0303
    rst $10

jr_007_4f68:
    ld de, $2e07
    call Call_007_68dc
    call Call_007_690d
    ld hl, $c90e
    inc [hl]
    ld a, [$da5e]
    cp $1d
    ret nz

    ld a, $57
    call Call_000_1b2c
    ret


    ld a, [$c825]
    or a
    ret nz

    ld h, $0d
    ld a, [$da6a]
    ld l, a
    or a
    jr nz, jr_007_4f96

    ld a, [$da5e]
    cp $ff
    jr nz, jr_007_4fa2

jr_007_4f96:
    ld a, [$da5e]
    cp $ff
    jr nz, jr_007_4f9f

    ld l, $02

jr_007_4f9f:
    call Call_000_096d

jr_007_4fa2:
    ld hl, $c90e
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$da5e]
    cp $1d
    jr z, jr_007_5012

    cp $27
    jp z, Jump_007_5077

    ld a, [$da5e]
    cp $ff
    jr z, jr_007_5002

    ld a, [wPLAN_selection]
    ld b, a
    add a
    add a
    add b
    ld b, a
    ld a, [wOPTN_and_Item_selection]
    and $7f
    add b
    ld [$da5f], a
    ld a, [$c8de]
    ld [$da60], a
    ld hl, $0304
    rst $10
    ld hl, $0103
    rst $10
    call Call_000_2518
    ld a, [$c825]
    or a
    jr nz, jr_007_4ffc

    ld a, [$da5e]
    cp $ff
    jr nz, jr_007_5002

    ld a, [$da65]
    cp $64
    jr z, jr_007_5002

    ld h, $0d
    ld l, $00
    call Call_000_096d

jr_007_4ffc:
    ld hl, $c90e
    inc [hl]
    jr jr_007_5011

jr_007_5002:
    ld a, [wGameState]
    bit 6, a
    ret nz

    call Call_007_6a8f
    ld a, $01
    ld [$c90d], a
    ret


jr_007_5011:
    ret


jr_007_5012:
    ld a, [wPLAN_selection]
    ld b, a
    add a
    add a
    add b
    ld b, a
    ld a, [wOPTN_and_Item_selection]
    and $7f
    add b
    ld [$da5f], a
    ld a, [$c8de]
    ld [$da60], a
    ld hl, $0304
    rst $10
    call Call_000_2518
    ld a, $06
    ld [$d92b], a
    ld hl, $0000
    ld a, l
    ld [$c96d], a
    ld a, h
    ld [$c96e], a
    ld hl, $00e8
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0058
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ld a, $01
    ld [$c96c], a
    ld hl, wGameState
    res 1, [hl]
    ld a, $01
    ld [$c8ec], a
    ld a, $03
    call Call_000_1688
    ld hl, $c88f
    inc [hl]
    call Call_000_2652
    ret z

    ld hl, $0109
    rst $10
    ret


Jump_007_5077:
    ld a, [wPLAN_selection]
    ld b, a
    add a
    add a
    add b
    ld b, a
    ld a, [wOPTN_and_Item_selection]
    and $7f
    add b
    ld [$da5f], a
    ld a, [$c8de]
    ld [$da60], a
    ld hl, $0304
    rst $10
    call Call_000_2518
    ldh a, [$b7]
    ld l, a
    ldh a, [$b8]
    ld h, a
    push hl
    ldh a, [$bb]
    ld l, a
    ldh a, [$bc]
    ld h, a
    push hl
    ld a, [$c960]
    ld [$c925], a
    ld hl, $0b08
    rst $10
    ld hl, $c300
    call Call_000_14cf
    ld de, $c300
    ld a, [$c962]
    ld l, a
    ld a, [$c963]
    ld h, a
    add hl, de
    ld a, $3c
    ld [hl+], a
    inc a
    ld [hl], a
    ld a, l
    add $1f
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, $3e
    ld [hl+], a
    inc a
    ld [hl], a
    ld hl, $1701
    rst $10
    xor a
    ldh [$b7], a
    ldh [$b8], a
    xor a
    ldh [$bb], a
    ldh [$bc], a

jr_007_50df:
    call Call_007_5160
    ld a, [$c925]
    add a
    add a
    ld hl, $2da7
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ldh [$92], a
    ld a, [hl+]
    ldh [$93], a
    ld a, [hl+]
    ldh [$95], a
    ld a, [hl+]
    ldh [$96], a
    ld hl, $ff92
    ldh a, [$a5]
    add [hl]
    ld [hl+], a
    ldh a, [$a6]
    adc [hl]
    ld [hl], a
    ld hl, $ff95
    ldh a, [$a7]
    add [hl]
    ld [hl+], a
    ldh a, [$a8]
    adc [hl]
    ld [hl], a
    call Call_007_51b1
    jr z, jr_007_50df

    pop hl
    ld a, l
    ldh [$bb], a
    ld a, h
    ldh [$bc], a
    pop hl
    ld a, l
    ldh [$b7], a
    ld a, h
    ldh [$b8], a
    ld b, $31
    ld hl, $c973

jr_007_512a:
    ldh a, [$92]
    ld [hl+], a
    ldh a, [$95]
    ld [hl+], a
    ldh a, [$93]
    swap a
    ld c, a
    ldh a, [$96]
    or c
    ld [hl+], a
    ldh a, [$8b]
    ld c, a
    ldh a, [$8d]
    or c
    ld [hl+], a
    dec b
    jr nz, jr_007_512a

    xor a
    ld [$ca37], a
    ld a, $01
    ld [$c8ec], a
    ld hl, $c8ea
    set 7, [hl]
    ld hl, wGameState
    res 1, [hl]
    ld a, $03
    call Call_000_1688
    ld hl, $c88f
    inc [hl]
    ret


Call_007_5160:
jr_007_5160:
    call Call_000_12d0
    ld a, [$c899]
    ld b, a
    ld a, $08
    call Call_000_1dfb
    add $01
    swap a
    ld h, a
    and $f0
    or $08
    ld l, a
    ld a, h
    and $0f
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    call Call_000_12d0
    ld a, [$c899]
    ld b, a
    ld a, $06
    call Call_000_1dfb
    add $01
    swap a
    ld h, a
    and $f0
    or $08
    ld l, a
    ld a, h
    and $0f
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_000_1e31
    ldh a, [$aa]
    srl a
    srl a
    cp $0c
    ret z

    cp $0d
    ret z

    jr jr_007_5160

Call_007_51b1:
    ld hl, $d793

jr_007_51b4:
    ld a, [hl]
    cp $ff
    jr nz, jr_007_51bb

    or a
    ret


jr_007_51bb:
    bit 7, a
    jr nz, jr_007_51c5

    push hl
    call Call_007_51cb
    pop hl
    ret z

jr_007_51c5:
    inc hl
    inc hl
    inc hl
    inc hl
    jr jr_007_51b4

Call_007_51cb:
    inc hl
    inc hl
    ld a, [hl+]
    swap a
    ld b, a
    and $f0
    or $08
    ld c, a
    ld a, b
    and $0f
    ld b, a
    ldh a, [$92]
    ld e, a
    ldh a, [$93]
    ld d, a
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld d, a
    ld a, d
    or e
    ret nz

    ld a, [hl]
    swap a
    ld b, a
    and $f0
    or $08
    ld c, a
    ld a, b
    and $0f
    ld b, a
    ldh a, [$95]
    ld e, a
    ldh a, [$96]
    ld d, a
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld d, a
    ld a, d
    or e
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_007_6a8f
    ld a, $01
    ld [$c90d], a
    ret


    ret


    ld a, $02
    ld [$c822], a
    ld a, $0d
    ld [$c823], a
    ld hl, $9700
    ld de, $0901
    call Call_007_69b6
    ld de, $704d
    call Call_007_68dc
    ld de, $7090
    call Call_007_68dc
    ld a, [wCurrGoldLo]
    ldh [$d5], a
    ld a, [wCurrGoldMid]
    ldh [$d6], a
    ld a, [wCurrGoldHi]
    ldh [$d7], a
    ld hl, $002e
    call Call_007_6880
    call Call_000_1fb9
    call Call_007_6c8f
    ld de, $7748
    call Call_007_68dc
    ld de, $44b4
    ld a, [wMenu_selection]
    call Call_007_6d4e
    call Call_007_690d
    ld hl, $c90e
    inc [hl]
    ret


    ld a, [wJoypad_current_frame]
    and $03
    jr z, jr_007_5279

    ld a, $59
    call Call_000_1b2c
    call Call_007_6a8f
    ld a, $01
    ld [$c90d], a

jr_007_5279:
    ret


    ld a, [wPLAN_selection]
    ld b, a
    add a
    add a
    add b
    ld b, a
    ld a, [wOPTN_and_Item_selection]
    and $7f
    add b
    ld hl, wInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld l, [hl]
    ld h, $08
    ld de, $c190
    call Call_000_097a
    ld hl, $0201
    call Call_000_096d
    ld a, $5c
    call Call_000_1b2c
    ld de, $2e07
    call Call_007_68dc
    ld de, $7a3c
    call Call_007_68dc
    call Call_007_6c8f
    ld de, $5331
    ld a, [$c8df]
    call Call_007_6d4e
    call Call_007_690d
    ld hl, $c90e
    inc [hl]
    ret


    ld de, $5331
    ld hl, $c8df
    ld b, $02
    call Call_007_6c08
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_007_5309

jr_007_52d7:
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    jr jr_007_5330

jr_007_5309:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_007_5330

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8df]
    cp $81
    jr z, jr_007_52d7

    ld hl, $c90e
    inc [hl]
    ld de, $ca42
    ld hl, $c180
    call Call_000_0c80
    ld hl, $0202
    call Call_000_096d

Jump_007_5330:
jr_007_5330:
    ret


    ld hl, $6101
    ld bc, $ffff
    ld a, [$c825]
    or a
    ret nz

    ld a, [wPLAN_selection]
    ld b, a
    add a
    add a
    add b
    ld b, a
    ld a, [wOPTN_and_Item_selection]
    and $7f
    add b
    ld hl, wInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $ff
    ld hl, $0305
    rst $10
    call Call_007_6a8f
    ld a, $01
    ld [$c90d], a
    ret


    ld a, [$c90e]
    rst $00
    add [hl]
    ld d, e
    sub a
    ld d, e
    pop hl
    ld d, e
    jp $de54


    ld d, l
    call z, Call_007_7f58
    ld e, c
    ld l, $5a
    ld l, [hl]
    ld e, d
    ld l, d
    ld e, e
    ld a, b
    ld e, e
    add [hl]
    ld e, e
    sub h
    ld e, e
    push hl
    ld e, e
    inc [hl]
    ld e, h
    add e
    ld e, h
    ld a, [wOPTN_and_Item_selection]
    ld [$cac0], a
    call Call_007_5572
    call Call_007_5456
    ld hl, $c90e
    inc [hl]
    ret


    call Call_007_6a8f
    ld de, $704d
    call Call_007_68dc
    ld de, $7090
    call Call_007_68dc
    ld a, [wCurrGoldLo]
    ldh [$d5], a
    ld a, [wCurrGoldMid]
    ldh [$d6], a
    ld a, [wCurrGoldHi]
    ldh [$d7], a
    ld hl, $002e
    call Call_007_6880
    call Call_000_1fb9
    ld de, $76d1
    call Call_007_68dc
    ld de, $7687
    call Call_007_68dc
    call Call_007_6c8f
    ld de, $544e
    ld a, [wOPTN_and_Item_selection]
    call Call_007_6d4e
    call Call_007_690d
    call Call_007_5456
    ld hl, $c90e
    inc [hl]
    ret


    ld de, $544e
    ld hl, wOPTN_and_Item_selection
    ld a, [$ca8d]
    ld b, a
    ld a, [hl]
    push af
    call Call_007_6c08
    pop af
    ld hl, wOPTN_and_Item_selection
    and $7f
    ld b, a
    ld a, [hl]
    and $7f
    cp b
    jr z, jr_007_5409

    ld a, [wOPTN_and_Item_selection]
    ld [$cac0], a
    call Call_007_5572
    call Call_007_5456

jr_007_5409:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_007_541a

    call Call_007_6a8f
    ld a, $01
    ld [$c90d], a
    jr jr_007_5441

jr_007_541a:
    ld a, [$c90f]
    or a
    jr z, jr_007_5441

    ld a, [wJoypad_current_frame]
    bit 0, a
    jr z, jr_007_5441

    ld hl, $cb0b
    ld a, [wOPTN_and_Item_selection]
    call Call_000_2229
    bit 7, [hl]
    jr nz, jr_007_5442

    ld a, $59
    call Call_000_1b2c
    xor a
    ld [wPLAN_selection], a
    ld hl, $c90e
    inc [hl]

jr_007_5441:
    ret


jr_007_5442:
    ld hl, $0e0b
    call Call_000_096d
    ld a, $0a
    ld [$c90e], a
    ret


    and c
    nop
    pop hl
    nop
    ld hl, $ff01
    rst $38

Call_007_5456:
    ld a, [$c90f]
    or a
    jr nz, jr_007_549f

    ld a, $02
    ld [$c822], a
    ld a, $0d
    ld [$c823], a
    ld hl, $8800
    ld de, $0901
    call Call_007_69b6
    ld hl, $8890
    ld b, $48
    call Call_007_5492
    ld b, $48
    call Call_007_5492
    ld b, $48
    call Call_007_5492
    ld b, $48
    call Call_007_5492
    ld b, $48
    call Call_007_5492
    ld b, $48
    call Call_007_5492
    ld b, $48

Call_007_5492:
jr_007_5492:
    ld a, $ff
    call Write_gfx_tile_and_inc_HL
    xor a
    call Write_gfx_tile_and_inc_HL
    dec b
    jr nz, jr_007_5492

    ret


Call_007_549f:
jr_007_549f:
    ld a, [$c8dd]
    cp $00
    jr z, jr_007_54ab

    ld hl, $caee
    jr jr_007_54ae

jr_007_54ab:
    ld hl, $caea

jr_007_54ae:
    call Call_007_6da8
    ld e, l
    ld d, h
    ld hl, $8800
    call Call_007_488e
    call Call_007_488e
    call Call_007_488e
    call Call_007_488e
    ret


    call Call_007_5504
    ld de, $7844
    call Call_007_68dc
    ld de, $78d9
    call Call_007_68dc
    call Call_007_558d
    ld hl, $cb15
    ld a, [wOPTN_and_Item_selection]
    call Call_000_224f
    ld hl, $0125
    call Call_007_6880
    call Call_000_2071
    call Call_007_6c8f
    ld de, $56a4
    ld a, [wPLAN_selection]
    ld b, $04
    ld hl, wPLAN_selection
    ld a, [$c90f]
    ld c, a
    call Call_007_6d2c
    call Call_007_690d
    ld hl, $c90e
    inc [hl]
    ret


Call_007_5504:
    ld a, [$c8dd]
    cp $00
    jr z, jr_007_5510

    ld hl, $caee
    jr jr_007_5513

jr_007_5510:
    ld hl, $caea

jr_007_5513:
    ld a, [wOPTN_and_Item_selection]
    call Call_000_2229
    ld a, [wPLAN_selection]
    and $7f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr nz, jr_007_552b

    ld a, $0f

jr_007_552b:
    ld [$c823], a
    ld a, $01
    ld [$c822], a
    ld hl, $94a0
    ld de, $1203
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld hl, $5602
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_007_5572:
    ld hl, $caea
    ld a, [wOPTN_and_Item_selection]
    call Call_000_2229
    ld b, $08
    ld c, $00

jr_007_557f:
    ld a, [hl+]
    cp $ff
    jr z, jr_007_5588

    inc c
    dec b
    jr nz, jr_007_557f

jr_007_5588:
    ld a, c
    ld [$c90f], a
    ret


Call_007_558d:
    ld a, [$c8dd]
    cp $00
    jr z, jr_007_5599

    ld hl, $caee
    jr jr_007_559c

jr_007_5599:
    ld hl, $caea

jr_007_559c:
    ld a, [wOPTN_and_Item_selection]
    call Call_000_2229
    ld a, [wPLAN_selection]
    and $7f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, [hl]
    ld d, $00
    call Call_007_56e8
    ld c, e
    ld b, d
    ld a, e
    add $19
    ld e, a
    ld a, d
    adc $fc
    ld d, a
    ld a, d
    or e
    jr z, jr_007_55cb

    ld hl, $0121
    call Call_007_6880
    call Call_000_2071
    ret


jr_007_55cb:
    ld hl, $cb15
    ld a, [wOPTN_and_Item_selection]
    call Call_000_224f
    ld hl, $0121
    call Call_007_6880
    call Call_000_2071
    ret


    ld de, $56a4
    ld hl, wPLAN_selection
    ld a, [$c90f]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_007_6b7f
    pop af
    ld hl, wPLAN_selection
    and $7f
    ld b, a
    ld a, [hl]
    and $7f
    cp b
    jr z, jr_007_5608

    call Call_007_558d
    call Call_007_690d
    call Call_007_5504

jr_007_5608:
    pop af
    ld hl, $c8dd
    cp [hl]
    jr z, jr_007_561b

    call Call_007_549f
    call Call_007_558d
    call Call_007_690d
    call Call_007_5504

jr_007_561b:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_007_5635

    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    xor a
    ld [$c8dd], a
    jp Jump_007_56a3


jr_007_5635:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_007_56a3

    ld a, $59
    call Call_000_1b2c
    ld hl, $c90e
    inc [hl]
    ld hl, $caea
    ld a, [wOPTN_and_Item_selection]
    call Call_000_2229
    ld a, [$c8dd]
    and $7f
    add a
    add a
    ld b, a
    ld a, [wPLAN_selection]
    and $7f
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$da5e], a
    cp $2b
    jr z, jr_007_56a3

    cp $2c
    jr z, jr_007_56a3

    cp $2d
    jr z, jr_007_56a3

    cp $2e
    jr z, jr_007_56a3

    cp $2f
    jr z, jr_007_56a3

    cp $30
    jr z, jr_007_56a3

    cp $31
    jr z, jr_007_56a3

    cp $33
    jr z, jr_007_56a3

    cp $36
    jr z, jr_007_56a3

    cp $37
    jr z, jr_007_56a3

    cp $38
    jr z, jr_007_56a3

    cp $7e
    jr z, jr_007_56a3

    ld hl, $0e0a
    call Call_000_096d
    ld a, $0a
    ld [$c90e], a
    ret


Jump_007_56a3:
jr_007_56a3:
    ret


    ld d, c
    ld bc, $0069
    xor c
    nop
    jp hl


    nop
    add hl, hl
    ld bc, $ffff
    ld hl, $0150
    call Call_007_6889
    ld a, [$c8dd]
    and $01
    add $f1
    call Write_gfx_tile
    push af
    ld hl, $0150
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    ld hl, $0151
    call Call_007_6889
    ld a, $e7
    call Write_gfx_tile
    push af
    ld hl, $0151
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    ret


Call_007_56e8:
    ld a, e
    cp $70
    jr nz, jr_007_56fd

    ld hl, $cacc
    call Call_007_6dba
    and $01
    cp $00
    jr nz, jr_007_56fd

    ld a, e
    inc a
    inc a
    ld e, a

jr_007_56fd:
    ld l, e
    ld h, d
    add hl, hl
    ld a, l
    add $0c
    ld l, a
    ld a, h
    adc $57
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ret


    ld [bc], a
    nop
    inc b
    nop
    ld a, [bc]
    nop
    inc b
    nop
    ld b, $00
    ld a, [bc]
    nop
    dec b
    nop
    ld [$0f00], sp
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld [$0300], sp
    nop
    dec b
    nop
    inc c
    nop
    dec b
    nop
    ld a, [bc]
    nop
    rrca
    nop
    inc b
    nop
    rlca
    nop
    ld bc, $0300
    nop
    dec b
    nop
    inc bc
    nop
    inc bc
    nop
    dec b
    nop
    nop
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc b
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    ld b, $00
    inc bc
    nop
    inc b
    nop
    inc b
    nop
    dec b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    dec b
    nop
    rlca
    nop
    ld [de], a
    nop
    inc h
    nop
    ld a, [bc]
    nop
    inc d
    nop
    rst $20
    inc bc
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc d
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc d
    nop
    inc bc
    nop
    ld b, $00
    inc b
    nop
    ld [$0000], sp
    nop
    ld [bc], a
    nop
    inc bc
    nop
    dec b
    nop
    inc bc
    nop
    ld b, $00
    inc bc
    nop
    dec b
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld [$1000], sp
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld [$1000], sp
    nop
    add hl, de
    nop
    ld e, $00
    rst $20
    inc bc
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    inc bc
    nop
    inc b
    nop
    inc b
    nop
    inc bc
    nop
    ld bc, $0600
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    nop
    nop
    inc b
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ld [$1400], sp
    nop
    inc d
    nop
    inc d
    nop
    inc d
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld b, $00
    ld a, [bc]
    nop
    inc b
    nop
    nop
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld b, $00
    ld b, $00
    ld [$0c00], sp
    nop
    inc d
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc d
    nop
    dec b
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld a, [$da5e]
    cp $2b
    jr z, jr_007_58f4

    cp $2c
    jr z, jr_007_58f4

    cp $2d
    jr z, jr_007_58f4

    cp $30
    jr z, jr_007_58f4

    cp $31
    jr z, jr_007_58f4

    cp $33
    jr z, jr_007_58f4

    cp $36
    jr z, jr_007_58f4

    ld hl, $c90e
    inc [hl]
    ld hl, $c90e
    inc [hl]
    ret


jr_007_58f4:
    ld de, $76d1
    call Call_007_68dc
    ld de, $790d
    call Call_007_68dc
    ld de, $7957
    call Call_007_68dc
    call Call_007_59de
    call Call_007_6c8f
    ld de, $544e
    ld a, [$c8dd]
    call Call_007_6d4e
    ld de, $56a4
    ld a, [wPLAN_selection]
    ld b, $04
    ld hl, wPLAN_selection
    ld a, [$c90f]
    ld c, a
    call Call_007_6d2c
    call Call_007_690d
    ld hl, $c90e
    inc [hl]
    ret


    ld hl, $cb11
    ld a, [$c8dd]
    call Call_000_224f
    ld hl, $0201
    call Call_007_6880
    call Call_000_2071
    ld hl, $cb13
    ld a, [$c8dd]
    call Call_000_224f
    ld hl, $0205
    call Call_007_6880
    call Call_000_2071
    ld hl, $cb0b
    ld a, [$c8dd]
    call Call_000_224a
    ld b, a
    ld hl, $01c5
    call Call_007_6880
    bit 0, b
    ld a, $e0
    jr z, jr_007_596b

    ld a, $d7

jr_007_596b:
    ld [hl+], a
    bit 2, b
    ld a, $e0
    jr z, jr_007_5974

    ld a, $d8

jr_007_5974:
    ld [hl+], a
    bit 7, b
    ld a, $e0
    jr z, jr_007_597d

    ld a, $d9

jr_007_597d:
    ld [hl], a
    ret


    ld de, $544e
    ld hl, $c8de
    ld a, [$ca8d]
    ld b, a
    ld a, [hl]
    push af
    call Call_007_6c08
    pop af
    and $7f
    ld b, a
    ld hl, $c8de
    ld a, [hl]
    and $7f
    cp b
    jr z, jr_007_59a1

    call Call_007_59de
    call Call_007_690d

jr_007_59a1:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_007_59b6

    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    jr jr_007_59dd

jr_007_59b6:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_007_59dd

    ld a, [$c8de]
    and $7f
    ld [$da60], a
    ld hl, $cac2
    call Call_000_2229
    ld e, l
    ld d, h
    ld hl, $c190
    call Call_000_0c80
    ld a, $59
    call Call_000_1b2c
    ld hl, $c90e
    inc [hl]

Jump_007_59dd:
jr_007_59dd:
    ret


Call_007_59de:
    ld hl, $cb11
    ld a, [$c8de]
    call Call_000_224f
    ld hl, $0201
    call Call_007_6880
    call Call_000_2071
    ld hl, $cb13
    ld a, [$c8de]
    call Call_000_224f
    ld hl, $0205
    call Call_007_6880
    call Call_000_2071
    ld hl, $cb0b
    ld a, [$c8de]
    call Call_000_224a
    ld b, a
    ld hl, $01c5
    call Call_007_6880
    bit 0, b
    ld a, $e0
    jr z, jr_007_5a1a

    ld a, $d7

jr_007_5a1a:
    ld [hl+], a
    bit 2, b
    ld a, $e0
    jr z, jr_007_5a23

    ld a, $d8

jr_007_5a23:
    ld [hl+], a
    bit 7, b
    ld a, $e0
    jr z, jr_007_5a2c

    ld a, $d9

jr_007_5a2c:
    ld [hl], a
    ret


    ld hl, $cac2
    ld a, [wOPTN_and_Item_selection]
    call Call_000_2229
    ld e, l
    ld d, h
    ld hl, $c180
    call Call_000_0c80
    ld a, [$da5e]
    ld l, a
    ld h, $06
    ld de, $c1a0
    call Call_000_097a
    ld hl, $0e00
    ld a, [$da5e]
    cp $7e
    jr nz, jr_007_5a58

    ld hl, $0e09

jr_007_5a58:
    call Call_000_096d
    ld de, $2e07
    call Call_007_68dc
    call Call_007_690d
    ld hl, $c90e
    inc [hl]
    ld a, $65
    call Call_000_1b2c
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$c8dd]
    cp $00
    jr z, jr_007_5a7f

    ld hl, $caee
    jr jr_007_5a82

jr_007_5a7f:
    ld hl, $caea

jr_007_5a82:
    ld a, [wOPTN_and_Item_selection]
    call Call_000_2229
    ld a, [wPLAN_selection]
    and $7f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld l, [hl]
    ld h, $00
    add hl, hl
    ld a, l
    add $0c
    ld l, a
    ld a, h
    adc $57
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    ld hl, $cb15
    ld a, [wOPTN_and_Item_selection]
    call Call_000_2229
    pop bc
    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    ld hl, $0e02
    jp c, Jump_007_5b16

    ld a, [$da5e]
    push af
    ld hl, $1404
    rst $10
    pop bc
    ld a, [$da5e]
    cp $ff
    ld a, b
    jr z, jr_007_5b0c

    ld a, [$da5e]
    cp $2e
    jr z, jr_007_5b06

    cp $2f
    jr z, jr_007_5b06

    cp $37
    jr z, jr_007_5afe

    cp $38
    jr z, jr_007_5afe

    cp $7e
    jr z, jr_007_5afe

    ld hl, $0e07
    cp $36
    jr z, jr_007_5afb

    ld hl, $0e06
    cp $33
    jr z, jr_007_5afb

    ld hl, $0e04
    cp $30
    jr z, jr_007_5afb

    cp $31
    jr z, jr_007_5afb

    ld hl, $0e03

jr_007_5afb:
    call Call_000_096d

jr_007_5afe:
    ld hl, $c90e
    inc [hl]
    call Call_007_5b1e
    ret


jr_007_5b06:
    ld a, $0c
    ld [$c90e], a
    ret


jr_007_5b0c:
    ld hl, $0e08
    cp $38
    jr z, jr_007_5b16

    ld hl, $0e01

Jump_007_5b16:
jr_007_5b16:
    call Call_000_096d
    ld hl, $c90e
    inc [hl]
    ret


Call_007_5b1e:
    ld hl, $1405
    rst $10
    ld hl, $0103
    rst $10
    call Call_000_2518
    ld a, [$c8dd]
    cp $00
    jr z, jr_007_5b35

    ld hl, $caee
    jr jr_007_5b38

jr_007_5b35:
    ld hl, $caea

jr_007_5b38:
    ld a, [wOPTN_and_Item_selection]
    call Call_000_2229
    ld a, [wPLAN_selection]
    and $7f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld l, [hl]
    ld h, $00
    add hl, hl
    ld a, l
    add $0c
    ld l, a
    ld a, h
    adc $57
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    ld hl, $cb15
    ld a, [wOPTN_and_Item_selection]
    call Call_000_2229
    pop bc
    ld a, [hl]
    sub c
    ld [hl+], a
    ld a, [hl]
    sbc b
    ld [hl], a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_007_6a8f
    ld a, $01
    ld [$c90d], a
    ret


    ld de, $2e07
    call Call_007_68dc
    call Call_007_690d
    ld hl, $c90e
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_007_6a8f
    ld a, $01
    ld [$c90d], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $cb0b
    ld a, $00
    call Call_000_2229
    bit 7, [hl]
    jr nz, jr_007_5be0

    ld a, $00
    ld hl, $cb13
    call Call_000_224f
    push bc
    ld a, $00
    ld hl, $cb11
    call Call_000_224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    jr z, jr_007_5be0

    ld hl, $cac2
    ld a, $00
    call Call_000_2229
    ld e, l
    ld d, h
    ld hl, $c190
    call Call_000_0c80
    ld hl, $0e03
    call Call_000_096d
    ld de, $2e07
    call Call_007_68dc
    call Call_007_690d

jr_007_5be0:
    ld hl, $c90e
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$ca8f]
    cp $ff
    jr z, jr_007_5c2f

    ld hl, $cb0b
    ld a, $01
    call Call_000_2229
    bit 7, [hl]
    jr nz, jr_007_5c2f

    ld a, $01
    ld hl, $cb13
    call Call_000_224f
    push bc
    ld a, $01
    ld hl, $cb11
    call Call_000_224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    jr z, jr_007_5c2f

    ld hl, $cac2
    ld a, $01
    call Call_000_2229
    ld e, l
    ld d, h
    ld hl, $c190
    call Call_000_0c80
    ld hl, $0e03
    call Call_000_096d

jr_007_5c2f:
    ld hl, $c90e
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$ca90]
    cp $ff
    jr z, jr_007_5c7e

    ld hl, $cb0b
    ld a, $02
    call Call_000_2229
    bit 7, [hl]
    jr nz, jr_007_5c7e

    ld a, $02
    ld hl, $cb13
    call Call_000_224f
    push bc
    ld a, $02
    ld hl, $cb11
    call Call_000_224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    jr z, jr_007_5c7e

    ld hl, $cac2
    ld a, $02
    call Call_000_2229
    ld e, l
    ld d, h
    ld hl, $c190
    call Call_000_0c80
    ld hl, $0e03
    call Call_000_096d

jr_007_5c7e:
    ld hl, $c90e
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_007_5b1e
    call Call_007_6a8f
    ld a, $01
    ld [$c90d], a
    ret


    ld a, [$c90e]
    rst $00
    or b
    ld e, h
    ld a, [$4d5c]
    ld e, l
    ld l, l
    ld e, l
    cp l
    ld e, l
    db $dd
    ld e, [hl]
    ld e, e
    ld h, b
    db $db
    ld h, d
    ld [hl], $63
    ld b, c
    ld h, e
    ld c, a
    ld h, e
    jp Jump_000_1163


    dec c
    ld l, $21
    nop
    sub b
    call Call_000_1577
    call Call_007_6a8f
    ld de, $704d
    call Call_007_68dc
    ld de, $7090
    call Call_007_68dc
    ld a, [wCurrGoldLo]
    ldh [$d5], a
    ld a, [wCurrGoldMid]
    ldh [$d6], a
    ld a, [wCurrGoldHi]
    ldh [$d7], a
    ld hl, $002e
    call Call_007_6880
    call Call_000_1fb9
    ld de, $7a61
    call Call_007_68dc
    call Call_007_6c8f
    ld de, $5d43
    ld a, [wOPTN_and_Item_selection]
    call Call_007_6d4e
    call Call_007_690d
    ld hl, $c90e
    inc [hl]
    ret


    ld de, $5d43
    ld hl, wOPTN_and_Item_selection
    ld b, $04
    call Call_007_6c08
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_007_5d16

    call Call_007_6a8f
    ld a, $01
    ld [$c90d], a
    jr jr_007_5d42

jr_007_5d16:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_007_5d42

    ld a, $59
    call Call_000_1b2c
    ld b, $02
    ld a, [wOPTN_and_Item_selection]
    cp $80
    jr z, jr_007_5d3e

    ld b, $04
    cp $81
    jr z, jr_007_5d3e

    ld b, $06
    cp $83
    jr z, jr_007_5d3e

    xor a
    ld [$c8e0], a
    ld b, $0a

jr_007_5d3e:
    ld a, b
    ld [$c90e], a

Jump_007_5d42:
jr_007_5d42:
    ret


    ld h, [hl]
    nop
    and [hl]
    nop
    and $00
    ld h, $01
    rst $38
    rst $38
    ld de, $7ae7
    call Call_007_68dc
    call Call_007_6c8f
    ld de, $5dab
    ld a, [$c8ee]
    ld [wPLAN_selection], a
    ld a, [wPLAN_selection]
    call Call_007_6d4e
    call Call_007_690d
    ld hl, $c90e
    inc [hl]
    ret


    ld de, $5dab
    ld hl, wPLAN_selection
    ld b, $08
    call Call_007_6c6d
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_007_5d8d

    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    jr jr_007_5daa

jr_007_5d8d:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_007_5daa

    ld a, [wPLAN_selection]
    and $7f
    ld [$c8ee], a
    ld a, $59
    call Call_000_1b2c
    call Call_007_6a8f
    ld a, $01
    ld [$c90d], a

Jump_007_5daa:
jr_007_5daa:
    ret


    jp $c501


    ld bc, $01c7
    ret


    ld bc, $01cb
    call $cf01
    ld bc, $01d1
    rst $38
    rst $38
    call Call_007_4469
    ld b, $00
    ld a, $00
    push bc
    ld hl, $cb0b
    call Call_000_224a
    pop bc
    bit 7, a
    jr nz, jr_007_5dd1

    inc b

jr_007_5dd1:
    ld a, [$ca8d]
    cp $01
    jr z, jr_007_5dfd

    ld a, $01
    push bc
    ld hl, $cb0b
    call Call_000_224a
    pop bc
    bit 7, a
    jr nz, jr_007_5de7

    inc b

jr_007_5de7:
    ld a, [$ca8d]
    cp $02
    jr z, jr_007_5dfd

    ld a, $02
    push bc
    ld hl, $cb0b
    call Call_000_224a
    pop bc
    bit 7, a
    jr nz, jr_007_5dfd

    inc b

jr_007_5dfd:
    ld a, b
    ld [$c90f], a
    ld hl, wDebug_main_menu_option
    ld a, $00
    ld [hl+], a
    ld b, $ff
    ld a, [$c90f]
    cp $02
    jr c, jr_007_5e12

    ld b, $01

jr_007_5e12:
    ld [hl], b
    inc hl
    ld b, $ff
    ld a, [$c90f]
    cp $03
    jr c, jr_007_5e1f

    ld b, $02

jr_007_5e1f:
    ld [hl], b
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    xor a
    ld [$c913], a
    ld de, $7b48
    call Call_007_68dc
    ld de, $7b89
    call Call_007_68dc
    call Call_007_5e51
    call Call_007_6c8f
    ld de, $6045
    ld a, [$c8dd]
    call Call_007_6d4e
    call Call_007_690d
    ld hl, $c90e
    inc [hl]
    ret


Call_007_5e51:
    ld a, [wDebug_main_menu_option]
    cp $ff
    jr z, jr_007_5e61

    ld a, [$c0a1]
    cp $ff
    jr z, jr_007_5e67

    jr jr_007_5e72

jr_007_5e61:
    ld a, [$c0a1]
    ld [wDebug_main_menu_option], a

jr_007_5e67:
    ld a, [$c0a2]
    ld [$c0a1], a
    ld a, $ff
    ld [$c0a2], a

jr_007_5e72:
    ld hl, $c685
    ld a, [wDebug_main_menu_option]
    add $f1
    ld b, a
    ld a, [wDebug_main_menu_option]
    call Call_007_5ec1
    ld hl, $c6c5
    ld a, [$c0a1]
    add $f1
    ld b, a
    ld a, [$c0a1]
    call Call_007_5ec1
    ld hl, $c705
    ld a, [$c0a2]
    add $f1
    ld b, a
    ld a, [$c0a2]
    call Call_007_5ec1
    ld hl, $c68d
    ld b, $f1
    ld a, [$c0a3]
    call Call_007_5ec1
    ld hl, $c6cd
    ld b, $f2
    ld a, [$c0a4]
    call Call_007_5ec1
    ld hl, $c70d
    ld b, $f3
    ld a, [$c0a5]
    call Call_007_5ec1
    ret


Call_007_5ec1:
    cp $ff
    jr z, jr_007_5ed4

    ld [hl], b
    inc hl
    inc hl
    add a
    add a
    add $20
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl], a
    ret


jr_007_5ed4:
    ld a, $e0
    ld [hl+], a
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


    ld a, [$c90f]
    ld c, a
    ld a, [$c913]
    cp c
    jr z, jr_007_5ef7

    ld de, $6045
    ld hl, $c8dd
    ld a, [$c913]
    ld b, a
    ld a, c
    sub b
    ld b, a
    call Call_007_6c08

jr_007_5ef7:
    ld a, [$c8dd]
    and $7f
    ld [$c8dd], a
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_007_5f64

    ld a, [$c913]
    cp $00
    jr z, jr_007_5f4d

    dec a
    ld hl, $c0a3
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [hl], $ff
    ld [$c0a2], a
    ld hl, wDebug_main_menu_option
    call Call_007_5f45
    call Call_007_5f45
    ld hl, wDebug_main_menu_option
    call Call_007_5f45
    call Call_007_5f45
    ld hl, wDebug_main_menu_option
    call Call_007_5f45
    call Call_007_5f45
    call Call_007_5e51
    call Call_007_690d
    ld hl, $c913
    dec [hl]
    jp Jump_007_6044


Call_007_5f45:
    ld a, [hl+]
    ld b, [hl]
    cp b
    ret c

    ld [hl-], a
    ld [hl], b
    inc hl
    ret


jr_007_5f4d:
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    jp Jump_007_6044


jr_007_5f64:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_007_6044

    ld a, $59
    call Call_000_1b2c
    ld a, [$c90f]
    ld c, a
    ld a, [$c913]
    cp c
    jr z, jr_007_5fc9

    ld hl, $c0a3
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c8dd]
    ld de, wDebug_main_menu_option
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl], a
    ld a, $ff
    ld [de], a
    ld a, [$c90f]
    ld c, a
    dec c
    ld a, [$c913]
    cp c
    jr nz, jr_007_5fa8

    ld de, $7b48
    call Call_007_68dc
    jr jr_007_5fbc

jr_007_5fa8:
    ld b, a
    ld a, c
    sub b
    ld b, a
    ld a, [$c8dd]
    cp b
    jr c, jr_007_5fbc

    dec a
    ld [$c8dd], a
    ld de, $6045
    call Call_007_6ca9

jr_007_5fbc:
    call Call_007_5e51
    call Call_007_690d
    ld hl, $c913
    inc [hl]
    jp Jump_007_6044


jr_007_5fc9:
    ld a, [$c0a3]
    call Call_007_604d
    ld [wDebug_main_menu_option], a
    ld a, [$c0a4]
    call Call_007_604d
    ld [$c0a1], a
    ld a, [$c0a5]
    call Call_007_604d
    ld [$c0a2], a
    ld a, [wDebug_main_menu_option]
    ld [$ca8e], a
    ld a, [$c90f]
    cp $01
    jr z, jr_007_6004

    ld a, [$c0a1]
    ld [$ca8f], a
    ld a, [$c90f]
    cp $02
    jr z, jr_007_6004

    ld a, [$c0a2]
    ld [$ca90], a

jr_007_6004:
    ld hl, $0103
    rst $10
    ld a, [$c969]
    or a
    jr nz, jr_007_6039

    ld a, [$c968]
    cp $06
    jr nz, jr_007_6039

    ld a, [$c925]
    or a
    jr nz, jr_007_6039

    ld a, [$ca91]
    cp $ff
    jr z, jr_007_6022

jr_007_6022:
    ld [$d803], a
    ld a, [$ca92]
    cp $ff
    jr z, jr_007_602c

jr_007_602c:
    ld [$d823], a
    ld a, [$ca93]
    cp $ff
    jr z, jr_007_6036

jr_007_6036:
    ld [$d843], a

jr_007_6039:
    call Call_000_2518
    call Call_007_6a8f
    ld a, $01
    ld [$c90d], a

Jump_007_6044:
    ret


    add [hl]
    ld bc, $01c6
    ld b, $02
    rst $38
    rst $38

Call_007_604d:
    cp $ff
    ret z

    ld hl, $ca8e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ret


    ld a, [$c969]
    or a
    jr nz, jr_007_6090

    ld a, [$c968]
    cp $60
    jr z, jr_007_6090

    cp $61
    jr z, jr_007_6090

    cp $62
    jr z, jr_007_6090

    cp $63
    jr z, jr_007_6090

    cp $64
    jr z, jr_007_6090

    cp $30
    jr c, jr_007_60a5

    cp $5a
    jr z, jr_007_60a5

    cp $5b
    jr z, jr_007_60a5

    cp $5c
    jr z, jr_007_60a5

    cp $50
    jr z, jr_007_60a5

    cp $51
    jr z, jr_007_60a5

jr_007_6090:
    ld hl, $0243
    call Call_000_096d
    ld de, $2e07
    call Call_007_68dc
    call Call_007_690d
    ld a, $09
    ld [$c90e], a
    ret


jr_007_60a5:
    ld a, $5c
    call Call_000_1b2c
    ld de, $7bca
    call Call_007_68dc
    ld de, $7c44
    call Call_007_68dc
    ld de, $2e07
    call Call_007_68dc
    ld hl, $a002
    call Call_000_20ee
    or a
    jr nz, jr_007_6122

    ld hl, $0021
    call Call_007_6880
    ld bc, $0011
    ld a, $e0
    call Call_000_12c7
    ld hl, $0041
    call Call_007_6880
    ld bc, $0011
    ld a, $e0
    call Call_000_12c7
    ld hl, $0061
    call Call_007_6880
    ld bc, $0011
    ld a, $e0
    call Call_000_12c7
    ld hl, $0081
    call Call_007_6880
    ld bc, $0011
    ld a, $e0
    call Call_000_12c7
    ld hl, $0044
    call Call_007_6880
    ld b, $0a
    ld a, $40

jr_007_6107:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_007_6107

    ld a, $31
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    ld hl, $9400
    ld de, $0a01
    call Call_007_69b6
    jp Jump_007_61de


jr_007_6122:
    di
    ld a, $0a
    ld [$0100], a
    ld de, $a17c
    ld hl, $93c0
    call Call_007_69ef
    ei
    call Call_007_61fd
    ld hl, $a1c7
    call Call_000_20ee
    or a
    jr z, jr_007_61a8

    di
    ld a, $0a
    ld [$0100], a
    ld hl, $a246
    ld a, [$a1c8]
    call Call_000_223b
    ld c, [hl]
    ei
    ld b, $00
    ld hl, $0084
    call Call_007_6880
    call Call_000_2082
    ld hl, $a1c7
    call Call_000_20ee
    cp $01
    jr z, jr_007_61ae

    di
    ld a, $0a
    ld [$0100], a
    ld hl, $a246
    ld a, [$a1c9]
    call Call_000_223b
    ld c, [hl]
    ei
    ld b, $00
    ld hl, $008a
    call Call_007_6880
    call Call_000_2082
    ld hl, $a1c7
    call Call_000_20ee
    cp $02
    jr z, jr_007_61b4

    di
    ld a, $0a
    ld [$0100], a
    ld hl, $a246
    ld a, [$a1ca]
    call Call_000_223b
    ld c, [hl]
    ei
    ld b, $00
    ld hl, $0090
    call Call_007_6880
    call Call_000_2082
    jr jr_007_61ba

jr_007_61a8:
    ld hl, $0061
    call $62bf

jr_007_61ae:
    ld hl, $0067
    call $62bf

jr_007_61b4:
    ld hl, $006d
    call $62bf

jr_007_61ba:
    ld hl, $a1f2
    call Call_000_20ee
    ld c, a
    ld b, $00
    ld hl, $002d
    call Call_007_6880
    call Call_000_20ad
    ld hl, $a1f1
    call Call_000_20ee
    ld c, a
    ld b, $00
    ld hl, $0030
    call Call_007_6880
    call Call_000_20ad

Jump_007_61de:
    ld a, $00
    ld [$0100], a
    ld hl, $0207
    call Call_000_096d
    call Call_007_6c8f
    ld de, $6330
    ld a, [$c8de]
    call Call_007_6d4e
    call Call_007_690d
    ld hl, $c90e
    inc [hl]
    ret


Call_007_61fd:
    ld hl, $8da0
    ld b, $18
    call Call_007_6264
    di
    ld a, $0a
    ld [$0100], a
    ld hl, $a1fc
    ld a, [$a1c8]
    call Call_000_223b
    ei
    ld e, l
    ld d, h
    ld hl, $9400
    ld a, $01
    call Call_007_6254
    di
    ld a, $0a
    ld [$0100], a
    ld hl, $a1fc
    ld a, [$a1c9]
    call Call_000_223b
    ei
    ld e, l
    ld d, h
    ld hl, $9440
    ld a, $02
    call Call_007_6254
    di
    ld a, $0a
    ld [$0100], a
    ld hl, $a1fc
    ld a, [$a1ca]
    call Call_000_223b
    ei
    ld e, l
    ld d, h
    ld hl, $9480
    ld a, $03
    call Call_007_6254
    ret


Call_007_6254:
    ld b, a
    di
    ld a, $0a
    ld [$0100], a
    ld a, [$a1c7]
    cp b
    ei
    jr nc, jr_007_6271

    ld b, $20

Call_007_6264:
jr_007_6264:
    ld a, $ff
    call Write_gfx_tile_and_inc_HL
    xor a
    call Write_gfx_tile_and_inc_HL
    dec b
    jr nz, jr_007_6264

    ret


jr_007_6271:
    push bc
    call Call_007_69ef
    pop bc
    dec b
    push bc
    di
    ld a, $0a
    ld [$0100], a
    ld hl, $a1c8
    ld a, b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $a205
    call Call_000_223b
    ld a, [hl]
    ei
    add a
    ld hl, $62ab
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop bc
    ld a, b
    swap a
    add $a0
    ld l, a
    ld h, $8d
    call Call_000_1577
    ret


    inc bc
    ld l, $04
    ld l, $05
    ld l, $06
    ld l, $07
    ld l, $08
    ld l, $09
    ld l, $0a
    ld l, $0b
    ld l, $0c
    ld l, $e5
    call Call_007_6880
    ld a, $e0
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    pop hl
    ld a, l
    add $21
    ld l, a
    ld a, h
    adc $00
    ld h, a
    call Call_007_6880
    ld a, $e0
    ld [hl+], a
    ld [hl], a
    ret


    ld de, $6330
    ld hl, $c8de
    ld b, $02
    call Call_007_6c08
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_007_630b

jr_007_62ed:
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    jr jr_007_632f

jr_007_630b:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_007_632f

    ld a, [$c8de]
    cp $81
    jr nz, jr_007_6321

    ld a, $59
    call Call_000_1b2c
    jr jr_007_62ed

jr_007_6321:
    di
    call Call_000_2128
    ei
    ld a, $59
    call Call_000_1b2c
    ld hl, $c90e
    inc [hl]

Jump_007_632f:
jr_007_632f:
    ret


    cpl
    ld bc, $016f
    rst $38
    rst $38
    ld hl, $0232
    call Call_000_096d
    ld hl, $c90e
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_007_6a8f
    ld a, $01
    ld [$c90d], a
    ret


    ld a, [$ca8d]
    or a
    jr z, jr_007_637c

    ld hl, $cb0b

jr_007_6358:
    ld a, [$c8e0]
    ld hl, $cb0b
    call Call_000_2229
    bit 7, [hl]
    jr z, jr_007_6374

    ld hl, $c8e0
    inc [hl]
    ld a, [$c8e0]
    ld hl, $ca8d
    cp [hl]
    jr nz, jr_007_6358

    jr jr_007_637c

jr_007_6374:
    call Call_007_6385
    ld hl, $c90e
    inc [hl]
    ret


jr_007_637c:
    call Call_007_6a8f
    ld a, $00
    ld [$c90e], a
    ret


Call_007_6385:
    ld hl, $cac2
    ld a, [$c8e0]
    call Call_000_2229
    ld e, l
    ld d, h
    ld hl, $93c0
    call Call_007_69ef
    ld de, $7c69
    call Call_007_68dc
    ld de, $7cd7
    call Call_007_68dc
    ld hl, $cacc
    ld a, [$c8e0]
    call Call_000_2229
    ld a, [hl]
    swap a
    and $03
    ld [$c8df], a
    call Call_007_6c8f
    ld de, $644c
    ld a, [$c8df]
    call Call_007_6d4e
    call Call_007_690d
    ret


    ld de, $644c
    ld hl, $c8df
    ld b, $04
    call Call_007_6c08
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_007_63fc

jr_007_63d5:
    ld a, [$c8e0]
    or a
    jr z, jr_007_63f2

    ld hl, $c8e0
    dec [hl]
    ld a, [$c8e0]
    ld hl, $cb0b
    call Call_000_2229
    bit 7, [hl]
    jr nz, jr_007_63d5

    ld hl, $c90e
    dec [hl]
    jr jr_007_644b

jr_007_63f2:
    call Call_007_6a8f
    ld a, $00
    ld [$c90e], a
    jr jr_007_644b

jr_007_63fc:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jr z, jr_007_644b

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8df]
    and $03
    swap a
    ld b, a
    push bc
    ld hl, $cacc
    ld a, [$c8e0]
    call Call_000_2229
    ld a, [hl]
    and $cf
    pop bc
    or b
    ld [hl], a

jr_007_6420:
    ld hl, $c8e0
    inc [hl]
    ld a, [$ca8d]
    ld b, a
    ld a, [$c8e0]
    cp b
    jr z, jr_007_6441

    ld a, [$c8e0]
    ld hl, $cb0b
    call Call_000_2229
    bit 7, [hl]
    jr nz, jr_007_6420

    ld hl, $c90e
    dec [hl]
    jr jr_007_644b

jr_007_6441:
    call Call_007_6a8f
    ld a, $00
    ld [$c90e], a
    jr jr_007_644b

jr_007_644b:
    ret


    ld b, c
    ld bc, $0181
    pop bc
    ld bc, $0201
    rst $38
    rst $38
    ld hl, $cac0
    ld a, l
    ld [$c930], a
    ld a, h
    ld [$c931], a
    xor a
    ld [$c932], a
    ld [$c933], a
    ld a, [$c90e]
    rst $00
    adc b
    ld h, h
    xor l
    ld h, h
    ret


    ld h, h
    call c, $4e64
    ld h, l
    ld d, d
    ld h, l
    adc b
    ld h, l
    xor h
    ld h, l
    cp h
    ld h, l
    ret nz

    ld h, l
    ret nc

    ld h, l
    ld sp, hl
    ld h, l
    push de
    ld h, l
    rst $20
    ld h, l
    ld a, $01
    ld [$c8ec], a
    ld a, [$c932]
    ld [$c934], a
    ld a, [$c930]
    ld l, a
    ld a, [$c931]
    ld h, a
    ld a, [$c932]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    ld hl, $c90e
    inc [hl]
    ret


    call Call_007_6aba
    ld hl, $c90e
    inc [hl]
    ld a, [$cac0]
    ld hl, $cb24
    call Call_000_223b
    ld a, [hl]
    or a
    ret z

    call Call_007_4655
    ld a, $08
    ld [$c90e], a
    ret


Call_007_64c9:
    ld de, $70f7
    call Call_007_68dc
    ld de, $71af
    call Call_007_68dc
    call Call_007_451e
    call Call_007_4655
    ret


    call Call_007_6504
    jr z, jr_007_64e8

    call Call_007_64c9
    ld hl, $c90e
    dec [hl]

jr_007_64e8:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_007_64f2

    jp Jump_007_65f9


jr_007_64f2:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_007_6503

    ld a, $59
    call Call_000_1b2c
    ld hl, $c90e
    inc [hl]

Jump_007_6503:
    ret


Call_007_6504:
    ld a, [$c934]
    push af
    ld a, [$c933]
    ld b, a
    or a
    jr z, jr_007_654b

    ld a, [wJoypad_Current]
    bit 6, a
    jr z, jr_007_6521

    ld a, [$c934]
    dec a
    cp b
    jr c, jr_007_6531

    dec b
    ld a, b
    jr jr_007_6531

jr_007_6521:
    ld a, [wJoypad_Current]
    bit 7, a
    jr z, jr_007_654b

    ld a, [$c934]
    inc a
    cp b
    jr c, jr_007_6531

    ld a, $00

jr_007_6531:
    ld [$c934], a
    ld b, a
    ld a, [$c930]
    ld l, a
    ld a, [$c931]
    ld h, a
    ld a, b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    pop af
    cp b
    ret


jr_007_654b:
    pop af
    xor a
    ret


    call Call_007_46ca
    ret


    call Call_007_6504
    jr z, jr_007_655e

    ld a, $0c
    ld [$c90e], a
    jr jr_007_6587

jr_007_655e:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_007_6573

    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    ld hl, $c90e
    dec [hl]
    jr jr_007_6587

jr_007_6573:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_007_6584

    ld a, $59
    call Call_000_1b2c
    ld hl, $c90e
    inc [hl]

Jump_007_6584:
    call Call_007_66c8

jr_007_6587:
    ret


Call_007_6588:
    ld a, [$cac0]
    ld hl, $cb24
    call Call_000_223b
    ld a, [hl]
    or a
    jr nz, jr_007_65f9

    call Call_007_486b
    ld de, $737b
    call Call_007_68dc
    call Call_007_690d
    call Call_007_466d
    call Call_007_4689
    ld hl, $c90e
    inc [hl]
    ret


    call Call_007_6504
    jr z, jr_007_65b8

    call Call_007_6588
    ld hl, $c90e
    dec [hl]

jr_007_65b8:
    call Call_007_48bf
    ret


    call Call_007_48e6
    ret


    call Call_007_6504
    jr z, jr_007_65cc

    ld a, $0d
    ld [$c90e], a
    jr jr_007_65cf

jr_007_65cc:
    call Call_007_4a1e

jr_007_65cf:
    ret


    ld hl, $c90e
    inc [hl]
    ret


    call Call_007_45ee
    call Call_007_46d2
    call Call_007_466d
    call Call_007_4689
    ld a, $05
    ld [$c90e], a
    ret


    call Call_007_45ee
    call Call_007_48f7
    call Call_007_466d
    call Call_007_4689
    ld a, $09
    ld [$c90e], a
    ret


Jump_007_65f9:
jr_007_65f9:
    call Call_007_6a8f
    call Call_007_690d
    call Call_007_6a9e
    ld a, [wGameMode]
    or a
    jr z, jr_007_661b

    ld hl, $0b01
    rst $10
    ld hl, $1700
    rst $10
    ld hl, $1708
    rst $10
    call Call_007_6625
    ld hl, $0604
    rst $10

jr_007_661b:
    ld a, $00
    ld [$c8ec], a
    ld hl, $c906
    inc [hl]
    ret


Call_007_6625:
    ld a, [$c81d]
    or a
    ret z

    di
    call Call_000_1aa6
    ld a, $01
    ldh [rVBK], a
    ei
    ldh a, [$bb]
    and $f8
    ld l, a
    xor a
    sla l
    rla
    sla l
    rla
    ld h, $98
    add h
    ld h, a
    ldh a, [$b7]
    rrca
    rrca
    rrca
    and $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $c200
    ld c, $10

jr_007_6655:
    ld b, $0a
    push hl

jr_007_6658:
    ld a, [de]
    swap a
    and $0f
    call Write_gfx_tile
    ld a, l
    and $e0
    push af
    ld a, l
    inc a
    and $1f
    ld l, a
    pop af
    or l
    ld l, a
    ld a, [de]
    and $0f
    call Write_gfx_tile
    ld a, l
    and $e0
    push af
    ld a, l
    inc a
    and $1f
    ld l, a
    pop af
    or l
    ld l, a
    inc de
    dec b
    jr nz, jr_007_6658

    pop hl
    ld a, e
    add $06
    ld e, a
    ld a, d
    adc $00
    ld d, a
    push bc
    ld bc, $0020
    add hl, bc
    ld a, h
    and $03
    or $98
    ld h, a
    pop bc
    dec c
    jr nz, jr_007_6655

    di
    call Call_000_1aa6
    ld a, $00
    ldh [rVBK], a
    ei
    ret


Call_007_66a4:
    ld a, [hl]
    add $04
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl-], a
    ld a, [hl]
    and $f8
    ld [hl], a
    ret


Call_007_66b1:
    push hl
    add $10
    ld l, a
    ld h, $00
    add hl, hl
    ld a, l
    add $14
    ld l, a
    ld a, h
    adc $6e
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    call Call_000_1577
    ret


Call_007_66c8:
    ld a, [wGameMode]
    or a
    ret z

    ld hl, $caca
    call Call_007_6dba
    push af
    ld hl, $ffc3
    ld a, $90
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $40
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    add $10
    ld [hl+], a
    ld b, $00
    push bc
    push hl
    ld hl, $cb0b
    call Call_007_6dba
    ld a, [hl]
    pop hl
    pop bc
    bit 7, a
    jr nz, jr_007_6701

    ld a, [$c8a4]
    bit 4, a
    jr z, jr_007_6701

    ld b, $01

jr_007_6701:
    ld a, b
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0403
    rst $10
    ret


Call_007_670e:
    ld a, [wGameMode]
    or a
    ret z

    ld hl, $cad6
    call Call_007_6dba
    cp $ff
    ret z

    push af
    ld hl, $ffc3
    ld a, $90
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    add $10
    ld [hl+], a
    ld b, $00
    ld a, [$c8a4]
    bit 4, a
    jr z, jr_007_673b

    ld b, $01

jr_007_673b:
    ld a, b
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0403
    rst $10
    ld hl, $cad7
    call Call_007_6dba
    push af
    ld hl, $ffc3
    ld a, $90
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $78
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    add $10
    ld [hl+], a
    ld b, $00
    ld a, [$c8a4]
    bit 4, a
    jr z, jr_007_676c

    ld b, $01

jr_007_676c:
    ld a, b
    ld [hl+], a
    ld a, $70
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0403
    rst $10
    ret


Call_007_6779:
    ld a, [$c90d]
    cp $02
    ret nz

    ld a, [$ca8d]
    or a
    ret z

    ld a, $00
    ld hl, $caca
    call Call_000_224a
    push af
    ld hl, $ffc3
    ld a, $2f
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $78
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    add $10
    ld [hl+], a
    ld b, $00
    push bc
    push hl
    ld hl, $cb0b
    ld a, $00
    call Call_000_224a
    ld a, [hl]
    pop hl
    pop bc
    bit 7, a
    jr nz, jr_007_67bc

    ld a, [$c8a4]
    bit 4, a
    jr z, jr_007_67bc

    ld b, $01

jr_007_67bc:
    ld a, b
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0403
    rst $10
    ld a, [$ca8d]
    cp $01
    ret z

    ld a, $01
    ld hl, $caca
    call Call_000_224a
    push af
    ld hl, $ffc3
    ld a, $5f
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $78
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    add $10
    ld [hl+], a
    ld b, $00
    push bc
    push hl
    ld hl, $cb0b
    ld a, $01
    call Call_000_224a
    ld a, [hl]
    pop hl
    pop bc
    bit 7, a
    jr nz, jr_007_6806

    ld a, [$c8a4]
    bit 4, a
    jr z, jr_007_6806

    ld b, $01

jr_007_6806:
    ld a, b
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0403
    rst $10
    ld a, [$ca8d]
    cp $02
    ret z

    ld a, $02
    ld hl, $caca
    call Call_000_224a
    push af
    ld hl, $ffc3
    ld a, $8f
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $78
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    add $10
    ld [hl+], a
    ld b, $00
    push bc
    push hl
    ld hl, $cb0b
    ld a, $02
    call Call_000_224a
    ld a, [hl]
    pop hl
    pop bc
    bit 7, a
    jr nz, jr_007_6850

    ld a, [$c8a4]
    bit 4, a
    jr z, jr_007_6850

    ld b, $01

jr_007_6850:
    ld a, b
    ld [hl+], a
    ld a, $70
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0403
    rst $10
    ret


Call_007_685d:
    push af
    ld a, l
    and $e0
    push af
    ld a, l
    inc a
    and $1f
    ld l, a
    pop af
    or l
    ld l, a
    pop af
    ret


Call_007_686c:
    ld a, [$c911]
    add l
    ld l, a
    ld a, [$c912]
    adc h
    and $03
    ld h, a
    ld a, [$c912]
    and $fc
    or h
    ld h, a
    ret


Call_007_6880:
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ret


Call_007_6889:
    push bc
    ld b, l
    ld a, l
    and $e0
    ld l, a
    call Call_007_686c
    ld a, b
    and $1f
    jr z, jr_007_689e

    ld b, a

jr_007_6898:
    call Call_007_685d
    dec b
    jr nz, jr_007_6898

jr_007_689e:
    pop bc
    ret


Call_007_68a0:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    call Call_007_6889
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a

jr_007_68af:
    ld a, [de]
    inc de
    cp $d9
    ret z

    cp $d8
    jr nz, jr_007_68d4

    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, h
    and $03
    or $98
    ld h, a
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    jr jr_007_68af

jr_007_68d4:
    call Write_gfx_tile
    call Call_007_685d
    jr jr_007_68af

Call_007_68dc:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    call Call_007_6880
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a

jr_007_68eb:
    ld a, [de]
    inc de
    cp $d9
    ret z

    cp $d8
    jr nz, jr_007_690a

    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    jr jr_007_68eb

jr_007_690a:
    ld [hl+], a
    jr jr_007_68eb

Call_007_690d:
    ld a, [$c911]
    ld l, a
    ld a, [$c912]
    ld h, a
    ld de, $c500
    ld c, $12

jr_007_691a:
    ld b, $20
    push hl

jr_007_691d:
    ld a, [de]
    call Write_gfx_tile
    ld a, l
    and $e0
    push af
    ld a, l
    inc a
    and $1f
    ld l, a
    pop af
    or l
    ld l, a
    inc de
    dec b
    jr nz, jr_007_691d

    pop hl
    push bc
    ld bc, $0020
    add hl, bc
    ld a, h
    and $03
    or $98
    ld h, a
    pop bc
    dec c
    jr nz, jr_007_691a

    ret


Call_007_6942:
    ld b, a
    ld de, $0801
    ld a, c
    cp $ff
    jr z, jr_007_69ac

    ld a, b
    push hl
    push af
    ld l, c
    ld h, $04
    ld de, $c180
    call Call_000_097a
    pop af
    ld de, $c180
    call Call_007_6de2
    pop hl
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0801
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_007_69a5:
    ld a, [$c823]
    cp $ff
    jr nz, jr_007_69b6

jr_007_69ac:
    ld a, $0a
    ld [$c823], a
    ld a, $04
    ld [$c822], a

Call_007_69b6:
jr_007_69b6:
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_007_69ef:
    push hl
    ld hl, $c180
    call Call_000_0c80
    pop hl
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0401
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_007_6a3d:
    and $01
    add $a7

Call_007_6a41:
    ld [$c180], a
    ld a, $f0
    ld [$c181], a
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0101
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_007_6a8f:
    ld hl, $c500
    ld bc, $0240

jr_007_6a95:
    ld a, $e0
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_007_6a95

    ret


Call_007_6a9e:
    ld hl, $9800
    ld bc, $0400

jr_007_6aa4:
    ld a, $e0
    call Write_gfx_tile_and_inc_HL
    dec bc
    ld a, b
    or c
    jr nz, jr_007_6aa4

    ret


    ld hl, wMenu_selection
    ld bc, $0008
    ld a, $00
    call Call_000_12c7

Call_007_6aba:
    ld hl, $ffb7
    call Call_007_66a4
    ld hl, $ffbb
    call Call_007_66a4
    ldh a, [$bb]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ldh a, [$b7]
    rrca
    rrca
    rrca
    add l
    ld l, a
    ld a, h
    adc $98
    ld h, a
    ld a, h
    and $03
    or $98
    ld h, a
    ld a, l
    ld [$c911], a
    ld a, h
    ld [$c912], a
    call Call_007_6a8f
    call Call_007_690d
    call Call_007_6a9e
    ld de, $2e0d
    ld hl, $9000
    call Call_000_1577
    call Call_007_6c8f
    ld hl, $170a
    rst $10
    ld hl, $c90d
    inc [hl]
    ret


    call Call_007_6a8f
    call Call_007_690d
    ld hl, $170a
    rst $10
    ld hl, $0103
    rst $10
    ld hl, $0b01
    rst $10
    ld hl, $0b02
    rst $10
    ld hl, $1708
    rst $10
    call Call_000_2518
    call Call_000_25f1
    ld hl, $0604
    rst $10
    ld hl, wGameState
    res 1, [hl]
    xor a
    ld [$c90d], a
    ld a, [$c969]
    or a
    ret z

    ld de, $2e15
    ld hl, $8500
    call Call_000_1577
    ld de, $2e16
    ld hl, $8540
    call Call_000_1577
    ld de, $2e17
    ld hl, $8580
    call Call_000_1577
    ld de, $2e18
    ld hl, $85c0
    call Call_000_1577
    ld de, $2e19
    ld hl, $8600
    call Call_000_1577
    ld de, $2e1a
    ld hl, $8640
    call Call_000_1577
    ld de, $2e1b
    ld hl, $8680
    call Call_000_1577
    ld de, $2e1c
    ld hl, $86c0
    call Call_000_1577
    ret


Call_007_6b7f:
    ld a, c
    ld [$c8e1], a
    inc de
    inc de
    ld a, [$c825]
    or a
    jp nz, Jump_007_6be6

    ld a, [wJoypad_Current]
    bit 5, a
    jr z, jr_007_6bac

    inc hl
    ld a, [hl]
    dec a
    push af
    push de
    push bc
    ld a, b
    ld b, c
    dec b
    call Call_000_1dfb
    ld a, b
    inc a
    pop bc
    pop de
    ld c, a
    pop af
    cp c
    jr c, jr_007_6bca

    ld a, c
    dec a
    jr jr_007_6bca

jr_007_6bac:
    ld a, [wJoypad_Current]
    bit 4, a
    jr z, jr_007_6be6

    inc hl
    ld a, [hl]
    inc a
    push af
    push de
    push bc
    ld a, b
    ld b, c
    dec b
    call Call_000_1dfb
    ld a, b
    inc a
    pop bc
    pop de
    ld c, a
    pop af
    cp c
    jr c, jr_007_6bca

    ld a, $00

jr_007_6bca:
    ld [hl-], a
    dec c
    cp c
    jr nz, jr_007_6c29

    ld a, [$c8e1]
    ld c, a
    push de
    push bc
    ld a, b
    ld b, c
    call Call_000_1dfb
    pop bc
    pop de
    or a
    jr z, jr_007_6c29

    dec a
    cp [hl]
    jr nc, jr_007_6c29

    ld [hl], a
    jr jr_007_6c29

Jump_007_6be6:
jr_007_6be6:
    push bc
    push de
    push hl
    call Call_007_6cf3
    pop hl
    pop de
    pop bc
    push de
    push bc
    ld a, b
    ld b, c
    dec b
    call Call_000_1dfb
    ld [$c8e1], a
    ld a, b
    pop bc
    pop de
    ld c, a
    inc hl
    ld a, [hl-]
    cp c
    jr nz, jr_007_6c08

    ld a, [$c8e1]
    inc a
    ld b, a

Call_007_6c08:
jr_007_6c08:
    res 7, [hl]
    ld a, [wJoypad_Current]
    bit 6, a
    jr z, jr_007_6c1a

    ld a, [hl]
    dec a
    cp b
    jr c, jr_007_6c28

    dec b
    ld a, b
    jr jr_007_6c28

jr_007_6c1a:
    ld a, [wJoypad_Current]
    bit 7, a
    jr z, jr_007_6c31

    ld a, [hl]
    inc a
    cp b
    jr c, jr_007_6c28

    ld a, $00

jr_007_6c28:
    ld [hl], a

jr_007_6c29:
    xor a
    ld [$c914], a
    push hl
    push de
    pop de
    pop hl

jr_007_6c31:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jr z, jr_007_6c3a

    set 7, [hl]

jr_007_6c3a:
    ld a, [hl]
    call Call_007_6c94
    ret


Call_007_6c3f:
    res 7, [hl]
    ld a, [wJoypad_Current]
    bit 6, a
    jr z, jr_007_6c51

    ld a, [hl]
    dec a
    cp b
    jr c, jr_007_6c5f

    dec b
    ld a, b
    jr jr_007_6c5f

jr_007_6c51:
    ld a, [wJoypad_Current]
    bit 7, a
    jr z, jr_007_6c68

    ld a, [hl]
    inc a
    cp b
    jr c, jr_007_6c5f

    ld a, $00

jr_007_6c5f:
    ld [hl], a
    xor a
    ld [$c914], a
    push hl
    push de
    pop de
    pop hl

jr_007_6c68:
    ld a, [hl]
    call Call_007_6c94
    ret


Call_007_6c6d:
    res 7, [hl]
    ld a, [wJoypad_Current]
    bit 5, a
    jr z, jr_007_6c7f

    ld a, [hl]
    dec a
    cp b
    jr c, jr_007_6c28

    dec b
    ld a, b
    jr jr_007_6c28

jr_007_6c7f:
    ld a, [wJoypad_Current]
    bit 4, a
    jr z, jr_007_6c31

    ld a, [hl]
    inc a
    cp b
    jr c, jr_007_6c28

    ld a, $00
    jr jr_007_6c28

Call_007_6c8f:
    xor a
    ld [$c914], a
    ret


Call_007_6c94:
    ld c, a
    bit 7, a
    jr nz, jr_007_6ca9

    ld a, [$c914]
    and $0f
    push af
    ld a, [$c914]
    inc a
    ld [$c914], a
    pop af
    ld a, c
    ret nz

Call_007_6ca9:
jr_007_6ca9:
    ld c, a
    ld b, $00

jr_007_6cac:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    and l
    cp $ff
    ret z

    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    push de
    push bc
    call Call_007_6889
    pop bc
    pop de
    ld a, c
    and $7f
    cp b
    ld a, $e0
    jr nz, jr_007_6cdc

    ld a, $e9
    bit 7, c
    jr nz, jr_007_6cdc

    ld a, [$c914]
    bit 4, a
    ld a, $e0
    jr nz, jr_007_6cdc

    ld a, $e8

jr_007_6cdc:
    call Write_gfx_tile
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    inc b
    jr jr_007_6cac

Call_007_6cf3:
    ld a, b
    cp c
    ret nc

    inc hl
    ld c, [hl]
    dec de
    dec de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    and l
    cp $ff
    ret z

    dec hl
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    push de
    push bc
    call Call_007_6889
    pop bc
    pop de
    ld a, c
    and $7f
    add $f1
    call Write_gfx_tile
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    ret


Call_007_6d2c:
    ld a, [hl+]
    push af
    push hl
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    inc de
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld a, b
    cp c
    ld a, $ee
    jr nc, jr_007_6d45

    ld a, $e7

jr_007_6d45:
    ld [hl-], a
    pop bc
    jr nc, jr_007_6d4d

    ld a, [bc]
    add $f1
    ld [hl], a

jr_007_6d4d:
    pop af

Call_007_6d4e:
    ld c, a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    push de
    push bc
    call Call_007_6889
    pop bc
    pop de
    ld a, $e9
    bit 7, c
    jr nz, jr_007_6d79

    ld a, [$c914]
    bit 4, a
    ld a, $e0
    jr nz, jr_007_6d79

    ld a, $e8

jr_007_6d79:
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    ret


Call_007_6d8b:
    ld a, [wGameState]
    bit 1, a
    jr z, jr_007_6da2

    ld a, [$cac0]
    and $7f
    ld hl, $ca8e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ret


jr_007_6da2:
    ld a, [$cac0]
    and $7f
    ret


Call_007_6da8:
    ld a, [wGameState]
    bit 1, a
    jr z, jr_007_6db3

    call Call_000_2266
    ret


jr_007_6db3:
    ld a, [$cac0]
    call Call_000_223b
    ret


Call_007_6dba:
    ld a, [wGameState]
    bit 1, a
    jr z, jr_007_6dc5

    call Call_000_2284
    ret


jr_007_6dc5:
    ld a, [$cac0]
    call Call_000_223b
    ld a, [hl]
    ret


Call_007_6dcd:
    ld a, [wGameState]
    bit 1, a
    jr z, jr_007_6dd8

    call Call_000_2289
    ret


jr_007_6dd8:
    ld a, [$cac0]
    call Call_000_223b
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ret


Call_007_6de2:
    push af

jr_007_6de3:
    ld a, [de]
    inc de
    cp $f0
    jr nz, jr_007_6de3

    dec de
    ld a, $a2
    ld [de], a
    pop af
    or a
    jr z, jr_007_6df8

    inc de
    ld l, e
    ld h, d
    call Call_000_09a4
    ret


jr_007_6df8:
    ld a, $43
    ld [de], a
    inc de
    ld a, $3e
    ld [de], a
    inc de
    ld a, $4a
    ld [de], a
    inc de
    ld a, $46
    ld [de], a
    inc de
    ld a, $49
    ld [de], a
    inc de
    ld a, $56
    ld [de], a
    inc de
    ld a, $f0
    ld [de], a
    ret


    nop
    cpl
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $2f01
    ld [bc], a
    cpl
    inc bc
    cpl
    inc b
    cpl
    dec b
    cpl
    ld b, $2f
    rlca
    cpl
    ld [$092f], sp
    cpl
    ld a, [bc]
    cpl
    dec bc
    cpl
    inc c
    cpl
    dec c
    cpl
    ld c, $2f
    rrca
    cpl
    db $10
    cpl
    nop
    jr c, @+$03

    jr c, jr_007_6e5b

    jr c, @+$05

jr_007_6e5b:
    jr c, jr_007_6e61

    jr c, @+$07

    jr c, jr_007_6e67

jr_007_6e61:
    jr c, @+$09

    jr c, jr_007_6e6d

    jr c, @+$0b

jr_007_6e67:
    jr c, jr_007_6e73

    jr c, @+$0d

    jr c, jr_007_6e79

jr_007_6e6d:
    jr c, @+$0f

    jr c, jr_007_6e7f

    jr c, @+$11

jr_007_6e73:
    jr c, jr_007_6e85

    jr c, @+$13

    jr c, jr_007_6e8b

jr_007_6e79:
    jr c, @+$15

    jr c, jr_007_6e91

    jr c, @+$17

jr_007_6e7f:
    jr c, jr_007_6e97

    jr c, @+$19

    jr c, jr_007_6e9d

jr_007_6e85:
    jr c, @+$1b

    jr c, jr_007_6ea3

    jr c, @+$1d

jr_007_6e8b:
    jr c, jr_007_6ea9

    jr c, @+$1f

    jr c, jr_007_6eaf

jr_007_6e91:
    jr c, @+$21

    jr c, jr_007_6eb5

    jr c, @+$23

jr_007_6e97:
    jr c, jr_007_6ebb

    jr c, @+$25

    jr c, jr_007_6ec1

jr_007_6e9d:
    jr c, @+$27

    jr c, jr_007_6ec7

    jr c, @+$29

jr_007_6ea3:
    jr c, jr_007_6ecd

    jr c, @+$2b

    jr c, jr_007_6ed3

jr_007_6ea9:
    jr c, @+$2d

    jr c, jr_007_6ed9

    jr c, @+$2f

jr_007_6eaf:
    jr c, jr_007_6edf

    jr c, @+$31

    jr c, jr_007_6ee5

jr_007_6eb5:
    jr c, @+$33

    jr c, jr_007_6eeb

    jr c, jr_007_6eee

jr_007_6ebb:
    jr c, @+$36

    jr c, jr_007_6ef4

    jr c, jr_007_6ef7

jr_007_6ec1:
    jr c, jr_007_6efa

    jr c, jr_007_6efd

    jr c, jr_007_6f00

jr_007_6ec7:
    jr c, jr_007_6f03

    jr c, jr_007_6f06

    jr c, jr_007_6f09

jr_007_6ecd:
    jr c, jr_007_6f0c

    jr c, jr_007_6f0f

    jr c, jr_007_6f12

jr_007_6ed3:
    jr c, @+$42

    jr c, jr_007_6f18

    jr c, jr_007_6f1b

jr_007_6ed9:
    jr c, jr_007_6f1e

    jr c, @+$46

    jr c, jr_007_6f24

jr_007_6edf:
    jr c, @+$48

    jr c, jr_007_6f2a

    jr c, jr_007_6ee5

jr_007_6ee5:
    add hl, sp
    ld bc, $0239
    add hl, sp
    inc bc

jr_007_6eeb:
    add hl, sp
    inc b
    add hl, sp

jr_007_6eee:
    dec b
    add hl, sp
    ld b, $39
    rlca
    add hl, sp

jr_007_6ef4:
    ld [$0939], sp

jr_007_6ef7:
    add hl, sp
    ld a, [bc]
    add hl, sp

jr_007_6efa:
    dec bc
    add hl, sp
    inc c

jr_007_6efd:
    add hl, sp
    dec c
    add hl, sp

jr_007_6f00:
    ld c, $39
    rrca

jr_007_6f03:
    add hl, sp
    db $10
    add hl, sp

jr_007_6f06:
    ld de, $1239

jr_007_6f09:
    add hl, sp
    inc de
    add hl, sp

jr_007_6f0c:
    inc d
    add hl, sp
    dec d

jr_007_6f0f:
    add hl, sp
    ld d, $39

jr_007_6f12:
    rla
    add hl, sp
    jr jr_007_6f4f

    add hl, de
    add hl, sp

jr_007_6f18:
    ld a, [de]
    add hl, sp
    dec de

jr_007_6f1b:
    add hl, sp
    inc e
    add hl, sp

jr_007_6f1e:
    dec e
    add hl, sp
    ld e, $39
    rra
    add hl, sp

jr_007_6f24:
    jr nz, jr_007_6f5f

    ld hl, $2239
    add hl, sp

jr_007_6f2a:
    inc hl
    add hl, sp
    inc h
    add hl, sp
    dec h
    add hl, sp
    ld h, $39
    daa
    add hl, sp
    jr z, jr_007_6f6f

    add hl, hl
    add hl, sp
    ld a, [hl+]
    add hl, sp
    dec hl
    add hl, sp
    inc l
    add hl, sp
    dec l
    add hl, sp
    ld l, $39
    cpl
    add hl, sp
    jr nc, jr_007_6f7f

    ld sp, $3239
    add hl, sp
    inc sp
    add hl, sp
    inc [hl]
    add hl, sp
    dec [hl]

jr_007_6f4f:
    add hl, sp
    ld [hl], $39
    scf
    add hl, sp
    jr c, jr_007_6f8f

    add hl, sp
    add hl, sp
    ld a, [hl-]
    add hl, sp
    dec sp
    add hl, sp
    inc a
    add hl, sp
    dec a

jr_007_6f5f:
    add hl, sp
    ld a, $39
    ccf
    add hl, sp
    ld b, b
    add hl, sp
    ld b, c
    add hl, sp
    ld b, d
    add hl, sp
    ld b, e
    add hl, sp
    ld b, h
    add hl, sp
    ld b, l

jr_007_6f6f:
    add hl, sp
    ld b, [hl]
    add hl, sp
    ld b, a
    add hl, sp
    nop
    ld a, [hl-]
    ld bc, $023a
    ld a, [hl-]
    inc bc
    ld a, [hl-]
    inc b
    ld a, [hl-]
    dec b

jr_007_6f7f:
    ld a, [hl-]
    ld b, $3a
    rlca
    ld a, [hl-]
    ld [$093a], sp
    ld a, [hl-]
    ld a, [bc]
    ld a, [hl-]
    dec bc
    ld a, [hl-]
    inc c
    ld a, [hl-]
    dec c

jr_007_6f8f:
    ld a, [hl-]
    ld c, $3a
    rrca
    ld a, [hl-]
    db $10
    ld a, [hl-]
    ld de, $123a
    ld a, [hl-]
    inc de
    ld a, [hl-]
    inc d
    ld a, [hl-]
    dec d
    ld a, [hl-]
    ld d, $3a
    rla
    ld a, [hl-]
    jr jr_007_6fe0

    add hl, de
    ld a, [hl-]
    ld a, [de]
    ld a, [hl-]
    dec de
    ld a, [hl-]
    inc e
    ld a, [hl-]
    dec e
    ld a, [hl-]
    ld e, $3a
    rra
    ld a, [hl-]
    jr nz, jr_007_6ff0

    ld hl, $223a
    ld a, [hl-]
    inc hl
    ld a, [hl-]
    inc h
    ld a, [hl-]
    dec h
    ld a, [hl-]
    ld h, $3a
    daa
    ld a, [hl-]
    jr z, @+$3c

    add hl, hl
    ld a, [hl-]
    ld a, [hl+]
    ld a, [hl-]
    dec hl
    ld a, [hl-]
    inc l
    ld a, [hl-]
    dec l
    ld a, [hl-]
    ld l, $3a
    cpl
    ld a, [hl-]
    jr nc, jr_007_7010

    ld sp, $323a
    ld a, [hl-]
    inc sp
    ld a, [hl-]
    inc [hl]
    ld a, [hl-]
    dec [hl]
    ld a, [hl-]

jr_007_6fe0:
    ld [hl], $3a

Call_007_6fe2:
    ld de, $0064
    push bc
    call Call_007_7023
    pop bc
    or a
    jr z, jr_007_7007

    ld de, $0064

jr_007_6ff0:
    call Call_007_7023
    call Call_007_7038
    call Call_007_703e
    ld de, $000a
    call Call_007_7023
    call Call_007_7038
    call Call_007_703e
    jr jr_007_701e

Call_007_7007:
jr_007_7007:
    ld de, $000a
    push bc
    call Call_007_7023
    pop bc
    or a

jr_007_7010:
    jr z, jr_007_701e

    ld de, $000a
    call Call_007_7023
    call Call_007_7038
    call Call_007_703e

jr_007_701e:
    ld a, c
    call Call_007_7038
    ret


Call_007_7023:
    push hl
    ld h, $ff

jr_007_7026:
    inc h
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    jr nc, jr_007_7026

    ld a, c
    add e
    ld c, a
    ld a, b
    adc d
    ld b, a
    ld a, h
    pop hl
    ret


Call_007_7038:
    add $f0
    call Write_gfx_tile
    ret


Call_007_703e:
    push af
    ld a, l
    and $e0
    push af
    ld a, l
    inc a
    and $1f
    ld l, a
    pop af
    or l
    ld l, a
    pop af
    ret


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    dec b
    ld [$0903], sp
    ldh [rTIMA], a
    dec bc
    push de
    rlca
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sub $06
    dec b
    sbc $e0
    add hl, bc
    db $e3
    dec bc
    ld [$d8ff], sp
    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    inc c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $dd
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    dec b
    ld [$0903], sp
    rst $38
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    jr nz, jr_007_70ec

    ld [hl+], a
    inc hl
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    inc h
    dec h
    ld h, $27
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    jr z, jr_007_7114

    ld a, [hl+]

jr_007_70ec:
    dec hl
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    rlca
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $3c
    dec a
    ld a, $3f
    ldh [$30], a
    add b
    ld [de], a
    db $e4
    ldh [$e0], a
    rst $38

jr_007_7114:
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    nop
    dec bc
    ld b, $e0
    ldh [$e4], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld [bc], a
    push de
    inc bc
    ldh [$e0], a
    db $e4
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    nop
    db $dd
    sbc $e0
    ldh [$e4], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    dec b
    ld [$e00b], sp
    ldh [$e4], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    dec c
    sbc $02
    ldh [$e0], a
    db $e4
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    and a
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    pop hl
    db $e3
    db $e4
    ldh [$e0], a
    ldh [$e5], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld [c], a
    db $e3
    db $e4
    ldh [$e0], a
    ldh [$e5], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld d, l
    ld bc, $e0e0
    ldh [$e0], a
    ldh [$e0], a
    ret c

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret c

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret c

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret c

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret c

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    reti


    dec [hl]
    nop
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret c

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret c

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret c

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret c

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret c

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    reti


    ld b, c
    ld bc, $b1b0
    or d
    or e
    or h
    or l
    ret c

    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    ret c

    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    ret c

    jp nz, $c4c3

    push bc
    add $c7
    ret c

    ret z

    ret


    jp z, $cccb

    call $ced8
    rst $08
    ret nc

    pop de
    jp nc, $d9d3

    rlca
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $3c
    dec a
    ld a, $3f
    ldh [$30], a
    add b
    ld [de], a
    db $e4
    ldh [$e0], a
    rst $38
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_007_72e9

    ld a, [hl-]
    dec sp
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_007_72e9:
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $07
    nop
    sub $0b
    push de
    ld a, [bc]
    db $e4
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    inc de
    db $e4
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    and a
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ld [$0fd5], sp
    dec bc
    ldh [$de], a
    rst $18
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    inc de
    db $e4
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    rlca
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    rlca
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    rlca
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $02
    nop
    ld [bc], a
    db $e4
    adc h
    adc l
    adc [hl]
    adc a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $07
    nop
    sub $0b
    push de
    ld a, [bc]
    db $e4
    sub b
    sub c
    sub d
    sub e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    daa
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $07
    add hl, bc
    rlca
    db $e4
    sub h
    sub l
    sub [hl]
    sub a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $07
    nop
    sub $0b
    push de
    ld a, [bc]
    db $e4
    sbc b
    sbc c
    sbc d
    sbc e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld d, l
    ld bc, $8d8c
    adc [hl]
    adc a
    sub b
    sub c
    ret c

    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    ret c

    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ret c

    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    ret c

    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    ret c

    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    reti


    ld b, b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sub $06
    dec b
    sbc $ff
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    jr nz, jr_007_76c6

    ld [hl+], a
    inc hl
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    inc h
    dec h
    ld h, $27
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    jr z, @+$2b

    ld a, [hl+]

jr_007_76c6:
    dec hl
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    ld c, b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld c, b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    and b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $4c
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $5e
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld h, b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $4a
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $5c
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $6e
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ret nz

    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $0c
    sub $d5
    ldh [$e2], a
    db $e3
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    push hl
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld b, b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    dec c
    inc b
    add hl, bc
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    jr nz, jr_007_794c

    ld [hl+], a
    inc hl
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    inc h
    dec h
    ld h, $27
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    jr z, @+$2b

    ld a, [hl+]

jr_007_794c:
    dec hl
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    and b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e1
    db $e3
    db $e4
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    push hl
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    ei
    ret c

    cp $05
    dec bc
    push de
    rlca
    rst $38
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    inc c
    sub $d5
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ld [bc], a
    push de
    sbc $ff
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    add b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    dec c
    inc b
    add hl, bc
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    jr nz, jr_007_79fd

    ld [hl+], a
    inc hl
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    inc h
    dec h
    ld h, $27
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    jr z, @+$2b

    ld a, [hl+]

jr_007_79fd:
    dec hl
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    and b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e2
    db $e3
    db $e4
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    push hl
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    call nc, $d6d5
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ld [$e009], sp
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    dec b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add hl, bc
    db $e3
    dec bc
    ld [$e0e0], sp
    ldh [$e0], a
    rst $38
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    dec bc
    push de
    rrca
    dec bc
    ldh [$d6], a
    db $e3
    ld [bc], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld bc, $e004
    add hl, bc
    ld a, [bc]
    ld [bc], a
    push de
    ld a, [bc]
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld bc, $e004
    db $e3
    sbc $00
    ld [$ffe0], sp
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld c, $09
    inc c
    ld a, [bc]
    ld [$de00], sp
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld h, d
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $03
    nop
    sub $0b
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    sub $de
    add hl, bc
    dec c
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    pop af
    ldh [$f2], a
    ldh [$f3], a
    ldh [$f4], a
    ldh [$f5], a
    ldh [$f6], a
    ldh [$f7], a
    ldh [$f8], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld h, h
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld l, h
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $07
    nop
    sub $0b
    push de
    ld a, [bc]
    db $e4
    inc a
    dec a
    ld a, $3f
    ldh [$e0], a
    ldh [$e4], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $da
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ldh [$db], a
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ldh [$dc], a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    rst $38
    ret c

    cp $e0
    ld [de], a
    db $e4
    ldh [$e0], a
    ldh [$e0], a
    ld [de], a
    db $e4
    ldh [$e0], a
    ldh [$e0], a
    ld [de], a
    db $e4
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld c, $01
    ld a, [$efef]
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    call nc, $d6d5
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ld [$e009], sp
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    jr nz, @+$03

    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ld bc, $0004
    ld a, [bc]
    db $dd
    push de
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    rlca
    dec b
    rrca
    push de
    ld [bc], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld bc, $0c00
    dec bc
    dec b
    add hl, bc
    inc c
    sub $ff
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld bc, $0709
    rlca
    nop
    ld [$e002], sp
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ret nz

    nop
    ld a, [$efef]
    rst $28
    rst $28
    ei
    ret c

    cp $3c
    dec a
    ld a, $3f
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    and b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ldh [$e0], a
    db $e4
    ldh [$e0], a
    ei
    ret c

    cp $07
    nop
    sub $0b
    push de
    ld a, [bc]
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    inc a
    dec a
    ld a, $3f
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $0e
    add hl, bc
    dec b
    ld [$02d5], sp
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $03
    nop
    ld a, [bc]
    rlca
    ldh [$e0], a
    ldh [rTAC], a
    add hl, bc
    ld [$e0e0], sp
    ldh [$d5], a
    db $dd
    db $dd
    ldh [$e0], a
    rst $38
    ret c

    cp $d6
    sbc $d5
    push de
    db $e3
    ldh [rNR21], a
    rlca
    add hl, bc
    ld [$e0e0], sp
    ld d, $d5
    db $dd
    db $dd
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    rrca
    dec b
    db $fc
    and a
    inc b
    xor h
    nop
    ld bc, $1324
    ld de, $608c
    rst $38
    sbc [hl]
    add [hl]
    ld a, c
    ld a, l
    add d
    ld a, [c]
    dec c
    ld b, $ff
    ld sp, hl
    jp z, Jump_000_0735

    inc b
    db $fd
    db $fc
    cp $9f
    cp $bf
    ld a, a
    dec bc
    rlca
    inc l
    inc bc
    rst $00
    nop
    add b
    ld sp, hl
    nop
    dec h
    inc h
    ld a, [de]
    ld hl, $7c82
    db $e4
    ld [bc], a
    ret nz

    ld a, a
    ld [bc], a
    ld b, b
    ld d, $80
    sub [hl]
    ld a, [hl]
    db $fc
    ld d, h
    db $10
    ld a, $cf
    ld [de], a
    dec bc
    inc b
    rlca
    ld [$d907], sp
    rra
    db $eb
    ld d, $1f
    db $f4
    ld [$04f8], sp
    ld hl, sp-$07
    rra
    dec bc
    jr nz, jr_007_7e33

    rlca
    add e
    ld [$001f], sp
    ld b, l
    ld a, [$0285]
    cp $00
    ld [bc], a
    ld b, $46
    ld a, [$1082]
    ld [$074e], sp
    adc b
    sbc c
    ld [hl], a
    ld de, $7711
    ld de, $1177
    ld b, e
    rlca
    add a
    add a
    ld h, a
    daa
    rlca
    rst $20
    sbc c
    sbc c
    ld b, e
    rst $38
    add e
    nop
    rst $38
    nop
    ld b, l
    ld e, d
    sub l
    ld b, d
    rst $38
    inc hl
    ld de, $7777
    ld de, $1177
    ld de, $4bff
    scf
    ld c, e
    scf
    ld c, e
    scf
    ld c, e
    scf
    add c
    ld a, a

jr_007_7e33:
    ld b, e
    ld bc, $7f8b
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld bc, $ff7f
    ld c, b
    ld e, d
    ld [bc], a
    ld b, h
    rst $38
    ld b, d
    sbc c
    adc d
    db $c3, $89, $00


    nop
    ld a, [hl]
    cp l
    jp Jump_000_3fff


    ret nz

    ld b, [hl]
    add b
    add d
    adc [hl]
    ld [hl], c
    ld b, $82
    ld a, a
    add c
    ld b, $84
    rst $38
    ret nz

    ld h, b
    db $10
    inc b
    add e
    cp $30
    jr jr_007_7e6d

    add a
    add b
    ret nz

    ldh [$b8], a

jr_007_7e6d:
    sbc [hl]
    adc b
    ld d, h
    ld b, $82
    add b
    ret nz

    dec b
    add e
    jr nz, jr_007_7ea0

    inc e
    ld b, $82
    ld [bc], a
    rlca
    inc b
    sub l
    ld [hl-], a
    ld de, $d83a
    inc b
    ld bc, $ff01
    xor d
    ld a, [$bfaa]
    and c
    add b
    add b
    or [hl]
    add b
    cp [hl]
    sbc h
    adc b
    add b
    ld a, a
    ld b, l
    db $10
    add e
    rla
    rrca
    nop
    ld b, l
    ld b, $85
    cp $fc

jr_007_7ea0:
    nop
    db $fc
    ld [bc], a
    ld b, [hl]
    ld b, $81
    rrca
    ld c, a
    db $10
    add c
    ld h, [hl]
    ld b, a
    sbc c
    ld b, e
    db $10
    add a
    ld [hl], b
    sub b
    sub b
    ldh a, [rSVBK]
    ld [hl+], a
    ld h, [hl]
    inc bc
    ld b, d
    rst $38
    add c
    nop
    ld b, l
    ld h, e
    ld b, d
    ld a, e
    add c
    add $43
    sbc c
    adc [hl]
    rst $38
    sbc c
    rst $38
    rst $38
    ld h, [hl]
    add a
    rst $08
    add a
    rst $08
    add a
    rst $08
    add a
    rst $08
    ld a, [hl]
    ld c, c
    add c
    add d
    rst $38
    add c
    ld b, e
    rst $38
    add c
    ld a, [hl]
    ld c, b
    ld h, e
    add c
    rst $38
    dec b
    adc c
    ld [hl+], a
    ld h, [hl]
    inc a
    ld b, d
    sub c
    rst $38
    add c
    ld b, d
    inc a
    inc b
    add l
    scf
    dec h
    dec h
    daa
    dec [hl]
    inc bc
    add l
    ld c, [hl]
    ld c, d
    ld c, [hl]
    ld c, d
    ld l, d
    inc bc
    ld b, d
    adc d
    add e
    jp c, $8aaa

    inc bc
    add d
    ld [$434a], a
    ld b, h
    adc c
    nop
    ld bc, $dd01
    ld d, c
    sbc l
    dec b
    dec e
    nop
    ld b, l
    ld bc, $088c
    ld a, a
    nop
    db $dd
    dec d
    push de
    dec e
    dec d
    nop
    rst $38
    nop
    cp e
    ld b, e
    ld [de], a
    sub e
    sub e
    nop
    rst $38
    nop
    cp d
    xor d
    or c
    xor c
    xor c
    nop
    rst $38
    ld bc, $8181
    ld bc, $0402
    inc h
    ld hl, sp+$10
    rst $38
    sbc a
    ld [hl], b
    nop
    adc b
    ld [hl], b
    add b
    ld a, b
    add h
    ld a, b
    ld b, b
    inc a
    ld [de], a
    inc c
    inc b
    ld [bc], a
    ld bc, $0e00
    nop
    ld de, $010e
    ld e, $21
    ld e, $02
    inc a
    ld c, b
    jr nc, jr_007_7f75

    ld b, b
    add b
    ld [bc], a

Call_007_7f58:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_007_7f75:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
