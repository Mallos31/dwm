; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    inc bc
    inc de
    ld b, b
    ccf
    ld b, h
    add b
    ld l, c
    and d
    ld l, c
    inc h
    ld l, [hl]
    ld h, b
    ld [hl], c
    sub b
    ld [hl], c
    or [hl]
    ld [hl], c
    inc [hl]
    ld [hl], c
    ld a, [$c864]
    bit 7, a
    jr z, jr_003_4020

    set 6, a
    ld [$c864], a
    ret


jr_003_4020:
    ld a, [$c865]
    rst $00
    inc l
    ld b, b
    ld c, l
    ld b, c
    add d
    ld b, c
    or a
    ld b, c
    call Call_000_1220
    ldh a, [rSB]
    ld b, a
    cp $f0
    jr z, jr_003_4071

    cp $f1
    jr z, jr_003_4071

    cp $f2
    jr nz, jr_003_4049

    ld a, [wMenu_selection]
    and $7f
    cp $02
    jr z, jr_003_405e

    jr jr_003_4056

jr_003_4049:
    cp $f3
    jr nz, jr_003_4056

    ld a, [wMenu_selection]
    and $7f
    cp $03
    jr z, jr_003_405e

jr_003_4056:
    ld a, $ff
    ld [$c8df], a
    jp Jump_003_4142


jr_003_405e:
    ld a, [$c863]
    set 0, a
    res 1, a
    ld [$c863], a
    ld a, b
    cp $f2
    jp nz, Jump_003_4107

    jp Jump_003_40c8


jr_003_4071:
    ld hl, $a002
    call Call_000_20ee
    or a
    jp z, Jump_003_4142

    ld a, [$c88a]
    or a
    jr nz, jr_003_40b5

    ld a, [$c88b]
    cp $01
    jr nz, jr_003_40b5

    ld a, [$c8d2]
    cp $01
    jr nz, jr_003_40b5

    ld a, b
    cp $f0
    jr nz, jr_003_40a2

    ld a, [wMenu_selection]
    cp $02
    jr z, jr_003_40b8

    ld a, $02
    ld [$c8e0], a
    jr jr_003_40b5

jr_003_40a2:
    ld a, b
    cp $f1
    jr nz, jr_003_40b5

    ld a, [wMenu_selection]
    cp $03
    jr z, jr_003_40b8

    ld a, $03
    ld [$c8e0], a
    jr jr_003_40b5

jr_003_40b5:
    jp Jump_003_4142


jr_003_40b8:
    ld a, [$c863]
    set 0, a
    set 1, a
    ld [$c863], a
    ld a, b
    cp $f0
    jp nz, Jump_003_4107

Jump_003_40c8:
    ld a, $59
    call Call_000_1b2c
    ld a, $00
    ld [$c841], a
    ld a, $01
    ld [$c86c], a
    di
    call Call_000_21b2
    ei
    ld hl, $0109
    rst $10
    ld hl, $c88a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld [hl], $00
    ld hl, $c88e
    inc [hl]
    ld a, $02
    ld [$c865], a
    xor a
    ld [$c866], a
    ld a, $00
    ld [$c867], a
    xor a
    ld [$c86d], a
    jp Jump_003_4142


Jump_003_4107:
    ld a, $59
    call Call_000_1b2c
    ld a, $00
    ld [$c841], a
    ld a, $01
    ld [$c86c], a
    di
    call Call_000_21b2
    ei
    ld hl, $c88a
    ld a, $00
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld [hl], $00
    ld hl, $c88e
    inc [hl]
    ld a, $03
    ld [$c865], a
    xor a
    ld [$c866], a
    ld a, $00
    ld [$c867], a
    xor a
    ld [$c86d], a
    jp Jump_003_4142


Jump_003_4142:
    ld a, $03
    ld [$c864], a
    ld a, $f8
    call Call_000_1275
    ret


    ld a, [$c86c]
    or a
    jr z, jr_003_415d

    ld a, [$c863]
    bit 0, a
    jr z, jr_003_415d

    call Call_003_415e

jr_003_415d:
    ret


Call_003_415e:
    ld a, [$c866]
    rst $00
    ld h, [hl]
    ld b, c
    ld l, d
    ld b, c
    call Call_003_42d5
    ret


    call Call_003_4387
    ld hl, $c8a2
    bit 7, [hl]
    res 7, [hl]
    ret nz

Call_003_4175:
    call Call_003_441b
    ld hl, $5002
    rst $10
    ld hl, $c8a2
    res 1, [hl]
    ret


    ld a, [$c86c]
    or a
    jr z, jr_003_4192

    ld a, [$c863]
    bit 0, a
    jr z, jr_003_4192

    call Call_003_4193

jr_003_4192:
    ret


Call_003_4193:
    ld a, [$c866]
    rst $00
    sbc e
    ld b, c
    sbc a
    ld b, c
    call Call_003_42d5
    ret


    call Call_003_4387
    ld hl, $c8a2
    bit 7, [hl]
    res 7, [hl]
    ret nz

    call Call_003_441b
    ld hl, $1502
    rst $10
    ld hl, $c8a2
    res 1, [hl]
    ret


    ld a, [$c86c]
    or a
    jr z, jr_003_41c7

    ld a, [$c863]
    bit 0, a
    jr z, jr_003_41c7

    call Call_003_41c8

jr_003_41c7:
    ret


Call_003_41c8:
    ld a, [$c866]
    rst $00
    ret nc

    ld b, c
    call nc, $cd41
    push de
    ld b, d
    ret


    call Call_003_4387
    ld hl, $c8a2
    bit 7, [hl]
    res 7, [hl]
    ret nz

    call Call_003_441b
    ld hl, $1503
    rst $10
    ld hl, $c8a2
    res 1, [hl]
    ret


    ld a, [$c863]
    bit 1, a
    jr nz, jr_003_41fd

    ld a, $01
    ld [$c866], a
    ld a, $f9
    jp Jump_000_1275


jr_003_41fd:
    ld a, [$c8a2]
    bit 1, a
    jr nz, jr_003_4226

    ldh a, [rSB]
    ld [$c86a], a
    ld a, [$c844]
    ld [$c845], a
    ld a, [$c86a]
    ld [$c844], a
    call Call_000_12ee
    call Call_000_1364
    ld a, $01
    ld [$c866], a
    ld a, [$c842]
    jp Jump_000_126b


Jump_003_4226:
jr_003_4226:
    ld a, $20

jr_003_4228:
    dec a
    jr nz, jr_003_4228

    ld hl, $c8a2
    set 2, [hl]
    ld a, $01
    ld [$c866], a
    ld a, $f3
    jp Jump_000_126b


    ld a, [$c863]
    bit 1, a
    jr nz, jr_003_42a6

    ld a, [$c8c7]
    or a
    jr nz, jr_003_4253

    ldh a, [rSB]
    ld [$c86a], a
    cp $f3
    jp z, Jump_003_4279

    jr jr_003_4258

jr_003_4253:
    ldh a, [rSB]
    ld [$c86a], a

jr_003_4258:
    ld hl, $c8a2
    set 1, [hl]
    ld a, [$c844]
    ld [$c845], a
    ld a, [$c86a]
    ld [$c844], a
    call Call_000_1364
    call Call_003_441b
    xor a
    ld [$c866], a
    ld hl, $c8a2
    res 1, [hl]
    ret


Jump_003_4279:
    ld a, [$c84e]
    ld [$c842], a
    ld a, [$c84f]
    ld [$c843], a
    ld a, [$c873]
    cp $ff
    jr nz, jr_003_429c

    ld a, [$c874]
    sub $01
    ld [$c874], a
    ld a, [$c875]
    sbc $00
    ld [$c875], a

jr_003_429c:
    xor a
    ld [$c866], a
    ld hl, $c8a2
    set 7, [hl]
    ret


jr_003_42a6:
    ld hl, $c8a2
    bit 2, [hl]
    jr nz, jr_003_42c1

    set 1, [hl]
    xor a
    ld [$c866], a
    ld a, $fa
    call Call_000_1275
    call Call_003_441b
    ld hl, $c8a2
    res 1, [hl]
    ret


Jump_003_42c1:
jr_003_42c1:
    ld hl, $c8a2
    res 2, [hl]
    xor a
    ld [$c866], a
    ld a, $fb
    call Call_000_1275
    ld hl, $c8a2
    set 7, [hl]
    ret


Call_003_42d5:
    ld a, [$c863]
    bit 1, a
    jr nz, jr_003_42e6

    ld a, $01
    ld [$c866], a
    ld a, $f9
    jp Jump_000_1275


jr_003_42e6:
    ld a, [$c8a2]
    bit 1, a
    jp nz, Jump_003_4226

    ld a, [$c873]
    cp $ff
    jr z, jr_003_4311

    ldh a, [rSB]
    ld [$c86a], a
    ld a, [$c86a]
    ld [$c86e], a
    call Call_000_12ee
    call Call_000_1364
    ld a, $01
    ld [$c866], a
    ld a, [$c873]
    jp Jump_000_126b


jr_003_4311:
    ld hl, $c871
    ld a, [hl+]
    or [hl]
    jr z, jr_003_436c

    ld a, [$c86f]
    ld l, a
    ld a, [$c870]
    ld h, a
    ldh a, [rSB]
    ld [hl], a
    call Call_000_12ee
    call Call_000_1364
    ld a, [$c86f]
    add $01
    ld [$c86f], a
    ld a, [$c870]
    adc $00
    ld [$c870], a
    ld a, [$c871]
    sub $01
    ld [$c871], a
    ld a, [$c872]
    sbc $00
    ld [$c872], a
    ld a, [$c874]
    ld l, a
    ld a, [$c875]
    ld h, a
    push hl
    ld a, [$c874]
    add $01
    ld [$c874], a
    ld a, [$c875]
    adc $00
    ld [$c875], a
    pop hl
    ld a, $01
    ld [$c866], a
    ld a, [hl]
    jp Jump_000_126b


jr_003_436c:
    ld a, $01
    ld [$c866], a
    ldh a, [rSB]
    ld [$c86a], a
    ld a, [$c86a]
    ld [$c86e], a
    call Call_000_12ee
    call Call_000_1364
    ld a, $f0
    jp Jump_000_126b


Call_003_4387:
    ld a, [$c863]
    bit 1, a
    jr nz, jr_003_4407

    ld a, [$c8c7]
    or a
    jr nz, jr_003_43a0

    ldh a, [rSB]
    ld [$c86a], a
    cp $f3
    jp z, Jump_003_4279

    jr jr_003_43a5

jr_003_43a0:
    ldh a, [rSB]
    ld [$c86a], a

jr_003_43a5:
    ld hl, $c8a2
    set 1, [hl]
    ld a, [$c873]
    cp $ff
    jr z, jr_003_43bf

    ld a, [$c86a]
    ld [$c86e], a
    call Call_000_1364
    xor a
    ld [$c866], a
    ret


jr_003_43bf:
    ld hl, $c871
    ld a, [hl+]
    or [hl]
    jr z, jr_003_43f9

    ld a, [$c86f]
    ld l, a
    ld a, [$c870]
    ld h, a
    ldh a, [rSB]
    ld [hl], a
    call Call_000_1364
    ld a, [$c86f]
    add $01
    ld [$c86f], a
    ld a, [$c870]
    adc $00
    ld [$c870], a
    ld a, [$c871]
    sub $01
    ld [$c871], a
    ld a, [$c872]
    sbc $00
    ld [$c872], a
    xor a
    ld [$c866], a
    ret


jr_003_43f9:
    ld a, [$c86a]
    ld [$c86e], a
    call Call_000_1364
    xor a
    ld [$c866], a
    ret


jr_003_4407:
    ld hl, $c8a2
    bit 2, [hl]
    jp nz, Jump_003_42c1

    set 1, [hl]
    xor a
    ld [$c866], a
    ld a, $fa
    call Call_000_1275
    ret


Call_003_441b:
    ld a, [$c825]
    or a
    jr z, jr_003_4424

    call Call_000_0618

jr_003_4424:
    call Call_000_17ec
    ld a, [$c8a4]
    add $01
    ld [$c8a4], a
    ld a, [$c8a5]
    adc $00
    ld [$c8a5], a
    xor a
    ld [$c8c8], a
    ld [$c8c9], a
    ret


    ld de, $da33
    call Call_003_4446
    ret


Call_003_4446:
    push de
    ld a, [$da31]
    ld c, $2b
    call Call_000_1dbe
    ld a, l
    add $61
    ld l, a
    ld a, h
    adc $44
    ld h, a
    pop de
    ld b, $2b

jr_003_445a:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_445a

    ret


    nop
    dec l
    dec c
    ld [bc], a
    nop
    nop
    ld b, e
    ld e, h
    push de
    db $10
    ld a, [bc]
    dec c
    ld [$1014], sp
    ld bc, $0101
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    inc hl
    ld a, [bc]
    ld [bc], a
    nop
    nop
    ld d, d
    ld a, c
    ld a, a
    ld de, $1101
    inc b
    ld de, $0008
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    inc b
    nop
    inc hl
    ld a, [bc]
    ld [bc], a
    ld bc, $5500
    ld e, b
    adc d
    dec c
    ld [bc], a
    dec bc
    dec bc
    jr jr_003_44ce

    nop
    nop
    nop
    ld bc, $0001
    ld [bc], a
    ld [bc], a

jr_003_44ce:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    inc b
    nop
    ld [hl-], a
    dec bc
    ld [bc], a
    nop
    nop
    inc e
    ld l, c
    ld l, d
    dec c
    dec bc
    ld [$110e], sp
    ld de, $0000
    nop
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    inc b
    nop
    ld e, $08
    ld [bc], a
    nop
    nop
    inc c
    inc [hl]
    ld d, d
    dec bc
    ld a, [bc]
    ld de, $1414
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0001
    inc bc
    nop
    jr z, @+$11

    ld [bc], a
    nop
    nop
    ld e, $2b
    ld c, d
    ld c, $01
    rrca
    ld c, $14
    ld c, $01
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    dec l
    inc c
    ld [bc], a
    nop
    nop
    jr jr_003_45d2

    ld [hl], h
    ld de, $1107
    ld [$0d0e], sp
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld [hl-], a
    dec bc
    ld [bc], a
    nop
    nop
    nop
    ld e, $3c
    dec bc
    ld a, [bc]
    ld c, $13
    ld c, $0d
    nop
    nop
    ld bc, $0000
    ld bc, $0202
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    jr z, jr_003_45cc

    ld [bc], a
    nop
    nop
    inc bc
    ld h, [hl]
    ld [hl], e
    ld d, $0b
    ld c, $11
    dec bc
    dec c
    nop
    nop
    nop
    nop

jr_003_45cc:
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_003_45d2:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    dec bc
    ld [bc], a
    nop
    nop
    ld e, $2b
    ld l, $0b
    rrca
    dec bc
    dec bc
    inc d
    ld [de], a
    nop
    nop
    nop
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    nop
    nop
    nop
    inc bc
    nop
    inc hl
    ld a, [bc]
    ld [bc], a
    nop
    nop
    ld b, c
    ld d, d
    ld a, l
    add hl, de
    ld bc, $0d12
    inc d
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0500
    nop
    ld [hl-], a
    dec bc
    ld [bc], a
    nop
    nop
    ld b, d
    ld e, e
    adc [hl]
    dec c
    ld a, [bc]
    ld c, $17
    db $10
    ld c, $00
    nop
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
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
    nop
    dec b
    nop
    ld [hl-], a
    dec bc
    ld [bc], a
    nop
    nop
    ld d, a
    ld e, d
    sub b
    ld [de], a
    dec bc
    inc d
    rrca
    ld c, $0d
    ld bc, $0001
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    inc hl
    ld a, [bc]
    ld [bc], a
    nop
    nop
    ld [hl], a
    ld a, e
    ld a, [hl]
    rrca
    rlca
    ld c, $08
    dec d
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0201
    ld bc, $0400
    nop
    jr z, jr_003_46c7

    ld [bc], a
    nop
    nop
    ld c, [hl]
    ld l, b
    sub d
    ld [de], a
    dec bc
    ld [de], a

