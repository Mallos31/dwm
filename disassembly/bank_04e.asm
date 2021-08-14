; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04e", ROMX[$4000], BANK[$4e]

    ld c, [hl]
    cp c
    ld b, b
    rst $20
    ld b, b
    dec d
    ld b, c
    add hl, bc
    ld b, b
    ld b, e
    ld b, c
    jp $8e41


    ld b, d
    rst $08
    ld b, d
    adc $43
    or [hl]
    ld b, h
    call c, $8644
    ld b, l
    ld hl, $5547
    ld b, a
    ld [hl], c
    ld b, a
    ld h, l
    ld c, b
    ld d, a
    ld c, c
    ld [hl], c
    ld c, d
    add h
    ld c, d
    pop bc
    ld c, d
    ld e, a
    ld c, h
    and l
    ld c, h
    cp $4d
    pop af
    ld c, [hl]
    dec [hl]
    ld d, b
    ld l, a
    ld d, b
    sbc [hl]
    ld d, c
    db $e3
    ld d, c
    add hl, de
    ld d, e
    ld d, a
    ld d, e
    ld [c], a
    ld d, e
    reti


    ld d, h
    inc d
    ld d, l
    sub [hl]
    ld d, [hl]
    call c, Call_000_2a56
    ld e, b
    ld [hl], e
    ld e, c
    inc c
    ld e, d
    rla
    ld e, e
    call nz, $865b
    ld e, h
    cp a
    ld e, h
    ld c, c
    ld e, [hl]
    adc l
    ld e, [hl]
    or e
    ld e, a
    pop af
    ld e, a
    ld a, [c]
    ld h, b
    ld a, [hl-]
    ld h, c
    or l
    ld h, d
    ld d, d
    ld h, e
    sub e
    ld h, h
    rlca
    ld h, [hl]
    ld h, d
    ld h, [hl]
    cp d
    ld h, a
    db $fd
    ld h, a
    adc c
    ld l, b
    cp [hl]
    ld l, b
    db $f4
    ld l, c
    ld a, [hl-]
    ld l, d
    ld c, e
    ld l, e
    add l
    ld l, e
    and l
    ld l, h
    db $e4
    ld l, h
    inc hl
    ld l, l
    ld h, d
    ld l, [hl]
    sub b
    ld l, [hl]
    dec d
    ld l, a
    call $336f
    ld [hl], b
    adc h
    ld [hl], b
    xor [hl]
    ld [hl], b
    ld a, [de]
    ld [hl], c
    ld a, e
    ld [hl], c
    sbc a
    ld [hl], c
    add hl, bc
    ld [hl], d
    ld [hl], b
    ld [hl], d
    sub e
    ld [hl], d
    di
    ld [hl], d
    ld c, h
    ld [hl], e
    ld l, a
    ld [hl], e
    ret c

    ld [hl], e
    ld b, l
    ld [hl], h
    ld l, a
    ld [hl], h
    call c, Call_000_2e74
    ld [hl], l
    ld e, c
    ld [hl], l
    ld [$b175], a
    db $76
    ld a, [bc]
    ld [hl], a
    ld h, h
    ld [hl], a
    ret z

    ld [hl], a
    xor b
    ld a, c

Call_04e_40b9:
    ld a, [$c822]
    cp $01
    jr nz, jr_04e_40ca

    ld a, $01
    ld [$c822], a
    ld hl, $4f00
    rst $10
    ret


jr_04e_40ca:
    ld a, [$c823]
    cp $58
    jr c, jr_04e_40e0

    sub $58
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $4f00
    rst $10
    ret


jr_04e_40e0:
    ld de, $4007
    call Call_000_05b6
    ret


    ld a, [$c822]
    cp $01
    jr nz, jr_04e_40f8

    ld a, $01
    ld [$c822], a
    ld hl, $4f01
    rst $10
    ret


jr_04e_40f8:
    ld a, [$c823]
    cp $58
    jr c, jr_04e_410e

    sub $58
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $4f01
    rst $10
    ret


jr_04e_410e:
    ld de, $4007
    call Call_000_05f6
    ret


    ld a, [$c822]
    cp $01
    jr nz, jr_04e_4126

    ld a, $01
    ld [$c822], a
    ld hl, $4f02
    rst $10
    ret


jr_04e_4126:
    ld a, [$c823]
    cp $58
    jr c, jr_04e_413c

    sub $58
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $4f02
    rst $10
    ret


jr_04e_413c:
    call Call_04e_40b9
    call Call_000_0609
    ret


    db $eb
    sbc a
    and e
    scf
    ld c, h
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld d, h
    ld h, d
    ld c, d
    ld d, [hl]
    rst $28
    xor $3e
    ld c, l
    ld c, l
    ld c, a
    ld b, d
    ld b, b
    ld b, [hl]
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld e, [hl]
    ld h, d
    inc l
    ld h, [hl]
    ld c, c
    ld a, [$eff7]
    xor $4c
    ld c, l
    ld b, d
    ld c, e
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
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld d, c
    ld h, [hl]
    ld c, c
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld c, a
    ld b, d
    ld a, $41
    ld d, [hl]
    rst $28
    xor $3e
    ld d, b
    ld h, d
    ld d, b
    ld c, h
    ld c, h
    ld c, e
    ld h, d
    ld a, $50
    ld h, d
    inc l
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $46
    ld d, c
    ld e, a
    ld h, d
    ld h, $4c
    ld c, d
    ld b, d
    ld h, d
    ccf
    ld a, $40
    ld c, b
    rst $28
    xor $49
    ld a, $51
    ld b, d
    ld c, a
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    dec hl
    ld b, [hl]
    ld e, a
    ld h, d
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
    rst $28
    xor $51
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
    inc a
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    ld h, d
    ld a, $62
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $4a
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld a, $4f
    ld b, d
    ld c, e
    ld h, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, h
    ld a, [$eff7]
    xor $27
    ld c, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, h
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    rst $28
    xor $51
    ld a, $4a
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
    ld c, h
    ld b, e
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld a, $ef
    xor $4d
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld b, e
    ld d, d
    ld c, c
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4a
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld b, [hl]
    ld d, b
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld b, l
    ld a, $53
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, c
    ld c, h
    ld d, c
    ld d, b
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
    ld h, d
    ld b, e
    ld c, a
    ld b, [hl]
    ld b, d
    ld c, e
    ld b, c
    ld d, b
    ld h, e
    ld a, [$f0f7]
    ld [$a39f], a
    ld a, [hl-]
    ld e, [hl]
    ld h, d
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, c
    ld e, [hl]
    ld h, d
    ld b, [hl]
    ld d, c
    ld l, b
    ld h, d
    ld c, e
    ld c, h
    rst $28
    xor $52
    ld d, b
    ld b, d
    ld h, d
    ld a, $50
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, d
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc h
    ld d, b
    ld c, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, l
    ld b, d
    ld c, h
    ld c, l
    ld c, c
    ld b, d
    rst $28
    xor $46
    ld c, e
    ld d, b
    ld b, [hl]
    ld b, c
    ld b, d
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    scf
    ld c, h
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld e, [hl]
    ld h, d
    ld d, c
    ld c, a
    ld a, $46
    ld c, e
    rst $28
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
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
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
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $9f
    and e
    ld c, h
    ld c, a
    ld h, d
    ld c, d
    ld a, $48
    ld b, d
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld b, d
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
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $4d
    ld a, $49
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
    ld c, h
    ld c, e
    ld c, c
    ld d, [hl]
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
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld a, [$eff7]
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld c, e
    ld c, h
    ld d, h
    rst $28
    xor $46
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $25
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
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
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $4a
    ld a, $4b
    ld d, [hl]
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $51
    ld c, a
    ld a, $46
    ld c, e
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld b, d
    ld h, d
    ld b, h
    ld a, $51
    ld b, l
    ld b, d
    ld c, a
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $3e
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, $4f
    ld b, d
    ld c, e
    ld a, $5e
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, d
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, e
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    dec hl
    ld a, $5e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4b
    ld h, a
    rst $28
    xor $54
    ld b, [hl]
    ld c, e
    ld h, d
    ld b, d
    ld d, e
    ld b, d
    ld c, e
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld a, [hl+]
    ld a, [$eff7]
    xor $40
    ld c, c
    ld a, $50
    ld d, b
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
    ld d, h
    ld b, d
    ld a, $48
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
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, e
    ld a, [$eff7]
    xor $37
    ld b, l
    ld a, $51
    ld l, b
    ld h, d
    ld a, $49
    ld c, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    add hl, sp
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld d, c
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
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld a, [$eff7]
    xor $4f
    ld b, d
    ld c, l
    ld b, d
    ld a, $51
    ld b, d
    ld b, c
    ld c, c
    ld d, [hl]
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $51
    ld c, a
    ld a, $46
    ld c, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
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
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc h
    ld c, c
    ld c, c
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
    rst $28
    xor $3f
    ld c, h
    ld c, a
    ld c, e
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld b, d
    ld b, h
    ld b, h
    ld d, b
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    jr z, jr_04e_4525

    ld b, h
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    rst $28
    xor $42
    ld b, h
    ld b, h
    ld d, b
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld h, d
    ld b, [hl]
    ld b, e
    ld a, [$eff7]
    xor $49
    ld b, d
    ld b, e
    ld d, c
    ld h, d
    ld a, $49
    ld c, h
    ld c, e
    ld b, d
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
    ld l, b
    ld h, d
    ld a, $62
    ld c, l
    ld c, c
    ld a, $40
    ld b, d
    rst $28
    xor $51
    ld c, h

jr_04e_4525:
    ld h, d
    ld b, l
    ld a, $51
    ld b, b
    ld b, l
    ld h, d
    ld b, d
    ld b, h
    ld b, h
    ld d, b
    ld h, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, c
    ld c, h
    ld c, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    jr c, jr_04e_4599

    ld d, c
    ld b, [hl]
    ld c, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    rst $28
    xor $51
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, l
    ld c, c
    ld a, $40
    ld b, d
    ld e, [hl]
    ld h, d
    ld c, c
    ld b, d
    ld a, $53
    ld b, d
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld c, d
    ld h, d
    ld a, $51
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
    xor $f7
    ldh a, [$a3]
    inc l
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld b, l
    ld c, h
    ld c, h
    ld d, b
    ld b, d
    rst $28
    xor $26
    dec hl
    inc h

jr_04e_4599:
    dec [hl]
    ld a, [hl+]
    jr z, jr_04e_45ff

    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4b
    ld a, [$eff7]
    xor $51
    ld c, a
    ld a, $46
    ld c, e
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
    rst $28
    xor $51
    ld c, h
    ld h, d
    ccf
    ld b, d
    ld h, d
    ccf
    ld c, a
    ld a, $53
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $a3
    dec h
    ld c, a
    ld a, $53
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
    rst $28
    xor $45
    ld a, $53
    ld b, d
    ld h, d
    ld a, $62
    ccf
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $40
    ld b, l
    ld a, $4b
    ld b, b
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, d
    ld a, $48
    ld b, d
    rst $28
    xor $40

jr_04e_45ff:
    ld c, c
    ld b, d
    ld a, $4b
    ld h, d
    ld b, l
    ld b, [hl]
    ld d, c
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $a3
    inc l
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld b, l
    ld c, h
    ld c, h
    ld d, b
    ld b, d
    rst $28
    xor $30
    inc l
    dec sp
    jr z, @+$29

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
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    rst $28
    xor $3f
    ld b, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, b
    ld b, d
    ld c, a
    ld e, a
    ld a, [$eff7]
    xor $a3
    ld a, [hl-]
    ld b, [hl]
    ld d, b
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
    rst $28
    xor $42
    ld a, $50
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld b, c
    ld b, d
    ld b, b
    ld b, [hl]
    ld b, c
    ld b, d
    ld a, [$eff7]
    xor $54
    ld b, l
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, d
    ld d, b
    ld d, d
    ld c, l
    ld c, l
    ld c, h
    ld c, a
    ld d, c
    rst $28
    xor $50
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ccf
    ld b, d
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $51
    ld c, h
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $a3
    ld a, [hl-]
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld b, l
    ld c, h
    ld c, h
    ld d, b
    ld b, d
    rst $28
    xor $26
    inc h
    jr c, jr_04e_46e6

    inc l
    ld [hl-], a
    jr c, jr_04e_46e9

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
    ld d, b
    rst $28
    xor $25
    ld b, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld b, b
    ld a, $52
    ld d, c
    ld b, [hl]
    ld c, h
    ld d, d
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $a3
    ld h, $3e
    ld d, d
    ld d, c
    ld b, [hl]
    ld c, h
    ld d, d
    ld d, b
    ld h, d
    ld c, d
    ld c, h

