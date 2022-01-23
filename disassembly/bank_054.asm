; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $054", ROMX[$4000], BANK[$54]

    ld d, h
    ld c, c
    ld d, d
    ld l, [hl]
    ld d, d
    sbc b
    ld d, d
    rst $00
    ld d, d
    inc de
    ld d, e
    ld e, a
    ld d, e
    xor h
    ld d, e
    cp e
    ld d, l
    dec b
    ld d, h
    rst $08
    ld b, c
    ld [c], a
    ld b, c
    push af
    ld b, c
    ld [$1b42], sp
    ld b, d
    ld l, $42
    ld b, c
    ld b, d
    ld d, h
    ld b, d
    ld h, a
    ld b, d
    ld a, d
    ld b, d
    adc l
    ld b, d
    and b
    ld b, d
    or e
    ld b, d
    add $42
    reti


    ld b, d
    db $ec
    ld b, d
    rst $38
    ld b, d
    ld [de], a
    ld b, e
    dec h
    ld b, e
    jr c, jr_054_407e

    ld c, e
    ld b, e
    ld e, [hl]
    ld b, e
    ld [hl], c
    ld b, e
    add h
    ld b, e
    sub a
    ld b, e
    xor d
    ld b, e
    cp l
    ld b, e
    ret nc

    ld b, e
    db $e3
    ld b, e
    or $43
    add hl, bc
    ld b, h
    inc e
    ld b, h
    cpl
    ld b, h
    ld b, d
    ld b, h
    ld d, l
    ld b, h
    ld l, b
    ld b, h
    ld a, e
    ld b, h
    adc [hl]
    ld b, h
    and c
    ld b, h
    or h
    ld b, h
    rst $00
    ld b, h
    jp c, $ed44

    ld b, h
    nop
    ld b, l
    inc de
    ld b, l
    ld h, $45
    add hl, sp
    ld b, l
    ld c, h
    ld b, l
    ld e, a
    ld b, l
    ld [hl], d
    ld b, l
    add l
    ld b, l
    sbc b
    ld b, l
    xor e
    ld b, l
    cp [hl]

jr_054_407e:
    ld b, l
    pop de
    ld b, l
    db $e4
    ld b, l
    rst $30
    ld b, l
    ld a, [bc]
    ld b, [hl]
    dec e
    ld b, [hl]
    jr nc, jr_054_40d1

    ld b, e
    ld b, [hl]
    ld d, [hl]
    ld b, [hl]
    ld l, c
    ld b, [hl]
    ld a, h
    ld b, [hl]
    adc a
    ld b, [hl]
    and d
    ld b, [hl]
    or l
    ld b, [hl]
    ret z

    ld b, [hl]
    db $db
    ld b, [hl]
    xor $46
    ld bc, $1447
    ld b, a
    daa
    ld b, a
    ld a, [hl-]
    ld b, a
    ld c, l
    ld b, a
    ld h, b
    ld b, a
    ld [hl], e
    ld b, a
    add [hl]
    ld b, a
    sbc c
    ld b, a
    xor h
    ld b, a
    cp a
    ld b, a
    jp nc, $e547

    ld b, a
    ld hl, sp+$47
    dec bc
    ld c, b
    ld e, $48
    ld sp, $4448
    ld c, b
    ld d, a
    ld c, b
    ld l, d
    ld c, b
    ld a, l
    ld c, b
    sub b
    ld c, b
    and e
    ld c, b
    or [hl]
    ld c, b
    ret


    ld c, b

jr_054_40d1:
    call c, $ef48
    ld c, b
    ld [bc], a
    ld c, c
    dec d
    ld c, c
    jr z, jr_054_4124

    dec sp
    ld c, c
    ld c, [hl]
    ld c, c
    ld h, c
    ld c, c
    ld [hl], h
    ld c, c
    add a
    ld c, c
    sbc d
    ld c, c
    xor l
    ld c, c
    ret nz

    ld c, c
    db $d3
    ld c, c
    and $49
    ld sp, hl
    ld c, c
    inc c
    ld c, d
    rra
    ld c, d
    ld [hl-], a
    ld c, d
    ld b, l
    ld c, d
    ld e, b
    ld c, d
    ld l, e
    ld c, d
    ld a, [hl]
    ld c, d
    sub c
    ld c, d
    and h
    ld c, d
    or a
    ld c, d
    jp z, $dd4a

    ld c, d
    ldh a, [rWY]
    inc bc
    ld c, e
    ld d, $4b
    add hl, hl
    ld c, e
    inc a
    ld c, e
    ld c, a
    ld c, e
    ld h, d
    ld c, e
    ld [hl], l
    ld c, e
    adc b
    ld c, e
    sbc e
    ld c, e
    xor [hl]
    ld c, e
    pop bc
    ld c, e
    call nc, $e74b

jr_054_4124:
    ld c, e
    ld a, [$0d4b]
    ld c, h
    jr nz, jr_054_4177

    inc sp
    ld c, h
    ld b, [hl]
    ld c, h
    ld e, c
    ld c, h
    ld l, h
    ld c, h
    ld a, a
    ld c, h
    sub d
    ld c, h
    and l
    ld c, h
    cp b
    ld c, h
    bit 1, h
    sbc $4c
    pop af
    ld c, h
    inc b
    ld c, l
    rla
    ld c, l
    ld a, [hl+]
    ld c, l
    dec a
    ld c, l
    ld d, b
    ld c, l
    ld h, e
    ld c, l
    db $76
    ld c, l
    adc c
    ld c, l
    sbc h
    ld c, l
    xor a
    ld c, l
    jp nz, $d54d

    ld c, l
    add sp, $4d
    ei
    ld c, l
    ld c, $4e
    ld hl, $344e
    ld c, [hl]
    ld b, a
    ld c, [hl]
    ld e, d
    ld c, [hl]
    ld l, l
    ld c, [hl]
    add b
    ld c, [hl]
    sub e
    ld c, [hl]
    and [hl]
    ld c, [hl]
    cp c
    ld c, [hl]
    call z, $df4e
    ld c, [hl]
    ld a, [c]
    ld c, [hl]

