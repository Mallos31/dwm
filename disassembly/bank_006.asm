; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    db $06 ;ROM bank

    dw label6_4b1f
    dw label6_4cbc
    dw label6_400f
    dw jr_006_4028
    dw label6_4d5a
    dw label6_4f9a
    dw label6_6034

label6_400f:
    ld a, [wGameState]
    bit 1, a
    ret nz

    bit 3, a
    ret nz

    bit 4, a
    ret nz

    bit 7, a
    ret nz

    bit 2, a
    jr z, jr_006_4028

    ld a, [$c91e]
    cp $01
    ret z

jr_006_4028:
    ld hl, $d7d2

jr_006_402b:
    ld a, [hl]
    cp $ff
    ret z

    inc hl
    ld a, [hl]
    dec hl
    cp $ff
    push hl
    call nz, Call_006_4043
    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_006_402b

Call_006_4043:
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a

jr_006_4049:
    ld a, [hl]
    bit 6, a
    ret nz

    and $0f
    rst $00
    ld [hl], b
    ld b, b
    sub b
    ld b, b
    or c
    ld b, b
    ld [hl+], a
    ld b, c
    and l
    ld b, c
    ld h, [hl]
    ld b, d
    rst $10
    ld b, d
    add hl, bc
    ld b, e
    ccf
    ld b, e
    or b
    ld b, e
    rra
    ld b, h
    ld [hl], b
    ld b, b
    ld [hl], b
    ld b, b
    ld [hl], b
    ld b, b
    push bc
    ld b, h
    sub c
    ld b, [hl]
    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    bit 6, [hl]
    jr nz, jr_006_408d

    ld a, [$d8d7]

Jump_006_4081:
    or a
    jp nz, Jump_006_4a83

    ld a, [$c8a6]
    and $07
    jp nz, Jump_006_4aa1

jr_006_408d:
    jp Jump_006_4a48


    ld a, [$c8a6]
    and $07
    jp nz, Jump_006_4aa1

    ld a, [$c8a6]
    and $0f
    jr nz, jr_006_40ae

    ldh a, [$d5]
    add $06
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    inc a
    and $03
    ld [hl], a

jr_006_40ae:
    jp Jump_006_4a48


    ld a, [$c8a6]
    and $01
    jp nz, Jump_006_4aa1

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    or a
    jp nz, Jump_006_40fd

    ld a, [hl-]
    and $01
    xor $01
    add a
    inc a
    dec hl
    ld [hl-], a
    bit 6, [hl]
    jp nz, Jump_006_40fd

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_40fd

    set 0, [hl]
    call Call_006_4100
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    ld a, c
    or b
    jr nz, jr_006_40fd

    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    inc a
    and $01
    ld [hl+], a
    ld [hl], $10

Jump_006_40fd:
jr_006_40fd:
    jp Jump_006_4a48


Call_006_4100:
    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    rst $00
    db $10
    ld b, c
    add hl, de
    ld b, c
    ld bc, $0001
    ld de, $0020
    jp Jump_006_49ba


    ld bc, $ffff
    ld de, $ffe0
    jp Jump_006_49ba


    ld a, [$c8a6]
    and $01
    jp nz, Jump_006_4aa1

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    or a
    jp nz, Jump_006_416a

    ld a, [hl-]
    and $03
    dec hl
    ld [hl-], a
    bit 6, [hl]
    jp nz, Jump_006_416a

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_416a

    set 0, [hl]
    call Call_006_416d
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    ld a, c
    or b
    jr nz, jr_006_416a

    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    dec a
    and $03
    ld [hl+], a
    ld [hl], $10

Jump_006_416a:
jr_006_416a:
    jp Jump_006_4a48


Call_006_416d:
    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    rst $00
    add c
    ld b, c
    adc d
    ld b, c
    sub e
    ld b, c
    sbc h
    ld b, c
    ld bc, $0001
    ld de, $0020
    jp Jump_006_4a01


    ld bc, $ffff
    ld de, $0000
    jp Jump_006_49ba


    ld bc, $ffff
    ld de, $0000
    jp Jump_006_4a01


    ld bc, $0001
    ld de, $0020
    jp Jump_006_49ba


    ld a, [$c8a6]
    and $01
    jp nz, Jump_006_4aa1

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    or a
    jp nz, Jump_006_41f7

    ld a, [hl-]
    and $07
    ld de, $425e
    add e

Jump_006_41c3:
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    dec hl
    ld [hl-], a
    bit 6, [hl]
    jp nz, Jump_006_41f7

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_41f7

    set 0, [hl]
    call Call_006_41fa
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    ld a, c
    or b
    jr nz, jr_006_41f7

    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    inc a
    and $07
    ld [hl+], a
    ld [hl], $10

Jump_006_41f7:
jr_006_41f7:
    jp Jump_006_4a48


Call_006_41fa:
    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    rst $00
    ld d, $42
    rra
    ld b, d
    jr z, @+$44

    ld sp, $3a42
    ld b, d
    ld b, e
    ld b, d
    ld c, h
    ld b, d
    ld d, l
    ld b, d
    ld bc, $ffff
    ld de, $ffd0
    jp Jump_006_49ba


    ld bc, $ffff
    ld de, $ffd0
    jp Jump_006_4a01


    ld bc, $ffff
    ld de, $ffa0
    jp Jump_006_49ba


    ld bc, $0001
    ld de, $0000
    jp Jump_006_4a01


    ld bc, $0001
    ld de, $ffd0
    jp Jump_006_49ba


    ld bc, $ffff
    ld de, $ffd0
    jp Jump_006_4a01


    ld bc, $0001
    ld de, $0000
    jp Jump_006_49ba


    ld bc, $0001
    ld de, $0000
    jp Jump_006_4a01


    ld bc, $0102
    nop
    inc bc
    ld [bc], a
    inc bc
    nop
    ld a, [$c8a6]
    and $01
    jp nz, Jump_006_4aa1

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    or a
    jp nz, Jump_006_42b2

    ld a, [hl-]
    and $01
    xor $01
    add a
    inc a
    dec hl
    ld [hl-], a
    bit 6, [hl]
    jp nz, Jump_006_42b2

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_42b2

    set 0, [hl]
    call Call_006_42b5
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    ld a, c
    or b
    jr nz, jr_006_42b2

    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    inc a
    and $01
    ld [hl+], a
    ld [hl], $10

Jump_006_42b2:
jr_006_42b2:
    jp Jump_006_4a48


Call_006_42b5:
    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    rst $00
    push bc
    ld b, d
    adc $42
    ld bc, $0001
    ld de, $0030
    jp Jump_006_49ba


    ld bc, $ffff
    ld de, $0000
    jp Jump_006_49ba


    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    bit 6, [hl]
    jr nz, jr_006_42f4

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_4a83

    ld a, [$c8a6]
    and $07
    jp nz, Jump_006_4aa1

jr_006_42f4:
    ld a, [$d8d7]
    or a
    jr nz, jr_006_4306

    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    res 6, [hl]

jr_006_4306:
    jp Jump_006_4a83


    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    bit 6, [hl]
    jr nz, jr_006_433c

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_4a83

    ld a, [$c8a6]
    and $07
    jp nz, Jump_006_4aa1

    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, [hl]
    swap a
    and $03
    push af
    ld a, l
    add $06
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop af
    ld [hl], a

jr_006_433c:
    jp Jump_006_4a48


    ld a, [$c8a6]
    and $01
    jp nz, Jump_006_4aa1

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    or a
    jp nz, Jump_006_438b

    ld a, [hl-]
    and $01
    xor $01
    add a
    inc a
    dec hl
    ld [hl-], a
    bit 6, [hl]
    jp nz, Jump_006_438b

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_438b

    set 0, [hl]
    call Call_006_438e
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    ld a, c
    or b
    jr nz, jr_006_438b

    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    inc a
    and $01
    ld [hl+], a
    ld [hl], $10

Jump_006_438b:
jr_006_438b:
    jp Jump_006_4a48


Call_006_438e:
    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    rst $00
    sbc [hl]
    ld b, e
    and a
    ld b, e
    ld bc, $0001
    ld de, $0010
    jp Jump_006_49ba


    ld bc, $ffff
    ld de, $fff0
    jp Jump_006_49ba


    ld a, [$c8a6]
    and $01
    jp nz, Jump_006_4aa1

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    or a
    jp nz, Jump_006_43fa

    ld a, [hl-]
    and $01
    add a
    inc a
    dec hl
    ld [hl-], a
    bit 6, [hl]
    jp nz, Jump_006_43fa

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_43fa

    set 0, [hl]
    call Call_006_43fd
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    ld a, c
    or b
    jr nz, jr_006_43fa

    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    inc a
    and $01
    ld [hl+], a
    ld [hl], $10

Jump_006_43fa:
jr_006_43fa:
    jp Jump_006_4a48


Call_006_43fd:
    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    rst $00
    dec c
    ld b, h
    ld d, $44
    ld bc, $ffff
    ld de, $ffe0
    jp Jump_006_49ba


    ld bc, $0001
    ld de, $0020
    jp Jump_006_49ba


    ld a, [$c8a6]
    and $07
    jp nz, Jump_006_4aa1

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    or a
    jp nz, Jump_006_446a

    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    bit 6, [hl]
    jp nz, Jump_006_446a

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_446a

    set 0, [hl]
    call Call_006_446d
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    ld a, c
    or b
    jr nz, jr_006_446a

    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    inc a
    and $01
    ld [hl-], a

Jump_006_446a:
jr_006_446a:
    jp Jump_006_4a48


Call_006_446d:
    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    rst $00
    ld a, l
    ld b, h
    add [hl]
    ld b, h
    ld bc, $0001
    ld de, $0010
    jp Jump_006_448f


    ld bc, $ffff
    ld de, $fff0
    jp Jump_006_448f


Jump_006_448f:
    ld a, [wGameState]
    bit 0, a
    ret nz

    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    add c
    ld c, a
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld b, a
    ldh a, [$d5]
    add $02
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    swap a
    ld h, a
    and $f0
    or $08
    ld l, a
    ld a, h
    and $0f
    ld h, a
    ld a, c
    sub l
    ld c, a
    ld a, b
    sbc h
    ld b, a
    ret


    ld a, [$c925]
    ld b, a
    ld a, [$c926]
    cp b
    ret nz

    ld a, [wGameState]
    bit 2, a
    ret nz

    ld a, [$c8a6]
    and $01
    jp nz, Jump_006_4aa1

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    or a
    jp nz, Jump_006_4540

    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    bit 6, [hl]
    jp nz, Jump_006_4540

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_4540

    set 0, [hl]
    call Call_006_4543
    cp $00
    jr z, jr_006_4540

    cp $02
    jr z, jr_006_4524

    call Call_006_457d
    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $04
    ld a, [wRNG1]
    and $c0
    jr nz, jr_006_4540

jr_006_4524:
    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $04
    ldh a, [$d5]
    add $06
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [wRNG1]
    and $03
    ld [hl], a

Jump_006_4540:
jr_006_4540:
    jp Jump_006_4a48


Call_006_4543:
    ldh a, [$d5]
    add $06
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $03
    rst $00
    ld e, c
    ld b, l
    ld h, d
    ld b, l
    ld l, e
    ld b, l
    ld [hl], h
    ld b, l
    ld bc, $0001
    ld de, $0010
    jp Jump_006_4874


    ld bc, $ffff
    ld de, $fff0
    jp Jump_006_472e


    ld bc, $ffff
    ld de, $fff0
    jp Jump_006_4874


    ld bc, $0001
    ld de, $0010
    jp Jump_006_472e


Call_006_457d:
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld bc, $0010
    ldh a, [$92]
    ld e, a
    ldh a, [$93]
    ld d, a
    call Call_006_467c
    jr nz, jr_006_45ae

    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld bc, $0000
    ldh a, [$95]
    ld e, a
    ldh a, [$96]
    ld d, a
    call Call_006_467c
    jp z, Jump_006_463f

jr_006_45ae:
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld bc, $fff0
    ldh a, [$92]
    ld e, a
    ldh a, [$93]
    ld d, a
    call Call_006_467c
    jr nz, jr_006_45de

    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld bc, $0000
    ldh a, [$95]
    ld e, a
    ldh a, [$96]
    ld d, a
    call Call_006_467c
    jr z, jr_006_463f

jr_006_45de:
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld bc, $0000
    ldh a, [$92]
    ld e, a
    ldh a, [$93]
    ld d, a
    call Call_006_467c
    jr nz, jr_006_460e

    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld bc, $0010
    ldh a, [$95]
    ld e, a
    ldh a, [$96]
    ld d, a
    call Call_006_467c
    jr z, jr_006_463f

jr_006_460e:
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld bc, $0000
    ldh a, [$92]
    ld e, a
    ldh a, [$93]
    ld d, a
    call Call_006_467c
    jr nz, jr_006_463e

    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld bc, $fff0
    ldh a, [$95]
    ld e, a
    ldh a, [$96]
    ld d, a
    call Call_006_467c
    jr z, jr_006_463f

jr_006_463e:
    ret


Jump_006_463f:
jr_006_463f:
    ldh a, [$d5]
    add $04
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    ld [$d8d4], a
    ld a, $70
    ld [$d8d3], a
    set 6, [hl]
    xor a
    ld [$d8d7], a
    ld hl, $0405
    rst $10
    ld a, [$d8d7]
    or a
    ret z

    bit 1, a
    ret z

    ld hl, $ffff
    ld a, l
    ld [$c917], a
    ld a, h
    ld [$c918], a
    ld hl, wGameState
    set 0, [hl]
    xor a
    ld [$c915], a
    ld [$c916], a
    ret


Call_006_467c:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    and $f0
    or $08
    ld l, a
    ld a, e
    and $f0
    or $08
    cp l
    ret nz

    ld a, d
    cp h
    ret nz

    ret


    ld a, [$c925]
    ld b, a
    ld a, [$c926]
    cp b
    ret nz

    ld a, [wGameState]
    bit 2, a
    ret nz

    ld a, [$c8a6]
    and $01
    jp nz, Jump_006_4aa1

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    or a
    jp nz, Jump_006_46f1

    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    bit 6, [hl]
    jp nz, Jump_006_46f1

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_46f1

    set 0, [hl]
    call Call_006_46f4
    cp $00
    jr z, jr_006_46f1

    cp $02
    jr z, jr_006_46e1

    ld a, [wRNG1]
    and $c0
    jr nz, jr_006_46f1

jr_006_46e1:
    ldh a, [$d5]
    add $06
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [wRNG1]
    and $03
    ld [hl], a

Jump_006_46f1:
jr_006_46f1:
    jp Jump_006_4a48


Call_006_46f4:
    ldh a, [$d5]
    add $06
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $03
    rst $00
    ld a, [bc]
    ld b, a
    inc de
    ld b, a
    inc e
    ld b, a
    dec h
    ld b, a
    ld bc, $0001
    ld de, $0010
    jp Jump_006_4874


    ld bc, $ffff
    ld de, $fff0
    jp Jump_006_472e


    ld bc, $ffff
    ld de, $fff0
    jp Jump_006_4874


    ld bc, $0001
    ld de, $0010
    jp Jump_006_472e


Jump_006_472e:
    ld a, [wGameState]
    bit 0, a
    ret nz

    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $0f
    cp $08
    jr nz, jr_006_47bd

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    push bc
    call Call_000_1e31
    ldh a, [$aa]
    push af
    ldh a, [$92]
    ldh [$a5], a
    ldh a, [$93]
    ldh [$a6], a
    ldh a, [$95]
    ldh [$a7], a
    ldh a, [$96]
    ldh [$a8], a
    call Call_000_1e31
    pop af
    pop bc
    srl a
    srl a
    cp $0c
    jr z, jr_006_47bd

    cp $0d
    jr z, jr_006_47bd

    cp $0e
    jr z, jr_006_47bd

    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $08
    ld a, $02
    ret


jr_006_47bd:
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld a, e
    add c
    ld e, a
    ld a, d
    adc b
    ld d, a
    ldh a, [$d5]
    add $02
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    swap a
    ld h, a
    and $f0
    or $08
    ld l, a
    ld a, h
    and $0f
    ld h, a
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld d, a
    ld a, d
    or a
    jr nz, jr_006_47f6

    ld a, e
    cp $70
    jr c, jr_006_4825

jr_006_47f6:
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $08
    ld a, $02
    ret


jr_006_4825:
    push hl
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    add c
    ld c, a
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld b, a
    pop hl
    ld a, c
    sub l
    ld c, a
    ld a, b
    sbc h
    ld b, a
    ld a, c
    and $0f
    ld a, $00
    ret nz

    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $10
    ld a, $01
    ret


Jump_006_4874:
    ld a, [wGameState]
    bit 0, a
    ret nz

    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $0f
    cp $08
    jr nz, jr_006_4903

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    push bc
    call Call_000_1e31
    ldh a, [$aa]
    push af
    ldh a, [$92]
    ldh [$a5], a
    ldh a, [$93]
    ldh [$a6], a
    ldh a, [$95]
    ldh [$a7], a
    ldh a, [$96]
    ldh [$a8], a
    call Call_000_1e31
    pop af
    pop bc
    srl a
    srl a
    cp $0c
    jr z, jr_006_4903

    cp $0d
    jr z, jr_006_4903

    cp $0e
    jr z, jr_006_4903

    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $08
    ld a, $02
    ret


jr_006_4903:
    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld a, e
    add c
    ld e, a
    ld a, d
    adc b
    ld d, a
    ldh a, [$d5]
    add $03
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    swap a
    ld h, a
    and $f0
    or $08
    ld l, a
    ld a, h
    and $0f
    ld h, a
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld d, a
    ld a, d
    or a
    jr nz, jr_006_493c

    ld a, e
    cp $50
    jr c, jr_006_496b

jr_006_493c:
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $08
    ld a, $02
    ret


