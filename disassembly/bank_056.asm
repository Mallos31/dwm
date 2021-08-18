; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $056", ROMX[$4000], BANK[$56]

    ld d, [hl]
    ld bc, $0849
    ld c, c
    rrca
    ld c, c
    ld d, $49
    ld b, [hl]
    ld c, d
    add l
    ld b, h
    rst $00
    ld b, h
    ccf
    ld b, b
    ld h, h
    ld b, b
    ld h, a
    ld l, b
    add d
    ld l, b
    and e
    ld l, b
    add $68
    ld [hl], c
    ld l, d
    rst $00
    ld l, e
    xor b
    ld l, h
    rrca
    ld l, l
    ld a, l
    ld l, l
    sbc $6d
    jr nc, jr_056_4097

    sub [hl]
    ld l, [hl]
    sub $6e
    dec h
    ld l, a
    adc d
    ld l, a
    jp c, Jump_000_0c6f

    ld [hl], b
    ld e, [hl]
    ld [hl], b
    pop bc
    ld [hl], b
    scf
    ld [hl], c
    or b
    ld [hl], c
    jr jr_056_40b1

    xor a
    ld hl, $9800
    ld de, $4085

jr_056_4046:
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, h
    cp $9b
    jr nz, jr_056_4046

    ld a, l
    cp $ff
    jr nz, jr_056_4046

    ld a, [de]
    ld [hl], a
    ld a, $43
    ld [$c8a1], a
    ld a, $63
    ld [$c8a1], a
    ld a, $01
    jp Jump_000_11cb


    ld a, [$c842]
    and $01
    cp $01
    jr nz, jr_056_4084

    ld hl, $c8ad
    ld a, [hl+]
    ld [$c88a], a
    ld a, [hl+]
    ld [$c88b], a
    ld a, [hl+]
    ld [$c88c], a
    ld a, [hl]
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]

jr_056_4084:
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
    rst $38
    rst $38

jr_056_4097:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_056_40c8

    ld a, [de]
    dec de

jr_056_40b1:
    inc e
    dec e
    ld e, $1f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_056_40e8

    ld [hl+], a

jr_056_40c8:
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_056_40f8

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, jr_056_4118

    ld [hl-], a

jr_056_40e8:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_056_4128

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    rst $38
    rst $38
    rst $38

jr_056_40f8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
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
    ld c, a
    rst $38
    rst $38
    rst $38

jr_056_4118:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, b
    ld d, c
    ld d, d

jr_056_4128:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_056_4485:
    ld hl, $c829
    ld a, [hl+]
    or [hl]
    ret z

    ld a, [$c827]
    ld l, a
    ld a, [$c828]
    ld h, a
    ld a, [$c82a]
    ld c, a

jr_056_4497:
    ld a, [$c829]
    ld b, a

jr_056_449b:
    push bc
    ld b, $10
    ld de, $44b7

jr_056_44a1:
    di

jr_056_44a2:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_056_44a2

    ld a, [de]
    ld [hl+], a
    ei
    inc de
    dec b
    jr nz, jr_056_44a1

    pop bc
    dec b
    jr nz, jr_056_449b

    dec c
    jr nz, jr_056_4497

    ret


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
    ld a, d
    ld [$c83a], a
    sub $e0
    rst $00
    ld c, $45
    ld c, $45
    ld c, $45
    ld c, $45
    ld c, $45
    ld c, $45
    ld c, $45
    ld de, $1f45
    ld b, l
    ld d, h
    ld b, l
    ld e, [hl]
    ld b, l
    ld l, c
    ld b, l
    ld [hl], h
    ld b, l
    and a
    ld b, l
    xor l
    ld b, l
    ld b, b
    ld b, [hl]
    cp $46
    dec hl
    ld b, a
    ld c, a
    ld b, a
    ld e, b
    ld b, a
    ld [hl], c
    ld b, a
    ld a, h
    ld b, a
    add d
    ld b, a
    or h
    ld b, a
    cp a
    ld b, a
    adc $47
    dec de
    ld c, b
    ld hl, $3548
    ld c, b
    ld c, c
    ld c, b
    ld c, a
    ld c, b
    ld d, l
    ld c, b
    jp Jump_056_4855


    call Call_056_4855
    ld a, $01
    ld [$c83c], a
    ld a, $ff
    ld [$c83a], a
    ret


    call Call_000_0954
    ld d, $00
    call Call_000_0d78
    ld e, a
    call Call_000_0954
    call Call_000_0d78
    ld c, a
    ld a, [$c82a]
    call Call_000_1dbe
    add hl, de
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c827]
    ld e, a
    ld a, [$c828]
    ld d, a
    add hl, de
    ld a, l
    ld [$c82b], a
    ld a, h
    ld [$c82c], a
    ld a, l
    ld [$c82f], a
    ld a, h
    ld [$c830], a
    ret


    call Call_000_0954
    call Call_000_0d78
    call Call_000_1b2c
    ret


    ld hl, $c826
    set 0, [hl]
    ld a, $5b
    ld [$c840], a
    ret


    ld hl, $c826
    set 0, [hl]
    ld a, $5a
    ld [$c840], a
    ret


    ld hl, $c826
    res 7, [hl]
    ld a, [$c8ee]
    cp $07
    jr z, jr_056_4593

    ld hl, $45a0
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c836], a
    ld hl, $c825
    set 7, [hl]
    ret


jr_056_4593:
    ld hl, $c826
    res 7, [hl]
    ld hl, $c825
    set 2, [hl]
    set 5, [hl]
    ret


    ld b, $0c
    inc d
    ld a, [de]
    jr nz, @+$2a

    jr nc, jr_056_45c9

    ld h, $c8
    set 7, [hl]
    ret


    ld a, [$c827]
    ld e, a
    ld a, [$c828]
    ld d, a
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ld a, [$c829]
    ld c, a

jr_056_45c9:
    ld a, [$c82a]
    ld b, a
    ld a, [$c83e]
    ld l, a
    ld a, [$c83f]
    ld h, a
    push bc

jr_056_45d6:
    ld a, e
    call Call_000_1aad
    call Call_000_0cee
    inc e
    dec b
    jr nz, jr_056_45d6

    ld hl, $0020
    call Call_000_0cfd
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    call Call_000_0d34
    ld a, [$c82a]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld c, l
    ld b, h
    push de
    ld a, [$c827]
    ld e, a
    ld a, [$c828]
    ld d, a
    add hl, de
    pop de

jr_056_4609:
    ld a, $ff
    call Call_000_1ab9
    xor a
    call Call_000_1ab9
    dec bc
    dec bc
    ld a, b
    or c
    jr nz, jr_056_4609

    pop bc
    ld hl, $0040
    call Call_000_0cfd

jr_056_461f:
    ld a, e
    call Call_000_1aad
    call Call_000_0cee
    inc e
    dec b
    jr nz, jr_056_461f

    ld a, [$c82f]
    ld l, a
    ld a, [$c830]
    ld h, a
    ld a, l
    ld [$c82b], a
    ld a, h
    ld [$c82c], a
    ld hl, $c825
    res 1, [hl]
    ret


    ld a, [$c82a]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c827]
    ld e, a
    ld a, [$c828]
    ld d, a
    add hl, de
    ld a, [$c82f]
    ld e, a
    ld a, [$c830]
    ld d, a
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld d, a
    ld a, d
    or e
    jr z, jr_056_4679

    ld a, l
    ld [$c82b], a
    ld a, h
    ld [$c82c], a
    ld a, l
    ld [$c82f], a
    ld a, h
    ld [$c830], a
    call Call_000_0954
    ret


jr_056_4679:
    ld a, [$c83e]
    ld l, a
    ld a, [$c83f]
    ld h, a
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    call Call_000_0d34
    ld a, [$c827]
    ld e, a
    ld a, [$c828]
    ld d, a
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    ld hl, $0020
    call Call_000_0cfd
    ld a, e
    add b
    ld e, a

jr_056_46b5:
    ld a, e
    call Call_000_1aad
    call Call_000_0cee
    inc e
    dec b
    jr nz, jr_056_46b5

    ld hl, $0040
    call Call_000_0cfd
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    call Call_000_0d34
    ld a, [$c82a]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c827]
    ld e, a
    ld a, [$c828]
    ld d, a
    ld c, l
    ld b, h
    add hl, de

jr_056_46e6:
    di
    call Call_000_1aa6
    ld a, [hl+]
    ei
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_056_46e6

    ld hl, $c825
    set 7, [hl]
    ld a, $04
    ld [$c836], a
    ret


    ld a, [$c825]
    bit 4, a
    jp z, Jump_056_4722

    ld a, [$c825]
    res 4, a
    ld [$c825], a
    call Call_000_0864
    ld a, [$c831]
    ld l, a
    ld a, [$c832]
    ld h, a
    ld a, l
    ld [$c82d], a
    ld a, h
    ld [$c82e], a
    ret


Jump_056_4722:
    xor a
    ld [$c825], a
    xor a
    ld [$c826], a
    ret


    ld a, [$c82a]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c82f]
    ld e, a
    ld a, [$c830]
    ld d, a
    add hl, de
    ld a, l
    ld [$c82b], a
    ld a, h
    ld [$c82c], a
    ld a, l
    ld [$c82f], a
    ld a, h
    ld [$c830], a
    ret


    call Call_000_0864
    call Call_056_4771
    call Call_056_4485
    ld a, [$c827]
    ld l, a
    ld a, [$c828]
    ld h, a
    ld a, l
    ld [$c82b], a
    ld a, h
    ld [$c82c], a
    ld a, l
    ld [$c82f], a
    ld a, h
    ld [$c830], a
    ret


Call_056_4771:
    ld hl, $c826
    res 7, [hl]
    ld hl, $c825
    res 1, [hl]
    ret


    ld hl, $c825
    set 1, [hl]
    ret


    ld hl, $ca42
    ld de, $c0c8
    ld b, $08

jr_056_478a:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_056_478a

    ld a, $f0
    ld [de], a
    ld hl, $c825
    set 4, [hl]
    ld a, [$c82d]
    ld l, a
    ld a, [$c82e]
    ld h, a
    ld a, l
    ld [$c831], a
    ld a, h
    ld [$c832], a
    ld hl, $c0c8
    ld a, l
    ld [$c82d], a
    ld a, h
    ld [$c82e], a
    ret


    ld hl, $c825
    set 2, [hl]
    ld hl, $c826
    res 7, [hl]
    ret


    ld hl, $c825
    set 3, [hl]
    call Call_000_0954
    call Call_000_0d78
    ld [$c833], a
    ret


    ld hl, $c825
    set 4, [hl]
    ld a, [$c82d]
    ld l, a
    ld a, [$c82e]
    ld h, a
    ld a, l
    ld [$c831], a
    ld a, h
    ld [$c832], a
    ld a, [$c831]
    add $01
    ld [$c831], a
    ld a, [$c832]
    adc $00
    ld [$c832], a
    ld a, [$c88a]
    cp $0b
    jr nz, jr_056_4806

    ld hl, $0d8a
    ld a, l
    ld [$c82d], a
    ld a, h
    ld [$c82e], a
    ret


jr_056_4806:
    call Call_000_0d78
    ld de, $c180
    add e
    ld l, a
    ld a, $00
    adc d
    ld h, a
    ld a, l
    ld [$c82d], a
    ld a, h
    ld [$c82e], a
    ret


    ld hl, $c825
    set 5, [hl]
    ret


    ld hl, $c825
    set 6, [hl]
    call Call_000_0954
    call Call_000_0d78
    ld [$c835], a
    ld hl, $c826
    res 7, [hl]
    ret


    ld hl, $c825
    set 7, [hl]
    call Call_000_0954
    call Call_000_0d78
    ld [$c836], a
    ld hl, $c826
    res 7, [hl]
    ret


    ld hl, $c826
    set 0, [hl]
    ret


    ld hl, $c826
    res 0, [hl]
    ret


Call_056_4855:
Jump_056_4855:
    ld hl, $c826
    res 7, [hl]
    ld a, $5c
    call Call_000_1b2c
    ld hl, $0000
    call Call_000_0d11
    ld de, $c500
    ld c, $12

jr_056_486a:
    ld b, $20
    push hl

jr_056_486d:
    di
    call Call_000_1aa6
    ld a, [hl]
    ei
    ld [de], a
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
    jr nz, jr_056_486d

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
    jr nz, jr_056_486a

    call Call_056_48a1
    ld hl, $c825
    set 2, [hl]
    xor a
    ld [$c83c], a
    ret


Call_056_48a1:
    ld de, $560a
    ld hl, $8e50
    call Call_000_1577
    ld hl, $0100
    call Call_000_0d11
    ld b, $0e
    call Call_000_0ce7
    ld de, $48de

jr_056_48b8:
    push hl

jr_056_48b9:
    ld a, [de]
    inc de
    cp $d9
    jr z, jr_056_48dc

    cp $d8
    jr nz, jr_056_48d4

    pop hl
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
    jr jr_056_48b8

jr_056_48d4:
    call Call_000_1aad
    call Call_000_0cee
    jr jr_056_48b9