jr_054_4177:
    dec b
    ld c, a
    jr jr_054_41ca

    dec hl
    ld c, a
    ld a, $4f
    ld d, c
    ld c, a
    ld h, h
    ld c, a
    ld [hl], a
    ld c, a
    adc d
    ld c, a
    sbc l
    ld c, a
    or b
    ld c, a
    jp $d64f


    ld c, a
    jp hl


    ld c, a
    db $fc
    ld c, a
    rrca
    ld d, b
    ld [hl+], a
    ld d, b
    dec [hl]
    ld d, b
    ld c, b
    ld d, b
    ld e, e
    ld d, b
    ld l, [hl]
    ld d, b
    add c
    ld d, b
    sub h
    ld d, b
    and a
    ld d, b
    cp d
    ld d, b
    call $e050
    ld d, b
    di
    ld d, b
    ld b, $51
    add hl, de
    ld d, c
    inc l
    ld d, c
    ccf
    ld d, c
    ld d, d
    ld d, c
    ld h, l
    ld d, c
    ld a, b
    ld d, c
    adc e
    ld d, c
    sbc [hl]
    ld d, c
    or c
    ld d, c
    call nz, $d751
    ld d, c
    ld [$fd51], a
    ld d, c
    db $10

jr_054_41ca:
    ld d, d
    inc hl
    ld d, d
    ld [hl], $52
    nop
    inc de
    ld de, $0214
    ld bc, $4104
    rlca
    rla
    ld [bc], a
    inc c
    nop
    inc bc
    nop
    rlca
    nop
    dec b
    nop
    nop
    inc de
    ld de, $0414
    ld bc, $4104
    rlca
    rla
    ld [bc], a
    ld b, [hl]
    nop
    inc d
    nop
    ld e, $00
    inc c
    nop
    nop
    inc de
    ld de, $0a14
    ld bc, $4104
    rlca
    rla
    ld [bc], a
    or h
    nop
    inc d
    nop
    ld h, h
    nop
    inc d
    nop
    ld bc, $1213
    ld a, [bc]
    inc b
    ld [bc], a
    inc b
    ld b, c
    rlca
    rla
    ld [bc], a
    stop
    ld [$0a00], sp
    nop
    ld [$0100], sp
    inc de
    ld [de], a
    inc c
    ld b, $02
    inc b
    ld b, c
    rlca
    rla
    ld [bc], a
    ld e, $00
    inc c
    nop
    ld d, $00
    inc c
    nop
    ld bc, $1213
    ld c, $0a
    ld [bc], a
    inc b
    ld b, c
    rlca
    rla
    ld [bc], a
    ld e, b
    nop
    jr jr_054_423d

jr_054_423d:
    inc a
    nop
    inc d
    nop
    ld [bc], a
    inc de
    ld [de], a
    dec bc
    dec b
    inc bc
    inc b
    ld b, c
    rlca
    rla
    ld [bc], a
    inc d
    nop
    ld a, [bc]
    nop
    rrca
    nop
    dec b
    nop
    ld [bc], a
    inc de
    ld [de], a
    dec c
    ld [$0403], sp
    ld b, c
    rlca
    rla
    ld [bc], a
    inc [hl]
    nop
    stop
    inc hl
    nop
    ld a, [bc]
    nop
    ld [bc], a
    inc de
    ld [de], a
    db $10
    rrca
    inc bc
    inc b
    ld b, c
    rlca
    rla
    ld [bc], a
    add d
    nop
    inc d
    nop
    ld e, a
    nop
    inc d
    nop
    inc bc
    inc de
    ld [de], a
    ld a, [bc]
    ld [bc], a
    inc b
    inc b
    ld b, c
    rlca
    rla
    ld [bc], a
    ld [$1000], sp
    nop
    ld b, $00
    inc c
    nop
    inc bc
    inc de
    ld [de], a
    inc c
    inc b
    inc b
    inc b
    ld b, c
    rlca
    rla
    ld [bc], a
    add hl, de
    nop
    ld e, $00
    ld c, $00
    inc d
    nop
    inc bc
    inc de
    ld [de], a
    rrca
    ld [$0404], sp
    ld b, c
    rlca
    rla
    ld [bc], a
    ld d, b
    nop
    ld h, h
    nop
    jr z, jr_054_42b1

jr_054_42b1:
    scf
    nop
    inc b
    inc de
    ld [de], a
    dec bc
    inc bc
    ld b, $04
    ld b, c
    rlca
    rla
    ld [bc], a
    add hl, de
    nop
    ld a, [bc]
    nop
    inc c
    nop
    ld [$0400], sp
    inc de
    ld [de], a
    inc c
    dec b
    ld b, $04
    ld b, c
    rlca
    rla
    ld [bc], a
    ld a, [hl+]
    nop
    stop
    ld e, $00
    ld a, [bc]
    nop
    inc b
    inc de
    ld [de], a
    ld c, $0c
    ld b, $04
    ld b, c
    rlca
    rla
    ld [bc], a
    ld d, b
    nop
    jr jr_054_42e8

jr_054_42e8:
    inc a
    nop
    ld a, [bc]
    nop
    dec b
    inc de
    ld [de], a
    inc c
    dec b
    dec b
    inc b
    ld b, c
    rlca
    rla
    ld [bc], a
    inc hl
    nop
    rrca
    nop
    inc d
    nop
    ld a, [bc]
    nop
    dec b
    inc de
    ld [de], a
    dec c
    ld a, [bc]
    dec b
    inc b
    ld b, c
    rlca
    rla
    ld [bc], a
    ld b, [hl]
    nop
    inc d
    nop
    dec l
    nop
    ld e, $00
    dec b
    inc de
    ld [de], a
    db $10
    rrca
    dec b
    inc b
    ld b, c
    rlca
    rla
    ld [bc], a
    xor a
    nop
    ld [hl-], a
    nop
    ld a, b
    nop
    jr z, jr_054_4325

