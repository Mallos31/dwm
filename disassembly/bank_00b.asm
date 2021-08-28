; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

    dec bc
    dec d
    ld b, b
    adc b
    ld b, b
    adc $40
    inc de
    ld b, d
    ld [hl-], a
    ld b, e
    and h
    ld b, e
    dec e
    ld b, l
    rrca
    ld b, a
    add hl, sp
    ld b, d
    adc b
    ld b, h
    ld a, [$c96c]
    or a
    jr z, jr_00b_4027

    ld a, [$c96d]
    ld [$c968], a
    ld a, [$c96e]	;Frz at 1 to make any map an overworld map when entering
    ld [$c969], a	;c969 may be the overworld flag. 

jr_00b_4027:
    ld hl, $1605
    rst $10
    ld de, $26dd
    ld a, [$c969]
    or a
    jr z, jr_00b_4037

    ld de, $2a5d

jr_00b_4037:
    ld a, [$c968]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push hl
    ld hl, $9000
    call Call_000_1577
    ld a, [$c968]
    ld a, $08
    jr nz, jr_00b_4076

    ld de, $291d
    ld hl, $8800
    call Call_000_1577
    xor a
    ld [$c8a6], a
    ld [$c8a7], a
    jr jr_00b_4076

    ld a, [$d951]
    cp $07
    jr nz, jr_00b_4076

    xor a
    ld hl, $c0d8
    ld bc, $0028
    call Call_000_12c7

jr_00b_4076:
    pop hl
    ld a, [hl+]
    ldh [$9d], a
    ld a, [hl+]
    ldh [$9e], a
    ld a, [hl+]
    ldh [$9f], a
    ld a, [hl]
    ldh [$a0], a
    ld hl, $1606
    rst $10
    ret


    ld de, $26dd
    ld a, [$c969]
    or a
    jr z, jr_00b_4094

    ld de, $2a5d

jr_00b_4094:
    ld a, [$c968]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push hl
    ld hl, $9000
    call Call_000_1577
    ld a, [$c968]
    ld a, $08
    jr nz, jr_00b_40c0

    ld de, $291d
    ld hl, $8800
    call Call_000_1577
    xor a
    ld [$c8a6], a
    ld [$c8a7], a

jr_00b_40c0:
    pop hl
    ld a, [hl+]
    ldh [$9d], a
    ld a, [hl+]
    ldh [$9e], a
    ld a, [hl+]
    ldh [$9f], a
    ld a, [hl]
    ldh [$a0], a
    ret


    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, $80
    call Call_000_1e0d
    ld a, l
    add a
    add a
    ld [$c925], a
    ld a, $80
    ld c, l
    ld b, h
    call Call_000_1de6
    ld a, l
    ldh [$bb], a
    ld a, h
    ldh [$bc], a
    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    ld a, $a0
    call Call_000_1e0d
    ld a, [$c925]
    add l
    ld [$c925], a
    ld a, $a0
    ld c, l
    ld b, h
    call Call_000_1de6
    ld a, l
    ldh [$b7], a
    ld a, h
    ldh [$b8], a
    ld a, [wGameState]
    bit 1, a
    jr nz, jr_00b_4134

    bit 3, a
    jr nz, jr_00b_4134

    ld hl, $1700
    rst $10
    ld a, [$c8ea]
    bit 7, a
    jr nz, jr_00b_4134

    call Call_00b_4239
    ld hl, $c300
    call Call_000_14cf
    ld de, $c300
    call Call_00b_4309
    ld hl, $1701
    rst $10

jr_00b_4134:
    ld a, [$c81d]
    or a
    jr z, jr_00b_41b3

    di
    call Call_000_1aa6
    ld a, $01
    ldh [rVBK], a
    ei
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
    ld de, $c200
    ld c, $10

jr_00b_4165:
    ld b, $0a
    push hl

jr_00b_4168:
    ld a, [de]
    swap a
    and $0f
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
    ld a, [de]
    and $0f
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
    jr nz, jr_00b_4168

    pop hl
    ld a, e
    add $06
    ld e, a
    ld a, d
    adc $00
    ld d, a
    push bc
    ld bc, $0020
    add hl, bc
    ld a, h
    and $03
    or $98
    ld h, a
    pop bc
    dec c
    jr nz, jr_00b_4165

    di
    call Call_000_1aa6
    ld a, $00
    ldh [rVBK], a
    ei

jr_00b_41b3:
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
    ld de, $c300
    ld c, $10

jr_00b_41d5:
    ld b, $14
    push hl

jr_00b_41d8:
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
    jr nz, jr_00b_41d8

    pop hl
    ld a, e
    add $0c
    ld e, a
    ld a, d
    adc $00
    ld d, a
    push bc
    ld bc, $0020
    add hl, bc
    ld a, h
    and $03
    or $98
    ld h, a
    pop bc
    dec c
    jr nz, jr_00b_41d5

    ld a, [$c925]
    ld hl, $c950
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $01
    ret


    ld hl, $1700
    rst $10
    call Call_00b_4239
    ld hl, $c500
    call Call_000_14cf
    ld de, $c500
    call Call_00b_4309
    ld hl, $1701
    rst $10
    ld a, [$c925]
    ld hl, $c950
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $01
    ret


Call_00b_4239:
    ld a, [$c969]
    or a
    jr z, jr_00b_4244

    ld hl, $1609
    rst $10
    ret


jr_00b_4244:
    ld hl, $4b43
    ld a, [$c968]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c925]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [de]
    ld e, a
    add a
    add e
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ret


Call_00b_4274:
    ld a, [$c969]
    or a
    jr nz, jr_00b_42ac

    ld hl, $4b43
    ld a, [$c968]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c925]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [de]
    ld e, a
    add a
    add e
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_00b_42ac:
    ld a, [$c926]
    cp $ff
    jr nz, jr_00b_42b7

    ld hl, $4308
    ret


jr_00b_42b7:
    ld hl, $42c8
    ld a, [$c92b]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ret c

    ld b, d
    sbc $42
    db $e4
    ld b, d
    ld [$f042], a
    ld b, d
    or $42
    db $fc
    ld b, d
    ld [bc], a
    ld b, e
    rrca
    dec bc
    ld bc, $0101
    rst $38
    rrca
    dec bc
    ld bc, $0101
    rst $38
    rrca
    inc c
    ld bc, $0201
    rst $38
    rrca
    inc c
    ld bc, $0201
    rst $38
    rrca
    ld de, $0101
    inc bc
    rst $38
    rrca
    ld [$0101], sp
    inc b
    rst $38
    rrca
    rrca
    ld bc, $0501
    rst $38
    rrca
    ld b, $01
    ld bc, $ff06
    rst $38

Call_00b_4309:
    ld a, [$c969]
    or a
    ret z

    ld hl, $c960
    ld a, [$c925]
    cp [hl]
    ret nz

    ld a, [$c962]
    ld l, a
    ld a, [$c963]
    ld h, a
    add hl, de
    ld a, $3c
    ld [hl+], a
    inc a
    ld [hl], a
    ld a, l
    add $1f
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, $3e
    ld [hl+], a
    inc a
    ld [hl], a
    ret


    ld a, $00
    ldh [$d6], a
    ld hl, $d7d2
    call Call_00b_433f
    ldh [$d5], a
    ret


Call_00b_433f:
jr_00b_433f:
    ld a, [hl]
    cp $ff
    jr z, jr_00b_4366

    bit 6, a
    jr nz, jr_00b_4357

    call Call_00b_43e5
    jr nz, jr_00b_4357

    ld a, l
    add $04
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    ret


jr_00b_4357:
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ldh a, [$d6]
    inc a
    ldh [$d6], a
    jr jr_00b_433f

jr_00b_4366:
    ld a, $ff
    ldh [$d6], a
    call Call_00b_4274

jr_00b_436d:
    ld a, [hl]
    cp $ff
    ret z

    bit 7, a
    jr z, jr_00b_43a1

    and $f0
    cp $80
    jr nz, jr_00b_4397

    call Call_00b_4452
    jr nz, jr_00b_4397

    ld a, [hl]
    and $0f
    cp $0f
    jr z, jr_00b_438d

    ld b, a
    ldh a, [$8e]
    cp b
    jr nz, jr_00b_4397

jr_00b_438d:
    ld a, l
    add $04
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    ret


jr_00b_4397:
    ld a, l
    add $05
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_00b_436d

jr_00b_43a1:
    ld a, $ff
    ret


    ld a, $ff
    ldh [$d5], a
    ldh a, [$90]
    bit 6, a
    ret nz

    ld a, [$d8d7]
    or a
    ret nz

    call Call_00b_43b8
    ldh [$d5], a
    ret


Call_00b_43b8:
    call Call_00b_4274

jr_00b_43bb:
    ld a, [hl]
    cp $ff
    ret z

    bit 7, a
    jr z, jr_00b_43e2

    and $f0
    cp $90
    jr nz, jr_00b_43d8

    call Call_00b_4452
    jr nz, jr_00b_43d8

    ld a, l
    add $04
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    ret


jr_00b_43d8:
    ld a, l
    add $05
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_00b_43bb

jr_00b_43e2:
    ld a, $ff
    ret


Call_00b_43e5:
    push hl
    push bc
    push de
    ld a, l
    add $05
    ld l, a
    ld a, h
    adc $00
    ld h, a
    bit 0, [hl]
    jr nz, jr_00b_444c

    ld a, l
    add $13
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ldh a, [$db]
    sub [hl]
    inc hl
    ld c, a
    ldh a, [$dc]
    sbc [hl]
    inc hl
    ld b, a
    jr nz, jr_00b_440f

    ld a, c
    cp $10
    jr nc, jr_00b_444c

    jr jr_00b_4422

jr_00b_440f:
    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a
    ld a, b
    or a
    jr nz, jr_00b_444c

    ld a, c
    cp $10
    jr nc, jr_00b_444c

jr_00b_4422:
    ldh a, [$dd]
    sub [hl]
    inc hl
    ld c, a
    ldh a, [$de]
    sbc [hl]
    ld b, a
    jr nz, jr_00b_4434

    ld a, c
    cp $10
    jr nc, jr_00b_444c

    jr jr_00b_4447

jr_00b_4434:
    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a
    ld a, b
    or a
    jr nz, jr_00b_444c

    ld a, c
    cp $10
    jr nc, jr_00b_444c

jr_00b_4447:
    xor a
    pop de
    pop bc
    pop hl
    ret


jr_00b_444c:
    xor a
    inc a
    pop de
    pop bc
    pop hl
    ret


Call_00b_4452:
    push hl
    push bc
    push de
    inc hl
    inc hl
    ldh a, [$db]
    swap a
    and $0f
    ld b, a
    ldh a, [$dc]
    swap a
    and $f0
    or b
    ld b, a
    ld a, $0a
    call Call_000_1dfb
    cp [hl]
    jr nz, jr_00b_444c

    inc hl
    ldh a, [$dd]
    swap a
    and $0f
    ld b, a
    ldh a, [$de]
    swap a
    and $f0
    or b
    ld b, a
    ld a, $08
    call Call_000_1dfb
    cp [hl]
    jr nz, jr_00b_444c

    jr jr_00b_4447

    ld a, [$c850]
    or a
    ret nz

    ld a, [$c88e]
    or a
    ret nz

    ld a, [$c88f]
    or a
    ret nz

    ld a, [wGameState]
    bit 0, a
    ret nz

    ldh a, [$90]
    bit 0, a
    ret nz

    ld a, [$c969]
    or a
    ret nz

    ld hl, $4b43
    ld a, [$c968]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c925]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [de]
    ld e, a
    add a
    add e
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $2de7
    ld a, [$c925]
    add a
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a

jr_00b_44ec:
    ld a, [hl]
    cp $ff
    ret z

    ld a, [hl]
    or a
    jr z, jr_00b_4504

    cp $09
    jr z, jr_00b_4504

    inc hl
    ld a, [hl]
    dec hl
    or a
    jr z, jr_00b_4504

    cp $07
    jr z, jr_00b_4504

    jr jr_00b_4513

jr_00b_4504:
    ldh a, [$97]
    sub e
    cp [hl]
    jr nz, jr_00b_4513

    inc hl
    ldh a, [$98]
    sub d
    cp [hl]
    dec hl
    jp z, Jump_00b_45a8

jr_00b_4513:
    ld a, l
    add $07
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_00b_44ec

    ld a, [wGameState]
    bit 0, a
    jp nz, Jump_00b_4674

    ldh a, [$90]
    bit 0, a
    jp nz, Jump_00b_4674

    ld a, [$c969]
    or a
    jp nz, Jump_00b_46a7

    ld hl, $4b43
    ld a, [$c968]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c925]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [de]
    ld e, a
    add a
    add e
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $2de7
    ld a, [$c925]
    add a
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a

jr_00b_4578:
    ld a, [hl]
    cp $ff
    jp z, Jump_00b_4674

    ld a, [hl]
    or a
    jr z, jr_00b_459e

    cp $09
    jr z, jr_00b_459e

    ldh a, [$97]
    sub e
    cp [hl]
    jr nz, jr_00b_459e

    inc hl
    ld a, [hl]
    dec hl
    or a
    jr z, jr_00b_459e

    cp $07
    jr z, jr_00b_459e

    inc hl
    ldh a, [$98]
    sub d
    cp [hl]
    dec hl
    jr z, jr_00b_45a8

jr_00b_459e:
    ld a, l
    add $07
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_00b_4578

Jump_00b_45a8:
jr_00b_45a8:
    inc hl
    inc hl
    ld a, [hl+]
    ld [$c96d], a
    ld a, [hl+]
    ld [$c96e], a
    ld de, $2de7
    ld a, [hl+]
    push af
    and $0f
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    add [hl]
    inc de
    inc hl
    swap a
    ld b, a
    and $f0
    ld c, a
    ld a, b
    and $0f
    ld b, a
    ld a, c
    add $08
    ld c, a
    ld a, b
    adc $00
    ld b, a
    ld a, c
    ld [$c96f], a
    ld a, b
    ld [$c970], a
    ld a, [de]
    add [hl]
    inc de
    inc hl
    swap a
    ld b, a
    and $f0
    ld c, a
    ld a, b
    and $0f
    ld b, a
    ld a, c
    add $08
    ld c, a
    ld a, b
    adc $00
    ld b, a
    pop af
    bit 7, a
    jr z, jr_00b_4601

    ld a, c
    add $08
    ld c, a
    ld a, b
    adc $00
    ld b, a

jr_00b_4601:
    ld a, c
    ld [$c971], a
    ld a, b
    ld [$c972], a
    ld a, $01
    ld [$c96c], a
    ld a, [$c96e]
    or a
    jr nz, jr_00b_466b

    ld a, [$c969]
    or a
    jr nz, jr_00b_4627

    ld a, [$c968]
    cp $10
    jr nz, jr_00b_4627

    ldh a, [$95]
    cp $68
    jr z, jr_00b_462c

jr_00b_4627:
    call Call_000_2652
    jr z, jr_00b_465b

jr_00b_462c:
    ld a, [$c968]
    ld l, a
    ld a, [$c969]
    ld h, a
    push hl
    ld a, [$c96d]
    ld l, a
    ld a, [$c96e]
    ld h, a
    ld a, l
    ld [$c968], a
    ld a, h
    ld [$c969], a
    call Call_000_2652
    pop hl
    push af
    ld a, l
    ld [$c968], a
    ld a, h
    ld [$c969], a
    pop af
    jr nz, jr_00b_465b

    ld hl, $0109
    rst $10
    jr jr_00b_466b

jr_00b_465b:
    ld a, $03
    call Call_000_1688
    ld hl, $c88f
    inc [hl]
    ld a, $51
    call Call_000_1b2c
    jr jr_00b_4674

jr_00b_466b:
    ld hl, wGameState
    set 5, [hl]
    xor a
    ld [$c905], a

Jump_00b_4674:
jr_00b_4674:
    ld a, [$c968]
    ld a, [$c968]
    cp $53
    jr z, jr_00b_46d5

    cp $61
    jr z, jr_00b_46d5

    cp $62
    jr z, jr_00b_46d5

    cp $63
    jr z, jr_00b_46d5

    cp $64
    jr z, jr_00b_46d5

    cp $54
    jr z, jr_00b_46d5

    cp $55
    jr z, jr_00b_46d5

    cp $56
    jr z, jr_00b_46d5

    cp $57
    jr z, jr_00b_46d5

    cp $58
    jr z, jr_00b_46d5

    cp $59
    jr z, jr_00b_46d5

    ret


Jump_00b_46a7:
    ld hl, $c960
    ld a, [$c925]
    cp [hl]
    jr nz, jr_00b_46d5

    ldh a, [$aa]
    srl a
    srl a
    cp $0f
    jr nz, jr_00b_46d5

    ld a, $01
    ld [$c96c], a
    ld a, $00
    ld [$c96d], a
    ld a, $80
    ld [$c96e], a
    call Call_00b_46da
    ld hl, wGameState
    set 5, [hl]
    xor a
    ld [$c905], a

jr_00b_46d5:
    ld hl, $1608
    rst $10
    ret


Call_00b_46da:
    ld a, [$c969]
    or a
    ret z

    ld hl, $c940
    ld de, $c950
    ld b, $10
    ld c, $00

jr_00b_46e9:
    ld a, [hl]
    and $f0
    cp $f0
    jr z, jr_00b_46f4

    ld a, [de]
    or a
    ret z

    inc c

jr_00b_46f4:
    inc hl
    inc de
    dec b
    jr nz, jr_00b_46e9

    ld a, c
    cp $10
    jr z, jr_00b_4703

    cp $02
    jr z, jr_00b_4709

    ret


jr_00b_4703:
    ld a, $05
    ld [$c92d], a
    ret


jr_00b_4709:
    ld a, $06
    ld [$c92d], a
    ret


    ld a, [$c8ea]
    bit 7, a
    jr z, jr_00b_471b

    ld hl, $0604
    rst $10
    ret


jr_00b_471b:
    ld hl, $d7d2
    ld bc, $0101
    ld a, $00
    call Call_000_12c7
    call Call_00b_482b
    ld a, $ff
    ld [$d7d2], a
    call Call_00b_4274
    ld a, [$c969]
    or a
    jr z, jr_00b_477e

    ld a, [$c926]
    cp $ff
    jr z, jr_00b_477e

    ld a, [$c925]
    ld b, a
    ld a, [$c926]
    ld [$c925], a
    ld a, b
    ld [$c926], a
    call Call_00b_477e
    ld a, [$c925]
    ld b, a
    ld a, [$c926]
    ld [$c925], a
    ld a, b
    ld [$c926], a
    ld a, [$c927]
    ld l, a
    ld a, [$c928]
    ld h, a
    ld a, l
    ld [$d7ea], a
    ld a, h
    ld [$d7eb], a
    ld a, [$c929]
    ld l, a
    ld a, [$c92a]
    ld h, a
    ld a, l
    ld [$d7ec], a
    ld a, h
    ld [$d7ed], a
    ret


Call_00b_477e:
jr_00b_477e:
    ld de, $d7d2

Jump_00b_4781:
jr_00b_4781:
    ld a, e
    ldh [$d5], a
    ld a, d
    ldh [$d6], a
    ld a, [hl+]
    ld [de], a
    cp $ff
    ret z

    bit 7, a
    jr z, jr_00b_479a

    ld a, l
    add $04
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_00b_4781

jr_00b_479a:
    ldh [$d7], a
    ld bc, $2de7
    ld a, [$c925]
    add a
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    push de
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [bc]
    add [hl]
    ld [de], a
    inc hl
    inc de
    inc bc
    ld a, [bc]
    add [hl]
    ld [de], a
    inc hl
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    inc de
    ldh a, [$d7]
    swap a
    and $03
    ld [de], a
    push hl
    ldh a, [$d5]
    ld e, a
    ldh a, [$d6]
    ld d, a
    ld a, e
    add $11
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    inc hl
    ld a, [hl+]
    ld [de], a
    push hl
    call Call_00b_4839
    pop hl
    push af
    ldh a, [$d5]
    ld e, a
    ldh a, [$d6]
    ld d, a
    ld a, e
    add $16
    ld e, a
    ld a, d
    adc $00
    ld d, a
    pop af
    ld [de], a
    ldh a, [$d5]
    ld e, a
    ldh a, [$d6]
    ld d, a
    ld a, e
    add $18
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [hl+]
    swap a
    ld c, a
    and $f0
    or $08
    ld [de], a
    inc de
    ld a, c
    and $0f
    ld [de], a
    inc de
    ld a, [hl]
    swap a
    ld c, a
    and $f0
    or $08
    ld [de], a
    inc de
    ld a, c
    and $0f
    ld [de], a
    inc de
    pop hl
    pop de
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    jp Jump_00b_4781


Call_00b_482b:
    ld hl, $d7be
    ld b, $06

jr_00b_4830:
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl+], a
    dec b
    jr nz, jr_00b_4830

    ret


Call_00b_4839:
    cp $ff
    ret z

    ld b, $00
    cp $e0
    jr z, jr_00b_48ba

    ld b, $20
    cp $e1
    jr z, jr_00b_48bf

    ld b, $30
    cp $e2
    jr z, jr_00b_48bf

    ld b, $40
    cp $e3
    jr z, jr_00b_48bf

    cp $f0
    jr c, jr_00b_488a

    and $03
    add a
    ld hl, $d7ca
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc hl
    dec de
    dec de
    ld a, [hl-]
    ld [de], a
    inc de
    inc de
    ld b, a
    ld a, [hl]
    ld [de], a
    cp $ff
    jr nz, jr_00b_4887

    push de
    ld a, e
    sub $10
    ld e, a
    ld a, d
    sbc $00
    ld d, a
    ld a, $ff
    ld [de], a
    dec de
    dec de
    ld a, $00
    ld [de], a
    pop de
    ld a, $00
    ret


jr_00b_4887:
    ld e, b
    jr jr_00b_488c

jr_00b_488a:
    ld e, $00

jr_00b_488c:
    ld hl, $d7be
    ld b, $06
    ld c, $00
    ld d, a

jr_00b_4894:
    ld a, [hl]
    cp $ff
    jr z, jr_00b_48f6

    cp d
    jr nz, jr_00b_48a2

    inc hl
    ld a, [hl-]
    cp e
    jp z, Jump_00b_4945

jr_00b_48a2:
    ld a, [hl]
    cp $55
    jr z, jr_00b_48ab

    cp $15
    jr nz, jr_00b_48b1

jr_00b_48ab:
    inc hl
    ld a, [hl-]
    or a
    jr nz, jr_00b_48b1

    inc c

jr_00b_48b1:
    inc hl
    inc hl
    inc c
    dec b
    jr nz, jr_00b_4894

    ld a, $50
    ret


jr_00b_48ba:
    ld a, $5e
    ld [de], a
    ld a, b
    ret


jr_00b_48bf:
    sub $e1
    push af
    ld hl, $ca8e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr nz, jr_00b_48e1

    pop af
    push de
    ld a, e
    sub $10
    ld e, a
    ld a, d
    sbc $00
    ld d, a
    ld a, $ff
    ld [de], a
    pop de
    ld a, $00
    ret


jr_00b_48e1:
    pop af
    ld hl, $ca91
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [de], a
    dec de
    dec de
    ld a, $01
    ld [de], a
    inc de
    inc de
    ld a, b
    ret


jr_00b_48f6:
    ld [hl], d
    inc hl
    ld [hl], e
    push bc
    ld a, e
    or a
    jr nz, jr_00b_490b

    ld hl, $2adf
    ld a, d
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    jr jr_00b_4917

jr_00b_490b:
    ld l, d
    ld h, $00
    add hl, hl
    ld a, l
    add $74
    ld l, a
    ld a, h
    adc $49
    ld h, a

jr_00b_4917:
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    add $80
    ld h, a
    ld a, [$c969]
    or a
    jr z, jr_00b_492a

    ld a, h
    add $07
    ld h, a
    jr jr_00b_493f

jr_00b_492a:
    ld a, [$c968]
    cp $08
    jr z, jr_00b_493f

    cp $45
    jr nz, jr_00b_493b

    ld a, h
    add $02
    ld h, a
    jr jr_00b_493f

jr_00b_493b:
    ld a, h
    add $05
    ld h, a

jr_00b_493f:
    ld l, $00
    call Call_000_1577
    pop bc

Jump_00b_4945:
    ld a, [$c969]
    or a
    jr nz, jr_00b_4964

    ld a, [$c968]
    cp $08
    jr z, jr_00b_495e

    cp $45
    jr z, jr_00b_496c

    ld a, c
    add a
    add a
    add a
    add a
    add $50
    ret


jr_00b_495e:
    ld a, c
    add a
    add a
    add a
    add a
    ret


jr_00b_4964:
    ld a, c
    add a
    add a
    add a
    add a
    add $70
    ret


jr_00b_496c:
    ld a, c
    add a
    add a
    add a
    add a
    add $20
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

    jr c, jr_00b_49bb

    jr c, @+$05

jr_00b_49bb:
    jr c, jr_00b_49c1

    jr c, @+$07

    jr c, jr_00b_49c7

jr_00b_49c1:
    jr c, @+$09

    jr c, jr_00b_49cd

    jr c, @+$0b

