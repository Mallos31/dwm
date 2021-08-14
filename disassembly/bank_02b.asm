; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02b", ROMX[$4000], BANK[$2b]

    dec hl
    sub c
    ld b, b
    sub a
    ld b, c
    and l
    ld b, d
    or c
    ld b, e
    cp b
    ld b, h
    or l
    ld b, l
    or h
    ld b, [hl]
    sbc e
    ld b, a
    ld e, e
    ld c, b
    ld c, e
    ld c, c
    ld d, a
    ld c, d
    ld b, e
    ld c, e
    inc hl
    ld c, h
    dec d
    ld c, l
    db $eb
    ld c, l
    db $ec
    ld c, [hl]
    or [hl]
    ld c, a
    cp d
    ld d, b
    ret nz

    ld d, c
    and l
    ld d, d
    sbc a
    ld d, e
    ld b, c
    ld d, h
    dec de
    ld d, l
    dec b
    ld d, [hl]
    cp $56
    nop
    ld e, b
    push de
    ld e, b
    pop bc
    ld e, c
    or a
    ld e, d
    or h
    ld e, e
    ld e, a
    ld e, h
    inc sp
    ld e, l
    dec e
    ld e, [hl]
    or $5e
    jp hl


    ld e, a
    ret nc

    ld h, b
    cp b
    ld h, c
    ld b, a
    ld h, d
    dec b
    ld h, e
    rst $28
    ld h, e
    cp c
    ld h, h
    ld h, d
    ld h, l
    ccf
    ld h, [hl]
    pop hl
    ld h, [hl]
    sbc e
    ld h, a
    ld d, e
    ld l, b
    ld b, l
    ld l, c
    ld c, $6a
    ld hl, sp+$6a
    and l
    ld l, e
    ld c, d
    ld l, h
    ld sp, $326d
    ld l, [hl]
    ld h, $6f
    add hl, de
    ld [hl], b
    or b
    ld [hl], b
    ld a, [hl]
    ld [hl], c
    ld e, a
    ld [hl], d
    ld b, c
    ld [hl], e
    inc l
    ld [hl], h
    ld a, [$e974]
    ld [hl], l
    adc e
    db $76
    ld a, [hl-]
    ld [hl], a
    jr nz, jr_02b_40fb

    ld [bc], a
    ld a, c
    rst $20
    ld a, c
    add [hl]
    ld a, d
    ld [hl], l
    ld a, e
    ld c, [hl]
    ld a, h
    rra
    ld a, l
    ld a, a
    ld a, l
    nop
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_40ce

    jr nc, jr_02b_40d0

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
    jr nz, jr_02b_40ad

jr_02b_40ad:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_40ba

    inc c
    inc d

jr_02b_40ba:
    ld [$000c], sp
    ld [bc], a
    jr z, @+$2b

    inc b
    dec b
    jr nc, @+$33

    ld b, $07
    ld [$0809], sp
    add hl, bc
    inc h
    dec h
    inc c
    inc d

jr_02b_40ce:
    ld c, $2a

jr_02b_40d0:
    dec hl
    inc d
    dec d
    ld [hl-], a
    inc sp
    ld d, $17
    jr jr_02b_40f2

    jr jr_02b_40f4

    ld h, $27
    inc c
    inc d
    ld [$500c], sp
    nop
    inc c
    ld [bc], a
    ld b, $38
    add hl, sp
    jr c, jr_02b_4123

    ld b, $07
    inc c
    inc d
    ld [$700c], sp
    nop

jr_02b_40f2:
    inc c
    ld [hl+], a

jr_02b_40f4:
    ld b, $3a
    dec sp
    ld a, [hl-]
    dec sp
    ld d, $17

jr_02b_40fb:
    inc c
    inc d
    ld [$4a0c], sp
    nop
    inc c
    inc c
    nop
    inc l
    dec l
    inc c
    adc [hl]
    nop
    inc c
    adc [hl]
    nop
    jr nc, jr_02b_413f

    inc c
    inc d
    ld [$6a0c], sp
    nop
    inc c
    inc l
    nop
    ld l, $2f
    inc c
    xor [hl]
    nop
    inc c
    xor [hl]
    nop
    ld [hl-], a
    inc sp
    inc c
    or h

jr_02b_4123:
    ld a, [bc]
    inc c
    ld a, [bc]
    ld [bc], a
    inc c
    ret z

    ld b, $38
    add hl, sp
    inc c
    call nc, Call_000_0c0a
    ld a, [hl+]
    ld [bc], a
    inc c
    add sp, $06
    ld a, [hl-]
    dec sp
    inc c
    inc d
    ld [$480c], sp
    inc b
    ld a, [bc]
    dec bc

jr_02b_413f:
    inc [hl]
    dec [hl]
    inc c
    jp z, Jump_000_0002

    ld bc, $140c
    ld [$680c], sp
    inc b
    ld a, [de]
    dec de
    ld [hl], $37
    inc c
    ld [$1002], a
    ld de, $140c
    ld [$060c], sp
    ld [bc], a
    jr nc, jr_02b_418e

    inc [hl]
    dec [hl]
    inc c
    adc b
    stop
    ld bc, $0302
    inc c
    ld [de], a
    ld a, [bc]
    inc c
    ld h, $02
    ld [hl-], a
    inc sp
    ld [hl], $37
    inc c
    xor b
    db $10
    db $10
    ld de, $1312
    inc c
    ld [hl-], a
    inc c
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc c
    ld c, b
    nop
    jr nc, @+$33

    nop
    ld bc, $0e0c
    rrca
    ld bc, $1312
    ld [de], a
    inc de
    inc c

jr_02b_418e:
    ld l, b
    nop
    ld [hl-], a
    inc sp
    db $10
    ld de, $2e0c
    ld c, $00
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_41d4

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
    jr nz, jr_02b_41b3

jr_02b_41b3:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_41c0

    inc c
    inc d

jr_02b_41c0:
    ld [$040c], sp
    nop
    ld [$0a09], sp
    dec bc
    inc c
    ld [$0600], sp
    rlca
    ld [$0c09], sp
    inc c
    nop
    inc c
    inc d

jr_02b_41d4:
    ld a, [bc]
    ld l, $2f
    jr jr_02b_41f2

    ld a, [de]
    dec de
    inc c
    jr z, jr_02b_41de

jr_02b_41de:
    ld d, $17
    jr jr_02b_41fb

    inc c
    inc l
    nop
    inc c
    inc d
    ld [$0908], sp
    ld c, $0f
    jr c, @+$3b

    inc c
    add h
    nop
    inc c

jr_02b_41f2:
    ld [$3000], sp
    ld sp, $0f0e
    ld [$0c09], sp

jr_02b_41fb:
    inc d
    ld [$1918], sp
    ld e, $1f
    ld a, [hl-]
    dec sp
    inc c
    and h
    nop
    inc c
    jr z, jr_02b_4209

jr_02b_4209:
    ld [hl-], a
    inc sp
    ld e, $1f
    jr jr_02b_4228

    inc c
    inc d
    ld [$3534], sp
    jr nz, jr_02b_4237

    inc c
    ld [$0000], sp
    ld bc, $0504
    inc c
    ld [$0c00], sp
    jp nz, Jump_000_0c00

    inc d
    ld [$3736], sp

jr_02b_4228:
    ld [hl+], a
    inc hl
    inc c
    jr z, jr_02b_422d

jr_02b_422d:
    db $10
    ld de, $1514
    inc c
    jr z, jr_02b_4234

jr_02b_4234:
    inc c
    ld [c], a
    nop

jr_02b_4237:
    inc c
    or h
    ld a, [bc]
    inc c
    call nz, Call_000_0c02
    nop
    nop
    inc c
    jp z, Jump_000_0c02

    jp nc, $0c0c

    db $e4
    ld [bc], a
    inc c
    jr nz, jr_02b_424c

jr_02b_424c:
    inc c
    ld [$0c02], a
    ld a, [c]
    ld a, [bc]
    inc c
    jp z, Jump_000_0c02

    ld c, h
    nop
    inc c
    ld b, h
    inc b
    nop
    ld bc, $140c
    ld [$ea0c], sp
    ld [bc], a
    inc c
    ld l, h
    nop
    inc c
    ld h, h
    inc b
    db $10
    ld de, $340c
    ld a, [bc]
    inc c
    jp z, Jump_000_3402

    dec [hl]
    inc c
    adc b
    ld [de], a
    inc c
    ld b, $10
    inc c
    inc d
    ld a, [bc]
    inc c
    ld [$3602], a
    scf
    inc c
    xor b
    ld [de], a
    inc c
    ld h, $10
    inc c
    inc [hl]
    ld a, [bc]
    jr z, jr_02b_42b5

    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    adc h
    ld [de], a
    ld [bc], a
    inc bc
    inc c
    db $10
    rrca
    ld bc, $1312
    inc d
    dec d
    inc c
    xor h
    ld [de], a
    ld [de], a
    inc de
    inc c
    jr nc, jr_02b_42b1

    nop
    ld [bc], a
    ld c, $28
    add hl, hl
    ld c, $00
    nop
    inc l
    dec l
    jr nc, jr_02b_42e2

jr_02b_42b1:
    jr nc, jr_02b_42e4

    inc h
    dec h

jr_02b_42b5:
    ld c, $00
    ld [bc], a
    rst $38
    ld c, $14
    rlca
    ld a, [hl+]
    dec hl
    ld c, $20
    nop
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    ld c, $20
    ld [bc], a
    ld c, $14
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    nop
    ld bc, $040e
    nop
    ld [$2409], sp
    dec h

jr_02b_42e2:
    ld c, $14

jr_02b_42e4:
    ld [$2f2e], sp
    jr @+$1b

    jr jr_02b_4304

    ld a, [de]
    dec de
    ld [hl], $37
    db $10
    ld de, $240e
    nop
    jr jr_02b_430f

    ld h, $27
    ld c, $14
    ld [$0b0a], sp
    jr nc, @+$33

    inc [hl]
    dec [hl]
    ld c, $84
    nop

jr_02b_4304:
    ld b, $07
    ld c, $44
    nop
    jr nc, jr_02b_433c

    ld b, $07
    ld c, $14

jr_02b_430f:
    ld [$1b1a], sp
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld c, $a4
    nop
    ld d, $17
    ld c, $64
    nop
    ld [hl-], a
    inc sp
    ld d, $17
    ld c, $14
    ld [$080e], sp
    nop
    inc c
    dec c
    inc [hl]
    dec [hl]
    ld c, $08
    nop
    jr nc, @+$33

    jr c, @+$3b

    jr c, jr_02b_436e

    jr nc, jr_02b_4368

    ld c, $14
    ld [$280e], sp

jr_02b_433c:
    nop
    inc e
    dec e
    ld [hl], $37
    ld c, $28
    nop
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    ld c, $b4
    ld a, [bc]
    ld c, $4a
    nop
    ld [bc], a
    inc bc
    ld c, $06
    ld [de], a
    inc b
    dec b
    ld c, $d0
    ld c, $0e
    ld l, d
    nop
    ld [de], a
    inc de
    ld c, $26
    ld [de], a
    inc d
    dec d
    ld c, $f0

jr_02b_4368:
    inc c
    ld [bc], a
    inc bc
    ld c, $00
    inc b

jr_02b_436e:
    ld c, $42
    ld [bc], a
    ld c, $00
    db $10
    ld c, $14
    ld [$1312], sp
    ld c, $20
    inc b
    ld c, $62
    ld [bc], a
    ld c, $20
    db $10
    ld c, $14
    ld [$000e], sp
    inc b
    ld c, $80
    nop
    ld c, $c8
    ld [bc], a
    ld c, $52
    ld a, [bc]
    ld c, $20
    inc b
    ld c, $a0
    nop
    ld c, $e8
    ld [bc], a
    ld c, $72
    ld a, [bc]
    ld c, $00
    ld [$0100], sp
    ld c, $06
    db $10
    ld c, $12
    rrca
    rlca
    db $10
    ld de, $260e
    db $10
    ld c, $32
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
    jr nc, jr_02b_43ee

    jr nc, jr_02b_43f0

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
    jr nz, jr_02b_43cd

jr_02b_43cd:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_43da

    inc c
    inc d

jr_02b_43da:
    ld [$000c], sp
    ld [bc], a
    jr z, jr_02b_4409

    inc b
    dec b
    inc [hl]
    dec [hl]
    inc c
    inc c
    rrca
    rlca
    ld a, [hl+]
    dec hl
    inc d
    dec d
    ld [hl], $37

jr_02b_43ee:
    inc c
    inc l

jr_02b_43f0:
    rrca
    ld bc, $0908
    inc h
    dec h
    inc l
    dec l
    ld [$0a09], sp
    dec bc
    inc c
    ld c, d
    nop
    inc c
    add h
    nop
    ld [$0c09], sp
    inc d
    ld [$1918], sp

jr_02b_4409:
    ld h, $27
    ld l, $2f
    jr jr_02b_4428

    ld a, [de]
    dec de
    inc c
    ld l, d
    nop
    inc c
    and h
    nop
    jr @+$1b

    inc c
    inc d
    ld [$3130], sp
    ld b, $07
    ld a, [bc]
    dec bc
    jr nc, @+$33

    inc [hl]
    dec [hl]
    inc c
    adc d

jr_02b_4428:
    ld [bc], a
    inc c
    ld [$0c00], sp
    inc d
    ld [$3332], sp
    ld d, $17
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld [hl], $37
    inc c
    xor d
    ld [bc], a
    inc c
    jr z, jr_02b_443f

jr_02b_443f:
    inc c
    or h
    ld a, [bc]
    inc c
    ret z

    nop
    inc c
    ld [$0000], sp
    ld bc, $040c
    nop
    inc c
    inc b
    db $10
    inc c
    call nc, Call_000_0c0a
    add sp, $00
    inc c
    jr z, jr_02b_4459

jr_02b_4459:
    db $10
    ld de, $240c
    nop
    inc c
    inc h
    db $10
    inc c
    inc d
    ld [$0302], sp
    inc c
    ld b, b
    db $10
    inc b
    dec b
    jr c, @+$3b

    ld b, $07
    inc c
    add [hl]
    nop
    inc c
    ld [$0c10], sp
    inc d
    ld [$1312], sp
    inc c
    ld h, b
    db $10
    inc d
    dec d
    ld a, [hl-]
    dec sp
    ld d, $17
    inc c
    and [hl]
    nop
    inc c
    jr z, jr_02b_4499

    inc c
    inc [hl]
    ld c, $2c
    dec l
    jr c, jr_02b_44c9

    inc c
    ld [$0c00], sp
    ld [$0c02], sp
    inc d
    rrca

jr_02b_4499:
    ld bc, $3b3a
    inc c
    jr z, jr_02b_449f

jr_02b_449f:
    inc c
    jr z, jr_02b_44a4

    inc c
    ld [hl], h

jr_02b_44a4:
    rra
    ld bc, $060c
    ld [de], a
    inc c
    ld b, b
    db $10
    inc c
    ld [de], a
    rrca
    rlca
    db $10
    ld de, $600c
    db $10
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
    jr nc, @+$33

    jr nc, @+$33

    inc h
    dec h
    inc c

jr_02b_44c9:
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02b_44d4

jr_02b_44d4:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_44e1

    inc c
    inc d

jr_02b_44e1:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    jr nc, jr_02b_451d

    nop
    ld bc, $000c
    ld [bc], a
    inc c
    ld [de], a
    ld a, [bc]
    ld l, $2f
    jr jr_02b_4511

    jr jr_02b_4513

    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    db $10
    ld de, $200c
    ld [bc], a
    inc c
    ld [hl-], a
    ld a, [bc]
    ld a, [bc]
    dec bc
    jr c, jr_02b_4543

    inc c
    add d
    ld [bc], a
    inc c
    inc c
    ld [bc], a
    inc c

jr_02b_4511:
    ld b, b
    nop

jr_02b_4513:
    inc c
    inc d
    ld [$1b1a], sp
    ld a, [hl-]
    dec sp
    inc c
    and d
    ld [bc], a

jr_02b_451d:
    inc c
    inc l
    ld [bc], a
    inc c
    ld h, b
    nop
    inc c
    inc d
    ld [$3130], sp
    jr c, @+$3b

    inc c
    ret nz

    ld [bc], a
    ld b, $07
    inc c
    ld b, d
    ld [bc], a
    inc [hl]
    dec [hl]
    inc c
    inc d
    ld [$3332], sp
    ld a, [hl-]
    dec sp
    inc c
    ldh [rSC], a
    ld d, $17
    inc c
    ld h, d
    ld [bc], a

jr_02b_4543:
    ld [hl], $37
    inc c
    or h
    inc c
    inc c
    jp nz, Jump_000_3004

    ld sp, $3534
    inc c
    ld [$0c00], sp
    call nc, $0c0c
    ld [c], a
    inc b
    ld [hl-], a
    inc sp
    ld [hl], $37
    inc c
    jr z, jr_02b_455f

jr_02b_455f:
    inc c
    inc d
    ld [$0302], sp
    inc c
    ld b, b
    ld [de], a
    inc b
    dec b
    inc c
    inc c
    ld [de], a
    inc [hl]
    dec [hl]
    nop
    ld bc, $140c
    ld [$1312], sp
    inc c
    ld h, b
    ld [de], a
    inc d
    dec d
    inc c
    inc l
    ld [de], a
    ld [hl], $37
    db $10
    ld de, $140c
    ld [$000c], sp
    inc b
    inc c
    ret nc

    nop
    inc c
    adc d
    db $10
    inc c
    ld a, [bc]
    nop
    inc c
    inc d
    rrca
    ld bc, $f00c
    nop
    inc c
    xor d
    db $10
    inc c
    ld a, [hl+]
    nop
    inc c
    ld [hl], h
    rra
    ld bc, $080c
    nop
    nop
    ld bc, $400c
    db $10
    inc c
    ld [de], a
    rrca
    rlca
    db $10
    ld de, $600c
    db $10
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
    jr nc, jr_02b_45f2

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
    jr nz, jr_02b_45d1

jr_02b_45d1:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_45de

    inc c
    inc d

jr_02b_45de:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [$0600], sp
    rlca
    ld [$0c09], sp
    inc c
    nop
    inc c

jr_02b_45f2:
    inc d
    ld [$2f2e], sp
    jr jr_02b_4611

    jr @+$1b

    ld a, [de]
    dec de
    inc c
    jr z, jr_02b_45ff

jr_02b_45ff:
    ld d, $17
    jr jr_02b_461c

    inc c
    inc l
    nop
    inc c
    inc d
    ld [$0b0a], sp
    inc [hl]
    dec [hl]
    jr c, jr_02b_4648

    inc [hl]
    dec [hl]

jr_02b_4611:
    inc c
    ld [$3000], sp
    ld sp, $3938
    inc c
    ld c, h
    nop
    inc c

jr_02b_461c:
    inc d
    ld [$1b1a], sp
    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld [hl], $37
    inc c
    jr z, jr_02b_4629

jr_02b_4629:
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    inc c
    ld l, h
    nop
    inc c
    inc d
    ld [$080c], sp
    nop
    inc c
    add [hl]
    ld [bc], a
    nop
    ld bc, $0504
    jr c, jr_02b_4678

    jr c, jr_02b_467a

    jr nc, jr_02b_4674

    inc c
    inc d
    ld [$280c], sp

jr_02b_4648:
    nop
    inc c
    and [hl]
    ld [bc], a
    db $10
    ld de, $1514
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    inc c
    or h
    ld a, [bc]
    inc c
    add h
    inc b
    inc c
    inc c
    nop
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    jp nc, $0c0c

    and h
    inc b
    inc c
    inc l
    nop
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    ld a, [c]
    ld a, [bc]
    inc b

jr_02b_4674:
    dec b
    inc c
    add d
    inc b

jr_02b_4678:
    inc c
    inc c

jr_02b_467a:
    inc b
    ld [bc], a
    inc bc
    inc c
    inc d
    ld [$1514], sp
    inc c
    and d
    inc b
    inc c
    inc l
    inc b
    ld [de], a
    inc de
    inc c
    inc [hl]
    ld a, [bc]
    inc c
    add [hl]
    inc b
    ld b, $07
    inc c
    inc c
    rrca
    ld bc, $2f2e
    inc c
    and [hl]
    inc b
    ld d, $17
    inc c
    inc l
    rrca
    ld bc, $0c0c
    db $10
    inc c
    ld c, $12
    inc c
    ld a, [bc]
    rrca
    dec b
    ld [de], a
    inc de
    inc c
    ld l, $12
    inc c
    ld a, [hl+]
    rrca
    inc bc
    nop
    ld [bc], a
    inc c
    jr z, jr_02b_46e2

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02b_46d3

    inc c
    inc d
    ld [$000c], sp
    inc b
    inc l
    dec l
    ld [$0c09], sp
    ld c, d
    ld [bc], a
    inc h

jr_02b_46d3:
    dec h
    inc c
    inc d
    rrca
    ld bc, $2f2e
    jr jr_02b_46f5

    inc c
    ld l, d
    ld [bc], a
    ld h, $27
    inc c

jr_02b_46e2:
    inc d
    ld [$4e0c], sp
    ld [bc], a
    inc c
    ld b, [hl]
    nop
    jr c, jr_02b_4725

    inc c
    adc d
    nop
    jr nc, @+$33

    ld b, $07
    inc c
    inc d

jr_02b_46f5:
    ld [$6e0c], sp
    ld [bc], a
    inc c
    ld h, [hl]
    nop
    ld a, [hl-]
    dec sp
    inc c
    xor d
    nop
    ld [hl-], a
    inc sp
    ld d, $17
    inc c
    inc d
    ld [$3130], sp
    jr nc, @+$33

    inc c
    add h
    inc b
    nop
    ld bc, $0504
    inc c
    ret nz

    nop
    inc c
    inc d
    ld [$3332], sp
    ld [hl-], a
    inc sp
    inc c
    and h
    inc b
    db $10
    ld de, $1514
    inc c

jr_02b_4725:
    ldh [rP1], a
    inc c
    or h
    inc c
    ld b, $07
    ld [$0a09], sp
    dec bc
    jr c, jr_02b_476b

    inc h
    dec h
    inc l
    dec l
    inc c
    ret nc

    rrca
    ld bc, $1716
    jr jr_02b_4757

    ld a, [de]
    dec de
    ld a, [hl-]
    dec sp
    ld h, $27
    ld l, $2f
    inc c
    ldh a, [$0c]
    inc c
    adc $00
    inc [hl]
    dec [hl]
    inc c
    ld b, h
    db $10
    inc c
    jp nz, $0202

    inc bc
    ld [bc], a

jr_02b_4757:
    inc bc
    inc c
    inc d
    ld [$ee0c], sp
    nop
    ld [hl], $37
    inc c
    ld h, h
    db $10
    inc c
    ld [c], a
    ld [bc], a
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc c

jr_02b_476b:
    inc d
    ld [$0e0c], sp
    db $10
    inc c
    ld b, h
    ld [de], a
    inc [hl]
    dec [hl]
    inc c
    add h
    nop
    inc c
    db $10
    inc c
    inc c
    ld l, $10
    inc c
    ld h, h
    ld [de], a
    ld [hl], $37
    inc c
    and h
    nop
    inc c
    jr nc, jr_02b_4797

    inc c
    ld d, b
    db $10
    inc b
    dec b
    inc c
    adc b
    rra
    dec b
    inc c
    ld l, [hl]
    ld [de], a
    inc d
    dec d

jr_02b_4797:
    inc c
    xor b
    rra
    dec b
    nop
    ld [bc], a
    inc c
    jr z, jr_02b_47c9

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02b_47ba

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

jr_02b_47ba:
    ld [$2f2e], sp
    jr jr_02b_47d8

    inc c
    ld h, d
    ld a, [bc]
    ld h, $27
    inc c
    inc d
    ld [$0b0a], sp

jr_02b_47c9:
    jr nc, jr_02b_47fc

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