jr_04e_46e6:
    ld c, e
    ld d, b
    ld d, c

jr_04e_46e9:
    ld b, d
    ld c, a
    ld d, b
    rst $28
    xor $41
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld h, d
    jr nc, jr_04e_472c

    ld h, d
    ccf
    ld d, d
    ld d, c
    ld a, [$eff7]
    xor $50
    ld c, h
    ld c, d
    ld b, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, d
    ld b, l
    ld b, d
    ld a, $49
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, a
    ld h, d
    ld b, c
    ld a, $4a
    ld a, $44
    ld b, d
    ld d, b
    ld e, a
    rst $30
    ldh a, [$f6]
    ld h, d
    ld c, a
    ld b, d
    ld d, c
    ld d, d
    ld c, a
    ld c, e
    ld b, d
    ld b, c
    ld h, d

jr_04e_472c:
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $4c
    ld c, c
    ld b, c
    ld h, d
    ld c, c
    ld a, $41
    ld d, [hl]
    ld l, b
    ld a, [$eff7]
    xor $4b
    ld c, h
    ld d, c
    ld b, d
    ccf
    ld c, h
    ld c, h
    ld c, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $47
    ld a, $4f
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld c, d
    ld c, d
    ld c, d
    ld e, a
    ld h, d
    inc l
    ld d, c
    ld l, b
    rst $28
    xor $52
    ld c, e
    ld b, e
    ld c, h
    ld c, a
    ld d, c
    ld d, d
    ld c, e
    ld a, $51
    ld b, d
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld c, d
    ld c, d
    ld c, d
    ld e, a
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
    ld a, [hl+]
    ld h, d
    ld b, b
    ld c, c
    ld a, $50
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $3a
    ld b, d
    ld c, c
    ld c, c
    ld e, [hl]
    ld h, d
    inc l
    ld h, d
    ld b, h
    ld d, d
    ld b, d
    ld d, b
    ld d, b
    ld h, d
    inc l
    ld h, [hl]
    ld c, c
    rst $28
    xor $40
    ld c, h
    ld c, e
    ld b, h
    ld c, a
    ld a, $51
    ld d, d
    ld c, c
    ld a, $51
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld a, [hl+]
    ld h, d
    ld b, b
    ld c, c
    ld a, $50
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $3e
    ld h, d
    ld c, l
    ld b, [hl]
    ld b, d
    ld b, b
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld b, b
    ld a, $48
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld c, a
    ld b, d
    ld a, $49
    ld h, d
    ccf
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld d, b
    rst $28
    xor $50
    ld d, c
    ld a, $4f
    ld d, c
    ld h, d
    ld c, e
    ld c, h
    ld d, h
    ld e, a
    ld a, [$eff7]
    xor $35
    ld b, d
    ld c, d
    ld b, d
    ld c, d
    ccf
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, [hl+]
    ld c, h
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    dec [hl]
    ld c, h
    ld c, h
    ld c, d
    rst $28
    xor $4c
    ld b, e
    ld h, d
    add hl, sp
    ld b, [hl]
    ld c, c
    ld c, c
    ld a, $44
    ld b, d
    ld c, a
    ld h, d
    or [hl]
    ld h, d
    ld a, [$eff7]
    xor $37
    ld a, $49
    ld b, [hl]
    ld d, b
    ld c, d
    ld a, $4b
    ld h, d
    ld a, $4b
    ld b, c
    rst $28
    xor $46
    ld c, d
    ld c, l
    ld c, a
    ld c, h
    ld d, e
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $50
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld c, d
    ld c, d
    ld e, a
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
    ld e, a
    ld a, [$eff7]
    xor $26
    ld c, h
    ld c, e
    ld b, h
    ld c, a
    ld a, $51
    ld d, d
    ld c, c
    ld a, $51
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
    ld c, a
    ld a, $46
    ld c, e
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $35
    ld c, h
    ld c, h
    ld c, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    jr nc, @+$44

    ld c, d
    ld c, h
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    or [hl]
    ld a, [$eff7]
    xor $25
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld b, c
    ld b, d
    ld c, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    dec hl
    ld a, $53
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, d
    ld b, c
    rst $28
    xor $3f
    ld c, a
    ld b, d
    ld b, d
    ld b, c
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
    ld a, [$eff7]
    xor $46
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld [hl], $45
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $36
    ld d, c
    ld a, $4f
    ld c, a
    ld d, [hl]
    ld h, d
    ld sp, $4446
    ld b, l
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $9f
    and e
    jr nc, jr_04e_495e

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ccf
    ld c, a
    ld b, d
    ld b, d
    ld b, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, [hl]
    rst $28
    xor $3e
    ld c, e
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, [hl]
    ld c, c
    ld h, d
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld d, d
    ld c, a
    ld c, e
    ld a, $4a
    ld b, d
    ld c, e
    ld d, c
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld c, a

jr_04e_495e:
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    rst $28
    xor $36
    ld c, l
    ld c, h
    ld c, h
    ld c, b
    ld d, [hl]
    ld d, b
    ld e, [hl]
    ld h, d
    inc h
    ld c, a
    ld c, d
    ld d, [hl]
    inc h
    ld c, e
    ld d, c
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $24
    ld c, e
    ld d, c
    ld b, d
    ld a, $51
    ld b, d
    ld c, a
    ld d, b
    ld e, [hl]
    ld h, d
    ld a, $4b
    ld b, c
    rst $28
    xor $2a
    ld c, h
    ld c, h
    ld c, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc h
    ld c, a
    ld c, d
    ld d, [hl]
    inc h
    ld c, e
    ld d, c
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    rst $28
    xor $4a
    ld a, $48
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, b
    ld c, c
    ld b, d
    ld b, d
    ld c, l
    ld a, [$eff7]
    xor $54
    ld b, l
    ld b, [hl]
    ld c, c
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld d, [hl]
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
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
    ld h, d
    ld b, h
    ld d, d
    ld a, $4f
    ld b, c
    ld b, [hl]
    ld a, $4b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $62
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, d
    ld c, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl-]
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, b
    ld b, l
    ld a, $4f
    ld b, h
    ld b, d
    ld d, b
    rst $28
    xor $46
    ld d, c
    ld d, b
    ld h, d
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld e, [hl]
    ld h, d
    ld d, h
    ld a, $51
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
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
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, d
    ld c, d
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $53
    ld d, d
    ld c, c
    ld c, e
    ld b, d
    ld c, a
    ld a, $3f
    ld c, c
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $50
    ld c, c
    ld b, d
    ld b, d
    ld c, l
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld c, c
    ld c, c
    ld d, b
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld d, d
    ld c, d
    ld c, l
    ld b, e
    ld e, [hl]
    ld h, d
    ld c, h
    ld c, b
    ld a, $56
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
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
    xor $51
    ld c, h
    ld h, d
    ld b, l
    ld b, d
    ld a, $4f
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $2a
    ld a, $51
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    dec h
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $ff
    ldh a, [$ea]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld d, h
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $30
    ld b, [hl]
    ld c, e
    ld b, [hl]
    daa
    ld c, a
    ld a, $48
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $25
    ld b, [hl]
    ld b, h
    dec [hl]
    ld c, h
    ld c, h
    ld d, b
    ld d, c
    ld d, b
    ld e, [hl]
    rst $28
    xor $28
    ld d, e
    ld b, [hl]
    ld c, c
    ld [hl], $42
    ld b, d
    ld b, c
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $9f
    and e
    daa
    ld b, d
    ld c, d
    ld c, h
    ld c, e
    ld b, [hl]
    ld d, c
    ld b, d
    ld d, b
    ld e, [hl]
    rst $28
    xor $36
    ld c, l
    ld c, h
    ld d, c
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, d
    ld a, $4b
    ld b, c
    ld a, [$eff7]
    xor $2b
    ld c, h
    ld c, a
    ld c, b
    ld d, b
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl-]
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld c, h
    ld b, e
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
    ld d, b
    ld h, d
    ld a, $4f
    ld b, d
    ld a, [$eff7]
    xor $4d
    ld a, $4f
    ld a, $49
    ld d, [hl]
    ld d, a
    ld b, d
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld l, c
    ld b, d
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
    ld a, [$eff7]
    xor $27
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld b, h
    ld b, d
    ld d, c
    rst $28
    xor $50
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    jr nc, jr_04e_4bd2

    ld c, h
    ld c, e
    dec hl
    ld b, d
    ld c, a
    ccf
    ld d, b
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld d, d
    ld a, $4f
    ld b, c
    ld b, [hl]
    ld a, $4b
    rst $28
    xor $51
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
    ld a, [$eff7]
    xor $29
    ld a, $40
    ld b, d
    scf
    ld c, a
    ld b, d
    ld b, d
    ld e, a
    ld h, d
    inc l
    ld d, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    rst $28
    xor $40
    ld a, $50
    ld d, c
    ld h, d
    ld a, $62
    ld b, b
    ld d, d
    ld c, a
    ld d, b
    ld b, d
    ld e, a

jr_04e_4bd2:
    ld a, [$eff7]
    xor $9f
    and e
    inc h
    ld h, d
    ld b, b
    ld d, d
    ld c, a
    ld d, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $ef
    xor $4f
    ld b, d
    ld a, $49
    ld h, d
    ld d, c
    ld b, l
    ld c, a
    ld b, d
    ld a, $51
    ld e, a
    ld h, d
    jr c, jr_04e_4c45

    ld b, d
    ld a, [$eff7]
    xor $2f
    ld a, $52
    ld c, a
    ld b, d
    ld c, c
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, b
    ld d, d
    ld c, a
    ld b, d
    rst $28
    xor $40
    ld d, d
    ld c, a
    ld d, b
    ld b, d
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
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
    ld h, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, l
    ld c, c
    ld a, $4b
    ld d, c
    ld h, d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld a, [$eff7]
    xor $3e
    ld c, a
    ld b, d
    ld h, d
    ld d, e
    ld d, d
    ld c, c
    ld c, e

jr_04e_4c45:
    ld b, d
    ld c, a
    ld a, $3f
    ld c, c
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $43
    ld b, [hl]
    ld c, a
    ld b, d
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
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
    xor $3f
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    rst $28
    xor $4c
    ld b, e
    ld h, d
    jr nc, jr_04e_4cde

    ld c, d
    ld c, h
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, h
    rst $38
    ldh a, [$ea]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld d, h
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $2a
    ld c, h
    ld c, h
    ld c, l
    ld b, [hl]
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $33
    ld b, [hl]
    ld c, c
    ld c, c
    ld c, h
    ld d, h
    dec [hl]
    ld a, $51
    ld d, b
    ld e, [hl]
    rst $28
    xor $27
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld l, $46
    ld b, c
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $26
    ld a, $51

