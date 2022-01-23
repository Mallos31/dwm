; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05f", ROMX[$4000], BANK[$5f]

    ld e, a
    rla
    ld b, b
    rst $30
    ld b, b
    inc e
    ld b, h
    add hl, de
    ld b, [hl]
    ld h, b
    ld c, d
    dec de
    ld c, e
    ldh a, [rHDMA2]
    jr nc, jr_05f_4067

    or a
    ld e, e
    adc l
    ld e, h
    ld d, c
    ld h, d
    call Call_000_1264
    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    ld hl, $9800
    ld bc, $0400
    ld a, $e0
    call Call_000_12c7
    ld a, [$c88b]
    rst $00
    add hl, sp
    ld b, b
    sub l
    ld b, b
    ld hl, $8000
    ld bc, $0c00
    call Call_05f_40eb
    ld hl, $8b00
    ld de, $1202
    call Call_000_098f
    ld de, $2e00
    ld hl, $8d00
    call Call_000_14cf
    ld de, $66b3
    ld hl, $9800
    ld bc, $1412
    call Call_05f_424a
    xor a
    ld hl, $c0d8
    ld bc, $0028

jr_05f_4067:
    call Call_000_12c7
    call Call_05f_439d
    call Call_05f_43ba
    ld a, $fc
    call Call_000_1688
    ld a, $21
    call Call_000_1ae1
    xor a
    ldh [$b7], a
    xor a
    ldh [$bb], a
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    xor a
    ld [$c892], a
    ld a, $11
    ld [$c8a1], a
    ld a, $01
    jp Jump_000_11cb


    xor a
    ld hl, $c0d8
    ld bc, $0028
    call Call_000_12c7
    ld hl, $8800
    ld bc, $0800
    call Call_05f_40eb
    ld de, $42cf
    ld hl, $99a0
    ld bc, $1404
    call Call_05f_424a
    ld de, $2e00
    ld hl, $8d00
    call Call_000_14cf
    ld hl, $8b00
    ld de, $1202
    call Call_000_098f
    ld a, $fc
    call Call_000_1688
    ld a, $31
    call Call_000_1ae1
    xor a
    ldh [$b7], a
    xor a
    ldh [$bb], a
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    xor a
    ld [$c892], a
    ld a, $01
    ld [$c8a1], a
    ld a, $01
    jp Jump_000_11cb


Call_05f_40eb:
jr_05f_40eb:
    ld [hl], $ff
    inc hl
    ld [hl], $00
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_05f_40eb

    ret


    ld a, [$c850]
    or a
    ret nz

    ld a, [$c88b]
    rst $00
    inc b
    ld b, c
    ld [de], a
    ld b, c
    ld a, [$c0d8]
    rst $00
    jr nz, @+$43

    ld b, b
    ld b, c
    ld d, l
    ld b, c
    ld h, e
    ld b, c
    ld a, b
    ld b, c
    ld a, [$c0d8]
    rst $00
    jp c, $ed41

    ld b, c
    or $41
    db $10
    ld b, d
    ld b, h
    ld b, d
    ld hl, $c0da
    inc [hl]
    ld a, [hl]
    cp $3c
    ret c

    ld a, $00
    ld [hl+], a
    inc [hl]
    ld a, [hl]
    cp $05
    ret c

    ld [hl], $00
    ld hl, $c0d8
    inc [hl]
    ld hl, $c88f
    inc [hl]
    ld a, $04
    call Call_000_1688
    ret


    ld hl, $c0d9
    inc [hl]
    ld a, [hl]
    cp $1a
    call z, $440f
    call Call_05f_439d
    call Call_05f_43ba
    ld hl, $c0d8
    inc [hl]
    ret


    ld hl, $0802
    rst $10
    ld a, $fc
    call Call_000_1688
    ld hl, $c0d8
    inc [hl]
    ret


    xor a
    ld [$c88f], a
    ld a, [$c0d9]
    cp $1a
    jr z, jr_05f_4173

    xor a
    ld [$c0d8], a
    ret


jr_05f_4173:
    ld hl, $c0d8
    inc [hl]
    ret


    ld hl, $c0da
    inc [hl]
    ld a, [hl]
    cp $3c
    ret c

    ld a, $00
    ld [hl+], a
    inc [hl]
    ld a, [hl]
    cp $05
    ret c

    ld [hl], $00
    ld hl, $002f
    ld a, l
    ld [$c96d], a
    ld a, h
    ld [$c96e], a
    ld hl, $0038
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $00c8
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ld a, $01
    ld [$c96c], a
    xor a
    ldh [$90], a
    xor a
    ld [$d8d7], a
    ld hl, wGameState
    res 0, [hl]
    ld a, $01
    ld [wGameMode], a
    ld a, $00
    ld [$c88b], a
    ld a, $00
    ld [$c88c], a
    ld a, $00
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]
    ld a, $04
    call Call_000_1688
    ret


    ld a, $07
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4c02
    rst $10
    ld hl, $c0d8
    inc [hl]
    ret


    xor a
    ld [$c88f], a
    ld hl, $c0d8
    inc [hl]
    ret


    ld a, [wJoypad_current_frame]
    and $0f
    ret z

    ld hl, $0256
    call Call_000_096d
    ld de, $2e07
    ld hl, $9800
    call Call_05f_4298
    ld hl, $c0d8
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$c83c]
    or a
    ld hl, $0258
    jr nz, jr_05f_423c

    xor a
    ldh [$90], a
    xor a
    ld [$d8d7], a
    ld a, $01
    ld [$c8ea], a
    ld hl, wGameState
    res 0, [hl]
    di
    call Call_000_2128
    ei
    ld a, $59
    call Call_000_1b2c
    ld hl, $0257

jr_05f_423c:
    call Call_000_096d
    ld hl, $c0d8
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ret


Call_05f_424a:
jr_05f_424a:
    push bc
    push hl

jr_05f_424c:
    ld a, [de]
    call Write_gfx_tile
    inc hl
    inc de
    dec b
    jr nz, jr_05f_424c

    pop hl
    pop bc
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec c
    jr nz, jr_05f_424a

    ret


Call_05f_4263:
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    inc de
    ld b, a
    add hl, bc
    ld a, l
    ld [$c0fe], a
    ld a, h
    ld [$c0ff], a

jr_05f_4272:
    ld a, [de]
    inc de
    cp $d8
    jr z, jr_05f_427e

    cp $d9
    ret z

    ld [hl+], a
    jr jr_05f_4272

jr_05f_427e:
    ld a, [$c0fe]
    ld l, a
    ld a, [$c0ff]
    ld h, a
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ld [$c0fe], a
    ld a, h
    ld [$c0ff], a
    jr jr_05f_4272

Call_05f_4298:
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    inc de
    ld b, a
    add hl, bc
    ld a, l
    ld [$c0fe], a
    ld a, h
    ld [$c0ff], a

jr_05f_42a7:
    ld a, [de]
    inc de
    cp $d8
    jr z, jr_05f_42b5

    cp $d9
    ret z

    call Write_gfx_tile_and_inc_HL
    jr jr_05f_42a7

jr_05f_42b5:
    ld a, [$c0fe]
    ld l, a
    ld a, [$c0ff]
    ld h, a
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ld [$c0fe], a
    ld a, h
    ld [$c0ff], a
    jr jr_05f_42a7

    ldh [$e0], a
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
    ei
    ldh [$e0], a
    cp $b0
    or c
    or d
    ldh [$b3], a
    or h
    ldh [$b5], a
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    rst $38
    ldh [$e0], a
    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ldh [$e0], a
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

Call_05f_431f:
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
    ld hl, $8000
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $1402
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld hl, $4c02
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c828], a
    ld a, d
    ld [$c829], a
    ret


Call_05f_435e:
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
    ld hl, $8260
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0b0c
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld hl, $4c02
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c828], a
    ld a, d
    ld [$c829], a
    ret


Call_05f_439d:
    ld a, [$c0d9]
    ld [$c823], a
    ld a, $05
    ld [$c822], a
    call Call_05f_431f
    ld a, [$c0d9]
    ld [$c823], a
    ld a, $06
    ld [$c822], a
    call Call_05f_435e
    ret


Call_05f_43ba:
    ld a, [$c0d9]
    ld hl, $43f4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    ret z

    ld [$c0de], a
    ld [$c81e], a
    ld a, $04
    ld [$c81f], a
    ld hl, $016d
    ld a, l
    ld [$c820], a
    ld a, h
    ld [$c821], a
    ld hl, $8aa0
    ld a, l
    ld [$c0dc], a
    ld a, h
    ld [$c0dd], a
    ld hl, $5111
    rst $10
    ld hl, $1706
    rst $10
    ret


    ld l, l
    inc de
    ld e, c
    ld c, c
    ld b, d
    ld a, [bc]
    and h
    dec de
    add c
    add h
    rst $00
    sub l
    sub [hl]
    sub a
    ld b, h
    ld a, a
    jp nz, $9a91

    inc l
    ld l, l
    inc de
    ld e, c
    ld c, c
    ld b, d
    ld a, [bc]
    ld [$1b11], sp
    ld l, b
    ld hl, $9800
    ld bc, $140b
    call Call_05f_424a
    ret


    ld a, [$c88c]
    rst $00
    ld l, $44
    jr nz, jr_05f_4469

    jr nz, @+$47

    jr nz, @+$47

    ld [hl], d
    ld b, l
    jr nz, @+$47

    ret nz

    ld b, l
    ld a, [$c88d]
    rst $00
    add hl, sp
    ld b, h
    add [hl]
    ld b, h
    db $d3
    ld b, h
    ret


    ld a, $02
    call Call_000_1c89
    call Call_000_1013
    xor a
    ld hl, $9800
    ld bc, $0400
    call Call_000_12c7
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call Call_000_12c7
    ld de, $560e
    ld hl, $9000
    call Call_000_14cf
    ld de, $669d
    ld hl, $9800
    call Call_05f_4263
    ld a, $00

