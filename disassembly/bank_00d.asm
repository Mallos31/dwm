; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

    dec c
    rlca
    ld b, b
    cpl
    ld b, b
    db $10
    ld b, c

Call_00d_4007:
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
    call Call_00d_4007
    push bc
    call Call_00d_40e7
    pop bc

Call_00d_4075:
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
    jr z, jr_00d_40a0

    ld b, a

jr_00d_409a:
    call Call_00d_40da
    dec b
    jr nz, jr_00d_409a

jr_00d_40a0:
    ld a, l
    ld [$d8e7], a
    ld a, h
    ld [$d8e8], a
    pop bc

jr_00d_40a9:
    ld a, [bc]
    inc bc
    cp $d9
    ret z

    cp $d8
    jr nz, jr_00d_40d2

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
    jr jr_00d_40a9

jr_00d_40d2:
    call Call_000_1aad
    call Call_00d_40da
    jr jr_00d_40a9

Call_00d_40da:
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


Call_00d_40e7:
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

jr_00d_40f5:
    push hl

jr_00d_40f6:
    ld a, [bc]
    inc bc
    cp $d9
    jr z, jr_00d_410e

    cp $d8
    jr nz, jr_00d_410b

    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_00d_40f5

jr_00d_410b:
    ld [hl+], a
    jr jr_00d_40f6

jr_00d_410e:
    pop hl
    ret


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
    call Call_00d_4007
    push bc
    call Call_00d_4171
    pop bc
    ld a, [$c81d]
    or a
    ret z

    di
    call Call_000_1aa6
    ld a, $01
    ldh [rVBK], a
    ei
    call Call_00d_4075
    di
    call Call_000_1aa6
    ld a, $00
    ldh [rVBK], a
    ei
    ret


Call_00d_4171:
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc

jr_00d_4177:
    push hl

jr_00d_4178:
    ld a, [bc]
    inc bc
    cp $d9
    jr z, jr_00d_4193

    cp $d8
    jr nz, jr_00d_418d

    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_00d_4177

jr_00d_418d:
    call Call_00d_4195
    inc hl
    jr jr_00d_4178

jr_00d_4193:
    pop hl
    ret


Call_00d_4195:
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
    jr c, jr_00d_41b0

    swap a
    and $f0
    ld d, a
    ld a, [hl]
    and $0f
    jr jr_00d_41b6

jr_00d_41b0:
    and $0f
    ld d, a
    ld a, [hl]
    and $f0

jr_00d_41b6:
    or d
    ld [hl], a
    pop hl
    ret


    ld a, $7c
    ld a, $7c
    ld a, $7c
    ld a, $7c
    ld a, $7c
    ld a, $7c
    ld a, [$2241]
    ld c, l
    jp c, Jump_000_1256

    ld e, l
    add sp, $61
    inc b
    ld h, d
    ld [$7062], sp
    ld h, d
    ld d, h
    ld h, h
    ld e, b
    ld h, h
    or [hl]
    ld h, h
    inc [hl]
    ld h, [hl]
    jr c, jr_00d_4246

    jr nc, jr_00d_424a

    sbc b
    ld l, b
    sbc h
    ld l, b
    and b
    ld l, b
    ld h, b
    ld l, c
    ld h, h
    ld l, c
    ld c, $6b
    db $76
    ld l, h
    ld [hl], $6e
    ld b, b
    ld l, a
    cp b
    ld [hl], b
    ld l, d
    ld [hl], d
    ld l, h
    ld [hl], h
    ld [de], a
    ld b, d
    inc b
    ld b, a
    sub d
    ld b, a
    sbc b
    ld b, a
    sbc [hl]
    ld b, a
    and h
    ld b, a
    xor d
    ld b, a
    ld a, h
    ld c, c
    ld a, [c]
    ld c, d
    nop
    ld c, e
    ld c, $4b
    ld [de], a
    ld c, e
    ld [de], a
    rst $38
    db $ed
    ret z

    nop
    nop
    dec d
    rst $38
    ld d, c
    reti


    ld a, [c]
    nop
    ld a, [c]
    ld b, [hl]
    ld c, $ff
    ld bc, $2800
    ld b, d
    rst $38
    rst $38
    dec d
    rst $38
    call $fed9
    nop
    ld [hl], b
    ld b, d
    dec d
    rst $38
    call $ffd9
    nop
    ld b, d
    ld b, d
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
    daa
    rst $38
    dec c
    rst $38

jr_00d_4246:
    nop
    nop
    sub b
    rst $38

jr_00d_424a:
    nop
    nop
    ld c, c
    rst $38
    nop
    nop
    ld [de], a
    rst $38
    call $00d9
    nop
    rlca
    rst $38
    ld bc, $33ff
    nop
    ld l, h
    ld b, d
    ld bc, $30ff
    nop
    ld l, b
    ld b, d
    db $e3
    nop
    rst $38
    rst $38
    ld a, c
    ld bc, $ffff
    ld a, [hl-]
    inc b
    rst $38
    rst $38
    daa
    rst $38
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld c, c
    rst $38
    nop
    nop
    ld bc, $11ff
    ld bc, $42c6
    dec d
    rst $38
    adc $d9
    rlca
    nop
    or $45
    dec d
    rst $38
    adc $d9
    ld b, $00
    sub b
    ld b, l
    dec d
    rst $38
    adc $d9
    dec b
    nop
    ld a, [hl-]
    ld b, l
    dec d
    rst $38
    adc $d9
    inc b
    nop
    ld e, $45
    dec d
    rst $38
    adc $d9
    inc bc
    nop
    ld [hl-], a
    ld b, h
    dec d
    rst $38
    adc $d9
    ld [bc], a
    nop
    jp nc, $1543

    rst $38
    adc $d9
    ld bc, $9200
    ld b, e
    dec d
    rst $38
    adc $d9
    nop
    nop
    sub $42
    rst $38
    rst $38
    rlca
    rst $38
    pop de
    rlca
    inc bc
    rst $38
    db $fd
    nop
    ld [de], a
    rst $38
    call $00d9
    nop
    rst $38
    rst $38
    ld [de], a
    rst $38
    or h
    jp z, Jump_000_0001

    inc bc
    rst $38
    jr nc, jr_00d_42e0

jr_00d_42e0:
    ld [de], a
    rst $38
    dec hl
    reti


    nop
    nop
    ld [de], a
    rst $38
    cpl
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld sp, $01d9
    nop
    ld [de], a
    rst $38
    inc a
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    ld b, c
    reti


    ld bc, $1200
    rst $38
    call $00d9
    nop
    rlca
    rst $38
    db $e4
    nop
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld hl, $51ff
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec bc
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, b
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec bc
    rst $38
    inc bc
    nop
    ldh [rIE], a
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec a
    rst $38
    rlca
    rst $38
    push hl
    nop
    dec de
    rst $38
    inc bc
    nop
    jr nc, jr_00d_4340

jr_00d_4340:
    dec de
    rst $38
    nop
    nop
    jr nc, jr_00d_4346

jr_00d_4346:
    add hl, de
    rst $38
    ld [de], a
    rst $38
    db $ed
    ret z

    ld bc, $0b00
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    db $ed
    ret z

    inc bc
    nop
    dec bc
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    db $ed
    ret z

    rlca
    nop
    ld hl, $51ff
    nop
    dec bc
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    db $ed
    ret z

    rrca
    nop
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
    inc bc
    nop
    nop
    nop
    ld b, b
    nop
    ld [$0fff], sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld [de], a
    rst $38
    or h
    jp z, Jump_000_0002

    inc bc
    rst $38
    ld sp, $1200
    rst $38
    cpl
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    ld sp, $02d9
    nop
    ld [de], a
    rst $38
    inc sp
    reti


    ld bc, $1200
    rst $38
    inc a
    reti


    inc b
    nop
    ld [de], a
    rst $38
    ld d, d
    reti


    ld bc, $1200
    rst $38
    ld d, e
    reti


    ld bc, $1200
    rst $38
    ld d, h
    reti


    ld bc, $1200
    rst $38
    call $00d9
    nop
    rlca
    rst $38
    ld a, d
    ld bc, $ffff
    ld [de], a
    rst $38
    or h
    jp z, Jump_000_0003

    inc bc
    rst $38
    ld [hl-], a
    nop
    ld [de], a
    rst $38
    dec sp
    reti


    ld bc, $1200
    rst $38
    ld b, d
    reti


    ld bc, $1200
    rst $38
    call $00d9
    nop
    nop
    rst $38
    ld sp, $fa00
    ld b, e
    rlca
    rst $38
    or [hl]
    ld bc, $ffff
    inc bc
    rst $38
    ld sp, $0300
    rst $38
    ld c, c
    nop
    ld [de], a
    rst $38
    cpl
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    ld sp, $02d9
    nop
    ld [de], a
    rst $38
    inc sp
    reti


    ld bc, $1200
    rst $38
    inc a
    reti


    inc b
    nop
    ld [de], a
    rst $38
    ld d, d
    reti


    ld bc, $1200
    rst $38
    ld d, e
    reti


    ld bc, $1200
    rst $38
    ld d, h
    reti


    ld bc, $0700
    rst $38
    or a
    ld bc, $ffff
    ld bc, $32ff
    nop
    inc a
    ld b, h
    inc bc
    rst $38
    add hl, de
    ld bc, $ff12
    or h
    jp z, Jump_000_0004

    inc bc
    rst $38
    ld sp, $0300
    rst $38
    ld [hl-], a
    nop
    inc bc
    rst $38
    inc sp
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    nop
    nop
    ld [de], a
    rst $38
    cpl
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    ld sp, $02d9
    nop
    ld [de], a
    rst $38
    inc sp
    reti


    ld bc, $1200
    rst $38
    dec sp
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    inc a
    reti


    inc b
    nop
    ld [de], a
    rst $38
    ld b, d
    reti


    ld bc, $1200
    rst $38
    ld d, d
    reti


    ld bc, $1200
    rst $38
    ld d, e
    reti


    ld bc, $1200
    rst $38
    ld d, h
    reti


    ld bc, $1200
    rst $38
    call $00d9
    nop
    rlca
    rst $38
    inc e
    ld [bc], a
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld hl, $51ff
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec bc
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, b
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec bc
    rst $38
    inc bc
    nop
    ldh [rIE], a
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec a
    rst $38
    rlca
    rst $38
    dec e
    ld [bc], a
    dec de
    rst $38
    inc bc
    nop
    jr nc, jr_00d_44cc

jr_00d_44cc:
    dec de
    rst $38
    nop
    nop
    jr nc, jr_00d_44d2

jr_00d_44d2:
    add hl, de
    rst $38
    ld [de], a
    rst $38
    db $ed
    ret z

    ld bc, $0b00
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    db $ed
    ret z

    inc bc
    nop
    dec bc
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    db $ed
    ret z

    rlca
    nop
    ld hl, $51ff
    nop
    dec bc
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    db $ed
    ret z

    rrca
    nop
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
    inc bc
    nop
    nop
    nop
    ld b, b
    nop
    ld [$0fff], sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld [de], a
    rst $38
    or h
    jp z, $0005

    inc bc
    rst $38
    inc [hl]
    nop
    ld [de], a
    rst $38
    dec sp
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    call $00d9
    nop
    rlca
    rst $38
    pop hl
    ld [bc], a
    rst $38
    rst $38
    ld [de], a
    rst $38
    or h
    jp z, Jump_000_0006

    inc bc
    rst $38
    dec [hl]
    nop
    ld [de], a
    rst $38
    add hl, sp
    reti


    ld bc, $1200
    rst $38
    dec a
    reti


    ld bc, $1200
    rst $38
    ld b, l
    reti


    ld bc, $1200
    rst $38
    ld b, [hl]
    reti


    ld bc, $1200
    rst $38
    ld b, a
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld h, e
    reti


    ld bc, $1200
    rst $38
    ld h, h
    reti


    ld bc, $1200
    rst $38
    call $00d9
    nop
    nop
    rst $38
    inc [hl]
    nop
    add b
    ld b, l
    rlca
    rst $38
    ld b, c
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    inc [hl]
    nop
    ld [de], a
    rst $38
    dec sp
    reti


    inc bc
    nop
    rlca
    rst $38
    ld b, d
    inc bc
    rst $38
    rst $38
    ld [de], a
    rst $38
    or h
    jp z, Jump_000_0007

    inc bc
    rst $38
    ld [hl], $00
    ld [de], a
    rst $38
    dec a
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    call $00d9
    nop
    nop
    rst $38
    dec [hl]
    nop
    or d
    ld b, l
    rlca
    rst $38
    sbc a
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    dec [hl]
    nop
    ld [de], a
    rst $38
    add hl, sp
    reti


    ld bc, $1200
    rst $38
    ld b, l
    reti


    ld bc, $1200
    rst $38
    ld b, [hl]
    reti


    ld bc, $1200
    rst $38
    ld b, a
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld h, e
    reti


    ld bc, $1200
    rst $38
    ld h, h
    reti


    ld bc, $0000
    rst $38
    inc [hl]
    nop
    and $45
    rlca
    rst $38
    and c
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    inc [hl]
    nop
    ld [de], a
    rst $38
    dec sp
    reti


    inc bc
    nop
    rlca
    rst $38
    and b
    inc bc
    rst $38
    rst $38
    ld bc, $36ff
    nop
    nop
    ld b, [hl]
    inc bc
    rst $38
    inc e
    ld bc, $ff12
    or h
    jp z, RST_08

    inc bc
    rst $38
    inc [hl]
    nop
    inc bc
    rst $38
    dec [hl]
    nop
    inc bc
    rst $38
    ld [hl], $00
    inc bc
    rst $38
    scf
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    nop
    nop
    ld [de], a
    rst $38
    ld [hl], $d9
    ld [bc], a
    nop
    ld [de], a
    rst $38
    scf
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    jr c, @-$25

    ld [bc], a
    nop
    ld [de], a
    rst $38
    add hl, sp
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    dec sp
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    dec a
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    ld b, l
    reti


    ld bc, $1200
    rst $38
    ld b, [hl]
    reti


    ld bc, $1200
    rst $38
    ld b, a
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld h, e

Call_00d_4655:
    reti


    ld bc, $1200
    rst $38
    ld h, h
    reti


    ld bc, $1200
    rst $38
    call $00d9
    nop
    rlca
    rst $38
    pop af
    inc bc
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld hl, $51ff
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec bc
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, b
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec bc
    rst $38
    inc bc
    nop
    ldh [rIE], a
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec a
    rst $38
    rlca
    rst $38
    ld a, [c]
    inc bc
    dec de
    rst $38
    inc bc
    nop
    jr nc, jr_00d_46a0

jr_00d_46a0:
    dec de
    rst $38
    nop
    nop
    jr nc, jr_00d_46a6

jr_00d_46a6:
    add hl, de
    rst $38
    ld [de], a
    rst $38
    db $ed
    ret z

    ld bc, $0b00
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    db $ed
    ret z

    inc bc
    nop
    dec bc
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    db $ed
    ret z

    rlca
    nop
    ld hl, $51ff
    nop
    dec bc
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    db $ed
    ret z

    rrca
    nop
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
    inc bc
    nop
    nop
    nop
    ld b, b
    nop
    ld [$0fff], sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
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
    ld b, h
    rst $38
    ld [de], a
    rst $38
    ld d, c
    reti


    nop
    nop
    rst $38
    rst $38
    dec d
    rst $38
    db $ed
    ret z

    nop
    nop
    ld c, $47
    rst $38
    rst $38
    ld [de], a
    rst $38
    db $ed
    ret z

    ld bc, $0d00
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    dec bc
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld a, [bc]
    rst $38
    nop
    nop
    ret nc

    rst $38
    dec bc
    rst $38
    nop
    nop
    jr nz, jr_00d_472e

jr_00d_472e:
    ld [de], a
    rst $38
    db $ed
    ret z

    add hl, bc
    nop
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    stop
    ld [de], a
    rst $38
    db $ed
    ret z

    dec c
    nop
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    stop
    ld [de], a
    rst $38
    db $ed
    ret z

    rrca
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld c, d
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
    ld a, [bc]
    rst $38
    nop
    nop
    stop
    dec bc
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld c, c
    rst $38
    nop
    nop
    ld [$0dff], sp
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    ld [de], a
    rst $38
    db $ed
    ret z

    ld c, $00
    rst $38
    rst $38
    dec l
    rst $38
    nop
    nop
    rst $38
    rst $38
    dec l
    rst $38
    ld bc, $ff00
    rst $38
    dec l
    rst $38
    ld [bc], a
    nop
    rst $38
    rst $38
    db $eb
    nop
    db $ec
    nop
    rst $38
    rst $38
    ld bc, $03ff
    ld bc, $4948
    ld bc, $11ff
    ld bc, $4940
    ld bc, $10ff
    ld bc, $490e
    ld bc, $f1ff
    nop
    call c, $0148
    rst $38
    dec h
    nop
    xor b
    ld c, b
    ld bc, $37ff
    nop
    and h
    ld c, b
    ld bc, $7dff
    nop
    add d
    ld c, b
    ld bc, $1dff
    nop
    sbc d
    ld c, b
    ld bc, $33ff
    nop
    sub [hl]
    ld c, b
    ld bc, $5aff
    nop
    add d
    ld c, b
    ld bc, $30ff
    nop
    adc d
    ld c, b
    ld bc, $59ff
    nop
    add d
    ld c, b
    ld [c], a
    nop
    inc bc
    rst $38
    ld e, c
    nop
    inc d
    rst $38
    cp $47
    rst $38
    rst $38
    inc b
    rst $38
    inc b
    nop
    db $10
    rlca
    dec d
    rst $38
    call $ffd9
    nop
    ld a, b
    ld c, b
    ld [de], a
    rst $38
    sbc c
    reti


    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec bc
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    db $ed
    ret z

    ld bc, $0900
    rst $38
    ld [bc], a
    nop
    dec bc
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    db $ed
    ret z

    inc bc
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec bc
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    db $ed
    ret z

    rlca
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec bc
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    db $ed
    ret z

    rrca
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
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
    call $00d9
    nop
    rra
    rst $38
    rrca
    rst $38
    ld e, l
    nop
    ld a, b
    nop
    ld e, b
    nop
    rst $38
    rst $38
    inc de
    rlca
    ld [de], a
    rst $38
    call $00d9
    nop
    rst $38
    rst $38
    db $10
    rlca
    inc d
    rst $38
    cp $47
    rst $38
    rst $38
    ld a, b
    ld bc, $ff03
    ld e, d
    nop
    inc d
    rst $38
    cp $47
    rst $38
    rst $38
    ld a, h
    ld [bc], a
    rst $38
    rst $38
    ldh [rSC], a
    inc bc
    rst $38
    ld a, l
    nop
    inc d
    rst $38
    cp $47
    ld c, l
    inc b
    rst $38
    rst $38
    xor a
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $d800
    ld c, b
    or c
    inc b
    add hl, bc
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc c
    nop
    dec bc
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    adc $d9
    ld [$1200], sp
    rst $38
    sbc c
    reti


    ld bc, $1400
    rst $38
    inc h
    ld c, b
    rst $38
    rst $38
    or b
    inc b
    rst $38
    rst $38
    rst $00
    rlca
    dec d
    rst $38
    inc a
    ret z

    ld bc, $0a00
    ld c, c
    add hl, bc
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc c
    nop
    dec bc
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    adc $d9
    add hl, bc
    nop
    ld [de], a
    rst $38
    sbc c
    reti


    inc b
    nop
    inc d
    rst $38
    inc h
    ld c, b
    rst $38
    rst $38
    ret z

    rlca
    rst $38
    rst $38
    call z, Call_000_1507
    rst $38
    inc a
    ret z

    ld bc, $3c00
    ld c, c
    add hl, bc
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc c
    nop
    dec bc
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    adc $d9
    add hl, bc
    nop
    ld [de], a
    rst $38
    sbc c
    reti


    inc b
    nop
    inc d
    rst $38
    inc h
    ld c, b
    rst $38
    rst $38
    call $ff07
    rst $38
    pop de
    rlca
    inc bc
    rst $38
    db $fd
    nop
    rst $38
    rst $38
    jp nc, Jump_000_1507

    rst $38
    inc a
    ret z

    ld bc, $7800
    ld c, c
    call nc, Call_000_0908
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc c
    nop
    dec bc
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    adc $d9
    add hl, bc
    nop
    ld [de], a
    rst $38
    sbc c
    reti


    inc b
    nop
    inc d
    rst $38
    inc h
    ld c, b
    rst $38
    rst $38
    push de
    ld [$ffff], sp
    ld bc, $feff
    nop
    jp z, $014a

    rst $38
    ld de, $c001
    ld c, d
    ld bc, $10ff
    ld bc, $4aac
    ld bc, $f1ff
    nop
    sbc b
    ld c, d
    ld bc, $b0ff
    nop
    add h
    ld c, d
    ld bc, $25ff
    nop
    ld a, h
    ld c, d
    ld bc, $a4ff
    nop
    ld a, b
    ld c, d
    ld bc, $37ff
    nop
    ld [hl], b
    ld c, d
    ld bc, $36ff
    nop
    ld e, [hl]
    ld c, d
    ld bc, $35ff
    nop
    ld c, h
    ld c, d
    ld bc, $34ff
    nop
    ld a, [hl-]
    ld c, d
    ld bc, $1dff
    nop
    jr z, jr_00d_4a0e

    ld bc, $33ff
    nop
    inc h
    ld c, d
    ld bc, $32ff
    nop
    ld [de], a
    ld c, d
    ld bc, $31ff
    nop
    nop
    ld c, d
    ld bc, $30ff
    nop
    xor $49
    and $00
    dec d
    rst $38
    inc a
    ret z

    ld bc, $ea00
    ld c, c
    rst $20
    nop
    rst $38
    rst $38
    add sp, $00
    rst $38
    rst $38
    and $00
    dec d
    rst $38
    inc a
    ret z

    ld bc, $fc00
    ld c, c
    rst $20
    nop
    rst $38
    rst $38
    ld a, e
    ld bc, $ffff
    and $00
    dec d
    rst $38
    inc a
    ret z

    ld bc, $0e00
    ld c, d
    rst $20
    nop
    rst $38
    rst $38