jr_003_46c7:
    dec bc
    inc d
    rrca
    ld bc, $0101
    nop
    nop
    ld bc, $0203
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0001
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    nop
    jr z, jr_003_46f5

    ld [bc], a
    nop
    nop
    inc h
    dec hl
    jr nc, jr_003_4702

    ld c, $0f
    ld c, $14
    rrca

jr_003_46f5:
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc

jr_003_4702:
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0500
    nop
    inc d
    add hl, de
    ld [bc], a
    nop
    ld bc, $0c00
    ld [de], a
    nop
    ld e, $0b
    ld e, $1f
    dec c
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld b, $00
    jr z, jr_003_475a

    ld [bc], a
    nop
    ld bc, $0603
    inc d
    nop
    ld e, $0e
    rra
    rra
    rrca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc

jr_003_475a:
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld b, $00
    inc a
    dec e
    ld [bc], a
    nop
    ld bc, $2a0f
    ld h, h
    nop
    rra
    rrca
    rra
    rra
    ld [de], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    ld bc, $0600
    nop
    ld d, b
    rra
    ld [bc], a
    nop
    nop
    add hl, sp
    ld h, l
    add c
    nop
    rra
    inc de
    rra
    rra
    ld [de], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    ld [bc], a
    nop
    ld b, $01
    add hl, de
    rlca
    ld [bc], a
    nop
    nop
    ld e, h
    ld l, d
    adc h
    ld a, [bc]
    inc bc
    ld de, $0502
    dec b
    ld bc, $0202
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $1123
    ld [bc], a
    nop
    nop
    daa
    ld a, [hl+]
    ld e, d
    rrca
    dec bc
    ld [de], a
    ld b, $07
    dec c
    ld [bc], a
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
    nop
    ld bc, $0201
    nop
    ld [bc], a
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0001
    inc b
    ld bc, $1023
    ld [bc], a
    ld bc, $0300
    ld e, b
    adc d
    ld c, $0b
    ld [de], a
    ld [bc], a
    inc d
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    inc bc
    ld bc, $1232
    ld [bc], a
    ld bc, $1400
    ld [hl-], a
    dec a
    ld de, $0d0f
    dec bc
    rlca
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    inc b
    ld bc, $0f1e
    ld [bc], a
    ld bc, $1800
    ld l, d
    ld a, c
    add hl, bc
    dec c
    ld de, $0e10
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0001
    inc bc
    ld bc, $1428
    ld [bc], a
    nop
    nop
    ld b, b
    ld c, d
    reti


    ld de, $130a
    dec c
    dec b
    db $10
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc bc
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
    nop
    nop
    inc b
    ld bc, $132d
    ld [bc], a
    nop
    nop
    ld h, a
    ld l, h
    ld a, c
    dec d
    db $10
    rrca
    dec c
    rlca
    ld bc, $0202
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0000
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $1432
    ld [bc], a
    nop
    nop
    ld c, [hl]
    ld d, a
    sub b
    add hl, bc
    inc bc
    rla
    ld b, $01
    dec b
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $1428
    ld [bc], a
    nop
    nop
    ld b, h
    ld e, h
    adc a
    ld de, $1401
    db $10
    rlca
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0000
    ld [bc], a
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
    nop
    nop
    inc bc
    ld bc, $1023
    ld [bc], a
    nop
    nop
    inc a
    ld d, d
    ld [hl], d
    ld c, $08
    ld de, $120e
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    ld bc, $0300
    ld bc, $1323
    ld [bc], a
    nop
    nop
    ccf
    ld b, b
    ld a, b
    inc de
    nop
    dec d
    dec b
    ld [$0200], sp
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0201
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    nop
    dec b
    ld bc, $1123
    ld [bc], a
    ld bc, $4600
    ld c, h
    ld h, a
    ld c, $02
    ld de, $0f10
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0000
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld bc, $0102
    nop
    inc b
    ld bc, $1332
    ld [bc], a
    nop
    nop
    add hl, de
    ld l, c
    ld l, e
    ld de, $0b12
    ld b, $08
    dec c
    ld bc, $0202
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0300
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $101e
    ld [bc], a
    ld bc, $0300
    ld e, b
    ld e, h
    dec bc
    dec bc
    ld de, $0d11
    dec b
    ld bc, $0202
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0001
    inc bc
    ld bc, $1632
    ld [bc], a
    nop
    nop
    add hl, bc
    jr jr_003_4a8c

    dec d
    rrca
    inc de
    ld de, $0c13
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    dec b
    ld bc, $1428
    ld [bc], a
    nop
    nop
    ld h, a
    ld l, a
    ld [hl], c
    ld [de], a
    ld [$0d10], sp
    inc de
    dec bc
    ld bc, $0202
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0002
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $131e
    ld [bc], a
    nop
    nop
    dec a
    ld a, $5b
    inc d
    ld [$1813], sp
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0000
    inc bc
    nop

jr_003_4a8c:
    ld [bc], a
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0001
    dec b
    ld bc, $173c
    ld [bc], a
    nop
    nop
    ld b, a
    ld h, b
    adc a
    dec d
    dec b
    rla
    ld c, $10
    dec bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0302
    ld bc, $0201
    ld bc, $0301
    nop
    inc bc
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    nop
    ld b, $01
    inc hl
    ld [de], a
    ld [bc], a
    nop
    nop
    rla
    ld h, a
    push de
    ld c, $04
    rrca
    dec b
    inc de
    ld [$0202], sp
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    inc bc
    ld bc, $142d
    ld bc, $0000
    ld b, d
    ld d, l
    ld l, h
    rrca
    ld [$1114], sp
    ld c, $0b
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    inc b
    ld bc, $173c
    ld [bc], a
    nop
    nop
    ld b, $40
    ld b, l
    add hl, de
    ld c, $14
    ld d, $12
    ld c, $02
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0202
    ld bc, $0101
    ld bc, $0301
    ld bc, $0103
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    ld b, $01
    inc a
    ld d, $02
    nop
    nop
    ld b, h
    ld d, b
    ld e, h
    jr jr_003_4b5c

    jr @+$17

    dec bc
    ld [$0202], sp
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_003_4b5c:
    ld bc, $0301
    ld bc, $0301
    nop
    inc bc
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    ld b, $01
    inc a
    ld d, $02
    nop
    nop
    ld b, b
    ld c, b
    ld e, h
    rla
    db $10
    ld a, [de]
    inc d
    ld de, $0210
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0301
    nop
    inc bc
    ld bc, $0201
    ld bc, $0101
    ld bc, $0101
    nop
    ld b, $01
    inc hl
    ld [de], a
    inc bc
    ld bc, $4300
    ld c, a
    ld e, h
    rrca
    dec bc
    inc d
    ld c, $12
    ld [$0201], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0301
    nop
    inc bc
    ld bc, $0201
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    ld bc, $1c50
    inc bc
    ld bc, $6000
    ld h, l
    sub e
    ld a, [de]
    add hl, de
    inc e
    jr jr_003_4be7

    rla
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0203
    ld [bc], a

jr_003_4be7:
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld b, $02
    jr z, @+$0e

    ld [bc], a
    nop
    nop
    ld l, b
    ld l, d
    ld a, c
    ld c, $05
    rrca
    inc c
    dec bc
    stop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    dec l
    dec c
    ld [bc], a
    nop
    nop
    dec d
    dec a
    ld b, c
    ld [de], a
    dec b
    ld c, $09
    rrca
    inc b
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    inc hl
    ld a, [bc]
    ld [bc], a
    ld bc, $1700
    jr nz, jr_003_4cc4

    dec bc
    ld a, [bc]
    dec c
    ld [$0e12], sp
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    ld [bc], a
    ld [hl-], a
    dec bc
    ld [bc], a
    nop
    nop
    inc a
    ld d, d
    ld [hl], a
    ld c, $11
    ld [$1308], sp
    dec c
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    jr z, jr_003_4ca8

    ld [bc], a
    nop
    nop
    ld e, $56
    ld l, e
    db $10
    dec b
    add hl, bc

jr_003_4ca8:
    ld de, $0d00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0202
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc

jr_003_4cc4:
    inc bc
    nop
    inc bc
    ld [bc], a
    dec l
    dec c
    ld [bc], a
    nop
    nop
    inc a
    ccf
    ld a, l
    jr jr_003_4cd3

    ld a, [de]

jr_003_4cd3:
    dec c
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    ld [bc], a
    dec l
    inc c
    ld [bc], a
    nop
    nop
    ld b, c
    ld c, c
    ld l, [hl]
    ld c, $0a
    dec bc
    ld [$0210], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0202
    ld bc, $0000
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    ld [hl-], a
    inc c
    ld [bc], a
    nop
    nop
    add hl, bc
    inc c
    ld b, [hl]
    dec c
    inc d
    dec c
    rrca
    rrca
    dec c
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0000
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    jr z, jr_003_4d53

    ld [bc], a
    nop
    nop
    ld c, b
    ld d, l
    ld a, c
    ld c, $07

jr_003_4d53:
    ld de, $090b
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    dec l
    add hl, bc
    ld [bc], a
    nop
    nop
    ld [hl], c
    ld a, a
    sub h
    ld [de], a
    rlca
    dec c
    inc c
    dec bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0102
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    ld [bc], a
    dec l
    ld a, [bc]
    ld [bc], a
    nop
    nop
    daa
    adc b
    adc [hl]
    ld [de], a
    dec b
    ld de, $0217
    dec bc
    ld bc, $0101
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0200
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    ld [bc], a
    inc hl
    dec bc
    ld [bc], a
    nop
    nop
    inc c
    ld a, b
    sub d
    ld c, $0b
    db $10
    ld c, $14
    ld [$0000], sp
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0000
    ld bc, $0202
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc b
    ld [bc], a
    ld [hl-], a
    dec bc
    ld [bc], a
    nop
    nop
    ld a, $40
    ld b, c
    ld de, $1113
    dec bc
    ld de, $000a
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
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
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    inc b
    ld [bc], a
    jr z, jr_003_4e30

    ld [bc], a
    nop
    nop
    dec sp
    ld d, l
    ld a, e
    inc d
    nop
    dec de
    rlca
    add hl, bc
    ld bc, $0101

jr_003_4e30:
    ld bc, $0101
    ld bc, $0000
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    dec b
    ld [bc], a
    jr z, @+$0f

    ld [bc], a
    nop
    nop
    inc c
    ld b, a
    ld a, l
    ld [de], a
    dec bc
    rrca
    add hl, bc
    ld a, [bc]
    ld [$0101], sp
    ld bc, $0101
    ld [bc], a
    nop
    nop
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    ld [bc], a
    ld [hl-], a
    inc c
    ld [bc], a
    nop
    nop
    ld b, c
    ld c, e
    ld c, l
    ld c, $0d
    ld de, $0809
    dec bc
    ld bc, $0001
    nop
    nop
    ld bc, $0000
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0001
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    ld [bc], a
    dec l
    dec bc
    ld [bc], a
    ld bc, $1800
    jr nz, @-$28

    inc c
    dec b
    dec c
    ld c, $11
    rlca
    ld bc, $0101
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0202
    ld bc, $0100
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    ld [hl-], a
    ld c, $02
    nop
    nop
    dec hl
    jr nc, @+$35

    inc de
    dec d
    ld c, $0d
    inc c
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld bc, $0201
    inc bc
    inc bc
    ld bc, $0001
    ld [bc], a
    nop
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    ld b, $02
    jr z, jr_003_4f04

    ld [bc], a
    nop
    nop
    inc bc
    jr nz, jr_003_4f69

    inc de
    add hl, bc
    ld de, $110d

jr_003_4f04:
    inc bc
    nop
    ld bc, $0001
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    ld [bc], a
    inc hl
    dec c
    ld [bc], a
    nop
    nop
    dec sp
    ld d, d
    ld a, e
    dec c
    ld bc, $0a14
    ld [$0004], sp
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    dec b
    ld [bc], a
    ld [hl-], a
    ld c, $02
    nop
    nop
    dec a
    ld [hl], d
    ld a, l
    ld de, $1508
    ld de, $0d0e
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0302

jr_003_4f69:
    ld bc, $0000
    ld bc, $0000
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld b, $02
    ld b, [hl]
    rrca
    ld [bc], a
    nop
    nop
    inc bc
    ld d, b
    ld h, b
    inc d
    ld c, $18
    rla
    ld de, $010e
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    inc bc
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    ld bc, $0201
    ld bc, $0102
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld b, $02
    ld [hl-], a
    dec c
    ld [bc], a
    nop
    nop
    dec d
    rla
    ld d, [hl]
    ld de, $1304
    ld [de], a
    ld a, [bc]
    inc c
    ld bc, $0001
    nop
    nop
    ld bc, $0201
    inc bc
    ld bc, $0103
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    nop
    ld [bc], a
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    nop
    ld b, $02
    jr z, jr_003_4fdc

    ld [bc], a
    nop
    nop
    ld b, [hl]
    ld d, l
    ld a, e
    rrca
    rlca
    ld [de], a
    ld c, $11
    dec bc

jr_003_4fdc:
    ld bc, $0101
    nop
    nop
    ld bc, $0100
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    ld bc, $0001
    ld bc, $0300
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld b, $02
    jr z, jr_003_5006

    ld [bc], a
    nop
    nop
    inc c
    dec hl
    ld h, b
    ld c, $08
    ld c, $0b
    rlca

jr_003_5006:
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0003
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    inc bc
    jr z, @+$06

    ld [bc], a
    nop
    nop
    jr jr_003_5047

    rst $10
    dec bc
    inc c
    ld c, $08
    ld [de], a
    dec c
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop

jr_003_5047:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    dec l
    ld b, $02
    ld bc, $1500
    dec hl
    ld h, b
    ld de, $130d
    dec bc
    db $10
    inc d
    ld bc, $0101
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
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc bc
    inc hl
    dec b
    ld [bc], a
    nop
    nop
    inc a
    ld b, c
    ret c

    ld c, $08
    ld de, $0609
    inc b
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc b
    inc bc
    ld [hl-], a
    dec b
    ld [bc], a
    ld bc, $2200
    ld c, d
    sub l
    ld b, $12
    inc c
    inc bc
    dec d
    inc de
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    ld e, $03
    ld [bc], a
    ld bc, $1500
    add hl, de
    ld l, a
    dec bc
    dec bc
    add hl, bc
    inc c
    ld [de], a
    rlca
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    jr z, jr_003_5101

    ld [bc], a
    nop
    nop
    add hl, bc

jr_003_5101:
    inc e
    ld b, [hl]
    add hl, bc
    rlca
    inc d
    ld c, $17
    dec c
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc bc
    dec l
    dec b
    ld [bc], a
    ld bc, $4200
    ld c, c
    adc d
    ld b, $0e
    ld de, $120c
    dec b
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    ld [hl-], a
    dec b
    ld [bc], a
    ld bc, $1800
    inc h
    ld [hl], h
    inc c
    ld de, $0f08
    ld d, $0d
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    jr z, @+$04

    ld [bc], a
    ld bc, $1500
    ld a, [de]
    inc sp
    dec bc
    inc b
    ld [$110d], sp
    dec bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc bc
    jr z, @+$05

    ld [bc], a
    ld bc, $4600
    ld [hl], d
    adc h
    ld [$0e05], sp
    inc c
    ld de, $0008
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    jr z, jr_003_51da

    ld [bc], a
    nop
    nop
    dec h
    ld d, a
    rst $10

