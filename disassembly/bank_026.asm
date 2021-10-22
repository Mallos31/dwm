; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $026", ROMX[$4000], BANK[$26]

    ld h, $3d
    ld b, b
    sbc a
    ld b, d
    scf
    ld b, e
    sub e
    ld b, l
    daa
    ld b, [hl]
    db $f4
    ld c, b
    or a
    ld c, c
    sub [hl]
    ld c, h
    ld l, b
    ld c, l
    ld b, a
    ld d, b
    inc de
    ld d, c
    ld a, [c]
    ld d, e
    sbc e
    ld d, h
    jp nz, $c657

    ld e, b
    jp z, Jump_000_2a59

    ld h, b
    inc bc
    ld h, c
    db $d3
    ld h, c
    ld d, a
    ld h, l
    ld l, e
    ld h, [hl]
    ld a, h
    ld h, a
    ld e, d
    ld l, d
    ld d, a
    ld l, e
    ld c, b
    ld l, h
    ld b, e
    ld l, a
    ld h, c
    ld [hl], b
    ld a, a
    ld [hl], c
    cp l
    ld [hl], h
    ld h, e
    ld [hl], l
    nop
    ld [$000a], sp
    rst $38
    ld a, a
    ld a, a
    nop
    ld e, b
    ld a, c
    ld b, $3f
    ccf
    ccf
    ld a, a
    cp a
    rst $38
    add b
    rst $38
    ld a, a
    add b
    ld bc, $ff01
    add d
    push bc
    cp [hl]
    rst $00
    cp h
    rst $08
    cp b
    rst $18
    or b
    db $fd
    and e
    ld a, a
    add b
    cp $fe
    ld a, [$fe06]
    ld a, h
    or $0c
    ld a, [$d3fc]
    dec a
    db $e3
    db $fd
    ld a, a
    ld a, a
    rst $28
    add b
    ret z

    and a
    add b
    add b
    ld sp, hl
    add h
    pop bc
    cp h
    pop bc
    cp h
    add b
    add b
    rst $38
    rst $38
    rst $08
    jr nz, jr_026_408d

    rst $20
    nop
    nop
    ld sp, hl
    inc b
    ld bc, $01fc

jr_026_408d:
    db $fc
    nop
    nop
    cp $fe
    db $cd, $23, $09
    rst $20
    ld bc, $f301
    add hl, bc
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    ld bc, $8801
    rst $28
    adc b
    call z, $cc88
    rst $38
    rst $38
    add b
    cp $80
    ret nz

    add b
    ret nz

    rst $38
    rst $38
    ld [$08ef], sp
    inc c
    ld [$0a0c], sp
    ld h, [hl]
    ld b, $09
    rst $28
    add hl, bc
    dec c
    add hl, bc
    dec c
    rst $38
    rst $38
    add c
    rst $38
    add c
    pop bc
    add c
    pop bc
    rst $38
    rst $38
    nop
    nop
    ld a, a
    nop
    ld b, b
    jr nz, @+$5b

    ld b, $46
    add hl, de
    ld a, [bc]
    sub [hl]
    ld [bc], a
    nop
    nop
    cp $00
    inc bc
    dec b
    sbc e
    ld h, c
    ld h, e
    sbc l
    sbc e
    ld h, l
    ld a, [bc]
    xor b
    nop
    ld h, d
    sbc l
    sbc e
    ld h, h
    ld h, h
    sbc e
    sbc c
    ld h, [hl]
    ld h, [hl]
    sbc c
    ld a, [bc]
    or [hl]
    ld [bc], a
    rst $38
    ld a, [bc]
    adc [hl]
    nop
    rst $38
    ld a, [bc]
    or [hl]
    ld b, $46
    add hl, de
    reti


    ld b, $06
    add hl, sp
    ld a, [bc]
    or [hl]
    ld b, $0a
    nop
    ld [bc], a
    ld e, d
    nop
    ld e, b
    ld bc, $7e00
    db $fd
    db $fc
    add d
    ei
    nop
    rst $38
    cp $fe
    nop
    ld a, [de]
    ld e, d
    nop
    ld a, [de]
    add b
    nop
    ld a, [hl]
    cp a
    ccf
    ld b, c
    rst $18
    ld a, [bc]
    ldh a, [rSC]
    sbc [hl]
    ld h, b
    db $fc
    db $fc
    db $fc
    cp $fd
    rst $38
    ld bc, $feff
    rst $08
    ldh a, [$9f]
    rst $28
    ldh a, [$c0]
    rst $08
    ld [hl], b
    ld [hl], b
    cp a
    cp a
    ld a, [bc]
    ld l, h
    nop
    dec b
    ei
    add hl, bc
    push af
    di
    rrca
    inc bc
    di
    ld c, $0e
    db $fc
    db $fc
    ld a, [bc]
    ld l, h
    nop
    cp $81
    ret nz

    cp a
    ld a, [bc]
    ld a, $00
    ld a, [bc]
    ld l, b
    inc b
    ld a, a
    nop
    ld b, b
    ccf
    ld a, [bc]
    inc [hl]
    jr jr_026_41da

    inc bc
    ld b, c
    ccf
    add c
    add c
    ld a, [bc]
    add [hl]
    ld b, $cf
    and b
    adc b
    rst $20
    adc b
    rst $20
    add b
    add b
    ld hl, sp-$7a
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    add b
    add b
    ld a, [bc]
    ld b, d
    nop
    ld a, [bc]
    ld b, h
    nop
    db $fc
    ld [bc], a
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    nop
    nop
    rst $08
    ld hl, $e709
    ld a, [bc]
    ld d, h
    nop
    rst $38
    ld bc, $7f81
    add c
    ld a, a
    ld bc, $0a01
    sbc b
    inc b
    ld a, [bc]
    sbc b
    inc b
    ld a, [bc]
    xor b
    inc b
    ld a, [bc]
    xor b
    inc b
    ld b, b
    daa
    ld a, a
    nop
    add b
    rst $38
    ld a, a
    ld a, a
    ld b, b
    ret nz

    ld b, b
    rst $38
    rlca
    or a
    ld [$0088], sp
    ld a, [bc]
    pop bc
    ld bc, $8e0a
    nop
    ld a, [bc]
    call nz, Call_000_0312
    db $fd
    rst $38
    ld bc, $ff01
    cp $fe
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [c], a
    rst $28
    ld [de], a
    inc de
    add b
    add $80
    res 0, b
    ld hl, sp-$80
    db $cc, $80, $0a
    ret nz

    nop
    rst $38
    rst $38
    nop
    ld bc, $0163

jr_026_41da:
    db $d3
    ld bc, $011f

jr_026_41de:
    inc sp
    ld bc, $e90a
    inc de
    ld [hl], e
    adc h
    or b
    ld c, a
    adc $31
    ld e, [hl]
    and c
    inc h
    db $db
    ld a, b
    add a
    or a
    ld c, b
    adc a
    ld [hl], b
    db $dd
    ld [hl+], a
    jr jr_026_41de

    db $dd
    ld [hl+], a
    add sp, $17
    rst $20
    jr @-$1f

    jr nz, @+$20

    pop hl
    db $fc
    inc bc
    xor a
    ld d, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, e
    add h
    add h
    ld a, e
    jp nc, $b92d

    ld b, [hl]
    ld [hl], e
    adc h
    adc c
    db $76
    ld h, a
    sbc b
    ld a, b
    add a
    ld a, a
    add b
    dec a
    jp nz, Jump_026_7f80

    db $dd
    ld [hl+], a
    sbc l
    ld h, d
    ldh a, [rIF]
    jp $8e33


    ld l, [hl]
    sbc e
    ld e, e
    dec a
    cp l
    scf
    or a
    ld a, e
    ei
    dec a
    cp l
    rrca
    ldh a, [rSCX]
    ld c, h
    pop af
    or $f9
    ld a, [$dddc]
    or h
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76
    or $2d
    xor l
    dec sp
    cp e
    sbc a
    ld e, a
    adc a
    ld l, a
    jp nz, $f032

    rrca
    cp h
    cp l
    sbc $df
    db $ec
    db $ed
    cp h
    cp l
    reti


    jp c, Jump_026_7671

    db $c3, $cc, $0f


    ldh a, [$0a]
    and b
    rst $38
    ld c, l
    ld a, [bc]
    rst $18
    cpl
    ld c, l
    ld a, [bc]
    ccf
    ccf
    ld c, l
    ld a, [bc]
    sbc a
    ccf
    ld c, l
    ld a, [bc]
    rst $38
    ccf
    ld c, l
    ld a, [bc]
    ld e, a
    ld c, a
    ld c, l
    ld a, [bc]
    cp a
    ld c, a
    ld c, l
    ld a, [bc]
    rra
    ld e, a
    ld c, l
    ld a, [bc]
    ld a, a
    ld e, a
    ld c, l
    ld a, [bc]
    rst $18
    ld e, a
    ld c, l
    ld a, [bc]
    ccf
    ld l, a
    ld c, l
    ld a, [bc]
    sbc a
    ld l, a
    ld c, l
    ld a, [bc]
    rst $38
    ld l, a
    ld c, l
    ld a, [bc]
    ld e, a
    ld a, a
    ld c, l
    ld a, [bc]
    cp a
    ld a, a
    dec l
    nop
    ld [bc], a
    ld b, $03
    inc b
    ld b, $01
    dec c
    dec b
    ld b, $f4
    ld hl, sp+$16
    jr jr_026_42c2

    ld b, $22
    ld [bc], a
    ld bc, $0602
    ld [hl+], a
    inc bc
    ld d, $18
    ld b, $14
    ld a, [bc]
    rlca
    ld b, $42
    ld [bc], a
    ld de, $0612

jr_026_42c2:
    ld b, d
    inc bc
    ld b, $32
    ld c, $09
    ld a, [bc]
    ld b, $42
    inc bc
    ld b, $63
    ld bc, $3206
    inc c
    jr nz, jr_026_42f5

    add hl, de
    ld a, [de]
    jr nz, jr_026_42f9

    jr nz, jr_026_42fb

Jump_026_42da:
    nop
    db $10
    ld c, $0f
    ld b, $84
    nop
    ld b, $32
    inc c
    ld [hl+], a
    inc hl
    add hl, de
    ld a, [de]
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    ld e, $1f
    ld e, $1f
    ld b, $a4
    nop
    ld b, $72

jr_026_42f5:
    rrca
    nop
    dec bc
    inc c

jr_026_42f9:
    ld b, $c6

jr_026_42fb:
    inc bc
    dec c
    ld b, $8f
    rrca
    ld [bc], a
    dec de
    inc e
    ld b, $e5
    dec b
    dec e
    ld b, $b0
    rrca
    ld bc, $0206
    ld a, [de]
    ld b, $92
    ld c, $06
    ld [hl+], a
    ld a, [de]
    ld b, $f2
    rrca
    dec a
    inc h
    dec h
    ld b, $04
    rra
    dec bc
    ld h, $27
    ld b, $24
    rra
    ld a, [bc]
    rla
    ld b, $01
    inc c
    rla
    ld b, $33
    add hl, bc
    inc de
    ld b, $22
    inc bc
    ld b, $e1
    rla
    dec d
    ld b, $a0
    ld hl, sp+$00
    ld [$7f05], sp
    rst $38
    add h
    cp a
    adc [hl]
    ei
    dec b
    inc b
    ld bc, $91ff
    rst $30
    adc [hl]
    adc $ff
    rst $38
    nop
    dec b
    ld de, $fe09
    rst $38
    ld hl, $71fd
    rst $18
    dec b
    inc h
    ld bc, $89ff
    rst $28
    ld [hl], c
    ld [hl], e
    ld a, a
    ld a, a
    rst $28
    add b
    ret z

    and a
    add b
    add b
    ld sp, hl
    add h
    pop bc
    cp h
    pop bc
    cp h
    add b
    add b
    rst $38
    rst $38
    rst $08
    jr nz, jr_026_4379

    rst $20
    nop
    nop
    ld sp, hl
    inc b
    ld bc, $01fc

jr_026_4379:
    db $fc
    nop
    nop
    cp $fe
    db $cd, $23, $09
    rst $20
    ld bc, $f301
    add hl, bc
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    ld bc, $8801
    rst $28
    adc b
    call z, $cc88
    rst $38
    rst $38
    add b
    cp $80
    ret nz

    add b
    ret nz

    rst $38
    rst $38
    ld [$08ef], sp
    inc c
    ld [$050c], sp
    ld h, [hl]
    ld b, $09
    rst $28
    add hl, bc
    dec c
    add hl, bc
    dec c
    rst $38
    rst $38
    add c
    rst $38
    add c
    pop bc
    add c
    pop bc
    rst $38
    rst $38
    ld a, a
    nop
    ld b, b
    ccf
    add e
    add e
    cp $ff
    add l
    cp $86
    rst $00
    add d

jr_026_43c2:
    jp $05fe


    adc a
    ld bc, $0000
    sbc a
    rra
    ret nz

    ld e, $80
    nop
    add b
    nop
    cp a
    ccf
    ld [bc], a
    rst $20
    ld a, [de]
    inc de
    ccf
    jr nz, jr_026_43c2

    rst $30
    sub [hl]
    rst $18
    adc d
    rlc l
    sbc h
    nop
    add b
    daa
    or b
    jr nz, @-$06

    nop
    sub a
    ld l, a
    add sp, $7a
    sub b
    db $10
    dec b
    xor h
    nop
    ld a, [bc]
    rst $28
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    cp $ff
    add d
    rst $38
    add d
    jp $c382


    rst $38
    rst $38
    adc b
    cpl
    adc b
    inc c
    adc b
    inc c
    cp a
    ccf
    add b
    ld a, $c0
    ld b, b
    ld b, b
    ret nz

    rst $38
    rst $38
    dec b
    ldh a, [$fc]
    add b
    cp a
    add b
    dec b
    ld [bc], a
    ld de, $80c0
    ld l, d
    ld b, b
    ld a, [hl-]
    or b
    rra
    sbc a
    nop
    dec b
    rst $28
    dec b
    xor d
    nop
    xor d
    nop
    rst $38
    rst $38
    ld bc, $01fd
    dec b
    ld [hl+], a
    ld de, $0103
    xor d
    ld [bc], a
    xor h
    dec c
    ld hl, sp-$07
    cp $81
    ret nz

    cp a
    dec b
    ld a, $00

jr_026_4441:
    dec b
    ld l, b
    inc b
    dec b
    sub b
    nop
    dec b
    inc [hl]
    jr jr_026_44c8

    inc bc
    ld b, c
    ccf
    add c
    add c
    dec b
    add [hl]
    ld b, $cf
    and b
    adc b
    rst $20
    adc b
    rst $20
    add b
    add b
    ld hl, sp-$7a
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    add b
    add b
    dec b
    ld b, d
    nop
    dec b
    ld b, h
    nop
    db $fc
    ld [bc], a
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    nop
    nop

jr_026_4471:
    rst $08
    ld hl, $e709
    dec b
    ld d, h
    nop
    rst $38
    ld bc, $7f81
    add c
    ld a, a
    ld bc, $0501
    and b
    rst $38
    ld c, l
    dec b
    ldh a, [$fc]
    rst $08
    jr nc, jr_026_4441

    ld c, b
    ld a, e
    add h
    ld a, b
    add a

jr_026_448f:
    or e
    ld c, h
    add $39

jr_026_4493:
    db $ed
    ld [de], a
    db $eb
    inc d
    di
    inc c
    db $ed
    ld [de], a
    sbc $21
    ld e, $e1
    call $6332
    sbc h
    or a
    ld c, b
    rst $10
    jr z, jr_026_4493

    inc d
    db $ed
    ld [de], a
    add $39
    or e
    ld c, h
    ld a, b
    add a
    ld a, e
    add h
    or a
    ld c, b
    rst $08
    jr nc, jr_026_448f

    jr z, jr_026_4471

    ld c, b
    ld h, e
    sbc h
    call $1e32
    pop hl
    sbc $21
    db $ed
    ld [de], a
    di
    inc c
    di

jr_026_44c8:
    inc c
    nop
    add b
    ld a, a
    nop
    ld h, [hl]
    add hl, de
    ld e, c
    ld h, $05
    ld b, [hl]
    jr nz, jr_026_44fb

    ld e, c
    rst $08
    jr nc, jr_026_44d9

jr_026_44d9:
    nop
    rst $38
    nop
    ld h, [hl]
    sbc c
    sbc c
    ld h, [hl]
    dec b
    ld d, [hl]
    ld [hl+], a
    rst $08
    jr nc, jr_026_44e6

jr_026_44e6:
    ld bc, $06f8
    ld h, l
    sbc e
    sbc c
    ld h, a
    dec b
    ld h, [hl]
    ld [hl+], a
    add hl, de
    ld h, [hl]
    add b
    rst $38
    ld a, a
    ld a, a
    ld c, b
    ret z

    rrca
    xor a
    or b

jr_026_44fb:
    ld [hl], a
    dec b
    ld de, $9900
    ld h, [hl]
    nop
    rst $38
    dec b
    xor $00
    dec b
    stop
    dec b
    ld a, h
    ld hl, $0167
    rst $38
    cp $fe
    ld [de], a
    inc de
    ld a, [c]
    ei
    dec c
    db $ec
    dec b
    ld de, $0500
    rst $18
    rst $38
    ld c, $ff
    inc bc
    di
    ld c, $ee
    dec de
    db $db
    dec a
    cp l
    scf
    or a
    ld a, e
    ei
    dec a
    cp l
    nop
    rst $38
    ld b, b
    ld c, a
    ldh a, [$f7]
    ld hl, sp-$05
    call c, $b4dd
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76
    or $2d
    xor l
    dec sp
    cp e
    rra
    rst $18
    rrca
    rst $28
    ld [bc], a
    ld a, [c]
    nop
    rst $38
    cp h
    cp l
    sbc $df
    db $ec
    db $ed
    cp h
    cp l
    ret c

    db $db
    ld [hl], b
    ld [hl], a
    ret nz

    rst $08
    dec b
    sbc l
    cpl
    ld de, $2105
    ccf
    ld c, l
    dec b
    add c
    ccf
    ld c, l
    dec b
    pop hl
    ccf
    ld c, l
    dec b
    ld b, c
    ld c, a
    ld c, l
    dec b
    and c
    ld c, a
    ld c, l
    dec b
    ld bc, $4d5f
    dec b
    ld h, c
    ld e, a
    ld c, l
    dec b
    pop bc
    ld e, a
    ld c, l
    dec b
    ld hl, $4d6f
    dec b
    add c
    ld l, a
    ld c, l
    dec b
    pop hl
    ld l, a
    ld c, l
    dec b
    ld b, c
    ld a, a
    ld c, l
    dec b
    and c
    ld a, a
    ld c, e
    nop
    ld [bc], a
    ld b, $03
    inc b
    ld b, $01
    dec c
    dec b
    ld b, $f4
    ld hl, sp+$16
    jr @+$16

    ld b, $22
    ld [bc], a
    add hl, bc
    ld a, [bc]
    ld b, $22
    inc bc
    ld d, $18
    ld b, $14
    ld a, [bc]
    rlca
    ld b, $42
    ld [bc], a
    dec bc
    inc c
    ld b, $42
    inc bc
    ld b, $32
    rrca
    inc b
    dec c
    ld c, $06
    ld c, e
    rrca
    inc b
    jr nz, @+$23

    ld b, $82
    ld [$2d2c], sp
    ld b, $32
    inc c
    ld [hl+], a
    inc hl
    ld b, $a2
    ld [$2f2e], sp
    ld b, $72
    rrca
    inc bc
    nop
    ld bc, $0201
    ld b, $82
    ld [bc], a
    ld b, $92
    rrca
    inc bc
    db $10
    ld de, $1211
    ld b, $a2
    ld [bc], a
    ld b, $72
    rrca
    dec bc
    ld b, $d0
    rrca
    ld bc, $2524
    dec h
    ld h, $06
    and d
    nop
    ld b, $24
    ld [de], a
    ld b, $72
    ld c, $27
    jr z, @+$2a

    add hl, hl
    ld b, $82
    nop
    ld b, $44
    ld [de], a
    ld b, $92
    rrca
    dec bc
    ld b, $f0
    rrca
    ld hl, $6406
    rra
    ld a, [bc]
    rla
    ld b, $01
    inc c
    rla
    ld b, $33
    add hl, bc
    inc de
    ld b, $22
    inc bc
    ld b, $e1
    rla
    dec d
    ld b, $a0
    ld hl, sp+$00
    ld [$7f05], sp
    nop
    ld b, b
    ccf
    add b
    add b
    rst $38
    rst $38
    add b
    cp $83
    jp $c584


    ld hl, sp-$01
    dec b
    nop
    inc b
    pop hl
    jp hl


    ld bc, $817f
    cp c
    ld c, a
    ld c, a
    ei
    ei
    pop af
    rst $30
    dec b
    ld [hl+], a
    ld b, $f9
    ld sp, hl
    ld a, a
    ld a, a
    rst $28
    add b
    ret z

    and a
    add b
    add b
    ld sp, hl
    add h
    pop bc
    cp h
    pop bc
    cp h
    dec b
    inc b
    nop
    rst $08

jr_026_4660:
    jr nz, jr_026_466a

    rst $20
    nop
    nop
    ld sp, hl
    inc b
    ld bc, $01fc

jr_026_466a:
    db $fc
    nop
    nop
    cp $fe
    db $cd, $23, $09
    rst $20
    ld bc, $f301
    add hl, bc
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    ld bc, $0801
    rst $28
    ld [$080c], sp
    inc c
    dec b
    ld b, $00
    add b
    ret nz

    add b
    ret nz

    rst $38
    rst $38
    ld [hl], e
    adc h
    or a
    ld c, a
    rst $08
    ccf
    ld e, a
    xor l
    ccf
    ret nc

    ld a, a
    sub h
    cp a
    ld d, h
    sbc a
    ld a, b
    db $dd
    ld [hl+], a
    ld hl, sp-$19
    db $fd
    ld a, [c]
    ld hl, sp-$01
    rst $38
    ld hl, sp-$01
    ld hl, sp-$02
    sbc c

jr_026_46aa:
    db $fc
    dec de
    dec b
    nop
    inc b
    rrca
    cpl
    ld bc, $027d
    ld a, [de]
    db $e4
    push hl
    dec b