jr_006_496b:
    push hl
    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    add c
    ld c, a
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld b, a
    pop hl
    ld a, c
    sub l
    ld c, a
    ld a, b
    sbc h
    ld b, a
    ld a, c
    and $0f
    ld a, $00
    ret nz

    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $10
    ld a, $01
    ret


Jump_006_49ba:
    ld a, [wGameState]
    bit 0, a
    ret nz

    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    add c
    ld c, a
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld b, a
    ldh a, [$d5]
    add $02
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    swap a
    ld h, a
    and $f0
    or $08
    ld l, a
    ld a, h
    and $0f
    ld h, a
    ld a, c
    sub l
    ld c, a
    ld a, b
    sbc h
    ld b, a
    ld a, c
    and $0f
    jr nz, jr_006_4a00

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $10

jr_006_4a00:
    ret


Jump_006_4a01:
    ld a, [wGameState]
    bit 0, a
    ret nz

    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    add c
    ld c, a
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld b, a
    ldh a, [$d5]
    add $03
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    swap a
    ld h, a
    and $f0
    or $08
    ld l, a
    ld a, h
    and $0f
    ld h, a
    ld a, c
    sub l
    ld c, a
    ld a, b
    sbc h
    ld b, a
    ld a, c
    and $0f
    jr nz, jr_006_4a47

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $10

jr_006_4a47:
    ret


Jump_006_4a48:
    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_006_4a5b

    dec [hl]
    dec hl
    dec hl
    res 0, [hl]

jr_006_4a5b:
    ld a, [$d8d7]
    or a
    jr nz, jr_006_4a6d

    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    res 6, [hl]

jr_006_4a6d:
    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    bit 6, [hl]
    jr z, jr_006_4a83

    ldh a, [$8e]
    add $02
    and $03
    inc hl
    ld [hl], a

Jump_006_4a83:
jr_006_4a83:
    ldh a, [$d5]
    add $06
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    ld de, $4b1b
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, l
    add $11
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [de]
    ld [hl], a

Jump_006_4aa1:
    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    bit 7, [hl]
    ret nz

    ld b, $06
    bit 6, [hl]
    jr nz, jr_006_4abc

    ld b, $03
    bit 0, [hl]
    jr nz, jr_006_4abc

    ld b, $00

jr_006_4abc:
    inc hl
    ld a, [hl]
    ld de, $4b17
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    add b
    ld b, a
    ld a, l
    add $0a
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ld [$d7b4], a
    ld a, h
    ld [$d7b5], a
    inc hl
    inc hl
    ld a, [hl]
    cp b
    jr nz, jr_006_4ae8

    ld a, [wGameState]
    bit 0, a
    jr z, jr_006_4af7

    ret


jr_006_4ae8:
    ld [hl], b
    xor a
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld a, [$d7b4]
    ld l, a
    ld a, [$d7b5]
    ld h, a
    ld [hl], $00

jr_006_4af7:
    ld a, [$d7b4]
    ld l, a

Jump_006_4afb:
    ld a, [$d7b5]
    ld h, a
    dec hl
    ld a, [hl+]
    or a
    jr nz, jr_006_4b09

    ld hl, $0200
    rst $10
    ret


jr_006_4b09:
    inc hl
    ld a, [hl]
    push af
    push hl
    ld [hl], $00
    ld hl, $0200
    rst $10
    pop hl
    pop af
    ld [hl], a
    ret


    nop
    ld bc, $0102
    nop
    jr nz, jr_006_4b1e

jr_006_4b1e:
    nop

label6_4b1f:
    ld hl, $ff90
    res 5, [hl]
    ld hl, $d7d2

jr_006_4b27:
    ld a, [hl]
    cp $ff
    jr z, jr_006_4b40

    ld a, l
    add $05
    ld l, a
    ld a, h
    adc $00
    ld h, a
    res 5, [hl]
    ld a, l
    add $1b
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_006_4b27

jr_006_4b40:
    ld a, [$d8d7]
    or a
    ret nz

    ld hl, $ffdb
    ldh a, [$92]
    ld [hl+], a
    ldh a, [$93]
    ld [hl+], a
    ldh a, [$95]
    ld [hl+], a
    ldh a, [$96]
    ld [hl+], a
    call Call_006_4b58
    ret


Call_006_4b58:
    ldh a, [$db]
    and $0f
    cp $08
    jr nz, jr_006_4b6c

    ldh a, [$dd]
    and $0f
    cp $08
    jr nz, jr_006_4b89

    call Call_006_4ba6
    ret


jr_006_4b6c:
    ld hl, $ffdb
    ld a, [hl]
    add $08
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    call Call_006_4ba6
    ld hl, $ffdb
    ld a, [hl]
    sub $10
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    call Call_006_4ba6
    ret


jr_006_4b89:
    ld hl, $ffdd
    ld a, [hl]
    add $08
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    call Call_006_4ba6
    ld hl, $ffdd
    ld a, [hl]
    sub $10
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    call Call_006_4ba6
    ret


Call_006_4ba6:
    ldh a, [$db]
    ld l, a
    ldh a, [$dc]
    ld h, a
    swap h
    swap l
    ld a, h
    and $f0
    ld h, a
    ld a, l
    and $0f
    or h
    ldh [$d5], a
    ldh a, [$dd]
    ld l, a
    ldh a, [$de]
    ld h, a
    swap h
    swap l
    ld a, h
    and $f0
    ld h, a
    ld a, l
    and $0f
    or h
    ldh [$d6], a
    ld d, $00
    ld hl, $d7d2

jr_006_4bd3:
    ld a, [hl]
    cp $ff
    ret z

    bit 6, a
    jr nz, jr_006_4be4

    inc hl
    ld a, [hl-]
    cp $4d
    jr z, jr_006_4be4

    call Call_006_4bf0

jr_006_4be4:
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    inc d
    jr jr_006_4bd3

    ret


Call_006_4bf0:
    push hl
    push bc
    push de
    ld a, l
    add $18
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, e
    and $0f
    cp $08
    jr nz, jr_006_4c17

    ld a, l
    and $0f
    cp $08
    jr nz, jr_006_4c37

    call Call_006_4c72
    jr nz, jr_006_4c6e

    jr jr_006_4c55

jr_006_4c17:
    push hl
    push de
    ld a, e
    add $08
    ld e, a
    ld a, d
    adc $00
    ld d, a
    call Call_006_4c72
    pop de
    pop hl
    jr z, jr_006_4c55

    ld a, e
    add $f8
    ld e, a
    ld a, d
    adc $ff
    ld d, a
    call Call_006_4c72
    jr nz, jr_006_4c6e

    jr jr_006_4c55

jr_006_4c37:
    push hl
    push de
    ld a, l
    add $08
    ld l, a
    ld a, h
    adc $00
    ld h, a
    call Call_006_4c72
    pop de
    pop hl
    jr z, jr_006_4c55

    ld a, l
    add $f8
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    call Call_006_4c72
    jr nz, jr_006_4c6e

jr_006_4c55:
    ld hl, $ff90
    set 5, [hl]
    pop de
    ld a, d
    ld [$d7bd], a
    pop bc
    pop hl
    push hl
    ld a, l
    add $05
    ld l, a
    ld a, h
    adc $00
    ld h, a
    set 5, [hl]
    pop hl
    ret


jr_006_4c6e:
    pop de
    pop bc
    pop hl
    ret


Call_006_4c72:
    swap d
    swap e
    ld a, d
    and $f0
    ld d, a
    ld a, e
    and $0f
    or d
    ld b, a
    ldh a, [$d5]
    cp b
    ret nz

    swap h
    swap l
    ld a, h
    and $f0
    ld h, a
    ld a, l
    and $0f
    or h
    ld c, a
    ldh a, [$d6]
    cp c
    ret


    ld a, [$ca37]
    sub b
    jr nc, jr_006_4c9c

    add $31

jr_006_4c9c:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, l
    add $73
    ld l, a
    ld a, h
    adc $c9
    ld h, a
    ld a, [hl+]
    ldh [$db], a
    ld a, [hl+]
    ldh [$dd], a
    ld a, [hl]
    swap a
    and $0f
    ldh [$dc], a
    ld a, [hl]
    and $0f
    ldh [$de], a
    ret

label6_4cbc:
    ld a, [$c8ec]
    or a
    ret nz

    ld a, [wGameState]
    bit 1, a
    ret nz

    bit 3, a
    ret nz

    bit 7, a
    ret nz

    bit 4, a
    jr z, jr_006_4cd7

    ld a, [$c8ef]
    cp $0f
    ret z

jr_006_4cd7:
    ld a, [wGameState]
    bit 2, a
    jr z, jr_006_4cea

    ld a, [wInGateworld]
    or a
    jr nz, jr_006_4cea

    ld a, [$c91e]
    cp $01
    ret z

jr_006_4cea:
    ld de, $d7d2

jr_006_4ced:
    ld a, [de]
    cp $ff
    ret z

    bit 6, a
    jr nz, jr_006_4cff

    inc de
    ld a, [de]
    dec de
    cp $ff
    push de
    call nz, Call_006_4d0a
    pop de

jr_006_4cff:
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    jr jr_006_4ced

    ret


Call_006_4d0a:
    push bc
    push de
    ld a, e
    add $18
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld hl, $ffc3
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    inc de
    add $08
    ld [hl+], a
    ld a, [de]
    inc de
    adc $00
    ld [hl+], a
    pop de
    ld a, e
    add $11
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    ld [hl+], a
    inc de
    inc de
    inc de
    ld a, [de]
    cp $ff
    jr z, jr_006_4d58

    ld [hl+], a
    inc de
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld a, e
    add $f8
    ld e, a
    ld a, d
    adc $ff
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_006_4d54

    ld hl, $0500
    rst $10
    jr jr_006_4d58

jr_006_4d54:
    ld hl, $0402
    rst $10

jr_006_4d58:
    pop bc
    ret

label6_4d5a:
    ld hl, $d7be
    ld b, $06
    ld c, $00

jr_006_4d61:
    ld a, [hl]
    cp $ff
    ret z

    push hl
    push bc
    ld b, a
    inc hl
    ld a, [hl]
    or a
    jr nz, jr_006_4d7a

    ld hl, $2adf
    ld a, b
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    jr jr_006_4d86

jr_006_4d7a:
    ld l, b
    ld h, $00
    add hl, hl
    ld a, l
    add $cc
    ld l, a
    ld a, h
    adc $4d
    ld h, a

jr_006_4d86:
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    add $80
    ld h, a
    ld a, [wInGateworld]
    or a
    jr z, jr_006_4d99

    ld a, h
    add $07
    ld h, a
    jr jr_006_4dae

jr_006_4d99:
    ld a, [wMapID]
    cp $08
    jr z, jr_006_4dae

    cp $45
    jr nz, jr_006_4daa

    ld a, h
    add $02
    ld h, a
    jr jr_006_4dae

jr_006_4daa:
    ld a, h
    add $05
    ld h, a

jr_006_4dae:
    ld h, a
    ld l, $00
    call Call_000_1577
    pop bc
    pop hl
    ld a, [hl]
    cp $55
    jr z, jr_006_4dbf

    cp $15
    jr nz, jr_006_4dc5

jr_006_4dbf:
    inc hl
    ld a, [hl-]
    or a
    jr nz, jr_006_4dc5

    inc c

jr_006_4dc5:
    inc hl
    inc hl
    inc c
    dec b
    jr nz, jr_006_4d61

    ret


    nop
    cpl
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $2f01
    ld [bc], a
    cpl
    inc bc
    cpl
    inc b
    cpl
    dec b
    cpl
    ld b, $2f
    rlca
    cpl
    ld [$092f], sp
    cpl
    ld a, [bc]
    cpl
    dec bc
    cpl
    inc c
    cpl
    dec c
    cpl
    ld c, $2f
    rrca
    cpl
    db $10
    cpl
    nop
    jr c, @+$03

    jr c, jr_006_4e13

    jr c, @+$05

jr_006_4e13:
    jr c, jr_006_4e19

    jr c, @+$07

    jr c, jr_006_4e1f

jr_006_4e19:
    jr c, @+$09

    jr c, jr_006_4e25

    jr c, @+$0b

jr_006_4e1f:
    jr c, jr_006_4e2b

    jr c, @+$0d

    jr c, jr_006_4e31

jr_006_4e25:
    jr c, @+$0f

    jr c, jr_006_4e37

    jr c, @+$11

jr_006_4e2b:
    jr c, jr_006_4e3d

    jr c, @+$13

    jr c, jr_006_4e43

jr_006_4e31:
    jr c, @+$15

    jr c, jr_006_4e49

    jr c, @+$17

jr_006_4e37:
    jr c, jr_006_4e4f

    jr c, @+$19

    jr c, jr_006_4e55

jr_006_4e3d:
    jr c, @+$1b

    jr c, jr_006_4e5b

    jr c, @+$1d

jr_006_4e43:
    jr c, jr_006_4e61

    jr c, @+$1f

    jr c, jr_006_4e67

jr_006_4e49:
    jr c, @+$21

    jr c, jr_006_4e6d

    jr c, @+$23

jr_006_4e4f:
    jr c, jr_006_4e73

    jr c, @+$25

    jr c, jr_006_4e79

jr_006_4e55:
    jr c, @+$27

    jr c, jr_006_4e7f

    jr c, @+$29

jr_006_4e5b:
    jr c, jr_006_4e85

    jr c, @+$2b

    jr c, jr_006_4e8b

jr_006_4e61:
    jr c, @+$2d

    jr c, jr_006_4e91

    jr c, @+$2f

jr_006_4e67:
    jr c, jr_006_4e97

    jr c, @+$31

    jr c, jr_006_4e9d

jr_006_4e6d:
    jr c, @+$33

    jr c, jr_006_4ea3

    jr c, jr_006_4ea6

jr_006_4e73:
    jr c, @+$36

    jr c, jr_006_4eac

    jr c, jr_006_4eaf

jr_006_4e79:
    jr c, jr_006_4eb2

    jr c, jr_006_4eb5

    jr c, jr_006_4eb8

jr_006_4e7f:
    jr c, jr_006_4ebb

    jr c, jr_006_4ebe

    jr c, jr_006_4ec1

jr_006_4e85:
    jr c, jr_006_4ec4

    jr c, jr_006_4ec7

    jr c, jr_006_4eca

jr_006_4e8b:
    jr c, @+$42

    jr c, jr_006_4ed0

    jr c, jr_006_4ed3

jr_006_4e91:
    jr c, jr_006_4ed6

    jr c, @+$46

    jr c, jr_006_4edc

jr_006_4e97:
    jr c, @+$48

    jr c, jr_006_4ee2

    jr c, jr_006_4e9d

jr_006_4e9d:
    add hl, sp
    ld bc, $0239
    add hl, sp
    inc bc

jr_006_4ea3:
    add hl, sp
    inc b
    add hl, sp

jr_006_4ea6:
    dec b
    add hl, sp
    ld b, $39
    rlca
    add hl, sp

jr_006_4eac:
    ld [$0939], sp

jr_006_4eaf:
    add hl, sp
    ld a, [bc]
    add hl, sp

jr_006_4eb2:
    dec bc
    add hl, sp
    inc c

jr_006_4eb5:
    add hl, sp
    dec c
    add hl, sp

jr_006_4eb8:
    ld c, $39
    rrca

jr_006_4ebb:
    add hl, sp
    db $10
    add hl, sp

jr_006_4ebe:
    ld de, $1239

jr_006_4ec1:
    add hl, sp
    inc de
    add hl, sp

jr_006_4ec4:
    inc d
    add hl, sp
    dec d

jr_006_4ec7:
    add hl, sp
    ld d, $39

jr_006_4eca:
    rla
    add hl, sp
    jr jr_006_4f07

    add hl, de
    add hl, sp

jr_006_4ed0:
    ld a, [de]
    add hl, sp
    dec de

jr_006_4ed3:
    add hl, sp
    inc e
    add hl, sp

jr_006_4ed6:
    dec e
    add hl, sp
    ld e, $39
    rra
    add hl, sp

jr_006_4edc:
    jr nz, jr_006_4f17

    ld hl, $2239
    add hl, sp

jr_006_4ee2:
    inc hl
    add hl, sp
    inc h
    add hl, sp
    dec h
    add hl, sp
    ld h, $39
    daa
    add hl, sp
    jr z, jr_006_4f27

    add hl, hl
    add hl, sp
    ld a, [hl+]
    add hl, sp
    dec hl
    add hl, sp
    inc l
    add hl, sp
    dec l
    add hl, sp
    ld l, $39
    cpl
    add hl, sp
    jr nc, jr_006_4f37

    ld sp, $3239
    add hl, sp
    inc sp
    add hl, sp
    inc [hl]
    add hl, sp
    dec [hl]

jr_006_4f07:
    add hl, sp
    ld [hl], $39
    scf
    add hl, sp
    jr c, jr_006_4f47

    add hl, sp
    add hl, sp
    ld a, [hl-]
    add hl, sp
    dec sp
    add hl, sp
    inc a
    add hl, sp
    dec a

jr_006_4f17:
    add hl, sp
    ld a, $39
    ccf
    add hl, sp
    ld b, b
    add hl, sp
    ld b, c
    add hl, sp
    ld b, d
    add hl, sp
    ld b, e
    add hl, sp
    ld b, h
    add hl, sp
    ld b, l

jr_006_4f27:
    add hl, sp
    ld b, [hl]
    add hl, sp
    ld b, a
    add hl, sp
    nop
    ld a, [hl-]
    ld bc, $023a
    ld a, [hl-]
    inc bc
    ld a, [hl-]
    inc b
    ld a, [hl-]
    dec b

jr_006_4f37:
    ld a, [hl-]
    ld b, $3a
    rlca
    ld a, [hl-]
    ld [$093a], sp
    ld a, [hl-]
    ld a, [bc]
    ld a, [hl-]
    dec bc
    ld a, [hl-]
    inc c
    ld a, [hl-]
    dec c