jr_00d_4a0e:
    cp b
    ld bc, $ffff
    and $00
    dec d
    rst $38
    inc a
    ret z

    ld bc, $2000
    ld c, d
    rst $20
    nop
    rst $38
    rst $38
    ld e, $02
    rst $38
    rst $38
    ld a, l
    ld [bc], a
    rst $38
    rst $38
    and $00
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3600
    ld c, d
    ld [c], a
    ld [bc], a
    rst $38
    rst $38
    db $e3
    ld [bc], a
    rst $38
    rst $38
    and $00
    dec d
    rst $38
    inc a
    ret z

    ld bc, $4800
    ld c, d
    ld [c], a
    ld [bc], a
    rst $38
    rst $38
    ld b, e
    inc bc
    rst $38
    rst $38
    and $00
    dec d
    rst $38
    inc a
    ret z

    ld bc, $5a00
    ld c, d
    ld [c], a
    ld [bc], a
    rst $38
    rst $38
    and d
    inc bc
    rst $38
    rst $38
    and $00
    dec d
    rst $38
    inc a
    ret z

    ld bc, $6c00
    ld c, d
    ld [c], a
    ld [bc], a
    rst $38
    rst $38
    di
    inc bc
    rst $38
    rst $38
    ld c, [hl]
    inc b
    inc bc
    rst $38
    and h
    nop
    rst $38
    rst $38
    ld c, a
    inc b
    rst $38
    rst $38
    or d
    inc b
    inc bc
    rst $38
    or b
    nop
    rst $38
    rst $38
    or e
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $9200
    ld c, d
    xor l
    ld bc, $ffff
    or h
    inc b
    inc d
    rst $38
    call z, $c94a
    rlca
    dec d
    rst $38
    inc a
    ret z

    ld bc, $a600
    ld c, d
    jp z, $ff07

    rst $38
    rlc a
    inc d
    rst $38
    call z, $c94a
    rlca
    dec d
    rst $38
    inc a
    ret z

    ld bc, $ba00
    ld c, d
    rst $08
    rlca
    rst $38
    rst $38
    rlc a
    inc d
    rst $38
    call z, $d34a
    rlca
    inc bc
    rst $38
    cp $00
    inc d
    rst $38
    call z, $d44a
    rlca
    dec c
    rst $38
    inc b
    nop
    stop
    nop
    nop
    dec c
    rst $38
    inc b
    nop
    ld a, [de]
    nop
    ld h, b
    nop
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    rst $38
    stop
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    ld b, b
    nop
    rst $38
    rst $38
    ld bc, $11ff
    ld bc, $4afc
    jp hl


    nop
    rst $38
    rst $38
    push de
    rlca
    rst $38
    rst $38
    ld bc, $11ff
    ld bc, $4b0a
    ld_long $ff00, a
    rst $38
    sub $07
    rst $38
    rst $38
    ld c, b
    rst $38
    ld bc, $0100
    rst $38
    rst $38
    nop
    ld hl, sp+$4c
    ld bc, $f1ff
    nop
    ldh a, [$4c]
    ld bc, $25ff
    nop
    db $ec
    ld c, h
    nop
    rst $38
    scf
    nop
    jr nc, jr_00d_4b75

    ld bc, $96ff
    nop
    add sp, $4c
    ld bc, $96ff
    nop
    db $e4
    ld c, h
    ld bc, $95ff
    nop
    add $4c
    ld bc, $37ff
    nop
    and h
    ld c, h
    ld bc, $36ff
    nop
    add d
    ld c, h
    ld bc, $35ff
    nop
    ld a, [hl]
    ld c, h
    ld bc, $8bff
    nop
    ld a, d
    ld c, h
    ld bc, $8aff
    nop
    ld e, h
    ld c, h
    ld bc, $34ff
    nop
    ld a, [hl-]
    ld c, h
    ld bc, $89ff
    nop
    ld [hl], $4c
    ld bc, $7eff
    nop
    ld [hl-], a
    ld c, h
    ld bc, $1dff
    nop
    ld a, [hl+]
    ld c, h
    nop
    rst $38
    ld e, b

jr_00d_4b75:
    nop
    ld a, [hl]
    ld c, e
    ld bc, $19ff
    ld bc, $4d1e
    nop
    rst $38
    inc sp
    nop
    adc d
    ld c, e
    ld bc, $58ff
    nop
    ld h, $4c
    ld bc, $58ff
    nop
    ld [hl+], a
    ld c, h
    ld bc, $4fff
    nop
    inc b
    ld c, h
    nop
    rst $38
    inc sp
    nop
    and d
    ld c, e
    ld bc, $19ff
    ld bc, $4cfc
    ld bc, $32ff
    nop
    ld [c], a
    ld c, e
    ld bc, $48ff
    nop
    sbc $4b
    ld bc, $31ff
    nop
    jp c, $014b

    rst $38
    jr nc, jr_00d_4bb8

jr_00d_4bb8:
    sub $4b
    ld bc, $21ff
    ld bc, $4bc4
    db $ed
    nop
    rst $38
    rst $38
    ld c, e
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $d200
    ld c, e
    ld l, e
    ld [$ffff], sp
    ld l, d
    ld [$ffff], sp
    ld a, h
    ld bc, $ffff
    cp c
    ld bc, $ffff
    ld a, l
    ld bc, $ffff
    inc a
    rst $38
    rra
    ld [bc], a
    inc bc
    rst $38
    ld c, a
    nop
    inc bc
    rst $38
    ld e, b
    nop
    ld b, d
    rst $38
    inc [hl]
    ld bc, $0001
    inc b
    rst $38
    dec b
    nop
    nop
    ld b, $02
    rst $38
    ld e, b
    nop
    inc a
    rst $38
    nop
    ld b, $ff
    rst $38
    inc a
    rst $38
    ld a, [hl+]
    ld [bc], a
    inc bc
    rst $38
    ld e, b
    nop
    ld b, d
    rst $38
    inc [hl]
    ld bc, $0001
    inc b
    rst $38
    dec b
    nop
    nop
    ld b, $02
    rst $38
    ld e, b
    nop
    inc a
    rst $38
    nop
    ld b, $ff
    rst $38
    dec hl
    ld [bc], a
    rst $38
    rst $38
    ld a, [hl]
    ld [bc], a
    rst $38
    rst $38
    db $e4
    ld [bc], a
    inc bc
    rst $38
    ld a, [hl]
    nop
    rst $38
    rst $38
    push hl
    ld [bc], a
    rst $38
    rst $38
    and $02
    rst $38
    rst $38
    inc a
    rst $38
    ld b, h
    inc bc
    inc bc
    rst $38
    adc d
    nop
    inc bc
    rst $38
    adc e
    nop
    ld b, d
    rst $38
    ld [hl], $01
    ld bc, $0400
    rst $38
    dec b
    nop
    nop
    ld b, $02
    rst $38
    adc e
    nop
    inc a
    rst $38
    nop
    ld b, $ff
    rst $38
    inc a
    rst $38
    ld d, h
    ld [$ff03], sp
    adc e
    nop
    ld b, d
    rst $38
    ld [hl], $01
    ld bc, $0400
    rst $38
    dec b
    nop
    nop
    ld b, $02
    rst $38
    adc e
    nop
    inc a
    rst $38
    nop
    ld b, $ff
    rst $38
    ld c, a
    inc bc
    rst $38
    rst $38
    and e
    inc bc
    rst $38
    rst $38
    inc a
    rst $38
    db $f4
    inc bc
    inc bc
    rst $38
    sub l
    nop
    inc bc
    rst $38
    sub [hl]
    nop
    ld b, d
    rst $38
    add hl, sp
    ld bc, $0001
    inc b
    rst $38
    dec b
    nop
    nop
    ld b, $02
    rst $38
    sub [hl]
    nop
    inc a
    rst $38
    nop
    ld b, $ff
    rst $38
    inc a
    rst $38
    ld d, b
    inc b
    inc bc
    rst $38
    sub l
    nop
    inc bc
    rst $38
    sub [hl]
    nop
    ld b, d
    rst $38
    add hl, sp
    ld bc, $0001
    inc b
    rst $38
    dec b
    nop
    nop
    ld b, $02
    rst $38
    sub [hl]
    nop
    inc a
    rst $38
    nop
    ld b, $ff
    rst $38
    inc a
    rst $38
    ld d, l
    ld [$ff03], sp
    sub [hl]
    nop
    ld b, d
    rst $38
    add hl, sp
    ld bc, $0001
    inc b
    rst $38
    dec b
    nop
    nop
    ld b, $02
    rst $38
    sub [hl]
    nop
    inc a
    rst $38
    nop
    ld b, $ff
    rst $38
    rst $30
    inc bc
    rst $38
    rst $38
    ld d, c
    inc b
    rst $38
    rst $38
    or l
    inc b
    rst $38
    rst $38
    rst $10
    rlca
    inc bc
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ret c

    rlca
    rst $38
    rst $38
    inc a
    rst $38
    ret nc

    rlca
    inc bc
    rst $38
    ld c, a
    nop
    inc bc
    rst $38
    ld e, b
    nop
    ld b, d
    rst $38
    inc [hl]
    ld bc, $0001
    inc b
    rst $38
    dec b
    nop
    nop
    ld b, $02
    rst $38
    ld e, b
    nop
    inc a
    rst $38
    nop
    ld b, $ff
    rst $38
    ld e, b
    ld [$ffff], sp
    ld e, b
    ld c, l
    inc d
    ld c, [hl]
    ld [$2a4f], sp
    ld c, a
    ld b, h
    ld d, b
    sbc b
    ld d, b
    db $ec
    ld d, b
    inc h
    ld d, c
    sub b
    ld d, c
    sub $51
    add sp, $51
    db $ec
    ld d, c
    ld c, $52
    ld b, b
    ld d, d
    ld [hl], d
    ld d, d
    sbc [hl]
    ld d, d
    jp z, $d252

    ld d, e
    adc b
    ld d, h
    ld a, $55
    ld b, d
    ld d, l
    ld h, d
    ld d, l
    ld h, [hl]
    ld d, l
    ld l, d
    ld d, l
    call nc, Call_00d_4655
    ld d, [hl]
    cp b
    ld d, [hl]
    dec d
    rst $38
    push hl
    reti


    ld bc, $7000
    ld c, l
    ld c, $ff
    nop
    nop
    ld l, b
    ld c, l
    rst $38
    rst $38
    ld [de], a
    rst $38
    set 3, c
    nop
    nop
    rst $38
    rst $38
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
    ld [hl+], a
    rst $38
    dec de
    rst $38
    inc b
    nop
    stop
    add hl, de
    rst $38
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    inc b
    nop
    stop
    dec de
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    dec c
    rst $38
    ld b, $00
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    inc b
    nop
    stop
    dec de
    rst $38
    dec b
    nop
    stop
    dec de
    rst $38
    ld b, $00
    stop
    add hl, de
    rst $38
    dec c
    rst $38
    rlca
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    inc b
    nop
    jr nz, jr_00d_4dcc

jr_00d_4dcc:
    dec de
    rst $38
    dec b
    nop
    jr nc, jr_00d_4dd2

jr_00d_4dd2:
    dec de
    rst $38
    ld b, $00
    ld b, b
    nop
    dec de
    rst $38
    rlca
    nop
    ld d, b
    nop
    add hl, de
    rst $38
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
    ld c, b
    rst $38
    nop
    nop
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
    push hl
    reti


    nop
    nop
    rst $38
    rst $38
    dec d
    rst $38
    set 3, c
    ld bc, $ae00
    ld c, [hl]
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
    add hl, bc
    rst $38
    inc b
    nop
    inc h
    rst $38
    db $ec
    ld c, [hl]
    ld h, c
    rst $38
    ld a, [$094e]
    rst $38
    ld b, $00
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
    nop
    nop
    add hl, bc
    rst $38
    ld [$0700], sp
    rst $38
    ld bc, $f1ff
    nop
    and $4e
    ld bc, $25ff
    nop
    ldh [$4e], a
    ld bc, $37ff
    nop
    jp c, $014e

    rst $38
    ld [hl], $00
    call nc, $014e
    rst $38
    dec [hl]
    nop
    adc $4e
    ld bc, $34ff
    nop
    ret z

    ld c, [hl]
    ld bc, $33ff
    nop
    jp nz, $014e

    rst $38
    ld [hl-], a
    nop
    cp h
    ld c, [hl]
    ld bc, $31ff
    nop
    or [hl]
    ld c, [hl]
    ld bc, $30ff
    nop
    or b
    ld c, [hl]
    ldh a, [rP1]
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    inc bc
    nop
    ld b, b
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    inc bc
    nop
    ld b, b
    nop
    add hl, de
    rst $38
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    ld b, b
    nop
    ld [de], a
    rst $38
    set 3, c
    ld bc, $ff00
    rst $38
    ld a, a
    ld bc, $ff14
    adc h
    ld c, [hl]
    cp e
    ld bc, $ff14
    adc h
    ld c, [hl]
    dec l
    ld [bc], a
    inc d
    rst $38
    adc h
    ld c, [hl]
    add b
    ld [bc], a
    inc d
    rst $38
    adc h
    ld c, [hl]
    ld d, c
    inc bc
    inc d
    rst $38
    adc h
    ld c, [hl]
    and l
    inc bc
    inc d
    rst $38
    adc h
    ld c, [hl]
    ld sp, hl
    inc bc
    inc d
    rst $38
    adc h
    ld c, [hl]
    ld d, e
    inc b
    inc d
    rst $38
    adc h
    ld c, [hl]
    or a
    inc b
    inc d
    rst $38
    adc h
    ld c, [hl]
    jp c, $1407

    rst $38
    adc h
    ld c, [hl]
    add $00
    ld [hl], b
    ld [hl], c
    ret c

    ld [hl], d
    ld [hl], e
    ret c

    ld [hl], b
    ld [hl], c
    ret c

    ld [hl], d
    ld [hl], e
    reti


    add $00
    ld [bc], a
    ld [bc], a
    ret c

    ld [bc], a
    ld [bc], a
    ret c

    ld [bc], a
    ld [bc], a
    ret c

    ld [bc], a
    ld [bc], a
    reti


    ld bc, $f1ff
    nop
    ld h, $4f
    ld bc, $35ff
    nop
    ld [hl+], a
    ld c, a
    ld bc, $32ff
    nop
    ld e, $4f
    xor $00
    rst $38
    rst $38
    inc l
    ld [bc], a
    rst $38
    rst $38
    and h
    inc bc
    rst $38
    rst $38
    cp d
    ld bc, $ffff
    dec d
    rst $38
    rst $18
    reti


    nop
    nop
    ld [hl+], a
    ld d, b
    ld l, $ff
    nop
    nop
    ld c, b
    rst $38
    ld bc, $1500
    rst $38
    ldh [$d9], a
    nop
    nop
    ld d, d
    ld c, a
    ld c, c
    rst $38
    ld bc, $1500
    rst $38
    ldh [$d9], a
    ld bc, $5200
    ld c, a
    ld b, a
    rst $38
    ld bc, $0d00
    rst $38
    ld bc, $0500
    nop
    ld bc, $0900
    rst $38
    inc c
    nop
    dec c
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    inc a
    rst $38
    rlca
    rst $38
    dec d
    rst $38
    ldh [$d9], a
    nop
    nop
    adc d
    ld c, a
    dec d
    rst $38
    ldh [$d9], a
    ld [bc], a
    nop
    sub h
    ld c, a
    dec d
    rst $38
    rst $18
    reti


    dec b
    nop
    sbc [hl]
    ld c, a
    db $f4
    nop
    cpl
    rst $38
    rst $18
    reti


    rst $38
    rst $38
    or $00
    ld [de], a
    rst $38
    rst $18
    reti


    nop
    nop
    rst $38
    rst $38
    push af
    nop
    ld [de], a
    rst $38
    rst $18
    reti


    nop
    nop
    rst $38
    rst $38
    rst $30
    nop
    ld [de], a
    rst $38
    rst $18
    reti


    nop
    nop
    ld b, $ff
    add hl, bc
    rst $38
    ld [$6100], sp
    rst $38
    inc l
    ld d, b
    inc h
    rst $38
    inc h
    ld d, b
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    inc a
    ld d, b
    inc h
    rst $38
    inc [hl]
    ld d, b
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    inc l
    ld d, b
    inc h
    rst $38
    inc h
    ld d, b
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    inc a
    ld d, b
    inc h
    rst $38
    inc [hl]
    ld d, b
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    inc l
    ld d, b
    inc h
    rst $38
    inc h
    ld d, b
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    inc a
    ld d, b
    inc h
    rst $38
    inc [hl]
    ld d, b
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    inc l
    ld d, b
    inc h
    rst $38
    inc h
    ld d, b
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    inc a
    ld d, b
    inc h
    rst $38
    inc [hl]
    ld d, b
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    inc l
    ld d, b
    inc h
    rst $38
    inc h
    ld d, b
    add hl, bc
    rst $38
    inc b
    nop
    inc bc
    rst $38
    ld c, $00
    ld [de], a
    rst $38
    ld c, h
    reti


    ld bc, $ff00
    rst $38
    adc d
    nop
    ld [hl], h
    ld [hl], l
    ret c

    db $76
    ld [hl], a
    reti


    adc d
    nop
    ld bc, $d801
    ld bc, $d901
    adc d
    nop
    ld h, [hl]
    ld h, a
    ret c

    ld [hl], d
    ld [hl], e
    reti


    adc d
    nop
    ld [bc], a
    ld [bc], a
    ret c

    ld [bc], a
    ld [bc], a
    reti


    dec d
    rst $38
    rst $18
    reti


    nop
    nop
    ld [hl+], a
    ld d, b
    ld l, $ff
    ld bc, $4800
    rst $38
    ld bc, $1500
    rst $38
    ldh [$d9], a
    nop
    nop
    ld l, h
    ld d, b
    ld c, c
    rst $38
    ld bc, $1500
    rst $38
    ldh [$d9], a
    ld bc, $6c00
    ld d, b
    ld b, a
    rst $38
    ld bc, $0d00
    rst $38
    ld bc, $0500
    nop
    ld bc, $0900
    rst $38
    inc c
    nop
    dec c
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    inc a
    rst $38
    rlca
    rst $38
    dec d
    rst $38
    ldh [$d9], a
    ld bc, $8a00
    ld c, a
    dec d
    rst $38
    ldh [$d9], a
    nop
    nop
    sub h
    ld c, a
    inc d
    rst $38
    ld a, d
    ld c, a
    dec d
    rst $38
    rst $18
    reti


    nop
    nop
    ld [hl+], a
    ld d, b
    ld l, $ff
    ld [bc], a
    nop
    ld c, b
    rst $38
    ld bc, $1500
    rst $38
    ldh [$d9], a
    nop
    nop
    ret nz

    ld d, b
    ld c, c
    rst $38
    ld bc, $1500
    rst $38
    ldh [$d9], a
    ld bc, $c000
    ld d, b
    ld b, a
    rst $38
    ld bc, $0d00
    rst $38
    ld bc, $0500
    nop
    ld bc, $0900
    rst $38
    inc c
    nop
    dec c
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    inc a
    rst $38
    rlca
    rst $38
    dec d
    rst $38
    ldh [$d9], a
    ld [bc], a
    nop
    adc d
    ld c, a
    dec d
    rst $38
    ldh [$d9], a
    ld bc, $9400
    ld c, a
    inc d
    rst $38
    ld a, d
    ld c, a
    nop
    rst $38
    ld c, $00
    ld hl, sp+$50
    ld bc, $1dff
    nop
    jr nz, @+$53

    ld bc, $0eff
    nop
    inc e
    ld d, c
    pop af
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $1200
    ld d, c
    di
    nop
    ld [de], a
    rst $38
    rst $18
    reti


    ld bc, $ff00
    rst $38
    ld a, [c]
    nop
    ld [de], a
    rst $38
    rst $18
    reti


    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    rst $38
    rst $38
    rst $20
    ld [bc], a
    rst $38
    rst $38
    nop
    rst $38
    ld c, $00
    ld c, [hl]
    ld d, c
    ld bc, $f1ff
    nop
    adc h
    ld d, c
    ld bc, $36ff
    nop
    ld a, d
    ld d, c
    ld bc, $35ff
    nop
    db $76
    ld d, c
    ld bc, $1dff
    nop
    ld [hl], d
    ld d, c
    ld bc, $33ff
    nop
    ld l, [hl]
    ld d, c
    ld bc, $32ff
    nop
    ld l, d
    ld d, c
    ld bc, $0eff
    nop
    ld h, [hl]
    ld d, c
    ld sp, hl
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $6200
    ld d, c
    ei
    nop
    rst $38
    rst $38
    ld_long a, $ff00
    rst $38
    dec a
    ld bc, $ffff
    ld l, $02
    rst $38
    rst $38
    add c
    ld [bc], a
    rst $38
    rst $38
    add sp, $02
    rst $38
    rst $38
    and [hl]
    inc bc
    rst $38
    rst $38
    ld a, [$1503]
    rst $38
    inc a
    ret z

    ld bc, $8800
    ld d, c
    ei
    inc bc
    rst $38
    rst $38
    or h
    ld [bc], a
    rst $38
    rst $38
    db $dd
    rlca
    rst $38
    rst $38
    nop
    rst $38
    ld c, $00
    or h
    ld d, c
    ld bc, $fcff
    nop
    jp nc, $0151

    rst $38
    pop af
    nop
    adc $51
    ld bc, $25ff
    nop
    jp z, $0151

    rst $38
    add e
    nop
    add $51
    ld bc, $1dff
    nop
    jp nz, $0151

    rst $38
    ld [hl-], a
    nop
    cp [hl]
    ld d, c
    db $fc
    nop
    rst $38
    rst $38
    cpl
    ld [bc], a
    rst $38
    rst $38
    jp hl


    ld [bc], a
    rst $38
    rst $38
    ld_long $ff02, a
    rst $38
    cp b
    inc b
    rst $38
    rst $38
    db $db
    rlca
    rst $38
    rst $38
    call c, $ff07
    rst $38
    nop
    ld bc, $ff15
    inc a
    ret z

    ld bc, $e400
    ld d, c
    ld l, a
    ld [$ffff], sp
    ld [hl], b
    ld [$ffff], sp
    ld bc, $ff01
    rst $38
    ld bc, $f1ff
    nop
    ld a, [bc]
    ld d, d
    ld bc, $35ff
    nop
    ld b, $52
    ld bc, $32ff
    nop
    ld [bc], a
    ld d, d
    db $fd
    nop
    rst $38
    rst $38
    jr nc, jr_00d_5206

    rst $38
    rst $38

