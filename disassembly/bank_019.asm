; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $019", ROMX[$4000], BANK[$19]

    add hl, de
    inc bc
    ld b, b
    ld a, [$c905]
    rst $00
    ld h, h
    ld b, e
    ld de, $7440
    ld b, b
    ld c, c
    ld b, d
    ld b, e
    ld b, h
    ld b, $10
    ld c, $00

jr_019_4015:
    push bc
    ld hl, $4054
    ld a, c
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [wInGateworld]
    or a
    ld a, $f0
    jr z, jr_019_4047

    ld de, $c950
    ld a, c
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    or a
    ld a, $f0
    jr z, jr_019_4047

    ld de, $c940
    ld a, c
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]

jr_019_4047:
    call Call_019_4492
    pop bc
    inc c
    dec b
    jr nz, jr_019_4015

    ld hl, $c905
    inc [hl]
    ret


    nop
    nop
    dec b
    nop
    ld a, [bc]
    nop
    rrca
    nop
    add b
    nop
    add l
    nop
    adc d
    nop
    adc a
    nop
    nop
    ld bc, $0105
    ld a, [bc]
    ld bc, $010f
    add b
    ld bc, $0185
    adc d
    ld bc, $018f
    ld a, [wInGateworld]
    or a
    jp z, Jump_019_413e

    ld hl, wInventory
    ld b, $14

jr_019_4080:
    ld a, [hl+]
    cp $26
    jr z, jr_019_408a

    dec b
    jr nz, jr_019_4080

    jr jr_019_40e8

jr_019_408a:
    call Call_019_4269
    push af
    ld hl, $ffc3
    ld a, $88
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    pop af
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, [$c966]
    ld l, a
    ld a, [$c967]
    ld h, a
    srl h
    rr l
    srl h
    rr l
    ldh a, [$bb]
    ld b, a
    ld a, l
    sub b
    add $04
    cp $20
    jr nc, jr_019_40e4

    ld a, [$c964]
    ld l, a
    ld a, [$c965]
    ld h, a
    srl h
    rr l
    srl h
    rr l
    ldh a, [$b7]
    ld b, a
    ld a, l
    sub b
    sub $84
    jr c, jr_019_40e4

    cp $20
    jr nc, jr_019_40e4

    ld a, $68
    ldh [$c5], a

jr_019_40e4:
    ld hl, $0401
    rst $10

jr_019_40e8:
    ld hl, $ffc3
    ld a, $4b
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $3c
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $a9
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld hl, $0401
    rst $10
    ld a, [$c960]
    ld hl, $c950
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_019_413e

    ld a, [$c964]
    ld e, a
    ld a, [$c965]
    ld d, a
    ld a, e
    sub $10
    ld e, a
    ld a, d
    sbc $00
    ld d, a
    ld a, [$c966]
    ld c, a
    ld a, [$c967]
    ld b, a
    ld a, c
    sub $10
    ld c, a
    ld a, b
    sbc $00
    ld b, a
    call Call_019_4221
    ld hl, $0400
    rst $10

Jump_019_413e:
jr_019_413e:
    ld hl, $ffc3
    ld a, $08
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld hl, $0401
    rst $10
    ld hl, wDebug_main_menu_option
    ld a, [$c939]
    ld c, a
    ld b, $00
    inc bc
    call Call_000_20ad
    ld a, [wDebug_main_menu_option]
    cp $f0
    jr z, jr_019_4193

    and $0f
    add a
    push af
    ld hl, $ffc3
    ld a, $28
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld hl, $0401
    rst $10

jr_019_4193:
    ld a, [$c0a1]
    and $0f
    add a
    push af
    ld hl, $ffc3
    ld a, $30
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld hl, $0401
    rst $10
    ld hl, wDebug_main_menu_option
    ld a, [$c93a]
    ld c, a
    ld b, $00
    dec bc
    call Call_000_20ad
    ld a, [wDebug_main_menu_option]
    cp $f0
    jr z, jr_019_41ee

    and $0f
    add a
    push af
    ld hl, $ffc3
    ld a, $40
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld hl, $0401
    rst $10

jr_019_41ee:
    ld a, [$c0a1]
    and $0f
    add a
    push af
    ld hl, $ffc3
    ld a, $48
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld hl, $0401
    rst $10
    ld a, [wJoypad_current_frame]
    and $f7
    jr z, jr_019_4220

    ld hl, $c905
    inc [hl]
    jr jr_019_4220

jr_019_4220:
    ret


Call_019_4221:
    srl d
    rr e
    srl d
    rr e
    srl b
    rr c
    srl b
    rr c
    ld hl, $ffc3
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $ac
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ret


    call Call_019_4426
    ldh a, [$bf]
    ld l, a
    ldh a, [$c0]
    ld h, a
    ld a, l
    ldh [$b7], a
    ld a, h
    ldh [$b8], a
    ldh a, [$c1]
    ld l, a
    ldh a, [$c2]
    ld h, a
    ld a, l
    ldh [$bb], a
    ld a, h
    ldh [$bc], a
    ld hl, $c905
    inc [hl]
    ret


Call_019_4269:
    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, l
    and $f0
    ld l, a
    ld a, [$c966]
    ld e, a
    ld a, [$c967]
    ld d, a
    ld a, e
    and $f0
    ld e, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    jr nc, jr_019_4291

    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    cpl
    adc $00
    ld h, a

jr_019_4291:
    ldh a, [$92]
    ld e, a
    ldh a, [$93]
    ld d, a
    ld a, e
    and $f0
    ld e, a
    ld a, [$c964]
    ld c, a
    ld a, [$c965]
    ld b, a
    ld a, c
    and $f0
    ld c, a
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld d, a
    jr nc, jr_019_42b9

    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a

jr_019_42b9:
    push hl
    push de
    ld a, h
    or a
    jr nz, jr_019_42de

    ld a, d
    or a
    jr nz, jr_019_42de

    ld a, l
    cp $20
    jr nz, jr_019_42d1

    ld a, e
    cp $50
    jr c, jr_019_42de

    ld b, $00
    jr jr_019_42fe

jr_019_42d1:
    cp $10
    jr nz, jr_019_42de

    ld a, e
    cp $30
    jr c, jr_019_42de

    ld b, $00
    jr jr_019_42fe

jr_019_42de:
    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, [$c966]
    ld e, a
    ld a, [$c967]
    ld d, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld b, $06
    jr c, jr_019_42fe

    ld a, h
    or l
    ld b, $03
    jr nz, jr_019_42fe

    ld b, $00

jr_019_42fe:
    pop de
    pop hl
    ld a, h
    or a
    jr nz, jr_019_4323

    ld a, d
    or a
    jr nz, jr_019_4323

    ld a, e
    cp $20
    jr nz, jr_019_4316

    ld a, l
    cp $50
    jr c, jr_019_4323

    ld a, $00
    jr jr_019_4343

jr_019_4316:
    cp $10
    jr nz, jr_019_4323

    ld a, l
    cp $30
    jr c, jr_019_4323

    ld a, $00
    jr jr_019_4343

jr_019_4323:
    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    ld a, [$c964]
    ld e, a
    ld a, [$c965]
    ld d, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, $02
    jr c, jr_019_4343

    ld a, h
    or l
    ld a, $01
    jr nz, jr_019_4343

    ld a, $00

jr_019_4343:
    add b
    ld hl, $434e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ret


    or h
    or [hl]
    or b
    cp b
    cp d
    or d
    cp h
    cp [hl]

Call_019_4357:
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


    xor a
    ldh [$b7], a
    ldh [$b8], a
    xor a
    ldh [$bb], a
    ldh [$bc], a
    ld hl, $ffb7
    call Call_019_4357
    ld hl, $ffbb
    call Call_019_4357
    ld hl, wMenu_selection
    ld bc, $0008
    ld a, $00
    call FillNBytesWithRegA
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
    ld [$c909], a
    ld a, h
    ld [$c90a], a
    ld de, $281c
    ld hl, $8800
    call Call_000_1577
    ld de, $281f
    ld hl, $8900
    call Call_000_1577
    ld de, $281d
    ld hl, $8a90
    call Call_000_1577
    ld de, $281e
    ld hl, $8ac0
    call Call_000_1577
    ld de, $2e23
    ld hl, $8b00
    call Call_000_1577
    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    ld a, l
    sub $08
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    ld a, l
    sub $50
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, l
    ldh [$b7], a
    ld a, h
    ldh [$b8], a
    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, l
    sub $09
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    ld a, l
    sub $40
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, l
    ldh [$bb], a
    ld a, h
    ldh [$bc], a
    call Call_019_4426
    ld hl, $170a
    rst $10
    ld hl, $c905
    inc [hl]
    ret


Call_019_4426:
    ld hl, $9800
    ld b, $00

jr_019_442b:
    ld a, $e0
    call Write_gfx_tile_and_inc_HL
    ld a, $e0
    call Write_gfx_tile_and_inc_HL
    ld a, $e0
    call Write_gfx_tile_and_inc_HL
    ld a, $e0
    call Write_gfx_tile_and_inc_HL
    dec b
    jr nz, jr_019_442b

    ret


    ld a, $ff
    ldh [$b6], a
    ld hl, $0b02
    rst $10
    call Call_000_25f1
    ld hl, wGameState
    res 3, [hl]
    xor a
    ld [$c905], a
    ret


Call_019_4458:
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


Call_019_4467:
    ld a, [$c909]
    add l
    ld l, a
    ld a, [$c90a]
    adc h
    and $03
    ld h, a
    ld a, [$c90a]
    and $fc
    or h
    ld h, a
    ret


Call_019_447b:
    push bc
    ld b, l
    ld a, l
    and $e0
    ld l, a
    call Call_019_4467
    ld a, b
    and $1f
    jr z, jr_019_4490

    ld b, a

jr_019_448a:
    call Call_019_4458
    dec b
    jr nz, jr_019_448a

jr_019_4490:
    pop bc
    ret


Call_019_4492:
    push hl
    push af
    swap a
    and $0f
    ld l, a
    ld h, $00
    ld de, $4500
    ld a, [$c93f]
    cp $02
    jr nz, jr_019_44a8

    ld de, $4520

jr_019_44a8:
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop af
    and $0f
    ld c, $14
    call Call_000_1dbe
    add hl, de
    ld e, l
    ld d, h
    pop hl
    call Call_019_447b
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    call Call_019_44cb
    call Call_019_44cb
    call Call_019_44cb

Call_019_44cb:
    call Call_019_44f5
    call Call_019_44f5
    call Call_019_44f5
    call Call_019_44f5
    call Call_019_44f5
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
    ret