jr_02b_47d8:
    and d
    ld a, [bc]
    ld d, $17
    inc c
    inc d
    ld [$820c], sp
    nop
    nop
    ld bc, $0302
    inc c
    add $00
    inc b
    dec b
    inc c
    add d
    ld [bc], a
    inc c
    inc d
    ld [$a20c], sp
    nop
    db $10
    ld de, $1312
    inc c
    and $00
    inc d

jr_02b_47fc:
    dec d
    inc c
    and d
    ld [bc], a
    inc c
    or h
    ld a, [bc]
    nop
    ld bc, $000c
    inc b
    inc l
    dec l
    inc c
    adc $0f
    ld bc, $1110
    inc c
    jr nz, @+$06

    ld l, $2f
    inc c
    xor $0e
    ld [bc], a
    inc bc
    inc c
    ld b, $14
    ld [$0c09], sp
    add b
    ld [bc], a
    nop
    ld bc, $140c
    ld [$1312], sp
    inc c
    ld h, $14
    jr jr_02b_4847

    inc c
    and b
    ld [bc], a
    db $10
    ld de, $140c
    ld [$060c], sp
    inc d
    inc c
    add b
    ld b, $0c
    ld d, d
    ld a, [bc]
    inc c
    ld h, $14
    inc c
    and b
    ld b, $0c
    ld [hl], d

jr_02b_4847:
    ld a, [bc]
    inc c
    ld b, $18
    inc c
    call nz, Call_000_0c02
    ld [de], a
    rrca
    ld bc, $2c0c
    ld [de], a
    inc c
    db $e4
    ld [bc], a
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, jr_02b_4889

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02b_487a

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

jr_02b_487a:
    ld [$2f2e], sp
    jr jr_02b_4898

    inc c
    ld h, d
    ld a, [bc]
    ld h, $27
    inc c
    inc d
    ld [$0b0a], sp

jr_02b_4889:
    jr c, jr_02b_48c4

    jr c, @+$3b

    jr nc, jr_02b_48c0

    inc c
    add d
    nop
    inc [hl]
    dec [hl]
    jr nc, jr_02b_48c7

    jr nc, jr_02b_48c9

jr_02b_4898:
    ld b, $07
    inc c
    inc d
    ld [$1b1a], sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    inc c
    and d
    nop
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld d, $17
    inc c
    inc d
    ld [$8e0c], sp
    nop
    nop
    ld bc, $0504
    inc [hl]
    dec [hl]
    inc c
    add h
    nop
    inc c

jr_02b_48c0:
    call z, Call_000_0c02
    inc d

jr_02b_48c4:
    ld [$ae0c], sp

jr_02b_48c7:
    nop
    db $10

jr_02b_48c9:
    ld de, $1514
    ld [hl], $37
    inc c
    and h
    nop
    inc c
    db $ec
    ld [bc], a
    inc c
    or h
    ld a, [bc]
    nop
    ld bc, $2928
    inc l
    dec l
    jr nc, jr_02b_4910

    inc c
    adc h
    ld [bc], a
    inc c
    ret nc

    ld c, $10
    ld de, $2b2a
    ld l, $2f
    ld [hl-], a
    inc sp
    inc c
    xor h
    ld [bc], a
    inc c
    ldh a, [$0c]
    ld [bc], a
    inc bc
    inc c
    nop
    ld [bc], a
    inc b
    dec b
    inc c
    call z, Call_000_0004
    ld bc, $140c
    ld [$1312], sp
    inc c
    jr nz, jr_02b_4909

    inc d
    dec d

jr_02b_4909:
    inc c
    db $ec
    inc b
    db $10
    ld de, $140c

jr_02b_4910:
    ld [$000c], sp
    ld [bc], a
    inc l
    dec l
    ld a, [bc]
    dec bc
    inc c
    call z, Call_000_0c04
    ld d, d
    ld a, [bc]
    inc c
    jr nz, jr_02b_4923

    ld l, $2f

jr_02b_4923:
    ld a, [de]
    dec de
    inc c
    db $ec
    inc b
    inc c
    ld [hl], d
    ld a, [bc]
    inc c
    add b
    inc d
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    nop
    ld bc, $0302
    inc c
    ld b, b
    db $10
    inc c
    sub h
    rra
    ld bc, $3736
    ld [hl], $37
    db $10
    ld de, $1312
    inc c
    ld h, b
    db $10
    inc c
    inc d
    ld [$0200], sp
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
    jr jr_02b_4988

    ld b, $62
    ld b, $26
    daa
    ld b, $30
    inc c
    ld a, [bc]
    dec bc
    jr nc, jr_02b_49ac

    ld b, $82
    nop
    jr c, jr_02b_49b9

    inc [hl]
    dec [hl]
    jr nc, jr_02b_49b5

    inc h
    dec h
    ld b, $40

jr_02b_4988:
    nop
    ld b, $14
    ld [$1b1a], sp
    ld [hl-], a
    inc sp
    ld b, $a2
    nop
    ld a, [hl-]
    dec sp
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld h, $27
    ld b, $60
    nop
    ld b, $14
    ld [$8206], sp
    nop
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    dec b

jr_02b_49ac:
    jr nc, jr_02b_49df

    ld c, $0f
    ld b, $80
    nop
    ld b, $14

jr_02b_49b5:
    ld [$a206], sp
    nop

jr_02b_49b9:
    db $10
    ld de, $1312
    ld [de], a
    inc de
    inc d
    dec d
    ld [hl-], a
    inc sp
    ld e, $1f
    ld b, $a0
    nop
    ld b, $14
    ld [$3534], sp
    nop
    ld bc, $4006
    ld [bc], a
    ld b, $80
    nop
    ld c, $0f
    ld b, $82
    nop
    ld b, $14
    ld [$3736], sp

jr_02b_49df:
    db $10
    ld de, $6006
    ld [bc], a
    ld b, $a0
    nop
    ld e, $1f
    ld b, $a2
    nop
    ld b, $14
    ld [$0302], sp
    jr z, jr_02b_4a1c

    inc l
    dec l
    ld b, $8a
    nop
    ld b, $82
    nop
    jr nz, jr_02b_4a1e

    jr c, @+$3b

    nop
    ld bc, $1406
    ld [$1312], sp
    ld a, [hl+]
    dec hl
    ld l, $2f
    ld b, $aa
    nop
    ld b, $a2
    nop
    ld [hl+], a
    inc hl
    ld a, [hl-]
    dec sp
    db $10
    ld de, $1406

jr_02b_4a18:
    ld [$0006], sp
    nop

jr_02b_4a1c:
    ld b, $44

jr_02b_4a1e:
    db $10
    ld b, $86
    db $10
    ld b, $88
    nop
    jr c, jr_02b_4a60

    inc h
    dec h
    ld b, $14
    inc c
    ld b, $64
    db $10
    ld b, $a6
    db $10
    ld b, $a8
    nop
    ld a, [hl-]
    dec sp
    ld h, $27
    ld b, $74
    inc e
    jr z, jr_02b_4a67

    ld b, $ca
    nop
    ld b, $00

jr_02b_4a43:
    db $10
    ld b, $c6
    nop
    ld b, $12
    rrca
    ld bc, $ea06
    nop
    ld b, $20
    db $10
    ld b, $e6
    nop
    ld b, $32
    ld a, [bc]
    nop
    ld [bc], a
    jr nz, jr_02b_4a83

    add hl, hl
    jr nz, jr_02b_4a5e

jr_02b_4a5e:
    ld c, $ff

jr_02b_4a60:
    jr nz, jr_02b_4a76

    rlca
    ld a, [hl+]
    dec hl
    jr nz, jr_02b_4a87

jr_02b_4a67:
    ld c, $20
    inc d
    ld [$2d2c], sp

jr_02b_4a6d:
    ld [$2009], sp
    ld b, d
    nop
    inc h
    dec h
    jr nz, jr_02b_4ab6

jr_02b_4a76:
    ld b, $20
    inc d
    ld [$2f2e], sp
    jr jr_02b_4a97

    jr nz, @+$64

    nop
    ld h, $27

jr_02b_4a83:
    jr nz, @+$62

    ld b, $20

jr_02b_4a87:
    inc d
    ld [$0b0a], sp
    jr nc, @+$33

    jr c, jr_02b_4ac8

    jr nc, jr_02b_4ac2

    jr nz, jr_02b_4adb

    nop
    jr nz, jr_02b_4a18

    ld [bc], a

jr_02b_4a97:
    ld b, $07
    jr nz, @+$16

    ld [$1b1a], sp
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    jr nz, @+$6a

    nop
    jr nz, @-$5c

    ld [bc], a
    ld d, $17
    jr nz, jr_02b_4ac2

    ld [$8220], sp
    nop
    inc c
    dec c
    inc [hl]
    dec [hl]

jr_02b_4ab6:
    jr nz, jr_02b_4b00

jr_02b_4ab8:
    nop

jr_02b_4ab9:
    inc [hl]
    dec [hl]
    inc c
    dec c
    jr nz, jr_02b_4a43

    nop
    jr nz, jr_02b_4ad6

jr_02b_4ac2:
    ld [$a220], sp
    nop
    inc e
    dec e

jr_02b_4ac8:
    ld [hl], $37
    jr nz, jr_02b_4b34

    nop
    ld [hl], $37
    inc e
    dec e
    jr nz, @-$5a

    nop
    jr nz, @-$4a

jr_02b_4ad6:
    ld a, [bc]
    jr nc, @+$33

    ld c, $0f

jr_02b_4adb:
    jr nz, jr_02b_4a6d

    nop
    jr nz, jr_02b_4a60

    nop
    jr nz, jr_02b_4ae7

    db $10
    jr nz, jr_02b_4ab8

    inc c

jr_02b_4ae7:
    ld [hl-], a

jr_02b_4ae8:
    inc sp
    ld e, $1f
    jr nz, @-$4e

    nop
    jr nz, @-$5e

    nop
    jr nz, jr_02b_4b17

    db $10
    jr nz, jr_02b_4ae8

    ld a, [bc]
    ld [bc], a
    inc bc

jr_02b_4af9:
    ld [bc], a
    inc bc
    jr nz, jr_02b_4a87

    nop
    jr nz, @+$48

jr_02b_4b00:
    ld [de], a
    inc h
    dec h
    jr nz, jr_02b_4b45

    db $10

jr_02b_4b06:
    jr nz, @+$16

    ld [$1312], sp
    ld [de], a
    inc de
    jr nz, jr_02b_4ab9

    nop
    jr nz, jr_02b_4b78

    ld [de], a
    ld h, $27
    jr nz, jr_02b_4b77

jr_02b_4b17:
    db $10
    jr nz, jr_02b_4b2e

    ld [$0020], sp
    nop
    jr nz, @+$46

    jr jr_02b_4b42

    db $10
    rrca
    ld bc, $6420
    jr @+$22

    jr nc, jr_02b_4b37

jr_02b_4b2b:
    jr nz, jr_02b_4b2d

jr_02b_4b2d:
    ld [bc], a

jr_02b_4b2e:
    inc b
    dec b
    jr nz, jr_02b_4b32

jr_02b_4b32:
    stop

jr_02b_4b34:
    ld bc, $0e20

jr_02b_4b37:
    rrca
    dec b

jr_02b_4b39:
    inc d
    dec d
    jr nz, jr_02b_4b5d

    db $10
    db $10
    ld de, $2e20

jr_02b_4b42:
    ld c, $00
    ld [bc], a

jr_02b_4b45:
    jr nz, @+$2a

    add hl, hl
    jr nz, jr_02b_4b4a

jr_02b_4b4a:
    ld c, $ff
    jr nz, jr_02b_4b62

    rlca
    ld a, [hl+]
    dec hl
    jr nz, jr_02b_4b73

    ld c, $20
    inc d
    ld [$2d2c], sp
    ld [$2009], sp
    ld b, d

jr_02b_4b5d:
    ld a, [bc]
    inc h
    dec h
    jr nz, @+$16

jr_02b_4b62:
    ld [$2f2e], sp
    jr @+$1b

    jr nz, @+$64

    ld a, [bc]
    ld h, $27

jr_02b_4b6c:
    jr nz, @+$16

    ld [$0b0a], sp
    jr c, jr_02b_4bac

jr_02b_4b73:
    inc [hl]
    dec [hl]
    jr nz, jr_02b_4af9

jr_02b_4b77:
    nop

jr_02b_4b78:
    jr nc, jr_02b_4bab

    jr nz, jr_02b_4b06

    ld [bc], a
    ld b, $07
    jr nz, @+$16

    ld [$1b1a], sp
    ld a, [hl-]
    dec sp
    ld [hl], $37
    jr nz, @-$5c

    nop
    ld [hl-], a
    inc sp
    jr nz, jr_02b_4b39

    ld [bc], a
    ld d, $17
    jr nz, jr_02b_4ba8

    ld [$8a20], sp
    nop
    inc c
    dec c
    jr c, jr_02b_4bd5

    jr nz, @-$74

    inc b
    jr nz, jr_02b_4b2b

    nop
    jr nz, @+$16

    ld [$aa20], sp
    nop

jr_02b_4ba8:
    inc e
    dec e
    ld a, [hl-]

jr_02b_4bab:
    dec sp

jr_02b_4bac:
    jr nz, @-$54

    inc b
    jr nz, @-$54

    nop
    jr nz, @-$4a

    inc c
    ld c, $0f
    jr nz, @-$76

    ld b, $20
    adc b
    nop
    jr nz, @-$2a

    inc c
    ld e, $1f
    jr nz, jr_02b_4b6c

    ld b, $20
    xor b
    nop
    jr nz, jr_02b_4bde

    ld [$0302], sp
    ld [bc], a
    inc bc
    inc l
    dec l
    jr nz, @-$36

    ld b, $34

jr_02b_4bd5:
    dec [hl]
    nop
    ld bc, $1420
    ld [$1312], sp
    ld [de], a

jr_02b_4bde:
    inc de
    ld l, $2f
    jr nz, @-$16

    ld b, $36
    scf
    db $10
    ld de, $1420
    ld [$0020], sp
    nop
    inc l
    dec l
    jr nz, jr_02b_4b78

    ld b, $38
    add hl, sp
    jr nz, @+$54

    ld a, [bc]
    jr nz, jr_02b_4c1a

    nop
    ld l, $2f
    jr nz, @-$58

    ld b, $3a
    dec sp
    jr nz, jr_02b_4c76

    ld a, [bc]
    jr nz, jr_02b_4c07

jr_02b_4c07:
    ld [bc], a
    inc b
    dec b
    inc [hl]
    dec [hl]
    jr nz, @+$52

    db $10
    jr nz, @+$42

    db $10
    jr nz, jr_02b_4c26

    rrca
    ld bc, $1514
    ld [hl], $37

jr_02b_4c1a:
    jr nz, @+$72

    db $10
    jr nz, jr_02b_4c7f

    db $10
    jr nz, jr_02b_4c54

    ld a, [bc]
    nop
    ld [bc], a
    inc c

jr_02b_4c26:
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
    jr nz, jr_02b_4c3f

jr_02b_4c3f:
    ld l, $2f
    ld [hl], $37
    ld [hl], $37
    ld h, $27
    inc c
    jr nz, jr_02b_4c4c

    inc c
    inc d

jr_02b_4c4c:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]

jr_02b_4c54:
    dec bc
    inc c
    ld [$050f], sp
    ld l, $2f
    jr jr_02b_4c76

    jr jr_02b_4c78

    ld a, [de]
    dec de
    inc c
    jr z, jr_02b_4c73

    dec b
    inc c
    ld b, [hl]
    ld [bc], a
    inc c
    add d
    ld [bc], a
    inc c
    inc c
    nop
    inc c
    ld b, b
    nop
    inc c
    inc d

jr_02b_4c73:
    ld [$660c], sp

jr_02b_4c76:
    ld [bc], a
    inc c

jr_02b_4c78:
    and d
    ld [bc], a
    inc c
    inc l
    nop
    inc c
    ld h, b

jr_02b_4c7f:
    nop
    inc c
    inc d
    ld [$080c], sp
    nop
    nop
    ld bc, $0302
    inc c
    add $00
    inc c
    inc b
    nop
    inc c
    ld b, [hl]
    nop
    inc c
    inc d
    ld [$280c], sp
    nop
    db $10
    ld de, $1312
    inc c
    and $00
    inc c
    inc h
    nop
    inc c
    ld h, [hl]
    nop
    inc c
    or h
    ld a, [bc]
    jr nc, jr_02b_4cdc

    inc c
    inc c
    inc b
    inc c
    inc b
    nop
    jr c, jr_02b_4cec

    jr nc, jr_02b_4ce6

    inc c
    call nc, $320a
    inc sp
    inc c
    inc l
    inc b
    inc c
    inc h
    nop
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    inc c
    inc d
    ld [$0504], sp
    jr nc, jr_02b_4cfc

    ld b, $07
    inc c
    ld b, d
    nop
    inc c
    ld b, d
    ld [bc], a
    jr c, @+$3b

    nop
    ld bc, $140c
    ld [$1514], sp

jr_02b_4cdc:
    ld [hl-], a
    inc sp
    ld d, $17
    inc c
    ld h, d
    nop
    inc c
    ld h, d
    ld [bc], a

jr_02b_4ce6:
    ld a, [hl-]
    dec sp
    db $10
    ld de, $340c

jr_02b_4cec:
    ld a, [bc]
    jr nc, @+$33

    inc c
    add d
    ld a, [de]
    inc h
    dec h
    inc c
    ld d, h
    ld a, [bc]
    ld [hl-], a
    inc sp
    inc c
    and d
    ld a, [de]

jr_02b_4cfc:
    ld h, $27
    inc c
    inc d
    ld [$2928], sp
    inc c
    add $02
    inc c
    jp nz, Jump_000_0c16

    ld [de], a
    inc c
    inc c
    and $02
    inc c
    ld [c], a
    ld d, $0c
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
    jr nc, jr_02b_4d52

    jr nc, jr_02b_4d54

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
    jr nz, jr_02b_4d31

jr_02b_4d31:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_4d3e

    inc c
    inc d

jr_02b_4d3e:
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

jr_02b_4d52:
    inc c
    inc d

jr_02b_4d54:
    ld [$2f2e], sp
    jr jr_02b_4d72

    jr jr_02b_4d74

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
    jr nc, @+$33

    inc c
    add d

jr_02b_4d72:
    ld b, $06

jr_02b_4d74:
    rlca
    inc c
    inc d
    ld [$660c], sp
    ld [bc], a
    ld [hl-], a
    inc sp
    inc c
    and d
    ld b, $16
    rla
    inc c
    inc d
    ld [$840c], sp
    nop
    jr nc, jr_02b_4dbb

    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    ld [$3400], sp
    dec [hl]
    inc c
    inc d
    ld [$a40c], sp
    nop
    ld [hl-], a
    inc sp
    db $10
    ld de, $1312
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    jr z, jr_02b_4daa

jr_02b_4daa:
    ld [hl], $37
    inc c
    inc d
    ld [$c40c], sp
    ld [bc], a
    inc c
    nop
    ld [bc], a
    jr z, jr_02b_4de0

    inc c
    jp z, Jump_000_0c02

jr_02b_4dbb:
    inc d
    ld [$e40c], sp
    ld [bc], a
    inc c
    jr nz, jr_02b_4dc5

    ld a, [hl+]
    dec hl

jr_02b_4dc5:
    inc c
    ld [$0c02], a
    inc d
    ld [$040c], sp
    ld d, $0c
    ld b, $16
    inc c
    inc d
    ld [$240c], sp
    ld d, $0c
    ld h, $16
    inc c
    inc d
    ld [$420c], sp
    inc e

jr_02b_4de0:
    inc c
    db $10
    rrca
    inc bc
    inc c
    ld h, d
    ld a, [de]
    inc c
    ld [hl], h
    rra
    add hl, sp
    nop
    ld [bc], a
    inc a
    jr z, @+$2b

    inc a
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_4e28

    jr nc, jr_02b_4e2a

    inc h
    dec h
    inc a
    nop
    ld [bc], a
    rst $38
    inc a
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc a
    jr nz, jr_02b_4e07

jr_02b_4e07:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc a
    jr nz, jr_02b_4e14

    inc a
    inc d

jr_02b_4e14:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc a
    ld [$050f], sp
    ld l, $2f
    jr jr_02b_4e3e

    jr @+$1b

    ld a, [de]

jr_02b_4e28:
    dec de
    inc a

jr_02b_4e2a:
    jr z, jr_02b_4e3b

    dec b
    inc a
    ld b, [hl]
    ld [bc], a
    jr c, @+$3b

    inc a
    add [hl]
    nop
    ld b, $07
    inc h
    dec h
    inc a
    ld b, b

jr_02b_4e3b:
    nop
    inc a
    inc d

jr_02b_4e3e:
    ld [$663c], sp
    ld [bc], a
    ld a, [hl-]
    dec sp
    inc a
    and [hl]
    nop
    ld d, $17
    ld h, $27
    inc a
    ld h, b
    nop
    inc a
    inc d
    ld [$083c], sp
    nop
    inc c
    dec c
    inc [hl]
    dec [hl]
    inc a
    ld [$3000], sp
    ld sp, $0f0e
    inc a
    ld b, [hl]
    nop
    inc a
    inc d
    ld [$283c], sp
    nop
    inc e
    dec e
    ld [hl], $37
    inc a
    jr z, jr_02b_4e6f

jr_02b_4e6f:
    ld [hl-], a
    inc sp
    ld e, $1f
    inc a
    ld h, [hl]
    nop
    inc a
    or h
    ld a, [bc]
    nop
    ld bc, $2928
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    inc a
    call z, Call_000_3c00
    add $00
    inc a
    call nc, $100a
    ld de, $2b2a
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    dec d
    inc a
    db $ec
    nop
    inc a
    and $00
    inc a
    inc d
    ld [$0302], sp
    inc a
    nop
    ld [bc], a
    inc a
    inc b
    nop
    inc [hl]
    dec [hl]
    jr nz, @+$23

    inc a
    nop
    db $10
    inc a
    inc d
    ld [$1312], sp
    inc a
    jr nz, jr_02b_4eb8

    inc a
    inc h

jr_02b_4eb8:
    nop
    ld [hl], $37
    ld [hl+], a
    inc hl
    inc a
    jr nz, jr_02b_4ed0

    inc a
    inc d
    ld [$423c], sp
    inc d
    inc a
    ld c, b
    ld [de], a
    inc a
    ld [$3c02], sp
    inc d
    ld c, $3c

jr_02b_4ed0:
    ld h, [hl]
    inc d
    inc a
    jr z, jr_02b_4ed7

    inc a
    ld [hl], h

jr_02b_4ed7:
    rra
    inc bc
    inc a
    inc b
    ld [de], a
    inc a
    ld b, b
    db $10
    inc a
    sub h
    rra
    inc bc
    inc a
    inc h
    ld [de], a
    inc a
    ld h, b
    db $10
    inc a
    inc d
    ld [$0200], sp
    inc c
    jr z, jr_02b_4f1a

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_4f29

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
    jr nz, jr_02b_4f08

jr_02b_4f08:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_4f15

    inc c
    inc d

jr_02b_4f15:
    ld [$000c], sp
    rrca
    dec l

jr_02b_4f1a:
    ld [$0c09], sp
    add b
    nop
    ld a, [bc]
    dec bc
    inc c
    ld [$2c04], sp
    dec l
    ld [$0c09], sp

jr_02b_4f29:
    inc d
    ld [$1918], sp
    inc c
    and b
    nop
    ld a, [de]
    dec de
    inc c
    jr z, jr_02b_4f39

    ld l, $2f
    jr @+$1b

jr_02b_4f39:
    inc c
    inc d
    ld [$080c], sp
    nop
    inc c
    ret nz

    ld [bc], a
    nop
    ld bc, $040c
    nop
    inc c
    add [hl]
    nop
    inc c
    inc d
    ld [$280c], sp
    nop
    inc c
    ldh [rSC], a
    db $10
    ld de, $240c
    nop
    inc c
    and [hl]
    nop
    inc c
    or h
    rrca
    inc bc
    inc c
    adc h
    ld [bc], a
    inc c
    ld [$0c00], sp
    call nc, Call_000_030f
    inc c
    xor h
    ld [bc], a
    inc c
    jr z, jr_02b_4f6f