jr_05f_4469:
    ld [$c81e], a
    ld hl, $170b
    rst $10
    ld de, $3f00
    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld a, [$c81d]
    or a
    call nz, Call_000_14cf
    ld a, $00
    ldh [rVBK], a
    ret


    ld a, $02
    call Call_000_1c89
    call Call_000_1013
    xor a
    ld hl, $9800
    ld bc, $0400
    call Call_000_12c7
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call Call_000_12c7
    ld de, $560c
    ld hl, $9000
    call Call_000_14cf
    ld de, $666e
    ld hl, $9800
    call Call_05f_4263
    ld a, $00
    ld [$c81e], a
    ld hl, $170b
    rst $10
    ld de, $3f00
    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld a, [$c81d]
    or a
    call nz, Call_000_14cf
    ld a, $00
    ldh [rVBK], a
    ret


    ld a, $02
    call Call_000_1c89
    call Call_000_1013
    xor a
    ld hl, $9800
    ld bc, $0400
    call Call_000_12c7
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call Call_000_12c7
    ld de, $5b1f
    ld hl, $9000
    call Call_000_14cf
    ld de, $6457
    ld hl, $9800
    call Call_05f_4263
    ld a, $00
    ld [$c81e], a
    ld hl, $170b
    rst $10
    ld de, $3f00
    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld a, [$c81d]
    or a
    call nz, Call_000_14cf
    ld a, $00
    ldh [rVBK], a
    ret


    xor a
    ld hl, $9800
    ld bc, $0400
    call Call_000_12c7
    ld a, $ff
    ld hl, $9000
    ld bc, $0010
    call Call_000_12c7
    ld de, $5b18
    ld hl, $8000
    call Call_000_1577
    ld de, $5b19
    ld hl, $8040
    call Call_000_1577
    ld a, $00
    ld [$c81e], a
    ld hl, $170b
    rst $10
    ld a, $00
    ld [$c81e], a
    ld hl, $170c
    rst $10
    ld a, $01
    ldh [rVBK], a
    xor a
    ld hl, $9800
    ld bc, $0400
    ld a, [$c81d]
    or a
    ld a, $00
    call nz, Call_000_12c7
    ld a, $00
    ldh [rVBK], a
    ret


    xor a
    ld hl, $9800
    ld bc, $0400
    call Call_000_12c7
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call Call_000_12c7
    ld de, $5b20
    ld hl, $9000
    call Call_000_14cf
    ld de, $5b21
    ld hl, $8800
    call Call_000_14cf
    ld de, $64f1
    ld hl, $9800
    call Call_05f_4263
    ld a, $01
    ld [$c81e], a
    ld hl, $170b
    rst $10
    ld de, $3f02
    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld a, [$c81d]
    or a
    call nz, Call_000_14cf
    ld a, $00
    ldh [rVBK], a
    ret


    xor a
    ld hl, $9800
    ld bc, $0400
    call Call_000_12c7
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call Call_000_12c7
    ld de, $5b20
    ld hl, $9000
    call Call_000_1577
    ld de, $5b21
    ld hl, $8800
    call Call_000_1577
    ld de, $6583
    ld hl, $9800
    call Call_05f_4263
    ld a, $06
    call Call_000_1ae1
    ld a, $01
    ld [$c81e], a
    ld hl, $170b
    rst $10
    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld a, [$c81d]
    or a
    jr nz, jr_05f_460c

    jr jr_05f_4614

jr_05f_460c:
    ld a, $05
    ld [hl+], a
    ld a, h
    cp $9b
    jr nz, jr_05f_460c

jr_05f_4614:
    ld a, $00
    ldh [rVBK], a
    ret


    ld a, $f4
    call Call_000_1275
    ld a, [wJoypad_current_frame]
    bit 0, a
    jr nz, jr_05f_463f

    bit 1, a
    jr nz, jr_05f_463f

    bit 3, a
    jr nz, jr_05f_463f

    ld a, [$c88c]
    rst $00
    and [hl]
    ld b, [hl]
    ld a, [de]
    ld b, a
    or b
    ld b, a
    ld b, c
    ld c, b
    push de
    ld c, b
    ld [$b349], sp
    ld c, c

jr_05f_463f:
    ld a, [$c88c]
    cp $06
    jr nc, jr_05f_4663

    cp $00
    jr z, jr_05f_467c

Jump_05f_464a:
    ld a, $04
    call Call_000_1688
    ld a, $00
    ld [$c88b], a
    ld a, $06
    ld [$c88c], a
    ld a, $00
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]
    ret


jr_05f_4663:
    ld a, $04
    call Call_000_1688
    ld a, $01
    ld [$c88b], a
    ld a, $00
    ld [$c88c], a
    ld a, $00
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]
    ret


jr_05f_467c:
    ld a, [$c88d]
    cp $00
    jp nz, Jump_05f_4685

    ret


Jump_05f_4685:
    ld a, [$c88d]
    cp $01
    jp nz, Jump_05f_464a

    ld a, $04
    call Call_000_1688
    ld a, $00
    ld [$c88b], a
    ld a, $00
    ld [$c88c], a
    ld a, $02
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]
    ret


    ld a, [$c88d]
    rst $00
    or c
    ld b, [hl]
    jp nc, $f346

    ld b, [hl]
    ret


    ld a, [$c850]
    or a
    ret nz

    ld hl, $c0d8
    inc [hl]
    ld a, [$c0d8]
    cp $3c
    ret nz

    ld a, $04
    call Call_000_1688
    xor a
    ld [$c0d8], a
    ld hl, $c88d
    inc [hl]
    ld hl, $c88e
    inc [hl]
    ret


    ld a, [$c850]
    or a
    ret nz

    ld hl, $c0d8
    inc [hl]
    ld a, [$c0d8]
    cp $b4
    ret nz

    ld a, $04
    call Call_000_1688
    xor a
    ld [$c0d8], a
    ld hl, $c88d
    inc [hl]
    ld hl, $c88e
    inc [hl]
    ret


    ld a, [$c850]
    or a
    ret nz

    ld hl, $c0d8
    inc [hl]
    ld a, [$c0d8]
    cp $b4
    ret nz

    ld a, $04
    call Call_000_1688
    xor a
    ld [$c0d8], a
    ld hl, $c88c
    inc [hl]
    ld hl, $c88e
    inc [hl]
    ld hl, $c0dc
    call Call_05f_49cc
    ret


    ld a, [$c850]
    or a
    ret nz

    ld a, [$c0d8]
    or a
    jr nz, jr_05f_472a

    ld a, $5d
    call Call_000_1b2c

jr_05f_472a:
    ld a, $01
    ld [$c0d8], a
    ld a, [$c0dc]
    or a
    jr nz, jr_05f_4777

    ld a, $00
    ldh [$c7], a
    ld a, $00
    ldh [$c9], a
    ld a, $00
    ldh [$ca], a
    ld hl, $c0dc
    ld a, l
    ld [$c0fc], a
    ld a, h
    ld [$c0fd], a
    ld hl, $0204
    rst $10
    ld hl, $c0dd
    dec [hl]
    ld hl, $c0dd
    dec [hl]
    ld hl, $c0de
    inc [hl]
    ld hl, $c0de
    inc [hl]
    ld a, [$c0dd]
    cp $40
    jr z, jr_05f_4772

    cp $e0
    jr nz, jr_05f_4777

    ld a, $01
    ld [$c0dc], a
    jr jr_05f_4777

jr_05f_4772:
    ld a, $00
    ld [$c0e2], a

jr_05f_4777:
    ld a, [$c0e2]
    or a
    ret nz

    ld a, $01
    ldh [$c7], a
    ld a, $04
    ldh [$c9], a
    ld a, $00
    ldh [$ca], a
    ld hl, $c0e2
    ld a, l
    ld [$c0fc], a
    ld a, h
    ld [$c0fd], a
    ld hl, $0204
    rst $10
    ld a, [$c0e2]
    or a
    ret z

    ld a, [$c0dc]
    or a
    ret z

    xor a
    ld [$c0d8], a
    ld hl, $c88c
    inc [hl]
    ld hl, $c0dc
    call Call_05f_49f1
    ret


    ld a, [$c0d8]
    or a
    jr nz, jr_05f_47bb

    ld a, $5d
    call Call_000_1b2c

jr_05f_47bb:
    ld a, $01
    ld [$c0d8], a
    ld a, [$c0dc]
    or a
    jr nz, jr_05f_4808

    ld a, $00
    ldh [$c7], a
    ld a, $00
    ldh [$c9], a
    ld a, $00
    ldh [$ca], a
    ld hl, $c0dc
    ld a, l
    ld [$c0fc], a
    ld a, h
    ld [$c0fd], a
    ld hl, $0204
    rst $10
    ld hl, $c0dd
    dec [hl]
    ld hl, $c0dd
    dec [hl]
    ld hl, $c0de
    inc [hl]
    ld hl, $c0de
    inc [hl]
    ld a, [$c0dd]
    cp $10
    jr z, jr_05f_4803

    cp $e0
    jr nz, jr_05f_4808

    ld a, $01
    ld [$c0dc], a
    jr jr_05f_4808

jr_05f_4803:
    ld a, $00
    ld [$c0e2], a

jr_05f_4808:
    ld a, [$c0e2]
    or a
    ret nz

    ld a, $01
    ldh [$c7], a
    ld a, $04
    ldh [$c9], a
    ld a, $00
    ldh [$ca], a
    ld hl, $c0e2
    ld a, l
    ld [$c0fc], a
    ld a, h
    ld [$c0fd], a
    ld hl, $0204
    rst $10
    ld a, [$c0e2]
    or a
    ret z

    ld a, [$c0dc]
    or a
    ret z

    xor a
    ld [$c0d8], a
    ld hl, $c88c
    inc [hl]
    ld hl, $c0dc
    call Call_05f_4a16
    ret


    ld a, [$c0d8]
    or a
    jr nz, jr_05f_484c

    ld a, $5d
    call Call_000_1b2c

jr_05f_484c:
    ld a, $01
    ld [$c0d8], a
    ld a, [$c0dc]
    or a
    jr nz, jr_05f_4899

    ld a, $00
    ldh [$c7], a
    ld a, $00
    ldh [$c9], a
    ld a, $00
    ldh [$ca], a
    ld hl, $c0dc
    ld a, l
    ld [$c0fc], a
    ld a, h
    ld [$c0fd], a
    ld hl, $0204
    rst $10
    ld hl, $c0dd
    dec [hl]
    ld hl, $c0dd
    dec [hl]
    ld hl, $c0de
    inc [hl]
    ld hl, $c0de
    inc [hl]
    ld a, [$c0dd]
    cp $70
    jr z, jr_05f_4894

    cp $20
    jr nz, jr_05f_4899

    ld a, $01
    ld [$c0dc], a
    jr jr_05f_4899

jr_05f_4894:
    ld a, $00
    ld [$c0e2], a

jr_05f_4899:
    ld a, [$c0e2]
    or a
    ret nz

    ld a, $01
    ldh [$c7], a
    ld a, $04
    ldh [$c9], a
    ld a, $00
    ldh [$ca], a
    ld hl, $c0e2
    ld a, l
    ld [$c0fc], a
    ld a, h
    ld [$c0fd], a
    ld hl, $0204
    rst $10
    ld a, [$c0e2]
    or a
    ret z

    ld a, [$c0dc]
    or a
    ret z

    ld a, $04
    call Call_000_1688
    xor a
    ld [$c0d8], a
    ld hl, $c88c
    inc [hl]
    ld hl, $c88e
    inc [hl]
    ret


    ld a, [$c850]
    or a
    ret nz

    ld hl, $c0d8
    inc [hl]
    ld a, [$c0d8]
    cp $78
    ret nz

    ld a, $04
    call Call_000_1688
    xor a
    ld [$c0d8], a
    ld hl, $c88c
    inc [hl]
    ld hl, $c88e
    inc [hl]
    xor a
    ld [$c0e8], a
    xor a
    ld [$c0e9], a
    xor a
    ld [$c0ea], a
    ld hl, $c0dc
    call Call_05f_4a3b
    ret


    ld a, [$c850]
    or a
    ret nz

    ld a, [$c0d8]
    or a
    jr nz, jr_05f_4918

    ld a, $5d
    call Call_000_1b2c

jr_05f_4918:
    ld a, $01
    ld [$c0d8], a
    ld a, [$c0dc]
    or a
    jr nz, jr_05f_495a

    ld a, $00
    ldh [$c7], a
    ld a, $00
    ldh [$c9], a
    ld a, $00
    ldh [$ca], a
    ld hl, $c0dc
    ld a, l
    ld [$c0fc], a
    ld a, h
    ld [$c0fd], a
    ld hl, $0204
    rst $10
    ld hl, $c0dd
    dec [hl]
    ld hl, $c0dd
    dec [hl]
    ld hl, $c0de
    inc [hl]
    ld hl, $c0de
    inc [hl]
    ld a, [$c0dd]
    cp $36
    jr nz, jr_05f_495a

    ld a, $01
    ld [$c0dc], a

