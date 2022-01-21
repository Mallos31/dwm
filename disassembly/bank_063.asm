; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $063", ROMX[$4000], BANK[$63]
;no code. Invalid jumps and calls removed.
    add l
    nop
    nop
    ld bc, $0503
    ld b, $08
    cp [hl]
    dec b
    inc bc
    ld bc, $0000
    dec de
    ccf
    rst $18
    cp $dd
    db $fc
    xor $ff
    rst $38
    xor a
    rst $38
    rst $28
    ld e, [hl]
    ld a, a
    rst $18
    ccf
    ldh [$f8], a
    db $fc
    cp [hl]
    adc $c7
    rlca
    ld h, a
    rst $28
    rst $08
    rst $18
    ld a, [hl]
    cp $cc
    ld hl, sp+$78
    rlca
    rra
    ccf
    ld a, b
    ld [hl], b
    db $f4
    xor $ec
    pop hl
    di
    ld a, a
    rst $38
    db $fd
    ld d, a
    ccf
    ccf
    ldh [$f8], a
    db $fc
    rst $38
    dec sp
    sbc e
    rst $38
    xor $f7
    inc bc
    rst $38
    adc b
    xor a
    push af
    cp [hl]
    ld a, [c]
    jr c, jr_063_4060

    ld [$1107], sp
    nop
    sub a
    ldh [$f0], a
    ld d, b
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ldh a, [$f8]
    ld hl, sp-$7c

jr_063_4060:
    rla
    inc d
    dec c
    rlca
    dec bc
    ld c, a
    ld e, a
    ld a, a
    ld a, a
    ccf
    dec sp
    jr @+$06

    nop
    add a
    call $fe3d
    db $fd
    ld b, e
    cp a
    ld a, a
    dec b
    rst $38
    add a
    rlca
    rlca
    inc bc
    rrca
    ld [bc], a
    ld a, l
    db $fd
    inc bc
    rst $38
    adc d
    sbc $f4
    ld hl, sp-$20
    ret nz

    add b
    ret nz

    ldh [$e0], a
    ret nz

    dec b
    nop
    sbc l
    ldh [$f0], a
    ld d, b
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ldh [$f8], a
    db $e4
    add d
    rla
    inc d
    dec c
    rlca
    add hl, bc
    dec bc
    rrca
    rrca
    rlca
    rlca
    rrca
    rrca
    rlca
    cpl
    ccf
    nop
    rst $00
    dec e
    inc bc
    db $fd
    add e
    ld b, e
    cp a
    ld a, a
    inc bc
    rst $38
    add a
    pop bc
    add b
    ret nz

    ret nz

    nop
    ld a, [c]
    db $fd
    inc bc
    rst $38
    adc d
    sbc $f4
    ld hl, sp-$08
    db $f4
    cp $fe
    db $fc
    inc e
    ld a, b
    inc b
    nop
    sbc b
    ldh a, [$ce]
    or c
    ld l, a
    ld a, [$d5ff]
    push de
    xor l
    ret nc

    db $fd
    ld a, [c]
    push af
    rla
    inc d
    dec c
    rlca
    dec bc
    add hl, bc
    dec bc
    rrca
    rlca
    rlca
    inc bc
    dec b
    nop
    add d
    push bc
    dec e
    inc bc
    db $fd
    sub [hl]
    ei
    ld b, a
    cp a
    ld a, a
    rst $38
    rst $38
    cp $3e
    cp a
    rst $38
    nop
    ld [bc], a
    ld a, l
    db $fd
    rst $38
    rst $38
    ld a, a
    sbc a
    rst $20
    rst $38
    di
    add $05
    nop
    add d
    db $c4, $1d, $03
    db $fd
    add h
    jp $bf7f


    ld a, a
    inc bc
    rst $38
    and b
    rra
    cpl
    ccf
    nop
    ld a, [c]
    db $fd
    rst $38
    rst $38
    ld a, a
    sbc [hl]
    db $e4
    ld hl, sp-$10
    ldh [$c0], a
    add b
    add b
    ret nz

    ret nz

    nop
    rst $38
    ld a, [c]
    cp $f3
    rst $38
    di
    ld b, $ff
    rst $38
    ld a, a
    ld [hl], e
    jr nc, jr_063_4137

    nop
    sbc e
    rst $38
    ld a, [c]

jr_063_4137:
    cp $f3
    rst $38
    di
    rlca
    rst $38
    rlca
    rlca
    rrca
    rrca
    rlca
    cpl
    ccf
    nop
    rst $38
    ld a, [c]
    cp $f3
    rst $38
    di
    rlca
    rst $38
    rlca
    rlca
    inc bc
    ld [$9200], sp
    rlca
    rra
    jr c, jr_063_41be

    ret c

    db $cc, $63, $38
    cp a
    sbc a
    rst $38
    rst $18
    rst $20
    rla
    dec hl
    dec l
    ld h, c
    di
    inc bc
    ld a, a
    add d
    inc [hl]
    jr @+$08

    nop
    add l
    ei
    db $fd
    rst $38
    ld a, $9c
    dec b
    rst $38
    sub e
    ld a, a
    ccf
    inc a
    ld e, [hl]
    ld a, [hl]
    ld a, [hl]
    rra
    rrca
    rla
    inc d
    dec c
    ld b, a
    ld e, a
    ld a, e
    ld a, a
    ld a, a
    ccf
    scf
    inc bc
    inc bc
    nop
    adc c
    di
    di
    db $c4, $1f, $ff
    rst $38
    db $fd
    rst $18
    cp e
    dec b
    rst $38
    adc a
    nop
    nop
    db $fc
    db $fc
    or d
    ld a, [c]
    sbc c
    db $fd
    ld a, [$efbe]
    ld a, a
    db $db
    cp $f0
    inc bc
    nop
    add a
    rst $00
    ld e, $fd
    db $fd
    ld b, e
    cp a
    ld a, a
    dec b
    rst $38
    inc b
    nop
    sub c
    dec b
    ld h, a
    ld a, a
    ld a, a
    ccf
    ccf
    dec a
    cpl
    ld [de], a

jr_063_41be:
    rla
    dec de
    dec d
    inc l
    inc hl
    rra
    rrca
    or b
    inc bc
    ldh a, [$9c]
    adc $b1
    ld l, a
    ld a, [$d5ff]
    push de
    dec l
    ret nc

    db $fd
    ld a, [c]
    push af
    nop
    rlca
    rrca
    rra
    rra
    dec l
    ld e, b
    ld d, e
    ld l, c
    ld e, e
    ld e, e
    ld c, a
    ld h, $17
    rrca
    ld [bc], a
    inc bc
    nop
    adc l
    rrca
    rra
    cp a
    rst $18
    rst $28
    cp a
    cp l
    rst $38
    ret


    sub h
    sub $f9
    cp a
    inc bc
    nop
    adc l
    ret nz

    or b
    ld l, h
    db $db
    and [hl]
    rst $38
    push de
    push de
    xor l
    jp $fb5e


    di
    dec b
    nop
    add e
    ret nz

    ld b, b
    ret nz

    dec b
    ld b, b
    adc c
    ldh a, [$f8]
    db $fc
    rrca
    ccf
    ld a, a
    ld a, a
    rst $38
    cp $03
    db $fc
    inc bc
    rst $38
    add h
    ld a, a
    ld a, a
    ccf
    rrca
    dec bc
    nop
    add l
    add b
    ld a, [hl]
    rst $38
    or l
    rst $20
    inc bc
    nop
    adc a
    ldh a, [$ce]
    or c
    ld l, a
    ld a, [$053f]
    dec [hl]
    db $ed
    ret nc

    db $fd
    ld a, [c]
    push af
    rst $00
    ld e, $03
    db $fd
    sub a
    ei
    ld b, a
    cp a
    ld a, a
    rst $38
    rst $38
    cp $7f
    ld a, a
    inc a
    ldh [rP1], a
    ldh a, [$f8]
    ld a, h
    cp $3f
    rst $38
    ld a, l
    dec a
    ld a, a
    ld a, b
    ld [hl], b
    dec b
    nop
    and d
    jr nc, jr_063_4291

    dec a
    ld a, a
    ld a, a
    dec a
    rst $38
    ld a, [hl]
    ld a, a
    ei
    push af
    db $ec
    inc hl
    rra
    rrca
    jr nc, jr_063_42a2

    ccf
    rst $38
    rst $08
    or c
    ld l, a
    ld a, [$ed9f]
    db $ed
    db $dd
    ldh a, [$fd]
    di
    di
    nop
    ret nz

    ret c

    inc bc
    ld hl, sp-$76
    ld [hl], b
    ret nc

    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ldh [$f0], a
    ld hl, sp-$7c
    dec bc
    nop
    add l
    rra
    inc a
    ccf
    ld d, d
    rst $38
    inc c
    nop
    add h

jr_063_4291:
    cp $7f
    add c
    cp $05
    nop
    sub c
    db $10
    db $fd
    rst $38
    rst $38
    ld [hl], a
    ld [$f7f6], a
    ld [hl], a
    sbc a

jr_063_42a2:
    rst $38
    jr jr_063_42d1

    inc l
    ld [hl], d
    ld a, [hl]
    ld a, [hl]
    inc bc
    ld a, a
    add h
    ccf
    ccf
    rla
    inc c
    inc bc
    nop
    ldh a, [rIF]
    rra
    cpl
    ld d, [hl]
    or e
    adc a
    ld a, a
    ccf
    ld c, h
    ld d, b
    scf
    ld a, [de]
    ld bc, $0500
    rlca
    rst $38
    ld a, e
    ld a, [hl]
    db $fd
    ld sp, hl
    ei
    db $e3
    ccf
    ccf
    ld a, c
    db $dc, $bb, $fd
    rst $38

jr_063_42d1:
    or $f7
    ldh a, [$f8]
    db $fc
    db $fc
    cp d
    ld d, [hl]
    sbc [hl]
    ld e, $be
    cp [hl]
    ld a, [hl]
    db $fc
    db $fc
    add sp, -$10
    ldh a, [rIE]
    ld a, a
    ld a, a
    cp $fc
    db $fd
    di
    rra
    ccf
    ld l, h
    xor $bb
    ei
    rst $38
    ei
    rst $38
    ldh [$f8], a
    ld a, h
    db $fc
    jp c, $ceae

    adc [hl]
    sbc $de
    ld a, $fc
    ld hl, sp-$60
    ret nz

    ret nz

    rrca
    rra
    cpl
    ld d, [hl]
    or e
    adc a
    ld a, a
    ld a, $40
    ld d, b
    scf
    ld a, [de]
    rlca
    rlca
    rla
    rra
    rst $38
    ld a, a
    ld a, [hl]
    db $fd
    ld sp, hl
    ei
    rst $20
    ccf
    ccf
    ld a, c
    db $dc, $bb, $fd
    rst $38
    and $c7
    ld b, $00
    add d
    inc bc
    inc bc
    dec b
    ld [bc], a
    add e
    rlca
    rrca
    rra
    inc bc
    nop
    sub a
    rra
    inc hl
    ld c, a
    ld e, h
    rst $38
    rst $38
    ld a, a
    rst $28
    push de
    adc c
    db $fc
    cp a
    cp a
    cpl
    dec hl
    ld a, c
    ld a, a
    rst $38
    ld a, a
    ld a, e
    ld [hl], l
    ld a, [hl+]
    inc e
    inc bc
    nop
    inc bc
    ld bc, $5f90
    ld b, d
    cp d
    rst $38
    ccf
    ld hl, sp-$49
    rst $08
    rst $38
    rst $38
    ld a, a
    ccf
    cp h
    ld hl, sp-$44
    db $fc
    ld b, $00
    adc d
    ld [bc], a
    inc bc
    rlca
    ld [bc], a
    ld [bc], a
    rlca
    dec bc
    dec d
    inc l
    inc hl
    dec b
    nop
    adc e
    db $10
    db $fd
    rst $38
    rst $38
    db $76
    ei
    push de
    push de
    xor l
    ret nc

    db $fd
    ld b, $00
    and e
    add b
    ret nz

    ld h, b
    ldh [$60], a
    ld [hl], b
    ld [hl], b
    ld h, b
    ldh a, [$f8]
    ld a, a
    ccf
    ccf
    inc a
    ld e, a
    ld d, b
    scf
    ccf
    ld b, a
    ld c, l
    ld a, $3d
    rra
    rrca
    inc bc
    nop
    rst $38
    sbc [hl]
    rst $18
    ld e, a
    cp e
    ld a, a
    rst $18
    db $fd
    cp $05
    rst $38
    sub b
    cp $00
    ldh a, [$88]
    inc [hl]
    jp c, Jump_063_7aea

    db $fc
    xor $5f
    db $eb
    and $c0
    ret nz

    add b
    dec b
    nop
    adc l
    ld bc, $0303
    dec b
    rrca
    ld [bc], a
    rlca
    dec bc
    dec d
    inc l
    inc hl
    rra
    rrca
    inc bc
    nop
    adc l
    ldh a, [$ce]
    or c
    ld l, a
    ld a, [$d5ff]
    push de
    xor l
    ret nc

    db $fd
    ld a, [c]
    push af
    dec b
    nop
    sub [hl]
    ldh [rSVBK], a
    ret nc

    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld h, b
    ldh a, [$f8]
    db $fc
    rla
    inc d
    dec c
    rlca
    dec bc
    add hl, bc
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    adc d
    ld [bc], a
    inc bc
    push bc
    add hl, de
    rst $38
    db $fd
    ld sp, hl
    db $d3
    rst $28
    sbc $04
    rst $38
    and b
    ld a, a
    ld a, a
    ei
    rst $38
    add h
    ld [hl-], a
    ld a, [hl-]
    ld a, [$fe7e]
    db $fc
    db $fc
    ld a, h
    cp b
    ldh a, [$e0]
    ret nz

    ret nz

    ldh [$e0], a
    dec bc
    rra
    cpl
    ld d, [hl]
    or e
    adc a
    ld a, a
    dec sp
    ld e, b
    ld d, b
    scf
    add hl, de
    inc b
    nop
    sub a
    ld sp, hl
    ld d, l
    ld d, l
    or e
    ld b, a
    rst $30
    rst $08
    dec bc
    rla
    ld a, [hl]
    db $fd
    ld a, a
    or a
    ld h, a
    rra
    nop
    add b
    di
    rst $38
    rst $38
    rst $28
    rst $18
    cp a
    inc b
    rst $38
    add h
    ld a, a
    cp h
    ld a, b
    ldh [$03], a
    nop
    add e
    ldh [$f0], a
    ret nc

    inc b
    nop
    sbc h
    add b
    ret nz

    ret nz

    ld b, b
    ld b, b
    nop
    nop
    rst $38
    ld a, a
    ld a, l
    reti


    ld a, [$f5fa]
    ccf
    ccf
    ld l, l
    pop af
    rst $38
    db $dd
    ld a, [hl]
    dec e
    ld b, $80
    ldh a, [$fc]
    ld a, [hl]
    ld a, l
    dec b
    rst $38
    or d
    db $dd
    db $e3
    db $fc
    ld hl, sp-$20
    nop
    ld sp, hl
    ld d, l
    ld d, a
    or a
    ld b, e
    di
    db $cd, $0e, $17
    ld a, c
    rst $38
    ei
    ld h, c
    rra
    nop
    nop
    jp $e7ff


    rst $18
    rst $18
    rst $08
    rst $20
    rst $38
    ld a, a
    rst $38
    rst $18
    xor $d8
    ldh [rP1], a
    nop
    ret nz

    and b
    ldh [$d0], a
    ldh a, [$d8]
    db $fc
    ld a, [hl]
    ld a, [$0cfc]
    inc b
    dec b
    nop
    add h
    ld bc, $0603
    ld c, $06
    rra
    or a
    ld c, $06
    inc bc
    ld bc, $3f00
    db $f4
    ld sp, hl
    di
    db $76
    ld [hl], a
    ld a, a
    ld e, c
    ld l, b
    ld [hl], b
    ld l, b
    ldh a, [$f5]
    rst $38
    db $fd
    cp $f8
    inc a
    sbc $7f
    ccf
    ccf
    rst $38
    sbc a
    sbc a
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $fc
    db $fc
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    db $db
    or c
    or e
    cp a
    sbc [hl]
    adc $a3
    rst $38
    cp $7f
    ld [hl], b
    ld hl, sp-$04
    inc bc
    rst $38
    sub b
    ld a, a
    ld a, a
    sbc a
    ld c, $05
    rrca
    and a
    ld e, a
    rst $38
    rst $38
    rra
    ld h, a
    ccf
    rra
    rrca
    rlca
    rrca
    nop
    add [hl]
    ldh [$f0], a
    ld e, b
    ld hl, sp-$10
    ldh a, [$03]
    ld hl, sp-$70
    inc c
    ld a, h
    cp $3f
    dec sp
    dec de
    rrca
    ld e, [hl]
    db $fc
    cp $ff
    rst $38
    ld a, a
    ld a, a
    ccf
    jr jr_063_4509

    nop
    add a
    rst $38

jr_063_4509:
    ei
    pop hl
    jp Jump_063_7fff


    cp $06
    rst $38
    sub e
    rrca
    rrca
    rra
    rst $38
    di
    adc a
    inc bc
    add c
    ld h, c
    cp e
    ld l, [hl]
    db $fc
    ld hl, sp-$20
    ret nz

    ldh [$f0], a
    ldh a, [$e0]
    inc b
    nop
    add [hl]
    ldh [$f0], a
    ld e, b
    ld hl, sp-$10
    ldh a, [$03]
    ld hl, sp-$66
    inc e
    ld a, [hl]
    rst $38
    ccf
    dec sp
    dec de
    ld c, $1f
    ld e, $1c
    ld e, $0f
    rrca
    rra
    rra
    cpl
    ld a, a
    ld a, a
    nop
    db $fc
    rst $38
    di
    jp $fec3


    ld a, a
    dec b
    rst $38
    sub e
    pop bc
    ldh [$e0], a
    nop
    rst $38
    adc a
    inc bc
    add c
    ld h, c
    cp e
    ld l, [hl]
    db $fc
    db $fc
    cp $ff
    rst $38
    cp $fe
    db $fc
    inc bc
    nop
    sbc d
    ldh a, [$fe]
    ccf
    rst $08
    pop af
    rst $38
    cp $be
    ccf
    ld a, a
    rst $28
    rst $38
    rst $18
    cp [hl]
    ccf
    dec sp
    dec de
    ld c, $1d
    rra
    ld e, $1c
    ld c, $0f
    rlca
    inc bc
    inc b
    nop
    adc b
    rst $38
    rst $38
    di
    jp $c7c3


    cp $7f
    rlca
    rst $38
    adc c
    nop
    rst $38
    di
    adc a
    inc bc
    add c
    pop hl
    ei
    ld a, a
    inc bc
    rst $38
    add c
    add $04
    nop
    adc b
    rst $38
    rst $38
    di
    jp $fec3


    rst $38
    ld a, a
    dec b
    rst $38
    sbc c
    ld a, a
    ld a, a
    nop
    rst $38
    adc a
    inc bc
    add c
    pop hl
    ei
    ld a, [hl]
    db $fc
    ld hl, sp-$10
    ldh [$c0], a
    ret nz

    ldh [$e0], a
    nop
    ccf
    rrca
    rlca
    rrca
    ld b, $0e
    dec b
    rst $38
    add d
    ld a, e
    jr nc, jr_063_45c9

    nop
    sbc h
    ccf

jr_063_45c9:
    rrca
    rlca
    rrca
    rlca
    ld c, $fc
    cp $0f
    rrca
    rra
    rra
    cpl
    ld a, a
    ld a, a
    nop
    ccf
    rrca
    rlca
    rrca
    rlca
    rrca
    cp $fc
    ld c, $0f
    rlca
    inc bc
    ld b, $00
    adc b
    rlca
    rra
    jr c, jr_063_4652

    rst $18
    rst $28
    ld [hl], e
    db $fc
    inc b
    rst $38
    adc l
    inc a
    ld e, $3c
    ld [hl], a
    ld [hl], e
    rst $38
    sbc a
    db $cd, $c5, $cb
    ld a, a
    dec a
    jr jr_063_4605

    nop
    add h
    add a
    inc bc
    rlca