jr_02b_4f6f:
    inc c
    inc d
    ld [$0504], sp
    inc c
    ret nz

    inc b
    ld b, $07
    inc c
    add h
    ld [bc], a
    nop
    ld bc, $140c
    ld [$1514], sp
    inc c
    ldh [rDIV], a
    ld d, $17
    inc c
    and h
    ld [bc], a
    db $10
    ld de, $140c
    ld [$060c], sp
    ld [bc], a
    inc c
    add d
    jr jr_02b_4fbb

    dec h
    inc c
    inc d
    ld [$260c], sp
    ld [bc], a
    inc c
    and d
    jr jr_02b_4fc8

    daa
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
    ld a, [bc]
    jr z, jr_02b_4fe4

jr_02b_4fbb:
    ld a, [bc]
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_4ff3

    jr nc, jr_02b_4ff5

    inc h
    dec h
    ld a, [bc]
    nop

jr_02b_4fc8:
    ld [bc], a
    rst $38
    ld a, [bc]
    inc d
    rlca
    ld a, [hl+]
    dec hl
    ld a, [bc]
    jr nz, jr_02b_4fd2

jr_02b_4fd2:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    ld a, [bc]
    jr nz, jr_02b_4fdf

    ld a, [bc]
    inc d

jr_02b_4fdf:
    ld [$000a], sp
    ld b, $38

jr_02b_4fe4:
    add hl, sp
    ld b, $07
    ld [$0809], sp
    add hl, bc
    inc h
    dec h
    ld a, [bc]
    inc d
    rrca
    inc bc
    ld a, [hl-]
    dec sp

jr_02b_4ff3:
    ld d, $17

jr_02b_4ff5:
    jr jr_02b_5010

    jr @+$1b

    ld h, $27
    ld a, [bc]
    inc d
    ld [$500a], sp
    nop
    ld a, [bc]
    nop
    nop
    inc b
    dec b
    inc [hl]
    dec [hl]
    ld a, [bc]
    adc d
    nop
    ld a, [bc]
    ld c, d
    nop
    ld a, [bc]
    inc d

jr_02b_5010:
    ld [$700a], sp
    nop
    ld a, [bc]
    jr nz, jr_02b_5017

jr_02b_5017:
    inc d
    dec d
    ld [hl], $37
    ld a, [bc]
    xor d
    nop
    ld a, [bc]
    ld l, d
    nop
    ld a, [bc]
    inc d
    ld [$3130], sp
    ld a, [bc]
    ld c, h
    ld [bc], a
    ld c, $0f
    ld a, [bc]
    ld [$0a00], sp
    jp z, $0a02

    inc d
    ld [$3332], sp
    ld a, [bc]
    ld l, h
    ld [bc], a
    ld e, $1f
    ld a, [bc]
    jr z, jr_02b_503e

jr_02b_503e:
    ld a, [bc]
    ld [$0a02], a
    or h
    ld a, [bc]
    ld a, [bc]
    ld [$3800], sp
    add hl, sp
    jr nz, @+$23

    jr nc, jr_02b_507e

    nop
    ld bc, $0302
    inc b
    dec b
    ld a, [bc]
    jp nc, $0a0c

    jr z, jr_02b_5059

jr_02b_5059:
    ld a, [hl-]
    dec sp
    ld [hl+], a
    inc hl
    ld [hl-], a
    inc sp
    db $10
    ld de, $1312
    inc d
    dec d
    ld a, [bc]
    ld a, [c]
    ld a, [bc]
    ld a, [bc]
    adc b
    ld [bc], a
    jr c, jr_02b_50a6

    ld a, [bc]
    adc d
    nop
    ld a, [bc]
    inc c
    ld [bc], a
    ld [bc], a
    inc bc
    ld a, [bc]
    inc d
    ld [$a80a], sp
    ld [bc], a
    ld a, [hl-]
    dec sp
    ld a, [bc]

jr_02b_507e:
    xor d
    nop
    ld a, [bc]
    inc l
    ld [bc], a
    ld [de], a
    inc de
    ld a, [bc]
    inc d
    ld [$060a], sp
    nop
    ld a, [bc]
    adc d
    ld [bc], a
    nop
    ld bc, $000a
    ld [bc], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    ld h, $00
    ld a, [bc]
    xor d
    ld [bc], a
    db $10
    ld de, $200a
    ld [bc], a
    ld a, [bc]
    ld [hl-], a
    inc c
    ld [bc], a
    inc bc

jr_02b_50a6:
    ld a, [bc]
    jp nz, $0a12

    adc h
    inc d
    ld a, [bc]
    ld [de], a
    inc c
    ld [de], a
    inc de
    ld a, [bc]
    ld [c], a
    ld [de], a
    ld a, [bc]
    xor h
    inc d
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc a
    jr z, @+$2b

    inc a
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_50f7

    jr nc, @+$33

    inc h
    dec h
    inc a
    nop
    ld [bc], a
    rst $38
    inc a
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc a
    jr nz, jr_02b_50d6

jr_02b_50d6:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc a
    jr nz, jr_02b_50e3

    inc a
    inc d

jr_02b_50e3:
    ld [$043c], sp
    nop
    ld [$0a09], sp
    dec bc
    inc a
    ld [$0600], sp
    rlca
    ld [$3c09], sp
    inc c
    nop
    inc a
    inc d

jr_02b_50f7:
    ld a, [bc]
    ld l, $2f
    jr jr_02b_5115

    ld a, [de]
    dec de
    inc a
    jr z, jr_02b_5101

jr_02b_5101:
    ld d, $17
    jr jr_02b_511e

    inc a
    inc l
    nop
    inc a
    inc d
    ld [$0908], sp
    ld c, $0f
    inc [hl]
    dec [hl]
    inc a
    add h
    ld b, $3c

jr_02b_5115:
    ld c, h
    nop
    inc a
    inc d
    ld [$1918], sp
    ld e, $1f

jr_02b_511e:
    ld [hl], $37
    inc a
    and h
    ld b, $3c
    ld l, h
    nop
    inc a
    inc d
    ld [$3130], sp
    jr nz, jr_02b_514e

    jr c, jr_02b_5168

    jr c, jr_02b_516a

    nop
    ld bc, $0504
    inc a
    call nz, Call_000_3400
    dec [hl]
    jr nc, jr_02b_516d

    inc a
    inc d
    ld [$3332], sp
    ld [hl+], a
    inc hl
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    db $10
    ld de, $1514
    inc a
    db $e4
    nop

jr_02b_514e:
    ld [hl], $37
    ld [hl-], a
    inc sp
    inc a
    or h
    ld a, [bc]
    inc [hl]
    dec [hl]
    jr c, @+$3b

    inc a
    ld c, d
    nop
    inc a
    ld b, [hl]
    nop
    jr c, jr_02b_519a

    inc c
    dec c
    inc a
    jp nc, $360c

    scf

jr_02b_5168:
    ld a, [hl-]
    dec sp

jr_02b_516a:
    inc a
    ld l, d
    nop

jr_02b_516d:
    inc a
    ld h, [hl]
    nop
    ld a, [hl-]
    dec sp
    inc e
    dec e
    inc a
    ld a, [c]
    ld a, [bc]
    ld [bc], a
    inc bc
    inc a
    jp z, Jump_000_3c00

    ld [$3c00], sp
    ld [$3800], sp
    add hl, sp
    inc h
    dec h
    ld [bc], a
    inc bc
    inc a
    inc d
    ld [$1312], sp
    inc a
    ld [$3c00], a
    jr z, jr_02b_5193

jr_02b_5193:
    inc a
    jr z, jr_02b_5196

jr_02b_5196:
    ld a, [hl-]
    dec sp
    ld h, $27

jr_02b_519a:
    ld [de], a
    inc de
    inc a
    inc [hl]
    inc c
    inc a
    add h
    ld [$503c], sp
    rrca
    ld bc, $a43c
    ld [$703c], sp
    inc c
    inc a
    nop
    nop
    ld [bc], a
    inc bc
    inc a
    call nz, $3c16
    db $10
    rrca
    ld bc, $1312
    inc a
    db $e4
    ld d, $3c
    jr nc, jr_02b_51cc

    nop
    ld [bc], a
    inc c
    jr z, jr_02b_51ee

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_51fd

jr_02b_51cc:
    jr nc, jr_02b_51ff

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
    jr nz, jr_02b_51dc

jr_02b_51dc:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_51e9

    inc c
    inc d

jr_02b_51e9:
    ld [$020c], sp
    ld [bc], a
    ld a, [bc]

jr_02b_51ee:
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

jr_02b_51fd:
    ld l, $2f

jr_02b_51ff:
    ld a, [de]
    dec de
    inc c
    jr z, jr_02b_5204

jr_02b_5204:
    ld d, $17
    jr @+$1b

    jr jr_02b_5223

    ld h, $27
    inc c
    inc d
    ld [$2d2c], sp
    ld [$0c09], sp
    ld b, [hl]
    ld [bc], a
    inc c
    add [hl]
    inc b
    ld b, $07
    inc c
    inc d
    ld [$2f2e], sp
    jr jr_02b_523b

    inc c

jr_02b_5223:
    ld h, [hl]
    ld [bc], a
    inc c
    and [hl]
    inc b
    ld d, $17
    inc c
    ld [hl], h
    ld a, [bc]
    inc [hl]
    dec [hl]
    inc c
    jp nz, RST_00

    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c

jr_02b_523b:
    ld [$0c00], sp
    sub h
    ld a, [bc]
    ld [hl], $37
    inc c
    ld [c], a
    nop
    db $10
    ld de, $1312
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    jr z, jr_02b_5250

jr_02b_5250:
    inc c
    ld [hl], h
    ld a, [bc]
    jr c, jr_02b_528e

    jr c, @+$3b

    inc c
    ld a, [bc]
    ld b, $04
    dec b
    inc [hl]
    dec [hl]
    inc c
    sub h
    ld a, [bc]
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    inc c
    ld a, [hl+]
    ld b, $14
    dec d
    ld [hl], $37
    inc c
    ld [hl], h
    ld a, [bc]
    inc c
    adc h
    inc b
    inc c
    inc c
    inc b
    ld [bc], a
    inc bc
    inc c
    sub h
    ld a, [bc]
    inc c
    xor h
    inc b
    inc c
    inc l
    inc b
    ld [de], a
    inc de
    inc c
    inc [hl]
    rra
    ld bc, $3938
    inc c
    ld c, b
    ld d, $0c
    ld d, h
    rra

jr_02b_528e:
    ld bc, $3b3a
    inc c
    ld l, b
    ld d, $0c
    inc [hl]
    ld a, [bc]
    inc c
    jp z, Jump_000_0c06

    inc c
    rrca
    inc bc
    inc c
    ld [$0c06], a
    inc l
    rrca
    ld bc, $0200
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_52e2

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
    jr nz, jr_02b_52c1

jr_02b_52c1:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_52ce

    inc c
    inc d

jr_02b_52ce:
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

jr_02b_52e2:
    inc d
    ld [$2f2e], sp
    jr jr_02b_5301

    jr jr_02b_5303

    ld e, $1f
    inc c
    jr z, jr_02b_52ef

jr_02b_52ef:
    ld d, $17
    inc c
    ld h, d
    nop
    ld h, $27
    inc c
    inc [hl]
    ld a, [bc]
    inc c
    ld [$0402], sp
    dec b
    inc [hl]
    dec [hl]
    inc c

jr_02b_5301:
    adc d
    ld [bc], a

jr_02b_5303:
    ld b, $07
    inc c
    ld d, h
    ld a, [bc]
    inc c
    jr z, jr_02b_530d

    inc d
    dec d

jr_02b_530d:
    ld [hl], $37
    inc c
    xor d
    ld [bc], a
    ld d, $17
    inc c
    ld [hl], h
    inc c
    jr c, @+$3b

    ld b, $07
    ld a, [bc]
    dec bc
    jr c, jr_02b_5358

    jr nc, @+$33

    inc c
    adc d
    ld [bc], a
    inc c
    sub h
    inc c
    ld a, [hl-]
    dec sp
    ld d, $17
    ld a, [de]
    dec de
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    inc c
    xor d
    ld [bc], a
    inc c
    inc [hl]
    ld a, [bc]
    inc c
    jp z, Jump_000_0c00

    inc b
    ld [de], a
    jr c, jr_02b_5378

    nop
    ld bc, $880c
    nop
    inc c
    ld d, h
    ld a, [bc]
    inc c
    ld [$0c00], a
    inc h
    ld [de], a
    ld a, [hl-]
    dec sp
    db $10
    ld de, $a80c
    nop
    inc c
    inc [hl]
    ld a, [bc]
    inc [hl]

jr_02b_5358:
    dec [hl]
    inc c
    inc b
    ld [de], a
    nop
    ld bc, $0302
    inc c
    nop
    nop
    ld [bc], a
    inc bc
    inc c
    ld d, h
    ld a, [bc]
    ld [hl], $37
    inc c
    inc h
    ld [de], a
    db $10
    ld de, $1312
    inc c
    jr nz, jr_02b_5374

jr_02b_5374:
    ld [de], a
    inc de
    inc c
    ld [hl], h

jr_02b_5378:
    ld c, $0c
    ld c, b
    ld [bc], a
    inc c
    inc c
    rrca
    ld bc, $260c
    ld [bc], a
    inc c
    ld l, b
    ld [bc], a
    inc c
    inc l
    rrca
    ld bc, $500c
    db $10
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    ld [$070f], sp
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    jr z, jr_02b_53ad

    dec b
    nop
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_53dc

    jr nc, @+$33

jr_02b_53ad:
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
    jr nz, jr_02b_53bb

jr_02b_53bb:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_53c8

    inc c
    inc d

jr_02b_53c8:
    ld [$000c], sp
    rrca
    ld sp, $2d2c
    ld a, [bc]
    dec bc
    jr nc, @+$33

    nop
    ld bc, $020c
    ld [bc], a
    ld [$0c09], sp
    inc d

jr_02b_53dc:
    inc c
    ld l, $2f
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    db $10
    ld de, $220c
    ld [bc], a
    jr jr_02b_5403

    inc c
    ld [hl], h
    ld c, $0c
    ld [$0600], sp
    rlca
    ld [$0809], sp
    add hl, bc
    inc c
    add [hl]
    nop
    inc c
    sub h
    ld c, $0c
    jr z, jr_02b_53ff

jr_02b_53ff:
    ld d, $17
    jr @+$1b

jr_02b_5403:
    jr jr_02b_541e

    inc c
    and [hl]
    nop
    inc c
    or h
    rrca
    inc bc
    inc c
    ld b, $16
    inc c
    call nc, Call_000_030f
    inc c
    ld h, $16
    inc c
    or h
    rrca
    inc bc
    nop
    ld bc, $0302

jr_02b_541e:
    inc c
    ld c, h
    ld [de], a
    inc c
    call nc, Call_000_030f
    db $10
    ld de, $1312
    inc c
    ld l, h
    ld [de], a
    inc c
    inc [hl]
    ld c, $04
    dec b
    inc c
    ret z

    nop
    inc c
    inc c
    rrca
    rlca
    inc d
    dec d
    inc c
    add sp, $00
    inc c
    inc l
    rrca
    ld b, c
    nop
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_547e

    jr nc, jr_02b_5480

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
    jr nz, jr_02b_545d

jr_02b_545d:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_546a

    inc c
    inc d

jr_02b_546a:
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
    jr jr_02b_5497

jr_02b_547e:
    jr jr_02b_5499

jr_02b_5480:
    ld h, $27
    inc c
    inc [hl]
    ld c, $28
    add hl, hl
    inc b
    dec b
    jr nc, jr_02b_54bc

    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    inc c
    ld c, d
    nop
    inc c
    inc d
    ld c, $2a
    dec hl

jr_02b_5497:
    inc d
    dec d

jr_02b_5499:
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld [hl], $37
    inc c
    ld l, d
    nop
    inc c
    ld [hl], h
    rrca
    ld bc, $2928
    ld [bc], a
    inc bc
    inc b
    dec b
    jr c, jr_02b_54e7

    inc c
    adc [hl]
    nop
    inc c
    sub h
    rrca
    ld bc, $2b2a
    ld [de], a
    inc de
    inc d
    dec d
    ld a, [hl-]

jr_02b_54bc:
    dec sp
    inc c
    xor [hl]
    nop
    inc c
    or h
    rrca
    inc bc
    inc c
    inc b
    nop
    inc c
    adc $0f
    add hl, bc
    inc c
    inc h
    nop
    inc c
    xor $0f
    rlca
    inc l
    dec l
    ld [$0a09], sp
    dec bc
    inc c
    adc d
    nop
    nop
    ld bc, $940c
    rrca
    ld bc, $2f2e
    jr jr_02b_54fe

    ld a, [de]
    dec de

jr_02b_54e7:
    inc c
    xor d
    nop
    db $10
    ld de, $340c
    rrca
    ld bc, $0b0a
    inc c
    adc [hl]
    nop
    inc c
    ld [$0c02], sp
    inc d
    rrca
    ld bc, $1b1a

jr_02b_54fe:
    inc c
    xor [hl]
    nop
    inc c
    jr z, jr_02b_5506

    inc c
    inc [hl]

jr_02b_5506:
    rrca
    dec b
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc c
    ld [de], a
    rrca
    rlca
    db $10
    ld de, $1312
    ld [de], a
    inc de
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
    jr nz, jr_02b_5537

jr_02b_5537:
    ld l, $2f
    ld [hl], $37
    ld [hl], $37
    ld h, $27
    inc c
    jr nz, jr_02b_5544

    inc c
    inc d

jr_02b_5544:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [$050f], sp
    ld l, $2f
    jr jr_02b_556e

    jr jr_02b_5570

    ld a, [de]
    dec de
    inc c
    jr z, @+$11

    rlca
    jr nc, @+$33

    inc c
    add d
    nop
    inc [hl]
    dec [hl]
    nop
    ld bc, $400c
    ld [bc], a
    ld [$0c09], sp
    ld d, h
    ld a, [bc]

jr_02b_556e:
    ld [hl-], a
    inc sp

jr_02b_5570:
    inc c
    and d
    nop
    ld [hl], $37
    db $10
    ld de, $600c
    ld [bc], a
    jr jr_02b_5595

    inc c
    ld [hl], h
    inc c
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc c
    inc b
    inc b
    inc [hl]
    dec [hl]
    inc c
    sub h
    inc c
    db $10
    ld de, $1312
    ld [de], a
    inc de
    inc c
    inc h

jr_02b_5595:
    inc b
    ld [hl], $37
    inc c
    ld [hl], h
    inc c
    ld b, $07
    inc c
    adc [hl]
    ld [bc], a
    inc c
    ld b, [hl]
    ld [bc], a
    inc c
    jp nc, Jump_000_160e

    rla
    inc c
    xor [hl]
    ld [bc], a
    inc c
    ld h, [hl]
    ld [bc], a
    inc c
    ld a, [c]
    ld c, $30
    ld sp, $3938
    inc c
    add d
    ld [bc], a
    inc c
    add d
    nop
    nop
    ld bc, $940c
    ld c, $3a
    dec sp
    inc c
    and d
    ld [bc], a
    inc c
    and d
    nop
    db $10
    ld de, $740c
    inc c
    jr c, jr_02b_5608

    inc c
    add h
    db $10
    inc c
    add d
    inc b
    inc h
    dec h
    inc c
    sub h
    inc c
    ld a, [hl-]
    dec sp
    inc c
    and h
    db $10
    inc c
    and d
    inc b
    ld h, $27
    inc c
    inc d
    ld [$2928], sp
    inc c
    add $00
    inc b
    dec b
    inc c
    ld [$0c00], sp
    call nz, Call_000_0c04
    inc d
    ld a, [bc]
    inc c
    and $00
    inc d
    dec d
    inc c
    jr z, jr_02b_55ff

jr_02b_55ff:
    inc c
    db $e4
    inc b
    inc c
    inc d
    ld [$0200], sp
    inc c

jr_02b_5608:
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_5642

    jr nc, jr_02b_5644

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
    jr nz, jr_02b_5621

jr_02b_5621:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_562e

    inc c
    inc d

jr_02b_562e:
    ld [$040c], sp
    nop
    ld [$0a09], sp
    dec bc
    inc c
    ld [$0600], sp
    rlca
    ld [$0809], sp
    add hl, bc
    inc h
    dec h
    inc c

jr_02b_5642:
    inc d
    ld a, [bc]

jr_02b_5644:
    ld l, $2f
    jr jr_02b_5661

    ld a, [de]
    dec de
    inc c
    jr z, jr_02b_564d

jr_02b_564d:
    ld d, $17
    jr jr_02b_566a

    jr jr_02b_566c

    ld h, $27
    inc c
    inc d
    ld [$2d2c], sp
    inc c
    ld b, [hl]
    ld [bc], a
    inc c
    add h
    ld b, $06

jr_02b_5661:
    rlca
    inc c
    inc d
    ld [$2f2e], sp
    inc c
    ld h, [hl]
    ld [bc], a

jr_02b_566a:
    inc c
    and h

jr_02b_566c:
    ld b, $16
    rla
    inc c
    ld [hl], h
    ld a, [bc]
    jr c, @+$3b

    jr c, jr_02b_56af

    inc c
    ld [$0000], sp
    ld bc, $0302
    inc b
    dec b
    inc c
    ld [$0c00], sp
    sub h
    ld a, [bc]
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    inc c
    jr z, jr_02b_568c

jr_02b_568c:
    db $10
    ld de, $1312
    inc d
    dec d
    inc c
    jr z, jr_02b_5695

jr_02b_5695:
    inc c
    ld [hl], h
    ld a, [bc]
    inc [hl]
    dec [hl]
    nop
    ld bc, $ce0c
    nop
    inc c
    ld c, h
    nop
    inc c
    ld b, [hl]
    ld [bc], a
    inc c
    sub h
    ld a, [bc]
    ld [hl], $37
    db $10
    ld de, $ee0c
    nop

jr_02b_56af:
    inc c
    ld l, h
    nop
    inc c
    ld h, [hl]
    ld [bc], a
    inc c
    db $f4
    inc c
    ld b, $07
    inc c
    add d
    ld [$0100], sp
    inc c
    inc d
    inc e
    ld d, $17
    inc c
    and d
    ld [$1110], sp
    inc c
    db $f4
    inc c
    inc c
    jp nz, Jump_000_0c00

    call nz, Call_000_0c02
    ld [$0c02], sp
    inc d
    inc e
    inc c
    ld [c], a
    nop
    inc c
    db $e4
    ld [bc], a
    inc c
    jr z, jr_02b_56e3

    inc c
    inc [hl]

jr_02b_56e3:
    ld a, [bc]
    ld [bc], a
    inc bc
    inc c
    call z, Call_000_0c04
    jp z, $0200

    inc bc
    inc c
    ld [de], a
    inc c
    ld [de], a
    inc de
    inc c
    db $ec
    inc b
    inc c
    ld [$1200], a
    inc de
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
    jr nz, jr_02b_571a

jr_02b_571a:
    ld l, $2f
    ld [hl], $37
    ld [hl], $37
    ld h, $27
    inc c
    jr nz, jr_02b_5727

    inc c
    inc d

jr_02b_5727:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    jr nc, jr_02b_5763

    inc [hl]
    dec [hl]
    ld b, $07
    ld [$0c09], sp
    inc c
    nop
    inc c
    inc d
    ld [$2f2e], sp
    jr jr_02b_575b

    jr jr_02b_575d

    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld d, $17
    jr jr_02b_5767

    inc c
    inc l
    nop
    inc c
    inc d
    ld [$0b0a], sp
    inc [hl]
    dec [hl]
    jr nc, @+$33

    inc c

jr_02b_575b:
    add h
    nop

jr_02b_575d:
    inc c
    ld [$0c00], sp
    ld c, d
    nop

jr_02b_5763:
    inc h
    dec h
    inc c
    inc d

jr_02b_5767:
    ld [$1b1a], sp
    ld [hl], $37
    ld [hl-], a
    inc sp
    inc c
    and h
    nop
    inc c
    jr z, jr_02b_5774