jr_056_48dc:
    pop hl
    ret


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
    push hl
    and $e0
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


Call_056_4901:
    ld de, $664b
    call Call_000_05b6
    ret


    ld de, $664b
    call Call_000_05f6
    ret


Call_056_490f:
    call Call_056_4901
    call Call_000_0609
    ret


    ld hl, $9000
    ld de, $1207
    call Call_000_098f
    ld hl, $c0a0
    ld bc, $0010
    ld a, $00
    call Call_000_12c7
    ld hl, $9c00
    ld bc, $0400
    ld a, $1f
    call Call_000_12c7
    ld hl, $9c00
    ld bc, $1204
    ld a, $80
    call Call_056_4a0a
    xor a
    ld [wMenu_selection], a
    xor a
    ldh [rVBK], a
    call Call_056_4996
    ld a, $00
    call Call_000_1ae1
    ld a, $0a
    ld [$df08], a
    xor a
    ld [$df03], a
    ld a, $98
    ld [$df04], a
    ld a, $8e
    ld [$df05], a
    ld a, $64
    ldh [$b6], a
    ld a, $07
    ldh [$b5], a
    ld h, $98
    ld l, $8e
    ld a, [hl+]
    ld [$df06], a
    ld a, [hl]
    ld [$df07], a
    ld a, $1f
    ld [$c83b], a
    ld a, $7f
    ld [$c83d], a
    xor a
    ld [$df0b], a
    ld [$df0c], a
    ld a, $43
    ld [$c8a1], a
    ld a, $63
    ld [$c8a1], a
    ld a, $01
    jp Jump_000_11cb


Call_056_4996:
    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    ld hl, $9100
    ld a, $00
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld de, $1002
    call Call_056_49e2
    ld hl, $9300
    ld a, [$c88b]
    inc a
    ld [$c823], a
    ld de, $1004
    call Call_056_49e2
    call Call_056_4a23
    ld hl, $9823
    ld bc, $1002
    ld a, $10
    call Call_056_4a0a
    ld hl, $9883
    ld bc, $1004
    ld a, $30
    call Call_056_4a0a
    call Call_056_4a2f
    ret


Call_056_49e2:
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    call Call_056_490f
    ret


Call_056_49f6:
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    call Call_056_4901
    ret


Call_056_4a0a:
jr_056_4a0a:
    push hl
    ld d, b

jr_056_4a0c:
    call Call_000_1ab9
    inc a
    dec b
    jr nz, jr_056_4a0c

    ld b, d
    ld e, a
    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, e
    dec c
    jr nz, jr_056_4a0a

    ret


Call_056_4a23:
    ld hl, $9800
    ld bc, $0400
    ld a, $1f
    call Call_000_12c7
    ret


Call_056_4a2f:
    ld b, $04
    ld hl, $988e
    ld c, $6f

jr_056_4a36:
    ld a, $70
    ld [hl+], a
    ld [hl-], a
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_056_4a36

    ret


    call Call_056_4a50
    call Call_056_4d7a
    call Call_056_4dba
    ret


Call_056_4a50:
    ld a, [$c846]
    bit 6, a
    jr z, jr_056_4aa6

    ld a, [$df04]
    ld h, a
    ld a, [$df05]
    ld l, a
    ld a, [$df06]
    call Call_000_1ab9
    ld a, [$df07]
    call Call_000_1aad
    ld a, [$df03]
    dec a
    cp $ff
    jr nz, jr_056_4a75

    ld a, $03

jr_056_4a75:
    ld [$df03], a
    ld c, a
    ld a, [$df02]
    add c
    ld [$df00], a
    ld a, [$df03]
    ld c, $20
    call Call_000_1dbe
    ld a, l
    add $8e
    ld l, a
    ld a, h
    adc $98
    ld h, a
    ld a, h
    ld [$df04], a
    ld a, l
    ld [$df05], a
    call Call_000_1aa6
    ld a, [hl+]
    ld [$df06], a
    call Call_000_1aa6
    ld a, [hl]
    ld [$df07], a

jr_056_4aa6:
    ld a, [$c846]
    bit 7, a
    jr z, jr_056_4afb

    ld a, [$df04]
    ld h, a
    ld a, [$df05]
    ld l, a
    ld a, [$df06]
    call Call_000_1ab9
    ld a, [$df07]
    call Call_000_1aad
    ld a, [$df03]
    inc a
    cp $04
    jr nz, jr_056_4aca

    xor a

jr_056_4aca:
    ld [$df03], a
    ld c, a
    ld a, [$df02]
    add c
    ld [$df00], a
    ld a, [$df03]
    ld c, $20
    call Call_000_1dbe
    ld a, l
    add $8e
    ld l, a
    ld a, h
    adc $98
    ld h, a
    ld a, h
    ld [$df04], a
    ld a, l
    ld [$df05], a
    call Call_000_1aa6
    ld a, [hl+]
    ld [$df06], a
    call Call_000_1aa6
    ld a, [hl]
    ld [$df07], a

jr_056_4afb:
    ld a, [$c842]
    bit 4, a
    jp z, Jump_056_4b36

    ld a, [$df0b]
    inc a
    and $07
    ld [$df0b], a
    jr z, jr_056_4b0f

    ret


jr_056_4b0f:
    ld a, [$df07]
    inc a
    cp $80
    jr nz, jr_056_4b2b

    ld a, $70
    ld [$df07], a
    ld a, [$df06]
    inc a
    cp $80
    jr nz, jr_056_4b26

    ld a, $70

jr_056_4b26:
    ld [$df06], a
    jr jr_056_4b2e

jr_056_4b2b:
    ld [$df07], a

jr_056_4b2e:
    ld a, [$df01]
    inc a
    ld [$df01], a
    ret


Jump_056_4b36:
    ld a, [$c842]
    bit 5, a
    jp z, Jump_056_4b71

    ld a, [$df0c]
    inc a
    and $07
    ld [$df0c], a
    jr z, jr_056_4b4a

    ret


jr_056_4b4a:
    ld a, [$df07]
    dec a
    cp $6f
    jr nz, jr_056_4b66

    ld a, $7f
    ld [$df07], a
    ld a, [$df06]
    dec a
    cp $6f
    jr nz, jr_056_4b61

    ld a, $7f

jr_056_4b61:
    ld [$df06], a
    jr jr_056_4b69

jr_056_4b66:
    ld [$df07], a

jr_056_4b69:
    ld a, [$df01]
    dec a
    ld [$df01], a
    ret


Jump_056_4b71:
    ld a, [$c846]
    bit 2, a
    jr z, jr_056_4b9e

    ld a, [$c88b]
    inc a
    cp $0a
    jr nz, jr_056_4b82

    ld a, $00

jr_056_4b82:
    ld [$c88b], a
    ld hl, $c88e
    inc [hl]
    ld a, [$c88b]
    ld c, $04
    call Call_000_1dbe
    ld a, l
    ld [$df02], a
    ld [$df00], a
    ld a, $0c
    call Call_000_1b2c
    ret


jr_056_4b9e:
    ld a, [$c846]
    bit 1, a
    jp z, Jump_056_4d63

    ld a, [$df01]
    ld b, a
    ld a, [$df00]
    ld hl, $4e24
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    sub b
    jr nc, jr_056_4bce

    ld a, $00
    ld [$c822], a
    ld a, $0b
    ld [$c823], a
    ld de, $1204
    ld hl, $8800
    call Call_056_49f6
    ret


jr_056_4bce:
    ld a, [$df01]
    ld [$c823], a
    ld a, [$df00]
    ld hl, $4dd4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c822], a
    ld hl, $4dfc
    ld a, [$df00]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$df0a], a
    ld de, $1204
    ld hl, $8800
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, [$df0a]
    rst $00
    ld l, $4c
    inc sp
    ld c, h
    ld d, d
    ld c, h
    ld [hl], c
    ld c, h
    sub b
    ld c, h
    sub l
    ld c, h
    or h
    ld c, h
    db $d3
    ld c, h
    ld a, [c]
    ld c, h
    inc c
    ld c, l
    dec hl
    ld c, l
    ld c, d
    ld c, l
    ld c, a
    ld c, l
    ld d, h
    ld c, l
    ld e, c
    ld c, l
    ld e, [hl]
    ld c, l
    ld hl, $4100
    rst $10
    ret


    ld a, [$c822]
    cp $00
    jr nz, jr_056_4c4d

    ld a, [$c823]
    cp $e2
    jr c, jr_056_4c4d

    sub $e2
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4c52

jr_056_4c4d:
    ld hl, $4200
    rst $10
    ret


jr_056_4c52:
    ld a, [$c822]
    cp $01
    jr nz, jr_056_4c6c

    ld a, [$c823]
    cp $98
    jr c, jr_056_4c6c

    sub $98
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4c71

jr_056_4c6c:
    ld hl, $4300
    rst $10
    ret


jr_056_4c71:
    ld a, [$c822]
    cp $01
    jr nz, jr_056_4c8b

    ld a, [$c823]
    cp $44
    jr c, jr_056_4c8b

    sub $44
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4c90

jr_056_4c8b:
    ld hl, $4400
    rst $10
    ret


jr_056_4c90:
    ld hl, $4500
    rst $10
    ret


    ld a, [$c822]
    cp $00
    jr nz, jr_056_4caf

    ld a, [$c823]
    cp $c8
    jr c, jr_056_4caf

    sub $c8
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4cb4

jr_056_4caf:
    ld hl, $4600
    rst $10
    ret


jr_056_4cb4:
    ld a, [$c822]
    cp $01
    jr nz, jr_056_4cce

    ld a, [$c823]
    cp $74
    jr c, jr_056_4cce

    sub $74
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4cd3

jr_056_4cce:
    ld hl, $4700
    rst $10
    ret


jr_056_4cd3:
    ld a, [$c822]
    cp $01
    jr nz, jr_056_4ced

    ld a, [$c823]
    cp $12
    jr c, jr_056_4ced

    sub $12
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4cf2

jr_056_4ced:
    ld hl, $4800
    rst $10
    ret


jr_056_4cf2:
    ld a, [$c823]
    add $12
    cp $e0
    jr c, jr_056_4d07

    sub $e0
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4d0c

jr_056_4d07:
    ld hl, $4900
    rst $10
    ret


jr_056_4d0c:
    ld a, [$c822]
    cp $02
    jr nz, jr_056_4d26

    ld a, [$c823]
    cp $c0
    jr c, jr_056_4d26

    sub $c0
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4d2b

jr_056_4d26:
    ld hl, $4a00
    rst $10
    ret


jr_056_4d2b:
    ld a, [$c822]
    cp $01
    jr nz, jr_056_4d45

    ld a, [$c823]
    cp $68
    jr c, jr_056_4d45

    sub $68
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4d54

jr_056_4d45:
    ld hl, $4b00
    rst $10
    ret


    ld hl, $4c00
    rst $10
    ret


    ld hl, $4d00
    rst $10
    ret


jr_056_4d54:
    ld hl, $4e00
    rst $10
    ret


    ld hl, $5906
    rst $10
    ret


    ld hl, $5600
    rst $10
    ret


Jump_056_4d63:
    ld a, [$c842]
    and $08
    cp $08
    jr nz, jr_056_4d79

    ld a, $07
    ld [$c88a], a
    xor a
    ld [$c88b], a
    ld hl, $c88e
    inc [hl]

jr_056_4d79:
    ret


Call_056_4d7a:
    ld a, [$df08]
    cp $00
    jr nz, jr_056_4db5

    ld a, $0a
    ld [$df08], a
    ld a, [$df04]
    ld h, a
    ld a, [$df05]
    ld l, a
    ld a, [$df09]
    cp $00
    jr nz, jr_056_4da3

    ld a, $1f
    call Call_000_1ab9
    call Call_000_1aad
    ld a, $01
    ld [$df09], a
    ret


jr_056_4da3:
    ld a, [$df06]
    call Call_000_1ab9
    ld a, [$df07]
    call Call_000_1aad
    ld a, $00
    ld [$df09], a
    ret


jr_056_4db5:
    dec a
    ld [$df08], a
    ret


Call_056_4dba:
    ld a, [$df06]
    sub $70
    rlca
    rlca
    rlca
    rlca
    ld [$df01], a
    ld a, [$df07]
    sub $70
    ld c, a
    ld a, [$df01]
    add c
    ld [$df01], a
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
    ld c, $00
    ld bc, $0001
    ld bc, $0101
    ld [bc], a
    ld bc, $0001
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    nop
    ld bc, $0001
    ld bc, $0302
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    ld b, $07
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    rrca
    ld c, $0e
    ld c, $0e
    add hl, bc
    ld e, a
    ld l, a
    sbc a
    ld a, [bc]
    rst $38
    rst $38
    sub $2b
    dec hl
    daa
    inc h
    ld bc, $0b2f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret c

    rst $38
    db $fd
    ld [de], a
    ld b, $08
    inc bc
    inc d
    inc d
    nop
    rst $38
    sub $ff
    ld b, $02
    dec c
    nop
    sub [hl]
    ld h, d
    jr nc, jr_056_4e78

    ld [hl], $36
    jr z, jr_056_4e7e

    jr z, @-$0d

    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    daa
    jr z, @+$27

    jr c, @+$2c

    ld h, d
    sub a
    pop af
    ld h, d
    ld h, d
    scf
    jr z, jr_056_4e9e

