; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $027", ROMX[$4000], BANK[$27]

    daa
    sbc a
    ld b, b
    ld d, a
    ld b, c
    scf
    ld b, d
    ld a, [hl-]
    ld b, e
    ei
    ld b, e
    rlca
    ld b, l
    xor $45
    call c, $9546
    ld b, a
    ld h, a
    ld c, b
    ld h, c
    ld c, c
    call $a049
    ld c, d
    add h
    ld c, e
    ld b, d
    ld c, h
    reti


    ld c, h
    xor l
    ld c, l
    adc [hl]
    ld c, [hl]
    add a
    ld c, a
    push de
    ld c, a
    add b
    ld d, b
    ld e, c
    ld d, c
    ld b, d
    ld d, d
    dec hl
    ld d, e
    cp a
    ld d, e
    daa
    ld d, h
    db $eb
    ld d, h
    or h
    ld d, l
    add e
    ld d, [hl]
    ld d, h
    ld d, a
    inc h
    ld e, b
    cp l
    ld e, b
    sub c
    ld e, c
    ld h, h
    ld e, d
    ld b, a
    ld e, e
    rst $30
    ld e, e
    ret


    ld e, h
    ld a, $5d
    add hl, bc
    ld e, [hl]
    rst $28
    ld e, [hl]
    ret nc

    ld e, a
    cp d
    ld h, b
    cp c
    ld h, c
    dec [hl]
    ld h, d
    inc hl
    ld h, e
    nop
    ld h, h
    ldh a, [$64]
    db $d3
    ld h, l
    call $ac66
    ld h, a
    ld [$7e67], a
    ld l, b
    ld c, d
    ld l, c
    bit 5, c
    add c
    ld l, d
    add hl, hl
    ld l, e
    ld a, [hl]
    ld l, e
    ld c, [hl]
    ld l, h
    call c, $a66c
    ld l, l
    adc b
    ld l, [hl]
    pop af
    ld l, [hl]
    ld d, d
    ld l, a
    ld hl, sp+$6f
    jp nz, $9370

    ld [hl], c
    ld hl, $ad72
    ld [hl], d
    rst $38
    ld [hl], d
    cp [hl]
    ld [hl], e
    and d
    ld [hl], h
    ld d, l
    ld [hl], l
    jr z, @+$78

    sub $76
    ld b, d
    ld [hl], a
    db $ec
    ld [hl], a
    or [hl]
    ld a, b
    sub h
    ld a, c
    ld b, d
    ld a, d
    nop
    ld [bc], a
    nop
    jr z, @+$2b

    nop
    nop
    nop
    inc l
    dec l
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    inc h
    dec h
    nop
    nop
    ld [bc], a
    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_027_40bb

jr_027_40bb:
    ld l, $2f
    ld [hl], $37
    ld [hl], $37
    ld h, $27
    nop
    jr nz, jr_027_40c8

    nop
    inc d

jr_027_40c8:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    nop
    ld [$0600], sp
    rlca
    nop
    ld b, d
    nop
    inc h
    dec h
    nop
    inc d
    ld [$2f2e], sp
    jr jr_027_40fb

    jr jr_027_40fd

    ld a, [de]
    dec de
    nop
    jr z, jr_027_40e9

jr_027_40e9:
    ld d, $17
    nop
    ld h, d
    nop
    ld h, $27
    nop
    inc d
    ld [$4600], sp
    ld [bc], a
    nop
    add d
    ld [$0706], sp

jr_027_40fb:
    nop
    inc d

jr_027_40fd:
    ld [$6600], sp
    ld [bc], a
    nop
    and d
    ld [$1716], sp
    nop
    inc d
    ld [$0800], sp
    nop
    jr nc, @+$33

    nop
    db $c4, $06, $00
    ld [$0000], sp
    inc d
    ld [$2800], sp
    nop
    ld [hl-], a
    inc sp
    nop
    db $e4
    ld b, $00
    jr z, jr_027_4122

jr_027_4122:
    nop
    inc d
    ld [$c400], sp
    ld [$c400], sp
    inc b
    nop
    inc d
    ld [$e400], sp
    ld [$e400], sp
    inc b
    nop
    inc d
    ld [$0302], sp
    nop
    ld b, b
    ld e, $00
    inc d
    ld [$1312], sp
    nop
    ld h, b
    ld e, $00
    inc d
    ld [$0000], sp
    ld [bc], a
    nop
    add b
    ld a, [de]
    nop
    inc d
    ld c, $00
    and b
    ld a, [de]
    nop
    ld [hl], h
    rra
    add hl, sp
    nop
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_4194

    jr nc, jr_027_4196

    inc h
    dec h
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_4173

jr_027_4173:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_027_4180

    inc c
    inc d

jr_027_4180:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    ld b, $07
    inc c
    ld b, d
    nop
    inc h
    dec h

jr_027_4194:
    inc c
    inc d

jr_027_4196:
    ld [$2f2e], sp
    jr @+$1b

    jr jr_027_41b6

    ld a, [de]
    dec de
    ld [hl], $37
    ld [hl], $37
    ld d, $17
    inc c
    ld h, d
    nop
    ld h, $27
    inc c
    inc d
    ld [$460c], sp
    ld [bc], a
    inc c
    add d
    ld [$0706], sp
    inc c

jr_027_41b6:
    inc d
    ld [$660c], sp
    ld [bc], a
    inc c
    and d
    ld [$1716], sp
    inc c
    inc d
    ld [$3534], sp
    inc c
    ld [$3800], sp
    add hl, sp
    inc c
    add $02
    jr nc, @+$33

    inc c
    ld c, b
    nop
    inc c
    inc d
    ld [$3736], sp
    inc c
    jr z, jr_027_41da

jr_027_41da:
    ld a, [hl-]
    dec sp
    inc c
    and $02
    ld [hl-], a
    inc sp
    inc c
    ld l, b
    nop
    inc c
    inc d
    ld [$cc0c], sp
    nop
    inc c
    call nz, $0c08
    ld [$0c00], sp
    inc d
    ld [$ec0c], sp
    nop
    inc c
    db $e4
    ld [$280c], sp
    nop
    inc c
    inc d
    ld [$0504], sp
    inc c
    ret nz

    nop
    inc c
    ld b, $18
    nop
    ld bc, $140c
    ld [$1514], sp
    inc c
    ldh [rP1], a
    inc c
    ld h, $18
    db $10
    ld de, $340c
    ld a, [bc]
    inc c
    add d
    inc c
    inc c
    ld d, d
    inc c
    inc c
    and d
    inc c
    inc c
    ld [hl], d
    ld a, [bc]
    jr z, jr_027_4250

    ld [bc], a
    inc bc
    inc c
    jp nz, Jump_000_0c1a

    ld [de], a
    inc c
    ld [de], a
    inc de
    inc c
    ld [c], a
    ld a, [de]
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, jr_027_4265

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_4274

    jr nc, jr_027_4276

    inc h
    dec h
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl

jr_027_4250:
    inc c
    jr nz, jr_027_4253

jr_027_4253:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_027_4260

    inc c
    inc d

jr_027_4260:
    ld [$020c], sp
    ld [bc], a
    ld a, [bc]

jr_027_4265:
    dec bc
    inc c
    ld [$0600], sp
    rlca
    ld [$0809], sp
    add hl, bc
    inc h
    dec h
    inc c
    inc d
    inc c

jr_027_4274:
    ld l, $2f

jr_027_4276:
    ld a, [de]
    dec de
    inc c
    jr z, jr_027_427b

jr_027_427b:
    ld d, $17
    jr jr_027_4298

    jr @+$1b

    ld h, $27
    inc c
    inc d
    ld [$500c], sp
    nop
    inc l
    dec l
    jr c, jr_027_42c6

    inc c
    add [hl]
    nop
    inc [hl]
    dec [hl]
    inc c
    adc h
    nop
    ld b, $07
    inc c

jr_027_4298:
    inc d
    ld [$700c], sp
    nop
    ld l, $2f
    ld a, [hl-]
    dec sp
    inc c
    and [hl]
    nop
    ld [hl], $37
    inc c
    xor h
    nop
    ld d, $17
    inc c
    inc d
    ld [$4a0c], sp
    nop
    ld c, $0f
    jr nc, @+$33

    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    dec b
    inc [hl]
    dec [hl]
    jr nc, jr_027_42f2

    inc c
    inc d
    ld [$6a0c], sp

jr_027_42c6:
    nop
    ld e, $1f
    ld [hl-], a
    inc sp
    db $10
    ld de, $1312
    ld [de], a
    inc de
    inc d
    dec d
    ld [hl], $37
    ld [hl-], a
    inc sp
    inc c
    or h
    ld a, [bc]
    jr nc, jr_027_430d

    jr nz, @+$23

    inc c
    ld a, [bc]
    inc b
    inc c
    ld b, $02
    inc c
    call nc, $320a
    inc sp
    ld [hl+], a
    inc hl
    inc c
    ld a, [hl+]
    inc b
    inc c
    ld h, $02
    inc c

jr_027_42f2:
    inc d
    ld [$0504], sp
    jr nc, jr_027_4329

    jr c, jr_027_4333

    inc c
    ld a, [bc]
    ld b, $0c
    jp z, Jump_000_0c00

    inc d
    ld [$1514], sp
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    inc c
    ld a, [hl+]
    ld b, $0c

jr_027_430d:
    ld [$0c00], a
    inc d
    ld [$840c], sp
    inc b
    inc c
    inc c
    inc b
    inc c
    db $10
    inc c
    inc c
    and h
    inc b
    inc c
    inc l
    inc b
    inc c
    jr nc, @+$10

    inc c
    jp z, $0200

    inc bc

jr_027_4329:
    inc c
    adc d
    ld d, $0c
    ld [de], a
    inc c
    inc c
    ld [$1200], a

jr_027_4333:
    inc de
    inc c
    xor d
    ld d, $0c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, jr_027_4368

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, @+$33

    jr nc, jr_027_4379

    inc h
    dec h
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_4356

jr_027_4356:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_027_4363

    inc c
    inc d

jr_027_4363:
    ld [$000c], sp
    rrca
    dec l

jr_027_4368:
    ld [$0c09], sp
    inc c
    nop
    inc c
    ld b, $06
    inc l
    dec l
    ld [$0c09], sp
    inc d
    ld [$1918], sp

jr_027_4379:
    inc c
    inc l
    nop
    inc c
    ld h, $06
    ld l, $2f
    jr @+$1b

    inc c
    inc d
    ld [$3130], sp
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    ld [$0c00], sp
    jp nz, Jump_000_0c04

    inc d
    ld [$3332], sp
    ld d, $17
    jr jr_027_43b6

    ld a, [de]
    dec de
    inc c
    jr z, jr_027_43a2

jr_027_43a2:
    inc c
    ld [c], a
    inc b
    inc c
    or h
    ld a, [bc]
    inc c
    nop
    ld e, $0c
    call nc, Call_000_0c0a
    jr nz, jr_027_43cf

    inc c
    inc d
    ld [$0302], sp

jr_027_43b6:
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    nop
    inc d
    nop
    ld bc, $400c
    db $10
    inc c
    inc d
    ld [$1312], sp
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    jr nz, jr_027_43e2

    db $10

jr_027_43cf:
    ld de, $600c
    db $10
    inc c
    inc [hl]
    inc c
    inc c
    ld b, $02
    inc c
    ld [$0c06], sp
    inc d
    inc c
    inc c
    ld h, $02

jr_027_43e2:
    inc c
    jr z, jr_027_43eb

    inc c
    inc [hl]
    ld c, $0c
    ld b, b
    db $10

jr_027_43eb:
    inc c
    ld b, b
    db $10
    inc c
    ld c, $0f
    dec b
    inc c
    ld h, b
    db $10
    inc c
    ld h, b
    db $10
    inc c
    ld l, $0e
    nop
    ld [bc], a
    jr c, jr_027_4427

    add hl, hl
    jr c, jr_027_4402

jr_027_4402:
    nop
    inc l
    dec l
    jr nc, @+$33

    jr nc, @+$33

    inc h
    dec h
    jr c, jr_027_440d

jr_027_440d:
    ld [bc], a
    rst $38
    jr c, @+$16

    rlca
    ld a, [hl+]
    dec hl

jr_027_4414:
    jr c, jr_027_4436

    nop
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    jr c, @+$22

    ld [bc], a
    jr c, @+$16

    ld [$2d2c], sp

jr_027_4427:
    ld [$0809], sp
    add hl, bc
    ld c, $0f
    jr c, jr_027_4437

    nop
    ld b, $07
    jr c, jr_027_4476

    nop
    inc h

jr_027_4436:
    dec h

jr_027_4437:
    jr c, @+$16

    ld [$2f2e], sp
    jr jr_027_4457

    jr @+$1b

jr_027_4440:
    ld e, $1f
    jr c, jr_027_446c

    nop

jr_027_4445:
    ld d, $17
    jr c, jr_027_44ab

    nop
    ld h, $27

jr_027_444c:
    jr c, @+$16

    ld [$0b0a], sp
    jr c, jr_027_445b

    nop
    ld c, $0f
    inc [hl]

jr_027_4457:
    dec [hl]
    jr c, jr_027_43e2

    ld [bc], a

jr_027_445b:
    jr c, @+$4c

    nop
    jr c, @+$16

    ld [$1b1a], sp
    jr c, jr_027_448d

    nop
    ld e, $1f
    ld [hl], $37

jr_027_446a:
    jr c, jr_027_4414

jr_027_446c:
    ld [bc], a
    jr c, jr_027_44d9

    nop
    jr c, @+$16

    ld [$0838], sp
    nop

jr_027_4476:
    jr c, jr_027_4482

jr_027_4478:
    nop
    ld [bc], a
    inc bc
    jr c, jr_027_4445

    nop
    inc b
    dec b
    jr c, @+$0a

jr_027_4482:
    nop
    jr c, @+$16

    ld [$2838], sp
    nop
    jr c, @+$2c

    nop
    ld [de], a

jr_027_448d:
    inc de

jr_027_448e:
    jr c, jr_027_4478

    nop
    inc d
    dec d
    jr c, jr_027_44bd

    nop
    jr c, jr_027_444c

    ld c, $0e
    rrca
    jr c, jr_027_44df

    nop
    jr c, jr_027_44e4

    inc b
    jr c, @-$2a

    ld c, $1e
    rra
    jr c, jr_027_450a

    nop
    jr c, jr_027_450f

jr_027_44ab:
    inc b
    jr c, @+$16

    ld [$0504], sp
    jr c, @-$76

    nop
    jr nz, jr_027_44d7

    jr c, jr_027_4440

jr_027_44b8:
    ld [bc], a
    jr nz, jr_027_44dc

jr_027_44bb:
    jr nc, jr_027_44ee

jr_027_44bd:
    nop
    ld bc, $1438
    ld [$1514], sp
    jr c, @-$56

    nop
    ld [hl+], a
    inc hl
    jr c, @-$56

    ld [bc], a
    ld [hl+], a
    inc hl
    ld [hl-], a
    inc sp
    db $10
    ld de, $3438
    ld a, [bc]
    jr nc, jr_027_4508

jr_027_44d7:
    jr c, @-$76

jr_027_44d9:
    ld [bc], a
    inc c
    dec c

jr_027_44dc:
    jr c, jr_027_446a

    ld [bc], a

jr_027_44df:
    jr c, jr_027_4533

    inc c
    ld [hl-], a

jr_027_44e3:
    inc sp

jr_027_44e4:
    jr c, jr_027_448e

jr_027_44e6:
    ld [bc], a
    inc e
    dec e
    jr c, @-$52

    ld [bc], a
    jr c, jr_027_4560

jr_027_44ee:
    ld a, [bc]
    jr z, jr_027_451a

    jr c, jr_027_44bb

    ld [bc], a
    ld [bc], a
    inc bc
    jr c, jr_027_44b8

    inc d
    jr c, jr_027_450d

    inc c
    jr c, jr_027_44e6

    ld [bc], a
    ld [de], a
    inc de
    jr c, jr_027_44e3

    inc d
    jr c, jr_027_4538

    ld a, [bc]
    nop

jr_027_4508:
    ld [bc], a
    inc c

jr_027_450a:
    jr z, @+$2b

    inc c

jr_027_450d:
    nop
    nop

jr_027_450f:
    inc l
    dec l
    jr nc, jr_027_4544

    jr nc, @+$33

    inc h
    dec h
    inc c
    nop
    ld [bc], a

jr_027_451a:
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_4523

jr_027_4523:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_027_4530

    inc c
    inc d

jr_027_4530:
    ld [$2d2c], sp

jr_027_4533:
    ld [$0809], sp
    add hl, bc
    ld a, [bc]

jr_027_4538:
    dec bc
    inc c
    ld [$0600], sp
    rlca
    inc c
    ld b, d
    nop
    inc h
    dec h
    inc c

jr_027_4544:
    inc d
    ld [$2f2e], sp
    jr @+$1b

    jr jr_027_4565

    ld a, [de]
    dec de
    inc c
    jr z, jr_027_4551

jr_027_4551:
    ld d, $17
    inc c
    ld h, d
    nop
    ld h, $27
    inc c
    inc d
    ld [$0b0a], sp
    inc [hl]
    dec [hl]
    inc c

jr_027_4560:
    add d
    ld a, [bc]
    ld b, $07
    inc c

jr_027_4565:
    inc d
    ld [$1b1a], sp
    ld [hl], $37
    inc c
    and d
    ld a, [bc]
    ld d, $17
    inc c
    inc d
    ld [$3130], sp
    inc [hl]
    dec [hl]
    jr c, jr_027_45b2

    inc c
    call nz, Call_000_3406
    dec [hl]
    jr nc, jr_027_45b1

    inc c
    inc d
    ld [$3332], sp
    ld [hl], $37
    ld a, [hl-]
    dec sp
    inc c
    db $e4
    ld b, $36
    scf
    ld [hl-], a
    inc sp
    inc c
    or h
    ld c, $00
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    adc $0f
    dec b
    db $10
    ld de, $1312
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    xor $0e
    inc b
    dec b
    inc c
    jp nz, Jump_000_0c00

    ld c, h

jr_027_45b1:
    ld [bc], a

jr_027_45b2:
    ld a, [bc]
    dec bc
    inc c
    adc $00
    nop
    ld bc, $140c
    ld [$1514], sp
    inc c
    ld [c], a
    nop
    inc c
    ld l, h
    ld [bc], a
    ld a, [de]
    dec de
    inc c
    xor $00
    db $10
    ld de, $340c
    ld a, [bc]
    inc c
    add d
    inc c
    inc c
    ld d, d
    inc c
    inc c
    and d
    inc c
    inc c
    ld [hl], d
    ld a, [bc]
    jr z, jr_027_4605

    inc c
    ld [$0c10], sp
    jp nz, Jump_000_0c18

    ld [de], a
    inc c
    inc c
    jr z, jr_027_45f8

    inc c
    ld [c], a
    jr jr_027_45f8

    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l

jr_027_45f8:
    jr nc, jr_027_462b

    jr nc, @+$33

    inc h
    dec h
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca

jr_027_4605:
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_460a

jr_027_460a:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_027_4617

    inc c
    inc d

jr_027_4617:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [$0600], sp
    rlca
    inc c
    ld b, d
    nop
    inc h
    dec h
    inc c

jr_027_462b:
    inc d
    ld [$2f2e], sp
    jr @+$1b

    jr jr_027_464c

    ld a, [de]
    dec de
    inc c
    jr z, jr_027_4638

jr_027_4638:
    ld d, $17
    inc c
    ld h, d
    nop
    ld h, $27
    inc c
    inc [hl]
    ld a, [bc]
    inc [hl]
    dec [hl]
    inc c
    ld [$0c00], sp
    add h
    ld b, $06
    rlca

jr_027_464c:
    inc c
    ld d, h
    ld a, [bc]
    ld [hl], $37
    inc c
    jr z, jr_027_4654

jr_027_4654:
    inc c
    and h
    ld b, $16
    rla
    inc c
    ld [hl], h
    inc c
    inc c
    jp nz, Jump_000_0c00

    add h
    ld [$940c], sp
    inc c
    inc c
    ld [c], a
    nop
    inc c
    and h
    ld [$340c], sp
    ld a, [bc]
    jr c, @+$3b

    jr c, jr_027_46ab

    inc c
    jp nz, Jump_000_0c06

    jp nz, Jump_000_0c00

    ld d, h
    ld a, [bc]
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    inc c
    ld [c], a
    ld b, $0c
    ld [c], a
    nop
    inc c
    inc [hl]
    ld a, [bc]
    jr nc, jr_027_46bb

    inc c
    ld [bc], a
    db $10
    inc c
    inc b
    inc d
    inc [hl]
    dec [hl]
    nop
    ld bc, $540c
    ld a, [bc]
    ld [hl-], a
    inc sp
    inc c
    ld [hl+], a
    db $10
    inc c
    inc h
    inc d
    ld [hl], $37
    db $10
    ld de, $340c
    inc e
    inc c
    ld [$0c00], sp
    ld b, h

jr_027_46ab:
    ld d, $0c
    ld d, d
    inc c
    inc c
    and h
    ld [bc], a
    inc c
    ld h, h
    ld d, $0c
    ld [hl], d
    ld a, [bc]
    jr z, jr_027_46e3

    ld [bc], a

jr_027_46bb:
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    ld [$0000], sp
    ld bc, $c20c
    db $10
    inc c
    ld [de], a
    inc c
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    jr z, jr_027_46d4

jr_027_46d4:
    db $10
    ld de, $e20c
    db $10
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc b
    jr z, @+$2b

    inc b
    nop

jr_027_46e3:
    nop
    inc l
    dec l
    jr nc, jr_027_4719

    jr nc, jr_027_471b

    inc h
    dec h
    inc b
    nop
    ld [bc], a
    rst $38
    inc b
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc b
    jr nz, jr_027_46f8

jr_027_46f8:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc b
    jr nz, jr_027_4705

    inc b
    inc d

jr_027_4705:
    ld [$0004], sp
    ld [$0706], sp
    ld [$0809], sp
    add hl, bc
    inc h
    dec h
    inc b
    inc d
    rrca
    dec b
    ld d, $17
    jr jr_027_4732

jr_027_4719:
    jr jr_027_4734

jr_027_471b:
    ld h, $27
    inc b
    inc [hl]
    rrca
    ld bc, $3938
    inc [hl]
    dec [hl]
    inc b
    adc d
    ld [bc], a
    ld b, $07
    inc b
    inc d
    rrca
    ld bc, $3b3a
    ld [hl], $37

jr_027_4732:
    inc b
    xor d