jr_02b_5774:
    inc c
    ld l, d
    nop
    ld h, $27
    inc c
    inc d
    ld [$080c], sp
    nop
    inc c
    add h
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    inc c
    ld [$0c02], sp
    inc d
    ld [$280c], sp
    nop
    inc c
    and h
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    inc c
    jr z, jr_02b_579f

    inc c
    or h

jr_02b_579f:
    ld a, [bc]
    inc c
    ret z

    nop
    ld [bc], a
    inc bc
    inc c
    ld b, b
    nop
    inc c
    ld b, [hl]
    ld [bc], a
    inc c
    jp nc, $0c0c

    add sp, $00
    ld [de], a
    inc de
    inc c
    ld h, b
    nop
    inc c
    ld h, [hl]
    ld [bc], a
    inc c
    or d
    ld a, [bc]
    ld [bc], a
    inc bc
    inc c
    nop
    inc b
    jr c, jr_02b_57fc

    jr c, jr_02b_57fe

    inc c
    ld c, $1e
    ld [de], a
    inc de
    inc c
    jr nz, jr_02b_57d1

    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp

jr_02b_57d1:
    inc c
    ld l, $1e
    inc c
    nop
    inc b
    inc c
    ld b, [hl]
    nop
    inc c
    adc b
    ld [bc], a
    inc c
    sub d
    ld a, [bc]
    inc c
    jr nz, jr_02b_57e7

    inc c
    ld h, [hl]
    nop
    inc c

jr_02b_57e7:
    xor b
    ld [bc], a
    inc c
    ld [hl], d
    rra
    inc bc
    inc c
    add d
    nop
    inc c
    ld [bc], a
    ld [de], a
    inc c
    ld [de], a
    rrca
    dec b
    inc c
    and $02
    inc c
    ld h, b

jr_02b_57fc:
    db $10
    inc c

jr_02b_57fe:
    inc d
    ld [$0200], sp
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_583d

    jr nc, jr_02b_583f

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
    jr nz, jr_02b_581c

jr_02b_581c:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_5829

    inc c
    inc d

jr_02b_5829:
    ld [$040c], sp
    nop
    ld [$0a09], sp
    dec bc
    jr nc, jr_02b_5864

    jr c, jr_02b_586e

    inc c
    inc c
    rrca
    inc bc
    ld l, $2f
    jr jr_02b_5856

jr_02b_583d:
    ld a, [de]
    dec de

jr_02b_583f:
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    inc c
    inc l
    rrca
    ld bc, $440c
    nop
    inc [hl]
    dec [hl]
    inc c
    ld c, b
    nop
    nop
    ld bc, $000c
    ld [bc], a
    inc c
    ld [de], a

jr_02b_5856:
    ld a, [bc]
    inc c
    ld h, h
    nop
    ld [hl], $37
    inc c
    ld l, b
    nop
    db $10
    ld de, $200c
    ld [bc], a

jr_02b_5864:
    inc c
    ld [hl-], a
    ld a, [bc]
    inc [hl]
    dec [hl]
    inc c
    add h
    nop
    jr nc, jr_02b_589f

jr_02b_586e:
    inc c
    adc d
    ld b, $0c
    ld [de], a
    ld a, [bc]
    ld [hl], $37
    inc c
    and h
    nop
    ld [hl-], a
    inc sp
    inc c
    xor d
    ld b, $0c
    ld [hl-], a
    ld a, [bc]
    inc c
    ld [$0c00], sp
    ld [$0600], sp
    rlca
    inc c
    inc c
    inc b
    inc c
    ld [de], a
    ld a, [bc]
    inc c
    jr z, jr_02b_5892

jr_02b_5892:
    inc c
    jr z, jr_02b_5895

jr_02b_5895:
    ld d, $17
    inc c
    inc l
    inc b
    inc c
    ld [hl-], a
    ld a, [bc]
    ld [bc], a
    inc bc

jr_02b_589f:
    inc b
    dec b
    inc c
    ld c, b
    nop
    jr c, jr_02b_58df

    inc c
    ld [$0c16], sp
    inc d
    ld [$1312], sp
    inc d
    dec d
    inc c
    ld l, b
    nop
    ld a, [hl-]
    dec sp
    inc c
    jr z, jr_02b_58ce

    inc c
    inc [hl]
    ld a, [bc]
    jr z, jr_02b_58e6

    inc c
    ld b, b
    db $10
    inc c
    ld b, [hl]
    db $10
    inc c
    inc c
    rrca
    dec b
    inc c
    ld h, b
    db $10
    inc c
    ld h, [hl]
    db $10
    inc c

jr_02b_58ce:
    ld l, h
    rra
    dec b
    inc c
    inc b
    rrca
    add hl, hl
    nop
    ld [bc], a
    ld a, [bc]
    jr z, @+$2b

    ld a, [bc]
    nop
    nop
    inc l
    dec l

jr_02b_58df:
    jr nc, jr_02b_5912

    jr nc, jr_02b_5914

    inc h
    dec h
    ld a, [bc]

jr_02b_58e6:
    nop
    ld [bc], a
    rst $38
    ld a, [bc]
    inc d
    rlca
    ld a, [hl+]
    dec hl
    ld a, [bc]
    jr nz, jr_02b_58f1

jr_02b_58f1:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    ld a, [bc]
    jr nz, jr_02b_58fe

    ld a, [bc]
    inc d

jr_02b_58fe:
    ld [$000a], sp
    ld [$0706], sp
    ld [$0809], sp
    add hl, bc
    inc h
    dec h
    ld a, [bc]
    inc d
    rrca
    dec b
    ld d, $17
    jr @+$1b

jr_02b_5912:
    jr jr_02b_592d

jr_02b_5914:
    ld h, $27
    ld a, [bc]
    inc d
    ld [$4e0a], sp
    nop
    ld a, [bc]
    ld d, b
    nop
    inc b
    dec b
    ld a, [bc]
    ld [$0a00], sp
    ld [$0a02], sp
    inc d
    ld [$6e0a], sp
    nop

jr_02b_592d:
    ld a, [bc]
    ld [hl], b
    nop
    inc d
    dec d
    ld a, [bc]
    jr z, jr_02b_5935

jr_02b_5935:
    ld a, [bc]
    jr z, jr_02b_593a

    ld a, [bc]
    inc d

jr_02b_593a:
    ld [$8a0a], sp
    ld [bc], a
    ld b, $07
    inc h
    dec h
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld a, [bc]
    adc b
    nop
    ld a, [bc]
    ld d, d
    ld a, [bc]
    ld a, [bc]
    xor d
    ld [bc], a
    ld d, $17
    ld h, $27
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld a, [bc]
    xor b
    nop
    ld a, [bc]
    ld [hl], d
    ld a, [bc]
    inc [hl]
    dec [hl]
    ld a, [bc]
    nop
    ld [de], a
    ld a, [bc]
    ld c, h
    ld [bc], a
    ld c, $0f
    ld a, [bc]
    sub b
    inc c
    ld [hl], $37
    ld a, [bc]
    jr nz, @+$14

    ld a, [bc]
    ld l, h
    ld [bc], a
    ld e, $1f
    ld a, [bc]
    or b
    inc c
    ld a, [bc]
    adc b
    inc b
    jr c, jr_02b_59b5

    jr c, @+$3b

    jr nc, @+$33

    jr nz, jr_02b_59a3

    ld a, [bc]
    sub b
    inc c
    ld a, [bc]
    xor b
    inc b
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    ld [hl+], a
    inc hl
    ld a, [bc]
    or b
    inc c
    ld a, [bc]
    ld b, $02
    ld a, [bc]
    ld b, [hl]
    inc d
    ld a, [bc]
    adc [hl]
    ld c, $0a
    ld h, $02
    ld a, [bc]
    ld h, [hl]
    inc d
    ld a, [bc]

jr_02b_59a3:
    xor [hl]
    ld c, $28
    add hl, hl
    ld a, [bc]
    jp z, Jump_000_3004

    ld sp, $0100
    ld a, [bc]
    jp z, $0a00

    ld [de], a
    inc c
    ld a, [bc]

jr_02b_59b5:
    ld [$3204], a
    inc sp
    db $10
    ld de, $ea0a
    nop
    ld a, [bc]
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
    jr nc, jr_02b_59fe

    jr nc, jr_02b_5a00

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
    jr nz, jr_02b_59dd

jr_02b_59dd:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_59ea

    inc c
    inc d

jr_02b_59ea:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [$050f], sp
    ld l, $2f
    jr @+$1b

    jr jr_02b_5a16

    ld a, [de]

jr_02b_59fe:
    dec de
    inc c

jr_02b_5a00:
    jr z, jr_02b_5a11

    dec b
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    inc c
    add d
    ld [bc], a
    nop
    ld bc, $400c
    ld [bc], a
    inc h
    dec h

jr_02b_5a11:
    inc c
    inc d
    ld [$1b1a], sp

jr_02b_5a16:
    ld [hl], $37
    inc c
    and d
    ld [bc], a
    db $10
    ld de, $600c
    ld [bc], a
    ld h, $27
    inc c
    inc d
    ld [$3130], sp
    inc c
    add [hl]
    ld [bc], a
    ld [bc], a
    inc bc
    inc c
    inc b
    nop
    inc [hl]
    dec [hl]
    inc c
    ld a, [bc]
    nop
    inc c
    inc d
    ld [$3332], sp
    inc c
    and [hl]
    ld [bc], a
    ld [de], a
    inc de
    inc c
    inc h
    nop
    ld [hl], $37
    inc c
    ld a, [hl+]
    nop
    inc c
    or h
    ld a, [bc]
    inc c
    ld [$0600], sp
    rlca
    ld [$0e09], sp
    rrca
    inc c
    add b
    nop
    inc c
    ret nc

    ld c, $0c
    jr z, jr_02b_5a5b

jr_02b_5a5b:
    ld d, $17
    jr jr_02b_5a78

    ld e, $1f
    inc c
    and b
    nop
    inc c
    ldh a, [$0c]
    inc b
    dec b
    inc c
    nop
    ld [de], a
    jr c, jr_02b_5aa7

    jr nz, jr_02b_5a91

    inc c
    adc $00
    nop
    ld bc, $120c
    ld a, [bc]

jr_02b_5a78:
    inc d
    dec d
    inc c
    jr nz, jr_02b_5a8f

    ld a, [hl-]
    dec sp
    ld [hl+], a
    inc hl
    inc c
    xor $00
    db $10
    ld de, $320c
    ld a, [bc]
    jr z, jr_02b_5ab4

    ld [bc], a
    inc bc
    inc c
    ld b, b

jr_02b_5a8f:
    inc d
    inc c

jr_02b_5a91:
    adc b
    nop
    inc c
    db $10
    ld c, $12
    inc de
    inc c
    ld h, b
    inc d
    inc c
    xor b
    nop
    inc c
    jr nc, jr_02b_5aad

    inc c
    nop
    ld [bc], a
    inc c
    ld b, b
    ld [de], a

jr_02b_5aa7:
    inc c
    adc [hl]
    ld [de], a
    inc c
    ld [de], a
    rrca

jr_02b_5aad:
    ld bc, $600c
    ld [de], a
    inc c
    xor [hl]
    ld [de], a

jr_02b_5ab4:
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    ld c, $28
    add hl, hl
    ld c, $00
    nop
    inc l
    dec l
    jr nc, @+$33

    jr nc, @+$33

    inc h
    dec h
    ld c, $00
    ld [bc], a
    rst $38
    ld c, $14
    rlca
    ld a, [hl+]
    dec hl
    ld c, $20
    nop
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    ld c, $20
    ld [bc], a
    ld c, $14
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    ld c, $08
    nop
    ld b, $07
    ld c, $42
    nop
    inc h
    dec h
    ld c, $14
    ld [$2f2e], sp
    jr @+$1b

    jr jr_02b_5b15

    ld a, [de]
    dec de
    ld c, $28
    nop
    ld d, $17
    ld c, $62
    nop
    ld h, $27
    ld c, $14
    ld [$0b0a], sp
    inc [hl]
    dec [hl]
    ld c, $82
    nop
    ld c, $08
    nop

jr_02b_5b15:
    jr c, @+$3b

    ld c, $8c
    nop
    ld c, $52
    ld a, [bc]
    ld a, [de]
    dec de
    ld [hl], $37
    ld c, $a2
    nop
    ld c, $28
    nop
    ld a, [hl-]
    dec sp
    ld c, $ac
    nop
    ld c, $72
    ld a, [bc]
    ld c, $08
    nop
    nop
    ld bc, $0504
    ld c, $86
    nop
    ld c, $c4
    nop
    ld c, $90
    inc c
    ld c, $28
    nop
    db $10
    ld de, $1514
    ld c, $a6
    nop
    ld c, $e4
    nop
    ld c, $b0
    rrca
    ld bc, $0706
    ld c, $80
    nop
    ld c, $02
    ld [de], a
    ld c, $d0
    rrca
    ld bc, $1716
    ld c, $a0
    nop
    ld c, $22
    ld [de], a
    ld c, $b0
    inc c
    ld c, $c6
    ld [bc], a
    ld c, $86
    rrca
    rlca
    ld c, $e6
    ld [bc], a
    ld c, $a6
    rrca
    rlca
    ld c, $06
    nop
    inc c
    dec c
    ld c, $44
    ld [de], a
    jr c, @+$3b

    ld c, $84
    db $10
    ld c, $52
    inc c
    ld [hl-], a
    inc sp
    inc e
    dec e
    ld c, $64
    ld [de], a
    ld a, [hl-]
    dec sp
    ld c, $a4
    db $10
    ld c, $72
    ld a, [bc]
    jr z, @+$2b

    ld [bc], a
    inc bc
    jr z, jr_02b_5bc3

    inc b
    dec b
    ld c, $c0
    ld [bc], a
    ld c, $c0
    ld [de], a
    ld c, $14
    ld a, [bc]
    ld [de], a
    inc de
    ld a, [hl+]
    dec hl
    inc d
    dec d
    ld c, $e0
    ld [bc], a
    ld c, $e0
    ld [de], a
    ld c, $14
    ld [$0200], sp
    nop
    jr z, jr_02b_5be2

    nop
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_5bf1

    jr nc, jr_02b_5bf3

    inc h

jr_02b_5bc3:
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
    jr nz, jr_02b_5bd0

jr_02b_5bd0:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_02b_5bdd

    nop
    inc d

jr_02b_5bdd:
    ld [$0000], sp
    rrca
    dec l

jr_02b_5be2:
    ld [$0009], sp
    inc c
    nop
    inc l
    dec l
    jr c, jr_02b_5c24

    nop
    ld a, [bc]
    rrca
    inc bc
    jr jr_02b_5c0a

jr_02b_5bf1:
    nop
    inc l

jr_02b_5bf3:
    nop
    ld l, $2f
    ld a, [hl-]
    dec sp
    nop
    ld a, [hl+]
    rrca
    inc bc
    jr nc, @+$33

    ld b, $07
    ld [$0e09], sp
    rrca
    jr nc, jr_02b_5c37

    inc [hl]
    dec [hl]
    nop
    inc c

jr_02b_5c0a:
    rrca
    ld bc, $3332
    ld d, $17
    jr jr_02b_5c2b

    ld e, $1f
    ld [hl-], a
    inc sp
    ld [hl], $37
    nop
    xor h
    rrca
    inc bc
    nop
    adc b
    nop
    jr nz, jr_02b_5c42

    inc [hl]
    dec [hl]
    nop

jr_02b_5c24:
    ld a, [bc]
    rrca
    inc bc
    ld [hl-], a
    inc sp
    nop
    xor b

jr_02b_5c2b:
    nop
    ld [hl+], a
    inc hl
    ld [hl], $37
    nop
    ld a, [hl+]
    rrca
    inc bc
    ld [bc], a
    inc bc
    inc b

jr_02b_5c37:
    dec b
    nop
    ld [$0000], sp
    ret z

    rrca
    dec b
    ld [de], a
    inc de
    inc d

jr_02b_5c42:
    dec d
    nop
    jr z, jr_02b_5c46

jr_02b_5c46:
    nop
    add sp, $0f
    dec b
    nop
    nop
    nop
    nop
    ld b, b
    ld [de], a
    jr c, jr_02b_5c8b

    nop
    inc c
    rrca
    dec b
    nop
    ld h, b
    ld [de], a
    ld a, [hl-]
    dec sp
    nop
    inc l
    rrca
    ld b, c
    nop
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02b_5c7e

    inc c
    inc d
    ld [$000c], sp
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    inc h
    dec h

jr_02b_5c7e:
    inc c
    inc d
    rrca
    dec b
    ld l, $2f
    jr jr_02b_5c9f

    jr jr_02b_5ca1

    ld h, $27
    inc c

jr_02b_5c8b:
    inc d
    ld [$500c], sp
    nop
    inc c
    ld b, h
    ld b, $34
    dec [hl]
    inc [hl]
    dec [hl]
    ld b, $07
    inc c
    inc d
    ld [$700c], sp
    nop

jr_02b_5c9f:
    inc c
    ld h, h

jr_02b_5ca1:
    ld b, $36
    scf
    ld [hl], $37
    ld d, $17
    inc c
    inc d
    ld [$3130], sp
    ld b, $07
    inc c
    ld d, b
    nop
    inc c
    ld c, h
    nop
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    jr nc, jr_02b_5cec

    jr nc, jr_02b_5cee

    inc c
    inc d
    ld [$3332], sp
    ld d, $17
    inc c
    ld [hl], b
    nop
    inc c
    ld l, h
    nop
    ld a, [de]
    dec de
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    inc c
    or h
    ld a, [bc]
    jr nc, jr_02b_5d08

    inc c
    sub b
    nop
    inc c
    call z, Call_000_0c04
    ret nc

    ld c, $32
    inc sp
    inc c
    or b
    nop
    inc c
    db $ec
    inc b
    inc c
    ldh a, [$0c]
    inc b

jr_02b_5cec:
    dec b
    inc c

jr_02b_5cee:
    inc c
    inc d
    inc c
    ret nc

    nop
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc c
    inc d
    ld [$1514], sp
    inc c
    inc l
    inc d
    inc c
    ldh a, [rP1]
    db $10
    ld de, $1312

jr_02b_5d08:
    ld [de], a
    inc de
    inc c
    inc [hl]
    ld a, [bc]
    ld [bc], a
    inc bc
    inc c
    ld b, b
    ld [de], a
    inc c
    ld c, [hl]
    db $10
    inc c
    ld c, $0f
    ld bc, $1312
    inc c
    ld h, b
    ld [de], a
    inc c
    ld l, [hl]
    db $10
    inc c
    ld l, $0f
    dec b
    inc c
    ld d, b
    db $10
    inc c
    ld a, [bc]
    rrca
    add hl, bc
    inc c
    ld [hl], b
    db $10
    inc c
    ld a, [hl+]
    rrca
    inc bc
    nop
    ld [bc], a
    inc a
    jr z, @+$2b

    inc a
    nop
    ld c, $ff
    inc a
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc a
    jr nz, @+$10

    inc a
    inc d
    ld [$003c], sp
    rrca
    dec l
    ld [$2409], sp
    dec h
    inc l
    dec l
    ld [$3c09], sp
    add [hl]
    nop
    inc h
    dec h
    jr z, jr_02b_5d83

    inc a
    add h
    nop
    inc a
    inc d
    ld [$1918], sp
    ld h, $27
    ld l, $2f
    jr jr_02b_5d81

    inc a
    and [hl]
    nop
    ld h, $27
    ld a, [hl+]
    dec hl
    inc a
    and h
    nop
    inc a
    inc d
    ld [$3130], sp
    ld b, $07
    ld c, $0f
    inc [hl]
    dec [hl]
    jr c, @+$3b

    inc [hl]
    dec [hl]

jr_02b_5d81:
    ld b, $07

jr_02b_5d83:
    ld [$0a09], sp
    dec bc
    jr nc, jr_02b_5dba

    inc a
    inc d
    ld [$3332], sp
    ld d, $17
    ld e, $1f
    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld [hl], $37
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    inc a
    or h
    ld a, [bc]
    jr nc, jr_02b_5dd6

    ld c, $0f
    jr nc, @+$33

    inc c
    dec c
    jr c, jr_02b_5de6

    jr nc, jr_02b_5de0

    inc a
    ld a, [bc]
    db $10
    inc a
    jp nc, Jump_000_320c

    inc sp
    ld e, $1f
    ld [hl-], a

jr_02b_5dba:
    inc sp
    inc e
    dec e
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    inc a
    ld a, [hl+]
    db $10
    inc a
    ld a, [c]
    ld a, [bc]
    inc b
    dec b
    inc [hl]
    dec [hl]
    jr nz, @+$23

    inc a
    ld [bc], a
    db $10
    inc a
    ret z

    nop
    jr nc, @+$33

    inc [hl]

jr_02b_5dd6:
    dec [hl]
    nop
    ld bc, $143c
    ld [$1514], sp
    ld [hl], $37

jr_02b_5de0:
    ld [hl+], a
    inc hl
    inc a
    ld [hl+], a
    db $10
    inc a

jr_02b_5de6:
    add sp, $00
    ld [hl-], a
    inc sp
    ld [hl], $37
    db $10
    ld de, $143c
    ld [$2d2c], sp
    inc a
    ld a, [bc]
    ld [de], a
    inc h
    dec h
    ld [bc], a
    inc bc
    inc a
    adc d
    ld [de], a
    inc a
    ld [de], a
    ld a, [bc]
    ld l, $2f
    inc a
    ld a, [hl+]
    ld [de], a
    ld h, $27
    ld [de], a
    inc de
    inc a
    xor d
    ld [de], a
    inc a
    ld [hl-], a
    inc c
    inc a
    adc h
    inc d
    inc a
    ld a, [bc]
    rrca
    dec b
    inc a
    xor h
    inc d
    inc a
    ld a, [hl+]
    rrca
    inc bc
    nop
    ld [bc], a
    inc c
    jr z, jr_02b_5e4b

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02b_5e3c

    inc c
    inc d
    ld [$000c], sp
    rrca
    dec l
    ld [$0c09], sp
    add b
    ld b, $24
    dec h

jr_02b_5e3c:
    jr z, @+$2b

    inc l
    dec l
    ld [$0c09], sp
    inc d
    ld [$1918], sp
    inc c
    and b
    ld b, $26

jr_02b_5e4b:
    daa
    ld a, [hl+]
    dec hl
    ld l, $2f
    jr @+$1b

    inc c
    inc d
    ld [$3130], sp
    inc c
    ret nz

    nop
    inc [hl]
    dec [hl]
    jr c, @+$3b

    inc [hl]
    dec [hl]
    ld b, $07
    ld [$0a09], sp
    dec bc
    jr nc, jr_02b_5e99

    inc c
    inc d
    ld [$3332], sp
    inc c
    ldh [rP1], a
    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld [hl], $37
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    inc c
    or h
    ld a, [bc]
    nop
    ld bc, $0504
    inc c
    ret nz

    ld [bc], a
    inc c
    ret z

    nop
    inc c
    ret nz

    nop
    inc c
    call nc, $100a
    ld de, $1514
    inc c
    ldh [rSC], a
    inc c

jr_02b_5e99:
    add sp, $00
    inc c
    ldh [rP1], a
    inc c
    inc d
    ld [$0302], sp
    inc c
    adc [hl]
    nop
    inc c
    jp nz, Jump_000_0c02

    ret nz

    nop
    nop
    ld bc, $0302
    inc c
    inc d
    ld [$1312], sp
    inc c
    xor [hl]
    nop
    inc c
    ld [c], a
    ld [bc], a
    inc c
    ldh [rP1], a
    db $10
    ld de, $1312
    inc c
    inc [hl]
    inc c
    inc l
    dec l
    inc [hl]
    dec [hl]
    inc c
    ld c, $10
    inc c
    add [hl]
    db $10
    inc c
    adc h
    nop
    inc c
    inc d
    inc c
    ld l, $2f
    ld [hl], $37
    inc c
    ld l, $10
    inc c
    and [hl]
    db $10
    inc c
    xor h
    nop
    inc c
    inc [hl]
    ld c, $02
    inc bc
    inc c
    add $14
    inc c
    db $10
    rrca
    inc bc
    ld [de], a
    inc de
    inc c
    and $14
    inc c
    jr nc, jr_02b_5f02

    nop
    ld [bc], a
    inc c
    jr z, jr_02b_5f24

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca

