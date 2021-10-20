; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04c", ROMX[$4000], BANK[$4c]

    ld c, h
    pop de
    ld b, d
    db $e3
    ld b, d
    ld [$f142], a
    ld b, d
    add hl, de
    ld b, b
    dec d
    ld b, d
    dec sp
    ld b, d
    ld c, c
    ld b, d
    ld e, e
    ld b, d
    ld h, e
    ld b, d
    sbc c
    ld b, d
    rst $08
    ld b, d
    dec b
    ld b, e
    rra
    ld b, e
    ld b, b
    ld b, e
    ld h, [hl]
    ld b, e
    add a
    ld b, e
    xor e
    ld b, e
    rst $08
    ld b, e
    pop af
    ld b, e
    dec d
    ld b, h
    jr c, jr_04c_4071

    ld d, d
    ld b, h
    add d
    ld b, h
    xor a
    ld b, h
    pop de
    ld b, h
    ldh a, [rLY]
    rla
    ld b, l
    jr z, jr_04c_4080

    add hl, sp
    ld b, l
    ld d, l
    ld b, l
    ld l, d
    ld b, l
    ld a, l
    ld b, l
    sub a
    ld b, l
    xor c
    ld b, l
    cp [hl]
    ld b, l
    jp nc, $e645

    ld b, l
    ld de, $3a46
    ld b, [hl]
    ld h, [hl]
    ld b, [hl]
    sub d
    ld b, [hl]
    cp [hl]
    ld b, [hl]
    jp hl


    ld b, [hl]
    ld de, $4747
    ld b, a
    ld a, l
    ld b, a
    adc d
    ld b, a
    sbc c
    ld b, a
    xor b
    ld b, a
    or [hl]
    ld b, a
    rst $08
    ld b, a
    rst $18
    ld b, a
    di
    ld b, a
    ld [$1d48], sp
    ld c, b

jr_04c_4071:
    cpl
    ld c, b
    ld b, d
    ld c, b
    ld e, a
    ld c, b
    add a
    ld c, b
    and h
    ld c, b
    or l
    ld c, b
    sub $48
    pop af

jr_04c_4080:
    ld c, b
    dec c
    ld c, c
    ld h, $49
    ld e, [hl]
    ld c, c
    ld [hl], d
    ld c, c
    adc l
    ld c, c
    or b
    ld c, c
    adc $49
    push hl
    ld c, c
    nop
    ld c, d
    ld a, [de]
    ld c, d
    ld [hl-], a
    ld c, d
    ld d, b
    ld c, d
    ld l, d
    ld c, d
    and [hl]
    ld c, d
    cp e
    ld c, d
    reti


    ld c, d
    xor $4a
    inc bc
    ld c, e
    rla
    ld c, e
    inc l
    ld c, e
    ld a, [hl-]
    ld c, e
    ld c, a
    ld c, e
    ld l, h
    ld c, e
    add h
    ld c, e
    sbc a
    ld c, e
    or l
    ld c, e
    db $eb
    ld c, e
    ld de, $354c
    ld c, h
    ld c, h
    ld c, h
    ld h, e
    ld c, h
    add a

Jump_04c_40c0:
    ld c, h
    xor h
    ld c, h
    ret nc

    ld c, h
    db $f4
    ld c, h
    inc hl
    ld c, l
    ld c, [hl]
    ld c, l
    ld e, l
    ld c, l
    sub h
    ld c, l
    xor e
    ld c, l
    rst $00
    ld c, l
    db $db
    ld c, l
    add sp, $4d
    ld bc, $1a4e
    ld c, [hl]
    inc sp
    ld c, [hl]
    ld h, l
    ld c, [hl]
    sub e
    ld c, [hl]
    ret z

    ld c, [hl]
    db $f4
    ld c, [hl]
    jr nz, jr_04c_4136

    ld d, h
    ld c, a
    db $76
    ld c, a
    sub e
    ld c, a
    xor e
    ld c, a
    db $d3
    ld c, a
    pop af
    ld c, a
    ld a, [de]
    ld d, b
    inc sp
    ld d, b
    ld d, c
    ld d, b
    ld [hl], b
    ld d, b
    adc h
    ld d, b
    xor d
    ld d, b
    cp h
    ld d, b
    cp $50
    dec hl
    ld d, c
    ld b, d
    ld d, c
    ld d, h
    ld d, c
    ld [hl], l
    ld d, c
    sub e
    ld d, c
    and l
    ld d, c
    cp c
    ld d, c
    ld [c], a
    ld d, c
    ld [de], a
    ld d, d
    ccf
    ld d, d
    ld d, a
    ld d, d
    ld [hl], c
    ld d, d
    add a
    ld d, d
    sbc a
    ld d, d
    cp c
    ld d, d
    reti


    ld d, d
    db $eb
    ld d, d
    ld a, [bc]
    ld d, e
    ld hl, $3753
    ld d, e
    ld d, [hl]
    ld d, e
    ld [hl], l
    ld d, e
    adc a
    ld d, e
    xor c
    ld d, e
    push bc
    ld d, e
    reti


jr_04c_4136:
    ld d, e
    ld [$fb53], a
    ld d, e
    add hl, de
    ld d, h
    add hl, sp
    ld d, h
    ld e, d
    ld d, h
    ld [hl], a
    ld d, h
    sub h
    ld d, h
    or h
    ld d, h
    call z, $e654
    ld d, h
    inc bc
    ld d, l
    add hl, hl
    ld d, l
    ld d, h
    ld d, l
    add c
    ld d, l
    sbc h
    ld d, l
    cp b
    ld d, l
    ret z

    ld d, l
    pop hl
    ld d, l
    db $f4
    ld d, l
    ld de, $2c56
    ld d, [hl]
    inc a
    ld d, [hl]
    ld h, a
    ld d, [hl]
    ld [hl], a
    ld d, [hl]
    sub [hl]
    ld d, [hl]
    cp b
    ld d, [hl]
    adc $56
    cp $56
    inc d
    ld d, a
    ld [hl+], a
    ld d, a
    ld b, d
    ld d, a
    ld h, b
    ld d, a
    ld a, c
    ld d, a
    sub l
    ld d, a
    cp c
    ld d, a
    call c, $f657
    ld d, a
    db $10
    ld e, b
    dec l
    ld e, b
    inc a
    ld e, b
    ld e, d
    ld e, b
    ld [hl], c
    ld e, b
    add a
    ld e, b
    and [hl]
    ld e, b
    sub $58
    db $ec
    ld e, b
    inc b
    ld e, c
    dec e
    ld e, c
    jr c, jr_04c_41f2

    jr c, jr_04c_41f4

    ld c, d
    ld e, c
    ld h, e
    ld e, c
    ld a, a
    ld e, c
    sbc d
    ld e, c
    or a
    ld e, c
    ret nc

    ld e, c
    and $59
    ld a, [$0d59]
    ld e, d
    inc h
    ld e, d
    jr c, jr_04c_420b

    ld d, h
    ld e, d
    ld l, d
    ld e, d
    ld a, h
    ld e, d
    adc l
    ld e, d
    sbc a
    ld e, d
    cp c
    ld e, d
    ret z

    ld e, d
    rst $10
    ld e, d
    and $5a
    ld sp, hl
    ld e, d
    dec c
    ld e, e
    dec h
    ld e, e
    jr c, jr_04c_4226

    ld c, b
    ld e, e
    ld e, [hl]
    ld e, e
    ld [hl], d
    ld e, e
    add b
    ld e, e
    sub a
    ld e, e
    xor a
    ld e, e
    adc $5b
    db $eb
    ld e, e
    inc b
    ld e, h
    inc hl
    ld e, h
    ld a, e
    ld e, h
    adc d
    ld e, h
    sbc [hl]
    ld e, h
    cp e
    ld e, h
    bit 3, h
    add sp, $5c
    ld sp, hl
    ld e, h
    ld c, $5d
    dec hl
    ld e, l
    ld b, a

jr_04c_41f2:
    ld e, l
    ld e, d

jr_04c_41f4:
    ld e, l
    ld [hl], c
    ld e, l
    adc e
    ld e, l
    sbc [hl]
    ld e, l
    or [hl]
    ld e, l
    call nc, $f45d
    ld e, l
    inc l
    ld e, [hl]
    ld c, l
    ld e, [hl]
    ld l, d
    ld e, [hl]
    adc l
    ld e, [hl]
    or d
    ld e, [hl]

jr_04c_420b:
    rst $10
    ld e, [hl]
    db $fd
    ld e, [hl]
    ld [de], a
    ld e, a
    ld b, c
    ld e, a
    ld l, h
    ld e, a
    ld l, l
    ld e, a
    add [hl]
    ld e, a
    and a
    ld e, a
    jp z, Jump_000_025f

    ld h, b
    ld [hl-], a
    ld h, b
    ld l, c
    ld h, b
    sbc [hl]
    ld h, b
    ld a, [c]

jr_04c_4226:
    ld h, b
    daa
    ld h, c
    ld b, l
    ld h, c
    ld [hl], b
    ld h, c
    sbc d
    ld h, c
    ret z

    ld h, c
    ei
    ld h, c
    ld b, e
    ld h, d
    ld [hl], b
    ld h, d
    xor h
    ld h, d
    db $e3
    ld h, d
    rra
    ld h, e
    ld b, l
    ld h, e
    ld b, l
    ld h, e
    ld [hl], l
    ld h, e
    and e
    ld h, e
    or l
    ld h, e
    ret


    ld h, e
    push hl
    ld h, e
    push hl
    ld h, e
    push hl
    ld h, e
    push hl
    ld h, e
    push hl
    ld h, e
    push hl
    ld h, e
    push hl
    ld h, e
    push hl
    ld h, e
    push hl
    ld h, e
    push hl
    ld h, e
    ld bc, $2964
    ld h, h
    ld b, a
    ld h, h
    ld h, h
    ld h, h
    ld a, b
    ld h, h
    sub b
    ld h, h
    xor h
    ld h, h
    cp h
    ld h, h
    ret z

    ld h, h
    push de
    ld h, h
    add sp, $64
    inc bc
    ld h, l
    dec de
    ld h, l
    inc [hl]
    ld h, l
    ld b, d
    ld h, l
    ld c, l
    ld h, l
    ld e, d
    ld h, l
    ld h, l
    ld h, l
    ld a, c
    ld h, l
    adc c
    ld h, l
    sub l
    ld h, l
    sbc [hl]
    ld h, l
    or c
    ld h, l
    or c
    ld h, l
    cp d
    ld h, l
    rst $00
    ld h, l
    db $db
    ld h, l
    and $65
    ld a, [$0565]
    ld h, [hl]
    ld b, $66
    inc d
    ld h, [hl]
    dec l
    ld h, [hl]
    ccf
    ld h, [hl]
    ld d, d
    ld h, [hl]
    ld d, h
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    sbc a
    ld h, [hl]
    cp d
    ld h, [hl]
    call z, $ce66
    ld h, [hl]
    db $e4
    ld h, [hl]

Call_04c_42b1:
    ld [$3067], sp
    ld h, a
    ld [hl], c
    ld h, a
    ld a, h
    ld h, a
    cp e
    ld h, a
    cp l
    ld h, a
    db $cc, $67, $0d
    ld l, b
    ld e, h
    ld l, b
    and a
    ld l, b
    cp c
    ld l, b
    ret


    ld l, b
    add sp, $68
    ld a, [$1068]
    ld l, c
    ld b, h
    ld l, c

Call_04c_42d1:
    ld a, [$c823]
    cp $ff
    ret z

    ld de, $4009
    call Call_000_05b6
    ld a, $ff
    ld [$c823], a
    ret


    ld de, $4009
    call Call_000_05f6
    ret


    call Call_04c_42d1
    call Call_000_0609
    ret


    ld a, [$dd6d]
    add $d7
    ld [$c823], a
    xor a
    ld [$c822], a
    call Call_04c_42d1
    xor a
    ld [$dd6d], a
    ret


    db $ed
    cpl
    ld c, h
    ld c, h
    ld c, b
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld h, e
    pop af
    ld sp, hl
    nop
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, e
    db $fc
    db $10
    db $ec
    ldh a, [$ed]
    jr c, jr_04c_4367

    sbc h
    ld c, h
    ld b, l
    ld h, e
    ld h, d
    inc h
    ld h, d
    ld b, h
    ld a, $4b
    ld b, h
    ld h, d
    ld c, h
    ld b, e
    pop af
    ld sp, hl
    nop
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    db $fc
    db $10
    db $ec
    ldh a, [$ed]
    ld a, [hl-]
    ld a, $51
    ld b, b
    ld b, l
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld h, e
    pop af
    ld sp, hl
    nop
    ld h, d
    ld a, $4b
    ld b, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    db $10
    pop af
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, e
    db $fc
    db $10
    db $ec
    ldh a, [$ed]

