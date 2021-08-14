; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    ld a, [bc]
    inc bc
    ld b, b
    ld a, [$c8ef]
    rst $00
    daa
    ld b, b
    daa
    ld b, b
    daa
    ld b, b
    daa
    ld b, b
    daa
    ld b, b
    dec l
    ld b, h
    jp $954b


    ld h, b
    daa
    ld b, b
    daa
    ld b, b
    daa
    ld b, b
    ld h, [hl]
    ld l, c
    daa
    ld b, b
    daa
    ld b, b
    daa
    ld b, b
    daa
    ld b, b
    ret


Call_00a_4028:
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


Call_00a_4035:
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


Call_00a_4044:
    ld a, [$c909]
    add l
    ld l, a
    ld a, [$c90a]
    adc h
    and $03
    ld h, a
    ld a, [$c90a]
    and $fc
    or h
    ld h, a
    ret


Call_00a_4058:
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ret


Call_00a_4061:
    push bc
    ld b, l
    ld a, l
    and $e0
    ld l, a
    call Call_00a_4044
    ld a, b
    and $1f
    jr z, jr_00a_4076

    ld b, a

jr_00a_4070:
    call Call_00a_4035
    dec b
    jr nz, jr_00a_4070

jr_00a_4076:
    pop bc
    ret


    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    call Call_00a_4061
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a

jr_00a_4087:
    ld a, [de]
    inc de
    cp $d9
    ret z

    cp $d8
    jr nz, jr_00a_40ac

    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
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
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    jr jr_00a_4087

jr_00a_40ac:
    call Call_000_1aad
    call Call_00a_4035
    jr jr_00a_4087

Call_00a_40b4:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    call Call_00a_4058
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a

jr_00a_40c3:
    ld a, [de]
    inc de
    cp $d9
    ret z

    cp $d8
    jr nz, jr_00a_40e2

    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    jr jr_00a_40c3

jr_00a_40e2:
    ld [hl+], a
    jr jr_00a_40c3

Call_00a_40e5:
    ld a, [$c909]
    ld l, a
    ld a, [$c90a]
    ld h, a
    ld de, $c500
    ld c, $12

jr_00a_40f2:
    ld b, $20
    push hl

jr_00a_40f5:
    ld a, [de]
    call Call_000_1aad
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
    jr nz, jr_00a_40f5

    pop hl
    push bc
    ld bc, $0020
    add hl, bc
    ld a, h
    and $03
    or $98
    ld h, a
    pop bc
    dec c
    jr nz, jr_00a_40f2

    ret


Call_00a_411a:
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_00a_4153:
    push hl
    ld hl, $c180
    call Call_000_0c80
    pop hl
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0401
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


    ld [$c180], a
    ld a, $f0
    ld [$c181], a
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0101
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_00a_41ef:
    ld hl, $c500
    ld de, $c300
    ld bc, $0200

jr_00a_41f8:
    ld a, [de]
    inc de
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_00a_41f8

    ld de, $c1c0
    ld c, $02

jr_00a_4205:
    ld b, $14

jr_00a_4207:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_00a_4207

    ld a, e
    add $0c
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, l
    add $0c
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec c
    jr nz, jr_00a_4205

    ret


    ld hl, $c500
    ld bc, $0240

jr_00a_4227:
    ld a, $e0
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_00a_4227

    ret


    ld hl, $9800
    ld bc, $0400

jr_00a_4236:
    ld a, $e0
    call Call_000_1ab9
    dec bc
    ld a, b
    or c
    jr nz, jr_00a_4236

    ret


Call_00a_4241:
    ld a, c
    ld [$c8e1], a
    inc de
    inc de
    ld a, [$c825]
    or a
    jp nz, Jump_00a_42a8

    ld a, [$c847]
    bit 5, a
    jr z, jr_00a_426e

    inc hl
    ld a, [hl]
    dec a
    push af
    push de
    push bc
    ld a, b
    ld b, c
    dec b
    call Call_000_1dfb
    ld a, b
    inc a
    pop bc
    pop de
    ld c, a
    pop af
    cp c
    jr c, jr_00a_428c

    ld a, c
    dec a
    jr jr_00a_428c

jr_00a_426e:
    ld a, [$c847]
    bit 4, a
    jr z, jr_00a_42a8

    inc hl
    ld a, [hl]
    inc a
    push af
    push de
    push bc
    ld a, b
    ld b, c
    dec b
    call Call_000_1dfb
    ld a, b
    inc a
    pop bc
    pop de
    ld c, a
    pop af
    cp c
    jr c, jr_00a_428c

    ld a, $00

jr_00a_428c:
    ld [hl-], a
    dec c
    cp c
    jr nz, jr_00a_42eb

    ld a, [$c8e1]
    ld c, a
    push de
    push bc
    ld a, b
    ld b, c
    call Call_000_1dfb
    pop bc
    pop de
    or a
    jr z, jr_00a_42eb

    dec a
    cp [hl]
    jr nc, jr_00a_42eb

    ld [hl], a
    jr jr_00a_42eb

Jump_00a_42a8:
jr_00a_42a8:
    push bc
    push de
    push hl
    call Call_00a_4387
    pop hl
    pop de
    pop bc
    push de
    push bc
    ld a, b
    ld b, c
    dec b
    call Call_000_1dfb
    ld [$c8e1], a
    ld a, b
    pop bc
    pop de
    ld c, a
    inc hl
    ld a, [hl-]
    cp c
    jr nz, jr_00a_42ca

    ld a, [$c8e1]
    inc a
    ld b, a

Call_00a_42ca:
jr_00a_42ca:
    res 7, [hl]
    ld a, [$c847]
    bit 6, a
    jr z, jr_00a_42dc

    ld a, [hl]
    dec a
    cp b
    jr c, jr_00a_42ea

    dec b
    ld a, b
    jr jr_00a_42ea

jr_00a_42dc:
    ld a, [$c847]
    bit 7, a
    jr z, jr_00a_42f3

    ld a, [hl]
    inc a
    cp b
    jr c, jr_00a_42ea

    ld a, $00

jr_00a_42ea:
    ld [hl], a

jr_00a_42eb:
    xor a
    ld [$c90c], a
    push hl
    push de
    pop de
    pop hl

jr_00a_42f3:
    ld a, [$c846]
    bit 0, a
    jr z, jr_00a_42fc

    set 7, [hl]

jr_00a_42fc:
    ld a, [hl]
    call Call_00a_4328
    ret


    res 7, [hl]
    ld a, [$c847]
    bit 5, a
    jr z, jr_00a_4313

    ld a, [hl]
    dec a
    cp b
    jr c, jr_00a_42ea

    dec b
    ld a, b
    jr jr_00a_42ea

jr_00a_4313:
    ld a, [$c847]
    bit 4, a
    jr z, jr_00a_42f3

    ld a, [hl]
    inc a
    cp b
    jr c, jr_00a_42ea

    ld a, $00
    jr jr_00a_42ea

Call_00a_4323:
    xor a
    ld [$c90c], a
    ret


Call_00a_4328:
    ld c, a
    bit 7, a
    jr nz, jr_00a_433d

    ld a, [$c90c]
    and $0f
    push af
    ld a, [$c90c]
    inc a
    ld [$c90c], a
    pop af
    ld a, c
    ret nz

jr_00a_433d:
    ld c, a
    ld b, $00

jr_00a_4340:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    and l
    cp $ff
    ret z

    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    push de
    push bc
    call Call_00a_4061
    pop bc
    pop de
    ld a, c
    and $7f
    cp b
    ld a, $e0
    jr nz, jr_00a_4370

    ld a, $e9
    bit 7, c
    jr nz, jr_00a_4370

    ld a, [$c90c]
    bit 4, a
    ld a, $e0
    jr nz, jr_00a_4370

    ld a, $e8

jr_00a_4370:
    call Call_000_1aad
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    inc b
    jr jr_00a_4340

Call_00a_4387:
    ld a, b
    cp c
    ret nc

    inc hl
    ld c, [hl]
    dec de
    dec de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    and l
    cp $ff
    ret z

    dec hl
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    push de
    push bc
    call Call_00a_4061
    pop bc
    pop de
    ld a, c
    and $7f
    add $f1
    call Call_000_1aad
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    ret


Call_00a_43c0:
    ld a, [hl+]
    push af
    push hl
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    inc de
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld a, b
    cp c
    ld a, $ee
    jr nc, jr_00a_43d9

    ld a, $e7

jr_00a_43d9:
    ld [hl-], a
    pop bc
    jr nc, jr_00a_43e1

    ld a, [bc]
    add $f1
    ld [hl], a

jr_00a_43e1:
    pop af

Call_00a_43e2:
    ld c, a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    push de
    push bc
    call Call_00a_4061
    pop bc
    pop de
    ld a, $e9
    bit 7, c
    jr nz, jr_00a_440d

    ld a, [$c90c]
    bit 4, a
    ld a, $e0
    jr nz, jr_00a_440d

    ld a, $e8

jr_00a_440d:
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    ret


Call_00a_441f:
    ld a, [$c8f0]
    add l
    ld l, a
    ld a, [$c8f1]
    adc h
    ld h, a
    call Call_000_0ad9
    ret


    ld a, [$c905]
    rst $00
    dec sp
    ld b, h
    adc d
    ld b, h
    or [hl]
    ld b, h
    ld c, $45
    ld d, $45
    ld hl, $ffb7
    call Call_00a_4028
    ld hl, $ffbb
    call Call_00a_4028
    ld hl, $c8da
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
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
    ld [$c909], a
    ld a, h
    ld [$c90a], a
    call Call_00a_41ef
    ld de, $2e11
    ld hl, $8800
    call Call_000_1577
    call Call_00a_4323
    ld a, $78
    ldh [$d4], a
    ld hl, $c905
    inc [hl]
    ret


    ld hl, $c905
    inc [hl]
    ld a, $5c
    call Call_000_1b2c
    call Call_00a_41ef
    call Call_00a_449d
    call Call_00a_40e5
    ret


Call_00a_449d:
    ld de, $6f3c
    call Call_00a_40b4
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $4508
    ld a, [$c8da]
    call Call_00a_43e2
    ret


    ld de, $4508
    ld hl, $c8da
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    and $0a
    jr z, jr_00a_44d2

    ld hl, $c905
    inc [hl]
    ld hl, $c905
    inc [hl]
    jr jr_00a_4507

jr_00a_44d2:
    ld a, [$c846]
    bit 0, a
    jr z, jr_00a_4507

    ld a, $59
    call Call_000_1b2c
    ld hl, $c905
    inc [hl]
    xor a
    ld [$c906], a
    ld hl, $c8da
    set 7, [hl]
    ld a, [hl]
    ld [$c907], a
    ld hl, $c8db
    ld bc, $0007
    ld a, $00
    call Call_000_12c7
    ld hl, $c8e2
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
    jr jr_00a_4507

jr_00a_4507:
    ret


    cpl
    ld bc, $016f
    rst $38
    rst $38
    ld a, [$c907]
    rst $00
    jr c, jr_00a_4559

    ld d, $45
    call Call_00a_41ef
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_40e5
    xor a
    ld [$c8ec], a
    ld a, $80
    ldh [$d3], a
    ld hl, $c8eb
    res 4, [hl]
    xor a
    ld [$c905], a
    ld hl, $0103
    rst $10
    ret


    ld a, [$c906]
    rst $00
    ld e, [hl]
    ld b, l
    jp nc, $9d45

    ld b, a
    dec hl
    ld c, b
    ld [hl], $48
    ld a, l
    ld c, b
    ld a, [de]
    ld c, c
    dec h
    ld c, c
    ld c, c
    ld c, c
    adc [hl]
    ld c, c
    xor e
    ld c, c
    rst $08
    ld c, c
    db $10
    ld c, d
    db $d3
    ld c, d
    dec de

jr_00a_4559:
    ld c, e
    ld b, [hl]
    ld c, e
    add c
    ld c, e
    call Call_00a_4572
    call Call_00a_459c
    call Call_00a_4ba2
    ld hl, $0002
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


Call_00a_4572:
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_00a_4579:
    push de
    ld a, [de]
    or a
    jr z, jr_00a_458b

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_00a_458b

    inc c

jr_00a_458b:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_00a_4579

    ld a, c
    ld [$c8e9], a
    ret


Call_00a_459c:
    ld hl, $c0d8
    ld bc, $0014
    ld a, $ff
    call Call_000_12c7
    ld hl, $c0d8
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_00a_45b1:
    push de
    ld a, [de]
    or a
    jr z, jr_00a_45c4

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_00a_45c4

    ld [hl], c
    inc hl

jr_00a_45c4:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc c
    dec b
    jr nz, jr_00a_45b1

    ret


    ld a, [$c825]
    or a
    ret nz

    call $46c9
    call Call_00a_4610
    call Call_00a_45e5
    ld hl, $c906
    inc [hl]
    ret


Call_00a_45e5:
    call Call_00a_41ef
    call Call_00a_449d
    ld de, $7731
    call Call_00a_40b4
    call Call_00a_474b
    ld de, $7409
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $481f
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_00a_43c0
    call Call_00a_40e5
    ret


Call_00a_4610:
    ld a, [$c8e3]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $8800
    call Call_00a_462a
    call Call_00a_462a
    call Call_00a_462a

Call_00a_462a:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_00a_4657

    push de
    ld hl, $cb24
    call Call_000_223b
    pop de
    ld a, [hl]
    or a
    jr nz, jr_00a_4671

    ld a, [de]
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    pop hl
    push hl
    call Call_00a_4153
    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_00a_4657:
    ld b, $20

jr_00a_4659:
    ld a, $ff
    call Call_000_1ab9
    xor a
    call Call_000_1ab9
    dec b
    jr nz, jr_00a_4659

    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_00a_4671:
    ld a, $0e
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    ld de, $0401
    pop hl
    push hl
    call Call_00a_411a
    pop hl
    ld a, l
    add $30
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    push de
    push hl
    ld a, [de]
    ld hl, $cacb
    call Call_000_223b
    ld a, [hl]
    add a
    ld hl, $46b5
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    push hl
    call Call_000_1577
    pop hl
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


    inc bc
    ld l, $04
    ld l, $05
    ld l, $06
    ld l, $07
    ld l, $08
    ld l, $09
    ld l, $0a
    ld l, $0b
    ld l, $0c
    ld l, $fa
    db $e3
    ret z

    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    push af
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    ld hl, $9780
    call Call_00a_4153
    pop af
    ld hl, $cacc
    call Call_000_223b
    ld a, [hl]
    ld hl, $97c0
    and $01
    add $a7
    ld [$c180], a
    ld a, $f0
    ld [$c181], a
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0101
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_00a_474b:
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    push af
    ld hl, $cb0c
    call Call_000_223b
    ld c, [hl]
    ld b, $00
    ld hl, $0161
    call Call_00a_4058
    ld a, $de
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    ld a, $e0
    ld [hl-], a
    call $6027
    pop af
    ld hl, $cac1
    call Call_000_223b
    ld a, [hl]
    cp $02
    jr nz, jr_00a_4793

    ld hl, $0169
    call Call_00a_4058
    ld a, $e3
    ld [hl], a
    ret