jr_05f_495a:
    ld a, [$c0e2]
    or a
    jr nz, jr_05f_4997

    ld a, $00
    ldh [$c7], a
    ld a, $00
    ldh [$c9], a
    ld a, $00
    ldh [$ca], a
    ld hl, $c0e2
    ld a, l
    ld [$c0fc], a
    ld a, h
    ld [$c0fd], a
    ld hl, $0204
    rst $10
    ld hl, $c0e3
    dec [hl]
    ld hl, $c0e3
    dec [hl]
    ld hl, $c0e4
    inc [hl]
    ld hl, $c0e4
    inc [hl]
    ld a, [$c0e3]
    cp $59
    jr nz, jr_05f_4997

    ld a, $01
    ld [$c0e2], a

jr_05f_4997:
    ld a, [$c0e2]
    or a
    ret z

    ld a, [$c0dc]
    or a
    ret z

    ld a, $04
    call Call_000_1688
    xor a
    ld [$c0d8], a
    ld hl, $c88c
    inc [hl]
    ld hl, $c88e
    inc [hl]
    ret


    ld a, [$ddb4]
    ld hl, $ddce
    and [hl]
    ld hl, $dde8
    and [hl]
    ld hl, $de02
    and [hl]
    cp $ff
    ret nz

    ld a, $06
    di
    call Call_000_1ae1
    ret


Call_05f_49cc:
    ld a, $00
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ret


Call_05f_49f1:
    ld a, $00
    ld [hl+], a
    ld a, $40
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ret


Call_05f_4a16:
    ld a, $00
    ld [hl+], a
    ld a, $a0
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ret


Call_05f_4a3b:
    ld a, $00
    ld [hl+], a
    ld a, $86
    ld [hl+], a
    ld a, $fe
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $a9
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ret


Call_05f_4a60:
    ld a, [$db8a]
    cp $12
    jp c, Jump_05f_4ae8

    cp $39
    jr z, jr_05f_4ae8

    cp $37
    ret c

    cp $41
    jr c, jr_05f_4ae8

    cp $42
    ret c

    cp $43
    jr c, jr_05f_4ae8

    cp $44
    ret c

    cp $54
    jr c, jr_05f_4ae8

    cp $55
    ret c

    cp $6a
    jr c, jr_05f_4ae8

    cp $73
    ret c

    cp $75
    jr c, jr_05f_4ae8

    cp $7d
    ret c

    cp $7f
    jr c, jr_05f_4ae8

    cp $81
    ret c

    cp $84
    jr c, jr_05f_4ae8

    cp $88
    jr c, jr_05f_4b0b

    cp $99
    ret c

    cp $9c
    jr c, jr_05f_4ae8

    cp $a5
    ret c

    cp $a6
    jr c, jr_05f_4ae8

    cp $ab
    ret c

    cp $ac
    jr c, jr_05f_4ae8

    cp $af
    ret c

    cp $b0
    jr c, jr_05f_4ae8

    cp $c7
    ret c

    cp $c9
    jr c, jr_05f_4ae8

    cp $ca
    ret c

    cp $cc
    jr c, jr_05f_4ae8

    cp $d4
    ret c

    cp $d5
    jr c, jr_05f_4ae8

    cp $d6
    ret c

    cp $da
    jr c, jr_05f_4ae8

    cp $dd
    ret c

    cp $de
    jr c, jr_05f_4ae8

    cp $df
    ret c

    cp $e0
    jr c, jr_05f_4ae8

    ret


Jump_05f_4ae8:
jr_05f_4ae8:
    xor a
    ld hl, $da82
    ld bc, $0006
    call Call_000_12c7
    ld b, $03
    ld a, [$c863]
    bit 1, a
    jr z, jr_05f_4afd

    ld b, $02

jr_05f_4afd:
    ld a, [$db89]
    cp $04
    ld a, b
    jr c, jr_05f_4b07

    xor $01

jr_05f_4b07:
    ld [$da83], a
    ret


jr_05f_4b0b:
    xor a
    ld hl, $da82
    ld bc, $0006
    call Call_000_12c7
    ld a, $04
    ld [$da83], a
    ret


    ld a, [$da34]
    inc a
    cp $05
    ld [$da34], a
    ret c

    xor a
    ld [$da34], a
    ld a, [$da82]
    or a
    ret nz

    ld a, [$db54]
    cp $80
    jr nz, jr_05f_4b40

    ld a, $6c
    call Call_000_1b2c
    ld a, $ff
    ld [$db54], a
    ret


jr_05f_4b40:
    ld a, [$da83]
    rst $00
    ld h, b
    ld c, e
    ld h, b
    ld c, e
    ld l, d
    ld c, e
    ld [bc], a
    ld c, h
    ld c, d
    ld c, h
    adc c
    ld c, h
    ret c

    ld c, h
    inc d
    ld c, l
    ld l, c
    ld c, l
    add [hl]
    ld c, l
    xor c
    ld c, l
    ld hl, sp+$4d
    and c
    ld d, c
    ld b, [hl]
    ld d, d
    ld a, $01
    ld [$da82], a
    xor a
    ld [$da84], a
    ret


    ld a, [$c863]
    ld b, a
    ld a, [$db89]
    and $03
    cp $03
    jr z, jr_05f_4bf4

    ld a, [$db89]
    bit 1, b
    jr nz, jr_05f_4b84

    cp $04
    jr c, jr_05f_4bf4

    jr jr_05f_4b88

jr_05f_4b84:
    cp $04
    jr nc, jr_05f_4bf4

jr_05f_4b88:
    ld a, [$d9ed]
    cp $0a
    jr z, jr_05f_4b97

    ld a, [$db89]
    call Call_000_2fa5
    jr c, jr_05f_4bf4

jr_05f_4b97:
    ld a, [$da84]
    rst $00
    and l
    ld c, e
    bit 1, e
    and l
    ld c, e
    bit 1, e
    db $f4
    ld c, e
    ld a, $06
    ld [$da85], a
    call Call_05f_4e3c
    ld hl, $50ff
    call Call_05f_50f4
    ld de, $9800
    add hl, de
    ld e, l
    ld d, h
    ld a, $03
    ld hl, $5109
    call Call_05f_50f4
    ld c, $06
    call Call_05f_4e1f
    ld hl, $da84
    inc [hl]
    ret


    ld a, $06
    ld [$da85], a
    call Call_05f_4e3c
    ld hl, $50ff
    call Call_05f_50f4
    ld de, $9800
    add hl, de
    ld e, l
    ld d, h
    ld a, [$db89]
    and $03
    ld hl, $5109
    call Call_05f_50f4
    ld c, $06
    call Call_05f_4e1f
    ld hl, $da84
    inc [hl]
    ret


jr_05f_4bf4:
    ld a, $01
    ld [$da82], a
    xor a
    ld [$da84], a
    xor a
    ld [$da85], a
    ret


    ld a, [$db8a]
    cp $81
    jr z, jr_05f_4c3a

    ld a, [$da84]
    rst $00
    dec d
    ld c, h
    cpl
    ld c, h
    dec d
    ld c, h
    ld a, [hl-]
    ld c, h
    ld a, $02
    ldh [$bb], a
    ld a, $00
    ldh [$b7], a
    ld hl, $da84
    inc [hl]
    ret


    ld a, $00
    ldh [$bb], a
    ld a, $01
    ldh [$b7], a
    ld hl, $da84
    inc [hl]
    ret


    xor a
    ldh [$bb], a
    xor a
    ldh [$b7], a
    ld hl, $da84
    inc [hl]
    ret


jr_05f_4c3a:
    ld a, $01
    ld [$da82], a
    xor a
    ldh [$bb], a
    xor a
    ldh [$b7], a
    xor a
    ld [$da84], a
    ret


    ld a, [$da84]
    rst $00
    ld e, h
    ld c, h
    ld l, h
    ld c, h
    ld e, h
    ld c, h
    ld l, h
    ld c, h
    ld e, h
    ld c, h
    ld l, h
    ld c, h
    ld a, h
    ld c, h
    ld hl, wBGPalette
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $da84
    inc [hl]
    ret


Call_05f_4c6c:
    ld hl, wBGPalette
    ld [hl], $d2
    inc hl
    ld [hl], $d2
    inc hl
    ld [hl], $e2
    ld hl, $da84
    inc [hl]
    ret


    call Call_05f_4c6c
    ld a, $01
    ld [$da82], a
    xor a
    ld [$da84], a
    ret


    ld a, [$da84]
    rst $00
    sub l
    ld c, h
    xor e
    ld c, h
    cp [hl]
    ld c, h
    adc $4c
    call Call_05f_506e
    ld a, [$da87]
    cp $04
    ret c

    xor a
    ld [$da86], a
    xor a
    ld [$da87], a
    ld hl, $da84
    inc [hl]
    ret


    ld hl, $da85
    inc [hl]
    ld a, [$da85]
    cp $0a
    ret nz

    ld hl, $da84
    inc [hl]
    xor a
    ld [$da85], a
    ret


    ld hl, wBGPalette
    ld [hl], $d2
    inc hl
    ld [hl], $d2
    inc hl
    ld [hl], $e2
    ld hl, $da84
    inc [hl]
    ret


    ld a, $01
    ld [$da82], a
    xor a
    ld [$da84], a
    ret


    ld a, [$da84]
    rst $00
    or $4c
    or $4c
    or $4c
    or $4c
    or $4c
    or $4c
    or $4c
    or $4c
    or $4c
    or $4c
    or $4c
    or $4c
    ld a, [bc]
    ld c, l
    ld hl, wBGPalette
    ld a, [hl]
    xor $ff
    ld [hl+], a
    ld a, [hl]
    xor $ff
    ld [hl+], a
    ld a, [hl]
    xor $ff
    ld [hl], a
    ld hl, $da84
    inc [hl]
    ret


    ld a, $01
    ld [$da82], a
    xor a
    ld [$da84], a
    ret


    ld a, [$da84]
    rst $00
    ld h, $4d
    inc a
    ld c, l
    ld c, a
    ld c, l
    ld h, $4d
    inc a
    ld c, l
    ld c, a
    ld c, l
    ld e, a
    ld c, l
    call Call_05f_506e
    ld a, [$da87]
    cp $04
    ret c

    xor a
    ld [$da86], a
    xor a
    ld [$da87], a
    ld hl, $da84
    inc [hl]
    ret


    ld hl, $da85
    inc [hl]
    ld a, [$da85]
    cp $05
    ret nz

    ld hl, $da84
    inc [hl]
    xor a
    ld [$da85], a
    ret


    ld hl, wBGPalette
    ld [hl], $d2
    inc hl
    ld [hl], $d2
    inc hl
    ld [hl], $e2
    ld hl, $da84
    inc [hl]
    ret


    ld a, $01
    ld [$da82], a
    xor a
    ld [$da84], a
    ret


    ld a, [$da84]
    or a
    call z, Call_05f_4ed5
    call Call_05f_4f49
    ld a, [$da84]
    or a
    ret z

    ld a, $01
    ld [$da82], a
    xor a
    ld [$da84], a
    xor a
    ld [$da85], a
    ret


    ld a, [$da87]
    or a
    jr nz, jr_05f_4da1

    ld hl, $da87
    inc [hl]
    xor a
    ld [$c905], a
    xor a
    ld [$c906], a
    xor a
    ld [$c907], a
    xor a
    ld [$c908], a
    ret