Jump_026_46b8:
    nop
    inc b
    nop
    ld a, $c0
    ret nz

    jr nz, jr_026_4660

    rra
    rst $18
    dec b
    ld [hl], b
    nop
    ret z

    ccf
    ld d, b
    cp a
    jr nc, jr_026_46aa

    ld h, b
    cp a
    xor h
    ld a, a
    and c
    ld a, a
    db $dd
    ld a, $fc
    rst $20
    ld a, l
    jp z, $8ff8

    ld [hl], a
    ld hl, sp+$0f
    ld hl, sp+$0e
    ld sp, hl
    db $ec
    ei
    or e
    ld e, [hl]
    ld a, a
    sbc h
    ld a, a
    and h
    ld a, a
    and b
    cp a
    ld a, a
    rst $18
    ccf
    and e
    ld a, a
    ld a, a
    cp a
    ld a, e
    cp h
    cp a
    ld h, a
    sbc $33
    ld e, a
    or c
    ld l, $df
    ld [hl], b
    sbc a
    or b
    ld e, a
    sub a
    ld a, a
    dec b
    add b
    nop
    dec e
    ld a, [c]
    ld [$0fff], sp
    ld hl, sp+$07
    db $fc
    ld [hl], $fd
    add h
    dec b
    ld l, a
    inc b
    cp a
    ccf
    rst $18
    ld a, a
    sbc a
    cp a
    ld e, c
    dec b
    ld a, [hl]
    dec b
    or a
    rst $38
    ld [$28ff], sp
    cp $29
    db $fc
    dec de
    sbc a
    sbc a
    adc a
    rst $28
    dec b
    ld [hl+], a
    ld d, $9f
    sbc a
    cp $81
    ret nz

    cp a
    dec b
    inc b
    ld [bc], a
    dec b
    ld l, d
    ld [bc], a
    dec b
    nop
    ld b, $05
    ld l, d
    ld [bc], a
    ld a, l
    inc bc
    ld b, c
    ccf
    add c
    add c
    rst $38
    rst $38
    add c
    rst $38
    add c
    pop bc
    add c
    pop bc
    rst $38
    rst $38
    rst $08
    and b
    adc b
    rst $20
    adc b
    rst $20
    add b
    add b
    ld hl, sp-$7a
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    add b
    add b
    dec b
    ld b, d
    nop
    dec b
    ld b, h
    nop
    db $fc
    ld [bc], a
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    nop
    nop
    rst $08
    ld hl, $e709
    dec b
    ld d, h
    nop
    rst $38
    ld bc, $7f81
    add c
    ld a, a
    ld bc, $1001
    sbc $21
    dec h
    ld c, e
    ld e, e
    rst $00
    rst $30
    add a
    or a
    add a
    rst $30
    adc a
    rst $38
    adc a
    rst $28
    inc c
    ld l, l
    sub h
    or h
    add $ce
    jp $e2db


    xor $e1
    db $ed
    dec b
    ld [hl+], a
    nop
    or e
    ld e, [hl]
    ld a, a
    adc h
    ld a, a
    sub b
    ld a, [hl]
    or c
    xor c
    ld a, [hl]
    rst $18
    ccf
    xor l
    ld [hl], e
    ld a, a
    cp a
    ld sp, hl
    ld e, $ff
    inc b
    db $fc
    scf
    rst $38
    ld b, h
    db $fd
    ld c, d
    ld hl, sp-$01
    adc l
    ld a, [$f2fd]
    reti


    ld a, $f7
    inc e
    db $fc
    rrca
    rst $38
    adc b
    ld a, l
    adc d
    ld hl, sp-$01
    ld l, l
    sbc d
    db $fd
    ld a, [c]
    cp e
    ld e, h
    ld l, a
    cp b
    ld a, a
    or b
    ld a, a
    sub c
    sbc [hl]
    ld [hl], c
    rst $18
    ccf
    or [hl]
    ld e, c
    ld a, a
    adc a
    ret


jr_026_47db:
    ld a, [hl]
    rst $38
    jr c, jr_026_47db

    daa
    rst $38
    inc b
    db $fd
    cp $f8
    rst $38
    push bc
    cp $fd
    cp $bd
    ld e, [hl]
    ld a, a
    adc a
    ld a, b
    sbc a
    ld a, l
    and a
    cp [hl]
    ld h, a
    rst $18
    ccf
    cp c
    ld c, a
    ld [hl], a
    adc a
    ld sp, hl
    ld a, $f7
    ld hl, sp+$78
    rst $18
    ld [hl], a
    db $fc
    ld d, l
    cp $f8
    rst $38
    xor l
    jp c, $fafd

    cp [hl]
    ld e, a
    ld a, a
    adc a
    ld a, h
    adc a
    ld a, b
    sbc a
    sbc b
    ld a, a
    rst $18
    cpl
    or l
    ld e, e
    ld a, a
    dec b
    rrca
    ld hl, $ff18
    cp a
    db $e4
    ld a, l
    and $f8
    rst $38
    sbc l
    ld a, [c]
    db $fd
    ld a, [c]
    ld a, e
    adc [hl]
    dec b
    ret c

    nop
    ld a, a
    cp a
    scf
    ei
    ld a, a
    or l
    cp a
    ld d, l
    sbc a
    ld a, c
    db $fd
    and d
    dec b
    add d
    ld [bc], a
    rst $30
    dec b
    adc c
    nop
    sub c
    ld a, h
    sub e
    cp a
    ld e, h
    ld a, a
    adc a
    ld a, [hl]
    sbc e
    ld l, [hl]
    cp a
    xor d
    ld a, a
    rst $18
    ccf
    or l
    ld e, e
    ld a, a
    sbc a
    cp c
    ld a, [hl]
    dec b
    ld [hl-], a
    add hl, hl
    ld [c], a
    ld [hl], a
    adc l
    dec b
    ld [bc], a
    ld [de], a
    cpl
    dec b
    add hl, bc
    db $10
    ld c, c
    adc [hl]
    ld a, c
    db $dd
    ld [hl], d
    db $fc
    rst $38
    db $fd
    ld_long a, $fffc
    rst $28
    call c, $acff
    cp $a9
    db $fc
    sbc e
    dec b

jr_026_4876:
    ldh a, [$fc]
    rst $38
    dec b
    or b
    dec hl
    ld [hl], e
    adc h
    or b
    ld c, a
    adc $31
    ld e, [hl]
    and c
    inc h
    db $db
    ld a, b
    add a
    or a
    ld c, b
    adc a
    ld [hl], b
    db $dd
    ld [hl+], a
    jr @-$17

    db $dd
    ld [hl+], a
    add sp, $17
    rst $20
    jr jr_026_4876

    jr nz, @+$20

    pop hl
    db $fc
    inc bc
    xor a
    ld d, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, e
    add h
    add h
    ld a, e
    jp nc, $b92d

    ld b, [hl]
    ld [hl], e
    adc h
    adc c
    db $76
    ld h, a
    sbc b
    ld a, b
    add a
    ld a, a
    add b
    dec a
    jp nz, Jump_026_7f80

    db $dd
    ld [hl+], a
    sbc l
    ld h, d
    dec b
    and b
    rst $38
    ld c, l
    dec b
    ld e, a
    ccf
    ld c, l
    dec b
    cp a
    ccf
    ld c, l
    dec b
    rra
    ld c, a
    ld c, l
    dec b
    ld a, a
    ld c, a
    ld c, l
    dec b
    rst $18
    ld c, a
    ld c, l
    dec b
    ccf
    ld e, a
    ld c, l
    dec b
    sbc a
    ld e, a
    ld c, l
    dec b
    rst $38
    ld e, a
    ld c, l
    dec b
    ld e, a
    ld l, a
    ld c, l
    dec b
    cp a
    ld l, a
    ld c, l
    dec b
    rra
    ld a, a
    ld c, l
    dec b
    ld a, a
    ld a, a
    ld c, l
    dec b
    rst $18
    ld a, a
    dec c
    nop
    ld [bc], a
    dec c
    jr z, jr_026_4922

    db $10
    ld de, $0403
    dec c
    dec b
    dec b
    dec b
    inc h
    dec h
    inc h
    dec h
    dec c
    db $f4
    ld hl, sp+$20
    ld hl, $2120
    ld d, $18
    inc d
    inc d
    nop
    ld bc, $0a09
    inc d
    inc d
    ld d, $18
    ld h, $27
    dec de
    inc e
    dec c
    db $f4
    ld hl, sp+$0e
    rrca

Call_026_4921:
    db $10

jr_026_4922:
    ld de, $1816
    ld b, $06
    add hl, de
    dec hl
    dec hl
    ld a, [de]
    ld b, $06
    ld d, $18
    inc h
    dec h
    rlca
    ld [$f40d], sp
    ld hl, sp+$1e
    rra
    dec c
    ld [hl+], a
    nop
    ld b, $06
    ld [de], a
    dec hl
    dec hl
    ld [bc], a
    dec c
    ld c, h
    nop
    dec de
    inc e
    ld h, $27
    dec c
    db $f4
    ld hl, sp+$10
    ld de, $2928
    ld d, $18
    inc l
    dec l
    dec c
    add [hl]
    ld [bc], a
    ld d, $18
    rlca
    ld [$0c0b], sp
    dec c
    inc d
    ld a, [bc]
    ld e, $1f
    ld d, $18
    ld l, $2f
    dec c
    and [hl]
    ld [bc], a
    dec c
    ld l, [hl]
    nop
    dec c
    ld [hl-], a
    ld a, [bc]
    dec c
    nop
    nop
    dec c
    add h
    rrca
    dec bc
    dec c
    ld [hl+], a
    nop
    dec c
    and [hl]
    ld b, $0d
    jr nc, jr_026_498d

    inc bc
    dec c
    add [hl]
    ld b, $0b
    inc c
    dec c
    ld d, d
    rrca
    ld bc, $a60d
    rrca
    rlca
    dec c

jr_026_498d:
    add b
    ld c, $0d
    ld [de], a
    rrca
    ld bc, $a60d
    ld [$720d], sp
    inc c
    ld c, $0f
    dec c
    inc b
    rra
    add hl, bc
    dec c
    and b
    rrca
    ld [de], a
    rla
    dec c
    dec b
    inc b
    rla
    dec c
    adc a
    dec c
    dec c
    ld h, b
    nop
    inc de
    inc d
    dec c
    push hl
    dec d
    dec d
    dec c
    jr nc, @+$0e

    nop
    ld [$7f02], sp
    ld a, a
    adc b
    rst $20
    adc b
    rst $20
    ret nc

    ret nc

    ld hl, sp-$7a
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    ret nz

    ret nz

    rst $38
    rst $38
    ld [$08e7], sp
    rst $20
    jr @+$1a

    cp $01
    add b
    ld a, a
    add b
    ld a, a
    nop
    nop
    ld [bc], a
    db $10
    ld [bc], a
    nop
    nop
    ld a, b
    ld b, $40

jr_026_49e2:
    ld a, $40
    ld a, $38
    jr c, @+$01

    rst $38
    jr jr_026_49e2

    ld [$01e7], sp
    ld bc, $1802
    ld [bc], a
    db $10
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    add b
    add b
    ld [bc], a
    jr z, jr_026_49fc

jr_026_49fc:
    ld b, c
    ccf
    ld bc, $fe01
    cp $09
    rst $20
    add hl, bc
    rst $20
    inc bc
    inc bc
    rst $38
    ld bc, $7f81
    add c
    ld a, a
    add e
    add e
    rst $30
    nop
    nop
    rst $30
    ld [$ff08], sp
    rst $38
    rst $38
    rst $38
    add b
    add b
    add b
    ret nz

    rst $38
    rst $38
    ld [bc], a
    ld h, b
    rrca
    dec a

Call_026_4a24:
    ld [bc], a
    nop
    ld [bc], a
    ret nz

    ret nz

    ld [bc], a
    ld [$c302], sp
    jp Jump_026_5002


    ld [bc], a
    ld bc, $0201
    ld e, b
    ld [bc], a
    add c
    add c
    rst $08
    and b
    ld [bc], a
    ld [bc], a
    nop
    jp $f9c3


    add a
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    rst $08
    ld hl, $5202
    nop
    add c
    add c
    ld [bc], a
    ld e, b
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ldh [rSC], a
    pop bc
    pop bc
    ld [bc], a
    ld [$8002], sp
    add b
    rst $08
    jr nz, jr_026_4a5f

    ld [de], a
    nop

jr_026_4a5f:
    sub b
    sub b
    ld [bc], a
    jr jr_026_4a68

    rst $18
    jr nc, jr_026_4a69

    ld [de], a

jr_026_4a68:
    nop

jr_026_4a69:
    inc bc
    inc bc
    ld a, c
    rlca
    ld [bc], a
    ld a, [hl+]
    nop
    nop
    nop
    ld [bc], a
    db $10
    ld [de], a
    nop
    nop
    ld [bc], a
    jr jr_026_4a7e

    ld [bc], a
    db $10
    ld [de], a
    db $10

jr_026_4a7e:
    db $10
    ld [bc], a
    ld c, b
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ldh a, [rSC]
    ld de, $0211
    ld e, b
    ld [bc], a
    ld bc, $1001
    sub a
    db $10
    jr @+$12

    jr @+$01

    rst $38
    add b
    cp [hl]
    add b
    ret nz

    ld [bc], a
    ld l, h
    nop
    ld [bc], a
    ld h, b
    rra
    dec a
    ld [bc], a
    ldh [rSC], a
    ld [bc], a
    add $04
    add c
    add c
    ld [bc], a
    ldh a, [rP1]
    add hl, de
    rst $30
    ld sp, $0231
    ld e, b
    inc d
    ld [bc], a
    ret nz

    ld a, [de]
    add b
    add b
    ld [bc], a
    ldh a, [rSC]
    add hl, sp
    add hl, sp
    ld [bc], a
    ld e, b
    inc d
    ld [hl], a
    nop
    ld b, b
    scf
    adc b
    adc b
    ld [bc], a
    ld h, [hl]
    rlca
    ld bc, $f701

jr_026_4acc:
    add hl, bc
    add hl, bc
    ld [bc], a
    ld h, [hl]
    nop
    add c
    add c
    add c
    pop bc
    rst $38
    rst $38
    sub b
    sub a
    sub b
    ret c

    sub b
    ret c

    rst $38
    rst $38
    add b
    cp h
    ld [bc], a
    ld l, d
    ld [de], a
    ld de, $1195
    add hl, de
    ld de, $ff19
    rst $38
    add c
    cp l
    add c
    pop bc
    ld [bc], a
    inc e
    jr nz, jr_026_4af6

jr_026_4af4:
    ret nz

    ld a, [de]

jr_026_4af6:
    ret nz

    ret nz

    ld [bc], a
    db $10
    db $10
    jr jr_026_4af4

    jr nc, @+$32

    ld [bc], a
    jr c, jr_026_4b17

    ld [bc], a
    pop hl
    inc bc
    ld [bc], a
    ld [$801a], sp
    add b
    ld [bc], a
    jr c, jr_026_4b27

    ld [bc], a
    add $00
    ld [bc], a
    ld a, [hl+]
    ld d, $18
    rst $30
    db $10
    db $10

jr_026_4b17:
    ld [bc], a
    jr c, jr_026_4b34

    ld [$7f08], sp
    nop
    ld b, b
    ccf
    ld b, b
    ccf
    ld [bc], a
    ld l, $14
    jr c, @+$3a

jr_026_4b27:
    cp [hl]
    ld bc, $9f20
    jr nz, jr_026_4acc

    ld [bc], a
    ld l, $14
    ld [bc], a
    ld h, $12
    ret nz

jr_026_4b34:
    cp [hl]
    ret c

    ret c

    rst $18
    ld sp, $5202
    nop
    add e
    add e
    ld [bc], a
    ld hl, sp+$05
    ld [bc], a
    ld sp, $0213
    ld c, b
    ld a, [de]
    jp Jump_000_02c3


    ld e, b
    inc d
    nop
    rst $38
    ld a, a
    ld a, a
    nop
    ld e, b
    ld e, d
    nop
    ld e, b
    ld bc, $7e00
    db $fd
    db $fc
    add d
    ei
    nop
    rst $38
    cp $fe
    nop
    ld a, [de]

jr_026_4b62:
    ld e, d
    nop
    ld a, [de]
    add b
    nop
    ld a, [hl]
    cp a
    ccf
    ld b, c
    rst $18
    ld [bc], a
    nop
    ld [hl-], a
    ld a, c
    ld b, $3f
    ccf
    ccf
    ld a, a
    cp a
    rst $38
    add b

jr_026_4b78:
    rst $38
    ld [bc], a
    db $10
    ld [hl-], a
    sbc [hl]
    ld h, b
    db $fc
    db $fc
    db $fc
    cp $fd
    rst $38
    ld bc, $80ff
    add $80
    res 0, b
    ld hl, sp-$80
    call z, $ff80
    rst $38
    rst $38

jr_026_4b92:
    nop
    rst $38
    rst $38
    nop
    ld bc, $0163
    db $d3
    ld bc, $011f
    inc sp
    ld bc, $4902
    inc sp
    ld [bc], a
    ld h, [hl]
    nop
    ld [bc], a
    ld h, b
    jr c, jr_026_4b78

    jr nc, jr_026_4b62

    ld c, b
    ld a, e
    add h
    ld a, b
    add a

jr_026_4bb0:
    or e
    ld c, h
    add $39

jr_026_4bb4:
    db $ed
    ld [de], a
    db $eb
    inc d
    di
    inc c
    db $ed
    ld [de], a
    sbc $21
    ld e, $e1
    call $6332
    sbc h
    or a
    ld c, b
    rst $10
    jr z, jr_026_4bb4

    inc d
    db $ed
    ld [de], a
    add $39
    or e
    ld c, h
    ld a, b
    add a
    ld a, e
    add h
    or a
    ld c, b
    rst $08

jr_026_4bd7:
    jr nc, jr_026_4bb0

    jr z, jr_026_4b92

    ld c, b
    ld h, e
    sbc h
    call $1e32
    pop hl
    sbc $21
    db $ed
    ld [de], a
    di
    inc c
    swap h
    or h
    ld c, e
    ld a, e
    add h
    ld [bc], a
    sbc d
    jr nc, jr_026_4c3c

    or l
    cp a
    ld b, b
    db $eb
    inc d
    ld h, a
    sbc b
    cp d
    ld b, l
    rst $30
    ld [$24db], sp
    ld l, a
    sub b
    ld a, [$bf05]
    ld b, b
    ei
    inc b
    sbc e
    ld h, h
    rst $20
    jr @+$5f

    and d
    rst $30
    ld [$43bc], sp
    ld [hl], e
    adc h
    ld [bc], a
    cp h
    jr nc, @-$17

    jr jr_026_4bd7

    ld b, c
    di
    inc c
    xor l
    ld d, d
    sbc $21
    sbc $21
    ld l, l
    sub d
    ld [bc], a
    xor [hl]
    ccf
    rrca
    ld [bc], a
    sub b
    inc a
    ld [bc], a
    ldh [$3c], a
    ldh a, [rIF]
    jp $8e33


    ld l, [hl]
    sbc e
    ld e, e
    dec a
    cp l
    scf
    or a
    ld a, e
    ei

jr_026_4c3c:
    dec a
    cp l
    rrca
    ldh a, [rSCX]
    ld c, h
    pop af
    or $f9
    ld a, [$dddc]
    or h
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76
    or $2d
    xor l
    dec sp
    cp e
    sbc a
    ld e, a
    adc a
    ld l, a
    jp nz, $f032

    rrca
    cp h
    cp l
    sbc $df
    db $ec
    db $ed
    cp h
    cp l
    reti


    jp c, Jump_026_7671

    db $c3, $cc, $0f


    ldh a, [rSC]
    and b
    rst $38
    ld c, l
    ld [bc], a
    rst $08
    ld c, a
    ld c, l
    ld [bc], a
    cpl
    ld e, a
    ld c, l
    ld [bc], a
    adc a
    ld e, a
    ld c, l
    ld [bc], a
    rst $28
    ld e, a
    ld c, l
    ld [bc], a
    ld c, a
    ld l, a
    ld c, l
    ld [bc], a
    xor a
    ld l, a
    ld c, l
    ld [bc], a
    rrca
    ld a, a
    ld c, l
    ld [bc], a
    ld l, a
    ld a, a
    ld c, l
    ld [bc], a
    rst $08
    ld a, a
    dec e
    nop
    ld [bc], a
    inc c
    nop
    ld bc, $0302
    inc c
    ld [bc], a
    ld a, [bc]
    inc b
    dec b
    inc c
    push af
    ld hl, sp+$10
    dec d
    ld b, $07
    ld [$0c09], sp
    inc h
    ld b, $0a
    dec bc
    db $10
    dec d
    inc c
    push af
    ld hl, sp+$0e
    rrca
    ld d, $17
    jr jr_026_4cd4

    inc c
    ld b, h
    rlca
    dec de
    ld c, $0f
    inc c
    push af
    ld hl, sp+$1e
    rra
    ld d, $0c
    ld b, l
    ld [$1a19], sp
    dec de
    ld e, $1f
    inc c
    inc [hl]
    ld a, [bc]
    jr nc, jr_026_4d05

jr_026_4cd4:
    dec sp
    inc a
    dec sp
    inc a
    scf
    jr c, jr_026_4d16

    inc a
    ccf
    ld b, b
    scf
    jr c, jr_026_4d11

    ld sp, $520c
    inc c
    inc [hl]
    dec [hl]
    dec a
    ld a, $3d
    ld a, $39
    ld a, [hl-]
    dec a
    ld a, $41
    ld b, d
    add hl, sp
    ld a, [hl-]
    inc [hl]
    dec [hl]
    inc c
    ld [hl], d
    inc c
    inc c
    adc d
    nop
    inc c
    add d
    nop
    inc c
    adc [hl]
    nop
    inc c
    add [hl]
    nop
    inc c

jr_026_4d05:
    ld d, d
    inc c
    inc c
    xor d
    nop
    inc c
    and d
    nop
    inc c
    xor [hl]
    nop
    inc c

jr_026_4d11:
    and [hl]
    nop
    inc c
    ld [hl], d
    inc c

jr_026_4d16:
    ccf
    ld b, b
    inc c
    add h
    ld b, $0c
    adc $0f
    ld bc, $4241
    inc c
    and h
    ld b, $0c
    xor $0f
    inc bc
    inc c
    add d
    ld [bc], a
    inc c
    ld [bc], a
    db $10
    jr nc, jr_026_4d61

    inc c
    db $10
    rra
    ld bc, $a20c
    ld [bc], a
    inc c
    ld [hl+], a
    db $10
    inc [hl]
    dec [hl]
    inc c
    ldh a, [$0e]
    inc c
    ld [$4314], sp
    ld b, h
    inc c
    ld [bc], a
    ld [de], a
    inc c
    ld d, d
    inc c
    inc c
    jr z, jr_026_4d61

    ld b, l
    ld b, [hl]
    inc c
    ld [hl+], a
    ld [de], a
    inc c
    ld [hl], d
    ld a, [bc]
    db $10
    dec hl
    inc c
    ld [bc], a
    inc c
    ld l, $2f
    inc c
    push af
    ld hl, sp+$0c
    ld [hl+], a

jr_026_4d61:
    ld a, [bc]
    inc c
    inc l
    ld [bc], a
    inc c
    and b
    ld hl, sp+$00
    ld [$7f02], sp
    ld a, a
    adc b
    rst $20
    adc b
    rst $20
    ret nc

    ret nc

    ld hl, sp-$7a
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    ret nz

    ret nz

    rst $38
    rst $38
    ld [$08e7], sp
    rst $20
    jr @+$1a

    cp $01
    add b
    ld a, a
    add b
    ld a, a
    nop
    nop
    ld [bc], a
    db $10
    ld [bc], a
    nop
    nop
    ld a, b
    ld b, $40

jr_026_4d93:
    ld a, $40
    ld a, $38
    jr c, @+$01

    rst $38
    jr jr_026_4d93

    ld [$01e7], sp
    ld bc, $1802
    ld [bc], a
    db $10
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    add b
    add b
    ld [bc], a
    jr z, jr_026_4dad

