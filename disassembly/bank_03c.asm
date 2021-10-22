; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03c", ROMX[$4000], BANK[$3c]

    inc a
    rst $18
    ld b, c
    ld e, $42
    ld e, l
    ld b, d
    sbc h
    ld b, d
    db $db
    ld b, d
    dec d
    ld b, e
    ld c, a
    ld b, e
    adc b
    ld b, e
    cp c
    ld b, e
    add sp, $43
    rst $30
    ld b, e
    inc d
    ld b, h
    inc hl
    ld b, h
    ld b, [hl]
    ld b, h
    ld d, l
    ld b, h
    ld h, h
    ld b, h
    ld a, c
    ld b, h
    adc [hl]
    ld b, h
    and e
    ld b, h
    push hl
    ld b, h
    ld [bc], a
    ld b, l
    dec l
    ld b, l
    ld l, b
    ld b, l
    xor [hl]
    ld b, l
    cp $45
    ld b, c
    ld b, [hl]
    add b
    ld b, [hl]
    ldh [rDMA], a
    ld b, b
    ld b, a
    sbc b
    ld b, a
    db $ec
    ld b, a
    dec h
    ld c, b
    ld e, l
    ld c, b
    adc l
    ld c, b
    cp l
    ld c, b
    or $48
    daa
    ld c, c
    ld d, [hl]
    ld c, c
    add [hl]
    ld c, c
    cp a
    ld c, c
    rst $30
    ld c, c
    jr nc, jr_03c_409f

    ld h, b
    ld c, d
    sbc c
    ld c, d
    ret


    ld c, d
    ei
    ld c, d
    inc a
    ld c, e
    sub l
    ld c, e
    db $ec
    ld c, e
    jr c, jr_03c_40b1

    ld e, h
    ld c, h
    sub [hl]
    ld c, h
    db $d3
    ld c, h
    inc c
    ld c, l
    ccf
    ld c, l
    ld l, e
    ld c, l
    xor [hl]
    ld c, l
    ldh a, [rKEY1]
    ld a, [hl+]
    ld c, [hl]
    ld h, c
    ld c, [hl]
    and e
    ld c, [hl]
    rst $20
    ld c, [hl]
    dec hl
    ld c, a
    ld l, a
    ld c, a
    and l
    ld c, a
    ld [c], a
    ld c, a
    ld a, [bc]
    ld d, b
    jr c, jr_03c_40d9

    ld l, a
    ld d, b
    or e
    ld d, b
    db $d4, $50, $0f
    ld d, c
    ld a, [hl+]
    ld d, c
    ld b, h
    ld d, c
    ld [hl], l
    ld d, c
    or h
    ld d, c
    db $e3
    ld d, c
    add hl, hl
    ld d, d
    ld [hl], c
    ld d, d

jr_03c_409f:
    cp h
    ld d, d
    db $e4
    ld d, d
    scf
    ld d, e
    ld d, c
    ld d, e
    ld [hl], b
    ld d, e
    adc c
    ld d, e
    pop bc
    ld d, e
    ei
    ld d, e
    inc e
    ld d, h

jr_03c_40b1:
    ld b, c
    ld d, h
    ld [hl], b
    ld d, h
    and c
    ld d, h
    db $ed
    ld d, h
    daa
    ld d, l
    add a
    ld d, l
    pop bc
    ld d, l
    or $55
    ld [hl+], a
    ld d, [hl]
    ld l, d
    ld d, [hl]
    and h
    ld d, [hl]
    rst $28
    ld d, [hl]
    jr z, jr_03c_4122

    ld h, [hl]
    ld d, a
    sub a
    ld d, a
    ret z

    ld d, a
    db $fc
    ld d, a
    scf
    ld e, b
    ld a, c
    ld e, b
    xor [hl]
    ld e, b

jr_03c_40d9:
    nop
    ld e, c
    ld d, a
    ld e, c
    add [hl]
    ld e, c
    or [hl]
    ld e, c
    di
    ld e, c
    ld [hl-], a
    ld e, d
    ld a, a
    ld e, d
    call z, $fc5a
    ld e, d
    dec l
    ld e, e
    ld [hl], a
    ld e, e
    cp a
    ld e, e
    ld sp, hl
    ld e, e
    inc [hl]
    ld e, h
    ld e, b
    ld e, h
    ld a, h
    ld e, h
    or d
    ld e, h
    ld [$135c], a
    ld e, l
    ld a, $5d
    ld l, l
    ld e, l
    and e
    ld e, l
    db $dc, $5d, $19
    ld e, [hl]
    ld h, d
    ld e, [hl]
    xor l
    ld e, [hl]
    or $5e
    ld c, a
    ld e, a
    sub c
    ld e, a
    ret c

    ld e, a
    inc de
    ld h, b
    db $76
    ld h, b
    sub a
    ld h, b
    or c
    ld h, b
    db $d3
    ld h, b
    inc bc
    ld h, c
    dec [hl]

jr_03c_4122:
    ld h, c
    ld h, a
    ld h, c
    and c
    ld h, c
    db $da, $61, $1f

    ld h, d
    ld l, d
    ld h, d
    cp c
    ld h, d
    ld hl, sp+$62
    ld b, d
    ld h, e
    adc d
    ld h, e
    rst $10
    ld h, e
    ld h, $64
    ld a, c
    ld h, h
    pop bc
    ld h, h
    dec bc
    ld h, l
    ld e, a
    ld h, l
    xor a
    ld h, l
    call nc, $0365
    ld h, [hl]
    ld [de], a
    ld h, [hl]
    ld h, $66
    ld l, e
    ld h, [hl]
    or c
    ld h, [hl]
    ldh [$66], a
    inc de
    ld h, a
    ld h, d
    ld h, a
    jp nz, $2a67

    ld l, b
    ld h, h
    ld l, b
    sub l
    ld l, b
    or e
    ld l, b
    pop af
    ld l, b
    inc hl
    ld l, c
    ld d, d
    ld l, c
    sbc c
    ld l, c
    cp c
    ld l, c
    push af
    ld l, c
    ld b, b
    ld l, d
    ld [hl], b
    ld l, d
    xor h
    ld l, d
    rst $38
    ld l, d
    inc a
    ld l, e
    ld [hl], c
    ld l, e
    or d
    ld l, e
    rst $28
    ld l, e
    jr nz, jr_03c_41e9

    ld d, h
    ld l, h
    adc a
    ld l, h
    jp c, $1a6c

    ld l, l
    ld d, h
    ld l, l
    sub e
    ld l, l
    db $dd
    ld l, l
    add hl, de
    ld l, [hl]
    ld b, d
    ld l, [hl]
    ld a, d
    ld l, [hl]
    xor e
    ld l, [hl]
    call nc, $f26e
    ld l, [hl]
    ld [de], a
    ld l, a
    add hl, sp
    ld l, a
    ld h, e
    ld l, a
    sub e
    ld l, a
    sbc $6f
    cpl
    ld [hl], b
    ld a, b
    ld [hl], b
    push bc
    ld [hl], b
    ld d, $71
    ld h, a
    ld [hl], c
    or d
    ld [hl], c
    dec bc
    ld [hl], d
    ld e, a
    ld [hl], d
    xor c
    ld [hl], d
    ld hl, sp+$72
    ld b, d
    ld [hl], e
    add [hl]
    ld [hl], e
    db $dc, $73, $1e
    ld [hl], h
    ld l, l
    ld [hl], h
    ret nz

    ld [hl], h
    ld [de], a
    ld [hl], l
    ld h, h
    ld [hl], l
    cp h
    ld [hl], l
    ldh a, [$75]
    ld sp, $7a76
    db $76
    ret nz

    db $76
    dec bc
    ld [hl], a
    ld l, c
    ld [hl], a
    cp b
    ld [hl], a
    xor $77
    inc de
    ld a, b
    dec sp
    ld a, b
    ld l, [hl]
    ld a, b
    and c
    ld a, b
    nop
    ld bc, $2201
    ld bc, $0500
    ld bc, $f3fa

jr_03c_41e9:
    ld de, $0111
    inc bc
    rrca
    dec e
    ld de, $0111
    db $fc
    pop af
    ld bc, $f3fa
    nop
    nop
    ld bc, $0c43
    ld bc, $095a
    ld bc, $0e60
    ld bc, $0305
    ld bc, $0f79
    ld b, $23
    inc sp
    inc sp
    inc sp
    ld [hl-], a
    ld bc, $0f97
    rrca
    ld bc, $0562
    ld bc, $0bc2
    ld bc, $0c01
    ld bc, $0b01
    nop
    ld bc, $2201
    ld bc, $0500
    ld bc, $f3fa
    ld de, $0111
    inc bc
    rrca
    dec e
    ld de, $0111
    db $fc
    pop af
    ld bc, $f3fa
    nop
    nop
    ld bc, $0c43
    ld bc, $095a
    ld bc, $0e60
    ld bc, $0305
    ld bc, $0f79
    ld b, $23
    inc sp
    inc sp
    inc sp
    ld [hl-], a
    ld bc, $0f97
    rrca
    ld bc, $0562
    ld bc, $0bc2
    ld bc, $0c01
    ld bc, $0b01
    nop
    ld bc, $2201
    ld bc, $0500
    ld bc, $f3fa
    ld de, $0111
    inc bc
    rrca
    dec e
    ld de, $0111
    db $fc
    pop af
    ld bc, $f3fa
    nop
    nop
    ld bc, $0c43
    ld bc, $095a
    ld bc, $0e60
    ld bc, $0305
    ld bc, $0f79
    ld b, $23
    inc sp
    inc sp
    inc sp
    ld [hl-], a
    ld bc, $0f97
    rrca
    ld bc, $0562
    ld bc, $0bc2
    ld bc, $0c01
    ld bc, $0b01
    nop
    ld bc, $2201
    ld bc, $0500
    ld bc, $f3fa
    ld de, $0111
    inc bc
    rrca
    dec e
    ld de, $0111
    db $fc
    pop af
    ld bc, $f3fa
    nop
    nop
    ld bc, $0c43
    ld bc, $095a
    ld bc, $0e60
    ld bc, $0305
    ld bc, $0f79
    ld b, $23
    inc sp
    inc sp
    inc sp
    ld [hl-], a
    ld bc, $0f97
    rrca
    ld bc, $0562
    ld bc, $0bc2
    ld bc, $0c01
    ld bc, $0b01
    nop
    ld bc, $2201
    ld bc, $0500
    ld bc, $f3fa
    ld de, $1101
    inc bc
    ld bc, $0f09
    dec d
    nop
    inc sp
    ld bc, $0011
    inc sp
    nop
    ld bc, $0f39
    daa
    ld bc, $0182
    ld bc, $0f78
    rlca
    nop
    nop
    inc sp
    inc sp
    ld bc, $039d
    ld bc, $0f9d
    nop
    ld bc, $f0fc
    ld bc, $0fb4
    add hl, bc
    ld bc, $0fa0
    dec c
    nop
    ld bc, $2201
    ld bc, $0500
    ld bc, $f3fa
    ld de, $1101
    inc bc
    ld bc, $0f09
    dec d
    nop
    inc sp
    ld bc, $0011
    inc sp
    nop
    ld bc, $0f39
    daa
    ld bc, $0182
    ld bc, $0f78
    rlca
    nop
    nop
    inc sp
    inc sp
    ld bc, $039d
    ld bc, $0f9d
    nop
    ld bc, $f0fc
    ld bc, $0fb4
    add hl, bc
    ld bc, $0fa0
    dec c
    nop
    ld bc, $2201
    nop
    nop
    nop
    inc sp
    inc sp
    ld bc, $f3fd
    ld bc, $fffd
    ld c, l
    ld bc, $0f1d
    ld bc, $1111
    ld de, $3333
    ld de, $1111
    ld bc, $0f79
    ld b, $22
    ld bc, $0083
    ld [hl+], a
    ld bc, $0f98
    rlca
    ld bc, $0f82
    inc c
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    inc sp
    ld bc, $00e0
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    rlca
    ld hl, $1211
    ld de, $1211
    ld bc, $f2fa
    ld hl, $2111
    ld [de], a
    nop
    ld hl, $0020
    ld [hl+], a
    jr nz, jr_03c_43a8

    rst $00

jr_03c_43a8:
    rst $38
    ld h, $33
    ld bc, $0171
    ld bc, $0f69
    rlca
    ld bc, $0f92
    ld c, l
    ld bc, $09f2
    nop
    ld bc, $1101
    ld bc, $0200
    inc de
    inc sp
    inc sp
    ld bc, $f9fa
    inc sp
    ld bc, $0408
    ld [hl+], a
    ld de, $0122
    rst $38
    ldh a, [rSB]
    rla
    dec b
    ld bc, $021c
    ld bc, $0a26
    nop
    nop
    inc de
    ld bc, $0b37
    inc sp
    ld bc, $0f47
    ld c, l
    ld bc, $0f97
    ld [hl], $00
    ld bc, $0101
    and b
    rst $38
    ld c, l
    ld bc, $0f5f
    ld c, l
    ld bc, $0fbf
    dec l
    nop
    ld bc, $0101
    rst $38
    ld a, [c]
    inc sp
    inc sp
    inc sp
    inc sp
    ld bc, $fffa
    add hl, bc
    ld bc, $0005
    ld bc, $0f1a
    ld c, l
    ld bc, $0f7a
    ld c, l
    ld bc, $0f9a
    inc bc
    nop
    ld bc, $0101
    and b
    rst $38
    ld c, l
    ld bc, $0f5f
    ld c, l
    ld bc, $0fbf
    dec l
    nop
    ld bc, $0101
    rst $38
    di
    inc sp
    inc sp
    inc sp
    ld bc, $fffa
    ld a, [bc]
    nop
    ld bc, $0f18
    dec c
    nop
    ld bc, $0f39
    dec c
    ld bc, $0f68
    ld c, l
    ld bc, $0b19
    inc bc
    ld bc, $0f19
    inc d
    nop
    ld bc, $0101
    and b
    rst $38
    ld c, l
    ld bc, $0f5f
    ld c, l
    ld bc, $0fbf
    dec l
    nop
    ld bc, $0101
    and b
    rst $38
    ld c, l
    ld bc, $0f5f
    ld c, l
    ld bc, $0fbf
    dec l
    nop
    ld bc, $0101
    rst $38
    di
    inc sp
    inc sp
    inc sp
    ld bc, $fffa
    ld c, l
    ld bc, $0f5a
    ld c, l
    ld bc, $0f9a
    inc hl
    nop
    ld bc, $0101
    rst $38
    di
    inc sp
    inc sp
    inc sp
    ld bc, $fffa
    ld c, l
    ld bc, $0f5a
    ld c, l
    ld bc, $0f9a
    inc hl
    nop
    ld bc, $0101
    rst $38
    di
    inc sp
    inc sp
    inc sp
    ld bc, $fffa
    ld c, l
    ld bc, $0f5a
    ld c, l
    ld bc, $0f9a
    inc hl
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $f8fa
    ld bc, $f0fd
    ld bc, $f4fa
    ld bc, $f0fd
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $f5f9
    ld bc, $0b22
    ld bc, $f1fb
    ld bc, $0f36
    ld [$0901], sp
    inc bc
    ld bc, $f6f8
    ld bc, $faf2
    ld [hl+], a
    jr nz, jr_03c_44d3

    ld [hl], d

