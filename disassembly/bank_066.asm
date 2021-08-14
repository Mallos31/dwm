; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $066", ROMX[$4000], BANK[$66]

    ld b, b
    ldh [$e0], a
    or b
    ldh [$b3], a
    di
    sbc a
    cp a
    adc $96
    db $fd
    xor l
    ei
    ld a, e
    or $5b
    or $f4
    rst $28
    db $f4
    rst $28
    db $f4
    xor a
    ld a, h
    rst $18
    ccf
    ld h, a
    rra
    jr c, @+$09

    rra
    nop
    nop
    nop
    nop
    nop
    jp nz, $f7c2

    or a
    ld a, l
    rst $28
    db $fd
    rlca
    db $fd
    sbc a
    ld a, c
    cp l
    ld h, e
    ld a, c
    rst $00
    ld h, e
    rst $18
    dec h
    rst $38
    ld a, [de]
    rst $38
    db $e4
    cp $d8
    inc a
    ldh [$f8], a
    nop
    nop
    nop
    rrca
    rlca
    rrca
    rlca
    dec c
    dec b
    rst $28
    rst $20
    rst $38
    push hl
    cp [hl]
    xor e
    db $fc
    xor a
    rst $38
    or b
    rst $38
    xor a
    ldh a, [$a0]
    rst $38
    rst $38
    rst $38
    ldh [$bf], a
    ldh [$f0], a
    nop
    ldh a, [rP1]
    nop
    nop
    sbc a
    ld c, $ff
    cp $fb
    ld l, d
    sbc a
    cp $ff
    cp $57
    jp c, $da7f

    ld a, a
    sub $ff
    ld d, [hl]
    rst $38
    ld e, b
    cp $f8
    db $fc
    ld [hl], b
    ret c

    ld [hl], b
    ld hl, sp+$00
    ld hl, sp+$00
    ld bc, $0301
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rra
    dec e
    ccf
    ld a, $7f
    ld a, a
    rst $38
    ld b, a
    rst $38
    inc bc
    ld b, a
    ld bc, $0003
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    add b
    ret nz

    ret nz

    ldh [$c0], a
    ldh [$e0], a
    ld hl, sp-$08
    cp $7e
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    db $e4
    cp $38
    db $fc
    nop
    jr c, jr_066_40bf

jr_066_40bf:
    nop
    rlca
    rrca
    ld c, $19
    rla
    ccf
    rra
    ccf
    ld c, $1f
    rlca
    rrca
    dec bc
    rra
    rla
    ccf
    rra
    add hl, sp
    ld l, $79
    inc a
    ld a, a
    ccf
    ld [hl], a
    ccf
    ld a, a
    rla
    ccf
    inc c
    rra
    inc bc
    rrca
    ldh [$f0], a
    db $10
    ld hl, sp-$18
    db $fc
    ld hl, sp-$04
    or b
    ld a, b
    ldh [$f0], a
    ldh a, [$f8]
    ld hl, sp-$04
    ld hl, sp-$04
    db $fc
    cp $fc
    cp $fc
    cp $f4
    cp $c8
    db $fc
    jr nc, @-$06

    ret nz

    ldh a, [rSB]
    rrca
    rrca
    ld a, $3e
    ld [hl], e
    ld a, d
    rst $08
    ld l, d
    rst $38
    reti


    cp a
    or l
    rst $18
    sub h
    rst $38
    ld c, [hl]
    rst $38
    ld c, l
    di
    daa
    ld a, b
    ld de, $0e3e
    rra
    add hl, bc
    ld e, $06
    rrca
    ld bc, $8007
    ret nz

    ld b, b
    and $c6
    ld l, a
    ld c, e
    db $fd
    ld c, l
    ei
    ld l, l
    cp e
    add hl, sp
    rst $10
    ld sp, $72ef
    rst $08
    ld h, h
    sbc [hl]
    ld b, h
    cp [hl]
    ld [$18fc], sp
    db $fc
    inc [hl]
    adc $18
    db $fc
    ldh [$f8], a
    inc bc
    rrca
    ld c, $1d
    dec de
    scf
    ccf
    ld l, a
    ld l, $7f
    ld hl, $197f
    ccf
    rlca
    dec e
    ld b, $3f
    ccf
    ld a, d
    ld l, l
    db $db
    jp nz, $c0bd

    cp a
    ret nz

    cp a
    ld b, e
    rst $38
    inc a
    ld a, a
    ld hl, sp-$04
    inc a
    or $f8
    call z, $bcd8
    cp b
    db $ec
    xor b
    ld e, h
    ld hl, sp+$1c
    ld d, h
    cp [hl]
    ld [c], a
    rst $38
    add d
    ld a, a
    jp nz, Jump_000_043f

    cp $78
    db $fc
    add b
    ld hl, sp+$00
    add b
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    ld [bc], a
    rrca
    add hl, bc
    rra
    rra
    scf
    jr jr_066_41cd

    rra
    ccf
    inc bc
    ld e, $03
    ld b, $07
    inc c
    ld c, $39
    jr c, jr_066_4211

    ld h, e
    rst $18
    ld a, h
    rst $38
    nop
    ld a, h
    ret nz

    ldh [rNR41], a
    ldh a, [$d0]
    ld a, b

jr_066_41a6:
    ret nc

    db $fc

jr_066_41a8:
    and h
    ld a, [hl]
    cp [hl]
    ld a, e
    ld b, [hl]
    rst $38
    cp $ff
    sub b
    ld a, [hl]
    sub b
    ld a, b
    jr nz, jr_066_41a6

    jr nz, jr_066_41a8

    ld b, b
    ldh [$80], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    dec c
    dec c
    dec de
    rra
    jr nc, jr_066_41e2

    add hl, sp
    dec de

jr_066_41cd:
    dec a
    rra
    dec a
    rra
    dec a
    rra
    dec a
    rra
    dec a
    ld e, $3d
    dec c
    rra
    rlca
    rrca
    inc bc
    rlca
    nop
    inc bc
    nop
    ret nz

jr_066_41e2:
    ret nz

    ldh [$e0], a
    ldh a, [$d0]
    ld hl, sp-$58
    ld a, h
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    add sp, -$04
    ret nc

    ld hl, sp+$20
    ldh a, [$c0]
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    dec de
    inc a
    inc l
    ld [hl], e
    add hl, sp
    ld h, [hl]
    ld d, d
    db $ed
    ld h, b

jr_066_4211:
    rst $18
    ld h, e
    call c, $f946
    ld b, c
    cp $33
    ld l, h
    rra
    inc sp
    inc e
    scf
    ld [$001c], sp
    ld a, $3e
    rst $38

jr_066_4224:
    db $fd
    jp $1fe2


    ld e, $e3
    inc [hl]
    adc $88
    ld a, h
    ld [hl], b
    sbc b
    ld h, b
    or b
    jr nz, jr_066_4224

    ldh [$30], a
    ret nz

    ld h, b
    add b
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    add hl, sp
    add hl, sp
    ld l, a
    ld a, [hl]
    rst $38
    ld h, l
    sbc $7f
    db $fc
    ld e, a
    db $fd
    ld e, a
    db $fc
    ld e, a
    db $fc
    ld e, a
    db $fc
    ld e, a
    db $fd
    ld a, [hl]
    db $fd
    ld h, l
    rst $18
    ld a, [hl]
    rst $38
    jr z, @+$80

    db $10
    jr c, jr_066_4261