jr_027_4734:
    ld [bc], a
    ld d, $17
    inc b
    ld [hl], h
    rrca
    inc bc
    jr c, jr_027_4776

    jr nc, jr_027_4770

    inc b
    adc d
    ld [bc], a
    inc b
    sub h
    rrca
    inc bc
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    inc b
    xor d
    ld [bc], a
    inc b
    inc [hl]
    rrca
    inc bc
    inc b
    ret z

    ld b, $04
    inc d
    rrca
    inc bc
    inc b
    add sp, $06
    inc b
    db $f4
    rrca
    rlca
    inc b
    ret z

    nop
    nop
    ld bc, $1404
    rra
    rlca
    inc b
    add sp, $00
    db $10
    ld de, $3404
    rrca

jr_027_4770:
    dec b
    inc b
    ld [$0412], sp
    ld d, d

jr_027_4776:
    rrca
    rlca
    inc b
    jr z, jr_027_478d

    inc b
    ld [hl], d
    rrca
    inc bc
    inc b
    ld [$0000], sp
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    ld [de], a
    rrca
    rlca
    db $10

jr_027_478d:
    ld de, $1312
    ld [de], a
    inc de
    inc b
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_47d2

    jr nc, jr_027_47d4

    inc h
    dec h
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_47b1

jr_027_47b1:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_027_47be

    inc c
    inc d

jr_027_47be:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [$050f], sp
    ld l, $2f
    jr jr_027_47e8

    jr jr_027_47ea

    ld a, [de]

jr_027_47d2:
    dec de
    inc c

jr_027_47d4:
    jr z, jr_027_47e5

    rlca
    inc [hl]
    dec [hl]
    inc c
    add d
    ld [bc], a
    inc c
    ld a, [bc]
    ld [bc], a
    inc c
    ld b, b
    nop
    inc c
    ld d, h
    ld a, [bc]

jr_027_47e5:
    ld [hl], $37
    inc c

jr_027_47e8:
    and d
    ld [bc], a

jr_027_47ea:
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    ld h, b
    nop
    inc c
    ld [hl], h
    inc c
    nop
    ld bc, $0302
    inc c
    add $00
    inc c
    ld b, b
    nop
    inc c
    ld b, [hl]
    nop
    inc c
    sub h
    inc c
    db $10
    ld de, $1312
    inc c
    and $00
    inc c
    ld h, b
    nop
    inc c
    ld h, [hl]
    nop
    inc c
    ld [hl], h
    inc c
    ld b, $07
    inc c
    ld b, d
    nop
    inc c
    ld b, h
    inc b
    inc c
    jp nc, Jump_000_160e

    rla
    inc c
    ld h, d
    nop
    inc c
    ld h, h
    inc b
    inc c
    ld a, [c]
    inc c
    jr c, jr_027_4864

    inc c
    ld b, d
    ld [de], a
    inc c
    ld c, $12
    inc c
    call nz, Call_000_0c00
    ld d, h
    ld a, [bc]
    ld a, [hl-]
    dec sp
    inc c
    ld h, d
    ld [de], a
    inc c
    ld l, $12
    inc c
    db $e4
    nop
    inc c
    inc d
    ld [$2928], sp
    inc c
    add $00
    inc b
    dec b
    inc c
    ld b, d
    db $10
    inc c
    call nz, Call_000_0c00
    db $10
    ld c, $0c
    and $00
    inc d
    dec d
    inc c
    ld h, d
    db $10
    inc c
    db $e4
    nop
    inc c
    jr nc, jr_027_486f

    inc c

jr_027_4864:
    nop
    rrca
    dec l
    nop
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    nop

jr_027_486f:
    inc l
    dec l
    jr nc, jr_027_48a4

    jr nc, @+$33

    inc h
    dec h
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_4883

jr_027_4883:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_027_4890

    inc c
    inc d

jr_027_4890:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [$0600], sp
    rlca
    inc c
    ld b, d
    nop
    inc h
    dec h
    inc c

jr_027_48a4:
    inc d
    ld [$2f2e], sp
    jr jr_027_48c3

    jr jr_027_48c5

    ld a, [de]
    dec de
    inc c
    jr z, jr_027_48b1

jr_027_48b1:
    ld d, $17
    inc c
    ld h, d
    nop
    ld h, $27
    inc c
    inc [hl]
    ld a, [bc]
    inc c
    ld [$3800], sp
    add hl, sp
    inc c
    add [hl]
    nop

jr_027_48c3:
    inc [hl]
    dec [hl]

jr_027_48c5:
    inc [hl]
    dec [hl]
    inc c
    ld c, d
    nop
    inc c
    ld d, h
    ld a, [bc]
    inc c
    jr z, jr_027_48d0

jr_027_48d0:
    ld a, [hl-]
    dec sp
    inc c
    and [hl]
    nop
    ld [hl], $37
    ld [hl], $37
    inc c
    ld l, d
    nop
    inc c
    ld [hl], h
    inc c
    nop
    ld bc, $0302
    inc c
    add $02
    inc b
    dec b
    inc c
    adc [hl]
    nop
    inc c
    sub h
    inc c
    db $10
    ld de, $1312
    inc c
    and $02
    inc d
    dec d
    inc c
    xor [hl]
    nop
    inc c
    ld [hl], h
    inc c
    ld b, $07
    inc c
    inc c
    inc b
    inc l
    dec l
    inc c
    ret nc

    rrca
    ld bc, $1716
    inc c
    inc l
    inc b
    ld l, $2f
    inc c
    ldh a, [rIF]
    ld bc, $3130
    ld c, $0f
    inc c
    ld b, d
    nop
    inc c
    ld b, h
    nop
    inc [hl]
    dec [hl]
    nop
    ld bc, $940c
    ld c, $1e
    rra
    inc c
    ld h, d
    nop
    inc c
    ld h, h
    nop
    ld [hl], $37
    db $10
    ld de, $340c
    rra
    ld bc, $8c0c
    ld [bc], a
    inc c
    ld [$0c02], sp
    ld d, h
    rra
    ld bc, $ac0c
    ld [bc], a
    inc c
    jr z, jr_027_4946

    inc c
    inc d

jr_027_4946:
    ld [$2928], sp
    inc c
    add $00
    inc c
    ld b, $02
    inc c
    call nz, Call_000_0c02
    ld [de], a
    inc c
    inc c
    and $00
    inc c
    ld h, $02
    inc c
    db $e4
    ld [bc], a
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc b
    jr z, jr_027_498f

    inc b
    nop
    nop
    inc l
    dec l
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    inc h
    dec h
    inc b
    nop
    ld [bc], a
    rst $38
    inc b
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc b
    jr nz, jr_027_497d

jr_027_497d:
    ld l, $2f
    ld [hl], $37
    ld [hl], $37
    ld h, $27
    inc b
    jr nz, jr_027_498a

    inc b
    inc d

jr_027_498a:
    ld [$0004], sp
    rrca
    add hl, sp

jr_027_498f:
    ld b, $07
    ld [$0409], sp
    adc [hl]
    nop
    inc b
    inc d
    rrca
    dec b
    ld d, $17
    jr jr_027_49b7

    inc b
    xor [hl]
    nop
    inc b
    inc [hl]
    rrca
    dec b
    inc b
    ret z

    inc b
    inc b
    inc d
    rrca
    dec b
    inc b
    add sp, $04
    inc b
    or h
    rrca
    ld b, l
    nop
    ld bc, $0302

jr_027_49b7:
    inc b
    ld c, [hl]
    db $10
    inc b
    inc d
    rrca
    dec b
    db $10
    ld de, $1312
    inc b
    ld l, [hl]
    db $10
    inc b
    inc [hl]
    rrca
    ld b, l
    inc b
    adc h
    rra
    ld hl, $0200
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_4a0a

    jr nc, @+$33

    inc h
    dec h
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_49e9

jr_027_49e9:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_027_49f6

    inc c
    inc d

jr_027_49f6:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [$0600], sp
    rlca
    inc c
    ld b, d
    nop
    inc h
    dec h
    inc c

jr_027_4a0a:
    inc d
    ld [$2f2e], sp
    jr @+$1b

    jr jr_027_4a2b

    ld a, [de]
    dec de
    inc c
    jr z, jr_027_4a17

jr_027_4a17:
    ld d, $17
    inc c
    ld h, d
    nop
    ld h, $27
    inc c
    inc [hl]
    ld a, [bc]
    jr c, jr_027_4a5c

    inc c
    ld [$0c00], sp
    add h
    ld b, $06
    rlca

jr_027_4a2b:
    inc c
    ld d, h
    ld a, [bc]
    ld a, [hl-]
    dec sp
    inc c
    jr z, jr_027_4a33

jr_027_4a33:
    inc c
    and h
    ld b, $16
    rla
    inc c
    ld [hl], h
    inc c
    inc c
    add d
    inc c
    inc c
    sub h
    inc c
    inc c
    and d
    inc c
    inc c
    inc [hl]
    ld a, [bc]
    jr nc, @+$33

    jr c, jr_027_4a84

    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    adc $0f
    ld bc, $3332
    ld a, [hl-]
    dec sp
    db $10

jr_027_4a5c:
    ld de, $1312
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    xor $0f
    dec b
    inc c
    ld c, h
    ld [bc], a
    inc c
    ld b, [hl]
    ld [bc], a
    nop
    ld bc, $140c
    ld e, $0c
    ld l, h
    ld [bc], a
    inc c
    ld h, [hl]
    ld [bc], a
    db $10
    ld de, $f40c
    ld c, $0c
    jp nz, $0c08

    ld d, d
    inc c
    inc c

jr_027_4a84:
    ld [hl+], a
    db $10
    inc c
    ld [c], a
    ld [$720c], sp
    ld a, [bc]
    jr z, jr_027_4ab7

    inc c
    ld [$0c16], sp
    ld b, $12
    inc c
    ld [de], a
    inc c
    inc c
    jr z, jr_027_4ab0

    inc c
    ld h, $12
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    inc h
    dec h

jr_027_4ab0:
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca

jr_027_4ab7:
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_4abc

jr_027_4abc:
    ld l, $2f
    ld [hl], $37
    ld [hl], $37
    ld h, $27
    inc c
    jr nz, jr_027_4ac9

    inc c
    inc d

jr_027_4ac9:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    jr nc, @+$33

    inc [hl]
    dec [hl]
    ld b, $07
    inc c
    ld b, d
    nop
    inc h
    dec h
    inc c
    inc d
    ld [$2f2e], sp
    jr jr_027_4afd

    jr jr_027_4aff

    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld d, $17
    inc c
    ld h, d
    nop
    ld h, $27
    inc c
    inc d
    ld [$0b0a], sp
    inc [hl]
    dec [hl]
    jr nc, jr_027_4b2d

    inc c

jr_027_4afd:
    add h
    nop

jr_027_4aff:
    inc c
    ld [$0c00], sp
    ld [$0c02], sp
    inc d
    ld [$1b1a], sp
    ld [hl], $37
    ld [hl-], a
    inc sp
    inc c
    and h
    nop
    inc c
    jr z, jr_027_4b14

jr_027_4b14:
    inc c
    jr z, jr_027_4b19

    inc c
    inc d

jr_027_4b19:
    ld [$080c], sp
    nop
    inc c
    add h
    ld [bc], a
    inc c
    add [hl]
    inc b
    inc c
    ld d, d
    ld a, [bc]
    inc c
    jr z, jr_027_4b29

jr_027_4b29:
    inc c
    and h
    ld [bc], a
    inc c

jr_027_4b2d:
    and [hl]
    inc b
    inc c
    or d
    ld c, $0c
    jp nz, Jump_000_0c0a

    jp nc, Jump_000_0c0e

    ld [c], a
    ld a, [bc]
    inc c
    ld [hl], d
    ld a, [bc]
    inc b
    dec b
    inc c
    nop
    ld a, [de]
    inc c
    sub b
    inc c
    inc d
    dec d
    inc c
    jr nz, jr_027_4b65

    inc c
    or b
    inc c
    inc l
    dec l
    inc c
    add [hl]
    inc b
    inc c
    jp z, Jump_000_030f

    ld l, $2f
    inc c
    and [hl]
    inc b
    inc c
    ld [$030f], a
    jr z, jr_027_4b8b

    ld [bc], a
    inc bc
    ld [bc], a

jr_027_4b65:
    inc bc
    inc c
    ld b, b
    db $10
    jr nc, jr_027_4b9c

    nop
    ld bc, $c20c
    db $10
    inc c
    ld [de], a
    inc c
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc c
    ld h, b
    db $10
    ld [hl-], a
    inc sp
    db $10
    ld de, $e20c
    db $10
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    nop
    jr z, @+$2b

    nop
    nop

jr_027_4b8b:
    nop
    inc l
    dec l
    jr nc, @+$33

    jr nc, @+$33

    inc h
    dec h
    nop
    nop
    ld [bc], a
    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]

jr_027_4b9c:
    dec hl
    nop
    jr nz, jr_027_4ba0

jr_027_4ba0:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_027_4bad

    nop
    inc d

jr_027_4bad:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    jr nc, jr_027_4be9

    jr c, jr_027_4bf3

    nop
    inc c
    rrca
    ld bc, $2f2e
    jr jr_027_4bdb

    jr jr_027_4bdd

    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    nop
    inc l
    rrca
    ld bc, $0b0a
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    nop
    ld c, b
    nop
    nop
    ld c, d
    rrca
    inc bc

jr_027_4bdb:
    ld a, [de]
    dec de

jr_027_4bdd:
    ld [hl], $37
    ld [hl], $37
    nop
    ld l, b
    nop
    nop
    ld l, d
    rrca
    inc bc
    nop

jr_027_4be9:
    add d
    ld b, $00
    ld c, d
    rrca
    inc bc
    nop
    and d
    ld b, $00

jr_027_4bf3:
    ld l, d
    rrca
    inc bc
    nop
    ld [$0000], sp
    ld c, b
    nop
    nop
    ld c, b
    rrca
    dec b
    nop
    jr z, jr_027_4c03

jr_027_4c03:
    nop
    ld l, b
    nop
    nop
    ld l, b
    rrca
    dec b
    inc b
    dec b
    nop
    ld [bc], a
    ld [de], a
    nop
    adc b
    rrca
    dec b
    inc d
    dec d
    nop
    ld [hl+], a
    ld [de], a
    nop
    xor b
    rrca
    dec b
    nop
    ld b, $02
    nop
    add [hl]
    rrca
    rlca
    nop
    ld h, $02
    nop
    and [hl]
    rrca
    rlca
    jr z, jr_027_4c55

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    nop
    ld b, b
    ld [de], a
    nop
    inc c
    rrca
    inc bc
    ld [de], a
    inc de
    ld [de], a
    inc de
    nop
    ld h, b
    ld [de], a
    nop
    inc l
    rrca
    ld bc, $0200
    nop
    jr z, jr_027_4c70

    nop
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_4c7f

    jr nc, jr_027_4c81

    inc h
    dec h
    nop
    nop
    ld [bc], a

jr_027_4c55:
    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_027_4c5e

jr_027_4c5e:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_027_4c6b

    nop
    inc d

jr_027_4c6b:
    ld [$0000], sp
    rrca
    dec l

jr_027_4c70:
    ld [$0009], sp
    add b
    nop
    ld a, [bc]
    dec bc
    nop
    ld [$050f], sp
    jr jr_027_4c96

    nop
    and b

jr_027_4c7f:
    nop
    ld a, [de]

jr_027_4c81:
    dec de
    nop
    jr z, jr_027_4c94

    dec b
    nop
    ld [$0000], sp
    ret nz

    inc b
    nop
    inc c
    rrca
    ld bc, $2800
    nop
    nop

jr_027_4c94:
    ldh [rDIV], a

jr_027_4c96:
    nop
    inc l
    rrca
    ld bc, $3534
    nop
    nop
    ld [de], a
    nop
    ld [$050f], sp
    ld [hl], $37
    nop
    jr nz, jr_027_4cba

    nop
    jr z, jr_027_4cba

    dec b
    ld [bc], a
    inc bc
    nop
    ld b, b
    db $10
    inc b
    dec b
    jr c, jr_027_4cee

    jr c, jr_027_4cf0

    nop
    inc c
    rrca

jr_027_4cba:
    ld bc, $1312
    nop
    ld h, b
    db $10
    inc d
    dec d
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    nop
    inc l
    rrca
    add hl, bc
    nop
    ld c, b
    rra
    dec b
    nop
    jr nz, jr_027_4cd5

    nop
    ld l, b
    rra
    dec c

jr_027_4cd5:
    nop
    ld [$250f], sp
    nop
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_4d16

    jr nc, @+$33

    inc h
    dec h
    inc c
    nop
    ld [bc], a
    rst $38
    inc c

jr_027_4cee:
    inc d
    rlca

jr_027_4cf0:
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_4cf5

jr_027_4cf5:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_027_4d02

    inc c
    inc d

jr_027_4d02:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [$0600], sp
    rlca
    inc c
    ld b, d
    nop
    inc h
    dec h
    inc c

jr_027_4d16:
    inc d
    ld [$2f2e], sp
    jr jr_027_4d35

    jr jr_027_4d37

    ld a, [de]
    dec de
    inc c
    jr z, jr_027_4d23

jr_027_4d23:
    ld d, $17
    inc c
    ld h, d
    nop
    ld h, $27
    inc c
    inc d
    ld [$0b0a], sp
    inc [hl]
    dec [hl]
    inc c
    add d
    ld a, [bc]
    inc c

jr_027_4d35:
    ld d, d
    ld a, [bc]

jr_027_4d37:
    ld a, [de]
    dec de
    ld [hl], $37
    inc c
    and d
    ld a, [bc]
    inc c
    ld [hl], d
    ld a, [bc]
    jr nc, jr_027_4d74

    inc c
    add d
    rrca
    dec bc
    ld [hl-], a
    inc sp
    inc c
    and d
    rrca
    dec c
    inc c
    ld [$0000], sp
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    ld [$0c02], sp
    call nc, Call_000_0c0a
    jr z, jr_027_4d61

jr_027_4d61:
    db $10
    ld de, $1312
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    jr z, jr_027_4d6e

    inc c
    inc d

jr_027_4d6e:
    ld [$0c0c], sp
    ld [de], a
    inc c
    ld c, h

jr_027_4d74:
    ld [bc], a
    inc c
    ld b, [hl]
    ld [bc], a
    inc c
    ld d, d
    ld a, [bc]
    inc c
    inc l
    ld [de], a
    inc c
    ld l, h
    ld [bc], a
    inc c
    ld h, [hl]
    ld [bc], a
    inc c
    ld [hl], d
    ld a, [bc]
    inc c
    ld b, $02
    inc c
    add d
    jr @+$0e

    ld d, d
    inc c
    inc c
    jr nz, jr_027_4da5

    inc c
    and d
    ld d, $0c
    ld [hl], d
    ld a, [bc]
    jr z, jr_027_4dc4

    inc c
    ld [$0c16], sp
    ld b, $12
    inc c
    ld [de], a
    inc c
    inc c

jr_027_4da5:
    jr z, jr_027_4dbd

    inc c
    ld h, $12
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_4dea

    jr nc, @+$33

    inc h
    dec h

jr_027_4dbd:
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca

jr_027_4dc4:
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_4dc9

jr_027_4dc9:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_027_4dd6

    inc c
    inc d

jr_027_4dd6:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [$0600], sp
    rlca
    inc c
    ld b, d
    nop
    inc h
    dec h
    inc c

jr_027_4dea:
    inc d
    ld [$2f2e], sp
    jr jr_027_4e09

    jr @+$1b

    ld a, [de]
    dec de
    inc c
    jr z, jr_027_4df7

jr_027_4df7:
    ld d, $17
    inc c
    ld h, d
    nop
    ld h, $27
    inc c
    inc d
    ld [$0b0a], sp
    inc [hl]
    dec [hl]
    inc c
    add d
    nop
    inc c

jr_027_4e09:
    ld [$3800], sp
    add hl, sp
    inc c
    adc h
    nop
    inc c
    ld d, d
    ld a, [bc]
    ld a, [de]
    dec de
    ld [hl], $37
    inc c
    and d
    nop
    inc c
    jr z, jr_027_4e1d

jr_027_4e1d:
    ld a, [hl-]
    dec sp
    inc c
    xor h
    nop
    inc c
    ld [hl], d
    ld a, [bc]
    inc c
    ld [$0000], sp
    ld bc, $0302
    inc c
    add $00
    inc b
    dec b
    inc c
    adc [hl]
    ld c, $0c
    jr z, jr_027_4e37

jr_027_4e37:
    db $10
    ld de, $1312
    inc c
    and $00
    inc d
    dec d
    inc c
    xor [hl]
    rrca
    inc bc
    inc c
    inc c
    inc b
    inc c
    ld b, $04
    inc c
    call nc, $0c0c
    inc l
    inc b
    inc c
    ld h, $04
    inc c
    inc d
    ld [$c60c], sp
    nop
    inc c
    inc b
    nop
    inc c
    ld b, d
    ld b, $0c
    ld d, d
    ld a, [bc]
    inc c
    and $00
    inc c
    inc h
    nop
    inc c
    ld h, d
    ld b, $0c
    ld [hl], d
    ld a, [bc]
    inc c
    nop
    ld [$880c], sp
    ld [de], a
    inc c
    ld d, d
    ld a, [bc]
    inc c
    jr nz, jr_027_4e82

    inc c
    xor b
    ld [de], a
    inc c
    ld [hl], d
    rra
    rlca
    inc c

jr_027_4e82:
    call nz, Call_000_0c02
    ld [de], a
    rrca
    rlca
    inc c
    db $e4
    ld [bc], a
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, jr_027_4ebc

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_4ecb

    jr nc, jr_027_4ecd

    inc h
    dec h
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_4eaa

jr_027_4eaa:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_027_4eb7

    inc c
    inc d

jr_027_4eb7:
    ld [$020c], sp
    ld [bc], a
    ld a, [bc]

jr_027_4ebc:
    dec bc
    inc c
    ld [$0600], sp
    rlca
    ld [$0809], sp
    add hl, bc
    inc h
    dec h
    inc c
    inc d
    inc c

jr_027_4ecb:
    ld l, $2f

jr_027_4ecd:
    ld a, [de]
    dec de
    inc c
    jr z, jr_027_4ed2

jr_027_4ed2:
    ld d, $17
    jr @+$1b

    jr jr_027_4ef1

    ld h, $27
    inc c
    inc d
    ld [$4e0c], sp
    nop
    ld c, $0f
    inc c
    ld [$0c00], sp
    add [hl]
    inc b
    inc c
    ld d, d
    ld a, [bc]
    inc c
    ld l, [hl]
    nop
    ld e, $1f
    inc c

jr_027_4ef1:
    jr z, jr_027_4ef3