jr_00b_49c7:
    jr c, jr_00b_49d3

    jr c, @+$0d

    jr c, jr_00b_49d9

jr_00b_49cd:
    jr c, @+$0f

    jr c, jr_00b_49df

    jr c, @+$11

jr_00b_49d3:
    jr c, jr_00b_49e5

    jr c, @+$13

    jr c, jr_00b_49eb

jr_00b_49d9:
    jr c, @+$15

    jr c, jr_00b_49f1

    jr c, @+$17

jr_00b_49df:
    jr c, jr_00b_49f7

    jr c, @+$19

    jr c, jr_00b_49fd

jr_00b_49e5:
    jr c, @+$1b

    jr c, jr_00b_4a03

    jr c, @+$1d

jr_00b_49eb:
    jr c, jr_00b_4a09

    jr c, @+$1f

    jr c, jr_00b_4a0f

jr_00b_49f1:
    jr c, @+$21

    jr c, jr_00b_4a15

    jr c, @+$23

jr_00b_49f7:
    jr c, jr_00b_4a1b

    jr c, @+$25

    jr c, jr_00b_4a21

jr_00b_49fd:
    jr c, @+$27

    jr c, jr_00b_4a27

    jr c, @+$29

jr_00b_4a03:
    jr c, jr_00b_4a2d

    jr c, @+$2b

    jr c, jr_00b_4a33

jr_00b_4a09:
    jr c, @+$2d

    jr c, jr_00b_4a39

    jr c, @+$2f

jr_00b_4a0f:
    jr c, jr_00b_4a3f

    jr c, @+$31

    jr c, jr_00b_4a45

jr_00b_4a15:
    jr c, @+$33

    jr c, jr_00b_4a4b

    jr c, jr_00b_4a4e

jr_00b_4a1b:
    jr c, @+$36

    jr c, jr_00b_4a54

    jr c, jr_00b_4a57

jr_00b_4a21:
    jr c, jr_00b_4a5a

    jr c, jr_00b_4a5d

    jr c, jr_00b_4a60

jr_00b_4a27:
    jr c, jr_00b_4a63

    jr c, jr_00b_4a66

    jr c, jr_00b_4a69

jr_00b_4a2d:
    jr c, jr_00b_4a6c

    jr c, jr_00b_4a6f

    jr c, jr_00b_4a72

jr_00b_4a33:
    jr c, @+$42

    jr c, jr_00b_4a78

    jr c, jr_00b_4a7b

jr_00b_4a39:
    jr c, jr_00b_4a7e

    jr c, @+$46

    jr c, jr_00b_4a84

jr_00b_4a3f:
    jr c, @+$48

    jr c, jr_00b_4a8a

    jr c, jr_00b_4a45

jr_00b_4a45:
    add hl, sp
    ld bc, $0239
    add hl, sp
    inc bc

jr_00b_4a4b:
    add hl, sp
    inc b
    add hl, sp

jr_00b_4a4e:
    dec b
    add hl, sp
    ld b, $39
    rlca
    add hl, sp

jr_00b_4a54:
    ld [$0939], sp

jr_00b_4a57:
    add hl, sp
    ld a, [bc]
    add hl, sp

jr_00b_4a5a:
    dec bc
    add hl, sp
    inc c

jr_00b_4a5d:
    add hl, sp
    dec c
    add hl, sp

jr_00b_4a60:
    ld c, $39
    rrca

jr_00b_4a63:
    add hl, sp
    db $10
    add hl, sp

jr_00b_4a66:
    ld de, $1239

jr_00b_4a69:
    add hl, sp
    inc de
    add hl, sp

jr_00b_4a6c:
    inc d
    add hl, sp
    dec d

jr_00b_4a6f:
    add hl, sp
    ld d, $39

jr_00b_4a72:
    rla
    add hl, sp
    jr jr_00b_4aaf

    add hl, de
    add hl, sp

jr_00b_4a78:
    ld a, [de]
    add hl, sp
    dec de

jr_00b_4a7b:
    add hl, sp
    inc e
    add hl, sp

jr_00b_4a7e:
    dec e
    add hl, sp
    ld e, $39
    rra
    add hl, sp

jr_00b_4a84:
    jr nz, jr_00b_4abf

    ld hl, $2239
    add hl, sp

jr_00b_4a8a:
    inc hl
    add hl, sp
    inc h
    add hl, sp
    dec h
    add hl, sp
    ld h, $39
    daa
    add hl, sp
    jr z, jr_00b_4acf

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
    jr nc, jr_00b_4adf

    ld sp, $3239
    add hl, sp
    inc sp
    add hl, sp
    inc [hl]
    add hl, sp
    dec [hl]

jr_00b_4aaf:
    add hl, sp
    ld [hl], $39
    scf
    add hl, sp
    jr c, jr_00b_4aef

    add hl, sp
    add hl, sp
    ld a, [hl-]
    add hl, sp
    dec sp
    add hl, sp
    inc a
    add hl, sp
    dec a

jr_00b_4abf:
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

jr_00b_4acf:
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

jr_00b_4adf:
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

jr_00b_4aef:
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
    jr jr_00b_4b40

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
    jr nz, jr_00b_4b50

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
    jr z, jr_00b_4b60

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
    jr nc, jr_00b_4b70

    ld sp, $323a
    ld a, [hl-]
    inc sp
    ld a, [hl-]
    inc [hl]
    ld a, [hl-]
    dec [hl]
    ld a, [hl-]

jr_00b_4b40:
    ld [hl], $3a
    rst $38
    inc de
    ld c, h
    inc hl
    ld c, [hl]
    ld e, l
    ld d, b
    ld a, [c]
    ld d, d
    xor [hl]
    ld d, l
    ld a, [hl-]
    ld e, b
    sbc [hl]

jr_00b_4b50:
    ld e, c
    dec hl
    ld e, d
    add [hl]
    ld e, h
    ld b, l
    ld e, l
    ld l, d
    ld e, [hl]
    inc de
    ld c, h
    sub h
    ld e, [hl]
    ret nz

    ld e, [hl]
    inc de

jr_00b_4b60:
    ld c, h
    ld c, d
    ld e, a
    ld [hl], c
    ld e, a
    inc de
    ld c, h
    db $db
    ld e, a
    ld a, l
    ld h, b
    inc de
    ld c, h
    inc de
    ld c, h
    add hl, sp

jr_00b_4b70:
    ld h, c
    ld [hl], c
    ld e, a
    ld hl, sp+$61
    cp e
    ld h, d
    ld [c], a
    ld h, d
    inc de
    ld h, e
    ld e, [hl]
    ld h, e
    push bc
    ld h, e
    or $63
    jr c, @+$66

    inc de
    ld c, h
    inc de
    ld c, h
    inc de
    ld c, h
    and h
    ld h, h
    db $db
    ld h, h
    add hl, sp
    ld h, l
    sub a
    ld h, l
    push af
    ld h, l
    ld e, b
    ld h, [hl]
    or [hl]
    ld h, [hl]
    inc d
    ld h, a
    ld [hl], d
    ld h, a
    xor c
    ld h, a
    rlca
    ld l, b
    ld h, l
    ld l, b
    jp z, $af68

    ld l, d
    call nc, Call_000_126a
    ld l, e
    ld b, c
    ld l, e
    ld h, [hl]
    ld l, e
    jp nz, $fb6b

    ld l, e
    add h
    ld l, h
    rla
    ld l, l
    ld a, [$336d]
    ld l, [hl]
    ld a, $6f
    ld h, e
    ld l, a
    db $e3
    ld l, a
    inc hl
    ld [hl], b
    ld d, d
    ld [hl], b
    ld [hl], a
    ld [hl], b
    db $e4
    ld [hl], b
    ld b, d
    ld [hl], c
    db $db
    ld [hl], h
    ld e, $75
    ld h, c
    ld [hl], l
    ret


    ld [hl], l
    ld hl, sp+$75
    ld b, e
    db $76
    ld [hl], d
    db $76
    and c
    db $76
    ret nc

    db $76
    rst $38
    db $76
    ld l, $77
    ld e, l
    ld [hl], a
    xor c
    ld [hl], a
    db $dd
    ld [hl], a
    ld a, [$1777]
    ld a, b
    ld c, e
    ld a, b
    ld [$7879], sp
    ld a, c
    add sp, $79
    ld e, b
    ld a, d
    ret z

    ld a, d
    jr c, jr_00b_4c72

    xor b
    ld a, e
    reti


    ld a, e
    ld a, [bc]
    ld a, h
    ld b, l
    ld a, h
    ld [c], a
    ld a, h
    db $dd
    ld [hl], a
    ld b, h
    ld [hl], c
    ld c, l
    ld a, b
    ld c, a
    ld a, b
    ld d, c
    ld a, b
    ld d, e
    ld a, b
    ld b, h
    ld [hl], c
    ld b, h
    ld [hl], c
    ld b, h
    ld [hl], c
    inc hl
    ld c, h
    dec a
    ld c, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], l
    ld c, h
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl+]
    reti


    ld bc, $952a
    ld c, h
    db $fc
    ld c, l
    ld [bc], a
    ld a, [hl+]
    sub l
    ld c, h
    db $fc
    ld c, l
    inc bc
    ld a, [hl+]
    sub l
    ld c, h
    db $fc
    ld c, l
    inc b
    ld a, [hl+]
    sub l
    ld c, h
    db $fc
    ld c, l
    dec hl
    reti


    dec b
    ld a, [hl+]
    call $fe4c
    ld c, l
    ld b, $2a
    db $ec
    ld c, h
    cp $4d
    ld b, $2a
    ld bc, $fe4d
    ld c, l
    ld b, $2a
    dec de
    ld c, l
    cp $4d
    ld b, $2a
    dec hl
    ld c, l
    cp $4d
    ld b, $2a
    ld d, h
    ld c, l
    cp $4d
    ld b, $2a
    adc b
    ld c, l
    cp $4d
    dec b
    ld a, [hl+]
    ld h, h
    ld c, l
    db $fd
    ld c, l
    ld b, $2a
    adc b

jr_00b_4c72:
    ld c, l
    cp $4d
    inc l
    reti


    rlca
    ld a, [hl+]
    and d
    ld c, l
    ld b, $4e
    rlca
    ld a, [hl+]
    cp h
    ld c, l
    ld b, $4e
    rlca
    ld a, [hl+]
    call z, $064d
    ld c, [hl]
    rlca
    ld a, [hl+]
    call c, $064d
    ld c, [hl]
    rlca
    ld a, [hl+]
    db $ec
    ld c, l
    ld b, $4e
    adc a
    rst $38
    ld bc, $0101
    adc a
    rst $38
    ld [bc], a
    ld bc, $8f02
    rst $38
    inc bc
    ld [bc], a
    inc bc
    adc a
    rst $38
    inc b
    ld [bc], a
    inc b
    adc a
    rst $38
    ld [bc], a
    rlca
    dec b
    adc a
    rst $38
    inc bc
    rlca
    ld b, $8f
    rst $38
    inc b
    rlca
    rlca
    adc a
    rst $38
    dec b
    rlca
    ld [$ff8f], sp
    ld b, $07
    inc de
    ld bc, $0510
    ld [bc], a
    add hl, bc
    nop
    db $10
    rlca
    inc b
    ld a, [bc]
    rst $38
    nop
    db $10
    ld [bc], a
    ld [bc], a
    inc c
    nop
    db $10
    rlca
    ld [bc], a
    dec c
    jr nc, @+$13

    inc bc
    dec b
    ld c, $60
    nop
    ld b, $08
    rrca
    nop
    dec c
    inc b
    inc bc
    dec bc
    ld h, b
    scf
    dec b
    ld [$ffff], sp
    nop
    db $10
    ld [bc], a
    ld [bc], a
    inc c
    nop
    db $10
    rlca
    ld [bc], a
    dec c
    jr nc, jr_00b_4d09

    inc bc
    dec b
    ld c, $20
    nop
    ld b, $06
    rrca
    rst $38
    nop
    db $10
    ld [bc], a
    ld [bc], a
    inc c
    nop
    db $10
    rlca

jr_00b_4d09:
    ld [bc], a
    dec c
    jr nc, jr_00b_4d1e

    inc bc
    dec b
    ld c, $20
    nop
    ld b, $06
    rrca
    nop
    dec c
    inc b
    inc bc
    dec bc
    rst $38
    nop
    db $10
    ld [bc], a

jr_00b_4d1e:
    ld [bc], a
    inc c
    nop
    db $10
    rlca
    ld [bc], a
    dec c
    jr nc, jr_00b_4d38

    inc bc
    dec b
    ld c, $ff
    nop
    db $10
    ld [bc], a
    ld [bc], a
    inc c
    nop
    db $10
    rlca
    ld [bc], a
    dec c
    jr nz, jr_00b_4d48

    inc b

jr_00b_4d38:
    ld b, $0e
    ld h, b
    nop
    ld b, $06
    rst $38
    nop
    dec c
    inc b
    inc bc
    dec bc
    ld h, b
    nop
    ld b, $06

jr_00b_4d48:
    rst $38
    ld b, b
    ldh [rDIV], a
    dec b
    rst $38
    ld b, b
    ld d, d
    inc b
    ld b, $ff
    rst $38
    nop
    db $10
    ld [bc], a
    ld [bc], a
    inc c
    nop
    db $10
    ld [$0d02], sp
    jr nc, jr_00b_4d71

    inc bc
    dec b
    ld c, $ff
    nop
    db $10
    ld [bc], a
    ld [bc], a
    inc c
    nop
    db $10
    rlca
    ld [bc], a
    dec c
    jr nc, @+$13

    inc bc

jr_00b_4d71:
    dec b
    ld c, $60
    nop
    ld b, $06
    rst $38
    nop
    dec c
    inc b
    inc bc
    rst $38
    ld h, b
    jr c, @+$07

    ld [$40ff], sp
    db $10
    ld [$0d02], sp
    rst $38
    nop
    db $10
    ld [bc], a
    ld [bc], a
    inc c
    nop
    db $10
    rlca
    ld [bc], a
    dec c
    jr nc, jr_00b_4da5

    inc bc
    dec b
    ld c, $60
    nop
    ld b, $06
    rrca
    ld b, b
    db $10
    ld [$0d02], sp
    rst $38
    jr nc, @+$0d

    ld [bc], a

jr_00b_4da5:
    dec b
    db $10
    db $10
    dec bc
    rlca
    dec b
    ld de, $0b10
    ld b, $03
    ld [de], a
    nop
    ld de, $0404
    rst $38
    ld h, b
    ldh [rDIV], a
    rlca
    rst $38
    rst $38
    jr nc, @+$0d

    ld [bc], a
    dec b
    db $10
    db $10
    dec bc
    rlca
    dec b
    ld de, $0b10
    ld b, $03
    ld [de], a
    rst $38
    jr nc, @+$0d

    ld [bc], a
    dec b
    db $10
    db $10
    dec bc
    ld [$1105], sp
    db $10
    dec bc
    ld b, $03
    ld [de], a
    rst $38
    jr nc, @+$0d

    ld bc, $1004
    db $10
    dec bc
    rlca
    dec b
    ld de, $0b10
    ld b, $03
    ld [de], a
    rst $38
    jr nc, @+$0d

    ld bc, $1004
    db $10
    dec bc
    ld [$1105], sp
    db $10
    dec bc
    ld b, $03
    ld [de], a
    rst $38
    rst $38
    rst $38
    rlca
    ld bc, $000a
    nop
    rlca
    rlca
    rst $38
    ld [bc], a
    dec b
    inc bc
    nop
    ld bc, $0502
    rlca
    dec b
    inc b
    nop
    dec b
    rlca
    dec b
    inc b
    rlca
    ld bc, $8000
    inc b
    inc b
    dec b
    rlca
    ld bc, $8000
    dec b
    inc b
    rst $38
    ld b, e
    ld c, [hl]
    ld h, e
    ld c, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, e
    ld c, [hl]
    add l
    ld c, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    adc l
    ld c, [hl]
    and c
    ld c, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    xor c
    ld c, [hl]
    jp $ff4e


    rst $38
    rst $38
    rst $38
    dec l
    reti


    add hl, bc
    ld a, [hl+]
    rst $10
    ld c, [hl]
    cp [hl]
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld [c], a
    ld c, [hl]
    cp a
    ld c, a
    add hl, bc
    ld a, [hl+]
    db $ed
    ld c, [hl]
    cp a
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld hl, sp+$4e
    cp a
    ld c, a
    add hl, bc
    ld a, [hl+]
    cp $4e
    cp [hl]
    ld c, a
    ld l, $d9
    ld a, [bc]
    ld a, [hl+]
    add hl, bc
    ld c, a
    adc $4f
    cpl
    reti


    dec bc
    ld a, [hl+]
    rrca
    ld c, a
    sub $4f
    dec bc
    ld a, [hl+]
    rra
    ld c, a
    sub $4f
    dec bc
    ld a, [hl+]
    inc [hl]
    ld c, a
    sub $4f
    dec bc
    ld a, [hl+]
    ccf
    ld c, a
    sub $4f
    jr nc, @-$25

    inc c
    ld a, [hl+]
    ld c, a
    ld c, a
    push hl
    ld c, a
    ld sp, $0dd9
    ld a, [hl+]
    ld e, d
    ld c, a
    and $4f
    dec c
    ld a, [hl+]
    ld l, a
    ld c, a
    and $4f
    dec c
    ld a, [hl+]
    add h
    ld c, a
    and $4f
    ld [hl-], a
    reti


    ld c, $2a
    sub h
    ld c, a
    push af
    ld c, a
    inc sp
    reti


    rrca
    ld a, [hl+]
    sbc a
    ld c, a
    inc b
    ld d, b
    rrca
    ld a, [hl+]
    and l
    ld c, a
    inc b
    ld d, b
    db $10
    ld a, [hl+]
    or b
    ld c, a
    ld a, [de]
    ld d, b
    db $10
    ld a, [hl+]
    sbc a
    ld c, a
    ld a, [de]
    ld d, b
    inc [hl]
    reti


    ld de, $bb2a
    ld c, a
    jr nc, jr_00b_4f1b

    ld [de], a
    ld a, [hl+]
    cp h
    ld c, a
    jr c, jr_00b_4f21

    inc de
    ld a, [hl+]
    cp l
    ld c, a
    ld b, a
    ld d, b
    jr nz, jr_00b_4ee1

    ld [bc], a
    ld b, $ff
    db $10
    dec b
    ld b, $05
    ld [bc], a

jr_00b_4ee1:
    rst $38
    nop
    ld [$0602], sp
    ld bc, $0500
    ld b, $05
    ld [bc], a
    rst $38
    sub b
    rst $38
    ld b, $06
    ld [de], a
    nop
    dec b
    ld b, $05
    ld [bc], a
    rst $38
    sub b
    rst $38
    ld b, $06
    ld [de], a
    rst $38
    sub b
    rst $38
    ld b, $06
    ld [de], a
    jr nz, jr_00b_4f0d

    ld [bc], a
    ld b, $ff
    rst $38
    jr nc, jr_00b_4f0e

    dec b
    ld [bc], a

jr_00b_4f0d:
    inc bc

jr_00b_4f0e:
    rst $38
    jr nz, jr_00b_4f19

    ld [bc], a
    ld b, $ff
    nop
    inc bc
    rlca
    inc bc
    inc b

jr_00b_4f19:
    ld b, b
    dec bc

jr_00b_4f1b:
    inc b
    inc bc
    rst $38
    rst $38
    sub b
    rst $38

jr_00b_4f21:
    ld b, $06
    inc de
    nop
    inc bc
    rlca
    inc bc
    inc b
    nop
    dec b
    ld b, $05
    dec b
    nop
    ld [$0602], sp
    ld b, $ff
    sub b
    rst $38
    ld b, $06
    inc de
    nop
    inc bc
    rlca
    inc bc
    inc b
    rst $38
    sub b
    rst $38
    ld b, $06
    inc de
    nop
    inc bc
    rlca
    inc bc
    inc b
    nop
    dec bc
    inc bc
    dec b
    rlca
    rst $38
    nop
    dec bc
    inc bc
    ld [bc], a
    ld [$0f30], sp
    ld b, $01
    add hl, bc
    rst $38
    sub b
    rst $38
    ld b, $07
    inc d
    jr nz, jr_00b_4f69

    ld [bc], a
    ld b, $ff
    rla
    ld bc, $0603
    ld a, [bc]

jr_00b_4f69:
    nop
    add hl, bc
    ld [$0b03], sp
    rst $38
    sub b
    rst $38
    ld b, $07
    inc d
    nop
    add hl, bc
    ld [$0b03], sp
    rlca
    ld bc, $0702
    ld a, [bc]
    nop
    dec b
    ld b, $06
    inc c
    rst $38
    sub b
    rst $38
    ld b, $07
    inc d
    nop
    add hl, bc
    ld [$0b03], sp
    db $10
    inc b
    inc bc
    ld b, $0d
    rst $38
    nop
    ld [bc], a
    inc b
    ld [bc], a
    ld c, $10
    nop
    rlca
    inc b
    rrca
    rst $38
    jr nz, jr_00b_4fa9

    inc b
    dec b
    rst $38
    rst $38
    rlca
    ld bc, $0601

jr_00b_4fa9:
    stop
    dec b
    rlca
    dec b
    ld de, $07ff
    ld bc, $0601
    stop
    dec b
    rlca
    dec b
    ld de, $ffff
    rst $38
    rst $38
    rst $38
    inc b
    inc b
    nop
    nop
    dec b
    inc b
    rlca
    dec b
    inc b
    nop
    nop
    dec b
    dec b
    rlca
    rst $38
    inc bc
    ld [bc], a
    ld d, $00
    nop
    inc bc
    rlca
    rst $38
    inc b
    inc bc
    ld b, $00
    ld bc, $0704
    dec b
    inc bc
    ld b, $00
    ld bc, $0705
    rst $38
    rst $38
    dec b
    inc bc
    ld [de], a
    nop
    inc b
    dec b
    rlca
    inc b
    dec b
    jr jr_00b_4ff1

jr_00b_4ff1:
    nop
    inc b
    nop
    rst $38
    dec b
    ld bc, $000f
    nop
    dec b
    rlca
    add hl, bc
    inc bc
    ld [bc], a
    nop
    nop
    nop
    inc bc
    rst $38
    inc b
    ld b, $09
    nop
    inc b
    inc b
    ld b, $05
    ld bc, $000d
    nop
    dec b
    rlca
    inc b
    inc b
    stop
    nop
    inc b
    rlca
    rst $38
    inc b
    ld b, $09
    nop
    inc b
    inc b
    ld b, $05
    ld bc, $000d
    nop
    dec b
    rlca
    inc b
    inc b
    stop
    nop
    inc b
    rlca
    rst $38
    ld [bc], a
    ld bc, $000c
    nop
    ld [bc], a
    rlca
    rst $38
    ld [bc], a
    ld bc, $000c
    nop
    ld [bc], a
    rlca
    ld bc, $1904
    nop
    nop
    ld bc, $ff07
    ld [bc], a
    ld bc, $000c
    nop
    ld [bc], a
    rlca
    ld bc, $1904
    nop
    nop
    ld bc, $0407
    ld b, $1a
    nop
    nop
    inc b
    rlca
    rst $38
    ld l, l
    ld d, b
    ld a, e
    ld d, b
    adc a
    ld d, b
    rst $38
    rst $38
    and e
    ld d, b
    or a
    ld d, b
    bit 2, b
    rst $38
    rst $38
    dec [hl]
    reti


    dec d
    ld a, [hl+]
    inc bc
    ld d, c
    jp Jump_000_1552


    ld a, [hl+]
    dec e
    ld d, c
    jp $3652


    reti


    ld d, $2a
    inc a
    ld d, c
    bit 2, d
    ld d, $2a
    ld c, h
    ld d, c
    bit 2, d
    ld d, $2a
    ld h, c
    ld d, c
    bit 2, d
    scf
    reti


    rla
    ld a, [hl+]
    db $76
    ld d, c
    call z, $1852
    ld a, [hl+]
    ld a, h
    ld d, c
    call $1852
    ld a, [hl+]
    adc h
    ld d, c
    call $3852
    reti


    add hl, de
    ld a, [hl+]
    and c
    ld d, c
    adc $52
    ld a, [de]
    ld a, [hl+]
    xor h
    ld d, c
    rst $08
    ld d, d
    add hl, de
    ld a, [hl+]
    or a
    ld d, c
    adc $52
    add hl, sp
    reti


    dec de
    ld a, [hl+]
    jp nz, $d051

    ld d, d
    inc e
    ld a, [hl+]
    ret z

    ld d, c
    pop de
    ld d, d
    inc e
    ld a, [hl+]
    db $dd
    ld d, c
    pop de
    ld d, d
    ld a, [hl-]
    reti


    dec e
    ld a, [hl+]
    rst $30
    ld d, c
    jp nc, $1e52

    ld a, [hl+]
    ld de, $d352
    ld d, d
    ld e, $2a
    dec hl
    ld d, d
    db $d3
    ld d, d
    rra
    ld a, [hl+]
    ld b, b
    ld d, d
    db $db
    ld d, d
    rra
    ld a, [hl+]
    ld e, d
    ld d, d
    db $db
    ld d, d
    jr nz, jr_00b_5117

    ld l, a
    ld d, d
    db $e3
    ld d, d
    jr nz, jr_00b_511d

    adc c
    ld d, d
    db $e3
    ld d, d
    jr nz, @+$2c

    sbc [hl]
    ld d, d
    db $e3
    ld d, d
    jr nz, jr_00b_5129

    or e
    ld d, d
    db $e3
    ld d, d
    adc a
    rst $38
    ld b, $02
    ld bc, $ff8f
    ld [$0202], sp
    adc a
    rst $38
    ld [$0301], sp
    nop
    ld b, $07
    ld [bc], a
    inc b

