; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04d", ROMX[$4000], BANK[$4d]

    ld c, l
    cp c
    ld b, e
    ret nz

    ld b, e
    rst $00
    ld b, e
    dec bc
    ld b, b
    dec bc
    ld b, d
    adc $43
    pop hl
    ld b, e
    db $f4
    ld b, e
    rlca
    ld b, h
    ld a, [de]
    ld b, h
    dec l
    ld b, h
    ld b, b
    ld b, h
    ld d, e
    ld b, h
    ld h, [hl]
    ld b, h
    ld a, c
    ld b, h
    adc h
    ld b, h
    sbc a
    ld b, h
    or d
    ld b, h
    push bc
    ld b, h
    ret c

    ld b, h
    db $eb
    ld b, h
    cp $44
    ld de, $2445
    ld b, l
    scf
    ld b, l
    ld c, d
    ld b, l
    ld e, l
    ld b, l
    ld [hl], b
    ld b, l
    add e
    ld b, l
    sub [hl]
    ld b, l
    xor c
    ld b, l
    cp h
    ld b, l
    rst $08
    ld b, l
    ld [c], a
    ld b, l
    push af
    ld b, l
    ld [$1b46], sp
    ld b, [hl]
    ld l, $46
    ld b, c
    ld b, [hl]
    ld d, h
    ld b, [hl]
    ld h, a
    ld b, [hl]
    ld a, d
    ld b, [hl]
    adc l
    ld b, [hl]
    and b
    ld b, [hl]
    or e
    ld b, [hl]
    add $46
    reti


    ld b, [hl]
    db $ec
    ld b, [hl]
    rst $38
    ld b, [hl]
    ld [de], a
    ld b, a
    dec h
    ld b, a
    jr c, jr_04d_40b0

    ld c, e
    ld b, a
    ld e, [hl]
    ld b, a
    ld [hl], c
    ld b, a
    add h
    ld b, a
    sub a
    ld b, a
    xor d
    ld b, a
    cp l
    ld b, a
    ret nc

    ld b, a
    db $e3
    ld b, a
    or $47
    add hl, bc
    ld c, b
    inc e
    ld c, b
    cpl
    ld c, b
    ld b, d
    ld c, b
    ld d, l
    ld c, b
    ld l, b
    ld c, b
    ld a, e
    ld c, b
    adc [hl]
    ld c, b
    and c
    ld c, b
    or h
    ld c, b
    rst $00
    ld c, b
    jp c, $ed48

    ld c, b
    nop
    ld c, c
    inc de
    ld c, c
    ld h, $49
    add hl, sp
    ld c, c
    ld c, h
    ld c, c
    ld e, a
    ld c, c
    ld [hl], d
    ld c, c
    add l
    ld c, c
    sbc b
    ld c, c
    xor e
    ld c, c
    cp [hl]
    ld c, c
    pop de
    ld c, c
    db $e4

jr_04d_40b0:
    ld c, c
    rst $30
    ld c, c
    ld a, [bc]
    ld c, d
    dec e
    ld c, d
    jr nc, jr_04d_4103

    ld b, e
    ld c, d
    ld d, [hl]
    ld c, d
    ld l, c
    ld c, d
    ld a, h
    ld c, d
    adc a
    ld c, d
    and d
    ld c, d
    or l
    ld c, d
    ret z

    ld c, d
    db $db
    ld c, d
    xor $4a
    ld bc, $144b
    ld c, e
    daa
    ld c, e
    ld a, [hl-]
    ld c, e
    ld c, l
    ld c, e
    ld h, b
    ld c, e
    ld [hl], e
    ld c, e
    add [hl]
    ld c, e
    sbc c
    ld c, e
    xor h
    ld c, e
    cp a
    ld c, e
    jp nc, $e54b

    ld c, e
    ld hl, sp+$4b
    dec bc
    ld c, h
    ld e, $4c
    ld sp, $444c
    ld c, h
    ld d, a
    ld c, h
    ld l, d
    ld c, h
    ld a, l
    ld c, h
    sub b
    ld c, h
    and e
    ld c, h
    or [hl]
    ld c, h
    ret


    ld c, h
    call c, $ef4c
    ld c, h

jr_04d_4103:
    ld [bc], a
    ld c, l
    dec d
    ld c, l
    jr z, jr_04d_4156

    dec sp
    ld c, l
    ld c, [hl]
    ld c, l
    ld h, c
    ld c, l
    ld [hl], h
    ld c, l
    add a
    ld c, l
    sbc d
    ld c, l
    xor l
    ld c, l
    ret nz

    ld c, l
    db $d3
    ld c, l
    and $4d
    ld sp, hl
    ld c, l
    inc c
    ld c, [hl]
    rra
    ld c, [hl]
    ld [hl-], a
    ld c, [hl]
    ld b, l
    ld c, [hl]
    ld e, b
    ld c, [hl]
    ld l, e
    ld c, [hl]
    ld a, [hl]
    ld c, [hl]
    sub c
    ld c, [hl]
    and h
    ld c, [hl]
    or a
    ld c, [hl]
    jp z, $dd4e

    ld c, [hl]
    ldh a, [$4e]
    inc bc
    ld c, a
    ld d, $4f
    add hl, hl
    ld c, a
    inc a
    ld c, a
    ld c, a
    ld c, a
    ld h, d
    ld c, a
    ld [hl], l
    ld c, a
    adc b
    ld c, a
    sbc e
    ld c, a
    xor [hl]
    ld c, a
    pop bc
    ld c, a
    call nc, $e74f
    ld c, a
    ld a, [$0d4f]

jr_04d_4156:
    ld d, b
    jr nz, jr_04d_41a9

    inc sp
    ld d, b
    ld b, [hl]
    ld d, b
    ld e, c
    ld d, b
    ld l, h
    ld d, b
    ld a, a
    ld d, b
    sub d
    ld d, b
    and l
    ld d, b
    cp b
    ld d, b
    bit 2, b
    sbc $50
    pop af
    ld d, b
    inc b
    ld d, c
    rla
    ld d, c
    ld a, [hl+]
    ld d, c
    dec a
    ld d, c
    ld d, b
    ld d, c
    ld h, e
    ld d, c
    db $76
    ld d, c
    adc c
    ld d, c
    sbc h
    ld d, c
    xor a
    ld d, c
    jp nz, $d551

    ld d, c
    add sp, $51
    ei
    ld d, c
    ld c, $52
    ld hl, $3452
    ld d, d
    ld b, a
    ld d, d
    ld e, d
    ld d, d
    ld l, l
    ld d, d
    add b
    ld d, d
    sub e
    ld d, d
    and [hl]
    ld d, d
    cp c
    ld d, d
    call z, $df52
    ld d, d
    ld a, [c]
    ld d, d
    dec b
    ld d, e
    jr jr_04d_41fc

jr_04d_41a9:
    inc l
    ld d, e
    ccf
    ld d, e
    ld d, d
    ld d, e
    ld h, l
    ld d, e
    ld a, b
    ld d, e
    adc e
    ld d, e
    sbc [hl]
    ld d, e
    or c
    ld d, e
    call nz, $c453
    ld d, e
    call nz, $c453
    ld d, e
    call nz, $c453
    ld d, e
    call nz, $c453
    ld d, e
    call nz, $c453
    ld d, e
    call nz, $c453
    ld d, e
    call nz, $c453
    ld d, e
    call nz, $c453
    ld d, e
    call nz, $c453
    ld d, e
    call nz, $c453
    ld d, e
    call nz, $c453
    ld d, e
    call nz, $c453
    ld d, e
    call nz, $c453
    ld d, e
    call nz, $c453
    ld d, e
    call nz, $c453
    ld d, e
    call nz, $c453
    ld d, e
    call nz, $c453

jr_04d_41fc:
    ld d, e
    call nz, $c453
    ld d, e
    call nz, $c453
    ld d, e
    call nz, $c453
    ld d, e
    call nz, $d353
    ld d, e
    rst $30
    ld d, e
    dec e
    ld d, h
    ld b, h
    ld d, h
    ld l, a
    ld d, h
    sub h
    ld d, h
    ret z

    ld d, h
    xor $54
    jr nz, jr_04d_4272

    ld c, c
    ld d, l
    ld [hl], e
    ld d, l
    sbc [hl]
    ld d, l
    cp d
    ld d, l
    and $55
    db $10
    ld d, [hl]
    ld b, a
    ld d, [hl]
    ld a, d
    ld d, [hl]
    xor c
    ld d, [hl]
    rst $08
    ld d, [hl]
    ld a, [$2456]
    ld d, a
    ld c, d
    ld d, a
    ld a, d
    ld d, a
    xor c
    ld d, a
    db $d4, $57, $00
    ld e, b
    jr nc, jr_04d_4299

    ld h, l
    ld e, b
    sub b
    ld e, b
    or h
    ld e, b
    db $e4
    ld e, b
    inc d
    ld e, c
    inc a
    ld e, c
    ld h, d
    ld e, c
    add a
    ld e, c
    or a
    ld e, c
    push hl
    ld e, c
    ld d, $5a
    ld a, $5a
    ld l, e
    ld e, d
    sub a
    ld e, d
    push bc
    ld e, d
    ld a, [$245a]
    ld e, e
    ld d, h
    ld e, e
    add b
    ld e, e
    xor e
    ld e, e
    reti


    ld e, e
    nop
    ld e, h
    ld [hl+], a
    ld e, h
    ld b, a
    ld e, h
    ld l, e

jr_04d_4272:
    ld e, h
    sub l
    ld e, h
    add $5c
    pop af
    ld e, h
    ld d, $5d
    ld c, c
    ld e, l
    ld h, e
    ld e, l
    add [hl]
    ld e, l
    xor a
    ld e, l
    call nc, $ff5d
    ld e, l
    jr z, jr_04d_42e7

    ld c, e
    ld e, [hl]
    ld a, d
    ld e, [hl]
    and [hl]
    ld e, [hl]
    adc $5e
    db $fd
    ld e, [hl]
    inc e
    ld e, a
    ld b, c
    ld e, a
    ld l, c
    ld e, a

jr_04d_4299:
    adc a
    ld e, a
    cp e
    ld e, a
    sbc $5f
    inc c
    ld h, b
    add hl, sp
    ld h, b
    ld h, a
    ld h, b
    adc a
    ld h, b
    cp h
    ld h, b
    db $ec
    ld h, b
    ld a, [bc]
    ld h, c
    rra
    ld h, c
    ld d, c
    ld h, c
    ld a, e
    ld h, c
    or d
    ld h, c
    rst $18
    ld h, c
    dec b
    ld h, d
    jr c, jr_04d_431d

    ld l, e
    ld h, d
    add c
    ld h, d
    or c
    ld h, d
    call nc, $fa62
    ld h, d
    ld a, [hl+]
    ld h, e
    ld e, c
    ld h, e
    adc h
    ld h, e
    cp l
    ld h, e
    rst $20
    ld h, e
    ld a, [bc]
    ld h, h
    ld a, [hl-]
    ld h, h
    ld h, [hl]
    ld h, h
    sbc c
    ld h, h
    ret nz

    ld h, h
    ld [$1864], a
    ld h, l
    ld b, e
    ld h, l
    ld l, c
    ld h, l
    sub h
    ld h, l
    cp [hl]
    ld h, l
    and $65

jr_04d_42e7:
    ld b, $66
    dec hl
    ld h, [hl]
    ld e, e
    ld h, [hl]
    add [hl]
    ld h, [hl]
    or a
    ld h, [hl]
    rst $20
    ld h, [hl]
    inc d
    ld h, a
    inc a
    ld h, a
    ld e, a
    ld h, a
    adc d
    ld h, a
    xor h
    ld h, a
    rst $10
    ld h, a
    inc bc
    ld l, b
    add hl, hl
    ld l, b
    ld d, h
    ld l, b
    add d
    ld l, b
    or a
    ld l, b
    reti


    ld l, b
    db $fc
    ld l, b
    jr nz, jr_04d_4378

    ld c, b
    ld l, c
    ld [hl], e
    ld l, c
    and c
    ld l, c
    cp l
    ld l, c
    db $eb
    ld l, c
    rrca
    ld l, d
    jr c, jr_04d_4387

jr_04d_431d:
    ld e, l
    ld l, d
    add [hl]
    ld l, d
    xor b
    ld l, d
    sub $6a
    ld [$246b], sp
    ld l, e
    ld d, a
    ld l, e
    ld a, h
    ld l, e
    xor a
    ld l, e
    ldh [rOCPD], a
    dec bc
    ld l, h
    dec [hl]
    ld l, h
    ld h, h
    ld l, h
    adc l
    ld l, h
    pop bc
    ld l, h
    rst $18
    ld l, h
    ld de, $356d
    ld l, l
    ld e, [hl]
    ld l, l
    ld a, e
    ld l, l
    sbc [hl]
    ld l, l
    ret


    ld l, l
    rst $28
    ld l, l
    ld [hl+], a
    ld l, [hl]
    ld b, e
    ld l, [hl]
    ld l, a
    ld l, [hl]
    and h
    ld l, [hl]
    call $f56e
    ld l, [hl]
    jr nz, @+$71

    inc a
    ld l, a
    ld l, d
    ld l, a
    sub b
    ld l, a
    jp nz, $f36f

    ld l, a
    rra
    ld [hl], b
    ld c, e
    ld [hl], b
    db $76
    ld [hl], b
    and h
    ld [hl], b
    jp nc, $fb70

    ld [hl], b
    inc h
    ld [hl], c
    add hl, sp
    ld [hl], c
    ld h, a
    ld [hl], c
    ld a, l
    ld [hl], c
    xor d

jr_04d_4378:
    ld [hl], c
    db $dd
    ld [hl], c
    inc b
    ld [hl], d
    jr nz, jr_04d_43f1

    ld b, b
    ld [hl], d
    ld l, a
    ld [hl], d
    and e
    ld [hl], d
    reti


    ld [hl], d

jr_04d_4387:
    add hl, bc
    ld [hl], e
    dec l
    ld [hl], e
    ld d, l
    ld [hl], e
    ld a, h
    ld [hl], e
    and c
    ld [hl], e
    ret nc

    ld [hl], e
    db $fc
    ld [hl], e
    dec h
    ld [hl], h
    ld c, a
    ld [hl], h
    ld a, d
    ld [hl], h
    and c
    ld [hl], h
    rst $08
    ld [hl], h
    or $74
    inc hl
    ld [hl], l
    ld d, c
    ld [hl], l
    db $76
    ld [hl], l
    adc l
    ld [hl], l
    cp h
    ld [hl], l
    ld [$1975], a
    db $76
    ccf
    db $76
    ld h, h
    db $76
    sub [hl]
    db $76
    push bc
    db $76
    or $76

