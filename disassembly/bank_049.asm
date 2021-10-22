; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $049", ROMX[$4000], BANK[$49]

    ld c, c
    ld b, l
    ld b, c
    ld h, d
    ld b, c
    ld a, a
    ld b, c
    add hl, bc
    ld b, b
    sbc h
    ld b, c
    ld h, b
    ld b, d
    bit 0, d
    rst $30
    ld b, d
    ld [hl+], a
    ld b, e
    ld a, [hl-]
    ld b, e
    ld e, e
    ld b, e
    ld [hl], a
    ld b, e
    xor h
    ld b, e
    ld a, [$3043]
    ld b, h
    ld l, [hl]
    ld b, h
    or c
    ld b, h
    call z, $fe44
    ld b, h
    dec hl
    ld b, l
    ld [hl], d
    ld b, l
    inc bc
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld h, b
    ld b, [hl]
    add d
    ld b, [hl]
    sbc h
    ld b, [hl]
    or d
    ld b, [hl]
    db $e4
    ld b, [hl]
    nop
    ld b, a
    inc e
    ld b, a
    and l
    ld b, a
    pop bc
    ld b, a
    ld [c], a
    ld b, a
    dec e
    ld c, b
    jr c, jr_049_408f

    ld l, l
    ld c, b
    and e
    ld c, b
    ld d, a
    ld c, c
    ld l, h
    ld c, c
    or d
    ld c, c
    add hl, hl
    ld c, d
    ld e, l
    ld c, d
    and a
    ld c, d
    adc $4a
    ld [$524b], sp
    ld c, e
    ld a, b
    ld c, e
    cp d
    ld c, e
    dec a
    ld c, h
    xor $4c
    dec hl
    ld c, l
    ld [hl], l
    ld c, l
    adc e
    ld c, l
    and b
    ld c, l
    ld c, c
    ld c, [hl]
    cp c
    ld c, [hl]
    ld [hl], $4f
    rst $00
    ld c, a
    di
    ld c, a
    jr c, jr_049_40c9

    ld a, l
    ld d, b
    cp c
    ld d, b
    pop af
    ld d, b
    dec e
    ld d, c
    adc [hl]
    ld d, c
    dec bc
    ld d, d
    ld d, c
    ld d, d
    ld l, a
    ld d, d
    xor e
    ld d, d
    db $db
    ld d, d
    inc de
    ld d, e

jr_049_408f:
    ld c, l
    ld d, e
    sub a
    ld d, e
    cp c
    ld d, e
    db $dc, $53, $15
    ld d, h
    ld a, [hl-]
    ld d, h
    ld e, l
    ld d, h
    sub h
    ld d, h
    jp c, $2654

    ld d, l
    ld e, l
    ld d, l
    ld [hl], h
    ld d, l
    adc l
    ld d, l
    ld a, [bc]
    ld d, [hl]
    ld a, [hl-]
    ld d, [hl]
    jp z, $ff56

    ld d, [hl]
    ld b, h
    ld d, a
    cp d
    ld d, a
    ld c, [hl]
    ld e, b
    or b
    ld e, b
    ret z

    ld e, c
    ld a, [hl+]
    ld e, d
    adc e
    ld e, d
    push bc
    ld e, d
    inc a
    ld e, e
    ld c, h
    ld e, e
    ld [hl], e
    ld e, e
    ret c

    ld e, e

jr_049_40c9:
    ld a, [hl+]
    ld e, h
    xor d
    ld e, h
    rst $10
    ld e, h
    jp hl


    ld e, h
    nop
    ld e, l
    ld l, h
    ld e, l
    add sp, $5e
    ld e, b
    ld e, a
    db $76
    ld h, c
    ret


    ld h, c
    cp $62
    and $63
    ld e, a
    ld h, h
    jp nz, Jump_049_6864

    ld h, l
    sbc a
    ld h, l
    bit 4, l
    ld c, c
    ld h, [hl]
    and d
    ld h, [hl]
    ei
    ld h, [hl]
    ld a, e
    ld h, a
    ld a, [hl]
    ld l, b
    ld [c], a
    ld l, b
    ld h, c
    ld l, c
    ld a, a
    ld l, c
    sub [hl]
    ld l, c
    ld [c], a
    ld l, c
    inc de
    ld l, e
    rlca
    ld l, h
    ld b, b
    ld l, h
    ld l, [hl]
    ld l, h
    add $6d
    ld [hl], l
    ld l, [hl]
    ld a, a
    ld l, a
    cp l
    ld l, a
    rst $00
    ld [hl], b
    db $10
    ld [hl], c
    xor l
    ld [hl], c
    pop hl
    ld [hl], c
    rst $30
    ld [hl], c
    ld a, [hl-]
    ld [hl], d
    or c
    ld [hl], d
    ld e, [hl]
    ld [hl], e
    ld [hl], c
    ld [hl], h
    or l
    ld [hl], h
    ld a, [bc]
    ld [hl], l
    sbc b
    ld [hl], l
    ld b, b
    db $76
    ret nz

    db $76
    jr nc, jr_049_41a4

    rrca
    ld a, b
    and $78
    ld l, l
    ld a, c
    add hl, bc
    ld a, d
    ld b, a
    ld a, d
    adc [hl]
    ld a, d
    jp nz, $f27a

    ld a, d
    add hl, sp
    ld a, e
    ld d, h
    ld a, e
    sub c
    ld a, e
    rst $28
    ld a, e

Call_049_4145:
    ld a, [$c823]
    cp $9e
    jr c, jr_049_415b

    sub $9e
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $1802
    rst $10
    ret


jr_049_415b:
    ld de, $4007
    call Call_000_05b6
    ret


    ld a, [$c823]
    cp $9e
    jr c, jr_049_4178

    sub $9e
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $1803
    rst $10
    ret


jr_049_4178:
    ld de, $4007
    call Call_000_05f6
    ret


    ld a, [$c823]
    cp $9e
    jr c, jr_049_4195

    sub $9e
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $1804
    rst $10
    ret


jr_049_4195:
    call Call_049_4145
    call Call_000_0609
    ret


    db $eb
    jr nc, jr_049_41e5

    ld c, c
    ld a, $56
    ld c, h
    ld d, d

jr_049_41a4:
    and e
    inc a
    ld b, d
    ld d, b
    ld e, [hl]
    ld h, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $43
    ld b, d
    ld b, d
    ld c, c
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
    ld a, [$eff7]
    xor $43
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld d, h
    ld a, $50
    ld h, d
    ld c, a
    ld b, d
    ld a, $49
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld c, h
    ld d, d
    and e
    dec h
    ld d, d
    ld d, c
    ld e, [hl]
    ld h, d
    ld b, [hl]
    ld d, c
    rst $28

jr_049_41e5:
    xor $40
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld c, h
    ld c, e
    ld c, c
    ld d, [hl]
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, d
    ld c, e
    ld h, d
    ld a, $62
    ld b, c
    ld c, a
    ld b, d
    ld a, $4a
    ld e, a
    rst $28
    xor $3c
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld c, d
    ld d, [hl]
    ld a, [$eff7]
    xor $41
    ld c, a
    ld b, d
    ld a, $4a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld c, h
    ld d, d
    and e
    ld sp, $544c
    ld h, d
    or $5e
    rst $28
    xor $49
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $50
    ld c, c
    ld b, d
    ld b, d
    ld c, l
    ld e, a
    rst $28
    xor $36
    ld d, h
    ld b, d
    ld b, d
    ld d, c
    ld h, d
    ld b, c
    ld c, a
    ld b, d
    ld a, $4a
    ld d, b
    ld h, e
    rst $30
    ldh a, [$eb]
    jr nc, jr_049_42a9

    ld c, c
    ld a, $56
    ld c, h
    ld d, d
    and e
    inc a
    ld b, d
    ld d, b
    ld e, [hl]
    ld h, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $54
    ld a, $50
    ld h, d
    ld d, c
    ld c, a
    ld d, d
    ld c, c
    ld d, [hl]
    ld h, d
    ld a, $62
    ld b, e
    ld d, d
    ld c, e
    ld a, [$eff7]
    xor $41
    ld c, a
    ld b, d
    ld a, $4a
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld c, h
    ld d, d
    and e
    ld sp, $544c
    ld h, d
    or $5e
    rst $28
    xor $2f
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ld b, h
    ld c, h
    ld h, d

jr_049_42a9:
    ccf
    ld a, $40
    ld c, b
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $50
    ld c, c
    ld b, d
    ld b, d
    ld c, l
    ld e, a
    rst $28
    xor $36
    ld d, h
    ld b, d
    ld b, d
    ld d, c
    ld h, d
    ld b, c
    ld c, a
    ld b, d
    ld a, $4a
    ld d, b
    ld h, e
    rst $30
    ldh a, [$eb]
    jr nc, jr_049_4314

    ld c, c
    ld a, $56
    ld c, h
    ld d, d
    and e
    ld a, [hl+]
    ld c, h
    ld c, h
    ld b, c
    ld h, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    rst $28
    xor $f6
    ld h, e
    ld a, [$eff7]
    xor $36
    ld d, h
    ld b, d
    ld b, d
    ld d, c
    ld h, d
    ld b, c
    ld c, a
    ld b, d
    ld a, $4a
    ld d, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    jr nc, jr_049_4340

    ld c, c
    ld a, $56
    ld c, h
    ld d, d
    and e
    ld a, [hl+]
    ld c, h
    ld c, h
    ld b, c
    ld h, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    rst $28
    xor $f6
    ld h, e
    ld h, d
    ld a, [hl+]
    ld c, h
    ld h, d
    ld d, c
    ld c, h

jr_049_4314:
    ld a, [$eff7]
    xor $50
    ld c, c
    ld b, d
    ld b, d
    ld c, l
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    jr nc, @+$48

    ld c, c
    ld a, $56
    ld c, h
    ld d, d
    and e
    ld e, a
    ld e, a
    ld e, a
    ld [hl-], a
    ld b, l
    ld h, h
    rst $28
    xor $5f
    ld e, a
    ld e, a
    or $63
    rst $30
    ldh a, [$eb]
    jr nc, jr_049_4383

    ld c, c
    ld a, $56

jr_049_4340:
    ld c, h
    ld d, d
    and e
    ld a, [hl-]
    ld b, l
    ld a, $51
    ld l, b
    ld h, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld c, l
    ld c, h
    ld b, b
    ld c, b
    ld b, d
    ld d, c
    ld h, h
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    ld a, [hl+]
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    rst $28
    xor $51
    ld b, l
    ld a, $51
    ld h, d
    ld c, d
    ld b, d
    ld a, $51
    ld e, a
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    ld a, [hl+]
    ld b, [hl]
    ld c, d

jr_049_4383:
    ld c, d
    ld b, d
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld b, d
    ld a, $51
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    inc l
    ld h, [hl]
    ld c, c
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld c, l
    ld a, $49
    ld h, e
    ld h, e
    rst $28
    xor $f7
    ldh a, [$f6]
    ld h, d
    ld b, b
    ld b, l
    ld b, d
    ld b, b
    ld c, b
    ld b, d
    ld b, c
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ccf
    ld c, h
    ld c, h
    ld c, b
    ld d, b
    ld b, l
    ld b, d
    ld c, c
    ld b, e
    ld e, a
    ld a, [$eff7]
    xor $a3
    jr z, jr_049_441b

    ld b, b
    ld d, [hl]
    ld b, b
    ld c, c
    ld c, h
    ld c, l
    ld b, d
    ld b, c
    ld b, [hl]
    ld a, $62
    ld c, h
    ld b, e
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld a, [$eff7]
    xor $24
    ld d, d
    ld d, c
    ld b, l
    ld c, h
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    or $63
    rst $28
    xor $f7
    ldh a, [$e9]
    ld h, b
    or $62
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld b, d
    ld b, c
    ld h, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld b, c
    ld c, a
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, a
    ld e, a
    ld a, [$eff7]
    xor $24
    ld c, e