jr_00a_4793:
    ld hl, $0169
    call Call_00a_4058
    ld a, $e0
    ld [hl], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld de, $481f
    ld hl, $c8e2
    ld a, [$c8e9]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_00a_4241
    pop af
    ld hl, $c8e2
    cp [hl]
    jr z, jr_00a_47c6

    call $46c9
    call Call_00a_474b
    call Call_00a_40e5

jr_00a_47c6:
    pop af
    ld hl, $c8e3
    cp [hl]
    jr z, jr_00a_47d9

    call $46c9
    call Call_00a_4610
    call Call_00a_474b
    call Call_00a_45e5

jr_00a_47d9:
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_47f0

    call Call_00a_4ba2
    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    jr jr_00a_481e

jr_00a_47f0:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_481e

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    xor a
    ld [$c8dc], a
    ld hl, $c906
    inc [hl]

Jump_00a_481e:
jr_00a_481e:
    ret


    ld b, l
    ld bc, $0061
    and c
    nop
    pop hl
    nop
    ld hl, $ff01
    rst $38
    ld hl, $0005
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_4843
    ld hl, $c906
    inc [hl]
    ret


Call_00a_4843:
    call Call_00a_41ef
    call Call_00a_449d
    ld de, $7731
    call Call_00a_40b4
    call Call_00a_474b
    ld de, $7409
    call Call_00a_40b4
    ld de, $481f
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_00a_43c0
    ld de, $7463
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $4914
    ld a, [$c8dc]
    call Call_00a_43e2
    call Call_00a_40e5
    ret


    ld de, $4914
    ld hl, $c8dc
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_48ad

    call Call_00a_45e5
    call Call_00a_4ba2
    ld hl, $0002
    call Call_00a_441f
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_00a_4913

jr_00a_48ad:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_4913

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8dc]
    cp $81
    jr z, jr_00a_48cf

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld a, $0e
    ld [$c906], a
    jr jr_00a_4913

jr_00a_48cf:
    ld a, [$cac0]
    ld hl, $cb0c
    call Call_000_223b
    ld a, [hl]
    cp $0a
    jr nc, jr_00a_48ea

    ld hl, $0003
    call Call_00a_441f
    ld a, $10
    ld [$c906], a
    jr jr_00a_4913

jr_00a_48ea:
    ld a, [$ca8d]
    cp $02
    jr z, jr_00a_490b

    cp $03
    jr z, jr_00a_490b

    ld a, [$ca8e]
    ld hl, $cac0
    cp [hl]
    jr nz, jr_00a_490b

    ld hl, $0004
    call Call_00a_441f
    ld a, $10
    ld [$c906], a
    jr jr_00a_4913

jr_00a_490b:
    ld hl, $c906
    inc [hl]
    xor a
    ld [$c8dd], a

Jump_00a_4913:
jr_00a_4913:
    ret


    ld l, $00
    ld l, [hl]
    nop
    rst $38
    rst $38
    ld hl, $0006
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $5c
    call Call_000_1b2c
    ld de, $6f3c
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $4988
    ld a, [$c8de]
    call Call_00a_43e2
    call Call_00a_40e5
    ld hl, $c906
    inc [hl]
    ret


    ld de, $4988
    ld hl, $c8de
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_496b

jr_00a_495b:
    call Call_00a_4ba2
    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    jr jr_00a_4987

jr_00a_496b:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_4987

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8de]
    cp $81
    jr z, jr_00a_495b

    xor a
    ld [$c8df], a
    ld hl, $c906
    inc [hl]

Jump_00a_4987:
jr_00a_4987:
    ret


    cpl
    ld bc, $016f
    rst $38
    rst $38
    ld de, $748d
    call Call_00a_40b4
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_4b9e
    call Call_00a_40e5
    ld hl, $0007
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $5c
    call Call_000_1b2c
    ld de, $6f3c
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $4a0a
    ld a, [$c8df]
    call Call_00a_43e2
    call Call_00a_40e5
    ld hl, $c906
    inc [hl]
    ret


    ld de, $4a0a
    ld hl, $c8df
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_49f1

jr_00a_49e1:
    call Call_00a_4ba2
    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    jr jr_00a_4a09

jr_00a_49f1:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_4a09

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8df]
    cp $81
    jr z, jr_00a_49e1

    ld hl, $c906
    inc [hl]

Jump_00a_4a09:
jr_00a_4a09:
    ret


    cpl
    ld bc, $016f
    rst $38
    rst $38
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_40e5
    ld hl, $0008
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ld a, [$cac0]
    ld hl, $caca
    call Call_000_223b
    ld a, [hl]
    add $10
    ld [$d7ca], a
    ld a, $01
    ld [$d7cb], a
    ld a, [$cac0]
    ld hl, $cac1
    call Call_000_223b
    ld de, $d665
    call Call_00a_57b0
    ld a, [$cac0]
    ld hl, $cac1
    call Call_000_223b
    ld [hl], $00
    ld a, [$c8f7]
    ld c, a
    ld a, [$c8f8]
    ld b, a
    ld a, c
    ld [$da12], a
    ld a, b
    ld [$da13], a
    ld a, $15
    ld [$da14], a
    ld hl, $1402
    rst $10
    ld a, [$d670]
    xor $01
    ld [$d705], a
    ld a, $15
    ld hl, $caca
    call Call_000_223b
    ld a, [hl]
    add $10
    ld [$d7cc], a
    ld a, $01
    ld [$d7cd], a
    ld hl, $0105
    rst $10
    ld hl, HeaderLogo
    rst $10
    ld hl, $1600
    rst $10
    ld a, [$c8eb]
    push af
    xor a
    ld [$c8eb], a
    ld a, [$c905]
    push af
    xor a
    ld [$c905], a
    ld a, [$d8d7]
    push af
    xor a
    ld [$d8d7], a
    ld a, [$c8ec]
    push af
    xor a
    ld [$c8ec], a
    ld a, [$d951]
    push af
    xor a
    ld [$d951], a
    di
    call Call_000_2128
    ei
    pop af
    ld [$d951], a
    pop af
    ld [$c8ec], a
    pop af
    ld [$d8d7], a
    pop af
    ld [$c905], a
    pop af
    ld [$c8eb], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $c8eb
    res 4, [hl]
    res 0, [hl]
    xor a
    ld [$c905], a
    ld a, $08
    ld [$c96d], a
    ld a, $00
    ld [$c96e], a
    ld hl, $0048
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0048
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ld a, $01
    ld [$c96c], a
    ld a, $04
    ld [$d951], a
    xor a
    ld [$d8d7], a
    ld a, $03
    call Call_000_1688
    ld hl, $c88f
    inc [hl]
    ret


    ld hl, $c0d8
    ld a, l
    ld [$c930], a
    ld a, h
    ld [$c931], a
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld a, a
    ld [$c932], a
    ld a, [$c8e9]
    ld [$c933], a
    ld hl, $0702
    rst $10
    ld a, $01
    ld [$c8ec], a
    ret


    ld a, [$c8e2]
    and $80
    ld b, a
    ld a, [$c934]
    and $03
    or b
    ld [$c8e2], a
    ld a, [$c934]
    srl a
    srl a
    ld [$c8e3], a
    ld de, $2e11
    ld hl, $8800
    call Call_000_1577
    call $46c9
    call Call_00a_4610
    ld hl, $0005
    call Call_00a_441f
    call Call_00a_4843
    xor a
    ld [$c8ec], a
    ld a, $05
    ld [$c906], a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_4572
    call Call_00a_459c
    call Call_00a_4ba2
    ld hl, $0002
    call Call_00a_441f
    call Call_00a_45e5
    ld a, $01
    ld [$c906], a
    ret


Call_00a_4b9e:
    call Call_00a_5e1e
    ret


Call_00a_4ba2:
    ld a, [$c8f7]
    ld c, a
    ld a, [$c8f8]
    ld b, a
    ld a, c
    ld [$da12], a
    ld a, b
    ld [$da13], a
    ld hl, $1400
    rst $10
    ld a, [$da18]
    ld l, a
    ld h, $05
    ld de, $c180
    call Call_000_097a
    ret


    ld a, [$c905]
    rst $00
    pop de
    ld c, e
    inc a
    ld c, h
    add c
    ld c, h
    db $d3
    ld c, h
    ld [c], a
    ld c, h
    ld hl, $ffb7
    call Call_00a_4028
    ld hl, $ffbb
    call Call_00a_4028
    ld hl, $c8da
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
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
    ld [$c909], a
    ld a, h
    ld [$c90a], a
    call Call_00a_41ef
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_40e5
    ld de, $2e12
    ld hl, $8800
    call Call_000_1577
    ld a, $02
    ld [$c822], a
    ld a, $10
    ld [$c823], a
    ld hl, $9400
    ld de, $0801
    call Call_00a_411a
    call Call_00a_4323
    ld a, $40
    ldh [$d4], a
    ld hl, $c905
    inc [hl]
    ret


    ld hl, $c905
    inc [hl]
    call Call_00a_41ef
    call Call_00a_4c4a
    call Call_00a_40e5
    ret


Call_00a_4c4a:
    ld de, $6f86
    call Call_00a_40b4
    ld a, [$ca4b]
    ldh [$d5], a
    ld a, [$ca4c]
    ldh [$d6], a
    ld a, [$ca4d]
    ldh [$d7], a
    ld hl, $002e
    call Call_00a_4058
    call Call_000_1fb9
    ld de, $75ab
    call Call_00a_40b4
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $4ccb
    ld a, [$c8da]
    call Call_00a_43e2
    ret


    ld de, $4ccb
    ld hl, $c8da
    ld b, $03
    call Call_00a_42ca
    ld a, [$c846]
    and $0a
    jr z, jr_00a_4c95

    jr jr_00a_4cdd

jr_00a_4c95:
    ld a, [$c846]
    bit 0, a
    jr z, jr_00a_4cca

    ld a, $59
    call Call_000_1b2c
    ld hl, $c905
    inc [hl]
    xor a
    ld [$c906], a
    ld hl, $c8da
    set 7, [hl]
    ld a, [hl]
    ld [$c907], a
    ld hl, $c8db
    ld bc, $0007
    ld a, $00
    call Call_000_12c7
    ld hl, $c8e2
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
    jr jr_00a_4cca

jr_00a_4cca:
    ret


    ld hl, $6100
    nop
    and c
    nop
    rst $38
    rst $38
    ld a, [$c907]
    rst $00
    inc b
    ld c, l
    rlca
    ld e, c
    db $dd
    ld c, h

jr_00a_4cdd:
    ld a, [$c825]
    or a
    ret nz

    call Call_00a_41ef
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_40e5
    xor a
    ld [$c8ec], a
    ld a, $80
    ldh [$d3], a
    ld hl, $c8eb
    res 4, [hl]
    xor a
    ld [$c905], a
    ld hl, $0103
    rst $10
    ret


    ld a, [$c906]
    rst $00
    inc a
    ld c, l
    xor l
    ld c, l
    inc d
    ld c, a
    or h
    ld c, a
    cp a
    ld c, a
    ld b, $50
    and b
    ld d, b
    jr nz, @+$53

    ld sp, $e952
    ld d, d
    db $f4
    ld d, d
    dec sp
    ld d, e
    dec h
    ld d, h
    rst $00
    ld d, l
    pop de
    ld d, l
    ldh [rHDMA5], a
    db $fd
    ld d, l
    ld hl, $5f56
    ld d, [hl]
    ld a, $57
    cp c
    ld d, a
    db $e4
    ld d, a
    ld c, [hl]
    ld e, b
    ld l, b
    ld e, b
    sub e
    ld e, b
    db $ed
    ld e, b
    call Call_00a_4d4d
    call Call_00a_4d77
    ld hl, $0003
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


Call_00a_4d4d:
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_00a_4d54:
    push de
    ld a, [de]
    or a
    jr z, jr_00a_4d66

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_00a_4d66

    inc c

jr_00a_4d66:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_00a_4d54

    ld a, c
    ld [$c8e9], a
    ret


Call_00a_4d77:
    ld hl, $c0d8
    ld bc, $0014
    ld a, $ff
    call Call_000_12c7
    ld hl, $c0d8
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_00a_4d8c:
    push de
    ld a, [de]
    or a
    jr z, jr_00a_4d9f

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_00a_4d9f

    ld [hl], c
    inc hl

jr_00a_4d9f:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc c
    dec b
    jr nz, jr_00a_4d8c

    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_4e40
    call Call_00a_4deb
    call Call_00a_4dc0
    ld hl, $c906
    inc [hl]
    ret


Call_00a_4dc0:
    call Call_00a_41ef
    call Call_00a_4c4a
    ld de, $75f3
    call Call_00a_40b4
    ld de, $76a7
    call Call_00a_40b4
    call Call_00a_4ed3
    call Call_00a_4323
    ld de, $4fa8
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_00a_43c0
    call Call_00a_40e5
    ret


Call_00a_4deb:
    ld a, [$c8e3]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $9610
    call Call_00a_4e05
    call Call_00a_4e05
    call Call_00a_4e05

Call_00a_4e05:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_00a_4e26

    ld a, [de]
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    pop hl
    push hl
    call Call_00a_4153
    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_00a_4e26:
    ld b, $20

jr_00a_4e28:
    ld a, $ff
    call Call_000_1ab9
    xor a
    call Call_000_1ab9
    dec b
    jr nz, jr_00a_4e28

    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


Call_00a_4e40:
    call Call_00a_4e55
    ld hl, $9760
    ld b, $28

jr_00a_4e48:
    ld a, $ff
    call Call_000_1ab9
    xor a
    call Call_000_1ab9
    dec b
    jr nz, jr_00a_4e48

    ret


Call_00a_4e55:
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    push af
    ld hl, $9710
    call Call_00a_4e05
    pop af
    ld hl, $cacc
    call Call_000_223b
    ld a, [hl]
    ld hl, $9750
    call Call_00a_4e81
    ret