jr_003_51da:
    db $10
    inc c
    inc d
    inc d
    ld c, $0b
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0200
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc bc
    inc hl
    rlca
    ld [bc], a
    nop
    nop
    add hl, bc
    ld b, l
    ld [hl], a
    rrca
    ld a, [bc]
    dec d
    dec c
    dec bc
    ld [de], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0202
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    dec b
    inc bc
    ld e, $05
    ld [bc], a
    ld bc, $1900
    ld [hl], l
    ld a, b
    ld de, $1106
    rrca
    inc d
    ld [$0000], sp
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    inc b
    inc bc
    ld [hl-], a
    ld b, $02
    ld bc, $0300
    ld l, $4f
    ld c, $0b
    ld [de], a
    inc c
    ld de, $010d
    ld bc, $0200
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    nop
    ld bc, $0001
    nop
    ld [bc], a
    nop
    ld bc, $0002
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    inc bc
    ld [hl-], a
    rlca
    inc bc
    ld bc, $1200
    ld b, a
    ld h, b
    inc d
    rlca
    dec bc
    ld de, $0b13
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0000
    ld bc, $0100
    inc bc
    nop
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    inc bc
    ld [hl-], a
    rlca
    ld bc, $0001
    ld d, l
    ld e, h
    adc d
    db $10
    dec c
    inc de
    ld [$0c13], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $0300
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    dec b
    inc bc
    ld [hl-], a
    rlca
    ld [bc], a
    ld bc, $4500
    ld e, d
    ld h, h
    inc d
    rlca
    inc de
    ld de, $0c16
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0000
    ld bc, $0002
    ld [bc], a
    nop
    nop
    ld bc, $0100
    ld bc, $0100
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    inc bc
    inc a
    rrca
    ld [bc], a
    ld bc, $2a00
    add e
    add h
    dec de
    inc de
    inc c
    inc d
    rla
    rla
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    nop
    nop
    ld bc, $0000
    ld [bc], a
    nop
    ld bc, $0001
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld b, $03
    ld [hl-], a
    dec b
    ld [bc], a
    nop
    nop
    ld l, [hl]
    sub h
    sub [hl]
    ld c, $14
    ld [$1009], sp
    inc d
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    ld bc, $0200
    ld bc, $0101
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld b, $03
    ld b, [hl]
    jr jr_003_5359

    nop

jr_003_5359:
    nop
    ld h, [hl]
    add c
    adc [hl]
    add hl, de
    dec de
    rrca
    jr @+$14

    jr jr_003_5366

    ld [bc], a
    ld [bc], a

jr_003_5366:
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld bc, $0301
    ld bc, $0301
    ld bc, $0302
    ld bc, $0102
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld b, $04
    jr z, jr_003_538c

    ld [bc], a
    nop
    nop
    inc e
    jr nz, @+$36

    rrca
    jr @+$0d

    dec c

jr_003_538c:
    ld b, $12
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    inc b
    dec l
    rrca
    ld [bc], a
    nop
    nop
    nop
    dec [hl]
    ld l, e
    ld c, $1a
    ld a, [bc]
    inc c
    dec b
    ld de, $0101
    ld bc, $0202
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0200
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    inc b
    inc hl
    rlca
    ld [bc], a
    nop
    nop
    inc bc
    inc sp
    ld [hl], $11
    inc d
    ld b, $09
    ld [bc], a
    inc de
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc b
    inc hl
    rlca
    ld [bc], a
    ld bc, $3200
    scf
    ld c, l
    inc c
    inc d
    ld b, $0b
    ld c, $07
    nop
    nop
    nop
    inc bc
    inc bc
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
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc b
    ld e, $06
    ld [bc], a
    nop
    nop
    ld b, d
    ld l, c
    ld [hl], l
    ld [de], a
    ld [de], a
    inc c
    rrca
    add hl, bc
    dec b
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0200
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    inc b
    inc b
    jr z, jr_003_5464

    ld [bc], a
    nop
    nop
    add hl, bc
    dec d
    ld l, b
    db $10
    ld de, $0609
    ld [bc], a

jr_003_5464:
    ld c, $01
    ld bc, $0201
    ld [bc], a
    ld bc, $0000
    ld bc, $0202
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    inc b
    dec l
    add hl, bc
    ld [bc], a
    nop
    nop
    ld l, b
    ld l, d
    sub d
    ld c, $12
    ld [$0d09], sp
    dec c
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    ld bc, $0000
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc bc
    inc b
    ld [hl-], a
    inc c
    ld [bc], a
    nop
    nop
    inc h
    dec h
    ld h, $0c
    jr jr_003_54c0

    ld de, $0a0c
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a

jr_003_54c0:
    ld bc, $0000
    ld bc, $0202
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    inc b
    jr z, @+$0a

    ld [bc], a
    nop
    nop
    dec d
    scf
    ld c, l
    ld de, $040b
    ld [bc], a
    add hl, bc
    ld c, $00
    nop
    nop
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc bc
    inc b
    inc hl
    add hl, bc
    ld [bc], a
    nop
    nop
    ld a, [de]
    ld b, c
    ld l, d
    dec c
    inc d
    ld c, $0b
    inc bc
    stop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0200
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    inc b
    inc b
    ld [hl-], a
    inc c
    ld [bc], a
    nop
    nop
    ld [hl], c
    ld [hl], a
    ld a, b
    dec bc
    dec d
    rlca
    ld b, $14
    dec bc
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0000
    nop
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    dec b
    inc b
    jr z, jr_003_5566

    ld [bc], a
    nop
    nop
    inc c
    dec hl
    ld [hl], $0f
    ld [de], a
    ld [$0c03], sp

jr_003_5566:
    rrca
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0100
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    inc b
    dec l
    add hl, bc
    ld [bc], a
    nop
    nop
    rla
    ld l, a
    ld [hl], l
    inc c
    inc d
    dec bc
    ld [$110a], sp
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    inc bc
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld b, $04
    jr z, jr_003_55be

    ld [bc], a
    nop
    nop
    ld d, h
    ld l, a
    sub c
    inc de
    ld de, $0a07
    rrca
    rla
    nop

jr_003_55be:
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld b, $04
    inc hl
    ld a, [bc]
    ld [bc], a
    nop
    nop
    ld a, [de]
    dec h
    jr c, @+$10

    rrca
    inc c
    ld c, $0f
    add hl, bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0202
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc b
    ld e, $06
    ld [bc], a
    nop
    nop
    ld c, [hl]
    ld l, c
    ld [hl], e
    ld [$080b], sp
    dec b
    ld bc, $0103
    ld bc, $0301
    inc bc
    ld bc, $0000
    ld bc, $0202
    ld bc, $0000
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc bc
    inc b
    ld [hl-], a
    add hl, bc
    ld [bc], a
    nop
    nop
    ld c, c
    ld d, [hl]
    ld l, d
    ld c, $0c
    inc de
    rlca
    ld a, [bc]
    ld b, $01
    ld bc, $0201
    ld [bc], a
    ld bc, $0000
    ld bc, $0303
    ld bc, $0000
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    dec b
    inc b
    inc a
    dec bc
    ld [bc], a
    nop
    nop
    rla
    ld d, d
    ld d, a
    ld de, $140e
    dec c
    ld a, [bc]
    db $10
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0000
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld b, $04
    ld d, b
    jr jr_003_568c

    nop
    nop
    ld d, b

jr_003_568c:
    add d
    sub b
    jr @+$20

    rla
    dec d
    ld [de], a
    ld [de], a
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0102
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld b, $04
    ld d, b
    nop
    ld [bc], a
    nop
    nop
    add hl, sp
    ld a, [hl]
    ld a, a
    ld a, [bc]
    dec de
    dec bc
    ld c, $18
    ld e, $02
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld b, $05
    inc hl
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld a, c
    ld a, [hl]
    adc h
    dec bc
    ld [$090e], sp
    dec bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0103
    ld bc, $0301
    ld bc, $0101
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc b
    dec b
    jr z, @+$06

    ld [bc], a
    nop
    nop
    ld e, $6c
    add e
    dec c
    dec b
    dec bc
    ld c, $0b
    add hl, bc
    ld bc, $0101
    nop
    nop
    ld bc, $0200
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0100
    ld bc, $0202
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    dec b
    ld e, $01
    ld [bc], a
    nop
    nop
    ld [de], a
    daa
    ld d, d
    ld b, $0b
    ld c, $12
    ld [$0007], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    dec b
    dec b
    ld e, $00
    ld [bc], a
    ld bc, $1800
    ld d, d
    ld l, a
    dec bc
    ld [bc], a
    dec c
    rlca
    inc c
    ld [$0000], sp
    nop
    ld bc, $0001
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    inc bc
    nop
    inc b
    dec b
    dec l
    inc b
    ld [bc], a
    nop
    nop
    ld a, [de]
    inc h
    ld h, $11
    dec c
    ld a, [bc]
    inc c
    dec b
    inc de
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld [bc], a
    nop
    ld bc, $0201
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    inc b
    dec b
    inc hl
    ld b, $02
    nop
    nop
    scf
    ld c, d
    ld [hl], l
    dec c
    ld [$0810], sp
    dec c
    ld c, $01
    ld bc, $0101
    ld bc, $0001
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    nop
    nop
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc b
    dec b
    jr z, jr_003_57e4

    ld [bc], a
    nop
    nop
    ld l, b

jr_003_57e4:
    ld [hl], b
    ld a, c
    inc c
    ld [$0909], sp
    inc b
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0103
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $0000
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    dec b
    dec l
    inc bc
    ld [bc], a
    nop
    nop
    dec d
    ld e, h
    ld a, e
    dec c
    rlca
    db $10
    inc d
    add hl, bc
    rlca
    ld bc, $0001
    nop
    nop
    ld bc, $0200
    ld bc, $0000
    ld [bc], a
    nop
    nop
    ld bc, $0100
    ld bc, $0202
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    dec b
    dec b
    inc hl
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld a, $52
    ld l, b
    ld [$0b04], sp
    ld de, $010d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    dec b
    inc hl
    nop
    ld [bc], a
    nop
    nop
    ld a, [de]
    ld b, c
    ld d, d
    dec bc
    inc b
    ld [$0e0e], sp
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc b
    dec b
    dec l
    dec b
    ld [bc], a
    nop
    nop
    ld b, a
    ld l, h
    ld [hl], e
    inc c
    ld a, [bc]
    db $10
    dec bc
    ld c, $05
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld [bc], a
    nop
    ld bc, $0201
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    nop
    inc b
    dec b
    ld e, $06
    ld [bc], a
    nop
    nop
    ld e, $25
    dec sp
    rrca
    ld a, [bc]
    ld de, $0b14
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    inc bc
    nop
    inc b
    dec b
    dec l
    inc b
    ld [bc], a
    ld bc, $0300
    dec hl
    jr c, @+$0b

    dec bc
    ld b, $03
    ld a, [bc]
    add hl, bc
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    nop
    nop
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    inc b
    dec b
    ld e, $02
    ld [bc], a
    ld bc, $5800
    ld l, c
    ld [hl], e
    ld c, $09
    db $10
    inc c
    inc d
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0000
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    inc bc
    nop
    dec b
    dec b
    jr z, jr_003_593d

    ld [bc], a
    nop
    nop
    jr nz, jr_003_5974

jr_003_593d:
    ret c

    ld de, $0f0a
    db $10
    rlca
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $0103
    ld bc, $0300
    nop
    nop
    ld bc, $0000
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    inc b
    dec b
    jr z, jr_003_5969

    ld [bc], a
    nop
    nop
    ld e, $48
    ld d, d

jr_003_5969:
    db $10
    ld [$130e], sp
    dec b
    ld bc, $0000
    nop
    nop
    nop

jr_003_5974:
    nop
    ld bc, $0103
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    dec b
    dec b
    jr z, jr_003_5995

    ld [bc], a
    ld bc, $6700
    ld l, c
    adc d
    inc d

jr_003_5995:
    dec b
    inc de
    dec c
    inc d
    inc b
    ld bc, $0101
    nop
    nop
    ld bc, $0200
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0001
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    inc bc
    nop
    dec b
    dec b
    ld [hl-], a
    rlca
    ld [bc], a
    nop
    nop
    ld b, l
    ld c, h
    ld e, e
    dec d
    inc de
    rla
    inc d
    inc c
    ld c, $02
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0000

Call_003_59d0:
    ld [bc], a
    nop
    nop
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld b, $05
    inc a
    jr jr_003_59e7

    nop
    nop

jr_003_59e7:
    ld b, b
    ld c, l
    ld d, a
    ld d, $14
    jr jr_003_5a05

    rrca
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld bc, $0203
    ld bc, $0301
    ld bc, $0301
    ld bc, $0202
    inc bc
    inc bc
    inc bc

jr_003_5a05:
    ld bc, $0101
    inc bc
    inc bc
    nop
    ld b, $05
    ld [hl-], a
    dec bc
    ld [bc], a
    nop
    nop
    ld [hl-], a
    adc [hl]
    adc a
    jr @+$0c

    inc de
    ld a, [de]
    ld bc, $010f
    ld bc, $0001
    nop
    ld bc, $0201
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    inc bc
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld b, $06
    jr z, @+$15

    ld [bc], a
    nop
    nop
    ld [hl+], a
    dec h
    inc sp
    dec bc
    rlca
    rrca
    ld [$040f], sp
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld b, $2d
    inc d
    ld [bc], a
    nop
    nop
    ld b, $45
    ld c, e
    ld c, $0d
    ld de, $070c
    dec d
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld bc, $0400
    ld b, $23
    db $10
    ld [bc], a
    nop
    nop
    inc bc
    inc d
    ld l, d
    db $10
    dec bc
    ld [de], a
    inc c
    db $10
    inc de
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0201
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0201
    ld bc, $0400
    ld b, $19
    dec c
    ld [bc], a
    nop
    nop
    nop
    ld b, h
    ld h, b
    dec c
    ld bc, $0405
    add hl, bc
    inc d
    ld bc, $0101
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld bc, $0400
    ld b, $32
    ld [de], a
    ld [bc], a
    ld bc, $4800
    ld l, e
    ld [hl], e
    dec bc
    ld [de], a
    ld a, [bc]
    db $10
    add hl, bc
    inc c
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    ld bc, $0000
    ld [bc], a
    ld bc, $0001
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    inc bc
    ld b, $23
    db $10
    ld [bc], a
    nop
    nop
    daa
    ld a, [hl+]
    ld a, l
    db $10
    ld de, $0e0e
    dec c
    ld [$0202], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0002
    nop
    ld bc, $0000
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0001
    inc b
    ld b, $2d
    ld [de], a
    ld [bc], a
    nop
    nop
    ld b, h
    ld d, a
    ld a, e
    ld de, $110b
    dec c
    rrca
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld bc, $0301
    nop
    nop
    ld bc, $0000
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc b
    ld b, $32
    inc d
    ld [bc], a
    nop
    nop
    inc bc
    ld a, [hl+]
    ld h, b
    db $10
    ld a, [bc]
    inc d
    ld d, $04
    inc c
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    inc bc
    nop
    nop
    inc bc
    ld bc, $0101
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld b, $19
    dec c
    ld [bc], a
    ld bc, $0000
    inc bc
    inc c
    ld a, [bc]
    ld bc, $0905
    add hl, bc
    ld de, $0101
    ld bc, $0202
    ld [bc], a
    nop
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld b, $19
    dec c
    ld [bc], a
    ld bc, $0300
    rla
    dec hl
    dec c
    rlca
    ld [$0204], sp
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $0000
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld b, $23
    inc de
    ld [bc], a
    ld bc, $1800
    inc e
    ret c

    dec bc
    dec c
    ld c, $0f
    ld [$020b], sp
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    ld bc, $0002
    nop
    ld bc, $0000
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    ld bc, $0001
    inc b
    ld b, $2d
    dec d
    ld [bc], a
    nop
    nop
    add hl, bc
    ld l, $46
    rrca
    dec bc
    ld c, $0f
    inc c
    inc de
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc bc
    ld bc, $0101
    nop
    nop
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld b, $23
    ld d, $02
    nop
    nop
    ld b, $09
    inc c
    inc d
    dec bc
    ld de, $0b0d
    inc d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc bc
    nop
    ld bc, $0201
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    ld b, $32
    ld de, $0002
    nop
    inc e
    jr nc, @+$4d

    inc de
    rlca
    inc de
    dec c
    dec c
    ld [de], a
    ld bc, $0101
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0001
    ld bc, $0201
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    ld b, $23
    inc de
    ld [bc], a
    nop
    nop
    ccf
    ld c, b
    ld d, a
    rrca
    ld [$0c14], sp
    ld a, [bc]
    inc c
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0201
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0500
    ld b, $32
    rla
    ld [bc], a
    nop
    nop
    nop
    ld c, [hl]
    add e
    ld [de], a
    inc c
    ld [de], a
    ld c, $0a
    ld c, $02
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0301
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld bc, $0500
    ld b, $32
    ld d, $02
    nop
    nop
    dec h
    ld b, [hl]
    ld d, l
    ld de, $140c
    dec bc
    inc d
    rrca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0300
    ld bc, $0001
    ld bc, $0301
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld b, $3c
    inc d
    ld [bc], a
    nop
    nop
    ld b, h
    ld c, c
    adc b
    rla
    ld bc, $1812
    inc c
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0301
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld d, b
    ld e, $02
    nop
    nop
    ld b, $54
    ld h, b
    jr jr_003_5d66

    rla
    dec d
    ld [de], a
    dec d
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0302
    ld bc, $0203
    ld bc, $0301
    nop
    ld [bc], a
    ld bc, $0200
    nop
    ld bc, $0000
    nop
    nop

