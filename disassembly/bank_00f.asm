; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

    db $0f ;ROM BANK

    dw Call_00f_4007
    dw labelf_402f
    dw labelf_4110

Call_00f_4007:
    ld a, [$d8d3]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $41ba
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$d8d4]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$d8d5]
    ld l, a
    ld a, [$d8d6]
    ld h, a
    add hl, hl
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    ret

labelf_402f:
    ld hl, $ffb7
    ld a, [hl]
    and $f8
    ld [hl], a
    ld hl, $ffbb
    ld a, [hl]
    and $f8
    ld [hl], a
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
    ld [$d8e7], a
    ld a, h
    ld [$d8e8], a
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_00f_4007
    push bc
    call Call_00f_40e7
    pop bc

Call_00f_4075:
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    push bc
    ld b, l
    ld a, l
    and $e0
    ld l, a
    ld a, [$d8e7]
    add l
    ld l, a
    ld a, [$d8e8]
    adc h
    and $03
    ld h, a
    ld a, [$d8e8]
    and $fc
    or h
    ld h, a
    ld a, b
    and $1f
    jr z, jr_00f_40a0

    ld b, a

jr_00f_409a:
    call Call_00f_40da
    dec b
    jr nz, jr_00f_409a

jr_00f_40a0:
    ld a, l
    ld [$d8e7], a
    ld a, h
    ld [$d8e8], a
    pop bc

jr_00f_40a9:
    ld a, [bc]
    inc bc
    cp $d9
    ret z

    cp $d8
    jr nz, jr_00f_40d2

    ld a, [$d8e7]
    ld l, a
    ld a, [$d8e8]
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
    ld [$d8e7], a
    ld a, h
    ld [$d8e8], a
    jr jr_00f_40a9

jr_00f_40d2:
    call Write_gfx_tile
    call Call_00f_40da
    jr jr_00f_40a9

Call_00f_40da:
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
    ret


Call_00f_40e7:
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c3
    ld h, a

jr_00f_40f5:
    push hl

jr_00f_40f6:
    ld a, [bc]
    inc bc
    cp $d9
    jr z, jr_00f_410e

    cp $d8
    jr nz, jr_00f_410b

    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_00f_40f5

jr_00f_410b:
    ld [hl+], a
    jr jr_00f_40f6

jr_00f_410e:
    pop hl
    ret

labelf_4110:
    ld hl, $ffb7
    ld a, [hl]
    and $f8
    ld [hl], a
    ld hl, $ffbb
    ld a, [hl]
    and $f8
    ld [hl], a
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
    ld [$d8e7], a
    ld a, h
    ld [$d8e8], a
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_00f_4007
    push bc
    call Call_00f_4171
    pop bc
    ld a, [wIsGBC]
    or a
    ret z

    di
    call Call_000_1aa6
    ld a, $01
    ldh [rVBK], a
    ei
    call Call_00f_4075
    di
    call Call_000_1aa6
    ld a, $00
    ldh [rVBK], a
    ei
    ret


Call_00f_4171:
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc

jr_00f_4177:
    push hl

jr_00f_4178:
    ld a, [bc]
    inc bc
    cp $d9
    jr z, jr_00f_4193

    cp $d8
    jr nz, jr_00f_418d

    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_00f_4177

jr_00f_418d:
    call Call_00f_4195
    inc hl
    jr jr_00f_4178

jr_00f_4193:
    pop hl
    ret


Call_00f_4195:
    push hl
    srl h
    rr l
    push af
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c2
    ld h, a
    pop af
    jr c, jr_00f_41b0

    swap a
    and $f0
    ld d, a
    ld a, [hl]
    and $0f
    jr jr_00f_41b6

jr_00f_41b0:
    and $0f
    ld d, a
    ld a, [hl]
    and $f0

jr_00f_41b6:
    or d
    ld [hl], a
    pop hl
    ret


    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    sbc h
    ld b, d
    ld a, [de]
    ld b, e
    ld c, [hl]
    ld b, l
    adc $46
    xor $47
    ld b, [hl]
    ld c, e
    ld c, b
    ld d, b
    jr c, jr_00f_429b

    sub $52
    xor [hl]
    ld d, e
    add [hl]
    ld d, h
    ld a, h
    ld d, l
    ld h, b
    ld d, [hl]
    ld d, b
    ld d, a
    ld b, [hl]
    ld e, b
    ld [de], a
    ld e, c
    inc l
    ld e, c
    ld a, $59
    cp h
    ld e, c
    ld l, h
    ld e, d
    ld l, [hl]
    ld e, d
    ld l, [hl]
    ld e, d
    ld l, [hl]
    ld e, d
    ld a, h
    ld e, d
    ld a, h
    ld e, d
    ld a, h
    ld e, d
    ld a, [hl]
    ld e, d
    or [hl]
    ld e, h
    xor $5e
    ld [c], a
    ld h, c
    sub h
    ld l, e
    ld [hl], b
    ld l, a
    ld c, [hl]
    ld b, l
    ld l, h
    ld e, d
    ld l, h
    ld e, d
    ld l, h
    ld e, d
    ld l, h
    ld e, d
    ld c, [hl]
    ld b, l
    ld c, [hl]
    ld b, l
    ld c, [hl]
    ld b, l
    ld c, [hl]
    ld b, l
    ld c, [hl]
    ld b, l
    ld c, [hl]
    ld b, l
    ld c, [hl]
    ld b, l
    ld c, [hl]
    ld b, l
    ld c, [hl]
    ld b, l
    ld c, [hl]
    ld b, l
    ld c, [hl]
    ld b, l
    inc [hl]

jr_00f_429b:
    ld l, h
    xor [hl]
    ld b, d
    cp [hl]
    ld b, d
    jp nz, $c642

    ld b, d
    call nc, $e242
    ld b, d
    ldh a, [rSCY]
    cp $42
    inc c
    ld b, e
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld c, [hl]
    dec b
    rst $38
    rst $38
    ld c, a
    dec b
    rst $38
    rst $38
    ld bc, $21ff
    nop
    ret nc

    ld b, d
    ld d, b
    dec b
    rst $38
    rst $38
    ld d, e
    dec b
    rst $38
    rst $38
    ld bc, $21ff
    nop
    sbc $42
    ld d, c
    dec b
    rst $38
    rst $38
    ld d, h
    dec b
    rst $38
    rst $38
    ld bc, $21ff
    nop
    db $ec
    ld b, d
    ld d, d
    dec b
    rst $38
    rst $38
    ld d, l
    dec b
    rst $38
    rst $38
    ld bc, $21ff
    nop
    db $fc
    ld b, d
    ld [de], a
    rst $38
    add a
    reti


    nop
    nop
    rst $38
    rst $38
    ld bc, $21ff
    nop
    ld a, [bc]
    ld b, e
    ld [de], a
    rst $38
    add a
    reti


    ld bc, $ff00
    rst $38
    ld bc, $21ff
    nop
    jr @+$45

    ld [de], a
    rst $38
    add a
    reti


    ld [bc], a
    nop
    rst $38
    rst $38
    ld [hl+], a
    ld b, e
    ld [hl-], a
    ld b, e
    and $43
    sbc d
    ld b, h
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld d, [hl]
    dec b
    ld e, d
    rst $38
    sbc h
    nop
    rlca
    rst $38
    ld d, a
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    ld [$1c02], sp
    rst $38
    ld [bc], a
    dec d
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    inc a
    rst $38
    rlca
    rst $38
    ld e, [hl]
    dec b
    inc e
    rst $38
    ld [bc], a
    inc b
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    ld b, c
    nop
    inc bc
    rst $38
    ld hl, $1200
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld e, [hl]
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    add a
    reti


    inc bc
    nop
    nop
    rst $38
    xor $00
    jp c, $1243

    rst $38
    ld e, [hl]
    reti


    dec b
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld e, c
    dec b
    ld e, d
    rst $38
    sbc c
    nop
    rlca
    rst $38
    ld e, d
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    dec b
    ld bc, $ff1c
    ld [bc], a
    dec d
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    inc a
    rst $38
    rlca
    rst $38
    ld e, e
    dec b
    inc e
    rst $38
    ld [bc], a
    inc b
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    ld b, c
    nop
    inc bc
    rst $38
    ld hl, $1200
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld e, [hl]
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    add a
    reti


    inc bc
    nop
    nop
    rst $38
    xor $00
    adc [hl]
    ld b, h
    ld [de], a
    rst $38
    ld e, [hl]
    reti


    dec b
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld e, h
    dec b
    ld e, d
    rst $38
    sbc e
    nop
    rlca
    rst $38
    ld e, l
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    ld [bc], a
    inc bc
    inc e
    rst $38
    ld [bc], a
    dec d
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    inc a
    rst $38
    rlca
    rst $38
    ld e, b
    dec b
    inc e
    rst $38
    ld [bc], a
    inc b
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    ld b, c
    nop
    inc bc
    rst $38
    ld hl, $1200
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld e, [hl]
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    add a
    reti


    inc bc
    nop
    nop
    rst $38
    xor $00
    ld b, d
    ld b, l
    ld [de], a
    rst $38
    ld e, [hl]
    reti


    dec b
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld [hl], h
    ld b, l
    add h
    ld b, l
    adc h
    ld b, l
    sub h
    ld b, l
    sbc h
    ld b, l
    and h
    ld b, l
    xor h
    ld b, l
    or h
    ld b, l
    cp h
    ld b, l
    call nz, $cc45
    ld b, l
    call z, $cc45
    ld b, l
    call z, $cc45
    ld b, l
    call z, $d445
    ld b, l
    and $45
    xor d
    ld b, [hl]
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld [de], a
    rst $38
    jp hl


    reti


    ld bc, $ff00
    rst $38
    ld [de], a
    rst $38
    jp hl


    reti


    ld [bc], a
    nop
    rst $38
    rst $38
    ld [de], a
    rst $38
    jp hl


    reti


    inc bc
    nop
    rst $38
    rst $38
    ld [de], a
    rst $38
    jp hl


    reti


    inc b
    nop
    rst $38
    rst $38
    ld [de], a
    rst $38
    jp hl


    reti


    dec b
    nop
    rst $38
    rst $38
    ld [de], a
    rst $38
    jp hl


    reti


    ld b, $00
    rst $38
    rst $38
    ld [de], a
    rst $38
    jp hl


    reti


    rlca
    nop
    rst $38
    rst $38
    ld [de], a
    rst $38
    jp hl


    reti


    ld [$ff00], sp
    rst $38
    ld [de], a
    rst $38
    jp hl


    reti


    add hl, bc
    nop
    rst $38
    rst $38
    ld [de], a
    rst $38
    jp hl


    reti


    nop
    nop
    rst $38
    rst $38
    ld bc, $d5ff
    nop
    ld [c], a
    ld b, l
    ld h, c
    dec b
    inc bc
    rst $38
    push de
    nop
    rst $38
    rst $38
    ld h, d
    dec b
    rst $38
    rst $38
    ld bc, $d6ff
    nop
    and d
    ld b, [hl]
    ld h, e
    dec b
    inc bc
    rst $38
    sub $00
    ld e, d
    rst $38
    xor a
    nop
    rlca
    rst $38
    ld h, l
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    ld b, $04
    inc e
    rst $38
    ld [bc], a
    ld d, $19
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    nop
    nop
    rlca
    rst $38
    ld h, [hl]
    dec b
    inc e
    rst $38
    ld [bc], a
    inc b
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    ld b, $00
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    ld b, d
    nop
    inc bc
    rst $38
    ld [hl+], a
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, a
    reti


    ld bc, $1200
    rst $38
    adc c
    reti


    ld bc, $0000
    rst $38
    inc hl
    nop
    sub [hl]
    ld b, [hl]
    ld [de], a
    rst $38
    ld l, a
    reti


    inc bc
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld h, h
    dec b
    inc d
    rst $38
    ld a, [c]
    ld b, l
    rst $38
    rst $38
    ld bc, $d4ff
    nop
    ret z

    ld b, [hl]
    ld bc, $1bff
    ld bc, $46be
    ld b, d
    ld [$ff03], sp
    dec de
    ld bc, $ffff
    ld b, d
    ld [$055f], sp
    inc bc
    rst $38
    call nc, $ff00
    rst $38
    ld b, d
    ld [$0560], sp
    rst $38
    rst $38
    call nc, $e446
    ld b, [hl]
    or $46
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $d7ff
    nop
    xor $46
    ld [hl], c
    dec b
    rst $38
    rst $38
    ld [hl], d
    dec b
    inc bc
    rst $38
    ret c

    nop
    rst $38
    rst $38
    ld bc, $d8ff
    nop
    ld l, $47
    ld bc, $d7ff
    nop
    ld h, $47
    ld h, a
    dec b
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    inc d
    ld b, a
    ld l, b
    dec b
    inc d
    rst $38
    ld a, $47
    rst $38
    rst $38
    ld l, c
    dec b
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    ld h, $47
    ld l, d
    dec b
    inc d
    rst $38
    ld a, $47
    rst $38
    rst $38
    ld l, e
    dec b
    inc bc
    rst $38
    rst $10
    nop
    rst $38
    rst $38
    ld l, h
    dec b
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    inc a
    ld b, a
    ld l, [hl]
    dec b
    rst $38
    rst $38
    ld l, l
    dec b
    ld e, d
    rst $38
    or c
    nop
    rlca
    rst $38
    ld l, a
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld [bc], a
    nop
    dec b
    nop
    nop
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    ld [bc], a
    inc bc
    inc e
    rst $38
    ld bc, $1915
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    nop
    nop
    rlca
    rst $38
    ld [hl], b
    dec b
    inc e
    rst $38
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld bc, $4d00
    rst $38
    ld b, $00
    ld c, c
    rst $38
    ld bc, $0800
    rst $38
    ld [de], a
    rst $38
    db $e3
    reti


    ld b, e
    nop
    inc bc
    rst $38
    inc hl
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, a
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    adc d
    reti


    ld bc, $0000
    rst $38
    ld [hl+], a
    nop
    ld [c], a
    ld b, a
    ld [de], a
    rst $38
    ld l, a
    reti


    inc bc
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    db $f4
    ld b, a
    inc b
    ld c, b
    ld b, h
    ld c, e
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld [hl], e
    dec b
    ld e, d
    rst $38
    or e
    nop
    ld bc, $aaff
    nop
    inc h
    ld c, e
    rlca
    rst $38
    db $76
    dec b
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    inc bc
    ld bc, $ff19
    ld hl, $6cff
    nop
    add hl, bc
    rst $38
    ld b, $00
    inc e
    rst $38
    inc bc
    ld bc, $ff19
    ld hl, $6cff
    nop
    add hl, bc
    rst $38
    ld bc, $1c00
    rst $38
    inc bc
    ld bc, $ff19
    ld hl, $6cff
    nop
    add hl, bc
    rst $38
    ld [$1c00], sp
    rst $38
    inc bc
    ld bc, $ff19
    ld hl, $6cff
    nop
    add hl, bc
    rst $38
    ld bc, $1c00
    rst $38
    inc bc
    ld bc, $ff19
    ld hl, $6cff
    nop
    add hl, bc
    rst $38
    ld bc, $1c00
    rst $38
    inc bc
    inc b
    add hl, de
    rst $38
    ld hl, $6eff
    nop
    inc de
    rst $38

