; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]
    ;rom bank
    db $0c
    
    ;code jump table
    db $07, $40, $2F, $40, $10, $41
    
Call_00c_4007:			;jumped to by call_004_71ef's RST10 call.
    ld a, [$d8d3]		;
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $41ba		;data block. First 2 bytes may be a pointer
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
    
    ld a, [$d8d5]		;unknown counter from rom bank 4
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


    ld hl, $ffb7	;jump table address 2
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
    call Call_00c_4007
    push bc
    call Call_00c_40e7
    pop bc

Call_00c_4075:
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
    jr z, jr_00c_40a0

    ld b, a

jr_00c_409a:
    call Call_00c_40da
    dec b
    jr nz, jr_00c_409a

jr_00c_40a0:
    ld a, l
    ld [$d8e7], a
    ld a, h
    ld [$d8e8], a
    pop bc

jr_00c_40a9:
    ld a, [bc]
    inc bc
    cp $d9
    ret z

    cp $d8
    jr nz, jr_00c_40d2

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
    jr jr_00c_40a9

jr_00c_40d2:
    call Write_gfx_tile
    call Call_00c_40da
    jr jr_00c_40a9

Call_00c_40da:
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


Call_00c_40e7:
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

jr_00c_40f5:
    push hl

jr_00c_40f6:
    ld a, [bc]
    inc bc
    cp $d9
    jr z, jr_00c_410e

    cp $d8
    jr nz, jr_00c_410b

    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_00c_40f5

jr_00c_410b:
    ld [hl+], a
    jr jr_00c_40f6

jr_00c_410e:
    pop hl
    ret


    ld hl, $ffb7		;jump table address 3
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
    call Call_00c_4007
    push bc
    call Call_00c_4171
    pop bc
    ld a, [$c81d]
    or a
    ret z

    di
    call Call_000_1aa6
    ld a, $01
    ldh [rVBK], a
    ei
    call Call_00c_4075
    di
    call Call_000_1aa6
    ld a, $00
    ldh [rVBK], a
    ei
    ret


Call_00c_4171:
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc

jr_00c_4177:
    push hl

jr_00c_4178:
    ld a, [bc]
    inc bc
    cp $d9
    jr z, jr_00c_4193

    cp $d8
    jr nz, jr_00c_418d

    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_00c_4177

jr_00c_418d:
    call Call_00c_4195
    inc hl
    jr jr_00c_4178

jr_00c_4193:
    pop hl
    ret


Call_00c_4195:
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
    jr c, jr_00c_41b0

    swap a
    and $f0
    ld d, a
    ld a, [hl]
    and $0f
    jr jr_00c_41b6

jr_00c_41b0:
    and $0f
    ld d, a
    ld a, [hl]
    and $f0

jr_00c_41b6:
    or d
    ld [hl], a
    pop hl
    ret


    add $41
    ei
    ld d, l
    dec e
    ld e, [hl]
    inc sp
    ld h, [hl]
    ld a, a
    ld l, b
    rst $08
    ld [hl], c
    xor $41
    db $ed
    ld d, b
    rst $38
    ld d, b
    ld de, $9151
    ld d, c
    ld de, $2352
    ld d, d
    dec [hl]
    ld d, d
    dec a
    ld d, d
    ld b, a
    ld d, d
    ld [hl], a
    ld d, d
    pop de
    ld d, d
    push de
    ld d, d
    ld bc, $df53
    ld d, h
    ld l, e
    ld d, l
    ld l, a
    ld d, l
    add a
    ld d, l
    xor c
    ld d, l
    jp hl


    ld d, l
    ld c, $ff
    ld bc, $4600
    ld b, d
    ld c, $ff
    dec b
    nop
    db $fc
    ld b, c
    rst $38
    rst $38
    dec d
    rst $38
    ld d, c
    reti


    rst $38
    nop
    ld [de], a
    ld b, d
    ld bc, $f1ff
    nop
    ld a, [$0141]
    rst $38
    xor $00
    xor b
    ld d, b
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
    ld [$0bff], sp
    rst $38
    inc b
    nop
    jr nz, jr_00c_4222

jr_00c_4222:
    rlca
    rst $38
    dec d
    nop
    ld b, $ff
    dec bc
    rst $38
    inc b
    nop
    add b
    rst $38
    inc bc
    rst $38
    ld bc, $1200
    rst $38
    inc l
    reti


    ld bc, $1200
    rst $38
    dec l
    reti


    ld bc, $1200
    rst $38
    ld d, c
    reti


    nop
    nop
    rst $38
    rst $38
    dec d
    rst $38
    dec hl
    reti


    nop
    nop
    ld [hl], b
    ld b, d
    dec d
    rst $38
    dec hl
    reti


    inc b
    nop
    ld [hl], b
    ld b, d
    dec d
    rst $38
    dec hl
    reti


    ld b, $00
    ld a, [bc]
    ld c, c
    dec d
    rst $38
    dec hl
    reti


    rlca
    nop
    ldh [rBGP], a
    dec d
    rst $38
    dec hl
    reti


    ld [$0a00], sp
    ld c, c
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    ld a, [$0141]
    rst $38
    xor $00
    cp d
    ld b, h
    ld bc, $9aff
    nop
    ld a, [$0141]
    rst $38
    scf
    nop
    jr c, jr_00c_42cc

    ld bc, $69ff
    nop
    ld a, [$0141]
    rst $38
    inc sp
    nop
    inc c
    ld b, h
    ld bc, $3eff
    nop
    ld a, [$0141]
    rst $38
    jr nc, jr_00c_429e

jr_00c_429e:
    adc h
    ld b, e
    ld bc, $08ff
    nop
    ld a, [$0141]
    rst $38
    rlca
    nop
    db $ec
    ld b, d
    ld bc, $02ff
    nop
    ld a, [$1041]
    rst $38
    nop
    nop
    add sp, $00
    dec bc
    rst $38
    nop
    nop
    ldh [rIE], a
    rlca
    rst $38
    jr nz, jr_00c_42c2

jr_00c_42c2:
    ld b, $ff
    ld [de], a
    rst $38
    db $f4
    ret z

    nop
    nop
    inc de
    rst $38

jr_00c_42cc:
    ld a, [c]
    ret z

    ld b, d
    jp z, $ff04

    rrca
    nop
    nop
    nop
    add hl, hl
    rst $38
    ld bc, $0700
    rst $38
    ld hl, $0600
    rst $38
    inc bc
    rst $38
    ld [bc], a
    nop
    ld [de], a
    rst $38
    inc l
    reti


    ld [bc], a
    nop
    rst $38
    rst $38
    db $10
    rst $38
    nop
    nop
    add sp, $00
    dec bc
    rst $38
    nop
    nop
    ldh [rIE], a
    rlca
    rst $38
    ld b, l
    nop
    ld b, $ff
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld [bc], a
    nop
    ld h, b
    nop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    jr jr_00c_430c

jr_00c_430c:
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld [bc], a
    nop
    and b
    rst $38
    add hl, de
    rst $38
    ld c, b
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
    ld [hl+], a
    rst $38
    dec de
    rst $38
    inc b
    nop
    ldh [rIE], a
    add hl, de
    rst $38
    rlca
    rst $38
    ld b, [hl]
    nop
    ld b, a
    nop
    ld c, b
    nop
    ld c, c
    nop
    ld b, $ff
    ld c, h
    rst $38
    dec bc
    rst $38
    nop
    nop
    ldh a, [rIE]
    dec a
    rst $38
    rlca
    rst $38
    ld c, d
    nop
    ld b, $ff
    add hl, bc
    rst $38
    ld [bc], a
    nop
    inc e
    rst $38
    inc b
    inc b
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec a
    rst $38
    rlca
    rst $38
    ld c, e
    nop
    ld c, h
    nop
    ld b, $ff
    inc bc
    rst $38
    ld [$1200], sp
    rst $38
    dec hl
    reti


    ld bc, $1200
    rst $38
    inc l
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    inc a
    reti


    ld bc, $1200
    rst $38
    ccf
    reti


    ld bc, $1200
    rst $38
    ld b, b
    reti


    ld bc, $1200
    rst $38
    ld b, h
    reti


    ld bc, $1400
    rst $38
    xor $46
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld b, a
    rst $38
    nop
    nop
    ld [de], a
    rst $38
    db $ec
    ret z

    nop
    nop
    ld [de], a
    rst $38
    db $ed
    ret z

    ld c, $00
    dec c
    rst $38
    ld b, $00
    nop
    nop
    nop
    nop
    ld [$07ff], sp
    rst $38
    ld b, a
    ld bc, $ff0b
    ld b, $00
    ret nc

    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    nop
    rlca
    rst $38
    ld c, b
    ld bc, $ff09
    ld [bc], a
    nop
    ld c, c
    rst $38
    ld b, $00
    add hl, bc
    rst $38
    ld [bc], a
    nop
    rlca
    rst $38
    ld c, c
    ld bc, $ff09
    ld [bc], a
    nop
    ld b, a
    rst $38
    ld b, $00
    add hl, bc
    rst $38
    ld [bc], a
    nop
    rlca
    rst $38
    ld c, d
    ld bc, $ff09
    ld [bc], a
    nop
    ld c, b
    rst $38
    ld b, $00
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec bc
    rst $38
    ld b, $00
    jr nc, jr_00c_43f2

jr_00c_43f2:
    dec c
    rst $38
    ld b, $00
    nop
    nop
    ld b, b
    nop
    rlca
    rst $38
    ld c, e
    ld bc, $ff03
    ld a, $00
    ld [de], a
    rst $38
    dec hl
    reti


    inc bc
    nop
    inc d
    rst $38
    xor $46
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld b, a
    rst $38
    nop
    nop
    ld [de], a
    rst $38
    db $ec
    ret z

    nop
    nop
    ld [de], a
    rst $38
    db $ed
    ret z

    ld c, $00
    ld [$07ff], sp
    rst $38
    ld [hl], d
    ld [bc], a
    inc bc
    rst $38
    ld l, c
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    inc bc
    nop
    inc d
    rst $38
    xor $46
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld b, a
    rst $38
    nop
    nop
    ld [de], a
    rst $38
    db $ec
    ret z

    nop
    nop
    ld [de], a
    rst $38
    db $ed
    ret z

    ld c, $00
    dec c
    rst $38
    ld b, $00
    nop
    nop
    nop
    nop
    ld [$07ff], sp
    rst $38
    db $10
    inc b
    dec bc
    rst $38
    ld b, $00
    ret nc

    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    nop
    rlca
    rst $38
    ld de, $1204
    inc b
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, c
    rst $38
    ld b, $00
    add hl, bc
    rst $38
    ld [bc], a
    nop
    rlca
    rst $38
    inc de
    inc b
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld b, a
    rst $38
    ld b, $00
    add hl, bc
    rst $38
    ld [bc], a
    nop
    rlca
    rst $38
    inc d
    inc b
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, b
    rst $38
    ld b, $00
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec bc
    rst $38
    ld b, $00
    jr nc, jr_00c_44a0

jr_00c_44a0:
    dec c
    rst $38
    ld b, $00
    nop
    nop
    ld b, b
    nop
    rlca
    rst $38
    dec d
    inc b
    inc bc
    rst $38
    sbc d
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    inc bc
    nop
    inc d
    rst $38
    xor $46
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld b, a
    rst $38
    nop
    nop
    ld [de], a
    rst $38
    db $ec
    ret z

    nop
    nop
    ld [de], a
    rst $38
    db $ed
    ret z

    ld c, $00
    ld [$0bff], sp
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    ld a, [bc]
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    ld c, d
    rst $38
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
    ldh [rIE], a
    rlca
    rst $38
    cp b
    dec b
    ld [de], a
    rst $38
    db $ed
    ret z

    rrca
    nop
    dec c
    rst $38
    rlca
    nop
    nop
    nop
    nop
    nop
    ld [$0aff], sp
    rst $38
    nop
    nop
    stop
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
    dec bc
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld b, a
    rst $38
    nop
    nop
    ld [$45ff], sp
    rst $38
    ld d, $ff
    dec d
    rst $38
    cp c
    db $ca, $01, $00

    xor h
    ld b, l
    ld hl, $00ff
    nop
    dec c
    rst $38
    ld [$0000], sp
    nop
    nop
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

    jp nc, $4800

    rst $38
    rlca
    nop
    add hl, bc
    rst $38
    ld [$1200], sp
    rst $38
    db $ed
    ret z

    dec c
    nop
    dec c
    rst $38
    ld [$0000], sp
    nop
    ld b, b
    nop
    dec c
    rst $38
    ld [$1800], sp
    nop
    ld hl, sp+$00
    dec d
    rst $38
    cp c
    db $ca, $02, $00

    xor h
    ld b, l
    ld hl, $00ff
    nop
    dec c
    rst $38
    ld [$0000], sp
    nop
    nop
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
    ld [$1200], sp
    rst $38
    db $ed
    ret z

    add hl, bc
    nop
    dec c
    rst $38
    ld [$0000], sp
    nop
    ld b, b
    nop
    dec c
    rst $38
    ld [$1800], sp
    nop
    ld hl, sp+$00
    dec c
    rst $38
    ld [$1a00], sp
    nop
    ld e, b
    nop
    ld hl, $00ff
    nop
    dec c
    rst $38
    ld [$0000], sp
    nop
    nop
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
    ld bc, $1200
    rst $38
    sbc e
    ret z

    db $d2, $00, $15

    rst $38
    cp c
    db $ca, $01, $00

    ldh a, [rLYC]
    dec d
    rst $38
    cp c
    db $ca, $02, $00

    ldh a, [rLYC]
    ld c, d
    rst $38
    rlca
    nop
    add hl, bc
    rst $38
    ld [$1200], sp
    rst $38
    db $ed
    ret z

    ld bc, $0d00
    rst $38
    ld [$0000], sp
    nop
    ld b, b
    nop
    add hl, bc
    rst $38
    ld [$1c00], sp
    rst $38
    rlca
    ld bc, $ff19
    add hl, bc
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    rlca
    nop
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    rlca
    inc b
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    rlca
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
    inc b
    nop
    rlca
    rst $38
    cp c
    dec b
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    stop
    ld c, c
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    inc h
    rst $38
    ld [c], a
    ld d, b
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld bc, $2100
    rst $38
    ld d, c
    nop
    add hl, bc
    rst $38
    ld bc, $0d00
    rst $38
    dec b
    nop
    nop
    nop
    ld b, b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld [$0300], sp
    rst $38
    pop af
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    dec b
    nop
    ld [de], a
    rst $38
    inc l
    reti


    inc b
    nop
    ld [de], a
    rst $38
    dec l
    reti


    inc bc
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


    ld [bc], a
    nop
    ld [de], a
    rst $38
    db $ed
    ret z

    nop
    nop
    rst $38
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    stop
    ld c, c
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    inc h
    rst $38
    ld [c], a
    ld d, b
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld bc, $2100
    rst $38
    ld d, c
    nop
    add hl, bc
    rst $38
    ld bc, $0d00
    rst $38
    dec b
    nop
    nop
    nop
    ld b, b
    nop
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    ldh a, [rIE]
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld bc, $eeff
    nop
    sbc d
    ld b, a
    ld bc, $37ff
    nop
    or [hl]
    ld b, a
    ld bc, $33ff
    nop
    sbc d
    ld b, a
    ld bc, $30ff
    nop
    and d
    ld b, a
    ld bc, $07ff
    nop
    sbc d
    ld b, a
    ld [de], a
    rst $38
    db $ed
    ret z

    nop
    nop
    rst $38
    rst $38
    add hl, bc
    rst $38
    ld [$4900], sp
    rst $38
    nop
    nop
    rlca
    rst $38
    ld c, h
    ld bc, $ff12
    db $ed
    ret z

    nop
    nop
    rst $38
    rst $38
    add hl, bc
    rst $38
    ld [$4900], sp
    rst $38
    nop
    nop
    rlca
    rst $38
    ld d, $04
    ld b, $ff
    ld [de], a
    rst $38
    adc d
    ret z

    inc bc
    nop
    ld [de], a
    rst $38
    adc e
    ret z

    inc bc
    nop
    ld a, $ff
    ld [$07ff], sp
    rst $38
    rla
    inc b
    ld [de], a
    rst $38
    db $ed
    ret z

    nop
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
    ld b, a
    rst $38
    nop
    nop
    ld [de], a
    rst $38
    db $ec
    ret z

    nop
    nop
    ld [de], a
    rst $38
    db $ed
    ret z

    ld c, $00
    ld bc, $1dff
    nop
    inc b
    ld c, b
    ld bc, $33ff
    nop
    ld [hl], b
    ld c, c
    dec d
    rst $38
    db $e3
    reti


    ld c, [hl]
    nop
    add $4e
    dec d
    rst $38
    db $e3
    reti


    ld c, l
    nop
    cp h
    ld c, [hl]
    dec d
    rst $38
    db $e3
    reti


    ld c, h
    nop
    or d
    ld c, [hl]
    dec d
    rst $38
    db $e3
    reti


    ld c, e
    nop
    xor b
    ld c, [hl]
    dec d
    rst $38
    db $e3
    reti


    ld c, d
    nop
    sbc [hl]
    ld c, [hl]
    dec d
    rst $38
    db $e3
    reti


    ld c, c
    nop
    sub h
    ld c, [hl]
    dec d
    rst $38
    db $e3
    reti


    ld c, b
    nop
    adc d
    ld c, [hl]
    dec d
    rst $38
    db $e3
    reti


    rst $00
    nop
    add b
    ld c, [hl]
    dec d
    rst $38
    db $e3
    reti


    ld b, a
    nop
    db $76
    ld c, [hl]
    dec d
    rst $38
    db $e3
    reti


    ld b, [hl]
    nop
    ld c, b
    ld c, [hl]
    dec d
    rst $38
    db $e3
    reti


    ld b, l
    nop
    sbc b
    ld c, h
    ld bc, $f1ff
    nop
    add b
    ld c, c
    dec d
    rst $38
    db $e3
    reti


    ld b, h
    nop
    adc [hl]
    ld c, h
    dec d
    rst $38
    db $e3
    reti


    ld b, e
    nop
    add h
    ld c, h
    dec d
    rst $38
    db $e3
    reti


    ld b, d
    nop
    ld e, b
    ld c, h
    dec d
    rst $38
    db $e3
    reti


    ld b, c
    nop
    inc l
    ld c, h
    dec d
    rst $38
    db $e3
    reti


    ccf
    nop
    ld [hl+], a
    ld c, h
    dec d
    rst $38
    db $e3
    reti


    ld a, $00
    or $4b
    dec d
    rst $38
    db $e3
    reti


    dec a
    nop
    db $ec
    ld c, e
    dec d
    rst $38
    db $e3
    reti


    dec sp
    nop
    ld [c], a
    ld c, e
    dec d
    rst $38
    db $e3
    reti


    ld a, [hl-]
    nop
    or [hl]
    ld c, e
    dec d
    rst $38
    db $e3
    reti


    stop
    xor h
    ld c, e
    dec d
    rst $38
    db $e3
    reti


    add hl, sp
    nop
    add b
    ld c, e
    dec d
    rst $38
    db $e3
    reti


    inc a
    nop
    ldh a, [rWY]
    dec d
    rst $38
    db $e3
    reti


    jr c, jr_00c_48c8

