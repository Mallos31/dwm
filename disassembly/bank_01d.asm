; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01d", ROMX[$4000], BANK[$1d]

    dec e
    inc [hl]
    nop
    ld e, c
    ld b, b
    ld c, [hl]
    ld bc, $43ae
    ld l, b
    ld [bc], a
    ld l, e
    ld b, a
    inc [hl]
    nop
    ld e, c
    ld c, h
    ld c, [hl]
    ld bc, $4e30

Jump_01d_4015:
    ld l, b
    ld [bc], a
    add hl, bc
    ld d, b
    inc [hl]
    nop
    ld c, l
    ld d, d
    ld c, [hl]
    ld bc, $54ce
    ld l, b
    ld [bc], a
    rst $00
    ld d, a
    add d
    inc bc
    ld a, b
    ld e, d
    inc [hl]
    nop
    rst $18
    ld e, d
    ld c, [hl]
    ld bc, $5f0c
    ld l, b
    ld [bc], a
    xor c
    ld h, d
    inc [hl]
    nop
    jp hl


    ld h, l
    ld c, [hl]
    ld bc, $66b6
    ld l, b
    ld [bc], a
    ld a, c
    ld h, a
    inc [hl]
    nop
    and b
    ld l, b
    ld c, [hl]
    ld bc, $6ac9
    ld l, b
    ld [bc], a
    ret c

    ld l, h
    inc [hl]
    nop
    and $6e
    ld c, [hl]
    ld bc, $7185
    ld l, b
    ld [bc], a
    ld a, $75
    ld [$0701], sp
    nop
    db $fd
    cp $a0
    add hl, bc
    and e
    ld [bc], a
    call nz, Call_000_2420
    inc bc
    daa
    inc bc
    cp a
    db $fc
    ld b, $00
    dec h
    inc bc
    ld [hl+], a
    inc bc
    or e
    db $fc
    ld a, [bc]
    nop
    dec h
    inc bc
    add hl, hl
    inc bc
    cp e
    db $fc
    ld c, $00
    and b
    ld [$0320], sp
    dec h
    inc bc
    or a
    db $fc
    inc de
    nop
    ld [hl+], a
    inc bc
    daa
    inc bc
    or e
    db $fc
    rla
    nop
    ld [hl+], a
    inc bc
    daa
    inc bc
    dec hl
    inc bc
    daa
    inc bc
    ld [hl+], a
    inc bc
    daa
    inc bc
    ld [hl+], a
    inc bc
    daa
    inc bc
    ld [hl+], a
    inc bc
    daa
    inc bc
    or a
    db $fc
    inc hl
    nop
    ld hl, $2403
    inc bc
    or a
    db $fc
    daa
    nop
    dec h
    inc bc
    add hl, hl
    inc bc
    or a
    db $fc
    dec hl
    nop
    dec h
    inc bc
    dec hl
    inc bc
    or a
    db $fc
    cpl
    nop
    daa
    inc bc
    dec hl
    inc bc
    or a
    db $fc
    inc sp
    nop
    daa
    inc bc
    ld a, [hl+]
    inc bc
    or a
    db $fc
    scf
    nop
    add hl, hl
    inc bc
    jr nc, jr_01d_40d6

    or a
    db $fc
    dec sp

jr_01d_40d6:
    nop
    add hl, hl
    inc bc
    dec hl
    inc bc
    or a
    db $fc
    ccf
    nop
    jr z, jr_01d_40e4

    dec hl
    inc bc
    or a

jr_01d_40e4:
    db $fc
    ld b, e
    nop
    ld sp, $2903
    inc bc
    inc h
    inc bc
    add hl, hl
    inc bc
    or e
    db $fc
    ld b, a
    nop
    and d
    ld bc, $02a3
    and b
    rlca
    call nz, Call_000_2518
    inc bc
    add hl, hl
    inc bc
    jr nc, jr_01d_4104

    add hl, hl
    inc bc
    or e

jr_01d_4104:
    db $fc
    ld d, c
    nop
    dec h
    inc bc
    daa
    inc bc
    dec hl
    inc bc
    daa
    inc bc
    or e
    db $fc
    ld d, a
    nop
    inc h
    inc bc
    daa
    inc bc
    dec hl
    inc bc
    daa
    inc bc
    or e
    db $fc
    ld e, l
    nop
    inc h
    inc bc
    daa
    inc bc
    ld a, [hl+]
    inc bc
    daa
    inc bc
    or c
    db $fc
    ld h, e
    nop
    call nz, Call_000_2410
    inc bc
    daa
    inc bc
    ld [hl+], a
    inc bc
    inc h
    inc bc
    jr nz, jr_01d_413a

    inc h
    inc bc
    ld a, [de]

jr_01d_413a:
    inc bc
    inc h
    inc bc
    call nz, $1918
    inc bc
    jr nz, @+$05

    inc h
    inc bc
    jr nz, jr_01d_414a

    or e
    db $fc
    ld [hl], e

jr_01d_414a:
    nop
    jr jr_01d_4150

    jr nz, @+$05

    inc h

jr_01d_4150:
    inc bc
    jr nz, jr_01d_4156

    inc h
    inc bc
    dec h

jr_01d_4156:
    inc bc
    jr z, jr_01d_415c

    dec h
    inc bc
    inc h

jr_01d_415c:
    inc bc
    jr nz, @+$05

    inc h
    inc bc
    jr z, jr_01d_4166

    or c
    db $fc
    add c

jr_01d_4166:
    nop
    daa
    inc bc
    dec hl
    inc bc
    ld [hl-], a
    inc bc
    dec hl
    inc bc
    or e
    db $fc
    add a
    nop
    ld sp, $2a03
    inc bc
    daa
    inc bc
    inc h
    inc bc
    or e
    db $fc
    adc l
    nop
    dec h
    inc bc
    add hl, hl
    inc bc
    jr nc, jr_01d_4188

    add hl, hl
    inc bc
    or e

jr_01d_4188:
    db $fc
    sub e
    nop
    dec h
    inc bc
    daa
    inc bc
    dec hl

jr_01d_4190:
    inc bc
    daa
    inc bc
    or e
    db $fc
    sbc c
    nop
    inc h

jr_01d_4198:
    inc bc
    daa
    inc bc
    dec hl
    inc bc
    daa
    inc bc
    or e
    db $fc
    sbc a
    nop
    inc h
    inc bc
    daa
    inc bc
    ld a, [hl+]
    inc bc
    daa
    inc bc
    or c
    db $fc
    and l
    nop
    call nz, Call_000_2410
    inc bc
    daa
    inc bc
    ld [hl+], a
    inc bc
    inc h
    inc bc
    jr nz, jr_01d_41be

    inc h
    inc bc
    ld a, [de]

jr_01d_41be:
    inc bc
    inc h
    inc bc
    call nz, $1918
    inc bc
    jr nz, @+$05

    inc h
    inc bc
    jr nz, jr_01d_41ce

    or e
    db $fc
    or l

jr_01d_41ce:
    nop
    add hl, de
    inc bc
    jr nz, @+$05

    dec h
    inc bc
    jr nz, jr_01d_41da

    or e
    db $fc
    cp e

jr_01d_41da:
    nop
    and d
    ld [bc], a
    pop bc
    ld a, a
    and b
    ld a, [bc]
    rra
    inc c
    add hl, hl
    inc c
    dec h
    inc c
    daa
    inc c
    ret nz

    cp $24
    inc c
    pop bc
    jr nc, jr_01d_4190

    inc bc
    inc h
    inc c
    rra
    jr jr_01d_4198

    ld [bc], a
    and b
    dec bc
    and e
    rrca
    pop bc
    jr nc, jr_01d_421e

    ld b, $23
    ld b, $a0
    dec b
    inc hl
    ld b, $a0
    ld a, [bc]
    jr nz, @+$08

    or c
    db $fc
    jp nc, Jump_000_2200

    ld b, $25
    ld b, $a0
    dec b
    dec h
    ld b, $a0
    ld a, [bc]
    ld [hl+], a
    ld b, $b1
    db $fc
    jp c, Jump_000_2200

jr_01d_421e:
    ld b, $27
    ld b, $a0
    dec b
    daa
    ld b, $a0
    ld a, [bc]
    ld [hl+], a
    ld b, $b1
    db $fc
    ld [c], a
    nop
    ld hl, $2706
    ld b, $a0
    dec b
    daa
    ld b, $a0
    ld a, [bc]
    ld hl, $b106
    db $fc
    ld [$2000], a
    ld b, $23
    ld b, $a0
    dec b
    inc hl
    ld b, $a0
    ld a, [bc]
    jr nz, jr_01d_424f

    jr nz, jr_01d_4251

    jr nz, jr_01d_4253

    and b

jr_01d_424e:
    dec b

jr_01d_424f:
    jr nz, @+$08

jr_01d_4251:
    and b
    ld a, [bc]

jr_01d_4253:
    inc hl
    ld b, $20
    ld b, $25
    ld b, $a0
    dec b
    dec h
    ld b, $a0

jr_01d_425e:
    ld a, [bc]
    ld [hl+], a
    ld b, $20
    ld b, $22
    ld b, $a0
    dec b
    ld [hl+], a
    ld b, $a0
    ld a, [bc]
    dec h
    ld b, $25
    ld b, $2b
    ld b, $a0
    dec b
    dec hl
    ld b, $a0
    ld a, [bc]
    daa

jr_01d_4278:
    ld b, $b1
    db $fc
    ld a, [bc]
    ld bc, $0624
    ld a, [hl+]
    ld b, $a0
    dec b
    ld a, [hl+]

jr_01d_4284:
    ld b, $a0
    ld a, [bc]
    daa
    ld b, $b1
    db $fc
    ld [de], a
    ld bc, $06a3
    ret nz

    cp $28
    jr @-$3d

    ld d, b

jr_01d_4295:
    jr z, jr_01d_42af

    pop bc
    ld l, a
    daa
    jr jr_01d_42c2

    jr jr_01d_425e

    cp $a0
    inc c
    dec h
    jr @-$3d

    ld d, b
    dec h
    jr @-$3d

    ld l, a
    inc h
    jr @+$25

    jr jr_01d_424e

    ld a, [bc]

jr_01d_42af:
    ret nz

    cp $22
    jr @-$3d

    jr nc, jr_01d_42d8

    jr jr_01d_4278

    cp $a0
    ld [$0ba0], sp
    ld [hl+], a
    jr @-$3d

    ld d, b
    ld [hl+], a

jr_01d_42c2:
    jr jr_01d_4284

    cp $a0
    ld a, [bc]
    ld hl, $c118
    ld d, b
    ld hl, $c018
    cp $a0
    dec bc
    ld [hl+], a
    jr jr_01d_4295

    ld d, b
    ld [hl+], a
    jr jr_01d_4278

jr_01d_42d8:
    dec c
    ret nz

    cp $a3
    ld [bc], a
    inc d
    ld b, $17
    ld b, $20
    ld b, $17
    ld b, $b1
    db $fc
    ld b, d
    ld bc, $0616
    add hl, de
    ld b, $22
    ld b, $19
    ld b, $b1
    db $fc
    ld c, b
    ld bc, $0615
    jr jr_01d_42ff

    ld [hl+], a
    ld b, $18
    ld b, $b1
    db $fc

jr_01d_42ff:
    ld c, [hl]
    ld bc, $0614
    rla
    ld b, $20
    ld b, $17
    ld b, $b1
    db $fc
    ld d, h

jr_01d_430c:
    ld bc, $0619
    jr nz, jr_01d_4317

jr_01d_4311:
    dec h
    ld b, $20
    ld b, $b1
    db $fc

jr_01d_4317:
    ld e, d
    ld bc, $061b
    ld [hl+], a

jr_01d_431c:
    ld b, $27
    ld b, $22
    ld b, $b1

jr_01d_4322:
    db $fc
    ld h, b

jr_01d_4324:
    ld bc, $061a
    ld hl, $2706
    ld b, $21

jr_01d_432c:
    ld b, $b1
    db $fc
    ld h, [hl]
    ld bc, $0620
    ld [hl+], a

jr_01d_4334:
    ld b, $20
    ld b, $22
    ld b, $1b
    ld b, $22
    ld b, $25
    ld b, $22
    ld b, $a0
    ld c, $a3
    ld b, $27
    jr @-$3d

    ld b, b
    daa
    jr jr_01d_430c

    cp $26
    jr jr_01d_4311

    ld b, b
    ld h, $18
    ret nz

    cp $25
    jr @-$3d

    ld b, b
    dec h
    jr jr_01d_431c

    cp $24
    jr @-$3d

    ld b, b
    inc h
    jr jr_01d_4324

    cp $23
    jr @-$3d

    ld b, b
    inc hl
    jr jr_01d_432c

    cp $22
    jr @-$3d

    ld b, b
    ld [hl+], a
    jr jr_01d_4334

    cp $21
    jr @-$3d

    ld b, b
    ld hl, $c118
    ld a, a
    jr nz, jr_01d_4397

    dec de
    jr jr_01d_4322

    inc c
    and d
    ld bc, $30c1
    and e
    ld [bc], a
    rra
    inc c

jr_01d_438b:
    inc d
    inc c
    dec de
    inc c
    jr nz, jr_01d_439d

    ld [hl+], a
    inc c
    inc h
    inc c
    daa
    inc c

jr_01d_4397:
    dec hl
    inc c
    rra
    inc c
    inc d
    inc c

jr_01d_439d:
    dec de
    inc c
    jr nz, jr_01d_43ad

    ld [hl+], a

jr_01d_43a2:
    inc c
    inc h
    inc c
    daa
    inc c
    and b
    ld a, [bc]
    dec hl
    inc c
    or b
    nop

jr_01d_43ad:
    rst $38
    ld [$0e00], sp
    nop
    db $fd
    cp $a2
    nop
    and b
    rrca
    and e
    ld [$171f], sp
    jp Jump_000_2b5f


    dec c
    jp Jump_000_303f


    inc c
    ld [hl-], a
    inc c
    jp Jump_000_3432


    inc c
    and b
    dec c
    dec hl
    inc c
    and b
    rrca

jr_01d_43d0:
    jr nc, @+$0e

    dec hl
    inc c
    and b
    ld c, $29
    inc c
    and b
    rrca
    jp Jump_000_3740


    jr nc, jr_01d_43a2

    jr nc, @-$5e

    dec c
    inc [hl]
    jr @-$5e

    rrca
    jp Jump_000_3060


    jr jr_01d_438b

    ld c, $c3
    ld [hl-], a
    add hl, hl
    inc c
    jr nc, @+$0e

    jp $a040


    dec c
    ld [hl-], a
    ld a, [hl+]
    and b
    ld b, $c1
    ccf

jr_01d_43fc:
    ld [hl-], a
    ld b, $a0
    rrca

jr_01d_4400:
    jp $3230


    jr jr_01d_4430

    inc c
    and b
    ld c, $32
    inc c
    and b
    rrca
    inc [hl]
    jr nc, jr_01d_43d0

    ld b, b
    and b
    ld [$0c34], sp
    and b

Jump_01d_4415:
    ld c, $c3
    ld h, b
    rra
    dec bc
    dec [hl]
    dec c
    and b
    rrca
    jp Jump_000_3740


    inc c
    jp Jump_000_3935


    inc c
    dec sp
    inc c
    scf
    inc c
    add hl, sp
    inc c
    scf
    inc c
    and b
    inc c

jr_01d_4430:
    inc [hl]
    inc c
    jp $a030


    rrca
    ld b, d
    jr nc, jr_01d_43fc

    ld d, b
    ld a, [hl-]
    jr jr_01d_4400

    jr nc, jr_01d_4478

    jr @+$3d

    inc c
    ld b, b
    inc c
    ld b, d

jr_01d_4445:
    ld a, [hl+]
    pop bc
    ccf
    and b
    ld [$0542], sp
    and b
    ld c, $c3
    jr nc, jr_01d_448c

    add hl, de
    and b
    rrca
    ld b, b
    inc c
    ld b, d
    inc c
    ld b, h
    ld a, [hl+]
    pop bc
    ld b, b
    and b
    ld [$0644], sp
    and d
    nop
    and b
    dec c
    and e
    inc b
    jp $1f60


    inc c
    dec [hl]
    ld b, $a0
    rrca
    jp $3720


    ld b, $a0
    ld c, $35
    ld b, $a0
    rrca

jr_01d_4478:
    scf
    ld b, $a3
    cp $35
    ld [de], a
    and b
    add hl, bc
    pop bc
    jr nc, jr_01d_44b8

    ld b, $a0
    rrca
    jp $a330


    inc bc
    dec [hl]
    inc c

jr_01d_448c:
    inc [hl]
    inc c
    and b
    ld a, [bc]
    ld [hl-], a
    inc c
    and e
    cp $a0
    inc bc
    pop bc
    jr nc, jr_01d_44cb

    inc c
    and b
    dec c
    jp $a360


    inc bc
    inc [hl]
    ld b, $c3
    jr nz, jr_01d_4445

    rrca
    dec [hl]
    ld b, $a0
    ld c, $34
    ld b, $a0
    rrca
    dec [hl]
    ld b, $a3
    cp $34
    ld [de], a
    pop bc
    ld a, a
    and b
    add hl, bc

jr_01d_44b8:
    inc [hl]

jr_01d_44b9:
    ld b, $a0
    rrca
    jp $a330


jr_01d_44bf:
    inc bc
    ld [hl-], a
    inc c
    ld a, [hl+]
    inc c
    and b
    ld a, [bc]
    daa
    inc c
    and e
    cp $c1

jr_01d_44cb:
    ld a, a
    and b
    dec b
    daa
    inc c
    call nz, $a020
    inc c
    add hl, hl
    add hl, bc
    and b
    ld b, $c1
    jr nz, @+$2b

    inc bc
    and b
    rrca
    and e
    inc bc
    jp Jump_000_292f


    ld [$082b], sp
    jr nc, jr_01d_44f0

    jp $3230


    inc c
    inc [hl]
    inc c
    jr nc, jr_01d_44fc

jr_01d_44f0:
    ld [hl-], a
    inc c
    inc [hl]
    ld d, h
    jp $372f


    inc c
    pop bc
    ld a, a
    and b
    rlca

jr_01d_44fc:
    scf
    inc c
    and b
    dec c
    jp $3560


    ld b, $a0
    rrca
    jp $3720


    ld b, $a0
    ld c, $35
    ld b, $a0
    rrca
    scf
    ld b, $a3
    cp $35
    ld [de], a
    pop bc
    jr nc, jr_01d_44b9

    add hl, bc
    dec [hl]
    ld b, $c3
    jr nc, jr_01d_44bf

    rrca
    and e
    ld [bc], a
    dec [hl]
    inc c
    inc [hl]
    inc c
    and b
    ld a, [bc]
    ld [hl-], a
    inc c
    and b
    inc bc
    pop bc
    jr nc, @-$5b

    cp $32

jr_01d_4531:
    inc c
    and b
    dec c
    jp $a360


    inc b
    inc [hl]
    ld b, $a0
    rrca
    jp Jump_000_3520


    ld b, $a0
    ld c, $34
    ld b, $a0
    rrca
    dec [hl]
    ld b, $a3
    cp $34
    ld [de], a
    and b
    add hl, bc
    pop bc
    ld d, b
    inc [hl]
    ld b, $c3
    jr nc, @-$5e

    rrca
    and e
    ld [bc], a
    ld [hl-], a
    inc c
    ld a, [hl+]
    inc c
    and b
    ld a, [bc]
    daa
    inc c
    and e
    cp $c1
    ld a, a
    and b
    inc bc
    daa
    inc c
    and b
    inc c
    and e
    ld [bc], a
    call nz, Call_000_2920
    add hl, bc
    and b
    ld b, $c1
    jr nz, jr_01d_459e

    inc bc
    jp $a02f


    rrca
    add hl, hl
    ld [$082b], sp
    jr nc, jr_01d_4588

    jp $a330


    inc b
    ld [hl-], a
    inc c
    inc [hl]
    inc c

jr_01d_4588:
    jr nc, jr_01d_4596

    ld [hl-], a
    inc c
    jr nc, jr_01d_45be

    pop bc
    jr nc, jr_01d_4531

    add hl, bc
    and e
    nop
    jr nc, jr_01d_45a2

jr_01d_4596:
    rra
    inc c
    and b
    rrca
    pop bc
    ld h, l
    and e
    ld [bc], a

jr_01d_459e:
    and d
    ld [bc], a
    jr nc, jr_01d_45ba

jr_01d_45a2:
    and b
    dec c
    ret nz

    cp $a3
    dec b
    jr nc, jr_01d_45e6

    and e
    rrca
    scf
    inc c
    dec [hl]
    inc c
    ld [hl-], a
    inc c
    jr nc, jr_01d_45ba

    ld [hl-], a
    ld b, $a3
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]

jr_01d_45ba:
    and b
    add hl, bc
    pop bc
    ld h, b

jr_01d_45be:
    and e
    nop
    ld a, [hl+]
    ld b, $a0
    ld c, $a3
    rrca
    ret nz

    cp $30
    inc c
    ld a, [hl+]
    inc c
    pop bc
    ld d, b
    daa
    inc c
    ret nz

    cp $27

jr_01d_45d3:
    inc c
    jr z, jr_01d_45e2

    inc hl
    inc c
    dec h
    inc c
    daa
    inc c
    jr z, jr_01d_45ea

    dec hl
    inc c
    jr nc, jr_01d_45ee

jr_01d_45e2:
    ld [hl-], a
    inc c
    inc sp
    inc c

jr_01d_45e6:
    dec [hl]
    inc c
    and e
    dec b

jr_01d_45ea:
    scf
    ld [de], a
    and e
    nop

jr_01d_45ee:
    and b
    rlca
    pop bc
    jr nc, jr_01d_462a

    ld b, $a3
    rrca
    and b
    ld c, $c1
    ld d, b
    jr c, @+$0e

    ret nz

    cp $38
    inc c
    scf
    inc c
    and e
    dec b
    and b
    dec b
    pop bc
    jr nc, @+$39

    inc c
    and b
    dec c
    ret nz

    cp $c1
    ld a, a
    ld b, b
    ld b, $3a
    ld b, $38

Jump_01d_4615:
    ld b, $37
    ld b, $35
    ld b, $33
    ld b, $32
    ld b, $30
    ld b, $c0
    cp $40
    inc c
    and e
    nop
    pop bc
    ld h, b
    ld b, b
    inc c

jr_01d_462a:
    ret nz

    cp $a3
    ld b, $3a
    inc c
    pop bc
    jr nc, jr_01d_45d3

    dec b
    and e
    nop
    ld a, [hl-]
    inc c
    pop bc
    ld a, a
    and b
    inc c
    and e
    ld b, $38
    ld b, $37
    ld b, $35
    ld b, $33
    ld b, $32
    ld b, $30
    ld b, $2a
    ld b, $28
    ld b, $c0
    cp $30
    inc c
    pop bc
    ld h, b
    and e
    nop
    jr nc, jr_01d_4664

    ret nz

    cp $a3
    ld b, $28
    inc c
    and b
    dec b
    pop bc
    ld d, b
    jr z, jr_01d_4670

jr_01d_4664:
    and d
    ld bc, $30c1
    and b
    inc c
    daa
    inc c
    and b
    dec c
    scf
    inc c

jr_01d_4670:
    and b
    inc c
    daa
    inc c
    and b
    inc bc
    daa
    inc c
    and b
    dec c
    scf
    inc c
    and b
    inc bc
    scf
    inc c
    and b
    dec bc
    daa
    inc c
    and b

jr_01d_4685:
    inc bc
    daa
    inc c
    and b
    ld a, [bc]
    daa
    inc c

jr_01d_468c:
    and b
    dec bc
    scf
    inc c
    and b
    ld a, [bc]
    daa

jr_01d_4693:
    inc c
    and b
    inc bc

jr_01d_4696:
    daa
    inc c
    and b
    dec c
    scf
    inc c
    and b
    inc bc
    scf
    inc c

jr_01d_46a0:
    and b
    ld a, [bc]
    daa
    inc c
    and b
    inc bc
    daa
    inc c
    and b
    rrca

jr_01d_46aa:
    call nz, $a220
    nop
    and e
    inc bc

jr_01d_46b0:
    inc h
    add hl, bc
    and b
    ld b, $c1
    jr nz, jr_01d_46db

    inc bc
    jp $a030


    rrca
    inc h
    ld [$0825], sp