jr_054_4325:
    ld b, $13
    ld de, $0414
    add hl, bc
    inc bc
    ld b, b
    rlca
    ld [de], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $13
    ld [de], a
    ld a, [bc]
    rlca
    add hl, bc
    inc bc
    ld b, b
    rlca
    ld [de], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    inc de
    ld de, $0100
    rrca
    ld bc, $0740
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1123], sp
    ld a, [bc]
    inc bc
    ld [$4000], sp
    rlca
    ld d, e
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1223], sp
    inc c
    dec b
    ld [$4003], sp
    rlca
    ld d, e
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    inc hl
    ld [de], a
    rrca
    inc bc
    dec bc
    nop
    ld b, b
    rlca
    ld d, e
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    inc hl
    ld [de], a
    rrca
    inc bc
    rlca
    nop
    ld b, b
    rlca
    ld d, a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    ld [hl+], a
    ld [de], a
    rrca
    dec b
    inc c
    inc bc
    ld b, b
    rlca
    ld d, e
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc hl
    ld de, $000a
    ld a, [bc]
    nop
    ld b, b
    rlca
    ld [de], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    inc hl
    ld b, c
    inc c
    ld [bc], a
    nop
    nop
    ld b, b
    inc b
    ld b, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $23
    ld de, $030a
    dec c
    nop
    ld b, b
    rlca
    ld d, a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $23
    ld [de], a
    inc c
    inc b
    dec c
    nop
    ld b, b
    rlca
    ld d, a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    inc hl
    ld hl, $020a
    nop
    nop
    ld b, b
    inc b
    ld d, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    inc hl
    ld [hl+], a
    rrca
    inc bc
    nop
    nop
    ld b, b
    inc b
    ld d, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    inc hl
    ld de, $030a
    ld c, $00
    ld b, b
    rlca
    ld d, a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    inc hl
    ld [de], a
    rrca
    inc b
    ld c, $00
    ld b, b
    rlca
    ld d, a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $2123
    ld a, [bc]
    ld [bc], a
    nop
    nop
    ld b, b
    inc b
    ld d, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $2223
    rrca
    inc bc
    nop
    nop
    ld b, b
    inc b
    ld d, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    inc hl
    ld hl, $0310
    nop
    nop
    ld b, b
    inc b
    ld b, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    inc hl
    ld hl, $0610
    nop
    nop
    ld b, b
    inc b
    ld d, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    inc hl
    ld hl, $030a
    nop
    nop
    ld b, b
    inc b
    ld b, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    inc hl
    ld b, c
    ld a, [bc]
    inc b
    nop
    nop
    ld b, b
    inc b
    ld b, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    inc hl
    ld b, c
    db $10
    inc b
    nop
    nop
    ld b, b
    inc b
    ld b, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $23
    ld de, $050a
    nop
    nop
    ld b, b
    nop
    ld b, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    inc sp
    ld hl, $0200
    nop
    nop
    ld c, b
    inc b
    ld b, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_054_4535

    ld hl, $0214
    nop
    nop
    ld b, b
    inc b
    ld [de], a
    inc bc
    ld e, $00
    ld a, [bc]
    nop
    ld e, $00
    ld a, [bc]
    nop
    jr jr_054_4548

    ld hl, $0514
    nop
    nop
    ld b, b
    inc b
    ld [de], a
    inc bc
    ld c, e
    nop
    rrca
    nop
    ld c, e
    nop
    rrca
    nop
    jr jr_054_455b

    ld hl, $0714
    nop
    nop
    ld b, b
    inc b
    ld [de], a
    inc bc
    rst $20
    inc bc
    nop
    nop

jr_054_4535:
    rst $20
    inc bc
    nop
    nop
    add hl, de
    inc sp
    ld [hl+], a
    ld a, [bc]
    ld [de], a
    nop
    nop
    ld b, b
    inc b
    ld [de], a
    inc bc
    ld e, d
    nop
    ld e, $00

jr_054_4548:
    ld b, [hl]
    nop
    ld e, $00
    add hl, de
    inc sp
    ld [hl+], a
    ld a, [bc]
    inc h
    nop
    nop
    ld b, b
    inc b
    ld [bc], a
    inc bc
    rst $20
    inc bc
    nop
    nop

jr_054_455b:
    rst $20
    inc bc
    nop
    nop
    ld a, [de]
    inc sp
    ld hl, $0a0f
    nop
    nop
    ld b, b
    inc b
    ld [de], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    inc sp
    ld hl, $1414
    nop
    nop
    ld b, b
    inc b
    ld [de], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    inc sp
    ld hl, $0100
    nop
    nop
    ld b, b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc sp
    ld hl, $0214
    nop
    nop
    ld b, b
    inc b
    ld [de], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    inc sp
    ld [hl+], a
    inc d
    ld [bc], a
    nop
    nop
    ld b, b
    inc b
    ld a, [bc]
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $33
    ld [hl+], a
    inc d
    ld [bc], a
    nop
    nop
    ld b, b
    inc b
    ld a, [bc]
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    inc sp
    ld [hl+], a
    inc d
    ld [bc], a
    nop
    nop
    ld b, b
    inc b
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    inc de
    ld de, $0014
    nop
    nop
    add e
    cp $3e
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    inc de
    ld de, $0014
    nop
    nop
    add e
    cp $3e
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    inc hl
    nop
    inc d
    inc d
    nop
    nop
    ld b, b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    inc de
    ld de, $0014
    nop
    nop
    add e
    cp $3e
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    inc de
    ld de, $020a
    nop
    nop
    add e
    adc [hl]
    ccf
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    inc de
    ld de, $0100
    rrca
    inc b
    add e
    adc [hl]
    dec sp
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, $13
    ld de, $010a
    nop
    inc b
    add e
    adc [hl]
    dec sp
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    daa
    inc de
    ld de, $0100
    rrca
    inc b
    add d
    adc [hl]
    dec hl
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_054_4691

    ld de, $030a
    nop
    nop
    add e
    adc [hl]
    ccf
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    inc de

