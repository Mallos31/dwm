; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

    db $0e ;ROM BANK

    dw Call_00e_4007
    dw labele_402f
    dw labele_4110

Call_00e_4007:
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

labele_402f:
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
    call Call_00e_4007
    push bc
    call Call_00e_40e7
    pop bc

Call_00e_4075:
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
    jr z, jr_00e_40a0

    ld b, a

jr_00e_409a:
    call Call_00e_40da
    dec b
    jr nz, jr_00e_409a

jr_00e_40a0:
    ld a, l
    ld [$d8e7], a
    ld a, h
    ld [$d8e8], a
    pop bc

jr_00e_40a9:
    ld a, [bc]
    inc bc
    cp $d9
    ret z

    cp $d8
    jr nz, jr_00e_40d2

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
    jr jr_00e_40a9

jr_00e_40d2:
    call Write_gfx_tile
    call Call_00e_40da
    jr jr_00e_40a9

Call_00e_40da:
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


Call_00e_40e7:
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

jr_00e_40f5:
    push hl

jr_00e_40f6:
    ld a, [bc]
    inc bc
    cp $d9
    jr z, jr_00e_410e

    cp $d8
    jr nz, jr_00e_410b

    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_00e_40f5

jr_00e_410b:
    ld [hl+], a
    jr jr_00e_40f6

jr_00e_410e:
    pop hl
    ret

labele_4110:
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
    call Call_00e_4007
    push bc
    call Call_00e_4171
    pop bc
    ld a, [wIsGBC]
    or a
    ret z

    di
    call Call_000_1aa6
    ld a, $01
    ldh [rVBK], a
    ei
    call Call_00e_4075
    di
    call Call_000_1aa6
    ld a, $00
    ldh [rVBK], a
    ei
    ret


Call_00e_4171:
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc

jr_00e_4177:
    push hl

jr_00e_4178:
    ld a, [bc]
    inc bc
    cp $d9
    jr z, jr_00e_4193

    cp $d8
    jr nz, jr_00e_418d

    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_00e_4177

jr_00e_418d:
    call Call_00e_4195
    inc hl
    jr jr_00e_4178

jr_00e_4193:
    pop hl
    ret


Call_00e_4195:
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
    jr c, jr_00e_41b0

    swap a
    and $f0
    ld d, a
    ld a, [hl]
    and $0f
    jr jr_00e_41b6

jr_00e_41b0:
    and $0f
    ld d, a
    ld a, [hl]
    and $f0

jr_00e_41b6:
    or d
    ld [hl], a
    pop hl
    ret


    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld a, [hl-]
    ld b, d
    ld a, $42
    ld b, d
    ld b, d
    ld b, [hl]
    ld b, d
    ld e, d
    ld b, d
    ld h, h
    ld b, d
    ld l, [hl]
    ld b, d
    ld a, b
    ld b, d
    or b
    ld b, d
    cp d
    ld b, d
    call nz, $ce42
    ld b, d
    ld a, [$0442]
    ld b, e
    ld c, $43
    jr jr_00e_425d

    ld c, b
    ld c, [hl]
    ld d, $4f
    ld a, [hl]
    ld d, b
    ld c, [hl]
    ld d, d
    ld b, h
    ld d, e
    or [hl]
    ld d, h
    or [hl]
    ld d, l
    ld d, d
    ld d, a
    ld c, [hl]
    ld e, d
    ld h, $5e
    ld c, d
    ld e, a
    ld c, b
    ld h, c
    ld [hl], $62
    ld h, h
    ld h, [hl]
    ld a, [c]
    ld l, b
    and $69
    inc a
    ld b, d
    rst $38
    rst $38
    ld b, b
    ld b, d
    rst $38
    rst $38
    ld b, h
    ld b, d
    rst $38
    rst $38
    ld c, d
    ld b, d
    ld c, h
    ld b, d
    rst $38
    rst $38
    ld bc, $09ff
    nop
    ld d, [hl]
    ld b, d
    ld d, a
    nop
    rst $38
    rst $38
    rra
    ld bc, $ffff
    ld e, [hl]
    ld b, d
    ld h, b

jr_00e_425d:
    ld b, d
    rst $38
    rst $38
    and c
    ld bc, $ffff
    ld l, b
    ld b, d
    ld l, d
    ld b, d
    rst $38
    rst $38
    pop hl
    ld bc, $ffff
    ld [hl], d
    ld b, d
    ld [hl], h
    ld b, d
    rst $38
    rst $38
    ld l, [hl]
    ld [bc], a
    rst $38
    rst $38
    ld a, [hl]
    ld b, d
    add b
    ld b, d
    sbc b
    ld b, d
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    sub h
    ld b, d
    ld bc, $1dff
    nop
    sub b
    ld b, d
    sbc h
    ld [bc], a
    rst $38
    rst $38
    ld l, $03
    rst $38
    rst $38
    ld a, [hl+]
    ld [$ffff], sp
    ld bc, $f1ff
    nop
    xor h
    ld b, d
    ld bc, $1dff
    nop
    xor b
    ld b, d
    sbc l
    ld [bc], a
    rst $38
    rst $38
    cpl
    inc bc
    rst $38
    rst $38
    dec hl
    ld [$ffff], sp
    or h
    ld b, d
    or [hl]
    ld b, d
    rst $38
    rst $38
    ld e, l
    inc bc
    rst $38
    rst $38
    cp [hl]
    ld b, d
    ret nz

    ld b, d
    rst $38
    rst $38
    db $dd
    inc bc
    rst $38
    rst $38
    ret z

    ld b, d
    jp z, $ff42

    rst $38
    ld [$ff04], sp
    rst $38
    jp nc, $d442

    ld b, d
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    or $42
    ld bc, $25ff
    nop
    ld a, [c]
    ld b, d
    ld l, d
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $ee00
    ld b, d
    ld l, e
    inc b
    rst $38
    rst $38
    ld l, h
    inc b
    rst $38
    rst $38
    sbc $04
    rst $38
    rst $38
    inc l
    ld [$ffff], sp
    cp $42
    nop
    ld b, e
    rst $38
    rst $38
    dec l
    ld [$ffff], sp
    ld [$0a43], sp
    ld b, e
    rst $38
    rst $38
    ld l, $08
    rst $38
    rst $38
    ld [de], a
    ld b, e
    inc d
    ld b, e
    rst $38
    rst $38
    cpl
    ld [$ffff], sp
    ld [hl], $43
    cp b
    ld c, e
    cp h
    ld c, e
    ret nz

    ld c, e
    call nz, $c84b
    ld c, e
    call z, $d04b
    ld c, e
    ld a, [c]
    ld c, e
    nop
    ld c, h
    inc b
    ld c, h
    ld d, b
    ld c, l
    ld d, h
    ld c, l
    ld e, b
    ld c, l
    inc c
    ld c, [hl]
    ld c, $ff
    inc b
    nop
    ld b, h
    ld b, e
    ld c, $ff
    dec b
    nop
    db $e4
    ld c, b
    rst $38
    rst $38
    ld bc, $efff
    nop
    ld b, d
    ld b, e
    ld bc, $eeff
    nop
    adc $47
    ld bc, $edff
    nop
    jr nz, jr_00e_439c

    ld bc, $ecff
    nop
    ld b, d
    ld b, e
    ld bc, $ebff
    nop
    ld b, d
    ld b, e
    ld bc, $eaff
    nop
    ret nz

    ld b, l
    ld bc, $e9ff
    nop
    ld b, d
    ld b, e
    ld bc, $e4ff
    nop
    ld e, h
    ld b, l
    ld bc, $00ff
    nop
    ld b, d
    ld b, e
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
    ld b, b
    nop
    ld c, c
    rst $38
    nop
    nop
    ld c, c
    rst $38
    ld bc, $0800
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ldh [rIE], a

jr_00e_439c:
    ld a, [de]
    rst $38
    ld bc, $e000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld a, [de]
    rst $38
    ld bc, $f000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    stop
    dec de
    rst $38
    ld bc, $f000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ld b, b
    nop
    ld a, [de]
    rst $38
    ld bc, $4000
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    nop
    nop
    stop
    ld a, [de]
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ldh a, [rIE]
    dec de
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ldh [rIE], a
    ld a, [de]
    rst $38
    ld bc, $e000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ldh [rIE], a
    ld a, [de]
    rst $38
    ld bc, $e000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld a, [de]
    rst $38
    ld bc, $f000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    stop
    dec de
    rst $38
    ld bc, $f000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ld b, b
    nop
    ld a, [de]
    rst $38
    ld bc, $4000
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    nop
    nop
    stop
    ld a, [de]
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ldh a, [rIE]
    dec de
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ldh [rIE], a
    ld a, [de]
    rst $38
    ld bc, $e000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ldh [rIE], a
    ld a, [de]
    rst $38
    ld bc, $e000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld a, [de]
    rst $38
    ld bc, $f000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    stop
    dec de
    rst $38
    ld bc, $f000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ld b, b
    nop
    ld a, [de]
    rst $38
    ld bc, $4000
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    nop
    nop
    stop
    ld a, [de]
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ldh a, [rIE]
    dec de
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ldh [rIE], a
    ld a, [de]
    rst $38
    ld bc, $e000
    rst $38
    add hl, de
    rst $38
    ld c, d
    rst $38
    nop
    nop
    rlca
    rst $38
    nop
    nop
    ld b, $ff
    ld a, [bc]
    rst $38
    ld bc, $2000
    nop
    dec bc
    rst $38
    ld bc, $1000
    nop
    ld a, [bc]
    rst $38
    ld bc, $f000
    rst $38
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
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec bc
    rst $38
    nop
    nop
    stop
    ld a, [bc]
    rst $38
    nop
    nop
    ldh a, [rIE]
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
    ld bc, $0000
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
    jr nz, jr_00e_453c

jr_00e_453c:
    ld [$4cff], sp
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
    inc bc
    nop
    nop
    nop
    ld b, b
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    stop
    ld c, b
    rst $38
    nop
    nop
    rst $38
    rst $38
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    nop
    nop
    ld [$09ff], sp
    rst $38
    stop
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
    nop
    nop
    sub b
    rst $38
    nop
    nop
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    ld b, b
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    stop
    add hl, bc
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [$4900], sp
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [$4a00], sp
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [$4900], sp
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [$4800], sp
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [$0300], sp
    rst $38
    jp hl


    nop
    ld [de], a
    rst $38
    ld [hl], h
    reti


    inc bc
    nop
    rst $38
    rst $38
    dec c
    rst $38
    ld bc, $1800
    nop
    ld l, b
    nop
    add hl, bc
    rst $38
    ld b, $00
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    ld b, b
    nop
    ld c, b
    rst $38
    ld bc, $0900
    rst $38
    ld [bc], a
    nop
    ld a, [bc]
    rst $38
    ld bc, $1000
    nop
    add hl, bc
    rst $38
    ld b, $00
    ld a, [bc]
    rst $38
    nop
    nop
    ldh a, [rIE]
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, d
    rst $38
    ld bc, $0700
    rst $38
    ld de, $1505
    rst $38
    inc a
    ret z

    ld bc, $1200
    ld b, [hl]
    ld [de], a
    dec b
    inc bc
    rst $38
    db $eb
    nop
    inc d
    rst $38
    jr jr_00e_4658

    inc de
    dec b
    inc bc
    rst $38
    db $ec
    nop
    ld [de], a
    rst $38
    ld [hl], h
    reti


    inc b
    nop
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
    add hl, bc
    rst $38
    stop
    ld hl, $5fff
    nop
    add hl, bc
    rst $38
    ld [$2100], sp
    rst $38
    ld d, l
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc e
    rst $38
    ld [bc], a
    inc c
    add hl, de
    rst $38
    ld c, b
    rst $38
    ld [bc], a
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

jr_00e_4658:
    inc bc
    nop
    nop
    nop
    ld b, b
    nop
    ld c, b
    rst $38
    ld bc, $0d00
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    ld b, b
    nop
    ld c, b
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld a, [de]
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld a, [bc]
    rst $38
    ld bc, $1000
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld b, a
    rst $38
    nop
    nop
    ld b, a
    rst $38
    ld bc, $0900
    rst $38
    inc b
    nop
    inc e
    rst $38
    nop
    ld bc, $ff1c
    ld bc, $1901
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    rlca
    rst $38
    jr jr_00e_46ad

    ld b, $ff
    inc e
    rst $38
    nop