jr_063_4605:
    rst $08
    rlca
    rst $38
    add d
    ld a, a
    ld a, a
    inc bc
    rst $38
    add a
    ccf
    ld a, [de]
    ccf
    dec sp
    ld e, e
    rst $38
    ld sp, hl
    inc bc
    cp $ad
    ld a, a
    ld a, a
    scf
    inc bc
    nop
    nop
    rst $18
    cp [hl]
    rst $38
    db $fd
    di
    ld h, h
    cp $f3
    or $7f
    ccf
    ccf
    cp a
    rst $38
    rst $38
    nop
    ld b, $7e
    rst $08
    rst $38
    rst $20
    di
    sbc a
    rst $00
    ld [hl], a
    sbc c
    db $ed
    cp $f8
    ldh a, [rP1]
    nop
    rst $38
    db $fd
    di
    jp Jump_063_7fff


    cp $06
    rst $38
    inc bc
    nop
    adc b
    dec b
    rst $20
    sbc $c1
    ld [hl], d
    ld h, e
    ld a, [hl]
    ld a, a

jr_063_4652:
    inc bc
    ccf
    push bc
    dec sp
    ld [hl], e
    ld a, a
    ccf
    ld a, [de]
    cp b
    ret c

jr_063_465c:
    jr jr_063_465c

    ccf
    rst $08
    pop af
    rst $38
    cp $3e
    cp a
    rst $38
    rst $28
    rst $38
    rst $18
    cp [hl]
    rlca
    rrca
    jr jr_063_469e

    ld a, $73
    rst $20
    rst $38
    rst $30
    and $e6
    db $f4
    ld a, l
    dec a
    dec e
    rrca
    nop
    nop
    rrca
    rra
    or [hl]
    jp hl


    rst $38
    ldh a, [rIE]
    rst $20
    rst $30
    ld a, a
    ei
    ld sp, hl
    rst $38
    rst $08
    nop
    nop
    ret nz

    ldh a, [$7c]
    sbc a
    rst $20
    ld a, e
    cp $3e
    cp a
    ld a, a
    cp $ff
    rst $38
    ld e, a
    inc b
    nop
    add h
    ret nz

jr_063_469e:
    ldh [$e0], a
    ld h, b
    inc b
    ldh [$84], a
    ldh a, [$f8]
    adc h
    db $76
    dec b
    nop
    add c
    ld bc, $0303
    ld de, $9e00
    add b
    cp $ff
    dec d
    rst $28
    rst $38
    nop
    nop
    ldh a, [$fe]
    ccf
    rst $08
    pop af
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $28
    rst $38
    rst $18
    cp [hl]
    rst $38
    db $fd
    di
    jp $c7c3


    cp $7f
    rlca
    rst $38
    adc [hl]
    db $fc
    ld [hl], b
    ld hl, sp-$74
    ld h, h
    and $35
    ldh a, [$73]
    scf
    ld [hl], a
    ld c, h
    ld a, b
    ld [hl], b
    inc bc
    nop
    or b
    jr nc, jr_063_471d

    dec l
    daa
    db $76
    ld [hl], a
    ld h, $ef
    ld h, a
    ld h, a
    rst $08
    sbc e
    di
    rst $38
    ccf
    ld a, [de]
    ld [hl], b
    ld l, d
    rst $20
    ld hl, sp+$3f
    rst $08
    pop af
    rst $38
    cp $1e
    sbc a
    ccf
    rst $28
    rst $38
    sbc $bf
    nop
    ret nz

    ret c

    ld l, h
    inc c
    db $fc
    ret c

    ld a, b
    ldh a, [$f0]
    ld hl, sp-$08
    ldh a, [rNR23]
    ld a, h
    cp $0a
    nop
    add [hl]
    rra
    ccf
    ld h, e
    ld a, h
    rst $28
    rst $38
    dec bc

jr_063_471d:
    nop
    add l
    cp $ff
    add c
    ld a, a
    rst $38
    inc b
    nop
    add d
    db $10
    db $fd
    inc bc
    rst $38
    sub h
    cp $9f
    rrca
    ld c, a
    adc e
    ei
    rst $38
    jr c, jr_063_47b1

    ld [hl], h
    cp $ce
    ld [c], a
    pop bc
    db $cd, $cf, $6b
    ld l, l
    ccf
    inc e
    inc bc
    nop
    ldh a, [$1f]
    ld a, $78
    db $ed
    rst $08
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $28
    ld l, a
    ccf
    dec de
    dec b
    rrca
    rrca
    rst $38
    rst $20
    jp $8682


    add l
    db $dd
    ld a, [$fef4]
    cp a
    ld a, a
    rst $38
    rst $38
    db $fd
    rst $38
    ld hl, sp+$2c
    sub [hl]
    sub $f7
    cp a
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    cp $fe
    db $fc
    ld hl, sp-$08
    rst $38
    pop af
    pop hl
    pop bc
    jp $ecc2


    db $fd
    ld a, [$9fff]
    ld a, a
    rst $38
    rst $30
    rst $30
    rst $38
    ld hl, sp-$64
    adc $66
    ld [hl], a
    rst $18
    rst $38

Jump_063_478a:
    ld a, a
    ccf
    ccf
    rst $38
    cp $fc
    ld hl, sp-$20
    ldh [$1f], a
    ld a, $78
    db $ed
    rst $08
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $28
    ld l, a
    ccf
    rra
    rra
    ccf
    ccf
    rst $38
    db $e3
    jp $8682


    add l
    reti


    ld a, [$fef4]
    cp a
    ld a, a
    rst $38
    rst $38

jr_063_47b1:
    db $fd
    rst $28
    dec b
    nop
    add e
    inc bc
    rlca
    ld b, $05
    rlca
    and b
    rrca
    jr jr_063_47ef

    nop
    nop
    rra
    ccf
    ld a, [hl]
    rst $38
    rst $30
    add sp, $7f
    db $e3
    or $fe
    cp $ff
    rst $38
    db $ed
    ld a, h
    ld [hl], a
    rst $38
    rst $00
    and c
    jp nz, $cfc6

    ld a, a
    ccf
    inc e
    nop
    ld bc, $0303
    add a
    rst $38
    db $fd
    ld a, l
    scf
    ldh a, [$cf]
    rst $08
    inc b
    rst $38
    add l
    ld a, a
    rst $38
    ld a, h
    ld a, [hl]
    cp $05

jr_063_47ef:
    nop
    adc e
    ld [bc], a
    rlca
    rlca
    rrca
    rlca
    rlca
    rrca
    rra
    dec sp
    ld [hl], e
    ld a, a
    inc b
    nop
    add d
    db $10
    db $fd
    inc b
    rst $38
    add [hl]
    cp $3e
    cp a
    ld a, a
    rst $28
    rst $38
    dec b
    nop
    cp d
    add b
    ret nz

    ldh [$f0], a
    ld [hl], b
    ldh a, [$f8]
    ld hl, sp-$10
    ld hl, sp+$0c
    rst $38
    ld l, d
    ld a, a
    ld a, a
    rst $38
    rst $28
    ld l, a
    ld a, [hl]
    cp $fb
    ld [hl], c
    ld a, e
    ccf
    rra
    rrca
    inc bc
    ld sp, hl
    rst $30
    rst $38
    ld sp, hl
    db $fd
    rst $08
    db $e4
    ld a, d
    cp a
    sbc a
    sbc a
    adc a
    rst $08
    rst $08
    rst $38
    cp $f8
    db $fc
    adc $e7
    scf
    cp a
    and $37
    cp c
    db $fd
    rst $38
    and $e0
    ret nz

    add b
    inc bc
    nop
    sbc [hl]
    ld bc, $0603
    rlca
    ld c, $1f
    rrca
    rrca
    rra
    dec sp
    ld [hl], e
    ld a, a
    ccf
    ld a, [de]
    nop
    nop
    ldh a, [$fe]
    ccf
    rst $08
    pop af
    rst $38
    cp $3e
    cp a
    ld a, a
    rst $28
    rst $38
    rst $18
    cp [hl]
    inc b
    nop
    and h
    ldh [$f0], a
    ret c

    ld a, b
    ldh a, [$f0]
    ld hl, sp-$08
    ldh a, [$f8]
    inc c
    ld a, [hl]
    ccf
    dec sp
    dec de
    rrca
    inc e
    ld e, $1f
    rra
    rrca
    rrca
    rlca
    inc bc
    nop
    ld [bc], a
    rlca
    rlca
    cp $ff
    ei
    inc sp
    ld [hl], a
    cp [hl]
    rra
    cp a
    dec b
    rst $38
    and b
    rst $30
    rst $30
    rst $38
    cp $cf
    rst $30
    rst $08
    add a
    adc e
    ld b, $86
    add $ec
    ld hl, sp-$10
    ldh [$e0], a
    ldh a, [$f0]
    rra
    inc a
    ld a, d
    db $ed
    rst $08
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $28
    ld l, a
    ccf
    add hl, de
    inc bc
    nop
    sbc b
    rst $30
    rst $38
    rst $38
    cp $bd
    db $fd
    cp $fe
    ei
    pop af
    sbc a
    adc [hl]
    db $cc, $fe, $7f
    rra
    di
    rst $38
    ccf
    db $c3, $1f, $27


    ld d, e
    rst $08
    inc b
    rst $38
    adc d
    ld a, a
    db $fc
    ld hl, sp-$20
    nop
    ldh [$f0], a
    ld hl, sp-$08
    ret nc

    inc bc
    add b
    add c
    ret nz

    inc b
    ldh [$9a], a
    ld b, b
    nop
    rst $38
    push af
    set 4, a
    sub a
    rst $10
    rst $28
    rst $20
    rst $38
    di
    rst $38
    ccf
    cp e
    pop af
    ld a, e
    rra
    ldh a, [$7c]
    cp [hl]
    rst $18
    rst $18
    cp a
    cp a
    ld a, a
    dec b
    rst $38
    or b
    db $fc
    ld hl, sp-$20
    rst $30
    rst $38
    cp $fa
    cp [hl]
    cp $ff
    ld sp, hl
    ld hl, sp-$02
    rst $08
    add a
    rst $38
    ld a, a
    rra
    nop
    rst $38
    ld a, $7c
    ld l, b
    ld l, b
    ld a, b
    inc a
    cp $ff
    rst $38
    cp a
    rra
    cp [hl]
    ld hl, sp-$20
    nop
    ldh [rSVBK], a
    ld [hl], b
    jr c, jr_063_499e

    inc a
    cp $ff
    rst $38
    cp $fe
    ld c, $04
    dec b
    nop
    nop
    add hl, bc
    nop
    add a
    jr nz, jr_063_4957

    dec sp
    rra
    rra
    rrca
    ld b, $05
    nop
    adc d
    rst $08
    cp a
    sbc a
    rst $38
    cp a
    ld c, a
    ccf
    adc a
    pop af
    rrca
    ld b, $00
    adc d
    add c
    rst $20
    db $db
    rst $20
    sub c
    nop
    jp $a5ff


    rst $38
    ld b, $00

jr_063_4957:
    adc d
    di
    db $fd
    ld sp, hl
    rst $38
    db $fd
    ld a, [c]
    db $fc
    pop af
    adc [hl]
    ldh a, [rTAC]
    nop
    adc b
    ld [$1808], sp
    ld hl, sp-$08
    ldh a, [$f0]
    ld [hl], b
    ld b, $00
    add d
    inc bc
    rlca
    inc bc
    rrca
    sub a
    dec bc
    inc c
    rlca
    daa
    ccf
    rra
    rlca
    inc bc
    rst $00
    xor a
    sbc a
    sbc a
    rst $38
    rst $38
    sbc a
    sub c
    sbc a
    jp $fff8


    rst $38
    sbc a
    add b
    inc bc
    rst $38
    adc c
    jp $e7ff


    jp $8100


    rst $38
    rst $00
    inc h
    inc bc
    rst $38
    dec b
    nop
    adc b
    db $10

jr_063_499e:
    db $10
    add hl, de
    rra
    rra
    rrca
    rrca
    inc c
    ld b, $00
    adc e
    ret nz

    xor a
    sbc a
    rst $38
    sbc a
    ccf
    ld c, a
    ccf
    adc a
    ld h, c
    rra
    ld b, $00
    adc e
    add b
    add c
    rst $20
    db $db
    rst $20
    ld de, $c380
    rst $38
    and l
    ld a, a
    ld b, $00
    adc e
    ret nz

    di
    db $fd
    ld sp, hl
    rst $38
    db $fd
    ld a, [c]
    db $fc
    pop af
    adc a
    ld [hl], b
    ld a, [bc]
    nop
    add a
    inc b
    add h
    call c, $f0f8
    ldh a, [$60]
    add hl, bc
    nop
    add a
    ld b, $07
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld c, $07
    nop
    and c
    ccf
    ld b, l
    sbc a
    cp a
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    ld a, b
    ld e, $27
    ld a, [hl]
    ld a, [hl]
    rst $38
    ld a, e
    rst $30
    push af
    db $eb
    ld d, a
    dec sp
    ld bc, $0000
    ld bc, $9001
    db $fc
    ld a, a
    ld a, a
    nop
    db $c4, $ff, $b7
    inc b
    rst $38
    add h
    ld hl, sp-$44
    db $fc
    ld a, h
    inc b
    nop
    add c
    ld a, $05
    rst $38
    add l
    ld a, a
    ccf
    adc a
    pop af
    rrca
    dec b
    nop
    add c
    ld a, h
    dec b
    rst $38
    add l
    cp $fc
    pop af
    adc [hl]
    ldh a, [$7f]
    nop
    ld d, a
    nop
    inc bc
    ld bc, $2188
    ld [hl], c
    ld a, e
    ld a, a
    ccf
    ccf
    rra
    rrca
    inc b
    nop
    add a
    rst $08
    rst $38
    rst $38
    ld hl, sp-$04
    call c, $04f9
    rst $38
    add c
    rrca
    inc b
    nop
    add [hl]
    add c
    rst $20
    rst $38
    rst $38
    ld a, [hl]
    rst $28
    inc bc
    rst $38
    add e
    db $db
    rst $38
    rst $38
    inc b
    nop
    add a
    di
    rst $38
    rst $38
    rra
    rst $08
    res 3, a
    inc bc
    rst $38
    add d
    cp $f0
    dec b
    nop
    add e
    adc b
    sbc h
    sbc h
    inc bc
    db $fc
    inc bc
    ld hl, sp-$67
    ld [hl], b
    nop
    nop
    ld bc, $0301
    rlca
    inc c
    dec de
    inc e
    jr jr_063_4a94

    rra
    cpl
    ld a, a
    ld a, a
    ccf
    rra
    rst $00
    db $ec
    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [rTIMA]
    rst $38
    adc d
    rst $08
    rst $38
    rst $38
    rst $18
    rst $38
    inc h
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    dec b
    rst $38

jr_063_4a94:
    add c
    db $db
    inc b
    rst $38
    add [hl]
    nop
    nop
    ld bc, $3911
    add hl, sp
    inc bc
    ccf
    inc bc
    rra
    add c
    inc c
    inc b
    nop
    adc b
    ret nz

    rst $28
    rst $38
    rst $38
    ld hl, sp-$04
    call c, $03f9
    rst $38
    add d
    ld a, a
    rra
    inc b
    nop
    add a
    add b
    pop bc
    rst $20
    rst $38
    ld a, a
    cp $ef
    inc bc
    rst $38
    add e
    db $db
    rst $38
    ld a, a
    inc b
    nop
    adc b
    ret nz

    di
    rst $38
    ccf
    rra
    ccf
    cp e
    rst $18
    inc b
    rst $38
    add c
    ld [hl], b
    dec b
    nop
    inc bc
    add b
    adc b
    add h
    adc [hl]
    sbc $fe
    db $fc
    ld hl, sp-$08
    ldh a, [$08]
    nop
    adc b
    ld b, $0f
    dec c
    rrca
    rrca
    rlca
    rrca
    rra
    ld b, $00
    and d
    ccf
    ld a, a
    cp $ff
    add sp, -$01
    db $e3
    di
    rst $00
    rst $38
    inc sp
    ld a, a
    rst $38
    jp $c7bf


    adc a
    adc a
    sbc l
    rst $38
    ld a, a
    dec sp
    ld bc, $0301
    inc bc
    rst $38
    rst $38
    rst $28
    db $ed
    rst $38
    ei
    ld a, a
    rst $08
    dec b
    rst $38
    add e
    cp $7e
    cp [hl]
    inc bc
    nop
    adc b
    ld a, $ff
    reti


    sbc b
    add b
    add b
    ret nz

    pop hl
    inc b
    rst $38
    add c
    rrca
    inc bc
    nop
    adc b
    ld a, h
    rst $38
    sbc e
    add hl, de
    ld bc, $0301
    add a
    inc bc
    rst $38
    add d
    cp $f0
    ld a, a
    nop
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc e
    nop
    nop
    ld bc, $3301
    inc hl
    inc sp
    ccf
    dec a
    ld l, c
    ld a, a
    ld e, a
    ccf
    ccf
    jr nc, jr_063_4b53

jr_063_4b53:
    inc a
    rst $28
    xor $fe
    rst $38
    xor a
    rst $18
    rst $28
    rst $30
    rst $38
    cp $03
    rst $38
    add l
    xor e
    ld a, h
    ld sp, hl
    sbc b
    ld a, l
    inc bc
    ld a, [hl]
    sbc d
    ld a, d
    ld a, [hl-]
    ld [$78f3], a
    ccf
    cp h
    cp a
    rst $38
    ld h, b
    and b
    ld [hl], b
    db $ec
    cp [hl]
    ld l, [hl]
    db $76
    ld l, d
    ld [$d454], a
    db $f4
    jr c, jr_063_4b98

    ld hl, sp-$28
    jr nc, jr_063_4b8e

    nop
    add [hl]
    jr jr_063_4bc4

    inc a
    db $10
    ld d, $09
    inc bc
    nop

jr_063_4b8e:
    sbc b
    ld bc, $2331
    inc sp
    ccf
    dec a
    ld l, c
    ld a, a
    ld e, a

jr_063_4b98:
    ccf
    ccf
    jr nc, jr_063_4b9c

jr_063_4b9c:
    nop
    ld a, $f7
    rst $30
    rst $38
    rst $38
    rst $10
    db $eb
    ld a, [$feff]
    inc bc
    rst $38
    sub d
    xor e
    ld a, h
    ld [hl], e
    ret nc

    add hl, sp
    ld a, [hl-]
    sbc [hl]
    sbc [hl]
    adc [hl]
    ld c, d
    ld [c], a
    di
    ld a, b
    ccf
    cp h
    cp a
    rst $38
    ld h, b
    ld b, $00
    add c
    inc e
    inc b
    ld a, $88
    inc e

jr_063_4bc4:
    nop
    nop
    inc c
    ld [de], a
    ld sp, hl
    sbc b
    ld a, l
    inc bc
    ld a, a
    adc d
    ld a, e
    dec sp
    ld [$78f3], a
    ccf
    cp h
    cp a
    rst $38
    ld h, b
    rlca
    nop
    adc c
    ld bc, $0303
    dec b
    rrca
    ld [bc], a
    rlca
    dec bc
    add hl, de
    rlca
    nop
    adc c
    ldh a, [$ce]
    or c
    ld l, a
    ei
    cp $f6
    push af
    db $ed
    add hl, bc
    nop
    and d
    ldh [$f0], a
    ld d, b
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    jr nz, @+$25

    rra
    rrca
    rla
    jr jr_063_4c0a

    ld b, a
    ld e, a
    ld a, [hl]
    ld a, l
    ld a, a
    ccf
    ccf
    rla
    ld [bc], a