jr_054_4691:
    ld de, $030a
    nop
    nop
    add e
    adc [hl]
    ccf
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    inc hl
    ld b, c
    rrca
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc de
    ld de, $050a
    nop
    nop
    add e
    adc [hl]
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    inc hl
    ld b, c
    inc d
    nop
    nop
    nop
    db $10
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec l
    inc de
    ld de, $030a
    ld bc, $8306
    cp $3f
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $13
    ld de, $030a
    dec b
    ld b, $83
    cp $3f
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    inc de
    ld de, $030a
    inc b
    ld b, $83
    cp $3f
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$15

    ld de, $030a
    ld b, $06
    add e
    cp $3f
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $1113
    ld a, [bc]
    inc bc
    nop
    nop
    add e
    cp $3f
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    inc de
    ld de, $030a
    nop
    nop
    add e
    cp $3f
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc de
    ld de, $030a
    nop
    nop
    add e
    cp $3f
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    inc de
    ld de, $030a
    nop
    nop
    add e
    cp $3f
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec [hl]
    inc de
    ld de, $030a
    nop
    nop
    add e
    cp $3f
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $13
    ld de, $030a
    nop
    nop
    add e
    cp $3f
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    inc de
    ld de, $030a
    nop
    nop
    add e
    cp $3f
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_054_47c1

    ld [de], a
    db $10
    inc d
    inc b
    dec b
    ld bc, $1706
    ld [bc], a
    or h
    nop
    ld e, $00
    ld e, d
    nop
    ld [hl-], a
    nop
    add hl, sp
    inc de

jr_054_47c1:
    ld de, $030c
    nop
    nop
    add e
    cp $3a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, sp
    inc de
    ld de, $060e
    nop
    nop
    add e
    cp $3a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl-]
    inc de
    ld de, $040c
    add hl, de
    inc b
    ld bc, $3a0e
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl-]
    inc de
    ld de, $080e
    add hl, de
    inc b
    ld bc, $3a0e
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec sp
    inc hl
    ld b, c
    inc d
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc de
    ld de, $020c
    nop
    nop
    add e
    cp $3f
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec a
    inc de
    ld de, $0314
    nop
    nop
    add e
    adc [hl]
    ccf
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $13
    ld [de], a
    ld a, [bc]
    dec b
    nop
    inc b
    add e
    cp $3f
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    inc de
    ld de, $0314
    inc b
    inc b
    ld bc, $1f06
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    inc de
    ld [de], a
    dec c
    ld b, $04
    inc b
    ld bc, $1706
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    inc de
    ld [de], a
    inc c
    inc bc
    dec b
    inc b
    ld bc, $1706
    ld [bc], a
    jr z, jr_054_488a

jr_054_488a:
    inc d
    nop
    add hl, de
    nop
    rrca
    nop
    ld b, c
    inc de
    ld [de], a
    ld c, $05
    add hl, de
    inc b
    ld bc, $3f06
    ld [bc], a
    ld e, d
    nop
    jr z, jr_054_489f

jr_054_489f:
    jr z, jr_054_48a1

jr_054_48a1:
    ld e, $00
    ld b, d
    inc de
    ld [de], a
    ld a, [bc]
    ld [bc], a
    ld de, $1505
    ld b, $17
    ld [bc], a
    ld c, $00
    ld [$0a00], sp
    nop
    ld b, $00
    ld b, d
    inc de
    ld [de], a
    inc c
    inc b
    ld de, $1505
    ld b, $17
    ld [bc], a
    jr nz, jr_054_48c3

jr_054_48c3:
    stop
    inc d
    nop
    stop
    ld b, d
    inc de
    ld [de], a
    ld c, $08
    ld de, $1505
    ld b, $17
    ld [bc], a
    ld c, e
    nop
    add hl, de
    nop
    dec l
    nop
    add hl, de
    nop
    ld b, d
    inc de
    ld [de], a
    db $10
    db $10
    ld de, $1505
    ld b, $17
    ld [bc], a
    sub [hl]
    nop
    inc d
    nop
    ld d, l
    nop
    inc hl
    nop
    ld b, e
    inc de
    ld [de], a
    ld a, [bc]
    ld [bc], a
    ld [de], a
    dec b
    dec d
    ld b, $17
    ld [bc], a
    stop
    ld [$0e00], sp
    nop
    inc b
    nop
    ld b, e
    inc de
    ld [de], a
    inc c
    inc b
    ld [de], a
    dec b
    dec d
    ld b, $17
    ld [bc], a
    ld a, [hl+]
    nop
    inc c
    nop
    add hl, de
    nop
    rrca
    nop
    ld b, e
    inc de
    ld [de], a
    ld c, $08
    ld [de], a
    dec b
    dec d
    ld b, $17
    ld [bc], a
    ld d, d
    nop
    ld e, $00
    ld [hl-], a
    nop
    ld e, $00
    ld b, e
    inc de
    ld [de], a
    db $10
    db $10
    ld [de], a
    dec b
    dec d
    ld b, $17
    ld [bc], a
    and b
    nop
    inc d
    nop
    ld e, d
    nop
    jr z, jr_054_493b

jr_054_493b:
    ld b, h
    inc de
    ld [de], a
    db $10
    add hl, de
    dec b
    nop
    ld bc, $1706
    ld [bc], a
    jp nc, $5000

    nop
    xor d
    nop
    ld e, $00
    ld b, l
    inc de
    ld [de], a
    db $10
    ld e, $01
    dec b
    ld bc, $1706
    ld [bc], a
    inc l
    ld bc, $0064
    ldh a, [rP1]
    inc a
    nop
    ld b, [hl]
    ld [de], a
    ld [de], a
    nop
    ld bc, $0510
    ld bc, $0206
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, a
    inc de
    ld de, $020a
    inc de
    inc bc
    add e
    cp $3f
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    inc de
    ld de, $020a
    ld [$8303], sp
    cp $33
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, c
    inc de
    ld de, $030a
    inc d
    inc bc
    add e
    cp $3b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, d
    inc hl
    ld [de], a
    inc c
    inc bc
    ld [$1003], sp
    ld b, $33
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, e
    inc hl
    ld [de], a
    db $10
    inc b
    inc d
    inc bc
    db $10
    ld b, $33
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    inc hl
    ld [de], a
    inc c
    inc bc
    inc de
    inc bc
    db $10
    ld b, $37
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    inc hl
    ld [de], a
    db $10
    inc b
    inc de
    inc bc
    db $10
    ld b, $37
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, l
    inc hl
    ld [de], a
    rrca
    inc b
    inc c
    inc b
    jr nz, jr_054_4a08

    inc sp
    ld [bc], a
    nop
    nop
    nop
    nop

