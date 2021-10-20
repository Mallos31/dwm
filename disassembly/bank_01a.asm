; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01a", ROMX[$4000], BANK[$1a]

    ld a, [de]
    dec a
    ld b, c
    ld b, h
    ld b, c
    ld c, e
    ld b, c
    dec bc
    ld b, b
    db $ed
    ld b, b
    ld d, d
    ld b, c
    ld l, h
    ld b, c
    sub h
    ld b, d
    pop af
    ld b, d
    ld h, d
    ld b, e
    pop af
    ld b, e
    dec d
    ld b, h
    inc a
    ld b, h
    ld e, d
    ld b, h
    adc c
    ld b, h
    push bc
    ld b, h
    rst $30
    ld b, h
    ld l, $45
    ld [hl], b
    ld b, l
    or h
    ld b, l
    jr z, jr_01a_4071

    ld [hl], h
    ld b, [hl]
    sub c
    ld b, [hl]
    cp h
    ld b, [hl]
    rst $38
    ld b, [hl]
    ld [hl+], a
    ld b, a
    ld e, d
    ld b, a
    ld a, [hl]
    ld b, a
    cp c
    ld b, a
    ld a, [c]
    ld b, a
    add hl, hl
    ld c, b
    ld e, d
    ld c, b
    adc e
    ld c, b
    xor e
    ld c, b
    sub $48
    dec e
    ld c, c
    ld b, d
    ld c, c
    sub h
    ld c, c
    jp nz, $ec49

    ld c, c
    ld b, c
    ld c, d
    add b
    ld c, d
    cp a
    ld c, d
    db $dd
    ld c, d
    rrca
    ld c, e
    daa
    ld c, e
    ld [hl], c
    ld c, e
    sbc a
    ld c, e
    jp c, Jump_01a_514b

    ld c, h
    ld l, b
    ld c, h
    add l
    ld c, h
    jp Jump_01a_624c


    ld c, l
    sub h
    ld c, l
    rst $18
    ld c, l

jr_01a_4071:
    ld [de], a
    ld c, [hl]
    ld l, [hl]
    ld c, [hl]
    or b
    ld c, [hl]
    inc b
    ld c, a
    inc sp
    ld c, a
    ld d, d
    ld d, b
    ld [hl], c
    ld d, b
    and a
    ld d, b
    pop bc
    ld d, b
    db $db
    ld d, b
    inc hl
    ld d, c
    ld h, d
    ld d, c
    ret nc

    ld d, c
    inc c
    ld d, d
    jr nc, jr_01a_40e1

    ld a, l
    ld d, d
    jp nz, $fc52

    ld d, d
    ld b, d
    ld d, e
    ld e, h
    ld d, e
    xor c
    ld d, e
    rra
    ld d, h
    ld b, e
    ld d, h
    ld [hl], e
    ld d, h
    adc l
    ld d, h
    db $c2, $54, $01

    ld d, l
    inc l
    ld d, l
    ld l, h
    ld d, l
    or a
    ld d, l
    db $ed
    ld d, l
    inc h
    ld d, [hl]
    ld [hl], d
    ld d, [hl]
    and b
    ld d, [hl]
    sub $56
    ld a, [bc]
    ld d, a
    inc sp
    ld d, a
    sbc b
    ld d, a
    and $57
    ld b, d
    ld e, b
    add l
    ld e, b
    cp b
    ld e, b
    ld a, [c]
    ld e, b
    ld d, d
    ld e, c
    ld [hl], l
    ld e, c
    or b
    ld e, c
    and $59
    rla
    ld e, d
    ld b, d
    ld e, d
    add h
    ld e, d
    ld b, $5b
    ld a, $5b
    ld e, [hl]
    ld e, e
    adc e
    ld e, e
    and $5b
    rlca
    ld e, h

jr_01a_40e1:
    ld e, b
    ld e, h
    cp [hl]
    ld e, h
    ret c

    ld e, h
    db $fc
    ld e, h
    dec h
    ld e, l
    ld d, b
    ld e, l
    ldh [$5d], a
    ei
    ld e, l
    add hl, hl
    ld e, [hl]
    ld l, b
    ld e, [hl]
    jp c, $0d5e

    ld e, a
    db $fd
    ld e, a
    jr nz, jr_01a_415d

    push de
    ld h, b
    cp e
    ld h, c
    ld a, h
    ld h, d
    ld d, $63
    add h
    ld h, e
    ld l, e
    ld h, h
    cp [hl]
    ld h, h
    rst $10
    ld h, l
    cp $65
    inc hl
    ld h, [hl]
    inc de
    ld h, a
    jp nc, $f267

    ld h, a
    jp nc, $e668

    ld l, b
    or $68
    ld h, h
    ld l, c
    ldh a, [rBCPD]
    and l
    ld l, d
    ld e, $6b
    sub b
    ld l, e
    inc c
    ld l, h
    ld l, a
    ld l, h
    jp hl


    ld l, h
    ld e, e
    ld l, l
    db $ed
    ld l, l
    ld e, h
    ld l, [hl]
    ld [$3c6e], a
    ld l, a
    ld a, [de]
    ld [hl], b
    adc d
    ld [hl], b
    inc [hl]
    ld [hl], c

Call_01a_413d:
    ld de, $4007
    call Call_000_05b6
    ret


    ld de, $4007
    call Call_000_05f6
    ret


    call Call_01a_413d
    call Call_000_0609
    ret


    ld [$a39f], a
    inc a
    ld c, h
    ld h, e
    ld h, d
    inc sp
    ld d, d
    ld c, c
    ld b, [hl]

jr_01a_415d:
    ld c, h
    ld h, d
    ld d, h
    ld a, $50
    rst $28
    xor $45
    ld a, $4d
    ld c, l
    ld d, [hl]
    ld h, e
    rst $30
    ldh a, [$eb]
    inc sp
    ld d, d
    ld c, c
    ld b, [hl]
    ld c, h
    and e
    scf
    ld b, l
    ld a, $4b
    ld c, b
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $f6
    ld h, e
    ld a, [$eff7]
    xor $2c
    ld l, d
    ld h, d
    ld d, b
    ld a, $53
    ld b, d
    ld b, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld d, d
    ld c, c
    ld b, [hl]
    ld c, h
    and e
    inc l
    ld c, e
    ld h, d
    ld c, a
    ld b, d
    ld d, c
    ld d, d
    ld c, a
    ld c, e
    ld e, [hl]
    rst $28
    xor $49
    ld b, d
    ld d, c
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld d, c
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld a, [$eff7]
    xor $3e
    ld h, d
    ld d, b
    ld b, d
    ld b, b
    ld c, a
    ld b, d
    ld d, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld d, d
    ld c, c
    ld b, [hl]
    ld c, h
    and e
    inc h
    ld h, d
    ld [hl], $48
    ld d, [hl]
    daa
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    rst $28
    xor $46
    ld d, b
    ld h, d
    ld b, e
    ld c, c
    ld d, [hl]
    ld b, [hl]
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $4c
    ld d, e
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, e
    ld a, $4f
    ld c, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld d, d
    ld c, c
    ld b, [hl]
    ld c, h
    and e
    inc l
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld a, $46
    ld d, c
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld h, d
    ld b, [hl]
    ld d, c
    ld e, [hl]
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
    ld h, d
    ld b, h
    ld c, h
    ld c, h
    ld b, c
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld b, l
    ld a, $4d
    ld c, l
    ld b, d
    ld c, e
    ld e, a
    ld a, [$eff7]
    xor $33
    ld d, d
    ld c, c
    ld b, [hl]
    ld c, h
    and e
    jr c, jr_01a_4293

    ld b, d
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld b, e
    ld a, $4f
    ld c, d
    rst $28
    xor $3e
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    ld d, c
    ld b, d
    ld c, e
    ld h, d
    ld a, $50
    ld a, [$eff7]
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld d, d
    ld c, c
    ld b, [hl]
    ld c, h
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, c
    ld e, [hl]
    rst $28
    xor $54
    ld b, l
    ld a, $51
    ld l, c
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, h
    ld c, h
    ld c, e
    ld c, e
    ld a, $fa
    rst $30
    rst $28
    xor $41
    ld c, h
    ld h, h
    rst $28
    xor $f7

jr_01a_4293:
    ldh a, [$eb]
    sbc a
    and e
    scf
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld b, e
    ld a, $4f
    ld c, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
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
    ld d, b
    ld c, l
    ld b, d
    ld b, b
    ld b, [hl]
    ld a, $49
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $36
    ld c, b
    ld d, [hl]
    daa
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld [hl-], a
    ld c, c
    ld b, c
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    rst $28
    xor $49
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld c, d
    ld d, [hl]
    ld d, b
    ld b, d
    ld c, c
    ld b, e
    ld h, d
    ld b, b
    ld a, $4b
    ld a, [$eff7]
    xor $4b
    ld c, h
    ld h, d
    ld c, c
    ld c, h
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld h, d
    ld c, d
    ld a, $48
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $51
    ld c, h
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
    ld c, c
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld b, h
    ld d, d
    ld b, d
    ld d, b
    ld d, b
    ld h, d
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    ld a, $51
    rst $28
    xor $4a
    ld d, [hl]
    ld h, d
    ld c, c
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, [hl]
    ld d, c
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld [hl-], a
    ld c, e
    ld b, d
    ld h, d
    ld b, c
    ld a, $56
    ld e, [hl]
    ld h, d
    inc l
    ld l, l
    rst $28
    xor $49
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld h, d
    ld c, d
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
    xor $54
    ld b, l
    ld c, h
    ld h, d
    ld c, l
    ld c, a
    ld c, h
    ld d, c
    ld b, d
    ld b, b
    ld d, c
    ld d, b
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, c
    ld h, d
    ld a, $50
    ld d, b
    ld b, [hl]
    ld d, b
    ld d, c
    ld d, b
    ld h, d
    ld c, h
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld d, b
    rst $28
    xor $46
    ld c, e
    ld h, d
    ccf
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld d, b
    ld h, d
    ld a, $4b
    ld b, c
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    rst $28
    xor $3e
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld a, $4a
    ld b, d
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc h
    ld a, $4f
    ld c, a
    ld b, h
    ld b, l
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $f3
    sbc a
    and e
    daa
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld c, a
    ld d, [hl]
    ld e, [hl]
    rst $28
    xor $f6
    ld e, a
    rst $30
    ldh a, [$9f]
    and e
    dec hl
    ld a, $62
    dec hl
    ld a, $62
    dec hl
    ld a, $5f
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $f3
    sbc a
    and e
    cpl
    ld b, d
    ld a, $53
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, d
    ld b, d
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    or $63
    ld h, d
    ld a, [hl-]
    ld b, d
    ld h, [hl]
    ld c, c
    rst $28
    xor $4f
    ld d, d
    ld c, c
    ld b, d
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
    ld h, e
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld b, b
    ld a, $4f
    ld b, d
    rst $28
    xor $3e
    ccf
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld d, c
    ld d, c
    ld c, c
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc a
    ld a, $3e
    ld a, $45
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $f3
    sbc a
    and e
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, a
    ld b, d
    ld b, c
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $50
    ld d, c
    ld d, d
    ld c, l
    ld b, [hl]
    ld b, c
    ld h, d
    ld b, b
    ld b, l
    ld b, d
    ld a, $4d
    ld a, [$eff7]
    xor $51
    ld c, a
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld b, e
    ld b, d
    ld b, d
    ld c, c
    rst $28
    xor $49
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld b, l
    ld b, d
    ld c, c
    ld c, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $4c
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $40
    ld c, h
    ld c, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $3f
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld e, a
    ld h, d
    add hl, hl
    ld c, h
    ld c, c
    ld c, c
    ld c, h
    ld d, h
    ld h, d
    ld c, d
    ld b, d
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld [hl], $4b
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $f3
    sbc a
    and e
    inc l
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld b, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    rst $28
    xor $4c
    ld c, e
    ld c, c
    ld d, [hl]
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld c, h
    ld d, h
    ld c, e
    ld a, [$eff7]
    xor $4d
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc h
    ld h, d
    ld b, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $ef
    xor $40
    ld c, h
    ld c, e
    ld d, c
    ld b, d
    ld d, b
    ld d, c
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, b
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld c, e
    ld b, d
    ld b, d
    ld b, c
    rst $28
    xor $40
    ld b, l
    ld b, d
    ld a, $4d
    ld h, d
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, b
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    dec h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld a, $ef
    xor $41
    ld a, $4f
    ld b, d
    ld b, c
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld b, c
    ld c, h
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $4b
    ld c, h
    ld d, c
    ld h, d
    ld c, d
    ld b, d
    ld a, $4b
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    rst $28
    xor $4a
    ld d, [hl]
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, e
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
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
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld d, c
    ld h, d
    ld c, d
    ld b, d
    ld a, $4b
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld h, d
    inc l
    rst $28
    xor $3f
    ld b, d
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, e
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld c, d
    ld d, [hl]
    ld d, b
    ld b, d
    ld c, c
    ld b, e
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld b, b
    ld a, $4f
    ld b, d
    ld h, d
    ld b, l
    ld c, h
    ld d, h
    rst $28
    xor $50
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
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
    ld a, [$eff7]
    xor $3e
    ld c, a
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
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld c, d
    ld d, [hl]
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld d, c
    ld h, e
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
    ld d, [hl]
    ld c, h
    ld d, d
    ld e, a
    rst $28
    xor $2c
    ld h, d
    ld a, $4a
    ld h, d
    ld c, d
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    rst $28
    xor $43
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $44
    ld c, a
    ld c, h
    ld d, d
    ld c, l
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc a
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld d, h
    ld c, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $f3
    sbc a
    and e
    inc l
    ld d, c
    ld l, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $44
    ld c, a
    ld b, d
    ld b, d
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $49
    ld c, h
    ld c, e
    ld b, d
    ld h, d
    ld d, h
    ld c, h
    ld c, c
    ld b, e
    ld h, d
    dec h
    ld a, $3f
    ld d, [hl]
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld h, $4c
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld c, c
    ld b, d
    ld a, $53
    ld b, d
    rst $28
    xor $4a
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, d
    ld d, [hl]
    ld d, b
    ld b, d
    ld c, c
    ld b, e
    ld h, h
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl-]
    ld b, l
    ld a, $51
    ld l, b
    ld h, d
    ld d, h
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld h, e
    ld h, h
    rst $28
    xor $24
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, c
    ld c, h
    ld b, d
    ld d, b
    ld c, e
    ld h, a
    ld a, [$eff7]
    xor $4b
    ld b, d
    ld b, b
    ld b, d
    ld d, b
    ld d, b
    ld a, $4f
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    inc l
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ld b, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    rst $28
    xor $45
    ld b, d
    ld a, $49
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, b
    ld d, c
    ld d, d
    ld b, e
    ld b, e
    ld h, d
    ld d, c
    ld c, h
    ld c, h
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    jr z, jr_01a_47d6

    ld b, d
    ld c, a
    ld d, [hl]
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld h, d
    ld d, b
    ld a, $56
    ld d, b
    rst $28
    xor $2c
    ld h, d
    ld a, $4a
    ld h, d
    ld d, e
    ld a, $46
    ld c, e
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld b, l
    ld c, h
    ld d, h
    ld h, d
    ld b, b
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    rst $28
    xor $2c
    ld h, d
    ccf
    ld b, d
    ld h, h
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    dec hl
    ld a, $62
    dec hl
    ld a, $62
    dec hl
    ld a, $5f
    ld e, a
    ld e, a
    ld h, e
    rst $28
    xor $2c
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld d, h
    ld h, d