jr_006_4f47:
    ld a, [hl-]
    ld c, $3a
    rrca
    ld a, [hl-]
    db $10
    ld a, [hl-]
    ld de, $123a
    ld a, [hl-]
    inc de
    ld a, [hl-]
    inc d
    ld a, [hl-]
    dec d
    ld a, [hl-]
    ld d, $3a
    rla
    ld a, [hl-]
    jr jr_006_4f98

    add hl, de
    ld a, [hl-]
    ld a, [de]
    ld a, [hl-]
    dec de
    ld a, [hl-]
    inc e
    ld a, [hl-]
    dec e
    ld a, [hl-]
    ld e, $3a
    rra
    ld a, [hl-]
    jr nz, jr_006_4fa8

    ld hl, $223a
    ld a, [hl-]
    inc hl
    ld a, [hl-]
    inc h
    ld a, [hl-]
    dec h
    ld a, [hl-]
    ld h, $3a
    daa
    ld a, [hl-]
    jr z, jr_006_4fb8

    add hl, hl
    ld a, [hl-]
    ld a, [hl+]
    ld a, [hl-]
    dec hl
    ld a, [hl-]
    inc l
    ld a, [hl-]
    dec l
    ld a, [hl-]
    ld l, $3a
    cpl
    ld a, [hl-]
    jr nc, jr_006_4fc8

    ld sp, $323a
    ld a, [hl-]
    inc sp
    ld a, [hl-]
    inc [hl]
    ld a, [hl-]
    dec [hl]
    ld a, [hl-]

jr_006_4f98:
    ld [hl], $3a

label6_4f9a:
    ld a, [$cac0]
    ld hl, $cb0c
    call Call_000_223b
    ld e, l
    ld d, h
    ld hl, $50e0

jr_006_4fa8:
    ld c, $00

Jump_006_4faa:
    push de
    push hl
    push bc
    push de
    call Call_006_50d2
    pop de
    jp z, Jump_006_507c

    ld a, [de]
    inc a
    cp [hl]

jr_006_4fb8:
    jp c, Jump_006_507c

    ld a, e
    add $07
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc hl
    ld a, [de]
    sub [hl]
    inc de
    inc hl

jr_006_4fc8:
    ld a, [de]
    sbc [hl]
    jp c, Jump_006_507c

    ld a, e
    add $03
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc hl
    ld a, [de]
    sub [hl]
    inc de
    inc hl
    ld a, [de]
    sbc [hl]
    jp c, Jump_006_507c

    ld a, e
    add $01
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc hl
    ld a, [de]
    sub [hl]
    inc de
    inc hl
    ld a, [de]
    sbc [hl]
    jp c, Jump_006_507c

    ld a, e
    add $01
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc hl
    ld a, [de]
    sub [hl]
    inc de
    inc hl
    ld a, [de]
    sbc [hl]
    jr c, jr_006_507c

    ld a, e
    add $01
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc hl
    ld a, [de]
    sub [hl]
    inc de
    inc hl
    ld a, [de]
    sbc [hl]
    jr c, jr_006_507c

    ld a, e
    add $01
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc hl
    ld a, [de]
    sub [hl]
    inc de
    inc hl
    ld a, [de]
    sbc [hl]
    jr c, jr_006_507c

    ld a, e
    add $d2
    ld e, a
    ld a, d
    adc $ff
    ld d, a
    pop bc
    push bc
    push de
    ld b, $19

jr_006_5031:
    ld a, [de]
    cp c
    jr z, jr_006_5097

    inc de
    dec b
    jr nz, jr_006_5031

    pop de
    ld a, e
    add $f8
    ld e, a
    ld a, d
    adc $ff
    ld d, a
    inc hl
    ld a, [hl]
    cp $ff
    jr z, jr_006_507c

    call Call_006_50c0
    jr nz, jr_006_507c

    ld a, [hl]
    cp $ff
    jp z, Jump_006_50a6

    call Call_006_50c0
    jr nz, jr_006_507c

    ld a, [hl]
    cp $ff
    jp z, Jump_006_50b5

    call Call_006_50c0
    jr nz, jr_006_507c

    ld a, [hl]
    cp $ff
    jp z, Jump_006_50b5

    call Call_006_50c0
    jr nz, jr_006_507c

    ld a, [hl]
    cp $ff
    jp z, Jump_006_50b5

    call Call_006_50c0
    jr nz, jr_006_507c

    jp Jump_006_50b5


Jump_006_507c:
jr_006_507c:
    pop bc
    pop hl
    pop de
    ld a, l
    add $12
    ld l, a
    ld a, h
    adc $00
    ld h, a
    inc c
    ld a, c
    cp $da
    jp nz, Jump_006_4faa

    ld a, $ff
    ldh [$d8], a
    ld a, $ff
    ldh [$d9], a
    ret


jr_006_5097:
    ld a, $ff
    ld [de], a
    pop de
    pop bc
    pop hl
    pop de
    ld a, c
    ldh [$d8], a
    ld a, $00
    ldh [$d9], a
    ret


Jump_006_50a6:
    dec hl
    ld a, [hl]
    ldh [$da], a
    pop bc
    pop hl
    pop de
    ld a, c
    ldh [$d8], a
    ld a, $01
    ldh [$d9], a
    ret


Jump_006_50b5:
    pop bc
    pop hl
    pop de
    ld a, c
    ldh [$d8], a
    ld a, $02
    ldh [$d9], a
    ret


Call_006_50c0:
    push de
    call Call_006_50c7
    pop de
    inc hl
    ret


Call_006_50c7:
    ld b, $08

jr_006_50c9:
    ld a, [de]
    cp [hl]
    ret z

    inc de
    dec b
    jr nz, jr_006_50c9

    inc b
    ret


Call_006_50d2:
    ld de, $c0d8
    ld b, $28

jr_006_50d7:
    ld a, [de]
    cp c
    ret z

    inc de
    dec b
    jr nz, jr_006_50d7

    inc b
    ret


    ld bc, $0000
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec c
    nop
    nop
    ld l, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub d
    nop
    ld bc, $ffff
    rst $38
    rst $38
    inc bc
    nop
    nop
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    nop
    nop
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [de]
    nop
    nop
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    nop
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    nop
    nop
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $00
    nop
    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    nop
    ld b, $ff
    rst $38
    rst $38
    rst $38
    dec e
    nop
    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    nop
    nop
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_006_51a1

jr_006_51a1:
    add hl, bc
    rst $38
    rst $38
    rst $38
    rst $38
    dec de
    nop
    nop
    ld l, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add [hl]
    nop
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    nop
    nop
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, de
    nop
    nop
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    dec c
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $00
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    nop
    nop
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $00
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    nop
    db $10
    rst $38
    rst $38
    rst $38
    rst $38
    stop
    nop
    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr jr_006_5238

jr_006_5238:
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    nop
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0000
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    nop
    nop
    jr jr_006_525f

jr_006_525f:
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    nop
    nop
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $00
    dec d
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    nop
    nop
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    nop
    nop
    cpl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    nop
    nop
    jr c, jr_006_52a7

jr_006_52a7:
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    nop
    nop
    jr nz, jr_006_52b9

jr_006_52b9:
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec c
    nop
    nop
    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    nop
    ld a, [de]
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0000], sp
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_006_52f7

jr_006_52f7:
    inc e
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    nop
    nop
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $00
    nop
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_006_531b

jr_006_531b:
    ld e, $ff
    rst $38
    rst $38
    rst $38
    inc bc
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    nop
    nop
    jr nz, jr_006_5337

jr_006_5337:
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    ld bc, $0000
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$ff00], sp
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    nop
    nop
    jr jr_006_535b

jr_006_535b:
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld [de], a
    nop
    nop
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $0000
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc de
    nop
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    stop
    nop
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    nop
    nop
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    nop
    daa
    rst $38
    rst $38
    rst $38
    rst $38
    dec d
    nop
    nop
    ld e, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    nop
    nop
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl-]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0000
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    nop
    nop
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_006_5405

jr_006_5405:
    dec hl
    rst $38
    rst $38
    rst $38
    rst $38
    stop
    nop
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    inc l
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    nop
    nop
    adc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    nop
    nop
    call nz, RST_00
    nop
    nop
    nop
    nop
    nop
    and b
    nop
    ld l, $ff
    rst $38
    rst $38
    rst $38
    ld c, $00
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec de
    nop
    nop
    xor [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b
    nop
    jr nc, @+$01

    rst $38
    rst $38
    rst $38
    jr nz, jr_006_5466

jr_006_5466:
    nop
    cp h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    nop
    inc d
    ld sp, $ffff
    rst $38
    dec b
    nop
    nop
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0000], sp
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $00
    nop
    jr jr_006_549f

jr_006_549f:
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    nop
    nop
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_006_54b9

jr_006_54b9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    nop
    nop
    jr z, jr_006_54c3

jr_006_54c3:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    nop
    nop
    jr z, jr_006_54d5

jr_006_54d5:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr z, jr_006_54e4

jr_006_54e4:
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    db $ec
    nop
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0050], sp
    nop
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $62
    nop
    nop
    nop
    ld d, h
    nop
    ld d, h
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [de], a
    ld a, [hl]
    nop
    nop
    nop
    ld l, h
    nop
    ld l, h
    nop
    nop
    nop
    nop
    nop
    inc a
    ld b, c
    rst $38
    rst $38
    rst $38
    inc c
    ld d, h
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    ld l, d
    nop
    nop
    nop
    ld e, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $62
    nop
    nop
    nop
    nop
    nop
    ld d, h
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    adc h
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $0077
    nop
    nop
    nop
    nop
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    ld c, l
    nop
    ld [hl+], a
    nop
    ld b, d
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    nop
    ld b, c
    ld bc, $ffff
    rst $38
    dec bc
    ld c, l
    nop
    ld [hl+], a
    nop
    ld b, d
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    nop
    ld b, c
    ld e, d
    rst $38
    rst $38
    rst $38
    dec bc
    ld c, l
    nop
    ld [hl+], a
    nop
    ld b, d
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    nop
    ld b, c
    ld e, b
    rst $38
    rst $38
    rst $38
    dec bc
    ld c, l
    nop
    ld [hl+], a
    nop
    ld b, d
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    nop
    ld b, c
    dec c
    rst $38
    rst $38
    rst $38
    inc c
    ld b, h
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld a, $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld b, h
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld a, $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld a, $00
    nop
    nop
    ld b, h
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld a, $00
    nop
    nop
    ld b, h
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld b, b
    nop
    nop
    nop
    ld a, [hl-]
    nop
    nop
    nop
    ld a, $00
    jr nc, jr_006_5645

jr_006_5645:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld b, b
    nop
    nop
    nop
    ld a, [hl-]
    nop
    nop
    nop
    ld a, $00
    jr nc, jr_006_5657

jr_006_5657:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld b, h
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld a, $00
    nop
    nop
    rst $38
    rst $38

Call_006_566b:
    rst $38
    rst $38
    rst $38
    inc e
    sbc d
    nop
    adc h
    nop
    xor b
    nop
    nop
    nop
    xor b
    nop
    sub h
    nop
    ld c, l
    ld e, c
    rst $38
    rst $38
    rst $38
    inc de
    ld h, d
    nop
    nop
    nop
    ld e, b
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr jr_006_5710

    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    adc b
    nop
    nop
    nop
    ld d, b
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $0054
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    ld b, h
    nop
    ld [hl], $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rla
    add b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld d, d
    nop
    ld c, d
    nop
    ld d, d
    rst $38
    rst $38
    rst $38
    rst $38
    ld [de], a
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld b, c
    ld b, e
    sub e
    rst $38
    rst $38
    inc c
    ld c, b
    nop
    nop
    nop
    ld b, h
    nop
    nop
    nop
    ld d, d
    nop
    nop
    nop
    inc hl
    ld b, c
    rst $38
    rst $38
    rst $38
    inc c
    ld c, b
    nop
    nop
    nop
    ld d, d
    nop
    ld b, h
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    ld e, h
    nop
    nop
    nop
    ld e, d
    nop
    nop
    nop
    ld h, b
    nop
    nop
    nop
    ld d, b
    ld d, l
    rst $38
    rst $38
    rst $38

jr_006_5710:
    dec c
    ld c, d
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    ld d, h
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc de
    ld [hl], b
    nop
    nop
    nop
    ld [hl], d
    nop
    nop
    nop
    add h
    nop
    nop
    nop
    ld e, b
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    ld b, c
    nop
    nop
    nop
    ld e, d
    nop
    nop
    nop
    inc [hl]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    ld a, h
    nop
    nop
    nop
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, h
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    adc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, l
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $d2
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    adc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $d2
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    cp b
    nop
    cp b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $c4, $00, $11
    ld e, d
    rst $38
    rst $38
    rst $38
    inc h
    call nz, $c400
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    nop
    ld [$635f], sp
    rst $38
    rst $38
    ld h, $00
    nop
    jp nc, RST_00

    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld [bc], a
    dec b
    ld [$0e0b], sp
    dec b
    inc hl
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    nop
    nop
    ld e, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    ld sp, $0000
    nop
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    ccf
    nop
    nop
    nop
    ld [hl], $00
    nop
    nop
    nop
    nop
    ld [hl], $00
    ld h, a
    ld l, b
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld l, d
    ld l, l
    rst $38
    rst $38
    rst $38
    add hl, bc
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $62
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    nop
    ld l, h
    rst $38
    rst $38
    rst $38
    rst $38
    dec c
    ld c, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    nop
    nop
    ld b, c
    nop
    nop
    nop
    nop
    nop
    ld d, d
    nop
    ld d, d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    nop
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    adc h
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld l, a
    ld a, b
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    nop
    nop
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    ld c, b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $00
    nop
    ld b, c
    nop
    nop
    nop
    nop
    nop
    ld d, h
    nop
    ld d, h
    nop
    ld l, a
    ld [hl], e
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    ld [hl], $00
    dec de
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ld sp, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld b, h
    nop
    daa
    nop
    nop
    nop
    nop
    nop
    ld d, l
    nop
    dec a
    nop
    ld [hl], l
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $54
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    scf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec c
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    nop
    nop
    nop
    ld a, c
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $20
    nop
    nop
    nop
    rra
    nop
    nop
    nop
    jr nc, jr_006_5991

jr_006_5991:
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld b, d
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    ld c, l
    nop
    nop
    nop
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $78
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    nop
    nop
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_006_59c9

jr_006_59c9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec d
    sub e
    nop
    sub e
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    add hl, hl
    ld d, h
    rst $38
    rst $38
    rst $38
    inc d
    nop
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc h
    nop
    add c
    add d
    rst $38
    rst $38
    rst $38
    rla
    nop
    nop
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    nop
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $ff
    dec d
    nop
    nop
    ld l, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub [hl]
    nop
    jr jr_006_5a30

    ld hl, $ffff
    ld d, $00
    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    nop
    nop
    ld b, [hl]
    nop
    nop
    nop
    nop