jr_027_4ef3:
    inc c
    and [hl]
    inc b
    inc c
    ld [hl], d
    ld a, [bc]
    jr nc, @+$33

    jr c, @+$3b

    inc c
    add h
    ld [bc], a
    inc [hl]
    dec [hl]
    inc c
    jp z, Jump_000_0c02

    ld d, d
    ld a, [bc]
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    inc c
    and h
    ld [bc], a
    ld [hl], $37
    inc c
    ld [$0c02], a
    or d
    ld c, $24
    dec h
    ld [bc], a
    inc bc
    inc c
    ld b, $12
    inc b
    dec b
    inc c
    ld [bc], a
    db $10
    inc c
    call nc, Call_000_260c
    daa
    ld [de], a
    inc de
    inc c
    ld h, $12
    inc d
    dec d
    inc c
    ld [hl+], a
    db $10
    inc c
    inc d
    ld [$0504], sp
    inc c
    ld c, d
    inc b
    inc c
    ld c, [hl]
    nop
    ld a, [bc]
    dec bc
    inc c
    db $10
    inc e
    inc d
    dec d
    inc c
    ld l, d
    inc b
    inc c
    ld l, [hl]
    nop
    ld a, [de]
    dec de
    inc c
    jr nc, jr_027_4f6b

    inc c
    ld b, $00
    jr c, jr_027_4f8d

    inc c
    add [hl]
    inc b
    jr c, jr_027_4f92

    inc c
    ret nc

    inc c
    inc c
    ld h, $00
    ld a, [hl-]
    dec sp
    inc c
    and [hl]
    inc b
    ld a, [hl-]
    dec sp
    inc c
    ldh a, [$0c]
    jr z, jr_027_4f94

jr_027_4f6b:
    inc c
    ld a, [bc]
    ld [de], a
    inc c
    ld [$0000], sp
    ld bc, $060c
    db $10
    inc c
    ld [de], a
    inc c
    inc c
    ld a, [hl+]
    ld [de], a
    inc c
    jr z, jr_027_4f7f

jr_027_4f7f:
    db $10
    ld de, $260c
    db $10
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    nop
    jr z, jr_027_4fb5

    nop

jr_027_4f8d:
    nop
    ld c, $ff
    nop
    inc d

jr_027_4f92:
    rlca
    ld a, [hl+]

jr_027_4f94:
    dec hl
    nop
    jr nz, jr_027_4fa6

    nop
    inc d
    ld [$0000], sp
    rrca
    dec l
    ld [$0009], sp
    add b
    ld c, $00
    inc d

jr_027_4fa6:
    ld [$1918], sp
    nop
    and b
    ld c, $00
    inc d
    ld [$3130], sp
    nop
    ret nz

    ld c, $00

jr_027_4fb5:
    inc d
    ld [$3332], sp
    nop
    ldh [$0e], a
    nop
    or h
    rrca
    add hl, sp
    ld [bc], a
    inc bc
    nop
    ld b, b
    ld e, $00
    inc d
    ld [$1312], sp
    nop
    ld h, b
    ld e, $00
    inc [hl]
    rrca
    add hl, sp
    nop
    add b
    rra
    dec l
    nop
    ld [bc], a
    inc c
    jr z, jr_027_5003

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_4ff4

    inc c
    inc d
    ld [$2d2c], sp
    ld [$0c09], sp
    ld b, d
    ld a, [bc]
    inc h
    dec h
    inc c
    inc d

jr_027_4ff4:
    ld [$2f2e], sp
    jr jr_027_5012

    inc c
    ld h, d
    ld a, [bc]
    ld h, $27
    inc c
    inc d
    ld [$0b0a], sp

jr_027_5003:
    jr nc, jr_027_5036

    inc c
    add d
    ld a, [bc]
    ld b, $07
    inc c
    inc d
    ld [$1b1a], sp
    ld [hl-], a
    inc sp
    inc c

jr_027_5012:
    and d
    ld a, [bc]
    ld d, $17
    inc c
    inc d
    ld [$820c], sp
    nop
    jr c, jr_027_5057

    inc c
    call nz, Call_000_0c06
    add d
    nop
    inc c
    inc d
    ld [$a20c], sp
    nop
    ld a, [hl-]
    dec sp
    inc c
    db $e4
    ld b, $0c
    and d
    nop
    inc c
    or h
    ld c, $0c

jr_027_5036:
    jp nz, Jump_000_0c02

    ld [bc], a
    ld [de], a
    inc c
    jp nc, $010f

    inc c
    ld [c], a
    ld [bc], a
    inc c
    ld [hl+], a
    ld [de], a
    inc c
    ld a, [c]
    ld a, [bc]
    inc b
    dec b
    inc c
    ld a, [bc]
    ld d, $0c
    inc b
    ld [de], a
    nop
    ld bc, $140c
    ld [$1514], sp

jr_027_5057:
    inc c
    ld a, [hl+]
    ld d, $0c
    inc h
    ld [de], a
    db $10
    ld de, $340c
    ld a, [bc]
    inc c
    ld b, d
    inc e
    inc c
    ld d, d
    inc c
    inc c
    ld h, d
    inc e
    inc c
    ld [hl], d
    ld a, [bc]
    jr z, jr_027_5099

    ld [bc], a
    inc bc
    inc c
    jp nz, Jump_000_0c1a

    ld [de], a
    inc c
    ld [de], a
    inc de
    inc c
    ld [c], a
    ld a, [de]
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, jr_027_50ae

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_509f

    inc c
    inc d
    ld [$2d2c], sp
    ld [$0c09], sp

jr_027_5099:
    ld b, d
    ld [bc], a
    ld c, $0f
    inc c
    ld b, d

jr_027_509f:
    ld [bc], a
    inc h
    dec h
    inc c
    inc d
    ld [$2f2e], sp
    jr jr_027_50c2

    inc c
    ld h, d
    ld [bc], a
    ld e, $1f

jr_027_50ae:
    inc c
    ld h, d
    ld [bc], a
    ld h, $27
    inc c
    inc d
    ld [$0b0a], sp
    jr c, jr_027_50f3

    inc c
    add d
    ld [bc], a
    ld c, $0f
    inc c
    add d
    ld [bc], a

jr_027_50c2:
    ld b, $07
    inc c
    inc d
    ld [$1b1a], sp
    ld a, [hl-]
    dec sp
    inc c
    and d
    ld [bc], a
    ld e, $1f
    inc c
    and d
    ld [bc], a
    ld d, $17
    inc c
    inc d
    ld [$3130], sp
    inc c
    ret nz

    nop
    inc c
    add [hl]
    ld b, $0c
    ret nz

    nop
    inc c
    inc d
    ld [$3332], sp
    inc c
    ldh [rP1], a
    inc c
    and [hl]
    ld b, $0c
    ldh [rP1], a
    inc c
    or h

jr_027_50f3:
    ld c, $0c
    ret nz

    nop
    inc c
    adc d
    nop
    inc c
    ret nz

    ld [bc], a
    inc c
    call nc, Call_000_0c0e
    ldh [rP1], a
    inc c
    xor d
    nop
    inc c
    ldh [rSC], a
    inc c
    inc d
    ld [$0302], sp
    inc b
    dec b
    inc c
    adc $02
    jr nz, jr_027_5136

    inc c
    ret nz

    ld [bc], a
    nop
    ld bc, $140c
    ld [$1312], sp
    inc d
    dec d
    inc c
    xor $02
    ld [hl+], a
    inc hl
    inc c
    ldh [rSC], a
    db $10
    ld de, $140c
    ld [$2928], sp
    inc l
    dec l
    inc [hl]
    dec [hl]
    inc c
    add h

jr_027_5136:
    jr jr_027_5144

    ld d, d
    ld a, [bc]
    ld a, [hl+]
    dec hl
    ld l, $2f
    ld [hl], $37
    inc c
    and h
    jr jr_027_5150

jr_027_5144:
    ld [hl], d
    ld a, [bc]
    inc c
    nop
    nop
    ld [bc], a
    inc bc
    inc c
    call nz, Call_000_0c18
    ld [de], a

jr_027_5150:
    ld c, $12
    inc de
    inc c
    db $e4
    jr jr_027_5163

    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    nop
    jr z, jr_027_5187

    nop
    nop
    ld c, $ff
    nop

jr_027_5163:
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_027_5178

    nop
    inc d
    ld [$0000], sp
    ld b, $2c
    dec l
    ld [$0009], sp
    ld c, h
    nop
    inc h

jr_027_5178:
    dec h
    nop
    inc d
    rrca
    inc bc
    ld l, $2f
    jr @+$1b

    nop
    ld l, h
    nop
    ld h, $27
    nop

jr_027_5187:
    inc d
    ld [$4c00], sp
    inc b
    nop
    ld c, b
    nop
    jr nc, jr_027_51c2

    nop
    adc h
    nop
    ld b, $07
    nop
    inc d
    ld [$6c00], sp
    inc b
    nop
    ld l, b
    nop
    ld [hl-], a
    inc sp
    nop
    xor h
    nop
    ld d, $17
    nop
    inc d
    ld [$3130], sp
    jr c, jr_027_51e6

    jr c, jr_027_51e8

    nop
    add [hl]
    ld [bc], a
    jr c, @+$3b

    inc c
    dec c
    nop
    adc h
    nop
    nop
    inc d
    ld [$3332], sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp

jr_027_51c2:
    nop
    and [hl]
    ld [bc], a
    ld a, [hl-]
    dec sp
    inc e
    dec e
    nop
    xor h
    nop
    nop
    or h
    ld a, [bc]
    nop
    ret nz

    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    jr c, jr_027_5213

    ld c, $0f
    inc [hl]
    dec [hl]
    nop
    db $d2, $0c, $00

    ldh [rP1], a
    ld d, $17

jr_027_51e6:
    jr jr_027_5201

jr_027_51e8:
    ld a, [de]
    dec de
    ld a, [hl-]
    dec sp
    ld e, $1f
    ld [hl], $37
    nop
    ld a, [c]
    ld a, [bc]
    inc b
    dec b
    nop
    adc h
    ld [bc], a
    nop
    adc h
    ld [bc], a
    inc h
    dec h
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc

jr_027_5201:
    nop
    inc d
    ld [$1514], sp
    nop
    xor h
    ld [bc], a
    nop
    xor h
    ld [bc], a
    ld h, $27
    ld [de], a
    inc de
    ld [de], a
    inc de
    nop

jr_027_5213:
    inc d
    ld [$2d2c], sp
    inc [hl]
    dec [hl]
    nop
    db $10
    stop
    ret nz

    ld b, $00
    ld [de], a
    ld a, [bc]
    ld l, $2f
    ld [hl], $37
    nop
    jr nc, @+$12

    nop
    ldh [rTMA], a
    nop
    ld [hl-], a
    inc c
    nop
    ld d, b
    stop
    db $c2, $14, $00

    ld c, $0f
    ld bc, $7000
    stop
    ld [c], a
    inc d
    nop
    ld l, $0e
    nop
    ld [bc], a
    ld b, $28
    add hl, hl
    ld b, $00
    ld c, $ff
    ld b, $14
    rlca
    ld a, [hl+]
    dec hl
    ld b, $20
    ld c, $06
    inc d
    ld [$2d2c], sp
    ld [$0609], sp
    ld b, d
    ld b, $24
    dec h
    ld b, $10
    inc c
    ld l, $2f
    jr jr_027_527f

    ld b, $62
    ld b, $26
    daa
    ld b, $30
    inc c
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    ld b, $82
    nop
    jr nc, jr_027_52a8

    jr nc, @+$33

    jr c, jr_027_52b4

    ld c, $0f
    ld b, $42

jr_027_527f:
    nop
    ld b, $14
    ld [$1b1a], sp
    ld [hl], $37
    ld b, $a2
    nop
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    ld e, $1f
    ld b, $62
    nop
    ld b, $14
    ld [$8806], sp
    nop
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $8c
    nop
    ld b, $88

jr_027_52a8:
    nop
    ld b, $14
    ld [$a806], sp
    nop
    db $10
    ld de, $1312
    ld [de], a

jr_027_52b4:
    inc de
    inc d
    dec d
    ld b, $ac
    nop
    ld b, $a8
    nop
    ld b, $b4
    inc c
    ld b, $8e
    ld [bc], a
    ld b, $80
    nop
    ld b, $ce
    rrca
    inc bc
    ld b, $ae
    ld [bc], a
    ld b, $a0
    nop
    ld b, $ee
    ld c, $06
    add $00
    inc l
    dec l
    ld b, $88
    nop
    ld b, $88
    nop
    jr nz, @+$23

    inc [hl]
    dec [hl]
    nop
    ld bc, $1406
    ld [$e606], sp
    nop
    ld l, $2f
    ld b, $a8
    nop
    ld b, $a8
    nop
    ld [hl+], a
    inc hl
    ld [hl], $37
    db $10
    ld de, $1406
    ld [$0006], sp
    nop
    ld b, $44
    ld d, $38
    add hl, sp
    inc [hl]
    dec [hl]
    inc h
    dec h
    ld b, $14
    inc c
    ld b, $64
    ld d, $3a
    dec sp
    ld [hl], $37
    ld h, $27
    ld b, $74
    inc e
    jr z, jr_027_5341

    ld b, $c6
    nop
    ld b, $c6
    inc d
    ld b, $12
    rrca
    ld bc, $e606
    nop
    ld b, $e6
    inc d
    ld b, $32
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, jr_027_5359

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_534a

    inc c
    inc d
    ld [$000c], sp

jr_027_5341:
    rrca
    dec l
    ld [$0c09], sp
    add b
    ld c, $0c
    inc d

jr_027_534a:
    ld [$1918], sp
    inc c
    and b
    ld c, $0c
    inc d
    ld [$3130], sp
    inc c
    ret nz

    ld c, $0c

jr_027_5359:
    inc d
    ld [$3332], sp
    inc c
    ldh [$0e], a
    inc c
    or h
    inc c
    nop
    ld bc, $0504
    inc c
    nop
    jr @+$0e

    call nc, $100c
    ld de, $1514
    inc c
    jr nz, jr_027_538c

    inc c
    inc d
    ld [$060c], sp
    db $10
    ld b, $07
    ld a, [bc]
    dec bc
    inc c
    ret nz

    nop
    inc c
    ld b, h
    ld [de], a
    nop
    ld bc, $140c
    ld [$260c], sp
    db $10

jr_027_538c:
    ld d, $17
    ld a, [de]
    dec de
    inc c
    ldh [rP1], a
    inc c
    ld h, h
    ld [de], a
    db $10
    ld de, $140c
    ld [$2d2c], sp
    inc c
    ret nz

    inc c
    inc h
    dec h
    inc c
    inc d
    ld [$2f2e], sp
    inc c
    ldh [$0c], a
    ld h, $27
    inc c
    inc [hl]
    ld a, [bc]
    ld [bc], a
    inc bc
    inc c
    jp nz, Jump_000_0c1a

    ld [de], a
    inc c
    ld [de], a
    inc de
    inc c
    ld [c], a
    ld a, [de]
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc b
    jr z, @+$2b

    inc b
    nop
    ld c, $ff
    inc b
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc b
    jr nz, @+$10

    inc b
    inc d
    ld [$0004], sp
    rrca
    inc sp
    inc l
    dec l
    ld [$0409], sp
    adc b
    ld b, $04
    inc d
    ld c, $2e
    cpl
    jr jr_027_53fe

    inc b
    xor b
    ld b, $04
    ld [hl], h
    rrca
    ld bc, $3130
    inc b
    ret z

    ld b, $04
    sub h
    rrca
    ld bc, $3332
    inc b
    add sp, $06
    inc b
    or h
    rrca
    ld b, l

jr_027_53fe:
    nop
    ld bc, $0302
    inc b
    ld c, [hl]
    db $10
    inc b
    call nc, Call_000_050f
    db $10
    ld de, $1312
    inc b
    ld l, [hl]
    db $10
    inc b
    or h
    rrca
    dec b
    inc h
    dec h
    inc b
    ld c, $0f
    dec b
    inc b
    and $02
    ld h, $27
    inc b
    ld l, [hl]
    rrca
    rlca
    inc b
    adc b
    rra
    dec h
    nop
    ld [bc], a
    ld a, [bc]
    jr z, jr_027_5455

    ld a, [bc]
    nop
    ld c, $ff
    ld a, [bc]
    inc d
    rlca
    ld a, [hl+]
    dec hl
    ld a, [bc]
    jr nz, jr_027_5446

    ld a, [bc]
    inc d
    ld [$2d2c], sp
    ld [$0a09], sp
    ld b, d
    ld a, [bc]
    inc h
    dec h
    ld a, [bc]
    inc d

jr_027_5446:
    ld [$2f2e], sp
    jr jr_027_5464

    ld a, [bc]
    ld h, d
    ld a, [bc]
    ld h, $27
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    jr nc, jr_027_5486

jr_027_5455:
    ld a, [bc]
    add d
    ld [bc], a
    inc [hl]
    dec [hl]
    ld a, [bc]
    adc d
    ld [bc], a
    ld b, $07
    ld a, [bc]
    ld d, h
    ld a, [bc]
    ld [hl-], a
    inc sp

jr_027_5464:
    ld a, [bc]
    and d
    ld [bc], a
    ld [hl], $37
    ld a, [bc]
    xor d
    ld [bc], a
    ld d, $17
    ld a, [bc]
    ld [hl], h
    inc c
    jr c, jr_027_54ac

    ld a, [bc]
    call nz, Call_000_0a06
    adc d
    nop
    ld a, [bc]
    sub h
    inc c
    ld a, [hl-]
    dec sp
    ld a, [bc]
    db $e4
    ld b, $0a
    xor d
    nop
    ld a, [bc]
    inc [hl]

jr_027_5486:
    ld a, [bc]
    inc [hl]
    dec [hl]
    jr c, jr_027_54c4

    ld a, [bc]
    add d
    inc b
    ld a, [bc]
    inc b
    ld [de], a
    ld a, [bc]
    ld d, h
    ld a, [bc]
    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld a, [bc]
    and d
    inc b
    ld a, [bc]
    inc h
    ld [de], a
    ld a, [bc]
    db $f4
    ld c, $0a
    call nz, Call_000_3006
    ld sp, $0100
    ld a, [bc]
    inc d
    ld e, $0a

jr_027_54ac:
    db $e4
    ld b, $32
    inc sp
    db $10
    ld de, $f40a
    inc c
    ld a, [bc]
    adc d
    ld [bc], a
    ld a, [bc]
    add d
    inc b
    ld a, [bc]
    ld d, d
    inc c
    ld a, [bc]
    xor d
    inc b
    ld a, [bc]
    and d
    inc b

jr_027_54c4:
    ld a, [bc]
    ld [hl], d
    ld a, [bc]
    jr z, jr_027_54f2

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    ld a, [bc]
    adc b
    stop
    ld bc, $c20a
    db $10
    ld a, [bc]
    ld [de], a
    inc c
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    dec d
    ld a, [bc]
    xor b
    db $10
    db $10
    ld de, $e20a
    db $10
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    ld a, [bc]
    jr z, @+$2b

    ld a, [bc]
    nop

jr_027_54f2:
    ld c, $ff
    ld a, [bc]
    inc d
    rlca
    ld a, [hl+]
    dec hl
    ld a, [bc]
    jr nz, @+$10

    ld a, [bc]
    inc d
    ld [$2d2c], sp
    ld [$0a09], sp
    ld b, d
    inc b
    inc h
    dec h
    ld a, [bc]
    ld c, $0e
    ld l, $2f
    jr jr_027_5528

    ld a, [bc]
    ld h, d
    inc b
    ld h, $27
    ld a, [bc]
    ld l, $0f
    ld bc, $3534
    inc [hl]
    dec [hl]
    jr nc, jr_027_554f

    jr nc, jr_027_5551

    inc [hl]
    dec [hl]
    ld b, $07
    ld a, [bc]
    ld b, d
    ld [bc], a
    ld a, [bc]

jr_027_5528:
    ld d, h
    ld a, [bc]
    ld [hl], $37
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld d, $17
    ld a, [bc]
    ld h, d
    ld [bc], a
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    ld a, [bc]
    add [hl]
    ld [bc], a
    ld a, [bc]
    call nz, $0a02
    call z, $0a02
    ld d, h
    ld a, [bc]
    ld a, [bc]
    and [hl]
    ld [bc], a
    ld a, [bc]
    db $e4
    ld [bc], a
    ld a, [bc]

jr_027_554f:
    db $ec
    ld [bc], a

jr_027_5551:
    ld a, [bc]
    ld [hl], h
    inc c
    ld a, [bc]
    call z, $0a04
    jp z, $0a04

    sub h
    inc c
    ld a, [bc]
    db $ec
    inc b
    ld a, [bc]
    ld [$0a04], a
    or h
    inc c
    ld a, [bc]
    add d
    ld [bc], a
    inc [hl]
    dec [hl]
    nop
    ld bc, $0302
    ld a, [bc]
    ld c, [hl]
    db $10
    ld a, [bc]
    call nc, $0a0c
    and d
    ld [bc], a
    ld [hl], $37
    db $10
    ld de, $1312
    ld a, [bc]
    ld l, [hl]
    db $10
    ld a, [bc]
    inc d
    ld [$2928], sp
    ld a, [bc]
    ld c, [hl]
    db $10
    inc b
    dec b
    ld a, [bc]
    adc b
    nop
    ld a, [bc]
    ld c, h
    rrca
    ld bc, $2b2a
    ld a, [bc]
    ld l, [hl]
    db $10
    inc d
    dec d
    ld a, [bc]
    xor b
    nop
    ld a, [bc]
    ld l, h
    rrca
    ld bc, $000a
    ld [bc], a
    ld a, [bc]
    ret nz

    ld [bc], a
    ld a, [bc]
    adc h
    rra
    inc bc
    ld a, [bc]
    jr nz, jr_027_55ad

jr_027_55ad:
    ld a, [bc]
    ldh [rSC], a
    ld a, [bc]
    ld l, h
    rrca
    ld bc, $0200
    ld a, [bc]
    jr z, jr_027_55e2

    ld a, [bc]
    nop
    ld c, $ff
    ld a, [bc]
    inc d
    rlca
    ld a, [hl+]
    dec hl
    ld a, [bc]
    jr nz, jr_027_55d3

    ld a, [bc]
    inc d
    ld [$2d2c], sp
    ld [$0a09], sp
    ld b, d
    ld a, [bc]
    inc h
    dec h
    ld a, [bc]
    inc d

jr_027_55d3:
    ld [$2f2e], sp
    jr jr_027_55f1

    ld a, [bc]
    ld h, d
    ld a, [bc]
    ld h, $27
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    jr c, jr_027_561b

jr_027_55e2:
    jr c, jr_027_561d

    inc [hl]
    dec [hl]
    ld a, [bc]
    add [hl]
    ld b, $06
    rlca
    ld a, [bc]
    ld d, h
    ld a, [bc]
    ld a, [hl-]
    dec sp
    ld a, [hl-]