jr_04c_4367:
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, l
    ld a, $50
    ld c, e
    ld h, a
    pop af
    ld d, b
    ld c, l
    ld c, h
    ld d, c
    ld d, c
    ld b, d
    ld b, c
    ld h, d
    ld d, d
    ld d, b
    ld h, d
    ld d, [hl]
    ld b, d
    ld d, c
    ld h, e
    db $fc
    db $10
    db $ec
    ldh a, [$ed]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld d, [hl]
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld c, e
    ld h, a
    pop af
    ld d, b
    ld c, l
    ld c, h
    ld d, c
    ld d, c
    ld b, d
    ld b, c
    ld h, d
    ld d, d
    ld d, b
    ld h, d
    ld d, [hl]
    ld b, d
    ld d, c
    ld h, e
    db $fc
    db $10
    db $ec
    ldh a, [$ed]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld d, [hl]
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld c, e
    ld h, a
    pop af
    ld d, b
    ld c, l
    ld c, h
    ld d, c
    ld d, c
    ld b, d
    ld b, c
    ld h, d
    ld d, d
    ld d, b
    ld h, d
    ld d, [hl]
    ld b, d
    ld d, c
    ld h, e
    db $fc
    db $10
    db $ec
    ldh a, [$ed]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld d, h
    ld b, d
    ld l, h
    ld b, d
    ld h, d
    ld b, b
    ld a, $52
    ld b, h
    ld b, l
    ld d, c
    pop af
    ld b, [hl]
    ld d, c
    ld h, d
    ld c, h
    ld b, e
    ld b, e
    sbc h
    ld b, h
    ld d, d
    ld a, $4f
    ld b, c
    ld h, e
    db $fc
    db $10
    db $ec
    ldh a, [$ed]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld d, h
    ld b, d
    ld l, h
    ld b, d
    ld h, d
    ld b, b
    ld a, $52
    ld b, h
    ld b, l
    ld d, c
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld c, d
    ld h, d
    ld c, h
    ld b, e
    ld b, e
    sbc h
    ld b, h
    ld d, d
    ld a, $4f
    ld b, c
    ld h, e
    db $fc
    db $10
    db $ec
    ldh a, [rNR51]
    ld d, d
    ld d, c
    ld h, d
    ld d, h
    ld b, d
    ld l, h
    ld b, d
    ld h, d
    ld b, b
    ld a, $52
    ld b, h
    ld b, l
    ld d, c
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld c, d
    ld h, d
    ld c, h
    ld b, e
    ld b, e
    sbc h
    ld b, h
    ld d, d
    ld a, $4f
    ld b, c
    ld h, e
    db $fc
    db $10
    db $ec
    ldh a, [$36]
    ld d, d
    ld b, c
    ld b, c
    ld b, d
    ld c, e
    ld c, c
    ld d, [hl]
    ld h, d
    sbc h
    pop af
    ld sp, hl
    nop
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, e
    db $fc
    db $10
    db $ec
    ldh a, [$36]
    ld d, d
    ld b, c
    ld b, c
    ld b, d
    ld c, e
    ld c, c
    ld d, [hl]
    ld e, [hl]
    ld h, d
    ld a, $62
    ld b, h
    ld a, $4b
    ld b, h
    pop af
    ld c, h
    ld b, e
    ld h, d
    ld sp, hl
    nop
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, e
    pop af
    db $fc
    db $10
    db $ec
    ldh a, [$36]
    ld d, d
    ld b, c
    ld b, c
    ld b, d
    ld c, e
    ld c, c
    ld d, [hl]
    ld e, [hl]
    ld h, d
    ld a, $62
    ld b, h
    ld a, $4b
    ld b, h
    pop af
    ld c, h
    ld b, e
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, e
    pop af
    db $fc
    db $10
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld c, c
    ld a, $52
    ld c, e
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    pop af
    ld a, $62
    ld d, b
    ld d, d
    ld c, a
    ld c, l
    ld c, a
    ld b, [hl]
    ld d, b
    ld b, d
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, e
    db $fc
    db $10
    db $ec
    ldh a, [rNR50]
    ld c, d
    ccf
    ld d, d
    ld d, b
    ld b, l
    ld h, e
    ld h, d
    ld sp, hl
    nop
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
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, e
    db $fc
    db $10
    db $ec
    ldh a, [rNR50]
    ld c, d
    ccf
    ld d, d
    ld d, b
    ld b, l
    ld h, e
    ld h, d
    inc h
    ld h, d
    ld b, h
    ld a, $4b
    ld b, h
    ld h, d
    ld c, h
    ld b, e
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
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, e
    db $fc
    db $10
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld d, b
    ld c, c
    ld b, d
    ld b, d
    ld c, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld b, b
    ld c, h
    ld c, e
    ld b, e
    ld d, d
    ld d, b
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld a, $4a
    ld b, d
    ld d, b
    pop af
    ld a, $62
    ld c, c
    ld d, d
    ld c, d
    ld c, l
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld b, [hl]
    ld c, a
    ld c, h
    ld c, e
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld b, e
    ld c, a
    ld c, h
    ld d, a
    ld b, d
    ld c, e
    ld h, d
    ld d, b
    ld c, h
    ld c, c
    ld b, [hl]
    ld b, c
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld c, l
    ld a, $4f
    ld a, $49
    ld d, [hl]
    ld d, a
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld b, b
    ld a, $4b
    ld h, a
    pop af
    ld c, a
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, d
    ld b, c
    ld a, $4b
    ld b, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld d, b
    ld b, l
    ld b, [hl]
    ld d, e
    ld b, d
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, b
    ld a, $4b
    ld h, a
    pop af
    ld b, h
    ld b, d
    ld d, c
    ld h, d
    ld d, d
    ld c, l
    ld h, d
    ld d, [hl]
    ld b, d
    ld d, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, b
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld d, b
    pop af
    ld b, [hl]
    ld c, e
    ld h, d
    ld b, e
    ld b, d
    ld a, $4f
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld b, c
    ld a, $56
    ld b, c
    ld c, a
    ld b, d
    ld a, $4a
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    db $ec
    ldh a, [rNR50]
    ld h, d
    ld b, b
    ld d, d
    ld c, a
    ld d, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, b
    ld a, $50
    ld d, c
    pop af
    ld c, h
    ld c, e
    ld h, d
    ld sp, hl
    nop
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld b, b
    ld c, h
    ld c, e
    ld b, e
    ld d, d
    ld d, b
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [rNR50]
    ld h, d
    ld b, b
    ld d, d
    ld c, a
    ld d, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, b
    ld a, $50
    ld d, c
    pop af
    ld c, h
    ld c, e
    ld h, d
    ld sp, hl
    nop
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    nop
    ld h, d
    ld b, b
    ld a, $4b
    ld h, a
    pop af
    ld c, d
    ld c, h
    ld d, e
    ld b, d
    ld h, e
    db $ec
    ldh a, [$ed]
    inc h
    ld h, d
    ld b, b
    ld d, d
    ld c, a
    ld d, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, b
    ld a, $50
    ld d, c
    pop af
    ld c, h
    ld c, e
    ld h, d
    ld sp, hl
    nop
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    nop
    ld h, d
    ld c, c
    ld c, h
    ld d, b
    ld b, d
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, d
    dec hl
    inc sp
    ld h, e
    db $ec
    ldh a, [$ed]
    inc h
    ld h, d
    ld b, b
    ld d, d
    ld c, a
    ld d, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, b
    ld a, $50
    ld d, c
    pop af
    ld c, h
    ld c, e
    ld h, d
    ld sp, hl
    nop
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    nop
    ld h, d
    ld c, c
    ld c, h
    ld d, b
    ld b, d
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, d
    jr nc, jr_04c_46c2

    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld h, d
    ld sp, hl
    db $10
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld b, d
    ld c, e
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld h, d
    jr nc, jr_04c_46ed

    ld h, e
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d

jr_04c_46c2:
    ld b, b
    ld a, $50
    ld d, c
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ccf
    ld c, c
    ld c, h
    ld b, b
    ld c, b
    ld b, d
    ld b, c
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d

jr_04c_46ed:
    ld b, b
    ld a, $50
    ld d, c
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld d, h
    ld a, $50
    pop af
    ccf
    ld c, a
    ld c, h
    ld c, b
    ld b, d
    ld c, e
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld d, b
    ld c, l
    ld b, [hl]
    ld d, c
    ld h, d
    ld sp, hl
    db $10
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, d
    ld c, h
    ld d, d
    ld d, c
    ld b, l
    pop af
    ld b, [hl]
    ld d, b
    ld h, d
    ccf
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    ld h, d
    ld d, b
    ld b, l
    ld d, d
    ld d, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld c, l
    ld b, d
    ld c, a
    ld b, e
    ld c, h
    ld c, a
    ld c, d
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    db $10
    ld h, e
    pop af
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, c
    ld a, $4b
    ld b, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ccf
    ld c, c
    ld c, h
    ld b, b
    ld c, b
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld b, b
    ld a, $50
    ld d, c
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, c
    ld b, l
    ld c, a
    ld c, h
    ld d, h
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, b
    ld c, l
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld c, l
    ld b, d
    ld c, a
    ld b, e
    ld c, h
    ld c, a
    ld c, d
    ld d, b
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld sp, hl
    db $10
    ld h, e
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld c, h
    ld d, c
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld b, c
    ld b, d
    ld b, e
    ld b, d
    ld c, e
    ld b, c
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld b, d
    ld c, c
    ld b, e
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld b, d
    ld d, b
    ld b, b
    ld a, $4d
    ld b, d
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld b, d
    ld d, b
    ld b, b
    ld a, $4d
    ld b, d
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld b, a
    ld d, d
    ld c, d
    ld c, l
    ld d, b
    pop af
    ld c, h
    ld c, e
    ld h, d
    ld sp, hl
    jr nz, jr_04c_4890

    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, b
    ld b, l
    ld a, $4f
    ld b, h
    ld b, d
    ld d, b
    pop af
    ld a, $51
    ld h, d
    ld sp, hl
    jr nz, jr_04c_48a3

    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    pop af
    ld b, [hl]
    ld c, e
    ld h, d
    ld b, c
    ld b, d
    ld d, b
    ld c, l
    ld b, d
    ld c, a
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld c, c
    ld a, $52
    ld c, e
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld h, d
    ld a, $62
    ld d, b
    ld d, d
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, c
    ld b, d
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, d
    ld c, h
    ld c, e
    pop af
    ld sp, hl
    jr nz, jr_04c_48e8

    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40

jr_04c_4890:
    ld c, b
    ld d, b
    pop af
    ld sp, hl
    jr nz, jr_04c_48f8

    ld b, [hl]
    ld c, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld c, a
    ld a, $44
    ld b, d
    ld h, e
    pop af
    db $ec

jr_04c_48a3:
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld d, b
    ld c, c
    ld a, $50
    ld b, l
    ld b, d
    ld d, b
    pop af
    ld sp, hl
    jr nz, @+$61

    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld b, b
    ld b, l
    ld a, $4f
    ld b, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    pop af
    ld b, l
    ld b, [hl]
    ld b, h
    ld b, l
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c

jr_04c_48e8:
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld c, b
    ld d, [hl]
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld b, c
    ld b, [hl]
    ld d, e

jr_04c_48f8:
    ld b, d
    ld d, b
    pop af
    ld b, c
    ld c, h
    ld d, h
    ld c, e
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld b, b
    ld b, d
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, c
    ld a, $48
    ld b, d
    ld d, b
    pop af
    ld a, $62
    ld b, c
    ld b, d
    ld b, d
    ld c, l
    ld h, d
    ccf
    ld c, a
    ld b, d
    ld a, $51
    ld b, l
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld c, l
    ld c, a
    ld a, $56
    ld d, b
    pop af
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld a, $62
    ld c, d
    ld b, [hl]
    ld c, a
    ld a, $40
    ld c, c
    ld b, d
    ld e, a
    db $fc
    db $10
    db $ec
    ld a, [c]
    inc h
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
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, c
    pop af
    ld d, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, d
    ld d, b
    ld h, d
    ld sp, hl
    jr nz, jr_04c_49bf

    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, b
    ld a, $49
    ld c, c
    ld d, b
    pop af
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld b, l
    ld b, d
    ld c, c
    ld c, l
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, [hl]
    ld b, d
    ld c, c
    ld c, c
    ld d, b
    pop af
    ld c, c
    ld c, h
    ld d, d
    ld b, c
    ld c, c
    ld d, [hl]
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld b, l
    ld b, d
    ld c, c
    ld c, l
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld b, b
    ld a, $49
    ld c, d
    ld d, b
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld b, d
    ld c, c
    ld b, e
    ld h, d
    ld a, $4b
    ld b, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, e
    ld c, h
    ld b, b
    ld d, d
    ld d, b
    ld b, d
    ld d, b
    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, b
    ld c, c
    ld a, $50
    ld b, l
    ld b, d
    ld d, b
    pop af
    ld a, $51
    ld h, d
    ld d, c

jr_04c_49bf:
    ld c, h
    ld c, a
    ld c, e
    ld a, $41
    ld c, h
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, [hl]
    ld b, d
    ld c, c
    ld c, c
    ld d, b
    pop af
    ld a, $4b
    ld b, c
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, b
    ld c, a
    ld b, d
    ld a, $51
    ld b, d
    ld d, b
    pop af
    ld a, $62
    ld d, e
    ld a, $40
    ld d, d
    ld d, d
    ld c, d
    ld h, d
    ld d, h
    ld a, $53
    ld b, d
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, b
    ld a, $49
    ld c, c
    ld d, b
    pop af
    ld b, c
    ld c, h
    ld d, h
    ld c, e
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld c, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, c
    ld b, l
    ld c, a
    ld c, h
    ld d, h
    ld d, b
    pop af
    ld a, $62
    ld b, l
    ld d, d
    ld b, h
    ld b, d
    ld h, d
    ld c, a
    ld c, h
    ld b, b
    ld c, b
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, b
    ld d, d
    ld c, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    pop af
    ld b, l
    ld c, h
    ld c, a
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, [hl]
    ld b, b
    ld h, d
    ld d, c
    ld b, l
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld d, b
    ld d, d
    ld c, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    dec h
    ld b, [hl]
    ld b, h
    dec h
    ld a, $4b
    ld b, h
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld d, b
    pop af
    ld a, $49
    ld c, c
    ld h, d
    ld c, d
    ld a, $44
    ld b, [hl]
    ld b, b
    ld h, d
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld d, b
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    inc h
    ld h, d
    ld b, l
    ld d, d
    ld b, h
    ld b, d
    ld h, d
    ccf
    ld d, d
    ld c, a
    ld d, b
    ld d, c
    ld h, d
    ld c, h
    ld b, e
    pop af
    ld c, d
    ld a, $44
    ld b, [hl]
    ld b, b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, a
    ld b, h
    ld d, [hl]
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld c, d
    ld d, d
    ld c, d
    ccf
    ld c, c
    ld b, d
    ld d, b
    pop af
    ld a, $62
    ld b, b
    ld d, d
    ld c, a
    ld d, b
    ld b, d
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, b
    ld d, d
    ld c, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    pop af
    ld d, d
    ld c, l
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld [hl], $3e
    ld c, e
    ld b, c
    ld [hl], $51
    ld c, h
    ld c, a
    ld c, d
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, b
    ld d, c
    ld a, $4f
    ld d, c
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld b, c
    ld a, $4b
    ld b, b
    ld b, d
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    pop af
    ld sp, hl
    jr nz, @+$64

    ld a, $62
    ld b, l
    ld d, d
    ld b, h
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, b
    pop af
    ld sp, hl
    jr nz, jr_04c_4b77

    ld h, d
    ld b, e
    ld a, $40
    ld b, d
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, b
    ld d, h
    ld b, d
    ld b, d
    ld c, l
    ld d, b
    pop af
    ld sp, hl
    jr nz, jr_04c_4b8c

    ld h, d
    ld c, c
    ld b, d
    ld b, h
    ld d, b
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, c
    ld c, a
    ld b, [hl]
    ld c, l
    ld d, b
    pop af
    ld sp, hl
    jr nz, jr_04c_4b9b

    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld d, d
    ld d, c
    ld d, b
    pop af
    ld a, $62
    ld a, [hl-]
    ld a, $4f
    ld h, $4f
    ld d, [hl]
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld d, b
    ld d, d
    ld c, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    pop af
    ld c, e
    ld a, $51
    ld d, d
    ld c, a
    ld a, $49
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld b, b
    ld b, d
    ld d, b
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, b
    ld c, a
    ld b, d
    ld a, $51
    ld b, d
    ld d, b
    pop af

jr_04c_4b77:
    ld a, $62
    ld d, c
    ld a, $46
    ld c, c
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, b
    ld d, d
    ld c, d
    ld c, d
    ld c, h

jr_04c_4b8c:
    ld c, e
    ld d, b
    pop af
    ld a, $62
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e

jr_04c_4b9b:
    ld b, c
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ccf
    ld b, [hl]
    ld c, e
    ld b, c
    ld d, b
    pop af
    ld sp, hl
    jr nz, jr_04c_4c14

    ld h, d
    ld c, d
    ld c, h
    ld d, d
    ld d, c
    ld b, l
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld c, d
    ld b, d
    ld b, c
    ld b, [hl]
    ld d, c
    ld a, $51
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, b
    ld a, $49
    ld c, d
    ld c, c
    ld d, [hl]
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    nop
    ld l, b
    ld h, d
    ld d, b
    ld b, b
    ld a, $4f
    ld d, b
    pop af
    ld d, b
    ld d, c
    ld a, $4f
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, l
    ld b, d
    ld a, $49
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld d, b
    ld d, c
    ld a, $4f
    ld d, c
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    db $fc
    db $10
    db $ec
    ld a, [c]
    cpl
    ld b, [hl]
    ld b, e
    ld b, d
    ld [hl], $4c
    ld c, e
    ld b, h
    ld h, e
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop

jr_04c_4c14:
    pop af
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld d, b
    ld h, d
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, [hl]
    ld c, e
    ld b, h
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld c, h
    ld c, e
    ld b, h
    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld c, l
    ld c, a
    ld b, d
    ld c, l
    ld a, $4f
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld e, a
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld c, l
    ld c, a
    ld c, h
    ld b, b
    ld d, c
    ld b, d
    ld b, b
    ld d, c
    ld d, b
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    jr nz, jr_04c_4cc3

    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld c, l
    ld c, a
    ld b, d
    ld c, l
    ld a, $4f
    ld b, d
    ld d, b
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, e
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, a
    ld b, d
    ld a, $41
    ld d, [hl]
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, e
    ld b, d
    ld c, e
    ld b, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld a, $4b
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld e, a
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld c, l
    ld c, a
    ld b, d
    ld c, l
    ld a, $4f
    ld b, d
    ld d, b
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    db $fc