Call_019_44f5:
    ld a, [de]
    or $80
    inc de
    call Write_gfx_tile
    call Call_019_4458
    ret


    ld b, b
    ld b, l
    ld b, h
    ld b, [hl]
    ld c, b
    ld b, a
    ld c, h
    ld c, b
    ld d, b
    ld c, c
    ld d, h
    ld c, d
    ld e, b
    ld c, e
    ld e, h
    ld c, h
    ld h, b
    ld c, l
    ld h, h
    ld c, [hl]
    ld l, b
    ld c, a
    ld l, h
    ld d, b
    ld [hl], b
    ld d, c
    ld [hl], h
    ld d, d
    ld a, b
    ld d, e
    ld a, h
    ld d, h
    add b
    ld d, l
    sbc b
    ld d, [hl]
    inc h
    ld d, a
    or b
    ld d, a
    inc a
    ld e, b
    ret z

    ld e, b
    jr @+$5b

    ld a, h
    ld e, c
    ldh [$59], a
    ld b, h
    ld e, d
    xor b
    ld e, d
    ld hl, sp+$5a
    inc [hl]
    ld e, e
    ld [hl], b
    ld e, e
    xor h
    ld e, e
    ld a, h
    ld d, h
    nop
    nop
    ld bc, $0000
    inc c
    ld bc, $0101
    dec c
    ld a, [bc]
    ld bc, $0101
    dec bc
    nop
    nop
    ld bc, $0000
    nop
    nop
    dec bc
    nop
    nop
    rlca
    inc c
    ld [$0400], sp
    inc bc
    ld [bc], a
    ld bc, $0b0d
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    rlca
    ld bc, $0101
    rlca
    ld b, $06
    ld bc, $0606
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    rlca
    dec bc
    ld bc, $0704
    ld b, $03
    ld bc, $060c
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    inc c
    dec bc
    ld b, $0a
    dec c
    ld a, [bc]
    dec c
    rlca
    inc c
    dec bc
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    inc c
    dec c
    ld bc, $0d0c
    ld a, [bc]
    dec bc
    ld bc, $0b0a
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld a, [bc]
    nop
    nop
    dec b
    nop
    add hl, bc
    ld bc, $0a0d
    nop
    add hl, bc
    ld bc, $020b
    ld b, $01
    inc bc
    nop
    nop
    nop
    ld bc, $0000
    dec b
    ld bc, $0106
    inc b
    ld a, [bc]
    ld [$0900], sp
    dec bc
    nop
    ld b, $01
    ld b, $00
    nop
    nop
    dec bc
    nop
    nop
    inc c
    ld a, [bc]
    dec c
    rlca
    dec c
    inc bc
    nop
    nop
    nop
    dec bc
    nop
    nop
    inc c
    ld b, $03
    nop
    nop
    ld a, [bc]
    nop
    nop
    dec b
    inc b
    inc c
    nop
    rlca
    ld b, $06
    ld [$0b00], sp
    nop
    nop
    ld bc, $0306
    nop
    nop
    dec bc
    nop
    nop
    inc c
    ld bc, $0008
    inc b
    ld b, $06
    ld a, [bc]
    ld bc, $000b
    nop
    inc c
    ld b, $03
    nop
    nop
    ld bc, $0000
    inc c
    ld bc, $0a0b
    rlca
    ld a, [bc]
    ld bc, $0008
    ld [bc], a
    ld [bc], a
    ld b, $0d
    nop
    nop
    nop
    nop
    ld bc, $0000
    rlca
    rlca
    ld bc, $0707
    ld b, $06
    ld bc, $0606
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0101
    rlca
    ld b, $01
    ld bc, $0601
    nop
    ld b, $01
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $01
    ld b, $0d
    ld b, $00
    ld bc, $0600
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $06
    ld bc, $0a0d
    rlca
    dec b
    nop
    dec bc
    nop
    nop
    ld bc, $0306
    nop
    nop
    nop
    nop
    nop
    inc c
    ld bc, $0001
    inc b
    ld a, [bc]
    ld bc, $0001
    dec bc
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    inc c
    ld bc, $030d
    nop
    nop
    add hl, bc
    ld b, $00
    nop
    ld bc, $0006
    nop
    nop
    nop
    nop
    nop
    inc c
    ld a, [bc]
    nop
    nop
    inc b
    ld b, $09
    rlca
    rlca
    dec bc
    nop
    ld [bc], a
    ld bc, $0306
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    add hl, bc
    ld b, $0d
    ld a, [bc]
    rlca
    inc c
    nop
    ld b, $02
    ld b, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $06
    ld a, [bc]
    dec c
    inc bc
    nop
    nop
    add hl, bc
    dec bc
    nop
    nop
    inc c
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $01
    ld bc, $030d
    nop
    ld a, [bc]
    ld bc, $000b
    nop
    inc c
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $06
    ld [$0304], sp
    inc b
    rlca
    ld [$000b], sp
    ld [bc], a
    ld bc, $0306
    nop
    nop
    nop
    nop
    nop
    inc c
    ld a, [bc]
    nop
    dec bc
    dec c
    ld b, $09
    rlca
    ld [$0006], sp
    ld [bc], a
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    inc c
    ld a, [bc]
    ld bc, $0d01
    ld b, $09
    ld bc, $0b01
    nop
    ld [bc], a
    ld bc, $0306
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld bc, $0606
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    inc c
    ld bc, $0101
    dec c
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    inc c
    ld bc, $0101
    dec c
    ld a, [bc]
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    dec b
    add hl, bc
    ld b, $06
    dec c
    ld a, [bc]
    inc c
    nop
    nop
    ld b, $02
    ld b, $00
    nop
    nop
    nop
    nop
    ld bc, $0000
    dec b
    nop
    ld bc, $0400
    ld b, $0a
    ld bc, $060b
    nop
    ld [bc], a
    ld b, $03
    nop
    nop
    nop
    ld bc, $0000
    inc c
    ld [$0606], sp
    dec c
    ld a, [bc]
    ld [$0507], sp
    dec bc
    ld [bc], a
    ld b, $03
    ld b, $03
    nop
    nop
    ld bc, $0000
    inc c
    ld bc, $0101
    dec c
    ld a, [bc]
    ld [$0900], sp
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    inc c
    ld b, $06
    nop
    inc b
    ld a, [bc]
    nop
    nop
    nop
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    inc c
    dec bc
    ld b, $0a
    dec c
    inc bc
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    inc c
    ld a, [bc]
    ld bc, $0405
    inc bc
    nop
    nop
    ld [$000b], sp
    nop
    nop
    ld b, $03
    nop
    nop
    ld bc, $0000
    rlca
    rlca
    dec bc
    nop
    inc b
    ld a, [bc]
    ld bc, $0008
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    dec b
    nop
    add hl, bc
    ld bc, $0a0d
    ld bc, $000c
    ld [bc], a
    ld [bc], a
    ld b, $03
    nop
    nop
    nop
    nop
    ld bc, $0000
    dec b
    ld bc, $0106
    rlca
    ld b, $01
    rlca
    ld bc, $0002
    ld b, $06
    ld b, $00
    nop
    nop
    ld bc, $0000
    rlca
    rlca
    ld bc, $0707
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0d01
    nop
    nop
    ld bc, $0b01
    nop
    nop
    ld bc, $0306
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld b, $06
    nop
    inc b
    add hl, bc
    rlca
    rlca
    inc c
    ld b, $00
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld b, $06
    ld b, $0d
    add hl, bc
    dec b
    nop
    nop
    dec bc
    ld [bc], a
    inc bc
    ld bc, $0306
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0707
    nop
    nop
    ld bc, $0606
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld [$0900], sp
    dec bc
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    ld bc, $0000
    inc b
    inc c
    ld b, $06
    dec c
    add hl, bc
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld b, $0d
    nop
    nop
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld [$0109], sp
    dec c
    add hl, bc
    ld bc, $030b
    ld [bc], a
    ld [bc], a
    ld b, $0d
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    inc b
    ld [$0400], sp
    nop
    add hl, bc
    dec bc
    ld b, $06
    nop
    nop
    dec c
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld a, [bc]
    dec c
    nop
    nop
    nop
    add hl, bc
    dec bc
    nop
    nop
    inc c
    ld b, $03
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld b, $03
    inc b
    rlca
    add hl, bc
    rlca
    rlca
    inc c
    dec bc
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    ld bc, $0000
    inc b
    ld bc, $060b
    dec c
    add hl, bc
    nop
    dec c
    rlca
    dec bc
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0707
    nop
    nop
    ld bc, $0606
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    inc c
    ld bc, $0101
    ld [$010a], sp
    ld bc, $0801
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    ld bc, $0000
    inc c
    ld bc, $0001
    nop
    ld a, [bc]
    ld bc, $0001
    nop
    ld [bc], a
    ld b, $01
    nop
    nop
    nop
    nop
    ld bc, $0000
    rlca
    rlca
    ld bc, $0000
    ld b, $06
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    inc c
    ld bc, $0101
    ld [$080a], sp
    nop
    add hl, bc
    ld [$0602], sp
    ld bc, $0306
    nop
    nop
    ld bc, $0000
    inc c
    ld b, $06
    ld a, [bc]
    ld [$0006], sp
    nop
    add hl, bc
    ld [$0000], sp
    ld bc, $0306
    nop
    nop
    ld bc, $0000
    rlca
    add hl, bc
    ld bc, $0801
    ld a, [bc]
    nop
    nop
    nop
    ld [$0602], sp
    ld bc, $0306
    nop
    nop
    ld bc, $0000
    inc c
    ld bc, $0a06
    dec b
    inc bc
    nop
    inc b
    inc c
    ld [$0000], sp
    inc c
    ld b, $03
    nop
    nop
    ld bc, $0000
    rlca
    ld bc, $0003
    nop
    ld b, $01
    dec b
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    rlca
    dec b
    ld [bc], a
    ld b, $08
    ld a, [bc]
    ld bc, $0507
    ld [$0602], sp
    ld bc, $0306
    nop
    nop
    ld bc, $0000
    inc c
    dec bc
    inc bc
    inc b
    dec b
    ld a, [bc]
    dec c
    dec b
    inc c
    inc bc
    nop
    ld [bc], a
    ld bc, $0003
    nop
    nop
    ld bc, $0000
    inc c
    ld b, $01
    ld b, $08
    ld a, [bc]
    rlca
    ld bc, $0807
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    nop
    nop
    ld bc, $0000
    dec b
    nop
    ld bc, $0000
    ld b, $0d
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    rlca
    rlca
    ld bc, $0000
    ld b, $06
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld bc, $0101
    dec c
    ld a, [bc]
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    inc c
    ld bc, $0108
    dec c
    ld b, $01
    ld [$0b01], sp
    nop
    ld b, $06
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    rlca
    dec b
    nop
    dec bc
    dec c
    ld a, [bc]
    dec c
    rlca
    ld [$0206], sp
    ld b, $06
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $06
    ld [$0607], sp
    inc b
    rlca
    ld [$000b], sp
    ld [bc], a
    ld b, $06
    inc bc
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    ld a, [bc]
    nop
    ld bc, $0b00
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    add hl, bc
    dec c
    ld a, [bc]
    dec c
    inc c
    dec bc
    ld b, $00
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    inc b
    rlca
    nop
    inc b
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld bc, $020b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    nop
    inc b
    inc bc
    add hl, bc
    ld bc, $0601
    nop
    ld [bc], a
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $0a
    ld b, $0d
    inc bc
    inc b
    inc c
    dec b
    ld [bc], a
    nop
    ld [bc], a
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $0a
    ld [$0a07], sp
    dec b
    nop
    ld [$020b], sp
    ld b, $06
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    add hl, bc
    dec c
    ld a, [bc]
    ld bc, $060b
    ld [bc], a
    ld [bc], a
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    nop
    nop
    ld bc, $0606
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0701
    rlca
    add hl, bc
    ld bc, $0601
    ld b, $00
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    dec bc
    ld b, $06
    dec c
    add hl, bc
    ld [$0000], sp
    ld b, $02
    ld b, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld b, $06
    inc bc
    rlca
    add hl, bc
    nop
    rlca
    rlca
    dec bc
    ld [bc], a
    ld b, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld b, $06
    ld a, [bc]
    dec c
    add hl, bc
    rlca
    nop
    add hl, bc
    dec bc
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    inc b
    dec bc
    nop
    nop
    inc c
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $000d
    add hl, bc
    ld bc, $0b01
    nop
    ld [bc], a
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0000
    inc b
    add hl, bc
    ld bc, $0400
    dec bc
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0601
    dec c
    add hl, bc
    ld bc, $000b
    ld [bc], a
    ld [bc], a
    ld b, $0d
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
    ld bc, $000d
    nop
    add hl, bc
    nop
    dec bc
    nop
    nop
    inc c
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $090d
    ld bc, $030b
    ld [bc], a
    ld [bc], a
    ld b, $0d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    nop
    nop
    ld bc, $0606
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    nop
    nop
    ld b, $06
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    inc c
    ld bc, $0101
    ld [$010a], sp
    ld bc, $0801
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $06
    ld b, $08
    ld b, $04
    rlca
    rlca
    ld [$0200], sp
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $06
    ld a, [bc]
    ld [$000a], sp
    nop
    add hl, bc
    ld [$0602], sp
    ld bc, $0302
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld bc, $0801
    ld b, $06
    ld bc, $0801
    nop
    nop
    ld bc, $0306
    nop
    nop
    nop
    nop
    nop
    inc c
    dec bc
    ld bc, $0801
    ld a, [bc]
    ld [$0101], sp
    ld [$0302], sp
    ld bc, $0306
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec b
    nop
    nop
    nop
    ld [bc], a
    ld b, $0d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    dec b
    inc bc
    nop
    nop
    add hl, bc
    ld [$0000], sp
    inc c
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    inc c
    dec bc
    ld a, [bc]
    nop
    nop
    inc bc
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    inc c
    ld b, $0a
    dec b
    ld a, [bc]
    nop
    nop
    inc c
    ld [$0602], sp
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    dec b
    add hl, bc
    ld bc, $0801
    ld a, [bc]
    add hl, bc
    ld bc, $0801
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    inc c
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    nop
    ld a, [bc]
    add hl, bc
    ld bc, $0009
    ld [bc], a
    ld b, $01
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    nop
    nop
    ld b, $06
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0707
    nop
    nop
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    add hl, bc
    dec bc
    ld b, $00
    inc b
    add hl, bc
    ld [$0900], sp
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0400
    add hl, bc
    ld bc, $0601
    ld b, $02
    ld b, $06
    nop
    nop
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $060b
    dec c
    add hl, bc
    ld [$0700], sp
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld [$0606], sp
    dec c
    add hl, bc
    nop
    nop
    nop
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    nop
    nop
    add hl, bc
    dec c
    inc b
    nop
    nop
    nop
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld b, $01
    dec c
    nop
    nop
    nop
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $0008
    inc b
    add hl, bc
    ld bc, $0601
    ld b, $02
    ld b, $02
    nop
    nop
    nop
    nop
    ld bc, $0000
    inc b
    dec bc
    ld b, $0d
    inc b
    ld [bc], a
    dec c
    nop
    add hl, bc
    dec bc
    nop
    ld [bc], a
    ld b, $06
    inc bc
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $0101
    rlca
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    add hl, bc
    ld bc, $040d
    rlca
    add hl, bc
    ld b, $06
    ld [bc], a
    ld b, $06
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0707
    nop
    nop
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    rlca
    rlca
    ld bc, $0000
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    inc c
    ld bc, $0101
    ld [$010a], sp
    ld bc, $0801
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    rlca
    nop
    ld b, $0a
    ld [$000a], sp
    nop
    add hl, bc
    ld [$0602], sp
    ld b, $06
    inc bc
    nop
    nop
    ld bc, $0000
    inc c
    ld b, $0a
    ld bc, $0a08
    nop
    nop
    nop
    ld [$0602], sp
    ld b, $06
    inc bc
    nop
    nop
    ld bc, $0000
    dec b
    inc b
    ld bc, $0801
    ld b, $01
    ld bc, $0801
    nop
    nop
    ld b, $03
    nop
    nop
    nop
    ld bc, $0000
    inc c
    ld b, $06
    ld bc, $0600
    nop
    nop
    ld bc, $0005
    nop
    nop
    ld b, $03
    nop
    nop
    ld bc, $0000
    inc c
    dec bc
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    dec b
    nop
    add hl, bc
    nop
    nop
    ld a, [bc]
    ld bc, $0009
    nop
    ld [bc], a
    ld b, $06
    nop
    nop
    nop
    nop
    ld bc, $0000
    dec b
    nop
    ld [bc], a
    ld a, [bc]
    ld [$0a06], sp
    rlca
    inc c
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    dec b
    nop
    add hl, bc
    ld bc, $0a08
    ld bc, $060b
    inc bc
    ld [bc], a
    ld b, $03
    nop
    nop
    nop
    nop
    ld bc, $0000
    dec b
    inc b
    ld [$0000], sp
    ld b, $06
    dec c
    rlca
    dec b
    nop
    nop
    ld b, $06
    inc bc
    nop
    nop
    ld bc, $0000
    inc c
    ld b, $0a
    nop
    nop
    ld a, [bc]
    rlca
    inc c
    nop
    nop
    ld [bc], a
    ld b, $06
    nop
    nop
    nop
    nop
    ld bc, $0000
    rlca
    rlca
    ld bc, $0000
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0006
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld b, $01
    nop
    nop
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld b, $06
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $01
    ld b, $00
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0801
    nop
    nop
    ld bc, $0306
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $0001
    nop
    ld [bc], a
    ld b, $01
    ld bc, $0008
    nop
    ld bc, $0306
    nop
    nop
    ld bc, $0000
    add hl, bc
    dec bc
    ld b, $0a
    ld [$0809], sp
    nop
    add hl, bc
    ld [$0602], sp
    ld bc, $0306
    nop
    nop
    ld bc, $0000
    nop
    nop
    add hl, bc
    ld [$0000], sp
    add hl, bc
    dec bc
    inc bc
    nop
    nop
    ld [bc], a
    dec c
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld bc, $0008
    nop
    nop
    ld bc, $0008
    nop
    inc c
    ld b, $03
    nop
    nop
    ld bc, $0000
    nop
    nop
    add hl, bc
    dec c
    nop
    add hl, bc
    dec c
    nop
    ld bc, $0008
    ld b, $01
    ld b, $03
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld b, $01
    ld b, $08
    add hl, bc
    dec b
    ld bc, $0804
    ld [bc], a
    inc bc
    ld bc, $0302
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $0008
    nop
    nop
    ld [bc], a
    ld a, [bc]
    ld bc, $0000
    nop
    inc c
    inc bc
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld b, $06
    nop
    nop
    add hl, bc
    rlca
    rlca
    rlca
    dec b
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld b, $06
    ld [$0000], sp
    nop
    nop
    ld [$0000], sp
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $0000
    inc b
    rlca
    ld bc, $0801
    add hl, bc
    ld bc, $060b
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $060b
    ld [$0009], sp
    nop
    nop
    ld [$0602], sp
    ld b, $06
    inc bc
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0008
    nop
    nop
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    add hl, bc
    dec c
    dec b
    add hl, bc
    dec c
    nop
    ld bc, $0008
    ld b, $06
    inc bc
    nop
    nop
    nop
    ld bc, $0000
    nop
    inc b
    ld [$0000], sp
    inc b
    inc c
    dec c
    inc c
    ld [$0602], sp
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    add hl, bc
    ld bc, $0000
    add hl, bc
    ld bc, $0006
    nop
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    ld bc, $0000
    nop
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
    ld bc, $0000
    add hl, bc
    ld bc, $0408
    ld [$0309], sp
    ld a, [bc]
    ld bc, $0008
    nop
    nop
    ld b, $00
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0101
    ld [$0000], sp
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld b, $06
    ld b, $08
    add hl, bc
    nop
    nop
    inc b
    ld [$0602], sp
    ld bc, $0302
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $060b
    ld [$0009], sp
    nop
    rlca
    ld [$0602], sp
    ld bc, $0306
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0001
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0606
    inc bc
    add hl, bc
    ld bc, $0005
    nop
    nop
    ld [bc], a
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
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0008
    nop
    nop
    ld a, [bc]
    ld bc, $0008
    nop
    inc c
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0806
    nop
    nop
    nop
    inc b
    ld [$0000], sp
    inc c
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0001
    nop
    ld [bc], a
    ld a, [bc]
    ld b, $00
    nop
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0101
    ld [$0802], sp
    nop
    add hl, bc
    inc bc
    nop
    ld b, $01
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    inc c
    ld bc, $0101
    ld [$010a], sp
    ld bc, $0801
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    dec b
    ld b, $06
    ld b, $06
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0606
    ld [$0003], sp
    nop
    nop
    ld [$0600], sp
    ld b, $06
    inc bc
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    add hl, bc
    ld b, $08
    ld b, $0a
    ld bc, $0800
    nop
    ld [bc], a
    ld b, $06
    inc bc
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    inc c
    ld bc, $0608
    ld b, $01
    ld bc, $0008
    nop
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    add hl, bc
    ld bc, $0806
    ld b, $01
    ld [$0804], sp
    nop
    ld [bc], a
    ld b, $06
    inc bc
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    inc b
    ld bc, $0a08
    dec c
    ld bc, $0306
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    ld bc, $0801
    ld a, [bc]
    ld bc, $0008
    nop
    ld [bc], a
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $06
    ld a, [bc]
    ld [$070a], sp
    dec b
    nop
    nop
    nop
    ld b, $06
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    rlca
    ld bc, $000d
    nop
    inc bc
    ld bc, $0001
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    add hl, bc
    ld bc, $0001
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld b, $00
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    dec b
    ld b, $06
    ld b, $06
    inc bc
    nop
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
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld b, $06
    ld b, $06
    nop
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
    ld bc, $0707
    rlca
    add hl, bc
    ld bc, $0606
    ld b, $02
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld b, $0a
    ld [$0904], sp
    nop
    nop
    nop
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0701
    inc b
    inc c
    add hl, bc
    dec bc
    ld b, $02
    ld b, $06
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0109
    dec c
    ld [bc], a
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0008
    inc b
    nop
    ld b, $01
    inc c
    dec bc
    nop
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc c
    ld bc, $000d
    add hl, bc
    ld bc, $0200
    nop
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
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    dec bc
    ld bc, $0704
    add hl, bc
    ld [$0901], sp
    ld b, $00
    nop
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld bc, $070d
    nop
    ld a, [bc]
    ld bc, $020b
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0c01
    ld bc, $0101
    dec c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $010a
    ld bc, $0b01
    rlca
    rlca
    ld bc, $0707
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    dec c
    ld bc, $0101
    ld bc, $010b
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld bc, $0606
    add hl, bc
    ld bc, $0101
    ld bc, $010c
    ld bc, $0101
    ld a, [bc]
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    inc c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0d01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $010b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0a01
    ld bc, $0101
    ld bc, $0704
    ld bc, $0707
    inc c
    ld bc, $0101
    ld bc, $010a
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    ld bc, $0707
    ld bc, $0507
    ld bc, $0101
    ld bc, $010d
    ld bc, $0101
    dec bc
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0d01
    ld bc, $0101
    ld bc, $060b
    ld b, $01
    ld b, $03
    add hl, bc
    ld bc, $0101
    ld bc, $010c
    ld bc, $0101
    ld a, [bc]
    ld bc, $0101
    ld bc, $0602
    ld bc, $0606
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    dec b
    ld bc, $0101
    ld bc, $010d
    ld bc, $0101
    dec bc
    ld bc, $0101
    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld bc, $0606
    inc b
    rlca
    rlca
    rlca
    rlca
    inc c
    ld bc, $0101
    ld bc, $010a
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    dec b
    ld bc, $0101
    ld bc, $010d
    ld bc, $0101
    dec bc
    ld a, [bc]
    ld bc, $0101
    ld [$0704], sp
    rlca
    rlca
    rlca
    inc c
    ld bc, $0101
    ld bc, $010a
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    dec bc
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $010a
    ld bc, $0b01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $06
    ld b, $07
    rlca
    ld bc, $0707
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0d01
    ld bc, $0101
    ld bc, $060b
    ld b, $06
    ld b, $03
    add hl, bc
    ld bc, $0101
    ld bc, $010c
    ld bc, $0101
    ld a, [bc]
    ld bc, $0101
    ld bc, $0602
    ld b, $06
    ld b, $0c
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0d01
    ld bc, $0101
    ld bc, $060b
    ld b, $06
    ld b, $03
    add hl, bc
    ld bc, $0101
    dec c
    inc c
    ld bc, $0101
    ld bc, $010a
    ld bc, $0101
    ld [bc], a
    ld b, $06
    ld b, $06
    inc c
    ld bc, $0101
    dec c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld b, $09
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    inc b
    rlca
    ld bc, $0707
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    dec bc
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    ld [bc], a
    ld b, $01
    ld b, $06
    inc b
    rlca
    ld bc, $0707
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    dec bc
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    ld [bc], a
    ld b, $01
    ld b, $06
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    dec bc
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0801
    ld bc, $0101
    ld bc, $0708
    rlca
    ld bc, $0507
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0801
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0801
    ld b, $06
    ld bc, $0306
    add hl, bc
    ld bc, $0101
    ld [$010c], sp
    ld bc, $0801
    ld a, [bc]
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    rlca
    rlca
    ld bc, $0507
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$010a], sp
    ld bc, $0801
    inc c
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0801
    ld bc, $0101
    ld bc, $0608
    ld b, $01
    ld b, $03
    inc c
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0801
    ld bc, $0101
    ld bc, $0a08
    ld bc, $0101
    ld [$0707], sp
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld b, $07
    rlca
    rlca
    rlca
    dec b
    ld bc, $0101
    ld bc, $010d
    ld bc, $0101
    dec bc
    ld b, $06
    ld b, $06
    inc bc
    inc b
    rlca
    rlca
    rlca
    rlca
    inc c
    ld bc, $0101
    ld bc, $010a
    ld bc, $0101
    ld [bc], a
    ld b, $06
    ld b, $06
    inc b
    rlca
    rlca
    rlca
    dec b
    inc c
    ld bc, $0101
    dec c
    ld a, [bc]
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    inc b
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    ld bc, $0704
    rlca
    rlca
    dec b
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    dec bc
    add hl, bc
    ld bc, $0101
    ld [$0704], sp
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    ld [bc], a
    ld b, $01
    ld b, $06
    inc b
    rlca
    rlca
    rlca
    dec b
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $01
    ld b, $03
    inc b
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    dec bc
    rlca
    rlca
    rlca
    rlca
    dec b
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0801
    rlca
    rlca
    rlca
    rlca
    dec b
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$0606], sp
    ld bc, $0306
    inc b
    rlca
    rlca
    rlca
    dec b
    inc c
    ld bc, $0101
    ld [$010a], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld [$0704], sp
    rlca
    rlca
    dec b
    inc c
    ld bc, $0101
    ld [$010a], sp
    ld bc, $0801
    ld [bc], a
    ld b, $01
    ld b, $03
    rlca
    rlca
    rlca
    rlca
    dec b
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$010a], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    ld bc, $0602
    ld b, $06
    ld b, $04
    rlca
    ld bc, $0707
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    ld [bc], a
    ld b, $06
    ld b, $06
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0d01
    add hl, bc
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    inc b
    rlca
    ld bc, $0507
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    ld [bc], a
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0801
    ld b, $06
    ld b, $06
    inc bc
    rlca
    rlca
    ld bc, $0507
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$0606], sp
    ld b, $06
    inc bc
    add hl, bc
    ld bc, $0101
    ld [$010c], sp
    ld bc, $0801
    ld a, [bc]
    ld bc, $0101
    ld [$0602], sp
    ld b, $06
    inc bc
    inc b
    rlca
    ld bc, $0507
    inc c
    ld bc, $0101
    ld [$010a], sp
    ld bc, $0801
    ld [bc], a
    ld b, $06
    ld b, $03
    inc c
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0801
    ld bc, $0101
    ld bc, $0608
    ld b, $06
    ld b, $03
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    inc b
    rlca
    ld bc, $0507
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    ld [bc], a
    ld b, $01
    ld b, $03
    inc b
    rlca
    ld bc, $0507
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    ld [bc], a
    ld b, $01
    ld b, $03
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld [$0602], sp
    ld b, $06
    inc bc
    inc b
    rlca
    ld bc, $0507
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    ld [bc], a
    ld b, $06
    ld b, $03
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld [$0602], sp
    ld bc, $0306
    inc b
    rlca
    rlca
    rlca
    dec b
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld [$0704], sp
    rlca
    rlca
    dec b
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    ld [bc], a
    ld b, $01
    ld b, $03
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld [$0602], sp
    ld bc, $0306
    rlca
    rlca
    rlca
    rlca
    dec b
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$0606], sp
    ld b, $06
    inc bc
    inc b
    rlca
    rlca
    rlca
    dec b
    inc c
    ld bc, $0101
    ld [$010a], sp
    ld bc, $0801
    ld [bc], a
    ld b, $06
    ld b, $03
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld [$0602], sp
    ld bc, $0306
    inc b
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    ld [bc], a
    ld b, $06
    ld b, $06
    inc b
    rlca
    rlca
    rlca
    dec b
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld [$0602], sp
    ld bc, $0306
    add [hl]
    ld e, b
    add [hl]
    ld d, c
    add [hl]
    ld c, h
    add [hl]
    ld d, c
    add [hl]
    ld e, b
    add [hl]
    ld d, c
    add [hl]
    ld c, h
    add [hl]
    ld d, c
    add [hl]
    ld e, b
    add [hl]
    ld d, c
    add [hl]
    ld c, h
    add [hl]
    ld d, c
    add [hl]
    ld e, b
    add [hl]
    ld d, b
    add [hl]
    ld c, e
    add [hl]
    ld d, b
    add [hl]

jr_019_5c09:
    ld d, a
    add [hl]

jr_019_5c0b:
    ld d, b
    add [hl]
    ld c, e
    add [hl]
    ld d, b
    add [hl]
    ld d, a
    add [hl]
    ld d, b
    add [hl]
    ld c, e
    add [hl]
    ld d, b
    add [hl]
    ld d, a
    add [hl]
    ld d, b
    add [hl]
    ld c, e
    add [hl]
    ld d, b
    add [hl]
    ld d, a
    add [hl]
    ld c, a
    add [hl]
    ld c, d
    add [hl]
    ld c, a
    add [hl]
    ld d, h
    add [hl]
    ld c, a
    add [hl]
    ld c, d
    add [hl]
    ld c, a
    add [hl]
    ld d, h
    add [hl]
    ld c, a
    add [hl]
    ld c, d
    add [hl]
    ld c, a
    add [hl]

jr_019_5c39:
    ld d, h
    add [hl]
    ld c, a
    add [hl]
    ld c, d
    add [hl]
    ld c, a
    add [hl]
    ld d, h
    add [hl]
    ld d, e
    add [hl]
    ld d, b
    add [hl]
    ld c, l
    add [hl]

jr_019_5c49:
    ld c, d
    add [hl]
    ld b, a
    add [hl]
    ld b, h
    add [hl]
    ld b, c
    add [hl]
    ld a, $86
    dec sp
    add [hl]
    jr c, @-$78

    dec [hl]
    add [hl]
    ld [hl-], a
    add [hl]
    cpl
    add [hl]
    inc l
    add [hl]
    add hl, hl
    add [hl]
    ld h, $86
    or d
    adc a
    ld e, d
    or c
    cp l
    nop
    cp [hl]
    db $10
    cp a
    jr c, jr_019_5c0b

    add [hl]
    call nc, $0c30
    add [hl]
    scf
    add [hl]
    dec sp
    add [hl]
    ld b, b
    add [hl]
    ld b, a
    add [hl]
    ld b, b
    add [hl]
    dec sp