jr_066_4261:
    nop
    nop
    pop af
    pop af
    ei
    dec bc
    rst $38
    ld h, l
    sbc a
    push hl
    cp e
    rst $28
    add hl, sp
    rst $20
    sbc l
    rst $20
    cp l
    rst $28
    add hl, de
    and a
    ld a, l
    dec b
    ei
    ld a, [c]
    rst $38
    inc c
    cp $00
    inc c
    nop
    nop
    nop
    inc e
    inc e
    ld a, $3e
    ld h, e
    ld l, a
    db $dd
    add e
    rst $38
    db $e3
    rst $38
    rra
    rst $38
    dec b
    rra
    ld a, [bc]
    rra
    dec bc
    rra
    dec b
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    inc bc
    rlca
    ld bc, $0003
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld hl, sp-$08
    adc h
    db $ec
    db $76
    add d
    rst $38
    call nz, $38fe
    db $fc
    nop
    ld hl, sp-$20
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    ld hl, sp-$04
    add sp, -$04
    db $10
    ld hl, sp-$20
    ldh a, [$f8]
    db $fc
    or h
    rst $08
    or l
    rst $08
    sbc e
    cp $96
    db $fd
    ld l, a
    ei
    rra
    ld [hl], l
    scf
    ld l, [hl]
    add hl, sp
    ld l, l
    ld [hl], c
    reti


    ld d, d
    ei
    db $e4
    or a
    xor b
    db $fd
    or b
    ld hl, sp-$60
    ldh a, [$c0]
    ret nz

    rra
    ld a, a
    ld [hl], c
    rst $28
    sbc $bf
    ld h, h
    cp $88
    db $ec
    db $10
    sbc b
    jr nz, jr_066_431e

    ret nz

    ld hl, sp-$08
    ld a, h
    db $fc
    and [hl]
    cp $d3
    cp a
    jp hl


    sbc a
    rst $30
    ld c, h
    rst $38
    jr z, jr_066_437a

    jr jr_066_433c

    nop
    nop
    nop
    rlca
    rlca
    rra
    add hl, de
    ccf
    dec h
    ld a, a
    daa
    ld a, e
    ld b, e
    db $fc
    ld b, b
    rst $38
    ld c, h
    di
    inc l
    ld [hl], e
    jr nc, jr_066_4385

    jr jr_066_4357

    rra
    inc sp
    rrca
    inc e
    inc bc
    rrca

jr_066_431e:
    nop
    inc bc
    ld a, b
    db $fc
    db $fc
    cp [hl]
    xor $7f
    ld d, e
    rst $38
    ld l, a
    rst $38
    db $e4
    rst $18
    jp nz, $023f

    rst $38
    ld [bc], a
    rst $38
    inc b
    cp $0c
    or $18
    db $fc
    ld hl, sp-$34
    ldh a, [$38]

jr_066_433c:
    ret nz

    ldh a, [rP1]
    ret nz

    nop
    inc b
    inc b
    ld e, $12
    ccf
    rrca
    ccf
    dec hl
    ld a, a
    rra
    ccf
    dec d
    dec sp
    ccf
    ld [hl], l
    dec [hl]
    ld a, e
    ld l, $7f
    scf
    ld a, c
    rra

jr_066_4357:
    inc [hl]
    rla
    dec sp
    dec bc
    inc e
    rlca

jr_066_435d:
    rrca
    nop
    rlca
    nop
    jr nz, @+$22

    ld a, b
    ld c, b
    db $fc
    ldh a, [$fc]
    call nc, $f8fe
    db $fc
    xor b
    call c, $aefc
    xor h
    sbc $74
    cp $ec
    sbc [hl]
    ld hl, sp+$2c
    add sp, -$24

jr_066_437a:
    ret nc

    jr c, jr_066_435d

    ldh a, [rP1]
    ldh [rSB], a
    inc bc
    ld bc, $0103

jr_066_4385:
    inc bc
    nop
    ld bc, $0701
    rlca
    ld a, [hl]
    ld a, [hl]
    ld sp, hl
    db $fc
    add e
    ld b, c
    rst $38
    ccf
    ld a, [hl]
    ld c, $39
    db $10
    ccf
    dec c
    rra
    inc bc
    rrca
    nop
    inc bc
    nop
    nop
    db $fc
    cp $84
    ld a, [hl]
    call c, $c8fe
    cp h
    add h
    ld a, [hl]
    ld e, h
    or $5a
    rst $30
    jp c, $b2b7

    ld l, a
    ld [hl-], a
    rst $28

jr_066_43b4:
    ld h, h
    sbc $c4
    cp [hl]
    adc b
    ld a, h
    jr nc, jr_066_43b4

    ret nz

    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    ld e, $1e
    add hl, sp
    dec sp
    ld h, a
    ld h, e
    rst $18
    ld e, b
    rst $38
    db $dd
    cp d
    add c
    cp $42
    rst $38
    ccf
    ld a, a
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    cp $c2
    rst $38
    sbc d
    ld [hl], a
    ld h, d
    rst $18
    inc b
    cp $88
    ld a, h
    ld [$90fc], sp
    ld a, b
    and b
    ld [hl], b
    and b
    ld [hl], b
    ld h, b
    ldh a, [$e0]
    ldh a, [rP1]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    inc c
    rrca
    jr jr_066_4428

    ld [hl-], a
    dec sp
    dec h
    ld a, $63
    ld l, h
    sub $44
    rst $38
    add e
    rst $38
    pop bc
    cp [hl]
    ret nz

    cp a
    ld h, c
    sbc $3b
    ld h, a

jr_066_441e:
    inc e
    ccf
    jr c, jr_066_441e

    call c, $86e6
    ld a, e
    inc bc
    db $fd

jr_066_4428:
    add e
    ld a, l
    pop bc
    rst $38
    ld [hl+], a
    rst $38
    ld [hl], $6b
    ld a, h
    add $dc
    and [hl]
    cp b
    ld c, h
    ldh a, [rNR23]
    ldh [$30], a
    ret nz

    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    inc c
    ld [$0418], sp
    rrca
    inc bc
    rra
    rra
    ccf
    ccf
    ld l, e
    ld a, h
    rst $10
    ei
    xor h
    ei
    xor h
    db $fc
    xor a
    xor a
    rst $38
    ld d, a
    rst $38
    dec hl
    ld a, a
    rra
    ccf
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    jr nc, @+$22

    jr nc, jr_066_4479

    jr @+$12

    sbc b
    adc b
    call z, $e6c4
    ld [c], a
    di
    ld h, d
    rst $30
    ld h, l
    rst $38
    push hl
    rst $38
    ld [c], a

jr_066_4479:
    rst $30
    ldh [$f0], a
    ret nz

    ldh [$80], a
    ret nz

    nop
    nop
    nop
    ld e, $1e
    ccf
    ld hl, $5e7f
    rst $38
    or e
    rst $38
    xor l
    di
    sbc [hl]
    rst $38
    add b
    rst $38
    call z, Call_066_5eb3
    pop hl
    ld a, a
    ret nz

    ccf
    ld h, b
    rra
    ccf
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld a, [hl]
    ld a, [hl]
    rst $28
    cp $ff
    ld e, [hl]
    rst $38
    ld c, b
    cp $48
    db $fc
    ld d, b
    ld hl, sp+$50
    ld hl, sp-$70
    ld hl, sp-$60
    ld [hl], b
    ret nz

    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], a
    ld a, a
    ld c, $7b
    ld a, [de]
    ccf
    ld a, $67
    inc [hl]
    ld l, [hl]
    ld e, $3b
    dec sp
    ld [hl], a
    ld h, c
    rst $18
    ld a, c
    rst $38
    inc a
    ld [hl], a
    inc a
    ld [hl], a
    ccf
    ld a, a
    jr jr_066_451d

    nop
    jr jr_066_44e1

jr_066_44e1:
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    call nz, $943e
    ld a, [hl]
    cp h
    xor $3c
    xor $f8
    db $fc
    ld [hl], b
    ld hl, sp+$00
    ld [hl], b
    inc e
    ld a, $3a
    ld h, a
    ld h, c
    rst $18
    ld l, h
    rst $18
    sbc $b3
    ld d, d
    rst $28
    dec h
    ld a, a
    dec e
    dec sp
    inc c
    dec de
    ld b, $0d
    ld [bc], a
    rlca
    ld bc, $0003
    ld bc, $0000
    nop