Jump_00f_486a:
    or c
    ret z

    ld [bc], a
    inc b
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    ld b, b
    nop
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    inc b
    nop
    ldh [rIE], a
    ld a, [de]
    rst $38
    dec b
    nop
    ldh [rIE], a
    ld a, [de]
    rst $38
    ld b, $00
    ldh [rIE], a
    dec de
    rst $38
    ld b, $00
    stop
    ld a, [de]
    rst $38
    rlca
    nop
    ldh a, [rIE]
    dec de
    rst $38
    rlca
    nop
    stop
    add hl, de
    rst $38
    ld c, c
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    dec b
    nop
    ld c, b
    rst $38
    ld b, $00
    ld c, b
    rst $38
    rlca
    nop
    db $10
    rst $38
    nop
    nop
    ld e, b
    nop
    dec de
    rst $38
    nop
    nop
    jr nz, jr_00f_48c2

jr_00f_48c2:
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec e
    rst $38
    ld c, d
    rst $38
    ld bc, $0d00
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    inc e
    rst $38
    ld bc, $1905
    rst $38
    ld e, $ff
    dec bc
    rst $38
    ld bc, $e800
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec e
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $e000
    rst $38
    add hl, de
    rst $38
    ld hl, $6cff
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $0c00
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $f400
    rst $38
    add hl, de
    rst $38
    ld hl, $6cff
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $0c00
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $f400
    rst $38
    add hl, de
    rst $38
    ld hl, $6cff
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $0c00
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $f400
    rst $38
    add hl, de
    rst $38
    ld hl, $6cff
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $0c00
    nop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld [$2200], sp
    rst $38
    dec de
    rst $38
    ld bc, $f400
    rst $38
    add hl, de
    rst $38
    ld hl, $6eff
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $2000
    nop
    ld [de], a
    rst $38
    sbc e
    ret z

    dec l
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld [de], a
    rst $38
    sbc e
    ret z

    dec l
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld [de], a
    rst $38
    sbc e
    ret z

    dec l
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    add hl, de
    rst $38
    ld e, $ff
    ld a, [de]
    rst $38
    nop
    nop
    ldh [rIE], a
    ld hl, $68ff
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    inc e
    rst $38
    inc bc
    dec c
    add hl, de
    rst $38
    ld hl, $00ff
    nop
    dec de
    rst $38
    nop
    nop
    ldh [rIE], a
    add hl, bc
    rst $38
    ld bc, $0d00
    rst $38
    ld [$0000], sp
    nop
    ld b, b
    nop
    add hl, bc
    rst $38
    inc b
    nop
    add hl, de
    rst $38
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    ld b, b
    nop
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    ld b, b
    nop
    dec c
    rst $38
    ld b, $00
    nop
    nop
    ld b, b
    nop
    dec c
    rst $38
    rlca
    nop
    nop
    nop
    ld b, b
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    jr nz, jr_00f_4a48

jr_00f_4a48:
    dec bc
    rst $38
    nop
    nop
    stop
    rlca
    rst $38
    ld [hl], a
    dec b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $6000
    ld c, d
    ld a, b
    dec b
    inc d
    rst $38
    ld h, d
    ld c, d
    ld a, c
    dec b
    dec bc
    rst $38
    ld bc, $2000
    nop
    ld c, c
    rst $38
    ld bc, $1c00
    rst $38
    ld bc, $1919
    rst $38
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    inc bc
    nop
    dec b
    nop
    nop
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    inc b
    inc bc
    inc e
    rst $38
    ld [bc], a
    dec d
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    nop
    nop
    ld bc, $aaff
    nop
    ret nc

    ld c, d
    rlca
    rst $38
    ld a, d
    dec b
    inc d
    rst $38
    call nc, Call_000_074a
    rst $38
    ld [hl], l
    dec b
    inc e
    rst $38
    ld [bc], a
    inc b
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld [$03ff], sp
    rst $38
    inc h
    nop
    ld [de], a
    rst $38
    db $e3
    reti


    ld b, h
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld e, l
    reti


    ld bc, $1200
    rst $38
    adc e
    reti


    ld bc, $0600
    rst $38
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    rlca
    rst $38
    ld [hl], h
    dec b
    dec c
    rst $38
    inc bc
    nop
    dec b
    nop
    nop
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    inc bc
    ld [bc], a
    inc d
    rst $38
    sub h
    ld c, d
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, d
    ld c, e
    ld b, [hl]
    ld d, b
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec d
    rst $38
    adc h
    reti


    nop
    nop
    ld l, d
    ld c, e
    dec d
    rst $38
    adc h
    reti


    ld bc, $3c00
    ld d, b
    dec d
    rst $38
    adc h
    reti


    ld [bc], a
    nop
    ld l, d
    ld c, e
    rst $38
    rst $38
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    ld b, b
    nop
    ld [$01ff], sp
    rst $38
    xor e
    nop
    ld d, $50
    ld bc, $aaff
    nop
    ld l, [hl]
    ld c, a
    ld bc, $a9ff
    nop
    inc b
    ld c, h
    rlca
    rst $38
    ld l, l
    inc b
    inc bc
    rst $38
    xor c
    nop
    ld b, $ff
    ld [de], a
    rst $38
    sbc e
    ret z

    dec l
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    ld c, l
    rst $38
    ld [bc], a
    nop
    ld hl, $6cff
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    rst $38
    sbc e
    ret z

    dec l
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    add hl, bc
    rst $38
    inc b
    nop
    rlca
    rst $38
    ld l, [hl]
    inc b
    inc d
    rst $38
    ld a, d
    ld c, h
    rlca
    rst $38
    ld l, a
    inc b
    ld b, $ff
    ld [de], a
    rst $38
    sbc e
    ret z

    dec l
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    ld c, l
    rst $38
    ld [bc], a
    nop
    ld hl, $6cff
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    rst $38
    sbc e
    ret z

    dec l
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    add hl, bc
    rst $38
    inc b
    nop
    rlca
    rst $38
    ld [hl], b
    inc b
    add hl, bc
    rst $38
    inc b
    nop
    inc de
    rst $38
    inc bc
    db $da, $56, $01

    inc de
    rst $38
    dec b
    db $da, $56, $01

    ld [de], a
    rst $38
    ld [bc], a
    db $da, $01, $00

    jr nz, @+$01

    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    nop
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    ld b, b
    nop
    rlca
    rst $38
    ld [hl], c
    inc b
    inc e
    rst $38
    inc b
    ld [$ff19], sp
    ld [de], a
    rst $38
    sbc e
    ret z

    dec l
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    dec l
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    ld c, l
    rst $38
    ld [bc], a
    nop
    ld hl, $6cff
    nop
    ld [de], a
    rst $38
    sbc e
    ret z

    dec l
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    nop
    nop
    rlca
    rst $38
    ld [hl], d
    inc b
    inc bc
    rst $38
    xor d
    nop
    ld b, $ff
    dec b
    rst $38
    ld d, a
    ld bc, $ff0d
    inc b
    nop
    nop
    nop
    nop
    nop
    inc e
    rst $38
    inc b
    dec c
    add hl, de
    rst $38
    dec c
    rst $38
    inc b
    nop
    jr jr_00f_4d5e

jr_00f_4d5e:
    jr c, jr_00f_4d60

jr_00f_4d60:
    dec c
    rst $38
    inc b
    nop
    ld a, [de]
    nop
    ld c, b
    nop
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    inc b
    nop
    nop
    nop
    nop
    nop
    ld b, a
    rst $38
    inc b
    nop
    ld [$0dff], sp
    rst $38
    inc b
    nop
    dec b
    nop
    add b
    nop
    inc e
    rst $38
    inc b
    ld [$ff19], sp
    add hl, bc
    rst $38
    inc b
    nop
    rlca
    rst $38
    ld [hl], l
    inc b
    inc e
    rst $38
    rlca
    ld c, $19
    rst $38
    inc e
    rst $38
    rlca
    ld c, $19
    rst $38
    inc e
    rst $38
    rlca
    ld c, $19
    rst $38
    inc a
    rst $38
    rlca
    rst $38
    db $76
    inc b
    inc bc
    rst $38
    xor e
    nop
    ld [de], a
    rst $38
    adc h
    reti


    ld [bc], a
    nop
    inc e
    rst $38
    rlca
    ld de, $ff19
    dec b
    rst $38
    rst $00
    nop
    dec bc
    rst $38
    rlca
    nop
    ldh a, [rIE]
    rlca
    rst $38
    ld a, c
    inc b
    ld [hl+], a
    rst $38
    dec de
    rst $38
    rlca
    nop
    xor c
    rst $38
    add hl, de
    rst $38
    dec c
    rst $38
    rlca
    nop
    nop
    nop
    ld b, b
    nop
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    inc b
    nop
    dec b
    nop
    nop
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, b
    rst $38
    inc b
    nop
    add hl, bc
    rst $38
    ld [$0b00], sp
    rst $38
    inc b
    nop
    stop
    add hl, bc
    rst $38
    inc b
    nop
    ld a, [bc]
    rst $38
    inc b
    nop
    stop
    add hl, bc
    rst $38
    inc b
    nop
    dec bc
    rst $38
    inc b
    nop
    stop
    add hl, bc
    rst $38
    inc b
    nop
    rlca
    rst $38
    ld a, d
    inc b
    ld a, e
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $2200
    ld c, [hl]
    ld a, l
    inc b
    inc d
    rst $38
    inc h
    ld c, [hl]
    ld a, h
    inc b
    dec e
    rst $38
    inc e
    rst $38
    inc b
    ld c, $19
    rst $38
    ld e, $ff
    rlca
    rst $38
    ld a, a
    inc b
    ld hl, $55ff
    nop
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    nop
    nop
    dec c
    rst $38
    dec b
    nop
    dec b
    nop
    add b
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    ld b, b
    nop
    add hl, de
    rst $38
    dec c
    rst $38
    dec b
    nop
    dec b
    nop
    nop
    nop
    rlca
    rst $38
    add b
    inc b
    dec e
    rst $38
    dec de
    rst $38
    inc b
    nop
    ret nz

    rst $38
    dec de
    rst $38
    dec b
    nop
    ret nz

    rst $38
    add hl, de
    rst $38
    ld e, $ff
    dec c
    rst $38
    inc b
    nop
    dec b
    nop
    add b
    nop
    dec c
    rst $38
    dec b
    nop
    dec b
    nop
    add b
    nop
    inc a
    rst $38
    rlca
    rst $38
    add c
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $9200
    ld c, [hl]
    add d
    inc b
    inc d
    rst $38
    sub h
    ld c, [hl]
    add e
    inc b
    dec e
    rst $38
    dec de
    rst $38
    inc b
    nop
    ld sp, hl
    rst $38
    dec de
    rst $38
    dec b
    nop
    ld sp, hl
    rst $38
    add hl, de
    rst $38
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    ld b, b
    nop
    dec de
    rst $38
    inc b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld e, $ff
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    ld b, b
    nop
    dec bc
    rst $38
    ld bc, $e000
    rst $38
    dec c
    rst $38
    ld bc, $0500
    nop
    add b
    nop
    add hl, bc
    rst $38
    jr jr_00f_4ed0