jr_01a_47d6:
    ld d, [hl]
    ld c, h
    ld d, d
    ld a, [$eff7]
    xor $4a
    ld d, [hl]
    ld h, d
    ld b, d
    ld d, l
    ld c, l
    ld b, d
    ld c, a
    ld d, c
    rst $28
    xor $3e
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld h, e
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    dec hl
    ld b, d
    ld b, d
    ld h, d
    dec hl
    ld b, d
    ld b, d
    ld h, d
    dec hl
    ld b, d
    ld b, d
    ld e, a
    rst $28
    xor $2c
    ld d, c
    ld h, [hl]
    ld c, c
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld d, b
    ld d, d
    ld c, e
    ld c, e
    ld d, [hl]
    ld a, [$eff7]
    xor $51
    ld c, h
    ld b, c
    ld a, $56
    ld h, d
    or [hl]
    ld h, d
    ld d, c
    ld c, h
    ld c, d
    ld c, h
    ld c, a
    ld c, a
    ld c, h
    ld d, h
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    jr nc, jr_01a_486c

    ld d, [hl]
    ccf
    ld b, d
    ld h, d
    ld c, h
    ld c, e
    ld b, d
    ld h, d
    ld b, c
    ld a, $56
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld c, d
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld h, d
    ld b, b
    ld b, l
    ld a, $4b
    ld b, b
    ld b, d
    ld e, a
    rst $28
    xor $f7
    ldh a, [$9f]
    and e
    inc l
    ld h, d
    ld b, b
    ld a, $4b
    ld h, a
    ld h, d
    ccf
    ld b, d
    rst $28
    xor $3f
    ld c, h
    ld d, c
    ld b, l
    ld b, d

jr_01a_486c:
    ld c, a
    ld b, d
    ld b, c
    ld e, a
    scf
    ld b, l
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $46
    ld d, b
    ld h, d
    ld b, b
    ld b, l
    ld b, [hl]
    ld c, c
    ld b, c
    ld l, b
    ld h, d
    ld c, l
    ld c, c
    ld a, $56
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    dec [hl]
    ld b, d
    ld c, c
    ld a, $55
    ld e, [hl]
    or $5f
    rst $28
    xor $2c
    ld d, c
    ld l, b
    ld h, d
    ld c, h
    ld c, b
    ld a, $56
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, c
    ld c, h
    ld d, b
    ld b, d
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    scf
    ld b, l
    ld a, $51
    ld h, d
    ld b, l
    ld b, d
    ld a, $49
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $50
    ld d, c
    ld d, d
    ld b, e
    ld b, e
    ld h, d
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $4b
    ld c, h
    ld c, e
    sbc h
    ld d, b
    ld b, d
    ld c, e
    ld d, b
    ld b, d
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    ld [hl], $4b
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, a
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
    xor $f3
    sbc a
    and e
    inc h
    ld h, d
    ld d, h
    ld a, $4f
    ld c, a
    ld b, [hl]
    ld c, h
    ld c, a
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    rst $28
    xor $4a
    ld b, d
    ld h, d
    ld b, c
    ld c, h
    ld b, d
    ld d, b
    ld c, e
    ld h, a
    ld h, d
    ld c, e
    ld b, d
    ld b, d
    ld b, c
    ld a, [$eff7]
    xor $45
    ld b, d
    ld a, $49
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
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld c, c
    ld c, h
    ld d, b
    ld b, d
    ld e, a
    inc l
    ld l, d
    rst $28
    xor $47
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld c, h
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc h
    ld c, c
    ld c, c
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, e
    rst $28
    xor $2a
    ld b, d
    ld d, c
    ld h, d
    ld b, c
    ld c, h
    ld d, h
    ld c, e
    ld h, d
    ld c, h
    ld c, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $48
    ld c, e
    ld b, d
    ld b, d
    ld d, b
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
    ld b, [hl]
    ld c, e
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, b
    ld b, [hl]
    ccf
    ld c, c
    ld b, d
    ld h, e
    rst $28
    xor $2b
    ld a, $5e
    ld h, d
    dec hl
    ld a, $5e
    ld h, d
    dec hl
    ld a, $63
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld [hl], $45
    ld d, d
    ld d, c
    ld h, d
    ld d, d
    ld c, l
    ld h, e
    ld h, d
    ld h, $6a
    ld c, h
    ld c, e
    ld h, e
    ld h, e
    rst $28
    xor $37
    ld c, a
    ld d, [hl]
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld b, [hl]
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld a, [$eff7]
    xor $41
    ld a, $4f
    ld b, d
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld b, l
    ld a, $51
    ld h, e
    ld h, h
    rst $28
    xor $2c
    ld h, d
    ld b, b
    ld a, $4b
    ld h, a
    ld a, [$eff7]
    xor $45
    ld b, d
    ld b, d
    ld b, d
    ld a, $4f
    ld h, d
    ld d, [hl]
    ld c, h
    ld c, h
    ld c, h
    ld d, d
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    ld b, c
    ld c, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld a, $ef
    xor $43
    ld a, $53
    ld c, h
    ld c, a
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    ld c, c
    ld b, d
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld a, [$eff7]
    xor $43
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld c, d
    ld b, d
    ld e, a
    ld h, d
    daa
    ld c, h
    ld c, e
    ld h, a
    rst $28
    xor $43
    ld c, h
    ld c, a
    ld b, h
    ld b, d
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, l
    ld b, d
    ld a, $49
    ld a, [$eff7]
    xor $56
    ld c, h
    ld d, d
    ld c, a
    ld d, b
    ld b, d
    ld c, c
    ld b, e
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    dec hl
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
    rst $28
    xor $41
    ld c, h
    ld h, d
    inc l
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld a, $56
    ld a, [$eff7]
    xor $46
    ld d, c
    ld h, h
    ld h, d
    cpl
    ld b, d
    ld d, c
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld b, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    rst $28
    xor $4b
    ld c, h
    ld d, h
    ld h, e
    rst $30
    ldh a, [$ea]
    ld [hl-], a
    ld c, e
    ld b, b
    ld b, d
    ld h, d
    inc l
    ld h, d
    ld c, d
    ld a, $48
    ld b, d
    ld h, d
    ld d, d
    ld c, l
    ld h, d
    ld c, d
    ld d, [hl]
    rst $28
    xor $4a
    ld b, [hl]
    ld c, e
    ld b, c
    ld e, [hl]
    ld h, d
    inc l
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld d, b
    ld d, c
    ld c, h
    ld c, l
    ld a, [$eff7]
    xor $52
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld l, b
    rst $28
    xor $43
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld b, c
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    jr c, jr_01a_4b08

    ld a, $45
    ld h, e
    ld h, d
    inc l
    ld h, d
    ld d, h
    ld a, $4b
    ld c, e
    ld a, $ef
    xor $43
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld c, e
    ld c, h
    ld d, h
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl+]
    ld a, [hl-]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $f3
    sbc a
    and e
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld b, e
    ld c, c
    ld c, h
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $54
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld c, l

jr_01a_4b08:
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    dec [hl]
    ld b, d
    ld a, $41
    ld d, [hl]
    ld h, e
    ld h, h
    rst $28
    xor $2b
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    inc l
    ld h, d
    ld b, h
    ld c, h
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    add hl, hl
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld e, [hl]
    ld b, b
    ld c, a
    ld b, d
    ld a, $51
    ld b, d
    ld h, d
    ld a, $ef
    xor $44
    ld c, h
    ld c, h
    ld b, c
    ld h, d
    ld d, b
    ld b, [hl]
    ld d, c
    ld d, d
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, d
    ld a, $4b
    ld b, c
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld b, c
    ld c, h
    ld h, d
    ld d, h
    ld b, l
    ld a, $51
    ld h, d
    ld c, e
    ld b, d
    ld b, d
    ld b, c
    ld d, b
    rst $28
    xor $51
    ld c, h
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld b, d
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    daa
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ccf
    ld b, d
    rst $28
    xor $3e
    ld d, b
    ld b, l
    ld a, $4a
    ld b, d
    ld b, c
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, b
    ld a, $52
    ld d, c
    ld b, [hl]
    ld c, h
    ld d, d
    ld d, b
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc h
    ld h, d
    ld c, l
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, b
    ld b, [hl]
    ld c, l
    ld c, c
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $43
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $48
    ld c, e
    ld c, h
    ld d, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    rst $28
    xor $54
    ld b, d
    ld a, $48
    ld c, e
    ld b, d
    ld d, b
    ld d, b
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    daa
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld a, $43
    ld c, a
    ld a, $46
    ld b, c
    rst $28
    xor $4c
    ld b, e
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld a, [$eff7]
    xor $45
    ld a, $53
    ld b, d
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld c, e
    rst $28
    xor $3f
    ld b, d
    ld b, e
    ld c, h
    ld c, a
    ld b, d
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
    ld c, c
    ld b, d
    ld d, c
    ld h, d
    ld b, c
    ld c, h
    ld d, h
    ld c, e
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld b, h
    ld d, d
    ld a, $4f
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, [hl]
    ld c, c
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld b, c
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, c
    ld e, [hl]
    ld d, h
    ld b, l
    ld a, $51
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc h
    ld d, b
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld d, b
    rst $28
    xor $41
    ld b, [hl]
    ld b, b
    ld d, c
    ld a, $51
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc h
    ld h, d
    ld d, e
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $ef
    xor $53
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld h, d
    ld d, h
    ld b, l
    ld b, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld h, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $54
    ld a, $50
    ld h, d
    ld c, c
    ld d, d
    ld b, b
    ld c, b
    ld h, d
    ld c, h
    ld c, a
    ld h, d
    ld b, e
    ld a, $51
    ld b, d
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    scf
    ld c, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld e, [hl]
    ld d, h
    ld b, d
    ld h, d
    ld a, $4f
    ld b, d
    rst $28
    xor $43
    ld c, h
    ld b, b
    ld d, d
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $3e
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    ld e, a
    ld e, a
    ld h, d
    ld sp, $5e4c
    rst $28
    xor $45
    ld b, d
    ld a, $49
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $46
    ld c, d
    ld c, l
    ld c, h
    ld c, a
    ld d, c
    ld a, $4b
    ld d, c
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld c, d
    ld a, $56
    ccf
    ld b, d
    ld h, d
    ld d, b
    ld d, d
    ld c, l
    ld c, l
    ld c, h
    ld c, a
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld a, $46
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $3a
    ld b, d
    ld c, c
    ld c, c
    ld e, [hl]
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, c
    ld b, d
    ld c, l
    ld b, d
    ld c, e
    ld b, c
    ld d, b
    rst $28
    xor $4c
    ld c, e
    ld h, d
    ld b, l
    ld c, h
    ld d, h
    ld h, d
    inc l
    ld h, d
    ld b, e
    ld b, d
    ld b, d
    ld c, c
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc h
    ld c, d
    ld h, d
    inc l
    ld h, d
    ld a, $49
    ld d, h
    ld a, $56
    ld d, b
    rst $28
    xor $41
    ld c, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, d
    ld c, e
    ld c, e
    ld b, d
    ld b, b
    ld b, d
    ld d, b
    ld d, b
    ld a, $4f
    ld d, [hl]
    ld a, [$eff7]
    xor $50
    ld d, c
    ld d, d
    ld b, e
    ld b, e
    ld e, a
    ld e, a
    ld e, a
    ld h, h
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    jr nc, jr_01a_4def

    ld h, d
    ld c, l
    ld a, $49
    ld h, d
    ld b, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $4b
    ld b, d
    ld d, l
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $4a
    ld d, [hl]
    ld h, d
    ld c, d
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    inc l
    rst $28
    xor $40
    ld a, $4b
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld b, l
    ld b, d
    ld c, c
    ld c, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld e, a
    ld e, a
    ld e, a
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    dec hl
    ld b, [hl]
    ld e, [hl]
    ld h, d
    jr nc, jr_01a_4e37

    ld e, a
    or $5e
    rst $28
    xor $56
    ld c, h

jr_01a_4def:
    ld d, d
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld b, l
    ld a, $53
    ld b, [hl]
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $3e
    ld h, d
    ccf
    ld a, $41
    ld h, d
    ld b, l
    ld a, $46
    ld c, a
    ld h, d
    ld b, c
    ld a, $56
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc h
    ld c, a
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld c, a
    ld b, d
    ld a, $41
    ld d, [hl]
    ld h, h
    rst $28
    xor $31
    ld c, h
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, c
    ld b, d
    ld b, e
    ld d, c
    ld a, [$eff7]
    xor $3f
    ld b, d