jr_04c_4cc3:
    db $10
    db $ec
    ld a, [c]
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, e
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld c, l
    ld c, a
    ld b, d
    ld c, l
    ld a, $4f
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, b
    ld c, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld c, h
    ld c, l
    ld b, d
    ld c, e
    ld d, b
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, d
    ld c, h
    ld d, d
    ld d, c
    ld b, l
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld d, d
    ld b, b
    ld c, b
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld b, c
    ld c, c
    ld d, [hl]
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, l
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld b, d
    ld c, c
    ld b, e
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld d, b
    ld b, b
    ld a, $4f
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld b, c
    ld a, $50
    ld b, l
    ld b, d
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld d, h
    ld a, $4f
    ld b, c
    ld d, b
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    jr nz, jr_04c_4dd9

    pop af
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld d, b
    ld d, c
    ld d, d
    ld c, d
    ccf
    ld c, c
    ld b, d
    ld d, b
    ld h, d
    ld a, $4b
    ld b, c
    pop af
    ld b, e
    ld a, $49
    ld c, c
    ld d, b
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld b, e
    ld c, a
    ld c, h
    ld d, a
    ld b, d
    ld c, e
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld b, e
    ld b, d
    ld a, $4f
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld l, b
    ld h, d
    ld d, c
    ld d, d
    ld c, a
    ld c, e
    ld h, e
    pop af
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld b, b
    ld a, $4b
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld c, d
    ld c, h
    ld d, e
    ld b, d
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld d, b
    ld d, c
    ld a, $4f
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld a, $4b
    ld b, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e

jr_04c_4dd9:
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, c
    ld b, l
    ld c, a
    ld c, h
    ld d, h
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, d
    ld a, $51
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    jr nz, jr_04c_4e61

    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld b, l
    ld c, h
    ld c, c
    ld b, c
    ld d, b
    pop af
    ld d, d
    ld c, l
    ld h, d
    ld [hl], $3e
    ld b, h
    ld b, d
    ld [hl], $51
    ld c, h
    ld c, e
    ld b, d
    ld e, a
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld d, b
    ld c, l
    ld c, a
    ld b, [hl]
    ld c, e
    ld c, b
    ld c, c
    ld b, d
    ld d, b
    pop af
    ld a, [hl-]
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    daa
    ld b, d
    ld d, h
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    scf
    ld b, l
    ld b, d
    ld h, d
    ccf
    ld c, h
    ld c, c
    ld d, c
    ld h, d
    ccf
    ld d, d
    ld c, a
    ld d, b
    ld d, c
    ld d, b
    pop af
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld d, c
    ld a, $43

jr_04c_4e61:
    ld b, e
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    inc l
    ld d, c
    ld h, d
    ld b, b
    ld c, a
    ld b, d
    ld a, $51
    ld b, d
    ld d, b
    ld h, d
    ld a, $f1
    ld d, h
    ld b, l
    ld b, [hl]
    ld c, a
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, e
    ld a, $40
    ld d, d
    ld d, d
    ld c, d
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    inc h
    ld h, d
    ld c, d
    ld d, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld c, h
    ld d, d
    ld d, b
    ld h, d
    ld c, d
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld b, b
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec hl
    ld c, h
    ld d, c
    ld h, d
    ld c, c
    ld a, $53
    ld a, $62
    ld b, e
    ld c, c
    ld c, h
    ld c, h
    ld b, c
    ld d, b
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
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    inc h
    ld c, e
    ld h, d
    ld b, [hl]
    ld b, b
    ld d, [hl]
    ld h, d
    ccf
    ld c, c
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld b, c
    pop af
    ccf
    ld c, c
    ld a, $50
    ld d, c
    ld d, b
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    inc h
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, a
    ld b, d
    ccf
    ld a, $49
    ld c, c
    ld h, d
    ccf
    ld d, d
    ld c, a
    ld d, b
    ld d, c
    ld d, b
    pop af
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld d, c
    ld a, $43
    ld b, e
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, e
    ld d, d
    ld c, c
    ld c, c
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld b, b
    ld b, d
    ld h, e
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld l, b
    ld h, d
    ld b, e
    ld b, d
    ld a, $4f
    pop af
    ccf
    ld c, h
    ld c, h
    ld d, b
    ld d, c
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, h
    ld d, d
    ld a, $4f
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, e
    ld c, h
    ld b, b
    ld d, d
    ld d, b
    ld b, d
    ld d, b
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, a
    ld b, h
    ld d, [hl]
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld b, b
    ld c, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld b, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, b
    ld b, d
    ld c, c
    ld d, [hl]
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    nop
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    ld d, b
    pop af
    ld b, d
    ld d, e
    ld b, d
    ld c, e
    ld h, e
    db $ec
    ldh a, [rNR50]
    ld h, d
    ld h, $42
    ld c, c
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld a, $49
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    pop af
    ld b, b
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld sp, hl
    nop
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, h
    ld c, a
    ld a, $3f
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, d
    ld a, $4b
    ld b, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, d
    ld d, b
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld a, $50
    ld h, d
    ld a, $f1
    ld d, b
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld d, d
    ld d, c
    ld d, b
    pop af
    ld a, $62
    ccf
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld h, d
    ld b, b
    ld c, a
    ld d, [hl]
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, d
    ld a, $50
    ld b, [hl]
    ld c, c
    ld d, [hl]
    pop af
    ld b, c
    ld c, h
    ld b, c
    ld b, h
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, e
    db $ec
    ldh a, [rNR50]
    ld h, d
    ld b, l
    ld c, h
    ld c, a
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, [hl]
    ld b, b
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    pop af
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, b
    ld d, d
    ld c, d
    ld c, d
    ld c, h
    ld c, e
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [rNR50]
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld h, d
    ld b, e
    ld c, h
    ld b, h
    ld h, d
    ld b, b
    ld c, h
    ld d, a
    ld b, d
    ld d, b
    pop af
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld sp, hl
    nop
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, e
    ld c, h
    ld d, h
    pop af
    ld c, c
    ld c, h
    ld a, $41
    ld b, d
    ld b, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    pop af
    ld c, h
    ld b, e
    ld h, d
    jr nc, jr_04c_50ec

    ld h, e
    db $ec
    ldh a, [$96]
    ld h, $45
    ld a, $4b
    ld b, b
    ld b, d
    ld h, d
    ld h, $45
    ld a, $4b
    ld b, b
    ld b, d
    pop af
    ld h, $45
    ld a, $4b
    ld b, b
    ld b, d
    ld h, d
    ld h, $45
    ld a, $4b
    ld b, b
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    sub a
    db $fc
    db $10
    db $ec
    ld a, [c]
    scf
    ld b, l
    ld b, d
    ld h, d
    ld d, e
    ld c, h
    ld b, [hl]
    ld b, b
    ld b, d
    ld h, d
    ld b, d
    ld b, b

jr_04c_50ec:
    ld b, l
    ld c, h
    ld b, d
    ld d, b
    pop af
    ld a, $49
    ld c, c
    ld h, d
    ld a, $4f
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    ld h, e
    db $ec
    ldh a, [rNR50]
    ld h, d
    ld b, h
    ld b, [hl]
    ld b, h
    ld a, $4b
    ld d, c
    ld b, [hl]
    ld b, b
    ld h, d
    ld b, c
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    pop af
    ld b, d
    ld c, d
    ld b, d
    ld c, a
    ld b, h
    ld b, d
    ld d, b
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    daa
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, e
    pop af
    db $ec
    ldh a, [rNR52]
    ld c, h
    ld c, c
    ld b, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, c
    ld d, b
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld b, [hl]
    ld c, b
    ld b, d
    pop af
    ld sp, hl
    jr nz, jr_04c_51a3

    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld c, a
    ld b, d
    ld b, b
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld b, d
    ld d, b
    ld h, d
    jr nc, jr_04c_5184

    ld h, e
    db $ec
    ldh a, [$36]
    ld b, l
    ld c, h
    ld c, h
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld [hl], $51
    ld a, $4f
    ld d, b
    pop af
    ld b, e
    ld a, $49
    ld c, c
    ld h, d
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld d, h
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, d
    ld a, $50
    ld b, [hl]
    ld c, c
    ld d, [hl]
    pop af
    ld b, c
    ld c, h
    ld b, c
    ld b, h
    ld b, d

jr_04c_5184:
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, e
    db $ec
    ldh a, [rNR50]
    ld h, d
    ld b, b
    ld c, a
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld b, b
    ld a, $49
    ld h, d
    ld b, l
    ld b, [hl]
    ld d, c
    ld h, e
    pop af

jr_04c_51a3:
    db $ec
    ldh a, [rNR50]
    ld h, d
    ld c, l
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld b, e
    ld d, d
    ld c, c
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, e
    pop af
    db $ec
    ldh a, [rNR50]
    ld h, d
    ld d, h
    ld a, $49
    ld c, c
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    pop af
    ld c, a
    ld b, d
    ld b, e
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, b
    ld c, l
    ld b, d
    ld c, c
    ld c, c
    ld h, e
    pop af
    db $ec
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld c, a
    ld b, d
    ld b, e
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld b, d
    ld b, c
    ld h, d
    ccf
    ld d, [hl]
    ld h, d
    ld a, $fc
    db $10
    db $ec
    ld a, [c]
    ld d, h
    ld a, $49
    ld c, c
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, e
    pop af
    db $ec
    ldh a, [$ed]
    scf
    ld b, l
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld a, $4f
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    pop af
    ld sp, hl
    nop
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld c, a
    ld b, d
    ld b, e
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    jr nz, @+$64

    ld b, c
    ld c, h
    ld b, c
    ld b, h
    ld b, d
    ld d, b
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, e
    db $ec
    ldh a, [$f9]
    jr nz, jr_04c_52bc

    ld b, b
    ld a, $4b
    ld c, e
    ld c, h
    ld d, c
    pop af
    ld b, c
    ld c, h
    ld b, c
    ld b, h
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld c, l
    ld c, a
    ld c, h
    ld d, c
    ld b, d
    ld b, b
    ld d, c
    ld d, b
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    db $10
    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld a, $3f
    ld d, b
    ld c, h
    ld c, a
    ccf
    ld d, b
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld d, c
    ld a, $48
    ld b, d
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld c, l
    ld d, c
    ld d, b
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop

jr_04c_52bc:
    pop af
    ld c, a
    ld b, d
    ld b, b
    ld b, d
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    db $10
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    pop af
    ld c, l
    ld d, c
    ld d, b
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld l, b
    pop af
    ld d, h
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    ld h, d
    ld b, l
    ld b, d
    ld a, $49
    ld d, b
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld c, a
    ld b, d
    ld b, b
    ld b, d
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ld a, $62
    ld b, e
    ld a, $51
    ld a, $49
    db $fc
    db $10
    db $ec
    ld a, [c]
    ccf
    ld c, c
    ld c, h
    ld d, h
    ld h, e
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld c, c
    ld c, h
    ld d, b
    ld b, d
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, d
    ld b, c
    ld b, d
    ld b, e
    ld b, d
    ld c, e
    ld d, b
    ld b, d
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld c, c
    ld c, h
    ld d, b
    ld b, d
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, d
    ld b, c
    ld b, d
    ld b, e
    ld b, d
    ld c, e
    ld d, b
    ld b, d
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld l, b
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld c, c
    ld c, c
    ld d, b
    pop af
    ld a, $4f
    ld b, d
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld d, b
    ld d, d
    ld d, b
    ld c, l
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld l, b
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld c, c
    ld c, c
    ld d, b
    pop af
    ld a, $4f
    ld b, d
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld d, b
    ld d, d
    ld d, b
    ld c, l
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld l, b
    ld h, d
    jr nc, jr_04c_53ae

    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld b, c
    ld c, a
    ld a, $46
    ld c, e
    ld b, d
    ld b, c
    ld h, d
    ccf
    ld d, [hl]
    ld h, d
    ld sp, hl
    db $10
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld l, b
    ld h, d
    jr nc, jr_04c_53c8

    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld b, c
    ld c, a
    ld a, $46
    ld c, e
    ld b, d
    ld b, c
    ld h, d
    ccf
    ld d, [hl]
    ld h, d
    ld sp, hl
    db $10
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, b
    ld d, c

jr_04c_53ae:
    ld a, $4f
    ld d, c
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld b, h
    ld c, c
    ld c, h
    ld d, h
    ld h, d
    ld b, e
    ld a, $46
    ld c, e
    ld d, c
    ld c, c
    ld d, [hl]
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d

jr_04c_53c8:
    ld d, b
    ld d, d
    ld b, b
    ld c, b
    ld d, b
    pop af
    ld b, [hl]
    ld c, e
    ld h, d
    ld sp, hl
    db $10
    ld h, d
    jr nc, jr_04c_5409

    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld b, b
    ld c, h
    ld c, e
    ld b, e
    ld d, d
    ld d, b
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld b, b
    ld c, h
    ld c, e
    ld b, e
    ld d, d
    ld d, b
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld l, b
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    pop af
    ld c, l
    ld c, h
    ld d, h

jr_04c_5409:
    ld b, d
    ld c, a
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, c
    ld c, h
    ld d, d
    ccf
    ld c, c
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld b, b
    ld b, l
    ld a, $4b
    ld b, h
    ld b, d
    ld d, b
    pop af
    ld b, [hl]
    ld c, e
    ld d, c
    ld c, h
    ld h, d
    ld a, $62
    ccf
    ld b, [hl]
    ld b, h
    ld h, d
    ld b, c
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld l, b
    pop af
    ld b, c
    ld b, d
    ld b, e
    ld b, d
    ld c, e
    ld d, b
    ld b, d
    ld h, d
    ld b, h
    ld c, h
    ld b, d
    ld d, b
    ld h, d
    ld d, d
    ld c, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    ccf
    ld d, [hl]
    ld h, d
    ld sp, hl
    db $10
    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld l, b
    ld h, d
    ld b, h
    ld a, $4b
    ld b, h
    pop af
    ccf
    ld b, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, a
    ld c, h
    ld c, e
    ld h, d
    ld c, c
    ld d, d
    ld c, d
    ld c, l
    ld d, b
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, c
    ld d, d
    ld c, a
    ld c, e
    ld d, b
    pop af
    ld b, [hl]
    ld c, e
    ld d, c
    ld c, h
    ld h, d
    ld a, $4b
    ld h, d
    ld b, [hl]
    ld c, a
    ld c, h
    ld c, e
    ld h, d
    ld c, c
    ld d, d
    ld c, d
    ld c, l
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld l, b
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld b, d
    ld b, c
    pop af
    ld b, h
    ld c, h
    ld b, d
    ld d, b
    ld h, d
    ld b, c
    ld c, h
    ld d, h
    ld c, e
    ld h, d
    ccf
    ld d, [hl]
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    db $10
    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld l, b
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld b, d
    ld b, c
    pop af
    ld b, c
    ld c, a
    ld c, h
    ld c, l
    ld d, b
    ld h, d
    ccf
    ld d, [hl]
    ld h, d
    ld sp, hl
    db $10
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld l, b
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld b, d
    ld b, c
    pop af
    ld b, h
    ld c, h
    ld b, d
    ld d, b
    ld h, d
    ld d, d
    ld c, l
    ld h, d
    ccf
    ld d, [hl]
    ld h, d
    ld sp, hl
    db $10
    ld h, e
    db $ec
    ldh a, [rNR50]
    ld c, e
    ld h, d
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, d
    ld d, b
    ld b, [hl]
    ld c, h
    ld c, e
    pop af
    ld b, d
    ld c, e
    ld b, h
    ld d, d
    ld c, c
    ld b, e
    ld d, b
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    nop
    ld h, e
    pop af
    db $ec
    ldh a, [rNR50]
    ld h, d
    ld d, h
    ld a, $49
    ld c, c
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    pop af
    ld c, a
    ld b, [hl]
    ld d, b
    ld b, d
    ld d, b
    ld h, d
    ccf
    ld b, d
    ld b, e
    ld c, h
    ld c, a
    ld b, d
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    nop
    ld h, e
    pop af
    db $ec
    ldh a, [rNR50]
    ld h, d
    ld d, h
    ld a, $49
    ld c, c
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    pop af
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, b
    ld c, a
    ld b, d
    ld a, $51
    ld b, d
    ld b, c
    ld h, d
    ccf
    ld b, d
    ld b, e
    ld c, h
    ld c, a
    ld b, d
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    nop
    ld h, e
    pop af
    db $ec
    ldh a, [rNR50]
    ld h, d
    ld d, e
    ld b, d
    ld b, [hl]
    ld c, c
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    pop af
    ld b, b
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld sp, hl
    nop
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld a, $4b
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld a, $4b
    ld b, h
    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, e
    ld c, h
    pop af
    ld c, c
    ld c, h
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld h, d
    ld c, l
    ld c, h
    ld b, [hl]
    ld d, b
    ld c, h
    ld c, e
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, e
    ld c, h
    pop af
    ld c, c
    ld c, h
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld h, d
    ld c, l
    ld a, $4f
    ld a, $49
    ld d, [hl]
    ld d, a
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, a
    ld b, d
    ld d, e
    ld b, [hl]
    ld d, e
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, e
    ld c, h
    pop af
    ld c, c
    ld c, h
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld h, d
    ld b, b
    ld d, d
    ld c, a
    ld d, b
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    jr nz, jr_04c_5646

    ld d, c
    ld d, d
    ld c, a
    ld c, e
    ld d, b
    pop af
    ld b, [hl]
    ld c, e
    ld d, c
    ld c, h
    ld h, d
    ld sp, hl
    nop
    ld h, e
    db $ec
    ldh a, [rNR50]
    ld c, c
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    ld a, $4d
    ld c, l
    ld b, d
    ld a, $4f
    pop af
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld c, e
    ld c, h
    ld d, h
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    ld d, b
    pop af
    ld d, b
    ld a, $4b
    ld b, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, d
    ld d, [hl]
    ld b, d
    ld d, b
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ccf
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, e
    ld c, h
    ld d, h
    pop af