jr_01d_46c0:
    daa
    ld [$0c34], sp
    jp $3240


    jr jr_01d_468c

    jr nc, @+$2b

    inc c
    inc [hl]
    inc c
    jp $3240


    jr jr_01d_4696

    jr nc, @+$2a

    inc c
    inc [hl]
    inc c
    and e
    inc bc
    ld [hl-], a

jr_01d_46db:
    jr jr_01d_46a0

    jr nc, @+$29

    inc c
    and e
    nop
    pop bc
    jr nc, jr_01d_4685

    rlca
    daa
    inc c
    and b
    rrca
    and e
    inc bc
    call nz, Call_000_2920
    add hl, bc
    pop bc
    jr nz, jr_01d_4693

    ld b, $29
    inc bc
    and b
    rrca
    jp Jump_000_2930


    ld [$082b], sp
    jr nc, jr_01d_4708

    scf
    inc c
    dec [hl]
    ld [de], a
    pop bc
    jr nc, jr_01d_46aa

    nop

jr_01d_4708:
    dec [hl]
    ld b, $c3
    jr nc, jr_01d_46b0

    inc bc
    ld [hl-], a
    inc c
    scf
    inc c
    dec [hl]
    ld [de], a
    and e
    nop
    pop bc
    jr nc, jr_01d_474e

jr_01d_4719:
    ld b, $c3
    jr nc, jr_01d_46c0

    inc bc
    scf
    inc c
    jr c, @+$1a

    add hl, sp
    inc c
    dec sp
    inc c
    and e
    ld b, $c3
    ld [hl-], a
    ld b, d
    inc c
    ld b, b
    inc c
    dec sp
    inc c
    ld b, b
    inc c
    or d
    db $fc
    cp [hl]
    ld bc, $0c3b
    jp Jump_000_394f


    jr @+$39

    inc c
    jp $3932


    inc c
    call nz, $3739
    inc c
    jp $372f


    inc c
    jp Jump_000_3532


    inc c

jr_01d_474e:
    or d
    db $fc
    ret


    ld bc, $0c35
    jp Jump_000_344f


    jr jr_01d_478b

    inc c
    jp Jump_000_3432


    ld l, h
    and b
    ld [$00a3], sp
    pop bc
    ld a, a
    inc [hl]
    inc h
    rra
    jr nc, jr_01d_4719

    nop
    rst $38
    ld [$0410], sp
    inc bc
    cp $fe
    and e
    ld bc, $ffa2
    and c
    inc bc
    and b
    ld [bc], a
    add hl, de
    ld b, $a2
    dec d
    and c
    add hl, bc
    and b
    inc b
    jr nc, @+$05

    inc [hl]
    inc bc
    jr nc, @+$05

    inc [hl]
    inc bc
    jr nc, jr_01d_478e

jr_01d_478b:
    inc [hl]
    inc bc
    add hl, hl

jr_01d_478e:
    inc bc
    inc [hl]
    inc bc
    jr nc, @+$05

    inc [hl]
    inc bc
    jr nc, @+$05

    inc [hl]
    inc bc
    jr nc, jr_01d_479e

    inc [hl]
    inc bc
    or c

jr_01d_479e:
    db $fc
    inc b
    nop
    and d
    rst $38
    and c
    ld [bc], a
    and b
    ld [bc], a
    ld [hl+], a
    ld b, $a2
    db $10
    and c
    inc bc
    and b
    inc b
    jr nc, jr_01d_47b4

    add hl, hl
    inc bc
    or d

jr_01d_47b4:
    db $fc
    ld [hl+], a
    nop
    ld [hl-], a
    inc bc
    dec [hl]
    inc bc
    ld [hl-], a
    inc bc
    jr nc, jr_01d_47c2

    ld [hl-], a
    inc bc
    dec [hl]

jr_01d_47c2:
    inc bc
    ld [hl-], a
    inc bc
    jr nc, jr_01d_47ca

    and d
    rst $38
    and c

jr_01d_47ca:
    ld [bc], a
    and b
    ld [bc], a
    ld [hl+], a
    ld b, $a2
    db $10
    and c
    inc bc
    and b
    inc b
    ld [hl-], a
    inc bc
    jr nc, jr_01d_47dc

    or d
    db $fc
    dec [hl]

jr_01d_47dc:
    nop
    ld [hl-], a
    inc bc
    dec [hl]
    inc bc
    ld [hl-], a
    inc bc
    jr nc, jr_01d_47e8

    ld [hl-], a
    inc bc
    dec [hl]

jr_01d_47e8:
    inc bc
    ld [hl-], a
    inc bc
    jr nc, jr_01d_47f0

    and d
    rst $38
    and c

jr_01d_47f0:
    ld [bc], a
    and b
    ld [bc], a
    rla
    ld b, $a2
    db $10
    and c
    inc bc
    and b
    inc b
    add hl, hl
    inc bc
    jr nc, jr_01d_4802

    or d
    db $fc
    ld c, b

jr_01d_4802:
    nop
    daa
    inc bc
    jr nc, @+$05

    add hl, hl
    inc bc
    jr nc, @+$05

    add hl, hl
    inc bc
    jr nc, @+$05

    add hl, hl
    inc bc
    jr nc, jr_01d_4816

    and d
    rst $38
    and c

jr_01d_4816:
    ld [bc], a
    and b
    ld [bc], a
    rla
    ld b, $a2
    db $10
    and c
    inc bc
    and b
    inc b
    dec hl
    inc bc
    ld [hl-], a
    inc bc
    or e
    db $fc
    ld e, e
    nop
    scf
    inc bc
    ld [hl-], a
    inc bc
    dec hl
    inc bc
    ld [hl-], a
    inc bc
    dec hl
    inc bc
    ld [hl-], a
    inc bc
    and d
    rst $38
    and c
    ld [bc], a
    and b
    ld [bc], a
    inc d
    ld b, $a2
    db $10
    and c
    inc bc
    and b
    inc b
    dec hl
    inc bc
    ld [hl-], a
    inc bc
    or d
    db $fc
    ld l, h
    nop
    dec hl
    inc bc
    inc [hl]
    inc bc
    or e
    db $fc
    ld [hl], b
    nop
    and d
    rst $38
    and c
    ld [bc], a
    and b
    ld [bc], a
    add hl, de
    ld b, $a2
    db $10
    and c
    inc bc
    and b
    inc b
    add hl, hl
    inc bc
    ld sp, $b603
    db $fc
    ld a, e
    nop
    cp $fe
    db $fd
    cp $a2
    rst $38
    and c
    ld [bc], a
    and b
    ld [bc], a
    ld [hl+], a
    ld b, $a2
    db $10
    and c
    inc bc
    and b
    inc b
    ld [hl-], a
    inc bc
    jr nc, jr_01d_4882

    or d
    db $fc
    adc b

jr_01d_4882:
    nop
    or c
    nop
    and d
    rst $38
    and c
    ld [bc], a
    and b
    ld [bc], a
    rla
    ld b, $a2
    db $10
    and c
    inc bc
    and b
    inc b
    ld [hl-], a
    inc bc
    scf
    inc bc
    or [hl]
    db $fc
    sub h
    nop
    and d
    rst $38
    and c
    ld [bc], a
    and b
    ld [bc], a
    jr nz, jr_01d_48a9

    and d
    db $10
    and c
    inc bc
    and b
    inc b

jr_01d_48a9:
    inc [hl]
    inc bc
    scf
    inc bc
    or d
    db $fc
    sbc a
    nop
    jr nc, jr_01d_48b6

    scf
    inc bc
    inc [hl]

jr_01d_48b6:
    inc bc
    scf
    inc bc
    jr nc, jr_01d_48be

    scf
    inc bc
    inc [hl]

jr_01d_48be:
    inc bc
    scf
    inc bc
    and d
    rst $38
    and c
    ld [bc], a
    and b
    ld [bc], a
    inc h
    ld b, $a2
    db $10
    and c
    inc bc
    and b
    inc b
    inc [hl]
    inc bc
    scf
    inc bc
    inc [hl]
    inc bc
    ld [hl-], a
    inc bc
    inc [hl]
    inc bc
    scf
    inc bc
    or d
    db $fc
    or h
    nop
    and d
    rst $38
    and c
    ld [bc], a
    and b
    ld [bc], a
    dec h
    ld b, $a2
    db $10
    and c
    inc bc
    and b
    inc b
    dec [hl]
    inc bc
    inc [hl]
    inc bc
    or [hl]
    db $fc
    pop bc
    nop
    and d
    rst $38
    and c
    ld [bc], a
    and b
    ld [bc], a
    dec de
    ld b, $a2
    db $10
    and c
    inc bc
    and b
    inc b
    dec [hl]
    inc bc
    ld [hl-], a
    inc bc
    or [hl]
    db $fc
    call z, $a200
    rst $38
    and c
    ld [bc], a
    and b
    ld [bc], a
    inc d
    ld b, $a2
    db $10
    and c
    inc bc
    and b
    inc b
    inc [hl]
    inc bc
    ld [hl-], a
    inc bc
    or d
    db $fc
    rst $10
    nop
    and d
    rst $38
    and c
    ld [bc], a
    and b
    ld [bc], a
    inc h
    inc bc
    and d
    db $10
    and c
    inc bc
    and b
    inc b
    ld [hl-], a
    inc bc
    inc [hl]
    inc bc
    ld [hl-], a
    inc bc
    inc [hl]
    inc bc
    ld [hl-], a
    inc bc
    inc [hl]
    inc bc
    ld [hl-], a
    inc bc
    and d
    rst $38
    and c
    ld [bc], a
    and b
    ld [bc], a
    add hl, de
    ld b, $a2
    db $10
    and c
    inc bc
    and b
    inc b
    ld sp, $3403
    inc bc
    add hl, sp
    inc bc
    inc [hl]
    inc bc
    ld sp, $3403
    inc bc
    add hl, hl
    inc bc
    inc [hl]
    inc bc
    ld sp, $3403
    inc bc
    add hl, sp
    inc bc
    inc [hl]
    inc bc
    ld sp, $3403
    inc bc
    and d
    rst $38
    and b
    ld [bc], a
    and c
    rlca
    and e
    ld bc, $02a1
    ld [hl+], a
    inc c
    and c
    inc bc
    ld [hl-], a
    ld b, $a0
    inc b
    ld [hl-], a
    add hl, bc
    and b
    ld b, $32
    add hl, bc
    and b
    ld [bc], a
    ld [hl-], a
    inc c
    and c
    ld [bc], a
    rla
    inc c
    and c
    inc bc
    daa
    ld b, $a0
    inc b
    daa
    add hl, bc
    and b
    ld b, $27
    add hl, bc
    and b
    ld [bc], a
    daa
    inc c
    and c
    ld [bc], a
    jr nz, jr_01d_49a7

    and c
    inc bc
    jr nc, @+$08

    and b
    inc b
    jr nc, jr_01d_49ac

    and b
    ld b, $30
    add hl, bc

jr_01d_49a7:
    and b
    ld [bc], a
    jr nc, jr_01d_49b7

    and c

jr_01d_49ac:
    ld [bc], a
    jr nz, jr_01d_49bb

    and c
    inc bc
    jr nc, @+$08

    and b
    inc b
    jr nc, jr_01d_49c0

jr_01d_49b7:
    and b
    ld b, $30
    add hl, bc

jr_01d_49bb:
    and b
    ld [bc], a
    daa
    inc c
    and b

jr_01d_49c0:
    ld [bc], a
    and c
    ld [bc], a
    dec d
    inc c
    and c
    inc bc
    dec h
    ld b, $a0
    inc b
    dec h
    ld [de], a
    and b
    ld [bc], a
    dec h
    inc c
    or c
    db $fc
    ld a, [hl+]
    ld bc, $02a1
    inc d
    inc c
    and c
    inc bc
    inc h
    ld b, $a0
    inc b
    inc h
    ld [de], a
    and b
    ld [bc], a
    inc h
    inc c
    and c
    ld [bc], a
    add hl, de
    inc c
    and c
    inc bc
    add hl, hl
    ld b, $a0
    inc b
    add hl, hl
    ld [de], a
    and b
    ld [bc], a
    add hl, de
    inc c
    and c
    ld [bc], a
    ld [hl+], a
    inc c
    and c
    inc bc
    ld [hl-], a
    ld b, $a0
    inc b
    ld [hl-], a
    add hl, bc
    and b
    ld b, $32
    add hl, bc
    and b
    ld [bc], a
    ld [hl-], a
    inc c
    and c
    ld [bc], a
    rla
    inc c
    and c
    inc bc
    daa
    ld b, $a0
    inc b
    daa
    add hl, bc
    and b
    ld b, $27
    add hl, bc
    and b
    ld [bc], a
    daa
    inc c
    and c
    ld [bc], a
    jr nz, jr_01d_4a2d

    and c
    inc bc
    jr nc, @+$08

    and b
    inc b
    jr nc, jr_01d_4a32

    and b
    ld b, $30
    add hl, bc

jr_01d_4a2d:
    and b
    ld [bc], a
    jr nc, jr_01d_4a3d

    and c

jr_01d_4a32:
    ld [bc], a
    jr nz, jr_01d_4a41

    and c
    inc bc
    jr nc, @+$08

    and b
    inc b
    jr nc, jr_01d_4a46

jr_01d_4a3d:
    and b
    ld b, $30
    add hl, bc

jr_01d_4a41:
    and b
    ld [bc], a
    daa
    inc c
    and c

jr_01d_4a46:
    ld [bc], a
    dec d
    inc c
    and c
    inc bc
    dec h
    ld b, $a0
    inc b
    dec h
    ld [de], a
    and b
    ld [bc], a
    dec h
    inc c
    and c
    ld [bc], a
    rla
    inc c
    and c
    inc bc
    daa
    ld b, $a0
    inc b
    daa
    ld [de], a
    and b
    ld [bc], a
    rla
    inc c
    and c
    ld [bc], a
    jr nz, jr_01d_4a75

    and c
    inc bc
    and e
    inc b
    and d
    ld e, a
    dec [hl]
    inc c
    ld [hl-], a
    inc c
    inc [hl]
    inc c

jr_01d_4a75:
    and d
    jr nc, @+$32

    inc c
    and b
    ld b, $30
    ld b, $1f
    ld e, $a2
    db $10
    and b
    ld [bc], a
    and c
    ld a, [bc]
    and e
    ld b, $15
    ld b, $a1
    ld [bc], a
    jr nc, jr_01d_4a93

    and b
    ld b, $30
    ld b, $a0
    ld [bc], a

jr_01d_4a93:
    jr z, @+$08

    jr z, @+$08

    jr nc, jr_01d_4a9f

    and b
    ld b, $30
    ld b, $a0
    ld [bc], a

jr_01d_4a9f:
    jr z, jr_01d_4aa7

    and c
    ld a, [bc]
    ld a, [de]
    ld b, $a1
    ld [bc], a

jr_01d_4aa7:
    jr z, jr_01d_4aaf

    and b
    ld b, $28
    ld b, $a0
    ld [bc], a

jr_01d_4aaf:
    ld a, [hl+]
    ld b, $28
    ld b, $32
    ld b, $a0
    ld b, $32
    ld b, $a0
    ld [bc], a
    jr z, jr_01d_4ac3

    and c
    ld a, [bc]
    inc de
    ld b, $a1
    ld [bc], a

jr_01d_4ac3:
    ld a, [hl+]
    ld b, $a0
    ld b, $2a
    ld b, $a0
    ld [bc], a
    daa
    ld b, $27
    ld b, $2a
    ld b, $a0
    ld b, $2a
    ld b, $a0
    ld [bc], a
    daa
    ld b, $b1
    db $fc
    xor c
    ld bc, $0aa1
    jr @+$08

    and c
    ld [bc], a
    jr nc, jr_01d_4aeb

    and b
    ld b, $30
    ld b, $a0
    ld [bc], a

jr_01d_4aeb:
    daa
    ld b, $28
    ld b, $28
    ld b, $a0
    ld b, $28

jr_01d_4af4:
    ld b, $a0
    ld [bc], a
    daa
    ld b, $a1

jr_01d_4afa:
    ld a, [bc]
    ld [hl+], a
    ld b, $a1
    ld [bc], a
    ld [hl-], a
    ld b, $a0

jr_01d_4b02:
    ld b, $32
    ld b, $a0

jr_01d_4b06:
    ld [bc], a
    jr nc, @+$08

    add hl, hl

jr_01d_4b0a:
    ld b, $30
    ld b, $a0
    ld b, $30
    ld b, $a0
    ld [bc], a
    ld [hl-], a
    ld b, $a1
    ld a, [bc]
    rla
    ld b, $a1
    ld [bc], a
    dec [hl]
    ld b, $a0
    ld b, $35
    ld b, $a0
    ld [bc], a
    dec hl
    ld b, $32
    ld b, $37
    ld b, $a0
    ld b, $37
    ld b, $a0
    ld [bc], a
    dec hl
    ld b, $a1
    ld a, [bc]
    jr nz, @+$08

    and c
    ld [bc], a
    scf
    ld b, $a0
    ld b, $37
    ld b, $a0
    ld [bc], a
    inc [hl]
    ld b, $30
    ld b, $37
    ld b, $a0
    ld b, $37
    ld b, $a0
    ld [bc], a
    inc [hl]
    ld b, $a2
    rst $38
    dec [hl]
    jr jr_01d_4af4

    jr nc, jr_01d_4af4

    inc b
    dec [hl]
    jr jr_01d_4afa

    ld a, a
    and b
    ld [bc], a
    inc [hl]
    jr @+$35

    jr jr_01d_4b02

    rst $38
    ld [hl-], a
    jr jr_01d_4b06

    jr nc, jr_01d_4b06

    inc b
    ld [hl-], a
    jr jr_01d_4b0a

    ld [bc], a
    and d
    ld a, a
    ld sp, $a218
    ld h, b
    jr nc, jr_01d_4b85

    and b
    ld b, $30
    ld b, $a2
    rst $38
    and b
    ld [bc], a
    jr nc, jr_01d_4ba1

    and b
    inc b
    jr nc, jr_01d_4b8d

    and b
    inc b
    and d
    ld a, a

jr_01d_4b85:
    dec hl
    inc h
    and b
    ld b, $2b
    inc c
    and b
    inc b

jr_01d_4b8d:
    ld a, [hl+]

jr_01d_4b8e:
    inc h
    and b
    ld b, $2a
    inc c
    and b
    inc b
    dec hl

jr_01d_4b96:
    inc h
    and b
    ld b, $2b
    inc c
    and b

jr_01d_4b9c:
    ld [bc], a
    and d
    db $10
    and c
    ld a, [bc]

jr_01d_4ba1:
    db $10

jr_01d_4ba2:
    inc c
    and d
    rst $38
    and c
    ld [bc], a
    jr nz, jr_01d_4baf

    and b
    ld b, $20
    ld [de], a
    and b

jr_01d_4bae:
    ld [bc], a

jr_01d_4baf:
    and d
    db $10
    jr nz, jr_01d_4bbf

    or e

jr_01d_4bb4:
    db $fc
    add hl, de
    ld [bc], a
    and d
    db $10
    and c
    ld a, [bc]
    dec d
    inc c
    and d
    rst $38

jr_01d_4bbf:
    and c

jr_01d_4bc0:
    add hl, bc
    dec d
    ld b, $a0
    ld b, $15
    ld [de], a
    and c
    ld [bc], a
    and b
    ld [bc], a
    and d

jr_01d_4bcc:
    db $10
    dec h
    inc c
    or d
    db $fc
    ld h, $02
    and d
    db $10
    and c
    ld a, [bc]
    ld d, $0c
    and d
    rst $38
    and c
    ld [bc], a
    ld h, $06
    and b
    ld b, $26
    ld [de], a
    and b
    ld [bc], a
    and d

jr_01d_4be6:
    db $10
    daa
    inc c
    and d
    rst $38
    inc [hl]
    jr jr_01d_4b8e

    inc b
    and d
    jr nc, jr_01d_4c26

    jr jr_01d_4b96

    rst $38
    and b
    ld [bc], a
    inc sp
    jr jr_01d_4b9c

    jr nc, jr_01d_4b9c

    inc b
    inc sp
    jr jr_01d_4ba2

    rst $38
    and b
    ld [bc], a
    ld [hl-], a
    jr @-$5c

    jr nc, @-$5e

    inc b
    ld [hl-], a
    jr jr_01d_4bae

    rst $38
    and b
    ld [bc], a
    ld sp, $a218
    jr nc, jr_01d_4bb4

    inc b
    ld sp, $a018
    ld [bc], a
    and d
    rst $38
    jr nc, @+$1a

    and d
    jr nc, jr_01d_4bc0

    inc b
    jr nc, @+$1a

    and b
    ld [bc], a
    and d

jr_01d_4c26:
    rst $38
    dec hl
    jr jr_01d_4bcc

    jr nc, jr_01d_4bcc

    inc b
    dec hl
    jr @-$5c

    rst $38
    and b
    ld [bc], a
    ld a, [hl+]
    jr @-$5c

    jr nc, @-$5e

    inc b
    ld a, [hl+]
    jr @-$5c

    ld a, a
    and b
    ld [bc], a
    add hl, hl
    jr jr_01d_4c6a

    jr jr_01d_4be6

    rst $38
    add hl, de
    ld d, h
    and b
    inc b
    add hl, de
    inc c
    and b
    ld [bc], a
    add hl, de
    ld d, h
    and b
    inc b
    add hl, de
    inc c
    or b
    db $fc
    ld [bc], a
    nop
    rst $38
    rst $38
    ld bc, $0901
    nop
    db $fd
    cp $c2
    ld b, $1f
    jr nc, jr_01d_4c8a

    inc c
    add hl, hl
    inc c
    and b
    inc c
    ld [hl-], a

jr_01d_4c6a:
    inc c
    and b
    dec c
    ld [hl-], a
    inc c
    and b
    dec bc
    add hl, hl
    inc c
    and b
    add hl, bc
    ld h, $0c
    ld [hl+], a
    jr jr_01d_4ca0

    inc c
    add hl, hl
    inc c
    and b
    inc c
    ld sp, $a00c
    dec c
    ld sp, $a00c
    dec bc
    add hl, hl
    inc c
    and b

jr_01d_4c8a:
    add hl, bc
    ld h, $0c
    ld hl, $1b0c
    inc c
    and b
    rrca
    ld [hl+], a
    inc c
    and b
    rlca
    ld h, $0c
    dec hl
    inc c
    rla
    inc c
    daa
    inc c
    and b

jr_01d_4ca0:
    ld a, [bc]
    ld [hl+], a
    inc c
    daa
    inc c
    ld [hl+], a
    inc c
    and b
    inc c
    daa
    inc c
    and b
    dec c
    dec hl
    inc c
    and b
    rrca
    ld [hl-], a
    inc c
    jp z, $3112

    ld b, $c1
    rra
    and b
    inc b
    ld sp, $a036
    add hl, bc
    jp nz, $1b06

    inc c
    inc h
    inc c
    and b
    inc c
    daa
    inc c
    and b
    dec c
    dec hl
    inc c
    and b
    dec bc
    daa
    inc c
    and b
    add hl, bc
    inc h
    inc c
    daa
    jr jr_01d_4cf3

    inc c
    inc hl
    inc c
    and b
    inc c
    daa
    inc c
    and b
    dec c
    dec hl
    inc c
    and b
    dec bc
    daa
    inc c
    and b
    add hl, bc
    inc hl
    inc c
    daa
    inc c
    ld [hl+], a
    inc c
    and b
    rrca
    dec de
    inc c

jr_01d_4cf3:
    and b
    rlca
    ld [hl+], a
    inc c
    daa
    inc c
    and b
    ld a, [bc]
    ld hl, $290c
    inc c
    ld hl, $270c
    inc c
    and b
    rlca
    ld [hl+], a
    inc c
    and b
    ld a, [bc]
    ld h, $0c
    and b
    inc c
    ld h, $0c
    and b
    ld c, $29
    inc c
    and b
    rrca
    jr nc, @+$0e

    and b
    add hl, bc
    add hl, hl
    inc c
    and b
    rlca
    ld h, $0c
    jr nz, jr_01d_4d2d

    xor a
    ld bc, $01a2
    and b
    inc c
    and c
    nop
    db $c2, $06, $17

    inc c