jr_063_4c0a:
    pop af
    db $fc
    di
    rst $30
    rst $00
    rra
    rst $30
    cp $e3
    ccf
    rst $18
    inc b
    rst $38
    add c
    ld a, [hl]
    inc bc
    ldh [$81], a
    ldh a, [$03]
    ld hl, sp-$70
    ld [$7404], sp
    db $fc
    cp $fe
    rst $38
    cp $78
    inc a
    rst $28
    xor $fe
    rst $38
    xor a
    rst $18
    inc bc
    rst $38
    adc a
    cp $ef
    cp a
    rst $38
    rst $38
    ld a, $3c
    rst $28
    rst $28
    rst $38
    rst $38
    xor a
    sbc $ee
    cp $03
    rst $38
    sub h
    db $dd
    rst $28
    rst $38
    nop
    ld sp, hl
    sbc b
    ccf
    ccf
    cp [hl]
    ld a, $7a
    ld a, [$f3f8]
    ld a, b
    ccf
    cp h
    cp a
    rst $38
    ld h, b
    ld c, $00
    add d
    ld b, $09
    rlca
    nop
    adc l
    ld [$1708], sp
    ld h, d
    ld [hl+], a
    ld hl, $0e72
    add hl, bc
    nop
    nop
    ld a, b
    inc c
    inc bc
    nop
    add h
    ret nz

    ld h, b
    ld [hl], b
    jr nc, jr_063_4c7d

    nop
    add h
    dec c
    dec e
    dec hl
    cpl
    inc bc

jr_063_4c7d:
    ccf
    add a
    rrca
    daa
    cpl
    ccf
    rra
    ld e, $0c
    ld a, a
    nop
    ld [de], a
    nop
    adc e
    ld bc, $3303
    ld a, a
    ld [hl], a
    ld a, a
    ld a, a
    ld l, a
    rst $18
    rst $18
    rst $38
    inc bc
    ld a, a
    or c
    jr nc, @+$01

    di
    di
    rst $18
    adc a
    reti


    pop af
    pop af
    ld hl, sp-$01
    di
    pop bc
    add b
    xor b
    rst $38
    rst $38
    cp $7f
    rst $38
    rst $18
    rst $38
    db $db
    rst $38
    db $fd
    rst $38
    sbc a
    rst $08
    db $eb
    rst $28
    rst $28
    rst $18
    rst $38
    ldh a, [$fc]
    cp $eb
    ei
    ei
    rst $30
    rst $30
    xor $ee
    ld l, [hl]
    call c, $fcec
    db $ec
    ld hl, sp+$0d
    nop
    adc a
    ld a, [hl+]
    rlca
    rst $38
    nop
    nop
    ld bc, $7333
    ld [hl], a
    ld a, a
    ld a, a
    ld l, a
    rst $18
    rst $18
    rst $38
    inc bc
    ld a, a
    sub e
    jr nc, jr_063_4d1f

    rst $38
    ld sp, hl
    ld sp, hl
    rst $28
    rst $00
    db $ec
    db $fc
    db $fd
    rst $38
    di
    pop bc
    add b
    xor b
    rst $38
    rst $38
    db $fd
    cp a
    inc b
    rst $38
    adc d
    ei
    db $fd
    rst $38
    sbc a
    rst $08
    db $eb
    rst $28
    rst $28
    rst $18
    rst $38
    ld [$0300], sp
    ld b, c
    sub l
    ld h, d
    jr c, @+$32

    ld l, $5f
    cp $7f
    rst $38
    sbc $fd
    call c, $fdfe
    rst $38
    sbc a
    rst $08
    db $eb
    rst $28
    rst $28
    rst $18
    rst $38
    ld b, $00
    adc d
    ld bc, $0603

jr_063_4d1f:
    rlca
    ld c, $1f
    rrca
    rrca
    rra
    scf
    ld b, $00
    adc d
    ldh a, [$fe]
    ccf
    rst $08
    pop af
    cp $ff
    sbc l
    rra
    cp a
    ld [$a000], sp
    ldh [$f0], a
    ld e, b
    ld hl, sp-$10
    ldh a, [$f8]
    ld hl, sp+$7f
    ld a, a
    ccf
    ld a, [de]
    ccf
    scf
    ld e, a
    rst $38
    db $fd
    rst $30
    rst $30
    di
    ld a, c
    ld a, c
    dec a
    rla
    xor $ff
    rst $18
    cp [hl]
    db $fc
    db $fc
    ei
    ld h, e
    inc b
    rst $38
    add h
    cp $fe
    rst $38
    rst $38
    inc bc
    ldh a, [$b3]
    jr jr_063_4d6e

    inc c
    db $fc
    db $fc
    cp $fe
    adc [hl]
    inc bc
    rst $18
    and l
    and a
    cp $ff

jr_063_4d6e:
    di
    di
    rst $18
    adc a
    reti


    pop af
    ld sp, hl
    or $cb
    db $e3
    pop af
    pop bc
    pop hl
    push bc
    cp [hl]
    rst $38
    di
    pop af
    rst $18
    adc a
    reti


    di
    di
    rst $38
    db $e3
    pop de
    pop bc
    ld [c], a
    ld a, [c]
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $28
    rst $38
    rst $28
    inc bc
    rst $38
    add a
    sbc a
    rst $08
    db $eb
    rst $28
    rst $28
    rst $18
    rst $38
    dec c
    nop
    add e
    ld b, $0f
    ld a, a
    ld c, $00
    add d
    rlca
    rra
    inc bc
    nop
    add d
    db $10
    inc c
    dec b
    nop
    add d
    ld b, b
    jr nc, jr_063_4db8

    nop
    add e
    rrca
    rra
    scf

jr_063_4db8:
    dec b
    ld a, a
    add c
    ccf
    inc bc
    ld a, a
    add e
    ccf
    ccf
    ld e, $7f
    nop
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$a500], sp
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    dec de
    ccf
    ld a, [hl-]
    nop
    nop
    inc bc
    ccf
    ld e, a
    cp h
    cp a
    ld e, l
    ld a, [hl]

jr_063_4ddf:
    cp $ff
    ld a, a
    cp $fd
    db $d3
    ld e, h
    inc [hl]
    ld a, b
    ld a, b
    jr nc, jr_063_4e14

    ld [hl], a
    ld a, a
    ld a, a
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    add l
    ld a, a
    ccf
    ccf
    ld [hl], h
    ld_long a, $ff03
    add l
    ld hl, sp-$21
    rst $38
    rst $38
    rra
    rlca
    nop
    sbc h
    inc bc
    rlca
    rlca
    ld c, $1e
    cpl
    daa
    dec d
    rrca
    ccf
    dec sp
    ld d, $00
    nop

jr_063_4e14:
    jr nc, jr_063_4ddf

    push hl
    rst $38
    scf
    ld l, a
    rst $18
    sbc a
    ld a, a
    db $fc
    ldh a, [$f6]
    rst $20
    db $e3
    inc bc
    nop
    adc l
    add b
    ret nz

    xor h
    sbc [hl]
    ld e, l
    cp c
    ld hl, sp-$10
    ldh a, [$f8]
    db $fc
    rst $38
    rst $18
    ld b, $00
    sub l
    ret nz

    ldh [$e0], a
    ld [hl], b
    ld a, b
    jr c, jr_063_4e6c

    ret nz

    ldh a, [$f8]
    rrca
    ccf
    ld a, h
    ld a, b
    jr c, @+$72

    ld a, b
    dec a
    ld e, $1e
    inc c
    dec b
    nop
    sbc h
    ccf
    cp $fd
    ld a, h
    inc hl
    ld a, a
    cp $3f
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, $1c
    nop
    nop
    ld e, a
    ccf
    dec sp
    ei
    rst $30
    rst $08
    ccf
    rst $38
    cp $fc
    ldh a, [$c0]
    inc b
    nop
    add a

jr_063_4e6c:
    db $fc
    db $fc
    cp $fe
    db $fc
    ret nz

    add b
    ld de, $8300
    ld b, $09
    ld d, $03
    rra
    and d
    ld a, [hl-]
    dec sp
    nop
    nop
    inc bc
    rlca
    rlca
    ld [bc], a
    rst $38
    adc $6e
    rst $38
    db $fc
    rst $38
    db $fd
    db $fd
    ld a, [$0036]
    ld h, a
    rst $38
    rst $30
    ld l, e
    add a
    rlca
    rrca
    rrca
    sbc a
    rst $38
    rst $38
    rst $28
    rst $30
    rst $28
    rst $20
    inc b
    nop
    adc c
    ret nz

    ldh a, [$f8]
    ld hl, sp-$10
    ldh a, [$b0]
    ld hl, sp-$08
    inc bc
    ld a, b
    ld a, a
    nop
    ld a, a
    nop
    rlca
    nop
    sub c
    ld bc, $0301
    rlca
    ld b, $07
    rlca
    rra
    ld a, $66
    ld h, a
    nop
    inc bc
    ccf
    ld a, h
    di
    rst $28
    inc bc
    rst $38
    and b
    di
    ld h, c
    ret


    jp Jump_063_7c7e


    rst $38
    ld a, a
    rst $08
    rst $08
    ld a, a
    ld a, a
    rst $08
    call Call_063_79f9
    jr jr_063_4ee5

    inc c
    rlca
    inc bc
    nop
    nop
    rst $38
    set 1, a
    rst $38
    cp l
    or a
    or b

jr_063_4ee5:
    sub b
    rst $08
    inc b
    rst $38
    add c
    rra
    dec b
    nop
    sub d
    inc bc
    rlca
    inc c
    dec c
    dec de
    dec sp
    ld a, e
    ld a, a
    ccf

jr_063_4ef7:
    ccf
    ld a, a
    ld h, a
    ccf
    nop
    jr nc, jr_063_4ef7

    rst $38
    ccf
    inc bc
    rst $38
    sbc b
    ld hl, sp-$0c
    di
    sbc a
    rra
    ld e, c
    add hl, sp
    rst $38
    nop
    nop
    add b
    ret nz

    ld l, h
    ld a, [hl]
    di
    di
    rst $38
    rst $08
    rst $08
    rst $38
    rst $38
    or e
    di
    db $fc

jr_063_4f1b:
    dec b
    nop
    sub a
    ret nz

    ldh [$30], a
    jr nc, jr_063_4f1b

    call z, $f8cc
    ldh a, [$f8]
    call z, Call_063_7939
    rst $08
    rst $08
    ld a, a
    rst $08
    rst $08
    ld a, a
    inc sp
    inc sp
    rra
    inc c
    inc b
    nop
    sub [hl]
    rst $38
    rst $38
    sub [hl]
    sbc a
    rst $38
    db $fc
    rst $18
    jp hl


    ld sp, hl
    cp a
    adc a
    rst $00
    ld h, e
    ld a, $1c
    nop
    cp a
    sub $e6
    ld b, a
    adc a
    ccf
    inc bc

jr_063_4f4f:
    rst $38
    add h
    cp $fc
    ldh a, [$c0]
    inc bc
    nop
    adc b
    and $66
    ld h, e
    di
    cp $fc
    ret nz

    add b
    ld c, $00
    or [hl]
    ld bc, $0f07
    rra
    ccf
    dec sp
    scf
    scf
    ld l, a
    ld l, a
    nop
    inc bc
    rlca
    inc c
    inc c
    rst $38
    rst $38
    cp c
    reti


    rst $38
    rst $20
    rst $00
    sub a
    add a
    call Call_063_67f9
    rst $38
    sbc c
    sbc c
    rst $38
    cp $fc
    rst $38
    rst $38
    ldh a, [$9e]
    sbc a
    ld hl, sp-$44
    db $f4
    db $fc
    nop
    add b
    add b
    ret nz

    ldh a, [$38]
    inc c
    adc h
    ld hl, sp-$08
    ld a, b
    ld a, h
    inc b
    db $fc
    ld a, a
    nop
    ld a, a
    nop
    inc b
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    add [hl]
    ld bc, $0402
    add hl, bc
    ld [$081f], sp
    nop
    adc b
    inc a
    jp Jump_063_7000


    pop bc
    add c
    nop
    jr nc, jr_063_4fc3

    nop
    add a
    add b
    ld b, b
    jr nz, jr_063_4f4f

    db $10
    ld [$031f], sp

jr_063_4fc3:
    ccf
    sub l
    ld h, $34
    inc a
    inc l
    db $10
    db $10
    ld [$050a], sp
    inc bc
    nop
    nop
    ld a, h
    cp $fe
    rst $38
    cp $7e
    ld a, [c]
    ld hl, sp-$32
    inc bc
    nop
    add l
    add c
    ld a, [hl]
    pop bc
    ld a, $08
    rlca
    inc b
    add a
    ld [$1008], sp
    ld d, b
    and b
    ld b, b
    add b
    inc c
    nop
    add l
    ld bc, $0806
    db $10
    inc h
    ld a, [bc]
    nop
    add d
    ld a, a
    add b
    rrca
    nop
    sub d
    ret nz

    jr nc, jr_063_5007

    inc d
    ld a, [bc]
    ld c, h
    ld b, b
    add b
    add b
    sub c
    sub c

jr_063_5007:
    ld e, b
    ld c, h
    dec h
    ld de, $0709
    ld bc, $0003
    add h
    db $10
    ld a, [hl]
    db $fc
    db $fd
    inc bc
    rst $38
    adc d
    ld a, e
    ldh a, [$f8]
    rst $38
    di
    or $7f
    nop
    nop
    ld a, [bc]
    inc bc
    add l
    adc c
    dec b
    dec b
    add [hl]
    adc d
    inc c
    inc d
    ld [$c030], sp
    inc bc
    nop
    sub d
    add hl, sp
    ld c, e
    ld c, l
    ld h, l
    sub c
    sub b
    ld [hl], b
    ld c, c
    ld c, [hl]
    ccf
    rrca
    rrca
    rlca
    rlca
    inc bc
    ld bc, $e3c0
    inc bc
    ld a, a
    xor b
    or l
    call nc, $ffff
    and $ff
    cp [hl]
    rst $38
    rst $38
    sbc a
    add b
    set 7, a
    rst $28
    jp hl


    ret


    sbc a
    ld [hl], c
    sub b
    adc b
    ld sp, hl
    cp $fe
    rst $38
    rst $38
    db $fc
    ld h, b
    ret nz

    ldh [$f0], a
    ldh a, [$30]
    jr nz, @-$1e

    sub b
    sub b
    ldh [rLCDC], a
    ld b, b
    add b
    inc c
    nop
    add a
    ld bc, $0506
    dec b
    ld [bc], a
    ld [bc], a

jr_063_5077:
    ld b, $07
    nop
    adc c
    dec e
    ld a, a
    rst $38
    db $e3
    rst $30
    rst $38
    rst $38
    rst $30
    db $e3
    rlca
    nop
    cp c
    ld b, b
    ldh [$f3], a
    ccf
    call $e9ed
    ld [$00e3], a
    nop
    ld bc, $0703

jr_063_5095:
    ld a, $4f
    ld c, l
    ld a, l
    sub c
    sub b
    ld a, b
    ld c, l
    ld c, a
    jr nc, jr_063_50a0

jr_063_50a0:
    ld a, a
    rst $38
    rst $38
    rst $30
    db $e3
    ret nz

    db $e3
    rst $38
    ld a, a
    ld a, a
    and e
    pop bc
    rst $38
    rst $38
    and $7f
    ret nz

    ldh a, [$f8]
    db $fc
    db $fc
    xor $e9
    ret


    rst $18
    ei
    sub c
    sbc c
    ei
    cp $e2
    pop bc
    ld b, $00
    sub e
    ret nz

    jr nz, jr_063_50e6

    ldh [$90], a
    sub b
    ldh [rLCDC], a
    ld b, b
    add b
    nop
    rra
    ccf
    ld a, a
    ld a, a
    dec a
    jr @+$0a

    rlca
    ld [$8700], sp
    ldh a, [$fc]
    db $fc
    ld hl, sp-$08

jr_063_50de:
    ldh a, [$c0]
    dec bc
    nop
    add a
    ld bc, $0402

jr_063_50e6:
    add hl, bc
    ld [$1010], sp
    inc bc
    jr nz, jr_063_5077

    inc h
    dec hl
    jr nc, jr_063_50f1

jr_063_50f1:
    inc a
    jp Jump_063_7000


    pop bc
    add c
    dec b
    nop
    add h
    inc bc
    dec b
    jr jr_063_50de

    inc bc
    nop
    add a
    add b
    ld b, b
    jr nz, jr_063_5095

    db $10
    ld [$0308], sp
    inc b
    add e
    inc c
    sub b
    ld h, b
    inc bc
    nop
    adc e
    ld c, $1b
    db $10
    jr nz, jr_063_5136

    db $10
    db $10
    ld [$050a], sp
    inc bc
    inc b
    nop
    add h
    inc bc
    db $ec
    ld hl, sp-$20
    ld b, $00
    add h
    add c
    ld a, [hl]
    pop bc
    ld a, $03
    nop
    adc h
    adc b
    db $f4
    ld h, h
    inc b
    inc b
    ld [$1008], sp
    ld d, b

jr_063_5136:
    and b
    ld b, b
    add b
    ld a, [de]
    nop
    add a
    ld bc, $0703
    rrca
    ld e, $1f
    ccf
    rlca
    nop
    add c
    inc a
    inc bc
    rst $38
    add l
    adc a
    ld a, $7e
    rst $38
    rst $38
    add hl, bc
    nop
    adc e
    add b
    ret nz

    ldh [$f0], a
    ld a, b
    ld hl, sp-$04
    add hl, sp
    ld [hl], h
    ld [hl], b
    ld a, c
    inc b
    ld a, a
    adc a
    ccf
    ccf
    rra
    dec e
    ld c, $07
    inc bc
    nop
    rst $38
    rst $08
    and a
    add e
    ld b, a
    cp l
    db $fd
    dec b
    rst $38
    add l
    ld a, [hl]
    add c
    rst $38
    rst $38
    db $fc
    rlca
    cp $88
    db $fc
    db $fc
    ld hl, sp-$48
    ld [hl], b
    ldh [$c0], a
    add b
    ld a, [bc]
    nop
    add [hl]
    ld bc, $0f07
    rra
    ccf

jr_063_518a:
    ld a, e
    add hl, bc
    nop
    add c
    ld a, a
    ld b, $ff
    ld a, [bc]
    nop
    add a
    ret nz

    ldh a, [$f8]
    db $fc
    xor $f7
    di
    inc bc
    rst $38
    sbc l
    rst $28
    rst $28
    rst $20
    di
    ld a, e
    ccf
    rra
    rrca
    rlca
    ld bc, $0000
    rst $38
    ld sp, hl
    rst $28
    rst $00
    add a
    and a
    set 6, a
    sbc a
    rrca
    ld c, a
    sbc a
    rst $38
    rst $38
    ld a, a
    nop
    rst $30
    ld b, $fb
    adc d
    rst $30
    or $ee
    db $fc
    ld hl, sp-$10
    ret nz

    nop
    nop
    ld a, a
    rlca
    rst $38
    adc b
    cp $7b
    dec sp
    add hl, de
    dec c
    inc c
    ld b, $03
    inc bc
    rst $38
    adc c
    db $ed
    rst $38
    db $eb
    db $eb
    rst $38
    jp $98bd


    db $fd
    inc bc
    rst $38
    add h
    rst $18
    cp $fc
    ld a, a
    rlca
    rst $38
    add d
    rst $18
    rst $18
    inc bc
    sbc a
    adc a
    db $fc
    ld h, b
    jr nc, jr_063_518a

    ret c

    ld hl, sp-$10
    ldh a, [$f8]
    ld hl, sp-$10
    ldh [$e0], a
    ret nz

    add b
    ld a, [bc]
    nop
    add d
    ld bc, $0307
    rrca
    add e
    rlca
    rlca
    ccf
    ld b, $00
    add d
    dec e
    ld a, a
    inc b
    rst $38
    add h
    sbc h
    ret


    sbc h
    cp a
    ld b, $00
    sub b
    ld b, b
    ldh [$f3], a
    rst $38
    db $fd
    rst $38
    ei
    ld a, a
    ccf
    ccf
    nop
    ld bc, $0703
    ccf
    ld a, a
    ld [$87ff], sp
    ld a, a
    jr nc, @+$01

    db $dc, $49, $1c
    cp a
    inc bc
    rst $38
    add c
    db $ed
    inc b
    rst $38
    adc e
    jp $fffd


    ldh a, [$78]
    inc a
    ld a, $3e
    rst $38
    rst $38
    ld a, a
    rlca
    rst $38
    add c
    db $e3
    dec b
    nop
    add d
    ret nz

    ldh [$03], a
    ldh a, [$90]
    ld hl, sp-$08
    ldh a, [$e0]
    ldh [$c0], a
    rra
    ccf
    ld h, a
    jp nc, Jump_063_67c2

    ccf
    rra
    rrca
    rlca
    ld b, $00
    adc c
    ldh a, [$fc]
    ld e, $4e
    inc c
    inc e
    ld hl, sp-$10
    ret nz

    add hl, bc
    nop
    adc b
    ld bc, $0703
    rrca
    ld e, $1f
    ccf
    ccf
    dec b
    ld a, a
    add d
    ld a, e
    inc a
    inc bc
    rst $38
    add e
    adc a
    ld a, $7e
    rlca
    rst $38
    adc h
    db $fd
    ld hl, sp+$00
    nop
    add b
    ret nz

    ldh [$f0], a
    ld a, b
    ld hl, sp-$04
    db $fc
    inc b
    cp $95
    db $fc
    ldh a, [rP1]
    nop
    ld c, $1f
    ccf
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    dec e
    ld c, $07
    inc bc
    nop
    nop
    inc bc
    rst $28
    add hl, bc
    rst $38
    adc b
    ld a, [hl]
    add c
    rst $38
    rst $38
    nop
    nop
    adc b
    db $fc
    inc b
    cp $88
    db $fc
    db $fc
    ld hl, sp-$48
    ld [hl], b
    ldh [$c0], a
    add b
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    adc l
    ld bc, $0303
    dec b
    rrca
    inc bc
    rlca
    rrca
    add hl, de
    jr nc, jr_063_52f6

    rra
    rla
    inc bc
    nop
    adc l
    ldh a, [$ce]
    or c
    ld a, a
    ei
    cp $f6
    push af
    call $fdc1
    di
    add a
    dec b
    nop
    and e
    ldh [$f0], a
    ld d, b
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ldh a, [$f8]
    db $fc
    ld e, $18
    inc c
    rra