jr_00b_5117:
    nop
    inc bc
    inc bc
    inc b
    dec b
    rst $38

jr_00b_511d:
    adc a
    rst $38
    ld b, $02
    ld bc, $ff8f
    ld [$0202], sp
    adc a
    rst $38

jr_00b_5129:
    ld [$0301], sp
    nop
    ld b, $07
    ld [bc], a
    inc b
    nop
    inc bc
    inc bc
    inc b
    dec b
    jr nc, jr_00b_513c

    inc b
    dec b
    ld b, $ff

jr_00b_513c:
    nop
    inc b
    inc b
    inc b
    rlca
    jr nz, @+$06

    inc b
    dec b
    ld [$3950], sp
    ld a, [bc]
    inc b
    rst $38
    rst $38
    nop
    inc b
    inc b
    inc b
    rlca
    jr nz, @+$06

    inc b
    dec b
    ld [$3950], sp
    ld a, [bc]
    inc b
    rst $38
    nop
    nop
    inc bc
    ld [bc], a
    add hl, bc
    rst $38
    nop
    inc b
    inc b
    inc b
    rlca
    jr nz, @+$06

    inc b
    dec b
    ld [$3950], sp
    ld a, [bc]
    inc b
    rst $38
    ld [bc], a
    nop
    inc b
    ld [bc], a
    add hl, bc
    rst $38
    jr nc, jr_00b_5187

    ld bc, $0a04
    rst $38
    adc a
    rst $38
    ld b, $03
    dec bc
    ld [hl-], a
    rrca
    ld [bc], a
    inc b
    ld a, [bc]
    db $10

jr_00b_5187:
    ld b, $07
    inc bc
    inc c
    rst $38
    adc a
    rst $38
    ld b, $03
    dec bc
    ld [hl-], a
    rrca
    ld [bc], a
    inc b
    ld a, [bc]
    db $10
    ld b, $07
    inc bc
    inc c
    nop
    ld [de], a
    inc b
    ld b, $0d
    rst $38
    jr nc, @+$08

    inc bc
    inc bc
    ld c, $00
    ld a, [bc]
    ld [$0f01], sp
    rst $38
    jr nc, @+$08

    inc bc
    inc bc
    ld c, $00
    ld a, [bc]
    ld [$0f01], sp
    rst $38
    jr nc, @+$08

    inc bc
    inc bc
    ld c, $00
    ld a, [bc]
    ld [$0f01], sp
    rst $38
    db $10
    dec b
    ld [$1002], sp
    rst $38
    adc a
    rst $38
    inc b
    inc bc
    ld de, $ff8f
    ld b, $03
    ld [de], a
    jr nz, @+$08

    dec b
    inc bc
    inc de
    db $10
    dec b
    ld [$1002], sp
    rst $38
    adc a
    rst $38
    inc b
    inc bc
    ld de, $ff8f
    ld b, $03
    ld [de], a
    jr nz, @+$08

    dec b
    inc bc
    inc de
    db $10
    dec b
    ld [$1002], sp
    nop
    inc bc
    ld [bc], a
    ld bc, $ff14
    adc a
    rst $38
    inc bc
    ld bc, $1715
    ld a, [bc]
    inc b
    ld bc, $2716
    ld a, [bc]
    inc bc
    ld [bc], a
    rla
    nop
    rlca
    inc b
    inc bc
    jr jr_00b_520c

jr_00b_520c:
    ld c, l
    rlca
    inc b
    rst $38
    rst $38
    rla
    ld a, [bc]
    inc b
    ld bc, $2716
    ld a, [bc]
    inc bc
    ld [bc], a
    rla
    nop
    rlca
    inc b
    inc bc
    jr jr_00b_5221

jr_00b_5221:
    ld c, l
    inc bc
    ld bc, $00ff
    ld c, l
    rlca
    inc b
    rst $38
    rst $38
    rla
    ld a, [bc]
    inc b
    ld bc, $2716
    ld a, [bc]
    inc bc
    ld [bc], a
    rla
    nop
    rlca
    inc b
    inc bc
    jr jr_00b_523b

jr_00b_523b:
    ld c, l
    rlca
    inc b
    rst $38
    rst $38
    adc a
    rst $38
    rlca
    inc b
    dec d
    rlca
    ld a, [bc]
    rlca
    inc bc
    ld d, $37
    ld a, [bc]
    ld b, $04
    rla
    nop
    rlca
    inc b
    ld [bc], a
    jr jr_00b_5255

jr_00b_5255:
    ld c, l
    inc bc
    ld bc, $ffff
    adc a
    rst $38
    rlca
    inc b
    dec d
    rlca
    ld a, [bc]
    rlca
    inc bc
    ld d, $37
    ld a, [bc]
    ld b, $04
    rla
    nop
    rlca
    inc b
    ld [bc], a
    jr @+$01

    rlca
    ld a, [bc]
    rlca
    inc bc
    ld d, $37
    ld a, [bc]
    ld b, $04
    rla
    jr nz, @+$09

    inc b
    ld [bc], a
    jr jr_00b_527f

jr_00b_527f:
    ld c, l
    inc bc
    ld bc, $00ff
    ld c, l
    rlca
    inc b
    rst $38
    rst $38
    rlca
    ld a, [bc]
    rlca
    inc bc
    ld d, $37
    ld a, [bc]
    ld b, $04
    rla
    jr nz, jr_00b_529c

    inc b
    ld [bc], a
    jr jr_00b_5299

jr_00b_5299:
    ld c, l
    rlca
    inc b

jr_00b_529c:
    rst $38
    rst $38
    rlca
    ld a, [bc]
    rlca
    inc bc
    ld d, $37
    ld a, [bc]
    ld b, $04
    rla
    jr nz, @+$09

    inc b
    ld [bc], a
    jr jr_00b_52ae

jr_00b_52ae:
    ld c, l
    inc bc
    ld bc, $ffff
    rlca
    ld a, [bc]
    rlca
    inc bc
    ld d, $37
    ld a, [bc]
    ld b, $04
    rla
    jr nz, @+$09

    inc b
    ld [bc], a
    jr @+$01

    nop
    inc bc
    ld bc, $0900
    add hl, bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    ld bc, $0105
    nop
    nop
    nop
    rst $38
    inc bc
    ld bc, $0105
    nop
    nop
    nop
    rst $38
    inc bc
    ld bc, $0105
    nop
    nop
    nop
    rlca
    inc b
    inc e
    ld bc, $0000
    nop
    rst $38
    ld [bc], a
    ld d, e
    inc e
    ld d, e
    rst $38
    rst $38
    rst $38
    rst $38
    inc a
    ld d, e
    ld e, h
    ld d, e
    rst $38
    rst $38
    rst $38
    rst $38
    dec sp
    reti


    ld [hl+], a
    ld a, [hl+]
    ld l, d
    ld d, e
    adc b
    ld d, h
    inc hl
    ld a, [hl+]
    add h
    ld d, e
    sub b
    ld d, h
    inc h
    ld a, [hl+]
    sbc c
    ld d, e
    sbc a
    ld d, h
    dec h
    ld a, [hl+]
    and h
    ld d, e
    cp h
    ld d, h
    inc a
    reti


    ld h, $2a
    xor d
    ld d, e
    ldh [rHDMA4], a
    daa
    ld a, [hl+]
    adc $53
    add sp, $54
    daa
    ld a, [hl+]
    add sp, $53
    add sp, $54
    jr z, jr_00b_535c

    ld hl, sp+$53
    cp $54
    add hl, hl
    ld a, [hl+]
    inc bc
    ld d, h
    dec de
    ld d, l
    dec a
    reti


    ld a, [hl+]
    ld a, [hl+]
    add hl, bc
    ld d, h
    ccf
    ld d, l
    dec hl
    ld a, [hl+]
    jr z, jr_00b_539c

    ld b, a
    ld d, l
    inc l
    ld a, [hl+]
    ld b, d
    ld d, h
    ld d, [hl]
    ld d, l
    dec l
    ld a, [hl+]
    ld d, a
    ld d, h
    ld l, h
    ld d, l
    dec l
    ld a, [hl+]
    ld h, d
    ld d, h
    ld l, h
    ld d, l

jr_00b_535c:
    ld a, $d9
    ld l, $2a
    ld l, b
    ld d, h
    sub b
    ld d, l
    nop
    add hl, hl
    add d
    ld d, h
    sub c
    ld d, l
    adc a
    rst $38
    inc b
    ld bc, $8f01
    rst $38
    dec b
    ld bc, $8f01
    rst $38
    ld [bc], a
    ld [bc], a
    ld [bc], a
    adc a
    rst $38
    rlca
    ld [bc], a
    inc bc
    jr nz, jr_00b_538b

    inc bc
    dec b
    inc b
    rst $38
    adc a
    rst $38
    inc b
    ld bc, $8f01
    rst $38

jr_00b_538b:
    dec b
    ld bc, $8f01
    rst $38
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, jr_00b_53a0

    inc bc
    dec b
    inc b
    rst $38
    adc a
    rst $38
    ld [bc], a

jr_00b_539c:
    ld [bc], a
    ld [bc], a
    jr nz, jr_00b_53ab

jr_00b_53a0:
    inc bc
    dec b
    inc b
    rst $38
    jr nz, jr_00b_53b1

    inc bc
    dec b
    inc b
    rst $38
    adc a

jr_00b_53ab:
    rst $38
    inc b
    ld bc, $8f05
    rst $38

jr_00b_53b1:
    dec b
    ld bc, $8f05
    rst $38
    ld [bc], a
    ld [bc], a
    ld b, $8f
    rst $38
    rlca
    ld [bc], a
    rlca
    jr nc, jr_00b_53cb

    nop
    inc b
    ld [$0b30], sp
    nop
    dec b
    add hl, bc
    jr nz, jr_00b_53d5

    inc b

jr_00b_53cb:
    ld b, $0a
    rst $38
    adc a
    rst $38
    ld [bc], a
    ld [bc], a
    ld b, $8f
    rst $38

jr_00b_53d5:
    rlca
    ld [bc], a
    rlca
    jr nc, jr_00b_53e5

    nop
    inc b
    ld [$0b30], sp
    nop
    dec b
    add hl, bc
    jr nz, jr_00b_53ef

    inc b

jr_00b_53e5:
    ld b, $0a
    rst $38
    adc a
    rst $38
    ld [bc], a
    ld [bc], a
    ld b, $8f
    rst $38

jr_00b_53ef:
    rlca
    ld [bc], a
    rlca
    ld [hl+], a
    dec bc
    dec b
    dec b
    ld a, [bc]
    rst $38
    adc a
    rst $38
    rlca
    ld [bc], a
    rlca
    ld [hl+], a
    dec bc
    dec b
    dec b
    ld a, [bc]
    rst $38
    ld [hl+], a
    dec bc
    dec b
    dec b
    ld a, [bc]
    rst $38
    adc a
    rst $38
    inc b
    ld bc, $8f0b
    rst $38
    dec b
    ld bc, $8f0b
    rst $38
    ld [bc], a
    ld [bc], a
    inc c
    adc a
    rst $38
    rlca
    ld [bc], a
    dec c
    db $10
    dec bc
    add hl, bc
    inc b
    ld c, $10
    dec bc
    add hl, bc
    dec b
    rrca
    rst $38
    adc a
    rst $38
    inc b
    ld bc, $8f0b
    rst $38
    dec b
    ld bc, $8f0b
    rst $38
    ld [bc], a
    ld [bc], a
    inc c
    db $10
    dec bc
    add hl, bc
    inc b
    ld c, $10
    dec bc
    add hl, bc
    dec b
    rrca
    rst $38
    adc a
    rst $38
    inc b
    ld bc, $8f0b
    rst $38
    dec b
    ld bc, $100b
    dec bc
    add hl, bc
    inc b
    ld c, $10
    dec bc
    add hl, bc
    dec b
    rrca
    rst $38
    db $10
    dec bc
    add hl, bc
    inc b
    ld c, $10
    dec bc
    add hl, bc
    dec b
    rrca
    rst $38
    nop
    dec bc
    inc bc
    inc b
    ld c, $ff
    adc a
    rst $38
    inc b
    ld bc, $8f10
    rst $38
    dec b
    ld bc, $8f10
    rst $38
    ld [bc], a
    ld [bc], a
    ld de, $ff8f
    rlca
    ld [bc], a
    ld [de], a
    jr nz, jr_00b_5489

    inc b
    ld b, $13
    rst $38
    jr nz, jr_00b_548f

    inc b
    ld b, $13
    rst $38
    rlca

jr_00b_5489:
    dec b
    inc bc
    nop
    inc b
    rlca
    dec b

jr_00b_548f:
    rst $38
    rlca
    dec b
    inc bc
    nop
    inc b
    rlca
    dec b
    rlca
    ld [bc], a
    ld h, $00
    nop
    ld [$ff07], sp
    rlca
    dec b
    inc bc
    nop
    inc b
    rlca
    dec b
    rlca
    ld [bc], a
    ld h, $00
    nop
    ld [$0407], sp
    ld bc, $0027
    nop
    inc b
    rlca
    dec b
    ld bc, $0027
    nop
    dec b
    rlca
    rst $38
    rlca
    dec b
    inc bc
    nop
    inc b
    rlca
    dec b
    rlca
    ld [bc], a
    ld h, $00
    nop
    ld [$0407], sp
    ld bc, $0027
    nop
    inc b
    rlca
    dec b
    ld bc, $0027
    nop
    dec b
    rlca
    ld [bc], a
    ld [bc], a
    jr z, jr_00b_54dc

jr_00b_54dc:
    nop
    inc b
    rlca
    rst $38
    ld [bc], a
    dec b
    nop
    nop
    dec b
    ld [bc], a
    dec b
    rst $38
    ld [bc], a
    dec b
    nop
    nop
    dec b
    ld [bc], a
    dec b
    inc b
    ld bc, $0023
    nop
    rlca
    rlca
    dec b
    ld bc, $0023
    nop
    ld [$ff07], sp
    ld [bc], a
    dec b
    nop
    nop
    dec b
    ld [bc], a
    dec b
    inc b
    ld bc, $0023
    nop
    rlca
    rlca
    dec b
    ld bc, $0023
    nop
    ld [$0207], sp
    ld [bc], a
    inc h
    nop
    nop
    ld b, $07
    rst $38
    ld [bc], a
    dec b
    nop
    nop
    dec b
    ld [bc], a
    dec b
    inc b
    ld bc, $0023
    nop
    rlca
    rlca
    dec b
    ld bc, $0023
    nop
    ld [$0207], sp
    ld [bc], a
    inc h
    nop
    nop
    ld b, $07
    rlca
    ld [bc], a
    dec h
    nop
    nop
    ld bc, $ff07
    rlca
    dec b
    inc bc
    nop
    nop
    rlca
    dec b
    rst $38
    rlca
    dec b
    inc bc
    nop
    nop
    rlca
    dec b
    rlca
    ld [bc], a
    add hl, hl
    nop
    nop
    inc b
    rlca
    rst $38
    rlca
    dec b
    inc bc
    nop
    nop
    rlca
    dec b
    rlca
    ld [bc], a
    add hl, hl
    nop
    nop
    inc b
    rlca
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    nop
    nop
    inc b
    rlca
    rst $38
    rlca
    dec b
    inc bc
    nop
    nop
    rlca
    dec b
    rlca
    ld [bc], a
    add hl, hl
    nop
    nop
    inc b
    rlca
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    nop
    nop
    inc b
    rlca
    inc b
    ld bc, $002b
    nop
    rlca
    rlca
    dec b
    ld bc, $002b
    nop
    ld [$ff07], sp
    rst $38
    ld [bc], a
    ld [bc], a
    inc l
    nop
    nop
    ld [$0707], sp
    ld [bc], a
    dec l
    nop
    nop
    ld [bc], a
    rlca
    inc b
    ld bc, $002e
    nop
    ld b, $07
    dec b
    ld bc, $002e
    nop
    rlca
    rlca
    rst $38
    cp [hl]
    ld d, l
    ret c

    ld d, l
    db $ec
    ld d, l
    rst $38
    rst $38
    inc c
    ld d, [hl]
    ld h, $56
    ld a, [hl-]
    ld d, [hl]
    rst $38
    rst $38
    ccf
    reti


    ld [bc], a
    add hl, hl
    ld d, h
    ld d, [hl]
    ld e, $58
    ld [bc], a
    add hl, hl
    ld d, l
    ld d, [hl]
    ld e, $58
    ld [bc], a
    add hl, hl
    ld l, d
    ld d, [hl]
    ld e, $58
    ld [bc], a
    add hl, hl
    ld a, a
    ld d, [hl]
    ld e, $58
    ld b, b
    reti


    inc bc
    add hl, hl
    adc a
    ld d, [hl]
    rra
    ld e, b
    inc bc
    add hl, hl
    sbc a
    ld d, [hl]
    rra
    ld e, b
    inc bc
    add hl, hl
    or h
    ld d, [hl]
    rra
    ld e, b
    ld b, c
    reti


    inc b
    add hl, hl
    db $d3
    ld d, [hl]
    jr nz, jr_00b_564c

    inc b
    add hl, hl
    add sp, $56
    jr nz, jr_00b_5652

    dec b
    add hl, hl
    ld [bc], a
    ld d, a
    ld hl, $0558
    add hl, hl
    ld h, $57
    ld hl, $0558
    add hl, hl
    ld b, l
    ld d, a
    ld hl, $4258
    reti


    ld b, $29
    ld l, [hl]
    ld d, a
    add hl, hl
    ld e, b
    ld b, $29
    ld a, [hl]
    ld d, a
    add hl, hl
    ld e, b
    ld b, $29
    adc [hl]
    ld d, a
    add hl, hl
    ld e, b
    ld b, $29
    sbc [hl]
    ld d, a
    add hl, hl
    ld e, b
    ld b, e
    reti


    rlca
    add hl, hl
    or e
    ld d, a
    ld sp, $0758
    add hl, hl
    jp Jump_000_3157


    ld e, b
    rlca
    add hl, hl
    db $d3
    ld d, a
    ld sp, $4458
    reti


    ld [$ed29], sp
    ld d, a
    add hl, sp
    ld e, b
    ld [$ee29], sp
    ld d, a
    add hl, sp
    ld e, b
    ld [$f429], sp
    ld d, a

jr_00b_564c:
    add hl, sp
    ld e, b
    ld [$ff29], sp
    ld d, a

jr_00b_5652:
    add hl, sp
    ld e, b
    rst $38
    sub b
    rst $38
    ld b, $05
    ld [bc], a
    ld [bc], a
    jr @+$06

    ld bc, $10ff
    jr nz, jr_00b_5666

    ld b, $01
    ld b, b
    ld d, e

jr_00b_5666:
    ld b, $01
    rst $38
    rst $38
    sub b
    rst $38
    ld b, $05
    ld [bc], a
    ld [bc], a
    dec de
    inc b
    ld bc, $00ff
    inc l
    inc b
    ld b, $03
    ld b, b
    ld d, e
    ld b, $01
    rst $38
    rst $38
    ld [bc], a
    dec de
    inc b
    ld bc, $30ff
    inc c
    inc b
    ld b, $04
    jr nc, jr_00b_568d

    ld b, $05

jr_00b_568d:
    dec b
    rst $38
    sub b
    rst $38
    dec b
    ld [bc], a
    ld b, $8f
    rst $38
    inc b
    ld bc, $0007
    add hl, de
    ld b, $02
    ld [$90ff], sp
    rst $38
    dec b
    ld [bc], a
    ld b, $8f
    rst $38
    inc b
    ld bc, $0007
    add hl, de
    ld b, $02
    ld [$1900], sp
    inc bc
    inc b
    add hl, bc
    rst $38
    nop
    dec c
    dec b
    ld [bc], a
    ld a, [bc]
    nop
    ld c, $04
    ld [bc], a
    dec bc
    nop
    db $10
    ld [bc], a
    inc bc
    inc c
    nop
    db $10
    ld bc, $0d04
    nop
    db $10
    rlca
    inc bc
    ld c, $00
    db $10
    ld [$0f04], sp
    rst $38
    adc a
    rst $38
    inc b
    dec b
    db $10
    ld h, $1d
    dec b
    ld b, $11
    ld b, $1c
    dec b
    inc bc
    ld [de], a
    nop
    ld c, l
    ld [$ff02], sp
    rst $38
    sub b
    rst $38
    dec b
    dec b
    add hl, hl
    adc a
    rst $38
    inc b
    dec b
    db $10
    scf
    dec e
    ld bc, $1104
    ld b, $1c
    dec b
    inc bc
    ld [de], a
    nop
    ld c, l
    ld [$ff02], sp
    rst $38
    sub b
    rst $38
    dec b
    inc b
    add hl, hl
    sub b
    rst $38
    dec b
    dec b
    add hl, hl
    sub b
    rst $38
    rlca
    inc b
    ld a, [hl+]
    sub b
    rst $38
    rlca
    dec b
    ld a, [hl+]
    scf
    dec e
    inc b
    ld [bc], a
    ld de, $1c16
    dec b
    ld [bc], a
    ld [de], a
    nop
    ld c, l
    ld [$ff02], sp
    rst $38
    sub b
    rst $38
    dec b
    inc b
    add hl, hl
    sub b
    rst $38
    dec b
    dec b
    add hl, hl
    sub b
    rst $38
    rlca
    inc b
    ld a, [hl+]
    sub b
    rst $38
    rlca
    dec b
    ld a, [hl+]
    scf
    dec e
    inc b
    ld [bc], a
    ld de, $1c16
    dec b
    ld [bc], a
    ld [de], a
    rst $38
    sub b
    rst $38
    dec b
    inc b
    add hl, hl
    sub b
    rst $38
    dec b
    dec b
    add hl, hl
    sub b
    rst $38
    rlca
    inc b
    ld a, [hl+]
    sub b
    rst $38
    rlca
    dec b
    ld a, [hl+]
    ld [hl], $1d
    inc b
    ld [bc], a
    ld de, $1c16
    dec b
    ld [bc], a
    ld [de], a
    db $10
    ld [$0504], sp
    inc de
    db $10
    rrca
    dec b
    ld b, $14
    rst $38
    adc a
    rst $38
    ld [bc], a
    ld bc, $1715
    dec b
    ld [bc], a
    ld [bc], a
    ld d, $00
    ccf
    ld b, $04
    rla
    rst $38
    adc a
    rst $38
    ld [bc], a
    ld bc, $1715
    dec b
    ld [bc], a
    ld [bc], a
    ld d, $00
    ccf
    dec b
    inc b
    rla
    rst $38
    adc a
    rst $38
    ld [bc], a
    ld bc, $1715
    dec b
    ld [bc], a
    ld [bc], a
    ld d, $00
    ld a, [de]
    dec b
    inc b
    jr @+$01

    adc a
    rst $38
    ld [bc], a
    ld bc, $1715
    dec b
    ld [bc], a
    ld [bc], a
    ld d, $00
    ld a, [de]
    ld b, $04
    jr jr_00b_57b1

    nop
    ld b, $01

jr_00b_57b1:
    add hl, de
    rst $38
    nop
    nop
    dec b
    inc bc
    ld a, [de]
    nop
    ld a, [hl-]
    dec b
    ld [bc], a
    dec de
    jr nc, @+$46

    inc b
    ld b, $1c
    rst $38
    nop
    nop
    dec b
    inc bc
    ld a, [de]
    nop
    ld a, [hl-]
    dec b
    ld [bc], a
    dec de
    jr nc, jr_00b_5814

    inc b
    ld b, $1d
    rst $38
    nop
    nop
    dec b
    inc bc
    ld a, [de]
    nop
    ld a, [hl-]
    dec b
    ld [bc], a
    dec de
    ld [hl-], a
    ld bc, $0504
    ld e, $00
    ld de, $0507
    rra
    inc sp
    dec bc
    ld [bc], a
    ld [bc], a
    jr nz, @+$01

    rst $38
    nop
    ld b, [hl]
    inc bc
    inc bc
    ld hl, $02ff
    ld b, a
    ld [bc], a
    ld bc, $0022
    ld c, b
    inc bc
    inc bc
    inc hl
    rst $38
    db $10
    ld [de], a
    dec b
    ld bc, $1024
    ld [de], a
    dec b
    ld [bc], a
    dec h
    db $10
    ld [de], a
    dec b
    inc bc
    ld h, $01
    inc b
    ld bc, $2702
    nop