jr_03c_44d3:
    rrca
    dec hl
    ld de, $0110
    ld h, d
    rrca
    dec bc
    ld de, $c001
    dec bc
    ld bc, $0507
    ld bc, $03f8
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    nop
    ld bc, $0209
    ld bc, $0419
    ld bc, $0e1f
    ld bc, $0f40
    ld c, l
    ld bc, $0fa0
    ld c, h
    nop
    ld bc, $1102
    ld [bc], a
    nop
    dec b
    ld [bc], a
    ld a, [$03ff]
    ld [bc], a
    cp $f6
    ld [bc], a
    ld a, [de]
    rrca
    dec [hl]
    ld bc, $1302
    dec bc
    ld [bc], a
    rst $38
    db $f4
    ld [bc], a
    ld a, d
    rrca
    ld d, $02
    ld [hl], d
    inc bc
    ld [bc], a
    or $fc
    ld [bc], a
    di
    ld sp, hl
    ld bc, $c802
    rrca
    dec d
    nop
    ld bc, $1102
    ld [bc], a
    nop
    dec b
    ld [bc], a
    ld a, [$03ff]
    ld [bc], a
    ei
    or $02
    push af
    ld hl, sp+$00
    nop
    ld bc, $1902
    ld [$2200], sp
    ld [hl+], a
    ld [bc], a
    jr c, @+$11

    inc c
    ld [bc], a
    inc sp
    ld bc, $5c02
    rrca
    ld [$0222], sp
    ld a, b
    rrca
    dec bc
    ld [bc], a
    ld [hl], $0c
    ld [bc], a
    and [hl]
    rrca
    rrca
    ld [bc], a
    jr @+$0b

    ld [bc], a
    ld [hl], $00
    ld [bc], a
    reti


    rrca
    inc b
    nop
    ld bc, $1102
    ld de, $1011
    ld [bc], a
    db $f4
    ei
    ld de, $0402
    inc c
    ld [bc], a
    inc bc
    ld [$0202], sp
    nop
    ld [bc], a
    inc h
    ld a, [bc]
    ld [hl+], a
    ld [bc], a
    inc sp
    dec c
    ld [bc], a
    db $f4
    ld sp, hl
    nop
    ld [bc], a
    ld d, d
    dec bc
    ld [bc], a
    ld d, c
    inc c
    ld [bc], a
    ld [hl], c
    rrca
    ld c, $02
    ld l, $01
    ld [bc], a
    inc de
    dec b
    ld [bc], a
    ld [de], a
    nop
    ld [bc], a
    stop
    ld [bc], a
    ld [de], a
    inc b
    ld de, $1011
    ld bc, $b402
    ld a, [bc]
    ld [bc], a
    ret nc

    inc b
    ld [bc], a
    db $ca, $0f, $13

    nop
    ld bc, $1102
    ld de, $1011
    ld [bc], a
    db $f4
    ei
    ld de, $0402
    inc c
    ld [bc], a
    inc bc
    ld [$1111], sp
    nop
    ld bc, $2402
    add hl, bc
    db $10
    ld [hl+], a
    nop
    ld [bc], a
    inc [hl]
    rrca
    ld a, [bc]
    nop
    ld [hl+], a
    nop
    ld [bc], a
    inc de
    ld [$6002], sp
    dec c
    db $10
    ld [bc], a
    ld [hl], d
    rrca
    ld [bc], a
    ld [bc], a
    inc bc
    dec b
    ld [bc], a
    ld [bc], a
    nop
    ld de, $0110
    ld de, $0100
    ld [bc], a
    ld a, [hl+]
    dec b
    ld [bc], a
    rrca
    ld bc, $1202
    inc b
    ld de, $a402
    nop
    ld [bc], a
    or l
    add hl, bc
    ld [bc], a
    ret nc

    inc b
    ld [bc], a
    db $ca, $0f, $13

    nop
    ld bc, $0202
    and b
    rst $38
    ld c, l
    ld [bc], a
    add hl, de
    rrca
    ld b, $01
    ld [bc], a
    ld l, d
    rrca
    inc bc
    db $10
    ld [bc], a
    ld [hl], c
    dec bc
    ld de, $9002
    inc b
    ld de, $9a02
    inc bc
    ld [bc], a
    xor c
    inc bc
    ld [bc], a
    xor b
    ld b, $10
    ld [bc], a
    adc a
    ld [bc], a
    ld [bc], a
    xor c
    dec b
    ld de, $1101
    nop
    nop
    ld bc, $b002
    inc b
    ld de, $e002
    nop
    db $10
    ld [bc], a
    ldh [rP1], a
    ld [bc], a
    jp c, $0207

    ldh [rSB], a
    ld [bc], a
    add hl, de
    ld [bc], a
    nop
    ld bc, $0202
    rst $38
    rst $38
    ld sp, $2222
    ld [hl+], a
    ld [bc], a
    scf
    rrca
    rra
    ld bc, $ff02
    ei
    ld [bc], a
    ld a, c
    inc bc
    db $10
    ld [bc], a
    add c
    dec bc
    ld de, $9002
    inc b
    ld de, $9a02
    inc bc
    ld [bc], a
    xor c
    inc bc
    ld [bc], a
    xor b
    ld b, $10
    ld [bc], a
    adc a
    ld [bc], a
    ld [bc], a
    xor c
    dec b
    ld de, $1101
    nop
    nop
    ld bc, $b002
    inc b
    ld de, $e002
    dec b
    ld [bc], a
    jp c, Jump_000_030f

    nop
    ld bc, $0202
    rst $38
    di
    ld bc, $1111
    ld [bc], a
    ld a, [$11f9]
    ld [bc], a
    ld [$2207], sp
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld a, [de]
    rrca
    ld b, $02
    ld de, $0203
    ld a, [hl-]
    rrca
    inc bc
    db $10
    ld [bc], a
    ld b, c
    dec bc
    ld de, $6002
    ld bc, $0211
    rla
    dec b
    ld [bc], a
    ld [hl], b
    ld [bc], a
    db $10
    inc sp
    ld [bc], a
    ld l, b
    ld a, [bc]
    ld [bc], a
    add [hl]
    dec c
    ld [bc], a
    ld h, a
    ld b, $02
    add hl, bc
    ld bc, $0010
    nop
    ld bc, $aa02
    dec b
    ld de, $2702
    ld bc, $a902
    dec b
    ld de, $0011
    ld bc, $1011
    ld [bc], a
    ret z

    dec bc
    ld [bc], a
    pop bc
    ld bc, $7202
    inc b
    db $10
    ld [bc], a
    halt
    ld [bc], a
    add hl, sp
    inc bc
    nop
    ld bc, $0202
    rst $38
    di
    ld bc, $1111
    ld [bc], a
    ld a, [$11f9]
    ld [bc], a
    ld [$3307], sp
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld a, [de]
    rrca
    ld b, $02
    ld de, $0203
    ld a, [hl-]
    rrca
    inc bc
    db $10
    ld [bc], a
    ld b, c
    dec bc
    ld de, $6002
    ld bc, $0211
    rla
    dec b
    ld [bc], a
    ld [hl], b
    ld [bc], a
    db $10
    inc sp
    ld [bc], a
    ld l, b
    ld a, [bc]
    ld [bc], a
    add [hl]
    dec c
    ld [bc], a
    ld h, a
    ld b, $02
    add hl, bc
    ld bc, $0010
    nop
    ld bc, $aa02
    dec b
    ld de, $2702
    ld bc, $a902
    dec b
    ld de, $0011
    ld bc, $1011
    ld [bc], a
    ret z

    dec bc
    ld [bc], a
    pop bc
    ld bc, $7202
    inc b
    db $10
    ld [bc], a
    halt
    ld [bc], a
    add hl, sp
    inc bc
    nop
    ld bc, $0202
    rst $38
    di
    ld bc, $1111
    ld [bc], a
    ld a, [$11f9]
    ld [bc], a
    ld [$3307], sp
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld a, [de]
    rrca
    ld b, $02
    ld de, $0203
    ld a, [hl-]
    rrca
    inc bc
    db $10
    ld [bc], a
    ld b, c
    dec bc
    ld [bc], a
    add hl, bc
    dec b
    ld [bc], a
    ld l, c
    inc b
    ld [bc], a
    ld h, b
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld a, b
    rrca
    inc c
    ld [bc], a
    ld h, a
    ld b, $02
    add hl, bc
    inc b
    ld bc, $aa02
    dec b
    ld [bc], a
    add hl, bc
    ld [bc], a
    ld [bc], a
    cp c
    dec b
    ld [bc], a
    ld [$1100], sp
    db $10
    ld [bc], a
    xor b
    ld b, $11
    ld de, $0602
    ld bc, $d902
    rlca
    db $10
    ld [bc], a
    ret nc

    nop
    ld [bc], a
    add hl, sp
    inc bc
    nop
    ld bc, $0202
    rst $38
    di
    ld bc, $1111
    ld [bc], a
    ld a, [$06ff]
    inc sp
    ld [bc], a
    rst $38
    pop af
    ld [bc], a
    add hl, de
    rrca
    rlca
    ld [bc], a
    rst $38
    ld a, [c]
    ld [bc], a
    add hl, sp
    rrca
    inc b
    db $10
    ld [bc], a
    ld b, c
    dec bc
    ld [bc], a
    add hl, bc
    dec b
    ld [bc], a
    ld l, c
    inc b
    ld [bc], a
    ld h, b
    ld [bc], a
    inc sp
    ld [bc], a
    ld a, b
    rrca
    inc c
    ld [bc], a
    ld h, a
    ld b, $02
    add hl, bc
    inc b
    ld bc, $aa02
    dec b
    ld [bc], a
    add hl, bc
    ld [bc], a
    ld [bc], a
    xor c
    dec b
    ld [bc], a
    ld [$1100], sp
    db $10
    ld [bc], a
    ret z

    dec bc
    ld [bc], a
    pop bc
    inc b
    ld [bc], a
    rst $08
    ld bc, $0110
    ld [bc], a
    ret nc

    ld [bc], a
    ld [bc], a
    ei
    nop
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld bc, $3113
    ld bc, $faff
    inc sp
    inc sp
    ld bc, $0f16
    add hl, bc
    inc sp
    nop
    ld [hl+], a
    ld [hl+], a
    nop
    ld bc, $0725
    ld bc, $0b42
    ld [hl+], a
    ld bc, $0361
    ld bc, $0f59
    dec c
    ld bc, $0468
    ld bc, $0f81
    dec e
    ld bc, $025f
    ld bc, $f8ff
    ld bc, $0cc3
    ld bc, $0fe2
    ld a, [bc]
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld bc, $3113
    ld bc, $faff
    inc sp
    inc sp
    ld bc, $0f16
    add hl, bc
    inc sp
    nop
    ld [hl+], a
    ld [hl+], a
    ld bc, $0d36
    ld bc, $0645
    ld [hl+], a
    ld bc, $0361
    ld bc, $0f59
    dec c
    ld bc, $0445
    ld bc, $0f81
    dec e
    ld bc, $025f
    ld bc, $f8ff
    ld bc, $0cc3
    ld bc, $0fe2
    ld a, [bc]
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld hl, $2222
    ld bc, $f8ff
    inc sp
    ld bc, $0f33
    ld bc, $3501
    ld b, $22
    ld bc, $0361
    ld bc, $0f59
    dec c
    ld bc, $0435
    ld bc, $0f81
    dec e
    ld bc, $025f
    ld bc, $0a28
    ld bc, $0a34
    ld bc, $0fe2
    ld a, [bc]
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld hl, $2222
    ld bc, $0f26
    add hl, bc
    ld [hl+], a
    ld bc, $0033
    ld bc, $0635
    ld [hl+], a
    ld bc, $0361
    ld bc, $0f59
    dec c
    ld bc, $0435
    ld bc, $0f81
    dec e
    ld bc, $025f
    ld bc, $0a28
    ld bc, $0c34
    ld bc, $0fe4
    ld [$0100], sp
    ld bc, $ff01
    rst $38
    ld bc, $3113
    ld bc, $faff
    inc sp
    inc sp
    ld bc, $0f16
    add hl, bc
    inc sp
    nop
    ld [hl+], a
    ld [hl+], a
    nop
    ld bc, $0725
    ld bc, $0b42
    ld [hl+], a
    ld bc, $0361
    ld bc, $0f59
    inc b
    ld bc, $0461
    ld bc, $0f78
    dec h
    ld bc, $035e
    ld bc, $f8ff
    ld bc, $0cc3
    ld bc, $0fe2
    ld a, [bc]
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld hl, $2222
    ld bc, $f8ff
    inc sp
    ld bc, $0033
    inc sp
    ld bc, $0f38
    ld b, $22
    ld bc, $0361
    ld bc, $0f59
    inc b
    ld bc, $0461
    ld bc, $0f78
    dec h
    ld bc, $035e
    ld bc, $0a28
    ld bc, $0a34
    ld bc, $0fe2
    ld a, [bc]
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld hl, $2222
    ld bc, $0d26
    inc sp
    ld bc, $072a
    ld bc, $0a43
    ld [hl+], a
    ld bc, $0361
    ld bc, $0f59
    inc b
    ld bc, $0461
    ld bc, $0f78
    dec h
    ld bc, $035e
    ld bc, $0a28
    ld bc, $0c34
    ld bc, $0fe4
    ld [$0100], sp
    ld bc, $ff01
    rst $38
    ld hl, $2222
    ld bc, $0f26
    add hl, bc
    ld [hl+], a
    ld bc, $0033
    ld bc, $0635
    ld [hl+], a
    ld bc, $0361
    ld bc, $0f59
    inc b
    ld bc, $0461
    ld bc, $0f78
    dec h
    ld bc, $035e
    ld bc, $0a28
    ld bc, $0c34
    ld bc, $0fe4
    ld [$0100], sp
    ld bc, $ff01
    rst $38
    ld bc, $3113
    ld bc, $faff
    inc sp
    inc sp
    ld bc, $0f16
    add hl, bc
    inc sp
    nop
    ld [hl+], a
    ld [hl+], a
    nop
    ld bc, $0725
    ld bc, $0b42
    ld [hl+], a
    ld bc, $0361
    ld bc, $0f59
    dec c
    ld bc, $0468
    ld bc, $0f81
    dec e
    ld bc, $025f
    ld bc, $f8ff
    ld bc, $0cc3
    ld bc, $0fe2
    ld a, [bc]
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld bc, $3113
    ld bc, $faff
    inc sp
    inc sp
    ld bc, $0f16
    add hl, bc
    inc sp
    nop
    ld [hl+], a
    ld [hl+], a
    ld bc, $0d36
    ld bc, $0645
    ld [hl+], a
    ld bc, $0361
    ld bc, $0f59
    dec c
    ld bc, $0445
    ld bc, $0f81
    dec e
    ld bc, $025f
    ld bc, $f8ff
    ld bc, $0cc3
    ld bc, $0fe2
    ld a, [bc]
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld bc, $3113
    ld bc, $faff
    inc sp
    inc sp
    ld bc, $0f16
    dec bc
    ld [hl+], a
    ld [hl+], a
    ld bc, $0938
    ld bc, $0043
    ld bc, $0645
    ld [hl+], a
    ld bc, $0361
    ld bc, $0f59
    dec c
    ld bc, $0445
    ld bc, $0f81
    dec e
    ld bc, $025f
    ld bc, $0a38
    ld bc, $0a44
    ld bc, $0fe2
    ld a, [bc]
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld hl, $2222
    ld bc, $0f26
    add hl, bc
    ld [hl+], a
    ld bc, $0033
    ld bc, $0635
    ld [hl+], a
    ld bc, $0361
    ld bc, $0f59
    dec c
    ld bc, $0435
    ld bc, $0f81
    dec e
    ld bc, $025f
    ld bc, $0a28
    ld bc, $0c34
    ld bc, $0fe4
    ld [$0100], sp
    ld bc, $ff01
    rst $38
    ld bc, $3113
    ld bc, $faff
    inc sp
    inc sp
    ld bc, $0f16
    add hl, bc
    inc sp
    nop
    ld [hl+], a
    ld [hl+], a
    nop
    ld bc, $0725
    ld bc, $0b42
    ld [hl+], a
    ld bc, $0361
    ld bc, $0f59
    inc b
    ld bc, $0461
    ld bc, $0f78
    dec h
    ld bc, $035e
    ld bc, $f8ff
    ld bc, $0cc3
    ld bc, $0fe2
    ld a, [bc]
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld hl, $2222
    ld bc, $0f26
    add hl, bc
    ld [hl+], a
    ld bc, $0033
    ld bc, $0635
    ld [hl+], a
    ld bc, $0361
    ld bc, $0f59
    inc b
    ld bc, $0461
    ld bc, $0f78
    dec h
    ld bc, $035e
    ld bc, $0a28
    ld bc, $0c34
    ld bc, $0fe4
    ld [$0100], sp
    ld bc, $0133
    nop
    dec b
    ld bc, $fffa
    ld c, e
    ld de, $0111
    ld a, [$30f9]
    ld bc, $0a68
    ld bc, $0468
    ld bc, $f3fe
    ld bc, $0577
    ld bc, $f2fe
    ld bc, $0686
    ld bc, $f0fe
    jr nc, jr_03c_4af1

jr_03c_4af1:
    ld bc, $0ba4
    ld bc, $07a5
    ld bc, $0fbe
    rra
    nop
    ld bc, $3301
    ld bc, $0500
    ld bc, $fffa
    ld b, $11
    ld bc, $0121
    ld bc, $0509
    jr nc, jr_03c_4b20

    ld de, $1100
    inc bc
    ld bc, $0508
    ld bc, $0033
    nop
    nop
    ld de, $0111
    add hl, bc
    inc bc

jr_03c_4b20:
    ld bc, $0032
    nop
    ld bc, $0045
    inc bc
    ld bc, $f2fa
    ld bc, $0152
    ld bc, $075c
    ld bc, $0c60
    ld bc, $0f7f
    ld c, l
    ld bc, $0fdf
    dec c
    nop
    ld bc, $3301
    ld bc, $0500
    ld bc, $fffa
    rlca
    ld de, $2401
    ld bc, $fa01
    push af
    nop
    ld bc, $0a24
    jr nc, jr_03c_4b55

    add hl, hl

jr_03c_4b55:
    ld bc, $0133
    add hl, sp
    rrca
    inc b
    ld de, $0111
    ld b, d
    ld [bc], a
    nop
    ld bc, $0559
    ld bc, $0368
    ld bc, $0329
    ld bc, $016e
    ld bc, $0b75
    inc bc
    ld bc, $0975
    nop
    nop
    inc bc
    ld bc, $0440
    ld bc, $047b
    ld bc, $0a96
    nop
    ld de, $6f01
    nop
    ld bc, $0194
    ld bc, $077a
    ld bc, $0309
    ld bc, $05ae
    ld bc, $0fd9
    inc b
    nop
    ld bc, $3301
    ld bc, $0500
    ld bc, $fffa
    rlca
    ld de, $2401
    ld bc, $fa01
    push af
    nop
    ld bc, $0a24
    jr nc, jr_03c_4bae

    add hl, hl

jr_03c_4bae:
    ld bc, $0133
    add hl, sp
    rrca
    inc b
    ld de, $0111
    ld b, d
    ld [bc], a
    nop
    ld bc, $0559
    ld bc, $0368
    ld bc, $0329
    ld bc, $016e
    ld bc, $0c75
    inc sp
    nop
    inc sp
    ld bc, $0678
    ld bc, $f0fd
    ld bc, $0547
    ld bc, $f5f7
    ld bc, $0aa8
    ld de, $0011
    inc bc
    ld bc, $0bba
    ld bc, $0309
    ld bc, $05b2
    ld bc, $0fd9
    inc b
    nop
    ld bc, $3301
    inc sp
    jr nc, @+$13

    ld bc, $f9f4
    jr nc, jr_03c_4bf8