jr_04c_5646:
    ld d, e
    ld d, d
    ld c, c
    ld c, e
    ld b, d
    ld c, a
    ld a, $3f
    ld c, c
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    db $fc
    db $10
    db $ec
    ld a, [c]
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
    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld c, c
    ld c, h
    ld d, b
    ld d, c
    pop af
    ld sp, hl
    db $10
    ld h, d
    jr nc, jr_04c_56a7

    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld c, c

Call_04c_567e:
    ld d, d
    ld c, a
    ld b, d
    ld b, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld d, c
    ld c, h
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, c
    ld a, $4b
    ld b, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld c, d
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld b, e
    ld b, d

jr_04c_56a7:
    ld b, d
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, h
    ld c, h
    ld c, h
    ld b, c
    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    ld d, b
    pop af
    ld b, h
    ld c, h
    ld c, h
    ld d, b
    ld b, d
    ld h, d
    ccf
    ld d, d
    ld c, d
    ld c, l
    ld d, b
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    ld d, b
    pop af
    ld b, h
    ld c, h
    ld c, h
    ld d, b
    ld b, d
    ld h, d
    ccf
    ld d, d
    ld c, d
    ld c, l
    ld d, b
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    nop
    ld l, b
    pop af
    ld b, c
    ld b, d
    ld b, e
    ld b, d
    ld c, e
    ld d, b
    ld b, d
    ld h, d
    ld b, c
    ld c, a
    ld c, h
    ld c, l
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld bc, $f0ec
    ld sp, hl
    nop
    pop af
    ld b, e
    ld c, a
    ld b, d
    ld b, d
    ld d, a
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld b, b
    ld c, b
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld d, b
    ld d, c
    ld d, d
    ld c, d
    ccf
    ld c, c
    ld b, d
    ld d, b
    ld h, e
    db $ec
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld c, h
    ld c, e
    pop af
    ld sp, hl
    nop
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, [hl]
    ld d, b
    ld h, d
    ccf
    ld c, a
    ld c, h
    ld c, b
    ld b, d
    ld c, e
    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld c, a
    ld b, d
    ld d, c
    ld d, d
    ld c, a
    ld c, e
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld d, c
    ld c, a
    ld d, d
    ld b, d
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld c, d
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld b, b
    ld c, h
    ld c, d
    ld c, l
    ld c, c
    ld b, d
    ld d, c
    ld b, d
    ld c, c
    ld d, [hl]
    ld h, d
    ld b, b
    ld d, d
    ld c, a
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$3a]
    ld c, h
    ld d, h
    ld h, e
    ld h, d
    ld sp, hl
    nop
    pop af
    ld b, a
    ld c, h
    ld b, [hl]
    ld c, e
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ccf
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld b, l
    ld d, [hl]
    ld c, l
    ld c, e
    ld c, h
    ld d, c
    ld b, [hl]
    ld b, b
    ld h, d
    ld b, c
    ld a, $4b
    ld b, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, b
    ld d, c
    ld c, h
    ld c, l
    ld c, l
    ld b, d
    ld b, c
    ld h, e
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld b, l
    ld d, [hl]
    ld c, l
    ld c, e
    ld c, h
    ld d, c
    ld b, [hl]
    ld b, b
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, c
    ld a, $4b
    ld b, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld d, a
    ld b, d
    ld c, e
    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld l, b
    ld h, d
    ld c, d
    ld c, h
    ld d, d
    ld d, c
    ld b, l
    pop af
    ld b, [hl]
    ld d, b
    ld h, d
    ccf
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    ld h, d
    ld d, b
    ld b, l
    ld d, d
    ld d, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld l, b
    ld h, d
    ld c, d
    ld c, h
    ld d, d
    ld d, c
    ld b, l
    pop af
    ld b, [hl]
    ld d, b
    ld h, d
    ccf
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    ld h, d
    ld d, b
    ld b, l
    ld d, d
    ld d, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    pop af
    ld c, c
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld b, e
    ld c, a
    ld c, h
    ld d, a
    ld b, d
    ld c, e
    ld h, e
    db $ec
    ldh a, [$30]
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld d, b
    ld h, e
    pop af
    ld sp, hl
    nop
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, d
    ld c, e
    ld b, l
    ld a, $4f
    ld c, d
    ld b, d
    ld b, c
    ld h, e
    pop af
    db $ec
    ldh a, [$30]
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld b, c
    ld h, d
    ld sp, hl
    nop
    ld h, e
    pop af
    ld sp, $624c
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, e
    db $ec
    ldh a, [$2b]
    ld a, $50
    ld h, d
    ld c, e
    ld c, h
    ld h, d
    ld b, d
    ld b, e
    ld b, e
    ld b, d
    ld b, b
    ld d, c
    pop af
    ld c, h
    ld c, e
    ld h, d
    ld sp, hl
    nop
    ld h, e
    db $ec
    ldh a, [rNR51]
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    pop af
    ccf
    ld c, c
    ld c, h
    ld b, b
    ld c, b
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, h
    ld a, $56
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld l, b
    ld h, d
    ld d, c
    ld d, d
    ld c, a
    ld c, e
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld b, [hl]
    ld c, a
    ld c, h
    ld c, e
    ld h, d
    ld a, $4b
    ld b, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ccf
    ld b, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld d, b
    pop af
    ld b, [hl]
    ld c, e
    ld d, e
    ld d, d
    ld c, c
    ld c, e
    ld b, d
    ld c, a
    ld a, $3f
    ld c, c
    ld b, d
    ld e, a
    db $ec
    ldh a, [rNR51]
    ld d, d
    ld d, c
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    pop af
    ld b, l
    ld a, $4d
    ld c, l
    ld b, d
    ld c, e
    ld d, b
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, c
    ld c, h
    ld b, d
    ld d, b
    ld c, e
    ld h, a
    pop af
    ld b, e
    ld a, $49
    ld c, c
    ld h, d
    ld a, $50
    ld c, c
    ld b, d
    ld b, d
    ld c, l
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld a, $49
    ld c, a
    ld b, d
    ld a, $41
    ld d, [hl]
    ld h, d
    ld d, b
    ld c, c
    ld b, d
    ld b, d
    ld c, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld d, b
    pop af
    ld c, d
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld b, b
    ld c, h
    ld c, e
    ld b, e
    ld d, d
    ld d, b
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld b, [hl]
    ld d, b
    ld c, e
    ld h, a
    ld h, d
    ld c, a
    ld b, d
    ld d, e
    ld b, [hl]
    ld d, e
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [rNR51]
    ld d, d
    ld d, c
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
    ld c, a
    ld b, d
    ld a, $40
    ld b, l
    ld h, d
    ld sp, hl
    nop
    ld h, e
    db $ec
    ldh a, [rNR51]
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, b
    ld a, $49
    ld c, c
    pop af
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld b, l
    ld b, d
    ld a, $4f
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, c
    ld c, h
    ld b, c
    ld b, h
    ld b, d
    ld d, b
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, $46
    ld c, a
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld c, [hl]
    ld d, d
    ld b, [hl]
    ld b, b
    ld c, b
    ld c, c
    ld d, [hl]
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
    ld b, d
    ld a, $4f
    ld d, b
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, b
    ld b, l
    ld a, $48
    ld b, d
    ld d, b
    pop af
    ld c, h
    ld b, e
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld a, $4b
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, c
    ld c, h
    ld b, c
    ld b, h
    ld b, d
    ld d, b
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, d
    ld a, $50
    ld b, d
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, c
    ld c, h
    ld b, c
    ld b, h
    ld b, d
    ld d, b
    pop af
    ld c, [hl]
    ld d, d
    ld b, [hl]
    ld b, b
    ld c, b
    ld c, c
    ld d, [hl]
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    ld c, e
    ld h, a
    pop af
    ld c, c
    ld d, d
    ld c, a
    ld b, d
    ld b, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, e
    db $ec
    ldh a, [rNR51]
    ld d, d
    ld d, c
    ld h, d
    ld sp, hl
    nop
    pop af
    ld b, c
    ld c, h
    ld b, c
    ld b, h
    ld b, d
    ld d, b
    ld h, d
    ld b, d
    ld a, $50
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, e
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    ld c, e
    ld h, a
    pop af
    ld a, $43
    ld b, e
    ld b, d
    ld b, b
    ld d, c
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [rNR51]
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, l
    ld c, a
    ld a, $56
    ld b, d
    ld c, a
    pop af
    ld b, [hl]
    ld d, b
    ld c, e
    ld h, a
    ld h, d
    ld b, l
    ld b, d
    ld a, $4f
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld d, b
    ld b, d
    ld c, e
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld c, c
    ld b, d
    ld b, d
    ld c, l
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld b, e
    ld a, $49
    ld c, c
    ld d, b
    ld h, d
    ld a, $50
    ld c, c
    ld b, d
    ld b, d
    ld c, l
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, l
    ld c, h
    ld b, [hl]
    ld d, b
    ld c, h
    ld c, e
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, l
    ld a, $4f
    ld a, $49
    ld d, [hl]
    ld d, a
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld d, b
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld b, d
    ld c, c
    ld d, [hl]
    ld h, d
    ld c, l
    ld c, h
    ld b, [hl]
    ld d, b
    ld c, h
    ld c, e
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, b
    ld d, d
    ld c, a
    ld d, b
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld d, a
    ld b, d
    ld c, e
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld b, h
    ld b, d
    ld d, c
    ld d, b
    ld h, d
    ld b, d
    ld d, e
    ld b, d
    ld c, e
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld b, b
    ld a, $4b
    ld h, a
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    ld h, d
    ld b, d
    ld d, e
    ld b, d
    ld c, e
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld b, b
    ld c, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, b
    ld a, $4b
    ld h, a
    pop af
    ld b, b
    ld c, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ccf
    ld c, c
    ld c, h
    ld d, h
    ld d, b
    pop af
    ccf
    ld a, $40
    ld c, b
    ld h, d
    ld sp, hl
    db $10
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld b, c
    ld b, [hl]
    ld d, b
    ld a, $4d
    ld c, l
    ld b, d
    ld a, $4f
    ld d, b
    ld h, e
    db $ec
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld d, b
    ld d, c
    ld c, h
    ld c, l
    ld c, l
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [rNR50]
    ld c, c
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld b, h
    ld c, h
    ld c, e
    ld b, d
    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld d, h
    ld a, $48
    ld b, d
    ld d, b
    ld h, d
    ld d, d
    ld c, l
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld c, a
    ld b, d
    ld d, c
    ld d, d
    ld c, a
    ld c, e
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld c, e
    ld c, h
    ld c, a
    ld c, d
    ld a, $49
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld l, b
    pop af
    inc l
    ld c, a
    ld c, h
    ld c, e
    ld b, [hl]
    ld d, a
    ld b, d
    ld h, d
    ld d, h
    ld b, d
    ld a, $4f
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    ld b, e
    ld h, e
    db $ec
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ld d, h
    ld a, $49
    ld c, c
    ld h, d
    ld c, h
    ld b, e
    pop af
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld b, c
    ld b, [hl]
    ld d, b
    ld a, $4d
    ld c, l
    ld b, d
    ld a, $4f
    ld d, b
    ld h, e
    db $ec
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ld b, c
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld c, c
    ld b, d
    ld a, $53
    ld b, d
    ld d, b
    ld e, [hl]
    pop af
    ld c, c
    ld a, $52
    ld b, h
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    db $ec
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ld sp, hl
    db $10
    pop af
    ld b, e
    ld a, $49
    ld c, c
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, l
    ld b, [hl]
    ld b, d
    ld b, b
    ld b, d
    ld d, b
    ld h, e
    db $ec
    ldh a, [$33]
    ld c, h
    ld b, [hl]
    ld d, b
    ld c, h
    ld c, e
    ld b, d
    ld b, c
    ld h, e
    pop af
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    nop
    ld h, d
    ld c, c
    ld c, h
    ld d, b
    ld b, d
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, d
    dec hl
    inc sp
    ld h, e
    db $ec
    ldh a, [rNR50]
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld h, d
    ld c, l
    ld c, h
    ld b, [hl]
    ld d, b
    ld c, h
    ld c, e
    pop af
    ld d, c
    ld a, $48
    ld b, d
    ld d, b
    ld h, d
    ld sp, hl
    db $10
    ld h, d
    dec hl
    inc sp
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld sp, hl
    nop
    ld h, e
    pop af
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    nop
    ld l, b
    ld h, d
    dec hl
    inc sp
    pop af
    ld b, c
    ld b, d
    ld b, b
    ld c, a
    ld b, d
    ld a, $50
    ld b, d
    ld d, b
    ld h, d
    ccf
    ld d, [hl]
    db $ec
    ld a, [c]
    ld sp, hl
    db $10
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
    ld c, l
    ld c, h
    ld b, [hl]
    ld d, b
    ld c, h
    ld c, e
    ld h, e
    db $fc
    db $10
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld b, b
    ld c, h
    ld c, c
    ld c, c
    ld a, $4d
    ld d, b
    ld b, d
    ld d, b
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld c, b
    ld c, e
    ld c, h
    ld b, b
    ld c, b
    ld b, d
    ld b, c
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, h
    ld b, d
    ld a, $48
    pop af
    ld a, $43
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, c
    ld a, $4b
    ld b, b
    ld b, d
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld b, c
    ld b, [hl]
    ld d, b
    ld a, $4d
    ld c, l
    ld b, d
    ld a, $4f
    ld d, b
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    pop af
    ld c, h
    ld b, e
    ld h, d
    dec hl
    inc sp
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    ld b, e
    ld a, $46
    ld c, e
    ld d, c
    ld d, b
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    pop af
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld b, c
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, e
    ld a, $49
    ld c, c
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld c, l
    ld b, [hl]
    ld b, d
    ld b, b
    ld b, d
    ld d, b
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    pop af
    ld c, h
    ld b, e
    ld h, d
    dec hl
    inc sp
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    ld b, e
    ld a, $46
    ld c, e
    ld d, c
    ld d, b
    ld h, e
    db $ec
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ld sp, hl
    nop
    ld h, d
    ld b, h
    ld a, $4b
    ld b, h
    pop af
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, l
    ld b, d
    ld b, c
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld h, e
    ld a, [$f0f7]
    or $62
    ld c, b
    ld c, e
    ld c, h
    ld b, b
    ld c, b
    ld d, b
    pop af
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld sp, hl
    nop
    ld h, e
    ld a, [$f0f7]
    or $62
    ccf
    ld b, d
    ld a, $51
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld sp, hl
    nop
    ld h, d
    ld b, h
    ld a, $4b
    ld b, h
    ld h, e
    ld a, [$f0f7]
    or $62
    ld c, b
    ld c, e
    ld c, h
    ld b, b
    ld c, b
    ld d, b
    pop af
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ld h, e
    ld a, [$f0f7]
    scf
    ld b, l
    ld b, d
    ld h, d
    ld sp, hl
    nop
    ld h, d
    ld b, l
    ld a, $50
    pop af
    ld b, e
    ld c, c
    ld b, d
    ld b, c
    ld h, e
    ld a, [$f0f7]
    scf
    ld b, l
    ld b, d
    ld h, d
    ld sp, hl
    nop
    ld h, d
    ld b, h
    ld a, $4b
    ld b, h
    pop af
    ld b, l
    ld a, $50
    ld h, d
    ld b, e
    ld c, c
    ld b, d
    ld b, c
    ld h, e
    ld a, [$f0f7]
    inc h
    ld c, c
    ld c, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
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
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld b, e
    ld c, c
    ld b, d
    ld b, c
    ld h, e
    ld a, [$f0f7]
    ld h, $3e
    ld c, e
    ld h, a
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    pop af
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ccf
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld h, e
    ld a, [$f0f7]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld c, e
    ld c, h
    pop af
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, d
    ld d, b
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
    ld a, [$f2f7]
    ld d, d
    ld d, b
    ld b, d
    ld b, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ccf
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld h, e
    pop af
    ld a, [$f0f7]
    ld h, $3e
    ld c, e
    ld h, a
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    pop af
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ccf
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld h, e
    ld a, [$f0f7]
    ld h, $3e
    ld c, e
    ld h, a
    ld h, d
    ld c, a
    ld d, d
    ld c, e
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    pop af
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ccf
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld h, e
    ld a, [$f0f7]
    db $ed
    ld a, [hl-]
    ld a, $46
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld sp, hl
    nop
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld b, b
    ld b, l
    ld c, h
    ld c, h
    ld d, b
    ld b, d
    ld h, d
    ld a, $62
    ld c, d
    ld c, h
    ld d, e
    ld b, d
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, b
    ld a, $50
    ld d, c
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld b, d
    ld c, e
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld h, d
    jr nc, jr_04c_5ee1

    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, b
    ld c, l
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld b, d
    ld c, e
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld h, d
    jr nc, jr_04c_5f06

    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, c
    ld a, $4b
    ld b, b
    ld b, d
    ld d, b
    pop af