jr_026_4dad:
    ld b, c
    ccf
    ld bc, $fe01
    cp $09
    rst $20
    add hl, bc
    rst $20
    inc bc
    inc bc
    rst $38
    ld bc, $7f81
    add c
    ld a, a
    add e
    add e
    rst $30
    nop
    nop
    rst $30
    ld [$ff08], sp
    rst $38
    rst $38
    rst $38
    add b
    add b
    add b
    ret nz

    rst $38
    rst $38
    ld [bc], a
    ld h, b
    rrca
    dec a
    ld [bc], a
    nop
    ld [bc], a
    ret nz

    ret nz

    ld [bc], a
    ld [$c302], sp
    jp Jump_026_5002


    ld [bc], a
    ld bc, $0201
    ld e, b
    ld [bc], a
    add c
    add c
    rst $08
    and b
    ld [bc], a
    ld [bc], a
    nop
    jp $f9c3


    add a
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    rst $08
    ld hl, $5202
    nop
    add c
    add c
    ld [bc], a
    ld e, b
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ldh [rSC], a
    pop bc
    pop bc
    ld [bc], a
    ld [$8002], sp
    add b
    rst $08
    jr nz, jr_026_4e10

    ld [de], a
    nop

jr_026_4e10:
    sub b
    sub b
    ld [bc], a
    jr jr_026_4e19

    rst $18
    jr nc, jr_026_4e1a

    ld [de], a

jr_026_4e19:
    nop

jr_026_4e1a:
    inc bc
    inc bc
    ld a, c
    rlca
    ld [bc], a
    ld a, [hl+]
    nop
    nop
    nop
    ld [bc], a
    db $10
    ld [de], a
    nop
    nop
    ld [bc], a
    jr jr_026_4e2f

    ld [bc], a
    db $10
    ld [de], a
    db $10

jr_026_4e2f:
    db $10
    ld [bc], a
    ld c, b
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ldh a, [rSC]
    ld de, $0211
    ld e, b
    ld [bc], a
    ld bc, $1001
    sub a
    db $10
    jr @+$12

    jr @+$01

    rst $38
    add b
    cp [hl]
    add b
    ret nz

    ld [bc], a
    ld l, h
    nop
    ld [bc], a
    ld h, b
    rra
    dec a
    ld [bc], a
    ldh [rSC], a
    ld [bc], a
    add $04
    add c
    add c
    ld [bc], a
    ldh a, [rP1]
    add hl, de
    rst $30
    ld sp, $0231
    ld e, b
    inc d
    ld [bc], a
    ret nz

    ld a, [de]
    add b
    add b
    ld [bc], a
    ldh a, [rSC]
    add hl, sp
    add hl, sp
    ld [bc], a
    ld e, b
    inc d
    ld [hl], a
    nop
    ld b, b
    scf
    adc b
    adc b
    ld [bc], a
    ld h, [hl]
    rlca
    ld bc, $f701

jr_026_4e7d:
    add hl, bc
    add hl, bc
    ld [bc], a
    ld h, [hl]
    nop
    add c
    add c
    add c
    pop bc
    rst $38
    rst $38
    sub b
    sub a
    sub b
    ret c

    sub b
    ret c

    rst $38
    rst $38
    add b
    cp h
    ld [bc], a
    ld l, d
    ld [de], a
    ld de, $1195
    add hl, de
    ld de, $ff19
    rst $38
    add c
    cp l
    add c
    pop bc
    ld [bc], a
    inc e
    jr nz, jr_026_4ea7

jr_026_4ea5:
    ret nz

    ld a, [de]

jr_026_4ea7:
    ret nz

    ret nz

    ld [bc], a
    db $10
    db $10
    jr jr_026_4ea5

    jr nc, @+$32

    ld [bc], a
    jr c, jr_026_4ec8

    ld [bc], a
    pop hl
    inc bc
    ld [bc], a
    ld [$801a], sp
    add b
    ld [bc], a
    jr c, jr_026_4ed8

    ld [bc], a
    add $00
    ld [bc], a
    ld a, [hl+]
    ld d, $18
    rst $30
    db $10
    db $10

jr_026_4ec8:
    ld [bc], a
    jr c, jr_026_4ee5

    ld [$7f08], sp
    nop
    ld b, b
    ccf
    ld b, b
    ccf
    ld [bc], a
    ld l, $14
    jr c, @+$3a

jr_026_4ed8:
    cp [hl]
    ld bc, $9f20
    jr nz, jr_026_4e7d

    ld [bc], a
    ld l, $14
    ld [bc], a
    ld h, $12
    ret nz

jr_026_4ee5:
    cp [hl]
    ret c

    ret c

    rst $18
    ld sp, $5202
    nop
    add e
    add e
    ld [bc], a
    ld hl, sp+$05
    ld [bc], a
    ld sp, $0213
    ld c, b
    ld a, [de]
    jp Jump_000_02c3


    ld e, b
    inc d
    nop
    rst $38
    ld a, a
    ld a, a
    nop
    ld e, b
    ld e, d
    nop
    ld e, b
    ld bc, $7e00
    db $fd
    db $fc
    add d
    ei
    nop
    rst $38
    cp $fe
    nop
    ld a, [de]

jr_026_4f13:
    ld e, d
    nop
    ld a, [de]
    add b
    nop
    ld a, [hl]
    cp a
    ccf
    ld b, c
    rst $18
    ld [bc], a
    nop
    ld [hl-], a
    ld a, c
    ld b, $3f
    ccf
    ccf
    ld a, a
    cp a
    rst $38
    add b

jr_026_4f29:
    rst $38
    ld [bc], a
    db $10
    ld [hl-], a
    sbc [hl]
    ld h, b
    db $fc
    db $fc
    db $fc
    cp $fd
    rst $38
    ld bc, $80ff
    add $80
    res 0, b
    ld hl, sp-$80
    call z, $ff80
    rst $38
    rst $38

jr_026_4f43:
    nop
    rst $38
    rst $38
    nop
    ld bc, $0163
    db $d3
    ld bc, $011f
    inc sp
    ld bc, $4902
    inc sp
    ld [bc], a
    ld h, [hl]
    nop
    ld [bc], a
    ld h, b
    jr c, jr_026_4f29

    jr nc, jr_026_4f13

    ld c, b
    ld a, e
    add h
    ld a, b
    add a

jr_026_4f61:
    or e
    ld c, h
    add $39

jr_026_4f65:
    db $ed
    ld [de], a
    db $eb
    inc d
    di
    inc c
    db $ed
    ld [de], a
    sbc $21
    ld e, $e1
    call $6332
    sbc h
    or a
    ld c, b
    rst $10
    jr z, jr_026_4f65

    inc d
    db $ed
    ld [de], a
    add $39
    or e
    ld c, h
    ld a, b
    add a
    ld a, e
    add h
    or a
    ld c, b
    rst $08

jr_026_4f88:
    jr nc, jr_026_4f61

    jr z, jr_026_4f43

    ld c, b
    ld h, e
    sbc h
    call $1e32
    pop hl
    sbc $21
    db $ed
    ld [de], a
    di
    inc c
    swap h
    or h
    ld c, e
    ld a, e
    add h
    ld [bc], a
    sbc d
    jr nc, jr_026_4fed

    or l
    cp a
    ld b, b
    db $eb
    inc d
    ld h, a
    sbc b
    cp d
    ld b, l
    rst $30
    ld [$24db], sp
    ld l, a
    sub b
    ld a, [$bf05]
    ld b, b
    ei
    inc b
    sbc e
    ld h, h
    rst $20
    jr @+$5f

    and d
    rst $30
    ld [$43bc], sp
    ld [hl], e
    adc h
    ld [bc], a
    cp h
    jr nc, @-$17

    jr jr_026_4f88

    ld b, c
    di
    inc c
    xor l
    ld d, d
    sbc $21
    sbc $21
    ld l, l
    sub d
    ld [bc], a
    xor [hl]
    ccf
    rrca
    ld [bc], a
    sub b
    inc a
    ld [bc], a
    ldh [$3c], a
    ldh a, [rIF]
    jp $8e33


    ld l, [hl]
    sbc e
    ld e, e
    dec a
    cp l
    scf
    or a
    ld a, e
    ei

jr_026_4fed:
    dec a
    cp l
    rrca
    ldh a, [rSCX]
    ld c, h
    pop af
    or $f9
    ld a, [$dddc]
    or h
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76

Jump_026_5002:
    or $2d
    xor l
    dec sp
    cp e
    sbc a
    ld e, a
    adc a
    ld l, a
    jp nz, $f032

    rrca
    cp h
    cp l
    sbc $df
    db $ec
    db $ed
    cp h
    cp l
    reti


    jp c, Jump_026_7671

    db $c3, $cc, $0f


    ldh a, [rSC]
    and b
    rst $38
    ld c, l
    ld [bc], a
    rst $08
    ld c, a
    ld c, l
    ld [bc], a
    cpl
    ld e, a
    ld c, l
    ld [bc], a
    adc a
    ld e, a
    ld c, l
    ld [bc], a
    rst $28
    ld e, a
    ld c, l
    ld [bc], a
    ld c, a
    ld l, a
    ld c, l
    ld [bc], a
    xor a
    ld l, a
    ld c, l
    ld [bc], a
    rrca
    ld a, a
    ld c, l
    ld [bc], a
    ld l, a
    ld a, a
    ld c, l
    ld [bc], a
    rst $08
    ld a, a
    dec e
    nop
    ld [bc], a
    inc c
    ld [hl], $36
    nop
    ld bc, $0302
    inc c
    inc b
    ld b, $04
    dec b
    ld [hl], $36
    inc c
    db $f4
    ld a, [$1510]
    ld b, $07
    ld [$0c09], sp
    ld h, $02
    ld a, [bc]
    dec bc
    db $10
    dec d
    inc c
    ld [de], a
    inc c
    ld c, $0f
    ld d, $17
    jr @+$1b

    inc c
    ld b, [hl]
    inc bc
    dec de
    ld c, $0f
    inc c
    ld [de], a
    inc c
    ld e, $1f
    ld d, $0c
    ld b, a
    inc b
    add hl, de
    ld a, [de]
    dec de
    ld e, $1f
    inc c
    ld [hl-], a
    ld c, $37
    jr c, jr_026_50c9

    ld b, b
    dec sp
    inc a
    ld b, e
    ld b, h
    ccf
    ld b, b
    scf
    jr c, jr_026_50a0

    ld d, b
    rrca
    ld bc, $3a39
    ld b, c
    ld b, d
    dec a
    ld a, $45
    ld b, [hl]
    ld b, c

jr_026_50a0:
    ld b, d
    add hl, sp
    ld a, [hl-]
    inc c
    ld [hl], b
    rrca
    ld bc, $3c3b
    jr nc, jr_026_50dc

    inc c
    add h
    nop
    jr nc, jr_026_50e1

    dec sp
    inc a
    inc c
    ld d, b
    rrca
    ld bc, $3e3d
    inc [hl]
    dec [hl]
    inc c
    and h
    nop
    inc [hl]
    dec [hl]
    dec a
    ld a, $0c
    or b
    rrca
    dec b
    inc c
    add [hl]
    nop
    inc c

jr_026_50c9:
    ld b, $10
    inc c
    ret nc

    rrca
    dec b
    inc c
    and [hl]
    nop
    inc c
    ld h, $10
    inc c
    ld [hl], b
    rrca
    ld bc, $ca0c
    ld [bc], a

jr_026_50dc:
    inc c
    jp z, $070f

    inc c

jr_026_50e1:
    ld [$0c02], a
    ld [$070f], a
    scf
    jr c, jr_026_5125

    inc a
    inc c
    add h
    db $10
    inc c
    ld c, b
    db $10
    inc c
    sub b
    rrca
    inc bc
    dec a
    ld a, $0c
    and h
    db $10
    inc c
    ld l, b
    db $10
    inc c
    ld [hl], b
    ld c, $10
    dec hl
    inc c
    inc b
    ld [$2f2e], sp
    inc c
    ld [de], a
    inc c
    inc c
    inc h
    ld b, $0c
    ld a, [hl+]
    ld [bc], a
    inc c
    ld [de], a
    ld a, [bc]
    nop
    ld [$7f02], sp
    ld a, a
    adc b
    rst $20
    adc b
    rst $20
    ret nc

    ret nc

    ld hl, sp-$7a
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    ret nz

jr_026_5125:
    ret nz

    rst $38
    rst $38
    ld [$08e7], sp
    rst $20
    jr @+$1a

    cp $01
    add b
    ld a, a
    add b
    ld a, a
    nop
    nop
    ld [bc], a
    db $10
    ld [bc], a
    nop
    nop
    ld a, b
    ld b, $40

jr_026_513e:
    ld a, $40
    ld a, $38
    jr c, @+$01

    rst $38
    jr jr_026_513e

    ld [$01e7], sp
    ld bc, $1802
    ld [bc], a
    db $10
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    add b
    add b
    ld [bc], a
    jr z, jr_026_5158

jr_026_5158:
    ld b, c
    ccf
    ld bc, $fe01
    cp $09
    rst $20
    add hl, bc
    rst $20
    inc bc
    inc bc
    rst $38
    ld bc, $7f81
    add c
    ld a, a
    add e
    add e
    rst $30
    nop
    nop
    rst $30
    ld [$ff08], sp
    rst $38
    rst $38
    rst $38
    add b
    add b
    add b
    ret nz

    rst $38
    rst $38
    ld [bc], a
    ld h, b
    rrca
    dec a
    ld [bc], a
    nop
    ld [bc], a
    ret nz

    ret nz

    ld [bc], a
    ld [$c302], sp
    jp Jump_026_5002


    ld [bc], a
    ld bc, $0201
    ld e, b
    ld [bc], a
    add c
    add c
    rst $08
    and b
    ld [bc], a
    ld [bc], a
    nop
    jp $f9c3


    add a
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    rst $08
    ld hl, $5202
    nop
    add c
    add c
    ld [bc], a
    ld e, b
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ldh [rSC], a
    pop bc
    pop bc
    ld [bc], a
    ld [$8002], sp
    add b
    rst $08
    jr nz, jr_026_51bb

    ld [de], a
    nop

jr_026_51bb:
    sub b
    sub b
    ld [bc], a
    jr jr_026_51c4

    rst $18
    jr nc, jr_026_51c5

    ld [de], a

jr_026_51c4:
    nop

jr_026_51c5:
    inc bc
    inc bc
    ld a, c
    rlca
    ld [bc], a
    ld a, [hl+]
    nop
    nop
    nop
    ld [bc], a
    db $10
    ld [de], a
    nop
    nop
    ld [bc], a
    jr jr_026_51da

    ld [bc], a
    db $10
    ld [de], a
    db $10

jr_026_51da:
    db $10
    ld [bc], a
    ld c, b
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ldh a, [rSC]
    ld de, $0211
    ld e, b
    ld [bc], a
    ld bc, $1001
    sub a
    db $10
    jr @+$12

    jr @+$01

    rst $38
    add b
    cp [hl]
    add b
    ret nz

    ld [bc], a
    ld l, h
    nop
    ld [bc], a
    ld h, b
    rra
    dec a
    ld [bc], a
    ldh [rSC], a
    ld [bc], a
    add $04
    add c
    add c
    ld [bc], a
    ldh a, [rP1]
    add hl, de
    rst $30
    ld sp, $0231
    ld e, b
    inc d
    ld [bc], a
    ret nz

    ld a, [de]
    add b
    add b
    ld [bc], a
    ldh a, [rSC]
    add hl, sp
    add hl, sp
    ld [bc], a
    ld e, b
    inc d
    ld [hl], a
    nop
    ld b, b
    scf
    adc b
    adc b
    ld [bc], a
    ld h, [hl]
    rlca
    ld bc, $f701

jr_026_5228:
    add hl, bc
    add hl, bc
    ld [bc], a
    ld h, [hl]
    nop
    add c
    add c
    add c
    pop bc
    rst $38
    rst $38
    sub b
    sub a
    sub b
    ret c

    sub b
    ret c

    rst $38
    rst $38
    add b
    cp h
    ld [bc], a
    ld l, d
    ld [de], a
    ld de, $1195
    add hl, de
    ld de, $ff19
    rst $38
    add c
    cp l
    add c
    pop bc
    ld [bc], a
    inc e
    jr nz, jr_026_5252

jr_026_5250:
    ret nz

    ld a, [de]

jr_026_5252:
    ret nz

    ret nz

    ld [bc], a
    db $10
    db $10
    jr jr_026_5250

    jr nc, @+$32

    ld [bc], a
    jr c, jr_026_5273

    ld [bc], a
    pop hl
    inc bc
    ld [bc], a
    ld [$801a], sp
    add b
    ld [bc], a
    jr c, jr_026_5283

    ld [bc], a
    add $00
    ld [bc], a
    ld a, [hl+]
    ld d, $18
    rst $30
    db $10
    db $10

jr_026_5273:
    ld [bc], a
    jr c, jr_026_5290

    ld [$7f08], sp
    nop
    ld b, b
    ccf
    ld b, b
    ccf
    ld [bc], a
    ld l, $14
    jr c, @+$3a

jr_026_5283:
    cp [hl]
    ld bc, $9f20
    jr nz, jr_026_5228

    ld [bc], a
    ld l, $14
    ld [bc], a
    ld h, $12
    ret nz

jr_026_5290:
    cp [hl]
    ret c

    ret c

    rst $18
    ld sp, $5202
    nop
    add e
    add e
    ld [bc], a
    ld hl, sp+$05
    ld [bc], a
    ld sp, $0213
    ld c, b
    ld a, [de]
    jp Jump_000_02c3


    ld e, b
    inc d
    nop
    rst $38
    ld a, a
    ld a, a
    nop
    ld e, b
    ld e, d
    nop
    ld e, b
    ld bc, $7e00
    db $fd
    db $fc
    add d
    ei
    nop
    rst $38
    cp $fe
    nop
    ld a, [de]

jr_026_52be:
    ld e, d
    nop
    ld a, [de]
    add b
    nop
    ld a, [hl]
    cp a
    ccf
    ld b, c
    rst $18
    ld [bc], a
    nop
    ld [hl-], a
    ld a, c
    ld b, $3f
    ccf
    ccf
    ld a, a
    cp a
    rst $38
    add b

jr_026_52d4:
    rst $38
    ld [bc], a
    db $10
    ld [hl-], a
    sbc [hl]
    ld h, b
    db $fc
    db $fc
    db $fc
    cp $fd
    rst $38
    ld bc, $80ff
    add $80
    res 0, b
    ld hl, sp-$80
    call z, $ff80
    rst $38
    rst $38

jr_026_52ee:
    nop
    rst $38
    rst $38
    nop
    ld bc, $0163
    db $d3
    ld bc, $011f
    inc sp
    ld bc, $4902
    inc sp
    ld [bc], a
    ld h, [hl]
    nop
    ld [bc], a
    ld h, b
    jr c, jr_026_52d4

    jr nc, jr_026_52be

    ld c, b
    ld a, e
    add h
    ld a, b
    add a

jr_026_530c:
    or e
    ld c, h
    add $39

jr_026_5310:
    db $ed
    ld [de], a
    db $eb
    inc d
    di
    inc c
    db $ed
    ld [de], a
    sbc $21
    ld e, $e1
    call $6332
    sbc h
    or a
    ld c, b
    rst $10
    jr z, jr_026_5310

    inc d
    db $ed
    ld [de], a
    add $39
    or e
    ld c, h
    ld a, b
    add a
    ld a, e
    add h
    or a
    ld c, b
    rst $08

jr_026_5333:
    jr nc, jr_026_530c

    jr z, jr_026_52ee

    ld c, b
    ld h, e
    sbc h
    call $1e32
    pop hl
    sbc $21
    db $ed
    ld [de], a
    di
    inc c
    swap h
    or h
    ld c, e
    ld a, e
    add h
    ld [bc], a
    sbc d
    jr nc, jr_026_5398

    or l
    cp a
    ld b, b
    db $eb
    inc d
    ld h, a
    sbc b
    cp d
    ld b, l
    rst $30
    ld [$24db], sp
    ld l, a
    sub b
    ld a, [$bf05]

Call_026_5360:
    ld b, b
    ei
    inc b
    sbc e
    ld h, h
    rst $20
    jr @+$5f

    and d
    rst $30
    ld [$43bc], sp
    ld [hl], e
    adc h
    ld [bc], a
    cp h
    jr nc, @-$17

    jr jr_026_5333

    ld b, c
    di
    inc c
    xor l
    ld d, d
    sbc $21
    sbc $21
    ld l, l
    sub d
    ld [bc], a
    xor [hl]
    ccf
    rrca
    ld [bc], a
    sub b
    inc a
    ld [bc], a
    ldh [$3c], a
    ldh a, [rIF]
    jp $8e33


    ld l, [hl]
    sbc e
    ld e, e
    dec a
    cp l
    scf
    or a
    ld a, e
    ei

jr_026_5398:
    dec a
    cp l
    rrca
    ldh a, [rSCX]
    ld c, h
    pop af
    or $f9
    ld a, [$dddc]
    or h
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76
    or $2d
    xor l
    dec sp
    cp e
    sbc a
    ld e, a
    adc a
    ld l, a
    jp nz, $f032

    rrca
    cp h
    cp l
    sbc $df
    db $ec
    db $ed
    cp h
    cp l
    reti


    jp c, Jump_026_7671

    db $c3, $cc, $0f


    ldh a, [rSC]
    and b
    rst $38
    ld c, l
    ld [bc], a
    rst $08
    ld c, a
    ld c, l
    ld [bc], a
    cpl
    ld e, a
    ld c, l
    ld [bc], a
    adc a
    ld e, a
    ld c, l
    ld [bc], a
    rst $28
    ld e, a
    ld c, l
    ld [bc], a
    ld c, a
    ld l, a
    ld c, l
    ld [bc], a
    xor a
    ld l, a
    ld c, l
    ld [bc], a
    rrca
    ld a, a
    ld c, l
    ld [bc], a
    ld l, a
    ld a, a
    ld c, l
    ld [bc], a
    rst $08
    ld a, a
    dec e
    nop
    ld [bc], a
    inc c
    ld [hl], $36
    ld [hl], $36
    nop
    ld bc, $0302
    inc c
    ld b, $02
    inc b
    dec b
    inc c
    nop
    ld bc, $f50c
    ei
    db $10
    dec d
    ld b, $07
    ld [$0c09], sp
    ld h, $00
    db $10
    dec d
    inc c
    db $10
    rrca
    ld bc, $0f0e
    ld d, $17
    jr @+$1b

    inc c
    ld b, [hl]
    nop
    ld c, $0f
    inc c
    db $10
    rrca
    ld bc, $1f1e
    ld d, $19
    jr jr_026_5445

    inc c
    ld h, [hl]
    nop
    ld e, $1f
    inc c
    jr nc, jr_026_5443

    inc bc
    jr nc, jr_026_5468

    inc c
    add [hl]
    ld [bc], a
    inc c
    ld c, [hl]
    rrca
    dec b
    inc [hl]
    dec [hl]
    inc c
    and [hl]
    ld [bc], a

jr_026_5443:
    inc c
    ld l, [hl]