jr_049_441b:
    ld b, c
    ld h, d
    ld b, c
    ld b, [hl]
    ld b, c
    ld c, e
    ld h, a
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    rst $28
    xor $4a
    ld d, d
    ld b, b
    ld b, l
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld b, b
    ld c, c
    ld b, [hl]
    ld b, e
    ld b, e
    ld d, b
    rst $28
    xor $51
    ld b, l
    ld a, $51
    ld h, d
    ld d, h
    ld b, d
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ld b, a
    ld d, d
    ld c, d
    ld c, l
    ld a, [$eff7]
    xor $4c
    ld b, e
    ld b, e
    ld h, d
    ld b, [hl]
    ld b, e
    ld h, d
    ld d, h
    ld b, d
    ld l, c
    ld b, d
    rst $28
    xor $3f
    ld c, a
    ld a, $53
    ld b, d
    ld h, e
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    ld a, [hl+]
    ld c, h
    ld c, h
    ld b, c
    ld h, d
    ld b, a
    ld c, h
    ccf
    rst $28
    xor $43
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $46
    ld c, e
    ld d, e
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ccf
    ld c, c
    ld b, d
    ld h, d
    ld b, e
    ld c, c
    ld c, h
    ld c, h
    ld c, a
    ld h, e
    rst $28
    xor $2f
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld c, h
    ld d, h
    ld h, e
    ld h, d
    inc a
    ld d, d
    ld c, d
    ld c, d
    ld d, [hl]
    rst $28
    xor $4a
    ld b, d
    ld a, $51
    ld h, e
    ld h, d
    inc a
    ld d, d
    ld c, d
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld c, h
    ld d, h
    ld e, [hl]
    ld h, d
    ld d, [hl]
    ld d, d
    ld c, d
    ld c, d
    ld d, [hl]
    rst $28
    xor $4a
    ld b, d
    ld a, $51
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld c, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $54
    ld a, $56
    ld h, d
    ld a, $44
    ld a, $46
    ld c, e
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld c, h
    ld d, h
    ld h, e
    ld h, d
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    ld b, c
    ld c, h
    rst $28
    xor $3e
    ld c, e
    ld d, [hl]
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld b, d
    ld a, $51
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    inc l
    ld d, c
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld c, d
    ld d, b
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld b, l
    ld a, $41
    ld h, d
    ld a, $62
    ld b, l
    ld a, $4f
    ld b, c
    ld a, [$eff7]
    xor $51
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, l
    ld c, h
    ld c, c
    ld b, d
    ld e, a
    rst $28
    xor $2f
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, e
    rst $30
    ldh a, [$f6]
    ld h, d
    ld b, b
    ld b, l
    ld b, d
    ld b, b
    ld c, b
    ld b, d
    ld b, c
    rst $28
    xor $4c
    ld d, d
    ld d, c
    ld h, d
    ld a, $62
    ld d, c
    ld c, a
    ld b, d
    ld a, $50
    ld d, d
    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $40
    ld b, l
    ld b, d
    ld d, b
    ld d, c
    ld h, e
    rst $28
    xor $3a
    ld c, h
    ld d, h
    ld h, e
    ld h, d
    scf
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld c, a
    ld b, d
    ld a, $50
    ld d, d
    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $40
    ld b, l
    ld b, d
    ld d, b
    ld d, c
    ld h, d
    ld d, h
    ld a, $50
    ld h, d
    ld a, $40
    ld d, c
    ld d, d
    ld a, $49
    ld c, c
    ld d, [hl]
    rst $28
    xor $3e
    ld h, d
    jr nc, jr_049_460a

    ld c, d
    ld b, [hl]
    ld b, b
    ld h, e
    ld h, e
    ld a, [$eff7]
    xor $25
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    jr nc, jr_049_461d

    ld c, d
    ld b, [hl]
    ld b, b
    rst $28
    xor $46
    ld d, b
    ld c, e
    ld h, a
    ld h, d
    ld b, c
    ld c, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld d, [hl]
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ccf
    ld d, d
    ld d, c
    rst $28
    xor $49
    ld a, $52
    ld b, h
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    rst $30
    ldh a, [$f6]
    ld h, d
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld b, d

jr_049_460a:
    ld b, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld d, c
    ld c, h
    rst $28
    xor $3e
    ld h, d
    ld b, a
    ld a, $4f
    ld e, a
    ld a, [$eff7]
    xor $37

jr_049_461d:
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld d, h
    ld a, $50
    ld h, d
    ld a, $ef
    xor $41
    ld a, $4f
    ld c, b
    ld c, e
    ld b, d
    ld d, b
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, d
    ld c, d
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, c
    ld c, a
    ld a, $54
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld [hl], $4c
    ld e, [hl]
    ld d, [hl]
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld d, d
    ld h, d
    ld d, b
    ld a, $3e
    ld a, $54
    rst $28
    xor $4a
    ld d, [hl]
    ld h, d
    ld b, e
    ld a, $40
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    ld h, e
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld d, c
    ld l, b
    ld h, d
    ld d, [hl]
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld d, d
    rst $28
    xor $3e
    ld b, h
    ld a, $3e
    ld a, $3e
    ld b, [hl]
    ld c, e
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc a
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld e, a
    ld e, a
    ld e, a
    ld h, e
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    ld a, [hl+]
    ld c, h
    ld c, h
    ld b, c
    rst $28
    xor $54
    ld c, h
    ld c, a
    ld c, b
    ld h, e
    ld h, d
    ld [hl], $4c
    ld e, [hl]
    ld c, c
    ld b, d
    ld d, c
    ld l, b
    ld a, [$eff7]
    xor $44
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld h, d
    ccf
    ld a, $3e
    ld a, $40
    ld c, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld [hl], $4e
    ld d, d
    ld b, d
    ld a, $48
    ld h, d
    ld d, b
    ld c, [hl]
    ld d, d
    ld b, d
    ld a, $48
    ld h, e
    rst $28
    xor $36
    ld d, c
    ld c, a
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl+]
    ld c, h
    ld c, h
    ld b, c
    ld h, d
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld e, [hl]
    rst $28
    xor $3c
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    ld h, d
    ld b, h
    ld c, h
    ld c, h
    ld b, c
    ld h, e
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    ld a, [hl+]
    ld c, h
    ld c, h
    ld b, c
    rst $28
    xor $54
    ld c, h
    ld c, a
    ld c, b
    ld h, d
    ld c, a
    ld b, d
    ld a, $41
    ld b, [hl]
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $36
    ld c, b
    ld d, [hl]
    daa
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld l, b
    ld h, d
    ld c, d
    ld c, h
    ld d, e
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    inc sp
    ld c, a
    ld b, d
    ld d, c
    ld d, c
    ld d, [hl]
    rst $28
    xor $50
    ld c, d
    ld a, $4f
    ld d, c
    ld h, d
    ld a, $4f
    ld b, d
    ld c, e
    ld h, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld e, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    ld sp, $544c
    ld e, [hl]
    rst $28
    xor $49
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld b, b
    ld a, $50
    ld d, c
    ld c, c
    ld b, d
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    cpl
    ld c, h
    ld c, h
    ld c, b
    ld h, d
    ld a, $51
    ld h, d
    ld c, d
    ld d, [hl]
    rst $28
    xor $40
    ld c, h
    ld c, h
    ld c, c
    ld h, d
    ld d, b
    ld d, c
    ld b, d
    ld c, l
    ld d, b
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl-]
    ld b, l
    ld d, [hl]
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $41
    ld a, $4b
    ld b, b
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld c, d
    ld b, d
    ld h, h
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4a
    ld b, d
    ld h, d
    ld a, $44
    ld a, $46
    ld c, e
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld b, c
    ld a, $4b
    ld b, b
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld c, d
    ld b, d
    ld h, h
    ld a, [$eff7]
    xor $35
    ld b, d
    ld a, $41
    ld d, [hl]
    ld h, h
    ld h, d
    cpl
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ld b, h
    ld c, h
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc a
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    ld h, d
    ld a, $62
    ld b, h
    ld c, a
    ld b, d
    ld a, $51
    rst $28
    xor $41
    ld a, $4b
    ld b, b
    ld b, d
    ld c, a
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    daa
    ld b, [hl]
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, d
    ld c, e
    ld b, a
    ld c, h
    ld d, [hl]
    rst $28
    xor $41
    ld a, $4b
    ld b, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, h
    ld h, d
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, c
    ld e, [hl]
    ld a, [$eff7]
    xor $49
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$37]
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $62
    ld d, e
    ld c, h
    ld b, [hl]
    ld b, b
    ld b, d
    rst $28
    xor $40
    ld c, h
    ld c, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld a, [$eff7]
    xor $4c
    ld b, e
    ld h, d
    ld c, e
    ld c, h
    ld d, h
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    dec hl
    ld b, d
    ld c, c
    ld c, c
    ld c, h
    ld e, a
    ld e, a
    ld e, a
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $51
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld h, d
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld l, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld c, l
    ld b, [hl]
    ld c, a
    ld b, [hl]
    ld d, c
    rst $28
    xor $4c
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, b
    ld c, l
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc a
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld c, l
    ld a, $4b
    ld b, [hl]
    ld c, h
    ld c, e
    rst $28
    xor $43
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $50
    ld c, l
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, [hl-]
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    rst $28
    xor $4a
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, l
    ld b, d
    ld c, c
    ld c, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $40
    ld c, h
    ld c, d
    ld c, l
    ld a, $4b
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, h
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    and e
    ld sp, $544c
    ld e, [hl]
    ld h, d
    ld d, h
    ld a, $46
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld c, e
    ld e, [hl]
    ld h, d
    ld d, h
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $49
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld b, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    rst $28
    xor $45
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    ld h, h
    rst $38
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld d, c
    ld h, d
    ld d, h
    ld a, $50
    ld h, d
    ld a, $40
    ld d, c
    ld d, d
    ld a, $49
    ld c, c
    ld d, [hl]
    rst $28
    xor $3e
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld a, [$eff7]
    xor $43
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld d, h
    ld a, $50
    ld c, e
    ld h, a
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    cpl
    ld b, d
    ld d, c
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld b, l
    ld b, d
    ld c, c
    ld c, l
    ld h, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld sp, $544c
    ld e, [hl]
    ld h, d
    ld d, h
    ld a, $46
    ld d, c
    ld h, d
    ld a, $ef
    xor $4a
    ld c, h
    ld c, d
    ld b, d
    ld c, e
    ld d, c
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld c, d
    ld b, d
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl-]
    ld a, $50
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, d
    ld b, d
    ld a, $51
    rst $28
    xor $51
    ld b, l
    ld a, $51
    ld h, d
    ld b, e
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $50
    ld c, l
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, h
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    and e
    ld e, a
    ld e, a
    ld e, a
    ld d, [hl]
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    ld h, d
    ld a, $ef
    xor $49
    ld b, [hl]
    ld a, $4f
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    rst $28
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld e, a
    ld h, d
    ld sp, $544c
    ld a, [$eff7]
    xor $44
    ld c, h
    ld h, d
    ld a, $54
    ld a, $56
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld e, a
    ld h, d
    ld sp, $544c
    ld e, [hl]
    ld h, d
    ld d, h
    ld a, $46
    ld d, c
    rst $28
    xor $3e
    ld h, d
    ld c, d
    ld c, h
    ld c, d
    ld b, d
    ld c, e
    ld d, c
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld c, d
    ld b, d
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld sp, $544c
    ld e, [hl]
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, h
    ld c, c
    ld b, c
    ld h, d
    ld b, h
    ld d, d
    ld d, [hl]
    ld h, d
    ld d, h
    ld b, l
    ld c, h
    ld a, [$eff7]
    xor $43
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $50
    ld c, l
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, h
    rst $38
    ldh a, [$eb]
    sbc a
    and e
    ld e, a
    ld e, a
    ld e, a
    ld d, [hl]
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    ld h, d
    ld a, $ef
    xor $49
    ld b, [hl]
    ld a, $4f
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    rst $28
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld e, a
    ld h, d
    ld sp, $544c
    ld a, [$eff7]
    xor $44
    ld c, h
    ld h, d
    ld a, $54
    ld a, $56
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld e, a
    ld h, d
    ld sp, $544c
    ld e, [hl]
    ld d, h
    ld a, $46
    ld d, c
    rst $28
    xor $3e
    ld h, d
    ld c, d
    ld b, [hl]
    ld c, e
    ld d, d
    ld d, c
    ld b, d
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld c, d
    ld b, d
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld sp, $544c
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $f9
    nop
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld h, d
    ld b, e
    ld b, d
    ld c, c
    ld c, c
    rst $28
    xor $46
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld c, l
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, h
    rst $38
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $3f
    ld a, $40
    ld c, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $51
    ld b, l
    ld a, $51
    ld h, d
    ld b, e
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $50
    ld c, l
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl+]
    ld c, h
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    rst $28
    xor $45
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    ld e, a
    ld e, a
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc a
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    ld h, d
    ld b, l
    ld c, h
    ld c, e
    ld b, d
    ld d, b
    ld d, c
    ld e, a
    rst $28
    xor $2c
    ld h, [hl]
    ld c, c
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld a, [$eff7]
    xor $3f
    ld a, $40
    ld c, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $51
    ld b, l
    ld a, $51
    ld h, d
    ld b, e
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $50
    ld c, l
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc h
    ld c, e
    ld b, c
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld a, $52
    ld d, b
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, l
    ld c, h
    ld c, e
    ld b, d
    ld d, b
    ld d, c
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $3e
    ld h, d
    daa
    ld b, [hl]
    ld b, h
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4b
    rst $28
    xor $41
    ld b, d
    ld b, e
    ld b, d
    ld a, $51
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld b, c
    ld b, [hl]
    ld b, c
    ld h, d
    ld d, h
    ld b, d
    ld c, c
    ld c, c
    ld e, a
    rst $28
    xor $33
    ld c, c
    ld b, d
    ld a, $50
    ld b, d
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $56
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld b, l
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld e, [hl]
    ld h, d
    ld b, [hl]
    ld d, c
    ld l, b
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $3e
    ld b, h
    ld a, $46
    ld c, e
    ld e, a
    ld h, d
    ld a, [hl-]
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld b, l
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    ld h, h
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    scf
    ld a, $48
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    ld sp, $544c
    ld h, d
    ld d, b
    ld c, h
    ld h, d
    ld c, c
    ld c, h
    ld c, e
    ld b, h
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld h, $4c
    ld c, d
    ld c, a
    ld a, $41
    ld b, d
    ld h, e
    rst $28
    xor $31
    ld c, h
    ld d, h
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld a, [$eff7]
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld d, d
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, d
    ld c, e
    ld b, [hl]
    ld d, c
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    and h
    ld a, $4b
    ld b, c
    ld h, d
    ld c, h
    ld c, l
    ld b, d
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $2a
    ld a, $51
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, e
    ld b, d
    ld d, h
    ld a, [$eff7]
    xor $3e
    ld b, h
    ld b, d
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc a
    ld b, d
    ld d, b
    ld h, e
    ld h, d
    inc h
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    rst $28
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld e, [hl]
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld e, [hl]
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    ccf
    ld d, [hl]
    rst $28
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld e, a
    ld e, a
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    ld c, l
    ld c, a
    ld c, h
    ld c, d
    ld b, [hl]
    ld d, b
    ld b, d
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld e, [hl]
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld c, a
    ld a, $41
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc h
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    ld h, d
    ld d, h
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $54
    ld b, d
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ld b, d
    ld a, $51
    ld h, d
    ld d, b
    ld b, [hl]
    ld c, a
    ld c, c
    ld c, h
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $50
    ld d, c
    ld b, d
    ld a, $48
    ld d, b
    ld h, d
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld b, c
    ld a, $56
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld b, e
    ld c, h
    ld c, a
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld c, d
    ld h, e
    ld h, h
    rst $28
    xor $2c
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld h, d
    ld d, h
    ld b, l
    ld d, [hl]
    ld a, [$eff7]
    xor $3f
    ld d, d
    ld d, c
    ld h, d
    inc l
    ld h, d
    ld b, e
    ld b, d
    ld b, d
    ld c, c
    rst $28
    xor $50
    ld c, h
    ld c, d
    ld b, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ccf
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld h, $4c
    ld c, d
    ld c, a
    ld a, $41
    ld b, d
    ld d, b
    ld h, e
    ld h, d
    jr z, jr_049_4f61

    ld b, b
    ld d, d
    ld d, b
    ld b, d
    rst $28
    xor $4a
    ld b, d
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld b, e
    ld a, $40
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, d
    ld d, [hl]
    ld a, [$eff7]
    xor $3f
    ld a, $40
    ld c, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld [hl], $46
    ld c, a
    ld c, c
    ld c, h
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, b
    ld d, c
    ld b, d
    ld a, $48
    rst $28
    xor $46
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld d, c
    ld a, $49
    ld c, c
    ld d, [hl]
    ld h, d
    ld d, [hl]
    ld d, d
    ld c, d
    ld c, d
    ld d, [hl]
    ld h, e
    ld a, [$eff7]
    xor $37
    ld b, l
    ld b, d
    ld c, a