jr_063_52f6:
    ccf
    ld a, a
    ld a, a
    ld h, $7f
    ld a, [hl]
    ld a, c
    ccf
    ccf
    rra
    dec b
    rlca
    rlca
    ld a, [bc]
    ld a, [c]
    rst $00
    rst $38
    rst $38
    rst $30
    rst $38
    rrca
    dec b
    rst $38
    adc d
    db $fd
    xor $ef
    ld c, $0e
    rst $00
    rst $20
    rst $30
    db $fd
    ld a, [$fc04]
    adc h
    ld hl, sp-$08
    ldh a, [$e0]
    ldh [$0a], a
    ld a, [c]
    pop hl
    rst $38
    cp $ff
    nop
    rlca
    rst $38
    add h
    pop af
    ldh a, [$7a]
    db $fd
    inc b
    rst $38
    add d
    cp $fe
    inc bc
    db $fc
    sub [hl]
    ld hl, sp-$08
    ldh [$c0], a
    nop
    db $10
    jr jr_063_537d

    ld a, a
    ld a, a
    ld h, $7f
    ld a, [hl]
    ld a, c
    ccf
    ccf
    rra
    rrca
    ld bc, $0000
    rrca
    inc b
    rst $38
    add d
    db $fd
    rrca
    ld b, $ff
    adc e
    cp $07
    rlca
    adc [hl]
    rst $00
    rst $20
    rst $30
    rst $30
    db $fd
    ld [hl-], a
    cp $03
    db $fc
    add [hl]
    ld hl, sp-$08
    ldh a, [rSVBK]
    ldh a, [rNR34]
    inc b
    rst $38
    add l
    rst $28
    inc a
    rst $38
    di
    rst $28
    inc b
    rst $38
    add h
    jr jr_063_5375

jr_063_5375:
    ld c, $8f
    inc bc
    rst $08
    add d
    db $dd
    ld [c], a
    inc bc

jr_063_537d:
    cp $93
    db $fc
    db $fc
    ld hl, sp-$20
    nop
    nop
    jr jr_063_53c3

    ld a, a
    rst $38
    adc h
    rst $38
    db $fd
    di
    rst $38
    ld a, a
    ld a, a
    ccf
    rrca
    inc bc
    nop
    adc c
    ld a, [bc]
    ld_long a, $ffff
    ld [bc], a
    rst $38
    rst $38
    db $e3
    rst $18
    inc b
    rst $38
    add l
    jr nc, jr_063_53a3

jr_063_53a3:
    nop
    ld a, [hl]
    cp $04
    rst $38
    add a
    rst $18
    rst $38
    rst $38
    cp $fe
    db $fc
    ldh a, [$09]
    nop
    add d
    inc bc
    inc bc
    inc b
    ld [bc], a
    add h
    rrca
    rra
    ccf
    ld e, a
    inc bc
    nop
    and l
    rra
    inc hl
    ld c, a
    ld e, b

jr_063_53c3:
    cp a
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    sbc l
    ld hl, sp+$3c
    rra
    ld b, l
    adc a
    cp a
    ld a, a
    rst $38
    ei
    rst $30
    db $fd
    ld a, e
    ccf
    rlca
    inc bc
    ld bc, $0301
    ld [bc], a
    add e
    ld a, [c]
    ld_long a, $ffff
    rst $28
    ret nc

    ccf
    dec b
    rst $38
    and c
    ld a, a
    ld hl, sp-$08
    nop
    ld a, b
    db $fc
    ld a, [hl]
    ld e, $0c
    nop
    nop
    jr c, jr_063_5470

    ld a, $1f
    rra
    rrca
    ld b, $00
    ld d, $18
    add hl, sp
    ld a, a
    rst $38
    rst $38
    ld c, h
    rst $38
    rst $38
    di
    ld a, a
    ld a, a
    ccf
    rrca
    dec b
    nop
    add e
    ld bc, $0203
    inc bc
    ld bc, $07b2
    dec bc
    dec de
    add hl, de
    inc c
    ld [bc], a
    ld bc, $0c00
    dec bc
    db $e4
    cp $1f
    rra
    rst $18
    or $f8
    db $fd
    cp $f8
    ld hl, sp+$11
    add $00
    ret nz

    jr nz, @-$1e

    ret nc

    ret nc

    ld d, b
    xor b
    ld hl, sp-$04
    call z, $965a
    db $fc
    ld hl, sp-$04
    ld bc, $0703
    rlca
    dec bc
    add hl, bc
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    adc d
    ld [bc], a
    inc bc
    ld a, l
    ld sp, hl
    rst $38
    db $fd
    ld sp, hl
    db $d3
    rst $28
    sbc $04
    rst $38
    sub h
    ld a, a
    ld a, a
    ei
    rst $38
    add h
    ld [bc], a
    ld [hl], $fa
    cp $fe
    db $fc
    db $fc
    ld a, h
    cp b
    ldh a, [$e0]
    ret nz

    ret nz

    ldh [$e0], a
    inc b
    nop
    or h
    ld bc, $0203
    ld bc, $0301

jr_063_5470:
    dec b
    inc c
    ld [$0106], sp
    nop
    nop
    inc c
    dec bc
    inc b
    xor $ff
    ccf
    ccf
    sbc $fe
    ld sp, hl
    db $fc
    ld a, $18
    ld bc, $03c6
    rrca
    rra
    ccf
    ld a, a
    ld a, a
    ld h, $7f
    ld a, [hl]
    ld a, c
    ccf
    ccf
    rra
    inc b
    rlca
    rlca
    ei
    ld h, d
    rst $20
    rst $38
    rst $38
    rst $30
    rst $38
    rrca
    dec b
    rst $38
    and e
    db $fd
    xor $ef
    nop
    nop
    ld bc, $0603
    rlca
    ld c, $1f
    ld c, $0f
    ld a, [de]
    scf
    ld l, a
    ld a, a
    ccf
    ccf
    nop
    nop
    ldh a, [$fe]
    ccf
    rst $08
    pop af
    cp $3f
    dec e
    cpl
    rst $38
    cp a
    rst $38
    cp $fd
    inc b
    nop
    add [hl]
    ldh [$f0], a
    ld e, b
    ld hl, sp-$10
    ldh a, [$03]
    ld hl, sp-$64
    inc c
    or $fb
    scf
    dec de
    scf
    ld h, c
    jp Jump_063_7fc2


    ld sp, hl
    pop af
    rst $38
    ld a, a
    ld a, a
    ccf
    inc e
    dec bc
    rrca
    rst $38
    rst $38
    cp a
    inc c
    inc d
    inc e
    dec de
    ld hl, sp-$02
    dec b
    rst $38
    sbc b
    ld sp, hl
    rst $38
    ei
    ei
    db $fd
    dec a
    dec e
    dec bc
    rra
    xor $1e
    cp $fe
    db $fc
    db $fc

jr_063_54fe:
    ld hl, sp-$10
    ldh a, [rIE]
    rst $38
    sbc a
    ld [bc], a
    inc bc
    ld bc, $ff04
    adc l
    ei
    ld hl, sp-$08
    cp $ff
    ld sp, hl
    rst $38
    add a
    inc bc
    pop bc
    ld h, c
    ld e, l
    add e
    inc b
    cp $9c
    db $fc
    ld a, h
    jr c, jr_063_54fe

    ret nz

    ccf
    ccf
    ld h, a
    jp Jump_063_7fc2


    ld sp, hl
    pop af
    rst $38
    ld a, a
    ld a, a
    ccf
    rra
    rrca
    ld bc, $ff00
    ld hl, sp-$70
    jr @+$18

    inc de
    db $fc
    rlca
    rst $38
    adc d
    db $fc
    rrca
    ei
    ld a, l
    dec a
    dec e
    dec e
    sbc e
    rst $38
    rst $38
    inc bc
    cp $82
    db $fc
    db $fc
    inc bc
    ld hl, sp-$6e
    rst $38
    pop hl
    ret nz

    ld h, b
    ld e, b
    ld d, [hl]
    di
    rst $38
    cp a
    cp a
    sbc a
    adc a

jr_063_5557:
    rst $08
    rst $20
    rst $38
    jr jr_063_5557

    ld sp, hl
    inc bc
    ld a, c
    add c
    ld [hl], e
    inc b
    rst $38
    adc l
    cp $fe
    db $fc
    ld hl, sp-$20
    nop
    scf
    ld a, e
    rst $08
    add h
    rst $38
    di
    db $e3
    inc b
    rst $38
    adc c
    ld a, a
    ccf
    rlca
    nop
    nop
    rst $38
    rst $30
    add c
    ld [bc], a
    inc bc
    rst $38
    sub b
    ld a, a
    ld a, a
    ccf
    rra
    sbc a
    rst $08
    rst $38
    jr nc, jr_063_5589

jr_063_5589:
    rst $38
    add e
    ld bc, $71c1
    ld e, a
    db $e3
    inc b
    rst $38
    add e
    cp $fc
    ldh a, [rTAC]
    nop
    add e
    inc bc
    rlca
    ld b, $03
    rlca
    sub d
    rrca
    rra
    ld sp, $f961
    nop
    nop
    rra
    ccf
    ld a, [hl]
    rst $38
    rst $30
    ld hl, sp+$77
    db $e3
    push hl
    sub d
    ld l, [hl]
    inc bc
    rst $38
    sub a
    cp $f8
    db $fc
    jp nz, $8d81

    adc a
    add e
    rst $00
    ld a, a
    ccf
    rlca
    inc bc
    inc bc
    ld b, $07
    rst $38
    ld a, l
    ld c, l
    rst $00
    ret nz

    jr nc, jr_063_560a

    ld b, $ff
    sbc h
    ld a, a
    rst $38
    ld a, h
    nop
    ld a, b
    add h
    ld h, d
    ld [de], a
    inc c
    nop
    nop
    jr c, @+$46

    ld [hl-], a
    ld de, $0911
    ld b, $00
    ccf
    scf
    ld a, a
    add $82
    add h
    rst $38
    di
    pop hl
    inc bc
    rst $38
    add e
    ld a, a
    ccf
    rrca
    inc bc
    nop
    sbc e
    ld bc, $0603
    rlca
    inc bc
    inc bc
    rlca
    rrca
    rra
    ld [hl], $37
    rra
    rrca
    inc bc
    inc c
    rra
    rst $38
    rst $38
    rra
    push af
    pop af
    ld sp, hl
    rst $38

jr_063_560a:
    ccf
    rst $18
    rst $28
    ld a, a
    inc bc
    rst $38
    add h
    ret nz

    ldh [$f0], a
    or b
    inc bc
    cp b
    and c
    call c, $c6fc
    cp [hl]
    rst $38
    ei
    cp $0c
    or $03
    rlca
    inc c
    inc c
    inc e
    ld e, $1f
    rra
    rrca
    rrca
    rlca
    inc bc
    nop
    ld [bc], a
    rlca
    rlca
    cp $9f
    inc sp
    inc sp
    ld [hl], a
    cp [hl]
    rra
    cp a
    dec b
    rst $38
    sub e
    rst $30
    rst $30
    rst $38
    cp $ff
    ei
    rst $08
    rlca
    adc e
    ld b, $86
    add $ec
    ld hl, sp-$10
    ldh [$e0], a
    ldh a, [$f0]
    inc bc
    nop
    sub [hl]
    ld bc, $0603
    rlca
    inc bc
    inc bc
    rlca
    rrca
    dec de
    rra
    rrca
    rlca
    ld bc, $1f0c
    rra
    rst $28
    rst $38
    inc de
    jp hl


    pop hl
    di
    rlca
    rst $38
    sbc c
    rrca
    inc e
    ld sp, $c361
    jp nz, $f97f

    pop af
    rst $38
    ld a, a
    ld a, a
    ccf
    dec e
    dec bc
    rrca
    rst $38
    rst $38
    sbc a
    inc c
    inc d
    inc e
    dec de
    ld hl, sp-$02
    dec b
    rst $38
    add d
    ld sp, hl
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    inc b
    nop
    sbc h
    ld [bc], a

jr_063_5692:
    rlca
    rra
    inc c
    dec bc
    rrca
    rra
    ccf
    ld h, a
    jp Jump_063_7f8f


    nop
    ld h, b
    ld [hl], a
    ld a, [hl-]
    and [hl]
    push af
    rst $38
    rst $18
    db $ed
    ld sp, hl
    ld sp, hl
    rst $30
    reti


    sbc b
    db $fc
    or $03
    nop
    sbc d
    add b
    ld b, b
    ret nz

    ld b, b
    jr nz, jr_063_5692

    or d
    ld a, [hl-]
    ld h, $89
    ld hl, $4126
    rra
    cpl
    jr nc, jr_063_56d4

    rrca
    rlca
    ld [bc], a
    ld c, a
    ld e, a
    ld a, a
    ccf
    ccf
    inc e
    inc bc
    nop
    adc c
    push hl
    call z, $fd36
    cp $ff
    ld a, b

jr_063_56d4:
    rst $30
    rst $08
    inc bc
    rst $38
    adc e
    ld a, a
    rlca
    nop
    nop
    ld bc, $788e
    ld hl, sp+$34
    db $cc, $3f, $05
    rst $38
    add d
    pop af
    db $c3, $03, $00


    xor b
    jr nc, jr_063_5729

    dec e
    or e
    ld a, [$dfff]
    rst $28
    jp hl


    ld hl, sp-$04
    sbc $0f
    ld a, [$00e4]
    nop
    add b
    ld b, b
    jr nz, @-$12

    or d
    ld a, [hl-]
    ld h, $89
    ld hl, $4126
    add c
    ld c, [hl]
    jr c, jr_063_574b

    cpl
    jr nz, @+$15

    rrca
    rlca
    inc b
    rlca
    rlca
    inc bc
    inc bc
    adc l
    ld bc, $0100
    nop
    db $f4
    xor $3f
    db $fd
    cp $ff
    ldh a, [$ef]
    sbc a
    inc b
    rst $38
    sub b
    ld a, $7f

jr_063_5729:
    rst $38

jr_063_572a:
    jr nc, jr_063_5764

    ld hl, sp-$08
    jr c, @-$36

    jr c, jr_063_572a

    ld hl, sp-$10
    ldh a, [$e0]
    add b
    inc bc
    nop
    sub b
    inc h
    ld c, d
    ld l, $bf
    ld a, l
    ld a, a
    cp l
    ld e, h
    ld l, [hl]
    inc [hl]

jr_063_5744:
    ld a, [hl]
    or a
    ld a, [hl-]
    ld e, h
    add d
    ld d, h
    dec b

jr_063_574b:
    nop
    adc c
    ld de, $2a3a
    ld c, h
    sbc b
    add b
    sbc a
    ccf
    ld hl, $0006
    xor e
    ret nz

    ret nz

    add b
    add b
    adc h
    ld e, h
    ld h, h
    inc b
    adc b
    ret z

    ret nc

jr_063_5764:
    ld h, b
    nop
    inc b
    ld c, $1d
    dec e
    ccf
    ld a, a
    ld a, a
    ld a, [hl]
    ld h, h
    ld h, b
    nop
    ld c, $1f
    rrca
    rlca
    jr jr_063_57ef

    ldh a, [$e2]
    rst $30
    rst $28
    xor $fc
    ld a, h
    ld a, b
    jr nc, jr_063_5791

    db $10
    jr nz, jr_063_5744

    inc bc
    nop
    add h
    ld bc, $0703
    rlca
    inc bc
    inc bc
    add d
    rst $08
    rst $18
    dec b

jr_063_5791:
    rst $38
    adc d
    nop
    add b
    nop
    add b
    call nz, $e8cc
    db $fc
    db $fc
    db $fd
    rlca
    rst $38
    and l
    ld a, [hl]
    ld a, h
    ld a, b
    ld hl, $2323
    daa
    daa
    ld d, $16
    ld a, [bc]
    dec de
    ccf
    rra
    rrca
    rst $38
    ld a, a
    ccf
    add hl, de
    ret nz

    ldh a, [$f8]
    db $fc
    ld a, $1e
    rrca
    rrca
    rra
    cp $ff
    rst $38
    or $fe
    cp $fc
    ld hl, sp-$08
    inc bc
    ld a, b
    add a
    jr nc, jr_063_57fa

    jr nz, jr_063_57ec

    ld [hl], b
    ldh [$c0], a
    ld b, $00
    add e
    ld bc, $4242
    inc bc
    inc b
    adc b
    dec sp
    ld a, a
    rst $38
    rst $38
    add b
    nop
    ld [$0308], sp
    nop
    cp c
    add b
    nop
    ld b, b
    jr nz, jr_063_5808

    nop
    call nz, $f4e4

jr_063_57ec:
    rra
    cpl
    ld a, a

jr_063_57ef:
    ccf
    ld c, a
    ld c, a
    ld e, h
    ld a, b
    ld [hl], b
    ld [hl], c
    inc sp
    dec sp
    ld e, c
    db $fc

jr_063_57fa:
    ld a, a
    ccf
    cp $fc
    ld hl, sp-$01
    cp $ff
    rra
    rlca
    rlca
    jp $e1e1