jr_01a_4e37:
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld e, a
    ld e, a
    ld e, a
    ld a, [hl-]
    ld b, l
    ld a, $51
    ld h, h
    ld h, d
    inc h
    ld c, a
    ld b, d
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $49
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, d
    ld b, d
    ld a, [$eff7]
    xor $4b
    ld c, h
    ld d, b
    ld d, [hl]
    ld h, e
    ld h, h
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld h, d
    ld a, $49
    ld d, h
    ld a, $56
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld c, b
    rst $28
    xor $3e
    ccf
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld d, h
    ld b, l
    ld a, $51
    ld h, d
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $43
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, d
    ld a, $48
    ld b, d
    ld d, b
    ld h, d
    ld d, d
    ld d, b
    rst $28
    xor $54
    ld b, [hl]
    ld c, e
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc h
    ld c, l
    ld c, l
    ld c, a
    ld c, h
    ld c, l
    ld c, a
    ld b, [hl]
    ld a, $51
    ld b, d
    rst $28
    xor $50
    ld d, d
    ld c, l
    ld c, l
    ld c, h
    ld c, a
    ld d, c
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld a, $4b
    ld a, [$eff7]
    xor $3e
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, b
    ld d, d
    ld c, l
    ld b, d
    ld c, a
    ld b, [hl]
    ld c, h
    ld c, a
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld a, $4b
    ld h, d
    ld d, d
    ld c, e
    ld b, h
    ld d, d
    ld a, $4f
    ld b, c
    ld b, d
    ld b, c
    ld a, [$eff7]
    xor $3e
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    daa
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld c, a
    ld d, [hl]
    ld e, a
    rst $28
    xor $2c
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld c, c
    ld b, d
    ld a, $41
    ld a, [$eff7]
    xor $42
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    cpl
    ld b, d
    ld d, c
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld d, c
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
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
    ld d, d
    ld d, b
    ld b, d
    ld b, e
    ld d, d
    ld c, c
    ld e, a
    ld a, [$eff7]
    xor $37
    ld b, l
    ld b, d
    ld h, d
    ld c, c
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $2a
    ld c, h
    ld c, c
    ld b, c
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld [hl-], a
    ld c, e
    ld b, b
    ld b, d
    ld h, d
    ld d, d
    ld c, l
    ld c, h
    ld c, e
    ld h, d
    ld a, $62
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld a, [$eff7]
    xor $50
    ld a, $54
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
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    rst $28
    xor $3e
    ld h, d
    ld b, h
    ld c, h
    ld c, c
    ld b, c
    ld b, d
    ld c, e
    ld h, d
    ld d, b
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, e
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $49
    ld c, h
    ld d, e
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld a, $51
    ld a, [$eff7]
    xor $43
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld h, d
    ld d, b
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld a, $4b
    ld b, c
    rst $28
    xor $4d
    ld c, a
    ld c, h
    ld c, l
    ld c, h
    ld d, b
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, [hl]
    ld d, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld [hl], $4c
    ld c, h
    ld c, e
    ld h, d
    ld a, $43
    ld d, c
    ld b, d
    ld c, a
    ld e, [hl]
    ld h, d
    ld a, $ef
    xor $50
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $44
    ld c, h
    ld c, c
    ld b, c
    ld b, d
    ld c, e
    ld h, d
    ld d, b
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $40
    ld a, $4a
    ld b, d
    ld h, d
    ld a, $49
    ld c, h
    ld c, e
    ld b, h
    ld e, a
    ld e, a
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    jr nc, jr_01a_50a3

    ld b, c
    ld b, d
    ld c, a
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $3e
    ld c, c
    ld c, c
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld b, l
    ld a, $53
    ld b, d
    rst $28
    xor $4b
    ld a, $51
    ld d, d
    ld c, a
    ld a, $49
    ld c, c
    ld d, [hl]
    ld e, a
    ld a, [$eff7]
    xor $3c
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld h, d
    ld c, e
    ld a, $51
    ld d, d
    ld c, a
    ld a, $49
    ld c, c
    ld d, [hl]
    ld h, e

jr_01a_50a3:
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    ld sp, $544c
    ld e, a
    ld h, d
    cpl
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ld b, h
    ld c, h
    rst $28
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    or $63
    ld h, d
    ld sp, $4046
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $4a
    ld b, d
    ld b, d
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    ccf
    ld c, h
    ld d, [hl]
    ld e, [hl]
    ld h, d
    ld c, h
    ld b, l
    ld h, d
    ccf
    ld c, h
    ld d, [hl]
    ld e, a
    rst $28
    xor $37
    ld b, l
    ld b, d
    ld h, d
    ld b, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld d, h
    ld a, $56
    ld d, b
    ld h, d
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld h, d
    ccf
    ld b, d
    ld b, e
    ld c, h
    ld c, a
    ld b, d
    rst $28
    xor $2c
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    ld h, d
    ld d, b
    ld d, c
    ld a, $4f
    ld d, c
    ld b, d
    ld b, c
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    rst $28
    xor $51
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
    ld a, [$eff7]
    xor $44
    ld d, d
    ld d, [hl]
    ld d, b
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    dec h

Jump_01a_514b:
    ld d, d
    ld d, c
    ld h, d
    inc l
    ld h, d
    ld a, $49
    ld d, h
    ld a, $56
    ld d, b
    rst $28
    xor $4d
    ld a, $4b
    ld b, [hl]
    ld b, b
    ld e, a
    ld e, a
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    dec h
    ld c, a
    ld b, d
    ld a, $51
    ld b, l
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $3f
    ld c, a
    ld b, d
    ld a, $51
    ld b, l
    ld b, d
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld e, [hl]
    ld a, [$eff7]
    xor $3f
    ld c, a
    ld b, d
    ld a, $51
    ld b, l
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $3f
    ld c, a
    ld b, d
    ld a, $51
    ld b, l
    ld b, d
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    dec [hl]
    ld b, d
    ld c, c
    ld a, $55
    ld e, [hl]
    ld h, d
    ld c, a
    ld b, d
    ld c, c
    ld a, $55
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $26
    ld a, $49
    ld c, d
    ld h, d
    ld b, c
    ld c, h
    ld d, h
    ld c, e
    ld e, [hl]
    ld a, [$eff7]
    xor $40
    ld a, $49
    ld c, d
    ld h, d
    ld b, c
    ld c, h
    ld d, h
    ld c, e
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld d, b
    ld a, $56
    ld h, d
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
    ld c, c
    ld a, $55
    ld h, h
    ld a, [$eff7]
    xor $3a
    ld b, l
    ld e, a
    ld e, a
    ld e, a
    ld d, h
    ld b, l
    ld a, $51
    ld h, d
    ld b, c
    ld e, [hl]
    ld b, c
    ld e, [hl]
    ld b, c
    ld c, h
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld c, d
    ld b, d
    ld a, $4b
    ld h, h
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld d, d
    ld c, d
    ld c, l
    ld b, l
    ld e, [hl]
    ld h, d
    inc l
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld d, c
    ld b, l
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    dec hl
    ld a, $49
    ld b, d
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    add hl, hl
    ld c, h
    ld c, a
    ld b, h
    ld b, d
    ld d, c
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $f3
    sbc a
    and e
    inc l
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld c, e
    ld b, d
    ld b, d
    ld b, c
    ld h, d
    ld a, $4b
    ld d, [hl]
    rst $28
    xor $45
    ld b, d
    ld a, $49
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    ld a, [$eff7]
    xor $2a
    ld b, d
    ld d, c
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld [hl], $45
    ld d, d
    ld d, c
    ld h, d
    ld d, d
    ld c, l
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $f3
    sbc a
    and e
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $3e
    ld c, c
    ld c, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $4a
    ld c, h
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ld c, e
    ld c, h
    ld d, h
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld sp, $624c
    ld c, d
    ld a, $51
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld d, h
    ld b, l
    ld a, $51
    ld e, [hl]
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld c, b
    ld b, d
    ld b, d
    ld c, l
    ld h, d
    ld b, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    ld a, [$eff7]
    xor $38
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld h, e
    ld h, h
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
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
    xor $40
    ld a, $49
    ld c, c
    ld h, d
    ld c, d
    ld b, d
    ld a, [$eff7]
    xor $46
    ld c, e
    ld b, b
    ld c, h
    ld c, e
    ld d, b
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, a
    ld a, $51
    ld b, d
    ld h, e
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld l, d
    ld h, d
    ld b, h
    ld c, h
    ld c, e
    ld c, e
    ld a, $62
    ld c, l
    ld c, h
    ld d, d
    ld d, c
    ld h, e
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    ld e, a
    ld e, a
    ld e, a
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    rst $28
    xor $3e
    ld h, d
    ld c, a
    ld b, d
    ccf
    ld b, d
    ld c, c
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl-]
    ld b, l
    ld d, [hl]
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld d, [hl]
    ld a, $ef
    xor $40
    ld a, $49
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $4f
    ld b, d
    ccf
    ld b, d
    ld c, c
    ld h, e
    ld h, h
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
    ld d, b
    ld b, l
    ld c, h
    ld d, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $50
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld c, a
    ld b, d
    ccf
    ld b, d
    ld c, c
    ld c, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl-]
    ld b, l
    ld a, $51
    ld h, h
    ld h, d
    inc h
    ld c, a
    ld b, d
    ld h, d
    ld d, h
    ld b, d
    rst $28
    xor $45
    ld a, $53
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld a, $51
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $4b
    ld c, h
    ld d, h
    ld h, h
    ld h, d
    dec hl
    ld c, d
    ld c, d
    ld c, d
    ld e, a
    ld h, d
    inc l
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    rst $28
    xor $54
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, h
    ld c, h
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    dec hl
    ld d, d
    ld b, l
    ld h, h
    ld h, d
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld c, [hl]
    ld d, d
    ld b, [hl]
    ld d, c
    ld h, h
    rst $28
    xor $3a
    ld b, d
    ld c, c
    ld c, c
    ld e, [hl]
    ld h, d
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    ld b, h
    ld c, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld c, e
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld h, d
    ld b, a
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ld d, h
    ld a, $4b
    ld c, e
    ld a, $ef
    xor $3e
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
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
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    scf
    ld c, h
    ld c, h
    ld h, d
    ccf
    ld a, $41
    ld e, [hl]
    rst $28
    xor $3e
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld b, e
    ld c, h
    ld b, b
    ld d, d
    ld d, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld l, d
    ld h, d
    ld b, h
    ld c, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, d
    ld d, [hl]
    rst $28
    xor $4c
    ld d, h
    ld c, e
    ld h, d
    ld d, h
    ld a, $56
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc h
    ld c, a
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $51
    ld b, d
    ld c, c
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld d, h
    ld b, l
    ld a, $51
    ld a, [$eff7]
    xor $51
    ld c, h
    ld h, d
    ld b, c
    ld c, h
    ld h, h
    ld h, d
    ld a, [hl-]
    ld b, l
    ld a, $51
    ld h, d
    ld c, e
    ld b, d
    ld c, a
    ld d, e
    ld b, d
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld h, d
    ld b, b
    ld a, $4b
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    rst $28
    xor $3f
    ld d, [hl]
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    ld c, c
    ld b, d
    ld d, c
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
    ld d, b
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $51
    ld c, a
    ld c, h
    ld d, d
    ccf
    ld c, c
    ld b, d
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    rst $28
    xor $49
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $51
    ld b, l
    ld a, $51
    ld h, d
    ld c, d
    ld d, d
    ld b, b
    ld b, l
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, d
    ld a, $50
    rst $28
    xor $49
    ld c, h
    ld c, e
    ld b, h
    ld h, d
    ld a, $50
    ld h, d
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld c, h
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $46
    ld d, b
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld b, e
    ld c, h
    ld c, a
    ld d, c
    ld a, $3f
    ld c, c
    ld b, d
    rst $28
    xor $43
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld h, d
    ld b, b
    ld a, $4b
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    rst $28
    xor $50
    ld d, c
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld d, h
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    inc l
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld a, [$eff7]
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld b, l
    ld d, d
    ld c, a
    ld d, c
    ld h, d
    ld a, $4b
    ld b, c
    rst $28
    xor $3e
    ld c, c
    ld c, d
    ld c, h
    ld d, b
    ld d, c
    ld h, d
    ld b, e
    ld a, $49
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld e, a
    ld e, a
    inc l
    ld e, a
    ld e, a
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $4c
    ld e, a
    ld e, a
    ld c, h
    ld e, a
    ld e, a
    ld c, h
    ld c, b
    ld a, $56
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, a
    ld d, d
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $45
    ld e, a
    ld e, a
    ld b, l
    ld e, a
    ld e, a
    ld b, l
    ld b, d
    ld a, $49
    ld h, h
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    dec hl
    ld c, d
    ld c, d
    ld c, d
    ld e, a
    ld h, d
    ld a, [hl-]
    ld b, l
    ld a, $51
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ccf
    ld b, d
    ld d, b
    ld d, c
    ld h, d
    ld d, h
    ld a, $56
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $45
    ld b, d
    ld c, c
    ld c, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, h
    ld d, d
    ld d, [hl]
    ld d, b
    ld h, h
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc h
    ld c, a
    ld b, h
    ld b, l
    ld b, l
    ld b, l
    ld e, a
    ld e, a
    ld e, a
    ld h, d
    add hl, hl
    ld c, c
    ld b, d
    ld b, d
    rst $28
    xor $4c
    ld c, a
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    inc l
    ld a, [$eff7]
    xor $44
    ld c, h
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld b, [hl]
    ld d, c
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    scf
    ld b, l
    ld a, $51
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $4e
    ld d, d
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc sp
    cpl
    inc h
    ld sp, $6264
    or $ef
    xor $50
    ld b, l
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld b, c
    ld b, d
    ld b, b
    ld b, [hl]
    ld b, c
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $27
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld a, $50
    ld c, b
    ld h, d
    ld c, d
    ld b, d
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld h, d
    ld c, d
    ld b, d
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $3e
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld h, d
    ccf
    ld d, d
    ld d, c
    ld h, d
    inc l
    ld h, d
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld b, c
    ld a, [$eff7]
    xor $52
    ld c, l
    ld h, d
    ld b, c
    ld b, d
    ld b, e
    ld b, d
    ld c, e
    ld b, c
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
    ld h, d
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld h, d
    inc l
    ld l, d
    rst $28
    xor $40
    ld a, $4f
    ld b, d
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    ld h, d
    ccf
    ld d, d
    ld d, c
    ld a, [$eff7]
    xor $2c
    ld h, d
    ld b, c
    ld c, h
    ld h, d
    ld b, l
    ld b, d
    ld c, c
    ld c, l
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld c, l
    ld a, $49
    ld d, b
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    ld h, $3e
    ld c, a
    ld b, d
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld d, b
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld c, d
    ld b, [hl]
    ld b, c
    ld b, c
    ld c, c
    ld b, d
    ld h, d
    ld c, e
    ld a, $4a
    ld b, d
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    cpl
    ld b, d
    ld d, c
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $3a
    ld b, l
    ld a, $51
    ld h, d
    ld d, h
    ld a, $50
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld c, a
    ld b, d
    ld a, $49
    ld a, [$eff7]
    xor $4b
    ld a, $4a
    ld b, d
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld l, d
    ld h, d
    ld b, b
    ld a, $4f
    ld b, d
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    ld h, d
    ld a, $4b
    ld b, c
    rst $28
    xor $2c
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld c, a
    ld b, d
    ld c, d
    ld b, d
    ld c, d
    ccf
    ld b, d
    ld c, a
    ld e, a
    ld a, [$eff7]
    xor $2b
    ld a, $62
    ld b, l
    ld a, $62
    ld b, l
    ld a, $63
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld h, d
    ld b, h
    ld d, d
    ld a, $4f
    ld a, $4b
    ld d, c
    ld b, d
    ld b, d
    ld h, d
    ld a, $ef
    xor $40
    ld c, h
    ld c, d
    ld b, e
    ld c, h
    ld c, a
    ld d, c
    ld a, $3f
    ld c, c
    ld b, d
    ld a, [$eff7]
    xor $42
    ld c, e
    ld d, e
    ld b, [hl]
    ld c, a
    ld c, h
    ld c, e
    ld c, d
    ld b, d
    ld c, e
    ld d, c
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    rst $28
    xor $42
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld c, h
    ld c, e
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $43
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, e
    rst $28
    xor $f7
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
    ld d, h
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $51
    ld a, $48
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld c, h
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $40
    ld c, c
    ld a, $50
    ld d, b
    ld h, d
    ld d, d
    ld c, l
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld d, c
    ld a, $48
    ld b, d
    rst $28
    xor $4a
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    daa
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld c, d
    ld b, [hl]
    ld d, l
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld d, d
    ld c, l
    rst $28
    xor $54
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, c
    ld b, l
    ld c, h
    ld d, b
    ld b, d
    ld h, d
    ld b, h
    ld d, d
    ld d, [hl]
    ld d, b
    ld a, [$eff7]
    xor $54
    ld b, l
    ld c, h
    ld h, d
    ld b, c
    ld c, h
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $3f
    ld d, d
    ld d, c
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl+]
    ld c, a
    ld c, a
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    ld sp, $3f4c
    ld c, h
    ld b, c
    ld d, [hl]
    rst $28
    xor $40
    ld a, $4b
    ld h, d
    ld b, b
    ld a, $51
    ld b, b
    ld b, l
    ld h, d
    ld c, d
    ld b, d
    ld a, [$eff7]
    xor $3f
    ld d, [hl]
    ld h, d
    ld d, b
    ld d, d
    ld c, a
    ld c, l
    ld c, a
    ld b, [hl]
    ld d, b
    ld b, d
    ld h, e
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    dec l
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ld d, b
    ld b, [hl]
    ld d, c
    ld h, d
    ccf
    ld a, $40
    ld c, b
    rst $28
    xor $3e
    ld c, e
    ld b, c
    ld h, d
    ld d, h
    ld a, $46
    ld d, c
    ld h, d
    ld b, e
    ld c, h
    ld c, a
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
    ld d, c
    ld c, h
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld d, b
    ld b, l
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    jr z, jr_01a_594a

    ld b, d
    ld c, a
    ld d, [hl]
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, d
    inc l
    ld h, d
    ld d, c
    ld c, a
    ld d, [hl]
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $40
    ld c, h
    ld c, d
    ccf
    ld a, $51
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $3e
    ld c, c
    ld c, a
    ld b, d
    ld a, $41
    ld d, [hl]
    ld h, d
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    dec hl
    ld c, h
    ld d, h
    ld h, d
    ld b, b
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    rst $28
    xor $45