jr_03c_4bf8:
    ld bc, $0b03
    ld [hl+], a
    ld bc, $faf3
    ld bc, $0d21
    ld bc, $fbf2
    ld bc, $0e41
    ld bc, $0f03
    dec bc
    ld bc, $0101
    ld bc, $0622
    ld bc, $0f80
    nop
    nop
    ld de, $0111
    inc bc
    ld b, $01
    and b
    ld c, $01
    ld b, b
    ld bc, $a401
    dec b
    inc sp
    inc sp
    inc sp
    inc sp
    ld bc, $0cc4
    ld bc, $02c1
    ld bc, $08da
    ld bc, $00d3
    ld bc, $02f9
    nop
    ld bc, $0101
    and b
    rst $38
    ld c, l
    ld bc, $0f47
    inc [hl]
    ld de, $9801
    rrca
    dec b
    ld de, $0111
    and a
    ld bc, $c001
    inc bc
    ld bc, $0ebe
    ld bc, $02bd
    ld bc, $09a7
    ld bc, $09e3
    nop
    ld bc, $0101
    rst $38
    ld a, [c]
    ld de, $3303
    inc sp
    ld bc, $fffa
    ld c, l
    ld bc, $0f3a
    ld h, $11
    ld de, $0011
    ld bc, $0c97
    inc sp
    ld bc, $0438
    ld bc, $00a3
    nop
    ld bc, $00a6
    ld bc, $09b9
    inc sp
    ld bc, $05b7
    ld bc, $003f
    ld bc, $00c6
    ld bc, $0738
    ld bc, $01e5
    ld bc, $0438
    nop
    ld bc, $3301
    ld bc, $0500
    ld bc, $fffa
    inc b
    ld de, $0111
    db $fc
    ldh a, [rNR11]
    ld de, $1901
    rrca
    dec b
    ld bc, $f5f8
    ld bc, $0f3a
    rlca
    ld bc, $0121
    ld bc, $0f59
    dec c
    ld bc, $0742
    ld bc, $0c84
    ld bc, $0f44
    ld a, [bc]
    ld de, $2101
    nop
    ld de, $2701
    ld [$c301], sp
    ld a, [bc]
    ld bc, $0f01
    inc c
    nop
    ld bc, $3301
    ld bc, $0500
    ld bc, $fffa
    inc b
    ld de, $0111
    db $fc
    ldh a, [rNR11]
    ld de, $1901
    rrca
    dec b
    ld bc, $f5f8
    ld bc, $0f3a
    rlca
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f56
    db $10
    ld bc, $0742
    ld bc, $0c84
    ld bc, $0f44
    ld a, [bc]
    ld de, $c101
    inc bc
    ld bc, $0fb9
    dec b
    ld bc, $0f01
    inc c
    nop
    ld bc, $3301
    ld bc, $0500
    ld bc, $fffa
    inc b
    ld bc, $f5f8
    ld bc, $0f1a
    rlca
    ld bc, $0108
    ld bc, $0719
    ld sp, $0113
    ld h, $0a
    ld de, $0111
    ld d, [hl]
    rrca
    rlca
    ld bc, $ffe0
    ld c, $01
    ld hl, $100f
    ld bc, $0f24
    ld a, [bc]
    ld bc, $0f01
    inc c
    nop
    ld bc, $3301
    ld bc, $0200
    ld de, $3311
    ld bc, $fffa
    inc b
    ld de, $2101
    inc bc
    ld bc, $0f19
    ld b, h
    ld bc, $0421
    ld bc, $0f78
    dec b
    ld bc, $0420
    ld [hl+], a
    ld bc, $0f99
    dec h
    ld bc, $05e0
    ld bc, $0fda
    inc bc
    nop
    ld bc, $2201
    ld bc, $fff1
    ld bc, $0133
    or $f9
    inc sp
    inc sp
    ld bc, $0f15
    add hl, bc
    inc sp
    ld bc, $0241
    ld bc, $0f38
    ld [$4001], sp
    ld bc, $5801
    rrca
    rlca
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0763
    ld [hl+], a
    inc sp
    ld [hl+], a
    ld [hl-], a
    inc hl
    ld bc, $0985
    ld bc, $0262
    ld bc, $0f98
    ld [$4101], sp
    add hl, bc
    ld bc, $0dc0
    ld bc, $05e0
    ld bc, $0fda
    inc bc
    nop
    ld bc, $0202
    rst $38
    rst $38
    jr nz, @+$03

    ld de, $1011
    ld [bc], a
    rst $38
    ld hl, sp+$11
    ld de, $3402
    add hl, bc
    ld bc, $4302
    rrca
    ld a, [de]
    inc sp
    inc sp
    inc sp
    ld [hl+], a
    inc sp
    ld [bc], a
    add h
    ld bc, $7a02
    rrca
    dec b
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    and b
    ld [bc], a
    ld [bc], a
    sbc d
    rrca
    dec b
    ld [bc], a
    add h
    nop
    ld [bc], a
    add e
    nop
    ld [bc], a
    cp d
    rrca
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    and d
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    jp c, Jump_000_030f

    nop
    ld bc, $0101
    rst $38
    push af
    ld [hl+], a
    ld bc, $f6ff
    inc sp
    ld bc, $0c05
    ld bc, $0014
    ld bc, $0f19
    ld b, $33
    inc sp
    ld bc, $0f34
    add hl, hl
    ld bc, $0042
    ld bc, $0180
    ld bc, $0f79
    add hl, bc
    ld [hl+], a
    ld bc, $00a5
    ld bc, $0f9a
    ld [$8501], sp
    rrca
    ld [$a501], sp
    ld bc, $a501
    rlca
    ld bc, $0ce0
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld bc, $0b27
    ld [hl+], a
    ld [hl+], a
    ld bc, $0835
    ld [bc], a
    ld bc, $0044
    jr nz, jr_03c_4e41

    rst $38

jr_03c_4e41:
    or $33
    ld bc, $0044
    ld bc, $0735
    ld bc, $0263
    ld bc, $0658
    ld bc, $0263
    ld bc, $0435
    jr nz, @+$04

    ld bc, $0a83
    ld bc, $0284
    ld bc, $0f97
    ld b, [hl]
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld l, $22
    ld bc, $0241
    ld bc, $0f38
    ld b, $21
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $0112
    rst $38
    db $f4
    ld [bc], a
    ld de, $2211
    ld [hl+], a
    ld [hl+], a
    ld de, $2011
    ld [bc], a
    ld bc, $033b
    ld bc, $0371
    ld bc, $0446
    ld bc, $0d80
    ld [hl+], a
    ld [hl+], a
    nop
    ld de, $0133
    ld b, h
    ld b, $01
    and b
    rrca
    nop
    ld bc, $0941
    ld bc, $0fc0
    dec e
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld l, $22
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld de, $2222
    ld bc, $0f38
    ld b, $21
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $0112
    rst $38
    db $f4
    ld [bc], a
    ld de, $0111
    ld b, d
    nop
    ld de, $0220
    ld bc, $033b
    ld bc, $0371
    ld bc, $0446
    ld bc, $0d80
    ld [hl+], a
    ld [hl+], a
    nop
    ld de, $0133
    ld b, c
    nop
    ld bc, $0f9a
    ld b, $01
    ret nz

    inc bc
    ld bc, $0fba
    inc hl
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld l, $21
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld de, $2222
    ld bc, $f5ff
    ld de, $0111
    ld b, e
    ld c, $22
    ld hl, $0112
    rst $38
    db $f4
    ld [bc], a
    ld bc, $0161
    ld de, $2011
    ld [bc], a
    ld bc, $f2ff
    ld [hl+], a
    ld [hl+], a
    inc sp
    ld bc, $0173
    ld bc, $0446
    ld bc, $0e80
    ld [hl+], a
    nop
    ld de, $8201
    nop
    ld bc, $0f99
    rlca
    ld bc, $03c0
    ld bc, $0fba
    inc hl
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld l, $21
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld de, $1221
    ld bc, $f5ff
    ld de, $2211
    ld [hl+], a
    ld de, $1111
    ld bc, $0948
    ld [hl+], a
    ld bc, $0656
    ld [bc], a
    ld bc, $0361
    jr nz, @+$04

    ld bc, $f2ff
    ld [hl+], a
    ld [hl+], a
    inc sp
    ld [hl+], a
    ld bc, $0280
    ld bc, $0f7a
    dec b
    ld [hl+], a
    nop
    ld de, $8201
    nop
    ld bc, $0f99
    rlca
    ld bc, $03c0
    ld bc, $0fba
    inc hl
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld bc, $f7ff
    ld de, $0011
    nop
    ld [hl+], a
    ld bc, $0735
    ld bc, $0c41
    ld bc, $0045
    ld bc, $0745
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr nz, @+$04

    ld bc, $0a65
    ld bc, $0080
    ld bc, $0c77
    jr nz, @+$04

    ld bc, $0a79
    ld bc, $0545
    ld bc, $0fa0
    dec a
    nop
    ld bc, $0001
    ld [hl+], a
    ld bc, $0401
    ld bc, $fffa
    dec b
    inc sp
    ld bc, $0222
    ld bc, $0f19
    rlca
    ld bc, $0101
    ld bc, $0f38
    ld [$1221], sp
    ld [hl+], a
    ld hl, $0112
    jr z, jr_03c_4fcf

    ld de, $2211
    ld de, $0111
    ld l, b

jr_03c_4fcf:
    rrca
    jr jr_03c_4fd3

    ld b, e

jr_03c_4fd3:
    rrca
    dec c
    ld bc, $0f23
    dec bc
    ld bc, $f1fd
    ld bc, $fcf2
    ld bc, $f6a0
    nop
    ld bc, $2201
    ld bc, $0500
    ld bc, $fffa
    ld b, h
    ld de, $6101
    inc bc
    ld bc, $0559
    ld bc, $f2fa
    ld bc, $0768
    ld de, $0000
    ld de, $7701
    rrca
    add hl, bc
    ld bc, $0f73
    ld a, [hl+]
    ld bc, $0fdf
    dec c
    nop
    ld bc, $2201
    ld bc, $0400
    ld bc, $fff9
    ld h, $33
    ld bc, $0042
    ld bc, $0f37
    ld c, $11
    ld bc, $0f59
    dec bc
    ld de, $7801
    rrca
    rlca
    ld bc, $0000
    ld de, $9701
    rrca
    ld h, $01
    db $fc
    pop af
    ld bc, $fcf1
    ld bc, $f7a0
    nop
    ld bc, $0101
    and b
    rst $38
    ld c, l
    ld bc, $0004
    inc sp
    inc sp
    jr nc, jr_03c_5047

    inc b

jr_03c_5047:
    ld [$3303], sp
    inc sp
    inc sp
    ld bc, $0958
    ld [hl-], a
    ld [hl+], a
    inc hl
    ld bc, $0866
    ld bc, $0c83
    inc bc
    ld bc, $0c94
    inc sp
    ld de, $6501
    add hl, bc
    ld bc, $0fb3
    ld bc, $0401
    ld a, [bc]
    ld de, $0401
    dec bc
    ld bc, $07e5
    nop
    ld bc, $0102
    ld de, $1111
    ld de, $1133
    inc sp
    inc sp
    db $10
    ld [bc], a
    ld a, [$04ff]
    nop
    nop
    nop
    inc sp
    ld [bc], a
    inc h
    nop
    ld [bc], a
    add hl, de
    ld a, [bc]
    nop
    nop
    ld [bc], a
    add hl, hl
    rrca
    ld [$fb02], sp
    pop af
    ld [bc], a
    ld c, c
    ld [$0233], sp
    ld d, [hl]
    rrca
    inc c
    ld [bc], a
    ld d, l
    inc c
    ld [bc], a
    add l
    rrca
    add hl, sp
    ld de, $1111
    nop
    ld [bc], a
    ld bc, $0200
    add hl, bc
    inc bc
    ld [bc], a
    dec e
    ld bc, $e902
    ld b, $00
    nop
    ld bc, $0202
    and b
    rst $38
    ld c, l
    ld [bc], a
    ld b, e
    rrca
    jr nc, @+$03

    ld de, $a402
    ld bc, $9a02
    rrca
    rlca
    inc sp
    ld [bc], a
    sub l
    dec bc
    ld [bc], a
    call nz, $020c
    and h
    dec bc
    ld [bc], a
    ld a, [c]
    add hl, bc
    nop
    ld bc, $0002
    nop
    nop
    ld bc, $1000
    nop
    nop
    ld [hl+], a
    ld [bc], a
    ld sp, hl
    rst $38
    inc b
    ld bc, $3311
    ld de, $1100
    inc sp
    ld de, $1022
    ld [bc], a
    ld a, [de]
    rrca
    inc b
    ld [bc], a
    ei
    db $f4
    ld [bc], a
    add hl, sp
    rrca
    ld b, h
    ld de, $9102
    rrca
    inc c
    ld [bc], a
    ld a, [$02f5]
    cp c
    rrca
    inc b
    ld de, $e002
    inc b
    ld [bc], a
    cp c
    inc c
    ld [bc], a
    ld hl, sp+$03
    nop
    ld bc, $0101
    and b
    rst $38
    ld c, l
    ld bc, $0f5f
    ld c, l
    ld bc, $0367
    ld de, $1111
    ld bc, $0fba
    dec bc
    ld bc, $0cb8
    ld bc, $0467
    nop
    ld bc, $0101
    and b
    rst $38
    ld c, l
    ld bc, $0f5f
    ld c, l
    ld de, $1111
    ld de, $b401
    rrca
    add hl, bc
    ld bc, $00bd
    ld bc, $0fd4
    add hl, bc
    nop
    ld bc, $0101
    rst $38
    db $fd
    ld de, $1111
    ld bc, $0f04
    dec e
    ld bc, $0912
    ld bc, $0c41
    inc sp
    inc sp
    inc sp
    inc sp
    ld bc, $0f55
    dec l
    ld [hl+], a
    ld bc, $0b36
    ld bc, $08a5
    ld [hl+], a
    ld de, $2211
    ld bc, $0fb5
    add hl, bc
    nop
    ld bc, $0a13
    ld bc, $0ce0
    nop
    ld bc, $0202
    rst $38
    rst $38
    nop
    ld de, $1002
    inc bc
    ld [bc], a
    inc c
    inc b
    ld [bc], a
    inc de
    rrca
    ld bc, $1802
    ld [$1111], sp
    ld de, $2222
    inc sp
    ld [bc], a
    add hl, sp
    rrca
    ld a, [bc]
    ld de, $2222
    ld [bc], a
    ld e, c
    rrca
    ld [$7f02], sp
    inc bc
    ld [bc], a
    dec sp
    dec b
    db $10
    ld bc, $8602
    ld a, [bc]
    ld [bc], a
    ld b, c
    ld bc, $9902
    rrca
    dec h
    ld [bc], a
    rrca
    inc b
    ld [bc], a
    reti


    rrca
    inc b
    nop
    ld bc, $0101
    rst $38
    db $fd
    ld [bc], a
    jr nz, @+$24

    ld [bc], a
    jr nz, @+$03

    ld b, $0f
    jr jr_03c_51d5

    ld bc, $0041
    ld bc, $0f36
    ld a, [bc]
    ld bc, $faff
    ld bc, $0c61
    inc sp
    ld de, $6001

jr_03c_51d5:
    ld a, [bc]
    ld bc, $0f81
    dec a
    ld bc, $013d
    ld bc, $0a06
    ld bc, $08e4
    nop
    ld bc, $0101
    rst $38
    rst $38
    nop
    ld de, $0011
    nop
    ld de, $0901
    ld [$1401], sp
    rrca
    nop
    ld bc, $0918
    ld de, $2222
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f39
    rlca
    inc sp
    inc sp
    inc sp
    inc sp
    ld bc, $0f57
    rlca
    ld [hl+], a
    ld bc, $0f72
    dec c
    ld [hl+], a
    ld bc, $0063
    ld bc, $0633
    ld bc, $0ea1
    ld bc, $0041
    ld bc, $0fb7
    rlca
    ld bc, $0010
    ld bc, $0c04
    ld bc, $f7a0
    nop
    ld bc, $0101
    rst $38
    rst $38
    nop
    ld de, $0011
    nop
    ld de, $0901
    ld [$1401], sp
    rrca
    nop
    ld bc, $0918
    ld de, $2222
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f39
    rlca
    inc sp
    inc sp
    inc sp
    inc sp
    ld bc, $0f57
    rlca
    ld [hl+], a
    ld bc, $0f72
    dec c
    ld [hl+], a
    ld bc, $0063
    ld bc, $0633
    ld bc, $0ea1
    ld bc, $0041
    ld de, $0133
    cp c
    rrca
    dec b
    ld bc, $0010
    ld bc, $0c04
    ld bc, $f7a0
    nop
    ld bc, $0101
    rst $38
    db $fd
    ld de, $1122
    ld [hl+], a
    ld bc, $000f
    ld bc, $0f09
    dec b
    ld [hl+], a
    ld de, $1122
    ld bc, $002f
    ld bc, $0609
    ld [hl+], a
    ld [hl+], a
    ld de, $1111
    ld bc, $0638
    ld bc, $0351
    ld bc, $0f49
    rlca
    ld [hl+], a
    ld bc, $0171
    ld bc, $0f69
    ld b, $01
    ld sp, $0100
    ld [hl-], a
    ld bc, $6b01
    dec b
    ld bc, $0192
    ld bc, $0f49
    rla
    ld bc, $0b53
    ld bc, $09db
    ld bc, $0ddf
    nop
    ld bc, $0101
    rst $38
    rst $38
    jr nc, jr_03c_52d5

    ld de, $1111
    ld bc, $0f37
    rlca
    ld bc, HeaderSGBFlag
    ld de, $6001
    ld [bc], a
    ld bc, $0f5d

jr_03c_52d5:
    ld [bc], a
    ld bc, $0381
    ld bc, $0f79
    ld b, l
    ld bc, $055d
    ld bc, $0fda
    inc bc
    nop
    ld bc, $0101
    rst $38
    db $fd
    ld [hl+], a
    ld de, $2211
    ld [hl+], a
    ld de, $1122
    ld bc, $0f09
    dec b
    ld bc, $0113
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0609
    ld bc, $0114
    ld bc, $0538
    ld de, $5101
    inc bc
    ld bc, $0f49
    dec b
    ld bc, $0015
    ld de, $1601
    add hl, bc
    ld bc, $0a73
    ld bc, $0034
    ld bc, $0074
    ld bc, $0509
    ld bc, $0171
    ld bc, $0637
    ld bc, $0c51
    inc sp
    ld bc, $0fb2
    inc c
    ld bc, $022c
    ld bc, $fbff
    ld bc, $06e6
    nop
    ld bc, $0101
    rst $38
    rst $38
    jr nz, @+$13

    ld bc, $0a26
    ld de, $3301
    rrca
    ld c, l
    ld bc, $0f73
    dec hl
    ld bc, $0c31
    ld bc, $0be1
    nop
    ld bc, $0101
    rst $38
    rst $38
    jr nz, jr_03c_536a

    ld bc, $0a26
    ld de, $3301
    rrca
    ld c, l
    ld bc, $0f53
    dec bc
    inc sp
    ld bc, $0fb2
    inc c

