; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04b", ROMX[$4000], BANK[$4b]

    ld c, e
    adc c
    ld b, b
    and c
    ld b, b
    cp c
    ld b, b
    add hl, bc
    ld b, b
    pop de
    ld b, b
    ld c, $42
    ret nz

    ld b, d
    jr z, jr_04b_4054

    ld h, l
    ld b, e

Call_04b_4013:
    call $af43
    ld b, h
    ld [$c844], a
    ld b, l
    sbc $45
    rla
    ld b, [hl]
    ld c, d
    ld b, [hl]
    ld l, b
    ld b, [hl]
    and [hl]
    ld b, [hl]
    ldh a, [rDMA]
    sbc e
    ld b, a
    jr jr_04b_4073

    cp e
    ld c, b
    xor d
    ld c, c
    ld c, c
    ld c, d
    adc l

Call_04b_4032:
    ld c, d
    cp e
    ld c, d
    cpl
    ld c, e
    sbc a
    ld c, e
    ld c, $4d
    nop
    ld c, [hl]
    inc h
    ld c, [hl]
    inc a
    ld c, [hl]
    or e
    ld c, [hl]
    ld hl, sp+$4e
    ld d, e
    ld c, a
    add hl, sp
    ld d, b
    add hl, de
    ld d, c
    sub c
    ld d, c
    ld l, b
    ld d, d
    adc l
    ld d, d
    ret nc

    ld d, d
    dec d

jr_04b_4054:
    ld d, e
    cp c
    ld d, e
    sub b
    ld d, h
    ldh [rHDMA4], a
    db $10
    ld d, l
    ld [hl], h
    ld d, l
    and h
    ld d, l
    ld b, $56
    sbc d
    ld d, [hl]
    sbc h
    ld d, a
    dec [hl]
    ld e, b
    or a
    ld e, c
    sub h
    ld e, e
    xor l
    ld e, h
    ld b, [hl]
    ld e, l
    nop
    ld e, [hl]

jr_04b_4073:
    ld a, d
    ld e, [hl]
    inc c
    ld e, a
    adc b
    ld h, b
    xor $60
    cp d
    ld h, c
    rlca
    ld h, d
    ld l, e
    ld h, d
    db $dd
    ld h, d
    ld [$5263], sp
    ld h, e
    add hl, de
    ld h, h

Call_04b_4089:
    ld a, [$c822]
    cp $01
    jr nz, jr_04b_409a

    ld a, $00
    ld [$c822], a
    ld hl, $3f08
    rst $10
    ret


jr_04b_409a:
    ld de, $4007
    call Call_000_05b6
    ret


    ld a, [$c822]
    cp $01
    jr nz, jr_04b_40b2

    ld a, $00
    ld [$c822], a
    ld hl, $3f09
    rst $10
    ret


jr_04b_40b2:
    ld de, $4007
    call Call_000_05f6
    ret


    ld a, [$c822]
    cp $01
    jr nz, jr_04b_40ca

    ld a, $00
    ld [$c822], a
    ld hl, $3f0a
    rst $10
    ret


jr_04b_40ca:
    call Call_04b_4089
    call Call_000_0609
    ret


    db $eb
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    or $5e
    rst $28
    xor $50
    ld c, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld c, d
    ld a, $41
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, e
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    inc l
    ld h, d
    ld d, c
    ld c, h
    ld c, c
    ld b, c

Jump_04b_40ff:
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    or $5e
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
    dec h
    ld d, d
    ld d, c
    ld h, d
    inc l
    rst $28
    xor $54
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $4d
    ld a, $49
    ld h, d
    ld d, b
    ld c, h
    ld h, d
    ld b, d
    ld a, $50
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
    xor $3a
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
    xor $3e
    ld c, a
    ld b, d
    ld h, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, c
    ld c, c
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
    ld d, b
    rst $28
    xor $51
    ld b, l
    ld a, $51
    ld h, d
    or $62
    ld b, l
    ld a, $50
    ld c, e
    ld h, a
    ld a, [$eff7]
    xor $42
    ld d, l
    ld c, l
    ld c, c
    ld c, h
    ld c, a
    ld b, d
    ld b, c
    ld h, d
    ld d, [hl]
    ld b, d
    ld d, c
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
    ld b, d
    ld a, $51
    ld h, d
    ld a, $49
    ld c, c
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
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    ld a, $4b
    ld b, c
    ld h, d
    inc l
    ld h, [hl]
    ld c, c
    rst $28
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
    ld e, a
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
    rst $28
    xor $3e
    ld c, a
    ld b, d
    ld h, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, c
    ld c, c
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
    ld d, b
    rst $28
    xor $51
    ld b, l
    ld a, $51
    ld h, d
    or $62
    ld b, l
    ld a, $50
    ld c, e
    ld h, a
    ld a, [$eff7]
    xor $42
    ld d, l
    ld c, l
    ld c, c
    ld c, h
    ld c, a
    ld b, d
    ld b, c
    ld h, d
    ld d, [hl]
    ld b, d
    ld d, c
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
    ld b, d
    ld a, $51
    ld h, d
    ld a, $49
    ld c, c
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
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    ld a, $4b
    ld b, c
    ld h, d
    inc l
    ld h, [hl]
    ld c, c
    rst $28
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
    ld e, a
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
    ld h, d
    ld c, d
    ld a, $41
    ld b, d
    rst $28
    xor $46
    ld d, c
    ld h, e
    ld h, d
    or $63
    ld h, e
    ld a, [$eff7]
    xor $3c
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld a, $51
    ld l, [hl]
    ld c, d
    ld h, d
    ld a, $49
    ld c, c
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
    inc h
    ld d, b
    ld h, d
    inc l
    rst $28
    xor $4d
    ld c, a
    ld c, h
    ld c, d
    ld b, [hl]
    ld d, b
    ld b, d
    ld b, c
    ld e, [hl]
    ld h, d
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    ccf
    ld b, d
    ld a, [$eff7]
    xor $56
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld c, l
    ld a, $49
    ld e, [hl]
    ld h, d
    ld c, h
    ld c, b
    ld a, $56
    ld h, h
    rst $28
    xor $ff
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    ld d, h
    ld b, d
    ld c, c
    ld c, c
    ld e, [hl]
    rst $28
    xor $56
    ld c, h
    ld d, d
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
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    ld h, d
    or $5e
    rst $28
    xor $56
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
    ld b, d
    ld d, [hl]
    ld e, [hl]
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $45
    ld a, $53
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld c, h
    ld h, d
    ld c, d
    ld a, $4b
    ld d, [hl]
    ld a, [$eff7]
    xor $4d
    ld a, $49
    ld d, b
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
    ld [hl], $4c
    ld c, a
    ld c, a
    ld d, [hl]
    rst $28
    xor $3f
    ld d, d
    ld d, c
    ld h, d
    inc l
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld c, b
    ld a, [$eff7]
    xor $2c
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld c, l
    ld a, $49
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
    ld a, [hl+]
    ld c, h
    ld c, h
    ld b, c
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
    ld h, d
    or $5f
    ld a, [$eff7]
    xor $2c
    ld h, [hl]
    ld c, c
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld d, h
    ld a, $46
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld d, [hl]
    ld a, $62
    ld a, $51
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $43
    ld a, $4f
    ld c, d
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
    ld a, $4b
    ld b, c
    rst $28
    xor $51
    ld b, l
    ld a, $4b
    ld c, b
    ld d, b
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, [hl]
    ld c, e
    ld b, h
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
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ccf
    ld c, h
    ld d, d
    rst $28
    xor $4c
    ld b, e
    ld h, d
    ld a, [hl+]
    ld c, a
    ld b, d
    ld a, $51
    cpl
    ld c, h
    ld b, h
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld c, d
    ld b, d
    ld b, c
    ld a, [$eff7]
    xor $50
    ld d, c
    ld b, d
    ld a, $4a
    ld b, d
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
    scf
    ld b, l
    ld a, $4b
    ld c, b
    ld d, b
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld e, [hl]
    ld h, d
    ld c, e
    ld b, d
    ld d, h
    ld a, [$eff7]
    xor $50
    ld c, l
    ld b, [hl]
    ld c, a
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld d, h
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $3f
    ld c, h
    ld c, a
    ld c, e
    ld e, a
    ld e, a
    ld e, a
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    ld l, b
    rst $28
    xor $4a
    ld a, $44
    ld b, [hl]
    ld b, b
    ld h, d
    ld d, b
    ld c, l
    ld b, d
    ld c, c
    ld c, c
    ld a, [$eff7]
    xor $26
    ld b, l
    ld a, $4b
    ld b, b
    ld b, d
    ld e, [hl]
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    rst $28
    xor $46
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    or $63
    ld h, d
    ld [hl-], a
    ld b, l
    ld h, d
    ld b, [hl]
    ld d, c
    ld l, b
    rst $28
    xor $f6
    ld h, e
    ld h, d
    ld a, [hl-]
    ld b, d
    ld c, c
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc h
    ld d, b
    ld h, d
    ld a, $62
    ld c, d
    ld a, $51
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $43
    ld a, $40
    ld d, c
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld l, b
    ld a, [$eff7]
    xor $50
    ld c, h
    ld c, d
    ld b, d
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld h, d
    ld d, h
    ld b, l
    ld c, h
    rst $28
    xor $54
    ld a, $4b
    ld d, c
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $40
    ld b, l
    ld a, $49
    ld c, c
    ld b, d
    ld c, e
    ld b, h
    ld b, d
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
    inc a
    ld c, h
    ld d, d
    ld h, [hl]
    ld c, c
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    rst $28
    xor $4c
    ld d, d
    ld d, c
    ld h, d
    ld d, h
    ld b, l
    ld c, h
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld b, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, [hl-]
    ld b, l
    ld a, $51
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $44
    ld c, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, c
    ld c, h
    ld h, h
    ld h, d
    daa
    ld c, h
    ld a, [$eff7]
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld a, $40
    ld b, b
    ld b, d
    ld c, l
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $40
    ld b, l
    ld a, $49
    ld c, c
    ld b, d
    ld c, e
    ld b, h
    ld b, d
    ld h, h
    rst $38
    ldh a, [$ea]
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
    ld d, b
    ld b, b
    ld a, $4f
    ld b, d
    ld b, c
    ld h, h
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl-]
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
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $41
    ld b, d
    ld d, b
    ld b, b
    ld c, a
    ld b, [hl]
    ld c, l
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld a, $4f
    ld b, d
    ld c, e
    ld a, $64
    rst $38
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl+]
    ld b, [hl]
    ld b, h
    ld b, h
    ld c, c
    ld b, d
    ld e, a
    ld e, a
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
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld b, e
    ld d, c
    ld b, d
    ld c, a
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
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    or $63
    ld e, [hl]
    rst $28
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
    ld h, d
    sbc a
    ld c, b
    ld b, [hl]
    ld d, b
    ld d, b
    sbc a
    rst $30
    ldh a, [$ea]
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
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld b, b
    ld b, l
    ld a, $49
    ld c, c
    ld b, d
    ld c, e
    ld b, h
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    jr nc, jr_04b_46e3

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $37
    ld a, $4a
    ld b, d
    ld c, a
    ld h, h
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
    ld d, b
    ld d, d
    ld c, a
    ld d, e
    ld b, [hl]
    ld d, e
    ld b, d
    rst $28
    xor $45
    ld b, [hl]
    ld c, d
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, e
    ld b, d
    ld a, $4f
    rst $28
    xor $46
    ld c, e
    ld h, d

jr_04b_46e3:
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    ld h, e
    rst $30
    ldh a, [$ea]
    ld l, $46
    ld c, e
    ld b, h
    and e
    ld sp, $5e4c
    ld h, d
    ld b, [hl]
    ld d, c
    ld l, b
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    rst $28
    xor $3e
    ld c, e
    ld h, d
    ld b, d
    ld d, l
    ld a, $44
    ld b, h
    ld b, d
    ld c, a
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld e, a
    ld a, [$eff7]
    xor $2c
    ld l, l
    ld h, d
    ld b, c
    ld c, h
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    ld e, a
    ld e, a
    ld e, a
    ld d, h
    ld b, d
    ld c, c
    ld c, c
    ld e, [hl]
    rst $28
    xor $51
    ld b, l
    ld a, $51
    ld l, b
    ld h, d
    ld a, $4b
    ld a, [$eff7]
    xor $42
    ld d, l
    ld a, $44
    ld b, h
    ld b, d
    ld c, a
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld e, a
    rst $28
    xor $2b
    ld a, $62
    dec hl
    ld a, $62
    dec hl
    ld a, $62
    dec hl
    ld a, $62
    dec hl
    ld a, $63
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, c
    ld e, [hl]
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    rst $28
    xor $41
    ld b, [hl]
    ld d, b
    ld c, d
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld b, c
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $25
    ld d, d
    ld d, b
    ld d, [hl]
    ld e, [hl]
    ld h, d
    dec h
    ld d, d
    ld d, b
    ld d, [hl]
    ld e, [hl]
    rst $28
    xor $25
    ld d, d
    ld d, b
    ld d, [hl]
    ld e, a
    ld e, a
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    jr nc, jr_04b_47e2

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
    ld h, d
    scf
    ld a, $4a
    ld b, d
    ld c, a
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld a, [$eff7]
    xor $3f
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
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

jr_04b_47e2:
    dec hl
    ld a, $51
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    ld b, e
    ld h, d
    ld b, [hl]
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $3f
    ld b, d
    ld a, $51
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    jr nc, jr_04b_483c

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    scf
    ld a, $4a
    ld b, d
    ld c, a
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
    ld d, b
    ld d, d
    ld c, a
    ld d, e
    ld b, [hl]
    ld d, e
    ld b, d
    ld b, c
    rst $28
    xor $27
    ld h, d
    ld b, b
    ld c, c
    ld a, $50
    ld d, b
    ld h, e
    ld a, [$eff7]

jr_04b_4834:
    xor $9f
    and e
    inc l
    ld l, d
    ld h, d
    ld d, b
    ld d, c

jr_04b_483c:
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    jr z, jr_04b_4834

    xor $40
    ld c, c
    ld a, $50
    ld d, b
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $2c
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld c, a
    ld d, [hl]
    rst $28
    xor $45
    ld a, $4f
    ld b, c
    ld b, d
    ld c, a
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    dec h
    ld d, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, h
    ld a, $56
    rst $28
    xor $f6
    ld e, [hl]
    ld h, d
    cpl
    ld b, d
    ld d, c
    ld l, b
    ld a, [$eff7]
    xor $4a
    ld a, $51
    ld b, b
    ld b, l
    ld h, d
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
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    inc l
    ld b, b
    ld b, d
    jr nc, jr_04b_48e9

    ld c, e
    ld e, [hl]
    rst $28
    xor $49
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ld c, d
    ld a, $51
    ld b, b
    ld b, l
    ld e, a
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld c, h
    ld h, d
    dec hl
    ld c, h
    ld e, [hl]
    ld h, d
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, c
    rst $28
    xor $41
    ld c, h
    ld c, e
    ld b, d
    ld h, e
    ld h, d
    inc a
    ld c, h
    ld d, d
    ld a, [$eff7]
    xor $41
    ld b, d
    ld b, e
    ld b, d
    ld a, $51
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $30
    ld a, $50

jr_04b_48e9:
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    jr nc, jr_04b_493b

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $37
    ld a, $4a
    ld b, d
    ld c, a
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld sp, $544c
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
    ld d, c
    ld c, h
    ld h, d
    ld b, e
    ld b, d
    ld a, $4f
    ld h, e
    ld a, [$eff7]
    xor $9f
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
    xor $44
    ld c, h
    ld h, d

jr_04b_493b:
    ld c, h
    ld c, e
    ld h, d
    ld a, $62
    ld d, c
    ld c, a
    ld b, [hl]
    ld c, l
    ld a, [$eff7]
    xor $51
    ld c, h
    ld h, d
    ld b, b
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    rst $28
    xor $4a
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
    jr nc, jr_04b_49a7

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
    ld h, d
    scf
    ld a, $4a
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $54
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld h, d
    ld b, l
    ld c, h
    ld d, h
    rst $28
    xor $4a
    ld a, $4b
    ld d, [hl]
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $42
    ld d, l
    ld b, [hl]
    ld d, b
    ld d, c
    ld e, a
    rst $28