jr_00f_4ed0:
    dec c
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    dec c
    rst $38
    ld b, $00
    nop
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    dec b
    inc b
    inc e
    rst $38
    ld b, $15
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld b, $00
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld b, $00
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld b, $00
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld b, $00
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $0700
    rst $38
    add h
    inc b
    inc e
    rst $38
    ld b, $04
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld b, $00
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld b, $00
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld b, $00
    ld c, l
    rst $38
    ld b, $00
    ld c, c
    rst $38
    ld b, $00
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    ld b, l
    nop
    inc bc
    rst $38
    dec h
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld h, e
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld [hl], b
    reti


    ld bc, $1200
    rst $38
    adc h
    reti


    ld bc, $0600
    rst $38
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    rlca
    rst $38
    ld [hl], e
    inc b
    inc e
    rst $38
    inc b
    ld [$ff19], sp
    ld [de], a
    rst $38
    sbc e
    ret z

    dec l
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    dec l
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    ld c, l
    rst $38
    ld [bc], a
    nop
    ld hl, $6cff
    nop
    ld [de], a
    rst $38
    sbc e
    ret z

    dec l
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    nop
    nop
    rlca
    rst $38
    ld [hl], h
    inc b
    ld b, $ff
    dec b
    rst $38
    ld d, a
    ld bc, $ff14
    ld c, d
    ld c, l
    rlca
    rst $38
    ld [hl], a
    inc b
    inc e
    rst $38
    rlca
    ld c, $19
    rst $38
    inc e
    rst $38
    rlca
    ld c, $19
    rst $38
    inc e
    rst $38
    rlca
    ld c, $19
    rst $38
    inc a
    rst $38
    rlca
    rst $38
    ld a, b
    inc b
    inc e
    rst $38
    rlca
    ld de, $ff19
    inc d
    rst $38
    cp b
    ld c, l
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, h
    ld d, b
    ld e, h
    ld d, b
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $d9ff
    nop
    add b
    ld d, b
    ld a, e
    dec b
    inc bc
    rst $38
    reti


    nop
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    add [hl]
    ld d, b
    ld a, l
    dec b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $8600
    ld d, b
    ld a, [hl]
    dec b
    inc d
    rst $38
    adc b
    ld d, b
    ld a, a
    dec b
    inc d
    rst $38
    adc b
    ld d, b
    ld a, h
    dec b
    ld e, d
    rst $38
    ret


    nop
    rlca
    rst $38
    add b
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld [bc], a
    nop
    dec b
    nop
    nop
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    inc b
    inc bc
    inc e
    rst $38
    ld bc, $1915
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    rlca
    rst $38
    add c
    dec b
    inc e
    rst $38
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    ld b, $00
    ld c, b
    rst $38
    ld bc, $0800
    rst $38
    ld [de], a
    rst $38
    db $e3
    reti


    ld b, [hl]
    nop
    inc bc
    rst $38
    ld h, $00
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld [hl], c
    reti


    ld bc, $1200
    rst $38
    adc l
    reti


    ld bc, $0000
    rst $38
    jr z, jr_00f_5124

jr_00f_5124:
    inc l
    ld d, c
    ld [de], a
    rst $38
    ld [hl], c
    reti


    inc bc
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld a, $51
    ld c, [hl]
    ld d, c
    ld [de], a
    ld d, d
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $daff
    nop
    ld l, d
    ld d, c
    add d
    dec b
    inc bc
    rst $38
    db $da, $00, $15

    rst $38
    inc a
    ret z

    nop
    nop
    ld [hl], d
    ld d, c
    add h
    dec b
    inc d
    rst $38
    ld [hl], h
    ld d, c
    rst $38
    rst $38
    add l
    dec b
    inc d
    rst $38
    ld [hl], h
    ld d, c
    rst $38
    rst $38
    add e
    dec b
    ld e, d
    rst $38
    rlc b
    rlca
    rst $38
    add [hl]
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld [bc], a
    nop
    dec b
    nop
    nop
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    inc b
    inc bc
    inc e
    rst $38
    ld bc, $1915
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    rlca
    rst $38
    add a
    dec b
    inc e
    rst $38
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    ld b, $00
    ld c, b
    rst $38
    ld bc, $0800
    rst $38
    ld [de], a
    rst $38
    db $e3
    reti


    ld b, a
    nop
    inc bc
    rst $38
    daa
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    adc [hl]
    reti


    ld bc, $0600
    rst $38
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld bc, $dbff
    nop
    inc h
    ld d, d
    adc b
    dec b
    inc bc
    rst $38
    db $db
    nop
    inc d
    rst $38
    ld h, $52
    rst $38
    rst $38
    adc c
    dec b
    ld e, d
    rst $38
    call $0700
    rst $38
    adc d
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld [bc], a
    nop
    dec b
    nop
    nop
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    inc b
    inc bc
    inc e
    rst $38
    ld bc, $1915
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    rlca
    rst $38
    adc e
    dec b
    inc e
    rst $38
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    ld b, $00
    ld c, b
    rst $38
    ld bc, $0800
    rst $38
    ld [de], a
    rst $38
    db $e3
    reti


    rst $00
    nop
    inc bc
    rst $38
    jr z, jr_00f_52ac

jr_00f_52ac:
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld [hl], c
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    adc [hl]
    reti


    ld [bc], a
    nop
    nop
    rst $38
    ld h, $00
    jp z, $1252

    rst $38
    ld [hl], c
    reti


    inc bc
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    jp c, $ea52

    ld d, d
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $dcff
    nop
    db $fc
    ld d, d
    adc h
    dec b
    inc bc
    rst $38
    call c, $1400
    rst $38
    cp $52
    rst $38
    rst $38
    adc l
    dec b
    ld e, d
    rst $38
    rst $08
    nop
    rlca
    rst $38
    adc [hl]
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld [bc], a
    nop
    dec b
    nop
    nop
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    inc b
    ld bc, $ff1c
    ld bc, $1915
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    rlca
    rst $38
    adc a
    dec b
    inc e
    rst $38
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    ld b, $00
    ld c, b
    rst $38
    ld bc, $0800
    rst $38
    ld [de], a
    rst $38
    db $e3
    reti


    ld c, b
    nop
    inc bc
    rst $38
    add hl, hl
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld [hl], d
    reti


    ld bc, $1200
    rst $38
    adc a
    reti


    ld bc, $0000
    rst $38
    ld a, [hl+]
    nop
    and d
    ld d, e
    ld [de], a
    rst $38
    ld [hl], d
    reti


    inc bc
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    or d
    ld d, e
    db $c2, $53, $12

    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $ddff
    nop
    call nc, $9053
    dec b
    inc bc
    rst $38
    db $dd
    nop
    inc d
    rst $38
    sub $53
    rst $38
    rst $38
    sub c
    dec b
    ld e, d
    rst $38
    pop de
    nop
    rlca
    rst $38
    sub d
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld [bc], a
    nop
    dec b
    nop
    nop
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    inc b
    ld [bc], a
    inc e
    rst $38
    ld bc, $1915
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    rlca
    rst $38
    sub e
    dec b
    inc e
    rst $38
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    ld b, $00
    ld c, b
    rst $38
    ld bc, $0800
    rst $38
    ld [de], a
    rst $38
    db $e3
    reti


    ld c, c
    nop
    inc bc
    rst $38
    ld a, [hl+]
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld [hl], d
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    sub b
    reti


    ld bc, $0000
    rst $38
    add hl, hl
    nop
    ld a, d
    ld d, h
    ld [de], a
    rst $38
    ld [hl], d
    reti


    inc bc
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    adc d
    ld d, h
    sbc d
    ld d, h
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $deff
    nop
    or h
    ld d, h
    sub h
    dec b
    inc bc
    rst $38
    sbc $00
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    call nz, $9654
    dec b
    inc d
    rst $38
    call z, $9754
    dec b
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    jp z, $9954

    dec b
    inc d
    rst $38
    call z, $9554
    dec b
    inc d
    rst $38
    call z, $9854
    dec b
    ld e, d
    rst $38
    db $d3
    nop
    rlca
    rst $38
    sbc d
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld [bc], a
    nop
    dec b
    nop
    nop
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    inc b
    ld bc, $ff1c
    ld bc, $1915
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    rlca
    rst $38
    sbc e
    dec b
    inc e
    rst $38
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    ld b, $00
    ld c, b
    rst $38
    ld bc, $0800
    rst $38
    ld [de], a
    rst $38
    db $e3
    reti


    ld c, d
    nop
    inc bc
    rst $38
    dec hl
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld [hl], e
    reti


    ld bc, $1200
    rst $38
    sub c
    reti


    ld bc, $0000
    rst $38
    inc l
    nop
    ld [hl], b
    ld d, l
    ld [de], a
    rst $38
    ld [hl], e
    reti


    inc bc
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    add b
    ld d, l
    sub b
    ld d, l
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $dfff
    nop
    xor b
    ld d, l
    sbc h
    dec b
    inc bc
    rst $38
    rst $18
    nop
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    xor [hl]
    ld d, l
    sbc l
    dec b
    rst $38
    rst $38
    sbc a
    dec b
    inc d
    rst $38
    or b
    ld d, l
    sbc [hl]
    dec b
    ld e, d
    rst $38
    push de
    nop
    rlca
    rst $38
    and b
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld [bc], a
    nop
    dec b
    nop
    nop
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    ld [bc], a
    ld bc, $ff1c
    ld bc, $1915
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    nop
    nop
    rlca
    rst $38
    and c
    dec b
    inc e
    rst $38
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld bc, $4d00
    rst $38
    ld b, $00
    ld c, c
    rst $38
    ld bc, $0800
    rst $38
    ld [de], a
    rst $38
    db $e3
    reti


    ld c, e
    nop
    inc bc
    rst $38
    inc l
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld [hl], e
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    sub d
    reti


    ld bc, $0000
    rst $38
    dec hl
    nop
    ld d, h
    ld d, [hl]
    ld [de], a
    rst $38
    ld [hl], e
    reti


    inc bc
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld h, h
    ld d, [hl]
    ld [hl], h
    ld d, [hl]
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $e2ff
    nop
    adc [hl]
    ld d, [hl]
    and d
    dec b
    inc bc
    rst $38
    ld [c], a
    nop
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    sub h
    ld d, [hl]
    and h
    dec b
    inc d
    rst $38
    sub [hl]
    ld d, [hl]
    and l
    dec b
    inc d
    rst $38
    sub [hl]
    ld d, [hl]
    and e
    dec b
    ld e, d
    rst $38
    rst $10
    nop
    rlca
    rst $38
    and [hl]
    dec b
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    ld [bc], a
    dec c
    add hl, de
    rst $38
    add hl, bc
    rst $38
    stop
    dec c
    rst $38
    ld [bc], a
    nop
    dec b
    nop
    nop
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    inc bc
    ld [bc], a
    inc e
    rst $38
    ld bc, $1915
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    nop
    nop
    rlca
    rst $38
    and a
    dec b
    inc e
    rst $38
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld bc, $4d00
    rst $38
    ld b, $00
    ld c, c
    rst $38
    ld bc, $0800
    rst $38
    ld [de], a
    rst $38
    db $e3
    reti


    ld c, h
    nop
    inc bc
    rst $38
    dec l
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld a, [hl-]
    reti


    rlca
    nop
    ld [de], a
    rst $38
    sub e
    reti


    ld bc, $0000
    rst $38
    inc d
    nop
    ld b, h
    ld d, a
    ld [de], a
    rst $38
    ld a, [hl-]
    reti


    ld [$0600], sp
    rst $38
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld d, h
    ld d, a
    ld h, h
    ld d, a
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $e0ff
    nop
    sub h
    ld d, a
    xor b
    dec b
    inc bc
    rst $38
    ldh [rP1], a
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    ld a, [hl]
    ld d, a
    xor c
    dec b
    inc d
    rst $38
    ld [hl], b
    ld d, a
    xor d
    dec b
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    adc [hl]
    ld d, a
    xor e
    dec b
    inc d
    rst $38
    add b
    ld d, a
    xor h
    dec b
    inc d
    rst $38
    sub [hl]
    ld d, a
    xor l
    dec b
    ld e, d
    rst $38
    reti


    nop
    rlca
    rst $38
    xor [hl]
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld [bc], a
    nop
    dec b
    nop
    nop
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    inc b
    ld bc, $ff1c
    ld bc, $1915
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    rlca
    rst $38
    xor a
    dec b
    inc e
    rst $38
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    ld b, $00
    ld c, b
    rst $38
    ld bc, $0800
    rst $38
    ld [de], a
    rst $38
    db $e3
    reti


    ld c, l
    nop
    inc bc
    rst $38
    ld l, $00
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld c, h
    reti


    ld b, $00
    ld [de], a
    rst $38
    sub h
    reti


    ld bc, $0000
    rst $38
    ld e, $00
    ld a, [hl-]
    ld e, b
    ld [de], a
    rst $38
    ld c, h
    reti


    rlca
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld c, d
    ld e, b
    ld e, d
    ld e, b
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $e1ff
    nop
    ld l, h
    ld e, b
    or b
    dec b
    inc bc
    rst $38
    pop hl
    nop
    inc d
    rst $38
    ld l, [hl]
    ld e, b
    rst $38
    rst $38
    or c
    dec b
    ld e, d
    rst $38
    db $db
    nop
    rlca
    rst $38
    or d
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld [bc], a
    nop
    dec b
    nop
    nop
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    inc b
    inc bc
    inc e
    rst $38
    ld bc, $1915
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    nop
    nop
    rlca
    rst $38
    or e
    dec b
    inc e
    rst $38
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld bc, $4d00
    rst $38
    ld b, $00
    ld c, c
    rst $38
    ld bc, $0800
    rst $38
    ld [de], a
    rst $38
    db $e3
    reti


    ld c, [hl]
    nop
    inc bc
    rst $38
    cpl
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld e, b
    reti


    ld bc, $1200
    rst $38
    sub l
    reti


    ld bc, $0600
    rst $38
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    jr @+$5b

    jr z, jr_00f_596f

    ld a, [hl+]
    ld e, c
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, jr_00f_5987

    ld [hl-], a
    ld e, c
    rst $38
    rst $38
    add b
    ld b, $04
    rst $38
    nop
    nop
    add b
    ld b, $82
    ld b, $ff
    rst $38
    ld b, h
    ld e, c
    ld c, d
    ld e, c
    ld b, [hl]
    ld e, c
    rst $38
    rst $38
    ld c, b
    rst $38
    ld bc, $6400
    rst $38
    cp b
    ld e, c
    rst $38
    add hl, bc
    ld b, $ff
    ld b, c
    rst $38
    ld b, c
    nop
    ld b, [hl]
    rst $38
    ld [de], a
    rst $38
    sbc e
    ret z

    nop
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a