jr_00c_48c8:
    and $4a
    dec d
    rst $38
    db $e3
    reti


    scf
    nop
    db $dc, $4a, $15
    rst $38
    db $e3
    reti


    ld [hl], $00
    or b
    ld c, d
    dec d
    rst $38
    db $e3
    reti


    dec [hl]
    nop
    add h
    ld c, d
    dec d
    rst $38
    db $e3
    reti


    inc [hl]
    nop
    ld a, d
    ld c, d
    dec d
    rst $38
    db $e3
    reti


    inc sp
    nop
    ld c, [hl]
    ld c, d
    dec d
    rst $38
    db $e3
    reti


    ld [hl-], a
    nop
    ld b, h
    ld c, d
    dec d
    rst $38
    db $e3
    reti


    ld sp, $1800
    ld c, d
    dec d
    rst $38
    db $e3
    reti


    jr nc, jr_00c_4908

jr_00c_4908:
    xor h
    ld c, c
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
    ld [de], a
    rst $38
    db $ec
    ret z

    nop
    nop
    ld [de], a
    rst $38
    db $ed
    ret z

    ld c, $00
    ld bc, $09ff
    nop
    jr nc, @+$4b

    dec c
    rst $38
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    nop
    ld b, [hl]
    ld c, c
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
    dec b
    nop
    nop
    nop
    nop
    nop
    ld [$12ff], sp
    rst $38
    dec hl
    reti


    dec b
    nop
    ld bc, $f1ff
    nop
    ld h, [hl]
    ld c, c
    ld [de], a
    rst $38
    dec hl
    reti


    inc bc
    nop
    ld bc, $09ff
    nop
    ld h, [hl]
    ld c, c
    ld [de], a
    rst $38
    dec hl
    reti


    ld bc, $1200
    rst $38
    db $e3
    reti


    rst $38
    nop
    inc d
    rst $38
    nop
    ld d, b
    ld [$07ff], sp
    rst $38
    ld [hl], l
    ld [bc], a
    ld [de], a
    rst $38
    dec hl
    reti


    inc bc
    nop
    inc d
    rst $38
    ld l, d
    ld c, a
    ld [$07ff], sp
    rst $38
    push bc
    dec b
    inc e
    rst $38
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    ld b, $00
    ld c, d
    rst $38
    ld bc, $3c00
    rst $38
    rlca
    rst $38
    ld b, c
    ld bc, $ff06
    dec a
    rst $38
    rlca
    rst $38
    adc $07
    ld [de], a
    rst $38
    dec hl
    reti


    dec b
    nop
    inc d
    rst $38
    sub $4e
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [$07ff], sp
    rst $38
    ld e, d
    nop
    inc e
    rst $38
    inc b
    inc b
    add hl, de
    rst $38
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
    ld [bc], a
    nop
    rlca
    rst $38
    ld e, e
    nop
    dec bc
    rst $38
    inc b
    nop
    jr nz, jr_00c_49e6

jr_00c_49e6:
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    ld b, b
    nop
    rlca
    rst $38
    ld e, h
    nop
    inc bc
    rst $38
    add hl, bc
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    inc l
    reti


    inc b
    nop
    ld [de], a
    rst $38
    dec l
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    cpl
    reti


    ld bc, $1200
    rst $38
    inc a
    reti


    ld [bc], a
    nop
    inc d
    rst $38
    ld l, d
    ld c, a
    ld [$07ff], sp
    rst $38
    ld c, l
    ld bc, $ff1c
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    ld b, $00
    ld c, d
    rst $38
    ld bc, $3c00
    rst $38
    rlca
    rst $38
    ld b, c
    ld bc, $ff06
    dec a
    rst $38
    rlca
    rst $38
    ld c, [hl]
    ld bc, $ff12
    dec hl
    reti


    inc bc
    nop
    inc d
    rst $38
    ld l, d
    ld c, a
    ld [$07ff], sp
    rst $38
    ld d, c
    ld bc, $ff14
    ld e, $4a
    ld [$07ff], sp
    rst $38
    xor e
    ld bc, $ff1c
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    ld b, $00
    ld c, d
    rst $38
    ld bc, $3c00
    rst $38
    rlca
    rst $38
    ld b, c
    ld bc, $ff06
    dec a
    rst $38
    rlca
    rst $38
    xor h
    ld bc, $ff12
    dec hl
    reti


    inc bc
    nop
    inc d
    rst $38
    ld l, d
    ld c, a
    ld [$07ff], sp
    rst $38
    xor [hl]
    ld bc, $ff14
    ld d, h
    ld c, d
    ld [$07ff], sp
    rst $38
    ld a, [de]
    ld [bc], a
    inc e
    rst $38
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    ld b, $00
    ld c, d
    rst $38
    ld bc, $3c00
    rst $38
    rlca
    rst $38
    ld b, c
    ld bc, $ff06
    dec a
    rst $38
    rlca
    rst $38
    ld c, [hl]
    ld bc, $ff12
    dec hl
    reti


    inc bc
    nop
    inc d
    rst $38
    ld l, d
    ld c, a
    ld [$07ff], sp
    rst $38
    db $f4
    ld bc, $ff1c
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    ld b, $00
    ld c, d
    rst $38
    ld bc, $3c00
    rst $38
    rlca
    rst $38
    ld b, c
    ld bc, $ff06
    dec a
    rst $38
    rlca
    rst $38
    xor h
    ld bc, $ff12
    dec hl
    reti


    inc bc
    nop
    inc d
    rst $38
    ld l, d
    ld c, a
    ld [$07ff], sp
    rst $38
    ld a, [c]
    ld bc, $ff14
    or [hl]
    ld c, d
    ld [$07ff], sp
    rst $38
    or [hl]
    inc bc
    inc d
    rst $38
    or [hl]
    ld c, d
    dec c
    rst $38
    ld b, $00
    nop
    nop
    nop
    nop
    ld [$07ff], sp
    rst $38
    xor c
    ld [bc], a
    dec bc
    rst $38
    ld b, $00
    ldh a, [rIE]
    add hl, bc
    rst $38
    ld [$0b00], sp
    rst $38
    ld b, $00
    ldh a, [rIE]
    add hl, bc
    rst $38
    ld [$0b00], sp
    rst $38
    ld b, $00
    ldh a, [rIE]
    add hl, bc
    rst $38
    ld [$0700], sp
    rst $38
    xor d
    ld [bc], a
    add hl, bc
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld b, $00
    add hl, bc
    rst $38
    inc b
    nop
    rlca
    rst $38
    xor e
    ld [bc], a
    add hl, bc
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld b, $00
    add hl, bc
    rst $38
    inc b
    nop
    rlca
    rst $38
    xor h
    ld [bc], a
    add hl, bc
    rst $38
    ld [$4800], sp
    rst $38
    ld b, $00
    add hl, bc
    rst $38
    ld [$0b00], sp
    rst $38
    ld b, $00
    stop
    add hl, bc
    rst $38
    ld [$0b00], sp
    rst $38
    ld b, $00
    stop
    add hl, bc
    rst $38
    ld [$0b00], sp
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
    add hl, bc
    rst $38
    ld [$0700], sp
    rst $38
    xor l
    ld [bc], a
    ld [de], a
    rst $38
    dec hl
    reti


    inc bc
    nop
    inc d
    rst $38
    ld l, d
    ld c, a
    ld [$07ff], sp
    rst $38
    or [hl]
    ld [bc], a
    inc e
    rst $38
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    ld b, $00
    ld c, d
    rst $38
    ld bc, $3c00
    rst $38
    rlca
    rst $38
    ld b, c
    ld bc, $ff06
    dec a
    rst $38
    rlca
    rst $38
    ld h, e
    ld [$ff12], sp
    dec hl
    reti


    inc bc
    nop
    inc d
    rst $38
    ld l, d
    ld c, a
    ld [$07ff], sp
    rst $38
    ld d, b
    ld bc, $ff14
    add [hl]
    ld c, e
    ld [$07ff], sp
    rst $38
    scf
    inc bc
    inc e
    rst $38
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    ld b, $00
    ld c, d
    rst $38
    ld bc, $3c00
    rst $38
    rlca
    rst $38
    ld b, c
    ld bc, $ff06
    dec a
    rst $38
    rlca
    rst $38
    or a
    ld [bc], a
    ld [de], a
    rst $38
    dec hl
    reti


    inc bc
    nop
    inc d
    rst $38
    ld l, d
    ld c, a
    ld [$07ff], sp
    rst $38
    ld a, [hl-]
    inc bc
    inc d
    rst $38
    cp h
    ld c, e
    ld [$07ff], sp
    rst $38
    dec sp
    inc bc
    inc d
    rst $38
    cp h
    ld c, e
    ld [$07ff], sp
    rst $38
    ld h, [hl]
    inc bc
    inc e
    rst $38
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    ld b, $00
    ld c, d
    rst $38
    ld bc, $3c00
    rst $38
    rlca
    rst $38
    ld b, c
    ld bc, $ff06
    dec a
    rst $38
    rlca
    rst $38
    ld h, a
    inc bc
    ld [de], a
    rst $38
    dec hl
    reti


    inc bc
    nop
    inc d
    rst $38
    ld l, d
    ld c, a
    ld [$07ff], sp
    rst $38
    ld l, c
    inc bc
    inc d
    rst $38
    db $fc
    ld c, e
    ld [$07ff], sp
    rst $38
    ld b, b
    ld bc, $ff1c
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    ld b, $00
    ld c, d
    rst $38
    ld bc, $3c00
    rst $38
    rlca
    rst $38
    ld b, c
    ld bc, $ff06
    dec a
    rst $38
    rlca
    rst $38
    ld b, d
    ld bc, $ff12
    dec hl
    reti


    inc bc
    nop
    inc d
    rst $38
    ld l, d
    ld c, a
    ld [$07ff], sp
    rst $38
    push hl
    inc bc
    inc e
    rst $38
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    ld b, $00
    ld c, d
    rst $38
    ld bc, $3c00
    rst $38
    rlca
    rst $38
    ld b, c
    ld bc, $ff06
    dec a
    rst $38
    rlca
    rst $38
    ld h, a
    inc bc
    ld [de], a
    rst $38
    dec hl
    reti


    inc bc
    nop
    inc d
    rst $38
    ld l, d
    ld c, a
    ld [$07ff], sp
    rst $38
    and $03
    inc d
    rst $38
    ld e, [hl]
    ld c, h
    ld [$07ff], sp
    rst $38
    ld l, d
    inc bc
    inc d
    rst $38
    ld e, [hl]
    ld c, h
    ld [$07ff], sp
    rst $38
    add l
    inc b
    add hl, bc
    rst $38
    inc b
    nop
    ld b, c
    rst $38
    ld [bc], a
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
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld [de], a
    rst $38
    sbc e
    ret z

    rst $20
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $20
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $30
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld [de], a
    rst $38
    sbc e
    ret z

    ei
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    ei
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    ei
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld [de], a
    rst $38
    sbc e
    ret z

    rst $38
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
    ld [de], a
    rst $38
    db $ec
    ret z

    ld bc, $0900
    rst $38
    ld [$6200], sp
    rst $38
    ld [de], a
    rst $38
    sbc e
    ret z

    jp nc, $0800

    rst $38
    rlca
    rst $38
    pop de
    ld [$ff06], sp
    ld [de], a
    rst $38
    sbc e
    ret z

    rst $38
    nop
    ld [$63ff], sp
    rst $38
    daa
    rst $38
    ld d, $ff
    ld b, c
    rst $38
    ccf
    nop
    ld b, [hl]
    rst $38
    add hl, bc
    rst $38
    jr jr_00c_4d2c

jr_00c_4d2c:
    ld [de], a
    rst $38
    db $ec
    ret z

    nop
    nop
    ld [de], a
    rst $38
    sbc e
    ret z

    rst $38
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
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld [de], a
    rst $38
    sbc e
    ret z

    ei
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    ei
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    ei
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld [de], a
    rst $38
    sbc e
    ret z

    rst $20
    nop
    ld [de], a
    rst $38
    sbc h
    ret z

    rst $20
    nop
    ld [de], a
    rst $38
    sbc l
    ret z

    rst $30
    nop
    add hl, bc
    rst $38
    ld [bc], a
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
    add hl, bc
    rst $38
    inc b
    nop
    ld b, c
    rst $38
    add hl, bc
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    rlca
    rst $38
    add [hl]
    inc b
    inc e
    rst $38
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    ld b, $00
    ld c, d
    rst $38
    ld bc, $3c00
    rst $38
    rlca
    rst $38
    ld b, c
    ld bc, $ff06
    dec a
    rst $38
    rlca
    rst $38
    adc b
    inc b
    ld [de], a
    rst $38
    dec hl
    reti


    inc bc
    nop
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    stop
    ld c, c
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    inc h
    rst $38
    ld [c], a
    ld d, b
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld bc, $2100
    rst $38
    ld d, c
    nop
    add hl, bc
    rst $38
    ld bc, $0d00
    rst $38
    dec b
    nop
    nop
    nop
    ld b, b
    nop
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    ldh a, [rIE]
    ld c, b
    rst $38
    ld [bc], a
    nop
    rst $38
    rst $38
    ld [$07ff], sp
    rst $38
    jp nz, $c305

    dec b
    inc e
    rst $38
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    ld b, $00
    ld c, d
    rst $38
    ld bc, $3c00
    rst $38
    rlca
    rst $38
    ld b, c
    ld bc, $ff06
    dec a
    rst $38
    rlca
    rst $38
    call nz, $1205
    rst $38
    dec hl
    reti


    dec b
    nop
    inc d
    rst $38
    sub $4e
    ld [$07ff], sp
    rst $38
    add $05
    inc d
    rst $38
    ld c, [hl]
    ld c, [hl]
    ld [$07ff], sp
    rst $38
    rst $00
    dec b
    inc d
    rst $38
    ld c, [hl]
    ld c, [hl]
    ld [$07ff], sp
    rst $38
    ret z

    dec b
    inc d
    rst $38
    ld c, [hl]
    ld c, [hl]
    ld [$07ff], sp
    rst $38
    ret


    dec b
    inc d
    rst $38
    ld c, [hl]
    ld c, [hl]
    ld [$07ff], sp
    rst $38
    db $ca, $05, $14

    rst $38
    ld c, [hl]
    ld c, [hl]
    ld [$07ff], sp
    rst $38
    rlc l
    inc d
    rst $38
    ld c, [hl]
    ld c, [hl]
    ld [$07ff], sp
    rst $38
    db $cc, $05, $14
    rst $38
    ld c, [hl]
    ld c, [hl]
    ld [$07ff], sp
    rst $38
    db $cd, $05, $14
    rst $38
    ld c, [hl]
    ld c, [hl]
    ld [$07ff], sp
    rst $38
    adc $05
    ld [de], a
    rst $38
    dec hl
    reti


    dec b
    nop
    inc d
    rst $38
    sub $4e
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    stop
    ld c, c
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    inc h
    rst $38
    ld [c], a
    ld d, b
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld bc, $2100
    rst $38
    ld d, c
    nop
    add hl, bc
    rst $38
    ld bc, $0d00
    rst $38
    dec b
    nop
    nop
    nop
    ld b, b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld [$4900], sp
    rst $38
    nop
    nop
    inc d
    rst $38
    nop
    ld d, b
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    dec b
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    stop
    ld c, c
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc bc
    nop
    inc h
    rst $38
    ld [c], a
    ld d, b
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld bc, $2100
    rst $38
    ld d, c
    nop
    add hl, bc
    rst $38
    ld bc, $0d00
    rst $38
    dec b
    nop
    nop
    nop
    ld b, b
    nop
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    ldh a, [rIE]
    ld c, b
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld [$4900], sp
    rst $38
    nop
    nop
    rlca
    rst $38
    ld c, [hl]
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
    add hl, bc
    rst $38
    ld bc, $1200
    rst $38
    db $ed
    ret z

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
    daa
    rst $38
    ld d, $ff
    dec d
    rst $38
    db $e3
    reti


    jr nc, jr_00c_506c