jr_04b_49a7:
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    or $5e
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
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld c, a
    ld d, d
    ld d, c
    ld b, l
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    jr nc, jr_04b_4a14

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
    ld h, d
    scf
    ld a, $4a
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $54
    ld a, $4b
    ld d, c
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld a, $44
    ld a, $46
    ld c, e
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld e, a
    ld e, a
    ld e, a
    ld a, $62

jr_04b_4a14:
    ld c, a
    ld b, d
    ld c, d
    ld a, $51
    ld b, b
    ld b, l
    ld e, a
    rst $28
    xor $3a
    ld b, l
    ld a, $51
    ld h, d
    ld b, c
    ld c, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld c, b
    ld h, h
    ld a, [$eff7]
    xor $27
    ld c, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld a, $40
    ld b, b
    ld b, d
    ld c, l
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, h
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    or $63
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
    ld c, h
    ld c, e
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc h
    ld d, h
    ld b, d
    ld d, b
    ld c, h
    ld c, d
    ld b, d
    ld h, e
    ld h, d
    ld h, d
    dec hl
    ld b, d
    ld c, a
    ld b, d
    ld l, b
    rst $28
    xor $3e
    ld h, d
    ld d, b
    ld d, d
    ld c, a
    ld c, l
    ld c, a
    ld b, [hl]
    ld d, b
    ld b, d
    ld e, a
    ld h, d
    sbc a
    ld c, b
    ld b, [hl]
    ld d, b
    ld d, b
    sbc a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    or $63
    ld h, d
    dec hl
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $46
    ld d, b
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld d, b
    ld d, d
    ld c, a
    ld c, l
    ld c, a
    ld b, [hl]
    ld d, b
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    ld c, b
    ld b, [hl]
    ld d, b
    ld d, b
    sbc a
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
    ld a, [hl-]
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $3e
    ld c, a
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, h
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld d, h
    ld b, l
    ld a, $51
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld e, a
    ld e, a
    rst $28
    xor $2c
    ld h, [hl]
    ld c, c
    ld h, d
    ld b, e
    ld c, h
    ld c, a
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
    ld b, d
    ld b, b
    ld a, $52
    ld d, b
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld a, $51
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    jr nc, jr_04b_4b53

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    scf
    ld a, $4a
    ld b, d
    ld c, a
    ld e, a
    rst $28
    xor $f7
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
    inc a
    ld c, h
    ld d, d
    rst $28
    xor $51
    ld c, a
    ld b, [hl]
    ld c, l
    ld c, l
    ld b, d
    ld b, c
    ld h, d
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, c
    ld c, e
    ld h, a

jr_04b_4b53:
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, e
    ld h, h
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
    ld e, a
    ld e, a
    ld e, a
    ld h, d
    ld b, [hl]
    ld d, c
    ld l, b
    rst $28
    xor $4c
    ld c, b
    ld a, $56
    ld h, d
    ld l, a
    ld d, d
    ld d, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld a, $51
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    jr nc, jr_04b_4bc7

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
    ld h, d
    scf
    ld a, $4a
    ld b, d
    ld c, a
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    or $63
    rst $28
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
    ld a, [$eff7]
    xor $4c
    ld c, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld d, e
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a

jr_04b_4bc7:
    ld d, [hl]
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld e, [hl]
    ld h, d
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    ld d, b
    ld c, h
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $9f
    ld d, b
    ld c, e
    ld b, [hl]
    ld b, e
    ld b, e
    sbc a
    ld h, d
    ld b, l
    ld a, $4d
    ld c, l
    ld d, [hl]
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $50
    ld c, h
    ld e, a
    ld e, a
    ld h, d
    ld b, l
    ld a, $4d
    ld c, l
    ld d, [hl]
    ld h, d
    ld a, [hl-]
    ld a, $3e
    ld a, $ef
    xor $54
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld e, [hl]
    ld h, d
    inc l
    ld h, d
    ld b, l
    ld b, d
    ld a, $4f
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld l, c
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
    xor $51
    ld b, l
    ld a, $51
    ld h, d
    ld b, d
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
    rst $28
    xor $54
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld h, d
    ld b, c
    ld c, h
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, c
    ld c, h
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld a, $4b
    ld d, [hl]
    rst $28
    xor $43
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld d, [hl]
    ld l, c
    ld b, d
    ld h, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    rst $28
    xor $50
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld h, d
    or [hl]
    ld h, d
    ld b, d
    ld d, e
    ld b, d
    ld c, e
    ld h, d
    ld b, [hl]
    ld b, e
    ld a, [$eff7]
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld a, $51
    ld l, [hl]
    ld c, d
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld d, [hl]
    rst $28
    xor $54
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld c, l
    ld a, $49
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld d, [hl]
    ld l, c
    ld b, d
    ld h, d
    ld d, b
    ld c, h
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
    ld a, $51
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld l, l
    ld a, [$eff7]
    xor $41
    ld c, h
    ld h, d
    ld a, $4b
    ld d, [hl]
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $44
    ld b, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, a
    ld c, h
    ld b, [hl]
    ld c, e
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld e, a
    ld e, a
    inc l
    ld h, d
    ld b, l
    ld b, d
    ld a, $4f
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
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
    ld b, d
    ld d, l
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    rst $28
    xor $41
    ld c, h
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ccf
    ld b, d
    ld c, c
    ld c, h
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld d, [hl]
    ld h, d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld b, [hl]
    ld b, d
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
    ld d, [hl]
    ld l, c
    ld b, d
    ld h, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    rst $28
    xor $50
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld h, d
    or [hl]
    ld h, d
    ld b, d
    ld d, e
    ld b, d
    ld c, e
    ld h, d
    ld b, [hl]
    ld b, e
    ld a, [$eff7]
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld a, $51
    ld l, [hl]
    ld c, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld d, [hl]
    rst $28
    xor $54
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld c, l
    ld a, $49
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld d, [hl]
    ld l, c
    ld b, d
    ld h, d
    ld d, b
    ld c, h
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
    ld a, $51
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld l, l
    ld a, [$eff7]
    xor $41
    ld c, h
    ld h, d
    ld a, $4b
    ld d, [hl]
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $44
    ld b, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, a
    ld c, h
    ld b, [hl]
    ld c, e
    ld h, e
    rst $30
    ldh a, [$9f]
    and e
    dec hl
    ld c, h
    ld c, a
    ld c, b
    ld h, d
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld d, b
    rst $28
    xor $40
    ld c, h
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld d, c
    ld c, c
    ld d, [hl]
    ld h, d
    ld a, $51
    ld a, [$eff7]
    xor $f6
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    scf
    ld b, l
    ld a, $51
    ld l, b
    ld h, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $42
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld c, h
    ld c, e
    ld b, d
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld [hl-], a
    ld c, e
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld c, d
    ld d, [hl]
    rst $28
    xor $43
    ld c, a
    ld b, [hl]
    ld b, d
    ld c, e
    ld b, c
    ld d, b
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld a, [$eff7]
    xor $3e
    ccf
    ld c, a
    ld c, h
    ld a, $41
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $4b
    ld h, d
    ld c, h
    ld c, c
    ld b, c
    rst $28
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    dec hl
    ld b, d
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    rst $28
    xor $51
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, h
    ld d, d
    ld d, [hl]
    ld h, d
    ld d, h
    ld b, l
    ld c, h
    ld a, [$eff7]
    xor $54
    ld a, $49
    ld c, b
    ld b, d
    ld b, c
    ld h, d
    ld a, $62
    ld c, c
    ld c, h
    ld d, c
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc a
    ld c, h
    ld d, d
    ld h, e
    ld h, d
    inc l
    ld h, d
    ld b, l
    ld b, d
    ld a, $4f
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $43
    ld b, [hl]
    ld c, e
    ld a, $49
    ld c, c
    ld d, [hl]
    ld h, d
    ld c, d
    ld a, $41
    ld b, d
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    rst $28
    xor $4d
    ld a, $49
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl-]
    ld c, h
    ld d, h
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc h
    ld h, d
    ld [hl], $42
    ld c, a
    ld d, e
    ld a, $4b
    ld d, c
    ld h, d
    ld b, l
    ld a, $50
    rst $28
    xor $04
    ld h, d
    ld b, l
    ld a, $4b
    ld b, c
    ld d, b
    ld e, [hl]
    ld h, d
    ld [hl], $48
    ld b, d
    ld c, c
    ld b, d
    ld d, c
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $45
    ld a, $50
    ld h, d
    ld b, $62
    ld b, l
    ld a, $4b
    ld b, c
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
    ld d, h
    ld c, h
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld h, d
    ld b, [hl]
    ld b, e
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld d, [hl]
    ld l, c
    ld b, d
    ld h, d
    ld c, a
    ld b, d
    ld c, c
    ld a, $51
    ld b, d
    ld b, c
    ld e, a
    ld e, a
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ccf
    ld b, [hl]
    ld d, b
    ld b, l
    ld c, h
    ld c, l
    ld h, d
    inc l
    rst $28
    xor $48
    ld c, e
    ld c, h
    ld d, h
    ld h, d
    ld d, c
    ld c, h
    ld c, c
    ld b, c
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld a, $4b
    ld a, [$eff7]
    xor $46
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld d, b
    ld b, d
    ld h, d
    ld d, b
    ld c, h
    ld c, e
    ld b, h
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, [hl+]
    ld b, [hl]
    sbc h
    ld a, [hl+]
    ld b, [hl]
    ld e, [hl]
    ld h, d
    ld a, [hl+]
    ld b, [hl]
    ld b, h
    ld a, $36
    ld c, c
    ld a, $50
    ld b, l
    rst $28
    xor $4c
    ld b, e
    ld h, d
    jr nc, jr_04b_4fe1

    ld b, c
    ld l, $4b
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $9f
    and e
    jr nc, jr_04b_5004

    sbc h
    jr nc, jr_04b_5007

    ld e, [hl]
    ld h, d
    jr nc, jr_04b_500b

    ld c, c
    ld d, c
    ld b, [hl]
    ld h, $52
    ld d, c
    rst $28
    xor $4c
    ld b, e
    ld h, d
    ld [hl], $48
    ld d, [hl]
    daa
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $70
    ld h, d
    jr nc, jr_04b_5013

    ld b, c
    ld h, $4c
    ld c, e
    ld b, c
    ld c, h
    ld c, a
    rst $28
    xor $fa
    rst $30
    rst $28

jr_04b_4fe1:
    xor $9f
    and e
    dec hl
    ld b, d
    ld c, c
    ld c, c
    dec h
    ld c, c
    ld a, $50
    ld d, c
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $30
    ld b, d
    ld d, c
    ld a, $49
    ld l, $46
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $70
    ld h, d
    dec a
    ld a, $4d

jr_04b_5004:
    dec h
    ld b, [hl]
    ld c, a

jr_04b_5007:
    ld b, c
    rst $28
    xor $fa

jr_04b_500b:
    rst $30
    rst $28
    xor $9f
    and e
    dec h
    ld b, [hl]
    ld b, h

jr_04b_5013:
    dec h
    ld a, $4b
    ld b, h
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $2a
    ld c, h
    ld c, c
    ld b, c
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $70
    ld h, d
    daa
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, d
    ld b, h
    ld c, h
    ld c, e
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld d, d
    ld d, [hl]
    ld h, d
    ld a, $51
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $42
    ld c, e
    ld d, c
    ld c, a
    ld a, $4b
    ld b, b
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $4f
    ld b, d
    ld d, b
    ld d, c
    ld a, $52
    ld c, a
    ld a, $4b
    ld d, c
    ld e, a
    ld e, a
    ld e, a
    dec hl
    ld b, d
    ld l, b
    rst $28
    xor $4a
    ld d, [hl]
    ld h, d
    ld c, a
    ld b, [hl]
    ld d, e
    ld a, $49
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    dec hl
    ld b, d
    ld h, d
    ld b, l
    ld a, $50
    rst $28
    xor $52
    ld c, e
    ccf
    ld b, d
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, e
    ld a, $3f
    ld c, c
    ld b, d
    ld a, [$eff7]
    xor $3f
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld h, d
    ld d, b
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
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
    ld b, b
    ld a, $4b
    ld h, a
    ld h, d
    ld d, h
    ld a, $46
    ld d, c
    rst $28
    xor $52
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, c
    ld h, d
    inc l
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $52
    ld c, c
    ld d, c
    ld b, [hl]
    ld c, d
    ld a, $51
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
    xor $50
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    add hl, hl
    ld c, h
    ld c, a
    ld h, d
    ld d, b
    ld d, c
    ld a, $4f
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld e, [hl]
    rst $28
    xor $2c
    ld l, d
    ld h, d
    ld b, h
    ld c, h
    ld c, e
    ld c, e
    ld a, $62
    ld c, a
    ld a, $46
    ld d, b
    ld b, d
    ld a, [$eff7]
    xor $3d
    ld a, $4d
    dec h
    ld b, [hl]
    ld c, a
    ld b, c
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    jr nc, @+$58

    ld h, d
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, d
    ld c, c
    ld b, d
    ld a, $4f
    ld c, e
    ld b, d
    ld b, c
    rst $28
    xor $3e
    ld c, e
    ld h, d
    ld a, $4a
    ld a, $57
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, b
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl-]
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
    rst $28
    xor $50
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, h
    ld a, [$eff7]
    xor $30
    ld b, d
    ld e, a
    ld e, a
    ld c, d
    ld b, d
    ld e, a
    ld e, a
    ld c, d
    ld b, d
    ld b, h
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld sp, $5e4c
    ld h, d
    ld b, [hl]
    ld d, c
    ld l, b
    ld h, d
    ld d, c
    ld c, h
    ld c, h
    rst $28
    xor $44
    ld c, a
    ld b, d
    ld a, $51
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld a, $56
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld d, d
    ld c, a
    ld c, a
    ld a, $56
    ld h, e
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
    ld h, d
    ld c, e
    ld c, h
    ld d, h
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld a, $ef
    xor $3f
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld a, $4a
    ld b, d
    ld c, a
    ld h, d
    ccf
    ld d, [hl]
    ld a, [$eff7]
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
    ld l, b
    ld h, d
    ld c, l
    ld a, $46
    ld c, e
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld l, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld d, c
    ld c, h
    rst $28
    xor $47
    ld c, h
    ld d, d
    ld c, a
    ld c, e
    ld b, d
    ld d, [hl]
    ld d, b
    ld h, d
    ld c, d
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld a, $4b
    ld a, [$eff7]
    xor $40
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, d
    ld d, b
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
    ld d, b
    ld c, h
    ld c, d
    ld b, d
    ld b, l
    ld c, h
    ld d, h
    ld e, [hl]
    rst $28
    xor $2c
    ld h, d
    ld c, d
    ld b, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld h, d
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld c, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
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
    ld b, d
    ld d, [hl]
    ld h, d
    ld b, l
    ld b, d
    ld d, [hl]
    ld h, d
    ld b, l
    ld b, d
    ld d, [hl]
    ld h, e
    rst $28
    xor $35
    ld d, d
    ld c, e
    ld h, e
    ld h, d
    ld h, d
    daa
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld d, h
    ld a, $49
    ld c, b
    ld h, e
    ld a, [$eff7]
    xor $ea
    sbc a
    and e
    inc a
    ld c, h
    ld e, [hl]
    ld h, d
    ld b, c
    ld d, d
    ld b, c
    ld b, d
    ld e, [hl]
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
    ld c, a
    ld b, d
    ld b, b
    ld b, d
    ld c, l
    ld d, c
    ld b, [hl]
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
    ld b, b
    ld b, l
    ld a, $49
    ld c, c
    ld b, d
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld l, b
    rst $28
    xor $54
    ld a, $46
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc a
    ld c, h
    ld e, [hl]
    ld h, d
    ld b, c
    ld d, d
    ld b, c
    ld b, d
    ld e, [hl]
    ld h, d
    ld d, h
    ld a, $4b
    ld c, e
    ld a, $ef
    xor $48
    ld c, e
    ld c, h
    ld d, h
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    jr nc, jr_04b_532f

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
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
    ld l, b
    rst $28
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, h
    rst $38
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld b, d
    ld h, d
    ld b, l
    ld a, $50
    ld h, d
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, c
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    rst $28
    xor $27
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e