jr_02b_5f02:
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02b_5f15

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

jr_02b_5f15:
    ld [$2f2e], sp
    jr @+$1b

    inc c
    ld h, d
    ld a, [bc]
    ld h, $27
    inc c
    inc d
    ld [$0b0a], sp

jr_02b_5f24:
    jr nc, @+$33

    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    jr nc, jr_02b_5f5d

    inc c
    add d
    nop
    inc c
    adc b
    nop
    ld b, $07
    inc c
    inc d
    ld [$1b1a], sp
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld [hl], $37
    ld [hl-], a
    inc sp
    inc c
    and d
    nop
    inc c
    xor b
    nop
    ld d, $17
    inc c
    inc d
    ld [$3130], sp
    jr c, @+$3b

    nop
    ld bc, $0302
    inc b
    dec b
    jr nc, @+$33

    nop
    ld bc, $0504
    inc c

jr_02b_5f5d:
    add [hl]
    nop
    inc c
    inc d
    ld [$3332], sp
    ld a, [hl-]
    dec sp
    db $10
    ld de, $1312
    inc d
    dec d
    ld [hl-], a
    inc sp
    db $10
    ld de, $1514
    inc c
    and [hl]
    nop
    inc c
    or h
    ld a, [bc]
    nop
    ld bc, $400c
    nop
    inc c
    add b
    nop
    ld b, $07
    inc h
    dec h
    inc c
    ret z

    nop
    inc c
    call nc, $100a
    ld de, $600c
    nop
    inc c
    and b
    nop
    ld d, $17
    ld h, $27
    inc c
    add sp, $00
    inc c
    inc d
    ld [$0302], sp
    jr z, jr_02b_5fc9

    inc l
    dec l
    inc c
    adc b
    nop
    inc c
    adc b
    nop
    inc h
    dec h
    jr z, jr_02b_5fd5

    ld [bc], a
    inc bc
    inc c
    inc d
    ld [$1312], sp
    ld a, [hl+]
    dec hl
    ld l, $2f
    inc c
    xor b
    nop
    inc c
    xor b
    nop
    ld h, $27
    ld a, [hl+]
    dec hl
    ld [de], a
    inc de
    inc c
    inc d
    ld [$000c], sp
    nop

jr_02b_5fc9:
    inc c
    ld b, h
    ld a, [de]
    inc c
    ld [de], a
    ld c, $0c
    ld h, h
    ld a, [de]
    inc c
    ld [hl-], a
    ld a, [bc]

jr_02b_5fd5:
    inc c
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc c
    add $12
    inc c
    ld c, $0f
    dec b
    ld [de], a
    inc de
    inc c
    and $12
    inc c
    ld l, $0e
    nop
    ld [bc], a
    inc c
    jr z, jr_02b_6017

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02b_6008

    inc c
    inc d
    ld [$2d2c], sp
    ld [$0c09], sp
    ld b, d
    ld b, $24
    dec h
    inc c
    db $10

jr_02b_6008:
    inc c
    ld l, $2f
    jr jr_02b_6026

    inc c
    ld h, d
    ld b, $26
    daa
    inc c
    jr nc, jr_02b_6021

    ld a, [bc]
    dec bc

jr_02b_6017:
    inc [hl]
    dec [hl]
    inc c
    add d
    nop
    jr nc, @+$33

    inc c
    adc b
    nop

jr_02b_6021:
    ld c, $0f
    inc c
    ld b, d
    nop

jr_02b_6026:
    inc c
    inc d
    ld [$1b1a], sp
    ld [hl], $37
    inc c
    and d
    nop
    ld [hl-], a
    inc sp
    inc c
    xor b
    nop
    ld e, $1f
    inc c
    ld h, d
    nop
    inc c
    inc d
    ld [$880c], sp
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    inc c
    adc d
    ld [bc], a
    inc c
    adc b
    nop
    inc c
    inc d
    ld [$a80c], sp
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    inc c
    xor d
    ld [bc], a
    inc c
    xor b
    nop
    inc c
    or h
    inc c
    ld b, $07
    inc c
    ld c, [hl]
    nop
    inc b
    dec b
    inc [hl]
    dec [hl]
    inc c
    adc $0f
    inc bc
    ld d, $17
    inc c
    ld l, [hl]
    nop
    inc d
    dec d
    ld [hl], $37
    inc c
    xor $0e
    inc c
    ret z

    ld [bc], a
    ld b, $07
    ld [$0a09], sp
    dec bc
    jr nc, jr_02b_60b6

    jr nz, jr_02b_60a8

    inc [hl]
    dec [hl]
    nop
    ld bc, $140c
    ld [$e80c], sp
    ld [bc], a
    ld d, $17
    jr jr_02b_60ae

    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld [hl+], a
    inc hl
    ld [hl], $37
    db $10
    ld de, $340c
    ld a, [bc]
    inc c
    adc b
    nop
    inc c
    add h
    ld [bc], a

jr_02b_60a8:
    inc c
    adc b
    ld [de], a
    inc h
    dec h
    inc c

jr_02b_60ae:
    ld d, h
    ld a, [bc]
    inc c
    xor b
    nop
    inc c
    and h
    ld [bc], a

jr_02b_60b6:
    inc c
    xor b
    ld [de], a
    ld h, $27
    inc c
    inc d
    ld [$2928], sp
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
    ld c, $28
    add hl, hl
    ld c, $00
    ld c, $ff
    ld c, $14
    rlca
    ld a, [hl+]
    dec hl
    ld c, $20
    ld c, $0e
    inc d
    ld [$000e], sp
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    inc h
    dec h
    ld c, $14
    rrca
    dec b
    ld l, $2f
    jr jr_02b_6110

    jr jr_02b_6112

    ld h, $27
    ld c, $14
    ld [$500e], sp
    nop
    ld c, $44
    ld b, $30
    ld sp, $3130
    ld b, $07
    ld c, $14
    ld [$700e], sp
    nop

jr_02b_6110:
    ld c, $64

jr_02b_6112:
    ld b, $32
    inc sp
    ld [hl-], a
    inc sp
    ld d, $17
    ld c, $14
    ld [$900e], sp
    nop
    ld c, $4e
    nop
    ld c, $4e
    nop
    ld a, [bc]
    dec bc
    ld c, $8e
    nop
    jr nc, jr_02b_615d

    ld c, $14
    ld [$b00e], sp
    nop
    ld c, $6e
    nop
    ld c, $6e
    nop
    ld a, [de]
    dec de
    ld c, $ae
    nop
    ld [hl-], a
    inc sp
    ld c, $b4
    ld a, [bc]
    jr nc, @+$33

    inc [hl]
    dec [hl]
    ld c, $04
    db $10
    ld c, $00
    ld [de], a
    inc c
    dec c
    ld c, $d2
    inc c
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld c, $24
    db $10
    ld c, $20
    ld [de], a
    inc e
    dec e

jr_02b_615d:
    ld c, $f2
    ld a, [bc]
    inc b
    dec b
    ld c, $02
    db $10
    ld c, $8e
    nop
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    jr z, jr_02b_6199

    ld [bc], a
    inc bc
    ld c, $14
    ld [$1514], sp
    ld c, $22
    db $10
    ld c, $ae
    nop
    db $10
    ld de, $1312
    ld [de], a
    inc de
    ld a, [hl+]
    dec hl
    ld [de], a
    inc de
    ld c, $14
    ld [$8c0e], sp
    ld [bc], a
    jr nc, @+$33

    jr c, jr_02b_61ca

    ld c, $82
    ld b, $0e
    inc d
    ld [$ac0e], sp

jr_02b_6199:
    ld [bc], a
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    ld c, $a2
    ld b, $0e
    inc [hl]
    ld a, [bc]
    ld c, $4c
    db $10
    ld c, $4c
    ld [de], a
    ld c, $0c
    rrca
    inc bc
    ld c, $6c
    db $10
    ld c, $6c
    ld [de], a
    ld c, $2c
    rrca
    ld bc, $0200
    inc b
    jr z, jr_02b_61e6

    inc b
    nop
    ld c, $ff
    inc b
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc b
    jr nz, jr_02b_61d7

    inc b

jr_02b_61ca:
    inc d
    ld [$0004], sp
    rrca
    dec a
    inc l
    dec l
    ld [$0409], sp
    inc d
    rrca

jr_02b_61d7:
    add hl, bc
    ld l, $2f
    jr jr_02b_61f5

    inc b
    inc [hl]
    rrca
    rlca
    inc l
    dec l
    ld a, [bc]
    dec bc
    jr nc, @+$33

jr_02b_61e6:
    inc b
    inc d
    rrca
    rlca
    ld l, $2f
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    inc b
    inc [hl]
    rrca
    dec b
    inc b

jr_02b_61f5:
    adc $02
    inc b
    jp nc, $070f

    inc b
    xor $02
    inc b
    ld a, [c]
    rrca
    inc bc
    inc b
    sub b
    nop
    inc b
    ld c, $12
    nop
    ld bc, $1404
    rrca
    ld bc, $b004
    nop
    inc b
    ld l, $12
    db $10
    ld de, $3404
    ld c, $04
    inc c
    inc d
    inc b
    db $10
    db $10
    inc h
    dec h
    inc b
    inc d
    ld c, $04
    inc l
    inc d
    inc b
    jr nc, jr_02b_623a

    ld h, $27
    inc b
    ld [hl], h
    rra
    ld bc, $4e04
    ld [de], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    ld [de], a
    rrca

jr_02b_623a:
    ld bc, $2f2e
    inc b
    ld l, [hl]
    ld [de], a
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc b
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, jr_02b_6275

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02b_6266

    inc c
    inc d
    ld [$000c], sp
    inc b
    inc l
    dec l
    ld [$0c09], sp
    ld c, d
    ld [bc], a
    inc h

jr_02b_6266:
    dec h
    inc c
    inc d
    rrca
    ld bc, $2f2e
    jr jr_02b_6288

    inc c
    ld l, d
    ld [bc], a
    ld h, $27
    inc c

jr_02b_6275:
    inc [hl]
    rrca
    inc bc
    inc [hl]
    dec [hl]
    inc c
    adc d
    ld [bc], a
    ld b, $07
    inc c
    ld d, h
    rrca
    inc bc
    ld [hl], $37
    inc c
    xor d
    ld [bc], a

jr_02b_6288:
    ld d, $17
    inc c
    inc [hl]
    inc c
    inc c
    ld c, b
    nop
    ld a, [bc]
    dec bc
    jr c, @+$3b

    jr c, jr_02b_62cf

    jr nc, @+$33

    inc c
    adc d
    nop
    inc c
    inc d
    inc c
    inc c
    ld l, b
    nop
    ld a, [de]
    dec de
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    inc c
    xor d
    nop
    inc c
    or h
    ld c, $0c
    call z, Call_000_0c00
    call z, Call_000_0c00
    inc c
    ld [de], a
    inc c
    call nc, Call_000_0c0e
    db $ec
    nop
    inc c
    db $ec
    nop
    inc c
    inc l
    ld [de], a
    inc c
    db $f4
    rrca
    ld bc, $0a0c
    ld d, $00
    ld bc, $140c

jr_02b_62cf:
    rra
    ld bc, $2a0c
    ld d, $10
    ld de, $b40c
    ld c, $0c
    adc d
    nop
    inc c
    ld c, [hl]
    ld [de], a
    ld [bc], a
    inc bc
    inc c
    ld [de], a
    ld c, $0c
    xor b
    ld [bc], a
    inc c
    ld l, [hl]
    ld [de], a
    ld [de], a
    inc de
    inc c
    ld [hl-], a
    rrca
    ld bc, $0504
    inc c
    adc b
    stop
    ld bc, $0e0c
    rrca
    dec b
    inc d
    dec d
    inc c
    xor b
    db $10
    db $10
    ld de, $2e0c
    ld c, $00
    ld [bc], a
    inc c
    jr z, jr_02b_6333

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02b_6324

    inc c
    inc d
    ld [$2d2c], sp
    ld [$0c09], sp
    ld b, d
    nop
    inc h
    dec h
    inc c
    ld a, [bc]

jr_02b_6324:
    rrca
    inc bc
    ld l, $2f
    jr @+$1b

    inc c
    ld h, d
    nop
    ld h, $27
    inc c
    ld a, [hl+]
    rrca
    dec b

jr_02b_6333:
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    jr nc, jr_02b_636a

    inc c
    ld c, b
    inc b
    inc c
    ld b, b
    nop
    inc c
    ld d, h
    ld a, [bc]
    ld [hl], $37
    ld [hl], $37
    ld [hl-], a
    inc sp
    inc c
    ld l, b
    inc b
    inc c
    ld h, b
    nop
    inc c
    inc [hl]
    ld a, [bc]
    jr c, jr_02b_638c

    jr c, jr_02b_638e

    inc [hl]
    dec [hl]
    inc c
    ld c, b
    ld [bc], a
    inc l
    dec l
    ld a, [bc]
    dec bc
    jr nc, @+$33

    inc c
    ld d, h
    ld a, [bc]
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld [hl], $37
    inc c

jr_02b_636a:
    ld l, b
    ld [bc], a
    ld l, $2f
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    inc c
    ld [hl], h
    inc c
    inc c
    jp nz, Jump_000_0c00

    ld c, b
    nop
    inc c
    adc $02
    inc c
    jp nc, $360c

    scf
    inc c
    ld [c], a
    nop
    inc c
    ld l, b
    nop
    inc c
    xor $02

jr_02b_638c:
    inc c
    ld a, [c]

jr_02b_638e:
    inc c
    inc c
    call nz, Call_000_3400
    dec [hl]
    ld b, $07
    ld [$0c09], sp
    ld c, $12
    nop
    ld bc, $d40c
    inc c
    inc c
    and d
    nop
    ld d, $17
    jr jr_02b_63c0

    inc c
    ld l, $12
    db $10
    ld de, $b40c
    inc c
    inc c
    db $10
    db $10
    jr nc, jr_02b_63e5

    inc c
    add h
    nop
    inc c
    db $10
    db $10
    inc h
    dec h
    inc c
    call nc, $0c0c

jr_02b_63c0:
    jr nc, jr_02b_63d2

    ld [hl-], a
    inc sp
    inc c
    and h
    nop
    inc c
    jr nc, jr_02b_63da

    ld h, $27
    inc c
    inc d
    ld [$2928], sp
    ld [bc], a

jr_02b_63d2:
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    ld c, [hl]
    ld [de], a

jr_02b_63da:
    inc c
    jp nz, $0c10

    ld [de], a
    inc c
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d

jr_02b_63e5:
    dec d
    inc c
    ld l, [hl]
    ld [de], a
    inc c
    ld [c], a
    db $10
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    ld a, [bc]
    jr z, jr_02b_641d

    ld a, [bc]
    nop
    ld c, $ff
    ld a, [bc]
    inc d
    rlca
    ld a, [hl+]
    dec hl
    ld a, [bc]
    jr nz, jr_02b_640e

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

jr_02b_640e:
    ld [$2f2e], sp
    jr jr_02b_642c

    ld a, [bc]
    ld h, d
    ld a, [bc]
    ld h, $27
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    jr c, jr_02b_6456

jr_02b_641d:
    jr c, jr_02b_6458

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

jr_02b_642c:
    dec sp
    ld [hl], $37
    ld a, [bc]
    and [hl]
    ld b, $16
    rla
    ld a, [bc]
    ld [hl], h
    inc c
    jr nc, jr_02b_646a

    ld a, [bc]
    call nz, Call_000_0002
    ld bc, $0504
    inc [hl]
    dec [hl]
    jr nc, jr_02b_6475

    ld a, [bc]
    sub h
    inc c
    ld [hl-], a
    inc sp
    ld a, [bc]
    db $e4
    ld [bc], a
    db $10
    ld de, $1514
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld a, [bc]
    ld [hl], h

jr_02b_6456:
    ld c, $0a

jr_02b_6458:
    call nz, Call_000_3400
    dec [hl]
    inc h
    dec h
    jr z, jr_02b_6489

    inc b
    dec b
    ld a, [bc]
    jp nc, $0a0e

    ld [c], a
    ld [bc], a
    ld [hl], $37

jr_02b_646a:
    ld h, $27
    ld a, [hl+]
    dec hl
    inc d
    dec d
    ld a, [bc]
    ld a, [c]
    rrca
    dec b
    nop

jr_02b_6475:
    ld bc, $000a
    ld [bc], a
    ld [bc], a
    inc bc
    ld a, [bc]
    inc d
    rra
    inc bc
    db $10
    ld de, $200a
    ld [bc], a
    ld [de], a
    inc de
    ld a, [bc]
    db $f4
    rrca

jr_02b_6489:
    inc bc
    ld b, $07
    ld a, [bc]
    inc c
    db $10
    ld a, [bc]
    db $10
    inc c
    ld a, [bc]
    jr nz, @+$18

    ld d, $17
    ld a, [bc]
    inc l
    db $10
    ld a, [bc]
    jr nc, jr_02b_64a9

    ld a, [bc]
    ld d, b
    db $10
    ld [bc], a
    inc bc
    ld a, [bc]
    db $10
    db $10
    jr nc, jr_02b_64d8

    ld a, [bc]
    adc h

jr_02b_64a9:
    rra
    ld bc, $700a
    db $10
    ld [de], a
    inc de
    ld a, [bc]
    jr nc, jr_02b_64c3

    ld [hl-], a
    inc sp
    ld a, [bc]
    xor h
    rra
    ld bc, $0200
    inc c
    jr z, jr_02b_64e7

    inc c
    nop
    ld c, $ff
    inc c

jr_02b_64c3:
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02b_64d8

    inc c
    inc d
    ld [$000c], sp
    inc b
    inc l
    dec l
    ld [$0c09], sp
    ld c, d
    ld [bc], a
    inc h

jr_02b_64d8:
    dec h
    inc c
    inc d
    rrca
    ld bc, $2f2e
    jr jr_02b_64fa

    inc c
    ld l, d
    ld [bc], a
    ld h, $27
    inc c

jr_02b_64e7:
    inc [hl]
    rrca
    inc bc
    jr nc, @+$33

    inc c
    adc d
    ld [bc], a
    ld b, $07
    inc c
    ld d, h
    rrca
    inc bc
    ld [hl-], a
    inc sp
    inc c
    xor d
    ld [bc], a

jr_02b_64fa:
    ld d, $17
    inc c
    ld [hl], h
    rrca
    dec bc
    jr nc, jr_02b_6533

    inc c
    sub h
    rrca
    dec bc
    ld [hl-], a
    inc sp
    inc c
    ld [hl], h
    rrca
    dec b
    nop
    ld bc, $0504
    inc c
    ret nc

    rrca
    add hl, bc
    db $10
    ld de, $1514
    inc c
    ldh a, [rIF]
    add hl, bc
    ld b, $07
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    db $10
    inc c
    sub h
    rrca
    dec b
    ld d, $17
    ld a, [de]
    dec de
    inc c
    ld a, [hl+]
    db $10
    inc c
    inc [hl]
    ld c, $2c
    dec l

jr_02b_6533:
    inc c
    ld c, [hl]
    db $10
    inc c
    adc d
    ld [bc], a
    inc c
    ld d, d
    rrca
    ld bc, $2f2e
    inc c
    ld l, [hl]
    db $10
    inc c
    xor d
    ld [bc], a
    inc c
    ld [hl], d
    rrca
    ld bc, $880c
    ld [bc], a
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc c
    ld [de], a
    rrca
    ld bc, $a80c
    ld [bc], a
    db $10
    ld de, $1312
    ld [de], a
    inc de
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, jr_02b_6590

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02b_6581

    inc c
    inc d
    ld [$000c], sp
    inc b
    inc l
    dec l
    ld [$0c09], sp
    ld c, d
    ld [bc], a
    inc h

jr_02b_6581:
    dec h
    inc c
    inc d
    rrca
    ld bc, $2f2e
    jr @+$1b

    inc c
    ld l, d
    ld [bc], a
    ld h, $27
    inc c

jr_02b_6590:
    inc [hl]
    rrca
    inc bc
    jr nc, @+$33

    inc [hl]
    dec [hl]
    inc c
    adc h
    nop
    ld b, $07
    inc c
    ld d, h
    rrca
    inc bc
    ld [hl-], a
    inc sp
    ld [hl], $37
    inc c
    xor h
    nop
    ld d, $17
    inc c
    inc d
    ld [$480c], sp
    inc b
    ld a, [bc]
    dec bc
    jr nc, @+$33

    inc c
    jp z, Jump_000_0c00

    adc h
    nop
    inc c
    inc d
    ld [$680c], sp
    inc b
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    inc c
    ld [$0c00], a
    xor h
    nop
    inc c
    or h
    ld a, [bc]
    jr c, jr_02b_6607

    inc c
    jp z, Jump_000_0c02

    jp z, RST_00

    ld bc, $0504
    jr nc, jr_02b_660b

    inc c
    call nc, Call_000_3a0a
    dec sp
    inc c
    ld [$0c02], a
    ld [$1000], a
    ld de, $1514
    ld [hl-], a
    inc sp
    inc c
    db $f4
    inc c
    inc [hl]
    dec [hl]
    inc c
    ld a, [bc]
    ld [de], a
    ld [bc], a
    inc bc
    inc c
    nop
    nop
    ld [bc], a
    inc bc
    inc c
    inc d
    inc e
    ld [hl], $37
    inc c
    ld a, [hl+]
    ld [de], a
    ld [de], a
    inc de
    inc c
    jr nz, jr_02b_6607

jr_02b_6607:
    ld [de], a
    inc de
    inc c
    db $f4

jr_02b_660b:
    inc c
    inc c
    ld b, d
    ld [de], a
    ld b, $07
    inc h
    dec h
    inc c
    ld c, $0e
    inc c
    jr nz, jr_02b_6629

    inc c
    ld h, d
    ld [de], a
    ld d, $17
    ld h, $27
    inc c
    ld l, $0f
    ld bc, $0302
    ld [bc], a
    inc bc
    inc c

jr_02b_6629:
    db $10
    db $10
    jr nc, jr_02b_665e

    inc c
    adc h
    rra
    ld bc, $700c
    db $10
    ld [de], a
    inc de
    inc c
    jr nc, jr_02b_6649

    ld [hl-], a
    inc sp
    inc c
    xor h
    rra
    ld bc, $0200
    nop
    jr z, jr_02b_666d

    nop
    nop
    ld c, $ff
    nop

jr_02b_6649:
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_02b_665e

    nop
    inc d
    ld [$0000], sp
    rrca
    dec l
    ld [$2409], sp
    dec h
    nop
    inc b
    rrca

jr_02b_665e:
    add hl, bc
    jr jr_02b_667a

    ld h, $27
    nop
    inc h
    rrca
    add hl, bc
    jr nc, jr_02b_669a

    ld b, $07
    nop
    add d

jr_02b_666d:
    inc c
    nop
    inc d
    ld [$3332], sp
    ld d, $17
    nop
    and d
    inc c
    nop
    or h

jr_02b_667a:
    ld a, [bc]
    inc [hl]
    dec [hl]
    nop
    jp nz, Jump_000_000c

    call nc, $360a
    scf
    nop
    ld [c], a
    inc c
    nop
    inc d
    ld [$0504], sp
    jr nc, @+$33

    nop
    ret nz

    nop
    nop
    add b
    ld [$1400], sp
    ld [$1514], sp

jr_02b_669a:
    ld [hl-], a
    inc sp
    nop
    ldh [rP1], a
    nop
    and b
    ld [$1400], sp
    ld [$2d2c], sp
    nop
    ld b, d
    db $10
    jr nc, jr_02b_66dd

    jr c, @+$3b

    nop
    jp nz, Jump_000_0006

    inc d
    ld [$2f2e], sp
    nop
    ld h, d
    db $10
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    nop
    ld [c], a
    ld b, $00
    inc [hl]
    ld a, [bc]
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    inc [hl]
    dec [hl]
    jr nc, jr_02b_66fe

    nop
    adc h
    rra
    ld bc, $2b2a
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    dec d
    ld [hl], $37
    ld [hl-], a
    inc sp