jr_063_5808:
    pop bc
    inc bc
    rst $38
    add a
    ld d, b
    ld d, b
    db $10
    sbc b
    inc [hl]
    inc h
    and h
    add h
    call nz, $e8c8
    ldh a, [$e8]
    db $fc
    ld hl, sp-$10
    ld b, $00
    adc a
    ld bc, $0103
    inc bc
    inc bc
    ld bc, $0003
    rlca
    ld e, $00
    nop
    ld b, $5d
    xor a
    inc bc
    ld a, a
    ld [$8bff], sp
    cpl
    ld a, a
    ccf
    rst $38
    ld a, l
    rst $38
    ld a, a
    cp [hl]
    dec [hl]
    nop
    ld bc, $0003
    add d
    ld bc, $0a00
    rst $38
    add [hl]
    ld a, a
    rst $38
    ld a, $7c
    ld a, $fe
    inc hl
    nop
    sbc c
    ld [bc], a
    rlca
    rra
    ccf
    rra
    rra
    inc e
    ld a, [hl-]
    ld l, b
    call c, $ffbf
    rst $38
    ld h, b
    rst $30
    rst $18
    db $ed
    db $fd
    cp $ff
    db $fd
    ei
    ld a, a
    ld [hl], a
    ld a, a
    inc bc
    rst $38
    sbc b
    ld a, a
    nop
    nop
    add b
    ret nz

    ldh [$60], a
    ldh [$fc], a
    cp $7f
    rst $30
    rst $38
    rst $38
    rst $18
    sbc $bf
    ld a, d
    ld a, a
    ld l, a
    ccf
    inc e
    inc c
    ld c, a
    inc bc
    rst $38
    adc [hl]
    ld a, a
    ld a, a
    ccf
    inc e
    nop
    nop
    cp a
    rst $38
    rst $38
    di
    ld sp, $cf38
    adc a
    dec b
    rst $38
    adc c
    ld a, a
    rlca
    nop
    rst $38
    rst $38
    cp $ec
    adc $3f
    rlca
    rst $38
    adc h
    rst $30
    db $c3, $00, $30


    ld a, e
    ld l, a
    or [hl]
    cp $ff
    rst $38
    db $fd
    rst $38
    inc bc
    ld a, a
    sbc d
    rst $38
    ei
    rst $38
    ld a, a
    nop
    add b
    ret nz

    ldh [$fc], a
    cp $7f
    rst $30
    rst $38
    rst $38
    rst $18
    rst $18
    cp a
    rst $38
    rst $38
    cp $7a
    ld a, a
    ld a, a
    ccf
    inc e
    inc c
    inc bc
    rrca
    inc bc
    rlca
    adc h
    inc bc
    ld bc, $0103
    cp a
    ei
    pop af
    ld [c], a
    ld h, c
    ld [hl], b
    sbc a
    rra
    ld [$86ff], sp
    ret c

    db $ec
    call c, $cc2c
    inc a
    inc bc
    db $fc
    add h
    ld hl, sp-$08
    ldh a, [$e0]
    inc bc
    add b
    sub b
    inc h
    ld c, d
    ld l, $bf
    ld a, l
    ld a, a
    cp l
    ld e, h
    ld l, [hl]
    inc [hl]
    ld a, [hl]
    or a
    ld a, [hl-]
    ld e, h
    add d

jr_063_58ff:
    ld d, h
    inc b
    nop
    add h
    ld de, $6f3b
    ld a, a
    inc bc
    rst $38
    add l
    ldh [rLCDC], a
    ld e, $3f
    rrca
    inc bc
    nop
    xor h
    ret nz

    ldh [$60], a
    ret nz

    call z, $f6de
    cp $fe
    ld a, h
    inc a
    jr c, jr_063_58ff

    inc b
    ld c, $1b
    scf
    scf
    ld h, [hl]
    call nz, $c1c8
    db $db
    rst $18
    rra
    ld de, $0000
    rlca
    ld a, h
    db $ec
    sbc d
    scf
    dec e
    add hl, sp
    ccf
    ld [hl], $86
    adc h
    ret c

    ld hl, sp-$08
    ldh a, [$e0]
    dec b
    nop
    adc h
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    adc b
    sub b
    dec sp
    ld a, a
    call nz, $a584
    inc bc
    nop
    or e
    add b
    ld b, b
    ld b, b
    jr nz, jr_063_5979

    inc b
    inc b
    ld [bc], a
    nop
    ret nz

    ld h, c
    ld sp, $e931
    rst $38
    rst $38
    rst $18
    ld a, [hl]
    ld a, h
    ld a, h
    ld a, b
    ld a, b
    add hl, sp
    add hl, sp
    dec e
    inc a
    ld l, h
    jr nc, @+$21

    adc h
    rst $38
    cp $fe
    ccf
    rrca
    rlca
    inc bc
    pop bc
    pop hl
    ldh a, [$f0]

jr_063_5979:
    ldh [rSB], a
    jr nc, @+$01

jr_063_597d:
    inc de
    adc e
    dec bc
    ld b, $04
    inc c
    inc bc
    adc h
    add a
    ret c

    ret c

    ldh a, [$f0]
    ret c

    jr nc, jr_063_597d

    ld b, $00
    add e
    ld bc, $0303
    inc bc
    rlca
    add h
    ccf
    ld a, a
    call nz, $06a4
    nop
    xor d
    add b
    add b
    nop
    ret nz

    ldh [$f0], a
    ldh a, [$fc]
    ld a, h
    inc a
    jr nc, jr_063_5a22

    cp $7c
    db $fc
    ldh a, [$e3]
    rst $00
    rst $08
    adc $6c
    ld h, h
    or $b3
    ret nz

    ld a, a
    and a
    adc a
    rst $38
    ccf
    dec a
    nop
    ldh [$f8], a
    ld hl, sp+$3c
    ld e, $1e
    ld a, $fc
    db $fc
    rst $38
    inc bc
    ld hl, sp-$73
    db $fc
    cp $fe
    ld a, [hl]
    ld a, [hl]

jr_063_59cf:
    ld a, $3c
    inc e
    jr jr_063_5a10

    ld d, $0c
    ld hl, sp+$04
    nop
    adc a
    ld bc, $0301
    rlca
    inc bc
    rlca
    rlca
    inc bc
    rlca
    rlca
    rra
    ld a, $00
    ld b, $5f
    ld b, $ff
    add e
    db $e3
    rst $20
    di
    inc bc
    rst $38

jr_063_59f1:
    add d
    db $ed
    ld l, a
    inc bc
    rst $38
    adc [hl]
    db $fd
    rst $38
    rst $38
    cp $7f
    dec [hl]
    ld bc, $0001
    ld bc, $0103
    rst $38
    or $0b
    rst $38
    add e
    cp $ff
    rst $38
    ld [hl+], a

jr_063_5a0c:
    nop
    nop
    nop
    inc bc

jr_063_5a10:
    nop
    xor l
    ld bc, $0403
    ld l, c
    ld a, e
    ld e, a
    ld c, a
    ld d, a
    dec l
    inc l
    cp $1c
    adc [hl]
    rlca
    rrca
    ld a, a

jr_063_5a22:
    ld hl, sp-$41
    ld a, a
    pop af
    ei
    adc a
    ccf
    ld a, c
    ldh a, [$f4]
    jr nz, jr_063_5aad

    cp $00
    add b
    ret nz

    ret nz

    ld b, b
    ret c

    ei
    ld a, l
    xor a
    add sp, -$04
    call c, $cf7e
    xor $68
    dec b
    nop
    sub c
    add b
    ld h, b
    ld d, b
    jr nc, jr_063_59cf

    jr c, jr_063_5a89

    ld b, b
    jr nz, jr_063_5a0c

    nop
    inc bc
    ld c, $18
    jr nz, jr_063_5a67

    ld a, [bc]
    ld a, [bc]
    nop
    adc e
    adc $0b
    scf
    xor a
    ld e, a
    rrca
    dec bc
    rrca
    ld b, $07
    inc bc
    dec b
    nop
    add e
    cp b
    jr nc, jr_063_59f1

jr_063_5a67:
    inc bc
    rst $38

jr_063_5a69:
    sbc b
    ret nz

    cp a
    ld a, a
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    inc e
    jr c, jr_063_5a74

jr_063_5a74:
    sbc h
    ld a, h
    cp $fe
    ld a, [c]
    db $fc
    db $f4
    adc $fe
    cp $bc
    ld a, l
    ld a, a
    ld c, $05
    nop
    sub [hl]
    ld bc, $0403
    ld l, c

jr_063_5a89:
    ld a, e
    ld e, a
    ld c, a
    ld d, a
    dec l
    inc l
    ld h, $3c
    ld a, h
    nop
    nop
    ld bc, $0701
    inc c
    db $10
    ld a, [bc]
    dec b
    rlca
    nop
    adc e
    cp $cf
    rlca
    rst $08
    ld l, a
    rra
    add hl, de
    rst $18
    daa
    rlca
    inc bc
    dec b
    nop
    sub d
    cp b

jr_063_5aad:
    jr nc, @-$74

    rst $38
    rst $38
    cp $e1
    rst $18
    ccf
    rst $38
    rst $38
    ld hl, sp+$7e
    ld a, [hl]
    dec e
    add hl, sp
    sbc b
    ld a, b
    inc bc
    db $fc
    add h
    db $f4
    call z, $fcfc
    inc bc
    ld hl, sp-$74
    ld a, b
    db $f4
    db $fc
    ld hl, sp-$02
    rst $08
    add a
    cp e
    ld h, b
    adc d
    xor e
    ld d, [hl]
    inc bc
    rlca
    adc b
    inc bc
    inc bc

jr_063_5ad9:
    ld bc, $0300
    cp b
    jr nc, jr_063_5a69

    inc bc
    rst $38
    sbc d
    ldh [$df], a
    ccf
    rst $38
    rst $38
    ldh [$f0], a
    ld hl, sp-$07
    pop bc
    nop
    add b
    ret nz

    ret nz

    ld b, b
    ret c

    ld hl, sp+$78
    xor c
    rst $28
    ld hl, sp-$24
    ld a, h
    rst $08
    xor $6c
    ld b, $00
    xor d
    jr nz, jr_063_5ad9

    ld d, h
    db $cc, $22, $0e
    db $10
    db $10
    ret z

    jr nc, jr_063_5b11

    rrca
    ld a, a
    ld hl, sp-$41
    ld a, a
    pop af
    ei

jr_063_5b11:
    adc [hl]
    rrca
    add hl, de
    ldh a, [$f4]
    jr nz, jr_063_5b97

    cp $00
    add b
    ret nz

    ret nz

    ld b, b
    ret c

    ei

jr_063_5b20:
    ld a, l
    cpl
    jr z, jr_063_5b20

    call c, $cf7e
    xor $68
    rlca
    nop
    and e
    ld b, $07
    dec b
    inc b
    dec b
    dec b
    inc b
    ld b, $0f
    inc bc
    rlca
    ccf
    ld d, h
    sbc a
    cp a
    ld a, h
    ld h, [hl]
    ld e, a
    cp $fc
    cp b
    call z, $ff3f
    sbc a
    rra
    ccf
    ld b, a
    ld a, c
    ld b, b
    adc d
    xor e
    ld d, l
    ld bc, $0601
    nop
    adc b
    sbc h
    jp nz, $fffa

    rst $38
    rst $30
    ld hl, sp-$61
    inc b
    rst $38
    pop hl
    ld a, h
    ld a, $7e
    ld hl, sp+$00
    nop
    ld c, $11
    ld l, $5f
    ld e, b
    ld a, e
    ld a, e
    ccf
    scf
    jr nc, jr_063_5b86

    ld [$0007], sp
    nop
    rlca
    jr jr_063_5b9c

    ld c, b
    ld b, d
    ld c, a
    ld c, a
    sbc a
    cp a
    cp a
    adc a
    ld c, a
    ld b, c
    jr nc, jr_063_5b90

    rlca
    rrca
    ld a, a
    ld hl, sp-$41

jr_063_5b86:
    ld a, a
    pop af
    ei
    rst $38
    rst $38
    ld sp, hl
    ldh a, [$f4]
    jr nz, jr_063_5c0f

jr_063_5b90:
    rst $38
    nop
    add b
    ret nz

    ret nz

    ld b, b
    ret c

jr_063_5b97:
    ld hl, sp-$08
    db $eb
    db $ed
    rst $38

jr_063_5b9c:
    call c, $ce7c
    xor $ef
    cp a
    ccf
    sbc a
    ld [c], a
    ld hl, sp-$01
    ret nz

    cp a
    ld a, a
    rst $38
    rst $38
    ld hl, sp-$04
    db $fc
    jr c, jr_063_5c21

    call c, Call_063_7edc
    ld a, $fe
    db $f4
    adc $fe
    cp $bc
    ld a, l
    ld a, a
    ld c, $35
    nop
    sub e
    ld bc, $0603
    ld l, a
    rst $38
    rst $18
    rst $28
    rst $30
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $30
    ei
    rrca
    ld a, b
    rst $30
    xor a
    ld a, a
    inc b
    rst $38
    add h
    cp $ef
    sbc a
    ei
    inc bc
    rst $38
    sub b
    add b
    ret nz

    ld h, b
    ldh [$f8], a
    rst $38
    rst $28
    rst $28
    cp $ff
    scf
    rst $30
    di
    ei
    rst $38
    cp $04
    nop
    sub e
    add b
    ldh [$f0], a
    ld hl, sp-$08
    ld a, h
    db $fc
    ld hl, sp-$20
    ldh a, [$e0]
    ret nz

    rrca
    dec e
    scf
    ld a, a
    ccf
    rra
    ld a, [bc]
    add hl, bc
    nop
    adc h
    ld a, e
    rst $38
    ei
    pop af
    pop af
    ld e, c
    ld e, $1c

jr_063_5c0f:
    rrca
    rrca
    rlca
    inc bc
    inc b
    nop
    adc b
    rst $28
    rst $38
    db $fd
    ld a, a
    add b
    add b
    ld a, a
    ld a, a
    dec b
    rst $38
    adc d

jr_063_5c21:
    ld a, [hl]
    ld a, h
    jr c, jr_063_5c9b

    and [hl]
    db $e3
    inc sp
    ccf
    ld c, [hl]
    adc [hl]
    ld b, $ff
    add d
    ld a, a
    ld c, $03
    nop
    adc c
    ld bc, $0603
    ld l, a
    rst $38
    rst $18
    rst $28
    rst $30
    rst $38
    inc b
    ld a, a
    adc e
    rst $00
    ld bc, $0301
    rlca
    ld c, $1b
    ccf
    rra
    rrca
    dec b
    ld b, $00
    adc h
    or e
    ei
    db $fd
    ld sp, hl
    cp b
    ld hl, sp-$01
    cp $ff
    cpl
    rlca
    inc bc
    inc b
    nop
    adc b
    rst $28
    rst $38
    db $fd
    rst $38
    add b
    pop bc
    ccf
    ccf
    ld b, $ff
    adc b
    ld a, a
    ld a, a
    ld a, h
    xor h
    or $36
    ld c, [hl]
    adc [hl]
    inc bc
    cp $04
    db $fc
    adc b
    cp $fe
    db $fc
    cp e
    db $fd
    rst $38
    push af
    rst $18
    inc bc
    rst $38
    sub b
    ld e, a
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    rlca
    rst $28
    rst $38
    db $fd
    rst $38
    add b
    ret nz

    ccf
    ccf
    inc b
    rst $38
    sub h
    ld hl, sp-$03
    rst $38
    ei
    add b
    ret nz

    ld h, b
    ldh [$f8], a

jr_063_5c9b:
    db $fc
    db $ec
    db $ed
    rst $38
    rst $38
    ccf
    rst $30
    rst $30

jr_063_5ca3:
    ei
    ei
    cp $05
    nop
    sub b
    jr nz, jr_063_5ca3

    db $fc
    cp $be
    rst $18
    rst $38
    cp $f8
    db $fc
    ld hl, sp+$0f
    ld a, b
    rst $30
    xor a
    ld a, a
    rlca
    rst $38
    add c
    ei
    inc bc
    rst $38
    sub b
    add b
    ret nz

    ld h, b
    ldh [$f8], a
    rst $38
    rst $28
    rst $28
    cp $ff
    rst $30
    rst $30
    di
    ei
    rst $38
    cp $04
    nop
    add [hl]
    ld bc, $0601
    rrca
    dec c
    ld c, $05
    rrca
    add h
    add hl, de
    rlca
    inc a
    ld a, e
    ld b, $ff
    adc c
    db $eb
    rst $00
    rst $38
    cp a
    rst $38
    rst $38
    ei
    jr nc, jr_063_5d69

    ld b, $ff
    add h
    ld d, a
    inc bc
    ld bc, $0301
    nop
    adc b
    ld bc, $fdff
    ld a, l
    ld h, a
    ldh [$98], a
    adc a
    ld b, $ff
    xor b
    ld a, a
    rst $38
    cp [hl]
    nop
    nop
    ld c, $1f
    ld sp, $6760
    ld b, h
    ld b, h
    jr nz, jr_063_5d37

    cpl
    rla
    rrca
    rlca
    nop
    nop
    rlca
    rra
    jr c, jr_063_5d90

    ld a, l
    ld [hl], b
    ld [hl], b
    ldh [$c0], a
    ret nz

    ldh a, [rSVBK]
    ld a, [hl]
    ccf
    rrca
    rrca
    ld a, b
    rst $30
    xor a
    ld a, a
    inc bc
    rst $38
    add l
    adc a
    ld c, $2f
    sbc a
    ei
    inc bc
    rst $38
    sbc b
    add b
    ret nz

    ld h, b

jr_063_5d37:
    ldh [$f8], a
    db $fc
    db $ec
    rst $28
    ccf
    cp a
    ld a, $f7
    rst $30
    ei
    ei
    cp a
    db $ed
    rst $38
    rst $38
    ld a, l
    sbc a
    add a
    ld a, a
    ld a, a
    inc b
    rst $38
    adc d
    cp $fe
    db $fc
    ld hl, sp-$09
    or $a3
    ei
    rst $08
    adc [hl]
    ld b, $ff
    add d
    ld a, a
    ld c, $34
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add d

jr_063_5d69:
    inc bc
    rlca
    inc bc
    rrca
    add c
    inc c
    inc bc
    rrca
    and a
    ld [$0305], sp
    inc bc
    ld bc, $0503
    ld [c], a
    rst $30
    rst $38
    ei
    cp c
    ei
    rst $30
    rst $38
    cp [hl]
    ld e, a
    call z, Call_063_5fde
    pop hl
    ld hl, sp-$10
    nop
    ld a, b
    and $7d
    xor $f7
    ld sp, hl

jr_063_5d90:
    cp a
    ld a, a
    sbc a
    rst $18
    reti


    rra
    rst $10
    ld sp, hl
    ld a, l
    inc b
    nop
    sub h
    add b
    ld b, b
    ld h, b
    ldh [$30], a
    or b
    cp b
    db $fc
    xor b
    ld d, b
    and b
    ld h, b
    dec b
    sbc a
    cp l
    cp $ff
    ld a, a
    ld a, e
    ld sp, $0008
    and [hl]
    cp d
    rst $18
    xor a
    ld [hl], a
    ld sp, hl
    cp $ff
    cp $7f
    rra
    inc bc
    inc bc
    rlca
    rlca
    nop
    nop
    ld [hl], e
    dec b
    db $fd
    db $fd
    rst $38
    rst $38
    db $fc
    reti


    ld sp, $e0e1
    ldh a, [$f0]
    add sp, -$08
    nop
    ldh a, [$f8]
    ld hl, sp-$0c
    or h
    ld a, [c]
    inc bc
    cp $83
    ld a, h
    sbc h
    ld a, b
    inc b
    nop
    cp l
    rrca
    ccf
    ld a, a
    ld a, a
    ccf
    dec sp
    rra
    inc e
    inc de
    db $10
    add hl, bc
    rlca
    rlca
    inc bc
    inc bc
    dec b
    ld [bc], a
    add a
    rst $00
    db $eb
    jp hl


    or e
    ld d, a
    ld a, a
    cp [hl]
    ld e, a
    call z, Call_063_5fde
    db $e3
    ld sp, hl
    ldh a, [$ba]
    rst $18
    xor a
    ld [hl], e
    db $fc
    rst $38
    rst $38
    db $fd
    ld a, [hl]
    rra
    cpl
    ccf
    ccf
    rra
    inc e
    ld c, $33
    dec b
    ld sp, hl
    db $fd
    rst $38
    rst $38
    db $fc
    cp b
    ld [hl], b
    ldh [$c0], a
    ret nz

    add b
    inc bc
    nop
    adc d
    ld hl, sp-$0c
    ld a, [c]
    ld_long a, $ff9f
    ld a, a
    ld e, a
    ld l, $1c
    rlca
    nop
    add c
    ld bc, $0304
    sbc [hl]
    rlca
    rlca
    dec b
    inc b
    dec b
    inc bc
    rlca
    ld [bc], a
    inc bc
    dec b
    db $fc
    rst $38
    rst $38
    ei
    rst $28
    cp e
    rst $30
    rst $38
    sbc $3f
    call z, Call_063_5fde
    db $e3
    ld sp, hl
    ldh a, [rTIMA]
    rlca
    dec c
    ld e, $04
    rra
    add d
    cp a
    rst $38
    ld b, $00
    add e
    inc sp
    dec b
    db $fd
    inc b
    rst $38
    adc l
    rst $18
    dec sp
    db $f4
    di
    ldh a, [$f0]
    ldh [$e8], a
    jr c, @-$1e

    ldh a, [$f8]
    sbc b
    inc b
    add sp, -$7d
    ldh a, [rNR41]
    ret nz

    ld a, a
    nop
    ld h, [hl]
    nop
    or b
    rlca
    inc c
    jr jr_063_5e94

    rra
    dec de
    inc e
    jr jr_063_5e9f

    rra
    rrca
    ld b, $06
    inc bc
    ld b, $0e
    rst $30
    sbc l
    adc l
    call $8fcf
    rra
    ld a, h
    rst $20
    ei
    rst $38
    ld [hl], a
    rst $38