jr_00d_5206:
    and a
    inc bc
    rst $38
    rst $38
    sbc $07
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    inc a
    ld d, d
    ld bc, $37ff
    nop
    jr c, jr_00d_526c

    nop
    rst $38
    dec [hl]
    nop
    ld h, $52
    ld bc, $6bff
    nop
    inc [hl]
    ld d, d
    ld bc, $32ff
    nop
    jr nc, jr_00d_527e

    rst $38
    nop
    rst $38
    rst $38
    ld [hl-], a
    ld [bc], a
    rst $38
    rst $38
    xor c
    inc bc
    rst $38
    rst $38
    ld d, l
    inc b
    rst $38
    rst $38
    ldh [rTAC], a
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    ld l, [hl]
    ld d, d
    ld bc, $37ff
    nop
    ld l, d
    ld d, d
    nop
    rst $38
    dec [hl]
    nop
    ld e, b
    ld d, d
    ld bc, $6bff
    nop
    ld h, [hl]
    ld d, d
    ld bc, $32ff
    nop
    ld h, d
    ld d, d
    cp $00
    rst $38
    rst $38
    ld sp, $ff02
    rst $38
    xor b
    inc bc
    rst $38
    rst $38
    ld d, h
    inc b

jr_00d_526c:
    rst $38
    rst $38
    rst $18
    rlca
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    sbc d
    ld d, d
    ld bc, $37ff
    nop
    sub [hl]
    ld d, d

jr_00d_527e:
    ld bc, $1dff
    nop
    sub d
    ld d, d
    ld bc, $32ff
    nop
    adc [hl]
    ld d, d
    ld [bc], a
    ld bc, $ffff
    inc sp
    ld [bc], a
    rst $38
    rst $38
    db $eb
    ld [bc], a
    rst $38
    rst $38
    ld d, [hl]
    inc b
    rst $38
    rst $38
    pop hl
    rlca
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    add $52
    ld bc, $37ff
    nop
    jp nz, Jump_000_0152

    rst $38
    dec e
    nop
    cp [hl]
    ld d, d
    ld bc, $32ff
    nop
    cp d
    ld d, d
    inc bc
    ld bc, $ffff
    inc [hl]
    ld [bc], a
    rst $38
    rst $38
    db $ec
    ld [bc], a
    rst $38
    rst $38
    ld d, a
    inc b
    rst $38
    rst $38
    ld [c], a
    rlca
    rst $38
    rst $38
    ld bc, $11ff
    ld bc, $53ce
    ld bc, $10ff
    ld bc, $53bc
    ld bc, $f1ff
    nop
    cp b
    ld d, e
    ld bc, $37ff
    nop
    and [hl]
    ld d, e
    ld bc, $36ff
    nop
    sub h
    ld d, e
    ld bc, $35ff
    nop
    add d
    ld d, e
    ld bc, $34ff
    nop
    ld [hl], b
    ld d, e
    ld bc, $1dff
    nop
    ld e, [hl]
    ld d, e
    ld bc, $33ff
    nop
    ld e, d
    ld d, e
    ld bc, $32ff
    nop
    ld c, b
    ld d, e
    ld bc, $31ff
    nop
    ld [hl], $53
    ld bc, $30ff
    nop
    inc h
    ld d, e
    inc b
    ld bc, $ff15
    inc a
    ret z

    ld bc, $2000
    ld d, e
    dec b
    ld bc, $ffff
    ld b, $01
    rst $38
    rst $38
    add b
    ld bc, $ff15
    inc a
    ret z

    ld bc, $3200
    ld d, e
    add c
    ld bc, $ffff
    ld b, $01
    rst $38
    rst $38
    cp h
    ld bc, $ff15
    inc a
    ret z

    ld bc, $4400
    ld d, e
    cp l
    ld bc, $ffff
    ld b, $01
    rst $38
    rst $38
    dec [hl]
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $5600
    ld d, e
    ld [hl], $02
    rst $38
    rst $38
    ld b, $01
    rst $38
    rst $38
    add d
    ld [bc], a
    rst $38
    rst $38
    db $ed
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $6c00
    ld d, e
    xor $02
    rst $38
    rst $38
    ld b, $01
    rst $38
    rst $38
    ld d, d
    inc bc
    dec d
    rst $38
    inc a
    ret z

    ld bc, $7e00
    ld d, e
    ld d, e
    inc bc
    rst $38
    rst $38
    ld b, $01
    rst $38
    rst $38
    xor d
    inc bc
    dec d
    rst $38
    inc a
    ret z

    ld bc, $9000
    ld d, e
    xor e
    inc bc
    rst $38
    rst $38
    ld b, $01
    rst $38
    rst $38
    db $fc
    inc bc
    dec d
    rst $38
    inc a
    ret z

    ld bc, $a200
    ld d, e
    db $fd
    inc bc
    rst $38
    rst $38
    cp $03
    rst $38
    rst $38
    ld e, b
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $b400
    ld d, e
    ld e, c
    inc b
    rst $38
    rst $38
    ld e, c
    inc b
    rst $38
    rst $38
    db $e3
    rlca
    rst $38
    rst $38
    db $e4
    rlca
    dec d
    rst $38
    inc a
    ret z

    ld bc, $ca00
    ld d, e
    push hl
    rlca
    rst $38
    rst $38
    and $07
    rst $38
    rst $38
    rst $20
    rlca
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    add h
    ld d, h
    ld bc, $25ff
    nop
    add b
    ld d, h
    ld bc, $37ff
    nop
    ld l, [hl]
    ld d, h
    ld bc, $36ff
    nop
    ld h, b
    ld d, h
    ld bc, $35ff
    nop
    ld d, d
    ld d, h
    ld bc, $34ff
    nop
    ld b, h
    ld d, h
    ld bc, $33ff
    nop
    ld [hl], $54
    ld bc, $32ff
    nop
    jr z, jr_00d_5456

    ld bc, $31ff
    nop
    ld a, [de]
    ld d, h
    rlca
    ld bc, $ff15
    inc a
    ret z

    ld bc, $1600
    ld d, h
    ld [$ff01], sp
    rst $38
    add hl, bc
    ld bc, $ffff
    db $76
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $1600
    ld d, h
    ld [hl], a
    ld [$ffff], sp
    ld a, h
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $1600
    ld d, h
    ld a, l
    ld [$ffff], sp
    add e
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $1600
    ld d, h
    add h
    ld [$ffff], sp
    adc h
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $1600
    ld d, h
    adc l
    ld [$ffff], sp
    sub b
    ld [$ff15], sp

jr_00d_5456:
    inc a
    ret z

    ld bc, $1600
    ld d, h
    sub c
    ld [$ffff], sp
    sbc e
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $1600
    ld d, h
    sbc h
    ld [$ffff], sp
    sbc a
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $7c00
    ld d, h
    and b
    ld [$ffff], sp
    and c
    ld [$ffff], sp
    and l
    ld [$ffff], sp
    db $dd
    ld bc, $ffff
    ld bc, $f1ff
    nop
    ld a, [hl-]
    ld d, l
    ld bc, $25ff
    nop
    ld [hl], $55
    ld bc, $37ff
    nop
    inc h
    ld d, l
    ld bc, $36ff
    nop
    ld d, $55
    ld bc, $35ff
    nop
    ld [$0155], sp
    rst $38
    inc [hl]
    nop
    ld a, [$0154]
    rst $38
    inc sp
    nop
    db $ec
    ld d, h
    ld bc, $32ff
    nop
    sbc $54
    ld bc, $31ff
    nop
    ret nc

    ld d, h
    ld a, [bc]
    ld bc, $ff15
    inc a
    ret z

    ld bc, $cc00
    ld d, h
    ld [hl], h
    ld [$ffff], sp
    ld [hl], l
    ld [$ffff], sp
    ld a, b
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $cc00
    ld d, h
    ld a, c
    ld [$ffff], sp
    ld a, [hl]
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $cc00
    ld d, h
    ld a, a
    ld [$ffff], sp
    add l
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $cc00
    ld d, h
    add [hl]
    ld [$ffff], sp
    adc [hl]
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $cc00
    ld d, h
    adc a
    ld [$ffff], sp
    sub d
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $cc00
    ld d, h
    sub e
    ld [$ffff], sp
    sbc l
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $cc00
    ld d, h
    sbc [hl]
    ld [$ffff], sp
    and d
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $3200
    ld d, l
    and e
    ld [$ffff], sp
    and h
    ld [$ffff], sp
    and [hl]
    ld [$ffff], sp
    ld c, l
    ld [bc], a
    rst $38
    rst $38
    scf
    ld bc, $ffff
    ld bc, $3cff
    nop
    ld e, [hl]
    ld d, l
    jr c, jr_00d_554b

    inc l

jr_00d_554b:
    rst $38
    ld e, d
    ld d, l
    add hl, hl
    ld bc, $ff2a
    ld e, $00
    inc bc
    rst $38
    inc a
    nop
    rst $38
    rst $38
    add hl, sp
    ld bc, $ffff
    ld a, [hl-]
    ld bc, $ffff
    ld a, [hl-]
    ld bc, $ffff
    dec sp
    ld bc, $ffff
    ld bc, $f1ff
    nop
    jp z, $0155

    rst $38
    dec h
    nop
    ret nz

    ld d, l
    ld bc, $37ff
    nop
    or [hl]
    ld d, l
    ld bc, $35ff
    nop
    xor h
    ld d, l
    ld bc, $1dff
    nop
    and d
    ld d, l
    ld bc, $32ff
    nop
    sbc b
    ld d, l
    dec bc
    ld bc, $010c
    inc bc
    rst $38
    rrca
    nop
    rst $38
    rst $38
    scf
    ld [bc], a
    inc c
    ld bc, $ff03
    ld e, e
    nop
    rst $38
    rst $38
    pop af
    ld [bc], a
    inc c
    ld bc, $ff03
    ld a, a
    nop
    rst $38
    rst $38
    xor [hl]
    inc bc
    inc c
    ld bc, $ff03
    sub c
    nop
    rst $38
    rst $38
    ld e, d
    inc b
    inc c
    ld bc, $ff03
    and l
    nop
    rst $38
    rst $38
    cp h
    inc b
    inc c
    ld bc, $ff03
    or c
    nop
    rst $38
    rst $38
    ld [$0c07], a
    ld bc, $ff03
    nop
    ld bc, $ffff
    ld bc, $00ff
    ld bc, $5642
    ld bc, $f1ff
    nop
    ld a, [hl+]
    ld d, [hl]
    ld bc, $b1ff
    nop
    ld a, $56
    ld bc, $25ff
    nop
    ld a, [hl+]
    ld d, [hl]
    ld bc, $a5ff
    nop
    ld a, [hl-]
    ld d, [hl]
    ld bc, $37ff
    nop
    ld a, [hl+]
    ld d, [hl]
    ld bc, $91ff
    nop
    ld [hl], $56
    ld bc, $35ff
    nop
    ld a, [hl+]
    ld d, [hl]
    ld bc, $7fff
    nop
    ld [hl-], a
    ld d, [hl]
    ld bc, $1dff
    nop
    ld a, [hl+]
    ld d, [hl]
    ld bc, $5bff
    nop
    ld l, $56
    ld bc, $32ff
    nop
    ld a, [hl+]
    ld d, [hl]
    ld bc, $0fff
    nop
    ld h, $56
    dec c
    ld bc, $ffff
    ld c, $01
    rst $38
    rst $38
    dec c
    ld bc, $ffff
    jr c, jr_00d_5632

    rst $38
    rst $38

jr_00d_5632:
    ld a, [c]
    ld [bc], a
    rst $38
    rst $38
    xor a
    inc bc
    rst $38
    rst $38
    ld e, e
    inc b
    rst $38
    rst $38
    cp l
    inc b
    rst $38
    rst $38
    db $eb
    rlca
    rst $38
    rst $38
    ld bc, $11ff
    ld bc, $56b4
    ld bc, $10ff
    ld bc, $56b0
    ld bc, $f1ff
    nop
    xor h
    ld d, [hl]
    ld bc, $37ff
    nop
    xor b
    ld d, [hl]
    ld bc, $35ff
    nop
    and h
    ld d, [hl]
    ld bc, $1dff
    nop
    and b
    ld d, [hl]
    ld bc, $33ff
    nop
    sbc h
    ld d, [hl]
    ld bc, $32ff
    nop
    sbc b
    ld d, [hl]
    ld bc, $31ff
    nop
    sub h
    ld d, [hl]
    ld bc, $30ff
    nop
    sub b
    ld d, [hl]
    ld bc, $21ff
    ld bc, $568c
    rrca
    ld bc, $ffff
    ld l, h
    ld [$ffff], sp
    ld [hl], d
    ld [$ffff], sp
    ld [hl], e
    ld [$ffff], sp
    add b
    ld [$ffff], sp
    add h
    ld [bc], a
    rst $38
    rst $38
    di
    ld [bc], a
    rst $38
    rst $38
    or b
    inc bc
    rst $38
    rst $38
    ld e, h
    inc b
    rst $38
    rst $38
    db $ec
    rlca
    rst $38
    rst $38
    db $ed
    rlca
    rst $38
    rst $38
    xor $07
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    sub $56
    ld bc, $1dff
    nop
    jp nc, Jump_000_0156

    rst $38
    ld [hl-], a
    nop
    adc $56
    rst $28
    nop
    rst $38
    rst $38
    add d
    ld [$ffff], sp
    adc e
    ld [$ffff], sp
    ld a, [hl]
    ld bc, $ffff
    call c, $0d56
    rst $38
    nop
    nop
    sub b
    rst $38
    ld b, b
    nop
    dec d
    rst $38
    ld d, c
    reti


    nop
    nop
    ld h, $57
    dec d
    rst $38
    ld d, c
    reti


    ld bc, $9200
    ld d, a
    dec d
    rst $38
    ld d, c
    reti


    ld [bc], a
    nop
    jr jr_00d_5754

    dec d
    rst $38
    ld d, c
    reti


    inc b
    nop
    ld a, d
    ld e, b
    dec d
    rst $38
    ld d, c
    reti


    dec b
    nop
    ldh [$58], a
    dec d
    rst $38
    ld d, c
    reti


    ld b, $00
    jr nz, jr_00d_576d

    dec d
    rst $38
    ld d, c
    reti


    rlca
    nop
    ld l, h
    ld e, c
    dec d
    rst $38
    ld d, c
    reti


    ld [$4000], sp
    ld e, d
    rst $38
    rst $38
    ld [de], a
    rst $38
    db $ec
    ret z

    nop
    nop
    ld [$0bff], sp
    rst $38
    ld bc, $d000
    rst $38
    add hl, bc
    rst $38
    ld b, $00
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
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    ld hl, sp-$01
    ld c, b
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38

jr_00d_5754:
    inc bc
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld a, [bc]
    rst $38
    inc bc
    nop
    ld [$4800], sp
    rst $38
    inc bc
    nop
    add hl, bc
    rst $38
    ld [$0b00], sp