Call_00a_4e81:
    and $01
    add $a7
    ld [$c180], a
    ld a, $f0
    ld [$c181], a
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0101
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_00a_4ed3:
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    push af
    ld hl, $cb0c
    call Call_000_223b
    ld c, [hl]
    ld b, $00
    ld hl, $012a
    call Call_00a_4058
    ld a, $de
    ld [hl+], a
    call $6027
    pop af
    ld hl, $cac1
    call Call_000_223b
    ld a, [hl]
    cp $02
    ret nz

    ld hl, $0132
    call Call_00a_4058
    ld a, $e3
    ld [hl], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld de, $4fa8
    ld hl, $c8e2
    ld a, [$c8e9]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_00a_4241
    pop af
    ld hl, $c8e2
    and $7f
    ld b, a
    ld a, [hl]
    and $7f
    cp b
    jr z, jr_00a_4f49

    call Call_00a_4e40
    ld de, $76a7
    call Call_00a_40b4
    call Call_00a_4ed3
    call Call_00a_40e5

jr_00a_4f49:
    pop af
    ld hl, $c8e3
    cp [hl]
    jr z, jr_00a_4f62

    call Call_00a_4e40
    call Call_00a_4deb
    ld de, $76a7
    call Call_00a_40b4
    call Call_00a_4ed3
    call Call_00a_40e5

jr_00a_4f62:
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_4f76

    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    jr jr_00a_4fa7

jr_00a_4f76:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_4fa7

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    ld [$c8e8], a
    xor a
    ld [$c8dc], a
    ld hl, $c906
    inc [hl]

Jump_00a_4fa7:
jr_00a_4fa7:
    ret


    add l
    ld bc, $00a1
    pop hl
    nop
    ld hl, $6101
    ld bc, $ffff
    ld hl, $0005
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_4fcc
    ld hl, $c906
    inc [hl]
    ret


Call_00a_4fcc:
    call Call_00a_41ef
    call Call_00a_4c4a
    ld de, $75f3
    call Call_00a_40b4
    ld de, $76a7
    call Call_00a_40b4
    call Call_00a_4ed3
    ld de, $4fa8
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_00a_43c0
    ld de, $7463
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $509a
    ld a, [$c8dc]
    call Call_00a_43e2
    call Call_00a_40e5
    ret


    ld de, $509a
    ld hl, $c8dc
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_5033

    call Call_00a_4dc0
    ld hl, $0003
    call Call_00a_441f
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_00a_5099

jr_00a_5033:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_5099

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8dc]
    cp $81
    jr z, jr_00a_5055

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld a, $14
    ld [$c906], a
    jr jr_00a_5099

jr_00a_5055:
    ld a, [$cac0]
    ld hl, $cb0c
    call Call_000_223b
    ld a, [hl]
    cp $0a
    jr nc, jr_00a_5070

    ld hl, $0007
    call Call_00a_441f
    ld a, $16
    ld [$c906], a
    jr jr_00a_5099

jr_00a_5070:
    ld a, [$ca8d]
    cp $02
    jr z, jr_00a_5091

    cp $03
    jr z, jr_00a_5091

    ld a, [$ca8e]
    ld hl, $cac0
    cp [hl]
    jr nz, jr_00a_5091

    ld hl, $0006
    call Call_00a_441f
    ld a, $16
    ld [$c906], a
    jr jr_00a_5099

jr_00a_5091:
    ld hl, $c906
    inc [hl]
    xor a
    ld [$c8dd], a

Jump_00a_5099:
jr_00a_5099:
    ret


    ld l, $00
    ld l, [hl]
    nop
    rst $38
    rst $38
    call Call_00a_50b1
    call Call_00a_50e4
    ld hl, $0004
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


Call_00a_50b1:
    ld de, $cac1
    ld b, $14
    ld c, $00
    ld h, $00

jr_00a_50ba:
    push de
    ld a, [de]
    or a
    jr z, jr_00a_50d2

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_00a_50d2

    ld a, [$c8e8]
    cp h
    jr z, jr_00a_50d2

    inc c

jr_00a_50d2:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc h
    dec b
    jr nz, jr_00a_50ba

    ld a, c
    ld [$c8e9], a
    ret


Call_00a_50e4:
    ld hl, $c0d8
    ld bc, $0014
    ld a, $ff
    call Call_000_12c7
    ld hl, $c0d8
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_00a_50f9:
    push de
    ld a, [de]
    or a
    jr z, jr_00a_5112

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_00a_5112

    ld a, [$c8e8]
    cp c
    jr z, jr_00a_5112

    ld [hl], c
    inc hl

jr_00a_5112:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc c
    dec b
    jr nz, jr_00a_50f9

    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_517c
    call Call_00a_515e
    call Call_00a_5133
    ld hl, $c906
    inc [hl]
    ret


Call_00a_5133:
    call Call_00a_41ef
    call Call_00a_4c4a
    ld de, $764d
    call Call_00a_40b4
    ld de, $76a7
    call Call_00a_40b4
    call Call_00a_51c1
    call Call_00a_4323
    ld de, $52dd
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e4
    call Call_00a_43c0
    call Call_00a_40e5
    ret


Call_00a_515e:
    ld a, [$c8e5]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $9610
    call Call_00a_4e05
    call Call_00a_4e05
    call Call_00a_4e05
    call Call_00a_4e05
    ret


Call_00a_517c:
    ld de, $c8e8
    ld a, [de]
    push af
    ld hl, $9710
    call Call_00a_4e05
    pop af
    ld hl, $cacc
    call Call_000_223b
    ld a, [hl]
    ld hl, $9750
    call Call_00a_4e81

Call_00a_5195:
    ld a, [$c8e5]
    add a
    add a
    ld b, a
    ld a, [$c8e4]
    and $7f
    add b
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    push af
    ld hl, $9760
    call Call_00a_4e05
    pop af
    ld hl, $cacc
    call Call_000_223b
    ld a, [hl]
    ld hl, $97a0
    call Call_00a_4e81
    ret


Call_00a_51c1:
    ld de, $c8e8
    ld a, [de]
    push af
    ld hl, $cb0c
    call Call_000_223b
    ld c, [hl]
    ld b, $00
    ld hl, $012a
    call Call_00a_4058
    ld a, $de
    ld [hl+], a
    call $6027
    pop af
    ld hl, $cac1
    call Call_000_223b
    ld a, [hl]
    cp $02
    jr nz, jr_00a_51f0

    ld hl, $0132
    call Call_00a_4058
    ld a, $e3
    ld [hl], a

jr_00a_51f0:
    ld a, [$c8e5]
    add a
    add a
    ld b, a
    ld a, [$c8e4]
    and $7f
    add b
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    push af
    ld hl, $cb0c
    call Call_000_223b
    ld c, [hl]
    ld b, $00
    ld hl, $016a
    call Call_00a_4058
    ld a, $de
    ld [hl+], a
    call $6027
    pop af
    ld hl, $cac1
    call Call_000_223b
    ld a, [hl]
    cp $02
    ret nz

    ld hl, $0172
    call Call_00a_4058
    ld a, $e3
    ld [hl], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld de, $52dd
    ld hl, $c8e4
    ld a, [$c8e9]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_00a_4241
    pop af
    ld hl, $c8e4
    and $7f
    ld b, a
    ld a, [hl]
    and $7f
    cp b
    jr z, jr_00a_5266

    call Call_00a_5195
    ld de, $76a7
    call Call_00a_40b4
    call Call_00a_51c1
    call Call_00a_40e5

jr_00a_5266:
    pop af
    ld hl, $c8e5
    cp [hl]
    jr z, jr_00a_527f

    call Call_00a_5195
    call Call_00a_515e
    ld de, $76a7
    call Call_00a_40b4
    call Call_00a_51c1
    call Call_00a_40e5

jr_00a_527f:
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_52ae

    ld hl, $0003
    call Call_00a_441f
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_00a_52dc

jr_00a_52ae:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_4fa7

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8e5]
    add a
    add a
    ld b, a
    ld a, [$c8e4]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    xor a
    ld [$c8dd], a
    ld hl, $c906
    inc [hl]

jr_00a_52dc:
    ret


    add l
    ld bc, $00a1
    pop hl
    nop
    ld hl, $6101
    ld bc, $ffff
    ld hl, $0005
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_5301
    ld hl, $c906
    inc [hl]
    ret


Call_00a_5301:
    call Call_00a_41ef
    call Call_00a_4c4a
    ld de, $764d
    call Call_00a_40b4
    ld de, $76a7
    call Call_00a_40b4
    call Call_00a_51c1
    ld de, $52dd
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e4
    call Call_00a_43c0
    ld de, $7463
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $541f
    ld a, [$c8dd]
    call Call_00a_43e2
    call Call_00a_40e5
    ret


    ld de, $541f
    ld hl, $c8dd
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_5369

    call Call_00a_5133
    ld hl, $0004
    call Call_00a_441f
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jp Jump_00a_541e


jr_00a_5369:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_541e

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8dd]
    cp $81
    jr z, jr_00a_538c

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld a, $17
    ld [$c906], a
    jp Jump_00a_541e


jr_00a_538c:
    ld a, [$cac0]
    ld hl, $cb0c
    call Call_000_223b
    ld a, [hl]
    cp $0a
    jr nc, jr_00a_53a7

    ld hl, $0007
    call Call_00a_441f
    ld a, $19
    ld [$c906], a
    jr jr_00a_541e

jr_00a_53a7:
    ld a, [$ca8d]
    cp $03
    jr z, jr_00a_53ef

    cp $02
    jr nz, jr_00a_53d0

    ld a, [$c8e8]
    ld hl, $cac1
    call Call_000_223b
    ld a, [hl]
    cp $02
    jr nz, jr_00a_53ef

    ld a, [$cac0]
    ld hl, $cac1
    call Call_000_223b
    ld a, [hl]
    cp $02
    jr nz, jr_00a_53ef

    jr jr_00a_53e2

jr_00a_53d0:
    ld a, [$ca8e]
    ld hl, $c8e8
    cp [hl]
    jr z, jr_00a_53e2

    ld a, [$ca8e]
    ld hl, $cac0
    cp [hl]
    jr nz, jr_00a_53ef

jr_00a_53e2:
    ld hl, $0006
    call Call_00a_441f
    ld a, $19
    ld [$c906], a
    jr jr_00a_541e

jr_00a_53ef:
    ld a, [$c8e8]
    ld hl, $cacc
    call Call_000_223b
    ld a, [hl]
    and $01
    push af
    ld a, [$cac0]
    ld hl, $cacc
    call Call_000_223b
    pop af
    ld b, a
    ld a, [hl]
    and $01
    cp b
    jr nz, jr_00a_541a

    ld hl, $0008
    call Call_00a_441f
    ld a, $19
    ld [$c906], a
    jr jr_00a_541e

jr_00a_541a:
    ld hl, $c906
    inc [hl]

Jump_00a_541e:
jr_00a_541e:
    ret


    ld l, $00
    ld l, [hl]
    nop
    rst $38
    rst $38
    ld a, [$c8e8]
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    ld hl, $c180
    call Call_000_0c80
    ld a, [$cac0]
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    ld hl, $c190
    call Call_000_0c80
    ld a, [$c8e8]
    ld hl, $caca
    call Call_000_223b
    ld a, [hl]
    ld [$da6f], a
    ld a, [$cac0]
    ld hl, $caca
    call Call_000_223b
    ld a, [hl]
    ld [$da70], a
    ld a, [$c8e8]
    and $7f
    ld [$da75], a
    ld a, [$cac0]
    and $7f
    ld [$da76], a
    ld hl, $1603
    rst $10
    ld a, [$da71]
    ld hl, $ca94
    call Call_000_267e
    jr nz, jr_00a_5490

    ld a, [$da71]
    ld hl, $54c7
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_00a_54b5

jr_00a_5490:
    ld a, [$da71]
    ld l, a
    ld h, $05
    ld de, $c1a0
    call Call_000_097a
    ld a, [$da77]
    ld de, $c1a0
    call Call_00a_606d
    ld a, [$da71]
    ld hl, $ca94
    call Call_000_267e
    jr z, jr_00a_54ba

    ld hl, $0009
    jr jr_00a_54bf

jr_00a_54b5:
    ld hl, $000a
    jr jr_00a_54bf

jr_00a_54ba:
    ld hl, $001c
    jr jr_00a_54bf

jr_00a_54bf:
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $fa01
    dec h
    ret z

    or a
    ret nz

    ld hl, $c906
    inc [hl]
    ret


    xor a
    ld [$c8df], a
    ld hl, $c906
    inc [hl]
    ret


    ld hl, $6101
    ld bc, $ffff
    ld de, $748d
    call Call_00a_40b4
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_5e1e
    call Call_00a_40e5
    ld hl, $000b
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $5c
    call Call_000_1b2c
    ld de, $70c5
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $5659
    ld a, [$c8df]
    call Call_00a_43e2
    call Call_00a_40e5
    ld hl, $c906
    inc [hl]
    ret


    ld de, $5659
    ld hl, $c8df
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_5640

jr_00a_5633:
    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    jr jr_00a_5658

jr_00a_5640:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_5658

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8df]
    cp $81
    jr z, jr_00a_5633

    ld hl, $c906
    inc [hl]

Jump_00a_5658:
jr_00a_5658:
    ret


    ld hl, $6101
    ld bc, $ffff
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_40e5
    ld hl, $000c
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ld a, [$c8e8]
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    ld hl, $c180
    call Call_000_0c80
    ld a, [$cac0]
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    ld hl, $c190
    call Call_000_0c80
    ld a, [$c8e8]
    ld hl, $caca
    call Call_000_223b
    ld a, [hl]
    add $10
    ld [$d7ca], a
    ld a, $01
    ld [$d7cb], a
    ld a, [$c8e8]
    ld hl, $cac1
    call Call_000_223b
    ld de, $d665
    call Call_00a_57b0
    ld a, [$c8e8]
    ld hl, $cac1
    call Call_000_223b
    ld [hl], $00
    ld a, [$cac0]
    ld hl, $caca
    call Call_000_223b
    ld a, [hl]
    add $10
    ld [$d7cc], a
    ld a, $01
    ld [$d7cd], a
    ld a, [$cac0]
    ld hl, $cac1
    call Call_000_223b
    ld de, $d6fa
    call Call_00a_57b0
    ld a, [$cac0]
    ld hl, $cac1
    call Call_000_223b
    ld [hl], $00
    ld hl, $0105
    rst $10
    ld hl, HeaderLogo
    rst $10
    ld hl, $1600
    rst $10
    ld a, [$c8eb]
    push af
    xor a
    ld [$c8eb], a
    ld a, [$c905]
    push af
    xor a
    ld [$c905], a
    ld a, [$d8d7]
    push af
    xor a
    ld [$d8d7], a
    ld a, [$c8ec]
    push af
    xor a
    ld [$c8ec], a
    ld a, [$d951]
    push af
    xor a
    ld [$d951], a
    di
    call Call_000_2128
    ei
    pop af
    ld [$d951], a
    pop af
    ld [$c8ec], a
    pop af
    ld [$d8d7], a
    pop af
    ld [$c905], a
    pop af
    ld [$c8eb], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $c8eb
    res 4, [hl]
    res 0, [hl]
    xor a
    ld [$c905], a
    ld a, $08
    ld [$c96d], a
    ld a, $00
    ld [$c96e], a
    ld hl, $0048
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0048
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ld a, $01
    ld [$c96c], a
    ld a, $00
    ld [$d951], a
    xor a
    ld [$d8d7], a
    ld a, [$cac0]
    ld hl, $caca
    call Call_000_223b
    ld l, [hl]
    ld h, $05
    ld de, $c1a0
    call Call_000_097a
    ld a, [$cac0]
    ld hl, $cb23
    call Call_000_223b
    ld a, [hl]
    inc a
    ld c, $0a
    call Call_000_1dbe
    ld c, l
    ld b, h
    ld hl, $c1b0
    call Call_000_0a7c
    ld a, $03
    call Call_000_1688
    ld hl, $c88f
    inc [hl]
    ret