jr_00c_506c:
    adc d
    ld d, b
    dec d
    rst $38
    db $e3
    reti


    inc a
    nop
    sub b
    ld d, b
    inc l
    rst $38
    add h
    ld d, b
    rlca
    rst $38
    rrc b
    ld a, [hl+]
    rst $38
    ld bc, $ff00
    rst $38
    rlca
    rst $38
    call z, $ff08
    rst $38
    rlca
    rst $38
    ld e, [hl]
    nop
    rst $38
    rst $38
    ld [de], a
    rst $38
    adc d
    ret z

    inc bc
    nop
    ld [de], a
    rst $38
    adc e
    ret z

    inc bc
    nop
    ld a, $ff
    ld [$07ff], sp
    rst $38
    xor [hl]
    ld [bc], a
    rst $38
    rst $38
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
    ld [$0bff], sp
    rst $38
    inc b
    nop
    jr nz, jr_00c_50b8

jr_00c_50b8:
    rlca
    rst $38
    or a
    dec b
    ld b, $ff
    dec de
    rst $38
    inc b
    nop
    ld [hl], b
    rst $38
    dec de
    rst $38
    dec b
    nop
    ld [hl], b
    rst $38
    add hl, de
    rst $38
    ld [de], a
    rst $38
    inc l
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    dec l
    reti


    inc b
    nop
    rrca
    rst $38
    nop
    nop
    add sp, $00
    ld a, b
    nop
    rst $38
    rst $38
    ld l, $00
    ld b, h
    ld b, l
    ret c

    ld [hl], b
    ld [hl], c
    ret c

    ld [hl], d
    ld [hl], e
    reti


    inc h
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $fb00
    ld d, b
    dec h
    nop
    rst $38
    rst $38
    ld h, $00
    rst $38
    rst $38
    daa
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $0d00
    ld d, c
    jr z, jr_00c_510b

jr_00c_510b:
    rst $38
    rst $38
    ld h, $00
    rst $38
    rst $38
    ld bc, $3aff
    nop
    add e
    ld d, c
    ld bc, $3bff
    nop
    ld d, l
    ld d, c
    ld bc, $08ff
    nop
    daa
    ld d, c
    ld a, c
    inc bc
    rst $38
    rst $38
    ld hl, $60ff
    nop
    inc h
    rst $38
    add a
    ld d, c
    rlca
    rst $38
    dec de
    nop
    inc l
    rst $38
    ld c, c
    ld d, c
    inc e
    nop
    inc bc
    rst $38
    ld a, [hl-]
    nop
    ld [de], a
    rst $38
    ld a, [hl+]
    reti


    ld bc, $2a00
    rst $38
    ld bc, $ff00
    rst $38
    dec e
    nop
    ld hl, $60ff
    nop
    inc h
    rst $38
    adc h
    ld d, c
    rst $38
    rst $38
    ld hl, $60ff
    nop
    inc h
    rst $38
    add a
    ld d, c
    rlca
    rst $38
    dec de
    nop
    inc l
    rst $38
    ld [hl], a
    ld d, c
    inc e
    nop
    inc bc
    rst $38
    ld a, [hl-]
    nop
    ld [de], a
    rst $38
    ld a, [hl+]
    reti


    inc bc
    nop
    ld a, [hl+]
    rst $38
    ld bc, $ff00
    rst $38
    dec e
    nop
    ld hl, $60ff
    nop
    inc h
    rst $38
    adc h
    ld d, c
    rst $38
    rst $38
    inc a
    ld bc, $ffff
    add [hl]
    nop
    inc c
    dec c
    reti


    add [hl]
    nop
    ld c, $0f
    reti


    ld bc, $3bff
    nop
    inc bc
    ld d, d
    ld bc, $3aff
    nop
    push de
    ld d, c
    ld bc, $08ff
    nop
    and a
    ld d, c
    ld a, c
    inc bc
    rst $38
    rst $38
    ld hl, $60ff
    nop
    inc h
    rst $38
    rlca
    ld d, d
    rlca
    rst $38
    ld e, $00
    inc l
    rst $38
    ret


    ld d, c
    daa
    ld bc, $ff03
    dec sp
    nop
    ld [de], a
    rst $38
    ld a, [hl+]
    reti


    ld [bc], a
    nop
    ld a, [hl+]
    rst $38
    ld bc, $ff00
    rst $38
    jr z, @+$03

    ld hl, $60ff
    nop
    inc h
    rst $38
    inc c
    ld d, d
    rst $38
    rst $38
    ld hl, $60ff
    nop
    inc h
    rst $38
    rlca
    ld d, d
    rlca
    rst $38
    ld e, $00
    inc l
    rst $38
    rst $30
    ld d, c
    daa
    ld bc, $ff03
    dec sp
    nop
    ld [de], a
    rst $38
    ld a, [hl+]
    reti


    inc bc
    nop
    ld a, [hl+]
    rst $38
    ld bc, $ff00
    rst $38
    jr z, @+$03

    ld hl, $60ff
    nop
    inc h
    rst $38
    inc c
    ld d, d
    rst $38
    rst $38
    inc a
    ld bc, $ffff
    adc b
    nop
    inc c
    dec c
    reti


    adc b
    nop
    ld c, $0f
    reti


    dec sp
    ld [$ff2c], sp
    rra
    ld d, d
    inc a
    ld [$ff2a], sp
    rla
    nop
    rst $38
    rst $38
    dec a
    ld [$ffff], sp
    dec sp
    ld [$ff2c], sp
    ld sp, $3e52
    ld [$ff2a], sp
    dec e
    nop
    rst $38
    rst $38
    dec a
    ld [$ffff], sp
    ld b, b
    ld [$ff33], sp
    db $10
    daa
    rst $38
    rst $38
    ld b, c
    ld [$ff05], sp
    ldh [rSB], a
    daa
    rst $38
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    ld [hl], e
    ld d, d
    ld bc, $37ff
    nop
    ld l, a
    ld d, d
    ld bc, $32ff
    nop
    ld e, l
    ld d, d
    inc hl
    nop
    rst $38
    rst $38
    db $e4
    ld bc, $ff15
    inc a
    ret z

    ld bc, $6b00
    ld d, d
    and $01
    rst $38
    rst $38
    push hl
    ld bc, $ffff
    rrca
    inc b
    rst $38
    rst $38
    cp e
    dec b
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    db $cd, $52, $01
    rst $38
    jr jr_00c_5282

    ret


jr_00c_5282:
    ld d, d
    ld bc, $37ff
    nop
    xor a
    ld d, d
    ld bc, $32ff
    nop
    sbc l
    ld d, d
    ld bc, $08ff
    nop
    sbc c
    ld d, d
    ld [hl+], a
    nop
    rst $38
    rst $38
    ld d, e
    nop
    rst $38
    rst $38
    rst $20
    ld bc, $ff15
    inc a
    ret z

    ld bc, $ab00
    ld d, d
    jp hl


    ld bc, $ffff
    add sp, $01
    rst $38
    rst $38
    dec bc
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $c100
    ld d, d
    inc c
    inc b
    inc bc
    rst $38
    jr jr_00c_52c0

    rst $38

jr_00c_52c0:
    rst $38
    dec c
    inc b
    inc bc
    rst $38
    jr jr_00c_52c8

    rst $38

jr_00c_52c8:
    rst $38
    ld c, $04
    rst $38
    rst $38
    cp d
    dec b
    rst $38
    rst $38
    ld a, [hl+]
    nop
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    db $fd
    ld d, d
    ld bc, $25ff
    nop
    ld sp, hl
    ld d, d
    ld bc, $32ff
    nop
    push af
    ld d, d
    ld bc, $08ff
    nop
    pop af
    ld d, d
    cpl
    nop
    rst $38
    rst $38
    ld c, a
    nop
    rst $38
    rst $38
    push af
    ld bc, $ffff
    adc h
    inc b
    rst $38
    rst $38
    pop bc
    dec b
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    db $cd, $54, $01
    rst $38
    xor h
    nop
    cp e
    ld d, h
    ld bc, $25ff
    nop
    or e
    ld d, h
    ld bc, $37ff
    nop
    and c
    ld d, h
    ld bc, $36ff
    nop
    ld [hl], e
    ld d, h
    ld bc, $35ff
    nop
    ld b, l
    ld d, h
    ld bc, $34ff
    nop
    rla
    ld d, h
    ld bc, $1dff
    nop
    jp hl


    ld d, e
    ld bc, $33ff
    nop
    push hl
    ld d, e
    ld bc, $32ff
    nop
    or a
    ld d, e
    ld bc, $31ff
    nop
    adc c
    ld d, e
    ld bc, $30ff
    nop
    ld l, c
    ld d, e
    ld bc, $03ff
    nop
    ld d, a
    ld d, e
    inc l
    nop
    inc bc
    rst $38
    inc bc
    nop
    rst $38
    rst $38
    dec l
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $6500
    ld d, e
    ld l, $00
    rst $38
    rst $38
    ld a, [de]
    nop
    rst $38
    rst $38
    ld d, d
    ld bc, $ff15
    inc a
    ret z

    ld bc, $8100
    ld d, e
    ld d, h
    ld bc, $ff15
    inc a
    ret z

    ld bc, $8500
    ld d, e
    ld d, l
    ld bc, $ffff
    ld d, e
    ld bc, $ffff
    ld d, [hl]
    ld bc, $ffff
    and l
    ld bc, $ff15
    inc a
    ret z

    ld bc, $ab00
    ld d, e
    and a
    ld bc, $ff15
    inc a
    ret z

    ld bc, $af00
    ld d, e
    xor c
    ld bc, $ff15
    inc a
    ret z

    ld bc, $b300
    ld d, e
    ld d, l
    ld bc, $ffff
    and [hl]
    ld bc, $ffff
    xor b
    ld bc, $ffff
    xor d
    ld bc, $ffff
    db $ec
    ld bc, $ff15
    inc a
    ret z

    ld bc, $d900
    ld d, e
    xor $01
    dec d
    rst $38
    inc a
    ret z

    ld bc, $dd00
    ld d, e
    xor c
    ld bc, $ff15
    inc a
    ret z

    ld bc, $e100
    ld d, e
    ld d, l
    ld bc, $ffff
    db $ed
    ld bc, $ffff
    rst $28
    ld bc, $ffff
    pop af
    ld bc, $ffff
    ld [hl], h
    ld [bc], a
    rst $38
    rst $38
    or b
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $0b00
    ld d, h
    or d
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $0f00
    ld d, h
    xor c
    ld bc, $ff15
    inc a
    ret z

    ld bc, $1300
    ld d, h
    ld d, l
    ld bc, $ffff
    or c
    ld [bc], a
    rst $38
    rst $38
    or e
    ld [bc], a
    rst $38
    rst $38
    or l
    ld [bc], a
    rst $38
    rst $38
    ld [hl-], a
    inc bc
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3900
    ld d, h
    inc [hl]
    inc bc
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3d00
    ld d, h
    xor c
    ld bc, $ff15
    inc a
    ret z

    ld bc, $4100
    ld d, h
    ld d, l
    ld bc, $ffff
    inc sp
    inc bc
    rst $38
    rst $38
    dec [hl]
    inc bc
    rst $38
    rst $38
    ld [hl], $03
    rst $38
    rst $38
    ld h, c
    inc bc
    dec d
    rst $38
    inc a
    ret z

    ld bc, $6700
    ld d, h
    ld h, e
    inc bc
    dec d
    rst $38
    inc a
    ret z

    ld bc, $6b00
    ld d, h
    xor c
    ld bc, $ff15
    inc a
    ret z

    ld bc, $6f00
    ld d, h
    ld d, l
    ld bc, $ffff
    ld h, d
    inc bc
    rst $38
    rst $38
    ld h, h
    inc bc
    rst $38
    rst $38
    ld h, l
    inc bc
    rst $38
    rst $38
    ldh [$03], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $9500
    ld d, h
    ld [c], a
    inc bc
    dec d
    rst $38
    inc a
    ret z

    ld bc, $9900
    ld d, h
    xor c
    ld bc, $ff15
    inc a
    ret z

    ld bc, $9d00
    ld d, h
    ld d, l
    ld bc, $ffff
    pop hl
    inc bc
    rst $38
    rst $38
    db $e3
    inc bc
    rst $38
    rst $38
    db $e4
    inc bc
    rst $38
    rst $38
    add hl, de
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $af00
    ld d, h
    dec de
    inc b
    rst $38
    rst $38
    ld a, [de]
    inc b
    rst $38
    rst $38
    adc d
    inc b
    inc bc
    rst $38
    xor h
    nop
    rst $38
    rst $38
    dec l
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $c900
    ld d, h
    ld l, $00
    rst $38
    rst $38
    adc e
    inc b
    rst $38
    rst $38
    cp [hl]
    dec b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $db00
    ld d, h
    cp a
    dec b
    rst $38
    rst $38
    ret nz

    dec b
    rst $38
    rst $38
    nop
    rst $38
    cpl
    nop
    db $eb
    ld d, h
    ld bc, $11ff
    ld bc, $5567
    ld bc, $f1ff
    nop
    ld h, e
    ld d, l
    ld bc, $25ff
    nop
    ld e, a
    ld d, l
    ld bc, $37ff
    nop
    ld e, e
    ld d, l
    ld bc, $35ff
    nop
    ld d, a
    ld d, l
    ld bc, $1dff
    nop
    ld d, e
    ld d, l
    ld bc, $33ff
    nop
    ld c, a
    ld d, l
    ld bc, $49ff
    nop
    ld c, e
    ld d, l
    ld bc, $32ff
    nop
    ld b, a
    ld d, l
    ld bc, $31ff
    nop
    ld b, e
    ld d, l
    ld bc, $30ff
    nop
    ccf
    ld d, l
    ld bc, $09ff
    nop
    dec sp
    ld d, l
    ld bc, $08ff
    nop
    scf
    ld d, l
    dec hl
    nop
    rst $38
    rst $38
    ld c, l
    nop
    rst $38
    rst $38
    ld e, [hl]
    nop
    rst $38
    rst $38
    ld c, h
    ld bc, $ffff
    and h
    ld bc, $ffff
    ld_long $ff01, a
    rst $38
    db $eb
    ld bc, $ffff
    ld [hl], e
    ld [bc], a
    rst $38
    rst $38
    xor a
    ld [bc], a
    rst $38
    rst $38
    ld h, b
    inc bc
    rst $38
    rst $38
    jr jr_00c_5561

    rst $38
    rst $38
    adc c
    inc b

jr_00c_5561:
    rst $38
    rst $38
    cp h
    dec b
    rst $38
    rst $38
    cp l
    dec b
    rst $38
    rst $38
    ld d, b
    nop
    rst $38
    rst $38
    ld bc, $08ff
    nop
    add e
    ld d, l
    ld bc, $02ff
    nop
    ld a, a
    ld d, l
    ld d, $00
    rst $38
    rst $38
    jr nc, jr_00c_5581

jr_00c_5581:
    rst $38
    rst $38
    ld d, c
    nop
    rst $38
    rst $38
    ld bc, $09ff
    nop
    and l
    ld d, l
    ld bc, $08ff
    nop
    and c
    ld d, l
    ld bc, $02ff
    nop
    sbc l
    ld d, l
    rla
    nop
    rst $38
    rst $38
    ld sp, $ff00
    rst $38
    ld d, d
    nop
    rst $38
    rst $38
    ld e, a
    nop
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    push hl
    ld d, l
    ld bc, $25ff
    nop
    pop hl
    ld d, l
    ld bc, $34ff
    nop
    db $dd
    ld d, l
    ld bc, $1dff
    nop
    reti


    ld d, l
    ld bc, $32ff
    nop
    push de
    ld d, l
    ld bc, $09ff
    nop
    pop de
    ld d, l
    jr jr_00c_55cf