jr_00e_46ad:
    ld bc, $ff1c
    ld bc, $1901
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    ld [bc], a
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [bc], a
    nop
    rlca
    rst $38
    add hl, de
    dec b
    ld b, $ff
    add hl, bc
    rst $38
    ld [$4a00], sp
    rst $38
    nop
    nop
    ld c, c
    rst $38
    ld bc, $0900
    rst $38
    ld [$1c00], sp
    rst $38
    nop
    inc b
    inc e
    rst $38
    ld bc, $1904
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    nop
    ld a, [de]
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld [$4700], sp
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld [hl+], a
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
    ld a, [de]
    rst $38
    nop
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld b, $00
    ld c, c
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    stop
    inc bc
    rst $38
    xor $00
    ld [de], a
    rst $38
    dec hl
    reti


    inc b
    nop
    ld [de], a
    rst $38
    inc l
    reti


    nop
    nop
    ld [de], a
    rst $38
    dec l
    reti


    inc b
    nop
    ld [de], a
    rst $38
    inc sp
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    dec a
    reti


    inc b
    nop
    ld [de], a
    rst $38
    ld a, $d9
    ld bc, $1200
    rst $38
    ccf
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld b, b
    reti


    ld bc, $1200
    rst $38
    ld b, d
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld b, e
    reti


    ld bc, $1200
    rst $38
    ld b, h
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld b, a
    reti


    nop
    nop
    ld [de], a
    rst $38
    ld c, [hl]
    reti


    ld bc, $1200
    rst $38
    ld d, d
    reti


    ld bc, $1200
    rst $38
    ld h, a
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld [hl], h
    reti


    ld b, $00
    ld [de], a
    rst $38
    ld a, [hl-]
    reti


    inc b
    nop
    ld bc, $15ff
    nop
    adc [hl]
    ld b, a
    ld [de], a
    rst $38
    ld a, [hl-]
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    ld b, c
    reti


    inc bc
    nop
    ld bc, $1bff
    nop
    and b
    ld b, a
    ld [de], a
    rst $38
    ld b, c
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld e, [hl]
    reti


    dec b
    nop
    ld bc, $21ff
    nop
    cp [hl]
    ld b, a
    ld [de], a
    rst $38
    ld e, [hl]
    reti


    inc b
    nop
    ld bc, $1eff
    ld bc, $47be
    ld [de], a
    rst $38
    ld e, [hl]
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    adc d
    ret z

    inc b
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
    ld b, b
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    nop
    nop
    ld hl, $55ff
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc e
    rst $38
    ld [bc], a
    inc c
    add hl, de
    rst $38
    ld c, b
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld [$1c00], sp
    rst $38
    ld [bc], a
    ld bc, $ff19
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    ld [bc], a
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [bc], a
    nop
    inc e
    rst $38
    ld [bc], a
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec de
    rst $38
    nop
    nop
    stop
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    ldh [rIE], a
    dec bc
    rst $38
    ld [bc], a
    nop
    jr nz, jr_00e_4830

jr_00e_4830:
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    jr nz, jr_00e_4836

jr_00e_4836:
    dec bc
    rst $38
    ld [bc], a
    nop
    ldh [rIE], a
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    ldh [rIE], a
    dec bc
    rst $38
    ld [bc], a
    nop
    jr nz, jr_00e_4848

jr_00e_4848:
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    jr nz, jr_00e_484e

jr_00e_484e:
    dec bc
    rst $38
    ld [bc], a
    nop
    ldh [rIE], a
    ld c, b
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    ld [bc], a
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [bc], a
    nop
    inc e
    rst $38
    ld [bc], a
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [bc], a
    nop
    inc e
    rst $38
    ld [bc], a
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    ld b, b
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    stop
    add hl, bc
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld c, d
    rst $38
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
    inc e
    rst $38
    ld [bc], a
    ld bc, $ff19
    rlca
    rst $38
    or h
    dec b
    ld b, $ff
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    ld b, b
    nop
    dec bc
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    jr nc, jr_00e_48ca

jr_00e_48ca:
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    nop
    inc bc
    rst $38
    rst $28
    nop
    ld [de], a
    rst $38
    ld [hl], h
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    ld [hl], l
    reti


    ld bc, $ff00
    rst $38
    ld bc, $f0ff
    nop
    ld b, d
    ld b, e
    ld bc, $efff
    nop
    ld h, b
    ld c, e
    ld bc, $00ff
    nop
    ld b, d
    ld b, e
    ld a, [bc]
    rst $38
    nop
    nop
    stop
    ld hl, $60ff
    nop
    rla
    rst $38
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
    ld hl, $55ff
    nop
    inc e
    rst $38
    ld [bc], a
    ld [de], a
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    sub b
    rst $38
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld b, a
    rst $38
    nop
    nop
    rlca
    rst $38
    ld [$0600], sp
    rst $38
    dec e
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld [bc], a
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld e, $ff
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld [bc], a
    nop
    stop
    add hl, de
    rst $38
    ld hl, $54ff
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    nop
    nop
    stop
    add hl, de
    rst $38
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    add b
    nop
    dec bc
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    ldh [rIE], a
    add hl, bc
    rst $38
    ld d, $00
    dec c
    rst $38
    inc bc
    nop
    jr jr_00e_497c

jr_00e_497c:
    sbc b
    nop
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    dec e
    rst $38
    ld a, [de]
    rst $38
    ld [bc], a
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld bc, $1a00
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld bc, $1a00
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld bc, $1a00
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
    ld e, $ff
    ld c, b
    rst $38
    ld [bc], a
    nop
    dec e
    rst $38
    add hl, bc
    rst $38
    ld bc, $1b00
    rst $38
    ld [bc], a
    nop
    ldh a, [rIE]
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
    ld e, $ff
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, b
    rst $38
    inc bc
    nop
    dec e
    rst $38
    add hl, bc
    rst $38
    ld bc, $1a00
    rst $38
    ld [bc], a
    nop
    stop
    dec de
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld e, $ff

Call_00e_4a00:
Jump_00e_4a00:
    ld c, c
    rst $38
    inc bc
    nop
    dec e
    rst $38
    add hl, bc
    rst $38
    ld bc, $1a00
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld bc, $1a00
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld bc, $1a00
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld bc, $1a00
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld bc, $1e00
    rst $38
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld c, d
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $1c00
    rst $38
    nop
    ld bc, $ff19
    dec e
    rst $38
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, b
    rst $38
    inc bc
    nop
    add hl, bc
    rst $38
    ld bc, $2100
    rst $38
    ld d, l
    nop
    inc e
    rst $38
    ld [bc], a
    inc de
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
    ld e, $ff
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    nop
    ld hl, $55ff
    nop
    inc e
    rst $38
    inc bc
    inc de
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
    ld hl, $60ff
    nop
    rla
    rst $38
    add hl, bc
    rst $38
    ld [$2200], sp
    rst $38
    dec de
    rst $38
    nop
    nop
    ldh [rIE], a
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    jr nc, jr_00e_4ac0

jr_00e_4ac0:
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc c
    nop
    ld hl, $60ff
    nop
    rla
    rst $38
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    ld hl, $55ff
    nop
    inc e
    rst $38
    ld bc, $1912
    rst $38
    rlca
    rst $38
    add hl, bc
    nop
    ld b, $ff
    add hl, bc
    rst $38
    inc bc
    nop
    ld c, c
    rst $38
    ld bc, $0900
    rst $38
    inc bc
    nop
    ld c, d
    rst $38
    ld bc, $0900
    rst $38
    inc bc
    nop
    ld c, b
    rst $38
    ld bc, $0900
    rst $38
    dec b
    nop
    ld c, c
    rst $38
    ld bc, $0900
    rst $38
    dec b
    nop
    inc e
    rst $38
    nop
    ld bc, $ff19
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    ld bc, $1901
    rst $38
    add hl, bc
    rst $38
    ld [$0a00], sp
    rst $38
    ld bc, $d000
    rst $38
    rlca
    rst $38
    ld a, [bc]
    nop
    ld b, $ff
    ld a, [bc]
    rst $38
    ld bc, $3000
    nop
    ld b, a
    rst $38
    ld bc, $0900
    rst $38
    ld [bc], a
    nop
    inc e
    rst $38
    ld bc, $1902
    rst $38
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    dec bc
    rst $38
    ld bc, $f000
    rst $38
    ld hl, $60ff
    nop
    rla
    rst $38
    inc bc
    rst $38
    nop
    nop
    ld [de], a
    rst $38
    ld [hl], h
    reti


    ld bc, $ff00
    rst $38
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    ld c, d
    rst $38
    nop
    nop
    ld b, a
    rst $38
    ld bc, $0800
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    ld hl, $60ff
    nop
    rla
    rst $38
    add hl, bc
    rst $38
    ld b, $00
    dec e
    rst $38
    dec de
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    ld e, $ff
    add hl, bc
    rst $38
    ld [$1c00], sp
    rst $38
    ld bc, $1902
    rst $38
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    dec bc
    rst $38
    ld bc, $f000
    rst $38
    ld hl, $60ff
    nop
    rla
    rst $38
    inc bc
    rst $38
    ldh a, [rP1]
    ld [de], a
    rst $38
    ld [hl], h
    reti


    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    nop
    rst $38
    rst $38
    dec b
    nop
    rst $38
    rst $38
    ld b, $00
    rst $38
    rst $38
    rlca
    nop
    rst $38
    rst $38
    ld [bc], a
    nop
    rst $38
    rst $38
    inc bc
    nop
    rst $38
    rst $38
    ld bc, $eeff
    nop
    xor $4b
    ld bc, $ecff
    nop
    ld [HeaderOldLicenseeCode], a
    rst $38
    db $eb
    nop
    and $4b
    ld bc, $ff00
    rst $38
    inc d
    dec b
    rst $38
    rst $38
    dec d
    dec b
    rst $38
    rst $38
    ld bc, $ff00
    rst $38
    ld bc, $e4ff
    nop
    db $fc
    ld c, e
    dec bc
    nop
    rst $38
    rst $38
    ld a, [de]
    dec b
    rst $38
    rst $38
    inc c
    nop
    rst $38
    rst $38
    ld bc, $f0ff
    nop
    or h
    ld c, h
    ld bc, $e4ff
    nop
    xor h
    ld c, h
    ld hl, $60ff
    nop
    rla
    rst $38
    ld b, a
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec e
    rst $38
    dec de
    rst $38
    nop
    nop
    stop
    add hl, de
    rst $38
    ld e, $ff
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    nop
    ld bc, $ff19
    add hl, bc
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec bc
    rst $38
    nop
    nop
    stop
    add hl, bc
    rst $38
    ld bc, $4700
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4a00
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4800
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4900
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4700
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4a00
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4800
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4900
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4700
    rst $38
    nop
    nop
    inc e
    rst $38
    nop
    inc bc
    add hl, de
    rst $38
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
    ld d, c
    reti


    ld b, $00
    dec sp
    rst $38
    ld [$5800], sp
    nop
    ld c, b
    nop
    rst $38
    rst $38
    dec de
    dec b
    inc bc
    rst $38
    ld_long $ff00, a
    rst $38
    ld hl, $60ff
    nop
    rla
    rst $38
    ld b, a
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec e
    rst $38
    dec de
    rst $38
    nop
    nop
    stop
    add hl, de
    rst $38
    ld e, $ff
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    nop
    ld bc, $ff19
    add hl, bc
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec bc
    rst $38
    nop
    nop
    stop
    add hl, bc
    rst $38
    ld bc, $4700
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4a00
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4800
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4900
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4700
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4a00
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4800
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4900
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4700
    rst $38
    nop
    nop
    inc e
    rst $38
    nop
    inc bc
    add hl, de
    rst $38
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
    ld d, c
    reti


    ld b, $00
    dec sp
    rst $38
    ld [$5800], sp
    nop
    ld c, b
    nop
    rst $38
    rst $38
    ld c, $00
    rst $38
    rst $38
    dec c
    nop
    rst $38
    rst $38
    ld bc, $ebff
    nop
    ld h, [hl]
    ld c, l
    ld bc, $ecff
    nop
    ld h, [hl]
    ld c, l
    rst $38
    rst $38
    ld c, c
    rst $38
    ld bc, $0900
    rst $38
    inc b
    nop
    inc e
    rst $38
    ld bc, $1901
    rst $38
    rlca
    rst $38
    ld d, $05
    ld b, $ff
    ld c, d
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    jr nz, jr_00e_4d88