Call_00a_57b0:
    ld b, $95

jr_00a_57b2:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00a_57b2

    ret


    ld hl, $c0d8
    ld a, l
    ld [$c930], a
    ld a, h
    ld [$c931], a
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld a, a
    ld [$c932], a
    ld a, [$c8e9]
    ld [$c933], a
    ld hl, $0702
    rst $10
    ld a, $01
    ld [$c8ec], a
    ret


    ld a, [$c8e2]
    and $80
    ld b, a
    ld a, [$c934]
    and $03
    or b
    ld [$c8e2], a
    ld a, [$c934]
    srl a
    srl a
    ld [$c8e3], a
    ld a, [$c934]
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c8e8], a
    ld de, $2e12
    ld hl, $8800
    call Call_000_1577
    ld a, $02
    ld [$c822], a
    ld a, $10
    ld [$c823], a
    ld hl, $9400
    ld de, $0801
    call Call_00a_411a
    call Call_00a_4e40
    call Call_00a_4deb
    ld de, $76a7
    call Call_00a_40b4
    call Call_00a_4ed3
    call Call_00a_40e5
    ld hl, $0005
    call Call_00a_441f
    call Call_00a_4fcc
    ld a, $05
    ld [$c906], a
    xor a
    ld [$c8ec], a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_4d4d
    call Call_00a_4d77
    ld hl, $0003
    call Call_00a_441f
    call Call_00a_4dc0
    ld a, $01
    ld [$c906], a
    ret


    ld hl, $c0d8
    ld a, l
    ld [$c930], a
    ld a, h
    ld [$c931], a
    ld a, [$c8e5]
    add a
    add a
    ld b, a
    ld a, [$c8e4]
    and $7f
    add b
    ld a, a
    ld [$c932], a
    ld a, [$c8e9]
    ld [$c933], a
    ld hl, $0702
    rst $10
    ld a, $01
    ld [$c8ec], a
    ret


    ld a, [$c8e4]
    and $80
    ld b, a
    ld a, [$c934]
    and $03
    or b
    ld [$c8e4], a
    ld a, [$c934]
    srl a
    srl a
    ld [$c8e5], a
    ld de, $2e12
    ld hl, $8800
    call Call_000_1577
    ld a, $02
    ld [$c822], a
    ld a, $10
    ld [$c823], a
    ld hl, $9400
    ld de, $0801
    call Call_00a_411a
    call Call_00a_517c
    call Call_00a_515e
    ld de, $76a7
    call Call_00a_40b4
    call Call_00a_51c1
    call Call_00a_40e5
    ld hl, $0005
    call Call_00a_441f
    call Call_00a_5301
    ld a, $0b
    ld [$c906], a
    xor a
    ld [$c8ec], a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_50b1
    call Call_00a_50e4
    ld hl, $0004
    call Call_00a_441f
    call Call_00a_5133
    ld a, $07
    ld [$c906], a
    ret


    ld a, [$c906]
    rst $00
    daa
    ld e, c
    and a
    ld e, c
    pop af
    ld e, d
    ld b, [hl]
    ld e, e
    ld a, h
    ld e, e
    sbc e
    ld e, e
    ld c, h
    ld e, h
    ld d, c
    ld e, h
    ld d, [hl]
    ld e, h
    ld e, e
    ld e, h
    sub d
    ld e, h
    ld d, c
    ld e, l
    ld h, d
    ld e, l
    adc l
    ld e, l
    call Call_00a_5947
    or a
    jr nz, jr_00a_5939

    ld hl, $0013
    call Call_00a_441f
    ld a, $0b
    ld [$c906], a
    ret


jr_00a_5939:
    call Call_00a_5971
    ld hl, $0012
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


Call_00a_5947:
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_00a_594e:
    push de
    ld a, [de]
    or a
    jr z, jr_00a_5960

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr z, jr_00a_5960

    inc c

jr_00a_5960:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_00a_594e

    ld a, c
    ld [$c8e9], a
    ret


Call_00a_5971:
    ld hl, $c0d8
    ld bc, $0014
    ld a, $ff
    call Call_000_12c7
    ld hl, $c0d8
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_00a_5986:
    push de
    ld a, [de]
    or a
    jr z, jr_00a_5999

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr z, jr_00a_5999

    ld [hl], c
    inc hl

jr_00a_5999:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc c
    dec b
    jr nz, jr_00a_5986

    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_59d9
    call Call_00a_59ba
    call Call_00a_40e5
    ld hl, $c906
    inc [hl]
    ret


Call_00a_59ba:
    call Call_00a_41ef
    call Call_00a_4c4a
    ld de, $7757
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $5b3a
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_00a_43c0
    ret


Call_00a_59d9:
    ld a, [$c8e3]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $9650
    call Call_00a_59fd
    call Call_00a_59fd
    call Call_00a_59fd
    ld hl, $8800
    call Call_00a_59fd
    call Call_00a_5a41
    ret


Call_00a_59fd:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_00a_5a27

    ld hl, $caca
    call Call_000_223b
    ld a, [hl]
    ld [$c823], a
    ld a, $05
    ld [$c822], a
    ld de, $0901
    pop hl
    push hl
    call Call_00a_411a
    pop hl
    ld a, l
    add $90
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_00a_5a27:
    ld b, $48

jr_00a_5a29:
    ld a, $ff
    call Call_000_1ab9
    xor a
    call Call_000_1ab9
    dec b
    jr nz, jr_00a_5a29

    pop hl
    ld a, l
    add $90
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


Call_00a_5a41:
    ld a, [$c8e3]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $8a00
    call Call_00a_5a5b
    call Call_00a_5a5b
    call Call_00a_5a5b

Call_00a_5a5b:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_00a_5ad7

    ld hl, $cb24
    call Call_000_223b
    ld a, [hl]
    cp $02
    ld a, $98
    jr nz, jr_00a_5a7c

    ld a, l
    add $a8
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, [hl]
    and $01
    add $a7

jr_00a_5a7c:
    ld [$c180], a
    ld a, $f0
    ld [$c181], a
    pop hl
    push hl
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0101
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    pop hl
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_00a_5ad7:
    ld b, $08

jr_00a_5ad9:
    ld a, $ff
    call Call_000_1ab9
    xor a
    call Call_000_1ab9
    dec b
    jr nz, jr_00a_5ad9

    pop hl
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


    ld de, $5b3a
    ld hl, $c8e2
    ld a, [$c8e9]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_00a_4241
    pop af
    pop af
    ld hl, $c8e3
    cp [hl]
    jr z, jr_00a_5b10

    call Call_00a_59d9

jr_00a_5b10:
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_5b24

    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    jr jr_00a_5b39

jr_00a_5b24:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_5b39

    ld a, $59
    call Call_000_1b2c
    xor a
    ld [$c8de], a
    ld hl, $c906
    inc [hl]

Jump_00a_5b39:
jr_00a_5b39:
    ret


    sub d
    ld bc, $00a8
    add sp, $00
    jr z, jr_00a_5b43

    ld l, b

jr_00a_5b43:
    ld bc, $ffff
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $cb23
    call Call_000_223b
    ld a, [hl]
    inc a
    ld c, $0a
    call Call_000_1dbe
    ld c, l
    ld b, h
    ld hl, $c1b0
    call Call_000_0a7c
    ld hl, $0014
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld de, $79be
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $5c46
    ld a, [$c8de]
    call Call_00a_43e2
    call Call_00a_40e5
    ld hl, $c906
    inc [hl]
    ret


    ld de, $5c46
    ld hl, $c8de
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_5bcb

    ld hl, $0012
    call Call_00a_441f
    call Call_00a_59ba
    call Call_00a_40e5
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_00a_5c45

jr_00a_5bcb:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_5c45

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8de]
    cp $81
    jr z, jr_00a_5bed

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld a, $0c
    ld [$c906], a
    jr jr_00a_5c45

jr_00a_5bed:
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $cb23
    call Call_000_223b
    ld a, [hl]
    inc a
    ld c, $0a
    call Call_000_1dbe
    ld a, [$ca4b]
    sub l
    ld a, [$ca4c]
    sbc h
    ld a, [$ca4d]
    sbc $00
    jr nc, jr_00a_5c2c

    ld hl, $001e
    call Call_00a_441f
    ld a, $0b
    ld [$c906], a
    jr jr_00a_5c45

jr_00a_5c2c:
    ld e, $00
    call Call_000_2424
    xor a
    ld [$c8df], a
    ld hl, $c906
    inc [hl]
    ld hl, $c906
    inc [hl]
    ld hl, $c906
    inc [hl]
    ld hl, $c906
    inc [hl]

Jump_00a_5c45:
jr_00a_5c45:
    ret


    dec l
    nop
    ld l, l
    nop
    rst $38
    rst $38
    ld hl, $c906
    inc [hl]
    ret


    ld hl, $c906
    inc [hl]
    ret


    ld hl, $c906
    inc [hl]
    ret


    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_40e5
    ld hl, $0015
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    ld [$c908], a
    ld [$ca40], a
    ld hl, $1604
    rst $10
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $c8eb
    res 4, [hl]
    res 0, [hl]
    xor a
    ld [$c905], a
    ld a, [$c908]
    ld [$cac0], a
    ld hl, $caca
    call Call_000_223b
    ld l, [hl]
    ld h, $05
    ld de, $c190
    call Call_000_097a
    ld a, [$cac0]
    ld hl, $cb23
    call Call_000_223b
    ld a, [hl]
    ld de, $c190
    call Call_00a_606d
    ld a, [$cac0]
    ld hl, $cacc
    call Call_000_223b
    ld a, [hl]
    ld de, $c190
    call Call_00a_6082
    ld a, [$cac0]
    ld hl, $caca
    call Call_000_223b
    ld a, [hl]
    add $10
    ld [$c8f4], a
    ld [$d7ca], a
    ld a, $01
    ld [$d7cb], a
    ld a, [$cac0]
    ld hl, $cac2
    call Call_000_223b
    ld a, l
    ld [$c8f2], a
    ld a, h
    ld [$c8f3], a
    ld a, [$cac0]
    ld hl, $cacc
    call Call_000_223b
    ld a, [hl]
    ld [$c8f6], a
    ld a, [$cac0]
    ld hl, $caca
    call Call_000_223b
    ld a, [hl]
    ld [$c8f5], a
    ld a, $08
    ld [$c96d], a
    ld a, $00
    ld [$c96e], a
    ld hl, $0048
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0048
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ld a, $01
    ld [$c96c], a
    ld a, $02
    ld [$d951], a
    xor a
    ld [$d8d7], a
    ld a, $03
    call Call_000_1688
    ld hl, $c88f
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    ret


    ld hl, $c0d8
    ld a, l
    ld [$c930], a
    ld a, h
    ld [$c931], a
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld a, a
    ld [$c932], a
    ld a, [$c8e9]
    ld [$c933], a
    ld hl, $0702
    rst $10
    ld a, $01
    ld [$c8ec], a
    ret


    ld a, [$c8e2]
    and $80
    ld b, a
    ld a, [$c934]
    and $03
    or b
    ld [$c8e2], a
    ld a, [$c934]
    srl a
    srl a
    ld [$c8e3], a
    ld de, $2e12
    ld hl, $8800
    call Call_000_1577
    ld a, $02
    ld [$c822], a
    ld a, $10
    ld [$c823], a
    ld hl, $9400
    ld de, $0801
    call Call_00a_411a
    call Call_00a_5947
    call Call_00a_5971
    call Call_00a_59d9
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $cb23
    call Call_000_223b
    ld a, [hl]
    inc a
    ld c, $0a
    call Call_000_1dbe
    ld c, l
    ld b, h
    ld hl, $c1b0
    call Call_000_0a7c
    ld hl, $0014
    call Call_00a_441f
    call Call_00a_59ba
    ld de, $79be
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $5c46
    ld a, [$c8de]
    call Call_00a_43e2
    call Call_00a_40e5
    ld a, $04
    ld [$c906], a
    xor a
    ld [$c8ec], a
    ret


Call_00a_5e1e:
    ld hl, $a002
    call Call_000_20ee
    or a
    jr nz, jr_00a_5e84

    ld hl, $0021
    call Call_00a_4058
    ld bc, $0011
    ld a, $e0
    call Call_000_12c7
    ld hl, $0041
    call Call_00a_4058
    ld bc, $0011
    ld a, $e0
    call Call_000_12c7
    ld hl, $0061
    call Call_00a_4058
    ld bc, $0011
    ld a, $e0
    call Call_000_12c7
    ld hl, $0081
    call Call_00a_4058
    ld bc, $0011
    ld a, $e0
    call Call_000_12c7
    ld hl, $0044
    call Call_00a_4058
    ld b, $0a
    ld a, $a4

jr_00a_5e69:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_00a_5e69

    ld a, $31
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    ld hl, $8a40
    ld de, $0a01
    call Call_00a_411a
    jp Jump_00a_5f2b