jr_056_4e68:
    scf
    jr nc, jr_056_4e93

    ld [hl], $f1
    daa
    jr z, @+$27

    jr c, jr_056_4e9c

    ld sp, $3024
    jr z, jr_056_4e68

    ld h, d

jr_056_4e78:
    ld h, d
    ld h, d
    ld [hl], $3c
    ld [hl], $30

jr_056_4e7e:
    jr z, jr_056_4eb6

    pop af
    ld h, d
    jr nc, jr_056_4eb5

    inc h
    jr nc, jr_056_4eaf

    jr nc, jr_056_4eb1

    ld [hl], $f1
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07

jr_056_4e93:
    ld [$2409], sp
    dec h
    ld h, $27
    jr z, jr_056_4ec4

    ld h, d

jr_056_4e9c:
    ld l, $28

jr_056_4e9e:
    inc l
    scf
    ld [hl-], a
    jr c, jr_056_4ed3

    jr z, jr_056_4edb

    pop af
    ld [hl], $3c
    jr c, @+$3f

    ld [hl-], a
    ld l, $38

jr_056_4ead:
    jr nc, jr_056_4ed7

jr_056_4eaf:
    ld [hl], $f1

jr_056_4eb1:
    scf
    ld [hl-], a
    ld l, $38

jr_056_4eb5:
    ld a, [hl+]

jr_056_4eb6:
    inc l
    ld sp, $3024
    jr z, jr_056_4ead

    ld h, d
    ld h, d
    ld h, d
    ld [hl], $3c
    jr c, jr_056_4ef4

jr_056_4ec3:
    inc h

jr_056_4ec4:
    jr nc, jr_056_4eee

    ldh a, [$62]
    ld h, d
    inc l
    scf
    jr z, jr_056_4efd

    ld sp, $3024
    jr z, jr_056_4ec3

    ld h, d

jr_056_4ed3:
    ld h, d
    ld h, d
    inc l
    scf

jr_056_4ed7:
    jr z, jr_056_4f09

    jr nc, @+$2a

jr_056_4edb:
    ld [hl], $f1
    ld [hl], $28
    inc l
    ld l, $24
    ld l, $38
    jr nc, jr_056_4f0e

    ld [hl], $f1
    ld h, d
    dec h
    scf
    cpl
    ld a, [hl-]
    inc l

jr_056_4eee:
    ld sp, $2830
    ld [hl], $f0
    ld h, d

jr_056_4ef4:
    dec h
    inc h
    scf
    scf
    cpl
    jr z, jr_056_4f2b

    jr z, jr_056_4f33

jr_056_4efd:
    pop af
    ld h, d
    ld h, d
    inc l
    scf
    jr z, jr_056_4f34

    jr nc, jr_056_4f2e

    ld [hl], $02
    pop af

jr_056_4f09:
    scf
    ld [hl-], a
    ld l, $38
    ld a, [hl+]

jr_056_4f0e:
    jr c, jr_056_4f40

    jr z, @+$38

    ld [bc], a
    pop af
    ld l, $24
    inc l
    ld a, [hl-]
    inc h
    jr nc, jr_056_4f43

    ld [hl], $00
    nop
    ldh a, [$2e]
    inc h
    inc l
    ld a, [hl-]
    inc h
    jr nc, jr_056_4f4e

    ld [hl], $00
    ld bc, $2ef1

jr_056_4f2b:
    inc h
    inc l
    ld a, [hl-]

jr_056_4f2e:
    inc h
    jr nc, jr_056_4f59

    ld [hl], $00

jr_056_4f33:
    ld [bc], a

jr_056_4f34:
    pop af
    ld l, $24
    inc l
    ld a, [hl-]
    inc h
    jr nc, jr_056_4f64

    ld [hl], $00
    inc bc
    pop af

jr_056_4f40:
    ld l, $24
    inc l

jr_056_4f43:
    ld a, [hl-]
    inc h
    jr nc, jr_056_4f6f

    ld [hl], $00
    inc b
    ldh a, [$2e]
    inc h
    inc l

jr_056_4f4e:
    ld a, [hl-]
    inc h
    jr nc, jr_056_4f7a

    ld [hl], $00
    dec b
    pop af
    ld l, $24
    inc l

jr_056_4f59:
    ld a, [hl-]
    inc h
    jr nc, jr_056_4f85

    ld [hl], $00
    ld b, $f1
    ld l, $24
    inc l

jr_056_4f64:
    ld a, [hl-]
    inc h
    jr nc, jr_056_4f90

    ld [hl], $00
    rlca
    pop af
    ld l, $24
    inc l

jr_056_4f6f:
    ld a, [hl-]
    inc h
    jr nc, jr_056_4f9b

    ld [hl], $00
    ld [$2ef0], sp
    inc h
    inc l

jr_056_4f7a:
    ld a, [hl-]
    inc h
    jr nc, jr_056_4fa6

    ld [hl], $00
    add hl, bc
    pop af
    ld h, d
    ld h, d
    ld h, d

jr_056_4f85:
    ld h, d
    dec h
    scf
    cpl
    jr nc, @+$2a

    ld [hl], $f1
    ld h, d
    ld h, d
    ld h, d

jr_056_4f90:
    dec h
    scf
    cpl
    jr nc, @+$2a

    ld [hl], $01
    pop af
    ld h, d
    ld h, d
    ld h, d

jr_056_4f9b:
    dec h
    scf
    cpl
    jr nc, jr_056_4fc8

    ld [hl], $02
    ldh a, [$62]
    ld h, d
    ld h, d

jr_056_4fa6:
    dec h
    scf
    cpl
    ld h, $30
    daa
    pop af
    ld h, d
    ld h, d
    dec h
    scf
    cpl
    jr nc, @+$2a

    ld [hl], $04
    pop af
    ld [hl], $37
    inc h
    add hl, hl
    add hl, hl
    jr nc, @+$2a

    ld [hl], $00
    pop af
    ld [hl], $37
    inc h
    add hl, hl
    add hl, hl
    jr nc, @+$2a

jr_056_4fc8:
    ld [hl], $01
    ldh a, [$28]
    ld sp, $2c27
    ld sp, $302a
    jr z, jr_056_500a

    pop af
    jr nc, jr_056_5009

    ld sp, $242b
    inc l
    jr nc, jr_056_5005

    ld [hl], $f1
    jr nc, jr_056_5013

    ld sp, $312c
    add hl, hl
    jr nc, jr_056_500f

    ld [hl], $f1
    scf
    ld [hl-], a
    ld l, $38
    ld a, [hl+]
    inc l
    jr nc, jr_056_5019

    ld [hl], $f0
    ld h, d
    daa
    jr z, jr_056_5027

    ld [hl-], a
    jr nc, @+$2a

    ld [hl], $00
    nop
    pop af
    daa
    jr z, jr_056_5031

    ld [hl-], a
    ld sp, $3024

jr_056_5005:
    jr z, jr_056_5007

jr_056_5007:
    nop
    pop af

jr_056_5009:
    ld h, d

jr_056_500a:
    dec h
    ld [hl-], a
    ld [hl-], a
    ld l, $30

jr_056_500f:
    jr z, jr_056_5047

    nop
    nop

jr_056_5013:
    pop af
    ld h, d
    ld [hl-], a
    dec h
    dec l
    scf

jr_056_5019:
    jr nc, jr_056_5043

    ld [hl], $00
    nop
    ldh a, [$2c]
    ld sp, $2439
    cpl
    inc l
    daa
    ld h, d

jr_056_5027:
    ld sp, $3038
    dec h
    jr z, jr_056_5062

    ld h, e
    ldh a, [$2c]
    ld c, e

jr_056_5031:
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l

jr_056_5043:
    ld h, d
    ld a, $62
    ld d, b

jr_056_5047:
    ld c, d
    ld a, $49
    ld c, c
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, a
    ld b, d
    pop af
    ccf
    ld a, $49
    ld c, c
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld a, $4a

jr_056_5062:
    ld a, $44
    ld b, d
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld a, $62
    ld b, h
    ld b, [hl]
    ld a, $4b
    ld d, c
    pop af
    ld b, e
    ld b, [hl]
    ld c, a
    ld b, d
    ld h, d
    ccf
    ld a, $49
    ld c, c
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld c, l
    ld b, [hl]
    ld c, c
    ld c, c
    ld a, $4f
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    pop af
    ld b, e
    ld b, [hl]
    ld c, a
    ld b, d
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld a, $49
    ld c, c
    ld h, d
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
    pop af
    ld a, $62
    ld d, b
    ld c, d
    ld a, $49
    ld c, c
    ld h, d
    ccf
    ld c, c
    ld a, $57
    ld b, d
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld a, $49
    ld c, c
    ld h, d
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
    pop af
    ld a, $62
    ld b, l
    ld d, d
    ld b, h
    ld b, d
    ld h, d
    ccf
    ld c, c
    ld a, $57
    ld b, d
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld a, $49
    ld c, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
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
    ld a, $62
    ccf
    ld b, [hl]
    ld b, h
    ld h, d
    ccf
    ld c, c
    ld a, $57
    ld b, d
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld a, $49
    ld c, c
    ld h, d
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
    pop af
    ld a, $4b
    ld h, d
    ld b, d
    ld d, l
    ld c, l
    ld c, c
    ld c, h
    ld d, b
    ld b, [hl]
    ld c, h
    ld c, e
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld a, $49
    ld c, c
    ld h, d
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
    pop af
    ld b, d
    ld d, l
    ld c, l
    ld c, c
    ld c, h
    ld d, b
    ld b, [hl]
    ld c, h
    ld c, e
    ld d, b
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld a, $49
    ld c, c
    ld h, d
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
    pop af
    ld a, $62
    dec hl
    jr c, jr_056_51ec

    jr z, jr_056_5226

    ld b, d
    ld d, l
    ld c, l
    ld c, c
    ld c, h
    ld d, b
    ld b, [hl]
    ld c, h
    ld c, e
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d

jr_056_51ec:
    ld d, b
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld a, $62
    ld d, h
    ld b, l
    ld b, [hl]
    ld c, a
    ld c, c
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, c
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld a, $49
    ld c, c
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
    ld a, $62

jr_056_5226:
    ld d, c
    ld c, h
    ld c, a
    ld c, e
    ld a, $41
    ld c, h
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld a, $49
    ld c, c
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
    ld a, $62
    ld b, l
    ld d, d
    ld c, a
    ld c, a
    ld b, [hl]
    ld b, b
    ld a, $4b
    ld b, d
    ldh a, [$29]
    ld c, a
    ld b, d
    ld b, d
    ld d, a
    ld b, d
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
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
    ld b, b
    ld b, d
    ldh a, [$37]
    ld d, d
    ld c, a
    ld c, e
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    pop af
    ld b, [hl]
    ld c, e
    ld d, c
    ld c, h
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
    ld a, $49
    ld c, c
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
    ld a, $f1
    ld b, e
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld b, c
    ld h, d
    ccf
    ld c, c
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld b, c
    ldh a, [$36]
    ld d, c
    ld c, a
    ld b, [hl]
    ld c, b
    ld b, d
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
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
    pop af
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld c, e
    ld b, [hl]
    ld c, e
    ld b, h
    ldh a, [$36]
    ld d, c
    ld c, a
    ld b, [hl]
    ld c, b
    ld b, d
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
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
    pop af
    ld a, $62
    ld d, c
    ld b, l
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ccf
    ld c, h
    ld c, c
    ld d, c
    ldh a, [$36]
    ld d, c
    ld c, a
    ld b, [hl]
    ld c, b
    ld b, d
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
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
    pop af
    ld d, c
    ld b, l
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ccf
    ld c, h
    ld c, c
    ld d, c
    ld d, b
    ldh a, [$2c]
    ld c, e
    ld d, b
    ld d, c
    ld a, $4b
    ld d, c
    ld c, c
    ld d, [hl]
    ld h, d
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
    ld a, $4b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ldh a, [$2c]
    ld c, e
    ld d, b
    ld d, c
    ld a, $4b
    ld d, c
    ld c, c
    ld d, [hl]
    ld h, d
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
    ld a, $49
    ld c, c
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$2e]
    ld c, e
    ld c, h
    ld b, b
    ld c, b
    ld d, b
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld b, b
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld a, $4b
    ld b, c
    pop af
    ld a, $49
    ld c, c
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$33]
    ld d, d
    ld d, c
    ld d, b
    ld h, d
    ld a, $4b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld c, c
    ld b, d
    ld b, d
    ld c, l
    ldh a, [$33]
    ld d, d
    ld d, c
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld c, c
    ld b, d
    ld b, d
    ld c, l
    ldh a, [$36]
    ld d, d
    ld d, b
    ld c, l
    ld b, d
    ld c, e
    ld b, c
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    pop af
    ld b, b
    ld a, $50
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld c, c
    ld c, c
    ld d, b
    ldh a, [$28]
    ld c, e
    ld b, h
    ld d, d
    ld c, c
    ld b, e
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
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
    ld a, $4b
    pop af
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, d
    ld d, b
    ld b, [hl]
    ld c, h
    ld c, e
    ldh a, [rNR52]
    ld c, h
    ld c, e
    ld b, e
    ld d, d
    ld d, b
    ld b, d
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    pop af
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$36]
    ld d, c
    ld b, d
    ld a, $49
    ld d, b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ld l, b
    ld h, d
    jr nc, jr_056_5476

    ldh a, [rNR50]
    ccf
    ld d, b
    ld c, h
    ld c, a
    ccf
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    jr nc, jr_056_5485

    ld h, d
    ld c, h
    ld b, e
    pop af
    ld a, $62
    ld d, b
    ld c, l
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld b, b
    ld a, $50
    ld d, c
    ld h, d
    ccf
    ld d, [hl]
    pop af
    ld a, $4b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ldh a, [$2f]
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld d, b
    ld h, d