jr_00d_576d:
    rst $38
    ld bc, $3000
    nop
    add hl, bc
    rst $38
    ld [$4a00], sp
    rst $38
    ld [bc], a
    nop
    ld c, c
    rst $38
    inc bc
    nop
    add hl, bc
    rst $38
    stop
    ld [de], a
    rst $38
    ld d, c
    reti


    ld bc, $0f00
    rst $38
    ld [$4800], sp
    nop
    ld c, b
    nop
    rst $38
    rst $38
    dec d
    rst $38
    adc e
    ret z

    ld bc, $ce00
    ld d, a
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    ld b, b
    nop
    ld [$07ff], sp
    rst $38
    db $fd
    ld b, $0b
    rst $38
    ld bc, $d000
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
    dec bc
    rst $38
    ld bc, $3000
    nop
    ld [de], a
    rst $38
    ld d, c
    reti


    ldh a, [rP1]
    ld c, a
    rst $38
    rst $38
    rst $38
    dec c
    rst $38
    ld [bc], a
    nop
    jr jr_00d_57d4

jr_00d_57d4:
    ld d, b
    nop
    dec c
    rst $38
    inc bc
    nop
    jr jr_00d_57dc

jr_00d_57dc:
    ld h, b
    nop
    ld [$07ff], sp
    rst $38
    db $fd
    ld b, $0b
    rst $38
    ld bc, $d000
    rst $38
    add hl, bc
    rst $38
    ld b, $00
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
    add hl, bc
    rst $38
    inc b
    nop
    dec bc
    rst $38
    ld bc, $3000
    nop
    ld [de], a
    rst $38
    sbc d
    reti


    ld bc, $0f00
    rst $38
    ld e, [hl]
    nop
    sbc b
    nop
    ld c, b
    nop
    rst $38
    rst $38
    ld [de], a
    rst $38
    db $ec
    ret z

    nop
    nop
    ld [$0bff], sp
    rst $38
    ld bc, $d000
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec bc
    rst $38
    ld bc, $3000
    nop
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    inc bc
    nop
    dec b
    nop
    ld b, b
    nop
    add hl, bc
    rst $38
    jr nz, jr_00d_584c

jr_00d_584c:
    ld hl, $5fff
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
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    rst $38
    ld [$0700], sp
    rst $38
    ld b, $07
    ld b, $ff
    ld [de], a
    rst $38
    ld d, c
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld d, c
    reti


    pop af
    nop
    ld c, a
    rst $38
    rst $38
    rst $38
    ld [$0bff], sp
    rst $38
    ld bc, $d000
    rst $38
    add hl, bc
    rst $38
    ld b, $00
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
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    ld hl, sp-$01
    ld c, b
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld a, [bc]
    rst $38
    inc bc
    nop
    ld [$4800], sp
    rst $38
    inc bc
    nop
    add hl, bc
    rst $38
    ld [$0b00], sp
    rst $38
    ld bc, $3000
    nop
    add hl, bc
    rst $38
    ld [$4a00], sp
    rst $38
    ld [bc], a
    nop
    ld c, c
    rst $38
    inc bc
    nop
    add hl, bc
    rst $38
    stop
    ld [de], a
    rst $38
    ld d, c
    reti


    dec b
    nop
    rrca
    rst $38
    ld [$4800], sp
    nop
    ld c, b
    nop
    rst $38
    rst $38
    dec c
    rst $38
    ld [bc], a
    nop
    jr jr_00d_58e6

jr_00d_58e6:
    ld d, b
    nop
    dec c
    rst $38
    inc bc
    nop
    jr jr_00d_58ee

jr_00d_58ee:
    ld h, b
    nop
    ld [$0bff], sp
    rst $38
    ld bc, $d000
    rst $38
    add hl, bc
    rst $38
    ld b, $00
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
    add hl, bc
    rst $38
    inc b
    nop
    dec bc
    rst $38
    ld bc, $3000
    nop
    ld [de], a
    rst $38
    ld d, c
    reti


    ld a, [c]
    nop
    ld b, e
    rst $38
    rst $38
    rst $38
    ld bc, $eeff
    nop
    call z, $0d5c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    inc e
    rst $38
    ld [bc], a
    inc d
    add hl, de
    rst $38
    ld c, b
    rst $38
    ld [bc], a
    nop
    dec de
    rst $38
    ld bc, $0000
    nop
    dec bc
    rst $38
    ld bc, $d000
    rst $38
    rlca
    rst $38
    rrca
    nop
    ld b, $ff
    dec de
    rst $38
    ld [bc], a
    nop
    ld b, b
    nop
    dec de
    rst $38
    ld bc, $3000
    nop
    add hl, de
    rst $38
    ld [de], a
    rst $38
    ld d, c
    reti


    rst $38
    nop
    ld c, b
    rst $38
    nop
    nop
    rrca
    rst $38
    add hl, bc
    nop
    ld hl, sp+$00
    ld [$ff00], sp
    rst $38
    ld bc, $eeff
    nop
    call z, $015c
    rst $38
    db $e4
    nop
    ld a, d
    ld e, c
    rst $38
    rst $38
    add hl, bc
    rst $38
    stop
    dec bc
    rst $38
    inc b
    nop
    ldh [rIE], a
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
    ld [$1200], sp
    rst $38
    sbc e
    ret z

    jp nc, Jump_000_1200

    rst $38
    sbc h
    ret z

    jp nc, Jump_000_1200

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    ld c, l
    rst $38
    ld [$1200], sp
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
    ld [$1200], sp
    rst $38
    sbc e
    ret z

    jp nc, Jump_000_1200

    rst $38
    sbc h
    ret z

    jp nc, Jump_000_1200

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    ld c, l
    rst $38
    ld [$1200], sp
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
    ld [$1200], sp
    rst $38
    sbc e
    ret z

    jp nc, Jump_000_1200

    rst $38
    sbc h
    ret z

    jp nc, Jump_000_1200

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    add hl, bc
    rst $38
    ld [$2100], sp
    rst $38
    ld d, c
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    dec bc
    rst $38
    ld bc, $f000
    rst $38
    add hl, bc
    rst $38
    inc b
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
    rlca
    rst $38
    ld c, $05
    add hl, bc
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    inc b
    nop
    ld e, [hl]
    rst $38
    rst $38
    rst $38
    ld bc, $eeff
    nop
    call z, $015c
    rst $38
    db $e4
    nop
    ld c, [hl]
    ld e, d
    rst $38
    rst $38
    inc e
    rst $38
    inc bc
    ld [$ff19], sp
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    inc bc
    nop
    dec b
    nop
    ld b, b
    nop
    add hl, bc
    rst $38
    jr nz, jr_00d_5a64

jr_00d_5a64:
    ld hl, $5fff
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
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    rst $38
    ld [$1c00], sp
    rst $38
    inc b
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [$4800], sp
    rst $38
    inc b
    nop
    rlca
    rst $38
    rrca
    dec b
    add hl, bc
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    inc b
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec bc
    rst $38
    inc b
    nop
    ldh a, [rIE]
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
    ld [$1200], sp
    rst $38
    sbc e
    ret z

    jp nc, Jump_000_1200

    rst $38
    sbc h
    ret z

    jp nc, Jump_000_1200

    rst $38
    sbc l
    ret z

    ld [c], a
    nop
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    ld [bc], a
    inc b
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld [de], a
    rst $38
    set 3, c
    ld bc, $1300
    rst $38
    and [hl]
    ret z

    nop
    nop
    ld c, b
    rst $38
    inc b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, d
    rst $38
    inc b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld b, a
    rst $38
    inc b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, c
    rst $38
    inc b
    nop
    add hl, bc
    rst $38
    ld bc, $4800
    rst $38
    inc b
    nop
    add hl, bc
    rst $38
    ld bc, $4a00
    rst $38
    inc b
    nop
    add hl, bc
    rst $38
    ld bc, $4700
    rst $38
    inc b
    nop
    add hl, bc
    rst $38
    ld bc, $4900
    rst $38
    inc b
    nop
    add hl, bc
    rst $38
    ld bc, $4800
    rst $38
    inc b
    nop
    add hl, bc
    rst $38
    ld bc, $4a00
    rst $38
    inc b
    nop
    add hl, bc
    rst $38
    ld bc, $4700
    rst $38
    inc b
    nop
    add hl, bc
    rst $38
    ld bc, $4900
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, b
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, d
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    ld b, $00
    ld b, a
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, c
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, b
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    inc b
    nop
    ld hl, $52ff
    nop
    ld [de], a
    rst $38
    set 3, c
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    inc b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    inc b
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
    add hl, bc
    rst $38
    ld bc, $1200
    rst $38
    sbc e
    ret z

    pop bc
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    jp nc, $0900

    rst $38
    ld bc, $1200
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
    add hl, bc
    rst $38
    ld bc, $1200
    rst $38
    sbc e
    ret z

    pop bc
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    jp nc, $0900

    rst $38
    ld bc, $1200
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
    add hl, bc
    rst $38
    ld bc, $1200
    rst $38
    sbc e
    ret z

    pop bc
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    jp nc, $0900

    rst $38
    ld bc, $1200
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
    add hl, bc
    rst $38
    ld bc, $0d00
    rst $38
    inc bc
    nop
    nop
    nop
    ld b, b
    nop
    ld [de], a
    rst $38
    sbc e
    ret z

    pop bc
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    jp nc, Jump_000_1200

    rst $38
    sbc d
    reti


    inc bc
    nop
    ld b, c
    rst $38
    ld [bc], a
    nop
    dec sp
    rst $38
    ld e, [hl]
    nop
    jr c, jr_00d_5cc8

jr_00d_5cc8:
    ld c, b
    nop
    rst $38
    rst $38
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    inc e
    rst $38
    ld [bc], a
    inc d
    add hl, de
    rst $38
    ld c, b
    rst $38
    ld [bc], a
    nop
    dec de
    rst $38
    ld bc, $0000
    nop
    dec bc
    rst $38
    ld bc, $d000
    rst $38
    rlca
    rst $38
    or l
    dec b
    ld b, $ff
    dec de
    rst $38
    ld [bc], a
    nop
    ld b, b
    nop
    dec de
    rst $38
    ld bc, $3000
    nop
    add hl, de
    rst $38
    ld c, b
    rst $38
    nop
    nop
    ld [de], a
    rst $38
    inc sp
    reti


    inc bc
    nop
    rrca
    rst $38
    ld bc, $4800
    nop
    add sp, $01
    rst $38
    rst $38
    ld a, [hl+]
    ld e, l
    nop
    ld h, b
    inc b
    ld h, b
    ld d, $60
    and b
    ld h, b
    add $60
    ld d, d
    ld h, c
    jp nz, Jump_00d_7460

    ld h, c
    add d
    ld h, c
    or d
    ld h, c
    call nc, Call_000_1561
    rst $38
    push hl
    reti


    ld bc, $ce00
    ld e, [hl]
    dec d
    rst $38
    ld d, c
    reti


    ldh a, [rP1]
    ld d, d
    ld e, l
    dec d
    rst $38
    ld d, c
    reti


    pop af
    nop
    and d
    ld e, l
    dec d
    rst $38
    ld d, c
    reti


    rst $38
    nop
    db $e4
    ld e, l
    ld c, $ff
    ld bc, $a200
    ld e, a
    rst $38
    rst $38
    ld d, b
    rst $38
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld [$07ff], sp
    rst $38
    dec d
    rst $38
    and $d9
    nop
    nop
    ld l, d
    ld e, l
    cp $06
    rst $38
    ld b, $15
    rst $38
    inc a
    ret z

    nop
    nop
    adc [hl]
    ld e, l
    ld bc, $f107
    ld b, $4e
    rst $38
    inc b
    rst $38
    ld b, $00
    ldh a, [rTMA]
    ld a, [c]
    ld b, $06
    rst $38
    ld [de], a
    rst $38
    ld d, c
    reti


    nop
    nop
    ld d, $ff
    rst $38
    rst $38
    ld h, b
    rst $38
    sbc b
    ld e, l
    dec b
    rlca
    ld a, [hl-]
    rst $38
    rst $38
    rst $38
    ld c, $07
    ld [de], a
    rst $38
    ld d, c
    reti


    nop
    nop
    rst $38
    rst $38
    ld d, b
    rst $38
    inc b
    rst $38
    rrca
    nop
    nop
    nop
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld [$07ff], sp
    rst $38
    ld [$0407], sp
    rst $38
    dec bc
    nop
    ldh a, [rTMA]
    dec d
    rst $38
    inc a
    ret z

    ld bc, $ca00
    ld e, l
    inc d
    rst $38
    call z, Call_000_075d
    rlca
    pop af
    ld b, $4e
    rst $38
    inc b
    rst $38
    ld b, $00
    ldh a, [rTMA]
    ld a, [c]
    ld b, $06
    rst $38
    ld [de], a
    rst $38
    ld d, c
    reti


    nop
    nop
    ld d, $ff
    rst $38
    rst $38
    ld c, $ff
    ld bc, $f800
    ld e, l
    ld c, $ff
    dec b
    nop
    ld b, h
    ld e, [hl]
    ld c, $ff
    inc b
    nop
    add b
    ld e, [hl]
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
    ld [$1bff], sp
    rst $38
    ld [bc], a
    nop
    stop
    dec de
    rst $38
    nop
    nop
    stop
    add hl, de
    rst $38
    ld a, [de]
    rst $38
    ld [bc], a
    nop
    ldh a, [rIE]
    dec de
    rst $38
    nop
    nop
    stop
    add hl, de
    rst $38
    dec de
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [de]
    rst $38
    nop
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    dec de
    rst $38
    ld [bc], a
    nop
    ld h, b
    nop
    dec de
    rst $38
    nop
    nop
    ld h, b
    nop
    add hl, de
    rst $38
    rrca
    rst $38
    add hl, bc
    nop
    add sp, $00
    adc b
    nop
    rst $38
    rst $38
    ld [$1bff], sp
    rst $38
    inc b
    nop
    ld d, b
    nop
    dec de
    rst $38
    nop
    nop
    ld d, b
    nop
    add hl, de
    rst $38
    ld a, [de]
    rst $38
    inc b
    nop
    ldh a, [rIE]
    dec de
    rst $38
    nop
    nop
    stop
    add hl, de
    rst $38
    ld a, [de]
    rst $38
    inc b
    nop
    or b
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    or b
    rst $38
    add hl, de
    rst $38
    ld [de], a
    rst $38
    ld d, e
    reti


    ld [bc], a
    nop
    rrca
    rst $38
    add hl, bc
    nop
    sbc b
    nop
    add sp, $00
    rst $38
    rst $38
    ld [$1aff], sp
    rst $38
    ld bc, $c000
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ret nz

    rst $38
    add hl, de
    rst $38
    ld hl, $51ff
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld hl, $51ff
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    ld b, b
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld [de], a
    rst $38
    ld d, e
    reti


    nop
    nop
    rrca
    rst $38
    ld bc, $4800
    nop
    add sp, $01
    rst $38
    rst $38
    ld [de], a
    rst $38
    ld c, d
    ret c

    jr jr_00d_5ed4

jr_00d_5ed4:
    ld [de], a
    rst $38
    ld c, e
    ret c

    ld bc, $1200
    rst $38
    ld l, d
    ret c

    jr jr_00d_5ee0

jr_00d_5ee0:
    ld [de], a
    rst $38
    ld l, e
    ret c

    ld bc, $1200
    rst $38
    adc d
    ret c

    jr jr_00d_5eec

jr_00d_5eec:
    ld [de], a
    rst $38
    adc e
    ret c

    ld bc, $1200
    rst $38
    xor d
    ret c

    jr jr_00d_5ef8

jr_00d_5ef8:
    ld [de], a
    rst $38
    xor e
    ret c

    ld bc, $0900
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
    ld [hl+], a
    rst $38
    dec de
    rst $38
    inc b
    nop
    stop
    add hl, de
    rst $38
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    inc b
    nop
    stop
    dec de
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    dec c
    rst $38
    ld b, $00
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    inc b
    nop
    stop
    dec de
    rst $38
    dec b
    nop
    stop
    dec de
    rst $38
    ld b, $00
    stop
    add hl, de
    rst $38
    dec c
    rst $38
    rlca
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    inc b
    nop
    jr nz, jr_00d_5f5a

jr_00d_5f5a:
    dec de
    rst $38
    dec b
    nop
    jr nc, jr_00d_5f60