jr_00b_5814:
    rrca
    ld [bc], a
    dec b
    jr z, jr_00b_5859

    ld d, h
    dec b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0b02], sp
    ld bc, $0000
    nop
    rst $38
    ld b, $04
    dec b
    nop
    ld [bc], a
    ld b, $04
    rst $38
    rlca
    dec b
    nop
    nop
    dec b
    rlca
    dec b
    rst $38
    rst $38
    ld b, b
    ld e, b
    ld c, [hl]
    ld e, b
    ld e, h
    ld e, b
    ld b, l
    reti


    ld a, [bc]
    add hl, hl
    db $76
    ld e, b
    ld l, c
    ld e, c
    dec bc
    add hl, hl
    add [hl]
    ld e, b
    ld a, b
    ld e, c
    ld b, [hl]
    reti


    inc c
    add hl, hl
    xor d
    ld e, b
    add a
    ld e, c
    inc c
    add hl, hl
    cp a

jr_00b_5859:
    ld e, b
    add a
    ld e, c
    ld b, a
    reti


    dec c
    add hl, hl
    db $e3
    ld e, b
    sub [hl]
    ld e, c
    dec c
    add hl, hl
    rlca
    ld e, c
    sub [hl]
    ld e, c
    dec c
    add hl, hl
    ld h, $59
    sub [hl]
    ld e, c
    dec c
    add hl, hl
    ld c, d
    ld e, c
    sub [hl]
    ld e, c
    ld bc, $023b
    ld [bc], a
    ld bc, $3a36
    inc b
    ld b, $02
    nop
    ld a, [hl-]
    dec b
    ld b, $03
    rst $38
    adc a
    rst $38
    inc b
    inc bc
    inc b
    adc a
    rst $38
    dec b
    inc bc
    inc b
    adc a
    rst $38
    inc b
    inc b
    inc b
    adc a
    rst $38
    dec b
    inc b
    inc b
    ld bc, $021b
    ld [bc], a
    dec b
    ld b, $2a
    inc b
    ld b, $06
    nop
    ld d, $05
    ld b, $07
    rst $38
    adc a
    rst $38
    inc b
    ld [bc], a
    rst $38
    adc a
    rst $38
    dec b
    ld [bc], a
    rst $38
    adc a
    rst $38
    inc b
    inc bc
    ld [$ff8f], sp
    dec b
    inc bc
    ld [$8fff], sp
    rst $38
    inc b
    ld [bc], a
    rst $38
    adc a
    rst $38
    dec b
    ld [bc], a
    rst $38
    adc a
    rst $38
    inc b
    inc bc
    ld [$ff8f], sp
    dec b
    inc bc
    ld [$4900], sp
    ld bc, $0901
    db $10
    ld c, d
    ld [$0a03], sp
    jr nz, jr_00b_592a

    inc bc
    ld b, $0b
    rst $38
    adc a
    rst $38
    inc b
    inc bc
    inc c
    adc a
    rst $38
    dec b
    inc bc
    dec c
    adc a
    rst $38
    rlca
    nop
    ld c, $8f
    rst $38
    ld [$0f00], sp
    ld b, $25
    ld [bc], a
    ld bc, $0011
    ld a, $08
    ld [bc], a
    ld [de], a
    scf
    ld hl, $0303
    db $10
    rst $38
    adc a
    rst $38
    inc b
    inc bc
    inc c
    adc a
    rst $38
    dec b
    inc bc
    dec c
    adc a
    rst $38
    rlca
    nop
    ld c, $8f
    rst $38
    ld [$0f00], sp
    ld b, $25
    ld [bc], a
    ld bc, $0011
    ld a, $08
    ld [bc], a
    ld [de], a
    rst $38
    adc a
    rst $38
    inc b
    inc bc

jr_00b_592a:
    inc c
    adc a
    rst $38
    dec b
    inc bc
    dec c
    adc a
    rst $38
    rlca
    nop
    ld c, $8f
    rst $38
    ld [$0f00], sp
    ld b, $25
    ld [bc], a
    ld bc, $0011
    dec a
    ld [$1402], sp
    scf
    add hl, sp
    inc bc
    inc bc
    inc de
    rst $38
    adc a
    rst $38
    inc b
    inc bc
    inc c
    adc a
    rst $38
    dec b
    inc bc
    dec c
    adc a
    rst $38
    rlca
    nop
    ld c, $8f
    rst $38
    ld [$0f00], sp
    ld b, $25
    ld [bc], a
    ld bc, $0011
    dec a
    ld [$1402], sp
    rst $38
    inc b
    nop
    dec de
    nop
    nop
    inc b
    rlca
    dec b
    nop
    dec de
    nop
    nop
    dec b
    rlca
    rst $38
    inc b
    nop
    dec de
    nop
    nop
    inc b
    rlca
    dec b
    nop
    dec de
    nop
    nop
    dec b
    rlca
    rst $38
    inc b
    nop
    inc e
    nop
    nop
    inc b
    rlca
    dec b
    nop
    inc e
    nop
    nop
    dec b
    rlca
    rst $38
    ld b, $04
    inc b
    nop
    inc b
    ld b, $04
    rst $38
    and [hl]
    ld e, c
    xor [hl]
    ld e, c
    or [hl]
    ld e, c
    rst $38
    rst $38
    ld c, b
    reti


    rrca
    add hl, hl
    cp [hl]
    ld e, c
    inc c
    ld e, d
    ld c, c
    reti


    db $10
    add hl, hl
    ret c

    ld e, c
    inc d
    ld e, d
    ld c, d
    reti


    ld de, $0129
    ld e, d
    inc hl
    ld e, d
    sub b
    rst $38
    dec b
    inc b
    ld bc, $e050
    dec b
    inc b
    rst $38
    ld [hl], b
    pop hl
    inc bc
    dec b
    ld [bc], a
    ld b, b
    ld [c], a
    ld [bc], a
    inc b
    inc bc
    ld d, b
    db $e3
    inc bc
    inc bc
    inc b
    rst $38
    adc a
    rst $38
    inc b
    ld [bc], a
    dec b
    adc a
    rst $38
    dec b
    ld [bc], a
    dec b
    adc a
    rst $38
    inc bc
    inc b
    ld b, $8f
    rst $38
    ld b, $06
    rlca
    scf
    ld [de], a
    ld [bc], a
    inc b
    ld [$1217], sp
    rlca
    ld b, $09
    ld h, b
    ld de, $0804
    ld c, $40
    ld d, h
    ld b, $05
    rst $38
    rst $38
    add d
    rst $38
    ld b, $05
    ld a, [bc]
    nop
    dec bc
    ld b, $04
    dec bc
    rst $38
    dec b
    nop
    rlca
    nop
    inc b
    dec b
    rlca
    rst $38
    inc b
    rlca
    ld bc, $8400
    inc b
    inc bc
    dec b
    rlca
    ld bc, $8400
    dec b
    inc bc
    rst $38
    inc b
    nop
    rlca
    nop
    ld b, $04
    rlca
    rst $38
    dec sp
    ld e, d
    ld b, e
    ld e, d
    ld [hl], l
    ld e, d
    rst $38
    rst $38
    ld a, l
    ld e, d
    adc e
    ld e, d
    sub e
    ld e, d
    rst $38
    rst $38
    ld c, e
    reti


    inc de
    add hl, hl
    sbc e
    ld e, d
    add hl, hl
    ld e, h
    ld c, h
    reti


    inc d
    add hl, hl
    or l
    ld e, d
    ld sp, $155c
    add hl, hl
    or l
    ld e, d
    ld [hl-], a
    ld e, h
    ld d, $29
    call nc, Call_000_3a5a
    ld e, h
    ld d, $29
    ld hl, sp+$5a
    ld a, [hl-]
    ld e, h
    rla
    add hl, hl
    rla
    ld e, e
    ld c, c
    ld e, h
    rla
    add hl, hl
    ld b, b
    ld e, e
    ld c, c
    ld e, h
    rla
    add hl, hl
    ld h, h
    ld e, e
    ld c, c
    ld e, h
    rla
    add hl, hl
    adc b
    ld e, e
    ld c, c
    ld e, h
    ld c, l
    reti


    jr jr_00b_5aa2

    and a
    ld e, e
    ld e, a
    ld e, h
    ld c, [hl]
    reti


    add hl, de
    add hl, hl
    pop bc
    ld e, e
    ld h, a
    ld e, h
    add hl, de
    add hl, hl
    pop de
    ld e, e
    ld h, a
    ld e, h
    ld c, a
    reti


    ld a, [de]
    add hl, hl
    pop hl
    ld e, e
    ld l, a
    ld e, h
    ld d, b
    reti


    dec de
    add hl, hl
    pop af
    ld e, e
    ld a, [hl]
    ld e, h
    add d
    rst $38
    inc bc
    inc b
    ld bc, $4100

jr_00b_5aa2:
    ld [$0203], sp
    ld b, b
    ld d, d
    inc bc
    inc b
    rst $38
    ld b, b
    ldh [$03], a
    inc b
    rst $38
    nop
    ld de, $0204
    ld a, [de]
    rst $38
    sub b
    rst $38
    inc bc
    dec b
    inc bc
    sub b
    rst $38
    inc b
    dec b
    inc b
    sub b
    rst $38
    dec b
    dec b
    dec b
    ld b, $1f
    inc b
    ld [bc], a
    ld b, $00
    ld [$0603], sp
    rlca
    nop
    ld [$0507], sp
    ld [$90ff], sp
    rst $38
    inc bc
    dec b
    inc bc
    sub b
    rst $38
    inc b
    dec b
    inc b
    sub b
    rst $38
    dec b
    dec b
    dec b
    ld b, $1f
    inc b
    ld [bc], a
    ld b, $00
    ld [$0603], sp
    rlca
    nop
    ld [$0507], sp
    ld [$4d00], sp
    ld [bc], a
    inc b
    rst $38
    rst $38
    sub b
    rst $38
    inc bc
    dec b
    inc bc
    sub b
    rst $38
    inc b
    dec b
    inc b
    sub b
    rst $38
    dec b
    dec b
    dec b
    ld b, $1f
    inc b
    ld [bc], a
    ld b, $00
    ld [$0603], sp
    rlca
    nop
    ld [$0507], sp
    ld [$90ff], sp
    rst $38
    inc bc
    dec b
    inc bc
    sub b
    rst $38
    inc b
    dec b
    inc b
    sub b
    rst $38
    dec b
    dec b
    dec b
    ld b, $1f
    inc b
    ld [bc], a
    ld b, $00
    ld [$0603], sp
    rlca
    nop
    ld [$0507], sp
    ld [$4d00], sp
    ld [bc], a
    inc b
    rst $38
    nop
    ld c, l
    ld b, $04
    rst $38
    rst $38
    sub b
    rst $38
    inc bc
    dec b
    inc bc
    sub b
    rst $38
    inc b
    dec b
    inc b
    sub b
    rst $38
    dec b
    dec b
    dec b
    ld b, $1f
    inc b
    ld [bc], a
    ld b, $00
    ld [$0603], sp
    rlca
    nop
    ld [$0507], sp
    ld [$4d00], sp
    ld b, $04
    rst $38
    rst $38
    sub b
    rst $38
    inc bc
    dec b
    inc bc
    sub b
    rst $38
    inc b
    dec b
    inc b
    sub b
    rst $38
    dec b
    dec b
    dec b
    ld b, $1f
    inc b
    ld [bc], a
    ld b, $00
    ld [$0603], sp
    rlca
    nop
    ld [$0507], sp
    ld [$4d00], sp
    ld [bc], a
    inc b
    rst $38
    rst $38
    sub b
    rst $38
    inc bc
    dec b
    inc bc
    sub b
    rst $38
    inc b
    dec b
    inc b
    sub b
    rst $38
    dec b
    dec b
    dec b
    ld b, $1f
    inc b
    ld [bc], a
    ld b, $00
    ld [$0603], sp
    rlca
    nop
    ld [$0507], sp
    ld [$8fff], sp
    rst $38
    ld bc, $0902
    adc a
    rst $38
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    nop
    inc b
    inc bc
    inc b
    dec bc
    nop
    dec bc
    ld b, $02
    inc c
    rla
    ld a, [bc]
    ld [$0d05], sp
    rst $38
    rlca
    add hl, bc
    ld [bc], a
    ld bc, $040e
    ld b, d
    ld [$0f05], sp
    jr nc, @+$0c

    ld bc, $1006
    rst $38
    inc b
    add hl, bc
    ld [$0e05], sp
    ld b, $42
    ld [bc], a
    ld bc, $300f
    ld a, [bc]
    ld bc, $1006
    rst $38
    nop
    dec bc
    dec b
    ld bc, $2011
    rrca
    dec b
    ld [bc], a
    ld [de], a
    ld [hl+], a
    rla
    inc b
    dec b
    rst $38
    rst $38
    adc a
    rst $38
    ld [$1303], sp
    adc a
    rst $38
    rlca
    inc b
    inc d
    adc a
    rst $38
    ld b, $05
    dec d
    adc a
    rst $38
    ld b, $06
    ld d, $06
    ld a, [bc]
    inc bc
    ld [bc], a
    rla
    ld h, $20
    inc bc
    inc bc
    jr jr_00b_5c40

    dec bc
    ld [bc], a
    ld b, $19
    ld b, b
    ldh [rTIMA], a
    nop
    rst $38
    ld b, b
    pop hl
    dec b
    nop
    rst $38
    ld b, b
    ld [c], a
    dec b
    nop
    rst $38
    ld b, b
    db $e3
    dec b
    nop
    rst $38
    rst $38
    dec b
    ld bc, $001d
    nop
    dec b
    rlca
    rst $38
    rst $38
    dec b
    ld [bc], a
    rra
    nop
    nop
    dec b
    ld [bc], a
    rst $38
    dec b
    ld [bc], a
    rra
    nop
    nop
    dec b

jr_00b_5c40:
    ld [bc], a
    ld [bc], a
    inc b
    ld c, $01
    nop
    nop
    nop
    rst $38
    dec b
    ld [bc], a
    rra
    nop
    nop
    dec b
    ld [bc], a
    ld [bc], a
    inc b
    ld c, $01
    nop
    nop
    nop
    ld b, $04
    dec e
    ld bc, $0000
    nop
    rst $38
    dec b
    ld bc, $001e
    nop
    dec b
    rlca
    rst $38
    dec b
    rlca
    ld b, $00
    nop
    dec b
    nop
    rst $38
    inc b
    rlca
    ld b, $00
    ld bc, $0304
    dec b
    rlca
    ld b, $00
    ld bc, $0305
    rst $38
    inc b
    rlca
    ld b, $00
    ld [bc], a
    inc b
    nop
    rst $38
    adc b
    ld e, h
    ld d, c
    reti


    ld e, $29
    ret nz

    ld e, h
    rst $38
    rst $38
    ld e, $29
    ret nc

    ld e, h
    rst $38
    rst $38
    ld e, $29
    ldh [$5c], a
    rst $38
    rst $38
    ld e, $29
    ldh [$5c], a
    rst $38
    rst $38
    ld e, $29
    ldh a, [$5c]
    rst $38
    rst $38
    ld e, $29
    nop
    ld e, l
    rst $38
    rst $38
    ld e, $29
    db $10
    ld e, l
    rst $38
    rst $38
    ld e, $29
    dec de
    ld e, l
    rst $38
    rst $38
    ld e, $29
    jr nc, jr_00b_5d1b

    rst $38
    rst $38
    jr nz, jr_00b_5cca

    dec b
    ld [$40ff], sp
    ldh a, [rTIMA]
    inc b
    rst $38

jr_00b_5cca:
    ld b, b
    pop af
    dec b
    inc b
    rst $38
    rst $38
    jr nz, jr_00b_5cda

    dec b
    ld [$00ff], sp
    ld d, l
    dec b
    inc b
    rst $38

jr_00b_5cda:
    nop
    ld d, l
    dec b
    inc b
    rst $38
    rst $38
    jr nz, jr_00b_5cea

    dec b
    ld [$40ff], sp
    ldh a, [rTIMA]
    inc b
    rst $38

jr_00b_5cea:
    ld b, b
    ld d, l
    dec b
    inc b
    rst $38
    rst $38
    jr nz, jr_00b_5cfa

    dec b
    ld [$40ff], sp
    ldh a, [rTIMA]
    inc b
    rst $38

jr_00b_5cfa:
    ld b, b
    pop af
    dec b
    inc b
    rst $38
    rst $38
    jr nz, jr_00b_5d0a

    dec b
    ld [$00ff], sp
    ld d, l
    dec b
    inc b
    rst $38

jr_00b_5d0a:
    nop
    ld d, l
    dec b
    inc b
    rst $38
    rst $38
    ld h, b
    ld [$0805], sp
    rst $38
    jr nz, jr_00b_5d75

    dec b
    inc b
    rst $38
    rst $38

jr_00b_5d1b:
    ld h, b
    ld [$0805], sp
    rst $38
    ld [hl], b
    ld hl, $0400
    rst $38
    ld b, b
    ld d, l
    dec b
    inc b
    rst $38
    jr nz, jr_00b_5d8a

    dec b
    rlca
    rst $38
    rst $38
    jr nz, jr_00b_5d3a

    dec b
    rlca
    rst $38
    ld b, b
    ld hl, $0405
    rst $38

jr_00b_5d3a:
    ld b, b
    ld d, l
    dec b
    inc b
    rst $38
    jr nz, @+$60

    dec b
    ld b, $ff
    rst $38
    rst $38
    rst $38
    ld d, l
    ld e, l
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, c
    ld e, l
    ld a, l
    ld e, l
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, d
    reti


    jr nz, @+$2b

    adc e
    ld e, l
    ld e, a
    ld e, [hl]
    jr nz, jr_00b_5d88

    cp [hl]
    ld e, l
    ld e, a
    ld e, [hl]
    jr nz, jr_00b_5d8e

    or $5d
    ld e, a
    ld e, [hl]
    ld d, e
    reti


    ld hl, $2929
    ld e, [hl]
    ld h, b
    ld e, [hl]
    ld hl, $2f29
    ld e, [hl]

jr_00b_5d75:
    ld h, b
    ld e, [hl]
    ld hl, $2929
    ld e, [hl]
    ld l, b
    ld e, [hl]
    ld d, h
    reti


    ld [hl+], a
    add hl, hl
    jr nc, @+$60

    ld l, c
    ld e, [hl]
    ld [hl+], a
    add hl, hl
    ld c, d

jr_00b_5d88:
    ld e, [hl]
    ld l, c

jr_00b_5d8a:
    ld e, [hl]
    adc a
    rst $38
    dec b

jr_00b_5d8e:
    nop
    ld bc, $ff8f
    rlca
    nop
    ld [bc], a
    adc a
    rst $38
    ld [$0300], sp
    nop
    ld h, $02
    ld bc, $0004
    ld [$0105], sp
    dec b
    nop
    rrca
    ld b, $04
    ld b, $40
    ldh [rTIMA], a
    nop
    rst $38
    ld b, b
    pop hl
    dec b
    nop
    rst $38
    ld b, b
    ld [c], a
    dec b
    nop
    rst $38
    ld b, b
    db $e3
    dec b
    nop
    rst $38
    rst $38
    adc a
    rst $38
    dec b
    nop
    ld bc, $ff8f
    rlca
    nop
    ld [bc], a
    adc a
    rst $38
    ld [$0300], sp
    add c
    rst $38
    dec b
    inc bc
    rlca
    nop
    ld h, $02
    ld bc, $0004
    ld [$0304], sp
    dec b
    nop
    rrca
    ld b, $04
    ld b, $40
    ldh [rTAC], a
    nop
    rst $38
    ld b, b
    pop hl
    rlca
    nop
    rst $38
    ld b, b
    ld [c], a
    rlca
    nop
    rst $38
    ld b, b
    db $e3
    rlca
    nop
    rst $38
    rst $38
    adc a
    rst $38
    dec b
    nop
    ld bc, $ff8f
    rlca
    nop
    ld [bc], a
    adc a
    rst $38
    ld [$0300], sp
    ld b, b
    ld h, $02
    ld [bc], a
    inc b
    jr nc, jr_00b_5e14

    ld b, $05
    rst $38
    ld b, b
    ldh [rSC], a
    nop
    rst $38

jr_00b_5e14:
    ld b, b
    ldh [rTAC], a
    nop
    rst $38
    ld b, b
    pop hl
    rlca
    nop
    rst $38
    ld b, b
    ld [c], a
    rlca
    nop
    rst $38
    ld b, b
    db $e3
    rlca
    nop
    rst $38
    rst $38
    db $10
    ld [$0608], sp
    rst $38
    rst $38
    rst $38
    sub b
    rst $38
    ld [$0b01], sp
    nop
    rlca
    inc bc
    ld [bc], a
    ld [$0b00], sp
    ld [bc], a
    inc b
    add hl, bc
    nop
    ld de, $0507
    ld a, [bc]
    nop
    ld [HeaderLogo], sp
    rst $38
    rst $38
    sub b
    rst $38
    ld [$0b01], sp
    nop
    rlca
    inc bc
    ld [bc], a
    ld [$0b00], sp
    ld [bc], a
    inc b
    add hl, bc
    nop
    ld de, $0507
    ld a, [bc]
    rst $38
    rst $38
    inc b
    ld b, $01
    nop
    inc c
    inc b
    ld b, $ff
    rst $38
    rst $38
    ld [hl], d
    ld e, [hl]
    ld a, d
    ld e, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    reti


    inc h
    add hl, hl
    add d
    ld e, [hl]
    add h
    ld e, [hl]
    ld d, [hl]
    reti


    dec h
    add hl, hl
    add e
    ld e, [hl]
    adc h
    ld e, [hl]
    rst $38
    rst $38
    rlca
    rlca
    nop
    nop
    add c
    rlca
    ld bc, $03ff
    rlca
    ld d, $00
    add b
    inc bc
    ld bc, $96ff
    ld e, [hl]
    ld d, a
    reti


    daa
    add hl, hl
    sbc [hl]
    ld e, [hl]
    cp b
    ld e, [hl]
    adc a
    rst $38
    ld bc, $0101
    adc a
    rst $38
    ld [bc], a
    ld bc, $8f02
    rst $38
    inc bc
    ld bc, $8203
    rst $38
    ld [bc], a
    inc b
    inc b
    nop
    rrca
    ld [bc], a
    inc bc
    dec b
    rst $38
    ld [bc], a
    rlca
    ld bc, $8d00
    ld [bc], a
    ld bc, $c2ff
    ld e, [hl]
    ld e, b
    reti


    ld bc, $d030
    ld e, [hl]
    dec sp
    ld e, a
    ld bc, $0830
    ld e, a
    dec sp
    ld e, a
    sub b
    rst $38
    ld b, $04
    ld [$ff90], sp
    rlca
    dec b
    ld [$ff90], sp
    ld [$0905], sp
    adc a
    rst $38
    ld [bc], a
    ld bc, $8f01
    rst $38
    inc bc
    ld bc, $8f02
    rst $38
    ld bc, $0305
    adc a
    rst $38
    ld bc, $0406
    nop
    dec b
    inc bc
    dec b
    dec b
    nop

jr_00b_5ef9:
    inc b
    ld b, $03
    ld b, $00
    ld [$0408], sp
    rlca
    nop
    ld c, l
    ld [$ff02], sp
    rst $38
    sub b
    rst $38
    ld b, $04
    ld [$ff90], sp
    rlca
    dec b
    ld [$ff90], sp
    ld [$0905], sp
    adc a
    rst $38
    ld [bc], a
    ld bc, $8f01
    rst $38
    inc bc
    ld bc, $8f02
    rst $38

jr_00b_5f23:
    ld bc, $0305
    adc a
    rst $38
    ld bc, $0406
    nop
    dec b
    inc bc
    dec b
    dec b
    nop
    inc b
    ld b, $03
    ld b, $00
    ld [$0408], sp
    rlca
    rst $38
    dec b
    rlca
    ld bc, $8c00
    dec b
    ld bc, $0208
    ld e, $01
    nop
    nop
    nop
    rst $38
    ld c, h
    ld e, a
    ld e, c
    reti


    inc bc
    jr nc, jr_00b_5fa5

    ld e, a
    ld l, c
    ld e, a
    adc a
    rst $38
    dec b
    inc bc
    ld bc, $ff8f
    inc bc
    dec b
    ld [bc], a
    nop
    add hl, bc
    dec b
    ld [bc], a
    ld bc, $0230
    ld [bc], a
    dec b
    ld [bc], a
    rst $38
    dec b
    rlca
    ld bc, $8900
    dec b
    ld bc, $73ff
    ld e, a
    ld e, d
    reti


    dec b
    jr nc, jr_00b_5ef9

    ld e, a
    call nz, Call_000_065f
    jr nc, jr_00b_5f23

    ld e, a
    call z, $8f5f
    rst $38
    ld [bc], a
    ld bc, $8f01
    rst $38
    inc bc
    ld bc, $8f02
    rst $38
    inc b
    ld bc, $8203
    rst $38
    dec b
    inc b
    inc b
    jr nz, jr_00b_5f9a

    dec b
    inc bc
    dec b