jr_056_5476:
    ld a, $4b
    pop af
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ld l, b
    ld h, d
    daa
    jr z, jr_056_54ac

    jr z, @+$33

jr_056_5485:
    ld [hl], $28
    ldh a, [$2f]
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ld e, h
    ld h, d
    daa
    jr z, @+$2b

    jr z, @+$33

    ld [hl], $28
    ldh a, [$2c]
    ld c, e
    ld b, b
    ld c, a

jr_056_54ac:
    ld b, d
    ld a, $50
    ld b, d
    ld d, b
    ld h, d
    daa
    jr z, jr_056_54de

    jr z, jr_056_54e8

    ld [hl], $28
    pop af
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld a, $4b
    ld h, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ldh a, [$2c]
    ld c, e
    ld b, b
    ld c, a
    ld b, d
    ld a, $50
    ld b, d
    ld d, b
    ld h, d
    daa
    jr z, jr_056_54fc

    jr z, jr_056_5506

    ld [hl], $28
    pop af
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld a, $49

jr_056_54de:
    ld c, c
    ld h, d
    ld a, $49
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$27]

jr_056_54e8:
    ld b, d
    ld b, b
    ld c, a
    ld b, d
    ld a, $50
    ld b, d
    ld d, b
    ld h, d
    inc h
    ld a, [hl+]
    inc l
    cpl
    inc l
    scf
    inc a
    pop af
    ld c, h
    ld b, e
    ld h, d

jr_056_54fc:
    ld a, $4b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ldh a, [$27]

jr_056_5506:
    ld b, d
    ld b, b
    ld c, a
    ld b, d
    ld a, $50
    ld b, d
    ld d, b
    ld h, d
    inc h
    ld a, [hl+]
    inc l
    cpl
    inc l
    scf
    inc a
    pop af
    ld c, h
    ld b, e
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$2c]
    ld c, e
    ld b, b
    ld c, a
    ld b, d
    ld a, $50
    ld b, d
    ld d, b
    ld h, d
    inc h
    ld a, [hl+]
    inc l
    cpl
    inc l
    scf
    inc a
    pop af
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld a, $4b
    ld h, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ldh a, [$2c]
    ld c, e
    ld b, b
    ld c, a
    ld b, d
    ld a, $50
    ld b, d
    ld d, b
    ld h, d
    inc h
    ld a, [hl+]
    inc l
    cpl
    inc l
    scf
    inc a
    pop af
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld a, $49
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [rNR50]
    ld c, c
    ld c, c
    ld h, d
    ld a, $49
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    pop af
    ld c, d
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld c, a
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    pop af
    ccf
    ld c, a
    ld b, d
    ld a, $51
    ld b, l
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld c, h
    ld d, d
    ccf
    ld c, c
    ld b, d
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld a, $4b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ldh a, [$2c]
    ld c, e
    ld b, b
    ld c, a
    ld b, d
    ld a, $50
    ld b, d
    ld d, b
    pop af
    ld c, a
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, $4b
    ld b, b
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld c, c
    ld c, c
    ld d, b
    ldh a, [$35]
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
    ld h, d
    ld c, d
    ld a, $44
    ld b, [hl]
    ld b, b
    pop af
    ld b, b
    ld a, $50
    ld d, c
    ld h, d
    ccf
    ld d, [hl]
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
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld c, h
    ld c, e
    ld b, d
    ld h, d
    ld d, c
    ld d, d
    ld c, a
    ld c, e
    ldh a, [$35]
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
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    pop af
    ld d, b
    ld c, l
    ld b, d
    ld c, c
    ld c, c
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld b, b
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld c, a
    ld b, d
    ld b, b
    ld b, d
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    ldh a, [$37]
    ld c, a
    ld a, $4b
    ld d, b
    ld b, e
    ld c, h
    ld c, a
    ld c, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld d, c
    ld c, h
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld a, $4a
    ld b, d
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld b, b
    ld b, [hl]
    ld b, d
    ld d, b
    pop af
    ld a, $50
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
    ldh a, [$37]
    ld d, d
    ld c, a
    ld c, e
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld a, $49
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    pop af
    ld b, [hl]
    ld c, e
    ld d, c
    ld c, h
    ld h, d
    ld a, $62
    ld c, l
    ld c, a
    ld c, h
    ld d, c
    ld b, d
    ld b, b
    ld d, c
    ld b, [hl]
    ld d, e
    ld b, d
    pop af
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
    ldh a, [$2b]
    ld b, d
    ld a, $49
    ld d, b
    ld h, d
    ccf
    ld b, d
    ld d, c
    ld d, h
    ld b, d
    ld b, d
    ld c, e
    pop af
    inc bc
    nop
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    inc b
    nop
    ld h, d
    dec hl
    inc sp
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld a, $4b
    pop af
    ld a, $49
    ld c, c
    ld d, [hl]
    ldh a, [$2b]
    ld b, d
    ld a, $49
    ld d, b
    ld h, d
    ccf
    ld b, d
    ld d, c
    ld d, h
    ld b, d
    ld b, d
    ld c, e
    pop af
    rlca
    dec b
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    add hl, bc
    nop
    ld h, d
    dec hl
    inc sp
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    pop af
    ld a, $49
    ld c, c
    ld h, d
    ld a, $49
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$2b]
    ld b, d
    ld a, $49
    ld d, b
    ld h, d
    dec hl
    inc sp
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, d
    ld a, $55
    pop af
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld a, $4b
    ld h, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ldh a, [$2b]
    ld b, d
    ld a, $49
    ld d, b
    ld h, d
    ccf
    ld b, d
    ld d, c
    ld d, h
    ld b, d
    ld b, d
    ld c, e
    pop af
    add hl, bc
    nop
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld bc, $0002
    ld h, d
    dec hl
    inc sp
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    pop af
    ld a, $49
    ld c, c
    ld h, d
    ld a, $49
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$2b]
    ld b, d
    ld a, $49
    ld d, b
    ld h, d
    dec hl
    inc sp
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, d
    ld a, $55
    pop af
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld a, $49
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$35]
    ld b, d
    ld d, e
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ld a, $4b
    ld h, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ldh a, [$35]
    ld b, d
    ld d, e
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ld a, $4b
    ld h, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ldh a, [$35]
    ld b, d
    ld d, e
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld c, h
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    pop af
    ld a, $49
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    ccf
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld b, b
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld b, b
    ld c, h
    ld c, c
    ld c, c
    ld a, $4d
    ld d, b
    ld b, d
    ld d, b
    ldh a, [rNR52]
    ld d, d
    ld c, a
    ld b, d
    ld d, b
    ld h, d
    ld c, l
    ld c, h
    ld b, [hl]
    ld d, b
    ld c, h
    ld c, e
    ldh a, [rNR52]
    ld d, d
    ld c, a
    ld b, d
    ld d, b
    ld h, d
    ld c, l
    ld a, $4f
    ld a, $49
    ld d, [hl]
    ld d, b
    ld b, [hl]
    ld d, b
    pop af
    ld c, h
    ld c, a
    ld h, d
    ld d, h
    ld a, $48
    ld b, d
    ld d, b
    ld h, d
    ld d, d
    ld c, l
    pop af
    ld a, $4b
    ld h, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ldh a, [rNR52]
    ld d, d
    ld c, a
    ld b, d
    ld d, b
    ld h, d
    ld b, b
    ld c, h
    ld c, e
    ld b, e
    ld d, d
    ld d, b
    ld b, [hl]
    ld c, h
    ld c, e
    ldh a, [rNR51]
    ld c, a
    ld b, d
    ld a, $48
    ld d, b
    ld h, d
    ld a, $62
    ld b, b
    ld d, d
    ld c, a
    ld d, b
    ld b, d
    ldh a, [$33]
    ld c, a
    ld c, h
    ld d, c
    ld b, d
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    pop af
    ld c, c
    ld a, $4b
    ld b, c
    ld h, d
    ld b, l
    ld a, $57
    ld a, $4f
    ld b, c
    ld d, b
    pop af
    ld d, h
    ld b, l
    ld b, [hl]
    ld c, c
    ld b, d
    ld h, d
    ld d, c
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ldh a, [$35]
    ld b, d
    ld d, e
    ld b, d
    ld a, $49
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, a
    ld b, d
    pop af
    ld c, d
    ld a, $4d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld c, c
    ld a, $4b
    ld b, c
    ld d, b
    ld b, b
    ld a, $4d
    ld b, d
    ldh a, [rNR50]
    ld h, d
    ld c, a
    ld a, $4b
    ld b, c
    ld c, h
    ld c, d
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld c, c
    ld c, c
    ld e, [hl]
    pop af
    ld b, b
    ld a, $4b
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld b, h
    ld c, h
    ld c, h
    ld b, c
    ld h, d
    ld c, h
    ld c, a
    ld h, d
    ccf
    ld a, $41
    ldh a, [$f0]
    add hl, hl
    ld b, d
    ld a, $4f
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld a, $62
    ld c, a
    ld a, $4a
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
    ld c, a
    ld d, d
    ld b, d
    pop af
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, a
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld b, d
    ld c, e
    ld b, h
    ld d, c
    ld b, l
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
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
    ld h, d
    ld d, c
    ld c, h
    ld c, d
    ld c, h
    ld c, a
    ld c, a
    ld c, h
    ld d, h
    ldh a, [rNR50]
    ld h, d
    ld d, b
    ld d, d
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, c
    ld b, d
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld c, b
    ld c, e
    ld c, h
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
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, h
    ld c, a
    ld b, d
    ld a, $51
    pop af
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld a, $4b
    ld h, d
    ld a, $49
    ld c, c
    ld d, [hl]
    pop af
    ld c, h
    ld c, a
    ld h, d
    ld a, $4b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld a, $f1
    ld c, a
    ld d, d
    ld d, c
    ld b, l
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    ld h, d
    ld b, c
    ld b, d
    ld c, d
    ld c, h
    ld c, e
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, l
    ld d, d
    ld b, h
    ld b, d
    pop af
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld a, $4b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    pop af
    ld c, h
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, e
    ld b, d
    ld d, l
    ld d, c
    ld h, d
    ld d, c
    ld d, d
    ld c, a
    ld c, e
    ldh a, [$2d]
    ld d, d
    ld c, d
    ld c, l
    ld d, b
    ld h, d
    ld b, [hl]
    ld c, e
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, $46
    ld c, a
    pop af
    ld a, $4b
    ld b, c
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld c, h
    ld c, e
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, e
    ld b, d
    ld d, l
    ld d, c
    ld h, d
    ld d, c
    ld d, d
    ld c, a
    ld c, e
    ldh a, [$36]
    ld d, d
    ld b, b
    ld c, b
    ld d, b
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld a, $46
    ld c, a
    ld h, d
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld b, [hl]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    pop af
    ld c, h
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, e
    ld b, d
    ld d, l
    ld d, c
    ld h, d
    ld d, c
    ld d, d
    ld c, a
    ld c, e
    ldh a, [rNR51]
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ccf
    ld c, c
    ld a, $41
    ld b, d
    pop af
    ld d, b
    ld d, h
    ld c, h
    ld c, a
    ld b, c
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ldh a, [$37]
    ld b, l
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ccf
    ld c, h
    ld c, c
    ld d, c
    pop af
    ld d, b
    ld d, h
    ld c, h
    ld c, a
    ld b, c
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ldh a, [$3a]
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
    pop af
    ld d, b
    ld d, h
    ld c, h
    ld c, a
    ld b, c
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ldh a, [$29]
    ld c, a
    ld b, d
    ld b, d
    ld d, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, [hl]
    ld b, b
    ld b, d
    pop af
    ld d, b
    ld d, h
    ld c, h
    ld c, a
    ld b, c
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, h
    ld c, a
    ld b, d
    ld a, $51
    pop af
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, d
    ld b, d
    ld d, c
    ld a, $49
    pop af
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, h
    ld c, a
    ld b, d
    ld a, $51
    pop af
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, c
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld d, b
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, h
    ld c, a
    ld b, d
    ld a, $51
    pop af
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ccf
    ld b, d
    ld a, $50
    ld d, c
    ld d, b
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, h
    ld c, a
    ld b, d
    ld a, $51
    pop af
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ccf
    ld b, [hl]
    ld c, a
    ld b, c
    ld d, b
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, h
    ld c, a
    ld b, d
    ld a, $51
    pop af
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld c, h
    ld c, e
    ld h, d
    ld b, c
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld d, b
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld h, d
    ld b, h
    ld c, a
    ld b, d
    ld a, $51
    pop af
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, h
    ld c, a
    ld b, d
    ld a, $51
    pop af
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld c, d
    ld a, $51
    ld b, d
    ld c, a
    ld b, [hl]
    ld a, $49
    ld d, b
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld a, $49
    ld c, c
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
    ld c, d
    ld a, $4b
    ld d, [hl]
    ld h, d
    ld b, b
    ld d, d
    ld d, c
    ld d, b
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld d, c
    ld d, h
    ld b, [hl]
    ld b, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    pop af
    ld c, h
    ld c, e
    ld b, d
    ld h, d
    ld d, c
    ld d, d
    ld c, a
    ld c, e
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    inc b
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    pop af
    ld b, [hl]
    ld c, e
    ld h, d
    ld c, h
    ld c, e
    ld b, d
    ld h, d
    ld d, c
    ld d, d
    ld c, a
    ld c, e
    ldh a, [rNR52]
    ld a, $49
    ld c, c
    ld d, b
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld a, $62
    ccf
    ld a, $40
    ld c, b
    ld d, d
    ld c, l
    ldh a, [rNR52]
    ld a, $49
    ld c, c
    ld d, b
    ld h, d
    ld a, $62
    ld b, h
    ld c, a
    ld c, h
    ld d, d
    ld c, l
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
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld b, l
    ld b, d
    ld c, c
    ld c, l
    ldh a, [$37]
    ld d, h
    ld c, h
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    pop af
    ld c, h
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, e
    ld b, d
    ld d, l
    ld d, c
    pop af
    ld d, c
    ld d, d
    ld c, a
    ld c, e
    ldh a, [rNR50]
    ld c, c
    ld c, c
    ld c, h
    ld d, h
    ld d, b
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    pop af
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld d, d
    ld c, a
    ld c, e
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld a, [hl+]
    ld c, a
    ld b, d
    ld a, $51
    pop af
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld a, $4b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    pop af
    ld a, $51
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, c
    ld a, $50
    ld d, c
    ld h, d
    ld d, c
    ld d, d
    ld c, a
    ld c, e
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    pop af
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld c, h
    ld c, e
    ld b, d
    pop af
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld a, $4b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    pop af
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
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
    ld b, l
    ld b, [hl]
    ld c, a
    ld c, c
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, c
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
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
    ld a, $f1
    ld b, h
    ld b, [hl]
    ld a, $4b
    ld d, c
    ld h, d
    ld d, e
    ld a, $40
    ld d, d
    ld d, d
    ld c, d
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld c, h
    ld c, e
    pop af
    ld a, $49
    ld c, c
    ld h, d
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
    pop af
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld c, e
    ld b, [hl]
    ld c, e
    ld b, h
    ldh a, [$37]
    ld b, l
    ld c, a
    ld c, h
    ld d, h
    ld d, b
    ld h, d
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
    pop af
    ld c, h
    ld c, e
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
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
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, a
    ld b, d
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld b, [hl]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    pop af
    ld c, h
    ld c, e
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [rNR51]
    ld c, c
    ld c, h
    ld d, h
    ld d, b
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld a, $62
    ccf
    ld c, c
    ld a, $57
    ld b, d
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld b, [hl]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    pop af
    ld c, h
    ld c, e
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [rNR51]
    ld d, d
    ld c, a
    ld c, e
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
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
    ld a, $62
    ld b, c
    ld b, d
    ld d, e
    ld a, $50
    ld d, c
    ld a, $51
    ld b, [hl]
    ld c, e
    ld b, h
    pop af
    ld b, e
    ld c, c
    ld a, $4a
    ld b, d
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
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
    ld a, $4b
    pop af
    ld d, d
    ld c, e
    ld b, [hl]
    ld c, d
    ld a, $44
    ld b, [hl]
    ld c, e
    ld a, $3f
    ld c, c
    ld b, d
    ld h, d
    ccf
    ld c, c
    ld a, $57
    ld b, d
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld a, $49
    ld c, c
    ld h, d
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
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, e
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld b, c
    ld h, d
    ccf
    ld c, a
    ld b, d
    ld a, $51
    ld b, l
    ldh a, [$29]
    ld c, a
    ld b, d
    ld b, d
    ld d, a
    ld b, d
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    pop af
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld a, $49
    ld c, c
    ld h, d
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
    ld a, $f1
    ld d, e
    ld b, [hl]
    ld c, h
    ld c, c
    ld b, d
    ld c, e
    ld d, c
    ld h, d
    ld b, [hl]
    ld b, b
    ld b, d
    ld h, d
    ld d, b
    ld d, c
    ld c, h
    ld c, a
    ld c, d
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
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
    ld a, $4b
    pop af
    ld b, [hl]
    ld c, e
    ld b, b
    ld a, $4b
    ld b, c
    ld b, d
    ld d, b
    ld b, b
    ld b, d
    ld c, e
    ld d, c
    ld h, d
    ld a, $46
    ld c, a
    ldh a, [$2b]
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld b, d
    ld b, c
    pop af
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld c, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ccf
    ld c, c
    ld a, $50
    ld d, c
    pop af
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld b, e
    ld c, h
    ld b, d
    ld d, b
    ldh a, [rNR52]
    ld c, a
    ld b, d
    ld a, $51
    ld b, d
    ld d, b
    ld h, d
    ld a, $62
    ld b, l
    ld d, d
    ld b, h
    ld b, d
    pop af
    ld b, d
    ld d, l
    ld c, l
    ld c, c
    ld c, h
    ld d, b
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld d, b
    ld d, c
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
    ld d, b
    ld c, l
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld h, d
    ld a, $43
    ld b, e
    ld b, d
    ld b, b
    ld d, c
    ld d, b
    pop af
    ld a, $49
    ld c, c
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$33]
    ld c, h
    ld b, [hl]
    ld d, b
    ld c, h
    ld c, e
    ld d, b
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
    ld d, c
    ld b, l
    ld a, $51
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld a, $49
    ld c, c
    ld d, [hl]
    ldh a, [$36]
    ld b, d
    ld c, e
    ld b, c
    ld d, b
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
    ld d, c
    ld b, l
    ld a, $51
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld b, d
    ld b, c
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld c, c
    ld b, d
    ld b, d
    ld c, l
    ldh a, [$33]
    ld a, $4f
    ld a, $49
    ld d, [hl]
    ld d, a
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    pop af
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ldh a, [$36]
    ld b, d
    ld c, e
    ld b, c
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld c, c
    ld b, d
    ld b, d
    ld c, l
    ldh a, [$33]
    ld a, $4f
    ld a, $49
    ld d, [hl]
    ld d, a
    ld b, d
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    pop af
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$33]
    ld c, h
    ld b, [hl]
    ld d, b
    ld c, h
    ld c, e
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    pop af
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$36]
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld c, c
    ld d, [hl]
    ld h, d
    ld c, l
    ld c, h
    ld b, [hl]
    ld d, b
    ld c, h
    ld c, e
    ld d, b
    pop af
    ld a, $49
    ld c, c
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [rNR52]
    ld c, h
    ld c, e
    ld b, e
    ld d, d
    ld d, b
    ld b, d
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    pop af
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [rNR52]
    ld d, d
    ld c, a
    ld d, b
    ld b, d
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$30]
    ld a, $48
    ld b, d
    ld d, b
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, e
    ld b, d
    ld b, d
    ld c, c
    pop af
    ld b, l
    ld a, $4d
    ld c, l
    ld d, [hl]
    ldh a, [$2c]
    ld c, e
    ld d, b
    ld d, c
    ld a, $4b
    ld d, c
    ld c, c
    ld d, [hl]
    ld h, d
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
    ld a, $49
    ld c, c
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
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
    pop af
    ld a, $62
    ld d, b
    ld a, $4b
    ld b, c
    ld d, b
    ld d, c
    ld c, h
    ld c, a
    ld c, d
    ldh a, [rNR51]
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, c
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
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
    ccf
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    pop af
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ldh a, [$30]
    ld a, $48
    ld b, d
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    pop af
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    ld h, d
    ld c, a
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, $4b
    ld d, c
    pop af
    ld d, c
    ld c, h
    ld h, d
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
    ldh a, [$27]
    ld c, a
    ld c, h
    ld c, l
    ld d, b
    ld h, d
    ld a, $4b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ld l, b
    pop af
    jr nc, jr_056_6112

    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, h
    ld b, c
    ld b, c
    pop af
    ld b, c
    ld a, $4b
    ld b, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, b
    ld d, c
    ld b, d
    ld c, l
    ld d, b
    ldh a, [$36]
    ld d, c
    ld b, d
    ld a, $49
    ld d, b
    ld h, d
    ld a, $4b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ld l, b
    pop af
    jr nc, jr_056_6141

    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c