jr_04b_532f:
    ld b, d
    ld b, h
    ld c, h
    ld c, e
    ld e, [hl]
    ld h, d
    or [hl]
    ld a, [$eff7]
    xor $35
    ld c, h
    ld d, b
    ld b, d
    ld d, e
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
    jr nc, jr_04b_538b

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    jr nc, jr_04b_53a0

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $37
    ld a, $4a
    ld b, d
    ld c, a
    ld l, b
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
    ld h, d
    ld c, l
    ld b, d
    ld c, a
    ld b, e
    ld b, d
    ld b, b
    ld d, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ccf
    ld b, d

jr_04b_538b:
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, e
    ld b, d
    rst $28
    xor $3e
    ld c, e
    ld d, [hl]
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ccf
    ld b, d

jr_04b_53a0:
    ld a, $51
    ld a, [$eff7]
    xor $51
    ld b, l
    ld a, $51
    ld h, d
    ld c, h
    ld c, c
    ld b, c
    sbc h
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld c, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld d, d
    ld c, a
    ld c, a
    ld a, $56
    ld h, e
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
    ld h, d
    ld c, e
    ld c, h
    ld d, h
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld a, $ef
    xor $3f
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld d, c

Jump_04b_53f0:
    ld a, $4a
    ld b, d
    ld c, a
    ld h, d
    ccf
    ld d, [hl]
    ld a, [$eff7]
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
    ld l, b
    ld h, d
    ld c, l
    ld a, $46
    ld c, e
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld l, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld d, c
    ld c, h
    rst $28
    xor $47
    ld c, h
    ld d, d
    ld c, a
    ld c, e
    ld b, d
    ld d, [hl]
    ld d, b
    ld h, d
    ld c, d
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld a, $4b
    ld a, [$eff7]
    xor $40
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, d
    ld d, b
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
    ld d, b
    ld c, h
    ld c, d
    ld b, d
    ld b, l
    ld c, h
    ld d, h
    ld e, [hl]
    rst $28
    xor $2c
    ld h, d
    ld c, d
    ld b, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld h, d
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld c, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    daa
    ld a, $4f
    ld c, e
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
    xor $41
    ld b, d
    ld b, e
    ld b, d
    ld a, $51
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    jr nc, jr_04b_550a

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $37
    ld a, $4a
    ld b, d
    ld c, a
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc a
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
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld d, c
    ld l, b
    ld h, d
    ld a, $62
    dec hl
    ld c, h
    ld c, a
    ld c, a
    ld c, h
    ld c, a
    dec h
    ld l, $5f
    rst $28
    xor $37
    ld a, $48
    ld b, d
    ld h, d
    ld b, h
    ld c, h
    ld c, h
    ld b, c
    ld h, d
    ld b, b
    ld a, $4f
    ld b, d
    ld a, [$eff7]
    xor $4c
    ld b, e
    ld h, d
    ld b, [hl]

jr_04b_550a:
    ld d, c
    ld e, a
    rst $28
    xor $f7
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
    rst $28
    xor $4c
    ccf
    ld b, d
    ld d, [hl]
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
    inc sp
    ld b, l
    ld c, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld d, l
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    inc sp
    ld b, l
    ld c, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld d, l
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $40
    ld b, l
    ld b, [hl]
    ld c, c
    ld b, c
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld b, c
    ld c, a
    ld b, [hl]
    ccf
    ccf
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld a, $4f
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
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
    ld sp, $513e
    ld d, c
    ld c, h
    ld e, a
    rst $28
    xor $4f
    ld b, d
    ld c, l
    ld b, d
    ld a, $51
    ld h, d
    ld a, $43
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld e, [hl]
    ld h, d
    ld b, b
    ld l, d
    ld c, h
    ld c, e
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld sp, $513e
    ld d, c
    ld c, h
    ld h, h
    ld h, d
    ld a, [hl-]
    ld b, l
    ld a, $51
    ld l, b
    rst $28
    xor $51
    ld b, l
    ld a, $51
    ld h, h
    ld h, d
    inc a
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    ld a, [$eff7]
    xor $4a
    ld a, $48
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld d, d
    ld c, l
    ld h, e
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
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $50
    ld b, [hl]
    ld c, d
    ld c, l
    ld c, c
    ld d, [hl]
    ld h, d
    ld b, b
    ld a, $49
    ld c, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $50
    ld c, h
    ld d, [hl]
    ccf
    ld b, d
    ld a, $4b
    ld d, b
    ld h, h
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    add hl, sp
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $3c
    ld c, h
    ld d, d
    ld l, h
    ld b, d
    ld h, d
    ld b, b
    ld c, h
    ld c, e
    ld c, [hl]
    ld d, d
    ld b, d
    ld c, a
    ld b, d
    ld b, c
    ld a, [$eff7]
    xor $4c
    ld c, e
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ccf
    ld b, d
    ld d, b
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
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld a, $56
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
    ld b, [hl]
    ld c, h
    ld c, e
    ld d, b
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
    ld c, a
    ld b, d
    ld c, d
    ld b, d
    ld c, d
    ccf
    ld b, d
    ld c, a
    ld e, [hl]
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld l, b
    ld h, d
    ld a, $49
    ld d, h
    ld a, $56
    ld d, b
    ld a, [$eff7]
    xor $50
    ld c, h
    ld c, d
    ld b, d
    ld c, h
    ld c, e
    ld b, d
    ld h, d
    ccf
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld c, a
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
    ld c, h
    ld c, e
    ld h, e
    ld h, d
    ld h, d
    dec h
    ld d, d
    ld d, c
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
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
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
    ld d, b
    ld c, h
    ld c, d
    ld b, d
    ld c, h
    ld c, e
    ld b, d
    rst $28
    xor $3f
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    jr nc, jr_04b_5745

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $37
    ld a, $4a
    ld b, d
    ld c, a
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld a, $ef
    xor $47
    ld c, h
    ld c, b
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    dec [hl]
    ld c, h
    ld d, b
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, d
    ld d, h
    ld b, l
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, h
    ld c, c
    ld b, c
    sbc h
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $45
    ld a, $50
    ld e, a
    ld e, a
    ld e, a
    rst $28

jr_04b_5745:
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld e, a
    ld e, a
    ld e, a
    ld c, a
    ld b, d
    ld c, [hl]
    ld d, d
    ld b, [hl]
    ld c, a
    ld b, d
    ld d, b
    ld h, d
    ld a, $ef
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
    ld d, c
    ld b, l
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $4d
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld a, $4b
    ld h, d
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    rst $28
    xor $49
    ld c, h
    ld c, a
    ld b, c
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $3f
    ld c, a
    ld b, d
    ld b, d
    ld b, c
    ld b, [hl]
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
    inc a
    ld e, a
    ld e, a
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, c
    ld b, d
    ld b, e
    ld b, d
    ld a, $51
    ld b, d
    ld b, c
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    jr nc, jr_04b_57f4

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    scf
    ld a, $4a
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, [hl-]
    ld b, l
    ld a, $51
    ld h, d
    ld a, $62
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, e
    ld h, d
    inc l
    rst $28
    xor $40
    ld a, $4b
    ld h, a
    ld h, d
    ccf
    ld b, d
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, e
    ld b, d
    ld h, d
    ld b, [hl]

jr_04b_57f4:
    ld d, c
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld b, b
    ld a, $4b
    ld h, a
    ld h, d
    ld d, b
    ld a, $56
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
    ld a, $49
    ld d, h
    ld a, $56
    ld d, b
    ld a, [$eff7]
    xor $50
    ld c, h
    ld c, d
    ld b, d
    ld c, h
    ld c, e
    ld b, d
    ld h, d
    ccf
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $3e
    ld c, e
    ld d, [hl]
    ld c, d
    ld c, h
    ld c, a
    ld b, d
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld h, d
    ld a, $49
    ld d, b
    ld c, h
    ld h, d
    ld d, h
    ld a, $50
    rst $28
    xor $3f
    ld c, a
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ccf
    ld d, [hl]
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    ld h, d
    ld a, $62
    ld c, c
    ld c, h
    ld c, e
    ld b, h
    rst $28
    xor $51
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, d
    ld a, $44
    ld c, h
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld a, $4a
    ld b, d
    ld h, d
    ld a, $ef
    xor $4a
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    or [hl]
    ld h, d
    ld d, h
    ld c, h
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
    ld h, d
    ld b, [hl]
    ld c, e
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
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld [hl], $4d
    ld b, [hl]
    ld c, a
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld c, h
    ld c, a
    ld c, e
    ld h, d
    ld c, h
    ld c, e
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld [hl], $51
    ld a, $4f
    ld c, a
    ld d, [hl]
    ld h, d
    ld sp, $4446
    ld b, l
    ld d, c
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld c, d
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld b, h
    ld c, a
    ld c, h
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $4b
    ld b, d
    ld d, h
    ld h, d
    ld d, b
    ld a, $4d
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld a, [$eff7]
    xor $4c
    ld b, e
    ld h, d
    ld a, [hl+]
    ld c, a
    ld b, d
    ld a, $51
    scf
    ld c, a
    ld b, d
    ld b, d
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
    ld h, d
    ccf
    ld d, [hl]
    ld h, d
    ld c, e
    ld c, h
    ld d, h
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    jr z, jr_04b_5979

    ld b, d
    ld c, e
    ld d, c
    ld d, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $50
    ld a, $4d
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld b, h
    ld c, a
    ld c, h
    ld d, h
    ld a, [$eff7]
    xor $b6
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld a, $62
    ccf
    ld b, [hl]
    ld b, h
    rst $28
    xor $51
    ld c, a
    ld b, d
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc h
    ld h, d
    ccf
    ld b, [hl]
    ld b, h
    ld h, d
    ld d, c
    ld c, a
    ld b, d
    ld b, d
    ld h, d
    ld b, a
    ld d, d
    ld d, b
    ld d, c
    rst $28
    xor $49
    ld b, [hl]
    ld c, b

jr_04b_5979:
    ld b, d
    ld h, d
    ld d, c
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
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    or $5e
    rst $28
    xor $54
    ld b, l
    ld a, $51
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
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld b, c
    ld a, $56
    ld h, h
    rst $28
    xor $f0
    ld [$a39f], a
    dec hl
    ld a, $62
    dec hl
    ld a, $62
    dec hl
    ld a, $63
    ld h, d
    inc l
    ld h, d
    ld c, d
    ld a, $41
    ld b, d
    rst $28
    xor $3e
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ccf
    ld a, $40
    ld c, b
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc a
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    ld h, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, c
    ld c, c
    rst $28
    xor $3e
    ld h, d
    ld c, e
    ld c, h
    ld d, e
    ld b, [hl]
    ld b, b
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $2a
    ld c, a
    ld c, h
    ld d, h
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld c, h
    ld c, d
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
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld d, c
    ld c, h
    ld c, h
    ld h, d
    ld d, h
    ld a, $50
    rst $28
    xor $3f
    ld c, a
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ccf
    ld d, [hl]
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    ld h, d
    ld a, $62
    ld c, c
    ld c, h
    ld c, e
    ld b, h
    rst $28
    xor $51
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, d
    ld a, $44
    ld c, h
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld a, $4a
    ld b, d
    ld h, d
    ld a, $ef
    xor $4a
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    or [hl]
    ld h, d
    ld d, h
    ld c, h
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
    ld h, d
    ld b, [hl]
    ld c, e
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
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld [hl], $4d
    ld b, [hl]
    ld c, a
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ccf
    ld c, h
    ld c, a
    ld c, e
    ld h, d
    ld c, h
    ld c, e
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld [hl], $51
    ld a, $4f
    ld c, a
    ld d, [hl]
    ld h, d
    ld sp, $4446
    ld b, l
    ld d, c
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld c, d
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld b, h
    ld c, a
    ld c, h
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $4b
    ld b, d
    ld d, h
    ld h, d
    ld d, b
    ld a, $4d
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
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
    ld h, d
    ccf
    ld d, [hl]
    ld h, d
    ld c, e
    ld c, h
    ld d, h
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    jr z, jr_04b_5b57

    ld b, d
    ld c, e
    ld d, c
    ld d, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $50
    ld a, $4d
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld b, h
    ld c, a
    ld c, h
    ld d, h
    ld a, [$eff7]
    xor $b6
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld a, $62
    ccf
    ld b, [hl]
    ld b, h
    rst $28
    xor $51
    ld c, a
    ld b, d
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc h
    ld h, d
    ccf
    ld b, [hl]
    ld b, h
    ld h, d
    ld d, c
    ld c, a
    ld b, d
    ld b, d
    ld h, d
    ld b, a
    ld d, d
    ld d, b
    ld d, c
    rst $28
    xor $49
    ld b, [hl]
    ld c, b
    ld b, d

jr_04b_5b57:
    ld h, d
    ld d, c
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
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    or $5e
    rst $28
    xor $54
    ld b, l
    ld a, $51
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
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld b, c
    ld a, $56
    ld h, h
    rst $28
    xor $f0
    ld [$a39f], a
    inc a
    ld c, h
    ld d, d
    ld e, a
    ld e, a
    ld e, a
    ld h, e
    ld h, d
    inc l
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
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld a, $56
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    or [hl]
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
    ld b, h
    ld c, a
    ld b, d
    ld d, h
    ld h, d
    ld d, d
    ld c, l
    ld a, [$eff7]
    xor $51
    ld c, h
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld b, h
    ld c, a
    ld b, d
    ld a, $51
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld [hl-], a
    ld c, e
    ld c, c
    ld d, [hl]
    ld h, d
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
    rst $28
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld a, $4a
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld c, c
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
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, b
    ld c, e
    ld h, a
    rst $28
    xor $42
    ld a, $50
    ld d, [hl]
    ld e, a
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
    ld h, d
    ld [bc], a
    ld bc, $ef05
    xor $48
    ld b, [hl]
    ld c, e
    ld b, c
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, d
    ld e, a
    ld a, [$eff7]
    xor $2c
    ld h, d
    ld b, b
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld c, e
    ld h, a
    ld h, d
    ld b, c
    ld c, h
    ld h, d
    ld b, [hl]
    ld d, c
    ld e, a
    ld e, a
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
    or $5e
    rst $28
    xor $54
    ld b, l
    ld a, $51
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
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld b, c
    ld a, $56
    ld h, h
    rst $28
    xor $f0
    db $eb
    sbc a
    and e
    ld [hl], $4d
    ld c, c
    ld a, $50
    ld b, l
    ld e, [hl]
    ld h, d
    ld d, b
    ld c, l
    ld c, c
    ld a, $50
    ld b, l
    ld h, e
    rst $28
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
    ld a, [$eff7]
    xor $2f
    ld b, d
    ld c, d
    ld c, d
    ld b, d
    ld h, d
    ld d, c
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld d, [hl]
    ld a, $62
    ld a, $ef
    xor $52
    ld d, b
    ld b, d
    ld b, e
    ld d, d
    ld c, c
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld l, c
    ld b, d
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
    ld a, [$eff7]
    xor $40
    ld a, $4b
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld c, h
    ld d, d
    ld d, c
    rst $28
    xor $3f
    ld c, a
    ld b, d
    ld b, d
    ld b, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    ld a, [$eff7]
    xor $36
    ld c, l
    ld c, c
    ld a, $50
    ld b, l
    ld e, [hl]
    ld h, d
    ld d, b
    ld c, l
    ld c, c
    ld a, $50
    ld b, l
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    ld h, $4c
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
    rst $28
    xor $4c
    ld c, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld d, e
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld h, e
    ld a, [$eff7]
    xor $2f
    ld b, d
    ld d, c
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld a, $ef
    xor $51
    ld b, [hl]
    ld c, l
    ld e, a
    ld a, [$eff7]
    xor $9f
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
    ccf
    ld c, a
    ld b, d
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
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $45
    ld b, [hl]
    ld b, h
    ld b, l
    ld h, d
    ld c, e
    ld d, d
    ld c, d
    ccf
    ld b, d
    ld c, a
    ld h, d
    ld c, e
    ld b, d
    ld d, l
    ld d, c
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    and d
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
    ld b, [hl]
    ld c, e
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    rst $28
    xor $40
    ld a, $4b
    ld h, d
    ld c, l
    ld c, a
    ld c, h
    ld b, c
    ld d, d
    ld b, b
    ld b, d
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $4f
    ld a, $4f
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$a3]
    or $62
    ld c, c
    ld c, h