jr_02b_66dd:
    nop
    xor h
    rra
    ld bc, $0200
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
    rrca
    dec l
    ld [$0609], sp
    add b
    inc c

jr_02b_66fe:
    inc h
    dec h
    ld b, $14
    ld [$1918], sp
    ld b, $a0
    inc c
    ld h, $27
    ld b, $14
    ld [$3130], sp
    ld b, $c0
    nop
    jr c, jr_02b_674d

    jr c, jr_02b_674f

    inc [hl]
    dec [hl]
    ld b, $c2
    ld [bc], a
    ld b, $92
    ld a, [bc]
    ld [hl-], a
    inc sp
    ld b, $e0
    nop
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld [hl], $37
    ld b, $e2
    ld [bc], a
    ld b, $b2
    inc c
    nop
    ld bc, $0302
    ld b, $04
    ld [de], a
    inc b
    dec b
    ld b, $c0
    nop
    ld b, $d2
    inc c
    db $10
    ld de, $1312
    ld b, $24
    ld [de], a
    inc d
    dec d
    ld b, $e0
    nop
    ld b, $b2
    ld a, [bc]

jr_02b_674d:
    ld [bc], a
    inc bc

jr_02b_674f:
    ld b, $00
    ld [bc], a
    inc l
    dec l
    ld [$0a09], sp
    dec bc
    ld b, $0e
    ld e, $12
    inc de
    ld b, $20
    ld [bc], a
    ld l, $2f
    jr jr_02b_677d

    ld a, [de]
    dec de
    ld b, $2e
    ld e, $06
    ld b, d
    inc d
    ld b, $4c
    db $10
    inc [hl]
    dec [hl]
    ld b, $8c
    db $10
    ld b, $92
    ld a, [bc]
    ld b, $62
    inc d
    ld b, $6c
    db $10

jr_02b_677d:
    ld [hl], $37
    ld b, $ac
    db $10
    ld b, $72
    rra
    inc bc
    ld b, $c0
    nop
    ld b, $02
    ld [de], a
    ld b, $12
    rrca
    ld bc, $2f2e
    ld b, $e0
    nop
    ld b, $22
    ld [de], a
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
    inc b
    inc h
    dec h
    ld b, $0e
    ld c, $2e
    cpl
    jr jr_02b_67d8

    ld b, $62
    inc b
    ld h, $27
    ld b, $2e
    ld c, $0a
    dec bc
    jr c, jr_02b_6804

    ld b, $82
    nop
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    ld b, $4c
    rrca
    ld bc, $1b1a

jr_02b_67d8:
    ld a, [hl-]
    dec sp
    ld b, $a2
    nop
    ld [hl], $37
    ld [hl], $37
    ld b, $6c
    rrca
    ld bc, $3130
    ld b, $c0
    nop
    nop
    ld bc, $0504
    jr nc, jr_02b_6821

    ld b, $4c
    rrca
    ld bc, $3332
    ld b, $e0
    nop
    db $10
    ld de, $1514
    ld [hl-], a
    inc sp
    ld b, $ac
    rrca
    inc bc
    nop

jr_02b_6804:
    ld bc, $0302
    jr z, jr_02b_6832

    inc l
    dec l
    ld b, $ca
    rrca
    dec b
    db $10
    ld de, $1312
    ld a, [hl+]
    dec hl
    ld l, $2f
    ld b, $ea
    rrca
    inc bc
    ld b, $04
    db $10
    ld b, $00
    nop

jr_02b_6821:
    inc l
    dec l
    ld b, $8a
    rrca
    inc bc
    ld b, $24
    db $10
    ld b, $20
    nop
    ld l, $2f
    ld b, $aa
    rrca

jr_02b_6832:
    inc bc
    ld b, $42
    inc d
    ld a, [bc]
    dec bc
    ld b, $8a
    rrca
    inc bc
    ld b, $62
    inc d
    ld a, [de]
    dec de
    ld b, $6a
    rra
    dec bc
    ld b, $c0
    nop
    ld b, $8c
    rra
    add hl, bc
    ld b, $e0
    nop
    ld b, $6c
    rrca
    ld bc, $0200
    inc c
    jr z, jr_02b_6881

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02b_6872

    inc c
    inc d
    ld [$000c], sp
    nop
    inc l
    dec l
    ld [$0c09], sp
    ld b, [hl]
    inc b
    inc h

jr_02b_6872:
    dec h
    inc c
    ld [de], a
    ld c, $2e
    cpl
    jr jr_02b_6893

    inc c
    ld h, [hl]
    inc b
    ld h, $27
    inc c
    ld [hl-], a

jr_02b_6881:
    ld a, [bc]
    inc c
    ld b, [hl]
    nop
    ld a, [bc]
    dec bc
    jr c, jr_02b_68c2

    jr c, jr_02b_68c4

    inc [hl]
    dec [hl]
    jr nc, jr_02b_68c0

    inc [hl]
    dec [hl]
    ld b, $07

jr_02b_6893:
    inc h
    dec h
    inc c
    inc d
    ld [$660c], sp
    nop
    ld a, [de]
    dec de
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld d, $17
    ld h, $27
    inc c
    inc d
    ld [$3130], sp
    inc c
    ret nz

    ld [bc], a
    nop
    ld bc, $0302
    inc b
    dec b
    inc c
    adc h
    nop
    inc c
    sub d
    ld a, [bc]
    ld [hl-], a

jr_02b_68c0:
    inc sp
    inc c

jr_02b_68c2:
    ldh [rSC], a

jr_02b_68c4:
    db $10
    ld de, $1312
    inc d
    dec d
    inc c
    xor h
    nop
    inc c
    or d
    ld c, $0c
    ret z

    nop
    inc c
    ld b, d
    nop
    ld a, [bc]
    dec bc
    inc c
    ret nz

    nop
    inc c
    jp nc, Jump_000_0c0e

    add sp, $00
    inc c
    ld h, d
    nop
    ld a, [de]
    dec de
    inc c
    ldh [rP1], a
    inc c
    or d
    ld a, [bc]
    inc b
    dec b
    jr c, jr_02b_6929

    ld b, $07
    inc c
    add b
    ld [bc], a
    inc c
    ret nz

    ld [bc], a
    inc c
    sub d
    ld a, [bc]
    inc d
    dec d
    ld a, [hl-]
    dec sp
    ld d, $17
    inc c
    and b
    ld [bc], a
    inc c
    ldh [rSC], a
    inc c
    or d
    ld a, [bc]
    inc l
    dec l
    inc c
    adc b
    nop
    inc [hl]
    dec [hl]
    jr c, jr_02b_694c

    inc c
    adc h
    nop
    inc c
    inc b
    ld [de], a
    inc c
    inc d
    ld [$2f2e], sp
    inc c
    xor b
    nop
    ld [hl], $37
    ld a, [hl-]
    dec sp
    inc c
    xor h
    nop
    inc c

jr_02b_6929:
    inc h
    ld [de], a
    inc c
    inc [hl]
    ld a, [bc]
    ld [bc], a
    inc bc
    inc c
    jp z, Jump_000_0c02

    add $00
    inc c
    ld c, $0f
    ld bc, $1312
    inc c
    ld [$0c02], a
    and $00
    inc c
    ld l, $0e
    nop
    ld [bc], a
    ld a, [bc]
    jr z, jr_02b_6973

    ld a, [bc]
    nop

jr_02b_694c:
    ld c, $ff
    ld a, [bc]
    inc d
    rlca
    ld a, [hl+]
    dec hl
    ld a, [bc]
    jr nz, jr_02b_6964

    ld a, [bc]
    inc d
    ld [$000a], sp
    nop
    inc l
    dec l
    ld [$0a09], sp
    ld b, [hl]
    ld b, $24

jr_02b_6964:
    dec h
    ld a, [bc]
    inc d
    inc c
    ld l, $2f
    jr jr_02b_6985

    ld a, [bc]
    ld h, [hl]
    ld b, $26
    daa
    ld a, [bc]
    inc d

jr_02b_6973:
    ld [$500a], sp
    nop
    inc l
    dec l
    jr nc, jr_02b_69ac

    inc [hl]
    dec [hl]
    ld a, [bc]
    adc b
    inc b
    ld a, [bc]
    ld d, d
    ld a, [bc]
    ld a, [bc]
    ld [hl], b

jr_02b_6985:
    nop
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld a, [bc]
    xor b
    inc b
    ld a, [bc]
    ld [hl], d
    ld a, [bc]
    jr nc, jr_02b_69c5

    ld b, $07
    ld c, $0f
    jr c, jr_02b_69d3

    ld a, [bc]
    add $04
    ld a, [bc]
    sub b
    inc c
    ld [hl-], a
    inc sp
    ld d, $17
    ld e, $1f
    ld a, [hl-]
    dec sp
    ld a, [bc]
    and $04
    ld a, [bc]

jr_02b_69ac:
    or b
    ld c, $30
    ld sp, $0f0e
    ld a, [bc]
    nop
    db $10
    ld a, [bc]
    jp z, Jump_000_050f

    ld [hl-], a
    inc sp
    ld e, $1f
    ld a, [bc]
    jr nz, jr_02b_69d0

    ld a, [bc]
    ld [$030f], a
    inc b

jr_02b_69c5:
    dec b
    jr nc, jr_02b_69f9

    jr nz, jr_02b_69eb

    ld a, [bc]
    ld b, $1f
    rlca
    inc d
    dec d

jr_02b_69d0:
    ld [hl-], a
    inc sp
    ld [hl+], a

jr_02b_69d3:
    inc hl
    ld a, [bc]
    ld h, $1f
    rlca
    ld a, [bc]
    add h
    nop
    ld a, [bc]
    add d
    ld d, $0a
    adc [hl]
    ld c, $0a
    and h
    nop
    ld a, [bc]
    and d
    ld d, $0a
    xor [hl]
    ld c, $28

jr_02b_69eb:
    add hl, hl
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld a, [bc]
    ld b, b
    db $10
    jr nc, @+$33

    nop
    ld bc, $c20a

jr_02b_69f9:
    db $10
    ld a, [bc]
    ld [de], a
    inc c
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld a, [bc]
    ld h, b
    db $10
    ld [hl-], a
    inc sp
    db $10
    ld de, $e20a
    db $10
    ld a, [bc]
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
    ld [$2d2c], sp
    ld [$0609], sp
    ld b, d
    nop
    ld c, $0f
    ld b, $42
    ld [bc], a
    inc h
    dec h
    ld b, $12
    ld a, [bc]
    ld l, $2f
    jr jr_02b_6a50

    ld b, $62
    nop
    ld e, $1f
    ld b, $62
    ld [bc], a
    ld h, $27
    ld b, $32
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    jr nc, jr_02b_6a7d

    ld c, $0f
    jr nc, jr_02b_6a81

jr_02b_6a50:
    ld b, $82
    nop
    ld b, $50
    inc c
    ld a, [de]
    dec de
    ld [hl], $37
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld e, $1f
    ld [hl-], a
    inc sp
    ld b, $a2
    nop
    ld b, $70
    inc c
    ld b, $82
    nop
    inc c
    dec c
    jr nc, jr_02b_6aa0

    jr nz, jr_02b_6a92

    jr nc, jr_02b_6aa4

    inc c
    dec c
    ld b, $8e
    ld c, $06
    and d
    nop
    inc e
    dec e

jr_02b_6a7d:
    ld [hl-], a
    inc sp
    ld [hl+], a
    inc hl

jr_02b_6a81:
    ld [hl-], a
    inc sp
    inc e
    dec e
    ld b, $ae
    ld c, $30
    ld sp, $8606
    inc b
    ld b, $86
    nop
    ld b, $8e

jr_02b_6a92:
    ld c, $32
    inc sp
    ld b, $a6
    inc b
    ld b, $a6
    nop
    ld b, $ae
    ld c, $04
    dec b

jr_02b_6aa0:
    jr c, jr_02b_6adb

    ld b, $c8

jr_02b_6aa4:
    nop
    ld b, $84
    nop
    jr nz, jr_02b_6acb

    ld b, $8e
    ld c, $14
    dec d
    ld a, [hl-]
    dec sp
    ld b, $e8
    nop
    ld b, $a4
    nop
    ld [hl+], a
    inc hl
    ld b, $ae
    ld c, $2c
    dec l
    ld b, $00
    db $10
    ld b, $8a
    ld [bc], a
    ld b, $84
    nop
    ld b, $50
    ld c, $06

jr_02b_6acb:
    jr nz, jr_02b_6add

    ld b, $aa
    ld [bc], a
    ld b, $a4
    nop
    ld b, $70
    inc c
    jr z, jr_02b_6b01

    ld [bc], a
    inc bc
    ld [bc], a

jr_02b_6adb:
    inc bc
    inc b

jr_02b_6add:
    dec b
    ld b, $00
    stop
    ld bc, $0302
    ld b, $10
    ld c, $12
    inc de
    ld [de], a
    inc de
    inc d
    dec d
    ld b, $20
    db $10
    db $10
    ld de, $1312
    ld b, $30
    inc c
    nop
    ld [bc], a
    nop
    jr z, @+$2b

    nop
    nop
    nop
    inc l

jr_02b_6b01:
    dec l
    jr nc, jr_02b_6b35

    jr nc, jr_02b_6b37

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
    jr nz, jr_02b_6b14

jr_02b_6b14:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_02b_6b21

    nop
    inc d

jr_02b_6b21:
    ld [$0000], sp
    ld [$0706], sp
    nop
    inc c
    ld [bc], a
    nop
    inc d
    rrca
    dec b
    ld d, $17
    nop
    inc l
    ld [bc], a
    nop
    inc [hl]

jr_02b_6b35:
    ld c, $28

jr_02b_6b37:
    add hl, hl
    inc b
    dec b
    nop
    ld c, b
    ld [bc], a
    ld c, $0f
    ld [$0009], sp
    inc d
    ld c, $2a
    dec hl
    inc d
    dec d
    nop
    ld l, b
    ld [bc], a
    ld e, $1f
    jr jr_02b_6b68

    nop
    ld [hl], h
    rrca
    ld bc, $0600
    ld [bc], a
    jr nc, jr_02b_6b89

    jr nz, jr_02b_6b7b

    jr nc, jr_02b_6b8d

    nop
    sub h
    rrca
    ld bc, $2600
    ld [bc], a
    ld [hl-], a
    inc sp
    ld [hl+], a
    inc hl
    ld [hl-], a

jr_02b_6b68:
    inc sp
    nop
    ld [hl], h
    rrca
    ld bc, $8600
    inc b
    nop
    ld [$0000], sp
    sub h
    rrca
    ld bc, $a600
    inc b
    nop

jr_02b_6b7b:
    jr z, jr_02b_6b7d

jr_02b_6b7d:
    nop
    db $f4
    rrca
    inc bc
    jr z, jr_02b_6bac

    ld [bc], a
    inc bc
    nop
    ld c, h
    ld [de], a
    nop

jr_02b_6b89:
    inc d
    rra
    inc bc
    ld a, [hl+]

jr_02b_6b8d:
    dec hl
    ld [de], a
    inc de
    nop
    ld l, h
    ld [de], a
    nop
    inc [hl]
    rra
    dec b
    nop
    add b
    inc b
    nop
    ld d, h
    rra
    dec b
    nop
    and b
    inc b
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

jr_02b_6bac:
    nop
    inc l
    dec l
    jr nc, jr_02b_6be2

    jr nc, jr_02b_6be4

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
    jr nz, jr_02b_6bc1

jr_02b_6bc1:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_02b_6bce

    nop
    inc d

jr_02b_6bce:
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
    jr @+$1b

jr_02b_6be2:
    jr @+$1b

jr_02b_6be4:
    ld h, $27
    nop
    inc [hl]
    rrca
    dec b
    jr nc, @+$33

    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    ld b, $07
    nop
    inc d
    rrca
    dec b
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld [hl], $37
    ld d, $17
    nop
    inc [hl]
    ld c, $28
    add hl, hl
    ld [bc], a
    inc bc
    inc b
    dec b
    nop
    adc d
    inc b
    nop
    inc d
    ld c, $2a
    dec hl
    ld [de], a
    inc de
    inc d
    dec d
    nop
    xor d
    inc b
    nop
    or h
    rrca
    ld bc, $8400
    ld [$d400], sp
    rrca
    ld bc, $a400
    ld [$f400], sp
    rrca
    inc bc
    nop
    add $00
    nop
    ld c, h
    ld [de], a
    nop
    inc d
    rra
    inc bc
    nop
    and $00
    nop
    ld l, h
    ld [de], a
    nop
    inc [hl]
    rra
    dec b
    nop
    ret nz

    inc b
    nop
    ld d, h
    rra
    dec b
    nop
    ldh [rDIV], a
    nop
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
    inc l
    dec l
    jr nc, jr_02b_6c87

    jr nc, jr_02b_6c89

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
    jr nz, jr_02b_6c66

jr_02b_6c66:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc b
    jr nz, jr_02b_6c73

    inc b
    inc d

jr_02b_6c73:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc b
    ld [$050f], sp
    ld l, $2f
    jr jr_02b_6c9d

    jr @+$1b

    ld a, [de]

jr_02b_6c87:
    dec de
    inc b

jr_02b_6c89:
    jr z, @+$11

    rlca
    inc b
    ld [$3800], sp
    add hl, sp
    jr c, jr_02b_6ccc

    nop
    ld bc, $0204
    ld [bc], a
    ld [$0409], sp
    ld d, h
    ld a, [bc]

jr_02b_6c9d:
    inc b
    jr z, jr_02b_6ca0

jr_02b_6ca0:
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    db $10
    ld de, $2204
    ld [bc], a
    jr jr_02b_6cc4

    inc b
    inc [hl]
    ld a, [bc]
    inc [hl]
    dec [hl]
    inc b
    ld [$3000], sp
    ld sp, $0706
    inc b
    ld b, d
    inc b
    inc b
    ld d, h
    ld a, [bc]
    ld [hl], $37
    inc b
    jr z, jr_02b_6cc2

jr_02b_6cc2:
    ld [hl-], a
    inc sp

jr_02b_6cc4:
    ld d, $17
    inc b
    ld h, d
    inc b
    inc b
    inc [hl]
    ld a, [bc]

jr_02b_6ccc:
    jr c, jr_02b_6d07

    inc b
    jp nz, $0404

    ld b, $14
    inc b
    ld d, h
    ld a, [bc]
    ld a, [hl-]
    dec sp
    inc b
    ld [c], a
    inc b
    inc b
    ld h, $14
    inc b
    db $f4
    inc c
    jr c, jr_02b_6d1d

    inc b
    ld [$3400], sp
    dec [hl]
    nop
    ld bc, $0302
    inc b
    ld c, [hl]
    db $10
    inc b
    inc d
    inc e
    ld a, [hl-]
    dec sp
    inc b
    jr z, jr_02b_6cf8

jr_02b_6cf8:
    ld [hl], $37
    db $10
    ld de, $1312
    inc b
    ld l, [hl]
    db $10
    inc b
    inc [hl]
    ld e, $38
    add hl, sp
    inc c

jr_02b_6d07:
    dec c
    inc b
    ld c, d
    rrca
    dec b
    inc b
    and [hl]
    nop
    ld a, [hl-]
    dec sp
    inc e
    dec e
    inc b
    ld a, [hl+]
    rrca
    inc bc
    jr z, jr_02b_6d42

    inc b
    ld c, [hl]
    ld [de], a
    inc b

jr_02b_6d1d:
    ret nz

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
    ldh [rNR10], a
    inc b
    jr nz, jr_02b_6d30

    inc b
    ld [hl-], a

jr_02b_6d30:
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
    jr nc, jr_02b_6d6e

    jr nc, jr_02b_6d70

    inc h
    dec h
    inc c

jr_02b_6d42:
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02b_6d4d

jr_02b_6d4d:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_6d5a

    inc c
    inc d

jr_02b_6d5a:
    ld [$040c], sp
    nop
    ld [$0a09], sp
    dec bc
    jr nc, @+$33

    jr c, jr_02b_6d9f

    ld b, $07
    inc c
    inc c
    ld [bc], a
    inc c
    inc d
    ld a, [bc]

jr_02b_6d6e:
    ld l, $2f

jr_02b_6d70:
    jr @+$1b

    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    ld d, $17
    inc c
    inc l
    ld [bc], a
    inc c
    inc d
    ld [$2d2c], sp
    inc c
    ld b, [hl]
    nop
    inc c
    ld c, b
    nop
    jr c, @+$3b

    jr nc, jr_02b_6dbd

    ld b, $07
    ld c, $0f
    ld [$0c09], sp
    inc d
    ld [$2f2e], sp
    inc c
    ld h, [hl]
    nop
    inc c
    ld l, b
    nop
    ld a, [hl-]
    dec sp

jr_02b_6d9f:
    ld [hl-], a
    inc sp
    ld d, $17
    ld e, $1f
    jr jr_02b_6dc0

    inc c
    ld [hl], h
    ld a, [bc]
    inc c
    ld [$0000], sp
    ld bc, $0302
    inc b
    dec b
    inc c
    ld [$2000], sp
    ld hl, $3130
    inc c
    sub h
    ld a, [bc]

jr_02b_6dbd:
    inc c
    jr z, jr_02b_6dc0

jr_02b_6dc0:
    db $10
    ld de, $1312
    inc d
    dec d
    inc c
    jr z, jr_02b_6dc9

jr_02b_6dc9:
    ld [hl+], a
    inc hl
    ld [hl-], a
    inc sp
    inc c
    ld [hl], h
    ld a, [bc]
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    inc c
    ld c, h
    ld [bc], a
    inc c
    jp z, Jump_000_0c02

    jp nc, $360c

    scf
    ld [hl], $37
    inc c
    ld l, h
    ld [bc], a
    inc c
    ld [$0c02], a
    ld a, [c]
    ld a, [bc]
    inc c
    ld a, [bc]
    db $10
    inc c
    ld [bc], a
    ld [de], a
    inc c
    ld b, h
    ld [bc], a
    inc c
    call nz, Call_000_0c00
    inc d
    ld a, [bc]
    inc d
    dec d
    inc c
    ld [hl+], a
    ld [de], a
    inc c
    ld h, h
    ld [bc], a
    inc c
    db $e4
    nop
    inc c
    inc [hl]
    ld a, [bc]
    inc c
    ld b, b
    inc d
    inc c
    ld c, $12
    inc c
    ld a, [bc]
    nop
    inc c
    inc d
    inc c
    inc c
    ld h, d
    ld [de], a
    inc c
    ld l, $12
    inc c
    ld a, [hl+]
    nop
    inc c
    ld [hl], h
    inc e
    jr z, jr_02b_6e4a

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
    nop
    jr z, @+$2b

    nop
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_6e6f

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

jr_02b_6e4a:
    dec hl
    nop
    jr nz, jr_02b_6e4e

jr_02b_6e4e:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_02b_6e5b

    nop
    inc d

jr_02b_6e5b:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    nop
    ld [$0600], sp
    rlca
    ld [$0009], sp
    inc c
    nop
    nop

jr_02b_6e6f:
    inc d
    ld [$2f2e], sp
    jr jr_02b_6e8e

    jr jr_02b_6e90

    ld a, [de]
    dec de
    nop
    jr z, jr_02b_6e7c

jr_02b_6e7c:
    ld d, $17
    jr jr_02b_6e99

    nop
    inc l
    nop
    nop
    inc [hl]
    ld a, [bc]
    nop
    ld [$3000], sp
    ld sp, $3534
    nop

jr_02b_6e8e:
    add d
    ld [bc], a

jr_02b_6e90:
    nop
    ld c, h
    nop
    nop
    ld d, h
    ld a, [bc]
    nop
    jr z, jr_02b_6e99