jr_066_451d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    nop
    add b
    nop
    add b
    add b
    ret nz

    add b
    ldh [$60], a
    ld hl, sp+$58
    cp h
    call nc, Call_000_3aee
    rst $38
    dec b
    ccf
    ld [bc], a
    rlca
    inc bc
    rrca
    inc c
    rra
    inc de
    ccf
    cpl
    ld a, a
    daa
    ld a, a
    ld de, $1b3f
    ccf
    inc sp
    ld a, l
    ld h, e
    sbc $c3
    cp l
    adc l
    di
    adc a
    di
    add e
    rst $38
    add h
    rst $38
    ld c, b
    db $fc
    jr nc, jr_066_45d8

    ret nz

    ldh a, [$30]
    ld hl, sp-$38
    db $fc
    db $f4
    cp $e4
    cp $88
    db $fc
    ret c

    db $fc
    call z, $c6be
    ld a, e
    jp $b1bd


    rst $08
    pop af
    rst $08
    pop bc
    rst $38
    ld hl, $12ff
    ccf
    inc c
    ld e, $00
    nop
    nop
    ld bc, $0701
    rlca
    rrca
    add hl, bc
    rra
    ld d, $39
    ld d, $39
    add hl, sp
    ld a, a
    ccf
    ld a, a
    rla
    ccf
    rra
    ccf
    rrca
    rra
    rlca
    rrca
    ld bc, $0007
    ld bc, $0000
    nop
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    ld hl, sp-$04
    db $fc
    cp $fc
    cp $e8
    db $fc
    ret c

    db $fc
    jr nc, @-$06

    ldh [$f0], a
    add b
    ldh [rP1], a
    add b
    nop
    nop
    ld bc, $0707
    ld c, $0f
    rra
    ld e, $39
    jr c, @+$69

    jr c, jr_066_4633

    ld [hl-], a
    ld l, a
    inc sp
    ld l, l
    ld hl, $107e
    ccf

jr_066_45d4:
    inc d
    ccf

jr_066_45d6:
    dec c
    dec de

jr_066_45d8:
    rrca
    rra
    rlca
    inc c
    inc bc
    rlca
    nop
    inc bc
    ret nz

    ldh a, [$b0]
    ld a, b
    ld hl, sp-$34
    jr c, jr_066_45d4

jr_066_45e8:
    jr c, jr_066_45d6

    jr z, jr_066_45e8

    ld [hl], b
    ret c

    ld d, b
    ld hl, sp-$20
    or b
    ldh [$b0], a
    and b
    ldh a, [$c0]
    ld h, b
    ret nz

    ld h, b
    ld b, b
    ldh [$80], a
    ret nz

    nop
    add b
    nop
    ld h, c
    ld h, c
    di
    db $d3
    cp [hl]
    sub d
    rst $38
    ld h, c
    rst $30
    ld [hl], a
    sbc $6f
    sbc $5e
    db $ed
    ld e, a
    db $e4
    cpl
    ld [hl], c
    daa
    ld a, d
    cpl
    ld [hl], e
    inc de
    dec a
    dec a
    ld h, d
    ld a, [hl+]
    ld a, a
    ccf
    ld a, a
    nop
    add [hl]
    add [hl]
    rst $08
    ld c, l
    ei
    ld c, c
    rst $38
    add [hl]
    rst $28
    xor $7b
    or $7b
    ld a, [hl]
    or e
    ld a, [$f427]

jr_066_4633:
    adc [hl]
    db $e4
    sbc $f4
    adc $c8
    cp h
    cp h
    ld b, [hl]
    ld d, h
    cp $fc
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    ld b, $0f
    dec bc
    inc e
    ld d, $39
    inc l
    ld [hl], e
    jr z, jr_066_46cd

    jr nz, jr_066_46d7

    ld de, $0e3f
    rra
    nop
    ld c, $00
    nop
    nop

jr_066_4661:
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld hl, sp-$38
    db $fc
    sbc h
    cp $3c
    cp $7c
    cp $f8
    db $fc
    ld [hl], b
    ld hl, sp+$60
    ldh a, [rLCDC]
    ldh [$80], a
    ret nz

    nop

jr_066_4679:
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
    inc bc
    inc bc
    rrca
    rrca
    inc e
    dec e
    inc sp
    rra
    scf
    dec [hl]
    ld l, [hl]
    ccf
    ld l, h
    dec a
    ld l, [hl]
    scf
    ld l, a
    rra
    ld [hl], $1b
    scf
    inc c
    rra
    inc bc
    rrca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    jr c, jr_066_4661

    call z, $ecf8
    ld l, h
    or $f4
    ld a, [hl]
    ld [hl], h
    cp $f4
    cp $e8
    db $fc
    ret z

    db $fc
    jr nc, @-$06

    ret nz

    ldh a, [rP1]
    ret nz

    nop
    nop
    ld bc, $0203
    rlca
    dec b
    ld c, $0b
    inc e
    add hl, bc
    ld e, $11
    ld a, $11

jr_066_46cd:
    ld a, $21
    ld a, [hl]
    inc hl
    ld a, h
    ld a, $61
    ld l, $71
    inc de

jr_066_46d7:
    inc a
    ld de, $0c3e
    rra
    inc bc
    rrca
    nop
    inc bc
    add b
    ret nz

    ld b, b
    ldh [$a0], a
    ld [hl], b
    ret nc

    jr c, jr_066_4679

    ld a, b
    ld [$18fc], sp
    db $ec
    sub h
    ld l, [hl]
    db $fc
    ld b, $64
    sbc [hl]

jr_066_46f4:
    ld b, h
    cp [hl]
    ret z

    inc a
    ret z

    inc a
    jr nc, jr_066_46f4

    ret nz

    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    rlca
    rrca
    rrca
    ld e, c
    ld d, a
    ld hl, sp+$7d
    cp $7f
    cp $3d
    ld a, a
    ld e, $3f
    nop
    ld e, $00
    ld b, $06
    rrca
    dec c
    dec de
    dec e
    inc sp
    ld a, [hl-]
    ld h, a
    ld [hl], h
    adc $e8
    db $fc
    ldh a, [$38]
    and b
    ldh a, [$c0]
    ldh [$80], a
    ret nz

    add b
    ret nz

    add b
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    inc bc
    rlca
    rlca
    ld c, $08
    rra
    inc de
    ccf
    dec d
    ld a, $2e
    ld a, a
    scf
    ld a, e
    ld a, a
    sub $ce
    or a
    sbc l
    rst $38
    sub [hl]
    rst $28
    add a
    ld hl, sp+$4a
    rst $38
    ld [hl+], a
    ld a, a
    jr jr_066_479d

    rlca
    rra
    add b
    ldh [$e0], a
    ld [hl], b
    db $10
    ld hl, sp-$38
    db $fc
    xor b
    ld a, h
    ld [hl], h
    cp $ec
    sbc $fe
    ld l, e
    ld [hl], e
    db $ed
    cp c
    rst $38
    ld l, c
    rst $30
    pop hl
    rra
    ld d, d
    rst $38
    ld b, h
    cp $18
    db $fc
    ldh [$f8], a
    inc b
    ld c, $06
    rrca
    ld c, $1f
    rrca
    dec a
    rrca
    ccf
    dec e
    ccf
    add hl, sp
    ld a, a
    dec a
    ld a, d
    dec de
    inc a
    rra
    inc a
    rlca
    rra
    nop
    rlca
    nop
    nop
    nop
    nop
    nop

jr_066_479d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    add b
    ret nz

    ret nz

    ldh [rLCDC], a
    ldh [$c0], a
    ldh [$e0], a
    or b
    ldh a, [rNR23]
    ret c

    xor h
    ld d, h
    cp $2c
    ld a, [hl]
    jr @+$3e

    nop
    jr jr_066_47c1

jr_066_47c1:
    ld bc, $0301
    ld [bc], a
    rlca
    inc bc
    ld b, $05
    ld a, [hl]
    ld a, a
    db $fd
    ld e, [hl]
    db $e3
    dec h
    ld a, [hl]
    ld d, $3f
    rrca
    dec de
    add hl, de
    scf
    inc de
    ccf
    ld l, $7f
    jr c, jr_066_485a

    jr nc, jr_066_4856

    nop
    jr nc, jr_066_47e1

jr_066_47e1:
    add b
    add b
    ret nz

    ld b, b
    ldh [$c0], a
    ld h, b
    and b
    ld a, [hl]
    cp $bf
    ld a, [$64c7]
    cp $e8
    db $fc
    ldh a, [$d8]
    sbc b
    db $ec
    ret z

    db $fc
    ld [hl], h
    cp $1c
    ld a, [hl]
    inc c
    ld e, $00
    inc c
    nop
    inc bc
    inc bc
    rlca
    rlca
    inc c
    rlca
    rrca
    add hl, bc
    ccf
    ld [hl], $79
    db $76
    reti


    ld a, c