jr_05f_4da1:
    call Call_05f_4f9b
    ld hl, $da87
    inc [hl]
    ret


    ld a, [$da84]
    rst $00
    or l
    ld c, l
    bit 1, l
    sbc $4d
    xor $4d
    call Call_05f_50b5
    ld a, [$da87]
    cp $04
    ret c

    xor a
    ld [$da86], a
    xor a
    ld [$da87], a
    ld hl, $da84
    inc [hl]
    ret


    ld hl, $da85
    inc [hl]
    ld a, [$da85]
    cp $0a
    ret nz

    ld hl, $da84
    inc [hl]
    xor a
    ld [$da85], a
    ret


    ld hl, wBGPalette
    ld [hl], $d2
    inc hl
    ld [hl], $d2
    inc hl
    ld [hl], $e2
    ld hl, $da84
    inc [hl]
    ret


    ld a, $01
    ld [$da82], a
    xor a
    ld [$da84], a
    ret


    ld a, [$da84]
    rst $00
    ld e, h
    ld c, h
    ld l, h
    ld c, h
    ld e, h
    ld c, h
    ld l, h
    ld c, h
    ld e, h
    ld c, h
    ld l, h
    ld c, h
    ld e, h
    ld c, h
    ld l, h
    ld c, h
    ld e, h
    ld c, h
    ld l, h
    ld c, h
    ld e, h
    ld c, h
    ld l, h
    ld c, h
    ld e, h
    ld c, h
    ld l, h
    ld c, h
    ld e, h
    ld c, h
    ld l, h
    ld c, h
    ld a, h
    ld c, h
    ret


Call_05f_4e1f:
jr_05f_4e1f:
    push de
    ld a, [$da85]
    ld b, a

jr_05f_4e24:
    di
    call Call_000_1aa6
    ld a, [hl+]
    ld [de], a
    ei
    inc de
    dec b
    jr nz, jr_05f_4e24

    pop de
    dec c
    ret z

    ld a, $20
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    jr jr_05f_4e1f

Call_05f_4e3c:
    ld a, [$c86c]
    or a
    jr z, jr_05f_4e4e

    ld a, [$c863]
    bit 1, a
    jr z, jr_05f_4e4e

    ld a, [$db74]
    jr jr_05f_4e51

jr_05f_4e4e:
    ld a, [$db75]

jr_05f_4e51:
    cp $01
    jr z, jr_05f_4e7d

    cp $02
    jr z, jr_05f_4e6c

    ld a, [$db89]
    and $03
    cp $01
    jr z, jr_05f_4e7d

    jr c, jr_05f_4e68

    ld a, $04
    jr jr_05f_4e7f

jr_05f_4e68:
    ld a, $03
    jr jr_05f_4e7f

jr_05f_4e6c:
    ld a, [$db89]
    and $03
    cp $01
    jr z, jr_05f_4e79

    ld a, $01
    jr jr_05f_4e7f

jr_05f_4e79:
    ld a, $02
    jr jr_05f_4e7f

jr_05f_4e7d:
    ld a, $00

jr_05f_4e7f:
    ret


Call_05f_4e80:
    ld a, [$c86c]
    or a
    jr z, jr_05f_4ea3

    call Call_05f_52d6
    jr nz, jr_05f_4e97

    ld a, [$c863]
    bit 1, a
    jr z, jr_05f_4ea3

    ld a, [$db74]
    jr jr_05f_4ea6

jr_05f_4e97:
    ld a, [$c863]
    bit 1, a
    jr nz, jr_05f_4ea3

    ld a, [$db74]
    jr jr_05f_4ea6

jr_05f_4ea3:
    ld a, [$db75]

jr_05f_4ea6:
    cp $01
    jr z, jr_05f_4ed2

    cp $02
    jr z, jr_05f_4ec1

    ld a, [$db88]
    and $03
    cp $01
    jr z, jr_05f_4ed2

    jr c, jr_05f_4ebd

    ld a, $04
    jr jr_05f_4ed4

jr_05f_4ebd:
    ld a, $03
    jr jr_05f_4ed4

jr_05f_4ec1:
    ld a, [$db88]
    and $03
    cp $01
    jr z, jr_05f_4ece

    ld a, $01
    jr jr_05f_4ed4

jr_05f_4ece:
    ld a, $02
    jr jr_05f_4ed4

jr_05f_4ed2:
    ld a, $00

jr_05f_4ed4:
    ret


Call_05f_4ed5:
    ld a, [$da84]
    or a
    ret nz

    ld a, [$da85]
    rst $00
    inc d
    ld c, a
    ld l, $4f
    ld hl, $2e4f
    ld c, a
    inc d
    ld c, a
    ld l, $4f
    ld hl, $2e4f
    ld c, a
    inc d
    ld c, a
    ld l, $4f
    ld hl, $144f
    ld c, a
    ld l, $4f
    ld hl, $2e4f
    ld c, a
    inc d
    ld c, a
    ld l, $4f
    ld hl, $2e4f
    ld c, a
    inc d
    ld c, a
    ld l, $4f
    ld hl, $2e4f
    ld c, a
    inc d
    ld c, a
    ld l, $4f
    ld hl, $394f
    ld c, a
    ld a, $04
    ldh [$bb], a
    ld a, $00
    ldh [$b7], a
    ld hl, $da85
    inc [hl]
    ret


    ld a, $00
    ldh [$bb], a
    ld a, $03
    ldh [$b7], a
    ld hl, $da85
    inc [hl]
    ret


    xor a
    ldh [$bb], a
    xor a
    ldh [$b7], a
    ld hl, $da85
    inc [hl]
    ret


    ld a, $01
    ld [$da84], a
    xor a
    ldh [$bb], a
    xor a
    ldh [$b7], a
    xor a
    ld [$da85], a
    ret


Call_05f_4f49:
    ld a, [$da85]
    rst $00
    adc a
    ld c, a
    adc a
    ld c, a
    adc a
    ld c, a
    adc a
    ld c, a
    adc a
    ld c, a
    adc a
    ld c, a
    adc a
    ld c, a
    adc a
    ld c, a
    adc a
    ld c, a
    add e
    ld c, a
    adc a
    ld c, a
    add e
    ld c, a
    adc a
    ld c, a
    add e
    ld c, a
    adc a
    ld c, a
    add e
    ld c, a
    adc a
    ld c, a
    add e
    ld c, a
    adc a
    ld c, a
    add e
    ld c, a
    adc a
    ld c, a
    add e
    ld c, a
    adc a
    ld c, a
    add e
    ld c, a
    adc a
    ld c, a
    add e
    ld c, a
    adc a
    ld c, a
    ld hl, wBGPalette
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    ret


    ld hl, wBGPalette
    ld [hl], $d2
    inc hl
    ld [hl], $d2
    inc hl
    ld [hl], $e2
    ret


Call_05f_4f9b:
    ld a, [$c905]
    rst $00
    and a
    ld c, a
    push bc
    ld c, a
    dec [hl]
    ld d, b
    ld c, a
    ld d, b
    ld hl, $c905
    inc [hl]
    ld hl, $c100
    ld b, $80

jr_05f_4fb0:
    ldh a, [$b7]
    ld [hl+], a
    dec b
    jr nz, jr_05f_4fb0

    ld a, $01
    ld [$c907], a
    ld a, $02
    ldh [rLYC], a
    ld a, $02
    ld [$c892], a
    ret


    ld a, [$da87]
    and $07
    jr nz, jr_05f_4fe8

    ld a, [$c907]
    swap a
    and $0f
    inc a
    ld b, a
    ld a, [$c907]
    add b
    ld [$c907], a
    cp $1c
    jr c, jr_05f_4fe8

    ld hl, $c905
    inc [hl]
    xor a
    ld [$c908], a

Call_05f_4fe8:
jr_05f_4fe8:
    ld a, [$c907]
    ldh [$d5], a
    ld a, [$da87]
    rra
    rra
    and $0f
    ld e, a
    ld d, $00
    ld bc, $c12e
    ld a, $66
    ldh [$d6], a

jr_05f_4ffe:
    inc e
    ld a, e
    and $0f
    ld e, a
    ld hl, $5025
    add hl, de
    push bc
    ld c, [hl]
    ldh a, [$d5]
    call Call_000_1dbe
    pop bc
    bit 3, e
    jr z, jr_05f_5018

    ldh a, [$b7]
    sub h
    jr jr_05f_501b

jr_05f_5018:
    ldh a, [$b7]
    add h

jr_05f_501b:
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ldh a, [$d6]
    cp c
    jr nz, jr_05f_4ffe

    ret


    nop
    jr nc, @+$5d

    db $76
    ld a, a
    db $76
    ld e, e
    jr nc, jr_05f_502e

jr_05f_502e:
    jr nc, jr_05f_508b

jr_05f_5030:
    db $76
    ld a, a
    db $76
    ld e, e
    jr nc, jr_05f_5030

    add a
    db $da, $e6, $0f

    jr nz, jr_05f_504b

    ld a, [$c908]
    inc a
    ld [$c908], a
    cp $04
    jr nz, jr_05f_504b

    ld hl, $c905
    inc [hl]

jr_05f_504b:
    call Call_05f_4fe8
    ret


    ld a, $00
    ld [$c892], a
    ld a, $01
    ld [$da82], a
    xor a
    ld [$da87], a
    xor a
    ld [$c905], a
    xor a
    ld [$c906], a
    xor a
    ld [$c907], a
    xor a
    ld [$c908], a
    ret


Call_05f_506e:
    xor a
    ld [$da86], a
    ld hl, $da87
    inc [hl]
    ld b, $03
    ld c, $00
    ld hl, wBGPalette

jr_05f_507d:
    ld a, [hl]
    and $03
    add $01
    cp $04
    jr c, jr_05f_5088

    ld a, $03

jr_05f_5088:
    or c
    ld c, a
    ld a, [hl]

jr_05f_508b:
    and $0c
    add $04
    cp $0d
    jr c, jr_05f_5095

    ld a, $0c

jr_05f_5095:
    or c
    ld c, a
    ld a, [hl]
    and $30
    add $10
    cp $31
    jr c, jr_05f_50a2

    ld a, $30

jr_05f_50a2:
    or c
    ld c, a
    ld a, [hl]
    and $c0
    add $40
    cp $c1
    jr c, jr_05f_50af

    ld a, $c0

jr_05f_50af:
    or c
    ld [hl+], a
    dec b
    jr nz, jr_05f_507d

    ret


Call_05f_50b5:
    xor a
    ld [$da86], a
    ld hl, $da87
    inc [hl]
    ld b, $03
    ld c, $00
    ld hl, wBGPalette

jr_05f_50c4:
    ld a, [hl]
    and $03
    cp $00
    jr z, jr_05f_50cd

    sub $01

jr_05f_50cd:
    or c
    ld c, a
    ld a, [hl]
    and $0c
    cp $00
    jr z, jr_05f_50d8

    sub $04

jr_05f_50d8:
    or c
    ld c, a
    ld a, [hl]
    and $30
    cp $00
    jr z, jr_05f_50e3

    sub $10

jr_05f_50e3:
    or c
    ld c, a
    ld a, [hl]
    and $c0
    cp $00
    jr z, jr_05f_50ee

    sub $40

jr_05f_50ee:
    or c
    ld [hl+], a
    dec b
    jr nz, jr_05f_50c4

    ret


Call_05f_50f4:
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    rst $00
    nop
    call nz, $ca00
    nop
    pop bc
    nop
    db $cd, $00, $11
    ld d, c
    dec [hl]
    ld d, c
    ld e, c
    ld d, c
    ld a, l
    ld d, c
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_05f_5144

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05f_5154

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05f_5164

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05f_5174

    ld [hl-], a