jr_026_5445:
    rrca
    dec b
    scf
    jr c, @+$41

    ld b, b
    dec sp
    inc a
    scf
    jr c, jr_026_545c

    ld c, [hl]
    rrca
    dec b
    add hl, sp
    ld a, [hl-]
    ld b, c
    ld b, d
    dec a
    ld a, $39
    ld a, [hl-]
    inc c

jr_026_545c:
    ld l, [hl]
    rrca
    dec b
    ld b, e
    ld b, h
    dec sp
    inc a
    inc c
    db $ca, $0f, $09

    ld b, l

jr_026_5468:
    ld b, [hl]
    dec a
    ld a, $0c
    ld [$090f], a
    ccf
    ld b, b
    inc c
    add $00
    ccf
    ld b, b
    inc c
    ld c, [hl]
    rrca
    dec b
    ld b, c
    ld b, d
    inc c
    and $00
    ld b, c
    ld b, d
    inc c
    ld l, [hl]
    rrca
    ld b, e
    db $10
    dec hl
    inc c
    ld b, $04
    ld l, $2f
    inc c
    db $10
    rrca
    ld bc, $260c
    nop
    inc c
    and $12
    ld a, [bc]
    dec bc
    inc c
    db $10
    inc c
    nop
    ld [$800b], sp
    cp a
    adc b
    or d
    ld b, b
    ld e, h
    ld b, b
    call z, Call_026_5360
    adc b
    cp a
    sub b
    sbc [hl]
    ldh [$e6], a
    nop
    inc sp
    nop
    jp $e800


    ld b, b
    xor a
    ld h, $d9
    inc b
    ei
    inc h
    xor d
    nop
    and $00
    ld a, [hl-]
    nop
    call c, $7588
    add hl, de
    and h
    jr nc, @+$4d

    jr z, jr_026_5521

    inc b
    ld [$e600], a
    ld bc, $49e9
    sub l
    ld a, [bc]
    ld d, [hl]
    ld b, $0f
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    ld d, [hl]
    ld bc, $01fd
    ld a, e
    add b
    sbc [hl]
    add b
    cp a
    sub b
    adc a
    ld b, b
    ld a, h
    ld b, b
    db $d3
    ld b, b
    ld l, h
    add b
    cp [hl]
    add b
    sbc a
    rst $38
    dec bc
    ld d, b
    dec bc
    ld bc, $0179
    db $fd
    add hl, bc
    pop af
    ld [bc], a
    ld a, $02
    rlc d
    ld [hl], $01
    ld a, l
    ld bc, $81f9
    xor [hl]
    adc b
    cp e
    ret nz

    db $dd
    add b
    adc a
    ld b, b
    ld e, a
    ld h, b
    rst $28
    ld b, b
    ld b, e
    add b
    sbc c
    ld bc, $0074
    cp l
    nop
    rst $38
    nop
    db $ed
    nop
    rst $38
    nop
    cp a
    ld [$00d7], sp

jr_026_5521:
    ld sp, hl
    add c
    ld [hl], l

Call_026_5524:
    ld de, $03dd
    cp e
    ld bc, $02f1
    ld a, [$f706]
    ld [bc], a
    jp nc, $b901

    pop hl
    db $ed
    ld e, $5e
    inc b

jr_026_5537:
    push hl
    ld c, b
    or d
    jr nc, jr_026_558b

    db $10
    cpl
    nop
    cp [hl]
    nop
    and $f6
    or $09
    ld a, e
    nop
    ld hl, sp+$00
    call c, Call_000_2e11
    inc e
    ld h, e
    jr jr_026_5537

    ld [$5ad6], sp
    ld e, d
    ld c, [hl]
    ld c, [hl]
    ld h, [hl]
    ld h, [hl]
    daa
    daa
    inc hl
    inc hl
    ld hl, $7621
    db $76
    adc c
    xor c
    ld b, a
    ld b, a
    ld l, l
    ld l, l
    cp d
    cp d
    sub e
    sub e
    xor l
    xor l
    ld b, e
    ld b, e
    dec bc
    db $fc
    ldh a, [$0b]
    ret nc

    nop
    ld a, [hl-]
    ld a, [hl-]
    inc sp
    inc sp
    call $03cd
    inc bc
    dec bc
    db $fc
    ldh a, [$df]
    rst $18
    ld c, d
    ld c, d
    and $e6
    and l
    and l
    add hl, de
    add hl, de
    and $e6

jr_026_558b:
    dec bc
    db $fc
    ldh a, [$b0]
    db $f4
    sbc b
    cp b
    ld d, h
    ld d, h
    ld d, [hl]
    sub $b2
    ld [hl-], a
    and d
    ld [hl+], a
    inc hl
    and e
    ld [hl], e
    di
    ld l, c
    ld l, c
    ld c, l
    ld c, l
    ld b, l
    push bc
    ld b, a
    rst $00
    inc hl
    and e
    xor e
    ld l, e
    xor c
    ld l, c
    jp hl


    add hl, hl
    ld d, l
    push de
    or a
    or a
    or [hl]
    or [hl]
    ld l, [hl]
    xor $4c
    ld c, h
    sub h
    sub h
    sub [hl]
    sub [hl]
    ld a, c
    ld a, c
    sub l
    rst $10
    sbc c
    cp l
    ld d, d
    ld d, d
    ld d, d
    ld d, e
    dec [hl]
    inc [hl]
    dec h
    inc h
    inc h
    dec h
    db $76
    ld [hl], a
    ld l, [hl]
    ld l, [hl]
    jp z, $42ca

    ld b, e
    ld h, d
    ld h, e
    inc h
    dec h
    dec l
    ld l, $8d
    adc [hl]
    rst $08
    call z, $6667
    ld h, l
    ld h, l
    dec [hl]
    dec [hl]
    ld [hl], $37
    ld [hl], d
    ld [hl], d
    reti


    reti


    reti


    reti


    adc $ce
    sub b
    call nc, $020b
    ld de, $3256
    ld [hl-], a
    ld d, d
    ld d, d
    ld c, e
    ld c, e
    ld l, e
    ld l, e
    cp c
    cp c
    db $dd
    db $dd
    ld c, l
    ld c, l
    ld l, a
    ld l, a
    cp e
    cp e
    sbc c
    sbc c
    sbc l
    sbc l
    dec [hl]
    dec [hl]
    ld [hl], $36
    inc sp
    inc sp
    ld [hl], e
    ld [hl], e
    ld l, c
    ld l, c
    cp c
    cp c
    xor l
    xor l
    xor $ee
    rst $08
    rst $08
    dec bc
    ldh [$0c], a
    rst $38
    nop
    ld a, a
    ld a, a
    nop
    ld e, b
    ld a, c
    ld b, $3f
    ccf
    ccf
    ld a, a
    cp a
    rst $38
    add b
    rst $38
    rst $38
    nop
    cp $fe
    nop
    ld a, [de]
    sbc [hl]
    ld h, b
    db $fc
    db $fc
    db $fc
    cp $fd
    rst $38
    ld bc, $80ff
    add $80
    res 0, b
    ld hl, sp-$80
    call z, $ff80
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld bc, $0163
    db $d3
    ld bc, $011f
    inc sp
    ld bc, $c90b
    inc de
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld a, [$e00b]
    inc de
    dec bc
    db $eb
    ld [de], a
    push de
    dec bc
    ld [$7d13], a
    nop
    xor d

jr_026_5670:
    dec bc
    and b
    rst $38
    ld c, l
    dec bc
    ld e, a
    cpl
    ld c, l
    dec bc
    cp a
    cpl
    ld c, l
    dec bc
    rra
    ccf
    ld c, l
    dec bc
    ld a, a
    ccf
    ld c, l
    dec bc
    rst $18
    ccf
    ld c, l
    dec bc
    ccf
    ld c, a
    ld c, l
    dec bc
    sbc a
    ld c, a
    ld c, l
    xor a
    ld d, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, e
    add h
    add h
    ld a, e
    jp nc, $b92d

    ld b, [hl]
    ld [hl], e
    adc h
    adc c
    db $76
    ld h, a
    sbc b
    ld a, b
    add a
    ld a, a
    add b
    dec a
    jp nz, Jump_026_7f80

    db $dd
    ld [hl+], a
    sbc l
    ld h, d
    ld [hl], e
    adc h
    or b
    ld c, a
    adc $31
    ld e, [hl]
    and c
    inc h
    db $db
    ld a, b
    add a
    or a
    ld c, b
    adc a
    ld [hl], b
    db $dd
    ld [hl+], a
    jr @-$17

    db $dd
    ld [hl+], a
    add sp, $17
    rst $20
    jr @-$1f

    jr nz, jr_026_56eb

    pop hl
    db $fc
    inc bc
    db $eb
    inc d
    ld h, a
    adc b
    rr b
    add l
    db $76
    add a
    ld h, $4c
    call Call_026_5b98
    jp Jump_026_7c3c


    add e
    rst $10
    jr jr_026_5670

    inc l
    ld b, a
    call nz, $5c9b
    rst $38

jr_026_56eb:
    nop
    ei
    inc b
    xor $11
    xor a
    ret nc

    sub a
    xor b
    ld e, b
    ld h, a
    ld a, e
    ld b, h
    and h
    sbc e
    or d
    call $86b9
    ld d, e
    ld l, h
    adc c
    ld [hl], l
    ld h, [hl]
    sbc d
    ld a, c
    add l
    ld a, [hl]
    add d
    ld a, $c2
    add d
    ld a, [hl]
    db $dd
    ld hl, $629c
    dec bc
    ld h, b
    ld e, h
    xor l
    ld d, c
    ld [hl], l
    adc c
    ld a, d
    add [hl]
    ld a, d
    add [hl]
    add l
    ld a, c
    pop de
    cpl
    cp c
    ld b, a
    ld [hl], c
    adc a
    ld l, h
    db $ed
    sbc e
    and a
    cp h
    jp Jump_026_621d


    ccf
    add b
    ld a, [hl]
    ld b, c
    ld a, a
    ret nz

    or a
    ret z

    ld b, b
    ld d, l
    inc sp
    cp e
    dec bc
    inc h
    ld e, b
    ld [hl], $b7
    reti


    push hl
    dec a
    jp $8678


    add h
    ld a, c
    jp nc, $ba2e

    ld b, a
    ld [hl], c
    adc a
    or e
    call z, $8fb0
    ld c, [hl]
    ld [hl], c
    ld e, [hl]
    ld h, c
    and h
    sbc e
    cp b
    rst $00
    or a
    adc b
    ld b, e
    di
    dec bc
    jr nz, jr_026_57b7

    inc sp
    cp e
    ld [hl], d
    adc [hl]
    or d
    ld c, d
    adc $32
    ld e, [hl]
    and d
    dec h
    reti


    ld a, c
    add a
    or l
    ld c, c
    ld [hl+], a
    ld l, d
    dec bc
    and b
    ld c, a
    ld c, l
    dec bc
    ld e, a
    ld l, a
    ld c, l
    dec bc
    cp a
    rst $38
    ld l, $ff
    rra
    pop hl
    ld hl, $00de
    add e
    ld a, b
    ld a, c
    db $fc
    db $fd
    db $fd
    call nz, $b9c4
    ld bc, $c1fd
    db $dd
    ld [c], a
    xor $ea
    ld h, [hl]
    push hl
    ld l, c
    push hl
    ld l, e
    push bc
    rlc l
    dec de
    add b
    ld h, d
    adc [hl]
    ld c, l
    sbc h
    ld e, d
    sbc h
    ld e, d
    ld e, h
    sbc e
    ld e, $dd
    rrca
    xor $00
    rst $38
    adc l
    ld [hl], l
    db $fd
    adc l
    db $fc
    cp $78
    ld a, d
    ld bc, $1107
    rst $28
    pop hl

jr_026_57b7:
    dec e
    ld bc, $0bfd
    and c
    ld l, a
    ld c, l
    dec bc
    sbc a
    ld a, a
    ld c, l
    nop
    ld [bc], a
    ld c, $01
    ld [bc], a
    ld bc, $0102
    inc bc
    ld d, b
    ld d, c
    ld c, $ff
    ld a, [c]
    ld [bc], a
    ld bc, $0301
    dec b
    dec b
    ld c, $f4
    ld hl, sp+$08
    add hl, bc
    ld d, $16
    ld d, $13
    ld d, d
    ld d, e
    db $10
    ld d, $0e
    add hl, hl
    ld [bc], a
    rlca
    ld b, $0e
    ld [de], a
    ld a, [bc]
    ld bc, $1706
    rla
    rla
    inc d
    ld d, b
    ld d, c
    ld de, $0e17
    ld c, c
    ld [bc], a
    inc b
    ld [$0b0b], sp
    ld c, $14
    ld a, [bc]
    inc c
    inc c
    jr jr_026_5818

    ld d, d
    ld d, e
    ld [de], a
    inc c
    jr jr_026_5821

    jr @+$1a

    inc c
    inc c
    db $10
    ld d, $07
    ld bc, $340e
    ld a, [bc]
    ld d, b
    ld d, a
    add hl, de
    add hl, de

jr_026_5818:
    ld d, [hl]
    ld d, c
    ld d, l
    ld d, a
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld d, [hl]

jr_026_5821:
    ld d, h
    ld de, $0417
    ld [$140e], sp
    ld a, [bc]
    ld d, d
    ld d, a
    ld e, $1f
    ld e, b
    ld d, e
    ld d, d
    ld e, c
    ld e, $1f
    ld e, $1f
    ld e, b
    ld d, c
    ld [de], a
    inc c
    ld c, $72
    inc c
    ld d, h
    ld d, a
    rra
    ld e, $58
    ld d, h
    ld a, [de]
    dec de
    ld e, e
    ld e, h
    rra
    ld e, $56
    ld d, e
    ld d, l
    ld d, c
    ld c, $92
    inc c
    ld d, b
    ld d, a
    ld e, $1f
    ld e, l
    ld e, [hl]
    inc e
    dec e
    ld e, [hl]
    ld e, a
    ld e, $1f
    ld e, b
    ld d, l
    ld d, d
    ld d, h
    ld c, $72
    inc c
    ld d, d
    ld d, a
    rra
    ld e, $0d
    rrca
    ld d, [hl]
    ld d, a
    rrca
    dec c
    ld c, $cc
    nop
    ld d, b
    ld c, $d1
    rrca
    ld [bc], a
    ld e, $1f
    ld e, l
    ld e, a
    ld c, $24
    ld de, $525e
    ld d, e
    ld c, $f2
    dec c
    ld d, c
    ld c, $ca
    nop
    dec c
    dec c
    rra
    ld e, $0e
    inc b
    ld de, $d10e
    ld c, $53
    ld c, $22
    ld [de], a
    ld c, $66
    ld [de], a
    ld d, [hl]
    ld c, $31
    ld e, $55
    ld d, d
    ld d, h
    ld e, e
    ld c, $86
    dec d
    ld c, $10
    ld e, $54
    ld d, e
    ld d, b
    ld c, $a3
    ld [de], a
    ld d, l
    ld d, d
    ld d, h
    ld d, d
    ld d, e
    ld d, l
    ld c, $31
    inc e
    ld [$0a0b], sp
    ld c, $c2
    ld a, [de]
    ld bc, $930e
    add hl, bc
    ld c, $29
    inc bc
    ld c, $e0
    add hl, de
    ld c, $a0
    ld hl, sp+$00
    ld [bc], a
    ld c, $01
    ld [bc], a
    ld bc, $0102
    inc bc
    ld d, b
    ld d, c
    ld c, $ff
    ld a, [c]
    ld [bc], a
    ld bc, $0301
    dec b
    dec b
    ld c, $f4
    ld hl, sp+$08
    add hl, bc
    ld d, $16
    ld d, $13
    ld d, d
    ld d, e
    db $10
    ld d, $0e
    add hl, hl
    ld [bc], a
    rlca
    ld b, $0e
    ld [de], a
    ld a, [bc]
    ld bc, $1706
    rla
    rla
    inc d
    ld d, b
    ld d, c
    ld de, $0e17
    ld c, c
    ld [bc], a
    inc b
    ld [$0b0b], sp
    ld c, $14
    ld a, [bc]
    inc c
    inc c
    jr jr_026_591c

    ld d, d
    ld d, e
    ld [de], a
    inc c
    jr jr_026_5925

    jr @+$1a

    inc c
    inc c
    db $10
    ld d, $07
    ld bc, $340e
    ld a, [bc]
    ld [hl], b
    ld [hl], c
    add hl, de
    add hl, de

jr_026_591c:
    ld d, [hl]
    ld d, c
    ld d, l
    ld d, a
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld d, [hl]

jr_026_5925:
    ld d, h
    ld de, $0417
    ld [$140e], sp
    ld a, [bc]
    ld [hl], d
    ld [hl], e
    ld e, $1f
    ld e, b
    ld d, e
    ld d, d
    ld e, c
    ld e, $1f
    ld e, $1f
    ld e, b
    ld d, c
    ld [de], a
    inc c
    ld c, $72
    inc c
    ld d, h
    ld d, a
    rra
    ld e, $58
    ld d, h
    ld a, [de]
    dec de
    ld e, e
    ld e, h
    rra
    ld e, $56
    ld d, e
    ld d, l
    ld d, c
    ld c, $92
    inc c
    ld d, b
    ld d, a
    ld e, $1f
    ld e, l
    ld e, [hl]
    inc e
    dec e
    ld e, [hl]
    ld e, a
    ld e, $1f
    ld e, b
    ld d, l
    ld d, d
    ld d, h
    ld c, $72
    inc c
    ld d, d
    ld d, a
    rra
    ld e, $0d
    rrca
    ld d, [hl]
    ld d, a
    rrca
    dec c
    ld c, $cc
    nop
    ld d, b
    ld c, $d1
    rrca
    ld [bc], a
    ld e, $1f
    ld e, l
    ld e, a
    ld c, $24
    ld de, $525e
    ld d, e
    ld c, $f2
    dec c
    ld d, c
    ld c, $ca
    nop
    dec c
    dec c
    rra
    ld e, $0e
    inc b
    ld de, $d10e
    ld c, $53
    ld c, $22
    ld [de], a
    ld c, $66
    ld [de], a
    ld d, [hl]
    ld c, $31
    ld e, $55
    ld d, d
    ld d, h
    ld e, e
    ld c, $86
    dec d
    ld c, $10
    ld e, $54
    ld d, e
    ld d, b
    ld c, $a3
    ld [de], a
    ld d, l
    ld d, d
    ld d, h
    ld d, d
    ld d, e
    ld d, l
    ld c, $31
    inc e
    ld [$0a0b], sp
    ld c, $c2
    ld a, [de]
    ld bc, $930e
    add hl, bc
    ld c, $29
    inc bc
    ld c, $e0
    add hl, de
    ld c, $a0
    ld hl, sp+$00
    ld [$9118], sp
    xor d
    ret nz

    sub b
    adc b
    push bc
    sub d
    sbc [hl]
    ld h, b
    ld d, d
    ld c, d
    ld a, l
    db $f4
    ld a, [$eee0]
    nop
    add hl, sp
    ld [bc], a
    push de
    add d
    ld l, d
    nop
    adc l
    ld h, b
    ld d, $08
    ld a, c
    ld [hl-], a
    or h
    dec b
    db $eb
    nop
    call nz, $bd04
    add hl, de
    jp c, Jump_000_25c8

    inc b
    jp z, $7040

    add hl, bc
    rst $00
    ld [bc], a
    ld [hl], d
    ld bc, $0989
    push de
    ld a, [bc]
    sub $06
    rrca
    ld [hl-], a
    ld b, d
    ld a, [bc]
    ld a, [hl]
    ld de, $1115
    dec hl
    add [hl]
    or [hl]
    add b
    xor l
    ret nz

    pop bc
    add b
    adc h
    ld c, h
    ld d, d
    ld h, c
    db $fd
    ld c, h
    ld c, l
    adc b
    sub e
    rst $38
    jr jr_026_5a70

    dec bc
    ld bc, $8985
    ld d, l
    inc bc
    adc e
    ld hl, $8251
    ld [hl], d
    ld a, [bc]
    ld l, e
    ld [hl-], a
    or d
    ld bc, $a0d9
    cp h
    add l
    add [hl]
    add c
    sbc l
    ld b, b
    ld b, [hl]
    ld d, b
    bit 0, h
    ld a, h

Jump_026_5a3d:
    sbc c
    sbc d
    add d
    or l
    jr jr_026_5a63

    dec c
    ret


    add hl, bc
    dec [hl]
    ld de, $02c9
    add $22
    dec hl
    db $da, $e6, $01

    ld e, l
    ld bc, $e1e1
    db $ed
    ld e, $5e
    inc b
    push hl
    jr @+$18

    inc b
    nop
    and $f6
    or $09
    ld a, e
    ld b, b

jr_026_5a63:
    ld hl, $6400
    nop
    sub [hl]
    nop
    cp c
    nop
    rst $20
    ld [$1bd6], sp
    ld e, e

jr_026_5a70:
    ld e, $9e
    ld [hl], $36
    db $e3
    db $eb
    ld h, c
    ld h, c
    ld [hl-], a
    or d
    ld a, [hl]
    ld a, [hl]
    adc c
    xor c
    ld b, a
    ld b, a
    ld l, a
    ld l, a
    cp d
    cp d
    sub c
    sub c

jr_026_5a86:
    adc c
    adc c

jr_026_5a88:
    db $76
    db $76
    jr jr_026_5a88

    ldh a, [$c7]
    rst $00
    ld l, a
    ld l, a
    ld a, [hl-]
    ld a, [hl-]
    ld sp, $c931
    ret


jr_026_5a97:
    ld b, $06
    jr jr_026_5a97

    ldh a, [$c3]
    jp $6565


    jr jr_026_5a86

    nop
    pop de
    pop de

jr_026_5aa5:
    ld c, $0e
    jr jr_026_5aa5

    ldh a, [$b0]
    db $f4
    sbc b
    cp b
    ld d, b
    ld d, b
    ld d, l
    db $dd
    or d
    ld [hl-], a
    xor [hl]
    ld l, $23
    or e
    ld h, e
    db $eb
    ld [hl], l
    ld [hl], l
    ld l, b
    ld l, b
    ld b, l
    push bc
    ld b, a
    rst $10
    dec l
    xor l
    cp b
    ld a, b
    cp b
    ld a, d
    db $ed
    dec l
    ld d, a
    rst $10
    and e
    db $eb
    or e
    or e
    ld l, [hl]
    xor $4c
    ld l, h
    sub h
    call nc, $9696
    ld a, c
    ld a, c
    and l
    rst $10
    adc l
    xor l
    ld d, d
    ld d, [hl]
    ld [hl-], a
    inc sp
    dec a
    inc a
    ld c, l
    ld c, h
    add [hl]
    sub a
    jp z, Jump_026_76cb

    db $76
    jp nz, Jump_026_42da

    ld b, [hl]
    ld [hl+], a
    and e
    dec [hl]
    ld [hl], h
    ld c, l
    ld c, [hl]
    add l
    sub [hl]
    call Call_026_7ecc
    ld a, a
    add hl, hl
    add hl, hl
    dec h
    or l
    ld b, d
    ld c, e
    ld [c], a
    ld [c], a
    ld a, l
    ld a, l
    add hl, hl
    xor c
    ld b, [hl]
    ld d, [hl]
    ld b, h
    or d
    add hl, bc
    ld a, c
    add [hl]
    and [hl]
    db $ec
    db $ed
    ld b, h
    ld d, l
    ld b, d
    ld a, d
    rst $00
    rst $10
    cp c
    cp c
    adc b