jr_056_6112:
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    pop af
    ld c, d
    ld b, d
    ld d, b
    ld c, d
    ld b, d
    ld c, a
    ld b, [hl]
    ld d, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, c
    ld a, $4b
    ld b, b
    ld b, d
    ldh a, [$36]
    ld b, [hl]
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, l
    ld d, b
    ld h, d
    ld a, $4b
    pop af
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ldh a, [$2f]
    ld d, d
    ld c, a

jr_056_6141:
    ld b, d
    ld d, b
    ld h, d
    ld a, $4b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld d, c
    ld c, h
    pop af
    ld a, $62
    ld d, c
    ld c, a
    ld a, $4d
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
    ld a, $4b
    ld b, b
    ld b, d
    ldh a, [$2f]
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, b
    ld h, d
    ld a, $4b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld d, c
    ld c, h
    ld c, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    pop af
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ldh a, [$2f]
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    daa
    jr z, jr_056_61c2

    jr z, jr_056_61cc

    ld [hl], $28
    pop af
    ccf
    ld d, [hl]
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld a, $4b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    pop af
    ld a, $62
    ld d, b
    ld b, [hl]
    ld b, b
    ld c, b
    ld c, c
    ld d, [hl]
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, b
    ld c, b
    ldh a, [$37]
    ld c, a
    ld b, [hl]

jr_056_61c2:
    ld c, l
    ld d, b
    ld h, d
    ld a, $4b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d