jr_019_5c7e:
    add [hl]
    scf
    add [hl]
    jr nc, jr_019_5c09

    scf
    add [hl]
    dec sp
    add [hl]
    ld b, b
    add [hl]
    ld b, a
    add [hl]
    ld b, b
    add [hl]
    dec sp
    add [hl]
    scf
    add [hl]

jr_019_5c91:
    dec hl
    add [hl]
    ld [hl-], a
    add [hl]
    dec [hl]
    add [hl]
    add hl, sp
    add [hl]
    ld b, b
    add [hl]
    add hl, sp
    add [hl]
    dec [hl]
    add [hl]
    ld [hl-], a
    add [hl]

jr_019_5ca1:
    dec hl
    add [hl]
    ld [hl-], a
    add [hl]
    dec [hl]
    add [hl]
    add hl, sp
    add [hl]
    ld b, b
    add [hl]
    add hl, sp
    add [hl]
    dec [hl]
    add [hl]
    ld [hl-], a
    add [hl]
    jr nc, jr_019_5c39

    scf

jr_019_5cb4:
    add [hl]
    dec sp
    add [hl]
    ld b, b
    add [hl]
    ld b, a
    add [hl]
    ld b, b
    add [hl]
    dec sp
    add [hl]
    scf
    add [hl]
    jr nc, jr_019_5c49

    scf

jr_019_5cc4:
    add [hl]
    dec sp
    add [hl]
    ld b, b
    add [hl]
    ld b, a
    add [hl]
    ld b, b
    add [hl]
    dec sp
    add [hl]
    scf
    add [hl]
    dec hl
    add [hl]
    ld [hl-], a
    add [hl]
    dec [hl]
    add [hl]
    add hl, sp
    add [hl]
    ld b, b
    add [hl]
    ld b, l
    add [hl]
    ld c, h
    add [hl]
    ld d, c
    add [hl]
    ld e, l
    sbc [hl]
    add [hl]
    call nc, $0c30
    add [hl]
    scf
    add [hl]
    dec sp
    add [hl]
    ld b, b
    add [hl]
    ld b, a
    add [hl]
    ld b, b
    add [hl]
    dec sp
    add [hl]
    scf
    add [hl]
    jr nc, jr_019_5c7e

    scf
    add [hl]
    dec sp

jr_019_5cfb:
    add [hl]
    ld b, b
    add [hl]
    ld b, a
    add [hl]
    ld b, b
    add [hl]
    dec sp
    add [hl]
    or h
    db $d4, $37, $0c
    add [hl]
    jr nc, jr_019_5c91

jr_019_5d0b:
    ld [hl], $86
    ld a, [hl-]
    add [hl]
    ccf
    add [hl]
    ld b, [hl]
    add [hl]
    ccf
    add [hl]
    ld a, [hl-]
    add [hl]
    ld [hl], $86
    jr nc, jr_019_5ca1

    ld [hl], $86
    ld a, [hl-]
    add [hl]
    ccf
    add [hl]
    ld b, [hl]
    add [hl]
    ccf
    add [hl]
    ld a, [hl-]
    add [hl]
    or h
    db $d4, $36, $0c
    add [hl]
    jr nc, jr_019_5cb4

    scf
    add [hl]
    dec sp
    add [hl]
    ld b, b
    add [hl]
    ld b, a
    add [hl]
    ld b, b
    add [hl]
    dec sp
    add [hl]
    scf
    add [hl]
    jr nc, jr_019_5cc4

    scf
    add [hl]
    dec sp
    add [hl]
    ld b, b
    add [hl]
    ld b, a
    add [hl]
    ld b, b
    add [hl]
    dec sp
    add [hl]
    or h
    or e
    dec b
    ld e, l
    db $d4, $36, $0c
    add [hl]
    cpl
    add [hl]
    dec [hl]
    add [hl]
    add hl, sp
    add [hl]
    ld a, $86
    ld b, l
    add [hl]
    ld a, $86
    add hl, sp
    add [hl]
    dec [hl]
    add [hl]

jr_019_5d62:
    cpl
    add [hl]
    dec [hl]
    add [hl]
    add hl, sp
    add [hl]
    ld a, $86
    ld b, l
    add [hl]
    ld a, $86
    add hl, sp
    add [hl]
    or h
    dec [hl]
    add [hl]
    jr z, jr_019_5cfb

    cpl
    add [hl]
    ld [hl-], a
    add [hl]
    ld a, $86
    ld b, h
    add [hl]
    ld a, $86
    ld [hl-], a
    add [hl]
    cpl
    add [hl]
    jr z, jr_019_5d0b

    cpl

jr_019_5d86:
    add [hl]
    ld [hl-], a
    add [hl]
    ld a, $86
    ld b, h
    add [hl]
    ld a, $86
    ld [hl-], a
    add [hl]
    cpl
    add [hl]
    dec l
    add [hl]
    inc [hl]

jr_019_5d96:
    add [hl]
    scf
    add [hl]
    inc a
    add [hl]
    ld b, e
    add [hl]
    inc a

jr_019_5d9e:
    add [hl]
    scf
    add [hl]
    inc [hl]
    add [hl]
    inc l
    add [hl]
    inc sp
    add [hl]
    scf
    add [hl]
    inc a
    add [hl]
    ld b, e
    add [hl]
    inc a
    add [hl]
    scf
    add [hl]
    inc sp
    add [hl]
    dec hl
    add [hl]
    ld [hl-], a
    add [hl]
    dec [hl]
    add [hl]
    inc a
    add [hl]
    ld a, $86
    ld b, c
    add [hl]
    ld c, b
    add [hl]
    ld c, d
    add [hl]
    ld c, l
    sbc h
    dec hl
    add [hl]
    or e
    db $e3
    ld e, h
    or e
    dec b
    ld e, l
    or e
    jr z, jr_019_5e2d

    or e
    dec b
    ld e, l
    or e
    ld c, [hl]
    ld e, l
    call nc, $0c35
    add [hl]
    jr z, jr_019_5d62

    cpl
    add [hl]
    ld [hl-], a
    add [hl]
    ld a, $86
    ld b, h
    add [hl]
    ld a, $86
    ld [hl-], a
    add [hl]
    cpl
    add [hl]
    dec l
    add [hl]
    inc [hl]
    add [hl]
    scf
    add [hl]
    inc a
    add [hl]
    ld b, e
    add [hl]
    inc a
    add [hl]
    scf
    add [hl]
    inc [hl]
    add [hl]
    ld h, $86
    dec l
    add [hl]
    jr nc, jr_019_5d86

    inc a
    add [hl]
    ld b, d
    add [hl]
    inc a
    add [hl]
    jr nc, @-$78

    dec l
    add [hl]
    dec h
    add [hl]
    inc l
    add [hl]
    jr nc, jr_019_5d96

    inc a
    add [hl]
    ld b, c
    add [hl]
    inc a
    add [hl]
    jr nc, jr_019_5d9e

    inc l
    add [hl]
    inc h
    add [hl]
    dec hl
    add [hl]
    cpl
    add [hl]
    inc [hl]
    add [hl]
    dec sp
    add [hl]
    ld b, b
    add [hl]
    ld b, a
    add [hl]
    ld c, h
    add [hl]
    ld d, e
    sbc [hl]
    add [hl]

jr_019_5e2d:
    ld d, h
    add [hl]
    ld c, a
    add [hl]
    ld d, h
    add [hl]
    ld e, e
    add [hl]
    ld d, h
    add [hl]
    ld c, a
    add [hl]
    ld d, h
    add [hl]
    ld e, e
    add [hl]
    ld d, h
    add [hl]
    ld c, a
    add [hl]
    ld d, h
    add [hl]
    ld e, e
    add [hl]
    ld d, h
    add [hl]
    ld c, a
    add [hl]
    ld d, h
    add [hl]
    call nc, $0c5b
    add [hl]
    ld d, d
    add [hl]
    ld c, l
    add [hl]
    ld d, d
    add [hl]
    ld e, c
    add [hl]
    ld d, d
    add [hl]
    ld c, l
    add [hl]
    ld d, d
    add [hl]
    ld e, c
    add [hl]
    ld d, d
    add [hl]
    ld c, l
    add [hl]
    ld d, d
    add [hl]
    ld e, c
    add [hl]
    ld d, d
    add [hl]
    ld c, l
    add [hl]
    ld d, d
    add [hl]
    or h
    ld e, c
    add [hl]
    ld d, h
    add [hl]
    ld c, a
    add [hl]
    ld d, h
    add [hl]
    ld e, e
    add [hl]
    ld d, h
    add [hl]
    ld c, a
    add [hl]
    ld d, h
    add [hl]
    ld e, e
    add [hl]
    ld d, h
    add [hl]
    ld c, a
    add [hl]
    ld d, h
    add [hl]
    ld e, e
    add [hl]
    ld d, h
    add [hl]
    ld c, a
    add [hl]
    ld d, h
    add [hl]
    or e

jr_019_5e8f:
    ld c, e
    ld e, [hl]
    db $d4, $59, $0c
    add [hl]
    ld d, c
    add [hl]
    ld c, h
    add [hl]
    ld d, c
    add [hl]
    ld e, b
    add [hl]
    ld d, c
    add [hl]
    ld c, h
    add [hl]
    ld d, c
    add [hl]
    ld e, b
    add [hl]
    ld d, c
    add [hl]
    ld c, h
    add [hl]
    ld d, c
    add [hl]
    ld e, b
    add [hl]
    ld d, c
    add [hl]
    ld c, h
    add [hl]
    ld d, c
    add [hl]
    ld e, b
    add [hl]
    ld d, b
    add [hl]
    ld c, e
    add [hl]
    ld d, b
    add [hl]
    ld d, a
    add [hl]
    ld d, b
    add [hl]
    ld c, e
    add [hl]
    ld d, b
    add [hl]
    ld d, a
    add [hl]
    ld d, b
    add [hl]
    ld c, e
    add [hl]
    ld d, b
    add [hl]
    ld d, a
    add [hl]
    ld d, b
    add [hl]
    ld c, e
    add [hl]
    ld d, b
    add [hl]
    ld d, a
    add [hl]
    ld c, a
    add [hl]
    ld c, d
    add [hl]
    ld c, a
    add [hl]
    ld d, h
    add [hl]
    ld c, a
    add [hl]
    ld c, d
    add [hl]
    ld c, a
    add [hl]
    ld d, h
    add [hl]
    ld c, a
    add [hl]
    ld c, d
    add [hl]
    ld c, a
    add [hl]
    ld d, h
    add [hl]
    ld c, a
    add [hl]
    ld c, d
    add [hl]
    ld c, a
    add [hl]
    ld d, h
    add [hl]
    ld d, e
    add [hl]
    ld d, b
    add [hl]
    ld c, l
    add [hl]
    ld c, d
    add [hl]
    ld b, a
    add [hl]
    ld b, h
    add [hl]
    ld b, c
    add [hl]
    ld a, $86
    dec sp
    add [hl]
    jr c, jr_019_5e8f

    dec [hl]
    add [hl]
    ld [hl-], a
    add [hl]
    cpl
    add [hl]
    inc l
    add [hl]
    add hl, hl
    add [hl]
    or d
    db $e3
    ld e, h
    db $d4, $26, $0c
    add l
    or c
    cp l
    nop
    sbc l
    or b
    or b
    or b
    or b
    cp [hl]
    ld h, h
    cp a
    ld a, b
    jp $c41e


    dec b
    push bc
    ld a, [bc]
    add $00
    db $d3
    ld d, e
    dec e
    sbc b
    ld c, a
    sbc b
    ld c, h
    sbc b
    ld b, a
    sbc b
    db $eb
    ld b, [hl]
    dec e
    sbc h
    sub $45
    add [hl]
    ld b, [hl]
    add [hl]
    jp hl


    ld c, [hl]
    sbc d
    sub $50
    add [hl]
    ld d, c
    add [hl]
    ld d, d
    add [hl]
    or h
    db $d3
    ld d, e
    dec e
    sbc b
    ld c, a
    sbc b
    ld c, h
    sbc b
    ld b, a
    sbc b
    or h
    db $eb
    ld b, [hl]
    dec e
    sbc h
    sub $45
    add [hl]
    ld b, [hl]
    add [hl]
    db $eb
    ld c, [hl]
    sbc h
    sub $4f

jr_019_5f65:
    add [hl]
    ld d, b
    add [hl]
    or h
    db $d3
    ld d, c
    dec e
    sbc b
    ld c, l
    sbc b
    ld c, d
    sbc b
    ld c, b
    sbc b
    or h
    db $eb
    ld b, a
    sbc h
    sub $46

jr_019_5f79:
    add [hl]
    ld b, a
    add [hl]
    xor $50
    and b
    db $d3
    ld c, a
    sbc b
    ld c, h
    sbc b
    ld c, b
    sbc b
    ld b, h
    sbc b
    xor $43
    and h
    db $d3
    ld c, a
    adc h
    ld d, c
    adc h
    ld d, d
    adc h
    or e

jr_019_5f93:
    ld c, h
    ld e, a
    or e
    jr c, jr_019_5ff7

    or e
    ld c, h
    ld e, a
    or e
    ld d, a
    ld e, a
    or e
    ld l, c
    ld e, a
    db $eb
    ld b, a
    dec e
    sbc h
    sub $46
    add [hl]
    ld b, a
    add [hl]
    db $d3
    ld c, a
    adc h
    db $d3
    adc h
    db $d3
    ld c, l
    adc h
    ld c, h
    adc h
    ld c, l
    sbc b
    ld c, b
    sbc b
    db $d3
    sbc b
    db $d3
    ld b, h
    sbc b
    ldh a, [rOBP0]
    or b
    cp [hl]
    ld h, b
    cp a
    ld h, a
    db $d3
    ld b, h
    sbc b
    ccf
    sbc b
    inc a
    sbc b
    jr c, jr_019_5f65

    db $eb
    ld a, [hl-]
    sbc h
    sub $39
    add [hl]
    ld a, [hl-]
    add [hl]
    jp hl


    dec [hl]
    and b
    db $d3
    ld b, h
    sbc b
    ccf
    sbc b
    inc a
    sbc b
    jr c, jr_019_5f79

    db $eb
    ld a, [hl-]
    sbc h
    sub $39
    add [hl]
    ld a, [hl-]
    add [hl]
    rst $28
    ld b, c
    and b
    db $d3
    ld b, b
    sbc b
    inc a
    sbc b
    add hl, sp
    sbc b
    inc [hl]
    sbc b
    ccf
    sbc b

jr_019_5ff7:
    inc a
    sbc b
    jr c, jr_019_5f93

    inc sp
    sbc b
    ei
    ld [hl-], a
    xor h
    db $d3
    scf
    adc h
    dec sp
    adc h
    ld b, c
    adc h
    ld b, a
    adc h
    ld c, l
    adc h
    sbc $59
    and b
    or d
    ld [hl+], a
    ld e, a
    or c
    inc bc
    ld [bc], a
    rrca
    ld e, d
    ld h, a
    ld e, h
    dec de
    ld e, a
    adc a
    ld e, d
    db $e3
    ld e, h
    ld [hl+], a
    ld e, a
    ld h, [hl]
    ld e, h
    ld d, $5f
    ld de, $bd60
    nop
    cp h
    ld sp, $52be
    cp a
    ld b, [hl]
    sbc l
    jp nc, $113b

    adc h
    dec a
    adc h
    ld b, a
    adc h
    ld c, c
    adc h
    ld d, e
    and b
    jp nc, $113b

    adc h
    dec a
    adc h
    ld b, a
    adc h
    ld c, c
    adc h
    ld d, e
    and b
    or h
    or e
    dec sp
    ld h, b
    or e
    dec sp
    ld h, b
    db $d2, $3a, $11

    adc h
    ld a, $8c
    ld b, [hl]
    adc h
    ld c, d
    adc h
    ld d, h
    and b
    or h
    or e
    ld c, [hl]
    ld h, b
    jp nc, $1139

    adc h
    ccf
    adc h
    ld b, l
    adc h
    ld c, e
    adc h
    ld d, l
    and b
    or h
    or e
    ld e, [hl]
    ld h, b
    or e
    ld c, [hl]
    ld h, b
    db $d2, $3a, $11

    adc h
    ld a, $8c
    ld b, [hl]
    adc h
    ld c, d
    adc h
    ld d, h
    adc h
    ld c, d
    adc h
    ld b, [hl]
    adc h
    ld a, $8c
    or h
    or e
    dec sp
    ld h, b
    or e
    dec sp
    ld h, b
    or e
    ld c, [hl]
    ld h, b
    or e
    ld c, [hl]
    ld h, b
    or e
    ld e, [hl]
    ld h, b
    or e
    ld e, [hl]
    ld h, b
    or e
    ld c, [hl]
    ld h, b
    or e
    ld [hl], c
    ld h, b
    jp nc, $1142

    adc h
    ld b, h
    adc h
    ld c, [hl]
    adc h
    ld d, b
    adc h
    ld e, d
    and b
    or h
    or e
    sbc h
    ld h, b
    db $d2, $41, $11

    adc h
    ld b, l
    adc h
    ld c, l
    adc h
    ld d, c
    adc h
    ld e, e
    and b
    or h
    or e
    xor h
    ld h, b
    jp nc, $1140

    adc h
    ld b, [hl]
    adc h
    ld c, h
    adc h
    ld d, d
    adc h
    ld e, h
    and b
    or h
    or e
    cp h
    ld h, b
    or e
    xor h
    ld h, b
    db $d2, $41, $11

    adc h
    ld b, l
    adc h
    ld c, l
    adc h
    ld d, c
    adc h
    ld e, e
    adc h
    ld d, c
    adc h
    ld c, l
    adc h
    ld b, l
    adc h
    or h
    or e
    sbc h
    ld h, b
    or e
    sbc h
    ld h, b
    or e
    xor h
    ld h, b
    or e
    xor h
    ld h, b
    or e
    cp h
    ld h, b
    or e
    cp h
    ld h, b
    or e
    xor h
    ld h, b
    or e
    rst $08
    ld h, b
    or d
    ld c, b
    ld h, b
    or c
    cp l
    nop
    cp [hl]
    db $10
    cp a
    ld hl, $869d
    reti


    dec sp
    add hl, bc
    adc h
    dec a
    adc h
    ld b, a
    adc h
    ld c, c
    adc h
    ld d, e
    sbc [hl]
    add [hl]
    reti


    dec sp
    add hl, bc
    adc h
    dec a
    adc h
    ld b, a
    adc h
    ld c, c
    adc h
    ld d, e
    sbc [hl]
    or h
    or e
    ld [de], a
    ld h, c
    or e
    ld [de], a
    ld h, c
    add [hl]
    reti


    ld a, [hl-]
    add hl, bc
    adc h
    ld a, $8c
    ld b, [hl]
    adc h
    ld c, d
    adc h
    ld d, h
    sbc [hl]
    or h
    or e
    ld h, $61
    add [hl]
    reti


    add hl, sp
    add hl, bc
    adc h
    ccf
    adc h
    ld b, l
    adc h
    ld c, e
    adc h
    ld d, l
    sbc [hl]
    or h
    or e
    scf
    ld h, c
    or e
    ld h, $61
    add [hl]
    reti


    ld a, [hl-]
    add hl, bc
    adc h
    ld a, $8c
    ld b, [hl]
    adc h
    ld c, d
    adc h
    ld d, h
    adc h
    ld c, d
    adc h
    ld b, [hl]
    adc h
    ld a, $86
    or h
    or e
    ld [de], a
    ld h, c
    or e
    ld [de], a
    ld h, c
    or e
    ld h, $61
    or e
    ld h, $61
    or e
    scf
    ld h, c
    or e
    scf
    ld h, c
    or e
    ld h, $61
    or e
    ld c, e
    ld h, c
    add [hl]
    reti


    ld b, d
    add hl, bc
    adc h
    ld b, h
    adc h
    ld c, [hl]
    adc h
    ld d, b
    adc h
    ld e, d
    sbc [hl]
    or h
    or e
    ld [hl], a
    ld h, c
    add [hl]
    reti


    ld b, c
    add hl, bc
    adc h
    ld b, l
    adc h
    ld c, l
    adc h
    ld d, c
    adc h
    ld e, e
    sbc [hl]
    or h
    or e
    adc b
    ld h, c
    add [hl]

jr_019_619a:
    reti


    ld b, b
    add hl, bc
    adc h
    ld b, [hl]
    adc h
    ld c, h
    adc h
    ld d, d