jr_04e_4cde:
    ld a, $4d
    ld b, [hl]
    ld c, c
    ld a, $50
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc sp
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, [hl]
    ld d, b
    ld e, [hl]
    ld h, d
    ld a, $4b
    ld b, c
    rst $28
    xor $29
    ld a, $46
    ld c, a
    ld d, [hl]
    daa
    ld c, a
    ld a, $48
    ld d, b
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld b, l
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
    ld [hl], $4c
    ld c, d
    ld b, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld e, [hl]
    rst $28
    xor $36
    ld c, l
    ld c, h
    ld d, c
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld d, h
    ld a, [$eff7]
    xor $52
    ld c, l
    ld e, a
    ld h, d
    dec h
    ld b, d
    ld h, d
    ld b, b
    ld a, $4f
    ld b, d
    ld b, e
    ld d, d
    ld c, c
    ld e, a
    rst $28
    xor $37
    ld b, l
    ld b, d
    ld d, [hl]
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ld b, b
    ld a, $49
    ld c, c
    ld a, [$eff7]
    xor $4c
    ld d, c
    ld b, l
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
    ld h, d
    ld b, h
    ld d, d
    ld a, $4f
    ld b, c
    ld b, [hl]
    ld a, $4b
    rst $28
    xor $51
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
    ld a, [$eff7]
    xor $30
    ld a, $41
    ld h, $3e
    ld d, c
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
    ld b, b
    ld a, $4b
    ld h, d
    ld b, b
    ld a, $50
    ld d, c
    ld h, d
    ld a, $ef
    xor $36
    ld c, [hl]
    ld d, d
    ld a, $49
    ld c, c
    dec hl
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, e
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $51
    ld b, l
    ld a, $4b
    ld h, d
    ld a, $4b
    ld d, [hl]
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    ld h, d
    ld d, b
    ld c, c
    ld c, h
    ld d, h
    ld e, [hl]
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, [hl]
    ld c, c
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld a, $50
    ld d, c
    ld h, e
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
    rst $28
    xor $40
    ld b, l
    ld a, $4f
    ld a, $40
    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, b
    ld d, b
    ld a, [$eff7]
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
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld h, d
    ld a, $50
    rst $28
    xor $4f
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
    ld a, [$eff7]
    xor $43
    ld b, [hl]
    ld c, a
    ld b, d
    ld h, d
    ld c, h
    ld c, a
    ld h, d
    ld b, [hl]
    ld b, b
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    add hl, hl
    ld c, h
    ld c, a
    ld h, d
    ld b, d
    ld d, l
    ld a, $4a
    ld c, l
    ld c, c
    ld b, d
    ld e, [hl]
    rst $28
    xor $30
    ld b, d
    ld d, c
    ld a, $49
    ld d, [hl]
    ld h, d
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $4f
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
    rst $28
    xor $42
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld d, b
    ld b, d
    rst $28
    xor $40
    ld b, l
    ld a, $4f
    ld a, $40
    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, b
    ld d, b
    ld a, [$eff7]
    xor $40
    ld a, $4b
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld b, l
    ld b, d
    ld c, a
    ld b, [hl]
    ld d, c
    ld b, d
    ld b, c
    rst $28
    xor $3f
    ld d, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, a
    ld h, d
    ld c, b
    ld b, [hl]
    ld b, c
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl-]
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, l
    ld b, d
    ld a, $4f
    rst $28
    xor $4a
    ld c, h
    ld c, a
    ld b, d
    ld h, h
    rst $38
    ldh a, [$ea]
    sbc a
    and e
    daa
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld d, b
    rst $28
    xor $54
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    jr nc, jr_04e_4f46

    ld d, c
    ld a, $49
    ld d, [hl]
    ld a, [$eff7]
    xor $4d
    ld a, $4f
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, $4f
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld c, a
    ld b, d
    rst $28
    xor $4f
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
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $53
    ld a, $4f
    ld b, [hl]
    ld b, d
    ld d, c
    ld d, [hl]
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e

jr_04e_4f46:
    ld b, h
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
    ld c, d
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    and d
    rst $28
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ccf
    ld c, a
    ld b, d
    ld b, d
    ld b, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $44
    ld c, a
    ld b, d
    ld a, $51
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $51
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld b, b
    ld d, [hl]
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    dec h
    ld c, a
    ld b, d
    ld b, d
    ld b, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld a, $4b
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
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld d, b
    ld b, d
    ld h, d
    rst $28
    xor $40
    ld b, l
    ld a, $4f
    ld a, $40
    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, b
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld [hl], $51
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld b, d
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
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    ld a, [$eff7]
    xor $3f
    ld c, h
    ld c, a
    ld c, e
    ld h, d
    ld b, [hl]
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld d, [hl]
    rst $28
    xor $40
    ld c, h
    ld c, d
    ld c, l
    ld b, d
    ld c, e
    ld d, b
    ld a, $51
    ld b, d
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $42
    ld a, $40
    ld b, l
    ld h, d
    ld c, h
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld l, b
    ld h, d
    ld d, h
    ld b, d
    ld a, $48
    rst $28
    xor $4d
    ld c, h
    ld b, [hl]
    ld c, e
    ld d, c
    ld d, b
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
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
    xor $51
    ld c, h
    ld h, d
    ld b, l
    ld b, d
    ld a, $4f
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $2a
    ld a, $51
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    inc sp
    ld b, d
    ld a, $40
    ld b, d
    ld h, h
    rst $28
    xor $ff
    ldh a, [$ea]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld d, h
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $25
    ld b, [hl]
    ld b, h
    dec [hl]
    ld c, h
    ld c, h
    ld d, b
    ld d, c
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $36
    ld c, l
    ld c, h
    ld d, c
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld e, [hl]
    rst $28
    xor $26
    ld c, h
    ld b, [hl]
    ld c, c
    dec h
    ld b, [hl]
    ld c, a
    ld b, c
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $9f
    and e
    daa
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld l, $46
    ld b, c
    ld d, b
    ld e, [hl]
    rst $28
    xor $26
    ld c, a
    ld b, d
    ld d, b
    ld d, c
    ld c, l
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $25
    ld c, h
    ld c, e
    ld b, d
    ld [hl], $49
    ld a, $53
    ld b, d
    ld d, b
    ld e, [hl]
    rst $28
    xor $24
    ld c, c
    ld c, d
    ld b, [hl]
    ld c, a
    ld a, $47
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $9f
    and e
    dec hl
    ld c, h
    ld c, a
    ld c, b
    ld d, b
    ld h, d
    ld a, $4b
    ld b, c
    rst $28
    xor $25
    ld d, d
    ld c, c
    ld c, c
    dec h
    ld b, [hl]
    ld c, a
    ld b, c
    ld d, b
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld b, l
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
    scf
    ld b, l
    ld b, d
    ld h, d
    ld h, $4f
    ld b, d
    ld d, b
    ld d, c
    ld c, l
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    rst $28
    xor $45
    ld a, $53
    ld b, d
    ld h, d
    inc sp
    ld c, h
    ld b, [hl]
    ld d, b
    ld c, h
    ld c, e
    dec hl
    ld b, [hl]
    ld d, c
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld d, d
    ld a, $4f
    ld b, c
    ld b, [hl]
    ld a, $4b
    rst $28
    xor $51
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
    ld a, [$eff7]
    xor $29
    ld a, $4b
    ld b, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, [hl-]
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, b
    ld b, l
    ld a, $4f
    ld b, h
    ld b, d
    ld d, b
    rst $28
    xor $46
    ld d, c
    ld l, b
    ld h, d
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld e, [hl]
    ld h, d
    ld d, h
    ld a, $51
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $56
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld c, a
    ld b, d
    ld c, d
    ld a, $46
    ld c, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    dec hl
    inc sp
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
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
    xor $3f
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $25
    ld c, a
    ld a, $53
    ld b, d
    ld c, a
    ld d, [hl]
    ld h, h
    rst $38
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
    rst $28
    xor $27
    ld b, d
    ld c, d
    ld c, h
    ld c, e
    ld b, [hl]
    ld d, c
    ld b, d
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $25
    ld b, d
    ld a, $4b
    jr nc, @+$44

    ld c, e
    ld e, [hl]
    rst $28
    xor $01
    jr z, jr_04e_5262

    ld b, d
    ld h, $49
    ld c, h
    ld d, h
    ld c, e
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $29
    ld c, c
    ld c, h
    ld c, a
    ld a, $30
    ld b, d
    ld c, e
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld [hl], $3e
    ccf
    ld c, a
    ld b, d
    jr nc, jr_04e_5272

    ld c, e
    ld e, [hl]
    rst $28
    xor $2a
    ld b, [hl]
    ld a, $4b
    ld d, c
    ld a, [hl-]
    ld c, h
    ld c, a
    ld c, d
    ld d, b
    ld e, [hl]
    ld h, d
    ld a, $4b
    ld b, c
    ld a, [$eff7]
    xor $25
    ld d, d
    ld c, c
    ld c, c
    dec h
    ld b, [hl]
    ld c, a
    ld b, c
    ld d, b
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, e
    ld a, [$eff7]

jr_04e_5262:
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    add hl, hl
    ld c, c
    ld c, h
    ld c, a
    ld a, $30
    ld a, $4b
    ld h, d

jr_04e_5272:
    ld b, b
    ld a, $4b
    rst $28
    xor $52
    ld d, b
    ld b, d
    ld h, d
    add hl, hl
    ld b, [hl]
    ld c, a
    ld b, d
    ccf
    ld a, $4b
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld d, d
    ld a, $4f
    ld b, c
    ld b, [hl]
    ld a, $4b
    rst $28
    xor $51
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
    ld a, [$eff7]
    xor $25
    ld b, [hl]
    ld b, h
    jr z, jr_04e_5303

    ld b, d
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
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    rst $28
    xor $2c
    ld b, b
    ld b, d
    inc h
    ld b, [hl]
    ld c, a
    ld h, d
    or [hl]
    ld a, [$eff7]
    xor $36
    ld c, e
    ld c, h
    ld d, h
    ld [hl], $51
    ld c, h
    ld c, a
    ld c, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    dec h
    ld b, d
    ld a, $50
    ld d, c
    ld d, b
    ld h, d
    ld a, $4f
    ld b, d
    rst $28
    xor $53
    ld d, d
    ld c, c
    ld c, e
    ld b, d
    ld c, a
    ld a, $3f
    ld c, c
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $50
    ld c, l
    ld b, d
    ld c, c

jr_04e_5303:
    ld c, c
    ld d, b
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    ld a, $46
    ld c, a
    rst $28
    xor $3e
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
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
    ld d, b
    ld d, d
    ld c, a
    ld d, e
    ld b, [hl]
    ld d, e
    ld b, d
    ld b, c
    rst $28
    xor $28
    ld h, d
    ld b, b
    ld c, c
    ld a, $50
    ld d, b
    ld e, [hl]
    ld h, d
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld b, c
    ld b, [hl]
    ld b, c
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld a, $4b
    ld h, d
    inc l
    rst $28
    xor $51
    ld b, l
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld d, c
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld b, b
    ld b, d
    jr nc, jr_04e_539d

    ld c, e
    ld h, d
    ld b, l
    ld a, $50
    ld h, d
    ld a, $ef
    xor $4f
    ld b, d
    ld c, c
    ld a, $51
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, e
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, b
    ld a, $49
    ld c, c
    ld b, d
    ld b, c
    rst $28
    xor $2f
    ld a, $53
    ld a, $30
    ld a, $4b
    ld e, a
    ld h, d
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld l, b
    ld a, [$eff7]
    xor $4b
    ld c, h
    ld d, c

jr_04e_539d:
    ld h, d
    ccf
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
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
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    add hl, hl
    ld c, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld c, e
    ld h, d
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    rst $28
    xor $4a
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld c, h
    ld c, e
    ld b, d
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld b, l
    ld c, h
    ld c, h
    ld d, b
    ld b, d
    rst $28
    xor $26
    ld [hl-], a
    jr nc, jr_04e_542a

    inc h
    ld sp, $5e27
    ld h, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld a, [$eff7]
    xor $54
    ld b, [hl]
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
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld c, h
    ld b, e
    ld d, c
    ld b, d
    ld c, e
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld c, h
    ccf

jr_04e_542a:
    ld b, d
    ld d, [hl]
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld c, d
    ld a, $4b
    ld b, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld h, d
    ld b, b
    ld a, $50
    ld b, d
    ld e, [hl]
    rst $28
    xor $51
    ld a, $48
    ld b, d
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
    xor $3e
    ld c, a
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld c, c
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, c
    ld b, c
    ld c, e
    ld b, d
    ld d, b
    ld d, b
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, [hl-]
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld d, [hl]
    ld l, c
    ld b, d
    rst $28
    xor $49
    ld b, d
    ld b, e
    ld d, c
    ld h, d
    ld c, h
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, e
    ld a, $4f
    ld c, d
    ld e, [hl]
    ld a, [$eff7]
    xor $46
    ld d, c
    ld l, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld b, c
    ld c, e
    ld b, d
    ld d, b
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    rst $28
    xor $46
    ld c, e
    ld b, b
    ld c, a
    ld b, d
    ld a, $50
    ld b, d
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
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
    xor $51
    ld c, h
    ld h, d
    ld c, c
    ld b, d
    ld a, $4f
    ld c, e
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $2a
    ld a, $51
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    inc h
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $ff
    ldh a, [$ea]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld d, h
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $2a
    ld b, [hl]
    ld a, $4b
    ld d, c
    ld a, [hl-]
    ld c, h
    ld c, a
    ld c, d
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $33
    ld c, h
    ld b, [hl]
    ld d, b
    ld c, h
    ld c, e
    ld b, h
    ld c, h
    ld c, e
    ld d, b
    ld e, [hl]
    rst $28
    xor $2a
    ld b, [hl]
    ld a, $4b
    ld d, c
    ld [hl], $49
    ld d, d
    ld b, h
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $26
    ld a, $51
    add hl, hl
    ld c, c
    ld d, [hl]
    ld d, b
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    jr z, jr_04e_55b6

    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld e, [hl]
    rst $28
    xor $33
    ld d, d
    ld d, c
    ld c, a
    ld b, d
    ld c, l
    ld d, d
    ld c, l
    ld d, b
    ld e, [hl]
    ld h, d
    ld a, $4b
    ld b, c
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $48
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld b, l
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
    daa
    ld c, a
    ld a, $48
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld l, b
    rst $28
    xor $25
    ld c, c
    ld a, $57
    ld b, d
    inc h
    ld b, [hl]
    ld c, a
    ld h, d
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $4d
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld b, e
    ld d, d
    ld c, c