jr_01d_4d2d:
    and b
    rrca
    ld h, $0c
    and b
    ld [$0c35], sp
    inc [hl]
    inc c
    and b
    rlca
    inc sp
    inc c
    ld [hl-], a
    inc c
    ld sp, $2b0c
    inc c
    ld h, $0c
    and b
    rrca
    add hl, hl
    inc c
    and b
    rlca
    ld h, $0c
    and b
    rrca
    inc h
    inc c
    and b
    rlca
    inc hl
    inc c
    and b
    rrca
    inc hl
    inc c
    and b
    rlca
    ld h, $0c
    and b
    rrca
    add hl, hl
    inc c
    and b
    inc c
    inc h
    inc c
    and b
    rrca
    daa
    inc c
    and b
    ld [$0c36], sp
    dec [hl]
    inc c
    and b
    rlca
    inc [hl]
    inc c
    inc sp
    inc c
    ld [hl-], a
    inc c
    ld sp, $2b0c
    inc c
    and b
    rrca
    add hl, hl
    inc c
    and b
    rlca
    jr z, jr_01d_4d8d

    and b
    rrca
    jp z, $2408

    jr jr_01d_4da9

    jr jr_01d_4dab

    jr jr_01d_4dab

    inc c

jr_01d_4d8d:
    jp z, $a012

jr_01d_4d90:
    ld c, $34
    ld b, $a0

jr_01d_4d94:
    inc b
    pop bc
    cpl
    inc [hl]
    ld e, $c2
    ld b, $a0
    inc c
    ld [hl], $0c
    inc [hl]
    inc c
    inc sp
    inc c
    and b
    dec bc
    ld sp, $2b0c
    inc c

jr_01d_4da9:
    and b
    ld a, [bc]

jr_01d_4dab:
    add hl, hl
    inc c
    daa
    inc c
    and b
    ld [$0c26], sp
    inc h
    inc c
    ld [hl+], a
    inc c
    ld hl, $a00c

jr_01d_4dba:
    inc c
    rra

jr_01d_4dbc:
    inc c
    jp z, Jump_000_260f

    jr @+$28

    jr @+$2b

    jr @+$2d

    jr jr_01d_4df3

    jr jr_01d_4d94

    rrca
    add hl, hl
    jr jr_01d_4d90

    ld [$08a0], sp
    inc h
    inc c
    ld [hl+], a
    inc c
    rrc e
    and b
    ld a, [bc]
    daa
    inc c
    or c
    db $fc
    or b
    nop
    and b
    inc bc
    daa
    inc c
    and b
    inc c
    rrc e
    ld h, $18
    ld h, $18
    add hl, hl
    jr jr_01d_4e19

    jr jr_01d_4e1b

    jr jr_01d_4dbc

    rrca

jr_01d_4df3:
    and b
    ld c, $29
    jr jr_01d_4dba

    ld [$0ca0], sp
    inc h
    inc c
    inc h
    inc c
    ld a, [hl+]
    jr @+$21

    inc c
    jp z, $a012

    ld c, $26
    ld b, $a0
    inc b
    pop bc
    cpl
    ld h, $12
    jp nz, $a006

    inc c
    jr @+$0e

    inc h
    inc c
    jr z, jr_01d_4e25

jr_01d_4e19:
    rrc e

jr_01d_4e1b:
    dec hl
    jr @-$5e

    rrca
    jp nz, Jump_000_2706

    inc c
    and b
    add hl, bc

jr_01d_4e25:
    daa
    inc c
    inc h
    inc c
    and b
    ld [$0c21], sp
    or b
    nop
    rst $38
    ld bc, $0e01

jr_01d_4e33:
    nop
    db $fd
    cp $a0

jr_01d_4e37:
    ld c, $a3
    dec b
    jp z, Jump_000_360f

    jr jr_01d_4e76

    inc c
    jp z, $a012

    rrca
    add hl, sp
    ld b, $c1
    cpl
    and b
    inc b
    add hl, sp

jr_01d_4e4b:
    ld [hl], $a0
    ld c, $c2
    ld [$0c36], sp
    ld [hl], $0c
    scf
    inc c
    jp z, $a012

    rrca
    add hl, sp
    ld b, $c1
    cpl
    and b
    inc b
    add hl, sp
    ld [hl], $ca
    rrca
    and b
    ld c, $36
    jr jr_01d_4e33

    db $10
    scf
    jr jr_01d_4e37

    ld a, [bc]
    and b
    rrca
    add hl, sp
    inc c
    jp nz, $a008

    ld a, [bc]

jr_01d_4e76:
    ld [hl], $0c
    inc [hl]
    inc c
    ld [hl-], a
    inc c
    rrc e
    dec hl
    jr jr_01d_4e4b

    ld [de], a
    inc [hl]
    ld b, $c1
    inc l
    and b

jr_01d_4e87:
    inc bc
    inc [hl]

jr_01d_4e89:
    ld [hl], $1f
    inc c
    and b
    ld c, $ca
    rrca
    scf
    jr jr_01d_4ecc

    inc c
    jp z, $a012

    rrca
    dec sp
    ld b, $c1
    cpl
    and b
    inc b
    dec sp
    ld [hl], $a0
    ld c, $c2
    ld [$0c37], sp
    scf
    inc c
    add hl, sp
    inc c
    jp z, $a012

    rrca
    dec sp
    ld b, $c1
    cpl
    and b
    inc b
    dec sp
    ld [hl], $a0
    dec c
    jp nz, $ca08

    rrca
    scf
    jr jr_01d_4e89

    db $10
    and b
    inc c
    add hl, sp
    jr jr_01d_4e87

    ld [$0fa0], sp
    dec sp
    inc c
    and b
    add hl, bc

jr_01d_4ecc:
    ld b, c

jr_01d_4ecd:
    inc c
    ld b, d
    inc c
    and b
    dec bc
    ld b, c
    inc c
    dec sp
    inc c
    and b
    dec c
    add hl, sp
    inc c
    dec sp
    inc c
    jp z, Jump_000_3612

    ld b, $c1
    inc l
    and b
    inc bc
    ld [hl], $36
    jp nz, $a008

    rrca
    ld h, $0c
    add hl, hl

jr_01d_4eed:
    inc c
    ld [hl], $0c
    xor a
    ld bc, $01a2
    and b
    rrca
    and c
    nop
    db $c2, $08, $1f

    inc c
    ld [hl], $0c
    and b
    ld a, [bc]
    ld [hl], $0c
    ld [hl], $0c
    and b
    ld [$0c36], sp
    and b
    ld a, [bc]
    ld [hl], $0c
    and b
    add hl, bc
    inc [hl]
    inc c
    ld [hl-], a
    inc c
    and b
    ld a, [bc]
    dec hl
    inc c
    and b
    ld c, $31
    inc c
    and b
    ld [$0c29], sp
    and b
    rrca
    dec hl
    jr jr_01d_4eed

    ld a, [bc]
    ld h, $18
    jp z, $a00f

    ld c, $2b
    jr jr_01d_4ecd

    rrca
    jp nz, Jump_000_3708

    inc c
    and b
    ld a, [bc]
    scf
    inc c
    scf
    inc c
    and b
    ld [$0c37], sp
    and b
    ld a, [bc]
    scf
    inc c
    and b
    add hl, bc
    ld [hl], $0c
    inc [hl]
    inc c
    and b
    ld a, [bc]
    ld [hl-], a
    inc c
    and b
    rrca
    ld sp, $a00c
    ld a, [bc]
    dec hl
    inc c
    and b
    ld c, $ca
    ld a, [bc]
    add hl, hl
    inc c
    and b
    inc b
    add hl, hl
    inc c
    and b
    ld c, $ca
    dec c
    add hl, hl
    jr @-$5e

    inc c
    add hl, hl
    jr jr_01d_4f86

jr_01d_4f67:
    inc c
    and b
    rrca
    jp z, Jump_000_3912

    ld b, $a0

jr_01d_4f6f:
    inc b
    pop bc
    cpl
    add hl, sp
    ld e, $a0
    rrca
    jp nz, Jump_000_3908

    inc c
    and b
    dec c
    scf
    inc c
    ld [hl], $0c
    and b
    inc c
    inc [hl]
    inc c
    ld [hl-], a
    inc c

jr_01d_4f86:
    and b
    dec bc
    ld sp, $2b0c
    inc c
    and b
    add hl, bc
    add hl, hl
    inc c
    daa
    inc c
    and b
    ld [$0c26], sp
    inc h
    inc c
    jp nz, $a006

    rrca
    rra
    inc c
    ld [hl], $0c
    jp z, Jump_000_3b0f

    jr jr_01d_4f67

    ld [$0c34], sp
    jp z, $390f

    jr jr_01d_4f6f

    ld [$0c32], sp
    jp z, $370f

    jr @-$3c

    ld [$0c31], sp
    jp z, Jump_000_360f

    ld [de], a
    rra
    ld b, $a0
    dec bc
    jp nz, Jump_000_2b08

    inc c
    and b
    ld [$0c2b], sp
    and b
    dec bc
    ld sp, $b20c
    db $fc
    or l
    nop
    and b
    inc bc
    ld sp, $1f0c
    inc c
    jp z, $a012

    rrca
    ld [hl-], a
    ld b, $a0
    inc b
    pop bc
    cpl
    ld [hl-], a
    ld e, $c2
    ld [$0fa0], sp
    inc [hl]
    inc c
    and b
    inc c
    ld [hl], $0c
    and b
    rrca
    jp z, Jump_000_340a

    inc c
    and b
    inc b
    inc [hl]
    inc c
    jp nz, $a008

    rrca
    inc [hl]
    inc c
    and b
    add hl, bc
    ld a, [hl+]
    inc c
    daa
    inc c
    and b
    ld [$0c24], sp
    or b
    nop
    rst $38
    ld bc, $0208
    ld a, [bc]
    db $fd
    cp $1f
    inc h
    ld [hl+], a
    inc c
    and c
    inc bc
    and b
    inc b
    ld [hl-], a
    inc c
    ld [hl], $0c
    and b

jr_01d_501c:
    ld [bc], a
    add hl, sp
    inc c
    add hl, sp
    inc c
    ld [hl], $0c
    and b
    inc b
    ld [hl-], a
    inc c
    add hl, hl
    inc c
    and c
    ld a, [bc]
    and b
    ld [bc], a
    ld hl, $a10c
    inc bc
    and b
    inc b
    ld sp, $360c
    inc c
    and b
    ld [bc], a
    add hl, sp
    inc c
    add hl, sp
    inc c
    ld [hl], $0c
    and b
    inc b
    ld sp, $260c
    inc c
    and b
    inc b
    and c
    ld a, [bc]
    dec de
    inc c
    and b
    ld [bc], a
    dec hl
    inc c
    and c
    inc bc
    and b
    inc b
    ld [hl-], a
    inc c
    ld [hl], $0c
    and c
    ld a, [bc]
    inc d
    inc c
    and c
    inc bc
    and b
    inc b
    inc h
    inc c
    daa
    inc c
    and b
    ld [bc], a
    dec hl
    inc c
    and c
    ld a, [bc]
    add hl, de
    inc c
    and c
    inc bc
    add hl, hl
    inc c
    ld [hl-], a
    inc c
    scf
    inc c
    and c
    ld a, [bc]
    and b
    inc b
    add hl, sp
    jr jr_01d_5099

    jr jr_01d_501c

    ld [bc], a
    inc h
    inc c
    and b
    inc b
    and c
    inc bc
    daa
    inc c
    dec hl
    inc c
    and b
    ld [bc], a
    inc [hl]
    inc c
    scf
    inc c
    inc [hl]
    inc c
    and b
    inc b
    dec hl
    inc c
    inc h
    inc c
    and b
    ld [bc], a
    and c
    ld a, [bc]

jr_01d_5099:
    inc hl
    inc c
    and c
    inc bc
    and b
    inc b
    daa
    inc c
    dec hl
    inc c
    and b
    ld [bc], a
    inc sp
    inc c
    scf
    inc c
    inc sp
    inc c
    and b
    inc b
    dec hl
    inc c
    inc hl
    inc c
    and b
    inc b
    and c
    ld a, [bc]
    ld [hl+], a
    inc c
    and b
    ld [bc], a
    daa
    inc c
    and c
    inc bc
    and b
    inc b
    dec hl
    inc c
    ld [hl-], a
    inc c
    and b
    ld [bc], a
    and c
    ld a, [bc]
    ld hl, $a00c
    inc b
    and c
    inc bc
    daa
    inc c
    add hl, hl
    inc c
    inc [hl]
    inc c
    and b
    ld [bc], a
    and c
    ld a, [bc]
    ld [de], a
    inc c
    and c
    inc bc
    ld [hl+], a
    inc c
    add hl, hl
    inc c
    ld [hl-], a
    inc c
    and c
    ld a, [bc]
    ld [hl], $0c
    and c
    inc bc
    and b
    inc b
    jr nc, jr_01d_50f7

    add hl, hl
    inc c
    ld [hl+], a
    inc c
    xor a
    ld bc, $08a2
    and b
    inc b
    and c
    inc bc

jr_01d_50f7:
    and c
    ld a, [bc]
    rla
    inc c
    and b
    ld [bc], a
    daa
    inc c
    and c
    inc bc
    and b
    inc b
    dec hl
    inc c
    ld [hl-], a
    inc c
    and b
    ld [bc], a
    and c
    ld a, [bc]
    ld hl, $a00c
    inc b
    and c
    inc bc
    dec hl
    inc c
    inc [hl]
    inc c
    scf
    inc c
    and c
    ld a, [bc]
    ld d, $0c
    and c
    inc bc
    and b
    ld [bc], a
    ld h, $0c
    and b
    inc b
    add hl, hl
    inc c
    and b
    ld [bc], a
    ld sp, $a00c
    inc b
    and c
    ld a, [bc]
    dec de
    inc c
    and b
    ld [bc], a
    add hl, hl
    inc c
    and b
    inc b
    and c
    inc bc
    inc sp
    inc c
    and b
    ld [bc], a
    and c
    ld a, [bc]
    ld [hl], $0c
    and b
    inc b
    and c
    ld a, [bc]
    inc d
    inc c

jr_01d_5145:
    and b
    ld [bc], a
    inc h
    inc c
    and c
    inc bc
    and b
    inc b
    dec hl
    inc c

jr_01d_514f:
    ld [hl-], a
    inc c
    inc [hl]
    inc c
    dec hl
    inc c
    daa
    inc c
    inc h
    inc c
    and c
    ld a, [bc]
    dec h
    inc c
    and c
    inc bc
    and b
    ld [bc], a
    dec hl
    inc c
    and b
    inc b
    dec h
    inc c
    and c
    ld a, [bc]
    and b
    ld [bc], a
    ld h, $0c
    and b
    inc b
    and d
    ld b, $16
    inc c
    and b
    ld [bc], a
    and c
    inc bc
    ld h, $0c
    and c
    ld a, [bc]
    and b
    inc b
    ld d, $0c
    and b
    inc b
    and c
    inc bc
    ld h, $0c
    and d
    ld [$02a0], sp
    and c
    ld a, [bc]
    jr nz, jr_01d_51a5

    jr nc, jr_01d_51a7

    dec de
    inc c
    and c
    inc bc
    inc sp
    inc c
    rra
    inc c
    dec hl
    inc c
    and c
    ld a, [bc]
    jr jr_01d_51a9

    and c
    inc bc
    jr z, @+$0e

    rra
    jr jr_01d_5145

    ld a, [bc]

jr_01d_51a5:
    add hl, de
    inc c

jr_01d_51a7:
    and c
    inc bc

jr_01d_51a9:
    add hl, hl
    inc c
    rra
    jr jr_01d_514f

    ld a, [bc]
    ld [hl+], a
    inc c
    and c
    inc bc
    add hl, hl
    inc c
    and c
    ld a, [bc]
    ld [hl+], a
    inc c
    and c
    inc bc
    add hl, hl
    inc c
    and c
    ld a, [bc]
    ld hl, $a10c
    inc bc
    ld h, $0c
    and c
    ld a, [bc]
    dec de
    inc c
    and c
    inc bc
    daa
    inc c
    and c
    ld a, [bc]
    dec de
    inc c
    and c
    inc bc
    daa
    inc c
    and c
    ld a, [bc]
    add hl, de
    inc c
    and c
    inc bc
    ld h, $0c
    and c
    ld a, [bc]
    rra
    inc c
    daa
    inc c
    rla
    inc c
    and c
    inc bc
    add hl, hl
    inc c
    or c
    db $fc
    jp nc, $a100

    ld a, [bc]
    ld [hl+], a
    inc c
    and c
    inc bc
    add hl, hl
    inc c
    and c
    ld a, [bc]
    ld [hl+], a
    inc c
    and c
    inc bc
    add hl, hl
    inc c
    and c
    ld a, [bc]
    ld hl, $a10c
    inc bc
    ld h, $0c
    and c
    ld a, [bc]
    dec de
    inc c
    and c
    inc bc
    daa
    inc c
    and c
    ld a, [bc]
    dec de
    inc c
    and c
    inc bc
    daa
    inc c
    and c
    ld a, [bc]
    add hl, de
    inc c
    and c
    inc bc
    ld h, $0c
    rra
    inc c
    rla
    inc c
    and c
    ld a, [bc]
    daa
    inc c
    and c
    inc bc
    ld h, $0c
    and c
    ld a, [bc]
    dec de
    jr jr_01d_5259

    jr jr_01d_5248

    inc c
    jr z, jr_01d_523f

    and c
    inc bc
    dec hl
    inc c
    ld [hl-], a
    inc c
    and c
    ld a, [bc]
    jr nz, jr_01d_5249

    daa
    inc c

jr_01d_523f:
    and c
    inc bc
    and b
    inc b
    jr nc, jr_01d_5251

    inc [hl]
    inc c
    add hl, hl

jr_01d_5248:
    inc c

jr_01d_5249:
    or b
    nop
    rst $38
    rst $38
    ld bc, $0901
    nop

jr_01d_5251:
    and d
    ld bc, $02a3
    call nz, $a00f
    rlca

jr_01d_5259:
    add hl, hl
    ld b, $30
    ld b, $a0
    add hl, bc
    inc sp
    ld b, $37
    ld b, $3b
    ld b, $37
    ld b, $a0
    rlca
    inc sp
    ld b, $30
    ld b, $26
    ld b, $29
    ld b, $a0
    add hl, bc
    jr nc, @+$08

    inc sp
    ld b, $37
    ld b, $33
    ld b, $a0
    rlca
    jr nc, @+$08

    add hl, hl
    ld b, $23
    ld b, $26
    ld b, $a0
    add hl, bc
    add hl, hl
    ld b, $30
    ld b, $33
    ld b, $30
    ld b, $a0
    rlca
    add hl, hl
    ld b, $26
    ld b, $20
    ld b, $23
    ld b, $a0
    add hl, bc
    ld h, $06
    add hl, hl
    ld b, $30
    ld b, $29
    ld b, $a0
    rlca
    ld h, $06
    inc hl
    ld b, $a0
    ld a, [bc]
    call nz, $1715
    inc c
    jp nz, $a010

    rlca
    ld h, $0c
    dec h
    inc c
    inc h
    inc c
    and b
    add hl, bc
    inc hl
    inc c
    ld [hl+], a
    inc c
    ld hl, $200c
    inc c
    and b
    dec bc
    dec de
    inc c
    and b
    ld [$0c1a], sp
    add hl, de
    inc c
    jr jr_01d_52db

    rla
    inc c
    rra
    inc h
    and b
    ld a, [bc]
    rra
    inc c
    daa
    inc c
    daa
    inc c

jr_01d_52db:
    and b
    dec b
    daa
    inc c
    or c
    db $fc
    ld b, e
    nop
    and b
    ld a, [bc]
    and b
    inc b
    daa
    inc c
    and b
    ld a, [bc]
    daa
    inc c
    or a
    db $fc
    ld c, h
    nop
    and b
    inc b
    daa
    inc c
    and b
    dec bc
    ld h, $0c
    ld h, $0c
    ld h, $0c
    dec h
    inc c
    inc h
    inc c
    inc hl
    inc c
    ld [hl+], a
    inc c
    and b
    ld a, [bc]
    rra
    inc c
    inc hl
    inc c
    inc hl
    inc c
    and b
    inc b
    inc hl
    inc c
    or c
    db $fc
    ld e, h
    nop
    and b
    ld a, [bc]
    and b
    inc b
    inc hl
    inc c
    and b
    ld a, [bc]
    inc hl
    inc c
    or a
    db $fc
    ld h, l
    nop
    and b
    inc b
    inc hl
    inc c
    and b
    ld a, [bc]
    ld [hl+], a
    inc c
    ld [hl+], a
    inc c
    ld [hl+], a
    inc c
    ld hl, $200c
    inc c
    dec de
    inc c
    ld a, [de]
    inc c
    and d
    ld bc, $09a0
    and e
    ld [bc], a
    call nz, $fd12
    cp $1a
    ld b, $25
    ld b, $21
    ld b, $25
    ld b, $b2
    db $fc
    ld a, h
    nop
    or c
    nop
    db $fd
    cp $19
    ld b, $24
    ld b, $20
    ld b, $24
    ld b, $b2
    db $fc
    add h
    nop
    or c
    nop
    db $fd
    cp $22
    ld b, $29
    ld b, $25
    ld b, $29
    ld b, $b2
    db $fc
    adc h
    nop
    or c
    nop
    dec de
    ld b, $27
    ld b, $22
    ld b, $27
    ld b, $2b
    ld b, $27
    ld b, $22
    ld b, $27
    ld b, $b1
    db $fc
    sub c
    nop
    db $fd
    cp $22
    ld b, $29
    ld b, $25
    ld b, $29
    ld b, $b2
    db $fc
    sbc [hl]
    nop
    or c
    nop
    db $fd
    cp $21
    ld b, $28
    ld b, $24
    ld b, $28
    ld b, $b2
    db $fc
    and [hl]
    nop
    or c
    nop
    db $fd
    cp $26
    ld b, $31
    ld b, $29
    ld b, $31
    ld b, $b2
    db $fc
    xor [hl]
    nop
    or c
    nop
    ld [hl+], a
    ld b, $26
    ld b, $2b
    ld b, $26
    ld b, $b3
    db $fc
    or e
    nop
    add hl, hl
    ld b, $19
    ld b, $21
    ld b, $24
    ld b, $19
    ld b, $21
    ld b, $24
    ld b, $26
    ld b, $b1
    db $fc
    cp l
    nop
    add hl, hl
    ld b, $19
    ld b, $21
    ld b, $24
    ld b, $20
    ld b, $24
    ld b, $27
    ld b, $24
    ld b, $b3
    db $fc
    rst $00
    nop
    and b
    dec bc
    and e
    cp $a2
    ld [bc], a
    rra
    inc c
    pop bc
    ld [hl], b
    inc sp
    inc c
    ld b, e
    inc c
    jp nz, $a215

    nop
    jr nc, jr_01d_5407

    and b
    dec c
    pop bc
    ld [hl], b
    dec h
    inc c
    and b
    dec bc
    and d
    ld [bc], a
    dec [hl]
    inc c

jr_01d_5407:
    ld b, l
    inc c
    jp nz, $a215

    nop
    dec [hl]
    inc c
    and b
    dec c
    pop bc
    ld [hl], b
    ld a, [hl+]
    inc c
    and b
    dec bc
    and d
    ld [bc], a
    ld sp, $410c
    inc c
    jp nz, $a215

    nop
    inc sp
    inc c
    pop bc
    ld [hl], b
    and b
    dec c
    ld h, $0c
    and b
    ld a, [bc]
    and d
    ld [bc], a
    jr nc, jr_01d_543b

    and b
    dec bc
    ld b, b
    inc c
    jp nz, $a215

    nop
    ld a, [hl+]
    inc c
    and d
    nop

jr_01d_543b:
    pop bc
    ld d, b
    and b
    add hl, bc
    jr z, @+$0e

    jp nz, $3015

    inc c
    pop bc
    ld d, b
    and b
    add hl, bc
    dec h
    inc c
    jp nz, Jump_000_2a15

    inc c
    pop bc
    ld d, b
    and b
    add hl, bc
    daa
    inc c
    jp nz, Jump_000_2a15

    inc c
    pop bc