jr_019_61a3:
    adc h
    ld e, h
    sbc [hl]
    or h
    or e
    sbc c
    ld h, c
    or e
    adc b
    ld h, c
    add [hl]
    reti


    ld b, c
    add hl, bc
    adc h
    ld b, l
    adc h
    ld c, l
    adc h
    ld d, c
    adc h
    ld e, e
    adc h
    ld d, c
    adc h
    ld c, l
    adc h
    ld b, l
    add [hl]
    or h
    or e
    ld [hl], a
    ld h, c
    or e
    ld [hl], a
    ld h, c
    or e
    adc b
    ld h, c
    or e
    adc b
    ld h, c
    or e
    sbc c
    ld h, c
    or e
    sbc c
    ld h, c
    or e
    adc b
    ld h, c
    or e
    xor l
    ld h, c
    or d
    jr nz, jr_019_623d

    add h
    or c
    cp l
    nop
    cp [hl]
    ld h, e
    cp a
    ld l, h
    sbc l
    or b
    xor [hl]
    db $d2, $2d, $1d

    add e
    ld l, $83
    db $d4, $2f, $1d
    and b
    ld a, [hl+]
    and b
    or h
    db $d4, $27, $1d
    sbc h
    db $db
    inc h
    adc h
    db $d3
    cpl
    adc h
    db $d3
    adc h
    db $d3
    ld l, $8c
    cpl
    adc h
    or h
    db $d3
    jr nc, jr_019_6226

    adc h
    cpl
    adc h
    jr nc, jr_019_619a

    inc a
    and h
    or h
    db $d3
    inc a
    dec e
    adc h
    dec sp
    adc h
    inc a
    adc h
    ld c, b
    and d
    jp nc, $832f

    jr nc, jr_019_61a3

    or h
    call nc, $1d31
    and b
    dec l

jr_019_6226:
    and b
    or h
    call nc, $1d29
    sbc h
    db $db
    dec h
    adc h
    db $d3
    ld sp, $d38c
    adc h
    db $d3
    inc sp
    adc h
    ld sp, $b48c
    or e
    ld b, $62

jr_019_623d:
    db $d3
    inc a
    dec e
    adc h

jr_019_6241:
    dec sp
    adc h
    inc a
    adc h
    ld c, b
    and d
    jp nc, $832d

    ld l, $83
    or e
    db $ed
    ld h, c
    or e
    db $f4
    ld h, c
    or e
    ld b, $62
    or e
    ld de, $b362
    ld hl, $b362
    jr z, jr_019_62c0

    or e
    ld b, $62
    db $d3
    inc a
    dec e
    adc h
    dec sp
    adc h
    inc a
    adc h
    ld c, b
    and d
    jp nc, $8334

    dec [hl]
    add e
    call nc, $1d36
    and b
    ld sp, $b4a0
    call nc, $1d2e
    sbc h
    db $db
    dec hl
    adc h
    db $d3
    ld [hl], $8c
    db $d3
    adc h
    db $d3
    dec [hl]
    adc h
    ld [hl], $8c
    or h
    db $d3
    scf
    dec e
    adc h
    ld [hl], $8c
    scf
    adc h
    ld b, e
    and h
    or h
    db $d3
    ld b, e
    dec e
    adc h
    ld b, d
    adc h
    ld b, e

jr_019_629b:
    adc h
    ld c, a
    and d
    jp nc, $8336

    scf
    add e
    or h
    db $d4, $38, $1d
    and b
    inc [hl]
    and b
    or h
    call nc, $1d30
    sbc h
    db $db
    inc l
    adc h
    db $d3
    jr c, jr_019_6241

    db $d3
    adc h
    db $d3
    ld a, [hl-]
    adc h
    jr c, @-$72

    or h
    or e
    adc c
    ld h, d

jr_019_62c0:
    db $d3
    ld b, e
    dec e
    adc h
    ld b, d
    adc h
    ld b, e
    adc h
    ld c, a
    and d
    jp nc, $8334

    dec [hl]
    add e
    or e
    ld [hl], b
    ld h, d
    or e
    ld [hl], a
    ld h, d
    or e
    adc c
    ld h, d
    or e
    sub h
    ld h, d
    or e
    and h
    ld h, d
    or e

jr_019_62df:
    xor e
    ld h, d
    or e
    adc c
    ld h, d
    db $d3
    ld b, e
    dec e
    adc h
    ld b, d
    adc h
    ld b, e
    adc h
    ld c, a
    and d
    jp nc, $832d

    ld l, $83

jr_019_62f3:
    or d
    db $ed
    ld h, c
    or c
    cp l
    nop
    cp [hl]
    jr z, @-$3f

    jr c, jr_019_629b

    pop de

jr_019_62ff:
    daa
    ld de, $d18c
    xor b
    pop de
    add [hl]
    pop de
    add [hl]
    pop de
    daa
    ld de, $d186
    add [hl]
    pop de
    and h
    db $d3
    add h
    db $d3

jr_019_6313:
    add h
    db $d3
    add h
    db $d3
    add h
    db $d3
    add h
    db $d3
    add h
    or h
    cp [hl]
    jr z, jr_019_62df

    jr c, jr_019_62f3

    daa
    ld de, $d18c
    xor b
    pop de
    add [hl]
    pop de
    add [hl]
    or h
    or e
    ld [$d163], sp
    daa
    ld de, $d18c
    xor b
    pop de
    add [hl]
    pop de
    add [hl]
    or h
    or e
    ld [$be63], sp
    jr z, jr_019_62ff

    jr c, jr_019_6313

    daa
    ld de, $d18c
    xor b
    pop de
    add [hl]
    pop de
    add [hl]
    or h
    or e
    ld [$b363], sp
    cpl
    ld h, e
    or e
    ld [$b363], sp
    dec e
    ld h, e
    or e
    ld [$b363], sp
    cpl
    ld h, e
    or e
    ld [$b363], sp
    dec a
    ld h, e
    or e
    ld [$b363], sp
    cpl
    ld h, e
    or e
    ld [$b363], sp
    dec e
    ld h, e
    or e
    ld [$b363], sp
    cpl
    ld h, e
    or e
    ld [$b363], sp
    dec a
    ld h, e
    or e
    ld [$b363], sp
    cpl
    ld h, e
    or e
    ld [$b363], sp
    dec e
    ld h, e
    or e
    ld [$b363], sp
    cpl
    ld h, e
    or e
    ld [$b363], sp
    dec a
    ld h, e
    or e
    ld [$b363], sp
    cpl
    ld h, e
    or e
    ld [$b263], sp
    dec e
    ld h, e
    or c
    inc b
    ld [bc], a
    ld h, $60
    cp $60
    sbc $61
    rst $30
    ld h, d
    ld c, b
    ld h, b
    jr nz, jr_019_6410

    db $ed
    ld h, c
    dec e
    ld h, e
    db $fd
    ld h, b
    call c, $f661
    ld h, d
    and b
    ld h, e
    cp l
    nop
    cp h
    ld c, l
    cp [hl]
    rla
    cp [hl]
    rla
    jp $c414


    dec b
    push bc
    ld a, [bc]
    add $00
    cp a
    ld d, b
    sbc l
    or b
    or b
    adc h
    db $d3
    ld c, b
    inc de
    adc h
    ld b, e
    adc h
    ld b, b
    adc h
    rst $20
    inc a
    sbc b
    dec a
    sbc b
    or h
    db $d3
    ld a, $13
    adc h
    db $d3
    adc h
    db $d3
    dec a
    adc h
    ld a, $8c
    ld b, l
    and b
    or h
    adc h
    db $d3
    ld b, a
    inc de
    adc h
    ld c, b
    adc h
    ld b, a
    adc h
    ld b, l
    adc h
    ld b, a
    adc h
    ld b, l
    adc h
    ld b, h
    adc h
    or h
    rst $38
    ld b, e
    or b
    adc h
    db $d3
    ld b, c
    inc de
    adc h
    ld b, l
    adc h
    ld c, b
    adc h
    ld c, h
    adc h
    ld c, d
    adc h
    ld c, b

jr_019_6410:
    adc h
    ld b, a
    adc h
    or h
    adc h
    db $d3
    ld b, e
    inc de
    adc h
    ld b, a
    adc h
    ld c, d
    adc h
    ld c, l
    adc h
    ld c, h
    adc h
    ld c, e
    adc h
    ld c, h
    adc h
    or h
    adc h
    ld b, l
    adc h
    ld c, b
    adc h
    ld c, h
    adc h
    ld c, a
    adc h
    ld c, l
    adc h
    ld c, e
    adc h
    ld c, l
    adc h
    ld c, a
    adc h
    ld b, e
    adc h
    ccf
    adc h
    dec sp
    adc h
    scf
    sbc d
    ld c, l
    add [hl]
    ld c, h
    add [hl]
    ld c, d
    add [hl]
    or e
    ret nc

    ld h, e
    or e
    rst $18
    ld h, e
    or e
    db $ed
    ld h, e
    rst $38
    ld b, e
    inc de
    or b
    or e
    ld [bc], a
    ld h, h
    or e
    inc d
    ld h, h
    adc h
    db $d3
    ld b, l
    inc de
    adc h
    ld c, b
    adc h
    ld c, h
    adc h
    ld c, a
    adc h

jr_019_6463:
    ld c, l
    adc h
    ld c, h
    adc h
    ld c, d
    adc h
    rst $30
    ld c, b
    or b
    db $eb
    ld d, h
    sbc h
    db $d3
    ld d, b
    sbc b
    ld c, e
    adc h
    ld c, b

jr_019_6475:
    adc h
    ld c, c
    adc h
    ld c, d
    adc h
    ld c, e
    adc h
    ld c, l
    adc h
    ld d, d
    and h
    db $eb
    ld d, [hl]
    sbc h
    db $d3
    ld d, d
    sbc b
    ld c, l
    adc h
    ld c, d
    adc h
    ld c, l
    adc h
    ld c, h
    adc h
    ld c, l
    adc h
    ld c, [hl]
    adc h
    ld c, a
    and h
    adc h
    ld d, b
    adc h
    ld c, e
    adc h
    ld d, b
    sbc b
    db $d3
    adc h
    db $d3

jr_019_649e:
    ld d, d
    adc h
    ld d, h
    adc h
    adc h
    ld d, d
    adc h
    ld c, l
    adc h
    ld d, d
    sbc b
    db $d3
    adc h
    db $d3
    ld d, h
    adc h
    ld d, [hl]
    adc h
    ld d, h
    adc h
    ld d, [hl]
    adc h
    ld d, a

jr_019_64b5:
    adc h
    ld e, c
    adc h
    ld e, e
    adc h
    ld e, c
    adc h
    ld d, a
    adc h
    ld e, c
    adc h
    ld e, e
    and h
    ld c, l
    adc h
    ld c, h
    adc h
    ld c, d
    adc h
    or d
    ret nc

    ld h, e
    or c
    cp l
    nop
    cp [hl]
    ld e, e
    cp a
    ld l, h
    sbc l
    db $d3
    inc h
    jr jr_019_6463

    inc [hl]
    adc h
    dec hl
    adc h
    inc [hl]
    adc h
    inc h
    adc h
    inc [hl]
    adc h
    dec hl
    adc h
    inc [hl]
    adc h
    db $d3
    inc h
    jr jr_019_6475

    inc [hl]
    adc h
    dec hl
    adc h
    inc [hl]
    adc h
    inc h
    adc h
    inc [hl]
    adc h
    dec hl
    adc h
    inc [hl]
    adc h
    or h
    or e
    push hl
    ld h, h
    db $d3
    ld h, $18
    adc h
    dec [hl]
    adc h
    dec l
    adc h
    dec [hl]
    adc h
    ld h, $8c
    dec [hl]
    adc h
    dec l
    adc h
    dec [hl]
    adc h
    or h
    db $d3
    dec hl
    jr jr_019_649e

    dec [hl]
    adc h
    ld h, $8c
    dec [hl]
    adc h
    dec hl
    adc h
    dec [hl]
    adc h
    dec hl
    adc h
    dec [hl]
    adc h
    or h
    db $d3
    jr z, jr_019_653c

    adc h

jr_019_6525:
    scf
    adc h
    jr z, jr_019_64b5

    scf
    adc h
    dec l
    adc h
    scf
    adc h
    dec l
    adc h
    scf
    adc h
    or h
    db $d3
    ld h, $18
    adc h
    dec [hl]
    adc h
    ld h, $8c

jr_019_653c:
    dec [hl]
    adc h
    dec hl
    adc h
    dec [hl]
    adc h

jr_019_6542:
    dec hl
    adc h
    dec [hl]
    adc h
    or h
    or e
    ld hl, $d365
    ld h, $18
    adc h
    dec [hl]
    adc h
    dec l
    adc h
    dec [hl]

jr_019_6553:
    adc h
    dec h
    adc h
    dec [hl]
    adc h
    inc l
    adc h
    dec [hl]

jr_019_655b:
    adc h
    dec hl
    adc h
    ccf
    adc h
    dec sp
    adc h
    scf
    adc h
    inc sp
    adc h
    dec hl
    adc h
    dec l
    adc h
    cpl
    adc h
    or e
    push hl
    ld h, h
    or e
    ei
    ld h, h
    or e
    ld c, $65
    or e
    ld hl, $b365
    inc [hl]
    ld h, l
    or e
    ld hl, $b365
    inc [hl]
    ld h, l
    db $d3
    jr nc, jr_019_659c

    adc h
    inc [hl]
    adc h
    dec hl
    adc h
    inc [hl]
    adc h
    jr nc, jr_019_6525

    db $d3
    adc h
    db $d3
    ld l, $8c
    inc l
    adc h
    ccf
    adc h
    daa
    adc h
    ccf
    adc h
    inc l
    adc h

jr_019_659c:
    ccf
    adc h
    daa
    adc h
    ccf
    adc h
    inc l
    adc h
    ld b, c
    adc h
    daa
    adc h
    ld b, c
    adc h
    inc l
    adc h
    ld b, c
    adc h
    inc l
    adc h
    ld b, c
    adc h
    db $d3
    dec hl
    jr jr_019_6542

    ld b, c
    adc h
    ld h, $8c
    ld b, c
    adc h
    dec hl
    adc h
    ld b, c
    adc h
    dec hl
    adc h
    ld b, c
    adc h
    or h
    jr nc, jr_019_6553

    ld b, b
    adc h
    dec hl
    adc h
    ld b, b
    adc h
    jr nc, jr_019_655b

    ld b, b
    adc h
    dec hl
    adc h
    ld b, b
    adc h
    add hl, hl
    adc h
    ccf
    adc h
    inc h
    adc h
    ccf
    adc h
    add hl, hl
    adc h
    ccf
    adc h
    add hl, hl
    adc h
    ccf
    adc h
    or e
    or d
    ld h, l
    db $d3
    inc l
    jr @-$72

    ld b, e
    adc h
    inc l
    adc h
    ld b, e
    adc h

jr_019_65f2:
    dec l
    adc h
    ld b, e
    adc h
    dec l
    adc h
    ld b, e
    adc h
    ld l, $8c

jr_019_65fc:
    ld b, e
    adc h
    ld l, $8c
    ld b, e
    adc h
    cpl
    adc h

jr_019_6604:
    ld b, e
    adc h
    push de
    dec hl

jr_019_6608:
    add [hl]
    inc l
    add [hl]
    dec l
    add [hl]
    cpl
    add [hl]
    or d
    ld hl, sp+$64
    or c
    ld [bc], a
    ld [bc], a
    cp e
    ld h, e
    call z, $d064
    ld h, e
    ld hl, sp+$64
    bit 4, h
    ld [de], a
    ld h, [hl]
    cp l
    nop
    cp h
    ld c, e
    cp [hl]
    rla
    cp a
    ld d, b
    sbc l
    or b
    xor [hl]
    push de
    ld a, [hl-]
    inc d
    add e
    dec sp
    add e
    inc a
    sbc b
    scf
    sbc b
    ld [hl], $98
    scf
    sbc b
    inc a
    sbc b
    scf
    adc h
    push de
    adc h
    push de
    ld [hl], $98
    scf
    sbc b
    push de
    inc a
    inc d
    and b
    scf
    and b
    or h
    push de
    inc [hl]
    inc d
    and b
    jr nc, jr_019_65f2

    or h
    push de
    ld [hl-], a
    inc d
    sbc b
    ld sp, $3298
    sbc b
    add hl, sp
    sbc b
    or h
    sbc b
    push de
    sbc b
    push de
    jr c, jr_019_65fc

    add hl, sp
    sbc b
    dec sp
    and b
    dec [hl]
    and b
    ld [hl-], a
    and b
    push de
    sbc b
    push de
    dec [hl]
    sbc b

jr_019_6671:
    inc [hl]
    sbc b
    dec [hl]
    sbc b
    ld [hl], $98
    scf
    sbc b
    rst $10
    jr c, jr_019_6604

    ld a, [hl-]
    adc b
    jr c, jr_019_6608

    push de
    scf
    sbc b
    push de
    sbc b
    push de
    ld b, e
    sbc b
    or e
    ld b, l
    ld h, [hl]
    or e
    ld c, h
    ld h, [hl]
    or e
    ld d, e
    ld h, [hl]
    sbc b
    push de
    add hl, sp
    inc d
    sbc b
    dec sp
    sbc b
    add hl, sp
    sbc b
    scf
    sbc b
    db $db
    dec sp
    adc h
    ld a, $8c
    push de
    ld b, l
    sbc b

jr_019_66a4:
    ld b, e
    sbc b
    sbc b

jr_019_66a7:
    scf
    sbc b
    add hl, sp
    sbc b
    dec sp
    sbc b
    inc a
    or b
    sbc b
    push de
    sbc b
    push de
    ld c, b
    and b
    or b
    or b
    db $eb

jr_019_66b8:
    add hl, hl
    inc d
    sbc h
    db $db
    dec l
    adc h
    call nc, $982e
    cpl
    sbc b
    or h
    rst $28
    jr nc, jr_019_66db

    and b
    call nc, $982d
    add hl, hl
    sbc b
    or h
    rst $28
    jr z, jr_019_6671

    call nc, $a029
    sbc b
    push de
    inc h
    sbc b
    add hl, hl
    sbc b
    dec l

jr_019_66db:
    sbc b
    rst $20
    ld [hl-], a
    inc d
    sbc b
    call nc, $9830
    ld c, b
    sbc b
    call nc, $b498
    rst $20
    ld c, d
    inc d
    sbc b
    call nc, $9848
    ld d, h
    sbc b
    call nc, $b498
    or e
    call c, $b366
    add sp, $66
    or e
    or a
    ld h, [hl]
    or e
    call nz, $eb66
    ld a, [hl+]
    inc d
    sbc h
    db $db
    ld l, $8c
    call nc, $982f
    jr nc, jr_019_66a4

    rst $28
    ld sp, $d4a0
    ld l, $98
    ld a, [hl+]
    sbc b
    dec hl
    sbc b
    db $db
    cpl
    adc h
    jr nc, jr_019_66a7

    call nc, $9831
    ld [hl-], a
    sbc b
    rst $10
    inc sp
    adc b
    dec [hl]
    adc b
    inc sp
    adc b
    db $db
    ld [hl-], a
    adc h
    jr nc, jr_019_66b8

    ld [hl-], a
    adc h
    cpl
    adc h
    dec hl
    sbc b
    rst $10
    ld c, b
    adc b
    ld c, d
    adc b
    ld c, b
    adc b
    db $db
    ld b, a
    adc h
    ld b, l
    adc h
    ld b, a
    adc h
    ld c, d
    adc h
    ld c, a
    sbc b
    push de
    ld d, e
    adc h
    ld d, [hl]
    adc h
    ld e, e
    xor b
    or d
    ld a, [hl+]
    ld h, [hl]
    or c
    cp l
    nop
    cp [hl]
    dec c
    cp a
    ld c, e
    sbc l
    sbc b
    push de
    inc [hl]
    inc de
    sbc b
    inc sp
    sbc b
    inc [hl]
    sbc b
    sbc b
    push de
    inc [hl]
    inc de
    sbc b
    inc sp
    sbc b
    inc [hl]
    sbc b
    or h
    or e
    ld e, a
    ld h, a
    sbc b
    push de
    inc [hl]
    inc de
    adc h
    push de
    adc h
    push de
    inc sp
    sbc b
    inc [hl]
    sbc b
    sbc b
    push de
    sbc b
    push de
    inc sp
    sbc b
    inc [hl]
    sbc b
    or e
    ld e, a
    ld h, a
    sbc b
    push de
    dec [hl]
    inc de
    sbc b
    inc [hl]
    sbc b
    dec [hl]
    sbc b
    or h
    or e
    add e
    ld h, a
    sbc b
    push de
    dec sp
    inc de
    sbc b
    ld a, [hl-]
    sbc b
    dec sp
    sbc b
    or h
    or e
    sub b
    ld h, a
    push de
    inc a
    inc de
    sbc b
    push de
    sbc b
    push de
    sbc b
    push de
    sbc b
    rst $10
    ld b, h
    adc b
    ld b, [hl]
    adc b
    ld b, h
    adc b
    push de
    ld b, e
    sbc b
    push de
    sbc b
    push de
    ld c, a
    sbc b
    or e
    ld e, a
    ld h, a
    or e
    ld e, a
    ld h, a
    or e
    add e
    ld h, a
    or e
    add e
    ld h, a
    or e
    sub b
    ld h, a
    sbc b
    push de
    ld a, $13
    sbc b
    dec a
    sbc b
    ld a, $98
    ld b, b
    adc h
    inc [hl]
    adc h
    dec [hl]
    adc h
    scf
    adc h
    add hl, sp
    adc h
    dec sp
    adc h
    inc a
    adc h
    ld a, $8c
    ld b, b

jr_019_67df:
    sbc b
    ld c, b
    sbc b
    ld d, h
    and b
    sbc b
    db $d3
    inc a
    db $10
    and b