jr_00e_4d88:
    rlca
    rst $38
    rla
    dec b
    ld b, $ff
    add hl, bc
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc c
    nop
    ld c, c
    rst $38
    nop
    nop
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
    inc b
    nop
    ld c, c
    rst $38
    nop
    nop
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
    inc c
    nop
    ld c, d
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [bc], a
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
    inc b
    nop
    inc e
    rst $38
    nop
    inc b
    inc e
    rst $38
    ld bc, $1904
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    nop
    nop
    ld c, b
    rst $38
    ld bc, $0900
    rst $38
    inc b
    nop
    ld [de], a
    rst $38
    ld [hl], h
    reti


    dec b
    nop
    inc bc
    rst $38
    db $ed
    nop
    ld b, c
    rst $38
    ld b, a
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld h, l
    rst $38
    ld [de], a
    rst $38
    adc d
    ret z

    inc b
    nop
    ld [de], a
    rst $38
    adc e
    ret z

    nop
    nop
    ld a, $ff
    rst $38
    rst $38
    ld bc, $ebff
    nop
    ld a, [de]
    ld c, [hl]
    ld bc, $ecff
    nop
    ld a, [de]
    ld c, [hl]
    rst $38
    rst $38
    ld c, c
    rst $38
    ld bc, $0900
    rst $38
    inc b
    nop
    inc e
    rst $38
    ld bc, $1901
    rst $38
    rlca
    rst $38
    ld d, $05
    ld b, $ff
    ld c, c
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    rlca
    rst $38
    rla
    dec b
    ld b, $ff
    inc d
    rst $38
    adc [hl]
    ld c, l
    ld c, h
    ld c, [hl]
    ld e, h
    ld c, [hl]
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
    ld bc, $3dff
    nop
    ld c, $4f
    ld e, b
    nop
    inc bc
    rst $38
    dec a
    nop
    ld e, d
    rst $38
    dec bc
    nop
    rlca
    rst $38
    ld e, c
    nop
    ld b, $ff
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

    rlca
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
    rlca
    rst $38
    ld b, [hl]
    ld bc, $ff1c
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
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    jr nc, jr_00e_4eec

jr_00e_4eec:
    inc bc
    rst $38
    stop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, b
    reti


    ld bc, $1200
    rst $38
    db $76
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
    ccf
    ld bc, $ff14
    ld l, b
    ld c, [hl]
    rst $38
    rst $38
    inc e
    ld c, a
    inc l
    ld c, a
    or [hl]
    ld c, a
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
    ld bc, $b6ff
    nop
    xor b
    ld c, a
    ld bc, $b2ff
    nop
    adc [hl]
    ld c, a
    ld bc, $b5ff
    nop
    add b
    ld c, a
    ld bc, $b4ff
    nop
    ld l, [hl]
    ld c, a
    ld bc, $b3ff
    nop
    ld e, h
    ld c, a
    jr nz, jr_00e_4f4e

    dec d
    rst $38

jr_00e_4f4e:
    inc a
    ret z

    nop
    nop
    xor h
    ld c, a
    ld hl, $0302
    rst $38
    or e
    nop
    rst $38
    rst $38
    jr nz, jr_00e_4f60

    dec d
    rst $38

jr_00e_4f60:
    inc a
    ret z

    nop
    nop
    xor h
    ld c, a
    ld [hl+], a
    ld [bc], a
    inc bc
    rst $38
    or h
    nop
    rst $38
    rst $38
    jr nz, jr_00e_4f72

    dec d
    rst $38

jr_00e_4f72:
    inc a
    ret z

    nop
    nop
    xor h
    ld c, a
    inc hl
    ld [bc], a
    inc bc
    rst $38
    or l
    nop
    rst $38
    rst $38
    jr nz, jr_00e_4f84

    dec d
    rst $38

jr_00e_4f84:
    inc a
    ret z

    nop
    nop
    xor h
    ld c, a
    inc h
    ld [bc], a
    rst $38
    rst $38
    daa
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    and b
    ld c, a
    jr z, jr_00e_4f9c

    inc d
    rst $38

jr_00e_4f9c:
    sub b
    ld c, a
    rst $38
    rst $38
    add hl, hl
    ld [bc], a
    inc bc
    rst $38
    or [hl]
    nop
    rst $38
    rst $38
    ld d, b
    ld [bc], a
    rst $38
    rst $38
    dec h
    ld [bc], a
    ld h, $02
    inc bc
    rst $38
    or d
    nop
    rst $38
    rst $38
    ld bc, $b7ff
    nop
    db $76
    ld d, b
    ld bc, $b6ff
    nop
    add $4f
    ld d, c
    ld [bc], a
    rst $38
    rst $38
    ld d, d
    ld [bc], a
    inc bc
    rst $38
    or a
    nop
    ld e, d
    rst $38
    rra
    nop
    rlca
    rst $38
    ld d, h
    ld [bc], a
    ld b, $ff
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
    inc de
    rst $38
    db $e3
    ret c

    inc b
    inc bc
    inc e
    rst $38
    ld [bc], a
    ld d, $19
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
    ld c, c
    rst $38
    nop
    nop
    rlca
    rst $38
    ld d, l
    ld [bc], a
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
    ld b, $00
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    ld sp, $0300
    rst $38
    ld de, $1200
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, c
    reti


    ld bc, $1200
    rst $38
    ld [hl], a
    reti


    ld bc, $0000
    rst $38
    ld [de], a
    nop
    ld l, d
    ld d, b
    ld [de], a
    rst $38
    ld l, c
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
    ld d, e
    ld [bc], a
    inc d
    rst $38
    call z, $ff4f
    rst $38
    add h
    ld d, b
    add b
    ld d, c
    add h
    ld d, c
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
    ld bc, $b8ff
    nop
    ld a, [hl]
    ld d, c
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
    dec bc
    rst $38
    ld [bc], a
    nop
    jr nz, jr_00e_50aa

jr_00e_50aa:
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    ret nc

    rst $38
    dec bc
    rst $38
    ld [bc], a
    nop
    jr nz, jr_00e_50b6

jr_00e_50b6:
    ld c, c
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $0900
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld bc, $4a00
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld bc, $4800
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld bc, $4900
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld [$4800], sp
    rst $38
    ld bc, $0900
    rst $38
    ld bc, $4900
    rst $38
    ld bc, $0900
    rst $38
    ld bc, $4700
    rst $38
    ld bc, $0900
    rst $38
    ld bc, $4a00
    rst $38
    ld bc, $0900
    rst $38
    stop
    inc e
    rst $38
    ld [bc], a
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [bc], a
    nop
    inc e
    rst $38
    ld [bc], a
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [$4800], sp
    rst $38
    ld bc, $0900
    rst $38
    ld bc, $4900
    rst $38
    ld bc, $0900
    rst $38
    ld bc, $4700
    rst $38
    ld bc, $0900
    rst $38
    ld bc, $4a00
    rst $38
    ld bc, $0900
    rst $38
    ld [$1c00], sp
    rst $38
    ld [bc], a
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [bc], a
    nop
    inc e
    rst $38
    ld [bc], a
    ld bc, $ff19
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
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    ld hl, $54ff
    nop
    inc de
    rst $38
    db $e3
    ret c

    dec b
    inc bc
    inc e
    rst $38
    ld [bc], a
    jr jr_00e_518e

    rst $38
    ld e, $ff
    inc bc
    rst $38
    cp b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, [hl]
    ld [bc], a
    rst $38
    rst $38
    ld c, d
    rst $38
    ld bc, $0900
    rst $38
    inc b
    nop
    rlca
    rst $38

jr_00e_518e:
    ld bc, $b9ff
    nop
    ld b, [hl]
    ld d, d
    ld d, a
    ld [bc], a
    inc bc
    rst $38
    cp c
    nop
    ld e, d
    rst $38
    jr nz, jr_00e_519e

jr_00e_519e:
    rlca
    rst $38
    ld e, c
    ld [bc], a
    ld b, $ff
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
    inc b
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
    ld c, d
    rst $38
    inc bc
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    inc bc
    nop
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
    ld c, b
    rst $38
    nop
    nop
    rlca
    rst $38
    ld h, d
    ld [bc], a
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, d
    rst $38
    inc bc
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    inc bc
    nop
    ld c, l
    rst $38
    ld b, $00
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
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    ld [hl-], a
    nop
    inc bc
    rst $38
    ld [de], a
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, c
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld a, b
    reti


    ld bc, $0000
    rst $38
    ld de, $3a00
    ld d, d
    ld [de], a
    rst $38
    ld l, c
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
    ld e, b
    ld [bc], a
    inc d
    rst $38
    sbc d
    ld d, c
    rst $38
    rst $38
    ld d, d
    ld d, d
    ld h, d
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
    ld bc, $bcff
    nop
    inc a
    ld d, e
    ld bc, $bbff
    nop
    add h
    ld d, d
    ld bc, $baff
    nop
    ld a, h
    ld d, d
    ld h, e
    ld [bc], a
    inc bc
    rst $38
    cp d
    nop
    rst $38
    rst $38
    ld h, h
    ld [bc], a
    inc bc
    rst $38
    cp e
    nop
    rst $38
    rst $38
    ld h, l
    ld [bc], a
    inc bc
    rst $38
    cp h
    nop
    ld e, d
    rst $38
    inc sp
    nop
    rlca
    rst $38
    ld h, a
    ld [bc], a
    ld b, $ff
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

    rlca
    inc b
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
    ld c, c
    rst $38
    nop
    nop
    rlca
    rst $38
    ld l, b
    ld [bc], a
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
    ld b, $00
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    inc sp
    nop
    inc bc
    rst $38
    inc de
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, d
    reti


    ld bc, $1200
    rst $38
    ld a, c
    reti


    ld bc, $0000
    rst $38
    inc d
    nop
    jr nc, jr_00e_537d

    ld [de], a
    rst $38
    ld l, d
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
    ld h, [hl]
    ld [bc], a
    inc d
    rst $38
    adc d
    ld d, d
    rst $38
    rst $38
    ld e, d
    ld d, e
    ld l, d
    ld d, e
    ld l, [hl]
    ld d, e
    ld a, [hl+]
    ld d, h
    ld b, d
    ld d, h
    ld e, d
    ld d, h
    ld [hl], d
    ld d, h
    adc d
    ld d, h
    sub d
    ld d, h
    and b
    ld d, h
    xor [hl]
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
    ld l, c
    ld [bc], a
    rst $38
    rst $38
    ld bc, $17ff
    ld bc, $5422
    ld l, d
    ld [bc], a
    inc bc
    rst $38
    rla
    ld bc, $ff5a
    dec [hl]

jr_00e_537d:
    nop
    rlca
    rst $38
    sub b
    ld [bc], a
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    dec b
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
    dec b
    dec d
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    nop
    nop
    rlca
    rst $38
    sub e
    ld [bc], a
    inc e
    rst $38
    dec b
    inc b
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, c
    rst $38
    dec b
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    inc [hl]
    nop
    inc bc
    rst $38
    inc d
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, d
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld a, d
    reti


    ld bc, $0000
    rst $38
    inc de
    nop
    ld d, $54
    ld [de], a
    rst $38
    ld l, d
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
    ld l, e
    ld [bc], a
    inc d
    rst $38
    ld a, d
    ld d, e
    rst $38
    rst $38
    ld bc, $bdff
    nop
    ld a, $54
    sub c
    ld [bc], a
    ld b, $ff
    dec b
    rst $38
    ld d, l
    ld bc, $ff03
    cp l
    nop
    rst $38
    rst $38
    sub d
    ld [bc], a
    rst $38
    rst $38
    ld bc, $beff
    nop
    ld d, [hl]
    ld d, h
    sub c
    ld [bc], a
    ld b, $ff
    dec b
    rst $38
    ld d, l
    ld bc, $ff03
    cp [hl]
    nop
    rst $38
    rst $38
    sub d
    ld [bc], a
    rst $38
    rst $38
    ld bc, $bfff
    nop
    ld l, [hl]
    ld d, h
    sub c
    ld [bc], a
    ld b, $ff
    dec b
    rst $38
    ld d, l
    ld bc, $ff03
    cp a
    nop
    rst $38
    rst $38
    sub d
    ld [bc], a
    rst $38
    rst $38
    ld bc, $c0ff
    nop
    add [hl]
    ld d, h
    sub c
    ld [bc], a
    ld b, $ff
    dec b
    rst $38
    ld d, l
    ld bc, $ff03
    ret nz

    nop
    rst $38
    rst $38
    sub d
    ld [bc], a
    rst $38
    rst $38
    db $10
    rst $38
    ld [bc], a
    nop
    ld a, b
    nop
    rst $38
    rst $38
    ld bc, $bfff
    nop
    sbc [hl]
    ld d, h
    db $10
    rst $38
    inc bc
    nop
    ld c, b
    nop
    rst $38
    rst $38
    ld bc, $c0ff
    nop
    xor h
    ld d, h
    ld de, $04ff
    nop
    ld e, b
    nop
    rst $38
    rst $38
    db $10
    rst $38
    ld bc, $0800
    nop
    rst $38
    rst $38
    cp [hl]
    ld d, h
    adc $54
    jp nc, $d654

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
    sub h
    ld [bc], a
    rst $38
    rst $38
    sub l
    ld [bc], a
    rst $38
    rst $38
    sub [hl]
    ld [bc], a
    ld e, d
    rst $38
    scf
    nop
    rlca
    rst $38
    sub a
    ld [bc], a
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

    inc b
    ld [bc], a
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
    rlca
    rst $38
    sbc b
    ld [bc], a
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


    dec [hl]
    nop
    inc bc
    rst $38
    dec d
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


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld a, e
    reti


    ld bc, $0000
    rst $38
    dec l
    nop
    ld a, h
    ld d, l
    ld bc, $f6ff
    nop
    and b
    ld d, l
    ld bc, $f6ff
    nop
    sub [hl]
    ld d, l
    ld bc, $eeff
    nop
    adc h
    ld d, l
    inc d
    rst $38
    xor d
    ld d, l
    ld [de], a
    rst $38
    ld a, [hl-]
    reti


    inc b
    nop
    inc d
    rst $38
    xor d
    ld d, l
    ld [de], a
    rst $38
    ld a, [hl-]
    reti


    ld b, $00
    inc d
    rst $38
    xor d
    ld d, l
    ld [de], a
    rst $38
    ld a, [hl-]
    reti


    ld [$1400], sp
    rst $38
    xor d
    ld d, l
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
    ret z

    ld d, l
    ret c

    ld d, l
    ld [bc], a
    ld d, [hl]
    inc l
    ld d, [hl]
    ld c, b
    ld d, [hl]
    ld h, h
    ld d, [hl]
    ld l, b
    ld d, [hl]
    db $76
    ld d, [hl]
    add h
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
    ld bc, $16ff
    nop
    cp $55
    ld bc, $c2ff
    nop
    ld a, [$0155]
    rst $38
    pop bc
    nop
    ld a, [c]
    ld d, l
    sbc c
    ld [bc], a
    inc bc
    rst $38
    pop bc
    nop
    rst $38
    rst $38
    ld de, $0303
    rst $38
    jp nz, $ff00

    rst $38
    ld [de], a
    inc bc
    rst $38
    rst $38
    inc de
    inc bc
    rst $38
    rst $38
    ld bc, $16ff
    nop
    jr z, jr_00e_565e

    ld bc, $c4ff
    nop
    inc h
    ld d, [hl]
    ld bc, $c3ff
    nop
    inc e
    ld d, [hl]
    inc d
    inc bc
    inc bc
    rst $38
    jp $ff00


    rst $38
    dec d
    inc bc
    inc bc
    rst $38
    call nz, $ff00
    rst $38
    ld d, $03
    rst $38
    rst $38
    rla
    inc bc
    rst $38
    rst $38
    ld bc, $16ff
    nop
    ld b, h
    ld d, [hl]
    ld bc, $c5ff
    nop
    ld b, b
    ld d, [hl]
    jr jr_00e_563d

    inc bc
    rst $38
    push bc