jr_00a_5e84:
    di
    ld a, $0a
    ld [$0100], a
    ld de, $a17c
    ld hl, $8a00
    call Call_00a_4153
    call Call_00a_5f65
    ld hl, $a1f2
    call Call_000_20ee
    ld c, a
    ld b, $00
    ld hl, $002d
    call Call_00a_4058
    call Call_000_20ad
    ld hl, $a1f1
    call Call_000_20ee
    ld c, a
    ld b, $00
    ld hl, $0030
    call Call_00a_4058
    call Call_000_20ad
    ld hl, $a1c7
    call Call_000_20ee
    or a
    jr z, jr_00a_5f31

    di
    ld a, $0a
    ld [$0100], a
    ld hl, $a246
    ld a, [$a1c8]
    call Call_000_223b
    ld c, [hl]
    ei
    ld b, $00
    ld hl, $0084
    call Call_00a_4058
    call Call_000_2082
    ld hl, $a1c7
    call Call_000_20ee
    cp $01
    jr z, jr_00a_5f37

    di
    ld a, $0a
    ld [$0100], a
    ld hl, $a246
    ld a, [$a1c9]
    call Call_000_223b
    ld c, [hl]
    ei
    ld b, $00
    ld hl, $008a
    call Call_00a_4058
    call Call_000_2082
    ld hl, $a1c7
    call Call_000_20ee
    cp $02
    jr z, jr_00a_5f3d

    di
    ld a, $0a
    ld [$0100], a
    ld hl, $a246
    ld a, [$a1ca]
    call Call_000_223b
    ld c, [hl]
    ei
    ld b, $00
    ld hl, $0090
    call Call_00a_4058
    call Call_000_2082

Jump_00a_5f2b:
    ld a, $00
    ld [$0100], a
    ret


jr_00a_5f31:
    ld hl, $0061
    call Call_00a_5f49

jr_00a_5f37:
    ld hl, $0067
    call Call_00a_5f49

jr_00a_5f3d:
    ld hl, $006d
    call Call_00a_5f49
    ld a, $00
    ld [$0100], a
    ret


Call_00a_5f49:
    push hl
    call Call_00a_4058
    ld a, $e0
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    pop hl
    ld a, l
    add $21
    ld l, a
    ld a, h
    adc $00
    ld h, a
    call Call_00a_4058
    ld a, $e0
    ld [hl+], a
    ld [hl], a
    ret


Call_00a_5f65:
    ld hl, $8da0
    ld b, $18
    call Call_00a_5fcc
    di
    ld a, $0a
    ld [$0100], a
    ld hl, $a1fc
    ld a, [$a1c8]
    call Call_000_223b
    ei
    ld e, l
    ld d, h
    ld hl, $8a40
    ld a, $01
    call Call_00a_5fbc
    di
    ld a, $0a
    ld [$0100], a
    ld hl, $a1fc
    ld a, [$a1c9]
    call Call_000_223b
    ei
    ld e, l
    ld d, h
    ld hl, $8a80
    ld a, $02
    call Call_00a_5fbc
    di
    ld a, $0a
    ld [$0100], a
    ld hl, $a1fc
    ld a, [$a1ca]
    call Call_000_223b
    ei
    ld e, l
    ld d, h
    ld hl, $8ac0
    ld a, $03
    call Call_00a_5fbc
    ret


Call_00a_5fbc:
    ld b, a
    di
    ld a, $0a
    ld [$0100], a
    ld a, [$a1c7]
    cp b
    ei
    jr nc, jr_00a_5fd9

    ld b, $20

Call_00a_5fcc:
jr_00a_5fcc:
    ld a, $ff
    call Call_000_1ab9
    xor a
    call Call_000_1ab9
    dec b
    jr nz, jr_00a_5fcc

    ret


jr_00a_5fd9:
    push bc
    call Call_00a_4153
    pop bc
    dec b
    push bc
    di
    ld a, $0a
    ld [$0100], a
    ld hl, $a1c8
    ld a, b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $a205
    call Call_000_223b
    ld a, [hl]
    ei
    add a
    ld hl, $6013
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop bc
    ld a, b
    swap a
    add $a0
    ld l, a
    ld h, $8d
    call Call_000_1577
    ret


    inc bc
    ld l, $04
    ld l, $05
    ld l, $06
    ld l, $07
    ld l, $08
    ld l, $09
    ld l, $0a
    ld l, $0b
    ld l, $0c
    ld l, $11
    ld a, [bc]
    nop
    push bc
    call Call_00a_6043
    pop bc
    or a
    jr z, jr_00a_603e

    ld de, $000a
    call Call_00a_6043
    call Call_00a_6058
    call Call_00a_605e

jr_00a_603e:
    ld a, c
    call Call_00a_6058
    ret


Call_00a_6043:
    push hl
    ld h, $ff

jr_00a_6046:
    inc h
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    jr nc, jr_00a_6046

    ld a, c
    add e
    ld c, a
    ld a, b
    adc d
    ld b, a
    ld a, h
    pop hl
    ret


Call_00a_6058:
    add $f0
    call Call_000_1aad
    ret


Call_00a_605e:
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


Call_00a_606d:
    or a
    ret z

    push af

jr_00a_6070:
    ld a, [de]
    inc de
    cp $f0
    jr nz, jr_00a_6070

    dec de
    ld a, $a2
    ld [de], a
    inc de
    pop af
    ld l, e
    ld h, d
    call Call_000_09a4
    ret


Call_00a_6082:
    push af

jr_00a_6083:
    ld a, [de]
    inc de
    cp $f0
    jr nz, jr_00a_6083

    dec de
    pop af
    and $01
    add $a7
    ld [de], a
    inc de
    ld a, $f0
    ld [de], a
    ret


    ld a, [$c905]
    rst $00
    and e
    ld h, b
    xor $60
    jr c, jr_00a_6100

    adc [hl]
    ld h, c
    sbc b
    ld h, c
    ld hl, $ffb7
    call Call_00a_4028
    ld hl, $ffbb
    call Call_00a_4028
    ld hl, $c8da
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
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
    ld [$c909], a
    ld a, h
    ld [$c90a], a
    call Call_00a_41ef
    ld de, $2e13
    ld hl, $8800
    call Call_000_1577
    call Call_00a_4323
    ld hl, $c905
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $c905
    inc [hl]
    call Call_00a_41ef
    call Call_00a_6101
    call Call_00a_40e5

jr_00a_6100:
    ret


Call_00a_6101:
    ld de, $77d7
    call Call_00a_40b4
    ld de, $6f86
    call Call_00a_40b4
    ld de, $2e07
    call Call_00a_40b4
    ld a, [$ca4b]
    ldh [$d5], a
    ld a, [$ca4c]
    ldh [$d6], a
    ld a, [$ca4d]
    ldh [$d7], a
    ld hl, $002e
    call Call_00a_4058
    call Call_000_1fb9
    call Call_00a_4323
    ld de, $6186
    ld a, [$c8da]
    call Call_00a_43e2
    ret


    ld de, $6186
    ld hl, $c8da
    ld b, $03
    call Call_00a_42ca
    ld a, [$c846]
    and $0a
    jr z, jr_00a_6154

    ld hl, $c905
    inc [hl]
    ld hl, $c905
    inc [hl]
    jr jr_00a_6185

jr_00a_6154:
    ld a, [$c846]
    bit 0, a
    jr z, jr_00a_6185

    ld a, $59
    call Call_000_1b2c
    ld hl, $c905
    inc [hl]
    xor a
    ld [$c906], a
    ld hl, $c8da
    set 7, [hl]
    ld hl, $c8db
    ld bc, $0007
    ld a, $00
    call Call_000_12c7
    ld hl, $c8e2
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
    jr jr_00a_6185

jr_00a_6185:
    ret


    ld hl, $6100
    nop
    and c
    nop
    rst $38
    rst $38
    ld a, [$c8da]
    rst $00
    xor [hl]
    ld h, c
    push af
    ld h, [hl]
    sbc b
    ld h, c
    call Call_00a_41ef
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_40e5
    ld hl, $c8eb
    res 4, [hl]
    xor a
    ld [$c905], a
    ret


    ld a, [$c906]
    rst $00
    jp nc, $5261

    ld h, d
    sbc b
    ld h, e
    rst $30
    ld h, e
    ld e, a
    ld h, h
    jr @+$67

    ld d, c
    ld h, l
    add l
    ld h, l
    and [hl]
    ld h, l
    pop bc
    ld h, l
    jp nc, $dd65

    ld h, l
    inc bc
    ld h, [hl]
    ld e, c
    ld h, [hl]
    ld a, h
    ld h, [hl]
    xor d
    ld h, [hl]
    call Call_00a_61f2
    or a
    jr nz, jr_00a_61e4

    ld hl, $0004
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    ret


jr_00a_61e4:
    call Call_00a_621c
    ld hl, $0003
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


Call_00a_61f2:
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_00a_61f9:
    push de
    ld a, [de]
    or a
    jr z, jr_00a_620b

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr z, jr_00a_620b

    inc c

jr_00a_620b:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_00a_61f9

    ld a, c
    ld [$c8e9], a
    ret


Call_00a_621c:
    ld hl, $c0d8
    ld bc, $0014
    ld a, $ff
    call Call_000_12c7
    ld hl, $c0d8
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_00a_6231:
    push de
    ld a, [de]
    or a
    jr z, jr_00a_6244

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr z, jr_00a_6244

    ld [hl], c
    inc hl

jr_00a_6244:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc c
    dec b
    jr nz, jr_00a_6231

    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_6287
    call Call_00a_62e8
    call Call_00a_6268
    call Call_00a_40e5
    ld hl, $c906
    inc [hl]
    ret


Call_00a_6268:
    call Call_00a_41ef
    call Call_00a_6101
    ld de, $781f
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $63eb
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_00a_43c0
    ret


Call_00a_6287:
    ld a, [$c8e3]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $9700
    call Call_00a_62a4
    ld hl, $8800
    call Call_00a_62a4
    call Call_00a_62a4

Call_00a_62a4:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_00a_62ce

    ld hl, $caca
    call Call_000_223b
    ld a, [hl]
    ld [$c823], a
    ld a, $05
    ld [$c822], a
    ld de, $0901
    pop hl
    push hl
    call Call_00a_411a
    pop hl
    ld a, l
    add $90
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_00a_62ce:
    ld b, $48

jr_00a_62d0:
    ld a, $ff
    call Call_000_1ab9
    xor a
    call Call_000_1ab9
    dec b
    jr nz, jr_00a_62d0

    pop hl
    ld a, l
    add $90
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


Call_00a_62e8:
    ld a, [$c8e3]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $89b0
    call Call_00a_6302
    call Call_00a_6302
    call Call_00a_6302

Call_00a_6302:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_00a_637e

    ld hl, $cb24
    call Call_000_223b
    ld a, [hl]
    cp $02
    ld a, $98
    jr nz, jr_00a_6323

    ld a, l
    add $a8
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, [hl]
    and $01
    add $a7

jr_00a_6323:
    ld [$c180], a
    ld a, $f0
    ld [$c181], a
    pop hl
    push hl
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0101
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    pop hl
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_00a_637e:
    ld b, $08

jr_00a_6380:
    ld a, $ff
    call Call_000_1ab9
    xor a
    call Call_000_1ab9
    dec b
    jr nz, jr_00a_6380

    pop hl
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


    ld de, $63eb
    ld hl, $c8e2
    ld a, [$c8e9]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_00a_4241
    pop af
    pop af
    ld hl, $c8e3
    cp [hl]
    jr z, jr_00a_63ba

    call Call_00a_6287
    call Call_00a_62e8

jr_00a_63ba:
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_63ce

    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    jr jr_00a_63ea

jr_00a_63ce:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_63ea

    ld a, $59
    call Call_000_1b2c
    ld a, $0a
    ld [$c906], a
    ld a, $00
    ld [$c8dc], a
    ld a, $01
    ld [$c8dd], a

Jump_00a_63ea:
jr_00a_63ea:
    ret


    sub d
    ld bc, $00a8
    add sp, $00
    jr z, jr_00a_63f4

    ld l, b

jr_00a_63f4:
    ld bc, $ffff
    ld a, [$ca4b]
    sub $14
    ld a, [$ca4c]
    sbc $00
    ld a, [$ca4d]
    sbc $00
    jr c, jr_00a_6453

    ld hl, $0014
    ld e, $00
    call Call_000_2424
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    ld hl, $caca
    call Call_000_223b
    ld l, [hl]
    ld h, $05
    ld de, $c180
    call Call_000_097a
    ld a, [$cac0]
    ld hl, $cb23
    call Call_000_223b
    ld a, [hl]
    ld de, $c180
    call Call_00a_606d
    ld hl, $0006
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


jr_00a_6453:
    ld hl, $001c
    call Call_00a_441f
    ld a, $09
    ld [$c906], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$cac0]
    ld hl, $cb11
    call Call_000_223b
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, d
    cp $10
    jr nc, jr_00a_64e3

    push de
    ld a, [$cac0]
    ld hl, $cb15
    call Call_000_223b
    pop de
    ld a, e
    add [hl]
    inc hl
    ld e, a
    ld a, d
    adc [hl]
    ld d, a
    ld a, d
    cp $10
    jr nc, jr_00a_64e3

    push de
    ld a, [$cac0]
    ld hl, $cb19
    call Call_000_223b
    pop de
    ld a, e
    add [hl]
    inc hl
    ld e, a
    ld a, d
    adc [hl]
    ld d, a
    ld a, d
    cp $10
    jr nc, jr_00a_64e3

    push de
    ld a, [$cac0]
    ld hl, $cb1b
    call Call_000_223b
    pop de
    ld a, e
    add [hl]
    inc hl
    ld e, a
    ld a, d
    adc [hl]
    ld d, a
    ld a, d
    cp $10
    jr nc, jr_00a_64e3

    push de
    ld a, [$cac0]
    ld hl, $cb1d
    call Call_000_223b
    pop de
    ld a, e
    add [hl]
    inc hl
    ld e, a
    ld a, d
    adc [hl]
    ld d, a
    ld a, d
    cp $10
    jr nc, jr_00a_64e3

    push de
    ld a, [$cac0]
    ld hl, $cb1f
    call Call_000_223b
    pop de
    ld a, e
    add [hl]
    inc hl
    ld e, a
    ld a, d
    adc [hl]
    ld d, a

jr_00a_64e3:
    push de
    ld a, e
    sub $78
    ld e, a
    ld a, d
    sbc $00
    ld d, a
    pop de
    jr c, jr_00a_6513

    ld hl, $0007
    push de
    ld a, e
    sub $2c
    ld e, a
    ld a, d
    sbc $01
    ld d, a
    pop de
    jr c, jr_00a_6510

    ld hl, $0008
    push de
    ld a, e
    sub $58
    ld e, a
    ld a, d
    sbc $02
    ld d, a
    pop de
    jr c, jr_00a_6510

    ld hl, $0009

jr_00a_6510:
    call Call_00a_441f

jr_00a_6513:
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$cac0]
    ld hl, $caf2
    call Call_000_223b
    ld b, $19
    ld c, $00