jr_066_480f:
    rst $18
    ld a, a
    rst $08
    ld e, a
    rst $20
    ccf
    ld h, b
    cpl
    ld [hl], b
    inc de
    inc a
    inc c
    rra
    inc bc
    rrca
    nop
    inc bc
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    jr c, jr_066_480f

    inc e
    db $f4
    adc [hl]
    db $fc
    add $fa
    rst $00
    ld a, [$fac7]
    add a
    ld a, [c]
    rrca

jr_066_4834:
    db $f4
    ld c, $e4
    ld e, $88
    ld a, h
    jr nc, jr_066_4834

    ret nz

    ldh a, [rP1]
    ret nz

    nop
    inc bc
    inc bc
    rrca
    rrca
    inc e
    inc e
    inc sp
    dec sp
    ld l, a
    inc [hl]
    ld l, a
    ld c, e
    db $fc
    ld a, e
    db $fc
    ld a, h
    rst $08
    ld e, a
    rst $28
    scf
    ld l, a

jr_066_4856:
    cpl
    ld a, e
    inc de
    dec a

jr_066_485a:
    dec c
    rra
    inc bc
    rrca
    nop
    inc bc
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    cp b
    cp b
    call z, $f6dc
    db $ec
    or $76
    ei
    ld [hl], d
    rst $38
    cp $ff
    ld a, [$fcf7]
    and $f4
    sbc $c8
    inc a
    jr nc, @-$06

    ret nz

    ldh a, [rP1]
    ret nz

    inc bc
    rrca
    dec c
    rra
    ld a, [de]
    scf
    inc [hl]
    ld l, [hl]
    ld e, b
    db $ec
    ld a, b
    call z, $cc78
    ld a, h
    rst $00
    ld e, e
    rst $20
    dec sp
    ld h, h
    cpl
    ld [hl], b
    rra
    jr nc, jr_066_48a4

    inc e
    ld b, $0f
    ld bc, $0007
    ld bc, $8000
    nop
    add b

jr_066_48a4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    db $fc
    db $f4
    sbc [hl]
    ld [$663f], a
    cp a
    and d
    ld a, a
    ld [$143f], a
    cp $f8
    db $fc
    nop
    ld hl, sp+$00
    inc bc
    inc bc
    rlca
    inc b
    rrca
    dec bc
    inc e
    dec de
    inc a
    inc a
    ld l, a
    cpl
    ld [hl], a
    rla
    dec sp
    dec bc
    dec e
    rra
    dec [hl]
    dec d
    dec sp
    rrca
    rra
    rrca
    add hl, de
    rlca
    inc c
    inc bc
    rlca
    nop
    inc bc
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [rSVBK]
    ld hl, sp+$78
    db $fc
    cp h
    or $f4
    xor $e8
    call c, $b8d0
    ld hl, sp-$54
    xor b
    call c, Call_066_7870
    ldh [$f0], a
    ld h, b
    ldh a, [$c0]
    ldh [rP1], a
    ret nz

    ld b, $ff
    ld a, a
    db $fd
    db $76
    rst $08
    ld l, l
    rst $18
    ld [hl], a
    db $dd
    ld [$e5ff], a
    cp a
    ld e, e
    rst $38
    daa
    ld a, a
    jr jr_066_4953

    nop
    jr jr_066_4917

jr_066_4917:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [rLCDC], a
    ldh [$80], a
    ret nz

    add b
    ret nz

    add b
    ret nz

    ld b, b
    ldh [$a0], a
    ldh a, [$50]
    ld hl, sp+$28
    ld a, h
    inc d
    ld a, $0a
    rra
    dec b
    rrca
    inc bc
    rlca
    ld bc, $0303
    ld d, $11
    dec sp
    add hl, sp
    ld l, a
    cpl
    db $76
    ld d, $39
    cpl
    ld a, l
    ld a, b
    rst $18
    ld c, e
    rst $38
    add hl, sp

jr_066_4953:
    ld a, a
    ld c, $3d
    inc bc
    ld c, $07
    ld e, $1d
    ld a, [hl-]
    jr nc, jr_066_49cd

    rra
    ccf
    ld [$9c9c], sp
    or $de
    ld [hl], a
    ld d, a
    ld sp, hl
    db $76
    rst $28
    add sp, -$22
    ret c

    inc a
    ld hl, sp-$14
    xor b
    db $fc
    ld a, b
    db $fc
    sub b
    ld hl, sp+$20
    ldh a, [$e0]
    ld a, b
    jr @-$02

    or h
    ld c, [hl]
    ld hl, sp-$04
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld b, $06
    dec c
    inc c
    dec de
    inc b
    rrca
    ld [bc], a
    rlca
    ld bc, $0303
    ld b, $06
    dec c
    rrca
    dec de
    rra
    ccf
    rra
    ccf
    inc e
    ccf
    nop
    ld h, b
    ld h, b
    ldh a, [$f0]
    sbc b
    adc b
    ld a, h
    inc b
    cp $1c
    cp $7c
    cp $7c
    cp $30
    db $fc
    sub b
    ld a, b
    jr nc, @-$06

    ldh a, [$f8]
    ldh a, [$f8]
    ret nz

    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    nop
    dec c
    nop
    ld [de], a
    nop
    ld [bc], a
    rrca
    rra
    rra
    inc sp
    ccf

jr_066_49cd:
    ld l, a
    ld a, a
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push de
    xor d
    ld a, a
    rst $38
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    add e
    inc bc
    ld e, a
    rra
    dec a
    cp a
    xor a
    rst $18
    rst $38
    rst $28
    rst $38
    cp $ff
    db $fc
    cp [hl]
    db $fc
    cp $f4
    cp $d8
    cp h
    db $fc
    ld c, [hl]
    cp b
    db $fc
    nop
    cp b
    nop
    nop
    rlca
    rrca
    rrca
    jr jr_066_4a20

    scf
    dec [hl]
    ld l, a
    dec sp

jr_066_4a09:
    ld l, l
    cpl
    ld a, c
    cpl
    ld a, c
    dec hl
    ld a, h
    dec h
    ld a, [hl]
    inc de
    ccf
    ld [$0b1f], sp
    dec e
    dec bc
    inc e
    dec bc
    inc e
    inc b
    rrca
    inc bc
    rlca

jr_066_4a20:
    ldh [$f0], a
    sub b
    ld a, b
    ret z

    db $fc
    and h
    ld a, [hl]
    call nc, $f43e
    sbc [hl]
    db $f4
    sbc [hl]
    call nc, $b43e
    ld l, [hl]
    add sp, -$24
    db $10
    ld hl, sp-$30
    jr c, jr_066_4a09

    ld hl, sp-$30
    ld hl, sp+$20
    ldh a, [$c0]
    ldh [rP1], a
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld e, $1d
    ld a, $3c
    ld a, a
    ld a, a
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    and e
    rst $38

jr_066_4a54:
    add b
    rst $38
    add b
    rst $38
    and b
    rst $38
    cp $ff
    ld bc, $00ff
    ld bc, $f000
    ldh a, [rIE]
    rst $38
    rst $38
    adc a
    ld a, a
    adc [hl]
    ld a, a
    ld a, $fd

jr_066_4a6c:
    db $fc
    ei
    ld a, [$f5f5]
    db $eb
    ld [$54d7], a
    xor [hl]
    jr z, jr_066_4a54

    ld d, b
    cp b
    jr nz, jr_066_4a6c

    ret nz

    ldh [rP1], a
    ret nz

    ld bc, $0607
    rrca
    dec bc
    inc e
    dec bc
    inc e
    ld c, $1f
    rrca
    add hl, de
    ld c, $1b
    rrca
    dec de
    dec b
    rrca
    ld [bc], a
    rlca

jr_066_4a94:
    ld bc, $0103
    inc bc
    inc bc
    rlca

jr_066_4a9a:
    ld b, $0d
    inc bc