jr_01d_545a:
    ld d, b
    and b
    ld a, [bc]
    inc hl
    inc c
    jp nz, Jump_000_2815

    inc c
    pop bc
    ld d, b
    and b
    ld a, [bc]
    dec h
    inc c
    jp nz, Jump_000_2815

    inc c
    pop bc
    ld d, b
    and b
    dec bc
    dec h
    inc c
    jp nz, $3115

    inc c
    pop bc
    ld d, b
    and b
    dec bc
    inc hl
    inc c
    jp nz, Jump_000_2715

    inc c
    pop bc
    ld d, b
    and b
    dec bc
    inc hl
    inc c
    jp nz, $3015

    inc c
    pop bc
    jr nc, jr_01d_54a9

    inc c
    ld [hl-], a
    inc c
    ld [hl-], a
    inc c
    add hl, hl
    inc c
    ld [hl+], a
    inc c
    ld [hl-], a
    inc c
    ld [hl-], a
    inc c
    add hl, hl
    inc c
    ld a, [de]
    inc c
    jr z, jr_01d_54ad

    jr z, jr_01d_54af

    jr c, jr_01d_54b1

    jr c, jr_01d_54b3

    jr z, jr_01d_54b5

jr_01d_54a9:
    jr z, @+$0e

    ld [hl+], a
    inc c

jr_01d_54ad:
    rra
    ld h, b

jr_01d_54af:
    and b
    dec bc

jr_01d_54b1:
    and c
    nop

jr_01d_54b3:
    and b
    dec bc

jr_01d_54b5:
    ret nz

    cp $23
    jr nc, jr_01d_545a

    inc b
    pop bc
    ld d, b
    inc hl
    jr @-$5e

    dec bc
    dec h
    ld b, $26
    ld b, $27
    ld b, $28
    ld b, $b0
    db $fc
    ld [bc], a
    nop
    rst $38
    ld bc, $0c01
    nop
    db $fd
    cp $a2
    ld bc, $02a3
    call nz, $a010
    ld [$0630], sp
    inc sp
    ld b, $a0
    ld a, [bc]
    scf
    ld b, $3b
    ld b, $42
    ld b, $3b
    ld b, $a0
    ld [$0637], sp
    inc sp
    ld b, $29
    ld b, $30
    ld b, $a0
    ld a, [bc]
    inc sp

jr_01d_54f7:
    ld b, $37
    ld b, $3b
    ld b, $37
    ld b, $a0
    ld [$0633], sp
    jr nc, jr_01d_550a

    ld h, $06
    add hl, hl
    ld b, $a0
    ld a, [bc]

jr_01d_550a:
    jr nc, @+$08

    inc sp
    ld b, $37
    ld b, $33
    ld b, $a0
    ld [$0630], sp
    add hl, hl
    ld b, $24
    ld b, $26
    ld b, $a0
    ld a, [bc]
    add hl, hl
    ld b, $30
    ld b, $33
    ld b, $30
    ld b, $a0
    ld [$0629], sp
    ld h, $06
    and b
    inc c
    call nz, Call_000_2715
    inc c
    and b
    add hl, bc
    jp nz, Jump_000_2715

    inc c
    or d
    db $fc
    inc [hl]
    nop
    and b
    ld a, [bc]
    daa
    inc c
    or e
    db $fc
    jr c, jr_01d_5544

jr_01d_5544:
    and b
    inc c
    daa
    inc c
    and b
    dec bc
    daa
    inc c
    or d
    db $fc
    ld a, $00
    and b
    inc c
    daa
    inc c
    rra
    jr jr_01d_54f7

    dec bc
    pop bc
    ld [hl], b
    and d
    nop
    and e
    cp $29
    ld b, $2b
    ld b, $c1
    jr nz, jr_01d_5595

    ld [de], a
    and b
    inc bc
    pop bc
    ld [hl], b
    jr nc, jr_01d_557e

    and b

jr_01d_556d:
    dec bc
    ret nz

    cp $30
    ld b, $32
    ld b, $c1
    jr nz, jr_01d_55aa

    ld [de], a
    and b
    ld [bc], a
    pop bc
    ld [hl], b
    inc sp
    ld [de], a

jr_01d_557e:
    and b
    dec bc
    pop bc
    ld [hl], b
    inc sp
    ld b, $35
    ld b, $c1
    jr nz, jr_01d_55bf

    add hl, bc
    and b
    inc b
    ld [hl], $06
    and b
    dec bc
    ld [hl], $05
    jr c, jr_01d_5598

    add hl, sp

jr_01d_5595:
    add hl, bc
    and b
    inc b

jr_01d_5598:
    add hl, sp
    ld b, $a0
    dec bc
    add hl, sp
    dec b
    dec sp
    inc b
    ld b, b
    add hl, bc
    and b
    inc b
    ld b, b
    ld b, $a0
    dec bc
    ld b, b
    dec b

jr_01d_55aa:
    ld b, d
    inc b
    ld b, e
    add hl, bc
    and b
    inc b
    ld b, e
    ld b, $a0
    dec bc
    ld b, e
    dec b
    ld b, l
    inc b
    ret nz

    cp $46
    jr nc, jr_01d_557e

    ld [hl], b
    ld b, [hl]

jr_01d_55bf:
    jr jr_01d_5608

    ld b, $43
    ld b, $40
    ld b, $39
    ld b, $c0
    cp $36
    jr jr_01d_556d

    ld b, $c1
    ld h, b
    ld [hl], $30
    rra
    inc c
    pop bc
    ld [hl], b
    and b
    dec bc
    dec h
    ld b, $27
    ld b, $c1
    jr nz, jr_01d_5607

    ld [de], a
    and b
    inc bc
    pop bc
    ld [hl], b
    jr z, jr_01d_55f8

    and b
    dec bc
    pop bc
    ld [hl], b
    jr z, jr_01d_55f2

    ld a, [hl+]
    ld b, $c1
    jr nz, jr_01d_561c

    ld [de], a

jr_01d_55f2:
    and b
    inc bc
    pop bc
    ld [hl], b

jr_01d_55f6:
    dec hl
    ld [de], a

jr_01d_55f8:
    and b
    dec bc
    dec hl
    ld b, $31
    ld b, $c1
    jr nz, jr_01d_5633

    add hl, bc
    and b
    inc b
    ld [hl-], a
    ld b, $a0

jr_01d_5607:
    dec bc

jr_01d_5608:
    ld [hl-], a
    dec b
    inc [hl]
    inc b
    dec [hl]
    add hl, bc
    and b
    inc b
    dec [hl]
    ld b, $a0
    dec bc
    dec [hl]
    dec b
    scf
    inc b
    jr c, jr_01d_5623

    and b
    inc b

jr_01d_561c:
    jr c, jr_01d_5624

jr_01d_561e:
    and b

jr_01d_561f:
    dec bc
    jr c, jr_01d_5627

    ld a, [hl-]

jr_01d_5623:
    inc b

jr_01d_5624:
    dec sp
    add hl, bc
    and b

jr_01d_5627:
    inc b
    dec sp
    ld b, $a0
    dec bc
    dec sp
    dec b
    ld b, c
    inc b
    ret nz

    cp $42

jr_01d_5633:
    jr nc, jr_01d_55f6

    ld [hl], b
    ld b, d
    jr jr_01d_567c

    ld b, $3b
    ld b, $38
    ld b, $35
    ld b, $c1
    ld a, a
    ld [hl-], a
    jr nc, @-$5e

    ld b, $32
    jr nc, @-$5c

    ld [bc], a
    and b
    dec bc
    ret nz

    cp $1f
    jr jr_01d_5685

    inc h
    and b
    ld b, $c1
    ld d, b

jr_01d_5656:
    inc [hl]
    inc c
    and b
    dec bc
    dec [hl]
    jr jr_01d_561e

    ld a, a
    dec hl
    inc h
    jr nc, jr_01d_566e

    inc sp
    inc h
    inc [hl]
    inc c
    jr c, jr_01d_568c

    add hl, sp
    inc c
    dec sp
    inc h
    ld b, b
    inc c

jr_01d_566e:
    ret nz

    cp $a0
    add hl, bc
    ld [hl], $30
    and b
    ld b, $c1
    ld [hl], b
    ld [hl], $18
    and b
    add hl, bc

jr_01d_567c:
    scf
    jr jr_01d_561f

    inc bc
    pop bc
    jr nz, jr_01d_56ba

    jr @-$3d

jr_01d_5685:
    ld a, a
    and b
    dec bc
    jr c, jr_01d_56ae

    pop bc
    ld d, b

jr_01d_568c:
    and b
    ld b, $38
    inc c
    and b
    dec bc
    add hl, sp
    jr jr_01d_5656

jr_01d_5695:
    ld a, a
    inc sp
    inc h
    inc [hl]
    inc c

jr_01d_569a:
    scf
    inc h
    jr c, jr_01d_56aa

    ld b, b
    inc h
    ld b, c
    inc c
    ld b, e
    inc h
    ld b, h

jr_01d_56a5:
    inc c
    ld b, l
    inc h
    ld b, [hl]
    inc c

jr_01d_56aa:
    ld b, a
    inc h
    ld c, b
    inc c

jr_01d_56ae:
    and e
    ld [$3fc1], sp
    and d
    nop
    add hl, sp

jr_01d_56b5:
    inc c
    jp nz, $3420

    inc c

jr_01d_56ba:
    ld sp, $c10c
    ld a, a
    add hl, hl
    jr @-$3d

    ccf
    ld sp, $c20c
    jr nz, jr_01d_56fb

    inc c
    add hl, sp
    inc c
    pop bc
    ccf
    scf
    inc c
    jp nz, $3420

    inc c
    jr nc, jr_01d_56e0

    pop bc
    ld a, a
    dec hl
    jr jr_01d_569a

    ccf
    jr nc, jr_01d_56e8

    jp nz, $3420

    inc c

jr_01d_56e0:
    scf
    inc c
    rra
    inc c
    and e
    cp $a0
    inc c

jr_01d_56e8:
    ld [hl], $0c
    pop bc
    jr nc, jr_01d_5733

    inc c
    and b
    dec b
    pop bc
    ld h, b
    ld b, [hl]
    jr jr_01d_5695

    dec bc
    jp nz, Jump_000_3820

    inc c
    pop bc

jr_01d_56fb:
    jr nc, jr_01d_5745

    inc c
    and b
    dec b
    pop bc
    ld h, b
    ld c, b
    jr jr_01d_56a5

    dec bc
    jp nz, Jump_000_3520

    inc c
    pop bc
    jr nc, jr_01d_5752

    inc c
    pop bc
    ld h, b
    and b
    dec b
    ld b, l
    jr jr_01d_56b5

    dec bc
    jp nz, Jump_000_3320

    inc c
    pop bc
    ld b, b
    ld b, e
    jr jr_01d_56e0

    ld d, b
    and b
    ld a, [bc]
    inc sp
    inc c
    jp nz, $a015

    ld [$0c43], sp
    pop bc
    ld d, b
    and b
    ld a, [bc]
    ld sp, $c20c
    dec d
    and b

jr_01d_5733:
    ld [$0c41], sp
    pop bc
    ld d, b
    and b
    ld a, [bc]
    ld sp, $c20c
    dec d

jr_01d_573e:
    and b
    add hl, bc
    ld b, c
    inc c
    pop bc
    ld d, b
    and b

jr_01d_5745:
    dec bc
    dec hl
    inc c
    jp nz, $a015

    ld a, [bc]
    dec sp
    inc c
    pop bc
    ld d, b
    and b
    inc c

jr_01d_5752:
    dec hl
    inc c
    jp nz, $a015

    dec bc
    dec sp
    inc c
    pop bc

jr_01d_575b:
    ld d, b
    and b
    dec c
    ld a, [hl+]
    inc c
    jp nz, $3a15

    inc c
    pop bc
    ld d, b
    ld a, [hl+]
    inc c
    jp nz, $3a15

    inc c
    pop bc
    ld d, b
    jr z, jr_01d_577c

    jp nz, Jump_000_3815

    inc c
    and b
    inc bc
    pop bc
    jr nz, jr_01d_57b1

    inc c
    pop bc
    ld a, a

jr_01d_577c:
    and b
    dec bc
    jp nz, Jump_000_3520

    inc c
    pop bc
    ld b, b
    ld b, l
    inc c
    and b
    inc bc
    pop bc
    ld h, b

jr_01d_578a:
    ld b, l
    jr jr_01d_573e

    db $fc
    ld d, a
    ld bc, $0ba0
    pop bc
    cpl
    inc [hl]
    inc c
    inc [hl]
    inc c
    ld b, h
    inc c
    ld b, h
    inc c
    inc [hl]
    inc c
    inc [hl]
    inc c
    inc h
    inc c
    and b
    rlca
    ret nz

    cp $19
    ld c, b
    pop bc
    ld a, a
    and b
    ld b, $19
    jr jr_01d_5752

    rrca
    ret nz

jr_01d_57b1:
    cp $27
    jr nc, @-$5e

    ld b, $c1
    ld d, b
    daa
    jr jr_01d_575b

    inc c
    jr z, @+$08

    add hl, hl
    ld b, $2a
    ld b, $2b
    ld b, $b0
    nop
    rst $38
    ld bc, $02ff
    ld a, [bc]
    db $fd
    cp $a1
    ld a, [bc]
    and b
    ld [bc], a
    and d
    rst $38
    jr nz, jr_01d_5805

    and b
    inc b
    jr nz, jr_01d_57f1

    and b
    ld b, $20
    inc c
    and b
    ld [bc], a
    rla
    ld b, $13
    ld b, $10
    ld c, b
    and b
    inc b
    db $10
    jr jr_01d_578a

    ld [bc], a
    rla
    inc c
    and d
    dec d
    and c
    inc bc

jr_01d_57f1:
    ld [hl-], a
    inc c
    ld sp, $300c
    inc c
    dec hl
    inc c
    ld a, [hl+]
    inc c
    add hl, hl
    inc c
    jr z, jr_01d_580b

    and c
    ld [$0c27], sp
    ld h, $0c

jr_01d_5805:
    dec h
    inc c
    inc h
    inc c
    inc hl
    inc c

jr_01d_580b:
    daa
    inc c
    and c
    ld a, [bc]
    rla
    inc c
    and b
    ld b, $17
    inc c
    and b
    ld [bc], a
    and c
    ld a, [bc]
    jr nz, jr_01d_5827

    and c
    ld [$0c33], sp
    inc sp
    inc c
    and b
    ld b, $33
    inc c
    and b
    ld [bc], a

jr_01d_5827:
    and c
    ld a, [bc]
    add hl, de
    inc c
    and c
    ld [$0c33], sp
    inc sp
    inc c
    and b
    ld b, $33
    inc c
    and b
    ld [bc], a
    and d

jr_01d_5838:
    jr nc, @-$5d

    ld a, [bc]
    jr nz, jr_01d_5849

    and c
    ld [$0c33], sp
    and c
    ld a, [bc]
    jr nz, jr_01d_5851

    and c
    ld [$0c33], sp

jr_01d_5849:
    and c
    ld a, [bc]
    add hl, de
    inc c
    and c
    ld [$0c33], sp

jr_01d_5851:
    and c
    ld a, [bc]
    add hl, de
    inc c
    and c
    ld [$0c30], sp
    or c
    db $fc
    add hl, sp
    nop
    and c
    ld a, [bc]
    and d
    rst $38
    db $10
    inc c
    and c
    ld [$15a2], sp
    dec [hl]
    inc c
    inc [hl]
    inc c
    inc sp
    inc c
    ld [hl-], a
    inc c
    ld sp, $300c
    inc c
    dec hl
    inc c
    and b
    ld [bc], a
    and c
    ld a, [bc]
    jr jr_01d_5887

    and c
    ld [$0c2b], sp
    dec hl
    inc c
    and b
    ld b, $2b
    inc c
    and b
    ld [bc], a

jr_01d_5887:
    and c
    ld a, [bc]
    dec d
    inc c
    and c
    ld [$0c2b], sp
    dec hl
    inc c
    and b
    ld b, $2b
    inc c
    and d
    jr nc, jr_01d_5838

    ld [bc], a
    and c
    ld a, [bc]
    jr jr_01d_58a9

    and c
    ld [$0c2b], sp
    and c
    ld a, [bc]
    jr jr_01d_58b1

    and c
    ld [$0c2b], sp

jr_01d_58a9:
    and c
    ld a, [bc]
    dec d
    inc c
    and c
    ld [$0c2b], sp

jr_01d_58b1:
    and c
    ld a, [bc]
    dec d
    inc c
    and c
    ld [$0c29], sp
    or c
    db $fc
    ld l, c
    nop
    and c
    ld a, [bc]
    and d
    rst $38
    ld a, [bc]
    inc c
    and d
    dec d
    and c
    ld [$0c31], sp
    jr nc, jr_01d_58d7

    dec hl
    inc c
    ld a, [hl+]
    inc c
    add hl, hl
    inc c
    jr z, @+$0e

    daa
    inc c
    and c
    ld a, [bc]

jr_01d_58d7:
    and d
    rst $38
    ld a, [bc]
    inc c
    and c
    dec bc
    and d
    jr nz, jr_01d_58fa

    inc c
    and b
    ld b, $1a
    inc c
    and b
    ld [bc], a
    dec h
    inc c
    and b
    ld b, $25
    inc c
    and b
    ld [bc], a
    ld a, [de]
    inc c
    and b
    ld b, $1a
    inc c
    and c
    ld a, [bc]
    and b
    ld [bc], a
    ld a, [bc]

jr_01d_58fa:
    inc c
    add hl, de
    jr @+$1b

    jr @+$21

    inc c
    and c
    dec bc
    inc h
    inc c
    jr nz, @+$0e

    add hl, de
    inc c
    and c
    ld a, [bc]
    and d
    rst $38
    ld [de], a
    inc c
    and c
    dec bc
    and d
    jr nz, jr_01d_5936

    inc c
    and b
    ld b, $22
    inc c
    and b
    ld [bc], a
    add hl, hl
    inc c
    and b
    ld b, $29
    inc c
    and b
    ld [bc], a
    dec h
    inc c
    and b
    ld b, $25
    inc c
    and b
    ld [bc], a
    ld [hl+], a
    inc c
    and c
    ld a, [bc]
    rla
    jr jr_01d_5949

    jr @+$21

    inc c
    and c

jr_01d_5936:
    dec bc
    ld [hl+], a
    inc c
    dec de
    inc c
    rla
    inc c
    and c
    ld a, [bc]
    and d
    rst $38
    ld [de], a
    inc c
    and c
    dec bc
    and d
    jr nz, jr_01d_596a

    inc c

jr_01d_5949:
    and b
    ld b, $22
    inc c
    and b
    ld [bc], a
    add hl, hl
    inc c
    and b
    ld b, $29
    inc c
    and b
    ld [bc], a
    ld [hl+], a
    inc c
    and b
    ld b, $22
    inc c
    and b
    ld [bc], a
    ld [de], a
    inc c
    and c
    ld a, [bc]
    ld hl, $2118
    jr @+$21

    inc c
    and c

jr_01d_596a:
    dec bc
    jr z, jr_01d_5979

    inc h
    inc c
    ld hl, $a10c
    ld a, [bc]
    and d
    rst $38
    ld d, $0c
    and c
    dec bc

jr_01d_5979:
    and d
    jr nz, jr_01d_59a2

    inc c
    and b
    ld b, $26
    inc c
    and b
    ld [bc], a
    ld sp, $a00c
    ld b, $31
    inc c

jr_01d_5989:
    and b
    ld [bc], a
    add hl, hl
    inc c
    and b
    ld b, $29
    inc c
    and b
    ld [bc], a
    ld h, $0c
    and c
    ld a, [bc]
    dec de
    jr jr_01d_59b5

    jr jr_01d_59bb

    inc c
    and c
    dec bc
    ld h, $0c
    ld [hl+], a

jr_01d_59a2:
    inc c
    dec de
    inc c
    and d
    jr nc, jr_01d_5949

    ld a, [bc]
    ld d, $0c
    and c
    dec bc
    ld h, $0c
    or e
    db $fc
    ldh a, [rP1]
    and c
    ld a, [bc]

jr_01d_59b5:
    add hl, de
    inc c
    and c
    dec bc
    add hl, hl
    inc c

jr_01d_59bb:
    or e
    db $fc
    or $00
    and c
    ld a, [bc]
    jr jr_01d_59cf

    and c
    dec bc
    jr nc, jr_01d_59d3

    and b
    ld b, $30
    inc c
    and b
    ld [bc], a
    and d
    dec h

jr_01d_59cf:
    jr c, @+$0e

    and c
    ld a, [bc]

jr_01d_59d3:
    and d
    jr nc, jr_01d_59f7

    inc c
    and c
    dec bc
    ld [hl-], a
    inc c
    and b
    ld b, $32
    inc c
    and b
    ld [bc], a
    and d
    dec h
    jr c, @+$0e

    and d
    jr nc, jr_01d_5989

    ld a, [bc]
    ld d, $0c
    and c
    dec bc
    ld h, $0c
    and b
    ld b, $26
    inc c
    and b
    ld [bc], a
    and d

jr_01d_59f6:
    dec h

jr_01d_59f7:
    ld h, $0c
    and c

jr_01d_59fa:
    ld a, [bc]
    and d
    jr nc, jr_01d_5a1e

    inc c
    and c

jr_01d_5a00:
    dec bc
    jr nc, jr_01d_5a0f

    and b

jr_01d_5a04:
    ld b, $30
    inc c
    and b
    ld [bc], a
    and d
    dec h
    ld [hl], $0c
    and c

jr_01d_5a0e:
    ld a, [bc]

jr_01d_5a0f:
    and d
    rst $38
    dec d
    inc c
    and b
    inc b
    dec d
    inc c
    and c
    dec bc
    and b
    ld [bc], a
    ld a, [de]
    inc c
    and b

jr_01d_5a1e:
    inc b
    ld a, [de]
    inc c
    and b
    ld [bc], a
    inc hl
    inc c
    and b
    inc b
    inc hl
    inc c
    and b
    ld [bc], a
    jr z, @+$0e

jr_01d_5a2d:
    and b
    inc b
    jr z, jr_01d_5a3d

    and b
    ld [bc], a
    ld hl, $a00c
    inc b
    ld hl, $a00c
    ld [bc], a
    ld h, $0c

jr_01d_5a3d:
    and b
    inc b
    ld h, $0c
    and b
    ld [bc], a
    jr nz, jr_01d_5a51

    and b
    inc b
    jr nz, @+$0e

    and b
    ld [bc], a
    dec h
    inc c
    and b
    inc b
    dec h
    inc c

jr_01d_5a51:
    and b
    ld [bc], a
    dec de
    jr nc, jr_01d_59f6

    inc b
    dec de
    jr jr_01d_59fa

    ld [bc], a
    dec de
    jr jr_01d_5a78

    jr nc, jr_01d_5a00

    inc b
    ld a, [de]
    jr jr_01d_5a04

    ld [bc], a
    ld a, [de]
    jr jr_01d_5a81

    ld c, b
    and b
    inc b
    add hl, de
    jr jr_01d_5a0e

    ld [bc], a
    jr nz, jr_01d_5ab9

    and b
    inc b
    jr nz, jr_01d_5a8d

    or b
    nop
    rst $38

jr_01d_5a78:
    ld bc, $0f00
    nop
    db $fd
    cp $1f
    ld h, b
    cp e

jr_01d_5a81:
    db $fc
    inc bc
    nop
    rra
    ret nz

    or a
    db $fc
    ld b, $00
    rra
    jr jr_01d_5a2d

jr_01d_5a8d:
    ld a, [bc]
    ld sp, $1f01
    rla
    and b
    ld a, [bc]
    ld sp, $1f01
    rla
    and b
    ld a, [bc]
    ld sp, $1f01
    rla
    and b
    rrca
    ld b, c
    ld bc, $051f
    and b
    rlca
    ld b, c
    ld bc, $051f
    and b
    dec bc
    ld b, c
    ld bc, $051f
    and b
    dec b
    ld b, c
    ld bc, $051f
    and b
    rrca
    ld b, c