jr_003_5d66:
    nop
    ld b, $06
    ld [hl-], a
    rla
    ld [bc], a
    nop
    nop
    ccf
    ld c, d
    reti


    ld de, $1209
    inc d
    ld a, [bc]
    inc c
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $0301
    nop
    ld bc, $0101
    ld bc, $0003
    ld bc, $0001
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    dec b
    ld b, $23
    ld d, $02
    nop
    nop
    ld b, b
    ld b, c
    ld c, l
    dec de
    nop
    dec de
    rlca
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0003
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0500
    ld b, $2d
    rla
    ld [bc], a
    nop
    nop
    rla
    ld b, h
    ld d, a
    inc d
    ld bc, $1518
    ld [de], a
    inc de
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0201
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0003
    ld bc, $0001
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld b, $06
    ld e, $16
    ld [bc], a
    nop
    nop
    ld b, h
    ld b, l
    ld c, c
    db $10
    ld bc, $1d11
    dec b
    dec c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    inc bc
    nop
    nop
    ld bc, $0000
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0102
    ld bc, $0000
    ld bc, $0001
    ld b, $06
    inc a
    dec d
    ld [bc], a
    nop
    nop
    nop
    ld d, b
    adc d
    jr jr_003_5e28

    dec d
    jr @+$19

    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc

jr_003_5e28:
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0301
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0001
    ld b, $06
    ld b, [hl]
    inc e
    ld [bc], a
    nop
    nop
    ld c, c
    ld c, e
    ld e, b
    add hl, de
    jr jr_003_5e62

    rrca
    ld de, $0214
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0203
    ld [bc], a
    inc bc
    ld bc, $0202
    ld bc, $0301
    ld bc, $0101
    inc bc
    inc bc

jr_003_5e62:
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    ld b, $07
    jr z, @+$0d

    ld [bc], a
    ld bc, $7300
    ld a, c
    sub d
    dec bc
    inc c
    dec c
    ld [$0f12], sp
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    ld bc, $0301
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    rlca
    dec l
    dec c
    ld [bc], a
    nop
    nop
    dec sp
    ld b, a
    ld h, b
    ld b, $01
    rla
    rrca
    inc b
    ld b, $01
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    rlca
    inc hl
    ld b, $02
    nop
    nop
    inc e
    jr nz, jr_003_5ef0

    ld de, $110d
    ld [$040b], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0201
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    inc b
    rlca
    inc hl
    dec b
    ld [bc], a
    nop

jr_003_5ef0:
    nop
    ld a, $45
    ld e, d
    ld c, $08
    inc c
    dec bc
    ld [de], a
    add hl, bc
    nop
    nop
    nop
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    inc b
    rlca
    ld [hl-], a
    ld a, [bc]
    ld [bc], a
    nop
    nop
    ld b, b
    ld d, d
    ld l, c
    rrca
    ld de, $090c
    inc b
    ld [$0000], sp
    nop
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    inc b
    rlca
    ld e, $08
    ld [bc], a
    nop
    nop
    ld h, $2a
    scf
    inc c
    ld [$140f], sp
    ld bc, $000b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld bc, $0001
    inc b
    rlca
    dec l
    dec c
    ld [bc], a
    nop
    nop
    dec hl
    dec [hl]
    ld [hl], $11
    rlca
    inc de
    add hl, bc
    inc c
    ld [$0101], sp
    ld bc, $0101
    ld bc, $0202
    inc bc
    nop
    nop
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    rlca
    ld [hl-], a
    inc c
    ld [bc], a
    ld bc, $6000
    ld [hl], c
    add e
    add hl, bc
    ld b, $06
    inc d
    ld [$000c], sp
    nop
    nop
    nop
    nop
    ld bc, $0202
    inc bc
    nop
    nop
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $0202
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    rlca
    jr z, @+$0a

    ld [bc], a
    nop
    nop
    ld l, h
    ld [hl], h
    ld a, c
    ld de, $100d
    ld [$0a0b], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    rlca
    ld e, $0a
    ld [bc], a
    nop
    nop
    ld [de], a
    dec hl
    jr nc, jr_003_5ffd

    ld a, [bc]
    dec bc
    ld de, $0e07
    nop

jr_003_5ffd:
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld bc, $0201
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld bc, $0001
    inc bc
    rlca
    inc hl
    inc c
    ld [bc], a
    ld bc, $5800
    ld e, d
    ld e, h
    ld de, $0a04
    inc bc
    rrca
    add hl, bc
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    inc bc
    rlca
    ld [hl-], a
    dec c
    ld [bc], a
    ld bc, $6a00
    ld [hl], e
    add e
    ld c, $0c
    rrca
    inc c
    db $10
    ld a, [bc]
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0301
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    inc b
    rlca
    inc hl
    add hl, bc
    ld [bc], a
    ld bc, $0900
    inc h
    ld [hl], $10
    inc de
    inc de
    inc c
    dec c
    ld b, $00
    nop
    nop
    inc bc
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0201
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    inc bc
    rlca
    ld [hl-], a
    ld a, [bc]
    ld [bc], a
    ld bc, $4c00
    ld l, a
    ld [hl], h
    inc de
    inc bc
    dec d
    ld de, $0613
    nop
    nop
    nop
    ld bc, $0001
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0301
    nop
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0303
    inc bc
    ld bc, $0001
    ld bc, $0001
    inc bc
    rlca
    ld [hl-], a
    db $10
    ld [bc], a
    nop
    nop
    ld [de], a
    ld l, $84
    dec d
    ld [bc], a
    ld a, [de]
    inc de
    rrca
    dec c
    ld bc, $0101
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    inc bc
    ld bc, $0201
    nop
    nop
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    ld b, $07
    ld b, [hl]
    add hl, de
    ld [bc], a
    nop
    nop
    add hl, bc
    rrca
    add hl, sp
    inc d
    jr @+$10

    inc d
    rrca
    dec de
    ld bc, $0201
    inc bc
    ld bc, $0203
    ld [bc], a
    inc bc
    ld bc, $0301
    ld bc, $0301
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0001
    ld b, $07
    jr z, @+$0c

    ld [bc], a
    nop
    nop
    ld b, $45
    ld c, e
    ld c, $0d
    ld de, $070c
    ld bc, $0000
    nop
    ld bc, $0100
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    rlca
    inc a
    inc c
    ld [bc], a
    nop
    nop
    inc e
    ld c, e
    ld d, b
    db $10
    dec bc
    ld [de], a
    inc c
    db $10
    inc de
    nop
    nop
    ld bc, $0002
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0201
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $0202
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    ld d, b
    inc d
    ld [bc], a
    nop
    nop
    nop
    inc c
    ld d, h
    rla
    dec d
    add hl, de
    ld [de], a
    rrca
    inc d
    ld bc, $0301
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    inc bc
    ld bc, $0301
    ld bc, $0301
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0001
    ld b, $07
    jr z, jr_003_619f

    ld [bc], a

jr_003_619f:
    ld bc, $2900
    ld [hl], l
    ld a, a
    dec bc
    inc d
    ld bc, $1502
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    dec b
    ld [$0c28], sp
    ld [bc], a
    nop
    nop
    inc bc
    rla
    add hl, de
    dec c
    dec bc
    add hl, bc
    ld [de], a
    ld de, $000f
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0301
    ld bc, $0101
    ld bc, $0301
    ld bc, $0200
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [$0e32], sp
    ld [bc], a
    ld bc, $3500
    jr c, @+$62

    ld c, $0f
    ld de, $090c
    dec c
    ld bc, $0101
    nop
    nop
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [$0a23], sp
    ld [bc], a
    nop
    nop
    nop
    ld d, [hl]
    ld a, [hl]
    inc c
    ld a, [bc]
    ld c, $06
    ld de, $020c
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0201
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    inc b
    ld [$0823], sp
    ld [bc], a
    nop
    nop
    inc [hl]

Call_003_624e:
    dec [hl]
    adc a
    db $10
    dec c
    dec b
    ld c, $0e
    rlca
    nop
    nop
    nop
    ld bc, $0201
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    inc bc
    ld [$0c32], sp
    ld [bc], a
    nop
    nop
    add hl, bc
    inc d
    sub l
    ld [$0b17], sp
    inc c
    inc bc
    inc de
    nop
    nop
    nop
    ld bc, $0201
    nop
    nop
    ld [bc], a
    ld bc, $0001
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    inc bc
    ld [$081e], sp
    ld [bc], a
    nop
    nop
    inc d
    ld b, d
    sub $09
    dec c
    ld c, $11
    rlca
    dec bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0002
    nop
    ld bc, $0000
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0001
    inc bc
    ld [$0e2d], sp
    ld [bc], a
    nop
    nop
    daa
    add hl, hl
    jr c, jr_003_62e1

    dec bc
    ld [$0b06], sp
    inc de
    ld bc, $0101
    ld bc, $0201
    nop
    nop
    inc bc
    nop

jr_003_62e1:
    nop
    nop
    nop
    nop
    inc bc
    nop
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
    nop
    inc b
    ld [$0c2d], sp
    ld [bc], a
    nop
    nop
    dec hl
    ld b, b
    ld c, b
    ld c, $04
    inc d
    dec d
    ld a, [bc]
    dec c
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0301
    nop
    nop
    ld bc, $0000
    inc bc
    nop
    nop
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [$0828], sp
    ld [bc], a
    nop
    nop
    ld d, d
    ld a, e
    adc h
    ld [$0b0d], sp
    ld c, $07
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
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
    nop
    inc bc
    ld [$0b23], sp
    ld [bc], a
    nop
    nop
    jr jr_003_636a

    inc e
    ld c, $11
    inc c
    inc c
    ld [$000e], sp
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0002
    nop
    ld bc, $0000
    ld [bc], a
    nop
    nop
    ld [bc], a

jr_003_636a:
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    ld bc, $0001
    inc b
    ld [$0f2d], sp
    ld [bc], a
    nop
    nop
    ccf
    ld e, e
    ld [hl], d
    ld [de], a
    dec c
    inc d
    rla
    add hl, bc
    ld a, [bc]
    ld bc, $0101
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0203
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $08
    inc hl
    dec c
    ld [bc], a
    nop
    nop
    ld b, $0f
    ld c, a
    dec d
    dec bc
    rla
    dec d
    ld [de], a
    inc de
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0201
    ld bc, $0101
    ld bc, $0201
    ld bc, $0200
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld b, $08
    ld e, $0b
    ld [bc], a
    ld bc, $1a00
    ld c, h
    ld l, c
    ld [$0903], sp
    dec bc
    inc c
    ld b, $00
    nop
    ld bc, $0001
    ld [bc], a
    nop
    ld bc, $0102
    ld bc, $0001
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0001
    inc b
    ld [$0932], sp
    ld [bc], a
    ld bc, $1e00
    ld [hl+], a
    dec h
    inc c
    ld [de], a
    add hl, bc
    inc de
    dec c
    rrca
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0002
    nop
    ld [bc], a
    ld bc, $0001
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc bc
    ld [$0d28], sp
    ld [bc], a
    nop
    nop
    ld d, b
    ld d, l
    ld d, a
    inc c
    dec b
    dec d
    ld d, $18
    ld de, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0302
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0202
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld [$0b28], sp
    ld [bc], a
    ld bc, $1200
    dec d
    ccf
    ld [de], a
    inc de
    rrca
    ld [de], a
    add hl, bc
    inc de
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0301
    ld bc, $0200
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_003_6473:
    nop
    nop
    inc bc
    ld [$0928], sp
    ld [bc], a
    ld bc, $4300
    ld e, h
    ld h, b
    dec c
    rrca
    dec bc
    ld c, $14
    ld [de], a
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0002
    nop
    ld [bc], a

Jump_003_648e:
    nop
    nop
    nop
    nop
    ld bc, $0002
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
    nop
    inc b
    ld [$0d28], sp
    ld [bc], a
    nop
    nop
    nop
    ld e, h
    adc b
    ld [de], a
    inc c
    ld de, $0418
    rlca
    inc bc
    inc bc
    ld bc, $0002
    ld bc, $0000
    inc bc
    nop
    nop
    ld bc, $0000
    inc bc
    nop
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $08
    jr z, @+$0f

    ld [bc], a
    nop
    nop
    inc c
    ld h, b
    adc [hl]
    db $10
    ld b, $12
    jr jr_003_64de

    rlca
    ld bc, $0101

jr_003_64de:
    ld [bc], a
    nop
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $0300
    nop
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $08
    jr z, @+$0d

    ld [bc], a
    ld bc, $0000
    ld [de], a
    scf
    add hl, de
    ld a, [bc]
    inc d
    inc c
    ld bc, $0014
    nop
    ld bc, $0102
    ld [bc], a
    ld bc, $0301
    ld bc, $0101
    ld bc, $0301
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $08
    jr z, jr_003_652d

    ld [bc], a
    nop
    nop
    ld [hl], l
    ld [hl], a
    sub h
    inc c
    inc bc

jr_003_652d:
    dec c
    ld c, $01
    rrca
    nop
    nop
    ld bc, $0001
    inc bc
    ld bc, $0300
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [$1228], sp
    ld [bc], a
    nop
    nop
    ld b, c
    ld d, [hl]
    adc [hl]
    ld de, $0c04
    dec d
    inc b
    ld b, $00
    nop
    ld bc, $0001
    inc bc
    ld bc, $0301
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    dec b
    ld [$0f32], sp
    ld [bc], a
    nop
    nop
    adc b
    adc a
    sub e
    jr jr_003_658d

    rla
    jr @+$03

    ld c, $01
    ld bc, $0101
    nop
    inc bc

jr_003_658d:
    ld bc, $0301
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    ld bc, $0003
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    ld b, $08
    ld [hl-], a
    ld c, $02
    nop
    nop
    inc d
    ld [hl-], a
    sub e
    rrca
    dec bc
    ld de, $0014
    dec c
    ld bc, $0001
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0103
    ld bc, $0101
    ld bc, $0003
    ld bc, $0102
    ld bc, $0001
    nop
    nop
    ld bc, $0001
    dec b
    ld [$1250], sp
    ld bc, $0000
    ld h, l
    add c
    add h
    jr @+$17

    jr @+$1d

    ld de, $0217
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0202
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    ld b, $09
    ld [hl-], a
    jr jr_003_65fd