jr_04c_5ee1:
    ld sp, hl
    db $10
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld b, d
    ld c, e
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld h, d
    jr nc, jr_04c_5f2c

    ld h, e
    pop af
    db $ec
    ldh a, [rNR51]
    ld d, d
    ld d, c
    ld h, d
    ld b, b
    ld a, $4b
    ld c, e
    ld c, h

jr_04c_5f06:
    ld d, c
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    pop af
    ld sp, hl
    nop
    ld h, e
    ld a, [$f0f7]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld b, b
    ld a, $4b
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    pop af
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, b
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d

jr_04c_5f2c:
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld a, [$f2f7]
    ccf
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld h, e
    pop af
    ld a, [$f0f7]
    ld h, $3e
    ld c, e
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld a, $f1
    ld b, b
    ld c, h
    ld c, d
    ld c, d
    ld a, $4b
    ld b, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld a, [$f2f7]
    ccf
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld h, e
    pop af
    ld a, [$f0f7]
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, d
    ld d, c
    ld c, h
    db $fc
    jr @-$12

    ld a, [c]
    ld sp, hl
    jr nz, jr_04c_5fe6

    pop af
    db $ec
    ldh a, [$f9]

jr_04c_5f87:
    nop
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    db $fc
    jr jr_04c_5f87

    ld a, [c]
    ld sp, hl
    jr nz, jr_04c_6001

    ld b, h
    ld a, $4b
    ld b, h
    ld h, e
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl

jr_04c_5fa9:
    nop
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    pop af
    ld sp, hl
    db $10
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    db $fc
    jr jr_04c_5fa9

    ld a, [c]
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, e
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld d, b
    ld d, c
    ld a, $4f
    ld d, c
    ld d, b
    pop af

jr_04c_5fd5:
    ld b, d
    ld a, $51
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld c, a
    ld b, d
    ld a, $51
    ld h, e

jr_04c_5fe6:
    db $fc
    jr jr_04c_5fd5

    ld a, [c]
    db $ed
    ld sp, hl
    nop
    ld h, d
    ld d, b
    ld d, c
    ld a, $4f
    ld d, c
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld sp, hl
    jr nz, jr_04c_6063

    db $ec

jr_04c_6001:
    ldh a, [$f9]
    nop
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, [hl]
    ld b, c
    ld c, c

jr_04c_600b:
    ld d, [hl]
    pop af
    ld b, d
    ld a, $51
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld c, a
    ld b, d
    ld a, $51
    ld h, e
    db $fc
    jr jr_04c_600b

    ld a, [c]
    ld sp, hl
    nop
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld d, h
    ld c, e
    ld d, b
    pop af
    ld a, $51
    ld h, d
    ld sp, hl
    jr nz, jr_04c_6093

    db $ec
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ld sp, hl
    nop
    ld h, d
    ld b, h
    ld a, $4b

jr_04c_603c:
    ld b, h
    pop af
    ld b, d
    ld a, $51
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld c, a
    ld b, d
    ld a, $51
    ld h, e
    db $fc
    jr jr_04c_603c

    ld a, [c]
    scf
    ld b, l
    ld b, d
    ld d, [hl]
    ld h, d
    ld d, b
    ld d, c
    ld a, $4f
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d

jr_04c_6063:
    pop af
    ld sp, hl
    jr nz, jr_04c_60ca

    db $ec
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ld sp, hl
    nop
    ld h, d
    ld b, h
    ld a, $4b
    ld b, h
    pop af
    ld c, e

jr_04c_6076:
    ld b, [hl]
    ccf
    ccf
    ld c, c
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld c, a
    ld b, d
    ld a, $51
    ld h, e
    db $fc
    jr jr_04c_6076

    ld a, [c]
    scf
    ld b, l
    ld b, d
    ld d, [hl]
    ld h, d
    ld b, e
    ld c, a
    ld c, h

jr_04c_6093:
    ld d, h
    ld c, e
    ld h, d
    ld a, $51
    pop af
    ld sp, hl
    jr nz, jr_04c_60ff

    db $ec
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b

jr_04c_60a6:
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    pop af
    ld d, b
    ld d, c
    ld a, $4f
    ld d, c
    ld h, d
    ld b, d
    ld a, $51
    ld b, [hl]
    ld c, e
    ld b, h
    db $fc
    jr jr_04c_60a6

    ld a, [c]
    ld d, c
    ld b, l

jr_04c_60bd:
    ld b, d
    ld h, d
    ld d, c
    ld c, a
    ld b, d
    ld a, $51
    ld h, d
    ld b, l
    ld a, $4d
    ld c, l
    ld b, [hl]

jr_04c_60ca:
    ld c, c
    ld d, [hl]
    ld h, e
    pop af
    db $fc
    jr jr_04c_60bd

    ld a, [c]
    scf
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld d, b
    ld d, c
    ld a, $4f
    ld d, c
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld sp, hl
    jr nz, jr_04c_6153

    db $ec
    ldh a, [$37]
    ld b, l
    ld b, d
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

jr_04c_60ff:
    ld c, e
    ld b, [hl]
    ccf
    ccf
    ld c, c
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld c, a
    ld b, d
    ld a, $51
    ld h, e
    db $fc
    jr jr_04c_60ff

    ld a, [c]
    scf
    ld b, l
    ld b, d
    ld d, [hl]
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld d, h
    ld c, e
    ld h, d
    ld a, $51
    pop af
    ld sp, hl
    jr nz, jr_04c_6188

    db $ec
    ldh a, [$ed]
    inc h
    ld h, d
    ld d, e
    ld b, d
    ld b, [hl]
    ld c, c
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    pop af
    ld b, b
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld sp, hl
    nop
    ld h, e
    pop af
    db $ec
    ldh a, [$ed]
    inc h
    ld h, d
    ld d, e
    ld b, d
    ld b, [hl]
    ld c, c
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, h

jr_04c_6153:
    ld b, l
    ld d, c
    pop af
    ld b, b
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    nop
    ld d, b
    ld h, d
    ld b, h
    ld a, $4b
    ld b, h
    ld h, e
    pop af
    db $ec
    ldh a, [rNR50]
    ld h, d
    ld d, e
    ld b, d
    ld b, [hl]
    ld c, c
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    pop af
    ld b, b
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld d, c

jr_04c_6188:
    ld b, l
    ld b, d
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, e
    ld c, c
    ld d, [hl]
    ld h, d
    ld b, l
    ld b, [hl]
    ld b, h
    ld b, l
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld b, d
    ld c, e
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld h, d
    jr nc, jr_04c_61f7

    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld b, b
    ld a, $49
    ld c, c
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld b, l
    ld b, d
    ld c, c
    ld c, l
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld b, d
    ld c, e
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld h, d
    jr nc, jr_04c_622a

jr_04c_61f7:
    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, d
    ld a, $43
    ld d, c
    ld b, d
    ld c, a
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, e
    ld c, h
    ld b, b
    ld d, d
    ld d, b
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
    ld h, e

jr_04c_622a:
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld b, d
    ld c, e
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld h, d
    jr nc, jr_04c_6272

    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld a, $62
    ld b, b
    ld d, d
    ld c, a
    ld d, b
    ld b, d
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld b, d
    ld c, e
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld h, d
    jr nc, jr_04c_629f

    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop

jr_04c_6272:
    ld h, d
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, d
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
    ld b, [hl]
    ld c, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    pop af
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d

jr_04c_629f:
    ld b, d
    ld c, e
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld h, d
    jr nc, jr_04c_62db

    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld b, l
    ld d, d
    ld d, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    db $10
    ld l, b
    pop af
    ld c, d
    ld c, h
    ld d, d
    ld d, c
    ld b, l
    ld h, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld b, d
    ld c, e
    ld c, h
    ld d, d
    ld b, h

jr_04c_62db:
    ld b, l
    ld h, d
    jr nc, jr_04c_6312

    ld h, e
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, d
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    db $fc
    db $10
    db $ec
    ld a, [c]
    cpl
    ld b, [hl]
    ld b, e
    ld b, d
    ld [hl], $4c
    ld c, e
    ld b, h
    ld h, e
    pop af
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d

jr_04c_6312:
    ld b, d
    ld c, e
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld h, d
    jr nc, jr_04c_634e

    ld h, e
    pop af
    db $ec
    ldh a, [$31]
    ld c, h
    ld h, d
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
    ld b, l
    ld a, $51
    pop af
    ld b, b
    ld a, $4b
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld c, d
    ld a, $4b
    ld b, c
    ld d, b
    ld h, e
    ld a, [$f0f7]
    ld sp, hl
    nop
    ld h, d
    ld b, c
    ld c, h
    ld b, d
    ld d, b
    ld c, e
    ld h, a

jr_04c_634e:
    pop af
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld a, $4b
    ld d, [hl]
    ld h, d
    ld d, b
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld d, c
    ld c, h
    ld a, [$f2f7]
    ld d, d
    ld d, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ccf
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld h, e
    pop af
    ld a, [$f0f7]
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, b
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    pop af
    ld b, b
    ld a, $4b
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld b, c
    ld a, [$f2f7]
    ld b, [hl]
    ld c, e
    ld h, d
    ccf
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld h, e
    pop af
    ld a, [$f0f7]
    ld sp, $514c
    ld h, d
    ld b, d
    ld c, e
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld h, d
    jr nc, @+$35

    ld h, e
    pop af
    ld a, [$f0f7]
    ld a, [hl+]
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld d, d
    ld c, l
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ccf
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld h, h
    ldh a, [$f9]
    nop
    ld d, b
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    pop af
    ld d, d
    ld c, l
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ccf
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld h, e
    db $ec
    ld a, [$f0f7]
    or $62
    ld d, c
    ld a, $48
    ld b, d
    ld d, b
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    dec h
    ld b, d
    ld a, $50
    ld d, c
    scf
    ld a, $46
    ld c, c
    ld h, e
    db $ec
    ldh a, [$33]
    ld c, h
    ld b, [hl]
    ld c, e
    ld d, c
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    dec h
    ld b, d
    ld a, $50
    ld d, c
    scf
    ld a, $46
    ld c, c
    ld h, d
    ld a, $51
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ld h, e
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, l
    ld a, $50
    ld h, d
    ccf
    ld b, d
    ld b, d
    ld c, e
    pop af
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld c, l
    ld a, $49
    ld h, d
    ccf
    ld b, d
    ld b, e
    ld c, h
    ld c, a
    ld b, d
    ld h, e
    db $ec
    ldh a, [$f9]
    nop
    ld h, d
    ld b, l
    ld a, $50
    ld c, e
    ld h, a
    pop af
    ccf
    ld b, d
    ld b, d
    ld c, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld c, l
    ld a, $49
    ld h, d
    ld d, [hl]
    ld b, d
    ld d, c
    ld h, e
    db $ec
    ldh a, [$ed]
    jr z, jr_04c_64a2

    jr z, @+$28

    jr c, jr_04c_64a2

    inc l
    add hl, sp
    jr z, jr_04c_64d1

    daa
    inc l
    dec [hl]
    jr z, jr_04c_649a

    scf
    ld [hl-], a
    dec [hl]
    ldh a, [$ed]
    ld [hl], $26
    jr z, @+$33

    inc h
    dec [hl]
    inc l
    ld [hl-], a
    pop af
    or [hl]
    ld h, d
    ld a, [hl+]
    inc h
    jr nc, @+$2a

    ld h, d
    daa
    jr z, jr_04c_64c2

    inc l
    ld a, [hl+]
    ld sp, $edf0
    ld h, $2b
    inc h
    dec [hl]
    inc h
    ld h, $37
    jr z, jr_04c_64cf

jr_04c_649a:
    pop af
    or [hl]
    ld h, d
    jr nc, jr_04c_64d1

    ld sp, $3736

jr_04c_64a2:
    jr z, jr_04c_64d9

    ld h, d
    daa
    jr z, jr_04c_64de

    inc l
    ld a, [hl+]
    ld sp, $edf0
    jr nc, @+$3a

    ld [hl], $2c
    ld h, $62
    ld h, $32
    jr nc, @+$35

    ld [hl-], a
    ld [hl], $28
    dec [hl]
    ldh a, [$ed]
    scf
    ld [hl-], a
    ld [hl], $28
    ld h, d

jr_04c_64c2:
    ld [hl], $37
    inc h
    add hl, hl
    add hl, hl
    ldh a, [$ed]
    inc sp
    dec [hl]
    ld [hl-], a
    ld a, [hl+]
    dec [hl]
    inc h

jr_04c_64cf:
    jr nc, @+$32

jr_04c_64d1:
    jr z, jr_04c_6508

    ld [hl], $f0
    db $ed
    ld a, [hl+]
    dec [hl]
    inc h

jr_04c_64d9:
    inc sp
    dec hl
    inc l
    ld h, $62

jr_04c_64de:
    daa
    jr z, jr_04c_6517

    inc l
    ld a, [hl+]
    ld sp, $3528
    ld [hl], $f0
    db $ed
    jr nc, jr_04c_6523

    ld [hl], $2c
    ld h, $62
    ld h, $32
    jr nc, jr_04c_6526

    ld [hl-], a
    ld [hl], $28
    dec [hl]
    pop af
    inc h
    ld [hl], $36
    inc l
    ld [hl], $37
    inc h
    ld sp, $3637
    ldh a, [$ed]
    ld a, [hl+]
    inc h
    jr nc, jr_04c_6530

jr_04c_6508:
    ld h, d
    daa
    jr z, @+$38

    inc l
    ld a, [hl+]
    ld sp, $24f1
    ld [hl], $36
    inc l
    ld [hl], $37
    inc h

jr_04c_6517:
    ld sp, $3637
    ldh a, [$ed]
    jr z, @+$2e

    daa

jr_04c_651f:
    ld [hl-], a
    ld [hl], $62
    inc l

jr_04c_6523:
    ld sp, $2837