jr_05f_5144:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_05f_5154:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_05f_5164:
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
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_05f_5174:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld a, [$da84]
    rst $00
    rst $20
    ld d, c
    db $dd
    ld d, c
    ldh a, [rHDMA1]
    db $dd
    ld d, c
    ld sp, hl
    ld d, c
    db $dd
    ld d, c
    ld [bc], a
    ld d, d
    db $dd
    ld d, c
    dec bc
    ld d, d
    db $dd
    ld d, c
    inc d
    ld d, d
    db $dd
    ld d, c
    dec e
    ld d, d
    db $dd
    ld d, c
    ld a, [hl+]
    ld d, d
    db $dd
    ld d, c
    dec e
    ld d, d
    db $dd
    ld d, c
    ld a, [hl+]
    ld d, d
    db $dd
    ld d, c
    dec e
    ld d, d
    db $dd
    ld d, c
    ld a, [hl+]
    ld d, d
    db $dd
    ld d, c
    dec e
    ld d, d
    db $dd
    ld d, c
    ld a, [hl+]
    ld d, d
    scf
    ld d, d
    xor a
    ldh [$b7], a
    ldh [$bb], a
    ld hl, $da84
    inc [hl]
    ret


    ld a, $fe
    ldh [$b7], a
    ld hl, $da84
    inc [hl]
    ret


    ld a, $02
    ldh [$b7], a
    ld hl, $da84
    inc [hl]
    ret


    ld a, $fc
    ldh [$b7], a
    ld hl, $da84
    inc [hl]
    ret


    ld a, $04
    ldh [$b7], a
    ld hl, $da84
    inc [hl]
    ret


    ld a, $f8
    ldh [$b7], a
    ld hl, $da84
    inc [hl]
    ret


    ld a, $08
    ldh [$b7], a
    ld hl, $da84
    inc [hl]
    ret


    ld a, $f8
    ldh [$b7], a
    ld a, $02
    ldh [$bb], a
    ld hl, $da84
    inc [hl]
    ret


    ld a, $08
    ldh [$b7], a
    ld a, $02
    ldh [$bb], a
    ld hl, $da84
    inc [hl]
    ret


    xor a
    ldh [$b7], a
    ldh [$bb], a
    ld a, $01
    ld [$da82], a
    xor a
    ld [$da84], a
    ret


    ld a, [$c863]
    ld b, a
    ld a, [$db88]
    cp $07
    jr nc, jr_05f_52c8

    cp $03
    jr z, jr_05f_52c8

    bit 1, b
    jr nz, jr_05f_525f

    cp $04
    jr c, jr_05f_52c8

    jr jr_05f_5263

jr_05f_525f:
    cp $04
    jr nc, jr_05f_52c8

jr_05f_5263:
    ld a, [$db88]
    call Call_000_2fa5
    jr c, jr_05f_52c8

    ld a, [$da84]
    rst $00
    ld a, c
    ld d, d
    sbc a
    ld d, d
    ld a, c
    ld d, d
    sbc a
    ld d, d
    ret z

    ld d, d
    ld a, $06
    ld [$da85], a
    call Call_05f_4e80
    ld hl, $50ff
    call Call_05f_50f4
    ld de, $9800
    add hl, de
    ld e, l
    ld d, h
    ld a, $03
    ld hl, $5109
    call Call_05f_50f4
    ld c, $06
    call Call_05f_4e1f
    ld hl, $da84
    inc [hl]
    ret


    ld a, $06
    ld [$da85], a
    call Call_05f_4e80
    ld hl, $50ff
    call Call_05f_50f4
    ld de, $9800
    add hl, de
    ld e, l
    ld d, h
    ld a, [$db88]
    and $03
    ld hl, $5109
    call Call_05f_50f4
    ld c, $06
    call Call_05f_4e1f
    ld hl, $da84
    inc [hl]
    ret


jr_05f_52c8:
    ld a, $01
    ld [$da82], a
    xor a
    ld [$da84], a
    xor a
    ld [$da85], a
    ret


Call_05f_52d6:
    ld a, [$db8a]
    cp $3b
    jr z, jr_05f_52e4

    cp $3c
    jr z, jr_05f_52e4

    cp $3e
    ret nz

jr_05f_52e4:
    ld a, [$d9ec]
    cp $07
    ret nz

    ld a, [$d9ed]
    cp $04
    ret


    ld a, [$db8a]
    cp $15
    jp c, Jump_05f_53a4

    cp $24
    jp c, Jump_05f_5382

    cp $25
    jp c, Jump_05f_53a4

    cp $2a
    jp z, Jump_05f_53a4

    cp $37
    jr c, jr_05f_5382

    cp $3b
    jp z, Jump_05f_53be

    cp $3c
    jp z, Jump_05f_53be

    cp $3e
    jp z, Jump_05f_53be

    cp $67
    jp c, Jump_05f_53a4

    cp $6a
    jp c, Jump_05f_53be

    cp $71
    jr z, jr_05f_53a4

    cp $73
    jr c, jr_05f_5382

    cp $75
    jr c, jr_05f_53a4

    cp $77
    jr c, jr_05f_5382

    cp $78
    jr c, jr_05f_53a4

    cp $7b
    jr c, jr_05f_5382

    cp $80
    jr z, jr_05f_5382

    cp $84
    jr c, jr_05f_53a4

    cp $88
    jr c, jr_05f_5382

    cp $91
    jr c, jr_05f_53a4

    cp $95
    jr z, jr_05f_53a4

    cp $97
    jr c, jr_05f_5382

    cp $a3
    jr z, jr_05f_5382

    cp $a4
    jr c, jr_05f_53a4

    cp $a7
    jr c, jr_05f_53a4

    cp $a9
    jr z, jr_05f_53a4

    cp $ab
    jr c, jr_05f_5382

    cp $ae
    jr z, jr_05f_5382

    cp $b0
    jr c, jr_05f_53a4

    cp $c7
    jr c, jr_05f_5382

    cp $c9
    jr z, jr_05f_5382

    cp $d5
    jr c, jr_05f_53cd

    cp $d5
    jr z, jr_05f_5382

    jr jr_05f_53a4

Jump_05f_5382:
jr_05f_5382:
    ld a, [$db8a]
    cp $80
    jp z, Jump_05f_53e9

    ld a, [$d9ec]
    cp $07
    jr nz, jr_05f_53e9

    ld a, [$d9ed]
    cp $0a
    jr z, jr_05f_53e3

    cp $01
    jr nz, jr_05f_53e9

    ld a, [$d9ee]
    cp $0e
    jr nc, jr_05f_53e9

    ret


Jump_05f_53a4:
jr_05f_53a4:
    ld a, [$d9ec]
    cp $07
    jr nz, jr_05f_53e9

    ld a, [$d9ed]
    cp $0a
    jr z, jr_05f_53e3

    cp $01
    jr nz, jr_05f_53e9

    ld a, [$d9ee]
    cp $05
    jr z, jr_05f_53e9

    ret


Jump_05f_53be:
    ld a, [$d9ec]
    cp $07
    jr nz, jr_05f_53e9

    ld a, [$d9ed]
    cp $04
    jr z, jr_05f_53e9

    ret


jr_05f_53cd:
    ld a, [$d9ec]
    cp $07
    jr nz, jr_05f_53e9

    ld a, [$d9ed]
    cp $0a
    jr nz, jr_05f_53e9

    ld a, [$d9ef]
    cp $04
    jr nz, jr_05f_53e9

    ret


jr_05f_53e3:
    ld a, [$d9ef]
    cp $01
    ret z

Jump_05f_53e9:
jr_05f_53e9:
    ld a, [$db88]
    cp $10
    jr z, jr_05f_5409

    ld a, [$c863]
    bit 1, a
    jr nz, jr_05f_5400

    ld a, [$db88]
    cp $04
    jr c, jr_05f_540d

    jr jr_05f_5412

jr_05f_5400:
    ld a, [$db88]
    cp $04
    jr c, jr_05f_5412

    jr jr_05f_540d

jr_05f_5409:
    call Call_05f_5ba3
    ret c

jr_05f_540d:
    ld hl, $58dd
    jr jr_05f_5433

jr_05f_5412:
    ld hl, $59c3
    ld a, [$c86c]
    or a
    jr z, jr_05f_5433

    ld a, [$d9ec]
    cp $07
    jr nz, jr_05f_5433

    ld a, [$d9ed]
    cp $01
    jr nz, jr_05f_5433

    ld a, [$d9ee]
    cp $05
    jr nz, jr_05f_5433

    ld hl, $5aa9

jr_05f_5433:
    ld a, [$db8a]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call Call_05f_5441
    ret


Call_05f_5441:
    ld c, a
    ld b, $00
    ld hl, $58bd
    add hl, bc
    add hl, bc
    call RST_08
    ret


    jp hl


Call_05f_544e:
    ld a, [$db8a]
    cp $1a
    jr c, jr_05f_54c3

    cp $1c
    jr c, jr_05f_5461

    cp $29
    jr z, jr_05f_5461

    cp $76
    jr nz, jr_05f_54c3

jr_05f_5461:
    call Call_05f_5b8f
    jr c, jr_05f_54c3

    ld hl, $db74
    ld a, [$c863]
    and $02
    srl a
    xor $01
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$db53], a
    ld a, [hl]
    cp $01
    jr z, jr_05f_54b3

    cp $02
    jr z, jr_05f_549d

    ld a, [$db88]
    and $03
    cp $01
    jr z, jr_05f_54b3

    jr c, jr_05f_5499

    cp $03
    jp nc, Jump_05f_5523

    ld a, $06
    jr jr_05f_54bf

jr_05f_5499:
    ld a, $04
    jr jr_05f_54bf

jr_05f_549d:
    ld a, [$db88]
    and $03
    cp $03
    jp nc, Jump_05f_5523

    cp $01
    jr z, jr_05f_54af

    ld a, $02
    jr jr_05f_54bf

jr_05f_54af:
    ld a, $03
    jr jr_05f_54bf

jr_05f_54b3:
    ld a, [$db88]
    and $03
    cp $03
    jp nc, Jump_05f_5523

    ld a, $01

jr_05f_54bf:
    ld [$db54], a
    ret


jr_05f_54c3:
    call Call_05f_5b8f
    jr nc, jr_05f_5529

jr_05f_54c8:
    ld hl, $db74
    ld a, [$c863]
    and $02
    srl a
    xor $01
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$db53], a
    ld a, [hl]
    cp $01
    jr z, jr_05f_5513

    cp $02
    jr z, jr_05f_54fe

    ld a, [$db89]
    and $03
    cp $01
    jr z, jr_05f_5513

    jr c, jr_05f_54fa

    cp $03
    jr nc, jr_05f_5523

    ld a, $06
    jr jr_05f_551f

jr_05f_54fa:
    ld a, $04
    jr jr_05f_551f

jr_05f_54fe:
    ld a, [$db89]
    and $03
    cp $01
    jr z, jr_05f_550f

    cp $03
    jr nc, jr_05f_5523

    ld a, $02
    jr jr_05f_551f

jr_05f_550f:
    ld a, $03
    jr jr_05f_551f

jr_05f_5513:
    ld a, [$db89]
    and $03
    cp $03
    jp nc, Jump_05f_5523

    ld a, $01

jr_05f_551f:
    ld [$db54], a
    ret


Jump_05f_5523:
jr_05f_5523:
    ld a, $08
    ld [$db54], a
    ret


jr_05f_5529:
    ld a, [$db89]
    and $03
    cp $03
    jr nc, jr_05f_5523

    call Call_05f_5ba3
    jr nc, jr_05f_54c8

    ld hl, $db74
    ld a, [$c863]
    and $02
    srl a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$db53], a
    ld a, [hl]
    cp $01
    jr z, jr_05f_5583

    cp $02
    jr z, jr_05f_556d

    ld a, [$db88]
    and $03
    cp $01
    jr z, jr_05f_5583

    jr c, jr_05f_5569

    and $03
    cp $03
    jr nc, jr_05f_5523

    ld a, $06
    jr jr_05f_551f