jr_027_55f1:
    dec sp
    ld [hl], $37
    ld a, [bc]
    and [hl]
    ld b, $16
    rla
    ld a, [bc]
    ld [hl], h
    inc c
    jr nc, jr_027_562f

    nop
    ld bc, $0302
    ld a, [bc]
    ret z

    nop
    inc b
    dec b
    inc [hl]
    dec [hl]
    jr nc, @+$33

    ld a, [bc]
    sub h
    inc c
    ld [hl-], a
    inc sp
    db $10
    ld de, $1312
    ld a, [bc]
    add sp, $00
    inc d
    dec d
    ld [hl], $37

jr_027_561b:
    ld [hl-], a
    inc sp

jr_027_561d:
    ld a, [bc]
    or h
    ld c, $24
    dec h
    ld a, [bc]
    nop
    ld [bc], a
    inc l
    dec l
    jr nc, @+$33

    ld a, [bc]
    jp nc, $010f

    ld h, $27

jr_027_562f:
    ld a, [bc]
    jr nz, jr_027_5634

    ld l, $2f

jr_027_5634:
    ld [hl-], a
    inc sp
    ld a, [bc]
    ld a, [c]
    ld c, $38
    add hl, sp
    ld b, $07
    ld a, [bc]
    ld c, [hl]
    ld [bc], a
    jr z, jr_027_566b

    ld a, [bc]
    ret z

    nop
    ld a, [bc]
    sub h
    ld c, $16
    rla
    ld a, [bc]
    ld l, [hl]
    ld [bc], a
    ld a, [hl+]
    dec hl
    ld a, [bc]
    add sp, $00
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    jr nc, jr_027_5688

    ld a, [bc]
    jp nz, $0a00

    db $10
    db $10
    ld a, [bc]
    ld b, $14
    ld a, [bc]
    ld d, h
    ld a, [bc]
    ld [hl-], a
    inc sp
    ld a, [bc]
    ld [c], a
    nop
    ld a, [bc]
    jr nc, jr_027_567b

jr_027_566b:
    ld a, [bc]
    ld h, $14
    ld a, [bc]
    inc d
    ld [$4e0a], sp
    ld [de], a
    inc b
    dec b
    ld a, [bc]
    adc b
    rra
    dec b
    ld a, [bc]

jr_027_567b:
    ld l, [hl]
    ld [de], a
    inc d
    dec d
    ld a, [bc]
    xor b
    rra
    dec b
    nop
    ld [bc], a
    inc c
    jr z, jr_027_56b1

jr_027_5688:
    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_56a2

    inc c
    inc d
    ld [$2d2c], sp
    ld [$0c09], sp
    ld b, d
    ld b, $24
    dec h
    inc c
    db $10

jr_027_56a2:
    inc c
    ld l, $2f
    jr jr_027_56c0

    inc c
    ld h, d
    ld b, $26
    daa
    inc c
    jr nc, jr_027_56bd

    jr nc, jr_027_56e2

jr_027_56b1:
    inc c
    add d
    ld b, $0e
    rrca
    inc c
    ld b, d
    nop
    inc c
    ld d, h
    ld a, [bc]
    ld [hl-], a

jr_027_56bd:
    inc sp
    inc c
    and d

jr_027_56c0:
    ld b, $1e
    rra
    inc c
    ld h, d
    nop
    inc c
    inc [hl]
    ld a, [bc]
    inc [hl]
    dec [hl]
    nop
    ld bc, $0302
    inc c
    add $02
    inc c
    add b
    ld [bc], a
    inc c
    ld d, h
    ld a, [bc]
    ld [hl], $37
    db $10
    ld de, $1312
    inc c
    and $02
    inc c

jr_027_56e2:
    and b
    ld [bc], a
    inc c
    or h
    inc c
    inc h
    dec h
    inc c
    ld b, b
    inc b
    ld a, [bc]
    dec bc
    inc c
    ret nc

    rrca
    ld bc, $2726
    inc c
    ld h, b
    inc b
    ld a, [de]
    dec de
    inc c
    ldh a, [$0e]
    jr c, @+$3b

    ld b, $07
    inc c
    ld c, $12
    inc [hl]
    dec [hl]
    inc c
    ld c, h
    stop
    ld bc, $540c
    ld a, [bc]
    ld a, [hl-]
    dec sp
    ld d, $17
    inc c
    ld l, $12
    ld [hl], $37
    inc c
    ld l, h
    db $10
    db $10
    ld de, $340c
    inc e
    jr c, jr_027_5759

    inc c
    add d
    ld [bc], a
    inc c
    call nz, Call_000_0c02
    ld d, d
    inc c
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    inc c
    and d
    ld [bc], a
    inc c
    db $e4
    ld [bc], a
    inc c
    ld [hl-], a
    ld a, [bc]
    jr z, jr_027_5761

    inc c
    add $00
    inc b
    dec b
    inc c
    add d
    nop
    inc c
    ld c, [hl]
    ld [bc], a
    inc c
    ld [de], a
    inc c
    inc c
    and $00
    inc d
    dec d
    inc c
    and d
    nop
    inc c
    ld l, [hl]
    ld [bc], a
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, jr_027_5782

jr_027_5759:
    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]

jr_027_5761:
    dec hl
    inc c
    jr nz, jr_027_5773

    inc c
    inc d
    ld [$2d2c], sp
    ld [$0c09], sp
    ld b, d
    ld a, [bc]
    inc h
    dec h
    inc c
    inc d

jr_027_5773:
    ld [$2f2e], sp
    jr jr_027_5791

    inc c
    ld h, d
    ld a, [bc]
    ld h, $27
    inc c
    inc [hl]
    ld a, [bc]
    jr nc, @+$33

jr_027_5782:
    inc c
    add d
    inc b
    inc [hl]
    dec [hl]
    inc c
    adc h
    nop
    ld b, $07
    inc c
    ld d, h
    ld a, [bc]
    ld [hl-], a
    inc sp

jr_027_5791:
    inc c
    and d
    inc b
    ld [hl], $37
    inc c
    xor h
    nop
    ld d, $17
    inc c
    ld [hl], h
    inc c
    nop
    ld bc, $0302
    inc c
    add $00
    inc b
    dec b
    inc c
    adc d
    ld [bc], a
    inc c
    sub h
    inc c
    db $10
    ld de, $1312
    inc c
    and $00
    inc d
    dec d
    inc c
    xor d
    ld [bc], a
    inc c
    inc [hl]
    ld a, [bc]
    jr c, jr_027_57f7

    ld b, $07
    inc c
    ld d, b
    nop
    jr z, jr_027_57ee

    inc c
    add b
    inc b
    inc c
    ld d, h
    ld a, [bc]
    ld a, [hl-]
    dec sp
    ld d, $17
    inc c
    ld [hl], b
    nop
    ld a, [hl+]
    dec hl
    inc c
    and b
    inc b
    inc c
    db $f4
    inc c
    inc [hl]
    dec [hl]
    jr nc, jr_027_580f

    inc c
    inc b
    db $10
    ld a, [bc]
    dec bc
    inc c
    add d
    nop
    nop
    ld bc, $140c
    inc e
    ld [hl], $37
    ld [hl-], a

jr_027_57ee:
    inc sp
    inc c
    inc h
    db $10
    ld a, [de]
    dec de
    inc c
    and d
    nop

jr_027_57f7:
    db $10
    ld de, $f40c
    inc c
    inc c
    ld b, d
    ld [de], a
    inc c
    add d
    inc b
    inc c
    ld d, d
    inc c
    ld a, [hl-]
    dec sp
    inc c
    ld h, d
    ld [de], a
    inc c
    and d
    inc b
    inc c
    ld [hl], d

jr_027_580f:
    ld a, [bc]
    jr z, jr_027_583b

    inc c
    ret z

    inc b
    inc c
    jp nz, Jump_000_0c04

    ld [de], a
    inc c
    inc c
    add sp, $04
    inc c
    ld [c], a
    inc b
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    nop
    jr z, jr_027_5852

    nop
    nop
    ld c, $ff
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_027_5843

    nop
    inc d
    ld [$0000], sp
    rrca

jr_027_583b:
    dec l
    ld [$0009], sp
    add b
    ld b, $24
    dec h

jr_027_5843:
    nop
    ld c, $0e
    jr jr_027_5861

    nop
    and b
    ld b, $26
    daa
    nop
    ld l, $0e
    jr nc, @+$33

jr_027_5852:
    jr nc, jr_027_5885

    inc [hl]
    dec [hl]
    nop
    call nz, Call_000_3000
    ld sp, $8c00
    rrca
    ld bc, $3332

jr_027_5861:
    ld [hl-], a
    inc sp
    ld [hl], $37
    nop
    db $e4
    nop
    ld [hl-], a
    inc sp
    nop
    xor h
    rrca
    inc bc
    nop
    call nz, Call_000_3800
    add hl, sp
    jr c, jr_027_58ae

    nop
    jp z, Jump_000_050f

    nop
    db $e4
    nop
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    nop
    ld [$030f], a
    ld [bc], a

jr_027_5885:
    inc bc
    nop
    ld b, b
    db $10
    inc b
    dec b
    nop
    ld b, $10
    nop
    adc h
    rrca
    ld bc, $1312
    nop
    ld h, b
    db $10
    inc d
    dec d
    nop
    ld h, $10
    nop
    xor h
    rrca
    ld bc, $0000
    ld [bc], a
    inc l
    dec l
    nop
    ld c, b
    rra
    dec b
    nop
    jr nz, jr_027_58ae

    ld l, $2f

jr_027_58ae:
    nop
    ld l, b
    rra
    dec c
    nop
    ret z

    rrca
    dec b
    nop
    and b
    inc d
    nop
    add sp, $0f
    dec b
    nop
    ld [bc], a
    ld b, $28
    add hl, hl
    ld b, $00
    ld c, $ff
    ld b, $14
    rlca
    ld a, [hl+]
    dec hl
    ld b, $20
    ld c, $06
    inc d
    ld [$2d2c], sp
    ld [$0609], sp
    ld b, d
    ld a, [bc]
    inc h
    dec h
    ld b, $14
    ld [$2f2e], sp
    jr jr_027_58fa

    ld b, $62
    ld a, [bc]
    ld h, $27
    ld b, $14
    ld [$0b0a], sp
    jr c, jr_027_5926

    jr nc, jr_027_5920

    ld b, $84
    ld [bc], a
    jr c, @+$3b

    ld b, $8c
    nop
    ld b, $52
    ld a, [bc]

jr_027_58fa:
    ld a, [de]
    dec de
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    ld b, $a4
    ld [bc], a
    ld a, [hl-]
    dec sp
    ld b, $ac
    nop
    ld b, $72
    ld a, [bc]
    ld b, $86
    ld b, $06
    add [hl]
    inc b
    ld b, $52
    ld a, [bc]
    ld b, $a6
    ld b, $06
    and [hl]
    inc b
    ld b, $b2
    ld c, $38
    add hl, sp
    inc [hl]

jr_027_5920:
    dec [hl]
    ld b, $8c
    ld [bc], a
    ld b, $84

jr_027_5926:
    nop
    ld b, $d2
    ld c, $3a
    dec sp
    ld [hl], $37
    ld b, $ac
    ld [bc], a
    ld b, $a4
    nop
    ld b, $72
    ld a, [bc]
    inc b
    dec b
    ld b, $02
    ld [de], a
    ld b, $46
    ld [de], a
    ld b, $82
    nop
    ld b, $52
    ld a, [bc]
    inc d
    dec d
    ld b, $22
    ld [de], a
    ld b, $66
    ld [de], a
    ld b, $a2
    nop
    ld b, $72
    ld a, [bc]
    inc l
    dec l
    ld b, $46
    ld [de], a
    ld b, $84
    nop
    ld b, $46
    ld [de], a
    ld b, $52
    inc c
    ld b, $66
    ld [de], a
    ld b, $a4
    nop
    ld b, $66
    ld [de], a
    ld b, $72
    ld a, [bc]
    jr z, jr_027_5998

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld b, $40
    db $10
    jr nc, @+$33

    nop
    ld bc, $c206
    db $10
    ld b, $12
    inc c
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld b, $60
    db $10
    ld [hl-], a
    inc sp
    db $10
    ld de, $e206
    db $10
    ld b, $32
    ld a, [bc]
    nop
    ld [bc], a
    ld b, $28
    add hl, hl
    ld b, $00

jr_027_5998:
    ld c, $ff
    ld b, $14
    rlca
    ld a, [hl+]
    dec hl
    ld b, $20
    ld c, $06
    inc d
    ld [$2d2c], sp
    ld [$0609], sp
    ld b, d
    ld a, [bc]
    inc h
    dec h
    ld b, $14
    ld [$2f2e], sp
    jr @+$1b

    ld b, $62
    ld a, [bc]
    ld h, $27
    ld b, $14
    ld [$0b0a], sp
    jr c, @+$3b

    ld b, $82
    nop
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    jr nc, jr_027_59fb

    ld b, $8c
    nop
    ld b, $52
    ld a, [bc]
    ld a, [de]
    dec de
    ld a, [hl-]
    dec sp
    ld b, $a2
    nop
    ld [hl], $37
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld b, $ac
    nop
    ld b, $72
    ld a, [bc]
    ld b, $8c
    nop
    nop
    ld bc, $0302
    ld b, $c6
    ld [bc], a
    inc b
    dec b
    ld b, $90
    inc c
    ld b, $ac
    nop
    db $10
    ld de, $1312
    ld b, $e6

jr_027_59fb:
    ld [bc], a
    inc d
    dec d
    ld b, $b0
    rrca
    ld bc, $0f0e
    ld b, $42
    inc b
    ld a, [bc]
    dec bc
    ld b, $d0
    rrca
    ld bc, $1f1e
    ld b, $62
    inc b
    ld a, [de]
    dec de
    ld b, $b0
    inc c
    ld b, $c6
    nop
    inc l
    dec l
    ld b, $8c
    nop
    ld b, $88
    nop
    ld b, $82
    nop
    ld b, $52
    ld a, [bc]
    ld b, $e6
    nop
    ld l, $2f
    ld b, $ac
    nop
    ld b, $a8
    nop
    ld b, $a2
    nop
    ld b, $72
    ld a, [bc]
    ld b, $00
    nop
    ld b, $44
    inc d
    ld b, $c4
    ld [bc], a
    ld b, $12
    ld c, $06
    ld h, h
    inc d
    ld b, $e4
    ld [bc], a
    ld b, $32
    ld a, [bc]
    ld b, $00
    ld [bc], a
    ld b, $ce
    nop
    ld b, $90
    nop
    ld b, $0e
    rrca
    dec b
    ld b, $ee
    nop
    ld b, $b0
    nop
    ld b, $2e
    ld c, $00
    ld [bc], a
    inc c
    jr z, jr_027_5a92

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_5a83

    inc c
    inc d
    ld [$2d2c], sp
    ld [$0c09], sp
    ld b, d
    ld a, [bc]
    inc h
    dec h
    inc c
    inc d

jr_027_5a83:
    ld [$2f2e], sp
    jr jr_027_5aa1

    inc c
    ld h, d
    ld a, [bc]
    ld h, $27
    inc c
    inc d
    ld [$0b0a], sp

jr_027_5a92:
    jr nc, jr_027_5ac5

    jr c, @+$3b

    inc c
    add h
    nop
    inc [hl]
    dec [hl]
    jr nc, @+$33

    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]

jr_027_5aa1:
    inc c
    ld d, d
    ld a, [bc]
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    inc c
    and h
    nop
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld [hl], $37
    inc c
    ld [hl], d
    ld a, [bc]
    jr nc, jr_027_5aeb

    jr nc, jr_027_5aed

    nop
    ld bc, $0302
    inc c
    add $00
    inc b
    dec b

jr_027_5ac5:
    inc c
    adc [hl]
    ld c, $32
    inc sp
    ld [hl-], a
    inc sp
    db $10
    ld de, $1312
    inc c
    and $00
    inc d
    dec d
    inc c
    xor [hl]
    rrca
    inc bc
    inc h
    dec h
    inc c
    nop
    ld [bc], a
    inc l
    dec l
    inc c
    nop
    ld [de], a
    inc c
    call nc, Call_000_260c
    daa
    inc c
    jr nz, jr_027_5aed

jr_027_5aeb:
    ld l, $2f

jr_027_5aed:
    inc c
    jr nz, jr_027_5b02

    inc c
    inc d
    ld [$0504], sp
    jr c, jr_027_5b30

    ld b, $07
    inc c
    ld b, d
    ld [bc], a
    ld c, $0f
    inc c
    ld c, $1e
    inc d

jr_027_5b02:
    dec d
    ld a, [hl-]
    dec sp
    ld d, $17
    inc c
    ld h, d
    ld [bc], a
    ld e, $1f
    inc c
    ld l, $1e
    inc l
    dec l
    inc c
    adc b
    nop
    inc [hl]
    dec [hl]
    jr c, @+$3b

    jr nc, jr_027_5b4b

    inc c
    ld c, h
    rra
    ld bc, $2f2e
    inc c
    xor b
    nop
    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    inc c
    ld l, h
    rra
    ld bc, $2928
    inc c

jr_027_5b30:
    ret z

    ld [bc], a
    inc c
    nop
    ld [de], a
    inc c
    add $00
    inc c
    ld [de], a
    inc c
    inc c
    add sp, $02
    inc c
    jr nz, jr_027_5b53

    inc c
    and $00
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    ld b, $28

jr_027_5b4b:
    add hl, hl
    ld b, $00
    ld c, $ff
    ld b, $14
    rlca

jr_027_5b53:
    ld a, [hl+]
    dec hl
    ld b, $20
    ld c, $06
    inc d
    ld [$0006], sp
    ld [bc], a
    inc l
    dec l
    ld [$0609], sp
    ld c, b
    inc b
    inc h
    dec h
    ld b, $14
    ld c, $2e
    cpl
    jr jr_027_5b87

    ld b, $68
    inc b
    ld h, $27
    ld b, $14
    ld [$4806], sp
    ld [bc], a
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    ld b, $88
    inc b
    ld b, $52
    ld a, [bc]
    ld b, $68
    ld [bc], a
    ld a, [de]

jr_027_5b87:
    dec de
    ld [hl], $37
    ld b, $a8
    inc b
    ld b, $72
    ld a, [bc]
    jr nc, jr_027_5bc3

    ld b, $c0
    nop
    jr c, jr_027_5bd0

    ld b, $c6
    inc b
    ld b, $90
    inc c
    ld [hl-], a
    inc sp
    ld b, $e0
    nop
    ld a, [hl-]
    dec sp
    ld b, $e6
    inc b
    ld b, $b0
    rrca
    inc bc
    ld b, $c2
    ld b, $06
    ret nc

    rrca
    inc bc
    ld b, $e2
    ld b, $06
    or b
    inc c
    ld [bc], a
    inc bc
    ld b, $40
    db $10
    inc b
    dec b
    ld b, $08
    rra
    dec b

jr_027_5bc3:
    ld [de], a
    inc de
    ld b, $60
    db $10
    inc d
    dec d
    ld b, $28
    rra
    dec b
    ld b, $40

jr_027_5bd0:
    inc b
    ld b, $c0
    ld [bc], a
    ld b, $8e
    ld c, $06
    ld h, b
    inc b
    ld b, $e0
    ld [bc], a
    ld b, $ae
    ld c, $06
    add b
    jr jr_027_5be4

jr_027_5be4:
    ld bc, $4006
    db $10
    ld b, $12
    rrca
    ld bc, $a606
    ld [de], a
    db $10
    ld de, $6006
    db $10
    ld b, $32
    ld a, [bc]
    nop
    ld [bc], a
    ld b, $28
    add hl, hl
    ld b, $00
    ld c, $ff
    ld b, $14
    rlca
    ld a, [hl+]
    dec hl
    ld b, $20
    ld c, $06
    inc d
    ld [$2d2c], sp
    ld [$0609], sp
    ld b, d
    ld a, [bc]
    inc h
    dec h
    ld b, $14
    ld [$2f2e], sp
    jr jr_027_5c34

    ld b, $62
    ld a, [bc]
    ld h, $27
    ld b, $14
    ld [$0b0a], sp
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    jr nc, @+$33

    ld b, $86
    nop
    ld b, $82
    ld [bc], a
    ld b, $52
    ld a, [bc]

jr_027_5c34:
    ld a, [de]
    dec de
    ld [hl], $37
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld b, $a6
    nop
    ld b, $a2
    ld [bc], a
    ld b, $72
    ld a, [bc]
    ld b, $82
    ld [bc], a
    inc c
    dec c
    ld b, $86
    inc b
    ld b, $90
    inc c
    ld b, $a2
    ld [bc], a
    inc e
    dec e
    ld b, $a6
    inc b
    ld b, $b0
    inc c
    ld b, $86
    ld [bc], a
    ld c, $0f
    ld b, $c8
    rrca
    dec b
    ld b, $a6
    ld [bc], a
    ld e, $1f
    ld b, $e8
    rrca
    dec b
    inc b
    dec b
    jr c, @+$3b

    jr c, jr_027_5cac

    ld c, $0f
    ld b, $84
    ld [bc], a
    ld b, $82
    nop
    ld b, $52
    ld a, [bc]
    inc d
    dec d
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld e, $1f
    ld b, $a4
    ld [bc], a
    ld b, $a2
    nop
    ld b, $72
    ld a, [bc]
    inc l
    dec l
    ld b, $02
    ld [de], a
    ld b, $82
    nop
    ld b, $84
    ld [bc], a
    ld b, $52
    inc c
    ld b, $22
    ld [de], a
    ld b, $a2
    nop
    ld b, $a4
    ld [bc], a
    ld b, $72
    ld a, [bc]
    jr z, @+$2b

    ld [bc], a

jr_027_5cac:
    inc bc
    ld [bc], a
    inc bc
    ld b, $80
    ld [de], a
    nop
    ld bc, $c206
    db $10
    ld b, $12
    inc c
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld b, $a0
    ld [de], a
    db $10
    ld de, $e206
    db $10
    ld b, $32
    ld a, [bc]
    nop
    ld [bc], a
    nop
    jr z, jr_027_5cf7

    nop
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_5d06

    jr nc, jr_027_5d08

    inc h
    dec h
    nop
    nop
    ld [bc], a
    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_027_5ce5

jr_027_5ce5:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_027_5cf2

    nop
    inc d

jr_027_5cf2:
    ld [$0000], sp
    rrca
    add hl, sp

jr_027_5cf7:
    ld b, $07
    ld [$0009], sp
    adc [hl]
    nop
    nop
    inc d
    rrca
    dec b
    ld d, $17
    jr jr_027_5d1f

jr_027_5d06:
    nop
    xor [hl]

jr_027_5d08:
    nop
    nop
    inc [hl]
    rrca
    dec b
    nop
    ret z

    inc b
    nop
    inc d
    rrca
    dec b
    nop
    add sp, $04
    nop
    or h
    rrca
    ccf
    jr z, jr_027_5d46

    ld [bc], a
    inc bc