jr_063_5e94:
    ccf
    ld [hl], a
    rst $18
    ld a, b
    cp $9f
    di
    sbc c
    xor $77
    ld a, b

jr_063_5e9f:
    rst $38
    db $fd
    jr nc, jr_063_5ee2

    rst $30
    ei
    rst $38
    rst $18
    inc bc
    nop
    sub b
    add b
    ret nz

    ldh [$b0], a
    or b
    ret c

    ret c

    db $fc
    and $dc
    ld hl, sp-$10
    ldh a, [$9f]
    cp $fe
    inc b
    rst $38
    add d
    ld a, e
    ld sp, $0007
    add l
    call Call_063_7067
    ld hl, sp-$02
    inc b
    rst $38
    and h
    ld a, a
    rra
    rlca
    rrca
    rrca
    rlca
    nop
    rst $38
    cp $fa
    ld a, [de]
    ld [de], a
    di
    daa
    ccf
    ei
    di
    pop af
    ld hl, sp-$08
    db $fc
    db $fc
    ld hl, sp-$68

jr_063_5ee2:
    inc c
    inc e
    ld l, [hl]
    adc $ef
    sbc a
    inc bc
    inc bc
    add $e6
    db $fc
    ld a, b
    inc bc
    nop
    add a
    ccf
    ld [hl], h
    call nz, Call_063_7ece
    ld h, [hl]
    jr nc, jr_063_5efc

    ccf
    sbc a
    rra

jr_063_5efc:
    ld c, $0c
    rlca
    ld b, $0e
    add a
    call $3d6d
    ccf
    ld a, a
    rst $38
    db $fc
    rst $20
    ei
    rst $38
    ld [hl], a
    rst $38
    ccf
    ld [hl], a
    rst $18
    call Call_063_7067
    db $fc
    rst $38
    rst $38
    cp $fe
    rst $38
    inc b
    ld a, a
    sbc [hl]
    ccf
    ccf
    rra
    rst $38
    cp $fe
    ld a, [de]
    ld [hl-], a
    db $e3
    ld b, a
    ld a, h
    ld hl, sp-$10
    ldh [$e0], a
    ret nz

    add b
    nop
    nop
    sbc h
    ld e, $6f
    rst $00
    db $fd
    pop hl
    pop bc
    pop af
    ld [hl], e
    ld a, $1c
    dec b
    nop
    adc b
    ld bc, $0603
    ld b, $07
    ld b, $0d
    ld c, $03
    rrca
    sbc b
    ld b, $0c
    rlca
    ld b, $0e
    rst $38
    inc de
    inc de
    ld a, a
    di
    ld h, a
    rrca
    inc a
    rst $30
    ei
    rst $38
    ld [hl], a
    rst $38
    ccf
    ld [hl], a
    rst $18
    rrca
    ld c, $1e
    inc b
    ccf
    add c
    cp a
    inc bc
    rst $38
    dec b
    nop
    sbc h
    rst $38
    cp $fa
    ld a, [de]
    inc de
    db $f4
    jr z, jr_063_5faa

    db $fc
    rst $38

jr_063_5f74:
    rst $38
    ei
    ld hl, sp-$08
    db $fc
    db $fc
    or b
    jr jr_063_5fe9

    db $fc
    sbc h
    ld e, h
    inc a
    inc a
    jr jr_063_5f74

    ldh [$c0], a
    ld a, a
    nop
    ld h, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    sbc d
    ld bc, $0001
    ld bc, $0502
    dec b
    ld [bc], a
    ld bc, $0002
    nop
    ld e, $39
    ld h, e
    xor $01
    rst $38
    cp $37
    cp $fc

jr_063_5faa:
    ld a, [bc]
    ld l, a
    rst $38
    rst $38
    inc bc
    nop
    sub l
    add b
    ld h, b
    sbc h
    sbc [hl]
    push hl
    push hl
    ld d, a
    ld e, [hl]
    sub $2e
    sub [hl]
    dec sp
    db $c3, $1f, $39


    ld a, e
    ld e, l
    scf
    rrca
    inc b
    inc b
    inc bc
    ld [bc], a
    ret nz

    ld bc, $0201
    inc bc
    ld bc, $b87f
    rst $28
    add [hl]
    and c
    rst $20
    ld a, [hl]
    inc c
    ld b, b
    ld [$9ded], a
    add l
    jp z, $ff08

Call_063_5fde:
    cp c
    ld [hl], e
    and d
    ld c, $2e
    cp h
    or h
    and h
    ld b, h
    adc b
    or b

jr_063_5fe9:
    sub b
    ret nc

    ret nc

    ld [$7ff8], sp
    adc a
    ld hl, sp-$11
    add [hl]
    and c
    ld h, a
    ld a, $0c
    ld [$b6ec], a
    sub a
    db $eb
    jr nz, @+$01

    adc c
    inc sp
    ld [hl], d
    xor [hl]
    ld c, $2c
    or h
    or h
    and h
    ld c, b
    or b
    inc bc
    ld b, b
    adc d
    jr nz, @-$1e

    inc bc
    rrca
    dec de
    dec [hl]
    cpl
    rra
    inc b
    inc b
    inc bc
    ld [bc], a
    sub l
    ld bc, $0b06
    inc c
    rlca
    ld a, a
    cp b
    rst $28
    add [hl]
    and c
    rst $20
    ld a, [hl]
    inc c
    ld b, b
    ld [$1ded], a
    dec d
    ld a, [de]
    ld [$03ff], sp
    nop
    adc l
    ld bc, $0502
    dec [hl]
    ld a, $27
    daa
    ccf
    cpl
    add hl, hl
    ccf
    ld c, a
    ei
    inc bc
    nop
    xor l
    rst $38
    ld a, [hl]
    cp l
    ld b, d
    sbc c
    rst $38
    ld a, [hl]
    rst $20
    db $db
    inc a
    and [hl]
    rst $38
    rst $38
    db $ed
    cp h
    or a
    xor c
    sub d
    ld b, a
    inc [hl]
    ld sp, $3e29
    jr @+$15

    add hl, bc
    dec d
    db $10
    rra
    rst $38
    nop
    sub l
    rst $10
    cp l
    ld e, d
    ld a, [hl]
    ld b, d
    add d
    ld l, c
    sbc l
    ld a, $e7
    and l
    jr @+$01

    inc b
    nop
    db $fc
    ld bc, $1907
    ld hl, $713e
    rst $38
    xor [hl]
    or d
    ld l, c
    dec de
    dec b
    nop
    nop
    ld b, $3d
    add $bb
    rra
    rst $38
    ld [hl], b
    rst $18
    adc h
    ld [bc], a
    rst $08
    ld d, e
    jr z, @+$01

    inc b
    rlca
    ld c, $37
    ld a, a
    db $db
    xor a
    xor a
    ld e, b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0302
    ld bc, $ffdf
    rst $38
    ld [hl], b
    rst $18
    inc c
    ld b, d
    rst $08
    db $fd
    inc c
    ld [$1171], a
    adc d
    ld [$76ff], sp

jr_063_60ae:
    add [hl]
    ld [hl], d
    and $44
    inc e
    ld e, h
    ld a, h

jr_063_60b5:
    ld h, h
    and h
    adc b
    sub b
    ldh a, [$d0]
    ld [$01f8], sp
    inc bc
    rrca
    jr nz, jr_063_60e1

    dec bc
    rla
    db $10
    ccf
    ld a, [hl]
    xor $af
    or c
    ld l, b
    dec de
    dec b
    ldh a, [$8e]
    dec [hl]
    sbc [hl]
    ei
    ld sp, hl
    rst $30
    ld a, b
    rst $18
    inc c
    add d
    rst $08
    ld d, e
    rst $38
    ld [$00ff], sp
    ld hl, sp+$74
    sbc h

jr_063_60e1:
    ld a, b
    db $fc
    ld [hl], d
    and $45
    add hl, de
    ld a, d
    ld a, [$dad2]
    inc c
    ld hl, sp+$04
    nop
    db $dc, $01, $01
    nop
    nop
    jr @+$37

    ld a, d
    ld [hl], l
    ld [hl], l
    ld e, $17
    ld [bc], a
    nop
    ld e, $39
    or $19
    and $79
    rst $38
    cp $37
    cp $c6
    sbc e
    xor b
    db $e3
    pop af
    nop
    nop
    add b
    ld b, b
    jr nz, jr_063_60ae

    ld e, $e5
    push hl
    ld d, a
    ld e, [hl]
    sub $2e
    or $03
    cp e
    inc bc
    inc bc
    ld b, $0c
    rrca
    dec bc
    ld [$0408], sp
    dec b
    dec b
    inc bc
    nop
    ld bc, $0001

jr_063_612c:
    cp h
    add l
    db $fd
    ld a, a
    ld hl, sp-$79
    ld b, a
    jr nc, jr_063_60b5

    push de
    db $dd
    cp [hl]
    add [hl]
    ld h, l
    add h
    rst $38
    add hl, de
    ld b, e
    cp $8c
    ld [hl], h
    add sp, -$78
    ld [$3008], sp
    sub b
    adc b
    db $e4
    ld h, h
    jr jr_063_612c

    ld b, l
    nop
    sub b
    ld bc, $0303
    ld bc, $0703
    ld c, $0e
    rlca
    inc bc
    rra
    nop
    ld e, $3f
    ld h, a
    sbc $05
    rst $38
    adc l
    ld h, a
    ccf
    db $fd
    rst $38
    rst $38
    xor l
    nop
    nop
    add b
    ldh [$fc], a
    ld a, [hl]
    rst $30
    inc bc
    rst $38
    adc [hl]
    rst $30
    rst $38
    rst $38
    ei
    db $fd
    rst $38
    ld a, $67
    rst $18
    rst $30
    ld a, h
    ccf
    rrca
    rrca
    inc bc
    rlca
    adc c
    inc bc
    inc bc
    rlca
    rlca
    inc bc
    rst $38
    ld a, a
    ldh a, [$f9]
    dec b
    rst $38
    add h
    sub a
    rst $38
    cp $fe
    inc bc
    rst $38
    add l
    rst $00
    adc l
    ld e, a
    ei
    rst $38
    inc b
    cp $8c
    db $fc
    ld hl, sp-$08
    jr c, jr_063_61db

    db $fc
    db $fc
    rst $38
    ld a, a
    rst $38
    ldh a, [$f9]
    inc b
    rst $38
    adc h
    sub a
    rst $38
    ei
    ld hl, sp-$04
    rst $38
    rst $38
    rst $30
    call $5b8f
    rst $38
    inc b
    cp $8f
    db $fc
    ld a, b
    ldh a, [$e0]
    ldh [$f0], a
    ldh [$0e], a
    rra
    scf
    ld l, a
    ld a, h
    ccf
    rra
    rrca
    inc b
    rlca
    adc b
    rrca
    rra
    rra
    rrca
    rst $38
    ld a, a
    ldh a, [$f9]
    dec b
    rst $38
    add h
    sub a
    rst $38

jr_063_61db:
    cp $fe
    inc bc
    rst $38
    and a
    nop
    nop
    ld bc, $0703
    ld l, $7f
    ld l, a
    ld a, a
    ld a, a
    ld l, a
    ld a, l
    ld a, a
    ld a, a
    cp $bf
    nop
    nop
    rst $38
    rst $38
    add c
    cp $ff
    rst $20
    rst $38
    rst $38
    inc a
    rst $20
    jp $ffff


    db $dd
    rst $18
    rst $08
    rst $08
    rst $10
    db $ed
    ld hl, sp+$7b
    inc bc
    ld a, a
    adc h
    ccf
    ccf
    ld e, $3e
    ccf
    ccf
    rst $38
    rst $38
    db $eb
    rst $38
    rst $38
    rst $20
    inc bc
    rst $38
    add a
    sbc a
    rst $20
    rst $38
    ld h, [hl]
    ld h, [hl]
    rst $38
    rst $38
    inc bc
    nop
    adc b
    ld bc, $1e07
    ccf
    ld a, a
    ld a, a
    rst $38
    sbc e
    inc bc
    rst $38
    xor b
    ld a, a
    rra
    nop
    ld b, $3f
    ei
    rst $38
    ld a, a
    rst $28
    rst $38
    rst $38
    ldh [$f3], a
    rst $38
    cp $fe
    rst $38
    rst $38
    rrca
    rrca
    dec a
    ld a, [hl]
    rst $08
    cp a
    ld sp, hl
    rst $38
    rst $38
    ld e, a
    rlca
    rlca
    inc bc
    rlca
    rlca
    inc bc
    rst $38
    ld a, e
    rst $18
    rst $38
    ldh [$f3], a
    inc b
    rst $38
    add e
    sbc a
    rst $38
    cp $03
    rst $38
    add [hl]
    ei
    rst $38
    adc a
    dec de
    cp [hl]
    or $04
    cp $91
    db $fc

jr_063_6269:
    ld hl, sp+$78
    jr c, jr_063_6269

    db $fc
    inc bc
    ld c, $3d
    ld a, a
    ccf
    dec e
    jr c, jr_063_62b5

    ld a, a
    db $db
    cp a
    inc bc
    rst $38
    adc a
    ld a, a
    rra
    cp $7f
    ei
    rst $28
    rst $38
    sbc a
    rst $38
    rst $38
    ldh [$f3], a
    rst $38
    cp $fe
    inc bc
    rst $38
    adc d
    ld hl, sp-$04
    sbc $fe
    call c, $8ff6
    dec de
    cp a
    rst $30
    inc bc
    rst $38
    add e
    ccf
    cp $fc
    inc bc
    nop
    sub c
    ld bc, $0303
    ld bc, $3f19
    ld l, a
    rst $10
    sbc $fe
    ld a, a
    ccf
    rra
    ld e, $3f
    rst $20
    rst $28
    inc b
    rst $38
    adc a

jr_063_62b5:
    rst $20
    rst $38
    ld a, a
    rst $38
    rst $20
    rst $30
    db $fc
    cp $00
    add b
    ret nz

    ldh [$fc], a
    ld a, [hl]
    rst $30
    inc bc
    rst $38
    adc e
    rst $30
    rst $38
    rst $38
    ei
    db $fd
    ld b, a
    ld b, $07
    rrca
    rra
    inc e
    inc bc
    rra
    inc bc
    rrca
    adc a
    rlca
    ld bc, $0303
    ld bc, $7fff
    rst $38
    rst $38
    rst $08
    rst $38
    ld hl, sp-$01
    rst $38
    cpl
    ld b, $ff
    sub b
    rst $20
    rst $38
    rst $38
    cp $fe
    cp h
    ld a, h
    db $fc
    db $fc
    ld hl, sp-$08
    ld a, h
    ld e, $9e
    db $fc
    ld hl, sp+$42
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    adc l
    inc bc
    rlca
    ld l, c
    ld a, d
    ld e, a
    ld e, [hl]
    ld e, a
    ld e, a
    ld e, [hl]
    dec [hl]
    inc e
    cpl
    inc hl
    inc bc
    nop
    adc l
    ld hl, sp+$06
    ld sp, hl
    ld l, [hl]
    rst $38
    ccf
    cp $7e
    cp l
    jp c, $fc7e

    ld hl, sp+$05
    nop

jr_063_6324:
    add e
    and b
    ld d, b
    ldh a, [rDIV]
    ret nc

    add h
    and b
    ld [hl], b
    ld a, b
    ld a, h
    inc b
    nop
    xor h
    inc bc
    scf
    cpl
    scf
    daa
    dec l
    dec hl
    ld a, [de]
    ld l, $26
    daa
    cpl
    nop
    inc bc
    rlca
    ld a, a
    jp $e7c3


    rst $38
    jp $3891


    cp c
    stop
    rst $00
    cp c
    jr c, jr_063_6324

    ld a, [$fbf5]
    ld sp, hl
    db $fd
    and $e7
    db $fc
    pop bc
    ld d, e
    ld [hl], c
    ldh [$d8], a
    cp h
    dec b
    nop
    add e
    ret nz

    ld b, b
    ret nz

    dec b
    ld b, b
    inc bc
    add b
    inc bc
    nop
    or [hl]
    inc bc
    ld h, a
    ld d, a
    ld l, a
    ld e, a
    ld d, d
    dec h
    inc [hl]
    ld e, [hl]
    adc a
    adc e
    sbc h
    sbc h
    nop
    ld bc, $c07f
    db $fd
    jp $b091


    ld a, c
    ld a, b
    jr nc, jr_063_6384

jr_063_6384:
    add e
    ld a, l
    nop
    nop
    xor $f5
    ld a, [$fdfe]
    rst $38
    cp $79
    or c
    and e
    jr z, jr_063_640c

    rst $30
    rst $08
    rrca
    rrca
    nop
    nop
    add b
    add b
    or b
    ld d, b
    or b
    ret nc

    db $10
    inc bc
    ld d, b
    add c
    jr nz, jr_063_63a9

    and b
    adc h
    adc b

jr_063_63a9:
    ld b, b
    ld d, e
    inc h
    jr nz, jr_063_63c7

    inc e
    inc hl
    ld c, c
    cp c
    ld e, d
    inc h
    inc b
    nop
    adc c
    rlca
    nop
    ld [$0584], sp
    adc a
    ld a, $fa
    rla
    inc bc
    rst $38
    add c
    cp $03
    nop
    adc h

jr_063_63c7:
    jr nz, jr_063_6409

    ld b, b
    ld hl, sp-$02
    sub a
    xor l
    and d
    db $fc
    ld hl, sp-$28
    adc b
    ld [$a200], sp
    ld sp, $362b
    ld l, $23
    ld a, [hl+]
    dec l
    add hl, hl
    db $10
    inc de
    rla
    rla
    rra
    ccf
    ld l, a
    ld hl, sp-$01
    db $fc
    db $fd
    ld a, e
    rla
    daa
    inc hl
    or b
    db $fc
    ld l, a
    add b
    add b
    ld hl, $2e12
    dec hl
    dec sp
    add hl, sp
    inc bc
    ccf
    sub b
    daa
    rra
    inc bc
    nop
    inc bc
    inc bc
    ld bc, $4180
    adc $ff
    cp $f4
    ei

jr_063_6409:
    or $fe
    inc b

jr_063_640c:
    rst $38
    sbc a
    ld a, a
    rst $38
    di
    db $e4
    jp c, $8e8e

    ld b, d
    add [hl]
    ld e, $82
    sub $b4
    ld hl, sp-$20
    ldh a, [$f8]
    ld hl, sp-$20
    ld l, $24
    ld de, $0910
    ld d, $3b
    ld h, c
    ld d, e
    ld c, d
    inc l
    db $10
    dec b
    nop
    sbc c
    cp $01
    nop
    rst $00
    db $10
    rst $38
    rst $38
    ret nc

    rst $38
    rst $38
    ld a, a
    ccf
    rrca
    ld bc, $3c03
    dec a
    add hl, de
    ld [bc], a
    ld c, $3f
    sbc $b9
    ld [hl], a
    rst $28
    inc b
    rst $38
    adc [hl]
    pop bc
    add e
    add b
    ldh [$f0], a
    add sp, -$3c
    add h
    or d
    adc $83
    and c
    db $ed
    sub d
    inc bc
    ret nz

    adc e
    add b
    adc b
    ld b, b
    ld d, e
    inc h
    jr nz, jr_063_64bd

    sbc h
    and a
    xor c
    ld d, b
    ld [$8b00], sp
    rst $38
    nop
    rst $00
    rst $00
    db $10
    rst $38
    ret nc

    cp a
    ld a, a
    rra
    rlca
    inc bc
    nop
    adc c
    rlca
    nop
    ld [$0584], sp
    adc a
    ld a, $fa
    rla
    inc b
    rst $38
    adc e
    jr jr_063_648f

    nop
    jr nz, jr_063_6506

    ld e, d
    and c
    add l
    or [hl]
    ld c, b