jr_03c_536a:
    ld bc, $0c31
    ld bc, $0be1
    nop
    ld bc, $2201
    ld [hl+], a
    jr nz, @+$24

    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $fffa
    ld c, l
    ld bc, $0f5a
    ld c, l
    ld bc, $0f9a
    inc hl
    nop
    ld bc, $0001
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $f7f8
    ld de, $0201
    ld bc, $1111
    ld bc, $0f09
    ld d, $22
    ld bc, $0042
    ld bc, $0617
    ld bc, $0142
    ld bc, $0703
    ld bc, $0f51
    ld [de], a
    ld de, $0111
    ld a, b
    rrca
    dec bc
    ld bc, $0f56
    dec e
    ld bc, $0a03
    ld bc, $0fe3
    add hl, bc
    nop
    ld bc, $0001
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $f7f8
    ld de, $0201
    ld bc, $1111
    ld bc, $0f09
    ld d, $22
    ld bc, $0042
    ld bc, $0617
    ld bc, $0142
    ld bc, $0703
    ld bc, $0f51
    ld [de], a
    ld de, $0111
    ld a, b
    rrca
    dec bc
    ld bc, $0f56
    add hl, bc
    inc sp
    ld bc, $0fb3
    dec bc
    ld bc, $0fe0
    inc c
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld l, $11
    ld de, $0111
    inc [hl]
    rrca
    dec hl
    inc sp
    ld [hl+], a
    ld bc, $0f74
    dec bc
    ld bc, $0a43
    ld bc, $0ea0
    ld bc, $0c32
    ld bc, $0fc2
    dec de
    nop
    ld bc, $0101
    rst $38
    rst $38
    jr nc, @+$13

    ld de, $0111
    ld [hl], $0f
    dec hl
    inc sp
    ld [hl+], a
    ld bc, $0f76
    ld [$0111], sp
    and c
    nop
    ld bc, $0f96
    jr z, jr_03c_543a

    ld b, b

jr_03c_543a:
    nop
    ld bc, $0c34
    ld bc, $f7a0
    nop
    ld bc, $0001
    ld [hl+], a
    ld [hl+], a
    ld de, $1111
    ld de, $2222
    ld bc, $fff9
    ld b, l
    ld bc, $0003
    ld bc, $0003
    ld bc, $f4f9
    inc de
    inc sp
    ld bc, $0172
    ld sp, $6901
    rrca
    ld b, l
    ld bc, $0c61
    ld bc, $015e
    ld bc, $faf3
    ld bc, $08e4
    nop
    ld bc, $0001
    inc sp
    ld bc, $0301
    ld bc, $fff9
    ld [$1111], sp
    ld bc, $0f16
    dec hl
    ld [hl+], a
    ld [hl+], a
    ld bc, $0806
    ld [hl+], a
    ld bc, $0172
    ld bc, $0f68
    rla
    ld bc, $0c62
    ld bc, $0fa2
    inc e
    nop
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld bc, $faf3
    ld bc, $08e4
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld bc, $2222
    ld [hl+], a
    ld bc, $0f07
    ld a, [bc]
    ld bc, $fbff
    ld de, $4301
    nop
    ld bc, $0f38
    rlca
    ld de, $3311
    inc sp
    inc sp
    ld bc, $0746
    ld bc, $0b62
    ld de, $0311
    inc sp
    ld bc, $0082
    ld bc, $0779
    jr nc, jr_03c_54d2

    sub d

jr_03c_54d2:
    nop
    ld bc, $085a
    ld bc, $00a2
    ld bc, $0f99
    rlca
    ld bc, $02c1
    ld bc, $0fb9
    dec b
    ld bc, HeaderManufacturerCode
    ld bc, $0c34
    ld bc, $f6a0
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld bc, $1111
    ld bc, $0c06
    inc sp
    ld bc, $f8ff
    inc sp
    ld bc, $0e24
    ld bc, $0925
    ld bc, $0b43
    inc sp
    ld bc, $0162
    ld bc, $0615
    ld bc, $0b62
    ld de, $0111
    ld [hl], e
    rrca
    dec c
    ld bc, $02a1
    ld bc, $0f99
    dec h
    ld bc, $0110
    ld bc, $0c05
    ld bc, $f6a0
    nop
    ld bc, $0002
    nop
    inc bc
    inc sp
    inc sp
    inc sp
    inc sp
    jr nc, jr_03c_5535

    ld hl, sp-$09

jr_03c_5535:
    ld de, $1111
    ld de, $0702
    ld b, $03
    inc sp
    ld [bc], a
    inc de
    nop
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld [de], a
    ld bc, $1502
    ld b, $03
    inc sp
    ld de, $0110
    inc sp
    ld [hl+], a
    ld [bc], a
    ld h, $05
    inc bc
    ld de, $4202
    ld [bc], a
    ld [bc], a
    ld d, $04
    inc bc
    ld de, $2222
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    ld e, b
    rrca
    ld b, $02
    ld h, d
    nop
    ld [bc], a
    ld h, h
    nop
    ld [bc], a
    ld a, c
    rrca
    ld b, $02
    db $fc
    ld a, [c]
    ld [bc], a
    sbc b
    rrca
    rlca
    inc sp
    ld [bc], a
    or e
    rrca
    dec bc
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    inc bc
    rlca
    ld [bc], a
    ldh [$0c], a
    nop
    ld bc, $0101
    rst $38
    db $fd
    ld [bc], a
    jr nz, jr_03c_55b2

    ld bc, $0111
    ld bc, $0f09
    dec b
    ld bc, $fcff
    ld de, $4101
    ld [bc], a
    inc sp
    ld bc, $0f39
    ld b, $01
    ld [hl-], a
    inc c
    ld bc, $0f62
    dec e
    ld de, $0100
    and d
    ld [bc], a
    ld bc, $0f9a

jr_03c_55b2:
    ld b, $01
    ld b, c
    ld [bc], a
    ld bc, $0fb9
    dec b
    ld bc, $059b
    ld bc, $0fda
    inc bc
    nop
    ld bc, $0101
    rst $38
    rst $38
    cpl
    inc sp
    ld bc, $0f33
    inc c
    ld [hl+], a
    ld bc, $055e
    ld bc, $0f5c
    inc bc
    ld de, $0122
    add d
    nop
    ld bc, $0f78
    rlca
    ld bc, $0062
    ld [hl+], a
    ld de, $9801
    rrca
    rlca
    ld bc, $0042
    ld bc, $07a7
    ld bc, $0dc1
    ld bc, $0b63
    ld bc, $0be1
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld de, $3322
    ld [hl+], a
    inc sp
    ld [hl+], a
    ld bc, $0f19
    add hl, bc
    ld bc, $0044
    ld bc, $0f39
    dec h
    ld de, $1111
    ld bc, $0c74
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $7901
    dec b
    ld bc, $fbff
    ld bc, $0fa1
    inc a
    nop
    ld bc, $0101
    rst $38
    rst $38
    db $10
    ld [hl+], a
    ld bc, $0121
    ld bc, $0f19
    ld b, $11
    nop
    ld de, $0011
    ld de, $ff01
    or $33
    ld bc, $0043
    inc sp
    ld bc, $0748
    inc sp
    ld de, $3311
    ld bc, $0f57
    rlca
    ld de, $1133
    ld de, $1111
    inc sp
    ld bc, $0547
    ld de, $6201
    ld [bc], a
    ld bc, $0f88
    rla
    ld bc, $03c1
    ld bc, $0fb9
    dec b
    ld bc, $053b
    ld bc, $0fda
    inc bc
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld l, $11
    ld de, $0111
    ccf
    inc bc
    ld bc, $0f3b
    inc b
    inc sp
    ld bc, $0043
    ld bc, $0062
    ld bc, $0f5b
    inc b
    ld bc, $0f42
    dec c
    ld bc, $03a1
    ld bc, $0f99
    ld b, $01
    ccf
    nop
    ld bc, $01bf
    ld bc, $0fbb
    inc bc
    ld bc, $013e
    ld bc, $0c33
    ld bc, $f6a0
    nop
    ld bc, $0101
    rst $38
    rst $38
    cpl
    ld [de], a
    inc sp
    ld [hl+], a
    inc sp
    ld hl, $ff01
    rst $30
    ld [hl+], a
    inc sp
    ld [hl+], a
    inc sp
    ld [hl+], a
    ld bc, $f6ff
    ld de, $0122
    ld h, d
    nop
    ld de, $ff01
    push af
    inc sp
    ld bc, $0162
    inc sp
    ld bc, $0668
    ld de, $8201
    nop
    ld bc, $0777
    inc sp
    ld de, $1133
    inc sp
    ld bc, $0f87
    rla
    ld bc, $0182
    ld de, $6701
    ld b, $01
    pop bc
    inc c
    ld bc, $005e
    ld bc, $fbff
    ld bc, $08e4
    nop
    ld bc, $0101
    rst $38
    rst $38
    rrca
    ld [hl+], a
    ld bc, $051e
    ld bc, $0f1c
    inc bc
    nop
    inc sp
    ld de, $3311
    ld bc, $f8ff
    ld bc, $0b43
    ld de, $6201
    ld bc, $5801
    rrca
    rla
    inc sp
    ld de, $3333
    ld bc, $0845
    ld bc, $0f92
    dec c
    ld bc, $0f62
    dec c
    nop
    nop
    ld bc, $09d7
    ld bc, $0be1
    nop
    ld bc, $0101
    rst $38
    rst $38
    db $10
    ld [hl+], a
    ld bc, $0121
    ld bc, $0f19
    rlca
    nop
    ld de, $0111
    rst $38
    ld a, [$4401]
    add hl, bc
    ld de, $1100
    ld de, $1111
    nop
    ld bc, $0545
    ld bc, $0d61
    inc sp
    ld bc, $0063
    inc sp
    ld bc, $0f78
    rlca
    ld bc, $03a1
    ld bc, $0f99
    dec h
    ld bc, $015e
    ld bc, $0b46
    ld bc, $f7a0
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld c, $22
    ld bc, $0021
    ld bc, $0f16
    ld a, [bc]
    inc sp
    ld bc, $0f34
    inc c
    ld bc, $0f23
    dec c
    ld bc, $0f23
    dec bc
    ld de, $a101
    nop
    ld bc, $0f96
    dec c
    ld bc, $07a3
    ld bc, $0cc1
    ld bc, $049b
    ld bc, $0fd9
    inc b
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld c, $22
    nop
    ld [hl+], a
    ld bc, $0f14
    ld a, [bc]
    nop
    ld de, $ff01
    ei
    ld bc, $0b42
    inc sp
    ld de, $0133
    ld d, h
    rrca
    ld a, [bc]
    ld bc, $0f41
    dec c
    ld bc, $0f41
    dec c
    ld de, $c101
    inc bc
    ld bc, $0fb9
    dec b
    ld bc, $0f7b
    inc c
    nop
    ld bc, $0101
    rst $38
    rst $38
    cpl
    ld de, $1100
    ld de, $1133
    ld bc, $0838
    inc sp
    inc sp
    inc sp
    inc sp
    ld bc, $0639
    ld de, $4201
    ld bc, $5801
    rrca
    ld b, $00
    ld de, $0000
    ld de, $5601
    rlca
    ld bc, $0c51
    ld bc, $0081
    ld bc, $0b35
    ld bc, $0fa4
    add hl, sp
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld l, $22
    inc sp
    ld [hl+], a
    inc sp
    ld [hl+], a
    ld bc, $0f36
    add hl, bc
    ld bc, $0061
    ld bc, $0f56
    rrca
    ld bc, $0545
    ld bc, $0c81
    ld [de], a
    ld bc, $0161
    ld bc, $0645
    ld bc, $0fa1
    nop
    ld bc, $005f
    ld bc, $f5ff
    ld de, $1111
    ld bc, $09c4
    ld bc, $035c
    ld bc, $0fd8
    dec b
    nop
    ld bc, $0101
    rst $38
    db $fd
    inc sp
    inc sp
    nop
    inc bc
    ld bc, $0b05
    ld bc, $0221
    ld bc, $060a
    ld sp, $0113
    ld h, $09
    inc sp
    ld sp, $3313
    ld bc, $0937
    ld bc, $0151
    ld bc, $0f49
    dec e
    ld bc, $0428
    ld bc, $0f81
    dec b
    ld bc, $0f49
    dec b
    ld bc, $fff2
    inc c
    ld [hl+], a
    jr nz, @+$24

    jr nz, jr_03c_5871

jr_03c_5871:
    nop
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0fd9
    inc b
    nop
    ld bc, $0101
    rst $38
    db $fd
    inc sp
    inc sp
    nop
    nop
    inc sp
    ld bc, $0e06
    ld bc, $0515
    ld bc, $0e21
    ld bc, $0241
    ld bc, $0f39
    inc h
    ld bc, $0441
    ld bc, $0f78
    dec b
    ld bc, $0f40
    ld c, $01
    ld a, [c]
    rst $38
    inc c
    ld [hl+], a
    jr nz, jr_03c_58a7

    db $db