jr_003_65fd:
    nop
    nop
    inc bc
    sub e
    push de
    inc d
    ld e, $15
    inc d
    rla
    rla
    ld bc, $0001
    nop
    nop
    ld bc, $0303
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld b, $09
    ld d, b
    add hl, de
    nop
    nop
    nop
    ccf
    ld e, h
    add c
    dec d
    ld e, $18
    dec d
    rla
    dec d
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0202
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld b, $09
    ld b, [hl]
    jr jr_003_6653

jr_003_6653:
    nop
    nop
    inc bc
    ld b, $84
    inc de
    ld e, $14
    dec d
    rla
    rla
    ld bc, $0101
    ld bc, $0100
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0000
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    ld b, $09
    ld d, b
    add hl, de
    nop
    ld bc, $5c00
    ld h, b
    ld h, h
    jr @+$20

    jr jr_003_669c

    rla
    rla
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0000
    inc bc

jr_003_669c:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0600
    add hl, bc
    ld b, [hl]
    jr jr_003_66a9

jr_003_66a9:
    nop
    nop
    ld b, $5b
    ld h, h
    inc d
    ld e, $14
    inc d
    ld d, $15
    ld bc, $0101
    ld [bc], a
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld b, $09
    ld d, b
    add hl, de
    nop
    nop
    nop
    ld h, b
    ld h, l
    add b
    jr @+$20

    ld a, [de]
    dec d
    rla
    rla
    ld bc, $0302
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0600
    add hl, bc
    ld b, [hl]
    jr jr_003_66ff

jr_003_66ff:
    nop
    nop
    ld d, b
    ld e, h
    ld h, h
    dec d
    ld e, $1a
    dec d
    rla
    rla
    ld bc, $0101
    ld bc, $0200
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc

Jump_003_6719:
    ld bc, $0000
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0600
    add hl, bc
    ld d, b
    rra
    nop
    nop
    nop
    ld d, a
    add b
    reti


    dec e
    ld e, $1a
    jr jr_003_674b

    rla
    ld bc, $0202
    ld [bc], a
    nop
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0102
    inc bc
    ld [bc], a
    inc bc
    inc bc

jr_003_674b:
    inc bc
    inc bc
    ld bc, $0001
    ld b, $09
    ld b, [hl]
    ld e, $00
    nop
    nop
    nop
    ld b, $0f
    dec d
    ld e, $1a
    dec d
    rla
    rla
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld b, $09
    ld d, b
    rra
    nop
    nop
    nop
    ld b, e
    ld e, h
    add b
    dec e
    ld e, $1a
    dec d
    rla
    rla
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0103
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld b, $09
    ld b, [hl]
    inc e
    nop
    nop
    nop
    ld e, h
    ld h, b
    ld l, h
    dec d
    ld e, $1a
    jr jr_003_67cc

    rla
    ld bc, $0101
    inc bc
    nop
    ld bc, $0303
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc

jr_003_67cc:
    inc bc
    inc bc
    nop
    nop
    nop
    ld b, $09
    inc a
    dec de
    nop
    ld bc, $6400
    ld h, l
    add h
    dec d
    ld e, $1a
    dec d
    rla
    rla
    ld bc, $0202
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0000
    ld b, $09
    ld b, [hl]
    dec e
    nop
    nop
    nop
    inc a
    ld e, h
    add d
    jr @+$20

    ld a, [de]
    dec d
    rla
    rla
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0600
    add hl, bc
    ld d, b
    rra
    nop
    ld bc, $5400
    ld h, l
    add b
    dec e
    ld e, $1e
    jr jr_003_684d

    rla
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0202
    inc bc
    inc bc
    inc bc
    inc bc

jr_003_684d:
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    ld b, $09
    ld d, b
    ld e, $00
    nop
    nop
    rrca
    ld e, h
    ld h, b
    rra
    ld e, $1f
    jr jr_003_6878

    rla
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc

jr_003_6878:
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rlca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0102
    ld bc, $0100
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0201
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0001
    inc bc
    nop
    ld bc, $0000
    ld bc, $0001
    rlca
    add hl, bc
    nop

Jump_003_68ab:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0700
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld bc, $0100
    ld bc, $0001
    nop
    inc bc
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    rlca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0102
    inc bc
    nop
    ld bc, $0202
    inc bc
    ld bc, $0101
    nop
    ld bc, $0000
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    ld bc, $0700
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    rlca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0201
    ld [bc], a
    ld bc, $0001
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    nop
    rlca

Call_003_6980:
    ld de, $da62
    call Call_003_6987
    ret


Call_003_6987:
    push de
    ld a, [$da5e]
    ld c, $0c
    call Call_000_1dbe
    ld a, l
    add $da
    ld l, a
    ld a, h
    adc $71
    ld h, a
    pop de
    ld b, $0c

jr_003_699b:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_699b

    ret


    ld a, [$da5e]
    cp $ff
    ret z

    ld a, [$da5e]
    rst $00

Jump_003_69ac:
    inc b
    ld l, d
    dec b
    ld l, d
    dec b
    ld l, d
    inc l
    ld l, d
    inc l
    ld l, d
    add hl, hl
    ld l, e
    add hl, hl
    ld l, e
    ld d, b
    ld l, e
    ld h, [hl]
    ld l, e
    ld a, h
    ld l, e
    sub d
    ld l, e
    xor b
    ld l, e
    cp [hl]
    ld l, e
    ret nc

    ld l, e
    db $e4
    ld l, e

Call_003_69ca:
    ld hl, sp+$6b
    inc c
    ld l, h
    jr nz, @+$6e

    inc [hl]
    ld l, h
    ld c, b
    ld l, h
    ld c, b
    ld l, h
    ld c, b
    ld l, h
    ld c, b
    ld l, h
    ld c, b
    ld l, h
    ld c, h
    ld l, h
    ld c, h
    ld l, h
    ld c, h
    ld l, h
    ld c, h
    ld l, h
    ld c, h
    ld l, h
    ld c, h
    ld l, h
    ld c, h
    ld l, h
    ld c, l
    ld l, h
    ld h, e
    ld l, h
    ld a, b
    ld l, h
    adc [hl]
    ld l, h
    and e
    ld l, h
    cp c
    ld l, h
    adc $6c
    rst $08
    ld l, h
    ret nz

    ld l, l
    call $df6d
    ld l, l
    rst $18
    ld l, l
    ld [$c96d], a
    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb13
    call Call_000_224f
    push bc
    ld a, [$da60]
    ld hl, $cb11
    call Call_000_224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    ld a, [$ca8d]
    or a
    jp z, Jump_003_6ab9

    ld a, $00
    ld hl, $cb0b
    call Call_000_224a
    bit 7, a
    jr nz, jr_003_6a5b

    ld a, $00
    ld hl, $cb13
    call Call_000_224f
    push bc
    ld a, $00
    ld hl, $cb11
    call Call_000_224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    jr nz, jr_003_6abf

jr_003_6a5b:
    ld a, [$ca8d]
    cp $01
    jr z, jr_003_6ab9

    ld a, $01
    ld hl, $cb0b
    call Call_000_224a
    bit 7, a
    jr nz, jr_003_6a8a

    ld a, $01
    ld hl, $cb13
    call Call_000_224f
    push bc
    ld a, $01
    ld hl, $cb11
    call Call_000_224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    jr nz, jr_003_6abf

jr_003_6a8a:
    ld a, [$ca8d]
    cp $02
    jr z, jr_003_6ab9

    ld a, $02
    ld hl, $cb0b
    call Call_000_224a
    bit 7, a
    jr nz, jr_003_6ab9

    ld a, $02
    ld hl, $cb13
    call Call_000_224f
    push bc
    ld a, $02
    ld hl, $cb11
    call Call_000_224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    jr nz, jr_003_6abf

Jump_003_6ab9:
jr_003_6ab9:
    ld a, $ff
    ld [$da5e], a
    ret


jr_003_6abf:
    ld d, $00
    ld a, $00
    call Call_003_6ad7
    ld a, $01
    call Call_003_6ad7
    ld a, $02
    call Call_003_6ad7
    ld a, $26
    add d
    ld [$da6a], a
    ret


Call_003_6ad7:
    ld [$da60], a
    ld hl, $ca8d
    cp [hl]
    ret nc

    push de
    ld hl, $cb0b
    call Call_000_224a
    bit 7, a
    pop de
    ret nz

    push de
    ld a, [$da60]
    ld hl, $cb13
    call Call_000_224f
    push bc
    ld a, [$da60]
    ld hl, $cb11
    call Call_000_224f
    pop hl
    pop de
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    ret z

    push de
    ld a, d
    swap a
    ld hl, $c1b0
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    push hl
    ld a, [$da60]
    ld hl, $cac2
    call Call_000_2229
    ld e, l
    ld d, h
    pop hl
    call Call_000_0c80
    pop de
    inc d
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb17
    call Call_000_224f
    push bc
    ld a, [$da60]
    ld hl, $cb15
    call Call_000_224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb0b
    call Call_000_224a
    bit 2, a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb0b
    call Call_000_224a
    bit 3, a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb0b
    call Call_000_224a
    bit 4, a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb0b
    call Call_000_224a
    bit 0, a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb0b
    call Call_000_224a
    bit 1, a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    ld a, [$da60]
    ld hl, $cb0b
    call Call_000_224a
    bit 7, a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb13
    call Call_000_224f
    ld hl, $03e7
    call Call_003_7110
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb17
    call Call_000_224f
    ld hl, $03e7
    call Call_003_7110
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb19
    call Call_000_224f
    ld hl, $03e7
    call Call_003_7110
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb1b
    call Call_000_224f
    ld hl, $03e7
    call Call_003_7110
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb1d
    call Call_000_224f
    ld hl, $01ff
    call Call_003_7110
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb1f
    call Call_000_224f
    ld hl, $00ff
    call Call_003_7110
    ret


    call Call_003_6e11
    ret nz

    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb25
    call Call_000_224a
    cp $ff
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb25
    call Call_000_224a
    or a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb26
    call Call_000_224a
    cp $ff
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb26
    call Call_000_224a
    or a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb28
    call Call_000_224a
    cp $ff
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb28
    call Call_000_224a
    or a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    ret


    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, l
    and $f0
    ld l, a
    ld a, [$c966]
    ld e, a
    ld a, [$c967]
    ld d, a
    ld a, e
    and $f0
    ld e, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    jr nc, jr_003_6cf7

    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    cpl
    adc $00
    ld h, a

jr_003_6cf7:
    ldh a, [$92]
    ld e, a
    ldh a, [$93]
    ld d, a
    ld a, e
    and $f0
    ld e, a
    ld a, [$c964]
    ld c, a
    ld a, [$c965]
    ld b, a
    ld a, c
    and $f0
    ld c, a
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld d, a
    jr nc, jr_003_6d1f

    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a

jr_003_6d1f:
    push hl
    push de
    ld a, h
    or a
    jr nz, jr_003_6d44

    ld a, d
    or a
    jr nz, jr_003_6d44

    ld a, l
    cp $20
    jr nz, jr_003_6d37

    ld a, e
    cp $50
    jr c, jr_003_6d44

    ld b, $00
    jr jr_003_6d64

jr_003_6d37:
    cp $10
    jr nz, jr_003_6d44

    ld a, e
    cp $30
    jr c, jr_003_6d44

Jump_003_6d40:
    ld b, $00
    jr jr_003_6d64

jr_003_6d44:
    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, [$c966]
    ld e, a
    ld a, [$c967]
    ld d, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld b, $06
    jr c, jr_003_6d64

    ld a, h
    or l
    ld b, $03
    jr nz, jr_003_6d64

    ld b, $00

jr_003_6d64:
    pop de
    pop hl
    ld a, h
    or a
    jr nz, jr_003_6d89

    ld a, d
    or a
    jr nz, jr_003_6d89

    ld a, e
    cp $20
    jr nz, jr_003_6d7c

    ld a, l
    cp $50
    jr c, jr_003_6d89

    ld a, $00
    jr jr_003_6da9

jr_003_6d7c:
    cp $10
    jr nz, jr_003_6d89

    ld a, l
    cp $30
    jr c, jr_003_6d89

    ld a, $00
    jr jr_003_6da9

jr_003_6d89:
    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    ld a, [$c964]
    ld e, a
    ld a, [$c965]
    ld d, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, $02
    jr c, jr_003_6da9

    ld a, h
    or l
    ld a, $01
    jr nz, jr_003_6da9

    ld a, $00

jr_003_6da9:
    add b
    add $3a
    ld l, a
    ld h, $02
    ld de, $c1b0
    call Call_000_097a
    ld a, [$c969]
    or a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    ld a, [$c969]
    or a
    jr z, jr_003_6dc7

    ret


jr_003_6dc7:
    ld a, $ff
    ld [$da5e], a
    ret


    ld a, [$c93e]
    bit 1, a
    jr nz, jr_003_6dd9

    ld a, [$c969]
    or a
    ret nz

jr_003_6dd9:
    ld a, $ff
    ld [$da5e], a
    ret


    ld a, [$c969]
    or a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    ld a, [$c969]
    or a
    ret nz

    ld a, [$c968]
    cp $53
    jr c, jr_003_6e0b

    cp $5a
    jr z, jr_003_6e0b

    cp $5b
    jr z, jr_003_6e0b

    cp $5c
    jr z, jr_003_6e0b

    cp $5d
    jr z, jr_003_6e0b

    cp $60
    jr z, jr_003_6e0b

    ret


jr_003_6e0b:
    ld a, $ff
    ld [$da5e], a
    ret


Call_003_6e11:
    ld a, [$da60]
    ld hl, $cb0b
    call Call_000_224a
    bit 7, a
    ret z

    ld a, $ff
    ld [$da5e], a
    or a
    ret


    ld a, [$da5e]
    cp $ff
    ret z

    call Call_003_6980
    ld a, [$da5e]
    rst $00
    adc c
    ld l, [hl]
    adc d
    ld l, [hl]
    adc d
    ld l, [hl]
    xor b
    ld l, [hl]
    rst $18
    ld l, [hl]
    ld de, $2f6f
    ld l, a
    ld b, l
    ld l, a
    ld d, h
    ld l, a
    ld h, e
    ld l, a
    ld [hl], d
    ld l, a
    add c
    ld l, a
    sub b
    ld l, a
    or l
    ld l, a
    push bc
    ld l, a
    push de
    ld l, a
    push hl
    ld l, a
    push af
    ld l, a
    dec b
    ld [hl], b
    dec d
    ld [hl], b
    dec d
    ld [hl], b
    dec d
    ld [hl], b
    dec h
    ld [hl], b
    ld b, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, c
    ld [hl], b
    ld d, d
    ld [hl], b
    ld d, e
    ld [hl], b
    ld d, h
    ld [hl], b
    ld d, l
    ld [hl], b
    ld e, c
    ld [hl], b
    ld e, d
    ld [hl], b
    ld l, d
    ld [hl], b
    ld a, d
    ld [hl], b
    adc d
    ld [hl], b
    sbc d
    ld [hl], b
    xor d
    ld [hl], b
    cp d
    ld [hl], b
    cp e
    ld [hl], b
    cp a
    ld [hl], b
    jp $cc70


    ld [hl], b
    and $70
    push af
    ld [hl], b
    ret


    call Call_000_12d0
    ld a, [$c899]
    ld b, a
    ld a, $0b
    call Call_000_1dfb
    ld b, a
    ld a, [$da6b]
    add b
    ld l, a
    ld h, $00
    ld a, [$da60]
    call Call_000_22a0
    call Call_003_7134
    ret


    ld a, $00
    ld [$da60], a
    call Call_003_6ec4
    ld a, $01
    ld [$da60], a
    call Call_003_6ec4
    ld a, $02
    ld [$da60], a
    call Call_003_6ec4
    call Call_003_7134
    ret