jr_04e_55b6:
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc h
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, c
    ld c, h
    ld d, c
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $ef
    xor $4a
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld a, $52
    ld d, b
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld c, a
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
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    rst $28
    xor $4d
    ld c, h
    ld b, [hl]
    ld d, b
    ld c, h
    ld c, e
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld d, d
    ld a, $4f
    ld b, c
    ld b, [hl]
    ld a, $4b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $25
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    dec [hl]
    ld b, d
    ld d, l
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
    jr z, jr_04e_5689

    ld b, [hl]
    ld c, c
    ld [hl], $49
    ld a, $50
    ld b, l
    rst $28
    xor $46
    ld d, b
    ld h, d
    ld a, $4b
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld c, a
    ld a, $44
    ld b, d
    ld c, h
    ld d, d
    ld d, b
    ld a, [$eff7]
    xor $50
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    daa
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld d, b
    ld h, d
    ld a, $4f
    ld b, d
    rst $28
    xor $4f
    ld b, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ld h, d
    ld c, a
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, $4b
    ld d, c
    ld a, [$eff7]
    xor $51
    ld c, h
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, a
    ld b, d

jr_04e_5689:
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld d, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
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
    xor $3f
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    rst $28
    xor $4c
    ld b, e
    ld h, d
    ld [hl], $51
    ld c, a
    ld b, d
    ld c, e
    ld b, h
    ld d, c
    ld b, l
    ld h, h
    rst $38
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
    rst $28
    xor $30
    ld d, d
    ld b, c
    daa
    ld c, h
    ld c, c
    ld c, c
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $37
    ld c, a
    ld b, d
    ld b, d
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld e, [hl]
    rst $28
    xor $36
    ld c, b
    ld d, d
    ld c, c
    dec [hl]
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $3a
    ld b, [hl]
    ld c, e
    ld b, h
    scf
    ld c, a
    ld b, d
    ld b, d
    ld d, b
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    add hl, hl
    ld a, $46
    ld c, a
    ld d, [hl]
    daa
    ld c, a
    ld a, $48
    ld d, b
    ld e, [hl]
    ld h, d
    ld a, $4b
    ld b, c
    rst $28
    xor $27
    ld c, a
    ld a, $48
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    scf
    ld c, a
    ld b, d
    ld b, d
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld a, [$eff7]
    xor $33
    ld a, $4f
    ld a, $49
    ld d, [hl]
    ld d, a
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    daa
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld b, h
    ld b, d
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $51
    ld a, $48
    ld b, d
    ld h, d
    ld d, b
    ld c, h
    ld c, d
    ld b, d
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, h
    ld c, e
    dec hl
    ld b, d
    ld c, a
    ccf
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
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld d, d
    ld a, $4f
    ld b, c
    ld b, [hl]
    ld a, $4b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $36
    ld d, c
    ld c, h
    ld c, e
    ld b, d
    jr nc, jr_04e_5829

    ld c, e
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld [hl-], a
    ccf
    ld b, a
    ld b, d
    ld b, b
    ld d, c
    ld d, b
    ld h, d
    ld a, $4f
    ld b, d
    rst $28
    xor $4f
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
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, d
    dec h
    ld c, h
    ld c, c
    ld d, c
    ld h, d
    ld a, $4b
    ld b, c
    rst $28
    xor $25
    ld c, c
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld b, c
    ld h, e
    rst $30

jr_04e_5829:
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    rst $28
    xor $4c
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, l
    ld b, d
    ld b, c
    ld b, [hl]
    ld b, h
    ld c, a
    ld b, d
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
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
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, h
    ld d, c
    ld b, l
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
    ld a, [$eff7]
    xor $3e
    ld c, a
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld a, $4a
    ld b, d
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld c, e
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
    ld e, [hl]
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld a, $4a
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
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    ld h, d
    ccf
    ld c, h
    ld c, a
    ld c, e
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld [hl], $4c
    ld c, d
    ld b, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, [hl]
    ld c, c
    rst $28
    xor $54
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, b
    ld b, l
    ld a, $4b
    ld b, h
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld a, $4b
    ld h, d
    ld b, d
    ld b, h
    ld b, h
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    scf
    ld c, h
    ld h, d
    ld b, c
    ld c, h
    ld h, d
    ld d, b
    ld c, h
    ld e, [hl]
    rst $28
    xor $51
    ld a, $48
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, d
    ld b, h
    ld b, h
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    jr z, jr_04e_596e

    ld b, h
    ld h, d
    ld h, $4c
    ld c, e
    ld d, b
    ld d, d
    ld c, c
    ld d, c
    ld a, $4b
    ld d, c
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld d, [hl]
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ccf
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld b, d
    ld b, h
    ld b, h
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    ld b, b
    ld b, l
    ld a, $4b
    ld b, h
    ld b, d
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a

jr_04e_596e:
    ld h, e
    rst $28
    xor $f7
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
    rst $28
    xor $43
    ld c, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld c, e
    ld h, d
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld a, [$eff7]
    xor $54
    ld b, l
    ld c, h
    ld d, b
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
    rst $28
    xor $3e
    ld c, a
    ld b, d
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld b, l
    ld b, d
    ld b, c
    ld a, [$eff7]
    xor $51
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, d
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
    ld b, h
    ld b, d
    ld d, c
    rst $28
    xor $51
    ld b, l
    ld c, h
    ld d, b
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
    ld h, d
    ld d, c
    ld c, h
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
    ld h, d
    ccf
    ld d, [hl]
    rst $28
    xor $43
    ld c, c
    ld a, $51
    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, d
    ld h, e
    rst $30
    ldh a, [$f6]
    ld h, d
    ld c, a
    ld b, d
    ld a, $41
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $3f
    ld c, c
    ld a, $40
    ld c, b
    ccf
    ld c, h
    ld a, $4f
    ld b, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld a, $4f
    ld b, d
    rst $28
    xor $40
    ld b, l
    ld a, $4f
    ld a, $40
    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, b
    ld d, b
    ld a, [$eff7]
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
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld h, d
    ld a, $50
    rst $28
    xor $4f
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, $4b
    ld b, b
    ld b, d
    ld a, [$eff7]
    xor $51
    ld c, h
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, a
    ld b, d
    ld h, d
    ld c, h
    ld c, a
    ld h, d
    ld b, [hl]
    ld b, b
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    add hl, hl
    ld c, h
    ld c, a
    ld h, d
    ld b, d
    ld d, l
    ld a, $4a
    ld c, l
    ld c, c
    ld b, d
    ld e, [hl]
    rst $28
    xor $30
    ld b, d
    ld d, c
    ld a, $49
    ld d, [hl]
    ld h, d
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $4f
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
    rst $28
    xor $42
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld d, b
    ld b, d
    rst $28
    xor $40
    ld b, l
    ld a, $4f
    ld a, $40
    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, b
    ld d, b
    ld a, [$eff7]
    xor $40
    ld a, $4b
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld b, l
    ld b, d
    ld c, a
    ld b, [hl]
    ld d, c
    ld b, d
    ld b, c
    rst $28
    xor $3f
    ld d, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, a
    ld h, d
    ld c, b
    ld b, [hl]
    ld b, c
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $3a
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, a
    ld b, d
    ld a, $41
    rst $28
    xor $4a
    ld c, h
    ld c, a
    ld b, d
    ld h, h
    rst $38
    ldh a, [$9f]
    and e
    ld sp, $4a3e
    ld b, d
    ld c, c
    ld d, [hl]
    ld e, [hl]
    ld h, d
    ld b, c
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld d, b
    rst $28
    xor $54
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    jr nc, jr_04e_5b73

    ld d, c
    ld a, $49
    ld d, [hl]
    ld a, [$eff7]
    xor $4d
    ld a, $4f
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, $4f
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld c, a
    ld b, d
    rst $28
    xor $4f
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
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $53
    ld a, $4f
    ld b, [hl]
    ld b, d
    ld d, c
    ld d, [hl]
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e

jr_04e_5b73:
    ld b, h
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
    ld c, d
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    and d
    rst $28
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ccf
    ld c, a
    ld b, d
    ld b, d
    ld b, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $44
    ld c, a
    ld b, d
    ld a, $51
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $51
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld b, b
    ld d, [hl]
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc h
    ld h, d
    ld c, d
    ld c, e
    ld b, d
    ld c, d
    ld c, h
    ld c, e
    ld b, [hl]
    ld b, b
    rst $28
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld b, e
    ld d, d
    ld c, c
    ld h, d
    ld d, b
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld a, [$eff7]
    xor $3e
    ld c, e
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
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $4a
    ld d, d
    ld c, d
    ccf
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc h
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, c
    ld c, h
    ld d, c
    ld b, d
    ld h, d
    daa
    ld c, a
    ld a, $40
    ld c, b
    ld d, [hl]
    rst $28
    xor $31
    ld d, d
    ld c, d
    ccf
    ld [hl-], a
    ld b, e
    ld b, e
    ld h, d
    ld [hl], $4b
    ld a, $46
    ld c, c
    ld d, [hl]
    ld a, [$eff7]
    xor $9f
    and e
    daa
    ld b, d
    ld h, $45
    ld a, $4c
    ld d, b
    ld h, d
    ld h, $4c
    ld b, [hl]
    ld c, c
    dec h
    ld b, [hl]
    ld c, a
    ld b, c
    rst $28
    xor $26
    ld d, d
    ld c, a
    ld d, b
    ld b, d
    ld [hl-], a
    ld b, e
    ld b, e
    ld h, d
    daa
    ld b, d
    ld a, $41
    ld sp, $5146
    ld b, d
    ld a, [$eff7]
    xor $9f
    and e
    ld [hl], $51
    ld b, d
    ld c, l
    ld a, [hl+]
    ld d, d
    ld a, $4f
    ld b, c
    rst $28
    xor $3a
    ld b, [hl]
    ld c, e
    ld b, h
    scf
    ld c, a
    ld b, d
    ld b, d
    ld e, [hl]
    ld a, [$eff7]
    xor $30
    ld a, $4d
    jr nc, jr_04e_5cb3

    ld b, h
    ld b, [hl]
    ld b, b
    ld h, d
    jr z, @+$58

    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
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
    xor $51
    ld c, h
    ld h, d
    ld c, c
    ld b, d
    ld a, $4f
    ld c, e
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $2a
    ld a, $51
    ld b, d

jr_04e_5cb3:
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    dec l
    ld c, h
    ld d, [hl]
    ld h, h
    rst $28
    xor $ff
    ldh a, [$ea]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld d, h
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $36
    ld c, e
    ld a, $46
    ld c, c
    ld d, [hl]
    ld d, b
    ld e, [hl]
    ld h, d
    ld [hl], $3e
    ld b, b
    ld b, b
    ld b, d
    ld c, a
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $2a
    ld d, d
    ld c, c
    ld c, l
    ld c, l
    ld c, c
    ld b, d
    ld d, b
    ld e, [hl]
    rst $28
    xor $30
    ld a, $41
    inc sp
    ld b, d
    ld b, b
    ld c, b
    ld b, d
    ld c, a
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $9f
    and e
    jr z, jr_04e_5d57

    ld b, d
    dec h
    ld a, $49
    ld c, c
    ld d, b
    ld e, [hl]
    rst $28
    xor $25
    ld a, $3f
    ccf
    ld c, c
    ld b, d
    ld d, b
    ld e, [hl]
    ld h, d
    or [hl]
    ld h, d
    jr nc, jr_04e_5d69

    ld c, d
    ld c, d
    ld d, [hl]
    ld d, b
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld b, l
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
    dec h
    ld b, d
    ld d, h
    ld a, $4f
    ld b, d
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
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld a, [$eff7]
    xor $33
    ld a, $4f
    ld a, $49
    ld d, [hl]
    ld d, a