Jump_04b_5e05:
    ld c, h
    ld c, b
    ld d, b
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
    ld [hl], $3e
    ld d, [hl]
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
    rst $28
    xor $41
    ld a, $56
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $a3
    scf
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld a, $62
    ld d, c
    ld c, h
    ld d, c
    ld a, $49
    rst $28
    xor $4c
    ld b, e
    ld h, d
    ld [bc], a
    ld bc, $6205
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, e
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
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $4f
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    rst $38
    ldh a, [$a3]
    inc h
    ld d, c
    ld h, d
    ld c, c
    ld a, $50
    ld d, c
    ld e, [hl]
    ld h, d
    or $ef
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld c, l
    ld b, d
    ld d, c
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
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
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $a3
    dec hl
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
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
    ld e, a
    rst $28
    xor $2b
    ld b, d
    ld h, d
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld d, b
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld c, d
    ld b, d
    ld a, [$eff7]
    xor $46
    ld c, e
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    rst $28
    xor $41
    ld a, $56
    ld d, b
    ld e, [hl]
    ld h, d
    ld d, c
    ld c, h
    ld c, h
    ld h, e
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
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $4f
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    rst $38
    ldh a, [$a3]
    inc h
    ld d, c
    ld h, d
    ld c, c
    ld a, $50
    ld d, c
    ld e, [hl]
    ld h, d
    or $ef
    xor $44
    ld c, h
    ld d, c
    ld h, d
    ld a, $62
    ld d, e
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld h, e
    ld a, [$eff7]
    xor $a3
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
    ld c, h
    ld d, b
    ld b, d
    rst $28
    xor $41
    ld a, $56
    ld d, b
    ld e, a
    ld h, d
    inc l
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ccf
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld h, d
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld e, [hl]
    ld h, d
    ld d, c
    ld c, h
    ld c, h
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $a3
    inc l
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    ld h, d
    ld a, $62
    ld d, e
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    rst $28
    xor $46
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld [hl], $51
    ld a, $4f
    ld c, a
    ld d, [hl]
    ld a, [$eff7]
    xor $31
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
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
    xor $fa
    rst $30
    rst $28
    xor $a3
    inc l
    ld h, d
    ld d, h
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
    rst $28
    xor $50
    ld b, l
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $3f
    ld b, [hl]
    ld c, a
    ld d, c
    ld b, l
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld a, $62
    ld d, b
    ld c, l
    ld b, [hl]
    ld c, a
    ld b, [hl]
    ld d, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $a3
    inc h
    ld h, d
    ld [hl], $4d
    ld b, [hl]
    ld c, a
    ld b, [hl]
    ld d, c
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $2a
    ld c, a
    ld b, d
    ld a, $51
    scf
    ld c, a
    ld b, d
    ld b, d
    ld h, d
    ccf
    ld c, h
    ld c, a
    ld c, e
    ld h, d
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld [hl], $51
    ld a, $4f
    ld c, a
    ld d, [hl]
    ld h, d
    ld sp, $4446
    ld b, l
    ld d, c
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $a3
    ld b, e
    ld c, c
    ld b, d
    ld d, h
    ld h, d
    ld a, $54
    ld a, $56
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld d, b
    ld d, c
    ld a, $4f
    ld d, c
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $4b
    ld b, d
    ld d, h
    ld h, d
    ld a, [hl+]
    ld c, a
    ld b, d
    ld a, $51
    scf
    ld c, a
    ld b, d
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $a3
    inc l
    ld d, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld b, h
    ld c, a
    ld c, h
    ld d, h
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $3f
    ld b, d
    ld h, d
    ld a, $62
    ccf
    ld b, [hl]
    ld b, h
    ld h, d
    ccf
    ld b, [hl]
    ld b, h
    ld h, d
    ld d, c
    ld c, a
    ld b, d
    ld b, d
    ld a, [$eff7]
    xor $47
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    rst $28
    xor $48
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, c
    ld c, h
    ld c, d
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld h, d
    ld b, l
    ld b, d
    ld a, $4f
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, b
    ld d, c
    ld d, [hl]
    ld c, c
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    jr nc, jr_04b_60f1

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
    ld h, d
    scf
    ld a, $4a
    ld b, d
    ld c, a
    ld h, d
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $50
    ld c, h
    ld h, d
    ld b, l
    ld a, $4d
    ld c, l
    ld d, [hl]
    ld h, d
    ld a, $50
    ld h, d
    ld b, [hl]
    ld b, e
    ld h, d
    ld b, l
    ld b, d
    rst $28
    xor $54
    ld c, h
    ld c, e
    ld h, d
    ld b, l
    ld b, [hl]
    ld c, d
    ld d, b
    ld b, d
    ld c, c
    ld b, e
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e

jr_04b_60f1:
    dec hl
    ld b, d
    ld d, [hl]
    ld e, [hl]
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld h, e
    rst $28
    xor $24
    ld h, d
    ld b, c
    ld b, [hl]
    ld b, e
    ld b, e
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld d, c
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
    ld a, $50
    ld h, d
    ccf
    ld c, h
    ld c, a
    ld c, e
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc h
    ld h, d
    ld b, c
    ld b, [hl]
    ld b, e
    ld b, e
    ld b, d
    ld c, a
    ld b, d
    ld c, e
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
    ld d, h
    ld a, $50
    ld h, d
    ccf
    ld c, h
    ld c, a
    ld c, e
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
    ld d, b
    ld a, $4a
    ld b, d
    rst $28
    xor $40
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld c, e
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    jr nc, @+$40

    ld d, [hl]
    ccf
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    rst $28
    xor $53
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld h, d
    ld b, b
    ld c, a
    ld b, d
    ld a, $51
    ld b, d
    ld b, c
    ld a, [$eff7]
    xor $3e
    ld h, d
    ld c, d
    ld b, [hl]
    ld c, a
    ld a, $40
    ld c, c
    ld b, d
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld [hl-], a
    ld c, a
    ld h, d
    ld d, h
    ld a, $50
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, c
    ld d, d
    ld b, d
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld b, h
    ld c, h
    ld c, h
    ld b, c
    ld h, d
    ld a, $40
    ld d, c
    ld h, h
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, c
    ld b, [hl]
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld c, h
    ld d, b
    ld b, d
    rst $28
    xor $4a
    ld b, [hl]
    ld c, c
    ld c, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, b
    ld d, c
    ld a, $4f
    ld d, b
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
    ld c, h
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
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
    ld h, d
    ld b, h
    ld c, h
    ld h, h
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    dec hl
    ld b, [hl]
    ld h, d
    or $63
    rst $28
    xor $3a
    ld b, d
    ld c, c
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld b, l
    ld c, h
    ld c, d
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    dec hl
    ld c, h
    ld d, h
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $3f
    ld b, d
    ld b, d
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $2c
    ld h, d
    ld c, d
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld b, c
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
    ldh a, [$ea]
    sbc a
    and e
    ld h, $4c
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
    rst $28
    xor $4c
    ld c, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld d, e
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld e, a
    ld a, [$eff7]
    xor $2c
    ld h, d
    ld c, b
    ld c, e
    ld b, d
    ld d, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    rst $28
    xor $41
    ld c, h
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    dec hl
    ld b, d
    ld d, [hl]
    ld e, [hl]
    ld h, d
    ld b, l
    ld c, h
    ld d, h
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    rst $28
    xor $4a
    ld a, $4f
    ld c, a
    ld d, [hl]
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, d
    ld d, [hl]
    ld a, [$eff7]
    xor $41
    ld a, $52
    ld b, h
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $ff
    ldh a, [$ea]
    sbc a
    and e
    dec l
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ld c, b
    ld b, [hl]
    ld b, c
    ld b, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    rst $28
    xor $3c
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    ld h, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $48
    ld b, [hl]
    ld b, c
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    jr nc, jr_04b_6363

    ld h, d
    ld b, l
    ld d, d
    ccf
    ccf
    ld d, [hl]
    ld h, d
    ld c, c
    ld c, h
    ld d, e
    ld b, d
    ld d, b
    rst $28
    xor $4c
    ld d, d
    ld c, a
    ld h, d
    ld b, h
    ld b, [hl]
    ld c, a
    ld c, c
    ld h, d
    ld d, b
    ld c, h
    ld h, d
    ld c, d
    ld d, d
    ld b, b
    ld b, l
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld e, a
    ld e, a
    ld b, l
    ld b, d
    ld h, d
    ld c, b
    ld b, d
    ld b, d
    ld c, l
    ld d, b
    ld h, d
    ld a, $ef
    xor $47
    ld c, h
    ld d, d
    ld c, a
    ld c, e
    ld a, $49
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld e, a
    rst $30
    ldh a, [$a3]
    ld [hl], $51
    ld b, d
    ld c, l
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    jr nc, jr_04b_63b4

    ld h, d
    dec h
    ld a, $3f
    ld d, [hl]

jr_04b_6363:
    rst $28
    xor $62
    inc sp
    ld a, $4f
    ld d, c
    ld h, d
    inc b
    ld a, [$eff7]
    xor $a3
    inc l
    ld h, d
    ld b, h
    ld d, d
    ld b, d
    ld d, b
    ld d, b
    ld h, d
    inc l
    ld l, h
    ld b, d
    rst $28
    xor $43
    ld c, h
    ld c, a
    ld b, h
    ld c, h
    ld d, c
    ld d, c
    ld b, d
    ld c, e
    ld h, d
    ld a, $4b
    ld a, [$eff7]
    xor $46
    ld c, d
    ld c, l
    ld c, h
    ld c, a
    ld d, c
    ld a, $4b
    ld d, c
    ld h, d
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
    xor $a3
    inc l
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld b, h
    ld c, h
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, e
    ld a, $4a

jr_04b_63b4:
    ld b, d
    rst $28
    xor $4a
    ld d, [hl]
    ld h, d
    ccf
    ld a, $3f
    ld d, [hl]
    ld h, e
    ld a, [$eff7]
    xor $a3
    ld [hl], $45
    ld b, d
    ld h, d
    ld d, h
    ld a, $50
    ld h, d
    ld d, b
    ld c, h
    ld h, d
    ld b, b
    ld d, d
    ld d, c
    ld b, d
    rst $28
    xor $51
    ld b, l
    ld a, $51
    ld h, d
    inc l
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld c, l
    ld c, c
    ld b, d
    ld d, c
    ld b, d
    ld c, c
    ld d, [hl]
    ld a, [$eff7]
    xor $43
    ld c, h
    ld c, a
    ld b, h
    ld c, h
    ld d, c
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
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
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $4f
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    rst $38
    ldh a, [$a3]
    ld [hl], $51
    ld b, d
    ld c, l
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    jr nc, jr_04b_647b

    ld h, d
    dec h
    ld a, $3f
    ld d, [hl]
    rst $28
    xor $33
    ld a, $4f
    ld d, c
    ld h, d
    dec b
    ld a, [$eff7]
    xor $a3
    inc l
    ld h, d
    ld b, b
    ld a, $4a
    ld b, d
    ld h, d
    ld d, d
    ld c, l
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld c, d
    ld d, [hl]
    rst $28
    xor $3f
    ld a, $3f
    ld d, [hl]
    ld l, b
    ld h, d
    ld c, e
    ld a, $4a
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $a3
    ld [hl], $3e
    ld c, e
    ld d, c
    ld b, [hl]
    ld e, a
    ld h, d
    inc l
    ld d, c
    ld l, b
    rst $28
    xor $36
    ld a, $4b
    ld d, c
    ld b, [hl]
    ld e, a
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

jr_04b_647b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld b, b
    nop
    ld e, a
    nop
    ld e, a
    rra
    ld b, b
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    cp $00
    ld [bc], a
    inc b
    ld a, [$fa04]
    db $fc
    ld [bc], a
    nop
    cp $00
    nop
    ld a, b
    nop
    ld b, b
    or [hl]
    ld b, b
    ld [hl-], a
    ld b, h
    or d
    ld b, h
    or d
    call nz, Call_04b_4032
    or [hl]
    ld b, b
    nop
    ld e, $00
    db $10
    ld l, l
    db $10
    ld c, h
    db $10
    ld c, l
    db $10
    ld c, l
    ld de, $104c
    ld l, l
    stop
    nop
    nop
    nop
    ld a, a
    nop
    ld b, b
    nop
    ld e, a
    nop
    ld e, a
    rra
    ld b, b
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    cp $00
    ld [bc], a
    inc b
    ld a, [$fa04]
    db $fc
    ld [bc], a
    nop
    cp $00
    nop
    ld a, b
    nop
    ld b, b
    or [hl]
    ld b, b
    ld [hl-], a
    ld b, h
    or d
    ld b, h
    or d
    call nz, Call_04b_4032
    or [hl]
    ld b, b
    nop
    ld e, $00
    db $10
    ld l, l
    db $10
    ld c, h
    db $10
    ld c, l
    db $10
    ld c, l
    ld de, $104c
    ld l, l
    stop
    nop
    nop
    nop
    ld a, a
    nop
    ld b, b
    nop
    ld e, a
    nop
    ld e, a
    rra
    ld b, b
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    cp $00
    ld [bc], a
    inc b
    ld a, [$fa04]
    db $fc
    ld [bc], a
    nop
    cp $00
    nop
    ld a, b
    nop
    ld b, b
    or [hl]
    ld b, b
    ld [hl-], a
    ld b, h
    or d
    ld b, h
    or d
    call nz, Call_04b_4032
    or [hl]
    ld b, b
    nop
    ld e, $00
    db $10
    ld l, l
    db $10
    ld c, h
    db $10
    ld c, l
    db $10
    ld c, l
    ld de, $104c
    ld l, l
    stop
    nop
    nop
    nop
    ld a, a
    nop
    ld b, b
    nop
    ld e, a
    nop

jr_04b_68c9:
    ld e, a
    rra
    ld b, b
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    cp $00
    ld [bc], a
    inc b
    ld a, [$fa04]
    db $fc
    ld [bc], a
    nop
    cp $00
    nop
    ld a, b
    nop
    ld b, b
    or [hl]
    ld b, b
    ld [hl-], a
    ld b, h
    or d
    ld b, h
    or d
    call nz, Call_04b_4032
    or [hl]
    ld b, b
    nop
    ld e, $00
    db $10
    ld l, l
    db $10
    ld c, h
    db $10
    ld c, l
    db $10
    ld c, l
    ld de, $104c
    ld l, l
    stop
    jr c, jr_04b_68c9

    ld c, $f1
    rlca
    ld hl, sp+$0e
    pop af
    jr @-$17

    pop bc
    ld a, $e0
    rra
    add e
    ld a, h
    and h

jr_04b_6911:
    ld e, e
    adc [hl]
    ld [hl], c
    ld c, $f1
    dec de

jr_04b_6917:
    db $e4
    ld de, $41ee
    cp [hl]
    ld h, b
    sbc a
    ldh [$1f], a
    inc e
    db $e3
    ld [hl], b
    adc a
    ldh [$1f], a
    ld [hl], b
    adc a
    jr jr_04b_6911

    add e
    ld a, h
    rlca
    ld hl, sp-$3f
    ld a, $07
    ld hl, sp+$06
    ld sp, hl
    add d
    ld a, l
    adc b
    ld [hl], a
    ret c

    daa
    ld [hl], b
    adc a
    ld [hl], c
    adc [hl]
    dec h
    jp c, $1fe0

    ld c, $f1
    add e
    ld a, h
    pop bc

jr_04b_6947:
    ld a, $83
    ld a, h
    ld b, $f9
    ld [hl], b
    adc a
    jr c, jr_04b_6917

    inc e
    db $e3
    ld [hl], $c9
    ld [hl+], a
    db $dd
    add d

jr_04b_6957:
    ld a, l
    ret nz

    ccf
    pop bc
    ld a, $49
    or [hl]
    dec e
    ld [c], a
    rlca
    ld hl, sp+$70
    adc a
    pop bc
    ld a, $83
    ld a, h
    pop bc
    ld a, $60
    sbc a
    ld c, $f1
    inc e
    db $e3
    cp b
    ld b, a
    sub d

jr_04b_6973:
    ld l, l
    add e
    ld a, h
    inc bc
    db $fc
    ld b, c
    cp [hl]
    ld b, h
    cp e
    ld l, h
    sub e
    jr c, jr_04b_6947

    add e
    ld a, h
    ldh [$1f], a
    ld [hl], b
    adc a
    ldh [$1f], a
    add c

jr_04b_6989:
    ld a, [hl]
    inc e
    db $e3
    ld c, $f1
    jr c, jr_04b_6957

    ld de, $41ee
    cp [hl]
    ld h, b
    sbc a
    ldh [$1f], a
    and h
    ld e, e
    adc [hl]
    ld [hl], c
    ld c, $f1
    dec de
    db $e4
    pop bc