jr_00b_5f9a:
    nop
    ld a, [bc]
    inc b
    ld b, $06
    ld d, b
    ld hl, $000a
    rst $38
    rst $38

jr_00b_5fa5:
    sub b
    rst $38
    rlca
    ld b, $07
    sub b
    rst $38
    ld [$0705], sp
    adc a
    rst $38
    ld [bc], a
    ld bc, $8f01
    rst $38
    inc bc
    ld bc, $8f02
    rst $38
    inc b
    ld bc, $0003
    ld a, [bc]
    inc b
    ld b, $06
    rst $38
    inc b
    rlca
    ld bc, $8c00
    inc b
    inc b
    rst $38
    inc b
    rlca
    ld bc, $8c00
    inc b
    inc b
    ld [$0006], sp
    nop
    ld bc, $0504
    rst $38
    db $eb
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, e
    reti


    ld [$0130], sp
    ld h, b
    ld l, l
    ld h, b
    ld e, h
    reti


    add hl, bc
    jr nc, @+$45

    ld h, b
    ld l, [hl]
    ld h, b
    add hl, bc
    jr nc, jr_00b_605b

    ld h, b
    ld l, [hl]
    ld h, b
    adc a
    rst $38
    ld bc, $0101
    adc a
    rst $38
    ld [bc], a
    ld bc, $8f02
    rst $38
    inc bc
    ld bc, $8f03

jr_00b_6011:
    rst $38
    inc b
    ld bc, $8f04
    rst $38
    rlca
    ld bc, $8f05
    rst $38
    ld [$0601], sp
    adc a
    rst $38
    ld [bc], a
    inc b
    rlca
    adc a
    rst $38
    inc bc
    inc b
    ld [$ff8f], sp
    inc b
    inc b
    add hl, bc
    adc a
    rst $38
    ld b, $04
    ld a, [bc]
    adc a
    rst $38
    rlca
    inc b
    dec bc
    adc a
    rst $38
    ld b, $01
    inc c
    db $10
    ld [bc], a
    ld [bc], a
    ld b, $0d
    rst $38
    add d
    rst $38
    inc b
    inc bc
    ld c, $00
    ld [bc], a
    inc b
    ld [bc], a
    rrca
    nop
    inc bc
    ld b, $03
    ld de, $0330
    ld bc, $1006
    ld b, b
    ld d, h
    ld b, $02

jr_00b_605b:
    rst $38
    rst $38
    add d
    rst $38
    inc b
    inc bc
    ld c, $00
    ld [bc], a
    inc b
    ld [bc], a
    rrca
    jr nc, jr_00b_606c

    ld bc, $1006

jr_00b_606c:
    rst $38
    rst $38
    dec b
    rlca
    ld bc, $8800
    dec b
    inc bc
    ld b, $01
    inc de
    nop
    nop
    ld b, $07
    rst $38
    ld a, a
    ld h, b
    ld e, l
    reti


    dec bc
    jr nc, jr_00b_6011

    ld h, b
    ld a, [hl+]
    ld h, c
    dec bc
    jr nc, @-$20

    ld h, b
    ld a, [hl+]
    ld h, c
    adc a
    rst $38
    ld bc, $0101
    adc a
    rst $38
    ld [bc], a
    ld bc, $8f02
    rst $38
    inc bc
    ld bc, $8f03
    rst $38
    inc b
    ld bc, $8f04
    rst $38
    dec b
    ld bc, $8f05
    rst $38
    ld b, $01
    ld b, $8f
    rst $38
    rlca
    ld bc, $8f07
    rst $38
    ld [$0801], sp
    adc a
    rst $38
    ld bc, $0904
    adc a
    rst $38
    ld [bc], a
    inc b
    ld a, [bc]
    adc a
    rst $38
    inc bc
    inc b
    dec bc
    adc a
    rst $38
    inc b
    inc b
    inc c
    adc a
    rst $38
    rlca
    inc b
    dec c
    adc a
    rst $38
    ld [$0e04], sp
    db $10
    inc bc
    ld b, $04
    rrca
    nop
    ld c, l
    ld bc, $ff06
    rst $38
    adc a
    rst $38
    ld bc, $0101
    adc a
    rst $38
    ld [bc], a
    ld bc, $8f02
    rst $38
    inc bc
    ld bc, $8f03
    rst $38
    inc b
    ld bc, $8f04
    rst $38
    dec b
    ld bc, $8f05
    rst $38
    ld b, $01
    ld b, $8f
    rst $38
    rlca
    ld bc, $8f07
    rst $38
    ld [$0801], sp
    adc a
    rst $38
    ld bc, $0904
    adc a
    rst $38
    ld [bc], a
    inc b
    ld a, [bc]
    adc a
    rst $38
    inc bc
    inc b
    dec bc
    adc a
    rst $38
    inc b
    inc b
    inc c
    adc a
    rst $38
    rlca
    inc b
    dec c
    adc a
    rst $38
    ld [$0e04], sp
    db $10
    inc bc
    ld b, $04
    rrca
    rst $38
    ld b, $07
    ld [de], a
    nop
    add h
    ld b, $01
    ld bc, $1406
    ld bc, $0000
    nop
    rst $38
    dec sp
    ld h, c
    ld e, [hl]
    reti


    dec c
    jr nc, jr_00b_61a1

    ld h, c
    bit 4, c
    ld c, $30
    ld [hl], c
    ld h, c
    db $d3
    ld h, c
    ld c, $30
    add [hl]
    ld h, c
    db $d3
    ld h, c
    dec c
    jr nc, @-$68

    ld h, c
    jp hl


    ld h, c
    ld c, $30
    and [hl]
    ld h, c
    db $d3
    ld h, c
    ld c, $30
    cp e
    ld h, c
    db $d3
    ld h, c
    add d
    rst $38
    ld [bc], a
    inc b
    ld bc, $1300
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    ld c, h
    inc bc
    ld [bc], a
    inc bc
    rst $38
    add d
    rst $38
    ld [bc], a
    inc b
    ld bc, $1300
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    ld c, h
    inc bc
    ld [bc], a
    inc bc
    nop
    ld c, l
    ld bc, $ff06
    rst $38
    add d
    rst $38
    ld [bc], a
    inc b
    ld bc, $1300
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    ld c, h
    inc bc
    ld [bc], a
    inc bc
    rst $38
    add d
    rst $38
    ld [bc], a
    inc b
    ld bc, $1300
    ld [bc], a
    inc bc
    ld [bc], a
    nop

jr_00b_61a1:
    ld c, h
    ld bc, $0302
    rst $38
    add d

jr_00b_61a7:
    rst $38
    ld [bc], a
    inc b
    ld bc, $1300
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    ld c, h
    ld bc, $0302
    nop
    ld c, l
    ld bc, $ff06
    rst $38
    add d
    rst $38
    ld [bc], a
    inc b
    ld bc, $1300
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    ld c, h
    ld bc, $0302
    rst $38
    inc bc
    rlca
    ld bc, $8100
    inc bc
    ld [bc], a
    rst $38
    inc bc
    rlca
    ld bc, $8100
    inc bc
    ld [bc], a
    inc bc
    ld bc, $000a
    ld bc, $0703
    ld bc, $1106
    ld bc, $0000
    nop
    rst $38
    inc bc
    rlca
    ld bc, $8100
    inc bc
    ld [bc], a
    inc bc
    ld bc, $000a
    ld bc, $0703
    rst $38
    ld [$ff62], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    ld h, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    reti


    db $10
    jr nc, jr_00b_6231

    ld h, d
    xor d
    ld h, d
    ld h, b
    reti


    ld de, $2530
    ld h, d
    or d
    ld h, d
    ld [de], a
    jr nc, jr_00b_6278

    ld h, d
    or e
    ld h, d
    ld [de], a
    jr nc, jr_00b_61a7

    ld h, d
    or e
    ld h, d
    rst $38
    adc a
    rst $38
    ld bc, $0101
    adc a
    rst $38
    rlca
    ld bc, $8f02
    rst $38

jr_00b_6231:
    ld [$0301], sp
    adc a
    rst $38
    ld [bc], a
    dec b
    inc b
    adc a
    rst $38
    inc bc
    dec b
    inc b
    adc a
    rst $38
    ld [bc], a
    ld b, $04
    adc a
    rst $38
    inc bc
    ld b, $04
    adc a
    rst $38
    ld bc, $0506
    add d
    rst $38
    ld b, $04
    ld b, $07
    ld b, e
    ld b, $03
    rlca
    ld [bc], a
    rlca
    ld b, $05
    ld [$8fff], sp
    rst $38
    ld bc, $0101
    adc a
    rst $38
    rlca
    ld bc, $8f02
    rst $38
    ld [$0301], sp
    adc a
    rst $38
    ld bc, $0506
    add d
    rst $38
    ld b, $04
    ld b, $07
    ld b, e

jr_00b_6278:
    ld b, $03
    rlca
    ld [bc], a
    rlca
    ld b, $05
    ld [$4d00], sp
    ld [bc], a
    ld b, $ff
    rst $38
    adc a

jr_00b_6287:
    rst $38
    ld bc, $0101
    adc a
    rst $38
    rlca
    ld bc, $8f02
    rst $38
    ld [$0301], sp
    adc a
    rst $38
    ld bc, $0506
    add d
    rst $38
    ld b, $04
    ld b, $07
    ld b, e
    ld b, $03
    rlca
    ld [bc], a
    rlca
    ld b, $05
    ld [$04ff], sp
    nop
    ld bc, $0800
    inc b
    dec b
    rst $38
    rst $38
    ld [bc], a
    ld b, $08
    ld bc, $0000
    nop
    rst $38
    cp l
    ld h, d
    ld h, c
    reti


    inc d
    jr nc, jr_00b_6287

    ld h, d
    jp c, $9062

    rst $38
    ld bc, $0204
    sub b
    rst $38
    ld [bc], a
    inc b
    inc bc
    sub b
    rst $38
    inc bc
    inc b
    inc b
    ld b, $1f
    ld [bc], a
    ld [bc], a
    ld bc, $01ff
    rlca
    ld bc, $8d00
    ld bc, $ff04
    db $e4
    ld h, d
    ld h, d
    reti


    ld d, $30
    db $ec
    ld h, d
    dec bc
    ld h, e
    sub b
    rst $38
    inc bc
    inc b
    inc b
    sub b
    rst $38

Call_00b_62f3:
    inc b
    inc b
    dec b
    sub b
    rst $38
    dec b
    inc b
    ld b, $06
    rra

jr_00b_62fd:
    inc b
    ld [bc], a
    ld bc, $1100
    dec b
    dec b
    ld [bc], a
    ld [$023b], sp
    ld b, $03
    rst $38
    inc b
    rlca
    ld bc, $8d00
    inc b
    ld b, $ff
    dec d
    ld h, e
    ld h, e
    reti


    jr jr_00b_6349

    add hl, hl
    ld h, e
    ld c, a
    ld h, e
    jr jr_00b_634f

    inc [hl]
    ld h, e
    ld c, a
    ld h, e
    jr jr_00b_6355

    ccf
    ld h, e
    ld c, a
    ld h, e
    nop
    ld [hl+], a
    inc b
    ld [bc], a
    ld bc, $ff00
    dec b
    ld [bc], a
    ld bc, $00ff
    inc h
    inc b
    ld [bc], a
    ld [bc], a
    nop
    rst $38
    dec b
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    dec sp
    inc bc
    inc bc
    inc bc
    nop
    inc h
    inc b
    ld [bc], a
    ld [bc], a

jr_00b_6349:
    nop
    rst $38
    dec b
    ld [bc], a
    ld [bc], a
    rst $38

jr_00b_634f:
    inc b
    rlca
    dec b
    nop
    add b
    inc b

jr_00b_6355:
    nop
    dec b
    rlca
    dec b
    nop
    add b
    dec b
    nop
    rst $38
    ld h, b
    ld h, e
    ld h, h
    reti


    ld a, [de]
    jr nc, @+$70

    ld h, e
    or [hl]
    ld h, e
    ld a, [de]
    jr nc, jr_00b_62fd

    ld h, e
    or [hl]
    ld h, e
    adc a
    rst $38
    inc b
    ld [bc], a
    ld bc, $ff8f
    dec b
    ld [bc], a
    ld bc, $ff8f
    ld bc, $0204
    adc a
    rst $38
    ld [$0304], sp
    ld b, b
    ld b, c
    inc b
    ld [bc], a
    ld bc, $4140
    dec b
    ld [bc], a
    ld bc, $4002
    inc bc
    dec b
    inc b
    rst $38
    adc a
    rst $38
    inc b
    ld [bc], a
    dec b
    adc a
    rst $38
    dec b
    ld [bc], a

jr_00b_639b:
    dec b
    adc a
    rst $38
    ld bc, $0204
    adc a
    rst $38
    ld [$0304], sp
    ld b, b
    dec hl
    inc b
    ld [bc], a
    dec b
    ld b, b
    dec hl
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld e, $03
    dec b
    ld b, $ff
    inc b
    rlca
    dec b
    nop
    add c
    inc b
    nop
    dec b
    rlca
    dec b
    nop
    add c
    dec b
    nop
    rst $38
    rst $00
    ld h, e
    ld h, l
    reti


    inc e
    jr nc, jr_00b_639b

    ld h, e
    xor $63
    adc a
    rst $38
    inc b
    ld bc, $8f01
    rst $38
    ld b, $01
    ld [bc], a
    adc a
    rst $38
    dec b
    inc bc
    inc bc
    rlca
    ld de, $0205
    inc b
    daa
    nop
    inc bc
    dec b
    dec b
    jr nz, @+$04

    ld [$0606], sp
    rst $38
    dec b
    rlca
    rlca
    nop
    add b
    dec b
    ld bc, $f8ff
    ld h, e
    ld h, [hl]
    reti


    ld e, $30
    ld b, $64
    jr nc, jr_00b_6464

    ld e, $30
    dec de
    ld h, h
    jr nc, jr_00b_646a

    adc a
    rst $38
    dec b
    inc bc
    ld bc, $0500
    dec b
    ld [bc], a
    ld bc, $0f37
    ld [bc], a
    inc bc
    ld [bc], a
    jr nz, jr_00b_6422

    ld b, $04
    inc bc
    rst $38
    adc a
    rst $38
    dec b
    inc bc
    ld bc, $0500

jr_00b_6422:
    dec b
    ld [bc], a
    ld bc, $0f37
    ld [bc], a
    inc bc
    ld [bc], a
    jr nz, @+$0e

    ld b, $04
    inc b
    rst $38
    dec b
    rlca
    rlca
    nop
    add d
    dec b
    ld bc, $3aff
    ld h, h
    ld h, a
    reti


    ld bc, $4e2d
    ld h, h
    sbc h
    ld h, h
    ld bc, $682d
    ld h, h
    sbc h
    ld h, h
    ld bc, $822d
    ld h, h
    sbc h
    ld h, h
    adc a
    rst $38
    ld [bc], a
    ld b, $01
    nop
    ld c, $05
    ld b, $02
    nop
    ld de, $0307
    inc bc
    nop
    ld [bc], a
    inc b
    inc b
    inc b
    add c
    rst $38

jr_00b_6464:
    dec b
    inc b
    rlca
    rst $38
    adc a
    rst $38

jr_00b_646a:
    ld [bc], a
    ld b, $01
    nop
    ld c, $05
    ld b, $02
    nop
    ld de, $0307
    inc bc
    nop
    inc de
    inc b
    inc b
    dec b
    add c
    rst $38
    dec b
    inc b
    ld [$8fff], sp
    rst $38
    ld [bc], a
    ld b, $01
    nop
    ld c, $05
    ld b, $02
    nop
    ld de, $0307
    inc bc
    nop
    inc d
    inc b
    inc b
    ld b, $81
    rst $38
    dec b
    inc b
    add hl, bc
    rst $38
    dec b
    ld [bc], a
    rlca
    nop
    ld bc, $0205
    rst $38
    and [hl]
    ld h, h
    ld l, b
    reti


    inc bc
    dec l
    or h
    ld h, h
    push bc
    ld h, h
    inc bc
    dec l
    cp a
    ld h, h
    push bc
    ld h, h
    nop
    dec bc
    ld [$0105], sp
    nop
    ld c, l
    ld [$ff02], sp
    rst $38
    nop
    dec bc
    ld [$0105], sp
    rst $38
    rlca
    rlca
    inc bc
    nop
    add c
    inc b
    ld bc, $0708
    inc bc
    nop
    add c
    dec b
    ld bc, $0208
    nop
    ld bc, $0000
    nop
    rst $38
    db $dd
    ld h, h
    ld l, c
    reti


    dec b
    dec l
    rst $30
    ld h, h
    inc hl
    ld h, l
    dec b
    dec l
    rlca
    ld h, l
    inc hl
    ld h, l
    dec b
    dec l
    ld [de], a
    ld h, l
    inc hl
    ld h, l
    dec b
    dec l
    dec e
    ld h, l
    inc hl
    ld h, l
    db $10
    dec bc
    rlca
    dec b
    ld bc, $4d00
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld c, l
    ld [bc], a
    ld b, $ff
    rst $38
    db $10
    dec bc
    rlca
    dec b
    ld bc, $4d00
    ld [bc], a
    ld b, $ff
    rst $38
    db $10
    dec bc
    rlca
    dec b
    ld bc, $4d00
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    db $10
    dec bc
    rlca
    dec b
    ld bc, $06ff
    rlca
    inc bc
    nop
    add c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    ld [bc], a
    ld b, $02
    ld bc, $0000
    nop
    rst $38
    dec sp
    ld h, l
    ld l, d
    reti


    rlca
    dec l
    ld d, l
    ld h, l
    add c
    ld h, l
    rlca
    dec l
    ld h, l
    ld h, l
    add c
    ld h, l
    rlca
    dec l
    ld [hl], b
    ld h, l
    add c
    ld h, l
    rlca
    dec l
    ld a, e
    ld h, l
    add c
    ld h, l
    nop
    dec bc
    ld b, $03
    ld bc, $4d00
    dec b
    ld bc, $00ff
    ld c, l
    rlca
    ld bc, $ffff
    nop
    dec bc
    ld b, $03
    ld bc, $4d00
    rlca
    ld bc, $ffff
    nop
    dec bc
    ld b, $03
    ld bc, $4d00
    dec b
    ld bc, $ffff
    nop
    dec bc
    ld b, $03
    ld bc, $01ff
    rlca
    inc bc
    nop
    add c
    rlca
    ld [bc], a
    dec b
    ld bc, $0103
    nop
    nop
    nop
    rlca
    ld bc, HeaderLogo
    nop
    nop
    nop
    rst $38
    sbc c
    ld h, l
    ld l, e
    reti


    add hl, bc
    dec l
    or e
    ld h, l
    rst $18
    ld h, l
    add hl, bc
    dec l
    jp $df65


    ld h, l
    add hl, bc
    dec l
    adc $65
    rst $18
    ld h, l
    add hl, bc
    dec l
    reti


    ld h, l
    rst $18
    ld h, l
    nop
    dec bc
    ld [$0105], sp
    nop
    ld c, l
    inc bc
    inc bc
    rst $38
    nop
    ld c, l
    ld b, $03
    rst $38
    rst $38
    nop
    dec bc
    ld [$0105], sp
    nop
    ld c, l
    ld b, $03
    rst $38
    rst $38
    nop
    dec bc
    ld [$0105], sp
    nop
    ld c, l
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    dec bc
    ld [$0105], sp
    rst $38
    ld [$0307], sp
    nop
    add b
    rlca
    ld [bc], a
    inc bc
    inc bc
    ld b, $01
    nop
    nop
    nop
    ld b, $03
    rlca
    ld bc, $0000
    nop
    rst $38
    rst $30
    ld h, l
    ld l, h
    reti


    dec bc
    dec l
    dec bc
    ld h, [hl]
    dec sp
    ld h, [hl]
    dec bc
    dec l
    jr nz, jr_00b_6669

    dec sp
    ld h, [hl]
    dec bc
    dec l
    jr nc, jr_00b_666f

    dec sp
    ld h, [hl]
    ld bc, $020b
    inc b
    ld bc, $0b01
    ld [$0205], sp
    nop
    ld c, l
    ld [bc], a
    inc bc
    rst $38
    nop
    ld c, l
    rlca
    inc bc
    rst $38
    rst $38
    jr nz, jr_00b_662d

    ld bc, $0106
    db $10
    dec bc
    ld [$0205], sp
    nop
    ld c, l
    ld [bc], a

jr_00b_662d:
    inc bc
    rst $38
    rst $38
    jr nz, jr_00b_663d

    ld bc, $0106
    db $10
    dec bc
    ld [$0205], sp
    rst $38
    inc b
    rlca

jr_00b_663d:
    inc bc
    nop
    add b
    inc b
    ld bc, $0705
    inc bc
    nop
    add b
    dec b
    ld bc, $0302
    add hl, bc
    ld bc, $0000
    nop
    rlca
    inc bc
    ld a, [bc]
    ld bc, $0000
    nop
    rst $38
    ld e, d
    ld h, [hl]
    ld l, l
    reti


    dec c
    dec l
    ld [hl], h
    ld h, [hl]
    and b
    ld h, [hl]
    dec c
    dec l
    add h
    ld h, [hl]
    and b
    ld h, [hl]
    dec c

jr_00b_6669:
    dec l
    adc a
    ld h, [hl]
    and b
    ld h, [hl]
    dec c

jr_00b_666f:
    dec l
    sbc d
    ld h, [hl]
    and b
    ld h, [hl]
    db $10
    dec bc
    ld b, $06
    ld bc, $4d00
    inc bc
    ld [bc], a
    rst $38
    nop
    ld c, l
    dec b
    ld [bc], a
    rst $38
    rst $38
    db $10
    dec bc
    ld b, $06
    ld bc, $4d00
    inc bc
    ld [bc], a
    rst $38
    rst $38
    db $10
    dec bc
    ld b, $06
    ld bc, $4d00
    dec b
    ld [bc], a
    rst $38
    rst $38
    db $10
    dec bc
    ld b, $06
    ld bc, $04ff
    rlca
    inc bc
    nop
    add b
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc c
    ld bc, $0000
    nop
    dec b
    ld [bc], a
    dec c
    ld bc, $0000
    nop
    rst $38
    cp b
    ld h, [hl]
    ld l, [hl]
    reti


    rrca
    dec l
    jp nc, $fe66

    ld h, [hl]
    rrca
    dec l
    ld [c], a
    ld h, [hl]
    cp $66
    rrca
    dec l
    db $ed
    ld h, [hl]
    cp $66
    rrca
    dec l
    ld hl, sp+$66
    cp $66
    db $10
    dec bc
    rlca
    ld b, $01
    nop
    ld c, l
    inc bc
    ld [bc], a
    rst $38
    nop
    ld c, l
    ld b, $02
    rst $38
    rst $38
    db $10
    dec bc
    rlca
    ld b, $01
    nop
    ld c, l
    ld b, $02
    rst $38
    rst $38
    db $10
    dec bc
    rlca
    ld b, $01
    nop
    ld c, l
    inc bc
    ld [bc], a
    rst $38
    rst $38
    db $10
    dec bc
    rlca
    ld b, $01
    rst $38
    inc b
    rlca
    inc bc
    nop
    add h
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    rrca
    ld bc, $0000
    nop
    ld b, $02
    db $10
    ld bc, $0000
    nop
    rst $38
    ld d, $67
    ld l, a
    reti


    ld de, $302d
    ld h, a
    ld e, h
    ld h, a
    ld de, $402d
    ld h, a
    ld e, h
    ld h, a
    ld de, $4b2d
    ld h, a
    ld e, h
    ld h, a
    ld de, $562d
    ld h, a
    ld e, h
    ld h, a
    nop
    dec bc
    dec b
    ld [bc], a
    ld bc, $4d00
    ld [bc], a
    inc b
    rst $38
    nop
    ld c, l
    rlca
    inc b
    rst $38
    rst $38
    nop
    dec bc
    dec b
    ld [bc], a
    ld bc, $4d00
    rlca
    inc b
    rst $38
    rst $38
    nop
    dec bc
    dec b
    ld [bc], a
    ld bc, $4d00
    ld [bc], a
    inc b
    rst $38
    rst $38
    nop
    dec bc
    dec b
    ld [bc], a
    ld bc, $04ff
    rlca
    inc bc
    nop
    add h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [de], a
    ld bc, $0000
    nop
    rlca
    inc b
    inc de
    ld bc, $0000
    nop
    rst $38
    ld [hl], h
    ld h, a
    ld [hl], b
    reti


    inc de
    dec l
    add d
    ld h, a
    sub e
    ld h, a
    inc de
    dec l
    adc l
    ld h, a
    sub e
    ld h, a
    jr nc, jr_00b_678f

    ld bc, $0106
    nop
    ld c, l
    inc bc
    ld [bc], a
    rst $38
    rst $38
    jr nc, @+$0d