jr_049_4f61:
    ld b, d
    ld b, e
    ld c, h
    ld c, a
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    dec hl
    ld c, d
    ld h, e
    ld h, h
    ld h, d
    inc l
    ld h, d
    ld b, e
    ld b, d
    ld b, d
    ld c, c
    rst $28
    xor $50
    ld c, h
    ld c, d
    ld b, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ccf
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld h, d
    ld a, $44
    ld a, $46
    ld c, e
    ld h, e
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld h, $4c
    ld c, d
    ld c, a
    ld a, $41
    ld b, d
    ld d, b
    ld h, e
    ld h, d
    ld a, [hl+]
    ld b, [hl]
    ld d, e
    ld b, d
    rst $28
    xor $4a
    ld b, d
    ld h, d
    ld a, $62
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, c
    ld c, c
    ld b, d
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld h, d
    ld b, c
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld h, d
    ld c, h
    ld c, e
    ld b, d
    rst $28
    xor $50
    ld b, [hl]
    ld c, a
    ld c, c
    ld c, h
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, b
    ld d, c
    ld b, d
    ld a, $48
    ld a, [$eff7]
    xor $3e
    ld h, d
    ld b, c
    ld a, $56
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld b, d
    ld b, d
    ld h, d
    ld b, l
    ld b, d
    ld b, d
    ld h, d
    ld b, l
    ld b, d
    ld b, d
    ld e, a
    rst $28
    xor $2c
    ld h, d
    ld c, c
    ld c, h
    ld d, e
    ld b, d
    ld h, d
    ccf
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $53
    ld b, [hl]
    ld c, c
    ld c, c
    ld a, $44
    ld b, d
    ld d, b
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, [hl-]
    ld a, $4b
    ld c, e
    ld a, $62
    ld d, c
    ld c, a
    ld d, [hl]
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, h
    rst $28
    xor $ff
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld b, d
    ld b, d
    ld h, d
    ld b, l
    ld b, d
    ld b, d
    ld h, d
    ld b, l
    ld b, d
    ld b, d
    ld e, a
    rst $28
    xor $25
    ld d, d
    ld c, a
    ld c, e
    ld l, [hl]
    ld c, d
    ld h, d
    ccf
    ld d, d
    ld c, a
    ld c, e
    ld e, h
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld c, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, [hl+]
    ld c, h
    ld h, d
    ccf
    ld d, d
    ld c, a
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, d
    rst $28
    xor $4e
    ld d, d
    ld b, [hl]
    ld b, b
    ld c, b
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld d, b
    ld c, h
    rst $28
    xor $3f
    ld c, h
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld a, $4b
    ld c, e
    ld a, $62
    ccf
    ld b, d
    rst $28
    xor $3f
    ld d, d
    ld c, a
    ld c, e
    ld b, d
    ld b, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld a, $41
    ld h, e
    ld h, h
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld a, $44
    ld a, $46
    ld c, e
    ld h, e
    rst $28
    xor $3c
    ld c, h
    ld d, d
    ld h, d
    ld c, a
    ld b, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ld h, d
    ld d, h
    ld a, $4b
    ld c, e
    ld a, $fa
    rst $30
    rst $28
    xor $3f
    ld b, d
    ld h, d
    ccf
    ld d, d
    ld c, a
    ld c, e
    ld d, c
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    dec h
    ld d, d
    ld c, a
    ld c, e
    ld h, d
    ld c, d
    ld b, d
    ld e, [hl]
    ld h, d
    ccf
    ld c, h
    ld b, [hl]
    ld c, c
    rst $28
    xor $4a
    ld b, d
    ld h, e
    ld h, d
    ld a, [hl-]
    ld b, l
    ld a, $51
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld h, e
    ld a, [$eff7]
    xor $24
    ld b, l
    ld c, a
    ld b, h
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    ld [hl-], a
    ld d, d
    ld b, b
    ld b, l
    ld h, e
    rst $28
    xor $2c
    ld l, d
    ld h, d
    ld b, h
    ld c, h
    ld c, e
    ld c, e
    ld a, $62
    ld c, l
    ld d, d
    ld d, c
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, a
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    ld sp, $544c
    ld h, e
    rst $28
    xor $2a
    ld c, h
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $40
    ld a, $50
    ld d, c
    ld c, c
    ld b, d
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    ld h, d
    ld a, $ef
    xor $44
    ld c, h
    ld c, h
    ld b, c
    ld h, d
    ld c, a
    ld b, d
    ld d, b
    ld d, c
    ld e, a
    rst $30
    ldh a, [$f6]
    ld h, d
    ld c, a
    ld b, d
    ld a, $41
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $4d
    ld c, h
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    ld a, [$eff7]
    xor $a3
    ld [hl-], a
    ld c, e
    ld b, b
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ld b, [hl]
    ld c, e
    ld e, [hl]
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld c, e
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld h, d
    ccf
    ld b, d
    ld a, [$eff7]
    xor $3e
    ccf
    ld c, c
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld e, a
    rst $28
    xor $30
    ld a, $48
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, c
    ld b, d
    ld b, b
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, c
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld c, e
    ld c, h
    rst $28
    xor $4f
    ld b, d
    ld b, h
    ld c, a
    ld b, d
    ld d, c
    ld d, b
    ld e, a
    rst $30
    ldh a, [$f6]
    ld h, d
    ld c, a
    ld b, d
    ld a, $41
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $4d
    ld c, h
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    ld a, [$eff7]
    xor $a3
    ld a, [hl-]
    ld a, $4b
    ld d, c
    ld b, d
    ld b, c
    ld h, e
    rst $28
    xor $2b
    ld a, $4d
    ld c, l
    ld d, [hl]
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    ld b, l
    ld b, d
    ld a, $49
    ld d, c
    ld b, l
    ld d, [hl]
    ld a, [$eff7]
    xor $3e
    ld c, l
    ld c, l
    ld c, c
    ld b, [hl]
    ld b, b
    ld a, $4b
    ld d, c
    ld d, b
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    dec hl
    ld b, [hl]
    ld h, e
    ld h, d
    ld a, [hl-]
    ld b, d
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ld d, b
    ld b, [hl]
    ld c, l
    ld e, a
    rst $28
    xor $36
    ld b, [hl]
    ld c, l
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    dec h
    ld c, h
    ld d, b
    ld d, b
    ld h, e
    ld h, d
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4b
    rst $28
    xor $43
    ld b, d
    ld b, d
    ld c, c
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld a, $62
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, a
    ld b, [hl]
    ld b, h
    ld b, h
    ld c, c
    ld b, d
    rst $28
    xor $47
    ld c, h
    ld b, h
    ld b, h
    ld c, c
    ld b, d
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc sp
    ld c, c
    ld b, d
    ld a, $50
    ld b, d
    ld h, d
    ld c, c
    ld b, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $50
    ld d, h
    ld b, d
    ld b, d
    ld d, c
    ld h, d
    ld a, $4f
    ld c, h
    ld c, d
    ld a, $62
    ld c, a
    ld b, d
    ld c, c
    ld a, $55
    ld a, [$eff7]
    xor $56
    ld c, h
    ld d, d
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc a
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    ld h, d
    ld c, a
    ld b, d
    ld a, $49
    ld c, c
    ld d, [hl]
    rst $28
    xor $51
    ld c, h
    ld c, h
    ld h, d
    ld c, d
    ld d, d
    ld b, b
    ld b, l
    ld e, a
    ld h, d
    dec h
    ld d, d
    ld d, c
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld l, b
    ld h, d
    ld c, e
    ld c, h
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    rst $28
    xor $49
    ld b, d
    ld b, e
    ld d, c
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    dec h
    ld c, h
    ld d, b
    ld d, b
    ld h, e
    ld h, d
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld a, $4f
    ld b, d
    rst $28
    xor $50
    ld c, h
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld h, e
    ld a, [$eff7]
    xor $25
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld l, b
    ld h, d
    ld c, e
    ld c, h
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    rst $28
    xor $49
    ld b, d
    ld b, e
    ld d, c
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    rst $28
    xor $49
    ld c, h
    ld d, c
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld b, b
    ld b, [hl]
    ld a, $49
    ld a, [$eff7]
    xor $50
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld h, e
    ld h, d
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $46
    ld d, b
    ld h, d
    ld c, e
    ld c, h
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld h, d
    ld c, c
    ld b, d
    ld b, e
    ld d, c
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    jr nc, jr_049_53e6

    ld c, d
    ld e, a
    ld e, a
    ld e, a
    ld h, d
    ld d, b
    ld b, [hl]
    ld c, l
    ld h, d
    ld d, b
    ld b, [hl]
    ld c, l
    ld h, e
    rst $28
    xor $2b
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    inc l
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl-]
    ld c, h
    ld d, h
    ld h, e
    ld h, d
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld c, a
    ld b, d
    ld a, $49
    ld c, c
    ld d, [hl]
    rst $28
    xor $46
    ld c, d
    ld c, l
    ld c, a
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld b, c
    ld h, d
    ld c, d
    ld b, d
    ld h, e
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    dec hl