jr_04c_6526:
    dec [hl]
    inc h
    ld h, $37
    inc l
    add hl, sp
    jr z, jr_04c_651f

    ld [hl], $37

jr_04c_6530:
    inc h
    add hl, hl
    add hl, hl
    ldh a, [$ed]
    cpl
    ld [hl-], a
    ld h, $24
    cpl
    inc l
    dec a
    inc h
    scf
    inc l
    ld [hl-], a
    ld sp, $edf0
    inc sp
    dec [hl]
    ld [hl-], a
    daa
    jr c, jr_04c_656f

    jr z, jr_04c_6580

    ld [hl], $f0
    db $ed
    inc [hl]
    inc h
    ld h, d
    jr nc, jr_04c_6577

    ld sp, $2a24
    jr z, jr_04c_658d

    ld [hl], $f0
    db $ed
    jr nc, jr_04c_6581

    dec [hl]
    ld l, $28
    scf
    inc l
    ld sp, $f02a
    db $ed
    jr nc, jr_04c_658c

    ld sp, $2438
    cpl
    pop af
    scf
    dec [hl]

jr_04c_656f:
    inc h
    ld sp, $2f36
    inc h
    scf
    inc l
    ld [hl-], a

jr_04c_6577:
    ld sp, $edf0
    ld [hl], $33
    jr z, @+$28

    inc l
    inc h

jr_04c_6580:
    cpl

jr_04c_6581:
    ld h, d
    scf
    dec hl
    inc h
    ld sp, $362e
    ldh a, [$ed]
    jr z, jr_04c_65bd

jr_04c_658c:
    inc l

jr_04c_658d:
    dec sp
    ld h, d
    ld [hl], $37
    inc h
    add hl, hl
    add hl, hl
    ldh a, [$ed]
    inc h
    dec [hl]
    scf
    ld a, [hl-]
    ld [hl-], a
    dec [hl]
    ld l, $f0
    db $ed
    scf
    jr z, jr_04c_65c8

    dec hl
    ld sp, $262c
    inc h
    cpl
    ld h, d
    ld [hl], $38
    inc sp
    inc sp
    ld [hl-], a
    dec [hl]
    scf
    ldh a, [$ed]
    scf
    jr z, jr_04c_65eb

    scf
    jr z, jr_04c_65ed

    ld [hl], $f0
    db $ed
    jr c, jr_04c_661c

jr_04c_65bd:
    ld [hl], $5f
    cpl
    inc l
    inc h
    inc l
    ld [hl], $32
    ld sp, $edf0

jr_04c_65c8:
    inc h
    ld [hl], $36
    inc l
    ld [hl], $37
    inc h
    ld sp, $f137
    inc sp
    dec [hl]
    ld [hl-], a
    daa
    jr c, @+$28

    jr z, jr_04c_660f

    ldh a, [$ed]
    inc sp
    dec [hl]
    ld [hl-], a
    daa
    jr c, jr_04c_6608

jr_04c_65e2:
    jr z, jr_04c_6619

    ld [hl], $f0
    db $ed
    jr z, jr_04c_6624

    jr z, jr_04c_6611

jr_04c_65eb:
    jr c, jr_04c_6624

jr_04c_65ed:
    inc l
    add hl, sp
    jr z, jr_04c_65e2

    inc sp
    dec [hl]
    ld [hl-], a
    daa
    jr c, jr_04c_661d

    jr z, jr_04c_662e

    ldh a, [$ed]
    inc sp
    dec [hl]
    jr z, jr_04c_6635

    inc l
    daa
    jr z, jr_04c_6634

    scf
    ldh a, [$f0]
    db $ed
    inc a

jr_04c_6608:
    jr c, jr_04c_6637

    inc l
    pop af
    ld h, d
    ld h, d
    dec hl

jr_04c_660f:
    ld [hl-], a
    dec [hl]

jr_04c_6611:
    inc l
    inc l
    ldh a, [$ed]
    jr z, jr_04c_6648

    inc l
    dec sp

jr_04c_6619:
    pop af
    pop af
    scf

jr_04c_661c:
    ld [hl-], a

jr_04c_661d:
    ld [hl], $28
    pop af
    pop af
    inc a
    jr c, jr_04c_6651

jr_04c_6624:
    inc l
    pop af
    ld h, d
    dec hl
    ld [hl-], a
    dec [hl]
    inc l
    inc l
    ldh a, [$ed]

jr_04c_662e:
    inc h
    ld l, $2c
    dec [hl]
    inc h
    pop af

jr_04c_6634:
    ld h, d

jr_04c_6635:
    ld h, d
    scf

jr_04c_6637:
    ld [hl-], a
    dec [hl]
    inc l
    inc a
    inc h
    jr nc, jr_04c_6662

    ldh a, [$ed]
    ld l, $32
    inc l
    ld h, $2b
    inc l
    pop af
    ld h, d

jr_04c_6648:
    ld h, d
    ld [hl], $38
    ld a, [hl+]
    inc l
    inc a
    inc h
    jr nc, @+$26

jr_04c_6651:
    ldh a, [$ed]
    ldh a, [$ed]
    ld a, [hl+]
    inc h
    ld [hl-], a
    pop af
    ld h, d
    ld h, d
    jr nc, jr_04c_6681

    scf
    ld [hl], $38
    jr nc, jr_04c_6694

jr_04c_6662:
    scf
    ld [hl-], a
    pop af
    jr c, jr_04c_6697

    jr z, jr_04c_66a6

    ld [hl-], a
    pop af
    pop af
    dec hl
    inc l
    ld h, e
    ld [hl], $33
    jr z, jr_04c_669b

    daa
    ldh a, [$ed]
    ld a, [hl-]
    inc h
    ld sp, $2837
    ld sp, $383c
    pop af
    pop af
    inc a

jr_04c_6681:
    jr c, jr_04c_66b1

    inc h
    inc sp
    inc l
    pop af
    pop af
    ld [hl-], a
    cpl
    daa
    sbc e
    ld [hl-], a
    ld sp, $3628
    pop af
    pop af
    scf
    inc h

jr_04c_6694:
    ld h, $26
    dec hl

jr_04c_6697:
    inc h
    ld sp, $f1f1

jr_04c_669b:
    ld [hl], $2c
    ld sp, $edf0
    inc h
    ld [hl], $27
    sbc e
    dec h
    inc h

jr_04c_66a6:
    scf
    pop af
    pop af
    ld l, $24
    dec a
    jr c, jr_04c_66dc

    inc l
    pop af
    ld h, d

jr_04c_66b1:
    ld l, $2c
    ld l, $38
    scf
    inc h
    ld sp, $f02c
    db $ed
    dec l
    inc l
    ld sp, $f1f1
    jr c, jr_04c_66f3

    ld l, $f1
    pop af
    dec hl
    inc l
    ld [hl], $24
    ld sp, $f028
    db $ed
    ldh a, [$ed]
    dec l
    inc l
    jr nc, jr_04c_6735

    ld h, $38
    dec [hl]
    dec [hl]
    inc a
    pop af
    pop af
    inc a
    ld [hl-], a

jr_04c_66dc:
    scf
    inc h
    ld h, d
    ld a, [hl-]

jr_04c_66e0:
    inc h
    daa
    inc h
    ldh a, [$ed]
    add hl, hl
    dec [hl]
    inc h
    ld sp, $622e
    dec hl
    ld [hl-], a
    jr nc, jr_04c_66e0

    ld h, d
    and b
    jr c, jr_04c_6752

jr_04c_66f3:
    ld [hl], $5f
    and c
    pop af
    inc a
    ld [hl-], a
    scf
    inc h
    ld h, d
    ld a, [hl-]
    inc h
    daa
    inc h
    pop af
    and b
    jr c, jr_04c_6763

    ld l, $5f
    and c
    ldh a, [$ed]
    scf
    ld [hl-], a
    ld sp, $623c
    dec h
    ld [hl-], a
    jr c, jr_04c_6747

    ld sp, $f128
    ld h, d
    and b
    jr c, jr_04c_6778

    ld l, $5f
    and c
    pop af
    jr nc, jr_04c_674b

    ld l, $28
    ld h, d
    jr nc, jr_04c_674a

    dec hl
    inc h
    cpl
    jr z, @-$0d

    and b
    jr c, @+$61

    ld [hl], $5f
    and c
    ldh a, [$ed]
    ld [hl], $38
    ld [hl], $24

jr_04c_6735:
    ld sp, $62f1
    dec h
    ld [hl-], a
    ld [hl], $2b
    ld l, $32
    add hl, hl
    add hl, hl
    pop af
    ld h, d
    and b
    jr c, jr_04c_67a4

    ld [hl], $5f

jr_04c_6747:
    and c
    pop af
    pop af

jr_04c_674a:
    dec l

jr_04c_674b:
    inc l
    jr nc, jr_04c_67b0

    ld h, $38
    dec [hl]
    dec [hl]

jr_04c_6752:
    inc a
    pop af
    and b
    jr c, @+$61

    ld [hl], $5f
    and c
    pop af
    pop af
    daa
    inc h
    add hl, sp
    inc l
    daa
    pop af
    ld h, d

jr_04c_6763:
    dec h
    jr c, jr_04c_679b

    scf
    ld [hl-], a
    ld sp, $a0f1
    jr c, @+$61

    ld l, $5f
    and c
    ldh a, [$ed]
    inc sp
    dec hl
    ld [hl-], a
    ld [hl], $33
    dec hl

jr_04c_6778:
    ld [hl-], a
    dec [hl]
    ld [hl], $f0
    db $ed
    jr z, jr_04c_67ab

    daa
    ld [hl-], a
    ld [hl], $9c
    dec l
    inc h
    inc sp
    inc h
    ld sp, $f1f1
    ld [hl], $24
    scf
    ld [hl-], a
    ld [hl], $2b
    inc l
    pop af
    ld h, d
    dec hl
    ld [hl-], a
    ld sp, $2427
    pop af
    scf
    inc h

jr_04c_679b:
    ld l, $24
    pop af
    ld h, d
    inc a
    inc h
    jr nc, jr_04c_67c7

    ld a, [hl+]

jr_04c_67a4:
    jr c, @+$28

    dec hl
    inc l
    pop af
    ld h, $35

jr_04c_67ab:
    inc a
    ld [hl], $37
    inc h
    cpl

jr_04c_67b0:
    pop af
    pop af
    daa
    inc a
    ld sp, $3024
    inc l
    ld h, $36
    ldh a, [$ed]
    ldh a, [$ed]
    ld sp, $3224
    ld l, $2c
    pop af
    ld h, d
    ld h, d
    ld [hl-], a

jr_04c_67c7:
    inc l
    ld [hl], $2b
    inc l
    ldh a, [$ed]
    scf
    jr z, jr_04c_6805

    jr c, jr_04c_67fd

    inc l
    ld l, $32
    pop af
    ld h, d
    ld h, d
    dec hl
    inc h
    ld sp, $3a24
    inc h
    pop af
    ld l, $28
    ld sp, $2c2d
    dec [hl]
    ld [hl-], a
    pop af
    ld h, d
    ld l, $24
    ld sp, $f132
    dec hl
    inc l
    dec [hl]
    ld [hl-], a
    ld [hl], $2b
    inc l
    pop af
    ld h, d
    ld [hl], $24
    scf
    ld [hl-], a
    pop af
    dec hl
    inc l

jr_04c_67fd:
    daa
    jr z, @+$30

    inc l
    pop af
    ld h, d
    ld h, d
    inc a

jr_04c_6805:
    ld [hl-], a
    ld sp, $3c28
    inc h
    jr nc, @+$26

    ldh a, [$ed]
    ld [hl], $28
    inc l
    inc l
    ld h, $2b
    inc l
    pop af
    ld h, d
    ld h, d
    jr nc, @+$34

    dec [hl]
    inc l
    jr c, jr_04c_6844

    dec hl
    inc l
    pop af
    ld l, $24
    ld sp, $62f1
    inc l
    ld l, $28
    daa
    inc h
    pop af
    scf
    jr z, jr_04c_6864

    jr c, jr_04c_686d

    ld [hl-], a
    pop af
    ld h, d
    ld [hl], $24
    ld l, $38
    jr nc, jr_04c_685e

    pop af
    inc a
    inc h
    ld [hl], $38
    ld [hl-], a
    pop af
    ld h, d
    ld h, d
    dec hl

jr_04c_6844:
    inc l
    dec [hl]
    ld [hl-], a
    inc l
    pop af
    ld l, $28
    ld sp, $2c9c
    ld h, $2b
    inc l
    pop af
    ld h, d
    jr nc, jr_04c_6881

    inc a
    inc h
    jr nc, @+$34

    scf
    ld [hl-], a
    ldh a, [$30]
    inc l

jr_04c_685e:
    scf
    ld [hl-], a
    pop af
    ld h, d
    ld h, d
    inc a

jr_04c_6864:
    inc h
    jr nc, @+$26

    ld a, [hl+]
    inc l
    ld [hl], $2b
    inc l
    pop af

jr_04c_686d:
    dec l
    inc l
    dec [hl]
    ld [hl-], a
    pop af
    ld h, d
    ld l, $2c
    jr nc, jr_04c_68af

    dec [hl]
    inc h
    pop af
    jr nc, jr_04c_68a8

    ld a, [hl-]
    inc h
    ld l, $32
    pop af

jr_04c_6881:
    ld h, d
    scf
    ld [hl-], a
    ld l, $38
    daa
    inc h
    pop af
    inc a
    jr c, jr_04c_68ba

    inc l
    pop af
    ld h, d
    ld h, d
    ld sp, $3524
    inc h
    pop af
    dec hl
    inc l
    dec [hl]
    ld [hl-], a
    ld l, $2c
    pop af
    ld h, d
    jr nc, jr_04c_68d7

    dec [hl]
    inc h
    ld l, $32
    ld [hl], $2b
    inc l
    ldh a, [$ed]

jr_04c_68a8:
    inc sp
    inc h
    jr c, jr_04c_68db

    pop af
    ld h, d
    ld h, d

jr_04c_68af:
    dec hl
    inc h
    ld sp, $2827
    cpl
    jr nc, jr_04c_68db

    ld sp, $edf0

jr_04c_68ba:
    dec l
    jr c, @+$33

    pop af
    ld h, d
    ld h, d
    jr nc, @+$2e

    inc a
    inc h
    jr nc, jr_04c_68f8

    scf
    ld [hl-], a
    ldh a, [$ed]
    dec hl
    inc l
    scf
    ld [hl-], a
    ld [hl], $2b
    inc l
    pop af
    ld h, d
    ld h, d
    ld [hl], $38
    inc l

jr_04c_68d7:
    ld sp, $3832
    pop af

jr_04c_68db:
    ld l, $28
    inc l
    dec l
    inc l
    pop af
    ld h, d
    dec hl

jr_04c_68e3:
    ld [hl-], a
    ld sp, $2427
    ldh a, [$ed]
    inc a
    jr c, @+$30

    inc l
    ld sp, $2532
    jr c, jr_04c_68e3

    ld h, d
    ld h, d
    ld h, $2b
    inc l
    daa

jr_04c_68f8:
    inc h
    ldh a, [$ed]
    inc a
    inc h
    ld [hl], $38
    dec hl
    inc l
    dec [hl]
    ld [hl-], a
    pop af
    ld h, d
    ld h, d
    add hl, hl
    jr c, jr_04c_6937

    jr c, jr_04c_6941

    dec hl
    inc l
    jr nc, jr_04c_6933

    ldh a, [$ed]
    or l
    ld [bc], a
    nop
    nop
    nop
    ld h, d
    inc h
    dec [hl]
    jr nc, @+$34

    dec [hl]
    ld h, d
    inc sp
    dec [hl]
    ld [hl-], a
    dec l
    jr z, jr_04c_6949

    scf
    pop af
    pop af
    or l
    ld [bc], a
    nop
    nop
    nop
    ld h, d
    dec h
    inc l
    dec [hl]
    daa
    ld h, d
    ld [hl], $37

jr_04c_6933:
    jr c, @+$29

    inc l
    ld [hl-], a

jr_04c_6937:
    pop af
    pop af
    or l
    ld [bc], a
    nop
    nop
    nop
    ld h, d
    jr z, @+$33

jr_04c_6941:
    inc l
    dec sp
    ldh a, [$ed]
    and h
    scf
    ld [hl-], a
    dec h