jr_019_67e9:
    db $d3
    sbc b
    or h
    or e
    db $e4
    ld h, a
    or e
    db $e4
    ld h, a
    or e
    db $e4
    ld h, a
    or e
    db $e4
    ld h, a
    or e
    db $e4
    ld h, a
    or e
    db $e4
    ld h, a
    or e
    db $e4
    ld h, a
    or e
    db $e4
    ld h, a
    sbc b
    db $d3
    inc a
    db $10
    xor b
    or e
    db $e4
    ld h, a
    or e
    db $e4

jr_019_680e:
    ld h, a
    sbc b
    db $d3
    dec a
    db $10
    and b
    db $d3
    sbc b
    or h
    or e
    rrca
    ld l, b
    sbc b
    push de
    ld a, $13
    and b
    push de
    sbc b
    sbc b
    push de
    ccf
    and b

jr_019_6825:
    ld a, $98
    ccf
    sbc b
    push de
    sbc b
    push de
    ld a, $98
    push de
    sbc b
    push de
    ld d, d
    inc de
    adc h
    ld d, l
    adc h
    ld e, d
    xor b
    or d
    ld d, [hl]
    ld h, a
    or c
    cp l
    nop
    cp [hl]
    ld e, e
    cp a
    ld [hl], c
    sbc l

jr_019_6843:
    push de
    inc h
    jr jr_019_67df

    dec hl
    sbc b
    ld a, [hl+]
    sbc b
    dec hl
    sbc b
    push de
    inc h
    jr jr_019_67e9

    dec hl
    sbc b
    ld a, [hl+]
    sbc b
    dec hl
    sbc b
    or h
    or e
    ld c, l
    ld l, b
    or e
    ld c, l
    ld l, b
    or e
    ld c, l
    ld l, b
    or e
    ld c, l
    ld l, b
    push de

jr_019_6865:
    ld h, $18
    sbc b

jr_019_6868:
    dec l
    sbc b
    inc l
    sbc b
    dec l
    sbc b
    or h
    or e
    ld h, h
    ld l, b
    push de
    dec hl
    jr jr_019_680e

    ld [hl-], a
    sbc b
    ld sp, $3298
    sbc b
    or h
    or e
    ld [hl], d
    ld l, b
    push de
    jr nc, jr_019_689b

    sbc b
    ld [hl-], a
    sbc b
    inc sp
    sbc b
    inc [hl]

jr_019_6889:
    sbc b
    dec [hl]
    adc b
    ld sp, $2c88
    adc b
    dec hl
    sbc b
    push de
    adc h
    push de
    add hl, hl
    adc h
    jr z, jr_019_6825

    ld h, $8c

jr_019_689b:
    or e
    ld c, l
    ld l, b
    or e
    ld c, l
    ld l, b
    or e
    ld h, h
    ld l, b
    or e
    ld h, h
    ld l, b
    or e
    ld [hl], d
    ld l, b
    or e
    ld [hl], d
    ld l, b
    push de
    jr nc, jr_019_68c8

    adc h
    inc h
    adc h
    ld h, $8c
    jr z, jr_019_6843

    add hl, hl
    adc h
    dec hl
    adc h
    dec l
    adc h

jr_019_68bd:
    cpl
    adc h
    jr nc, jr_019_6865

    push de
    adc h
    push de
    ld [hl-], a

jr_019_68c5:
    adc h
    inc [hl]
    adc h

jr_019_68c8:
    db $d3
    dec [hl]
    ld d, $98
    dec sp
    sbc b
    jr nc, jr_019_6868

jr_019_68d0:
    dec sp
    sbc b
    or h
    or e
    ret z

    ld l, b
    or e
    ret z

    ld l, b
    or e
    ret z

    ld l, b
    db $d3
    scf
    ld d, $98
    dec sp
    sbc b
    dec [hl]
    sbc b
    dec sp
    sbc b
    or e
    ret z

    ld l, b
    db $d3
    scf
    ld d, $98
    dec sp
    sbc b
    jr nc, jr_019_6889

    dec sp
    sbc b
    or h
    or e
    jp hl


    ld l, b
    or e
    ret z

    ld l, b
    db $d3
    dec [hl]
    ld d, $98
    dec sp
    sbc b

jr_019_6900:
    jr nc, @-$72

    db $d3
    adc h
    db $d3
    ld [hl-], a
    adc h
    inc [hl]
    adc h
    or e
    ret z

    ld l, b
    or e
    ret z

    ld l, b
    db $d3
    ld [hl], $16
    sbc b
    inc a
    sbc b
    ld sp, $3c98
    sbc b
    ld [hl], $98

jr_019_691b:
    inc a
    sbc b
    ld [hl], $98
    inc a
    sbc b

jr_019_6921:
    push de
    scf
    jr jr_019_68bd

    dec a
    sbc b
    ld [hl-], a
    sbc b
    dec a
    sbc b
    jr c, jr_019_68c5

    ld a, $98
    scf
    sbc b
    dec a
    sbc b
    ld [hl], $98
    push de
    sbc b
    push de
    scf
    sbc b
    push de
    sbc b
    and b
    push de

jr_019_693e:
    dec hl
    adc h
    add hl, hl
    adc h
    jr z, jr_019_68d0

    ld h, $8c
    or d
    ld b, e
    ld l, b
    or c
    inc bc
    ld [bc], a
    ld hl, $4f66
    ld h, a
    inc a
    ld l, b
    ld a, [hl+]
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld b, e
    ld l, b
    ld c, [hl]
    ld h, a
    dec sp
    ld l, b
    ld c, c
    ld l, c
    cp l
    nop
    cp h
    jr z, jr_019_6921

    rla
    cp a
    ld d, b
    push bc
    nop
    sbc l
    jp nc, $143a

    add e
    dec sp
    add e
    db $d2, $3c, $14

    sbc b
    scf
    sbc b
    inc [hl]
    sub d
    push de
    jr nc, jr_019_6900

    ld sp, $3886
    add [hl]
    scf
    add [hl]
    dec hl
    add [hl]
    jp nc, $8630

    jp nc, $d2ac

    ld a, [hl-]
    add e
    dec sp
    add e
    inc a
    sbc b
    scf
    sbc b
    inc [hl]
    sub d
    push de
    jr nc, jr_019_691b

    ld sp, $3886
    add [hl]
    scf
    add [hl]
    dec a
    add [hl]
    jp nc, $863c

    jp nc, $d2ac

    ccf
    add e
    ld b, b
    add e
    ld b, c
    sbc b
    inc a
    sbc b
    add hl, sp
    sub d
    push de
    dec [hl]
    add [hl]
    ld [hl], $86
    dec a
    add [hl]
    inc a
    add [hl]
    jr nc, jr_019_693e

    jp nc, $8635

    jp nc, $d2ac

    ccf
    add e
    ld b, b
    add e
    ld b, c
    sbc b
    inc a
    sbc b
    add hl, sp
    sub d
    push de
    dec [hl]
    add [hl]
    ld [hl], $86
    dec a
    add [hl]
    inc a
    add [hl]
    ld b, d
    add [hl]
    jp nc, $8641

    jp nc, $c3a2

    ld e, $c4
    dec b
    push bc
    ld a, [bc]
    add $00
    pop de
    ld c, l
    sub d
    db $db
    sub d
    pop de
    ld c, h
    sub d
    ld b, b
    sub d
    ld c, h
    sbc b
    pop de
    sub d

jr_019_69ee:
    db $db
    ld c, e
    sub d
    pop de
    ld c, d
    sub d
    ld a, $92
    ld c, d
    sbc b
    pop de
    sub d
    db $db
    ld c, e
    sub d
    pop de
    ld c, h
    add [hl]
    pop de
    adc h
    pop de
    ld b, b
    add [hl]
    pop de
    adc h
    pop de
    ld c, h
    adc h
    ld c, l
    add [hl]
    pop de
    adc h
    pop de
    ld b, c
    add [hl]
    pop de
    adc h
    pop de
    ld c, l
    adc h
    ld c, [hl]
    sub d
    pop de
    sub d
    adc $a4
    xor h
    rst $08
    add [hl]
    push bc
    nop
    db $d3
    ld a, [hl-]
    add e
    dec sp
    add e
    or d
    ld l, a

jr_019_6a28:
    ld l, c
    add c
    or c
    cp l
    nop
    cp [hl]
    dec c
    cp a
    ld c, e
    jp $c41e


    dec b
    push bc
    ld a, [bc]
    add $00
    pop bc
    ld b, b
    sbc l
    add [hl]
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    and h
    pop de
    ld b, a
    inc de
    sub d
    db $db
    sub d
    pop de
    ld b, [hl]
    sub d
    ld a, [hl-]
    sub d
    ld b, [hl]
    sbc b
    pop de
    sub d
    db $db
    ld b, l
    sub d
    pop de
    ld b, h
    sub d

jr_019_6a5a:
    jr c, jr_019_69ee

    ld b, h
    sbc b
    pop de
    sub d
    db $db
    ld b, l
    sub d
    pop de
    ld b, [hl]
    add [hl]
    pop de
    adc h
    pop de
    ld a, [hl-]
    add [hl]
    pop de
    adc h
    pop de
    ld b, [hl]
    adc h
    ld b, a
    add [hl]
    pop de
    adc h
    pop de
    dec sp
    add [hl]
    pop de
    adc h
    pop de
    ld b, a
    adc h
    ld c, b
    sub d
    pop de
    sub d
    adc $a4
    xor h
    rst $08
    adc h
    or d
    dec a
    ld l, d
    or c
    cp l
    nop
    cp [hl]
    ld e, l
    cp a
    ld b, d
    sbc l
    add [hl]
    push bc
    nop
    db $d2, $3a, $11

    add e
    dec sp
    add e
    inc a
    sbc b
    scf
    sbc b
    inc [hl]
    sub d
    push de
    jr nc, jr_019_6a28

    ld sp, $3886
    add [hl]
    scf
    add [hl]
    or h
    dec hl
    add [hl]
    jp nc, $8630

    jp nc, $b3ac

    sub c
    ld l, d
    push de
    dec a
    ld de, $d286
    inc a
    add [hl]
    jp nc, $d2ac

    ccf
    ld de, $4083
    add e
    ld b, c
    sbc b
    inc a
    sbc b
    add hl, sp
    sub d
    push de
    dec [hl]
    add [hl]
    ld [hl], $86
    dec a
    add [hl]
    inc a
    add [hl]
    or h
    jr nc, jr_019_6a5a

    jp nc, $8635

    jp nc, $b3ac

    cp h
    ld l, d
    push de
    ld b, d
    ld de, $d286
    ld b, c
    add [hl]
    jp nc, $c3a2

    ld e, $c4
    dec b
    push bc
    ld a, [bc]
    add $00
    pop de
    ld c, l
    sub d
    db $db
    adc h
    add [hl]
    pop de
    ld c, h
    sub d
    ld b, b
    sub d

jr_019_6af8:
    ld c, h
    sbc b
    pop de
    sub d
    db $db
    ld c, e
    adc h
    add [hl]
    pop de
    ld c, d
    sub d
    ld a, $92
    ld c, d
    sbc b
    pop de
    sub d
    db $db
    ld c, e
    adc h
    add [hl]
    pop de
    ld c, h
    add [hl]
    pop de
    adc h
    pop de
    ld b, b
    add [hl]
    pop de
    adc h
    pop de
    ld c, h
    adc h
    ld c, l
    add [hl]
    pop de
    adc h
    pop de
    ld b, c
    add [hl]
    pop de
    adc h
    pop de
    ld c, l
    add [hl]
    add [hl]
    ld c, [hl]
    sub d
    pop de
    sub d
    adc $a2
    xor [hl]
    rst $08
    add [hl]
    or d
    sub c
    ld l, d
    or c
    cp l
    nop
    cp [hl]
    jr z, jr_019_6af8

    ld c, e
    sbc l
    add [hl]
    pop de
    ld a, [hl+]
    ld c, $86
    pop de
    add [hl]
    pop de
    add [hl]
    pop de
    add [hl]
    pop de
    daa
    add [hl]
    ld a, [hl+]
    add [hl]
    pop de
    add [hl]
    pop de
    add [hl]
    pop de
    add [hl]
    pop de
    add [hl]
    pop de
    add [hl]
    pop de
    add [hl]
    pop de
    daa
    add [hl]
    ld a, [hl+]
    add [hl]
    pop de
    add [hl]
    pop de
    add [hl]
    or h
    or e
    inc a
    ld l, e
    or e
    inc a
    ld l, e
    or e
    inc a
    ld l, e
    or e
    inc a
    ld l, e
    or e
    inc a
    ld l, e
    or e
    inc a
    ld l, e
    or e
    inc a
    ld l, e
    or e
    inc a
    ld l, e
    or e
    inc a
    ld l, e
    or e
    inc a
    ld l, e
    pop de
    ld a, [hl+]
    ld c, $86
    pop de
    add [hl]
    pop de
    daa
    add [hl]
    ld a, [hl+]
    add [hl]
    pop de
    add [hl]
    pop de
    daa
    add [hl]
    ld a, [hl+]
    add [hl]
    daa
    add [hl]
    ld a, [hl+]
    add [hl]
    pop de
    add [hl]
    pop de
    daa
    add [hl]
    ld a, [hl+]
    add [hl]
    pop de
    add [hl]
    pop de
    daa
    add [hl]
    ld a, [hl+]
    add [hl]
    daa
    add [hl]
    ld a, [hl+]
    add [hl]
    pop de
    add [hl]
    pop de

jr_019_6baa:
    daa
    add [hl]
    ld a, [hl+]
    add [hl]
    pop de
    add [hl]
    pop de
    daa
    add [hl]
    ld a, [hl+]
    add [hl]
    daa
    add [hl]
    ld a, [hl+]
    add [hl]
    pop de
    add [hl]
    pop de
    add [hl]
    pop de
    add [hl]
    pop de
    daa
    add [hl]
    pop de
    add [hl]
    pop de
    add [hl]
    pop de
    add [hl]
    or d
    inc a
    ld l, e
    or c
    inc b
    ld [bc], a
    ld e, [hl]
    ld l, c
    dec hl
    ld l, d
    adc c
    ld l, d
    inc [hl]
    ld l, e
    ld l, a
    ld l, c
    dec a
    ld l, d
    sub c
    ld l, d
    inc a
    ld l, e
    add hl, hl
    ld l, d
    adc b
    ld l, d
    inc sp
    ld l, e
    bit 5, e
    cp l
    nop
    cp h
    ld [hl-], a
    cp [hl]
    ld a, [bc]
    cp a
    ld d, b
    jp $c414


    dec b
    push bc
    ld a, [bc]
    add $00
    sbc l
    or b
    or b
    or b
    and h
    cp [hl]
    inc d
    call nc, $1454
    adc h
    call nc, $d398
    ld c, b
    inc d
    sbc b
    ld b, e
    sbc b
    rst $20
    ld b, b
    sbc h
    db $d3
    dec a
    add h
    ld b, b
    add h
    dec a
    add h
    inc a
    adc h
    dec sp
    adc h
    inc a
    sbc h
    scf
    adc h
    reti


    jr c, jr_019_6baa

    db $d3
    scf
    add [hl]
    ld [hl], $86
    scf
    adc h
    inc a
    sbc h
    ld b, e
    adc h
    ld c, b
    sbc h
    ld c, a
    adc h
    ld d, h
    and b
    ld c, b
    adc h
    ld c, d
    adc h
    ld c, h
    adc h
    ld c, l
    sbc b
    ld c, c
    sbc b
    rst $20
    ld c, b
    sbc h
    db $d3
    ld b, a
    add [hl]
    ld b, h
    add [hl]
    ld b, l
    adc h
    ld b, c
    and b
    inc a
    adc h
    reti


    dec a
    adc h
    db $d3
    inc a
    add [hl]
    dec sp
    add [hl]
    inc a
    adc h
    ld b, c
    sbc h
    ld c, b
    adc h
    ld c, l
    sbc h
    ld d, h
    adc h
    ld e, c
    xor h
    ld c, a
    adc h
    ld c, d
    adc h
    ld b, a
    adc h
    ld b, e
    adc h
    ld b, h
    add h
    ld b, [hl]
    add h
    ld b, h
    add h
    ld b, e
    adc h
    db $d3
    adc h
    db $d3
    ld c, a
    adc h
    ld e, e
    adc h
    ld d, [hl]
    adc h
    ld d, e
    adc h
    ld c, a
    adc h
    ld d, b
    add h
    ld d, d
    add h
    ld d, b
    add h
    ld c, a
    adc h
    db $d3
    adc h
    db $d3
    ld e, e
    adc h
    sbc b
    db $d3
    adc h
    db $d3
    ld h, a

jr_019_6c8a:
    sbc h
    ld e, e
    adc h
    ld h, a
    adc h
    adc h
    db $d3
    ld e, e
    adc h
    db $d3
    ld d, [hl]
    adc h
    ld d, e
    adc h
    ld c, a
    adc h

jr_019_6c9a:
    ld d, b
    add h
    ld d, e
    add h
    ld d, b
    add h
    ld c, a
    adc h

jr_019_6ca2:
    db $d3
    adc h
    db $d3
    ld d, h
    sbc b
    ld c, a
    sbc b
    rst $20
    ld c, h

jr_019_6cab:
    sbc h
    db $d3
    ld c, c
    add h

jr_019_6caf:
    ld c, h
    add h
    ld c, c

jr_019_6cb2:
    add h
    ld c, b
    adc h
    ld b, a
    adc h

jr_019_6cb7:
    ld c, b
    sbc h
    ld b, e
    adc h
    reti


jr_019_6cbc:
    ld b, h
    adc h
    db $d3
    ld b, e
    add [hl]
    ld b, d
    add [hl]
    ld b, e

jr_019_6cc4:
    adc h
    ld c, b
    adc h
    ld d, h

jr_019_6cc8:
    adc h
    db $d3
    adc h
    db $d3
    ld c, a
    adc h
    ld d, h
    adc h
    ld h, b
    adc h
    db $d3
    adc h
    db $d3
    ld e, e
    adc h
    ld e, a
    add h
    ld h, b
    add h
    ld e, a
    add h
    ld e, e
    adc h
    ld e, a
    adc h
    ld h, b
    adc h
    call nc, $d48c
    sbc b

jr_019_6ce7:
    or d
    inc bc
    ld l, h
    or c

jr_019_6ceb:
    cp l
    nop
    cp [hl]
    ld d, b
    cp a

jr_019_6cf0:
    ld c, e
    sbc l
    db $d4, $30, $13
    adc h
    inc sp
    add h
    inc [hl]
    add h
    inc sp
    add h
    jr nc, jr_019_6c8a

    cpl
    adc h
    jr nc, jr_019_6ca2

    db $d4, $30, $13
    adc h
    inc sp
    add h

jr_019_6d08:
    inc [hl]
    add h
    inc sp
    add h
    jr nc, jr_019_6c9a

    cpl
    adc h

jr_019_6d10:
    jr nc, jr_019_6cb2

    or h
    db $d4, $30, $13
    adc h
    inc sp
    add h
    inc [hl]
    add h
    inc sp

jr_019_6d1c:
    add h
    jr nc, jr_019_6cab

    cpl

jr_019_6d20:
    adc h
    jr nc, jr_019_6caf

    inc sp
    add h
    inc [hl]
    add h
    inc sp
    add h
    jr nc, jr_019_6cb7

    cpl
    adc h
    or h
    jr nc, jr_019_6cbc

    inc sp
    add h
    inc [hl]
    add h
    inc sp
    add h
    jr nc, jr_019_6cc4

    cpl
    adc h
    jr nc, jr_019_6cc8

    cp [hl]
    ld a, [bc]
    call nc, $1353
    adc h
    call nc, $be98
    ld b, [hl]
    or e
    ld [bc], a
    ld l, l
    or e
    ld [bc], a
    ld l, l
    or e
    inc de
    ld l, l
    db $d4, $30, $13
    adc h
    inc sp
    add h
    inc [hl]
    add h
    inc sp
    add h
    jr nc, jr_019_6ce7

    cpl
    adc h
    jr nc, jr_019_6ceb

    db $d3
    ld b, a
    adc h
    ld c, c
    adc h
    ld c, e
    adc h
    db $d4, $35, $13
    adc h
    jr c, jr_019_6cf0

    add hl, sp
    add h
    jr c, @-$7a

    dec [hl]
    adc h
    inc [hl]
    adc h
    dec [hl]
    and b
    or h
    or e
    ld h, [hl]
    ld l, l
    db $d4, $35, $13
    adc h
    jr c, @-$7a

    add hl, sp
    add h
    jr c, jr_019_6d08

    dec [hl]
    adc h
    inc [hl]
    adc h
    dec [hl]
    adc h
    jr c, jr_019_6d10

    add hl, sp
    add h
    jr c, @-$7a

    dec [hl]
    adc h
    inc [hl]
    adc h
    dec [hl]
    adc h
    jr c, jr_019_6d1c

    add hl, sp
    add h
    jr c, jr_019_6d20

    dec [hl]
    adc h
    inc [hl]
    adc h
    dec [hl]
    adc h
    call nc, $d48c
    ld [hl], $8c
    call nc, $d48c
    scf
    adc h
    ld a, [hl-]
    add h
    dec sp
    add h
    ld a, [hl-]
    add h
    scf
    adc h
    ld [hl], $8c
    scf
    sbc h
    db $d3
    ld c, [hl]
    adc h
    call nc, $8c37
    ld a, [hl-]
    add h
    dec sp
    add h
    ld a, [hl-]
    add h
    scf
    adc h
    ld [hl], $8c
    scf
    sbc h
    db $d3
    ld e, d
    adc h
    call nc, $8c37
    ld a, [hl-]
    add h
    dec sp
    add h
    ld a, [hl-]
    add h
    scf
    adc h
    ld [hl], $8c
    scf
    adc h
    ld a, [hl-]
    add h
    dec sp
    add h
    ld a, [hl-]
    add h
    scf
    adc h
    ld [hl], $8c
    scf
    adc h
    ld a, [hl-]
    add h
    dec sp
    add h
    ld a, [hl-]
    add h
    scf
    adc h
    ld [hl], $8c
    scf
    adc h
    call nc, $d486
    ld [hl], $86
    scf
    add [hl]
    jr c, @-$78

    add hl, sp
    add [hl]
    dec sp
    add [hl]
    db $d4, $3c, $13
    adc h
    ccf
    add h
    ld b, b
    add h
    ccf
    add h
    inc a
    adc h
    dec sp
    adc h
    inc a