jr_00e_563d:
    nop
    rst $38
    rst $38
    add hl, de
    inc bc
    rst $38
    rst $38
    ld b, e
    ld [$ffff], sp
    ld bc, $16ff
    nop
    ld h, b
    ld d, [hl]
    ld bc, $c6ff
    nop
    ld e, h
    ld d, [hl]
    ld a, [de]
    inc bc
    inc bc
    rst $38
    add $00
    rst $38
    rst $38
    ld [hl+], a
    inc bc

jr_00e_565e:
    rst $38
    rst $38
    inc hl
    inc bc
    rst $38
    rst $38
    inc h
    inc bc
    rst $38
    rst $38
    ld bc, $16ff
    nop
    ld [hl], d
    ld d, [hl]
    dec h
    inc bc
    rst $38
    rst $38
    ld h, $03
    rst $38
    rst $38
    ld bc, $16ff
    nop
    add b
    ld d, [hl]
    daa
    inc bc
    rst $38
    rst $38
    jr z, @+$05

    rst $38
    rst $38
    ld bc, $c7ff
    nop
    ld c, d
    ld d, a
    ld bc, $c6ff
    nop
    sub h
    ld d, [hl]
    add hl, hl
    inc bc
    rst $38
    rst $38
    ld a, [hl+]
    inc bc
    inc bc
    rst $38
    rst $00
    nop
    ld e, d
    rst $38
    ld c, e
    nop
    rlca
    rst $38
    ld b, [hl]
    inc bc
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
    dec c
    rst $38
    dec b
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
    dec b
    ld d, $19
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    nop
    nop
    rlca
    rst $38
    ld b, a
    inc bc
    inc e
    rst $38
    dec b
    inc b
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, d
    rst $38
    dec b
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    ld [hl], $00
    inc bc
    rst $38
    ld d, $00
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, e
    reti


    ld bc, $1200
    rst $38
    ld a, h
    reti


    ld bc, $0000
    rst $38
    rla
    nop
    ld a, $57
    ld [de], a
    rst $38
    ld l, e
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
    dec hl
    inc bc
    inc d
    rst $38
    sbc d
    ld d, [hl]
    rst $38
    rst $38
    ld e, h
    ld d, a
    jr jr_00e_57ae

    jp c, $b258

    ld e, c
    nop
    ld e, d
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec d
    rst $38
    push hl
    reti


    ld bc, $7400
    ld d, a
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
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $1000
    nop
    dec de
    rst $38
    ld [bc], a
    nop
    stop
    add hl, de
    rst $38
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38

jr_00e_57ae:
    ld bc, $1000
    nop
    dec de
    rst $38
    ld [bc], a
    nop
    stop
    dec de
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
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
    ld bc, $4000
    nop
    dec de
    rst $38
    ld [bc], a
    nop
    ld d, b
    nop
    dec de
    rst $38
    inc bc
    nop
    ld h, b
    nop
    dec de
    rst $38
    inc b
    nop
    ld [hl], b
    nop
    add hl, de
    rst $38
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
    ld bc, $c9ff
    nop
    call nc, $f658
    inc bc
    inc bc
    rst $38
    ret


    nop
    ld e, d
    rst $38
    ld c, l
    nop
    rlca
    rst $38
    inc e
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    dec b
    nop
    dec b
    nop
    nop
    nop
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
    inc e
    rst $38
    rlca
    dec d
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    rlca
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
    dec e
    dec b
    inc e
    rst $38
    rlca
    inc b
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    ld b, $00
    ld b, a
    rst $38
    rlca
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    scf
    nop
    inc bc
    rst $38
    rla
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, e
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld a, l
    reti


    ld bc, $0000
    rst $38
    ld d, $00
    ret z

    ld e, b
    ld [de], a
    rst $38
    ld l, e
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
    ld h, a
    inc b
    inc d
    rst $38
    inc h
    ld e, b
    ld bc, $aaff
    nop
    or b
    ld e, c
    ld bc, $c8ff
    nop
    or b
    ld e, c
    ld b, a
    rst $38
    nop
    nop
    ld c, b
    rst $38
    dec b
    nop
    ld b, a
    rst $38
    ld b, $00
    dec c
    rst $38
    ld b, $00
    nop
    nop
    nop
    nop
    dec bc
    rst $38
    ld b, $00
    ldh a, [rIE]
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld b, $00
    dec b
    nop
    add b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec e
    rst $38
    inc e
    rst $38
    ld b, $0f
    add hl, de
    rst $38
    ld e, $ff
    dec c
    rst $38
    ld b, $00
    dec b
    nop
    nop
    nop
    dec bc
    rst $38
    ld b, $00
    ldh a, [rIE]
    add hl, bc
    rst $38
    ld [$4a00], sp
    rst $38
    ld b, $00
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld b, a
    rst $38
    ld b, $00
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    dec b
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, c
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, d
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, c
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, d
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [$4800], sp
    rst $38
    ld b, $00
    rlca
    rst $38
    push af
    inc bc
    ld b, $ff
    dec bc
    rst $38
    ld b, $00
    stop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec c
    rst $38
    ld b, $00
    dec b
    nop
    add b
    nop
    dec e
    rst $38
    inc e
    rst $38
    ld b, $10
    add hl, de
    rst $38
    ld e, $ff
    dec c
    rst $38
    ld b, $00
    dec b
    nop
    nop
    nop
    dec bc
    rst $38
    ld b, $00
    stop
    dec c
    rst $38
    ld b, $00
    nop
    nop
    ld b, b
    nop
    inc bc
    rst $38
    ret z

    nop
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld hl, $55ff
    nop
    ld [de], a
    rst $38
    db $ed
    ret z

    ld bc, $0a00
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
    ld a, [bc]
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
    ld a, [bc]
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
    add hl, bc
    rst $38
    inc b
    nop
    ld [de], a
    rst $38
    push hl
    reti


    ld bc, $0f00
    rst $38
    scf
    nop
    ld e, b
    nop
    ld a, b
    nop
    rst $38
    rst $38

Call_00e_5a00:
Jump_00e_5a00:
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld hl, $55ff
    nop
    ld [de], a
    rst $38
    db $ed
    ret z

    ld bc, $0a00
    rst $38
    nop
    nop
    stop
    ld [de], a
    rst $38
    db $ed
    ret z

    inc bc
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

    rlca
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
    push hl
    reti


    ld bc, $0f00
    rst $38
    scf
    nop
    ld e, b
    nop
    ld a, b
    nop
    rst $38
    rst $38
    ld [hl], b
    ld e, d
    ld h, $5b
    sbc $5b
    and $5b
    xor $5b
    or $5b
    cp $5b
    ld b, $5c
    ld c, $5c
    ld d, $5c
    ld e, $5c
    ld h, $5c
    ld l, $5c
    ld [hl], $5c
    ld a, $5c
    ld b, [hl]
    ld e, h
    inc c
    ld e, l
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec d
    rst $38
    push hl
    reti


    ld bc, $8800
    ld e, d
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
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $1000
    nop
    dec de
    rst $38
    ld [bc], a
    nop
    stop
    add hl, de
    rst $38
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $1000
    nop
    dec de
    rst $38
    ld [bc], a
    nop
    stop
    dec de
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
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
    ld [bc], a
    nop
    stop
    dec de
    rst $38
    inc bc
    nop
    jr nz, jr_00e_5aea

jr_00e_5aea:
    dec de
    rst $38
    inc b
    nop
    jr nc, jr_00e_5af0

jr_00e_5af0:
    add hl, de
    rst $38
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
    ld bc, $caff
    nop
    sub $5b
    ld e, $05
    inc bc
    rst $38
    jp z, Jump_00e_5a00

    rst $38
    ld c, a
    nop
    rlca
    rst $38
    jr nz, jr_00e_5b3f

    add hl, bc
    rst $38
    ld [$0d00], sp

jr_00e_5b3f:
    rst $38
    ld b, $00
    dec b
    nop
    nop
    nop
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

    ld [$1c03], sp
    rst $38
    rlca
    ld d, $19
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    rlca
    rst $38
    ld hl, $1c05
    rst $38
    rlca
    inc b
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, b
    rst $38
    rlca
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    jr c, jr_00e_5bb4

jr_00e_5bb4:
    inc bc
    rst $38
    jr jr_00e_5bb8

jr_00e_5bb8:
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld h, b
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld a, [hl]
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
    rra
    dec b
    inc d
    rst $38
    ld [hl-], a
    ld e, e
    rst $38
    rst $38
    inc h
    rst $38
    sbc h
    ld e, h
    inc d
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    and h
    ld e, h
    inc d
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    xor h
    ld e, h
    inc d
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    or h
    ld e, h
    inc d
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38

Call_00e_5c00:
    cp h
    ld e, h
    inc d
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    db $c4, $5c, $14
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    db $cc, $5c, $14
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    db $d4, $5c, $14
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    db $dc, $5c, $14
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    db $e4
    ld e, h
    inc d
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    db $ec
    ld e, h
    inc d
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    db $f4
    ld e, h
    inc d
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    db $fc
    ld e, h
    inc d
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    inc b
    ld e, l
    inc d
    rst $38
    ld c, [hl]
    ld e, h
    ld hl, $55ff
    nop
    add hl, bc
    rst $38
    ld bc, $1200
    rst $38
    db $ed
    ret z

    ld bc, $0a00
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
    ld a, [bc]
    rst $38
    nop
    nop
    stop
    ld [de], a
    rst $38
    db $ed
    ret z

    rlca
    nop
    ld a, [bc]
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
    add hl, bc
    rst $38
    inc b
    nop
    ld [de], a
    rst $38
    push hl
    reti


    ld bc, $0f00
    rst $38
    jr c, jr_00e_5c96

jr_00e_5c96:
    adc b
    nop
    jr c, jr_00e_5c9a