jr_026_5b1b:
    xor d
    ret nc

    call nc, $6d61
    ld [hl], d
    ld [hl], d
    sbc [hl]
    sbc [hl]
    adc c
    xor c
    ret nc

    jp nc, $b1b1

    ld a, [de]
    ld e, d
    inc e
    sbc l

jr_026_5b2e:
    inc [hl]
    inc [hl]
    ld [c], a
    ld [$c818], a
    nop
    ld l, h
    ld l, h
    add $c6
    jr jr_026_5b1b

    inc c
    ld [hl], $b6
    ld b, b
    ld e, l
    add b
    or c
    jr jr_026_5b8a

    ld b, $b8
    cp e
    adc d
    ld d, d
    ld bc, $188d
    ld h, [hl]
    ld b, $8c
    ld a, h
    scf
    ld hl, sp+$5f
    ldh [rIE], a
    add b
    cp a
    ret nz

    sbc a
    and b
    add a
    ret z

    or b
    call z, Call_000_3e31
    db $ec
    rra
    ld_long a, $ff07
    ld bc, $03fd
    ld sp, hl
    dec b
    pop hl
    rla
    dec de
    push hl
    rst $18
    add b
    sub a
    ret z

    sub a
    xor b
    ld h, a
    ret nc

    ld [hl], e
    db $f4
    ld c, [hl]
    ld c, l
    ld c, e
    ld l, e
    jr nc, jr_026_5b2e

    rst $28
    ld de, $05eb

jr_026_5b82:
    db $eb
    dec b
    ld l, d
    sub a
    ld l, [hl]
    rra
    ld a, d
    ld a, [hl-]

jr_026_5b8a:
    jp nc, $0cd6

    dec c
    ld a, [hl]
    add c
    rst $18
    jr nz, jr_026_5c12

    add e
    db $fc
    rlca
    ld a, b
    adc a

Call_026_5b98:
    ldh a, [rNR22]
    ldh [$27], a
    pop hl
    daa
    rst $38
    rra
    jp hl


    rst $30
    jp hl


    rla
    jr jr_026_5bba

    ld [hl+], a
    rst $38
    ld a, a
    rst $38
    add c
    rst $38
    ld hl, sp-$69
    rst $28
    sub a
    add sp, $18
    inc h
    ld [hl+], a
    rst $38
    cp $ff

jr_026_5bb7:
    add c
    ld a, [hl]
    add c

jr_026_5bba:
    ei
    inc b
    cp $c1
    ccf
    ldh [rNR34], a
    pop af
    rrca
    add sp, $07
    db $e4
    add a
    db $e4
    jp $c746


    ld b, l
    adc $4a
    sbc $56
    cp d
    xor [hl]
    cp d
    xor [hl]
    ld a, [c]
    sub $f2
    sub $ff
    ld a, a
    and c
    push hl
    ld hl, $1865
    ld d, h
    ld h, $ff
    cp $85
    and a
    add h
    and [hl]
    jr jr_026_5c4d

    ld h, $c3
    ld h, d
    db $e3
    and d
    ld [hl], e
    ld d, d
    ld a, e
    ld l, d
    ld e, l
    ld [hl], l
    ld e, l
    ld [hl], l
    ld c, a
    ld l, e
    ld c, a
    ld l, e
    ld [c], a
    and $e2
    and [hl]
    jr jr_026_5b82

    ld hl, $ffa4
    add b
    rst $38
    cp l
    ld [c], a
    and [hl]
    jr jr_026_5c5e

    jr nz, @+$3f

    ld a, l
    ld b, e
    ld b, a
    sbc c
    db $db
    cp l

jr_026_5c12:
    and l
    ld a, a
    ld e, e
    ld a, a
    ld e, e

jr_026_5c17:
    jr @+$66

    jr nz, jr_026_5c17

    cp $c2
    and $18
    sbc b

jr_026_5c20:
    jr nz, jr_026_5c20

jr_026_5c22:
    jp c, $dafe

    ld b, a

Call_026_5c26:
    ld h, a
    ld b, a
    ld h, l
    jr @-$4c

    ld hl, $ff25
    ld bc, $bdff
    ld b, a
    ld h, l
    jr jr_026_5bb7

    inc hl
    and [hl]
    ld [c], a
    and [hl]
    rst $38
    cp a
    rst $38
    add b

jr_026_5c3d:
    rst $38
    rst $38
    dec a
    ld h, l
    add hl, sp
    ld a, l
    jr jr_026_5c9f

    inc hl
    rst $38
    rst $38
    ld bc, $ffff
    cp h
    and [hl]

jr_026_5c4d:
    sbc h
    cp [hl]
    jr jr_026_5cb5

    ld [hl+], a
    rst $38
    rst $38
    jr jr_026_5c22

    jr nz, jr_026_5c70

    or d
    inc hl
    ld h, l
    ld b, a
    ld h, l
    rst $38

jr_026_5c5e:
    db $fd
    jr jr_026_5c3d

    jr nz, jr_026_5cd3

    ld [hl], b
    rst $18
    cp a
    ldh [$ef], a
    add b
    or b
    add b
    ret nz

    add b
    ldh [$e0], a
    db $fc

jr_026_5c70:
    ld hl, sp-$61
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    jr @-$07

    push af
    rst $38
    jr jr_026_5c8e

    inc a
    ld c, $0e
    db $fd
    ei
    rlca

jr_026_5c84:
    rst $30
    ld bc, $010d
    inc bc
    ld bc, $0707
    rra
    rrca

jr_026_5c8e:
    ld sp, hl
    rst $18
    cp a
    rst $38
    ldh a, [$bf]

jr_026_5c94:
    db $ed
    or d
    rst $38
    and b
    rst $38
    and b
    cp $a0
    db $ed
    and b
    jp hl


jr_026_5c9f:
    rst $38
    jr jr_026_5cb4

    jr nc, @-$4b

    ld e, h
    cp $20
    push af
    jr nz, jr_026_5c94

    ld b, b
    push de
    ret nz

    ld [$5018], a
    ld sp, $ff33
    db $ec

jr_026_5cb4:
    rra

jr_026_5cb5:
    ld d, b
    rrca
    xor b
    rrca
    ld e, b
    rlca
    xor h
    db $fd
    ei
    rst $30
    rrca
    push af
    ccf
    push af
    rst $08
    push af
    rrca
    or l
    ld c, a
    or l
    ld c, a
    sub l
    ld l, a
    and c
    db $e3
    and [hl]
    and $ad
    db $ed
    cp h

jr_026_5cd3:
    ei
    xor h
    ei
    or h
    db $e3
    cp b
    rst $28
    or b
    rst $20
    add b
    push de
    nop
    xor d
    dec e
    sbc l
    and a
    cp b
    sbc a
    and b
    cp a
    add b
    jr jr_026_5c84

    jr nc, jr_026_5cf1

    ld d, [hl]
    ld [bc], a
    xor e
    and a
    and a

jr_026_5cf1:
    db $fd
    inc bc
    cp $01
    jr jr_026_5d0a

    jr nc, @+$01

    nop
    and l
    ld a, a
    and l
    ld [hl], a
    dec d
    rst $30
    sub l
    rst $30
    db $fd
    rst $38
    ld a, l
    rst $00
    ld a, l
    rst $38
    ld [hl], l
    rst $18

jr_026_5d0a:
    and a
    rst $38
    cp a
    rst $38
    and b
    ldh [rNR23], a
    call nz, $a130
    pop hl
    rst $38
    rst $38
    nop
    nop
    ld e, a
    ldh [$c3], a
    db $fc
    ld b, b
    ld a, e
    add b
    di
    add b
    pop af
    ld b, $e7

jr_026_5d25:
    ld sp, hl
    ld sp, hl

jr_026_5d27:
    nop
    nop
    cp $01
    ld hl, sp+$07
    nop
    rst $28
    ld bc, $01ef
    rst $20
    ld [hl], e
    di
    db $cc, $cc, $00
    nop
    ld [hl], l
    rst $18
    push hl
    sbc a
    push hl
    sbc a
    push bc
    cp a
    push bc
    ccf
    ld c, l
    cp a
    rst $30
    rst $30
    jr @+$1e

    jr nc, jr_026_5db1

    sbc c
    ld e, c
    and [hl]
    jr z, jr_026_5d27

    inc a
    jp $b34c


    ld b, b
    cp a
    jr nz, @-$1f

    jr jr_026_5d5a

jr_026_5d5a:
    ld b, b
    sbc c
    ld h, a
    ld [bc], a
    rst $38
    ld b, $ff

jr_026_5d61:
    dec c
    rst $38
    ld de, $21ff
    rst $38
    jr @+$12

    ld b, c
    ld h, [hl]
    add b
    rst $38
    ret nz

    rst $38
    ld a, b
    rst $38
    ld d, [hl]
    rst $18
    adc l
    adc a
    jr jr_026_5d97

    ld b, d
    jr jr_026_5d25

    ld sp, $00ff
    rst $38
    add b
    rst $38
    jr nz, jr_026_5d61

    ld b, b
    cp a
    ld b, e
    cp a
    daa
    call c, $d92f
    ld c, a
    cp c
    ld e, a
    or e
    ccf
    db $d3
    ld b, c
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    add c

jr_026_5d97:
    rst $38
    ld bc, $18ff
    xor c
    ld [hl-], a
    ld b, a
    rst $10
    ld b, [hl]
    sub $83
    sbc e
    ld b, d
    jp z, $8981

    ld b, c
    ret


    and c
    pop hl
    ret nz

    ret nz

    ld b, b
    rst $38
    ldh [rIE], a

jr_026_5db1:
    ret c

    rst $38
    ld l, h
    ld a, a
    ld [hl], $3f
    ld l, $af
    sub l
    db $dd
    sbc c
    db $db
    scf
    jp c, $be4b

    ld c, e
    cp [hl]
    ld a, $df
    ld [hl], a
    db $fd
    xor [hl]
    db $fd
    sbc $f7
    ld a, a
    rst $38
    add e
    rst $38
    adc d
    cp $89
    rst $38
    ret nc

    ld a, a
    ret nc

    ld a, a
    ldh a, [$bf]
    cp a
    rst $08
    call c, $b8ef
    ld hl, sp-$2c
    db $f4
    ld a, [hl-]
    ld a, [hl-]
    adc l

jr_026_5de4:
    adc l
    ld b, d
    jp nz, $ee22

    pop hl
    rst $38
    jr nc, @+$01

    sub c
    sub e
    and d
    and a
    db $e4
    rst $28
    ld hl, sp-$01
    call c, Call_026_6adf
    db $eb
    or [hl]
    rst $30
    ld a, h
    ld a, a
    ld a, $e5
    ld a, a
    db $db
    ld a, h
    rst $30
    jr c, jr_026_5de4

    jr jr_026_5e47

    ld b, b
    jr @+$0e

    ld b, b
    xor $b6
    ld e, e
    rst $38
    rst $00
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld b, $18
    xor d
    ld sp, $ff38
    pop de
    db $fd
    ld [hl], b
    ld e, [hl]
    ld e, [hl]
    rst $28
    xor a
    pop af
    dec e
    cp $03
    rst $38
    nop
    rst $38
    ld e, b
    rst $38
    inc [hl]
    rst $38
    call z, Call_000_06df
    rst $38
    pop bc
    db $fd
    ld sp, hl
    dec sp
    rst $38
    rst $00
    ld a, $ff
    ld a, h
    add e
    rst $18
    jr nz, @+$01

    nop
    ei
    inc b
    jr @+$04

    ld d, d
    xor $11
    db $eb

jr_026_5e47:
    inc d
    rst $38
    nop
    dec e
    ld [c], a
    cp d
    ld b, l
    db $fd
    ld [bc], a
    ld l, a
    sub b
    rst $38
    nop
    rst $28
    db $10
    db $fc
    inc bc
    rst $38
    nop

jr_026_5e5a:
    jr jr_026_5e6c

    ld d, b
    db $ed
    ld [de], a
    jr jr_026_5e83

    ld d, b
    rst $10
    jr z, jr_026_5ed4

    sub b
    db $fd
    ld [bc], a
    rst $10

jr_026_5e69:
    jr z, jr_026_5e5a

    db $10

jr_026_5e6c:
    rst $18
    jr nz, jr_026_5e69

    dec b
    rst $38
    nop
    or d
    ld c, l
    jr jr_026_5e76

jr_026_5e76:
    ld c, a
    ld bc, $659a
    inc d
    db $eb
    inc a
    jp $cd32


    ld [bc], a
    db $fd
    inc b

jr_026_5e83:
    ei
    cp h

jr_026_5e85:
    jp $a897


    ld e, a
    ld h, b
    ld a, e
    ld b, h
    cp a
    add b
    xor a
    ret nc

    cp e
    add h
    ld c, [hl]
    pop af
    ld l, l
    sub c
    db $fd
    ld bc, $2ad6
    xor $12
    db $dd
    ld hl, $0bf5
    db $fd
    inc bc
    or c
    ld c, a
    ld e, h
    ld b, e
    ld d, a
    add sp, $7f
    ld b, b
    ld a, e
    ld b, h
    sbc a
    and b
    cp a
    ret nz

    cp e
    add h
    ld l, [hl]
    pop de
    db $ed
    ld de, $02fe
    dec e
    pop hl
    or [hl]
    ld c, d
    cp $02
    ld l, [hl]
    sub d
    db $fd
    ld bc, $4eb0
    ld l, h
    db $ed
    sbc e
    and a
    cp h
    jp Jump_026_621d


    ccf
    add b
    ld a, [hl]
    ld b, c
    ld a, a
    ret nz

    or a
    ret z

jr_026_5ed4:
    ld b, b
    ld d, l
    inc sp
    cp e
    jr @+$06

    ld d, b
    ld e, a
    and b
    jr jr_026_5ee9

    ld d, d
    ld [hl], $b7
    reti


    push hl
    dec a
    jp Jump_026_46b8


    db $fc

jr_026_5ee9:
    ld bc, $827e
    cp $03
    db $ed
    inc de
    cp h
    jp $a09f


    jr jr_026_5f5a

    ld d, b
    or a
    adc b
    jr jr_026_5e85

    ld d, b
    ld b, e
    di
    call c, $ff23
    nop
    ld l, e
    sub h
    rst $38
    nop
    xor l
    ld d, d
    jr @+$24

    ld d, b
    inc sp
    cp e
    ld a, d
    add d
    ld [$fe17], a
    ld [bc], a
    cp [hl]
    ld b, d
    pop af
    dec c
    ld a, l
    add e
    db $ed

jr_026_5f1a:
    ld de, $6a22

jr_026_5f1d:
    rst $18
    jr nz, jr_026_5f1d

    ld [bc], a
    ld l, [hl]
    sub c
    ei
    inc b
    and c
    ld d, [hl]
    ld [hl], d

jr_026_5f28:
    adc l
    cp a
    ld b, b
    xor $10
    ld l, a
    sub b
    cp e
    ld b, h

jr_026_5f31:
    pop hl
    inc d
    sbc $21
    ld a, e
    add h
    xor $11
    cp a
    ld b, b
    ld a, e
    inc b
    sbc b
    ld h, l
    pop hl
    rra
    ld e, [hl]
    and c
    rst $30
    ld [$539c], sp
    ld [hl], e
    adc h
    cp a
    ld b, b
    db $eb
    inc d
    ld h, a
    ld e, b
    sbc [hl]
    pop hl
    ld [hl], e
    add b
    and e
    ld c, d
    call z, $f33f
    inc c
    ld e, l

jr_026_5f5a:
    and d

jr_026_5f5b:
    rst $30
    ld [$3018], sp
    ld c, d
    nop
    jr jr_026_5fa2

    ld b, c
    jr jr_026_5f72

    ld b, b
    jr jr_026_5f31

jr_026_5f69:
    ld b, h
    jr jr_026_5fb2

    ld h, [hl]
    jr jr_026_5fa5

    ld b, d
    inc b
    ei

jr_026_5f72:
    ld [bc], a
    db $fd
    jr jr_026_5fd2

    ld d, b
    jr jr_026_5fe9

    ld h, h
    jr jr_026_5fbc

jr_026_5f7c:
    ld b, b
    ld c, h
    or e
    inc a
    jp $d728


    ld e, c
    and [hl]
    ld h, [hl]
    sbc c
    jr jr_026_5fe9

    ld l, b
    sbc c
    ld h, [hl]
    jr jr_026_5f1a

    ld h, b
    jr jr_026_6001

    ld h, b
    ld [hl-], a
    call $c33c
    inc d
    db $eb
    sbc d
    ld h, l
    jr jr_026_5f28

    ld h, b
    add c
    ld a, [hl]
    ld b, d
    cp l
    inc d

jr_026_5fa2:
    db $eb
    jr z, jr_026_5f7c

jr_026_5fa5:
    jr jr_026_5f5b

    ld h, b
    ld b, d
    cp l
    add c
    ld a, [hl]
    jr @-$4e

    ld h, h
    rlca
    rst $38
    dec de

jr_026_5fb2:
    db $fc
    cpl
    ldh a, [$b3]
    ld [hl], h
    jr jr_026_5f69

    ld h, h
    ldh [rIE], a

jr_026_5fbc:
    ret c

    ccf
    db $f4
    rrca
    call $202e
    ld sp, hl
    dec hl
    db $f4
    scf
    ld hl, sp+$2d
    xor $2b
    cp e
    db $10
    sub b
    nop
    ret nz

jr_026_5fd0:
    nop
    rst $38

jr_026_5fd2:
    inc b
    sbc a
    call nc, $cc2f
    cpl
    or h
    ld [hl], a
    db $d4, $dd, $08
    add hl, bc
    nop
    inc bc
    jr @-$53

    jr nc, jr_026_5ff3

    ldh a, [rNR10]
    rst $28
    nop
    pop bc

jr_026_5fe9:
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $ff00

jr_026_5ff3:
    ldh [$ef], a
    ldh a, [rPCM34]
    ld [hl], h
    or e
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l

jr_026_6001:
    ld b, b
    or c
    ld b, a
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld l, $cd
    rrca
    xor $07
    rst $30
    nop
    rst $38
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    nop
    add e
    ld [$f0f7], sp
    rrca
    jr @+$16

    scf
    jr jr_026_606c

    ld a, a
    ld c, l
    jr jr_026_5fd0

    ld a, a
    ld b, h
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $5206
    ld d, e
    ld d, d
    ld d, e
    rlca
    ld bc, $0217
    ld [$3001], sp
    ld sp, $3332
    inc b
    ld [$f402], sp
    ld hl, sp+$08
    add hl, bc
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    inc b
    add hl, bc
    inc c
    ld [bc], a
    jr z, jr_026_604f

    inc [hl]

jr_026_604f:
    dec [hl]
    ld [hl], $37
    rlca
    ld bc, $f402
    rst $38
    nop
    ld b, $40
    ld b, c
    ld b, d
    ld b, e
    ld h, h
    ld h, h
    jr c, jr_026_609a

    ld a, [hl-]
    dec sp
    ld [bc], a
    ld [de], a
    rrca
    inc bc
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld l, e

jr_026_606c:
    ld l, e
    inc a
    dec a
    ld a, $3f
    ld [bc], a
    ld [hl-], a
    rrca
    inc bc
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld l, e
    ld [bc], a
    adc h
    nop
    ld h, a
    ld [bc], a
    ld [de], a
    rrca
    inc bc
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld [bc], a
    adc h
    ld [bc], a
    ld [bc], a
    ld [hl-], a
    rrca
    inc bc
    ld h, l
    ld l, e
    ld l, h
    ld l, l
    inc e
    dec e
    ld [bc], a
    adc [hl]
    rrca
    rlca
    ld h, l
    ld l, e
    ld l, [hl]

jr_026_609a:
    ld l, a
    ld e, $1f
    ld [bc], a
    xor [hl]
    rrca
    ld bc, $2120
    ld [hl+], a
    inc hl
    inc b
    ld bc, $0a0b
    dec bc
    dec de
    ld [bc], a
    adc h
    rrca
    inc bc
    inc h
    dec h
    ld h, $27
    rla
    ld d, $16
    ld d, $16
    inc de
    ld l, c
    ld [bc], a
    inc l
    db $10
    ld l, d
    ld [bc], a
    ld [hl-], a
    inc c
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    ld [bc], a
    ld [$1401], sp
    ld [bc], a
    ld [hl+], a
    nop
    ld d, d
    ld d, e
    ld [bc], a
    ld [de], a
    inc c
    inc l
    dec l
    ld l, $2f
    ld [bc], a
    jr z, jr_026_60d9

    dec d

jr_026_60d9:
    ld [bc], a
    ld [bc], a
    nop
    ld d, b
    ld d, c
    ld [bc], a
    ld [hl-], a
    rrca
    ld bc, $8202
    jr jr_026_60e8

    ld [de], a
    rrca

jr_026_60e8:
    ld bc, $a202
    jr jr_026_60ef

    ld [hl-], a
    ld a, [bc]

jr_026_60ef:
    ld [$0702], sp
    db $10
    ld [bc], a
    jp $0819


    ld [bc], a
    inc sp
    add hl, bc
    ld [bc], a
    daa
    db $10
    ld [bc], a
    ldh [rNR32], a
    ld [bc], a
    and b
    ld hl, sp+$00
    ld [bc], a
    ld [bc], a
    ld bc, $5206
    ld d, e
    ld d, d
    ld d, e
    rlca
    ld bc, $0217
    ld [$3001], sp
    ld sp, $3332
    inc b
    ld [$f402], sp
    ld hl, sp+$08
    add hl, bc
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    inc b
    add hl, bc
    inc c
    ld [bc], a
    jr z, jr_026_6128

    inc [hl]

jr_026_6128:
    dec [hl]
    ld [hl], $37
    rlca
    ld bc, $f402
    rst $38
    nop
    ld b, $70
    ld [hl], c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    jr c, jr_026_6173

    ld a, [hl-]
    dec sp
    ld [bc], a
    ld [de], a
    rrca
    inc bc
    ld [hl], d
    ld [hl], e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    inc a
    dec a
    ld a, $3f
    ld [bc], a
    ld [hl-], a
    rrca
    inc bc
    ld h, l
    ld [bc], a
    ld l, d
    nop
    ld [bc], a
    ld l, d
    nop
    ld h, a
    ld [bc], a
    ld [de], a
    rrca
    inc bc
    ld [bc], a
    adc b
    ld b, $02
    ld [hl], d
    rrca
    dec b
    ld l, h
    ld l, l
    inc e
    dec e
    ld [bc], a
    adc [hl]
    rrca
    add hl, bc
    ld l, [hl]
    ld l, a
    ld e, $1f
    ld [bc], a
    xor [hl]
    rrca
    ld bc, $2120