jr_049_53e6:
    ld a, $41
    ld h, d
    ld a, $ef
    xor $44
    ld c, h
    ld c, h
    ld b, c
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, e
    ld h, h
    ld h, d
    ld a, [hl-]
    ld b, d
    ld l, h
    ld b, d
    ld a, [$eff7]
    xor $44
    ld c, h
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    ld h, d
    ld b, h
    ld c, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    ld sp, $544c
    ld e, [hl]
    ld h, d
    ld d, b
    ld c, c
    ld b, d
    ld b, d
    ld c, l
    ld h, d
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    rst $28
    xor $4c
    ld c, e
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld a, $4f
    ld c, d
    ld d, b
    ld e, a
    ld e, a
    ld e, a
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld e, [hl]
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $44
    ld c, a
    ld b, d
    ld a, $51
    ld e, a
    ld h, d
    ld a, [hl+]
    ld b, [hl]
    ld b, h
    ld b, h
    ld c, c
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    dec hl
    ld a, $41
    ld h, d
    ld a, $ef
    xor $44
    ld c, h
    ld c, h
    ld b, c
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, e
    ld h, h
    ld h, d
    ld a, [hl-]
    ld b, d
    ld h, d
    ld b, h
    ld c, h
    ld d, c
    ld a, [$eff7]
    xor $51
    ld c, h
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    ld h, d
    ld b, h
    ld c, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    ld c, c
    ld b, d
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $50
    ld c, c
    ld b, d
    ld b, d
    ld c, l
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld c, d
    ld d, [hl]
    ld a, [$eff7]
    xor $36
    ld c, c
    ld b, d
    ld b, d
    ld c, l
    inc h
    ld b, [hl]
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $2c
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld e, a
    ld e, a
    ld e, a
    ld a, [hl+]
    ld b, [hl]
    ld b, h
    ld b, h
    ld c, c
    ld b, d
    ld e, a
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc a
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld h, e
    rst $28
    xor $2c
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $41
    ld c, a
    ld b, d
    ld a, $4a
    ld e, [hl]
    ld h, d
    ld c, l
    ld c, c
    ld b, d
    ld a, $50
    ld b, d
    rst $28
    xor $41
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld c, c
    ld b, d
    ld d, c
    ld h, d
    ld c, d
    ld b, d
    ld a, [$eff7]
    xor $54
    ld a, $48
    ld b, d
    ld h, d
    ld d, d
    ld c, l
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    dec hl
    ld a, $41
    ld h, d
    ld a, $ef
    xor $44
    ld c, h
    ld c, h
    ld b, c
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, e
    ld h, h
    ld h, d
    ld a, [hl-]
    ld b, d
    ld h, d
    ld b, h
    ld c, h
    ld d, c
    ld a, [$eff7]
    xor $51
    ld c, h
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    ld h, d
    ld b, h
    ld c, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    rst $28
    xor $f7
    ldh a, [$3a]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    ld h, d
    ld b, c
    ld b, [hl]
    ld b, c
    ld c, e
    ld h, a
    rst $28
    xor $4f
    ld b, d
    ld c, l
    ld c, c
    ld d, [hl]
    ld e, a
    rst $30
    ldh a, [$2c]
    ld d, c
    ld h, d
    ld d, h
    ld a, $50
    ld h, d
    ld a, $ef
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    ld h, d
    ld b, c
    ld c, h
    ld c, c
    ld c, c
    ld h, e
    rst $30
    ldh a, [$f6]
    ld h, d
    ld b, b
    ld b, l
    ld b, d
    ld b, b
    ld c, b
    ld b, d
    ld b, c
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    rst $28
    xor $3e
    ld h, d
    ld d, c
    ld c, a
    ld b, d
    ld a, $50
    ld d, d
    ld c, a
    ld b, d
    ld h, d
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld d, c
    ld e, a
    ld a, [$eff7]
    xor $37
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld c, a
    ld b, d
    ld a, $50
    ld d, d
    ld c, a
    ld b, d
    ld h, d
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld d, c
    rst $28
    xor $54
    ld a, $50
    ld h, d
    ld a, $40
    ld d, c
    ld d, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]
    ld c, d
    ld b, [hl]
    ld b, b
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]
    ld c, d
    ld b, [hl]
    ld b, b
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $45
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld c, e
    ld b, h
    ld d, d
    ld b, d
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld e, a
    ld e, a
    ld e, a
    ld h, e
    rst $30
    ldh a, [$30]
    ld b, [hl]
    ld c, d
    ld b, [hl]
    ld b, b
    ld h, d
    ld b, b
    ld c, h
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, e
    ld d, d
    ld b, d
    ld d, b
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, b
    ld c, b
    ld h, d
    ld b, l
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $51
    ld c, h
    ld c, e
    ld b, h
    ld d, d
    ld b, d
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    dec h
    ld c, c
    ld b, d
    ld a, $51
    ld h, d
    ccf
    ld c, c
    ld b, d
    ld a, $51
    ld e, a
    rst $28
    xor $2c
    ld h, d
    ld b, b
    ld a, $4b
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ccf
    ld b, d
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, e
    ld b, d
    ld a, [$eff7]
    xor $51
    ld b, l
    ld a, $51
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld c, d
    ld a, $41
    ld b, d
    rst $28
    xor $46
    ld d, c
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    rst $28
    xor $4f
    ld b, d
    ld b, b
    ld c, h
    ld b, h
    ld c, e
    ld b, [hl]
    ld d, a
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $42
    ld b, e
    ld b, e
    ld c, h
    ld c, a
    ld d, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $ef
    xor $41
    ld b, d
    ld a, $41
    ld h, d
    ld b, d
    ld c, e
    ld b, c
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, e
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    dec h
    ld c, c
    ld b, d
    ld a, $51
    ld h, d
    ccf
    ld c, c
    ld b, d
    ld a, $51
    ld e, a
    rst $28
    xor $3a
    ld b, d
    ld c, c
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $41
    ld b, d
    ld a, $41
    ld h, d
    ld b, d
    ld c, e
    ld b, c
    ld e, [hl]
    ld h, d
    ccf
    ld c, c
    ld b, d
    ld a, $51
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    dec h
    ld c, c
    ld b, d
    ld a, $51
    ld h, d
    ccf
    ld c, c
    ld b, d
    ld a, $51
    ld e, a
    rst $28
    xor $2c
    ld h, d
    ld c, e
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld h, d
    ld b, [hl]
    ld c, d
    ld a, $44
    ld b, [hl]
    ld c, e
    ld b, d
    ld b, c
    ld a, [$eff7]
    xor $50
    ld d, d
    ld b, b
    ld b, l
    ld h, d
    ld a, $62
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    rst $28
    xor $4a
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld b, d
    ld d, l
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld b, c
    ld h, e
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    inc a
    ld c, h
    ld d, d
    rst $28
    xor $51
    ld b, l
    ld b, [hl]
    ld c, e
    ld c, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, c
    ld c, h
    ld c, c
    ld c, c
    ld a, [$eff7]
    xor $49
    ld c, h
    ld c, h
    ld c, b
    ld d, b
    ld h, d
    ld b, a
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    rst $28
    xor $4a
    ld b, d
    ld h, h
    ld h, d
    dec hl
    ld b, d
    ld b, d
    ld h, d
    ld b, l
    ld b, d
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    or $5e
    rst $28
    xor $3e
    ld c, a
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, h
    ld a, [$eff7]
    xor $2f
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld a, $3f
    ld d, d
    ld d, b
    ld b, d
    ld b, c
    rst $28
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld b, b
    ld c, a
    ld d, d
    ld b, d
    ld c, c
    ld c, c
    ld d, [hl]
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, l
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, d
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    rst $28
    xor $4c
    ld d, e
    ld b, d
    ld c, a
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld b, h
    ld a, $46
    ld c, e
    ld e, [hl]
    ld h, d
    ld b, c
    ld b, [hl]
    ld b, c
    ld c, e
    ld h, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld c, a
    ld b, d
    ld b, b
    ld c, h
    ld b, h
    ld c, e
    ld b, [hl]
    ld d, a
    ld b, d
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld d, b
    ld b, [hl]
    ld c, e
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $3e
    ccf
    ld d, d
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, h
    rst $28
    xor $ff
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4b
    ld c, e
    ld c, h
    ld d, c
    rst $28
    xor $49
    ld b, d
    ld a, $4f
    ld c, e
    ld h, d
    ccf
    ld d, [hl]
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, d
    ld b, d
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $51
    ld b, d
    ld a, $40
    ld b, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $45
    ld a, $4f
    ld b, c
    ld h, d
    ld d, h
    ld a, $56
    ld h, e
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld c, a
    ld b, d
    ld b, b
    ld c, h
    ld b, h
    ld c, e
    ld b, [hl]
    ld d, a
    ld b, d
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld d, b
    ld b, [hl]
    ld c, e
    ld e, [hl]
    ld h, d
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $31
    ld c, h
    ld d, h
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld b, c
    ld b, [hl]
    ld b, b
    ld d, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    jr nc, jr_049_5947

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    or $fa
    rst $30
    rst $28
    xor $4f
    ld b, d
    ld b, b
    ld c, h
    ld b, h
    ld c, e
    ld b, [hl]
    ld d, a
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld b, [hl]
    ld c, e
    rst $28
    xor $4c
    ld b, e
    ld h, d
    ld a, $3f
    ld d, d
    ld d, b
    ld b, d
    ld e, [hl]
    ld a, [$eff7]
    xor $9f
    and e
    ld a, $4b
    ld b, c
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ccf
    ld d, [hl]
    rst $28
    xor $4d
    ld c, c
    ld b, d
    ld b, c
    ld b, h
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld c, h