jr_063_648f:
    ret nz

    inc bc
    ldh a, [$83]
    ld hl, sp-$68
    ld [$0006], sp
    add d
    rrca
    rra
    inc b
    ccf
    add d
    rra
    rrca
    add hl, bc
    nop
    add c
    add b
    inc bc
    ret nz

    add d
    ldh a, [$fe]
    dec d
    nop
    adc h
    inc de
    ld [$443a], sp
    add h
    xor e
    ld l, e
    rra
    inc bc
    inc bc
    ld bc, $0601
    nop
    adc b
    ld a, a
    add b

jr_063_64bd:
    inc c
    inc e
    pop bc
    ld a, a
    rst $28
    ld [hl], b
    inc bc
    rst $38
    add d
    jr nc, jr_063_64e8

    inc bc
    nop
    sbc e
    inc bc
    rlca
    ld l, h
    rst $38
    rst $18
    rst $28
    rst $38
    ld sp, hl
    push af
    ei
    ld a, [hl]
    ccf
    ld a, a
    ld a, a
    nop
    nop
    ld hl, sp-$02
    rst $38
    rst $30
    sbc c
    rst $38
    rst $38
    rst $00
    db $d3
    ld h, a
    ccf
    inc bc
    rst $38

jr_063_64e8:
    inc b
    nop
    adc h
    ldh [$f0], a
    ld hl, sp-$28
    cp b
    cp b
    ld hl, sp-$08
    ldh a, [$f8]
    db $cc, $de, $03
    nop
    sub b
    inc bc
    ld [hl], a
    ld a, a
    ld a, [hl]
    ld l, h
    ld a, [hl]
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, e

jr_063_6506:
    ld [hl], c
    inc bc
    rlca
    ld a, h
    inc bc
    rst $38
    add a
    ld a, h
    cp l
    ld a, [hl]
    rst $28
    rst $00
    ld b, [hl]
    rst $28
    inc bc
    rst $38
    adc e
    db $fc
    xor $27
    db $db
    db $ed
    rst $38
    ld a, a
    ccf
    ld a, $cf
    cp a
    inc bc
    rst $38
    add d
    rst $20
    db $c3, $03, $00


    add l
    add b
    ret nz

    ldh [$e0], a
    ld h, b
    dec b
    ldh [$03], a
    ret nz

    sub d
    nop
    nop
    inc bc
    rst $20
    cp $fe
    call c, $ffef
    ld a, [hl]
    ld a, a
    rst $38
    rst $38
    rst $30
    db $e3
    db $e3
    ld bc, $037f
    rst $38
    add [hl]
    ld a, a
    rst $28
    rst $08
    add [hl]
    add a
    rst $08
    dec b
    rst $38
    adc l
    rst $28
    dec de
    db $ed
    push af
    sbc $0e
    adc a
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$03
    ldh a, [$88]
    nop
    add b
    ret nz

    ldh a, [$f8]
    ld hl, sp-$28
    cp b
    inc b
    ld hl, sp-$7f
    ldh a, [$03]
    ld [hl], b
    adc l
    rst $30
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, $3f
    ld a, a
    rst $30
    rst $38
    rst $38
    ld a, [hl]
    inc h
    inc bc
    nop
    add c
    ld hl, sp+$04
    rst $38
    add e
    ld a, [hl]
    push af
    rst $20
    dec b
    rst $38
    sub b
    cp $00
    nop
    ldh a, [$e0]
    ld hl, sp-$02
    rst $10
    db $fd
    rst $38
    rst $38
    cp $fc
    db $fc
    db $dc, $88, $06
    nop
    add l
    ld sp, $7f7b
    ld l, a
    ld [hl], a
    inc b
    ld a, a
    adc a
    ccf
    inc a
    jr c, @+$3a

    ccf
    ld l, b
    rst $18
    rst $38
    rst $18
    sub a
    adc [hl]
    db $fc
    ld hl, sp-$08
    db $fc
    inc bc
    rst $38
    inc bc
    ld a, a
    sub a
    dec a
    ld a, l
    ld a, a
    ld a, h
    ld l, [hl]
    ld h, a
    ld l, a
    ld a, a
    ld a, a
    ccf
    rra
    inc bc
    rlca
    ld b, $03
    rst $38
    cp a
    cp a
    ld hl, sp+$19
    cpl
    rst $00
    rst $28
    ld b, $ff
    sbc a
    db $fd
    rst $38
    cp [hl]
    rst $20
    di
    di
    rst $38
    rst $38
    db $e3
    ld a, a
    db $eb
    sbc $fc
    ld hl, sp-$08
    db $fc
    db $fc
    ld hl, sp+$71
    ld a, e
    ccf
    ccf
    ld e, $3f
    ld h, a
    rst $18
    rst $38
    rst $38
    ld a, a
    inc a
    db $10
    inc bc
    nop
    inc b
    rst $38
    sub l
    jr c, @+$01

    rst $38
    and b
    ccf
    cp a
    rst $38
    rst $38
    ld a, a
    ccf
    rrca
    rlca
    jp $e7c3


    rst $38
    db $fd
    ld hl, sp-$07
    ld l, a
    rst $08
    ld b, $ff
    adc d
    rst $00
    ldh [$f0], a
    jr jr_063_6691

    ld a, [hl]
    cp $ff
    di
    db $fd
    inc bc
    rst $38
    adc a
    ld a, [c]
    ldh [$e0], a
    ret nz

    rst $30
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp $ef
    rst $38
    rst $38
    ld sp, hl
    ld d, b
    dec b
    nop
    inc b
    rst $38
    adc l
    jr c, jr_063_666b

    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    ld a, a
    rra
    rlca
    nop
    nop
    ld hl, sp+$04
    rst $38
    add e
    ld a, [hl]
    push af
    rst $20
    ld b, $ff
    adc c
    inc e
    ld [$fefc], sp
    rst $20
    rst $18
    rst $38
    rst $38
    cp $04
    ld hl, sp-$7c
    db $fc
    db $fc
    sbc h
    ld [$0009], sp
    add [hl]
    ld b, b
    ld b, b
    ld h, b
    jr nc, jr_063_669e

    rra
    dec c
    nop
    add d
    ld hl, sp-$40
    inc de
    nop
    add e
    inc a
    ccf
    ld a, a

jr_063_666b:
    inc bc
    rst $38
    add a
    cp $7f
    ld e, $07
    inc bc
    inc bc
    ld bc, $0003
    inc b
    rst $38
    add l
    di
    db $e3
    rst $38
    rst $38
    jr nc, jr_063_6685

    rst $38
    add d
    ld [hl], b
    jr nz, jr_063_6687

jr_063_6685:
    nop
    nop

jr_063_6687:
    nop
    nop
    nop
    nop
    dec b
    nop
    adc e
    dec a
    inc sp
    add hl, sp

jr_063_6691:
    ld [hl], l
    jp z, Jump_063_478a

    ld a, $17
    dec a
    cpl
    inc b
    nop
    or c
    rst $38
    ld l, a

jr_063_669e:
    rst $38
    cp $f0
    ccf
    ld h, h
    rrca
    ei
    rst $38
    rst $00
    db $fc
    nop
    nop
    ld e, $19
    add hl, bc
    ld a, [bc]
    inc b
    dec b
    inc c
    ld a, $77
    res 1, e
    ld b, a
    dec sp
    ld bc, $b77f
    rst $38
    rst $38
    cp $71
    inc sp
    ld hl, sp+$3f
    ld h, h
    rrca
    rst $38
    rst $38
    rst $08
    rst $38
    rst $38
    adc a
    rst $38
    ld c, c
    cp $be
    dec c
    nop
    add l
    inc c
    rrca
    ld a, [bc]
    inc b
    dec b
    inc bc
    ld [bc], a
    adc b
    ld a, $75
    res 0, e
    ld b, l
    dec sp
    ccf
    ld [hl], a
    inc bc
    rst $38
    sbc d
    cp $71
    inc de
    ld hl, sp+$7f
    jr c, jr_063_674e

    adc a
    rst $38
    rst $38
    ld a, b
    rst $08
    rst $38
    ld a, a
    ld b, a
    ccf
    ccf
    rra
    ld d, $0f
    rrca
    rlca
    ld c, $0c
    inc a
    jr jr_063_6701

    nop
    adc c
    inc a

jr_063_6701:
    ld a, a
    jp z, $858c

    ld b, [hl]
    ld a, $06
    ld [bc], a
    dec b
    ld bc, $007f
    ld a, a
    nop
    halt
    adc h
    dec a
    ld a, a
    ld l, a
    ld a, a
    rst $08
    cp a
    rst $38
    rst $38
    ld a, a
    scf
    ld l, [hl]
    ld [hl], a
    inc bc
    nop
    xor d
    rst $38
    rst $38
    or d
    rst $38
    adc a
    rst $38
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    ccf
    rst $38
    nop
    rra
    ccf
    scf
    rra
    rra
    rrca
    rrca
    ccf
    ld a, e
    rst $08
    cp [hl]
    cp $ff
    ld a, a
    dec sp
    rst $38
    jp c, $e1ff

    adc a
    cp $fc

jr_063_6745:
    rst $38
    rst $38
    ei
    rst $38
    ldh a, [rOBP0]
    inc bc
    rst $38
    add [hl]

jr_063_674e:
    ldh a, [rIE]
    rst $30
    cp a
    rst $18
    cp $0b
    nop
    sub a
    inc c
    rra
    dec de
    dec e
    rrca
    rrca
    rlca
    rlca
    ccf
    ld a, a
    rst $08
    cp a
    rst $38
    rst $38
    ld a, e
    ld a, a
    jp c, $e3ff

    pop bc
    adc a
    cp $fc
    inc bc
    rst $38
    add l
    ei
    rst $38
    ld [hl], b
    jr nc, jr_063_6745

    inc bc
    rst $38
    sub d
    ld hl, sp+$7f
    ld a, a
    ccf
    add hl, sp
    rra
    rra
    rrca
    rra
    ld e, $66
    inc a
    jr jr_063_6787

jr_063_6787:
    inc a
    ld a, a
    res 7, l
    inc bc
    rst $38
    add e
    ld a, e
    ccf
    rlca
    dec b
    inc bc
    ld a, a
    nop
    ld a, a
    nop
    ld [hl], h
    nop
    nop
    nop
    nop
    adc [hl]
    nop
    dec c
    ccf
    ld a, a
    ld a, c
    ei
    push af
    ld [hl], c
    jr nc, jr_063_67e6

    jr jr_063_67b0

    inc bc
    ld bc, $0303
    sbc a
    add a
    rst $00

jr_063_67b0:
    call $f7d3
    rst $30
    rst $28
    rst $10
    ld e, e
    ld e, [hl]
    sbc $df
    rst $28
    db $e3
    ld sp, hl
    ld [hl], b
    adc h
    ld h, a
    rst $38
    rst $18

Jump_063_67c2:
    rst $38
    rst $38
    rst $28
    rst $20
    sbc l
    rst $18
    rst $18
    rra
    rst $10
    ld sp, hl
    db $fc
    inc bc
    nop
    sub c
    add b
    ret nz

    and b
    ret nc

    ret c

    ld l, b
    add sp, -$22
    cp $e4
    xor b
    ld d, b
    jr nc, jr_063_6841

    ld e, a
    ld a, l
    ld a, [hl]
    inc bc
    ld a, a
    add c
    jr nc, jr_063_67ee

jr_063_67e6:
    nop
    call z, $deba
    xor a
    ld [hl], e
    db $fd
    rst $38

jr_063_67ee:
    rst $38
    cp $3f
    rrca
    rlca
    rlca
    inc bc
    rlca
    rlca
    nop
    rst $38

Call_063_67f9:
    ld a, c
    add e
    cp $fc
    db $fd
    ei
    sbc $3d
    ld sp, hl
    ldh a, [$f0]
    add sp, -$08
    ld hl, sp+$00
    ld [hl], b
    ld hl, sp-$08
    db $e4
    or h
    ld hl, sp-$04
    ld a, [hl]
    sub [hl]
    inc e
    sub [hl]
    db $76
    ld e, h
    jr nc, jr_063_6817

jr_063_6817:
    nop
    dec c
    rra
    ld a, a
    or $fe
    ld h, [hl]
    rst $38
    rst $38
    ld a, a
    inc a
    ld a, a
    ld a, a
    ld [hl], a
    ld hl, $0303
    add d
    rst $00
    rst $00
    set 3, a
    ld e, [hl]
    ld [hl], l
    ld a, l
    ld a, [hl]
    ld a, a
    db $fc
    cp $04
    rst $38
    sub b
    ld [hl], b
    adc h
    ld h, a
    rst $38
    rst $18
    ld [hl], a
    cp a
    cp a
    ld a, a
    sbc c

jr_063_6841:
    sub $d6
    add hl, de
    rst $10
    rst $38
    rst $38
    inc bc
    nop
    sbc b
    add b
    ret nz

    and b
    ret nc

    ret c

    ld l, b
    add sp, -$24
    ld a, [$eef4]
    cp $f4
    ld h, e
    ld e, a
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, a
    ld c, a
    ccf
    rra
    dec e
    ld [$0005], sp
    sub h
    cp [hl]
    sbc $af
    ld e, a
    push hl
    cp [hl]
    cp a
    sbc $a5
    jr jr_063_6877

    rlca
    dec b
    rlca
    rlca
    nop
    rst $38
    ld a, a

jr_063_6877:
    sbc a
    db $fc
    inc bc
    rst $38
    and l
    rst $18
    ccf
    cp $3e
    ld sp, hl
    db $fc
    db $fc
    ld hl, sp+$00
    ld [hl], b
    ld hl, sp-$08
    db $f4
    db $fc
    ld hl, sp-$04
    ld a, $6e
    db $fc
    call c, $fefe
    db $fc
    ld h, b
    nop
    add d
    rst $00
    rst $00
    set 3, a
    ld e, [hl]
    ld [hl], l
    ld a, l
    ld a, [hl]
    ld a, a
    db $fc
    cp $04
    rst $38
    sub b
    ld [hl], b
    adc h
    ld h, a
    rst $38
    rst $18
    ld [hl], a
    cp a
    cp a
    ld a, a
    sbc c
    sub $d6
    add hl, de
    rst $10
    rst $38
    rst $38
    inc bc
    nop
    adc l
    add b
    ret nz

    and b
    ret nc

    ret c

    ld l, b
    add sp, -$24
    ld a, [$eef6]
    cp $f4
    ld [$8c00], sp
    inc a
    ld a, [hl]
    sub [hl]
    sbc a
    rst $20
    add d
    ld a, h
    jr jr_063_6933

    ld e, a
    ld a, l
    ld a, [hl]
    inc bc
    ld a, a
    add e
    jr nc, jr_063_68e3

    ld bc, $0006
    adc h
    cp d
    sbc $af
    ld [hl], e
    db $fd
    rst $38
    rst $38

jr_063_68e3:
    cp $bd
    rra
    rlca
    dec b
    inc bc
    rlca
    sbc a
    nop
    rst $38
    ld a, c
    add e
    cp $fc
    db $fd
    ei
    sbc $3f
    rst $38
    inc [hl]
    ld hl, sp-$04
    db $fc
    ld hl, sp+$00
    ld [hl], b
    ld hl, sp-$08
    db $e4
    or h
    ld hl, sp-$04

jr_063_6903:
    ld e, [hl]
    or $fc
    ld [c], a
    ld d, d
    ld c, h
    jr nc, jr_063_698a

    nop
    inc bc
    nop
    jp $3f0d


    ld [hl], d
    jp nc, $b4cf

    sbc e
    rst $18
    ld a, a
    ld l, a
    ccf
    rra
    ld b, $03
    ld b, $66
    add a
    call Call_063_7b6d
    rst $38
    ld a, [hl]
    dec a
    inc a
    ld a, [$fdff]
    rst $30
    ld a, a
    dec a
    ld a, a
    rst $10
    db $fc
    rst $38
    sbc a
    pop de

jr_063_6933:
    db $ec
    ld h, d

jr_063_6935:
    ld sp, $7f3c
    ei
    inc [hl]
    jr nc, jr_063_6935

    rst $38
    ld a, a
    rst $38
    nop
    nop
    add b
    ret nz

    ldh [$f0], a
    jr c, jr_063_6903

    call c, $ffde
    di
    sbc [hl]
    ld a, h
    ld hl, sp-$08
    rst $38
    cp $fe
    inc b
    rst $38
    add d
    ld a, a
    jr nc, @+$09

    nop
    add l
    call Call_063_7167
    db $fc
    cp $04
    rst $38
    sub e
    ccf
    rrca
    rrca
    rlca
    rrca
    rrca
    rlca
    rst $28
    rst $38
    cp $7f
    dec de
    di
    ld h, $37
    rst $38
    rst $38
    ld sp, hl
    ld hl, sp+$03
    db $fc
    db $dd
    ld hl, sp-$28
    adc h
    inc e
    ld a, [hl]
    cp $cc
    ld c, [hl]
    ld a, [c]
    ei
    xor $fb
    db $db
    xor $7c
    jr nc, jr_063_6989

jr_063_6989:
    rra

jr_063_698a:
    ld [hl], d
    ld a, [c]
    sbc e
    adc e
    ld sp, hl
    sub b
    add b
    ldh [$73], a
    adc $d8
    rst $18
    ld [hl], a
    ld h, $66
    rst $00
    ld l, l
    ld l, l
    ld a, l
    pop af
    di
    rst $38
    sbc [hl]
    sub a
    ei
    rst $08
    ld d, a
    rst $18
    daa
    ld [hl], a
    pop de
    db $fc
    rst $38
    sbc a
    ld b, c
    db $ec
    ld [$6671], a
    rst $28
    rst $28
    dec a
    add hl, sp
    rst $38
    ld a, a
    ld a, c
    ld a, h
    nop
    nop
    add b
    ret nz

    ldh [$f0], a
    jr c, @+$3e

    call c, $fedc
    rst $20
    adc d
    dec sp
    ld e, e
    ld e, $ff
    cp $ea
    jp $c0c1


    db $f4
    db $76
    ld [hl], $37
    dec e
    ld [$0004], sp
    ldh [$c9], a
    ld l, c
    ld [hl], e
    ei
    sbc $47
    jp $fbe3


    cp a
    dec e
    inc c
    ld c, $0c
    rrca
    rlca
    rst $28
    ld sp, hl
    ld h, d
    ld [hl], a
    sub [hl]
    ei
    inc h
    inc [hl]
    db $db
    db $db
    rst $08
    rrca
    rla
    rlca
    db $fc
    ld hl, sp-$24
    xor h
    inc e
    ld a, [hl]
    adc $8c
    sbc [hl]
    db $e3
    sub e
    ld e, $26
    inc hl
    sub e
    sbc [hl]
    db $fc
    ld h, b
    rst $00
    ld l, l
    ld l, l
    ld a, l
    pop af
    di
    cp $9e
    sub a
    ei
    rst $08
    ld d, a
    rst $18
    daa
    ld [hl], a
    pop de
    db $fc
    rst $38
    sbc a
    ld b, c
    db $ec
    ld [$e671], a
    rst $28
    rst $28
    add hl, sp
    dec sp
    rst $38
    ld a, a
    ld a, c
    ld a, h
    nop
    nop
    add b
    ret nz

    ldh [$f0], a
    jr c, jr_063_6a6c

    call c, $fedc
    rst $20
    adc e
    dec sp
    ld e, e
    ld e, $08
    nop
    adc e
    inc a
    ld b, d
    ld [$99e1], a
    cp $64
    jr @+$01

    cp $fe
    inc b
    rst $38
    add h
    ld a, a
    ld a, $0b
    ld bc, $0005
    add l
    call Call_063_7167
    db $fc
    cp $03
    rst $38
    and a
    db $e3
    cp b
    dec e
    ld c, $0c
    ld c, $0f
    rlca
    rst $28
    rst $38
    cp $7f
    dec de
    di
    ld h, $37
    db $db
    db $db
    rst $18
    inc e