jr_066_4a9d:
    rlca
    nop
    inc bc
    ret nz

    ldh a, [$b0]
    ld a, b
    add sp, $1c
    add sp, $1c
    cp b
    ld a, h
    ld hl, sp-$34
    jr c, jr_066_4a9a

    ld hl, sp-$14
    ret nc

    ld hl, sp+$20
    ldh a, [$c0]
    ld h, b
    ret nz

    ld h, b
    ldh [rSVBK], a
    jr nc, jr_066_4a94

    ldh [$f0], a
    nop
    ldh [$60], a
    ld hl, sp-$28
    cp h
    sbc h
    or $74
    rst $28
    ld b, e
    rst $38
    inc sp
    ld a, h
    add hl, bc
    ld a, $08
    rra
    add hl, bc
    rra
    rrca
    ld e, $04
    rrca
    ld [bc], a
    rlca
    ld bc, $0003
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
    ret nz

    ret nz

    ldh [$e0], a
    jr nc, jr_066_4a9d

    ld e, b
    adc b
    db $fc
    call nz, $e27e
    ccf
    di
    dec e
    ld a, c
    adc a
    add hl, sp
    rst $08
    sub d
    rst $38
    ld h, h
    cp $38
    ld a, h
    rlca
    rrca
    dec c
    ld e, $12
    dec a
    dec l
    ld a, [hl]
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld a, a
    db $dd
    ld c, e
    rst $38
    ld l, d
    rst $30
    ld [hl], a
    ld hl, sp-$06
    rst $38
    xor a
    rst $38
    ld e, a
    ld a, [$bdfa]
    db $ec
    rst $38
    rra
    rst $38
    ldh [$f0], a
    or b
    ld a, b
    ld c, b
    cp h
    or h
    ld a, [hl]
    ld a, d
    rst $38
    ld a, d
    rst $38
    cp $bb
    jp nc, Jump_066_56ff

    rst $28
    xor $1f
    ld e, a
    rst $38
    push af
    rst $38
    ld a, [$5f5f]
    cp l
    scf
    rst $38
    ld hl, sp-$01
    nop
    rra
    rra
    ccf
    ccf
    ld h, b
    jr nc, jr_066_4bb7

    inc [hl]
    ld l, e
    jr nc, jr_066_4bbb

    jr nc, jr_066_4bbd

    scf
    ld l, a
    ccf
    ld [hl], b
    jr jr_066_4b93

    ccf
    ld h, c
    rra
    ccf
    ccf
    ld h, b
    ld h, $79
    ccf
    ld h, b
    ccf
    ld a, a
    nop
    ldh [$e0], a
    ldh a, [$d0]
    jr c, jr_066_4baf

    cp h
    ld c, b
    cp h
    ret z

    cp h
    ret z

    cp h
    ret z

    cp h
    sub b
    ld a, b
    ld hl, sp-$04
    adc h
    ld a, [hl]
    ld hl, sp-$04
    add h
    ld a, [hl]
    inc e
    cp $b2
    ld l, a
    cp $ff
    nop
    inc bc
    inc bc
    rrca
    dec bc
    ld e, $1f
    ld [hl], $2f
    ld [hl], e
    dec d
    ld a, [hl]
    ld a, e
    db $fd
    ld a, [hl]
    jp z, $fa4e

    ld a, e

jr_066_4b93:
    db $fd
    dec e
    db $76
    cpl
    ld [hl], e
    rla
    ld a, $0a
    rra
    inc bc
    rrca
    nop
    inc bc
    nop
    ret nz

    ret nz

    ldh a, [$d0]
    ld a, b
    ld hl, sp+$6c
    db $f4
    adc $a8
    ld a, [hl]
    sbc $bf
    ld a, d

jr_066_4baf:
    ld d, a
    ld [hl], d
    ld e, a
    sbc $bf
    cp b
    ld l, [hl]
    db $f4

jr_066_4bb7:
    adc $e8
    ld a, h
    ld d, b

jr_066_4bbb:
    ld hl, sp-$40

jr_066_4bbd:
    ldh a, [rP1]
    ret nz

    ccf
    ld a, a
    ld [hl], $79
    rra
    ccf
    rra
    jr c, jr_066_4be8

    jr c, @+$1e

    dec sp
    ld d, $3d
    ld a, [de]
    scf
    dec de
    ld [hl], $16
    dec a

jr_066_4bd4:
    rra
    jr c, @+$1e

    dec sp
    inc e
    dec sp
    rra
    ccf
    ld [hl], $79
    ccf
    ld a, a
    db $fc
    cp $ec
    cp $f8
    db $fc
    ld hl, sp+$1c

jr_066_4be8:
    ld hl, sp+$1c
    jr c, @-$22

    ld l, b
    cp h
    ret c

    ld l, h
    ld e, b
    db $ec
    add sp, $3c
    ld a, b
    sbc h
    jr c, jr_066_4bd4

    jr c, @-$22

    ld hl, sp-$04
    db $ec
    cp $fc
    cp $00
    inc bc
    inc bc
    rrca
    dec c
    ld e, $17
    jr c, jr_066_4c34

    ld [hl], l
    ccf
    ld h, e
    ld h, l
    rst $18
    ld a, [hl]
    bit 2, [hl]
    rst $28
    ld h, l
    cp $5e
    rst $38
    ld a, a
    srl a
    ld l, l
    dec de
    ccf
    nop
    dec de
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$b0]
    ld a, b
    ret z

    inc a
    or h
    adc $ec
    ld d, [hl]
    jp c, $bef7

    di
    ld [$a6f7], a
    ld a, a