jr_03c_58a7:
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    ld de, $0111
    rst $38
    ldh a, [rNR11]
    ld de, $f901
    rst $38
    dec c
    ld bc, $0308
    ld bc, $0d20
    nop
    ld de, $fe01
    ldh a, [rSB]
    ld b, h
    nop
    ld bc, $033b
    inc sp
    nop
    nop
    inc sp
    inc sp
    ld bc, $0947
    ld [hl+], a
    ld bc, $0051
    ld bc, $0f59
    ld [$0100], sp
    ld h, l
    ld a, [bc]
    inc sp
    ld bc, $0054
    ld bc, $0668
    nop
    ld bc, $0d93
    ld bc, $00b3
    ld bc, $0798
    ld bc, $09ba
    ld bc, $0dc0
    ld bc, $05e0
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    ld de, $0111
    rst $38
    ldh a, [rNR11]
    ld de, $f901
    rst $38
    dec c
    ld bc, $0308
    ld bc, $0d20
    inc sp
    ld de, $fe01
    ldh a, [rSB]
    ld b, h
    nop
    ld bc, $033b
    inc sp
    nop
    nop
    inc sp
    inc sp
    ld bc, $0647
    nop
    inc sp
    nop
    ld [hl+], a
    nop
    inc sp
    ld bc, $005e
    ld bc, $0f5b
    ld b, $00
    ld bc, $0a65
    inc sp
    ld bc, $0054
    ld bc, $0668
    nop
    ld bc, $0d93
    ld bc, $00b3
    ld bc, $0798
    ld bc, $09ba
    ld bc, $0dc0
    ld bc, $05e0
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    ld bc, $0200
    ld [hl+], a
    ld [hl+], a
    ld de, $fa01
    rst $38
    rlca
    nop
    nop
    nop
    ld bc, $0f17
    dec c
    nop
    nop
    ld bc, $0f39
    dec h
    ld bc, $f1fe
    ld bc, $0f76
    dec c
    ld bc, $0540
    ld bc, $0e9f
    ld bc, $05c0
    ld bc, $0fba
    inc hl
    nop
    ld bc, $1101
    ld bc, $0200
    ld [hl+], a
    ld [hl+], a
    ld de, $fa01
    rst $38
    rlca
    inc sp
    nop
    nop
    ld bc, $0f17
    ld a, [bc]
    ld bc, $f2fb
    ld bc, $0f3a
    inc h
    ld bc, $f1fe
    ld bc, $0f76
    dec c
    ld bc, $0540
    ld bc, $0e9f
    ld bc, $05c0
    ld bc, $0fba
    inc hl
    nop
    ld bc, $0001
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    ld de, $0111
    ld a, [$07ff]
    ld bc, $fcf4
    ld bc, $ffb3
    inc a
    ld de, $8101
    ld bc, $7901
    rrca
    inc b
    ld bc, $0083
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f96
    ld [$0011], sp
    ld de, $0111
    ld [$0106], sp
    cp a
    rrca
    nop
    ld bc, $0209
    ld bc, $0408
    ld bc, $0ce0
    nop
    ld bc, $0001
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    ld de, $0111
    ld a, [$07ff]
    ld bc, $fcf4
    ld bc, $ffb3
    inc a
    ld de, $3311
    ld bc, $0509
    ld bc, $0d7f
    ld de, $0000
    ld de, $2222
    ld bc, $0f96
    ld [$0011], sp
    ld de, $0111
    ld [$0106], sp
    cp a
    rrca
    nop
    ld bc, $0209
    ld bc, $0408
    ld bc, $0ce0
    nop
    ld bc, $0001
    nop
    nop
    ld de, $1111
    ld de, $f701
    rst $38
    ld [$0301], sp
    nop
    ld bc, $0805
    ld bc, $0a22
    ld bc, $0003
    ld [hl+], a
    ld [hl+], a
    ld bc, $0603
    ld bc, $0f40
    nop
    ld [hl+], a
    ld bc, $0161
    ld bc, $0f59
    dec b
    nop
    nop
    ld bc, $0063
    ld bc, $017e
    ld bc, $0f7c
    inc b
    ld bc, $099a
    ld bc, $0da0
    ld bc, $0205
    ld bc, $0847
    ld bc, $0cc3
    ld bc, $03e0
    ld bc, $0fda
    inc bc
    nop
    ld bc, $0001
    nop
    nop
    ld de, $1111
    ld de, $f701
    rst $38
    ld [$0301], sp
    nop
    ld bc, $0805
    ld bc, $0a22
    ld bc, $0003
    ld [hl+], a
    ld [hl+], a
    ld bc, $0603
    ld bc, $0f40
    nop
    ld [hl+], a
    ld bc, $0161
    ld bc, $0f59
    dec b
    inc sp
    nop
    ld bc, $0063
    nop
    nop
    ld bc, $0f79
    dec b
    ld bc, $f5fb
    ld bc, $0f9a
    inc b
    ld bc, $0205
    ld bc, $0847
    ld bc, $0cc3
    ld bc, $03e0
    ld bc, $0fda
    inc bc
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld bc, $2002
    ld bc, $faff
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    ld de, $1901
    rrca
    ld [$f001], sp
    rst $38
    ld de, $3801
    inc c
    ld bc, $0628
    ld bc, $0028
    ld bc, $0828
    ld bc, $0c82
    ld bc, $0f4a
    dec h
    ld bc, $0fd9
    inc de
    nop
    ld bc, $0101
    rst $38
    db $f4
    ld de, $f901
    rst $38
    add hl, bc
    inc sp
    ld bc, $0f16
    ld [$0801], sp
    rrca
    ld a, [bc]
    ld bc, $0601
    ld bc, $0908
    ld bc, $0965
    ld bc, $0008
    ld bc, $0808
    ld bc, $0c82
    ld bc, $ffea
    ld de, $7801
    ld a, [bc]
    ld bc, $0f94
    add hl, de
    nop
    ld bc, $1101
    nop
    nop
    ld de, $1111
    ld [hl+], a
    ld de, $1111
    ld bc, $fffa
    ld [$0122], sp
    ld d, $0f
    dec c
    ld de, $0111
    rst $38
    ldh a, [rSB]
    inc a
    rrca
    inc b
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld bc, $035e
    ld bc, $0f5e
    ld bc, $0111
    ld b, d
    ld [bc], a
    ld bc, $0f79
    dec b
    ld bc, $01a0
    ld bc, $0025
    ld bc, $0f9a
    add hl, bc
    ld bc, $00a0
    ld bc, $0fba
    inc bc
    ld bc, $069c
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    nop
    nop
    ld de, $1111
    ld [hl+], a
    ld de, $1111
    ld bc, $fffa
    ld [$0122], sp
    ld d, $0f
    dec c
    ld de, $0111
    rst $38
    ldh a, [rSB]
    inc a
    rrca
    inc b
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    inc sp
    ld bc, $0f58
    rlca
    ld de, $4201
    ld [bc], a
    ld bc, $0f79
    dec b
    ld bc, $01a0
    ld bc, $0025
    ld bc, $0f9a
    add hl, bc
    ld bc, $00a0
    ld bc, $0fba
    inc bc
    ld bc, $069c
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    ld de, $0111
    db $fc
    rst $30
    ld bc, $fffe
    nop
    ld [bc], a
    ld [hl+], a
    ld bc, $0222
    ld bc, $0f19
    dec [hl]
    ld bc, $f0fc
    ld bc, $0021
    ld bc, $0409
    ld bc, $0022
    ld bc, $0f75
    ld a, [bc]
    nop
    nop
    ld bc, $0f94
    ld c, $01
    ld l, h
    dec b
    ld bc, $0fbe
    nop
    ld bc, $05e0
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    ld de, $0111
    db $fc
    rst $30
    ld bc, $fffe
    nop
    ld [bc], a
    ld [hl+], a
    ld bc, $0222
    ld bc, $0f19
    dec [hl]
    ld bc, $f0fc
    ld bc, $0021
    ld bc, $0409
    ld bc, $0022
    ld bc, $0f75
    ld a, [bc]
    nop
    nop
    ld bc, $0f94
    ld c, $00
    nop
    nop
    inc sp
    ld bc, $0fb9
    dec b
    ld bc, $05e0
    ld bc, $0fda
    inc bc
    nop
    ld bc, $0101
    rst $38
    rst $38
    db $10
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f17
    add hl, bc
    nop
    ld bc, $0b35
    ld bc, $0d43
    ld de, $0111
    ld d, [hl]
    rrca
    dec bc
    ld bc, $0f83
    ld c, l
    ld bc, $0f64
    add hl, bc
    nop
    ld bc, $0101
    rst $38
    rst $38
    db $10
    ld [hl+], a
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f17
    add hl, bc
    nop
    ld bc, $0b35
    ld bc, $0d43
    ld de, $0111
    ld d, [hl]
    rrca
    dec bc
    ld bc, $0f83
    ld c, l
    ld bc, $0f64
    add hl, bc
    nop
    ld bc, $1101
    ld bc, $f3fa
    ld de, $0001
    inc b
    ld bc, $0d01
    ld bc, $0108
    ld bc, $0f17
    dec c
    ld bc, $f6fe
    ld bc, $0d41
    ld bc, HeaderLogo
    ld bc, $0f57
    dec hl
    ld bc, $0c55
    ld bc, $0a55
    ld bc, $0208
    ld bc, $0fb9
    dec b
    ld bc, $05e0
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    ld bc, $f3fa
    ld de, $0001
    inc b
    ld bc, $0d01
    ld bc, $0108
    ld bc, $0f17
    dec c
    ld bc, $f6fe
    ld bc, $0d41
    ld bc, HeaderLogo
    ld bc, $0f57
    dec hl
    nop
    nop
    nop
    inc sp
    ld bc, $0f99
    rlca
    ld bc, $0208
    ld bc, $0fb9
    dec b
    ld bc, $05e0
    ld bc, $0fda
    inc bc
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld c, $11
    ld de, $0111
    inc d
    rrca
    ld c, l
    nop
    nop
    nop
    ld [hl+], a
    ld bc, $0f78
    inc c
    ld bc, $0623
    ld bc, $0ca1
    ld bc, $011f
    ld bc, $0921
    ld bc, $0cc3
    ld bc, $0fe2
    ld a, [bc]
    nop
    ld bc, $0101
    rst $38
    rst $38
    ld c, $11
    ld de, $0111
    inc d
    rrca
    ld c, l
    nop
    nop
    nop
    ld [hl+], a
    ld bc, $0f78
    inc c
    ld bc, $0623
    ld bc, $0ca1
    ld bc, $011f
    ld de, $0133
    inc hl
    rlca
    ld bc, $0cc3
    ld bc, $0fe2
    ld a, [bc]
    nop
    ld bc, $3302
    ld [bc], a
    nop
    dec b
    ld [bc], a
    ld a, [$03ff]
    jr nc, jr_03c_5d4d

    ld hl, sp-$0c

jr_03c_5d4d:
    inc bc
    ld [bc], a
    ld a, [de]
    rrca
    inc d
    ld [hl+], a
    ld [bc], a
    ld d, c
    inc bc
    ld [bc], a
    ld c, c
    rrca
    ld c, l
    ld [bc], a
    add hl, hl
    inc bc
    db $10
    ld [bc], a
    ld d, c
    inc b
    ld bc, $ba02
    rrca
    inc b
    ld [bc], a
    ld hl, sp-$0c
    ld [bc], a
    reti


    rrca
    inc b
    nop
    ld bc, $3302
    ld [bc], a
    nop
    dec b
    ld [bc], a
    ld a, [$03ff]
    jr nc, jr_03c_5d7c

    add hl, bc
    inc bc

jr_03c_5d7c:
    nop
    inc bc
    ld [bc], a
    ld a, [de]
    rrca
    inc b
    ld [bc], a
    ld hl, sp-$0c
    ld [bc], a
    add hl, hl
    inc b
    ld [hl+], a
    ld [bc], a
    ld d, c
    inc bc
    ld [bc], a
    ld c, c
    rrca
    ld c, l
    ld [bc], a
    add hl, hl
    inc bc
    db $10
    ld [bc], a
    ld d, c
    inc b
    ld bc, $ba02
    rrca
    inc b
    ld [bc], a
    ld hl, sp-$0c
    ld [bc], a
    reti


    rrca
    inc b
    nop
    ld bc, $0101
    rst $38
    ldh a, [rNR43]
    ld [hl+], a
    ld bc, $fff6
    rlca
    ld [hl+], a
    ld bc, $0520
    ld bc, $0f1a
    inc hl
    ld bc, $051f
    ld bc, $0c18
    ld bc, $0a16
    ld bc, $faf8
    ld bc, $0c04
    ld bc, $ffd8
    add hl, de
    ld de, $d001
    nop
    ld bc, $00d1
    ld bc, $0fca
    rlca
    ld de, $cf01
    nop
    ld bc, $03f8
    nop
    ld bc, $0101
    rst $38
    ldh a, [rNR43]
    ld [hl+], a
    ld bc, $fff6
    rlca
    ld [hl+], a
    ld bc, $0520
    ld bc, $0f1a
    inc hl
    ld bc, $011f
    inc sp
    ld bc, $0657
    ld bc, $0d60
    ld bc, $021e
    ld bc, $faf8
    ld bc, $0c04
    ld bc, $ffd8
    add hl, de
    ld de, $d001
    nop
    ld bc, $00d1
    ld bc, $0fca
    rlca
    ld de, $cf01
    nop
    ld bc, $03f8
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    ld [$fe01], sp
    pop af
    ld bc, $0f1a
    dec b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f35
    add hl, bc
    ld bc, $0142
    ld bc, $f0fd
    ld bc, $0f5a
    dec b
    ld bc, $f1fb
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f79
    dec b
    ld bc, $0109
    ld [hl+], a
    ld [hl+], a
    ld bc, $0608
    ld bc, $0fa2
    ld c, $33
    inc sp
    inc sp
    ld bc, $08a6
    ld de, $3311
    inc sp
    ld [hl+], a
    ld bc, $0907
    ld bc, $08e4
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    ld [$3300], sp
    ld bc, $0f17
    ld [$2222], sp
    ld [hl+], a
    ld bc, $f1fe
    ld bc, $0f3a
    inc b
    ld bc, $0142
    ld bc, $f0fd
    ld bc, $0f5a
    dec b
    ld bc, $f1fb
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f79
    dec b
    ld bc, $0109
    ld [hl+], a
    ld [hl+], a
    ld bc, $0608
    ld bc, $0fa2
    ld c, $33
    inc sp
    inc sp
    ld bc, $08a6
    ld de, $3311
    inc sp
    ld [hl+], a
    ld bc, $0907
    ld bc, $08e4
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    ld [$fe01], sp
    pop af
    ld bc, $0f1a
    dec b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f35
    add hl, bc
    ld bc, $0142
    ld bc, $f0fd
    ld bc, $0f5a
    dec b
    ld bc, $f1fb
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f79
    dec b
    ld bc, $0109
    ld [hl+], a
    ld [hl+], a
    ld bc, $0608
    ld bc, $0fa2
    ld c, $33
    inc sp
    inc sp
    ld bc, $08a6
    ld de, $3311
    inc sp
    ld [hl+], a
    ld bc, $0907
    ld bc, $08e4
    nop
    ld bc, $0001
    nop
    nop
    ld de, $1111
    ld de, $f701
    ld hl, sp+$33
    inc sp
    inc sp
    inc sp
    ld bc, $f8f8
    ld bc, $0013
    ld bc, $0706
    ld bc, $0013
    ld bc, $0615
    ld [hl+], a
    ld bc, $0122
    inc sp
    inc sp
    ld de, $0122
    ld a, [hl-]
    inc bc
    ld bc, $0232
    inc sp
    inc sp
    ld bc, $0f49
    jr @+$03

    ld de, $0101
    ld a, c
    rrca
    inc b
    ld bc, $0011
    ld bc, $0011
    ld bc, $0599
    ld bc, $0da1
    ld [hl+], a
    ld bc, $0083
    ld bc, $06a8
    ld bc, $0ec1
    ld [hl+], a
    ld bc, $02e0
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1102
    ld [bc], a
    nop
    dec b
    ld [bc], a
    ld a, [$10f4]
    ld [bc], a
    db $fc
    ldh a, [rSB]
    ld [bc], a
    ld [$180f], sp
    ld [hl+], a
    nop
    nop
    ld [hl+], a
    ld [bc], a
    rla
    dec b
    stop
    nop
    ld [bc], a
    ld b, e
    nop
    nop
    nop
    ld bc, $4a02
    dec b
    ld [bc], a
    ld a, [$02f2]
    ld e, c
    inc bc
    ld [bc], a
    rst $28
    db $fd
    ld [hl+], a
    ld [bc], a
    ld a, e
    add hl, bc
    ld [bc], a
    ld a, a
    rrca
    ld [hl+], a
    ld [bc], a
    ld [$0200], sp
    cp b
    rrca
    add hl, bc
    ld [bc], a
    add h
    rrca
    add hl, bc
    nop
    ld bc, $1102
    ld [bc], a
    nop
    dec b
    ld [bc], a
    ld a, [$10f4]
    ld [bc], a
    db $fc
    ldh a, [rSB]
    ld [bc], a
    ld [$180f], sp
    ld [hl+], a
    nop
    nop
    ld [hl+], a
    ld [bc], a
    rla
    dec b
    stop
    nop
    ld [bc], a
    ld b, e
    nop
    nop
    nop
    ld bc, $4a02
    inc bc
    inc sp
    ld [bc], a
    ld sp, hl
    di
    ld [bc], a
    ld e, c
    inc bc
    nop
    ld [bc], a
    ld h, c
    inc b
    ld [bc], a
    ld hl, sp-$0c
    ld [hl+], a
    ld [bc], a
    ld a, e
    add hl, bc
    ld [bc], a
    ld a, a
    rrca
    ld [hl+], a
    ld [bc], a
    ld [$0200], sp
    cp b
    rrca
    add hl, bc
    ld [bc], a
    add h
    rrca
    add hl, bc
    nop
    ld bc, $0101
    rst $38
    db $fc
    ld [bc], a
    jr nz, jr_03c_5fe2

    rrca

jr_03c_5fe2:
    inc bc
    ld bc, $0f09
    inc b
    ld bc, $f1ff
    ld [hl+], a
    ld bc, $010e
    ld bc, $0609
    ld bc, $0c35
    ld bc, $0133
    ld bc, $0c28
    ld bc, $fff6
    rlca
    ld bc, $0f57
    add hl, bc
    ld [hl+], a
    ld bc, $0b56
    ld bc, $0ea0
    ld bc, $0a9c
    ld bc, $0cc0
    ld bc, $0f9f
    dec c
    nop
    ld bc, $0101
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld bc, $fff8
    dec b
    ld de, $2001
    nop
    nop
    ld [bc], a
    ld [hl+], a
    jr nz, jr_03c_6029

    add hl, de

jr_03c_6029:
    add hl, bc
    nop
    ld [hl+], a
    ld bc, $0427
    ld bc, $0330
    ld bc, $0526
    ld bc, $0330
    nop
    ld [hl+], a
    ld bc, $0054
    ld bc, $062d
    ld bc, $0252
    ld bc, $0f5d
    ld d, $22
    ld bc, $0567
    ld [bc], a
    inc sp
    jr nz, jr_03c_6051

    ld [hl+], a
    ld [hl+], a

jr_03c_6051:
    ld bc, $0896
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr nz, jr_03c_605b

    ld h, a

jr_03c_605b:
    dec b
    nop
    ld [hl+], a
    ld bc, $0106
    ld bc, $06b7
    nop
    ld [bc], a
    ld bc, $0006
    ld bc, $07c7
    ld bc, $0136
    ld bc, $08d7
    nop
    ld bc, $08e4
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $f3fa
    ld bc, $070e
    ld bc, $0f0c
    ld c, l
    ld bc, $031c
    ld bc, $097a
    ld bc, $0f80
    ld a, $01
    ld bc, $010c
    ld bc, $000b
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc h
    ld bc, $073e
    ld bc, $0f3c
    ld c, l
    ld bc, $0f7c
    ld [hl+], a
    ld bc, $0f01
    inc c
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc h
    inc sp
    ld bc, $043f
    ld bc, $0f3a
    inc b
    ld bc, $075e
    ld bc, $0f5c
    ld c, l
    ld bc, $0f7c
    ld [bc], a
    ld bc, $0f01
    inc c
    nop
    ld bc, $1101
    ld de, $1100
    ld de, $0001
    ld bc, $aa01
    rst $38
    ld c, l
    ld bc, $f6f7
    ld bc, $0171
    ld bc, $f7f6
    ld bc, $0b74
    ld bc, $feee
    inc sp
    ld bc, $0f96
    rlca
    ld bc, $0509
    ld bc, $0309
    ld bc, $0dc0
    ld bc, $0f01
    inc c
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $f8f6
    ld bc, $fcf2
    ld bc, $0f16
    ld a, [bc]
    ld [hl+], a
    ld bc, $0f34
    add hl, bc
    ld bc, $0f00
    jr nc, jr_03c_6151

    ld bc, $0f94
    add hl, bc
    ld bc, $0009
    ld bc, $0108
    ld bc, $0309
    ld bc, $0dc0
    ld bc, $0f01
    nop
    ld bc, $08f3
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc h
    ld [hl+], a
    ld bc, $0109
    ld de, $0100
    add hl, sp
    rrca
    daa
    ld bc, $0000
    ld [hl+], a
    ld bc, $0241