jr_00f_596f:
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    add hl, bc
    rst $38
    ld bc, $1200
    rst $38
    sbc e

jr_00f_5987:
    ret z

    dec l
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec [hl]
    rst $38
    ld d, $ff
    ld c, e
    rst $38
    rst $38
    rst $38
    or $09
    rst $38
    rst $38
    cp [hl]
    ld e, c
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    ld b, b
    nop
    dec d
    rst $38
    call $00d9
    nop
    ldh a, [$59]
    dec d
    rst $38
    call $01d9
    nop
    ld b, $5a
    dec d
    rst $38
    db $cd, $d9, $02
    nop
    ld c, $5a
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    dec d
    rst $38
    db $cd, $d9, $03
    nop
    ld d, $5a
    rst $38
    rst $38
    rlca
    rst $38
    dec d
    rst $38
    rst $08
    reti


    nop
    nop
    nop
    ld e, d
    di
    add hl, bc
    jr nz, @+$01

    rst $38
    rst $38
    cp $09
    jr nz, @+$01

    rst $38
    rst $38
    rlca
    rst $38
    db $fd
    add hl, bc
    jr nz, @+$01

    rst $38
    rst $38
    rlca
    rst $38
    db $fc
    add hl, bc
    jr nz, @+$01

    rst $38
    rst $38
    rlca
    rst $38
    dec d
    rst $38
    ret nc

    reti


    nop
    nop
    ld a, [hl+]
    ld e, d
    ld e, l
    rst $38
    pop af
    add hl, bc
    rst $28
    add hl, bc
    inc d
    rst $38
    inc l
    ld e, d
    pop af
    add hl, bc
    inc l
    rst $38
    ld c, b
    ld e, d
    ld e, h
    rst $38
    ldh a, [$09]
    dec d
    rst $38
    inc a
    ret z

    ld bc, $4800
    ld e, d
    ld b, $ff
    rrca
    rst $38
    ld d, d
    nop
    ld l, b
    nop
    ld l, b
    nop
    rst $38
    rst $38
    ld a, [c]
    add hl, bc
    ld b, $ff
    ld [de], a
    rst $38
    ld l, h
    ret


    ld bc, $1200
    rst $38
    ld l, l
    ret


    nop
    nop
    ld [de], a
    rst $38
    ld l, [hl]
    ret


    add b
    nop
    ld [de], a
    rst $38
    db $eb
    ret z

    jr nz, jr_00f_5a64

jr_00f_5a64:
    ld [de], a
    rst $38
    dec b
    ret


    nop
    nop
    rst $38
    rst $38
    ld [hl], d
    ld l, a
    ld [hl], d
    ld e, d
    ld [hl], h
    ld e, d
    rst $38
    rst $38
    inc e
    rst $38
    nop
    ld b, $19
    rst $38
    rst $38
    rst $38
    ld [hl], d
    ld l, a
    adc h
    ld e, d
    adc [hl]
    ld e, d
    ld [$465a], a
    ld e, e
    and d
    ld e, e
    cp $5b
    ld e, d
    ld e, h
    rst $38
    rst $38
    dec d
    rst $38
    rst $08
    reti


    nop
    nop
    ret z

    ld e, d
    ld hl, $53ff
    nop
    inc h
    rst $38
    ld [c], a
    ld e, d
    rlca
    rst $38
    dec d
    rst $38
    rst $08
    reti


    rst $38
    nop
    cp d
    ld e, d
    inc l
    rst $38
    call z, Call_000_375a
    rst $38
    nop
    nop
    ld a, [$1209]
    rst $38
    rst $08
    reti


    nop
    nop
    rst $38
    rst $38
    ld sp, hl
    add hl, bc
    ld b, $ff
    ld [hl], $ff
    ld [de], a
    rst $38
    rst $08
    reti


    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$09
    rst $38
    rst $38
    scf
    rst $38
    nop
    nop
    ld a, [$f409]
    add hl, bc
    inc h
    rst $38
    jp c, $ff5a

    rst $38
    add d
    nop
    jr nc, jr_00f_5b0f

    ret c

    inc [hl]
    dec [hl]
    reti


    add d
    nop
    ld [hl-], a
    inc sp
    ret c

    inc [hl]
    dec [hl]
    reti


    dec d
    rst $38
    ret nc

    reti


    nop
    nop
    inc h
    ld e, e
    ld hl, $53ff
    nop
    inc h
    rst $38
    ld a, $5b
    rlca
    rst $38
    dec d
    rst $38
    ret nc

    reti


    rst $38
    nop
    ld d, $5b
    inc l
    rst $38
    jr z, jr_00f_5b63

    scf
    rst $38
    ld bc, $fa00
    add hl, bc
    ld [de], a

jr_00f_5b0f:
    rst $38
    ret nc

    reti


    nop
    nop
    rst $38
    rst $38
    ld sp, hl
    add hl, bc
    ld b, $ff
    ld [hl], $ff
    ld [de], a
    rst $38
    ret nc

    reti


    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$09
    rst $38
    rst $38
    scf
    rst $38
    ld bc, $fa00
    add hl, bc
    db $f4
    add hl, bc
    inc h
    rst $38
    ld [hl], $5b
    rst $38
    rst $38
    sub b
    nop
    jr nc, jr_00f_5b6b

    ret c

    inc [hl]
    dec [hl]
    reti


    sub b
    nop
    ld [hl-], a
    inc sp
    ret c

    inc [hl]
    dec [hl]
    reti


    dec d
    rst $38
    pop de
    reti


    nop
    nop
    add b
    ld e, e
    ld hl, $53ff
    nop
    inc h
    rst $38
    sbc d
    ld e, e
    rlca
    rst $38
    dec d
    rst $38
    pop de
    reti


    rst $38
    nop
    ld [hl], d
    ld e, e
    inc l
    rst $38
    add h

jr_00f_5b63:
    ld e, e
    scf
    rst $38
    ld [bc], a
    nop
    ld a, [$1209]

jr_00f_5b6b:
    rst $38
    pop de
    reti


    nop
    nop
    rst $38
    rst $38
    ld sp, hl
    add hl, bc
    ld b, $ff
    ld [hl], $ff
    ld [de], a
    rst $38
    pop de
    reti


    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$09
    rst $38
    rst $38
    scf
    rst $38
    ld [bc], a
    nop
    ld a, [$f409]
    add hl, bc
    inc h
    rst $38
    sub d
    ld e, e
    rst $38
    rst $38
    add $00
    jr nc, jr_00f_5bc7

    ret c

    inc [hl]
    dec [hl]
    reti


    add $00
    ld [hl-], a
    inc sp
    ret c

    inc [hl]
    dec [hl]
    reti


    dec d
    rst $38
    jp nc, $00d9

    nop
    call c, Call_000_215b
    rst $38
    ld d, e
    nop
    inc h
    rst $38
    or $5b
    rlca
    rst $38
    dec d
    rst $38
    jp nc, $ffd9

    nop
    adc $5b
    inc l
    rst $38
    ldh [$5b], a
    scf
    rst $38
    inc bc
    nop
    ld a, [$1209]

jr_00f_5bc7:
    rst $38
    jp nc, $00d9

    nop
    rst $38
    rst $38
    ld sp, hl
    add hl, bc
    ld b, $ff
    ld [hl], $ff
    ld [de], a
    rst $38
    jp nc, $00d9

    nop
    rst $38
    rst $38
    ld hl, sp+$09
    rst $38
    rst $38
    scf
    rst $38
    inc bc
    nop
    ld a, [$f409]
    add hl, bc
    inc h
    rst $38
    xor $5b
    rst $38
    rst $38
    call z, Call_000_3000
    ld sp, $34d8
    dec [hl]
    reti


    call z, Call_000_3200
    inc sp
    ret c

    inc [hl]
    dec [hl]
    reti


    dec d
    rst $38
    db $d3
    reti


    nop
    nop
    jr c, jr_00f_5c62

    ld hl, $53ff
    nop
    inc h
    rst $38
    ld d, d
    ld e, h
    rlca
    rst $38
    dec d
    rst $38
    db $d3
    reti


    rst $38
    nop
    ld a, [hl+]
    ld e, h
    inc l
    rst $38
    inc a
    ld e, h
    scf
    rst $38
    inc b
    nop
    ld a, [$1209]
    rst $38
    db $d3
    reti


    nop
    nop
    rst $38
    rst $38
    ld sp, hl
    add hl, bc
    ld b, $ff
    ld [hl], $ff
    ld [de], a
    rst $38
    db $d3
    reti


    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$09
    rst $38
    rst $38
    scf
    rst $38
    inc b
    nop
    ld a, [$f409]
    add hl, bc
    inc h
    rst $38
    ld c, d
    ld e, h
    rst $38
    rst $38
    ld b, h
    ld bc, $3130
    ret c

    inc [hl]
    dec [hl]
    reti


    ld b, h
    ld bc, $3332
    ret c

    inc [hl]
    dec [hl]
    reti


    dec d
    rst $38
    call nc, $00d9
    nop
    sub h
    ld e, h