jr_00c_55cf:
    rst $38
    rst $38
    ld h, b
    nop
    rst $38
    rst $38
    or $01
    rst $38
    rst $38
    cp c
    ld [bc], a
    rst $38
    rst $38
    ld d, a
    ld [$ffff], sp
    adc l
    inc b
    rst $38
    rst $38
    rst $08
    dec b
    rst $38
    rst $38
    ld d, c
    ld [$ff2c], sp
    rst $30
    ld d, l
    ld c, e
    ld [$ff2a], sp
    ld e, $00
    rst $38
    rst $38
    ld c, h
    ld [$ffff], sp
    dec h
    ld d, [hl]
    dec e
    ld e, c
    dec hl
    ld e, c
    cpl
    ld e, c
    ld [hl], e
    ld e, c
    adc e
    ld e, c
    adc a
    ld e, c
    sub e
    ld e, c
    call $2b59
    ld e, d
    ld l, e
    ld e, d
    ld [hl], e
    ld e, d
    adc e
    ld e, d
    adc a
    ld e, d
    db $d3
    ld e, d
    db $eb
    ld e, d
    cpl
    ld e, e
    sbc l
    ld e, l
    rst $08
    ld e, l
    pop af
    ld e, l
    rlca
    ld e, [hl]
    dec d
    rst $38
    ld d, c
    reti


    rst $38
    nop
    ld b, c
    ld d, [hl]
    ld c, $ff
    nop
    nop
    sbc c
    ld d, a
    ld c, $ff
    ld bc, $4700
    ld e, b
    ld c, $ff
    inc c
    nop
    ld a, a
    ld e, b
    rst $38
    rst $38
    ld c, $ff
    inc c
    nop
    ld e, e
    ld d, [hl]
    ld c, $ff
    ld [$bd00], sp
    ld d, [hl]
    ld c, $ff
    inc b
    nop
    rst $10
    ld d, [hl]
    ld c, $ff
    nop
    nop
    scf
    ld d, a
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
    ld b, a
    rst $38
    nop
    nop
    ld [$09ff], sp
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld bc, $0900
    rst $38
    ld [bc], a
    nop
    rlca
    rst $38
    stop
    ld b, $ff
    ld a, [de]
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
    ld a, [de]
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
    dec de
    rst $38
    ld bc, $a000
    rst $38
    dec de
    rst $38
    nop
    nop
    and b
    rst $38
    add hl, de
    rst $38
    rrca
    rst $38
    ld bc, $2800
    nop
    ld a, b
    ld bc, $ffff
    ld [$1bff], sp
    rst $38
    ld bc, $8000
    rst $38
    dec de
    rst $38
    nop
    nop
    add b
    rst $38
    add hl, de
    rst $38
    rrca
    rst $38
    ld bc, $2800
    nop
    ld hl, sp+$00
    rst $38
    rst $38
    ld [$1bff], sp
    rst $38
    ld bc, $e000
    rst $38
    dec de
    rst $38
    nop
    nop
    ldh [rIE], a
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
    dec bc
    rst $38
    inc bc
    nop
    stop
    ld a, [bc]
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    rlca
    rst $38
    ld de, $0600
    rst $38
    ld c, d
    rst $38
    ld bc, $0700
    rst $38
    ld [de], a
    nop
    ld b, $ff
    dec bc
    rst $38
    inc bc
    nop
    stop
    ld c, c
    rst $38
    inc bc
    nop
    ld c, d
    rst $38
    nop
    nop
    rlca
    rst $38
    inc de
    nop
    ld b, $ff
    dec de
    rst $38
    ld bc, $9000
    rst $38
    dec de
    rst $38
    nop
    nop
    sub b
    rst $38
    add hl, de
    rst $38
    rrca
    rst $38
    ld bc, $2800
    nop
    ld a, b
    nop
    rst $38
    rst $38
    ld [$1bff], sp
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
    ld a, [de]
    rst $38
    ld bc, $1000
    nop
    dec de
    rst $38
    nop
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld a, [de]
    rst $38
    ld bc, $2000
    nop
    ld a, [de]
    rst $38
    nop
    nop
    jr nz, jr_00c_5761

jr_00c_5761:
    add hl, de
    rst $38
    ld c, c
    rst $38
    ld bc, $0700
    rst $38
    inc d
    nop
    ld b, $ff
    ld b, a
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $0b00
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
    rrca
    rst $38
    nop
    nop
    add sp, $00
    ld hl, sp+$00
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    or a
    ld d, a
    ld bc, $eeff
    nop
    reti


    ld d, a
    ld bc, $0aff
    nop
    or a
    ld d, a
    ld bc, $09ff
    nop
    cp c
    ld d, a
    ld bc, $01ff
    nop
    or a
    ld d, a
    rst $38
    rst $38
    ld [$07ff], sp
    rst $38
    ld h, c
    nop
    ld hl, $55ff
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $4000
    nop
    add hl, de
    rst $38
    inc bc
    rst $38
    ld a, [bc]
    nop
    ld [de], a
    rst $38
    dec l
    reti


    inc bc
    nop
    rst $38
    rst $38
    ld [$1bff], sp
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
    ld a, [de]
    rst $38
    ld bc, $1000
    nop
    dec de
    rst $38
    nop
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld a, [de]
    rst $38
    ld bc, $2000
    nop
    ld a, [de]
    rst $38
    nop
    nop
    jr nz, jr_00c_5803

jr_00c_5803:
    add hl, de
    rst $38
    ld c, c
    rst $38
    ld bc, $0700
    rst $38
    inc d
    nop
    ld b, $ff
    ld b, a
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $0b00
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
    inc l
    reti


    nop
    nop
    ld [de], a
    rst $38
    dec l
    reti


    inc bc
    nop
    rrca
    rst $38
    nop
    nop
    add sp, $00
    ld hl, sp+$00
    rst $38
    rst $38
    ld bc, $21ff
    nop
    ld h, l
    ld e, b
    nop
    rst $38
    ld e, $01
    ld e, c
    ld e, b
    ld bc, $eeff
    nop
    ld [hl], e
    ld e, b
    ld bc, $43ff
    nop
    ld h, l
    ld e, b
    ld bc, $1eff
    ld bc, $5867
    rst $38
    rst $38
    ld [de], a
    rst $38
    ld e, [hl]
    reti


    ld bc, $0300
    rst $38
    ld b, e
    nop
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
    ld bc, $f1ff
    nop
    adc e
    ld e, b
    ld bc, $eeff
    nop
    adc l
    ld e, b
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
    ld b, a
    rst $38
    nop
    nop
    ld [$09ff], sp
    rst $38
    ld [$1200], sp
    rst $38
    adc d
    ret z

    inc bc
    nop
    ld [de], a
    rst $38
    adc e
    ret z

    inc bc
    nop
    ld a, $ff
    ld [$0dff], sp
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld b, a
    rst $38
    nop
    nop
    ld [$09ff], sp
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld bc, $0900
    rst $38
    ld [bc], a
    nop
    rlca
    rst $38
    or [hl]
    dec b
    ld b, $ff
    ld a, [de]
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
    ld a, [de]
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
    dec de
    rst $38
    ld bc, $a000
    rst $38
    dec de
    rst $38
    nop
    nop
    and b
    rst $38
    add hl, de
    rst $38
    ld [de], a
    rst $38
    inc sp
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    dec l
    reti


    inc b
    nop
    rrca
    rst $38
    ld bc, $2800
    nop
    ld a, b
    nop
    rst $38
    rst $38
    ld bc, $02ff
    nop
    daa
    ld e, c
    add hl, de
    nop
    rst $38
    rst $38
    ld [hl-], a
    nop
    rst $38
    rst $38
    rra
    nop
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    ld l, a
    ld e, c
    ld bc, $9bff
    nop
    ld l, e
    ld e, c
    ld bc, $37ff
    nop
    ld h, e
    ld e, c
    ld bc, $35ff
    nop
    ld e, a
    ld e, c
    ld bc, $1dff
    nop
    ld e, e
    ld e, c
    ld bc, $32ff
    nop
    ld d, a
    ld e, c
    cpl
    ld bc, $ffff
    rst $30
    ld bc, $ffff
    cp d
    ld [bc], a
    rst $38
    rst $38
    ld l, e
    inc bc
    rst $38
    rst $38
    inc e
    inc b
    inc bc
    rst $38
    sbc e
    nop
    rst $38
    rst $38
    dec e
    inc b
    rst $38
    rst $38
    ret nc

    dec b
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    add a
    ld e, c
    ld bc, $25ff
    nop
    add e
    ld e, c
    ld h, d
    nop
    rst $38
    rst $38
    adc [hl]
    inc b
    rst $38
    rst $38
    pop de
    dec b
    rst $38
    rst $38
    ld h, e
    nop
    rst $38
    rst $38
    ld h, h
    nop
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    ret


    ld e, c
    ld bc, $9cff
    nop
    push bc
    ld e, c
    ld bc, $37ff
    nop
    cp l
    ld e, c
    ld bc, $35ff
    nop
    cp c
    ld e, c
    ld bc, $1dff
    nop
    or l
    ld e, c
    xor a
    ld bc, $ffff
    cp e
    ld [bc], a
    rst $38
    rst $38
    ld l, h
    inc bc
    rst $38
    rst $38
    ld e, $04
    inc bc
    rst $38
    sbc h
    nop
    rst $38
    rst $38
    rra
    inc b
    rst $38
    rst $38
    jp nc, $ff05

    rst $38
    ld bc, $f1ff
    nop
    add hl, de
    ld e, d
    ld bc, $25ff
    nop
    rlca
    ld e, d
    ld bc, $0bff
    nop
    push af
    ld e, c
    dec hl
    ld bc, $ff15
    inc a
    ret z

    ld bc, $f100
    ld e, c
    dec l
    ld bc, $ff03
    dec bc
    nop
    rst $38
    rst $38
    inc l
    ld bc, $ffff
    dec hl
    ld bc, $ff15
    inc a
    ret z

    ld bc, $0300
    ld e, d
    ld l, $01
    rst $38
    rst $38
    inc l
    ld bc, $ffff
    dec hl
    ld bc, $ff15
    inc a
    ret z

    ld bc, $1500
    ld e, d
    sub b
    inc b
    rst $38
    rst $38
    adc a
    inc b
    rst $38
    rst $38
    db $d3
    dec b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $2700
    ld e, d
    call nc, $ff05
    rst $38
    push de
    dec b
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    ld h, a
    ld e, d
    ld bc, $25ff
    nop
    ld h, e
    ld e, d
    ld bc, $37ff
    nop
    ld e, a
    ld e, d
    ld bc, $35ff
    nop
    ld e, e
    ld e, d
    ld bc, $1dff
    nop
    ld d, a
    ld e, d
    ld bc, $32ff
    nop
    ld d, e
    ld e, d
    ld h, l
    nop
    rst $38
    rst $38
    ld hl, sp+$01
    rst $38
    rst $38
    cp h
    ld [bc], a
    rst $38
    rst $38
    ld l, l
    inc bc
    rst $38
    rst $38
    jr nz, jr_00c_5a65

    rst $38
    rst $38
    sub c
    inc b

jr_00c_5a65:
    rst $38
    rst $38
    sub $05
    rst $38
    rst $38
    ld d, a
    ld bc, $ff03
    add b
    nop
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    add a
    ld e, d
    ld bc, $25ff
    nop
    add e
    ld e, d
    ld e, c
    ld bc, $ffff
    sub d
    inc b
    rst $38
    rst $38
    rst $10
    dec b
    rst $38
    rst $38
    ld e, b
    ld bc, $ffff
    ld bc, $14ff
    ld bc, $5acf
    ld bc, $f1ff
    nop
    rst $00
    ld e, d
    ld bc, $25ff
    nop
    jp InitGameData


    rst $38
    scf
    nop
    cp a
    ld e, d
    ld bc, $35ff
    nop
    cp e
    ld e, d
    ld bc, $1dff
    nop
    or a
    ld e, d
    or b
    ld bc, $ffff
    cp l
    ld [bc], a
    rst $38
    rst $38
    ld l, [hl]
    inc bc
    rst $38
    rst $38
    ld hl, $ff04
    rst $38
    sub e
    inc b
    rst $38
    rst $38
    ret c

    dec b
    inc bc
    rst $38
    inc d
    ld bc, $ffff
    ld c, a
    ld [$ffff], sp
    ld bc, $f1ff
    nop
    rst $20
    ld e, d
    ld bc, $25ff
    nop
    db $e3
    ld e, d
    ld e, d
    ld bc, $ffff
    sub h
    inc b
    rst $38
    rst $38
    reti


    dec b
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    dec hl
    ld e, e
    ld bc, $adff
    nop
    daa
    ld e, e
    ld bc, $25ff
    nop
    rra
    ld e, e
    ld bc, $37ff
    nop
    dec de
    ld e, e
    ld bc, $35ff
    nop
    rla
    ld e, e
    ld bc, $1dff
    nop
    inc de
    ld e, e
    ld e, e
    ld bc, $ffff
    cp [hl]
    ld [bc], a
    rst $38
    rst $38
    ld l, a
    inc bc
    rst $38
    rst $38
    ld [hl+], a
    inc b
    rst $38
    rst $38
    sub l
    inc b
    inc bc
    rst $38
    xor l
    nop
    rst $38
    rst $38
    sub [hl]
    inc b
    rst $38
    rst $38
    jp c, $ff05

    rst $38
    ld bc, $2fff
    nop
    adc e
    ld e, l
    ld bc, $f4ff
    nop
    add a
    ld e, l
    ld bc, $07ff
    ld bc, $5d7f
    ld bc, $06ff
    ld bc, $5d7f
    ld bc, $f3ff
    nop
    ld a, e
    ld e, l
    nop
    rst $38
    ld a, [c]
    nop
    ld e, c
    ld e, e
    ld bc, $05ff
    ld bc, $5c4b
    ld bc, $f2ff
    nop
    dec hl
    ld e, h
    ld bc, $f1ff
    nop
    inc hl
    ld e, h
    ld bc, $aeff
    nop
    ld de, $015c
    rst $38
    dec h
    nop
    ei
    ld e, e
    ld bc, $37ff
    nop
    di
    ld e, e
    ld bc, $36ff
    nop
    reti


    ld e, e
    ld bc, $35ff
    nop
    pop de
    ld e, e
    ld bc, $34ff
    nop
    ret


    ld e, e
    ld bc, $1dff
    nop
    xor a
    ld e, e
    ld bc, $33ff
    nop
    and a
    ld e, e
    ld bc, $32ff
    nop
    sbc a
    ld e, e
    or c
    ld bc, $ffff
    ld sp, hl
    ld bc, $ff03
    add b
    nop
    rst $38
    rst $38
    ld [hl], a
    ld [bc], a
    inc bc
    rst $38
    add b
    nop
    rst $38
    rst $38
    cp a
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $c100
    ld e, e
    ret nz

    ld [bc], a
    inc bc
    rst $38
    add b
    nop
    rst $38
    rst $38
    pop bc
    ld [bc], a
    inc bc
    rst $38
    add b
    nop
    rst $38
    rst $38
    inc a
    inc bc
    inc bc
    rst $38
    add b
    nop
    rst $38
    rst $38
    ld [hl], b
    inc bc
    inc bc
    rst $38
    add b
    nop
    rst $38
    rst $38
    rst $20
    inc bc
    dec d
    rst $38
    inc a
    ret z

    ld bc, $eb00
    ld e, e
    add sp, $03
    inc bc
    rst $38
    add b
    nop
    rst $38
    rst $38
    jp hl


    inc bc
    inc bc
    rst $38
    add b
    nop
    rst $38
    rst $38
    inc hl
    inc b
    inc bc
    rst $38
    add b
    nop
    rst $38
    rst $38
    sub a
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $0d00
    ld e, h
    sbc b
    inc b
    inc bc
    rst $38
    xor [hl]
    nop
    rst $38
    rst $38
    sbc d
    inc b
    rst $38
    rst $38
    sub a
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $1f00
    ld e, h
    sbc c
    inc b
    rst $38
    rst $38
    sbc e
    inc b
    rst $38
    rst $38
    call c, Call_000_0305
    rst $38
    ld a, [c]
    nop
    rst $38
    rst $38
    db $dd
    dec b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $4300
    ld e, h
    rst $18
    dec b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $4700
    ld e, h
    pop hl
    dec b
    rst $38
    rst $38
    sbc $05
    rst $38
    rst $38
    ldh [rTIMA], a
    rst $38
    rst $38
    db $dd
    dec b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $7300
    ld e, l
    rst $18
    dec b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $7700
    ld e, l
    ld [c], a
    dec b
    dec c
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    inc e
    rst $38
    nop
    ld b, $19
    rst $38
    dec d
    rst $38
    sub d
    rst $38
    daa
    nop
    or l
    ld e, h
    dec d
    rst $38
    sub d
    rst $38
    jr z, jr_00c_5c7d

jr_00c_5c7d:
    or l
    ld e, h
    dec d
    rst $38
    sub d
    rst $38
    add hl, hl
    nop
    or l
    ld e, h
    ld a, [de]
    rst $38
    ld bc, $1000
    nop
    dec de
    rst $38
    nop
    nop
    stop
    add hl, de
    rst $38
    dec de
    rst $38
    ld bc, $f000
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    stop
    add hl, de
    rst $38
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
    inc d
    rst $38
    rst $18
    ld e, h
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
    ld a, [de]
    rst $38
    ld bc, $1000
    nop
    dec de
    rst $38
    nop
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    dec de
    rst $38
    ld bc, $f000
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    stop
    add hl, de
    rst $38
    dec de
    rst $38
    ld bc, $e000
    rst $38
    dec de
    rst $38
    nop
    nop
    ldh [rIE], a
    add hl, de
    rst $38
    ld a, [de]
    rst $38
    ld bc, $1000
    nop
    dec de
    rst $38
    nop
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld a, [de]
    rst $38
    ld bc, $2000
    nop
    ld a, [de]
    rst $38
    nop
    nop
    jr nz, jr_00c_5d07

jr_00c_5d07:
    add hl, de
    rst $38
    ld c, c
    rst $38
    ld bc, $4a00
    rst $38
    nop
    nop
    rlca
    rst $38
    db $e3
    dec b
    dec bc
    rst $38
    ld bc, $f000
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    ld hl, $51ff
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    add hl, bc
    rst $38
    jr nz, jr_00c_5d2f