jr_00d_5f60:
    dec de
    rst $38
    ld b, $00
    ld b, b
    nop
    dec de
    rst $38
    rlca
    nop
    ld d, b
    nop
    add hl, de
    rst $38
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
    ld c, b
    rst $38
    nop
    nop
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
    push hl
    reti


    nop
    nop
    rst $38
    rst $38
    ld bc, $eeff
    nop
    xor [hl]
    ld e, a
    ld bc, $e4ff
    nop
    or b
    ld e, a
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
    ld [hl+], a
    rst $38
    dec de
    rst $38
    nop
    nop
    ld d, b
    nop
    add hl, de
    rst $38
    ld c, c
    rst $38
    nop
    nop
    rlca
    rst $38
    db $10
    dec b
    dec bc
    rst $38
    nop
    nop
    ret nz

    rst $38
    ld a, [bc]
    rst $38
    nop
    nop
    ldh [rIE], a
    dec bc
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld hl, $51ff
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    ld b, b
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld [de], a
    rst $38
    ld d, c
    reti


    rlca
    nop
    rrca
    rst $38
    ld [$5800], sp
    nop
    ld a, b
    nop
    rst $38
    rst $38
    ld a, [hl-]
    ld [$ffff], sp
    pop bc
    ld bc, $ff15
    inc a
    ret z

    ld bc, $1200
    ld h, b
    jp nz, $ff01

    rst $38
    ld h, $00
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    ld [hl], h
    ld h, b
    ld bc, $25ff
    nop
    ld d, d
    ld h, b
    ld bc, $1dff
    nop
    ld a, [hl-]
    ld h, b
    jp Jump_000_1501


    rst $38
    inc a
    ret z

    ld bc, $3600
    ld h, b
    call nz, $ff01
    rst $38
    ld c, a
    ld bc, $ffff
    db $f4
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3600
    ld h, b
    push af
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3600
    ld h, b
    or $02
    rst $38
    rst $38
    ret nz

    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3600
    ld h, b
    push af
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3600
    ld h, b
    pop bc
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3600
    ld h, b
    jp nz, $ff04

    rst $38
    db $f4
    rlca
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3600
    ld h, b
    push af
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3600
    ld h, b
    pop bc
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3600
    ld h, b
    push af
    rlca
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3600
    ld h, b
    or $07
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    cp [hl]
    ld h, b
    ld bc, $25ff
    nop
    cp d
    ld h, b
    ld bc, $35ff
    nop
    or [hl]
    ld h, b
    cp a
    ld bc, $ffff
    or c
    inc bc
    rst $38
    rst $38
    cp [hl]
    inc b
    rst $38
    rst $38
    ld a, [c]
    rlca
    rst $38
    rst $38
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld bc, $03ff
    ld bc, $6102
    ld bc, $11ff
    ld bc, $613c
    ld bc, $02ff
    ld bc, $6102
    ld bc, $10ff
    ld bc, $6126
    ld bc, $01ff
    ld bc, $6102
    ld bc, $f1ff
    nop
    db $10
    ld h, c
    ld bc, $45ff
    nop
    ld [bc], a
    ld h, c
    cp [hl]
    ld bc, $ff03
    ld b, l
    nop
    ld c, [hl]
    rst $38
    inc b
    rst $38
    ld b, $00
    ldh a, [rTMA]
    ld a, [c]
    ld b, $ff
    rst $38
    ldh a, [rTMA]
    ld c, [hl]
    rst $38
    inc b
    rst $38
    ld b, $00
    ldh a, [rTMA]
    ld a, [c]
    ld b, $ff
    rst $38
    rst $28
    rlca
    inc bc
    rst $38
    ld b, l
    nop
    inc bc
    rst $38
    ld bc, $4e01
    rst $38
    inc b
    rst $38
    ld b, $00
    ldh a, [rTMA]
    ld a, [c]
    ld b, $ff
    rst $38
    ldh a, [rTAC]
    inc bc
    rst $38
    ld b, l
    nop
    inc bc
    rst $38
    ld [bc], a
    ld bc, $ff4e
    inc b
    rst $38
    ld b, $00
    ldh a, [rTMA]
    ld a, [c]
    ld b, $ff
    rst $38
    pop af
    rlca
    inc bc
    rst $38
    ld b, l
    nop
    inc bc
    rst $38
    inc bc
    ld bc, $ff4e
    inc b
    rst $38
    ld b, $00
    ldh a, [rTMA]
    ld a, [c]
    ld b, $ff
    rst $38
    ld bc, $f1ff
    nop
    ld [hl], b
    ld h, c
    ld bc, $25ff
    nop
    ld l, h
    ld h, c
    ld bc, $35ff
    nop
    ld l, b
    ld h, c
    ret nz

    ld bc, $ffff
    or d
    inc bc
    rst $38
    rst $38
    cp a
    inc b
    rst $38
    rst $38
    di
    rlca
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    ld a, [hl]
    ld h, c
    push bc
    ld bc, $ffff
    rst $30
    rlca
    rst $38
    rst $38
    ld bc, $23ff
    ld bc, $61ae
    ld bc, $f1ff
    nop
    and [hl]
    ld h, c
    ld bc, $25ff
    nop
    and d
    ld h, c
    ld bc, $35ff
    nop
    sbc [hl]
    ld h, c
    add $01
    rst $38
    rst $38
    or e
    inc bc
    rst $38
    rst $38
    jp $ff04


    rst $38
    ld hl, sp+$07
    inc bc
    rst $38
    inc hl
    ld bc, $ffff
    ld d, b
    ld [$ffff], sp
    ld bc, $f1ff
    nop
    ret nc

    ld h, c
    ld bc, $25ff
    nop
    call z, $0161
    rst $38
    dec [hl]
    nop
    ret z

    ld h, c
    rst $00
    ld bc, $ffff
    or h
    inc bc
    rst $38
    rst $38
    call nz, $ff04
    rst $38
    ld sp, hl
    rlca
    rst $38
    rst $38
    dec bc
    rst $38
    nop
    nop
    or b
    rst $38
    ld [de], a
    rst $38
    ld [c], a
    reti


    ld bc, $0f00
    rst $38
    inc b
    nop
    ret z

    ld bc, $00f8
    ld [$0161], a
    rst $38
    ld hl, $f600
    ld h, c
    ld bc, $1eff
    ld bc, $61f8
    rst $38
    rst $38
    ld [de], a
    rst $38
    ld e, [hl]
    reti


    inc b
    nop
    inc bc
    rst $38
    ld b, e
    nop
    rst $38
    rst $38
    ld b, $62
    rst $38
    rst $38
    inc d
    ld h, d
    ld d, $62
    ld a, [de]
    ld h, d
    ld e, $62
    ld [hl+], a
    ld h, d
    ld h, $62
    rst $38
    rst $38
    ret


    ld bc, $ffff
    jp z, $ff01

    rst $38
    rlc c
    rst $38
    rst $38
    ld c, b
    rst $38
    ld bc, $0100
    rst $38
    inc b
    ld bc, $624c
    ld bc, $f1ff
    nop
    ld e, h
    ld h, d
    ld bc, $46ff
    nop
    ld c, h
    ld h, d
    inc a
    rst $38
    ret z

    ld bc, $ff03
    ld b, [hl]
    nop
    inc b
    rst $38
    rlca
    nop
    ld d, b
    rlca
    inc a
    rst $38
    ld d, d
    rlca
    rst $38
    rst $38
    inc a
    rst $38
    ld d, b
    rlca
    inc b
    rst $38
    rlca
    nop
    ld d, b
    rlca
    inc a
    rst $38
    ld d, d
    rlca
    rst $38
    rst $38
    inc a
    rst $38
    ld a, [$0307]
    rst $38
    inc b
    ld bc, $ff04
    rlca
    nop
    ld d, b
    rlca
    inc a
    rst $38
    ld d, d
    rlca
    rst $38
    rst $38
    add h
    ld h, d
    add [hl]
    ld h, d
    xor b
    ld h, d
    ld b, b
    ld h, e
    ld b, h
    ld h, e
    ld c, b
    ld h, e
    or d
    ld h, e
    sbc $63
    inc l
    ld h, h
    ld b, b
    ld h, h
    rst $38
    rst $38
    ld bc, $47ff
    nop
    and d
    ld h, d
    pop de
    ld bc, $ff2c
    sbc [hl]
    ld h, d
    add hl, hl
    ld bc, $ff2a
    ld e, $00
    inc bc
    rst $38
    ld b, a
    nop
    rst $38
    rst $38
    jp nc, $ff01

    rst $38
    pop de
    ld bc, $01d3
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    inc c
    ld h, e
    ld bc, $25ff
    nop
    ld [$0162], a
    rst $38
    dec [hl]
    nop
    jp nc, $0162

    rst $38
    dec e
    nop
    call nz, $d462
    ld bc, $ffff
    ei
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3c00
    ld h, e
    db $fc
    ld [bc], a
    rst $38
    rst $38
    ei
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3c00
    ld h, e
    or a
    inc bc
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3c00
    ld h, e
    cp b
    inc bc
    rst $38
    rst $38
    ei
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3c00
    ld h, e
    or a
    inc bc
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3c00
    ld h, e
    jp z, Jump_000_1504

    rst $38
    inc a
    ret z

    ld bc, $3c00
    ld h, e
    rlc h
    rst $38
    rst $38
    ei
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3c00
    ld h, e
    or a
    inc bc
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3c00
    ld h, e
    jp z, Jump_000_1504

    rst $38
    inc a
    ret z

    ld bc, $3c00
    ld h, e
    cp $07
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3c00
    ld h, e
    rst $38
    rlca
    inc bc
    rst $38
    dec b
    ld bc, $ffff
    ld c, a
    ld bc, $ffff
    push de
    ld bc, $ffff
    ld e, l
    ld bc, $ffff
    ld bc, $f1ff
    nop
    and b
    ld h, e
    ld bc, $25ff
    nop
    add h
    ld h, e
    nop
    rst $38
    dec e
    nop
    ld h, b
    ld h, e
    ld bc, $80ff
    nop
    ld [hl], d
    ld h, e
    call z, Call_000_1501
    rst $38
    inc a
    ret z

    ld bc, $6e00
    ld h, e
    adc $01
    rst $38
    rst $38
    call $ff01
    rst $38
    rst $30
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $8000
    ld h, e
    ld hl, sp+$02
    rst $38
    rst $38
    ld sp, hl
    ld [bc], a
    rst $38
    rst $38
    push bc
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $9c00
    ld h, e
    rst $00
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $8000
    ld h, e
    ret z

    inc b
    rst $38
    rst $38
    add $04
    rst $38
    rst $38
    ei
    rlca
    dec d
    rst $38
    inc a
    ret z

    ld bc, $ae00
    ld h, e
    db $fc
    rlca
    rst $38
    rst $38
    db $fc
    rlca
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    jp c, Jump_000_0163

    rst $38
    dec h
    nop
    sub $63
    ld bc, $35ff
    nop
    jp nc, Jump_000_0163

    rst $38
    dec e
    nop
    adc $63
    rst $08
    ld bc, $ffff
    ld_long a, $ff02
    rst $38
    or l
    inc bc
    rst $38
    rst $38
    ret


    inc b
    rst $38
    rst $38
    db $fd
    rlca
    rst $38
    rst $38
    ld bc, $07ff
    ld bc, $6428
    ld bc, $06ff
    ld bc, $6416
    ld bc, $f3ff
    nop
    cp $63
    ld bc, $f1ff
    nop
    ld a, [$d063]
    ld bc, $ffff
    nop
    ld [$ffff], sp
    ld bc, $4008
    rst $38
    inc de
    nop
    ld c, $64
    inc bc
    ld [$ff03], sp
    ld b, $01
    rst $38
    rst $38
    ld [bc], a
    ld [$ff03], sp
    rlca
    ld bc, $ffff
    ld b, b
    rst $38
    inc de
    nop
    jr nz, @+$66

    dec b
    ld [$ffff], sp
    inc b
    ld [$ff03], sp
    rlca
    ld bc, $ffff
    ld b, $08
    rst $38
    rst $38
    ld bc, $07ff
    ld bc, $643e
    db $10
    rst $38
    inc bc
    nop
    ld a, b
    nop
    ld c, b
    rst $38
    inc bc
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $07ff
    ld bc, $6452
    db $10
    rst $38
    inc bc
    nop
    adc b
    nop
    ld c, b
    rst $38
    inc bc
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, [hl]
    ld h, h
    rst $38
    rst $38
    ld e, [hl]
    ld h, h
    ld h, b
    ld h, h
    add d
    ld h, h
    rst $38
    rst $38
    ld bc, $41ff
    nop
    db $76
    ld h, h
    add d
    ld bc, $ff03
    ld b, c
    nop
    inc b
    rst $38
    ld [bc], a
    nop
    and b
    ld b, $a2
    ld b, $ff
    rst $38
    and b
    ld b, $04
    rst $38
    ld [bc], a
    nop
    and b
    ld b, $a2
    ld b, $ff
    rst $38
    ld bc, $24ff
    ld bc, $64b2
    ld bc, $f1ff
    nop
    xor d
    ld h, h
    ld bc, $13ff
    ld bc, $64a6
    ld bc, $25ff
    nop
    sbc [hl]
    ld h, h
    add h
    ld bc, $ffff
    call z, $0304
    rst $38
    inc de
    ld bc, $ffff
    ld d, d
    ld [$ffff], sp
    rlca
    ld [$ff03], sp
    inc h
    ld bc, $ffff
    ld d, e
    ld [$ffff], sp
    add $64
    ret nc

    ld h, h
    call nc, $d864
    ld h, h
    call c, $e064
    ld h, h
    ld a, [c]
    ld h, l
    inc l
    ld h, [hl]
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
    ldh a, [rSB]
    rst $38
    rst $38
    db $76
    ld [bc], a
    rst $38
    rst $38
    cp b
    ld [bc], a
    rst $38
    rst $38
    ld c, b
    rst $38
    ld bc, $0100
    rst $38
    add c
    nop
    ld d, b
    ld h, l
    db $fd
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $f400
    ld h, h
    cp $02
    rst $38
    rst $38
    rst $38
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $0200
    ld h, l
    nop
    inc bc
    rst $38
    rst $38
    ld bc, $1503
    rst $38
    inc a
    ret z

    ld bc, $1000
    ld h, l
    cp $02
    rst $38
    rst $38
    ld [bc], a
    inc bc
    dec d
    rst $38
    inc a
    ret z

    ld bc, $2400
    ld h, l
    inc bc
    inc bc
    inc bc
    rst $38
    add c
    nop
    inc d
    rst $38
    ld d, d
    ld h, l
    ld bc, $1503
    rst $38
    inc a
    ret z

    ld bc, $3200
    ld h, l
    cp $02
    rst $38
    rst $38
    ld [bc], a
    inc bc
    dec d
    rst $38
    inc a
    ret z

    ld bc, $4600
    ld h, l
    inc bc
    inc bc
    inc bc
    rst $38
    add c
    nop
    inc d
    rst $38
    ld d, d
    ld h, l
    inc b
    inc bc
    inc bc
    rst $38
    add c
    nop
    inc d
    rst $38
    ld d, d
    ld h, l
    dec b
    inc bc
    ld e, d
    rst $38
    ld h, a
    nop
    rlca
    rst $38
    ld b, $03
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
    inc de
    rst $38
    db $e3
    ret c

    dec b
    ld [bc], a
    inc e
    rst $38
    inc bc
    dec d
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    inc bc
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    inc bc
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    inc bc
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, b
    rst $38
    inc bc
    nop
    dec c
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    ld b, a
    rst $38
    nop
    nop
    rlca
    rst $38
    inc hl
    ld bc, $ff1c
    inc bc
    inc b
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    inc bc
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    inc bc
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    inc bc
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, b
    rst $38
    inc bc
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld [de], a
    rst $38
    db $e3
    reti


    stop
    inc bc
    rst $38
    dec de
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld b, c
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    ld e, d
    reti


    ld bc, $3b00
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld bc, $08ff
    ld bc, $6628
    nop
    rst $38
    dec de
    nop
    inc b
    ld h, [hl]
    ld bc, $f1ff
    nop
    jr nz, @+$68

    ld bc, $82ff
    nop
    inc e
    ld h, [hl]
    ld bc, $1bff
    nop
    inc d
    ld h, [hl]
    sub $01
    rst $38
    rst $38
    rlca
    inc bc
    inc bc
    rst $38
    add d
    nop
    rst $38
    rst $38
    ld [$ff03], sp
    rst $38
    ld [$0308], sp
    rst $38
    ld [$ff01], sp
    rst $38
    add hl, bc
    ld [$ffff], sp
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    rst $38
    rst $38
    ld [hl], $66
    rst $38
    rst $38
    ld e, h
    ld h, [hl]
    db $76
    ld h, [hl]
    ld a, d
    ld h, [hl]
    ld a, [hl]
    ld h, [hl]
    add d
    ld h, [hl]
    add [hl]
    ld h, [hl]
    adc d
    ld h, [hl]
    adc [hl]
    ld h, [hl]
    sub d
    ld h, [hl]
    sub [hl]
    ld h, [hl]
    sbc d
    ld h, [hl]
    sbc [hl]
    ld h, [hl]
    and d
    ld h, [hl]
    and [hl]
    ld h, [hl]
    xor $66
    ld a, [c]
    ld h, [hl]
    inc a
    ld h, a
    call c, Call_000_0067
    rst $38
    ld [hl], $00
    ld l, [hl]
    ld h, [hl]
    nop
    rst $38
    ld b, d
    nop
    ld l, [hl]
    ld h, [hl]
    ld bc, $92ff
    nop
    ld [hl], b
    ld h, [hl]
    rst $38
    rst $38
    inc bc
    rst $38
    sub e
    nop
    rst $38
    rst $38
    adc b
    ld bc, $ffff
    adc c
    ld bc, $ffff
    adc d
    ld bc, $ffff
    adc e
    ld bc, $ffff
    adc h
    ld bc, $ffff
    adc l
    ld bc, $ffff
    adc [hl]
    ld bc, $ffff
    adc a
    ld bc, $ffff
    sub b
    ld bc, $ffff
    sub c
    ld bc, $ffff
    sub d
    ld bc, $ffff
    sub e
    ld bc, $ffff
    ld bc, $09ff
    ld bc, $66ea
    ld bc, $f1ff
    nop
    ld [c], a
    ld h, [hl]
    ld bc, $25ff
    nop
    sbc $66
    ld bc, $1dff
    nop
    jp c, Jump_000_0166

    rst $38
    ld [hl-], a
    nop
    sub $66
    add l
    ld bc, $ff15
    inc a
    ret z

    ld bc, $d200
    ld h, [hl]
    add [hl]
    ld bc, $ffff
    add a
    ld bc, $ffff
    add hl, sp
    ld [bc], a
    rst $38
    rst $38
    add hl, bc
    inc bc
    rst $38
    rst $38
    call $ff04
    rst $38
    ld a, [bc]
    ld [$ff03], sp
    add hl, bc
    ld bc, $ffff
    dec bc
    ld [$ffff], sp
    ld c, b
    rst $38
    ld bc, $0100
    rst $38
    ld a, [bc]
    ld bc, $6718
    ld bc, $f1ff
    nop
    jr z, jr_00d_6765

    ld bc, $42ff
    nop
    jr jr_00d_676b

    sub h
    ld bc, $ff03
    ld b, d
    nop
    inc b
    rst $38
    ld [$4000], sp
    rlca
    ld [$07ff], sp
    rst $38
    ld b, d
    rlca
    rst $38
    rst $38
    ld b, b
    rlca
    inc b
    rst $38
    ld [$4000], sp
    rlca
    ld [$07ff], sp
    rst $38
    ld b, d
    rlca
    rst $38
    rst $38
    inc c
    ld [$ff03], sp
    ld a, [bc]
    ld bc, $ff04
    ld [$4000], sp
    rlca
    ld [$07ff], sp
    rst $38
    ld b, d
    rlca
    rst $38
    rst $38
    ld bc, $1fff
    ld bc, $6748
    ld l, c
    ld [$ff03], sp
    rra
    ld bc, $ff51
    sub b
    rlca
    dec d
    rst $38
    pop hl
    ret c

    nop
    nop
    xor h
    ld h, a
    dec d
    rst $38
    pop hl
    ret c

    ld bc, $b000
    ld h, a
    dec d
    rst $38
    pop hl
    ret c

    ld [bc], a
    nop
    or h
    ld h, a
    dec d

jr_00d_6765:
    rst $38
    pop hl
    ret c

    inc bc
    nop
    cp b

jr_00d_676b:
    ld h, a
    dec d
    rst $38
    pop hl
    ret c

    inc b
    nop
    cp h
    ld h, a
    dec d
    rst $38
    pop hl
    ret c

    dec b
    nop
    ret nz

    ld h, a
    dec d
    rst $38
    pop hl
    ret c

    ld b, $00
    call nz, $1567
    rst $38
    pop hl
    ret c

    rlca
    nop
    ret z

    ld h, a
    dec d
    rst $38
    pop hl
    ret c

    ld [$cc00], sp
    ld h, a
    dec d
    rst $38
    pop hl
    ret c

    add hl, bc
    nop
    ret nc

    ld h, a
    dec d
    rst $38
    pop hl
    ret c

    ld a, [bc]
    nop
    call nc, $1567
    rst $38
    pop hl
    ret c

    dec bc
    nop
    ret c

    ld h, a
    sub c
    rlca
    rst $38
    rst $38
    sub d
    rlca
    rst $38
    rst $38
    sub e
    rlca
    rst $38
    rst $38
    sub h
    rlca
    rst $38
    rst $38
    sub l
    rlca
    rst $38
    rst $38
    sub [hl]
    rlca
    rst $38
    rst $38
    sub a
    rlca
    rst $38
    rst $38
    sbc b
    rlca
    rst $38
    rst $38
    sbc c
    rlca
    rst $38
    rst $38
    sbc d
    rlca
    rst $38
    rst $38
    sbc e
    rlca
    rst $38
    rst $38
    sbc h
    rlca
    rst $38
    rst $38
    ld sp, $e8ff
    ld h, a
    sub l
    ld bc, $ff03
    sub d
    nop
    rst $38
    rst $38
    cp c
    inc bc
    dec c
    rst $38
    inc b
    nop
    stop
    nop
    nop
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    rst $38
    stop
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    ld b, b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec bc
    rst $38
    ld [bc], a
    nop
    ldh [rIE], a
    ld hl, $51ff
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    nop
    ld [de], a
    rst $38
    ld e, h
    reti


    ld bc, $0300
    rst $38
    jr nz, jr_00d_682f

    rst $38

jr_00d_682f:
    rst $38
    ld d, b
    ld l, b
    ld d, d
    ld l, b
    ld d, [hl]
    ld l, b
    ld e, d
    ld l, b
    ld e, [hl]
    ld l, b
    ld h, d
    ld l, b
    ld h, [hl]
    ld l, b
    ld l, d
    ld l, b
    ld l, [hl]
    ld l, b
    ld [hl], d
    ld l, b
    db $76
    ld l, b
    ld a, d
    ld l, b
    ld a, [hl]
    ld l, b
    add d
    ld l, b
    add [hl]
    ld l, b
    adc d
    ld l, b
    rst $38
    rst $38
    cp e
    inc bc
    rst $38
    rst $38
    cp h
    inc bc
    rst $38
    rst $38
    cp l
    inc bc
    rst $38
    rst $38
    cp [hl]
    inc bc
    rst $38
    rst $38
    cp a
    inc bc
    rst $38
    rst $38
    ret nz

    inc bc
    rst $38
    rst $38
    pop bc
    inc bc
    rst $38
    rst $38
    jp nz, $ff03

    rst $38
    jp $ff03


    rst $38
    call nz, $ff03
    rst $38
    push bc
    inc bc
    rst $38
    rst $38
    add $03
    rst $38
    rst $38
    rst $00
    inc bc
    rst $38
    rst $38
    ret z

    inc bc
    rst $38
    rst $38
    ld bc, $c1ff
    ld [bc], a
    sub h
    ld l, b
    cp d
    inc bc
    rst $38
    rst $38
    dec c
    ld [$ffff], sp
    sbc d
    ld l, b
    rst $38
    rst $38
    sbc [hl]
    ld l, b
    rst $38
    rst $38
    xor b
    ld l, b
    xor d
    ld l, b
    xor [hl]
    ld l, b
    call c, $ff68
    rst $38
    ld c, b
    rst $38
    ld bc, $0100
    rst $38
    ld d, e
    nop
    jp nc, $0168

    rst $38
    jr c, jr_00d_68b8