jr_03c_6151:
    ld bc, $0f7e
    nop
    ld bc, $f2fa
    ld bc, $0f97
    dec e
    ld bc, $059e
    ld bc, $0f00
    ld b, $10
    ld bc, $f2a0
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc h
    ld [hl+], a
    ld bc, $0109
    ld de, $0100
    add hl, sp
    rrca
    daa
    ld bc, $0000
    ld [hl+], a
    ld bc, $0241
    ld bc, $0f7e
    nop
    nop
    inc sp
    ld bc, $f0fc
    ld bc, $0f97
    ld [$fb01], sp
    pop af
    ld bc, $0cb7
    ld bc, $05be
    ld bc, $0f00
    ld b, $10
    ld bc, $f2a0
    nop
    ld bc, $2201
    ld bc, $0500
    ld bc, $fffa
    rlca
    ld bc, $f2fd
    ld bc, $0f1a
    ld b, $01
    ei
    di
    ld bc, $0f3a
    inc bc
    ld bc, $f6f7
    ld bc, $0f5a
    inc hl
    ld de, $1111
    ld bc, $029b
    ld bc, $0f39
    rlca
    ld bc, $00a2
    ld de, $1801
    rrca
    add hl, bc
    ld de, $1111
    ld bc, $0f07
    ld b, $00
    ld bc, $2201
    ld bc, $0500
    ld bc, $fffa
    rlca
    nop
    nop
    inc sp
    ld bc, $0f17
    add hl, bc
    ld bc, $f3fb
    ld bc, $f2fa
    ld de, $0111
    ld b, d
    ld a, [bc]
    ld bc, $f6f7
    ld bc, $0f5a
    inc hl
    ld de, $1111
    ld bc, $024b
    ld bc, $0f39
    inc b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $00a2
    ld de, $1801
    ld a, [bc]
    ld bc, $053f
    ld bc, $f1ff
    ld de, $1111
    ld bc, $0f07
    ld b, $00
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $2222
    ld bc, $0f3a
    inc bc
    ld de, $0112
    ld c, c
    ld bc, $2122
    ld bc, $0409
    ld bc, $0b61
    ld bc, $0648
    ld bc, $0f7a
    dec b
    ld bc, $0262
    ld bc, $0f98
    ld [$0122], sp
    cp [hl]
    inc b
    ld bc, $f2fc
    ld bc, $02c2
    ld bc, $0608
    ld bc, $0cd2
    ld de, $c301
    nop
    ld bc, $0507
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $2222
    ld bc, $0f3a
    inc bc
    ld de, $0112
    ld c, c
    ld bc, $2122
    ld bc, $0409
    ld bc, $0b61
    ld bc, $0648
    ld bc, $0f7a
    dec b
    ld [hl+], a
    nop
    nop
    inc sp
    ld bc, $029f
    ld bc, $0f9c
    inc b
    ld [hl+], a
    ld bc, $04be
    ld bc, $f2fc
    ld bc, $02c2
    ld bc, $0608
    ld bc, $0cd2
    ld de, $c301
    nop
    ld bc, $0507
    nop
    ld bc, $3301
    inc sp
    ld de, $0201
    ld bc, $3333
    ld bc, $fffa
    inc b
    ld de, $2211
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld de, $0111
    add hl, de
    ld b, $01
    db $fc
    ldh a, [rSB]
    daa
    dec b
    ld de, $3101
    inc b
    ld bc, $0132
    ld bc, $0f3e
    ld bc, $5a01
    rrca
    ld c, l
    ld bc, $04c0
    ld bc, $0fba
    inc bc
    ld bc, $0301
    ld bc, $0827
    ld bc, $09e3
    nop
    ld bc, $3301
    inc sp
    ld de, $0201
    ld bc, $3333
    ld bc, $fffa
    inc b
    ld de, $2211
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld de, $0111
    add hl, de
    ld b, $01
    db $fc
    ldh a, [rSB]
    daa
    dec b
    ld de, $3101
    inc b
    ld bc, $0132
    ld bc, $0f3e
    ld bc, $5a01
    rrca
    dec c
    ld bc, $0209
    ld bc, $0f78
    rlca
    ld bc, $0f5a
    dec c
    ld bc, $04c0
    ld bc, $0fba
    inc bc
    ld bc, $0301
    ld bc, $0827
    ld bc, $09e3
    nop
    ld bc, $3301
    inc sp
    ld de, $0201
    ld bc, $3333
    ld bc, $fffa
    inc b
    ld bc, $0202
    ld de, $0111
    add hl, de
    rrca
    inc b
    ld de, $1111
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld de, $1111
    ld bc, $0f3a
    inc b
    nop
    ld bc, $0043
    ld [hl+], a
    ld [hl+], a
    nop
    ld bc, $0f59
    dec h
    ld bc, $0142
    ld bc, $0045
    ld bc, $0f9a
    dec b
    ld bc, HeaderRAMSize
    ld bc, $0847
    ld bc, $09c3
    ld bc, $0f20
    dec c
    nop
    ld bc, $3301
    inc sp
    ld de, $0201
    ld bc, $3333
    ld bc, $fffa
    inc b
    ld bc, $0202
    ld de, $0111
    add hl, de
    rrca
    inc b
    ld de, $1111
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld de, $1111
    ld bc, $0f3a
    inc b
    nop
    ld bc, $0043
    ld [hl+], a
    ld [hl+], a
    nop
    ld bc, $0f59
    rlca
    inc sp
    ld bc, $0f74
    ld a, [bc]
    ld bc, $0142
    ld bc, $0045
    ld bc, $0f9a
    dec b
    ld bc, HeaderRAMSize
    ld bc, $0847
    ld bc, $09c3
    ld bc, $0f20
    dec c
    nop
    ld bc, $1101
    ld [hl+], a
    ld de, $2222
    ld [hl+], a
    ld [hl+], a
    ld de, $1122
    ld bc, $f3fa
    nop
    ld de, $0020
    nop
    ld [bc], a
    ld de, $0100
    add hl, bc
    rrca
    rlca
    ld bc, $0103
    ld bc, $0518
    ld [hl+], a
    ld de, $4201
    ld bc, $0801
    rlca
    ld bc, $0142
    ld bc, $0618
    nop
    nop
    jr nz, @+$04

    ld bc, $035d
    ld bc, $0f5d
    ld bc, $8001
    dec b
    ld bc, $0f7a
    inc bc
    ld bc, $f0fc
    ld bc, $0164
    ld bc, $f7f5
    ld bc, $0fa4
    add hl, sp
    nop
    ld bc, $1101
    ld [hl+], a
    ld de, $2222
    ld [hl+], a
    ld [hl+], a
    ld de, $1122
    ld bc, $f3fa
    nop
    ld de, $0020
    nop
    ld [bc], a
    ld de, $0100
    add hl, bc
    rlca
    inc sp
    ld bc, $0a15
    ld [hl+], a
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld bc, $0617
    ld [hl+], a
    ld de, $4201
    ld bc, $0801
    rlca
    ld bc, $0142
    ld bc, $0618
    nop
    nop
    jr nz, @+$04

    ld bc, $035d
    ld bc, $0f5d
    ld bc, $8001
    dec b
    ld bc, $0f7a
    inc bc
    ld bc, $f0fc
    ld bc, $0164
    ld bc, $f7f5
    ld bc, $0fa4
    add hl, sp
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    ld b, $12
    ld [de], a
    ld [hl+], a
    ld hl, $0701
    ld [$2222], sp
    ld [hl+], a
    ld [hl+], a
    ld bc, $0507
    ld [hl+], a
    ld bc, $0431
    ld [hl+], a
    ld bc, $0f3a
    inc bc
    ld de, $3f01
    nop
    ld bc, $0047
    ld bc, $0409
    ld bc, $f2fe
    ld bc, $016e
    ld bc, $f7f9
    ld bc, $fcf4
    ld bc, $f7f5
    ld bc, $0362
    ld bc, $f9f5
    ld bc, $fcf2
    ld bc, $0fb6
    daa
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    ld b, $12
    ld [de], a
    ld [hl+], a
    ld hl, $0701
    ld [$2222], sp
    ld [hl+], a
    ld [hl+], a
    ld bc, $0507
    ld [hl+], a
    ld bc, $0431
    ld [hl+], a
    ld bc, $0f3a
    inc bc
    ld de, $3f01
    nop
    ld bc, $0047
    ld bc, $0409
    ld bc, $f2fe
    ld bc, $016e
    ld bc, $f2fa
    inc sp
    ld bc, $0606
    ld bc, $0f7d
    ld [bc], a
    ld bc, $0362
    ld bc, $f9f5
    ld bc, $fcf2
    ld bc, $0fb6
    daa
    nop
    ld bc, $2203
    ld [hl+], a
    jr nz, @+$03

    ld de, $1011
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    inc bc
    ld a, [$11f5]
    ld de, $1111
    inc bc
    rlca
    rrca
    add hl, de
    ld bc, $0000
    inc bc
    ld b, $08
    ld [hl+], a
    inc bc
    ld b, e
    nop
    ld [hl+], a
    inc bc
    ld c, b
    ld [$0311], sp
    db $fd
    pop af
    inc bc
    ld e, d
    ld a, [bc]
    ld [bc], a
    inc bc
    add hl, bc
    dec b
    inc bc
    ld sp, hl
    db $f4
    inc bc
    ld a, d
    rrca
    inc b
    nop
    nop
    ld bc, $1303
    nop
    db $10
    inc bc
    sbc c
    rrca
    inc b
    ld de, $6403
    nop
    inc bc
    cp l
    rrca
    ld a, [bc]
    inc bc
    and h
    ld bc, $f703
    push af
    inc bc
    ldh [$0c], a
    nop
    ld bc, $2203
    ld [hl+], a
    jr nz, @+$03

    ld de, $1011
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    inc bc
    ld a, [$11f5]
    ld de, $1111
    inc bc
    rlca
    rrca
    add hl, de
    ld bc, $0000
    inc bc
    ld b, $08
    ld [hl+], a
    inc bc
    ld b, e
    nop
    ld [hl+], a
    inc bc
    ld c, b
    ld [$3311], sp
    inc bc
    cp $f0
    inc bc
    ld e, d
    rrca
    dec b
    inc bc
    ld sp, hl
    db $f4
    inc bc
    ld a, d
    rrca
    inc b
    nop
    nop
    ld bc, $1303
    nop
    db $10
    inc bc
    sbc c
    rrca
    inc b
    ld de, $0311
    cp d
    rrca
    dec c
    inc bc
    and h
    ld bc, $f703
    push af
    inc bc
    ldh [$0c], a
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    rlca
    ld bc, $041e
    ld bc, $0f1c
    inc b
    ld bc, $073c
    ld bc, $0f3e
    ld bc, $5a01
    rrca
    ld c, l
    ld bc, $0f42
    dec c
    ld bc, $0f22
    dec bc
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    rlca
    ld bc, $041e
    ld bc, $0f1c
    inc b
    ld bc, $073c
    ld bc, $0f3e
    ld bc, $0000
    inc sp
    ld bc, $035d
    ld bc, $0f5c
    dec b
    ld bc, $0f7c
    dec hl
    ld bc, $0f42
    dec c
    ld bc, $0f22
    dec bc
    nop
    ld bc, $0101
    and b
    rst $38
    ld c, l
    ld bc, $0f5f
    ld c, l
    ld bc, $0fbf
    dec l
    nop
    ld bc, $0101
    and b
    rst $38
    ld c, l
    ld bc, $0f24
    ld de, $0133
    ld [hl], l
    rrca
    inc c
    ld bc, $0fa3
    ld c, c
    nop
    ld bc, $0001
    nop
    nop
    ld de, $1111
    ld de, $f701
    rst $38
    rlca
    ld [hl+], a
    ld bc, $0003
    ld de, $2211
    ld bc, $0f19
    dec b
    ld bc, $0102
    ld bc, $0805
    ld bc, $0b42
    ld [hl+], a
    ld bc, $0001
    ld bc, $015f
    ld bc, $0f5b
    inc bc
    ld bc, $ffe2
    ld c, $22
    ld bc, $0063
    ld bc, $0778
    ld bc, $0ca2
    ld bc, $0f81
    rrca
    ld bc, $0836
    ld bc, $0ce0
    nop
    ld bc, $0001
    nop
    nop
    ld de, $1111
    ld de, $f701
    rst $38
    rlca
    ld [hl+], a
    ld bc, $0003
    ld de, $2211
    ld bc, $0f19
    dec b
    ld bc, $0102
    ld bc, $0805
    ld bc, $0b42
    ld [hl+], a
    nop
    inc sp
    ld bc, $0005
    ld bc, $0628
    ld bc, $0b62
    ld bc, $ffe2
    ld c, $22
    nop
    ld de, $0111
    ld [hl], a
    ld [$a201], sp
    inc c
    ld bc, $0f81
    rrca
    ld bc, $0836
    ld bc, $0ce0
    nop
    ld bc, $1102
    ld [bc], a
    nop
    dec b
    ld [bc], a
    ld a, [$4dff]
    ld [bc], a
    ld a, [de]
    rrca
    dec b
    stop
    nop
    nop
    ld bc, $7702
    rrca
    jr jr_03c_66cc

    dec de
    inc b

jr_03c_66cc:
    ld [bc], a
    xor d
    ld b, $22
    ld [bc], a
    add l
    dec bc
    ld [bc], a
    call nz, $0b0f
    ld de, $2210
    ld [bc], a
    rra
    ld bc, $a002
    ld a, [c]
    nop
    ld bc, $1102
    ld [bc], a
    nop
    dec b
    ld [bc], a
    ld a, [$4dff]
    ld [bc], a
    ld a, [de]
    rrca
    dec b
    stop
    inc sp
    nop
    ld bc, $7702
    rrca
    ld a, [bc]
    nop
    ld [bc], a
    add l
    add hl, bc
    ld [bc], a
    dec de
    inc b
    ld [bc], a
    xor d
    ld b, $22
    ld [bc], a
    add l
    dec bc
    ld [bc], a
    call nz, $0b0f
    ld de, $2210
    ld [bc], a
    rra
    ld bc, $a002
    ld a, [c]
    nop
    ld bc, $1102
    ld de, $0000
    ld [hl+], a
    nop
    nop
    ld bc, $0002
    nop
    ld [bc], a
    db $fc
    rst $38
    inc bc
    db $10
    ld [bc], a
    inc bc
    nop
    ld de, $1802
    rrca
    ld b, $00
    ld [bc], a
    ld [bc], a
    ld bc, $3e02
    ld [bc], a
    ld [bc], a
    dec a
    rrca
    inc h
    ld [bc], a
    ld a, e
    ld [$1011], sp
    ld [bc], a
    add d
    dec bc
    ld [bc], a
    add hl, bc
    inc bc
    ld bc, $1902
    rlca
    ld [bc], a
    and l
    ld bc, $0902
    dec b
    ld [bc], a
    sub b
    ld bc, $2702
    rlca
    ld [bc], a
    sub b
    nop
    ld bc, $c702
    ld [$bd02], sp
    ld [bc], a
    ld [bc], a
    reti


    rrca
    inc b
    nop
    ld bc, $0002
    nop
    nop
    ld de, $1111
    ld de, $f802
    ei
    ld [bc], a
    dec b
    rlca
    ld bc, $0502
    nop
    ld de, $1011
    ld [bc], a
    ei
    or $02
    dec l
    ld b, $02
    ld e, $04
    ld [bc], a
    inc h
    rlca
    ld [bc], a
    daa
    inc b
    ld bc, $0602
    inc bc
    ld [bc], a
    ld d, b
    dec c
    ld [bc], a
    ei
    push af
    ld [bc], a
    ld l, d
    ld b, $22
    ld [hl+], a
    ld [bc], a
    db $76
    rlca
    db $10
    ld de, $8302
    nop
    ld de, $5802
    rrca
    dec b
    ld [bc], a
    ld e, b
    ld c, $02
    jr z, jr_03c_67ab

    ld [bc], a

jr_03c_67ab:
    ret nz

    inc bc
    ld [bc], a
    ld b, h
    inc b
    ld [bc], a
    ld b, b
    inc bc
    ld [bc], a
    dec e
    inc bc
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    jr z, @+$07

    ld [bc], a
    ldh [rSC], a
    ld [bc], a
    add sp, $05
    nop
    ld bc, $0002
    nop
    nop
    ld de, $1111
    ld de, $f802
    ei
    ld [bc], a
    dec b
    rlca
    ld bc, $0502
    nop
    ld de, $1011
    ld [bc], a
    ei
    or $02
    dec l
    ld b, $02
    ld e, $04
    ld [bc], a
    inc h
    rlca
    ld [bc], a
    daa
    inc b
    ld bc, $0602
    inc bc
    ld [bc], a
    ld d, b
    dec c
    ld [bc], a
    ei
    push af
    ld [bc], a
    ld l, d
    ld b, $22
    ld [hl+], a
    ld [bc], a
    db $76
    rlca
    db $10
    ld de, $8302
    nop
    ld de, $5802
    rlca
    inc sp
    ld [bc], a
    ld d, h
    ld [$1101], sp
    ld [bc], a
    and d
    ld [bc], a
    ld [bc], a
    ld d, b
    ld b, $02
    jr z, jr_03c_6813

    ld [bc], a