jr_01a_594a:
    ld a, $4d
    ld c, l
    ld b, d
    ld c, e
    ld h, h
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl-]
    ld b, d
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $42
    ld d, e
    ld b, d
    ld c, e
    ld d, c
    ld d, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ld e, [hl]
    ld h, d
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, h
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    dec [hl]
    ld b, d
    ld c, c
    ld a, $55
    ld e, [hl]
    ld h, d
    ld c, a
    ld b, d
    ld c, c
    ld a, $55
    ld e, a
    rst $28
    xor $39
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld h, d
    ld c, h
    ld d, d
    ld c, a
    ld d, b
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $42
    ld d, e
    ld b, d
    ld c, e
    ld d, c
    ld d, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    dec hl
    ld d, d
    ld b, l
    ld h, h
    ld h, d
    ld b, [hl]
    ld d, c
    ld l, b
    ld h, d
    ld c, h
    ld c, b
    ld a, $56
    ld e, [hl]
    rst $28
    xor $49
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ld b, l
    ld b, d
    ld a, $49
    ld a, [$eff7]
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    rst $28
    xor $3f
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, c
    ld e, [hl]
    ld h, d
    ld d, h
    ld b, d
    ld c, c
    ld c, c
    ld e, a
    rst $28
    xor $2b
    ld c, h
    ld d, h
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld a, $62
    ld b, b
    ld d, d
    ld c, l
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $40
    ld c, h
    ld b, e
    ld b, e
    ld b, d
    ld b, d
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    or $5e
    ld h, d
    ld d, h
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4f
    ld b, d
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld h, d
    ld c, d
    ld a, $50
    ld d, b
    ld a, $44
    ld b, d
    ld h, h
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    scf
    ld b, l
    ld a, $4b
    ld c, b
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld c, b
    ld e, a
    ld a, [$eff7]
    xor $3a
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
    xor $4f
    ld b, d
    ld c, c
    ld a, $55
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld a, $62
    ld d, h
    ld b, l
    ld b, [hl]
    ld c, c
    ld b, d
    ld h, h
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, c
    ld e, [hl]
    ld b, [hl]
    ld c, e
    ld h, d
    ld a, $62
    ld d, h
    ld a, $56
    ld e, [hl]
    rst $28
    xor $43
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $43
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, h
    ld c, e
    ld c, c
    ld d, [hl]
    ld h, d
    ld d, h
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $62
    ld b, h
    ld d, d
    ld d, [hl]
    rst $28
    xor $54
    ld b, l
    ld c, h
    ld h, d
    ld a, $40
    ld d, c
    ld d, b
    ld h, d
    ld a, $50
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $50
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, c
    ld e, [hl]
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    ld a, $ef
    xor $44
    ld b, d
    ld c, e
    ld b, [hl]
    ld d, d
    ld d, b
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld c, d
    ld b, d
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld h, d
    ld d, h
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $3f
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, b
    ld c, h
    ld c, d
    ld b, d
    ld c, h
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, b
    ld d, c
    ld a, $4a
    ld b, [hl]
    ld c, e
    ld a, $5f
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld b, d
    ld b, d
    ld h, d
    dec hl
    ld b, d
    ld b, d
    ld h, d
    dec hl
    ld b, d
    ld b, d
    ld h, e
    rst $28
    xor $3a
    ld c, h
    ld c, a
    ld c, b
    ld h, e
    ld h, d
    ld [hl], $51
    ld d, d
    ld c, l
    ld b, [hl]
    ld b, c
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld c, d
    ld a, $48
    ld b, d
    ld h, d
    ld c, d
    ld b, d
    rst $28
    xor $54
    ld c, h
    ld c, a
    ld c, b
    ld h, e
    ld h, h
    ld a, [$eff7]
    xor $3a
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld c, e
    ld c, h
    ld h, d
    ld c, a
    ld b, d
    ld d, h
    ld a, $4f
    ld b, c
    ld h, h
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld e, a
    ld e, a
    ld e, a
    ld b, [hl]
    ld b, e
    ld h, d
    inc l
    ld h, d
    ld d, b
    ld d, d
    ld c, l
    ld c, l
    ld c, h
    ld c, a
    ld d, c
    rst $28
    xor $42
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld e, [hl]
    ld d, c
    ld b, l
    ld e, a
    ld e, a
    ld e, a
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $43
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    rst $28
    xor $4c
    ld d, e
    ld b, d
    ld c, a
    ld h, d
    ld b, d
    ld d, e
    ld b, d
    ld c, e
    ld d, c
    ld d, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ld e, [hl]
    ld a, [$eff7]
    xor $4f
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, h
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld e, a
    ld e, a
    ld e, a
    ld h, d
    inc l
    ld e, a
    ld e, a
    ld e, a
    inc l
    ld l, d
    rst $28
    xor $50
    ld e, a
    ld e, a
    ld e, a
    ld d, b
    ld b, b
    ld a, $4f
    ld b, d
    ld b, c
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    dec h
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld e, a
    ld h, d
    ld [hl], $45
    ld b, [hl]
    ld d, e
    ld b, d
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $f3
    sbc a
    and e
    inc l
    ld l, d
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld d, b
    ld b, b
    ld a, $4f
    ld b, d
    ld b, c
    rst $28
    xor $2c
    ld l, d
    ld h, d
    ld b, a
    ld d, d
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $50
    ld b, l
    ld b, [hl]
    ld d, e
    ld b, d
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld b, b
    ld c, h
    ld c, c
    ld b, c
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    ld c, e
    ld c, h
    ld h, e
    ld h, d
    ld [hl], $45
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld c, e
    ld h, a
    rst $28
    xor $3f
    ld b, d
    ld h, e
    ld h, e
    ld h, d
    ld a, [hl-]
    ld b, l
    ld d, [hl]
    ld e, a
    ld e, a
    ld e, a
    ld h, d
    ld d, h
    ld b, l
    ld d, [hl]
    ld h, d
    ld a, $4a
    ld a, [$eff7]
    xor $2c
    ld h, d
    ld b, e
    ld b, d
    ld b, d
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    rst $28
    xor $54
    ld a, $56
    ld h, e
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld e, a
    ld e, a
    ld e, a
    inc l
    ld e, a
    ld e, a
    ld e, a
    inc l
    ld h, d
    ld a, $4a
    rst $28
    xor $50
    ld e, a
    ld e, a
    ld e, a
    ld d, b
    ld e, a
    ld e, a
    ld e, a
    ld b, b
    ld a, $5f
    ld e, a
    ld e, a
    ld c, a
    ld b, d
    ld b, c
    ld h, e
    rst $30
    ldh a, [$37]
    ld b, l
    ld b, d
    ld h, d
    ld b, c
    ld c, h
    ld c, h
    ld c, a
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $50
    ld b, l
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld e, a
    ld e, a
    ld e, a
    ld h, d
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $5f
    ld e, a
    ld e, a
    ld h, d
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld d, a
    ld d, a
    ld d, a
    ld h, d
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld l, d
    ld h, d
    ld d, b
    ld c, c
    ld b, d
    ld b, d
    ld c, l
    ld d, [hl]
    ld e, a
    rst $28
    xor $26
    ld a, $4b
    ld h, d
    ld d, h
    ld b, d
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ld b, l
    ld c, h
    ld c, d
    ld b, d
    ld a, [$eff7]
    xor $4b
    ld c, h
    ld d, h
    ld h, h
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    scf
    ld c, h
    ld b, [hl]
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld a, $54
    ld a, $56
    rst $28
    xor $41
    ld c, h
    ld b, d
    ld d, b
    ld c, e
    ld h, a
    ld h, d
    ld b, l
    ld b, d
    ld c, c
    ld c, l
    ld e, a
    ld a, [$eff7]
    xor $35
    ld b, d
    ld c, c
    ld a, $55
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    jr c, jr_01a_5d99

    ld b, h
    ld e, a
    ld e, a
    ld e, a
    jr nc, jr_01a_5db1

    ld h, d
    ld d, b
    ld d, c
    ld c, h
    ld c, d
    ld a, $40
    ld b, l
    rst $28
    xor $45
    ld d, d
    ld c, a
    ld d, c
    ld d, b
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $2f
    ld b, d
    ld d, c
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    rst $28
    xor $3e
    ld h, d
    ccf
    ld c, a
    ld b, d
    ld a, $48
    ld e, a
    ld e, a
    ld e, a
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl-]
    ld b, l
    ld d, [hl]
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h

jr_01a_5d99:
    ld d, d
    rst $28
    xor $49
    ld c, h
    ld c, h
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld a, $51
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld a, [$eff7]

jr_01a_5db1:
    xor $51
    ld b, l
    ld a, $51
    ld h, h
    ld h, d
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld c, b
    rst $28
    xor $2c
    ld l, d
    ld h, d
    ld b, e
    ld a, $48
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $41
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc h
    inc h
    ld c, a
    ld c, a
    ld b, h
    ld b, h
    ld b, l
    ld h, e
    rst $28
    xor $2c
    ld l, d
    ld h, d
    ld d, b
    ld d, c
    ld a, $4f
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl+]
    ld d, h
    ld c, a
    ld c, a
    ld c, a
    ld h, e
    rst $28
    xor $2c
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
    ld a, [$eff7]
    xor $37
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld h, h
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    ld a, $4b
    ld h, d
    ld c, h
    ld c, c
    ld b, c
    rst $28
    xor $44
    ld d, [hl]
    ld c, l
    ld d, b
    ld d, [hl]
    ld h, d
    ld d, h
    ld c, h
    ld c, d
    ld a, $4b
    ld e, a
    ld a, [$eff7]
    xor $3a
    ld a, $4b
    ld d, c
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, d
    ld c, c
    ld c, c
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld b, e
    ld d, d
    ld d, c
    ld d, d
    ld c, a
    ld b, d
    ld h, h
    rst $38
    ldh a, [$eb]
    sbc a
    and e
    dec hl
    ld c, d
    ld c, d
    ld e, [hl]
    ld a, [hl-]
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $3e
    ld c, a
    ld b, d
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
    ld b, c
    ld a, [$eff7]
    xor $3e
    ld d, b
    ld h, d
    ccf
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, d
    ld c, h
    ld c, a
    ld b, d
    rst $28
    xor $4d
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld b, e
    ld d, d
    ld c, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc h
    ld h, d
    ld c, d
    ld b, d
    ld a, $4b
    ld h, d
    ld b, h
    ld b, [hl]
    ld c, a
    ld c, c
    ld h, [hl]
    ld c, c
    rst $28
    xor $4c
    ld c, l
    ld b, d
    ld c, e
    ld h, d
    ld d, d
    ld c, l
    ld h, d
    ld a, $62
    ld c, e
    ld b, d
    ld d, h
    ld h, d
    ld c, l
    ld a, $51
    ld b, l
    ld a, [$eff7]
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, c
    ld e, a
    ld h, d
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld b, b
    ld c, a
    ld b, d
    ld a, $51
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld c, h
    ld d, h
    ld c, e
    ld a, [$eff7]
    xor $54
    ld a, $56
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld b, d
    ld c, a
    ld b, d
    ld l, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $37
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld a, [$eff7]
    xor $26
    ld b, l
    ld a, $4a
    ccf
    ld b, d
    ld c, a
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
    dec [hl]
    ld c, h
    ld c, h
    ld c, d
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $39
    ld b, [hl]
    ld c, c
    ld c, c
    ld a, $44
    ld b, d
    ld c, a
    ld h, d
    or [hl]
    ld a, [$eff7]
    xor $37
    ld a, $49
    ld b, [hl]
    ld d, b
    ld c, d
    ld a, $4b
    rst $28
    xor $46
    ld d, b
    ld h, d
    ld c, e
    ld c, h
    ld d, h
    ld h, d
    ld c, h
    ld c, l
    ld b, d
    ld c, e
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    dec hl
    ld a, $49
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    rst $28
    xor $3e
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, l
    ld b, d
    ld a, $49
    ld a, [$eff7]
    xor $56
    ld c, h
    ld d, d
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
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld d, c
    ld l, b
    ld h, d
    ld b, l
    ld b, d
    ld c, c
    ld c, l
    ld b, e
    ld d, d
    ld c, c
    ld e, a
    rst $28
    xor $27
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld c, c
    ld b, d
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, h
    ld c, h
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    jr nc, jr_01a_6004

    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    rst $28
    xor $4f
    ld b, d
    ld b, b
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld h, d
    ld b, h
    ld c, a
    ld a, $41
    ld d, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ld a, [$eff7]
    xor $46
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld a, $49
    ld c, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld c, d
    ld c, d
    ld e, a