jr_01d_5ab9:
    ld bc, $051f
    and b
    rlca
    ld b, c
    ld bc, $051f
    and b
    dec c
    ld b, c
    ld bc, $051f
    and b
    dec b
    ld b, c
    ld bc, $051f
    and b
    rrca
    ld d, c
    ld [bc], a
    ld d, e
    ld [bc], a
    and b
    inc b
    ld d, [hl]
    inc b
    rra
    db $10
    rra
    jr jr_01d_5a8d

    nop
    rst $38
    ld bc, $0b01
    nop
    db $fd
    cp $a2
    nop
    and b
    dec bc
    jp nz, Jump_000_2b15

    ld b, $28
    ld b, $c1
    jr nc, @+$2d

    inc c
    and b
    ld b, $2b
    inc c
    rra
    ld c, b
    and b
    dec c
    jp nz, $a015

    rrca
    dec d
    inc c
    dec d
    ld b, $15
    ld b, $c1
    jr nc, @+$17

    inc c
    and b
    ld b, $15
    inc c
    rra
    inc h
    pop bc
    jr nc, @-$5c

    ld [bc], a
    and b
    dec b
    rra
    ld b, $12
    ld b, $11
    ld b, $12
    ld b, $14
    ld b, $15
    ld b, $14
    ld b, $12
    ld b, $11
    ld b, $12
    ld b, $11
    ld b, $12
    ld b, $a0
    ld c, $22
    ld b, $25
    ld b, $28
    ld b, $2b
    ld b, $a0
    inc c
    ld [hl-], a
    ld b, $35
    ld b, $38
    ld b, $3b
    ld b, $a0
    dec b
    dec sp
    ld b, $15
    ld b, $14
    ld b, $12
    ld b, $11
    ld b, $12
    ld b, $11
    ld b, $12
    ld b, $14
    ld b, $15
    ld b, $14
    ld b, $12
    ld b, $11
    ld b, $12
    ld b, $11
    ld b, $12
    ld b, $14
    ld b, $15
    ld b, $14
    ld b, $12
    ld b, $11
    ld b, $12
    ld b, $11
    ld b, $12
    ld b, $14
    ld b, $15
    ld b, $22
    ld b, $25
    ld b, $29
    ld b, $31
    ld b, $29
    ld b, $31
    ld b, $34
    ld b, $38
    ld b, $34
    ld b, $38
    ld b, $3b
    ld b, $43
    ld b, $3b
    ld b, $43
    ld b, $46
    ld b, $4a
    ld b, $14
    ld b, $12
    ld b, $a0
    dec c
    dec d
    ld b, $14
    ld b, $15
    ld b, $17
    ld b, $18
    ld b, $17
    ld b, $15
    ld b, $14
    ld b, $b1
    db $fc
    ld e, [hl]
    nop
    dec d
    ld b, $14
    ld b, $15
    ld b, $17
    ld b, $a0
    dec bc
    jr @+$08

    rla
    ld b, $15
    ld b, $14
    ld b, $a0
    dec c
    dec d
    ld b, $14
    ld b, $15
    ld b, $17
    ld b, $18
    ld b, $17
    ld b, $15
    ld b, $14
    ld b, $b4
    db $fc
    ld [hl], e
    nop
    and b
    ld b, $14
    ld b, $1f
    ld b, $a0
    ld a, [bc]
    jp nz, $2015

    inc c
    jr nz, jr_01d_5bf3

    pop bc
    jr nc, @+$23

    ld [de], a
    and b
    dec b
    ld hl, $a006
    dec bc
    pop bc
    ld d, b

jr_01d_5bf3:
    jr nz, jr_01d_5c01

    jp nz, $2115

    inc c
    ld [hl+], a
    inc c
    inc hl
    ld b, $23
    ld b, $a0
    inc b

jr_01d_5c01:
    inc hl
    ld b, $a0
    dec bc
    inc hl
    ld b, $a0
    inc c
    inc h
    ld b, $24
    ld b, $a0
    inc b
    inc h
    ld b, $a0
    inc c
    inc h
    ld b, $a0
    dec c
    dec h
    ld b, $25
    ld b, $a0
    inc b
    dec h
    ld b, $a0
    dec c
    and b
    rrca
    dec h
    ld b, $26
    ld b, $26
    ld b, $a0
    dec b
    ld h, $06
    and b
    rrca
    ld h, $06
    daa
    inc c
    inc hl
    inc c
    and b
    ld b, $23
    inc c
    and b
    dec c
    inc h
    inc c
    and b
    ld b, $24
    inc c
    and b
    inc c
    pop bc
    ld a, a
    dec h
    inc c
    ld sp, $a024
    ld b, $31
    inc c
    and b
    inc c
    ld hl, $2406
    ld b, $b5
    db $fc
    cp b
    nop
    and b
    ld a, [bc]
    pop bc
    jr nc, jr_01d_5c74

    inc c
    or e
    db $fc
    cp [hl]
    nop
    and b
    ld b, $18
    inc c
    and b
    ld a, [bc]
    ld [hl+], a
    inc c
    ld [hl+], a
    inc c
    ld [hl+], a
    inc c
    jr z, jr_01d_5c7b

    or e
    db $fc
    rst $00
    nop
    and b

jr_01d_5c74:
    ld b, $28
    inc c
    and b
    ld a, [bc]
    ld [hl-], a
    inc c

jr_01d_5c7b:
    ld [hl-], a
    inc c
    ld [hl-], a
    inc c
    xor a
    ld bc, $01a2
    and b
    rrca
    and c
    nop
    ret nz

jr_01d_5c88:
    cp $14
    inc h
    pop bc
    ld a, a
    and b
    ld [$0c14], sp
    and b
    dec c
    ret nz

    cp $17
    inc h
    pop bc
    ld a, a
    and b
    ld [$0c17], sp
    and b
    dec c
    ret nz

    cp $1a
    inc h
    pop bc
    ld a, a
    and b
    ld [$0c1a], sp
    and b
    dec c
    ret nz

    cp $21
    inc h
    pop bc
    ld a, a
    and b
    ld [$0c21], sp
    and b
    dec c
    ret nz

    cp $20
    inc h
    pop bc
    ld a, a
    and b
    ld [$0c20], sp
    and b
    dec c
    ret nz

    cp $25
    inc h
    pop bc
    ld a, a
    and b
    ld [$0c25], sp
    and b
    dec c
    ret nz

    cp $24
    inc h
    pop bc
    ld a, a
    and b
    ld [$0c24], sp
    and b
    dec c
    ret nz

    cp $2a
    inc h
    pop bc
    ld a, a
    and b
    ld [$0c2a], sp
    pop bc
    jr nc, jr_01d_5c88

    add hl, bc
    ld h, $0c
    or e
    db $fc
    dec b
    ld bc, $05a0
    ld h, $0c
    and b
    ld a, [bc]
    ld h, $0c
    and b
    inc c
    ld h, $0c
    and b
    dec c
    ld h, $0c
    add hl, hl
    inc c
    or e
    db $fc
    db $10
    ld bc, $06a0
    add hl, hl
    inc c
    and b
    ld c, $29
    inc c
    add hl, hl
    inc c
    and b
    rrca
    add hl, hl
    inc c
    pop bc
    ccf
    and b
    rrca
    jr c, @+$1a

    and b
    dec c
    pop bc
    jr nc, @+$39

    ld b, $36
    ld b, $35
    ld b, $34
    ld b, $33
    ld b, $32
    ld b, $31
    ld b, $30
    ld b, $2b
    ld b, $2a
    ld b, $29
    ld b, $28
    ld b, $27
    ld b, $26
    ld b, $25
    ld b, $24
    ld b, $23
    ld b, $22
    ld b, $21
    ld b, $20
    ld b, $1b
    ld b, $1a
    ld b, $19
    ld b, $18
    ld b, $17
    ld b, $16
    ld b, $15
    ld b, $14
    ld b, $a0
    inc c
    pop bc
    ld d, b
    rra
    inc c
    ld d, $0c
    and b
    ld [$0c16], sp
    and b
    inc c
    ld d, $0c
    or [hl]
    db $fc
    ccf
    ld bc, $08a0
    ld d, $0c
    and b
    inc c
    add hl, de
    inc c
    and b
    ld [$0c19], sp
    and b
    inc c
    add hl, de
    inc c
    or d
    db $fc
    ld c, c
    ld bc, $08a0
    add hl, de
    inc c
    and b
    inc c
    dec de
    inc c
    and b
    ld [$0c1b], sp
    and b
    inc c
    dec de
    inc c
    or d
    db $fc
    ld d, e
    ld bc, $08a0
    dec de
    inc c
    and b
    inc c
    jr nz, @+$0e

    and b
    ld [$0c20], sp
    and b
    inc c
    jr nz, jr_01d_5dad

    or d
    db $fc
    ld e, l
    ld bc, $08a0
    jr nz, jr_01d_5db5

    and b
    inc c
    inc hl
    inc c

jr_01d_5dad:
    and b
    ld [$0c23], sp
    and b
    inc c
    inc hl
    inc c

jr_01d_5db5:
    and b
    ld c, $20
    ld b, $23
    ld b, $27
    ld b, $2a
    ld b, $32
    ld b, $36
    ld b, $3a
    ld b, $42
    ld b, $a0
    inc c
    pop bc
    jr nc, jr_01d_5ded

    ld b, $21
    ld b, $a0
    ld [$0621], sp
    and b
    inc c
    ld hl, $b306
    db $fc
    db $76
    ld bc, $0620
    jr nz, jr_01d_5de5

    and b
    ld [$0620], sp
    and b
    inc c

jr_01d_5de5:
    jr nz, jr_01d_5ded

    or e
    db $fc
    ld a, [hl]
    ld bc, $061b

jr_01d_5ded:
    dec de
    ld b, $a0
    ld [$061b], sp
    and b
    inc c
    dec de
    ld b, $b1
    db $fc
    add [hl]
    ld bc, $061a
    ld a, [de]
    ld b, $a0
    ld [$061a], sp
    and b
    inc c
    ld a, [de]
    ld b, $b1
    db $fc
    adc [hl]
    ld bc, $0619
    add hl, de
    ld b, $a0
    ld [$0619], sp
    and b
    inc c
    add hl, de
    ld b, $18
    ld b, $18
    ld b, $a0
    ld [$0618], sp
    and b
    inc c
    jr @+$08

    rla
    ld b, $1b
    ld b, $22
    ld b, $26
    ld b, $29
    ld b, $31
    ld b, $34
    ld b, $38
    ld b, $af
    ld bc, $01a2
    and b
    ld a, [bc]
    and c
    nop
    pop bc
    ld d, b
    ld hl, $2406
    ld b, $bf
    db $fc
    xor a
    ld bc, $20c1
    inc hl
    ld b, $23
    ld b, $a0
    ld [$0623], sp
    and b
    inc c
    inc hl
    ld b, $22
    ld b, $22
    ld b, $a0
    ld [$0622], sp
    and b
    inc c
    ld [hl+], a
    ld b, $21
    ld b, $21
    ld b, $a0
    ld [$0621], sp
    and b
    inc c
    ld hl, $2006
    ld b, $20
    ld b, $a0
    ld [$0620], sp
    and b
    inc c
    jr nz, @+$08

    ret nz

    cp $1b
    ld c, b
    and b
    ld [$7fc1], sp
    dec de
    jr @-$5e

    inc c
    db $c2, $15, $19

    inc c
    daa
    inc c
    or e
    db $fc
    db $d3
    ld bc, $0c17
    ld a, [hl+]
    inc c
    or e
    db $fc
    rst $10
    ld bc, $0c19
    daa
    inc c
    or e
    db $fc
    db $db
    ld bc, $30c1
    inc h
    ld b, $27
    ld b, $2b
    ld b, $34
    ld b, $37
    ld b, $3b
    ld b, $44
    ld b, $47
    ld b, $23
    ld b, $27
    ld b, $29
    ld b, $31
    ld b, $33
    ld b, $37

jr_01d_5eba:
    ld b, $39
    ld b, $41
    ld b, $c0
    cp $12
    inc h
    and b
    ld [$0c12], sp
    and b
    inc c
    dec d
    inc h
    and b
    ld [$0c15], sp
    and b
    inc c
    jr jr_01d_5ef7

    and b
    ld [$0c18], sp
    and b
    inc c
    rla
    inc h
    and b
    ld [$0c17], sp
    and b
    inc c
    dec d
    inc h
    and b
    ld [$0c15], sp
    and b
    inc c
    inc de
    inc h
    and b
    ld [$0c13], sp
    and b
    inc c
    ld [de], a
    inc h
    and b
    ld [$0c12], sp

jr_01d_5ef7:
    and b
    inc c
    ld de, $a024
    ld [$0c11], sp
    and b
    inc c
    ld [de], a
    xor b
    and b
    ld [$7fc1], sp
    ld [de], a
    jr jr_01d_5eba

    nop
    rst $38
    ld bc, $0c01
    nop
    db $fd
    cp $a2
    nop
    and b
    inc c
    jp nz, Jump_000_3415

    ld b, $34
    ld b, $c1
    jr nc, jr_01d_5f53

    inc c
    and b
    ld b, $34
    ld b, $a2
    ld [bc], a
    and b
    dec b
    dec d

jr_01d_5f29:
    ld b, $14
    ld b, $12
    ld b, $11

jr_01d_5f2f:
    ld b, $12
    ld b, $11
    ld b, $12
    ld b, $14
    ld b, $15
    ld b, $14
    ld b, $12
    ld b, $11
    ld b, $12
    ld b, $a2
    ld bc, $15c2
    and b
    rrca
    dec de
    inc c
    dec de
    ld b, $1b
    ld b, $c1
    jr nc, jr_01d_5f6c

    inc c
    and b

jr_01d_5f53:
    ld b, $1b
    ld b, $a2
    ld [bc], a
    ld [de], a
    ld b, $11

jr_01d_5f5b:
    ld b, $12
    ld b, $14
    ld b, $15
    ld b, $14
    ld b, $12
    ld b, $a0
    dec c
    pop bc
    jr nc, @-$5c

    nop

jr_01d_5f6c:
    ld [hl-], a
    ld b, $39
    ld b, $c0
    cp $38
    sub b
    pop bc
    ld a, a
    and b
    ld [$08a3], sp
    jr c, @+$1a

    and b
    rrca
    pop bc
    jr nc, @+$39

    ld b, $35
    ld b, $c1
    ld a, a
    ld [hl-], a
    jr jr_01d_5f29

    ld b, $32
    jr @+$21

jr_01d_5f8d:
    jr jr_01d_5f2f

    dec c
    and d
    ld [bc], a
    pop bc
    jr nz, jr_01d_5fb7

jr_01d_5f95:
    ld b, $25
    ld b, $29
    ld b, $31
    ld b, $29
    ld b, $31
    ld b, $34
    ld b, $38
    ld b, $34
    ld b, $38
    ld b, $3b
    ld b, $43
    ld b, $3b
    ld b, $43
    ld b, $46
    ld b, $4a
    ld b, $1f
    jr @-$3d

jr_01d_5fb7:
    jr nc, jr_01d_5f5b

    nop
    ld [hl-], a
    ld b, $39
    ld b, $c0

jr_01d_5fbf:
    cp $38
    ld d, h
    pop bc
    ld a, a
    and b
    ld [$1838], sp
    and d
    ld [bc], a
    and b
    rrca
    pop bc
    dec h
    and d
    ld [bc], a
    ld [hl+], a
    ld b, $25
    ld b, $28
    ld b, $2b
    ld b, $a0
    ld [$062b], sp
    rra
    ld e, $a2
    nop
    and b
    dec c
    pop bc
    jr nc, @+$3b

    ld b, $40
    ld b, $c1
    ld a, a
    ld b, d
    jr jr_01d_5f8d

    ld [$1842], sp
    rra
    jr jr_01d_5f95

    ld [bc], a
    and b
    dec c
    pop bc
    rra
    ld [hl+], a
    ld b, $25
    ld b, $29
    ld b, $31
    ld b, $29
    ld b, $31
    ld b, $34
    ld b, $38
    ld b, $34
    ld b, $38
    ld b, $3b
    ld b, $43
    ld b, $3b
    ld b, $43
    ld b, $46
    ld b, $4a
    ld b, $a0
    ld [$0c4a], sp
    rra
    jr jr_01d_5fbf

    ld a, [bc]
    jp nz, Jump_000_2715

    inc c
    daa
    inc c
    pop bc
    jr nc, jr_01d_6052

    ld [de], a
    and b
    dec b
    add hl, hl
    ld b, $a0
    ld a, [bc]
    pop bc
    ld d, b
    daa
    inc c
    jp nz, Jump_000_2915

    inc c
    ld a, [hl+]
    inc c
    pop bc
    cpl
    dec hl
    ld b, $2b
    ld b, $a0
    inc b
    dec hl
    ld b, $a0
    ld a, [bc]
    dec hl
    ld b, $a0
    inc c
    jr nc, jr_01d_6052

    jr nc, jr_01d_6054

    and b
    inc b
    jr nc, jr_01d_6058

jr_01d_6052:
    and b
    inc c

jr_01d_6054:
    jr nc, @+$08

    and b
    dec c

jr_01d_6058:
    ld sp, $3106
    ld b, $a0
    ld b, $31
    ld b, $a0
    dec c
    ld sp, $a006
    ld c, $32
    ld b, $32
    ld b, $a0
    ld b, $32
    ld b, $a0
    ld c, $32
    ld b, $c1
    ld e, a
    inc sp
    inc c
    ld h, $0c
    and b
    ld b, $26
    inc c
    and b
    ld c, $27
    inc c
    and b
    ld b, $27
    inc c
    and b
    ld c, $28
    inc c
    pop bc
    ld a, a
    inc [hl]
    inc h
    and b
    ld b, $34
    inc c
    and b
    ld c, $24
    ld b, $29
    ld b, $b5
    db $fc
    jp $c200


    ld d, b
    and b
    ld a, [bc]
    dec de
    inc c
    or e
    db $fc
    ret


    nop
    and b
    ld b, $1b
    inc c
    and b
    ld a, [bc]
    dec h
    inc c
    dec h
    inc c
    dec h
    inc c
    dec hl
    inc c
    or e
    db $fc
    jp nc, $a000

    ld b, $2b
    inc c
    and b
    ld a, [bc]
    dec [hl]
    inc c
    dec [hl]
    inc c
    dec [hl]
    inc c
    xor a
    ld bc, $02a2
    and b
    add hl, bc
    and c
    nop
    pop bc
    jr nz, jr_01d_6104

    ld b, $43
    ld b, $39
    ld b, $3b
    ld b, $43
    ld b, $37
    ld b, $39
    ld b, $43
    ld b, $b7
    db $fc
    ldh [rP1], a
    and b
    add hl, bc
    pop bc
    jr nc, jr_01d_610e

    inc c
    or e
    db $fc
    db $ec
    nop
    and b
    dec b
    add hl, hl
    inc c
    and b
    ld a, [bc]
    add hl, hl
    inc c
    and b
    dec c
    add hl, hl
    inc c
    and b
    ld c, $29
    inc c
    jr nc, jr_01d_6108

    or e
    db $fc
    rst $30
    nop
    and b
    ld b, $30
    inc c

jr_01d_6104:
    and b
    ld c, $30
    inc c

jr_01d_6108:
    jr nc, jr_01d_6116

    and b
    rrca
    jr nc, jr_01d_611a

jr_01d_610e:
    and b
    ld b, $c0
    cp $38
    sub b
    pop bc

jr_01d_6115:
    ld a, a

jr_01d_6116:
    and b
    inc bc
    jr c, jr_01d_614a

jr_01d_611a:
    rra
    inc c
    and b
    inc c
    pop bc
    jr nc, @+$1b

    inc c
    and b
    ld b, $19
    inc c
    and b
    inc c
    add hl, de
    inc c
    or l
    db $fc
    dec bc
    ld bc, $06a0
    add hl, de
    inc c
    and b
    dec c
    and d
    ld [bc], a
    ld h, $06
    add hl, hl
    ld b, $c1
    ld h, b
    ld sp, $3224

jr_01d_613f:
    inc c
    ld sp, $300c
    ld b, $2b
    ld b, $c2

jr_01d_6147:
    dec d
    ld a, [hl+]
    inc c

jr_01d_614a:
    scf
    inc c
    pop bc
    ld a, a
    ld [hl], $0c
    jp nz, Jump_000_3515

    inc c
    ret nz

    cp $a3
    ld a, [bc]
    ld b, h
    jr nc, @-$5e

    ld [$7fc1], sp
    and e
    cp $44
    inc c
    and e
    ld a, [bc]
    and b
    ld c, $43
    ld b, $42
    ld b, $41
    ld b, $3a
    ld b, $39
    ld b, $36
    ld b, $35
    jr nc, jr_01d_6115

    ld [$00a3], sp
    dec [hl]
    inc c
    and b
    ld c, $a3
    ld a, [bc]
    inc [hl]
    ld b, $33
    ld b, $32
    inc c
    jp nz, Jump_01d_4015

    inc c
    ret nz

    cp $37
    inc a
    and b
    ld [$7fc1], sp
    and e
    nop
    scf
    inc c
    rra
    jr @-$5e

    ld c, $a3
    ld a, [bc]
    ret nz

    cp $39
    jr jr_01d_613f

    ld [$fec1], sp

jr_01d_61a2:
    and e
    nop
    add hl, sp
    jr jr_01d_6147

    ld c, $a3
    ld a, [bc]
    ld b, e
    ld [de], a
    and b
    ld [$0643], sp
    and b
    ld c, $42

jr_01d_61b3:
    ld [de], a
    and b
    ld [$0642], sp
    and b
    ld c, $41
    inc c
    jr c, @+$0e

    scf
    ld [de], a
    and b
    ld [$0637], sp
    and b
    ld c, $36
    ld [de], a
    and b
    ld [$0636], sp
    and b
    ld c, $35
    ld b, $34
    ld b, $33
    ld b, $2a
    ld b, $29
    ld a, [hl+]
    and b
    ld [$0629], sp
    and e
    nop
    and b
    ld c, $a3
    ld a, [bc]
    ld a, [hl+]
    ld [de], a
    and b
    ld [$062a], sp
    and b
    ld c, $2b
    ld c, b
    and b
    ld [$00a3], sp
    dec hl
    jr jr_01d_61a2

    ld bc, $01a2
    and b
    ld c, $a1
    nop
    ret nz

    cp $1f
    jr @+$2b

    inc c
    and b
    ld [$0c29], sp
    and b
    ld c, $c1
    jr nc, jr_01d_6232

    db $10
    add hl, hl
    db $10
    daa
    db $10
    ret nz

    cp $30
    jr jr_01d_61b3

    ld [$0c30], sp
    and b
    ld c, $2a
    inc c
    add hl, hl
    jr @-$5e

    ld [$0c29], sp
    and b
    ld c, $27
    inc c
    ld h, $06
    daa
    ld b, $29
    ld c, b
    and b
    ld [$1829], sp
    rra
    inc c
    and b
    rrca

jr_01d_6232:
    daa
    ld b, $a0
    add hl, bc
    jr z, jr_01d_623e

    dec hl
    ld b, $32
    ld b, $a0
    rrca

jr_01d_623e:
    dec h
    ld b, $a0
    add hl, bc
    jr z, jr_01d_624a

    dec hl
    ld b, $32
    ld b, $a0
    rrca

jr_01d_624a:
    inc hl
    ld b, $a0
    add hl, bc
    jr z, jr_01d_6256

    dec hl
    ld b, $32
    ld b, $a0
    dec c

jr_01d_6256:
    ld [hl+], a
    xor b
    pop bc
    ld a, a
    and b
    ld [$1822], sp
    and b
    ld c, $c0
    cp $21
    ld c, b
    and b
    ld [$08a0], sp
    ld hl, $a018
    ld c, $c0
    cp $1b
    inc h
    and b
    ld [$0c1b], sp
    and b
    ld c, $21
    inc h
    and b
    ld [$0c21], sp
    and b
    ld a, [bc]
    and d
    ld [bc], a
    pop bc
    rra
    ld [hl+], a
    ld b, $25
    ld b, $28
    ld b, $2b
    ld b, $32
    ld b, $35
    ld b, $38
    ld b, $3b
    ld b, $42
    ld b, $41
    ld b, $39
    ld b, $36
    ld b, $32
    ld b, $31
    ld b, $29
    ld b, $26
    ld b, $b5
    db $fc
    cp e
    ld bc, $00b0
    rst $38
    ld bc, $0230
    ld [bc], a
    cp $fe
    and b
    ld [bc], a
    and c
    ld [bc], a
    db $fd
    cp $22
    ld b, $21
    ld b, $22
    ld b, $24
    ld b, $25
    ld b, $24
    ld b, $22
    ld b, $21
    ld b, $b1
    db $fc
    ld b, $00
    cp c
    nop
    and d
    jr z, jr_01d_62f0

    inc c
    and d
    dec d
    jr z, jr_01d_62df

    jr z, jr_01d_62e1

    and d
    jr nc, jr_01d_62ff

    ld [de], a
    and b
    ld b, $27
    ld b, $a0
    ld [bc], a