jr_006_5a30:
    nop
    nop
    nop
    ld e, d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, de
    nop
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    add h
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $00
    nop
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub [hl]
    nop
    add l
    rst $38
    rst $38
    rst $38
    rst $38
    inc hl
    nop
    nop
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or h
    nop
    add [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    inc hl
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    ld e, $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld d, h
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    ld c, b
    nop
    nop
    nop
    adc b
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    ld c, e
    nop
    nop
    nop
    nop
    nop
    ld d, h
    nop
    ld b, [hl]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc de
    adc h
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    adc h
    nop
    nop
    nop
    adc d
    rst $38
    rst $38
    rst $38
    rst $38
    ld [de], a
    ld a, [hl]
    nop
    nop
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld l, h
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $62
    nop
    nop
    nop
    nop
    nop
    ld d, h
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec c
    ld e, e
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $62
    nop
    nop
    nop
    ld d, h
    nop
    ld d, h
    nop
    ld d, h
    nop
    nop
    nop
    dec sp
    adc [hl]
    rst $38
    rst $38
    rst $38
    db $10
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $0078
    nop
    nop
    ld h, h
    nop
    nop
    nop
    adc h
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [de]
    or [hl]
    nop
    nop
    nop
    nop
    nop
    sbc h
    nop
    nop
    nop
    sbc h
    nop
    adc c
    adc [hl]
    rst $38
    rst $38
    rst $38
    ld [de], a
    ld [hl], d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    nop
    ld h, b
    nop
    dec l
    ld [hl], a
    rst $38
    rst $38
    rst $38
    dec de
    add $00
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    sub c
    nop
    and d
    nop
    ld sp, $ff7d
    rst $38
    rst $38
    ld e, $d2
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or h
    nop
    or h
    nop
    inc d
    sub h
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    nop
    nop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld a, $00
    nop
    nop
    ld b, h
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld b, h
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld a, $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld b, h
    nop
    nop
    nop
    ld a, $00
    nop
    nop
    ld c, b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, $00e7
    and h
    nop
    add $00
    nop
    nop
    add $00
    add $00
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    rst $38


label6_6034:
    ld a, [$c88f]
    or a
    ret nz

    ld a, [wGameState]
    bit 5, a
    jp nz, Jump_006_6b87

    bit 7, a
    jp nz, Jump_006_6295

    bit 4, a
    jp nz, Jump_006_62b2

    bit 0, a
    jp nz, Jump_006_67a9

    bit 1, a
    jr z, jr_006_6059

    ld hl, $0700
    rst $10
    ret


jr_006_6059:
    bit 3, a
    jr z, jr_006_6062

    ld hl, $1900
    rst $10
    ret


jr_006_6062:
    bit 6, a
    jr z, jr_006_606b

    ld hl, $1303
    rst $10
    ret


jr_006_606b:
    bit 2, a
    jp nz, Jump_006_62f6

    ld a, [$d9e8]
    or a
    jp nz, Jump_006_6284

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_6284

    ld a, [$c8a8]
    or a
    jp nz, Jump_006_6284

    ldh a, [$90]
    bit 0, a
    jp nz, Jump_006_6284

    ld a, [$c8aa]
    or a
    jp nz, Jump_006_611d

    ld a, [$c850]
    or a
    jp nz, Jump_006_60b8

    ld a, [wJoypad_current_frame]
    and $08
    jr z, jr_006_60b8

    ld a, [$ca8d]
    or a
    jr z, jr_006_60ac

    ld a, [wMonsterInfoToggle]
    xor $01

jr_006_60ac:
    ld [wMonsterInfoToggle], a
    call Call_000_2518
    call Call_000_25f1
    jp Jump_006_6284


Jump_006_60b8:
jr_006_60b8:
    ld a, [$c850]
    or a
    jp nz, Jump_006_611d

    ld a, [wJoypad_current_frame]
    and $04
    jr z, jr_006_611d

    ld a, [wInGateworld]
    or a
    jr nz, jr_006_60e7

    ld a, [wMapID]
    cp $61
    jr z, jr_006_60e7

    cp $62
    jr z, jr_006_60e7

    cp $63
    jr z, jr_006_60e7

    cp $64
    jr z, jr_006_60e7

    cp $50
    jr c, jr_006_611d

    cp $5d
    jr nc, jr_006_611d

jr_006_60e7:
    ld hl, wGameState
    set 3, [hl]
    xor a
    ld [$c905], a
    ld [$c906], a
    xor a
    ld [$c907], a
    ld [$c908], a
    ldh a, [$b7]
    ld l, a
    ldh a, [$b8]
    ld h, a
    ld a, l
    ldh [$bf], a
    ld a, h
    ldh [$c0], a
    ldh a, [$bb]
    ld l, a
    ldh a, [$bc]
    ld h, a
    ld a, l
    ldh [$c1], a
    ld a, h
    ldh [$c2], a
    call Call_006_62b7
    ld a, $59
    call PlaySoundEffect
    jp Jump_006_6284


Jump_006_611d:
jr_006_611d:
    ld a, [$d8d7]
    or a
    jp nz, Jump_006_6247

    ld a, [$c850]
    or a
    jp nz, Jump_006_6247

    ld a, [wJoypad_current_frame]
    and $01
    jp z, Jump_006_6247

    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    ld a, l
    ldh [$db], a
    ld a, h
    ldh [$dc], a
    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, l
    ldh [$dd], a
    ld a, h
    ldh [$de], a
    ld hl, $0b04
    rst $10
    ldh a, [$d5]
    cp $ff
    jr nz, jr_006_618e

    ld hl, $6285
    ldh a, [$8e]
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    add hl, bc
    ld a, l
    ldh [$db], a
    ld a, h
    ldh [$dc], a
    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    add hl, de
    ld a, l
    ldh [$dd], a
    ld a, h
    ldh [$de], a
    ld hl, $0b04
    rst $10
    ldh a, [$d5]
    cp $ff
    jp z, Jump_006_61e9

jr_006_618e:
    ld [$d8d4], a
    ld a, [wMapID]
    ld [$d8d3], a
    ld a, [wInGateworld]
    or a
    jr z, jr_006_61a2

    ld a, $70
    ld [$d8d3], a

jr_006_61a2:
    ldh a, [$d6]
    cp $ff
    jr z, jr_006_61b7

    ld c, $20
    call Call_000_1dbe
    ld a, l
    add $d7
    ld l, a
    ld a, h
    adc $d7
    ld h, a
    set 6, [hl]

jr_006_61b7:
    ld hl, $d8d8
    res 0, [hl]
    res 1, [hl]
    xor a
    ld [$d8d7], a
    ld hl, $0405
    rst $10
    ld a, [$d8d7]
    or a
    jp z, Jump_006_61e9

    bit 1, a
    jp z, Jump_006_61e9

    ld hl, $ffff
    ld a, l
    ld [$c917], a
    ld a, h
    ld [$c918], a
    ld hl, wGameState	;load ptr to game state into hl
    set 0, [hl]		;set game state to 'textBox'
    xor a
    ld [$c915], a
    ld [$c916], a

Jump_006_61e9:
    ld a, [wInGateworld]
    or a
    jp z, Jump_006_6247

    ld hl, $6285
    ldh a, [$8e]
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    add hl, bc
    ld a, l
    ldh [$db], a
    ld a, h
    ldh [$dc], a
    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    add hl, de
    ld a, l
    ldh [$dd], a
    ld a, h
    ldh [$de], a
    ldh a, [$db]
    swap a
    and $0f
    ld b, a
    ldh a, [$dc]
    swap a
    and $f0
    or b
    ldh [$db], a
    ldh a, [$dd]
    swap a
    and $0f
    ld b, a
    ldh a, [$de]
    swap a
    and $f0
    or b
    ldh [$dd], a
    ld a, $01
    ld [$d78f], a
    ld hl, $0108
    rst $10

Jump_006_6247:
    ld a, [$d8d7]
    or a
    jp nz, Jump_006_6284

    ld a, [wGameState]
    or a
    jp nz, Jump_006_6284

    ld a, [$c850]
    or a
    jp nz, Jump_006_6284

    ld a, [wJoypad_current_frame]
    and $01
    jr z, jr_006_6284

    ld a, [$ca8d]
    or a
    jr z, jr_006_6284

    ld hl, wGameState
    set 1, [hl]
    xor a
    ld [$c90d], a
    ld [$c90e], a
    xor a
    ld [$c90f], a
    ld [$c910], a
    ld a, $59
    call PlaySoundEffect
    jp Jump_006_6284


Jump_006_6284:
jr_006_6284:
    ret


    nop
    nop
    stop
    ldh a, [rIE]
    nop
    nop
    nop
    nop
    ldh a, [rIE]
    stop
    nop
    nop

Jump_006_6295:
    call Call_006_62a0
    ld hl, $0901
    rst $10
    call Call_006_62a0
    ret


Call_006_62a0:
    ld hl, $c905
    ld de, $c876
    ld b, $08

jr_006_62a8:
    ld c, [hl]
    ld a, [de]
    ld [hl+], a
    ld a, c
    ld [de], a
    inc de
    dec b
    jr nz, jr_006_62a8

    ret


Jump_006_62b2:
    ld hl, $0900
    rst $10
    ret


Call_006_62b7:
    ld a, $80
    ldh [$b6], a
    ld hl, $9c00
    ld de, $c1c0
    ld c, $02

jr_006_62c3:
    ld b, $14
    push hl

jr_006_62c6:
    ld a, [de]
    call Write_gfx_tile
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
    jr nz, jr_006_62c6

    pop hl
    ld a, e
    add $0c
    ld e, a
    ld a, d
    adc $00
    ld d, a
    push bc
    ld bc, $0020
    ld a, h
    add hl, bc
    and $fc
    ld b, a
    ld a, h
    and $03
    or b
    ld h, a
    pop bc
    dec c
    jr nz, jr_006_62c3

    ret


Jump_006_62f6:
    ld a, [$c91d]
    rst $00
    ld [bc], a
    ld h, e
    ld b, [hl]
    ld h, h
    dec de
    ld h, l
    ld [$fa65], a
    ld e, $c9
    rst $00
    db $10
    ld h, e
    cp b
    ld h, [hl]
    rst $00
    ld h, [hl]
    jr z, @+$65

    rst $10
    ld h, e
    ld a, [$c925]
    dec a
    ld [$c925], a
    call Call_006_66e5
    ld hl, $0b03
    rst $10
    ld a, $13
    ld [$c91f], a
    ld hl, $c91e
    inc [hl]
    ret


    ldh a, [$bb]
    and $f8
    ld l, a
    xor a
    sla l
    rla
    sla l
    rla
    ld h, $98
    add h
    ld h, a
    ldh a, [$b7]
    rrca
    rrca
    rrca
    dec a
    and $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$c740], a
    ld a, h
    ld [$c741], a
    ld a, [$c91f]
    ld de, $c500
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, $01
    ld [$c742], a
    ld a, $10
    ld [$c743], a
    ld hl, $c744
    ld b, $10

jr_006_6369:
    ld a, [de]
    ld [hl+], a
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_006_6369

    ld a, [$c91f]
    srl a
    push af
    ld de, $c200
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    pop af
    ld b, $10
    ld hl, $c754
    jr c, jr_006_63a0

jr_006_638d:
    ld a, [de]
    swap a
    and $0f
    ld [hl+], a
    ld a, e
    add $10
    ld e, a
    ld a, d

Call_006_6398:
    adc $00
    ld d, a
    dec b
    jr nz, jr_006_638d

    jr jr_006_63af

jr_006_63a0:
    ld a, [de]
    and $0f
    ld [hl+], a
    ld a, e
    add $10
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_006_63a0

jr_006_63af:
    ld a, $01
    ld [$c8a3], a
    ldh a, [$b7]
    ld l, a
    ldh a, [$b8]
    ld h, a
    ld a, l
    add $f8
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, l
    ldh [$b7], a
    ld a, h
    ldh [$b8], a
    ld a, [$c91f]
    dec a
    ld [$c91f], a
    cp $ff
    ret nz

    ld hl, $c91e
    inc [hl]
    ret


    ld hl, $c300
    ld de, $c500
    ld bc, $0200

jr_006_63e0:
    ld a, [de]
    ld [hl+], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_006_63e0

    ld hl, wGameState
    res 2, [hl]
    call Call_006_66f0
    ld b, $31

jr_006_63f2:
    ld a, [$ca37]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, l
    add $73
    ld l, a
    ld a, h
    adc $c9
    ld h, a
    ldh a, [$92]
    ld [hl+], a
    ldh a, [$95]
    ld [hl+], a
    ldh a, [$93]
    swap a
    ld c, a
    ldh a, [$96]
    or c
    ld [hl+], a
    ldh a, [$8b]
    ld c, a
    ldh a, [$8d]
    or c
    ld [hl+], a
    ld a, [$ca37]
    inc a
    ld [$ca37], a
    cp $31
    jr c, jr_006_6427

    xor a
    ld [$ca37], a

jr_006_6427:
    dec b
    jr nz, jr_006_63f2

    ldh a, [$92]
    ldh [$a5], a
    ldh a, [$93]
    ldh [$a6], a
    ldh a, [$95]
    ldh [$a7], a
    ldh a, [$96]
    ldh [$a8], a
    call Call_000_1e31
    ld hl, $010a
    rst $10
    xor a
    ld [$d9e8], a
    ret


    ld a, [$c91e]
    rst $00
    ld d, h
    ld h, h
    cp b
    ld h, [hl]
    rst $00
    ld h, [hl]
    ld l, e
    ld h, h
    rst $10
    ld h, e
    ld a, [$c925]
    inc a
    ld [$c925], a
    call Call_006_66e5
    ld hl, $0b03
    rst $10
    xor a
    ld [$c91f], a
    ld hl, $c91e
    inc [hl]
    ret


    ldh a, [$bb]
    and $f8
    ld l, a
    xor a
    sla l
    rla
    sla l
    rla
    ld h, $98
    add h
    ld h, a
    ldh a, [$b7]
    rrca
    rrca
    rrca
    add $14
    and $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$c740], a
    ld a, h
    ld [$c741], a
    ld a, [$c91f]
    ld de, $c500
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, $01
    ld [$c742], a
    ld a, $10
    ld [$c743], a
    ld hl, $c744
    ld b, $10

jr_006_64ad:
    ld a, [de]
    ld [hl+], a
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_006_64ad

    ld a, [$c91f]
    srl a
    push af
    ld de, $c200
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    pop af
    ld b, $10
    ld hl, $c754
    jr c, jr_006_64e4

jr_006_64d1:
    ld a, [de]
    swap a
    and $0f
    ld [hl+], a
    ld a, e
    add $10
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_006_64d1

    jr jr_006_64f3

jr_006_64e4:
    ld a, [de]
    and $0f
    ld [hl+], a
    ld a, e
    add $10
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_006_64e4

jr_006_64f3:
    ld a, $01
    ld [$c8a3], a
    ldh a, [$b7]
    ld l, a
    ldh a, [$b8]
    ld h, a
    ld a, l
    add $08
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$b7], a
    ld a, h
    ldh [$b8], a
    ld a, [$c91f]
    inc a
    ld [$c91f], a
    cp $14
    ret nz

    ld hl, $c91e
    inc [hl]
    ret


    ld a, [$c91e]
    rst $00
    add hl, hl
    ld h, l
    cp b
    ld h, [hl]
    rst $00
    ld h, [hl]
    ld b, d
    ld h, l
    rst $10
    ld h, e
    ld a, [$c925]
    sub $04
    ld [$c925], a
    call Call_006_66e5
    ld hl, $0b03
    rst $10
    ld a, $0f
    ld [$c91f], a
    ld hl, $c91e
    inc [hl]
    ret


    ldh a, [$bb]
    and $f8
    ld l, a
    xor a
    sla l
    rla
    sla l
    rla
    ld h, $98
    add h
    ld h, a
    ldh a, [$b7]
    rrca
    rrca
    rrca
    and $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    add $e0
    ld l, a
    ld a, h
    adc $03
    ld h, a
    res 2, h
    ld a, l
    ld [$c740], a
    ld a, h
    ld [$c741], a
    ld a, [$c91f]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld e, l
    ld d, h
    ld a, $00
    ld [$c742], a
    ld a, $14
    ld [$c743], a
    ld hl, $c744
    ld b, $14

jr_006_6595:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_006_6595

    ld a, [$c91f]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c2
    ld h, a
    ld e, l
    ld d, h
    ld hl, $c758
    ld b, $0a

jr_006_65b4:
    ld a, [de]
    swap a
    and $0f
    ld [hl+], a
    ld a, [de]
    and $0f
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_006_65b4

    ld a, $01
    ld [$c8a3], a
    ldh a, [$bb]
    ld l, a
    ldh a, [$bc]
    ld h, a
    ld a, l
    add $f8
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, l
    ldh [$bb], a
    ld a, h
    ldh [$bc], a
    ld a, [$c91f]
    dec a
    ld [$c91f], a
    cp $ff
    ret nz

    ld hl, $c91e
    inc [hl]
    ret


    ld a, [$c91e]
    rst $00
    ld hl, sp+$65
    cp b
    ld h, [hl]
    rst $00
    ld h, [hl]
    db $10
    ld h, [hl]
    rst $10
    ld h, e
    ld a, [$c925]
    add $04
    ld [$c925], a
    call Call_006_66e5
    ld hl, $0b03
    rst $10
    xor a
    ld [$c91f], a
    ld hl, $c91e
    inc [hl]
    ret


    ldh a, [$bb]
    and $f8
    ld l, a
    xor a
    sla l
    rla
    sla l
    rla
    ld h, $98
    add h
    ld h, a
    ldh a, [$b7]
    rrca
    rrca
    rrca
    and $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $02
    ld h, a
    res 2, h
    ld a, l
    ld [$c740], a
    ld a, h
    ld [$c741], a
    ld a, [$c91f]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld e, l
    ld d, h
    ld a, $00
    ld [$c742], a
    ld a, $14
    ld [$c743], a
    ld hl, $c744
    ld b, $14

jr_006_6663:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_006_6663

    ld a, [$c91f]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c2
    ld h, a
    ld e, l
    ld d, h
    ld hl, $c758
    ld b, $0a

jr_006_6682:
    ld a, [de]
    swap a
    and $0f
    ld [hl+], a
    ld a, [de]
    and $0f
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_006_6682

    ld a, $01
    ld [$c8a3], a
    ldh a, [$bb]
    ld l, a
    ldh a, [$bc]
    ld h, a
    ld a, l
    add $08
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$bb], a
    ld a, h
    ldh [$bc], a
    ld a, [$c91f]
    inc a
    ld [$c91f], a
    cp $10
    ret nz

    ld hl, $c91e
    inc [hl]
    ret


    ld a, [wInGateworld]
    or a
    jr nz, jr_006_66c2

    ld hl, $0b07
    rst $10

jr_006_66c2:
    ld hl, $c91e
    inc [hl]
    ret


    ld hl, $c91e
    inc [hl]
    ld a, [wInGateworld]
    or a
    ret nz

    ld a, [$d8d7]
    or a
    ret nz

    ld a, $00
    ld [$d8d4], a
    ld a, [wMapID]
    ld [$d8d3], a
    ld hl, $0405
    rst $10
    ret


Call_006_66e5:
    ld a, $80
    ldh [$b6], a
    ld hl, $9c00
    call Call_006_671f
    ret


Call_006_66f0:
    ld a, $ff
    ldh [$b6], a
    ldh a, [$bb]
    and $f8
    ld l, a
    xor a
    sla l
    rla
    sla l
    rla
    ld h, $98
    add h
    ld h, a
    ldh a, [$b7]
    rrca
    rrca
    rrca
    and $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $02
    ld h, a
    res 2, h
    call Call_006_671f
    ret


Call_006_671f:
    push hl
    call Call_006_6771
    pop hl
    ld a, [$c81d]
    or a
    ret z

    di
    call Call_000_1aa6
    ld a, $01
    ldh [rVBK], a
    ei
    ld c, $02

jr_006_6734:
    ld b, $14
    push hl

jr_006_6737:
    ld a, $07
    call Write_gfx_tile
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
    jr nz, jr_006_6737

    pop hl
    ld a, e
    add $0c
    ld e, a
    ld a, d
    adc $00
    ld d, a
    push bc
    ld bc, $0020
    ld a, h
    add hl, bc
    and $fc
    ld b, a
    ld a, h
    and $03
    or b
    ld h, a
    pop bc
    dec c
    jr nz, jr_006_6734

    di
    call Call_000_1aa6
    ld a, $00
    ldh [rVBK], a
    ei
    ret