jr_056_61cc:
    ld d, [hl]
    ld h, d
    ccf
    ld d, [hl]
    pop af
    ld d, b
    ld d, h
    ld b, d
    ld b, d
    ld c, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, c
    ld b, d
    ld b, h
    ld d, b
    ldh a, [$37]
    ld c, a
    ld b, [hl]
    ld c, l
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$29]
    ld c, a
    ld b, d
    ld b, d
    ld d, a
    ld b, d
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
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
    ld a, $f1
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld h, d
    ld c, c
    ld c, h
    ld d, d
    ld b, c
    ld h, d
    ld c, a
    ld c, h
    ld a, $4f
    ldh a, [$36]
    ld d, d
    ld c, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ldh a, [$2c]
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, $51
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ld l, b
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ldh a, [$27]
    ld b, [hl]
    ld d, b
    ld c, l
    ld b, d
    ld c, c
    ld d, b
    ld h, d
    ld c, d
    ld a, $44
    ld b, [hl]
    ld b, b
    pop af
    ld b, d
    ld b, e
    ld b, e
    ld b, d
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld c, h
    ld c, e
    ld h, d
    ld a, $49
    ld c, c
    pop af
    ld a, $49
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [rNR52]
    ld d, d
    ld c, a
    ld b, d
    ld d, b
    ld h, d
    ld a, $4b
    ld d, [hl]
    ld h, d
    ld a, $46
    ld c, c
    ld c, d
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    pop af
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld a, $49
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$2a]
    ld c, a
    ld b, d
    ld a, $51
    ld c, c
    ld d, [hl]
    ld h, d
    ld d, h
    ld b, d
    ld a, $48
    ld b, d
    ld c, e
    ld d, b
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ldh a, [rNR52]
    ld c, a
    ld b, d
    ld a, $51
    ld b, d
    ld d, b
    ld h, d
    ld a, $62
    ld d, c
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    pop af
    ld b, e
    ld c, h
    ld b, h
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld d, d
    ld d, b
    ld c, l
    ld b, d
    ld c, e
    ld b, c
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
    ldh a, [$36]
    ld d, d
    ld c, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld h, d
    scf
    ld a, $51
    ld d, b
    ld d, d
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
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ldh a, [$36]
    ld d, d
    ld c, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld h, d
    daa
    ld b, [hl]
    ld a, $44
    ld c, h
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
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ldh a, [$36]
    ld d, d
    ld c, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld h, d
    ld [hl], $3e
    ld c, d
    ld d, b
    ld b, [hl]
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
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ldh a, [$36]
    ld d, d
    ld c, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld h, d
    dec h
    ld a, $57
    ld c, h
    ld c, h
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
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    pop af
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ldh a, [$37]
    ld b, l
    ld c, a
    ld c, h
    ld d, h
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld b, d
    ld c, c
    ld b, e
    ld h, d
    ld b, [hl]
    ld c, e
    pop af
    ld b, e
    ld c, a
    ld c, h
    ld c, e
    ld d, c
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld a, $4b
    ld h, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ldh a, [$37]
    ld a, $48
    ld b, d
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    pop af
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld a, $49
    ld c, c
    pop af
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$35]
    ld b, d
    ld b, e
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, d
    inc h
    ld b, [hl]
    ld c, a
    pop af
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld a, $4b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ldh a, [$35]
    ld b, d
    ld b, e
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, d
    inc h
    ld b, [hl]
    ld c, a
    pop af
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld a, $49
    ld c, c
    pop af
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$27]
    ld c, h
    ld b, c
    ld b, h
    ld b, d
    ld d, b
    ld h, d
    ld a, $4b
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ldh a, [$33]
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
    ld b, c
    ld b, d
    ld b, e
    ld b, d
    ld c, e
    ld b, c
    pop af
    ld b, [hl]
    ld d, c
    ld d, b
    ld b, d
    ld c, c
    ld b, e
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld a, $4b
    pop af
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ldh a, [$33]
    ld c, a
    ld b, d
    ld c, l
    ld a, $4f
    ld b, d
    ld d, b
    ld h, d
    ld a, $62
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    pop af
    ld b, c
    ld b, d
    ld b, e
    ld b, d
    ld c, e
    ld d, b
    ld b, d
    ld h, d
    ld a, $44
    ld a, $46
    ld c, e
    ld d, b
    ld d, c
    pop af
    ld a, $4b
    ld d, [hl]
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ldh a, [$36]
    ld d, d
    ld b, b
    ld c, b
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, $46
    ld c, a
    pop af
    ld d, c
    ld c, h
    ld h, d
    ld b, [hl]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    pop af
    ld c, h
    ld c, e
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$27]
    ld b, d
    ld b, e
    ld b, d
    ld c, e
    ld b, c
    ld d, b
    ld h, d
    ld a, $44
    ld a, $46
    ld c, e
    ld d, b
    ld d, c
    pop af
    ld a, $62
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
    ldh a, [$36]
    ld d, d
    ld d, b
    ld c, l
    ld b, d
    ld c, e
    ld b, c
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    pop af
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ld e, h
    ld h, d
    daa
    ld a, $4b
    ld b, b
    ld b, d
    pop af
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ldh a, [$36]
    ld d, d
    ld d, b
    ld c, l
    ld b, d
    ld c, e
    ld b, c
    ld d, b
    ld h, d
    ld a, $4b
    pop af
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ld l, b
    ld h, d
    inc h
    ld b, [hl]
    ld c, a
    pop af
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ldh a, [$35]
    ld b, d
    ld d, b
    ld d, c
    ld c, h
    ld c, a
    ld b, d
    ld d, b
    ld h, d
    dec b
    nop
    nop
    ld h, d
    dec hl
    inc sp
    pop af
    ccf
    ld d, [hl]
    ld h, d
    ld c, d
    ld b, d
    ld b, c
    ld b, [hl]
    ld d, c
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ldh a, [$35]
    ld b, d
    ld d, b
    ld d, c
    ld c, h
    ld c, a
    ld b, d
    ld d, b
    ld h, d
    ccf
    ld b, d
    ld d, c
    ld d, h
    ld b, d
    ld b, d
    ld c, e
    pop af
    rlca
    nop
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld [$6200], sp
    dec hl
    inc sp
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld a, $49
    ld c, c
    pop af
    ld a, $49
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$35]
    ld b, d
    ld d, e
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld a, $49
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$35]
    ld b, d
    ld d, e
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld a, $49
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$f0]
    ld h, $3e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld c, a
    ld a, $4b
    ld d, b
    ld b, e
    ld c, h
    ld c, a
    ld c, d
    ld d, b
    pop af
    ld b, [hl]
    ld c, e
    ld d, c
    ld c, h
    ld h, d
    ld a, $62
    ld b, c
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, h
    ld c, a
    ld b, d
    ld a, $51
    pop af
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, h
    ld c, a
    ld b, d
    ld a, $51
    pop af
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ccf
    ld d, d
    ld b, h
    ld d, b
    ldh a, [$2c]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, h
    ld c, a
    ld b, d
    ld a, $51
    pop af
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, l
    ld c, c
    ld a, $4b
    ld d, c
    ld d, b
    ldh a, [$30]
    ld c, h
    ld d, b
    ld d, c
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
    ld d, e
    ld b, d
    pop af
    ld d, b
    ld d, h
    ld c, h
    ld c, a
    ld b, c
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ldh a, [$30]
    ld a, $48
    ld b, d
    ld d, b
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, e
    ld b, d
    ld b, d
    ld c, c
    pop af
    ld d, b
    ld b, [hl]
    ld b, b
    ld c, b
    ldh a, [$f0]
    ld c, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld c, h
    ld c, [hl]
    ld h, e
    ld c, [hl]
    sbc e
    ld c, [hl]
    rst $00
    ld c, [hl]
    di
    ld c, [hl]
    rra
    ld c, a
    ld c, e
    ld c, a
    ld [hl], a
    ld c, a
    and e
    ld c, a
    bit 1, a
    di
    ld c, a
    rra
    ld d, b
    cpl
    ld d, b
    ld d, [hl]
    ld d, b
    ld a, l
    ld d, b
    and d
    ld d, b
    call nc, Call_000_0550
    ld d, c
    add hl, sp
    ld d, c
    ld l, d
    ld d, c
    sbc c
    ld d, c
    adc $51
    rst $38
    ld d, c
    ld l, $52
    ld e, a
    ld d, d
    ld a, h
    ld d, d
    sub a
    ld d, d
    jp nz, $e552

    ld d, d
    inc c
    ld d, e
    ld [hl-], a
    ld d, e
    ld d, b
    ld d, e
    ld [hl], c
    ld d, e
    sub a
    ld d, e
    xor [hl]
    ld d, e
    ret z

    ld d, e
    push af
    ld d, e
    ld e, $54
    inc sp
    ld d, h
    ld b, h
    ld d, h
    ld l, a
    ld d, h
    adc b
    ld d, h
    xor b
    ld d, h
    add $54
    rst $20
    ld d, h
    dec b
    ld d, l
    ld h, $55
    ld b, h
    ld d, l
    ld h, l
    ld d, l
    sbc b
    ld d, l
    cp a
    ld d, l
    add sp, $55
    ld a, [de]
    ld d, [hl]
    ld c, l
    ld d, [hl]
    ld a, d
    ld d, [hl]
    xor d
    ld d, [hl]
    ret nc

    ld d, [hl]
    ld a, [$1656]
    ld d, a
    ld b, b
    ld d, a
    ld e, a
    ld d, a
    ld l, a
    ld d, a
    ld a, a
    ld d, a
    or c
    ld d, a
    cp [hl]
    ld d, a
    ld [c], a
    ld d, a
    ld a, [c]
    ld d, a
    ld bc, $2c58
    ld e, b
    ld d, h
    ld e, b
    ld [hl], a
    ld e, b
    ld a, b
    ld e, b
    adc b
    ld e, b
    cp b
    ld e, b
    jp c, $0258

    ld e, c
    cpl
    ld e, c
    ld c, l
    ld e, c
    ld a, a
    ld e, c
    xor a
    ld e, c
    push hl
    ld e, c
    nop
    ld e, d
    add hl, de
    ld e, d
    ld [hl], $5a
    ld d, b
    ld e, d
    ld [hl], a
    ld e, d
    sbc b
    ld e, d
    cp b
    ld e, d
    rst $10
    ld e, d
    rst $30
    ld e, d
    rla
    ld e, e
    ld a, [hl-]
    ld e, e
    ld l, b
    ld e, e
    add d
    ld e, e
    sbc [hl]
    ld e, e
    or c
    ld e, e
    call nc, $f15b
    ld e, e
    jr jr_056_6771

    ld c, e
    ld e, h
    ld l, l
    ld e, h
    sub a
    ld e, h
    cp a
    ld e, h
    db $ed
    ld e, h
    rrca
    ld e, l
    ld b, d
    ld e, l
    ld [hl], l
    ld e, l
    and b
    ld e, l
    rst $08
    ld e, l
    dec b
    ld e, [hl]
    add hl, de
    ld e, [hl]
    ld d, c
    ld e, [hl]
    ld a, [hl]
    ld e, [hl]
    xor h
    ld e, [hl]
    db $db
    ld e, [hl]
    inc c
    ld e, a
    dec [hl]
    ld e, a
    ld h, l
    ld e, a
    sub b
    ld e, a
    xor d
    ld e, a
    ret nz

    ld e, a
    call nc, $f05f
    ld e, a
    dec b
    ld h, b
    jr jr_056_67a9

    dec l
    ld h, b
    ld c, [hl]
    ld h, b
    ld [hl], e
    ld h, b
    sbc h
    ld h, b
    call $fb60
    ld h, b
    ld a, [hl+]
    ld h, c
    ld a, $61
    ld h, [hl]
    ld h, c
    adc a
    ld h, c
    cp a
    ld h, c
    db $e3
    ld h, c
    push af
    ld h, c
    rra
    ld h, d
    jr nc, jr_056_67c9

    ld c, e
    ld h, d
    ld l, a
    ld h, d
    sub c
    ld h, d
    xor e
    ld h, d
    rst $10
    ld h, d

jr_056_6771:
    ld [bc], a
    ld h, e
    dec l
    ld h, e
    ld e, b
    ld h, e
    add e
    ld h, e
    or h
    ld h, e
    db $db
    ld h, e
    nop
    ld h, h
    add hl, hl
    ld h, h
    ld a, [hl-]
    ld h, h
    ld l, b
    ld h, h
    sub l
    ld h, h
    ret z

    ld h, h
    add sp, $64
    inc c
    ld h, l
    ld a, [hl+]
    ld h, l
    ld c, b
    ld h, l
    ld [hl], e
    ld h, l
    add [hl]
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l

jr_056_67a9:
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l

jr_056_67c9:
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc d
    ld h, l
    cp d
    ld h, l
    jp c, $f865

    ld h, l
    jr jr_056_6881

    ld [hl], $66
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    jr nz, jr_056_6869

jr_056_6869:
    ld bc, $00ff
    rst $38
    add $01
    ld [bc], a
    ld bc, $01fe
    ld [bc], a
    inc bc
    ld bc, $0001
    xor $ff
    xor $ff
    cp $ff
    sub $01
    ld [bc], a

jr_056_6881:
    nop
    jr nz, jr_056_6884

jr_056_6884:
    ld bc, $82ff
    rst $38
    jp nz, $a2ff

    rst $38
    sub d
    rst $38
    adc d
    rst $38
    add [hl]
    rst $38
    add d
    rst $38
    nop
    rst $38
    jr c, @+$01

    ld b, h
    rst $38
    add d
    ld bc, $0114
    ld b, h
    rst $38
    jr c, @+$01

    nop
    jr nz, jr_056_68a5

jr_056_68a5:
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    sub d
    rst $38
    ld d, h
    rst $38
    jr c, @+$01

    ld d, h
    rst $38
    sub d
    rst $38
    stop
    dec b
    dec b
    dec b
    rst $38
    db $fc
    ld bc, $0f01
    rrca
    ccf
    ccf
    ld a, h
    ld a, h
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    dec b
    ld e, $01
    add b
    add b
    dec b
    rst $38
    db $f4
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    dec b
    rst $38
    or $f8
    ld hl, sp+$1c
    dec b
    ld b, b
    dec bc
    rrca
    rrca
    rrca
    rrca
    ld c, $05
    ld d, h
    rlca
    dec b
    ld e, $00
    dec b
    rst $38
    ld hl, sp-$40
    ret nz

    ld hl, sp-$08
    cp $fe
    rra
    rra
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $ff05
    db $f4
    add c
    add c
    add e
    add e
    jp $c3c3


    jp $0707


    rra
    rra
    ld a, [hl]
    ld a, [hl]
    ldh a, [$f0]
    ret nz

    ret nz

    add b
    add b
    dec b
    inc h
    nop
    dec b
    ld e, $00
    inc bc
    inc bc
    dec b
    ld h, h
    ld a, [bc]
    ldh a, [$f0]
    ld a, b
    ld a, b
    inc e
    inc e
    dec b
    ld d, h
    nop
    ld b, $06
    ld bc, $0701
    rlca
    dec b
    ld d, d
    nop
    rrca
    rrca
    rlca
    rlca
    dec b
    and h
    nop
    dec b
    ld h, b
    ld b, $c0
    ret nz

    db $fc
    db $fc
    ld a, a
    ld a, a
    db $fc
    db $fc
    db $fc
    db $fc
    dec b
    ld h, [hl]
    ld [$ffff], sp
    ldh [$e0], a
    ldh a, [$f0]
    ld a, h
    ld a, h
    ccf
    ccf
    rrca
    rrca
    dec b
    ld a, [hl]
    nop
    dec b
    ld h, d
    inc b
    add b
    add b
    dec b
    ld h, b
    ld [bc], a
    dec b
    ld [hl-], a
    ld b, $05
    jr nc, jr_056_697a

    dec b
    ld b, b