jr_00f_5c62:
    ld hl, $53ff
    nop
    inc h
    rst $38
    xor [hl]
    ld e, h
    rlca
    rst $38
    dec d
    rst $38
    call nc, $ffd9
    nop
    add [hl]
    ld e, h
    inc l
    rst $38
    sbc b
    ld e, h
    scf
    rst $38
    dec b
    nop
    ld a, [$1209]
    rst $38
    call nc, $00d9
    nop
    rst $38
    rst $38
    ld sp, hl
    add hl, bc
    ld b, $ff
    ld [hl], $ff
    ld [de], a
    rst $38
    call nc, $00d9
    nop
    rst $38
    rst $38
    ld hl, sp+$09
    rst $38
    rst $38
    scf
    rst $38
    dec b
    nop
    ld a, [$f409]
    add hl, bc
    inc h
    rst $38
    and [hl]
    ld e, h
    rst $38
    rst $38
    ld c, [hl]
    ld bc, $3130
    ret c

    inc [hl]
    dec [hl]
    reti


    ld c, [hl]
    ld bc, $3332
    ret c

    inc [hl]
    dec [hl]
    reti


    call nz, $c65c
    ld e, h
    ld [hl+], a
    ld e, l
    ld a, [hl]
    ld e, l
    jp c, Jump_000_365d

    ld e, [hl]
    sub d
    ld e, [hl]
    rst $38
    rst $38
    dec d
    rst $38
    rst $08
    reti


    nop
    nop
    nop
    ld e, l
    ld hl, $53ff
    nop
    inc h
    rst $38
    ld a, [de]
    ld e, l
    rlca
    rst $38
    dec d
    rst $38
    rst $08
    reti


    rst $38
    nop
    ld a, [c]
    ld e, h
    inc l
    rst $38
    inc b
    ld e, l
    scf
    rst $38
    nop
    nop
    ld a, [$1209]
    rst $38
    rst $08
    reti


    nop
    nop
    rst $38
    rst $38
    ld sp, hl
    add hl, bc
    ld b, $ff
    ld [hl], $ff
    ld [de], a
    rst $38
    rst $08
    reti


    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$09
    rst $38
    rst $38
    scf
    rst $38
    nop
    nop
    ld a, [$f409]
    add hl, bc
    inc h
    rst $38
    ld [de], a
    ld e, l
    rst $38
    rst $38
    add $00
    jr nc, jr_00f_5d47

    ret c

    inc [hl]
    dec [hl]
    reti


    add $00
    ld [hl-], a
    inc sp
    ret c

    inc [hl]
    dec [hl]
    reti


    dec d
    rst $38
    ret nc

    reti


    nop
    nop
    ld e, h
    ld e, l
    ld hl, $53ff
    nop
    inc h
    rst $38
    db $76
    ld e, l
    rlca
    rst $38
    dec d
    rst $38
    ret nc

    reti


    rst $38
    nop
    ld c, [hl]
    ld e, l
    inc l
    rst $38
    ld h, b
    ld e, l
    scf
    rst $38
    ld bc, $fa00
    add hl, bc
    ld [de], a

jr_00f_5d47:
    rst $38
    ret nc

    reti


    nop
    nop
    rst $38
    rst $38
    ld sp, hl
    add hl, bc
    ld b, $ff
    ld [hl], $ff
    ld [de], a
    rst $38
    ret nc

    reti


    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$09
    rst $38
    rst $38
    scf
    rst $38
    ld bc, $fa00
    add hl, bc
    db $f4
    add hl, bc
    inc h
    rst $38
    ld l, [hl]
    ld e, l
    rst $38
    rst $38
    call z, Call_000_3000
    ld sp, $34d8
    dec [hl]
    reti


    call z, Call_000_3200
    inc sp
    ret c

    inc [hl]
    dec [hl]
    reti


    dec d
    rst $38
    pop de
    reti


    nop
    nop
    cp b
    ld e, l
    ld hl, $53ff
    nop
    inc h
    rst $38
    jp nc, Jump_000_075d

    rst $38
    dec d
    rst $38
    pop de
    reti


    rst $38
    nop
    xor d
    ld e, l
    inc l
    rst $38
    cp h
    ld e, l
    scf
    rst $38
    ld [bc], a
    nop
    ld a, [$1209]
    rst $38
    pop de
    reti


    nop
    nop
    rst $38
    rst $38
    ld sp, hl
    add hl, bc
    ld b, $ff
    ld [hl], $ff
    ld [de], a
    rst $38
    pop de
    reti


    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$09
    rst $38
    rst $38
    scf
    rst $38
    ld [bc], a
    nop
    ld a, [$f409]
    add hl, bc
    inc h
    rst $38
    jp z, $ff5d

    rst $38
    ld b, $01
    jr nc, jr_00f_5dff

    ret c

    inc [hl]
    dec [hl]
    reti


    ld b, $01
    ld [hl-], a
    inc sp
    ret c

    inc [hl]
    dec [hl]
    reti


    dec d
    rst $38
    jp nc, $00d9

    nop
    inc d
    ld e, [hl]
    ld hl, $53ff
    nop
    inc h
    rst $38
    ld l, $5e
    rlca
    rst $38
    dec d
    rst $38
    jp nc, $ffd9

    nop
    ld b, $5e
    inc l
    rst $38
    jr jr_00f_5e56

    scf
    rst $38
    inc bc
    nop
    ld a, [$1209]

jr_00f_5dff:
    rst $38
    jp nc, $00d9

    nop
    rst $38
    rst $38
    ld sp, hl
    add hl, bc
    ld b, $ff
    ld [hl], $ff
    ld [de], a
    rst $38
    jp nc, $00d9

    nop
    rst $38
    rst $38
    ld hl, sp+$09
    rst $38
    rst $38
    scf
    rst $38
    inc bc
    nop
    ld a, [$f409]
    add hl, bc
    inc h
    rst $38
    ld h, $5e
    rst $38
    rst $38
    inc c
    ld bc, $3130
    ret c

    inc [hl]
    dec [hl]
    reti


    inc c
    ld bc, $3332
    ret c

    inc [hl]
    dec [hl]
    reti


    dec d
    rst $38
    db $d3
    reti


    nop
    nop
    ld [hl], b
    ld e, [hl]
    ld hl, $53ff
    nop
    inc h
    rst $38
    adc d
    ld e, [hl]
    rlca
    rst $38
    dec d
    rst $38
    db $d3
    reti


    rst $38
    nop
    ld h, d
    ld e, [hl]
    inc l
    rst $38
    ld [hl], h
    ld e, [hl]
    scf
    rst $38

jr_00f_5e56:
    inc b
    nop
    ld a, [$1209]
    rst $38
    db $d3
    reti


    nop
    nop
    rst $38
    rst $38
    ld sp, hl
    add hl, bc
    ld b, $ff
    ld [hl], $ff
    ld [de], a
    rst $38
    db $d3
    reti


    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$09
    rst $38
    rst $38
    scf
    rst $38
    inc b
    nop
    ld a, [$f409]
    add hl, bc
    inc h
    rst $38
    add d
    ld e, [hl]
    rst $38
    rst $38
    ld b, [hl]
    ld bc, $3130
    ret c

    inc [hl]
    dec [hl]
    reti


    ld b, [hl]
    ld bc, $3332
    ret c

    inc [hl]
    dec [hl]
    reti


    dec d
    rst $38
    call nc, $00d9
    nop
    call z, Call_000_215e
    rst $38
    ld d, e
    nop
    inc h
    rst $38
    and $5e
    rlca
    rst $38
    dec d
    rst $38
    call nc, $ffd9
    nop
    cp [hl]
    ld e, [hl]
    inc l
    rst $38
    ret nc

    ld e, [hl]
    scf
    rst $38
    dec b
    nop
    ld a, [$1209]
    rst $38
    call nc, $00d9
    nop
    rst $38
    rst $38
    ld sp, hl
    add hl, bc
    ld b, $ff
    ld [hl], $ff
    ld [de], a
    rst $38
    call nc, $00d9
    nop
    rst $38
    rst $38
    ld hl, sp+$09
    rst $38
    rst $38
    scf
    rst $38
    dec b
    nop
    ld a, [$f409]
    add hl, bc
    inc h
    rst $38
    sbc $5e
    rst $38
    rst $38
    ld c, h
    ld bc, $3130
    ret c

    inc [hl]
    dec [hl]
    reti


    ld c, h
    ld bc, $3332
    ret c

    inc [hl]
    dec [hl]
    reti


    nop
    ld e, a
    ld [bc], a
    ld e, a
    ld e, [hl]
    ld e, a
    cp d
    ld e, a
    ld d, $60
    ld [hl], d
    ld h, b
    adc $60
    ld a, [hl+]
    ld h, c
    add [hl]
    ld h, c
    rst $38
    rst $38
    dec d
    rst $38
    rst $08
    reti


    nop
    nop
    inc a
    ld e, a
    ld hl, $53ff
    nop
    inc h
    rst $38
    ld d, [hl]
    ld e, a
    rlca
    rst $38
    dec d
    rst $38
    rst $08
    reti


    rst $38
    nop
    ld l, $5f
    inc l
    rst $38
    ld b, b
    ld e, a
    scf
    rst $38
    nop
    nop
    ld a, [$1209]
    rst $38
    rst $08
    reti


    nop
    nop
    rst $38
    rst $38
    ld sp, hl
    add hl, bc
    ld b, $ff
    ld [hl], $ff
    ld [de], a
    rst $38
    rst $08
    reti


    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$09
    rst $38
    rst $38
    scf
    rst $38
    nop
    nop
    ld a, [$f409]
    add hl, bc
    inc h
    rst $38
    ld c, [hl]
    ld e, a
    rst $38
    rst $38
    add [hl]
    nop
    jr nc, jr_00f_5f83

    ret c

    inc [hl]
    dec [hl]
    reti


    add [hl]
    nop
    ld [hl-], a
    inc sp
    ret c

    inc [hl]
    dec [hl]
    reti


    dec d
    rst $38
    ret nc

    reti


    nop
    nop
    sbc b
    ld e, a
    ld hl, $53ff
    nop
    inc h
    rst $38
    or d
    ld e, a
    rlca
    rst $38
    dec d
    rst $38
    ret nc

    reti


    rst $38
    nop
    adc d
    ld e, a
    inc l
    rst $38
    sbc h
    ld e, a
    scf
    rst $38
    ld bc, $fa00
    add hl, bc
    ld [de], a

jr_00f_5f83:
    rst $38
    ret nc

    reti


    nop
    nop
    rst $38
    rst $38
    ld sp, hl
    add hl, bc
    ld b, $ff
    ld [hl], $ff
    ld [de], a
    rst $38
    ret nc

    reti


    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$09
    rst $38
    rst $38
    scf
    rst $38
    ld bc, $fa00
    add hl, bc
    db $f4
    add hl, bc
    inc h
    rst $38
    xor d
    ld e, a
    rst $38
    rst $38
    adc b
    nop
    jr nc, jr_00f_5fdf

    ret c

    inc [hl]
    dec [hl]
    reti


    adc b
    nop
    ld [hl-], a
    inc sp
    ret c

    inc [hl]
    dec [hl]
    reti


    dec d
    rst $38
    pop de
    reti


    nop
    nop
    db $f4
    ld e, a
    ld hl, $53ff
    nop
    inc h
    rst $38
    ld c, $60
    rlca
    rst $38
    dec d
    rst $38
    pop de
    reti


    rst $38
    nop
    and $5f
    inc l
    rst $38
    ld hl, sp+$5f
    scf
    rst $38
    ld [bc], a
    nop
    ld a, [$1209]

jr_00f_5fdf:
    rst $38
    pop de
    reti


    nop
    nop
    rst $38
    rst $38
    ld sp, hl
    add hl, bc
    ld b, $ff
    ld [hl], $ff
    ld [de], a
    rst $38
    pop de
    reti


    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$09
    rst $38
    rst $38
    scf
    rst $38
    ld [bc], a
    nop
    ld a, [$f409]
    add hl, bc
    inc h
    rst $38
    ld b, $60
    rst $38
    rst $38
    adc d
    nop
    jr nc, jr_00f_603b

    ret c

    inc [hl]
    dec [hl]
    reti


    adc d
    nop
    ld [hl-], a
    inc sp
    ret c

    inc [hl]
    dec [hl]
    reti


    dec d
    rst $38
    jp nc, $00d9

    nop
    ld d, b
    ld h, b
    ld hl, $53ff
    nop
    inc h
    rst $38
    ld l, d
    ld h, b
    rlca
    rst $38
    dec d
    rst $38
    jp nc, $ffd9

    nop
    ld b, d
    ld h, b
    inc l
    rst $38
    ld d, h
    ld h, b
    scf
    rst $38
    inc bc
    nop
    ld a, [$1209]

jr_00f_603b:
    rst $38
    jp nc, $00d9

    nop
    rst $38
    rst $38
    ld sp, hl
    add hl, bc
    ld b, $ff
    ld [hl], $ff
    ld [de], a
    rst $38
    jp nc, $00d9

    nop
    rst $38
    rst $38
    ld hl, sp+$09
    rst $38
    rst $38
    scf
    rst $38
    inc bc
    nop
    ld a, [$f409]
    add hl, bc
    inc h
    rst $38
    ld h, d
    ld h, b
    rst $38
    rst $38
    adc h
    nop
    jr nc, jr_00f_6097

    ret c

    inc [hl]
    dec [hl]
    reti


    adc h
    nop
    ld [hl-], a
    inc sp
    ret c

    inc [hl]
    dec [hl]
    reti


    dec d
    rst $38
    db $d3
    reti


    nop
    nop
    xor h
    ld h, b
    ld hl, $53ff
    nop
    inc h
    rst $38
    add $60
    rlca
    rst $38
    dec d
    rst $38
    db $d3
    reti


    rst $38
    nop
    sbc [hl]
    ld h, b
    inc l
    rst $38
    or b
    ld h, b
    scf
    rst $38
    inc b
    nop
    ld a, [$1209]