jr_04b_69a1:
    ld a, $07
    ld hl, sp+$0e
    pop af
    rlca
    ld hl, sp-$7f
    ld a, [hl]
    jr c, jr_04b_6973

    ld [hl], b
    adc a
    inc e
    db $e3
    ret c

    daa
    ld [hl], b
    adc a
    ld [hl], c
    adc [hl]
    dec h
    jp c, $f807

    ld b, $f9
    add d
    ld a, l
    adc b
    ld [hl], a
    jr c, jr_04b_6989

    inc e
    db $e3
    jr c, @-$37

    ld h, b
    sbc a
    rlca
    ld hl, sp-$7d
    ld a, h
    ld c, $f1
    ldh [$1f], a
    jr nc, jr_04b_69a1

    ld [hl], b
    adc a
    ld d, d
    xor l
    ld b, a
    cp b
    rlca
    ld hl, sp-$73
    ld [hl], d

jr_04b_69dc:
    adc b
    ld [hl], a
    and b
    ld e, a
    inc e
    db $e3
    jr c, @-$37

    inc e
    db $e3
    ld b, $f9

jr_04b_69e8:
    ldh [$1f], a
    pop bc
    ld a, $70
    adc a
    rlca
    ld hl, sp+$05
    ld a, [$ee11]
    or c
    ld c, [hl]
    ldh [$1f], a
    ld [c], a
    dec e
    ld c, d
    or l
    ld c, $f1
    inc c
    di
    rst $38
    db $10
    rst $28
    jr c, jr_04b_69dc

    db $ec
    inc hl
    rst $10
    ret nz

    dec sp
    nop
    rst $18
    nop
    daa
    jr nz, jr_04b_69e8

    and h

jr_04b_6a11:
    ld e, e
    adc [hl]
    ld [hl], c
    ld c, $f1
    dec de
    db $e4

jr_04b_6a18:
    ld de, $41ee
    cp [hl]
    ld h, b
    sbc a
    ldh [$1f], a
    inc e
    db $e3
    ld [hl], b

Call_04b_6a23:
    adc a
    ldh [$1f], a
    ld [hl], b
    adc a
    jr jr_04b_6a11

    add e

Call_04b_6a2b:
    ld a, h
    rlca
    ld hl, sp-$3f
    ld a, $07
    ld hl, sp+$06
    ld sp, hl
    add d
    ld a, l
    adc b
    ld [hl], a
    ret c

    daa
    ld [hl], b
    adc a
    ld [hl], c
    adc [hl]
    dec h
    jp c, Jump_000_04ff

    ei
    ld c, $f5
    dec sp
    ret z

jr_04b_6a47:
    push af
    jr nc, jr_04b_6a18

    nop
    ld a, a
    nop
    sbc h
    add b
    ld h, e
    inc e
    db $e3
    ld [hl], $c9
    ld [hl+], a
    db $dd
    add d
    ld a, l
    ret nz

    ccf
    pop bc
    ld a, $49
    or [hl]
    dec e
    ld [c], a
    rlca
    ld hl, sp+$70
    adc a
    pop bc
    ld a, $83
    ld a, h
    pop bc
    ld a, $60
    sbc a
    ld c, $f1
    inc e
    db $e3
    cp b
    ld b, a
    sub d

jr_04b_6a73:
    ld l, l
    add e
    ld a, h
    inc bc
    db $fc
    ld b, c
    cp [hl]
    ld b, h
    cp e
    ld l, h
    sub e
    jr c, jr_04b_6a47

    rst $38
    ld bc, $83fe
    ld a, l
    adc $32
    ld a, l
    inc c
    or e
    nop
    db $fd
    nop
    ld [hl], d
    ld [bc], a
    adc l
    ld de, $41ee
    cp [hl]
    ld h, b
    sbc a
    ldh [$1f], a
    and h
    ld e, e
    adc [hl]
    ld [hl], c
    ld c, $f1
    dec de
    db $e4
    pop bc
    ld a, $07
    ld hl, sp+$0e
    pop af
    rlca
    ld hl, sp-$7f
    ld a, [hl]
    jr c, jr_04b_6a73

    ld [hl], b
    adc a
    inc e
    db $e3
    ret c

    daa
    ld [hl], b
    adc a
    ld [hl], c
    adc [hl]
    dec h
    jp c, $f807

    ld b, $f9
    add d
    ld a, l
    adc b
    ld [hl], a
    rst $38
    ld b, b
    cp a
    ldh [$5f], a
    or e
    adc h
    ld e, a
    inc bc
    db $ec
    nop
    rst $30
    nop
    ret


    ld [$3036], sp
    rst $08
    ld [hl], b
    adc a
    ld d, d
    xor l
    ld b, a
    cp b
    rlca
    ld hl, sp-$73
    ld [hl], d
    adc b
    ld [hl], a
    and b
    ld e, a
    inc e
    db $e3
    jr c, @-$37

    inc e
    db $e3
    ld b, $f9
    ldh [$1f], a
    pop bc
    ld a, $70
    adc a
    rlca
    ld hl, sp+$05
    ld a, [$ee11]
    or c
    ld c, [hl]
    ldh [$1f], a
    ld [c], a
    dec e
    ld c, d
    or l
    ld c, $f1
    inc c
    di
    inc bc
    db $db
    adc a
    xor a
    rst $38
    rst $38
    rst $38
    rst $38

jr_04b_6b08:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_04b_6b8c

    add a
    or a
    rst $08
    rst $18
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $f8
    dec e
    ldh [$3b], a
    ret nz

    or $01
    inc l
    jp nz, $8469

    ld l, c
    add h
    or l
    ld b, e
    ret nz

    ccf
    ld l, d
    dec d
    cp d
    dec b
    cp d
    dec b

jr_04b_6b38:
    ld e, h
    add e
    ld a, [hl+]
    ld b, l
    ld l, $41
    inc e
    jp $7a20


    add l
    or l
    rst $08
    rst $18
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_04b_6b08

    add c
    or c
    adc l
    xor l
    adc a
    xor a
    adc a
    xor a
    daa
    ld [hl], a
    adc a
    cp a
    adc a
    xor a
    inc bc
    db $fc
    ld d, $e8
    ld c, $f0
    db $fd
    nop
    ld a, [de]
    pop hl
    inc [hl]
    jp nz, $a055

    cp c
    ld b, e
    ld h, b
    rra
    cp d
    dec b
    jp c, Jump_04b_5e05

    add c
    inc l
    jp $e116


    ld d, $61
    ld l, $c1
    jr nz, jr_04b_6b38

    add c
    or c
    adc l
    xor l
    adc a
    xor a
    adc a
    xor a
    daa
    ld [hl], a

jr_04b_6b8c:
    adc a
    cp a
    adc a
    xor a
    jr nz, jr_04b_6c0c

    add a
    or a
    rst $08
    rst $18
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $f8
    dec e
    ldh [$3b], a
    ret nz

    or $01
    inc l
    jp nz, $8469

    ld l, c
    add h
    or l
    ld b, e
    ret nz

    ccf
    ld l, d
    dec d
    cp d
    dec b
    cp d
    dec b
    ld e, h
    add e
    ld a, [hl+]
    ld b, l
    ld l, $41
    inc e
    jp $7a20


    add a
    or a
    rst $08
    rst $18
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    db $db
    adc a
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_04b_6bdc:
    rst $38
    rst $38
    rst $38
    rst $38
    dec hl
    ret nc

    ld e, c
    and b
    ld d, [hl]
    and b
    ld [hl], l
    add d

jr_04b_6be8:
    xor b
    ld b, a
    ld d, b
    adc [hl]
    ld d, c
    adc h
    ld l, c
    add a
    ret nz

    ccf
    add sp, $17
    ldh a, [rIF]
    ld a, a
    nop
    cp b
    rlca
    ld e, h
    add e
    ld e, d
    dec b
    dec a
    add d
    rst $38

jr_04b_6c01:
    db $10
    rst $28
    jr c, jr_04b_6bdc

    db $ec
    inc hl
    rst $10
    ret nz

    dec sp
    nop
    rst $18

jr_04b_6c0c:
    nop
    daa
    jr nz, jr_04b_6be8

    inc e
    db $e3
    ld [hl], b
    adc a
    ldh [$1f], a
    ld [hl], b
    adc a

jr_04b_6c18:
    jr jr_04b_6c01

    add e
    ld a, h
    rlca
    ld hl, sp-$3f
    ld a, $06
    ld hl, sp+$1d
    ldh [$3b], a
    ret nz

    or $01
    inc l
    jp nz, $8469

    ld l, c
    add h
    or l
    ld b, e
    ret nz

    ccf
    ld l, d
    dec d
    cp d
    dec b
    cp d
    dec b
    ld e, h
    add e
    ld a, [hl+]
    ld b, l
    ld l, $41
    inc e
    jp Jump_000_04ff


    ei
    ld c, $f5
    dec sp
    ret z

    push af
    jr nc, jr_04b_6c18

    nop
    ld a, a
    nop
    sbc h
    add b
    ld h, e
    rlca
    ld hl, sp+$70
    adc a
    pop bc
    ld a, $83
    ld a, h
    pop bc
    ld a, $60
    sbc a
    ld c, $f1
    inc e
    db $e3
    inc bc
    db $fc
    ld d, $e8
    ld c, $f0
    db $fd
    nop
    ld a, [de]
    pop hl
    inc [hl]
    jp nz, $a055

    cp c
    ld b, e
    ld h, b
    rra
    cp d
    dec b
    jp c, Jump_04b_5e05

    add c
    inc l
    jp $e116


    ld d, $61
    ld l, $c1
    rst $38
    ld bc, $83fe
    ld a, l
    adc $32
    ld a, l
    inc c
    or e
    nop
    db $fd
    nop
    ld [hl], d
    ld [bc], a
    adc l
    pop bc
    ld a, $07
    ld hl, sp+$0e
    pop af
    rlca
    ld hl, sp-$7f
    ld a, [hl]
    jr c, @-$37

    ld [hl], b
    adc a
    inc e
    db $e3
    ld b, $f8
    dec e
    ldh [$3b], a
    ret nz

    or $01
    inc l
    jp nz, $8469

    ld l, c
    add h
    or l
    ld b, e
    ret nz

    ccf
    ld l, d
    dec d
    cp d
    dec b
    cp d
    dec b
    ld e, h
    add e
    ld a, [hl+]
    ld b, l
    ld l, $41
    inc e
    jp Jump_04b_40ff


    cp a
    ldh [$5f], a
    or e
    adc h
    ld e, a
    inc bc
    db $ec
    nop
    rst $30
    nop
    ret


    ld [$1c36], sp
    db $e3
    jr c, @-$37

    inc e
    db $e3
    ld b, $f9
    ldh [$1f], a
    pop bc
    ld a, $70
    adc a
    rlca
    ld hl, sp+$2b
    ret nc

    ld e, c
    and b
    ld d, [hl]
    and b
    ld [hl], l
    add d
    xor b
    ld b, a
    ld d, b
    adc [hl]
    ld d, c
    adc h
    ld l, c
    add a
    ret nz

    ccf
    add sp, $17
    ldh a, [rIF]
    ld a, a
    nop
    cp b
    rlca
    ld e, h
    add e
    ld e, d
    dec b
    dec a
    add d
    add a
    add a
    ld a, b
    ld a, b
    nop
    nop
    jr nc, jr_04b_6d38

    rst $30
    ld [hl], b
    sbc a
    ld h, b
    jr jr_04b_6d6e

    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    add a
    nop
    db $fd
    nop
    cp l
    nop
    or l
    nop
    ld [hl], $00
    nop
    rst $38
    rst $38
    pop hl
    pop hl
    db $10
    db $10
    jr nc, jr_04b_6d58

    ld a, [hl]
    ld h, b
    sbc a
    ld h, b
    add c
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    ld e, $00
    db $fd

jr_04b_6d38:
    nop
    or l
    nop
    or l
    nop
    scf
    nop
    nop
    pop hl
    pop hl
    ld e, $1e
    jr nz, jr_04b_6d66

    ld [hl], b
    ld [hl], b
    sub c
    ld [hl], b
    sbc a
    ld h, b
    ld a, [hl]
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    pop hl
    nop
    cp a

jr_04b_6d58:
    nop
    cp l
    nop
    or l
    nop
    ld d, h
    nop
    nop
    rst $38
    rst $38
    add a
    add a
    jr nc, jr_04b_6d96

jr_04b_6d66:
    ld [hl], b
    ld [hl], b
    jr jr_04b_6dca

    sbc a
    ld h, b
    rst $20
    ld h, b

jr_04b_6d6e:
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    cp a
    nop
    or l
    nop
    or l
    nop
    ld d, l
    nop
    nop
    ld a, b
    ld a, b
    add a
    add a
    jr nc, jr_04b_6db6

    ld [hl], b
    ld [hl], b
    jr jr_04b_6dea

    sbc a
    ld h, b
    rst $20
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    ld a, b

jr_04b_6d96:
    nop
    cp a
    nop
    or l
    nop
    or l
    nop
    ld d, l
    nop
    nop
    rst $38
    rst $38
    ld e, $1e
    jr nz, jr_04b_6dc6

    ld [hl], b
    ld [hl], b
    sub c
    ld [hl], b
    sbc a
    ld h, b
    ld a, [hl]
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    pop hl

jr_04b_6db6:
    nop
    cp a
    nop
    cp l
    nop
    or l
    nop
    ld d, h
    nop
    nop
    ld e, $1e
    pop hl
    pop hl
    db $10
    db $10

jr_04b_6dc6:
    jr nc, jr_04b_6df8

    ld a, [hl]
    ld h, b

jr_04b_6dca:
    sbc a
    ld h, b
    add c
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    ld e, $00
    db $fd
    nop
    or l
    nop
    or l

jr_04b_6ddc:
    nop
    scf
    nop
    nop
    rst $38
    rst $38
    ld a, b
    ld a, b
    nop
    nop
    jr nc, jr_04b_6e18

jr_04b_6de8:
    rst $30
    ld [hl], b

jr_04b_6dea:
    sbc a
    ld h, b
    jr jr_04b_6e4e

    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    add a
    nop
    db $fd

jr_04b_6df8:
    nop
    cp l
    nop
    or l
    nop
    ld [hl], $00
    nop
    rst $38
    db $10
    rst $28
    jr c, jr_04b_6ddc

    db $ec
    inc hl
    rst $10
    ret nz

    dec sp
    nop
    rst $18
    nop
    daa
    jr nz, jr_04b_6de8

    nop

jr_04b_6e11:
    cp l
    nop
    sbc $00
    ld e, [hl]
    nop
    cp l

jr_04b_6e18:
    nop
    push af
    nop
    ld a, d
    nop
    ld e, [hl]
    nop
    cp l
    inc e
    db $e3
    ld [hl], b
    adc a
    ldh [$1f], a
    ld [hl], b
    adc a
    jr jr_04b_6e11

    add e
    ld a, h
    rlca
    ld hl, sp-$3f
    ld a, $00
    ld b, l
    nop
    sub b
    nop
    ld b, h
    nop
    ld de, $1500
    nop
    ld b, c
    nop
    ld b, h
    nop
    ld de, $04ff
    ei
    ld c, $f5
    dec sp
    ret z

    push af
    jr nc, jr_04b_6e18

    nop
    ld a, a
    nop
    sbc h

jr_04b_6e4e:
    add b
    ld h, e
    nop
    ld a, d
    nop
    cp l
    nop
    xor a
    nop
    sbc $00
    ld a, d
    nop
    cp l
    nop
    cp h
    nop
    ld a, d
    rlca
    ld hl, sp+$70
    adc a
    pop bc
    ld a, $83
    ld a, h
    pop bc
    ld a, $60
    sbc a
    ld c, $f1
    inc e
    db $e3
    nop
    adc d
    nop

jr_04b_6e73:
    jr nz, jr_04b_6e75

jr_04b_6e75:
    ld [hl+], a
    nop
    adc b
    nop
    adc d
    nop
    jr nz, jr_04b_6e7d