jr_019_6e10:
    and b
    or h
    or e
    ld bc, $d46e
    inc a
    inc de
    adc h
    ccf
    add h

jr_019_6e1b:
    ld b, b
    add h
    ccf
    add h
    inc a
    adc h
    dec sp
    adc h
    inc a
    adc h
    ld c, e

jr_019_6e26:
    add h
    ld c, h
    add h
    ld c, e
    add h
    ld c, b
    adc h
    ld b, a
    adc h
    ld c, b
    adc h

jr_019_6e31:
    ld d, a
    add h
    ld e, b
    add h
    ld d, a
    add h
    ld d, h
    adc h
    ld d, e
    adc h
    ld d, h
    adc h
    ld e, a
    adc h
    call nc, $b298

jr_019_6e42:
    ld b, h
    ld l, l
    or c
    cp l
    db $f4
    cp [hl]
    ld h, e
    cp a
    ld h, a
    sbc l
    push de

jr_019_6e4d:
    jr nc, jr_019_6e67

    and h
    dec hl
    adc h

jr_019_6e52:
    ld l, $8c
    cpl
    adc h
    push de
    jr nc, jr_019_6e71

    and h
    dec hl
    adc h
    ld l, $8c
    cpl
    adc h
    or h
    or e
    ld d, [hl]
    ld l, [hl]
    push de
    jr nc, jr_019_6e7f

jr_019_6e67:
    adc h
    dec hl
    adc h
    ld l, $8c
    cpl
    adc h
    jr nc, jr_019_6e10

    or e

jr_019_6e71:
    ld d, [hl]
    ld l, [hl]
    or e
    ld d, [hl]
    ld l, [hl]
    push de
    jr nc, jr_019_6e91

    and h

jr_019_6e7a:
    add hl, hl
    adc h
    ld l, $8c
    cpl

jr_019_6e7f:
    adc h
    jr nc, jr_019_6e26

    push de
    adc h
    push de
    ld [hl-], a
    adc h
    inc [hl]
    adc h
    push de
    dec [hl]
    jr jr_019_6e31

    jr nc, jr_019_6e1b

    inc sp
    adc h

jr_019_6e91:
    inc [hl]
    adc h
    or h
    or e
    adc c
    ld l, [hl]
    or e
    adc c
    ld l, [hl]
    push de
    dec [hl]
    jr jr_019_6e42

    push de
    adc h
    push de
    ld [hl], $8c
    push de
    adc h
    push de
    scf
    jr jr_019_6e4d

    ld [hl-], a
    adc h
    dec [hl]
    adc h
    ld [hl], $8c
    or h
    or e
    and l
    ld l, [hl]
    push de
    scf
    jr @-$62

    db $d3
    ld [hl], d
    sbc b
    push de
    ld [hl-], a
    adc h
    dec [hl]
    adc h
    ld [hl], $8c
    scf
    and h
    push de
    add [hl]
    push de
    ld [hl], $86
    scf
    add [hl]
    jr c, jr_019_6e52

    add hl, sp
    add [hl]
    dec sp
    add [hl]
    push de
    inc a
    jr @-$5a

    scf
    adc h
    ld a, [hl-]
    adc h
    dec sp
    adc h
    or h
    or e
    ret nc

    ld l, [hl]
    push de
    inc a
    jr jr_019_6e7a

    db $d3
    ld e, a
    adc h
    db $d3
    sbc b
    push de
    scf
    adc h
    ld a, [hl-]
    adc h
    dec sp
    adc h
    inc a
    adc h
    scf
    adc h
    ld a, [hl-]
    adc h
    dec sp
    adc h
    inc a
    and b
    or d
    ld [hl], b
    ld l, [hl]
    or c
    cp l
    nop
    cp [hl]
    jr z, @-$3f

    ld b, d
    sbc l
    pop de
    ld a, [hl+]
    ld de, $2c8c
    add [hl]
    ld a, [hl+]
    add [hl]
    inc l
    adc h
    ld a, [hl+]
    adc h
    inc l
    adc h
    pop de
    adc h
    pop de
    ld a, [hl+]
    adc h
    inc l
    adc h
    pop de
    ld a, [hl+]
    ld de, $2c8c
    add [hl]
    ld a, [hl+]
    add [hl]
    inc l
    adc h
    ld a, [hl+]
    adc h
    inc l
    adc h
    pop de
    adc h
    pop de
    ld a, [hl+]
    adc h
    inc l
    adc h
    or h
    or e
    jr jr_019_6fa0

    or e
    jr jr_019_6fa3

    or e
    jr jr_019_6fa6

    or e
    jr jr_019_6fa9

    or e
    jr jr_019_6fac

    or e
    jr jr_019_6faf

    or e
    jr jr_019_6fb2

    or e
    jr jr_019_6fb5

    or e
    jr jr_019_6fb8

    or e
    jr jr_019_6fbb

    or e
    jr jr_019_6fbe

    or e
    jr jr_019_6fc1

    or e
    jr jr_019_6fc4

    or e
    jr jr_019_6fc7

    or e
    jr jr_019_6fca

    or e
    jr jr_019_6fcd

    or e
    jr jr_019_6fd0

    or e
    jr jr_019_6fd3

    or d
    inc [hl]
    ld l, a
    or c
    inc b
    ld [bc], a
    and $6b
    db $eb
    ld l, h
    ld b, l
    ld l, [hl]
    db $fc
    ld l, [hl]
    inc bc
    ld l, h
    ld b, h
    ld l, l
    ld [hl], b
    ld l, [hl]
    inc [hl]
    ld l, a
    ld [$446c], a
    ld l, [hl]
    ei
    ld l, [hl]
    ld h, a
    ld l, a
    cp l
    nop
    cp h
    scf
    cp [hl]
    ld d, e
    cp a
    ld d, b
    sbc l
    db $d3
    inc a
    inc d
    adc h
    ld b, e
    adc h
    ld c, b
    adc h
    ld b, e
    adc h
    scf
    adc h
    ld b, c
    adc h
    ld b, [hl]
    adc h
    ld b, c
    adc h
    db $d3
    inc a
    inc d

jr_019_6fa0:
    adc h
    ld b, e
    adc h

jr_019_6fa3:
    ld c, b
    adc h
    ld b, e

jr_019_6fa6:
    adc h
    scf
    adc h

jr_019_6fa9:
    ld b, c
    adc h
    ld b, [hl]

jr_019_6fac:
    adc h
    ld b, c
    adc h

jr_019_6faf:
    or h
    or e
    sbc l

jr_019_6fb2:
    ld l, a
    or e
    sbc l

jr_019_6fb5:
    ld l, a
    or e
    sbc l

jr_019_6fb8:
    ld l, a
    db $d3
    inc a

jr_019_6fbb:
    inc d
    adc h
    ld b, e

jr_019_6fbe:
    adc h
    ld c, b
    adc h

jr_019_6fc1:
    ld b, e
    adc h
    inc a

jr_019_6fc4:
    adc h
    ld b, e
    adc h

jr_019_6fc7:
    ld c, b
    adc h
    ld b, e

jr_019_6fca:
    adc h
    db $d3
    dec a

jr_019_6fcd:
    inc d
    adc h
    ld b, h

jr_019_6fd0:
    adc h
    ld c, c
    adc h

jr_019_6fd3:
    ld b, h
    adc h
    jr c, @-$72

    ld b, d
    adc h
    ld b, a
    adc h
    ld b, d
    adc h
    or h
    or e
    bit 5, a
    or e
    bit 5, a
    db $d3
    dec a
    inc d
    adc h
    ld b, h
    adc h
    ld c, c
    adc h
    ld b, h
    adc h
    dec a
    adc h
    ld b, h
    adc h
    ld c, c
    adc h
    ld b, h
    adc h
    db $d3
    ld b, e
    inc d
    adc h
    ld c, d
    adc h
    ld c, a
    adc h
    ld c, d
    adc h
    ld a, $8c
    ld c, b
    adc h
    ld c, l
    adc h
    ld c, b
    adc h
    or h
    or e
    or $6f
    or e
    or $6f
    db $d3
    ld b, e
    inc d
    adc h
    ld c, d
    adc h
    ld c, a
    adc h
    ld c, d
    adc h
    ld b, e
    adc h
    ld c, d
    adc h
    ld c, a
    adc h
    ld c, d
    adc h
    db $d3
    ld c, b
    inc d
    adc h
    ld c, a
    adc h
    ld d, h
    adc h
    ld c, a
    adc h
    ld b, e
    adc h
    ld c, l
    adc h
    ld d, d
    adc h
    ld c, l
    adc h
    or h
    or e
    ld hl, $b370
    ld hl, $d370
    ld c, b
    inc d
    adc h
    ld c, a
    adc h
    ld d, h
    adc h
    ld c, a
    adc h
    ld e, b
    and b
    or d
    adc e
    ld l, a
    or c
    cp l
    nop
    cp [hl]
    ld c, c
    cp a
    ld c, e
    sbc l
    sbc b
    db $d3
    ld c, h
    inc d
    and b
    ld c, d
    sbc b
    sbc b
    db $d3
    ld c, h
    inc d
    and b
    ld c, d
    sbc b
    or h

jr_019_7060:
    or e
    ld e, b
    ld [hl], b
    or e
    ld e, b
    ld [hl], b
    or e
    ld e, b
    ld [hl], b
    sbc b
    db $d3
    ld c, h
    inc d
    and b
    db $d3
    sbc b
    sbc b
    db $d3
    ld c, l
    inc d
    and b
    ld c, e
    sbc b
    or h
    or e
    ld [hl], b
    ld [hl], b
    or e
    ld [hl], b

jr_019_707d:
    ld [hl], b
    sbc b
    db $d3
    ld c, l
    inc d
    and b
    db $d3
    sbc b
    sbc b
    db $d3

jr_019_7087:
    ld d, e
    inc d
    and b
    ld d, c
    sbc b
    or h
    or e
    add l
    ld [hl], b
    or e
    add l
    ld [hl], b
    sbc b
    db $d3
    ld d, e
    inc d
    and b

jr_019_7098:
    db $d3
    sbc b
    sbc b
    db $d3
    ld e, b
    inc d
    and b
    ld d, [hl]
    sbc b
    or h
    or e
    sbc d
    ld [hl], b
    or e
    sbc d
    ld [hl], b
    sbc b
    db $d3
    ld e, b
    inc d
    sbc b
    ld h, b
    and b
    or d
    ld d, c
    ld [hl], b
    or c
    cp l
    nop
    cp [hl]
    ld h, e
    jp $c414


    dec b
    push bc
    ld a, [bc]
    add $00
    cp a
    ld l, h
    sbc l
    or b
    xor [hl]
    db $d2, $3a, $18

    add e
    dec sp
    add e
    db $d2, $3c, $18

    adc h
    scf
    adc h
    inc [hl]
    adc h
    jr nc, jr_019_7060

    db $db
    ld [hl-], a
    adc h
    jp nc, $8c35

    ld a, [hl-]
    adc h
    ld a, $8c
    or h
    db $db
    inc a
    adc h
    jp nc, $aa37

    push de
    ld a, [hl-]
    add e
    dec sp
    add e
    or e
    jp z, $db70

    ld b, b
    jr jr_019_707d

    jp nc, $a83c

    db $db
    adc h
    jp nc, $8c3d

    jr c, jr_019_7087

    dec [hl]
    adc h
    ld sp, $eb8c
    inc sp
    sbc h
    push de
    dec [hl]
    add [hl]
    ld [hl], $86
    jp nc, $8c35

    jr c, jr_019_7098

    dec a
    adc h
    ld b, c
    adc h
    db $eb
    ccf
    sbc h
    push de
    ld b, c
    add [hl]
    ld b, d
    add [hl]
    adc h
    jp nc, $8c44

    ld c, c
    adc h
    ld b, h
    adc h
    db $db
    ld b, a
    adc h
    jp nc, $8c46

    ld b, h
    adc h
    ld b, d
    adc h
    push de
    ld b, h
    add [hl]
    ld b, c
    add [hl]
    dec a
    xor h
    jp nc, $8c3e

    ld b, e
    adc h
    ld b, a
    adc h
    ld c, d
    adc h
    db $eb
    ld c, b
    sbc h
    push de
    ld b, a
    add [hl]
    ld c, b
    add [hl]
    ld c, d
    add [hl]
    ld b, a
    add [hl]
    ld b, e
    xor d
    jp nc, $834d

    ld c, [hl]
    add e
    ld c, a
    adc h
    ld c, d
    adc h
    ld b, a
    adc h
    ld b, e
    adc h
    db $eb
    ld c, b
    sbc h
    push de
    ld c, d
    add [hl]
    ld c, b
    add [hl]
    ld b, a
    add [hl]
    ld c, d
    add [hl]
    ld c, a
    xor b
    db $d3
    ld b, e
    add h
    ld b, l
    add h
    ld b, a
    add h
    jp nc, $8c48

    ld b, e
    adc h
    ld b, b
    adc h
    inc a
    adc h
    db $db
    ld a, $8c

jr_019_7176:
    jp nc, $8c41

    ld b, [hl]
    adc h
    ld c, d
    adc h
    db $db
    ld c, h
    adc h
    jp nc, $8c48

    ld b, e
    adc h
    ld b, b
    adc h
    db $db
    ld b, c
    adc h
    jp nc, $8c46

    ld c, d
    adc h
    ld c, l
    adc h
    db $db
    ld c, a
    adc h
    jp nc, $8c4c

    ld c, b
    adc h
    ld d, h
    adc h
    db $db
    ld d, d
    adc h
    jp nc, $8c51

    ld c, a
    adc h
    ld c, l
    adc h
    push de
    ld c, h
    add [hl]
    push de
    ld c, a
    add [hl]
    jp nc, $ac54

    or d
    jp nz, $b170

    cp l
    nop
    cp [hl]
    jr z, jr_019_7176

    ld b, d
    sbc l
    db $d3
    inc h
    ld de, $2698
    sbc b
    inc h
    adc h
    db $d3
    adc h
    db $d3
    ld h, $98
    db $d3
    inc h
    ld de, $2698
    sbc b
    inc h
    adc h
    db $d3
    adc h
    db $d3
    ld h, $98
    or h
    or e
    add $71

jr_019_71d7:
    or e
    add $71
    or e
    add $71
    or e
    add $71
    or e
    add $71
    or e
    add $71
    or e
    add $71
    or e
    add $71
    or e
    add $71
    or e
    add $71
    or e
    add $71
    or e
    add $71
    or e
    add $71
    or e
    add $71
    or e
    add $71
    db $d3
    inc h
    ld de, $2698
    sbc b
    inc h
    adc h
    db $d3
    adc h
    db $d3
    ld h, $8c
    db $d3

jr_019_720f:
    add [hl]
    db $d3
    add [hl]
    or d
    cp c
    ld [hl], c
    or c
    inc b
    ld [bc], a
    add d
    ld l, a
    ld c, d
    ld [hl], b
    or e
    ld [hl], b
    or d
    ld [hl], c
    adc e
    ld l, a
    ld d, c
    ld [hl], b
    jp nz, $b970

    ld [hl], c

jr_019_7228:
    ld c, c
    ld [hl], b
    or d
    ld [hl], b
    or c
    ld [hl], c
    dec d
    ld [hl], d
    cp l

jr_019_7231:
    nop
    cp h
    ld d, a
    cp [hl]
    ld h, e
    cp a
    ld l, h
    sbc l
    or b
    sbc b
    rst $10
    ld d, h
    jr jr_019_71d7

    rst $10
    and b
    or h
    or b
    or e
    ld a, [hl-]
    ld [hl], d
    rst $10
    dec [hl]
    jr @-$66

    inc a
    sbc b
    rst $10
    and b
    or h
    rst $10
    dec [hl]
    jr @-$66

    ld d, h
    sbc b

jr_019_7255:
    rst $10
    and b
    or h
    rst $10
    dec [hl]
    sbc b
    inc a
    sbc b
    dec a
    adc b
    ccf
    adc b
    dec a
    adc b
    inc a
    adc h
    ld a, [hl-]
    adc h
    add hl, sp
    sbc b
    ld d, h
    sbc b
    rst $10
    and b
    or e
    ld b, [hl]
    ld [hl], d
    or e
    ld c, a
    ld [hl], d
    rst $10
    ld b, c
    jr jr_019_720f

    inc a
    adc h
    rst $10
    adc h
    rst $10
    dec a
    adc b
    ccf
    adc b
    dec a
    adc b
    inc a
    adc h
    ld a, [hl-]
    adc h
    add hl, sp
    sbc b
    scf
    sbc b
    dec [hl]
    and b
    rst $10
    ld a, [hl-]
    jr jr_019_7228

    ld b, c
    sbc b
    rst $10
    and b
    or h
    rst $10
    ld a, [hl-]
    jr jr_019_7231

    ld e, c
    sbc b

jr_019_729b:
    rst $10
    and b
    or h
    rst $10
    ld a, [hl-]
    sbc b
    ld b, c
    sbc b
    ld b, d
    adc b
    ld b, h
    adc b
    ld b, d
    adc b
    ld b, c
    adc h
    ccf
    adc h
    ld a, $98
    ld e, c
    sbc b
    rst $10
    and b
    or e
    adc h
    ld [hl], d

jr_019_72b6:
    or e
    sub l
    ld [hl], d
    rst $10
    ld b, [hl]
    jr jr_019_7255

    ld b, c
    adc h
    rst $10
    adc h
    rst $10
    ld b, d
    adc b
    ld b, h
    adc b
    ld b, d
    adc b
    ld b, c
    adc h
    ccf
    adc h
    ld a, $98
    inc a
    sbc b
    ld a, [hl-]
    and b
    sbc b
    ld b, e
    sbc b
    ld b, h
    adc b
    ld b, [hl]

jr_019_72d8:
    adc b
    ld b, h
    adc b
    ld b, e
    adc h
    ld b, d
    adc h
    ld b, e
    sbc b
    ld c, b
    sbc b
    ld c, h
    sbc b
    ld c, a
    sbc b
    db $db
    ld e, c
    adc h
    ld d, l
    adc h
    ld d, h
    adc h
    ld d, e
    adc h
    ld d, h
    sbc b
    ld h, b
    adc h
    ld e, a
    adc h
    ld h, b
    or b
    or d
    add hl, sp
    ld [hl], d
    or c
    cp l
    nop
    cp [hl]
    ld d, h
    cp a
    ld d, l
    sbc l
    rst $10
    add hl, hl
    inc d
    sbc b
    db $db
    ld l, $8c
    cpl
    adc h
    rst $10
    jr nc, jr_019_729b

    inc h
    sbc b
    daa
    add [hl]
    jr z, jr_019_729b

    rst $10
    add hl, hl
    inc d
    sbc b
    ld d, e
    sbc b
    rst $10
    and b
    or h
    rst $10
    add hl, hl
    inc d
    sbc b
    db $db

jr_019_7323:
    ld l, $8c
    cpl
    adc h
    rst $10
    jr nc, jr_019_72b6

    inc h
    sbc b
    daa
    add [hl]
    jr z, jr_019_72b6

    or h
    or e
    dec d
    ld [hl], e
    or e
    ld e, $73
    or e
    dec d
    ld [hl], e
    or e
    ld e, $73

jr_019_733d:
    or e
    dec d
    ld [hl], e
    or e
    ld e, $73
    or e
    dec d
    ld [hl], e
    rst $10

jr_019_7347:
    add hl, hl
    inc d
    sbc b
    jr nc, jr_019_72d8

    rst $10
    adc h
    rst $10
    ld sp, $3388
    adc b
    ld sp, $3088
    adc h
    ld l, $8c
    dec l
    sbc b
    dec hl
    sbc b
    add hl, hl
    sbc b
    rst $10
    adc b
    rst $10
    dec hl
    adc b
    dec l
    adc b