jr_03c_6813:
    ret nz

    inc bc
    ld [bc], a
    ld b, h
    inc b
    ld [bc], a
    ld b, b
    inc bc
    ld [bc], a
    dec e
    inc bc
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    jr z, @+$07

    ld [bc], a
    ldh [rSC], a
    ld [bc], a
    add sp, $05
    nop
    ld bc, $1102
    ld [bc], a
    nop
    dec b
    ld [bc], a
    ld a, [$10f6]
    ld bc, $0602
    rrca
    add hl, bc
    ld [bc], a
    rst $38
    pop af
    ld [bc], a
    cpl
    nop
    ld [bc], a
    ei
    ld a, [c]
    inc sp
    nop
    inc sp
    inc sp
    ld [hl+], a
    ld [hl+], a
    nop
    inc sp
    ld [bc], a
    add hl, sp
    rrca
    rlca
    ld [bc], a
    ei
    pop af
    ld [bc], a
    ld e, b
    rrca
    rlca
    ld [bc], a
    add c
    inc bc
    ld [bc], a
    ld a, c
    rrca
    ld b, l
    ld [bc], a
    ld bc, $000f
    ld [bc], a
    inc b
    ld [$0100], sp
    ld bc, $0111
    nop
    dec b
    ld bc, $fffa
    inc h
    inc sp
    ld bc, $0341
    ld bc, $0f39
    ld [$0000], sp
    ld bc, $0f56
    dec bc
    ld bc, $0a44
    ld [hl+], a
    ld [hl+], a
    inc sp
    ld bc, $0091
    ld bc, $0f89
    ld b, $01
    ld b, d
    rrca
    rrca
    ld bc, $0944
    ld bc, $0f01
    inc c
    nop
    ld bc, $2201
    ld [hl+], a
    ld de, $0201
    ld bc, $2222
    ld bc, $fffa
    ld h, $01
    db $fc
    ldh a, [rSB]
    scf
    rrca
    ld c, l
    ld bc, $0f77
    add hl, hl
    ld bc, $0f03
    ld a, [bc]
    nop
    ld bc, $1101
    inc sp
    ld de, $0201
    ld bc, $1133
    ld bc, $fffa
    dec d
    ld [hl+], a
    ld bc, $0132
    ld bc, $0608
    ld bc, $0341
    ld bc, $0309
    ld [hl+], a
    ld bc, $0441
    ld [hl+], a
    ld bc, $f2fa
    ld bc, $0441
    inc sp
    inc sp
    ld bc, $0f5a
    inc bc
    ld bc, HeaderLogo
    ld bc, $0101
    ld bc, $0f7a
    ld b, a
    ld bc, $0202
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    inc sp
    ld de, $0201
    inc bc
    ld bc, $fffa
    inc sp
    ld [hl+], a
    ld bc, $0b01
    inc sp
    ld bc, $0f51
    inc c
    ld bc, $0402
    ld bc, $0f78
    ld d, $22
    ld bc, $03b1
    ld bc, $0509
    ld bc, $03c1
    ld bc, $0fb9
    ld b, $01
    ld [bc], a
    ld [bc], a
    ld bc, $0fd8
    dec b
    nop
    ld bc, $1101
    ld bc, $0300
    inc sp
    ld de, $fa01
    rst $38
    inc d
    ld [hl+], a
    ld bc, $0231
    ld bc, $0508
    inc sp
    ld bc, $0341
    ld bc, $0c39
    ld [hl+], a
    ld bc, $0b3a
    inc sp
    ld bc, $0f5a
    dec b
    ld bc, $0400
    ld bc, $0f7a
    ld c, l
    ld bc, $0f9a
    inc bc
    nop
    ld bc, $1101
    inc sp
    ld de, $0001
    nop
    ld de, $1111
    ld bc, $fffa
    dec d
    ld [hl+], a
    ld [hl+], a
    ld bc, $0a04
    inc sp
    inc sp
    ld bc, $0f34
    ld a, [bc]
    ld de, $0201
    dec bc
    ld bc, $0f61
    inc c
    ld [hl+], a
    ld [hl+], a
    ld de, $3001
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $f2fa
    ld bc, $0043
    ld bc, $0041
    inc sp
    inc sp
    ld bc, $0f9a
    inc bc
    ld bc, $0303
    ld de, $0133
    add hl, bc
    rlca
    ld bc, $0fc4
    add hl, de
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    ld [hl], $22
    ld [hl+], a
    ld [hl+], a
    ld bc, $0906
    inc sp
    inc sp
    inc sp
    ld bc, $0f56
    ld c, d
    ld de, $6501
    ld bc, $b901
    rrca
    inc h
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    ld [hl+], a
    ld bc, $0421
    ld bc, $0f1a
    inc b
    inc sp
    ld bc, $0441
    ld bc, $0f3a
    rlca
    ld bc, $0904
    ld bc, $0f61
    ld bc, $3501
    dec bc
    ld bc, $0984
    nop
    inc sp
    inc sp
    ld bc, $0040
    ld bc, $f5f8
    ld bc, $0fa1
    dec b
    ld bc, $0449
    ld bc, $0fc1
    inc e
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld de, $2001
    nop
    ld [hl+], a
    ld bc, $0f1a
    inc bc
    inc sp
    inc sp
    inc sp
    inc sp
    ld bc, $0309
    ld bc, $0f3b
    ld [bc], a
    ld de, $1111
    inc sp
    ld de, $3f01
    ld bc, $5a01
    rrca
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f73
    ld a, [bc]
    ld bc, $f1fc
    ld bc, $0f95
    ld [$6701], sp
    nop
    ld de, $3300
    nop
    ld bc, $0408
    ld bc, $0fc0
    dec e
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    ld [hl+], a
    ld bc, $0420
    ld bc, $0f19
    inc b
    nop
    nop
    nop
    inc sp
    ld bc, HeaderCGBFlag
    ld bc, $0f39
    inc b
    ld bc, $0243
    ld bc, $0f56
    ld b, a
    ld de, $3311
    ld bc, $0142
    nop
    ld bc, $0fb9
    inc h
    nop
    ld bc, $1101
    nop
    inc sp
    inc sp
    ld de, $3333
    inc sp
    nop
    inc sp
    ld bc, $fffa
    add hl, hl
    nop
    nop
    ld bc, $0f38
    inc c
    ld de, $1111
    ld bc, $0f5a
    ld a, [bc]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f7a
    rlca
    ld [hl+], a
    ld bc, $0309
    ld bc, $0f9c
    inc bc
    ld bc, $fcf2
    ld bc, $fef2
    inc sp
    inc sp
    ld de, $6701
    add hl, bc
    ld bc, $08e4
    nop
    ld bc, $3301
    inc sp
    inc sp
    nop
    ld de, $3300
    nop
    ld de, $0111
    ld a, [$07ff]
    ld [hl+], a
    ld bc, $0f15
    inc c
    ld bc, $0120
    ld [hl+], a
    ld bc, $0f3a
    inc bc
    ld de, $6001
    nop
    ld bc, $f1fd
    ld bc, $0f5a
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0309
    ld bc, $0f7b
    ld [bc], a
    ld bc, $f0fe
    ld de, $6901
    inc bc
    ld bc, $0f9c
    inc bc
    nop
    nop
    ld de, $3333
    ld bc, $0262
    ld bc, $0fbd
    nop
    ld de, $c401
    nop
    ld bc, $0fd5
    ld [$0100], sp
    ld bc, $1111
    inc sp
    nop
    inc sp
    inc sp
    inc sp
    inc sp
    nop
    ld de, $fa01
    rst $38
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f32
    dec bc
    ld bc, $f0fc
    ld bc, $0f54
    add hl, bc
    ld bc, $0004
    ld bc, $0f74
    add hl, bc
    ld bc, $f6f7
    ld bc, $0f9a
    inc bc
    ld de, $0001
    nop
    ld bc, $0062
    ld bc, $0fb9
    dec bc
    ld de, $0111
    reti


    rrca
    inc b
    nop
    ld bc, $1101
    nop
    inc sp
    inc sp
    inc sp
    inc sp
    ld de, $1111
    ld de, $fa01
    rst $38
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f1a
    inc b
    ld bc, $0002
    ld bc, $0141
    ld bc, $0f3a
    jr z, jr_03c_6b61

    push af

jr_03c_6b61:
    ld hl, sp+$01
    add c
    rrca
    ld bc, $4501
    rrca
    add hl, hl
    ld bc, $05e0
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    ld de, $3333
    ld bc, $0001
    ld de, $0111
    ld a, [$03ff]
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f12
    dec bc
    inc sp
    inc sp
    ld bc, $0102
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f3a
    rlca
    ld [hl+], a
    ld bc, $0040
    inc sp
    ld bc, $0f5a
    inc bc
    ld bc, $ffe0
    dec c
    ld bc, $0165
    ld bc, $0777
    ld bc, $0fa0
    dec e
    ld de, $e001
    dec b
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    ld de, $3311
    ld bc, $f2fd
    ld bc, $fffa
    ld a, [bc]
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f19
    inc b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0003
    inc sp
    inc sp
    ld bc, $0f39
    inc b
    inc sp
    inc sp
    inc sp
    ld bc, $0f53
    ld a, [bc]
    ld bc, $035e
    ld bc, $0f77
    ld [$5a01], sp
    inc bc
    ld bc, $0f99
    inc h
    ld de, $e001
    dec b
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    ld [hl+], a
    ld bc, $0421
    ld bc, $0f1a
    inc b
    ld bc, $fcf1
    ld bc, $0f41
    rra
    ld de, $3311
    ld bc, $0085
    ld bc, $0f7a
    dec bc
    ld bc, $0c78
    ld bc, $0c78
    ld bc, $0508
    ld bc, $0fc1
    inc e
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    ld [hl+], a
    ld bc, $0520
    ld bc, $0f1a
    inc bc
    nop
    nop
    inc sp
    ld bc, $0142
    ld bc, $f6f6
    ld bc, $0c42
    ld bc, $ffe2
    dec bc
    ld bc, $0242
    ld bc, $0644
    ld bc, $0c80
    ld bc, $ffe0
    dec l
    ld bc, $0f00
    dec c
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    ld [hl+], a
    ld bc, $0420
    ld bc, $0f19
    inc b
    ld bc, $f6f7
    ld bc, $0f3a
    dec b
    ld bc, $0304
    ld bc, $0f59
    inc b
    inc sp
    ld bc, $031f
    ld bc, $0f78
    dec b
    ld bc, $007d
    ld bc, $00a3
    ld bc, $0f98
    dec b
    ld bc, $0066
    ld de, $b501
    rrca
    jr z, jr_03c_6c90

jr_03c_6c90:
    ld bc, $1101
    nop
    nop
    ld de, $3311
    inc sp
    inc sp
    ld de, $0111
    ld a, [$0bff]
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f1a
    inc b
    ld bc, $0026
    inc sp
    inc sp
    inc sp
    ld bc, $f5f8
    ld bc, $0e41
    ld bc, $0161
    ld bc, $0f58
    add hl, bc
    ld de, $8401
    ld bc, $7a01
    rrca
    rlca
    ld [hl+], a
    ld bc, $01a4
    ld bc, $0f9a
    inc b
    nop
    ld bc, $0646
    ld bc, $0fbc
    dec b
    ld bc, $0061
    ld bc, $0608
    ld bc, $0ae2
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    ld [hl+], a
    ld bc, $0520
    ld bc, $0f1a
    inc bc
    ld bc, $f1fb
    inc sp
    ld bc, $0045
    ld bc, $0f3a
    inc hl
    ld bc, $0107
    inc sp
    inc sp
    inc sp
    ld bc, $0708
    ld bc, $0983
    ld bc, $0127
    ld bc, $0f95
    ld [$4001], sp
    inc b
    ld bc, $0fb8
    dec b
    ld de, $3311
    inc sp
    ld bc, $0fd4
    add hl, bc
    nop
    ld bc, $1101
    ld de, $1100
    ld de, $3333
    inc sp
    nop
    ld de, $fa01
    rst $38
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f12
    dec bc
    inc sp
    inc sp
    inc sp
    ld bc, $0103
    inc sp
    ld bc, $0f39
    inc h
    ld de, $0011
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f75
    dec bc
    ld bc, $0045
    ld bc, $0f97
    add hl, bc
    ld de, $be01
    inc b
    ld bc, $0fbc
    ld hl, $0100
    ld bc, $0011
    inc sp
    ld bc, $0102
    ld de, $0111
    ld a, [$0bff]
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f1a
    rlca
    ld bc, $fcf4
    ld bc, $fdf4
    ld de, $6501
    nop
    ld bc, $0f5a
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld bc, $0928
    ld bc, $0d85
    ld bc, $0642
    ld bc, $0fa0
    dec b
    ld bc, $0442
    ld bc, $0dc0
    ld bc, $05e0
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    ld de, $0133
    ld [bc], a
    ld bc, $1111
    ld bc, $fffa
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld bc, $0202
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f1a
    inc bc
    ld bc, $ffe0
    rrca
    ld bc, $0408
    ld bc, $0f5a
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld bc, $0a38
    ld bc, $0c80
    ld bc, $f2fa
    ld bc, $0002
    ld bc, $0f9a
    inc bc
    ld bc, $0102
    ld bc, $0b9b
    ld bc, $08a9
    ld bc, $0060
    ld bc, $02e0
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    ld de, $1100
    ld bc, $f4fe
    ld bc, $fffc
    ld bc, $2222
    ld bc, $0f12
    dec bc
    ld bc, $001d
    ld bc, $0f34
    inc c
    ld bc, $f5fd
    ld bc, $0f5c
    ld hl, $0133
    and b
    ld bc, $2001
    ld [bc], a
    ld bc, $0f9c
    ld bc, $f701
    or $01
    cp d
    rrca
    inc bc
    ld de, $e001
    dec b
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    ld [hl+], a
    ld bc, $0421
    ld bc, $0f1a
    inc b
    ld bc, $fcf1
    ld bc, $0d41
    inc sp
    ld bc, $0362
    ld bc, $0f5a
    dec b
    ld bc, $0f42
    dec l
    ld bc, $0fa2
    dec hl
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    ld [hl+], a
    ld bc, $0520
    ld bc, $0f1a
    inc bc
    ld bc, $f2fa
    inc sp
    inc sp
    inc sp
    inc sp
    ld bc, $0f3a
    inc bc
    ld bc, $0046
    inc sp
    ld bc, $0f55
    ld [$4001], sp
    rrca
    db $10
    ld bc, $f9f3
    ld bc, $0fa0
    inc b
    ld bc, $0c97
    ld bc, $0fc7
    ld d, $00
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    ld [hl+], a
    ld bc, $0420
    ld bc, $0f19
    inc b
    inc sp
    ld bc, $0240
    nop
    nop
    ld bc, $0f39
    dec bc
    inc sp
    ld bc, $0f58
    dec h
    ld bc, $f6f7
    ld bc, $0f9a
    inc bc
    ld bc, $0f40
    inc d
    ld bc, $0f47
    ld b, $00
    ld bc, $1101
    nop
    inc sp
    ld bc, $0302
    ld bc, $fffa
    dec b
    ld bc, $0401
    ld bc, $0f1a
    ld b, $01
    di
    ei
    ld bc, $0f42
    dec a
    ld bc, $0606
    ld bc, $0f9c
    ld [$0701], sp
    dec bc
    ld bc, $0fc6
    rla
    nop
    ld bc, $3301
    inc sp
    inc sp
    ld bc, $f7fc
    ld bc, $fffe
    rra
    ld bc, $f2fd
    ld bc, $0639
    ld bc, $0f40
    ld c, l
    ld bc, $0c60
    ld bc, $0f00
    dec l
    nop
    ld bc, $3301
    ld bc, $0200
    nop
    nop
    ld de, $fa01
    rst $38
    inc hl
    ld bc, $f5f7
    ld bc, $0f39
    ld c, l
    ld bc, $0f59
    inc b
    ld bc, $0302
    ld bc, $0fb7
    ld h, $00
    ld bc, $1101
    nop
    inc sp
    inc sp
    inc sp
    inc sp
    ld bc, $0001
    ld bc, $fffa
    ld c, l
    ld bc, $0f3a
    ld a, [hl+]
    ld bc, $fcf7
    ld bc, $f7f7
    ld bc, $fcf2
    ld bc, $fbf2
    ld bc, $05e0
    ld bc, $0fda
    inc bc
    nop
    ld bc, $3301
    inc sp
    inc sp
    ld bc, $f7fc
    ld bc, $fffe
    ld h, $01
    rst $30
    db $fc
    ld bc, $fbf7
    inc sp
    ld bc, $0b07
    ld bc, $0c66
    ld bc, $0f46
    rlca
    ld bc, $ffc0
    dec l
    ld de, $e001
    dec b
    ld bc, $0fda
    inc bc
    nop
    ld bc, $3301
    ld bc, $0000
    ld bc, $f0fc
    ld de, $fa01
    rst $38
    inc hl
    ld bc, $f5f7
    ld bc, $0f39
    inc b
    ld bc, $0100
    ld bc, $0004
    ld bc, $0f59
    inc b
    ld bc, $0f40
    dec c
    ld bc, $0f80
    dec l
    ld de, $e001
    dec b
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0120
    ld bc, $0f1a
    inc b
    inc sp
    inc sp
    inc sp
    inc sp
    ld bc, $0140
    ld bc, $0f3a
    dec bc
    ld bc, $0508
    ld bc, $0d61
    ld bc, $0000
    ld bc, $0f76
    ld a, [bc]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    inc sp
    ld bc, $0638
    ld bc, $0da2
    ld bc, $0041
    ld bc, $0747
    ld bc, $0ec2
    ld bc, $0083
    ld bc, $0778
    ld bc, $09e3
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld de, $2001
    nop
    ld [hl+], a
    ld bc, $0f1a
    inc bc
    inc sp
    inc sp
    inc sp
    inc sp
    ld de, $4001
    nop
    inc sp
    ld bc, $0f3a
    inc bc
    ld de, $1111
    inc sp
    ld de, $0133
    ld b, $09
    ld bc, $0f63
    nop
    ld bc, $0626
    ld bc, $0c80
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0943
    ld bc, $0ca0
    ld bc, $0240
    ld bc, $0606
    ld bc, $0cc0
    ld bc, $0100
    ld bc, $0fd5
    ld [$0100], sp
    ld bc, $0111
    nop
    dec b
    ld bc, $fffa
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld de, $0122
    inc h
    nop
    ld bc, $0f19
    inc b
    inc sp
    inc sp
    inc sp
    ld de, $0133
    ld b, h
    nop
    ld bc, $0f39
    inc b
    ld bc, $0000
    inc sp
    ld bc, $0161
    ld bc, $0f5a
    inc bc
    ld bc, $0024
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f77
    ld b, $01
    ld b, h
    ld bc, $4101
    nop
    ld bc, $0f99
    inc b
    ld bc, $0462
    ld bc, $0fb8
    dec h
    nop
    ld bc, $1101
    inc sp
    ld de, $1133
    ld de, $0201
    nop
    ld bc, $fffa
    daa
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f3a
    dec b
    ld [hl+], a
    inc sp
    ld bc, $0263
    ld bc, $0f5a
    dec b
    inc sp
    inc sp
    ld bc, $0003
    ld bc, $0608
    ld bc, $0b82
    ld bc, HeaderLogo
    ld [hl+], a
    ld [hl+], a
    ld bc, $0548
    ld bc, $0ca1
    ld bc, $0044
    ld bc, $0180
    ld bc, $0fba
    inc b
    ld bc, $0181
    ld bc, $0083
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    ld bc, $0000
    inc sp
    ld bc, $0000
    ld bc, $fffa
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f1a
    inc bc
    ld bc, $0026
    ld [hl+], a
    inc sp
    ld bc, $0045
    ld bc, $0f3a
    inc bc
    ld bc, $0145
    ld bc, $0705
    ld bc, $0c60
    ld bc, $0300
    ld bc, $0b27
    ld bc, $0686
    ld bc, $0026
    ld de, $1133
    ld bc, $0947
    ld bc, $08a4
    ld bc, $0162
    ld bc, $0fb5
    ld [$0201], sp
    ld bc, $0501
    ld a, [bc]
    ld bc, $09e3
    nop
    ld bc, $1101
    ld de, $1133
    ld bc, $0000
    inc sp
    ld de, $fa01
    rst $38
    inc bc
    ld [hl+], a
    ld [hl+], a
    inc sp
    ld [hl+], a
    ld bc, $0f14
    add hl, bc
    inc sp
    inc sp
    inc sp
    inc sp
    ld bc, $0f34
    add hl, bc
    ld bc, $0103
    ld bc, $0f55
    ld [$2222], sp
    ld [hl+], a
    ld bc, HeaderCGBFlag
    ld de, $7901
    rrca
    inc b
    ld bc, $0040
    ld [hl+], a
    ld de, $2233
    ld [hl+], a
    ld bc, $0f99
    ld [$1133], sp
    ld bc, $0041
    ld bc, $0fba
    inc bc
    ld de, $6001
    ld [bc], a
    ld bc, $0857
    ld bc, $09e3
    nop
    ld bc, $1101
    inc sp
    inc sp
    inc sp
    inc sp
    ld de, $3333
    ld de, $0111
    ld a, [$0bff]
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f1a
    ld [$0122], sp
    ld bc, $0100
    ld a, [hl-]
    rrca
    ld [$0201], sp
    nop
    ld bc, $0809
    ld bc, $0865
    ld bc, $0480
    ld bc, $0429
    ld bc, $0c81
    ld [hl+], a
    ld bc, $03a1
    inc sp
    jr nc, jr_03c_71a0

    sbc e