jr_00b_678f:
    ld bc, $0106
    rst $38
    rlca
    rlca
    inc bc
    nop
    add h
    inc b
    ld bc, $0708
    inc bc
    nop
    add h
    dec b
    ld bc, $0203
    dec d
    ld bc, $0000
    nop
    rst $38
    xor e
    ld h, a
    ld [hl], c
    reti


    dec d
    dec l
    push bc
    ld h, a
    pop af
    ld h, a
    dec d
    dec l
    push de
    ld h, a
    pop af
    ld h, a
    dec d
    dec l
    ldh [$67], a
    pop af
    ld h, a
    dec d
    dec l
    db $eb
    ld h, a
    pop af
    ld h, a
    jr nc, jr_00b_67d2

    ld bc, $0106
    nop
    ld c, l
    ld bc, $ff03
    nop
    ld c, l
    inc bc

jr_00b_67d2:
    inc bc
    rst $38
    rst $38
    jr nc, jr_00b_67e2

    ld bc, $0106
    nop
    ld c, l
    inc bc
    inc bc
    rst $38
    rst $38
    jr nc, jr_00b_67ed

jr_00b_67e2:
    ld bc, $0106
    nop
    ld c, l
    ld bc, $ff03
    rst $38
    jr nc, jr_00b_67f8

jr_00b_67ed:
    ld bc, $0106
    rst $38
    ld [$0307], sp
    nop
    add l
    ld [bc], a
    ld [bc], a

jr_00b_67f8:
    ld bc, $1603
    ld bc, $0000
    nop
    inc bc
    inc bc
    rla
    ld bc, $0000
    nop
    rst $38
    add hl, bc
    ld l, b
    ld [hl], d
    reti


    rla
    dec l
    inc hl
    ld l, b
    ld c, a
    ld l, b
    rla
    dec l
    inc sp
    ld l, b
    ld c, a
    ld l, b
    rla
    dec l
    ld a, $68
    ld c, a
    ld l, b
    rla
    dec l
    ld c, c
    ld l, b
    ld c, a
    ld l, b
    nop
    dec bc
    ld [bc], a
    ld [bc], a
    ld bc, $4d00
    ld b, $02
    rst $38
    nop
    ld c, l
    ld b, $04
    rst $38
    rst $38
    nop
    dec bc
    ld [bc], a
    ld [bc], a
    ld bc, $4d00
    ld b, $04
    rst $38
    rst $38
    nop
    dec bc
    ld [bc], a
    ld [bc], a
    ld bc, $4d00
    ld b, $02
    rst $38
    rst $38
    nop
    dec bc
    ld [bc], a
    ld [bc], a
    ld bc, $02ff
    rlca
    inc bc
    nop
    add l
    rlca
    ld [bc], a
    ld b, $02
    jr jr_00b_685b

    nop

jr_00b_685b:
    nop
    nop
    ld b, $04
    add hl, de
    ld bc, $0000
    nop
    rst $38
    ld h, a
    ld l, b
    ld [hl], e
    reti


    add hl, de
    dec l
    add c
    ld l, b
    xor l
    ld l, b
    add hl, de
    dec l
    sub c
    ld l, b
    xor l
    ld l, b
    add hl, de
    dec l
    sbc h
    ld l, b
    xor l
    ld l, b
    add hl, de
    dec l
    and a
    ld l, b
    xor l
    ld l, b
    nop
    dec bc
    inc bc
    inc b
    ld bc, $4d00
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld c, l
    inc b
    ld [bc], a
    rst $38
    rst $38
    nop
    dec bc
    inc bc
    inc b
    ld bc, $4d00
    inc b
    ld [bc], a
    rst $38
    rst $38
    nop
    dec bc
    inc bc
    inc b
    ld bc, $4d00
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    nop
    dec bc
    inc bc
    inc b
    ld bc, $06ff
    rlca
    inc bc
    nop
    add l
    inc b
    ld bc, $0707
    inc bc
    nop
    add l
    dec b
    ld bc, $0202
    ld a, [de]
    ld bc, $0000
    nop
    inc b
    ld [bc], a
    dec de
    ld bc, $0000
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub $68
    ld [bc], a
    ld l, c
    ld [hl], h
    reti


    dec de
    dec l
    db $10
    ld l, c
    xor l
    ld l, d
    dec de
    dec l
    ld b, e
    ld l, c
    xor l
    ld l, d
    dec de
    dec l
    ld h, a
    ld l, c
    xor l
    ld l, d
    dec de
    dec l
    and h
    ld l, c
    xor l
    ld l, d
    dec de
    dec l
    pop hl
    ld l, c
    xor l
    ld l, d
    dec de
    dec l
    jr z, jr_00b_6964

    xor l
    ld l, d
    dec de
    dec l
    ld h, a
    ld l, c
    xor l
    ld l, d
    ld [hl], l
    reti


    inc e
    dec l
    ld h, l
    ld l, d
    xor [hl]
    ld l, d
    inc e
    dec l
    adc [hl]
    ld l, d
    xor [hl]
    ld l, d
    adc a
    rst $38
    ld bc, $0101
    adc a
    rst $38
    ld [bc], a
    ld bc, $8f02
    rst $38
    rlca
    ld bc, $8f03
    rst $38
    ld [$0401], sp
    adc a
    rst $38
    dec b
    inc b
    dec b
    adc a
    rst $38
    inc b
    ld bc, $8f06
    rst $38
    dec b
    ld bc, $5006
    inc d
    dec b
    inc bc
    rlca
    nop
    ld d, c
    ld b, $04
    rlca
    ld b, b
    ld d, b
    inc bc
    inc b
    rst $38
    rst $38
    adc a
    rst $38
    ld bc, $0101
    adc a
    rst $38
    ld [bc], a
    ld bc, $8f02
    rst $38
    rlca
    ld bc, $8f03
    rst $38
    ld [$0401], sp
    adc a
    rst $38
    dec b
    inc b
    dec b
    adc a
    rst $38
    inc b
    ld bc, $8f06
    rst $38
    dec b

jr_00b_6964:
    ld bc, $ff06
    adc a
    rst $38
    ld bc, $0101
    adc a
    rst $38
    ld [bc], a
    ld bc, $8f02
    rst $38
    rlca
    ld bc, $8f03
    rst $38
    ld [$0401], sp
    adc a
    rst $38
    dec b
    inc b
    dec b
    adc a
    rst $38
    inc b
    ld bc, $8f06
    rst $38
    dec b
    ld bc, $5006
    inc d
    rlca
    inc b
    rlca
    ld d, b
    ld hl, $000b
    rst $38
    nop
    ld d, c
    ld b, $04
    rlca
    ld b, b
    ld e, a
    dec b
    inc bc
    rst $38
    ld b, b
    ld d, b
    inc bc
    inc b
    rst $38
    rst $38
    adc a
    rst $38
    ld bc, $0101
    adc a
    rst $38
    ld [bc], a
    ld bc, $8f02
    rst $38
    rlca
    ld bc, $8f03
    rst $38
    ld [$0401], sp
    adc a
    rst $38
    dec b
    inc b
    dec b
    adc a
    rst $38
    inc b
    ld bc, $8f06
    rst $38
    dec b
    ld bc, $5006
    inc d
    rlca
    inc b
    rlca
    ld d, b
    ld hl, $000b
    rst $38
    nop
    ld d, c
    ld b, $04
    rlca
    ld b, b
    ld e, a
    dec b
    inc bc
    rst $38
    ld b, b
    ld d, b
    inc bc
    inc b
    rst $38
    rst $38
    sub b
    rst $38
    ld [bc], a
    inc bc
    dec c
    sub b
    rst $38
    inc b
    inc bc
    ld c, $8f
    rst $38
    ld bc, $0101
    adc a
    rst $38
    ld [bc], a
    ld bc, $8f02
    rst $38
    rlca
    ld bc, $8f03
    rst $38
    ld [$0401], sp
    adc a
    rst $38
    dec b
    inc b
    dec b
    adc a
    rst $38
    inc b
    ld bc, $8f06
    rst $38
    dec b
    ld bc, $1006
    inc d
    rlca
    inc b
    rlca
    ld b, b
    ld hl, $040b
    rst $38
    ld [hl], b
    inc d
    rlca
    inc b
    rlca
    ld b, b
    ld e, a
    dec b
    inc bc
    rst $38
    ld b, b

Call_00b_6a23:
    ld d, b
    inc bc
    inc b
    rst $38
    rst $38
    adc a
    rst $38
    ld bc, $0101
    adc a
    rst $38
    ld [bc], a
    ld bc, $8f02
    rst $38
    rlca
    ld bc, $8f03
    rst $38
    ld [$0401], sp
    adc a
    rst $38
    dec b
    inc b
    dec b
    adc a
    rst $38
    inc b
    ld bc, $8f06
    rst $38
    dec b
    ld bc, $5006
    inc d
    ld b, $04
    ld b, $50
    ld hl, $000b
    rst $38
    nop
    ld d, c
    ld b, $04
    ld b, $00
    ld e, a
    inc b
    dec b
    rst $38
    nop
    ld d, b
    inc bc
    inc b
    rst $38
    rst $38
    adc a
    rst $38
    ld bc, $0801
    adc a
    rst $38
    ld [bc], a
    ld bc, $8f09
    rst $38
    ld [$0a01], sp
    adc a
    rst $38
    ld [$0b05], sp
    adc a
    rst $38
    dec b
    ld bc, $400c
    ld hl, $0108
    rst $38
    ld b, b
    add hl, sp
    ld [$ff01], sp
    ld d, b
    inc d
    nop
    inc b
    rlca
    rst $38
    adc a
    rst $38
    ld bc, $0801
    adc a
    rst $38
    ld [bc], a
    ld bc, $8f09
    rst $38
    ld [$0a01], sp
    adc a
    rst $38
    ld [$0b05], sp
    adc a
    rst $38
    dec b
    ld bc, $400c
    ld hl, $0208
    rst $38
    rst $38
    rst $38
    rst $38
    or c
    ld l, d
    db $76
    reti


    dec c
    ld h, $bf
    ld l, d
    bit 5, d
    ld c, $26
    jp z, $cc6a

    ld l, d
    nop
    ld d, $01
    ld [bc], a
    ld bc, $2150
    ld a, [bc]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0002
    nop
    ld bc, $0504
    rst $38
    sub $6a
    ld [hl], a
    reti


    db $10
    ld h, $e4
    ld l, d
    add hl, bc
    ld l, e
    ld de, $0326
    ld l, e
    ld a, [bc]
    ld l, e
    adc a
    rst $38
    inc b
    ld bc, $8f02
    rst $38
    dec b
    ld bc, $8f02
    rst $38
    inc b
    ld [bc], a
    ld [bc], a
    adc a
    rst $38
    dec b
    ld [bc], a
    ld [bc], a
    nop
    ld c, $08
    inc bc
    ld bc, $2170
    nop
    nop
    rst $38
    rst $38
    nop
    ld c, $08
    inc bc
    ld bc, $ffff
    inc b
    ld bc, $0000
    ld bc, $0504
    rst $38
    inc d
    ld l, e
    ld a, b
    reti


    ld d, $24
    ld [hl+], a
    ld l, e
    jr c, jr_00b_6b87

    rla
    inc h
    scf
    ld l, e
    add hl, sp
    ld l, e
    sub b
    rst $38
    dec b
    inc b
    ld [bc], a
    nop
    jr nz, jr_00b_6b2e

    inc b
    ld bc, $3940

jr_00b_6b2e:
    ld [$ff00], sp
    ld d, b
    ld hl, $010a
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    inc b
    nop
    nop
    ld bc, $0504
    rst $38
    ld b, e
    ld l, e
    ld a, c
    reti


    inc de
    ld h, $51
    ld l, e
    ld e, l
    ld l, e
    inc d
    ld h, $5c
    ld l, e
    ld e, [hl]
    ld l, e
    nop
    inc a
    inc b
    inc b
    ld bc, $2150
    ld a, [bc]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0004
    nop
    ld bc, $0504
    rst $38
    ld l, b
    ld l, e
    ld a, d
    reti


    ld d, $26
    db $76
    ld l, e
    cp c
    ld l, e
    rla
    ld h, $b3
    ld l, e
    cp d
    ld l, e
    sub b
    rst $38
    rlca
    ld bc, $9007
    rst $38
    inc b
    inc b
    ld [$ff90], sp
    dec b
    dec b
    add hl, bc
    sub b
    rst $38

jr_00b_6b87:
    ld bc, $0a03
    adc a
    rst $38
    nop
    ld b, $01
    adc a
    rst $38
    inc b
    ld bc, $8f02
    rst $38
    dec b
    ld bc, $0602
    dec h
    ld bc, $0302
    ld b, $25
    ld [$0400], sp
    ld b, $25
    dec b
    inc bc
    dec b
    ld b, $25
    ld b, $06
    ld b, $50
    ld hl, $000a
    rst $38
    rst $38
    adc a
    rst $38
    nop
    ld b, $01
    rst $38
    rst $38
    dec b
    ld bc, $0000
    ld bc, $0504
    rst $38
    call nz, $7b6b
    reti


    add hl, de
    ld h, $d2
    ld l, e
    ld a, [c]
    ld l, e
    ld a, [de]
    ld h, $e7
    ld l, e
    di
    ld l, e
    adc a
    rst $38
    ld b, $06
    ld bc, $ff82
    dec b
    nop
    ld [bc], a
    db $10
    dec e
    rlca
    inc bc
    inc bc
    ld d, b
    ld hl, $000a
    rst $38
    rst $38
    adc a
    rst $38
    ld b, $06
    ld bc, $ff82
    dec b
    nop
    ld [bc], a
    rst $38
    rst $38
    rlca
    inc bc
    nop
    nop
    ld bc, $0504
    rst $38
    db $fd
    ld l, e
    ld a, h
    reti


    inc e
    ld h, $0b
    ld l, h
    ld a, e
    ld l, h
    dec e
    ld h, $52
    ld l, h
    ld a, h
    ld l, h
    add d
    rst $38
    ld b, $02
    ld bc, $ff80
    ld b, $02
    ld bc, $ff82
    ld [$0202], sp
    add b
    rst $38
    ld [$0202], sp
    add d
    rst $38
    ld b, $04
    inc bc
    add b
    rst $38
    ld b, $04
    inc bc
    add d
    rst $38
    ld [$0404], sp
    add b
    rst $38
    ld [$0404], sp
    adc a
    rst $38
    inc b
    ld b, $07
    nop
    ld [de], a
    inc bc
    ld bc, $0005
    ld [de], a
    inc bc
    ld [bc], a
    ld b, $30
    ld [bc], a
    inc bc
    ld b, $07
    jr nz, jr_00b_6c60

    ld [$0805], sp
    ld [hl], b
    ld hl, $0200
    rst $38
    rst $38
    adc a
    rst $38
    ld b, $02
    ld bc, $ff8f
    ld [$0202], sp
    adc a
    rst $38
    ld b, $04

jr_00b_6c60:
    inc bc
    adc a
    rst $38
    ld [$0404], sp
    adc a
    rst $38
    inc b
    ld b, $07
    nop
    ld [de], a
    inc bc
    ld bc, $0005
    ld [de], a
    inc bc
    ld [bc], a
    ld b, $30
    ld [bc], a
    inc bc
    ld b, $07
    rst $38
    rst $38
    ld [$0006], sp
    nop
    ld bc, $0504
    rst $38
    add [hl]
    ld l, h
    ld a, l
    reti


    dec de
    dec h
    sub h
    ld l, h
    ld c, $6d
    inc e
    dec h
    db $db
    ld l, h
    rrca
    ld l, l
    sub b
    rst $38
    inc b
    inc b
    inc bc
    sub b
    rst $38
    inc bc
    dec b
    inc bc
    sub b
    rst $38
    inc bc
    ld b, $03
    sub b
    rst $38
    ld b, $04
    inc b
    sub b
    rst $38
    ld b, $05
    inc b
    sub b
    rst $38
    dec b
    ld b, $04
    sub b
    rst $38
    dec b
    inc bc
    ld [bc], a
    ld b, b
    ldh [rTIMA], a
    nop
    rst $38
    ld b, b
    pop hl
    dec b
    nop
    rst $38
    ld b, b
    ld [c], a
    dec b
    nop
    rst $38
    ld b, b
    db $e3
    dec b
    nop
    rst $38
    nop
    add hl, de
    inc b
    ld bc, $6001
    dec d
    inc b
    ld [$50ff], sp
    ld hl, $010a
    rst $38
    rst $38
    sub b
    rst $38
    inc b
    inc b
    inc bc
    sub b
    rst $38
    inc bc
    dec b
    inc bc
    sub b
    rst $38
    inc bc
    ld b, $03
    sub b
    rst $38
    ld b, $04
    inc b
    sub b
    rst $38
    ld b, $05
    inc b
    sub b
    rst $38
    dec b
    ld b, $04
    ld b, b
    ldh [rTIMA], a
    nop
    rst $38
    ld b, b
    pop hl
    dec b
    nop
    rst $38
    ld b, b
    ld [c], a
    dec b
    nop
    rst $38
    ld b, b
    db $e3
    dec b
    nop
    rst $38
    rst $38
    rst $38
    inc b
    ld bc, $0000
    ld bc, $0504
    rst $38
    add hl, de
    ld l, l
    ld a, [hl]
    reti


    ld bc, $2725
    ld l, l
    pop af
    ld l, l
    ld [bc], a
    dec h
    sub [hl]
    ld l, l
    ld a, [c]
    ld l, l
    sub b
    rst $38
    inc b
    nop
    ld [bc], a
    sub b
    rst $38
    dec b
    nop
    inc bc
    sub b
    rst $38
    ld b, $00
    inc b
    sub b
    rst $38
    ld bc, $0501
    sub b
    rst $38
    dec b
    ld [bc], a
    ld b, $90
    rst $38
    ld [$0702], sp
    sub b
    rst $38
    ld [bc], a
    inc b
    ld [$ff90], sp
    inc bc
    inc b
    add hl, bc
    sub b
    rst $38
    inc b
    inc b
    ld a, [bc]
    sub b
    rst $38
    rlca
    inc b
    dec bc
    sub b
    rst $38
    ld [$0c04], sp
    sub b
    rst $38
    rlca
    dec b
    dec c
    sub b
    rst $38
    ld bc, $0e06
    sub b
    rst $38
    dec b
    ld b, $0f
    sub b
    rst $38
    ld b, $02
    db $10
    ld b, b
    ldh [$08], a
    nop
    rst $38
    ld b, b
    pop hl
    ld [$ff00], sp
    ld b, b
    ld [c], a
    ld [$ff00], sp
    ld b, b
    db $e3
    ld [$ff00], sp
    ld b, b
    add hl, sp
    ld [bc], a
    nop
    rst $38
    nop
    ld e, $08
    dec b
    ld bc, $2170
    nop
    nop
    rst $38
    rst $38
    sub b
    rst $38
    inc b
    nop
    ld [bc], a
    sub b
    rst $38
    dec b
    nop
    inc bc
    sub b
    rst $38
    ld b, $00
    inc b
    sub b
    rst $38
    ld bc, $0501
    sub b
    rst $38
    dec b
    ld [bc], a
    ld b, $90
    rst $38
    ld [$0702], sp
    sub b
    rst $38
    ld [bc], a
    inc b
    ld [$ff90], sp
    inc bc
    inc b
    add hl, bc
    sub b
    rst $38
    inc b
    inc b
    ld a, [bc]
    sub b
    rst $38
    rlca
    inc b
    dec bc
    sub b
    rst $38
    ld [$0c04], sp
    sub b
    rst $38
    rlca
    dec b
    dec c
    sub b
    rst $38
    ld bc, $0e06
    sub b
    rst $38
    dec b
    ld b, $0f
    ld b, b
    ldh [$08], a
    nop
    rst $38
    ld b, b
    pop hl
    ld [$ff00], sp
    ld b, b
    ld [c], a
    ld [$ff00], sp
    ld b, b
    db $e3
    ld [$ff00], sp
    rst $38
    rst $38
    ld [$0005], sp
    nop
    ld bc, $0504
    rst $38
    db $fc
    ld l, l
    ld a, a
    reti


    inc b
    inc hl
    ld a, [bc]
    ld l, [hl]
    ld a, [hl+]
    ld l, [hl]
    dec b
    inc hl
    inc h
    ld l, [hl]
    dec hl
    ld l, [hl]
    sub b
    rst $38
    ld b, $06
    inc b
    adc a
    rst $38
    ld [$0106], sp
    adc a
    rst $38
    rlca
    inc b
    ld [bc], a
    nop
    inc l
    ld bc, $0301
    ld d, b
    ld hl, $000a
    rst $38
    rst $38
    adc a
    rst $38
    rlca
    inc b
    ld [bc], a
    rst $38
    rst $38
    rlca
    ld b, $00
    nop
    ld bc, $0504
    rst $38
    dec [hl]
    ld l, [hl]
    add b
    reti


    inc b
    dec h
    ld b, e
    ld l, [hl]
    dec [hl]
    ld l, a
    dec b
    dec h
    ret nc

    ld l, [hl]
    ld [hl], $6f
    sub b
    rst $38
    ld [bc], a
    ld [bc], a
    ld [bc], a
    sub b
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    sub b
    rst $38
    ld [bc], a
    dec b
    ld [bc], a
    sub b
    rst $38
    ld [bc], a
    ld b, $02
    sub b
    rst $38
    inc b
    ld [bc], a
    ld [bc], a
    sub b
    rst $38
    inc b
    inc b
    ld [bc], a
    sub b
    rst $38
    inc b
    ld b, $02
    sub b
    rst $38
    ld b, $02
    ld [bc], a
    sub b
    rst $38
    ld b, $03
    ld [bc], a
    sub b
    rst $38
    ld b, $05
    ld [bc], a
    sub b
    rst $38
    ld b, $06
    ld [bc], a
    sub b
    rst $38
    ld [$0202], sp
    sub b
    rst $38
    ld [$0203], sp
    sub b
    rst $38
    ld [$0204], sp
    sub b
    rst $38
    ld [$0205], sp
    sub b
    rst $38
    ld [$0206], sp
    sub b
    rst $38
    ld bc, $0305
    sub b
    rst $38
    ld [bc], a
    inc b
    inc b
    sub b
    rst $38
    dec b
    inc bc
    dec b
    sub b
    rst $38
    dec b
    inc b
    ld b, $90
    rst $38
    rlca
    inc bc
    rlca
    sub b
    rst $38
    rlca
    dec b
    ld [$e040], sp
    ld bc, $ff00
    ld b, b
    pop hl
    ld bc, $ff00
    ld b, b
    ld [c], a
    ld bc, $ff00
    ld b, b
    db $e3
    ld bc, $ff00
    nop
    jr @+$03

    ld bc, $5001
    ld hl, $000a
    rst $38
    rst $38
    sub b
    rst $38
    ld [bc], a
    ld [bc], a
    ld [bc], a
    sub b
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    sub b
    rst $38
    ld [bc], a
    dec b
    ld [bc], a
    sub b
    rst $38
    ld [bc], a
    ld b, $02
    sub b
    rst $38
    inc b
    ld [bc], a
    ld [bc], a
    sub b
    rst $38
    inc b
    inc b
    ld [bc], a
    sub b
    rst $38
    inc b
    ld b, $02
    sub b
    rst $38
    ld b, $02
    ld [bc], a
    sub b
    rst $38
    ld b, $03
    ld [bc], a
    sub b
    rst $38
    ld b, $05
    ld [bc], a
    sub b
    rst $38
    ld b, $06
    ld [bc], a
    sub b
    rst $38
    ld [$0202], sp
    sub b
    rst $38
    ld [$0203], sp
    sub b
    rst $38
    ld [$0204], sp
    sub b
    rst $38
    ld [$0205], sp
    sub b
    rst $38
    ld [$0206], sp
    ld b, b
    ldh [rSB], a
    nop
    rst $38
    ld b, b
    pop hl
    ld bc, $ff00
    ld b, b
    ld [c], a
    ld bc, $ff00
    ld b, b
    db $e3
    ld bc, $ff00
    rst $38
    rst $38
    ld bc, $0001
    nop
    ld bc, $0504
    rst $38
    ld b, b
    ld l, a
    add c
    reti


    rlca
    inc h
    ld c, [hl]
    ld l, a
    ld e, d
    ld l, a
    ld [$5924], sp
    ld l, a
    ld e, e
    ld l, a
    dec b
    dec de
    inc bc
    inc b
    ld bc, $2150
    ld a, [bc]
    ld bc, $ffff
    rst $38
    rst $38
    dec b
    inc bc
    nop
    nop
    ld bc, $0504
    rst $38
    ld h, l
    ld l, a
    add d
    reti


    rlca
    inc hl
    ld a, c
    ld l, a
    jp c, $096f

    inc hl
    ld a, c
    ld l, a
    db $db
    ld l, a
    ld [$b623], sp
    ld l, a
    db $db
    ld l, a
    adc a
    rst $38
    inc b
    ld [bc], a
    ld bc, $ff8f
    ld [bc], a
    inc bc
    ld [bc], a
    adc a
    rst $38
    ld bc, $0304
    adc a
    rst $38
    ld [$0404], sp
    adc a
    rst $38
    ld b, $05
    dec b
    adc a
    rst $38
    inc bc
    inc bc
    ld b, $8f
    rst $38
    rlca
    inc b
    rlca
    ld h, b
    dec d
    ld [bc], a
    ld b, $ff
    ld [hl], b
    ld hl, $0000
    rst $38
    nop
    inc hl
    dec b
    ld bc, $0008
    rst $38
    dec b
    ld bc, $0008
    rst $38
    ld b, $01
    ld [$8fff], sp
    rst $38
    inc b
    ld [bc], a
    ld bc, $ff8f
    ld [bc], a
    inc bc
    ld [bc], a
    adc a
    rst $38
    ld bc, $0304
    adc a
    rst $38
    ld [$0404], sp
    adc a
    rst $38
    ld b, $05
    dec b
    adc a
    rst $38
    inc bc
    inc bc
    ld b, $8f
    rst $38
    rlca
    inc b
    rlca
    rst $38
    rst $38
    ld b, $01
    nop
    nop
    ld bc, $0504
    rst $38
    push hl
    ld l, a
    add e
    reti


    rlca
    dec h
    di
    ld l, a
    ld [hl+], a
    ld [hl], b
    rlca
    dec h
    rla
    ld [hl], b
    ld [hl+], a
    ld [hl], b
    sub b
    rst $38
    inc b
    inc b
    ld bc, $ff90
    dec b
    inc b
    ld [bc], a
    ld b, b
    pop hl
    inc b
    inc b
    rst $38
    ld b, b
    ld e, a
    inc b
    ld [bc], a
    rst $38
    ld b, b
    dec b
    inc b
    ld [bc], a
    rst $38
    ld b, b
    add hl, sp
    nop
    nop
    rst $38
    ld h, b
    ldh [rTIMA], a
    inc b
    rst $38
    rst $38
    sub b
    rst $38
    inc b
    inc b
    inc bc
    sub b
    rst $38
    dec b
    inc b
    inc bc
    rst $38
    rst $38
    dec h
    ld [hl], b
    add h
    reti


    add hl, bc
    dec h
    inc sp
    ld [hl], b
    ld c, c
    ld [hl], b
    ld a, [bc]
    dec h
    ld c, b
    ld [hl], b
    ld c, d
    ld [hl], b
    ld d, b
    ld hl, $010a
    rst $38
    nop
    jr z, jr_00b_703f

    dec b
    ld bc, $ff00