jr_027_5d1f:
    nop
    ld c, b
    ld d, $00
    inc d
    ld c, $2a
    dec hl
    ld [de], a
    inc de
    nop
    ld l, b
    ld d, $00
    inc [hl]
    rra
    ld bc, $8000
    jr jr_027_5d34

jr_027_5d34:
    ld d, h
    rra
    ld bc, $a000
    jr jr_027_5d3b

jr_027_5d3b:
    ld [hl], h
    rra
    add hl, sp
    nop
    ld [bc], a
    inc b
    jr z, @+$2b

    inc b
    nop
    nop

jr_027_5d46:
    inc l
    dec l
    jr nc, jr_027_5d7b

    jr nc, @+$33

    inc h
    dec h
    inc b
    nop
    ld [bc], a
    rst $38
    inc b
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc b
    jr nz, jr_027_5d5a

jr_027_5d5a:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc b
    jr nz, jr_027_5d67

    inc b
    inc d

jr_027_5d67:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc b
    ld [$0600], sp
    rlca
    inc b
    ld b, d
    nop
    inc h
    dec h
    inc b

jr_027_5d7b:
    inc d
    ld [$2f2e], sp
    jr jr_027_5d9a

    jr @+$1b

    ld a, [de]
    dec de
    inc b
    jr z, jr_027_5d88

jr_027_5d88:
    ld d, $17
    inc b
    ld h, d
    nop
    ld h, $27
    inc b
    inc [hl]
    ld a, [bc]
    jr c, @+$3b

    jr c, jr_027_5dcf

    inc b
    ld [$0400], sp

jr_027_5d9a:
    ld [$3400], sp
    dec [hl]
    inc [hl]
    dec [hl]
    ld b, $07
    inc b
    ld d, h
    ld a, [bc]
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    inc b
    jr z, jr_027_5dac

jr_027_5dac:
    inc b
    jr z, jr_027_5daf

jr_027_5daf:
    ld [hl], $37
    ld [hl], $37
    ld d, $17
    inc b
    inc [hl]
    ld a, [bc]
    jr nc, jr_027_5deb

    inc b
    add d
    inc c
    inc b
    ld d, h
    ld a, [bc]
    ld [hl-], a
    inc sp
    inc b
    and d
    inc c
    inc b
    or h
    inc c
    inc b
    jp nz, $040c

    call nc, $040c

jr_027_5dcf:
    ld [c], a
    inc c
    inc b
    inc [hl]
    ld a, [bc]
    inc [hl]
    dec [hl]
    inc b
    ld [bc], a
    ld a, [de]
    nop
    ld bc, $5404
    ld a, [bc]
    ld [hl], $37
    inc b
    ld [hl+], a
    ld a, [de]
    db $10
    ld de, $3404
    inc e
    inc b
    ld b, d
    ld a, [de]

jr_027_5deb:
    inc b
    ld d, d
    inc c
    inc b
    xor [hl]
    nop
    inc b
    ld [hl+], a
    jr jr_027_5df9

    ld [hl], d
    ld a, [bc]
    jr z, jr_027_5e22

jr_027_5df9:
    ld [bc], a
    inc bc
    inc b
    jp nz, $041a

    ld [de], a
    inc c
    ld [de], a
    inc de
    inc b
    ld [c], a
    ld a, [de]
    inc b
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc b
    jr z, @+$2b

    inc b
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_5e46

    jr nc, jr_027_5e48

    inc h
    dec h
    inc b
    nop
    ld [bc], a
    rst $38
    inc b
    inc d
    rlca
    ld a, [hl+]
    dec hl

jr_027_5e22:
    inc b
    jr nz, jr_027_5e25

jr_027_5e25:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc b
    jr nz, jr_027_5e32

    inc b
    inc d

jr_027_5e32:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc b
    ld [$050f], sp
    ld l, $2f
    jr jr_027_5e5c

    jr @+$1b

    ld a, [de]

jr_027_5e46:
    dec de
    inc b

jr_027_5e48:
    jr z, jr_027_5e59

    rlca
    inc b
    ld [$3800], sp
    add hl, sp
    inc b
    add [hl]
    nop
    inc b
    inc c
    nop
    inc b
    ld b, b
    nop

jr_027_5e59:
    inc b
    ld d, h
    ld a, [bc]

jr_027_5e5c:
    inc b
    jr z, jr_027_5e5f

jr_027_5e5f:
    ld a, [hl-]
    dec sp
    inc b
    and [hl]
    nop
    inc b
    inc l
    nop
    inc b
    ld h, b
    nop
    inc b
    inc [hl]
    ld a, [bc]
    inc [hl]
    dec [hl]
    jr nc, jr_027_5ea2

    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    ld b, b
    nop
    inc b
    ld b, [hl]
    nop
    inc b
    ld d, h
    ld a, [bc]
    ld [hl], $37
    ld [hl-], a
    inc sp
    db $10
    ld de, $1312
    ld [de], a
    inc de
    inc b
    ld h, b
    nop
    inc b
    ld h, [hl]
    nop
    inc b
    inc [hl]
    ld a, [bc]
    jr c, jr_027_5ece

    inc [hl]
    dec [hl]
    inc b
    inc c
    ld [bc], a
    inc b
    ld b, $02
    inc b
    jp nc, Jump_000_3a0c

    dec sp

jr_027_5ea2:
    ld [hl], $37
    inc b
    inc l
    ld [bc], a
    inc b
    ld h, $02
    inc b
    ld a, [c]
    ld c, $38
    add hl, sp
    ld b, $07
    inc b
    ld b, d
    ld b, $00
    ld bc, $1404
    inc e
    ld a, [hl-]
    dec sp
    ld d, $17
    inc b
    ld h, d
    ld b, $10
    ld de, $3404
    ld e, $38
    add hl, sp
    inc b
    ld c, $12
    inc b
    adc b
    ld [bc], a
    inc b

jr_027_5ece:
    ld d, h
    ld e, $3a
    dec sp
    inc b
    ld l, $12
    inc b
    xor b
    ld [bc], a
    inc b
    inc d
    ld [$2928], sp
    inc b
    ret z

    nop
    inc b
    jp nz, Jump_000_0418

    ld [de], a
    inc c
    inc b
    add sp, $00
    inc b
    ld [c], a
    jr jr_027_5ef1

    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a

jr_027_5ef1:
    inc b
    jr z, jr_027_5f1d

    inc b
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_5f2c

    jr nc, jr_027_5f2e

    inc h
    dec h
    inc b
    nop
    ld [bc], a
    rst $38
    inc b
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc b
    jr nz, jr_027_5f0b

jr_027_5f0b:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc b
    jr nz, jr_027_5f18

    inc b
    inc d

jr_027_5f18:
    ld [$0004], sp
    ld b, $38

jr_027_5f1d:
    add hl, sp
    inc b
    inc c
    rrca
    dec bc
    ld a, [hl-]
    dec sp
    inc b
    inc l
    rrca
    add hl, bc
    jr c, jr_027_5f63

    inc b
    ld c, d

jr_027_5f2c:
    ld [bc], a
    inc l

jr_027_5f2e:
    dec l
    ld [$0409], sp
    inc d
    rrca
    ld bc, $3b3a
    inc b
    ld l, d
    ld [bc], a
    ld l, $2f
    jr jr_027_5f57

    inc b
    inc d
    ld [$9004], sp
    nop
    ld [$0a09], sp
    dec bc
    inc b
    adc b
    nop
    ld b, $07
    inc b
    call nz, Call_000_3000
    ld sp, $1404
    ld [$b004], sp

jr_027_5f57:
    nop
    jr jr_027_5f73

    ld a, [de]
    dec de
    inc b
    xor b
    nop
    ld d, $17
    inc b
    db $e4

jr_027_5f63:
    nop
    ld [hl-], a
    inc sp
    inc b
    or h
    ld a, [bc]
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    inc b
    ld [$0400], sp
    adc b
    nop

jr_027_5f73:
    inc b
    ld [$0400], sp
    jp nc, $360c

    scf
    ld [hl], $37
    inc b
    jr z, jr_027_5f80

jr_027_5f80:
    inc b
    xor b
    nop
    inc b
    jr z, jr_027_5f86

jr_027_5f86:
    inc b
    ld a, [c]
    inc c
    jr nc, jr_027_5fbc

    inc b
    ld [bc], a
    inc d
    nop
    ld bc, $0302
    inc b
    ld c, [hl]
    db $10
    inc b
    call nc, $320a
    inc sp
    inc b
    ld [hl+], a
    inc d
    db $10
    ld de, $1312
    inc b
    ld l, [hl]
    db $10
    inc b
    inc [hl]
    inc e
    inc b
    ld b, d
    inc d
    inc b
    inc c
    rrca
    ld bc, $2604
    ld [bc], a
    inc b
    ld [hl+], a
    ld [de], a
    inc b
    inc l
    rrca
    inc bc
    inc b
    ld c, [hl]
    ld [de], a
    inc b

jr_027_5fbc:
    ld c, [hl]
    db $10
    inc b
    nop
    ld [bc], a
    inc b
    ld [de], a
    inc c
    inc b
    ld l, [hl]
    ld [de], a
    inc b
    ld l, [hl]
    db $10
    inc b
    jr nz, jr_027_5fcf

    inc b
    ld [hl-], a

jr_027_5fcf:
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_600d

    jr nc, @+$33

    inc h
    dec h
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_5fec

jr_027_5fec:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_027_5ff9

    inc c
    inc d

jr_027_5ff9:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [$0600], sp
    rlca
    inc c
    ld b, d
    nop
    inc h
    dec h
    inc c

jr_027_600d:
    inc d
    ld [$2f2e], sp
    jr jr_027_602c

    jr jr_027_602e

    ld a, [de]
    dec de
    inc c
    jr z, jr_027_601a

jr_027_601a:
    ld d, $17
    inc c
    ld h, d
    nop
    ld h, $27
    inc c
    inc [hl]
    ld a, [bc]
    inc c
    ld [$0c00], sp
    add d
    ld [$0706], sp

jr_027_602c:
    inc c
    ld d, h

jr_027_602e:
    ld a, [bc]
    inc c
    jr z, jr_027_6032

jr_027_6032:
    inc c
    and d
    ld [$1716], sp
    inc c
    ld [hl], h
    rrca
    inc bc
    nop
    ld bc, $0302
    inc b
    dec b
    inc c
    ld [$0c00], sp
    sub h
    rrca
    inc bc
    db $10
    ld de, $1312
    inc d
    dec d
    inc c
    jr z, jr_027_6051

jr_027_6051:
    inc c
    inc [hl]
    ld a, [bc]
    jr c, jr_027_608f

    inc c
    ret z

    ld [bc], a
    inc c
    ld b, b
    nop
    inc c
    ld b, [hl]
    ld [bc], a
    inc c
    ld d, h
    ld a, [bc]
    ld a, [hl-]
    dec sp
    inc c
    add sp, $02
    inc c
    ld h, b
    nop
    inc c
    ld h, [hl]
    ld [bc], a
    inc c
    db $f4
    inc c
    jr c, jr_027_60ab

    inc c
    ld c, h
    nop
    inc c
    ld b, [hl]
    ld [bc], a
    jr c, jr_027_60b3

    nop
    ld bc, $140c
    inc e
    ld a, [hl-]
    dec sp
    inc c
    ld l, h
    nop
    inc c
    ld h, [hl]
    ld [bc], a
    ld a, [hl-]
    dec sp
    db $10
    ld de, $740c
    inc c
    inc c

jr_027_608f:
    ld b, d
    db $10
    inc c
    add d
    ld [bc], a
    inc c
    ld b, d
    db $10
    inc c
    ld d, d
    inc c
    inc c
    ld l, [hl]
    db $10
    inc c
    ld [hl+], a
    db $10
    inc c
    ld l, h
    ld [de], a
    ld a, [hl-]
    dec sp
    inc c
    ld [hl], d
    ld a, [bc]
    jr z, jr_027_60d3

    ld [bc], a

jr_027_60ab:
    inc bc
    inc c
    jp nz, Jump_000_0c1a

    ld [de], a
    inc c
    ld [de], a

jr_027_60b3:
    inc de
    inc c
    ld [c], a
    ld a, [de]
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_60f7

    jr nc, @+$33

    inc h
    dec h
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl

jr_027_60d3:
    inc c
    jr nz, jr_027_60d6

jr_027_60d6:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_027_60e3

    inc c
    inc d

jr_027_60e3:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld c, $0f
    inc c
    ld [$0600], sp
    rlca
    inc c
    ld b, d
    nop
    inc h
    dec h
    inc c

jr_027_60f7:
    inc d
    ld [$2f2e], sp
    jr jr_027_6116

    jr jr_027_6118

    ld e, $1f
    inc c
    jr z, jr_027_6104

jr_027_6104:
    ld d, $17
    inc c
    ld h, d
    nop
    ld h, $27
    inc c
    inc [hl]
    ld a, [bc]
    inc c
    ld [$0c00], sp
    ld b, [hl]
    ld [bc], a
    jr nc, jr_027_6147

jr_027_6116:
    jr c, jr_027_6151

jr_027_6118:
    jr c, @+$3b

    ld b, $07
    inc c
    ld d, h
    ld a, [bc]
    inc c
    jr z, jr_027_6122

jr_027_6122:
    inc c
    ld h, [hl]
    ld [bc], a
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld d, $17
    inc c
    ld [hl], h
    ld c, $24
    dec h
    ld [bc], a
    inc bc
    inc c
    ret z

    nop
    inc b
    dec b
    jr c, jr_027_6174

    jr nc, jr_027_616e

    inc c
    sub h
    ld c, $26
    daa
    ld [de], a
    inc de
    inc c
    add sp, $00

jr_027_6147:
    inc d
    dec d
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    inc c
    ld [hl], h
    inc c
    nop

jr_027_6151:
    ld bc, $000c
    ld [bc], a
    inc c
    inc b
    inc b
    inc c
    sub h
    inc c
    db $10
    ld de, $200c
    ld [bc], a
    inc c
    inc h
    inc b
    inc c
    inc [hl]
    ld a, [bc]
    inc c
    sub b
    nop
    inc c
    ld b, d
    nop
    inc c
    ld b, d

jr_027_616e:
    nop
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    nop

jr_027_6174:
    ld bc, $540c
    ld a, [bc]
    inc c
    or b
    nop
    inc c
    ld h, d
    nop
    inc c
    ld h, d
    nop
    ld a, [de]
    dec de
    ld [hl], $37
    db $10
    ld de, $340c
    inc e
    inc c
    adc [hl]
    nop
    inc c
    adc b
    ld [bc], a
    jr nc, jr_027_61c3

    inc [hl]
    dec [hl]
    inc c
    ld d, d
    inc c
    inc c
    xor [hl]
    nop
    inc c
    ldh a, [rP1]
    inc c
    xor b
    ld [bc], a
    ld [hl], $37
    inc c
    ld [hl], d
    ld a, [bc]
    jr z, jr_027_61d0

    inc c
    ret z

    ld [bc], a
    inc c
    jp nz, Jump_000_0c16

    ld [de], a
    inc c
    inc c
    add sp, $02
    inc c
    ld [c], a
    ld d, $0c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    nop
    jr z, jr_027_61e7

    nop
    nop
    nop
    inc l
    dec l

jr_027_61c3:
    jr nc, jr_027_61f6

    jr nc, jr_027_61f8

    inc h
    dec h
    nop
    nop
    ld [bc], a
    rst $38
    nop
    inc d
    rlca

jr_027_61d0:
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_027_61d5

jr_027_61d5:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_027_61e2

    nop
    inc d

jr_027_61e2:
    ld [$0000], sp
    rrca
    dec l

jr_027_61e7:
    ld [$0009], sp
    add b
    nop
    ld a, [bc]
    dec bc
    nop
    ld [$050f], sp
    jr jr_027_620d

    nop
    and b

jr_027_61f6:
    nop
    ld a, [de]

jr_027_61f8:
    dec de
    nop
    jr z, jr_027_620b

    dec b
    nop
    ld [$0000], sp
    ret nz

    inc b
    nop
    inc c
    rrca
    ld bc, $2800
    nop
    nop

jr_027_620b:
    ldh [rDIV], a

jr_027_620d:
    nop
    xor h
    rrca
    ld b, c
    ld [bc], a
    inc bc
    nop
    ld b, b
    ld d, $00
    nop
    ld [bc], a
    nop
    ld [de], a
    ld a, [bc]
    ld [de], a
    inc de
    nop
    ld h, b
    ld d, $00
    jr nz, jr_027_6226

    nop
    ld [hl-], a

jr_027_6226:
    rrca
    ld bc, $8000
    ld a, [de]
    nop
    inc d
    ld c, $00
    and b
    ld a, [de]
    nop
    ld [hl], h
    rra
    add hl, sp
    nop
    ld [bc], a
    nop
    jr z, @+$2b

    nop
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_6272

    jr nc, jr_027_6274

    inc h
    dec h
    nop
    nop
    ld [bc], a
    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_027_6251

jr_027_6251:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_027_625e

    nop
    inc d

jr_027_625e:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    jr nc, jr_027_629a

    inc [hl]
    dec [hl]
    ld b, $07
    nop
    ld b, d
    nop
    inc h
    dec h

jr_027_6272:
    nop
    inc d

jr_027_6274:
    ld [$2f2e], sp
    jr jr_027_6292

    jr @+$1b

    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld d, $17
    nop
    ld h, d
    nop
    ld h, $27
    nop
    inc d
    ld [$0b0a], sp
    jr c, @+$3b

    jr c, jr_027_62ca

    nop

jr_027_6292:
    ld [$3400], sp
    dec [hl]
    nop
    adc d
    nop
    nop

jr_027_629a:
    ld a, [bc]
    nop
    nop
    inc d
    ld [$1b1a], sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    nop
    jr z, jr_027_62a8

jr_027_62a8:
    ld [hl], $37
    nop
    xor d
    nop
    nop
    ld a, [hl+]
    nop
    nop
    inc d
    ld [$0800], sp
    nop
    nop
    add d
    nop
    nop
    add h
    ld b, $00
    ld d, d
    ld a, [bc]
    nop
    jr z, jr_027_62c2

jr_027_62c2:
    nop
    and d
    nop
    nop
    and h
    ld b, $00
    or d

jr_027_62ca:
    inc c
    nop
    adc h
    ld [bc], a
    nop
    db $c4, $04, $00
    ret nc

    ld c, $00
    xor h
    ld [bc], a
    nop
    db $e4
    inc b
    nop
    ldh a, [$0c]
    inc b
    dec b
    nop
    nop
    inc d
    nop
    db $c2, $02, $00

    sub b
    inc c
    inc d
    dec d
    nop
    jr nz, jr_027_6301

    nop
    ld [c], a
    ld [bc], a
    nop
    or b
    inc c
    inc l
    dec l
    nop
    adc [hl]
    nop
    nop
    adc d
    ld [bc], a
    inc [hl]
    dec [hl]
    nop
    add d
    nop
    nop

jr_027_6301:
    ld d, d
    inc c
    nop
    xor [hl]
    nop
    nop
    xor d
    ld [bc], a
    ld [hl], $37
    nop
    and d
    nop
    nop
    ld [hl], d
    ld a, [bc]
    jr z, jr_027_633c

    ld [bc], a
    inc bc
    nop
    db $c2, $1a, $00

    ld [de], a
    inc c
    ld [de], a
    inc de
    nop
    ld [c], a
    ld a, [de]
    nop
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    nop
    jr z, @+$2b

    nop
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_6360

    jr nc, jr_027_6362

    inc h
    dec h
    nop
    nop
    ld [bc], a
    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl

jr_027_633c:
    nop
    jr nz, jr_027_633f

jr_027_633f:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_027_634c

    nop
    inc d

jr_027_634c:
    ld [$0000], sp
    ld [$0706], sp
    ld [$0809], sp
    add hl, bc
    inc h
    dec h
    nop
    inc d
    rrca
    dec b
    ld d, $17
    jr jr_027_6379

jr_027_6360:
    jr @+$1b

jr_027_6362:
    ld h, $27
    nop
    inc d
    ld [$4e00], sp
    ld [bc], a
    nop
    ld b, $02
    jr nc, jr_027_63a0

    inc [hl]
    dec [hl]
    jr c, jr_027_63ac

    nop
    ld d, d
    ld a, [bc]
    nop
    ld l, [hl]
    ld [bc], a

jr_027_6379:
    nop
    ld h, $02
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld a, [hl-]
    dec sp
    nop
    ld [hl], d
    ld a, [bc]
    nop
    ld [$0204], sp
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    nop
    ld d, d
    ld a, [bc]
    nop
    jr z, jr_027_639c

    ld [de], a
    inc de
    ld [de], a
    inc de

jr_027_639c:
    inc d
    dec d
    ld [hl], $37

jr_027_63a0:
    ld [hl], $37
    nop
    or d
    rrca
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    jr c, @+$3b

    nop

jr_027_63ac:
    sub b
    inc c
    nop
    jr z, jr_027_63b9

    ld l, $2f
    ld a, [hl-]
    dec sp
    nop
    or b
    inc c
    inc b

jr_027_63b9:
    dec b
    nop
    ld c, d
    inc b
    ld [$0a09], sp
    dec bc
    nop
    ld [$0002], sp
    inc d
    ld [$1514], sp
    nop
    ld l, d
    inc b
    jr @+$1b

    ld a, [de]
    dec de
    nop
    jr z, jr_027_63d5

    nop
    inc d

jr_027_63d5:
    ld [$0600], sp
    ld [bc], a
    nop
    ld c, $10
    nop
    add h
    inc d
    nop
    ld d, d
    ld a, [bc]
    nop
    ld h, $02
    nop
    ld l, $10
    nop
    and h
    inc d
    nop
    ld [hl], d
    ld a, [bc]
    nop
    add $02
    nop
    jp nz, RST_18

    ld [de], a
    inc c
    nop
    add sp, $00
    nop
    ld [c], a
    jr jr_027_63fe

jr_027_63fe:
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_643d

    jr nc, @+$33

    inc h
    dec h
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_641c

jr_027_641c:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_027_6429

    inc c
    inc d

jr_027_6429:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [$0600], sp
    rlca
    inc c
    ld b, d
    nop
    inc h
    dec h
    inc c

jr_027_643d:
    inc d
    ld [$2f2e], sp
    jr jr_027_645c

    jr @+$1b

    ld a, [de]
    dec de
    inc c
    jr z, jr_027_644a

jr_027_644a:
    ld d, $17
    inc c
    ld h, d
    nop
    ld h, $27
    inc c
    inc d
    ld [$0b0a], sp
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    jr c, jr_027_6495

jr_027_645c:
    inc c
    ld [$0c00], sp
    ld [$3800], sp
    add hl, sp
    inc c
    ld d, d
    ld a, [bc]
    ld a, [de]
    dec de
    ld [hl], $37
    ld [hl], $37
    ld a, [hl-]
    dec sp
    inc c
    jr z, jr_027_6472