jr_01a_6004:
    ld h, d
    ld h, $3e
    ld c, e
    ld h, a
    ld h, d
    ld b, h
    ld c, h
    rst $28
    xor $51
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, h
    ld a, $56
    ld h, d
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld a, $51
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    add hl, hl
    ld a, $4f
    ld c, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    jr nc, jr_01a_608a

    ld b, c
    ld l, $4b
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $51
    ld c, a
    ld d, [hl]
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, a
    ld d, d
    ld c, d
    ld c, l
    ld a, [$eff7]
    xor $4c
    ld d, e
    ld b, d
    ld c, a
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
    ld e, a
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
    ld b, d
    ld h, d

jr_01a_608a:
    ld b, l
    ld c, h
    ld c, c
    ld b, d
    rst $28
    xor $40
    ld a, $4b
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld b, a
    ld d, d
    ld c, d
    ld c, l
    ld b, d
    ld b, c
    ld a, [$eff7]
    xor $4c
    ld d, e
    ld b, d
    ld c, a
    ld h, e
    ld h, d
    inc l
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $54
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, h
    ld c, h
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld b, e
    ld a, [$eff7]
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld b, e
    ld a, $49
    ld c, c
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    or $5e
    inc l
    ld h, d
    ld d, h
    ld a, $50
    rst $28
    xor $54
    ld a, $46
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, e
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
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    rst $28
    xor $50
    ld d, c
    ld c, a
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $4f
    ld b, d
    ld c, l
    ld c, a
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $48
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, c
    ld c, h
    ld c, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $51
    ld b, l
    ld c, a
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld h, d
    ld b, b
    ld c, c
    ld a, $50
    ld d, b
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $51
    ld c, h
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, a
    ld b, d
    ld c, l
    ld e, a
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
    ld b, b
    ld a, $4b
    ld h, d
    ld a, $49
    ld d, b
    ld c, h
    rst $28
    xor $50
    ld c, b
    ld b, [hl]
    ld c, l
    ld h, d
    ld b, b
    ld c, c
    ld a, $50
    ld d, b
    ld b, d
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl-]
    ld b, l
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, d
    ld b, b
    ld c, c
    ld a, $50
    ld d, b
    rst $28
    xor $41
    ld c, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $4f
    ld b, d
    ld b, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, h
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    scf
    ld c, h
    ld c, h
    ld h, d
    ccf
    ld a, $41
    ld e, a
    ld h, d
    inc a
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
    ld d, b
    ld h, d
    ld a, $4f
    ld b, d
    ld a, [$eff7]
    xor $51
    ld c, h
    ld c, h
    ld h, d
    ld d, h
    ld b, d
    ld a, $48
    ld e, a
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
    ld d, b
    ld b, l
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    scf
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld a, [$eff7]
    xor $2a
    ld a, $51
    ld b, d
    ld h, d
    ld d, h
    ld b, l
    ld b, d
    ld c, a
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
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld a, [$eff7]
    xor $3e
    ld c, a
    ld b, d
    ld e, a
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
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, h

Jump_01a_624c:
    ld b, d
    ld d, c
    rst $28
    xor $4a
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld b, d
    ld d, l
    ld c, l
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld c, e
    ld b, b
    ld b, d
    ld a, [$eff7]
    xor $4c
    ld c, a
    ld h, d
    ld b, b
    ld a, $51
    ld b, b
    ld b, l
    ld h, d
    ld c, e
    ld b, d
    ld d, h
    rst $28
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld b, d
    ld h, e
    ld h, d
    inc a
    ld c, h
    ld d, d
    rst $28
    xor $50
    ld d, d
    ld c, a
    ld d, e
    ld b, [hl]
    ld d, e
    ld b, d
    ld b, c
    ld h, d
    add hl, hl
    ld h, d
    ld b, b
    ld c, c
    ld a, $50
    ld d, b
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
    ld c, l
    ld b, d
    ld c, e
    ld b, d
    ld b, c
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    dec [hl]
    ld c, h
    ld c, h
    ld c, d
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $30
    ld b, d
    ld c, d
    ld c, h
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    or [hl]
    rst $28
    xor $25
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld b, c
    ld b, d
    ld c, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld h, e
    rst $28
    xor $36
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld b, d
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
    ld a, [$eff7]
    xor $3e
    ld d, h
    ld a, $46
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld c, c
    ld a, $50
    ld d, c
    ld h, d
    ld c, d
    ld a, $51
    ld b, b
    ld b, l
    rst $28
    xor $46
    ld c, e
    ld h, d
    add hl, hl
    ld h, d
    ld b, b
    ld c, c
    ld a, $50
    ld d, b
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld a, $44
    ld a, $46
    ld c, e
    ld d, b
    ld d, c
    ld h, d
    ld a, $ef
    xor $4a
    ld d, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld c, h
    ld d, d
    ld d, b
    ld h, d
    ld b, c
    ld c, h
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $54
    ld b, l
    ld c, h
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $3f
    ld c, h
    ld d, c
    ld d, c
    ld c, h
    ld c, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld a, $62
    ld d, h
    ld b, d
    ld c, c
    ld c, c
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    jr nc, jr_01a_63e8

    ld e, a
    ld e, a
    ld c, d
    ld d, [hl]
    ld h, d
    ld c, e
    ld a, $4a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $37
    ld b, d
    ld d, c
    ld c, h
    ld e, a
    ld h, d
    inc l
    ld h, d
    ld d, b
    ld d, d
    ld c, a
    ld d, e
    ld b, [hl]
    ld d, e
    ld b, d
    ld b, c
    ld a, [$eff7]
    xor $2a
    ld h, d
    ld b, b
    ld c, c
    ld a, $50
    ld d, b
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld h, d
    ld b, b
    ld c, c
    ld a, $50
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld c, h
    ld h, h
    ld a, [$eff7]
    xor $2a
    ld c, h
    ld c, h
    ld b, c
    ld h, d
    ld c, c
    ld d, d
    ld b, b
    ld c, b
    ld h, e

jr_01a_63e8:
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    or $5e
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4b
    rst $28
    xor $44
    ld b, d
    ld d, c
    ld h, d
    ld a, $62
    ld c, c
    ld c, h
    ld d, c
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $46
    ld c, e
    ld b, e
    ld c, h
    ld c, a
    ld c, d
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld a, $4f
    ld b, d
    ld c, e
    ld a, $63
    ld a, [$eff7]
    xor $9f
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ld c, c
    ld b, d
    ld a, $4f
    ld c, e
    rst $28
    xor $3e
    ccf
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    scf
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld a, [$eff7]
    xor $2a
    ld a, $51
    ld b, d
    ld d, b
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld l, h
    ld b, d
    rst $28
    xor $4b
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld h, d
    ccf
    ld b, d
    ld b, d
    ld c, e
    ld h, d
    ld d, c
    ld c, h
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    jr z, jr_01a_64d2

    ld b, b
    ld c, c
    ld a, $50
    ld d, b
    ld e, a
    inc l
    ld h, d
    ld a, $4a
    rst $28
    xor $46
    ld c, e
    ld h, d
    jr z, @+$64

    ld b, b
    ld c, c
    ld a, $50
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    dec hl
    ld a, $62
    ld b, l
    ld a, $62
    ld b, l
    ld a, $5f
    ld h, d
    daa
    ld b, [hl]
    ld b, c
    ld c, e
    ld h, a
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld h, d
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $28
    ld h, d
    ld b, b
    ld c, c
    ld a, $50
    ld d, b
    ld h, h
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld l, d
    ld h, d
    ld c, d
    ld b, d
    ld c, d
    ld c, h
    ld c, a
    ld b, [hl]
    ld d, a
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $4a
    ld c, h

jr_01a_64d2:
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld h, d
    ld d, b
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $5f
    ld e, a
    ld c, d
    ld d, d
    ld c, d
    ccf
    ld c, c
    ld b, d
    ld h, d
    ld c, d
    ld d, d
    ld c, d
    ccf
    ld c, c
    ld b, d
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    daa
    ld c, a
    ld a, $40
    ld c, b
    ld d, [hl]
    ld e, [hl]
    ld h, d
    jr c, @+$4d

    ld b, [hl]
    ld b, b
    ld c, h
    ld c, a
    ld c, e
    ld e, [hl]
    rst $28
    xor $33
    ld b, [hl]
    ld d, l
    ld d, [hl]
    ld h, d
    or [hl]
    ld h, d
    add hl, hl
    ld c, c
    ld c, h
    ld c, a
    ld a, $30
    ld a, $4b
    ld a, [$eff7]
    xor $5f
    ld e, a
    ld e, a
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld d, b
    rst $28
    xor $24
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, c
    ld c, h
    ld d, c
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld h, $4c
    ld b, [hl]
    ld c, c
    dec h
    ld b, [hl]
    ld c, a
    ld b, c
    ld e, [hl]
    rst $28
    xor $30
    ld a, $41
    inc sp
    ld c, c
    ld a, $4b
    ld d, c
    ld h, d
    or [hl]
    ld h, d
    ld [hl], $4b
    ld a, $46
    ld c, c
    ld d, [hl]
    ld a, [$eff7]
    xor $5f
    ld e, a
    ld e, a
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    rst $28
    xor $31
    ld d, d
    ld c, d
    ccf
    ld [hl-], a
    ld b, e
    ld b, e
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld h, $4c
    ld b, [hl]
    ld c, c
    dec h
    ld b, [hl]
    ld c, a
    ld b, c
    ld e, [hl]
    rst $28
    xor $29
    ld b, [hl]
    ld c, a
    ld b, d
    ld a, [hl-]
    ld b, d
    ld b, d
    ld b, c
    ld e, [hl]
    ld h, d
    daa
    ld b, d
    ld a, $41
    ld sp, $5146
    ld b, d
    ld a, [$eff7]
    xor $b6
    ld h, d
    jr z, jr_01a_65eb

    ld b, [hl]
    ld c, c
    ld a, [hl-]
    ld a, $4b
    ld b, c
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $48
    ld c, e
    ld c, h
    ld d, h
    ld d, b
    ld h, d
    daa
    ld b, d
    ld h, $45
    ld a, $4c
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld [hl], $52
    ld c, a
    ld b, h
    ld b, d
    ld h, d
    ld b, l
    ld b, d
    ld a, $49
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, e
    rst $28
    xor $2c
    ld d, c
    ld l, b
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld b, e
    ld d, d
    ld c, c
    ld c, c
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc h
    ld c, e
    ld h, d
    ld b, d
    ld d, [hl]
    ld b, d
    ld h, d
    ccf
    ld a, $49
    ld c, c
    ld h, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $3e

jr_01a_65eb:
    ld c, e
    ld h, d
    jr z, jr_01a_6645

    ld b, d
    dec h
    ld a, $49
    ld c, c
    ld h, e
    ld h, d
    add hl, hl
    ld d, d
    ld c, e
    ld c, e
    ld d, [hl]
    ld h, h
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld a, $4b
    ld c, e
    ld a, $62
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld h, d
    ld d, h
    ld b, l
    ld c, h
    ld l, b
    rst $28
    xor $46
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    add hl, hl
    ld h, d
    ld b, b
    ld c, c
    ld a, $50
    ld d, b
    ld h, h
    rst $38
    ldh a, [$ea]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld c, c
    ld a, $50
    ld d, c
    ld h, d
    ld c, d
    ld a, $51
    ld b, b
    ld b, l
    rst $28
    xor $46
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    add hl, hl
    ld h, d
    ld b, b
    ld c, c
    ld a, $50
    ld d, b
    ld h, d

jr_01a_6645:
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, l
    ld c, a
    ld c, h
    ld b, e
    ld b, d
    ld d, b
    ld d, b
    ld c, h
    ld c, a
    rst $28
    xor $43
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, h
    ld b, d
    ld c, c
    ld c, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld c, l
    ld c, a
    ld c, h
    ld b, e
    ld b, d
    ld d, b
    ld d, b
    ld c, h
    ld c, a
    rst $28
    xor $45
    ld a, $50
    ld h, d
    inc sp
    ld d, d
    ld d, c
    ld c, a
    ld b, d
    ld c, l
    ld d, d
    ld c, l
    ld e, [hl]
    ld a, [$eff7]
    xor $30
    ld a, $41
    dec [hl]
    ld a, $53
    ld b, d
    ld c, e
    ld h, d
    or [hl]
    rst $28
    xor $36
    ld c, b
    ld d, d
    ld c, c
    ld c, c
    ld c, a
    ld c, h
    ld c, h
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl-]
    ld a, $51
    ld b, b
    ld b, l
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld d, h
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $30
    ld a, $41
    dec [hl]
    ld a, $53
    ld b, d
    ld c, e
    ld h, d
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld b, h
    ld b, l
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc sp
    ld d, d
    ld d, c
    ld c, a
    ld b, d
    ld c, l
    ld d, d
    ld c, l
    ld h, [hl]
    ld c, c
    rst $28
    xor $41
    ld b, d
    ld b, b
    ld c, a
    ld b, d
    ld a, $50
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $41
    ld b, d
    ld b, e
    ld b, d
    ld c, e
    ld d, b
    ld b, d
    ld h, d
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    rst $28
    xor $54
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld [hl], $3e
    ld c, l
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl+]
    ld c, a
    ld b, d
    ld b, d
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld e, a
    ld h, d
    inc l
    rst $28
    xor $4a
    ld a, $4b
    ld a, $44
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    add hl, sp
    ld a, $52
    ld c, c
    ld d, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ld d, b
    ld d, c
    ld c, h
    ld c, a
    ld b, d
    rst $28
    xor $4a
    ld c, h
    ld c, e
    ld b, d
    ld d, [hl]
    ld h, d
    or [hl]
    ld h, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld a, [$eff7]
    xor $43
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    ld h, d
    ld b, c
    ld d, d
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    rst $28
    xor $47
    ld c, h
    ld d, d
    ld c, a
    ld c, e
    ld b, d
    ld d, [hl]
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    add hl, sp
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld d, c
    ld h, d
    ld a, $4b
    ld d, [hl]
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    rst $28
    xor $54
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $50
    ld d, c
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld a, $4b
    ld d, [hl]
    ld d, c
    ld b, l
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
    dec hl
    ld c, h
    ld d, h
    ld h, d
    ld c, d
    ld a, $56
    ld h, d
    inc l
    ld h, d
    ld b, l
    ld b, d
    ld c, c
    ld c, l
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld d, c
    ld c, h
    ld b, c
    ld a, $56
    ld h, h
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    add hl, sp
    ld a, $52
    ld c, c
    ld d, c
    ld e, a
    ld h, d
    dec hl
    ld c, h
    ld d, h
    ld h, d
    ld c, d
    ld a, $56
    ld h, d
    inc l
    rst $28
    xor $45
    ld b, d
    ld c, c
    ld c, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, h
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    rst $28
    xor $54
    ld b, [hl]
    ld c, l
    ld b, d
    ld b, c
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld e, [hl]
    ld h, d
    ld c, d
    ld c, h
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $4c
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld c, c
    ld c, h
    ld d, b
    ld d, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc h
    ld c, e
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld b, d
    ld d, [hl]
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld b, l
    ld a, $49
    ld d, e
    ld b, d
    ld b, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    rst $28
    xor $4b
    ld b, d
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld c, a
    ld d, [hl]
    ld a, [$eff7]
    xor $3e
    ccf
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld l, h
    ld b, d
    ld h, d
    ld d, b
    ld d, c
    ld c, h
    ld c, a
    ld b, d
    ld b, c
    ld e, a
    ld a, [$eff7]
    xor $45
    ld b, d
    ld c, a
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc a
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld b, [hl]
    ld c, d
    ld c, l
    ld c, h
    ld c, a
    ld d, c
    ld a, $4b
    ld d, c
    rst $28
    xor $46
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld d, b
    ld a, $43
    ld b, d
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, d
    ld d, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
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
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld h, h
    rst $28
    xor $ff
    ldh a, [$ea]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld e, [hl]
    ld h, d
    ld d, h
    ld b, d
    ld c, c
    ld c, c
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld h, d
    ld b, l
    ld b, d
    ld a, $4f
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $3e
    ld h, d
    ld d, h
    ld b, d
    ld b, c
    ld b, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, l
    ld c, c
    ld a, $40
    ld b, d
    ld a, [$eff7]
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld a, $4a
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
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    jr nc, @+$40

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    scf
    ld a, $4a
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $48
    ld c, e
    ld c, h
    ld d, h
    ld d, b
    ld e, a
    rst $28
    xor $f7
    ldh a, [$f6]
    ld h, d
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld b, d
    ld b, c
    ld h, d
    ld a, $51
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
    add hl, hl
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $f3
    and e
    jr nc, jr_01a_69e3

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld a, $4f
    ld b, d
    rst $28
    xor $40
    ld a, $51
    ld b, d
    ld b, h
    ld c, h
    ld c, a
    ld b, [hl]
    ld d, a
    ld b, d
    ld b, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $09
    ld h, d
    ld d, c
    ld d, [hl]
    ld c, l
    ld b, d
    ld d, b
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $a3
    scf
    ld b, l
    ld b, d
    ld d, b
    ld b, d
    ld h, d
    add hl, bc
    ld h, d
    ld d, c
    ld d, [hl]
    ld c, l
    ld b, d
    ld d, b
    rst $28
    xor $3e
    ld c, a
    ld b, d
    ld h, d
    ld b, b
    ld a, $49
    ld c, c
    ld b, d
    ld b, c
    ld h, d
    ld a, $fa
    rst $30