Call_003_6ec4:
    call Call_000_12d0
    ld a, [$c899]
    ld b, a
    ld a, $0b
    call Call_000_1dfb
    ld b, a
    ld a, [$da6b]
    add b
    ld l, a
    ld h, $00
    ld a, [$da60]
    call Call_000_22a0
    ret


    ld a, $00
    call Call_003_6ef2
    ld a, $01
    call Call_003_6ef2
    ld a, $02
    call Call_003_6ef2
    call Call_003_7134
    ret


Call_003_6ef2:
    ld hl, $ca8d
    cp [hl]
    ret nc

    ld [$da60], a
    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb13
    call Call_000_224f
    ld a, [$da60]
    ld hl, $cb11
    call Call_000_225d
    ret


    call Call_000_12d0
    ld a, [$c899]
    ld b, a
    ld a, $0b
    call Call_000_1dfb
    ld b, a
    ld a, [$da6b]
    add b
    ld l, a
    ld h, $00
    ld a, [$da60]
    call Call_000_22d2
    call Call_003_7134
    ret


    ld a, [$da60]
    ld hl, $cb17
    call Call_000_224f
    ld a, [$da60]
    ld hl, $cb15
    call Call_000_225d
    call Call_003_7134
    ret


    ld a, [$da60]
    ld hl, $cb0b
    call Call_000_2229
    res 2, [hl]
    call Call_003_7134
    ret


    ld a, [$da60]
    ld hl, $cb0b
    call Call_000_2229
    res 3, [hl]
    call Call_003_7134
    ret


    ld a, [$da60]
    ld hl, $cb0b
    call Call_000_2229
    res 4, [hl]
    call Call_003_7134
    ret


    ld a, [$da60]
    ld hl, $cb0b
    call Call_000_2229
    res 0, [hl]
    call Call_003_7134
    ret


    ld a, [$da60]
    ld hl, $cb0b
    call Call_000_2229
    res 1, [hl]
    call Call_003_7134
    ret


    ld a, [$da60]
    ld hl, $cb0b
    call Call_000_2229
    ld [hl], $00
    ld a, [$da60]
    ld hl, $cb13
    call Call_000_224f
    ld a, [$da60]
    ld hl, $cb11
    call Call_000_225d
    ld hl, $0103
    rst $10
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call Call_000_23e6
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call Call_000_2400
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call Call_000_2304
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call Call_000_231e
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call Call_000_2338
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call Call_000_2352
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call Call_000_2379
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call Call_000_2379
    ld a, [$da60]
    ld hl, $cb0b
    call Call_000_2229
    set 2, [hl]
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call Call_000_2379
    call Call_003_7134
    ret


    ret


    ret


    ret


    ret


    ret


    call Call_003_7134
    ret


    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call Call_000_2386
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call Call_000_2392
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call Call_000_23ce
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call Call_000_23da
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call Call_000_239e
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call Call_000_23aa
    call Call_003_7134
    ret


    ret


    call Call_003_7134
    ret


    call Call_003_7134
    ret


    ld hl, $c93e
    set 1, [hl]
    call Call_003_7134
    ret


    ld hl, $010b
    rst $10
    ld hl, wGameState
    set 6, [hl]
    xor a
    ld [$c905], a
    ld a, $00
    ld [$da09], a
    ld hl, $c90d
    inc [hl]
    call Call_003_7134
    ret


    ld hl, $c950
    ld bc, $0010
    ld a, $01
    call Call_000_12c7
    call Call_003_7134
    ret


    ld a, [$c83c]
    or a
    jr nz, jr_003_710f

    call Call_003_7134
    di
    call Call_000_2128
    ei
    ld a, $59
    call Call_000_1b2c
    ld h, $0d
    ld l, $2f
    call Call_000_096d

jr_003_710f:
    ret


Call_003_7110:
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    jr z, jr_003_712e

    ld a, h
    or a
    ld a, [$da6b]
    jr nz, jr_003_7127

    cp l
    jr z, jr_003_7127

    jr c, jr_003_7127

    ld a, l

jr_003_7127:
    ld hl, $c1b0
    call Call_000_09a4
    ret


jr_003_712e:
    ld a, $ff
    ld [$da5e], a
    ret


Call_003_7134:
    call Call_000_12d0
    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    ld a, $64
    call Call_000_1e0d
    ld hl, $da65
    cp [hl]
    ret nc

    ld a, $ff
    ld [$da5e], a
    ld a, [$da5f]
    ld hl, $ca51
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $ff
    call Call_003_7160
    ret


Call_003_7160:
    ld hl, $c0d8
    ld de, $ca51
    ld b, $14

jr_003_7168:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_003_7168

    ld hl, $ca51
    ld bc, $0014
    ld a, $ff
    call Call_000_12c7
    ld hl, $c0d8
    ld de, $ca51
    ld b, $14

jr_003_7181:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_718c

    cp $00
    jr z, jr_003_718c

    ld [de], a
    inc de

jr_003_718c:
    dec b
    jr nz, jr_003_7181

    ret


    ld a, [$da5e]
    cp $00
    ret z

    cp $ff
    ret z

    ld hl, $ca51
    ld b, $14

jr_003_719e:
    ld a, [hl]
    cp $00
    jr z, jr_003_71b1

    cp $ff
    jr z, jr_003_71b1

    inc hl
    dec b
    jr nz, jr_003_719e

    ld a, $ff
    ld [$da5e], a
    ret


jr_003_71b1:
    ld a, [$da5e]
    ld [hl], a
    ret


    ld a, [$da5e]
    cp $00
    ret z

    cp $ff
    ret z

    ld hl, $ca51
    ld b, $14

jr_003_71c4:
    ld a, [$da5e]
    cp [hl]
    jr z, jr_003_71d4

    inc hl
    dec b
    jr nz, jr_003_71c4

    ld a, $ff
    ld [$da5e], a
    ret


jr_003_71d4:
    ld [hl], $ff
    call Call_003_7160
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
    ld [$6400], sp
    nop
    inc b
    nop
    inc bc
    inc b
    ld e, $28
    nop
    nop
    ld d, b
    nop
    ld h, h
    nop
    inc b
    ld bc, $0403
    inc a
    ld b, [hl]
    nop
    nop
    add sp, $03
    inc d
    ld [bc], a
    dec b
    nop
    dec b
    inc b
    dec l
    scf
    nop
    nop
    db $f4
    ld bc, $0064
    dec b
    ld bc, $0406
    rst $38
    rst $38
    nop
    nop
    ret z

    nop
    ld h, h
    nop
    inc b
    ld bc, $0703
    inc d
    ld e, $00
    nop
    ret nc

    rlca
    ld h, h
    nop
    inc b
    ld bc, $0703
    rst $38
    rst $38
    nop
    ld bc, $000a
    ld h, h
    nop
    inc b
    nop
    inc bc
    ld [$0000], sp
    nop
    ld bc, $001e
    ld h, h
    nop
    inc b
    nop
    inc bc
    add hl, bc
    nop
    nop
    nop
    ld bc, $0032
    ld h, h
    nop
    inc b
    ld [bc], a
    inc bc
    ld a, [bc]
    nop
    nop
    nop
    ld bc, $0050
    ld h, h
    nop
    inc b
    ld b, $06
    dec bc
    nop
    nop
    nop
    ld bc, $0032
    ld h, h
    nop
    inc b
    ld bc, $0c03
    nop
    nop
    nop
    ld bc, $03e8
    ld h, h
    nop
    inc b
    nop
    inc bc
    dec c
    nop
    nop
    nop
    ld [bc], a
    ld a, [de]
    nop
    ld h, h
    nop
    inc b
    inc bc
    inc bc
    ld c, $05
    nop
    nop
    ld [bc], a
    ld e, $00
    ld h, h
    nop
    inc b
    inc bc
    inc bc
    rrca
    dec b
    nop
    nop
    ld [bc], a
    ld d, $00
    ld h, h
    nop
    inc b
    inc bc
    inc bc
    db $10
    inc bc
    nop
    nop
    ld [bc], a
    ld d, $00
    ld h, h
    nop
    inc b
    inc bc
    inc bc
    ld de, $0003
    nop
    ld [bc], a
    ld [de], a
    nop
    ld h, h
    nop
    inc b
    inc bc
    inc bc
    ld [de], a
    inc bc
    nop
    nop
    ld [bc], a
    rrca
    nop
    ld h, h
    nop
    inc b
    inc bc
    inc bc
    inc de
    inc bc
    nop
    nop
    inc bc
    inc d
    nop
    ld h, h
    nop
    inc b
    inc b
    inc d
    dec d
    dec b
    ld a, [bc]
    nop
    inc bc
    ld d, b
    nop
    ld h, h
    nop
    inc b
    inc b
    inc d
    dec d
    ld a, [bc]
    ld e, $00
    inc bc
    inc l

jr_003_72d8:
    ld bc, $0064
    inc b
    inc b
    inc d
    dec d
    inc d
    ld h, h
    nop
    inc bc
    inc d
    nop
    ld h, h
    nop
    inc b
    inc b
    inc d
    ld d, $05
    dec b
    ld bc, $e803
    inc bc
    ld h, h
    nop
    inc b
    inc b
    inc d
    dec d
    ld h, h
    rst $38
    nop
    inc b
    cp b
    dec bc
    inc d
    ld [bc], a
    inc bc
    dec b
    rla
    jr jr_003_7327

    ld [hl-], a
    nop
    inc b
    call c, $0a05
    ld [bc], a
    inc bc
    dec b
    rla
    add hl, de
    ld [$0018], sp
    inc b
    cp h
    ld [bc], a
    inc d
    ld [bc], a
    inc bc
    dec b
    rla
    ld a, [de]
    nop
    nop
    nop
    inc b
    ret nc

    rlca
    inc d
    ld [bc], a
    inc bc
    dec b
    rla
    dec de

jr_003_7327:
    ld e, $2a
    nop
    inc b
    and b
    rrca
    inc d
    ld [bc], a
    inc bc
    dec b
    rla
    inc e
    ld a, b
    adc h
    nop
    dec b
    ld h, h
    nop
    ld h, h
    ld bc, $0607
    dec e
    nop
    nop
    nop
    nop
    ld b, $01
    nop
    ld h, h
    inc bc
    rlca
    rlca
    ld e, $00
    nop
    nop
    dec b
    ld [bc], a
    adc b
    inc de
    ld h, h
    ld bc, $0000
    rra
    jr nz, jr_003_72d8

    add b
    nop
    ld [bc], a
    adc b
    inc de
    ld h, h
    ld bc, $0000
    rra
    ld hl, $8080
    nop
    ld [bc], a
    adc b
    inc de
    ld h, h
    ld bc, $0000
    rra
    ld [hl+], a
    add b
    add b
    nop
    ld [bc], a
    adc b
    inc de
    ld h, h
    ld bc, $0000
    rra
    inc hl
    add b
    add b
    nop
    ld [bc], a
    adc b
    inc de
    ld h, h
    ld bc, $0000
    rra
    inc h
    add b
    add b
    nop
    ld [bc], a
    adc b
    inc de
    ld h, h
    ld bc, $0000
    rra
    dec h
    add b
    add b
    nop
    inc b
    adc b
    inc de
    inc d
    ld [bc], a
    ld [bc], a
    dec b
    rla
    ld h, $b4
    ret z

    nop
    rlca
    sub b
    ld bc, $0100
    ld bc, $1e07
    ld a, [hl+]
    nop
    nop
    inc b
    rlca
    ld h, h
    nop
    ld h, h
    ld bc, $0701
    ld e, $00
    nop
    nop
    inc b
    rlca
    ret z

    nop
    ld h, h
    ld bc, $0701
    ld e, $2b
    nop
    nop
    nop
    rlca
    cp b
    dec bc
    nop
    ld bc, $0701
    inc l
    nop
    nop
    nop
    inc b
    rlca
    ld b, [hl]
    nop
    ld h, h
    ld bc, $0701
    ld e, $2d
    nop
    nop
    nop
    rlca
    ld h, h
    nop
    ld h, h
    ld bc, $0707
    ld e, $2e
    nop
    nop
    inc b
    xor a
    ld [$cdc7], a
    call Call_003_7409
    ld hl, $cdc1
    ld b, $05

jr_003_73f6:
    ld a, [hl+]
    inc a
    jp nz, $68c1

    dec b
    jr nz, jr_003_73f6

    ld a, $40
    ld [$cd80], a
    ld a, $12
    ld [$ccb4], a
    ret


Call_003_7409:
    ld a, [$cdc0]
    rst $00
    dec d
    ld [hl], h
    dec d
    ld [hl], h
    ld l, $74
    dec a
    ld [hl], h

Call_003_7415:
    ld hl, $cb08
    ld de, $cdc1

Call_003_741b:
Jump_003_741b:
    ld c, [hl]
    dec h
    dec h
    dec h
    dec h
    ld b, [hl]
    dec h
    dec h
    dec h
    dec h
    ld a, [hl]

Call_003_7426:
Jump_003_7426:
    call Call_003_745a
    sub $52
    ld [de], a
    inc e
    ret


Call_003_742e:
    call Call_003_7415
    ld hl, $ca08
    call Call_003_741b
    ld hl, $cc08
    jp Jump_003_741b


    call Call_003_742e
    ld hl, $cc08
    ld c, [hl]
    ld h, $c7
    ld b, [hl]
    ld h, $c2
    ld a, [hl]
    call Call_003_7426
    ld hl, $ca08
    ld c, [hl]
    ld h, $c7
    ld b, [hl]
    ld h, $c4
    ld a, [hl]
    jp Jump_003_7426


Call_003_745a:
    cp b
    jr nz, jr_003_7461

    cp c
    jr nz, jr_003_7461

    ret


jr_003_7461:
    cp $57
    jr nz, jr_003_746b

    cp b
    jr nz, jr_003_746e

    ld a, $58
    ret


jr_003_746b:
    ld a, $51
    ret


jr_003_746e:
    ld a, $59
    ret


Call_003_7471:
    ld a, [$c982]
    bit 4, a
    jr nz, jr_003_747b

    ld a, $10
    rst $28

jr_003_747b:
    jp $091e


    ld c, $c1
    ld hl, $d8b8

jr_003_7483:
    ld b, $cd
    ld a, [bc]
    inc a
    jp z, $68c1

jr_003_748a:
    push hl
    push af
    call Call_003_7471
    pop af
    call Call_003_74c7
    pop hl
    ld a, [$cdc7]
    cp $03
    ret nz

    call $091e

Jump_003_749d:
    xor a
    ld [$cdc7], a
    ld a, $10
    jp $68be


    ld c, $c2
    ld hl, $d8d8
    jr jr_003_7483

    ld c, $c3
    ld hl, $d8f8
    jr jr_003_7483

    ld c, $c4
    ld hl, $d918
    jr jr_003_7483

    ld a, [$cdc5]
    inc a
    jp z, Jump_003_749d

    ld hl, $d938
    jr jr_003_748a

Call_003_74c7:
    dec a
    ld b, a
    ld a, [$cdc7]
    rst $00
    push de
    ld [hl], h
    dec b
    ld [hl], l
    ld a, a
    ld [hl], l
    sub l
    ld [hl], l
    push bc
    scf
    ld a, b
    ld hl, $75a6
    rst $08
    call $091e
    pop bc
    ld a, b
    ld hl, $7596
    rst $08
    ld a, l
    ld [$cdc6], a
    ld a, h
    ld d, $cd
    rst $20
    ld bc, $101a
    call $05e2
    call Call_000_0693
    ld a, $27
    call Call_000_0515
    ld a, $80

Jump_003_74fd:
    ld [$cdc8], a

Jump_003_7500:
    ld hl, $cdc7
    inc [hl]
    ret


    ld a, [$cdc8]
    or a
    jr z, jr_003_7510

    dec a
    ld [$cdc8], a
    ret