jr_01d_62df:
    and d
    ld d, b

jr_01d_62e1:
    jr z, jr_01d_62ef

    and d

jr_01d_62e4:
    dec d
    daa
    inc c
    ld h, $0c
    and b
    inc b
    and d
    rst $38
    dec h
    ld [de], a

jr_01d_62ef:
    and b

jr_01d_62f0:
    ld b, $25
    ld b, $a0
    inc b
    inc h
    ld [de], a
    and b
    ld b, $24
    ld b, $a0
    ld [bc], a
    inc hl
    ld [de], a

jr_01d_62ff:
    and b
    inc b
    inc hl
    ld b, $a0
    ld [bc], a
    ld [hl+], a
    ld [de], a
    and b
    inc b
    ld [hl+], a
    ld b, $a0
    ld [bc], a
    ld hl, $320c
    inc c
    and b
    inc b
    ld [hl-], a
    inc c
    and b
    ld [bc], a
    jr nc, @+$0e

    and b
    inc b
    jr nc, jr_01d_6329

    and b
    ld [bc], a
    jr nc, jr_01d_632d

    ld h, $18
    and b
    ld b, $26
    inc c
    rra
    inc c

jr_01d_6329:
    and b
    ld [bc], a
    jr nc, jr_01d_633f

jr_01d_632d:
    and b
    inc b
    jr nc, jr_01d_6337

    and b
    ld [bc], a
    add hl, hl
    ld [de], a
    and b
    inc b

jr_01d_6337:
    add hl, hl
    ld b, $a0
    ld [bc], a
    ld a, [hl+]
    ld [de], a
    and b
    inc b

jr_01d_633f:
    ld a, [hl+]
    ld b, $a2
    jr nz, jr_01d_62e4

    ld [bc], a
    daa
    inc c
    daa
    inc c
    daa
    inc c
    dec h
    inc c
    and b
    ld b, $26
    inc c
    and b
    ld [bc], a
    ld sp, $310c
    inc c
    dec hl

jr_01d_6358:
    inc c
    scf
    inc c
    scf
    inc c
    scf
    inc c
    dec [hl]
    inc c
    and b
    ld b, $36
    inc c
    and b
    ld [bc], a
    ld b, c
    inc c
    ld b, c
    inc c
    dec sp
    inc c
    xor a
    ld bc, $ffa2
    and b
    ld [bc], a
    and c
    ld a, [bc]
    add hl, de
    inc h
    and b
    inc b
    add hl, de
    inc c
    and b
    ld [bc], a
    jr nz, jr_01d_63a3

    and b
    inc b
    jr nz, jr_01d_638f

    and b
    ld [bc], a
    inc hl
    inc h
    and b
    inc b
    inc hl
    inc c
    and b
    ld [bc], a
    ld h, $24

jr_01d_638f:
    and b
    inc b
    ld h, $0c
    and b
    ld [bc], a
    add hl, hl
    inc h
    and b
    inc b
    add hl, hl
    inc c
    and b
    ld [bc], a
    ld h, $24
    and b
    inc b
    ld h, $0c

jr_01d_63a3:
    and b
    ld [bc], a
    ld sp, $a024
    inc b
    ld sp, $a00c
    ld [bc], a
    dec hl
    inc h
    and b
    inc b
    dec hl
    inc c
    and c
    add hl, bc
    and d
    jr nz, jr_01d_6358

    ld [bc], a
    dec [hl]
    inc c
    dec [hl]
    inc c
    dec [hl]
    inc c
    inc sp
    inc c
    and b
    inc b
    inc sp
    inc c
    and b
    ld [bc], a
    ld [hl-], a
    inc c
    ld sp, $300c
    inc c
    and b
    ld [bc], a
    jr c, jr_01d_63dd

    jr c, jr_01d_63df

    jr c, jr_01d_63e1

    ld [hl], $0c
    and b
    inc b
    ld [hl], $0c
    and b
    ld [bc], a

jr_01d_63dd:
    dec [hl]
    inc c

jr_01d_63df:
    inc [hl]
    inc c

jr_01d_63e1:
    inc sp
    inc c
    and b
    ld b, $33
    inc c
    rra
    inc c
    and b
    ld [bc], a
    and c
    ld [bc], a
    ld b, h
    ld b, $43
    ld b, $42
    ld b, $41
    ld b, $40
    ld b, $3b
    ld b, $3a
    ld b, $39
    ld b, $38
    ld b, $37
    ld b, $36
    ld b, $35
    ld b, $34
    ld b, $33
    ld b, $32
    ld b, $31
    ld b, $30
    ld b, $2b
    ld b, $2a
    ld b, $29
    ld b, $28
    ld b, $27
    ld b, $26
    ld b, $25
    ld b, $24
    ld b, $23
    ld b, $22
    ld b, $21
    ld b, $a1
    add hl, bc
    and d
    rst $38
    inc hl
    inc c
    and b
    inc b
    inc hl
    inc c
    and b
    ld [bc], a
    ld a, [de]
    inc c
    ld [hl+], a
    inc c
    or e
    db $fc
    ret nz

    nop
    and c
    dec bc
    inc hl
    inc c
    and c
    add hl, bc
    ld h, $0c
    and c
    dec bc
    ld a, [de]
    inc c
    and c
    add hl, bc
    ld h, $0c
    and c
    dec bc
    inc de
    inc c
    and c
    add hl, bc
    ld h, $0c
    and c
    dec bc
    ld a, [de]
    inc c
    and c
    add hl, bc
    ld h, $0c
    and c
    dec bc
    dec d
    inc c
    and c
    add hl, bc
    jr z, jr_01d_646d

    and c
    dec bc
    jr nz, jr_01d_6471

    and c
    add hl, bc
    jr z, jr_01d_6475

    or c
    db $fc
    ret c

    nop

jr_01d_646d:
    and c
    dec bc
    ld d, $0c

jr_01d_6471:
    and c
    add hl, bc
    add hl, hl
    inc c

jr_01d_6475:
    and c
    dec bc
    ld hl, $a10c
    add hl, bc
    add hl, hl
    inc c
    or c
    db $fc
    ld [c], a
    nop
    and c
    dec bc
    add hl, de
    inc c
    and c
    add hl, bc
    jr nc, jr_01d_6495

    and c
    dec bc
    inc h
    inc c
    and c
    add hl, bc
    jr nc, @+$0e

    and c
    ld [bc], a
    jr z, @+$08

jr_01d_6495:
    jr nc, @+$08

    inc sp
    ld b, $37
    ld b, $3a
    ld b, $42
    ld b, $46
    ld b, $4a
    ld b, $a1
    add hl, bc
    and d
    db $10
    ld a, [hl+]
    ld b, $2a
    ld b, $a0
    inc b
    ld a, [hl+]
    ld b, $a0
    ld [bc], a
    ld a, [hl+]
    ld b, $b3
    db $fc
    rst $38
    nop
    add hl, hl
    ld b, $29
    ld b, $a0
    inc b
    add hl, hl
    ld b, $a0
    ld [bc], a
    add hl, hl
    ld b, $b3
    db $fc
    rlca
    ld bc, $0628
    jr z, jr_01d_64d1

    and b
    inc b
    jr z, jr_01d_64d5

    and b
    ld [bc], a

jr_01d_64d1:
    jr z, jr_01d_64d9

    or c
    db $fc

jr_01d_64d5:
    rrca
    ld bc, $0627

jr_01d_64d9:
    daa
    ld b, $a0
    inc b
    daa
    ld b, $a0
    ld [bc], a
    daa
    ld b, $b1
    db $fc
    rla
    ld bc, $0626
    ld h, $06
    and b
    inc b
    ld h, $06
    and b
    ld [bc], a
    ld h, $06
    dec h
    ld b, $25
    ld b, $a0
    inc b
    dec h
    ld b, $a0
    ld [bc], a
    dec h
    ld b, $a1
    ld [bc], a
    and d
    jr nz, @+$26

    ld b, $27
    ld b, $2b
    ld b, $32
    ld b, $36
    ld b, $39
    ld b, $41
    ld b, $44
    ld b, $af
    ld bc, $30a2
    and b
    ld [bc], a
    and c
    ld [bc], a
    ld a, [hl+]
    ld b, $31
    ld b, $bf
    db $fc
    add hl, sp
    ld bc, $10a2
    jr nc, jr_01d_652d

    jr nc, jr_01d_652f

    and b
    inc b
    jr nc, @+$08

jr_01d_652d:
    and b
    ld [bc], a

jr_01d_652f:
    jr nc, jr_01d_6537

    dec hl
    ld b, $2b
    ld b, $a0
    inc b

jr_01d_6537:
    dec hl
    ld b, $a0
    ld [bc], a
    dec hl
    ld b, $2a
    ld b, $2a
    ld b, $a0
    inc b
    ld a, [hl+]
    ld b, $a0
    ld [bc], a
    ld a, [hl+]
    ld b, $29
    ld b, $29
    ld b, $a0
    inc b
    add hl, hl
    ld b, $a0
    ld [bc], a
    add hl, hl
    ld b, $a2
    rst $38
    jr z, jr_01d_65a1

    and b
    inc b
    jr z, jr_01d_6575

    and d
    db $10
    and b
    ld [bc], a
    daa
    inc c
    inc sp
    inc c
    or e
    db $fc
    ld e, h
    ld bc, $0c24
    scf
    inc c
    or e
    db $fc
    ld h, b
    ld bc, $0c23
    inc [hl]
    inc c

jr_01d_6575:
    or e
    db $fc
    ld h, h
    ld bc, $30a2
    ld sp, $3406
    ld b, $37
    ld b, $41
    ld b, $44
    ld b, $47
    ld b, $51
    ld b, $54
    ld b, $29
    ld b, $33
    ld b, $37
    ld b, $39
    ld b, $41

jr_01d_6594:
    ld b, $43
    ld b, $47
    ld b, $49
    ld b, $a2
    rst $38
    ld [de], a
    inc h
    and b
    inc b

jr_01d_65a1:
    ld [de], a
    inc c
    and b
    ld [bc], a
    dec d
    inc h
    and b
    inc b
    dec d
    inc c
    and b
    ld [bc], a
    jr jr_01d_65d3

    and b
    inc b
    jr jr_01d_65bf

    and b
    ld [bc], a
    rla
    inc h
    and b
    inc b
    rla
    inc c
    and b
    ld [bc], a
    dec d
    inc h

jr_01d_65bf:
    and b
    inc b
    dec d
    inc c
    and b
    ld [bc], a
    inc de

jr_01d_65c6:
    inc h
    and b
    inc b
    inc de
    inc c
    and b
    ld [bc], a
    ld [de], a
    inc h
    and b
    inc b
    ld [de], a
    inc c

jr_01d_65d3:
    and b
    ld [bc], a
    ld de, $a024
    inc b
    ld de, $a00c
    ld [bc], a
    ld [de], a
    xor b
    and b

jr_01d_65e0:
    inc b
    ld [de], a
    jr jr_01d_6594

    db $fc
    ld [bc], a
    nop
    rst $38
    rst $38
    inc bc
    ld [bc], a
    add hl, bc
    nop
    db $fd
    cp $1f
    add b
    pop bc
    ld a, a
    ld a, [hl-]
    ld [$083b], sp
    ld a, [hl-]
    ld [$083b], sp
    jp nz, Jump_01d_4015

    db $10
    dec sp
    db $10
    add hl, sp
    db $10
    scf
    db $10
    pop bc
    ld a, a
    ld [hl], $18
    and b
    dec b
    ld [hl], $08
    and b
    add hl, bc
    dec sp
    ld [$0840], sp
    dec sp
    ld [$0840], sp
    jp nz, $4215

jr_01d_661a:
    db $10
    ld b, b
    db $10
    dec sp

jr_01d_661e:
    db $10
    add hl, sp
    db $10
    pop bc
    ld a, a
    scf
    jr jr_01d_65c6

    dec b
    scf
    ld [$09a0], sp
    jp nz, Jump_01d_4015

    ld [$0840], sp
    ld b, b
    db $10
    jr c, jr_01d_6645

    inc sp
    db $10
    jr nc, jr_01d_6649

    jr z, @+$12

    pop bc
    ld a, a
    daa
    jr jr_01d_65e0

    ld b, $27
    ld [$09a0], sp

jr_01d_6645:
    ld b, c
    ld [$0842], sp

jr_01d_6649:
    ld b, c
    ld [$0842], sp

jr_01d_664d:
    jp nz, $3a15

    db $10
    dec [hl]
    db $10
    ld [hl-], a
    db $10
    jr nc, jr_01d_6667

    pop bc
    ld a, a
    dec hl
    jr @-$5e

    dec b
    dec hl

jr_01d_665e:
    ld [$08a0], sp

jr_01d_6661:
    jp nz, $2b18

jr_01d_6664:
    jr nz, jr_01d_661a

    db $fc

jr_01d_6667:
    dec a
    nop
    jr nc, @+$22

    dec hl
    jr nz, jr_01d_6699

    jr nz, jr_01d_66a0

    jr nz, @-$4b

    db $fc
    ld b, e
    nop
    add hl, hl
    jr nz, @+$29

    jr nz, jr_01d_66a0

    jr nz, jr_01d_66a2

    jr nz, jr_01d_661e

    ld b, $30
    db $10
    jr z, @+$12

    inc hl
    db $10
    jr nz, jr_01d_6697

    ret nz

    cp $18
    jr nc, jr_01d_664d

    ld a, a
    jr @+$12

    and b
    rrca
    jp nz, Jump_000_3218

    db $10

jr_01d_6695:
    ld a, [hl+]
    db $10

jr_01d_6697:
    dec h
    db $10

jr_01d_6699:
    ld [hl+], a
    db $10
    ret nz

    cp $1a
    jr nc, jr_01d_6661

jr_01d_66a0:
    ld a, a
    ld a, [de]

jr_01d_66a2:
    db $10
    and b
    ld a, [bc]
    jp nz, $2b18

    jr nz, jr_01d_665e

    db $fc
    ld e, a
    nop
    jr nc, jr_01d_66cf

jr_01d_66af:
    dec hl
    jr nz, @+$2d

    jr nz, jr_01d_6664

    nop
    rst $38
    inc bc
    ld [bc], a
    dec bc
    nop
    db $fd
    cp $1f
    add b
    and e
    ld b, $c1
    ld a, a
    ld b, c
    ld [$0842], sp
    ld b, c
    ld [$0842], sp
    jp nz, Jump_01d_4415

    db $10
    ld b, d

jr_01d_66cf:
    db $10
    ld b, b
    db $10
    dec sp
    db $10
    pop bc
    ld a, a
    add hl, sp
    jr @-$5e

    ld b, $39
    ld [$0ba0], sp
    ld b, e
    ld [$0844], sp
    ld b, e
    ld [$0844], sp
    jp nz, Jump_01d_4615

    db $10
    ld b, h
    db $10

jr_01d_66ec:
    ld b, d
    db $10

jr_01d_66ee:
    ld b, b
    db $10
    pop bc
    ld a, a
    dec sp
    jr jr_01d_6695

    ld b, $3b
    ld [$0ba0], sp
    jp nz, Jump_01d_4415

    ld [$0844], sp
    ld b, h
    db $10
    ld b, b
    db $10
    jr c, @+$12

    inc sp
    db $10
    jr nc, @+$12

    pop bc
    ld a, a
    dec hl
    jr jr_01d_66af

    ld [$082b], sp
    and b
    dec bc
    ld b, l
    ld [$0846], sp
    ld b, l
    ld [$0846], sp
    jp nz, $4215

    db $10
    ld a, [hl-]
    db $10
    dec [hl]
    db $10
    ld [hl-], a
    db $10
    pop bc
    ld a, a
    scf
    jr @-$5e

    ld b, $37
    ld [$0ca0], sp
    jp nz, Jump_000_3218

    jr nz, jr_01d_66ec

    db $fc
    ld a, $00
    inc [hl]
    jr nz, jr_01d_66ee

    db $fc
    ld b, c
    nop
    ld sp, $3120
    jr nz, jr_01d_6773

    jr nz, jr_01d_6775

    jr nz, @-$5e

    add hl, bc
    inc [hl]
    db $10
    jr nc, @+$12

    daa
    db $10
    inc h
    db $10
    ret nz

    cp $20
    jr nc, @-$3d

    ld a, a
    jr nz, @+$12

    and b
    rrca
    jp nz, $3618

    db $10
    ld [hl-], a
    db $10
    add hl, hl
    db $10
    ld h, $10
    ret nz

    cp $22
    jr nc, @-$3d

    ld a, a
    ld [hl+], a
    db $10
    and b
    inc c
    jp nz, Jump_000_3218

    jr nz, @-$47

jr_01d_6773:
    db $fc
    ld e, l

jr_01d_6775:
    nop
    or b
    nop
    rst $38
    inc bc
    ld d, $0a
    inc bc
    db $fd
    cp $a2
    ld d, $a1
    ld [bc], a
    and b
    ld [bc], a
    daa
    db $10
    ld [hl-], a
    db $10
    or l
    db $fc
    ld b, $00
    add hl, hl
    db $10
    ld [hl-], a
    db $10
    add hl, hl
    db $10
    ld [hl-], a
    db $10
    add hl, hl
    db $10
    jr nc, jr_01d_67a9

    add hl, hl
    db $10
    jr nc, jr_01d_67ad

    add hl, hl
    db $10
    ld [hl-], a
    db $10
    daa
    db $10
    ld [hl-], a
    db $10
    jr nz, jr_01d_67b7

    jr nc, jr_01d_67b9

jr_01d_67a9:
    jr z, jr_01d_67bb

    jr nc, jr_01d_67bd

jr_01d_67ad:
    jr z, jr_01d_67bf

    ld [hl-], a
    db $10
    daa
    db $10
    ld [hl-], a
    db $10
    add hl, hl
    db $10

jr_01d_67b7:
    ld [hl-], a
    db $10

jr_01d_67b9:
    ld a, [hl+]
    db $10

jr_01d_67bb:
    ld [hl-], a
    db $10

jr_01d_67bd:
    ld a, [hl+]
    db $10

jr_01d_67bf:
    ld [hl-], a
    db $10
    daa
    db $10
    ld [hl-], a
    db $10
    and c
    ld a, [bc]
    rla
    db $10
    ld [hl+], a
    db $10
    and d
    rst $38
    ld [hl+], a
    jr @-$5e

    inc b
    ld [hl+], a

jr_01d_67d2:
    ld [$02a0], sp
    ld [hl+], a
    jr jr_01d_67fc

    ld [$1822], sp
    inc h
    ld [$0822], sp
    and b
    ld b, $22
    ld [$02a0], sp
    ld [hl+], a
    ld [$0824], sp
    ld [hl+], a
    ld [$0820], sp
    dec de
    ld [$0819], sp
    and d
    jr nz, @+$19

    db $10
    ld [hl+], a
    db $10
    and d
    rst $38
    daa
    jr @-$5e

jr_01d_67fc:
    inc b
    daa
    ld [$20a2], sp
    and b
    ld [bc], a
    rla
    db $10
    inc h
    db $10
    and d
    rst $38
    inc h
    jr @-$5e

    inc b
    inc h

jr_01d_680e:
    ld [$02a0], sp
    inc h
    jr jr_01d_683a

    ld [$1824], sp
    ld h, $08
    inc h
    db $10
    ld h, $08
    daa
    ld [$0829], sp
    daa
    ld [$0826], sp
    inc h
    ld [$20a2], sp
    ld [hl+], a
    db $10
    add hl, de
    db $10
    and d
    rst $38
    ld [de], a
    jr jr_01d_67d2

    inc b
    ld [de], a
    ld [$08a1], sp
    and b
    ld [bc], a
    and d

jr_01d_683a:
    jr nz, jr_01d_6873

    db $10
    inc sp
    db $10
    ld a, [hl+]
    db $10
    daa
    db $10
    inc h
    db $10
    jr jr_01d_6857

    and b
    ld b, $18
    db $10
    and b
    ld [bc], a
    jr jr_01d_685f

    add hl, sp
    db $10
    dec [hl]
    db $10
    jr nc, jr_01d_6865

    add hl, hl
    db $10

jr_01d_6857:
    dec h
    db $10
    ld a, [de]
    db $10
    and b
    ld b, $1a
    db $10

jr_01d_685f:
    and b
    ld [bc], a
    ld a, [de]
    db $10
    and c
    ld a, [bc]

jr_01d_6865:
    rla
    db $10
    ld [hl+], a
    db $10
    and d
    rst $38
    ld [hl+], a
    jr jr_01d_680e

    inc b
    ld [hl+], a
    ld [$02a0], sp

jr_01d_6873:
    ld [hl+], a
    jr jr_01d_689a

    ld [$1822], sp
    inc h
    ld [$0822], sp
    and b
    inc b
    ld [hl+], a
    ld [$02a0], sp
    ld [hl+], a
    ld [$0824], sp
    ld [hl+], a
    ld [$0820], sp
    dec de
    ld [$0819], sp
    and d
    jr nz, @+$19

    db $10
    ld [hl+], a
    db $10
    and d
    rst $38
    daa
    jr jr_01d_683a

jr_01d_689a:
    inc b
    daa
    ld [$00b0], sp
    rst $38
    ld [$0c01], sp
    nop
    db $fd
    cp $a2
    ld bc, $0ca0
    pop bc
    ld b, b
    add hl, hl
    dec b
    and b
    ld b, $29
    ld a, [bc]
    and b
    dec bc
    add hl, hl
    dec b
    and b
    ld b, $29
    ld a, [bc]
    and b
    dec c
    inc h
    dec b
    and b
    ld b, $c7
    rra
    inc h
    rrca
    rra
    ld e, $c1
    ld a, a
    and b
    dec bc
    jr nc, jr_01d_68d1

    pop bc
    ld d, b
    jr nz, jr_01d_68d5

    add hl, de

jr_01d_68d1:
    dec b
    jr nz, jr_01d_68d9

    add hl, de

jr_01d_68d5:
    dec b
    jr nz, jr_01d_68dd

    add hl, de

jr_01d_68d9:
    dec b
    jr nz, jr_01d_68e1

    and b

jr_01d_68dd:
    ld a, [bc]
    pop bc
    ld a, a
    ld [hl-], a

jr_01d_68e1:
    dec b
    and b
    dec bc
    pop bc
    ld d, b
    jr nz, jr_01d_68ed

    add hl, de
    dec b
    jr nz, jr_01d_68f1

    ld [hl+], a

jr_01d_68ed:
    dec b
    jr nz, jr_01d_68f5

    add hl, de

jr_01d_68f1:
    dec b
    jr nz, jr_01d_68f9

    and b

jr_01d_68f5:
    ld a, [bc]
    pop bc
    ld a, a
    inc [hl]

jr_01d_68f9:
    dec b
    and b
    dec bc
    pop bc
    ld d, b
    jr nz, jr_01d_6905

    add hl, de
    dec b
    jr nz, jr_01d_6909

    inc h

jr_01d_6905:
    dec b
    jr nz, jr_01d_690d

    add hl, de

jr_01d_6909:
    dec b
    jr nz, jr_01d_6911

    and b

jr_01d_690d:
    ld a, [bc]
    pop bc
    ld a, a
    inc sp

jr_01d_6911:
    dec b
    and b
    dec bc
    pop bc
    ld d, b
    jr nz, jr_01d_691d

    add hl, de
    dec b
    jr nz, jr_01d_6921

    inc hl

jr_01d_691d:
    dec b
    jr nz, jr_01d_6925

    add hl, de

jr_01d_6921:
    dec b
    jr nz, jr_01d_6929

    ld [hl+], a

jr_01d_6925:
    dec b
    dec h
    dec b
    add hl, hl

jr_01d_6929:
    dec b
    dec h
    dec b
    ld [hl+], a
    dec b
    dec h
    dec b
    add hl, hl
    dec b
    dec h
    dec b
    ld [hl+], a
    dec b
    dec h
    dec b
    jr z, jr_01d_693f

    dec h
    dec b
    ld [hl+], a
    dec b
    dec h