jr_04e_5d57:
    ld b, d
    ld h, d
    or [hl]
    rst $28
    xor $33
    ld c, h
    ld b, [hl]
    ld d, b
    ld c, h
    ld c, e
    dec hl
    ld b, [hl]
    ld d, c
    ld e, a
    ld a, [$eff7]

jr_04e_5d69:
    xor $9f
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld c, d
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld d, c
    ld a, $48
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
    xor $54
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    inc h
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, c
    ld c, h
    ld d, c
    ld b, d
    ld h, d
    or [hl]
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
    scf
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld d, d
    ld a, $4f
    ld b, c
    ld b, [hl]
    ld a, $4b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $29
    ld d, d
    ld c, e
    ld c, b
    ld d, [hl]
    dec h
    ld b, [hl]
    ld c, a
    ld b, c
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
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld b, b
    ld c, h
    ld c, e
    ld b, e
    ld d, d
    ld d, b
    ld b, d
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld d, [hl]
    ld h, d
    ld b, c
    ld a, $4b
    ld b, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    inc sp
    ld a, $4b
    ld b, [hl]
    daa
    ld a, $4b
    ld b, b
    ld b, d
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
    ld h, [hl]
    ld c, c
    ld h, d
    ld c, e
    ld b, d
    ld b, d
    ld b, c
    ld h, d
    ld a, $ef
    xor $36
    ld c, b
    ld d, [hl]
    dec h
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, b
    ld d, d
    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
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
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
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
    xor $3f
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $3a
    ld b, [hl]
    ld d, b
    ld b, c
    ld c, h
    ld c, d
    ld h, h
    rst $38
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
    rst $28
    xor $29
    ld a, $40
    ld b, d
    ld c, a
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $37
    ld c, h
    ld c, e
    ld b, h
    ld d, d
    ld b, d
    ld c, c
    ld c, c
    ld a, $50
    ld e, [hl]
    rst $28
    xor $29
    ld c, c
    ld c, h
    ld c, a
    ld a, $47
    ld a, $56
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $33
    ld d, c
    ld b, d
    ld c, a
    ld a, $4b
    ld c, h
    ld b, c
    ld d, b
    ld e, [hl]
    rst $28
    xor $3e
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $9f
    and e
    inc h
    ld c, a
    ld c, d
    ld c, h
    ld c, a
    inc sp
    ld b, d
    ld b, c
    ld b, d
    ld d, b
    rst $28
    xor $49
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    add hl, hl
    ld c, c
    ld c, h
    ld c, a
    ld a, $47
    ld a, $56
    ld d, b
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    rst $28
    xor $25
    ld b, d
    ld a, $50
    ld d, c
    ld h, $52
    ld d, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld d, d
    ld a, $4f
    ld b, c
    ld b, [hl]
    ld a, $4b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $36
    ld c, b
    ld d, [hl]
    daa
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld e, a
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
    ld [hl], $40
    ld c, h
    ld c, a
    ld b, b
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $4d
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld b, e
    ld d, d
    ld c, c
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld c, d
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld d, c
    ld a, $48
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
    xor $43
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld [hl-], a
    ccf
    ld b, a
    ld b, d
    ld b, b
    ld d, c
    ld d, b
    rst $28
    xor $4c
    ld c, a
    ld h, d
    daa
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld d, b
    ld a, [$eff7]
    xor $43
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
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
    xor $51
    ld c, h
    ld h, d
    ld b, l
    ld b, d
    ld a, $4f
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $2a
    ld a, $51
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    dec hl
    ld a, $4d
    ld c, l
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld d, b
    ld h, h
    rst $28
    xor $ff
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
    rst $28
    xor $32
    ld c, e
    ld b, [hl]
    ld c, h
    ld c, e
    ld c, h
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $2a
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    ld b, b
    ld a, $41
    ld a, $50
    ld e, [hl]
    rst $28
    xor $33
    ld b, [hl]
    ld d, l
    ld d, [hl]
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $2a
    ld a, $50
    ld b, h
    ld c, h
    ld c, e
    ld d, b
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    daa
    ld b, d
    ld a, $41
    ld sp, $5146
    ld b, d
    ld d, b
    ld e, [hl]
    rst $28
    xor $36
    ld d, c
    ld d, d
    ccf
    dec h
    ld b, [hl]
    ld c, a
    ld b, c
    ld d, b
    ld e, [hl]
    ld h, d
    ld a, $4b
    ld b, c
    ld a, [$eff7]
    xor $36
    ld c, l
    ld b, [hl]
    ld c, b
    ld d, [hl]
    dec h
    ld c, h
    ld d, [hl]
    ld d, b
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl+]
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    ld b, b
    ld a, $41
    ld b, d
    ld d, b
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    rst $28
    xor $25
    ld b, d
    ld a, $51
    ld e, a
    ld h, d
    ld a, [hl+]
    ld b, d
    ld d, c
    ld l, [hl]
    ld c, d
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, e
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld d, [hl]
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld d, d
    ld a, $4f
    ld b, c
    ld b, [hl]
    ld a, $4b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $2d
    ld a, $4a
    ld b, [hl]
    ld c, a
    ld d, d
    ld d, b
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
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
    ld b, e
    ld c, h
    ld c, a
    rst $28
    xor $46
    ld d, c
    ld d, b
    ld h, d
    inc [hl]
    ld d, d
    ld a, $41
    dec hl
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
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
    xor $3f
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    rst $28
    xor $4c
    ld b, e
    ld h, d
    scf
    ld b, d
    ld c, d
    ld c, l
    ld d, c
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, h
    rst $38
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
    rst $28
    xor $36
    ld c, l
    ld b, [hl]
    ld c, b
    ld d, [hl]
    dec h
    ld c, h
    ld d, [hl]
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, $4c
    ccf
    ld c, a
    ld a, $50
    ld e, [hl]
    rst $28
    xor $30
    ld c, h
    ld c, d
    ld c, d
    ld c, h
    ld c, e
    ld b, a
    ld a, $50
    ld e, [hl]
    ld a, [$eff7]
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld sp, $5146
    ld b, d
    ld d, b
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld [hl], $51
    ld a, $44
    dec h
    ld d, d
    ld b, h
    ld d, b
    ld e, [hl]
    rst $28
    xor $30
    ld b, [hl]
    ld d, b
    ld d, c
    ld d, [hl]
    ld a, [hl-]
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld e, [hl]
    ld h, d
    ld a, $4b
    ld b, c
    ld a, [$eff7]
    xor $27
    ld a, $4f
    ld c, b
    jr z, jr_04e_61fe

    ld b, d
    ld d, b
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld l, $46
    ld c, e
    ld b, h
    ld h, $4c
    ccf
    ld c, a
    ld a, $50
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    rst $28
    xor $3e
    ld h, d
    ld c, l
    ld c, h
    ld b, [hl]
    ld d, b
    ld c, h
    ld c, e
    ld c, h
    ld d, d
    ld d, b
    ld a, [$eff7]
    xor $3e
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc sp
    ld a, $49
    ld d, b
    ld d, [hl]
    inc h
    ld b, [hl]
    ld c, a
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $27
    ld a, $4f
    ld c, b

jr_04e_61fe:
    jr z, jr_04e_6256

    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld a, [$eff7]
    xor $4d
    ld a, $4f
    ld a, $49
    ld d, [hl]
    ld d, a
    ld b, d
    ld h, d
    ld a, $49
    ld c, c
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
    ld d, c
    ld a, $48
    ld b, d
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
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld a, [$eff7]
    xor $31
    ld d, d
    ld c, d
    ccf
    ld [hl-], a
    ld b, e
    ld b, e
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
    ld h, d

jr_04e_6256:
    ld b, h
    ld d, d
    ld a, $4f
    ld b, c
    ld b, [hl]
    ld a, $4b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $36
    ld b, d
    ld c, a
    ld d, e
    ld a, $4b
    ld d, c
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
    ld a, $49
    ld d, h
    ld a, $56
    ld d, b
    rst $28
    xor $50
    ld b, l
    ld c, h
    ld d, h
    ld d, b
    ld h, d
    ld d, d
    ld c, l
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld a, [$eff7]
    xor $26
    ld b, d
    ld c, e
    ld d, c
    ld a, $50
    ld a, $52
    ld c, a
    ld h, d
    ld a, $4b
    ld b, c
    rst $28
    xor $28
    ld d, e
    ld b, [hl]
    ld c, c
    inc h
    ld c, a
    ld c, d
    ld c, h
    ld c, a
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    dec hl
    ld c, h
    ld c, a
    ld c, b
    rst $28
    xor $41
    ld c, h
    ld d, h
    ld c, e
    ld d, b
    ld d, c
    ld a, $46
    ld c, a
    ld d, b
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    ld d, b
    ld a, [$eff7]
    xor $51
    ld c, h
    ld h, d
    ld c, c
    ld b, d
    ld a, $4f
    ld c, e
    ld h, d
    add hl, sp
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld b, e
    ld d, [hl]
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
    ld b, [hl]
    ld d, c
    ld l, b
    rst $28
    xor $46
    ld c, d
    ld c, l
    ld c, h
    ld d, b
    ld d, b
    ld b, [hl]
    ccf
    ld c, c
    ld b, d
    ld h, e
    ld h, d
    ld a, [hl-]
    ld b, l
    ld d, [hl]
    ld h, h
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld c, h
    ld b, c
    ld a, $56
    ld l, b
    ld h, d
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld d, d
    ld c, a
    ld b, d
    rst $28
    xor $46
    ld d, b
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld b, l
    ld c, h
    ld d, h
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $46
    ld c, e
    ld b, l
    ld b, d
    ld c, a
    ld b, [hl]
    ld d, c
    ld h, d
    ld d, b
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld e, a
    rst $28
    xor $3a
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    rst $38
    ldh a, [$ea]
    sbc a
    and e
    jr nc, jr_04e_63a3

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld b, b
    ld a, $4b
    rst $28
    xor $46
    ld c, e
    ld b, l
    ld b, d
    ld c, a
    ld b, [hl]
    ld d, c
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $50
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $4d
    ld a, $4f
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld d, [hl]
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ld c, c
    ld b, d
    ld a, $4f
    ld c, e