Call_006_6771:
    ld de, $c1c0
    ld c, $02

jr_006_6776:
    ld b, $14
    push hl

jr_006_6779:
    ld a, [de]
    call Write_gfx_tile
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
    jr nz, jr_006_6779

    pop hl
    ld a, e
    add $0c
    ld e, a
    ld a, d
    adc $00
    ld d, a
    push bc
    ld bc, $0020
    ld a, h
    add hl, bc
    and $fc
    ld b, a
    ld a, h
    and $03
    or b
    ld h, a
    pop bc
    dec c
    jr nz, jr_006_6776

    ret


Jump_006_67a9:
    ld hl, $ffb7
    call Call_006_67e3
    ld hl, $ffbb
    call Call_006_67e3
    ld a, [$c915]
    rst $00
    ld b, e
    ld l, b
    call nc, Call_000_2f68
    ld l, c
    ld a, [hl+]
    ld l, b
    ld a, [hl+]
    ld l, b
    ld a, [hl+]
    ld l, b
    ld h, h
    ld l, c
    ld a, [hl+]
    ld l, b
    ld a, [hl+]
    ld l, b
    ld a, c
    ld l, c
    rst $38
    ld h, a
    ret nc

    ld l, c
    ld e, $6b
    ld a, [hl+]
    ld l, b
    ld a, [hl+]
    ld l, b
    ld c, c
    ld l, e
    ld a, [hl+]
    ld l, b
    ld a, [hl+]
    ld l, b
    ld a, [hl+]
    ld l, b
    ld l, h
    ld l, e
    ld a, l
    ld l, e

Call_006_67e3:
    ld a, [hl]
    add $04
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl-], a
    ld a, [hl]
    and $f8
    ld [hl], a
    ret


Call_006_67f0:
    push af
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
    pop af
    ret


    ld a, $fd
    ld [$c83b], a
    ld hl, $5605
    rst $10
    ld a, [$c917]
    ld l, a
    ld a, [$c918]
    ld h, a
    ld a, h
    and l
    cp $ff
    jr z, jr_006_6819

    call Call_000_096d

jr_006_6819:
    ld hl, $c915
    inc [hl]
    ld hl, $0020
    call Call_006_682f
    call Call_006_67f0
    call Call_000_0ca0
    ret


    ld hl, $c915
    inc [hl]
    ret


Call_006_682f:
    ld a, [$c919]
    add l
    ld l, a
    ld a, [$c91a]
    adc h
    and $03
    ld h, a
    ld a, [$c91a]
    and $fc
    or h
    ld h, a
    ret


    ld hl, $c915
    inc [hl]
    ld a, $01
    ldh [$d3], a
    ld a, $00
    ld [$c83c], a
    ld a, $20
    ld [$c83d], a
    ld de, $0000
    ld a, [$d8d7]
    or a
    jr z, jr_006_686e

    ld hl, $d8d8
    ld a, [hl]
    res 0, [hl]
    res 1, [hl]
    bit 0, a
    jr nz, jr_006_6882

    bit 1, a
    jr nz, jr_006_6893

jr_006_686e:
    ldh a, [$bb]
    ld c, a
    ldh a, [$95]
    sub c
    ld c, a
    ldh a, [$bc]
    ld b, a
    ldh a, [$96]
    sbc b
    jr nz, jr_006_6882

    ld a, c
    cp $50
    jr nc, jr_006_6893

jr_006_6882:
    ld a, $02
    ldh [$d3], a
    ld a, $00
    ld [$c83c], a
    ld a, $80
    ld [$c83d], a
    ld de, $01a0

jr_006_6893:
    ld a, [wInGateworld]
    or a
    jr nz, jr_006_68a7

    ld a, [wMapID]
    cp $08
    jr z, jr_006_68a4

    cp $5d
    jr nz, jr_006_68a7

jr_006_68a4:
    xor a
    ldh [$d3], a

jr_006_68a7:
    ld hl, $ffb7
    call Call_006_6957
    ld hl, $ffbb
    call Call_006_6957
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
    add hl, de
    ld a, h
    and $03
    or $98
    ld h, a
    ld a, l
    ld [$c919], a
    ld a, h
    ld [$c91a], a
    ld hl, $c915
    inc [hl]
    ld a, [$c919]
    ld l, a
    ld a, [$c91a]
    ld h, a
    ld bc, $0000
    ld de, $c100
    call Call_006_690a
    ld bc, $0020
    ld de, $c114
    call Call_006_690a
    ld bc, $0040
    ld de, $c128
    call Call_006_690a
    ld bc, $0060
    ld de, $c13c
    call Call_006_690a
    ld bc, $0080
    ld de, $c150

Call_006_690a:
    ld a, [$c919]
    ld l, a
    ld a, [$c91a]
    ld h, a
    add hl, bc
    ld a, h
    and $03
    ld h, a
    ld a, [$c91a]
    and $fc
    or h
    ld h, a
    ld b, $14

jr_006_6920:
    di
    call Call_000_1aa6
    ld a, [hl]
    ei
    ld [de], a
    inc de
    call Call_006_67f0
    dec b
    jr nz, jr_006_6920

    ret


    ld hl, $c915
    inc [hl]
    ld hl, $0040
    call Call_006_682f

Call_006_6939:
jr_006_6939:
    ld a, $fe
    call Write_gfx_tile
    call Call_006_67f0
    ld b, $12
    ld a, $e0
    call Call_006_694d
    ld a, $ff
    jp Write_gfx_tile


Call_006_694d:
jr_006_694d:
    call Write_gfx_tile
    call Call_006_67f0
    dec b
    jr nz, jr_006_694d

    ret


Call_006_6957:
    ld a, [hl]
    add $04
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl-], a
    ld a, [hl]
    and $f8
    ld [hl], a
    ret


    ld hl, $c915
    inc [hl]
    ld hl, $0020
    call Call_006_682f
    call Call_006_6939
    ld hl, $0060
    call Call_006_682f
    jr jr_006_6939

    ld hl, $c915
    inc [hl]
    ld a, [$c919]
    ld l, a
    ld a, [$c91a]
    ld h, a
    ld a, $fa
    call Write_gfx_tile
    call Call_006_67f0
    ld b, $12
    ld a, $ef
    call Call_006_694d
    ld a, $fb
    call Write_gfx_tile
    ld hl, $0080
    call Call_006_682f
    ld a, $fc
    call Write_gfx_tile
    call Call_006_67f0
    ld b, $12
    ld a, $ee
    call Call_006_694d
    ld a, $fd
    call Write_gfx_tile
    call Call_000_1ed5
    ld hl, $0000
    ldh a, [$d3]
    cp $02
    jr nz, jr_006_69c2

    ld hl, $000d

jr_006_69c2:
    ld a, $00
    ld bc, $1304
    ld d, $01
    call Call_000_1f27
    call Call_000_1f59
    ret


    ld a, [$c8aa]
    or a
    ret nz

    ld a, [$c850]
    or a
    ret nz

    ld a, [$c825]
    or a
    ret nz

    ld a, [$c917]
    ld l, a
    ld a, [$c918]
    ld h, a
    ld a, h
    and l
    cp $ff
    jr nz, jr_006_6a02

    ld a, [$d8d7]
    bit 1, a
    jr z, jr_006_6a02

    ld a, [wGameState]
    bit 7, a
    ret nz

    bit 4, a
    ret nz

    ld hl, $0406
    rst $10
    ret


jr_006_6a02:
    ld a, [$c918]
    cp $02
    jr nz, jr_006_6a25

    ld a, [$c917]
    cp $11
    jr nz, jr_006_6a1a

    call Call_006_6ac2
    ld a, [$c917]
    cp $17
    jr nz, jr_006_6a1a

jr_006_6a1a:
    ld a, [$c917]
    cp $17
    jr nz, jr_006_6a25

    call Call_006_6ad7
    ret


jr_006_6a25:
    ld a, [$c917]
    cp $1a
    jp nz, Jump_006_6ab9

    ld hl, wGameState
    res 0, [hl]
    xor a
    ld [$c915], a
    ld [$c916], a
    ld a, $08
    ld [$d92b], a
    ld hl, $0000
    ld a, l
    ld [$c96d], a
    ld a, h
    ld [$c96e], a
    ld hl, $00e8
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0058
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ld a, $01
    ld [wIsPlayerChangingMaps], a
    ld hl, $c8ea
    res 7, [hl]
    ld a, [wCurrGoldLo]
    ld l, a
    ld a, [wCurrGoldMid]
    ld h, a
    ld a, [wCurrGoldHi]
    ld e, a
    ld a, $02
    call Call_000_1e1e
    ld a, l
    ld [wCurrGoldLo], a
    ld a, h
    ld [wCurrGoldMid], a
    ld a, e
    ld [wCurrGoldHi], a
    ld hl, wInventory
    ld b, $14

jr_006_6a8b:
    ld a, [hl]
    or a
    jr z, jr_006_6aa7

    cp $ff
    jr z, jr_006_6aa7

    ld [$da5e], a
    push hl
    push bc
    ld hl, $0302
    rst $10
    pop bc
    pop hl
    ld a, [$da6d]
    bit 2, a
    jr nz, jr_006_6aa7

    ld [hl], $ff

jr_006_6aa7:
    inc hl
    dec b
    jr nz, jr_006_6a8b

    ld hl, $0305
    rst $10
    ld a, $04
    call Call_000_1688
    ld hl, $c88f
    inc [hl]
    ret


Jump_006_6ab9:
    ld hl, $c915
    inc [hl]
    ld hl, $0801
    rst $10
    ret


Call_006_6ac2:
    ld de, $d793

jr_006_6ac5:
    ld a, [de]
    cp $ff
    ret z

    ld a, [de]
    res 5, a
    ld [de], a
    ld a, e
    add $04
    ld e, a
    ld a, d
    adc $00
    ld d, a
    jr jr_006_6ac5

Call_006_6ad7:
    ld hl, wGameState
    res 0, [hl]
    xor a
    ld [$c915], a
    ld [$c916], a
    ld a, [$cab4]
    add a
    ld hl, $6b0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$da03], a
    ld a, [hl]
    ld [$da04], a
    ld a, $00
    ld [$da02], a
    ld hl, wGameState
    set 6, [hl]
    xor a
    ld [$c905], a
    ld a, $00
    ld [$da09], a
    ret


    dec a
    ld bc, $013e
    ccf
    ld bc, $0140
    ld b, c
    ld bc, $0142
    ld b, e
    ld bc, $0144
    ld b, h
    ld bc, $1521
    ret


    inc [hl]
    ld a, [$c919]
    ld l, a
    ld a, [$c91a]
    ld h, a
    ld de, $c100
    ld b, $14
    call Call_006_6b3d
    ld hl, $0080
    call Call_006_682f
    ld de, $c150
    ld b, $14

Call_006_6b3d:
jr_006_6b3d:
    ld a, [de]
    call Write_gfx_tile
    inc de
    call Call_006_67f0
    dec b
    jr nz, jr_006_6b3d

    ret


    ld a, $00
    ldh [$d3], a
    ld hl, $c915
    inc [hl]
    ld hl, $0020
    call Call_006_682f
    ld de, $c114
    ld b, $14
    call Call_006_6b3d
    ld hl, $0060
    call Call_006_682f
    ld de, $c13c
    ld b, $14
    jr jr_006_6b3d

    ld hl, $c915
    inc [hl]
    ld hl, $0040
    call Call_006_682f
    ld de, $c128
    ld b, $14
    jr jr_006_6b3d

    ld hl, wGameState
    res 0, [hl]
    xor a
    ld [$c915], a
    ret


Jump_006_6b87:
    ld a, [$c905]
    or a
    jr nz, jr_006_6ba7

    ld a, [wInGateworld]
    or a
    jr nz, jr_006_6ba2

    ld a, [wMapID]
    cp $50
    jr c, jr_006_6ba7

    cp $52
    jr z, jr_006_6ba7

    cp $60
    jr z, jr_006_6ba7

jr_006_6ba2:
    ld a, $10
    ld [$c905], a

jr_006_6ba7:
    ld a, [$c905]
    rst $00
    call c, Call_006_566b
    ld l, h
    ld a, e
    ld l, h
    rra
    ld l, l
    ld d, e
    ld l, l
    ld [de], a
    ld l, [hl]
    dec hl
    ld l, [hl]
    db $db
    ld l, e
    db $db
    ld l, e
    db $db
    ld l, e
    db $db
    ld l, e
    db $db
    ld l, e
    db $db
    ld l, e
    db $db
    ld l, e
    db $db
    ld l, e
    db $db
    ld l, e
    sbc a
    ld l, [hl]
    inc d
    ld l, a
    ccf
    ld l, a
    rst $00
    ld l, a
    rra
    ld l, l
    ld d, e
    ld l, l
    ld [de], a
    ld l, [hl]
    dec hl
    ld l, [hl]
    ret


    ld a, $02
    call SetBGM
    call Call_000_3331
    ld a, $52
    call PlaySoundEffect
    ld hl, $ffb7
    call Call_006_6e4f
    ld hl, $ffbb
    call Call_006_6e4f
    ld hl, wMenu_selection
    ld bc, $0008
    ld a, $00
    call FillNBytesWithRegA
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
    ld [$c90b], a
    ld a, h
    ld [wCursorBlinkTimer], a
    ld hl, $0014
    ld b, $10

jr_006_6c25:
    push bc
    push hl
    ld b, $0c

jr_006_6c29:
    push bc
    push hl
    call Call_006_6e7f
    pop hl
    inc hl
    pop bc
    dec b
    jr nz, jr_006_6c29

    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop bc
    dec b
    jr nz, jr_006_6c25

    ld hl, $c905
    inc [hl]
    ld hl, $c100
    ld b, $80

jr_006_6c4a:
    ldh a, [$b7]
    ld [hl+], a
    dec b
    jr nz, jr_006_6c4a

    ld a, $1e
    ld [$c906], a
    ret


    ld a, [$c906]
    and $01
    ld [$c8ec], a
    ld a, [$c906]
    dec a
    ld [$c906], a
    ret nz

    ld hl, $c905
    inc [hl]
    ld a, $01
    ld [$c907], a
    di
    ld a, $02
    ldh [rLYC], a
    ld a, $02
    ld [$c892], a
    ei
    ret


    ld a, $01
    ld [$c8ec], a
    ld a, [$c8a6]
    and $07
    jr nz, jr_006_6ca3

    ld a, [$c907]
    swap a
    and $0f
    inc a
    ld b, a
    ld a, [$c907]
    add b
    ld [$c907], a
    cp $38
    jr c, jr_006_6ca3

    ld hl, $c905
    inc [hl]
    xor a
    ld [$c908], a

Call_006_6ca3:
Jump_006_6ca3:
jr_006_6ca3:
    ld a, [$c907]
    ldh [$d5], a
    ld a, [$c8a6]
    rra
    rra
    and $0f
    ld e, a
    ld d, $00
    ld a, [$c8a6]
    and $03
    cp $00
    jr nz, jr_006_6cc5

    ld bc, $c100
    ld a, $20
    ldh [$d6], a
    jp Jump_006_6ce8


jr_006_6cc5:
    cp $01
    jr nz, jr_006_6cd3

    ld bc, $c120
    ld a, $40
    ldh [$d6], a
    jp Jump_006_6ce8


jr_006_6cd3:
    cp $02
    jr nz, jr_006_6ce1

    ld bc, $c140
    ld a, $60
    ldh [$d6], a
    jp Jump_006_6ce8


jr_006_6ce1:
    ld bc, $c160
    ld a, $80
    ldh [$d6], a

Jump_006_6ce8:
jr_006_6ce8:
    inc e
    ld a, e
    and $0f
    ld e, a
    ld hl, $6d0f
    add hl, de
    push bc
    ld c, [hl]
    ldh a, [$d5]
    call Call_000_1dbe
    pop bc
    bit 3, e
    jr z, jr_006_6d02

    ldh a, [$b7]
    sub h
    jr jr_006_6d05

jr_006_6d02:
    ldh a, [$b7]
    add h

jr_006_6d05:
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ldh a, [$d6]
    cp c
    jr nz, jr_006_6ce8

    ret


    nop
    ld h, b
    or [hl]
    db $ec
    rst $38
    db $ec
    or [hl]
    ld h, b
    nop
    ld h, b
    or [hl]
    db $ec
    rst $38
    db $ec
    or [hl]
    ld h, b
    ld a, [$c8a6]
    and $0f
    jr nz, jr_006_6d3a

    ld a, [$c908]
    inc a
    ld [$c908], a
    cp $04
    jr nz, jr_006_6d3a

    ld hl, $c905
    inc [hl]
    ld a, $00
    ld [$c892], a

jr_006_6d3a:
    ld a, [$c908]
    ld hl, $6d4e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [wBGPalette], a
    call Call_006_6ca3
    ret


    jp nc, Jump_006_4081

    nop
    nop
    ld hl, $c905
    inc [hl]
    ld hl, $c88f
    inc [hl]
    ld a, $28
    ld [$c906], a
    ld a, $00
    ld [wBGPalette], a
    ld a, $00
    ld [wObj1Palette], a
    ld a, $00
    ld [wObj2Palette], a
    ld a, $01
    ld [$c8ec], a
    ld a, [$c96e]
    or a
    ret nz

    ld a, [$c96d]
    or a
    ret nz

    ld a, [$d92b]
    cp $01
    ret z

    cp $02
    ret z

    cp $03
    ret z

    cp $04
    ret z

    cp $05
    ret z

    ld a, $00
    ld [$c8ec], a
    ld hl, wGameState
    res 5, [hl]
    xor a
    ld [$c905], a
    di
    ld a, $7f
    ldh [rLYC], a
    ld a, $01
    ld [$c892], a
    ei
    ret


    ld a, $00
    ld [wBGPalette], a
    di
    ld a, $02
    ldh [rLYC], a
    ld a, $02
    ld [$c892], a
    ei
    ld hl, $c905
    inc [hl]
    ret


    ld a, [$c8a6]
    and $0f
    jr nz, jr_006_6dd5

    ld a, [$c908]
    dec a
    ld [$c908], a
    cp $00
    jr nz, jr_006_6dd5

    ld hl, $c905
    inc [hl]