jr_049_5947:
    ld h, d
    ld a, $40
    ld b, b
    ld b, d
    ld c, l
    ld d, c
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld d, [hl]
    ld h, d
    ld c, l
    ld d, d
    ld c, e
    ld b, [hl]
    ld d, b
    ld b, l
    ld c, d
    ld b, d
    ld c, e
    ld d, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld b, e
    ld c, h
    ld c, a
    ld b, d
    ld e, [hl]
    ld h, d
    or $ef
    xor $46
    ld d, b
    ld h, d
    ld d, b
    ld b, d
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld b, b
    ld b, d
    ld b, c
    ld a, [$eff7]
    xor $51
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld b, c
    ld b, d
    ld a, $51
    ld b, l
    ld h, d
    ld c, l
    ld b, d
    ld c, e
    ld a, $49
    ld d, c
    ld d, [hl]
    ld h, e
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    or $5e
    ld d, c
    ld a, $48
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    rst $28
    xor $4d
    ld d, d
    ld c, e
    ld b, [hl]
    ld d, b
    ld b, l
    ld c, d
    ld b, d
    ld c, e
    ld d, c
    ld h, e
    rst $38
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4b
    ld c, e
    ld c, h
    ld d, c
    rst $28
    xor $49
    ld b, d
    ld a, $4f
    ld c, e
    ld h, d
    ccf
    ld d, [hl]
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, d
    ld b, d
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $51
    ld b, d
    ld a, $40
    ld b, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $45
    ld a, $4f
    ld b, c
    ld h, d
    ld d, h
    ld a, $56
    ld h, e
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld sp, $544c
    ld h, d
    ld d, h
    ld b, d
    ld l, c
    ld b, d
    rst $28
    xor $45
    ld c, h
    ld c, c
    ld b, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld a, $62
    ld c, l
    ld d, d
    ccf
    ld c, c
    ld b, [hl]
    ld b, b
    ld a, [$eff7]
    xor $42
    ld d, l
    ld b, d
    ld b, b
    ld d, d
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $f6
    ld h, d
    ccf
    ld d, [hl]
    ld a, [$eff7]
    xor $44
    ld d, d
    ld b, [hl]
    ld c, c
    ld c, c
    ld c, h
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    daa
    ld b, d
    ld a, $41
    ld h, d
    ld c, d
    ld a, $4b
    ld h, d
    or $ef
    xor $54
    ld a, $49
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld b, l
    ld a, $51
    ld h, h
    ld h, d
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    rst $28
    xor $50
    ld c, h
    ld c, d
    ld b, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld a, $56
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, e
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    rst $28
    xor $ff
    ldh a, [$ea]
    sbc a
    and e
    ld sp, $4b4c
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    rst $28
    xor $40
    ld b, l
    ld b, d
    ld b, d
    ld c, b
    ld h, e
    ld h, d
    inc l
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld a, [$eff7]
    xor $41
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $44
    ld d, d
    ld b, [hl]
    ld c, c
    ld c, c
    ld c, h
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    ld d, b
    ld b, d
    ld c, e
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld b, c
    ld b, d
    ld a, $51
    ld b, l
    ld a, [$eff7]
    xor $3f
    ld d, [hl]
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld c, h
    ld d, h
    ld c, e
    ld h, d
    ld b, l
    ld a, $4b
    ld b, c
    ld h, e
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    rst $28
    xor $3e
    ld b, c
    ld b, c
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld a, $49
    ld h, d
    ld d, b
    ld b, [hl]
    ld c, e
    ld d, b
    ld h, h
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    or $68
    rst $28
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld d, c
    ld c, a
    ld d, d
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $56
    ld c, h
    ld d, d
    ld e, [hl]
    ld h, d
    or $63
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    daa
    ld c, h
    ld c, e
    ld h, a
    rst $28
    xor $54
    ld c, h
    ld c, a
    ld c, a
    ld d, [hl]
    ld e, [hl]
    ld h, d
    ld b, a
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ld b, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, e
    ld a, [$eff7]
    xor $31
    ld c, h
    ld d, h
    ld h, d
    ld c, c
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$f6]
    ld h, d
    ld d, c
    ld c, h
    ld d, d
    ld b, b
    ld b, l
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $3f
    ld c, c
    ld a, $41
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $44
    ld d, d
    ld b, [hl]
    ld c, c
    ld c, c
    ld c, h
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, d
    ld e, a
    rst $28
    xor $37
    ld b, l
    ld b, d
    ld h, d
    ld b, b
    ld c, h
    ld c, c
    ld b, c
    ld h, d
    ccf
    ld c, c
    ld a, $41
    ld b, d
    ld a, [$eff7]
    xor $4f
    ld b, d
    ld b, e
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    or $68
    rst $28
    xor $43
    ld a, $40
    ld b, d
    ld e, a
    rst $30
    ldh a, [$f6]
    ld h, d
    ld d, c
    ld c, h
    ld d, d
    ld b, b
    ld b, l
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $3f
    ld c, c
    ld a, $41
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $44
    ld d, d
    ld b, [hl]
    ld c, c
    ld c, c
    ld c, h
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, d
    ld e, a
    rst $28
    xor $37
    ld b, l
    ld b, d
    ld h, d
    ld b, b
    ld c, h
    ld c, c
    ld b, c
    ld h, d
    ccf
    ld c, c
    ld a, $41
    ld b, d
    ld a, [$eff7]
    xor $4f
    ld b, d
    ld b, e
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    or $68
    rst $28
    xor $43
    ld a, $40
    ld b, d
    ld e, [hl]
    ld a, [$eff7]
    xor $3e
    ld d, b
    ld h, d
    ld b, [hl]
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $44
    ld d, d
    ld b, [hl]
    ld c, c
    ld c, c
    ld c, h
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, c
    ld b, b
    ld c, h
    ld c, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    or $63
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc h
    ld a, $3e
    ld a, $4f
    ld c, a
    ld c, a
    ld b, h
    ld b, h
    ld b, l
    ld h, e
    rst $28
    xor $2a
    ld d, h
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl+]
    ld d, h
    ld c, a
    ld c, a
    ld b, h
    ld b, h
    ld b, h
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl+]
    ld d, h
    ld d, h
    ld c, a
    ld c, a
    ld b, h
    ld b, h
    ld b, h
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    or $63
    rst $28
    xor $2f
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ld b, h
    ld c, h
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc h
    ld a, $3e
    ld c, a
    ld c, a
    ld c, a
    ld b, h
    ld b, h
    ld b, l
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, d
    ld b, b
    ld a, $4b
    ld h, a
    ld h, d
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    rst $28
    xor $46
    ld d, c
    ld e, a
    ld h, d
    inc l
    ld h, d
    ld b, a
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ld b, b
    ld a, $4b
    ld h, a
    ld a, [$eff7]
    xor $50
    ld d, c
    ld a, $4b
    ld b, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld e, a
    ld h, d
    inc l
    ld h, d
    ld b, b
    ld a, $4b
    ld h, a
    rst $28
    xor $50
    ld d, c
    ld a, $4b
    ld b, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld e, a
    ld h, d
    inc l
    ld h, d
    ld c, c
    ld c, h
    ld d, b
    ld d, c
    ld h, e
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl+]
    ld d, h
    ld c, a
    ld c, a
    ld c, a
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    cpl
    ld c, h
    ld c, h
    ld c, b
    ld e, a
    ld e, a
    ld e, a
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    rst $28
    xor $50
    ld d, h
    ld c, h
    ld c, a
    ld b, c
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld d, c
    ld l, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $2e
    ld d, d
    ld d, b
    ld a, $4b
    ld a, $44
    ld b, [hl]
    ld h, d
    ld d, b
    ld d, h
    ld c, h
    ld c, a
    ld b, c
    ld a, [$eff7]
    xor $4c
    ld b, e
    ld h, d
    ld [hl-], a
    ld c, a
    ld c, h
    ld b, b
    ld b, l
    ld b, [hl]
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    dec h
    ld d, d
    ld d, c
    ld h, d
    inc l
    ld l, d
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    rst $28
    xor $49
    ld c, h
    ld c, h
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $40
    ld b, l
    ld b, d
    ld a, $4d
    ld h, d
    ld d, b
    ld d, h
    ld c, h
    ld c, a
    ld b, c
    ld h, e
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld e, a
    ld e, a
    ld e, a
    daa
    ld b, [hl]
    ld b, c
    ld h, d
    ld d, h
    ld b, d
    ld h, d
    ld c, d
    ld b, d
    ld b, d
    ld d, c
    rst $28
    xor $50
    ld c, h
    ld c, d
    ld b, d
    ld d, h
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl-]
    ld b, l
    ld a, $51
    ld h, h
    ld h, d
    inc a
    ld c, h
    ld d, d
    rst $28
    xor $51
    ld b, l
    ld a, $4b
    ld c, b
    ld b, d
    ld b, c
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $45
    ld b, d
    ld c, c
    ld c, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    dec hl
    ld a, $63
    ld h, d
    ld [hl], $52
    ld b, b
    ld b, l
    ld h, d
    ld a, $62
    ld c, e
    ld a, $46
    ld d, e
    ld b, d
    rst $28
    xor $44
    ld d, d
    ld d, [hl]
    ld e, a
    ld h, d
    daa
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    ld h, d
    ld c, d
    ld b, d
    ld a, [$eff7]
    xor $54
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    ld b, a
    ld d, d
    ld d, b
    ld d, c
    rst $28
    xor $49
    ld c, h
    ld c, h
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $4a
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
    rst $28
    xor $50
    ld d, h
    ld c, h
    ld c, a
    ld b, c
    ld e, a
    ld h, d
    scf
    ld b, l
    ld a, $51
    ld l, b
    ld h, d
    ld a, $49
    ld c, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    rst $28
    xor $4b
    ld c, h
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, d
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $50
    ld a, $56
    ld e, [hl]
    ld h, d
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    ld b, h
    ld c, h
    ld e, a
    rst $28
    xor $ff
    ldh a, [$ea]
    sbc a
    and e
    ld [hl], $4c
    ld h, d
    ld c, c
    ld c, h
    ld c, e
    ld b, h
    ld h, e
    ld h, d
    scf
    ld b, l
    ld b, d
    rst $28
    xor $32
    ld c, a
    ld c, h
    ld b, b
    ld b, l
    ld b, [hl]
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    ld h, a
    ld a, [$eff7]
    xor $51
    ld c, a
    ld c, h
    ld d, d
    ccf
    ld c, c
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $3e
    ld c, e
    ld d, [hl]
    ld c, d
    ld c, h
    ld c, a
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc h
    ld d, c
    ld h, d
    ld c, c
    ld b, d
    ld a, $50
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $50
    ld b, l
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld c, l
    ld c, a
    ld a, $40
    ld d, c
    ld b, [hl]
    ld b, b
    ld b, d
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld d, b
    ld d, h
    ld c, h
    ld c, a
    ld b, c
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld b, l
    ld a, $51
    ld h, h
    ld h, d
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld h, d
    ld d, h
    ld b, l
    ld d, [hl]
    ld h, d
    inc l
    ld h, d
    ld a, $4a
    ld a, [$eff7]
    xor $49
    ld c, h
    ld c, h
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $50
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld b, d
    ld d, b
    ld d, c
    ld h, d
    ld d, b
    ld d, h
    ld c, h
    ld c, a
    ld b, c
    ld h, h
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl-]
    ld b, l
    ld a, $51
    ld h, d
    ld b, c
    ld b, [hl]
    ld b, e
    ld b, e
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld b, b
    ld b, d
    rst $28
    xor $41
    ld c, h
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld c, d
    ld a, $48
    ld b, d
    ld h, h
    ld a, [$eff7]
    xor $9f
    and e
    ld e, a
    ld e, a
    ld e, a
    ld b, c
    ld c, h
    ld b, d
    ld d, b
    ld c, e
    ld h, a
    rst $28
    xor $4a
    ld a, $51
    ld d, c
    ld b, d
    ld c, a
    ld e, a
    ld a, [$eff7]
    xor $2c
    ld h, [hl]
    ld c, c
    ld h, d
    ld d, c
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, [hl-]
    ld b, l
    ld d, [hl]
    ld h, d
    ld a, $4a
    ld h, d
    inc l
    ld h, d
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld b, d
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $50
    ld d, h
    ld c, h
    ld c, a
    ld b, c
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld a, $52
    ld d, b
    ld b, d
    ld h, d
    inc l
    rst $28
    xor $54
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ccf
    ld b, d
    ld a, [$eff7]
    xor $4d
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld b, e
    ld d, d
    ld c, c
    ld e, a
    ld h, d
    inc l
    ld h, d
    ld b, l
    ld a, $51
    ld b, d
    rst $28
    xor $54
    ld b, d
    ld a, $48
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld b, l
    ld a, $51
    ld b, d
    ld h, d
    ld c, c
    ld c, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    rst $28
    xor $36
    ld c, h
    ld e, [hl]
    ld h, d
    inc l
    ld h, d
    ld c, e
    ld b, d
    ld b, d
    ld b, c
    ld a, [$eff7]
    xor $3e
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld h, d
    ld d, b
    ld d, h
    ld c, h
    ld c, a
    ld b, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld sp, $3f4c
    ld c, h
    ld b, c
    ld d, [hl]
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    rst $28
    xor $51
    ld c, a
    ld d, [hl]
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld d, c
    ld c, h
    ld c, l
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $2c
    ld h, [hl]
    ld c, c
    ld h, d
    ld d, b
    ld c, d
    ld a, $50
    ld b, l
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, d
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld [hl-], a
    ld b, l
    ld e, [hl]
    ld h, d
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    ld d, h
    ld a, $50
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $4a
    ld d, [hl]
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl+]
    ld c, h
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    ld h, d
    rst $28
    xor $44
    ld c, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    ld h, d
    ld [hl-], a
    ld c, a
    ld c, h
    ld b, b
    ld b, l
    ld b, [hl]
    ld h, d
    ld a, [$eff7]
    xor $54
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld a, $4b
    ld d, [hl]
    rst $28
    xor $51
    ld c, a
    ld c, h
    ld d, d
    ccf
    ld c, c
    ld b, d
    ld h, d
    ld a, $4b
    ld d, [hl]
    ld c, d
    ld c, h
    ld c, a
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc h
    ld d, c
    ld h, d
    ld c, c
    ld b, d
    ld a, $50
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    rst $28
    xor $50
    ld b, l
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld c, l
    ld c, a
    ld a, $40
    ld d, c
    ld b, [hl]
    ld b, b
    ld b, d
    ld h, d
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld d, b
    ld d, h
    ld c, h
    ld c, a
    ld b, c
    ld h, e
    ld h, d
    rst $28
    xor $f7
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    ld [hl-], a
    ld b, l
    ld e, [hl]
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld d, b
    ld a, $53
    ld b, d
    ld b, c
    ld h, d
    ccf
    ld d, [hl]
    ld a, [$eff7]
    xor $50
    ld c, h
    ld c, d
    ld b, d
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld e, a
    ld h, d
    ld [hl-], a
    ld b, l
    ld h, d
    ld d, h
    ld b, d
    ld c, c
    ld c, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    cpl
    ld b, d
    ld d, c
    ld l, b
    rst $28
    xor $44
    ld c, h
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    or $63
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld l, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    rst $28
    xor $4c
    ld b, e
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $40
    ld c, h
    cpl
    ld c, h
    ld c, a
    ld b, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld c, a
    ld a, $40
    ld c, h
    cpl
    ld c, h
    ld c, a
    ld b, c
    and e
    inc l
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    rst $28
    xor $3f
    ld b, d
    ld b, d
    ld c, e
    ld h, d
    ld d, h
    ld a, $46
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    and h
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $40
    ld c, h
    cpl
    ld c, h
    ld c, a
    ld b, c
    and e
    and h
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld a, $ef
    xor $56
    ld c, h
    ld d, d
    ld d, c
    ld b, l
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $50
    ld b, l
    ld c, h
    ld d, h
    ld h, d
    ld d, d
    ld c, l
    ld e, a
    ld h, d
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld c, a
    ld a, $40
    ld c, h
    cpl
    ld c, h
    ld c, a
    ld b, c
    and e
    inc l
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld a, [$eff7]
    xor $4d
    ld a, $49
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld c, a
    ld a, $40
    ld c, h
    cpl
    ld c, h
    ld c, a
    ld b, c
    and e
    inc l
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    rst $28
    xor $44
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld e, [hl]
    ld h, d
    or $fa
    rst $30
    rst $28
    xor $45
    ld a, $49
    ld b, e
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld c, a
    ld a, $40
    ld c, h
    cpl
    ld c, h
    ld c, a
    ld b, c
    and e
    ld a, [hl-]
    ld b, l
    ld a, $51
    rst $28
    xor $41
    ld c, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, b
    ld a, $56
    ld h, h
    ld a, [$eff7]
    xor $3a
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld c, d
    ld d, [hl]
    rst $28
    xor $4d
    ld a, $49
    ld h, h
    rst $38
    ldh a, [$ea]
    daa
    ld c, a
    ld a, $40
    ld c, h
    cpl
    ld c, h
    ld c, a
    ld b, c
    and e
    ld a, [hl+]
    ld c, a
    ld b, d
    ld a, $51
    ld e, [hl]
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld a, $44
    ld c, a
    ld b, d
    ld b, d
    ld b, c
    ld h, e
    ld a, [$eff7]
    xor $31
    ld c, h
    ld d, h
    ld h, d
    inc l
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    rst $28
    xor $44
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $40
    ld c, h
    cpl
    ld c, h
    ld c, a
    ld b, c
    and e
    ld b, l
    ld a, $49
    ld b, e
    rst $28
    xor $4c
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    ld e, [hl]
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $41
    ld a, $4f
    ld c, b
    ld c, e
    ld b, d
    ld d, b
    ld d, b
    ld h, e
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $40
    ld c, h
    cpl
    ld c, h
    ld c, a
    ld b, c
    and e
    daa
    ld b, [hl]
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $4f
    ld b, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ld h, d
    ccf
    ld b, d
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, e
    ld b, d
    ld a, [$eff7]
    xor $2c
    ld h, d
    ld d, h
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld d, b
    ld a, $56
    rst $28
    xor $50
    ld d, d
    ld b, b
    ld b, l
    ld h, d
    ld a, $62
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, h
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $40
    ld c, h
    cpl
    ld c, h
    ld c, a
    ld b, c
    and e
    add hl, hl
    ld c, h
    ld c, h
    ld c, c
    ld h, e
    rst $28
    xor $37
    ld b, l
    ld a, $51
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld a, [$eff7]
    xor $51
    ld b, d
    ld a, $40
    ld b, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    daa
    ld c, a
    ld a, $40
    ld c, h
    cpl
    ld c, h
    ld c, a
    ld b, c
    and e
    ld a, [hl-]
    ld b, l
    ld a, $51
    ld l, b
    rst $28
    xor $54
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld e, a
    ld a, [$eff7]
    xor $2c
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld a, $62
    ccf
    ld a, $41
    rst $28
    xor $4c
    ld b, e
    ld b, e
    ld b, d
    ld c, a
    ld e, a
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $40
    ld c, h
    cpl
    ld c, h
    ld c, a
    ld b, c
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    rst $28
    xor $4f
    ld b, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    ld a, [$eff7]
    xor $45
    ld a, $49
    ld b, e
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    ld h, h
    rst $28
    xor $ff
    ldh a, [$ea]
    daa
    ld c, a
    ld a, $40
    ld c, h
    cpl
    ld c, h
    ld c, a
    ld b, c
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld d, b
    ld a, $56
    ld h, d
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    ld h, d
    ld b, h
    ld c, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld a, $51
    ld h, d
    ld c, d
    ld b, d
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld c, a
    ld a, $40
    ld c, h
    cpl
    ld c, h
    ld c, a
    ld b, c
    and e
    add hl, hl
    ld c, h
    ld c, h
    ld c, c
    ld h, e
    rst $28
    xor $37
    ld b, l
    ld a, $51
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld a, [$eff7]
    xor $51
    ld b, d
    ld a, $40
    ld b, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    daa
    ld c, a
    ld a, $40
    ld c, h
    cpl
    ld c, h
    ld c, a
    ld b, c
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    rst $28
    xor $40
    ld a, $4a
    ld b, d
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, h
    ld a, [$eff7]
    xor $3c
    ld c, h
    ld d, d
    ld h, d
    ld c, e
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld h, d
    ld c, c
    ld b, d
    ld a, $4f
    ld c, e
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld a, $4f
    ld b, b
    ld c, h
    cpl
    ld c, h
    ld a, $41
    and e
    inc l
    ld l, d
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    rst $28
    xor $46
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld b, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $54
    ld b, d
    ld a, $48
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld c, a
    ld a, $40
    ld c, h
    cpl
    ld c, h
    ld c, a
    ld b, c
    and e
    inc a
    ld c, h
    ld d, d
    ld h, [hl]
    ld c, c
    rst $28
    xor $4d
    ld a, $56
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld a, [$eff7]
    xor $4f
    ld d, d
    ld b, c
    ld b, d
    ld c, e
    ld b, d
    ld d, b
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, e
    ld b, d
    ld h, e
    rst $30
    ldh a, [$ea]
    daa
    ld c, a
    ld a, $40
    ld c, h
    cpl
    ld c, h
    ld c, a
    ld b, c
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld a, $51
    rst $28
    xor $4a
    ld b, d
    ld e, a
    ld h, d
    inc a
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    ld h, d
    ld c, a
    ld b, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ld a, [$eff7]
    xor $50
    ld c, h
    ld c, d
    ld b, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    ld [hl-], a
    ld c, e
    ld b, d
    rst $28
    xor $41
    ld c, h
    ld d, h
    ld c, e
    ld h, e
    ld h, d
    or $63
    ld h, d
    ld a, [$eff7]
    xor $2f
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld b, l
    ld c, h
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    daa
    ld b, [hl]
    ld d, b
    ld d, c
    ld d, d
    ld c, a
    ccf
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $4a
    ld d, [hl]
    ld h, d
    ld c, a
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $9f
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld b, e
    ld c, h
    ld c, h
    ld c, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    daa
    ld b, [hl]
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    rst $28
    xor $48
    ld c, e
    ld c, h
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    inc l
    ld l, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [$eff7]
    xor $44
    ld c, a
    ld b, d
    ld a, $51
    ld h, d
    ld c, h
    ld c, a
    ld a, $40
    ld c, c
    ld b, d
    ld e, [hl]
    rst $28
    xor $2b
    ld a, $4f
    ld b, h
    ld c, h
    ld c, e
    ld h, e
    ld h, h
    ld h, d
    rst $38
    ldh a, [$ea]
    dec hl
    ld a, $4f
    ld b, h
    ld c, h
    ld c, e
    and e
    scf
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $52
    ld c, e
    ld b, e
    ld c, h
    ld c, a
    ld b, h
    ld b, [hl]
    ld d, e
    ld a, $3f
    ld c, c
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $2b
    ld a, $4f
    ld b, h
    ld c, h
    ld c, e
    and e
    inc l
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    rst $28
    xor $51
    ld b, d
    ld a, $40
    ld b, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, l
    ld c, h
    ld d, h
    ld a, [$eff7]
    xor $43
    ld c, h
    ld c, h
    ld c, c
    ld b, [hl]
    ld d, b
    ld b, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld a, $4f
    ld b, d
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    dec hl
    ld a, $4f
    ld b, h
    ld c, h
    ld c, e
    and e
    scf
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    rst $28
    xor $50
    ld b, l
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld e, [hl]
    ld a, [$eff7]
    xor $2b
    ld a, $4f
    ld b, h
    ld c, h
    ld c, e
    and e
    inc l
    ld l, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $44
    ld c, a
    ld b, d
    ld a, $51
    ld h, d
    ld c, h
    ld c, a
    ld a, $40
    ld c, c
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld c, h
    ld b, c
    ld e, [hl]
    ld h, d
    dec hl
    ld a, $4f
    ld b, h
    ld c, h
    ld c, e
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    dec hl
    ld a, $4f
    ld b, h
    ld c, h
    ld c, e
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld a, $44
    ld a, $46
    ld c, e
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2b
    ld a, $4f
    ld b, h
    ld c, h
    ld c, e
    and e
    inc l
    ld c, e
    ld d, b
    ld c, h
    ld c, c
    ld a, $4b
    ld d, c
    rst $28
    xor $43
    ld c, h
    ld c, h
    ld c, c
    ld h, e
    ld h, d
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld b, h
    ld b, d
    ld d, c
    ld a, [$eff7]
    xor $56
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld d, b
    ld d, c
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2b
    ld a, $4f
    ld b, h
    ld c, h
    ld c, e
    and e
    inc l
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    rst $28
    xor $40
    ld c, a
    ld d, d
    ld d, b
    ld b, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld h, d
    ld b, [hl]
    ld c, e
    ld d, b
    ld b, d
    ld b, b
    ld d, c
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    dec hl
    ld a, $4f
    ld b, h
    ld c, h
    ld c, e
    and e
    scf
    ld c, h
    ld h, d
    ld c, d
    ld d, [hl]
    rst $28
    xor $53
    ld b, d
    ld d, l
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $2b
    ld a, $4f
    ld b, h
    ld c, h
    ld c, e
    and e
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld c, a
    ld b, d
    ld a, $51
    rst $28
    xor $2b
    ld a, $4f
    ld b, h
    ld c, h
    ld c, e
    ld h, d
    ld d, h
    ld a, $50
    ld a, [$eff7]
    xor $41
    ld b, d
    ld b, e
    ld b, d
    ld a, $51
    ld b, d
    ld b, c
    ld h, d
    ccf
    ld d, [hl]
    ld h, d
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    rst $28
    xor $3e
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    ld a, [$eff7]
    xor $2b
    ld a, $4f
    ld b, h
    ld c, h
    ld c, e
    and e
    inc l
    ld l, d
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld b, b
    ld c, b
    ld b, d
    ld b, c
    rst $28
    xor $3f
    ld d, d
    ld d, c
    ld h, d
    inc l
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $3e
    ld b, c
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    rst $28
    xor $4d
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $2b
    ld a, $4f
    ld b, h
    ld c, h
    ld c, e
    and e
    dec hl
    ld c, h
    ld d, h
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2b
    ld a, $4f
    ld b, h
    ld c, h
    ld c, e
    and e
    dec [hl]
    ld b, d
    ld c, d
    ld b, d
    ld c, d
    ccf
    ld b, d
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2b
    ld a, $4f
    ld b, h
    ld c, h
    ld c, e
    and e
    ld [hl], $4c
    ld c, d
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    rst $28
    xor $42
    ld d, l
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $54
    ld c, h
    ld c, a
    ld c, c