jr_054_4a08:
    nop
    nop
    nop
    nop
    ld c, [hl]
    inc hl
    ld [de], a
    db $10
    inc bc
    dec d
    inc b
    nop
    ld b, $37
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, a
    inc hl
    ld de, $010a
    ld d, $00
    nop
    ld b, $33
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    inc de
    ld [de], a
    ld a, [bc]
    ld b, $09
    inc bc
    jr nz, jr_054_4a41

    ld [de], a
    ld [bc], a
    nop
    nop
    nop
    nop

jr_054_4a41:
    nop
    nop
    nop
    nop
    ld d, c
    inc hl
    ld [de], a
    inc c
    ld [bc], a
    rlca
    ld [bc], a
    nop
    ld b, $37
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    inc hl
    ld [de], a
    inc c
    ld [bc], a
    rlca
    nop
    nop
    ld b, $37
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, e
    inc hl
    ld [de], a
    inc c
    ld [bc], a
    add hl, bc
    nop
    nop
    ld b, $37
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    inc hl
    ld de, $000a
    ld a, [bc]
    nop
    jr nz, jr_054_4a8d

    ld [hl], $02
    nop
    nop
    nop
    nop

jr_054_4a8d:
    nop
    nop
    nop
    nop
    ld d, h
    inc hl
    ld de, $000f
    ld a, [bc]
    nop
    jr nz, jr_054_4aa0

    ld [hl], $02
    nop
    nop
    nop
    nop

jr_054_4aa0:
    nop
    nop
    nop
    nop
    ld d, l
    inc hl
    ld b, c
    inc c
    ld bc, $0000
    jr nz, jr_054_4ab3

    ld h, d
    ld [bc], a
    nop
    nop
    nop
    nop

jr_054_4ab3:
    nop
    nop
    nop
    nop
    ld d, [hl]
    inc hl
    ld [de], a
    inc c
    ld [bc], a
    ld d, $00
    jr nz, jr_054_4ac6

    inc sp
    ld [bc], a
    nop
    nop
    nop
    nop

jr_054_4ac6:
    nop
    nop
    nop
    nop
    ld d, a
    inc hl
    ld de, $020a
    ld d, $00
    nop
    ld b, $33
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, a
    inc hl
    ld de, $040a
    dec c
    nop
    nop
    ld b, $73
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, b
    inc hl
    ld de, $010a
    ld d, $00
    nop
    ld b, $33
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, b
    inc hl
    ld [de], a
    inc c
    inc bc
    ld d, $03
    nop
    ld b, $33
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, c
    inc hl
    ld [de], a
    rrca
    inc bc
    ld d, $03
    nop
    ld b, $33
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    inc de
    ld de, $0014
    nop
    nop
    add e
    cp $3e
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, e
    ld hl, $0a41
    inc b
    nop
    nop
    ld [$4204], sp
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, h
    inc hl
    ld de, $070a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, l
    inc sp
    ld [hl+], a
    inc d
    rlca
    nop
    nop
    nop
    inc b
    ld a, [bc]
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    inc hl
    ld de, $070a
    add hl, bc
    ld [bc], a
    nop
    inc b
    ld d, a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    inc hl
    ld bc, $0800
    nop
    nop
    nop
    nop
    ld b, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    inc hl
    ld hl, $1414
    nop
    nop
    nop
    inc b
    ld d, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    inc hl
    ld hl, $1414
    nop
    nop
    nop
    inc b
    ld d, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    inc hl
    ld hl, $1414
    nop
    nop
    nop
    inc b
    ld d, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    inc hl
    ld hl, $1414
    nop
    nop
    nop
    inc b
    ld d, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    inc sp
    ld hl, $020a
    nop
    nop
    ld [$0204], sp
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    inc sp
    ld hl, $040a
    nop
    nop
    ld [$0204], sp
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    inc hl
    ld b, c
    inc c
    ld b, $00
    nop
    nop
    inc b
    ld b, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    inc hl
    ld hl, $0a10
    nop
    nop
    nop
    inc b
    ld b, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, e
    inc sp
    ld b, c
    db $10
    inc b
    nop
    nop
    ld [$0204], sp
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    inc sp
    ld b, c
    nop
    nop
    nop
    nop
    ld [$0204], sp
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, l
    inc sp
    ld b, c
    db $10
    inc bc
    nop
    nop
    ld [$0204], sp
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    inc sp
    ld hl, $020a
    nop
    nop
    jr jr_054_4c79

    ld b, d
    ld [bc], a
    nop
    nop

jr_054_4c79:
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, a
    inc sp
    ld b, c
    inc c
    inc bc
    nop
    nop
    ld [$4204], sp
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, b
    inc hl
    ld [de], a
    rrca
    ld b, $17
    nop
    jr nz, jr_054_4ca1

    ld d, e
    ld [bc], a
    nop
    nop
    nop
    nop

jr_054_4ca1:
    nop
    nop
    nop
    nop
    ld l, c
    inc hl
    ld de, $060f
    jr jr_054_4cac

jr_054_4cac:
    nop
    ld b, $57
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, d
    inc sp
    ld b, c
    inc d
    ld [$0000], sp
    nop
    inc b
    ld [de], a
    ld [bc], a
    db $f4
    ld bc, $0000
    db $f4
    ld bc, $0000
    ld l, e
    inc sp
    ld [hl+], a
    inc d
    inc c
    nop
    nop
    jr nz, jr_054_4cd8

    ld [de], a
    ld [bc], a
    ld b, [hl]
    nop

jr_054_4cd8:
    ld a, [bc]
    nop
    ld b, [hl]
    nop
    ld a, [bc]
    nop
    ld l, h
    inc sp
    ld hl, $140a
    nop
    nop
    nop
    inc b
    ld b, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, l
    inc sp
    ld hl, $0100
    nop
    nop
    jr nz, jr_054_4cfe

    ld [bc], a
    ld [bc], a
    nop
    nop