jr_01d_693f:
    dec b
    jr z, @+$07

    dec h
    dec b
    and b
    ld [$0525], sp
    and b
    dec bc
    ld a, [de]
    dec b
    ld [hl+], a
    dec b
    dec h
    dec b
    ld a, [hl+]
    dec b
    dec h
    dec b
    ld [hl+], a
    dec b
    ld a, [de]
    dec b
    inc h
    dec b
    daa
    dec b
    inc h
    dec b
    daa
    dec b
    ld a, [de]
    dec b
    daa
    dec b
    inc h
    dec b
    daa
    dec b
    inc h
    dec b
    daa
    dec b
    inc h
    dec b
    daa
    dec b
    inc h
    dec b
    daa
    dec b
    inc h
    dec b
    daa
    dec b
    ld hl, $2405
    dec b
    daa
    dec b
    ld sp, $3705
    dec b
    ld sp, $2705
    dec b
    inc h
    dec b
    ld [hl+], a
    dec b
    dec h
    dec b
    add hl, hl
    dec b
    dec h
    dec b
    ld [hl+], a
    dec b
    dec h
    dec b
    add hl, hl
    dec b
    dec h
    dec b
    ld [hl+], a
    dec b
    inc h
    dec b
    dec h
    dec b
    add hl, hl
    dec b
    ld [hl-], a
    dec b
    jr nc, jr_01d_69a9

    add hl, hl
    dec b
    dec h
    dec b
    ld a, [de]

jr_01d_69a9:
    dec b
    ld [hl+], a
    dec b
    ld a, [de]
    dec b
    ld [hl+], a
    dec b
    dec h

jr_01d_69b1:
    dec b
    ld a, [de]
    dec b
    ld [hl+], a
    dec b
    dec h
    dec b
    ld a, [de]
    dec b
    ld hl, $1a05
    dec b
    ld hl, $1a05
    dec b
    ld hl, $1a05
    dec b
    ld hl, $a005
    ld [$0a22], sp
    and b
    dec bc
    jp nz, Jump_000_2215

    ld a, [bc]
    pop bc
    ld d, b
    inc h
    inc d
    pop bc
    rra
    ld [hl+], a
    dec b
    ld [hl+], a
    dec b
    and b
    ld [$0522], sp
    and b
    dec bc
    pop bc
    ld h, b
    inc h
    add hl, de
    xor a
    ld [$01a2], sp
    and b
    ld a, [bc]
    and c
    nop
    pop bc
    jr nc, @+$21

    ld a, [bc]
    add hl, hl
    ld a, [bc]
    and b
    inc c
    jr z, jr_01d_6a02

    and b
    rrca
    daa
    ld a, [bc]
    ld h, $05
    pop bc
    ld a, a
    ld h, $05

jr_01d_6a02:
    and b

jr_01d_6a03:
    ld [$0526], sp
    and b
    inc c
    dec h
    rrca
    and b
    ld [$0a25], sp
    pop bc
    jr nc, jr_01d_69b1

    ld a, [bc]
    rra
    ld a, [bc]
    dec h
    ld a, [bc]
    and b
    inc c
    inc h
    ld a, [bc]
    and b
    rrca
    inc hl
    ld a, [bc]
    ld [hl+], a
    dec b
    pop bc
    ld a, a
    ld [hl+], a
    dec b
    and b
    ld [$0522], sp
    and b
    inc c
    dec de
    rrca
    and b
    ld [$0a1b], sp
    and b
    dec bc
    rra
    ld a, [bc]
    ld a, [hl+]
    dec b
    add hl, hl
    dec b
    ld a, [hl+]
    dec b
    ld [hl-], a
    ld a, [bc]
    ld sp, $300a
    dec b
    ld sp, $c005
    cp $21
    add hl, de
    and b
    ld [$30c1], sp
    ld hl, $a00a
    dec bc
    ld [hl-], a
    dec b
    ld sp, $3205
    dec b
    dec [hl]

jr_01d_6a55:
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    inc sp
    dec b
    inc [hl]
    dec b
    ret nz

    cp $35
    add hl, de
    pop bc
    jr nc, jr_01d_6a03

    ld [$0a35], sp
    pop bc
    ld a, a
    and b
    dec bc
    dec [hl]
    ld a, [bc]
    scf
    ld a, [bc]
    dec [hl]
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    and b
    ld [$0a34], sp
    and b
    inc c
    inc h
    dec b
    ld a, [hl+]
    ld a, [bc]
    add hl, hl
    rrca
    ld a, [hl+]
    ld a, [bc]
    and b
    ld a, [bc]
    pop bc
    jr nz, jr_01d_6aaf

    dec b
    pop bc
    ld d, b
    ld a, [hl+]
    ld a, [bc]
    pop bc
    jr nc, jr_01d_6ab6

    dec b
    and b
    ld [$0529], sp
    and b
    inc c
    pop bc
    ld d, b
    ld a, [de]
    dec b
    and b
    ld a, [bc]
    add hl, de
    dec b
    ld a, [de]
    dec b
    and b
    dec bc
    add hl, de
    dec b
    ld a, [de]
    dec b
    and b
    dec c
    add hl, de
    dec b
    ld a, [de]
    dec b
    and b
    ld [$0a1a], sp
    and b

jr_01d_6aaf:
    inc c
    ld [hl+], a
    ld a, [bc]
    pop bc
    jr nz, jr_01d_6a55

    ld a, [bc]

jr_01d_6ab6:
    ld hl, $c105
    ld d, b
    ld hl, $c10a
    jr nc, jr_01d_6adf

    dec b
    and b
    ld [$0a20], sp
    rra
    ld e, $b0
    nop
    rst $38
    ld [$0f02], sp
    nop
    and b
    rrca
    and d
    ld [bc], a
    and e
    ld b, $c1
    ld b, b
    jr nc, jr_01d_6adc

    and b
    ld b, $30
    ld a, [bc]
    and b

jr_01d_6adc:
    rrca
    jr nc, jr_01d_6ae4

jr_01d_6adf:
    and b
    ld b, $30
    ld a, [bc]
    and b

jr_01d_6ae4:
    rrca
    jr nc, @+$07

    and b
    ld b, $c7
    cpl
    jr nc, jr_01d_6afc

    pop bc
    ld a, a
    and b
    dec c
    jr nc, jr_01d_6afd

    ld [hl-], a
    ld a, [bc]
    dec [hl]
    dec b
    pop bc
    ld d, b
    add hl, sp
    ld a, [bc]
    pop bc

jr_01d_6afc:
    rra

jr_01d_6afd:
    add hl, sp
    dec b
    add hl, sp
    dec b
    add hl, sp
    dec b
    pop bc
    ld a, a
    ld a, [hl-]
    dec b
    add hl, sp
    dec b
    and b
    ld [$0539], sp
    and b
    dec c
    pop bc
    ld d, b
    ld b, b
    dec b
    and b
    ld b, $40
    inc hl
    and b
    dec c
    pop bc
    ld d, b
    add hl, sp
    ld a, [bc]
    pop bc
    rra
    add hl, sp
    dec b
    add hl, sp
    dec b
    add hl, sp
    dec b
    pop bc
    ld a, a
    ld a, [hl-]
    dec b
    add hl, sp
    dec b
    and b
    ld [$0539], sp
    and b
    dec c
    dec [hl]
    rrca
    jr nc, jr_01d_6b3f

    and b
    ld b, $30
    rrca
    and b
    ld c, $c1
    ld d, b
    ld [hl-], a
    ld a, [bc]

jr_01d_6b3f:
    pop bc
    rra
    dec [hl]
    dec b
    pop bc
    jr nz, jr_01d_6b7b

    dec b
    ld [hl-], a
    dec b
    pop bc

jr_01d_6b4a:
    ld a, a
    dec [hl]
    dec b
    ld [hl-], a
    dec b
    and b
    ld b, $32
    dec b
    and b
    dec c
    ld b, d
    rrca
    ld b, b
    ld a, [bc]
    jr c, jr_01d_6b60

    scf
    dec b
    dec [hl]
    dec b
    ret nz

jr_01d_6b60:
    cp $a3
    add hl, bc
    scf
    add hl, de
    and b
    ld [$60c1], sp
    scf
    ld e, $a0
    ld c, $a3
    ld b, $37
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    ld b, b
    ld a, [bc]
    ret nz

    cp $41
    ld e, $c1
    ld h, b

jr_01d_6b7b:
    add hl, sp
    ld a, [bc]
    ret nz

    cp $44
    inc d
    pop bc
    ld a, a
    and b
    ld [$1444], sp
    and b
    dec c
    ret nz

    cp $44
    add hl, de

jr_01d_6b8d:
    pop bc
    ld h, b
    ld b, l
    dec b
    ld b, h
    dec b
    db $fd
    cp $42
    inc d
    pop bc
    ld a, a
    and b
    ld [$1e42], sp
    rra
    dec b
    and b
    dec c
    ld [hl-], a
    dec b
    and b
    inc c
    dec [hl]
    dec b
    pop bc
    jr nc, jr_01d_6b4a

    ld b, $35
    dec b
    and b
    dec c
    pop bc
    ld a, a
    ld [hl-], a
    dec b
    and b
    inc c
    dec [hl]
    dec b
    pop bc
    jr nc, @-$5e

    ld b, $35
    dec b
    and b
    dec c
    ld sp, $3105
    dec b
    and b
    ld [$7fc1], sp
    ld sp, $a005
    dec c
    add hl, sp
    ld a, [bc]
    scf
    dec b
    dec [hl]
    dec b
    ret nz

    cp $a3
    dec c
    scf
    dec l
    and b
    ld [$7fc1], sp
    scf
    jr z, jr_01d_6b8d

jr_01d_6bde:
    ld [$01a2], sp
    and b
    dec c
    and c
    nop
    and e
    ld [$30c1], sp
    rra
    ld a, [bc]
    jr nc, jr_01d_6bf7

    and b
    ld c, $30
    ld a, [bc]
    and b
    rrca
    jr nc, @+$0c

    and b
    dec c

jr_01d_6bf7:
    pop bc
    ld a, a
    jr nc, jr_01d_6c00

    ld [hl-], a
    dec b
    and b
    ld b, $32

jr_01d_6c00:
    dec b
    and b
    ld c, $29
    rrca
    and b
    ld [$0a29], sp
    and b
    ld c, $c1
    jr nc, jr_01d_6c2d

    ld a, [bc]
    add hl, hl
    ld a, [bc]
    and b
    rrca
    add hl, hl
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    pop bc
    ld a, a
    daa
    dec b
    add hl, hl
    dec b
    and b
    ld [$0529], sp
    and b
    ld c, $22
    rrca
    and b
    ld [$0a22], sp
    and b
    ld c, $1f
    ld a, [bc]

jr_01d_6c2d:
    ld [hl-], a
    dec b
    ld sp, $3205

jr_01d_6c32:
    dec b
    ret nz

    cp $35
    dec b
    and b
    add hl, bc
    dec [hl]
    dec b
    pop bc
    jr nc, jr_01d_6bde

    ld c, $34
    ld a, [bc]
    inc sp
    dec b
    inc [hl]
    dec b
    ret nz

    cp $29
    add hl, de
    and b
    ld [$50c1], sp
    add hl, hl
    ld a, [bc]
    pop bc
    ld a, a
    and b
    ld c, $35
    dec b
    inc [hl]
    dec b
    dec [hl]
    dec b
    ret nz

    cp $39
    dec b
    and b
    ld a, [bc]
    add hl, sp
    dec b
    and b
    ld c, $c1
    ld b, b
    scf
    ld a, [bc]
    ld [hl], $05
    scf
    dec b
    ret nz

    cp $42
    add hl, de
    and b
    ld [$50c1], sp
    ld b, d
    ld a, [bc]
    pop bc
    ld a, a
    and b
    ld c, $42
    ld a, [bc]
    ld b, h
    ld a, [bc]
    ld b, d
    ld a, [bc]
    ld b, b
    ld a, [bc]
    and b
    ld [$0a40], sp
    and b
    ld c, $30
    dec b
    ld [hl-], a
    ld a, [bc]
    dec [hl]
    rrca
    dec [hl]
    ld a, [bc]
    pop bc
    jr nz, jr_01d_6c32

    inc c
    dec [hl]
    dec b
    pop bc
    ld d, b

jr_01d_6c97:
    dec [hl]
    ld a, [bc]
    pop bc
    jr nc, jr_01d_6cd1

    dec b
    and b
    ld [$0535], sp
    and b
    ld c, $c1
    ld d, b
    inc h
    dec b
    and b
    ld a, [bc]
    inc hl
    dec b
    inc h
    dec b
    and b
    inc c
    inc hl
    dec b
    inc h
    dec b
    and b
    ld c, $23
    dec b
    inc h
    dec b
    and b
    ld [$0a24], sp
    and b
    inc c
    dec h
    ld a, [bc]
    pop bc
    jr nz, jr_01d_6ce9

    dec b
    pop bc
    ld d, b
    dec h
    ld a, [bc]
    pop bc
    jr nc, jr_01d_6cf1

    dec b
    and b
    ld [$0a25], sp

jr_01d_6cd1:
    rra
    ld e, $b0
    db $fc
    ld [bc], a
    nop
    rst $38
    ld [$0240], sp
    dec bc
    db $fd
    cp $34
    dec b
    and d
    ld [de], a
    jr nz, jr_01d_6ce9

    jr nz, jr_01d_6ceb

    and d
    ld b, b
    inc [hl]

jr_01d_6ce9:
    dec b
    and d

jr_01d_6ceb:
    jr jr_01d_6d0d

    ld a, [bc]
    and d
    jr nz, jr_01d_6d1b

jr_01d_6cf1:
    ld a, [bc]
    rra
    jr z, jr_01d_6c97

    jr jr_01d_6d0c

    dec b
    dec d
    dec b
    and b
    inc b
    and d
    ld b, b
    dec d
    ld a, [bc]
    and d
    ld b, b
    rra
    ld a, [bc]
    and b
    ld [bc], a
    dec h
    ld a, [bc]
    and b
    inc b
    dec h
    ld a, [bc]

jr_01d_6d0c:
    and b

jr_01d_6d0d:
    ld [bc], a
    jr nz, jr_01d_6d1a

    jr jr_01d_6d17

    add hl, de
    dec b
    dec d
    ld a, [bc]
    and d

jr_01d_6d17:
    jr jr_01d_6d2e

    dec b

jr_01d_6d1a:
    dec d

jr_01d_6d1b:
    dec b
    and b
    inc b
    dec d
    ld a, [bc]
    rra
    ld a, [bc]
    and d
    ld b, b
    and b
    ld [bc], a
    jr nz, jr_01d_6d32

    and b
    inc b
    jr nz, @+$0c

    and b
    ld [bc], a

jr_01d_6d2e:
    dec h
    ld a, [bc]
    jr nz, jr_01d_6d3c

jr_01d_6d32:
    dec d
    ld a, [bc]
    and d
    jr jr_01d_6d51

    dec b
    ld a, [de]
    dec b
    and b
    inc b

jr_01d_6d3c:
    ld a, [de]
    ld a, [bc]
    rra
    ld a, [bc]
    and d
    ld b, b
    and b
    ld [bc], a
    jr nz, jr_01d_6d50

    and b
    inc b
    jr nz, jr_01d_6d54

    and b
    ld [bc], a
    ld [hl+], a
    ld a, [bc]
    and b
    inc b

jr_01d_6d50:
    ld [hl+], a

jr_01d_6d51:
    ld a, [bc]
    and b
    ld [bc], a

jr_01d_6d54:
    ld a, [hl+]
    ld a, [bc]
    and d
    jr nz, jr_01d_6d79

    ld a, [bc]
    or a
    db $fc
    ld b, b
    nop
    and d
    jr jr_01d_6d7a

    dec b
    add hl, de
    dec b
    and b
    inc b
    add hl, de
    ld a, [bc]
    rra
    ld a, [bc]
    and b
    ld [bc], a
    and d
    ld b, b
    inc h
    ld a, [bc]
    add hl, hl
    dec b
    daa
    dec b
    and b
    inc b
    daa
    dec b
    and b

jr_01d_6d79:
    ld [bc], a

jr_01d_6d7a:
    inc h
    dec b
    and b
    inc b
    inc h
    dec b
    and b
    ld [bc], a
    inc h
    dec b
    add hl, de
    ld a, [bc]
    and b
    inc b
    add hl, de
    ld a, [bc]
    and b
    ld [bc], a
    ld [de], a
    rrca
    and b
    inc b
    ld [de], a
    dec b
    and b
    ld [bc], a
    inc d
    rrca
    and b
    inc b
    inc d
    dec b
    and b
    ld [bc], a
    dec d
    rrca
    and b
    inc b
    dec d
    dec b
    and b
    ld [bc], a
    ld [de], a
    ld a, [bc]
    rla
    ld a, [bc]
    rla
    ld a, [bc]
    and b
    inc b
    rla
    ld a, [bc]
    and b
    ld [bc], a
    daa
    rrca
    and b
    inc b
    daa
    dec b
    and b
    ld [bc], a
    dec h
    rrca
    and b
    inc b
    dec h
    dec b
    and b
    ld [bc], a
    rla
    ld a, [bc]
    jr nz, jr_01d_6dce

    and d
    ld [de], a
    ld a, [hl+]
    ld a, [bc]
    and d
    ld b, b
    jr nc, jr_01d_6dd6

    and d
    ld [de], a

jr_01d_6dce:
    jr nz, jr_01d_6dda

    and d
    jr @+$2c

    dec b
    ld a, [hl+]
    dec b

jr_01d_6dd6:
    and d
    ld [bc], a
    jr nz, jr_01d_6ddf

jr_01d_6dda:
    and d
    ld b, b
    jr nc, @+$0c

    and d

jr_01d_6ddf:
    ld [de], a
    jr nc, jr_01d_6de7

    and d
    ld b, b
    jr nz, jr_01d_6df0

    xor a

jr_01d_6de7:
    ld [$48a2], sp
    and b
    ld [bc], a
    and c
    dec bc
    and c
    ld a, [bc]

jr_01d_6df0:
    dec d
    ld a, [bc]
    and c
    dec bc
    dec [hl]
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    inc sp
    ld a, [bc]
    ld [hl-], a
    dec b
    jr nc, jr_01d_6e03

    and b
    inc b
    jr nc, jr_01d_6e07

    and b

jr_01d_6e03:
    ld [bc], a
    dec hl
    dec b
    and b

jr_01d_6e07:
    inc b
    dec hl
    dec b
    and b
    ld [bc], a
    and d
    db $10
    dec hl
    dec b
    and d
    ld c, b
    and c
    ld a, [bc]
    rla
    ld a, [bc]
    ld a, [de]
    ld a, [bc]
    and c
    dec bc
    ld [hl-], a
    ld a, [bc]
    ld sp, $300a
    ld a, [bc]
    and d
    jr nz, jr_01d_6e4e

    dec b
    and d
    ld c, b
    dec hl
    dec b
    and b
    inc b
    dec hl
    dec b
    and b
    ld [bc], a
    dec h
    ld a, [bc]
    and d
    db $10
    and c
    ld a, [bc]
    ld [hl+], a
    dec b
    and d
    ld c, b
    rla
    ld a, [bc]
    ld a, [de]
    ld a, [bc]
    and c
    dec bc
    dec [hl]
    dec b
    inc [hl]
    dec b
    dec [hl]
    dec b
    ld a, [hl+]
    ld a, [bc]
    add hl, hl
    dec b
    and c
    ld a, [bc]
    add hl, de
    ld a, [bc]
    and d
    db $10

jr_01d_6e4e:
    and c
    dec bc
    add hl, hl
    ld a, [bc]
    and d
    ld b, b
    daa
    dec b
    inc h
    dec b
    add hl, de
    ld a, [bc]
    and c
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    and c
    dec bc
    add hl, hl
    dec b
    jr z, @+$07

    add hl, hl
    dec b
    ld [hl+], a
    ld a, [bc]
    jr nz, jr_01d_6e6f

    and d
    ld [hl], b
    dec de
    ld a, [bc]
    add hl, hl

jr_01d_6e6f:
    ld a, [bc]
    and d
    ld b, b
    ld [hl-], a
    dec b
    add hl, hl
    dec b
    and c
    ld a, [bc]
    dec de
    ld a, [bc]
    ld a, [de]
    ld a, [bc]
    and c
    dec bc
    and d
    ld [hl], b
    ld a, [hl+]
    ld a, [bc]
    and b
    inc b
    ld a, [hl+]
    ld a, [bc]
    and d
    ld b, b
    and b
    ld [bc], a
    ld a, [hl+]
    ld a, [bc]
    jr nc, jr_01d_6e98

    and c
    ld a, [bc]
    jr nz, jr_01d_6e9c

    and d
    dec d
    jr nz, jr_01d_6e9b

    and d
    ld c, b

jr_01d_6e98:
    jr nz, jr_01d_6ea4

    dec d

jr_01d_6e9b:
    ld a, [bc]

jr_01d_6e9c:
    and b
    inc b
    dec d
    dec b
    and b
    ld [bc], a
    and c
    dec bc

jr_01d_6ea4:
    ld [hl-], a
    ld a, [bc]
    and d
    dec d
    ld sp, $a205
    jr nc, jr_01d_6ede

    ld a, [bc]
    jr nc, jr_01d_6eb5

    and b
    inc b
    jr nc, jr_01d_6eb9

    and b

jr_01d_6eb5:
    ld [bc], a
    jr nz, jr_01d_6ebd

    dec de

jr_01d_6eb9:
    dec b
    jr nz, jr_01d_6ec1

    or d

jr_01d_6ebd:
    db $fc
    ldh a, [rP1]
    and c

jr_01d_6ec1:
    ld a, [bc]
    dec d
    ld a, [bc]
    and c
    dec bc
    ld a, [hl+]
    ld a, [bc]
    and d
    dec d
    ld a, [hl+]
    dec b
    and d
    jr nc, jr_01d_6ef9

    ld a, [bc]
    add hl, hl
    dec b
    and b
    inc b
    add hl, hl
    ld a, [bc]
    and b
    ld [bc], a
    jr nz, jr_01d_6ee4

    and b
    inc b
    jr nz, @+$0c

jr_01d_6ede:
    and b
    ld [bc], a
    jr nz, @+$0c

    or b
    nop

jr_01d_6ee4:
    rst $38
    rst $38
    rlca
    ld bc, $000c
    db $fd
    cp $a2
    ld bc, $03a3
    and b
    ld a, [bc]
    jp nz, Jump_000_2215

    inc c
    add hl, hl
    inc c
    daa

jr_01d_6ef9:
    inc c
    add hl, hl
    inc c
    inc h
    inc c
    jr nc, jr_01d_6f0c

    daa
    inc c
    jr nc, jr_01d_6f10

    dec h
    inc c
    jr nc, jr_01d_6f14

    inc h
    inc c
    jr nc, jr_01d_6f18

jr_01d_6f0c:
    dec h
    inc c
    add hl, hl
    inc c

jr_01d_6f10:
    ld [hl+], a
    inc c
    add hl, hl
    inc c

jr_01d_6f14:
    dec h
    inc c
    ld a, [hl+]
    inc c

jr_01d_6f18:
    daa
    inc c
    ld a, [hl+]
    inc c
    inc h
    inc c
    jr nc, jr_01d_6f2c

    daa
    inc c
    jr nc, jr_01d_6f30

    dec h
    inc c
    add hl, hl
    inc c
    jr nz, jr_01d_6f36

    add hl, hl
    inc c

jr_01d_6f2c:
    ld hl, $290c
    inc c

jr_01d_6f30:
    inc h
    inc c
    add hl, hl
    inc c
    and d

jr_01d_6f35:
    ld [bc], a