jr_00d_68b8:
    ret z

    ld l, b
    db $10
    ld bc, $ff03
    jr c, jr_00d_68c0

jr_00d_68c0:
    inc b
    rst $38
    ld a, [bc]
    nop
    jr nz, jr_00d_68cd

    rst $38
    rst $38
    jr nz, jr_00d_68d1

    inc b
    rst $38
    ld a, [bc]

jr_00d_68cd:
    nop
    jr nz, jr_00d_68d7

    rst $38

jr_00d_68d1:
    rst $38
    ld l, $07
    inc b
    rst $38
    ld a, [bc]

jr_00d_68d7:
    nop
    jr nz, @+$09

    rst $38
    rst $38
    nop
    rst $38
    xor $00
    ld a, [$0168]
    rst $38
    ld e, h
    nop
    ld e, h
    ld l, c
    ld bc, $43ff
    nop
    ld d, h
    ld l, c
    ld bc, $1eff
    ld bc, $6950
    ld bc, $50ff
    nop
    ld c, b
    ld l, c
    nop
    rst $38
    ld e, h
    nop
    ld [de], a
    ld l, c
    ld bc, $25ff
    nop
    ld b, h
    ld l, c
    ld bc, $35ff
    nop
    ld b, b
    ld l, c
    ld bc, $32ff
    nop
    inc a
    ld l, c
    ld bc, $43ff
    nop
    inc [hl]
    ld l, c
    ld bc, $1eff
    ld bc, $6930
    ld bc, $50ff
    nop
    jr z, jr_00d_698d

    ld [de], a
    ld bc, $ffff
    ld b, h
    ld bc, $ff03
    ld e, $01
    rst $38
    rst $38
    ld l, b
    ld [$ffff], sp
    ld b, l
    ld bc, $ff03
    ld e, h
    nop
    rst $38
    rst $38
    ld a, [hl-]
    ld [bc], a
    rst $38
    rst $38
    ret


    inc bc
    rst $38
    rst $38
    add hl, sp
    inc bc
    rst $38
    rst $38
    ld b, h
    ld bc, $ff03
    ld e, $01
    rst $38
    rst $38
    ld l, b
    ld [$ffff], sp
    ld b, l
    ld bc, $ff03
    ld e, h
    nop
    rst $38
    rst $38
    ld c, $08
    rst $38
    rst $38
    ld h, d
    ld l, c
    rst $38
    rst $38
    db $76
    ld l, c
    jp nz, $c669

    ld l, c
    jp z, $ce69

    ld l, c
    jp nc, $d669

    ld l, c
    jp c, $d869

    ld l, d
    ld c, $ff
    nop
    nop
    add h
    ld l, c
    ld c, $ff
    inc b
    nop
    xor [hl]
    ld l, c
    rst $38
    rst $38
    ld b, a
    rst $38
    nop
    nop
    ld bc, $6aff
    nop
    and [hl]

jr_00d_698d:
    ld l, c
    nop
    rst $38
    ld [hl-], a
    nop
    xor h
    ld l, c
    nop
    rst $38
    ld e, [hl]
    nop
    xor h
    ld l, c
    inc bc
    rst $38
    ld l, d
    nop
    ld [de], a
    rst $38
    ld h, b
    reti


    ld bc, $ff00
    rst $38
    inc bc
    rst $38
    ld l, e
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $6aff
    nop
    cp d
    ld l, c
    ld bc, $5eff
    nop
    cp h
    ld l, c
    rst $38
    rst $38
    inc bc
    rst $38
    ld l, d
    nop
    rst $38
    rst $38
    sbc c
    ld bc, $ffff
    sbc d
    ld bc, $ffff
    sbc e
    ld bc, $ffff
    sbc l
    ld bc, $ffff
    sbc h
    ld bc, $ffff
    ld c, b
    rst $38
    ld bc, $0000
    rst $38
    ld l, h
    nop
    and $69
    ld bc, $f1ff
    nop
    call nc, $016a
    rst $38
    ld l, h
    nop
    ret nc

    ld l, d
    ld bc, $6aff
    nop
    ret z

    ld l, d
    ld bc, $5eff
    nop
    call nz, $016a
    rst $38
    ld e, l
    nop
    ld a, [de]
    ld l, d
    ld bc, $32ff
    nop
    ld [de], a
    ld l, d
    ld bc, $31ff
    nop
    ld c, $6a
    sub a
    ld bc, $ffff
    rst $10
    ld bc, $ffff
    dec sp
    ld [bc], a
    inc bc
    rst $38
    ld e, l
    nop
    rst $38
    rst $38
    ld b, e
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    jr z, jr_00d_6a8e

    inc a
    ld [bc], a
    rst $38
    rst $38
    dec d
    rst $38
    adc l
    jp z, Jump_000_0001

    ld b, [hl]
    ld l, d
    inc [hl]
    rst $38
    nop
    nop
    ld c, d
    ld l, d
    inc [hl]
    rst $38
    ld bc, $8800
    ld l, d
    inc [hl]
    rst $38
    ld [bc], a
    nop
    sbc [hl]
    ld l, d
    dec a
    ld [bc], a
    rst $38
    rst $38
    ld e, l
    ld [$ffff], sp
    ld a, $02
    ccf
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    xor [hl]
    ld l, d
    inc [hl]
    rst $38
    ld bc, $6600
    ld l, d
    inc [hl]
    rst $38
    ld [bc], a
    nop
    ld a, d
    ld l, d
    ld b, c
    ld [bc], a
    rst $38
    rst $38
    ld b, d
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    xor [hl]
    ld l, d
    inc [hl]
    rst $38
    ld [bc], a
    nop
    ld a, d
    ld l, d
    ld b, c
    ld [bc], a
    rst $38
    rst $38
    ld b, d
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    xor [hl]
    ld l, d
    ld b, c
    ld [bc], a
    rst $38
    rst $38
    ld a, $02
    ccf
    ld [bc], a
    dec d
    rst $38

jr_00d_6a8e:
    inc a
    ret z

    nop
    nop
    xor [hl]
    ld l, d
    inc [hl]
    rst $38
    ld [bc], a
    nop
    ld a, d
    ld l, d
    ld b, c
    ld [bc], a
    rst $38
    rst $38
    ld a, $02
    ccf
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    xor [hl]
    ld l, d
    ld b, c
    ld [bc], a
    rst $38
    rst $38
    ld b, $ff
    add hl, bc
    rst $38
    inc b
    nop
    dec h
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    rlca
    rst $38
    ld b, b
    ld [bc], a
    inc bc
    rst $38
    ld e, [hl]
    nop
    rst $38
    rst $38
    ld b, b
    ld [bc], a
    rst $38
    rst $38
    add l
    ld [bc], a
    inc bc
    rst $38
    ld l, h
    nop
    rst $38
    rst $38
    add [hl]
    ld [bc], a
    rst $38
    rst $38
    rrca
    ld [$ffff], sp
    nop
    rst $38
    dec h
    ld bc, $6ae4
    ld bc, $f1ff
    nop
    ld a, [bc]
    ld l, e
    ld bc, $6aff
    nop
    ld [bc], a
    ld l, e
    ld bc, $5dff
    nop
    cp $6a
    ld bc, $31ff
    nop
    ld a, [$986a]
    ld bc, $ffff
    ret c

    ld bc, $ffff
    ld b, h
    ld [bc], a
    rst $38
    rst $38
    add a
    ld [bc], a
    inc bc
    rst $38
    dec h
    ld bc, $ffff
    db $10
    ld [$ffff], sp
    jr @+$6d

    ld a, [de]
    ld l, e
    ld c, h
    ld l, e
    jp nc, Jump_000_246b

    ld l, h
    rst $38
    rst $38
    ld bc, $83ff
    nop
    ld c, b
    ld l, e
    ld bc, $0eff
    nop
    ld a, [hl+]
    ld l, e
    ld a, [bc]
    inc bc
    rst $38
    rst $38
    pop af
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3e00
    ld l, e
    dec bc
    inc bc
    ld [de], a
    rst $38
    rst $18
    reti


    ld bc, $ff00
    rst $38
    ld a, [c]
    nop
    ld [de], a
    rst $38
    rst $18
    reti


    nop
    nop
    rst $38
    rst $38
    dec c
    inc bc
    rst $38
    rst $38
    dec d
    rst $38
    rst $18
    reti


    nop
    nop
    ret nc

    ld l, e
    ld l, $ff
    inc bc
    nop
    ld c, b
    rst $38
    ld bc, $1500
    rst $38
    ldh [$d9], a
    nop
    nop
    ld [hl], h
    ld l, e
    ld c, c
    rst $38
    ld bc, $1500
    rst $38
    ldh [$d9], a
    ld bc, $7400
    ld l, e
    ld b, a
    rst $38
    ld bc, $0d00
    rst $38
    ld bc, $0500
    nop
    ld bc, $0900
    rst $38
    inc c
    nop
    dec c
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    rlca
    rst $38
    dec d
    rst $38
    ldh [$d9], a
    nop
    nop
    xor d
    ld l, e
    dec d
    rst $38
    ldh [$d9], a
    ld [bc], a
    nop
    or h
    ld l, e
    dec d
    rst $38
    rst $18
    reti


    dec b
    nop
    cp [hl]
    ld l, e
    db $f4
    nop
    cpl
    rst $38
    rst $18
    reti


    rst $38
    rst $38
    or $00
    ld [de], a
    rst $38
    rst $18
    reti


    nop
    nop
    rst $38
    rst $38
    push af
    nop
    ld [de], a
    rst $38
    rst $18
    reti


    nop
    nop
    rst $38
    rst $38
    inc c
    inc bc
    ld [de], a
    rst $38
    rst $18
    reti


    nop
    nop
    inc bc
    rst $38
    add e
    nop
    ld [de], a
    rst $38
    ld c, h
    reti


    ld [bc], a
    nop
    rst $38
    rst $38
    dec d
    rst $38
    rst $18
    reti


    nop
    nop
    ret nc

    ld l, e
    ld l, $ff
    inc b
    nop
    ld c, b
    rst $38
    ld bc, $1500
    rst $38
    ldh [$d9], a
    nop
    nop
    ld a, [$496b]
    rst $38
    ld bc, $1500
    rst $38
    ldh [$d9], a
    ld bc, $fa00
    ld l, e
    ld b, a
    rst $38
    ld bc, $0d00
    rst $38
    ld bc, $0500
    nop
    ld bc, $0900
    rst $38
    inc c
    nop
    dec c
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    rlca
    rst $38
    dec d
    rst $38
    ldh [$d9], a
    ld bc, $aa00
    ld l, e
    dec d
    rst $38
    ldh [$d9], a
    nop
    nop
    or h
    ld l, e
    inc d
    rst $38
    sbc d
    ld l, e
    dec d
    rst $38
    rst $18
    reti


    nop
    nop
    ret nc

    ld l, e
    ld l, $ff
    dec b
    nop
    ld c, b
    rst $38
    ld bc, $1500
    rst $38
    ldh [$d9], a
    nop
    nop
    ld c, h
    ld l, h
    ld c, c
    rst $38
    ld bc, $1500
    rst $38
    ldh [$d9], a
    ld bc, $4c00
    ld l, h
    ld b, a
    rst $38
    ld bc, $0d00
    rst $38
    ld bc, $0500
    nop
    ld bc, $0900
    rst $38
    inc c
    nop
    dec c
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    rlca
    rst $38
    dec d
    rst $38
    ldh [$d9], a
    ld [bc], a
    nop
    xor d
    ld l, e
    dec d
    rst $38
    ldh [$d9], a
    ld bc, $b400
    ld l, e
    inc d
    rst $38
    sbc d
    ld l, e
    add h
    ld l, h
    add [hl]
    ld l, h
    cp b
    ld l, h
    ld hl, sp+$6c
    db $fc
    ld l, h
    sub d
    ld l, l
    db $e4
    ld l, l
    rst $38
    rst $38
    ld bc, $0cff
    ld bc, $6cb4
    ld bc, $83ff
    nop
    sub [hl]
    ld l, h
    ld a, [bc]
    inc bc
    rst $38
    rst $38
    pop af
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $aa00
    ld l, h
    dec bc
    inc bc
    ld [de], a
    rst $38
    rst $18
    reti


    ld bc, $ff00
    rst $38
    ld a, [c]
    nop
    ld [de], a
    rst $38
    rst $18
    reti


    nop
    nop
    rst $38
    rst $38
    inc de
    ld [$ffff], sp
    ld bc, $0bff
    ld bc, $6cc8
    inc a
    rst $38
    ld de, $0308
    rst $38
    dec bc
    ld bc, $ffff
    inc a
    rst $38
    add b
    rlca
    dec d
    rst $38
    inc a
    ret z

    ld bc, $f200
    ld l, h
    inc b
    rst $38
    add hl, bc
    nop
    add b
    rlca
    dec d
    rst $38
    db $f4
    ret z

    rst $38
    nop
    ld a, [c]
    ld l, h
    ld b, $ff
    inc b
    rst $38
    rrca
    nop
    nop
    nop
    inc a
    rst $38
    rlca
    rst $38
    inc d
    rst $38
    call nc, $3c6c
    rst $38
    add d
    rlca
    rst $38
    rst $38
    inc d
    ld [$ffff], sp
    dec d
    rst $38
    rst $18
    reti


    nop
    nop
    sub b
    ld l, l
    ld l, $ff
    ld b, $00
    ld c, b
    rst $38
    ld bc, $1500
    rst $38
    ldh [$d9], a
    nop
    nop
    inc h
    ld l, l
    ld c, c
    rst $38
    ld bc, $1500
    rst $38
    ldh [$d9], a
    ld bc, $2400
    ld l, l
    ld b, a
    rst $38
    ld bc, $0d00
    rst $38
    ld bc, $0500
    nop
    ld bc, $0900
    rst $38
    inc c
    nop
    dec c
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    rlca
    rst $38
    dec d
    rst $38
    ldh [$d9], a
    nop
    nop
    ld e, d
    ld l, l
    dec d
    rst $38
    ldh [$d9], a
    ld [bc], a
    nop
    ld h, h
    ld l, l
    dec d
    rst $38
    rst $18
    reti


    dec b
    nop
    ld l, [hl]
    ld l, l
    db $f4
    nop
    cpl
    rst $38
    rst $18
    reti


    rst $38
    rst $38
    or $00
    ld [de], a
    rst $38
    rst $18
    reti


    nop
    nop
    rst $38
    rst $38
    push af
    nop
    ld [de], a
    rst $38
    rst $18
    reti


    nop
    nop
    rst $38
    rst $38
    ld [de], a
    ld [$ff12], sp
    rst $18
    reti


    nop
    nop
    inc bc
    rst $38
    inc c
    ld bc, $ff01
    ld e, $00
    adc b
    ld l, l
    ld [de], a
    rst $38
    ld c, h
    reti


    inc b
    nop
    rst $38
    rst $38
    ld [de], a
    rst $38
    ld c, h
    reti


    dec b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    dec d
    rst $38
    rst $18
    reti


    nop
    nop
    sub b
    ld l, l
    ld l, $ff
    rlca
    nop
    ld c, b
    rst $38
    ld bc, $1500
    rst $38
    ldh [$d9], a
    nop
    nop
    cp d
    ld l, l
    ld c, c
    rst $38
    ld bc, $1500
    rst $38
    ldh [$d9], a
    ld bc, $ba00
    ld l, l
    ld b, a
    rst $38
    ld bc, $0d00
    rst $38
    ld bc, $0500
    nop
    ld bc, $0900
    rst $38
    inc c
    nop
    dec c
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    rlca
    rst $38
    dec d
    rst $38
    ldh [$d9], a
    ld bc, $5a00
    ld l, l
    dec d
    rst $38
    ldh [$d9], a
    nop
    nop
    ld h, h
    ld l, l
    inc d
    rst $38
    ld c, d
    ld l, l
    dec d
    rst $38
    rst $18
    reti


    nop
    nop
    sub b
    ld l, l
    ld l, $ff
    ld [$4800], sp
    rst $38
    ld bc, $1500
    rst $38
    ldh [$d9], a
    nop
    nop
    inc c
    ld l, [hl]
    ld c, c
    rst $38
    ld bc, $1500
    rst $38
    ldh [$d9], a
    ld bc, $0c00
    ld l, [hl]
    ld b, a
    rst $38
    ld bc, $0d00
    rst $38
    ld bc, $0500
    nop
    ld bc, $0900
    rst $38
    inc c
    nop
    dec c
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    rlca
    rst $38
    dec d
    rst $38
    ldh [$d9], a
    ld [bc], a
    nop
    ld e, d
    ld l, l
    dec d
    rst $38
    ldh [$d9], a
    ld bc, $6400
    ld l, l
    inc d
    rst $38
    ld c, d
    ld l, l
    ld a, $6e
    ld b, b
    ld l, [hl]
    ld e, h
    ld l, [hl]
    or $6e
    rst $38
    rst $38
    ld bc, $34ff
    nop
    ld c, d
    ld l, [hl]
    ld b, l
    ld [bc], a
    rst $38
    rst $38
    ld d, h
    inc bc
    dec d
    rst $38
    inc a
    ret z

    ld bc, $5800
    ld l, [hl]
    ld d, l
    inc bc
    rst $38
    rst $38
    ld d, [hl]
    inc bc
    rst $38
    rst $38
    ld bc, $25ff
    nop
    xor h
    ld l, [hl]
    jp z, $1503

    rst $38
    inc a
    ret z

    ld bc, $7a00
    ld l, [hl]
    call z, $1503
    rst $38
    inc a
    ret z

    ld bc, $7e00
    ld l, [hl]
    call $ff03
    rst $38
    rlc e
    rst $38
    rst $38
    adc $03
    dec d
    rst $38
    inc a
    ret z

    ld bc, $8c00
    ld l, [hl]
    rst $08
    inc bc
    rst $38
    rst $38
    ret nc

    inc bc
    dec d
    rst $38
    inc a
    ret z

    ld bc, $9a00
    ld l, [hl]
    pop de
    inc bc
    rst $38
    rst $38
    jp nc, $1503

    rst $38
    inc a
    ret z

    ld bc, $a800
    ld l, [hl]
    db $d3
    inc bc
    rst $38
    rst $38
    call nc, $ff03
    rst $38
    adc $04
    dec d
    rst $38
    inc a
    ret z

    ld bc, $c400
    ld l, [hl]
    rst $08
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $c800
    ld l, [hl]
    ret nc

    inc b
    rst $38
    rst $38
    rlc e
    rst $38
    rst $38
    pop de
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $d600
    ld l, [hl]
    jp nc, $ff04

    rst $38
    db $d3
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $e400
    ld l, [hl]
    call nc, $ff04
    rst $38
    push de
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $f200
    ld l, [hl]
    sub $04
    rst $38
    rst $38
    rlc e
    rst $38
    rst $38
    jr nc, jr_00d_6f00

    dec d
    rst $38
    inc a
    ret z

    ld bc, $0e00
    ld l, a

jr_00d_6f00:
    ld [hl-], a
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $1200
    ld l, a
    inc sp
    ld [$ffff], sp
    ld sp, $ff08
    rst $38
    inc [hl]
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $2000
    ld l, a
    dec [hl]
    ld [$ffff], sp
    ld [hl], $08
    dec d
    rst $38
    inc a
    ret z

    ld bc, $2e00
    ld l, a
    scf
    ld [$ffff], sp
    jr c, jr_00d_6f38

    dec d
    rst $38
    inc a
    ret z

    ld bc, $3c00
    ld l, a