jr_027_6472:
    inc c
    jr z, jr_027_6475

jr_027_6475:
    ld a, [hl-]
    dec sp
    inc c
    ld [hl], d
    ld a, [bc]
    inc c
    ld [$0000], sp
    ld bc, $0302
    inc b
    dec b
    inc c
    adc h
    ld [bc], a
    inc c
    sub b
    inc c
    inc c
    jr z, jr_027_648c

jr_027_648c:
    db $10
    ld de, $1312
    inc d
    dec d
    inc c
    xor h
    ld [bc], a

jr_027_6495:
    inc c
    or b
    rrca
    ld bc, $0c0c
    ld [bc], a
    ld [bc], a
    inc bc
    inc c
    add $00
    inc c
    ret nc

    rrca
    ld bc, $2c0c
    ld [bc], a
    ld [de], a
    inc de
    inc c
    and $00
    inc c
    or b
    inc c
    inc c
    ret z

    nop
    inc c
    ld c, h
    ld [bc], a
    inc c
    ld b, d
    ld [bc], a
    inc [hl]
    dec [hl]
    inc c
    ld d, d
    ld a, [bc]
    inc c
    add sp, $00
    inc c
    ld l, h
    ld [bc], a
    inc c
    ld h, d
    ld [bc], a
    ld [hl], $37
    inc c
    ld [hl], d
    ld a, [bc]
    inc c
    ld b, $02
    inc c
    add d
    jr jr_027_64df

    ld d, d
    inc c
    inc c
    xor b
    inc b
    inc c
    xor b
    inc b
    inc c
    ld [hl], d
    ld a, [bc]
    inc c

jr_027_64df:
    ld [$0c12], sp
    jp nz, Jump_000_0c18

    ld [de], a
    inc c
    inc c
    ld a, [hl+]
    db $10
    inc c
    ld [c], a
    jr jr_027_64fa

    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l

jr_027_64fa:
    jr nc, jr_027_652d

    jr nc, jr_027_652f

    inc h
    dec h
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_650c

jr_027_650c:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_027_6519

    inc c
    inc d

jr_027_6519:
    ld [$000c], sp
    ld [$0706], sp
    ld [$0809], sp
    add hl, bc
    inc h
    dec h
    inc c
    inc d
    rrca
    dec b
    ld d, $17
    jr jr_027_6546

jr_027_652d:
    jr jr_027_6548

jr_027_652f:
    ld h, $27
    inc c
    inc d
    ld [$500c], sp
    nop
    inc l
    dec l
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    jr nc, jr_027_6570

    jr c, jr_027_657a

    inc c
    adc h
    nop
    inc c
    ld d, d

jr_027_6546:
    ld a, [bc]
    inc c

jr_027_6548:
    ld [hl], b
    nop
    ld l, $2f
    ld a, [de]
    dec de
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    inc c
    xor h
    nop
    inc c
    ld [hl], d
    ld a, [bc]
    inc c
    ld c, d
    nop
    inc c
    add [hl]
    nop
    inc c
    adc b
    nop
    inc c
    adc d
    ld [bc], a
    inc c
    ld d, d
    ld a, [bc]
    inc c
    ld l, d
    nop
    inc c
    and [hl]
    nop
    inc c

jr_027_6570:
    xor b
    nop
    inc c
    xor d
    ld [bc], a
    inc c
    or d
    inc c
    jr nc, @+$33

jr_027_657a:
    inc c
    add $04
    inc c
    jp z, Jump_000_0c02

    jp nc, Jump_000_320c

    inc sp
    inc c
    and $04
    inc c
    ld [$0c02], a
    ld [hl], d
    ld a, [bc]
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    adc h
    ld [bc], a
    inc c
    ld a, [bc]
    rra
    inc bc
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    xor h
    ld [bc], a
    inc c
    ld a, [hl+]
    rra
    inc bc
    inc c
    nop
    nop
    inc c
    ld b, b
    inc d
    jr nc, jr_027_65dd

    nop
    ld bc, $0302
    inc c
    ld [de], a
    ld c, $0c
    ld h, b
    inc d
    ld [hl-], a
    inc sp
    db $10
    ld de, $1312
    inc c
    ld [hl-], a
    rrca
    ld bc, $820c
    db $10
    inc c
    ret z

    db $10
    inc c
    ld c, $0f
    dec b
    inc c
    and d
    db $10
    inc c
    add sp, $10
    inc c
    ld l, $0e
    nop
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l

jr_027_65dd:
    jr nc, jr_027_6610

    jr nc, jr_027_6612

    inc h
    dec h
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_65ef

jr_027_65ef:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_027_65fc

    inc c
    inc d

jr_027_65fc:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    jr c, jr_027_6640

    jr nc, jr_027_663a

    ld b, $07
    ld [$0c09], sp
    inc c
    nop

jr_027_6610:
    inc c
    inc d

jr_027_6612:
    ld [$2f2e], sp
    jr jr_027_6630

    jr jr_027_6632

    ld a, [de]
    dec de
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    ld d, $17
    jr @+$1b

    inc c
    inc l
    nop
    inc c
    inc d
    ld [$0b0a], sp
    inc [hl]
    dec [hl]
    inc c
    add d
    nop

jr_027_6630:
    jr c, jr_027_666b

jr_027_6632:
    inc c
    ld c, b
    nop
    inc c
    ld a, [bc]
    ld [bc], a
    inc c
    inc d

jr_027_663a:
    ld [$1b1a], sp
    ld [hl], $37
    inc c

jr_027_6640:
    and d
    nop
    ld a, [hl-]
    dec sp
    inc c
    ld l, b
    nop
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    inc d
    ld [$080c], sp
    nop
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    dec b
    jr nc, jr_027_668b

    jr c, jr_027_6695

    inc c
    ld d, b
    inc c
    inc c
    jr z, jr_027_6662

jr_027_6662:
    db $10
    ld de, $1312
    ld [de], a
    inc de
    inc d
    dec d
    ld [hl-], a

jr_027_666b:
    inc sp
    ld a, [hl-]
    dec sp
    inc c
    or b
    rrca
    ld bc, $0c0c
    ld [bc], a
    inc c
    ld b, $00
    jr c, jr_027_66b3

    ld b, $07
    inc h
    dec h
    inc c
    call nc, $0c0c
    inc l
    ld [bc], a
    inc c
    ld h, $00
    ld a, [hl-]
    dec sp
    ld d, $17

jr_027_668b:
    ld h, $27
    inc c
    inc d
    ld [$c60c], sp
    nop
    inc c
    nop

jr_027_6695:
    ld [$0a0c], sp
    nop
    inc c
    inc d
    ld [$e60c], sp
    nop
    inc c
    jr nz, jr_027_66aa

    inc c
    ld a, [hl+]
    nop
    inc c
    inc d
    ld [$000c], sp

jr_027_66aa:
    ld [bc], a
    inc c
    ld b, [hl]
    rra
    rlca
    inc c
    jr nz, jr_027_66b4

    inc c

jr_027_66b3:
    ld h, [hl]

jr_027_66b4:
    rra
    ld de, $2928
    inc c
    add $00
    inc c
    ld b, d
    db $10
    inc c
    sub h
    rra
    inc bc
    ld a, [hl+]
    dec hl
    inc c
    and $00
    inc c
    ld h, d
    db $10
    inc c
    inc d
    ld [$0200], sp
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_670a

    jr nc, @+$33

    inc h
    dec h
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_66e9

jr_027_66e9:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_027_66f6

    inc c
    inc d

jr_027_66f6:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [$0600], sp
    rlca
    inc c
    ld b, d
    nop
    inc h
    dec h
    inc c

jr_027_670a:
    inc d
    ld [$2f2e], sp
    jr jr_027_6729

    jr jr_027_672b

    ld a, [de]
    dec de
    inc c
    jr z, jr_027_6717

jr_027_6717:
    ld d, $17
    inc c
    ld h, d
    nop
    ld h, $27
    inc c
    inc [hl]
    ld a, [bc]
    inc c
    ld [$0c00], sp
    add d
    ld [bc], a
    inc [hl]
    dec [hl]

jr_027_6729:
    inc c
    adc h

jr_027_672b:
    nop
    inc c
    ld d, d
    inc c
    inc c
    jr z, jr_027_6732

jr_027_6732:
    inc c
    and d
    ld [bc], a
    ld [hl], $37
    inc c
    xor h
    nop
    inc c
    ld [hl], d
    ld c, $38
    add hl, sp
    inc c
    call nz, Call_000_0c06
    sub b
    rrca
    ld bc, $3b3a
    inc c
    db $e4
    ld b, $0c
    or b
    ld c, $34
    dec [hl]
    jr c, jr_027_678b

    inc c
    add d
    inc b
    inc c
    adc $0f
    ld bc, $3736
    ld a, [hl-]
    dec sp
    inc c
    and d
    inc b
    inc c
    xor $0f
    dec b
    inc c
    call nz, Call_000_0c06
    ld a, [bc]
    nop
    inc c
    inc d
    ld e, $0c
    db $e4
    ld b, $0c
    ld a, [hl+]
    nop
    inc c
    db $f4
    inc c
    inc c
    adc h
    nop
    inc c
    add d
    ld b, $0c
    ld [de], a
    ld e, $0c
    xor h
    nop
    inc c
    and d
    ld b, $0c
    ld [hl], d
    ld a, [bc]
    jr z, jr_027_67b3

    ld [bc], a

jr_027_678b:
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    ld [$0000], sp
    ld bc, $c20c
    db $10
    inc c
    ld [de], a
    inc c
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    jr z, jr_027_67a4

jr_027_67a4:
    db $10
    ld de, $e20c
    db $10
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    nop
    jr z, jr_027_67da

    nop
    nop

jr_027_67b3:
    nop
    inc l
    dec l
    jr nc, jr_027_67e9

    jr nc, jr_027_67eb

    inc h
    dec h
    nop
    nop
    ld [bc], a
    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_027_67c8

jr_027_67c8:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_027_67d5

    nop
    inc d

jr_027_67d5:
    ld [$0000], sp
    rrca
    ld c, l

jr_027_67da:
    nop
    ld h, b
    rrca
    ld c, l
    nop
    ret nz

    rrca
    ld c, l
    nop
    jr nz, jr_027_6804

    ld c, l
    nop
    add b
    rra

jr_027_67e9:
    dec l
    nop

jr_027_67eb:
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, @+$33

    jr nc, jr_027_6829

    inc h
    dec h
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c

jr_027_6804:
    jr nz, jr_027_6806

jr_027_6806:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_027_6813

    inc c
    inc d

jr_027_6813:
    ld [$040c], sp
    nop
    ld [$0a09], sp
    dec bc
    inc c
    ld [$070f], sp
    ld l, $2f
    jr @+$1b

    ld a, [de]
    dec de
    inc c
    jr z, jr_027_6837

    add hl, bc

jr_027_6829:
    jr c, jr_027_6864

    jr c, jr_027_6866

    inc c
    ld c, b
    rrca
    add hl, bc
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    inc c
    ld l, b

jr_027_6837:
    rrca
    dec c
    nop
    ld bc, $0302
    inc c
    nop
    ld [bc], a
    inc c
    sub d
    rrca
    inc bc
    db $10
    ld de, $1312
    inc c
    jr nz, jr_027_684d

    inc c
    ld [hl-], a

jr_027_684d:
    ld c, $0c
    ld [$0c08], sp
    ld d, b
    rrca
    ld bc, $280c
    ld [$700c], sp
    rrca
    dec b
    ld b, $07
    ld [$0c09], sp
    adc h
    rrca
    add hl, bc

jr_027_6864:
    ld d, $17

jr_027_6866:
    jr jr_027_6881

    inc c
    ld l, h
    rrca
    ld b, e
    jr z, jr_027_6897

    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    ld [$090f], sp
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    jr z, jr_027_688c

    dec b
    nop
    ld [bc], a
    inc c

jr_027_6881:
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_68bb

    jr nc, jr_027_68bd

jr_027_688c:
    inc h
    dec h
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl

jr_027_6897:
    inc c
    jr nz, jr_027_689a

jr_027_689a:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_027_68a7

    inc c
    inc d

jr_027_68a7:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [$050f], sp
    ld l, $2f
    jr jr_027_68d1

    jr jr_027_68d3

    ld a, [de]

jr_027_68bb:
    dec de
    inc c

jr_027_68bd:
    jr z, jr_027_68ce

    rlca
    inc c
    ld [$0c00], sp
    add d
    ld [bc], a
    inc c
    ld c, h
    rrca
    inc bc
    inc c
    jr z, jr_027_68cd

jr_027_68cd:
    inc c

jr_027_68ce:
    and d
    ld [bc], a
    inc c

jr_027_68d1:
    ld l, h
    rrca

jr_027_68d3:
    dec b
    nop
    ld bc, $0302
    inc c
    add $00
    inc c
    nop
    ld [bc], a
    inc c
    sub d
    ld c, $10
    ld de, $1312
    inc c
    and $00
    inc c
    jr nz, jr_027_68ed

    inc c
    ld [hl], d

jr_027_68ed:
    ld c, $0c
    inc c
    inc b
    inc c
    call z, Call_000_050f
    inc c
    inc l
    inc b
    inc c
    db $ec
    rrca
    inc bc
    jr c, jr_027_6937

    ld b, $07
    inc c
    ld b, d
    nop
    inc c
    ld b, [hl]
    ld [de], a
    inc c
    inc c
    nop
    inc c
    ld d, h
    ld a, [bc]
    ld a, [hl-]
    dec sp
    ld d, $17
    inc c
    ld h, d
    nop
    inc c
    ld h, [hl]
    ld [de], a
    inc c
    inc l
    nop
    inc c
    inc [hl]
    inc e
    jr c, @+$3b

    inc c
    add d
    ld a, [bc]
    inc c
    ld d, h
    inc e
    ld a, [hl-]
    dec sp
    inc c
    and d
    ld a, [bc]
    inc c
    inc d
    ld [$2928], sp
    inc c
    add $00
    inc b
    dec b
    inc c
    ld [$0c00], sp

jr_027_6937:
    call nz, Call_000_0c00
    db $10
    ld c, $0c
    and $00
    inc d
    dec d
    inc c
    jr z, jr_027_6944

jr_027_6944:
    inc c
    db $e4
    nop
    inc c
    jr nc, jr_027_6956

    nop
    ld [bc], a
    inc b
    jr z, jr_027_6978

    inc b
    nop
    nop
    inc l
    dec l
    jr nc, @+$33

jr_027_6956:
    jr nc, jr_027_6989

    inc h
    dec h
    inc b
    nop
    ld [bc], a
    rst $38
    inc b
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc b
    jr nz, jr_027_6966

jr_027_6966:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc b
    jr nz, jr_027_6973

    inc b
    inc d

jr_027_6973:
    ld [$0004], sp
    rrca
    dec [hl]

jr_027_6978:
    inc [hl]
    dec [hl]
    inc b
    ld a, [bc]
    rrca
    dec bc
    ld [hl], $37
    inc b
    ld l, d
    rrca
    rrca
    ld b, $07
    ld [$0809], sp

jr_027_6989:
    add hl, bc
    inc h
    dec h
    inc b
    sub h
    rrca
    dec b
    ld d, $17
    jr @+$1b

    jr jr_027_69af

    ld h, $27
    inc b
    inc [hl]
    rrca
    inc bc
    inc [hl]
    dec [hl]
    jr c, jr_027_69d9

    inc b
    ld [$0402], sp
    inc d
    rrca
    inc bc
    ld [hl], $37
    ld a, [hl-]
    dec sp
    inc b
    jr z, jr_027_69b0

    inc b

jr_027_69af:
    db $f4

jr_027_69b0:
    rrca
    ld c, l
    inc b
    ld d, h
    rra
    inc hl
    jr nc, jr_027_69e9

    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    ld [de], a
    rrca
    rlca
    db $10
    ld de, $1312
    ld [de], a
    inc de
    inc b
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_6a08

    jr nc, jr_027_6a0a

jr_027_69d9:
    inc h
    dec h
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_69e7

jr_027_69e7:
    ld l, $2f

jr_027_69e9:
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_027_69f4

    inc c
    inc d

jr_027_69f4:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [$050f], sp
    ld l, $2f
    jr jr_027_6a1e

    jr jr_027_6a20

    ld a, [de]

jr_027_6a08:
    dec de
    inc c

jr_027_6a0a:
    jr z, jr_027_6a1b

    rlca
    inc c
    ld [$3800], sp
    add hl, sp
    inc c
    ld c, b
    rrca
    rlca
    inc c
    jr z, jr_027_6a19

jr_027_6a19:
    ld a, [hl-]
    dec sp

jr_027_6a1b:
    inc c
    ld l, b
    rrca

jr_027_6a1e:
    dec c
    inc [hl]

jr_027_6a20:
    dec [hl]
    inc [hl]
    dec [hl]
    ld b, $07
    inc c
    ld b, d
    nop
    inc h
    dec h
    inc c
    sub h
    rrca
    ld bc, $3736
    ld [hl], $37
    ld d, $17
    inc c
    ld h, d
    nop
    ld h, $27
    inc c
    or h
    rrca
    dec b
    inc c
    add [hl]
    inc b
    inc c
    call nc, Call_000_050f
    inc c
    and [hl]
    inc b
    inc c
    inc d
    ld [$2928], sp
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    ld [$051f], sp
    ld a, [hl+]
    dec hl
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    jr z, jr_027_6a80

    rlca
    inc c
    ld [bc], a
    ld b, $0c
    ld c, h
    rra
    inc bc
    inc c
    ld [hl+], a
    ld b, $0c
    ld l, h
    rra
    dec c
    nop
    ld bc, $420c
    db $10
    inc c
    ld [de], a
    rrca
    rlca
    db $10
    ld de, $620c
    db $10
    inc c
    ld [hl-], a

jr_027_6a80:
    ld a, [bc]
    nop
    ld [bc], a
    nop
    jr z, @+$2b

    nop
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_6abe

    jr nc, @+$33

    inc h
    dec h
    nop
    nop
    ld [bc], a
    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_027_6a9d

jr_027_6a9d:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_027_6aaa

    nop
    inc d

jr_027_6aaa:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    nop
    ld [$0600], sp
    rlca
    nop
    ld b, d
    nop
    inc h
    dec h
    nop

jr_027_6abe:
    inc d
    ld [$2f2e], sp
    jr jr_027_6add

    jr jr_027_6adf

    ld a, [de]
    dec de
    nop
    jr z, jr_027_6acb

jr_027_6acb:
    ld d, $17
    nop
    ld h, d
    nop
    ld h, $27
    nop
    inc [hl]
    ld a, [bc]
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    jr c, @+$3b

    nop
    add [hl]

jr_027_6add:
    ld [bc], a
    nop

jr_027_6adf:
    add d
    nop
    nop
    ld d, d
    inc c
    ld [hl], $37
    ld [hl], $37
    ld a, [hl-]
    dec sp
    nop
    and [hl]
    ld [bc], a
    nop
    and d
    nop
    nop
    ld [hl], d
    ld c, $30
    ld sp, $3938
    nop
    ld [$0000], sp
    add $00
    nop
    sub b
    rrca
    ld bc, $3332
    ld a, [hl-]
    dec sp
    nop
    jr z, jr_027_6b08

jr_027_6b08:
    nop
    and $00
    nop
    or b
    rrca
    ld c, l
    nop
    db $10
    rra
    ld hl, $8400
    rrca
    add hl, hl
    jr z, jr_027_6b42

    ld [bc], a
    inc bc
    nop
    db $c2, $1a, $00

    ld [de], a
    inc c
    ld [de], a
    inc de
    nop
    ld [c], a
    ld a, [de]
    nop
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    nop
    jr z, jr_027_6b57

    nop
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_6b66

    jr nc, jr_027_6b68

    inc h
    dec h
    nop
    nop
    ld [bc], a
    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl

jr_027_6b42:
    nop
    jr nz, jr_027_6b45

jr_027_6b45:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_027_6b52

    nop
    inc d

jr_027_6b52:
    ld [$0000], sp
    rrca
    ld c, l

jr_027_6b57:
    nop
    ld h, b
    rrca
    ld c, l
    nop
    ret nz

    rrca
    ld c, l
    nop
    jr nz, jr_027_6b81

    ld c, l
    nop
    ld b, b
    ld [de], a

jr_027_6b66:
    jr z, jr_027_6b91

jr_027_6b68:
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    nop
    ret nz

    inc d
    nop
    ld d, h
    ld e, $2a
    dec hl
    ld [de], a
    inc de
    ld [de], a
    inc de
    nop
    ldh [rNR14], a
    nop
    ld d, h
    jr jr_027_6b7f

jr_027_6b7f:
    ld [bc], a
    inc b

jr_027_6b81:
    jr z, @+$2b

    inc b
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_6bbb

    jr nc, jr_027_6bbd

    inc h
    dec h
    inc b
    nop
    ld [bc], a

jr_027_6b91:
    rst $38
    inc b
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc b
    jr nz, jr_027_6b9a

jr_027_6b9a:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc b
    jr nz, jr_027_6ba7

    inc b
    inc d

jr_027_6ba7:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc b
    ld [$050f], sp
    ld l, $2f
    jr jr_027_6bd1

    jr jr_027_6bd3

    ld a, [de]

jr_027_6bbb:
    dec de
    inc b

jr_027_6bbd:
    jr z, jr_027_6bce

    rlca
    inc b
    ld [$0400], sp
    add d
    ld [bc], a
    inc b
    ld c, h
    rrca
    inc bc
    inc b
    jr z, jr_027_6bcd

jr_027_6bcd:
    inc b

jr_027_6bce:
    and d
    ld [bc], a
    inc b

jr_027_6bd1:
    inc l
    rrca

jr_027_6bd3:
    inc bc
    jr c, jr_027_6c0f

    nop
    ld bc, $0302
    inc b
    add $00
    inc b
    nop
    ld [bc], a
    inc b
    ld d, d
    inc c
    ld a, [hl-]
    dec sp
    db $10
    ld de, $1312
    inc b
    and $00
    inc b
    jr nz, jr_027_6bf1

    inc b
    or d

jr_027_6bf1:
    ld c, $06
    rlca
    inc b
    ld b, d
    nop
    inc b
    ld b, $14
    inc h
    dec h
    inc b
    call nc, Call_000_160c
    rla
    inc b
    ld h, d
    nop
    inc b
    ld h, $14
    ld h, $27
    inc b
    ld [hl], h
    inc c
    inc [hl]
    dec [hl]
    inc b