jr_04c_6949:
    jr z, jr_04c_6971

    ld [hl-], a
    ld sp, $2c37
    ld sp, $2838
    daa
    ldh a, [rIE]
    cp l
    dec b
    ld sp, hl
    add hl, bc
    ld sp, hl
    ld bc, $ff01
    rlca
    rra
    ccf
    ld a, a
    ld a, a
    inc bc
    rst $38
    add l
    ldh [$f8], a
    db $fc
    cp $fe
    inc bc
    rst $38
    ret nc

    db $10
    inc d
    jr jr_04c_6981

jr_04c_6971:
    jr jr_04c_6993

    or b
    or b
    ld a, b
    ld d, b
    ld e, b
    ld e, b
    ld c, h
    ld l, h
    add [hl]
    adc e
    ld hl, sp-$06
    rst $08
    sbc l

jr_04c_6981:
    ld hl, sp+$71
    ld l, e
    ld a, [c]
    pop af
    ei
    rst $38
    pop af
    db $eb

jr_04c_698a:
    rst $30
    rst $38
    rst $38
    xor e
    ld l, a
    rst $30
    ld a, a
    cp a
    ld [hl], e

jr_04c_6993:
    cp $fd
    cp $f9
    rst $30
    rst $28
    cp $d5
    ld a, c
    db $76
    add a
    add l
    ret nc

    sub d
    rst $38
    ld [hl], d
    ld l, d
    ld a, [c]
    add c
    add $e8
    ldh [$f9], a
    sub $78
    db $76
    ld hl, sp+$7a
    rrca
    ld a, l
    ld [$9789], sp
    inc c
    cp $79
    scf
    rrca
    ld c, $2d
    add l
    adc b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub h
    jp hl


    dec [hl]
    jp nz, VBlankInterrupt

    jr nz, @+$42

    and b
    ld c, d
    cp h
    ld e, d
    ld bc, $0100
    inc bc
    inc bc
    jp hl


    dec [hl]
    jp nz, Jump_000_0440

    nop
    add h
    ld c, d
    cp h
    ld e, d
    ld bc, $0005
    sbc a
    ld bc, $0b01
    rra
    rra
    ld a, a
    rst $38
    nop
    nop
    add h
    adc h
    ret c

    ld hl, sp-$04
    rst $38
    rst $38
    push af
    xor $c9
    rst $00
    rst $08
    xor e
    ld [$efff], a
    ld [hl], e
    dec bc
    rst $38
    cp a
    di
    ei
    inc bc
    db $10
    inc b
    jr c, jr_04c_698a

    ld [hl], h
    jr nz, jr_04c_6a0c

jr_04c_6a0c:
    sub b
    ld bc, $0f1f
    inc bc
    rrca
    rra
    rst $38
    ld a, a
    add b
    ldh [$f0], a
    db $fc
    sbc b
    ld e, b
    ld a, h
    ld e, [hl]
    ld [$9200], sp
    add b
    ret nz

    ld b, b
    add b
    ret nz

    ret nz

    ld h, b
    ret nz

    rlca
    inc bc
    dec b
    ld [bc], a
    ld bc, $0205
    inc bc
    rst $38
    rst $38
    inc bc
    ret nz

    adc e
    adc $c0
    ret z

    rst $38
    rst $38
    ld bc, $a101
    ld sp, $c111
    inc b
    rst $38
    sbc h
    rst $00
    ld a, l
    or a
    rst $28
    db $fd
    db $fd
    ei
    or $da
    xor $31
    rst $38
    or [hl]
    rst $08
    rst $08
    ld [$d4cf], a
    sbc $ff
    cp l
    ld a, c
    db $db
    rst $38
    di
    inc bc
    rst $38
    rst $38
    inc bc
    ld [hl], h
    dec b
    or d
    jr nz, jr_04c_6a65

jr_04c_6a65:
    adc a
    ccf
    rrca
    rrca
    rlca
    rrca
    rra
    ld de, $d400
    ld a, h
    ld d, h
    ldh a, [$f0]
    add b
    add b
    add hl, bc
    nop
    sub h
    and b
    ld d, b
    ld h, b
    ld h, b
    or b
    ld h, b
    ret nz

    add b
    dec b
    ld [bc], a
    ld bc, $0203
    rlca
    ld [bc], a
    dec b
    call $c0c0
    ret z

    inc bc
    ret nz

    add l
    rst $38
    and c
    ld sp, $4101
    inc bc
    ld bc, $ff85
    cp c
    ld e, a
    inc bc
    inc b
    inc b

jr_04c_6a9d:
    nop
    add l
    or $f0
    ldh [$c0], a
    add b
    ld d, e
    nop
    ret nz

    db $fd
    or l
    jp z, $50c0

    call z, Call_04c_42b1
    ld c, e
    cp [hl]
    ld e, d
    ld de, $2e03
    add l
    adc h
    db $fd
    or l
    jp z, Jump_04c_40c0

    xor h
    pop hl
    and d
    ld c, e
    cp [hl]
    ld e, d
    ld de, $2a01
    add a
    adc c
    ld d, h
    sub c
    add hl, bc
    adc e
    ld e, a
    sbc a
    ld a, a
    rst $38
    ld bc, $8c06
    sbc h
    reti


    ld_long a, $fffe
    rst $38
    adc d
    sub c
    xor c
    xor a
    xor a
    res 1, d
    rst $38
    ld de, $0b9f
    rst $38
    rst $38
    ei
    ei
    inc bc
    db $10
    inc b
    jr z, jr_04c_6a9d

    ld c, h
    rst $08
    push hl
    or h
    ld [$eeb7], a
    sub $ad
    rrca
    dec h
    ld e, e
    cpl
    dec d
    dec bc
    cpl
    dec d
    rst $38
    rst $28
    ld [hl], a
    ld [$ae57], a
    sub h
    dec c
    rst $38
    rst $28
    ld [hl], a
    xor [hl]
    ld d, l
    ld a, [hl+]
    add b
    nop
    dec c
    rra
    rrca
    dec bc
    rra
    rra
    rst $38
    ld a, a
    add a
    push hl
    ldh a, [$fe]
    sbc e
    ld e, d
    ld a, h
    ld e, a
    ld [$a000], sp
    ld [hl], a
    and l
    or b
    ld l, d
    daa
    ld l, $94
    xor l
    add hl, bc
    inc b
    ld [bc], a

jr_04c_6b2b:
    dec c
    ld d, $0a
    inc d
    dec c
    rst $38
    add b
    cp a
    cp b
    or a
    and c
    and b
    and b
    rst $38
    ld bc, $1dfd
    ld c, l
    push bc
    dec b
    dec b
    inc b
    rst $38

jr_04c_6b42:
    sbc h
    rst $00
    ld a, l
    or a
    rst $28
    db $fd
    db $fd
    ei
    or $da
    xor $31
    rst $38
    sbc $af
    xor a
    adc e
    xor a
    or h
    sbc [hl]
    rst $38
    cp l
    ld a, c
    db $db
    rst $38
    di
    inc de
    rst $38
    rst $38
    inc bc
    ld c, h
    dec b
    jp z, $d4b0

    or d
    add sp, -$2c
    ld [c], a
    call c, $82e5
    dec hl
    ld d, a
    add hl, hl
    rla
    dec l
    dec de
    and a
    sbc e
    ld d, h
    sub b
    ld c, h
    xor d
    ld d, l
    xor $df
    rst $38
    ld bc, $4c16
    cp d
    ld d, l
    xor $df
    rst $38
    cp a
    ld l, a
    ccf
    rla
    rrca
    ccf
    sub l
    adc c
    call nc, Call_04c_567e
    or $fc
    cp b
    pop de
    ld [c], a
    ld [$b800], sp
    ld d, h
    and b
    jr jr_04c_6b2b

    ret nz

    sbc h
    and c
    ld l, d
    ld a, [hl+]
    dec [hl]
    ld c, $11
    dec d
    jr z, jr_04c_6b42

    adc c
    and b
    or d
    or l
    and d
    and b
    cp a
    add b
    rst $38
    dec d
    dec b
    adc l
    dec h
    dec b
    db $fd
    ld bc, $b9ff
    ld e, a
    and e
    ld [hl], h
    dec sp
    adc a
    sub h
    dec c
    rst $30
    push af
    rst $28
    adc $96
    ld a, h
    ret nc

    nop
    rst $38
    ld h, [hl]
    sbc c
    ld b, $81
    jr nz, @+$18

    add c
    ld c, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add e
    inc e
    inc a
    inc a
    inc bc
    inc e
    sbc d
    ld a, $3e
    ld a, [hl]
    rst $38
    rst $20
    adc $3c
    ld a, e
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    rst $00
    ccf
    ccf
    rst $00
    rst $38
    ld a, [hl]
    ld a, $7e
    ld a, [hl]
    cp $ee
    rst $38
    rst $38
    ld c, $03
    rst $38
    add l
    ld l, d
    xor $40
    ld a, e
    ld h, b
    inc bc
    rst $38
    add l
    xor d
    xor $00
    cp e
    nop
    inc bc
    rst $38
    sub l
    xor [hl]
    rst $28
    ld [bc], a
    cp d
    ld b, $00
    inc bc
    rrca
    inc e
    ld sp, $6232
    ld h, d
    nop
    ret nz

    ldh a, [$38]
    adc h
    ld c, h
    ld b, [hl]
    ld b, [hl]
    inc bc
    rst $38
    add l
    db $fc
    pop af
    ld a, [c]
    ld [c], a
    ld [c], a
    inc bc
    rst $38
    adc d
    ccf
    adc a
    ld c, a
    ld b, a
    ld b, a
    rst $38
    rst $38
    cp e
    ld d, l
    ld [hl+], a
    inc bc
    nop
    add l
    rlca
    rra
    ccf
    ld a, a
    ld a, a
    inc bc
    rst $38
    add l
    ldh [$f8], a
    db $fc
    cp $fe
    dec bc
    rst $38
    ld [$8200], sp
    rst $38
    rst $38
    dec b
    ret nz

    add e
    add b
    rst $38
    rst $38
    inc bc
    nop
    adc l
    rrca
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld [$00f8], sp
    nop
    rst $38
    db $fd
    ld b, $01
    cp b
    ld l, [hl]
    ld b, b
    ld a, e
    ld h, b
    ld l, [hl]
    ld b, b
    ld a, e
    ld b, b
    xor $00
    cp e
    nop
    xor $00
    cp e
    nop
    xor $02
    cp d
    ld b, $ee
    ld [bc], a
    cp d
    ld b, $42
    ld b, d
    ld [hl+], a
    ld hl, $0c10
    inc bc
    nop
    ld b, d
    ld b, d
    ld b, h
    add h
    ld [$c030], sp
    nop
    jp nz, $e2c2

    pop hl
    ldh a, [$fc]
    rst $38
    rst $38
    ld b, e
    ld b, e
    ld b, a
    add a
    rrca
    ccf
    rst $38
    rst $38
    add hl, bc
    nop
    add c
    ld a, b
    dec b
    ld b, b
    sub c
    nop
    rst $38
    rst $28
    rst $38
    jr nz, @-$1e

    ld h, b
    ld b, b
    nop
    rst $38
    rst $18
    ld a, l
    ld bc, $0100
    nop
    nop
    add hl, bc
    rst $38
    inc b
    adc h
    add h
    rst $38
    ld b, b
    ld c, h
    rst $38
    inc b
    ld bc, $ffd5
    ld [bc], a
    ld [bc], a
    xor d
    nop
    add b
    nop
    add l
    rrca
    add a
    rrca
    xor d
    ld bc, $0100
    ld d, b
    pop hl
    ldh a, [$e1]
    nop
    nop
    db $10
    ld hl, $0703
    ld c, $1d
    nop
    nop
    add sp, -$30
    and b
    ld b, b
    add c
    ld [bc], a
    nop
    nop
    db $10
    ld hl, $8743
    ld c, $1d
    nop
    nop
    add sp, -$30
    and b
    ld b, b
    add b
    nop
    ld a, a
    xor a
    ld e, a
    jr nz, @+$12

    ld [$0204], sp
    nop
    add b
    ld b, b
    jr nz, @+$12

    ld [$0204], sp
    nop
    ld bc, $0402
    ld [$2010], sp
    ld b, b
    rst $38
    db $dd
    ld a, d
    inc b
    ld [$2010], sp
    ld b, b
    ld b, b
    ld e, [hl]
    dec b
    ld d, b
    add c
    ld b, b
    inc bc
    rst $38
    add l
    ld [$e0f0], a
    ldh a, [$e1]
    inc bc
    rst $38
    add c
    xor d
    inc bc
    nop
    add c
    ld d, l
    inc bc
    rst $38
    add a
    xor a
    rlca
    rrca
    rlca
    rrca
    ld c, h
    ld c, h
    dec b
    ld h, $83
    ccf
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    sub [hl]
    db $fc
    add a
    rrca
    add a
    ld a, [bc]
    add b
    nop
    add b
    ld d, l
    ldh a, [$e1]
    ldh a, [$a1]
    nop
    ld bc, $5500
    ld a, [hl-]
    inc [hl]
    jr z, jr_04c_6d62

    jr nz, jr_04c_6d57

    nop
    sub [hl]
    inc b

jr_04c_6d57:
    ld [$2110], sp
    ld b, e
    add a
    nop
    nop
    ld a, [hl-]
    ld [hl], h
    add sp, -$30

jr_04c_6d62:
    and b
    ld b, b
    nop
    nop
    inc b
    ld [$2010], sp
    ld b, h
    adc h
    inc b
    nop
    adc c
    add b
    nop
    ldh [rP1], a
    cp b
    nop
    ld bc, $0400
    dec b
    nop
    add e
    add b
    nop
    ld b, b
    rlca
    nop
    adc b
    inc bc
    nop
    ld c, $00
    dec sp
    nop
    rst $38
    rst $38
    inc bc
    ret nz

    adc e
    adc $c0
    ret z

    ldh a, [$e1]
    ldh a, [$e1]
    ldh a, [$e1]
    ldh a, [$e1]
    inc b
    nop
    adc [hl]
    ld b, h
    nop
    cp e
    nop
    add a
    rrca
    add a
    rrca
    add a
    rrca
    add a
    rrca
    nop
    ld a, a
    ld b, $40
    add d
    nop
    cp $06
    nop
    ld [$0840], sp
    nop
    sub b
    inc bc
    rrca
    rra
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    ret nz

    ldh a, [$f8]
    db $fc
    cp $fe
    rst $38
    rst $38
    inc c
    nop
    and b
    ldh [$f8], a
    cp $ff
    db $fc
    di
    rst $28
    rst $18
    cp a
    cp a
    ld a, a
    ld a, a
    ccf
    rst $08
    rst $30
    ei
    db $fd
    db $fd
    cp $fe
    rst $38
    rst $38
    ld bc, $a101
    ld sp, $c111
    and c
    ld sp, $4101
    inc bc
    ld bc, $ff85
    call $c0c0
    ret z

    inc bc
    ret nz

    add [hl]
    rst $38
    ldh a, [$e0]
    ldh a, [$e0]
    push af
    inc bc
    rst $38
    add c
    xor d
    inc bc
    nop
    add c
    ld d, l
    inc bc
    rst $38
    add l
    add a
    rrca
    rlca
    rrca
    ld d, a
    inc bc
    rst $38
    add e
    inc b
    inc b
    inc h
    inc bc
    inc b
    jp c, Jump_000_3e02

    ld [bc], a
    add hl, sp
    ld hl, $04c2
    add hl, de
    ld bc, $02ff
    add hl, sp
    pop bc
    inc bc
    add hl, sp
    ld bc, $7e83
    ld [bc], a
    ld [de], a
    ld [de], a
    ld [hl-], a