jr_003_7510:
    ld a, [$c982]
    and $0f
    ret nz

    push bc
    ld bc, $9864
    ld hl, $cdc6
    ld a, [hl]
    or a
    jr z, jr_003_752a

    sub $01
    daa
    ld [hl], a
    call Call_000_0cb8
    xor a
    inc a

jr_003_752a:
    pop bc
    jr z, jr_003_753f

    ld a, b
    rst $00
    ld c, l
    ld [hl], l
    ld b, h
    ld [hl], l
    ld e, b
    ld [hl], l
    ld l, a
    ld [hl], l
    ld [hl], a
    ld [hl], l
    ld c, l
    ld [hl], l
    ld c, l
    ld [hl], l
    ld c, l
    ld [hl], l

jr_003_753f:
    ld a, $20
    jp Jump_003_74fd


    call $0be2
    ld bc, $9c46
    jp $0bf3


    ld a, $08
    call Call_000_0515
    ld bc, $9c85
    jp Jump_000_0c3a


    ld hl, $c9f1
    ld bc, $9c4b

jr_003_755e:
    push hl
    push bc
    ld b, $01
    call Call_000_0cac
    pop bc
    pop hl
    call Call_000_0cb8
    ld a, $14
    jp Jump_000_0515


    ld hl, $c9f3
    ld bc, $9c8b
    jr jr_003_755e

    ld hl, $c9f2
    ld bc, $9c6b
    jr jr_003_755e

    ld hl, $cdc8
    dec [hl]
    ret nz

    ld a, b
    ld hl, $75a6
    rst $08
    scf
    ccf
    call Call_000_091f
    xor a
    ld [$cd07], a
    jp Jump_003_7500


    ret


    ld d, b
    ld h, e
    inc bc
    nop
    dec b
    dec [hl]
    dec b
    scf
    dec b
    ld [hl], $10
    ld h, e
    dec b
    ld h, e
    ld [bc], a
    ld h, e
    jp c, $b675

    ld [hl], l
    ret z

    ld [hl], l
    ret z

    ld [hl], l
    ret z

    ld [hl], l
    adc $75
    ret z

    ld [hl], l
    call nc, Call_003_4175
    sbc b
    add hl, de
    inc e
    cp $61
    sbc b
    ld a, [de]
    dec e
    ld l, $01
    inc b
    cp $81
    sbc b
    dec de
    ld e, $ff
    ld h, e
    sbc b
    ld l, $01
    ld b, $ff
    ld h, e
    sbc b
    ld l, $02
    ld bc, $63ff
    sbc b
    ld l, $01
    inc bc
    rst $38
    ld h, e
    sbc b
    ld l, $06
    ld bc, $cdff
    sbc e
    dec bc
    ret nz

    call $720e
    ld a, $01
    ld [$ccb4], a
    ret


    ld a, [$c994]
    inc a
    ld [$c994], a
    cp $9f
    ret nz

    call $6c28
    jp $68c1


    call Call_003_69ca
    ld hl, $6f79
    jp z, $68f1

    ld a, [$ccb7]
    or a
    jp z, Jump_003_68ab

    call $6e9d
    xor a
    ld [$ccb7], a
    ld a, $21
    call Call_000_0515
    jp $68c1


    ld a, [$c994]
    dec a
    ld [$c994], a
    cp $38
    ret nz

    ld a, $01
    ld [$ccb4], a
    ret


    ld a, [$ccb4]
    rst $00
    ld b, h
    db $76
    bit 6, [hl]
    rst $10
    db $76
    ei
    db $76
    inc e
    ld [hl], a
    ld c, c
    ld [hl], a
    adc $77
    ld c, a
    ld a, b
    ld h, c
    ld a, b
    ld a, b
    ld a, b
    call $23dc
    call Call_000_1e96
    ld hl, $1f9f
    call Call_000_2042
    ld hl, $4768
    call $12d8
    ld hl, $47ac
    ld de, $9980
    call Call_000_1340

Jump_003_765f:
    xor a
    ld [$c983], a
    ld hl, $cdc2
    ld [hl+], a
    inc a
    ld [hl+], a
    ld a, $14
    ld [hl+], a
    ld a, $20
    ld hl, $cd80
    ld [hl], a
    call Call_003_7a6c
    xor a
    ld hl, $cdc1
    ld [hl], a
    call Call_003_7a8f
    ld d, $c0
    ld bc, $407c
    call $05e2
    xor a
    call Call_000_06ce
    call Call_003_7939
    call Call_000_0686
    ld d, $cc
    ld c, $06

jr_003_7693:
    call $07c1
    ld a, $5e
    rst $20
    ld a, $81
    call Call_000_068f
    inc d
    dec c
    jr nz, jr_003_7693

    ld d, $cc
    ld c, $50
    call Call_003_76bb
    ld c, $90
    call Call_003_76bb
    xor a
    call Call_003_7aa1
    call $1185
    call Call_000_1e8d
    jp $68c1


Call_003_76bb:
    ld e, $03
    ld b, $24

jr_003_76bf:
    call $05e2
    ld a, b
    add $30
    ld b, a
    inc d
    dec e
    jr nz, jr_003_76bf

    ret


    call Call_003_7a9c
    ret nz

    ld a, $58
    call $0510
    jp $68c1


    call Call_003_78b1
    call Call_003_794b
    call Call_003_7984
    call Call_003_7a48
    ld a, [hl]
    or a
    ret nz

    ld a, $55
    call $0510
    call $16a0
    ld a, $e0
    ld [$c00f], a
    ld a, $01
    call Call_003_7aa1
    jp $68c1


    call Call_003_7a9c
    ld hl, $cd98
    ld a, [hl]
    cp $04
    ret nz

    inc [hl]
    ld a, $10
    call Call_000_0515
    ld hl, $cdc1
    ld bc, $9c85
    call Call_003_7a92
    ld a, $03
    call Call_003_7aa1
    jp $68c1


    call Call_000_093d
    ret nz

    ld a, [$c987]
    and $10
    ret z

    call Call_000_0b3c
    ld hl, $7aa7
    ld a, [$cdc1]

jr_003_772f:
    cp [hl]
    inc hl
    jr nc, jr_003_7736

    inc hl
    jr jr_003_772f

jr_003_7736:
    ld a, [hl]
    ld [$cdc5], a
    ld bc, $5970
    or a
    jr nz, jr_003_7743

    ld bc, $597f

jr_003_7743:
    call $0935
    jp $68c1


    call Call_000_093d
    ret nz

    call Call_003_7756
    call Call_003_784a
    jp $68c1


Call_003_7756:
    ld a, [$cdc5]
    rst $00
    sub b
    ld [hl], a
    ld h, d
    ld [hl], a
    sub c
    ld [hl], a
    or a
    ld [hl], a
    ld a, [$c9c4]
    add $60
    call Call_003_7a30
    ld b, $01
    ld a, [$cdc1]
    sub $30
    daa

jr_003_7772:
    cp $05
    jr c, jr_003_777d

    sub $05
    daa
    inc b
    daa
    jr jr_003_7772

jr_003_777d:
    ld hl, $ccb9
    ld [hl], b
    ld bc, $9c66
    call Call_003_7a3e
    ld bc, $9c6d
    ld hl, $c9c3
    call Call_003_7a3e
    ret


    ld a, $05

jr_003_7793:
    ld hl, $ccb9
    ld [hl], a
    push hl
    ld a, [$c9c4]
    add $35
    call Call_003_7a30
    pop hl
    ld bc, $9c66
    call Call_003_7a3e
    ld bc, $9c6d
    call $04d0
    jp Jump_003_7a3e


jr_003_77b0:
    ld hl, $cdc5
    dec [hl]
    inc a
    jr jr_003_7793

    ld a, [$c9f0]
    ld hl, $c9c5
    sub [hl]
    jr z, jr_003_77b0

    ld a, $0b
    ld bc, $9c63
    call Call_000_0b07
    ld bc, $9c6a
    jp Jump_000_0d19


    call Call_000_0b9b
    ret nz

    ld a, [$cdc5]
    rst $00
    sbc $77
    db $e3
    ld [hl], a
    inc bc
    ld a, b
    inc hl
    ld a, b

Jump_003_77de:
jr_003_77de:
    ld a, $60
    jp $68be


    call Call_003_784a
    call $0be2
    ld bc, $9c6e
    call $0bf3

Jump_003_77ef:
    ld a, [$ccb9]
    dec a
    ld [$ccb9], a
    push af
    ld bc, $9c68
    inc a
    call Call_000_0b07
    pop af
    jp z, Jump_003_77de

    ret


    call $04d0
    cp $99
    jr z, jr_003_77de

    call Call_003_784a
    ld b, $01
    ld a, [$c9c4]
    call Call_000_0ca8
    ld bc, $9c6e
    call Call_000_0cb8
    ld a, $14
    call Call_000_0515
    jp Jump_003_77ef


    ld a, [$c9f0]
    ld hl, $c9c5
    cp [hl]
    jp z, Jump_003_6d40

    call Call_003_784a
    ld a, $15
    call Call_000_0515
    ld a, $01
    call Call_000_0cfd
    ld bc, $9c6a
    call Call_000_0d19
    ld bc, $9c63
    xor a
    call Call_000_0b07
    jp Jump_003_77de


Call_003_784a:
    ld a, $20
    jp Jump_000_0ba1


    call Call_000_0b9b
    ret nz

    call $16a0
    call Call_000_0b3c
    ld a, $02
    call Call_003_7aa1
    jp $68c1


    call Call_000_093d
    ret nz

    ld hl, $7ab3
    call $091e
    ld bc, $9c90
    call $0c0d
    xor a
    ld [$ccb7], a
    jp $68c1


    call Call_003_69ca
    ld hl, $7aaf
    jp z, $68f1

    ld a, $03
    ld [$cd98], a
    ld a, [$ccb7]
    and a
    jp z, Jump_003_78a8

    ld bc, $9c90
    ld a, [$ccb5]
    call Call_000_0c13
    jr c, jr_003_78a2

    call Call_000_0b3c
    xor a
    ld [$ccb4], a
    jp Jump_003_765f


jr_003_78a2:
    call Call_003_78ae
    jp Jump_003_69ac


Jump_003_78a8:
    call Call_003_78ae
    jp Jump_003_68ab


Call_003_78ae:
    jp $3bf0


Call_003_78b1:
    ld d, $c0
    call Call_003_792b
    ld e, $14
    call Call_000_1616
    call nz, Call_003_78d9
    call $161c
    call nz, Call_003_78f4
    ld e, $0f
    call $1622
    call nz, Call_003_790f
    call Call_000_1628
    call nz, Call_003_7918
    call Call_000_0541
    call nz, Call_003_791c
    ret


Call_003_78d9:
    call Call_003_7941
    ld a, [de]
    cp $70
    ret z

    call Call_000_0632
    jr nz, jr_003_78eb

    ld bc, $3000
    jp $05ea


jr_003_78eb:
    call Call_000_063b
    ld bc, $0800
    jp $05ea


Call_003_78f4:
    call Call_003_7941
    ld a, [de]
    cp $38
    ret z

    call Call_000_0632
    jr z, jr_003_7906

    ld bc, $d000
    jp $05ea


jr_003_7906:
    call Call_000_063b
    ld bc, $f800
    jp $05ea


Call_003_790f:
    ld a, $3c

jr_003_7911:
    push af
    call Call_003_7941
    pop af
    ld [de], a
    ret


Call_003_7918:
    ld a, $7c
    jr jr_003_7911

Call_003_791c:
    ld a, [$c018]
    or a
    ret nz

    ld a, $08
    call Call_000_06ce
    ld hl, $c008
    inc [hl]
    ret


Call_003_792b:
    rst $10
    ret nz

    ld a, [$c008]
    bit 0, a
    jr z, jr_003_7939

    ld a, $08
    call Call_000_06ce

Call_003_7939:
jr_003_7939:
    ld a, [$c9c4]
    add a
    add $58
    rst $20
    ret


Call_003_7941:
    push de
    xor a
    call Call_000_06ce
    call Call_003_7939
    pop de
    ret


Call_003_794b:
    ld a, [$cdc2]
    ld hl, $cdc3
    cp [hl]
    ret z

    call Call_000_164b
    and $07
    cp $06
    ret nc

    add $cc
    ld d, a
    ld e, $02
    ld a, [de]
    or a
    ret nz

    ld hl, $cdc2
    inc [hl]
    call Call_000_164b
    set 7, a
    ld e, $0c
    ld [de], a
    call $0589
    ld a, [$c989]
    and $f0
    ld a, $5e
    jr nz, jr_003_797d

    ld a, $64

jr_003_797d:
    rst $20
    call $05bd
    jp $07d3


Call_003_7984:
    ld d, $cc

jr_003_7986:
    call Call_000_065a
    call Call_000_06d3
    call Call_003_7999
    call Call_003_79f2
    inc d
    ld a, d
    cp $d2
    ret nc

    jr jr_003_7986

Call_003_7999:
    ld e, $02
    ld a, [de]
    rst $00
    xor c
    ld a, c
    xor d
    ld a, c
    pop bc
    ld a, c
    call z, $e179
    ld a, c
    call z, $c979
    call Call_003_79ec
    or a
    ret nz

    call Call_000_05cc
    call Call_000_164b
    and $1f
    ld hl, $cd80
    add [hl]
    call Call_000_06ce
    jp $07d3


    rst $10
    ret nz

    call $0589
    call $05bd
    jp $07d3


    call Call_003_79ec
    cp $10
    ret c

    call Call_000_0569
    xor a
    ld e, $0e
    ld [de], a
    ld hl, $cdc2
    dec [hl]
    xor a
    jp Jump_000_07dd


    rst $10
    ret nz

    ld bc, $0100
    call Call_000_0564
    jp $07d3


Call_003_79ec:
    ld e, $0f
    ld a, [de]
    and $3f
    ret


Call_003_79f2:
    ld e, $02
    ld a, [de]
    cp $04
    ret nc

    ld hl, $c008
    bit 0, [hl]
    ret z

    ld e, $14
    ld a, [de]
    sub $15
    ld l, e
    sub [hl]
    cp $d7
    ret c

    ld e, $0f
    ld a, [de]
    ld l, e
    sub [hl]
    sub $04
    cp $06
    ret nc

    call Call_000_05cc
    call Call_003_7a7b
    ld h, d
    ld l, $08
    inc [hl]
    ld a, $20
    call Call_000_06ce
    ld a, $04
    jp Jump_000_07dd


Call_003_7a26:
    ld [$cdc6], a
    ld d, $c2
    ld bc, $2820
    jr jr_003_7a37

Call_003_7a30:
    call Call_003_7a26
    inc d
    ld bc, $6020

jr_003_7a37:
    ld a, [$cdc6]
    rst $20
    jp Jump_000_068a


Call_003_7a3e:
Jump_003_7a3e:
    push hl
    ld a, $2e
    call Call_000_0b59
    pop hl
    jp Jump_000_0cb8


Call_003_7a48:
    ld hl, $c983
    inc [hl]
    ld a, [hl]
    cp $3f
    ret nz

    xor a
    ld [hl], a
    ld hl, $cd80
    ld a, [hl]
    dec a
    daa
    ld [hl], a
    ld a, [$cdc4]
    cp [hl]
    jr nz, jr_003_7a6c

    push hl
    ld hl, $cdc3
    add [hl]
    sub $07
    daa
    inc [hl]
    pop hl
    ld [$cdc4], a

Call_003_7a6c:
jr_003_7a6c:
    ld bc, $9825
    jp Jump_000_0cb8


jr_003_7a72:
    ld a, $2a
    call Call_000_0515
    ld a, $01
    jr jr_003_7a89

Call_003_7a7b:
    ld e, $08
    ld a, [de]
    cp $5e
    jr z, jr_003_7a72

    ld a, $2b
    call Call_000_0515
    ld a, $05