jr_026_6173:
    ld [hl+], a
    inc hl
    inc b
    ld bc, $0a0b
    dec bc
    dec de
    ld [bc], a
    adc h
    rrca
    inc bc
    inc h
    dec h
    ld h, $27
    rla
    ld d, $16
    ld d, $16
    inc de
    ld l, c
    ld [bc], a
    inc l
    db $10
    ld l, d
    ld [bc], a
    ld [hl-], a
    inc c
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    ld [bc], a
    ld [$1401], sp
    ld [bc], a
    ld [hl+], a
    nop
    ld d, d
    ld d, e
    ld [bc], a
    ld [de], a
    inc c
    inc l
    dec l
    ld l, $2f
    ld [bc], a
    jr z, jr_026_61a9

    dec d

jr_026_61a9:
    ld [bc], a
    ld [bc], a
    nop
    ld d, b
    ld d, c
    ld [bc], a
    ld [hl-], a
    rrca
    ld bc, $8202
    jr jr_026_61b8

    ld [de], a
    rrca

jr_026_61b8:
    ld bc, $a202
    jr jr_026_61bf

    ld [hl-], a
    ld a, [bc]

jr_026_61bf:
    ld [$0702], sp
    db $10
    ld [bc], a
    jp $0819


    ld [bc], a
    inc sp
    add hl, bc
    ld [bc], a
    daa
    db $10
    ld [bc], a
    ldh [rNR32], a
    ld [bc], a
    and b
    ld hl, sp+$00
    ld [$910c], sp
    xor d
    ret nz

    sub b
    adc b
    push bc
    sub d
    sbc [hl]
    ld h, b
    ld d, d
    ld c, d
    ld a, l
    db $f4
    ld a, [$eee0]
    nop
    add hl, sp
    ld [bc], a
    push de
    add d
    ld l, d
    nop
    adc l
    ld h, b
    ld d, $08
    ld a, c
    ld [hl-], a
    or h
    dec b
    db $eb
    nop
    call nz, $bd04
    add hl, de
    jp c, Jump_000_25c8

    inc b
    jp z, $7040

    add hl, bc
    rst $00
    ld [bc], a
    ld [hl], d
    ld bc, $0989
    push de
    ld a, [bc]
    sub $06
    rrca
    ld [hl-], a
    ld b, d
    ld a, [bc]
    ld a, [hl]
    ld de, $1115
    dec hl
    add [hl]
    or [hl]
    add b
    xor l
    ret nz

    pop bc
    add b

Jump_026_621d:
    adc h
    ld c, h
    ld d, d
    ld h, c
    db $fd
    ld c, h
    ld c, l
    adc b
    sub e
    rst $38
    inc c
    ld d, b
    dec bc
    ld bc, $8985
    ld d, l
    inc bc
    adc e
    ld hl, $8251
    ld [hl], d
    ld a, [bc]
    ld l, e
    ld [hl-], a
    or d
    ld bc, $a0d9
    cp h
    add l
    add [hl]
    add c
    sbc l
    ld b, b
    ld b, [hl]
    ld d, b
    bit 0, h
    ld a, h
    sbc c
    sbc d
    add d
    or l
    inc c
    jr nz, jr_026_625a

    ret


    add hl, bc
    dec [hl]
    ld de, $02c9
    add $22
    dec hl
    db $da, $e6, $01

    ld e, l

jr_026_625a:
    ld bc, $e1e1
    db $ed
    ld e, $5e
    inc b
    push hl
    inc c
    ld d, $04
    nop
    and $f6
    or $09
    ld a, e
    ld b, b
    ld hl, $6400
    nop
    sub [hl]
    nop
    cp c
    nop
    rst $20
    ld [$1bd6], sp
    ld e, e
    ld e, $9e
    ld [hl], $36
    db $e3
    db $eb
    ld h, c
    ld h, c
    ld [hl-], a
    or d
    ld a, [hl]
    ld a, [hl]
    adc c
    xor c
    ld b, a
    ld b, a
    ld l, a
    ld l, a
    cp d
    cp d
    sub c
    sub c
    adc c
    adc c
    db $76
    db $76
    inc c
    db $fc
    ldh a, [$c7]
    rst $00
    ld l, a
    ld l, a
    ld a, [hl-]
    ld a, [hl-]
    ld sp, $c931
    ret


    ld b, $06
    inc c
    db $fc
    ldh a, [$c3]
    jp $6565


    inc c
    db $e4
    nop
    pop de
    pop de
    ld c, $0e
    inc c
    db $fc
    ldh a, [$b0]
    db $f4
    sbc b
    cp b
    ld d, b
    ld d, b
    ld d, l
    db $dd
    or d
    ld [hl-], a
    xor [hl]
    ld l, $23
    or e
    ld h, e
    db $eb
    ld [hl], l
    ld [hl], l
    ld l, b
    ld l, b
    ld b, l
    push bc
    ld b, a
    rst $10
    dec l
    xor l
    cp b
    ld a, b
    cp b
    ld a, d
    db $ed
    dec l
    ld d, a
    rst $10
    and e
    db $eb
    or e
    or e
    ld l, [hl]
    xor $4c
    ld l, h
    sub h
    call nc, $9696
    ld a, c
    ld a, c
    and l
    rst $10
    adc l
    xor l
    ld d, d
    ld d, [hl]
    ld [hl-], a
    inc sp
    dec a
    inc a
    ld c, l
    ld c, h
    add [hl]
    sub a
    jp z, Jump_026_76cb

    db $76
    jp nz, Jump_026_42da

    ld b, [hl]
    ld [hl+], a
    and e
    dec [hl]
    ld [hl], h
    ld c, l
    ld c, [hl]
    add l
    sub [hl]
    call Call_026_7ecc
    ld a, a
    add hl, hl
    add hl, hl
    dec h
    or l
    ld b, d
    ld c, e
    ld [c], a
    ld [c], a
    ld a, l
    ld a, l
    add hl, hl
    xor c
    ld b, [hl]
    ld d, [hl]
    ld b, h
    or d
    add hl, bc
    ld a, c
    add [hl]
    and [hl]
    db $ec
    db $ed
    ld b, h
    ld d, l
    ld b, d
    ld a, d
    rst $00
    rst $10
    cp c
    cp c
    adc b
    xor d
    ret nc

    call nc, $6d61
    ld [hl], d
    ld [hl], d
    sbc [hl]
    sbc [hl]
    adc c
    xor c
    ret nc

    jp nc, $b1b1

    ld a, [de]
    ld e, d
    inc e
    sbc l
    inc [hl]
    inc [hl]
    ld [c], a
    ld [$c80c], a
    nop
    ld l, h
    ld l, h
    add $c6
    inc c
    ldh [$0c], a
    ld [hl], $b6
    ld b, b
    ld e, l
    add b
    or c
    inc c
    ld b, [hl]
    ld b, $b8
    cp e
    adc d
    ld d, d
    ld bc, $0c8d
    ld h, [hl]
    ld b, $f8
    inc b
    ret nz

    inc hl
    sub b
    ld e, l
    ld b, b
    ld a, [c]
    db $10
    ld d, h
    add b
    sbc d
    ld c, b
    db $ed
    and d
    dec hl
    rst $08
    ret nc

    inc de
    call nc, $aa09
    ld [bc], a
    ld e, e
    ld de, $49b5
    ret


    dec b
    ld d, l
    ld h, $6f
    ld a, h
    db $fc
    rla
    ld d, a
    and b
    xor d
    ld h, c
    rst $30
    cp c
    cp c
    rst $18
    rst $38
    ld h, h
    ld l, l
    sbc a
    ld e, a
    cp d
    cp d
    pop hl
    db $eb
    ld d, c
    ld d, l
    ld b, $a6
    dec a
    cp a
    set 3, e
    and [hl]
    xor [hl]
    ld sp, hl
    ld a, [$a00c]
    rst $38
    ld c, l
    inc c
    ld e, a
    cpl
    ld c, l
    inc c
    cp a
    cpl
    ld c, l
    inc c
    rra
    ccf
    ld c, l
    inc c
    ld a, a
    ccf
    ld c, l
    inc c
    rst $18
    ccf
    ld c, l
    inc c
    ccf
    ld c, a
    ld c, l
    inc c
    sbc a
    ld c, a
    ld c, l
    ld a, h
    add e
    rst $18
    jr nz, @+$01

    nop
    ei
    inc b
    inc c
    ld [bc], a
    ld d, d
    xor $11
    db $eb
    inc d
    rst $38
    nop
    dec e
    ld [c], a
    cp d
    ld b, l
    db $fd
    ld [bc], a
    ld l, a
    sub b
    rst $38
    nop
    rst $28
    db $10
    db $fc
    inc bc
    rst $38
    nop

jr_026_63d8:
    inc c
    db $10
    ld d, b
    db $ed
    ld [de], a
    inc c
    ld [hl+], a
    ld d, b
    rst $10
    jr z, jr_026_6452

    sub b
    db $fd
    ld [bc], a
    rst $10

jr_026_63e7:
    jr z, jr_026_63d8

    db $10
    rst $18
    jr nz, jr_026_63e7

    dec b
    rst $38
    nop
    or d
    ld c, l
    ld h, b
    ldh [$38], a
    add a
    ld c, a
    ret nc

    inc c
    ld b, d
    ld d, [hl]
    inc bc
    inc bc
    cp $00
    adc c
    ld [hl], l
    inc c
    ld d, d
    ld d, [hl]
    cp h
    jp $a897


    ld e, a
    ld h, b
    ld a, e
    ld b, h
    cp a
    add b
    xor a
    ret nc

    cp e
    add h
    ld c, [hl]
    pop af
    ld l, l
    sub c
    db $fd
    ld bc, $2ad6
    xor $12
    db $dd
    ld hl, $0bf5
    db $fd
    inc bc
    or c
    ld c, a
    ld e, h
    ld b, e
    ld d, a
    add sp, $7f
    ld b, b
    ld a, e
    ld b, h
    sbc a
    and b
    cp a
    ret nz

    cp e
    add h
    ld l, [hl]
    pop de
    db $ed
    ld de, $02fe
    dec e
    pop hl
    or [hl]
    ld c, d
    cp $02
    ld l, [hl]
    sub d
    db $fd
    ld bc, $4eb0
    ld l, h
    db $ed
    sbc e
    and a
    cp h
    jp Jump_026_621d


    ccf
    add b
    ld a, [hl]
    ld b, c
    ld a, a
    ret nz

jr_026_6452:
    or a
    ret z

    ld b, b
    ld d, l
    inc sp
    cp e
    inc c
    inc b
    ld d, b
    ld e, a
    and b
    inc c
    ld a, [bc]
    ld d, d
    ld [hl], $b7
    reti


    push hl
    dec a
    jp Jump_026_46b8


    db $fc
    ld bc, $827e
    cp $03
    db $ed
    inc de
    cp h
    jp $a09f


    inc c
    ld h, h
    ld d, b
    or a
    adc b
    inc c
    adc d
    ld d, b
    ld b, e
    di
    call c, $ff23
    nop
    ld l, e
    sub h
    rst $38
    nop
    xor l
    ld d, d
    inc c
    ld [hl+], a
    ld d, b
    inc sp
    cp e
    ld a, d
    add d
    ld [$fe17], a
    ld [bc], a
    cp [hl]
    ld b, d
    pop af
    dec c
    ld a, l
    add e
    db $ed
    ld de, $6a22
    or h
    ld c, b
    ld e, e
    and b
    pop af
    ld b, $c3
    ld l, $74
    sbc l
    or a
    ld e, c
    add sp, $1b
    and c
    ld d, h
    ld e, d
    ld h, l
    sub a
    ld e, b
    ld c, e
    xor h
    and a
    ret nc

    ld a, d
    ld c, l
    cpl
    ret z

    ei
    ld [hl], h
    daa
    ld a, b
    ld a, [c]
    ld a, [bc]
    ld c, l
    add d
    ld d, e
    call nz, Call_026_5524
    db $76
    ld hl, sp-$74
    ld a, l
    ld [hl], c
    adc a
    xor $11
    jp c, $0ce5

    and $50
    rst $00
    ld [$ddea], sp
    pop hl
    ld c, $8b
    cp h
    inc sp
    db $fc
    nop
    nop
    ld hl, sp+$07
    adc a
    ld [hl], b
    inc c
    ld b, d
    ld h, [hl]
    inc c
    ld b, h
    ld e, b
    inc c
    ld b, h
    ld d, b
    inc c
    ld b, h
    ld l, b
    inc c
    ld b, h
    ld h, b
    inc c
    ld d, h
    ld e, b
    inc c
    ld d, h
    ld d, b
    inc c
    ld b, h
    ld e, b
    ld h, b
    rst $28
    rra
    sbc a
    inc c
    ld b, h
    ld l, b
    nop
    rst $38
    rst $38
    rst $38
    inc c
    ld d, h
    ld e, b
    inc bc
    ei
    db $fc
    db $fc
    inc c
    xor a
    rst $38
    ld a, $ff
    rrca
    ldh a, [rNR10]
    rst $28
    nop
    pop bc
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $ff00
    ldh [$ef], a
    ldh a, [rPCM34]
    ld [hl], h
    or e
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l
    ld b, b
    or c
    ld b, a
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld l, $cd
    rrca
    xor $07
    rst $30
    nop
    rst $38
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    nop
    add e
    ld [$f0f7], sp
    rrca
    nop
    rst $38
    inc c
    and b
    ld c, a
    ld c, l
    inc c
    sbc a
    ld a, a
    ld c, l
    nop
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    nop
    ld bc, $0a04
    dec bc
    ld [bc], a
    rlca
    ld bc, $0002
    ld [bc], a
    ld [bc], a
    db $f4
    cp $07
    ld b, $16
    ld d, $16
    ld d, $04
    ld [$0e02], sp
    rrca
    inc bc
    ld a, [de]
    ld a, [bc]
    ld bc, $1703
    rla
    rla
    rla
    nop
    ld bc, $1b0b
    ld [bc], a
    db $10
    rrca
    ld bc, $0901
    ld d, $17
    inc c
    inc c
    jr jr_026_65a6

    rla
    ld d, $07
    ld [bc], a
    dec l
    ld bc, $f402
    ld hl, sp+$1a
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld [$1703], sp
    inc d
    inc e
    dec e
    inc e
    dec e
    ld de, $0417

jr_026_65a6:
    ld bc, $0a0b
    dec bc
    dec de
    ld [bc], a
    db $f4
    ld hl, sp+$08
    add hl, bc
    ld d, $16
    ld d, $17
    jr jr_026_65cb

    ld e, $1f
    ld e, $1f
    ld [de], a
    inc c
    rla
    ld d, $16
    ld d, $07
    ld bc, $f402
    ld hl, sp+$01
    ld b, $17
    rla
    ld [bc], a
    add [hl]

jr_026_65cb:
    nop
    ld d, h
    ld h, h
    ld h, h
    ld d, l
    ld [bc], a
    adc d
    nop
    rla
    rla
    inc b
    ld [$9402], sp
    ld a, [bc]
    inc c
    inc c
    ld [bc], a
    and [hl]
    nop
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [bc], a
    xor d
    nop
    inc c
    inc c
    ld [bc], a
    or d
    inc c
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    inc e
    dec e
    ld [bc], a
    add sp, $00
    inc e
    dec e
    ld h, b
    ld h, c
    ld d, b
    ld d, c
    ld [bc], a
    jp nc, $500c

    ld d, c
    ld d, b
    ld d, c
    ld e, $1f
    ld l, b
    ld l, c
    ld l, c
    ld l, d
    ld e, $1f
    ld h, d
    ld h, e
    ld d, d
    ld d, e
    ld [bc], a
    or d
    inc c
    ld h, b
    ld h, c
    ld d, d
    ld d, e
    ld [bc], a
    ld [hl+], a
    db $10
    ld [bc], a
    ld b, [hl]
    ld [de], a
    ld d, d
    ld d, e
    ld [bc], a
    jp nc, $620c

    ld h, e
    ld [bc], a
    ld c, [hl]
    db $10
    ld [bc], a
    ld h, [hl]
    inc d
    ld d, b
    ld d, c
    ld [bc], a
    or d
    dec bc
    ld [$9002], sp
    nop
    ld [bc], a
    ld h, [hl]
    inc d
    ld [bc], a
    add b
    nop
    ld bc, $d302
    add hl, bc
    ld [bc], a
    jr z, jr_026_663e

    ld [bc], a

jr_026_663e:
    ld hl, $0211
    ld [hl+], a
    db $10
    ld [bc], a
    ld h, $02
    ld [bc], a
    db $f4
    ld hl, sp+$02
    ld c, b
    nop
    rlca
    ld [bc], a
    add c
    db $10
    ld [bc], a
    rlca
    ld bc, $0908
    ld [bc], a
    ld c, b
    ld bc, $f502
    rst $30
    inc c
    inc c
    inc c
    inc c
    ld [bc], a
    jr z, jr_026_6662

jr_026_6662:
    ld [bc], a
    db $e4
    inc d
    ld [bc], a
    ldh [rNR10], a
    ld [bc], a
    and b
    ld hl, sp+$00
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    nop
    ld bc, $0a04
    dec bc
    ld [bc], a
    rlca
    ld bc, $0002
    ld [bc], a
    ld [bc], a
    db $f4
    cp $07
    ld b, $16
    ld d, $16
    ld d, $04
    ld [$0e02], sp
    rrca
    inc bc
    ld a, [de]
    ld a, [bc]
    ld bc, $1703
    rla
    rla
    rla
    nop
    ld bc, $1b0b
    ld [bc], a
    db $10
    rrca
    ld bc, $0901
    ld d, $17
    inc c
    inc c
    jr jr_026_66ba

    rla
    ld d, $07
    ld [bc], a
    dec l
    ld bc, $f402
    ld hl, sp+$1a
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld [$1703], sp
    inc d
    inc e
    dec e
    inc e
    dec e
    ld de, $0417

jr_026_66ba:
    ld bc, $0a0b
    dec bc
    dec de
    ld [bc], a
    db $f4
    ld hl, sp+$08
    add hl, bc
    ld d, $16
    ld d, $17
    jr jr_026_66df

    ld e, $1f
    ld e, $1f
    ld [de], a
    inc c
    rla
    ld d, $16
    ld d, $07
    ld bc, $f402
    ld hl, sp+$01
    ld b, $17
    rla
    ld [bc], a
    add [hl]

jr_026_66df:
    nop
    ld d, h
    ld h, h
    ld h, h
    ld d, l
    ld [bc], a
    adc d
    nop
    rla
    rla
    inc b
    ld [$9402], sp
    ld a, [bc]
    inc c
    inc c
    ld [bc], a
    and [hl]
    nop
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [bc], a
    xor d
    nop
    inc c
    inc c
    ld [bc], a
    or d
    inc c
    ld [hl], b
    ld [hl], c
    ld d, d
    ld d, e
    inc e
    dec e
    ld [bc], a
    add sp, $00
    inc e
    dec e
    ld h, b
    ld h, c
    ld d, b
    ld d, c
    ld [bc], a
    jp nc, $720c

    ld [hl], e
    ld d, b
    ld d, c
    ld e, $1f
    ld l, b
    ld l, c
    ld l, c
    ld l, d
    ld e, $1f
    ld h, d
    ld h, e
    ld d, d
    ld d, e
    ld [bc], a
    or d
    inc c
    ld h, b
    ld h, c
    ld d, d
    ld d, e
    ld d, b
    ld d, c
    ld [bc], a
    ld b, [hl]
    inc d
    ld d, d
    ld d, e
    ld [bc], a
    jp nc, $620c

    ld h, e
    ld [bc], a
    ld c, [hl]
    db $10
    ld [bc], a
    ld h, [hl]
    inc d
    ld d, b
    ld d, c
    ld [bc], a
    or d
    dec bc
    ld [$9002], sp
    nop
    ld [bc], a
    ld h, [hl]
    inc d
    ld [bc], a
    add b
    nop
    ld bc, $d302
    add hl, bc
    ld [bc], a
    jr z, jr_026_6751

    add hl, bc

jr_026_6751:
    ld [bc], a
    ld b, [hl]
    inc d
    ld [bc], a
    ld h, $02
    ld [bc], a
    db $f4
    ld hl, sp+$02
    ld c, b
    nop
    rlca
    ld [bc], a
    add c

jr_026_6760:
    db $10
    ld [bc], a
    rlca
    ld bc, $0908
    ld [bc], a
    ld c, b
    ld bc, $f502
    rst $30
    inc c
    inc c
    inc c
    inc c
    ld [bc], a
    jr z, jr_026_6773

jr_026_6773:
    ld [bc], a
    db $e4
    inc d
    ld [bc], a
    ldh [rNR10], a
    ld [bc], a
    and b
    ld hl, sp+$00
    ld [$fb05], sp
    rlca
    and h
    ld d, l
    ret c

    dec sp
    ldh [$2a], a
    ret z

    ld e, h
    or b
    ld a, c
    jp nz, $e873

    ld l, b
    sbc a
    and b
    ld c, a
    ld d, b
    scf
    cp b
    add hl, bc
    xor [hl]
    daa
    ld [hl], h
    sbc c
    cp d
    ld b, a
    ld e, h
    cpl
    inc l
    add e
    db $eb
    ld b, h
    ld d, l
    jr jr_026_6760

    jr nz, jr_026_67d1

    ld c, b
    call c, $0a05
    ld bc, $8369
    and [hl]
    ld b, l
    ld e, [hl]
    ld sp, $0db4
    xor [hl]
    ld h, $77
    sbc l
    cp l
    ld b, [hl]
    ld e, a
    dec l
    ld l, $31
    cp c
    ld b, b
    ld d, d
    sub b
    or l
    ld h, d
    ei
    adc d
    xor a
    ld [hl], d
    ld a, d
    and l
    or l
    ld a, b
    ld a, [$0a0b]
    ld b, $57

jr_026_67d1:
    ld [de], a
    ld e, d
    inc c
    ld l, l
    sub d
    cp e
    adc c
    ret


    ld b, $26
    ld [hl+], a
    dec sp
    sub c
    sub l
    ld h, d
    ld a, d
    call z, $b46c
    dec [hl]
    ld b, h
    or a
    xor b
    ld e, l
    jp nz, $9c2b

    ld h, d
    ld a, [de]
    ld e, d
    call Call_000_32fd
    inc sp
    inc hl
    inc l
    ld d, e
    ld d, h
    and b
    and e
    sub l
    jp c, $9867

    dec b
    nop
    rrca
    add hl, bc
    ld h, a
    ld a, h
    add hl, de
    ld a, [de]
    sbc d
    rst $18
    ld [hl], d
    ld a, e
    ld h, $b6
    dec a
    rst $38
    dec b
    ld l, b
    inc b
    and l
    xor h
    sub d
    or a
    call z, Call_000_39dd
    ld a, [hl-]
    ld d, e
    ld e, h
    and d
    and l
    dec b
    ld a, h
    nop
    nop
    nop
    add b
    cp a
    add b
    add b
    or l
    or l
    add b
    add b
    or [hl]
    or [hl]
    add b
    add b
    xor d
    xor d
    nop
    nop
    ld bc, $01ff
    ld bc, $b5b5
    ld bc, $ad01
    xor l

jr_026_683b:
    ld bc, $d501
    push de
    add b
    add b
    rst $38
    rst $38
    jp c, $d626

    ld a, [hl+]
    ld a, [$da06]
    ld h, $66
    sub [hl]
    and c