jr_04c_6e27:
    ld [hl+], a
    ld bc, $0ef3
    rst $38
    add b
    add b
    dec d
    sub c
    ccf
    add h
    rra
    rst $38
    nop
    nop
    ld d, l
    ld de, $44ff
    rst $38
    rst $38
    ld bc, $5001
    ld de, $45fc
    ld hl, sp-$01
    rst $38
    db $fc
    di
    xor $ed
    db $dd
    db $dd
    rst $38
    rst $38
    ccf
    rst $08
    rst $30
    rst $30
    ei
    ei
    nop
    inc bc
    inc c
    inc de
    ld l, $2d
    ld e, l
    ld e, l
    nop
    ret nz

    jr nc, jr_04c_6e27

    db $f4
    db $f4
    ld_long a, $fffa
    nop
    ld b, h
    xor d
    db $dd
    rst $38
    cp e
    ld d, l
    db $10
    rst $38
    ld [$0900], sp
    rst $38
    add c
    add b
    dec b
    cp a
    sub e
    ret nz

    rst $38
    nop
    rst $38
    ldh [$ef], a
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $30
    rlca
    rst $38
    nop
    rst $38
    inc bc
    dec b

jr_04c_6e8a:
    db $fd
    sbc c
    ld bc, $bf91
    add h
    sbc a
    sub c
    cp a
    add h
    cp a
    ld de, $44ff
    rst $38
    ld de, $44ff
    rst $38
    ld de, $45fd
    ld sp, hl
    ld de, $45fd
    ld sp, hl
    inc bc
    db $fd
    add c
    cp $0c
    rst $38
    or b
    ld a, l
    ld a, l
    dec a
    ld a, $1f
    rrca
    inc bc
    nop
    cp $fe
    db $fc

jr_04c_6eb7:
    db $fc
    ld hl, sp-$10
    ret nz

    nop
    nop
    ld d, h
    ld d, h
    nop
    nop
    ld d, h
    ld d, h
    nop
    ret c

    add b
    or b
    inc [hl]
    inc [hl]
    or h
    add h
    cp b
    rst $38
    sub b
    add b
    ld e, l
    sbc a
    rla
    jr nz, jr_04c_6f53

    rst $38
    ld hl, $ed81
    db $fc
    cp l
    inc b
    cp $09
    rst $38
    inc b
    or e
    add h
    rst $38
    ret nz

    db $d3
    rst $38
    inc b
    add e
    push af
    rst $38
    inc bc
    add a
    xor d
    nop
    sub l
    ccf
    sbc d
    jr nc, jr_04c_6e8a

    ld sp, $01aa
    ld d, h
    ld sp, hl
    xor h
    add hl, de
    inc c
    sbc c
    nop
    ld a, a
    ld h, a
    ld c, [hl]
    ld e, h
    ld a, b
    ld [hl], c

jr_04c_6f02:
    ld h, d
    nop
    rst $38
    inc d
    add hl, hl
    ld d, e
    and a
    ld c, [hl]
    sbc h
    nop
    rst $38
    rst $20
    adc $9c
    jr c, @+$73

    ld [c], a
    nop
    cp $16
    ld a, [hl+]
    ld d, d
    and [hl]
    ld c, [hl]
    sbc [hl]
    ld a, a
    db $10
    add b
    call $f3e7
    ld hl, sp-$04
    ld a, a
    ccf
    sbc a
    rst $08
    rst $20
    di
    ld sp, hl
    db $fc
    cp $fc
    ld sp, hl
    di
    rst $20
    rst $08
    sbc a
    ccf
    rst $38
    jr nz, jr_04c_6eb7

    db $e3
    rst $20
    adc a
    rra
    ccf
    dec l
    ld hl, $2d0d
    dec l
    inc l
    ld bc, $ff1b
    add b
    add b
    sub l
    adc a
    sbc d
    adc h
    sbc c
    rst $38
    nop
    nop
    ld d, l
    rst $38
    xor d
    nop
    ld d, l

jr_04c_6f53:
    rst $38
    ld bc, $5101
    ld sp, hl
    or c
    add hl, de
    ld sp, $d3d3
    dec b
    jp hl


    add e
    rst $38
    add a
    add a
    dec b
    rrca
    rst $38
    rst $38
    sbc c
    jr nc, jr_04c_6f02

    dec [hl]
    sbc a
    ld a, [hl+]
    add b
    ld d, l
    adc h
    add hl, de
    inc c
    ld e, c
    db $fc
    xor c
    nop
    ld d, l
    ld b, l
    ld c, d
    ld d, h
    ld l, c
    ld d, e
    ld h, a
    ld a, a
    nop
    add hl, sp
    ld [hl], e
    rst $20
    adc $9c
    jr c, @+$01

    nop
    push bc
    adc d
    inc d
    add hl, hl
    ld d, e
    and a
    rst $38
    nop
    ld a, [hl-]
    ld [hl], d
    and $ce
    sbc d
    ld [hl-], a
    cp $00
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ld b, a
    rst $38
    ld a, [hl]
    cp a
    db $db
    db $ed
    rst $30
    ei
    db $fd
    cp $7e
    db $fd
    cp e
    rst $10
    rst $28
    rst $18
    cp a
    ld a, a
    rst $38
    rst $38
    db $fc
    rst $38
    pop af
    rst $38
    call nz, $ffff
    add b
    cp a
    cp b
    or a
    and c
    and b
    and b
    adc h
    sbc c
    adc h
    sbc c
    adc h
    sbc c
    adc h
    sbc c
    ld de, $aa44
    ld [hl], a
    xor e
    rst $38
    ld b, h
    rst $38
    sbc c
    ld sp, $3199
    sbc c
    ld sp, $3199
    nop
    nop
    dec de
    scf
    cpl
    ld l, $1d
    dec de
    nop
    nop
    cp b
    ld [hl], h
    ld [hl], h
    db $ec
    and d
    sbc h
    cp b
    dec l
    dec l
    dec de
    scf
    cpl
    ld l, $1d
    dec de
    ret c

jr_04c_6ff1:
    cp b
    xor b
    ld [hl], h
    ld [hl], h
    db $ec
    sbc h
    cp b
    db $fc

jr_04c_6ff9:
    ldh a, [$e0]
    ret nz

    add b
    add b
    nop
    nop
    ccf
    rrca
    rlca
    inc bc
    ld bc, $0001
    nop
    inc c
    rst $38
    call nz, $071f
    ld bc, $0300
    inc c
    db $10
    jr nz, jr_04c_7054

    ld b, b
    add b
    add b
    ret nz

    jr nc, @+$0a

    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $ff01
    ld bc, $1dfd
    ld c, l
    push bc
    dec b
    dec b
    dec d
    dec b
    adc l
    dec h
    dec b
    db $fd
    ld bc, $a0ff
    or d
    or l
    and d
    and b
    cp a
    add b
    rst $38
    adc h
    sbc b
    adc l
    sbc a
    adc d
    add b
    add b
    rst $38
    xor d
    nop
    ld d, l
    rst $38
    xor d
    nop
    nop
    rst $38
    sbc c
    ld sp, $f159
    xor c
    ld bc, $ff01
    ld [bc], a
    nop
    nop
    nop
    nop

jr_04c_7054:
    nop
    nop
    nop
    nop
    add c
    ld a, [hl]
    inc bc
    cp $86
    ld h, [hl]
    cp $fe
    nop
    ld a, [hl]
    cp $05
    jr c, jr_04c_6ff1

    nop
    ld e, $3e
    ld a, [hl]
    xor $fe
    cp $ee
    nop
    inc a
    ld a, h
    inc bc
    jr c, jr_04c_6ff9

    inc a
    ld a, h
    nop
    inc a
    ld a, [hl]
    inc bc
    xor $96
    cp $7c
    nop
    ld h, d
    and $f6
    cp $fe
    xor $e6
    nop
    rst $38
    db $fc
    db $e3
    add b
    ldh [$e0], a
    add b
    ldh [rIE], a
    ld a, h
    db $e3
    dec b
    nop
    xor l
    rst $38
    ld a, l
    push hl
    ld bc, $0507
    ld bc, $4001
    ld h, c
    jr z, @+$18

    ld c, d
    inc b
    add l
    ld b, b
    ld hl, $0242
    ld a, [bc]
    inc b
    jr nc, @+$2e

    nop
    ld [$060c], sp
    inc bc
    add c
    ld b, e
    ld h, $1c
    db $10
    jr nc, jr_04c_7118

    ret nz

    add c
    ld [bc], a
    inc b
    ld [$100f], sp
    jr nz, jr_04c_7101

    ld b, c
    inc bc
    ld b, d
    add l
    ldh a, [rP1]
    nop
    db $10
    adc b
    inc bc
    ld [$4008], sp
    adc d
    ccf
    ld a, a
    ldh [$80], a
    ld b, b
    ccf
    ld [hl+], a
    ld hl, $ffff
    inc bc
    nop
    sbc e
    rst $38
    add d
    ld bc, $fefc
    rlca
    ld bc, $fc02
    adc b
    ld [$80ff], sp
    and b
    add e

jr_04c_70eb:
    add h
    adc b
    sub b
    sub b
    rst $38
    nop
    ld [$20c0], sp
    db $10
    inc c
    inc c
    inc b
    nop
    add c
    rst $38
    inc bc
    nop
    adc b
    ret nz

    and b
    add b

jr_04c_7101:
    ldh [$a0], a
    sub b
    adc $ff
    dec b
    nop
    sbc b
    ldh a, [$0e]
    rst $38
    inc bc
    ld bc, $0507
    rlca
    pop af
    rrca
    rst $38
    ld sp, $000b
    dec b

jr_04c_7118:
    add hl, bc
    ld [de], a
    ld bc, $4a00
    ld [hl+], a
    sub h
    jr @+$22

    inc bc
    nop
    sub b
    jr jr_04c_7156

    ld h, b
    ret nz

    ld bc, $0402
    ld [$2c18], sp
    ld b, [hl]
    add e
    add c
    ld b, b
    jr nz, jr_04c_7144

    inc b
    ld b, d
    add [hl]
    ld [hl+], a
    ld [hl+], a
    ld hl, $0821
    ld [$1006], sp
    ld [$b208], sp
    ld [hl+], a
    inc d

jr_04c_7144:
    jr jr_04c_7156

    jr jr_04c_7154

    ld a, [bc]
    add hl, bc
    add d
    ld b, h
    jr z, jr_04c_715e

    jr z, jr_04c_7194

    add d
    ld bc, $5088

jr_04c_7154:
    jr nc, jr_04c_7166

jr_04c_7156:
    jr nc, @+$62

    and b
    jr nz, jr_04c_70eb

    sub b
    adc b
    add h

jr_04c_715e:
    and e
    add e
    add b
    add b
    inc c
    inc c
    jr jr_04c_7196

jr_04c_7166:
    add sp, -$40
    nop
    nop
    rst $38
    rst $30
    ret nz

    ret nz

    add b
    add b
    and a
    rst $38
    rst $38
    rst $30
    inc b
    nop
    adc d
    rst $00
    rst $38
    rst $38
    rst $30
    ld bc, $0103
    ld bc, $ffc7
    inc bc
    jp $81a5


    pop bc
    pop bc
    jp $efc3


    rst $30
    ret c

    call z, $d0bc
    and a
    rst $38
    ccf
    or a
    and b

jr_04c_7194:
    ld h, b
    ld h, h

jr_04c_7196:
    inc c
    db $d3
    db $e3
    db $e3
    rst $20
    dec l
    dec de
    add hl, de
    ld bc, $ffc7
    jp $e3c3


    ld de, $6d39
    jp Jump_000_05c3


    ld de, $7f83
    jr nc, jr_04c_71af

jr_04c_71af:
    dec b
    jr nz, @-$7d

    cp $03
    nop
    add c
    rst $38
    ld b, $00
    adc e
    add c
    ld a, [hl]
    ld h, c
    ld a, [hl]
    add [hl]
    ld h, [hl]
    ld a, a
    add c
    add c
    ld a, [hl]
    sbc c
    inc b
    db $db
    adc e
    rst $20
    pop hl
    sbc $be
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld h, [hl]
    sbc c
    jp $04bd


    db $db
    add h
    cp l
    jp $bdc3


    inc b
    ld h, [hl]
    rst $00
    cp l
    jp Jump_04c_7a9d


    ld a, d
    ld l, d
    ld l, d
    ld h, [hl]
    ld l, d
    sbc l
    rst $38
    add e
    add h
    rst $38
    sbc b
    add e
    rst $08
    sub [hl]
    rst $38
    add e
    inc b
    rra
    ld hl, sp-$1d
    adc a
    db $76
    rst $38
    add e
    dec b
    add hl, de
    rst $38
    push hl
    adc c
    ld [hl], c
    dec a
    sbc [hl]
    sub l
    ret


    or l
    db $d3
    ld [hl], b
    dec a
    ld d, [hl]
    dec l
    call Call_000_39b4
    ld b, a
    ld b, e
    ld c, l
    ld [$1b74], sp
    ld h, l
    sbc e
    ld b, [hl]
    dec l
    dec sp
    db $10
    ld l, $d1
    xor [hl]
    dec e
    ld a, [c]
    call nz, $f029
    rst $28
    ret c

    or a
    xor [hl]
    inc bc
    xor l
    add l
    rrca
    rst $30
    dec de
    db $ed
    ld [hl], l
    inc bc
    or l
    ld [$a8af], sp
    rst $38
    ret nz

    sbc a
    rst $38
    ret nz

    rst $38
    ret


    db $cc, $ff, $00
    rst $38
    rst $38
    nop
    rst $38
    add hl, sp
    ld a, h
    rst $38
    inc bc
    ld sp, hl
    rst $38
    inc bc
    rst $38
    inc sp
    ld [hl], e
    nop
    ld a, a
    ld e, h
    ld l, e
    ld [hl], h
    ld l, c
    ld d, d
    ld d, h
    nop
    cp $36
    jp c, $962e

    ld a, [bc]
    ld a, [bc]
    inc b
    rst $38
    call z, $ff00
    nop
    rst $38
    cp h
    add $c9
    add d
    ret c

    ldh a, [$8e]
    rst $38
    ld e, h
    ld h, $89
    ld h, d
    cp b
    ldh a, [$0e]
    rst $38
    ld e, e
    ld hl, $658f
    cp a
    pop af
    rrca
    rst $38
    adc [hl]
    sub b
    db $eb
    ld [$e1f6], a
    ld a, [c]
    ld sp, hl
    sub l
    sbc l
    add hl, hl
    jp Jump_000_2f57


    sbc a
    rra
    jr nc, jr_04c_72b9

    ld e, [hl]
    cp b
    ld [hl], l
    ld a, [bc]
    ld [hl], h
    ld l, c
    db $db
    and a
    ld e, e
    cp l
    xor [hl]
    ld d, c
    xor $f7
    xor l
    xor l
    or l
    or l
    push de
    push de
    sub $d6
    or l
    or l
    xor l
    xor l
    xor e
    xor e
    ld l, e
    ld l, e
    ld [$e8f5], sp
    call z, $e3e1
    rst $20
    db $e3
    di
    pop af
    ldh a, [$7c]
    add hl, sp
    sub e
    rst $00
    rst $00
    sub e

jr_04c_72b9:
    add hl, sp
    ld a, h
    ld [hl], e
    daa
    add a
    rst $00
    rst $00
    add a
    rrca
    ld c, a
    ld d, h
    ld d, b
    ld l, b
    ld [hl], h
    ld e, e
    ld l, h
    ld a, a
    nop
    ld a, [bc]
    ld a, [bc]
    ld d, $2e
    sub $3a
    cp $00
    rst $38
    adc b
    cp e
    cp h
    cp $c3
    rst $20
    rst $38
    rst $38
    ld [$fcfb], sp
    ld a, $83
    rst $00
    rst $38
    rst $38
    add hl, bc
    ld sp, hl
    rst $38
    dec a
    add c
    rst $00
    rst $38
    and a
    xor a
    sbc e
    ld sp, hl
    cp c
    cp c
    or e
    or a
    rst $38
    sbc b
    or e
    cp b
    or $c3
    rst $20
    rst $38
    rst $38
    add sp, -$45
    call c, $8f5e
    db $d3
    db $e3
    rst $38
    dec l
    jp hl


    rst $30
    dec [hl]
    add c
    rst $00
    rst $38
    and a
    xor a
    ei
    add hl, de
    jp hl


    push de
    di
    or a
    dec b
    ld [$8083], a
    rst $08
    add b
    dec b
    ld d, a
    add a
    ld bc, $01fd
    rst $38
    nop
    rst $38
    nop
    inc b
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_04c_7a9d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