jr_00e_5c9a:
    rst $38
    rst $38
    ld [$5400], sp
    ld d, l
    ret c

    ld d, [hl]
    ld d, a
    reti


    ld a, [bc]
    nop
    ld d, h
    ld d, l
    ret c

    ld d, [hl]
    ld d, a
    reti


    inc c
    nop
    ld d, h
    ld d, l
    ret c

    ld d, [hl]
    ld d, a
    reti


    ld b, d
    nop
    ld d, h
    ld d, l
    ret c

    ld d, [hl]
    ld d, a
    reti


    adc d
    nop
    ld d, h
    ld d, l
    ret c

    ld d, [hl]
    ld d, a
    reti


    sub b
    nop
    ld d, h
    ld d, l
    ret c

    ld d, [hl]
    ld d, a
    reti


    inc b
    ld bc, $5554
    ret c

    ld d, [hl]
    ld d, a
    reti


    ld b, $01
    ld d, h
    ld d, l
    ret c

    ld d, [hl]
    ld d, a
    reti


    ld [$5401], sp
    ld d, l
    ret c

    ld d, [hl]
    ld d, a
    reti


    ld c, $01
    ld d, h
    ld d, l
    ret c

    ld d, [hl]
    ld d, a
    reti


    db $10
    ld bc, $5554
    ret c

    ld d, [hl]
    ld d, a
    reti


    ld c, [hl]
    ld bc, $5554
    ret c

    ld d, [hl]
    ld d, a
    reti


    add d
    ld bc, $5554
    ret c

    ld d, [hl]
    ld d, a
    reti


    adc d
    ld bc, $5554
    ret c

    ld d, [hl]
    ld d, a
    reti


    dec d
    rst $38
    db $e4
    reti


    nop
    nop
    inc e
    ld e, l
    nop
    rst $38
    rlc b
    inc e
    ld e, l
    rst $38
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
    dec b
    nop
    jr nc, jr_00e_5d2c

jr_00e_5d2c:
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld b, $00
    ld c, d
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, b
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, c
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, b
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, d
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, b
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [$0a00], sp
    rst $38
    dec b
    nop
    ldh a, [rIE]
    dec bc
    rst $38
    dec b
    nop
    jr nz, jr_00e_5d6e

jr_00e_5d6e:
    ld a, [bc]
    rst $38
    dec b
    nop
    stop
    add hl, bc
    rst $38
    ld b, $00
    ld c, d
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, b
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, d
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld b, a
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, d
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, b
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, d
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [$0a00], sp
    rst $38
    dec b
    nop
    ldh a, [rIE]
    dec bc
    rst $38
    dec b
    nop
    ldh [rIE], a
    ld a, [bc]
    rst $38
    dec b
    nop
    jr nc, jr_00e_5dc2

jr_00e_5dc2:
    dec bc
    rst $38
    dec b
    nop
    ldh a, [rIE]
    ld a, [bc]
    rst $38
    dec b
    nop
    stop
    inc h
    rst $38
    cp h
    ld e, h
    ld c, l
    rst $38
    ld a, [bc]
    nop
    ld c, b
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    jr nz, jr_00e_5dde

jr_00e_5dde:
    ld c, c
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    ld a, [bc]
    nop
    ld c, b
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    ld a, [bc]
    nop
    ld c, d
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    ld a, [bc]
    nop
    ld c, b
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    dec c
    rst $38
    dec b
    nop
    dec b
    nop
    add b
    nop
    add hl, bc
    rst $38
    ld b, $00
    ld hl, $55ff
    nop
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    ld b, b
    nop
    add hl, bc
    rst $38
    stop
    ld [de], a
    rst $38
    db $e4
    reti


    ld bc, $0300
    rst $38
    rlc b
    rst $38
    rst $38
    jr nc, @+$60

    ld c, b
    ld e, [hl]
    ld c, h
    ld e, [hl]
    ld d, b
    ld e, [hl]
    jr z, jr_00e_5e8f

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
    dec c
    rst $38
    ld bc, $0500
    nop
    add b
    nop
    rst $38
    rst $38
    inc hl
    dec b
    rst $38
    rst $38
    ld [hl+], a
    dec b
    rst $38
    rst $38
    nop
    rst $38
    call z, Call_00e_5c00
    ld e, [hl]
    ld bc, $cdff
    nop
    ld e, $5f
    ld bc, $cdff
    nop
    ld a, [de]
    ld e, a
    ld bc, $ccff
    nop
    ld l, h
    ld e, [hl]
    inc h
    dec b
    rst $38
    rst $38
    dec h
    dec b
    inc bc
    rst $38
    call $0200
    rst $38
    call z, Call_00e_5a00
    rst $38
    ld h, e
    nop
    rlca
    rst $38
    daa
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

jr_00e_5e8f:
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    ld [$1c03], sp
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
    rlca
    rst $38
    jr z, jr_00e_5ecf

    inc e
    rst $38
    ld [bc], a
    inc b
    add hl, de

jr_00e_5ecf:
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


    add hl, sp
    nop
    inc bc
    rst $38
    add hl, de
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, h
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld a, a
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
    inc h
    dec b
    rst $38
    rst $38
    ld h, $05
    ld [bc], a
    rst $38
    call z, $1400
    rst $38
    db $76
    ld e, [hl]
    ld bc, $ccff
    nop
    ld c, b
    ld e, a
    dec c
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    ld [$10ff], sp
    rst $38
    ld bc, $3800
    nop
    ld de, $01ff
    nop
    ld e, b
    nop
    inc bc
    rst $38
    call z, $ff00
    rst $38
    ld e, h
    ld e, a
    jr jr_00e_5fae

    jp z, $1860

    ld h, c
    jr nz, jr_00e_5fb5

    jr z, @+$63

    jr nc, jr_00e_5fb9

    jr c, jr_00e_5fbb

    ld b, b
    ld h, c
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec d
    rst $38
    push hl
    reti


    ld bc, $7400
    ld e, a
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
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $1000
    nop
    dec de
    rst $38
    ld [bc], a
    nop
    stop
    add hl, de
    rst $38
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38

jr_00e_5fae:
    ld bc, $1000
    nop
    dec de
    rst $38
    ld [bc], a

jr_00e_5fb5:
    nop
    stop
    dec de

jr_00e_5fb9:
    rst $38
    inc bc

jr_00e_5fbb:
    nop
    stop
    add hl, de
    rst $38
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
    ld bc, $4000
    nop
    dec de
    rst $38
    ld [bc], a
    nop
    ld d, b
    nop
    dec de
    rst $38
    inc bc
    nop
    ld h, b
    nop
    dec de
    rst $38
    inc b
    nop
    ld [hl], b
    nop
    add hl, de
    rst $38
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
    add hl, hl
    dec b
    ld e, d
    rst $38
    ld a, l
    nop
    rlca
    rst $38
    ld a, [hl+]
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    dec b
    nop
    dec b
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
    ld bc, $ff1c
    ld b, $15
    add hl, de
    rst $38
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
    ld b, a
    rst $38
    nop
    nop
    rlca
    rst $38
    dec hl
    dec b
    inc e
    rst $38
    ld b, $04
    add hl, de
    rst $38
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
    ld b, $00
    ld c, b
    rst $38
    ld b, $00
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    ld a, [hl-]
    nop
    inc bc
    rst $38
    ld a, [de]
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, l
    reti


    ld bc, $1200
    rst $38
    add b
    reti


    ld bc, $0000
    rst $38
    inc e
    nop
    cp [hl]
    ld h, b
    ld [de], a
    rst $38
    ld l, l
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
    ld hl, $55ff
    nop
    add hl, bc
    rst $38
    ld bc, $1200
    rst $38
    db $ed
    ret z

    ld bc, $0a00
    rst $38
    nop
    nop
    stop
    ld [de], a
    rst $38
    db $ed
    ret z

    inc bc
    nop
    ld a, [bc]
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
    push hl
    reti


    ld bc, $0f00
    rst $38
    ld a, [hl-]
    nop
    jr jr_00e_6114

jr_00e_6114:
    ld a, b
    nop
    rst $38
    rst $38
    db $10
    rst $38
    dec b
    nop
    ld a, b
    nop
    rst $38
    rst $38
    db $10
    rst $38
    dec b
    nop
    ld e, b
    nop
    rst $38
    rst $38
    db $10
    rst $38
    dec b
    nop
    jr jr_00e_612e

jr_00e_612e:
    rst $38
    rst $38
    db $10
    rst $38
    dec b
    nop
    ld a, b
    nop
    rst $38
    rst $38
    db $10
    rst $38
    dec b
    nop
    ld e, b
    nop
    rst $38
    rst $38
    db $10
    rst $38
    dec b
    nop
    jr c, jr_00e_6146

jr_00e_6146:
    rst $38
    rst $38
    ld c, h
    ld h, c
    ld e, h
    ld h, c
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
    ld bc, $cfff
    nop
    ld l, $62
    ld bc, $ceff
    nop
    ld [hl], b
    ld h, c
    inc l
    dec b
    inc bc
    rst $38
    adc $00
    rst $38
    rst $38
    dec l
    dec b
    inc bc
    rst $38
    rst $08
    nop
    ld e, d
    rst $38
    ld a, e
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    rlca
    rst $38
    cpl
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
    inc b
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
    jr nc, jr_00e_61d7

    inc e
    rst $38
    ld [bc], a
    inc b
    add hl, de

jr_00e_61d7:
    rst $38
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
    ld b, $00
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    dec sp
    nop
    inc bc
    rst $38
    inc e
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, l
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    add c
    reti


    ld bc, $0000
    rst $38
    ld a, [de]
    nop
    ld [hl+], a
    ld h, d
    ld [de], a
    rst $38
    ld l, l
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
    ld l, $05
    inc d
    rst $38
    db $76
    ld h, c
    rst $38
    rst $38
    ld c, b
    ld h, d
    ld a, [$2062]
    ld h, e
    ld b, [hl]
    ld h, e
    ld l, h
    ld h, e
    sub d
    ld h, e
    cp b
    ld h, e
    sbc $63
    inc b
    ld h, h
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
    ld bc, $77ff
    nop
    ld a, h
    ld h, d
    ld [bc], a
    rst $38
    ld l, a
    nop
    ld [bc], a
    rst $38
    ld [hl], b
    nop
    ld [bc], a
    rst $38
    ld [hl], c
    nop
    ld [bc], a
    rst $38
    ld [hl], d
    nop
    ld [bc], a
    rst $38
    ld [hl], e
    nop
    ld [bc], a
    rst $38
    ld [hl], h
    nop
    ld [bc], a
    rst $38
    ld [hl], l
    nop
    ld [bc], a
    rst $38
    halt
    rst $38
    rst $38
    adc b
    nop
    ld c, d
    ld c, e
    ret c

    ld e, d
    ld e, e
    reti


    call nz, Call_00e_4a00
    ld c, e
    ret c

    ld e, d
    ld e, e
    reti


    ld [bc], a
    ld bc, $4b4a
    ret c

    ld e, d
    ld e, e
    reti


    db $10
    ld bc, $4b4a
    ret c

    ld e, d
    ld e, e
    reti


    ld c, h
    ld bc, $4b4a
    ret c

    ld e, d
    ld e, e
    reti


    add $00
    ld c, d
    ld c, e
    ret c

    ld e, d
    ld e, e
    reti


    ld c, $01
    ld c, d
    ld c, e
    ret c

    ld e, d
    ld e, e
    reti


    add h
    nop
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    ret c

    ld e, d
    ld e, e
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    ret c

    ld c, d
    ld c, e
    ld c, d
    ld c, e
    ret c

    ld e, d
    ld e, e
    ld e, d
    ld e, e
    reti


    jp nz, Jump_00e_4a00

    ld c, e
    ret c

    ld e, d
    ld e, e
    ret c

    ld c, d
    ld c, e
    ret c

    ld e, d
    ld e, e
    reti


    ld c, h
    ld bc, $4b4a
    ld c, d
    ld c, e
    ret c

    ld e, d
    ld e, e
    ld e, d
    ld e, e
    ret c

    ld c, d
    ld c, e
    ld c, d
    ld c, e
    ret c

    ld e, d
    ld e, e
    ld e, d
    ld e, e
    ret c

    ld c, d
    ld c, e
    ret c

    ld e, d
    ld e, e
    reti


    ld bc, $77ff
    nop
    inc e
    ld h, e
    ld bc, $70ff
    nop
    inc e
    ld h, e
    and d
    ld [bc], a
    inc h
    rst $38
    ld a, [hl]
    ld h, d
    ld b, $ff
    inc bc
    rst $38
    ld l, a
    nop
    inc bc
    rst $38
    ld [hl], b
    nop
    dec b
    rst $38
    ld e, l
    ld bc, $ffff
    and e
    ld [bc], a
    rst $38
    rst $38
    ld bc, $77ff
    nop
    ld b, d
    ld h, e
    ld bc, $71ff
    nop
    ld b, d
    ld h, e
    and d
    ld [bc], a
    inc h
    rst $38
    add [hl]
    ld h, d
    ld b, $ff
    inc bc
    rst $38
    ld l, a
    nop
    inc bc
    rst $38
    ld [hl], c
    nop
    dec b
    rst $38
    ld e, l
    ld bc, $ffff
    and e
    ld [bc], a
    rst $38
    rst $38
    ld bc, $77ff
    nop
    ld l, b
    ld h, e
    ld bc, $72ff
    nop
    ld l, b
    ld h, e
    and d
    ld [bc], a
    inc h
    rst $38
    adc [hl]
    ld h, d
    ld b, $ff
    inc bc
    rst $38
    ld l, a
    nop
    inc bc
    rst $38
    ld [hl], d
    nop
    dec b
    rst $38
    ld e, l
    ld bc, $ffff
    and e
    ld [bc], a
    rst $38
    rst $38
    ld bc, $77ff
    nop
    adc [hl]
    ld h, e
    ld bc, $73ff
    nop
    adc [hl]
    ld h, e
    and d
    ld [bc], a
    inc h
    rst $38
    sub [hl]
    ld h, d
    ld b, $ff
    inc bc
    rst $38
    ld l, a
    nop
    inc bc
    rst $38
    ld [hl], e
    nop
    dec b
    rst $38
    ld e, l
    ld bc, $ffff
    and e
    ld [bc], a
    rst $38
    rst $38
    ld bc, $77ff
    nop
    or h
    ld h, e
    ld bc, $74ff
    nop
    or h
    ld h, e
    and d
    ld [bc], a
    inc h
    rst $38
    sbc [hl]
    ld h, d
    ld b, $ff
    inc bc
    rst $38
    ld l, a
    nop
    inc bc
    rst $38
    ld [hl], h
    nop
    dec b
    rst $38
    ld e, l
    ld bc, $ffff
    and e
    ld [bc], a
    rst $38
    rst $38
    ld bc, $77ff
    nop
    db $da, $63, $01

    rst $38
    ld [hl], l
    nop
    jp c, $a263

    ld [bc], a
    inc h
    rst $38
    and [hl]
    ld h, d
    ld b, $ff
    inc bc
    rst $38
    ld l, a
    nop
    inc bc
    rst $38
    ld [hl], l
    nop
    dec b
    rst $38
    ld e, l
    ld bc, $ffff
    and e
    ld [bc], a
    rst $38
    rst $38
    ld bc, $77ff
    nop
    nop
    ld h, h
    ld bc, $76ff
    nop
    nop
    ld h, h
    and d
    ld [bc], a
    inc h
    rst $38
    xor [hl]
    ld h, d
    ld b, $ff
    inc bc
    rst $38
    ld l, a
    nop
    inc bc
    rst $38
    halt
    dec b
    rst $38
    ld e, l
    ld bc, $ffff
    and e
    ld [bc], a
    rst $38
    rst $38
    ld bc, $78ff
    nop
    ld e, h
    ld h, [hl]
    ld bc, $77ff
    nop
    ld h, h
    ld h, l
    ld bc, $6fff
    nop
    ld a, [de]
    ld h, h
    sbc [hl]
    ld [bc], a
    rst $38
    rst $38
    sbc a
    ld [bc], a
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
    ld bc, $0d00
    rst $38
    inc bc
    nop
    dec b
    nop
    nop
    nop
    ld c, b
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    inc e
    rst $38
    nop
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [bc], a
    nop
    db $10
    rst $38
    nop
    nop
    ld e, b
    nop
    dec bc
    rst $38
    nop
    nop
    jr nc, jr_00e_6454