jr_00f_6097:
    rst $38
    db $d3
    reti


    nop
    nop
    rst $38
    rst $38
    ld sp, hl
    add hl, bc
    ld b, $ff
    ld [hl], $ff
    ld [de], a
    rst $38
    db $d3
    reti


    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$09
    rst $38
    rst $38
    scf
    rst $38
    inc b
    nop
    ld a, [$f409]
    add hl, bc
    inc h
    rst $38
    cp [hl]
    ld h, b
    rst $38
    rst $38
    add [hl]
    ld bc, $3130
    ret c

    inc [hl]
    dec [hl]
    reti


    add [hl]
    ld bc, $3332
    ret c

    inc [hl]
    dec [hl]
    reti


    dec d
    rst $38
    call nc, $00d9
    nop
    ld [$2161], sp
    rst $38
    ld d, e
    nop
    inc h
    rst $38
    ld [hl+], a
    ld h, c
    rlca
    rst $38
    dec d
    rst $38
    call nc, $ffd9
    nop
    ld a, [$2c60]
    rst $38
    inc c
    ld h, c
    scf
    rst $38
    dec b
    nop
    ld a, [$1209]
    rst $38
    call nc, $00d9
    nop
    rst $38
    rst $38
    ld sp, hl
    add hl, bc
    ld b, $ff
    ld [hl], $ff
    ld [de], a
    rst $38
    call nc, $00d9
    nop
    rst $38
    rst $38
    ld hl, sp+$09
    rst $38
    rst $38
    scf
    rst $38
    dec b
    nop
    ld a, [$f409]
    add hl, bc
    inc h
    rst $38
    ld a, [de]
    ld h, c
    rst $38
    rst $38
    adc b
    ld bc, $3130
    ret c

    inc [hl]
    dec [hl]
    reti


    adc b
    ld bc, $3332
    ret c

    inc [hl]
    dec [hl]
    reti


    dec d
    rst $38
    push de
    reti


    nop
    nop
    ld h, h
    ld h, c
    ld hl, $53ff
    nop
    inc h
    rst $38
    ld a, [hl]
    ld h, c
    rlca
    rst $38
    dec d
    rst $38
    push de
    reti


    rst $38
    nop
    ld d, [hl]
    ld h, c
    inc l
    rst $38
    ld l, b
    ld h, c
    scf
    rst $38
    ld b, $00
    ld a, [$1209]
    rst $38
    push de
    reti


    nop
    nop
    rst $38
    rst $38
    ld sp, hl
    add hl, bc
    ld b, $ff
    ld [hl], $ff
    ld [de], a
    rst $38
    push de
    reti


    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$09
    rst $38
    rst $38
    scf
    rst $38
    ld b, $00
    ld a, [$f409]
    add hl, bc
    inc h
    rst $38
    db $76
    ld h, c
    rst $38
    rst $38
    adc d
    ld bc, $3130
    ret c

    inc [hl]
    dec [hl]
    reti


    adc d
    ld bc, $3332
    ret c

    inc [hl]
    dec [hl]
    reti


    dec d
    rst $38
    sub $d9
    nop
    nop
    ret nz

    ld h, c
    ld hl, $53ff
    nop
    inc h
    rst $38
    jp c, $0761

    rst $38
    dec d
    rst $38
    sub $d9
    rst $38
    nop
    or d
    ld h, c
    inc l
    rst $38
    call nz, $3761
    rst $38
    rlca
    nop
    ld a, [$1209]
    rst $38
    sub $d9
    nop
    nop
    rst $38
    rst $38
    ld sp, hl
    add hl, bc
    ld b, $ff
    ld [hl], $ff
    ld [de], a
    rst $38
    sub $d9
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$09
    rst $38
    rst $38
    scf
    rst $38
    rlca
    nop
    ld a, [$f409]
    add hl, bc
    inc h
    rst $38
    jp nc, $ff61

    rst $38
    adc h
    ld bc, $3130
    ret c

    inc [hl]
    dec [hl]
    reti


    adc h
    ld bc, $3332
    ret c

    inc [hl]
    dec [hl]
    reti


    db $e4
    ld h, c
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    ld b, b
    nop
    dec d
    rst $38
    adc $d9
    add hl, bc
    nop
    ld h, h
    ld l, d
    dec d
    rst $38
    adc $d9
    ld [$cc00], sp
    ld h, h
    ld [de], a
    rst $38
    db $ed
    ret z

    nop
    nop
    dec d
    rst $38
    call $00d9
    nop
    ldh [$62], a
    dec d
    rst $38
    call $01d9
    nop
    add $62
    dec d
    rst $38
    db $cd, $d9, $02
    nop
    ld c, b
    ld h, d
    dec d
    rst $38
    db $cd, $d9, $03
    nop
    inc h
    ld h, d
    rst $38
    rst $38
    ld b, c
    rst $38
    scf
    nop
    rlca
    rst $38
    ld h, $01
    ld b, $ff
    ld b, [hl]
    rst $38
    ld b, c
    rst $38
    ld h, c
    nop
    add hl, bc
    rst $38
    ld [$1200], sp
    rst $38
    call $fed9
    nop
    rrca
    rst $38
    ld b, $00
    add sp, $00
    ld c, b
    nop
    rst $38
    rst $38
    ld b, c
    rst $38
    ld a, [hl-]
    nop
    rlca
    rst $38
    inc h
    ld bc, $ff15
    adc $d9
    rlca
    nop
    or d
    ld h, d
    dec d
    rst $38
    adc $d9
    ld b, $00
    xor h
    ld h, d
    dec d
    rst $38
    adc $d9
    dec b
    nop
    and [hl]
    ld h, d
    dec d
    rst $38
    adc $d9
    inc b
    nop
    and b
    ld h, d
    dec d
    rst $38
    adc $d9
    inc bc
    nop
    sbc d
    ld h, d
    dec d
    rst $38
    adc $d9
    ld [bc], a
    nop
    sub h
    ld h, d
    dec d
    rst $38
    adc $d9
    ld bc, $8e00
    ld h, d
    ld e, e
    ld [$ff14], sp
    or h
    ld h, d
    ld e, h
    ld [$ff14], sp
    or h
    ld h, d
    ld e, a
    ld [$ff14], sp
    or h
    ld h, d
    ld e, [hl]
    ld [$ff14], sp
    or h
    ld h, d
    ld e, a
    ld [$ff14], sp
    or h
    ld h, d
    ld h, b
    ld [$ff14], sp
    or h
    ld h, d
    ld h, c
    ld [$ff14], sp
    or h
    ld h, d
    ld h, d
    ld [$ff06], sp
    ld b, [hl]
    rst $38
    ld b, c
    rst $38
    ld h, c
    nop
    ld [de], a
    rst $38
    db $cd, $d9, $03
    nop
    inc d
    rst $38
    db $ec
    ld h, d
    ld b, c
    rst $38
    ld a, [hl-]
    nop
    rlca
    rst $38
    ld [hl+], a
    ld bc, $ff06
    ld b, [hl]
    rst $38
    ld b, c
    rst $38
    ld h, c
    nop
    ld [de], a
    rst $38
    db $cd, $d9, $02
    nop
    inc d
    rst $38
    db $ec
    ld h, d
    rlca
    rst $38
    jr nz, @+$03

    ld b, $ff
    ld [de], a
    rst $38
    call $01d9
    nop
    dec de
    rst $38
    ld bc, $c000
    rst $38
    dec de
    rst $38
    ld [bc], a
    nop
    ret nz

    rst $38
    dec de
    rst $38
    inc bc
    nop
    ret nz

    rst $38
    dec de
    rst $38
    inc b
    nop
    ret nz

    rst $38
    add hl, de
    rst $38
    ld a, [de]
    rst $38
    ld bc, $f000
    rst $38
    dec de
    rst $38
    ld [bc], a
    nop
    ldh a, [rIE]
    dec de
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    dec de
    rst $38
    inc b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld a, [de]
    rst $38
    ld bc, $f000
    rst $38
    ld a, [de]
    rst $38
    ld [bc], a
    nop
    ldh a, [rIE]
    dec de
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    dec de
    rst $38
    inc b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    dec de
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld a, [de]
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    ld a, [de]
    rst $38
    inc b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld c, d
    rst $38
    ld bc, $4a00
    rst $38
    ld [bc], a
    nop
    ld c, d
    rst $38
    inc bc
    nop
    ld c, d
    rst $38
    inc b
    nop
    add hl, bc
    rst $38
    ld [$0700], sp
    rst $38
    dec d
    rst $38
    db $cd, $d9, $03
    nop
    ld a, b
    ld h, e
    ld hl, $0301
    rst $38
    ld hl, $1401
    rst $38
    sbc h
    ld h, h
    nop
    rst $38
    sbc c
    nop
    add [hl]
    ld h, e
    dec d
    rst $38
    adc $d9
    rlca
    nop
    sbc d
    ld h, h
    dec d
    rst $38
    adc $d9
    rlca
    nop
    sub b
    ld h, h
    nop
    rst $38
    sub h
    nop
    sbc h
    ld h, e
    dec d
    rst $38
    adc $d9
    ld b, $00
    adc d
    ld h, h
    dec d
    rst $38
    adc $d9
    ld b, $00
    add b
    ld h, h
    nop
    rst $38
    ld [hl+], a
    ld bc, $63b2
    dec d
    rst $38
    adc $d9
    dec b
    nop
    ld a, d
    ld h, h
    dec d
    rst $38
    adc $d9
    dec b
    nop
    ld [hl], b
    ld h, h
    nop
    rst $38
    adc c
    nop
    ret z

    ld h, e
    dec d
    rst $38
    adc $d9
    inc b
    nop
    ld l, d
    ld h, h
    dec d
    rst $38
    adc $d9
    inc b
    nop
    ld h, b
    ld h, h
    nop
    rst $38
    ld l, b
    nop
    sbc $63
    dec d
    rst $38
    adc $d9
    inc bc
    nop
    ld e, d
    ld h, h
    nop
    rst $38
    ld h, a
    nop
    db $ec
    ld h, e
    dec d
    rst $38
    adc $d9
    inc bc
    nop
    ld d, b
    ld h, h
    dec d
    rst $38
    adc $d9
    inc bc
    nop
    ld b, [hl]
    ld h, h
    nop
    rst $38
    ld c, b
    nop
    ld [bc], a
    ld h, h
    dec d
    rst $38
    adc $d9
    ld [bc], a
    nop
    ld b, b
    ld h, h
    dec d
    rst $38
    adc $d9
    ld [bc], a
    nop
    ld [hl], $64
    nop
    rst $38
    ld b, h
    nop
    jr jr_00f_6474

    dec d
    rst $38
    adc $d9
    ld bc, $3000
    ld h, h
    dec d
    rst $38
    adc $d9
    ld bc, $2600
    ld h, h
    dec h
    ld bc, $ff14
    sbc h
    ld h, h
    and d
    ld bc, $ff03
    ld b, h
    nop
    inc d
    rst $38
    sbc h
    ld h, h
    and e
    ld bc, $ff14
    sbc h
    ld h, h
    ld [c], a
    ld bc, $ff03
    ld c, b
    nop
    inc d
    rst $38
    sbc h
    ld h, h
    db $e3
    ld bc, $ff14
    sbc h
    ld h, h
    ld l, a
    ld [bc], a
    inc bc
    rst $38
    ld l, b
    nop
    inc d
    rst $38
    sbc h
    ld h, h
    ld [hl], b
    ld [bc], a
    inc bc
    rst $38
    ld l, b
    nop
    inc d
    rst $38
    sbc h
    ld h, h
    ld [hl], c
    ld [bc], a
    inc d
    rst $38
    sbc h
    ld h, h
    jr nc, jr_00f_6465

    inc bc
    rst $38
    adc c

jr_00f_6465:
    nop
    inc d
    rst $38
    sbc h
    ld h, h
    ld sp, $1403
    rst $38
    sbc h
    ld h, h
    ld e, [hl]
    inc bc
    inc bc
    rst $38