jr_054_4cfe:
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    ld b, d
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld b, c
    ld b, c
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld d, e
    ld hl, $0000
    nop
    nop
    add e
    xor [hl]
    ld a, [de]
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld d, e
    ld de, $0000
    nop
    nop
    add e
    cp [hl]
    ld e, $02
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld d, e
    ld b, c
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld d, e
    ld b, c
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld d, c
    ld b, c
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld d, e
    ld b, c
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld d, c
    ld b, c
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld d, c
    ld b, c
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld d, c
    ld b, c
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld h, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld h, e
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    rst $20
    inc bc
    nop
    nop
    rst $20
    inc bc
    nop
    nop
    rst $38
    ld h, d
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld h, e
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld h, e
    ld hl, $0000
    nop
    nop
    nop
    inc b
    ld b, b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld h, e
    ld bc, $0000
    nop
    nop
    nop
    inc b
    ld b, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld h, e
    ld bc, $0000
    nop
    nop
    nop
    inc b
    nop
    ld [bc], a
    rst $20
    inc bc
    nop
    nop
    rst $20
    inc bc
    nop
    nop
    rst $38
    ld h, e
    ld b, c
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld h, e
    ld b, c
    nop
    nop
    nop
    nop
    nop
    inc b
    ld b, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld h, e
    ld [de], a
    nop
    nop
    nop
    nop
    add e
    adc [hl]
    ld a, [bc]
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld h, e
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld h, e
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld h, e
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    rst $20
    inc bc
    nop
    nop
    rst $20
    inc bc
    nop
    nop
    rst $38
    ld h, e
    ld bc, $0000
    nop
    nop
    nop
    inc b
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld sp, $0000
    nop
    nop
    nop
    inc b
    inc hl
    inc bc
    ld e, $00
    ld a, [bc]
    nop
    ld e, $00
    ld a, [bc]
    nop
    rst $38
    add h
    ld sp, $0000
    nop
    nop
    nop
    inc b
    inc hl
    inc bc
    inc a
    nop
    ld a, [bc]
    nop
    inc a
    nop
    ld a, [bc]
    nop
    rst $38
    add h
    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    inc b
    inc hl
    ld [bc], a
    dec l
    nop
    ld a, [bc]
    nop
    dec l
    nop
    ld a, [bc]
    nop
    rst $38
    add h
    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    inc b
    inc hl
    ld [bc], a
    rst $20
    inc bc
    nop
    nop
    rst $20
    inc bc
    nop
    nop
    rst $38
    add h
    ld sp, $0000
    nop
    nop
    nop
    inc b
    inc hl
    inc bc
    inc d
    nop
    ld a, [bc]
    nop
    inc d
    nop
    ld a, [bc]
    nop
    rst $38
    add h
    ld sp, $0000
    nop
    nop
    nop
    inc b
    inc hl
    inc bc
    rst $20
    inc bc
    nop
    nop
    rst $20
    inc bc
    nop
    nop
    rst $38
    add h
    ld sp, $0000
    nop
    nop
    nop
    inc b
    inc hl
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld sp, $0000
    nop
    nop
    nop
    inc b
    inc hl
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld sp, $0000
    nop
    nop
    nop
    inc b
    inc hl
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld sp, $0000
    nop
    nop
    nop
    inc b
    inc hl
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld sp, $0000
    nop
    nop
    nop
    inc b
    inc hl
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld sp, $0000
    nop
    nop
    nop
    inc b
    inc hl
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld sp, $0000
    nop
    nop
    nop
    inc b
    inc hl
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld sp, $0000
    nop
    nop
    nop
    inc b
    inc hl
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld sp, $0000
    nop
    nop
    nop
    inc b
    inc hl
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld sp, $0000
    nop
    nop
    nop
    inc b
    inc hl
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld sp, $0000
    nop
    nop
    nop
    inc b
    inc hl
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld sp, $0000
    nop
    nop
    nop
    inc b
    inc hl
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld sp, $0000
    nop
    nop
    nop
    inc b
    inc hl
    inc bc
    dec b
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    rst $38
    add h
    ld sp, $0000
    nop
    nop
    nop
    inc b
    inc hl
    inc bc
    ld a, [bc]
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    rst $38
    add h
    ld sp, $0000
    nop
    nop
    nop
    inc b
    inc hl
    inc bc
    inc d
    nop
    nop
    nop
    ld h, h
    nop
    nop
    nop
    rst $38
    add h
    ld sp, $0000
    nop
    nop
    nop
    inc b
    inc hl
    inc bc
    dec b
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    rst $38
    add h
    ld sp, $0000
    nop
    nop
    nop
    inc b
    inc hl
    inc bc
    ld h, h
    nop
    nop
    nop
    sub b
    ld bc, $0000
    rst $38
    add h
    ld [de], a
    nop
    nop
    dec b
    nop
    ld bc, $2306
    ld [bc], a
    inc hl
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld [de], a
    nop
    nop
    inc b
    nop
    ld bc, $2306
    ld [bc], a
    ld [$1000], sp
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld [de], a
    nop
    nop
    rlca
    nop
    ld bc, $6306
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld [de], a
    nop
    nop
    ld [bc], a
    nop
    ld bc, $2306
    ld [bc], a
    ld e, $00
    inc c
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld [de], a
    nop
    nop
    ld [de], a
    nop
    ld bc, $2306
    ld [bc], a
    ld d, b
    nop
    ld e, $00
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    inc b
    inc hl
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld hl, $0000
    nop
    nop
    nop
    inc b
    inc hl
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld hl, $0000
    nop
    nop
    nop
    inc b
    inc hl
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld hl, $0000
    nop
    nop
    nop
    inc b
    inc hl
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld hl, $0000
    nop
    nop
    nop
    inc b
    inc hl
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld hl, $0000
    nop
    nop
    nop
    inc b
    inc hl
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld hl, $0000
    nop
    nop
    nop
    inc b
    inc hl
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld hl, $0000
    nop
    nop
    nop
    inc b
    inc hl
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add h
    ld de, $0000
    ld bc, $0100
    ld b, $23
    ld [bc], a
    adc h
    nop
    ld e, $00
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl+], a
    ld b, c
    inc d
    add hl, bc
    nop
    nop
    ld b, b
    inc b
    ld b, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], c
    inc de
    ld de, $030a
    nop
    nop
    add e
    cp $3f
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], d
    inc de
    ld de, $030a
    nop
    nop
    add e
    cp $3f
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], e
    inc de
    ld de, $030a
    nop
    nop
    add e
    cp $3f
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], h
    inc de
    ld de, $1410
    ld a, [de]
    inc b
    add e
    adc [hl]
    ccf
    ld [bc], a
    ld e, [hl]
    ld bc, $003c
    ld c, $01
    ld [hl-], a
    nop
    ld [hl], l
    ld hl, $0a11
    dec b
    inc c
    inc bc
    ld b, b
    rlca
    ld d, e
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $76
    ld sp, $2841
    nop
    nop
    nop
    nop
    inc b
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], a
    ld sp, $0a41
    ld [bc], a
    nop
    nop
    ld c, b
    inc b
    ld b, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    inc de
    ld de, $020a
    nop
    nop
    add e
    sbc [hl]
    inc de
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_054_5249:
    ld a, [$db4c]
    ld c, a
    ld a, [$db4d]
    ld b, a
    ld hl, $4013
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$db4e]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, c
    ld [$db4c], a
    ld a, b
    ld [$db4d], a
    ret