Jump_049_6864:
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $40
    ld a, $4b
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ccf
    ld b, d
    ld a, $51
    ld h, e
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    dec hl
    ld c, d
    ld h, h
    ld h, d
    inc l
    rst $28
    xor $50
    ld d, c
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld d, b
    ld c, d
    ld b, d
    ld c, c
    ld c, c
    ld a, [$eff7]
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $41
    ld c, h
    ld b, d
    ld d, b
    ld c, e
    ld h, a
    ld h, d
    ld c, d
    ld a, $51
    ld d, c
    ld b, d
    ld c, a
    ld h, e
    ld a, [$eff7]
    xor $2f
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, e
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld e, a
    ld e, a
    ld e, a
    inc l
    ld e, a
    ld e, a
    ld e, a
    ld a, $4a
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    ld b, h
    ld c, h
    ld b, c
    ld e, a
    ld e, a
    ld e, a
    ld c, h
    ld b, e
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $41
    ld b, d
    ld d, b
    ld d, c
    ld c, a
    ld d, d
    ld b, b
    ld e, a
    ld e, a
    ld e, a
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld e, a
    ld e, a
    ld e, a
    ld [hl], $46
    ld e, a
    ld e, a
    ld e, a
    ld b, c
    ld c, h
    ld b, l
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld e, a
    ld e, a
    ld e, a
    ld b, c
    ld b, d
    ld d, b
    ld b, [hl]
    ld c, a
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $36
    ld b, [hl]
    ld b, c
    ld c, h
    ld b, l
    and e
    rst $28
    xor $27
    jr z, jr_049_698b

    scf
    dec [hl]
    jr c, @+$28

    scf
    inc l
    ld [hl-], a
    ld sp, $6363
    rst $30
    ldh a, [$ea]
    ld [hl], $46
    ld b, c
    ld c, h
    ld b, l
    and e
    ld e, a
    ld e, a
    ld e, a
    inc l
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $41
    ld b, d
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld d, [hl]
    ld e, a
    ld e, a
    ld e, a
    ld h, e
    ld h, e
    rst $30
    ldh a, [$ea]
    ld [hl], $46
    ld b, c
    ld c, h
    ld b, l
    and e
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a