jr_006_6dd5:
    ld a, [$c908]
    ld hl, $6d4e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [wBGPalette], a
    call Call_006_6ca3
    ret


    ld a, [$c8a6]
    and $07
    jr nz, jr_006_6e0f

    ld a, [$c907]
    swap a
    and $0f
    inc a
    ld b, a
    ld a, [$c907]
    sub b
    ld [$c907], a
    jr nc, jr_006_6e0f

    ld hl, $c905
    inc [hl]
    xor a
    ld [$c907], a
    ld a, $3c
    ld [$c906], a

jr_006_6e0f:
    jp Jump_006_6ca3


    di
    ld a, $7f
    ldh [rLYC], a
    ld a, $01
    ld [$c892], a
    ei
    ld a, [wInGateworld]
    or a
    jr z, jr_006_6e26

    xor a
    ldh [$90], a

jr_006_6e26:
    ld hl, $c905
    inc [hl]
    ret


    ld a, [$c850]
    or a
    ret nz

    ld a, [$c906]
    and $01
    ld [$c8ec], a
    ld a, [$c906]
    dec a
    ld [$c906], a
    ret nz

    ld a, $00
    ld [$c8ec], a
    xor a
    ld [$c905], a
    ld hl, wGameState
    res 5, [hl]
    ret


Call_006_6e4f:
    ld a, [hl]
    add $04
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl-], a
    ld a, [hl]
    and $f8
    ld [hl], a
    ret


Call_006_6e5c:
    push af
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
    pop af
    ret


Call_006_6e6b:
    ld a, [$c90b]
    add l
    ld l, a
    ld a, [wCursorBlinkTimer]
    adc h
    and $03
    ld h, a
    ld a, [wCursorBlinkTimer]
    and $fc
    or h
    ld h, a
    ret


Call_006_6e7f:
    call Call_006_6e88
    ld a, $e0
    call Write_gfx_tile
    ret


Call_006_6e88:
    push bc
    ld b, l
    ld a, l
    and $e0
    ld l, a
    call Call_006_6e6b
    ld a, b
    and $1f
    jr z, jr_006_6e9d

    ld b, a

jr_006_6e97:
    call Call_006_6e5c
    dec b
    jr nz, jr_006_6e97

jr_006_6e9d:
    pop bc
    ret


    ld a, $55
    call PlaySoundEffect
    ld hl, $ffb7
    call Call_006_6e4f
    ld hl, $ffbb
    call Call_006_6e4f
    ld hl, wMenu_selection
    ld bc, $0008
    ld a, $00
    call FillNBytesWithRegA
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
    ld [$c90b], a
    ld a, h
    ld [wCursorBlinkTimer], a
    ld hl, $0240
    ld b, $0e

jr_006_6ee0:
    push bc
    push hl
    ld b, $14

jr_006_6ee4:
    push bc
    push hl
    call Call_006_6e7f
    pop hl
    inc hl
    pop bc
    dec b
    jr nz, jr_006_6ee4

    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop bc
    dec b
    jr nz, jr_006_6ee0

    ld hl, $c905
    inc [hl]
    ld hl, $c100
    ld b, $80

jr_006_6f05:
    ldh a, [$bb]
    ld [hl+], a
    dec b
    jr nz, jr_006_6f05

    ld a, $1e
    ld [$c906], a
    call Call_006_7031
    ret


    ld a, [$c906]
    and $01
    ld [$c8ec], a
    ld a, [$c906]
    dec a
    ld [$c906], a
    ret nz

    ld hl, $c905
    inc [hl]
    ld hl, $0000
    ld a, l
    ld [$c907], a
    ld a, h
    ld [$c908], a
    di
    ld a, $02
    ldh [rLYC], a
    ld a, $03
    ld [$c892], a
    ei
    ret


    ldh a, [$bb]
    add $20
    ld [$c180], a
    ld [$c181], a
    ld [$c182], a
    ld [$c183], a
    ld a, $01
    ld [$c8ec], a
    ld hl, $0000
    ld de, $c140
    ld bc, $c140

jr_006_6f5d:
    ld a, h
    add e
    cp $7c
    jr c, jr_006_6f73

    ldh a, [$bb]
    add $98
    sub e
    ld [de], a
    inc de
    dec bc
    ldh a, [$bb]
    sub $08
    sub c
    ld [bc], a
    jr jr_006_6f87

jr_006_6f73:
    ld a, [$c907]
    add l
    ld l, a
    ld a, [$c908]
    adc h
    ld h, a
    ldh a, [$bb]
    add h
    ld [de], a
    inc de
    dec bc
    ldh a, [$bb]
    sub h
    ld [bc], a

jr_006_6f87:
    ld a, c
    or a
    jr nz, jr_006_6f5d

    ld a, [$c907]
    ld l, a
    ld a, [$c908]
    ld h, a
    ld a, h
    cp $20
    jr nc, jr_006_6fbe

    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    add $02
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [$c907]
    ld c, a
    ld a, [$c908]
    ld b, a
    add hl, bc
    ld a, l
    ld [$c907], a
    ld a, h
    ld [$c908], a
    ret


jr_006_6fbe:
    ld hl, $c905
    inc [hl]
    xor a
    ld [$c908], a
    ret


    ld hl, $0000
    ld a, [$c908]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_006_6e88
    ld b, $10

jr_006_6fd8:
    ld a, $e0
    call Write_gfx_tile
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_006_6fd8

    ld hl, $0013
    ld a, [$c908]
    ld b, a
    ld a, l
    sub b
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    call Call_006_6e88
    ld b, $10

jr_006_6ffb:
    ld a, $e0
    call Write_gfx_tile
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_006_6ffb

    ld hl, $c908
    inc [hl]
    ld a, [$c908]
    cp $0a
    ret nz

    ld hl, $c905
    inc [hl]
    xor a
    ld [$c908], a
    ldh a, [$bb]
    ldh [rSCY], a
    ld a, $ff
    ldh [$b6], a
    di
    ld a, $7f
    ldh [rLYC], a
    ld a, $01
    ld [$c892], a
    ei
    ret


Call_006_7031:
    ld a, $80
    ldh [$b6], a
    ld hl, $9c00
    push hl
    call Call_006_708a
    pop hl
    ld a, [$c81d]
    or a
    ret z

    di
    call Call_000_1aa6
    ld a, $01
    ldh [rVBK], a
    ei
    ld c, $02

jr_006_704d:
    ld b, $14
    push hl

jr_006_7050:
    ld a, $07
    call Write_gfx_tile
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
    jr nz, jr_006_7050

    pop hl
    ld a, e
    add $0c
    ld e, a
    ld a, d
    adc $00
    ld d, a
    push bc
    ld bc, $0020
    ld a, h
    add hl, bc
    and $fc
    ld b, a
    ld a, h
    and $03
    or b
    ld h, a
    pop bc
    dec c
    jr nz, jr_006_704d

    di
    call Call_000_1aa6
    ld a, $00
    ldh [rVBK], a
    ei
    ret


Call_006_708a:
    ld de, $c1c0
    ld c, $02

jr_006_708f:
    ld b, $14
    push hl

jr_006_7092:
    ld a, [de]
    call Write_gfx_tile
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
    jr nz, jr_006_7092

    pop hl
    ld a, e
    add $0c
    ld e, a
    ld a, d
    adc $00
    ld d, a
    push bc
    ld bc, $0020
    ld a, h
    add hl, bc
    and $fc
    ld b, a
    ld a, h
    and $03
    or b
    ld h, a
    pop bc
    dec c
    jr nz, jr_006_708f

    ret


    ld [$fe0f], sp
    ld d, [hl]
    ld [bc], a
    rra
    db $10
    ccf
    inc h
    ld a, a
    ld c, b
    ld a, a
    rst $38
    ld e, d
    ld a, a
    ld [hl-], a
    ld a, a
    inc d
    ccf
    dec c
    rra
    rst $38
    inc bc
    rlca
    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    rst $38
    inc de
    rst $38
    rra
    db $fc
    rra
    ldh a, [$1f]
    pop af
    rst $38
    rrca
    ld sp, hl
    rrca
    ld a, [$f90f]
    daa
    db $fc
    rst $38
    and a
    db $fc
    sub e
    cp $93
    cp $1f
    db $fc
    rst $18
    rst $30
    ei
    ld bc, $49ff
    adc a
    nop
    rst $38
    rst $38
    cp a
    ld a, [$fcaf]
    adc [hl]
    ld hl, sp+$08
    sbc d
    nop
    jr z, @+$01

    db $fc
    xor h
    cp $62
    cp $0a
    cp $46
    cp a
    db $fc
    and h
    ld hl, sp+$18
    and $e6
    db $fc
    add hl, sp
    ld c, $ff
    rrca
    dec bc
    inc c
    dec b
    ld c, $02
    rlca
    inc bc
    rst $38
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    dec b
    rlca
    dec b
    rst $38
    rlca
    rlca
    rlca
    inc e
    inc [hl]
    ccf
    ld a, a
    ld b, d
    rst $38
    ld a, a
    ld b, d
    rst $38
    and e
    rst $38
    sbc h
    cp $70
    rst $38
    ld hl, sp+$20
    ldh [$60], a
    or b
    ldh a, [rNR10]
    ldh [rIE], a
    ldh a, [$e0]
    and b
    db $fc
    cp $1a
    and $02
    rst $38
    cp $fe
    cp $0e
    ld a, [bc]
    ld a, [$f4f6]
    sbc a
    adc [hl]
    ld hl, sp-$44
    ret nz

    ldh [$38], a
    rrca
    ld [bc], a
    rla
    jr @+$01

    inc a
    dec h
    ld a, a
    ld c, [hl]
    ei
    adc a
    cp $bb
    rst $18
    adc $b1
    db $db
    ld h, b
    pop af
    ld [bc], a
    add hl, de
    ld c, $1a
    rst $38
    rra
    ccf
    ld hl, $213f
    ld a, a
    pop de
    rst $38
    rst $38
    adc $7f
    cp b
    ld a, h
    ld d, h
    xor [hl]
    jp c, $ff27

    xor a
    db $dd
    ld [hl], l
    rst $38
    inc bc
    ld b, $01
    inc bc
    ei
    nop
    ld bc, $1102
    rlca
    dec b
    db $fd
    ei
    ld a, d
    rst $18
    rst $00
    ld a, h
    sbc $e0
    ldh a, [rSC]
    ld de, $7c38
    rst $38
    ld [hl], h
    ld c, h
    db $f4
    call z, $7cc8
    sub b
    ld hl, sp-$05
    jr nz, @-$0e

    or $05
    ld h, b
    ldh a, [$90]
    ld hl, sp-$78
    rst $38
    db $fc
    and h
    sbc $b2
    rst $08
    ld e, c
    rst $20
    inc l
    sbc a
    ld [hl], e
    dec de
    inc a
    ld b, $0f
    ld b, [hl]
    db $10
    ld b, l
    ld b, $30
    rst $38
    ld a, b
    ld c, b
    ld a, b
    ld c, b
    ld a, h
    ld b, h
    ld a, h
    inc h
    rst $38
    ld a, h
    inc h
    ld a, $12
    cp [hl]
    adc d
    sbc $4a
    rst $38
    rst $28
    and l
    ld [hl], a
    push de
    cp a
    ld l, d
    rst $38
    ld d, $7f
    ccf
    dec bc
    rra
    dec b
    rrca
    ld [bc], a
    rlca
    ld [bc], a
    rra
    ld a, [$10b1]
    add b
    jp $c010


    ld b, b
    ret nz

    ld b, b
    ldh [$fb], a
    ldh [$f0], a
    ld l, [hl]
    ld [$1ff1], sp
    ld a, [c]
    dec c
    ld a, [$0ffb]
    ld hl, sp-$80
    dec b
    sbc a
    cp $21
    rst $38
    ld [c], a
    db $fd
    rst $38
    adc [hl]
    ld b, $0f
    db $fc
    adc [hl]
    ld sp, hl
    add hl, bc
    cp c
    rst $38
    ret


    reti


    ld l, c
    db $fd
    xor l
    rst $38
    ld h, e
    cp $ff
    dec bc
    db $fd
    rst $00
    cp $46
    ld hl, sp+$2c
    ldh a, [$fd]
    ld hl, sp-$3d
    nop
    rlca
    rlca
    inc c
    dec bc
    dec e
    ld a, a
    rst $38
    ld a, c
    xor a
    ret c

    ld a, a
    adc b
    rst $30
    inc c
    cp h
    rst $38
    ld b, a
    rst $08
    inc sp
    ld a, [hl]
    sbc l
    cp a
    sbc $77
    rst $38
    rst $18
    ld a, d
    ld d, a
    ld l, [hl]
    ld e, e
    dec a
    ld l, e
    db $10
    ld a, a
    ldh a, [rNR41]
    ld hl, sp-$68
    ld h, h
    call c, Call_000_34ae
    jr nz, @+$01

    ld [hl+], a
    call c, $b822
    ld b, h
    add $fa
    ld a, [hl]
    rst $38
    or d
    or $ca
    ld [$dc36], a
    db $ec
    ldh a, [rIE]
    ld e, b
    ldh [rSVBK], a
    add b
    ret nz

    ld [hl+], a
    ld a, a

Call_006_727e:
    ld [hl+], a
    ei
    ccf
    rra
    ld d, e
    nop
    rla
    ccf
    ld a, [hl+]
    ld [hl], l
    ld d, [hl]
    rst $38
    ld l, c
    dec a
    ld h, d
    rra
    jr c, jr_006_729f

    rra
    ld a, [de]
    rst $38
    scf
    inc [hl]
    ld l, $3f
    ld a, a
    ld b, e
    ld a, h
    ld b, b
    rst $38
    ld a, a
    ld a, a
    ld a, a

jr_006_729f:
    ld hl, sp-$78
    cp b
    call z, $fff4
    cp $8b
    rst $18
    ld c, e
    call $6dcb
    xor c
    rst $38
    ld l, [hl]
    jp hl


    ld l, $c9
    ld l, [hl]
    adc b
    rst $08
    dec bc
    rst $38
    inc c
    dec bc
    dec c
    adc e
    call z, $cf47
    ld b, b
    rst $38
    ret nz

    ret nz

    ret nz

    ld a, [de]
    dec a
    inc b
    ld b, $00
    ei
    nop
    cp $ed
    db $10
    adc a
    ld [hl], c
    rst $28
    sub l
    rst $38
    rst $20
    push hl
    sbc [hl]
    rst $18
    rst $00
    ld de, $208b
    ld b, b
    add b
    ret nz

    db $f4
    or c
    ld de, $210e
    inc b
    ld e, e
    nop
    ld a, b
    ld a, a
    xor a
    reti


    db $fc
    ld a, [de]
    cpl
    inc l
    inc hl
    nop
    db $fc
    nop
    cp $00
    cp $f8
    ld [hl], $21
    inc a
    cpl
    ld l, [hl]
    inc h
    rst $08
    ld b, l
    adc $c5
    ld h, [hl]
    rst $38
    and d
    ld h, a
    ld [c], a
    inc hl
    pop bc
    ld h, e
    add c
    pop bc
    ld hl, sp+$48
    ld de, $12c6
    adc e
    ld h, $80
    ret nz

    ldh [$f0], a
    sbc b
    rst $38
    db $fc
    call nz, Call_006_727e
    cp [hl]
    ld a, [hl-]
    adc $76
    ld a, a
    sbc [hl]
    db $ec
    or [hl]
    cp b
    call z, $f870
    or c
    inc de
    rst $38
    rra
    ccf
    cpl
    ld [hl], b
    ld e, a
    ld h, b
    ld a, a
    ret nz

    rst $38
    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $18
    cp b
    rst $38
    rst $38
    and c
    rst $28
    or b
    rst $38
    sbc b
    ld [hl], a
    ret z

    rst $38
    ld e, a
    ld h, b
    cpl
    ld [hl], b
    rra
    jr c, jr_006_7356

    dec e

jr_006_734c:
    rst $38
    ldh [$e0], a
    ret nc

    jr nc, @-$06

    ld [$24fc], sp
    cp a

jr_006_7356:
    db $fc
    ld d, h
    db $fc
    ld b, h
    db $fc
    add h
    ld e, d
    jr nc, jr_006_7373

    rst $38
    cp $d6
    rst $38
    ld sp, $05ff
    rst $38
    inc hl
    ccf
    cp $52
    db $fc
    inc c
    di

jr_006_736e:
    di
    ld l, [hl]
    ld b, $75
    ld [hl-], a

jr_006_7373:
    ld a, l
    rrca
    ld a, e
    ld [hl-], a
    daa
    rst $38
    and a
    rst $38
    sub e
    add l
    jr nc, jr_006_736e

    ld e, $ff
    ldh a, [$f8]
    adc [hl]
    ld b, $ff
    db $fc
    cp $be
    ld [c], a
    nop
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    and c
    ld sp, $f9f8
    db $fc
    ld d, [hl]
    inc de
    ld e, d
    db $10
    inc a
    inc a
    ld a, $06
    rrca
    db $fd
    ld a, c
    ld l, e
    jr nz, jr_006_73a5

    rlca
    ld [bc], a

jr_006_73a5:
    inc bc
    ld e, $1f
    rst $38
    dec e
    inc sp
    scf
    cpl
    inc [hl]
    inc l
    inc [hl]
    ld l, h
    rst $38
    ld [hl], h
    ld c, h
    ld [hl], h
    ld c, h
    ld h, h
    call c, $9ce4
    rst $08
    db $e4
    sbc h
    adc b
    db $fc
    ld h, $35
    db $db