jr_04b_6e7d:
    adc c
    nop
    inc hl
    rst $38
    ld bc, $83fe
    ld a, l
    adc $32
    ld a, l
    inc c
    or e
    nop
    db $fd
    nop
    ld [hl], d
    ld [bc], a
    adc l
    nop
    push af
    nop
    ld a, d
    nop
    ld e, [hl]
    nop
    cp l
    nop
    cp l
    nop
    sbc $00
    ld e, [hl]
    nop
    cp l
    pop bc
    ld a, $07
    ld hl, sp+$0e
    pop af
    rlca
    ld hl, sp-$7f
    ld a, [hl]
    jr c, jr_04b_6e73

    ld [hl], b
    adc a
    inc e
    db $e3
    nop
    dec d
    nop
    ld b, c
    nop
    ld b, h
    nop
    ld de, $4500
    nop
    sub b
    nop
    ld b, h
    nop
    ld de, $40ff
    cp a
    ldh [$5f], a
    or e
    adc h
    ld e, a
    inc bc
    db $ec
    nop
    rst $30
    nop
    ret


    ld [$0036], sp
    ld a, d
    nop
    cp l
    nop
    cp h
    nop
    ld a, d
    nop
    ld a, d
    nop
    cp l
    nop

jr_04b_6edd:
    xor a
    nop
    sbc $1c
    db $e3
    jr c, @-$37

    inc e
    db $e3
    ld b, $f9
    ldh [$1f], a
    pop bc
    ld a, $70
    adc a
    rlca
    ld hl, sp+$00
    adc d
    nop
    jr nz, jr_04b_6ef5

jr_04b_6ef5:
    adc c
    nop
    inc hl
    nop
    adc d
    nop
    jr nz, jr_04b_6efd

jr_04b_6efd:
    ld [hl+], a
    nop
    adc b
    rst $38
    nop
    cp a
    ld b, b
    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    inc c
    di
    jr nc, jr_04b_6edd

    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp h
    ld b, e
    db $10
    rst $28
    ld [$04f7], sp
    ei
    nop
    rst $38
    and h
    db $fd
    and [hl]
    and $93
    di
    ret nc

    ld [hl], c
    call z, $e37d
    ccf
    ld hl, sp+$1f
    rst $38
    rlca
    dec h
    cp a
    ld h, l
    ld h, a
    ret


    rst $08
    adc e
    ld c, $b3
    ld a, $c7
    db $fc
    rra
    ld hl, sp-$01
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, e
    add h
    ld sp, $c0ce
    ccf
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ei
    inc b
    pop af
    ld c, $c0
    ccf
    nop
    rst $38
    add b
    ld a, a
    ld b, e
    cp h
    nop
    rst $38
    and h
    push hl
    and [hl]
    and $93
    rst $38
    call nc, $cc78
    ld a, h
    db $e3
    ccf
    ld hl, sp+$1f
    rst $38
    rlca
    dec h
    and a
    ld h, l
    ld h, a
    reti


    rst $28
    dec bc
    ld a, $33
    ld a, $c7
    db $fc
    rra
    ld hl, sp-$01
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    cp h
    ld b, e
    db $10
    rst $28
    ld [$04f7], sp
    ei
    nop
    rst $38
    rst $38
    nop
    cp a
    ld b, b
    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    inc c
    di
    jr nc, @-$2f

    nop
    rst $38
    and h
    db $fd
    and [hl]
    and $93
    di
    ret nc

    ld [hl], c
    call z, $e37d
    ccf
    ld hl, sp+$1f
    rst $38
    rlca
    dec h
    cp a
    ld h, l
    ld h, a
    ret


    rst $08
    adc e
    ld c, $b3
    ld a, $c7
    db $fc
    rra
    ld hl, sp-$01
    ldh [rIE], a
    nop
    ei
    inc b
    pop af
    ld c, $c0
    ccf
    nop
    rst $38
    add b
    ld a, a
    ld b, e
    cp h
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, e
    add h
    ld sp, $c0ce
    ccf
    nop
    rst $38
    nop
    rst $38
    and h
    push hl
    and [hl]
    and $93
    rst $38
    call nc, $cc78
    ld a, h
    db $e3
    ccf
    ld hl, sp+$1f
    rst $38
    rlca
    dec h
    and a
    ld h, l
    ld h, a
    reti


    rst $28
    dec bc
    ld a, $33
    ld a, $c7
    db $fc
    rra
    ld hl, sp-$01
    ldh [$fe], a
    cp $fc
    db $fd
    ld sp, hl
    ld a, [$f4f3]
    di
    db $f4
    ld sp, hl
    ld a, [$fdfc]
    cp $fe
    ld a, a
    ld a, a
    ccf
    cp a
    sbc a
    ld e, a
    rst $08
    cpl
    rst $08
    cpl
    sbc a
    ld e, a
    ccf
    cp a
    ld a, a
    ld a, a
    and h
    db $fd
    and [hl]
    and $93
    di
    ret nc

    pop af
    call z, $e3fd
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    dec h
    cp a
    ld h, l
    ld h, a
    ret


    rst $08
    adc e
    rrca
    or e
    ccf
    rst $00
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    jp $99db


    and l
    inc a
    ld b, d
    inc a
    ld b, d
    sbc c
    and l
    jp $e7db


    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and h
    push hl
    and [hl]
    and $93
    rst $38
    call nc, $ccf8
    db $fc
    db $e3
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    dec h
    and a
    ld h, l
    ld h, a
    reti


    rst $28
    dec bc
    ccf
    inc sp
    ccf
    rst $00
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    cp a
    sbc a
    ld e, a
    rst $08
    cpl
    rst $08
    cpl
    sbc a
    ld e, a
    ccf
    cp a
    ld a, a
    ld a, a
    cp $fe
    db $fc
    db $fd
    ld sp, hl
    ld a, [$f4f3]
    di
    db $f4
    ld sp, hl
    ld a, [$fdfc]
    cp $fe
    and h
    db $fd
    and [hl]
    and $93
    di
    ret nc

    pop af
    call z, $e3fd
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    dec h
    cp a
    ld h, l
    ld h, a
    ret


    rst $08
    adc e
    rrca
    or e
    ccf
    rst $00
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    jp $99db


    and l
    inc a
    ld b, d
    inc a
    ld b, d
    sbc c
    and l
    jp $e7db


    rst $20
    and h
    push hl
    and [hl]
    and $93
    rst $38
    call nc, $ccf8
    db $fc
    db $e3
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    dec h
    and a
    ld h, l
    ld h, a
    reti


    rst $28
    dec bc
    ccf
    inc sp
    ccf
    rst $00
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ldh [$e0], a
    add e
    adc h
    ld [hl], a
    ld a, b
    di
    db $fc
    ei
    db $fc
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rlca
    rlca
    pop bc
    ld sp, $1eee
    rst $08
    ccf
    rst $18
    ccf
    ld a, a
    ld a, a
    ccf
    cp a
    sbc a
    rst $18
    sbc a
    rst $18
    sbc a
    rst $18
    sbc a
    rst $18
    rst $08
    rst $28
    rst $28
    rst $38
    db $fc
    db $fc
    ld hl, sp-$05
    di
    rst $30
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $08
    rst $18
    sbc a
    cp a
    cp $ff
    cp $ff
    cp $ff
    ldh [$e0], a
    add e
    adc h
    ld [hl], a
    ld a, b
    di
    db $fc
    ei
    db $fc
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rlca
    rlca
    pop bc
    ld sp, $1eee
    rst $08
    ccf
    rst $18
    ccf
    ccf
    ccf
    rra
    rst $18
    rst $08
    rst $28
    rst $20
    rst $30
    rst $20
    rst $30
    rst $20
    rst $30
    di
    ei
    ld sp, hl
    db $fd
    db $fc
    db $fc
    ldh a, [$f3]
    db $e3
    rst $28
    rst $08
    rst $18
    sbc a
    cp a
    ld a, a
    ccf
    cp a
    ld e, a
    rst $38
    xor a
    cp $ff
    cp $ff
    cp $ff
    ldh [$e0], a
    add e
    add e
    ld [hl], a
    ld [hl], a
    rst $30
    rst $30
    ei
    ei
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rlca
    rlca
    pop bc
    pop bc
    xor $ee
    rst $28
    rst $28
    rst $18
    rst $18
    ccf
    ccf
    rrca
    rst $08
    rst $00
    rst $30
    di
    ei
    ld sp, hl
    db $fd
    cp $fc
    db $fd
    ld a, [$f5ff]
    db $fc
    db $fc
    ld hl, sp-$05
    di
    rst $30
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $08
    rst $18
    sbc a
    cp a
    cp $ff
    cp $ff
    cp $ff
    ldh [$e0], a
    add e
    adc h
    ld [hl], a
    ld a, b
    di
    db $fc
    ei
    db $fc
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rlca
    rlca
    pop bc
    ld sp, $1eee
    rst $08
    ccf
    rst $18
    ccf
    ccf
    ccf
    rra
    rst $18
    rst $08
    rst $28
    rst $20
    rst $30
    rst $20
    rst $30
    rst $20
    rst $30
    di
    ei
    ld sp, hl
    db $fd
    cp $fe
    db $fc
    db $fd
    ld sp, hl
    ei
    ld sp, hl
    ei
    ld sp, hl
    ei
    ld sp, hl
    ei
    di
    rst $30
    rst $30
    rst $38
    pop bc
    db $e3
    cp b
    ld hl, sp+$72
    ld a, d
    xor $fc
    db $dd
    db $fd
    db $db
    db $db
    db $dd
    db $dd
    rst $38
    rst $38
    or e
    or a
    dec a
    dec a
    ld c, [hl]
    ld e, [hl]
    ld [hl], a
    ccf
    cp e
    cp a
    db $db
    rst $18
    cp e
    cp a
    rst $38
    rst $38
    sbc $df
    sbc $df
    sbc $df
    ld e, [hl]
    rst $18
    ld l, h
    xor $a8
    xor h
    set 1, a
    ldh a, [$f4]
    ei
    ei
    ei
    rst $38
    ei
    rst $38
    ld a, d
    ld a, [$7636]
    dec d
    rra
    db $d3
    db $d3
    ccf
    ccf
    pop bc
    db $e3
    cp b
    ld hl, sp-$4e
    cp d
    xor [hl]
    cp h
    db $ed
    db $ed
    db $eb
    db $eb
    db $ed
    db $ed
    rst $38
    rst $38
    or e
    or a
    dec a
    dec a
    ld c, l
    ld e, l
    ld [hl], l
    dec a
    or a
    cp a
    rst $10
    rst $18
    or a
    cp a
    rst $38
    rst $38
    or $f7
    xor $ef
    xor $ef
    xor [hl]
    rst $28
    xor h
    xor $a8
    xor h
    jp $f0c7


    db $f4
    rst $28
    rst $28
    rst $30
    rst $38
    rst $30
    rst $38
    ld [hl], l
    push af
    dec [hl]
    ld [hl], l
    dec d
    rra
    db $d3
    db $d3
    ccf
    ccf
    pop af
    di
    add sp, -$08
    jp c, $d6fa

    call c, $ddcd
    db $eb
    db $eb
    push af
    push af
    rst $38
    rst $38
    xor a
    xor a
    scf
    ccf
    ld e, e
    ld e, a
    ld l, e
    dec sp
    or e
    cp e
    rst $10
    rst $18
    xor a
    cp a
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$07
    and $f7
    sub $f7
    call nc, $d0d6
    call nc, $e7e3
    ldh a, [$f4]
    rst $38
    rst $38
    sbc a
    cp a
    rst $20
    rst $30
    ld l, e
    db $eb
    dec hl
    ld l, e
    dec de
    rra
    rst $10
    rst $10
    ccf
    ccf
    pop bc
    db $e3
    cp b
    ld hl, sp-$4e
    cp d
    xor [hl]
    cp h
    db $ed
    db $ed
    db $eb
    db $eb
    db $ed
    db $ed
    rst $38
    rst $38
    or e
    or a
    dec a
    dec a
    ld c, l
    ld e, l
    ld [hl], l
    dec a
    or a
    cp a
    rst $10
    rst $18
    or a
    cp a
    rst $38
    rst $38
    or $f7
    xor $ef
    xor $ef
    xor [hl]
    rst $28
    xor h
    xor $a8
    xor h
    jp $f0c7


    db $f4
    rst $28
    rst $28
    rst $30
    rst $38
    rst $30
    rst $38
    ld [hl], l
    push af
    dec [hl]
    ld [hl], l
    dec d
    rra
    db $d3
    db $d3
    ccf
    ccf
    rst $38
    rst $28
    rst $38
    rst $10
    rst $28
    dec sp
    rst $10
    db $f4
    dec sp
    ei
    rst $18
    rst $18
    daa
    daa
    ret c

    ld hl, sp+$5b
    ld e, e
    ld [hl], c
    ld [hl], c
    pop af
    pop af
    db $e4
    db $e4
    xor $ee
    cp [hl]
    cp [hl]
    sbc a
    sbc a
    rra
    rra
    db $e3
    db $e3
    adc a
    adc a
    rra
    rra
    adc a
    adc a
    rst $20
    rst $20
    ld a, h
    ld a, h
    ld hl, sp-$08
    ld a, $3e
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld a, l
    ld a, l
    ld [hl], a
    ld [hl], a
    daa
    daa
    adc a
    adc a
    adc [hl]
    adc [hl]
    jp c, $ffda

    ei
    rst $38
    push af
    ei
    adc $f5
    dec a
    adc $fe
    ld a, a
    ld a, a
    sbc h
    sbc h
    ld h, e
    db $e3
    db $e3
    db $e3
    ret


    ret


    db $dd
    db $dd
    ld a, l
    ld a, l
    ccf
    ccf
    ld a, $3e
    or [hl]
    or [hl]
    ld [c], a
    ld [c], a
    ld hl, sp-$08
    adc a
    adc a
    ld a, $3e
    ld a, h
    ld a, h
    ld a, $3e
    sbc a
    sbc a
    pop af
    pop af
    db $e3
    db $e3
    ld b, a
    ld b, a
    ld l, l
    ld l, l
    ld a, h
    ld a, h
    db $fc
    db $fc
    cp [hl]
    cp [hl]
    cp e
    cp e
    sub e
    sub e
    rst $00
    rst $00
    rst $38
    cp $ff
    ld a, l
    cp $b3
    ld a, l
    ld c, a
    or e
    cp a
    db $fd
    db $fd
    ld [hl], d
    ld [hl], d
    adc l
    adc a
    xor $ee
    cp [hl]
    cp [hl]
    sbc a
    sbc a
    rra
    rra
    ld e, e
    ld e, e
    ld [hl], c
    ld [hl], c
    pop af
    pop af
    db $e4
    db $e4
    ld a, $3e
    ld hl, sp-$08
    pop af
    pop af
    ld hl, sp-$08
    ld a, [hl]
    ld a, [hl]
    rst $00
    rst $00
    adc a
    adc a
    db $e3
    db $e3
    daa
    daa
    adc a
    adc a
    adc [hl]
    adc [hl]
    jp c, $f8da

    ld hl, sp-$07
    ld sp, hl
    ld a, l
    ld a, l
    ld [hl], a
    ld [hl], a
    rst $38
    cp a
    rst $38
    ld e, a
    cp a
    db $ec
    ld e, a
    db $d3
    db $ec
    rst $28
    rst $30
    rst $30
    ret


    ret


    ld [hl], $3e
    rst $08
    rst $08
    adc a
    adc a
    xor l
    xor l
    cp b
    cp b
    ld hl, sp-$08
    ld [hl], d
    ld [hl], d
    ld [hl], a
    ld [hl], a
    ld e, a
    ld e, a
    db $e3
    db $e3
    rst $00
    rst $00
    db $e3
    db $e3
    ld sp, hl
    ld sp, hl
    rra
    rra
    ld a, $3e
    adc a
    adc a
    ld hl, sp-$08
    ld a, [$eefa]
    xor $4e
    ld c, [hl]
    rra
    rra
    dec e
    dec e
    or l
    or l
    pop af
    pop af
    di
    di
    rst $38
    rst $38
    rst $38
    ld b, h
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld d, l
    ld b, h
    ld b, h
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, h
    rst $38
    call z, $ccee
    xor $cc
    xor $cc
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    inc sp
    xor d
    inc sp
    xor d
    inc sp
    xor d
    inc sp
    xor d
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    rst $38
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc b
    call z, $ccaa
    xor d
    call z, $ccaa
    xor d
    adc b
    adc b
    rst $38
    rst $38
    rst $38
    rst $38
    adc b
    rst $38
    sbc c
    db $dd
    sbc c
    db $dd
    sbc c
    db $dd
    sbc c
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $5599
    sbc c
    ld d, l
    sbc c
    ld d, l
    sbc c
    ld d, l
    ld de, $ff11
    rst $38
    rst $38
    rst $38
    ld de, $33ff
    cp e
    inc sp
    cp e
    inc sp
    cp e
    inc sp
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $5599
    sbc c
    ld d, l
    sbc c
    ld d, l
    sbc c
    ld d, l
    ld de, $ff11
    rst $38
    rst $38
    rst $38
    ld de, $33ff
    cp e
    inc sp
    cp e
    inc sp
    cp e
    inc sp
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc b
    call z, $ccaa
    xor d
    call z, $ccaa
    xor d
    adc b
    adc b
    rst $38
    rst $38
    rst $38
    rst $38
    adc b
    rst $38
    sbc c
    db $dd
    sbc c
    db $dd
    sbc c
    db $dd
    sbc c
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    inc sp
    xor d
    inc sp
    xor d
    inc sp
    xor d
    inc sp
    xor d
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    rst $38
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, h
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld d, l
    ld b, h
    ld b, h
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, h
    rst $38
    call z, $ccee
    xor $cc
    xor $cc
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $c33c


    inc a
    ldh a, [$f0]
    pop hl
    rst $38
    inc a
    nop
    ld a, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, b
    nop
    inc a
    nop
    ld e, $00
    rst $38
    nop
    jp $c33c


    inc a
    rst $38
    rst $38
    rst $38
    rst $38
    jp $c33c


    inc a
    rrca
    rrca
    add a
    rst $38
    inc a
    nop
    ld e, $00
    rrca
    nop
    rrca
    nop
    ld e, $00
    inc a
    nop
    ld a, b
    nop
    rst $38
    nop
    jp $c33c


    inc a
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    ldh a, [rIF]
    ldh a, [$c3]
    jp $ff87


    ldh a, [rP1]
    pop hl
    nop
    jp $c300


    nop
    pop hl
    nop
    ldh a, [rP1]
    ld a, b
    nop
    rst $38
    nop
    rrca
    ldh a, [rIF]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    jp $e1c3


    rst $38
    rrca
    nop
    add a
    nop
    jp $c300


    nop
    add a
    nop
    rrca
    nop
    ld e, $00
    rst $38
    nop
    ldh a, [rIF]
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rst $38
    inc a
    jp $c33c


    rrca
    rrca
    ld e, $ff
    jp $8700


    nop
    rrca
    nop
    rrca
    nop
    add a
    nop
    jp $e100


    nop
    rst $38
    nop
    inc a