jr_066_4c34:
    ld a, d
    rst $38
    cp $d3
    db $fc
    or [hl]
    ret c

    db $fc
    nop
    ret c

    nop
    nop
    nop
    rra
    rra
    ccf
    ccf
    ld h, b
    ccf
    ld l, a
    cpl
    ld a, b
    dec l
    ld a, d
    cpl
    ld a, b
    jr z, jr_066_4ccf

    cpl
    ld a, a
    jr nz, jr_066_4cd3

    jr z, jr_066_4cd5

    dec a
    ld a, a
    jr z, jr_066_4cd9

    dec h
    ld a, a
    jr nz, jr_066_4ccd

    rra
    ccf
    nop
    ld hl, sp-$08
    db $fc
    db $fc
    ld e, $dc
    cp $dc
    ld a, [hl]
    call c, Call_066_5c7e
    cp $7c
    sbc $fc
    sbc $dc
    ld a, $5c
    cp $1c
    cp $1c
    cp $38
    db $fc
    ldh a, [$f8]
    ldh [$f0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_066_4ccd:
    nop
    nop

jr_066_4ccf:
    nop
    nop
    nop
    nop

jr_066_4cd3:
    nop
    nop

jr_066_4cd5:
    nop
    nop
    nop
    nop

jr_066_4cd9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_066_5500:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_066_56ff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_066_57d5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_066_57e1:
    nop
    nop
    nop
    nop
    nop
    nop

jr_066_57e7:
    nop
    nop
    nop
    nop

jr_066_57eb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_066_57f5:
    nop
    nop
    nop
    nop
    nop
    nop

jr_066_57fb:
    nop
    nop

jr_066_57fd:
    nop
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    inc b
    nop
    ret nc

    rst $10
    jr z, jr_066_57d5

    jr c, jr_066_57e7

    jr z, jr_066_57fd

    inc d
    jp $d73c


    jr z, jr_066_57fb

    inc e
    db $e3
    inc e
    rst $20
    jr jr_066_57e1

    inc a
    swap h
    db $e3
    inc e
    rst $10
    jr z, jr_066_57f5

    jr nc, jr_066_57eb

    inc a
    db $eb
    inc d
    cp d
    ld a, l
    ld a, l
    rst $00
    rst $38
    sub d
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    sub d
    ld a, l
    rst $00

jr_066_5839:
    cp d

jr_066_583a:
    ld a, l
    rst $28
    rst $38
    rst $38
    jr @+$01

    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    jr jr_066_5839

    rst $38
    rst $38
    rst $30
    rst $38
    ld c, l
    rst $38
    push bc
    rst $38
    push bc
    rst $38
    ret


    rst $38
    ret


    rst $38
    ld c, l
    rst $38
    ei
    inc bc
    nop
    adc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    nop
    sbc h
    ret nz

    ret nz

    ldh a, [$30]
    jr c, jr_066_583a

    adc h
    ld [hl], h
    ld c, h
    db $f4
    ld b, [hl]
    ld a, [$fa46]
    ld b, d
    cp $42
    cp $44
    db $fc
    add h
    db $fc
    ld [$30f8], sp
    ldh a, [$c0]
    ret nz

    inc b
    nop
    sbc h
    jr jr_066_58a5

    inc a
    inc h
    ld h, d
    ld e, [hl]

jr_066_5891:
    ld l, d
    ld d, [hl]
    push de
    xor a
    push de
    xor a
    push de
    xor a
    sub l
    rst $28
    sub l
    rst $28
    sub l
    rst $28
    ld c, d
    ld a, [hl]
    ld b, d
    ld a, [hl]
    inc h
    inc a

jr_066_58a5:
    jr jr_066_58bf

    inc b
    nop
    inc bc
    inc a
    sub [hl]
    inc h
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc h
    inc a
    inc h
    inc a
    inc h
    inc a
    inc h
    inc a

jr_066_58bf:
    inc h
    inc a
    inc h
    inc bc
    inc a
    rst $38
    nop
    nop
    rst $38
    jr c, jr_066_5891

    ld a, h
    add e
    cp $fe
    sub e
    cp $93

jr_066_58d1:
    cp $93
    cp $93
    cp $93
    cp $93
    cp $93
    cp $93
    cp $93
    add d
    rst $38
    call nz, $f97f
    ld a, $e3
    inc e
    rst $38
    inc a
    push bc
    ld a, [hl]
    push bc
    ld a, [hl]
    db $fd
    ld b, [hl]
    db $fd
    ld h, [hl]

jr_066_58f1:
    db $fd
    ld h, $fd
    ld h, $fd
    ld h, $fd
    ld h, $fd
    ld h, $fd
    ld h, $ff
    ld h, [hl]
    jp nz, $c27f

    ld a, a
    cp $7f
    ret nz

    ccf
    rst $38
    jr c, jr_066_58d1

    ld a, h
    add e
    cp $fe
    sub e
    cp $93
    cp $93
    cp $f3
    sbc h
    ld [hl], a
    db $fd
    ld h, $f9
    ld c, [hl]
    di
    ld e, h
    rst $38
    sbc [hl]
    add d
    rst $38
    add d
    rst $38
    cp $ff
    add b
    ld a, a
    rst $38
    jr c, jr_066_58f1

    ld a, h
    add e
    cp $fe
    sub e
    cp $93
    cp $f3
    db $fc
    ld b, a
    db $fd
    ld b, [hl]
    rst $38
    ld a, [c]
    cp $93
    cp $93
    cp $93
    add d
    rst $38
    call nz, $f97f
    rst $38
    ld a, $e3
    inc e
    rst $38
    db $fc
    sub l
    cp $95
    cp $fd
    sub [hl]
    db $fd
    sub [hl]

jr_066_5952:
    db $fd
    sub [hl]
    db $fd
    sub [hl]
    db $fd
    sub [hl]
    rst $38
    sub [hl]
    cp $83
    cp $83
    cp $f7
    sub h
    ld a, a
    push af
    ld e, $fd
    ld e, $f1
    ld c, $ff
    cp $82
    rst $38
    add d
    rst $38
    cp $9f
    ldh a, [$9f]
    rst $38
    sbc b
    rst $38
    add h
    rst $38
    add d
    cp $f3
    cp $93
    cp $93
    cp $93
    add d
    rst $38
    call nz, $f97f
    ld a, $e3
    inc e
    rst $38
    jr c, jr_066_5952

    ld a, h
    add e
    cp $fe
    sub e
    cp $93
    cp $9f
    db $fc
    add a
    rst $38
    add d
    cp $93
    cp $93
    cp $93
    cp $93
    add d
    rst $38
    call nz, $f97f
    ld a, $e3
    inc e
    rst $38
    cp $82
    rst $38
    add d
    rst $38
    cp $f3
    sbc [hl]
    ld [hl], e
    cp $23
    db $fc
    daa
    db $fd
    ld h, $fd
    ld b, [hl]
    ld sp, hl
    ld c, [hl]
    ei
    ld c, h
    ei
    ld c, h
    bit 7, h
    bit 7, h
    call nz, Call_066_7cfb
    jp $ff3c


    jr c, @-$37

    ld a, h
    add e
    cp $fe
    sub e
    cp $93
    cp $93
    db $fc
    ld b, a
    db $fd
    ld b, [hl]
    rst $38
    sub d
    cp $93
    cp $93
    cp $93
    add d
    rst $38
    call nz, $f97f
    ld a, $e3
    inc e
    rst $38
    jr c, @-$37

    ld a, h
    add e
    cp $fe
    sub e
    cp $93
    cp $93
    cp $83
    cp $43
    cp $f3
    cp $93
    cp $93
    cp $93
    add d
    rst $38
    call nz, $f97f
    ld a, $e3
    inc e
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    inc hl
    nop
    cp [hl]
    rrca
    rrca
    dec de
    rla
    add hl, sp
    ld h, $1d
    ld [de], a
    rrca
    inc c
    dec de
    rra
    inc a
    cpl
    ld a, e
    ld e, a
    db $eb
    cp [hl]
    db $eb
    cp [hl]
    ei
    sbc [hl]
    db $fd
    add a
    ld a, a
    ld b, d

jr_066_5a2c:
    ccf
    jr nc, @+$11

    rrca
    nop
    nop
    ld h, b
    ld h, b
    ld hl, sp-$48
    or h
    ld a, h
    adc b
    ld a, b
    jr nc, jr_066_5a2c

    ret c

    ld hl, sp+$2c
    db $f4
    add $fa
    db $e3
    dec e
    db $e3
    dec e
    db $e3
    dec e
    jp $0e3d


    ld a, [c]
    db $fc
    inc c
    ldh a, [$f0]
    inc e
    nop
    sbc $76
    db $76
    rst $18
    cp e
    rst $18
    cp e
    add hl, sp
    ld h, $1d
    ld [de], a
    ld c, $0d
    dec de
    rra
    inc e
    rra
    ccf
    cpl
    dec sp
    ld a, $6b
    ld a, [hl]
    ld l, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, l
    ld b, a
    ld a, l
    ld b, a
    ld a, $23
    rra
    db $10
    rrca
    rrca
    nop
    nop
    ld [hl], b
    ldh a, [rNR10]
    ldh a, [$60]
    ldh [$a0], a
    ldh [$50], a
    ldh a, [$d0]
    ldh a, [$98]
    ld l, b
    call z, $cc34
    inc [hl]
    call z, $8c34
    ld [hl], h
    adc h
    ld [hl], h
    jr @-$16

    ldh a, [rNR10]
    ldh [$e0], a
    nop
    nop
    rrca
    rrca
    ld e, h
    ld d, e
    cp [hl]
    ld sp, hl
    ld c, a
    ld a, [hl]
    add hl, sp
    ccf
    ld [hl], a
    ld e, a
    rst $28
    cp c
    rst $28
    cp b
    rst $38
    sub b
    ld a, a
    ld b, b
    ccf
    jr c, jr_066_5ab7

    rlca
    ld [$9800], sp
    db $db
    db $db
    db $ec

jr_066_5ab7:
    rst $38
    db $e3
    rra
    call z, $f73c
    rst $38
    ld [$f8ff], sp
    rst $30
    ld hl, sp+$07
    ld hl, sp+$07
    jp $ff3c


    inc bc
    db $fc
    db $fc
    ld a, [bc]
    nop
    add d
    add b
    add b
    inc b
    nop
    adc [hl]
    add b
    add b
    ret nz

    ld b, b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    and b
    ret nz

    ld b, b
    add b
    add b
    ld a, a
    nop
    ld l, h
    nop
    adc c
    ld [$0c00], sp
    nop
    ld b, $00
    inc bc
    nop
    ld bc, $0005
    add e
    ld a, h
    nop
    ld a, h
    dec b
    nop
    adc c
    ld bc, $0300
    nop
    ld b, $00
    inc c
    nop
    ld [$0009], sp
    or l
    jr nc, jr_066_5b37

    ld a, a
    ld a, a
    rst $28
    ld a, a
    rst $08
    ld e, a
    db $fc
    ld a, a
    ld sp, hl
    ld a, e
    db $fc
    ld a, h
    rst $38
    ld a, a
    rst $18
    ccf
    ld a, a
    rrca
    ccf
    nop
    rrca
    nop
    inc e
    inc e
    ld a, $2a
    ld [hl], a
    ld a, [hl]
    jp $d37e


    ld e, [hl]
    ei
    cp $ab
    db $ec
    cp $f8
    db $fc
    ld hl, sp+$7c
    ld [hl], b
    ld hl, sp-$10
    ld hl, sp-$20
    ldh a, [$c0]

jr_066_5b37:
    ldh [rP1], a
    ret nz

    ld a, a
    nop
    ld a, a
    nop
    dec b
    nop
    ld [de], a
    rst $38
    adc l
    add c
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    ld a, a
    nop
    ld h, c
    nop
    inc bc
    rst $38
    adc e
    inc c
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc c
    rst $38
    inc h
    rst $38
    inc h
    dec b
    rst $38
    adc e
    ld sp, $e4ff
    rst $38
    inc h
    rst $38
    db $e4
    rst $38
    ldh [rIE], a
    inc h
    inc b
    rst $38
    xor [hl]
    di
    adc e
    rst $38
    cp a
    rst $38
    cp a
    cp c
    ld sp, hl
    or a
    or a
    db $f4
    rst $30
    db $fd
    cp $ff
    rst $38
    rst $20
    jr jr_066_5b86

jr_066_5b86:
    db $db
    nop
    cp l
    add c
    add c
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $20
    sub a
    rst $38
    cp a
    cp a
    rst $38
    cp l
    cp l
    db $fd
    db $ed
    add hl, hl
    ld sp, hl
    rst $38
    ccf
    inc b
    rst $38
    adc h
    db $fc
    db $fd
    di
    db $f4
    rst $08
    ret nc

    sbc l
    and e
    ld [hl], $4e
    ld l, b
    sbc d
    inc b
    rst $38
    xor h
    ld hl, sp+$04
    rst $38
    nop
    ld a, e
    db $fc
    add [hl]
    add a
    ld bc, $0001
    xor d
    rst $38
    rst $38
    db $e4
    db $e4
    rst $18
    ldh [$34], a
    adc e
    db $eb
    rra
    db $f4
    inc d
    ret nc

    ldh a, [$30]
    or l
    rst $38
    rst $38
    sbc a
    sbc a
    rst $20
    rla
    or a
    ld c, a
    ld e, a
    rst $20
    cp a
    and a
    ccf
    daa
    ccf
    daa
    rlca
    rst $38
    adc c
    ldh [rIE], a
    ldh [rIE], a
    rst $20
    db $fc
    db $e4
    db $fc
    push hl
    inc b
    rst $38
    adc b
    ld sp, hl
    ld a, [$00ff]
    cp $01
    rst $38
    rst $38
    inc bc
    nop
    or c
    ld d, l
    rst $38
    rst $38
    rra
    rra
    di
    dec bc
    ei
    rlca
    rst $28
    di
    rla
    dec de
    cpl
    inc sp
    rla
    ld e, e
    rst $38
    rst $38
    db $fc
    db $fc
    rst $30
    ld hl, sp-$11
    ldh [$eb], a
    rst $30
    call c, $dcc4
    db $e4
    or h
    adc l
    rst $38
    rst $38
    rra
    rra
    di
    dec bc
    ei
    rlca
    rst $28
    di
    dec e
    ld de, $131d
    rla
    ld e, c
    inc b
    rst $38
    adc h
    ld sp, hl
    ld a, [$e8e7]
    xor $f1
    ei
    rst $20
    db $fc
    db $e4
    db $fc
    push hl
    dec b
    rst $38
    add l
    nop
    rst $38
    nop
    rst $38
    rst $38
    dec b
    nop
    add c
    ld d, l
    inc b
    rst $38
    adc h
    sbc a
    ld e, a
    rst $20
    rla
    ld [hl], e
    adc e
    db $db
    rst $20
    dec l
    ld sp, $531d
    inc bc
    cp $9d
    rst $38
    rst $38
    cp $fd
    db $fc
    db $fd
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    call $c5be
    and [hl]
    push bc
    sub [hl]
    add l
    or $85
    or $c5
    sub [hl]
    push bc
    and [hl]
    call $03be
    rst $38
    rst $38
    add $ff
    sub d
    rst $38
    adc [hl]
    rst $38
    ld [c], a

Call_066_5c7e:
    rst $38
    sub d
    rst $38
    rst $00
    rst $38
    rst $38
    pop hl
    dec a
    pop af
    dec h
    pop af
    add hl, hl
    di
    cpl
    di
    cpl
    pop af
    add hl, hl
    pop af
    dec h
    pop hl
    dec a
    ret nc

    dec [hl]
    ldh [$2f], a
    and b
    ld a, [hl]
    pop bc
    ld e, l
    ld e, d
    rst $20
    cp e
    add d
    cp l
    add $bf
    call nz, Call_066_5500
    ld a, b
    ld a, d
    or a
    call $877a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, b
    ld a, d
    ld a, b
    rst $08
    cp b
    rst $08
    ld hl, sp+$0f
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    ld e, a
    rst $20
    ld [hl], a
    rst $08
    ld a, a
    rst $08
    ld a, a
    rst $08
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    ld sp, hl
    ld c, d
    db $fc
    and $fc
    rst $20
    db $fc
    rst $20
    db $fc
    rst $20
    rst $38
    db $e4
    rst $38
    db $e4
    rst $38
    db $e4
    rst $38
    inc b
    nop
    xor d
    ccf
    rst $38
    ld a, $e1
    cpl
    ldh a, [$d3]
    rra
    call z, $ff2d
    nop
    rst $38
    nop
    cpl
    or e
    db $fc
    rla
    ld a, e
    rst $28
    di
    ld a, [$b206]
    set 2, l
    ld h, h
    cp l
    adc $db
    ld l, b
    cp b
    jp z, $1f68

    ld [hl], b
    sub a
    ret nc

    ccf
    xor $20
    xor l
    ld [hl], e
    db $dd
    ld b, c
    ld e, [hl]
    db $e3
    ld c, $a8
    ld c, $f9
    dec bc
    ld a, h
    add a
    db $f4
    or l
    adc [hl]
    ld e, e
    ld [c], a
    jp c, $fd47

    pop hl
    db $fc
    and $fc
    rst $20
    ld a, h
    ld h, a
    ld a, h
    rst $20
    cp a
    inc h
    cp a
    ld h, h
    rst $38
    inc h
    rst $18
    inc b
    inc e
    sbc h
    ld a, [hl-]
    and $3d
    db $e3
    dec a
    db $e3
    ei
    daa
    db $f4
    dec l
    ld sp, hl
    ld a, [hl-]
    rst $38
    nop
    rla
    cp c
    ld c, $e8
    ld c, $f8
    ld c, $f8
    xor $18
    rst $28
    add hl, bc
    rst $10
    add hl, sp
    sbc l
    ld d, c
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    cp $fd
    db $fc
    rst $38
    cp $fe
    rst $38
    cp $fe
    db $fd
    cp $e5
    sub [hl]
    rst $38
    cp a
    cp l
    ei
    cp a

jr_066_5d6e:
    cp a
    rst $38
    rst $38
    pop hl
    pop hl
    inc bc
    rst $38
    adc l
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld a, [hl]
    add c
    nop
    cp l
    nop
    db $db
    jr jr_066_5d9b

    inc bc
    rst $38
    rst $38
    ccf
    ld sp, hl
    dec h
    rst $38
    rst $28
    rst $38
    adc a
    db $fd
    cp l
    cp l
    db $fd
    or c
    or c
    rst $38
    rst $38
    cp l
    add $bb
    jp nz, $bf82

jr_066_5d9b:
    ld b, c
    db $fd
    ret nz

    ld e, [hl]
    and b
    ld [hl], l
    ret nc

    ld a, [hl-]
    ld l, b
    sbc b
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld a, l

jr_066_5dac:
    add e
    or [hl]
    rst $08
    ld a, b
    ld a, c
    nop
    xor d
    nop
    nop
    cp a
    ld c, b
    ld e, a
    add sp, -$08
    xor a
    jr c, jr_066_5dac

    jr c, jr_066_5d6e

    ld e, b
    ld l, d
    ld a, b
    ld c, l
    cp b
    ret z

    rst $30
    ld c, b
    db $fd
    ld b, e
    ld e, d
    rst $20
    dec l
    or a

jr_066_5dcd:
    ld e, $de
    nop
    xor d
    nop
    ld d, l
    nop
    nop
    rst $38
    inc b
    rst $18
    db $e4
    inc l
    rst $30
    inc d
    rst $38
    inc c
    rst $28
    inc c
    xor [hl]
    inc d
    ld e, l
    inc l
    inc [hl]
    rst $38
    nop
    call z, $132d
    rst $18
    ld l, $f1
    dec a
    db $e3
    ld a, $be
    nop
    ld d, l
    nop
    nop
    or e
    call nz, Call_066_69d6
    cp l
    jp $f6ea


    inc d
    db $dd
    adc b
    xor d
    inc c
    ld c, l
    ld a, [bc]
    ld c, $d0
    cp e
    add a
    cp a
    ret nz

    nop
    ld a, a
    nop
    rst $38
    rlca
    rst $30
    dec de
    cp h
    rla
    ld e, b
    inc e
    ld [de], a
    dec a
    ld b, e
    rst $38
    ld bc, $fe00
    jr nz, jr_066_5dcd

    ret nc

    rst $38
    ldh a, [$15]
    add sp, $1a
    jr c, jr_066_5e6e

    rst $18
    inc h
    ld a, a
    add h
    call c, $ace7
    rst $30
    ld e, h
    ld [hl], a
    inc c
    ld c, [hl]
    inc c
    xor l
    jr jr_066_5e4e

    rst $38
    nop
    cp $00
    jr nz, @-$0f

    jr nc, @-$07

    jr z, @-$03

    inc [hl]
    xor l
    ld a, [hl+]
    db $76
    dec e
    inc de
    add hl, hl
    or l
    ld c, h
    ld [hl], d
    db $76
    ld a, c
    dec hl
    cp h

jr_066_5e4e:
    dec d
    sbc $03
    ld d, d
    inc bc
    xor d
    rlca
    ld b, $04
    rst $38

jr_066_5e58:
    inc bc
    ld a, a
    adc c
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    inc bc
    rst $38
    adc e
    ld c, b
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, b

jr_066_5e6e:
    rst $38
    ld c, c
    rst $38
    add hl, de
    dec b
    rst $38
    sbc d
    ld h, c
    rst $38
    daa
    rst $38
    ld hl, $67ff
    rst $38
    daa
    rst $38
    ld hl, $ffff
    nop
    nop
    ld b, d
    nop
    inc h
    nop
    jr jr_066_5e8a

jr_066_5e8a:
    jr jr_066_5e8c

jr_066_5e8c:
    inc h
    nop
    ld b, d
    inc bc
    nop
    adc d
    ld [hl], $4e
    sbc l
    and e
    rst $08
    ret nc

    di
    db $f4
    db $fc
    db $fd
    ld b, $ff
    adc d
    inc bc
    inc bc
    db $fd
    cp $07
    ld hl, sp-$02
    ld bc, $8d71
    ld b, $ff
    adc b
    db $76
    adc [hl]
    db $fd
    inc bc
    adc a
    ld d, b
    ld [hl], e

Call_066_5eb3:
    ld [hl], h
    ld [$82ff], sp
    nop
    nop
    inc bc
    rst $38
    add e
    nop
    rst $38
    nop
    ld [$88ff], sp
    call c, Call_066_7fe4
    add a
    rst $18
    jr nz, jr_066_5e58

    ld d, b
    ld [$82ff], sp
    nop
    nop
    inc bc
    rst $38
    add e
    nop
    rst $38
    nop
    ld [$88ff], sp
    dec d
    dec de
    rst $28
    ldh a, [$f9]
    ld b, $f0
    add hl, bc
    ld [$88ff], sp
    xor l
    or c
    ld e, e
    rst $20
    di
    dec bc
    rst $20
    rla
    ld [$8aff], sp
    or h
    adc h
    db $db
    rst $20
    rst $08
    ret nc

    di
    db $f4
    db $fc
    db $fc
    ld b, $ff
    adc d
    ld a, [de]
    ld a, [de]
    db $ed
    rst $38
    ld a, [c]
    dec c
    rst $38
    nop
    ld [de], a
    ld [de], a
    ld b, $ff
    adc d
    ld e, [hl]
    ld d, c
    xor a
    ldh a, [$7d]
    add d
    ld hl, sp+$05
    ld c, a
    ld c, a
    ld b, $ff
    adc d
    add l
    add [hl]
    ld a, e
    db $fc
    cp $01
    db $fc
    ld [bc], a
    add a
    add a
    ld b, $ff
    add h
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld [de], a
    rst $38
    ret


    db $fc
    db $fd
    rst $20
    add sp, -$61
    and b
    ccf
    ld b, b
    ld a, a
    add b
    rst $38
    rst $38
    cp $fe
    rst $08
    ret nc

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ldh [$1f], a
    rst $08
    ret nc

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    di
    dec bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    rst $38
    sbc [hl]
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rTAC], a
    ld hl, sp-$01
    rst $38
    ld a, a
    ld a, a
    di
    dec bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, $ff
    sub [hl]
    ccf
    cp a
    rst $20
    rla
    ld sp, hl
    dec b
    db $fc
    ld [bc], a
    cp $01
    rst $38
    nop
    ld a, a
    add b
    ccf
    ld b, b
    rst $08
    ret nc

    di
    db $f4
    cp $fe
    dec b
    rst $38
    db $dd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $20
    add sp, -$01
    rst $38
    ldh [$1f], a
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    or b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$1f
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    pop af
    dec c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $20
    rla
    inc bc
    rst $38
    adc e
    nop
    cp $01
    db $fc
    ld [bc], a
    di
    dec bc
    rst $08
    cpl
    ld a, a
    ld a, a
    rlca
    rst $38
    adc e
    add c
    rst $38
    and $ff
    and $ff
    and $ff
    and $ff
    rst $20
    dec b
    rst $38
    adc e
    db $10
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    inc e
    dec b
    rst $38
    adc e
    inc hl
    rst $38
    ret


    rst $38
    ret


    rst $38
    ret


    rst $38
    pop bc
    rst $38
    ret


    dec b
    rst $38
    adc e
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rrca
    dec b
    rst $38
    adc e
    rst $00
    rst $38
    sub d
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    sub d
    rst $38
    rst $00
    dec b
    rst $38
    adc e
    jr @+$01

    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    jr @+$07

    rst $38
    adc e
    ld c, h
    rst $38
    call nz, $c4ff
    rst $38
    ret z

    rst $38
    ret z

    rst $38
    ld c, h
    dec b
    rst $38
    adc e
    call nz, $93ff
    rst $38
    adc a
    rst $38
    db $e3
    rst $38
    sub e
    rst $38
    rst $00
    dec b
    rst $38
    adc e
    ld [$32ff], sp
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    jr nc, @+$01

    ld [hl-], a
    dec b
    rst $38
    adc e
    db $e3
    rst $38
    ld c, c
    rst $38
    ld c, a
    rst $38
    ld b, c
    rst $38
    ld c, c
    rst $38
    ld h, c
    dec b
    rst $38
    sbc d
    rrca
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rst $38
    nop
    nop
    ld b, d
    nop
    inc h
    nop
    jr jr_066_60be

jr_066_60be:
    jr jr_066_60c0

jr_066_60c0:
    inc h
    nop
    ld b, d
    inc bc
    nop
    db $10
    rst $38
    ld de, $9f00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_066_69d6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_066_7870:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_066_7cfb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_066_7fe4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