jr_00f_6474:
    ld [hl+], a
    ld bc, $ff14
    sbc h
    ld h, h
    ld e, a
    inc bc
    inc d
    rst $38
    sbc h
    ld h, h
    sbc $03
    inc bc
    rst $38
    sub h
    nop
    inc d
    rst $38
    sbc h
    ld h, h
    rst $18
    inc bc
    inc d
    rst $38
    sbc h
    ld h, h
    add hl, bc
    inc b
    inc bc
    rst $38
    sbc c
    nop
    inc d
    rst $38
    sbc h
    ld h, h
    ld a, [bc]
    inc b
    ld b, $ff
    ld a, [de]
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    ld a, [de]
    rst $38
    inc b
    nop
    stop
    ld a, [de]
    rst $38
    ld b, $00
    ldh a, [rIE]
    ld a, [de]
    rst $38
    rlca
    nop
    ldh a, [rIE]
    ld a, [bc]
    rst $38
    ld [$f000], sp
    rst $38
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld [$2000], sp
    rst $38
    rst $38
    rst $38
    dec d
    rst $38
    call $00d9
    nop
    sbc b
    ld l, c
    dec d
    rst $38
    call $01d9
    nop
    ld a, [hl]
    ld l, c
    dec d
    rst $38
    db $cd, $d9, $02
    nop
    ld a, [de]
    ld h, a
    dec d
    rst $38
    db $cd, $d9, $03
    nop
    xor $64
    rst $38
    rst $38
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld [de], a
    rst $38
    db $ed
    ret z

    ld c, $00
    ld c, c
    rst $38
    nop
    nop
    rlca
    rst $38
    jp hl


    inc b
    ld b, c
    rst $38
    inc a
    nop
    ld b, [hl]
    rst $38
    ld b, c
    rst $38
    ld h, c
    nop
    add hl, bc
    rst $38
    stop
    dec c
    rst $38
    rlca
    nop
    nop
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    ld b, $04
    ld [hl+], a
    rst $38
    inc e
    rst $38
    rlca
    dec d
    add hl, de
    rst $38
    ld b, c
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld bc, $1c00
    rst $38
    rlca
    inc b
    add hl, de
    rst $38
    ld [de], a
    rst $38
    sbc e
    ret z

    nop
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    nop
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    ld b, b
    nop
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    ld b, b
    nop
    ld c, l
    rst $38
    ld b, $00
    ld hl, $6cff
    nop
    add hl, bc
    rst $38
    ld bc, $0700
    rst $38
    ld [$0a04], a
    rst $38
    rlca
    nop
    ldh a, [rIE]
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    dec b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld c, b
    rst $38
    dec b
    nop
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ret nc

    rst $38
    add hl, de
    rst $38
    ld hl, $65ff
    nop
    ld [de], a
    rst $38
    sbc e
    ret z

    nop
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    nop
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    nop
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    ld c, b
    rst $38
    rlca
    nop
    add hl, bc
    rst $38
    ld [$2100], sp
    rst $38
    ld d, a
    nop
    ld c, c
    rst $38
    ld bc, $1d00
    rst $38
    dec de
    rst $38
    rlca
    nop
    ldh a, [rIE]
    ld a, [de]
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    ld e, $ff
    ld hl, $57ff
    nop
    ld c, b
    rst $38
    ld bc, $1d00
    rst $38
    dec de
    rst $38
    rlca
    nop
    ldh a, [rIE]
    dec de
    rst $38
    ld bc, $f000
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld e, $ff
    ld b, a
    rst $38
    nop
    nop
    dec e
    rst $38
    dec de
    rst $38
    rlca
    nop
    ldh a, [rIE]
    dec de
    rst $38
    ld bc, $f000
    rst $38
    dec de
    rst $38
    nop
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    rlca
    nop
    ret c

    rst $38
    dec de
    rst $38
    ld bc, $d800
    rst $38
    add hl, de
    rst $38
    dec c
    rst $38
    rlca
    nop
    nop
    nop
    ld b, b
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $f000
    rst $38
    add hl, de
    rst $38
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    ld e, $ff
    inc e
    rst $38
    nop
    inc b
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    nop
    ld bc, $ff19
    inc e
    rst $38
    nop
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [$0300], sp
    rst $38
    db $e4
    nop
    ld [de], a
    rst $38
    ccf
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    ld b, b
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld b, c
    reti


    inc b
    nop
    ld [de], a
    rst $38
    ld b, d
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    ld b, e
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld b, h
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    ld d, d
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld [hl], h
    reti


    ld [bc], a
    nop
    ld [$12ff], sp
    rst $38
    adc d
    ret z

    inc bc
    nop
    ld [de], a
    rst $38
    adc e
    ret z

    ld bc, $3e00
    rst $38
    rst $38
    rst $38
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld [de], a
    rst $38
    db $ed
    ret z

    ld c, $00
    ld c, c
    rst $38
    nop
    nop
    ld [de], a
    rst $38
    db $cd, $d9, $03
    nop
    rlca
    rst $38
    db $e3
    inc b
    ld b, $ff
    ld b, c
    rst $38
    scf
    nop
    ld b, [hl]
    rst $38
    ld b, c
    rst $38
    ld h, c
    nop
    ld c, d
    rst $38
    dec b
    nop
    ld c, d
    rst $38
    ld b, $00
    ld c, d
    rst $38
    rlca
    nop
    ld c, d
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc c
    nop
    ld b, a
    rst $38
    dec b
    nop
    ld b, a
    rst $38
    ld b, $00
    ld b, a
    rst $38
    rlca
    nop
    ld b, a
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc c
    nop
    ld c, c
    rst $38
    dec b
    nop
    ld c, c
    rst $38
    ld b, $00
    ld c, c
    rst $38
    rlca
    nop
    ld c, c
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc c
    nop
    add hl, bc
    rst $38
    inc b
    nop
    rlca
    rst $38
    db $e4
    inc b
    ld b, $ff
    ld b, c
    rst $38
    ld h, c
    nop
    inc e
    rst $38
    nop
    inc b
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, d
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc bc
    nop
    ld b, a
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc bc
    nop
    ld c, b
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc bc
    nop
    ld c, c
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld b, c
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld hl, $65ff
    nop
    ld [de], a
    rst $38
    sbc e
    ret z

    nop
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    nop
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    nop
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    ld hl, $6cff
    nop
    dec c
    rst $38
    ld [$0000], sp
    nop
    nop
    nop
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    dec c
    rst $38
    ld [$0000], sp
    nop
    ld b, b
    nop
    ld [$0dff], sp
    rst $38
    ld bc, $0500
    nop
    add b
    nop
    add hl, bc
    rst $38
    ld [$4100], sp
    rst $38
    ld h, c
    nop
    add hl, bc
    rst $38
    stop
    dec c
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    ld [$4aff], sp
    rst $38
    ld bc, $0900
    rst $38
    inc b
    nop
    add hl, bc
    rst $38
    inc b
    nop
    rlca
    rst $38
    ld bc, $58ff
    ld bc, $68a0
    push hl
    inc b
    inc bc
    rst $38
    ld e, b
    ld bc, $ff14
    and d
    ld l, b
    and $04
    add hl, bc
    rst $38
    inc b
    nop
    dec e
    rst $38
    ld a, [de]
    rst $38
    ld bc, $f000
    rst $38
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    ld a, [de]
    rst $38
    ld bc, $f000
    rst $38
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    ld e, $ff
    dec c
    rst $38
    ld [$1800], sp
    nop
    jr c, jr_00f_68ca

jr_00f_68ca:
    dec c
    rst $38
    ld [$1a00], sp
    nop
    ld l, b
    nop
    ld hl, $6cff
    nop
    dec c
    rst $38
    ld [$0000], sp
    nop
    nop
    nop
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    inc b
    nop
    nop
    nop
    nop
    nop
    dec c
    rst $38
    ld [$0000], sp
    nop
    ld b, b
    nop
    add hl, bc
    rst $38
    ld bc, $0d00
    rst $38
    ld [$1a00], sp
    nop
    ld c, b
    nop
    ld hl, $6cff
    nop
    dec c
    rst $38
    ld [$0000], sp
    nop
    nop
    nop
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    dec c
    rst $38
    ld [$0000], sp
    nop
    ld b, b
    nop
    add hl, bc
    rst $38
    ld bc, $0d00
    rst $38
    ld [$1a00], sp
    nop
    ld e, b
    nop
    ld hl, $6cff
    nop
    dec c
    rst $38
    ld [$0000], sp
    nop
    nop
    nop
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    dec c
    rst $38
    ld [$0000], sp
    nop
    ld b, b
    nop
    add hl, bc
    rst $38
    inc c
    nop
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    ld a, [de]
    rst $38
    inc b
    nop
    stop
    ld a, [de]
    rst $38
    dec b
    nop
    ldh a, [rIE]
    ld a, [de]
    rst $38
    ld b, $00
    ldh a, [rIE]
    ld a, [de]
    rst $38
    rlca
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld [$2000], sp
    rst $38
    rst $38
    rst $38
    ld b, c
    rst $38
    ld a, [hl-]
    nop
    rlca
    rst $38
    pop hl
    inc b
    ld b, $ff
    ld b, [hl]
    rst $38
    ld b, c
    rst $38
    ld h, c
    nop
    ld [de], a
    rst $38
    db $cd, $d9, $02
    nop
    inc d
    rst $38
    xor d
    ld l, c
    ld [de], a
    rst $38
    db $ed
    ret z

    nop
    nop
    rlca
    rst $38
    rst $18
    inc b
    ld b, $ff
    ld [de], a
    rst $38
    call $01d9
    nop
    dec de
    rst $38
    ld bc, $c000
    rst $38
    dec de
    rst $38
    ld [bc], a
    nop
    ret nz

    rst $38
    dec de
    rst $38
    inc bc
    nop
    ret nz

    rst $38
    dec de
    rst $38
    inc b
    nop
    ret nz

    rst $38
    add hl, de
    rst $38
    ld a, [de]
    rst $38
    ld bc, $f000
    rst $38
    dec de
    rst $38
    ld [bc], a
    nop
    ldh a, [rIE]
    dec de
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    dec de
    rst $38
    inc b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld a, [de]
    rst $38
    ld bc, $f000
    rst $38
    ld a, [de]
    rst $38
    ld [bc], a
    nop
    ldh a, [rIE]
    dec de
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    dec de
    rst $38
    inc b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    dec de
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld a, [de]
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    ld a, [de]
    rst $38
    inc b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld c, d
    rst $38
    ld bc, $4a00
    rst $38
    ld [bc], a
    nop
    ld c, d
    rst $38
    inc bc
    nop
    ld c, d
    rst $38
    inc b
    nop
    add hl, bc
    rst $38
    ld [$0700], sp
    rst $38
    dec d
    rst $38
    db $cd, $d9, $02
    nop
    ld [hl-], a
    ld l, d
    ldh [rDIV], a
    inc d
    rst $38
    inc [hl]
    ld l, d
    ld [c], a
    inc b
    ld b, $ff
    ld a, [de]
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    ld a, [de]
    rst $38
    inc b
    nop
    stop
    ld a, [de]
    rst $38
    ld b, $00
    ldh a, [rIE]
    ld a, [de]
    rst $38
    rlca
    nop
    ldh a, [rIE]
    ld a, [bc]
    rst $38
    ld [$f000], sp
    rst $38
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld [$2000], sp
    rst $38
    rst $38
    rst $38
    ld [de], a
    rst $38
    db $ed
    ret z

    nop
    nop
    dec d
    rst $38
    call $00d9
    nop
    and [hl]
    ld l, d
    ld b, c
    rst $38
    scf
    nop
    rlca
    rst $38
    ld bc, $11ff
    ld bc, $6a84
    ld c, d
    ld [$ff14], sp
    add [hl]
    ld l, d
    ret c

    ld [$ff06], sp
    ld b, [hl]
    rst $38
    ld b, c
    rst $38
    ld h, c
    nop
    add hl, bc
    rst $38
    ld [$1200], sp
    rst $38
    call $fed9
    nop
    inc bc
    rst $38
    ld de, $0f01
    rst $38
    ld b, $00
    add sp, $00
    ld c, b
    nop
    rst $38
    rst $38
    rlca
    rst $38
    ld bc, $11ff
    ld bc, $6ac0
    ld bc, $10ff
    ld bc, $6aba
    ld b, l
    ld [$ff14], sp
    jp nz, Jump_00f_486a

    ld [$ff14], sp
    jp nz, $d66a

    ld [$ff06], sp
    ld [de], a
    rst $38
    db $cd, $d9, $03
    nop
    dec de
    rst $38
    ld bc, $c000
    rst $38
    dec de
    rst $38
    ld [bc], a
    nop
    ret nz

    rst $38
    dec de
    rst $38
    inc bc
    nop
    ret nz

    rst $38
    dec de
    rst $38
    inc b
    nop
    ret nz

    rst $38
    add hl, de
    rst $38
    ld a, [de]
    rst $38
    ld bc, $f000
    rst $38
    dec de
    rst $38
    ld [bc], a
    nop
    ldh a, [rIE]
    dec de
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    dec de
    rst $38
    inc b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld a, [de]
    rst $38
    ld bc, $f000
    rst $38
    ld a, [de]
    rst $38
    ld [bc], a
    nop
    ldh a, [rIE]
    dec de
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    dec de
    rst $38
    inc b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    dec de
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld a, [de]
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    ld a, [de]
    rst $38
    inc b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld c, d
    rst $38
    ld bc, $4a00
    rst $38
    ld [bc], a
    nop
    ld c, d
    rst $38
    inc bc
    nop
    ld c, d
    rst $38
    inc b
    nop
    add hl, bc
    rst $38
    ld [$0700], sp
    rst $38
    ld bc, $11ff
    ld bc, $6b5e
    ld bc, $10ff
    ld bc, $6b58
    ld b, [hl]
    ld [$0847], sp
    inc d
    rst $38
    ld h, b
    ld l, e
    ld c, c
    ld [$ff14], sp
    ld h, b
    ld l, e
    rst $10
    ld [$ff06], sp
    ld a, [de]
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    ld a, [de]
    rst $38
    inc b
    nop
    stop
    ld a, [de]
    rst $38
    ld b, $00
    ldh a, [rIE]
    ld a, [de]
    rst $38
    rlca
    nop
    ldh a, [rIE]
    ld a, [bc]
    rst $38
    ld [$f000], sp
    rst $38
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld [$0300], sp
    rst $38
    db $10
    ld bc, $ff20
    rst $38
    rst $38
    sub [hl]
    ld l, e
    dec d
    rst $38
    sbc d
    reti


    inc bc
    nop
    ld a, [de]
    ld l, h
    dec d
    rst $38
    sbc d
    reti


    ld [bc], a
    nop
    jr jr_00f_6c12

    dec d
    rst $38
    sbc d
    reti


    ld bc, $b000
    ld l, e
    rst $38
    rst $38
    inc h
    rst $38
    rlca
    ld l, $0d
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    ld a, [bc]
    rst $38
    ld bc, $4000
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    ret nc

    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    nop
    add hl, bc
    rst $38
    inc b
    nop
    add hl, sp
    rst $38
    rst $30
    add hl, bc
    ld a, [bc]
    rst $38
    nop
    nop
    jr nc, jr_00f_6bfa