jr_006_73c2:
    ccf
    ld bc, $fd03
    ld [bc], a
    rst $28
    jr nc, jr_006_734c

    jp $e342


jr_006_73cd:
    ld hl, $fef3
    ld a, d
    jr nc, jr_006_73cd

    rst $28
    ei
    ld a, [hl+]
    ld a, [hl]
    ld c, h
    ld a, [hl]
    rst $30
    ld c, b
    ld hl, sp-$78
    dec b
    nop
    sub b
    ld hl, sp+$60
    ldh a, [$df]
    ld c, $1f
    pop de
    rst $38
    jr nz, jr_006_745b

    nop
    adc d
    rst $38
    rst $38
    cp a
    rst $38
    jp hl


    rst $38
    cp e
    rst $08
    ld a, a
    adc e
    rst $38
    cp $07
    or h
    rst $08
    ld c, e
    rst $38
    dec a
    ld a, e
    pop af
    ld b, $91
    jr nz, jr_006_73c2

    ld d, $c3
    db $10
    cp h
    cp [hl]
    ld b, d
    ld a, a
    rst $38
    cp c
    rst $00
    pop bc
    ccf
    ld bc, $71ff
    rst $38
    ei
    adc l
    rst $18
    xor h
    dec d
    inc c

jr_006_741a:
    ld c, $0e
    ld c, $06
    ld a, a
    rrca
    dec sp
    ccf
    dec a
    ccf
    rlca
    rrca
    ldh a, [$31]
    db $f4
    cp [hl]
    dec a
    ld_long $ff3d, a
    ei
    jr nc, @-$6f

    ei
    ld a, d
    cp $fb
    inc c
    ld c, $6a
    rla
    adc c
    ei
    adc d
    ei
    ld c, d
    rst $38
    ld a, e
    jp z, Jump_006_4afb

    ei
    add hl, hl
    ei
    cpl
    sbc [hl]
    ei
    jr nc, jr_006_741a

    ei
    ld a, [hl-]
    ld a, [hl]
    add [hl]
    dec b
    ld c, $0b
    cp c
    rst $30
    rst $08
    ld a, c
    adc a
    jr nz, jr_006_7464

    ld b, d
    inc a

jr_006_745b:
    adc e
    ld b, [hl]
    rst $38
    dec b
    add e
    dec b
    add e
    ld c, l
    add e

jr_006_7464:
    add hl, sp
    rst $00
    rrca
    add e
    ld a, [hl]
    ld a, [hl]
    inc a
    db $dc, $3d, $18
    adc b
    inc bc
    rlca
    rra
    ccf
    dec a
    inc hl
    ccf
    ccf
    inc d
    adc h
    jr jr_006_74b3

    jr c, @+$6a

    add sp, -$28
    ret nc

    cp b
    ldh [$f0], a
    nop
    add b
    rst $38
    and [hl]
    ld bc, $6000
    add b
    add d
    ld a, h
    dec b
    ld [bc], a
    jr nz, jr_006_74b0

    ld d, d
    ld hl, $4021
    ld hl, $8440
    ld a, e
    ld b, c
    ld [hl-], a
    jr nz, jr_006_74b0

    add d
    ld a, h
    ret nc

    jr nz, jr_006_74aa

    ldh a, [$32]
    call z, Call_006_6398
    adc l
    ld [bc], a
    ld b, b

jr_006_74aa:
    inc a
    jr nz, @-$3e

    ld b, $84
    adc b

jr_006_74b0:
    ld [hl], b
    inc d
    adc b

jr_006_74b3:
    inc b
    adc h
    adc b
    ld [hl], b
    ld [hl], d
    adc h
    ld a, l
    add d
    cp [hl]
    ld b, c
    ld b, [hl]
    add hl, sp
    dec bc
    inc b
    rst $38
    inc b
    ld b, h
    rrca
    ld b, h
    ldh a, [rLY]
    rrca
    ld a, a
    ld b, h
    ldh a, [$0c]
    rst $38
    ret nc

    ld [bc], a
    db $fd
    nop
    xor $36
    inc bc
    rlca
    rlca
    dec b
    dec b
    rrca
    rst $38
    ld c, $0b
    ld a, [bc]
    ld e, $1c
    ld d, $14
    inc a
    rst $38
    jr c, @+$2e

    jr z, jr_006_7560

    ld [hl], b
    ld e, b
    ld d, b
    ldh a, [$fe]
    xor $33
    ld bc, $0f03
    ld e, $7e
    pop af
    rst $30
    ld a, a
    adc a
    cp $ff
    db $10
    rra
    rra
    rra
    xor $37
    rst $38
    nop
    nop
    ld b, d
    db $e3
    ld hl, $50f1
    cp b
    rst $38
    ld hl, sp-$08
    cp $06
    rst $30
    ld sp, hl
    db $fd
    cp $ff
    ld c, $ff
    inc bc
    rst $38
    db $e3
    rst $38
    ld de, $ff3f
    add hl, bc
    rra
    inc b
    rrca
    ld c, $1f
    rla
    dec a
    rst $38
    dec b
    rra
    db $fd
    ld [hl], d
    ld [hl], a
    cp b
    rst $38
    cp b
    rst $38
    cp $a9
    cp l
    jp Jump_006_7f7f


    adc l
    sbc a
    rst $38
    add $4d
    rst $38
    ld a, a
    ld a, a
    and b
    ldh [$bf], a
    rst $38
    or b
    rst $18
    rst $38
    rst $18
    ld e, a
    ldh [$7f], a
    rst $38
    rst $38
    dec sp
    db $fd
    ld l, l
    di
    sbc [hl]
    rst $38
    adc b
    db $fc
    rst $38
    or h
    db $fc
    call nz, $7afe
    cp $2e
    di
    rst $38
    sub l
    ei
    rst $38
    rst $38
    xor c

jr_006_7560:
    ld d, a
    ld d, e
    cp $ff
    ld d, [hl]
    db $fd
    db $fd
    ei
    ei
    rlca
    cp $ff
    rst $18
    ld l, h
    or a
    add e
    jp nz, $f902

    ld [hl-], a
    rrca
    rra
    rst $38
    rra
    jr nc, jr_006_75b1

    ld l, a
    ld l, a
    rst $18
    ret c

    cp a
    rst $38
    or b
    ld a, a
    ld h, b

jr_006_7583:
    rst $38
    rst $00
    rst $38
    add h
    db $fc
    rst $38
    inc e
    cp $3a
    rst $28

jr_006_758d:
    jr z, jr_006_758d

    add b
    ret nz

    rst $38
    add b
    add b
    nop
    add b
    nop
    nop
    db $fc
    cp $ff
    cp $02
    cp $fe
    ldh [$f0], a
    jr nz, jr_006_7583

    rst $08
    ld b, b
    ldh [$80], a
    ret nz

    or d
    ld bc, $33ee
    or c
    rst $38
    rst $08
    rst $28
    rst $38

jr_006_75b1:
    nop
    ld bc, $0922
    call c, $b60b
    rst $38
    rst $08
    ld l, l
    or [hl]
    db $db
    rst $38
    call c, $ee0f
    dec [hl]
    db $fd
    ld [de], a
    rst $38
    ld [hl], a
    adc b
    rst $38
    ldh [rNR21], a
    add hl, de
    dec c
    dec bc
    rst $28
    rlca
    rlca
    add l
    add a
    ld e, h
    rrca
    db $fc
    rst $38
    di
    rst $38
    db $fc
    rst $28
    ldh a, [$dd]
    db $e3
    cp e
    rst $00
    cp e
    rst $20
    rst $00
    ld a, e
    add a
    ld a, [hl-]
    inc de
    ld [hl], $11
    db $dd
    db $e3
    rst $28
    rst $18
    ldh a, [$f3]
    db $fc
    db $fc
    rst $38
    ld l, $13
    rst $18
    ldh [rIE], a
    cp a
    ret nz

    cp [hl]
    pop bc
    ld a, l
    add e
    ld a, e
    add a
    rst $38
    ld [hl], a
    adc a
    ld a, a
    adc a
    cp a
    rst $08
    cp [hl]
    rst $00
    ei
    rst $18
    ldh [rOBP0], a
    dec e
    or b
    rst $08
    ld l, a
    sbc a
    ld a, a
    ld a, [hl]
    ld a, e
    db $10
    ld l, a
    sbc a
    or b
    rst $08
    cp a
    ret nz

    ld h, [hl]
    dec d
    inc [hl]
    adc l
    dec e
    db $fc
    inc c
    add b
    or [hl]
    nop
    cp $ff
    or b
    db $10
    adc l
    dec d
    di
    db $f4
    ld hl, sp-$4c
    rla
    sbc d
    inc de
    add b
    nop
    and b
    ret nz

    rst $08
    add sp, -$10
    ld hl, sp-$04
    or [hl]
    nop
    adc l
    db $10
    add b
    ret nz

    cp a
    ret nz

    ldh [$e0], a
    ldh a, [$f8]
    ldh a, [$d5]
    db $10
    ld hl, sp-$11
    ld hl, sp-$04
    cp $fc
    ld [de], a
    nop
    nop
    dec b
    inc bc
    rst $38
    rla
    rrca
    rra
    ccf
    ccf
    ld a, [hl]
    ld a, e
    db $fc
    rst $18
    ei
    pop af
    cpl
    rra
    ld a, a
    adc l
    ld [de], a
    cp a
    rst $38
    ld l, l
    rst $38
    nop
    ld [hl+], a
    ld bc, $f803
    jr nc, jr_006_767f

    rra
    sub l
    nop
    rst $38
    ccf
    ld e, $1e
    inc a
    ld a, [hl]
    inc a
    rst $30
    db $e3
    rst $38
    rst $28
    rst $00

jr_006_767f:
    db $dd
    adc [hl]
    sbc l
    add hl, de
    dec de
    inc bc
    ccf
    ld b, a
    inc bc
    db $ec
    ld b, [hl]
    ret z

    add l
    rlca
    inc h
    adc l
    ld de, $00fe
    ld [hl+], a
    inc a
    ld a, c
    ld a, c
    ld a, e
    rst $38
    ld a, e
    ld [hl], e
    rst $28
    rst $30
    rst $38
    rst $30
    rst $30
    adc l
    ld [de], a
    sub e
    add c
    dec e
    rst $20
    cp b
    cp e
    db $76
    cpl
    daa
    xor $19
    ld a, d
    db $fc
    pop af
    db $fd
    ld hl, sp-$02
    inc de
    ei
    rst $30
    rst $18
    adc a
    ccf
    ccf
    ld a, [$2000]
    rst $20
    ld c, $2a
    ccf
    ld a, l
    ccf
    di
    pop hl
    rst $38
    pop bc
    ldh [$d0], a
    adc h
    inc a
    sbc b
    ld sp, hl
    jr nc, @+$01

    di
    ld h, c
    jp hl


    pop bc
    call c, $dfc8
    adc a
    rst $10
    cp a
    ccf
    ld a, a
    nop
    ld [hl+], a
    rst $18
    and b
    ld [hl+], a
    jp c, $01b8

    cp [hl]
    ld c, b
    inc hl
    adc l
    inc d
    add b
    ld bc, $00ff
    ld bc, $1f0f
    ld [hl], l
    ei
    rst $38
    add e
    rst $18
    ld a, d
    ld [hl], a
    inc c
    ld e, $00
    ld a, [$003f]
    rst $18
    rst $38
    cp h
    db $ed
    sbc $bf
    ld l, [hl]
    ccf
    ld_long $ffef, a
    ldh a, [$1f]
    ccf
    dec b
    rrca
    dec b
    rlca
    ccf
    rst $38
    ld a, a
    ld a, a
    ld b, b
    ld a, a
    ld a, a
    jr nc, @+$81

    dec de
    rst $38
    ccf
    ld c, $1d
    ld b, $0d
    inc bc
    inc bc
    ld a, e
    rst $38
    sbc h
    rst $20
    ccf
    db $e3
    ccf
    and l
    ld a, a
    ld a, c
    rst $38
    rst $38
    db $d3
    cp $6f
    cp l
    xor $bb
    db $fc
    rst $38
    rst $30
    ld hl, sp+$0f
    ldh a, [rIE]
    rlca
    rst $38
    ld c, $ff
    ld sp, hl
    sbc b
    rst $30
    ld hl, sp-$09
    rst $38
    rst $38
    cp $df
    rst $38
    ld a, l
    add e
    add e
    ld a, a
    ld d, d
    ld bc, $ff03
    cp $58
    rlca
    add e
    rst $38
    rst $00
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    cp $f8
    db $fc
    dec b
    rlca
    inc bc
    rlca
    ld b, $fd
    dec b
    ld [hl], b
    rrca
    inc c
    rra
    dec [hl]
    ld a, d
    ld e, e
    ld h, h
    ld a, a
    ld a, a
    ld a, a
    ret nc

    ld [hl], b
    ldh [$f0], a
    or b
    adc a
    rrca
    rst $38
    ldh a, [$b0]
    ld hl, sp-$24
    ld a, [hl]
    xor $3e
    cp $ff
    cp $ff
    add h
    db $dd
    ld [c], a
    cp a
    ld a, b
    dec b
    rlca
    cp $fb
    cp $1a
    ld bc, $0f1c
    ld l, [hl]
    rrca
    add h
    rlca
    db $fc
    ld sp, $8ef8
    rrca
    and h
    rlca
    db $fc
    ld sp, $772a
    dec e
    scf
    inc d
    rst $20
    inc e
    ld [$fc08], sp
    ccf
    inc e
    inc de
    ld e, l
    ld [hl], a
    ld a, $ff
    ld a, a
    rrca
    rra
    ld e, $39
    dec sp
    daa
    rra
    rst $38
    ccf
    rlca
    ld c, $0e
    add hl, bc
    rlca
    rrca
    nop
    db $ed
    ld bc, $1141
    nop
    ld bc, $181c
    add b
    add b
    add b
    rst $38
    nop
    add b
    ret nz

jr_006_77cd:
    ret nz

    and b
    ld h, b
    ldh a, [$f0]
    rst $38
    ld a, [$dfdf]
    or l
    cp l
    ld [hl], a
    rst $30
    ld l, l
    rst $38
    cp l
    rst $28
    rla
    ccf
    ld [bc], a
    rlca
    nop
    nop
    sbc h
    jr nc, jr_006_785f

    ld e, b
    ld a, h
    db $76
    rst $18
    cp l
    db $d3
    sub $be
    jr c, jr_006_77cd

    ld a, h
    sbc h
    db $f4
    sbc h
    ld a, b
    call c, $ffb6
    db $dd
    di
    db $76
    cp $78
    ld a, b
    jr nc, @+$7a

    inc b
    add c
    cp $49
    rst $38
    or d
    rst $30
    rrca
    rst $38
    nop
    cp $3f
    db $fd
    ld b, d
    db $fd
    sub d
    db $fd
    cp d
    ld a, l
    sub d
    cp e
    ld b, h
    ld b, a
    cp b
    cp a
    ld b, b
    rst $08
    or b
    ld e, l
    ld [hl], a
    ld a, $7f
    dec [hl]
    dec hl
    rra
    ccf
    ld a, [de]
    dec d
    rrca
    rra
    dec c
    ld a, [bc]
    rlca
    rrca
    ld b, $05
    inc bc
    rlca
    inc c
    rra
    dec [hl]
    ld a, d
    ld e, e
    ld h, h
    ld a, a
    ld a, a
    dec bc
    ld b, h
    add b
    sub c
    ret nz

    ld b, b
    ret nz

    ret nz

    ldh [$a0], a
    ld h, b
    ldh [$f0], a
    or b
    ld hl, sp-$24
    ld a, [hl]
    xor $3e
    cp $fe
    inc c
    ld b, d
    ld bc, $0092
    ld bc, $0203
    ld bc, $0603
    dec b
    inc bc
    rlca
    inc c
    rra
    dec [hl]

jr_006_785f:
    ld a, d
    ld e, e
    ld h, h
    ld a, a
    ld a, a
    inc b
    sbc h
    ld e, l
    ld [hl], a
    ld a, $7f
    sub $ae
    ld a, h
    cp $ac
    ld e, h
    ld hl, sp-$04
    ld e, b
    cp b
    ldh a, [$f8]
    or b
    ld [hl], b
    ldh [$f0], a
    or b
    ld hl, sp-$24
    ld a, [hl]
    xor $3e
    cp $fe
    inc b
    and e
    ld [bc], a
    ld h, a
    scf
    ccf
    rra
    ccf
    ccf
    ld a, a
    ld [hl], e
    rst $38
    db $ed
    ld a, [c]
    ld a, $29
    ccf
    add hl, hl
    ccf
    ld hl, $5f6f
    rst $38
    sub c
    push af
    sbc d
    rst $38
    adc [hl]

jr_006_789e:
    cp a
    ret z

    ld e, a
    ld h, l
    scf
    dec sp
    jr nc, @+$7a

    ld a, l
    ld b, l
    rst $38
    and d
    add e
    rst $38
    ld a, l
    add e
    cp $01
    rst $30
    add hl, de
    rst $30
    add hl, de
    rst $38
    ld bc, $01ff
    rst $38
    add d
    rst $38
    ld a, h
    ld a, a
    add b
    cp a
    ld b, b
    rst $18
    and b
    jr nc, @+$72

    ldh [$f0], a
    ldh [$e0], a
    db $ec
    cp $f8
    db $fc
    ld b, e
    ld hl, sp-$4d
    ld sp, hl
    cp c
    ld a, a
    rst $38
    ccf
    cp [hl]
    ld a, a
    cp $7e
    ld a, d
    rst $20
    rst $38
    db $db
    rst $28
    inc sp

jr_006_78de:
    cp $23
    db $db
    daa
    jp c, $ffbd

    sbc h
    db $fd
    ld e, [hl]
    ld a, a
    sbc $ff
    sbc $7b
    sbc $f3
    cp [hl]
    db $e3
    cp [hl]
    db $e3
    cp [hl]
    ld a, [hl]
    push de
    ld a, l