jr_02b_6e99:
    ld [hl-], a
    inc sp
    ld [hl], $37
    nop
    and d
    ld [bc], a
    nop
    ld l, h
    nop
    nop
    inc [hl]
    ld a, [bc]
    nop
    adc b
    inc b
    nop
    adc b
    inc b
    jr nc, jr_02b_6edf

    nop
    ld d, h
    ld a, [bc]
    nop
    xor b
    inc b
    nop
    xor b
    inc b
    ld [hl-], a
    inc sp
    nop
    inc [hl]
    ld a, [bc]
    jr c, jr_02b_6ef7

    inc c
    dec c
    inc [hl]
    dec [hl]
    inc c
    dec c
    jr nc, jr_02b_6ef7

    inc c
    dec c
    nop
    ld [bc], a
    stop
    jp nc, Jump_000_3a0c

    dec sp
    inc e
    dec e
    ld [hl], $37
    inc e
    dec e
    ld [hl-], a
    inc sp
    inc e
    dec e
    nop
    ld [hl+], a
    stop
    ld a, [c]

jr_02b_6edf:
    ld c, $0e
    rrca
    nop
    ld b, d
    inc d
    inc [hl]
    dec [hl]
    inc h
    dec h
    ld [bc], a
    inc bc
    nop
    inc d
    inc e
    ld e, $1f
    nop
    ld h, d
    inc d
    ld [hl], $37
    ld h, $27

jr_02b_6ef7:
    ld [de], a
    inc de
    nop
    ld [hl], h
    inc c
    ld c, $0f
    nop
    add d
    inc d
    nop
    ld c, [hl]
    stop
    ld d, d
    inc c
    ld [hl-], a
    inc sp
    ld e, $1f
    nop
    and d
    inc d
    nop
    ld l, [hl]
    stop
    ld [hl-], a
    ld a, [bc]
    jr z, jr_02b_6f3f

    ld [bc], a
    inc bc
    nop
    ret nz

    ld a, [de]
    nop
    ld [de], a
    inc c
    ld [de], a
    inc de
    nop
    ldh [rNR30], a
    nop
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    ld a, [bc]
    jr z, @+$2b

    ld a, [bc]
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_6f63

    jr nc, jr_02b_6f65

    inc h
    dec h
    ld a, [bc]
    nop
    ld [bc], a
    rst $38
    ld a, [bc]
    inc d
    rlca
    ld a, [hl+]
    dec hl

jr_02b_6f3f:
    ld a, [bc]
    jr nz, jr_02b_6f42

jr_02b_6f42:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    ld a, [bc]
    jr nz, jr_02b_6f4f

    ld a, [bc]
    inc d

jr_02b_6f4f:
    ld [$000a], sp
    ld [$0706], sp
    ld [$0809], sp
    add hl, bc
    inc h
    dec h
    ld a, [bc]
    inc d
    rrca
    dec b
    ld d, $17
    jr jr_02b_6f7c

jr_02b_6f63:
    jr jr_02b_6f7e

jr_02b_6f65:
    ld h, $27
    ld a, [bc]
    inc [hl]
    ld c, $28
    add hl, hl
    inc b
    dec b
    jr nc, jr_02b_6fa1

    inc [hl]
    dec [hl]
    jr c, jr_02b_6fad

    jr c, @+$3b

    ld b, $07
    ld a, [bc]
    inc d
    ld c, $2a

jr_02b_6f7c:
    dec hl
    inc d

jr_02b_6f7e:
    dec d
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld d, $17
    ld a, [bc]
    ld [hl], h
    rrca
    ld bc, $060a
    ld [bc], a
    ld a, [bc]
    adc h
    nop
    jr nc, jr_02b_6fc6

    ld a, [bc]
    sub h
    rrca
    ld bc, $260a
    ld [bc], a
    ld a, [bc]
    xor h
    nop
    ld [hl-], a
    inc sp

jr_02b_6fa1:
    ld a, [bc]
    inc d
    ld [$2d2c], sp
    ld a, [bc]
    ld c, [hl]
    nop
    ld [$0e09], sp
    rrca

jr_02b_6fad:
    ld a, [bc]
    ld [$0a00], sp
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    inc d
    ld [$2f2e], sp
    ld a, [bc]
    ld l, [hl]
    nop
    jr jr_02b_6fd6

    ld e, $1f
    ld a, [bc]
    jr z, jr_02b_6fc2

jr_02b_6fc2:
    ld a, [bc]
    ld a, [hl+]
    ld [de], a
    ld a, [bc]

jr_02b_6fc6:
    db $f4
    ld a, [bc]
    jr c, jr_02b_7003

    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    jr nz, jr_02b_6ff1

    jr nc, jr_02b_7003

    nop
    ld bc, $0302

jr_02b_6fd6:
    ld a, [bc]
    ld c, [hl]
    db $10
    ld a, [bc]
    inc d
    ld a, [de]
    ld a, [hl-]
    dec sp
    ld [hl], $37
    ld [hl], $37
    ld [hl+], a
    inc hl
    ld [hl-], a
    inc sp
    db $10
    ld de, $1312
    ld a, [bc]
    ld l, [hl]
    db $10
    ld a, [bc]
    db $f4
    ld a, [bc]
    ld a, [bc]

jr_02b_6ff1:
    ld a, [bc]
    ld d, $0a
    inc c
    rrca
    ld bc, $260a
    ld [bc], a
    ld a, [bc]
    ld a, [hl+]
    ld [de], a
    ld a, [bc]
    inc l
    rrca
    inc bc
    ld a, [bc]
    ld c, [hl]

jr_02b_7003:
    ld [de], a
    ld a, [bc]
    ld c, [hl]
    db $10
    ld a, [bc]
    add b
    inc b
    ld a, [bc]
    inc d
    ld a, [bc]
    ld a, [bc]
    ld l, [hl]
    ld [de], a
    ld a, [bc]
    ld l, [hl]
    db $10
    ld a, [bc]
    and b
    inc b
    ld a, [bc]
    inc d
    ld [$0200], sp
    inc b
    jr z, @+$2b

    inc b
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_7056

    jr nc, jr_02b_7058

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
    jr nz, jr_02b_7035

jr_02b_7035:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc b
    jr nz, jr_02b_7042

    inc b
    inc d

jr_02b_7042:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc b
    ld [$050f], sp
    ld l, $2f
    jr jr_02b_706c

    jr @+$1b

    ld a, [de]

jr_02b_7056:
    dec de
    inc b

jr_02b_7058:
    jr z, jr_02b_7069

    dec b
    inc b
    ld b, [hl]
    ld [bc], a
    inc b
    ld [$0000], sp
    ld bc, $0004
    ld [bc], a
    inc b
    ld [de], a
    ld a, [bc]

jr_02b_7069:
    inc b
    ld h, [hl]
    ld [bc], a

jr_02b_706c:
    inc b
    jr z, jr_02b_706f

jr_02b_706f:
    db $10
    ld de, $2004
    ld [bc], a
    inc b
    ld [hl-], a
    ld a, [bc]
    inc b
    add h
    inc b
    ld [bc], a
    inc bc
    inc b
    adc h
    inc b
    inc b
    ld [de], a
    ld a, [bc]
    inc b
    and h
    inc b
    ld [de], a
    inc de
    inc b
    xor h
    inc b
    inc b
    or d
    inc c
    inc b
    add $0a
    inc b
    ret nc

    ld c, $04
    and $0a
    inc b
    jr nc, jr_02b_70a5

    inc b
    inc b
    inc e
    inc b
    db $10
    inc c
    inc b
    inc h
    inc e
    inc b
    jr nc, jr_02b_70b1

jr_02b_70a5:
    inc b
    ld b, d
    ld e, $04
    ld [de], a
    rrca
    ld bc, $6604
    rra
    ld b, a
    nop

jr_02b_70b1:
    ld [bc], a
    nop
    jr z, jr_02b_70de

    nop
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_70ed

    jr nc, jr_02b_70ef

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
    jr nz, jr_02b_70cc

jr_02b_70cc:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_02b_70d9

    nop
    inc d

jr_02b_70d9:
    ld [$0000], sp
    ld b, $34

jr_02b_70de:
    dec [hl]
    nop
    inc c
    rrca
    dec bc
    ld [hl], $37
    nop
    inc l
    rrca
    ld bc, $0908
    nop
    inc c

jr_02b_70ed:
    ld [bc], a
    inc b

jr_02b_70ef:
    dec b
    nop
    ld c, d
    rrca
    inc bc
    jr jr_02b_710f

    nop
    inc l
    ld [bc], a
    inc d
    dec d
    nop
    ld l, d
    rrca
    inc bc
    jr nc, jr_02b_7132

    ld b, $07
    ld [$0809], sp
    add hl, bc
    ld c, $0f
    nop
    ld a, [bc]
    rrca
    inc bc
    ld [hl-], a
    inc sp

jr_02b_710f:
    ld d, $17
    jr jr_02b_712c

    jr jr_02b_712e

    ld e, $1f
    nop
    ld a, [hl+]
    rrca
    inc bc
    nop
    ld c, b
    nop
    inc [hl]
    dec [hl]
    jr nc, @+$33

    ld c, $0f
    jr c, @+$3b

    nop
    call z, Call_000_030f
    ld [hl], $37

jr_02b_712c:
    ld [hl], $37

jr_02b_712e:
    ld [hl-], a
    inc sp
    ld e, $1f

jr_02b_7132:
    ld a, [hl-]
    dec sp
    nop
    inc l
    rrca
    ld bc, $0504
    nop
    nop
    ld [de], a
    jr nz, jr_02b_7160

    nop
    ld a, [bc]
    rrca
    inc bc
    inc d
    dec d
    nop
    jr nz, jr_02b_715a

    ld [hl+], a
    inc hl
    nop
    ld a, [hl+]
    rrca
    inc bc
    inc l
    dec l
    nop
    inc b
    stop
    ld [bc], a
    stop
    ld c, d
    rrca
    inc bc

jr_02b_715a:
    ld l, $2f
    nop
    inc h
    stop

jr_02b_7160:
    ld [hl+], a
    stop
    ld l, d
    rrca
    inc bc
    jr z, jr_02b_7191

    ld [bc], a
    inc bc
    nop
    jp nz, Jump_000_0014

    nop
    ld [bc], a
    nop
    ld [de], a
    inc c
    ld [de], a
    inc de
    nop
    ld [c], a
    inc d
    nop
    jr nz, jr_02b_717d

    nop
    ld [hl-], a

jr_02b_717d:
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
    jr nc, jr_02b_71bb

    jr nc, jr_02b_71bd

    inc h
    dec h
    nop
    nop
    ld [bc], a

jr_02b_7191:
    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_02b_719a

jr_02b_719a:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_02b_71a7

    nop
    inc d

jr_02b_71a7:
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
    jr jr_02b_71d4

jr_02b_71bb:
    jr @+$1b

jr_02b_71bd:
    ld h, $27
    nop
    inc d
    ld [$5000], sp
    nop
    nop
    nop
    nop
    inc b
    dec b
    nop
    ld [$3400], sp
    dec [hl]
    nop
    ld a, [bc]
    nop
    nop
    inc d

jr_02b_71d4:
    ld [$7000], sp
    nop
    nop
    jr nz, jr_02b_71db

jr_02b_71db:
    inc d
    dec d
    nop
    jr z, jr_02b_71e0

jr_02b_71e0:
    ld [hl], $37
    nop
    ld a, [hl+]
    nop
    nop
    inc d
    ld [$4a00], sp
    ld b, $02
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
    ld l, d
    ld b, $12
    inc de
    inc d
    dec d
    ld [hl], $37
    ld [hl], $37
    nop
    or d
    inc c
    nop
    adc d
    ld [bc], a
    nop
    ld c, h
    nop
    ld a, [bc]
    dec bc
    nop
    ld [$0002], sp
    call nc, Call_000_000a
    xor d
    ld [bc], a
    nop
    ld l, h
    nop
    ld a, [de]
    dec de
    nop
    jr z, jr_02b_721f

    nop
    inc d

jr_02b_721f:
    ld [$0302], sp
    nop
    jp z, RST_00

    adc h
    nop
    nop
    adc [hl]
    nop
    nop
    ld c, $1e
    ld [de], a
    inc de
    nop
    ld [$0000], a
    xor h
    nop
    nop
    xor [hl]
    nop
    nop
    ld l, $1e
    nop
    nop
    ld [bc], a
    nop
    ld b, b
    stop
    add [hl]
    inc d
    nop
    ld [de], a
    rrca
    ld bc, $6000
    stop
    and [hl]
    inc d
    nop
    ld [hl-], a
    rrca
    ld bc, $c000
    ld a, [de]
    nop
    inc d
    ld c, $00
    ldh [rNR30], a
    nop
    inc d
    ld [$0200], sp
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_729c

    jr nc, jr_02b_729e

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
    jr nz, jr_02b_727b

jr_02b_727b:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_7288

    inc c
    inc d

jr_02b_7288:
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
    jr jr_02b_72b5

jr_02b_729c:
    jr jr_02b_72b7

jr_02b_729e:
    ld h, $27
    inc c
    inc d
    ld [$500c], sp
    nop
    inc c
    nop
    nop
    inc b
    dec b
    inc c
    ld [$3000], sp
    ld sp, $3938
    inc c
    ld d, d
    ld a, [bc]

jr_02b_72b5:
    inc c
    ld [hl], b

jr_02b_72b7:
    nop
    inc c
    jr nz, jr_02b_72bb

jr_02b_72bb:
    inc d
    dec d
    inc c
    jr z, jr_02b_72c0

jr_02b_72c0:
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    inc c
    ld [hl], d
    ld a, [bc]
    inc c
    ld c, d
    inc b
    ld a, [bc]
    dec bc
    inc c
    adc h
    ld [bc], a
    inc c
    sub b
    inc c
    inc c
    ld l, d
    inc b
    ld a, [de]
    dec de
    inc c
    xor h
    ld [bc], a
    inc c
    or b
    ld c, $0c
    nop
    ld a, [de]
    inc c
    ret nc

    ld c, $0c
    jr nz, jr_02b_7300

    inc c
    or b
    inc c
    inc b
    dec b
    inc [hl]
    dec [hl]
    jr nc, jr_02b_7320

    inc c
    ld b, d
    stop
    ld bc, $0302
    inc c
    ld c, h
    db $10
    inc c
    ld [de], a
    ld a, [bc]
    inc d
    dec d
    ld [hl], $37

jr_02b_7300:
    ld [hl-], a
    inc sp
    inc c
    ld h, d
    db $10
    db $10
    ld de, $1312
    inc c
    ld l, h
    db $10
    inc c
    ld [hl-], a
    ld a, [bc]
    inc l
    dec l
    inc c
    ld b, d
    db $10
    inc c
    ld b, h
    db $10
    inc c
    inc c
    inc b
    inc c
    ld [de], a
    ld a, [bc]
    ld l, $2f
    inc c

jr_02b_7320:
    ld h, d
    db $10
    inc c
    ld h, h
    db $10
    inc c
    inc l
    inc b
    inc c
    ld [hl-], a
    inc c
    inc c
    ld c, h
    ld [de], a
    inc c
    ld d, b
    db $10
    inc c
    adc h
    rra
    ld bc, $2b2a
    inc c
    ld l, h
    ld [de], a
    inc c
    ld [hl], b
    db $10
    inc c
    xor h
    rra
    ld bc, $0200
    inc c
    jr z, jr_02b_736f

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_737e

    jr nc, jr_02b_7380

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
    jr nz, jr_02b_735d

jr_02b_735d:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_736a

    inc c
    inc d

jr_02b_736a:
    ld [$000c], sp
    rrca
    dec l

jr_02b_736f:
    ld [$2409], sp
    dec h
    inc l
    dec l
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    nop
    ld bc, $000c
    ld [bc], a

jr_02b_737e:
    inc c
    ld [de], a

jr_02b_7380:
    ld a, [bc]
    jr jr_02b_739c

    ld h, $27
    ld l, $2f
    ld a, [de]
    dec de
    ld [hl], $37
    db $10
    ld de, $200c
    ld [bc], a
    inc c
    ld [hl-], a
    ld a, [bc]
    jr nc, jr_02b_73c6

    ld b, $07
    inc c
    add [hl]
    nop
    inc [hl]
    dec [hl]

jr_02b_739c:
    inc c
    inc c
    inc b
    inc c
    ld [de], a
    ld a, [bc]
    ld [hl-], a
    inc sp
    ld d, $17
    inc c
    and [hl]
    nop
    ld [hl], $37
    inc c
    inc l
    inc b
    inc c
    or d
    inc c
    jr nc, @+$33

    inc c
    add $00
    inc c
    ret nz

    nop
    ld [$0c09], sp
    inc c
    db $10
    inc h
    dec h
    inc c
    call nc, $320a
    inc sp
    inc c

jr_02b_73c6:
    and $00
    inc c
    ldh [rP1], a
    jr jr_02b_73e6

    inc c
    inc l
    db $10
    ld h, $27
    inc c
    inc d
    ld [$0302], sp
    inc c
    ld b, b
    db $10
    inc b
    dec b
    jr c, jr_02b_7417

    inc c
    ld [bc], a
    db $10
    jr nc, jr_02b_7414

    jr c, jr_02b_741e

    inc c

jr_02b_73e6:
    ld [de], a
    ld a, [de]
    ld [de], a
    inc de
    inc c
    ld h, b
    db $10
    inc d
    dec d
    ld a, [hl-]
    dec sp
    inc c
    ld [hl+], a
    db $10
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    inc c
    ld [hl-], a
    ld a, [de]
    inc c
    nop
    inc b
    jr c, @+$3b

    inc c
    ld c, b
    ld [de], a
    inc c
    ret z

    nop
    inc c
    inc d
    rrca
    ld bc, $3b3a
    inc c
    ld l, b
    ld [de], a
    inc c
    add sp, $00
    inc c
    inc [hl]

jr_02b_7414:
    ld c, $28
    add hl, hl

jr_02b_7417:
    inc c
    ld b, b
    ld [de], a
    inc c
    ld b, b
    db $10
    inc c

jr_02b_741e:
    ld [de], a
    rrca
    ld bc, $2b2a
    inc c
    ld h, b
    ld [de], a
    inc c
    ld h, b
    db $10
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
    jr nc, @+$33

    jr nc, jr_02b_746b

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
    jr nz, jr_02b_7448

jr_02b_7448:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_7455

    inc c
    inc d

jr_02b_7455:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    jr c, jr_02b_7499

    inc c
    ld a, [bc]
    rrca
    inc bc
    ld l, $2f
    jr @+$1b

    jr jr_02b_7483

    ld a, [de]

jr_02b_746b:
    dec de
    ld a, [hl-]
    dec sp
    inc c
    ld a, [hl+]
    rrca
    inc bc
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    inc c
    add d
    nop
    jr c, @+$3b

    jr c, jr_02b_74b6

    inc c
    inc c
    rrca
    ld bc, $1b1a

jr_02b_7483:
    ld [hl], $37
    inc c
    and d
    nop
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    inc c
    inc l
    rrca
    ld bc, $080c
    nop
    nop
    ld bc, $0302
    inc b
    dec b

jr_02b_7499:
    inc c
    ld a, [bc]
    rrca
    inc bc
    inc c
    jr z, jr_02b_74a0

jr_02b_74a0:
    db $10
    ld de, $1312
    inc d
    dec d
    inc c
    ld a, [hl+]
    rrca
    inc bc
    inc c
    ld [$0600], sp
    rlca
    inc c
    ld b, h
    nop
    inc c
    jp z, $070f

jr_02b_74b6:
    ld d, $17
    inc c
    ld h, h
    nop
    inc c
    ld a, [hl+]
    rrca
    inc bc
    inc c
    ret z

    nop
    inc [hl]
    dec [hl]
    inc c
    ld b, d
    ld [de], a
    inc c
    inc c
    rrca
    ld bc, $e80c
    nop
    ld [hl], $37
    inc c
    ld h, d
    ld [de], a
    inc c
    inc l
    rrca
    inc bc
    inc c
    ld b, d
    rra
    dec bc
    inc c
    ld h, $00
    inc c
    ld h, h
    rra
    add hl, bc
    jr z, jr_02b_750d

    ld [bc], a
    inc bc
    inc c
    jp nz, Jump_000_0c14

    nop
    ld [bc], a
    inc c
    ld [de], a
    inc c
    ld [de], a
    inc de
    inc c
    ld [c], a
    inc d
    inc c
    jr nz, jr_02b_74f9

    inc c
    ld [hl-], a

jr_02b_74f9:
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
    jr nc, jr_02b_7537

    jr nc, @+$33

    inc h
    dec h
    inc c
    nop
    ld [bc], a

jr_02b_750d:
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02b_7516

jr_02b_7516:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_7523

    inc c
    inc d

jr_02b_7523:
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

jr_02b_7537:
    inc d
    ld [$2f2e], sp
    jr jr_02b_7556

    jr jr_02b_7558

    ld a, [de]
    dec de
    inc c
    jr z, jr_02b_7544

jr_02b_7544:
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

jr_02b_7556:
    inc c
    adc h

jr_02b_7558:
    nop
    inc c
    ld d, d
    inc c
    inc c
    jr z, jr_02b_755f

jr_02b_755f:
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
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    dec b
    jr c, jr_02b_75af

    inc c
    sub b
    rrca
    ld bc, $3b3a
    db $10
    ld de, $1312
    ld [de], a
    inc de
    inc d
    dec d
    ld a, [hl-]
    dec sp
    inc c
    or b
    ld c, $34
    dec [hl]
    jr c, @+$3b

    inc c
    inc c
    ld [bc], a
    inc l
    dec l
    inc c
    adc $0f
    ld bc, $3736
    ld a, [hl-]
    dec sp
    inc c
    inc l
    ld [bc], a
    ld l, $2f
    inc c
    xor $0f
    dec b
    inc c
    ld c, h
    ld [bc], a
    ld a, [bc]
    dec bc
    jr c, jr_02b_75e3

    inc c
    ld a, [bc]
    nop
    inc c
    inc d

jr_02b_75af:
    ld e, $0c
    ld l, h
    ld [bc], a
    ld a, [de]
    dec de
    ld a, [hl-]
    dec sp
    inc c
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
    jr z, jr_02b_75fa

    inc c
    ret z

    ld [bc], a
    inc c
    ld [$0c00], sp
    add $02
    inc c
    ld [de], a
    inc c
    inc c
    add sp, $02
    inc c
    jr z, jr_02b_75e3

jr_02b_75e3:
    inc c
    and $02
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
    jr nc, jr_02b_7626

    jr nc, jr_02b_7628

    inc h
    dec h
    inc c

jr_02b_75fa:
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02b_7605

jr_02b_7605:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_7612

    inc c
    inc d

jr_02b_7612:
    ld [$000c], sp
    ld [$0706], sp
    inc c
    inc c
    ld [bc], a
    inc c
    inc d
    rrca
    dec b
    ld d, $17
    inc c
    inc l
    ld [bc], a
    inc c
    inc [hl]

jr_02b_7626:
    ld c, $28

jr_02b_7628:
    add hl, hl
    inc b
    dec b
    inc c
    ld [$0c06], sp
    inc d
    ld c, $2a
    dec hl
    inc d
    dec d
    inc c
    jr z, @+$08

    inc c
    inc [hl]
    inc c
    inc l
    dec l
    ld [$0a09], sp
    dec bc
    inc c
    adc d
    rrca
    rlca
    ld l, $2f
    jr jr_02b_7662

    ld a, [de]
    dec de
    inc c
    xor d
    rrca
    add hl, bc
    inc c
    ld [$0c00], sp
    jp z, Jump_000_090f

    inc c
    jr z, jr_02b_7659

jr_02b_7659:
    inc c
    ld [$0d0f], a
    nop
    ld bc, $0302
    inc c

jr_02b_7662:
    ld c, $0f
    inc bc
    inc c
    ld h, $02
    db $10
    ld de, $1312
    inc c
    ld l, $0f
    inc bc
    inc c
    ld b, [hl]
    ld a, [bc]
    inc c
    ld [de], a
    rra
    dec b
    inc c
    ld l, h
    inc b
    inc c
    ld [hl-], a
    rrca
    ld bc, $880c
    ld [$120c], sp
    rrca
    ld bc, $a80c
    ld [$320c], sp
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
    jr nc, jr_02b_76c8

    jr nc, jr_02b_76ca

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
    jr nz, jr_02b_76a7