jr_027_6c0f:
    add d
    inc b
    inc b
    ld b, h
    db $10
    inc b
    ld [de], a
    inc e
    ld [hl-], a
    inc sp
    ld [hl], $37
    inc b
    and d
    inc b
    inc b
    ld h, h
    db $10
    inc b
    ld [hl-], a
    inc e
    inc b
    ld b, h
    db $10
    inc [hl]
    dec [hl]
    inc b
    add [hl]
    ld d, $04
    ld [de], a
    inc e
    inc b
    ld h, h
    db $10
    ld [hl], $37
    inc b
    and [hl]
    ld d, $04
    ld [hl-], a
    ld a, [de]
    jr z, jr_027_6c65

    inc b
    add $02
    inc b
    jp nz, $0416

    ld [de], a
    inc c
    inc b
    and $02
    inc b
    ld [c], a
    ld d, $04
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    nop
    jr z, @+$2b

    nop
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_6c8b

    jr nc, jr_027_6c8d

    inc h
    dec h
    nop
    nop
    ld [bc], a
    rst $38
    nop
    inc d
    rlca

jr_027_6c65:
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_027_6c6a

jr_027_6c6a:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_027_6c77

    nop
    inc d

jr_027_6c77:
    ld [$0000], sp
    ld [$0706], sp
    ld [$0809], sp
    add hl, bc
    inc h
    dec h
    nop
    inc d
    rrca
    dec b
    ld d, $17
    jr jr_027_6ca4

jr_027_6c8b:
    jr jr_027_6ca6

jr_027_6c8d:
    ld h, $27
    nop
    inc [hl]
    rrca
    dec b
    nop
    adc b
    ld [bc], a
    nop
    ld d, d
    rrca
    rlca
    nop
    xor b
    ld [bc], a
    nop
    ld [hl], d
    rrca
    ld bc, $2928
    ld [bc], a

jr_027_6ca4:
    inc bc
    nop

jr_027_6ca6:
    ret z

    nop
    inc b
    dec b
    nop
    sub b
    rrca
    inc bc
    ld a, [hl+]
    dec hl
    ld [de], a
    inc de
    nop
    add sp, $00
    inc d
    dec d
    nop
    or b
    rrca
    dec b
    nop
    nop
    ld b, $00
    jp nc, Jump_000_030f

    nop
    jr nz, jr_027_6ccb

    nop
    ld a, [c]
    rrca
    ld c, l
    nop
    ld d, d

jr_027_6ccb:
    rra
    add hl, hl
    nop
    add $00
    nop
    ld [de], a
    rrca
    ld bc, $6000
    ld d, $12
    inc de
    nop
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc b
    jr z, @+$2b

    inc b
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_6d19

    jr nc, jr_027_6d1b

    inc h
    dec h
    inc b
    nop
    ld [bc], a
    rst $38
    inc b
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc b
    jr nz, jr_027_6cf8

jr_027_6cf8:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc b
    jr nz, jr_027_6d05

    inc b
    inc d

jr_027_6d05:
    ld [$0004], sp
    ld [$0706], sp
    ld [$0809], sp
    add hl, bc
    inc h
    dec h
    inc b
    inc d
    rrca
    dec b
    ld d, $17
    jr jr_027_6d32

jr_027_6d19:
    jr jr_027_6d34

jr_027_6d1b:
    ld h, $27
    inc b
    inc d
    ld [$2d2c], sp
    inc b
    ld c, [hl]
    nop
    ld a, [bc]
    dec bc
    inc b
    ld [$0400], sp
    adc b
    ld [bc], a
    inc b
    ld d, d
    ld a, [bc]
    ld l, $2f

jr_027_6d32:
    inc b
    ld l, [hl]

jr_027_6d34:
    nop
    ld a, [de]
    dec de
    inc b
    jr z, jr_027_6d3a

jr_027_6d3a:
    inc b
    xor b
    ld [bc], a
    inc b
    ld [hl], d
    inc c
    jr c, @+$3b

    jr nc, jr_027_6d75

    inc b
    jp nz, $0400

    adc d
    rrca
    dec b
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    inc b
    ld [c], a
    nop
    inc b
    xor d
    rrca
    rlca
    inc b
    jp nz, Jump_000_040a

    db $D2, $0E, $04

    ld [c], a
    ld a, [bc]
    inc b
    ld [hl], d
    inc c
    inc b
    call nz, $0400
    jp nz, RST_00

    ld bc, $0302
    inc b
    ld c, h
    db $10
    inc b
    ld [de], a
    ld a, [bc]
    inc b
    ld h, $00

jr_027_6d75:
    inc b
    ld [hl+], a
    ld [de], a
    db $10
    ld de, $1312
    inc b
    ld l, h
    db $10
    inc b
    ld [hl-], a
    inc c
    inc b
    ld c, h
    ld [de], a
    inc b
    ld d, b
    db $10
    inc b
    adc d
    inc d
    inc b
    inc d
    ld a, [bc]
    inc b
    ld l, h
    ld [de], a
    inc b
    ld [hl], b
    db $10
    inc b
    xor d
    inc d
    inc b
    inc [hl]
    ld c, $04
    ret nz

    ld a, [de]
    inc b
    inc d
    ld c, $04
    ldh [rNR30], a
    inc b
    inc d
    ld [$0200], sp
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_027_6de3

    jr nc, jr_027_6de5

    inc h
    dec h
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_6dc2

jr_027_6dc2:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_027_6dcf

    inc c
    inc d

jr_027_6dcf:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    jr nc, jr_027_6e0d

    ld b, $07
    inc c
    ld b, d
    nop
    inc h
    dec h

jr_027_6de3:
    inc c
    inc d

jr_027_6de5:
    ld [$2f2e], sp
    jr @+$1b

    jr jr_027_6e05

    ld a, [de]
    dec de
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld d, $17
    inc c
    ld h, d
    nop
    ld h, $27
    inc c
    inc [hl]
    ld a, [bc]
    inc [hl]
    dec [hl]
    inc c
    add d
    ld [bc], a
    inc c
    ld [$0c00], sp

jr_027_6e05:
    ld [$0c02], sp
    ld d, h
    ld a, [bc]
    ld [hl], $37
    inc c

jr_027_6e0d:
    and d
    ld [bc], a
    inc c
    jr z, jr_027_6e12

jr_027_6e12:
    inc c
    jr z, jr_027_6e17

    inc c
    ld [hl], h

jr_027_6e17:
    ld c, $0c
    ld [$0000], sp
    ld bc, $0302
    inc b
    dec b
    inc c
    sub b
    rrca
    inc bc
    inc c
    jr z, jr_027_6e28

jr_027_6e28:
    db $10
    ld de, $1312
    inc d
    dec d
    inc c
    or b
    rrca
    ld bc, $ca0c
    nop
    ld [bc], a
    inc bc
    inc c
    ld [bc], a
    inc b
    inc c
    sub d
    ld c, $0c
    ld [$1200], a
    inc de
    inc c
    ld [hl+], a
    inc b
    inc c
    ld [hl], d
    ld c, $0c
    ld c, h
    ld [bc], a
    inc c
    ld b, d
    ld [bc], a
    jr c, jr_027_6e89

    inc c
    sub d
    ld c, $0c
    ld l, h
    ld [bc], a
    inc c
    ld h, d
    ld [bc], a
    ld a, [hl-]
    dec sp
    inc c
    ld [hl], d
    inc c
    inc c
    adc d
    inc b
    jr c, @+$3b

    inc c
    adc d
    ld [de], a
    inc c
    ld d, d
    inc c
    inc c
    xor d
    inc b
    ld a, [hl-]
    dec sp
    inc c
    xor d
    ld [de], a
    inc c
    ld [hl], d
    ld a, [bc]
    jr z, @+$2b

    inc c
    ld b, $10
    inc c
    jp nz, Jump_000_0c18

    ld [de], a
    inc c
    inc c
    ld h, $10
    inc c
    ld [c], a
    jr @+$0e

    ld [hl-], a
    ld a, [bc]
    nop

jr_027_6e89:
    ld [bc], a
    ld b, $28
    add hl, hl
    ld b, $00
    ld c, $ff
    ld b, $14
    rlca
    ld a, [hl+]
    dec hl
    ld b, $20
    ld c, $06
    inc d
    ld [$2d2c], sp
    ld [$0609], sp
    ld b, d
    ld a, [bc]
    inc h
    dec h
    ld b, $14
    ld [$2f2e], sp
    jr jr_027_6ec5

    ld b, $62
    ld a, [bc]
    ld h, $27
    ld b, $34
    ld a, [bc]
    jr nc, @+$33

    ld b, $82
    ld a, [bc]
    ld b, $52
    inc c
    ld [hl-], a
    inc sp
    ld b, $a2
    ld a, [bc]
    ld b, $72
    rrca
    ld c, l

jr_027_6ec5:
    ld b, $d2
    rrca
    ld c, l
    ld b, $32
    rra
    dec sp
    jr z, jr_027_6ef8

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $42
    stop
    ld bc, $c206
    db $10
    ld b, $12
    inc c
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    dec d
    ld b, $22
    db $10
    db $10
    ld de, $e206
    db $10
    ld b, $32
    ld a, [bc]
    nop
    ld [bc], a
    nop
    jr z, jr_027_6f1f

    nop
    nop

jr_027_6ef8:
    ld c, $ff
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_027_6f10

    nop
    inc d
    ld [$0000], sp
    ld [bc], a
    inc l
    dec l
    ld [$0809], sp
    add hl, bc
    inc h
    dec h

jr_027_6f10:
    nop
    ld c, $0f
    dec b
    ld l, $2f
    jr @+$1b

    jr jr_027_6f33

    ld h, $27
    nop
    ld l, $0f

jr_027_6f1f:
    rlca
    jr c, jr_027_6f5b

    inc [hl]
    dec [hl]
    nop
    ld c, h
    rrca
    add hl, bc
    ld a, [hl-]
    dec sp
    ld [hl], $37
    nop
    ld l, h
    rrca
    ld c, e
    jr c, jr_027_6f6b

    nop

jr_027_6f33:
    adc h
    rrca
    dec bc
    ld a, [hl-]
    dec sp
    nop
    db $ec
    rrca
    ld c, c
    inc [hl]
    dec [hl]
    nop
    ld a, [bc]
    rra
    dec bc
    ld [hl], $37
    nop
    ld l, d
    rra
    dec c
    nop
    adc d
    rrca
    dec bc
    ld [hl], $37
    nop
    xor d
    rrca
    inc bc
    nop
    ld [bc], a
    ld b, $28
    add hl, hl
    ld b, $00
    ld c, $ff

jr_027_6f5b:
    ld b, $14
    rlca
    ld a, [hl+]
    dec hl
    ld b, $20
    ld c, $06
    inc d
    ld [$2d2c], sp
    ld [$0609], sp

jr_027_6f6b:
    ld b, d
    ld a, [bc]
    inc h
    dec h
    ld b, $14
    ld [$2f2e], sp
    jr jr_027_6f8f

    ld b, $62
    ld a, [bc]
    ld h, $27
    ld b, $34
    ld a, [bc]
    jr nc, jr_027_6fb1

    jr nc, @+$33

    inc [hl]
    dec [hl]
    ld b, $82
    nop
    ld b, $88
    ld [bc], a
    ld b, $52
    inc c
    ld [hl-], a
    inc sp

jr_027_6f8f:
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld b, $a2
    nop
    ld b, $a8
    ld [bc], a
    ld b, $72
    rrca
    inc bc
    ld b, $86
    ld b, $06
    sub d
    rrca
    inc bc
    ld b, $a6
    ld b, $06
    ld [hl], d
    ld a, [bc]
    jr z, jr_027_6fd5

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b

jr_027_6fb1:
    dec b
    ld b, $c6
    nop
    nop
    ld bc, $0206
    db $10
    ld b, $12
    inc c
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    dec d
    ld b, $e6
    nop
    db $10
    ld de, $2206
    db $10
    ld b, $32
    ld a, [bc]
    ld b, $00
    ld [bc], a
    ld b, $80
    nop
    inc [hl]

jr_027_6fd5:
    dec [hl]
    inc h
    dec h
    ld b, $0e
    rrca
    dec b
    ld b, $a0
    nop
    ld [hl], $37
    ld h, $27
    ld b, $2e
    ld c, $06
    ld b, b
    rra
    dec [hl]
    ld b, $c6
    nop
    ld b, $4c
    rra
    add hl, bc
    ld b, $e6
    nop
    ld b, $6c
    rra
    ld bc, $0200
    inc c
    jr z, jr_027_7026

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_7017

    inc c
    inc d
    ld [$2d2c], sp
    ld [$0c09], sp
    ld b, d
    ld a, [bc]
    inc h
    dec h
    inc c
    inc d

jr_027_7017:
    ld [$2f2e], sp
    jr jr_027_7035

    inc c
    ld h, d
    ld a, [bc]
    ld h, $27
    inc c
    inc [hl]
    ld a, [bc]
    jr nc, jr_027_7057

jr_027_7026:
    jr nc, @+$33

    inc [hl]
    dec [hl]
    inc c
    add [hl]
    nop
    jr c, jr_027_7068

    inc c
    adc h
    nop
    inc c
    ld d, d
    inc c

jr_027_7035:
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl], $37
    inc c
    and [hl]
    nop
    ld a, [hl-]
    dec sp
    inc c
    xor h
    nop
    inc c
    ld [hl], d
    ld c, $00
    ld bc, $0302
    inc c
    add $02
    inc b
    dec b
    inc c
    sub b
    rrca
    ld bc, $1110
    ld [de], a
    inc de

jr_027_7057:
    inc c
    and $02
    inc d
    dec d
    inc c
    or b
    rrca
    ld bc, $2524
    inc c
    nop
    ld [bc], a
    inc l
    dec l
    ld a, [bc]

jr_027_7068:
    dec bc
    inc c
    sub b
    rrca
    ld bc, $2726
    inc c
    jr nz, jr_027_7074

    ld l, $2f

jr_027_7074:
    ld a, [de]
    dec de
    inc c
    or b
    rrca
    ld bc, $0706
    inc c
    ld b, d
    ld [bc], a
    ld c, $0f
    inc c
    add d
    nop
    inc c
    sub d
    ld c, $16
    rla
    inc c
    ld h, d
    ld [bc], a
    ld e, $1f
    inc c
    and d
    nop
    inc c
    ld [hl], d
    inc c
    inc c
    add [hl]
    ld [bc], a
    inc c
    add d
    nop
    inc c
    ld c, h
    rra
    inc bc
    inc c
    and [hl]
    ld [bc], a
    inc c
    and d
    nop
    inc c
    ld l, h
    rra
    ld bc, $2928
    inc c
    jp z, Jump_000_0c02

    ld c, [hl]
    ld [de], a
    inc c
    add $00
    inc c
    ld [de], a
    inc c
    inc c
    ld [$0c02], a
    ld l, [hl]
    ld [de], a
    inc c
    and $00
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, jr_027_70f0

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_70e1

    inc c
    inc d
    ld [$2d2c], sp
    ld [$0c09], sp
    ld b, d
    ld a, [bc]
    inc h
    dec h
    inc c
    inc d

jr_027_70e1:
    ld [$2f2e], sp
    jr @+$1b

    inc c
    ld h, d
    ld a, [bc]
    ld h, $27
    inc c
    inc [hl]
    ld a, [bc]
    inc [hl]
    dec [hl]

jr_027_70f0:
    inc [hl]
    dec [hl]
    jr nc, @+$33

    jr nc, jr_027_7127

    jr c, @+$3b

    inc c
    adc d
    ld [bc], a
    inc c
    ld d, d
    inc c
    ld [hl], $37
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    inc c
    xor d
    ld [bc], a
    inc c
    ld [hl], d
    ld c, $0c
    add [hl]
    nop
    jr nc, jr_027_7144

    nop
    ld bc, $0302
    inc b
    dec b
    inc [hl]
    dec [hl]
    inc c
    sub d
    ld c, $0c
    and [hl]
    nop
    ld [hl-], a
    inc sp
    db $10
    ld de, $1312

jr_027_7127:
    inc d
    dec d
    ld [hl], $37
    inc c
    ld [hl], d
    ld c, $0c
    jp z, $0200

    inc bc
    inc c
    ld b, b
    nop
    ld a, [bc]
    dec bc
    inc c
    ret nc

    rrca
    ld bc, $ea0c
    nop
    ld [de], a
    inc de
    inc c
    ld h, b
    nop

jr_027_7144:
    ld a, [de]
    dec de
    inc c
    ldh a, [rIF]
    ld bc, $0706
    inc c
    ld b, d
    nop
    ld a, [bc]
    dec bc
    inc c
    add [hl]
    nop
    inc c
    ret nc

    rrca
    ld bc, $1716
    inc c
    ld h, d
    nop
    ld a, [de]
    dec de
    inc c
    and [hl]
    nop
    inc c
    ldh a, [$0e]
    inc c
    adc d
    inc b
    inc c
    ld c, h
    ld [de], a
    inc c
    ret nc

    ld c, $0c
    xor d
    inc b
    inc c
    ld l, h
    ld [de], a
    inc c
    ldh a, [$0c]
    jr z, jr_027_71a2

    inc c
    ld b, $10
    inc b
    dec b
    inc c
    add $04
    ld [bc], a
    inc bc
    inc c
    ld [de], a
    inc c
    inc c
    ld h, $10
    inc d
    dec d
    inc c
    and $04
    ld [de], a
    inc de
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    nop
    jr z, @+$2b

    nop
    nop
    ld c, $ff
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop

jr_027_71a2:
    jr nz, @+$10

    nop
    inc d
    ld [$2d2c], sp
    ld [$0009], sp
    ld b, d
    inc b
    inc h
    dec h
    nop
    ld c, $0e
    ld l, $2f
    jr jr_027_71d0

    nop
    ld h, d
    inc b
    ld h, $27
    nop
    ld l, $0f
    ld bc, $3130
    nop
    add d
    inc b
    nop
    ld c, h
    rrca
    inc bc
    ld [hl-], a
    inc sp
    nop
    and d
    inc b
    nop
    ld l, h

jr_027_71d0:
    rrca
    ld b, c
    jr z, @+$2b

    ld [bc], a
    inc bc
    nop
    ld [bc], a
    db $10
    inc b
    dec b
    jr c, jr_027_7216

    nop
    ld c, h
    rrca
    ld bc, $2b2a
    ld [de], a
    inc de
    nop
    ld [hl+], a
    db $10
    inc d
    dec d
    ld a, [hl-]
    dec sp
    nop
    db $ec
    rrca
    inc bc
    nop
    nop
    ld [bc], a
    inc l
    dec l
    nop
    ld a, [bc]
    rra
    dec b
    nop
    jr nz, jr_027_71fe

    ld l, $2f

jr_027_71fe:
    nop
    ld a, [hl+]
    rra
    add hl, bc
    inc l
    dec l
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    nop
    ld c, h
    rra
    rlca
    ld l, $2f
    ld a, [de]
    dec de
    ld [hl], $37
    nop
    ld l, h
    rra
    add hl, bc

jr_027_7216:
    nop
    adc b
    rrca
    dec b
    nop
    ld h, d
    inc d
    nop
    xor b
    rrca
    dec b
    nop
    ld [bc], a
    nop
    jr z, jr_027_724f

    nop
    nop
    ld c, $ff
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_027_7240

    nop
    inc d
    ld [$2d2c], sp
    ld [$0009], sp
    ld b, d
    ld a, [bc]
    inc h
    dec h
    nop
    inc d

jr_027_7240:
    ld [$2f2e], sp
    jr @+$1b

    nop
    ld h, d
    ld a, [bc]
    ld h, $27
    nop
    inc d
    ld [$0b0a], sp

jr_027_724f:
    inc [hl]
    dec [hl]
    jr c, jr_027_728c

    nop
    add h
    ld b, $34
    dec [hl]
    nop
    ld d, d
    ld a, [bc]
    ld a, [de]
    dec de
    ld [hl], $37
    ld a, [hl-]
    dec sp
    nop
    and h
    ld b, $36
    scf
    nop
    ld [hl], d
    ld a, [bc]
    jr nc, @+$33

    nop
    add d
    ld [bc], a
    jr nc, @+$33

    jr nc, jr_027_72a3

    nop
    adc h
    rrca
    ld bc, $3332
    nop
    and d
    ld [bc], a
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    nop
    xor h
    rrca
    ld b, c
    inc b
    dec b
    nop
    jp nz, $0b0f

    inc d
    dec d
    nop

jr_027_728c:
    ld [c], a
    rrca
    dec bc
    inc l
    dec l
    nop
    add d
    rrca
    dec bc
    ld l, $2f
    nop
    and d
    rrca
    dec bc
    jr z, @+$2b

    ld [bc], a
    inc bc
    nop
    db $c2, $1a, $00

jr_027_72a3:
    ld [de], a
    inc c
    ld [de], a
    inc de
    nop
    ld [c], a
    ld a, [de]
    nop
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    nop
    jr z, jr_027_72db

    nop
    nop
    ld c, $ff
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_027_72cc

    nop
    inc d
    ld [$0000], sp
    rrca
    dec l
    ld [$0009], sp
    add b
    inc c
    inc h
    dec h

jr_027_72cc:
    nop
    inc d
    ld [$1918], sp
    nop
    and b
    inc c
    ld h, $27
    nop
    inc d
    ld [$3130], sp

jr_027_72db:
    nop
    ret nz

    inc c
    nop
    sub d
    ld a, [bc]
    ld [hl-], a
    inc sp
    nop
    ldh [$0c], a
    nop
    or d
    rrca
    dec sp
    ld [bc], a
    inc bc
    nop
    ld b, b
    inc e
    nop
    ld [de], a
    ld a, [bc]
    ld [de], a
    inc de
    nop
    ld h, b
    inc e
    nop
    ld [hl-], a
    rrca
    dec sp
    nop
    add b
    rra
    dec l
    nop
    ld [bc], a
    ld b, $28
    add hl, hl
    ld b, $00
    ld c, $ff
    ld b, $14
    rlca
    ld a, [hl+]
    dec hl
    ld b, $20
    ld c, $06
    inc d
    ld [$2928], sp
    inc l
    dec l
    ld [$0609], sp
    ld b, h
    ld [$2524], sp
    ld b, $14
    ld a, [bc]
    ld l, $2f
    jr jr_027_733e

    ld b, $64
    ld [$2726], sp
    ld b, $14
    ld [$0908], sp
    ld a, [bc]
    dec bc
    jr nc, jr_027_7364

    inc [hl]
    dec [hl]
    ld b, $86
    ld b, $06
    ld d, d
    ld a, [bc]
    jr jr_027_7356

    ld a, [de]

jr_027_733e:
    dec de
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld b, $a6
    ld b, $06
    ld [hl], d
    ld a, [bc]
    jr nc, jr_027_737c

    ld b, $84
    ld [bc], a
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    dec b

jr_027_7356:
    ld b, $90
    inc c
    ld [hl-], a
    inc sp
    ld b, $a4
    ld [bc], a
    db $10
    ld de, $1312
    ld [de], a
    inc de

jr_027_7364:
    inc d
    dec d
    ld b, $b0
    ld c, $06
    ret z

    ld [bc], a
    ld b, $00
    ld [bc], a
    inc l
    dec l
    ld b, $d0
    ld c, $06
    add sp, $02
    ld b, $20
    ld [bc], a
    ld l, $2f