Call_04d_43b9:
    ld de, $4007
    call Call_000_05b6
    ret


    ld de, $4007
    call Call_000_05f6
    ret


    call Call_04d_43b9
    call Call_000_0609
    ret


    db $10
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld de, $3e43
    ld c, d
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR10]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld [de], a
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]

jr_04d_43f1:
    ld h, d
    ld h, d
    ldh a, [rNR10]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc de
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR10]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR10]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    dec d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR10]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld d, $43
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR10]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    rla
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR10]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    jr jr_04d_44a1

    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [$64]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR10]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    jr nc, jr_04d_44c2

    ld b, c
    inc sp
    ld c, c
    ld a, $4b
    ld d, c
    ld h, d
    ldh a, [rNR10]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc h
    ld c, c
    ld c, d
    ld b, [hl]
    ld c, a
    ld a, $47
    ld h, d
    ld h, d
    ldh a, [rNR10]
    ld b, e

jr_04d_44a1:
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    dec h
    ld c, h
    ld c, d
    ccf
    ld h, $4f
    ld a, $44
    ld h, d
    ldh a, [rNR10]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    dec [hl]
    ld c, h
    ccf
    ld c, h
    ld d, b
    ld d, c
    ld b, d

jr_04d_44c2:
    ld c, a
    ld h, d
    ldh a, [rNR10]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld [hl], $48
    ld d, d
    ld c, c
    ld c, c
    ld c, a
    ld c, h
    ld c, h
    ld h, d
    ldh a, [$64]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR10]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR10]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    jr nc, jr_04d_454b

    ld d, c
    ld a, $49
    daa
    ld c, a
    ld a, $48
    ldh a, [$30]
    ld b, d
    ld d, c
    ld a, $49
    ld d, [hl]
    ld h, d
    ld h, d
    ld h, d
    jr nc, jr_04d_455e

    ld d, c
    ld a, $49
    ld d, [hl]
    ld h, d
    ld h, d
    ld h, d
    ldh a, [$30]
    ld b, d
    ld d, c
    ld a, $3f
    ccf
    ld c, c
    ld b, d
    ld h, d
    jr nc, jr_04d_4571

    ld d, c
    ld a, $3f
    ccf
    ld c, c
    ld b, d
    ld h, d
    ldh a, [$30]
    ld b, d
    ld d, c
    ld a, $49
    ld l, $46
    ld c, e
    ld b, h
    jr nc, jr_04d_4584

    ld d, c
    ld a, $49
    ld l, $46
    ld c, e
    ld b, h
    ldh a, [rNR11]

jr_04d_454b:
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    db $10
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR11]

jr_04d_455e:
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld [de], a
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR11]

jr_04d_4571:
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc de
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR11]

jr_04d_4584:
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR11]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    dec d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR11]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld d, $43
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR11]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    rla
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR11]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    jr jr_04d_461d

    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [$27]
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld l, $46
    ld b, c
    daa
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld l, $46
    ld b, c
    ldh a, [rNR11]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc sp
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, [hl]
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR11]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld a, [hl+]
    ld d, d
    ld c, c
    ld c, l
    dec h
    ld b, d
    ld a, $50
    ld d, c
    ldh a, [rNR11]
    ld b, e

jr_04d_461d:
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    jr nc, jr_04d_4664

    ld b, c
    ld h, $4c
    ld c, e
    ld b, c
    ld c, h
    ld c, a
    ldh a, [rNR11]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    add hl, sp
    ld c, h
    ld c, h
    ld b, c
    ld c, h
    ld c, c
    ld c, c
    ld h, d
    ld h, d
    ldh a, [rNR11]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld a, [hl+]
    ld c, h
    dec hl
    ld c, h
    ld c, l
    ld c, l
    ld b, d
    ld c, a
    ld h, d
    ldh a, [rNR11]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld a, [hl+]
    ld d, d
    ld c, c
    ld c, l
    ld c, l
    ld c, c
    ld b, d

jr_04d_4664:
    ld h, d
    ld h, d
    ldh a, [rNR11]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    dec h
    ld a, $3f
    ccf
    ld c, c
    ld b, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR11]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc h
    ld c, a
    ld c, d
    ld d, [hl]
    ld h, $4f
    ld a, $3f
    ld h, d
    ldh a, [$64]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR11]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    dec h
    ld b, [hl]
    ld b, h
    dec [hl]
    ld c, h
    ld c, h
    ld d, b
    ld d, c
    ld h, d
    ldh a, [rNR52]
    ld c, a
    ld b, d
    ld d, b
    ld d, c
    ld c, l
    ld b, d
    ld c, e
    ld d, c
    ld h, $4f
    ld b, d
    ld d, b
    ld d, c
    ld c, l
    ld b, d
    ld c, e
    ld d, c
    ldh a, [$3a]
    ld b, [hl]
    ld c, e
    ld b, h
    ld [hl], $4b
    ld a, $48
    ld b, d
    ld a, [hl-]
    ld b, [hl]
    ld c, e
    ld b, h
    ld [hl], $4b
    ld a, $48
    ld b, d
    ldh a, [rNR50]
    ld c, e
    ld b, c
    ld c, a
    ld b, d
    ld a, $49
    ld h, d
    ld h, d
    jr nc, jr_04d_4726

    ld b, c
    ld d, d
    ld d, b
    ld a, $28
    ld d, [hl]
    ld b, d
    ldh a, [rNR11]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    cpl
    ld b, [hl]
    ld c, h
    ld c, e
    ld b, d
    ld d, l
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR11]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc sp
    ld b, l
    ld c, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld d, l
    ld h, d
    ld h, d
    ldh a, [$36]
    ld c, b
    ld d, [hl]
    daa
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld [hl-], a
    ld c, a
    ld c, h
    ld b, b
    ld b, l
    ld b, [hl]
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR12]

jr_04d_4726:
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    db $10
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR12]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld de, $3e43
    ld c, d
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR12]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc de
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR12]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR12]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    dec d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [$64]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR12]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    rla
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR12]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    jr jr_04d_47f8

    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [$64]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR12]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    jr nc, jr_04d_482d

    ld b, c
    ld c, a
    ld c, h
    ld c, e
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR12]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    scf
    ld c, h
    ld c, a
    ld d, c
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ldh a, [rNR12]
    ld b, e

jr_04d_47f8:
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    daa
    ld d, d
    ld b, b
    ld c, b
    ld l, $46
    ld d, c
    ld b, d
    ld h, d
    ldh a, [rNR12]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld [hl], $51
    ld d, d
    ccf
    ld d, b
    ld d, d
    ld b, b
    ld c, b
    ld h, d
    ldh a, [rNR12]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld d, $43
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d

jr_04d_482d:
    ld h, d
    ldh a, [rNR12]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld [hl-], a
    ld c, a
    ld b, b
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR12]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld [hl], $3e
    ccf
    ld c, a
    ld b, d
    jr nc, jr_04d_4890

    ld c, e
    ld h, d
    ldh a, [rNR12]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    cpl
    ld b, [hl]
    ld d, a
    ld a, $4f
    ld b, c
    add hl, hl
    ld c, c
    ld d, [hl]
    ldh a, [rNR12]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    add hl, hl
    ld a, $4b
    ld b, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [rNR12]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    daa
    ld c, a
    ld a, $48
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [rNR12]
    ld b, e

jr_04d_4890:
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    jr nc, jr_04d_48d7

    ld b, c
    inc sp
    ld b, d
    ld b, b
    ld c, b
    ld b, d
    ld c, a
    ldh a, [$3a]
    ld b, [hl]
    ld c, c
    ld b, c
    inc h
    ld c, l
    ld b, d
    ld h, d
    ld h, d
    ld a, [hl-]
    ld b, [hl]
    ld c, c
    ld b, c
    inc h
    ld c, l
    ld b, d
    ld h, d
    ld h, d
    ldh a, [$37]
    ld c, a
    ld d, d
    ld c, d
    ld c, l
    ld b, d
    ld d, c
    ld b, d
    ld c, a
    scf
    ld c, a
    ld d, d
    ld c, d
    ld c, l
    ld b, d
    ld d, c
    ld b, d
    ld c, a
    ldh a, [rNR12]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d

jr_04d_48d7:
    ld h, d
    ld h, d
    ldh a, [rNR12]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    daa
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR12]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    jr z, jr_04d_494e

    ld b, d
    dec h
    ld a, $49
    ld c, c
    ld h, d
    ld h, d
    ldh a, [rNR13]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    db $10
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR13]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld de, $3e43
    ld c, d
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR13]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld [de], a
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR13]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR13]
    ld b, e

jr_04d_494e:
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    dec d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR13]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld d, $43
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR13]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    rla
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR13]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    jr jr_04d_49d3

    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [$64]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [$64]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR13]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    dec [hl]
    ld c, h
    ld b, b
    ld c, b
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$64]
    ld h, h

jr_04d_49d3:
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR13]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    daa
    ld c, a
    ld c, h
    ld c, c
    ld c, c
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR13]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld h, $4c
    ld b, [hl]
    ld c, c
    dec h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, d
    ldh a, [rNR13]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc l
    ld b, b
    ld b, d
    jr nc, @+$40

    ld c, e
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR13]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld a, [hl+]
    ld b, [hl]
    ld d, b
    ld c, d
    ld c, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [$64]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR13]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    dec [hl]
    ld a, $56
    ccf
    ld d, d
    ld c, a
    ld c, e
    ld h, d
    ld h, d
    ldh a, [rNR13]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    daa
    ld a, $4b
    ld b, b
    ld b, d
    add hl, sp
    ld b, d
    ld b, h
    ld b, [hl]
    ldh a, [rNR51]
    ld c, c
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld b, c
    ld d, [hl]
    inc sp
    ld b, l
    ld c, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld d, l
    ld h, d
    ld h, d
    ldh a, [rNR14]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    db $10
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR14]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld de, $3e43
    ld c, d
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR14]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld [de], a
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR14]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc de
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR14]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    dec d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR14]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld d, $43
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR14]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    rla
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR14]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    jr jr_04d_4b4f

    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [$64]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR14]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld a, [hl+]
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    ld b, b
    ld a, $41
    ld a, $f0
    inc d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    add hl, hl
    ld a, $40
    ld b, d
    ld c, a
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR14]
    ld b, e

jr_04d_4b4f:
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc sp
    ld b, [hl]
    ld d, l
    ld d, [hl]
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR14]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld sp, $5146
    ld b, d
    ld a, [hl-]
    ld b, l
    ld b, [hl]
    ld c, l
    ld h, d
    ldh a, [rNR14]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    add hl, hl
    ld d, d
    ld c, e
    ld c, b
    ld d, [hl]
    dec h
    ld b, [hl]
    ld c, a
    ld b, c
    ldh a, [rNR14]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc sp
    ld b, [hl]
    ld c, c
    ld c, c
    ld c, h
    ld d, h
    dec [hl]
    ld a, $51
    ldh a, [rNR14]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    daa
    ld a, $4f
    ld c, b
    jr z, jr_04d_4bfe

    ld b, d
    ld h, d
    ld h, d
    ldh a, [$28]
    ld d, e
    ld b, [hl]
    ld c, c
    ld [hl], $42
    ld b, d
    ld b, c
    ld h, d
    jr z, jr_04d_4c0a

    ld b, [hl]
    ld c, c
    ld [hl], $42
    ld b, d
    ld b, c
    ld h, d
    ldh a, [$30]
    ld a, $4b
    jr z, jr_04d_4c02

    ld d, c
    ld b, d
    ld c, a
    ld h, d
    jr nc, jr_04d_4c08

    ld c, e
    jr z, @+$40

    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ldh a, [rNR14]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [$64]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [$15]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c

jr_04d_4bfe:
    ld d, [hl]
    ld h, d
    ld h, d
    db $10

jr_04d_4c02:
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]

jr_04d_4c08:
    ld h, d
    ld h, d

jr_04d_4c0a:
    ldh a, [$15]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld de, $3e43
    ld c, d
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [$15]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld [de], a
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [$15]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc de
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [$15]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [$15]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld d, $43
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [$15]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    rla
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [$15]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    jr jr_04d_4ccb

    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [$64]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [$64]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [$15]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    add hl, hl
    ld c, c
    ld c, h
    ld c, a
    ld a, $30
    ld a, $4b
    ld h, d
    ldh a, [$15]
    ld b, e

jr_04d_4ccb:
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc l
    ld c, a
    ld c, h
    ld c, e
    scf
    ld d, d
    ld c, a
    ld d, c
    ld h, d
    ldh a, [$15]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc h
    ld c, d
    ccf
    ld b, d
    ld c, a
    ld a, [hl-]
    ld b, d
    ld b, d
    ld b, c
    ldh a, [$15]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld [hl], $3e
    ld b, b
    ld b, b
    ld b, d
    ld c, a
    ld h, d
    ld h, d
    ld h, d
    ldh a, [$15]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld [hl], $4d
    ld c, h
    ld c, h
    ld c, b
    ld d, [hl]
    ld h, d
    ld h, d
    ld h, d
    ldh a, [$15]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    daa
    ld a, $4f
    ld c, b
    ld h, $4f
    ld a, $3f
    ld h, d
    ldh a, [$15]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    add hl, hl
    ld a, $46
    ld c, a
    ld d, [hl]
    dec [hl]
    ld a, $51
    ld h, d
    ldh a, [$36]
    ld d, c
    ld a, $44
    dec h
    ld d, d
    ld b, h
    ld h, d
    ld h, d
    ld [hl], $51
    ld a, $44
    dec h
    ld d, d
    ld b, h
    ld h, d
    ld h, d
    ldh a, [$2b]
    ld c, h
    ld c, a
    ld c, e
    dec h
    ld b, d
    ld b, d
    ld d, c
    ld h, d
    dec hl
    ld c, h
    ld c, a
    ld c, e
    dec h
    ld b, d
    ld b, d
    ld d, c
    ld h, d
    ldh a, [$15]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR21]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    db $10
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR21]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [$64]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR21]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc de
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR21]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR21]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    dec d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR21]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    rla
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR21]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    jr jr_04d_4e47

    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [$64]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR21]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld [de], a
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR21]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld de, $3e43
    ld c, d
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR21]
    ld b, e