jr_00e_6454:
    ld a, [bc]
    rst $38
    nop
    nop
    ldh [rIE], a
    dec bc
    rst $38
    ld bc, $f000
    rst $38
    ld a, [bc]
    rst $38
    ld bc, $2000
    nop
    dec bc
    rst $38
    ld bc, $f000
    rst $38
    ld a, [bc]
    rst $38
    ld bc, $1000
    nop
    dec bc
    rst $38
    ld bc, $f000
    rst $38
    ld b, a
    rst $38
    nop
    nop
    dec c
    rst $38
    ld bc, $0500
    nop
    add b
    nop
    dec c
    rst $38
    inc bc
    nop
    dec b
    nop
    add b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    inc e
    rst $38
    ld bc, $1901
    rst $38
    add hl, bc
    rst $38
    ld [$1c00], sp
    rst $38
    ld bc, $1901
    rst $38
    inc e
    rst $38
    ld bc, $1901
    rst $38
    add hl, bc
    rst $38
    ld [$1c00], sp
    rst $38
    inc bc
    ld bc, $ff19
    add hl, bc
    rst $38
    ld b, $00
    dec c
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    dec c
    rst $38
    inc bc
    nop
    dec b
    nop
    nop
    nop
    ld c, b
    rst $38
    ld bc, $0900
    rst $38
    ld [bc], a
    nop
    inc a
    rst $38
    rlca
    rst $38
    and b
    ld [bc], a
    inc e
    rst $38
    ld bc, $1904
    rst $38
    ld [de], a
    rst $38
    or d
    ret z

    ld [$2100], sp
    rst $38
    ld h, h
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld [de], a
    rst $38
    sbc e
    ret z

    nop
    nop
    add hl, bc
    rst $38
    ld bc, $1200
    rst $38
    sbc e
    ret z

    jp nc, $0900

    rst $38
    ld bc, $1200
    rst $38
    sbc e
    ret z

    nop
    nop
    add hl, bc
    rst $38
    ld bc, $2400
    rst $38
    xor [hl]
    ld h, d
    inc h
    rst $38
    sub [hl]
    ld h, d
    inc h
    rst $38
    or [hl]
    ld h, d
    inc h
    rst $38
    ret nc

    ld h, d
    inc h
    rst $38
    sbc $62
    ld [de], a
    rst $38
    sbc e
    ret z

    jp nc, $0900

    rst $38
    ld [$0b00], sp
    rst $38
    ld bc, $1000
    nop
    ld a, [bc]
    rst $38
    ld bc, $f000
    rst $38
    dec bc
    rst $38
    ld bc, $1000
    nop
    ld a, [bc]
    rst $38
    ld bc, $f000
    rst $38
    ld c, b
    rst $38
    ld bc, $3d00
    rst $38
    rlca
    rst $38
    and c
    ld [bc], a
    ld a, [bc]
    rst $38
    ld bc, $f000
    rst $38
    dec bc
    rst $38
    ld bc, $2000
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    inc bc
    rst $38
    ld [hl], a
    nop
    ld [de], a
    rst $38
    add d
    reti


    ld bc, $ff00
    rst $38
    and h
    ld [bc], a
    inc bc
    rst $38
    ld a, b
    nop
    ld e, d
    rst $38
    ld h, l
    nop
    rlca
    rst $38
    and [hl]
    ld [bc], a
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
    ld [bc], a
    inc e
    rst $38
    ld [bc], a
    ld d, $19
    rst $38
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
    ld c, c
    rst $38
    nop
    nop
    rlca
    rst $38
    and a
    ld [bc], a
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
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    inc a
    nop
    inc bc
    rst $38
    dec e
    nop
    ld [de], a

jr_00e_65f1:
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    inc sp
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    inc [hl]
    reti


    ld bc, $1200
    rst $38
    dec [hl]
    reti


    ld bc, $1200
    rst $38
    ld [hl], $d9
    ld bc, $1200
    rst $38
    scf
    reti


    ld bc, $1200
    rst $38
    jr c, jr_00e_65f1

    ld bc, $1200
    rst $38
    ccf
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld b, c
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld b, d
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld b, e
    reti


    ld bc, $1200
    rst $38
    ld b, h
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld h, [hl]
    reti


    ld bc, $1200
    rst $38
    ld h, a
    reti


    ld bc, $1200
    rst $38
    ld l, h
    reti


    ld bc, $1200
    rst $38
    add d
    reti


    ld [bc], a
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
    and l
    ld [bc], a
    inc d
    rst $38
    ld l, d
    ld h, l
    rst $38
    rst $38
    ld l, h
    ld h, [hl]
    call z, Call_00e_7c66
    ld h, [hl]
    db $d4, $68, $12
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
    dec c
    rst $38
    ld bc, $1800
    nop
    ld e, b
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    jr jr_00e_668a

jr_00e_668a:
    ld e, b
    nop
    dec c
    rst $38
    inc bc
    nop
    jr jr_00e_6692

jr_00e_6692:
    ld e, b
    nop
    dec c
    rst $38
    inc b
    nop
    jr jr_00e_669a

jr_00e_669a:
    xor b
    nop
    dec c
    rst $38
    dec b
    nop
    jr jr_00e_66a2

jr_00e_66a2:
    ld c, b
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld b, a
    rst $38
    nop
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
    ld c, c
    rst $38
    inc b
    nop
    inc de
    rst $38
    db $e3
    ret c

    dec b
    inc bc
    inc e
    rst $38
    inc b
    dec d
    inc d
    rst $38
    jr jr_00e_6733

    dec c
    rst $38
    ld bc, $1800
    nop
    ld c, b
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    jr jr_00e_66da

jr_00e_66da:
    ld c, b
    nop
    dec c
    rst $38
    inc bc
    nop
    jr jr_00e_66e2

jr_00e_66e2:
    ld c, b
    nop
    dec c
    rst $38
    inc b
    nop
    jr jr_00e_66ea

jr_00e_66ea:
    ld [$0d00], sp
    rst $38
    dec b
    nop
    jr jr_00e_66f2

jr_00e_66f2:
    ld e, b
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    stop
    ld b, a
    rst $38
    nop
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
    ld c, d
    rst $38
    inc b
    nop
    inc de
    rst $38
    db $e3
    ret c

    inc b
    inc bc
    inc e
    rst $38
    inc b
    ld d, $19
    rst $38
    ld c, b
    rst $38
    inc b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld [de], a
    rst $38
    db $ed
    ret z

    inc bc
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    dec c
    rst $38
    dec b

jr_00e_6733:
    nop
    nop
    nop
    nop
    nop
    dec e
    rst $38
    dec de
    rst $38
    ld bc, $d000
    rst $38
    dec de
    rst $38
    inc b
    nop
    ret nc

    rst $38
    add hl, de
    rst $38
    ld e, $ff
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    dec b
    inc b
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    ld hl, $55ff
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    ld hl, $66ff
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec bc
    rst $38
    inc b
    nop
    ld hl, sp-$01
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    ld b, b
    nop
    add hl, bc
    rst $38
    ld [$0700], sp
    rst $38
    ld sp, $3205
    dec b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $9c00
    ld h, a
    inc sp
    dec b
    inc d
    rst $38
    xor [hl]
    ld h, a
    inc [hl]
    dec b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $ac00
    ld h, a
    dec [hl]
    dec b
    inc d
    rst $38
    xor [hl]
    ld h, a
    dec [hl]
    dec b
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    ld [bc], a
    ld [$ff19], sp
    add hl, bc
    rst $38
    inc b
    nop
    rlca
    rst $38
    ld [hl], $05
    dec d
    rst $38
    inc a
    ret z

    ld bc, $ce00
    ld h, a
    scf
    dec b
    inc d
    rst $38
    xor [hl]
    ld l, b
    jr c, jr_00e_67d5

    add hl, bc
    rst $38
    inc b
    nop
    inc e

jr_00e_67d5:
    rst $38
    ld [bc], a
    dec c
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    ld b, $00
    dec b
    nop
    add b
    nop
    inc e
    rst $38
    inc bc
    ld [$ff19], sp
    add hl, bc
    rst $38
    inc b
    nop
    rlca
    rst $38
    add hl, sp
    dec b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $0200
    ld l, b
    ld a, [hl-]
    dec b
    inc d
    rst $38
    xor [hl]
    ld l, b
    dec sp
    dec b
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    inc bc
    dec c
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    dec b
    nop
    add b
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    ld a, [de]
    nop
    jr z, jr_00e_6822