jr_00a_652a:
    ld a, [hl+]
    cp $ff
    jr z, jr_00a_6530

    inc c

jr_00a_6530:
    dec b
    jr nz, jr_00a_652a

    ld a, c
    cp $0a
    jr c, jr_00a_654c

    ld hl, $000a
    cp $0f
    jr c, jr_00a_6549

    ld hl, $000b
    cp $14
    jr c, jr_00a_6549

    ld hl, $000c

jr_00a_6549:
    call Call_00a_441f

jr_00a_654c:
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$cac0]
    ld hl, $cb0d
    call Call_000_223b
    ld a, [hl]
    ld hl, $000d
    cp $1e
    jr c, jr_00a_657c

    ld hl, $000e
    cp $28
    jr c, jr_00a_657c

    cp $32
    jr c, jr_00a_657f

    ld hl, $000f
    cp $50
    jr c, jr_00a_657c

    ld hl, $0010

jr_00a_657c:
    call Call_00a_441f

jr_00a_657f:
    ld a, $0f
    ld [$c906], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$cac0]
    ld hl, $cacc
    call Call_000_223b
    ld a, [hl]
    ld hl, $0013
    and $01
    jr z, jr_00a_659e

    ld hl, $0014

jr_00a_659e:
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $0015
    call Call_00a_441f
    ld a, [$cac0]
    ld hl, $cb24
    call Call_000_223b
    ld [hl], $02
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    ret


    ld hl, $0005
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_6268
    call Call_00a_65f0
    call Call_00a_40e5
    ld hl, $c906
    inc [hl]
    ret


Call_00a_65f0:
    ld de, $79ed
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $6653
    ld a, [$c8dc]
    call Call_00a_43e2
    ret


    ld de, $6653
    ld hl, $c8dc
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_6628

    call Call_00a_6268
    call Call_00a_40e5
    ld hl, $0003
    call Call_00a_441f
    ld a, $02
    ld [$c906], a
    jr jr_00a_6652

jr_00a_6628:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_6652

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8dc]
    cp $81
    jr z, jr_00a_6649

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld hl, $c906
    inc [hl]
    jr jr_00a_6652

jr_00a_6649:
    ld a, $03
    ld [$c906], a
    xor a
    ld [$c8dd], a

Jump_00a_6652:
jr_00a_6652:
    ret


    ld hl, $6101
    ld bc, $ffff
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    ld hl, $0701
    rst $10
    ld a, $01
    ld [$c8ec], a
    ret


    ld de, $2e13
    ld hl, $8800
    call Call_000_1577
    call Call_00a_61f2
    call Call_00a_621c
    call Call_00a_6287
    call Call_00a_62e8
    ld hl, $0005
    call Call_00a_441f
    call Call_00a_6268
    call Call_00a_65f0
    call Call_00a_40e5
    ld a, $0b
    ld [$c906], a
    xor a
    ld [$c8ec], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$cac0]
    ld hl, $caca
    call Call_000_223b
    ld a, [hl]
    ld [$da31], a
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld hl, $da42
    xor a
    call Call_00a_66ed
    push af
    ld a, [$cac0]
    ld hl, $cb29
    call Call_000_223b
    xor a
    call Call_00a_66ed
    pop bc
    cp b
    jr z, jr_00a_66e7

    ld hl, $0011
    jr c, jr_00a_66e4

    ld hl, $0012

jr_00a_66e4:
    call Call_00a_441f

jr_00a_66e7:
    ld a, $07
    ld [$c906], a
    ret


Call_00a_66ed:
    ld b, $1b

jr_00a_66ef:
    add [hl]
    inc hl
    dec b
    jr nz, jr_00a_66ef

    ret


    ld a, [$c906]
    rst $00
    rrca
    ld h, a
    cpl
    ld h, a
    ld h, h
    ld h, a
    cp l
    ld h, a
    add hl, hl
    ld l, b
    ld d, c
    ld l, b
    xor [hl]
    ld l, b
    ld hl, sp+$68
    ld [$1969], sp
    ld l, c
    inc hl
    ld l, c
    call Call_00a_61f2
    or a
    jr nz, jr_00a_6721

    ld hl, $0017
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    ret


jr_00a_6721:
    call Call_00a_621c
    ld hl, $0016
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_6287
    call Call_00a_62e8
    call Call_00a_6745
    call Call_00a_40e5
    ld hl, $c906
    inc [hl]
    ret


Call_00a_6745:
    call Call_00a_41ef
    call Call_00a_6101
    ld de, $781f
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $67b1
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_00a_43c0
    ret


    ld de, $67b1
    ld hl, $c8e2
    ld a, [$c8e9]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_00a_4241
    pop af
    pop af
    ld hl, $c8e3
    cp [hl]
    jr z, jr_00a_6786

    call Call_00a_6287
    call Call_00a_62e8

jr_00a_6786:
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_679a

    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    jr jr_00a_67b0

jr_00a_679a:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_67b0

    ld a, $59
    call Call_000_1b2c
    ld hl, $c906
    inc [hl]
    ld a, $01
    ld [$c8dd], a

Jump_00a_67b0:
jr_00a_67b0:
    ret


    sub d
    ld bc, $00a8
    add sp, $00
    jr z, jr_00a_67ba

    ld l, b

jr_00a_67ba:
    ld bc, $ffff
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    ld a, [$cac0]
    ld hl, $cb23
    call Call_000_223b
    ld c, [hl]
    ld a, $32
    call Call_000_1dbe
    ld a, l
    add $64
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld e, $00
    ld a, l
    sub $9f
    ld a, h
    sbc $86
    ld a, e
    sbc $01
    jr c, jr_00a_67ff

    ld hl, $869f
    ld e, $01

jr_00a_67ff:
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    ld a, e
    ldh [$d7], a
    ld a, l
    ld [$c8e4], a
    ld a, h
    ld [$c8e5], a
    ld a, e
    ld [$c8e6], a
    ld hl, $c180
    call Call_000_09c7
    ld hl, $0018
    call Call_00a_441f
    xor a
    ld [$c8de], a
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $5c
    call Call_000_1b2c
    call Call_00a_683e
    call Call_00a_40e5
    ld hl, $c906
    inc [hl]
    ret


Call_00a_683e:
    ld de, $79ed
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $68a8
    ld a, [$c8de]
    call Call_00a_43e2
    ret


    ld de, $68a8
    ld hl, $c8de
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_6881

    call Call_00a_6745
    call Call_00a_40e5
    ld hl, $0016
    call Call_00a_441f
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_00a_68a7

jr_00a_6881:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_68a7

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8de]
    cp $81
    jr z, jr_00a_68a3

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld a, $09
    ld [$c906], a
    jr jr_00a_68a7

jr_00a_68a3:
    ld hl, $c906
    inc [hl]

Jump_00a_68a7:
jr_00a_68a7:
    ret


    ld hl, $6101
    ld bc, $ffff
    ld hl, $c8e4
    ld a, [$ca4b]
    sub [hl]
    inc hl
    ld a, [$ca4c]
    sbc [hl]
    inc hl
    ld a, [$ca4d]
    sbc [hl]
    jr nc, jr_00a_68d1

    ld hl, $001c
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ld hl, $c906
    inc [hl]
    jr jr_00a_68f7

jr_00a_68d1:
    ld a, [$c8e4]
    ld l, a
    ld a, [$c8e5]
    ld h, a
    ld a, [$c8e6]
    ld e, a
    call Call_000_2424
    ld a, [$cac0]
    ld hl, $cacc
    call Call_000_223b
    ld a, [hl]
    xor $01
    ld [hl], a
    ld hl, $001a
    call Call_00a_441f
    ld hl, $c906
    inc [hl]

jr_00a_68f7:
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $001b
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    ret


    ld hl, $0701
    rst $10
    ld a, $01
    ld [$c8ec], a
    ret


    ld de, $2e13
    ld hl, $8800
    call Call_000_1577
    call Call_00a_61f2
    call Call_00a_621c
    call Call_00a_6287
    call Call_00a_62e8
    ld a, [$c8e4]
    ldh [$d5], a
    ld a, [$c8e5]
    ldh [$d6], a
    ld a, [$c8e6]
    ldh [$d7], a
    ld hl, $c180
    call Call_000_09c7
    ld hl, $0018
    call Call_00a_441f
    call Call_00a_6745
    call Call_00a_683e
    call Call_00a_40e5
    ld a, $05
    ld [$c906], a
    xor a
    ld [$c8ec], a
    ret


    ld a, [$c905]
    rst $00
    ld [hl], h
    ld l, c
    pop de
    ld l, c
    ld hl, sp+$69
    ld c, b
    ld l, d
    ld e, d
    ld l, d
    ld hl, $ffb7
    call Call_00a_4028
    ld hl, $ffbb
    call Call_00a_4028
    ld hl, $c8da
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
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
    ld [$c909], a
    ld a, h
    ld [$c90a], a
    call Call_00a_41ef
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_40e5
    ld de, $2e12
    ld hl, $8800
    call Call_000_1577
    call Call_00a_4323
    ld a, $40
    ldh [$d4], a
    ld a, $00
    ld [$c83c], a
    ld hl, $c905
    inc [hl]
    ret


    ld hl, $c905
    inc [hl]
    call Call_00a_41ef
    call Call_00a_69df
    call Call_00a_40e5
    ret


Call_00a_69df:
    ld de, $6f3c
    call Call_00a_40b4
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $6a42
    ld a, [$c8da]
    call Call_00a_43e2
    ret


    ld de, $6a42
    ld hl, $c8da
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    and $0a
    jr z, jr_00a_6a0c

    jr jr_00a_6a50

jr_00a_6a0c:
    ld a, [$c846]
    bit 0, a
    jr z, jr_00a_6a41

    ld a, $59
    call Call_000_1b2c
    ld hl, $c905
    inc [hl]
    xor a
    ld [$c906], a
    ld hl, $c8da
    set 7, [hl]
    ld a, [hl]
    ld [$c907], a
    ld hl, $c8db
    ld bc, $0007
    ld a, $00
    call Call_000_12c7
    ld hl, $c8e2
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
    jr jr_00a_6a41

jr_00a_6a41:
    ret


    cpl
    ld bc, $016f
    rst $38
    rst $38
    ld a, [$c907]
    rst $00
    ld a, [hl]
    ld l, d
    ld d, b
    ld l, d

jr_00a_6a50:
    ld a, [$c825]
    or a
    ret nz

    ld a, $01
    ld [$c83c], a
    call Call_00a_41ef
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_40e5
    xor a
    ld [$c8ec], a
    ld a, $80
    ldh [$d3], a
    ld hl, $c8eb
    res 4, [hl]
    set 0, [hl]
    xor a
    ld [$c905], a
    ld hl, $0103
    rst $10
    ret


    ld a, [$c906]
    rst $00
    sbc b
    ld l, d
    nop
    ld l, e
    ld l, [hl]
    ld l, h
    ld sp, hl
    ld l, h
    inc b
    ld l, l
    ld c, b
    ld l, l
    and [hl]
    ld l, l
    rst $08
    ld l, l
    ld d, e
    ld l, [hl]
    ld [hl], a
    ld l, [hl]
    sbc d
    ld l, [hl]
    ld a, [$ca8d]
    cp $03
    jr z, jr_00a_6abc

    inc a
    ld [$ca8d], a
    ld hl, $ca8d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$ca40]
    ld [hl], a
    ld hl, $001f
    call Call_00a_441f
    ld a, $0a
    ld [$c906], a
    ret


jr_00a_6abc:
    call Call_00a_6acd
    call Call_00a_6ad5
    ld hl, $0019
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


Call_00a_6acd:
    ld a, [$ca8d]
    inc a
    ld [$c8e9], a
    ret


Call_00a_6ad5:
    ld hl, $c0d8
    ld bc, $0014
    ld a, $ff
    call Call_000_12c7
    ld hl, $c0d8
    ld a, [$ca8e]
    cp $ff
    jr z, jr_00a_6afb

    ld [hl+], a
    ld a, [$ca8f]
    cp $ff
    jr z, jr_00a_6afb

    ld [hl+], a
    ld a, [$ca90]
    cp $ff
    jr z, jr_00a_6afb

    ld [hl+], a

jr_00a_6afb:
    ld a, [$ca40]
    ld [hl], a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_6bbc
    call Call_00a_6b38
    call Call_00a_6b13
    ld hl, $c906
    inc [hl]
    ret


Call_00a_6b13:
    call Call_00a_41ef
    call Call_00a_69df
    ld de, $75f3
    call Call_00a_40b4
    ld de, $76e5
    call Call_00a_40b4
    call Call_00a_6b82
    call Call_00a_4323
    ld de, $6cef
    ld a, [$c8db]
    call Call_00a_43e2
    call Call_00a_40e5
    ret


Call_00a_6b38:
    ld de, $c0d8
    ld hl, $9610
    call Call_00a_6b47
    call Call_00a_6b47
    call Call_00a_6b47

Call_00a_6b47:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_00a_6b68

    ld a, [de]
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    pop hl
    push hl
    call Call_00a_4153
    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_00a_6b68:
    ld b, $20

jr_00a_6b6a:
    ld a, $ff
    call Call_000_1ab9
    xor a
    call Call_000_1ab9
    dec b
    jr nz, jr_00a_6b6a

    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


Call_00a_6b82:
    ld a, [$c8db]
    and $7f
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    push af
    ld hl, $cb0c
    call Call_000_223b
    ld c, [hl]
    ld b, $00
    ld hl, $00ca
    call Call_00a_4058
    ld a, $de
    ld [hl+], a
    call $6027
    pop af
    ld hl, $cac1
    call Call_000_223b
    ld a, [hl]
    cp $02
    ret nz

    ld hl, $00d2
    call Call_00a_4058
    ld a, $e3
    ld [hl], a
    ret


Call_00a_6bbc:
    ld a, [$c8db]
    and $7f
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    push af
    ld hl, $9710
    call Call_00a_6c33
    pop af
    ld hl, $cacc
    call Call_000_223b
    ld a, [hl]
    ld hl, $9750
    call Call_00a_6be1
    ret


Call_00a_6be1:
    and $01
    add $a7
    ld [$c180], a
    ld a, $f0
    ld [$c181], a
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0101
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_00a_6c33:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_00a_6c54

    ld a, [de]
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    pop hl
    push hl
    call Call_00a_4153
    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_00a_6c54:
    ld b, $20