jr_02b_76a7:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_76b4

    inc c
    inc d

jr_02b_76b4:
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
    jr jr_02b_76e1

jr_02b_76c8:
    jr jr_02b_76e3

jr_02b_76ca:
    ld h, $27
    inc c
    inc [hl]
    ld c, $28
    add hl, hl
    inc b
    dec b
    inc c
    ld [$0c00], sp
    ld [$0c02], sp
    inc d
    ld c, $2a
    dec hl
    inc d
    dec d
    inc c

jr_02b_76e1:
    jr z, jr_02b_76e3

jr_02b_76e3:
    inc c
    jr z, jr_02b_76e8

    inc c
    ld [hl], h

jr_02b_76e8:
    rrca
    ld bc, $860c
    ld b, $0c
    sub d
    rrca
    inc bc
    inc c
    and [hl]
    ld b, $0c
    or d
    rrca
    dec b
    inc c
    ld b, $02
    inc c
    ret nc

    rrca
    rlca
    inc c
    ld h, $02
    inc c
    or b
    rrca
    dec b
    inc l
    dec l
    ld a, [bc]
    dec bc
    inc c
    adc h
    rrca
    add hl, bc
    ld l, $2f
    ld a, [de]
    dec de
    inc c
    xor h
    rrca
    rlca
    inc c
    ld c, b
    ld d, $0c
    sub b
    rrca
    inc bc
    inc c
    ld l, b
    ld d, $0c
    ld [hl], b
    rra
    dec b
    inc c
    ld [$0000], sp
    ld bc, $0302
    ld [bc], a
    inc bc
    inc c
    ld [de], a
    rrca
    rlca
    db $10
    ld de, $1312
    ld [de], a
    inc de
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, jr_02b_7768

    inc c
    nop
    nop
    inc l
    dec l
    inc [hl]
    dec [hl]
    jr nc, jr_02b_7779

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
    jr nz, jr_02b_7756

jr_02b_7756:
    ld l, $2f
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_7763

    inc c
    inc d

jr_02b_7763:
    ld [$000c], sp
    ld b, $34

jr_02b_7768:
    dec [hl]
    ld b, $07
    inc c
    inc c
    ld [bc], a
    inc c
    inc d
    rrca
    inc bc
    ld [hl], $37
    ld d, $17
    inc c
    inc l
    ld [bc], a

jr_02b_7779:
    inc c
    inc [hl]
    ld c, $28
    add hl, hl
    inc b
    dec b
    inc c
    ld [$0c00], sp
    ld c, h
    ld [bc], a
    inc c
    inc d
    ld c, $2a
    dec hl
    inc d
    dec d
    inc c
    jr z, jr_02b_7790

jr_02b_7790:
    inc c
    ld l, h
    ld [bc], a
    inc c
    inc d
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    inc h
    dec h
    inc c
    ld b, $02
    inc c
    adc h
    ld [bc], a
    inc c
    inc d
    ld [$2f2e], sp
    jr @+$1b

    jr jr_02b_77c6

    ld h, $27
    inc c
    ld h, $02
    inc c
    xor h
    ld [bc], a
    inc c
    or h
    ld a, [bc]
    inc c
    adc d
    inc b
    inc c
    adc b
    ld [bc], a
    inc c
    ld a, [bc]
    nop
    inc c
    call nc, Call_000_0c0a
    xor d

jr_02b_77c6:
    inc b
    inc c
    xor b
    ld [bc], a
    inc c
    ld a, [hl+]
    nop
    inc c
    or h
    ld a, [bc]
    jr c, jr_02b_780b

    inc c
    call z, $0a02
    dec bc
    inc c
    inc c
    rra
    inc bc
    ld a, [hl-]
    dec sp
    inc c
    db $ec
    ld [bc], a
    ld a, [de]
    dec de
    inc c
    inc l
    rra
    ld bc, $860c
    nop
    jr c, @+$3b

    inc c
    ld c, b
    nop
    inc c
    add [hl]
    ld [de], a
    nop
    ld bc, $120c
    inc c
    inc d
    dec d
    ld a, [hl-]
    dec sp
    inc c
    ld l, b
    nop
    inc c
    and [hl]
    ld [de], a
    db $10
    ld de, $320c
    ld c, $02
    inc bc
    inc c
    adc b
    nop
    inc c

jr_02b_780b:
    adc [hl]
    db $10
    ld [bc], a
    inc bc
    inc c
    db $10
    rrca
    ld bc, $1312
    inc c
    xor b
    nop
    inc c
    xor [hl]
    db $10
    ld [de], a
    inc de
    inc c
    jr nc, jr_02b_782c

    nop
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_785d

jr_02b_782c:
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
    jr nz, jr_02b_783c

jr_02b_783c:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_7849

    inc c
    inc d

jr_02b_7849:
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

jr_02b_785d:
    inc d
    ld [$2f2e], sp
    jr jr_02b_787c

    jr jr_02b_787e

    ld a, [de]
    dec de
    inc c
    jr z, jr_02b_786a

jr_02b_786a:
    ld d, $17
    inc c
    ld h, d
    nop
    ld h, $27
    inc c
    inc [hl]
    ld a, [bc]
    inc c
    ld [$3000], sp
    ld sp, $3534
    inc [hl]

jr_02b_787c:
    dec [hl]
    inc c

jr_02b_787e:
    add d
    ld [bc], a
    inc c
    ld d, d
    inc c
    inc c
    jr z, jr_02b_7886

jr_02b_7886:
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld [hl], $37
    inc c
    and d
    ld [bc], a
    inc c
    ld [hl], d
    inc c
    inc [hl]
    dec [hl]
    nop
    ld bc, $0504
    inc c
    adc b
    nop
    inc c
    call nz, Call_000_3800
    add hl, sp
    inc c
    ld d, d
    inc c
    ld [hl], $37
    db $10
    ld de, $1514
    inc c
    xor b
    nop
    inc c
    db $e4
    nop
    ld a, [hl-]
    dec sp
    inc c
    or d
    ld c, $06
    rlca
    ld c, $0f
    inc c
    adc b
    nop
    ld c, $0f
    ld a, [bc]
    dec bc
    inc c
    ret nc

    rrca
    ld bc, $1716
    ld e, $1f
    inc c
    xor b
    nop
    ld e, $1f
    ld a, [de]
    dec de
    inc c
    ldh a, [$0e]
    inc c
    ld [$0c00], sp
    ld b, $14
    inc c
    adc [hl]
    rrca
    dec b
    inc c
    ld h, $14
    inc c
    xor [hl]
    rrca
    ld bc, $420c
    rra
    dec hl
    jr z, jr_02b_7911

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc c
    ld b, $04
    inc c
    jp nz, $0c10

    ld [de], a
    inc c
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc c
    ld h, $04
    inc c
    ld [c], a
    db $10
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
    jr nc, jr_02b_793f

    jr nc, jr_02b_7941

    inc h

jr_02b_7911:
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
    jr nz, jr_02b_791e

jr_02b_791e:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_792b

    inc c
    inc d

jr_02b_792b:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [$050f], sp
    ld l, $2f
    jr jr_02b_7955

    jr jr_02b_7957

    ld a, [de]

jr_02b_793f:
    dec de
    inc c

jr_02b_7941:
    jr z, jr_02b_7952

    rlca
    jr nc, @+$33

    jr c, @+$3b

    inc c
    ld [$0000], sp
    ld bc, $000c
    ld [bc], a
    inc c
    ld d, d

jr_02b_7952:
    inc c
    ld [hl-], a
    inc sp

jr_02b_7955:
    ld a, [hl-]
    dec sp

jr_02b_7957:
    inc c
    jr z, jr_02b_795a

jr_02b_795a:
    db $10
    ld de, $200c
    ld [bc], a
    inc c
    ld [hl], d
    rrca
    ld bc, $3938
    inc [hl]
    dec [hl]
    ld b, $07
    inc c
    ld b, d
    nop
    inc c
    inc c
    nop
    inc c
    sub h
    ld c, $3a
    dec sp
    ld [hl], $37
    ld d, $17
    inc c
    ld h, d
    nop
    inc c
    inc l
    nop
    inc c
    inc d
    ld [$2928], sp
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    add $00
    inc [hl]
    dec [hl]
    inc c
    call nz, Call_000_0c00
    ret nc

    inc c
    ld a, [hl+]
    dec hl
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    and $00
    ld [hl], $37
    inc c
    db $e4
    nop
    inc c
    ldh a, [$0e]
    inc c
    nop
    nop
    inc c
    ld [bc], a
    db $10
    inc [hl]
    dec [hl]
    inc c
    add d
    nop
    inc c
    db $10
    ld e, $0c
    jr nz, jr_02b_79b4

jr_02b_79b4:
    inc c
    ld [hl+], a
    db $10
    ld [hl], $37
    inc c
    and d
    nop
    inc c
    jr nc, @+$21

    inc bc
    inc l
    dec l
    inc c
    ld b, [hl]
    nop
    jr c, jr_02b_7a00

    inc c
    adc d
    ld [bc], a
    inc c
    inc d
    rrca
    ld bc, $660c
    nop
    ld a, [hl-]
    dec sp
    inc c
    xor d
    ld [bc], a
    inc c
    ld [hl], h
    rra
    ld bc, $860c
    ld [$140c], sp
    rrca
    dec b
    inc c
    xor d
    inc b
    inc c
    inc d
    ld [$0200], sp
    inc b
    jr z, @+$2b

    inc b
    nop
    nop
    inc l
    dec l
    jr nc, @+$33

    jr nc, jr_02b_7a26

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

jr_02b_7a00:
    inc b
    jr nz, jr_02b_7a03

jr_02b_7a03:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc b
    jr nz, jr_02b_7a10

    inc b
    inc d

jr_02b_7a10:
    ld [$0404], sp
    nop
    ld [$0a09], sp
    dec bc
    inc b
    ld [$070f], sp
    ld l, $2f
    jr jr_02b_7a39

    ld a, [de]
    dec de
    inc b
    jr z, @+$11

    add hl, bc

jr_02b_7a26:
    inc [hl]
    dec [hl]
    jr c, jr_02b_7a63

    jr c, jr_02b_7a65

    nop
    ld bc, $0004
    ld [bc], a
    inc b
    ld d, d
    ld c, $36
    scf
    ld a, [hl-]
    dec sp
    ld a, [hl-]

jr_02b_7a39:
    dec sp
    db $10
    ld de, $2004
    ld [bc], a
    inc b
    ld [hl-], a
    ld c, $04
    ld [$0400], sp
    ld a, [bc]
    ld b, $04
    ld d, d
    ld c, $04
    jr z, jr_02b_7a4e

jr_02b_7a4e:
    inc b
    ld a, [hl+]
    ld b, $04
    or d
    rrca
    ld bc, $3938
    inc b
    ret z

    rrca
    dec bc
    ld a, [hl-]
    dec sp
    inc b
    add sp, $0f
    rlca
    jr z, jr_02b_7a8c

jr_02b_7a63:
    ld [bc], a
    inc bc

jr_02b_7a65:
    inc b
    ld b, h
    db $10
    inc b
    adc h
    inc b
    inc b
    ld [de], a
    ld c, $12
    inc de
    inc b
    ld h, h
    db $10
    inc b
    xor h
    inc b
    inc b
    ld [hl-], a
    ld e, $04
    add b
    inc e
    inc b
    inc d
    ld c, $04
    and b
    ld a, [de]
    inc b
    ld [hl], h
    rra
    add hl, sp
    nop
    ld [bc], a
    inc c
    jr z, jr_02b_7ab4

    inc c

jr_02b_7a8c:
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_7ac3

    jr nc, jr_02b_7ac5

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
    jr nz, jr_02b_7aa2

jr_02b_7aa2:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_7aaf

    inc c
    inc d

jr_02b_7aaf:
    ld [$000c], sp
    ld b, $34

jr_02b_7ab4:
    dec [hl]
    ld b, $07
    inc c
    inc c
    ld [bc], a
    inc c
    inc d
    rrca
    inc bc
    ld [hl], $37
    ld d, $17
    inc c

jr_02b_7ac3:
    inc l
    ld [bc], a

jr_02b_7ac5:
    inc c
    inc [hl]
    ld c, $28
    add hl, hl
    inc b
    dec b
    inc c
    ld [$0600], sp
    rlca
    ld [$2409], sp
    dec h
    inc c
    inc d
    ld c, $2a
    dec hl
    inc d
    dec d
    inc c
    jr z, jr_02b_7adf

jr_02b_7adf:
    ld d, $17
    jr jr_02b_7afc

    ld h, $27
    inc c
    inc d
    ld [$2d2c], sp
    ld [$0c09], sp
    sub b
    nop
    inc c
    ld b, $02
    inc [hl]
    dec [hl]
    inc c
    ld a, [bc]
    nop
    inc c
    inc d
    ld [$2f2e], sp

jr_02b_7afc:
    jr @+$1b

    inc c
    or b
    nop
    inc c
    ld h, $02
    ld [hl], $37
    inc c
    ld a, [hl+]
    nop
    inc c
    or h
    ld a, [bc]
    inc c
    adc d
    ld [bc], a
    inc h
    dec h
    inc b
    dec b
    jr c, @+$3b

    inc c
    adc $0f
    ld bc, $aa0c
    ld [bc], a
    ld h, $27
    inc d
    dec d
    ld a, [hl-]
    dec sp
    inc c
    xor $0f
    inc bc
    inc c
    inc c
    db $10
    ld b, $07
    ld a, [bc]
    dec bc
    inc c
    adc $00
    jr c, @+$3b

    inc c
    ld [de], a
    ld e, $0c
    inc l
    db $10
    ld d, $17
    ld a, [de]
    dec de
    inc c
    xor $00
    ld a, [hl-]
    dec sp
    inc c
    or d
    ld a, [bc]
    inc c
    add [hl]
    nop
    jr c, @+$3b

    inc c
    call z, $3002
    ld sp, $0100
    ld [bc], a
    inc bc
    inc c
    ld [de], a
    inc c
    inc c
    ld a, [hl+]
    db $10
    inc c
    db $ec
    ld [bc], a
    ld [hl-], a
    inc sp
    db $10
    ld de, $1312
    inc c
    ld [hl-], a
    ld c, $02
    inc bc
    inc c
    call nz, Call_000_0c14
    ld c, $0f
    inc bc
    ld [de], a
    inc de
    inc c
    db $e4
    inc d
    inc c
    ld l, $0e
    nop
    ld [bc], a
    inc b
    jr z, @+$2b

    inc b
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_7bb2

    jr nc, jr_02b_7bb4

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
    jr nz, jr_02b_7b91

jr_02b_7b91:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc b
    jr nz, jr_02b_7b9e

    inc b
    inc d

jr_02b_7b9e:
    ld [$0004], sp
    rrca
    ld sp, $2d2c
    ld a, [bc]
    dec bc
    jr nc, jr_02b_7bda

    nop
    ld bc, $0004
    ld [bc], a
    inc b
    ld [de], a
    ld c, $2e

jr_02b_7bb2:
    cpl
    ld a, [de]

jr_02b_7bb4:
    dec de
    ld [hl-], a
    inc sp
    db $10
    ld de, $2004
    ld [bc], a
    inc b
    ld [hl], d
    rrca
    ld bc, $0804
    ld [bc], a
    inc l
    dec l
    ld [$0809], sp
    add hl, bc
    inc h
    dec h
    inc b
    sub h
    ld c, $04
    jr z, jr_02b_7bd3

    ld l, $2f

jr_02b_7bd3:
    jr jr_02b_7bee

    jr jr_02b_7bf0

    ld h, $27
    inc b

jr_02b_7bda:
    inc d
    ld [$cc04], sp
    nop
    inc b
    add [hl]
    nop
    jr nc, @+$33

    ld b, $07
    inc b
    inc b
    ld [de], a
    inc b
    jp nc, Jump_000_040a

    db $ec

jr_02b_7bee:
    nop
    inc b

jr_02b_7bf0:
    and [hl]
    nop
    ld [hl-], a
    inc sp
    ld d, $17
    inc b
    inc h
    ld [de], a
    inc b
    ld a, [c]
    inc c
    jr nc, jr_02b_7c2f

    inc [hl]
    dec [hl]
    inc b
    ld [$0400], sp
    ld [$0400], sp
    ld b, h
    db $10
    inc b
    ld [de], a
    inc e
    ld [hl-], a
    inc sp
    ld [hl], $37
    inc b
    jr z, jr_02b_7c13

jr_02b_7c13:
    inc b
    jr z, jr_02b_7c16

jr_02b_7c16:
    inc b
    ld h, h
    db $10
    inc b
    ld a, [c]
    inc c
    inc b
    ld b, h
    db $10
    inc [hl]
    dec [hl]
    nop
    ld bc, $0302
    inc b
    adc d
    ld [de], a
    inc b
    ld [de], a
    ld a, [bc]
    ld l, $2f
    inc b
    ld h, h

jr_02b_7c2f:
    db $10
    ld [hl], $37
    db $10
    ld de, $1312
    inc b
    xor d
    ld [de], a
    inc b
    ld [hl-], a
    inc c
    inc b
    adc h
    inc d
    inc b
    ret z

    ld d, $04
    inc d
    ld a, [bc]
    inc b
    xor h
    inc d
    inc b
    add sp, $16
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
    jr nc, jr_02b_7c8b

    jr nc, jr_02b_7c8d

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
    jr nz, jr_02b_7c6a

jr_02b_7c6a:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02b_7c77

    inc c
    inc d

jr_02b_7c77:
    ld [$000c], sp
    ld [$0706], sp
    ld [$0c09], sp
    inc c
    nop
    inc c
    inc d
    rrca
    dec b
    ld d, $17
    jr @+$1b

    inc c

jr_02b_7c8b:
    inc l
    nop

jr_02b_7c8d:
    inc c
    inc [hl]
    ld c, $28
    add hl, hl
    inc b
    dec b
    inc c
    ld [$3400], sp
    dec [hl]
    inc c
    ld d, b
    rrca
    inc bc
    ld a, [hl+]
    dec hl
    inc d
    dec d
    inc c
    jr z, jr_02b_7ca4

jr_02b_7ca4:
    ld [hl], $37
    inc c
    ld [hl], b
    rrca
    ld bc, $2d2c
    ld [$0a09], sp
    dec bc
    inc c
    adc h
    nop
    inc c
    adc [hl]
    rrca
    inc bc
    ld l, $2f
    jr jr_02b_7cd4

    ld a, [de]
    dec de
    inc c
    xor h
    nop
    inc c
    xor [hl]
    rrca
    dec b
    jr c, jr_02b_7cff

    jr c, jr_02b_7d01

    inc c
    ld [$0c00], sp
    ld a, [bc]
    ld [bc], a
    inc c
    call nc, Call_000_3a0e
    dec sp
    ld a, [hl-]

jr_02b_7cd4:
    dec sp
    inc c
    jr z, jr_02b_7cd8

jr_02b_7cd8:
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    or h
    ld c, $0c
    jp z, Jump_000_0002

    ld bc, $0302
    inc c
    db $10
    rrca
    ld bc, $260c
    nop
    inc c
    db $ec
    nop
    db $10
    ld de, $1312
    inc c
    jr nc, jr_02b_7d05

    ld bc, $040c
    db $10
    inc [hl]
    dec [hl]
    inc c
    ld a, [bc]
    rrca

jr_02b_7cff:
    rlca
    inc c

jr_02b_7d01:
    inc h
    db $10
    ld [hl], $37

jr_02b_7d05:
    inc c
    ld a, [hl+]
    rrca
    add hl, bc
    ld [bc], a
    inc bc
    inc c
    add $10
    inc c
    add b
    inc b
    inc c
    inc d
    ld c, $12
    inc de
    inc c
    and $10
    inc c
    and b
    inc b
    inc c
    inc d
    ld [$0200], sp
    nop
    jr z, jr_02b_7d4d

    nop
    nop
    nop
    inc l
    dec l
    jr nc, jr_02b_7d5c

    jr nc, jr_02b_7d5e

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
    jr nz, jr_02b_7d3b

jr_02b_7d3b:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_02b_7d48

    nop
    inc d

jr_02b_7d48:
    ld [$0000], sp
    rrca
    ld c, l

jr_02b_7d4d:
    nop
    ld h, b
    rrca
    ld c, l
    nop
    add b
    ld [bc], a
    jr z, jr_02b_7d7f

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    nop
    nop

jr_02b_7d5c:
    inc d
    nop

jr_02b_7d5e:
    sub h
    ld c, $2a
    dec hl
    ld [de], a
    inc de
    ld [de], a
    inc de
    nop
    jr nz, jr_02b_7d7d

    nop
    db $f4
    rrca
    ld bc, $4000
    jr jr_02b_7d71

jr_02b_7d71:
    inc d
    rra
    ld bc, $6000
    jr jr_02b_7d78

jr_02b_7d78:
    inc [hl]
    rra
    ld c, l
    nop
    sub h

jr_02b_7d7d:
    rra
    add hl, de

jr_02b_7d7f:
    nop
    ld [bc], a
    ld c, $28
    add hl, hl
    ld c, $00
    nop
    inc l
    dec l
    jr nc, @+$33

    jr nc, @+$33

    inc h
    dec h
    ld c, $00
    ld [bc], a
    rst $38
    ld c, $14
    rlca
    ld a, [hl+]
    dec hl
    ld c, $20
    nop
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    ld c, $20
    ld [bc], a
    ld c, $14
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    ld c, $0a
    nop
    ld c, $40
    nop
    inc h
    dec h
    ld c, $14
    ld [$2f2e], sp
    jr @+$1b

    jr jr_02b_7ddd

    ld a, [de]
    dec de
    ld [hl], $37
    ld c, $2a
    nop
    ld c, $60
    nop
    ld h, $27
    ld c, $34
    ld a, [bc]
    inc [hl]
    dec [hl]
    ld c, $82
    ld [bc], a
    nop
    ld bc, $2d2c
    ld a, [bc]

jr_02b_7ddd:
    dec bc
    jr c, jr_02b_7e19

    ld c, $52
    inc c
    ld [hl], $37
    ld c, $a2
    ld [bc], a
    db $10
    ld de, $2f2e
    ld a, [de]
    dec de
    ld a, [hl-]
    dec sp
    ld c, $72
    rrca
    ld bc, $080e
    nop
    ld b, $07
    ld c, $8e
    nop
    inc [hl]
    dec [hl]
    ld c, $92
    rrca
    ld bc, $280e
    nop
    ld d, $17
    ld c, $ae
    nop
    ld [hl], $37
    ld c, $72
    ld c, $30
    ld sp, $0d0c
    jr nc, jr_02b_7e46

    jr c, jr_02b_7e50

    ld c, $ce

jr_02b_7e19:
    nop
    ld c, $90
    rrca
    ld bc, $3332
    inc e
    dec e
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    ld c, $ee
    nop
    ld c, $b0
    rrca
    ld bc, $0100
    jr z, jr_02b_7e5a

    inc b
    dec b
    jr c, @+$3b

    ld c, $08
    ld [de], a
    ld c, $92
    ld c, $10
    ld de, $2b2a
    inc d
    dec d
    ld a, [hl-]
    dec sp
    ld c, $28
    ld [de], a

jr_02b_7e46:
    ld c, $72
    ld a, [bc]
    jr z, @+$2b

    ld [bc], a
    inc bc
    ld c, $00
    ld [bc], a

jr_02b_7e50:
    inc b
    dec b
    ld c, $08
    nop
    ld c, $44
    db $10
    ld c, $14

jr_02b_7e5a:
    ld a, [bc]
    ld [de], a
    inc de
    ld c, $20
    ld [bc], a
    inc d
    dec d
    ld c, $28
    nop
    ld c, $64
    db $10
    ld c, $74
    ld a, [de]
    ld c, $c0
    ld d, $02
    inc bc
    ld c, $82
    ld [de], a
    ld c, $14
    ld c, $0e
    jr nz, jr_02b_7e7b

    ld [de], a
    inc de

jr_02b_7e7b:
    ld c, $a2
    ld [de], a
    ld c, $14
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