jr_049_698b:
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    scf
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $54
    ld a, $50
    ld h, d
    ld a, $62
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld a, [$eff7]
    xor $50
    ld d, c
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    cpl
    ld b, d
    ld d, c
    ld l, b
    rst $28
    xor $44
    ld c, h
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, e
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc h
    ld d, c
    ld h, d
    ld c, c
    ld a, $50
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4a
    ld b, d
    rst $28
    xor $45
    ld b, d
    ld c, a
    ld b, d
    ld e, [hl]
    ld h, d
    ld c, l
    ld a, $51
    ld b, l
    ld b, d
    ld d, c
    ld b, [hl]
    ld b, b
    ld h, d
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    dec hl
    ld c, h
    ld d, h
    ld h, d
    ld b, c
    ld a, $4f
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $43
    ld c, h
    ld c, a
    ld b, h
    ld b, d
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld a, [$eff7]
    xor $50
    ld d, c
    ld a, $51
    ld d, d
    ld d, b
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, $4b
    ld b, c
    ld h, d
    ld b, c
    ld b, [hl]
    ld d, b
    ld c, h
    ccf
    ld b, d
    ld d, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $44
    ld c, a
    ld b, d
    ld a, $51
    ld h, d
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld a, [$eff7]
    xor $42
    ld d, e
    ld b, [hl]
    ld c, c
    ld e, [hl]
    ld h, d
    dec h
    ld a, $4f
    ld a, $4a
    ld c, h
    ld d, b
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $25
    ld a, $4f
    ld a, $4a
    ld c, h
    ld d, b
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    rst $28
    xor $4f
    ld b, d
    ld b, h
    ld c, a
    ld b, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld a, [$eff7]
    xor $40
    ld a, $4a
    ld b, d
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $25
    ld a, $4f
    ld a, $4a
    ld c, h
    ld d, b
    and e
    inc l
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    rst $28
    xor $42
    ld a, $51
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld b, h
    ld d, d
    ld d, c
    ld d, b
    and h
    ld a, [$eff7]
    xor $25
    ld a, $4f
    ld a, $4a
    ld c, h
    ld d, b
    and e
    ld d, b
    ld c, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $40
    ld a, $4b
    ld h, a
    ld h, d
    ccf
    ld b, d
    ld h, d
    ccf
    ld c, a
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $3f
    ld a, $40
    ld c, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, e
    ld b, d
    ld h, d
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    rst $28
    xor $3e
    ld b, h
    ld a, $46
    ld c, e
    ld h, e
    rst $30
    ldh a, [$ea]
    dec h
    ld a, $4f
    ld a, $4a
    ld c, h
    ld d, b
    and e
    add hl, hl
    ld c, h
    ld c, h
    ld c, c
    ld h, e
    ld h, d
    inc a
    ld c, h
    ld d, d
    rst $28
    xor $50
    ld d, c
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld b, c
    ld b, [hl]
    ld d, b
    ld c, h
    ccf
    ld b, d
    ld d, [hl]
    ld h, d
    ld c, d
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $25
    ld a, $4f
    ld a, $4a
    ld c, h
    ld d, b
    and e
    scf
    ld b, l
    ld a, $51
    ld l, b
    ld h, d
    rst $28
    xor $44
    ld c, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld c, h
    ld c, h
    ld h, d
    ld b, e
    ld a, $4f
    ld e, a
    ld h, d
    ld a, [$eff7]
    xor $2b
    ld c, d
    ld e, [hl]
    ld h, d
    ccf
    ld d, d
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, c
    ld c, h
    ld b, d
    ld d, b
    ld c, e
    ld h, a
    rst $28
    xor $4a
    ld a, $51
    ld d, c
    ld b, d
    ld c, a
    ld e, [hl]
    ld a, [$eff7]
    xor $25
    ld a, $4f
    ld a, $4a
    ld c, h
    ld d, b
    and e
    ld sp, $624c
    ld c, d
    ld a, $51
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $45
    ld c, h
    ld d, h
    ld h, d
    ld c, d
    ld a, $4b
    ld d, [hl]
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld a, [$eff7]
    xor $40
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld e, [hl]
    ld h, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $54
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld c, d
    ld a, $48
    ld b, d
    ld h, d
    ld a, $4b
    ld d, [hl]
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, e
    ld b, e
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld b, b
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $25
    ld a, $4f
    ld a, $4a
    ld c, h
    ld d, b
    and e
    inc l
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    rst $28
    xor $51
    ld b, d
    ld a, $40
    ld b, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, l
    ld c, h
    ld d, h
    ld a, [$eff7]
    xor $44
    ld c, a
    ld b, d
    ld a, $51
    ld h, d
    inc l
    ld h, d
    ld a, $4a
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    dec h
    ld a, $4f
    ld a, $4a
    ld c, h
    ld d, b
    and e
    inc h
    ld c, a
    ld b, l
    ld b, h
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $56
    ld e, a
    ld e, a
    ld d, [hl]
    ld c, h
    ld d, d
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $25
    ld a, $4f
    ld a, $4a
    ld c, h
    ld d, b
    and e
    dec hl
    ld c, h
    ld d, h
    ld h, d
    ld b, c
    ld a, $4f
    ld b, d
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld e, a
    ld e, a
    ld e, a
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    rst $28
    xor $28
    ld d, l
    ld b, b
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld d, c
    ld h, d
    or $5f
    ld a, [$eff7]
    xor $2f
    ld b, d
    ld b, d
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, d
    ld d, [hl]
    rst $28
    xor $3e
    ld c, c
    ld d, c
    ld a, $4f
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld a, [$eff7]
    xor $50
    ld a, $40
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, [hl]
    ld b, b
    ld b, d
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    dec a
    ld c, h
    ld c, d
    ld a, $ef
    xor $54
    ld b, l
    ld c, h
    ld h, d
    ld a, $4b
    ld c, e
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld c, c
    ld a, $51
    ld b, d
    ld d, b
    ld h, d
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld c, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3d
    ld c, h
    ld c, d
    ld a, $a3
    inc l
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld d, b
    ld a, $40
    ld c, a
    ld b, [hl]
    sbc h
    rst $28
    xor $43
    ld b, [hl]
    ld b, b
    ld b, d
    ld h, d
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld c, h
    ld c, e
    ld b, d
    ld e, [hl]
    ld a, [$eff7]
    xor $3d
    ld c, h
    ld c, d
    ld a, $a3
    ld a, $4b
    ld b, c
    ld h, d
    ld b, b
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $42
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, a
    ld b, d
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld a, [$eff7]
    xor $41
    ld b, d
    ld d, b
    ld c, l
    ld a, $46
    ld c, a
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3d
    ld c, h
    ld c, d
    ld a, $a3
    ld a, [hl-]
    ld b, l
    ld d, [hl]
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld d, d
    ld b, h
    ld b, h
    ld c, c
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3d
    ld c, h
    ld c, d
    ld a, $a3
    inc h
    ld c, e
    ld c, e
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld c, c
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    rst $28
    xor $46
    ld d, b
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld b, a
    ld c, h
    ld d, [hl]
    ld e, a
    ld h, d
    daa
    ld b, d
    ld a, $51
    ld b, l
    ld a, [$eff7]
    xor $46
    ld d, b
    ld h, d
    ccf
    ld b, d
    ld a, $52
    ld d, c
    ld d, [hl]
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3d
    ld c, h
    ld c, d
    ld a, $a3
    ld sp, $544c
    ld e, [hl]
    ld h, d
    ld d, c
    ld a, $48
    ld b, d
    ld h, d
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld c, c
    ld a, $50
    ld d, c
    ld h, d
    ccf
    ld c, a
    ld b, d
    ld a, $51
    ld b, l
    ld a, [$eff7]
    xor $46
    ld c, e
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld a, $4f
    ld c, d
    ld d, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    dec a
    ld c, h
    ld c, d
    ld a, $a3
    dec hl
    ld c, d
    ld c, d
    ld e, [hl]
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld c, d
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld c, e
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld h, d
    ld c, c
    ld b, d
    ld a, $4f
    ld c, e
    ld e, a
    ld a, [$eff7]
    xor $3d
    ld c, h
    ld c, d
    ld a, $a3
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld c, e
    ld c, h
    ld h, d
    ld c, d
    ld a, $51
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $45
    ld c, h
    ld d, h
    ld h, d
    ld b, l
    ld a, $4f
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, c
    ld c, a
    ld d, [hl]
    ld e, [hl]
    ld h, d
    ld a, [$eff7]
    xor $46
    ld d, c
    ld h, [hl]
    ld c, c
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld a, $4a
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3d
    ld c, h
    ld c, d
    ld a, $a3
    daa
    ld b, [hl]
    ld b, d
    ld h, d
    ld d, b
    ld c, h
    ld h, d
    ld c, l
    ld b, d
    ld c, h
    ld c, l
    ld c, c
    ld b, d
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld d, b
    ld b, d
    ld c, a
    ld a, $3f
    ld c, c
    ld b, d
    ld h, d
    ld b, b
    ld c, h
    ld c, a
    ld c, l
    ld d, b
    ld b, d
    rst $28
    xor $3e
    ld d, c
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld b, e
    ld b, d
    ld b, d
    ld d, c
    ld h, e
    ld h, e
    rst $30
    ldh a, [$ea]
    dec a
    ld c, h
    ld c, d
    ld a, $a3
    ld e, a
    ld e, a
    ld e, a
    ld a, [hl-]
    ld b, l
    ld a, $51
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld c, e
    ld a, $4a
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    ld h, d
    ld d, b
    ld c, h
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $3d
    ld c, h
    ld c, d
    ld a, $a3
    inc l
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld e, [hl]
    ld h, d
    rst $28
    xor $f6
    ld e, a
    ld a, [$eff7]
    xor $3d
    ld c, h
    ld c, d
    ld a, $a3
    or $5f
    ld e, a
    ld e, a
    rst $28
    xor $3a
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld b, d
    ld h, d
    ld a, [$eff7]
    xor $41
    ld b, d
    ld b, e
    ld b, d
    ld a, $51
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, d
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3d
    ld c, h
    ld c, d
    ld a, $a3
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld a, $50
    ld h, d
    ld c, c
    ld c, h
    ld c, e
    ld b, h
    rst $28
    xor $3e
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld e, [hl]
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld b, c
    ld a, $4f
    ld c, b
    ld c, e
    ld b, d
    ld d, b
    ld d, b
    ld h, d
    rst $28
    xor $42
    ld d, l
    ld b, [hl]
    ld d, b
    ld d, c
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $3d
    ld c, h
    ld c, d
    ld a, $a3
    inc h
    ld d, b
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    rst $28
    xor $50
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld e, [hl]
    ld h, d
    ld a, $4b
    ld h, d
    ld b, d
    ld d, e
    ld b, d
    ld c, e
    ld h, d
    ld a, [$eff7]
    xor $4a
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld b, e
    ld d, d
    ld c, c
    ld h, d
    rst $28
    xor $3f
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, [hl]
    ld a, [$eff7]
    xor $3d
    ld c, h
    ld c, d
    ld a, $a3
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld b, b
    ld c, h
    ld c, e
    ld b, e
    ld c, a
    ld c, h
    ld c, e
    ld d, c
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld e, a
    ld e, a
    ld e, a
    ld h, e
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    scf
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld l, c
    ld b, d
    rst $28
    xor $49
    ld c, h
    ld d, c
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, e
    rst $28
    xor $2f
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl+]
    ld d, h
    ld d, h
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    ld h, e
    rst $28
    xor $3a
    ld b, l
    ld c, h
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, h
    ld h, d
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    inc sp
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld b, a
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    rst $28
    xor $54
    ld c, h
    ld c, b
    ld b, d
    ld c, e
    ld h, d
    ld a, $50
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $4c
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld d, b
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    and e
    inc h
    ld c, a
    ld c, a
    ld c, a
    ld b, h
    ld b, h
    ld b, h
    ld b, l
    ld b, l
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    and e
    inc l
    ld h, d
    ld b, b
    ld a, $4b
    ld c, e
    ld c, h
    ld d, c
    rst $28
    xor $4f
    ld b, d
    ld c, d
    ld b, d
    ld c, d
    ccf
    ld b, d
    ld c, a
    ld h, d
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld d, [hl]
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    and e
    dec h
    ld d, d
    ld d, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    and e
    inc l
    ld h, d
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld h, d
    rst $28
    xor $54
    ld b, l
    ld a, $51
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, c
    ld c, h
    ld e, a
    ld a, [$eff7]
    xor $33
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    and e
    daa
    ld c, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld h, h
    rst $38
    ldh a, [$ea]
    inc sp
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    and e
    ld a, [hl+]
    ld d, h
    ld d, h
    ld c, a
    ld c, a
    ld c, a
    ld h, e
    rst $28
    xor $35
    ld b, d
    ld b, h
    ld c, a
    ld b, d
    ld d, c
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $56
    ld c, h
    ld d, d
    ld c, a
    ld d, b
    ld b, d
    ld c, c
    ld b, e
    and h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    and e
    and h
    ccf
    ld b, d
    ld b, e
    ld c, h
    ld c, a
    ld b, d
    rst $28
    xor $4a
    ld b, d
    ld h, e
    rst $30
    ldh a, [$ea]
    inc sp
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    and e
    scf
    ld b, l
    ld b, d
    ld c, e
    ld e, [hl]
    ld h, d
    inc l
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld d, c
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, e
    ld a, [$eff7]
    xor $2a
    ld d, h
    ld c, a
    ld c, a
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    and e
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    rst $28
    xor $45
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld c, e
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld c, c
    ld a, $51
    ld b, d
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    and e
    ld d, e
    ld c, h
    ld d, d
    rst $28
    xor $45
    ld d, d
    ld c, d
    ld a, $4b
    ld d, b
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld c, a
    ld d, c
    ld d, [hl]
    ld h, d
    ld b, c
    ld c, h
    ld b, h
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    rst $28
    xor $43
    ld c, c
    ld a, $51
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, e
    rst $30
    ldh a, [$ea]
    inc sp
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    and e
    ld a, [hl+]
    ld d, h
    ld d, h
    ld c, a
    ld c, a
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    rst $38
    ldh a, [$ea]
    inc sp
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    and e
    scf
    ld b, l
    ld b, d
    ld c, e
    ld e, [hl]
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, e
    rst $30
    ldh a, [$ea]
    inc sp
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    and e
    scf
    ld b, l
    ld b, d
    ld c, e
    ld e, [hl]
    ld h, d
    ld d, h
    ld b, l
    ld a, $51
    rst $28
    xor $3f
    ld c, a
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $33
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    and e
    inc a
    ld c, h
    ld d, d
    rst $28
    xor $46
    ld c, d
    ccf
    ld b, d
    ld b, b
    ld b, [hl]
    ld c, c
    ld b, d
    ld h, e
    ld h, e
    rst $30
    ldh a, [$ea]
    inc sp
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    and e
    ld a, [hl+]
    ld d, h
    ld d, h
    ld c, a
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    ld h, e
    rst $28
    xor $30
    ld d, [hl]
    ld h, d
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, [$eff7]
    xor $3f
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    ld e, a
    ld e, a
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    and e
    ld a, [hl-]
    ld a, $50
    ld h, d
    inc l
    ld h, d
    rst $28
    xor $41
    ld b, d
    ld b, e
    ld b, d
    ld a, $51
    ld b, d
    ld b, c
    ld h, h
    ld a, [$eff7]
    xor $33
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    and e
    dec [hl]
    ld c, h
    ld e, [hl]
    rst $28
    xor $35
    ld c, h
    ld d, b
    ld a, $49
    ld b, [hl]
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    ld h, d
    inc l
    ld e, [hl]
    ld a, [$eff7]
    xor $2c
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    dec [hl]
    ld c, h
    ld d, b
    ld a, $49
    ld b, [hl]
    ld b, d
    rst $28
    xor $54
    ld a, $50
    ld h, d
    inc sp
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    ld l, b
    ld a, [$eff7]
    xor $49
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    dec h
    ld d, d
    ld d, c
    rst $28
    xor $4d
    ld c, h
    ld c, h
    ld c, a
    ld h, d
    dec [hl]
    ld c, h
    ld d, b
    ld a, $49
    ld b, [hl]
    ld b, d
    ld h, d
    ld d, h
    ld a, $50
    ld a, [$eff7]
    xor $51
    ld c, h
    ld c, a
    ld c, d
    ld b, d
    ld c, e
    ld d, c
    ld b, d
    ld b, c
    ld h, d
    ccf
    ld d, [hl]
    rst $28
    xor $45
    ld d, d
    ld c, d
    ld a, $4b
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, e
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    inc sp
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    rst $28
    xor $50
    ld b, l
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld c, l
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld b, d
    ld b, c
    ld e, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    cpl
    ld b, d
    ld d, c
    ld l, b
    rst $28
    xor $44
    ld c, h
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl+]
    ld b, h
    ld b, h
    ld b, h
    ld c, a
    ld c, a
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, [hl-]
    ld b, l
    ld c, h
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, c
    ld b, [hl]
    ld d, b
    ld d, c
    ld d, d
    ld c, a
    ccf
    sbc h
    rst $28
    xor $46
    ld c, e
    ld b, h
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld c, a
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    jr z, jr_049_73ed

    ld d, c
    ld b, d
    ld c, a
    ld c, b
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $28
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, b
    and e
    dec [hl]
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld c, e
    ld c, h
    ld d, h
    ld e, [hl]
    rst $28
    xor $51
    ld b, l
    ld a, $51
    ld l, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    inc l
    ld a, [$eff7]
    xor $4f
    ld b, d
    ld c, d
    ld b, d
    ld c, d
    ccf
    ld b, d
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $28
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, b
    and e
    inc l
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    rst $28
    xor $42

jr_049_73ed:
    ld d, e
    ld b, d
    ld c, e
    ld h, d
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld h, d
    ld b, [hl]
    ld b, e
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $28
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, b
    and e
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    ld b, h
    ld c, h
    ld c, h
    ld b, c
    rst $28
    xor $4c
    ld c, a
    ld h, d
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld e, [hl]
    ld h, d
    ld c, e
    ld c, h
    ld d, h
    ld e, a
    ld a, [$eff7]
    xor $28
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, b
    and e
    ld a, [hl-]
    ld b, l
    ld a, $51
    ld h, d
    ld b, c
    ld c, h
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld c, d
    ld b, d
    ld h, h
    ld a, [$eff7]
    xor $28
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, b
    and e
    daa
    ld b, [hl]
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $40
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld d, [hl]
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld h, h
    rst $28
    xor $ff
    ldh a, [$ea]
    jr z, jr_049_74c4

    ld d, c
    ld b, d
    ld c, a
    ld c, b
    and e
    scf
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld b, h
    ld c, h
    rst $28
    xor $3e
    ld d, h
    ld a, $56
    ld e, a
    ld a, [$eff7]
    xor $28
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, b
    and e
    inc l
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    rst $28
    xor $4f
    ld b, d
    ld d, b
    ld d, c
    ld e, a
    ld a, [$eff7]
    xor $28
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, b
    and e
    dec a
    ld d, a
    ld d, a
    ld d, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    jr z, @+$52

    ld d, c
    ld b, d
    ld c, a
    ld c, b
    and e
    scf
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]