jr_04e_63a3:
    rst $28
    xor $50
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $44
    ld c, a
    ld a, $4b
    ld b, c
    ld c, l
    ld a, $4f
    ld b, d
    ld c, e
    ld d, c
    ld d, b
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
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld a, $49
    ld c, c
    rst $28
    xor $50
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $44
    ld c, a
    ld a, $4b
    ld b, c
    ld c, l
    ld a, $4f
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    rst $28
    xor $40
    ld a, $4b
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld c, c
    ld b, d
    ld a, $4f
    ld c, e
    ld b, d
    ld b, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld c, e
    ld h, d
    ld b, e
    ld a, $40
    ld d, c
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld d, [hl]
    rst $28
    xor $46
    ld c, e
    ld b, l
    ld b, d
    ld c, a
    ld b, [hl]
    ld d, c
    ld h, d
    ld c, h
    ld c, e
    ld c, c
    ld d, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $50
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    rst $28
    xor $4d
    ld a, $4f
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld h, d
    ld c, c
    ld b, d
    ld a, $4f
    ld c, e
    ld b, d
    ld b, c
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    ld b, d
    ld d, l
    ld c, l
    ld c, c
    ld a, $46
    ld c, e
    rst $28
    xor $52
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    dec hl
    ld c, h
    ld c, a
    ld c, b
    ld a, [$eff7]
    xor $41
    ld c, h
    ld d, h
    ld c, e
    ld d, b
    ld d, c
    ld a, $46
    ld c, a
    ld d, b
    ld h, d
    ld a, $50
    rst $28
    xor $3e
    ld c, e
    ld h, d
    ld b, d
    ld d, l
    ld a, $4a
    ld c, l
    ld c, c
    ld b, d
    ld e, a
    rst $38
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld d, c
    ld d, b
    ld h, d
    ld c, l
    ld a, $4f
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld h, d
    ld c, h
    ld c, e
    ld c, c
    ld d, [hl]
    rst $28
    xor $49
    ld b, d
    ld a, $4f
    ld c, e
    ld b, d
    ld b, c
    ld h, d
    dec hl
    ld b, d
    ld a, $49
    ld e, [hl]
    ld a, [$eff7]
    xor $9f
    and e
    ld a, $4a
    ld c, h
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    rst $28
    xor $46
    ld d, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld b, l
    ld b, d
    ld c, a
    ld b, [hl]
    ld d, c
    ld b, d
    ld b, c
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld a, [$eff7]
    xor $2a
    ld c, a
    ld a, $4b
    ld b, c
    ld c, l
    ld a, $5f
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
    ld c, l
    ld a, $4f
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    rst $28
    xor $40
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld l, h
    ld b, d
    ld h, d
    ld c, c
    ld b, d
    ld a, $4f
    ld c, e
    ld b, d
    ld b, c
    ld a, [$eff7]
    xor $39
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld b, e
    ld d, [hl]
    ld e, [hl]
    ld h, d
    ccf
    ld d, d
    ld d, c
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld d, c
    ld h, d
    ld d, h
    ld a, $50
    ld h, d
    ccf
    ld c, a
    ld b, d
    ld b, c
    rst $28
    xor $3f
    ld b, d
    ld b, e
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld d, [hl]
    ld a, [$eff7]
    xor $49
    ld b, d
    ld a, $4f
    ld c, e
    ld b, d
    ld b, c
    ld h, d
    add hl, sp
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld b, e
    ld d, [hl]
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    scf
    ld b, l
    ld d, d
    ld d, b
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    dec hl
    ld c, h
    ld c, a
    ld c, b
    rst $28
    xor $45
    ld b, d
    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $9f
    and e
    ld b, b
    ld a, $4b
    ld h, d
    ld c, h
    ld c, e
    ld c, c
    ld d, [hl]
    ld h, d
    ld c, c
    ld b, d
    ld a, $4f
    ld c, e
    rst $28
    xor $2b
    ld b, d
    ld a, $49
    ld e, [hl]
    ld h, d
    ld b, [hl]
    ld e, a
    ld b, d
    ld e, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $50
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld l, b
    ld h, d
    ld c, l
    ld a, $4f
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    rst $28
    xor $49
    ld b, d
    ld a, $4f
    ld c, e
    ld b, d
    ld b, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld d, c
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
    add hl, sp
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld b, e
    ld d, [hl]
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld e, a
    ld e, a
    ld e, a
    ccf
    ld b, d
    ld b, b
    ld a, $52
    ld d, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld l, b
    rst $28
    xor $4d
    ld a, $4f
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld h, d
    ld b, c
    ld b, [hl]
    ld b, c
    ld c, e
    ld h, a
    ld a, [$eff7]
    xor $49
    ld b, d
    ld a, $4f
    ld c, e
    ld h, d
    add hl, sp
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld b, e
    ld d, [hl]
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld h, d
    ld d, c
    ld c, h
    ld c, h
    ld c, b
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld b, d
    ld d, b
    rst $28
    xor $4c
    ld c, e
    ld h, d
    ld b, l
    ld c, h
    ld d, h
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, b
    ld b, l
    ld a, $4b
    ld b, h
    ld b, d
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld a, $ef
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl-]
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld a, $48
    ld b, d
    ld h, d
    ld a, $ef
    xor $49
    ld c, h
    ld c, h
    ld c, b
    ld h, h
    rst $38
    ldh a, [$f6]
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
    ld c, e
    ld c, h
    ld d, c
    ld b, d
    ccf
    ld c, h
    ld c, h
    ld c, b
    ld e, a
    ld a, [$eff7]
    xor $a3
    ld a, [hl-]
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    rst $28
    xor $4c
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, l
    ld b, d
    ld b, c
    ld b, [hl]
    ld b, h
    ld c, a
    ld b, d
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
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
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, h
    ld d, c
    ld b, l
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
    ld a, [$eff7]
    xor $3e
    ld c, a
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld a, $4a
    ld b, d
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $a3
    inc l
    ld c, e
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
    ld e, [hl]
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld a, $4a
    ld b, d
    ld h, d
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, c
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
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    rst $28
    xor $3f
    ld c, h
    ld c, a
    ld c, e
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
    ld b, b
    ld b, l
    ld a, $4b
    ld b, h
    ld b, d
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld b, d
    ld c, e
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
    xor $42
    ld b, h
    ld b, h
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    rst $28
    xor $4a
    ld a, $51
    ld b, b
    ld b, l
    ld e, a
    ld a, [$eff7]
    xor $a3
    scf
    ld a, $48
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, d
    ld b, h
    ld b, h
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    jr z, jr_04e_67b7

    ld b, h
    ld a, [$eff7]
    xor $26
    ld c, h
    ld c, e
    ld d, b
    ld d, d
    ld c, c
    ld d, c
    ld a, $4b
    ld d, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $a3
    scf
    ld b, l
    ld b, d
    ld d, [hl]
    ld h, d
    ld b, b
    ld a, $4b
    rst $28
    xor $3f
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld a, $4b
    ld b, c
    ld a, [$eff7]
    xor $40
    ld b, l
    ld a, $4b
    ld b, h
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld e, a
    rst $28

jr_04e_67b7:
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld h, d
    ld d, c
    ld c, h
    ld c, h
    ld c, b
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld b, d
    ld d, b
    rst $28
    xor $4c
    ld c, e
    ld h, d
    ld b, l
    ld c, h
    ld d, h
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, b
    ld a, $51
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld e, a
    ld h, d
    ld a, [hl-]
    ld a, $4b
    ld c, e
    ld a, $ef
    xor $51
    ld a, $48
    ld b, d
    ld h, d
    ld a, $62
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld h, h
    rst $38
    ldh a, [$ea]
    sbc a
    and e
    add hl, hl
    ld c, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld c, e
    ld h, d
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    rst $28
    xor $45
    ld a, $53
    ld b, d
    ld h, d
    ld c, c
    ld c, h
    ld d, c
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld d, b
    ld a, [$eff7]
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
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    cpl
    ld b, [hl]
    ld c, b
    ld b, d
    ld e, [hl]
    ld h, d
    cpl
    ld a, $53
    ld a, $30
    ld a, $4b
    ld e, [hl]
    rst $28
    xor $2c
    ld b, b
    ld b, d
    jr nc, @+$40

    ld c, e
    ld e, [hl]
    ld a, [$eff7]
    xor $9f
    and e
    jr c, jr_04e_68a5

    ld b, [hl]
    ld b, b
    ld c, h
    ld c, a
    ld c, e
    ld e, [hl]
    rst $28
    xor $30
    ld b, d
    ld d, c
    ld a, $49
    ld d, [hl]
    ld e, [hl]
    ld a, [$eff7]
    xor $37
    ld c, h
    ld c, a
    ld d, c
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld e, [hl]
    rst $28
    xor $3e
    ld c, e
    ld b, c
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $2f
    ld a, $3f
    ld d, [hl]
    ld c, a
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, l
    ld e, a
    ld h, d
    ld a, [hl-]
    ld a, $4b
    ld d, c
    ld h, d

jr_04e_68a5:
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $49
    ld b, d
    ld a, $4f
    ld c, e
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, h
    rst $28
    xor $ff
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
    rst $28
    xor $35
    ld c, h
    ld b, b
    ld c, b
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $26
    ld b, l
    ld a, $4a
    ld b, d
    ld c, c
    ld b, h
    ld c, h
    ld c, e
    ld d, b
    ld e, [hl]
    rst $28
    xor $26
    ld a, $40
    ld d, c
    ld b, [hl]
    dec h
    ld a, $49
    ld c, c
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld a, $46
    ld c, c
    jr z, jr_04e_693d

    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld e, [hl]
    rst $28
    xor $27
    ld d, d
    ld b, b
    ld c, b
    ld l, $46
    ld d, c
    ld b, d
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $24
    ld b, h
    daa
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
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
    ld a, [hl-]
    ld b, [hl]
    ld c, e
    ld b, c
    jr nc, jr_04e_6971

    ld c, a
    ld b, h
    ld b, d
    ld d, b
    rst $28
    xor $49
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c

jr_04e_693d:
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld a, $46
    ld c, c
    jr z, jr_04e_698c

    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    rst $28
    xor $33
    ld c, h
    ld b, [hl]
    ld d, b
    ld c, h
    ld c, e
    inc h
    ld b, [hl]
    ld c, a
    ld e, [hl]
    ld a, [$eff7]
    xor $27
    ld d, d
    ld b, b
    ld c, b
    ld l, $46
    ld d, c
    ld b, d
    ld d, b
    ld h, d
    ld d, d

jr_04e_6971:
    ld d, b
    ld b, d
    rst $28
    xor $26
    ld d, d
    ld c, a
    ld d, b
    ld b, d
    ld e, [hl]
    ld a, [$eff7]
    xor $9f
    and e
    ld h, $3e
    ld d, c
    ld b, [hl]
    dec h
    ld a, $49
    ld c, c
    ld d, b
    ld h, d
    ld d, d

jr_04e_698c:
    ld d, b
    ld b, d
    rst $28
    xor $33
    ld a, $4f
    ld a, $49
    ld d, [hl]
    ld d, a
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld d, d
    ld a, $4f
    ld b, c
    ld b, [hl]
    ld a, $4b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $27
    ld a, $4f
    ld c, b
    dec hl
    ld c, h
    ld c, a
    ld c, e
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
    ccf
    ld c, c
    ld c, h
    ld b, b
    ld c, b
    ld d, b
    rst $28
    xor $50
    ld c, l
    ld b, d
    ld c, c
    ld c, c
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld a, [$eff7]
    xor $36
    ld d, c
    ld c, h
    ld c, l
    ld [hl], $4d
    ld b, d
    ld c, c
    ld c, c
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
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
    xor $3f
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    rst $28
    xor $4c
    ld b, e
    ld h, d
    dec l
    ld d, d
    ld b, c
    ld b, h
    ld c, d
    ld b, d
    ld c, e
    ld d, c
    ld h, h
    rst $38
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
    rst $28
    xor $3a
    ld b, d
    ld b, d
    ld b, c
    dec h
    ld d, d
    ld b, h
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $2b
    ld a, $4a
    ld c, d
    ld b, d
    ld c, a
    jr nc, jr_04e_6a9f

    ld c, e
    ld e, [hl]
    rst $28
    xor $30
    ld a, $41
    ld a, [hl+]
    ld b, d
    ld b, d
    ld d, b
    ld b, d
    ld e, [hl]
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld c, a
    ld b, d
    ld b, d
    dec h
    ld c, h
    ld d, [hl]
    ld d, b
    ld e, [hl]
    ld h, d
    ld a, $4f
    ld b, d
    rst $28
    xor $36
    ld c, l
    ld c, h
    ld d, c
    ld l, $46
    ld c, e
    ld b, h
    ld d, b
    ld e, [hl]
    ld h, d
    daa
    ld c, a
    ld c, h
    ld c, c
    ld c, c
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $2f
    ld b, [hl]
    ld d, a
    ld a, $4f
    ld b, c
    add hl, hl
    ld c, c
    ld d, [hl]
    ld d, b

jr_04e_6a9f:
    ld e, [hl]
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
    ld a, [hl+]
    ld b, [hl]
    ld a, $4b
    ld d, c
    jr nc, jr_04e_6aff

    ld d, c
    ld b, l
    ld d, b
    rst $28
    xor $49
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    dec h
    ld b, d
    ld d, h
    ld a, $4f
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $28
    ld d, e
    ld b, [hl]
    ld c, c
    ld [hl], $49
    ld a, $50
    ld b, l
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $2b
    ld a, $4a
    ld c, d
    ld b, d
    ld c, a
    jr nc, jr_04e_6b34

    ld c, e
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

jr_04e_6aff:
    ld h, d
    ld b, h
    ld d, d
    ld c, a
    ld a, $41
    ld b, [hl]
    ld a, $4b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $4b
    ld a, [$eff7]
    xor $24
    ld c, b
    ld d, d
    ccf
    ld a, $4f
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
    ld d, d
    ld d, b
    ld b, d
    ld d, b
    rst $28
    xor $29
    ld c, h
    ld b, b