jr_056_697a:
    ld a, [bc]
    nop
    nop
    dec b
    ld d, h
    ld [$0e0e], sp
    dec b
    rst $38
    ld hl, sp+$05
    ld h, b
    ld [bc], a
    ld bc, $0501
    ld a, b
    nop
    rrca
    rrca
    cp $fe
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    jp $83c3


    add e
    add c
    add c
    dec b
    rst $38
    or $05
    sbc d
    nop
    dec b
    or d
    nop
    ld a, [hl]
    ld a, [hl]
    rra
    rra
    rlca
    rlca
    dec b
    rst $38
    or $03
    inc bc
    dec b
    ld h, b
    ld [bc], a
    dec b
    ld d, h
    nop
    inc e
    inc e
    ld a, b
    ld a, b
    dec b
    sub [hl]
    nop
    dec b
    rst $38
    ld a, [$5005]
    nop
    nop
    nop
    dec b
    ld a, h
    ld d, $05
    ld a, [bc]
    inc d
    ld a, [hl]
    ld a, [hl]
    dec b
    ret z

    nop
    rra
    rra
    dec b
    ld e, b
    db $10
    dec b
    rst $38
    ld a, [c]
    jr nz, jr_056_69e0

    call nc, Call_000_0515
    rst $38
    ld a, [c]

jr_056_69e0:
    ld [de], a
    ld [de], a
    ld a, [de]
    ld a, [de]
    ld d, $16
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    dec b
    add d
    inc d
    dec b
    ld a, h
    nop
    dec b
    ld a, h
    ld b, $05
    inc h
    ld b, $05
    rst $38
    ld a, [c]
    ldh a, [$f0]
    add b
    add b
    ldh [$e0], a
    add b
    add b
    ldh a, [$f0]
    dec b
    rst $38
    ld a, [c]
    inc e
    inc e
    ld [de], a
    ld [de], a
    dec b
    inc h
    jr nz, jr_056_6a13

    db $ec
    inc d
    ld bc, $0201

jr_056_6a13:
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    inc d
    ld b, b
    ld b, b
    ret nz

    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    dec b
    rst $38
    ld a, [c]
    jr nc, jr_056_6a5a

    ld c, b
    ld c, b
    ld b, b
    ld b, b
    ld c, b
    ld c, b
    jr nc, jr_056_6a62

    dec b
    rst $38
    ld a, [c]
    ld c, $0e
    inc b
    dec b
    ld h, [hl]
    inc hl
    dec b
    ld a, [bc]
    inc b
    dec b
    or $1a
    dec b
    ld hl, sp+$18
    dec b
    ret nc

    ld d, $c0
    ret nz

    dec b
    sbc d
    inc d
    inc a
    inc a
    jr nz, jr_056_6a70

    jr c, jr_056_6a8a

    jr nz, jr_056_6a74

    inc a
    inc a
    dec b
    and b
    rst $38
    ld c, l

jr_056_6a5a:
    dec b
    dec c
    ccf
    ld c, l
    dec b
    ld l, l
    ccf
    ld c, l

jr_056_6a62:
    dec b
    call $4d3f
    dec b
    dec l
    ld c, a
    ld c, l
    dec b
    adc l
    ld c, a
    ld c, l
    dec b
    db $ed

jr_056_6a70:
    ld c, [hl]
    ld b, b
    ld [bc], a
    inc b

jr_056_6a74:
    inc b
    rst $38
    db $fc
    ld bc, $0f01
    rrca
    ccf
    ccf
    ld a, h
    ld a, h
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    inc b
    ld e, $01
    add b

jr_056_6a8a:
    add b
    inc b
    rst $38
    db $f4
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    inc b
    rst $38
    or $f8
    ld hl, sp+$1c
    inc b
    ld b, b
    dec bc
    rrca
    rrca
    rrca
    rrca
    ld c, $04
    ld d, h
    rlca
    inc b
    ld e, $00
    inc b
    rst $38
    ld hl, sp-$40
    ret nz

    ld hl, sp-$08
    cp $fe
    rra
    rra
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $ff04
    db $f4
    add c
    add c
    add e
    add e
    jp $c3c3


    jp $0707


    rra
    rra
    ld a, [hl]
    ld a, [hl]
    ldh a, [$f0]
    ret nz

    ret nz

    add b
    add b
    inc b
    inc h
    nop
    inc b
    ld e, $00
    inc bc
    inc bc
    inc b
    ld h, h
    ld a, [bc]
    ldh a, [$f0]
    ld a, b
    ld a, b
    inc e
    inc e
    inc b
    ld d, h
    nop
    ld b, $06
    ld bc, $0701
    rlca
    inc b
    ld d, d
    nop
    rrca
    rrca
    rlca
    rlca
    inc b
    and h
    nop
    inc b
    ld h, b
    ld b, $c0
    ret nz

    db $fc
    db $fc
    ld a, a
    ld a, a
    db $fc
    db $fc
    db $fc
    db $fc
    inc b
    ld h, [hl]
    ld [$ffff], sp
    ldh [$e0], a
    ldh a, [$f0]
    ld a, h
    ld a, h
    ccf
    ccf
    rrca
    rrca
    inc b
    ld a, [hl]
    nop
    inc b
    ld h, d
    inc b
    add b
    add b
    inc b
    ld h, b
    ld [bc], a
    inc b
    ld [hl-], a
    ld b, $04
    jr nc, jr_056_6b25

    inc b
    ld b, b

jr_056_6b25:
    ld a, [bc]
    nop
    nop
    inc b
    ld d, h
    ld [$0e0e], sp
    inc b
    rst $38
    ld hl, sp+$04
    ld h, b
    ld [bc], a
    ld bc, $0401
    ld a, b
    nop
    rrca
    rrca
    cp $fe
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    jp $83c3


    add e
    add c
    add c
    inc b
    rst $38
    or $04
    sbc d
    nop
    inc b
    or d
    nop
    ld a, [hl]
    ld a, [hl]
    rra
    rra
    rlca
    rlca
    inc b
    rst $38
    or $03
    inc bc
    inc b
    ld h, b
    ld [bc], a
    inc b
    ld d, h
    nop
    inc e
    inc e
    ld a, b
    ld a, b
    inc b
    sub [hl]
    nop
    inc b
    rst $38
    ld a, [$5004]
    nop
    nop
    nop
    inc b
    ld a, h
    ld d, $04
    ld a, [bc]
    inc d
    ld a, [hl]
    ld a, [hl]
    inc b
    ret z

    nop
    rra
    rra
    inc b
    ld e, b
    db $10
    inc b
    rst $38
    ld a, [c]
    jr nz, jr_056_6b8a

    call nc, $0415
    rst $38

jr_056_6b8a:
    ld a, [c]
    ld [de], a
    ld [de], a
    ld a, [de]
    ld a, [de]
    ld d, $16
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    inc b
    add d
    inc d
    inc b
    ld a, h
    nop
    inc b
    ld a, h
    ld b, $04
    inc h
    ld b, $04
    rst $38
    ld a, [c]
    ldh a, [$f0]
    add b
    add b
    ldh [$e0], a
    add b
    add b
    ldh a, [$f0]
    inc b
    rst $38
    ld a, [c]
    inc e
    inc e
    ld [de], a
    ld [de], a
    inc b
    inc h
    jr nz, @+$06

    db $ec
    inc d
    ld bc, $0201
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc bc
    ld bc, $01ff
    rst $38
    cp $18
    ld bc, $0712
    rra
    rst $38
    nop
    rst $38
    inc a
    ld bc, $0712
    inc a
    rst $38
    nop
    rst $38
    ld [hl], c
    rst $38
    reti


    rst $38
    pop bc
    ld bc, $0136
    reti


    rst $38
    ld [hl], c
    rst $38
    nop
    rst $38
    di
    rst $38
    add e
    rst $38
    add e
    ld bc, $0542
    nop
    rst $38
    inc hl
    rst $38
    ld h, $ff
    and a
    rst $38
    and e
    rst $38
    ld h, c
    rst $38
    ld h, h
    rst $38
    daa
    rst $38
    nop
    rst $38
    rst $08
    rst $38
    ld c, h
    rst $38
    inc c
    rst $38
    adc a
    rst $38
    call z, $ccff
    rst $38
    adc a
    rst $38
    nop
    rst $38
    sbc [hl]
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    sbc e
    ld bc, $0174
    sbc [hl]
    ld bc, $0f00
    nop
    ld a, c
    rst $38
    ld h, l
    rst $38
    ld h, h
    rst $38
    ld a, b
    rst $38
    ld h, h
    ld bc, $0196
    nop
    rst $38
    ld [$98ff], sp
    rst $38
    sub b
    rst $38
    ldh a, [rIE]
    ld h, b
    ld bc, $01aa
    nop
    rst $38
    inc bc
    ld bc, $09b2
    nop
    rst $38
    daa
    rst $38
    inc hl
    rst $38
    and e
    rst $38
    and e
    rst $38
    ld h, e
    rst $38
    ld h, e
    ld bc, $015e
    sbc c
    rst $38
    add hl, de
    rst $38
    dec e
    rst $38
    dec e
    ld bc, $0174
    sbc c
    rst $38
    nop
    rst $38
    ccf
    rst $38
    inc c
    ld bc, $07e4
    nop
    rst $38
    ld a, $ff
    jr nc, @+$01

    jr nc, jr_056_6c72

    ld a, [c]

jr_056_6c72:
    dec b
    nop
    ld bc, $019a
    ld [hl], h
    rst $38
    ld [hl], h
    rst $38
    ld l, h
    rst $38
    ld l, h
    rst $38
    ld h, h
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    reti


    ld bc, $1514
    ldh a, [rIE]
    nop
    rst $38
    ldh [rIE], a
    or b
    ld bc, $1524
    ldh [rSB], a
    and b
    rst $38
    ld c, l
    ld bc, $1f8f
    ld c, l
    ld bc, $1fef
    ld c, l
    ld bc, $2f4f
    ld c, l
    ld bc, $2faf
    dec a
    sub b
    nop
    ld bc, $00ff
    rst $38
    ldh a, [rIE]
    adc b
    rst $38
    adc b
    ld bc, $0502
    nop
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    add b
    ld bc, $0512
    nop
    rst $38
    ld [hl], b
    rst $38
    adc b
    rst $38
    add b
    rst $38
    cp h
    rst $38
    adc b
    rst $38
    sbc b
    rst $38
    ld l, b
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    ld b, [hl]
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    ld b, h
    ld bc, $013a
    ld bc, $0631
    call nz, Call_000_3c01
    dec b
    ld bc, $023b
    ld bc, $064b
    ld h, h
    rst $38
    ld d, h
    rst $38
    ld d, h
    rst $38
    ld c, h
    ld bc, $033c
    jr c, @+$01

    ld b, h
    rst $38
    ld b, b
    rst $38
    ld e, [hl]
    rst $38
    ld b, h
    rst $38
    ld c, h
    rst $38
    inc [hl]
    rst $38
    nop
    rst $38
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    sub b
    nop
    ld bc, $00ff
    rst $38
    adc b
    ld bc, $0302
    ld d, b
    rst $38
    ld d, b
    rst $38
    jr nz, jr_056_6d20

    nop

jr_056_6d20:
    rlca
    ld bc, $0003
    adc a
    rst $38
    nop
    rst $38
    ld [$2201], sp
    rlca
    ld bc, $001f
    ld [bc], a
    rst $38
    dec b
    ld bc, HeaderTitle
    rrca
    rst $38
    ld [$88ff], sp
    rst $38
    nop
    rst $38
    rlca
    ld bc, $0122
    dec bc
    rst $38
    adc b
    rst $38
    adc c
    rst $38
    add [hl]
    ld bc, $0140
    add h
    rst $38
    inc b
    rst $38
    rst $00
    rst $38
    add h
    rst $38
    add h
    rst $38
    add a
    rst $38
    nop
    rst $38
    rst $00
    rst $38
    inc b
    ld bc, $0156
    dec b
    rst $38
    inc b
    rst $38
    call nz, Call_000_00ff
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    ld bc, $0370
    nop
    rst $38
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    sub b
    nop
    ld bc, $00ff
    rst $38
    ld hl, sp-$01
    jr nz, jr_056_6d88

    inc b