jr_04d_4e47:
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    cpl
    ld b, [hl]
    ld d, a
    ld a, $4f
    ld b, c
    jr nc, jr_04d_4e94

    ld c, e
    ldh a, [rNR21]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    daa
    ld a, $4f
    ld c, b
    dec hl
    ld c, h
    ld c, a
    ld c, e
    ld h, d
    ldh a, [rNR21]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    dec h
    ld b, d
    ld a, $4b
    jr nc, jr_04d_4eb8

    ld c, e
    ld h, d
    ld h, d
    ldh a, [rNR21]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    dec hl
    ld a, $4a
    ld c, d
    ld b, d
    ld c, a
    jr nc, jr_04d_4ecd

    ld c, e
    ldh a, [$27]
    ld b, d
    ld c, d

jr_04d_4e94:
    ld c, h
    ld c, e
    ld b, [hl]
    ld d, c
    ld b, d
    ld h, d
    daa
    ld b, d
    ld c, d
    ld c, h
    ld c, e
    ld b, [hl]
    ld d, c
    ld b, d
    ld h, d
    ldh a, [rSB]
    jr z, @+$58

    ld b, d
    ld h, $49
    ld c, h
    ld d, h
    ld c, e
    ld bc, $5628
    ld b, d
    ld h, $49
    ld c, h
    ld d, h
    ld c, e
    ldh a, [rNR21]

jr_04d_4eb8:
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    jr nc, jr_04d_4f00

    ld b, c
    daa
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ldh a, [$2a]
    ld c, a
    ld b, d

jr_04d_4ecd:
    ld c, e
    ld a, $41
    ld a, $49
    ld h, d
    ld a, [hl+]
    ld c, a
    ld b, d
    ld c, e
    ld a, $41
    ld a, $49
    ld h, d
    ldh a, [rNR21]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    dec [hl]
    ld c, h
    ld b, h
    ld d, d
    ld b, d
    ld sp, $5146
    ld b, d
    ldh a, [rNR21]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    dec h
    ld b, [hl]
    ld b, h
    jr z, jr_04d_4f54

    ld b, d
    ld h, d

jr_04d_4f00:
    ld h, d
    ld h, d
    ldh a, [$64]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR21]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc h
    ld c, a
    ld c, d
    ld c, h
    ld c, a
    inc sp
    ld b, d
    ld b, c
    ld b, d
    ldh a, [rNR50]
    ld c, b
    ld d, d
    ccf
    ld a, $4f
    ld h, d
    ld h, d
    ld h, d
    dec [hl]
    ld a, $46
    ld c, e
    dec hl
    ld a, $54
    ld c, b
    ld h, d
    ldh a, [rNR52]
    ld b, d
    ld c, e
    ld d, c
    ld a, $50
    ld a, $52
    ld c, a
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, c
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, d
    ld c, d
    ldh a, [rNR22]
    ld b, e
    ld a, $4a
    ld b, [hl]

jr_04d_4f54:
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    db $10
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR22]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld [hl], $54
    ld c, h
    ld c, a
    ld b, c
    ld b, h
    ld c, h
    ld c, e
    ld h, d
    ldh a, [rNR22]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld [de], a
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR22]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc de
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR22]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR22]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    dec d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR22]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld d, $43
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR22]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    jr jr_04d_5022

    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [$64]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR22]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld a, [hl+]
    ld b, [hl]
    ld a, $4b
    ld d, c
    ld [hl], $49
    ld d, d
    ld b, h
    ldh a, [rNR22]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    jr nc, @+$48

    ld d, b
    ld d, c
    ld d, [hl]
    ld a, [hl-]
    ld b, [hl]
    ld c, e
    ld b, h
    ldh a, [rNR22]
    ld b, e

jr_04d_5022:
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld de, $3e43
    ld c, d
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR22]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld a, [hl-]
    ld b, [hl]
    ld c, e
    ld b, c
    dec h
    ld b, d
    ld a, $50
    ld d, c
    ldh a, [rNR22]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld a, [hl-]
    ld b, d
    ld b, d
    ld b, c
    dec h
    ld d, d
    ld b, h
    ld h, d
    ld h, d
    ldh a, [$27]
    ld b, d
    ld a, $41
    ld sp, $5146
    ld b, d
    ld h, d
    daa
    ld b, d
    ld a, $41
    ld sp, $5146
    ld b, d
    ld h, d
    ldh a, [rNR22]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [$2b]
    ld c, h
    ld c, a
    ld c, b
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    dec hl
    ld c, h
    ld c, a
    ld c, b
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR51]
    ld c, h
    ld c, e
    ld b, d
    ld [hl], $49
    ld a, $53
    ld b, d
    dec h
    ld c, h
    ld c, e
    ld b, d
    ld [hl], $49
    ld a, $53
    ld b, d
    ldh a, [$36]
    ld c, b
    ld b, d
    ld c, c
    ld b, d
    ld d, c
    ld c, h
    ld c, a
    ld h, d
    ld [hl], $48
    ld b, d
    ld c, c
    ld b, d
    ld d, c
    ld c, h
    ld c, a
    ld h, d
    ldh a, [$64]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR23]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    db $10
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR23]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld de, $3e43
    ld c, d
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR23]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld [de], a
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR23]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc de
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR23]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR23]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    dec d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR23]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld d, $43
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [rNR23]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    rla
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ldh a, [$64]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR23]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    cpl
    ld b, [hl]
    ld c, l
    ld d, b
    ld d, [hl]
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR23]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    inc h
    ld c, e
    ld b, c
    ld c, a
    ld b, d
    ld a, $49
    ld h, d
    ld h, d
    ldh a, [rNR23]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [rNR23]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld a, [hl+]
    ld b, [hl]
    ld a, $4b
    ld d, c
    ld a, [hl-]
    ld c, h
    ld c, a
    ld c, d
    ldh a, [rNR23]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld a, [hl-]
    ld b, [hl]
    ld c, e
    ld b, h
    scf
    ld c, a
    ld b, d
    ld b, d
    ld h, d
    ldh a, [rNR23]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld [hl], $48
    ld d, d
    ld c, c
    dec [hl]
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, a
    ldh a, [rNR23]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld [hl], $4b
    ld a, $46
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    ld h, d
    ldh a, [$2a]
    ld c, h
    ld c, h
    ld c, l
    ld b, [hl]
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    add hl, hl
    ld b, [hl]
    ld c, a
    ld b, d
    ld a, [hl-]
    ld b, d
    ld b, d
    ld b, c
    ld h, d
    ldh a, [$30]
    ld b, d
    ld d, c
    ld a, $49
    daa
    ld c, a
    ld a, $48
    inc h
    ld c, a
    ld b, b
    daa
    ld b, d
    ld c, d
    ld c, h
    ld c, e
    ld h, d
    ldh a, [$35]
    ld c, h
    ccf
    ld c, h
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    cpl
    ld b, d
    ld c, h
    ld h, d
    ld h, d
    ldh a, [rNR23]
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld h, d
    dec h
    ld c, h
    ld d, l
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, d
    ldh a, [$2a]
    ld c, h
    ld c, h
    ld c, l
    ld b, [hl]
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld a, [hl+]
    ld c, h
    ld c, h
    ld c, l
    ld b, [hl]
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [$30]
    ld d, d
    ld b, c
    daa
    ld c, h
    ld c, c
    ld c, c
    ld h, d
    ld h, d
    jr nc, @+$54

    ld b, c
    daa
    ld c, h
    ld c, c
    ld c, c
    ld h, d
    ld h, d
    ldh a, [$2a]
    ld c, h
    ld c, c
    ld b, d
    ld c, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, d
    ld c, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [$36]
    ld c, l
    ld b, [hl]
    ld c, b
    ld d, [hl]
    dec h
    ld c, h
    ld d, [hl]
    ld h, d
    ld [hl], $4d
    ld b, [hl]
    ld c, b
    ld d, [hl]
    dec h
    ld c, h
    ld d, [hl]
    ld h, d
    ldh a, [$2c]
    ld b, b
    ld b, d
    jr nc, @+$40

    ld c, e
    ld h, d
    ld h, d
    ld h, d
    cpl
    ld a, $53
    ld a, $30
    ld a, $4b
    ld h, d
    ld h, d
    ldh a, [$36]
    ld b, d
    ld c, a
    ld d, e
    ld a, $4b
    ld d, c
    ld h, d
    ld h, d
    ld a, [hl+]
    ld c, a
    ld b, d
    ld a, $51
    daa
    ld c, a
    ld a, $48
    ldh a, [$27]
    ld c, a
    ld a, $40
    ld c, h
    cpl
    ld c, h
    ld c, a
    ld b, c
    daa
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, d
    ld b, h
    ld c, h
    ld c, e
    ldh a, [$3a]
    ld b, l
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    jr nc, jr_04d_5319

    ld d, c
    ld a, $49
    ld l, $46
    ld c, e
    ld b, h
    ldh a, [$2d]
    ld a, $4a
    ld b, [hl]
    ld c, a
    ld d, d
    ld d, b
    ld h, d
    ld h, d
    dec [hl]
    ld c, h
    ld d, b
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, d
    ldh a, [$2b]
    ld a, $4f
    ld b, h
    ld c, h
    ld c, e
    ld h, d
    ld h, d
    ld h, d
    ld [hl-], a
    ld c, a
    ld c, h
    ld b, b
    ld b, l
    ld b, [hl]
    ld h, d
    ld h, d
    ld h, d
    ldh a, [$27]
    ld c, a
    ld a, $40
    ld c, h
    cpl
    ld c, h
    ld c, a
    ld b, c
    ld [hl], $46
    ld b, c
    ld c, h
    ld b, l
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [$27]

jr_04d_5319:
    ld d, d
    ld c, a
    ld c, a
    ld a, $4b
    ld h, d
    ld h, d
    ld h, d
    daa
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, d
    ld b, h
    ld c, h
    ld c, e
    ld h, d
    ldh a, [$33]
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    ld h, d
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    cpl
    ld b, d
    ld c, h
    ld h, d
    ld h, d
    ldh a, [$28]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, b
    ld h, d
    ld h, d
    ld h, d
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, c
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$30]
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, a
    ld a, $3e
    ld d, b
    ld [hl], $4d
    ld b, [hl]
    ld c, b
    ld b, d
    ld c, a
    ld c, h
    ld d, d
    ld d, b
    ldh a, [rNR51]
    ld a, $4f
    ld a, $4a
    ld c, h
    ld d, b
    ld h, d
    ld h, d
    daa
    ld a, $4f
    ld c, b
    dec hl
    ld c, h
    ld c, a
    ld c, e
    ld h, d
    ldh a, [$3d]
    ld c, h
    ld c, d
    ld a, $62
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    jr nc, jr_04d_53c9

    ld c, a
    ld d, d
    ld b, c
    ld c, a
    ld a, $3e
    ld d, b
    ldh a, [$27]
    ld b, d
    ld a, $51
    ld b, l
    jr nc, jr_04d_53de

    ld c, a
    ld b, d
    inc h
    ld c, a
    ld c, d
    ld c, h
    ld c, a
    ld c, l
    ld b, [hl]
    ld c, h
    ld c, e
    ldh a, [$27]
    ld b, d
    ld a, $51
    ld b, l
    jr nc, jr_04d_53f1

    ld c, a
    ld b, d
    jr nc, jr_04d_53fb

    ld b, c
    ld c, h
    ld d, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ldh a, [$27]
    ld b, d
    ld a, $51
    ld b, l
    jr nc, @+$4e

    ld c, a
    ld b, d
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    ld h, d
    ld h, d
    ldh a, [$64]
    ld h, h
    ld h, h
    ld h, h
    ld h, h

jr_04d_53c9:
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ldh a, [$30]
    ld c, h
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    or [hl]
    ld h, d
    ld b, a
    ld d, d
    ld c, d

jr_04d_53de:
    ld c, l
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld d, c
    ld a, $46
    ld c, c
    ld h, d
    or [hl]
    ld h, d

jr_04d_53f1:
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ldh a, [$2f]
    ld a, $4f
    ld b, h

jr_04d_53fb:
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld a, $4b
    ld h, d
    ld a, $f1
    ld c, a
    ld b, d
    ld b, h
    ld d, d
    ld c, c
    ld a, $4f
    ld h, d
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, d
    or [hl]
    pop af
    ld d, b
    ld c, l
    ld c, h
    ld d, c
    ld d, c
    ld b, d
    ld b, c
    ldh a, [$29]
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    pop af
    ld d, c
    ld b, l
    ld a, $51
    ld h, d
    ld b, h
    ld c, a
    ld b, d
    ld d, h
    ld h, d
    ld c, h
    ld c, e
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld c, c
    ld b, d
    ld a, $43
    ld d, [hl]
    ld h, d
    ld d, c
    ld c, h
    ld c, l
    pop af
    ld a, $3f
    ld d, b
    ld c, h
    ld c, a
    ccf
    ld d, b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, a
    ld b, h
    ld d, [hl]
    pop af
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld d, b
    ld d, d
    ld c, e
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ldh a, [$2b]
    ld b, [hl]
    ld b, c
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld d, b
    ld b, l
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld d, h
    ld b, l
    ld b, d
    ld c, e
    pop af
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ld c, b
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld c, a
    ld b, [hl]
    ld b, c
    ld b, [hl]
    ld c, e
    ld b, h
    pop af
    ld c, h
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld c, l
    ld a, $4f
    ld d, c
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld l, b
    ld h, d
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ldh a, [rNR52]
    ld a, $4b
    ld h, d
    ld d, c
    ld c, a
    ld a, $4b
    ld d, b
    ld b, e
    ld c, h
    ld c, a
    ld c, d
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld h, d
    ld b, [hl]
    ld c, e
    ld d, c
    ld c, h
    pop af
    ld a, $4b
    ld d, [hl]
    ld h, d
    ld d, b
    ld b, l
    ld a, $4d
    ld b, d
    ldh a, [rNR51]
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld c, a
    ld a, $4d
    ld c, l
    ld b, d
    ld b, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld a, $f1
    ccf
    ld c, h
    ld d, l
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    pop af
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld l, b
    ld h, d
    ld d, b
    ld b, l
    ld a, $4d
    ld b, d
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld d, b
    ld d, c
    ld h, d
    ld a, $3f
    ld d, d
    ld c, e
    ld b, c
    ld a, $4b
    ld d, c
    pop af
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, l
    ld c, h
    ld c, l
    ld d, d
    ld c, c
    ld a, $4f
    pop af
    ld d, b
    ld c, l
    ld b, d
    ld b, b
    ld b, [hl]
    ld b, d
    ldh a, [$38]
    ld d, b
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld b, e
    ld d, d
    ld c, c
    pop af
    ld d, c
    ld b, d
    ld c, e
    ld d, c
    ld a, $40
    ld c, c
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld c, d
    ld c, h
    ld d, e
    ld b, d
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    ldh a, [$2b]
    ld a, $50
    ld h, d
    ld a, $62
    ld c, a
    ld b, d
    ld b, c
    ld h, d
    jr nc, jr_04d_55cb

    ld b, l
    ld a, $54
    ld c, b
    pop af
    ld a, $4b
    ld b, c
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld h, d
    ccf
    ld c, a
    ld a, $53
    ld b, d
    pop af
    or [hl]
    ld h, d
    ld c, l
    ld c, a
    ld c, h
    ld d, d
    ld b, c
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld d, b
    ld c, b
    ld b, [hl]
    ld c, e
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $50
    pop af
    ld b, l
    ld a, $4f
    ld b, c
    ld h, d
    ld a, $50
    ld h, d
    ld c, a
    ld c, h
    ld b, b
    ld c, b
    ldh a, [$32]
    ld b, [hl]
    ld c, c
    ld h, d
    ld b, e
    ld c, c
    ld c, h
    ld d, h
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld c, a
    ld c, h
    ld d, d
    ld b, h
    ld b, l