jr_05f_5569:
    ld a, $04
    jr jr_05f_551f

jr_05f_556d:
    ld a, [$db88]
    and $03
    cp $01
    jr z, jr_05f_557f

    cp $03
    jp nc, Jump_05f_5523

    ld a, $02
    jr jr_05f_551f

jr_05f_557f:
    ld a, $03
    jr jr_05f_551f

jr_05f_5583:
    ld a, [$db88]
    and $03
    cp $03
    jp nc, Jump_05f_5523

    ld a, $01
    jr jr_05f_551f

    call Call_05f_544e
    ld a, $01
    ld [$dd68], a
    jr jr_05f_55bb

    ld a, $01
    ld [$db54], a
    ld a, $01
    ld [$dd68], a
    jr jr_05f_55bb

    call Call_05f_544e
    ld a, $02
    ld [$dd68], a
    jr jr_05f_55bb

    ld a, $00
    ld [$db54], a
    ld a, $00
    ld [$dd68], a

jr_05f_55bb:
    call Call_05f_5630
    cp $ff
    ret z

    call Call_05f_5696
    call Call_000_3103
    ld a, $01
    ld [$da80], a
    ret


    call Call_05f_4a60
    ld a, $04
    ld [$da83], a
    ret


    call Call_05f_4a60
    ld a, $05
    ld [$da83], a
    ret


    call Call_05f_4a60
    ld a, $06
    ld [$da83], a
    ret


    call Call_05f_4a60
    ld a, $07
    ld [$da83], a
    ret


    call Call_05f_4a60
    ld a, $08
    ld [$da83], a
    ret


    call Call_05f_4a60
    ld a, $09
    ld [$da83], a
    ret


    call Call_05f_4a60
    ld a, $0a
    ld [$da83], a
    ret


    call Call_05f_4a60
    ld a, $0b
    ld [$da83], a
    ret


    call Call_05f_4a60
    ld a, $0c
    ld [$da83], a
    ret


    call Call_05f_4a60
    ld a, $03
    ld [$da83], a
    ret


    call Call_05f_4a60
    ld a, $0d
    ld [$da83], a
    ret


Call_05f_5630:
    ld a, [$db88]
    cp $10
    jr z, jr_05f_5649

    call Call_05f_5b8f
    jr c, jr_05f_563e

    jr jr_05f_565f

jr_05f_563e:
    call Call_05f_5ba3
    jr nc, jr_05f_564e

    ld a, $ff
    ld [$da81], a
    ret


jr_05f_5649:
    call Call_05f_5ba3
    jr c, jr_05f_5690

jr_05f_564e:
    ld a, [$db8a]
    ld de, $56ed
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [$da81], a
    ret


jr_05f_565f:
    ld a, [$db8a]
    cp $1a
    jr z, jr_05f_567f

    cp $1b
    jr z, jr_05f_567f

    cp $80
    jr z, jr_05f_567f

    cp $29
    jr z, jr_05f_567f

    cp $d5
    jr z, jr_05f_567f

    cp $aa
    jr z, jr_05f_567f

    call Call_05f_5ba3
    jr c, jr_05f_5690

jr_05f_567f:
    ld a, [$db8a]
    ld de, $57d5
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [$da81], a
    ret


jr_05f_5690:
    ld a, $ff
    ld [$da81], a
    ret


Call_05f_5696:
    call Call_05f_56b9
    ld a, [$daa4]
    ld [$dd64], a
    ld a, $60
    ld [$dd63], a
    ld a, $00
    ld [$dd62], a
    ld hl, $dd62
    ld a, l
    ld [$d7b4], a
    ld a, h
    ld [$d7b5], a
    ld hl, $0200
    rst $10
    ret


Call_05f_56b9:
    ld a, [$db88]
    cp $10
    jr z, jr_05f_56c7

    call Call_05f_5b8f
    jr c, jr_05f_56c7

    jr jr_05f_56dc

jr_05f_56c7:
    call Call_05f_5ba3
    ret c

    ld a, [$db8a]
    ld hl, $56ed
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$daa4], a
    ret


jr_05f_56dc:
    ld a, [$db8a]
    ld hl, $57d5
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$daa4], a
    ret


    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $ffff
    rst $38
    dec d
    dec d
    ld [de], a
    rla
    ld d, $12
    rst $38
    ld [de], a
    ld [de], a
    rst $38
    rst $38
    ld [de], a
    ld [de], a
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
    dec e
    rst $38
    rst $38
    rst $38
    dec e
    dec e
    rst $38
    rst $38
    rst $38
    ld e, $1f
    jr nz, jr_05f_5756

    dec h
    dec e
    dec e
    inc hl
    inc h
    inc h
    dec h
    daa
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec e
    rst $38
    dec e
    add hl, bc
    dec bc
    rrca
    dec de
    inc bc
    inc b
    dec b
    inc e
    inc c
    dec c
    ld c, $1a
    jr z, jr_05f_577c

    ld a, [hl+]
    dec d
    dec d

jr_05f_5756:
    dec d
    dec d
    dec d
    dec d
    dec d
    ld d, $16
    ld d, $ff
    rla
    rst $38
    rst $38
    ld [de], a
    ld [de], a
    rst $38
    ld d, $15
    dec d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec hl
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

jr_05f_577c:
    rst $38
    rst $38
    ld [de], a
    ld [de], a
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
    inc d
    rst $38
    rst $38
    rst $38
    dec d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc l
    inc l
    inc l
    dec d
    inc l
    rrca
    add hl, bc
    ld [de], a
    inc b
    ld c, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    ld [hl+], a
    dec e
    ld h, $ff
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
    inc de
    inc de
    rst $38
    rst $38
    inc de
    inc de
    rst $38
    rst $38
    inc de
    inc de
    rst $38
    inc de
    rst $38
    add hl, de
    add hl, de
    jr @+$01

    inc d
    inc d
    inc d
    inc d
    inc d
    rst $38
    rst $38
    inc d
    inc d
    inc d
    inc d
    inc d
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
    inc de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec hl
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
    inc d
    inc d
    rst $38
    inc d
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
    inc d
    rst $38
    rst $38
    rst $38
    dec d
    ld [de], a
    rst $38
    jr @+$01

    rst $38
    rst $38
    inc d
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
    jr @+$01

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
    sub c
    ld d, l
    sbc e
    ld d, l
    and a
    ld d, l
    or c
    ld d, l
    call $d655
    ld d, l
    rst $18
    ld d, l
    add sp, $55
    pop af
    ld d, l
    ld a, [$0355]
    ld d, [hl]
    inc c
    ld d, [hl]
    dec d
    ld d, [hl]
    db $cc, $55, $1e
    ld d, [hl]
    daa
    ld d, [hl]
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0202
    ld bc, $0302
    ld bc, $0203
    ld bc, $0202
    ld bc, $0d0d
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    nop
    nop
    dec c
    dec c
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld b, $0d
    ld c, $0e
    dec c
    ld c, $00
    nop
    dec c
    dec c
    dec c
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
    ld bc, $0d0d
    dec c
    dec c
    dec c
    nop
    dec c
    ld [bc], a
    nop
    ld bc, $0202
    inc bc
    inc bc
    ld bc, $0301
    ld [bc], a
    ld bc, $0201
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    nop
    inc b
    inc b
    nop
    nop
    dec c
    nop
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    ld bc, $0504
    dec b
    inc b
    inc b
    inc b
    inc b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    dec c
    dec b
    dec c
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
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
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld bc, $0d0d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    dec c
    nop
    nop
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    dec c
    dec c
    nop
    nop
    dec c
    dec c
    nop
    nop
    dec c
    nop
    ld [bc], a
    nop
    nop
    nop
    dec c
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    ld b, $0d
    rrca
    rrca
    dec c
    rrca
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc b
    inc b
    dec c
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld bc, $0504
    dec b
    inc b
    inc b
    inc b
    inc b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    dec c
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    dec c
    dec b
    dec c
    nop
    nop
    dec c
    nop
    dec c
    dec c
    dec c
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    inc b
    inc b
    ld [$0c0d], sp
    inc c
    dec bc
    inc b
    dec bc
    inc b
    inc b
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld b, $0d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    ld a, [bc]
    dec c
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    inc b
    dec bc
    ld a, [bc]
    ld b, $08
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc b
    inc b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld bc, $0504
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c

Call_05f_5b8f:
    ld a, [$c863]
    bit 1, a
    jr nz, jr_05f_5b9c

    ld a, [$db88]
    cp $04
    ret


jr_05f_5b9c:
    ld a, [$db88]
    cp $04
    ccf
    ret


Call_05f_5ba3:
    ld a, [$c863]
    bit 1, a
    jr nz, jr_05f_5bb0

    ld a, [$db89]
    cp $04
    ret


jr_05f_5bb0:
    ld a, [$db89]
    cp $04
    ccf
    ret


    xor a
    ld hl, wMenu_selection
    ld bc, $0008
    call Call_000_12c7
    xor a
    ld hl, $c827
    ld bc, $0012
    call Call_000_12c7
    call Call_000_1264
    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    ld a, $e0
    ld hl, $c500
    ld bc, $0240
    call Call_000_12c7
    xor a
    ld hl, $da82
    ld bc, $0006
    call Call_000_12c7
    ld de, $ff00
    ld hl, $9000
    ld bc, $0120
    call Call_05f_5ecc
    ld de, $6093
    ld hl, $c500
    call Call_05f_4263
    ld de, $60fe
    ld hl, $c500
    call Call_05f_4263
    ld de, $6169
    ld hl, $c500
    call Call_05f_4263
    ld de, $2e00
    ld hl, $8d00
    call Call_000_14cf
    ld hl, $6195
    ld de, $8b90
    call Call_05f_5f58
    ld hl, $61ad
    ld de, $8ab0
    call Call_05f_5f58
    call Call_05f_5f86
    call Call_05f_5fa5
    call Call_05f_5fbc
    call Call_05f_5fdb
    ld a, $fc
    call Call_000_1688
    ld hl, $9800
    ld a, l
    ld [$d9f8], a
    ld a, h
    ld [$d9f9], a
    ld hl, $5005
    rst $10
    ld a, $01
    ld [$dd68], a
    ld a, $01
    ld [$db54], a
    ld a, $01
    ld [$da82], a
    ld a, $03
    ld [wMenu_selection], a
    ld a, $07
    ldh [$b5], a
    ld a, $ff
    ldh [$b6], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$b7], a
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    xor a
    ld [$c892], a
    ld a, $03
    ld [$c8a1], a
    call Call_000_125d
    ld a, $03
    jp Jump_000_11cb


    ld a, [$da83]
    cp $09
    jr nz, jr_05f_5c9b

    ld a, [$da82]
    or a
    jp z, Jump_05f_5ec1