Call_054_526e:
    ld a, [$db4c]
    ld c, a
    ld a, [$db4d]
    ld b, a
    ld hl, $4013
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$db4e]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    inc hl
    ld a, [hl]
    ld [$db4e], a
    ld a, c
    ld [$db4c], a
    ld a, b
    ld [$db4d], a
    ret


    ld a, [$db8a]
    ld c, a
    ld b, $00
    ld hl, $4013
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $02
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$dcfc], a
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$dcfd], a
    ld a, [hl+]
    ld [$dcfe], a
    ld a, [hl]
    ld [$dcff], a
    ret


    ld a, [$db8a]
    ld [$db4c], a
    ld a, $00
    ld [$db4d], a
    ld a, [$db88]
    bit 2, a
    jr z, jr_054_52e0

    ld a, $0f
    ld [$db4e], a
    jr jr_054_52e5

jr_054_52e0:
    ld a, $0b
    ld [$db4e], a

jr_054_52e5:
    call Call_054_526e
    ld a, [$db4c]
    ld c, a
    ld a, [$db4d]
    ld b, a
    ld a, [$db88]
    ld hl, $dd0b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $02
    jr z, jr_054_530a

    ld a, [$db4e]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a

jr_054_530a:
    ld a, c
    ld [$db56], a
    ld a, b
    ld [$db57], a
    ret


    ld a, [$db8a]
    ld [$db4c], a
    ld a, $00
    ld [$db4d], a
    ld a, [$db88]
    bit 2, a
    jr z, jr_054_532c

    ld a, $0f
    ld [$db4e], a
    jr jr_054_5331

jr_054_532c:
    ld a, $0b
    ld [$db4e], a

jr_054_5331:
    call Call_054_526e
    ld a, [$db4c]
    ld c, a
    ld a, [$db4d]
    ld b, a
    ld a, [$db88]
    ld hl, $dd0b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $02
    jr z, jr_054_5356

    ld a, [$db4e]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a

jr_054_5356:
    ld a, c
    ld [$db56], a
    ld a, b
    ld [$db57], a
    ret


    ld a, [$db4c]
    cp $d5
    jr z, jr_054_539d

    jr nc, jr_054_53a6

    ld a, $00
    ld [$db4d], a
    ld a, $0a
    ld [$db4e], a
    ld a, [$db4c]
    ld l, a
    ld a, [$db4d]
    ld h, a
    push hl
    call Call_054_5249
    pop hl
    ld a, [$db4c]
    cp $01
    jr z, jr_054_53a6

    ld a, l
    ld [$db4c], a
    ld a, h
    ld [$db4d], a
    push hl
    ld a, $02
    ld [$db4e], a
    call Call_054_5249
    pop hl
    ld a, l
    ld [$db4d], a
    ret


jr_054_539d:
    ld [$db4d], a
    ld a, $12
    ld [$db4c], a
    ret


jr_054_53a6:
    ld a, $00
    ld [$db4c], a
    ret


    xor a
    ld [$db53], a
    ld a, [wPLAN_selection]
    add a
    add a
    ld b, a
    ld a, [wOPTN_and_Item_selection]
    and $7f
    add b
    ld a, a
    ld [$db4c], a
    ld hl, wInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$da5e], a
    ld hl, $0302
    rst $10
    ld a, [$db4c]
    ld [$da5f], a
    ld hl, $0308
    rst $10
    ld a, [$da5e]
    cp $ff
    jr nz, jr_054_53f5

    ld a, [$da65]
    cp $64
    jr z, jr_054_53f5

    ld a, $01
    ld [$db53], a
    call Call_054_53f6
    ld hl, $5008
    rst $10

jr_054_53f5:
    ret


Call_054_53f6:
    ld a, [$db8a]
    sub $af
    ld l, a
    ld h, $08
    ld de, $c190
    call Call_000_097a
    ret


    ld a, [$d9ee]
    rst $00
    dec d
    ld d, h
    jr nc, jr_054_5461

    ld d, [hl]
    ld d, h
    and a
    ld d, h
    ld [$7755], sp
    ld d, l
    ld a, [$c825]
    or a
    ret nz

    ld a, $04
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4c00
    rst $10
    call Call_054_55a0
    ld hl, $d9ee
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$da33]
    or a
    jr z, jr_054_5440

    dec a
    ld [$da33], a
    ret


jr_054_5440:
    ld a, $04
    ld [$c822], a
    ld a, $01
    ld [$c823], a
    ld hl, $4c00
    rst $10
    call Call_054_5591
    ld hl, $d9ee
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$da33]
    or a
    jr z, jr_054_5466

jr_054_5461:
    dec a
    ld [$da33], a
    ret


jr_054_5466:
    ld a, $04
    call Call_000_2fa5
    jr c, jr_054_54a2

    ld de, $c180
    ld a, e
    ld [$db5e], a
    ld a, d
    ld [$db5f], a
    ld a, [$dc40]
    ld l, a
    ld h, $05
    call Call_000_097a
    ld a, [$dc40]
    ld [$d9ef], a
    ld hl, $ca94
    call Call_000_267e
    ld a, $02
    jr nz, jr_054_5493

    ld a, $03

jr_054_5493:
    ld [$c823], a
    ld a, $04
    ld [$c822], a
    ld hl, $4c00
    rst $10
    call Call_054_5591