jr_04e_6b34:
    ld d, d
    ld d, b
    ld h, d
    ld a, $4b
    ld b, c
    ld a, [$eff7]
    xor $28
    ld d, l
    ld c, l
    ld c, c
    ld c, h
    ld b, c
    ld b, d
    ld d, c
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
    rst $28
    xor $49
    ld b, d
    ld a, $4f
    ld c, e
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $35
    ld b, d
    ld b, e
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, e
    ld h, h
    rst $38
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
    ld d, h
    ld a, $4b
    ld d, c
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld d, c
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld c, b
    rst $28
    xor $28
    ld d, e
    ld b, [hl]
    ld c, c
    dec h
    ld b, d
    ld a, $50
    ld d, c
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $36
    ld b, l
    ld a, $41
    ld c, h
    ld d, h
    ld d, b
    ld e, [hl]
    rst $28
    xor $28
    ld d, e
    ld b, [hl]
    ld c, c
    ld a, [hl-]
    ld a, $4b
    ld b, c
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    dec h
    ld c, h
    ld c, a
    ld b, h
    ld d, b
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    cpl
    ld b, [hl]
    ld d, a
    ld a, $4f
    ld b, c
    jr nc, jr_04e_6c39

    ld c, e
    ld e, [hl]
    rst $28
    xor $2a
    ld c, a
    ld b, [hl]
    ld d, a
    ld d, a
    ld c, c
    ld d, [hl]
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, c
    ld h, d
    add hl, hl
    ld b, [hl]
    ld c, a
    ld b, d
    ld a, [hl-]
    ld b, d
    ld b, d
    ld b, c
    ld d, b
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld d, c
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
    ld c, a
    ld b, d
    ld c, d
    ld b, d
    ld c, d
    ccf
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    rst $28

jr_04e_6c39:
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
    ld d, c
    ld b, l
    ld a, $51
    ld a, [$eff7]
    xor $52
    ld d, b
    ld b, d
    ld d, b
    ld h, d
    inc sp
    ld a, $49
    ld d, b
    ld d, [hl]
    inc h
    ld b, [hl]
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
    ld b, h
    ld d, d
    ld a, $4f
    ld b, c
    ld b, [hl]
    ld a, $4b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld d, h
    ld a, $50
    ld h, d
    daa
    ld d, d
    ld c, a
    ld c, a
    ld a, $4b
    ld e, [hl]
    ld a, [$eff7]
    xor $4c
    ld c, a
    ld h, d
    ld d, b
    ld c, h
    ld c, d
    ld b, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $49
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
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
    ld d, h
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $3f
    ld b, d
    ld h, d
    ld c, a
    ld b, d
    ld c, d
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld b, c
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $51
    ld b, l
    ld a, $51
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
    rst $28
    xor $2a
    ld a, $51
    ld b, d
    ld e, a
    ld e, a
    ld e, a
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
    rst $28
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
    ld a, [$eff7]
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
    ld a, [hl+]
    ld a, $51
    ld b, d
    rst $28
    xor $4c
    ld b, e
    ld h, d
    dec [hl]
    ld b, d
    ld b, e
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, e
    ld h, h
    rst $38
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    ld h, d
    inc l
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
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
    ld c, d
    ld d, d
    ld b, b
    ld b, l
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
    inc l
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld c, b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld d, h
    ld b, d
    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $3a
    ld d, [hl]
    ld d, e
    ld b, d
    ld c, a
    ld c, e
    ld d, b
    ld e, [hl]
    rst $28
    xor $2f
    ld b, [hl]
    ld c, h
    ld c, e
    ld b, d
    ld d, l
    ld b, d
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $30
    ld a, $41
    dec hl
    ld c, h
    ld c, a
    ld c, e
    ld b, d
    ld d, c
    ld d, b
    ld e, [hl]
    rst $28
    xor $35
    ld c, h
    ld d, c
    dec [hl]
    ld a, $53
    ld b, d
    ld c, e
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $9f
    and e
    ld a, $4b
    ld b, c
    ld h, d
    dec l
    ld b, d
    ld d, h
    ld b, d
    ld c, c
    dec h
    ld a, $44
    ld d, b
    rst $28
    xor $49
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
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
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld c, b
    ld e, [hl]
    rst $28
    xor $30
    ld a, $41
    dec hl
    ld c, h
    ld c, a
    ld c, e
    ld b, d
    ld d, c
    ld d, b
    ld a, [$eff7]
    xor $3e
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    rst $28
    xor $4d
    ld c, h
    ld b, [hl]
    ld d, b
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, c
    ld h, d
    ld c, l
    ld a, $4f
    ld a, $49
    ld d, [hl]
    ld d, b
    ld b, [hl]
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
    scf
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld d, d
    ld a, $4f
    ld b, c
    ld b, [hl]
    ld a, $4b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld d, h
    ld a, $50
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $31
    ld c, h
    ld e, [hl]
    ld h, d
    inc l
    ld h, d
    ld b, b
    ld a, $4b
    ld c, e
    ld c, h
    ld d, c
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
    ld a, $ef
    xor $45
    ld b, d
    ld a, $41
    ld a, $40
    ld b, l
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $2f
    ld b, d
    ld a, $53
    ld b, d
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld a, $49
    ld c, h
    ld c, e
    ld b, d
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    scf
    ld d, d
    ld d, c
    ld e, [hl]
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld c, a
    ld b, d
    ld c, d
    ld b, [hl]
    ld c, e
    ld b, c
    rst $28
    xor $4a
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ccf
    ld a, $41
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld c, d
    ld c, h
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld e, [hl]
    inc l
    ld h, d
    ld d, c
    ld b, l
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $54
    ld b, d
    ld c, e
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld a, [$eff7]
    xor $4c
    ld b, e
    ld h, d
    dec [hl]
    ld b, d
    ld b, e
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
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
    ld h, e
    ld h, h
    ld h, d
    inc h
    ld c, a
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $4c
    ld c, b
    ld a, $56
    ld h, e
    ld h, h
    ld a, [$eff7]
    xor $9f
    and e
    ld e, a
    ld e, a
    ld e, a
    inc l
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld e, a
    ld h, d
    jr nc, jr_04e_6f33

    ld d, [hl]
    ccf
    ld b, d
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, [hl]
    ld c, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $53
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
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
    ld b, l
    ld a, $53
    ld b, d
    ld c, e
    ld h, a
    rst $28
    xor $53
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld d, c
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d

jr_04e_6f33:
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld a, [$eff7]
    xor $4c
    ld b, e
    ld h, d
    dec [hl]
    ld b, d
    ld b, e
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    rst $28
    xor $56
    ld b, d
    ld d, c
    ld e, a
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
    ld l, h
    ld b, d
    rst $28
    xor $3f
    ld b, d
    ld b, d
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, e
    ld h, h
    ld a, [$eff7]
    xor $3a
    ld b, l
    ld d, [hl]
    ld e, [hl]
    ld d, h
    ld b, l
    ld d, [hl]
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    rst $28
    xor $43
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld a, [$eff7]
    xor $9f
    and e
    dec hl
    ld c, d
    ld c, d
    ld c, d
    ld e, [hl]
    ld h, d
    inc l
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
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
    ld d, c
    ld e, a
    ld e, a
    ld e, a
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
    ld h, d
    ld a, $51
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $51
    ld c, h
    ld d, d
    ld c, a
    ld c, e
    ld a, $4a
    ld b, d
    ld c, e
    ld d, c
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc a
    ld c, h
    ld d, d
    ld e, [hl]
    ld h, d
    ld c, d
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ld c, h
    ccf
    ld b, d
    ld d, [hl]
    rst $28
    xor $4a
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld h, d
    ld a, $ef
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    cpl
    ld b, d
    ld c, h
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    dec h
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    cpl
    ld b, d
    ld c, h
    ld e, [hl]
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ccf
    ld b, d
    ld a, $50
    ld d, c
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld a, $50
    ld d, c
    ld d, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld e, [hl]
    ld h, d
    inc l
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    cpl
    ld b, d
    ld c, h
    ld h, e
    ld a, [$eff7]
    xor $2b
    ld c, h
    ld d, h
    ld h, d
    ld c, d
    ld a, $47
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, b
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
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
    xor $3e
    ld h, d
    ld c, a
    ld b, d
    ld d, h
    ld a, $4f
    ld b, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld d, c
    ld l, b
    ld h, d
    ld a, $62
    ld [hl], $4a
    ld a, $4f
    ld d, c
    dec h
    ld c, b
    rst $28
    xor $38
    ld d, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, b
    ld b, d
    ld c, c
    ld d, [hl]
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc a
    ld c, h
    ld d, d
    ld e, [hl]
    ld h, d
    ld c, d
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ld c, h
    ccf
    ld b, d
    ld d, [hl]
    rst $28
    xor $4a
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    dec h
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, d
    ld b, d
    rst $28
    xor $3e
    ld h, d
    dec [hl]
    ld a, $46
    ld c, e
    dec hl
    ld a, $54
    ld c, b
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    dec [hl]
    ld a, $46
    ld c, e
    dec hl
    ld a, $54
    ld c, b
    rst $28
    xor $51
    ld b, l
    ld a, $51
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld d, b
    ld h, d
    ld d, h
    ld b, l
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $43
    ld c, c
    ld a, $4a
    ld b, d
    ld h, d
    ld c, d
    ld b, d
    ld c, c
    ld d, c
    ld d, b
    ld h, d
    ld b, [hl]
    ld b, b
    ld b, d
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld e, [hl]
    ld h, d
    inc l
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $35
    ld a, $46
    ld c, e
    dec hl
    ld a, $54
    ld c, b
    ld h, e
    ld a, [$eff7]
    xor $3a
    ld b, l
    ld a, $51
    ld h, d
    ccf
    ld b, d
    ld a, $52
    ld d, c
    ld b, [hl]
    ld b, e
    ld d, d
    ld c, c
    rst $28
    xor $54
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld h, e
    ld a, [$eff7]
    xor $9f
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
    xor $3e
    ld h, d
    ld c, a
    ld b, d
    ld d, h
    ld a, $4f
    ld b, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld d, c
    ld l, b
    ld h, d
    ld a, $62
    dec h
    ld b, d
    ld sp, $4046
    ld b, d
    dec h
    ld l, $5f
    rst $28
    xor $38
    ld d, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, b
    ld b, d
    ld c, c
    ld d, [hl]
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
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
    ld c, h
    ccf
    ld b, d
    ld d, [hl]
    rst $28
    xor $4a
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    rst $28
    xor $3e
    ld c, e
    ld h, d
    inc h
    ld c, a
    ld c, d
    ld c, h
    ld c, a
    ld c, l
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc h
    ld c, a
    ld c, d
    ld c, h
    ld c, a
    ld c, l
    ld b, [hl]
    ld c, h
    ld c, e
    ld e, [hl]
    rst $28
    xor $51
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
    xor $4c
    ld b, e
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ccf
    ld d, d
    ld b, h
    ld d, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld h, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $24
    ld c, a
    ld c, d
    ld c, h
    ld c, a
    ld c, l
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, e
    ld a, [$eff7]
    xor $3a
    ld b, l
    ld a, $51
    ld h, d
    ld a, $62
    ld d, b
    ld b, b
    ld a, $4f
    ld d, [hl]
    rst $28
    xor $49
    ld c, h
    ld c, h
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld a, $46
    ld c, c
    ld h, e
    ld a, [$eff7]
    xor $9f
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
    xor $3e
    ld h, d
    ld c, a
    ld b, d
    ld d, h
    ld a, $4f
    ld b, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    inc [hl]
    ld d, d
    ld b, d
    ld d, b
    ld d, c
    dec h
    ld l, $5f
    rst $28
    xor $38
    ld d, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, b
    ld b, d
    ld c, c
    ld d, [hl]
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
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
    ld c, h
    ccf
    ld b, d
    ld d, [hl]
    rst $28
    xor $4a
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld h, d
    ld a, $ef
    xor $35
    ld c, h
    ld d, b
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld c, h
    ld d, d
    ld b, b
    ld b, l
    rst $28
    xor $51
    ld b, l
    ld c, h
    ld d, b
    ld b, d
    ld h, d
    ld d, b
    ld c, e
    ld a, $48
    ld d, [hl]
    ld h, d
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld d, c
    ld l, b
    ld h, d
    ld a, $ef
    xor $35
    ld c, h
    ld d, b
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, e
    ld h, d
    dec hl
    ld c, h
    ld d, h
    ld a, [$eff7]
    xor $50
    ld c, e
    ld a, $48
    ld d, [hl]
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
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
    xor $3e
    ld h, d
    ld c, a
    ld b, d
    ld d, h
    ld a, $4f
    ld b, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    inc l
    ld d, c
    ld l, b
    ld h, d
    ld a, $62
    cpl
    ld b, [hl]
    ld b, e
    ld b, d
    inc h
    ld b, b
    ld c, h
    ld c, a
    ld c, e
    ld e, a
    rst $28
    xor $38
    ld d, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, b
    ld b, d
    ld c, c
    ld d, [hl]
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
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
    ld c, h
    ccf
    ld b, d
    ld d, [hl]
    rst $28
    xor $4a
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld h, d
    ld a, $ef
    xor $2a
    ld c, h
    ld c, c
    ld b, c
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, d
    ld c, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, c
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, d
    ld c, d
    ld e, [hl]
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    jr nc, jr_04e_73fb

    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld a, $49
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $30
    ld a, $51
    ld b, d
    ld c, a
    ld b, [hl]
    ld a, $49
    ld d, b
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld d, c
    ld l, b
    ld h, d
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, c
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, d
    ld c, d
    ld h, e
    rst $28
    xor $2c
    ld h, d
    ld b, b
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ccf
    ld b, d
    ld h, d
    ccf
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, c