jr_00e_6822:
    inc e
    rst $38
    ld bc, $1908
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    ccf
    rst $38
    rlca
    rst $38
    inc a
    dec b
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    ld b, b
    ld l, b
    dec a
    dec b
    inc d
    rst $38
    xor [hl]
    ld l, b
    ld a, $05
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    ld bc, $0000
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
    ld [de], a
    rst $38
    db $ed
    ret z

    nop
    nop
    add hl, bc
    rst $38
    ld [$0500], sp
    rst $38
    ld a, a
    nop
    ld [de], a
    rst $38
    db $e3
    reti


    dec a
    nop
    inc bc
    rst $38
    ld e, $00
    rlca
    rst $38
    ccf
    dec b
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


    inc bc
    nop
    ld [de], a
    rst $38
    add e
    reti


    ld bc, $0000
    rst $38
    ld l, $00
    sub b
    ld l, b
    ld bc, $0cff
    ld bc, $68a4
    ld bc, $0cff
    ld bc, $689a
    inc d
    rst $38
    xor [hl]
    ld l, b
    ld [de], a
    rst $38
    ld c, h
    reti


    dec b
    nop
    inc d
    rst $38
    xor [hl]
    ld l, b
    ld [de], a
    rst $38
    ld c, h
    reti


    rlca
    nop
    inc d
    rst $38
    xor [hl]
    ld l, b
    dec c
    rst $38
    ld bc, $0000
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
    ld [de], a
    rst $38
    db $ed
    ret z

    nop
    nop
    add hl, bc
    rst $38
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
    ld sp, $4005
    dec b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $ee00
    ld l, b
    ld b, d
    dec b
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
    ld b, c
    dec b
    rst $38
    rst $38
    or $68
    ld b, $69
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
    ld bc, $d2ff
    nop
    sbc $69
    ld bc, $d1ff
    nop
    jr z, jr_00e_697b

    ld bc, $d0ff
    nop
    jr nz, jr_00e_6981

    ld b, e
    dec b
    inc bc
    rst $38
    ret nc

    nop
    rst $38
    rst $38
    ld b, h
    dec b
    inc bc
    rst $38
    pop de
    nop
    rst $38
    rst $38
    ld b, l
    dec b
    inc bc
    rst $38
    jp nc, Jump_00e_5a00

    rst $38
    sub e
    nop
    rlca
    rst $38
    ld b, a
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
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, b

jr_00e_697b:
    rst $38
    nop
    nop
    rlca
    rst $38
    ld b, h

jr_00e_6981:
    ld [$ff1c], sp
    ld bc, $1904
    rst $38
    ld c, l
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
    ld b, $00
    ld b, a
    rst $38
    ld bc, $0800
    rst $38
    ld [de], a
    rst $38
    db $e3
    reti


    ld a, $00
    inc bc
    rst $38
    rra
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, [hl]
    reti


    ld bc, $1200
    rst $38
    add h
    reti


    ld bc, $0000
    rst $38
    jr nz, jr_00e_69ca

jr_00e_69ca:
    jp nc, $1269

    rst $38
    ld l, [hl]
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
    ld b, [hl]
    dec b
    inc d
    rst $38
    ld l, $69
    rst $38
    rst $38
    ld [$fa69], a
    ld l, c
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
    ld bc, $d3ff
    nop
    jp c, $486a

    dec b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $0e00
    ld l, d
    ld c, c
    dec b
    rst $38
    rst $38
    ld c, d
    dec b
    inc bc
    rst $38
    db $d3
    nop
    inc de
    rst $38
    inc bc
    db $da, $97, $00

    inc de
    rst $38
    dec b
    db $da, $95, $00

    inc de
    rst $38
    rlca
    db $da, $98, $00

    ld [de], a
    rst $38
    ld [bc], a
    db $da, $02, $00

    ld e, e
    rst $38
    rlca
    rst $38
    ld c, h
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

    add hl, bc
    inc b
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
    rlca
    rst $38
    ld c, l
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


    ccf
    nop
    inc bc
    rst $38
    jr nz, jr_00e_6ab0

jr_00e_6ab0:
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, [hl]
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    add l
    reti


    ld bc, $0000
    rst $38
    rra
    nop
    adc $6a
    ld [de], a
    rst $38
    ld l, [hl]
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
    ld c, e
    dec b
    inc d
    rst $38
    inc d
    ld l, d
    rst $38
    rst $38
    db $e4
    ld l, d
    rst $38
    rst $38
    ld a, h
    dec h
    inc h
    ld a, h
    ld a, h
    add hl, hl
    ld l, d
    ld a, c
    ld l, d
    inc bc
    ld a, c
    add c
    ld l, d
    dec b
    ld a, c
    add c
    ld l, d
    inc b
    ld a, c
    add a
    ld l, d
    ld a, c
    ld a, c
    ld l, d
    ld a, c
    dec c
    rrca
    inc b
    ld l, d
    add c
    ld a, [hl+]
    inc bc
    ld [hl], c
    add c
    dec c
    inc d
    ld c, $81
    inc d
    inc bc
    ld a, h
    add e
    ld e, l
    ld e, [hl]
    ld e, l
    inc bc
    ld a, h
    add c
    dec de
    inc bc
    db $10
    add h
    dec de
    ld a, h
    ld a, h
    inc e
    inc bc
    ld a, h
    inc bc
    ld [hl], c
    inc bc
    ld a, h
    add h
    inc e
    ld a, h
    ld a, h
    inc h
    inc bc
    ld [hl], c
    add a
    ld a, h
    dec h
    inc e
    inc e
    ld a, h
    ld a, h
    dec c
    rlca
    ld c, $81
    ld h, $03
    ld b, $8e
    daa
    ld c, $0f
    ld [hl], $2d
    scf
    ld a, b
    inc [hl]
    ld l, $2f
    inc sp
    ld [hl], $2d
    scf
    inc bc
    ld [hl], b
    adc [hl]
    ld [hl], $37
    ld [hl], b
    ld [hl], $37
    inc sp
    ld a, b
    ld [hl], b
    dec d
    ld d, $17
    ld [hl], $2d
    scf
    inc b
    ld a, b
    add l
    ld [hl], $37
    inc [hl]
    ld a, b
    dec c
    inc b
    ld c, $84
    rrca
    ld a, c
    ld a, c
    ld a, [hl+]
    inc bc
    ld a, h
    add [hl]
    dec h
    ld a, h
    ld a, h
    add hl, hl
    ld a, c
    ld l, d
    inc b
    ld a, c
    add [hl]
    dec b
    ld b, $06
    rlca
    ld a, c
    ld l, d
    inc b
    ld a, c
    adc b
    ld l, d
    ld a, c
    ld a, c
    ld l, d
    ld a, c
    dec b
    daa
    rrca
    inc b
    ld l, d
    add c
    ld a, [hl+]
    inc bc
    ld [hl], c
    add c
    dec c
    inc d
    ld c, $86
    inc d
    ld a, h
    db $fc
    ld a, h
    ld a, h
    ld d, l
    inc bc
    ld a, h
    add c
    dec de
    inc bc
    db $10
    adc b
    dec de
    ld a, h
    ld a, h
    inc h
    ld a, h
    dec h
    inc e
    ld a, h
    inc b
    ld [hl], c
    add [hl]
    ld a, h
    inc h
    ld a, h
    dec h
    inc h
    ld a, h
    inc bc
    ld [hl], c
    add a
    ld a, h
    inc h
    ld a, h
    ld a, h
    dec h
    inc h
    dec c
    dec c
    ld c, $9c
    rrca
    dec a
    ccf
    ld [hl], b
    ld [hl], b
    inc [hl]
    ld [hl], $37
    inc sp
    dec a
    ccf
    ld [hl], b
    ld a, b
    ld [hl], b
    ld a, b
    dec [hl]
    ld a, b
    ld [hl], b
    dec [hl]
    ld a, b
    inc sp
    ld [hl], b
    ld a, b
    inc sp
    ld [hl], b
    inc [hl]
    dec a
    ccf
    inc b
    ld [hl], b
    add [hl]
    ld a, b
    dec [hl]
    ld a, b
    inc [hl]
    ld a, b
    dec c
    inc b
    ld c, $8e
    rrca
    ld a, c
    dec e
    ld a, [hl+]
    ld e, l
    ld e, [hl]
    ld e, l
    ld a, h
    dec h
    ld a, h
    add hl, hl
    dec b
    ld b, $07
    inc bc
    ld a, c

jr_00e_6bf3:
    add h
    dec c
    ld c, $0e
    ld h, $04
    ld b, $81
    rlca
    ld b, $79
    add e

jr_00e_6bff:
    dec c
    ld c, $0f
    inc b
    ld l, d
    add c
    ld a, [hl+]
    inc bc
    ld [hl], c
    add c
    dec c
    inc d
    ld c, $82
    dec bc
    inc c
    ld a, [bc]
    db $10
    adc c
    dec de
    ld a, h
    ld a, h
    inc h
    ld a, h
    ld a, h
    inc h
    ld a, h
    dec h
    ld [$817c], sp
    dec h
    inc b
    ld a, h
    add c
    inc h
    inc bc
    ld a, h
    add e
    inc h
    ld a, h
    dec c
    dec c
    ld c, $89
    rrca
    ld a, b
    ld [hl], b
    ld [hl], b
    ld a, b
    inc [hl]
    dec [hl]
    ld a, b
    inc sp
    inc bc
    ld a, b
    ld b, $70
    adc d
    ld a, b
    ld a, b
    inc sp
    ld a, b
    ld a, b
    dec b
    ld b, $07
    ld a, b
    ld a, b
    inc bc
    ld [hl], b
    add a
    ld a, b
    ld [hl], b
    ld a, b
    ld a, b
    inc [hl]
    ld [hl], b
    dec c
    inc b
    ld c, $8e
    rrca
    ld a, c
    or $2a
    ld a, h
    ld d, l
    ld a, h
    dec b
    rlca
    jr nc, @+$4e

    dec d
    ld d, $17
    inc bc
    ld c, h
    add c
    dec d
    rlca
    ld d, $81
    rla
    ld b, $4c
    add e
    dec d
    ld d, $17
    dec b
    ld c, h
    inc bc
    jr nc, jr_00e_6bf3

    dec c
    inc d
    ld c, $83
    add hl, sp
    dec bc
    inc c
    ld a, [bc]
    add hl, sp
    dec de
    jr nc, jr_00e_6bff

    dec c
    dec c
    ld c, $89
    ld h, $56
    ld [hl], b
    ld [hl], b
    ld a, b
    inc [hl]
    ld a, b
    ld a, b
    inc sp
    inc b
    ld a, b
    sub b
    ld [hl], b
    ld a, b
    ld [hl], b
    ld a, b
    ld [hl], b
    ld a, b
    ld a, b
    inc sp
    ld a, b
    ld [hl], b
    dec c
    ld c, $0f
    ld [hl], b
    ld [hl], b
    ld a, b
    inc b
    ld [hl], b
    add l
    ld a, b
    ld a, b
    inc [hl]
    ld [hl], b
    dec c
    inc b
    ld c, $81
    ld h, $06
    ld b, $84
    daa
    rrca
    ld a, b
    ld a, b
    jr nz, jr_00e_6ccd

    add c
    dec c
    inc d
    ld c, $84
    ld b, h
    ld b, h
    dec bc
    inc c
    add hl, bc
    ld b, h
    sub b
    ld a, b
    ld a, b
    ld l, $2d
    cpl
    ld a, b
    dec a
    ld a, $3f
    dec [hl]
    ld a, b
    ld a, b
    dec a
    ccf

jr_00e_6ccd:
    ld l, $2f
    inc bc
    ld a, b
    adc c
    ld l, $2f
    dec [hl]
    ld a, b
    dec a
    ccf
    ld a, b
    ld a, b
    dec c
    ld c, $0e
    add c
    rrca
    inc bc
    ld a, b
    add h
    inc [hl]
    ld a, b
    ld a, b
    inc sp
    dec bc
    ld a, b
    add [hl]
    inc sp
    ld a, b
    ld a, b
    dec c
    ld c, $0f
    add hl, bc
    ld a, b
    add e
    inc [hl]
    ld a, b
    dec c
    inc c
    ld c, $83
    rrca
    ld a, b
    ld a, b
    jr nz, jr_00e_6d17

    add c
    dec c
    dec c
    ld c, $83
    ld e, $16
    rra
    inc bc
    ld c, $8f
    ld e, $16
    ld d, $1f
    ld c, $0e
    ld e, $1f
    ld c, $0e
    ld e, $1f
    ld e, $16
    rra

jr_00e_6d17:
    ld b, c
    ld c, $83
    ld e, $16
    rra
    dec b
    ld c, $84
    ld e, $16
    ld d, $1f
    dec [hl]
    ld c, $84
    ld e, $16
    ld d, $1f
    inc b
    ld c, $84
    ld e, $4a
    ld a, e
    ld c, e
    inc bc
    ld d, $90
    ld c, d
    ld a, e
    ld a, e
    ld c, e
    ld d, $16
    ld c, d
    ld c, e
    rra
    ld e, $4a
    ld c, e
    ld c, d
    ld a, e
    ld c, e
    rra
    ld sp, $810e
    ld e, $03
    ld d, $81
    rra
    rlca
    ld c, $93
    ld e, $16
    ld d, $4a
    ld a, e
    ld c, e
    ld d, $1f
    ld c, $0e
    ld e, $4a
    ld a, e
    ld a, e
    ld c, e
    ld d, $1f
    ld e, $1f
    ld sp, $840e
    rrca
    ld l, e
    ld l, e
    dec c
    inc b
    ld c, $81
    rrca
    inc b
    ld l, e
    ld a, [bc]
    ld a, e
    add e
    ld c, e
    ld c, d
    ld a, e
    inc b
    ld l, e
    add c
    dec c
    ld sp, $810e
    rrca
    inc bc
    ld l, e
    add c
    dec c
    ld b, $0e
    add d
    ld e, $4a
    ld b, $7b
    add h
    ld c, e
    rra
    ld e, $4a
    dec b
    ld a, e
    add h
    ld c, e
    ld c, d
    ld c, e
    rra
    jr nc, jr_00e_6da5

    add e
    rrca
    ld l, e
    ld l, e
    dec b
    ld h, d
    add c
    ld e, e
    inc b
    ld l, e
    dec c
    ld a, e
    inc b
    ld l, e