jr_00b_703f:
    inc b
    inc b
    ld bc, $ff00
    dec b
    inc b
    ld bc, $ffff
    rst $38
    ld bc, $0003
    nop
    ld bc, $0504
    rst $38
    ld d, h
    ld [hl], b
    add l
    reti


    ld bc, $6224
    ld [hl], b
    ld l, [hl]
    ld [hl], b
    ld [bc], a
    inc h
    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], b
    nop
    dec hl
    ld bc, $0105
    ld d, b
    ld hl, $000a
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0005
    nop
    ld bc, $0504
    rst $38
    ld a, c
    ld [hl], b
    add [hl]
    reti


    ld d, $25
    add c
    ld [hl], b
    cp c
    ld [hl], b
    sub b
    rst $38
    ld bc, $0601
    sub b
    rst $38
    ld [bc], a
    ld bc, $9006
    rst $38
    inc b
    ld bc, $9007
    rst $38
    dec b
    ld bc, $9007
    rst $38
    rlca
    ld bc, $9008
    rst $38
    ld [$0801], sp
    adc a
    rst $38
    inc bc
    inc bc
    ld bc, $ff8f
    ld b, $03
    ld [bc], a
    nop
    dec b
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    dec b
    dec b
    ld [bc], a
    inc b
    nop
    dec b
    ld [$0502], sp
    rst $38
    ld bc, $4101
    nop
    nop
    ld bc, $0206
    ld bc, $0041
    nop
    ld [bc], a
    ld b, $04
    ld bc, $0041
    nop
    inc b
    ld b, $05
    ld bc, $0041
    nop
    dec b
    ld b, $07
    ld bc, $0041
    nop
    rlca
    ld b, $08
    ld bc, $0041
    nop
    ld [$ff06], sp
    and $70
    add a
    reti


    jr jr_00b_710f

    nop
    ld [hl], c
    dec hl
    ld [hl], c
    jr jr_00b_7115

    dec bc
    ld [hl], c
    dec hl
    ld [hl], c
    jr jr_00b_711b

    jr nz, jr_00b_7169

    dec hl
    ld [hl], c
    add hl, de
    dec h
    ld b, d
    ld c, e
    inc l
    ld [hl], c
    nop
    inc e
    ld bc, HeaderLogo
    ld d, b
    ld hl, $000a
    rst $38
    rst $38
    nop
    ld [hl+], a
    inc b
    inc bc

jr_00b_710f:
    ld [bc], a
    ld d, b
    ld hl, $000a
    rst $38

jr_00b_7115:
    nop
    rst $38
    inc b
    inc bc
    ld [bc], a
    nop

jr_00b_711b:
    rst $38
    dec b
    inc bc
    ld [bc], a
    rst $38
    nop
    ld a, $07
    inc b
    inc bc
    ld d, b
    ld hl, $000a
    rst $38
    rst $38
    rst $38
    ld bc, $0002
    nop
    ld bc, $0504
    inc b
    ld [bc], a
    nop
    nop
    ld bc, $0504
    rlca
    ld [bc], a
    nop
    nop
    ld bc, $0504
    rst $38
    ld b, [hl]
    ld [hl], c
    add h
    ld [hl], c
    adc b
    reti


    inc de
    inc h
    sub d
    ld [hl], c
    cp [hl]
    ld [hl], e
    inc de
    inc h
    ret nz

    ld [hl], c
    ld a, [hl]
    ld [hl], e
    inc de
    inc h
    xor $71
    ld a, [hl]
    ld [hl], e
    inc de
    inc h
    inc e
    ld [hl], d
    cp $73
    inc de
    inc h
    ld c, d
    ld [hl], d
    ld a, [hl]
    ld [hl], e
    inc de
    inc h
    ld a, b

jr_00b_7169:
    ld [hl], d
    ld a, $74
    inc de
    inc h
    and [hl]
    ld [hl], d
    ld a, [hl]
    ld [hl], e
    inc de
    inc h
    call nc, Call_00b_7e72
    ld [hl], e
    inc de
    inc h
    ld [bc], a
    ld [hl], e
    ld a, [hl]
    ld [hl], e
    inc de
    inc h
    jr nc, jr_00b_71f5

    ld a, [hl]
    ld [hl], h
    adc c
    reti


    inc d
    inc h
    ld e, [hl]
    ld [hl], e
    cp [hl]
    ld [hl], h
    inc d
    inc h
    ld [hl], e
    ld [hl], e
    cp [hl]
    ld [hl], h
    sub b
    rst $38
    inc b
    inc b
    rrca
    sub b
    rst $38
    ld [bc], a
    rlca
    ld bc, $ff90
    rlca
    rlca
    ld bc, $ff90
    add hl, bc
    ld [bc], a
    rrca
    sub b
    rst $38
    add hl, bc
    dec b
    rrca
    sub b
    rst $38
    ld [bc], a
    nop
    inc b
    sub b
    rst $38
    rlca
    nop
    inc b
    sub b
    rst $38
    nop
    ld [bc], a
    rrca
    sub b
    rst $38
    nop
    dec b
    rrca
    rst $38
    sub b
    rst $38
    inc b
    inc b
    rrca
    sub b
    rst $38
    ld [bc], a
    rlca
    ld [bc], a
    sub b
    rst $38
    rlca
    rlca
    ld [bc], a
    sub b
    rst $38
    add hl, bc
    ld [bc], a
    rrca
    sub b
    rst $38
    add hl, bc
    dec b
    rrca
    sub b
    rst $38
    ld [bc], a
    nop
    rrca
    sub b
    rst $38
    rlca
    nop
    rrca
    sub b
    rst $38
    nop
    ld [bc], a
    rrca
    sub b
    rst $38
    nop
    dec b
    rrca
    rst $38
    sub b
    rst $38
    inc b
    inc b
    rrca
    sub b
    rst $38

jr_00b_71f5:
    ld [bc], a
    rlca
    inc bc
    sub b
    rst $38
    rlca
    rlca
    inc bc
    sub b
    rst $38
    add hl, bc
    ld [bc], a
    rrca
    sub b
    rst $38
    add hl, bc
    dec b
    rrca
    sub b
    rst $38
    ld [bc], a
    nop
    rrca
    sub b
    rst $38
    rlca
    nop
    rrca
    sub b
    rst $38
    nop
    ld [bc], a
    rrca
    sub b
    rst $38
    nop
    dec b
    rrca
    rst $38
    sub b
    rst $38
    inc b
    inc b
    rrca
    sub b
    rst $38
    ld [bc], a
    rlca
    rrca
    sub b
    rst $38
    rlca
    rlca
    rrca
    sub b
    rst $38
    add hl, bc
    ld [bc], a
    rrca
    sub b
    rst $38
    add hl, bc
    dec b
    inc bc
    sub b
    rst $38
    ld [bc], a
    nop
    rrca
    sub b
    rst $38
    rlca
    nop
    rrca
    sub b
    rst $38
    nop
    ld [bc], a
    rrca
    sub b
    rst $38
    nop
    dec b
    rrca
    rst $38
    sub b
    rst $38
    inc b
    inc b
    rrca
    sub b
    rst $38
    ld [bc], a
    rlca
    rrca
    sub b
    rst $38
    rlca
    rlca
    rrca
    sub b
    rst $38
    add hl, bc
    ld [bc], a
    rrca
    sub b
    rst $38
    add hl, bc
    dec b
    rrca
    sub b
    rst $38
    ld [bc], a
    nop
    dec b
    sub b
    rst $38
    rlca
    nop
    dec b
    sub b
    rst $38
    nop
    ld [bc], a
    rrca
    sub b
    rst $38
    nop
    dec b
    rrca
    rst $38
    sub b
    rst $38
    inc b
    inc b
    rrca
    sub b
    rst $38
    ld [bc], a
    rlca
    rrca
    sub b
    rst $38
    rlca
    rlca
    rrca
    sub b
    rst $38
    add hl, bc
    ld [bc], a
    rrca
    sub b
    rst $38
    add hl, bc
    dec b
    rrca
    sub b
    rst $38
    ld [bc], a
    nop
    ld b, $90
    rst $38
    rlca
    nop
    ld b, $90
    rst $38
    nop
    ld [bc], a
    rrca
    sub b
    rst $38
    nop
    dec b
    dec b
    rst $38
    sub b
    rst $38
    inc b
    inc b
    rrca
    sub b
    rst $38
    ld [bc], a
    rlca
    rrca
    sub b
    rst $38
    rlca
    rlca
    rrca
    sub b
    rst $38
    add hl, bc
    ld [bc], a
    rrca
    sub b
    rst $38
    add hl, bc
    dec b
    rrca
    sub b
    rst $38
    ld [bc], a
    nop
    rrca
    sub b
    rst $38
    rlca
    nop
    rrca
    sub b
    rst $38
    nop
    ld [bc], a
    rlca
    sub b
    rst $38
    nop
    dec b
    rlca
    rst $38
    sub b
    rst $38
    inc b
    inc b
    rrca
    sub b
    rst $38
    ld [bc], a
    rlca
    ld [$ff90], sp
    rlca
    rlca
    ld [$ff90], sp
    add hl, bc
    ld [bc], a
    rrca
    sub b
    rst $38
    add hl, bc
    dec b
    rrca
    sub b
    rst $38
    ld [bc], a
    nop
    rrca
    sub b
    rst $38
    rlca
    nop
    rrca
    sub b
    rst $38
    nop
    ld [bc], a
    rrca
    sub b
    rst $38
    nop
    dec b
    rrca
    rst $38
    sub b
    rst $38
    inc b
    inc b
    rrca
    sub b
    rst $38
    ld [bc], a
    rlca
    add hl, bc
    sub b
    rst $38
    rlca
    rlca
    add hl, bc
    sub b
    rst $38
    add hl, bc
    ld [bc], a
    rrca
    sub b
    rst $38
    add hl, bc
    dec b
    rrca
    sub b
    rst $38
    ld [bc], a
    nop
    rrca
    sub b
    rst $38
    rlca
    nop
    rrca
    sub b
    rst $38
    nop
    ld [bc], a
    rrca
    sub b
    rst $38
    nop
    dec b
    rrca
    rst $38
    sub b
    rst $38
    inc b
    inc b
    rrca
    sub b
    rst $38
    ld [bc], a
    rlca
    rrca
    sub b
    rst $38
    rlca
    rlca
    rrca
    sub b
    rst $38
    add hl, bc
    ld [bc], a
    rrca
    sub b
    rst $38
    add hl, bc
    dec b
    rrca
    sub b
    rst $38
    ld [bc], a
    nop
    rrca
    sub b
    rst $38
    rlca
    nop
    rrca
    sub b
    rst $38
    nop
    ld [bc], a
    add hl, bc
    sub b
    rst $38
    nop
    dec b
    rrca
    rst $38
    adc a
    rst $38
    inc bc
    ld [bc], a
    db $10
    adc a
    rst $38
    inc bc
    dec b
    ld [de], a
    nop
    ld a, [de]
    ld b, $02
    ld de, $2170
    nop
    ld bc, $ffff
    adc a
    rst $38
    inc bc
    ld [bc], a
    db $10
    adc a
    rst $38
    inc bc
    dec b
    ld [de], a
    rst $38
    dec b
    dec b
    nop
    nop
    ld bc, $0504
    ld [bc], a
    nop
    ld b, d
    nop
    nop
    ld [bc], a
    rlca
    rlca
    nop
    ld b, d
    nop
    nop
    rlca
    rlca
    nop
    ld [bc], a
    ld b, d
    nop
    nop
    add hl, bc
    ld [bc], a
    nop
    dec b
    ld b, d
    nop
    nop
    add hl, bc
    dec b
    ld [bc], a
    rlca
    ld b, d
    nop
    nop
    ld [bc], a
    nop
    rlca
    rlca
    ld b, d
    nop
    nop
    rlca
    nop
    add hl, bc
    ld [bc], a
    ld b, d
    nop
    nop
    nop
    ld [bc], a
    add hl, bc
    dec b
    ld b, d
    nop
    nop
    nop
    dec b
    rst $38
    dec b
    dec b
    nop
    nop
    ld bc, $0504
    ld [bc], a
    nop
    ld b, d
    nop
    nop
    ld [bc], a
    rlca
    rlca
    nop
    ld b, d
    nop
    nop
    rlca
    rlca
    nop
    ld [bc], a
    ld b, d
    nop
    nop
    add hl, bc
    ld [bc], a
    nop
    dec b
    ld b, d
    nop
    nop
    add hl, bc
    dec b
    ld [bc], a
    rlca
    ld b, d
    nop
    nop
    ld [bc], a
    nop
    rlca
    rlca
    ld b, d
    nop
    nop
    rlca
    nop
    add hl, bc
    ld [bc], a
    ld h, b
    nop
    nop
    nop
    ld [bc], a
    add hl, bc
    dec b
    ld b, d
    nop
    nop
    nop
    dec b
    rst $38
    dec b
    dec b
    nop
    nop
    ld bc, $0504
    ld [bc], a
    nop
    ld b, d
    nop
    nop
    ld [bc], a
    rlca
    rlca
    nop
    ld b, d
    nop
    nop
    rlca
    rlca
    nop
    ld [bc], a
    ld b, d
    nop
    nop
    add hl, bc
    ld [bc], a
    nop
    dec b
    ld b, d
    nop
    nop
    add hl, bc
    dec b
    ld [bc], a
    rlca
    ld b, d
    nop
    nop
    ld [bc], a
    nop
    rlca
    rlca
    ld b, d
    nop
    nop
    rlca
    nop
    add hl, bc
    ld [bc], a
    ld b, d
    nop
    nop
    nop
    ld [bc], a
    add hl, bc
    dec b
    ld h, b
    nop
    nop
    nop
    dec b
    rst $38
    dec b
    dec b
    nop
    nop
    ld bc, $0504
    ld [bc], a
    nop
    ld b, d
    nop
    nop
    ld [bc], a
    rlca
    rlca
    nop
    ld b, d
    nop
    nop
    rlca
    rlca
    nop
    ld [bc], a
    ld b, d
    nop
    nop
    add hl, bc
    ld [bc], a
    nop
    dec b
    ld h, b
    nop
    nop
    add hl, bc
    dec b
    ld [bc], a
    rlca
    ld b, d
    nop
    nop
    ld [bc], a
    nop
    rlca
    rlca
    ld b, d
    nop
    nop
    rlca
    nop
    add hl, bc
    ld [bc], a
    ld b, d
    nop
    nop
    nop
    ld [bc], a
    add hl, bc
    dec b
    ld b, d
    nop
    nop
    nop
    dec b
    rst $38
    dec b
    dec b
    nop
    nop
    ld bc, $0504
    ld [bc], a
    nop
    ld b, d
    nop
    nop
    ld [bc], a
    rlca
    rlca
    nop
    ld b, d
    nop
    nop
    rlca
    rlca
    nop
    ld [bc], a
    ld h, b
    nop
    nop
    add hl, bc
    ld [bc], a
    nop
    dec b
    ld b, d
    nop
    nop
    add hl, bc
    dec b
    ld [bc], a
    rlca
    ld b, d
    nop
    nop
    ld [bc], a
    nop
    rlca
    rlca
    ld b, d
    nop
    nop
    rlca
    nop
    add hl, bc
    ld [bc], a
    ld b, d
    nop
    nop
    nop
    ld [bc], a
    add hl, bc
    dec b
    ld b, d
    nop
    nop
    nop
    dec b
    rst $38
    nop
    ld [bc], a
    ld b, d
    nop
    nop
    add hl, bc
    ld [bc], a
    nop
    dec b
    ld b, d
    nop
    nop
    add hl, bc
    dec b
    add hl, bc
    ld [bc], a
    ld b, d
    nop
    nop
    nop
    ld [bc], a
    add hl, bc
    dec b
    ld b, d
    nop
    nop
    nop
    dec b
    rst $38
    db $dd
    ld [hl], h
    adc d
    reti


    db $10
    inc h
    db $eb
    ld [hl], h
    dec d
    ld [hl], l
    ld de, $0a24
    ld [hl], l
    ld d, $75
    add d
    rst $38
    rlca
    dec b
    ld bc, $ff82
    ld [$0105], sp
    ld d, b
    ld hl, $010a
    rst $38
    ld b, $27
    inc b
    ld [bc], a
    ld [bc], a
    nop
    rst $38
    inc b
    ld [bc], a
    ld [bc], a
    nop
    rst $38
    dec b
    ld [bc], a
    ld [bc], a
    rst $38
    add d
    rst $38
    rlca
    dec b
    ld bc, $ff82
    ld [$0105], sp
    rst $38
    rst $38
    ld [bc], a
    dec b
    nop
    nop
    ld bc, $0504
    rst $38
    jr nz, jr_00b_7595

    adc e
    reti


    add hl, de
    inc h
    ld l, $75
    ld e, b
    ld [hl], l
    ld a, [de]
    inc h
    ld d, a
    ld [hl], l
    ld e, c
    ld [hl], l
    ld h, b
    dec d
    nop
    rlca
    ld [bc], a
    ld d, b
    ld hl, $010a
    rst $38
    nop
    inc h
    dec b
    ld [bc], a
    ld bc, $e060
    dec b
    inc bc
    rst $38
    ld h, b
    pop hl
    dec b
    inc b
    rst $38
    ld h, b
    ld [c], a
    dec b
    inc b
    rst $38
    ld h, b
    db $e3
    dec b
    inc b
    rst $38
    nop
    rst $38
    ld b, $02
    ld bc, $ffff
    rst $38

jr_00b_7559:
    ld b, $01
    nop
    nop
    ld bc, $0504
    rst $38
    ld h, e
    ld [hl], l
    adc h
    reti


    ld a, [bc]
    inc h
    ld [hl], a
    ld [hl], l
    ret nz

    ld [hl], l
    dec bc
    inc h
    cp a
    ld [hl], l
    pop bc
    ld [hl], l
    ld a, [bc]
    inc h
    sbc e
    ld [hl], l
    ret nz

    ld [hl], l
    jr nz, jr_00b_7559

    inc b
    rlca
    rst $38
    ld b, b

jr_00b_757d:
    dec hl
    inc b
    ld b, $ff
    ld b, b
    dec hl
    dec b
    ld b, $ff
    ld b, b
    dec d
    inc b
    ld b, $ff
    ld b, b
    add hl, sp
    inc b
    nop
    rst $38
    ld d, b
    ld hl, $010a
    rst $38

jr_00b_7595:
    nop
    add hl, hl
    inc b
    dec b
    rst $38
    rst $38
    jr nz, jr_00b_757d

    inc b
    rlca
    rst $38
    ld b, b
    dec hl
    inc b
    ld b, $ff
    ld b, b
    dec hl
    dec b
    ld b, $ff
    jr nz, jr_00b_75c1

    inc bc
    inc b
    rst $38
    ld b, b
    add hl, sp
    inc b
    nop
    rst $38
    ld d, b
    ld hl, $010a
    rst $38
    nop
    add hl, hl
    inc b
    dec b
    rst $38
    rst $38
    rst $38
    rst $38

jr_00b_75c1:
    dec b
    dec b
    nop
    nop
    ld bc, $0504
    rst $38
    bit 6, l
    adc l
    reti


    ld bc, $d923
    ld [hl], l
    rst $28
    ld [hl], l
    ld [bc], a
    inc hl
    xor $75
    ldh a, [$75]
    ld d, b
    ld hl, $000a
    rst $38
    nop
    dec l
    inc b
    inc bc
    ld bc, $ff00
    inc b
    inc bc
    ld bc, $ff00
    dec b
    inc bc
    ld bc, $ffff
    rst $38
    ld [bc], a
    inc b
    nop
    nop
    ld bc, $0504
    rst $38
    ld a, [$8e75]
    reti


    inc e
    inc h
    ld c, $76
    add hl, sp
    db $76
    inc e
    inc h
    inc hl
    db $76
    ld a, [hl-]
    db $76
    dec e
    inc h
    jr c, jr_00b_7682

    dec sp
    db $76
    ld d, b
    ld hl, $000a
    rst $38
    nop
    ld l, $04
    inc bc
    ld bc, $ff00
    dec b
    inc bc
    ld bc, $ff00
    inc b
    inc bc
    ld bc, $50ff
    ld hl, $000a
    rst $38
    nop
    cpl
    inc b
    inc bc
    ld [bc], a
    nop
    rst $38
    dec b
    inc bc
    ld [bc], a
    nop
    rst $38
    inc b
    inc bc
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc b
    nop
    nop
    ld bc, $0504
    rst $38
    ld b, l
    db $76
    adc a
    reti


    dec c
    inc h
    ld d, e
    db $76
    ld l, c
    db $76
    ld c, $24
    ld l, b
    db $76
    ld l, d
    db $76
    ld d, b
    ld hl, $000a
    rst $38
    nop
    jr nc, jr_00b_765f

    ld bc, $0001
    rst $38

jr_00b_765f:
    inc b
    ld bc, $0001
    rst $38
    dec b
    ld bc, $ff01
    rst $38
    rst $38
    inc b
    ld bc, $0000
    ld bc, $0504
    rst $38
    ld [hl], h
    db $76
    sub b
    reti


    inc c
    dec h
    add d
    db $76
    sbc b
    db $76
    dec c
    dec h
    sub a
    db $76
    sbc c
    db $76