jr_063_6a6c:
    ld d, $06
    db $fc
    ld hl, sp-$28
    adc h
    inc e
    ld a, [hl]
    cp $cc
    ld c, [hl]
    or d
    dec bc

jr_063_6a79:
    ld c, $9f
    rst $38
    cp $7c
    jr nc, jr_063_6aff

    nop
    inc b
    nop
    nop
    nop
    and b
    inc e
    ld a, $3f
    ld e, a
    xor [hl]
    sbc c
    ld a, [hl]
    ld b, b
    ld d, e
    ccf
    ld a, $3f
    add hl, de
    rra
    cpl
    rra
    jr c, @+$26

    ld h, h
    call nc, $0c54
    jr jr_063_6ada

    cp $de
    ld h, $da
    jp z, $f8e4

    db $fc
    ld c, $00
    db $db
    inc a
    rst $38
    inc e
    ld a, $3f
    ld e, a
    xor [hl]
    sbc c
    ld a, [hl]
    ld b, b
    ld d, e
    ccf
    cp [hl]
    rst $38
    ld sp, hl
    ld a, a
    ld a, a
    nop
    jr c, jr_063_6ae1

    ld h, h
    call nc, $0c54
    jr jr_063_6aff

    cp $de
    daa
    db $db
    set 4, a
    rst $38
    ld bc, $3e1c
    ccf
    ld e, a
    xor [hl]
    sbc c
    ld a, [hl]
    ld b, b
    ld d, e
    ccf
    ld a, $3f
    add hl, de
    rrca
    inc bc

jr_063_6ada:
    rlca
    jr c, jr_063_6b01

    ld h, h
    call nc, $0c54

jr_063_6ae1:
    jr c, jr_063_6b5b

    db $fc
    db $fc
    sbc h
    ld l, h
    jr z, jr_063_6a79

    ldh [$e0], a
    dec c
    rrca
    dec bc
    add hl, bc
    ld a, [bc]
    dec b
    inc b
    ld c, $1d
    dec e
    ld [hl+], a
    inc sp
    inc de
    rrca
    dec b
    inc bc
    jp $ffe7


    rst $20

jr_063_6aff:
    db $db
    ld h, [hl]

jr_063_6b01:
    rst $38
    inc h
    rst $20
    inc bc
    rst $38
    or h
    inc a
    rst $38
    rst $20
    rst $20
    nop
    nop
    inc bc
    rlca
    jr jr_063_6b4f

    ccf
    ld e, a
    xor [hl]
    sbc e
    ld a, [hl]
    ld b, l
    ld e, h
    ld a, $0b
    rlca
    nop
    nop
    ret nz

    ldh a, [$38]
    inc h
    ld h, h
    call nc, $fd5e
    ld e, a
    xor a
    xor a
    ld e, a
    cp $fe
    sbc h
    cp [hl]
    cp a
    ld e, a
    xor [hl]
    sbc c
    ld a, [hl]
    ld b, b
    ld d, e
    ccf
    ld a, $3f
    add hl, de
    rra
    cpl
    rra
    dec c
    nop
    and e
    ld c, b
    or a
    adc a
    sbc h
    cp [hl]
    cp a
    ld e, a
    xor [hl]
    sbc c
    ld a, [hl]
    ld b, b
    ld d, e
    ccf
    cp [hl]
    rst $38
    ld sp, hl
    ld a, a

jr_063_6b4f:
    ld a, a
    nop
    sbc h
    cp [hl]
    cp a
    ld e, a
    xor [hl]
    sbc c
    ld a, [hl]
    ld b, b
    ld d, e
    ccf

jr_063_6b5b:
    ld a, $3f
    add hl, de
    rrca
    inc bc
    rlca
    ld [$8600], sp
    rlca
    ld c, $18
    ld d, $0d
    ld [bc], a
    ld [$8600], sp
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    inc bc
    inc b
    nop
    sub b
    inc e
    ld a, $3f
    ld e, a
    xor [hl]
    sbc c
    ld a, [hl]
    ret nz

    ld d, e
    ccf
    ld a, $ff
    add hl, de
    rra
    cpl
    rra
    ld b, $00
    adc d
    inc bc
    rrca
    rra
    rra
    ccf
    ccf
    cpl
    ld [hl], b
    rst $38
    rst $38
    dec b
    nop
    dec bc
    rst $38
    add l
    rlca
    rra
    ccf
    ld a, a
    ld a, a
    dec b
    rst $38
    sub [hl]
    ld a, a
    ld e, a
    daa
    ld a, b
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld e, a
    ld e, a
    cpl
    cpl
    rla
    dec bc
    add hl, bc
    inc b
    dec b
    dec b
    dec bc
    rrca
    rra
    rra
    rlca
    nop
    add l
    rlca
    rrca
    rra
    ccf
    ccf
    inc b
    ld a, a
    add [hl]
    ld c, a
    inc hl
    db $10
    ld [$0404], sp
    dec b
    ld [bc], a
    add hl, bc
    nop
    add l
    rlca
    rra
    ccf

Call_063_6bcf:
    ld a, a
    ld a, a
    inc b
    rst $38
    add [hl]
    cp a
    cp a
    ld e, a
    nop
    jr c, jr_063_6c12

    inc bc
    ld a, h
    add d
    cp $fe
    inc bc
    cp d
    inc bc
    ld d, h
    adc b
    jr z, jr_063_6c0e

    nop
    nop
    jr c, jr_063_6c22

    inc a
    ld d, h
    inc b
    ld a, h
    add c
    ld d, h
    inc bc
    jr c, jr_063_6c45

    nop
    add l
    ccf
    ld a, a
    ld h, e
    ld a, [c]
    db $dd
    inc bc
    rst $38
    sbc b
    rst $28
    ld a, [hl]
    ld h, a
    ld a, c
    ccf
    ccf
    ld l, [hl]
    ccf
    db $ec
    cp $de
    ld a, [hl]
    cp $f6
    db $fc
    and $c3

jr_063_6c0e:
    ld a, e
    rst $38
    rst $20
    rst $30

jr_063_6c12:
    cp $fc
    ld a, [hl]
    dec c
    nop
    adc b
    inc a
    rst $38
    rst $38
    ccf
    ld a, a
    ld h, e
    ld a, [c]
    db $dd
    inc bc
    rst $38

jr_063_6c22:
    add h
    rst $28
    cp $e7
    ld sp, hl
    inc bc
    rst $38
    adc [hl]
    ld a, a
    db $ec
    cp $de
    ld a, [hl]
    cp $f6
    db $fc
    and $c3
    ld a, a
    rst $38
    rst $20
    rst $30
    inc bc
    rst $38
    add l
    ccf
    ld a, a
    ld h, e
    ld a, [c]
    db $dd
    inc bc
    rst $38
    db $dd
    rst $28
    ld a, [hl]

jr_063_6c45:
    ld h, a
    ld a, c
    ccf
    rra
    rrca
    rrca
    db $ec
    cp $de
    ld a, [hl]
    cp $f6
    db $fc
    call z, Call_063_7686
    cp $9e
    call c, $f0f8
    ldh a, [$1f]
    dec de
    dec e
    rra
    rra
    rrca
    rrca
    dec de
    inc sp
    ld a, $7f
    ld l, a
    ccf
    rra
    dec c
    rlca
    rst $38
    rst $38
    jr jr_063_6cab

    rst $20
    rst $38
    rst $38
    db $db
    db $db
    rst $38
    jp $ff3c


    rst $38
    rst $20
    rst $20
    nop
    inc bc
    rlca
    rra
    ccf
    ld a, a
    ld a, a
    ld a, [c]
    db $dd
    rst $38
    rst $38
    cp $ef
    ld a, a
    dec sp
    rrca
    nop
    ret nz

    ldh a, [$f8]
    db $ec
    cp $de
    ld a, [hl]
    ei
    rst $20
    di
    ld a, e
    ld a, e
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    db $e3
    ld a, [c]
    db $dd
    inc bc
    rst $38
    adc b
    rst $28
    ld a, [hl]
    ld h, a
    ld a, c
    ccf
    ccf
    ld l, [hl]
    ccf

jr_063_6cab:
    dec c
    nop
    add c
    ld c, e
    inc b
    rst $38
    add e
    db $e3
    ld a, [c]
    db $dd
    inc bc
    rst $38
    add h
    rst $28
    cp $e7
    ld sp, hl
    inc bc
    rst $38
    add [hl]
    ld a, a
    rst $38
    rst $38
    db $e3
    ld a, [c]
    db $dd
    inc bc
    rst $38
    adc b
    rst $28
    ld a, [hl]
    ld h, a
    ld a, c
    ccf
    rra
    rrca
    rrca
    rlca
    nop
    adc b
    rlca
    rrca
    add hl, de
    scf
    dec a
    rra
    rrca
    ld [bc], a
    dec b
    nop
    adc c
    ld bc, $0703
    rlca
    inc bc
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    nop
    sub b
    ccf
    ld a, a

jr_063_6cec:
    ld h, e
    ld a, [c]
    db $dd
    rst $38
    ld a, a
    rst $38
    rst $28
    cp $e7
    ld sp, hl
    rst $38
    ccf
    ld a, [hl]
    ccf
    ld b, $00
    adc d
    inc bc
    inc c
    db $10
    db $10
    jr nz, jr_063_6d23

    jr nc, jr_063_6d84

    add b
    rst $38
    dec b
    nop
    add c
    rst $38
    add hl, bc
    nop
    add [hl]
    rst $38
    rlca
    jr @+$22

    ld b, b
    ld b, b
    dec b
    add b
    sub [hl]
    ld b, b
    ld h, b
    jr c, jr_063_6d62

    add b
    rst $38
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    jr nc, jr_063_6d53

jr_063_6d23:
    jr jr_063_6d31

    ld c, $07
    ld b, $06
    inc c
    ld [$1f10], sp
    rlca
    nop
    add l
    rlca

jr_063_6d31:
    ld [$2010], sp
    jr nz, jr_063_6d3a

    ld b, b
    add [hl]
    ld [hl], b
    inc a

jr_063_6d3a:
    rra
    rrca
    rlca
    rlca
    dec b
    inc bc
    add hl, bc
    nop
    add l
    rlca
    jr jr_063_6d66

    ld b, b
    ld b, b
    inc b
    add b
    add [hl]
    ret nz

    ret nz

    ld h, b
    nop
    jr z, jr_063_6d79

    inc bc
    ld b, h

jr_063_6d53:
    add d
    add d
    add d
    inc bc
    add $03
    ld l, h
    adc b
    jr c, jr_063_6d95

    db $10
    db $10
    jr z, jr_063_6d89

    inc l

jr_063_6d62:
    ld l, h
    inc b
    ld b, h
    add c

jr_063_6d66:
    ld l, h
    inc bc
    jr z, jr_063_6cec

    db $10
    db $10
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    nop
    add l

jr_063_6d79:
    ld bc, $0806
    inc e
    ld e, $0a
    nop
    add [hl]
    ld a, [hl]
    add c
    nop

jr_063_6d84:
    ld bc, $fe7c
    dec bc
    nop

jr_063_6d89:
    sub l
    add b
    ld h, b
    sub b
    ret z

    ld l, b
    ccf
    ccf
    ld a, a
    ld a, [hl]
    ld c, h
    ld h, b

jr_063_6d95:
    ld a, b
    ld a, l
    jr c, @+$22

    db $10
    db $10
    ld [$0106], sp
    nop
    inc bc
    cp $86
    ld a, [hl]
    jr c, @+$03

    ld a, $f8
    ldh [rTIMA], a
    nop
    xor l
    add c

jr_063_6dac:
    ld a, [hl]
    inc h
    inc [hl]
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [$1008], sp
    ld h, b
    add b
    nop
    ld bc, $1806
    inc a
    ld a, a
    ld a, a
    cp $b8
    ret nz

    ld sp, hl
    ld [hl], b
    ld b, b
    jr nz, jr_063_6de3

    ld b, $01
    rst $38
    nop
    ld bc, $ff7e
    rst $38
    cp $7c
    nop
    rst $38
    db $fc
    inc b
    nop
    sub c
    rst $38
    add b
    ld h, b
    ret c

    ld h, h
    ld [hl-], a

jr_063_6de1:
    ld a, [de]
    add hl, bc

jr_063_6de3:
    add hl, bc
    ld hl, $02c9
    ld [bc], a
    inc b
    jr jr_063_6e4b

    add b
    dec b
    nop
    adc e
    ld bc, $300e
    ld a, a
    rst $38

jr_063_6df4:
    cp a
    sbc $f8
    ld b, b
    jr nc, jr_063_6e09

    dec b
    nop
    adc e
    rst $38
    nop
    nop
    ccf
    rst $38
    ccf
    rra
    inc bc
    nop
    nop
    rst $38
    dec b

jr_063_6e09:
    nop
    adc e
    ld hl, sp+$07
    nop
    jp $e0e0


    db $c4, $f8, $00
    nop
    rst $38
    rlca
    nop
    adc b
    ret nz

    jr nz, jr_063_6dac

    ld d, b
    ld d, b
    db $10
    jr nz, jr_063_6de1

    add hl, bc
    nop
    adc b
    inc bc
    inc c
    db $10
    jr nz, jr_063_6e5c

    ld a, a
    ld a, a
    rst $38
    ld [$8800], sp
    ret nz

    jr nc, jr_063_6e3a

    db $e4
    inc [hl]
    sbc d
    adc $c5
    inc bc
    rst $38
    and l

jr_063_6e3a:
    or e
    db $e3
    pop hl
    and c
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_063_6e64

    db $10
    inc c
    inc bc
    push bc
    pop bc
    pop de
    sub c

jr_063_6e4b:
    pop hl
    pop bc
    add c
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    ld [$c030], sp
    nop
    nop
    ld e, $21
    ld c, h

jr_063_6e5c:
    ld b, d
    db $dd
    db $fd
    inc b
    db $fc
    add h
    db $fd
    db $fd

jr_063_6e64:
    rst $38
    sbc $04
    nop
    add d
    add b
    add b
    inc bc
    ld b, b
    rlca
    jr nz, jr_063_6df4

    sbc $dc
    ret c

    sub b
    ld b, $80
    add h
    ld b, b
    ld b, b
    ld hl, $0d1e
    nop
    add l
    ld bc, $0806
    inc de
    rla
    ld a, [bc]
    nop
    sub [hl]
    ld a, [hl]

jr_063_6e87:
    add c
    nop
    nop
    jp $23e7


    daa
    ld b, a
    ld b, e
    ld b, c
    ld c, b
    ld b, a
    ld b, e
    jr nz, jr_063_6eb6

    db $10
    db $10
    ld [$0106], sp
    nop
    inc bc
    rst $38
    add [hl]
    rst $20
    jp $8100


    rst $20
    jp $0005


    add d
    add c
    ld a, [hl]
    dec bc
    nop
    add l
    ld bc, $3c06
    ld a, [hl]
    rst $38
    ld a, [bc]
    nop
    add l
    ld a, [hl]

jr_063_6eb6:
    add c
    nop
    ld a, a
    cp $05
    rst $38
    adc h
    ld a, [hl]
    ld a, h
    ld a, b
    ld a, l
    jr c, jr_063_6ee3

    db $10
    db $10
    ld [$0106], sp
    nop
    inc b
    rst $38
    add l
    cp $7d
    ld a, $f8
    ldh [rTIMA], a
    nop
    add d
    add c
    ld a, [hl]
    ld c, e
    nop
    add l
    ld bc, $0f07
    rra
    rra
    ld a, [bc]
    nop
    add [hl]
    ld a, [hl]
    rst $38

jr_063_6ee3:
    rst $38
    cp $ff
    rst $38
    dec bc
    nop
    adc c
    add b
    ldh [rSVBK], a
    jr c, jr_063_6e87

    inc sp
    ld hl, $7365
    inc b
    ld a, a
    adc h
    ccf
    ccf
    rra
    rra
    rrca
    rlca
    ld bc, $c700
    add e
    and e
    rst $08
    dec bc
    rst $38
    sbc b
    ld a, [hl]
    call c, $eecc
    cp $ee
    xor $fe
    cp $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$e0]
    add b
    nop
    ld bc, $1f07
    ccf
    ld b, a
    ld c, e
    rst $00
    inc bc
    rst $38
    adc l
    ld a, a
    ld a, a
    ccf
    rra
    rlca
    ld bc, $ffff
    cp $ff
    jp $c3a1


    add hl, bc
    rst $38
    sub b
    add b
    ldh [$38], a
    sbc h
    adc $e6
    rst $30
    rst $30
    rst $38
    rst $30
    cp $fe
    db $fc
    ld hl, sp-$20
    add b
    dec b
    nop
    adc e
    ld bc, $3f0f
    ld a, a
    push bc
    pop hl
    rst $38
    rst $38
    ld a, a
    ccf
    rrca
    dec b
    nop
    inc b
    rst $38
    add d
    add sp, -$20
    dec b
    rst $38
    dec b
    nop
    add [hl]
    ld hl, sp-$01
    rst $38
    db $fc
    ld a, a
    ccf
    dec b
    rst $38
    rlca
    nop
    adc b
    ret nz

    ldh [rSVBK], a
    or b
    or b
    ldh a, [$e0]
    ret nz

    add hl, bc
    nop
    adc b
    inc bc
    rrca
    rra
    ccf
    ccf
    ld e, h
    ld c, b
    adc b
    ld [$8b00], sp
    ret nz

    ldh a, [$f8]
    inc e
    call z, Call_063_72e6
    ld a, e
    sbc h
    adc b
    call c, $ff06
    adc c
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rrca
    inc bc
    ld a, e
    ld a, a
    rlca
    rst $38
    sub d
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$10
    ret nz

    nop
    nop
    ld e, $3f
    ld [hl], e
    ld a, l
    cp $e6
    and a
    and a
    rst $30
    inc bc
    and a
    add d
    rst $38
    rst $38
    inc b
    nop
    add d
    add b
    add b
    inc bc
    ret nz

    rlca
    ldh [$0a], a
    rst $38
    add h
    ld a, a
    ld a, a
    ccf
    ld e, $0d
    nop
    add l
    ld bc, $0f07
    rra
    rra
    ld a, [bc]
    nop
    add c
    ld a, [hl]
    dec b
    rst $38
    add h
    ld a, $3c
    ld a, h
    ld a, [hl]
    inc b
    ld a, a
    adc h
    ccf
    ccf
    rra
    rra
    rrca
    rlca
    ld bc, $3c00
    jr jr_063_7037

    inc a
    dec bc
    rst $38
    add c
    ld a, [hl]
    dec bc
    nop
    add l
    ld bc, $3f07
    ld b, e
    add c
    ld a, [bc]
    nop
    add a
    ld a, [hl]
    rst $38
    rst $38
    cp $83
    ld bc, $0391
    add c
    add c
    ld b, e
    inc bc
    ld a, a
    adc c
    ccf
    ccf
    rra
    rra
    rrca

Jump_063_7000:
    rlca
    ld bc, $1100
    inc bc
    ld bc, $8381
    ld a, [bc]
    rst $38
    add c
    ld a, [hl]
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_063_7037:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_063_7067:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_063_7167:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_063_72e6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_063_7686:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_063_7939:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_063_79f9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_063_7aea:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_063_7b6d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_063_7c7e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_063_7ece:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_063_7edc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_063_7f8f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_063_7fc2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_063_7ffe:
    nop

Jump_063_7fff:
    nop