jr_00c_5d2f:
    ld hl, $51ff
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    ld c, b
    rst $38
    ld bc, $0900
    rst $38
    ld [$0b00], sp
    rst $38
    ld bc, $1000
    nop
    ld c, c
    rst $38
    ld bc, $0700
    rst $38
    db $e4
    dec b
    ld a, [bc]
    rst $38
    ld bc, $1000
    nop
    dec bc
    rst $38
    ld bc, $3000
    nop
    ld a, [bc]
    rst $38
    ld bc, $b000
    rst $38
    dec bc
    rst $38
    ld bc, $1000
    nop
    ld c, b
    rst $38
    ld bc, $0300
    rst $38
    di
    nop
    rst $38
    rst $38
    sbc $05
    rst $38
    rst $38
    ldh [rTIMA], a
    rst $38
    rst $38
    push hl
    dec b
    rst $38
    rst $38
    and $05
    inc bc
    rst $38
    db $f4
    nop
    rst $38
    rst $38
    rst $20
    dec b
    rst $38
    rst $38
    add sp, $05
    dec d
    rst $38
    inc a
    ret z

    ld bc, $9900
    ld e, l
    ld_long $ff05, a
    rst $38
    jp hl


    dec b
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    bit 3, l
    nop
    rst $38
    dec h
    nop
    xor a
    ld e, l
    ld bc, $83ff
    nop
    rst $00
    ld e, l
    ld bc, $35ff
    nop
    db $c3, $5d, $01


    rst $38
    dec e
    nop
    cp a
    ld e, l
    or d
    ld bc, $ffff
    jp nz, $ff02

    rst $38
    ld [hl], c
    inc bc
    rst $38
    rst $38
    sbc h
    inc b
    rst $38
    rst $38
    db $db
    dec b
    rst $38
    rst $38
    ld [de], a
    rst $38
    add sp, -$27
    ld bc, $2100
    rst $38
    ld d, l
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    nop
    nop
    ld h, b
    nop
    add hl, de
    rst $38
    ld [de], a
    rst $38
    ld b, d
    ret z

    nop
    nop
    ld [de], a
    rst $38
    ld b, [hl]
    ret z

    nop
    nop
    rst $38
    rst $38
    ld [de], a
    rst $38
    add sp, -$27
    ld bc, $2100
    rst $38
    ld d, l
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    nop
    nop
    ld h, b
    nop
    add hl, de
    rst $38
    rst $38
    rst $38
    ld [de], a
    rst $38
    add sp, -$27
    ld bc, $2100
    rst $38
    ld d, l
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    nop
    nop
    jr nc, jr_00c_5e19

jr_00c_5e19:
    add hl, de
    rst $38
    rst $38
    rst $38
    ld c, a
    ld e, [hl]
    adc a
    ld e, [hl]
    xor a
    ld e, [hl]
    or e
    ld e, [hl]
    or a
    ld e, [hl]
    push af
    ld e, [hl]
    ld hl, $435f
    ld e, a
    sub e
    ld h, b
    cp a
    ld h, b
    ld bc, $6961
    ld h, c
    ld l, l
    ld h, c
    ld a, c
    ld h, c
    and e
    ld h, c
    reti


    ld h, c
    ld sp, $a362
    ld h, d
    and a
    ld h, d
    xor e
    ld h, d
    or a
    ld h, d
    push bc
    ld h, d
    db $d3
    ld h, d
    ld d, l
    ld h, h
    ld a, l
    ld h, l
    ld c, $ff
    ld bc, $5700
    ld e, [hl]
    rst $38
    rst $38
    ld bc, $37ff
    nop
    adc l
    ld e, [hl]
    nop
    rst $38
    dec e
    nop
    ld l, c
    ld e, [hl]
    ld bc, $4bff
    nop
    adc l
    ld e, [hl]
    nop
    rst $38
    dec e
    nop
    ld [hl], l
    ld e, [hl]
    ld bc, $4aff
    nop
    adc c
    ld e, [hl]
    ld bc, $1dff
    nop
    adc l
    ld e, [hl]
    ld bc, $4bff
    nop
    adc l
    ld e, [hl]
    ld bc, $4aff
    nop
    adc c
    ld e, [hl]
    rst $38
    rst $38
    inc bc
    rst $38
    ld c, e
    nop
    rst $38
    rst $38
    ld bc, $3fff
    nop
    xor e
    ld e, [hl]
    ld a, [hl-]
    nop
    inc l
    rst $38
    and a
    ld e, [hl]
    add hl, hl
    ld bc, $ff03
    ccf
    nop
    ld a, [hl+]
    rst $38
    ld e, $00
    rst $38
    rst $38
    ld a, [hl+]
    ld bc, $ffff
    ld e, l
    ld bc, $ffff
    ld e, [hl]
    ld bc, $ffff
    ld e, [hl]
    ld bc, $ffff
    ld bc, $15ff
    ld bc, $5ed9
    ld bc, $f1ff
    nop
    push hl
    ld e, [hl]
    ld bc, $12ff
    ld bc, $5ed9
    sub [hl]
    ld bc, $ff03
    ld [de], a
    ld bc, $ff04
    nop
    nop
    add b
    ld b, $82
    ld b, $ff
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
    ld c, d
    ld [bc], a
    inc bc
    rst $38
    dec d
    ld bc, $ff04
    nop
    nop
    add b
    ld b, $82
    ld b, $ff
    rst $38
    ld bc, $f1ff
    nop
    dec e
    ld e, a
    ld bc, $37ff
    nop
    add hl, de
    ld e, a
    ld bc, $35ff
    nop
    dec d
    ld e, a
    ld bc, $1dff
    nop
    ld de, $5c5f
    ld bc, $ffff
    jp $ff02


    rst $38
    ld [hl], d
    inc bc
    rst $38
    rst $38
    inc h
    inc b
    rst $38
    rst $38
    db $eb
    dec b
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    ccf
    ld e, a
    ld bc, $37ff
    nop
    dec sp
    ld e, a
    ld bc, $35ff
    nop
    scf
    ld e, a
    call nz, $ff02
    rst $38
    ld [hl], e
    inc bc
    rst $38
    rst $38
    dec h
    inc b
    rst $38
    rst $38
    db $ec
    dec b
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    adc a
    ld h, b
    ld bc, $37ff
    nop
    adc e
    ld h, b
    ld bc, $35ff
    nop
    add a
    ld h, b
    ld bc, $4bff
    nop
    add e
    ld h, b
    ld bc, $4aff
    nop
    ld a, a
    ld h, b
    ld bc, $32ff
    nop
    ld l, e
    ld e, a
    ld e, a
    ld bc, $ffff
    ld a, [$0901]
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    inc b
    nop
    rlca
    rst $38
    ei
    ld bc, $ff09
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
    inc de
    rst $38
    db $e3
    ret c

    dec b
    inc bc
    inc e
    rst $38
    inc bc
    dec d
    add hl, de
    rst $38
    dec c
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    dec d
    rst $38
    sub d
    rst $38
    rst $10
    nop
    pop de
    ld e, a
    dec d
    rst $38
    sub d
    rst $38
    ret c

    nop
    pop de
    ld e, a
    dec d
    rst $38
    sub d
    rst $38
    reti


    nop
    pop de
    ld e, a
    inc d
    rst $38
    rst $10
    ld e, a
    ld de, $00ff
    nop
    jr c, jr_00c_5fd7

jr_00c_5fd7:
    db $10
    rst $38
    nop
    nop
    ld hl, sp+$00
    ld de, $00ff
    nop
    ld l, b
    nop
    ld a, [bc]
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    add hl, bc
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld b, a
    rst $38
    inc bc
    nop
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld [bc], a
    nop
    dec b
    nop
    add b
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld hl, $54ff
    nop
    dec e
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld [bc], a
    nop
    or b
    rst $38
    add hl, de
    rst $38
    ld e, $ff
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
    nop
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
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
    ld c, b
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld [bc], a
    nop
    dec b
    nop
    ld bc, $0900
    rst $38
    inc c
    nop
    ld hl, $55ff
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
    stop
    ld c, c
    rst $38
    inc bc
    nop
    add hl, bc
    rst $38
    ld bc, $1300
    rst $38
    db $e3
    ret c

    inc b
    inc b
    inc e
    rst $38
    inc bc
    rla
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
    inc bc
    rst $38
    ld c, d
    nop
    rst $38
    rst $38
    db $fc
    ld bc, $ffff
    db $fd
    ld bc, $ffff
    ld [hl], h
    inc bc
    rst $38
    rst $38
    ld h, $04
    rst $38
    rst $38
    db $ed
    dec b
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    cp e
    ld h, b
    ld bc, $37ff
    nop
    or a
    ld h, b
    ld bc, $35ff
    nop
    or e
    ld h, b
    ld bc, $4bff
    nop
    xor a
    ld h, b
    ld h, b
    ld bc, $ffff
    cp $01
    rst $38
    rst $38
    ld [hl], l
    inc bc
    rst $38
    rst $38
    daa
    inc b
    rst $38
    rst $38
    xor $05
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    db $fd
    ld h, b
    ld bc, $37ff
    nop
    ld sp, hl
    ld h, b
    ld bc, $79ff
    nop
    rst $20
    ld h, b
    push bc
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $e300
    ld h, b
    add $02
    inc bc
    rst $38
    ld a, c
    nop
    rst $38
    rst $38
    rst $00
    ld [bc], a
    rst $38
    rst $38
    push bc
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $f500
    ld h, b
    add hl, hl
    nop
    rst $38
    rst $38
    rst $00
    ld [bc], a
    rst $38
    rst $38
    jr z, jr_00c_60ff

    rst $38
    rst $38
    rst $28
    dec b

jr_00c_60ff:
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    ld h, c
    ld h, c
    ld bc, $37ff
    nop
    ld c, a
    ld h, c
    ld bc, $7aff
    nop
    dec a
    ld h, c
    ld bc, $1dff
    nop
    daa
    ld h, c
    ld bc, $32ff
    nop
    inc hl
    ld h, c
    ld h, c
    ld bc, $ffff
    rst $38
    ld bc, $ffff
    ret z

    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3900
    ld h, c
    jp z, Jump_000_0302

    rst $38
    ld a, d
    nop
    rst $38
    rst $38
    ret


    ld [bc], a
    rst $38
    rst $38
    rlc d
    dec d
    rst $38
    inc a
    ret z

    ld bc, $4b00
    ld h, c
    jp z, $ff02

    rst $38
    ret


    ld [bc], a
    rst $38
    rst $38
    add hl, hl
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $5d00
    ld h, c
    jp z, $ff02

    rst $38
    ld a, [hl+]
    inc b
    rst $38
    rst $38
    ldh a, [rTIMA]
    rst $38
    rst $38
    pop af
    dec b
    rst $38
    rst $38
    ld c, c
    rst $38
    inc bc
    nop
    add b
    ld b, $04
    rst $38
    nop
    nop
    add b
    ld b, $82
    ld b, $ff
    rst $38
    ld bc, $f1ff
    nop
    sub c
    ld h, c
    dec hl
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $8d00
    ld h, c
    dec l
    inc b
    rst $38
    rst $38
    inc l
    inc b
    rst $38
    rst $38
    ld a, [c]
    dec b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $9f00
    ld h, c
    db $f4
    dec b
    rst $38
    rst $38
    di
    dec b
    rst $38
    rst $38
    ld bc, $9dff
    nop
    call $0161
    rst $38
    scf
    nop
    cp l
    ld h, c
    ld bc, $32ff
    nop
    cp c
    ld h, c
    ld h, e
    ld bc, $ffff
    nop
    ld [bc], a
    rst $38
    rst $38
    cpl
    inc b
    inc bc
    rst $38
    sbc l
    nop
    inc b
    rst $38
    nop
    nop
    add b
    ld b, $82
    ld b, $ff
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
    ld bc, $f1ff
    nop
    inc hl
    ld h, d
    ld bc, $25ff
    nop
    dec d
    ld h, d
    ld bc, $37ff
    nop
    inc bc
    ld h, d
    ld bc, $1dff
    nop
    rst $38
    ld h, c
    ld bc, $32ff
    nop
    ei
    ld h, c
    ld h, d
    ld bc, $ffff
    ld bc, $ff02
    rst $38
    call z, $ff02
    rst $38
    ld l, $04
    dec d
    rst $38
    inc a
    ret z

    ld bc, $1100
    ld h, d
    add e
    inc bc
    rst $38
    rst $38
    and h
    inc b
    rst $38
    rst $38
    rst $28
    inc bc
    dec d
    rst $38
    inc a
    ret z

    ld bc, $1100
    ld h, d
    add e
    inc bc
    rst $38
    rst $38
    push af
    dec b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $1100
    ld h, d
    add e
    inc bc
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    sub c
    ld h, d
    ld bc, $37ff
    nop
    ld a, a
    ld h, d
    ld bc, $35ff
    nop
    ld l, l
    ld h, d
    ld bc, $1dff
    nop
    ld e, e
    ld h, d
    ld h, h
    ld bc, $ff15
    inc a
    ret z

    ld bc, $5700
    ld h, d
    adc $08
    rst $38
    rst $38
    rst $08
    ld [$ffff], sp
    db $cd, $02, $15
    rst $38
    inc a
    ret z

    ld bc, $6900
    ld h, d
    adc $02
    rst $38
    rst $38
    rst $08
    ld [bc], a
    rst $38
    rst $38
    db $76
    inc bc
    dec d
    rst $38
    inc a
    ret z

    ld bc, $7b00
    ld h, d
    ld a, b
    inc bc
    rst $38
    rst $38
    ld [hl], a
    inc bc
    rst $38
    rst $38
    jr nc, jr_00c_6285

    dec d
    rst $38
    inc a
    ret z