jr_04d_55cb:
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld h, d
    ld b, [hl]
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld a, $41
    pop af
    ld c, h
    ld b, e
    ld h, d
    ccf
    ld c, c
    ld c, h
    ld c, h
    ld b, c
    ldh a, [$29]
    ld c, c
    ld b, d
    ld b, d
    ld d, b
    ld h, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld h, d
    ld b, e
    ld a, $50
    ld d, c
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    pop af
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld c, c
    ld b, d
    ld b, h
    ld d, b
    ldh a, [$36]
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld a, $49
    ld h, d
    ld [hl], $4d
    ld c, h
    ld d, c
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    pop af
    ld b, b
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld c, e
    ld b, d
    ld b, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld d, c
    ld c, h
    ld h, d
    ld c, h
    ld c, e
    ld b, d
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld c, d
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ldh a, [$36]
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld a, $49
    ld h, d
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    pop af
    ld b, b
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld c, e
    ld b, d
    ld b, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld d, c
    ld c, h
    ld h, d
    ld c, h
    ld c, e
    ld b, d
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld c, d
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, c
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld b, [hl]
    ld c, a
    ld c, h
    ld c, e
    pop af
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    pop af
    ld a, $62
    ld c, d
    ld b, d
    ld d, c
    ld a, $49
    ld h, d
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ldh a, [$33]
    ld c, a
    ld c, h
    ld b, c
    ld d, d
    ld b, b
    ld b, d
    ld d, b
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    pop af
    ld d, h
    ld b, d
    ld a, $4d
    ld c, h
    ld c, e
    ld d, b
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ldh a, [$36]
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld a, $49
    ld h, d
    jr nc, jr_04d_571b

    ld d, c
    ld a, $49
    ld d, [hl]
    ld d, b
    pop af
    ld b, b
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld c, e
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld c, d
    pop af
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld b, d
    ld d, b
    ld d, c
    pop af
    ld b, b
    ld c, a
    ld b, d
    ld a, $51
    ld d, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d