jr_056_6d88:
    rlca
    nop
    rst $38
    jr nz, @+$01

    ld d, b
    ld bc, $0114
    ld hl, sp-$01
    adc b
    rst $38
    adc b
    rst $38
    nop
    rst $38
    add b
    ld bc, $0722
    ld hl, sp-$01
    nop
    rst $38
    add a
    ld bc, $011c
    add a
    rst $38
    add b
    ld bc, $0136
    nop
    rst $38
    ld [$8dff], sp
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    ld bc, $011c
    ld [$00ff], sp
    rst $38
    add d
    rst $38
    add l
    ld bc, $0154
    adc a
    ld bc, $031c
    ld [$0cff], sp
    ld bc, HeaderSGBFlag
    adc c
    ld bc, $0f1c
    nop
    add b
    rst $38
    nop
    rst $38
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    sub b
    nop
    ld bc, $00ff
    rst $38
    adc b
    rst $38
    ret c

    rst $38
    xor b
    rst $38
    xor b
    rst $38
    adc b
    ld bc, $010a
    nop
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    add b
    ld bc, $0512
    ld bc, $0e01
    ld [hl], b
    ld bc, $030a
    ld bc, $000b
    ld [hl], b
    rst $38
    nop
    rst $38
    ldh a, [rSB]
    ld a, [bc]
    ld bc, $fff0
    and b
    rst $38
    sub b
    ld bc, $010e
    jr nz, jr_056_6e17

    ld d, d

jr_056_6e17:
    add hl, bc
    ld bc, $0e11
    ld bc, $0033
    add b
    rst $38
    ld [hl], b
    rst $38
    ld [$3c01], sp
    inc bc
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    sub b
    nop
    ld bc, $00ff
    rst $38
    ldh a, [rIE]
    adc b
    rst $38
    adc b
    ld bc, $0502
    nop
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    add b
    ld bc, $0512
    nop
    ld bc, HeaderLogo
    adc b
    rst $38
    xor b
    rst $38
    xor b
    rst $38
    ret c

    rst $38
    adc b
    rst $38
    nop
    rst $38
    add h
    ld bc, $0732
    add a
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ld [$4401], sp
    dec b
    rst $08
    ld bc, $0140
    ld bc, $0005
    adc a
    ld bc, HeaderLogo
    rrca
    rst $38
    nop
    rst $38
    adc a
    ld bc, HeaderNewLicenseeCode
    adc a
    rst $38
    ld a, [bc]
    rst $38
    add hl, bc
    ld bc, $012e
    nop
    ld bc, $0114
    ld bc, $f0ff
    ld bc, $0073
    nop
    rst $38
    jr @+$01

    jr jr_056_6e92

    ld [hl], b

jr_056_6e92:
    ld bc, $8301
    ld bc, $0090
    ld bc, $00ff
    rst $38
    ldh a, [rIE]
    adc b
    rst $38
    adc b
    rst $38
    ldh a, [rIE]
    add b
    ld bc, $010a
    nop
    rst $38
    ld hl, sp+$01
    ld a, [bc]
    ld bc, $1301
    inc b
    nop
    rst $38
    jr nz, @+$01

    ld d, b
    ld bc, $0124
    ld hl, sp+$01
    inc b
    ld bc, $ff00
    ld [hl], b
    rst $38
    adc b
    ld bc, $030a
    adc b
    rst $38
    ld [hl], b
    ld bc, $0f10
    nop
    ld bc, $0f51
    dec e
    jr @+$01

    jr jr_056_6ed5

    ld a, [hl]

jr_056_6ed5:
    ld b, $90
    nop
    ld bc, $00ff
    rst $38
    ldh a, [rIE]
    adc b
    rst $38
    adc b
    ld bc, $0502
    ld bc, $0601
    and b
    rst $38
    sub b
    rst $38
    adc b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld d, b
    ld bc, $0124
    ld hl, sp+$01
    inc b
    ld bc, $0100
    inc b
    ld bc, $0501
    nop
    ld bc, $0025
    jr nz, @+$01

    nop
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    add b
    ld bc, $0542
    ld bc, $0e11
    ld bc, $0237
    jr nz, jr_056_6f18

    ld l, b

jr_056_6f18:
    inc bc
    ld bc, $f0ff
    ld bc, $0a71
    jr @+$01

    jr jr_056_6f24

    ld a, [hl]

jr_056_6f24:
    ld b, $90
    nop
    ld bc, $00ff
    rst $38
    ld [hl], b
    rst $38
    adc b
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    ld [$88ff], sp
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    jr nz, jr_056_6f40

    inc d

jr_056_6f40:
    rlca
    nop
    rst $38
    ldh a, [rIE]
    adc b
    rst $38
    adc b
    rst $38
    ldh a, [rIE]
    and b
    rst $38
    sub b
    rst $38
    adc b
    ld bc, $0110
    add b
    rst $38
    add b
    ld bc, $0532
    nop
    rst $38
    adc b
    rst $38
    ret z

    rst $38
    xor b
    rst $38
    xor b
    rst $38
    sbc b
    ld bc, $0124
    ld bc, $0401
    cp h
    rst $38
    adc b
    rst $38
    sbc b
    rst $38
    ld l, b
    ld bc, $0f10
    nop
    ld bc, $0025
    adc b
    rst $38
    ld hl, sp+$01
    ld [hl], d
    inc bc
    nop
    rst $38
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    sub b
    nop
    ld bc, $00ff
    rst $38
    jr nz, @+$01

    ld d, b
    ld bc, HeaderLogo
    ld hl, sp-$01
    adc b
    rst $38
    adc b
    rst $38
    nop
    rst $38
    adc b
    rst $38
    ret z

    rst $38
    xor b
    rst $38
    xor b
    rst $38
    sbc b
    ld bc, $030c
    ld [hl], b
    rst $38
    adc b
    rst $38
    add b
    rst $38
    cp h
    rst $38
    adc b
    rst $38
    sbc b
    rst $38
    ld l, b
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    add b
    ld bc, $0532
    nop
    rst $38
    ldh a, [rSB]
    inc c
    ld bc, $fff0
    and b
    rst $38
    sub b
    ld bc, $010e
    ld bc, $0f51
    dec e
    jr @+$01

    jr jr_056_6fd9

    ld a, [hl]

jr_056_6fd9:
    ld b, $90
    nop
    ld bc, $00ff
    rst $38
    ld [$0201], sp
    inc bc
    adc b
    rst $38
    adc b
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    ld [hl], b
    ld bc, $010a
    ld bc, $0215
    ld bc, $000f
    ld bc, $000b
    ld d, b
    rst $38
    jr nz, @+$03

    jr z, jr_056_7002

    ld bc, $f0ff

jr_056_7002:
    ld bc, $0f31
    dec sp
    jr @+$01

    jr jr_056_700b

    ld a, [hl]

jr_056_700b:
    ld b, $90
    nop
    ld bc, $00ff
    rst $38
    adc b
    ld bc, $0102
    xor b
    rst $38
    xor b
    rst $38
    ret c

    rst $38
    adc b
    rst $38
    nop
    rst $38
    jr nz, jr_056_7023

    ld [de], a

jr_056_7023:
    add hl, bc
    nop
    rst $38
    ld [hl], b
    rst $38
    adc b
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    ld [$88ff], sp
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    ldh [rIE], a
    sub b
    ld bc, $0302
    sub b
    rst $38
    ldh [rSB], a
    jr nz, jr_056_7045

    ld bc, $0445

jr_056_7045:
    ld bc, $002f
    adc b
    rst $38
    ret c

    ld bc, $0108
    ld bc, $0203
    ld bc, $f0ff
    ld bc, $0f61
    dec bc
    jr @+$01

    jr jr_056_705d

    ld a, [hl]

jr_056_705d:
    ld b, $90
    nop
    ld bc, $00ff
    rst $38
    adc b
    ld bc, $0102
    ld hl, sp+$01
    ld [bc], a
    inc bc
    nop
    rst $38
    jr nz, @+$01

    ld d, b
    ld bc, $0114
    ld bc, $0209
    nop
    rst $38
    ldh a, [rSB]
    ld [bc], a
    ld bc, $fff0
    add b
    ld bc, $012a
    ld bc, $0e21
    adc b
    rst $38
    adc h
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    adc c
    ld bc, $030c
    adc a
    ld bc, $0102
    ld bc, $0453
    nop
    rst $38
    add a
    rst $38
    ld [$08ff], sp
    rst $38
    add a
    rst $38
    nop
    ld bc, $0366
    ld c, $ff
    sub c
    rst $38
    db $10
    rst $38
    ld c, $ff
    add c
    rst $38
    sub c
    rst $38
    ld c, $ff
    nop
    rst $38
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    sub b
    nop
    ld bc, $00ff
    rst $38
    ei
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    inc hl
    ld bc, $0304
    nop
    rst $38
    db $e4
    rst $38
    ld b, $ff
    dec b
    rst $38
    push hl
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    db $e4
    rst $38
    nop
    rst $38
    ld c, a
    rst $38
    ret z

    rst $38
    ld c, b
    rst $38
    ld c, a
    rst $38
    ld c, b
    ld bc, $012a
    nop
    rst $38
    rra
    rst $38
    add h
    rst $38
    add h
    ld bc, $011a
    ld bc, $001b
    nop
    rst $38
    ld [$14ff], sp
    ld bc, HeaderNewLicenseeCode
    ld a, $01
    inc b
    ld bc, $ff00
    ld a, h
    rst $38
    db $10
    ld bc, $0754
    nop
    rst $38
    ld b, a
    ld bc, $032a
    ld bc, $002b
    ld b, a
    rst $38
    nop
    rst $38
    ld de, $99ff
    rst $38
    sub l
    rst $38
    sub l
    rst $38
    sub e
    rst $38
    sub c
    rst $38
    ld de, $00ff
    rst $38
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    sub b
    nop
    ld bc, $00ff
    rst $38
    add b
    ld bc, $0302
    add c
    rst $38
    add c
    rst $38
    ld sp, hl
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    and c
    ld bc, $0114
    pop af
    rst $38
    ld de, $11ff
    rst $38
    nop
    rst $38
    pop hl
    rst $38
    ld de, $10ff
    rst $38
    ldh [rIE], a
    db $10
    ld bc, $0126
    nop
    rst $38
    inc de
    rst $38
    ld [de], a
    rst $38
    and d
    rst $38
    ld b, e
    rst $38
    ld b, d
    ld bc, $013a
    nop
    rst $38
    pop bc
    rst $38
    ld hl, $21ff
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    ld b, c
    rst $38
    ld hl, $00ff
    rst $38
    ld [$0cff], sp
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    add hl, bc
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    adc a
    rst $38
    add d
    ld bc, $0764
    nop
    rst $38
    sub c
    ld bc, $011c
    rra
    ld bc, $011c
    ld bc, $001f
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    sub b
    nop
    ld bc, $00ff
    rst $38
    add hl, bc
    ld bc, $0302
    adc c
    rst $38
    adc c
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    inc de
    rst $38
    ld [de], a
    ld bc, $0514
    db $e3
    rst $38
    nop
    rst $38
    add e
    rst $38
    ld b, h
    rst $38
    inc h
    rst $38
    dec h
    rst $38
    inc h
    rst $38
    ld b, h
    rst $38
    add e
    rst $38
    nop
    rst $38
    adc b
    rst $38
    ld c, l
    rst $38
    ld a, [bc]
    rst $38
    ld [$48ff], a
    rst $38
    ret z

    rst $38
    ld c, b
    rst $38
    nop
    rst $38
    sbc a
    rst $38
    sub b
    rst $38
    sub b
    ld bc, $0542
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld [hl-], a
    rst $38
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    ld h, $ff
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    db $10
    ld bc, $0764
    ld bc, $f0ff
    ld bc, $0a71
    jr @+$01

    jr jr_056_7217

    ld a, [hl]

jr_056_7217:
    ld b, $90
    nop
    ld bc, $00ff
    rst $38
    pop af
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    pop af
    rst $38
    and c
    rst $38
    sub c
    rst $38
    adc c
    rst $38
    nop
    rst $38
    di
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ld bc, $0312
    ld a, [c]
    rst $38
    nop
    rst $38
    db $e4
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    call nz, $2401
    ld bc, $ff07
    nop
    rst $38
    rrca
    rst $38
    ld [$08ff], sp
    ld bc, $0332
    rst $08
    rst $38
    nop
    rst $38
    adc [hl]
    rst $38
    ld de, $10ff
    rst $38
    sub b
    rst $38
    ld de, $11ff
    rst $38
    adc [hl]
    rst $38
    nop
    rst $38
    ld a, $01
    inc [hl]
    ld bc, $5501
    inc b
    nop
    rst $38
    ld b, a
    rst $38
    ld c, b
    ld bc, $0564
    ld b, a
    rst $38
    nop
    rst $38
    ld de, $99ff
    rst $38
    sub l
    rst $38
    sub l
    rst $38
    sub e
    rst $38
    sub c
    rst $38
    ld de, $00ff
    rst $38
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