jr_00d_6f38:
    add hl, sp
    ld [$ffff], sp
    ld sp, $ff08
    rst $38
    ld c, [hl]
    ld l, a
    ld d, b
    ld l, a
    ld [c], a
    ld l, a
    ld a, [$126f]
    ld [hl], b
    inc h
    ld [hl], b
    adc h
    ld [hl], b
    rst $38
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    nop
    inc h
    rst $38
    call z, $096f
    rst $38
    ld [bc], a
    nop
    dec c
    rst $38
    ld bc, $1a00
    nop
    jr nz, jr_00d_6f64

jr_00d_6f64:
    dec c
    rst $38
    ld [bc], a
    nop
    ld a, [de]
    nop
    jr nz, jr_00d_6f6c

jr_00d_6f6c:
    dec c
    rst $38
    ld bc, $0000
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
    add hl, bc
    rst $38
    ld [bc], a
    nop
    rlca
    rst $38
    ld bc, $34ff
    nop
    adc [hl]
    ld l, a
    ld c, c
    ld [bc], a
    inc d
    rst $38
    sub h
    ld l, a
    ld d, a
    inc bc
    inc d
    rst $38
    sub h
    ld l, a
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
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
    ld [bc], a
    nop
    inc h
    rst $38
    or [hl]
    ld l, a
    add hl, bc
    rst $38
    ld [bc], a
    nop
    rst $38
    rst $38
    ld c, b
    nop
    inc d
    dec d
    inc d
    dec d
    ret c

    ld d, $17
    ld d, $17
    ret c

    jr jr_00d_6fdd

    jr jr_00d_6fdf

    ret c

    ld a, [de]
    dec de
    ld a, [de]
    dec de
    reti


    ld c, b
    nop
    inc e
    dec e
    inc e
    dec e
    ret c

    ld e, $1f
    ld e, $1f
    ret c

    jr nz, @+$23

    jr nz, jr_00d_6ffd

    ret c

jr_00d_6fdd:
    ld [hl+], a
    inc hl

jr_00d_6fdf:
    ld [hl+], a
    inc hl
    reti


    ld bc, $f1ff
    nop
    or $6f
    ld bc, $25ff
    nop
    ld a, [c]
    ld l, a
    ld c, e
    ld [bc], a
    rst $38
    rst $38
    jp c, $ff04

    rst $38
    rla
    ld [$ffff], sp
    ld bc, $f1ff

jr_00d_6ffd:
    nop
    ld c, $70
    ld bc, $25ff
    nop
    ld a, [bc]
    ld [hl], b
    ld c, e
    ld [bc], a
    rst $38
    rst $38
    jp c, $ff04

    rst $38
    jr jr_00d_7018

    rst $38
    rst $38
    ld b, [hl]
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

jr_00d_7018:
    ld bc, $2000
    ld [hl], b
    ld b, a
    ld [bc], a
    rst $38
    rst $38
    ld c, b
    ld [bc], a
    rst $38
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    nop
    inc h
    rst $38
    call z, $096f
    rst $38
    ld [bc], a
    nop
    dec c
    rst $38
    ld bc, $1a00
    nop
    jr nz, jr_00d_7038

jr_00d_7038:
    dec c
    rst $38
    ld [bc], a
    nop
    ld a, [de]
    nop
    jr nz, jr_00d_7040

jr_00d_7040:
    dec c
    rst $38
    ld bc, $0000
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
    add hl, bc
    rst $38
    ld [bc], a
    nop
    rlca
    rst $38
    ld bc, $f1ff
    nop
    add [hl]
    ld [hl], b
    ld bc, $25ff
    nop
    add b
    ld [hl], b
    ld bc, $37ff
    nop
    ld a, d
    ld [hl], b
    ld bc, $36ff
    nop
    ld [hl], h
    ld [hl], b
    sub $03
    inc d
    rst $38
    sub h
    ld l, a
    ld c, b
    inc bc
    inc d
    rst $38
    sub h
    ld l, a
    ld e, [hl]
    inc b
    inc d
    rst $38
    sub h
    ld l, a
    ret c

    inc b
    inc d
    rst $38
    sub h
    ld l, a
    ld d, $08
    inc d
    rst $38
    sub h
    ld l, a
    ld bc, $f1ff
    nop
    or h
    ld [hl], b
    ld bc, $25ff
    nop
    or b
    ld [hl], b
    ld bc, $37ff
    nop
    xor h
    ld [hl], b
    ld bc, $36ff
    nop
    xor b
    ld [hl], b
    push de
    inc bc
    rst $38
    rst $38
    ld b, l
    inc bc
    rst $38
    rst $38
    ld e, l
    inc b
    rst $38
    rst $38
    rst $10
    inc b
    rst $38
    rst $38
    dec d
    ld [$ffff], sp
    add $70
    ret z

    ld [hl], b
    or $70
    ld c, $71
    ld [de], a
    ld [hl], c
    cp h
    ld [hl], c
    inc [hl]
    ld [hl], d
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    add sp, $70
    ld bc, $33ff
    nop
    ret c

    ld [hl], b
    rla
    ld bc, $ffff
    adc c
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $e600
    ld [hl], b
    adc d
    ld [$ffff], sp
    rst $38
    rst $38
    adc c
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $e600
    ld [hl], b
    add $08
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    ld a, [bc]
    ld [hl], c
    ld bc, $36ff
    nop
    ld b, $71
    jr jr_00d_7105

    rst $38

jr_00d_7105:
    rst $38
    ld c, [hl]
    inc bc
    rst $38
    rst $38
    cp c
    inc b
    rst $38
    rst $38
    ld c, b
    rst $38
    ld bc, $0100
    rst $38
    dec c
    ld bc, $71ae
    ld bc, $f1ff
    nop
    sbc b
    ld [hl], c
    ld bc, $35ff
    nop
    add b
    ld [hl], c
    ld bc, $33ff
    nop
    ld [hl], d
    ld [hl], c
    ld bc, $31ff
    nop
    ld e, d
    ld [hl], c
    ld bc, $30ff
    nop
    ld c, h
    ld [hl], c
    inc de
    ld bc, $ff03
    add hl, sp
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $4800
    ld [hl], c
    inc d
    ld bc, $ffff
    ld [hl], c
    ld [$ffff], sp
    sbc [hl]
    ld bc, $ff15
    inc a
    ret z

    ld bc, $4800
    ld [hl], c
    inc d
    ld bc, $ffff
    reti


    ld bc, $ff15
    inc a
    ret z

    ld bc, $4800
    ld [hl], c
    ld a, d
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $4800
    ld [hl], c
    ld a, e
    ld [$ffff], sp
    adc b
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $4800
    ld [hl], c
    add a
    ld [$ffff], sp
    sub h
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $4800
    ld [hl], c
    sub l
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $4800
    ld [hl], c
    sub [hl]
    ld [$ffff], sp
    add hl, de
    ld [$ff03], sp
    dec c
    ld bc, $ff15
    inc a
    ret z

    ld bc, $aa00
    ld [hl], c
    adc h
    ld [bc], a
    rst $38
    rst $38
    adc l
    ld [bc], a
    rst $38
    rst $38
    ld a, [de]
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $aa00
    ld [hl], c
    adc h
    ld [bc], a
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    ld b, $72
    ld bc, $35ff
    nop
    ld [$0171], a
    rst $38
    ld sp, $dc00
    ld [hl], c
    ld bc, $30ff
    nop
    ret c

    ld [hl], c
    dec d
    ld bc, $ffff
    sbc a
    ld bc, $ffff
    jp c, Jump_000_1501

    rst $38
    inc a
    ret z

    ld bc, $3000
    ld [hl], d
    call c, $ff01
    rst $38
    sub a
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $f800
    ld [hl], c
    sbc b
    ld [$ffff], sp
    sbc c
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $3000
    ld [hl], d
    call c, $ff01
    rst $38
    adc [hl]
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $1400
    ld [hl], d
    rst $28
    ld [bc], a
    rst $38
    rst $38
    ldh a, [rSC]
    dec d
    rst $38
    inc a
    ret z

    ld bc, $2200
    ld [hl], d
    sbc b
    ld [$ffff], sp
    sbc c
    ld [$ff15], sp
    inc a
    ret z

    ld bc, $3000
    ld [hl], d
    call c, $ff01
    rst $38
    db $db
    ld bc, $ffff
    ld bc, $f1ff
    nop
    ld h, [hl]
    ld [hl], d
    ld bc, $35ff
    nop
    ld h, d
    ld [hl], d
    ld bc, $33ff
    nop
    ld e, [hl]
    ld [hl], d
    ld bc, $31ff
    nop
    ld e, d
    ld [hl], d
    ld bc, $30ff
    nop
    ld d, [hl]
    ld [hl], d
    ld d, $01
    rst $38
    rst $38
    and b
    ld bc, $ffff
    sbc $01
    rst $38
    rst $38
    adc b
    ld [$ffff], sp
    sbc d
    ld [$ffff], sp
    rrca
    inc bc
    rst $38
    rst $38
    ld [hl], h
    ld [hl], d
    sub b
    ld [hl], d
    sbc $72
    inc h
    ld [hl], e
    adc [hl]
    ld [hl], e
    dec d
    rst $38
    ld d, c
    reti


    ld a, [c]
    nop
    ld a, [hl]
    ld [hl], d
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
    ld b, h
    rst $38
    ld [de], a
    rst $38
    ld d, c
    reti


    nop
    nop
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    jp c, $0172

    rst $38
    scf
    nop
    sub $72
    ld bc, $97ff
    nop
    jp nc, $0172

    rst $38
    ld [hl], $00
    jp z, $0172

    rst $38
    dec [hl]
    nop
    add $72
    ld bc, $1dff
    nop
    jp nz, $0172

    rst $38
    ld [hl-], a
    nop
    cp [hl]
    ld [hl], d
    add hl, de
    ld bc, $ffff
    ld c, [hl]
    ld [bc], a
    rst $38
    rst $38
    ld c, $03
    rst $38
    rst $38
    db $db
    inc bc
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    sub a
    nop
    rst $38
    rst $38
    nop
    inc b
    rst $38
    rst $38
    ld h, c
    inc b
    rst $38
    rst $38
    ld hl, $ff08
    rst $38
    nop
    rst $38
    ld c, $00
    ld [bc], a
    ld [hl], e
    ld bc, $f1ff
    nop
    jr nz, jr_00d_735d

    ld bc, $37ff
    nop
    inc e
    ld [hl], e
    ld bc, $36ff
    nop
    jr jr_00d_7369

    ld bc, $35ff
    nop
    inc d
    ld [hl], e
    ld bc, $32ff
    nop
    db $10
    ld [hl], e
    ld bc, $0eff
    nop
    inc c
    ld [hl], e
    ld a, [de]
    ld bc, $ffff
    ld a, $01
    rst $38
    rst $38
    add c
    ld [$ffff], sp
    call c, $ff03
    rst $38
    ld bc, $ff04
    rst $38
    ld h, d
    inc b
    rst $38
    rst $38
    ld [hl+], a
    ld [$ffff], sp
    nop
    rst $38
    inc sp
    nop
    jr nc, jr_00d_739d

    ld bc, $60ff
    nop
    adc d
    ld [hl], e
    ld bc, $60ff
    nop
    add [hl]
    ld [hl], e
    ld bc, $5fff
    nop
    ld l, b
    ld [hl], e
    ld bc, $32ff
    nop
    ld b, [hl]
    ld [hl], e
    dec de
    ld bc, $ffff
    inc a
    rst $38
    ld c, a
    ld [bc], a
    inc bc
    rst $38
    ld e, a
    nop
    inc bc
    rst $38
    ld h, b
    nop
    ld b, d
    rst $38
    ld [hl-], a
    ld bc, $0003
    inc b
    rst $38
    dec b
    nop
    db $10

jr_00d_735d:
    ld b, $02
    rst $38
    ld h, b
    nop
    inc a
    rst $38
    db $10
    ld b, $ff
    rst $38
    inc a

jr_00d_7369:
    rst $38
    ld e, d
    ld [bc], a
    inc bc
    rst $38
    ld h, b
    nop
    ld b, d
    rst $38
    ld [hl-], a
    ld bc, $0003
    inc b
    rst $38
    dec b
    nop
    db $10
    ld b, $02
    rst $38
    ld h, b
    nop
    inc a
    rst $38
    db $10
    ld b, $ff
    rst $38
    ld e, e
    ld [bc], a
    rst $38
    rst $38
    adc e
    ld [bc], a
    rst $38
    rst $38
    nop
    rst $38
    sub h
    nop
    sbc d
    ld [hl], e
    ld bc, $f1ff
    nop
    ld l, b
    ld [hl], h
    ld bc, $f1ff

jr_00d_739d:
    nop
    ld h, h
    ld [hl], h
    ld bc, $25ff
    nop
    ld h, b
    ld [hl], h
    ld bc, $1dff
    ld bc, $745c
    ld bc, $1cff
    ld bc, $7454
    nop
    rst $38
    scf
    nop
    cp [hl]
    ld [hl], e
    ld bc, $98ff
    nop
    ld d, b
    ld [hl], h
    ld bc, $98ff
    nop
    ld c, h
    ld [hl], h
    ld bc, $36ff
    nop
    ld a, [hl+]
    ld [hl], h
    nop
    rst $38
    add l
    nop
    sub $73
    ld bc, $94ff
    nop
    ld h, $74
    ld bc, $85ff
    nop
    ld [hl+], a
    ld [hl], h
    ld bc, $84ff
    nop
    inc b
    ld [hl], h
    inc a
    rst $38
    db $10
    inc bc
    inc bc
    rst $38
    add h
    nop
    inc bc
    rst $38
    add l
    nop
    ld b, d
    rst $38
    dec [hl]
    ld bc, $0003
    inc b
    rst $38
    dec b
    nop
    ld b, b
    ld b, $02
    rst $38
    add l
    nop
    inc a
    rst $38
    ld b, b
    ld b, $ff
    rst $38
    inc a
    rst $38
    dec de
    inc bc
    inc bc
    rst $38
    add l
    nop
    ld b, d
    rst $38
    dec [hl]
    ld bc, $0003
    inc b
    rst $38
    dec b
    nop
    ld b, b
    ld b, $02
    rst $38
    add l
    nop
    inc a
    rst $38
    ld b, b
    ld b, $ff
    rst $38
    inc e
    inc bc
    rst $38
    rst $38
    xor b
    ld [bc], a
    rst $38
    rst $38
    ld [bc], a
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $4400
    ld [hl], h
    jr z, @+$01

    ld c, b
    ld [hl], h
    inc bc
    inc b
    add hl, hl
    rst $38
    ld a, [hl-]
    ld bc, $ff03
    sbc b
    nop
    rst $38
    rst $38
    dec b
    inc b
    rst $38
    rst $38
    inc b
    inc b
    rst $38
    rst $38
    ld b, $04
    rst $38
    rst $38
    ld h, e
    inc b
    rst $38
    rst $38
    ld e, c
    ld [$ff03], sp
    dec e
    ld bc, $ffff
    ld e, d
    ld [$ffff], sp

Jump_00d_7460:
    db $dd
    inc b
    rst $38
    rst $38
    inc hl
    ld [$ffff], sp
    inc h
    ld [$ffff], sp
    add b
    ld [hl], h
    sbc h
    ld [hl], h
    xor d
    ld [hl], h
    sub h
    ld a, c
    ld [hl+], a
    ld a, d
    db $10
    ld a, e
    db $e4
    ld a, e
    ld e, $7a
    inc c
    ld a, e
    ldh [$7b], a
    dec d
    rst $38
    ld d, c
    reti


    ld a, [c]
    nop
    adc d
    ld [hl], h
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
    ld b, h
    rst $38
    ld [de], a
    rst $38
    ld d, c
    reti


    nop
    nop
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    and [hl]
    ld [hl], h
    di
    ld bc, $ffff
    ld [bc], a
    nop
    rst $38
    rst $38
    ld bc, $55ff
    ld bc, $7990
    ld bc, $56ff
    ld bc, $7980
    nop
    rst $38
    ld d, h
    ld bc, $74c2
    ld b, b
    rst $38
    inc l
    nop
    ld h, [hl]
    ld a, c
    ld bc, $52ff
    ld bc, $795e
    ld bc, $53ff
    ld bc, $794e
    nop
    rst $38
    ld d, c
    ld bc, $74da
    ld b, b
    rst $38
    rst $00
    nop
    inc [hl]
    ld a, c
    ld bc, $4fff
    ld bc, $792c
    ld bc, $50ff
    ld bc, $791c
    nop
    rst $38
    ld c, [hl]
    ld bc, $74f2
    ld b, b
    rst $38
    ld l, h
    nop
    ld [bc], a
    ld a, c
    ld bc, $4cff
    ld bc, $78fa
    ld bc, $4dff
    ld bc, $78ea
    nop
    rst $38
    ld c, e
    ld bc, $750a
    ld b, b
    rst $38
    add b
    nop
    ret nc

    ld a, b
    ld bc, $49ff
    ld bc, $78c8
    ld bc, $4aff
    ld bc, $78b8
    nop
    rst $38
    ld c, b
    ld bc, $7522
    ld b, b
    rst $38
    ld e, c
    nop
    sbc [hl]
    ld a, b
    ld bc, $46ff
    ld bc, $7896
    ld bc, $47ff
    ld bc, $7886
    nop
    rst $38
    ld b, l
    ld bc, $753a
    ld b, b
    rst $38
    ld b, d
    nop
    ld l, h
    ld a, b
    ld bc, $43ff
    ld bc, $7864
    ld bc, $44ff
    ld bc, $7854
    nop
    rst $38
    ld b, d
    ld bc, $7552
    ld b, b
    rst $38
    xor d
    nop
    ld a, [hl-]
    ld a, b
    ld bc, $41ff
    ld bc, $7832
    nop
    rst $38
    pop af
    nop
    ld h, h
    ld [hl], l
    ld bc, $3fff
    ld bc, $782a
    ld bc, $3fff
    ld bc, $7826
    ld bc, $40ff
    ld bc, $7816
    nop
    rst $38
    ld a, $01
    ld a, h
    ld [hl], l
    ld b, b
    rst $38
    ld d, l
    nop
    db $fc
    ld [hl], a
    ld bc, $3cff
    ld bc, $77f4
    ld bc, $3dff
    ld bc, $77e4
    nop
    rst $38
    dec sp
    ld bc, $7594
    ld b, b
    rst $38
    xor b
    nop
    jp z, Jump_000_0177

    rst $38
    add hl, sp
    ld bc, $77c2
    ld bc, $3aff
    ld bc, $77b2
    nop
    rst $38
    jr c, jr_00d_75a5

    xor h

jr_00d_75a5:
    ld [hl], l
    ld b, b
    rst $38
    ld a, a
    nop
    sbc b
    ld [hl], a
    ld bc, $36ff
    ld bc, $7790
    ld bc, $37ff
    ld bc, $7780
    nop
    rst $38
    dec [hl]
    ld bc, $75c4
    ld b, b
    rst $38
    ld b, b
    nop
    ld h, [hl]
    ld [hl], a
    ld bc, $33ff
    ld bc, $775e
    ld bc, $34ff
    ld bc, $774e
    nop
    rst $38
    ld [hl-], a
    ld bc, $75dc
    ld b, b
    rst $38
    stop
    inc [hl]
    ld [hl], a
    nop
    rst $38
    dec e
    nop
    add sp, $75
    ld bc, $30ff
    ld bc, $772c
    ld bc, $30ff
    ld bc, $7728
    ld bc, $31ff
    ld bc, $7718
    nop
    rst $38
    cpl
    ld bc, $7600
    ld b, b
    rst $38
    cp h
    nop
    cp $76
    ld bc, $2dff
    ld bc, $76f6
    ld bc, $2eff
    ld bc, $76e6
    nop
    rst $38
    inc l
    ld bc, $7618
    ld b, b
    rst $38
    ld c, c
    nop
    call z, Call_000_0176
    rst $38
    ld a, [hl+]
    ld bc, $76c4
    ld bc, $2bff
    ld bc, $76b4
    nop
    rst $38
    add hl, hl
    ld bc, $7630
    ld b, b
    rst $38
    rrca
    nop
    sbc d
    db $76
    ld bc, $27ff
    ld bc, $7692
    ld bc, $28ff
    ld bc, $767e
    nop
    rst $38
    ld h, $01
    ld c, b
    db $76
    ld b, b
    rst $38
    ld [bc], a
    nop
    ld h, h
    halt
    rst $38
    ld b, l
    nop
    ld d, h
    db $76
    ld bc, $31ff
    nop
    ld e, h
    db $76
    inc e
    ld bc, $ff03
    ld h, c
    nop
    rst $38
    rst $38
    ld d, b
    inc bc
    inc bc
    rst $38
    ld h, $01
    rst $38
    rst $38
    ld e, c
    inc bc
    inc l
    rst $38
    db $76
    db $76
    ld e, e
    inc bc
    inc bc
    rst $38
    daa
    ld bc, $ff2a
    rla
    nop
    rst $38
    rst $38
    ld e, d
    inc bc
    inc bc
    rst $38
    jr z, jr_00d_767d

    rst $38