jr_019_7366:
    rst $10
    ld l, $14
    sbc b
    db $db
    inc sp
    adc h
    inc [hl]
    adc h
    rst $10
    dec [hl]
    adc h
    add hl, hl
    sbc b
    inc l
    add [hl]
    dec l
    add [hl]
    or h
    rst $10
    ld l, $14
    sbc b
    ld e, b
    sbc b
    rst $10
    and b
    or h
    or e
    ld h, [hl]
    ld [hl], e
    or e
    ld a, c
    ld [hl], e
    or e
    ld h, [hl]
    ld [hl], e
    or e
    ld a, c
    ld [hl], e
    rst $10
    ld l, $14
    sbc b
    dec [hl]
    adc h
    rst $10
    adc h
    rst $10
    ld [hl], $88
    jr c, jr_019_7323

    ld [hl], $88
    dec [hl]
    adc h
    inc sp
    adc h
    ld [hl-], a
    sbc b
    jr nc, jr_019_733d

    ld l, $98
    db $db

jr_019_73a8:
    adc h
    db $db
    cpl
    adc h
    rst $10
    jr nc, jr_019_7347

    ld b, b
    sbc b
    ld b, c
    adc b
    ld b, e
    adc b
    ld b, c
    adc b
    ld b, b
    adc h
    ccf
    adc h
    ld b, b
    sbc b
    ld b, e
    sbc b
    ld c, b
    sbc b
    ld c, h
    sbc b
    db $db
    scf
    adc h
    dec sp
    adc h
    inc a
    adc h
    dec a
    adc h
    inc a
    sbc b
    ld e, b
    adc h
    ld d, a
    adc h
    ld e, b
    sbc b
    inc h
    adc h
    daa
    adc h
    jr z, jr_019_7366

    add hl, hl
    adc h
    ld a, [hl+]
    adc h
    dec hl
    adc h
    or d
    inc bc
    ld [hl], e
    or c
    cp l
    nop
    cp [hl]
    jr z, jr_019_73a8

    ld b, d
    sbc l
    sbc b
    call nc, $1124
    adc h
    call nc, $d48c
    ld h, $98
    inc h
    adc h
    call nc, $d48c
    inc h
    ld de, $d48c
    adc h
    call nc, $d48c
    adc h
    call nc, $9826
    inc h
    adc h
    call nc, $b48c
    call nc, $1124
    sbc b
    call nc, $d48c
    adc h
    call nc, $9826
    inc h
    adc h

jr_019_7418:
    call nc, $b48c
    or e
    ld sp, hl
    ld [hl], e
    or e
    dec bc
    ld [hl], h
    or e
    ld sp, hl
    ld [hl], e
    or e
    dec bc

jr_019_7426:
    ld [hl], h
    or e
    ld sp, hl
    ld [hl], e
    or e
    dec bc
    ld [hl], h
    or e
    ld sp, hl
    ld [hl], e
    or e
    dec bc
    ld [hl], h
    or e
    ld sp, hl

jr_019_7435:
    ld [hl], e
    or e
    dec bc
    ld [hl], h
    or e
    ld sp, hl
    ld [hl], e
    or e
    dec bc
    ld [hl], h
    or e
    ld sp, hl
    ld [hl], e
    or e
    dec bc
    ld [hl], h
    or e
    ld sp, hl
    ld [hl], e
    or e
    dec bc

jr_019_744a:
    ld [hl], h
    or e
    ld sp, hl
    ld [hl], e
    or e
    dec bc
    ld [hl], h
    or e
    ld sp, hl
    ld [hl], e
    or e
    dec bc
    ld [hl], h
    or e
    ld sp, hl
    ld [hl], e
    or d
    db $eb

jr_019_745c:
    ld [hl], e
    or c
    inc bc
    ld [bc], a
    jr nc, jr_019_74d4

    db $fc
    ld [hl], d
    db $e4
    ld [hl], e
    add hl, sp
    ld [hl], d
    inc bc
    ld [hl], e
    db $eb
    ld [hl], e
    ei
    ld [hl], d
    db $e3
    ld [hl], e
    ld e, l
    ld [hl], h
    cp l
    nop
    cp h
    ld b, [hl]
    cp [hl]
    ld h, b
    jp $c414


    dec b
    push bc
    ld a, [bc]
    add $00
    cp a
    ld h, a
    pop bc
    ld b, b
    sbc l
    or b
    or b
    adc h
    db $d3
    ld c, c
    jr jr_019_7418

    ld b, h
    adc h
    ld b, c
    adc h
    rst $20
    dec a
    sbc b
    ld a, $98
    or h
    db $d3
    ccf

jr_019_7498:
    jr jr_019_7426

    db $d3
    adc h
    db $d3
    ld a, $8c
    ccf
    adc h
    ld b, [hl]
    and b
    or h
    adc h
    db $d3
    ld c, b
    jr jr_019_7435

    ld c, c
    adc h
    ld c, b
    adc h
    ld b, [hl]
    adc h
    ld c, b
    adc h

jr_019_74b1:
    ld b, [hl]
    adc h
    ld b, l
    adc h
    or h
    rst $38
    ld b, h
    or b
    adc h
    db $d3
    ld b, d
    jr jr_019_744a

    ld b, [hl]
    adc h
    ld c, c
    adc h
    ld c, l
    adc h
    ld c, e
    adc h
    ld c, c
    adc h
    ld c, b
    adc h
    or h
    adc h
    db $d3
    ld b, h
    jr jr_019_745c

    ld c, b
    adc h
    ld c, e
    adc h

jr_019_74d4:
    ld c, [hl]
    adc h
    ld c, l
    adc h
    ld c, h
    adc h
    ld c, l
    adc h
    or h
    adc h
    ld b, [hl]
    adc h
    ld c, c
    adc h
    ld c, l
    adc h
    ld d, b
    adc h
    ld c, [hl]
    adc h
    ld c, h
    adc h
    ld c, [hl]
    adc h
    ld d, b
    xor d
    ld c, [hl]
    add [hl]
    ld c, l
    add [hl]
    ld c, e
    add [hl]
    or e
    add a
    ld [hl], h
    or e
    sub [hl]
    ld [hl], h
    or e
    and h
    ld [hl], h
    rst $38
    ld b, h
    jr jr_019_74b1

    or e
    cp c
    ld [hl], h
    or e
    bit 6, h
    adc h
    db $d3
    ld b, [hl]
    jr jr_019_7498

    ld c, c
    adc h
    ld c, l
    adc h
    ld d, b
    adc h
    ld c, [hl]
    adc h
    ld c, l
    adc h
    ld c, e
    adc h
    rst $28
    ld c, c
    and b
    db $d3
    ld h, c
    and b
    db $eb
    ld d, l
    sbc h
    db $d3
    ld d, c
    sbc b
    ld c, h
    adc h
    ld c, c
    adc h
    ld c, d
    adc h
    ld c, e
    adc h
    ld c, h
    adc h
    ld c, [hl]
    adc h
    ld d, e
    and h
    db $eb
    ld d, a
    sbc h
    db $d3
    ld d, e
    sbc b
    ld c, [hl]
    adc h
    ld c, e
    adc h
    ld c, [hl]
    adc h
    ld c, l
    adc h
    ld c, [hl]
    adc h
    ld c, a
    adc h
    ld d, b
    and h
    adc h
    ld d, c
    adc h
    ld c, h
    adc h
    ld d, c
    sbc b
    db $d3
    adc h
    db $d3
    ld d, e
    adc h
    ld d, l
    adc h
    adc h
    ld d, e
    adc h
    ld c, [hl]
    adc h
    ld d, e
    sbc b
    db $d3
    adc h
    db $d3
    ld d, l
    adc h
    ld d, a
    adc h
    ld d, l
    adc h
    ld d, a
    adc h
    ld e, b
    adc h
    ld e, d
    adc h
    ld e, h
    adc h
    ld e, d
    adc h
    ld e, b
    adc h
    ld e, d
    adc h
    ld e, h
    and b
    ld l, b
    sbc d
    ld c, [hl]
    add [hl]
    ld c, l
    add [hl]
    ld c, e
    add [hl]
    or d
    add a
    ld [hl], h
    or c
    cp l
    nop
    cp [hl]
    ld d, l
    cp a
    ld b, [hl]
    sbc l
    db $d3
    ld c, c
    inc de
    adc h
    ld d, b
    adc h
    ld c, l
    adc h
    ld d, b
    adc h
    ld c, c
    adc h
    ld d, b
    adc h
    ld c, l
    adc h
    ld d, b
    adc h
    ld c, c
    adc h
    ld d, b
    adc h
    ld c, l
    adc h
    ld d, b
    adc h
    ld c, c
    adc h
    ld d, b
    adc h
    ld c, l
    adc h
    ld d, b
    adc h
    db $d3
    ld c, c
    inc de
    adc h
    ld d, b
    adc h
    ld c, l
    adc h
    ld d, b
    adc h
    ld c, c
    adc h
    ld d, b
    adc h
    ld c, d
    adc h
    ld d, c
    adc h
    or h
    db $d3
    ld c, e
    inc de
    adc h
    ld d, d
    adc h
    ld c, [hl]
    adc h
    ld d, d
    adc h
    ld c, e
    adc h
    ld d, d
    adc h
    ld c, [hl]
    adc h
    ld d, d
    adc h
    or h
    db $d3
    ld b, h
    inc de
    adc h
    ld c, [hl]
    adc h
    ld c, e
    adc h
    ld c, [hl]
    adc h
    ld b, h
    adc h
    ld c, [hl]
    adc h
    ld c, e
    adc h
    ld c, [hl]
    adc h
    or h
    db $d3
    ld c, c
    inc de
    adc h
    ld d, b
    adc h
    ld c, l
    adc h
    ld d, b
    adc h
    ld b, [hl]
    adc h
    ld d, b
    adc h
    ld c, d
    adc h
    ld d, b
    adc h
    or h
    db $d3
    ld c, e
    inc de
    adc h
    ld d, d
    adc h
    ld c, [hl]
    adc h
    ld d, d
    adc h
    ld b, h
    adc h
    ld c, [hl]
    adc h
    ld c, e
    adc h
    ld c, [hl]
    adc h
    or h
    db $d3
    ld c, l
    inc de
    adc h
    ld d, h
    adc h
    ld d, b
    adc h
    ld d, h
    adc h
    ld b, [hl]
    adc h
    ld d, b
    adc h
    ld c, d
    adc h
    ld d, b
    adc h
    or h
    ld c, e
    adc h
    ld c, [hl]
    adc h
    ld d, d
    adc h
    ld d, a
    adc h
    ld c, d
    adc h
    ld c, [hl]
    adc h
    ld d, c
    adc h
    ld d, [hl]
    adc h
    ld b, h
    adc h
    ld c, c
    adc h
    ld c, e
    adc h
    ld c, [hl]
    adc h
    ld d, b
    adc h
    ld b, h
    adc h
    ld b, [hl]
    adc h
    ld c, b
    adc h
    or e
    xor c
    ld [hl], l
    or e
    cp h
    ld [hl], l
    or e
    rst $08
    ld [hl], l
    or e
    ld [c], a
    ld [hl], l
    or e
    push af
    ld [hl], l
    or e
    ld [$d376], sp
    ld c, e
    inc de
    adc h
    ld d, d
    adc h
    ld c, [hl]
    adc h
    ld d, d
    adc h
    ld b, h
    adc h
    ld c, [hl]
    adc h
    ld c, b
    adc h
    ld c, [hl]
    adc h
    ld c, c
    adc h
    ld c, l
    adc h
    ld d, b
    adc h
    ld d, l
    adc h
    ld e, c
    sbc b
    ld c, c
    adc h
    ld b, a
    adc h
    ld b, l
    adc h
    ld c, h
    adc h
    ld c, c
    adc h
    ld c, h
    adc h
    ld b, l
    adc h
    ld c, h
    adc h
    ld c, c
    adc h
    ld c, h
    adc h
    ld b, a
    adc h
    ld c, [hl]
    adc h
    ld c, e
    adc h
    ld c, [hl]
    adc h
    ld b, a
    adc h
    ld c, [hl]
    adc h
    ld c, e
    adc h
    ld c, [hl]
    adc h
    or e
    rst $08
    ld [hl], l
    db $d3
    ld c, c
    inc de
    adc h
    ld d, b
    adc h
    ld c, l
    adc h
    ld d, b
    adc h
    ld c, c
    adc h
    ld c, e
    adc h
    ld c, l
    adc h
    ld d, e
    adc h
    ld b, d
    adc h
    ld c, c
    adc h
    ld b, l
    adc h
    ld c, c
    adc h
    ld b, d
    adc h
    ld c, c
    adc h
    ld c, e
    adc h
    ld c, h
    adc h
    ld b, h

jr_019_76b3:
    adc h
    ld c, e
    adc h
    ld b, a
    adc h
    ld c, e
    adc h
    ld b, h
    adc h
    ld c, e
    adc h
    ld c, h
    adc h
    ld c, [hl]
    adc h
    ld b, l
    adc h
    ld c, h
    adc h
    ld c, c
    adc h
    ld c, h
    adc h
    ld b, [hl]
    adc h
    ld c, h
    adc h
    ld c, c
    adc h
    ld c, h
    adc h
    ld b, a
    adc h
    ld c, h
    adc h
    ld c, [hl]
    adc h
    ld d, b
    adc h
    ld h, b
    sbc b
    ld c, b
    sbc b
    or d
    xor c
    ld [hl], l
    or c
    ld [bc], a
    ld [bc], a
    ld [hl], d
    ld [hl], h
    add b
    ld [hl], l
    add a
    ld [hl], h
    xor c
    ld [hl], l
    ld a, a
    ld [hl], l
    pop hl
    db $76
    cp l
    nop
    cp h
    jr z, jr_019_76b3

    ld d, c
    cp a
    ld c, e
    sbc l
    adc h
    pop de
    inc a
    inc de
    adc h
    pop de
    xor b
    adc h
    pop de
    inc a
    inc de
    adc h
    pop de
    xor b
    or h
    adc h
    pop de
    adc h
    pop de
    and b
    db $d3
    dec a
    add h
    ccf
    add h
    dec a
    add h
    push de
    inc a
    add [hl]
    ld a, [hl-]
    add [hl]
    pop de
    add hl, sp
    adc h
    inc a
    adc h
    ld c, b
    xor b
    or e
    nop
    ld [hl], a
    or e
    nop
    ld [hl], a
    adc h
    pop de
    ld c, l
    inc de
    sbc b
    ld c, b
    sbc b
    db $d3
    ld c, c
    add h
    ld c, e
    add h
    ld c, c
    add h
    db $db
    ld c, b
    adc h
    ld b, [hl]
    adc h

jr_019_7739:
    adc h
    pop de
    ld b, h
    sbc b
    ld b, e
    sbc b
    ld b, c
    adc h
    pop de
    sbc b
    adc h
    pop de
    dec [hl]

jr_019_7746:
    inc de
    adc h
    pop de
    xor b
    or h
    or e
    ld b, e
    ld [hl], a
    adc h
    pop de
    dec [hl]
    inc de
    adc h
    pop de
    and b

jr_019_7755:
    db $d3
    ld b, d
    add h
    ld b, h
    add h
    ld b, d
    add h
    push de
    ld b, c
    add [hl]
    ccf
    add [hl]
    pop de
    ld a, $8c
    ld b, c
    adc h
    ld c, l
    xor b
    or e
    ld b, e
    ld [hl], a
    or e
    ld b, e

jr_019_776d:
    ld [hl], a
    adc h
    pop de
    ld d, d
    inc de
    sbc b
    ld c, l
    sbc b
    db $d3
    ld c, [hl]
    add h
    ld d, b
    add h
    ld c, [hl]
    add h
    db $db
    ld c, l
    adc h
    ld c, e
    adc h
    adc h
    pop de
    ld c, c
    sbc b
    ld c, b
    sbc b
    ld b, [hl]
    adc h
    pop de
    sbc b
    adc h
    pop de
    scf
    adc h
    jr c, jr_019_7739

    adc h
    scf
    adc h
    inc a
    xor b
    adc h
    ld b, e
    adc h
    ld b, h
    xor b
    adc h
    ld b, e
    adc h
    ld c, b
    adc h
    ld d, h
    adc h
    ld h, b
    and b
    or d
    ld sp, hl
    db $76
    or c
    cp l
    nop
    cp [hl]
    ld e, [hl]
    cp a
    ld l, h
    sbc l
    pop de
    dec [hl]
    rla
    adc h
    dec sp
    adc h
    pop de
    sbc h
    pop de
    jr nc, jr_019_7746

    ld [hl-], a
    adc h
    inc [hl]
    adc h
    pop de
    dec [hl]
    rla
    adc h
    dec sp
    adc h
    pop de
    sbc h
    pop de
    jr nc, jr_019_7755

    ld [hl-], a
    adc h
    inc [hl]
    adc h
    or h
    dec [hl]
    adc h
    dec sp
    adc h
    pop de
    sbc h
    pop de
    dec [hl]
    adc h
    rst $20
    ld [hl], $98
    pop de
    dec [hl]
    sbc b
    ld b, a
    sbc h
    jr nc, jr_019_776d

    ld [hl-], a
    adc h
    inc [hl]

jr_019_77e4:
    adc h
    or e
    cp [hl]
    ld [hl], a
    or e
    cp [hl]
    ld [hl], a
    pop de
    dec [hl]
    rla
    sbc h
    add hl, sp

jr_019_77f0:
    adc h
    ld a, [hl-]
    and b
    dec a
    adc h
    ld b, c
    adc h
    inc a
    adc h
    ld b, b
    adc h
    dec [hl]

jr_019_77fc:
    adc h
    ld b, b
    adc h
    pop de
    adc h
    db $d3
    add hl, hl
    add h
    dec hl
    add h
    dec l
    add h

jr_019_7808:
    pop de
    ld l, $17

jr_019_780b:
    adc h
    inc [hl]
    adc h
    pop de
    sbc h
    pop de
    add hl, hl
    adc h
    dec hl
    adc h
    dec l
    adc h
    or h
    or e
    ld [$d178], sp
    ld l, $17
    adc h
    inc [hl]
    adc h
    pop de
    sbc h
    pop de
    ld l, $8c
    rst $20
    cpl
    sbc b
    pop de
    ld l, $98
    ld c, h
    sbc h

jr_019_782e:
    add hl, hl
    adc h
    dec hl
    adc h
    dec l

jr_019_7833:
    adc h
    or e
    ld [$b378], sp
    ld [$d178], sp
    ld l, $17
    sbc h

jr_019_783e:
    ld [hl-], a
    adc h
    inc sp
    and b
    ld [hl], $8c
    ld b, [hl]
    adc h
    dec [hl]
    adc h
    ld b, l
    adc h
    ld l, $8c
    ld b, c
    adc h
    pop de
    adc h
    push de
    ld l, $86
    cpl
    add [hl]
    pop de
    jr nc, jr_019_77e4

    inc [hl]
    adc h
    dec [hl]
    sbc h
    dec hl
    adc h
    ld l, $8c
    cpl
    adc h

jr_019_7862:
    jr nc, jr_019_77f0

    inc [hl]
    adc h
    scf
    sbc h
    dec hl
    adc h
    ld l, $8c
    cpl
    adc h
    jr nc, jr_019_77fc

    ld b, b
    adc h
    ld b, c
    sbc h
    dec hl
    adc h
    ld l, $8c
    cpl
    adc h
    jr nc, jr_019_7808

    ld b, b
    adc h
    ld b, a
    adc h
    ld d, e
    adc h
    ld e, a
    sbc h
    db $d3
    jr nc, jr_019_780b

    ld [hl-], a
    add h
    inc [hl]
    add h
    or d
    xor a
    ld [hl], a
    or c
    cp l
    nop
    cp [hl]
    dec c
    cp a
    jr c, jr_019_7833

    add [hl]
    pop de
    dec [hl]
    ld c, $8c
    inc a
    adc h
    pop de
    sbc h
    pop de
    jr nc, jr_019_782e

    ld [hl-], a
    adc h
    inc [hl]
    add [hl]
    add [hl]
    pop de
    dec [hl]
    ld c, $8c
    inc a
    adc h
    pop de
    sbc h
    pop de
    jr nc, jr_019_783e

    ld [hl-], a
    adc h
    inc [hl]
    add [hl]
    or h
    add [hl]
    dec [hl]
    adc h
    inc a
    adc h
    pop de
    sbc h
    pop de
    dec [hl]
    adc h
    db $d3
    dec a
    add h
    ccf
    add h
    dec a
    add h
    push de
    inc a
    add [hl]
    ld a, [hl-]
    add [hl]
    pop de
    add hl, sp
    adc h
    inc a
    adc h
    ld c, b
    sbc h
    jr nc, jr_019_7862

    ld [hl-], a
    adc h
    inc [hl]
    add [hl]
    or e
    and [hl]
    ld a, b
    or e
    and [hl]
    ld a, b
    add [hl]
    pop de
    dec [hl]
    ld c, $8c
    ld c, l
    sbc b
    ld c, b
    adc h
    ld a, [hl-]
    adc h
    db $d3
    ld c, c
    add h
    ld c, e
    add h
    ld c, c
    add h
    pop de
    ld c, b
    adc h
    ld b, [hl]
    add [hl]
    add [hl]
    dec a
    adc h
    ld b, h
    adc h
    inc a
    adc h
    ld b, e
    adc h
    dec [hl]
    adc h
    ld b, c
    adc h
    pop de
    adc h
    db $d3
    add hl, hl
    add h
    dec hl
    add d
    add d
    dec l
    add h
    pop de
    ld l, $8c