jr_01a_69e3:
    rst $28
    xor $43
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld e, a
    rst $28
    xor $f7
    ldh a, [$f6]
    ld h, d
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld b, d
    ld b, c
    ld h, d
    ld a, $51
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
    xor $37
    ld b, l
    ld b, d
    ld h, d
    add hl, bc
    ld h, d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    rst $28
    xor $4c
    ld b, e
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld a, $4f
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld d, b
    ld h, d
    ld b, e
    ld c, h
    ld c, c
    ld c, c
    ld c, h
    ld d, h
    ld d, b
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $a3
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    rst $28
    xor $25
    ld b, d
    ld a, $50
    ld d, c
    ld d, b
    ld a, [$eff7]
    xor $a3
    dec h
    ld d, d
    ld b, h
    ld d, b
    rst $28
    xor $33
    ld c, c
    ld a, $4b
    ld d, c
    ld d, b
    ld a, [$eff7]
    xor $a3
    jr nc, jr_01a_6aaa

    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld a, $49
    ld d, b
    rst $28
    xor $3d
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $a3
    dec h
    ld b, [hl]
    ld c, a
    ld b, c
    ld d, b
    rst $28
    xor $27
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld d, b
    ld a, [$eff7]
    xor $a3
    daa
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld d, b
    rst $28
    xor $3e
    ld c, e
    ld b, c
    ld h, d
    ld h, h
    ld h, h
    ld h, h
    rst $30
    ldh a, [$f6]
    ld h, d
    ld c, c
    ld c, h
    ld c, h

jr_01a_6aaa:
    ld c, b
    ld b, d
    ld b, c
    ld h, d
    ld a, $51
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
    ld [hl], $42
    ld c, h
    ld c, e
    ld h, d
    inc sp
    ld c, a
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    ld b, b
    ld d, [hl]
    rst $28
    xor $26
    ld b, l
    ld a, $4d
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld bc, $f7fa
    rst $28
    xor $a3
    ld a, [hl-]
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld c, d
    ld b, d
    ld d, c
    ld a, $49
    ld d, b
    ld h, d
    ld a, $4f
    ld b, d
    rst $28
    xor $4a
    ld b, d
    ld c, c
    ld b, c
    ld b, d
    ld b, c
    ld h, d
    or [hl]
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld b, h
    ld b, d
    ld b, c
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $37
    ld b, l
    ld b, d
    ld d, [hl]
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    rst $28
    xor $45
    ld a, $4f
    ld b, c
    ld b, d
    ld c, a
    ld e, a
    rst $30
    ldh a, [$f6]
    ld h, d
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld b, d
    ld b, c
    ld h, d
    ld a, $51
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
    ld [hl], $42
    ld c, h
    ld c, e
    ld h, d
    inc sp
    ld c, a
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    ld b, b
    ld d, [hl]
    rst $28
    xor $26
    ld b, l
    ld a, $4d
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld [bc], a
    ld a, [$eff7]
    xor $a3
    scf
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld d, b
    ld d, c
    ld h, d
    ccf
    ld c, c
    ld c, h
    ld c, h
    ld b, c
    rst $28
    xor $3f
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
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
    ccf
    ld b, d
    ld a, $50
    ld d, c
    ld d, b
    ld e, a
    rst $28
    xor $f7
    ldh a, [$f6]
    ld h, d
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld b, d
    ld b, c
    ld h, d
    ld a, $51
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
    ld [hl], $42
    ld c, h
    ld c, e
    ld h, d
    inc sp
    ld c, a
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    ld b, b
    ld d, [hl]
    rst $28
    xor $26
    ld b, l
    ld a, $4d
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    inc bc
    ld a, [$eff7]
    xor $a3
    scf
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $ef
    xor $41
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, d
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld b, c
    ld b, c
    ld b, d
    ld c, e
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $3f
    ld c, c
    ld c, h
    ld c, h
    ld b, c
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld a, $62
    ld b, c
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld e, a
    rst $30
    ldh a, [$f6]
    ld h, d
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld b, d
    ld b, c
    ld h, d
    ld a, $51
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
    ld [hl], $42
    ld c, h
    ld c, e
    ld h, d
    inc sp
    ld c, a
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    ld b, b
    ld d, [hl]
    rst $28
    xor $26
    ld b, l
    ld a, $4d
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    inc b
    ld a, [$eff7]
    xor $a3
    dec h
    ld b, d
    ld a, $52
    ld d, c
    ld b, [hl]
    ld b, e
    ld d, d
    ld c, c
    ld h, d
    ld b, l
    ld d, [hl]
    ccf
    ld c, a
    ld b, [hl]
    ld b, c
    rst $28
    xor $4f
    ld c, h
    ld d, b
    ld b, d
    ld d, b
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld c, h
    ld c, a
    ld c, e
    ld d, b
    ld e, a
    rst $30
    ldh a, [$f6]
    ld h, d
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld b, d
    ld b, c
    ld h, d
    ld a, $51
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
    ld [hl], $42
    ld c, h
    ld c, e
    ld h, d
    inc sp
    ld c, a
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    ld b, b
    ld d, [hl]
    rst $28
    xor $26
    ld b, l
    ld a, $4d
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    dec b
    ld a, [$eff7]
    xor $a3
    scf
    ld b, l
    ld b, d
    ld h, d
    ld b, e
    ld c, c
    ld a, $4a
    ld b, d
    ld h, d
    ld c, d
    ld b, d
    ld c, c
    ld d, c
    ld d, b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld b, [hl]
    ld b, b
    ld b, d
    ld h, d
    or [hl]
    ld h, d
    ld a, $62
    ld b, h
    ld b, [hl]
    ld a, $4b
    ld d, c
    ld a, [$eff7]
    xor $4f
    ld a, $46
    ld c, e
    ccf
    ld c, h
    ld d, h
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    rst $28
    xor $3e
    ld c, l
    ld c, l
    ld b, d
    ld a, $4f
    ld e, a
    rst $30
    ldh a, [$f6]
    ld h, d
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld b, d
    ld b, c
    ld h, d
    ld a, $51
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
    ld [hl], $42
    ld c, h
    ld c, e
    ld h, d
    inc sp
    ld c, a
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    ld b, b
    ld d, [hl]
    rst $28
    xor $26
    ld b, l
    ld a, $4d
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld b, $fa
    rst $30
    rst $28
    xor $a3
    ld a, [hl-]
    ld b, [hl]
    ld c, c
    ld b, c
    ld h, d
    ld d, b
    ld c, l
    ld b, [hl]
    ld c, a
    ld b, [hl]
    ld d, c
    ld d, b
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
    ccf
    ld b, [hl]
    ld c, a
    ld d, c
    ld b, l
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld a, $fa
    rst $30
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
    ld e, a
    rst $28
    xor $f7
    ldh a, [$f6]
    ld h, d
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld b, d
    ld b, c
    ld h, d
    ld a, $51
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
    ld [hl], $42
    ld c, h
    ld c, e
    ld h, d
    inc sp
    ld c, a
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    ld b, b
    ld d, [hl]
    rst $28
    xor $26
    ld b, l
    ld a, $4d
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    rlca
    ld a, [$eff7]
    xor $a3
    inc l
    ld c, e
    ld d, b
    ld b, d
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld b, h
    ld a, $51
    ld b, l
    ld b, d
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $3e
    ld c, a
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, e
    ld c, c
    ld a, $4a
    ld b, d
    ld a, [$eff7]
    xor $4c
    ld b, e
    ld h, d
    ld c, c
    ld b, [hl]
    ld b, e
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    rst $28
    xor $46
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld d, b
    ld b, [hl]
    ld b, e
    ld d, [hl]
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld a, [$eff7]
    xor $3f
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld c, e
    ld b, d
    ld d, b
    ld d, b
    ld e, a
    rst $28
    xor $f7
    ldh a, [$f6]
    ld h, d
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld b, d
    ld b, c
    ld h, d
    ld a, $51
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
    ld [hl], $42
    ld c, h
    ld c, e
    ld h, d
    inc sp
    ld c, a
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    ld b, b
    ld d, [hl]
    rst $28
    xor $26
    ld b, l
    ld a, $4d
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld [$f7fa], sp
    rst $28
    xor $a3
    ld [hl-], a
    ld c, e
    ld b, d
    ld l, b
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld b, b
    ld b, [hl]
    ld a, $49
    rst $28
    xor $50
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld h, d
    ld b, d
    ld d, e
    ld c, h
    ld c, c
    ld d, e
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, c
    ld c, a
    ld a, $46
    ld c, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    rst $28
    xor $f7
    ldh a, [$f6]
    ld h, d
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld b, d
    ld b, c
    ld h, d
    ld a, $51
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
    ld [hl], $42
    ld c, h
    ld c, e
    ld h, d
    inc sp
    ld c, a
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    ld b, b
    ld d, [hl]
    rst $28
    xor $26
    ld b, l
    ld a, $4d
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    add hl, bc
    ld a, [$eff7]
    xor $a3
    scf
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld h, d
    ld d, c
    ld c, h
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
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld a, [$eff7]
    xor $4c
    ld c, l
    ld b, d
    ld c, e
    ld h, d
    ld d, h
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $51
    ld c, a
    ld d, d
    ld b, d
    ld h, d
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $4f
    ld b, d
    ld d, e
    ld b, d
    ld a, $49
    ld b, d
    ld b, c
    ld e, a
    rst $28
    xor $f7
    ldh a, [$f6]
    ld h, d
    ld c, a
    ld b, d
    ld a, $41
    ld h, d
    ld a, $ef
    xor $4d
    ld c, h
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld e, a
    ld a, [$eff7]
    xor $a3
    ld l, $4b
    ld c, h
    ld d, h
    ld c, c
    ld b, d
    ld b, c
    ld b, h
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $48
    ld b, d
    ld d, [hl]
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld d, d
    ld b, b
    ld b, b
    ld b, d
    ld d, b
    ld d, b
    ld h, e
    ld a, [$eff7]
    xor $25
    ld c, h
    ld c, h
    ld c, b
    ld d, b
    ld h, d
    ld a, $4f
    ld b, d
    rst $28
    xor $48
    ld c, e
    ld c, h
    ld d, h
    ld c, c
    ld b, d
    ld b, c
    ld b, h
    ld b, d
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
    ld e, a
    ld h, d
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld a, $4f
    ld b, d
    rst $28
    xor $46
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, c
    ld b, [hl]
    ccf
    ld c, a
    ld a, $4f
    ld d, [hl]
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    add hl, sp
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld d, c
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld d, h
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $56
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
    ld c, c
    ld b, d
    ld a, $4f
    ld c, e
    ld a, [$eff7]
    xor $3e
    ccf
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
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
    ld h, d
    ld d, c
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $3e
    ccf
    ld c, h
    ld d, d
    ld d, c
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
    ld d, b
    ld a, [$eff7]
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $52
    ld b, h
    ld b, l
    ld d, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, [hl-]
    ld b, l
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld c, h
    ld b, e
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
    ld b, c
    ld c, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld a, [$eff7]
    xor $54
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    rst $28
    xor $51
    ld c, h
    ld b, c
    ld a, $56
    ld h, h
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld e, [hl]
    rst $28
    xor $46
    ld c, d
    ld c, l
    ld c, h
    ld c, a
    ld d, c
    ld a, $4b
    ld d, c
    ld h, d
    ccf
    ld c, h
    ld c, h
    ld c, b
    ld d, b
    ld a, [$eff7]
    xor $3e
    ld c, a
    ld b, d
    ld h, d
    ld c, b
    ld b, d
    ld c, l
    ld d, c
    ld e, a
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
    ld c, c
    ld b, d
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $46
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    ld h, d
    ld bc, $0000
    ld a, [$eff7]
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld a, $50
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    rst $28
    xor $4d
    ld a, $49
    ld d, b
    ld e, a
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
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $46
    ld d, c
    ld b, d
    ld c, d
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld c, l
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    dec l
    ld c, h
    ld d, d
    ld c, a
    ld c, e
    ld b, d
    ld d, [hl]
    ld d, b
    ld h, d
    ld a, $49
    ld d, h
    ld a, $56
    ld d, b
    rst $28
    xor $45
    ld a, $53
    ld b, d
    ld h, d
    ld c, a
    ld b, [hl]
    ld d, b
    ld c, b
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, e
    ld b, d
    ld b, b
    ld b, d
    ld d, b
    ld d, b
    ld a, $4f
    ld d, [hl]
    ld a, [$eff7]
    xor $46
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, d
    ccf
    ld b, d
    ld b, e
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $44
    ld c, h
    ld h, d
    ld c, h
    ld c, e
    ld h, d
    ld a, $62
    ld b, a
    ld c, h
    ld d, d
    ld c, a
    ld c, e
    ld b, d
    ld d, [hl]
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    dec hl
    ld c, h
    ld d, h
    ld h, d
    ld c, d
    ld a, $56
    ld h, d
    inc l
    ld h, d
    ld b, l
    ld b, d
    ld c, c
    ld c, l
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld d, c
    ld c, h
    ld b, c
    ld a, $56
    ld h, h
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    ld a, $4b
    ld h, d
    ld b, d
    ld d, l
    ld c, l
    ld b, d
    ld c, a
    ld d, c
    rst $28
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld c, a
    ld b, d
    ld d, b
    ld b, d