jr_00c_6285:
    ld bc, $8d00
    ld h, d
    ld a, b
    inc bc
    rst $38
    rst $38
    ld sp, $ff04
    rst $38
    or $05
    dec d
    rst $38
    inc a
    ret z

    ld bc, $9f00
    ld h, d
    ld a, b
    inc bc
    rst $38
    rst $38
    rst $30
    dec b
    rst $38
    rst $38
    ld a, c
    inc bc
    rst $38
    rst $38
    ld a, c
    inc bc
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
    ld bc, $f1ff
    nop
    pop bc
    ld h, d
    ld [hl-], a
    inc b
    rst $38
    rst $38
    ld hl, sp+$05
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    rst $08
    ld h, d
    ld h, l
    ld bc, $ffff
    ld e, a
    inc b
    rst $38
    rst $38
    ld bc, $f6ff
    nop
    ld sp, $0164
    rst $38
    pop af
    nop
    dec l
    ld h, h
    ld bc, $9eff
    nop
    add hl, hl
    ld h, h
    nop
    rst $38
    scf
    nop
    pop af
    ld h, d
    ld bc, $40ff
    nop
    inc de
    ld h, h
    ld bc, $40ff
    nop
    rrca
    ld h, h
    ld h, [hl]
    ld bc, $ff15
    inc a
    ret z

    nop
    nop
    dec b
    ld h, e
    ld h, a
    ld bc, $ffff
    dec d
    rst $38
    adc l
    db $ca, $01, $00

    inc hl
    ld h, e
    inc hl
    rst $38
    nop
    nop
    daa
    ld h, e
    inc hl
    rst $38
    ld bc, $6500
    ld h, e
    inc hl
    rst $38
    ld [bc], a
    nop
    ld a, e
    ld h, e
    ld l, b
    ld bc, $ffff
    reti


    inc b
    rst $38
    rst $38
    ld l, c
    ld bc, $016a
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    adc e
    ld h, e
    inc hl
    rst $38
    ld bc, $4300
    ld h, e
    inc hl
    rst $38
    ld [bc], a
    nop
    ld d, a
    ld h, e
    ld l, l
    ld bc, $ffff
    ld l, [hl]
    ld bc, $ff15
    inc a
    ret z

    nop
    nop
    adc e
    ld h, e
    inc hl
    rst $38
    ld [bc], a
    nop
    ld d, a
    ld h, e
    ld l, l
    ld bc, $ffff
    ld l, [hl]
    ld bc, $ff15
    inc a
    ret z

    nop
    nop
    adc e
    ld h, e
    ld l, l
    ld bc, $ffff
    ld l, c
    ld bc, $016a
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    adc e
    ld h, e
    inc hl
    rst $38
    ld [bc], a
    nop
    ld d, a
    ld h, e
    ld l, l
    ld bc, $ffff
    ld l, c
    ld bc, $016a
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    adc e
    ld h, e
    ld l, l
    ld bc, $ffff
    ld l, e
    ld bc, $08d3
    ld b, $ff
    dec h
    rst $38
    ld h, c
    rst $38
    dec a
    ld h, h
    inc h
    rst $38
    dec [hl]
    ld h, h
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    ld c, l
    ld h, h
    inc h
    rst $38
    ld b, l
    ld h, h
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    dec a
    ld h, h
    inc h
    rst $38
    dec [hl]
    ld h, h
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    ld c, l
    ld h, h
    inc h
    rst $38
    ld b, l
    ld h, h
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    dec a
    ld h, h
    inc h
    rst $38
    dec [hl]
    ld h, h
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    ld c, l
    ld h, h
    inc h
    rst $38
    ld b, l
    ld h, h
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    dec a
    ld h, h
    inc h
    rst $38
    dec [hl]
    ld h, h
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    ld c, l
    ld h, h
    inc h
    rst $38
    ld b, l
    ld h, h
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    dec a
    ld h, h
    inc h
    rst $38
    dec [hl]
    ld h, h
    add hl, bc
    rst $38
    inc b
    nop
    rlca
    rst $38
    ld l, h
    ld bc, $ff03
    ld b, b
    nop
    ld [de], a
    rst $38
    ld a, [hl-]
    reti


    ld bc, $ff00
    rst $38
    ld l, a
    ld bc, $ffff
    inc [hl]
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $2100
    ld h, h
    dec [hl]
    inc b
    rst $38
    rst $38
    ld [hl], $04
    inc bc
    rst $38
    sbc [hl]
    nop
    rst $38
    rst $38
    scf
    inc b
    rst $38
    rst $38
    ld sp, hl
    dec b
    rst $38
    rst $38
    and b
    rlca
    rst $38
    rst $38
    ld b, [hl]
    nop
    ld [hl], b
    ld [hl], c
    ret c

    ld [hl], d
    ld [hl], e
    reti


    ld b, [hl]
    nop
    inc bc
    inc bc
    ret c

    inc bc
    inc bc
    reti


    ld b, [hl]
    nop
    ld b, b
    ld b, c
    ret c

    ld b, d
    ld b, e
    reti


    ld b, [hl]
    nop
    ld [bc], a
    ld [bc], a
    ret c

    ld [bc], a
    ld [bc], a
    reti


    ld bc, $f6ff
    nop
    ld e, c
    ld h, l
    ld bc, $f5ff
    nop
    adc l
    ld h, h
    ld bc, $f1ff
    nop
    add l
    ld h, h
    nop
    rst $38
    scf
    nop
    ld [hl], e
    ld h, h
    ld bc, $40ff
    nop
    add c
    ld h, h
    ld bc, $40ff
    nop
    ld a, l
    ld h, h
    ld [hl], b
    ld bc, $ffff
    ld [hl], c
    ld bc, $ffff
    jr c, @+$06

    rst $38
    rst $38
    ld a, [$0305]
    rst $38
    push af
    nop
    rst $38
    rst $38
    ei
    dec b
    jr c, @+$01

    nop
    nop
    and l
    ld h, h
    jr c, @+$01

    ld bc, $a500
    ld h, h
    jr c, @+$01

    ld [bc], a
    nop
    and l
    ld h, h
    inc b
    ld [bc], a
    rst $38
    rst $38
    db $fc
    dec b
    db $fd
    dec b
    cp $05
    ld b, $ff
    ld h, c
    rst $38
    ld h, l
    ld h, l
    inc h
    rst $38
    ld e, l
    ld h, l
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    ld [hl], l
    ld h, l
    inc h
    rst $38
    ld l, l
    ld h, l
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    ld h, l
    ld h, l
    inc h
    rst $38
    ld e, l
    ld h, l
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    ld [hl], l
    ld h, l
    inc h
    rst $38
    ld l, l
    ld h, l
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    ld h, l
    ld h, l
    inc h
    rst $38
    ld e, l
    ld h, l
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    ld [hl], l
    ld h, l
    inc h
    rst $38
    ld l, l
    ld h, l
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    ld h, l
    ld h, l
    inc h
    rst $38
    ld e, l
    ld h, l
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    ld [hl], l
    ld h, l
    inc h
    rst $38
    ld l, l
    ld h, l
    add hl, bc
    rst $38
    ld bc, $6100
    rst $38
    ld h, l
    ld h, l
    inc h
    rst $38
    ld e, l
    ld h, l
    add hl, bc
    rst $38
    inc b
    nop
    rlca
    rst $38
    rst $38
    dec b
    inc bc
    rst $38
    or $00
    nop
    rst $38
    dec d
    nop
    dec l
    ld h, l
    ld bc, $2dff
    nop
    ld d, c
    ld h, l
    ld bc, $2dff
    nop
    ld c, c
    ld h, l
    ld bc, $15ff
    nop
    ld b, c
    ld h, l
    ld [de], a
    rst $38
    ld a, [hl-]
    reti


    dec b
    nop
    rst $38
    rst $38
    ld [de], a
    rst $38
    ld a, [hl-]
    reti


    ld b, $00
    rst $38
    rst $38
    ld [de], a
    rst $38
    ld a, [hl-]
    reti


    rlca
    nop
    rst $38
    rst $38
    ld [de], a
    rst $38
    ld a, [hl-]
    reti


    ld [$ff00], sp
    rst $38
    and c
    rlca
    rst $38
    rst $38
    ld c, $01
    ld [hl], b
    ld [hl], c
    ret c

    ld [hl], d
    ld [hl], e
    reti


    ld c, $01
    inc bc
    inc bc
    ret c

    inc bc
    inc bc
    reti


    ld c, $01
    ld b, b
    ld b, c
    ret c

    ld b, d
    ld b, e
    reti


    ld c, $01
    ld [bc], a
    ld [bc], a
    ret c

    ld [bc], a
    ld [bc], a
    reti


    ld bc, $f3ff
    nop
    dec e
    ld h, [hl]
    ld bc, $f1ff
    nop
    rrca
    ld h, [hl]
    ld bc, $25ff
    nop
    ld bc, $0166
    rst $38
    scf
    nop
    di
    ld h, l
    ld bc, $35ff
    nop
    push hl
    ld h, l
    ld bc, $1dff
    nop
    rst $10
    ld h, l
    ld bc, $45ff
    nop
    ret


    ld h, l
    ld bc, $31ff
    nop
    cp e
    ld h, l
    ld [hl], d
    ld bc, $ff15
    inc a
    ret z

    ld bc, $2f00
    ld h, [hl]
    ld [hl], e
    ld bc, $ffff
    ld [hl], d
    ld bc, $ff15
    inc a
    ret z

    ld bc, $2f00
    ld h, [hl]
    or e
    ld bc, $ffff
    ld [hl], d
    ld bc, $ff15
    inc a
    ret z

    ld bc, $2f00
    ld h, [hl]
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    ld [hl], d
    ld bc, $ff15
    inc a
    ret z

    ld bc, $2f00
    ld h, [hl]
    ret nc

    ld [bc], a
    rst $38
    rst $38
    ld [hl], d
    ld bc, $ff15
    inc a
    ret z

    ld bc, $2f00
    ld h, [hl]
    ld a, d
    inc bc
    rst $38
    rst $38
    ld [hl], d
    ld bc, $ff15
    inc a
    ret z

    ld bc, $2f00
    ld h, [hl]
    inc sp
    inc b
    rst $38
    rst $38
    ld [hl], d
    ld bc, $ff15
    inc a
    ret z

    ld bc, $2f00
    ld h, [hl]
    sbc l
    inc b
    rst $38
    rst $38
    ld [hl], d
    ld bc, $ff15
    inc a
    ret z

    ld bc, $2f00
    ld h, [hl]
    ld e, b
    inc bc
    rst $38
    rst $38
    ld [hl], d
    ld bc, $ff15
    inc a
    ret z

    ld bc, $2b00
    ld h, [hl]
    rst $10
    inc bc
    rst $38
    rst $38
    ld c, c
    inc bc
    rst $38
    rst $38
    ld [hl], h
    ld bc, $ffff
    ld e, e
    ld h, [hl]
    ld e, l
    ld h, [hl]
    ld h, c
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld l, c
    ld h, [hl]
    ld [hl], c
    ld h, a
    ld [hl], e
    ld h, a
    ld [hl], a
    ld h, a
    ld a, e
    ld h, a
    adc c
    ld h, a
    adc l
    ld h, a
    rst $28
    ld h, a
    di
    ld h, a
    rst $30
    ld h, a
    ei
    ld h, a
    dec [hl]
    ld l, b
    ld h, a
    ld l, b
    ld l, c
    ld l, b
    ld l, e
    ld l, b
    ld l, l
    ld l, b
    rst $38
    rst $38
    inc sp
    ld bc, $ffff
    ld [hl-], a
    ld bc, $ffff
    inc [hl]
    ld bc, $ffff
    ld bc, $f1ff
    nop
    ld e, c
    ld h, a
    ld bc, $25ff
    nop
    ld b, c
    ld h, a
    ld bc, $37ff
    nop
    add hl, hl
    ld h, a
    ld bc, $35ff
    nop
    ld de, $0167
    rst $38
    inc [hl]
    nop
    ld sp, hl
    ld h, [hl]
    ld bc, $1dff
    nop
    pop hl
    ld h, [hl]
    ld bc, $33ff
    nop
    ret


    ld h, [hl]
    ld bc, $32ff
    nop
    or c
    ld h, [hl]
    ld h, [hl]
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $ad00
    ld h, [hl]
    inc b
    rst $38
    dec c
    nop
    nop
    nop
    ld [$07ff], sp
    rst $38
    ld a, [hl]
    inc b
    rst $38
    rst $38
    ld h, [hl]
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $c500
    ld h, [hl]
    inc b
    rst $38
    dec c
    nop
    nop
    nop
    ld [$07ff], sp
    rst $38
    inc bc
    ld [bc], a
    rst $38
    rst $38
    ld h, [hl]
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $dd00
    ld h, [hl]
    inc b
    rst $38
    dec c
    nop
    nop
    nop
    ld [$07ff], sp
    rst $38
    ld a, b
    ld [bc], a
    rst $38
    rst $38
    ld h, [hl]
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $f500
    ld h, [hl]
    inc b
    rst $38
    dec c
    nop
    nop
    nop
    ld [$07ff], sp
    rst $38
    pop de
    ld [bc], a
    rst $38
    rst $38
    ld h, [hl]
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $0d00
    ld h, a
    inc b
    rst $38
    dec c
    nop
    nop
    nop
    ld [$07ff], sp
    rst $38
    dec a
    inc bc
    rst $38
    rst $38
    ld h, [hl]
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $2500
    ld h, a
    inc b
    rst $38
    dec c
    nop
    nop
    nop
    ld [$07ff], sp
    rst $38
    ld a, e
    inc bc
    rst $38
    rst $38
    ld h, [hl]
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $3d00
    ld h, a
    inc b
    rst $38
    dec c
    nop
    nop
    nop
    ld [$07ff], sp
    rst $38
    add hl, sp
    inc b
    rst $38
    rst $38
    ld h, [hl]
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $5500
    ld h, a
    inc b
    rst $38
    dec c
    nop
    nop
    nop
    ld [$07ff], sp
    rst $38
    sbc [hl]
    inc b
    rst $38
    rst $38
    ld h, [hl]
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $6d00
    ld h, a
    inc b
    rst $38
    dec c
    nop
    nop
    nop
    ld [$07ff], sp
    rst $38
    and d
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, jr_00c_6776

    rst $38

jr_00c_6776:
    rst $38
    ld sp, $ff01
    rst $38
    ld bc, $09ff
    nop
    add l
    ld h, a
    ld d, h
    nop
    rst $38
    rst $38
    ld h, a
    nop
    rst $38
    rst $38
    ld d, l
    nop
    rst $38
    rst $38
    ld bc, $f8ff
    nop
    db $eb
    ld h, a
    ld bc, $f1ff
    nop
    db $e3
    ld h, a
    ld bc, $37ff
    nop
    rst $18
    ld h, a
    ld bc, $1dff
    nop
    db $db
    ld h, a
    ld bc, $33ff
    nop
    rst $10
    ld h, a
    ld bc, $32ff
    nop
    db $d3
    ld h, a
    ld bc, $31ff
    nop
    rst $08
    ld h, a
    ld bc, $30ff
    nop
    bit 4, a
    ld bc, $10ff
    nop
    rst $00
    ld h, a
    ld d, [hl]
    nop
    rst $38
    rst $38
    add a
    inc b
    rst $38
    rst $38
    ld [hl], l
    ld bc, $ffff
    or h
    ld bc, $ffff
    ret nc

    ld [$ffff], sp
    ld a, c
    ld [bc], a
    rst $38
    rst $38
    jp nc, $ff02

    rst $38
    dec sp
    inc b
    rst $38
    rst $38
    and h
    rlca
    inc bc
    rst $38
    ld hl, sp+$00
    rst $38
    rst $38
    and l
    rlca
    rst $38
    rst $38
    ld [hl], $01
    rst $38
    rst $38
    dec [hl]
    ld bc, $ffff
    db $dd
    nop
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    ld sp, $0168
    rst $38
    and b
    nop
    dec l
    ld l, b
    ld bc, $37ff
    nop
    dec h
    ld l, b
    ld bc, $36ff
    nop
    ld hl, $0168
    rst $38
    dec [hl]
    nop
    dec e
    ld l, b
    ld h, a
    nop
    rst $38
    rst $38
    ld a, h
    inc bc
    rst $38
    rst $38
    ld_long $ff03, a
    rst $38
    inc a
    inc b
    inc bc
    rst $38
    and b
    nop
    rst $38
    rst $38
    dec a
    inc b
    rst $38
    rst $38
    and [hl]
    rlca
    rst $38
    rst $38
    ld bc, $25ff
    nop
    ld h, e
    ld l, b
    nop
    rst $38
    ld [hl+], a
    nop
    ld b, a
    ld l, b
    ld bc, $37ff
    nop
    ld e, a
    ld l, b
    ld bc, $36ff
    nop
    ld e, e
    ld l, b
    ld bc, $35ff
    nop
    ld d, a
    ld l, b
    ld l, b
    nop
    rst $38
    rst $38
    ld a, l
    inc bc
    rst $38
    rst $38
    db $eb
    inc bc
    rst $38
    rst $38
    ld a, $04
    rst $38
    rst $38
    and b
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $faff
    nop
    ld a, e
    ld l, b
    xor b
    rlca
    inc bc
    rst $38
    ld_long a, $ff00
    rst $38
    xor c
    rlca
    rst $38
    rst $38
    push de
    ld l, b
    cp e
    ld l, d
    pop hl
    ld l, d
    xor e
    ld l, e
    jp $d16b


    ld l, e
    db $e3
    ld l, e
    rra
    ld l, h
    inc hl
    ld l, h
    ld c, a
    ld l, h
    ld [hl], c
    ld l, h
    ld [hl], l
    ld l, h
    add a
    ld l, h
    sub c
    ld l, h
    sbc e
    ld l, h
    sbc a
    ld l, h
    xor c
    ld l, h
    xor l
    ld l, h
    db $e3
    ld l, h
    rst $20
    ld l, h
    xor c
    ld l, l
    xor l
    ld l, l
    dec c
    ld l, [hl]
    ld b, e
    ld l, [hl]
    ld e, e
    ld l, [hl]
    sub c
    ld l, [hl]
    sub l
    ld l, [hl]
    rlca
    ld l, a
    db $fd
    ld l, a
    rra
    ld [hl], b
    ld [hl], e
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld a, e
    ld [hl], b
    ld a, a
    ld [hl], b
    adc l
    ld [hl], b
    xor a
    ld [hl], b
    rst $10
    ld [hl], b
    dec d
    ld [hl], c
    add hl, de
    ld [hl], c
    dec hl
    ld [hl], c
    cpl
    ld [hl], c
    inc sp
    ld [hl], c
    add c
    ld [hl], c
    ld c, $ff
    ld bc, $e300
    ld l, b
    ld c, $ff
    ld b, $00
    ld h, l
    ld l, c
    rst $38
    rst $38
    ld bc, $eeff
    nop
    pop hl
    ld l, b
    ld bc, $e5ff
    nop
    pop hl
    ld l, b
    ld bc, $e4ff
    nop
    rst $30
    ld l, b
    rst $38
    rst $38
    ld b, a
    rst $38
    nop
    nop
    rlca
    rst $38
    rst $28
    inc b
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
    add hl, bc
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4700
    rst $38
    ld [bc], a
    nop
    ld b, a
    rst $38
    inc bc
    nop
    ld b, a
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    dec b
    nop
    ld b, a
    rst $38
    ld b, $00
    add hl, bc
    rst $38
    stop
    ld [de], a
    rst $38
    adc d
    ret z

    inc bc
    nop
    ld [de], a
    rst $38
    adc e
    ret z

    nop
    nop
    ld a, $ff
    inc bc
    rst $38
    push hl
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
    ld c, c
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    rlca
    rst $38
    ldh a, [rDIV]
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    ld h, c
    ld l, c
    pop af
    inc b
    rst $38
    rst $38
    ld a, [c]
    inc b
    rst $38
    rst $38
    dec d
    rst $38
    ld [c], a
    reti


    nop
    nop
    pop hl
    ld l, b
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    ld b, b
    nop
    ld b, a
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld h, c
    rst $38
    ld d, l
    ld l, d
    inc h
    rst $38
    rst $28
    ld l, c
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld h, c
    rst $38
    ld e, l
    ld l, d
    inc h
    rst $38
    rst $30
    ld l, c
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld h, c
    rst $38
    ld l, e
    ld l, d
    inc h
    rst $38
    dec b
    ld l, d
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld h, c
    rst $38
    ld a, a
    ld l, d
    inc h
    rst $38
    add hl, de
    ld l, d
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld h, c
    rst $38
    sub e
    ld l, d
    inc h
    rst $38
    dec l
    ld l, d
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld h, c
    rst $38
    and a
    ld l, d
    inc h
    rst $38
    ld b, c
    ld l, d
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
    nop
    nop
    dec bc
    rst $38
    nop
    nop
    or b
    rst $38
    ld c, c
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
    rlca
    add hl, de
    rst $38
    inc e
    rst $38
    nop
    ld b, $19
    rst $38
    ld [de], a
    rst $38
    ld [c], a
    reti


    nop
    nop
    rst $38
    rst $38
    ret nc

    ld bc, $4140
    ret c

    ld b, d
    ld b, e
    reti


    sub b
    ld bc, $4140
    ret c

    ld b, d
    ld b, e
    ret c

    ld b, h
    ld b, l
    ret c

    ld b, [hl]
    ld b, a
    reti


    ld d, b
    ld bc, $4140
    ret c

    ld b, d
    ld b, e
    ret c

    ld b, h
    ld b, l
    ret c

    ld b, [hl]
    ld b, a
    ret c

    ld c, b
    ld c, c
    ret c

    ld c, d
    ld c, e
    reti


    db $10
    ld bc, $4140
    ret c

    ld b, d
    ld b, e
    ret c

    ld b, h
    ld b, l
    ret c

    ld b, [hl]
    ld b, a
    ret c

    ld c, b
    ld c, c
    ret c

    ld c, d
    ld c, e
    reti


    ret nc

    nop
    ld b, b
    ld b, c
    ret c

    ld b, d
    ld b, e
    ret c

    ld b, h
    ld b, l
    ret c

    ld b, [hl]
    ld b, a
    ret c

    ld c, b
    ld c, c
    ret c

    ld c, d
    ld c, e
    reti


    sub b
    nop
    ld b, b
    ld b, c
    ret c

    ld b, d
    ld b, e
    ret c

    ld b, h
    ld b, l
    ret c

    ld b, [hl]
    ld b, a
    ret c

    ld c, b
    ld c, c
    ret c

    ld c, d
    ld c, e
    reti


    ret nc

    ld bc, $0000
    ret c

    nop
    nop
    reti


    sub b
    ld bc, $0000
    ret c

    nop
    nop
    ret c

    nop
    nop
    ret c

    nop
    nop
    reti


    ld d, b
    ld bc, $0000
    ret c

    nop
    nop
    ret c

    nop
    nop
    ret c

    nop
    nop
    ret c

    nop
    nop
    ret c

    nop
    nop
    reti


    db $10
    ld bc, $0000
    ret c

    nop
    nop
    ret c

    nop
    nop
    ret c

    nop
    nop
    ret c

    nop
    nop
    ret c

    nop
    nop
    reti


    ret nc

    nop
    nop
    nop
    ret c

    nop
    nop
    ret c

    nop
    nop
    ret c

    nop
    nop
    ret c

    nop
    nop
    ret c

    nop
    nop
    reti


    sub b
    nop
    nop
    nop
    ret c

    nop
    nop
    ret c

    nop
    nop
    ret c

    nop
    nop
    ret c

    nop
    nop
    ret c

    nop
    nop
    reti


    ld bc, $45ff
    nop
    db $dd
    ld l, d
    ld bc, $31ff
    nop
    reti


    ld l, d
    ld l, c
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $d500
    ld l, d
    ld l, [hl]
    ld [$ffff], sp
    ld l, l
    ld [$ffff], sp
    or l
    ld bc, $ffff
    ld b, $02
    rst $38
    rst $38
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    db $10
    rst $38
    ld bc, $6800
    nop
    dec c
    rst $38
    inc bc
    nop
    ld a, [de]
    nop
    jr jr_00c_6af7