jr_04b_759b:
    jp $c33c


    rst $38
    rst $38
    rst $38
    rst $38
    inc a
    jp $c33c


    ldh a, [$f0]
    ld a, b
    rst $38
    jp $e100


    nop
    ldh a, [rP1]
    ldh a, [rP1]
    pop hl
    nop
    jp $8700


    nop
    rst $38
    nop
    inc a
    jp $c33c


    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    inc a
    inc a
    ld a, b
    rst $38
    rrca
    nop
    ld e, $00
    inc a
    nop
    inc a
    nop
    ld e, $00
    rrca
    nop
    add a
    nop
    rst $38
    nop
    ldh a, [rIF]
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    ldh a, [rIF]
    ldh a, [$3c]
    inc a
    ld e, $ff
    ldh a, [rP1]
    ld a, b
    nop
    inc a
    nop
    inc a
    nop
    ld a, b
    nop
    ldh a, [rP1]
    pop hl
    nop
    rst $38
    nop
    rrca
    ldh a, [rIF]
    ldh a, [rIE]
    rst $38
    rst $00
    rst $38
    rst $28
    jr c, @+$01

    db $10
    ld a, l
    and d
    sbc d
    ld b, l
    jr nc, jr_04b_759b

    jr z, @-$67

    db $10
    xor a
    nop
    sbc a
    nop
    adc a
    nop
    sub a
    nop
    adc d
    nop
    ld b, l
    db $10
    db $10
    jr z, jr_04b_7656

    rst $00
    rst $38
    db $e3
    rst $38
    rst $30
    inc e
    rst $38
    ld [$45be], sp
    ld e, c
    and d
    inc c
    pop af
    inc d
    jp hl


    ld [$00f5], sp
    ld sp, hl
    nop
    pop af
    nop
    jp hl


    nop
    ld d, c
    nop
    and d
    ld [$1408], sp
    inc e
    db $e3
    rst $38
    rra
    rst $38
    cp a
    ldh [rIE], a
    ld b, b
    push af
    adc d
    ld l, d
    dec d
    ret nz

    ld a, $a0
    ld e, [hl]
    ld b, b
    cp [hl]
    nop
    ld a, [hl]
    nop
    ld a, $00
    ld e, [hl]

jr_04b_7656:
    nop
    ld a, [hl+]
    nop
    dec d
    ld b, b
    ld b, b
    and b
    ldh [$1f], a
    rst $38
    ld hl, sp-$01
    db $fd
    rlca
    rst $38
    ld [bc], a
    xor a
    ld d, c
    ld d, [hl]
    xor b
    inc bc
    ld a, h
    dec b
    ld a, d
    ld [bc], a
    ld a, l
    nop
    ld a, [hl]
    nop
    ld a, h
    nop
    ld a, d
    nop
    ld d, h
    nop
    xor b
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    ld hl, sp-$01
    ld a, h
    rst $38
    cp $83
    rst $38
    ld bc, $2ad7
    xor c
    ld d, h
    inc bc
    ld hl, sp-$7e
    ld a, c
    ld bc, $00fa
    ld sp, hl
    nop
    ld hl, sp+$00
    ld a, c
    nop
    xor b
    nop
    ld d, h
    ld bc, $8201
    add e
    ld a, h
    rst $38
    ld a, $ff
    ld a, a
    pop bc
    rst $38
    add b
    db $eb
    ld d, h
    sub l
    ld a, [hl+]
    ret nz

    rra
    ld b, c
    sbc [hl]
    add b
    ld e, a
    nop
    sbc a
    nop

jr_04b_76b3:
    rra
    nop
    sbc [hl]
    nop
    dec d
    nop
    ld a, [hl+]
    add b
    add b
    ld b, c
    pop bc
    ld a, $ff
    pop af
    rst $38
    ei
    ld c, $ff
    inc b
    ld e, a

jr_04b_76c7:
    xor b
    and [hl]
    ld d, c
    inc c
    db $e3
    ld a, [bc]
    push hl
    inc b
    db $eb
    nop
    rst $20
    nop
    db $e3
    nop
    push hl
    nop
    and d
    nop
    ld d, c
    inc b
    inc b
    ld a, [bc]
    ld c, $f1
    rst $38
    adc a

jr_04b_76e1:
    rst $38
    rst $18
    ld [hl], b
    rst $38
    jr nz, jr_04b_76e1

    dec d
    ld h, l
    adc d
    jr nc, jr_04b_76b3

    ld d, b
    and a
    jr nz, jr_04b_76c7

    nop
    rst $20
    nop
    rst $00
    nop
    and a
    nop
    ld b, l
    nop
    adc d
    jr nz, jr_04b_771c

    ld d, b
    ld [hl], b
    adc a
    rst $38
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld bc, $00fc
    rst $38
    dec b
    ld a, [$da24]
    dec h
    jp c, $c813

    add b
    ld a, a
    db $10
    rst $28
    jr nz, @+$51

    ld b, b
    rra
    nop
    cp a
    inc h
    ld e, e

jr_04b_771c:
    inc h
    db $db
    ld [$2133], sp
    adc $12
    call $ec11
    ld c, b
    and l
    dec h
    jp c, $e304

    add d
    ld a, c
    add c
    ld a, b
    ld [$90b3], sp
    ld h, a
    ld h, b
    sub a
    nop
    cpl
    inc b
    sbc e
    inc b
    ld a, e
    ld [$9893], sp
    ld b, a
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld bc, $00fc
    rst $38
    dec b
    ld a, [$da24]
    dec h
    jp c, $c813

    add b
    ld a, a
    db $10
    rst $28
    jr nz, @+$51

    ld b, b
    rra
    nop
    cp a
    inc h
    ld e, e
    inc h
    db $db
    ld [$2133], sp
    adc $12
    call $ec11
    ld c, b
    and l
    dec h
    jp c, $e304

    add d
    ld a, c
    add c
    ld a, b
    ld [$90b3], sp
    ld h, a
    ld h, b
    sub a
    nop
    cpl
    inc b
    sbc e
    inc b
    ld a, e
    ld [$9893], sp
    ld b, a
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld bc, $00fc
    rst $38
    dec b
    ld a, [$da24]
    dec h
    jp c, $c813

    add b
    ld a, a
    db $10
    rst $28
    jr nz, @+$51

    ld b, b
    rra
    nop
    cp a
    inc h
    ld e, e
    inc h
    db $db
    ld [$2133], sp
    adc $12
    call $ec11
    ld c, b
    and l
    dec h
    jp c, $e304

    add d
    ld a, c
    add c
    ld a, b
    ld [$90b3], sp
    ld h, a
    ld h, b
    sub a
    nop
    cpl
    inc b
    sbc e
    inc b
    ld a, e
    ld [$9893], sp
    ld b, a
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld bc, $00fc
    rst $38
    dec b
    ld a, [$da24]
    dec h
    jp c, $c813

    add b
    ld a, a
    db $10
    rst $28
    jr nz, jr_04b_7825

    ld b, b
    rra
    nop
    cp a
    inc h
    ld e, e
    inc h
    db $db
    ld [$2133], sp
    adc $12
    call $ec11
    ld c, b
    and l
    dec h
    jp c, $e304

    add d
    ld a, c
    add c
    ld a, b
    ld [$90b3], sp
    ld h, a
    ld h, b
    sub a
    nop
    cpl
    inc b
    sbc e
    inc b
    ld a, e
    ld [$9893], sp
    ld b, a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc e
    rst $38
    ldh [rIE], a
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    cp b
    ld a, a
    rlca
    ldh [$fe], a
    db $fd
    inc e
    rst $38

jr_04b_7825:
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $7f07
    ccf
    ld hl, sp+$7f
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
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
    rst $38
    rst $38
    ld h, b
    ld hl, sp+$1f
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    and b
    cp a
    ld h, b
    cp a
    ld h, b

jr_04b_785e:
    ccf
    and b
    db $fc
    ld b, $fe
    inc b
    cp $05
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    ld b, $ff
    ld b, $ff
    inc b
    ld a, a
    jr jr_04b_787a

    ld a, $ff
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_04b_787a:
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
    jr nc, @+$01

    jr z, @+$01

    ld d, $fd
    dec bc
    ld a, [$fd0d]
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    inc d
    rst $38
    ld l, b
    rst $38
    sub b
    rst $18
    jr nc, jr_04b_785e

    ld h, b
    rst $38
    inc b
    cp $09
    db $fd
    dec bc
    rst $38
    ld d, $ff
    jr z, @+$01

    jr nc, @+$01

    nop
    rst $38
    nop
    ccf
    and b
    rra
    ld d, b
    sbc a
    or b

jr_04b_78b6:
    rst $28
    ld a, b
    rst $30
    inc e
    rst $38
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld b, $ff
    dec b
    rst $38
    dec b
    cp $05
    cp $05
    cp $05
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
    rst $38
    rst $38

jr_04b_78dd:
    ld b, $1f
    ld a, b
    cp $19
    ld hl, sp+$64
    rst $38
    rst $38
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
    ccf
    jr nz, jr_04b_7932

    and b
    cp a
    jr nz, jr_04b_78b6

    ldh [$bf], a
    ldh [rIE], a
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nz, jr_04b_7902

    rst $38

jr_04b_7902:
    ld bc, $01ff
    rst $38
    inc bc
    cp $03
    cp $03
    cp $1f
    db $fc
    rst $38
    ldh [$80], a
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr c, jr_04b_78dd

    ld a, a

jr_04b_791f:
    rlca
    ldh [$fe], a
    dec e
    db $fc
    inc bc
    cp $03
    cp $03
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    rlca
    ld a, a

jr_04b_7932:
    jr c, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
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
    rst $38
    rst $38
    ld a, a
    ldh [rNR23], a
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [$bf], a
    ldh [$bf], a
    and b
    ld a, a
    and b
    ld a, a
    jr nz, jr_04b_791f

    inc b
    cp $06
    db $fc
    ld b, $fd
    rlca
    db $fd
    rlca
    db $fd
    ld b, $ff
    ld b, $ff
    inc b
    rst $38
    ld a, b

jr_04b_7971:
    rra
    ld b, $3f
    rst $38
    rst $38
    nop

jr_04b_7977:
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
    jr nc, @+$01

    jr c, jr_04b_7977

    ld e, $f7
    dec c
    ei
    ld a, [bc]
    db $fd
    dec b
    cp $00
    rst $38
    nop
    rst $38
    inc c
    rst $38
    inc e
    rst $30
    ld a, b

jr_04b_7999:
    rst $28
    ldh a, [$9f]
    ret nc

    ccf
    and b
    ld a, a
    rlca
    db $fc
    ld c, $f9
    dec c
    ei
    ld e, $f7
    jr c, jr_04b_7999

    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    jr nz, jr_04b_7971

    db $10

jr_04b_79b3:
    ld e, a
    sub b
    cp a
    ld l, b
    rst $38
    inc d
    rst $38
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld b, $ff
    rlca
    db $fd
    rlca
    db $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
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
    rst $38
    rst $38

jr_04b_79dc:
    cp $07
    jr jr_04b_7a5f

    ld e, $f9
    ld a, b
    db $e4
    rst $38
    rst $38
    nop
    rst $38

jr_04b_79e8:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_04b_7a31

    jr nz, jr_04b_79b3

    and b
    ccf
    and b
    rst $38
    and b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    rst $38

jr_04b_7a01:
    db $10
    rst $28
    jr c, jr_04b_79dc

    db $ec
    inc hl
    rst $10
    ret nz

    dec sp
    nop
    rst $18
    nop
    daa
    jr nz, jr_04b_79e8

    inc e
    db $e3
    ld [hl], b
    adc a
    ldh [$1f], a
    ld [hl], b
    adc a

jr_04b_7a18:
    jr jr_04b_7a01

    add e
    ld a, h
    rlca
    ld hl, sp-$3f
    ld a, $00
    rst $28
    nop
    rst $20
    nop
    db $e3
    nop
    jp hl


    nop
    ret


    nop
    pop de
    nop
    and e
    nop
    adc e
    nop

jr_04b_7a31:
    and e
    nop
    add e
    nop
    pop de
    nop
    ret


    nop
    jp hl


    nop
    db $e3
    ld [$08ff], sp
    rst $38
    rst $38
    inc b
    ei
    ld c, $f5
    dec sp
    ret z

    push af
    jr nc, jr_04b_7a18

    nop
    ld a, a
    nop
    sbc h
    add b
    ld h, e
    rlca
    ld hl, sp+$70
    adc a
    pop bc
    ld a, $83
    ld a, h
    pop bc
    ld a, $60
    sbc a
    ld c, $f1
    inc e

jr_04b_7a5f:
    db $e3
    nop
    rst $30
    nop