jr_00b_7682:
    ld d, b
    ld hl, $000a
    rst $38
    nop
    ld sp, $0204
    ld bc, $ff00
    inc b
    ld [bc], a
    ld bc, $ff00
    dec b
    ld [bc], a
    ld bc, $ffff
    rst $38
    ld [bc], a
    inc b
    nop
    nop
    ld bc, $0504
    rst $38
    and e
    db $76
    sub c
    reti


    dec bc
    inc hl
    or c
    db $76
    rst $00
    db $76
    inc c
    inc hl
    add $76
    ret z

    db $76
    ld d, b
    ld hl, $000a
    rst $38
    nop
    ld [hl-], a
    inc b
    ld bc, $0001
    rst $38
    inc b
    ld bc, $0001
    rst $38
    dec b
    ld bc, $ff01
    rst $38
    rst $38
    dec b
    inc bc
    nop
    nop
    ld bc, $0504
    rst $38
    jp nc, $9276

    reti


    ld c, $23
    ldh [rPCM12], a
    or $76
    rrca
    inc hl
    push af
    db $76
    rst $30
    db $76
    ld d, b
    ld hl, $000a
    rst $38
    nop
    inc sp
    inc b
    ld bc, $0001
    rst $38
    inc b
    ld bc, $0001
    rst $38
    dec b
    ld bc, $ff01
    rst $38
    rst $38
    inc b
    inc bc
    nop
    nop
    ld bc, $0504
    rst $38
    ld bc, $9377
    reti


    ld de, $0f23
    ld [hl], a
    dec h
    ld [hl], a
    ld [de], a
    inc hl
    inc h
    ld [hl], a
    ld h, $77
    ld d, b
    ld hl, $020a
    rst $38
    nop
    inc [hl]
    inc b
    ld [bc], a
    ld bc, $ff00
    inc b
    inc bc
    ld bc, $ff00
    dec b
    inc bc
    ld bc, $ffff
    rst $38
    inc b
    inc b
    nop
    nop
    ld bc, $0504
    rst $38
    jr nc, jr_00b_77a7

    sub h
    reti


    rrca
    dec h
    ld a, $77
    ld d, h
    ld [hl], a
    db $10
    dec h
    ld d, e
    ld [hl], a
    ld d, l
    ld [hl], a
    ld d, b
    ld hl, $000a
    rst $38
    nop
    dec [hl]
    inc b
    ld bc, $0001
    rst $38
    inc b
    ld bc, $0001
    rst $38
    dec b
    ld bc, $ff01
    rst $38
    rst $38
    inc bc
    inc bc
    nop
    nop
    ld bc, $0504
    rst $38
    ld l, l
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub l
    reti


    ld [de], a
    dec h
    add e
    ld [hl], a
    sbc a
    ld [hl], a
    inc de
    dec h
    sbc l
    ld [hl], a
    and b
    ld [hl], a
    sub [hl]
    reti


    inc d
    dec h
    sbc [hl]
    ld [hl], a
    xor b
    ld [hl], a
    ld d, b
    ld hl, $010a
    rst $38
    ld a, [bc]
    ld [hl], $04
    ld [bc], a
    ld bc, $ff00
    inc bc
    inc bc
    ld bc, $ff00
    inc b
    inc bc
    ld bc, $ff00
    dec b
    inc bc
    ld bc, $ffff
    rst $38
    rst $38
    inc b
    inc b
    nop
    nop
    ld bc, $0504

jr_00b_77a7:
    rst $38
    rst $38
    xor e
    ld [hl], a
    sub a
    reti


    inc b
    inc h
    cp c
    ld [hl], a
    call nc, $0577
    inc h
    db $d3
    ld [hl], a
    push de
    ld [hl], a
    sub b
    rst $38
    inc b
    inc b
    ld bc, $ff90
    dec b
    inc b
    ld bc, $3740
    inc b
    inc bc
    ld [bc], a
    ld b, b
    rst $38
    inc b
    inc bc
    ld [bc], a
    ld b, b
    rst $38
    dec b
    inc bc
    ld [bc], a
    rst $38
    rst $38
    rst $38
    inc bc
    dec b
    nop
    nop
    ld bc, $0504
    rst $38
    rst $18
    ld [hl], a
    sbc b
    reti


    ld bc, $e726
    ld [hl], a
    ld a, [c]
    ld [hl], a
    adc a
    rst $38
    inc b
    inc bc
    ld bc, $0600
    inc b
    ld [bc], a
    ld bc, $01ff
    ld b, $00
    add b
    nop
    nop
    nop
    rst $38
    db $fc
    ld [hl], a
    sbc b
    reti


    inc bc
    ld h, $04
    ld a, b
    rrca
    ld a, b
    add d
    rst $38
    inc b
    inc bc
    ld [bc], a
    nop
    ld de, $0204
    ld bc, $08ff
    ld [bc], a
    nop
    add b
    nop
    nop
    nop
    rst $38
    add hl, de

jr_00b_7818:
    ld a, b
    sbc b
    reti


    dec b
    ld h, $21

jr_00b_781e:
    ld a, b
    ld c, d
    ld a, b
    nop
    dec bc
    inc b

jr_00b_7824:
    inc bc
    rst $38

jr_00b_7826:
    nop
    ldh a, [$03]
    inc bc
    rst $38
    nop
    pop af
    dec b
    inc bc
    rst $38
    nop
    ld a, [c]
    ld b, $03
    rst $38
    jr nz, jr_00b_7818

    dec b
    dec b
    rst $38
    jr nz, jr_00b_781e

    inc bc
    dec b
    rst $38
    jr nz, jr_00b_7824

    ld b, $05
    rst $38
    jr nz, jr_00b_7826

    inc b
    dec b
    rst $38
    rst $38
    rst $38
    ld d, l
    ld a, b
    ld e, l
    ld a, b
    ld h, l
    ld a, b
    ld l, l
    ld a, b
    ld [hl], l
    ld a, b
    sbc b
    reti


    add hl, de
    inc hl
    ld a, l
    ld a, b
    ld a, [hl]
    ld a, b
    sbc b
    reti


    ld a, [de]
    inc hl
    ld a, l
    ld a, b
    sbc e
    ld a, b
    sbc b
    reti


    dec de
    inc hl
    ld a, l
    ld a, b
    cp b
    ld a, b
    sbc b
    reti


    inc e
    inc hl
    ld a, l
    ld a, b
    adc $78
    sbc b
    reti


    dec e
    inc hl
    ld a, l
    ld a, b
    ld sp, hl
    ld a, b
    rst $38
    nop
    inc bc
    ld h, d
    nop
    nop
    add hl, bc
    inc bc
    ld bc, $6100
    nop
    nop
    ld bc, $0807
    nop
    ld h, e
    nop
    nop
    ld [$0907], sp
    inc bc
    ld h, c
    nop
    nop
    nop
    inc bc
    rst $38
    ld bc, $5307
    nop
    nop
    ld bc, $0800
    rlca
    ld d, e
    nop
    nop
    ld [$0000], sp
    inc bc
    ld d, e
    nop
    nop
    add hl, bc
    inc bc
    ld bc, $6200
    nop
    nop
    ld bc, $ff07
    ld bc, $6107
    nop
    nop
    ld bc, $0800
    nop
    ld h, c
    nop
    nop
    ld [$0907], sp
    inc bc
    ld d, e
    nop
    nop
    nop
    inc bc
    rst $38
    ld [$6207], sp
    nop
    nop
    ld [$0900], sp
    dec b
    ld h, e
    nop
    nop
    nop
    dec b
    ld bc, $6300
    nop
    nop
    ld bc, $0407
    nop
    ld h, h
    nop
    nop
    inc b
    rlca
    nop
    dec b
    ld h, e
    nop
    nop
    add hl, bc
    dec b
    ld bc, $6307
    nop
    nop
    ld bc, $ff00
    inc b
    rlca
    ld h, e
    nop
    nop
    inc b
    nop
    inc b
    inc b
    nop
    add b
    nop
    nop
    nop
    rst $38
    jr nz, jr_00b_7983

    jr z, jr_00b_7985

    jr nc, jr_00b_7987

    rst $38
    rst $38
    jr c, jr_00b_798b

    ld b, b
    ld a, c
    ld c, b
    ld a, c
    rst $38
    rst $38
    ld d, b
    ld a, c
    ld e, b
    ld a, c
    ld h, b
    ld a, c
    rst $38
    rst $38
    sbc b
    reti


    ld bc, $4237
    ld c, e
    ld l, b
    ld a, c
    sbc b
    reti


    ld [bc], a
    scf
    ld b, d
    ld c, e
    ld l, c
    ld a, c
    sbc b
    reti


    inc bc
    scf
    ld b, d
    ld c, e
    ld l, d
    ld a, c
    sbc b
    reti


    inc b
    scf
    ld b, d
    ld c, e
    ld l, e
    ld a, c
    sbc b
    reti


    dec b
    scf
    ld b, d
    ld c, e
    ld l, h
    ld a, c
    sbc b
    reti


    ld b, $37
    ld b, d
    ld c, e
    ld l, l
    ld a, c
    sbc b
    reti


    rlca
    scf
    ld b, d
    ld c, e
    ld l, [hl]
    ld a, c
    sbc b
    reti


    ld [$4237], sp
    ld c, e
    ld l, a
    ld a, c
    sbc b
    reti


    add hl, bc
    scf
    ld b, d
    ld c, e
    ld [hl], b
    ld a, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0002], sp
    add b
    nop
    nop
    nop
    rst $38
    sub b
    ld a, c
    sbc b
    ld a, c
    and b
    ld a, c
    rst $38
    rst $38
    xor b
    ld a, c
    or b

jr_00b_7983:
    ld a, c
    cp b

jr_00b_7985:
    ld a, c
    rst $38

jr_00b_7987:
    rst $38
    ret nz

    ld a, c
    ret z

jr_00b_798b:
    ld a, c
    ret nc

    ld a, c
    rst $38
    rst $38
    sbc b
    reti


    dec bc
    scf
    ld b, d
    ld c, e
    ret c

    ld a, c
    sbc b
    reti


    inc c
    scf
    ld b, d
    ld c, e
    reti


    ld a, c
    sbc b
    reti


    dec c
    scf
    ld b, d
    ld c, e
    jp c, $9879

    reti


    ld c, $37
    ld b, d
    ld c, e
    db $db
    ld a, c
    sbc b
    reti


    rrca
    scf
    ld b, d
    ld c, e
    call c, $9879
    reti


    db $10
    scf
    ld b, d
    ld c, e
    db $dd
    ld a, c
    sbc b
    reti


    ld de, $4237
    ld c, e
    sbc $79
    sbc b
    reti


    ld [de], a
    scf
    ld b, d
    ld c, e
    and $79
    sbc b
    reti


    inc de
    scf
    ld b, d
    ld c, e
    rst $20
    ld a, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $06
    nop
    add b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    ld a, d
    ld [$107a], sp
    ld a, d
    rst $38
    rst $38
    jr jr_00b_7a6c

    jr nz, jr_00b_7a6e

    jr z, jr_00b_7a70

    rst $38
    rst $38
    jr nc, jr_00b_7a74

    jr c, jr_00b_7a76

    ld b, b
    ld a, d
    rst $38
    rst $38
    sbc b
    reti


    dec d
    scf
    ld b, d
    ld c, e
    ld c, b
    ld a, d
    sbc b
    reti


    ld d, $37
    ld b, d
    ld c, e
    ld c, c
    ld a, d
    sbc b
    reti


    rla
    scf
    ld b, d
    ld c, e
    ld c, d
    ld a, d
    sbc b
    reti


    jr jr_00b_7a53

    ld b, d
    ld c, e
    ld d, d
    ld a, d
    sbc b
    reti


    add hl, de
    scf
    ld b, d
    ld c, e
    ld d, e
    ld a, d
    sbc b
    reti


    ld a, [de]
    scf
    ld b, d
    ld c, e
    ld d, h
    ld a, d
    sbc b
    reti


    dec de
    scf
    ld b, d
    ld c, e
    ld d, l
    ld a, d
    sbc b
    reti


    inc e
    scf
    ld b, d
    ld c, e
    ld d, [hl]
    ld a, d
    sbc b
    reti


    dec e
    scf
    ld b, d
    ld c, e
    ld d, a
    ld a, d
    rst $38
    rst $38
    inc bc
    inc bc
    nop
    add b
    nop
    nop
    nop
    rst $38
    rst $38

jr_00b_7a53:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], b
    ld a, d
    ld a, b
    ld a, d
    add b
    ld a, d
    rst $38
    rst $38
    adc b
    ld a, d
    sub b
    ld a, d
    sbc b
    ld a, d
    rst $38
    rst $38
    and b
    ld a, d
    xor b
    ld a, d

jr_00b_7a6c:
    or b
    ld a, d

jr_00b_7a6e:
    rst $38
    rst $38

jr_00b_7a70:
    sbc b
    reti


    rra
    scf

jr_00b_7a74:
    ld b, d
    ld c, e

jr_00b_7a76:
    cp b
    ld a, d
    sbc b
    reti


    jr nz, jr_00b_7ab3

    ld b, d
    ld c, e
    cp c
    ld a, d
    sbc b
    reti


    ld hl, $4237
    ld c, e
    cp d
    ld a, d
    sbc b
    reti


    ld [hl+], a
    scf
    ld b, d
    ld c, e
    cp e
    ld a, d
    sbc b
    reti


    inc hl
    scf
    ld b, d
    ld c, e
    cp h
    ld a, d
    sbc b
    reti


    inc h
    scf
    ld b, d
    ld c, e
    cp l
    ld a, d
    sbc b
    reti


    dec h
    scf
    ld b, d
    ld c, e
    cp [hl]
    ld a, d
    sbc b
    reti


    ld h, $37
    ld b, d
    ld c, e
    add $7a
    sbc b
    reti


    daa

jr_00b_7ab3:
    scf
    ld b, d
    ld c, e
    rst $00
    ld a, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0006
    add b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh [$7a], a
    add sp, $7a
    ldh a, [$7a]
    rst $38
    rst $38
    ld hl, sp+$7a
    nop
    ld a, e
    ld [$ff7b], sp
    rst $38
    db $10
    ld a, e
    jr jr_00b_7b57

    jr nz, jr_00b_7b59

    rst $38
    rst $38
    sbc b
    reti


    add hl, hl
    scf
    ld b, d
    ld c, e
    jr z, jr_00b_7b63

    sbc b
    reti


    ld a, [hl+]
    scf
    ld b, d
    ld c, e
    add hl, hl
    ld a, e
    sbc b
    reti


    dec hl
    scf
    ld b, d
    ld c, e
    ld a, [hl+]
    ld a, e
    sbc b
    reti


    inc l
    scf
    ld b, d
    ld c, e
    dec hl
    ld a, e
    sbc b
    reti


    dec l
    scf
    ld b, d
    ld c, e
    inc l
    ld a, e
    sbc b
    reti


    ld l, $37
    ld b, d
    ld c, e
    dec l
    ld a, e
    sbc b
    reti


    cpl
    scf
    ld b, d
    ld c, e
    ld l, $7b
    sbc b
    reti


    jr nc, jr_00b_7b53

    ld b, d
    ld c, e
    cpl
    ld a, e
    sbc b
    reti


    ld sp, $4237
    ld c, e
    scf
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    ld b, $00
    add b
    nop
    nop
    nop
    rst $38
    rst $38
    ld d, b
    ld a, e
    ld e, b
    ld a, e
    ld h, b
    ld a, e
    rst $38
    rst $38
    ld l, b
    ld a, e
    ld [hl], b
    ld a, e
    ld a, b
    ld a, e
    rst $38
    rst $38
    add b
    ld a, e
    adc b
    ld a, e
    sub b
    ld a, e
    rst $38
    rst $38
    sbc b
    reti


    inc sp

jr_00b_7b53:
    scf
    ld b, d
    ld c, e
    sbc b

jr_00b_7b57:
    ld a, e
    sbc b

jr_00b_7b59:
    reti


    inc [hl]
    scf
    ld b, d
    ld c, e
    sbc c
    ld a, e
    sbc b
    reti


    dec [hl]

jr_00b_7b63:
    scf
    ld b, d
    ld c, e
    sbc d
    ld a, e
    sbc b
    reti


    ld [hl], $37
    ld b, d
    ld c, e
    sbc e
    ld a, e
    sbc b
    reti


    scf
    scf
    ld b, d
    ld c, e
    sbc h
    ld a, e
    sbc b
    reti


    jr c, jr_00b_7bb3

    ld b, d
    ld c, e
    sbc l
    ld a, e
    sbc b
    reti


    add hl, sp
    scf
    ld b, d
    ld c, e
    sbc [hl]
    ld a, e
    sbc b
    reti


    ld a, [hl-]
    scf
    ld b, d
    ld c, e
    sbc a
    ld a, e
    sbc b
    reti


    dec sp
    scf
    ld b, d
    ld c, e
    and b
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0006], sp
    add b
    nop
    nop
    nop
    rst $38
    xor d
    ld a, e
    sbc b
    reti


    rlca
    ld h, $b2
    ld a, e
    pop de
    ld a, e
    adc a

jr_00b_7bb3:
    rst $38
    ld bc, $0102
    adc a
    rst $38
    ld [$0202], sp
    adc a
    rst $38
    inc bc
    inc bc
    inc bc
    adc a
    rst $38
    ld b, $03
    inc b
    adc a
    rst $38
    ld [bc], a
    dec b
    dec b
    adc a
    rst $38
    rlca
    dec b
    ld b, $ff
    dec b
    ld b, $00
    add b
    nop
    nop
    nop
    rst $38
    db $db
    ld a, e
    sbc b
    reti


    add hl, bc
    ld h, $e3
    ld a, e
    ld [bc], a
    ld a, h
    adc a
    rst $38
    inc bc
    inc bc
    ld bc, $ff8f
    ld b, $03
    ld [bc], a
    adc a
    rst $38
    inc bc
    inc b
    inc bc
    adc a
    rst $38
    ld b, $04
    inc b
    adc a
    rst $38
    inc bc
    dec b
    dec b
    adc a
    rst $38
    ld b, $05
    ld b, $ff
    dec b
    ld [bc], a
    nop
    add b
    nop
    nop
    nop
    rst $38
    inc c
    ld a, h
    sbc b
    reti


    dec bc
    ld h, $14
    ld a, h
    dec a
    ld a, h
    adc a
    rst $38
    inc bc
    ld [bc], a
    ld bc, $ff8f
    inc b
    ld [bc], a
    ld [bc], a
    adc a
    rst $38
    dec b
    ld [bc], a
    inc bc
    adc a
    rst $38
    ld b, $02
    inc b
    adc a
    rst $38
    inc bc
    ld b, $05
    adc a
    rst $38
    inc b
    ld b, $06
    adc a
    rst $38
    dec b
    ld b, $07
    adc a
    rst $38
    ld b, $06
    ld [$03ff], sp
    inc b
    nop
    add b
    nop
    nop
    nop
    rst $38
    ld b, a
    ld a, h
    sbc c
    reti


    inc d
    inc hl
    ld h, a
    ld a, h
    rst $38
    rst $38
    dec d
    inc hl
    ld h, a
    ld a, h
    rst $38
    rst $38
    dec d
    inc hl
    sub b
    ld a, h
    rst $38
    rst $38
    dec d
    inc hl
    cp c
    ld a, h
    rst $38
    rst $38
    dec d
    inc hl
    ld h, a
    ld a, h
    rst $38
    rst $38
    db $10
    ldh a, [rDIV]
    add hl, bc
    rst $38
    db $10
    pop af
    inc b
    ld a, [bc]
    rst $38
    db $10
    di
    inc b
    dec bc
    rst $38
    db $10
    ld a, [c]
    inc b
    inc c
    rst $38
    db $10
    ldh [rTAC], a
    dec b
    rst $38
    db $10
    pop hl
    ld b, $05
    rst $38
    db $10
    ld [c], a
    ld b, $04
    rst $38
    db $10
    db $e3
    ld b, $06
    rst $38
    rst $38
    ld b, b
    ldh a, [rDIV]
    dec b
    rst $38
    ld [hl], b
    di
    inc bc
    inc b
    rst $38
    ld [hl], b
    pop af
    inc bc
    dec b
    rst $38
    ld [hl], b
    ld a, [c]
    inc bc
    ld b, $ff
    db $10
    pop hl
    ld b, $05
    rst $38
    db $10
    ld [c], a

jr_00b_7cab:
    ld b, $04
    rst $38
    db $10
    db $e3
    ld b, $06
    rst $38

jr_00b_7cb3:
    ld b, b
    ld d, d
    inc b

jr_00b_7cb6:
    dec b
    rst $38
    rst $38
    jr nc, jr_00b_7cab

    ld [bc], a

jr_00b_7cbc:
    dec b
    rst $38
    jr nc, jr_00b_7cb3

    inc bc
    inc b
    rst $38
    jr nc, jr_00b_7cb6

    inc bc
    dec b
    rst $38
    jr nc, jr_00b_7cbc

    inc bc
    ld b, $ff
    db $10
    pop hl
    ld b, $05
    rst $38
    db $10
    ld [c], a
    ld b, $04
    rst $38
    ld d, b
    add hl, sp
    ld a, [bc]
    ld bc, $10ff
    db $e3
    ld b, $06
    rst $38
    rst $38
    db $e4
    ld a, h
    sbc d
    reti


    rla
    inc hl
    cp $7c
    rst $38
    rst $38
    rla
    inc hl
    ld c, $7d
    rst $38
    rst $38
    rla
    inc hl
    add hl, de
    ld a, l
    rst $38
    rst $38
    rla
    inc hl
    ld b, d

jr_00b_7cfb:
    ld c, e
    rst $38
    rst $38
    db $10
    ldh [rTAC], a
    dec b
    rst $38
    ld b, b
    ld d, a
    inc b
    nop
    rst $38
    ld b, b
    ld d, d
    inc b
    dec b
    rst $38
    rst $38
    ld [hl], b
    ld [$0400], sp
    rst $38
    ld b, b
    ld d, l
    dec b
    inc b
    rst $38
    rst $38
    jr nz, jr_00b_7cfb

    dec b
    dec b
    rst $38
    ld d, b
    ld hl, $0509
    rst $38
    rst $38
    ldh [$1f], a
    ld [hl], b
    adc a
    jr @-$17

    add e
    ld a, h
    rlca
    ld hl, sp-$3f
    ld a, $81
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add c
    rst $38
    add c
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    inc b
    inc b
    ld a, [bc]
    ld c, $35
    dec sp
    jp z, Jump_000_33f7

    rst $08
    add c
    rst $38
    ld h, a
    rst $38
    sbc h
    ld a, a
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
    ret nz

    rst $38
    add c

jr_00b_7d73:
    rst $38
    add c
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    ld bc, $8201
    add e
    ld c, l
    adc $b2
    db $fd
    call z, Call_00b_62f3
    rst $38
    sbc l
    rst $38
    ld [hl], d
    db $fd
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

jr_00b_7da1:
    ld a, $07
    ld hl, sp+$0e
    pop af
    rlca
    ld hl, sp-$7f
    ld a, [hl]
    jr c, jr_00b_7d73

    ld [hl], b
    adc a
    inc e
    db $e3
    add c
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add c
    rst $38
    ld b, b
    ld b, b
    and b
    ldh [rHDMA3], a
    or e
    xor h
    ld a, a
    inc sp
    db $fc
    jr @+$01

    db $76
    rst $38
    ret


    rst $30
    jr nc, jr_00b_7da1

    ld [hl], b
    adc a
    ld d, d
    xor l
    ld b, a
    cp b
    rlca

jr_00b_7dd9:
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
    ld hl, sp+$03
    rst $38
    add c
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add c
    rst $38
    add c
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    jr nz, jr_00b_7dd9

    ld b, b
    adc a
    ld b, b
    sbc [hl]
    ld b, b
    adc b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

jr_00b_7e28:
    sub a
    rla

jr_00b_7e2a:
    sub a
    rla
    cp [hl]
    ld a, $b8
    jr c, jr_00b_7e35

jr_00b_7e31:
    inc bc
    ld b, $01
    dec b

jr_00b_7e35:
    ld [$4449], sp
    jp hl


    add sp, -$17
    add sp, $7d
    ld a, h
    dec e
    inc e
    inc b
    ei
    ld c, $f5
    rrca
    or $0f
    rst $30
    rrca
    rst $30
    ccf
    rst $08
    ld a, l
    xor l
    ld a, b
    xor b
    jr nz, jr_00b_7e31

    ld [hl], b
    xor a
    ldh a, [$6f]
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
    jr nz, jr_00b_7e28

    jr nz, jr_00b_7e2a

    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$0e], a
    dec c

Call_00b_7e72:
    ld b, $05
    ld b, $05
    inc b
    inc bc
    inc b
    inc bc
    ld [$0807], sp
    rlca
    ld [$0007], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    jr nz, @-$2f

    ld b, b
    adc a
    ld b, b
    sbc [hl]
    ld b, b
    adc b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

jr_00b_7ea8:
    sub a
    rla

jr_00b_7eaa:
    sub a
    rla
    cp [hl]
    ld a, $b8
    jr c, jr_00b_7eb5

jr_00b_7eb1:
    inc bc
    ld b, $01
    dec b

jr_00b_7eb5:
    ld [$4449], sp
    jp hl


    add sp, -$17
    add sp, $7d
    ld a, h
    dec e
    inc e
    inc b
    ei
    ld c, $f5
    rrca
    or $0f
    rst $30
    rrca
    rst $30
    ccf
    rst $08
    ld a, l
    xor l
    ld a, b
    xor b
    jr nz, jr_00b_7eb1

    ld [hl], b
    xor a
    ldh a, [$6f]
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
    jr nz, jr_00b_7ea8

    jr nz, jr_00b_7eaa

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
    ld [$1007], sp
    db $10
    jr z, @+$3a

    call nc, Call_000_2bec
    rst $18
    call z, Call_000_263f
    rst $38
    reti


    rst $38
    daa
    rst $18
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
    call c, Call_00b_6a23
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
    ld [$04f7], sp
    inc b
    ld a, [bc]
    ld c, $35
    dec sp
    jp z, Jump_000_33f7

    rst $08
    add c
    rst $38
    ld h, a
    rst $38
    sbc h
    ld a, a
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
    ld bc, $8201
    add e
    ld c, l
    adc $b2
    db $fd
    call z, Call_00b_62f3
    rst $38
    sbc l
    rst $38
    ld [hl], d
    db $fd
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
    call c, Call_00b_6a23
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
    ld b, b
    ld b, b
    and b
    ldh [rHDMA3], a
    or e
    xor h
    ld a, a
    inc sp
    db $fc
    jr @+$01

    db $76
    rst $38
    ret


    rst $30
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