jr_04d_571b:
    ld b, d
    ld h, d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ldh a, [$2c]
    ld d, c
    ld h, d
    ld b, c
    ld c, h
    ld b, d
    ld d, b
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld b, h
    ld c, a
    ld c, h
    ld d, h
    pop af
    ld a, $4b
    ld d, [hl]
    ld h, d
    ccf
    ld b, [hl]
    ld b, h
    ld b, h
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld a, $4b
    pop af
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ldh a, [$2c]
    ld d, c
    ld h, d
    ld b, l
    ld a, $50
    ld h, d
    ld a, $62
    ld d, c
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    pop af
    ld d, b
    ld b, l
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld d, d
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, b
    ld a, $4b
    ld h, a
    pop af
    ld b, l
    ld b, [hl]
    ld b, c
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld d, b
    ld b, [hl]
    ld b, c
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ldh a, [$29]
    ld c, c
    ld a, $4d
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, c
    ld a, $4f
    ld b, h
    ld b, d
    pop af
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld a, $52
    ld d, c
    ld b, l
    ld c, h
    ld c, a
    ld b, [hl]
    ld d, c
    ld d, [hl]
    ldh a, [$37]
    ld c, a
    ld a, $4d
    ld d, b
    ld h, d
    ld b, h
    ld a, $50
    pop af
    ld b, [hl]
    ld c, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld b, d
    ld c, c
    ld c, c
    ld d, [hl]
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld b, e
    ld c, c
    ld c, h
    ld a, $51
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, $46
    ld c, a
    ldh a, [$38]
    ld d, b
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld c, e
    ld b, h
    ld d, d
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld d, b
    ld d, d
    ld b, b
    ld c, b
    ld h, d
    ld c, e
    ld b, d
    ld b, b
    ld d, c
    ld a, $4f
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    pop af
    ld b, e
    ld c, c
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld d, b
    ldh a, [$36]
    ld c, d
    ld a, $4f
    ld d, c
    ld h, d
    ld b, d
    ld c, e
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld d, b
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld b, e
    ld d, d
    ld c, c
    ld c, c
    ld d, [hl]
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld h, d
    ld a, $f1
    ld d, b
    ld d, h
    ld c, h
    ld c, a
    ld b, c
    ld h, d
    or [hl]
    ld h, d
    ld d, b
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, c
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ld b, e
    ld c, c
    ld d, d
    ld b, [hl]
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld d, b
    ld b, d
    ld b, b
    ld c, a
    ld b, d
    ld d, c
    ld b, d
    ld b, c
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld b, e
    ld b, [hl]
    ld c, e
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, l
    ld c, h
    ld b, [hl]
    ld d, b
    ld c, h
    ld c, e
    ld c, h
    ld d, d
    ld d, b
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld b, b
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld b, d
    ld b, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    pop af
    ld d, b
    ld d, h
    ld c, h
    ld c, a
    ld b, c
    sbc h
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld d, b
    ld c, l
    ld b, [hl]
    ld c, b
    ld b, d
    ld d, b
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ld c, h
    ld c, c
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, h
    pop af
    ld d, b
    ld c, l
    ld b, d
    ld b, b
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld b, c
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ldh a, [$35]
    ld d, d
    ld c, e
    ld d, b
    ld h, d
    ccf
    ld d, [hl]
    ld h, d
    ld d, d
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, h
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, l
    ld a, $4b
    ld b, c
    ld d, b
    ld h, d
    or [hl]
    ld h, d
    ld c, c
    ld c, h
    ld c, e
    ld b, h
    pop af
    ld d, c
    ld a, $46
    ld c, c
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ccf
    ld a, $49
    ld a, $4b
    ld b, b
    ld b, d
    ldh a, [$35]
    ld d, d
    ld c, e
    ld d, b
    ld h, d
    ccf
    ld d, [hl]
    ld h, d
    ld d, d
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, h
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, l
    ld a, $4b
    ld b, c
    ld d, b
    ld h, d
    or [hl]
    ld h, d
    ld c, c
    ld c, h
    ld c, e
    ld b, h
    pop af
    ld d, c
    ld a, $46
    ld c, c
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ccf
    ld a, $49
    ld a, $4b
    ld b, b
    ld b, d
    ldh a, [rNR52]
    ld a, $4b
    ld h, d
    ld b, h
    ld c, a
    ld a, $3f
    ld h, d
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld d, c
    ld a, $49
    ld c, h
    ld c, e
    ld d, b
    pop af
    or [hl]
    ld h, d
    ld b, e
    ld c, c
    ld d, [hl]
    ld h, d
    ld c, h
    ld b, e
    ld b, e
    ldh a, [rNR52]
    ld b, l
    ld a, $4b
    ld b, h
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld d, b
    ld c, b
    ld b, [hl]
    ld c, e
    ld h, d
    ld b, b
    ld c, h
    ld c, c
    ld c, h
    ld c, a
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    pop af
    ld b, b
    ld a, $4a
    ld c, h
    ld d, d
    ld b, e
    ld c, c
    ld a, $44
    ld b, d
    ldh a, [$2b]
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld b, [hl]
    ld c, e
    pop af
    ld c, d
    ld b, [hl]
    ld b, c
    ld a, $46
    ld c, a
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ldh a, [$36]
    ld b, l
    ld a, $4f
    ld c, l
    ld h, d
    ld b, b
    ld c, c
    ld a, $54
    ld d, b
    ld h, d
    or [hl]
    pop af
    ld b, e
    ld a, $4b
    ld b, h
    ld d, b
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, d
    ld c, h
    ld d, b
    ld d, c
    pop af
    ld b, c
    ld b, d
    ld a, $41
    ld c, c
    ld d, [hl]
    ld h, d
    ld d, h
    ld b, d
    ld a, $4d
    ld c, h
    ld c, e
    ld d, b
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld c, l
    ld c, h
    ld b, [hl]
    ld d, b
    ld c, h
    ld c, e
    ld c, h
    ld d, d
    ld d, b
    ld h, d
    ccf
    ld b, [hl]
    ld d, c
    ld b, d
    pop af
    ld a, $4b
    ld b, c
    ld h, d
    ld d, b
    ld b, l
    ld a, $4f
    ld c, l
    ld h, d
    ld b, e
    ld a, $4b
    ld b, h
    ld d, b
    pop af
    ld a, $4f
    ld b, d
    ld h, d
    ld b, c
    ld b, d
    ld a, $41
    ld c, c
    ld d, [hl]
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld d, b
    ld c, l
    ld b, [hl]
    ld c, b
    ld d, [hl]
    ld h, d
    ld b, l
    ld a, $4f
    ld b, c
    pop af
    ld d, b
    ld b, l
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld c, l
    ld c, a
    ld c, h
    ld d, c
    ld b, d
    ld b, b
    ld d, c
    ld d, b
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld b, d
    ld c, c
    ld b, e
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld b, c
    ld a, $4b
    ld b, h
    ld b, d
    ld c, a
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ccf
    ld b, [hl]
    ld b, h
    ld b, h
    ld b, d
    ld d, b
    ld d, c
    pop af
    ld b, c
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld b, c
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld h, d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ldh a, [$2c]
    ld d, c
    ld h, d
    ld d, b
    ld b, l
    ld a, $48
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld b, b
    ld c, a
    ld b, d
    ld d, b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, d
    ld c, a
    ld c, a
    ld c, h
    ld c, a
    ld b, [hl]
    ld d, a
    ld b, d
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$2a]
    ld c, c
    ld b, [hl]
    ld b, c
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld c, a
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, $46
    ld c, a
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld c, c
    ld a, $4f
    ld b, h
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ldh a, [rNR52]
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld b, e
    ld d, d
    ld c, c
    ld h, d
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    dec b
    ld h, d
    ld b, l
    ld b, d
    ld a, $41
    ld d, b
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ld b, c
    ld c, h
    pop af
    ld b, c
    ld b, [hl]
    ld b, e
    ld b, e
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    pop af
    ld a, $51
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld a, $4a
    ld b, d
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ccf
    ld d, [hl]
    pop af
    ld d, b
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld b, e
    ld d, d
    ld c, c
    ld h, d
    ld b, h
    ld b, [hl]
    ld a, $4b
    ld d, c
    ld h, d
    ld a, $55
    ldh a, [$29]
    ld c, c
    ld c, h
    ld a, $51
    ld d, b
    ld h, d
    ld b, e
    ld c, a
    ld b, d
    ld b, d
    ld c, c
    ld d, [hl]
    ld h, d
    ld b, [hl]
    ld c, e
    pop af
    ld c, d
    ld b, [hl]
    ld b, c
    ld a, $46
    ld c, a
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld c, d
    ld a, $44
    ld b, [hl]
    ld b, b
    ld a, $49
    ld h, d
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld d, b
    ldh a, [$2c]
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, c
    ld b, d
    ld b, e
    ld b, d
    ld a, $51
    ld h, d
    ld b, [hl]
    ld d, c
    ld e, [hl]
    pop af
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, b
    ld b, l
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    pop af
    ccf
    ld b, d
    ld h, d
    ld b, h
    ld c, a
    ld a, $4b
    ld d, c
    ld b, d
    ld b, c
    ldh a, [$30]
    ld c, h
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ld d, b
    ld c, c
    ld c, h
    ld d, h
    ld c, c
    ld d, [hl]
    pop af
    ccf
    ld d, d
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, c
    ld c, h
    ld c, e
    ld b, h
    pop af
    ld d, c
    ld c, h
    ld c, e
    ld b, h
    ld d, d
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, c
    ld b, d
    ld a, $41
    ld c, c
    ld d, [hl]
    ldh a, [$3a]
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld b, b
    ld c, h
    ld c, a
    ld c, e
    ld b, d
    ld c, a
    ld b, d
    ld b, c
    ld e, [hl]
    ld b, [hl]
    ld d, c
    pop af
    ld b, b
    ld b, l
    ld a, $4f
    ld b, h
    ld b, d
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld d, b
    ld b, l
    ld a, $4f
    ld c, l
    ld h, d
    ld b, l
    ld c, h
    ld c, a
    ld c, e
    ld d, b
    ldh a, [rNR52]
    ld a, $4b
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld b, c
    ld a, $4f
    ld c, b
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    ld d, b
    pop af
    ld a, $51
    ld h, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ldh a, [$36]
    ld c, h
    ld b, e
    ld d, c
    ld h, d
    or [hl]
    ld h, d
    ld b, e
    ld c, c
    ld d, d
    ld b, e
    ld b, e
    ld d, [hl]
    pop af
    ld b, e
    ld d, d
    ld c, a
    ld h, d
    ld b, b
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ldh a, [$2f]
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld a, $f1
    ld d, b
    ld a, $40
    ld c, b
    ld h, d
    ld c, d
    ld a, $41
    ld b, d
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    pop af
    ld c, h
    ld b, e
    ld h, d
    ccf
    ld c, a
    ld a, $4b
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ldh a, [$2c]
    ld d, c
    ld h, d
    ld b, c
    ld b, d
    ld d, e
    ld c, h
    ld d, d
    ld c, a
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld c, h
    ld c, e
    ld b, d
    pop af
    ccf
    ld b, [hl]
    ld b, h
    ld h, d
    ld b, h
    ld d, d
    ld c, c
    ld c, l
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ccf
    ld d, [hl]
    pop af
    ld d, c
    ld b, l
    ld c, a
    ld c, h
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, b
    ld c, b
    ld d, d
    ld c, c
    ld c, c
    ld d, b
    pop af
    ld a, $51
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [rNR52]
    ld c, a
    ld b, d
    ld a, $51
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld c, a
    ld c, e
    ld a, $41
    ld c, h
    ld b, d
    ld d, b
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, c
    ld b, d
    ld b, h
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld b, c
    ld b, d
    ld b, e
    ld b, d
    ld c, e
    ld b, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld b, d
    ld c, c
    ld b, e
    ldh a, [$38]
    ld d, b
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld c, e
    ld b, h
    ld d, d
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, d
    or [hl]
    ld h, d
    ld d, b
    ld c, e
    ld a, $4f
    ld b, d
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    ldh a, [$2c]
    ld d, c
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld d, h
    pop af
    ld c, h
    ld b, e
    ld b, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld a, $4b
    ld b, b
    ld b, d
    pop af
    ld c, d
    ld c, h
    ld d, e
    ld b, d
    ld d, b
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld d, b
    ld c, l
    ld b, [hl]
    ld c, b
    ld b, d
    ld b, c
    ld h, d
    ld d, b
    ld b, l
    ld b, d
    ld c, c
    ld c, c
    pop af
    ld c, d
    ld a, $48
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    pop af
    ld d, b
    ld c, c
    ld a, $4a
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, d
    ld b, c
    ld b, d
    ld a, $41
    ld c, c
    ld d, [hl]
    ldh a, [$2c]
    ld d, c
    ld h, d
    ld b, e
    ld c, h
    ld c, c
    ld c, c
    ld c, h
    ld d, h
    ld d, b
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    pop af
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld a, $62
    ld b, c
    ld c, h
    ld b, h
    ldh a, [$2c]
    ld d, c
    ld h, d
    ld b, l
    ld a, $50
    ld h, d
    ld a, $62
    ld b, l
    ld a, $4a
    ld c, d
    ld b, d
    ld c, a
    pop af
    ccf
    ld b, [hl]
    ld b, h
    ld b, h
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld a, $4b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld b, d
    ld c, c
    ld b, e
    ldh a, [$38]
    ld d, b
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    pop af
    ld a, $4f
    ld c, d
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld c, [hl]
    ld d, d
    ld b, d
    ld b, d
    ld d, a
    ld b, d
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld b, b
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld b, d
    ld b, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld a, $f1
    ld d, c
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld h, d
    ld b, e
    ld d, d
    ld c, a
    ldh a, [$2c]
    ld d, c
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ld b, c
    ld b, [hl]
    ld b, h
    ld h, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    pop af
    ld b, c
    ld b, d
    ld b, d
    ld c, l
    ld h, d
    ld b, l
    ld c, h
    ld c, c
    ld b, d
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld d, e
    ld b, d
    ld c, c
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld b, d
    ld a, $4f
    ld d, b
    ld h, d
    ld a, $40
    ld d, c
    ld h, d
    ld a, $50
    pop af
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    ld c, h
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, h
    pop af
    ld b, [hl]
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, e
    ld c, c
    ld d, [hl]
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld b, l
    ld c, h
    ld c, a
    ld c, e
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld b, c
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld c, d
    ld a, $48
    ld b, d
    ld h, d
    ld c, d
    ld b, d
    ld b, c
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ldh a, [rNR52]
    ld b, l
    ld a, $4f
    ld b, h
    ld b, d
    ld d, b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld d, b
    ld b, l
    ld a, $4f
    ld c, l
    ld h, d
    or [hl]
    pop af
    ld d, c
    ld d, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld b, c
    ld h, d
    ld b, l
    ld c, h
    ld c, a
    ld c, e
    ld d, b
    ldh a, [$2f]
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld b, h
    ld c, a
    ld c, h
    ld d, d
    ld c, l
    ld d, b
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld c, h
    ld c, e
    ld b, d
    ld h, d
    ld b, c
    ld c, h
    ld c, d
    ld b, [hl]
    ld c, e
    ld a, $4b
    ld d, c
    pop af
    ld c, d
    ld a, $49
    ld b, d
    ld h, d
    ccf
    ld c, h
    ld d, b
    ld d, b
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld d, c
    ld d, d
    ld d, b
    ld c, b
    ld d, b
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld b, c
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld b, b
    ld c, a
    ld b, d
    ld a, $51
    ld b, d
    ld h, d
    ld b, b
    ld c, a
    ld a, $43
    ld d, c
    pop af
    ld d, h
    ld c, h
    ld c, a
    ld c, b
    ldh a, [$38]
    ld d, b
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    inc b
    ld h, d
    ld b, l
    ld a, $4b
    ld b, c
    ld d, b
    ld h, d
    or [hl]
    pop af
    inc b
    ld h, d
    ld a, $4f
    ld c, d
    ld d, b
    ld h, d
    ld d, b
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld b, e
    ld d, d
    ld c, c
    ld c, c
    ld d, [hl]
    pop af
    ld b, [hl]
    ld c, e
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ccf
    ld a, $51
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld c, l
    ld b, d
    ld c, c
    ld d, c
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld c, d
    ld a, $4b
    ld b, c
    ld d, b
    pop af
    ld a, $62
    ld b, l
    ld b, [hl]
    ld b, h
    ld b, l
    ld h, d
    ld c, l
    ld c, a
    ld b, [hl]
    ld b, b
    ld b, d
    ldh a, [$30]
    ld c, h
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld h, d
    ld d, b
    ld d, h
    ld b, [hl]
    ld b, e
    ld d, c
    ld c, c
    ld d, [hl]
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld b, b
    ld a, $51
    ld b, b
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    ldh a, [$2f]
    ld c, h
    ld c, h
    ld c, b
    ld d, b
    ld h, d
    ld d, d
    ld c, l
    ld h, d
    ld a, $51
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld d, b
    ld c, b
    ld d, [hl]
    ld h, d
    or [hl]
    ld h, d
    ld b, c
    ld c, h
    ld d, a
    ld b, d
    ld d, b
    pop af
    ld c, h
    ld b, e
    ld b, e
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld b, c
    ld a, $56
    ldh a, [$2c]
    ld d, c
    ld l, b
    ld h, d
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    pop af
    ccf
    ld d, d
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ld c, a
    ld d, d
    ld c, e
    pop af
    ld c, [hl]
    ld d, d
    ld b, [hl]
    ld b, b
    ld c, b
    ld c, c
    ld d, [hl]
    ldh a, [$2c]
    ld d, c
    ld h, d
    ld b, l
    ld a, $50
    ld h, d
    ld a, $4b
    ld h, d
    ld b, d
    ld a, $44
    ld c, c
    ld b, d
    ld l, b
    pop af
    ld b, l
    ld b, d
    ld a, $41
    ld h, d
    or [hl]
    ld h, d
    ld a, $62
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    pop af
    ld c, h
    ld b, e
    ld h, d
    ld a, $62
    ld d, b
    ld b, d
    ld c, a
    ld c, l
    ld b, d
    ld c, e
    ld d, c
    ldh a, [$36]
    ld c, c
    ld b, d
    ld b, d
    ld c, l
    ld d, b
    ld h, d
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld a, $43
    ld d, c
    ld b, d
    ld c, a
    pop af
    ld b, [hl]
    ld d, c
    ld h, d
    ld c, d
    ld a, $48
    ld b, d
    ld d, b
    ld h, d
    ld a, $62
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld b, e
    ld c, c
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    pop af
    ld b, e
    ld a, $40
    ld b, d
    ld h, d
    ld c, c
    ld d, d
    ld c, a
    ld b, d
    ld d, b
    ld h, d
    ccf
    ld d, d
    ld b, h
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, a
    ld h, d
    ld b, c
    ld c, h
    ld c, h
    ld c, d
    ldh a, [$36]
    ld c, l
    ld c, a
    ld b, d
    ld a, $41
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, d
    ld a, $48
    ld b, d
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld b, d
    ld c, c
    ld b, e
    ld h, d
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld h, d
    ccf
    ld b, [hl]
    ld b, h
    ld b, h
    ld b, d
    ld c, a
    ldh a, [$35]
    ld b, [hl]
    ld c, l
    ld d, b
    ld h, d
    ld b, e
    ld c, c
    ld b, d
    ld d, b
    ld b, l
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld h, d
    ccf
    ld b, d
    ld a, $48
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ccf
    ld d, [hl]
    pop af
    ld b, c
    ld c, a
    ld c, h
    ld c, l
    ld c, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, b
    ld c, b
    ld d, d
    ld c, c
    ld c, c
    ld d, b
    pop af
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, $46
    ld c, a
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld c, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    pop af
    ld b, h
    ld c, c
    ld c, h
    ld d, h
    ld d, b
    ld h, d
    ld c, l
    ld b, [hl]
    ld c, e
    ld c, b
    ld b, [hl]
    ld d, b
    ld b, l
    ld h, d
    ld b, [hl]
    ld c, e
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, c
    ld a, $4f
    ld c, b
    ldh a, [$33]
    ld c, a
    ld b, d
    ld b, e
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld b, c
    ld a, $4f
    ld c, b
    ld c, e
    ld b, d
    ld d, b
    ld d, b
    pop af
    ld a, $4b
    ld b, c
    ld h, d
    ld d, b
    ld d, d
    ld b, b
    ld c, b
    ld d, b
    ld h, d
    ccf
    ld c, c
    ld c, h
    ld c, h
    ld b, c
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, e
    ld a, $4b
    ld b, h
    ld d, b
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, a
    ld c, d
    ld h, d
    ld b, e
    ld c, c
    ld b, d
    ld d, b
    ld b, l
    pop af
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, h
    ld c, h
    ld c, h
    ld b, c
    ld h, d
    ld b, d
    ld a, $51
    ld b, [hl]
    ld c, e
    ld b, h
    ldh a, [rNR50]
    ld h, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld h, d
    ld d, b
    ld d, c
    ld d, d
    ccf
    ccf
    ld c, h
    ld c, a
    ld c, e
    pop af
    ccf
    ld b, [hl]
    ld c, a
    ld b, c
    ldh a, [rNR50]
    ld h, d
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    ld h, d
    ld c, h
    ld d, h
    ld c, c
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld a, $49
    ld c, h
    ld c, e
    ld d, b
    pop af
    or [hl]
    ld h, d
    ld d, b
    ld b, l
    ld a, $4f
    ld c, l
    ld h, d
    ld b, b
    ld c, c
    ld a, $54
    ld d, b
    ldh a, [rNR50]
    ld h, d
    ld c, d
    ld b, [hl]
    ld b, h
    ld c, a
    ld a, $51
    ld c, h
    ld c, a
    ld d, [hl]
    pop af
    ccf
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ccf
    ld b, d
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld h, d
    ld d, e
    ld b, [hl]
    ld c, h
    ld c, c
    ld b, d
    ld c, e
    ld d, c
    ldh a, [$2c]
    ld d, c
    ld h, d
    ld b, l
    ld a, $50
    ld h, d
    ccf
    ld b, [hl]
    ld b, h
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld e, [hl]
    pop af
    ld b, c
    ld b, d
    ld a, $41
    ld c, c
    ld d, [hl]
    ld h, d
    ld d, b
    ld b, l
    ld a, $4f
    ld c, l
    ld h, d
    ld b, b
    ld c, c
    ld a, $54
    ld d, b
    pop af
    or [hl]
    ld h, d
    ld a, $62
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld b, e
    ld d, d
    ld c, c
    ld h, d
    ccf
    ld b, d
    ld a, $48
    ldh a, [rNR51]
    ld c, a
    ld b, d
    ld a, $51
    ld b, l
    ld b, d
    ld d, b
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    pop af
    ld b, e
    ld c, a
    ld b, d
    ld b, d
    ld d, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld a, $46
    ld c, a
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld b, c
    ld b, d
    ld b, e
    ld b, d
    ld a, $51
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    ldh a, [$35]
    ld c, h
    ld a, $50
    ld d, c
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, [hl]
    pop af
    ccf
    ld c, a
    ld b, d
    ld a, $51
    ld b, l
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld d, c
    ld b, l
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld b, b
    ld c, c
    ld c, h
    ld d, d
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    pop af
    ld b, b
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld d, h
    ld b, l
    ld b, [hl]
    ld c, l
    sbc h
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld c, c
    ld b, d
    ld b, h
    ld d, b
    ld h, d
    or [hl]
    pop af
    ld c, b
    ld c, e
    ld b, [hl]
    ld b, e
    ld b, d
    sbc h
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld b, b
    ld c, c
    ld a, $54
    ld d, b
    ldh a, [$2f]
    ld b, [hl]
    ld c, b
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, c
    ld a, $4b
    ld b, b
    ld b, d
    pop af
    or [hl]
    ld h, d
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, h
    ldh a, [$2c]
    ld d, c
    ld h, d
    ld b, l
    ld a, $50
    ld h, d
    inc b
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    pop af
    ld c, c
    ld b, d
    ld b, h
    ld d, b
    ld h, d
    or [hl]
    ld h, d
    ld a, $62
    ld c, l
    ld a, $46
    ld c, a
    ld h, d
    ld c, h
    ld b, e
    pop af
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld b, e
    ld d, d
    ld c, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ldh a, [$36]
    ld b, d
    ld b, b
    ld c, a
    ld b, d
    ld d, c
    ld b, d
    ld d, b
    ld h, d
    ld d, b
    ld d, h
    ld b, d
    ld b, d
    ld d, c
    pop af
    ld d, b
    ld a, $4d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld a, $51
    ld d, c
    ld c, a
    ld a, $40
    ld d, c
    pop af
    ccf
    ld d, d
    ld b, h
    ld d, b
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld b, e
    ld c, c
    ld a, $4a
    ld b, d
    ld h, d
    ccf
    ld c, a
    ld b, d
    ld a, $51
    ld b, l
    pop af
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld b, d
    ld a, $41
    ld c, c
    ld d, [hl]
    pop af
    ld d, h
    ld b, d
    ld a, $4d
    ld c, h
    ld c, e
    ldh a, [rNR52]
    ld a, $4b
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld d, b
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld a, $49
    pop af
    ld b, l
    ld d, d
    ld c, e
    ld b, c
    ld c, a
    ld b, d
    ld b, c
    ld h, d
    ld d, [hl]
    ld b, d
    ld a, $4f
    ld d, b
    pop af
    ld a, $4b
    ld b, c
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, b
    ld b, d
    ldh a, [$36]
    ld d, c
    ld c, h
    ld c, a
    ld b, d
    ld d, b
    ld h, d
    ld b, h
    ld a, $50
    ld h, d
    ld b, [hl]
    ld c, e
    ld d, b
    ld b, [hl]
    ld b, c
    ld b, d
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld b, e
    ld c, c
    ld c, h
    ld a, $51
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, $46
    ld c, a
    ldh a, [$36]
    ld d, c
    ld c, h
    ld c, a
    ld b, d
    ld d, b
    ld h, d
    ld d, h
    ld a, $51
    ld b, d
    ld c, a
    pop af
    ld b, [hl]
    ld c, e
    ld d, b
    ld b, [hl]
    ld b, c
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld d, b
    ld d, d
    ld c, a
    ld d, e
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld b, c
    ld b, d
    ld d, b
    ld b, d
    ld c, a
    ld d, c
    ld d, b
    ldh a, [$2a]
    ld d, d
    ld c, c
    ld c, l
    ld d, b
    ld h, d
    ld d, d
    ld c, l
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld d, c
    ld c, h
    ld b, b
    ld c, b
    ld h, d
    ld d, d
    ld c, l
    ld h, d
    ld c, h
    ld c, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld d, b
    ldh a, [$33]
    ld c, c
    ld a, $4b
    ld d, c
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld d, b
    ld c, l
    ld c, h
    ld c, a
    ld b, d
    ld d, b
    pop af
    ld c, h
    ld c, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld c, d
    ld d, d
    ld c, c
    ld d, c
    ld b, [hl]
    ld c, l
    ld c, c
    ld d, [hl]
    ldh a, [$36]
    ld b, d
    ld b, b
    ld c, a
    ld b, d
    ld d, c
    ld b, d
    ld d, b
    ld h, d
    ld d, b
    ld a, $4d
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    pop af
    ld b, l
    ld a, $4f
    ld b, c
    ld b, d
    ld c, e
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ldh a, [$38]
    ld d, b
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, a
    ld c, h
    ld c, h
    ld d, c
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld d, d
    ld b, b
    ld c, b
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    ld d, b
    ld h, d
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld h, d
    ld b, e
    ld c, c
    ld d, d
    ld b, [hl]
    ld b, c
    ldh a, [$2a]
    ld c, a
    ld c, h
    ld d, h
    ld d, b
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld c, a
    ld c, h
    ld c, h
    ld d, c
    ld d, b
    ld h, d
    ld d, h
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld c, a
    ld b, d
    ld a, $41
    ld d, [hl]
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ccf
    ld c, a
    ld b, d
    ld b, d
    ld b, c
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld a, $41
    ld h, d
    ccf
    ld a, $49
    ld a, $4b
    ld b, b
    ld b, d
    pop af
    ld b, e
    ld c, h
    ld c, a
    ld b, b
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, h
    ld a, $49
    ld c, b
    pop af
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld l, b
    ld h, d
    ld b, c
    ld a, $4b
    ld b, b
    ld b, [hl]
    ld c, e
    ld b, h
    ldh a, [rNR50]
    ld h, d
    ld d, b
    ld c, l
    ld b, [hl]
    ld c, a
    ld b, [hl]
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    pop af
    ld c, c
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld a, $62
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    pop af
    ld c, h
    ld c, c
    ld b, c
    ld h, d
    ld d, c
    ld c, a
    ld b, d
    ld b, d
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld c, a
    ld c, h
    ld c, h
    ld d, c
    ld d, b
    ld h, d
    ld d, b
    ld d, d
    ld b, b
    ld c, b
    pop af
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld c, a
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld c, a
    ld c, h
    ld c, h
    ld d, c
    ld d, b
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ccf
    ld b, d
    pop af
    ld d, d
    ld d, b
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, d
    ld a, $48
    ld b, d
    pop af
    ld a, $62
    ld b, b
    ld d, d
    ld c, a
    ld b, d
    ld h, d
    ld c, d
    ld b, d
    ld b, c
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld c, e
    ld b, d
    ldh a, [$37]
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    pop af
    ld a, $62
    ld c, l
    ld c, c
    ld a, $40
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, l
    ld c, c
    ld a, $4b
    ld d, c
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld b, c
    ld d, b
    ldh a, [rNR52]
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld h, d
    ld c, h
    ld c, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld b, l
    ld c, h
    ld d, b
    ld d, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld d, c
    ld b, d
    ld c, e
    ld d, c
    ld a, $40
    ld c, c
    ld b, d
    ld d, b
    ldh a, [$27]
    ld b, [hl]
    ld d, b
    ld d, b
    ld c, h
    ld c, c
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld b, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld a, $40
    ld b, [hl]
    ld b, c
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    inc bc
    ld h, d
    ccf
    ld d, d
    ld b, c
    ld d, b
    ld h, d
    ld d, b
    ld b, [hl]
    ld c, e
    ld c, b
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, a
    ld h, d
    ld d, c
    ld b, d
    ld b, d
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld c, e
    ld d, c
    ld c, h
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    ldh a, [$36]
    ld c, [hl]
    ld d, d
    ld b, d
    ld b, d
    ld d, a
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld d, c
    ld b, l
    ld c, h
    ld c, a
    ld c, e
    ld d, [hl]
    ld h, d
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ldh a, [rNR50]
    ld h, d
    ld c, d
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, d
    ld d, e
    ld c, h
    ld d, d
    ld d, b
    pop af
    ld c, d
    ld d, [hl]
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, b
    ld a, $49
    ld h, d
    ld b, b
    ld c, a
    ld b, d
    ld a, $51
    ld d, d
    ld c, a
    ld b, d
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld c, d
    ld d, d
    ld b, b
    ld d, d
    ld d, b
    ld h, d
    ld b, b
    ld c, h
    ld c, e
    ld d, c
    ld a, $46
    ld c, e
    ld d, b
    pop af
    ld b, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld b, d
    ld c, e
    ld d, a
    ld d, [hl]
    ld c, d
    ld b, d
    ld d, b
    ldh a, [$37]
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, b
    ld a, $51
    ld b, d
    ld c, a
    ld c, l
    ld b, [hl]
    ld c, c
    ld c, c
    ld a, $4f
    pop af
    ld b, c
    ld c, h
    ld b, d
    ld d, b
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld b, h
    ld c, a
    ld c, h
    ld d, h
    ld h, d
    ld d, c
    ld c, h
    pop af
    ccf
    ld b, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld a, $62
    ld c, d
    ld c, h
    ld d, c
    ld b, l
    ldh a, [$36]
    ld b, [hl]
    ld c, e
    ld b, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    pop af
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld b, h
    ld c, a
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    ld e, [hl]
    ld h, d
    ld b, [hl]
    ld d, c
    pop af
    ld b, l
    ld a, $51
    ld b, d
    ld d, b
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ldh a, [$33]
    ld c, h
    ld d, h
    ld b, c
    ld b, d
    ld c, a
    ld h, d
    ld c, h
    ld c, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld b, l
    ld a, $49
    ld c, c
    ld d, d
    sbc h
    pop af
    ld b, b
    ld b, [hl]
    ld c, e
    ld c, h
    ld b, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, b
    ld h, d
    ld b, d
    ld b, e
    ld b, e
    ld b, d
    ld b, b
    ld d, c
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld d, h
    ld b, d
    ld b, d
    ld b, c
    sbc h
    ld d, c
    ld c, h
    ld c, l
    ld h, d
    ld d, b
    ld d, d
    ld b, b
    ld c, b
    ld d, b
    pop af
    ld d, d
    ld c, l
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, a
    ld b, h
    ld d, [hl]
    ld h, d
    or [hl]
    ld h, d
    ld b, d
    ld c, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ldh a, [$29]
    ld b, [hl]
    ld c, e
    ld b, c
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld a, $40
    ld d, d
    ld d, c
    ld b, d
    pop af
    ld d, b
    ld b, d
    ld c, e
    ld d, b
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, b
    ld c, d
    ld b, d
    ld c, c
    ld c, c
    ldh a, [$33]
    ld a, $4f
    ld a, $49
    ld d, [hl]
    ld d, a
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld b, d
    ld a, $41
    ld c, c
    ld d, [hl]
    pop af
    ld c, b
    ld b, [hl]
    ld d, b
    ld d, b
    ldh a, [$35]
    ld b, d
    ld c, l
    ld b, d
    ld c, c
    ld d, b
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, l
    ld a, $4f
    ld b, c
    pop af
    ld d, b
    ld b, l
    ld b, d
    ld c, c
    ld c, c
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, b
    ld c, d
    ld a, $49
    ld c, c
    ld e, [hl]
    pop af
    ccf
    ld d, d
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, a
    ld a, $54
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld b, e
    ld d, d
    ld c, c
    ldh a, [$30]
    ld a, $48
    ld b, d
    ld d, b
    ld h, d
    ld a, $62
    ld d, h
    ld b, d
    ld b, [hl]
    ld c, a
    ld b, c
    pop af
    ld d, b
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    ld h, d
    ld d, h
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld b, [hl]
    ld d, c
    pop af
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$36]
    ld d, d
    ld b, b
    ld c, b
    ld d, b
    ld h, d
    ld c, h
    ld c, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld d, c
    ld a, $46
    ld c, c
    sbc h
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld d, d
    ld d, c
    ld b, l
    ldh a, [rNR50]
    ld h, d
    ld d, b
    ld b, l
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld c, l
    ld c, a
    ld c, h
    ld d, c
    ld b, d
    ld b, b
    ld d, c
    ld d, b
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, d
    ccf
    ld d, d
    ld d, c
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld b, d
    ld c, c
    ld c, c
    ld d, [hl]
    ldh a, [$28]
    ld a, $40
    ld b, l
    ld h, d
    ld d, c
    ld b, d
    ld c, e
    ld d, c
    ld a, $40
    ld c, c
    ld b, d
    pop af
    ld b, l
    ld a, $50
    ld h, d
    ld a, $62
    ld d, b
    ld c, l
    ld b, d
    ld b, b
    ld b, [hl]
    ld b, e
    ld b, [hl]
    ld b, b
    pop af
    ld b, e
    ld d, d
    ld c, e
    ld b, b
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    ldh a, [rNR52]
    ld c, a
    ld b, d
    ld a, $51
    ld b, d
    ld d, b
    ld h, d
    ld a, $62
    ld d, e
    ld b, [hl]
    ld c, h
    ld c, c
    ld b, d
    ld c, e
    ld d, c
    pop af
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld b, l
    ld d, d
    ld b, h
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ldh a, [$33]
    ld c, a
    ld c, h
    ld d, c
    ld c, a
    ld d, d
    ld b, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, d
    ld d, [hl]
    ld b, d
    ld d, b
    pop af
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ld a, $62
    ld c, c
    ld a, $4f
    ld b, h
    ld b, d
    pop af
    ld b, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, c
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, e
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld c, h
    ld c, e
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld a, $62
    ld b, h
    ld c, a
    ld c, h
    ld d, d
    ld c, l
    pop af
    or [hl]
    ld h, d
    ld b, b
    ld d, d
    ld d, c
    ld d, b
    ld h, d
    ld d, d
    ld c, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, b
    ld c, c
    ld a, $54
    ld d, b
    ldh a, [$33]
    ld a, $4f
    ld a, $49
    ld d, [hl]
    ld d, a
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ldh a, [rNR52]
    ld b, l
    ld a, $4f
    ld b, h
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld b, [hl]
    ld b, h
    ld h, d
    ld b, l
    ld c, h
    ld c, a
    ld c, e
    ldh a, [$38]
    ld c, e
    ld c, l
    ld c, a
    ld c, h
    ld d, c
    ld b, d
    ld b, b
    ld d, c
    ld b, d
    ld b, c
    ld h, d
    ld b, a
    ld c, h
    ld b, [hl]
    ld c, e
    ld d, c
    ld d, b
    pop af
    ld a, $4f
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld d, h
    ld b, d
    ld a, $48
    ld c, e
    ld b, d
    ld d, b
    ld d, b
    ldh a, [$27]
    ld b, [hl]
    ld b, h
    ld d, b
    ld h, d
    ld b, b
    ld a, $53
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, e
    ld b, d
    pop af
    ld b, [hl]
    ld c, e
    ld h, d
    ld a, $62
    ld b, c
    ld a, $4f
    ld c, b
    ld h, d
    ld b, l
    ld d, d
    ld c, d
    ld b, [hl]
    ld b, c
    pop af
    ld b, l
    ld c, h
    ld c, d
    ld b, d
    ldh a, [$2f]
    ld c, h
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, l
    ld c, c
    ld a, $56
    pop af
    ld c, l
    ld c, a
    ld a, $4b
    ld c, b
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld c, d
    ld a, $44
    ld b, [hl]
    ld b, b
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld c, c
    ld c, c
    ld d, b
    ldh a, [$37]
    ld c, h
    ld c, h
    ld h, d
    ld b, e
    ld a, $51
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, e
    ld c, c
    ld d, [hl]
    pop af
    ccf
    ld d, d
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld b, d
    ld c, e
    ld b, h
    ld d, c
    ld b, l
    pop af
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, [hl]
    ld c, e
    ld b, b
    ld c, a
    ld b, d
    ld b, c
    ld b, [hl]
    ccf
    ld c, c
    ld b, d
    ldh a, [$39]
    ld b, d
    ld c, a
    ld d, [hl]
    ld h, d
    ld c, [hl]
    ld d, d
    ld b, [hl]
    ld b, b
    ld c, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld b, c
    pop af
    or [hl]
    ld h, d
    ld b, b
    ld d, d
    ld c, e
    ld c, e
    ld b, [hl]
    ld c, e
    ld b, h
    ldh a, [$36]
    ld c, d
    ld a, $4f
    ld d, c
    ld h, d
    ccf
    ld d, d
    ld d, c
    ld e, [hl]
    ld h, d
    ld c, c
    ld a, $40
    ld c, b
    ld d, b
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, b
    ld a, $50
    ld d, c
    pop af
    ccf
    ld b, [hl]
    ld b, h
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld c, c
    ld c, c
    ld d, b
    ldh a, [rNR52]
    ld a, $51
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld d, c
    ld b, d
    ld c, e
    ld d, c
    ld a, $40
    ld c, c
    ld b, d
    ld d, b
    ldh a, [$2b]
    ld d, d
    ld c, e
    ld d, c
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld c, c
    ld a, $4f
    ld b, h
    ld b, d
    ld h, d
    ld b, d
    ld d, [hl]
    ld b, d
    ld h, d
    or [hl]
    ld h, d
    ld b, e
    ld a, $50
    ld d, c
    pop af
    ld d, c
    ld d, h
    ld c, h
    ld h, d
    ld c, c
    ld b, d
    ld b, h
    ld d, b
    ldh a, [$35]
    ld b, d
    ld d, e
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ld b, c
    ld b, d
    ld a, $41
    pop af
    ccf
    ld b, d
    ld a, $50
    ld d, c
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    pop af
    ld a, $50
    ld h, d
    ld d, b
    ld c, c
    ld a, $53
    ld b, d
    ld d, b
    ldh a, [$37]
    ld c, a
    ld a, $46
    ld c, e
    ld b, d
    ld b, c
    ld h, d
    ld b, l
    ld a, $4f
    ld b, c
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld a, $51
    ld d, c
    ld a, $46
    ld c, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld b, d
    ld c, e
    ld b, h
    ld d, c
    ld b, l
    ldh a, [$38]
    ld d, b
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld d, h
    ld a, $4b
    ld b, c
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld b, b
    ld a, $50
    ld d, c
    ld h, d
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld c, c
    ld c, c
    ld d, b
    ldh a, [$30]
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, d
    ld d, e
    ld c, h
    ld d, d
    ld d, b
    ld h, d
    or [hl]
    pop af
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, l
    ld c, c
    ld a, $56
    pop af
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, c
    ld c, a
    ld a, $4d
    ld d, b
    ldh a, [rNR50]
    ld h, d
    ld b, c
    ld b, d
    ld a, $41
    ld c, c
    ld d, [hl]
    ld h, d
    ccf
    ld a, $49
    ld c, c
    ld h, d
    ld c, h
    ld b, e
    pop af
    ld d, b
    ld c, e
    ld a, $48
    ld b, d
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld a, $4b
    pop af
    ld b, d
    ld d, [hl]
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, b
    ld b, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ldh a, [rNR50]
    ld h, d
    ld c, e
    ld a, $51
    ld d, d
    ld c, a
    ld a, $49
    ld h, d
    ccf
    ld c, h
    ld c, a
    ld c, e
    pop af
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld b, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    ldh a, [rNR50]
    ld h, d
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld b, e
    ld d, d
    ld c, c
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, l
    ld c, h
    ld c, a
    ld c, e
    ld d, b
    ld h, d
    or [hl]
    pop af
    ld c, c
    ld b, d
    ld b, h
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld a, $62
    ld b, h
    ld c, h
    ld a, $51
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld b, d
    ld c, e
    ld d, b
    ld b, d
    ld h, d
    ld c, l
    ld b, d
    ld c, c
    ld d, c
    pop af
    ld a, $40
    ld d, c
    ld d, b
    ld h, d
    ld a, $50
    ld h, d
    ld c, e
    ld a, $51
    ld d, d
    ld c, a
    ld a, $49
    pop af
    ld a, $4f
    ld c, d
    ld c, h
    ld c, a
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld b, e
    ld c, c
    ld a, $46
    ld c, c
    ld h, d
    ld b, l
    ld a, $50
    ld h, d
    ld a, $f1
    ld c, d
    ld b, d
    ld d, c
    ld a, $49
    ld h, d
    ccf
    ld a, $49
    ld c, c
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld l, b
    pop af
    ccf
    ld b, [hl]
    ld b, h
    ld b, h
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld a, $4b
    ld h, d
    ld a, $62
    ld c, d
    ld a, $4b
    ldh a, [$38]
    ld d, b
    ld b, d
    ld d, b
    ld h, d
    ld a, $62
    ld d, b
    ld b, b
    ld d, [hl]
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld a, $50
    ld h, d
    ld d, c
    ld a, $49
    ld c, c
    ld h, d
    ld a, $50
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, h
    ld d, h
    ld c, e
    pop af
    ld d, c
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, l
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ldh a, [$2b]
    ld a, $50
    ld h, d
    ld a, $40
    ld b, l
    ld b, [hl]
    ld b, d
    ld d, e
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld d, d
    ld d, c
    ld c, d
    ld c, h
    ld d, b
    ld d, c
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld c, h
    ld b, e
    pop af
    ld d, b
    ld d, h
    ld b, [hl]
    ld b, e
    ld d, c
    ld c, e
    ld b, d
    ld d, b
    ld d, b
    ldh a, [$31]
    ld c, h
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld c, h
    ld h, d
    ld b, b
    ld c, c
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld e, [hl]
    pop af
    ccf
    ld d, d
    ld d, c
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld d, h
    ld b, d
    ld a, $4d
    ld c, h
    ld c, e
    ld d, b
    ld h, d
    ld d, h
    ld b, d
    ld c, c
    ld c, c
    ldh a, [rNR52]
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld c, e
    ld b, d
    ld b, c
    ld h, d
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    pop af
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, b
    ld d, d
    ld c, l
    ld b, d
    ld c, a
    sbc h
    pop af
    ld b, l
    ld d, d
    ld c, d
    ld a, $4b
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld b, d
    ld c, e
    ld b, h
    ld d, c
    ld b, l
    ldh a, [rNR52]
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld b, d
    ld b, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    pop af
    ld a, $4f
    ld c, d
    ld c, h
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld c, e
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld h, d
    ld c, a
    ld b, d
    ld c, d
    ld c, h
    ld d, e
    ld b, d
    ld b, c
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ccf
    ld b, [hl]
    ld b, h
    ld b, h
    ld b, d
    ld d, b
    ld d, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld b, c
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld e, [hl]
    ld h, d
    ccf
    ld d, d
    ld d, c
    pop af
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld h, d
    ld d, b
    ld c, d
    ld a, $4f
    ld d, c
    ldh a, [rNR50]
    ld h, d
    ld b, l
    ld d, [hl]
    ccf
    ld c, a
    ld b, [hl]
    ld b, c
    ld h, d
    ld b, c
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld c, h
    ld b, e
    pop af
    ld c, d
    ld a, $4b
    ld h, d
    or [hl]
    ld h, d
    ccf
    ld b, d
    ld a, $50
    ld d, c
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld c, a
    ld b, d
    ld a, $49
    ld h, d
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld d, c
    ld d, [hl]
    pop af
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld a, $51
    ld b, l
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld a, $4f
    ld c, d
    ld c, h
    ld c, a
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, d
    ld c, e
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld c, e
    ldh a, [rNR50]
    ld h, d
    ld b, l
    ld d, [hl]
    ccf
    ld c, a
    ld b, [hl]
    ld b, c
    ld h, d
    ld b, c
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld c, h
    ld b, e
    pop af
    ld a, $4b
    ld h, d
    ld b, d
    ld a, $44
    ld c, c
    ld b, d
    ld h, d
    or [hl]
    ld h, d
    ld a, $62
    ld c, c
    ld b, [hl]
    ld c, h
    ld c, e
    ldh a, [rNR50]
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld h, d
    ld a, $49
    ld c, c
    sbc h
    ld c, a
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    pop af
    ld c, e
    ld a, $51
    ld d, d
    ld c, a
    ld a, $49
    ld h, d
    ccf
    ld c, h
    ld c, a
    ld c, e
    pop af
    ld b, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    ld e, a
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld b, l
    ld c, h
    ccf
    ccf
    ld d, [hl]
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld d, b
    ld b, b
    ld a, $4f
    ld b, d
    ld h, d
    ld c, l
    ld b, d
    ld c, h
    ld c, l
    ld c, c
    ld b, d
    ldh a, [rNR50]
    ld h, d
    ld b, c
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    pop af
    ld d, c
    ld b, l
    ld a, $51
    ld l, b
    ld h, d
    ld c, a
    ld b, [hl]
    ld d, b
    ld b, d
    ld c, e
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, c
    ld b, d
    ld a, $41
    ldh a, [$2c]
    ld d, c
    ld l, b
    ld h, d
    ld b, e
    ld b, d
    ld a, $4f
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    pop af
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, c
    ld c, h
    ld b, d
    ld d, b
    ld c, e
    ld h, a
    pop af
    ld b, e
    ld b, d
    ld b, d
    ld c, c
    ld h, d
    ld a, $4b
    ld d, [hl]
    ld h, d
    ld c, l
    ld a, $46
    ld c, e
    ldh a, [$27]
    ld c, h
    ld d, a
    ld b, d
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld b, c
    ld a, $56
    pop af
    ld b, [hl]
    ld c, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, l
    ld a, $49
    ld b, e
    ld h, d
    ld c, a
    ld c, h
    ld d, c
    ld d, c
    ld b, d
    ld b, c
    pop af
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, c
    ld c, c
    ld b, d
    ld b, c
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ccf
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld c, l
    ld c, a
    ld b, d
    ld d, e
    ld b, d
    ld c, e
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld b, d
    ld b, b
    ld a, $56
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld d, b
    ld b, l
    ld b, d
    ld c, c
    ld c, c
    pop af
    ld c, a
    ld b, d
    ld d, b
    ld b, d
    ld c, d
    ccf
    ld c, c
    ld b, d
    ld d, b
    ld h, d
    ld a, $f1
    ld b, l
    ld d, d
    ld c, d
    ld a, $4b
    ld h, d
    ld b, e
    ld a, $40
    ld b, d
    ldh a, [$2e]
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld c, a
    ld b, d
    ld d, e
    ld b, [hl]
    ld d, e
    ld b, d
    ld b, c
    pop af
    ld a, $50
    ld h, d
    ld a, $62
    ld d, a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld e, [hl]
    ld h, d
    ld d, h
    ld b, l
    ld c, h
    pop af
    ld c, e
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, a
    ld b, d
    ld d, b
    ldh a, [$35]
    ld b, d
    ld a, $49
    ld h, d
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld d, c
    ld d, [hl]
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld d, d
    ld c, e
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld c, e
    ld h, d
    ld b, c
    ld d, d
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld d, b
    ld b, l
    ld a, $41
    ld c, h
    ld d, h
    sbc h
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld a, $40
    ld b, [hl]
    ld b, c
    ld b, [hl]
    ld b, b
    ld h, d
    ld d, b
    ld a, $49
    ld b, [hl]
    ld d, e
    ld a, $f1
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld b, c
    ld b, [hl]
    ld d, b
    ld d, b
    ld c, h
    ld c, c
    ld d, e
    ld b, d
    pop af
    ld a, $4b
    ld d, [hl]
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ldh a, [rNR50]
    ld h, d
    ld d, b
    ld d, h
    ld a, $4a
    ld c, l
    ld h, d
    ld c, d
    ld d, d
    ld b, c
    pop af
    ld b, [hl]
    ld c, e
    ld b, e
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld b, c
    ld h, d
    ld d, b
    ld c, l
    ld b, [hl]
    ld c, a
    ld b, [hl]
    ld d, c
    ld h, d
    ld c, h
    ld b, e
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, c
    ld b, d
    ld a, $41
    ldh a, [$29]
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld a, $46
    ld c, a
    ld h, d
    ld c, c
    ld b, d
    ld a, $53
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld a, $f1
    ld d, b
    ld d, c
    ld c, a
    ld b, d
    ld a, $48
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ldh a, [$2f]
    ld c, h
    ld d, b
    ld d, c
    ld h, d
    ld d, b
    ld c, l
    ld b, [hl]
    ld c, a
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld b, e
    ld d, d
    ld d, b
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld c, h
    ld b, h
    ld b, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ldh a, [$36]
    ld d, c
    ld c, a
    ld a, $4b
    ld b, h
    ld b, d
    ld c, c
    ld d, [hl]
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    pop af
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, h
    ld a, $4f
    ld c, d
    ld b, d
    ld c, e
    ld d, c
    ldh a, [$2a]
    ld d, d
    ld b, [hl]
    ld b, c
    ld b, d
    ld d, b
    ld h, d
    ld b, c
    ld b, d
    ld a, $41
    pop af
    ld d, b
    ld c, l
    ld b, [hl]
    ld c, a
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, h
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    ldh a, [$35]
    ld b, [hl]
    ld b, c
    ld b, d
    ld d, b
    ld h, d
    ld c, h
    ld c, e
    ld h, d
    ld a, $62
    ld b, l
    ld c, h
    ld c, a
    ld d, b
    ld b, d
    ld h, d
    or [hl]
    pop af
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, c
    ld a, $4b
    ld b, b
    ld b, d
    ldh a, [$2b]
    ld a, $50
    ld h, d
    ld c, a
    ld b, d
    ld d, c
    ld a, $46
    ld c, e
    ld b, d
    ld b, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld b, l
    ld b, [hl]
    ld b, h
    ld b, l
    ld h, d
    inc l
    ld sp, $6237
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    pop af
    ld d, h
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld d, h
    ld a, $50
    ld h, d
    ld a, $49
    ld b, [hl]
    ld d, e
    ld b, d
    ldh a, [$35]
    ld b, d
    ld d, b
    ld d, d
    ld c, a
    ld c, a
    ld b, d
    ld b, b
    ld d, c
    ld b, d
    ld b, c
    ld h, d
    ld a, $50
    ld h, d
    ld a, $f1
    ld d, a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld b, d
    ld c, a
    ld d, e
    ld b, d
    pop af
    ld b, l
    ld a, $4f
    ld b, c
    ld h, d
    ld c, c
    ld a, $3f
    ld c, h
    ld c, a
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    pop af
    ld a, $62
    ld d, b
    ld d, h
    ld c, h
    ld c, a
    ld b, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld b, d
    ld a, $40
    ld b, l
    pop af
    ld c, h
    ld b, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, $62
    ld b, l
    ld a, $4b
    ld b, c
    ld d, b
    ldh a, [rNR52]
    ld c, a
    ld b, d
    ld a, $51
    ld b, d
    ld b, c
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    pop af
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld d, b
    ld e, [hl]
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, l
    ld a, $50
    ld h, d
    ld a, $f1
    ld b, l
    ld b, [hl]
    ld b, h
    ld b, l
    ld h, d
    inc l
    ld sp, $f037
    ld h, $3e
    ld c, e
    ld h, d
    ld b, c
    ld b, [hl]
    ld d, b
    ld b, h
    ld d, d
    ld b, [hl]
    ld d, b
    ld b, d
    ld h, d
    ld a, $50
    pop af
    ld a, $4b
    ld d, [hl]
    ld h, d
    ld b, b
    ld c, a
    ld b, d
    ld a, $51
    ld d, d
    ld c, a
    ld b, d
    ld h, d
    or [hl]
    pop af
    ld c, d
    ld b, [hl]
    ld c, d
    ld b, [hl]
    ld b, b
    ld h, d
    ld a, $4b
    ld d, [hl]
    ld h, d
    ld c, d
    ld c, h
    ld d, e
    ld b, d
    ldh a, [$2f]
    ld b, [hl]
    ld c, b
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, d
    ld a, $51
    pop af
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld h, d
    ld a, $4f
    ld b, d
    pop af
    ld c, l
    ld c, a
    ld b, d
    ld b, b
    ld b, [hl]
    ld c, h
    ld d, d
    ld d, b
    ld h, d
    or [hl]
    ld h, d
    ld d, b
    ld b, l
    ld b, [hl]
    ld c, e
    ld d, [hl]
    ldh a, [rNR50]
    ld c, e
    ld h, d
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld d, b
    ld c, l
    ld b, [hl]
    ld c, a
    ld b, [hl]
    ld d, c
    pop af
    ld c, l
    ld c, h
    ld d, b
    ld d, b
    ld b, d
    ld d, b
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld a, $f1
    ld d, h
    ld b, [hl]
    ld d, a
    ld a, $4f
    ld b, c
    ld l, b
    ld h, d
    ld d, h
    ld a, $4b
    ld b, c
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ld b, b
    ld a, $4b
    ld b, c
    ld c, c
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    pop af
    ld c, a
    ld b, d
    ld c, d
    ld a, $46
    ld c, e
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, c
    ld h, d
    ld d, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, c
    pop af
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$28]
    ld c, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld a, $4b
    pop af
    ld b, d
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld h, d
    ld c, e
    ld c, h
    ld b, [hl]
    ld d, b
    ld b, d
    ldh a, [rNR50]
    ld c, e
    ld h, d
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld d, b
    ld c, l
    ld b, [hl]
    ld c, a
    ld b, [hl]
    ld d, c
    pop af
    ld b, l
    ld a, $50
    ld h, d
    ld c, l
    ld c, h
    ld d, b
    ld d, b
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld b, c
    pop af
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, h
    ld c, h
    ld c, h
    ld b, c
    ld b, d
    ld c, e
    ld h, d
    ld c, d
    ld a, $50
    ld c, b
    ldh a, [$28]
    ld d, l
    ld c, l
    ld c, c
    ld c, h
    ld b, c
    ld b, d
    ld d, b
    ld h, d
    ld d, h
    ld b, l
    ld b, d
    ld c, e
    pop af
    ld a, $4b
    ld b, h
    ld b, d
    ld c, a
    ld b, d
    ld b, c
    ldh a, [rNR50]
    ccf
    ld d, b
    ld c, h
    ld c, a
    ccf
    ld d, b
    ld h, d
    ld a, $4b
    ld d, [hl]
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    pop af
    ld d, c
    ld b, l
    ld a, $51
    ld h, d
    ld c, a
    ld b, d
    ld b, e
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld c, h
    ld c, e
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, d
    ld b, [hl]
    ld c, a
    ld c, a
    ld c, h
    ld c, a
    ldh a, [$2f]
    ld b, [hl]
    ld b, e
    ld b, d
    ld h, d
    ld d, h
    ld a, $50
    ld h, d
    ccf
    ld c, a
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld d, c
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $4f
    ld c, d
    ld c, h
    ld c, a
    ld h, d
    or [hl]
    ld h, d
    ld b, [hl]
    ld d, c
    pop af
    ld c, a
    ld c, h
    ld a, $4a
    ld d, b
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    ldh a, [$2a]
    ld c, a
    ld a, $3f
    ld d, b
    ld h, d
    or [hl]
    ld h, d
    ld c, l
    ld a, $4f
    ld a, $49
    ld d, [hl]
    ld d, a
    ld b, d
    ld d, b
    pop af
    ld a, $4b
    ld d, [hl]
    ld h, d
    ld c, l
    ld c, a
    ld b, d
    ld d, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    pop af
    ld c, l
    ld a, $50
    ld d, b
    ld b, d
    ld d, b
    ldh a, [rNR50]
    ld h, d
    ld b, b
    ld c, c
    ld a, $56
    ld h, d
    ld b, c
    ld c, h
    ld c, c
    ld c, c
    pop af
    ccf
    ld c, a
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, e
    ld b, d
    ldh a, [rNR50]
    ld h, d
    ld b, c
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    pop af
    ld b, b
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld c, a
    ld d, d
    ld b, b
    ld d, c
    ld b, d
    ld b, c
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    pop af
    ld c, d
    ld b, d
    ld d, c
    ld a, $49
    ldh a, [rNR50]
    ld h, d
    ld b, b
    ld c, a
    ld b, d
    ld a, $51
    ld d, d
    ld c, a
    ld b, d
    ld h, d
    ld b, b
    ld c, a
    ld b, d
    ld a, $51
    ld b, d
    ld b, c
    pop af
    ld d, c
    ld c, h
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld b, d
    ld d, b
    ld d, c
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ldh a, [$29]
    ld a, $50
    ld b, l
    ld b, [hl]
    ld c, h
    ld c, e
    ld b, d
    ld b, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, b
    ld c, h
    pop af
    ld c, d
    ld d, d
    ld b, b
    ld b, l
    ld h, d
    ld c, l
    ld a, $50
    ld d, b
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    pop af
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, b
    ld a, $4a
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, e
    ld b, d
    ldh a, [$2c]
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld b, d
    ld b, d
    ld c, e
    ld h, d
    ld d, b
    ld a, $46
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $4b
    ld h, d
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    pop af
    ld b, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, c
    ld a, $4a
    ld c, l
    ldh a, [$2f]
    ld a, $50
    ld d, c
    ld h, d
    ld d, b
    ld d, d
    ld d, e
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, h
    ld a, $4f
    pop af
    ld c, a
    ld c, h
    ccf
    ld c, h
    ld d, c
    ld h, d
    ld c, d
    ld a, $41
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    pop af
    ld a, $4b
    ld h, d
    ld a, $4b
    ld b, b
    ld b, [hl]
    ld b, d
    ld c, e
    ld d, c
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$2f]
    ld d, d
    ld c, a
    ld c, b
    ld d, b
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld a, $f1
    ld c, l
    ld c, h
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, l
    ld b, [hl]
    ld b, c
    ld b, d
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld d, c
    ld d, [hl]
    ldh a, [$2f]
    ld b, [hl]
    ld b, e
    ld b, d
    ld h, d
    ld d, h
    ld a, $50
    ld h, d
    ccf
    ld c, a
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld d, c
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ccf
    ld a, $49
    ld c, c
    ld h, d
    ld c, h
    ld b, e
    pop af
    ld b, d
    ld c, e
    ld b, d
    ld c, a
    ld b, h
    ld d, [hl]
    ldh a, [$2c]
    ld d, c
    ld l, b
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld c, l
    ld c, h
    ld d, b
    ld b, d
    ld b, c
    pop af
    ld c, h
    ld b, e
    ld h, d
    ld a, $4b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, a
    ld b, h
    ld d, [hl]
    pop af
    ld b, b
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    or [hl]
    ld h, d
    ld c, d
    ld a, $44
    ld c, d
    ld a, $f0
    inc l
    ld d, c
    ld l, b
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld c, l
    ld c, h
    ld d, b
    ld b, d
    ld b, c
    pop af
    ld c, h
    ld b, e
    ld h, d
    ld a, $4b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, a
    ld b, h
    ld d, [hl]
    pop af
    ld b, b
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    or [hl]
    ld h, d
    ld b, [hl]
    ld b, b
    ld b, d
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld a, $4b
    ld d, [hl]
    ld c, h
    ld c, e
    ld b, d
    pop af
    ld d, h
    ld b, l
    ld c, h
    ld h, d
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld d, c
    ld b, d
    ld a, $49
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld d, c
    ld c, a
    ld b, d
    ld a, $50
    ld d, d
    ld c, a
    ld b, d
    ldh a, [rNR50]
    ld h, d
    ld c, b
    ld c, e
    ld b, d
    ld a, $41
    ld b, d
    ld b, c
    ld h, d
    ld b, c
    ld c, a
    ld b, [hl]
    ld b, d
    ld b, c
    pop af
    ld b, b
    ld c, c
    ld a, $56
    ld h, d
    ld b, c
    ld c, h
    ld c, c
    ld c, c
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    pop af
    ld b, b
    ld a, $4a
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, e
    ld b, d
    ldh a, [rNR50]
    ld h, d
    ld d, b
    ld d, c
    ld a, $40
    ld c, b
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld c, a
    ld c, h
    ld b, b
    ld c, b
    pop af
    ccf
    ld c, a
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld h, d
    ld b, b
    ld a, $4a
    ld b, d
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, e
    ld b, d
    ldh a, [rNR50]
    ld h, d
    ld d, b
    ld d, c
    ld a, $51
    ld d, d
    ld b, d
    ld h, d
    ld c, d
    ld a, $41
    ld b, d
    pop af
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld c, a
    ld c, h
    ld b, b
    ld c, b
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    pop af
    ld b, b
    ld a, $4a
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, e
    ld b, d
    ldh a, [$38]
    ld d, b
    ld d, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ld h, d
    ld b, c
    ld c, h
    ld c, a
    ld c, d
    ld a, $4b
    ld d, c
    pop af
    or [hl]
    ld h, d
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld d, b
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld a, $f1
    ld c, e
    ld c, h
    ld c, a
    ld c, d
    ld a, $49
    ld h, d
    ld c, a
    ld c, h
    ld b, b
    ld c, b
    ldh a, [$30]
    ld a, $41
    ld b, d
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld a, $4b
    pop af
    ld b, d
    ld c, c
    ld a, $50
    ld d, c
    ld b, [hl]
    ld b, b
    ld h, d
    or [hl]
    ld h, d
    ld b, c
    ld d, d
    ld c, a
    ld a, $3f
    ld c, c
    ld b, d
    pop af
    ld c, d
    ld b, d
    ld d, c
    ld a, $49
    ldh a, [$37]
    ld c, a
    ld b, [hl]
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, d
    ld c, e
    ld b, [hl]
    ld d, c
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, a
    ld d, d
    ld c, c
    ld b, d
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    ldh a, [$37]
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld c, a
    ld d, d
    ld b, d
    pop af
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld d, c
    ld d, [hl]
    ld h, d
    ld c, h
    ld b, e
    pop af
    daa
    ld c, a
    ld a, $40
    ld c, h
    cpl
    ld c, h
    ld c, a
    ld b, c
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ld c, h
    ld c, e
    ld b, d
    ld h, d
    ld d, h
    ld b, l
    ld c, h
    pop af
    ld c, l
    ld c, c
    ld a, $4b
    ld c, e
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, a
    ld b, d
    ld d, e
    ld b, [hl]
    ld d, e
    ld b, d
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    daa
    ld b, d
    ld d, b
    ld d, c
    ld c, a
    ld d, d
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ldh a, [rNR50]
    ld c, e
    ld h, d
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld b, c
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    pop af
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld e, [hl]
    ld h, d
    ld c, a
    ld d, d
    ld c, c
    ld b, d
    ld c, a
    ld h, d
    ld c, h
    ld b, e
    pop af
    ld a, $49
    ld c, c
    ld h, d
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld c, a
    ld d, d
    ld b, b
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    ldh a, [$37]
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    pop af
    ld b, b
    ld c, h
    ld c, e
    ld d, c
    ld c, a
    ld c, h
    ld c, c
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    pop af
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld c, h
    ld d, d
    ld c, a
    ld b, b
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    pop af
    ld a, $49
    ld c, c
    ld h, d
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $46
    ld c, e
    ld b, d
    ld b, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    pop af
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, l
    ld b, d
    ld a, $4f
    ld c, c
    ld h, d
    ld c, h
    ld b, e
    pop af
    ld b, d
    ld d, e
    ld c, h
    ld c, c
    ld d, d
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    ldh a, [$28]
    ld d, l
    ld b, [hl]
    ld d, b
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld b, d
    ld d, [hl]
    ld c, h
    ld c, e
    ld b, c
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ccf
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    pop af
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    ld d, b
    ld c, l
    ld a, $40
    ld b, d
    ldh a, [rNR50]
    ld c, e
    ld h, d
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, d
    ld d, h
    ld b, l
    ld c, h
    pop af
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, a
    ld d, d
    ld c, c
    ld b, d
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, l
    ld d, d
    ld c, d
    ld a, $4b
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    ldh a, [$37]
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld c, a
    ld d, d
    ld b, d
    pop af
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld d, c
    ld d, [hl]
    pop af
    ld c, h
    ld b, e
    ld h, d
    jr nc, jr_04d_767e

    ld c, a
    ld d, d
    ld b, c
    ld a, $3e
    ld d, b
    ldh a, [$37]
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    pop af
    ld b, b
    ld c, h
    ld c, e
    ld d, c
    ld c, a
    ld c, h
    ld c, c
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    pop af
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ldh a, [rNR50]
    ld c, e
    ld h, d
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    pop af
    ld c, c
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ccf
    ld b, d