jr_054_54a2:
    ld hl, $d9ee
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$da33]
    or a
    jr z, jr_054_54b7

    dec a
    ld [$da33], a
    ret


jr_054_54b7:
    ld a, $05
    call Call_000_2fa5
    jr c, jr_054_5503

    ld de, $c180
    ld a, e
    ld [$db5e], a
    ld a, d
    ld [$db5f], a
    ld a, [$dc41]
    ld l, a
    ld h, $05
    call Call_000_097a
    ld a, [$dc41]
    ld hl, $dc40
    cp [hl]
    jr nz, jr_054_54e2

    ld a, $04
    call Call_000_2fa5
    jr nc, jr_054_5503

jr_054_54e2:
    ld [$d9f0], a
    ld a, [$dc41]
    ld hl, $ca94
    call Call_000_267e
    ld a, $02
    jr nz, jr_054_54f4

    ld a, $03

jr_054_54f4:
    ld [$c823], a
    ld a, $04
    ld [$c822], a
    ld hl, $4c00
    rst $10
    call Call_054_5591

jr_054_5503:
    ld hl, $d9ee
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$da33]
    or a
    jr z, jr_054_5518

    dec a
    ld [$da33], a
    ret


jr_054_5518:
    ld a, $06
    call Call_000_2fa5
    jr c, jr_054_5572

    ld de, $c180
    ld a, e
    ld [$db5e], a
    ld a, d
    ld [$db5f], a
    ld a, [$dc42]
    ld l, a
    ld h, $05
    call Call_000_097a
    ld a, [$dc42]
    ld hl, $dc40
    cp [hl]
    jr nz, jr_054_5543

    ld a, $04
    call Call_000_2fa5
    jr nc, jr_054_5572

jr_054_5543:
    ld a, [$dc42]
    inc hl
    cp [hl]
    jr nz, jr_054_5551

    ld a, $05
    call Call_000_2fa5
    jr nc, jr_054_5572

jr_054_5551:
    ld [$d9f1], a
    ld a, [$dc42]
    ld hl, $ca94
    call Call_000_267e
    ld a, $02
    jr nz, jr_054_5563

    ld a, $03

jr_054_5563:
    ld [$c823], a
    ld a, $04
    ld [$c822], a
    ld hl, $4c00
    rst $10
    call Call_054_5591

jr_054_5572:
    ld hl, $d9ee
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$da33]
    or a
    jr z, jr_054_5587

    dec a
    ld [$da33], a
    ret


jr_054_5587:
    ld a, $0d
    ld [$d9ed], a
    xor a
    ld [$d9ee], a
    ret


Call_054_5591:
    ld a, [$c8ee]
    cp $07
    jr z, jr_054_55b6

    inc a
    ld b, a
    ld a, $00
    ld c, $0a
    jr jr_054_55b0

Call_054_55a0:
    ld a, [$c8ee]
    cp $07
    jr z, jr_054_55b6

    inc a
    ld b, a
    ld a, $20
    dec b
    jr z, jr_054_55b7

    ld c, $0a

jr_054_55b0:
    add c
    dec b
    jr nz, jr_054_55b0

    jr jr_054_55b7

jr_054_55b6:
    xor a

jr_054_55b7:
    ld [$da33], a
    ret


    call GenerateRNG
    ld a, [$dd61]
    or a
    jr z, jr_054_5609

    and $03
    ld hl, $db85
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$db4d], a
    cp $07
    jr z, jr_054_5609

    ld a, [$dd61]
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $ca94
    call Call_000_267e
    push af
    pop bc
    ld a, c
    ld [$db4c], a
    push bc
    ld a, [$db83]
    ld l, a
    ld a, [$db84]
    ld h, a
    pop af
    jr nz, jr_054_5601

    call Call_054_560e
    jr jr_054_5604

jr_054_5601:
    call Call_054_5655

jr_054_5604:
    call Call_054_5683
    jr c, jr_054_560d

jr_054_5609:
    ld hl, $d9ec
    inc [hl]

jr_054_560d:
    ret


Call_054_560e:
    ld a, [$db4d]
    ld d, h
    ld e, l
    cp $01
    jr z, jr_054_562d

    cp $02
    jr z, jr_054_5632

    cp $03
    jr z, jr_054_5635

    cp $04
    jr z, jr_054_5637

    cp $05
    jr z, jr_054_563d

    cp $06
    jr z, jr_054_5644

    jr jr_054_5654

jr_054_562d:
    add hl, hl
    add hl, hl
    add hl, de
    jr jr_054_5654

jr_054_5632:
    add hl, hl
    jr jr_054_5654

jr_054_5635:
    jr jr_054_5654

jr_054_5637:
    srl h
    rr l
    jr jr_054_5654

jr_054_563d:
    ld a, $05
    call Call_000_1e0d
    jr jr_054_5654

jr_054_5644:
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l

jr_054_5654:
    ret


Call_054_5655:
    ld a, [$db4d]
    or a
    jr z, jr_054_5682

    cp $03
    jr c, jr_054_566c

    cp $06
    jr c, jr_054_5676

    jr nz, jr_054_5682

    ld a, $14
    call Call_000_1e0d
    jr jr_054_5682

jr_054_566c:
    srl h
    rr l
    srl h
    rr l
    jr jr_054_5682

jr_054_5676:
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l

jr_054_5682:
    ret


Call_054_5683:
    ld a, [$db4d]
    or a
    jr z, jr_054_56c5

    cp $07
    jr z, jr_054_56c7

    push hl
    call GenerateRNG
    ld a, [wRNG1]
    ld l, a
    ld a, [wRNG2]
    ld h, a
    ld a, $5b
    call Call_000_1e0d
    add $0a
    ld c, a
    ld b, $00
    pop hl
    call Call_000_2f45
    jr c, jr_054_56c7

    call GenerateRNG
    ld a, [wRNG1]
    ld l, a
    ld a, [wRNG2]
    ld h, a
    ld a, $64
    call Call_000_1e0d
    inc a
    ld c, a
    ld b, $00
    ld hl, $005a
    call Call_000_2f45
    jr c, jr_054_56c7

jr_054_56c5:
    scf
    ret


jr_054_56c7:
    scf
    ccf
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