jr_00c_6af7:
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
    ld bc, $f1ff
    nop
    adc a
    ld l, e
    ld bc, $35ff
    nop
    add a
    ld l, e
    ld bc, $1dff
    nop
    ld a, a
    ld l, e
    nop
    rst $38
    dec c
    nop
    cpl
    ld l, e
    ld bc, $32ff
    nop
    ld [hl], a
    ld l, e
    ld bc, $0dff
    nop
    ld l, a
    ld l, e
    ld bc, $0cff
    nop
    ld b, e
    ld l, e
    rlca
    rst $38
    ld l, d
    nop
    inc d
    rst $38
    sub a
    ld l, e
    rlca
    rst $38
    ld l, e
    nop
    jr z, @+$01

    ld l, c
    ld l, e
    ld l, h
    nop
    ld b, $ff
    dec c
    rst $38
    ld bc, $0000
    nop
    ld [bc], a
    nop
    dec c
    rst $38
    ld bc, $0800
    nop
    ld bc, $0300
    rst $38
    dec c
    nop
    add hl, hl
    rst $38
    ld e, [hl]
    ld bc, $ffff
    ld l, l
    nop
    inc d
    rst $38
    sub a
    ld l, e
    rlca
    rst $38
    ld l, [hl]
    nop
    inc d
    rst $38
    sub a
    ld l, e
    rlca
    rst $38
    dec b
    ld [bc], a
    inc d
    rst $38
    sub a
    ld l, e
    rlca
    rst $38
    db $d3
    ld [bc], a
    inc d
    rst $38
    sub a
    ld l, e
    rlca
    rst $38
    ld a, [hl]
    inc bc
    inc d
    rst $38
    sub a
    ld l, e
    rlca
    rst $38
    xor d
    rlca
    inc d
    rst $38
    sub a
    ld l, e
    ld b, $ff
    dec c
    rst $38
    ld bc, $0000
    nop
    ld [bc], a
    nop
    dec c
    rst $38
    ld bc, $0800
    nop
    ld bc, $ff00
    rst $38
    ld bc, $f1ff
    nop
    cp a
    ld l, e
    ld bc, $35ff
    nop
    cp e
    ld l, e
    call nc, $ff02
    rst $38
    ld a, a
    inc bc
    rst $38
    rst $38
    xor e
    rlca
    rst $38
    rst $38
    ld bc, $94ff
    nop
    call $eb6b
    inc b
    rst $38
    rst $38
    db $ec
    inc b
    rst $38
    rst $38
    ld bc, $e3ff
    nop
    rst $18
    ld l, e
    db $ed
    inc b
    inc bc
    rst $38
    db $e3
    nop
    rst $38
    rst $38
    xor $04
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    rrca
    ld l, h
    ld bc, $32ff
    nop
    rst $38
    ld l, e
    ld c, c
    rst $38
    ld bc, $0d00
    rst $38
    ld bc, $1400
    nop
    ld [bc], a
    nop
    dec [hl]
    nop
    rst $38
    rst $38
    ld c, c
    rst $38
    ld bc, $0d00
    rst $38
    ld bc, $1400
    nop
    ld [bc], a
    nop
    add hl, bc
    ld [bc], a
    rst $38
    rst $38
    ld c, c
    rst $38
    ld bc, $0d00
    rst $38
    ld bc, $1400
    nop
    ld [bc], a
    nop
    xor [hl]
    rlca
    rst $38
    rst $38
    inc [hl]
    nop
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    ld c, e
    ld l, h
    ld bc, $35ff
    nop
    ld b, a
    ld l, h
    ld bc, $32ff
    nop
    ld b, e
    ld l, h
    ld bc, $09ff
    nop
    ccf
    ld l, h
    inc sp
    nop
    rst $38
    rst $38
    ld l, a
    nop
    rst $38
    rst $38
    rlca
    ld [bc], a
    rst $38
    rst $38
    add b
    inc bc
    rst $38
    rst $38
    xor h
    rlca
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    ld l, l
    ld l, h
    ld bc, $35ff
    nop
    ld l, c
    ld l, h
    ld bc, $32ff
    nop
    ld h, l
    ld l, h
    ld [hl], b
    nop
    rst $38
    rst $38
    ld [$ff02], sp
    rst $38
    add c
    inc bc
    rst $38
    rst $38
    xor l
    rlca
    rst $38
    rst $38
    di
    inc b
    rst $38
    rst $38
    ld bc, $e6ff
    nop
    add e
    ld l, h
    db $f4
    inc b
    inc bc
    rst $38
    and $00
    rst $38
    rst $38
    push af
    inc b
    rst $38
    rst $38
    rst $30
    inc b
    inc e
    rst $38
    inc bc
    add hl, bc
    add hl, de
    rst $38
    rst $38
    rst $38
    ld sp, hl
    inc b
    inc e
    rst $38
    inc b
    add hl, bc
    add hl, de
    rst $38
    rst $38
    rst $38
    or $04
    rst $38
    rst $38
    ld hl, sp+$04
    inc e
    rst $38
    ld b, $09
    add hl, de
    rst $38
    rst $38
    rst $38
    scf
    nop
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    rst $18
    ld l, h
    nop
    rst $38
    ld a, h
    nop
    cp a
    ld l, h
    ld bc, $25ff
    nop
    db $db
    ld l, h
    ld bc, $1dff
    nop
    db $d3
    ld l, h
    ld bc, $30ff
    nop
    rst $08
    ld l, h
    ld [hl], $00
    rst $38
    rst $38
    db $76
    ld bc, $ffff
    push de
    ld [bc], a
    inc bc
    rst $38
    ld a, h
    nop
    rst $38
    rst $38
    and c
    inc b
    rst $38
    rst $38
    xor a
    rlca
    rst $38
    rst $38
    sub $02
    rst $38
    rst $38
    ld bc, $e7ff
    nop
    sbc e
    ld l, l
    ei
    inc b
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    rst $38
    ld l, h
    db $fd
    inc b
    inc bc
    rst $38
    rst $20
    nop
    rst $38
    rst $38
    db $fc
    inc b
    ld b, a
    rst $38
    inc bc
    nop
    dec de
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    db $10
    rst $38
    nop
    nop
    adc b
    ld bc, $ff11
    nop
    nop
    ld e, b
    nop
    add hl, de
    rst $38
    dec de
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    dec de
    rst $38
    nop
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    dec de
    rst $38
    nop
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    ld a, [de]
    rst $38
    nop
    nop
    stop
    add hl, de
    rst $38
    dec de
    rst $38
    inc bc
    nop
    stop
    ld a, [de]
    rst $38
    nop
    nop
    stop
    add hl, de
    rst $38
    dec de
    rst $38
    inc bc
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
    inc bc
    nop
    stop
    dec de
    rst $38
    nop
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
    ld b, b
    nop
    ld hl, $55ff
    nop
    ld a, [de]
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
    ld b, b
    nop
    ld hl, $55ff
    nop
    add hl, bc
    rst $38
    ld [$0f00], sp
    rst $38
    add hl, bc
    nop
    jr @+$03

    ld [$ff00], sp
    rst $38
    cp $04
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    rst $38
    ld l, h
    db $fd
    inc b
    rst $38
    rst $38
    ld_long a, $ff04
    rst $38
    ld bc, $f1ff
    nop
    dec b
    ld l, [hl]
    ld bc, $e4ff
    nop
    ld bc, $016e
    rst $38
    ld a, e
    nop
    db $fd
    ld l, l
    ld bc, $1dff
    nop
    db $eb
    ld l, l
    ld bc, $04ff
    nop
    rst $20
    ld l, l
    ld bc, $09ff
    nop
    push de
    ld l, l
    dec sp
    nop
    rst $38
    rst $38
    ld a, [hl-]
    nop
    inc l
    rst $38
    add hl, bc
    ld l, [hl]
    add hl, hl
    ld bc, $ff03
    inc b
    nop
    ld a, [hl+]
    rst $38
    ld e, $00
    rst $38
    rst $38
    dec sp
    nop
    rst $38
    rst $38
    ld a, [hl-]
    nop
    inc l
    rst $38
    add hl, bc
    ld l, [hl]
    add hl, hl
    ld bc, $ff03
    ld a, e
    nop
    ld a, [hl+]
    rst $38
    ld e, $00
    rst $38
    rst $38
    dec sp
    nop
    rst $38
    rst $38
    ld [bc], a
    dec b
    rst $38
    rst $38
    or c
    rlca
    rst $38
    rst $38
    ld a, [hl+]
    ld bc, $ffff
    ld bc, $f1ff
    nop
    ccf
    ld l, [hl]
    ld bc, $e4ff
    nop
    dec sp
    ld l, [hl]
    ld bc, $25ff
    nop
    scf
    ld l, [hl]
    ld bc, $1dff
    nop
    inc sp
    ld l, [hl]
    ld bc, $32ff
    nop
    cpl
    ld l, [hl]
    add hl, sp
    nop
    rst $38
    rst $38
    dec bc
    ld [bc], a
    rst $38
    rst $38
    ret c

    ld [bc], a
    rst $38
    rst $38
    and e
    inc b
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    rst $38
    or b
    rlca
    rst $38
    rst $38
    ld bc, $32ff
    nop
    ld d, a
    ld l, [hl]
    ld bc, $09ff
    nop
    ld d, e
    ld l, [hl]
    jr c, jr_00c_6e51

jr_00c_6e51:
    rst $38
    rst $38
    ld [hl], c
    nop
    rst $38
    rst $38
    ld a, [bc]
    ld [bc], a
    rst $38
    rst $38
    ld bc, $fcff
    nop
    adc l
    ld l, [hl]
    ld bc, $f1ff
    nop
    adc c
    ld l, [hl]
    ld bc, $e4ff
    nop
    add l
    ld l, [hl]
    ld bc, $25ff
    nop
    add c
    ld l, [hl]
    ld bc, $35ff
    nop
    ld a, l
    ld l, [hl]
    rst $10
    ld [bc], a
    rst $38
    rst $38
    add d
    inc bc
    rst $38
    rst $38
    and d
    inc b
    rst $38
    rst $38
    nop
    dec b
    rst $38
    rst $38
    or d
    rlca
    rst $38
    rst $38
    or e
    rlca
    rst $38
    rst $38
    ld bc, $ff05
    rst $38
    ld bc, $f1ff
    nop
    rst $20
    ld l, [hl]
    ld bc, $e4ff
    nop
    inc bc
    ld l, a
    ld bc, $1dff
    nop
    rst $20
    ld l, [hl]
    ld bc, $0cff
    nop
    rst $20
    ld l, [hl]
    ld bc, $09ff
    nop
    di
    ld l, [hl]
    ld bc, $05ff
    nop
    rst $20
    ld l, [hl]
    inc a
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $d500
    ld l, [hl]
    dec a
    nop
    ccf
    nop
    inc bc
    rst $38
    dec b
    nop
    inc b
    rst $38
    inc bc
    nop
    ret nz

    ld b, $c2
    ld b, $ff
    rst $38
    ld a, $00
    ccf
    nop
    inc bc
    rst $38
    dec b
    nop
    inc b
    rst $38
    inc bc
    nop
    ret nz

    ld b, $c2
    ld b, $ff
    rst $38
    ret nz

    ld b, $04
    rst $38
    inc bc
    nop
    ret nz

    ld b, $c2
    ld b, $ff
    rst $38
    ld [hl], d
    nop
    inc bc
    rst $38
    inc c
    nop
    inc b
    rst $38
    inc bc
    nop
    ret nz

    ld b, $c2
    ld b, $ff
    rst $38
    inc b
    dec b
    rst $38
    rst $38
    nop
    rst $38
    db $e4
    nop
    inc de
    ld l, a
    ld bc, $a2ff
    nop
    ld sp, hl
    ld l, a
    ld bc, $a3ff
    nop
    rst $20
    ld l, a
    ld bc, $a2ff
    nop
    call $006f
    rst $38
    pop af
    nop
    ld sp, $016f
    rst $38
    and c
    nop
    sbc a
    ld l, a
    ld bc, $37ff
    nop
    ld [hl], c
    ld l, a
    ld bc, $e4ff
    nop
    ret


    ld l, a
    ld bc, $a1ff
    nop
    sbc a
    ld l, a
    ld bc, $37ff
    nop
    ld [hl], c
    ld l, a
    ld bc, $06ff
    nop
    ld e, a
    ld l, a
    ld b, b
    nop
    inc bc
    rst $38
    ld b, $00
    dec d
    rst $38
    inc a
    ret z

    ld bc, $5b00
    ld l, a
    ld b, c
    nop
    rst $38
    rst $38
    ld b, d
    nop
    rst $38
    rst $38
    ld b, e
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $6d00
    ld l, a
    ld b, c
    nop
    rst $38
    rst $38
    ld b, d
    nop
    rst $38
    rst $38
    ccf
    inc b
    inc bc
    rst $38
    and c
    nop
    dec d
    rst $38
    inc a
    ret z

    ld bc, $9700
    ld l, a
    jr z, @+$01

    sbc e
    ld l, a
    ld b, d
    inc b
    inc bc
    rst $38
    and d
    nop
    add hl, hl
    rst $38
    ld e, a
    ld bc, $ff0d
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    nop
    rst $38
    rst $38
    ld b, b
    inc b
    rst $38
    rst $38
    ld b, c
    inc b
    rst $38
    rst $38
    ld b, e
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $c100
    ld l, a
    jr z, @+$01

    push bc
    ld l, a
    ld b, d
    inc b
    inc bc
    rst $38
    and d
    nop
    add hl, hl
    rst $38
    ld e, a
    ld bc, $ff0d
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    nop
    rst $38
    rst $38
    ld b, b
    inc b
    rst $38
    rst $38
    ld b, c
    inc b
    rst $38
    rst $38
    ld e, l
    nop
    rst $38
    rst $38
    ld b, h
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $df00
    ld l, a
    ld b, [hl]
    inc b
    inc bc
    rst $38
    and e
    nop
    rst $38
    rst $38
    ld b, l
    inc b
    inc bc
    rst $38
    and e
    nop
    rst $38
    rst $38
    ld b, a
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $f500
    ld l, a
    ld b, [hl]
    inc b
    rst $38
    rst $38
    ld b, l
    inc b
    rst $38
    rst $38
    inc bc
    dec b
    rst $38
    rst $38
    ld bc, $32ff
    nop
    dec de
    ld [hl], b
    ld bc, $30ff
    nop
    rla
    ld [hl], b
    ld bc, $0cff
    nop
    inc de
    ld [hl], b
    ld b, h
    nop
    rst $38
    rst $38
    ld [hl], e
    nop
    rst $38
    rst $38
    ld [hl], a
    ld bc, $ffff
    inc c
    ld [bc], a
    rst $38
    rst $38
    reti


    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $6f00
    ld [hl], b
    dec d
    rst $38
    adc l
    jp z, RST_00

    ld l, e
    ld [hl], b
    ld e, a
    rst $38
    nop
    nop
    dec a
    ld [hl], b
    rst $00
    ld [$ff14], sp
    ccf
    ld [hl], b
    db $d2, $08, $15

    rst $38
    adc l
    db $ca, $01, $00

    ld l, e
    ld [hl], b
    ld e, a
    rst $38
    ld bc, $5300
    ld [hl], b
    rst $00
    ld [$ff14], sp
    ld d, l
    ld [hl], b
    db $d2, $08, $15

    rst $38
    adc l
    db $ca, $02, $00

    ld l, e
    ld [hl], b
    ld e, a
    rst $38
    ld [bc], a
    nop
    ld l, c
    ld [hl], b
    rst $00
    ld [$ff14], sp
    ld l, e
    ld [hl], b
    jp nc, $cd08

    ld [$ffff], sp
    jp z, $ff08

    rst $38
    dec b
    dec b
    rst $38
    rst $38
    ld b, $05
    rst $38
    rst $38
    rlca
    dec b
    rst $38
    rst $38
    ld bc, $32ff
    nop
    adc c
    ld [hl], b
    ld [hl], h
    nop
    rst $38
    rst $38
    dec c
    ld [bc], a
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    xor e
    ld [hl], b
    ld bc, $25ff
    nop
    and a
    ld [hl], b
    ld bc, $35ff
    nop
    and e
    ld [hl], b
    jp c, $ff02

    rst $38
    add h
    inc bc
    rst $38
    rst $38
    and l
    inc b
    rst $38
    rst $38
    or l
    rlca
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    db $d3
    ld [hl], b
    ld bc, $25ff
    nop
    rst $08
    ld [hl], b
    nop
    rst $38
    dec [hl]
    nop
    rst $00
    ld [hl], b
    ld bc, $6aff
    nop
    bit 6, b
    db $db
    ld [bc], a
    rst $38
    rst $38
    add l
    inc bc
    rst $38
    rst $38
    and [hl]
    inc b
    rst $38
    rst $38
    or [hl]
    rlca
    rst $38
    rst $38
    ld bc, $e8ff
    nop
    ld de, $6871
    inc bc
    inc bc
    rst $38
    add sp, $00
    dec c
    rst $38
    ld b, $00
    stop
    nop
    nop
    dec c
    rst $38
    ld b, $00
    jr jr_00c_70f1