jr_00a_6c56:
    ld a, $ff
    call Call_000_1ab9
    xor a
    call Call_000_1ab9
    dec b
    jr nz, jr_00a_6c56

    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


    ld a, [$c825]
    or a
    ret nz

    ld de, $6cef
    ld hl, $c8db
    ld a, [$c8e9]
    ld b, a
    ld a, [hl]
    push af
    call Call_00a_42ca
    pop af
    ld hl, $c8db
    and $7f
    ld b, a
    ld a, [hl]
    and $7f
    cp b
    jr z, jr_00a_6c9e

    call Call_00a_6bbc
    ld de, $76e5
    call Call_00a_40b4
    call Call_00a_6b82
    call Call_00a_40e5

jr_00a_6c9e:
    ld a, [$c846]
    bit 1, a
    jp z, Jump_00a_6cc4

    ld a, [$c0db]
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    ld hl, $c180
    call Call_000_0c80
    ld hl, $0018
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    jr jr_00a_6cee

Jump_00a_6cc4:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_6cee

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8db]
    and $7f
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    ld [$c8e8], a
    xor a
    ld [$c8dc], a
    ld hl, $c906
    inc [hl]

Jump_00a_6cee:
jr_00a_6cee:
    ret


    and c
    nop
    pop hl
    nop
    ld hl, $6101
    ld bc, $ffff
    ld hl, $001a
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_6d11
    ld hl, $c906
    inc [hl]
    ret


Call_00a_6d11:
    call Call_00a_6bbc
    call Call_00a_41ef
    call Call_00a_69df
    ld de, $75f3
    call Call_00a_40b4
    ld de, $76e5
    call Call_00a_40b4
    call Call_00a_6b82
    ld de, $6cef
    ld a, [$c8db]
    call Call_00a_43e2
    ld de, $7463
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $6da0
    ld a, [$c8dc]
    call Call_00a_43e2
    call Call_00a_40e5
    ret


    ld de, $6da0
    ld hl, $c8dc
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_6d75

    call Call_00a_6b13
    ld hl, $0019
    call Call_00a_441f
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_00a_6d9f

jr_00a_6d75:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_6d9f

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8dc]
    cp $81
    jr z, jr_00a_6d97

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld a, $08
    ld [$c906], a
    jr jr_00a_6d9f

jr_00a_6d97:
    ld hl, $c906
    inc [hl]
    xor a
    ld [$c8dd], a

Jump_00a_6d9f:
jr_00a_6d9f:
    ret


    ld l, $00
    ld l, [hl]
    nop
    rst $38
    rst $38
    ld hl, $c0d8
    ld a, [$c8db]
    and $7f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    ld hl, $c180
    call Call_000_0c80
    ld hl, $001b
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$c0d8]
    ld hl, $cac1
    call Call_000_223b
    ld [hl], $02
    ld a, [$c0d9]
    ld hl, $cac1
    call Call_000_223b
    ld [hl], $02
    ld a, [$c0da]
    ld hl, $cac1
    call Call_000_223b
    ld [hl], $02
    ld a, [$c0db]
    ld hl, $cac1
    call Call_000_223b
    ld [hl], $02
    ld hl, $c0d8
    ld a, [$c8db]
    and $7f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $cac1
    call Call_000_223b
    ld [hl], $01
    ld de, $ca8e
    ld a, [$c0d8]
    call Call_00a_6e3f
    ld a, [$c0d9]
    call Call_00a_6e3f
    ld a, [$c0da]
    call Call_00a_6e3f
    ld a, [$c0db]
    call Call_00a_6e3f
    ld hl, $0105
    rst $10
    ld hl, $0103
    rst $10
    ld hl, $c905
    inc [hl]
    ret


Call_00a_6e3f:
    ld b, a
    push bc
    push de
    ld hl, $cac1
    call Call_000_223b
    pop de
    pop bc
    ld a, [hl]
    cp $02
    jr nz, jr_00a_6e52

    ld a, b
    ld [de], a
    inc de

jr_00a_6e52:
    ret


    ld hl, $c0d8
    ld a, l
    ld [$c930], a
    ld a, h
    ld [$c931], a
    ld a, [$c8db]
    and $7f
    ld a, a
    ld [$c932], a
    ld a, [$c8e9]
    ld [$c933], a
    ld hl, $0701
    rst $10
    ld a, $01
    ld [$c8ec], a
    ret


    ld de, $2e12
    ld hl, $8800
    call Call_000_1577
    ld hl, $5605
    rst $10
    call Call_00a_6b38
    call Call_00a_6d11
    ld hl, $001a
    call Call_00a_441f
    ld a, $05
    ld [$c906], a
    xor a
    ld [$c8ec], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $0105
    rst $10
    ld hl, $0103
    rst $10
    ld hl, $c905
    inc [hl]
    ret


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $b0
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $c2
    jp $c5c4


    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $ffd3

    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld c, $01
    ld a, [$efef]
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    call nc, $d6d5
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ld sp, $e032
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    ld c, $01
    ld a, [$efef]
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    call nc, $d6d5
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sbc l
    sbc h
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    ld c, $01
    ld a, [$efef]
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    call nc, $d6d5
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    xor b
    and a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    inc c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $dd
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    and h
    xor d
    call nc, $e0e0
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sub $d5
    sbc $de
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    push de
    xor e
    and l
    xor c
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    add c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld b, b
    ld bc, $effa
    rst $28
    ei
    ret c

    cp $e0
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    db $fd
    reti


    ld b, b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e5], a
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    call nc, $d6d5
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sbc l
    sbc h
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    adc b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    and h
    push de
    and a
    xor b
    xor c
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    xor d
    xor e
    xor h
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    and h
    and l
    and [hl]
    and a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    xor b
    xor c
    xor d
    xor e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    ld l, b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld l, h
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $dd
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld b, [hl]
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $a0
    and c
    and d
    and e
    ldh [$dd], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sub d
    sbc b
    sbc h
    db $e3
    ldh [$9c], a
    sub e
    sub e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    db $e3
    sub l
    sub c
    sub [hl]
    ldh [$9a], a
    db $e3
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub c
    sub h
    push de
    sub c
    sub [hl]
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub $d5
    db $e3
    sub b
    sbc b
    sub b
    sbc c
    push de
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub $97
    push de
    push de
    db $e3
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    push de
    and d
    sub l
    sbc c
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    dec c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sbc e
    sub h
    sbc h
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add h
    add l
    add [hl]
    add a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc b
    adc c
    adc d
    adc e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    dec c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sbc e
    sub h
    sbc h
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add h
    add l
    add [hl]
    add a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc b
    adc c
    adc d
    adc e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc h
    adc l
    adc [hl]
    adc a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sbc e
    sub h
    sbc h
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add h
    add l
    add [hl]
    add a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc b
    adc c
    adc d
    adc e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sbc e
    sub h
    sbc h
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add h
    add l
    add [hl]
    add a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc b
    adc c
    adc d
    adc e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc h
    adc l
    adc [hl]
    adc a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    dec c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sub l
    sbc l
    sub e
    sbc h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sbc h
    sub [hl]
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $9e
    sub b
    sub $99
    push de
    sbc b
    db $e4
    and b
    and c
    and d
    and e
    ldh [$e0], a
    ldh [$e4], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $da
    and h
    and l
    and [hl]
    and a
    ldh [$db], a
    xor b
    xor c
    xor d
    xor e
    ldh [$dc], a
    xor h
    xor l
    xor [hl]
    xor a
    rst $38
    ret c

    cp $e0
    sbc a
    db $e4
    ldh [$e0], a
    ldh [$e0], a
    sbc a
    db $e4
    ldh [$e0], a
    ldh [$e0], a
    sbc a
    db $e4
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    add b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $84
    ldh [$80], a
    ldh [$91], a
    sub a
    sub b
    sub $d6
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $85
    ldh [$81], a
    ldh [$91], a
    sub a
    sub b
    sub $d6
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $86
    ldh [$82], a
    ldh [$91], a
    sub a
    sub b
    sub $d6
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $87
    ldh [$83], a
    ldh [$91], a
    sub a
    sub b
    sub $d6
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    adc d
    sbc b
    push de
    push de
    sub d
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub h
    sub b
    sbc c
    sub c
    sub h
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld b, b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sbc e
    sub h
    sbc h
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    ld b, b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sbc e
    sub h
    sbc h
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    add hl, bc
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e0], a
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    xor c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e0], a
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld c, c
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e0], a
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld b, b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e0], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    add a
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    and b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    and c
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    and d
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    and e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    push de
    rst $18
    sbc a
    sbc $e0
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    xor b
    sbc $d5
    sub $d6
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    push de
    and l
    and c
    and e
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    add a
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    sbc e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    sbc h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sbc l
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc [hl]
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    and h
    and l
    and [hl]
    and a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    xor b
    xor c
    xor d
    xor e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    xor h
    xor l
    xor [hl]
    xor a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    add b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$9e], a
    sbc a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$a0], a
    and c
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $63
    ldh [$9e], a
    sbc a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $63
    ldh [$a0], a
    and c
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    add a
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    adc h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    adc l
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    adc [hl]
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    inc c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sub l
    sbc l
    sub e
    sbc h
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sbc h
    sub [hl]
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    and c
    and a
    xor c
    and h
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    and h
    and d
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld c, $01
    ld a, [$efef]
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    call nc, $d6d5
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sbc l
    sbc h
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    ld a, d
    nop
    dec l
    nop
    dec l
    nop
    dec l
    nop
    dec l
    rlca
    ld [bc], a
    ld a, c
    nop
    jr nz, jr_00a_7a7f

    inc b
    ld de, $2324
    ld b, [hl]
    nop
    inc [hl]
    cpl
    ld [bc], a
    ld c, $08
    ld [bc], a
    ld a, c
    nop
    jr nz, jr_00a_7a8f

    inc b
    ld de, $1214
    dec [hl]
    nop
    ld d, $2f
    inc b
    ld de, $2325
    ld b, [hl]
    nop
    inc [hl]
    cpl
    ld [bc], a
    ld c, $09
    ld [bc], a
    adc d
    nop
    ld d, b
    cpl
    inc b
    ld de, $0103
    dec [hl]
    nop
    ld a, [hl+]

jr_00a_7a7f:
    cpl
    inc b
    ld de, $0206
    ld d, a
    nop
    inc [hl]
    cpl
    inc b
    ld de, $0211
    inc de
    nop
    ld b, b

jr_00a_7a8f:
    cpl
    inc b
    ld de, $1310
    ld bc, $1610
    cpl
    inc b
    ld de, $1320
    ld bc, $1610
    cpl
    inc b
    ld de, HeaderLogo
    dec [hl]
    nop
    ld a, [hl+]
    cpl
    inc b
    ld de, $0219
    adc d
    nop
    ld d, b
    cpl
    inc b
    ld de, $2321
    inc d
    nop
    ld c, l
    cpl
    ld b, $02
    ld [hl+], a
    inc hl
    inc d
    nop
    ld c, l
    cpl
    ld b, $02
    ld d, $02
    ld d, a
    nop
    inc [hl]
    cpl
    inc b
    ld de, $1213
    dec [hl]
    nop
    ld d, $2f
    inc b
    ld de, $0217
    ld a, c
    nop
    jr nz, @+$31

    inc b
    ld de, $0218
    ld a, c
    nop
    jr nz, @+$31

    inc b
    ld de, $0202
    inc de
    nop
    ld b, b
    cpl
    inc b
    ld de, $0205
    ld d, a
    nop
    inc [hl]
    cpl
    inc b
    ld de, $7b36
    scf
    ld a, e
    ld b, d
    ld a, e
    ld c, l
    ld a, e
    ld e, b
    ld a, e
    ld h, e
    ld a, e
    ld l, [hl]
    ld a, e
    ld a, c
    ld a, e
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b

jr_00a_7b26:
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b
    ld [hl], $7b
    rst $38
    ld c, h
    db $e4
    ld c, b

jr_00a_7b3a:
    ld c, h
    dec e
    ld c, l
    nop
    ld b, d
    nop
    ld b, d
    ld [bc], a
    ld c, h
    sbc [hl]
    ld c, a
    ld c, h
    rst $00
    ld d, e
    nop
    ld b, b
    nop
    ld b, b
    ld [bc], a
    ld a, e

jr_00a_7b4e:
    ld d, c
    ld b, h
    ld b, e
    ld l, l
    ld l, c
    nop
    ld l, b
    nop
    ld l, d
    add hl, bc
    ld c, h
    di
    ld e, l
    ld c, h
    sbc h
    ld h, d
    nop
    ld c, d
    nop
    ld l, b

jr_00a_7b62:
    inc b
    ld c, h
    di
    ld e, l
    ld c, h
    sbc h
    ld h, d
    nop
    ld c, [hl]
    nop
    ld c, h
    inc b
    ld c, h
    di
    ld e, l
    ld b, e
    rst $38
    ld l, [hl]
    nop
    ld e, b

jr_00a_7b76:
    nop
    ld e, b
    dec b
    ld c, h
    di
    ld e, l
    ld c, h
    sbc h
    ld h, d
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    inc b
    jr nc, jr_00a_7b26

    ld c, $00
    ld b, b
    nop

jr_00a_7b8a:
    ld b, b
    pop bc
    ld b, c
    ld c, h
    sbc [hl]
    ld c, a
    ld c, h
    rst $00
    ld d, e
    nop
    ld b, b
    nop
    ld b, b
    ld [bc], a
    jr nc, jr_00a_7b3a

    ld c, $f0
    ld c, d
    xor d

jr_00a_7b9e:
    ld b, b
    pop bc
    ld b, c
    ld c, h
    db $e4
    ld c, b
    ld c, h
    and b
    ld d, [hl]
    nop
    ld b, h
    nop
    ld b, h
    inc bc
    jr nc, jr_00a_7b4e

    ld c, $4c
    ld d, h
    ld sp, $c141
    ld b, c
    ld c, h
    db $e4
    ld c, b
    ld b, e
    ld c, [hl]
    ld l, h
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    inc bc
    jr nc, jr_00a_7b62

    ld c, $d8
    ld e, l
    rst $08

jr_00a_7bc6:
    ld b, c
    pop bc
    ld b, c
    ld c, h
    db $e4
    ld c, b
    ld c, h
    ld sp, $0059
    ld c, b
    nop
    ld c, b
    ld [bc], a
    jr nc, jr_00a_7b76

    dec c
    nop
    ld b, b
    ld e, c
    ld b, d
    pop bc
    ld b, c
    ld c, h
    db $e4
    ld c, b
    ld c, h
    ld sp, $0059
    ld c, b
    nop
    ld c, b
    ld [bc], a
    jr nc, jr_00a_7b8a

    dec c
    ld e, b
    ld c, b
    cp [hl]
    ld b, d
    pop bc
    ld b, c
    ld c, h
    di
    ld e, l
    ld c, h
    sbc h
    ld h, d
    nop
    ld c, h
    nop
    ld c, d
    inc b
    jr nc, jr_00a_7b9e

    dec c
    and h
    ld d, b
    dec [hl]