jr_003_7a89:
    ld hl, $cdc1
    add [hl]
    daa
    ld [hl], a

Call_003_7a8f:
    ld bc, $982c

Call_003_7a92:
    call Call_000_0cb8
    inc c
    inc c
    ld a, $01
    jp Jump_000_0b07


Call_003_7a9c:
    ld a, $ff
    jp Jump_000_3b7c


Call_003_7aa1:
    ld hl, $5945
    jp $095a


    jr nc, jr_003_7aaa

    ld [hl+], a

jr_003_7aaa:
    ld [bc], a
    dec d
    inc bc
    nop
    nop
    add c
    sbc h
    add l
    sbc h
    add c
    sbc h
    scf
    jr c, @+$3b

    nop
    nop
    inc hl
    inc h
    nop
    nop
    ld a, [hl+]
    dec hl
    inc l
    dec l
    dec c
    ld l, $ff
    ld hl, $c9a2
    dec [hl]
    jr nz, jr_003_7ad7

    ld hl, $c9a3
    inc [hl]
    call Call_003_7ad7
    ld a, h
    ld [$c9a2], a
    ret


Call_003_7ad7:
jr_003_7ad7:
    ld hl, $7ae6
    ld a, [$c9a3]
    rst $08
    ld a, l
    ld [$c986], a
    ld [$c987], a
    ret


    ld bc, $112b
    ld [hl+], a
    ld bc, $1160
    ld b, $01
    ld hl, $1211
    ld bc, $11af
    add hl, bc
    ld bc, $1156
    rlca
    ld bc, $2149
    ld [$2a01], sp
    ld de, $0019
    rst $38

Call_003_7b04:
    ld d, $04

jr_003_7b06:
    call Call_003_7b10
    ld a, $04
    rst $18
    dec d
    jr nz, jr_003_7b06

    ret


Call_003_7b10:
    push bc
    ld hl, $7b2c
    call Call_003_7b1f
    ld a, $3e
    rst $18
    call Call_003_7b1f
    pop bc
    ret


Call_003_7b1f:
    push bc
    call Call_000_0aea
    pop bc
    inc bc
    inc bc
    push bc
    call Call_000_0aea
    pop bc
    ret


    db $db
    rst $18
    ldh [rP1], a
    rst $18
    call c, $e000
    ldh [rP1], a
    db $dd
    rst $18
    nop
    ldh [$df], a
    sbc $fa
    add c
    ret


    rst $00
    ld b, [hl]
    ld a, e
    ld a, c
    ld a, e
    sub d
    ld a, e
    xor a
    ld [$ddc4], a
    call Call_000_1e74
    ld bc, $9a42
    call Call_003_7b04
    ld bc, $1b6f
    call Call_000_1193
    call $15f7

Call_003_7b5c:
    ld c, $7f

Call_003_7b5e:
    ld hl, $7b75
    ld de, $c014
    ld b, $04

jr_003_7b66:
    ld a, [hl+]
    push hl
    call Call_000_0693
    ld l, $0f
    ld [hl], c
    pop hl
    ld [de], a
    inc d
    dec b
    jr nz, jr_003_7b66

    ret


    jr nz, @+$42

    ld h, b
    add b
    ld hl, $ddc4
    inc [hl]
    ld a, [hl]
    cp $20
    ret nz

Call_003_7b81:
    ld d, $c4
    ld bc, $2080
    call $05e2
    call Call_000_0693
    ld a, $3d
    rst $20
    jp $15f7


    call Call_000_162e
    jp nz, $139e

    call Call_000_160a
    jp nz, Jump_003_7bf4

    ld a, [$cd80]
    ld d, $c0
    or d
    ld d, a
    ld a, [$c987]
    and $03
    jp nz, Jump_003_7bd2

    ld a, [$c987]
    and $0c
    ret z

    ld a, $15
    call Call_000_0515
    ld e, $00
    ld a, [$c987]
    and $0c
    rrca
    rrca
    and $01
    call Call_003_7be9
    ld a, [de]

Call_003_7bc7:
    ld hl, $7bce
    rst $28
    ld a, [hl]
    rst $20
    ret


    nop
    dec [hl]
    ld [hl], $37

Jump_003_7bd2:
    ld a, $0f
    call Call_000_0515
    ld de, $cd80
    call Call_000_1616
    call Call_003_7be9
    ld hl, $7b75
    rst $28
    ld a, [hl]
    ld [$c414], a
    ret


Call_003_7be9:
    ld a, [de]
    jr z, jr_003_7bf1

    inc a

jr_003_7bed:
    and $03
    ld [de], a
    ret


jr_003_7bf1:
    dec a
    jr jr_003_7bed

Jump_003_7bf4:
    ld de, $c000
    ld b, $00
    ld c, $04

jr_003_7bfb:
    ld a, [de]
    or b
    ld b, a
    inc d
    dec c
    jr z, jr_003_7c08

    sla b
    sla b
    jr jr_003_7bfb

jr_003_7c08:
    ld hl, $7c94
    ld a, b
    ld d, $0d

jr_003_7c0e:
    cp [hl]
    jr z, jr_003_7c27

    inc c
    inc hl
    dec d
    jr nz, jr_003_7c0e

    ld a, [$cd81]
    cp $02
    jp z, $139e

    inc a
    ld [$cd81], a
    ld a, $2c
    jp Jump_000_0515


jr_003_7c27:
    ld a, c
    cp $05
    jp nc, Jump_003_7c59

    cp $03
    jp z, Jump_003_7c86

    cp $04
    jp z, Jump_003_7c8b

    push bc
    call $6254
    call Call_000_1398
    call $0ce9
    call $20b7
    call Call_000_20c8
    call Call_003_59d0
    pop bc
    ld a, $0d

jr_003_7c4d:
    call Call_000_15e6
    ld a, $50
    ld [$c9f4], a
    ld a, c
    jp Jump_003_6719


Jump_003_7c59:
    sub $05

jr_003_7c5b:
    sra a
    inc a
    push af
    call Call_003_624e
    pop af
    ld [$c9c1], a
    jr nc, jr_003_7c79

    ld a, $02
    ld [$c9c2], a
    ld a, [$c9c1]
    cp $04
    jr c, jr_003_7c79

    ld a, $04
    ld [$c9c2], a

jr_003_7c79:
    ld a, [$c9c2]
    or a
    ld a, $05
    jp nz, Jump_000_15e6

    dec a
    jp Jump_000_15e6


Jump_003_7c86:
    ld a, $10
    jp Jump_000_15e6


Jump_003_7c8b:
    ld a, $01
    ld [$c9a7], a
    ld a, $00
    jr jr_003_7c5b

    ld d, l
    ld d, l
    rst $38
    nop
    ld b, b
    dec de
    ld de, $afcc
    db $fc
    ld d, b
    inc a
    jr nc, jr_003_7c4d

    ld a, h
    xor e
    ld a, h
    or b
    ld a, h
    or h
    ld a, h
    cp b
    ld a, h
    dec de
    dec de
    ld de, $1111
    call z, $afcc
    xor a
    db $fc
    db $fc
    ld d, b
    ld d, b
    inc a
    inc a
    inc a
    inc a
    jr nc, @+$32

    ld a, [$c981]
    push af
    cp $02
    call nc, $7d44
    pop af
    rst $00
    push de
    ld a, h
    rla
    ld a, l
    ld h, a
    ld a, l
    sub e
    ld a, l
    jp $d67d


    ld a, l
    call Call_000_1398
    xor a
    ld [$c988], a
    call Call_000_1659
    ld de, $0760
    call Call_000_1e65
    ld a, $54
    call $0510
    call $1e43
    call Call_000_219a
    ld hl, $7e06
    call Call_000_14fe
    ld hl, $7de4
    call $091e
    ld bc, $99a2
    call Call_003_7b04
    ld c, $77
    call Call_003_7b5e
    xor a
    ld [$c991], a
    ld bc, $1a00
    call Call_000_1193
    call Call_000_1e8d
    jp $15f7


    ld hl, $c991
    ld a, [$c982]
    and $03
    ret nz

    dec [hl]
    ld a, [hl]
    cp $f4
    ret nz

    ld d, $c4
    ld bc, $7d3f
    call $02be
    call Call_000_0698
    ld bc, $b058
    call $05e2
    ld bc, $ff90
    call Call_000_055a
    jp $15f7


    ld [$083e], sp
    ccf
    cp $16
    call nz, Call_000_3f01
    ld a, l
    call $0298
    call Call_000_08da
    call $059c
    rst $30
    jr z, jr_003_7d5e

    cp $c0
    ret c

    cp $e8
    ret nc

    jp $0638


jr_003_7d5e:
    cp $e8
    ret nc

    cp $b0
    ret c

    jp $0638


    call $150b
    ld hl, $7e06
    call Call_000_14fe
    ld a, [$c987]
    and $90
    ret z

    ld a, [$c988]
    and $01
    jp nz, $15f7

    ld hl, $c9c1
    xor a
    rst $08
    push hl
    call Call_003_624e
    pop bc
    ld hl, $c9c1
    ld [hl], c
    inc l
    ld [hl], b
    ld a, $05
    jp Jump_000_15e6


    ld hl, $c993
    inc [hl]
    ld a, [hl]
    cp $90
    ret nz

    ld a, [$c9a7]
    or a
    ld a, $40
    jr nz, jr_003_7da9

    ld hl, $7ca1
    call $04bb

jr_003_7da9:
    ldh [$d8], a
    ld d, $c3

jr_003_7dad:
    ldh a, [$d8]
    and $03
    call Call_003_7bc7
    ldh a, [$d8]
    rrca
    rrca
    ldh [$d8], a
    dec d
    ld a, d
    cp $bf
    jr nz, jr_003_7dad

    jp $15f7


    ld a, [$c987]
    and $ff
    ret z

    ld b, $04
    ld d, $c0

jr_003_7dcd:
    xor a
    rst $20
    inc d
    dec b
    jr nz, jr_003_7dcd

    jp $15f7


    ld hl, $c993
    dec [hl]
    ld a, [hl]
    cp $60
    ret nz

    ld a, $02
    ld [$c981], a
    ret


    push hl
    sbc e
    xor a
    and d
    xor d
    and h
    sub b
    and [hl]
    or [hl]
    and h
    and l
    cp $27
    sbc h
    xor h
    and [hl]
    or e
    xor b
    xor c
    or e
    and a
    and h
    cp $67
    sbc h
    and b
    and d
    or l
    or l
    or a
    and [hl]
    and l
    xor l
    rst $38
    dec h
    sbc h
    ld bc, $65fe
    sbc h
    nop
    rst $38
    dec h
    sbc h
    nop
    cp $65
    sbc h
    ld bc, $21ff
    call nz, Call_000_35dd
    ld a, [hl]
    cp $20
    ret nz

    call Call_003_7b81
    ld a, $0c
    ld hl, $c980
    ld [hl+], a
    ld [hl], $02
    ret


    ld a, [$c981]
    rst $00
    ld h, e
    ld a, [hl]
    ld [hl], d
    ld a, [hl]
    add [hl]
    ld a, [hl]
    ld d, $7e
    dec h
    sbc e
    or l
    and [hl]
    and a
    or e
    xor l
    sub b
    xor b
    and h
    or l
    xor b
    cp $67
    sbc e
    xor e
    xor a
    xor d
    rst $38

Call_003_7e49:
    ld a, [$cac0]
    ld bc, $9b6a
    and $f0
    swap a
    add $94
    call Call_000_0b07
    inc bc
    ld a, [$cac0]
    and $0f
    add $94
    jp Jump_000_0b07


    call $1670
    ld hl, $7e36
    call $091e
    call Call_003_7e49
    jp $15f7


    ld hl, $ddc4
    inc [hl]
    ld a, [hl]
    cp $54
    ret nz

    jp $15f7


jr_003_7e7d:
    call $050b
    call Call_003_7b5c
    jp $15f7


    call Call_000_162e
    jr nz, jr_003_7e7d

    ld a, [$c987]
    and $10
    jr z, jr_003_7e9d

    ld hl, $7edc
    ld a, [$cac0]
    rst $28
    ld a, [hl]
    jp $0510


jr_003_7e9d:
    ld a, [$c987]
    and $20
    jp nz, $050b

    call Call_003_7e49
    ld a, [$c987]
    and $04
    jr z, jr_003_7ec1

    ld a, $0f
    call Call_000_0515
    ld a, [$cac0]
    cp $16
    ret z

    add $01
    daa
    ld [$cac0], a
    ret


jr_003_7ec1:
    call Call_003_7e49
    ld a, [$c987]
    and $08
    ret z

    ld a, $0f
    call Call_000_0515
    ld a, [$cac0]
    cp $00
    ret z

    sub $01
    daa
    ld [$cac0], a
    ret


    ld c, [hl]
    ld d, c
    ld e, d
    ld e, l
    ld h, b
    ld h, d
    ld d, d
    ld e, c
    ld e, [hl]
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld d, b
    ld e, a
    ld e, e
    ld e, h
    ld d, l
    ld d, [hl]
    ld e, b

Call_003_7ef3:
    ld hl, $cd80
    inc [hl]
    ld a, [hl]
    res 7, a
    ret


Call_003_7efb:
    call Call_003_7ef3
    cp $40
    ret c

    ld hl, $7fb3
    bit 3, a
    jr nz, jr_003_7f0b

    ld hl, $7fbb

Call_003_7f0b:
Jump_003_7f0b:
jr_003_7f0b:
    ld bc, $98c9
    jp Jump_000_0aea


    call Call_003_7efb
    call $3c0d
    ld hl, $7fb7
    jr nz, jr_003_7f1f

    ld hl, $7faf

Call_003_7f1f:
jr_003_7f1f:
    ld bc, $9909
    jp Jump_000_0aea


    ld bc, $982e

jr_003_7f28:
    call $647c
    ret nz

    jp Jump_003_648e


    ld bc, $9820
    jr jr_003_7f28

    ld bc, $9841
    ld e, $11
    call $1cc6
    ld hl, $7fdf
    scf
    call Call_000_091f
    ld a, $06
    jp $6514


    ld a, $5b
    call $0510
    ld hl, $7fb3
    call Call_003_7f0b
    call $15f7
    ld a, $07
    jr jr_003_7f7d

    call $3c0d

jr_003_7f5d:
    ld de, $7fc6
    jr nz, jr_003_7f65

    ld de, $7fc3

jr_003_7f65:
    ld bc, $98af
    ld h, $03
    jp Jump_003_6473


jr_003_7f6d:
    call $3c13
    jr jr_003_7f5d

    ld hl, $7fbf
    call Call_003_7f0b
    call $15f7
    ld a, $08

Call_003_7f7d:
jr_003_7f7d:
    ld hl, $4e58
    jp $095a


    ld a, $10
    call $65b0

Call_003_7f88:
    ld a, $09
    call Call_003_7f7d
    ld a, $02
    ld hl, $cd83
    ld [hl+], a
    ld [hl], a
    ret


    call Call_000_093d
    jr nz, jr_003_7f6d

    call Call_003_7f88
    call Call_000_0b9b
    jp z, $63fb

    cp $0b
    ret nz

    ld hl, $7fb7
    call Call_003_7f1f
    jp Jump_003_7f0b


    ld d, [hl]
    ld d, a
    ld e, e
    ld e, h
    inc a
    dec a
    ld b, d
    ld b, e
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    dec hl
    inc l
    dec l
    cpl
    jr nc, jr_003_7ffa

    rst $08
    sbc b
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    rst $38
    ret nz

    sbc b
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    cp $e1
    sbc b
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    rst $38
    and c
    sbc b
    nop
    dec e
    ld e, $00
    cp $c0
    sbc b
    ld c, [hl]
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    cp $e1
    sbc b
    nop
    ld [hl], a
    ld a, b
    ld a, c
    ld c, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_003_7ffa:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