jr_00c_70f1:
    sub b
    nop
    dec c
    rst $38
    ld b, $00
    ld a, [de]
    nop
    sub b
    nop
    dec c
    rst $38
    ld b, $00
    nop
    nop
    nop
    nop
    add hl, bc
    rst $38
    stop
    dec c
    rst $38
    ld b, $00
    nop
    nop
    ld b, b
    nop
    rst $38
    rst $38
    jr c, @+$05

    rst $38
    rst $38
    ld [$ff05], sp
    rst $38
    add hl, bc
    dec b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $2700
    ld [hl], c
    ld a, [bc]
    dec b
    rst $38
    rst $38
    dec bc
    dec b
    rst $38
    rst $38
    inc c
    dec b
    rst $38
    rst $38
    dec c
    dec b
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

    ld bc, $0b00
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
    dec bc
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
    dec bc
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
    rlca
    nop
    sbc b
    ld bc, $00d8
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

    ld bc, $0b00
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
    dec bc
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
    dec bc
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
    add hl, bc
    nop
    jr jr_00c_71cc

    ld e, b

jr_00c_71cc:
    nop
    rst $38
    rst $38
    ld sp, hl
    ld [hl], c
    ei
    ld [hl], c
    inc de
    ld [hl], d
    rla
    ld [hl], d
    cpl
    ld [hl], d
    ld d, a
    ld [hl], d
    add e
    ld [hl], d
    and l
    ld [hl], d
    pop de
    ld [hl], d
    ld sp, $5973
    ld [hl], e
    add e
    ld [hl], e
    xor e
    ld [hl], e
    jp $db73


    ld [hl], e
    ei
    ld [hl], e
    dec hl
    ld [hl], h
    cp e
    ld [hl], l
    cp a
    ld [hl], l
    rst $10
    ld [hl], l
    ld b, a
    db $76
    rst $38
    rst $38
    ld bc, $34ff
    nop
    rrca
    ld [hl], d
    ld bc, $33ff
    nop
    dec bc
    ld [hl], d
    ld c, $02
    rst $38
    rst $38
    ld a, d
    ld [bc], a
    rst $38
    rst $38
    ld a, $03
    rst $38
    rst $38
    rrca
    ld [bc], a
    rst $38
    rst $38
    ld bc, $34ff
    nop
    dec hl
    ld [hl], d
    ld bc, $33ff
    nop
    daa
    ld [hl], d
    db $10
    ld [bc], a
    rst $38
    rst $38
    ld a, e
    ld [bc], a
    rst $38
    rst $38
    ccf
    inc bc
    rst $38
    rst $38
    nop
    rst $38
    ld [hl+], a
    nop
    ld b, c
    ld [hl], d
    ld bc, $f1ff
    nop
    ld d, e
    ld [hl], d
    ld bc, $25ff
    nop
    ld c, a
    ld [hl], d
    ld bc, $22ff
    nop
    ld c, e
    ld [hl], d
    adc c
    inc bc
    rst $38
    rst $38
    adc d
    inc bc
    rst $38
    rst $38
    xor c
    inc b
    rst $38
    rst $38
    cp d
    rlca
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    ld a, a
    ld [hl], d
    ld bc, $25ff
    nop
    ld a, e
    ld [hl], d
    ld bc, $37ff
    nop
    ld [hl], a
    ld [hl], d
    ld bc, $36ff
    nop
    ld [hl], e
    ld [hl], d
    add [hl]
    inc bc
    rst $38
    rst $38
    db $ec
    inc bc
    rst $38
    rst $38
    ld c, b
    inc b
    rst $38
    rst $38
    and a
    inc b
    rst $38
    rst $38
    or a
    rlca
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    and c
    ld [hl], d
    ld bc, $37ff
    nop
    sbc l
    ld [hl], d
    ld bc, $36ff
    nop
    sbc c
    ld [hl], d
    add a
    inc bc
    rst $38
    rst $38
    db $ed
    inc bc
    rst $38
    rst $38
    ld c, c
    inc b
    rst $38
    rst $38
    cp b
    rlca
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    call $0172
    rst $38
    dec h
    nop
    ret


    ld [hl], d
    ld bc, $37ff
    nop
    push bc
    ld [hl], d
    ld bc, $36ff
    nop
    pop bc
    ld [hl], d
    adc b
    inc bc
    rst $38
    rst $38
    xor $03
    rst $38
    rst $38
    ld c, d
    inc b
    rst $38
    rst $38
    xor b
    inc b
    rst $38
    rst $38
    cp c
    rlca
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    dec l
    ld [hl], e
    nop
    rst $38
    add e
    nop
    push af
    ld [hl], d
    nop
    rst $38
    ld e, $01
    rst $28
    ld [hl], d
    nop
    rst $38
    dec h
    nop
    rst $28
    ld [hl], d
    ld bc, $20ff
    ld bc, $7329
    ld bc, $1eff
    ld bc, $7325
    ld bc, $83ff
    nop
    ld hl, $0173
    rst $38
    ld a, h
    nop
    dec e
    ld [hl], e
    ld bc, $1dff
    nop
    dec bc
    ld [hl], e
    ld de, $ff02
    rst $38
    db $dc, $02, $15
    rst $38
    inc a
    ret z

    ld bc, $1900
    ld [hl], e
    db $dd
    ld [bc], a
    rst $38
    rst $38
    sbc $02
    rst $38
    rst $38
    rst $18
    ld [bc], a
    rst $38
    rst $38
    adc e
    inc bc
    rst $38
    rst $38
    adc h
    inc bc
    rst $38
    rst $38
    xor d
    inc b
    rst $38
    rst $38
    cp e
    rlca
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    ld d, l
    ld [hl], e
    nop
    rst $38
    ld [hl+], a
    nop
    ld b, e
    ld [hl], e
    ld bc, $25ff
    nop
    ld d, c
    ld [hl], e
    ld bc, $22ff
    nop
    ld c, l
    ld [hl], e
    adc l
    inc bc
    rst $38
    rst $38
    adc [hl]
    inc bc
    rst $38
    rst $38
    xor e
    inc b
    rst $38
    rst $38
    cp h
    rlca
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    ld a, l
    ld [hl], e
    nop
    rst $38
    ld [hl+], a
    nop
    ld l, e
    ld [hl], e
    ld bc, $25ff
    nop
    ld a, c
    ld [hl], e
    ld bc, $22ff
    nop
    ld [hl], l
    ld [hl], e
    adc a
    inc bc
    rst $38
    rst $38
    sub b
    inc bc
    rst $38
    rst $38
    xor h
    inc b
    rst $38
    rst $38
    cp l
    rlca
    cp [hl]
    rlca
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    and a
    ld [hl], e
    nop
    rst $38
    ld [hl+], a
    nop
    sub l
    ld [hl], e
    ld bc, $25ff
    nop
    and e
    ld [hl], e
    ld bc, $22ff
    nop
    sbc a
    ld [hl], e
    sub c
    inc bc
    rst $38
    rst $38
    sub d
    inc bc
    rst $38
    rst $38
    xor l
    inc b
    rst $38
    rst $38
    cp a
    rlca
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    cp a
    ld [hl], e
    ld bc, $35ff
    nop
    cp e
    ld [hl], e
    add hl, de
    ld [bc], a
    rst $38
    rst $38
    sbc h
    inc bc
    rst $38
    rst $38
    add hl, de
    ld [bc], a
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    rst $10
    ld [hl], e
    ld bc, $35ff
    nop
    db $d3
    ld [hl], e
    add hl, de
    ld [bc], a
    rst $38
    rst $38
    sbc h
    inc bc
    rst $38
    rst $38
    add hl, de
    ld [bc], a
    rst $38
    rst $38
    ld bc, $4eff
    nop
    rst $30
    ld [hl], e
    pop de
    ld bc, $ff2c
    di
    ld [hl], e
    add hl, hl
    ld bc, $ff03
    ld c, [hl]
    nop
    ld a, [hl+]
    rst $38
    ld e, $00
    rst $38
    rst $38
    jp nc, $ff01

    rst $38
    adc d
    ld [bc], a
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    dec c
    ld [hl], h
    ld bc, $90ff
    nop
    daa
    ld [hl], h
    ld bc, $35ff
    nop
    ld de, $1b74
    ld [bc], a
    rst $38
    rst $38
    pop de
    ld bc, $ff2c
    inc hl
    ld [hl], h
    sbc l
    inc bc
    inc bc
    rst $38
    sub b
    nop
    ld a, [hl+]
    rst $38
    dec e
    nop
    rst $38
    rst $38
    sbc [hl]
    inc bc
    rst $38
    rst $38
    adc d
    ld [bc], a
    rst $38
    rst $38
    nop
    rst $38
    cpl
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    ld l, $00
    pop af
    ld [hl], h
    nop
    rst $38
    dec l
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    inc l
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    dec hl
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    ld a, [hl+]
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    add hl, hl
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    jr z, jr_00c_7459

jr_00c_7459:
    pop af
    ld [hl], h
    nop
    rst $38
    daa
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    ld h, $00
    pop af
    ld [hl], h
    nop
    rst $38
    dec h
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    inc h
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    inc hl
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    ld [hl+], a
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    ld hl, $f100
    ld [hl], h
    nop
    rst $38
    jr nz, jr_00c_7489

jr_00c_7489:
    pop af
    ld [hl], h
    nop
    rst $38
    rra
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    ld e, $00
    pop af
    ld [hl], h
    nop
    rst $38
    dec e
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    inc e
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    dec de
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    ld a, [de]
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    add hl, de
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    jr jr_00c_74b9

jr_00c_74b9:
    pop af
    ld [hl], h
    nop
    rst $38
    rla
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    ld d, $00
    pop af
    ld [hl], h
    nop
    rst $38
    dec d
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    inc d
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    inc de
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    ld [de], a
    nop
    pop af
    ld [hl], h
    nop
    rst $38
    ld de, $f100
    ld [hl], h
    nop
    rst $38
    stop
    pop af
    ld [hl], h
    ld bc, $fbff
    nop
    ld h, a
    ld [hl], l
    ld bc, $fbff
    nop
    ld h, e
    ld [hl], l
    ld bc, $f1ff
    nop
    ld e, e
    ld [hl], l
    ld bc, $4dff
    nop
    add hl, de
    ld [hl], l
    ld bc, $4cff
    nop
    ld de, $1275
    ld [bc], a
    inc bc
    rst $38
    ld c, h
    nop
    rst $38
    rst $38
    inc de
    ld [bc], a
    inc bc
    rst $38
    ld c, l
    nop
    rst $38
    rst $38
    inc d
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    ld bc, $2500
    ld [hl], l
    dec d
    ld [bc], a
    ld d, $02
    dec c
    rst $38
    inc bc
    nop
    nop
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
    ld c, c
    rst $38
    inc bc
    nop
    add hl, bc
    rst $38
    ld bc, $1300
    rst $38
    db $e3
    ret c

    inc bc
    nop
    inc e
    rst $38
    inc bc
    rla
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
    ld b, a
    reti


    ld bc, $ff00
    rst $38
    ret nz

    rlca
    inc bc
    rst $38
    ei
    nop
    rst $38
    rst $38
    pop bc
    rlca
    rst $38
    rst $38
    db $c2, $07, $15

    rst $38
    inc a
    ret z

    ld bc, $b300
    ld [hl], l
    jr z, @+$01

    or a
    ld [hl], l
    push bc
    rlca
    inc bc
    rst $38
    db $fc
    nop
    add hl, hl
    rst $38
    rst $18
    nop
    ld [de], a
    rst $38
    ld b, a
    reti


    ld bc, $0d00
    rst $38
    inc bc
    nop
    nop
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
    ld c, c
    rst $38
    inc bc
    nop
    add hl, bc
    rst $38
    ld bc, $1300
    rst $38
    db $e3
    ret c

    inc bc
    nop
    inc e
    rst $38
    inc bc
    rla
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
    rst $38
    rst $38
    jp $ff07


    rst $38
    call nz, $ff07
    rst $38
    jr jr_00c_75bf

    rst $38
    rst $38

jr_00c_75bf:
    ld bc, $f1ff
    nop
    db $d3
    ld [hl], l
    ld bc, $34ff
    nop
    rst $08
    ld [hl], l
    rla
    ld [bc], a
    rst $38
    rst $38
    ld b, b
    inc bc
    rst $38
    rst $38
    add $07
    rst $38
    rst $38
    ld bc, $8eff
    nop
    di
    ld [hl], l
    ld bc, $8dff
    nop
    db $eb
    ld [hl], l
    sub e
    inc bc
    inc bc
    rst $38
    adc l
    nop
    rst $38
    rst $38
    sub h
    inc bc
    inc bc
    rst $38
    adc [hl]
    nop
    rst $38
    rst $38
    sub l
    inc bc
    dec d
    rst $38
    inc a
    ret z

    ld bc, $0500
    db $76
    sub [hl]
    inc bc
    sub a
    inc bc
    inc d
    rst $38
    inc de
    db $76
    sbc b
    inc bc
    dec d
    rst $38
    inc a
    ret z

    ld bc, $0500
    db $76
    sbc c
    inc bc
    sbc d
    inc bc
    dec c
    rst $38
    inc bc
    nop
    nop
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
    ld c, c
    rst $38
    inc bc
    nop
    add hl, bc
    rst $38
    ld bc, $1300
    rst $38
    db $e3
    ret c

    inc bc
    nop
    inc e
    rst $38
    inc bc
    rla
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
    ld b, a
    reti


    inc bc
    nop
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    ld l, a
    db $76
    ld bc, $25ff
    nop
    ld l, e
    db $76
    ld bc, $37ff
    nop
    ld h, a
    db $76
    ld bc, $36ff
    nop
    ld h, e
    db $76
    sbc e
    inc bc
    rst $38
    rst $38
    ldh a, [$03]
    rst $38
    rst $38
    ld c, h
    inc b
    rst $38
    rst $38
    xor [hl]
    inc b
    rst $38
    rst $38
    add $07
    rst $38
    rst $38
    ld [hl], l
    db $76
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