jr_00a_7c02:
    ld b, e
    pop bc
    ld b, c
    ld c, h
    di
    ld e, l
    ld c, h
    sbc h
    ld h, d
    nop
    ld c, [hl]
    nop
    ld c, h
    inc b
    jr nc, @-$5e

    dec c
    sub c
    ld e, e
    jp nc, $c143

    ld b, c
    ld b, e
    ld h, e
    ld c, b
    ld b, e
    dec h
    ld d, c
    nop
    ld d, b
    nop
    ld d, b
    inc bc
    jr nc, jr_00a_7bc6

    rlca
    nop
    ld b, b
    sbc h

jr_00a_7c2a:
    ld b, h
    pop bc
    ld b, c
    ld b, e
    and h
    ld c, h
    ld b, e
    dec h
    ld d, c
    nop
    ld d, d
    nop
    ld d, d
    ld b, $30
    and b
    add hl, hl
    nop
    ld b, b
    ld c, l

jr_00a_7c3e:
    ld b, l
    pop bc
    ld b, c
    ld b, e
    and h
    ld c, h
    ld b, e
    dec h
    ld d, c
    nop
    ld d, d
    nop
    ld d, d
    ld b, $30
    and b
    ld c, $d4
    ld h, [hl]
    call $c145
    ld b, c
    ld b, e
    ld h, e
    ld c, b
    ld b, e
    dec h
    ld d, c
    nop
    ld d, b
    nop
    ld d, b
    inc bc
    jr nc, jr_00a_7c02

    rlca
    ld e, a
    ld c, h
    ld [hl], l

jr_00a_7c66:
    ld b, [hl]
    pop bc
    ld b, c
    ld c, h
    di
    ld e, l
    ld c, h
    sbc h
    ld h, d
    nop
    ld c, [hl]
    nop
    ld c, h
    inc b
    jr nc, @-$5e

    rlca
    ld e, l
    ld e, c
    inc c

jr_00a_7c7a:
    ld b, a
    pop bc
    ld b, c
    ld c, h
    di
    ld e, l
    ld c, h
    sbc h
    ld h, d
    nop
    ld c, [hl]
    nop
    ld c, h
    inc b
    jr nc, jr_00a_7c2a

    rlca
    sub [hl]
    ld l, b
    push de

jr_00a_7c8e:
    ld b, a
    pop bc
    ld b, c
    ld c, h
    di
    ld e, l
    ld c, h
    sbc h
    ld h, d
    nop
    ld c, [hl]
    nop
    ld c, h
    inc b
    jr nc, jr_00a_7c3e

    ld a, [hl+]
    nop
    ld b, b
    ld l, h
    ld c, b
    pop bc
    ld b, c
    ld c, h
    di
    ld e, l
    ld c, h
    sbc h
    ld h, d
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    inc b
    jr nc, @-$5e

    ld a, [hl+]
    sbc d
    ld c, b
    pop af

jr_00a_7cb6:
    ld c, b
    pop bc
    ld b, c
    ld b, e
    nop
    ld b, b
    ld b, e
    add hl, bc
    ld b, h
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    rlca
    jr nc, jr_00a_7c66

    ld a, [hl+]
    ret z

    ld d, d
    or b

jr_00a_7cca:
    ld c, c
    pop bc
    ld b, c
    ld c, h
    rst $10
    ld l, e
    ld c, h
    ld e, b
    ld [hl], b
    nop
    ld h, b
    nop
    ld h, b
    rlca
    jr nc, jr_00a_7c7a

    ld a, [hl+]
    cp b
    ld h, h
    add l

jr_00a_7cde:
    ld c, d
    pop bc
    ld b, c
    ld c, h
    rst $10
    ld l, e
    ld b, e
    ld sp, hl
    ld [hl], e
    nop
    ld h, d
    nop
    ld h, d
    rlca
    jr nc, jr_00a_7c8e

    dec hl
    nop
    ld b, b
    add c

jr_00a_7cf2:
    ld c, e
    pop bc
    ld b, c
    ld b, e
    ld h, b
    ld e, e
    ld b, e
    or c
    ld e, a
    nop
    ld h, h
    nop
    ld h, h
    ld [$a030], sp
    dec hl
    jr nc, jr_00a_7d54

    db $10

jr_00a_7d06:
    ld c, h
    pop bc
    ld b, c
    ld c, h
    rst $10
    ld l, e
    ld c, h
    ld e, b
    ld [hl], b
    nop
    ld h, b
    nop
    ld h, b
    rlca
    jr nc, jr_00a_7cb6

    dec hl
    and [hl]
    ld e, e
    xor h

jr_00a_7d1a:
    ld c, h
    pop bc
    ld b, c
    ld c, h
    di
    ld e, l
    ld c, h
    sbc h
    ld h, d
    nop
    ld c, d
    nop
    ld l, b
    inc b
    jr nc, jr_00a_7cca

    dec hl
    cp e
    ld l, b
    ld [hl], a

jr_00a_7d2e:
    ld c, l
    pop bc
    ld b, c
    ld a, e
    ld d, c
    ld b, h
    ld b, e
    ld l, l
    ld l, c
    nop
    ld l, h
    nop
    ld l, h
    add hl, bc
    jr nc, jr_00a_7cde

    inc l
    nop
    ld b, b
    ld a, $4e
    pop bc
    ld b, c
    ld a, e
    ld d, c
    ld b, h
    ld b, e
    ld l, l
    ld l, c
    nop
    ld l, h
    nop
    ld l, h
    add hl, bc
    jr nc, jr_00a_7cf2

    inc l
    xor a

jr_00a_7d54:
    ld c, [hl]
    rst $18

jr_00a_7d56:
    ld c, [hl]
    pop bc
    ld b, c
    ld a, e
    ld d, c
    ld b, h
    ld b, e
    ld l, l
    ld l, c
    nop
    ld l, [hl]
    nop
    ld l, [hl]
    add hl, bc
    jr nc, jr_00a_7d06

    inc l
    ld [hl], l
    ld e, [hl]
    adc d

jr_00a_7d6a:
    ld c, a
    pop bc
    ld b, c
    ld a, e
    ld d, c
    ld b, h
    ld b, e
    ld l, l
    ld l, c
    nop
    ld l, h
    nop
    ld l, h
    add hl, bc
    jr nc, jr_00a_7d1a

    inc l
    ld [hl], e
    ld l, d
    ld e, c

jr_00a_7d7e:
    ld d, b
    pop bc
    ld b, c
    ld c, h
    di
    ld e, l
    ld c, h
    sbc h
    ld h, d
    nop
    ld c, [hl]
    nop
    ld c, h
    inc b
    jr nc, jr_00a_7d2e

    dec l
    nop
    ld b, b
    rst $28

jr_00a_7d92:
    ld d, b
    pop bc
    ld b, c
    ld c, h
    db $e4
    ld c, b
    ld b, e
    jr nz, jr_00a_7e0c

    nop
    ld [hl], b
    nop
    ld [hl], b
    ld [bc], a
    jr nc, @-$5e

    dec l
    ld l, l
    ld d, c
    pop bc

jr_00a_7da6:
    ld d, c
    pop bc
    ld b, c
    ld c, h
    db $e4
    ld c, b
    ld a, e
    jp z, LCDCInterrupt

    ld [hl], d
    nop
    ld [hl], d
    ld [bc], a
    jr nc, jr_00a_7d56

    dec l
    inc d
    ld e, l
    ld c, h

jr_00a_7dba:
    ld d, d
    pop bc
    ld b, c
    ld c, h
    db $e4
    ld c, b
    ld a, e
    jp z, LCDCInterrupt

    ld [hl], d
    nop
    ld [hl], d
    ld [bc], a
    jr nc, jr_00a_7d6a

    dec l
    ld sp, hl
    ld l, d
    dec b

jr_00a_7dce:
    ld d, e
    pop bc
    ld b, c
    ld c, h
    db $e4
    ld c, b
    ld a, e
    jp z, LCDCInterrupt

    ld [hl], d
    nop
    ld [hl], d
    ld [bc], a
    jr nc, jr_00a_7d7e

    ld l, $00
    ld b, b
    or c

jr_00a_7de2:
    ld d, e
    pop bc
    ld b, c
    ld c, h
    dec l
    ld h, l
    ld c, h
    add $69
    nop
    ld d, [hl]
    nop
    ld d, [hl]
    dec b
    jr nc, jr_00a_7d92

    ld l, $80
    ld c, e
    ld l, h

jr_00a_7df6:
    ld d, h
    pop bc
    ld b, c
    ld c, h
    dec l
    ld h, l
    ld c, h
    add $69
    nop
    ld d, [hl]
    nop
    ld d, [hl]
    dec b
    jr nc, jr_00a_7da6

    ld l, $15
    ld e, h
    dec [hl]

jr_00a_7e0a:
    ld d, l
    pop bc

jr_00a_7e0c:
    ld b, c
    ld b, e
    nop
    ld b, b
    ld b, e
    ld [hl+], a
    ld b, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    rlca
    jr nc, jr_00a_7dba

    ld l, $6b
    ld h, l
    ld bc, $c156
    ld b, c
    ld c, h
    dec l
    ld h, l
    ld c, h
    add $69
    nop
    ld d, [hl]
    nop
    ld d, [hl]
    dec b
    jr nc, jr_00a_7dce

    ld a, [hl-]
    nop
    ld b, b
    cp h

jr_00a_7e32:
    ld d, [hl]
    pop bc
    ld b, c
    ld c, h
    dec l
    ld h, l
    ld c, h
    add $69
    nop
    ld d, [hl]
    nop
    ld d, [hl]
    dec b
    jr nc, jr_00a_7de2

    add hl, hl
    ld e, [hl]
    ld h, l
    ld l, b

jr_00a_7e46:
    ld d, a
    pop bc
    ld b, c
    ld b, e
    and h
    ld c, h
    ld b, e
    dec h
    ld d, c
    nop
    ld d, d
    nop
    ld d, d
    inc bc
    jr nc, jr_00a_7df6

    ld a, [hl-]
    dec h
    ld c, l
    ld h, $58
    pop bc
    ld b, c
    ld b, e
    ld b, $54
    ld b, e
    and a
    ld e, b
    nop
    ld e, d
    nop
    ld e, d
    ld a, [bc]
    jr nc, jr_00a_7e0a

    ld a, [hl-]
    sub $62
    call $c158
    ld b, c
    ld b, e
    ld b, $54
    ld b, e
    and a
    ld e, b
    nop
    ld e, d
    nop
    ld e, d
    ld a, [bc]
    jr nc, @-$5e

    dec e
    nop
    ld b, b
    ld h, e

jr_00a_7e82:
    ld e, c
    pop bc
    ld b, c
    ld b, e
    ld b, $54
    ld b, e
    and a
    ld e, b
    nop
    ld e, d
    nop
    ld e, d
    ld a, [bc]
    jr nc, jr_00a_7e32

    add hl, hl
    adc d
    ld d, [hl]
    add hl, sp

jr_00a_7e96:
    ld e, d
    pop bc
    ld b, c
    ld b, e
    ld b, $54
    ld b, e
    and a
    ld e, b
    nop
    ld e, d
    nop
    ld e, d
    ld a, [bc]
    jr nc, jr_00a_7e46

    dec e
    ld l, $56
    db $d3

jr_00a_7eaa:
    ld e, d
    pop bc
    ld b, c
    ld a, e
    nop
    ld b, b
    ld b, e
    db $e4
    ld h, [hl]
    nop
    ld d, h
    nop
    ld d, h
    dec bc
    jr nc, @-$5e

    dec e
    ld e, c
    ld h, e
    adc c

jr_00a_7ebe:
    ld e, e
    pop bc
    ld b, c
    ld a, e
    nop
    ld b, b
    ld b, e
    db $e4
    ld h, [hl]
    nop
    ld d, h
    nop
    ld d, h
    dec bc
    jr nc, @-$5e

    ld e, $00
    ld b, b
    ld e, l
    ld e, h
    pop bc
    ld b, c
    ld a, e
    nop
    ld b, b
    ld b, e
    db $e4
    ld h, [hl]
    nop
    ld d, h
    nop
    ld d, h
    dec bc
    jr nc, jr_00a_7e82

    ld e, $3b
    ld c, c
    ld [hl], $5d
    pop bc
    ld b, c
    ld a, e
    nop
    ld b, b
    ld b, e
    db $e4
    ld h, [hl]
    nop
    ld d, h
    nop
    ld d, h
    dec bc
    jr nc, jr_00a_7e96

    ld e, $64
    ld d, c
    ret nc

    ld e, l
    pop bc
    ld b, c
    ld a, e
    nop
    ld b, b
    ld b, e
    db $e4
    ld h, [hl]
    nop
    ld d, h
    nop
    ld d, h
    dec bc
    jr nc, jr_00a_7eaa

    ld e, $0f
    ld e, e
    ld a, l
    ld e, [hl]
    pop bc
    ld b, c
    ld c, h
    rst $10
    ld l, e
    ld b, e
    ld sp, hl
    ld [hl], e
    nop
    ld h, d
    nop
    ld h, d
    rlca
    jr nc, jr_00a_7ebe

    rra
    nop
    ld b, b
    ld h, b
    ld e, a
    pop bc
    ld b, c
    ld b, e
    ld h, b
    ld e, e
    ld b, e
    or c
    ld e, a
    nop
    ld h, h
    nop
    ld h, h
    ld [$a030], sp
    rra
    and l
    ld c, a
    inc de
    ld h, b
    pop bc
    ld b, c
    ld b, e
    ld h, b
    ld e, e
    ld b, e
    or c
    ld e, a
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    ld [$a030], sp
    rra
    rst $20
    ld e, [hl]
    sub $60
    pop bc
    ld b, c
    ld b, e
    ld h, b
    ld e, e
    ld b, e
    or c
    ld e, a
    nop
    ld h, h
    nop
    ld h, h
    ld [$a030], sp
    rra
    rlca
    ld l, l
    ld h, a
    ld h, c
    pop bc
    ld b, c
    ld b, e
    ld h, b
    ld e, e
    ld b, e
    or c
    ld e, a
    nop
    ld h, h
    nop
    ld h, h
    ld [$a030], sp
    add hl, hl
    ld d, a
    ld c, c
    add hl, bc
    ld h, d
    pop bc
    ld b, c
    ld a, e
    ld e, e
    ld c, e
    ld a, e
    ld a, h
    ld c, a
    nop
    ld e, h
    nop
    ld e, h
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