jr_01d_6f36:
    jp nz, $a012

    ld [$0622], sp
    add hl, hl
    ld b, $27
    ld b, $29
    ld b, $22
    ld b, $29
    ld b, $27
    ld b, $29
    ld b, $24
    ld b, $30
    ld b, $27
    ld b, $30
    ld b, $24
    ld b, $30
    ld b, $27
    ld b, $30
    ld b, $25
    ld b, $30
    ld b, $29
    ld b, $30
    ld b, $24
    ld b, $30
    ld b, $29
    ld b, $30
    ld b, $22
    ld b, $29
    ld b, $25
    ld b, $29
    ld b, $2a
    ld b, $29
    ld b, $25
    ld b, $29
    ld b, $22
    ld b, $2a
    ld b, $25
    ld b, $2a
    ld b, $27
    ld b, $2a
    ld b, $22
    ld b, $2a
    ld b, $24
    ld b, $29
    ld b, $20
    ld b, $29
    ld b, $c1
    jr nz, jr_01d_6f35

    add hl, bc
    daa
    ld b, $24
    ld b, $20
    ld b, $19
    ld b, $22
    ld b, $29
    ld b, $27
    ld b, $29
    ld b, $2a
    ld b, $29
    ld b, $a0
    ld [$0625], sp
    and b
    add hl, bc
    add hl, hl
    ld b, $a0
    add hl, bc
    ld [hl+], a
    ld b, $29
    ld b, $27
    ld b, $29
    ld b, $2a
    ld b, $29
    ld b, $a0
    ld [$0625], sp
    add hl, hl
    ld b, $a2
    ld [bc], a
    pop bc
    ld d, b
    and b
    ld [$0c21], sp
    ld a, [hl+]
    inc c
    and b
    inc b
    ld a, [hl+]
    inc c
    and b
    rlca
    ld a, [hl+]
    inc c
    or c
    db $fc
    ld [hl], d
    nop
    and b
    ld [$0c22], sp
    daa
    inc c
    and b
    inc b
    daa
    inc c
    and b
    rlca
    daa
    inc c
    and b
    ld [$0c21], sp
    inc h
    inc c
    and b
    inc b
    inc h
    inc c
    and b
    rlca
    daa
    inc c
    and b
    ld [$0c25], sp
    dec h
    inc c
    and b
    dec b
    dec h
    inc c
    and b
    rlca
    dec de
    inc c
    and b
    ld [$0c29], sp
    add hl, hl
    inc c
    and b
    dec b
    add hl, hl
    inc c
    and b
    rlca
    daa
    inc c
    and b
    ld b, $26
    inc c
    ld h, $0c
    and b
    inc bc
    ld h, $0c
    and b
    ld [$30c1], sp
    ld [hl-], a
    inc c
    and e
    dec b
    pop bc
    ld b, b
    ld [hl-], a
    inc c
    pop bc
    jr nz, jr_01d_7053

    inc c
    pop bc
    ld b, b
    ld h, $0c
    ld [hl+], a
    inc c
    ld a, [de]
    ld b, $22
    inc c
    dec h
    ld b, $1a
    ld b, $22
    inc c
    dec h
    ld b, $22
    ld b, $25
    inc c
    ld a, [hl+]
    ld b, $22
    ld b, $25
    inc c

jr_01d_704a:
    ld a, [hl+]
    ld b, $20
    ld b, $24

jr_01d_704f:
    inc c
    daa
    ld b, $29

jr_01d_7053:
    ld b, $27
    inc c
    jr nz, @+$08

    ld a, [de]
    ld b, $22
    inc c
    dec h
    ld b, $27
    ld b, $25
    ld b, $22
    ld b, $1a
    ld b, $24
    ld b, $27
    inc c
    ld a, [hl+]
    ld b, $32
    ld b, $30
    ld b, $2a
    ld b, $29
    ld b, $a0
    ld [$0c22], sp
    ld [hl+], a
    inc c
    and b
    dec b
    ld [hl+], a
    inc c
    and b
    rlca
    ld [hl+], a
    inc c
    ret nz

    cp $a0
    ld [$1825], sp
    and b
    dec b
    pop bc
    ld a, a
    dec h
    jr jr_01d_704f

    cp $a0
    ld [$1827], sp
    pop bc
    ld a, a
    and b
    dec b
    daa
    jr jr_01d_704a

    rlca
    and d
    nop
    and b
    ld [$00a1], sp
    and e
    ld [bc], a
    pop bc
    ld b, b
    add hl, de
    ld b, $20
    ld b, $19
    ld b, $20
    ld b, $c7
    ld a, a
    and b
    dec bc
    inc h
    ld b, $c1
    ld b, b
    and b
    ld [$0620], sp
    add hl, de
    ld b, $20
    ld b, $1a
    ld b, $22
    ld b, $1a
    ld b, $22
    ld b, $c7
    ld a, a
    and b
    dec bc
    dec h
    ld b, $c1
    ld b, b
    and b
    ld [$0622], sp
    ld a, [de]
    ld b, $22
    ld b, $20
    ld b, $24
    ld b, $20
    ld b, $24
    ld b, $c7
    ld a, a
    and b
    inc c
    daa
    ld b, $c1
    ld b, b
    and b
    ld [$0624], sp
    jr nz, @+$08

    inc h
    ld b, $22
    ld b, $25
    ld b, $22
    ld b, $25
    ld b, $c7
    ld a, a
    and b
    inc c
    add hl, hl
    ld b, $c1
    ld b, b
    and b
    ld [$0625], sp
    ld [hl+], a
    ld b, $25
    ld b, $b1
    db $fc
    ldh [rP1], a
    ld a, [de]
    ld b, $22
    ld b, $1a
    ld b, $22
    ld b, $25
    ld b, $22
    ld b, $1a
    ld b, $22
    ld b, $20
    ld b, $24
    ld b, $20
    ld b, $24
    ld b, $27
    ld b, $24
    ld b, $20
    ld b, $24
    ld b, $22
    ld b, $25
    ld b, $22
    ld b, $25
    ld b, $29
    ld b, $25
    ld b, $22
    ld b, $25
    ld b, $24
    ld b, $27
    ld b, $24
    ld b, $27
    ld b, $30
    ld b, $27
    ld b, $24
    ld b, $27
    ld b, $1a
    ld b, $22
    ld b, $1a
    ld b, $22
    ld b, $25
    ld b, $22
    ld b, $1a
    ld b, $22
    ld b, $20
    ld b, $24
    ld b, $20
    ld b, $24
    ld b, $27
    ld b, $24
    ld b, $20
    ld b, $24
    ld b, $22
    ld b, $25
    ld b, $22
    ld b, $25
    ld b, $29
    ld b, $25
    ld b, $22
    ld b, $25
    ld b, $c1
    ld d, b
    inc h
    inc c
    and b
    dec b
    inc h
    inc h
    or b
    nop
    rst $38
    rlca
    ld [bc], a
    rrca
    nop
    db $fd
    cp $c1
    ccf
    and b
    dec c
    and d
    nop
    ld [de], a
    inc c
    and d
    ld bc, $03a0
    pop bc
    rra
    rra
    ld b, $29
    inc c
    daa
    inc c
    add hl, hl
    ld b, $c1
    ccf
    and d
    nop
    and b
    dec c
    db $10
    inc c
    and d
    ld bc, $03a0
    pop bc
    rra
    rra
    ld b, $30
    inc c
    daa
    inc c
    jr nc, jr_01d_71bd

    and d
    nop
    pop bc
    ccf
    and b
    dec c

jr_01d_71bd:
    dec b
    inc c
    and b
    inc bc
    pop bc
    rra
    and d
    ld bc, $061f
    jr nc, jr_01d_71d5

    inc h
    inc c
    jr nc, jr_01d_71d3

    and d
    nop
    pop bc
    ccf
    and b
    dec c

jr_01d_71d3:
    ld a, [bc]
    inc c

jr_01d_71d5:
    and b
    inc bc
    pop bc
    rra
    and d
    ld bc, $061f
    add hl, hl
    inc c
    ld [hl+], a
    inc c
    add hl, hl
    ld b, $c1
    ccf
    and d
    nop
    and b
    dec c
    rlca
    inc c
    and b
    inc bc
    pop bc
    rra
    and d
    ld bc, $061f
    ld a, [hl+]
    inc c
    daa

jr_01d_71f6:
    inc c
    ld a, [hl+]
    ld b, $a2
    nop
    pop bc
    ccf
    and b
    dec c
    db $10
    inc c
    and b
    inc bc
    pop bc
    rra
    and d
    ld bc, $061f
    jr nc, jr_01d_7217

    daa
    inc c
    jr nc, jr_01d_7215

    and d
    nop
    pop bc
    ccf
    and b

jr_01d_7214:
    dec c

jr_01d_7215:
    dec d
    inc c

jr_01d_7217:
    and b
    inc bc
    pop bc
    rra
    and d
    ld bc, $061f
    add hl, hl
    inc c
    jr nz, jr_01d_722f

    add hl, hl
    ld b, $a2
    nop
    pop bc
    ccf
    and b
    dec c
    inc d
    inc c
    and b
    inc bc

jr_01d_722f:
    pop bc
    rra
    and d

jr_01d_7232:
    ld bc, $061f
    add hl, hl
    inc c
    inc h
    ld b, $a2
    nop
    pop bc
    ccf
    and b
    dec c
    add hl, bc
    inc c
    pop bc
    cpl
    and b
    dec c
    ld [de], a
    inc c
    pop bc
    jr nz, jr_01d_725c

    ld b, $a0
    ld [$0612], sp
    and b

jr_01d_7250:
    inc bc
    pop bc
    jr nz, jr_01d_71f6

    ld [bc], a
    add hl, hl
    ld b, $22
    ld b, $29
    ld b, $27

jr_01d_725c:
    ld b, $c1
    cpl
    and d
    nop
    and b
    dec c
    db $10
    inc c
    pop bc
    jr nz, jr_01d_7278

    ld b, $a0
    ld [$0610], sp
    and b

jr_01d_726e:
    inc bc
    pop bc
    jr nz, jr_01d_7214

    ld [bc], a
    jr nc, @+$08

    inc h
    ld b, $30

jr_01d_7278:
    ld b, $27
    ld b, $c1
    cpl
    and d
    nop
    and b
    dec c
    dec b
    inc c
    pop bc
    jr nz, jr_01d_729b

    ld b, $a0
    ld [$0615], sp
    and b

jr_01d_728c:
    inc bc
    pop bc
    jr nz, jr_01d_7232

    ld [bc], a
    jr nc, @+$08

    inc h
    ld b, $30
    ld b, $29
    ld b, $c1
    cpl

jr_01d_729b:
    and d
    nop
    and b
    dec c
    ld a, [bc]
    inc c
    pop bc
    jr nz, jr_01d_72ae

    ld b, $a0
    ld [$060a], sp
    and b
    inc bc
    pop bc
    jr nz, jr_01d_7250

jr_01d_72ae:
    ld [bc], a
    add hl, hl
    ld b, $2a
    ld b, $29
    ld b, $25
    ld b, $c1
    cpl
    and d
    nop
    and b
    dec c
    rlca
    inc c
    pop bc
    jr nz, jr_01d_72d9

    ld b, $a0
    ld [$0617], sp
    and b
    inc bc
    pop bc
    jr nz, jr_01d_726e

    ld [bc], a
    ld a, [hl+]
    ld b, $27
    ld b, $2a

jr_01d_72d2:
    ld b, $22
    ld b, $a2
    nop
    pop bc
    cpl

jr_01d_72d9:
    and b
    dec c
    add hl, bc
    inc c
    pop bc
    jr nz, jr_01d_72f9

    ld b, $a0
    ld [$0619], sp
    and b
    inc bc
    pop bc
    jr nz, jr_01d_728c

    ld [bc], a
    add hl, hl
    ld b, $c1
    ld d, b
    rra
    ld b, $24
    ld b, $20
    ld b, $a2
    nop
    pop bc
    cpl

jr_01d_72f9:
    and b
    dec c
    ld [de], a
    inc c
    pop bc
    jr nz, jr_01d_7312

    ld b, $a0
    ld [$0612], sp
    and b
    inc bc
    pop bc
    ld d, b
    and d
    ld [bc], a
    daa
    ld b, $29
    ld b, $2a
    ld b, $29

jr_01d_7312:
    ld b, $c1
    cpl
    and d
    nop
    and b
    dec c
    ld [de], a
    inc c
    pop bc
    jr nz, jr_01d_7330

    ld b, $a0
    ld [$0612], sp
    and b
    inc bc
    pop bc
    ld d, b
    and d
    ld [bc], a
    daa
    ld b, $29
    ld b, $c1
    jr nz, jr_01d_72d2

jr_01d_7330:
    nop
    and b
    dec c
    ld [bc], a
    ld b, $a0
    ld [$0602], sp
    pop bc
    ld d, b
    and d
    ld bc, $0ba0
    rlca
    inc c
    rlca
    inc c
    and b
    ld b, $07
    inc c
    and b
    dec bc
    rlca
    inc c
    rlca
    inc c
    rlca
    inc c
    and b
    ld b, $07
    inc c
    and b
    dec bc
    rlca
    inc c
    inc b
    inc c
    inc b
    inc c
    and b
    ld b, $04
    inc c
    and b
    dec bc
    inc b
    inc c
    add hl, bc
    inc c
    add hl, bc
    inc c
    and b
    ld b, $09
    inc c
    and b
    dec bc
    add hl, bc
    inc c
    ld [de], a
    inc c
    ld [de], a
    inc c
    and b
    ld b, $12
    inc c
    and b
    dec bc
    rlca
    inc c
    ld a, [bc]
    inc c
    ld a, [bc]
    inc c
    and b
    ld b, $0a
    inc c
    and b
    dec bc
    add hl, bc
    inc c
    ld [de], a
    inc c
    ld [de], a
    inc c
    and b
    ld b, $12
    inc c
    and b
    dec bc
    ld h, $0c
    pop bc
    jr nc, jr_01d_73bc

    inc c
    ld [hl+], a
    inc c
    add hl, de
    inc c
    ld d, $0c
    and b
    dec c
    rlca
    ld b, $a0
    inc c
    ld a, [de]
    ld b, $a0
    ld b, $1a
    ld b, $a0
    inc c
    ld [hl+], a
    ld b, $17
    ld b, $1a
    ld b, $a0
    ld c, $07
    inc c
    and b
    dec c
    rlca
    ld b, $a0
    inc c
    ld [hl+], a

jr_01d_73bc:
    ld b, $a0
    ld b, $22
    ld b, $a0
    inc c
    rla

jr_01d_73c4:
    ld b, $1a
    ld b, $22
    ld b, $a0
    ld c, $07
    inc c
    and b

jr_01d_73ce:
    dec c
    add hl, bc
    ld b, $a0
    inc c
    jr nz, jr_01d_73db

    and b
    ld b, $20
    ld b, $a0
    inc c

jr_01d_73db:
    inc h
    ld b, $20
    ld b, $24
    ld b, $a0
    ld c, $09
    inc c
    and b
    dec c
    rlca
    ld b, $a0
    inc c
    ld a, [de]
    ld b, $a0
    ld b, $1a
    ld b, $a0
    inc c
    ld [hl+], a
    ld b, $1a
    ld b, $22
    ld b, $a0
    ld c, $07
    inc c
    and b
    dec c
    db $10
    ld b, $a0
    inc c
    inc h
    ld b, $a0
    ld b, $24
    ld b, $a0
    inc c
    daa
    ld b, $a0
    dec c
    dec d
    inc c
    dec d
    inc c
    ld a, [bc]
    inc c
    ld a, [bc]
    inc c
    and b
    ld b, $0a
    inc c
    and b
    inc c
    ld a, [bc]
    inc c
    and b
    ld b, $0a
    jr jr_01d_73c4

    inc c
    pop bc
    ld [hl], b
    db $10
    jr nc, jr_01d_743a

    jr jr_01d_73ce

    ld [bc], a
    pop bc
    ld a, a
    dec b
    inc c
    db $10
    jr jr_01d_7449

    inc c
    rlca
    inc c
    ld [de], a
    jr @+$19

jr_01d_743a:
    inc c
    add hl, bc
    inc c
    inc d
    jr jr_01d_7459

    inc c
    ld a, [bc]
    inc c
    dec d
    jr jr_01d_7460

    inc c
    dec b
    inc c

jr_01d_7449:
    db $10
    jr @+$17

    inc c
    rlca
    inc c
    ld [de], a
    jr @+$19

    inc c
    add hl, bc
    inc c
    inc d
    jr @+$1b

    inc c

jr_01d_7459:
    ld a, [bc]
    inc c
    dec d
    jr jr_01d_7478

    inc c
    and b

jr_01d_7460:
    ld c, $c1
    ld d, b
    rlca
    ld b, $c1
    jr nz, jr_01d_747f

    ld b, $a0
    ld b, $17
    ld b, $a0
    dec c
    rla
    ld b, $17
    ld b, $17
    ld b, $a0
    ld b, $17

jr_01d_7478:
    ld b, $a0
    dec c
    rla
    ld b, $c1
    ld d, b

jr_01d_747f:
    and b
    ld c, $09
    ld b, $c1
    jr nz, @+$1b

    ld b, $a0
    ld b, $19
    ld b, $a0
    dec c
    add hl, de
    ld b, $10
    ld b, $14
    ld b, $a0
    ld c, $09
    ld b, $a0
    rlca
    add hl, bc
    ld b, $c1
    ld d, b
    and b
    ld c, $0a
    ld b, $c1
    jr nz, jr_01d_74be

    ld b, $a0
    ld b, $1a
    ld b, $a0
    dec c
    ld a, [de]
    ld b, $1a
    ld b, $1a
    ld b, $a0
    ld b, $1a
    ld b, $a0
    dec c
    ld a, [de]
    ld b, $c1
    ld d, b
    and b
    ld c, $10

jr_01d_74be:
    ld b, $c1
    jr nz, jr_01d_74e2

    ld b, $a0
    ld b, $20
    ld b, $a0
    dec c
    jr nz, @+$08

    inc h
    ld b, $20
    ld b, $a0
    ld c, $10
    ld b, $a0
    rlca
    db $10
    ld b, $a0
    ld c, $c1
    ld d, b
    rlca
    ld b, $c1
    jr nz, jr_01d_74f7

    ld b, $a0

jr_01d_74e2:
    ld b, $17
    ld b, $a0
    dec c
    rla
    ld b, $17
    ld b, $17
    ld b, $a0
    ld b, $17
    ld b, $a0
    dec c
    rla
    ld b, $c1
    ld d, b

jr_01d_74f7:
    and b
    ld c, $09
    ld b, $c1
    jr nz, jr_01d_7517

    ld b, $a0
    ld b, $19
    ld b, $a0
    dec c
    add hl, de
    ld b, $10
    ld b, $14
    ld b, $a0
    ld c, $09
    ld b, $a0
    rlca
    add hl, bc
    ld b, $a0
    ld c, $c1
    ld d, b

jr_01d_7517:
    ld a, [bc]
    ld b, $c1
    jr nz, jr_01d_7536

    ld b, $a0
    rlca
    ld a, [de]
    ld b, $a0
    dec c
    ld a, [de]
    ld b, $1a
    ld b, $1a
    ld b, $a0
    rlca
    ld a, [de]
    ld b, $a0
    dec c
    ld a, [de]
    ld b, $c1
    ld d, b
    and b
    ld c, $10

jr_01d_7536:
    inc c
    and b
    dec b
    db $10
    inc h
    or b
    nop
    rst $38

jr_01d_753e:
    rlca
    rst $38
    ld [bc], a
    nop
    db $fd
    cp $42
    jr jr_01d_758b

    inc c
    ld b, l
    inc c
    ld b, a
    jr jr_01d_759d

    jr jr_01d_7598

    jr jr_01d_7598

    inc c
    ld c, c
    inc c
    ld b, d
    inc h
    and b
    inc b
    ld b, d
    inc c
    and b
    ld [bc], a
    ld b, d
    jr jr_01d_75a3

    inc c
    ld b, l
    inc c
    ld b, a
    jr jr_01d_75b5

    jr @+$4b

    ld d, h
    and b
    inc b
    ld c, c
    inc c
    and b
    ld [bc], a
    ld b, d
    jr jr_01d_75b5

    inc c
    ld b, l
    inc c
    ld b, a
    jr jr_01d_75c7

    jr jr_01d_75c2

    jr jr_01d_75c2

    inc c
    ld c, c
    inc c
    ld b, d
    inc h
    and b
    inc b
    ld b, d
    inc c
    and b
    ld [bc], a
    ld b, d
    ld [de], a
    and b
    inc b
    ld b, d

jr_01d_758b:
    ld b, $a0
    ld [bc], a
    ld b, d
    inc c
    ld b, l
    inc c
    ld b, h
    inc c
    ld b, b
    inc c
    and c
    dec b

jr_01d_7598:
    and b
    inc b
    add hl, sp
    jr jr_01d_753e

jr_01d_759d:
    nop
    and b
    ld [bc], a
    ld b, d
    ld d, h
    and b

jr_01d_75a3:
    inc b
    ld b, d
    inc c
    and b
    ld [bc], a
    rra
    jr jr_01d_75f4

    jr jr_01d_75f7

    jr jr_01d_75f8

    jr jr_01d_75fb

    jr jr_01d_75fc

    inc c
    ld c, d

jr_01d_75b5:
    inc c
    ld c, c
    inc c
    ld b, a
    inc c
    ld b, l
    inc c
    ld b, h
    inc c
    and b
    ld b, $44
    inc c

jr_01d_75c2:
    and b
    ld [bc], a
    ld c, c
    inc c
    ld b, a

jr_01d_75c7:
    ld b, $45
    ld b, $44
    ld b, $42
    ld b, $45
    inc c
    ld b, h
    inc b
    ld b, l
    inc b
    ld b, h

jr_01d_75d5:
    inc b
    ld b, d
    inc c
    ld b, b
    inc c
    and c
    dec b
    and b
    inc b
    add hl, sp
    ld d, h
    and b

jr_01d_75e1:
    ld b, $39
    inc h
    and b
    ld [bc], a
    and c
    nop
    and b
    ld [bc], a
    ld c, c
    jr jr_01d_7637

jr_01d_75ed:
    jr jr_01d_763f

    jr jr_01d_7645

    jr jr_01d_7645

    inc c

jr_01d_75f4:
    ld d, h
    inc c
    ld d, b

jr_01d_75f7:
    inc c

jr_01d_75f8:
    ld c, d
    inc c
    ld c, c

jr_01d_75fb:
    inc c

jr_01d_75fc:
    ld b, a
    inc c
    and b

jr_01d_75ff:
    ld b, $47
    inc c
    and b
    ld [bc], a
    ld d, b
    inc c
    ld c, d
    ld b, $49
    ld b, $47
    ld b, $45
    ld b, $49
    inc c
    ld b, a
    inc b
    ld c, c
    inc b
    ld b, a
    inc b
    ld b, l
    inc c
    ld b, h
    inc c
    ld b, d
    inc h
    and b
    inc b
    ld b, d
    inc c
    and b
    ld [bc], a
    ld b, h
    inc h
    and b
    inc b
    ld b, h
    inc c
    and b
    ld [bc], a
    ld b, b
    inc c
    ld d, b
    inc c
    ld c, c
    sub b
    and b
    inc b
    ld c, c
    jr jr_01d_75d5

    ld [bc], a

jr_01d_7636:
    ld b, b

jr_01d_7637:
    inc c
    ld d, b
    inc c
    ld c, c

jr_01d_763b:
    sub b
    and b
    inc b
    ld c, c

jr_01d_763f:
    jr jr_01d_75e1

    ld [bc], a
    ld b, d
    inc c
    ld d, d

jr_01d_7645:
    inc c
    ld b, a
    sub b
    and b
    inc b
    ld b, a
    jr jr_01d_75ed

    ld [bc], a
    ld b, d
    inc c
    ld d, d
    inc c
    ld b, a
    ld h, b
    and b
    inc b
    ld b, a
    ld e, $a0
    ld b, $47
    ld b, $a2
    jr nc, jr_01d_75ff

    ld [bc], a
    ld c, c
    inc c
    and d
    rst $38
    ld c, c
    ld b, $47
    ld b, $45
    ld b, $44
    ld b, $b0
    nop
    rst $38
    rst $38
    jp $a330


    cp $a0
    inc c
    jr nc, @+$0e

    ld b, b
    inc c
    add hl, sp
    sub b
    and b
    ld b, $a3
    ld [bc], a
    pop bc
    ld a, a
    add hl, sp
    jr jr_01d_7636

    db $fc
    and b
    inc c
    jp $a330


    cp $32
    inc c
    ld b, d
    inc c
    scf
    sub b
    and b
    ld b, $a3
    ld [bc], a
    pop bc
    ld a, a
    scf
    jr jr_01d_763b

    inc c
    and e
    cp $c3
    jr nc, jr_01d_76d3

    inc c
    ld b, d
    inc c
    scf
    ld h, b
    and b
    ld b, $a3
    ld [bc], a
    pop bc
    ld a, a
    scf
    inc h
    and b
    inc c
    call nz, $a320
    cp $39
    inc c
    jp Jump_000_3920


    ld b, $37
    ld b, $35
    ld b, $34
    ld b, $b0
    nop
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
    nop
    nop

jr_01d_76d3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