jr_04d_767e:
    ld d, c
    ld d, h
    ld b, d
    ld b, d
    ld c, e
    pop af
    ld c, a
    ld b, d
    ld a, $49
    ld b, [hl]
    ld d, c
    ld d, [hl]
    ld h, d
    or [hl]
    ld h, d
    ld b, e
    ld a, $4b
    ld d, c
    ld a, $50
    ld d, [hl]
    ldh a, [$36]
    ld b, l
    ld b, d
    ld b, c
    ld h, d
    ld c, h
    ld b, e
    ld b, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld b, c
    ld b, [hl]
    ld d, b
    ld b, h
    ld d, d
    ld b, [hl]
    ld d, b
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld d, h
    pop af
    ld c, h
    ld b, e
    ld b, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld b, d
    ld c, e
    ld b, h
    ld d, c
    ld b, l
    ldh a, [$32]
    ld c, e
    ld c, c
    ld d, [hl]
    ld h, d
    ld a, $62
    ld d, c
    ld c, a
    ld d, d
    ld b, d
    pop af
    ld d, h
    ld a, $4f
    ld c, a
    ld b, [hl]
    ld c, h
    ld c, a
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ld c, a
    ld b, d
    ld d, e
    ld b, d
    ld a, $49
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, a
    ld b, d
    ld a, $49
    ld h, d
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld d, c
    ld d, [hl]
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld c, h
    ld b, e
    pop af
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld c, a
    ld d, d
    ld b, b
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, d
    or [hl]
    pop af
    ld b, b
    ld a, $4f
    ld c, e
    ld a, $44
    ld b, d
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