jr_00e_6da5:
    add c
    dec c
    ld sp, $810e
    rrca
    inc bc
    ld l, e
    add c
    dec c
    ld b, $0e
    add c
    rrca
    ld [$827b], sp
    dec c
    rrca
    add hl, bc
    ld a, e
    add c
    dec c
    jr nc, jr_00e_6dcc

    add e
    rrca
    ld l, e
    ld l, e
    dec b
    ld h, d
    add c
    ld e, e
    inc b
    ld a, e
    add c
    inc hl
    dec b
    ld a, e

jr_00e_6dcc:
    add d
    dec b
    rlca
    inc b
    ld a, e
    add c
    inc hl
    inc b
    ld a, e
    add c
    dec c
    ld sp, $810e
    rrca
    inc bc
    ld l, e
    rlca
    ld h, d
    add c
    ld e, e
    ld [$827b], sp
    dec d
    rla
    add hl, bc
    ld a, e
    add c
    dec c
    jr nc, jr_00e_6dfa

    add h
    rrca
    ld l, e
    ld l, e
    dec c
    inc b
    ld c, $81
    rrca
    inc b
    ld a, e
    add e
    inc hl
    ld a, e

jr_00e_6dfa:
    ld [hl-], a
    inc bc
    ld a, e
    add a
    dec c
    rrca
    ld a, e
    ld a, e
    ld [hl-], a
    ld a, e
    inc hl
    inc b
    ld a, e
    add c
    dec c
    ld a, [hl+]
    ld c, $06
    ld a, c
    add d
    rrca
    rrca
    inc bc
    ld l, e
    rlca
    ld h, d
    add c
    ld e, e
    inc bc
    ld a, e
    add c
    ld [hl-], a
    ld [$817b], sp
    ld [hl-], a
    ld b, $7b
    add c
    dec c
    jr nc, jr_00e_6e32

    add h
    rrca
    ld l, e
    ld l, e
    dec c
    inc b
    ld c, $81
    rrca
    inc b
    ld a, e
    adc l
    inc hl
    ld a, e

jr_00e_6e32:
    or $7b
    ld a, e
    jr nz, jr_00e_6e44

    rrca
    ld [hl+], a
    ld a, e
    or $7b
    inc hl
    inc b
    ld a, e
    add c
    dec c
    inc b
    ld c, $87

jr_00e_6e44:
    rrca
    ld a, h
    ld b, d
    ld a, d
    ld a, d
    ld b, c
    ld b, d
    inc b
    ld a, d
    sub b
    ld c, b
    ld c, b
    ld a, d
    ld a, d
    ld c, b
    ld a, d
    ld a, d
    dec c
    ld c, $0f
    ld l, d
    ld [bc], a
    inc bc
    dec c
    ld c, $0f
    dec bc
    ld a, d
    add c
    add hl, hl
    dec b
    ld a, c
    add d
    dec c
    rrca
    inc bc
    ld l, e
    rlca
    ld h, d
    add c
    ld e, e
    inc bc
    ld a, e
    add c
    or $08
    ld a, e
    add h
    or $7b
    jr nz, jr_00e_6e9a

    inc bc
    ld a, e
    add c
    dec c
    jr nc, jr_00e_6e8c

    add h
    ld h, $5a
    ld b, $27
    inc b
    ld c, $81
    ld h, $03
    ld e, d
    rlca
    ld b, $82

jr_00e_6e8c:
    daa
    ld h, $06
    ld b, $03
    ld e, d
    add c
    daa
    inc b
    ld c, $a1
    rrca
    inc e
    ld a, h

jr_00e_6e9a:
    ld b, d
    ld b, c
    ld a, h
    ld a, h
    ld b, d
    ld c, b
    ld c, b
    ld b, c
    ld a, h
    ld a, h
    ld b, d
    ld b, c
    ld a, h
    ld b, d
    ld a, d
    dec c
    ld c, $0f
    ld l, d
    ld a, [hl]
    ld a, a
    dec c
    ld c, $0f
    ld a, d
    nop
    ld bc, $487a
    ld c, b
    dec b
    ld a, d
    add c
    add hl, hl
    dec b
    ld a, c
    add d
    dec c
    ld h, $03
    ld b, $81
    daa
    ld b, $0e
    adc b
    rrca
    ld a, e
    ld a, e
    jr nz, jr_00e_6eee

    ld hl, $0522
    inc c
    ld b, $81
    daa
    ld sp, $820e
    ld h, d
    ld h, d
    ld b, $0e
    dec b
    ld h, d
    dec bc
    ld c, $05
    ld h, d
    dec b
    ld c, $84
    rrca
    ld a, h
    dec h
    inc h
    inc bc
    ld a, h
    add e
    inc h
    ld a, h
    dec h

jr_00e_6eee:
    inc bc
    ld a, h
    add c
    inc h
    inc bc
    ld a, h
    sbc h
    ld b, d
    dec c
    ld c, $0f
    ld [bc], a
    inc bc
    ld l, d
    dec c
    ld c, $0f
    ld b, d
    ld [$4109], sp
    ld a, h
    ld a, h
    ld b, d
    ld a, d
    ld a, d
    ld c, b
    ld b, c
    add hl, hl
    ld a, c
    ld a, c
    dec e
    ld a, c
    ld a, c
    dec c
    dec bc
    ld c, $81
    rrca
    ld b, $7b
    add c
    ld c, e
    inc b
    ld d, $84
    rra
    ld c, $0e
    ld e, $04
    ld d, $81
    rra
    jr nc, @+$10

    add h
    rrca
    ld hl, $0d6b
    inc b
    ld c, $82
    rrca
    ld [hl+], a
    inc b
    ld a, e
    add d
    ld d, $1f
    rlca
    ld c, $82
    ld e, $16
    inc b
    ld a, e
    add d
    jr nz, jr_00e_6f4c

    inc b
    ld c, $87
    rrca
    ld a, h
    inc h
    ld a, h
    ld a, h
    inc e
    inc h
    inc bc
    ld a, h
    add e

jr_00e_6f4c:
    dec h
    ld a, h
    inc h
    inc b
    ld [hl], c
    adc l
    ld a, h
    dec d
    ld d, $17
    ld a, [hl]
    ld a, a
    ld l, d
    dec d
    ld d, $17
    ld a, h
    ld b, d
    ld b, c
    inc b
    ld a, h
    adc e
    ld b, d
    ld b, c
    ld a, h
    dec h
    add hl, hl
    ld a, c
    ld a, c
    or $79
    ld a, c
    dec c
    dec bc
    ld c, $83
    ld h, $06
    rlca
    add hl, bc
    ld a, e
    add h
    ld c, e
    ld d, $16
    ld c, d
    inc b
    ld l, e
    add c
    dec c
    jr nc, jr_00e_6f8e

    add h
    rrca
    ld l, e
    ld l, e
    dec c
    inc b
    ld c, $82
    rrca
    ld a, [hl+]
    inc b
    ld a, e
    add d
    ld l, e

jr_00e_6f8e:
    dec d
    rlca
    ld d, $81
    rla
    inc bc
    ld l, e
    adc c
    ld a, e
    ld a, e
    add hl, hl
    dec c
    ld c, $1e
    ld d, $16
    rla
    inc bc
    ld a, h
    add e
    inc h
    ld a, h
    dec h
    inc b
    ld a, h
    add d
    dec h
    ld a, h
    inc b
    ld [hl], c
    add h
    ld a, h
    add hl, hl
    ld a, c
    ld a, [hl+]
    inc bc
    ld a, c
    add h
    add hl, hl
    ld a, c
    ld a, [hl+]
    ld a, h
    rlca
    ld [hl], c
    add h
    dec h
    ld a, h
    ld a, h
    dec b
    dec b
    ld b, $81
    daa
    dec c
    ld c, $83
    ld h, $06
    rlca
    dec b
    ld a, e
    inc bc
    inc hl
    inc bc
    ld a, e
    inc b
    ld l, e
    add c
    dec c
    jr nc, jr_00e_6fe3

    add h
    rrca
    ld hl, $0d6b
    inc b
    ld c, $83
    ld h, $06
    rlca
    inc bc
    ld a, e
    add d

jr_00e_6fe3:
    ld l, e
    ld e, c
    rlca
    ld l, e
    add c
    ld e, c
    inc bc
    ld l, e
    adc h
    ld a, e
    dec b
    ld b, $27
    ld c, $0f
    ld a, c
    ld a, c
    ld a, [hl+]
    ld a, h
    ld a, h
    inc h
    inc b
    ld a, h
    add d
    dec b
    rlca
    inc bc
    ld a, h
    inc b
    ld [hl], c
    add h
    ld a, h
    add hl, hl
    ld a, c
    ld a, [hl+]
    inc bc
    ld a, c
    add h
    add hl, hl
    ld a, c
    ld a, [hl+]
    ld a, h
    rlca
    ld [hl], c
    add h
    ld a, h
    dec h
    inc h
    dec c
    dec d
    ld c, $81
    rrca
    dec b
    ld a, e
    inc bc
    inc hl
    inc bc
    ld a, e
    inc b
    ld l, e
    add c
    dec c
    jr nc, jr_00e_7032

    add h
    rrca
    ld l, e
    ld l, e
    dec c
    ld b, $0e
    add [hl]
    rrca
    ld a, e
    ld a, e
    ld l, e
    ld l, e
    ld e, c

jr_00e_7032:
    rlca
    ld l, e
    add c
    ld e, c
    inc bc
    ld l, e
    add d
    ld a, e
    dec c
    inc bc
    ld c, $90
    rrca
    ld a, c
    dec e
    ld a, [hl+]
    ld a, h
    ld e, l
    ld e, [hl]
    ld e, l
    ld a, h
    ld a, h
    dec b
    daa
    ld h, $07
    ld a, h
    ld a, h
    inc b
    ld [hl], c
    add h
    ld a, h
    add hl, hl
    ld a, c
    ld a, [hl+]
    inc bc
    ld a, c
    add h
    add hl, hl
    ld a, c
    ld a, [hl+]
    ld a, h
    rlca
    ld [hl], c
    add h
    ld a, h
    inc h
    ld a, h
    dec c
    dec d
    ld c, $84
    ld h, $06
    ld b, $07
    ld b, $23
    ld b, $7b
    add c
    dec c
    jr nc, jr_00e_7080

    add h
    rrca
    ld hl, $0d6b
    ld b, $0e
    add [hl]
    ld h, $07
    ld a, e
    ld l, e
    ld l, e
    ld e, c

jr_00e_7080:
    rlca
    ld l, e
    add c
    ld e, c
    inc bc
    ld l, e
    add d
    dec b
    daa
    inc bc
    ld c, $8f
    rrca
    ld a, c
    or $2a
    ld a, h
    ld a, h
    ld d, l
    ld a, h
    ld a, h
    dec b
    daa
    ld c, $0e
    ld h, $07
    ld b, $30
    add hl, bc
    ld c, h
    dec bc
    jr nc, @-$7d

    dec c
    jr jr_00e_70b3

    add c
    rrca
    ld b, $23
    ld b, $7b
    add c
    dec c
    jr nc, jr_00e_70bd

    add h
    rrca
    ld l, e
    ld l, e

jr_00e_70b3:
    dec c
    rlca
    ld c, $81
    ld h, $0f
    ld b, $81
    daa
    inc b

jr_00e_70bd:
    ld c, $81
    ld h, $08
    ld b, $81
    daa
    inc b
    ld c, $82
    ld h, $07
    inc bc
    ld a, b
    ld d, $1a
    add c
    dec c
    jr jr_00e_70df

    add c
    ld h, $0c
    ld b, $81
    daa
    jr nc, jr_00e_70e7

    add h
    ld h, $06
    ld b, $27
    dec hl

jr_00e_70df:
    ld c, $84
    ld h, $07
    ld a, b
    ld a, b
    ld d, $1a

jr_00e_70e7:
    add c
    dec c
    ld a, a
    ld c, $7f
    ld c, $7f
    ld c, $7f
    ld c, $7f
    ld c, $7f
    ld c, $7f
    ld c, $7f
    ld c, $7f
    ld c, $7f
    ld c, $7f
    ld c, $7f
    ld c, $7f
    ld c, $7f
    ld c, $7f
    ld c, $7f
    ld c, $7f
    ld c, $7f
    ld c, $7f
    ld c, $7f
    ld c, $6a
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00e_7c66:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