jr_05f_5c9b:
    ld a, [$c850]
    or a
    ret nz

    ld a, [$dd62]
    or a
    jp nz, Jump_05f_5ea3

    ld a, [wMenu_selection]
    rst $00
    or e
    ld e, h
    db $d3
    ld e, h
    rst $28
    ld e, h
    ld a, [bc]
    ld e, l
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp nz, Jump_05f_5dd7

    bit 1, a
    jp nz, Jump_05f_5e3e

    bit 6, a
    jp nz, Jump_05f_5d75

    bit 7, a
    jp nz, Jump_05f_5d61

    bit 5, a
    jr nz, jr_05f_5d4c

    bit 4, a
    jr nz, jr_05f_5d36

    ret


    ld a, [wJoypad_current_frame]
    bit 1, a
    jp nz, Jump_05f_5e3e

    bit 6, a
    jp nz, Jump_05f_5d75

    bit 7, a
    jr nz, jr_05f_5d61

    bit 5, a
    jp nz, Jump_05f_5d91

    bit 4, a
    jp nz, Jump_05f_5d91

    ret


    ld a, [wJoypad_current_frame]
    bit 1, a
    jp nz, Jump_05f_5e3e

    bit 6, a
    jr nz, jr_05f_5d75

    bit 7, a
    jr nz, jr_05f_5d61

    bit 5, a
    jp nz, Jump_05f_5dc2

    bit 4, a
    jp nz, Jump_05f_5da4

    ret


    ld a, [$da82]
    or a
    jr z, jr_05f_5d30

    ld a, [wJoypad_current_frame]
    bit 0, a
    jp nz, Jump_05f_5e87

    bit 1, a
    jp nz, Jump_05f_5e3e

    bit 6, a
    jr nz, jr_05f_5d75

    bit 7, a
    jr nz, jr_05f_5d61

    bit 5, a
    jp nz, Jump_05f_5e72

    bit 4, a
    jp nz, Jump_05f_5e5c

    ret


jr_05f_5d30:
    call Call_05f_5e27
    jp Jump_05f_5ec1


jr_05f_5d36:
    ld a, [wOPTN_and_Item_selection]
    inc a
    ld [wOPTN_and_Item_selection], a
    ld a, [wOPTN_and_Item_selection]
    cp $2d
    jr c, jr_05f_5d48

    xor a
    ld [wOPTN_and_Item_selection], a

jr_05f_5d48:
    call Call_05f_5f86
    ret


jr_05f_5d4c:
    ld a, [wOPTN_and_Item_selection]
    dec a
    ld [wOPTN_and_Item_selection], a
    ld a, [wOPTN_and_Item_selection]
    cp $2d
    jr c, jr_05f_5d48

    ld a, $2c
    ld [wOPTN_and_Item_selection], a
    jr jr_05f_5d48

Jump_05f_5d61:
jr_05f_5d61:
    ld a, [wMenu_selection]
    inc a
    ld [wMenu_selection], a
    ld a, [wMenu_selection]
    cp $04
    jr c, jr_05f_5d88

    xor a
    ld [wMenu_selection], a
    jr jr_05f_5d88

Jump_05f_5d75:
jr_05f_5d75:
    ld a, [wMenu_selection]
    dec a
    ld [wMenu_selection], a
    ld a, [wMenu_selection]
    cp $04
    jr c, jr_05f_5d88

    ld a, $03
    ld [wMenu_selection], a

jr_05f_5d88:
    rst $00
    ldh [$5e], a
    db $f4
    ld e, [hl]
    dec bc
    ld e, a
    rra
    ld e, a

Jump_05f_5d91:
    ld a, [wPLAN_selection]
    xor $01
    ld [wPLAN_selection], a
    call Call_05f_5fa5
    ld a, [wPLAN_selection]
    rst $00
    ld l, l
    ld h, b
    ld a, d
    ld h, b

Jump_05f_5da4:
    ld a, [$c8dd]
    inc a
    ld [$c8dd], a
    ld a, [$c8dd]
    cp $d8
    jr c, jr_05f_5db6

    xor a
    ld [$c8dd], a

jr_05f_5db6:
    call Call_05f_5fbc
    ld a, [wPLAN_selection]
    or a
    ret z

    call Call_05f_607a
    ret


Jump_05f_5dc2:
    ld a, [$c8dd]
    dec a
    ld [$c8dd], a
    ld a, [$c8dd]
    cp $d8
    jr c, jr_05f_5db6

    ld a, $d7
    ld [$c8dd], a
    jr jr_05f_5db6

Jump_05f_5dd7:
    ld a, [wOPTN_and_Item_selection]
    ld hl, $61ee
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $8000
    call Call_000_1577
    ld a, [wOPTN_and_Item_selection]
    ld [$c81e], a
    ld hl, $170d
    rst $10
    ld hl, $1708
    rst $10
    ld a, [wOPTN_and_Item_selection]
    ld [$daa4], a
    ld a, [wOPTN_and_Item_selection]
    ld [$da81], a
    ld a, [$daa4]
    ld [$dd64], a
    ld a, $60
    ld [$dd63], a
    ld a, $00
    ld [$dd62], a
    ld hl, $dd62
    ld a, l
    ld [$d7b4], a
    ld a, h
    ld [$d7b5], a
    ld hl, $0200
    rst $10
    call Call_05f_6014

Call_05f_5e27:
jr_05f_5e27:
    ld hl, $c6cd
    call Call_05f_5f36
    call Call_05f_5f36
    call Call_05f_5f36
    ld hl, $c56d
    call Call_05f_5f36
    ld hl, $5005
    rst $10
    ret


Jump_05f_5e3e:
    ld a, $04
    call Call_000_1688
    ld a, $07
    ld [wGameMode], a
    ld a, $00
    ld [$c88b], a
    ld a, $00
    ld [$c88c], a
    ld a, $00
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]
    ret


Jump_05f_5e5c:
    ld a, [$c8e1]
    inc a
    ld [$c8e1], a
    ld a, [$c8e1]
    cp $0d
    jr c, jr_05f_5e6e

    xor a
    ld [$c8e1], a

jr_05f_5e6e:
    call Call_05f_5fdb
    ret


Jump_05f_5e72:
    ld a, [$c8e1]
    dec a
    ld [$c8e1], a
    ld a, [$c8e1]
    cp $0d
    jr c, jr_05f_5e6e

    ld a, $0c
    ld [$c8e1], a
    jr jr_05f_5e6e

Jump_05f_5e87:
    ld a, $04
    ld [$db89], a
    ld a, $01
    ld [$db75], a
    xor a
    ld hl, $da82
    ld bc, $0006
    call Call_000_12c7
    ld a, [$c8e1]
    ld [$da83], a
    jr jr_05f_5e27

Jump_05f_5ea3:
    ld a, [$dd62]
    or a
    jr z, jr_05f_5eb5

    call Call_05f_5ffa
    ld hl, $0200
    rst $10
    ld a, [$dd62]
    or a
    ret nz

jr_05f_5eb5:
    ld a, [wMenu_selection]
    rst $00
    ldh [$5e], a
    db $f4
    ld e, [hl]
    dec bc
    ld e, a
    rra
    ld e, a

Jump_05f_5ec1:
    ld hl, $5f05
    rst $10
    ld a, [$da82]
    or a
    ret z

    jr jr_05f_5f1f

Call_05f_5ecc:
jr_05f_5ecc:
    di
    call Call_000_1aa6
    ld a, d
    ld [hl+], a
    ei
    di
    call Call_000_1aa6
    ld a, e
    ld [hl+], a
    ei
    dec bc
    ld a, b
    or c
    jr nz, jr_05f_5ecc

    ret


    ld hl, $c6cd
    call Call_05f_5f47
    call Call_05f_5f33
    ld hl, $c56d
    call Call_05f_5f36
    ld hl, $5005
    rst $10
    ret


    ld hl, $c6cd
    call Call_05f_5f36
    call Call_05f_5f47
    call Call_05f_5f36
    ld hl, $c56d
    call Call_05f_5f36
    ld hl, $5005
    rst $10
    ret


    ld hl, $c6cd
    call Call_05f_5f33
    call Call_05f_5f47
    ld hl, $c56d
    call Call_05f_5f36
    ld hl, $5005
    rst $10
    ret


jr_05f_5f1f:
    ld hl, $c6cd
    call Call_05f_5f36
    call Call_05f_5f33
    ld hl, $c56d
    call Call_05f_5f47
    ld hl, $5005
    rst $10
    ret


Call_05f_5f33:
    call Call_05f_5f36

Call_05f_5f36:
    di
    call Call_000_1aa6
    ld a, $e0
    ld [hl], a
    ei
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ret


Call_05f_5f47:
    di
    call Call_000_1aa6
    ld a, $e8
    ld [hl], a
    ei
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ret


Call_05f_5f58:
jr_05f_5f58:
    ld a, [hl+]
    cp $ff
    ret z

    push hl
    push de
    ld hl, $c180
    push de
    call Call_000_0d40
    pop de
    ld hl, $c180
    call Call_05f_5f78
    pop de
    pop hl
    ld a, $10
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    jr jr_05f_5f58

Call_05f_5f78:
    ld b, $10

jr_05f_5f7a:
    di
    call Call_000_1aa6
    ld a, [hl+]
    ld [de], a
    ei
    inc de
    dec b
    jr nz, jr_05f_5f7a

    ret


Call_05f_5f86:
    ld hl, $c8de
    ld a, [wOPTN_and_Item_selection]
    and $f0
    call Call_05f_6248
    ld [hl+], a
    ld a, [wOPTN_and_Item_selection]
    and $0f
    ld [hl+], a
    ld a, $ff
    ld [hl], a
    ld de, $8b40
    ld hl, $c8de
    call Call_05f_5f58
    ret


Call_05f_5fa5:
    ld hl, $61b5
    ld a, [wPLAN_selection]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $8b60
    call Call_05f_5f58
    ret


Call_05f_5fbc:
    ld hl, $c8de
    ld a, [$c8dd]
    and $f0
    call Call_05f_6248
    ld [hl+], a
    ld a, [$c8dd]
    and $0f
    ld [hl+], a
    ld a, $ff
    ld [hl], a
    ld de, $8b20
    ld hl, $c8de
    call Call_05f_5f58
    ret


Call_05f_5fdb:
    ld hl, $c8de
    ld a, [$c8e1]
    and $f0
    call Call_05f_6248
    ld [hl+], a
    ld a, [$c8e1]
    and $0f
    ld [hl+], a
    ld a, $ff
    ld [hl], a
    ld de, $8a90
    ld hl, $c8de
    call Call_05f_5f58
    ret


Call_05f_5ffa:
    ld a, [wOPTN_and_Item_selection]
    cp $0e
    jr c, jr_05f_600a

    cp $21
    jr c, jr_05f_600f

    ld hl, $5e00
    rst $10
    ret


jr_05f_600a:
    ld hl, $5c00
    rst $10
    ret


jr_05f_600f:
    ld hl, $5d00
    rst $10
    ret


Call_05f_6014:
    ld hl, wBGPalette
    inc hl
    ld a, $d0
    ld [hl+], a
    ld a, $e0
    ld [hl], a
    ld hl, $61c1
    ld a, [wOPTN_and_Item_selection]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [wObj1Palette], a
    ld a, [wOPTN_and_Item_selection]
    cp $03
    jr z, jr_05f_6049

    cp $04
    jr z, jr_05f_6049

    cp $0a
    jr z, jr_05f_6049

    ld a, $01
    ld [$dd68], a
    ld a, $01
    ld [$db54], a
    jr jr_05f_6053

jr_05f_6049:
    ld a, $00
    ld [$dd68], a
    ld a, $00
    ld [$db54], a

jr_05f_6053:
    ld a, [wOPTN_and_Item_selection]
    cp $0e
    jr c, jr_05f_6063

    cp $21
    jr c, jr_05f_6068

    ld hl, $5e01
    rst $10
    ret


jr_05f_6063:
    ld hl, $5c01
    rst $10
    ret