jr_04e_73fb:
    ld b, d
    ld b, c
    ld a, [$eff7]
    xor $3f
    ld d, [hl]
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld b, h
    ld c, h
    ld c, c
    ld b, c
    ld h, d
    ld d, b
    ld b, l
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
    xor $3e
    ld h, d
    ld c, a
    ld b, d
    ld d, h
    ld a, $4f
    ld b, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld d, c
    ld l, b
    ld h, d
    ld a, $ef
    xor $37
    ld b, [hl]
    ld c, e
    ld d, [hl]
    jr nc, jr_04e_7497

    ld b, c
    ld a, $49
    ld e, a
    ld a, [$eff7]
    xor $38
    ld d, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, b
    ld b, d
    ld c, c
    ld d, [hl]
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
    ld c, d
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ld c, h
    ccf
    ld b, d
    ld d, [hl]
    rst $28
    xor $4a
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld b, d
    ld b, d

jr_04e_7497:
    ld h, d
    ld a, $ef
    xor $27
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, d
    ld b, h
    ld c, h
    ld c, e
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    daa
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $27
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld a, [$eff7]
    xor $44
    ld c, h
    ld b, c
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld d, c
    ld l, b
    rst $28
    xor $27
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, d
    ld b, h
    ld c, h
    ld c, e
    ld h, e
    ld a, [$eff7]
    xor $2b
    ld c, h
    ld d, h
    ld h, d
    ld c, e
    ld c, h
    ccf
    ld c, c
    ld b, d
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
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
    xor $3e
    ld h, d
    ld c, a
    ld b, d
    ld d, h
    ld a, $4f
    ld b, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld d, c
    ld l, b
    ld h, d
    ld a, $ef
    xor $37
    ld b, [hl]
    ld c, e
    ld d, [hl]
    jr nc, @+$44

    ld b, c
    ld a, $49
    ld e, a
    ld a, [$eff7]
    xor $38
    ld d, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, b
    ld b, d
    ld c, c
    ld d, [hl]
    ld e, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    or $5e
    ld h, d
    ld c, d
    ld d, [hl]
    rst $28
    xor $45
    ld b, d
    ld a, $4f
    ld d, c
    ld d, b
    ld h, d
    ld b, b
    ld c, h
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld d, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld l, b
    rst $28
    xor $4b
    ld c, h
    ld h, d
    ld c, h
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld h, d
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $54
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld e, a
    ld e, a
    ld e, a
    ld h, d
    jr nc, jr_04e_75f4

    ld d, [hl]
    ccf
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld l, b
    rst $28
    xor $51
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, h
    ld c, h
    ld a, [$eff7]
    xor $3f
    ld a, $40
    ld c, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $40
    ld a, $50
    ld d, c
    ld c, c
    ld b, d
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld b, d
    ld c, a
    ld h, d
    jr nc, jr_04e_7631

    ld b, a

jr_04e_75f4:
    ld b, d
    ld d, b
    ld d, c
    ld d, [hl]
    ld e, [hl]
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    inc [hl]
    ld d, d
    ld b, d
    ld b, d
    ld c, e
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $2a
    ld c, a
    ld b, d
    ld a, $51
    scf
    ld c, a
    ld b, d
    ld b, d
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
    ld b, l
    ld b, d
    ld c, a
    ld h, d
    ld b, h
    ld d, d
    ld b, d
    ld d, b
    ld d, c
    ld e, [hl]
    rst $28
    xor $30
    ld b, [hl]
    ld b, b
    ld c, b

jr_04e_7631:
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    dec hl
    ld b, d
    ld c, a
    ld h, d
    jr nc, jr_04e_767c

    ld b, a
    ld b, d
    ld d, b
    ld d, c
    ld d, [hl]
    rst $28
    xor $41
    ld b, d
    ld d, b
    ld b, [hl]
    ld c, a
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $3e
    ld h, d
    ld a, [hl-]
    ld b, [hl]
    ld c, e
    ld b, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld b, e
    ld h, d
    ld a, $62
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $3f
    ld c, a
    ld b, d
    ld b, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l

jr_04e_767c:
    ld h, d
    ld a, $62
    ccf
    ld b, [hl]
    ld c, a
    ld b, c
    ld e, [hl]
    ld a, [$eff7]
    xor $4d
    ld b, d
    ld c, a
    ld b, l
    ld a, $4d
    ld d, b
    ld h, d
    ld a, $ef
    xor $3a
    ld b, [hl]
    ld c, e
    ld b, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    ld a, [$eff7]
    xor $25
    ld c, h
    ld c, a
    ld c, e
    and h
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld b, d
    ld c, a
    ld h, d
    jr nc, @+$40

    ld b, a
    ld b, d
    ld d, b
    ld d, c
    ld d, [hl]
    rst $28
    xor $41
    ld b, d
    ld d, b
    ld b, [hl]
    ld c, a
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $3e
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
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
    ld b, d
    ld a, $4f
    ld b, c
    rst $28
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, d
    ld b, b
    ld a, $4b
    ld a, [$eff7]
    xor $52
    ld d, b
    ld b, d
    ld h, d
    add hl, sp
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld b, e
    ld d, [hl]
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld b, d
    ld c, a
    ld h, d
    jr nc, jr_04e_7751

    ld b, a
    ld b, d
    ld d, b
    ld d, c
    ld d, [hl]
    rst $28
    xor $41
    ld b, d
    ld d, b
    ld b, [hl]
    ld c, a
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $3e
    ld h, d
    add hl, hl
    ld c, c
    ld c, h
    ld c, a
    ld a, $47
    ld a, $56
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
    ld b, d
    ld a, $4f
    ld b, c
    rst $28
    xor $29
    ld c, c
    ld c, h
    ld c, a
    ld a, $47
    ld a, $56
    ld d, b
    ld h, d
    ld b, b
    ld a, $4b
    ld a, [$eff7]

jr_04e_7751:
    xor $50
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    cpl
    ld b, [hl]
    ld b, e
    ld b, d
    ld [hl], $4c
    ld c, e
    ld b, h
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld b, d
    ld c, a
    ld h, d
    jr nc, @+$40

    ld b, a
    ld b, d
    ld d, b
    ld d, c
    ld d, [hl]
    rst $28
    xor $41
    ld b, d
    ld d, b
    ld b, [hl]
    ld c, a
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $3e
    ld h, d
    ld h, $52
    ld c, a
    ld d, b
    ld b, d
    cpl
    ld a, $4a
    ld c, l
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
    ld b, d
    ld a, $4f
    ld b, c
    rst $28
    xor $26
    ld d, d
    ld c, a
    ld d, b
    ld b, d
    cpl
    ld a, $4a
    ld c, l
    ld d, b
    ld h, d
    ld a, $4f
    ld b, d
    ld a, [$eff7]
    xor $46
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    jr nc, jr_04e_77f5

    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld a, $49
    rst $28
    xor $43
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld l, d
    ld h, d
    jr nc, jr_04e_7816

    ld b, b
    ld c, b
    ld e, a
    rst $28
    xor $37
    ld b, l
    ld c, h
    ld d, b
    ld b, d
    ld h, d
    ld b, b
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, [hl]
    ld h, d
    ld b, e
    ld a, $4b
    ld d, b
    ld a, [$eff7]
    xor $3e
    ld c, a
    ld b, d
    ld h, d
    ld a, $4b
    ld c, e
    ld c, h
    ld d, [hl]
    ld b, [hl]
    ld c, e

jr_04e_77f5:
    ld b, h
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    dec h
    ld c, a
    ld b, d
    ld b, d
    ld b, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ccf
    ld b, d
    ld d, c
    ld d, h
    ld b, d
    ld b, d
    ld c, e
    rst $28
    xor $54
    ld b, d
    ld a, $48
    ld c, c

jr_04e_7816:
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld a, [$eff7]
    xor $52
    ld d, b
    ld b, d
    ld b, e
    ld d, d
    ld c, c
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
    ccf
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $3f
    ld c, a
    ld b, d
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld c, a
    ld a, $46
    ld c, e
    ld b, d
    ld b, c
    ld a, [$eff7]
    xor $4a
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
    dec hl
    inc sp
    ld e, [hl]
    ld h, d
    jr nc, jr_04e_789e

    ld e, [hl]
    ld h, d
    ld a, $4b
    ld b, c
    rst $28
    xor $4c
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld h, d
    ld d, e
    ld a, $49
    ld d, d
    ld b, d
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, e
    ld b, d
    ld d, h
    ccf
    ld c, h
    ld c, a
    ld c, e
    ld d, b
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, $4f
    ld b, d
    ld h, d

jr_04e_789e:
    ld b, c
    ld b, d
    ld d, c
    ld b, d
    ld c, a
    ld c, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld b, c
    rst $28
    xor $3f
    ld d, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, $53
    ld b, d
    ld c, a
    ld a, $44
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, a
    ld h, d
    ld c, l
    ld a, $4f
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld e, h
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, e
    ld b, d
    ld d, h
    ccf
    ld c, h
    ld c, a
    ld c, e
    ld d, b
    rst $28
    xor $45
    ld a, $53
    ld b, d
    ld h, d
    ld a, $62
    ld b, l
    ld b, [hl]
    ld b, h
    ld b, l
    ld h, d
    dec hl
    inc sp
    ld e, [hl]
    ld a, [$eff7]
    xor $30
    inc sp
    ld e, [hl]
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    ld c, h
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    rst $28
    xor $53
    ld a, $49
    ld d, d
    ld b, d
    ld d, b
    ld h, d
    ld a, $51
    ld h, d
    ld c, c
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld h, d
    ld bc, $fa5e
    rst $30
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, e
    ld b, d
    ld d, h
    ccf
    ld c, h
    ld c, a
    ld c, e
    ld d, b
    ld h, d
    ld b, b
    ld a, $4b
    rst $28
    xor $4e
    ld d, d
    ld b, [hl]
    ld b, b
    ld c, b
    ld c, c
    ld d, [hl]
    ld h, d
    ld b, [hl]
    ld c, e
    ld c, a
    ld b, d
    ld a, $50
    ld b, d
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, a
    ld h, d
    ld c, c
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld d, b
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld [hl], $4c
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, d
    ld d, d
    ld b, b
    ld b, l
    rst $28
    xor $3f
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld a, $4b
    ld a, [$eff7]
    xor $50
    ld d, c
    ld a, $4f
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    rst $28
    xor $49
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld h, d
    ld bc, $5462
    ld b, [hl]
    ld d, c
    ld b, l
    ld a, [$eff7]
    xor $49
    ld c, h
    ld d, h
    ld h, d
    ld d, e
    ld a, $49
    ld d, d
    ld b, d
    ld d, b
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld b, d
    ld c, a
    ld h, d
    jr nc, jr_04e_79ef

    ld b, a
    ld b, d
    ld d, b
    ld d, c
    ld d, [hl]
    rst $28
    xor $41
    ld b, d
    ld d, b
    ld b, [hl]
    ld c, a
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $3a
    ld b, [hl]
    ld c, c
    ld b, c
    inc h
    ld c, l
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld h, d
    ld d, h
    ld b, l
    ld a, $51
    rst $28
    xor $54
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
    ld h, d

jr_04e_79ef:
    ld b, [hl]
    ld b, e
    ld a, [$eff7]
    xor $3e
    ld h, d
    ld a, [hl-]
    ld b, [hl]
    ld c, c
    ld b, c
    inc h
    ld c, l
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $46
    ld c, e
    ccf
    ld c, a
    ld b, d
    ld b, c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