jr_049_74c4:
    ld d, b
    rst $28
    xor $4b
    ld c, h
    ld h, d
    ld b, b
    ld b, l
    ld c, h
    ld b, [hl]
    ld b, b
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $28
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, b
    and e
    inc l
    ld h, d
    ld b, b
    ld a, $4b
    ld c, e
    ld c, h
    ld d, c
    rst $28
    xor $3f
    ld b, d
    ld h, d
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld d, [hl]
    ld b, d
    ld b, c
    ld e, a
    ld a, [$eff7]
    xor $28
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, b
    and e
    ld h, $4c
    ld c, d
    ld b, d
    ld h, d
    ld c, h
    ld c, e
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    jr z, jr_049_755d

    ld d, c
    ld b, d
    ld c, a
    ld c, b
    and e
    ld a, [hl+]
    ld b, h
    ld b, h
    ld c, a
    ld c, a
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $28
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, b
    and e
    inc a
    ld c, h
    ld d, d
    rst $28
    xor $3e
    ld b, h
    ld a, $46
    ld c, e
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $28
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, b
    and e
    ld b, c
    ld b, [hl]
    ld d, b
    ld d, c
    ld d, d
    ld c, a
    ccf
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $4a
    ld d, [hl]
    ld h, d
    ld c, a
    ld b, d
    ld d, b
    ld d, c
    ld e, a
    ld a, [$eff7]
    xor $28
    ld d, b
    ld d, c
    ld b, d
    ld c, a

jr_049_755d:
    ld c, b
    and e
    ld a, [hl-]
    ld b, l
    ld a, $51
    ld h, d
    ld a, $62
    rst $28
    xor $4b
    ld d, d
    ld b, [hl]
    ld d, b
    ld a, $4b
    ld b, b
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $2c
    ld h, d
    ld a, $4a
    ld h, d
    ld b, h
    ld c, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, d
    ld a, $48
    ld b, d
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld c, [hl]
    ld d, d
    ld b, [hl]
    ld b, d
    ld d, c
    ld h, e
    rst $30
    ldh a, [$ea]
    jr z, jr_049_75eb

    ld d, c
    ld b, d
    ld c, a
    ld c, b
    and e
    ld a, [hl+]
    ld b, h
    ld b, h
    ld b, h
    ld c, a
    ld c, a
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $3a
    ld b, l
    ld a, $51
    ld l, b
    ld h, d
    ld d, h
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $28
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, b
    and e
    inc l
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ccf
    ld b, d
    rst $28
    xor $27
    ld b, d
    ld b, e
    ld b, d
    ld a, $51
    ld b, d
    ld b, c
    ld h, h
    ld h, e
    ld h, d
    ld [hl], $4c
    ld c, d
    ld b, d

jr_049_75eb:
    ld b, l
    ld c, h
    ld d, h
    ld a, [$eff7]
    xor $2c
    ld h, d
    ld c, b
    ld c, e
    ld b, d
    ld d, h
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld c, d
    ld d, [hl]
    rst $28
    xor $49
    ld c, h
    ld c, e
    ld b, h
    ld h, d
    ld b, c
    ld c, a
    ld b, d
    ld a, $4a
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $28
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, b
    and e
    ld b, d
    ld d, e
    ld b, d
    ld c, e
    ld d, c
    ld d, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ld h, d
    rst $28
    xor $51
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, h
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld b, l
    ld a, $4d
    ld c, l
    ld b, d
    ld c, e
    ld e, a
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    jr z, @+$55

    ld b, d
    ld c, e
    ld h, d
    ld b, [hl]
    ld b, e
    rst $28
    xor $54
    ld b, d
    ld l, c
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld a, $62
    ld b, c
    ld c, a
    ld b, d
    ld a, $4a
    ld e, [hl]
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    ld b, [hl]
    ld d, c
    rst $28
    xor $41
    ld c, h
    ld b, d
    ld d, b
    ld c, e
    ld h, a
    ld h, d
    ld c, d
    ld a, $51
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld d, b
    ld h, d
    ld c, c
    ld c, h
    ld c, e
    ld b, h
    ld h, d
    ld a, $50
    rst $28
    xor $f6
    ld l, b
    ld h, d
    ld d, c
    ld c, a
    ld d, [hl]
    ld b, [hl]
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $45
    ld a, $4f
    ld b, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    cpl
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ld b, h
    ld c, h
    rst $28
    xor $3f
    ld a, $40
    ld c, b
    ld h, e
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc h
    ld d, c
    ld h, d
    ld c, c
    ld a, $50
    ld d, c
    ld e, [hl]
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    rst $28
    xor $40
    ld a, $4a
    ld b, d
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    jr nc, jr_049_7734

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    or $62
    ld a, $4b
    ld b, c
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld c, l
    ld a, $4b
    ld b, [hl]
    ld c, h
    ld c, e
    ld d, b
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld c, d
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    rst $28
    xor $54
    ld b, l
    ld c, h
    ld h, d
    inc l
    ld h, d
    ld a, $4a
    ld h, h
    rst $38
    ldh a, [$ea]
    sbc a
    and e
    dec hl

jr_049_7734:
    ld a, $62
    ld b, l
    ld a, $62
    ld b, l
    ld a, $63
    ld h, e
    rst $28
    xor $3c
    ld c, h
    ld d, d
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld b, h
    ld c, h
    ld c, h
    ld b, c
    ld a, [$eff7]
    xor $46
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld d, b
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld d, b
    ld e, [hl]
    ld h, d
    or [hl]
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ld d, b
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    jr nc, jr_049_77ed

    ld c, a
    ld d, d
    ld b, c
    ld c, a
    ld a, $3e
    ld d, b
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $3e
    ld d, b
    and e
    rst $28
    xor $26
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld c, h
    ld c, e
    ld h, e
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $3e
    ld d, b
    and e
    inc l
    ld h, [hl]
    ld c, c
    rst $28
    xor $50
    ld b, l
    ld c, h
    ld d, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld b, l
    ld d, [hl]
    ld h, d
    inc l
    ld l, d

jr_049_77ed:
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $42
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld d, b
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    rst $28
    xor $4a
    ld d, [hl]
    ld h, d
    ld c, e
    ld a, $4a
    ld b, d
    ld h, h
    ld h, d
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld b, e
    ld c, h
    ld c, h
    ld c, c
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld d, b
    ld e, [hl]
    ld h, d
    or [hl]
    ld h, d
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ld d, b
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    jr nc, @+$48

    ld c, a
    ld d, d
    ld b, c
    ld c, a
    ld a, $3e
    ld d, b
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, a
    ld a, $3e
    ld d, b
    and e
    ld h, $4c
    ld c, d
    ld b, d
    ld h, d
    ld c, h
    ld c, e
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, a
    ld a, $3e
    ld d, b
    and e
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    rst $28
    xor $50
    ld b, l
    ld c, h
    ld d, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld b, l
    ld d, [hl]
    ld h, d
    inc l
    ld l, d
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    rst $28
    xor $42
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld d, b
    ld h, e
    rst $30
    ldh a, [$ea]
    jr nc, jr_049_792f

    ld c, a
    ld d, d
    ld b, c
    ld c, a
    ld a, $3e
    ld d, b
    and e
    dec hl
    ld a, $62
    ld b, l
    ld a, $62
    rst $28
    xor $45
    ld a, $63
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, a
    ld a, $3e
    ld d, b
    and e
    jr nc, jr_049_7958

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    or $62
    ld a, [$eff7]
    xor $b6
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld c, l
    ld a, $4b
    ld d, [hl]
    ld e, [hl]
    rst $28
    xor $fa
    rst $30

jr_049_792f:
    rst $28
    xor $30
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, a
    ld a, $3e
    ld d, b
    and e
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    rst $28
    xor $41
    ld b, [hl]
    ld d, b
    ld d, c
    ld d, d
    ld c, a
    ccf
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld a, [$eff7]
    xor $50
    ld d, d
    ld b, b
    ld b, l

jr_049_7958:
    ld h, d
    ld d, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, [hl]
    ld h, d
    rst $28
    xor $51
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld e, a
    ld e, a
    ld e, a
    ld h, e
    rst $30
    ldh a, [$ea]
    jr nc, jr_049_79b6

    ld c, a
    ld d, d
    ld b, c
    ld c, a
    ld a, $3e
    ld d, b
    and e
    dec hl
    ld c, h
    ld d, h
    ld e, a
    ld e, a
    rst $28
    xor $40
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    inc l
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld a, [$eff7]
    xor $41
    ld b, d
    ld b, e
    ld b, d
    ld a, $51
    ld b, d
    ld b, c
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, a
    ld a, $3e
    ld d, b
    and e
    inc l
    ld d, c
    rst $28
    xor $40
    ld a, $4b
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ccf
    ld b, d

jr_049_79b6:
    ld e, a
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, a
    ld a, $3e
    ld d, b
    and e
    inc h
    ld b, l
    ld h, d
    ld b, l
    ld a, $5e
    rst $28
    xor $2c
    ld d, c
    ld h, d
    ld c, d
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld a, $62
    ld a, [$eff7]
    xor $41
    ld c, a
    ld b, d
    ld a, $4a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, a
    ld a, $3e
    ld d, b
    and e
    ld sp, $544c
    ld e, [hl]
    rst $28
    xor $2c
    ld h, d
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld h, e
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    inc a
    ld c, h
    ld d, d
    rst $28
    xor $4f
    ld b, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld a, $4a
    ld b, d
    ld h, d
    ld a, [$eff7]
    xor $50
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld e, a
    ld h, d
    ld sp, $544c
    ld e, [hl]
    ld h, d
    rst $28
    xor $49
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld e, [hl]
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $54
    ld c, h
    ld c, a
    ld d, c
    ld b, l
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    jr nc, jr_049_7ac3

    ld b, c
    ld c, h
    ld d, d
    ld e, a
    ld h, d
    inc a
    ld c, h
    ld d, d
    ld h, d
    rst $28
    xor $4a
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld e, a
    ld h, d
    rst $38
    ldh a, [$ea]
    jr nc, jr_049_7ae3

    ld b, c
    ld c, h
    ld d, d
    and e
    dec hl
    ld c, d
    ld h, h
    ld h, d
    inc a
    ld c, h
    ld d, d
    ld h, d
    rst $28
    xor $3e
    ld c, c
    ld c, a
    ld b, d
    ld a, $41
    ld d, [hl]
    ld h, d
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld h, d
    ld c, d
    ld d, [hl]
    ld a, [$eff7]
    xor $4b
    ld a, $4a
    ld b, d
    ld e, [hl]
    ld h, d
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, h
    rst $28
    xor $ff
    ldh a, [$ea]

jr_049_7ac3:
    jr nc, @+$54

    ld b, c
    ld c, h
    ld d, d
    and e
    add hl, hl
    ld b, [hl]
    ld c, e
    ld b, d
    ld e, a
    rst $28
    xor $31
    ld c, h
    ld d, h
    ld e, [hl]
    ld a, [$eff7]
    xor $30
    ld d, d
    ld b, c
    ld c, h
    ld d, d
    and e
    ld a, $4f
    ld b, d
    ld h, d
    ld d, [hl]

jr_049_7ae3:
    ld c, h
    ld d, d
    rst $28
    xor $4d
    ld c, a
    ld b, d
    ld c, l
    ld a, $4f
    ld b, d
    ld b, c
    ld h, h
    rst $38
    ldh a, [$ea]
    jr nc, @+$54

    ld b, c
    ld c, h
    ld d, d
    and e
    dec hl
    ld d, d
    ld b, l
    ld h, h
    ld h, d
    daa
    ld b, [hl]
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $4d
    ld c, a
    ld b, d
    ld c, l
    ld a, $4f
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $40
    ld c, h
    ld b, e
    ld b, e
    ld b, [hl]
    ld c, e
    ld d, b
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    rst $28
    xor $42
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld a, $49
    ld h, d
    ld d, b
    ld c, c
    ld b, d
    ld b, d
    ld c, l
    ld h, h
    rst $38
    ldh a, [$ea]
    jr nc, jr_049_7b8e

    ld b, c
    ld c, h
    ld d, d
    and e
    add hl, hl
    ld b, [hl]
    ld c, e
    ld b, d
    ld e, a
    rst $28
    xor $2f
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ccf
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld e, a
    rst $30
    ldh a, [$ea]
    jr nc, jr_049_7ba9

    ld b, c
    ld c, h
    ld d, d
    and e
    inc h
    ld c, e
    ld c, e
    ld c, h
    ld d, [hl]
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $54
    ld c, h
    ld c, a
    ld d, c
    ld b, l
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $2c
    ld h, [hl]
    ld c, c
    ld h, d
    ld b, d
    ld d, l
    ld d, c
    ld b, d
    ld c, a
    ld c, d
    ld b, [hl]
    ld c, e
    ld a, $51
    ld b, d
    rst $28
    xor $56
    ld c, h
    ld d, d

jr_049_7b8e:
    ld e, a
    rst $30
    ldh a, [$ea]
    jr nc, jr_049_7be6

    ld b, c
    ld c, h
    ld d, d
    and e
    inc l
    ld h, d
    ld d, h
    ld a, $50
    ld h, d
    ccf
    ld b, d
    ld a, $51
    ld b, d
    ld c, e
    rst $28
    xor $3f
    ld d, [hl]
    ld h, d

jr_049_7ba9:
    ld d, h
    ld c, h
    ld c, a
    ld d, c
    ld b, l
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $46
    ld d, c
    ld h, d
    ld c, d
    ld b, d
    ld a, $4b
    ld d, b
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld d, d
    ld b, c
    ld c, h
    ld d, d
    and e
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    rst $28
    xor $51
    ld b, l
    ld a, $4b
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld d, c
    ld b, l
    ld c, c

jr_049_7be6:
    ld b, d
    ld d, b
    ld d, b
    ld e, a
    ld e, a
    ld e, a
    ld h, h
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, c
    ld e, [hl]
    rst $28
    xor $50
    ld b, l
    ld a, $49
    ld c, c
    ld h, d
    ld d, h
    ld b, d
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, h
    rst $30
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