jr_00f_6bfa:
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    ld b, b
    nop
    ld [de], a
    rst $38
    adc d
    ret z

    nop
    nop
    ld [de], a
    rst $38
    adc e
    ret z

    ld bc, $1200
    rst $38
    adc [hl]
    ret z

jr_00f_6c12:
    ld bc, $2600
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    rst $38
    jr z, jr_00f_6c1e

jr_00f_6c1e:
    ld hl, $9dff
    nop
    add hl, bc
    rst $38
    jr z, jr_00f_6c26

jr_00f_6c26:
    ld b, c
    rst $38
    ld [bc], a
    nop
    rrca
    rst $38
    cpl
    nop
    jr c, jr_00f_6c30

jr_00f_6c30:
    ret z

    nop
    rst $38
    rst $38
    ld b, d
    ld l, h
    ld b, h
    ld l, h
    ld [hl], d
    ld l, l
    ld d, d
    ld l, [hl]
    ret nc

    ld l, [hl]
    or $6e
    ld b, d
    ld l, a
    rst $38
    rst $38
    ld d, e
    rst $38
    ld [$07ff], sp
    rst $38
    dec d
    rst $38
    inc l
    ret


    ld bc, $7200
    ld l, h
    dec d
    rst $38
    inc l
    ret


    ld [bc], a
    nop
    ld a, d
    ld l, h
    dec d
    rst $38
    inc l
    ret


    inc bc
    nop
    add d
    ld l, h
    dec d
    rst $38
    inc l
    ret


    inc b
    nop
    adc d
    ld l, h
    ret nz

    add hl, bc
    ld b, $ff
    inc d
    rst $38
    sub d
    ld l, h
    jp Jump_000_0609


    rst $38
    inc d
    rst $38
    sub d
    ld l, h
    add $09
    ld b, $ff
    inc d
    rst $38
    sub d
    ld l, h
    ret


    add hl, bc
    ld b, $ff
    inc d
    rst $38
    sub d
    ld l, h
    call z, Call_000_0609
    rst $38
    inc d
    rst $38
    sub d
    ld l, h
    ld d, d
    rst $38
    dec d
    rst $38
    ld d, l
    db $db
    ld bc, $dc00
    ld l, h
    rlca
    rst $38
    dec d
    rst $38
    inc l
    ret


    ld bc, $c400
    ld l, h
    dec d
    rst $38
    inc l
    ret


    ld [bc], a
    nop
    jp z, $156c

    rst $38
    inc l
    ret


    inc bc
    nop
    ret nc

    ld l, h
    dec d
    rst $38
    inc l
    ret


    inc b
    nop
    sub $6c
    pop bc
    add hl, bc
    inc d
    rst $38
    inc e
    ld l, l
    db $c4, $09, $14
    rst $38
    inc e
    ld l, l
    rst $00
    add hl, bc
    inc d
    rst $38
    inc e
    ld l, l
    db $ca, $09, $14

    rst $38
    inc e
    ld l, l
    db $cd, $09, $14
    rst $38
    inc e
    ld l, l
    rlca
    rst $38
    dec d
    rst $38
    inc l
    ret


    ld bc, $0400
    ld l, l
    dec d
    rst $38
    inc l
    ret


    ld [bc], a
    nop
    ld a, [bc]
    ld l, l
    dec d
    rst $38
    inc l
    ret


    inc bc
    nop
    db $10
    ld l, l
    dec d
    rst $38
    inc l
    ret


    inc b
    nop
    ld d, $6d
    db $c2, $09, $14

    rst $38
    ld a, [hl-]
    ld l, l
    push bc
    add hl, bc
    inc d
    rst $38
    ld a, [hl-]
    ld l, l
    ret z

    add hl, bc
    inc d
    rst $38
    ld a, [hl-]
    ld l, l
    rrc c
    inc d
    rst $38
    ld a, [hl-]
    ld l, l
    adc $09
    inc d
    rst $38
    ld a, [hl-]
    ld l, l
    ld b, $ff
    inc l
    rst $38
    ld a, [hl+]
    ld l, l
    ld a, [hl+]
    rst $38
    dec e
    nop
    rlca
    rst $38
    ld [$2c09], a
    rst $38
    ld [hl-], a
    ld l, l
    ld d, h
    rst $38
    db $eb
    add hl, bc
    inc e
    rst $38
    ld bc, $190d
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    dec d
    rst $38
    pop hl
    ret c

    nop
    nop
    ld b, [hl]
    ld l, l
    db $ec
    add hl, bc
    ld d, l
    rst $38
    dec d
    rst $38
    pop hl
    ret c

    nop
    nop
    ld d, d
    ld l, l
    db $ec
    add hl, bc
    ld d, [hl]
    rst $38
    dec d
    rst $38
    pop hl
    ret c

    nop
    nop
    ld e, [hl]
    ld l, l
    db $ed
    add hl, bc
    inc l
    rst $38
    ld l, d
    ld l, l
    ld a, [hl+]
    rst $38
    dec e
    nop
    rlca
    rst $38
    push af
    add hl, bc
    inc e
    rst $38
    ld bc, $190d
    rst $38
    rst $38
    rst $38
    dec d
    rst $38
    jp nc, $0fd7

    nop
    ld a, [hl]
    ld l, l
    ld d, e
    rst $38
    ld [$07ff], sp
    rst $38
    dec d
    rst $38
    inc l
    ret


    ld bc, $a800
    ld l, l
    dec d
    rst $38
    inc l
    ret


    ld [bc], a
    nop
    or b
    ld l, l
    dec d
    rst $38
    inc l
    ret


    inc bc
    nop
    cp b
    ld l, l
    dec d
    rst $38
    inc l
    ret


    inc b
    nop
    ret nz

    ld l, l
    rst $08
    add hl, bc
    ld b, $ff
    inc d
    rst $38
    ret z

    ld l, l
    jp nc, Jump_000_0609

    rst $38
    inc d
    rst $38
    ret z

    ld l, l
    push de
    add hl, bc
    ld b, $ff
    inc d
    rst $38
    ret z

    ld l, l
    ret c

    add hl, bc
    ld b, $ff
    inc d
    rst $38
    ret z

    ld l, l
    db $db
    add hl, bc
    ld b, $ff
    inc d
    rst $38
    ret z

    ld l, l
    ld d, d
    rst $38
    dec d
    rst $38
    ld d, l
    db $db
    ld bc, $1200
    ld l, [hl]
    rlca
    rst $38
    dec d
    rst $38
    inc l
    ret


    ld bc, $fa00
    ld l, l
    dec d
    rst $38
    inc l
    ret


    ld [bc], a
    nop
    nop
    ld l, [hl]
    dec d
    rst $38
    inc l
    ret


    inc bc
    nop
    ld b, $6e
    dec d
    rst $38
    inc l
    ret


    inc b
    nop
    inc c
    ld l, [hl]
    ret nc

    add hl, bc
    inc d
    rst $38
    inc e
    ld l, l
    db $d3
    add hl, bc
    inc d
    rst $38
    inc e
    ld l, l
    sub $09
    inc d
    rst $38
    inc e
    ld l, l
    reti


    add hl, bc
    inc d
    rst $38
    inc e
    ld l, l
    db $dc, $09, $14
    rst $38
    inc e
    ld l, l
    rlca
    rst $38
    dec d
    rst $38
    inc l
    ret


    ld bc, $3a00
    ld l, [hl]
    dec d
    rst $38
    inc l
    ret


    ld [bc], a
    nop
    ld b, b
    ld l, [hl]
    dec d
    rst $38
    inc l
    ret


    inc bc
    nop
    ld b, [hl]
    ld l, [hl]
    dec d
    rst $38
    inc l
    ret


    inc b
    nop
    ld c, h
    ld l, [hl]
    pop de
    add hl, bc
    inc d
    rst $38
    ld a, [hl-]
    ld l, l
    db $d4, $09, $14
    rst $38
    ld a, [hl-]
    ld l, l
    rst $10
    add hl, bc
    inc d
    rst $38
    ld a, [hl-]
    ld l, l
    db $da, $09, $14

    rst $38
    ld a, [hl-]
    ld l, l
    db $dd
    add hl, bc
    inc d
    rst $38
    ld a, [hl-]
    ld l, l
    sbc $09
    ld b, $ff
    ld d, d
    rst $38
    dec d
    rst $38
    ld d, l
    db $db
    ld bc, $c800
    ld l, [hl]
    rlca
    rst $38
    rst $18
    add hl, bc
    ld [de], a
    rst $38
    sbc e
    ret z

    nop
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    add hl, bc
    rst $38
    ld bc, $1200
    rst $38
    sbc e
    ret z

    dec l
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $38
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $38
    nop
    ld c, l
    rst $38
    ld b, $00
    ld [de], a
    rst $38
    sbc e
    ret z

    db $d2, $00, $12

    rst $38
    sbc h
    ret z

    db $d2, $00, $12

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    add hl, bc
    rst $38
    inc b
    nop
    daa
    rst $38
    ld d, $ff
    inc e
    rst $38
    ld bc, $190d
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ldh [$09], a
    inc d
    rst $38
    ld a, [hl-]
    ld l, l
    pop hl
    add hl, bc
    ld b, $ff
    ld d, d
    rst $38
    dec d
    rst $38
    ld d, l
    db $db
    ld bc, $ee00
    ld l, [hl]
    rlca
    rst $38
    ld [c], a
    add hl, bc
    ld b, $ff
    ld e, b
    rst $38
    inc e
    rst $38
    ld bc, $190d
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    db $e3
    add hl, bc
    inc d
    rst $38
    ld a, [hl-]
    ld l, l
    db $e4
    add hl, bc
    ld b, $ff
    ld d, d
    rst $38
    dec d
    rst $38
    ld d, l
    db $db
    ld bc, $3a00
    ld l, a
    rlca
    rst $38
    push hl
    add hl, bc
    ld e, c
    rst $38
    nop
    nop
    dec d
    rst $38
    pop hl
    ret c

    rst $38
    nop
    ld [hl-], a
    ld l, a
    xor $09
    ld e, c
    rst $38
    ld bc, $1500
    rst $38
    pop hl
    ret c

    rst $38
    nop
    ld [hl-], a
    ld l, a
    xor $09
    ld e, c
    rst $38
    ld [bc], a
    nop
    dec d
    rst $38
    pop hl
    ret c

    rst $38
    nop
    ld [hl-], a
    ld l, a
    xor $09
    inc e
    rst $38
    ld bc, $190d
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    and $09
    inc d
    rst $38
    ld a, [hl-]
    ld l, l
    rst $20
    add hl, bc
    ld b, $ff
    ld d, d
    rst $38
    dec d
    rst $38
    ld d, l
    db $db
    ld bc, $6800
    ld l, a
    rlca
    rst $38
    add sp, $09
    inc l
    rst $38
    ld h, b
    ld l, a
    ld d, a
    rst $38
    db $eb
    add hl, bc
    inc d
    rst $38
    ld d, h
    ld l, a
    inc e
    rst $38
    ld bc, $190d
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    jp hl


    add hl, bc
    inc d
    rst $38
    ld a, [hl-]
    ld l, l
    ld [hl], d
    ld l, a
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