jr_019_7911:
    dec [hl]
    adc h
    pop de
    sbc h
    pop de
    add hl, hl
    adc h
    dec hl
    adc h
    dec l
    add [hl]
    add [hl]
    pop de

jr_019_791e:
    ld l, $0e
    adc h
    dec [hl]
    adc h
    pop de
    sbc h

jr_019_7925:
    pop de
    add hl, hl
    adc h
    dec hl
    adc h
    dec l

jr_019_792b:
    add [hl]
    or h
    add [hl]
    ld l, $8c
    dec [hl]
    adc h
    pop de
    sbc h
    pop de
    ld l, $8c
    db $d3

jr_019_7938:
    ld b, d
    add h
    ld b, h

jr_019_793b:
    add h
    ld b, d
    add h
    push de
    ld b, c
    add [hl]
    ccf
    add [hl]
    pop de
    ld a, $8c
    ld b, c
    adc h
    ld c, l
    sbc h
    add hl, hl
    adc h
    dec hl
    adc h
    dec l
    add [hl]
    or e
    inc e
    ld a, c
    or e
    inc e
    ld a, c
    add [hl]
    pop de
    ld l, $0e
    adc h
    ld d, d
    sbc b
    ld c, l
    adc h
    inc sp
    adc h
    db $d3
    ld c, [hl]
    add h
    ld d, b
    add h
    ld c, [hl]
    add h
    db $db
    ld c, l
    adc h
    ld c, e
    add [hl]
    add [hl]
    pop de
    ld [hl], $8c
    ld c, c
    adc h
    dec [hl]
    adc h
    ld c, b
    adc h
    ld l, $8c
    ld b, [hl]
    adc h
    pop de
    adc h
    push de
    ld l, $86
    cpl
    add [hl]
    pop de
    jr nc, jr_019_7911

    scf
    adc h
    jr c, jr_019_7925

    dec hl
    adc h
    ld l, $8c
    cpl
    add [hl]
    add [hl]
    jr nc, jr_019_791e

    scf
    adc h
    inc a
    sbc h
    dec hl

jr_019_7997:
    adc h
    ld l, $8c
    cpl

jr_019_799b:
    add [hl]
    add [hl]
    jr nc, jr_019_792b

    ld b, e
    adc h
    ld b, h

jr_019_79a2:
    sbc h
    dec hl
    adc h
    ld l, $8c
    cpl
    add [hl]
    add [hl]
    jr nc, jr_019_7938

    ld b, e
    adc h
    ld c, b
    adc h
    ld d, h
    adc h
    ld h, b
    sbc d
    db $d3
    jr nc, jr_019_793b

    ld [hl-], a
    add h
    inc [hl]
    add h
    or d
    sub [hl]
    ld a, b
    or c
    inc bc
    ld [bc], a

jr_019_79c1:
    ldh a, [rPCM12]
    xor b
    ld [hl], a
    adc a
    ld a, b
    ld sp, hl
    db $76
    xor a
    ld [hl], a
    sub [hl]
    ld a, b
    and a
    ld [hl], a
    adc [hl]
    ld a, b
    cp [hl]
    ld a, c
    cp l
    nop
    cp h
    inc a
    cp [hl]
    inc d
    cp [hl]
    rla
    jp $c414


    dec b
    push bc
    ld a, [bc]
    add $00
    cp a
    ld c, e
    sbc l
    or b
    or b
    rst $28
    inc [hl]
    inc d
    and b
    rst $20
    dec [hl]
    sbc b
    db $db
    inc [hl]
    adc h
    dec [hl]
    adc h
    or h
    db $db
    scf
    inc d
    sbc b
    rst $20
    sbc b
    rst $28
    inc a
    and b
    or h
    rst $20
    dec sp
    sbc b
    db $db
    inc a
    adc h
    dec sp
    adc h
    rst $20
    jr c, jr_019_79a2

    db $db
    dec sp
    adc h
    jr c, jr_019_799b

    jp nc, $8337

    jr c, jr_019_7997

    rst $30
    scf
    xor [hl]
    or e
    add sp, $79
    or e
    push af
    ld a, c
    rst $20
    dec sp
    inc d
    sbc b
    db $db
    inc a
    adc h
    dec sp
    adc h
    rst $20
    jr c, jr_019_79c1

    db $db
    scf
    adc h
    dec [hl]
    adc h
    jp nc, $8334

    dec [hl]
    add e
    rst $30
    inc [hl]
    xor [hl]
    or d
    and $79
    or c
    cp l
    nop
    cp [hl]
    ld h, c
    cp a
    ld c, e
    sbc l
    db $d3
    inc a
    inc de
    add [hl]
    dec a
    add [hl]
    ld b, b
    add [hl]
    ld b, c
    add [hl]
    ld b, e
    add [hl]
    ld b, h
    add [hl]
    ld b, a
    add [hl]
    ld c, b
    add [hl]
    ld c, c
    add [hl]
    ld c, b
    add [hl]
    ld b, a
    add [hl]
    ld b, h
    add [hl]
    ld b, e
    add [hl]
    ld b, c
    add [hl]
    ld b, b
    add [hl]
    dec a
    add [hl]
    db $d3
    inc a
    inc de

jr_019_7a66:
    add [hl]
    dec a
    add [hl]
    ld b, b
    add [hl]
    ld b, c
    add [hl]
    ld b, e
    add [hl]
    ld b, h
    add [hl]
    ld b, a
    add [hl]
    ld c, b
    add [hl]
    ld c, c
    add [hl]
    ld c, b
    add [hl]
    ld b, a
    add [hl]
    ld b, h
    add [hl]
    ld b, e
    add [hl]
    ld b, c
    add [hl]
    ld b, b
    add [hl]
    dec a
    add [hl]
    or h

jr_019_7a86:
    or e
    ld h, e
    ld a, d
    db $d3
    inc a
    inc de
    add [hl]
    dec a
    add [hl]
    ld b, b
    add [hl]
    ld b, c
    add [hl]
    ld b, e
    add [hl]
    ld b, h
    add [hl]
    ld b, a
    add [hl]
    ld c, b
    add [hl]
    inc a
    add [hl]
    dec a
    add [hl]
    ld b, b
    add [hl]
    ld b, c
    add [hl]
    ld b, e
    add [hl]
    ld b, h
    add [hl]
    ld b, a
    add [hl]
    ld c, b
    add [hl]
    or h
    or e
    ld h, e
    ld a, d
    or e
    adc c
    ld a, d
    or e
    ld h, e
    ld a, d
    or e
    adc c
    ld a, d
    or e
    ld h, e
    ld a, d
    or e
    adc c
    ld a, d
    or d
    ld b, c
    ld a, d
    or c

jr_019_7ac2:
    cp l
    nop
    cp [hl]
    jr z, jr_019_7a86

    jr c, jr_019_7a66

    db $d4, $26, $0e
    and b
    daa
    and b
    db $d4, $26, $0e
    sbc b
    call nc, $d498
    daa
    and b
    or h
    db $d4, $26, $0e
    and b
    daa
    and b
    or h
    or e
    rst $08
    ld a, d
    or e
    reti


    ld a, d
    or e
    rst $08
    ld a, d
    or e
    reti


    ld a, d
    or e
    rst $08
    ld a, d
    or e
    reti


    ld a, d
    or e
    rst $08
    ld a, d
    or d
    ret


jr_019_7af7:
    ld a, d
    or c
    inc bc
    ld [bc], a
    db $d3
    ld a, c
    ld a, [hl-]
    ld a, d
    jp nz, $e67a

jr_019_7b02:
    ld a, c
    ld b, c
    ld a, d
    ret


    ld a, d
    add hl, sp
    ld a, d
    pop bc
    ld a, d
    ld hl, sp+$7a
    cp l
    nop
    cp h
    ld a, b
    cp [hl]
    ld d, l
    cp a
    ld e, [hl]
    push de
    ld l, $18
    sbc b
    dec [hl]
    sbc b
    add hl, sp
    sbc b
    push de
    ld a, $18
    sbc b
    add hl, sp
    sbc b
    dec [hl]
    sbc b
    or h
    push de

jr_019_7b27:
    cpl
    jr jr_019_7ac2

    ld [hl], $98
    ld a, [hl-]
    sbc b
    or h
    push de
    ccf
    jr @-$66

    ld a, [hl-]
    sbc b
    ld [hl], $98
    or h
    ld l, $98
    dec [hl]
    sbc b
    add hl, sp
    sbc b
    or e
    dec e
    ld a, e
    or e
    ld h, $7b
    or e
    cpl
    ld a, e
    push de
    jr nc, jr_019_7b65

    sbc b
    scf
    sbc b
    dec sp
    sbc b
    or h
    push de
    ld b, b
    dec de
    sbc b
    dec sp
    sbc b
    scf
    sbc b
    or h
    push de
    ld sp, $981b
    jr c, jr_019_7af7

    inc a
    sbc b
    or h
    push de
    ld b, c
    dec de

jr_019_7b65:
    sbc b
    inc a
    sbc b
    jr c, jr_019_7b02

    or h
    or e
    ld b, a
    ld a, e
    or e
    ld d, b
    ld a, e
    or e
    ld e, c
    ld a, e
    or e
    ld h, d
    ld a, e
    push de

jr_019_7b78:
    ld [hl-], a
    dec e
    sbc b
    add hl, sp
    sbc b
    inc a

jr_019_7b7e:
    sbc b
    ld b, b
    sbc b
    ld b, e
    sbc b
    ld b, a
    sbc b
    ld b, l
    sbc b
    ld a, $98
    ld c, d
    sbc b
    ld d, [hl]
    add [hl]
    or c
    cp l
    nop
    cp [hl]
    ld [de], a
    cp a
    jr c, jr_019_7b27

    rst $20
    ld l, $0e
    sbc b
    dec [hl]
    sbc b
    add hl, sp
    add [hl]
    sub d
    rst $20
    ld a, $0e
    sbc b
    add hl, sp
    sbc b
    dec [hl]
    add [hl]
    or h
    sub d
    rst $20
    cpl
    ld c, $98
    ld [hl], $98
    ld a, [hl-]
    add [hl]
    or h
    sub d
    rst $20
    ccf
    ld c, $98
    ld a, [hl-]
    sbc b
    ld [hl], $86
    or h
    sub d
    ld l, $98
    dec [hl]
    sbc b
    add hl, sp
    add [hl]
    or e
    sbc l
    ld a, e
    or e
    and a
    ld a, e
    or e
    or c
    ld a, e
    sub d
    rst $20
    jr nc, jr_019_7bdf

    sbc b
    scf
    sbc b
    dec sp
    add [hl]
    or h
    sub d
    rst $20
    ld b, b
    db $10
    sbc b
    dec sp
    sbc b
    scf
    add [hl]
    or h

jr_019_7bdf:
    sub d

jr_019_7be0:
    rst $20
    ld sp, $9810
    jr c, jr_019_7b7e

    inc a
    add [hl]
    or h
    sub d

jr_019_7bea:
    rst $20
    ld b, c
    db $10
    sbc b
    inc a
    sbc b
    jr c, jr_019_7b78

    or h
    or e
    bit 7, e
    or e
    push de

jr_019_7bf8:
    ld a, e
    or e
    rst $18
    ld a, e
    or e
    jp hl


    ld a, e
    sub d
    rst $20
    ld [hl-], a
    ld [de], a
    sbc b
    add hl, sp
    sbc b
    inc a
    add [hl]
    sub d
    ld b, b
    sbc b
    ld b, e
    sbc b
    ld b, a
    add [hl]
    sub d
    ld b, l
    sbc b
    ld a, $98
    ld c, d
    add [hl]
    sub d
    ld d, [hl]
    sbc b
    or c
    ld [bc], a

jr_019_7c1b:
    nop
    dec c
    ld a, e
    adc [hl]
    ld a, e
    cp l
    nop
    cp h
    ld e, d
    jp $c414


    dec b
    push bc
    ld a, [bc]
    add $00
    cp [hl]
    ld h, b
    or b
    cp a
    ld a, b
    xor [hl]
    jp nc, $1f35

    add e
    ld [hl], $83
    db $d3
    scf
    adc h
    ld [hl-], a
    adc h
    cpl
    adc h
    dec hl
    adc h
    rst $20
    inc l
    sbc b
    db $d3
    ld l, $8c
    inc l
    adc h
    dec hl
    adc h
    cpl
    adc h
    ld [hl-], a
    adc h
    scf
    adc h
    db $db
    jr c, jr_019_7be0

    push de
    ld a, [hl-]
    add [hl]
    inc a
    add [hl]
    db $d3
    ld a, [hl-]
    adc h
    jr c, jr_019_7bea

    add hl, sp
    adc h
    inc [hl]
    adc h
    ld sp, $2d8c
    adc h
    rst $20
    ld l, $98
    db $d3
    jr nc, jr_019_7bf8

    ld l, $8c
    dec l
    adc h
    ld sp, $348c
    adc h
    add hl, sp
    adc h
    db $db
    ld a, [hl-]
    adc h
    push de
    inc a
    add [hl]
    ld a, $86
    db $d3
    inc a
    adc h
    ld a, [hl-]
    adc h
    dec sp
    adc h
    ld [hl], $8c
    inc a
    adc h
    scf
    adc h
    dec a
    adc h
    jr c, jr_019_7c1b

    ld a, $8c
    add hl, sp
    adc h
    ccf
    adc h
    ld a, [hl-]
    adc h
    ld b, b
    adc h
    dec sp
    adc h
    ld b, c
    adc h
    inc a
    adc h
    ld b, d
    adc h
    dec a
    add h
    or c
    cp l
    nop
    cp [hl]
    ld b, a
    cp a
    ld b, d
    adc h
    db $d3
    ld b, a
    ld d, $98
    db $d3
    sbc b
    db $d3
    ld c, b
    sbc b
    db $d3
    adc h
    adc h
    db $d3
    ld b, a
    ld d, $98
    db $d3
    sbc b
    db $d3
    ld c, b
    sbc b
    db $d3
    adc h
    or h
    or e
    or [hl]
    ld a, h
    or e
    or [hl]
    ld a, h
    adc h
    db $d3
    ld c, c
    ld d, $98
    db $d3
    sbc b
    db $d3
    ld c, d
    sbc b
    db $d3
    adc h
    or h
    or e
    ret


    ld a, h
    adc h
    db $d3
    ld c, e
    ld d, $98
    ld c, h
    sbc b
    ld c, l
    sbc b
    ld c, [hl]
    adc h
    adc h
    ld c, a
    sbc b
    ld d, b
    sbc b
    ld d, c
    sbc b
    ld d, d
    add h
    or c
    cp l
    nop
    cp [hl]
    ld d, c
    cp a
    ld b, d
    db $d3
    ld a, $16
    adc h
    ld b, c
    adc h
    ld a, $8c
    ld b, c
    adc h
    ccf
    adc h
    ld b, d
    adc h
    ccf
    adc h
    ld b, d
    adc h
    db $d3
    ld a, $16
    adc h
    ld b, c
    adc h
    ld a, $8c
    ld b, c
    adc h
    ccf
    adc h
    ld b, d
    adc h
    ccf
    adc h
    ld b, d
    adc h
    or h
    or e
    ld b, $7d
    or e
    ld b, $7d
    db $d3
    ld b, b
    ld d, $8c
    ld b, e
    adc h
    ld b, b
    adc h
    ld b, e
    adc h
    ld b, c
    adc h
    ld b, h
    adc h
    ld b, c
    adc h
    ld b, h
    adc h
    or h
    or e
    rra
    ld a, l
    db $d3
    ld b, d
    ld d, $8c
    ld b, l
    adc h
    ld b, e
    adc h
    ld b, [hl]
    adc h
    ld b, h
    adc h
    ld b, a
    adc h
    ld b, l
    adc h
    ld c, b
    adc h
    ld b, [hl]
    adc h
    ld c, c
    adc h
    ld b, a
    adc h
    ld c, d
    adc h
    ld c, b
    adc h
    ld c, e
    adc h
    ld c, c
    adc h
    ld c, h
    add h
    or c
    inc bc
    nop
    jr nz, @+$7e

    and h
    ld a, h
    xor $7c
    cp l
    nop
    cp h
    inc a
    cp [hl]
    dec de
    cp a
    ld e, [hl]
    call nc, $184f
    adc h
    db $d3
    ld c, d
    add h
    ld c, e
    add h
    ld c, d
    add h
    call nc, $8c47
    ld b, e
    adc h
    ld b, h
    add [hl]
    ld b, [hl]
    add [hl]
    ld b, h
    add [hl]
    ld b, e
    sbc d
    ld c, a
    add [hl]
    call nc, $d48c
    add [hl]
    call nc, $8c51
    ld d, d
    adc h
    ld d, e
    adc h
    ld e, e
    adc h
    call nc, $be98
    inc d
    or b
    or b
    db $d4, $48, $18
    adc e
    ret nc

    ld c, [hl]
    add c
    call nc, $8b4f
    ret nc

    ld c, [hl]
    add c
    call nc, $984f
    ld c, b
    adc h
    ld c, a
    adc h
    db $d3
    ld d, b
    add h
    ld d, d
    add h
    ld d, b
    add h
    push de
    ld c, a
    add [hl]
    ld c, l
    add [hl]
    call nc, $ae4c
    jp nc, $8352

    ld d, e
    add e

jr_019_7dbd:
    call nc, $8c54
    ld c, a
    adc h
    ld c, h
    adc h
    ld c, b
    adc h
    push de
    ld c, c
    add [hl]
    ld c, b
    add [hl]
    ld c, c
    add [hl]
    ld d, b
    adc h
    push de
    add [hl]
    push de
    ld c, l
    add [hl]

jr_019_7dd4:
    ld c, c
    add [hl]
    call nc, $b048
    or d
    sub l
    ld a, l
    or c
    cp l
    nop
    cp [hl]
    db $10
    cp a
    ld e, [hl]
    call nc, $183e

jr_019_7de6:
    and b
    db $db
    ccf
    sub d
    call nc, $9a3e
    ld b, a
    add [hl]
    call nc, $d48c
    add [hl]
    call nc, $8c48
    ld c, c
    adc h
    ld c, d
    adc h
    ld e, d
    adc h
    db $db
    sbc b

jr_019_7dfe:
    cp [hl]
    ld a, [bc]
    sbc h
    call nc, $a034
    dec [hl]
    adc h
    sbc h
    call nc, $1834
    and b
    dec [hl]
    adc h
    or h
    or e
    ld b, $7e
    or e
    ld b, $7e
    or e
    ld b, $7e
    or e
    ld b, $7e
    or d
    ld c, $7e
    or c
    cp l
    nop
    cp [hl]
    ld h, b
    cp a
    ld [hl], c
    db $d4, $37, $1d
    and b
    db $db
    jr c, jr_019_7dbd

    call nc, $9a37
    call nc, $d486
    adc h
    call nc, $d486
    dec [hl]
    adc h
    ld [hl], $8c
    scf
    and b
    cp [hl]
    ld h, e
    call nc, $9224
    jr z, jr_019_7dd4

    dec hl
    sub d
    inc h
    adc h
    call nc, $d486

jr_019_7e49:
    dec h
    adc h
    inc l
    adc h
    db $d4, $24, $1d
    sub d
    jr z, @-$6c

    dec hl
    sub d
    inc h
    adc h
    call nc, $d486
    dec h
    adc h
    jp nc, $832b

    add hl, hl
    add e
    jr z, jr_019_7de6

    ld h, $83
    or h
    db $d4, $24, $1d
    sub d
    jr z, jr_019_7dfe

    dec hl
    sub d
    inc h
    adc h
    call nc, $d486
    dec h
    adc h
    inc l
    adc h
    or h
    or e
    ld c, l
    ld a, [hl]
    or e
    ld h, [hl]
    ld a, [hl]
    or e
    ld c, l
    ld a, [hl]
    or d
    ld h, [hl]
    ld a, [hl]
    or c
    cp l
    nop
    cp [hl]
    jr z, jr_019_7e49

    ld d, l
    call nc, $162a
    and b
    db $db
    inc l
    sub d
    call nc, $9a2a
    call nc, $d486
    adc h
    call nc, $d486
    adc h
    call nc, $d48c
    adc h
    call nc, $8c2c
    db $db
    sbc b
    call nc, $162a
    add [hl]
    call nc, $d486
    add [hl]
    call nc, $d486
    inc l
    add [hl]
    ld a, [hl+]
    add [hl]
    call nc, $d486
    add [hl]
    call nc, $d486
    add [hl]
    call nc, $d486
    add [hl]
    call nc, $862c
    ld a, [hl+]
    add [hl]
    call nc, $d486
    add [hl]
    or h
    or e
    and [hl]
    ld a, [hl]
    or e
    and [hl]
    ld a, [hl]
    or e
    and [hl]
    ld a, [hl]
    or e
    and [hl]
    ld a, [hl]
    or e
    and [hl]
    ld a, [hl]
    or d
    adc $7e
    or c
    inc b
    ld [bc], a
    ld h, b
    ld a, l
    db $dd
    ld a, l
    ld e, $7e
    add l
    ld a, [hl]
    sub l
    ld a, l
    ld c, $7e
    ld h, [hl]
    ld a, [hl]
    adc $7e
    db $dc, $7d, $1d
    ld a, [hl]
    add h
    ld a, [hl]
    db $dd
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