jr_00d_767d:
    rst $38
    inc l
    rst $38
    adc [hl]
    db $76
    ld e, e
    inc bc
    inc bc
    rst $38
    daa
    ld bc, $ff2a
    rla
    nop
    rst $38
    rst $38
    push bc
    ld [$ffff], sp
    ld e, h
    inc bc
    inc bc
    rst $38
    add hl, hl
    ld bc, $ffff
    xor h
    inc bc
    inc l
    rst $38
    xor h
    db $76
    xor l
    inc bc
    inc bc
    rst $38
    ld a, [hl+]
    ld bc, $ff2a
    ld [de], a
    nop
    rst $38
    rst $38
    ld e, d
    inc bc
    inc bc
    rst $38
    dec hl
    ld bc, $ffff
    inc l
    rst $38
    adc [hl]
    db $76
    xor l
    inc bc
    inc bc
    rst $38
    ld a, [hl+]
    ld bc, $ff2a
    ld [de], a
    nop
    rst $38
    rst $38
    ret c

    inc bc
    inc bc
    rst $38
    inc l
    ld bc, $ffff
    reti


    inc bc
    inc l
    rst $38
    sbc $76
    jp c, $0303

    rst $38
    dec l
    ld bc, $ff2a
    ld de, $ff00
    rst $38
    ld e, d
    inc bc
    inc bc
    rst $38
    ld l, $01
    rst $38
    rst $38
    inc l
    rst $38
    adc [hl]
    db $76
    jp c, $0303

    rst $38
    dec l
    ld bc, $ff2a
    ld de, $ff00
    rst $38
    ld hl, sp+$03
    inc bc
    rst $38
    cpl
    ld bc, $ffff
    ld c, d
    inc bc
    inc l
    rst $38
    db $10
    ld [hl], a
    ld c, e
    inc bc
    inc bc
    rst $38
    jr nc, jr_00d_770b

    ld a, [hl+]

jr_00d_770b:
    rst $38
    stop
    rst $38
    rst $38
    ld e, d
    inc bc
    inc bc
    rst $38
    ld sp, $ff01
    rst $38
    inc l
    rst $38
    adc [hl]
    db $76
    ld c, e
    inc bc
    inc bc
    rst $38
    jr nc, jr_00d_7723

    ld a, [hl+]

jr_00d_7723:
    rst $38
    stop
    rst $38
    rst $38
    ld c, h
    inc bc
    rst $38
    rst $38
    dec e
    inc bc
    inc bc
    rst $38
    ld [hl-], a
    ld bc, $ffff
    ld c, l
    inc bc
    inc l
    rst $38
    ld b, [hl]
    ld [hl], a
    rlca
    inc b
    inc bc
    rst $38
    inc sp
    ld bc, $ff2a
    dec c
    nop
    rst $38
    rst $38
    ld e, d
    inc bc
    inc bc
    rst $38
    inc [hl]
    ld bc, $ffff
    inc l
    rst $38
    adc [hl]
    db $76
    rlca
    inc b
    inc bc
    rst $38
    inc sp
    ld bc, $ff2a
    dec c
    nop
    rst $38
    rst $38
    ld d, d
    inc b
    inc bc
    rst $38
    dec [hl]
    ld bc, $ffff
    ld h, b
    inc b
    inc l
    rst $38
    ld a, b
    ld [hl], a
    ld h, h
    inc b
    inc bc
    rst $38
    ld [hl], $01
    ld a, [hl+]
    rst $38
    rrca
    nop
    rst $38
    rst $38
    ld e, d
    inc bc
    inc bc
    rst $38
    scf
    ld bc, $ffff
    inc l
    rst $38
    adc [hl]
    db $76
    ld h, h
    inc b
    inc bc
    rst $38
    ld [hl], $01
    ld a, [hl+]
    rst $38
    rrca
    nop
    rst $38
    rst $38
    ld h, l
    inc b
    inc bc
    rst $38
    jr c, jr_00d_7797

    rst $38

jr_00d_7797:
    rst $38
    or [hl]
    inc b
    inc l
    rst $38
    xor d
    ld [hl], a
    cp d
    inc b
    inc bc
    rst $38
    add hl, sp
    ld bc, $ff2a
    ld c, $00
    rst $38
    rst $38
    ld e, d
    inc bc
    inc bc
    rst $38
    ld a, [hl-]
    ld bc, $ffff
    inc l
    rst $38
    adc [hl]
    db $76
    cp d
    inc b
    inc bc
    rst $38
    add hl, sp
    ld bc, $ff2a
    ld c, $00
    rst $38
    rst $38
    db $db
    inc b
    inc bc
    rst $38
    dec sp
    ld bc, $ffff
    call c, Call_000_2c04
    rst $38
    call c, $e877
    rlca
    inc bc
    rst $38
    inc a
    ld bc, $ff2a
    jr nz, jr_00d_77da

jr_00d_77da:
    rst $38
    rst $38
    ld e, d
    inc bc
    inc bc
    rst $38
    dec a
    ld bc, $ffff
    inc l
    rst $38
    adc [hl]
    db $76
    add sp, $07
    inc bc
    rst $38
    inc a
    ld bc, $ff2a
    jr nz, jr_00d_77f2

jr_00d_77f2:
    rst $38
    rst $38
    jp hl


    rlca
    inc bc
    rst $38
    ld a, $01
    rst $38
    rst $38
    dec de
    ld [$ff2c], sp
    ld c, $78
    inc e
    ld [$ff03], sp
    ccf
    ld bc, $ff2a
    ld [hl+], a
    nop
    rst $38
    rst $38
    ld e, d
    inc bc
    inc bc
    rst $38
    ld b, b
    ld bc, $ffff
    inc l
    rst $38
    adc [hl]
    db $76
    inc e
    ld [$ff03], sp
    ccf
    ld bc, $ff2a
    ld [hl+], a
    nop
    rst $38
    rst $38
    dec e
    ld [$ffff], sp
    dec h
    ld [$ff03], sp
    ld b, c
    ld bc, $ffff
    ld e, $08
    inc bc
    rst $38
    ld b, d
    ld bc, $ffff
    rra
    ld [$ff2c], sp
    ld c, h
    ld a, b
    jr nz, jr_00d_784a

    inc bc
    rst $38
    ld b, e
    ld bc, $ff2a
    inc h
    nop

jr_00d_784a:
    rst $38
    rst $38
    ld e, d
    inc bc
    inc bc
    rst $38
    ld b, h
    ld bc, $ffff
    inc l
    rst $38
    adc [hl]
    db $76
    jr nz, jr_00d_7862

    inc bc
    rst $38
    ld b, e
    ld bc, $ff2a
    inc h
    nop

jr_00d_7862:
    rst $38
    rst $38
    and a
    ld [$ff03], sp
    ld b, l
    ld bc, $ffff
    xor b
    ld [$ff2c], sp
    ld a, [hl]
    ld a, b
    xor c
    ld [$ff03], sp
    ld b, [hl]
    ld bc, $ff2a
    inc hl
    nop
    rst $38
    rst $38
    ld e, d
    inc bc
    inc bc
    rst $38
    ld b, a
    ld bc, $ffff
    inc l
    rst $38
    adc [hl]
    db $76
    xor c
    ld [$ff03], sp
    ld b, [hl]
    ld bc, $ff2a
    inc hl
    nop
    rst $38
    rst $38
    xor d
    ld [$ff03], sp
    ld c, b
    ld bc, $ffff
    xor e
    ld [$ff2c], sp
    or b
    ld a, b
    xor h
    ld [$ff03], sp
    ld c, c
    ld bc, $ff2a
    ld hl, $ff00
    rst $38
    ld e, d
    inc bc
    inc bc
    rst $38
    ld c, d
    ld bc, $ffff
    inc l
    rst $38
    adc [hl]
    db $76
    xor h
    ld [$ff03], sp
    ld c, c
    ld bc, $ff2a
    ld hl, $ff00
    rst $38
    xor l
    ld [$ff03], sp
    ld c, e
    ld bc, $ffff
    xor [hl]
    ld [$ff2c], sp
    ld [c], a
    ld a, b
    xor a
    ld [$ff03], sp
    ld c, h
    ld bc, $ff2a
    rra
    nop
    rst $38
    rst $38
    ld e, d
    inc bc
    inc bc
    rst $38
    ld c, l
    ld bc, $ffff
    inc l
    rst $38
    adc [hl]
    db $76
    xor a
    ld [$ff03], sp
    ld c, h
    ld bc, $ff2a
    rra
    nop
    rst $38
    rst $38
    or b
    ld [$ff03], sp
    ld c, [hl]
    ld bc, $ffff
    or c
    ld [$ff2c], sp
    inc d
    ld a, c
    or d
    ld [$ff03], sp
    ld c, a
    ld bc, $ff2a
    dec c
    nop
    rst $38
    rst $38
    ld e, d
    inc bc
    inc bc
    rst $38
    ld d, b
    ld bc, $ffff
    inc l
    rst $38
    adc [hl]
    db $76
    or d
    ld [$ff03], sp
    ld c, a
    ld bc, $ff2a
    dec c
    nop
    rst $38
    rst $38
    or e
    ld [$ff03], sp
    ld d, c
    ld bc, $ffff
    or h
    ld [$ff2c], sp
    ld b, [hl]
    ld a, c
    or l
    ld [$ff03], sp
    ld d, d
    ld bc, $ff2a
    ld e, $00
    rst $38
    rst $38
    ld e, d
    inc bc
    inc bc
    rst $38
    ld d, e
    ld bc, $ffff
    inc l
    rst $38
    adc [hl]
    db $76
    or l
    ld [$ff03], sp
    ld d, d
    ld bc, $ff2a
    ld e, $00
    rst $38
    rst $38
    or [hl]
    ld [$ff03], sp
    ld d, h
    ld bc, $ffff
    or a
    ld [$ff2c], sp
    ld a, b
    ld a, c
    cp b
    ld [$ff03], sp
    ld d, l
    ld bc, $ff2a
    ld e, $00
    rst $38
    rst $38
    ld e, d
    inc bc
    inc bc
    rst $38
    ld d, [hl]
    ld bc, $ffff
    inc l
    rst $38
    adc [hl]
    db $76
    cp b
    ld [$ff03], sp
    ld d, l
    ld bc, $ff2a
    ld e, $00
    rst $38
    rst $38
    cp c
    ld [$ffff], sp
    ld bc, $57ff
    ld bc, $7a1a
    ld bc, $f1ff
    nop
    ld [de], a
    ld a, d
    ld bc, $3fff
    ld bc, $7a0e
    ld bc, $3cff
    ld bc, $7a0a
    ld bc, $39ff
    ld bc, $7a06
    ld bc, $36ff
    ld bc, $7a02
    ld bc, $33ff
    ld bc, $79fe
    ld bc, $1dff
    nop
    ld a, [$0179]
    rst $38
    dec l
    ld bc, $79f6
    ld bc, $2aff
    ld bc, $79f2
    ld bc, $27ff
    ld bc, $79ee
    nop
    rst $38
    ld b, l
    nop
    ld [c], a
    ld a, c
    ld bc, $31ff
    nop
    ld [$1d79], a
    ld bc, $ff03
    ld h, d
    nop
    rst $38
    rst $38
    cp d
    ld [$ffff], sp
    cp e
    ld [$ffff], sp
    cp h
    ld [$ffff], sp
    cp l
    ld [$ffff], sp
    ld e, $03
    rst $38
    rst $38
    cp a
    ld [$ffff], sp
    ret nz

    ld [$ffff], sp
    pop bc
    ld [$ffff], sp
    jp nz, $ff08

    rst $38
    jp $ff08


    rst $38
    ld h, $08
    inc bc
    rst $38
    ld d, a
    ld bc, $ffff
    ld c, [hl]
    ld [$ffff], sp
    ld c, d
    rst $38
    ld bc, $0100
    rst $38
    ld l, [hl]
    nop
    ld [$017b], sp
    rst $38
    ld l, l
    nop
    ld [$017a], a
    rst $38
    inc sp
    nop
    ret z

    ld a, d
    ld bc, $67ff
    nop
    call nz, Call_000_017a
    rst $38
    ld h, [hl]
    nop
    and [hl]
    ld a, d
    ld bc, $65ff
    nop
    add h
    ld a, d
    ld bc, $64ff
    nop
    ld a, h
    ld a, d
    ld bc, $63ff
    nop
    ld [hl], h
    ld a, d
    ld bc, $32ff
    nop
    ld l, h
    ld a, d
    nop
    rst $38
    ld b, l
    nop
    ld h, h
    ld a, d
    ld bc, $31ff
    nop
    ld l, b
    ld a, d
    ld e, $01
    rst $38
    rst $38
    cp [hl]
    ld [$ffff], sp
    ld e, [hl]
    ld [bc], a
    inc bc
    rst $38
    ld h, e
    nop
    rst $38
    rst $38
    ld e, a
    ld [bc], a
    inc bc
    rst $38
    ld h, h
    nop
    rst $38
    rst $38
    ld h, b
    ld [bc], a
    inc bc
    rst $38
    ld h, l
    nop
    rst $38
    rst $38
    inc a
    rst $38
    ld h, c
    ld [bc], a
    inc bc
    rst $38
    ld h, [hl]
    nop
    inc bc
    rst $38
    ld h, a
    nop
    ld b, d
    rst $38
    ld sp, $0301
    nop
    inc b
    rst $38
    dec b
    nop
    jr nz, jr_00d_7aa2

    ld [bc], a
    rst $38
    ld h, a
    nop
    inc a
    rst $38

jr_00d_7aa2:
    jr nz, jr_00d_7aaa

    rst $38
    rst $38
    inc a
    rst $38
    ld l, h
    ld [bc], a

jr_00d_7aaa:
    inc bc
    rst $38
    ld h, a
    nop
    ld b, d
    rst $38
    ld sp, $0301
    nop
    inc b
    rst $38
    dec b
    nop
    jr nz, jr_00d_7ac0

    ld [bc], a
    rst $38
    ld h, a
    nop
    inc a
    rst $38

jr_00d_7ac0:
    jr nz, jr_00d_7ac8

    rst $38
    rst $38
    ld l, l
    ld [bc], a
    rst $38
    rst $38

jr_00d_7ac8:
    inc a
    rst $38
    adc a
    ld [bc], a
    inc bc
    rst $38
    ld l, l
    nop
    inc bc
    rst $38
    ld l, [hl]
    nop
    ld b, d
    rst $38
    inc sp
    ld bc, $0003
    inc b
    rst $38
    dec b
    nop
    jr nc, jr_00d_7ae6

    ld [bc], a
    rst $38
    ld l, [hl]
    nop
    inc a
    rst $38

jr_00d_7ae6:
    jr nc, jr_00d_7aee

    rst $38
    rst $38
    inc a
    rst $38
    sbc d
    ld [bc], a

jr_00d_7aee:
    inc bc
    rst $38
    ld l, [hl]
    nop
    ld b, d
    rst $38
    inc sp
    ld bc, $0003
    inc b
    rst $38
    dec b
    nop
    jr nc, jr_00d_7b04

    ld [bc], a
    rst $38
    ld l, [hl]
    nop
    inc a
    rst $38

jr_00d_7b04:
    jr nc, jr_00d_7b0c

    rst $38
    rst $38
    sbc e
    ld [bc], a
    rst $38
    rst $38

jr_00d_7b0c:
    ld c, d
    rst $38
    ld bc, $0100
    rst $38
    xor b
    nop
    call c, $017b
    rst $38
    and a
    nop
    call nc, $017b
    rst $38
    and [hl]
    nop
    or [hl]
    ld a, e
    ld bc, $37ff
    nop
    sub h
    ld a, e
    ld bc, $88ff
    nop
    sub b
    ld a, e
    ld bc, $87ff
    nop
    adc b
    ld a, e
    ld bc, $86ff
    nop
    ld l, d
    ld a, e
    inc a
    rst $38
    rra
    inc bc
    dec d
    rst $38
    inc a
    ret z

    ld bc, $6600
    ld a, e
    ld hl, $0303
    rst $38
    add [hl]
    nop
    inc bc
    rst $38
    add a
    nop
    ld b, d
    rst $38
    scf
    ld bc, $0003
    inc b
    rst $38
    dec b
    nop
    ld d, b
    ld b, $02
    rst $38
    add a
    nop
    inc a
    rst $38
    ld d, b
    ld b, $ff
    rst $38
    jr nz, jr_00d_7b6b

    rst $38
    rst $38
    inc a

jr_00d_7b6b:
    rst $38
    ld c, l
    ld [$ff03], sp
    add a
    nop
    ld b, d
    rst $38
    scf
    ld bc, $0003
    inc b
    rst $38
    dec b
    nop
    ld d, b
    ld b, $02
    rst $38
    add a
    nop
    inc a
    rst $38
    ld d, b
    ld b, $ff
    rst $38
    inc l
    inc bc
    inc bc
    rst $38
    adc b
    nop
    rst $38
    rst $38
    dec l
    inc bc
    rst $38
    rst $38
    inc a
    rst $38
    ld h, [hl]
    inc b
    inc bc
    rst $38
    and [hl]
    nop
    inc bc
    rst $38
    and a
    nop
    ld b, d
    rst $38
    dec sp
    ld bc, $0003
    inc b
    rst $38
    dec b
    nop
    ld d, b
    ld b, $02
    rst $38
    and a
    nop
    inc a
    rst $38
    ld d, b
    ld b, $ff
    rst $38
    inc a
    rst $38
    ld d, [hl]
    ld [$ff03], sp
    and a
    nop
    ld b, d
    rst $38
    dec sp
    ld bc, $0003
    inc b
    rst $38
    dec b
    nop
    ld d, b
    ld b, $02
    rst $38
    and a
    nop
    inc a
    rst $38
    ld d, b
    ld b, $ff
    rst $38
    ld l, b
    inc b
    inc bc
    rst $38
    xor b
    nop
    rst $38
    rst $38
    ld l, c
    inc b
    rst $38
    rst $38
    ld c, d
    rst $38
    ld bc, $0100
    rst $38
    ld d, l
    ld bc, $7c3a
    ld bc, $0fff
    ld bc, $7c36
    ld bc, $0eff
    ld bc, $7c18
    inc a
    rst $38
    daa
    ld [$ff03], sp
    ld c, $01
    inc bc
    rst $38
    rrca
    ld bc, $ff42
    inc a
    ld bc, $0003
    inc b
    rst $38
    dec b
    nop
    ld h, b
    ld b, $02
    rst $38
    rrca
    ld bc, $ff3c
    ld h, b
    ld b, $ff
    rst $38
    inc a
    rst $38
    jr z, @+$0a

    inc bc
    rst $38
    rrca
    ld bc, $ff42
    inc a
    ld bc, $0003
    inc b
    rst $38
    dec b
    nop
    ld h, b
    ld b, $02
    rst $38
    rrca
    ld bc, $ff3c
    ld h, b
    ld b, $ff
    rst $38
    add hl, hl
    ld [$ffff], sp
    call nz, $ff08
    rst $38
    ld b, b
    ld a, h
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