jr_026_684e:
    ld e, l
    ld bc, $ff01
    rst $38
    ld e, [hl]
    ld h, c
    ld [hl], $89
    dec de
    and h
    dec bc
    or h
    ld h, l
    ld l, d
    sbc l
    and d
    rst $30
    rlca
    reti


    jr jr_026_684e

    jr nz, jr_026_683b

    ld b, b
    sub $40
    db $eb
    ld h, b
    call c, $c758
    ld b, a
    rst $28
    ldh [$db], a
    jr jr_026_68a9

    inc b
    db $db
    ld [bc], a
    ld l, e
    ld [bc], a
    rst $10
    ld b, $3b
    ld a, [de]
    ld h, a
    ld h, [hl]
    jp nc, $d252

    ld d, d
    add sp, $68
    jp hl


    ld l, c
    ld e, l
    ld e, l
    sub e
    sub e
    rst $28
    rst $28
    ei
    jr c, jr_026_68a7

    ld d, $13
    ld [de], a
    sub a
    sub [hl]
    dec de
    ld a, [de]
    ld a, [hl-]
    ld a, [hl-]
    call Call_026_77cd
    ld [hl], a
    db $fd
    inc e
    dec b
    and b
    rst $38
    ld c, l
    dec b
    sbc a
    rra
    ld c, l

jr_026_68a7:
    rst $38
    nop

jr_026_68a9:
    rst $38
    inc bc
    db $fc
    rrca
    ret nc

    ccf
    ldh [$2f], a
    pop hl
    inc hl
    pop af
    ld de, $6ee8
    rst $38
    inc bc
    db $fc
    adc a
    ld [hl], b
    rst $38
    nop
    db $fd
    ld b, b
    ld a, a
    add b
    rst $38
    add b
    or [hl]
    sub b
    sbc a
    rst $38
    adc $31
    rst $30
    nop
    ld [hl], a
    nop
    rst $38
    ld [$04eb], sp
    scf
    inc b
    db $fd
    inc c
    db $fc
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ret c

    daa
    cp h
    rlca
    cp h
    rlca
    inc a
    inc bc
    ld h, d
    add b
    add a
    add b
    add d
    add h
    add h
    jp nz, $f742

    ld [hl], a
    ld sp, hl
    add hl, sp

jr_026_68f3:
    db $fc
    inc b
    rst $38
    inc bc
    ld [hl], b
    rst $30
    jr jr_026_68f3

    ld a, a
    ld a, a
    and $f7
    add d
    set 3, b
    cp $cc
    xor $cb
    rst $38
    jr c, @-$06

    nop
    pop af
    sbc b
    sbc e
    db $76
    db $76
    ld hl, $18a9
    ld a, [$7531]
    db $d3
    rst $38
    ld de, $1151
    sub c
    ld h, e
    db $eb
    rst $00
    or $f3
    ld a, [c]
    rst $00
    add $9f
    sbc h
    rst $38
    ld hl, sp-$01
    ld bc, $33fe
    adc $7b
    add h
    rst $30
    cp l
    db $e3
    rst $28
    ld e, l
    rst $38
    ld d, l
    rst $38
    ld d, e
    rrca
    reti


    ld d, [hl]
    sub $58
    ei
    rst $08
    rst $28
    bit 7, h
    jp z, $88f8

    cp h
    ld b, l
    or $f0
    sbc e
    ld l, b
    ld l, e
    ld a, [de]
    rst $18
    di
    rst $30
    db $d3
    ld a, $53
    rra
    ld de, $a03d
    ld l, l
    rst $38
    add b
    ld a, a
    call z, $de73
    cpl
    pop hl
    cp a
    push bc
    rst $10
    cp d
    rst $38
    xor d
    rst $38
    ld [$2ffc], a
    ldh a, [rNR34]
    rst $30
    rra
    db $e3
    ld a, a
    rst $38
    rst $38
    db $fc
    rra
    pop hl
    ld a, a
    sbc $3f
    ld h, e
    ld a, e
    add b
    rst $28
    nop
    db $fd
    ld [$3fe8], sp
    rst $38
    ld [hl], e
    di
    sbc h
    rst $18
    ld [hl], c
    rst $38
    jp nz, Jump_000_1adb

    ld a, [$fd25]
    ld [bc], a
    ld a, [hl]
    jp nz, $39c6

    ccf
    ret nc

    db $d3
    cp a
    rst $38
    ccf
    db $f4
    rrca
    ld a, b
    ld c, a
    ld a, b
    rst $00
    call c, $9e93
    ld a, c
    ld a, e
    daa
    rst $38
    di
    db $fc
    dec b
    and b
    rra
    ld c, l

jr_026_69ab:
    dec b
    ld e, a
    ccf
    ld c, l
    dec b
    cp a
    ccf
    ld c, l
    dec b
    rra
    ld c, a
    ld c, l
    dec b
    ld a, a
    ld c, a
    ld c, l
    dec b
    ldh [rIE], a
    dec c
    rst $30
    ld [$42bd], sp
    sbc $21
    sub $29
    ei
    inc b
    db $db
    inc h
    ld l, [hl]
    sub c
    xor e
    ld d, h
    rst $18
    jr nz, jr_026_69ab

    ld h, $fe
    ld bc, $49b6
    db $db
    inc h
    db $eb
    inc d
    db $ed
    ld [de], a
    ld a, l
    add d
    cp l
    ld b, d
    db $ed
    ld [de], a
    rst $38
    nop
    cp c
    ld b, [hl]
    dec b
    inc b
    ld d, b
    ld a, e
    add h
    ld l, l
    sub d
    ld [hl], a
    adc b
    db $db
    inc h
    ld l, d
    sub l
    xor [hl]
    ld d, c
    cp a
    ld b, b
    xor $11
    rst $30
    ld [$48b7], sp
    dec b
    and b
    ld c, a
    ld c, l
    dec b
    sbc a
    ld e, a
    ld c, l
    dec b
    rst $38
    ld e, a
    ld c, l
    dec b
    ld e, a
    ld l, a
    ld c, l
    dec b
    ret nz

    rst $38
    dec l
    ldh a, [rIF]
    rst $28
    db $10
    ret nc

    cpl
    add b
    ld b, c
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $f00f
    rst $20
    add sp, -$0d
    ld [hl], h
    ld [hl], l
    or d
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l
    ld b, b
    or c
    ld b, a
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    xor [hl]
    ld c, l
    rst $08
    ld l, $e7
    rla
    ldh a, [rIF]
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    ld bc, $0b82
    db $f4
    rst $30
    ld [$f00f], sp
    dec b
    and b
    ld l, a
    ld c, l
    dec b
    sbc a
    ld a, a
    ld c, l
    nop
    ld [bc], a
    inc d
    nop
    ld bc, $0014
    ld [bc], a
    jr nz, jr_026_6a85

    ld [hl+], a
    inc hl
    ld d, d
    ld d, e
    inc d
    inc c
    nop
    nop
    ld bc, $f514
    ld hl, sp+$02
    inc bc
    inc d
    jr nz, jr_026_6a77

    inc h
    dec h

jr_026_6a77:
    ld h, $27
    ld d, b
    ld d, c
    inc d
    inc l
    nop
    inc b
    dec b
    inc d
    push af
    ld hl, sp+$04
    dec b

jr_026_6a85:
    inc d
    ld b, b
    ld [bc], a
    jr z, jr_026_6ab3

    ld a, [hl+]
    dec hl
    nop
    ld bc, $5352
    db $10
    ld de, $0302
    inc d
    push af
    ld hl, sp+$06
    rlca
    inc d
    ld h, b
    ld [bc], a
    inc l
    dec l
    ld l, $2f
    inc b
    dec b
    ld d, b
    ld d, c
    ld [de], a
    inc de
    inc d
    ld [hl-], a
    ld a, [bc]
    inc d
    inc c
    ld [bc], a
    inc d
    inc c
    nop
    ld [$0209], sp
    inc bc

jr_026_6ab3:
    inc d
    adc b
    nop
    ld b, $07
    inc d
    push af
    ld hl, sp+$14
    inc l
    ld [bc], a
    inc d
    inc l
    nop
    ld a, [bc]
    dec bc
    ld [bc], a
    inc bc
    inc d
    xor b
    nop
    ld [$1409], sp
    db $f4
    ld a, [$8814]
    nop
    inc d
    ld c, h
    nop
    ld d, d
    ld d, e
    inc b
    dec b
    inc d
    ld c, [hl]
    nop
    ld a, [bc]
    dec bc
    inc d
    inc [hl]
    ld a, [bc]

Call_026_6adf:
    inc d
    xor b
    inc b
    ld d, b
    ld d, c
    ld b, $07
    inc d
    ld l, [hl]
    nop
    inc d
    ld [de], a
    inc c
    inc d
    ld c, [hl]
    nop
    inc d
    call z, $0800
    add hl, bc
    db $10
    ld de, $8814
    ld [bc], a
    inc d
    inc d
    ld a, [bc]
    inc d
    ld l, [hl]
    nop
    inc d
    db $ec
    nop
    ld a, [bc]
    dec bc
    ld [de], a
    inc de
    inc d
    xor b
    nop
    inc d
    db $d2, $0c, $14

    add b
    ld b, $14
    inc l
    nop
    inc d
    db $10
    inc c
    inc d
    db $ec
    nop
    inc d
    and b
    inc b
    inc d
    ld c, b
    ld [de], a
    inc d
    ld d, d
    ld a, [bc]
    inc c
    dec c
    inc d
    stop
    inc d
    adc b
    nop
    ld [$1409], sp
    ld c, $02
    inc d
    ld [hl-], a
    ld a, [bc]
    ld c, $0f
    inc d
    ld [hl], b
    db $10
    inc d
    ld l, $12
    inc d
    inc l
    nop
    ld [bc], a
    inc bc
    inc d
    sub d
    ld a, [bc]
    inc d
    ret z

    inc b
    inc d
    add b
    inc b
    inc b
    dec b
    inc d
    or d
    ld a, [bc]
    inc d
    add sp, $04
    inc d
    and b
    inc b
    ld b, $07
    inc d
    db $d2, $0a, $00

    ld [bc], a
    inc d
    nop
    ld bc, $0014
    ld [bc], a
    ld d, d
    ld d, e
    inc d
    ld [$1002], sp
    ld de, $0100
    inc d
    push af
    ld hl, sp+$02
    inc bc
    inc d
    jr nz, jr_026_6b72

    ld d, b
    ld d, c

jr_026_6b72:
    inc d
    jr z, jr_026_6b77

    ld [de], a
    inc de

jr_026_6b77:
    inc b
    dec b
    inc d
    push af
    ld hl, sp+$04
    dec b
    inc d
    ld b, b
    ld [bc], a
    ld d, d
    ld d, e
    ld [hl], b
    ld [hl], c
    inc d
    ld b, $00
    db $10
    ld de, $0302
    inc d
    push af
    ld hl, sp+$06
    rlca
    inc d
    ld h, b
    ld [bc], a
    ld d, b
    ld d, c
    ld [hl], d
    ld [hl], e
    inc b
    dec b
    inc d
    ld l, $0e
    inc d
    ld c, $00
    inc d
    ld [$0802], sp
    add hl, bc
    ld [bc], a
    inc bc
    inc d
    adc b
    nop
    ld b, $07
    inc d
    push af
    ld hl, sp+$14
    ld l, $00
    inc d
    jr z, jr_026_6bb7

    ld a, [bc]
    dec bc

jr_026_6bb7:
    inc d
    ld h, $00
    ld a, [bc]
    dec bc
    ld [$1409], sp
    db $f4
    ld a, [$8814]
    nop
    inc d
    ld c, h
    ld [bc], a
    inc d
    ld b, [hl]
    nop
    db $10
    ld de, $0b0a
    inc d
    inc [hl]
    ld a, [bc]
    inc d
    xor b
    inc b
    ld [de], a
    inc de
    inc d
    ld h, [hl]
    nop
    ld [de], a
    inc de
    inc d
    ld [de], a
    inc c
    inc d
    ret z

    inc b
    ld [$1409], sp
    add d
    nop
    inc d
    adc d
    nop
    inc d
    inc d
    ld a, [bc]
    inc d
    add sp, $04
    ld a, [bc]
    dec bc
    inc d
    and d
    nop
    ld a, [bc]
    dec bc
    inc d
    db $d2, $0c, $14

    ld [$5204], sp
    ld d, e
    inc d
    jr z, jr_026_6c01

jr_026_6c01:
    ld d, d
    ld d, e
    inc d
    ld [de], a
    ld a, [bc]
    inc d
    ld h, [hl]
    nop
    inc d
    jr z, jr_026_6c10

    inc d
    ld c, b
    ld [de], a
    inc d

jr_026_6c10:
    ld d, d
    ld a, [bc]
    inc c
    dec c
    inc d
    ld d, b
    db $10
    inc d
    adc b
    nop
    inc d
    ld a, [bc]
    ld [de], a
    nop
    ld bc, $3214
    ld a, [bc]
    ld c, $0f
    inc d
    ld [hl], b
    db $10
    inc d
    ld l, $12
    inc d
    and d
    nop
    ld [bc], a
    inc bc
    inc d
    sub d
    ld a, [bc]
    inc d
    ld [$1400], sp
    ld b, b
    jr jr_026_6c3d

    dec b
    inc d
    or d
    ld a, [bc]

jr_026_6c3d:
    inc d
    jr z, jr_026_6c40

jr_026_6c40:
    inc d
    ld h, b
    jr @+$08

    rlca
    inc d
    db $d2, $0a, $00

    ld [$000b], sp
    nop
    ld a, a
    nop
    ld b, b
    jr nz, jr_026_6cab

    ld b, $46
    add hl, de
    dec bc
    ld b, $02
    nop
    nop
    cp $00
    inc bc
    dec b
    sbc e
    ld h, c
    ld h, e
    sbc l
    sbc e
    ld h, l
    dec bc
    jr jr_026_6c67

jr_026_6c67:
    ld d, b
    xor b
    ldh [rSC], a
    ld b, b
    add l
    ld b, b
    sbc [hl]
    add b
    cpl
    add b
    ld d, $80
    inc e
    ret nz

    ld a, [bc]
    rra
    nop
    rrca
    nop
    rrca
    ld c, b
    rrca
    adc h
    dec c
    ld c, $07
    ld b, $1f
    ld e, $2f
    ld l, $7f
    ld a, a
    rst $28
    add b
    ret z

    and a
    add b
    add b
    ld sp, hl
    add h
    pop bc
    cp h
    pop bc
    cp h
    add b
    add b
    cp $fe
    db $cd, $23, $09
    rst $20
    ld bc, $f301
    add hl, bc
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    ld bc, $ef01
    db $10
    cp $01

jr_026_6cab:
    xor a
    ld d, b
    ei
    inc b
    ld a, [hl]
    add c
    rst $18
    jr nz, @-$17

    nop
    and b
    ld b, b
    cp $06
    db $fd
    rrca
    db $fd
    rrca
    ld sp, hl
    add hl, de
    ld sp, hl
    dec sp
    and c

jr_026_6cc2:
    dec sp
    ld b, c
    ld a, e
    add c
    add c
    db $fd
    ld a, [$cf08]
    inc c
    rst $28
    inc b
    rlca
    and $16
    add a
    ld h, a
    sbc c
    ld e, c
    nop
    nop
    add d
    ld a, l
    jr jr_026_6cc2

    ld e, c
    and [hl]
    jp nz, Jump_026_5a3d

    and l
    cp d
    add l
    db $fc
    rst $38
    rla
    rla
    adc b
    rst $28
    adc b
    call z, $cc88
    rst $38
    rst $38
    add b
    cp $80
    ret nz

    add b
    ret nz

    rst $38
    rst $38
    ld [$08ef], sp
    inc c
    ld [$0b0c], sp
    and [hl]
    ld b, $09
    rst $28
    add hl, bc
    dec c
    add hl, bc
    dec c
    rst $38
    rst $38
    add c
    rst $38
    add c
    pop bc
    add c
    pop bc
    rst $38
    rst $38
    cp $06
    db $fc
    rrca
    db $fc
    rrca
    ld hl, sp+$18
    ld hl, sp+$3b
    and b
    dec sp
    ld b, b
    ld a, e
    add c
    add c
    adc b
    xor a
    dec bc
    or d
    inc bc
    rst $38
    dec bc
    xor d
    ld [bc], a
    call Call_026_4921
    and l
    ld hl, $1b21
    dec de
    rst $28
    rrca
    sbc a
    ld e, a
    or e
    inc sp
    ld b, c
    ld b, c
    ld b, b
    daa
    ld a, a
    nop
    add b
    rst $38
    ld a, a
    ld a, a
    ld b, b
    ret nz

    ld b, b
    rst $38
    rlca
    or a
    ld [$0388], sp
    db $fd
    rst $38
    ld bc, $ff01
    cp $fe
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [c], a
    rst $28
    ld [de], a
    inc de
    nop
    sub b
    nop
    add b
    ret nz

    ld b, b
    pop af
    ld sp, $0fff
    cp h
    ld b, h
    call c, Call_026_5c26
    xor a
    ld e, a
    ld e, [hl]
    cp l
    cp [hl]
    rst $18
    call c, $fef9
    db $fd
    ld a, [c]
    ccf
    jr nz, jr_026_6d80

    dec d
    dec d
    ld a, [de]
    rst $08
    and b
    adc b
    rst $20
    adc b
    rst $20
    add b

jr_026_6d80:
    add b
    ld hl, sp-$7a
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    add b
    add b
    rst $08
    ld hl, $e709
    dec bc
    ld d, h
    nop
    rst $38
    ld bc, $7f81
    add c
    ld a, a
    ld bc, $d701
    rla
    rst $18
    rra
    sbc b
    inc e
    rst $38
    ld a, a
    ld h, b
    ld a, [hl]
    ret nz

    ret nz

    add b
    add b
    rst $38
    rst $38
    adc c
    xor a
    dec bc
    jp nz, $cf0a

    jr nz, jr_026_6db8

    rst $20
    ld [$00e7], sp
    nop
    db $fc
    ld [bc], a
    add b

jr_026_6db8:
    ld a, [hl]
    add b
    ld a, [hl]
    nop
    nop
    dec bc
    ld a, [hl]
    ld [de], a
    nop
    nop
    ld sp, hl
    inc b
    ld bc, $01fc
    db $fc
    dec bc
    and b
    rst $38
    ld c, l
    nop
    nop
    rst $28
    db $10
    ld a, e
    add h
    ld d, l
    xor d
    xor e
    ld d, h
    rst $30
    ld [$04fb], sp
    cp $01
    ld d, l
    xor d
    rst $38
    nop
    ld [hl], a
    adc b
    rst $38
    nop
    ld d, l
    xor d
    dec bc

jr_026_6de7:
    inc b
    jr nz, jr_026_6de7

    ld [bc], a
    xor a
    ld d, b
    dec bc
    jr jr_026_6e12

    db $fd
    ld [bc], a
    cp e
    ld b, h
    rst $18
    jr nz, jr_026_6e4c

    xor d
    ld l, d
    sub l
    xor l
    ld d, d
    rst $18
    jr nz, jr_026_6e78

    add [hl]
    db $dd
    ld [hl+], a
    sbc a
    ld h, b
    xor d
    ld d, l
    push de
    ld a, [hl+]
    rst $18
    jr nz, jr_026_6e70

    sbc d
    ld [hl], b
    adc a
    ld l, h
    sub e
    ld l, b
    sub a

jr_026_6e12:
    ld [bc], a
    db $fd
    ld e, d
    and l
    ld b, [hl]
    cp c
    ld b, [hl]
    cp c
    dec bc
    sub b
    inc b
    jp c, $ba25

    ld b, l
    jp c, $d825

    daa
    sub b
    ld l, a
    ld d, [hl]
    xor c
    ld d, a
    xor b
    ld b, [hl]
    cp c
    or b
    ld c, a
    or e
    ld c, h
    cp e
    ld b, h
    ld [bc], a
    db $fd
    ld b, b
    cp a
    inc bc
    db $fc
    ld l, b
    sub a
    ld l, h
    sub e
    add hl, bc
    or $60
    sbc a
    ld l, c
    sub [hl]
    add hl, de
    and $ff
    nop
    cp e
    ld b, h
    rst $38
    nop
    rst $38

jr_026_6e4c:
    nop
    rst $28
    db $10
    dec bc
    add h

jr_026_6e51:
    jr nz, jr_026_6e5e

    add h
    jr nz, jr_026_6e51

    inc b
    ld a, a
    add b
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, a

jr_026_6e5e:
    add b
    rst $30
    ld [$800b], sp
    ld [hl+], a
    sbc $21
    dec bc
    sbc h
    jr nz, @+$01

    nop
    db $fd
    ld [bc], a
    cp a
    ld b, b
    dec bc

jr_026_6e70:
    db $10
    ld [hl+], a
    cp $01
    dec bc
    add h
    jr z, @+$71

jr_026_6e78:
    sub b
    ld l, a
    sub b
    dec de
    db $e4
    ld e, a
    and b
    ld e, a
    and b
    db $76
    adc c
    dec bc
    adc [hl]
    ld [hl+], a
    dec bc
    add h
    inc h
    ld hl, sp+$07
    jp nc, $e912

    ld l, c
    ld e, c
    ld e, c
    and d
    and d
    and l
    and l
    ld [de], a
    ld [de], a
    ld d, l
    ld d, l
    ld c, c
    ld c, c
    sub e
    sub b
    ld l, c
    ld l, b
    dec bc
    db $e4
    ld h, $2c
    inc l
    scf
    scf
    jr z, jr_026_6ed0

    dec bc
    db $e4
    inc h
    push de
    ld d, l
    add sp, $28
    ld h, $26
    db $dd
    db $dd
    dec bc
    db $e4
    dec h
    ld d, h
    xor e
    xor b
    sub d
    sub d
    ld l, c
    dec bc
    db $e3
    add hl, hl
    dec bc
    jr nz, jr_026_6efc

    dec bc
    cp $2a
    ld d, l
    ld d, l
    xor b
    xor b
    dec bc
    db $10
    add hl, sp
    ld d, l
    xor b
    xor b
    dec bc

jr_026_6ed0:
    ld [c], a
    rst $38
    dec c
    ldh a, [rIF]
    rst $28
    db $10
    ret nc

    cpl
    add b
    ld b, c
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $f00f
    rst $20
    add sp, -$0d
    ld [hl], h
    ld [hl], l
    or d
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l
    ld b, b
    or c
    ld b, a
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    xor [hl]

jr_026_6efc:
    ld c, l
    adc a
    ld l, [hl]
    rst $00
    scf
    ldh a, [rIF]
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    nop
    add e
    add hl, bc
    or $f3
    inc c
    rrca
    ldh a, [$0b]
    and b
    rra
    ld c, l
    dec bc
    rra
    ld c, a
    ld c, l
    dec bc
    ld a, a
    ld c, a
    ld c, l
    dec bc
    rst $18
    ld c, a
    ld c, l
    dec bc
    ccf
    ld e, a
    ld c, l
    dec bc
    sbc a
    ld e, a
    ld c, l
    dec bc
    rst $38
    ld e, a
    ld c, l
    dec bc
    ld e, a
    ld l, a
    ld c, l
    dec bc
    cp a
    ld l, a
    ld c, l
    dec bc
    rra
    ld a, a
    ld c, l
    dec bc
    ld a, a
    ld a, a
    ld c, l
    dec bc
    rst $18
    ld a, a
    dec c
    nop
    ld [bc], a
    ld a, [de]
    inc b
    dec b
    jr nz, @+$23

    jr nz, jr_026_6f6d

    inc b
    dec b
    inc l
    dec h
    nop
    ld bc, $3332
    inc b
    dec b
    ld b, $07
    jr z, @+$2b

    rst $38
    ld a, [de]
    inc d
    rlca
    inc d
    dec d
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    inc d
    dec d
    ld h, $27
    db $10
    ld de, $3534
    inc d