jr_05f_6068:
    ld hl, $5d01
    rst $10
    ret


    ld de, $ff00
    ld hl, $9000
    ld bc, $0120
    call Call_05f_5ecc
    ret


Call_05f_607a:
    ld a, [$c8dd]
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
    ld hl, $9000
    call Call_000_1577
    ret


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

    cp $e0
    ldh [$e0], a
    call nz, $c6c5
    ldh [$c7], a
    ret z

    ldh [$e0], a
    ldh [$e0], a
    or h
    or l
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ret


    jp z, $cccb

    call $cfce
    ldh [$e0], a
    ldh [$b6], a
    or a
    cp b
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
    or d
    or e
    ldh [$e0], a
    ldh [rIE], a
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
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e0], a
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    ldh [$bf], a
    ret nz

    pop bc
    jp nz, $e0c3

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

    cp $e0
    ldh [$e0], a
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    ldh [$b0], a
    or c
    ldh [$e8], a
    xor c
    xor d
    ldh [$e0], a
    ldh [rIE], a
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


    rst $00
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ret c

    ld b, $07
    ld [$0a09], sp
    dec bc
    ret c

    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $12d8
    inc de
    inc d
    dec d
    ld d, $17
    ret c

    jr jr_05f_61a2

    ld a, [de]
    dec de
    inc e
    dec e
    ret c

    ld e, $1f
    jr nz, jr_05f_61b3

    ld [hl+], a
    inc hl
    reti


    dec bc
    ld a, [bc]
    dec e
    dec e
    dec d
    ld c, $0e
    rrca
    ld c, $0c
    dec e
    jr jr_05f_61ad

jr_05f_61a2:
    inc de
    rla
    jr jr_05f_61bc

    jr jr_05f_61bf

    inc e
    dec e
    ld c, $1b
    rst $38

jr_05f_61ad:
    ld c, $0f
    ld c, $0c
    dec e
    rla

jr_05f_61b3:
    jr @+$01

    cp c
    ld h, c
    cp l
    ld h, c
    jr jr_05f_61ca

    rrca

jr_05f_61bc:
    rst $38
    jr jr_05f_61d6

jr_05f_61bf:
    sub b
    rst $38
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nc

    ret nc

    ret nc

jr_05f_61ca:
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a

jr_05f_61d6:
    ret nc

    ret nc

    ldh [$e0], a
    ldh [$e0], a
    ldh [$d0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$d0], a
    nop
    ld e, d
    ld bc, $025a
    ld e, d
    inc bc
    ld e, d
    inc b
    ld e, d
    dec b
    ld e, d
    ld b, $5a
    rlca
    ld e, d
    ld [$095a], sp
    ld e, d
    ld a, [bc]
    ld e, d
    dec bc
    ld e, d
    inc c
    ld e, d
    dec c
    ld e, d
    ld c, $5a
    rrca
    ld e, d
    db $10
    ld e, d
    ld de, $125a
    ld e, d
    inc de
    ld e, d
    inc d
    ld e, d
    dec d
    ld e, d
    ld d, $5a
    rla
    ld e, d
    jr jr_05f_627a

    add hl, de
    ld e, d
    ld a, [de]
    ld e, d
    dec de
    ld e, d
    inc e
    ld e, d
    dec e
    ld e, d
    ld e, $5a
    rra
    ld e, d
    ld a, [bc]
    ld e, e
    dec bc
    ld e, e
    inc c
    ld e, e
    dec c
    ld e, e
    ld c, $5b
    rrca
    ld e, e
    db $10
    ld e, e
    ld de, $125b
    ld e, e
    inc de
    ld e, e
    inc d
    ld e, e
    dec d
    ld e, e
    ld d, $5b

Call_05f_6248:
    srl a
    srl a
    srl a
    srl a
    ret


    ld a, [wMenu_selection]
    bit 7, a
    ret nz

    ld a, [$da88]
    or a
    jr nz, jr_05f_62d7

    ld a, [wJoypad_current_frame]
    bit 2, a
    ret z

    ld a, $01
    ld [$da88], a
    ld hl, $6452
    ld de, $8860
    call Call_05f_5f58
    ld de, $63b0
    ld hl, $c500
    call Call_05f_4263

jr_05f_627a:
    ld a, [$c863]
    and $02
    rlca
    ld [$db4c], a
    inc a
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db4d], a
    ld a, h
    ld [$db4e], a
    call Call_05f_62e5
    ld a, [$db4d]
    ld l, a
    ld a, [$db4e]
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_05f_62d2

    inc hl
    ld a, l
    ld [$db4d], a
    ld a, h
    ld [$db4e], a
    ld hl, $db4c
    inc [hl]
    call Call_05f_62e5
    ld a, [$db4d]
    ld l, a
    ld a, [$db4e]
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_05f_62d2

    inc hl
    ld a, l
    ld [$db4d], a
    ld a, h
    ld [$db4e], a
    ld hl, $db4c
    inc [hl]
    call Call_05f_62e5

jr_05f_62d2:
    ld hl, $5005
    rst $10
    ret


jr_05f_62d7:
    ld a, [wJoypad_current_frame]
    bit 2, a
    ret z

    xor a
    ld [$da88], a
    ld [$d9f4], a
    ret


Call_05f_62e5:
    call Call_05f_633d
    ld a, [$db4c]
    ld hl, $dc44
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_05f_6348
    ld hl, $643a
    call Call_05f_6360
    ld a, [$db4c]
    ld hl, $dc54
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_05f_6348
    ld hl, $6440
    call Call_05f_6360
    ld a, [$db4c]
    ld hl, $dc4c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_05f_6348
    ld hl, $6446
    call Call_05f_6360
    ld a, [$db4c]
    ld hl, $dc5c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_05f_6348
    ld hl, $644c
    call Call_05f_6360
    ret


Call_05f_633d:
    xor a
    ld hl, $db4f
    ld bc, $0003
    call Call_000_12c7
    ret


Call_05f_6348:
    ld b, [hl]
    ld a, $64
    call Call_000_1dfb
    ld hl, $db4f
    ld [hl], b
    ld b, a
    ld a, $0a
    call Call_000_1dfb
    ld hl, $db50
    ld [hl], b
    ld [$db51], a
    ret


Call_05f_6360:
    ld a, [$db4c]
    and $03
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $c500
    add hl, de
    ld c, $00
    ld a, [$db4f]
    or c
    jr z, jr_05f_638a

    inc c
    ld a, [$db4f]
    ld de, $6430
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl], a

jr_05f_638a:
    inc hl
    ld a, [$db50]
    or c
    jr z, jr_05f_63a0

    inc c
    ld a, [$db50]
    ld de, $6430
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl], a

jr_05f_63a0:
    inc hl
    ld a, [$db51]
    ld de, $6430
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl], a
    ret


    add b
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

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    add [hl]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$86], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    add a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$87], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    adc b
    ldh [$e0], a
    ldh [$e0], a
    ldh [$88], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    adc c
    ldh [$e0], a
    ldh [$e0], a
    ldh [$89], a
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
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    and d
    ld bc, $01a8
    xor [hl]
    ld bc, $01c2
    ret z

    ld bc, $01ce
    ld [c], a
    ld bc, $01e8
    xor $01
    ld [bc], a
    ld [bc], a
    ld [$0e02], sp
    ld [bc], a
    ld c, d
    jr z, jr_05f_6484

    ld c, b
    rst $38
    add b
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
    ld bc, $0302
    inc b
    dec b
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312

jr_05f_6484:
    inc d
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    dec d

jr_05f_648d:
    ld d, $17
    jr jr_05f_64aa

    ld a, [de]
    dec de
    inc e
    ret c

    nop
    nop
    nop
    nop
    nop
    dec e
    ld e, $1f
    jr nz, jr_05f_64c0

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $d8
    nop
    nop
    nop
    nop
    nop

jr_05f_64aa:
    daa
    jr z, jr_05f_64d6

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05f_648d

    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]

jr_05f_64c0:
    ld [hl], $00
    jr c, @-$26

    nop
    nop
    nop
    nop
    nop
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ret c

    nop
    nop
    nop

jr_05f_64d6:
    nop
    nop
    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    scf
    reti


    and b
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
    ret c

    nop
    ld l, d
    ld l, e
    ld l, h
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
    ld l, l
    ld l, [hl]
    ld l, a
    nop
    ret c

    nop
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    nop
    nop
    nop
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    nop
    ret c

    nop
    nop
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    nop
    ret c

    nop
    nop
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    nop
    ret c

    nop
    nop
    and c
    and d
    and e
    and h
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    xor [hl]
    xor a
    cp [hl]
    nop
    nop
    ret c

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
    reti


    and b
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
    ret c

    nop
    ld l, d
    ld l, e
    ld l, h
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
    ld l, l
    ld l, [hl]
    ld l, a
    nop
    ret c

    nop
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    nop
    nop
    nop
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    nop
    ret c

    nop
    nop
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    nop
    ret c

    nop
    nop
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    nop
    ret c

    nop
    nop
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    cp [hl]
    nop
    nop
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    nop
    nop
    nop
    ret nz

    nop
    ret c

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
    ret c

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
    ret c

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
    ret c

    nop
    nop
    nop
    cp d
    cp e
    cp h
    cp l
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    nop
    nop
    nop
    ret c

    nop
    nop
    nop
    nop
    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    nop
    nop
    nop
    nop
    reti


    inc bc
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $d8
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_05f_66a3

    ld a, [de]
    dec de
    inc e
    ret c

    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    reti


    nop
    ld bc, $0100
    ld [bc], a
    inc bc

jr_05f_66a3:
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $d912
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rP1], a
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $e012
    ldh [rNR14], a
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05f_6720

    ld [hl+], a
    inc hl
    inc h
    dec h
    ldh [$e0], a

jr_05f_6705:
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld h, $27
    jr z, jr_05f_6746

    ld a, [hl+]
    dec hl
    inc l

jr_05f_6720:
    dec l
    ld l, $2f
    jr nc, jr_05f_6705

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05f_676f

    ld a, [hl-]
    dec sp
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$3c], a
    dec a
    ld a, $3f
    ld b, b

jr_05f_6746:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a

jr_05f_676f:
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
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
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    ldh [$e0], a
    ldh [$73], a
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ldh [$e0], a
    or b
    or c
    or d
    or e
    or h
    or l
    ldh [$e0], a
    ldh [$7e], a
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    ldh [$e0], a
    ldh [$e0], a
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    ldh [$e0], a
    ldh [$94], a
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    jp nz, $c4c3

    push bc
    add $c7
    ldh [$e0], a
    ldh [$e0], a
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    ldh [$c8], a
    ret


    jp z, $cccb

    call $e0e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $e012
    ldh [rNR14], a
    ldh [$15], a
    ld d, $17
    jr jr_05f_6879

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05f_6889

    ld [hl+], a
    inc hl
    inc h
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a

jr_05f_6879:
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a

jr_05f_6889:
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rNR52], a
    daa
    jr z, jr_05f_68c1

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05f_68d1

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @-$1e

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_05f_68c1:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ldh [$e0], a

jr_05f_68d1:
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rHDMA2], a
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
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ldh [$e0], a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$73], a
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    or b
    or c
    or d
    or e
    or h
    or l
    ldh [$e0], a
    ldh [$7e], a
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    ldh [$e0], a
    ldh [$e0], a
    ldh [$89], a
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    ldh [$e0], a
    ldh [$94], a
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    jp nz, $c4c3

    push bc
    add $c7
    ldh [$e0], a
    ldh [$e0], a
    ldh [$9f], a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    ret z

    ret


    jp z, $cccb

    call $e0e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rP1], a
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