jr_01a_7153:
    ld a, $4f
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, c
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, $62
    ld d, c
    ld c, h
    ld c, l
    sbc h
    ld b, b
    ld c, c
    ld a, $50
    ld d, b
    rst $28
    xor $4a
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld a, $50
    ld h, d
    ld d, h
    ld b, d
    ld c, c
    ld c, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    ccf
    ld d, d
    ld d, b
    ld d, [hl]
    ld e, a
    ld h, d
    daa
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
    ld e, a
    rst $30
    ldh a, [$3f]
    sbc b
    db $d3
    adc h
    or h
    or e
    inc a
    ld l, [hl]
    adc h
    db $d3
    ld b, d
    dec d
    sbc b
    db $d3
    sbc b
    db $d3
    sbc b
    db $d3
    adc h
    adc h
    db $d3
    ccf
    adc h
    dec a
    adc h
    inc a
    adc h

jr_01a_71c3:
    ld a, [hl-]
    adc h
    jr c, jr_01a_7153

    ld [hl], $98
    or e
    ld l, [hl]
    ld [hl], c
    or e
    ld a, d
    ld [hl], c
    or e
    add a
    ld [hl], c
    or e
    sub h
    ld [hl], c
    or e
    and b
    ld [hl], c
    or e
    inc a
    ld l, [hl]
    adc h
    db $d3
    ld b, d
    dec d
    sbc b
    db $d3
    sbc b
    db $d3
    ccf
    sbc b
    db $d3
    adc h
    push de
    inc [hl]
    ld [de], a
    add [hl]
    add hl, sp
    add [hl]
    dec a
    add [hl]
    ld b, b
    add [hl]
    ld b, l
    add [hl]
    ld b, b
    add [hl]
    dec a
    add [hl]
    add hl, sp
    add [hl]
    inc [hl]
    add [hl]
    add hl, sp
    add [hl]
    dec a
    add [hl]
    ld b, b
    add [hl]
    ld b, l
    add [hl]
    ld b, b
    add [hl]
    dec a
    add [hl]
    add hl, sp
    add [hl]
    ld [hl], $86
    dec sp
    add [hl]
    ccf
    add [hl]
    ld b, d
    add [hl]
    ld b, a
    add [hl]
    ld b, d
    add [hl]
    ccf
    add [hl]
    dec sp
    add [hl]
    ld [hl], $86
    dec sp
    add [hl]
    ccf
    add [hl]
    ld b, d
    add [hl]
    ld b, a
    add [hl]
    ld b, d
    add [hl]
    ccf
    add [hl]
    dec sp
    add [hl]
    jp $c414


    dec b
    push bc
    ld a, [bc]
    add $00
    rst $38
    ld d, l
    dec d
    or b
    db $d3
    ld e, c
    sbc b
    cp [hl]
    db $10
    push de
    jr c, jr_01a_71c3

    ld [hl], $86
    dec [hl]
    add [hl]
    inc sp
    add [hl]
    rst $20
    ld sp, $b198
    cp l
    nop
    cp [hl]
    ld d, d
    cp a
    ld d, b
    jp $c414


    dec b
    push bc
    ld a, [bc]
    add $00
    db $d3
    add hl, sp
    dec d
    add [hl]
    db $d3
    add [hl]
    db $d3
    dec sp
    add [hl]
    db $d3
    add [hl]
    db $d3
    inc a
    adc h
    dec sp
    sbc b
    inc a
    sbc b
    ld a, $8c
    inc a
    add [hl]
    db $d3
    add [hl]
    db $d3
    ld a, $86
    db $d3
    add [hl]
    db $d3
    ccf
    adc h
    ld a, $98
    ccf
    sbc b
    ld b, c
    adc h
    ld b, e
    or b
    or b
    cp [hl]
    inc d
    adc h
    db $d3
    ld c, b
    dec d
    adc h
    ld b, e
    adc h
    ld c, h
    adc h
    ld c, b
    adc h
    ld c, a
    adc h
    ld c, l
    adc h
    ld c, h
    adc h
    or h
    rst $28
    ld c, d
    dec d
    and h
    db $d3
    adc h
    push de
    ld c, h
    add [hl]
    ld c, l
    add [hl]
    ld c, h
    add [hl]
    ld c, d
    add [hl]
    or h
    rst $28
    ld c, b
    dec d
    and h
    db $d3
    adc h
    db $d3
    ld c, h
    adc h
    ld d, c
    adc h
    or h
    rst $28
    ld c, a
    dec d
    and h
    db $d3
    adc h
    db $d3
    adc h
    db $d3
    ld d, b
    adc h
    or h
    adc h
    db $d3
    ld d, c
    dec d
    adc h
    ld d, e
    adc h
    ld d, h
    adc h
    ld d, [hl]
    adc h
    ld d, h
    adc h
    ld d, e
    adc h
    ld d, c
    adc h
    or h
    adc h
    db $d3
    ld c, a
    dec d
    adc h
    ld d, c
    adc h
    ld d, e
    adc h
    ld d, h
    adc h
    ld d, e
    adc h
    ld d, c
    adc h
    ld c, a
    adc h
    or h
    adc h
    db $d3
    ld c, l
    dec d
    adc h
    ld c, a
    adc h
    ld d, c
    adc h
    ld d, h
    adc h
    db $d3
    adc h
    db $d3
    ld d, d
    adc h
    ld d, b
    adc h
    or h
    rst $38
    ld c, a
    or b
    adc h
    db $d3
    ld c, b
    dec d
    adc h
    ld b, e
    adc h
    ld c, h
    adc h
    ld c, b
    adc h
    ld c, a
    adc h
    ld c, l
    adc h
    ld c, h
    adc h
    or h
    or e
    sub d
    ld [hl], d
    rst $28
    ld c, b
    dec d
    and h
    push de
    ld b, a
    add [hl]
    ld c, b
    add [hl]
    db $d3
    ld c, h
    adc h
    ld d, c
    adc h
    or h
    or e
    xor [hl]
    ld [hl], d
    or e
    cp d
    ld [hl], d
    db $d3
    ld c, a
    dec d
    adc h
    ld d, e
    adc h
    ld d, [hl]
    adc h
    ld e, b
    adc h
    rst $28
    ld d, h
    and b
    or h
    adc h
    db $d3
    ld d, h
    dec d
    adc h
    ld d, [hl]
    adc h
    ld e, b
    adc h
    db $db
    ld e, c
    adc h
    db $d3
    ld e, b
    adc h
    ld d, h
    adc h
    ld d, c
    adc h
    or h
    rst $38
    ld d, h
    or b
    cp [hl]
    ld a, [de]
    sbc b
    rst $20
    ld b, l
    dec d
    sbc b
    ld b, a
    sbc b
    ld c, b
    sbc b
    or h
    db $eb
    ld c, d
    dec d
    sbc h
    push de
    ld c, c
    add [hl]
    ld c, b
    add [hl]
    rst $28
    ld b, a
    and b
    or h
    adc h
    db $db
    ld b, l
    dec d
    adc h
    ld b, a
    adc h
    ld c, b
    adc h
    pop hl
    ld b, a
    sub d
    ld c, b
    sub d
    db $db
    ld c, d
    adc h
    or h
    db $eb
    ld c, h
    dec d
    sbc h
    db $db
    ld c, l
    adc h
    rst $28
    ld c, a
    and b
    or h
    sbc b
    rst $20
    ld c, l
    dec d
    sbc b
    ld c, a
    sbc b
    ld d, c
    sbc b
    or h
    db $eb
    ld d, e
    dec d
    sbc h
    push de
    ld d, c
    add [hl]
    ld d, b
    add [hl]
    rst $28
    ld c, a
    and b
    or h
    adc h
    db $d3
    ld d, c
    dec d
    adc h
    ld d, e
    adc h
    ld d, h
    sbc b
    ld d, e
    adc h
    ld d, h
    adc h
    ld d, [hl]
    adc h
    or h
    adc h
    db $d3
    ld d, h
    dec d
    adc h
    ld d, [hl]
    adc h
    ld e, b
    sbc b
    ld d, [hl]
    adc h
    ld e, b
    adc h
    ld e, c
    adc h
    or h
    jp hl


    ld e, e
    dec d
    sbc d
    push de
    ld e, c
    add [hl]
    ld d, a
    add [hl]
    ld e, c
    add [hl]
    rst $28
    ld e, e
    and b
    or h
    or e
    ld a, [hl]
    ld [hl], d
    or e
    sub d
    ld [hl], d
    or e
    and d
    ld [hl], d
    or e
    xor [hl]
    ld [hl], d
    or e
    cp d
    ld [hl], d
    or e
    call z, $b372
    sbc $72
    rst $38
    ld c, a
    dec d
    or b
    or e
    db $f4
    ld [hl], d
    or e
    sub d
    ld [hl], d
    or e
    add hl, bc
    ld [hl], e
    or e
    xor [hl]
    ld [hl], d
    or e
    cp d
    ld [hl], d
    or e
    ld e, $73
    or e
    inc l
    ld [hl], e
    rst $38
    ld d, h
    dec d
    or b
    or e
    ld b, e
    ld [hl], e
    or e
    ld c, a
    ld [hl], e
    or e
    ld e, h
    ld [hl], e
    or e
    ld l, [hl]
    ld [hl], e
    or e
    ld a, c
    ld [hl], e
    or e
    add e
    ld [hl], e
    or e
    sub b
    ld [hl], e
    or e
    and b
    ld [hl], e
    or e
    or b
    ld [hl], e
    or e
    ld a, [hl]
    ld [hl], d
    or e
    sub d
    ld [hl], d
    or e
    and d
    ld [hl], d
    or e
    xor [hl]
    ld [hl], d
    or e
    cp d
    ld [hl], d
    or e
    call z, $b372
    sbc $72
    rst $38
    ld c, a
    dec d
    or b
    or e
    db $f4
    ld [hl], d
    or e
    sub d
    ld [hl], d
    or e
    add hl, bc
    ld [hl], e
    or e
    xor [hl]
    ld [hl], d
    or e
    cp d
    ld [hl], d
    or e
    ld e, $73
    or e
    inc l
    ld [hl], e
    rst $38
    ld d, h
    dec d
    or b
    or e
    ld b, e
    ld [hl], e
    or e
    ld c, a
    ld [hl], e
    or e
    ld e, h
    ld [hl], e
    or e
    ld l, [hl]
    ld [hl], e
    or e
    ld a, c
    ld [hl], e
    or e
    add e
    ld [hl], e
    or e
    sub b
    ld [hl], e
    or e
    and b
    ld [hl], e
    or e
    or b
    ld [hl], e
    cp [hl]
    rla
    adc h
    db $d3
    ld b, a
    dec d
    adc h
    ld b, e
    adc h
    ld c, h
    adc h
    ld b, a
    adc h
    ld c, a
    adc h
    ld c, h
    adc h
    ld d, e
    adc h
    db $eb
    ld d, c
    sbc h
    db $db
    ld c, a
    adc h
    rst $28
    ld c, l
    and b
    adc h
    db $d3
    ld c, a
    adc h
    ld c, h
    adc h
    ld d, e
    adc h
    ld c, a
    adc h
    ld e, b
    adc h
    ld d, e
    adc h
    ld e, e
    adc h
    db $eb
    ld e, c
    sbc h
    db $db
    ld e, e
    adc h
    rst $28
    ld e, b
    and b
    db $db
    ld e, e
    adc h
    db $d3
    ld e, c
    adc h
    ld d, h
    adc h
    db $db
    ld d, c
    sbc b
    db $d3
    adc h
    db $d3
    ld d, b
    adc h
    ld d, c
    adc h
    db $db
    ld e, e
    adc h
    db $d3
    ld e, c
    adc h
    ld d, h
    adc h
    db $db
    ld d, b
    sbc b
    db $d3
    adc h
    db $d3
    ld d, d
    adc h
    ld d, b
    adc h
    db $eb
    ld c, a
    sbc h
    push de
    ld d, c
    add [hl]
    ld d, d
    add [hl]
    rst $28
    ld d, e
    and b
    db $db
    ld d, c
    adc h
    db $d3
    ld c, l
    adc h
    ld e, b
    adc h
    di
    ld d, [hl]
    and h
    or e
    ld a, [hl]
    ld [hl], d
    or e
    sub d
    ld [hl], d
    or e
    add hl, bc
    ld [hl], e
    or e
    xor [hl]
    ld [hl], d
    or e
    cp d
    ld [hl], d
    or e
    ld e, $73
    or e
    inc l
    ld [hl], e
    rst $38
    ld d, h
    dec d
    or b
    or e
    ld b, e
    ld [hl], e
    or e
    ld c, a
    ld [hl], e
    or e
    ld e, h
    ld [hl], e
    or e
    ld l, [hl]
    ld [hl], e
    or e
    ld a, c
    ld [hl], e
    or e
    add e
    ld [hl], e
    or e
    sub b
    ld [hl], e
    or e
    and b
    ld [hl], e
    or e
    or b
    ld [hl], e
    or e
    ld a, [hl]
    ld [hl], d
    or e
    sub d
    ld [hl], d
    or e
    and d
    ld [hl], d
    or e
    xor [hl]
    ld [hl], d
    or e
    cp d
    ld [hl], d
    or e
    call z, $b372
    sbc $72
    rst $38
    ld c, a
    dec d
    or b
    or e
    db $f4
    ld [hl], d
    or e
    sub d
    ld [hl], d
    or e
    add hl, bc
    ld [hl], e
    or e
    xor [hl]
    ld [hl], d
    or e
    cp d
    ld [hl], d
    or e
    ld e, $73
    or e
    inc l
    ld [hl], e
    rst $38
    ld d, h
    dec d
    or b
    cp [hl]
    ld d, d
    db $d3
    add hl, sp
    add [hl]
    db $d3
    add [hl]
    db $d3
    dec sp
    add [hl]
    db $d3
    add [hl]
    db $d3
    inc a
    adc h
    dec sp
    sbc b
    inc a
    sbc b
    ld a, $8c
    ld b, l
    add [hl]
    db $d3
    add [hl]
    db $d3
    ld b, a
    add [hl]
    db $d3
    add [hl]
    db $d3
    ld c, b
    adc h
    ld b, a
    sbc b
    ld c, b
    sbc b
    ld c, d
    adc h
    ld a, [hl-]
    add [hl]
    db $d3
    add [hl]
    db $d3
    inc a
    add [hl]
    db $d3
    add [hl]
    db $d3
    dec a
    adc h
    inc a
    sbc b
    dec a
    sbc b
    ccf
    adc h
    ld b, [hl]
    add [hl]
    db $d3
    add [hl]
    db $d3
    ld c, b
    add [hl]
    db $d3
    add [hl]
    db $d3
    ld c, c
    adc h
    ld c, b
    sbc b
    ld c, c
    sbc b
    ld c, e
    adc h
    cp [hl]
    ld a, [de]
    adc h
    db $d3
    ld c, c
    adc h
    ld b, h
    adc h
    ld c, l
    adc h
    ld c, c
    adc h
    ld d, b
    adc h
    ld c, [hl]
    adc h
    ld c, l
    adc h
    rst $28
    ld c, e
    dec d
    and h
    db $d3
    adc h
    push de
    ld c, l
    add [hl]
    ld c, [hl]
    add [hl]
    ld c, l
    add [hl]
    ld c, e
    add [hl]
    or h
    rst $28
    ld c, c
    and h
    db $d3
    adc h
    db $d3
    ld c, l
    adc h
    ld d, d
    adc h
    rst $28
    ld d, b
    and h
    db $d3
    adc h
    db $d3
    adc h
    db $d3
    ld d, c
    adc h
    adc h
    ld d, d
    adc h
    ld d, h
    adc h
    ld d, l
    adc h
    ld d, a
    adc h
    ld d, l
    adc h
    ld d, h
    adc h
    ld d, d
    adc h
    adc h
    ld d, b
    adc h
    ld d, d
    adc h
    ld d, h
    adc h
    ld d, l
    adc h
    ld d, h
    adc h
    ld d, d
    adc h
    ld d, b
    adc h
    adc h
    ld c, [hl]
    adc h
    ld d, b
    adc h
    ld d, d
    adc h
    ld d, l
    adc h
    db $d3
    adc h
    db $d3
    ld d, e
    adc h
    ld d, c
    adc h
    rst $38
    ld d, b
    or b
    adc h
    db $d3
    ld c, c
    adc h
    ld b, h
    adc h
    ld c, l
    adc h
    ld c, c
    adc h
    ld d, b
    adc h
    push de
    ld c, [hl]
    add [hl]
    ld d, b
    add [hl]
    ld c, [hl]
    add [hl]
    ld c, l
    add [hl]
    or e
    adc e
    ld [hl], l
    rst $28
    ld c, c
    dec d
    and h
    push de
    ld c, b
    add [hl]
    ld c, c
    add [hl]
    db $d3
    ld c, l
    adc h
    ld d, d
    adc h
    push de
    ld d, h
    add [hl]
    ld d, d
    add [hl]
    db $eb
    ld d, b
    and b
    db $d3
    adc h
    push de
    add [hl]
    push de
    ld c, a
    add [hl]
    ld d, b
    add [hl]
    ld d, c
    add [hl]
    adc h
    db $d3
    ld d, d
    adc h
    ld d, h
    add [hl]
    push de
    ld d, e
    add [hl]
    ld d, h
    add [hl]
    ld d, l
    add [hl]
    db $d3
    ld d, a
    adc h
    ld d, l
    add h
    ld d, a
    add h
    ld d, l
    add h
    ld d, h
    adc h
    ld d, d
    adc h
    ld d, b
    adc h
    ld d, h
    adc h
    ld d, a
    add [hl]
    push de
    ld d, [hl]
    add [hl]
    ld d, a
    add [hl]
    ld e, c
    add [hl]
    rst $28
    ld d, l
    and b
    adc h
    push de
    add [hl]
    push de
    ld d, h