jr_026_6f6d:
    dec d
    ld d, $17
    ld a, [hl+]
    dec hl
    ld a, [de]
    inc d
    ld a, [bc]
    ld a, [de]
    ld [bc], a
    nop
    inc d
    dec d
    inc h
    dec h
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    inc d
    dec d
    jr z, jr_026_6fad

    ld a, [de]
    ld [de], a
    rrca
    ld [bc], a
    rrca
    ld h, $27
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    inc d
    rrca
    ld a, [hl+]
    dec hl
    ld a, [de]
    ld [hl-], a
    inc c
    ld [bc], a
    inc bc
    jr nz, jr_026_6fbb

    inc d
    jr jr_026_6fa5

    add hl, bc
    ld [hl-], a
    inc sp
    inc b
    add hl, de
    jr jr_026_6fb9

    ld [bc], a

jr_026_6fa5:
    inc bc
    ld a, [de]
    ld [de], a
    dec bc
    rrca
    ld [de], a
    inc de
    ld [hl+], a

jr_026_6fad:
    inc hl
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc [hl]
    dec [hl]
    ld a, [de]
    and [hl]
    nop
    ld [de], a
    inc de

jr_026_6fb9:
    ld a, [de]
    ld [hl-], a

jr_026_6fbb:
    ld a, [bc]
    ld a, [de]
    adc [hl]
    nop
    ld a, [de]
    add d
    nop
    jr nz, jr_026_6fe5

    ld a, [de]
    ld c, d
    nop
    jr nz, jr_026_6fea

    ld a, [de]
    sub b
    inc c
    ld a, [de]
    xor [hl]
    nop
    ld a, [de]
    and d
    nop
    ld [hl+], a
    inc hl
    ld a, [de]
    ld l, d
    nop
    ld [hl+], a
    inc hl
    ld a, [de]
    or b
    inc c
    jr z, @+$2b

    ld [bc], a
    inc bc
    ld b, $07
    jr nz, jr_026_7005

    inc b

jr_026_6fe5:
    add hl, de
    add hl, de
    dec b
    ld [hl-], a
    inc sp

jr_026_6fea:
    ld b, $0d
    add hl, de
    dec b
    ld a, [de]
    ld [de], a
    ld a, [bc]
    ld a, [hl+]
    dec hl
    ld [de], a
    inc de
    ld d, $17
    ld [hl+], a
    inc hl
    inc d
    jr jr_026_7016

    xor b
    nop
    ld d, $0e
    jr jr_026_7017

    ld a, [de]
    ld [hl-], a
    ld a, [bc]

jr_026_7005:
    ld [$1a09], sp
    ld d, b
    nop
    jr z, jr_026_7035

    ld a, [de]
    ld b, [hl]
    ld [$d41a], sp
    ld a, [bc]
    ld a, [de]
    ld [hl], b
    nop
    ld a, [hl+]

jr_026_7016:
    dec hl

jr_026_7017:
    ld a, [bc]
    inc c
    ld a, [de]
    ld l, b
    inc bc
    ld a, [de]
    ld sp, $2c1b
    dec l
    inc h
    dec h
    inc l
    dec h
    jr z, jr_026_7050

    inc l
    dec h
    inc h
    dec h
    nop
    ld bc, $461a
    db $10
    ld a, [de]
    ld [de], a
    ld a, [bc]
    ld h, $27

jr_026_7035:
    ld a, [de]
    and b
    db $10
    ld a, [hl+]
    dec hl
    ld a, [de]
    and b
    db $10
    db $10
    ld de, $661a
    db $10
    ld a, [de]
    ld [hl-], a
    ld a, [bc]
    ld a, [de]
    ld [bc], a
    nop
    ld a, [de]
    ld [bc], a
    ld [bc], a
    inc h
    dec h
    inc b
    dec b
    ld a, [de]

jr_026_7050:
    ld b, d
    ld [de], a
    ld a, [de]
    inc d
    ld [$221a], sp
    nop
    ld a, [de]
    ld [hl+], a
    inc b
    ld a, [de]
    ld [hl], b
    db $10
    ld a, [de]
    ld [hl], b
    inc c
    nop
    ld [bc], a
    ld a, [de]
    inc b
    dec b
    jr nz, @+$23

    jr nz, jr_026_708b

    inc b
    dec b
    inc l
    dec h
    nop
    ld bc, $3332
    inc b
    dec b
    ld b, $07
    jr z, @+$2b

    rst $38
    ld a, [de]
    inc d
    rlca
    inc d
    dec d
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    inc d
    dec d
    ld h, $27
    db $10
    ld de, $3534
    inc d

jr_026_708b:
    dec d
    ld d, $17
    ld a, [hl+]
    dec hl
    ld a, [de]
    inc d
    ld a, [bc]
    ld a, [de]
    ld [bc], a
    nop
    inc d
    dec d
    inc h
    dec h
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    inc d
    dec d
    jr z, jr_026_70cb

    ld a, [de]
    ld [de], a
    rrca
    ld [bc], a
    rrca
    ld h, $27
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    inc d
    rrca
    ld a, [hl+]
    dec hl
    ld a, [de]
    ld [hl-], a
    inc c
    ld [bc], a
    inc bc
    jr nz, jr_026_70d9

    inc d
    jr jr_026_70c3

    add hl, bc
    ld [hl-], a
    inc sp
    inc b
    add hl, de
    jr jr_026_70d7

    ld [bc], a

jr_026_70c3:
    inc bc
    ld a, [de]
    ld [de], a
    dec bc
    rrca
    ld [de], a
    inc de
    ld [hl+], a

jr_026_70cb:
    inc hl
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc [hl]
    dec [hl]
    ld a, [de]
    and [hl]
    nop
    ld [de], a
    inc de

jr_026_70d7:
    ld a, [de]
    ld [hl-], a

jr_026_70d9:
    ld a, [bc]
    ld a, [de]
    adc [hl]
    nop
    ld a, [de]
    add d
    nop
    jr nz, jr_026_7103

    ld a, [de]
    ld c, d
    nop
    jr c, jr_026_7120

    ld a, [de]
    sub b
    inc c
    ld a, [de]
    xor [hl]
    nop
    ld a, [de]
    and d
    nop
    ld [hl+], a
    inc hl
    ld a, [de]
    ld l, d
    nop
    ld a, [hl-]
    dec sp
    ld a, [de]
    or b
    inc c
    jr z, @+$2b

    ld [bc], a
    inc bc
    ld b, $07
    jr nz, jr_026_7123

    inc b

jr_026_7103:
    add hl, de
    add hl, de
    dec b
    ld [hl-], a
    inc sp
    ld b, $0d
    add hl, de
    dec b
    ld a, [de]
    ld [de], a
    ld a, [bc]
    ld a, [hl+]
    dec hl
    ld [de], a
    inc de
    ld d, $17
    ld [hl+], a
    inc hl
    inc d
    jr jr_026_7134

    xor b
    nop
    ld d, $0e
    jr jr_026_7135

jr_026_7120:
    ld a, [de]
    ld [hl-], a
    ld a, [bc]

jr_026_7123:
    ld [$1a09], sp
    ld d, b
    nop
    jr z, jr_026_7153

    ld a, [de]
    ld b, [hl]
    ld [$d41a], sp
    ld a, [bc]
    ld a, [de]
    ld [hl], b
    nop
    ld a, [hl+]

jr_026_7134:
    dec hl

jr_026_7135:
    ld a, [bc]
    inc c
    ld a, [de]
    ld l, b
    inc bc
    ld a, [de]
    ld sp, $2c1b
    dec l
    inc h
    dec h
    inc l
    dec h
    jr z, jr_026_716e

    inc l
    dec h
    inc h
    dec h
    nop
    ld bc, $461a
    db $10
    ld a, [de]
    ld [de], a
    ld a, [bc]
    ld h, $27

jr_026_7153:
    ld a, [de]
    and b
    db $10
    ld a, [hl+]
    dec hl
    ld a, [de]
    and b
    db $10
    db $10
    ld de, $661a
    db $10
    ld a, [de]
    ld [hl-], a
    ld a, [bc]
    ld a, [de]
    ld [bc], a
    nop
    ld a, [de]
    ld [bc], a
    ld [bc], a
    inc h
    dec h
    inc b
    dec b
    ld a, [de]

jr_026_716e:
    ld b, d
    ld [de], a
    ld a, [de]
    inc d
    ld [$221a], sp
    nop
    ld a, [de]
    ld [hl+], a
    inc b
    ld a, [de]
    ld [hl], b
    db $10
    ld a, [de]
    ld [hl], b
    inc c
    nop
    ld [$7f11], sp
    ld a, a
    rst $28
    add b
    ret z

    and a
    add b
    add b
    ld sp, hl
    add h
    pop bc
    cp h
    pop bc
    cp h
    add b
    add b
    rst $38
    rst $38
    rst $08
    jr nz, jr_026_719f

    rst $20
    nop
    nop
    ld sp, hl
    inc b
    ld bc, $01fc

jr_026_719f:
    db $fc
    nop
    nop
    cp $fe
    db $cd, $23, $09
    rst $20
    ld bc, $f301
    add hl, bc
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    ld bc, $cf01
    and b
    adc b
    rst $20
    adc b
    rst $20
    add b
    add b
    ld hl, sp-$7a
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    add b
    add b
    ld de, $0012
    ld de, $0014
    db $fc
    ld [bc], a
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    nop
    nop
    rst $08
    ld hl, $e709
    ld de, $0024
    rst $38
    ld bc, $7f81
    add c
    ld a, a
    ld bc, $fe01
    add c
    ret nz

    cp a
    ld de, $000e
    add b
    cp $80
    ret nz

    add b
    ret nz

    rst $38
    rst $38
    ld a, a
    nop
    ld b, b
    ccf
    ld de, $0864
    ld a, l
    inc bc
    ld b, c
    ccf
    add c
    add c
    rst $38
    rst $38
    add c
    rst $38
    add c
    pop bc
    add c
    pop bc
    rst $38
    rst $38
    adc b
    rst $28
    adc b
    call z, $cc88
    ld de, $0666
    ld [$08ef], sp
    inc c
    ld [$110c], sp
    ld h, [hl]
    ld b, $09
    rst $28
    add hl, bc
    dec c
    add hl, bc
    dec c
    ld de, $0686
    ld a, a
    rst $38
    ld b, b
    ld de, $06c1
    ret nz

    ld b, b
    ret nz

    ld hl, sp-$05
    ld c, $fe
    dec bc
    db $fd
    add hl, bc
    ei
    ld c, $fe
    ld a, [bc]
    rst $38
    ld c, $0b
    ld c, $0b
    ld e, e
    ret nz

    ld b, b
    db $db
    ld b, b
    ret nz

    ld e, a
    rst $08
    ld c, a
    ret nc

    ld b, b
    rst $08
    ld b, b
    ret nz

    ld a, a
    rst $38
    ld l, [hl]
    dec bc
    ld a, [bc]
    ld l, a
    ld a, [bc]

jr_026_724e:
    dec bc
    ld [$cccb], a
    dec l
    ld [$08cb], sp
    dec bc
    ld hl, sp-$05
    inc bc
    adc h
    ld c, $30
    jr jr_026_72c0

    inc sp
    ld b, h
    inc h
    jp z, $8469

    ld c, e
    sub b
    ld d, d
    adc c
    ldh [rNR23], a
    jr c, jr_026_7274

    adc l
    ld b, d

jr_026_726f:
    rst $20
    db $10
    inc de
    jr z, jr_026_724e

jr_026_7274:
    ld bc, $8042
    ld a, [hl]
    add c
    nop
    cp $fe
    ld bc, $0083
    ld a, c
    inc b
    add h
    ld a, [bc]
    or $00
    ld b, [hl]
    adc b
    sbc [hl]
    jr nz, jr_026_728a

jr_026_728a:
    rrca
    rrca
    or b
    jr jr_026_726f

    or e
    ld b, h
    and h
    ld c, e
    xor h
    ld b, b
    and [hl]
    ld c, c
    pop af
    ld [bc], a
    nop
    cp $ff
    nop
    ld hl, $a500
    ld [$8021], sp
    dec h
    ld [$0865], sp
    dec h
    adc b
    nop
    ld a, a
    rst $38
    nop
    ld [$2000], sp
    ld b, a
    daa
    ld c, b
    add hl, sp
    ld b, [hl]
    jr nz, jr_026_730a

    inc l
    ld b, c
    nop
    add a
    add a
    ld a, b
    call z, Call_026_7930

jr_026_72c0:
    ld [bc], a
    ld [hl-], a
    add l
    or h
    ld [bc], a
    and l
    ld [$09a4], sp
    nop
    pop hl
    ldh [rNR23], a
    jr nc, jr_026_72db

    sbc c
    ld b, l
    ld c, b
    and [hl]
    inc l

jr_026_72d4:
    ld b, d
    and h
    ld [de], a
    inc h
    sub d
    ld c, e
    sub b

jr_026_72db:
    add hl, hl
    call nz, Call_026_4a24
    inc de
    ld h, h
    ld [$0631], sp
    ld [$0201], sp
    rst $38
    rst $38
    ld b, e
    add b
    db $db
    nop
    inc de
    jr z, jr_026_72d4

    inc de
    adc b
    ld b, h
    jr nc, jr_026_72fd

    ret nz

    jr nz, @+$01

    rst $38
    ld [hl+], a
    ld d, h
    ld [hl+], a
    ld d, l

jr_026_72fd:
    dec [hl]
    ld c, d

jr_026_72ff:
    sbc b
    dec h
    ld b, d
    add b
    ccf
    ld b, b
    nop
    nop
    rst $38
    rst $38
    ld a, h

jr_026_730a:
    ld bc, $0320
    inc hl
    adc h
    xor [hl]
    ld bc, $0020
    rst $18
    jr nz, jr_026_7327

    xor h
    db $10
    and l
    ld [$08a5], sp
    dec h
    adc b
    ld h, l
    ld [$40a1], sp
    ld e, $a1
    ld de, $10ac

jr_026_7327:
    inc l
    ld b, c
    ld de, $12d0
    inc c
    nop
    di
    inc c
    ld de, $12bc
    or h
    ld [bc], a
    or d
    dec b
    xor c
    ld [de], a
    inc h
    jr jr_026_72ff

    inc h
    ld de, $10ac
    and h
    ld [de], a
    jr z, jr_026_738a

    ld c, b
    and h
    sub c
    ld c, l
    jr nz, jr_026_7362

    ret nz

    ld de, $11bb
    nop
    rst $38
    ld a, a
    ld a, a
    nop
    ld e, b
    ld e, d
    nop
    ld e, b
    ld bc, $7e00
    db $fd
    db $fc
    add d
    ei
    nop
    rst $38
    cp $fe

jr_026_7362:
    nop
    ld a, [de]
    ld e, d
    nop
    ld a, [de]
    add b
    nop
    ld a, [hl]
    cp a
    ccf
    ld b, c
    rst $18
    add b
    add $80
    res 0, b
    ld hl, sp-$80
    call z, $ff80
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    ld bc, $0163
    db $d3
    ld bc, $011f
    inc sp
    ld bc, $2911
    inc hl

jr_026_738a:
    ld de, $2229
    sbc c
    ld h, [hl]
    ld h, [hl]
    sbc c
    ld de, $2246
    ld de, $10fd
    ld de, $203e
    ld de, $223c
    nop
    nop
    ld h, $d9
    reti


    ld h, $46
    sbc c
    ld e, c
    ld b, $c6
    sbc c
    reti


    add [hl]
    ld de, $2068
    cp $fe
    rst $38
    ld bc, $0503
    sbc e
    ld h, c
    ld h, e
    sbc l
    sbc e
    ld h, l
    ld de, $2078
    ld de, $2468
    ld de, $2468
    ld de, $2478
    ld de, $2478
    ld de, $203f
    ld de, $28a0
    ld de, $ffa0
    ld c, l
    ld de, $3f0f
    ld c, l
    ld de, $3f6f
    ld c, l
    ld de, $3fcf
    ld c, l
    ld de, $4f2f
    ld c, l
    ld de, $4f8f
    ld c, l
    ld de, $fdef
    ld a, [hl]
    nop
    and l
    nop
    db $db
    nop
    and l
    ld de, $5302

jr_026_73f4:
    ld a, [hl]
    ld a, [hl]
    add c
    and l
    ld e, d
    db $db
    inc h
    and l
    ld e, d
    ld de, $5212
    ld a, [hl]
    add c
    ld de, $ffdf
    ld c, $ff
    ld h, [hl]
    sbc c
    ld e, c
    and [hl]
    jr z, @-$27

    inc a

jr_026_740e:
    jp $b34c


    ld b, b
    cp a
    jr nz, jr_026_73f4

    ld de, $5040
    sbc d
    ld h, l
    inc d
    db $eb
    inc a
    jp $cd32


    ld [bc], a
    db $fd
    inc b
    ei
    ld de, $5040
    ld de, $204e
    ld de, $5466
    jr nz, jr_026_740e

    ld b, b
    cp a
    ld de, $504c
    ld de, $5470
    ld de, $5666
    ld de, $5266
    inc b
    ei
    ld [bc], a
    db $fd
    ld de, $505c
    ld de, $5490
    ld de, $5070
    ld c, h
    or e
    inc a
    jp $d728


    ld e, c
    and [hl]
    ld h, [hl]
    sbc c
    ld de, $5880
    ld de, $2046
    ld de, $528e
    ld [hl-], a
    call $c33c
    inc d
    db $eb
    sbc d
    ld h, l
    ld de, $51ac
    ld de, $5fd0
    ld c, l
    ld de, $6f30
    ld c, l
    ld de, $6f90
    ld c, l
    ld de, $5d31
    rrca
    ldh a, [rNR10]
    rst $28
    nop
    pop bc
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $ff00
    ldh [$ef], a
    ldh a, [rPCM34]
    ld [hl], h
    or e
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l
    ld b, b
    or c
    ld b, a
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld l, $cd
    rrca
    xor $07
    rst $30
    nop
    rst $38
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    nop
    add e
    ld [$f0f7], sp
    rrca
    ld de, $5fce
    ld c, l
    ld de, $7f9d
    ld c, l
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    dec b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld a, [hl+]
    ld [bc], a
    db $f4
    cp $18
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld [bc], a
    ld c, $0f
    ld bc, $5450
    ld d, [hl]
    ld [bc], a
    ld b, h
    ld [$0255], sp
    ld [hl-], a
    dec c
    ld d, a
    ld e, b
    ld [bc], a
    ld h, h
    ld [$0259], sp
    ld d, d
    rrca
    rlca
    inc c
    dec c
    ld [bc], a
    adc d
    nop
    ld [bc], a
    ld d, d
    rrca
    rlca
    ld c, $0f
    ld [bc], a
    xor d
    nop
    ld [bc], a
    ld [hl-], a
    dec c
    ld e, d
    ld e, e
    ld [bc], a
    call nz, $0202
    ld l, e
    rrca
    dec b
    ld [bc], a
    ld [c], a
    inc b
    ld [bc], a
    ld h, e
    ld [bc], a
    ld [bc], a
    ld [hl], c
    dec c
    inc h
    ld [bc], a
    ld [bc], a
    ld [de], a
    daa
    ld d, b
    ld d, a
    ld [bc], a
    adc h
    rrca
    inc bc
    dec h
    ld [bc], a
    ld [hl+], a
    ld de, $2926
    ld d, b
    ld d, a
    ld [bc], a
    xor h
    rrca
    inc bc
    jr nz, jr_026_7553

    ld [bc], a
    ld [c], a
    nop
    jr z, jr_026_7560

    ld [bc], a
    ld [$050f], a
    ld [hl+], a
    inc hl
    ld [bc], a
    ld b, h
    inc de
    ld [bc], a
    jp $5c02


    ld [bc], a
    ld [hl-], a
    rra
    ld b, $02
    ld [c], a
    inc bc
    ld [bc], a
    ld d, d
    rra
    ld b, $02
    adc e
    rra
    inc bc

jr_026_7553:
    inc b
    ld bc, $c202
    dec de
    inc b
    ld [bc], a
    inc de
    ld a, [bc]
    rlca
    ld [bc], a
    pop hl
    dec e

jr_026_7560:
    ld [bc], a
    inc de
    add hl, bc
    nop
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    dec b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld a, [hl+]
    ld [bc], a
    db $f4
    cp $18
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld [bc], a
    ld c, $0f
    ld bc, $5450
    ld d, [hl]
    ld [bc], a
    ld b, h
    ld [$0255], sp
    ld [hl-], a
    dec c
    ld d, a
    ld e, b
    ld [bc], a
    ld h, h
    ld [$0259], sp
    ld d, d
    rrca
    rlca
    inc c
    dec c
    ld [bc], a
    adc d
    nop
    ld [bc], a
    ld d, d
    rrca
    rlca
    ld c, $0f
    ld [bc], a
    xor d
    nop
    ld [bc], a
    ld [hl-], a
    dec c
    ld e, d
    ld e, e
    ld [bc], a
    call nz, $0202
    ld l, e
    rrca
    dec b
    ld [bc], a
    ld [c], a
    inc b
    ld [bc], a
    ld h, e
    ld [bc], a
    ld [bc], a
    ld [hl], c
    dec c
    inc h
    ld [bc], a
    ld [bc], a
    ld [de], a
    daa
    ld d, b
    ld d, a
    ld [bc], a
    adc h
    rrca
    inc bc
    dec h
    ld [bc], a
    ld [hl+], a
    ld de, $2926
    ld d, b
    ld d, a
    ld [bc], a
    xor h
    rrca
    inc bc
    jr nz, jr_026_75f9

    ld [bc], a
    ld [c], a
    nop
    jr z, jr_026_7606

    ld [bc], a
    ld [$050f], a
    ld [hl+], a
    inc hl
    ld [bc], a
    ld b, h
    inc de
    ld [bc], a
    jp $5c02


    ld [bc], a
    ld [hl-], a
    rra
    ld b, $02
    ld [c], a
    ld bc, $7170
    ld [bc], a
    ld d, d
    rra
    ld b, $02
    ld [c], a

jr_026_75f9:
    ld bc, $7372
    ld [bc], a
    ld [de], a
    dec bc
    inc b
    ld bc, $c202
    dec de
    inc b
    ld [bc], a

jr_026_7606:
    inc de
    ld a, [bc]
    rlca
    ld [bc], a
    pop hl
    dec e
    ld [bc], a
    inc de
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_026_7671:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_026_76cb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_026_77cd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_026_7930:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_026_7c3c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_026_7ecc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_026_7f80:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