jr_04b_7a63:
    rst $20
    nop
    rst $00
    nop
    and e
    nop
    and e
    nop
    and a
    nop
    and a
    nop
    adc e
    nop
    pop de
    nop
    pop bc
    nop
    pop de
    nop
    ret


    nop
    jp hl


    nop
    db $e3
    ld [$08ff], sp
    rst $38
    rst $38
    ld bc, $83fe
    ld a, l
    adc $32
    ld a, l
    inc c
    or e
    nop
    db $fd
    nop
    ld [hl], d
    ld [bc], a
    adc l
    pop bc
    ld a, $07
    ld hl, sp+$0e
    pop af
    rlca
    ld hl, sp-$7f
    ld a, [hl]
    jr c, jr_04b_7a63

    ld [hl], b
    adc a
    inc e
    db $e3
    nop
    rst $18
    nop
    rst $08
    nop
    adc a
    nop
    and a
    nop
    and a
    nop
    and e
    nop
    pop de
    nop
    pop hl
    nop
    pop de
    nop
    pop bc
    nop
    pop de
    nop
    db $d3
    nop
    rlc b
    db $e3
    ld [$08ff], sp
    rst $38
    rst $38
    ld b, b
    cp a
    ldh [$5f], a
    or e
    adc h
    ld e, a
    inc bc
    db $ec
    nop
    rst $30
    nop
    ret


    ld [$1c36], sp
    db $e3
    jr c, @-$37

    inc e
    db $e3
    ld b, $f9
    ldh [$1f], a
    pop bc
    ld a, $70
    adc a
    rlca
    ld hl, sp+$00
    cp a
    nop
    sbc a
    nop
    add a
    nop
    pop de
    nop
    jp hl


    nop
    jp hl


    nop
    jp hl


    nop
    pop bc
    nop
    db $d3
    nop
    jp $d300


    nop
    db $d3
    nop
    rlc b
    db $e3
    ld [$08ff], sp
    rst $38
    rst $38
    adc b
    rst $38
    ld d, l
    rst $38
    ld [hl+], a
    rst $38
    ld e, a
    ldh a, [$90]
    ldh a, [$57]
    ldh a, [$37]
    ldh a, [$57]
    rst $38
    adc b
    rst $38
    ld d, l
    rst $38
    ld [hl+], a
    rst $38
    ld sp, hl
    rrca
    ld a, [bc]
    rrca
    db $ec
    rrca
    ld [$e90f], a
    ldh a, [$97]
    ldh a, [$57]
    ldh a, [$37]
    ldh a, [$50]
    rst $38
    sbc a
    rst $38
    ld b, h
    rst $38
    ld a, [hl+]
    rst $38
    ld d, c
    rrca
    ld [$ec0f], a
    rrca
    ld [$090f], a
    rst $38
    ld a, [$44ff]
    rst $38
    xor d
    rst $38
    ld de, $44ff
    rst $38
    xor d
    rst $38
    ld d, c
    rst $38
    sbc a
    push af
    ld d, l
    ld hl, sp+$38
    ldh a, [rHDMA3]
    ld hl, sp-$65
    rst $38
    ld b, h
    rst $38
    xor d
    rst $38
    ld de, $faff
    ld e, a
    ld e, c
    rrca
    ld a, [bc]
    rra
    call c, $ca0f
    ldh a, [rHDMA3]
    ld hl, sp+$3b
    ldh a, [$50]
    ld_long a, $ff9a
    ld e, a
    rst $38
    adc b
    rst $38
    ld d, l
    rst $38
    and d
    rra
    reti


    rrca
    jp z, $1c1f

    xor a
    xor d
    rst $38
    ld sp, hl
    rst $38
    adc d
    rst $38
    ld d, l
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld d, l
    rst $38
    adc b
    rst $38
    ld e, a
    rst $38
    ccf
    ld a, [$fc5a]
    sbc h
    ld hl, sp+$59
    rst $38
    ld [hl+], a
    rst $38
    ld d, l
    rst $38
    adc d
    rst $38
    db $fc
    rst $38
    ld a, [$b9bf]
    rra
    ld a, [de]
    ccf
    cp h
    db $fc
    dec a
    ld hl, sp+$58
    db $fd
    sbc l
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    ld b, h
    rra
    sbc d
    ccf
    add hl, sp
    ld e, a
    ld e, d
    rst $38
    db $fc
    rst $38
    ld a, [$11ff]
    rst $38
    xor d
    rst $38
    ld b, h
    rst $38
    ld de, $aaff
    rst $38
    ld b, h
    rst $38
    ccf
    push af
    ld d, l
    ld hl, sp-$68
    ldh a, [rHDMA3]
    ld hl, sp+$3b
    rst $38
    ld de, $aaff
    rst $38
    ld b, l
    rst $38
    ld a, [$5c5f]
    rrca
    ld a, [bc]
    rra
    reti


    rrca
    jp z, Jump_04b_53f0

    ld hl, sp-$65
    ldh a, [$50]
    ld_long a, $ff3a
    ld e, a
    rst $38
    and d
    rst $38
    ld d, l
    rst $38
    adc b
    rra
    call c, $ca0f
    rra
    add hl, de
    xor a
    xor d
    rst $38
    db $fc
    rst $38
    ld [hl+], a
    rst $38
    ld d, l
    rst $38
    adc d
    ld h, $d8
    ld e, l
    and b
    ld a, e
    add b
    db $76
    add c
    db $ec
    ld [bc], a
    ld l, c
    add h
    ld l, c
    add h
    or h
    ld b, d
    call nc, Call_04b_6a2b
    dec d
    cp l
    ld [bc], a
    cp d
    dec b
    ld e, l
    add d
    ld a, [hl+]
    ld b, l
    ld l, $41
    dec e
    jp nz, $8040

    call z, Call_04b_4013
    add b
    add b
    ld [hl], b
    ld b, [hl]
    or c
    ld b, $f1
    inc bc
    ld hl, sp+$00
    db $fc
    inc bc
    nop
    ld [bc], a
    ret


    ld [bc], a
    ld bc, $0c03
    ld [bc], a
    call $8f00
    nop
    sbc a
    nop
    ccf
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
    rst $38
    nop
    rst $38

jr_04b_7c52:
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
    ret nz

    inc c
    db $d3
    nop
    ret nz

    nop
    ldh a, [rTMA]
    pop af
    ld b, $f1
    inc bc
    ld hl, sp+$00
    db $fc
    nop
    inc bc
    nop
    rlc b
    inc bc
    nop
    rrca
    nop
    rst $08
    nop
    adc a
    nop
    sbc a
    nop
    ccf
    dec de
    db $e4
    ld l, $d0
    ld e, [hl]
    and b
    dec a
    ret nz

    ld e, d
    and c
    inc [hl]
    jp nz, $a055

    jr c, jr_04b_7c52

    ld l, d
    dec d
    or a
    ld [$05da], sp
    ld e, l
    add d
    dec l
    ld b, d
    ld d, $21
    rla
    jr nz, jr_04b_7ccd

    ld b, c
    ret nz

    nop
    call z, Call_04b_4013
    add b
    and b
    ld d, b
    ld b, $f1
    ld b, $f1
    inc bc
    ld hl, sp+$00
    db $fc
    inc bc
    nop
    ld [bc], a
    ret


    inc bc
    nop
    inc bc
    inc c
    ld [bc], a
    call $8f00
    nop
    sbc a
    nop
    ccf
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

jr_04b_7ccd:
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

jr_04b_7cdc:
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    inc c
    db $d3
    nop
    ret nz

    nop
    ldh a, [rTMA]
    pop af
    ld b, $f1
    inc bc
    ld hl, sp+$00
    db $fc
    nop
    inc bc
    nop
    rlc b
    inc bc
    nop
    rrca
    nop
    rst $08
    nop
    adc a
    nop
    sbc a
    nop
    ccf
    rst $38
    db $10
    rst $28
    jr c, jr_04b_7cdc

    db $ec
    inc hl
    rst $10
    ret nz

    dec sp
    nop
    rst $18
    nop
    daa
    jr nz, @-$26

    and h

jr_04b_7d11:
    ld e, e
    adc [hl]
    ld [hl], c
    ld c, $f1
    dec de
    db $e4

jr_04b_7d18:
    ld de, $41ee
    cp [hl]
    ld h, b
    sbc a
    ldh [$1f], a
    inc e
    db $e3
    ld [hl], b
    adc a
    ldh [$1f], a
    ld [hl], b
    adc a
    jr jr_04b_7d11

    add e
    ld a, h
    rlca
    ld hl, sp-$3f
    ld a, $00
    ld a, [hl]
    nop
    ccf
    nop
    ccf
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    db $fc
    nop
    db $fc
    nop
    ld a, [hl]
    rst $38
    inc b
    ei
    ld c, $f5
    dec sp
    ret z

    push af
    jr nc, jr_04b_7d18

    nop
    ld a, a
    nop
    sbc h
    add b
    ld h, e
    inc e
    db $e3
    ld [hl], $c9
    ld [hl+], a
    db $dd
    add d
    ld a, l
    ret nz

    ccf
    pop bc
    ld a, $49
    or [hl]
    dec e
    ld [c], a
    rlca
    ld hl, sp+$70
    adc a
    pop bc
    ld a, $83
    ld a, h
    pop bc
    ld a, $60
    sbc a
    ld c, $f1
    inc e
    db $e3
    nop
    ccf
    nop

jr_04b_7d73:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    db $fc
    nop
    db $fc
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ccf
    rst $38
    ld bc, $83fe
    ld a, l
    adc $32
    ld a, l
    inc c
    or e
    nop
    db $fd
    nop
    ld [hl], d
    ld [bc], a
    adc l
    ld de, $41ee
    cp [hl]
    ld h, b
    sbc a
    ldh [$1f], a
    and h
    ld e, e
    adc [hl]
    ld [hl], c
    ld c, $f1
    dec de
    db $e4
    pop bc
    ld a, $07
    ld hl, sp+$0e
    pop af
    rlca
    ld hl, sp-$7f
    ld a, [hl]
    jr c, jr_04b_7d73

    ld [hl], b
    adc a
    inc e
    db $e3
    nop
    ld a, [hl]
    nop
    db $fc
    nop
    db $fc
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ccf
    nop
    ccf
    nop
    ld a, [hl]
    rst $38
    ld b, b
    cp a
    ldh [$5f], a
    or e
    adc h
    ld e, a
    inc bc
    db $ec
    nop
    rst $30
    nop
    ret


    ld [$3036], sp
    rst $08
    ld [hl], b
    adc a
    ld d, d
    xor l
    ld b, a
    cp b
    rlca

jr_04b_7dd9:
    ld hl, sp-$73
    ld [hl], d
    adc b
    ld [hl], a
    and b
    ld e, a
    inc e
    db $e3
    jr c, @-$37

    inc e
    db $e3
    ld b, $f9
    ldh [$1f], a
    pop bc
    ld a, $70
    adc a
    rlca
    ld hl, sp+$00
    db $fc
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ccf
    nop
    ccf
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    db $fc
    adc b
    ld [hl], a
    nop
    rst $38
    ld [hl+], a
    db $dd
    db $10
    rst $28
    jr nz, jr_04b_7dd9

    ld b, b
    adc a
    ld b, b
    sbc [hl]
    ld b, b
    adc b
    adc b
    ld [hl], a
    nop
    rst $38
    ld [hl+], a
    db $dd
    ld [$04f7], sp
    di
    ld [bc], a
    pop af
    ld [bc], a
    ld a, c
    ld [bc], a
    ld de, $c020
    ld h, b
    add b
    and b
    db $10
    sub d
    ld [hl+], a

jr_04b_7e28:
    sub a

jr_04b_7e29:
    rla

jr_04b_7e2a:
    sub a
    rla
    cp [hl]
    ld a, $b8
    jr c, jr_04b_7e35

    inc bc
    ld b, $01
    dec b

jr_04b_7e35:
    ld [$4449], sp
    jp hl


    add sp, -$17
    add sp, $7d
    ld a, h
    dec e
    inc e
    add h
    ld a, e
    ld c, $f5
    cpl
    sub $0f
    rst $30
    rrca
    rst $30
    ccf
    rst $08
    ld a, l
    xor l
    ld a, b
    xor b
    jr z, jr_04b_7e29

    ld [hl], b
    xor a
    ld a, [c]
    ld l, l
    ldh a, [$ef]
    ldh a, [$ef]
    db $fc
    di
    cp [hl]
    or l
    ld e, $15
    ld [hl], b
    or b
    ld h, b
    and b
    ld h, b
    and b
    jr nz, jr_04b_7e28

    jr nz, jr_04b_7e2a

    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$0e], a
    dec c
    ld b, $05
    ld b, $05
    inc b
    inc bc
    inc b
    inc bc
    ld [$0807], sp
    rlca
    ld [$8807], sp
    ld [hl], a
    nop
    rst $38
    ld [hl+], a
    db $dd
    db $10
    rst $28
    jr nz, @-$2f

    ld b, b
    adc a
    ld b, b
    sbc [hl]
    ld b, b
    adc b
    adc b
    ld [hl], a
    nop
    rst $38
    ld [hl+], a
    db $dd
    ld [$04f7], sp
    di
    ld [bc], a
    pop af
    ld [bc], a
    ld a, c
    ld [bc], a
    ld de, $c020
    ld h, b
    add b
    and b
    db $10
    sub d
    ld [hl+], a

jr_04b_7ea8:
    sub a

jr_04b_7ea9:
    rla

jr_04b_7eaa:
    sub a
    rla
    cp [hl]
    ld a, $b8
    jr c, jr_04b_7eb5

    inc bc
    ld b, $01
    dec b

jr_04b_7eb5:
    ld [$4449], sp
    jp hl


    add sp, -$17
    add sp, $7d
    ld a, h
    dec e
    inc e
    add h
    ld a, e
    ld c, $f5
    cpl
    sub $0f
    rst $30
    rrca
    rst $30
    ccf
    rst $08
    ld a, l
    xor l
    ld a, b
    xor b
    jr z, jr_04b_7ea9

    ld [hl], b
    xor a
    ld a, [c]
    ld l, l
    ldh a, [$ef]
    ldh a, [$ef]
    db $fc
    di

jr_04b_7edc:
    cp [hl]
    or l
    ld e, $15
    ld [hl], b
    or b
    ld h, b
    and b
    ld h, b
    and b
    jr nz, jr_04b_7ea8

jr_04b_7ee8:
    jr nz, jr_04b_7eaa

    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$0e], a
    dec c
    ld b, $05
    ld b, $05
    inc b
    inc bc
    inc b
    inc bc
    ld [$0807], sp
    rlca
    ld [$ff07], sp
    db $10
    rst $28
    jr c, jr_04b_7edc

    db $ec
    inc hl
    rst $10
    ret nz

    dec sp
    nop
    rst $18
    nop
    daa
    jr nz, jr_04b_7ee8

    ld b, $f9
    dec e
    ld [c], a
    dec sp
    call nz, $08f7

jr_04b_7f18:
    ld l, $d1
    ld l, l
    sub d
    ld l, l
    sub d
    or [hl]
    ld c, b
    ret nz

    ccf
    ld l, d
    sub l
    cp d
    ld b, l
    cp d
    ld b, l
    call c, Call_04b_6a23
    sub l
    ld l, [hl]
    sub c
    call c, Call_000_0023
    rst $38
    ld b, b
    cp d
    and b
    ld e, a
    ld b, b
    cp a
    nop
    rst $38
    ld [$1457], sp
    db $eb
    ld [$fff7], sp
    inc b
    ei
    ld c, $f5
    dec sp
    ret z

    push af
    jr nc, jr_04b_7f18

    nop
    ld a, a
    nop
    sbc h
    add b
    ld h, e
    inc bc
    db $fc
    ld d, $e9
    ld c, $f1
    db $fd
    ld [bc], a
    dec de
    db $e4
    ld [hl], $c9
    ld d, l
    xor d
    cp d
    ld b, h
    ld h, b
    sbc a
    cp d
    ld b, l
    jp c, $de25

    ld hl, $13ec
    or $09
    db $76
    adc c
    xor $11
    nop
    rst $38
    nop
    ld a, [$f708]
    inc d
    db $eb
    add hl, bc
    or $82
    ld e, l
    ld bc, $00ee
    rst $38
    rst $38
    ld bc, $83fe
    ld a, l
    adc $32
    ld a, l
    inc c
    or e
    nop
    db $fd
    nop
    ld [hl], d
    ld [bc], a
    adc l
    ld b, $f9
    dec e
    ld [c], a
    dec sp
    call nz, $08f7
    ld l, $d1
    ld l, l
    sub d
    ld l, l
    sub d
    or [hl]
    ld c, b
    ret nz

    ccf
    ld l, d
    sub l
    cp d
    ld b, l
    cp d
    ld b, l
    call c, Call_04b_6a23
    sub l
    ld l, [hl]
    sub c
    call c, Call_000_0023
    rst $38
    ld [bc], a
    ld hl, sp+$05
    ld a, [$fd02]
    nop
    rst $38
    ld b, b
    rra
    and b
    ld c, a
    ld b, b
    cp a
    rst $38
    ld b, b
    cp a
    ldh [$5f], a
    or e
    adc h
    ld e, a
    inc bc
    db $ec
    nop
    rst $30
    nop
    ret


    ld [$0336], sp
    db $fc
    ld d, $e9
    ld c, $f1
    db $fd
    ld [bc], a
    dec de
    db $e4
    ld [hl], $c9
    ld d, l
    xor d
    cp d
    ld b, h
    ld h, b
    sbc a
    cp d
    ld b, l
    jp c, $de25

    ld hl, $13ec
    or $09
    db $76
    adc c
    xor $11
    nop
    rst $38
    nop
    ld a, [$7f80]
    ld b, c
    cp [hl]
    sub b
    ld l, a
    jr z, @+$59

    db $10
    rst $08
    nop
    rst $38