jr_027_737c:
    ld b, $b0
    inc c
    ld [bc], a
    inc bc
    ld b, $42
    ld [$8206], sp
    nop
    ld b, $52
    ld a, [bc]
    ld [de], a
    inc de
    ld b, $62
    ld [$a206], sp
    nop
    ld b, $72
    ld a, [bc]
    ld b, $40
    nop
    ld b, $c0
    nop
    ld b, $84
    ld d, $06
    ld d, d
    ld c, $06
    ldh [rP1], a
    ld b, $a4
    ld d, $06
    ld [hl], d
    inc e
    jr z, jr_027_73d5

    ld b, $ca
    nop
    ld b, $c4
    ld d, $06
    ld [de], a
    ld c, $06
    ld [$0600], a
    db $e4
    ld d, $06
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, jr_027_73ec

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_73dd

    inc c
    inc d
    ld [$000c], sp
    inc b

jr_027_73d5:
    inc l
    dec l
    ld [$0c09], sp
    ld c, d
    ld [bc], a
    inc h

jr_027_73dd:
    dec h
    inc c
    inc d
    rrca
    ld bc, $2f2e
    jr jr_027_73ff

    inc c
    ld l, d
    ld [bc], a
    ld h, $27
    inc c

jr_027_73ec:
    inc d
    ld [$500c], sp
    nop
    inc c
    ld b, h
    ld [bc], a
    jr nc, jr_027_7427

    inc c
    adc d
    ld [bc], a
    inc c
    ld d, d
    ld a, [bc]
    inc c
    ld [hl], b
    nop

jr_027_73ff:
    inc c
    ld h, h
    ld [bc], a
    ld [hl-], a
    inc sp
    inc c
    xor d
    ld [bc], a
    inc c
    ld [hl], d
    ld a, [bc]
    jr nc, jr_027_743d

    ld b, $07
    inc c
    ld c, d
    nop
    ld a, [bc]
    dec bc
    jr nc, jr_027_7446

    nop
    ld bc, $0504
    inc c
    sub b
    inc c
    ld [hl-], a
    inc sp
    ld d, $17
    inc c
    ld l, d
    nop
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp

jr_027_7427:
    db $10
    ld de, $1514
    inc c
    or b
    ld c, $34
    dec [hl]
    inc c
    ld [bc], a
    db $10
    jr c, jr_027_746e

    jr c, jr_027_7470

    inc h
    dec h
    inc c
    adc b
    nop
    inc c

jr_027_743d:
    jp nc, $360c

    scf
    inc c
    ld [hl+], a
    db $10
    ld a, [hl-]
    dec sp

jr_027_7446:
    ld a, [hl-]
    dec sp
    ld h, $27
    inc c
    xor b
    nop
    inc c
    ld [hl], d
    ld a, [bc]
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    ld [$3810], sp
    add hl, sp
    ld b, $07
    inc c
    ret z

    nop
    inc c
    ld d, d
    ld a, [bc]
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    jr z, jr_027_747c

    ld a, [hl-]
    dec sp

jr_027_746e:
    ld d, $17

jr_027_7470:
    inc c
    add sp, $00
    inc c
    ld [hl], d
    ld a, [bc]
    inc c
    ld b, h
    ld [bc], a
    inc c
    ld b, [hl]
    ld [de], a

jr_027_747c:
    jr c, @+$3b

    inc c
    adc [hl]
    ld c, $0c
    ld h, h
    ld [bc], a
    inc c
    ld h, [hl]
    ld [de], a
    ld a, [hl-]
    dec sp
    inc c
    xor [hl]
    ld c, $0c
    nop
    ld [bc], a
    inc c
    ld b, b
    db $10
    inc c
    add $14
    inc c
    ld [de], a
    rrca
    ld bc, $600c
    db $10
    inc c
    and $14
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    ld b, $28
    add hl, hl
    ld b, $00
    ld c, $ff
    ld b, $14
    rlca
    ld a, [hl+]
    dec hl
    ld b, $20
    ld c, $06
    inc d
    ld [$0006], sp
    inc b
    inc l
    dec l
    ld [$0609], sp
    ld c, d
    ld [bc], a
    inc h
    dec h
    ld b, $14
    rrca
    ld bc, $2f2e
    jr jr_027_74e3

    ld b, $6a
    ld [bc], a
    ld h, $27
    ld b, $14
    ld [$4a06], sp
    inc b
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    ld b, $8a
    ld [bc], a
    ld b, $52
    ld a, [bc]
    ld b, $6a
    inc b
    ld a, [de]

jr_027_74e3:
    dec de
    ld [hl], $37
    ld b, $aa
    ld [bc], a
    ld b, $72
    ld a, [bc]
    jr nc, jr_027_751f

    ld b, $c0
    ld [bc], a
    jr c, jr_027_752c

    jr c, @+$3b

    ld b, $8c
    rrca
    ld bc, $3332
    ld b, $e0
    ld [bc], a
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld b, $ac
    rrca
    add hl, bc
    ld b, $c6
    ld b, $06
    jp nc, Jump_000_030f

    ld b, $e6
    ld b, $06
    ld [hl], d
    ld a, [bc]
    ld [bc], a
    inc bc
    ld b, $40
    db $10
    inc b
    dec b
    ld b, $c4
    ld b, $06
    ld d, d

jr_027_751f:
    ld a, [bc]
    ld [de], a
    inc de
    ld b, $60
    db $10
    inc d
    dec d
    ld b, $e4
    ld b, $06
    ld [hl], d

jr_027_752c:
    ld a, [bc]
    ld b, $42
    inc b
    ld b, $c0
    ld [bc], a
    nop
    ld bc, $0302
    ld b, $12
    rrca
    ld bc, $2f2e
    ld b, $e0
    ld [bc], a
    db $10
    ld de, $1312
    ld b, $32
    rrca
    inc bc
    ld b, $40
    ld [de], a
    ld b, $0e
    rrca
    rlca
    ld b, $60
    ld [de], a
    ld b, $2e
    ld c, $00
    ld [bc], a
    inc c
    jr z, jr_027_7583

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_027_7574

    inc c
    inc d
    ld [$000c], sp
    nop
    inc l
    dec l
    ld [$0c09], sp
    ld b, [hl]
    ld b, $24

jr_027_7574:
    dec h
    inc c
    inc d
    inc c
    ld l, $2f
    jr jr_027_7595

    inc c
    ld h, [hl]
    ld b, $26
    daa
    inc c
    inc d

jr_027_7583:
    ld [$500c], sp
    nop
    inc l
    dec l
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    jr nc, jr_027_75c0

    inc c
    adc d
    ld [bc], a
    inc c
    ld d, d
    ld a, [bc]

jr_027_7595:
    inc c
    ld [hl], b
    nop
    ld l, $2f
    ld [hl], $37
    ld [hl], $37
    ld [hl-], a
    inc sp
    inc c
    xor d
    ld [bc], a
    inc c
    ld [hl], d
    ld a, [bc]
    jr nc, jr_027_75d9

    ld b, $07
    ld a, [bc]
    dec bc
    inc c
    adc b
    nop
    jr c, jr_027_75ea

    nop
    ld bc, $0504
    inc c
    sub b
    inc c
    ld [hl-], a
    inc sp
    ld d, $17
    ld a, [de]
    dec de
    inc c
    xor b

jr_027_75c0:
    nop
    ld a, [hl-]
    dec sp
    db $10
    ld de, $1514
    inc c
    or b
    ld c, $0c
    adc d
    inc b
    nop
    ld bc, $2d2c
    ld a, [bc]
    dec bc
    inc c
    ret nc

    ld c, $0c
    xor d
    inc b

jr_027_75d9:
    db $10
    ld de, $2f2e
    ld a, [de]
    dec de
    inc c
    or b
    inc c
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    add [hl]
    ld [bc], a
    inc c

jr_027_75ea:
    jp nz, Jump_000_3800

    add hl, sp
    inc c
    sub b
    inc c
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    and [hl]
    ld [bc], a
    inc c
    ld [c], a
    nop
    ld a, [hl-]
    dec sp
    inc c
    or b
    inc c
    inc c
    nop
    nop
    inc c
    ld b, d
    inc d
    inc c
    adc h
    rrca
    ld bc, $200c
    nop
    inc c
    ld h, d
    inc d
    inc c
    xor h
    rrca
    ld bc, $000c
    ld [bc], a
    ld [bc], a
    inc bc
    inc c
    add $16
    inc c
    ld [de], a
    rrca
    ld bc, $1312
    inc c
    and $16
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc b
    jr z, jr_027_7656

    inc b
    nop
    ld c, $ff
    inc b
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc b
    jr nz, jr_027_7647

    inc b
    inc d
    ld [$2d2c], sp
    ld [$0409], sp
    ld b, d
    ld a, [bc]
    inc h
    dec h
    inc b
    inc d

jr_027_7647:
    ld [$2f2e], sp
    jr jr_027_7665

    inc b
    ld h, d
    ld a, [bc]
    ld h, $27
    inc b
    inc [hl]
    ld a, [bc]
    jr c, @+$3b

jr_027_7656:
    inc b
    add d
    ld [bc], a
    jr nc, jr_027_768c

    inc [hl]
    dec [hl]
    inc b
    adc h
    nop
    ld b, $07
    inc b
    ld d, h
    ld a, [bc]

jr_027_7665:
    ld a, [hl-]
    dec sp
    inc b
    and d
    ld [bc], a
    ld [hl-], a
    inc sp
    ld [hl], $37
    inc b
    xor h
    nop
    ld d, $17
    inc b
    ld [hl], h
    inc c
    jr nc, jr_027_76a9

    inc b
    call nz, Call_000_0406
    adc h
    nop
    inc b
    sub h
    inc c
    ld [hl-], a
    inc sp
    inc b
    db $e4
    ld b, $04
    xor h
    nop
    inc b
    inc [hl]
    ld a, [bc]

jr_027_768c:
    inc b
    call nz, $0408
    adc $0f
    ld bc, $e404
    ld [$ee04], sp
    rrca
    dec b
    inc b
    add [hl]
    ld [bc], a
    inc b
    db $cc, $02, $00
    ld bc, $1404
    ld e, $04
    and [hl]
    ld [bc], a
    inc b

jr_027_76a9:
    db $ec
    ld [bc], a
    db $10
    ld de, $7404
    rrca
    inc bc
    inc b
    jp nz, Jump_000_3402

    dec [hl]
    inc b
    ld d, d
    inc c
    inc b
    and d
    inc b
    inc b
    ld [c], a
    ld [bc], a
    ld [hl], $37
    inc b
    ld [hl], d
    ld a, [bc]
    jr z, jr_027_76ef

    ld [bc], a
    inc bc
    inc b
    jp nz, $041a

    ld [de], a
    inc c
    ld [de], a
    inc de
    inc b
    ld [c], a
    ld a, [de]
    inc b
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    nop
    jr z, jr_027_7704

    nop
    nop
    ld c, $ff
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_027_76f5

    nop
    inc d
    ld [$0000], sp
    rrca
    dec l
    inc l

jr_027_76ef:
    dec l
    ld [$0009], sp
    add d
    inc c

jr_027_76f5:
    nop
    inc d
    ld [$2f2e], sp
    jr jr_027_7715

    nop
    and d
    inc c
    nop
    ld [hl], h
    ld a, [bc]
    jr c, jr_027_773d

jr_027_7704:
    jr nc, jr_027_7737

    nop
    call nz, Call_000_3406
    dec [hl]
    inc [hl]
    dec [hl]
    nop
    sub h
    ld a, [bc]
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    nop

jr_027_7715:
    db $e4
    ld b, $36
    scf
    ld [hl], $37
    nop
    ld [hl], h
    ld a, [bc]
    nop
    call nz, RST_08
    adc $0f
    ld bc, $e400
    ld [$ee00], sp
    ld c, $28
    add hl, hl
    ld [bc], a
    inc bc
    nop
    ld b, d
    inc e
    nop
    inc d
    ld a, [bc]
    ld [de], a
    inc de

jr_027_7737:
    nop
    ld h, d
    inc e
    nop
    inc [hl]
    rrca

jr_027_773d:
    add hl, sp
    nop
    add b
    rra
    dec l
    nop
    ld [bc], a
    inc b
    jr z, jr_027_7770

    inc b
    nop
    ld c, $ff
    inc b
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc b
    jr nz, jr_027_7761

    inc b
    inc d
    ld [$2d2c], sp
    ld [$0409], sp
    ld b, d
    nop
    inc h
    dec h
    inc b
    ld a, [bc]

jr_027_7761:
    rrca
    inc bc
    ld l, $2f
    jr jr_027_7780

    inc b
    ld h, d
    nop
    ld h, $27
    inc b
    ld a, [hl+]
    rrca
    dec b

jr_027_7770:
    jr nc, jr_027_77a3

    inc [hl]
    dec [hl]
    jr nc, jr_027_77a7

    ld b, $07
    inc b
    ld b, d
    ld [bc], a
    inc b
    ld b, d
    nop
    inc b
    ld d, h

jr_027_7780:
    ld a, [bc]
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld d, $17
    inc b
    ld h, d
    ld [bc], a
    inc b
    ld h, d
    nop
    inc b
    ld [hl], h
    ld c, $04
    call nz, Call_000_3004
    ld sp, $ce04
    nop
    inc b
    sub h
    ld c, $04
    db $e4
    inc b
    ld [hl-], a
    inc sp
    inc b

jr_027_77a3:
    xor $00
    inc b
    inc [hl]

jr_027_77a7:
    ld a, [bc]
    inc b
    jp z, Jump_000_0406

    ret z

    inc b
    inc b
    ld d, h
    ld a, [bc]
    inc b
    ld [$0406], a
    add sp, $04
    inc b
    ld [hl], h
    rrca
    ld bc, $0100
    ld [bc], a
    inc bc
    inc b
    ld c, d
    inc d
    inc b
    sub h
    rrca
    ld bc, $1110
    ld [de], a
    inc de
    inc b
    ld l, d
    inc d
    inc b
    or h
    rrca
    ld bc, $4804
    rrca
    rlca
    inc b
    ld [c], a
    ld [bc], a
    inc b
    ld l, b
    rrca
    dec b
    jr z, @+$2b

    inc b
    ld c, d
    ld [de], a
    inc b
    ld [$070f], sp
    inc b
    ld l, d
    ld [de], a
    inc b
    jr z, jr_027_77fa

    dec b
    nop
    ld [bc], a
    inc c
    jr z, jr_027_781a

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl

jr_027_77fa:
    inc c
    jr nz, jr_027_780b

    inc c
    inc d
    ld [$2d2c], sp
    ld [$0c09], sp
    ld b, d
    ld b, $24
    dec h
    inc c
    db $10

jr_027_780b:
    inc c
    ld l, $2f
    jr jr_027_7829

    inc c
    ld h, d
    ld b, $26
    daa
    inc c
    jr nc, jr_027_7826

    jr c, jr_027_7853

jr_027_781a:
    inc c
    add d
    ld [bc], a
    jr nc, jr_027_7850

    jr nc, jr_027_7852

    inc h
    dec h
    inc c
    ld b, b
    nop

jr_027_7826:
    inc c
    ld d, h
    ld a, [bc]

jr_027_7829:
    ld a, [hl-]
    dec sp
    inc c
    and d
    ld [bc], a
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    ld h, b
    nop
    inc c
    ld [hl], h
    inc c
    nop
    ld bc, $0302
    inc b
    dec b
    inc c
    adc d
    nop
    ld c, $0f
    ld a, [bc]
    dec bc
    jr nc, jr_027_787a

    inc c
    sub h
    inc c
    db $10
    ld de, $1312

jr_027_7850:
    inc d
    dec d

jr_027_7852:
    inc c

jr_027_7853:
    xor d
    nop
    ld e, $1f
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    inc c
    ld [hl], h
    inc c
    inc c
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc c
    add b
    nop
    inc c
    jp nc, Jump_000_0c0e

    ld l, [hl]
    ld [bc], a
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc c
    and b
    nop
    inc c
    ld a, [c]
    ld c, $06
    rlca

jr_027_787a:
    inc c
    ld b, d
    inc b
    ld a, [bc]
    dec bc
    inc c
    jp nz, Jump_000_0c00

    sub h
    inc c
    ld d, $17
    inc c
    ld h, d
    inc b
    ld a, [de]
    dec de
    inc c
    ld [c], a
    nop
    inc c
    ld [hl], h
    rrca
    inc bc
    inc c
    add d
    inc b
    inc h
    dec h
    inc c
    sub h
    rrca
    inc bc
    inc c
    and d
    inc b
    ld h, $27
    inc c
    inc d
    ld [$080c], sp
    ld [de], a
    inc c
    jp nz, Jump_000_0c18

    ld [de], a
    inc c
    inc c
    ld a, [hl+]
    db $10
    inc c
    ld [c], a
    jr jr_027_78c0

    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc b
    jr z, jr_027_78e4

    inc b
    nop
    ld c, $ff
    inc b

jr_027_78c0:
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc b
    jr nz, jr_027_78d5

    inc b
    inc d
    ld [$0004], sp
    nop
    inc l
    dec l
    ld [$0409], sp
    ld b, [hl]
    inc b
    inc h

jr_027_78d5:
    dec h
    inc b
    ld [de], a
    ld c, $2e
    cpl
    jr @+$1b

    inc b
    ld h, [hl]
    inc b
    ld h, $27
    inc b
    ld [hl-], a

jr_027_78e4:
    rrca
    ld bc, $3534
    inc [hl]
    dec [hl]
    jr nc, jr_027_791d

    inc b
    adc d
    nop
    ld b, $07
    ld [$0409], sp
    ld d, h
    ld c, $36
    scf
    ld [hl], $37
    ld [hl-], a
    inc sp
    inc b
    xor d
    nop
    ld d, $17
    jr jr_027_791c

    inc b
    inc [hl]
    ld c, $38
    add hl, sp
    inc b
    add [hl]
    ld b, $30
    ld sp, $5404
    ld c, $3a
    dec sp
    inc b
    and [hl]
    ld b, $32
    inc sp
    inc b
    inc d
    ld [$4404], sp

jr_027_791c:
    nop

jr_027_791d:
    ld a, [bc]
    dec bc
    jr c, jr_027_795a

    inc c
    dec c
    inc b
    add [hl]
    nop
    inc b
    adc b
    ld [bc], a
    inc b
    inc d
    ld [$6404], sp
    nop
    ld a, [de]
    dec de
    ld a, [hl-]
    dec sp
    inc e
    dec e
    inc b
    and [hl]
    nop
    inc b
    xor b
    ld [bc], a
    inc b
    db $f4
    ld a, [bc]
    inc b
    adc d
    nop
    jr c, jr_027_797c

    jr nz, @+$23

    jr c, jr_027_7980

    jr c, jr_027_7982

    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    inc d
    ld a, [de]
    inc b
    xor d
    nop
    ld a, [hl-]
    dec sp
    ld [hl+], a
    inc hl
    ld a, [hl-]

jr_027_795a:
    dec sp
    ld a, [hl-]
    dec sp
    db $10
    ld de, $1312
    ld [de], a
    inc de
    inc b
    inc [hl]
    ld e, $04
    ld b, h
    db $10
    inc b
    ld c, d
    db $10
    inc b
    ld d, b
    nop
    inc b
    ld [de], a
    ld a, [bc]
    inc b
    ld h, b
    ld [de], a
    inc b
    ld h, h
    db $10
    inc b
    ld l, d
    db $10
    inc b

jr_027_797c:
    ld [hl], b
    nop
    inc b
    ld [hl-], a

jr_027_7980:
    inc c
    inc b

jr_027_7982:
    ld d, b
    db $10
    inc b
    jp nz, Jump_000_0414

    ld c, $0f
    ld bc, $7004
    db $10
    inc b
    ld [c], a
    inc d
    inc b
    ld l, $0e
    nop
    ld [bc], a
    nop
    jr z, jr_027_79c2

    nop
    nop
    ld c, $ff
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_027_79b3

    nop
    inc d
    ld [$2d2c], sp
    ld [$0009], sp
    ld b, d
    nop
    ld c, $0f
    nop
    ld b, d

jr_027_79b3:
    ld [bc], a
    ld [$2409], sp
    dec h
    nop
    inc d
    ld [$2f2e], sp
    jr jr_027_79d8

    nop
    ld h, d
    nop

jr_027_79c2:
    ld e, $1f
    nop
    ld h, d
    ld [bc], a
    jr jr_027_79e2

    ld h, $27
    nop
    inc [hl]
    ld a, [bc]
    jr nc, jr_027_7a01

    jr c, jr_027_7a0b

    jr c, jr_027_7a0d

    ld c, $0f
    nop
    add h

jr_027_79d8:
    nop
    jr nc, jr_027_7a0c

    jr nc, jr_027_7a0e

    ld b, $07
    nop
    ld d, h
    ld a, [bc]

jr_027_79e2:
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld e, $1f
    nop
    and h
    nop
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld d, $17
    nop
    inc [hl]
    ld a, [bc]
    inc [hl]
    dec [hl]
    nop
    add d
    nop
    jr nz, @+$23

    nop
    adc h
    ld [bc], a
    nop

jr_027_7a01:
    adc [hl]
    nop
    nop
    ld d, h
    ld a, [bc]
    ld [hl], $37
    nop
    and d
    nop

jr_027_7a0b:
    ld [hl+], a

jr_027_7a0c:
    inc hl

jr_027_7a0d:
    nop

jr_027_7a0e:
    xor h
    ld [bc], a
    nop
    xor [hl]
    nop
    nop
    or h
    inc c
    nop
    db $c2, $02, $00

    adc d
    inc b
    nop
    db $d2, $0e, $00

    ld [c], a
    ld [bc], a
    nop
    xor d
    inc b
    nop
    ld a, [c]
    ld a, [bc]
    jr z, jr_027_7a53

    ld [bc], a
    inc bc
    nop
    ld b, d
    inc e
    nop
    inc d
    ld a, [bc]
    ld [de], a
    inc de
    nop
    ld h, d
    inc e
    nop
    inc [hl]
    ld a, [de]
    nop
    ld [bc], a
    rrca
    dec hl
    nop
    nop
    rrca
    dec l
    nop
    ld [bc], a
    nop
    jr z, jr_027_7a70

    nop
    nop
    ld c, $ff
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_027_7a61

jr_027_7a53:
    nop
    inc d
    ld [$0000], sp
    rrca
    ld c, l
    nop
    ld h, b
    rrca
    ld c, l
    nop
    ret nz

    rrca

jr_027_7a61:
    ld c, l
    nop
    jr nz, jr_027_7a84

    ld c, l
    nop
    add b
    rra
    dec l
    nop
    nop
    nop
    nop
    nop
    nop

jr_027_7a70:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_027_7a84:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