jr_01a_7648:
    add [hl]
    ld d, l
    adc h
    ld d, a
    add [hl]
    ld e, c
    add [hl]
    db $db
    ld e, d
    adc h
    db $d3
    ld e, c
    add h
    ld e, d
    add h
    ld e, c
    add h
    ld d, l
    adc h
    ld d, d
    adc h
    rst $28
    ld d, l
    and h
    db $d3
    adc h
    db $d3
    ld d, a
    adc h
    ld e, b
    adc h
    rst $28
    ld d, a
    and h
    db $d3
    adc h
    db $d3
    ld e, b
    adc h
    ld e, d
    adc h
    rst $38
    ld e, c
    or b
    db $d3
    ld h, c
    sbc b
    push de
    ld b, h
    add [hl]
    ld b, d
    add [hl]
    ld b, c
    add [hl]
    ccf
    add [hl]
    rst $20
    dec a
    sbc b
    or c
    cp l
    nop
    cp [hl]
    jr z, jr_01a_7648

    ld b, d
    db $d3
    ld h, $13
    adc h
    db $d3
    adc h
    db $d3
    daa
    adc h
    ld h, $98
    db $d3
    sbc b
    db $d3
    daa
    adc h
    or h
    db $d3
    ld h, $13
    adc h
    db $d3
    adc h
    db $d3
    daa
    adc h
    ld h, $98
    db $d3
    sbc b
    db $d3
    daa
    adc h
    or h
    db $d3
    ld h, $13
    adc h
    daa
    adc h
    ld h, $8c
    daa
    adc h
    ld h, $8c
    daa
    adc h
    ld h, $8c
    daa
    add [hl]
    db $d3
    add [hl]
    or h
    or e
    xor h
    db $76
    db $d3
    ld h, $13
    adc h
    daa
    adc h
    ld h, $8c
    daa
    adc h
    ld h, $8c
    daa
    adc h
    ld h, $8c
    daa
    adc h
    or h
    or e
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    db $d3
    daa
    inc de
    add [hl]
    db $d3
    add [hl]
    push de
    dec h
    ld d, $86
    db $d3
    daa
    inc de
    add [hl]
    db $d3
    add [hl]
    db $d3
    add [hl]
    push de
    dec h
    ld d, $86
    db $d3
    daa
    inc de
    add [hl]
    db $d3
    add [hl]
    db $d3
    add [hl]
    push de
    dec h
    ld d, $86
    db $d3
    daa
    inc de
    add [hl]
    db $d3
    add [hl]
    db $d3
    add [hl]
    push de
    dec h
    ld d, $86
    db $d3
    daa
    inc de
    add [hl]
    or h
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    db $d3
    daa
    inc de
    add [hl]
    db $d3
    add [hl]
    push de
    dec h
    ld d, $86
    db $d3
    daa
    inc de
    add [hl]
    db $d3
    add [hl]
    db $d3
    add [hl]
    push de
    dec h
    ld d, $86
    db $d3
    daa
    inc de
    add [hl]
    db $d3
    add [hl]
    db $d3
    add [hl]
    push de
    dec h
    ld d, $86
    db $d3
    daa
    inc de
    add [hl]
    db $d3
    add [hl]
    db $d3
    add [hl]
    db $d3
    add [hl]
    db $d3
    add [hl]
    or h
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    ld c, h
    ld [hl], a
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    ld c, h
    ld [hl], a
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    xor b
    db $d3
    daa
    inc de
    add [hl]
    db $d3
    add [hl]
    db $d3
    add [hl]
    db $d3
    add [hl]
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    ld c, h
    ld [hl], a
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    add [hl]
    db $76
    or e
    add [hl]
    db $76
    or e
    add [hl]
    db $76
    or e
    sbc e
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    xor h
    db $76
    or e
    call nz, $b376
    inc b
    ld [hl], a
    or e
    inc b
    ld [hl], a
    or e
    xor h
    db $76
    db $d3
    ld h, $13
    add h
    or c
    inc b
    nop
    and c
    ld l, c
    cp b
    ld l, l
    ld b, a
    ld [hl], d
    add h
    db $76
    cp l
    nop
    cp h
    jr z, @-$40

    inc e
    cp a
    ld b, d
    jp nc, Jump_000_1154

    sbc b
    ld c, a
    sbc b
    ld c, h
    sbc b
    ld c, b
    sbc b
    jp nc, Jump_000_1145

    adc h
    ld b, a
    adc h
    ld c, b
    adc h
    ld c, l
    adc h
    ld d, c
    and b
    or h
    jp nc, Jump_000_1154

    sbc b
    ld c, a
    sbc b
    ld c, h
    sbc b
    ld c, b
    sbc b
    or h
    or e
    jp hl


    ld a, b
    or e
    or $78
    or e
    jp hl


    ld a, b
    jp nc, $1158

    sbc b
    ld d, h
    sbc b
    jp nc, $d298

    ld c, a
    sbc b
    or h
    jp nc, Jump_000_1154

    adc h
    jp nc, $d298

    ld d, e
    and h
    or h
    or e
    or $78
    or e
    jp hl


    ld a, b
    or e
    or $78
    or e
    jp hl


    ld a, b
    or e
    or $78
    or e
    jp hl


    ld a, b
    or e
    ld a, [bc]
    ld a, c
    or e
    ld d, $79
    jp nc, Jump_000_1154

    sbc b
    ld c, a
    sbc b
    jp nc, $d298

    ld d, h
    sbc b
    ld d, d
    adc h
    ld c, l
    adc h
    jp nc, $d28c

    ld d, d
    adc h
    jp nc, $d2a0

    ld d, b
    sbc b
    ld c, e
    sbc b
    jp nc, $d298

    ld d, b
    sbc b
    ld c, a
    adc h
    ld c, d
    adc h
    jp nc, $d28c

    ld c, a
    adc h
    jp nc, $d2a0

    ld c, l
    adc h
    jp nc, $d28c

    adc h
    jp nc, $d2a4

    ld c, [hl]
    adc h
    jp nc, $d28c

    adc h
    jp nc, $d2a4

    ld c, a
    sbc b
    ld e, e
    sbc b
    jp nc, $d298

    ld c, a
    sbc b
    jp nc, $d298

    ld e, e
    sbc b
    jp nc, $b2a0

    reti


    ld a, b
    or c
    cp l
    nop
    cp [hl]
    ld [de], a
    cp a
    ld b, d
    jp nc, $114c

    sbc b
    jp nc, $d298

    ld c, b
    sbc b
    ld b, e
    sbc b
    jp nc, Jump_000_1141

    adc h
    ld b, e
    adc h
    ld b, l
    adc h
    jp nc, $d28c

    ld c, b
    and b
    or h
    jp nc, $114c

    sbc b
    jp nc, $d298

    ld c, b
    sbc b
    ld b, e
    sbc b
    or h
    or e
    sbc e
    ld a, c
    or e
    xor c
    ld a, c
    or e
    sbc e
    ld a, c
    jp nc, $114f

    sbc b
    ld c, h
    sbc b
    jp nc, $d298

    sbc b
    or h
    jp nc, Jump_000_114d

    adc h
    jp nc, $d298

    and h
    or h
    or e
    xor c
    ld a, c
    or e
    sbc e
    ld a, c
    or e
    xor c
    ld a, c
    or e
    sbc e
    ld a, c
    or e
    xor c
    ld a, c
    or e
    sbc e
    ld a, c
    or e
    cp [hl]
    ld a, c
    or e
    ret


    ld a, c
    jp nc, $114f

    sbc b
    ld c, b
    sbc b
    jp nc, $d298

    ld c, a
    sbc b
    ld c, l
    adc h
    ld b, [hl]
    adc h
    jp nc, $d28c

    ld c, l
    adc h
    jp nc, $d2a0

    ld c, e
    sbc b
    ld b, h
    sbc b
    jp nc, $d298

    ld c, e
    sbc b
    ld c, d
    adc h
    ld b, e
    adc h
    jp nc, $d28c

    ld c, d
    adc h
    jp nc, $d2a0

    ld c, b
    ld de, $d28c
    adc h
    jp nc, $d28c

    and h
    or h
    or e
    dec d
    ld a, d
    jp nc, $1148

    sbc b
    ld d, h
    sbc b
    jp nc, $d298

jr_01a_7a2c:
    ld c, b
    sbc b
    jp nc, $d298

    ld d, h
    sbc b
    ld d, e
    and b
    or d
    adc h
    ld a, c
    or c
    cp l
    nop
    cp [hl]
    dec h
    cp a
    ld e, [hl]
    jp nc, Jump_000_163c

    xor h
    jp nc, $d28c

    scf
    ld d, $ac
    jp nc, $b48c

    jp nc, Jump_000_163c

    xor h
    jp nc, $b48c

    or e
    ld b, l
    ld a, d
    or e
    ld c, h
    ld a, d
    or e
    ld b, l
    ld a, d
    or e
    ld c, h
    ld a, d
    jp nc, Jump_000_1637

    adc h
    jp nc, $d298

jr_01a_7a66:
    and d
    jp nc, $833a

    dec sp
    add e
    or e
    ld c, h
    ld a, d
    or e
    ld b, l
    ld a, d
    or e
    ld c, h
    ld a, d
    or e
    ld b, l
    ld a, d
    or e
    ld c, h
    ld a, d
    or e
    ld b, l
    ld a, d
    or e
    ld c, h

jr_01a_7a80:
    ld a, d
    jp nc, Jump_000_1637

    adc h
    jp nc, $d298

    and h
    jp nc, $9c38

    inc sp
    adc h
    jr c, jr_01a_7a2c

    jp nc, $d28c

    scf
    sbc h
    ld [hl-], a
    adc h
    scf
    sbc h
    jp nc, $d28c

    dec [hl]
    sbc h
    jp nc, $d28c

    ld a, [hl-]
    sbc h
    jp nc, $d28c

    inc sp
    sbc h
    jp nc, $d28c

    sbc h
    jp nc, $d28c

    ld [hl-], a
    adc h
    add hl, sp
    adc h
    inc a
    adc h
    ld b, c
    and b
    add hl, sp
    adc h
    ld [hl-], a
    adc h
    add hl, sp
    adc h
    inc a
    adc h
    ld b, d
    and b
    inc a
    adc h
    scf
    sbc h
    jp nc, $d28c

    jr c, jr_01a_7a66

    jp nc, $d28c

    ld a, [hl-]
    sbc h
    jp nc, $d28c

    dec sp
    sbc [hl]
    ld a, [hl-]
    add e
    dec sp
    add e
    or d
    dec sp
    ld a, d
    or c
    inc bc
    ld [bc], a
    rst $10
    ld a, b
    adc d
    ld a, c
    add hl, sp
    ld a, d
    reti


    ld a, b
    adc h
    ld a, c
    dec sp
    ld a, d
    adc c
    ld a, c
    jr c, jr_01a_7b68

    db $db
    ld a, d
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld c, a
    cp a
    ld [hl], c
    db $d3
    ld d, e
    jr jr_01a_7a80

    cp [hl]
    ld e, c
    db $d3
    ld d, h
    ld c, $84
    ld d, h
    add hl, bc
    add h
    or c
    ld bc, $f000
    ld a, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_7b68:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