jr_006_78f7:
    ld h, e
    ld a, $7f
    dec de
    ccf
    ld c, $1d
    ld b, $0d
    inc bc
    inc bc
    rst $38
    and b
    inc bc
    ld b, e
    ld de, $1040
    jr z, jr_006_791c

    ld [hl+], a
    jr nz, jr_006_789e

    inc b
    dec bc
    ld b, b
    or e
    ld l, a
    sbc $0b
    ld d, $86
    ld [de], a
    ld a, [bc]
    dec b
    nop
    ld [bc], a

jr_006_791c:
    nop
    ld [$1200], sp
    ld b, h
    add h
    nop
    nop
    ld b, e
    ld bc, $4096
    inc h
    ld a, [bc]
    inc b

jr_006_792b:
    ld bc, $b8dc
    or h
    ldh a, [$e0]
    nop
    add b
    jr nz, jr_006_78f7

    ld h, $05
    ld a, [bc]
    ld d, l
    xor e
    ld c, d
    ld [de], a
    ld bc, $be03
    ret nz

    jr nz, jr_006_7952

    adc b
    nop
    ld b, $1c
    jr nz, jr_006_794c

    ld a, [c]
    jr c, jr_006_792b

    adc h

jr_006_794c:
    jr nz, jr_006_78de

    ld [$0022], sp
    ld [bc], a

jr_006_7952:
    dec b
    ld d, d
    ld e, c
    adc b
    inc b
    ld b, b
    xor c
    ld b, h
    ld b, e
    inc b
    inc h
    ld a, [hl-]
    ld [hl-], a
    cp h
    ld a, b
    db $fc
    db $fc
    jp nz, $9004

    ld d, b
    xor b
    nop
    ld [bc], a
    ld bc, $040a
    ld a, [bc]
    inc d
    ld c, d
    dec a
    xor [hl]
    rla
    dec h
    ret c

    ld h, d
    add hl, sp
    ld a, a
    rra
    cp a
    rra
    cp $ff
    ld b, c
    adc $85
    add a
    adc c
    di
    ret nz

    pop hl
    ld a, a
    and b
    ld [$c838], sp
    dec hl
    inc c
    db $10
    jr nz, jr_006_79d0

    ret nz

    ld h, b
    ld hl, sp+$04
    ccf
    ld c, h
    sub b
    ld hl, $0804
    ld a, b
    adc h
    inc b
    add d
    add e
    ld bc, $2720
    jr c, @+$23

    ld [hl+], a
    ld b, b
    add b
    nop
    ld b, e
    ld b, d
    sub l
    ld hl, $2418
    ld [hl+], a
    ld a, $23
    ld b, h
    ld c, b
    ld [$0817], sp
    db $10
    sbc a
    ld bc, $0201
    inc b
    adc b
    ld d, b
    jr nc, @-$1e

    rlca
    cp [hl]
    ld b, b
    ld hl, $0313
    nop
    ld hl, sp+$0c
    ld b, $1e
    ld a, b
    db $10
    ld [$01c7], sp
    ld [bc], a

jr_006_79d0:
    nop
    nop
    jr nz, jr_006_79f4

    ld [hl], b
    add b
    jr c, jr_006_7a1c

    add e
    add c
    ld h, b
    ld [hl], b
    ld [hl], b
    ld a, b
    ld a, b
    db $fc
    db $fc
    cp $3c
    ld hl, sp+$60
    jr nz, jr_006_79f7

    rst $28
    ld bc, $0100
    inc bc
    inc b
    ld [$fe3c], sp
    rra
    adc a
    ret nz

    pop hl

jr_006_79f4:
    ld sp, hl
    ld a, a
    ccf

jr_006_79f7:
    ccf
    rra
    sbc a
    cp $fe
    rst $20
    jp Jump_006_41c3


    pop bc
    add d
    pop hl
    ldh [rIE], a
    add hl, bc
    add a
    rrca
    jr jr_006_7a41

    ld l, a
    ld e, [hl]
    ld e, l
    ld e, e
    add hl, bc
    add a
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld d, b
    ld e, d
    ld a, a
    add hl, bc
    add a

jr_006_7a1c:
    rlca
    rrca
    jr jr_006_7a50

    ld h, c
    ld h, e
    ld h, [hl]
    add hl, bc
    ld b, d
    rst $38
    ld [bc], a
    ld b, d
    rst $38
    add c
    nop
    ld d, b
    ld h, [hl]
    rst $38
    rst $38
    nop
    rrca
    rrca
    rrca
    rra
    rra
    rra
    ccf
    db $db
    nop
    rst $38
    ld sp, hl
    inc de
    nop
    ldh [rSB], a
    nop
    ret nz

jr_006_7a41:
    ret nz

    ei
    ret nz

    nop
    ld [$0101], sp
    rlca
    ccf
    ccf
    ccf
    ei
    ld a, a
    ld a, a
    ld sp, hl

jr_006_7a50:
    inc d
    rst $38
    cp $fc
    ldh a, [$c0]
    di
    add b
    add b
    ld [$0802], sp
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    dec a
    rra
    inc de
    ld [$f8fc], sp
    ld hl, sp-$04
    rlca
    inc bc
    ld [$ed00], sp
    inc bc
    dec l
    ld bc, $0007
    ld hl, sp+$14
    nop
    nop
    db $fc
    and $3c
    ld bc, $07f8
    pop af
    inc de
    ld hl, sp+$16
    ldh a, [$f0]
    ldh a, [$a8]
    ld bc, $2501
    dec b
    pop af
    ld [de], a
    ccf
    inc de
    rlca
    ld hl, sp+$71
    ld bc, $e6c0
    ld hl, $0301
    rrca
    add e
    nop
    inc de
    ld b, $ff
    rst $38
    ld hl, sp+$58
    sub e
    nop
    ld hl, $2100
    ld b, $01
    ld bc, $002c
    inc bc
    ld hl, sp+$16
    ei
    cp $fe
    dec sp
    nop
    db $fc
    db $fc
    nop
    nop
    rra
    rst $38
    ld e, $1e
    inc a
    dec a
    ccf
    ccf
    nop
    rra
    ld a, a
    ld a, $7c
    ld hl, sp-$0f
    pop hl
    jp $3100


    nop
    rst $38
    di
    pop hl
    pop hl
    pop bc
    nop
    add e
    jp $ffc3


    rst $20
    rst $20
    rst $20
    rst $28
    nop
    pop hl
    pop hl
    pop hl
    rst $28
    db $e3
    di
    di
    ld [hl], a
    nop
    nop
    pop hl
    pop bc
    jp $c77b


    add a
    rst $00
    ld bc, $dede
    sbc [hl]
    sbc [hl]
    ldh a, [rNR10]
    cp $f4
    db $10
    dec a
    dec a
    nop
    pop bc
    jp $c7c3


    rst $30
    rst $00
    rst $08
    adc $59
    ld [bc], a
    ld a, b
    ld a, c
    ld a, c
    nop
    ei
    ld a, b
    ld a, b
    ld [hl], b
    ld [bc], a
    ld a, a
    ld a, e
    ld a, e
    ld sp, hl
    pop af
    ld a, e
    ldh a, [$f0]
    add sp, $01
    db $e3
    pop hl
    pop af
    ldh a, [rNR10]
    ld de, $e77f
    rst $38
    rst $38
    db $fc
    nop
    rst $28
    rst $08
    dec b
    db $10
    rst $38
    inc a
    inc a
    nop
    ld [hl], a
    ld [hl], a
    ld a, a
    ccf
    ccf
    ld a, a
    ld a, $3e
    nop
    adc a
    sbc a
    rra
    ccf
    ld hl, $fb10
    nop
    ld e, $c8
    nop
    ld e, $1e
    ld e, $00
    dec a
    rst $38
    ld a, c
    ld a, c
    ld a, c
    pop af
    pop af
    pop af
    nop
    sbc $ef
    call c, $f8fc
    ld sp, hl
    ld h, l
    db $10
    pop af
    di
    di
    dec d
    di
    db $ec
    nop
    nop
    inc b
    ld bc, $2080
    nop
    ld hl, $7a2e
    call Call_000_2280
    call Call_000_1e96
    ld de, $0020
    call Call_000_1e65
    ld hl, $7bab
    call Call_000_1df3
    ld de, $9400
    ld hl, $d800
    ld bc, $0058
    call Call_006_7b9c
    ld bc, $0018
    call Call_006_7b8d
    ld bc, $0018
    call Call_006_7b9c
    ld bc, $0108

Call_006_7b8d:
jr_006_7b8d:
    xor a
    call $04a7
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_006_7b8d

    ret


Call_006_7b9c:
jr_006_7b9c:
    ld a, [hl+]
    call $04a7
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_006_7b9c

    ret


    and h
    sbc b
    add e
    ld b, b
    ld b, c
    ld b, d
    ld a, a
    jp $8498


    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld a, a
    pop hl
    sbc b
    sub e
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    cpl
    ld a, a
    ld bc, $9299
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld a, a
    inc hl
    sbc c
    add h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld a, a
    ld b, d
    sbc c
    add e
    ld e, c
    ld e, d
    ld e, e
    rst $38
    ld a, [$c981]
    rst $00
    inc bc
    ld d, $49
    ld a, h
    db $fc
    dec d
    ld h, a
    ld a, h
    ld a, h
    ld a, h
    adc d
    ld a, h
    sbc b
    ld a, h
    and e
    ld a, h
    xor [hl]
    ld a, h
    cp c
    ld a, h
    db $fc
    dec d
    call nz, $fc7c
    dec d
    ret c

    ld a, h
    jp hl


    ld a, h

Call_006_7c18:
    pop de
    ld hl, $c991
    ld a, [$c982]
    and $03
    ret nz

    inc [hl]
    ld a, [hl]
    push de
    ret


Call_006_7c26:
    call $1670
    call Call_000_1659
    jp Jump_000_2184


    ld a, $4e
    call $0510
    call Call_006_7c26
    ld hl, $7cff
    jp Jump_006_7c54


    call Call_006_7c18
    cp $00
    ret nz

    ld hl, $7cff
    jp Jump_006_7c76


    ld a, $63
    call $0510
    call Call_006_7c26
    ld hl, $7d06

Jump_006_7c54:
    ld a, $f0

Jump_006_7c56:
    ld [$c991], a
    ld bc, $1a00
    call $1196
    call $091e
    ld a, $c0
    jp Jump_000_15f4


    call Call_006_7c18
    cp $40
    ret nz

    ld bc, $1800
    call $1196
    ld hl, $7d06

Jump_006_7c76:
    call Call_000_091a
    jp $15f7


    ld hl, $7d18

jr_006_7c7f:
    ld a, $30
    ld [$c991], a
    call $091e
    jp $15f7


    call Call_006_7c18
    cp $f0
    ret nz

    ld hl, $7d18

jr_006_7c93:
    call Call_000_091a
    jr jr_006_7c7f

    call Call_006_7c18
    cp $b0
    ret nz

    ld hl, $7d47
    jr jr_006_7c93

    call Call_006_7c18
    cp $c0
    ret nz

    ld hl, $7d65
    jr jr_006_7c93

    call Call_006_7c18
    cp $f0
    ret nz

    ld hl, $7d8e
    jr jr_006_7c93

    call Call_006_7c18
    cp $78
    ret nz

    ld a, $40
    jp Jump_000_15f4


    call Call_006_7c18
    cp $b0
    ret nz

    ld hl, $7dc4
    call Call_000_091a
    ld a, $00
    ld hl, $7d0e
    jp Jump_006_7c56


    ld hl, $c991
    ld a, [$c982]
    and $03
    ret nz

    dec [hl]
    ld a, [hl]
    cp $f0
    ret nz

    jp $15f7


    ld a, [$c987]
    and $90
    ret z

    ld a, $01
    ld [$c9a7], a
    ld hl, $7d0e
    call Call_000_091a
    ld a, $04
    jp Jump_000_15e6


    add sp, -$65
    xor h
    and d
    or l
    xor b
    rst $38
    rst $20
    sbc e
    or l
    xor b
    and d
    xor [hl]
    xor [hl]
    rst $38
    and $9b
    xor b
    or b
    and h
    sub b
    and h
    or e
    xor l
    rst $38
    ld [bc], a
    sbc d
    and b
    and l
    and [hl]
    xor a
    and l
    and d
    xor d
    xor d
    and h
    and l
    cp $86
    sbc d
    xor b
    cp d
    or b
    and d
    xor a
    xor c
    or b
    and d
    and l
    and d
    cp $e6
    sbc d
    and e
    cp d
    or b
    and d
    and e
    and d
    or e
    and [hl]
    cp $46
    sbc e
    or d
    cp d
    xor d
    xor c
    and a
    and l
    and d
    rst $38
    ld [bc], a
    sbc d
    xor a
    and l
    and d
    and b
    or b
    xor c
    xor h
    sub b
    xor l
    and h
    or l
    xor c
    xor a
    or e
    and h
    and l
    cp $86
    sbc d
    or d
    cp d
    or d
    xor c
    xor d
    and a
    and l
    and d
    rst $38
    ld [bc], a
    sbc d
    or l
    and [hl]
    and a
    or e
    xor l
    sub b
    xor h
    and l
    and h
    and d
    xor b
    and [hl]
    and l
    cp $86
    sbc d
    or b
    cp d
    xor [hl]
    and a
    or e
    and d
    and a
    xor h
    or b
    xor c
    cp $e6
    sbc d
    xor d
    cp d
    or l
    or b
    xor c
    or e
    xor l
    and [hl]
    and a
    rst $38
    ld [bc], a
    sbc d
    or l
    and b
    and h
    xor h
    xor c
    and d
    and c
    sub b
    xor b
    or b
    and d
    or e
    or d
    or l
    cp $86
    sbc d
    or b
    cp d
    xor [hl]
    and a
    or e
    and d
    xor e
    xor c
    or d
    xor c
    cp $e6
    sbc d
    xor b
    and h
    xor l
    sub b
    or b
    xor c
    or d
    and d
    or a
    and d
    cp $46
    sbc e
    and d
    cp d
    xor b
    and [hl]
    and e
    and d
    xor d
    and d
    rst $38
    inc b
    sbc d
    and b
    and l
    and h
    or l
    and h
    or e
    xor b
    and h
    xor l
    sub b
    xor e
    and e
    cp $47
    sbc d
    or d
    and [hl]
    or e
    and d
    xor d
    xor c
    rst $38
    call Call_000_1398
    ld a, $01
    ld [$c9c1], a
    ld a, $00
    ld [$c9c2], a
    call Call_000_1659
    call $2121
    ld hl, $49f6
    ld de, $99c0
    call Call_000_1340
    ld bc, $9800
    ld de, $9a0b
    ld h, $08
    call Call_006_7ef8
    ld bc, $984a
    ld de, $9a16
    ld h, $0a
    call Call_006_7ef8
    ld hl, $492e
    ld de, $9960
    call Call_000_1340
    ld bc, $9808
    ld de, $9973
    call Call_006_7ed2
    ld bc, $9848
    ld de, $9993
    call Call_006_7ed2
    ld bc, $9849
    ld de, $9960
    call Call_006_7ed2
    ld bc, $9889
    ld de, $9980
    call Call_006_7ed2
    ld bc, $98ca
    ld hl, $7f0e
    call Call_000_0aea
    ld c, $d2
    call Call_000_0aea
    ld c, $cf
    call $0af8
    ld c, $ec
    call $0af8
    ld bc, $98f1
    call Call_000_0aea
    ld bc, $0450
    call Call_000_1193
    jp $15f7


    call Call_000_1398
    ld a, $01
    ld [$c9c1], a
    ld a, $00
    ld [$c9c2], a
    call Call_000_1659
    call Call_000_1380
    ld hl, $492e
    ld de, $9821
    call Call_000_1340
    ld bc, $9801
    ld de, $9821
    ld h, $06
    call Call_006_7ed8
    ld bc, $9807
    ld de, $9834
    call Call_006_7ed2
    ld bc, $9847
    ld de, $9854
    call Call_006_7ed2
    ld bc, $9828
    ld de, $1907
    call $0b0c
    call Call_000_0b3c
    ld bc, $9941
    ld de, $9801
    call Call_006_7ed6
    ld bc, $9961
    ld de, $9861
    call Call_006_7ed6
    ld b, $80
    call $2043
    ld d, $c0
    ld a, $01
    rst $20
    inc d
    ld a, $09
    rst $20
    ld hl, $cde0
    ld [hl], $e7
    inc l
    ld [hl], $7e
    jp $15f7


Call_006_7ed2:
    ld h, $01
    jr jr_006_7ed8

Call_006_7ed6:
    ld h, $07

Call_006_7ed8:
jr_006_7ed8:
    ld l, $06

jr_006_7eda:
    push bc
    push de
    push hl

jr_006_7edd:
    call $04a7
    ld a, [de]
    ld [bc], a
    inc e
    inc c
    dec h
    jr nz, jr_006_7edd

    ld a, l
    pop hl
    ld l, a
    pop de
    pop bc
    ld a, $20
    call Call_000_1640
    ld a, $20
    rst $18
    dec l
    jr nz, jr_006_7eda

    ret


Call_006_7ef8:
    call Call_006_7efe
    call Call_006_7ed8

Call_006_7efe:
    push bc
    push hl
    ld a, $df

jr_006_7f02:
    call Call_000_0b59
    dec h
    jr nz, jr_006_7f02

    pop hl
    pop bc
    ld a, $20
    rst $18
    ret


    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld l, l
    ld l, [hl]
    ld l, e
    ld l, h
    ld h, [hl]
    ld l, c
    ld h, h
    ld h, l
    ld l, d
    ld l, e
    ld d, c
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_006_7f7f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $06