jr_03c_71a0:
    rrca
    inc bc
    ld bc, $0361
    ld bc, $0c58
    ld bc, $0548
    ld bc, $0580
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    ld de, $3311
    ld de, $1133
    ld de, $1111
    ld bc, $fffa
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    ld [hl+], a
    inc sp
    ld de, $2222
    ld [hl+], a
    ld bc, $0f1a
    inc bc
    inc sp
    ld bc, $0140
    ld de, $3333
    inc sp
    ld bc, $0f3a
    inc bc
    ld bc, $0006
    ld bc, $0100
    ld bc, $0609
    ld bc, $0963
    ld [hl+], a
    ld bc, $0280
    ld bc, $0f77
    ld b, $01
    ld b, b
    ld [bc], a
    inc sp
    inc sp
    ld bc, $0a38
    ld bc, $0ea6
    ld bc, $0a48
    ld bc, $06c6
    ld bc, $0360
    ld bc, $0807
    ld bc, $09e3
    nop
    ld bc, $1101
    ld de, $1111
    inc sp
    ld bc, $0101
    ld bc, $fffa
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld de, $0133
    ld hl, $0100
    add hl, de
    rrca
    inc b
    inc sp
    inc sp
    inc sp
    ld de, $4001
    ld bc, $3901
    rrca
    inc b
    ld bc, $0202
    ld bc, $0806
    ld bc, $0e62
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f78
    dec b
    ld [hl+], a
    ld [hl+], a
    inc sp
    ld [hl+], a
    inc sp
    ld bc, $00a4
    ld bc, $0f99
    inc b
    ld bc, $01a4
    ld bc, $0fb5
    ld [$6301], sp
    ld bc, $6301
    ld bc, $da01
    rrca
    inc bc
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0120
    ld bc, $0f1a
    inc b
    inc sp
    inc sp
    inc sp
    inc sp
    ld bc, $0140
    ld bc, $0f3a
    dec b
    ld de, $3311
    ld [hl+], a
    inc sp
    ld de, $0133
    add hl, bc
    inc b
    ld bc, $0f61
    ld bc, $4301
    nop
    ld bc, $0f79
    ld [$1111], sp
    ld bc, $0f96
    add hl, bc
    ld bc, $0021
    ld bc, $0fb6
    add hl, bc
    ld bc, $01e1
    ld bc, $0fd7
    ld b, $00
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    ld [hl+], a
    ld bc, $0520
    ld bc, $0f1a
    inc bc
    inc sp
    ld bc, $0540
    ld bc, $0f3a
    inc bc
    ld de, $4001
    nop
    ld de, $0133
    rlca
    ld b, $01
    ld h, c
    inc c
    ld de, $1111
    inc sp
    ld de, $0133
    daa
    dec b
    ld bc, $0d80
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    ld bc, $0160
    ld bc, $0f9a
    inc b
    ld bc, $0161
    ld bc, $0065
    ld bc, $0fba
    dec b
    ld bc, $0100
    ld bc, $0fd7
    ld b, $00
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    ld [hl+], a
    ld bc, $0320
    ld bc, $0f18
    dec b
    inc sp
    ld bc, $0340
    ld [hl+], a
    ld bc, $0f39
    inc b
    ld de, $3311
    ld bc, $0000
    inc sp
    inc sp
    ld bc, $0f59
    inc b
    ld [hl+], a
    ld [hl+], a
    inc sp
    ld bc, $0125
    ld bc, $0f78
    dec b
    ld bc, $0442
    ld bc, $0f98
    dec b
    ld bc, $0064
    ld bc, $0066
    ld bc, $0fb8
    ld a, [bc]
    ld bc, $00c2
    ld bc, $0fd9
    inc b
    nop
    ld bc, $1101
    inc sp
    ld bc, $0101
    ld de, $1133
    ld bc, $fffa
    rlca
    ld de, $1111
    ld bc, $0f17
    dec bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f38
    rlca
    ld bc, $0060
    ld bc, $0004
    ld bc, $0f5a
    add hl, bc
    ld bc, $0024
    ld bc, $0f7a
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f9a
    add hl, bc
    ld bc, $0001
    ld bc, $0fba
    add hl, bc
    ld bc, $0084
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    inc sp
    ld de, $0201
    nop
    inc sp
    ld de, $0111
    ld a, [$05ff]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld de, $3322
    ld [hl+], a
    ld bc, $0f19
    ld b, $33
    inc sp
    inc sp
    ld bc, $0040
    ld bc, $0f39
    dec b
    ld bc, HeaderLogo
    ld bc, $0f56
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    inc sp
    ld bc, $0063
    ld [hl+], a
    ld bc, $0f7a
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld bc, $0142
    ld de, $3333
    ld bc, $0f9a
    inc bc
    ld bc, $0042
    ld bc, $0162
    ld bc, $0309
    ld bc, $0cc0
    ld bc, $0102
    ld bc, $0fd5
    ld [$0100], sp
    ld bc, $1111
    ld de, $0133
    ld bc, $3300
    ld de, $fa01
    rst $38
    jr z, jr_03c_740f

    ld bc, $0f36
    inc c
    inc sp
    ld bc, $0f56
    rlca
    ld [hl+], a
    ld [hl+], a
    ld bc, $0145
    ld bc, $0f77
    ld b, $33
    inc sp
    inc sp
    inc sp
    ld [hl+], a
    ld bc, HeaderCGBFlag
    ld bc, $0f9a
    inc bc
    ld de, $a001
    nop

jr_03c_740f:
    ld bc, $0163
    ld bc, $0fba
    dec b
    ld bc, $0260
    ld de, $d901
    rrca
    inc b
    nop
    ld bc, $1101
    inc sp
    ld bc, $0300
    ld de, $fa01
    rst $38
    dec b
    ld [hl+], a
    ld bc, $0101
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f1a
    dec b
    inc sp
    ld bc, $0101
    inc sp
    inc sp
    ld bc, $0f3a
    inc b
    ld bc, $0060
    ld bc, $0805
    ld bc, $0c61
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0022
    ld bc, $0528
    ld bc, $0c81
    inc sp
    ld bc, $00a1
    ld [hl+], a
    ld bc, $0947
    ld bc, $0ea4
    inc sp
    ld bc, $0707
    ld bc, $0bc2
    ld bc, $05e0
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    ld bc, $0100
    inc sp
    ld de, $1133
    ld bc, $fffa
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld de, $2222
    ld [hl+], a
    ld bc, $0f16
    rlca
    inc sp
    inc sp
    ld de, $3333
    ld bc, $0040
    ld bc, $0f39
    inc b
    ld bc, $0142
    ld bc, $0f55
    ld [$3322], sp
    ld bc, $0400
    ld bc, $0f7a
    inc bc
    inc sp
    inc sp
    ld bc, $0022
    ld [hl+], a
    ld [hl+], a
    inc sp
    ld [hl+], a
    ld bc, $0f9a
    inc bc
    ld bc, $0003
    ld bc, $0261
    ld bc, $0fba
    ld b, $01
    ldh [$03], a
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    inc sp
    ld de, $1111
    inc sp
    ld bc, $0000
    ld bc, $fffa
    dec b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    ld de, $2233
    ld bc, $0f19
    ld b, $01
    ld b, c
    nop
    ld de, $3333
    ld bc, $0f39
    dec b
    ld bc, $0360
    ld bc, $0f58
    ld b, $22
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f75
    ld [$0122], sp
    ld b, c
    nop
    ld bc, $0122
    ld bc, $0f9a
    inc bc
    inc sp
    inc sp
    ld de, $4001
    inc bc
    ld bc, $0fba
    inc bc
    ld bc, $0460
    ld bc, $0508
    ld bc, $0be1
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0120
    ld bc, $0f1a
    inc b
    inc sp
    inc sp
    inc sp
    inc sp
    ld [hl+], a
    ld bc, $0041
    ld bc, $0f3a
    dec b
    ld de, $4001
    nop
    ld bc, $0607
    ld bc, $0d61
    ld [hl+], a
    ld bc, $0100
    ld bc, $0638
    ld bc, $0c82
    inc sp
    ld bc, $0021
    ld [hl+], a
    ld bc, $0748
    ld bc, $0aa3
    ld bc, $0140
    ld bc, $0064
    ld bc, $0fba
    ld b, $01
    ldh [$03], a
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld de, $2211
    ld bc, $0024
    ld bc, $0f19
    inc b
    inc sp
    inc sp
    ld de, $3311
    ld bc, $0044
    ld bc, $0f39
    inc b
    ld de, $2233
    ld [hl+], a
    ld bc, $0046
    inc sp
    ld [hl+], a
    ld bc, $0f5a
    inc bc
    ld bc, $0063
    ld bc, $0164
    inc sp
    ld bc, $0f7a
    inc bc
    ld bc, $0040
    ld de, $3311
    ld de, $4801
    ld [$a401], sp
    ld [$6001], sp
    nop
    ld [hl+], a
    ld [hl+], a
    ld bc, $0fb6
    add hl, bc
    ld bc, $0382
    ld bc, $0fd9
    inc b
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    dec b
    ld [hl+], a
    ld bc, $0222
    ld bc, $0f19
    ld b, $33
    ld bc, $0242
    ld bc, $0f39
    inc b
    ld [hl+], a
    ld [hl+], a
    inc sp
    ld de, $6201
    ld [bc], a
    ld bc, $0f5a
    inc bc
    ld bc, $0046
    ld bc, $0f74
    add hl, bc
    ld bc, $0000
    ld bc, $0f94
    ld c, c
    nop
    ld bc, $1101
    ld de, $0133
    nop
    inc bc
    ld bc, $fffa
    inc b
    ld [hl+], a
    inc sp
    ld [hl+], a
    ld de, $2233
    ld [hl+], a
    ld bc, $0f18
    ld b, $33
    inc sp
    inc sp
    ld bc, $0040
    ld bc, $0f38
    rlca
    ld bc, $0160
    ld de, $0111
    ld e, c
    rrca
    ld a, [bc]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f7a
    add hl, bc
    ld bc, $0045
    ld bc, $0f9a
    ld [$0001], sp
    ld bc, $ba01
    rrca
    inc hl
    nop
    ld bc, $1101
    inc sp
    ld bc, $0101
    ld de, $1133
    ld bc, $fffa
    ld b, $11
    ld de, $0111
    ld d, $0f
    ld a, [bc]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f36
    ld [$0001], sp
    ld [bc], a
    ld bc, $0f57
    ld b, $01
    ld b, h
    ld [bc], a
    ld bc, $0024
    ld bc, $0f7a
    inc bc
    ld bc, $0204
    ld de, $0122
    sbc b
    rrca
    dec b
    ld de, $2301
    nop
    ld [hl+], a
    ld [hl+], a
    inc sp
    ld bc, $0fb8
    ld a, [bc]
    ld bc, $0004
    ld bc, $0fd9
    inc b
    nop
    ld bc, $1101
    ld de, $1111
    inc sp
    ld bc, $0103
    ld bc, $fffa
    inc b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f14
    ld a, [bc]
    inc sp
    inc sp
    inc sp
    ld bc, $0f34
    dec bc
    ld bc, $0400
    ld bc, $0f5a
    dec b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f75
    ld a, [bc]
    inc sp
    inc sp
    inc sp
    ld bc, $0123
    ld bc, $0f9a
    inc b
    ld bc, $0003
    ld bc, HeaderCGBFlag
    ld bc, $0fba
    ld [$0101], sp
    ld bc, $da01
    rrca
    inc bc
    nop
    ld bc, $1101
    inc sp
    ld de, $1133
    ld de, $0201
    nop
    ld bc, $fffa
    dec bc
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f1a
    ld b, $01
    ld b, d
    nop
    inc sp
    inc sp
    inc sp
    ld bc, $0f3a
    dec b
    ld [hl+], a
    ld bc, $0062
    inc sp
    inc sp
    ld bc, $0509
    ld bc, $0c62
    ld bc, $0381
    ld bc, $0f79
    dec b
    ld bc, $03a0
    inc sp
    ld bc, $0429
    ld bc, $0fa1
    dec b
    ld bc, $0449
    ld bc, $0fc1
    inc b
    ld bc, $0508
    ld bc, $0be1
    nop
    ld bc, $1101
    ld de, $1111
    inc sp
    inc sp
    inc sp
    inc sp
    ld de, $0111
    ld a, [$03ff]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    ld de, $3333
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f1a
    inc bc
    ld bc, $0004
    ld bc, $0024
    inc sp
    inc sp
    ld bc, $0f3a
    inc bc
    ld bc, $0000
    ld de, $3311
    ld de, $0801
    ld [$6401], sp
    ld a, [bc]
    ld bc, $0120
    ld [hl+], a
    ld bc, $0428
    ld bc, $0c80
    ld [hl+], a
    ld [hl+], a
    ld bc, $0140
    ld bc, $0547
    ld bc, $0ca0
    ld bc, $0105
    ld bc, $0160
    ld bc, $0fba
    inc bc
    ld bc, $03c3
    ld bc, $0fd7
    ld b, $00
    ld bc, $1101
    ld de, $1133
    inc sp
    ld de, $0001
    nop
    ld bc, $fffa
    inc bc
    ld [hl+], a
    ld [hl+], a
    inc sp
    ld de, $2233
    ld bc, $0020
    ld bc, $0f1a
    inc bc
    inc sp
    inc sp
    inc sp
    ld de, $0133
    ld b, h
    nop
    ld bc, $0f39
    inc b
    ld de, $6001
    dec b
    ld bc, $0f5a
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f72
    dec bc
    inc sp
    ld bc, $0024
    ld bc, $00a2
    ld bc, $0f99
    inc b
    ld bc, $0243
    ld bc, $0756
    ld bc, $0cc1
    ld bc, $0f61
    inc c
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc h
    ld [hl+], a
    inc sp
    ld bc, $0142
    ld [hl+], a
    ld bc, $0f39
    dec b
    inc sp
    inc sp
    ld [hl+], a
    ld bc, $0161
    ld bc, $0f59
    rlca
    ld bc, $0242
    ld bc, $0f79
    ld b, $01
    ld b, c
    ld bc, $0122
    sbc b
    rrca
    rlca
    ld bc, $0f82
    inc c
    ld bc, $0f01
    inc c
    nop
    ld bc, $3301
    ld de, $0101
    inc bc
    inc sp
    ld bc, $fffa
    dec h
    inc sp
    ld bc, $0142
    ld bc, $0f38
    ld [$3322], sp
    inc sp
    ld [hl+], a
    ld bc, $0f57
    ld c, c
    ld bc, $0f43
    inc c
    ld bc, $0f02
    dec bc
    nop
    ld bc, $3301
    inc sp
    ld de, $0201
    ld bc, $3333
    ld bc, $fffa
    ld h, $22
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f37
    add hl, bc
    inc sp
    inc sp
    ld bc, $0160
    ld bc, $0f5a
    ld b, [hl]
    ld bc, $0f43
    dec c
    ld bc, $0f03
    ld a, [bc]
    nop
    ld bc, $0101
    and b
    rst $38
    ld c, l
    nop
    ld [bc], a
    ld [hl+], a
    ld bc, $0162
    jr nz, @+$03

    ld bc, $2204
    ld de, $7201
    ld bc, $0122
    ld l, c
    ld b, $22
    ld de, $2211
    ld bc, $0f77
    add hl, bc
    ld bc, $0f73
    ld a, [hl+]
    inc sp
    inc sp
    inc sp
    inc sp
    ld de, $0111
    ldh [rP1], a
    ld bc, $0fda
    inc bc
    nop
    ld bc, $0101
    and b
    rst $38
    ld c, l
    nop
    ld [bc], a
    ld [hl+], a
    ld bc, $0162
    jr nz, @+$03

    ld bc, $2204
    ld de, $7201
    ld bc, $0122
    ld l, c
    ld b, $22
    ld de, $2211
    ld bc, $0f77
    add hl, bc
    ld bc, $0f73
    ld a, [hl+]
    inc sp
    inc sp
    inc sp
    inc sp
    ld de, $0111
    ldh [rP1], a
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    ld c, l
    ld bc, $0f5a
    ld c, l
    ld bc, $0f9a
    inc hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
