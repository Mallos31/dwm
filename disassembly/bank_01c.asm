; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01c", ROMX[$4000], BANK[$1c]

    inc e
    nop
    nop
    add l
    ld b, b
    ld a, [de]
    ld bc, $4085
    inc [hl]
    nop
    add l
    ld b, b
    ld c, [hl]
    ld bc, $4085
    ld l, b
    ld [bc], a
    add l
    ld b, b
    add d
    inc bc
    add l
    ld b, b
    inc [hl]
    nop
    adc d
    ld b, b
    ld c, [hl]
    ld bc, $42fb
    ld l, b
    ld [bc], a
    adc d
    ld b, l
    inc [hl]
    nop
    inc de
    ld c, b
    ld c, [hl]
    ld bc, $4af3
    ld l, b
    ld [bc], a
    inc de
    ld c, l
    inc [hl]
    nop
    ld e, h
    ld d, b
    ld c, [hl]
    ld bc, $52cf
    ld l, b
    ld [bc], a
    jr c, jr_01c_4093

    inc [hl]
    nop
    ld l, $58
    ld c, [hl]
    ld bc, $5923
    ld l, b
    ld [bc], a
    add sp, $59
    inc [hl]
    nop
    ld [hl], $5b
    ld c, [hl]
    ld bc, $5c95
    ld l, b
    ld [bc], a
    ld e, d
    ld e, [hl]
    inc [hl]
    nop
    ld [hl-], a
    ld h, b
    ld c, [hl]
    ld bc, $6139
    ld l, b
    ld [bc], a

jr_01c_405f:
    jr jr_01c_40c4

    inc [hl]
    nop
    inc h

jr_01c_4064:
    ld h, h
    ld c, [hl]
    ld bc, $65e5
    ld l, b
    ld [bc], a
    sbc [hl]

jr_01c_406c:
    ld h, a
    inc [hl]
    nop

jr_01c_406f:
    inc h
    ld l, d
    ld c, [hl]
    ld bc, $6b8b
    ld l, b
    ld [bc], a
    inc e
    ld l, l
    inc [hl]
    nop
    call nc, Call_01c_4e6e
    ld bc, $7115
    ld l, b
    ld [bc], a
    jr nc, jr_01c_40f8

    nop
    nop
    nop
    nop
    rst $38
    inc b
    nop
    inc c
    nop
    pop bc
    dec [hl]
    ld a, [hl+]

jr_01c_4091:
    ld [de], a
    ld a, [hl+]

jr_01c_4093:
    ld b, $c1
    ld e, a
    add hl, hl
    jr @+$32

    jr @+$37

    jr @+$37

    jr jr_01c_405f

    rst $38
    dec [hl]
    jr jr_01c_4064

    ld h, b
    dec [hl]
    jr @-$3e

jr_01c_40a7:
    cp $35
    jr jr_01c_406c

    ld h, b
    dec [hl]
    jr jr_01c_406f

jr_01c_40af:
    cp $2a
    ld e, $a0
    rlca
    pop bc
    ld a, a
    ld a, [hl+]
    ld b, $a0
    inc c
    pop bc
    jr nz, @+$2b

    inc c
    and b
    dec b
    add hl, hl
    inc c
    and b

jr_01c_40c3:
    inc c

jr_01c_40c4:
    pop bc
    jr nc, jr_01c_40ef

    inc c
    jr z, jr_01c_40d6

    dec hl
    inc c

jr_01c_40cc:
    pop bc
    ld c, d
    add hl, hl
    jr jr_01c_4091

    cp $25
    inc h
    and b
    dec b

jr_01c_40d6:
    pop bc
    ld d, b
    dec h
    inc c
    and b
    inc c
    pop bc
    ld b, b
    jr nz, @+$14

    jr nz, jr_01c_40e8

    pop bc
    ld e, a
    ld hl, $c118
    ld h, b

jr_01c_40e8:
    ld hl, $2218
    jr jr_01c_4111

    jr jr_01c_40af

jr_01c_40ef:
    cp $25
    jr nc, jr_01c_4093

    ld [$7fc1], sp
    dec h
    inc c

jr_01c_40f8:
    and b

jr_01c_40f9:
    inc c
    pop bc
    jr nc, jr_01c_4122

    inc c
    daa
    inc c
    add hl, hl

jr_01c_4101:
    inc c
    ret nz

    cp $32
    jr nc, jr_01c_40a7

    ld [$7fc1], sp
    ld [hl-], a
    inc c
    and b
    inc c
    pop bc
    jr nc, @+$2d

jr_01c_4111:
    inc c
    dec hl
    inc c
    ld [hl-], a
    inc c
    pop bc
    ld c, d
    ld [hl-], a
    jr jr_01c_414b

    jr jr_01c_4147

    jr jr_01c_4149

    jr jr_01c_40c3

    nop

jr_01c_4122:
    and e
    ld b, $c3
    jr nc, @+$33

    jr jr_01c_40cc

    nop
    pop bc
    ld [hl], b

jr_01c_412c:
    ld sp, $a324
    ld b, $c3
    jr nz, @+$33

    inc c
    ld sp, $310c
    inc c
    call nz, Call_000_3268
    jr nc, @+$2b

    jr @+$2b

    jr @-$3b

    jr nc, jr_01c_4175

    jr jr_01c_40e8

    nop
    pop bc

jr_01c_4147:
    ld [hl], b
    ld [hl-], a

jr_01c_4149:
    inc h
    and e

jr_01c_414b:
    ld b, $c3
    jr nz, jr_01c_417a

    inc c
    dec hl
    inc c
    dec hl
    inc c
    ret nz

    cp $2a
    jr nc, jr_01c_40f9

    ld b, $c1
    ld a, a
    and e
    nop
    ld a, [hl+]
    jr jr_01c_4101

    inc c
    call nz, $a330
    ld b, $2a
    jr jr_01c_412c

    jr nc, jr_01c_41a1

    jr @-$5b

    nop
    pop bc
    ld [hl], b
    ld [hl], $24
    and e
    ld b, $c3

jr_01c_4175:
    jr nz, @+$38

    inc c
    scf
    inc c

jr_01c_417a:
    add hl, sp
    inc c
    jp Jump_000_3a30


    jr @-$5b

    nop
    pop bc
    ld [hl], b
    ld a, [hl-]

jr_01c_4185:
    inc h
    and e
    ld b, $c3

jr_01c_4189:
    jr nz, jr_01c_41b5

    inc c
    jr nc, jr_01c_419a

jr_01c_418e:
    ld [hl-], a
    inc c
    call nz, Call_000_3268
    jr nc, jr_01c_41c9

    jr nc, jr_01c_41c0

    ld c, b
    and b

jr_01c_4199:
    inc c

jr_01c_419a:
    and e
    cp $c1
    dec [hl]
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]

jr_01c_41a1:
    ld b, $c1
    ld e, a
    and b
    dec bc
    add hl, hl
    jr jr_01c_4149

    inc c
    jr nc, jr_01c_41c4

    jr nc, jr_01c_41c6

    dec [hl]
    jr jr_01c_41e6

    jr jr_01c_41ec

    jr jr_01c_41e7

jr_01c_41b5:
    jr jr_01c_41ec

    jr jr_01c_41e3

    jr @+$2b

    jr @-$3e

    rst $38

jr_01c_41be:
    jr z, jr_01c_41d8

jr_01c_41c0:
    pop bc
    ld h, b
    jr z, @+$1a

jr_01c_41c4:
    pop bc
    ld c, d

jr_01c_41c6:
    add hl, hl
    jr jr_01c_4189

jr_01c_41c9:
    rst $38
    dec h
    jr jr_01c_418e

    ld h, b
    dec h
    jr @-$3d

    ld e, a
    jr nz, jr_01c_41e6

    jr nz, @+$08

    pop bc
    ld h, b

jr_01c_41d8:
    ld hl, $2118
    jr jr_01c_41ff

    jr jr_01c_4203

    jr jr_01c_41a1

jr_01c_41e1:
    cp $25

jr_01c_41e3:
    jr nc, jr_01c_4185

    ld a, [bc]

jr_01c_41e6:
    pop bc

jr_01c_41e7:
    ld a, a
    dec h

jr_01c_41e9:
    inc c
    and b
    dec c

jr_01c_41ec:
    pop bc
    jr nc, jr_01c_4214

    inc c
    daa
    inc c
    add hl, hl
    inc c
    ret nz

    cp $2b

jr_01c_41f7:
    jr nc, jr_01c_4199

    ld a, [bc]
    pop bc
    ld a, a
    dec hl

jr_01c_41fd:
    inc c
    and b

jr_01c_41ff:
    dec c
    pop bc
    jr nc, @+$2d

jr_01c_4203:
    inc c
    dec hl
    inc c

jr_01c_4206:
    ld [hl-], a
    inc c
    pop bc
    ld e, a
    ld [hl-], a
    jr jr_01c_423d

    jr jr_01c_4239

    jr jr_01c_423b

    jr jr_01c_41b5

    nop

jr_01c_4214:
    and e
    ld b, $c3
    jr nc, jr_01c_424a

    jr jr_01c_41be

    nop
    pop bc
    ld [hl], b
    ld sp, $a324
    ld b, $c3
    jr nz, @+$33

    inc c
    ld sp, $310c
    inc c
    call nz, Call_000_3268
    jr nc, jr_01c_4258

    jr jr_01c_4263

    jr jr_01c_41f7

    ld b, b
    daa
    jr @+$2d

    jr jr_01c_426b

jr_01c_4239:
    jr jr_01c_4266

jr_01c_423b:
    jr jr_01c_41fd

jr_01c_423d:
    cp $2a
    jr nc, jr_01c_41e1

    ld b, $c1
    ld a, a
    and e
    nop
    ld a, [hl+]
    jr jr_01c_41e9

    inc c

jr_01c_424a:
    and e
    ld b, $c4
    ld l, b
    ld a, [hl+]
    jr jr_01c_4287

    jr jr_01c_4285

    jr @-$3b

    jr nz, jr_01c_4280

    inc c

jr_01c_4258:
    ld [hl], $0c
    scf
    inc c
    add hl, sp
    inc c
    jp Jump_000_3a30


    jr jr_01c_4206

jr_01c_4263:
    nop
    pop bc
    ld [hl], b

jr_01c_4266:
    ld a, [hl-]
    inc h
    and e
    ld b, $c3

jr_01c_426b:
    jr nz, jr_01c_4297

    inc c
    jr nc, jr_01c_427c

    ld [hl-], a
    inc c
    call nz, Call_000_3268
    jr nc, jr_01c_42ab

    jr nc, jr_01c_42a2

    ld c, a
    rra
    ld [bc], a

jr_01c_427c:
    xor a
    rlca
    and b
    ld a, [bc]

jr_01c_4280:
    rra
    add hl, de
    ld [hl], $0c
    add hl, hl

jr_01c_4285:
    inc c
    ld a, [hl+]

jr_01c_4287:
    inc c
    jr nc, jr_01c_4296

    ld [hl-], a
    jr nc, @-$3b

    jr nc, jr_01c_42b9

    ld sp, $00a3
    pop bc
    jr nz, @+$2c

    add hl, de

jr_01c_4296:
    and b

jr_01c_4297:
    rrca
    and e
    ld b, $c4
    cpl
    dec h
    ld a, [de]
    call nz, Call_000_2730
    ld a, [de]

jr_01c_42a2:
    call nz, $3034
    dec de
    pop bc
    jr nc, jr_01c_42db

    inc c
    and d

jr_01c_42ab:
    ld [bc], a
    and b
    ld a, [bc]
    ld a, [de]
    inc c

jr_01c_42b0:
    ld a, [de]
    inc c
    ld [hl+], a
    inc c
    ld [hl+], a
    inc c
    dec h
    inc c
    dec h

jr_01c_42b9:
    inc c
    ld a, [hl+]
    inc c
    ld a, [de]
    inc c
    jr nz, jr_01c_42cc

    jr nz, @+$0e

    inc h
    inc c
    inc h
    dec c
    daa
    dec c
    daa
    dec c
    ld a, [hl+]
    dec c

jr_01c_42cc:
    add hl, hl
    ld c, $19
    dec c
    add hl, de
    dec c
    jr nz, @+$0f

    jr nz, @+$10

    dec h
    ld c, $25
    ld c, $29

jr_01c_42db:
    rrca
    pop bc
    ld a, a
    add hl, de
    ld hl, $03a7
    pop bc
    jr nc, jr_01c_42fe

    inc bc
    ld a, [de]
    inc bc
    jr nz, jr_01c_42ed

    ld [hl+], a
    inc bc
    inc h

jr_01c_42ed:
    inc bc
    dec h
    inc bc
    daa
    inc bc
    pop bc
    ld a, a
    add hl, hl
    add hl, de
    rra
    jr jr_01c_4318

    ld e, d
    rst $38
    inc b
    nop
    dec c

jr_01c_42fe:
    nop
    and e
    dec de
    pop bc
    dec [hl]
    jr nc, jr_01c_4317

    jr nc, @+$08

    pop bc
    ld e, a
    and b
    inc c
    dec [hl]
    jr jr_01c_4345

    jr jr_01c_42b0

    dec c
    add hl, sp
    jr jr_01c_434e

    jr @-$3c

jr_01c_4316:
    ld a, a

jr_01c_4317:
    ld b, b

jr_01c_4318:
    jr @-$3e

    cp $a3
    cp $45
    inc h
    and b

jr_01c_4320:
    ld a, [bc]
    pop bc
    ld a, a
    ld b, l
    inc c
    and b
    dec c
    pop bc
    dec [hl]
    ld b, h
    ld [de], a
    pop bc
    cpl
    ld b, d
    ld b, $c0
    cp $42
    ld e, $a0

jr_01c_4334:
    ld a, [bc]
    pop bc
    ld a, a
    ld b, d
    ld b, $a0

jr_01c_433a:
    dec c
    and e
    add hl, bc
    pop bc
    jr nz, jr_01c_4380

    inc c
    and b
    dec b
    ld b, b
    inc c

jr_01c_4345:
    and b
    dec c
    pop bc
    jr nc, jr_01c_4385

    inc c
    dec sp
    inc c
    ld b, d

jr_01c_434e:
    inc c
    pop bc
    ld c, d
    and e

jr_01c_4352:
    inc c
    ld b, b
    jr jr_01c_4316

    cp $39
    inc h
    and b
    dec b

jr_01c_435b:
    pop bc
    ld d, b
    and e
    nop
    add hl, sp
    inc c
    and b
    dec c
    pop bc
    ld b, b
    and e
    add hl, bc
    add hl, hl
    ld [de], a
    pop bc
    cpl
    add hl, hl
    ld b, $c1
    ld e, a
    add hl, hl
    jr @-$3d

    ld h, b
    add hl, hl
    jr jr_01c_43a1

    jr @+$33

    jr jr_01c_433a

    cp $a3
    inc c
    ld [hl-], a
    jr nc, jr_01c_4320

jr_01c_4380:
    ld [$7fc1], sp
    ld [hl-], a
    inc c

jr_01c_4385:
    and b
    dec c
    pop bc

jr_01c_4388:
    jr nc, jr_01c_43bc

    inc c
    inc [hl]
    inc c
    dec [hl]

jr_01c_438e:
    inc c
    ret nz

    cp $37
    jr nc, jr_01c_4334

    ld [$7fc1], sp
    scf
    inc c
    and b
    dec c

jr_01c_439b:
    pop bc
    jr nc, jr_01c_43d0

    inc c
    ld [hl-], a
    inc c

jr_01c_43a1:
    dec [hl]
    inc c
    and e
    ld [$4ac1], sp
    dec [hl]
    jr jr_01c_43de

    jr jr_01c_43de

    jr jr_01c_43de

    jr jr_01c_4352

    nop
    and e
    ld b, $c3
    jr nc, jr_01c_43ef

    jr jr_01c_435b

    nop
    pop bc
    ld [hl], b
    add hl, sp

jr_01c_43bc:
    inc h
    and e
    ld b, $c3
    jr nz, jr_01c_43fc

    inc c
    add hl, sp
    inc c
    scf
    inc c
    call nz, $3568
    jr nc, jr_01c_43fe

    jr jr_01c_4403

    jr @-$3b

jr_01c_43d0:
    jr nc, @+$39

    jr @-$5b

jr_01c_43d4:
    nop
    pop bc
    ld [hl], b
    scf
    inc h
    and e
    ld b, $c3
    jr nz, jr_01c_4417

jr_01c_43de:
    inc c
    scf
    inc c
    dec [hl]
    inc c
    call nz, $3568
    jr nc, jr_01c_4388

    add hl, bc
    call nz, $347f
    jr jr_01c_438e

    dec c

jr_01c_43ef:
    call nz, Call_000_3048
    jr @-$3b

    jr nc, jr_01c_4436

    jr jr_01c_439b

    nop
    pop bc
    ld [hl], b
    ld b, b

jr_01c_43fc:
    inc h
    and e

jr_01c_43fe:
    ld b, $c3

jr_01c_4400:
    jr nz, @+$3b

    inc c

jr_01c_4403:
    ld a, [hl-]
    inc c
    ld b, b
    inc c
    jp $4230


    jr @-$5b

    nop
    pop bc
    ld [hl], b
    ld b, d
    inc h
    and e
    ld b, $c3
    jr nz, jr_01c_4448

    inc c

jr_01c_4417:
    inc [hl]
    inc c
    dec [hl]
    inc c
    call nz, Call_000_3a68
    jr nc, jr_01c_4459

    jr nc, @+$37

    ld c, b
    and e
    cp $a0
    dec c
    pop bc
    dec [hl]
    jr nc, jr_01c_443d

    jr nc, @+$08

    pop bc
    ld e, a
    and b
    inc c
    dec [hl]
    jr jr_01c_43d4

    dec c
    scf

jr_01c_4436:
    jr jr_01c_4471

    jr jr_01c_4474

jr_01c_443a:
    jr jr_01c_43fe

    ld a, a

jr_01c_443d:
    ld b, b
    jr jr_01c_4400

    cp $45
    inc h
    and b
    ld a, [bc]
    pop bc
    ld a, a
    ld b, l

jr_01c_4448:
    inc c
    and b
    dec c
    pop bc
    ld b, b
    ld b, h

jr_01c_444e:
    ld [de], a

jr_01c_444f:
    pop bc
    cpl
    ld b, d
    ld b, $c0
    cp $42

jr_01c_4456:
    ld e, $a0
    ld a, [bc]

jr_01c_4459:
    pop bc
    ld a, a
    ld b, d
    ld b, $a0
    dec c
    pop bc
    jr nz, jr_01c_44a2

    inc c
    and b
    dec b
    ld b, b
    inc c
    and b
    dec c
    pop bc

jr_01c_446a:
    jr nc, jr_01c_44a7

    inc c
    dec sp
    inc c
    ld b, d
    inc c

jr_01c_4471:
    pop bc
    ld c, d

jr_01c_4473:
    ld b, b

jr_01c_4474:
    jr jr_01c_4436

    cp $39
    inc h
    and b
    dec b
    pop bc
    ld d, b
    add hl, sp
    inc c
    and b
    dec c
    pop bc
    ld b, b
    add hl, hl
    ld [de], a
    pop bc
    cpl
    add hl, hl
    ld b, $c1
    ld e, a
    add hl, hl
    jr jr_01c_444f

    ld h, b

jr_01c_448f:
    add hl, hl
    jr jr_01c_44bd

    jr @+$33

    jr jr_01c_4456

    cp $32
    jr nc, jr_01c_443a

    ld a, [bc]
    pop bc
    ld a, a
    ld [hl-], a
    inc c
    and b

jr_01c_44a0:
    dec c
    pop bc

jr_01c_44a2:
    jr nc, jr_01c_44d6

    inc c
    inc [hl]

jr_01c_44a6:
    inc c

jr_01c_44a7:
    dec [hl]
    inc c
    ret nz

    cp $37
    jr nc, jr_01c_444e

    ld a, [bc]
    pop bc
    ld a, a
    scf
    inc c

jr_01c_44b3:
    and b
    dec c
    pop bc
    jr nc, jr_01c_44ea

    inc c
    ld [hl-], a
    inc c
    dec [hl]
    inc c

jr_01c_44bd:
    pop bc
    ld c, d
    dec [hl]
    jr jr_01c_44f6

    jr jr_01c_44f6

    jr jr_01c_44f6

    jr jr_01c_446a

    nop
    and e
    ld b, $c3
    jr nc, jr_01c_4507

    jr jr_01c_4473

    nop
    pop bc
    ld [hl], b
    add hl, sp
    inc h
    and e

jr_01c_44d6:
    ld b, $c3
    jr nz, jr_01c_4514

    inc c
    add hl, sp
    inc c
    scf
    inc c
    call nz, $3568
    jr nc, jr_01c_4516

    jr jr_01c_451b

    jr @-$3b

    jr nc, @+$39

jr_01c_44ea:
    jr jr_01c_448f

    nop
    pop bc
    ld [hl], b
    scf
    inc h
    and e
    ld b, $c3
    jr nz, jr_01c_452f

jr_01c_44f6:
    inc c
    scf
    inc c
    dec [hl]
    inc c
    call nz, $3568
    jr nc, jr_01c_44a0

jr_01c_4500:
    dec bc
    call nz, $347f
    jr jr_01c_44a6

    dec c

jr_01c_4507:
    call nz, Call_000_3048
    jr @-$3b

    jr nc, jr_01c_454e

    jr jr_01c_44b3

    nop
    pop bc
    ld [hl], b
    ld b, b

jr_01c_4514:
    inc h
    and e

jr_01c_4516:
    ld b, $c3
    jr nz, jr_01c_4553

    inc c

jr_01c_451b:
    ld a, [hl-]
    inc c
    ld b, b
    inc c
    jp $4230


    jr @-$5b

    nop
    pop bc
    ld [hl], b
    ld b, d
    inc h
    and e
    ld b, $c3
    jr nz, jr_01c_4560

    inc c

jr_01c_452f:
    inc [hl]
    inc c
    dec [hl]
    inc c

jr_01c_4533:
    call nz, Call_000_3a68
    jr nc, @+$3b

    jr nc, @+$37

    ld c, a

jr_01c_453b:
    rra

jr_01c_453c:
    ld [bc], a
    xor a
    rlca
    and b
    ld a, [bc]
    call nz, Call_000_3078
    add hl, de
    ld b, b
    inc c
    ld [hl], $0c
    scf
    inc c
    add hl, sp
    inc c
    ld a, [hl-]

jr_01c_454e:
    inc c
    add hl, sp
    inc c
    ld a, [hl-]
    inc c

jr_01c_4553:
    ld b, b
    inc c
    jp $4230


    ld [hl-], a
    and e
    nop
    pop bc
    jr nz, jr_01c_45a0

    jr jr_01c_4500

jr_01c_4560:
    dec c
    and e
    inc b
    call nz, $323c
    ld a, [de]
    inc [hl]
    ld a, [de]
    dec [hl]
    dec de
    and e
    ld b, $c3
    jr nc, jr_01c_45aa

    jr nc, jr_01c_4533

    ld a, b
    and e
    nop
    ld a, [hl-]
    jr nc, jr_01c_453c

    ld a, b
    and e
    ld b, $39
    jr nc, jr_01c_45b7

    inc [hl]
    jp $3530


    and a

jr_01c_4583:
    pop bc
    add b
    dec [hl]
    ld sp, $5a1f
    rst $38
    inc b
    ld c, b
    ld [bc], a
    dec bc
    rra
    jr @+$27

    jr jr_01c_45b7

    jr @+$25

    jr jr_01c_45b9

    jr jr_01c_453b

    rst $38
    add hl, de
    inc h
    and b
    inc b
    add hl, de
    inc c

jr_01c_45a0:
    and b
    ld [bc], a
    ld a, [de]
    inc h
    and b
    inc b
    ld a, [de]
    inc c
    and b
    ld [bc], a

jr_01c_45aa:
    and d
    ld c, b
    dec h
    jr jr_01c_45cf

    jr jr_01c_45c6

    jr @+$27

    jr jr_01c_45ca

    jr jr_01c_45d0

jr_01c_45b7:
    jr jr_01c_45d9

jr_01c_45b9:
    jr @+$27

    jr @-$5c

    rst $38
    add hl, de
    inc h
    and b
    inc b
    add hl, de
    inc c
    and b
    ld [bc], a

jr_01c_45c6:
    add hl, de
    inc h
    and b
    inc b

jr_01c_45ca:
    add hl, de
    inc c
    and b
    ld [bc], a
    and d

jr_01c_45cf:
    ld c, b

jr_01c_45d0:
    ld [hl+], a

jr_01c_45d1:
    jr jr_01c_45ec

    jr jr_01c_45ea

    jr jr_01c_45e9

    jr @+$1d

jr_01c_45d9:
    jr jr_01c_45fd

    jr @+$29

    jr @+$19

    jr jr_01c_4583

    rst $38
    jr nz, @+$26

    and b
    inc b
    jr nz, @+$0e

    and b

jr_01c_45e9:
    ld [bc], a

jr_01c_45ea:
    and d
    ld c, b

jr_01c_45ec:
    jr nz, @+$1a

    inc h
    jr @+$1b

    jr @+$23

    jr jr_01c_4619

    jr @+$1b

    jr jr_01c_461b

    jr jr_01c_461f

    jr @+$27

jr_01c_45fd:
    jr jr_01c_4621

    jr @+$1d

    jr jr_01c_4625

    jr @+$29

    jr @+$19

    jr jr_01c_4629

    jr jr_01c_462b

    jr @+$29

    jr jr_01c_4639

    jr jr_01c_463a

    jr jr_01c_4639

    jr jr_01c_4637

    jr jr_01c_4629

    jr jr_01c_4630

jr_01c_4619:
    jr @+$1b

jr_01c_461b:
    jr jr_01c_4637

    jr jr_01c_4636

jr_01c_461f:
    jr jr_01c_4648

jr_01c_4621:
    jr @+$22

    jr jr_01c_464f

jr_01c_4625:
    jr @+$22

    jr jr_01c_464e

jr_01c_4629:
    jr jr_01c_464b

jr_01c_462b:
    jr jr_01c_4642

    jr jr_01c_45d1

    ld [de], a

jr_01c_4630:
    rra
    jr @+$27

    ld [$0824], sp

jr_01c_4636:
    or d

jr_01c_4637:
    db $fc
    ld d, h

jr_01c_4639:
    nop

jr_01c_463a:
    inc hl
    ld [$0825], sp
    inc hl
    ld [$0822], sp

jr_01c_4642:
    ld hl, $2208
    ld [$0819], sp

jr_01c_4648:
    jr jr_01c_4652

    add hl, de

jr_01c_464b:
    ld [$0820], sp

jr_01c_464e:
    add hl, de

jr_01c_464f:
    ld [$0820], sp

jr_01c_4652:
    ld a, [de]
    ld [$0820], sp
    ld a, [de]
    ld [$0819], sp
    ld a, [de]
    ld [$0819], sp
    dec d
    ld [$0814], sp
    or l
    db $fc
    ld l, d
    nop
    dec d
    ld [$0817], sp
    jr jr_01c_4674

    add hl, de
    ld [$081a], sp
    dec de
    ld [$0820], sp

jr_01c_4674:
    ld [hl+], a
    ld [$0824], sp
    dec h
    ld [$0820], sp
    add hl, de
    ld [$0819], sp
    rla
    ld [$fcb5], sp
    ld a, d
    nop
    ld [hl+], a
    ld [$0821], sp
    ld [hl+], a
    ld [$0819], sp
    jr jr_01c_4698

    add hl, de
    ld [$0815], sp
    inc d
    ld [$0815], sp

jr_01c_4698:
    ld [hl+], a
    ld [$0825], sp
    add hl, hl
    ld [$081b], sp
    dec de
    ld [$0820], sp
    ld [hl+], a
    ld [$0822], sp
    dec h
    ld [$0827], sp
    ld [hl+], a
    ld [$081b], sp
    rla
    ld [$0815], sp
    rla
    ld [$0820], sp
    dec de
    ld [$0822], sp
    jr nz, @+$0a

    dec de
    ld [$0822], sp
    jr nz, jr_01c_46cc

    ld a, [de]
    ld [$0817], sp
    inc d
    ld [$0815], sp

jr_01c_46cc:
    rla
    ld [$0819], sp
    jr jr_01c_46da

    add hl, de
    ld [$0821], sp
    add hl, de
    ld [$0821], sp

jr_01c_46da:
    inc h
    ld [$0821], sp
    inc h
    ld [$0829], sp
    jr z, @+$0a

    add hl, hl
    ld [$0822], sp
    ld hl, $2208
    ld [$0824], sp
    inc hl
    ld [$0824], sp
    dec h
    ld [$0824], sp
    dec h
    ld [$0822], sp
    add hl, de
    ld [$0815], sp
    dec de
    ld [$0817], sp
    dec de
    ld [$0822], sp
    dec de
    ld [$0822], sp
    daa

jr_01c_470b:
    ld [$0826], sp
    daa
    ld [$0825], sp
    ld [hl+], a
    ld [$0817], sp
    jr nz, jr_01c_4720

    dec de
    ld [$0820], sp
    ld [hl+], a
    ld [$0824], sp

jr_01c_4720:
    dec h
    ld [$0827], sp
    ld h, $08
    daa
    ld [$0824], sp
    ld [hl+], a
    ld [$0820], sp
    add hl, hl
    ld [$0828], sp
    add hl, hl
    ld [$0826], sp
    add hl, hl

jr_01c_4737:
    ld [$0826], sp
    ld [hl+], a
    ld [$0820], sp
    add hl, de
    ld [$0812], sp
    inc d
    ld [$0816], sp
    rla
    ld [$0816], sp
    rla
    ld [$0819], sp
    jr jr_01c_4758

    add hl, de
    ld [$081a], sp
    add hl, de
    ld [$081a], sp

jr_01c_4758:
    rla
    ld [$0815], sp

jr_01c_475c:
    rla
    ld [$70a2], sp
    daa
    jr jr_01c_4783

    jr jr_01c_478f

    jr jr_01c_4787

    jr jr_01c_470b

    ld [$0825], sp
    and d
    db $10
    dec h
    ld [$0820], sp
    dec d
    ld [$0819], sp

jr_01c_4776:
    jr nz, jr_01c_4780

    and d
    ld [hl], b
    dec h
    inc c
    and b
    ld b, $25
    inc de

jr_01c_4780:
    rra
    ld [bc], a
    and b

jr_01c_4783:
    ld [bc], a
    and c
    inc bc
    xor a

jr_01c_4787:
    rlca
    rra
    add hl, de
    and d
    and b
    and b
    inc b
    ld [hl-], a

jr_01c_478f:
    jr nc, jr_01c_47c8

    jr jr_01c_47c8

    jr jr_01c_4737

    ld [hl], b
    inc [hl]
    ld c, d
    and b
    ld [bc], a
    and d
    ld e, a
    and c
    ld a, [bc]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    add hl, de
    dec de
    and d
    ld d, b
    rla
    inc c
    and c
    inc bc
    and d
    inc h
    daa
    inc c
    daa
    inc c
    ld a, [hl+]
    inc c
    ld a, [hl+]
    inc c
    ld [hl-], a
    inc c
    ld [hl-], a
    inc c
    and d
    jr c, jr_01c_475c

    dec bc
    rla
    inc c
    and d
    ld b, b
    jr nz, jr_01c_47ce

    and c
    inc bc
    and d
    inc h
    inc h
    inc c

jr_01c_47c8:
    inc h
    inc c
    ld a, [hl+]
    inc c

jr_01c_47cc:
    ld a, [hl+]
    dec c

jr_01c_47ce:
    inc [hl]
    dec c
    inc [hl]
    dec c
    and d
    jr c, jr_01c_4776

    dec bc
    jr nz, jr_01c_47e5

    and d
    ld b, b
    dec d
    ld c, $a1
    inc bc

jr_01c_47de:
    and d
    inc h
    dec h
    dec c
    dec h
    dec c
    add hl, hl

jr_01c_47e5:
    dec c
    add hl, hl
    ld c, $30
    ld c, $30
    ld c, $a1
    dec bc
    and d
    ld b, b

jr_01c_47f0:
    dec d
    rrca
    and c
    inc bc
    and d
    rst $38
    dec d
    ld hl, $04a0
    dec d
    inc bc
    and b
    ld [bc], a
    dec h
    inc bc
    daa
    inc bc
    add hl, hl
    inc bc
    ld a, [hl+]
    inc bc
    jr nc, jr_01c_480b

    ld [hl-], a
    inc bc
    inc [hl]

jr_01c_480b:
    inc bc
    dec [hl]
    add hl, de
    rra
    jr jr_01c_4830

    ld e, d
    rst $38
    ld [bc], a
    ld [bc], a
    add hl, bc
    nop
    cp $fe
    and d
    ld bc, $14a3
    pop bc

jr_01c_481e:
    ld [hl-], a
    rra
    jr nz, jr_01c_4841

    ld bc, $05a0
    rla
    rrca
    and b
    inc c
    ld [hl+], a
    jr nz, jr_01c_47cc

    add hl, bc
    ld [hl+], a
    db $10
    or c

jr_01c_4830:
    db $fc
    rlca
    nop
    rra
    ld bc, $05a0
    ld d, $0f
    and b
    inc c
    ld [hl+], a
    jr nz, jr_01c_47de

    add hl, bc
    ld [hl+], a
    db $10

jr_01c_4841:
    or c

jr_01c_4842:
    db $fc
    stop
    rra
    ld bc, $05a0
    inc d
    rrca
    and b
    inc c
    dec de
    jr nz, jr_01c_47f0

jr_01c_4850:
    add hl, bc
    dec de
    db $10
    and b
    dec b
    rra
    ld bc, $0f09
    and b
    inc c
    jr nz, @+$22

    and b
    add hl, bc
    jr nz, jr_01c_4871

    and b
    dec b
    rra
    ld bc, $0f12
    and b
    inc c
    jr nz, jr_01c_488b

    and b

jr_01c_486c:
    add hl, bc
    jr nz, jr_01c_487f

    or c
    db $fc

jr_01c_4871:
    daa
    nop
    and b
    dec b
    rra
    ld bc, $0f19
    and b

jr_01c_487a:
    inc c
    inc h
    jr nz, jr_01c_481e

    add hl, bc

jr_01c_487f:
    inc h
    db $10
    or c
    db $fc
    jr nc, jr_01c_4885

jr_01c_4885:
    and b
    dec b
    rra

jr_01c_4888:
    ld bc, $0f18

jr_01c_488b:
    and b
    inc c
    inc h
    jr nz, jr_01c_4830

    add hl, bc
    inc h
    db $10
    or c
    db $fc
    add hl, sp

jr_01c_4896:
    nop
    and b
    dec b
    rra
    ld bc, $0f17
    and b
    inc c
    inc h
    jr nz, jr_01c_4842

    add hl, bc
    inc h

jr_01c_48a4:
    db $10
    and b
    dec b
    rra
    ld bc, $0f16
    and b
    inc c
    ld [hl+], a
    jr nz, jr_01c_4850

    add hl, bc
    ld [hl+], a
    db $10
    and b
    dec b
    rra
    ld bc, $0f17
    and b
    inc c
    ld h, $20
    and b
    ld [$1026], sp
    and b
    dec b
    rra
    ld bc, $0f17
    and b
    inc c
    dec h
    jr nz, jr_01c_486c

    ld [$1025], sp
    and b
    dec b
    rra
    ld bc, $0f10
    and b
    inc c
    inc h
    jr nz, jr_01c_487a

    add hl, bc
    inc h
    db $10
    and b
    dec b
    rra
    ld bc, $0f16
    and b
    inc c
    inc h
    jr nz, jr_01c_4888

    add hl, bc
    inc h

jr_01c_48ea:
    db $10
    and b
    dec b
    rra
    ld bc, $0f0b
    and b
    inc c
    ld [hl+], a
    jr nz, jr_01c_4896

    add hl, bc
    ld [hl+], a

jr_01c_48f8:
    db $10
    rra
    ld bc, $05a0
    inc d
    rrca
    and b
    inc c
    ld [hl+], a
    jr nz, jr_01c_48a4

    add hl, bc
    ld [hl+], a

jr_01c_4906:
    db $10
    rra
    ld bc, $05a0
    add hl, bc
    rrca
    and b
    inc c
    jr nz, jr_01c_4931

    and b
    add hl, bc
    jr nz, jr_01c_4925

    and b
    dec b
    rra
    ld bc, $0f09
    and b
    inc c
    inc h
    jr nz, @-$5e

    add hl, bc
    inc h
    db $10
    and b
    dec b

jr_01c_4925:
    rra
    ld bc, $0f0a
    and b
    inc c
    inc h
    jr nz, @-$5e

    add hl, bc
    inc h
    db $10

jr_01c_4931:
    and b
    dec b
    rra
    ld bc, $0f0b
    and b

jr_01c_4938:
    inc c
    ld h, $20
    and b
    add hl, bc
    ld h, $10
    and b
    dec b
    rra
    ld bc, $0f15
    and b

jr_01c_4946:
    inc c
    ld [hl+], a
    jr nz, jr_01c_48ea

    add hl, bc
    ld [hl+], a
    db $10

jr_01c_494d:
    and b
    dec b
    rra
    ld bc, $0f14
    and b

jr_01c_4954:
    inc c
    ld [hl+], a
    jr nz, jr_01c_48f8

    add hl, bc
    ld [hl+], a
    db $10
    and b
    dec b
    rra
    ld bc, $0f11
    and b
    inc c
    inc h
    jr nz, jr_01c_4906

    add hl, bc
    inc h
    db $10
    and b
    dec b
    rra
    ld bc, $0f12
    and b
    inc c
    ld h, $20
    and b
    add hl, bc
    ld h, $10
    and b
    inc c
    pop bc
    ld c, a
    ld [hl+], a
    jr nz, @+$24

    jr nz, jr_01c_49a2

    jr nz, jr_01c_49a2

    jr nz, @+$1d

    jr nz, jr_01c_49a1

    jr nz, jr_01c_49a1

    jr nz, @+$25

    jr nz, jr_01c_494d

    ld [hl-], a
    and b
    dec b
    rra
    ld bc, $0f14
    and b
    inc c
    dec de
    jr nz, jr_01c_4938

    add hl, bc
    dec de
    db $10
    and b
    dec b
    rra
    ld bc, $0f11

jr_01c_49a1:
    and b

jr_01c_49a2:
    inc c
    add hl, de
    jr nz, jr_01c_4946

    add hl, bc
    add hl, de
    db $10
    and b
    dec b
    rra
    ld bc, $0f12
    and b
    inc c
    add hl, de
    jr nz, jr_01c_4954

    add hl, bc
    add hl, de
    db $10
    or c
    db $fc
    rlc b
    and d
    ld [bc], a
    and b
    dec b
    and e
    ld h, b
    pop bc
    rrca
    rra
    jr jr_01c_49f8

    db $10
    ld [hl-], a
    db $10
    ld [hl-], a
    db $10
    and b
    dec b
    pop bc
    ld h, b
    ld [hl-], a
    db $10
    inc [hl]
    db $10
    jr nc, jr_01c_49e5

    ld [hl-], a
    db $10
    jp nz, $2b0f

    ld [$0ba0], sp
    and h
    cp $c2
    db $10
    daa
    db $10
    daa
    db $10

jr_01c_49e5:
    daa
    db $10
    pop bc
    ld h, b
    ld h, $10
    daa
    db $10
    inc h
    db $10
    ld h, $10
    pop bc
    add b
    ld [hl+], a
    ld b, b
    and e
    ld [hl], b
    and a

jr_01c_49f8:
    ld [$fcb1], sp
    call c, $a000
    dec b
    pop bc
    ld h, b
    jr nc, jr_01c_4a13

    ld [hl-], a
    db $10
    inc [hl]
    db $10
    ld [hl], $10
    pop bc
    db $10
    scf
    ld [$0ba0], sp
    and h
    cp $c2
    db $10

jr_01c_4a13:
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    pop bc
    ld h, b
    inc h
    db $10
    ld h, $10
    daa
    db $10
    add hl, hl
    db $10
    pop bc
    add b
    dec hl
    ld b, b
    and e
    ld [hl], b
    and a
    ld [$05a0], sp
    pop bc
    ld h, b
    add hl, sp
    db $10
    scf
    db $10
    ld [hl], $10
    inc [hl]
    db $10
    pop bc
    db $10
    ld [hl-], a
    ld [$0ba0], sp
    and h
    cp $c2
    db $10
    dec hl
    db $10
    dec hl
    db $10
    dec hl
    db $10
    pop bc
    ld h, b
    add hl, hl
    db $10
    daa
    db $10
    ld h, $10
    inc h
    db $10
    pop bc
    add b
    ld [hl+], a
    ld b, b
    and e
    ld [hl], b
    and a
    ld [$05a0], sp
    pop bc
    ld h, b
    ld b, d
    db $10
    ld b, h
    db $10
    ld b, b
    db $10
    ld b, d
    db $10
    pop bc
    db $10
    dec sp
    ld [$0ba0], sp
    and h
    cp $c2
    db $10
    scf
    db $10
    scf
    db $10
    scf
    db $10
    pop bc
    ld h, b
    ld [hl], $10
    scf
    db $10
    inc [hl]
    db $10
    ld [hl], $10
    pop bc
    add b
    ld [hl-], a
    ld b, b
    and e
    ld [hl], b
    and a
    ld [$05a0], sp
    pop bc
    ld h, b
    add hl, hl
    db $10
    jr nc, jr_01c_4a9f

    dec [hl]
    db $10
    add hl, sp
    db $10
    pop bc
    db $10
    scf
    ld [$0ba0], sp
    and h
    cp $c2
    db $10
    daa
    db $10

jr_01c_4a9f:
    daa
    db $10
    daa

jr_01c_4aa2:
    db $10
    pop bc
    ld h, b
    dec h
    db $10
    add hl, hl
    db $10
    jr nz, @+$12

    dec h
    db $10
    pop bc
    add b
    ld [hl+], a
    ld b, b
    and e
    ld [hl], b
    and d
    ld bc, $03a0
    and h
    cp $fd
    cp $c1
    ld [$10a7], sp
    pop bc
    db $10
    ld [hl-], a
    ld [$0834], sp
    or d
    db $fc
    ld d, a
    ld bc, $00b2
    and a
    db $10
    and b
    add hl, bc

jr_01c_4acf:
    pop bc
    jr nc, jr_01c_4acf

    cp $2b
    ld [$0830], sp
    or d
    db $fc
    ld h, b
    ld bc, $30c1
    and a
    db $10
    or c
    nop
    dec hl
    ld [$0830], sp
    or d
    db $fc
    ld h, a
    ld bc, $102b
    rra
    db $10
    or b
    db $fc
    ld [bc], a
    nop
    rst $38
    rst $38
    ld [bc], a
    ld [bc], a
    rrca
    nop
    cp $fe
    and d
    ld [bc], a
    and e
    ld [hl+], a
    pop bc
    cpl
    rra
    jr nz, jr_01c_4aa2

    ld c, $17
    db $10
    and b
    rlca
    dec de
    jr nz, @+$1d

    db $10
    or c
    db $fc
    rlca
    nop
    and b
    ld c, $16
    db $10
    and b
    rlca
    dec de
    jr nz, @+$1d

    db $10
    or c
    db $fc
    ld c, $00
    and b
    ld c, $14
    db $10
    and b
    rlca
    rla
    jr nz, @+$19

    db $10
    and b
    ld c, $09
    db $10
    and b
    rlca
    rla
    jr nz, @+$19

    db $10
    and b
    ld c, $12
    db $10
    and b
    rlca
    rla
    jr nz, jr_01c_4b51

    db $10
    and b
    ld c, $12
    db $10
    and b
    rlca
    ld d, $20
    ld d, $10
    and b
    ld c, $19
    db $10
    and b
    rlca
    jr nz, @+$22

    jr nz, jr_01c_4b5f

    or c
    db $fc

jr_01c_4b51:
    add hl, hl
    nop
    and b
    ld c, $18
    db $10
    and b
    rlca
    jr nz, @+$22

    jr nz, @+$12

    or c
    db $fc

jr_01c_4b5f:
    jr nc, jr_01c_4b61

jr_01c_4b61:
    and b
    ld c, $17
    db $10
    and b
    rlca
    jr nz, jr_01c_4b89

    jr nz, @+$12

    and b
    ld c, $16
    db $10
    and b
    ld c, $20
    jr nz, @+$22

    db $10
    and b
    ld c, $17
    db $10
    and b
    ld c, $1b
    jr nz, @+$1d

    db $10
    or c
    db $fc
    ld b, c
    nop
    and b
    ld c, $10
    db $10
    and b
    rlca

jr_01c_4b89:
    rla
    jr nz, @+$19

    db $10
    and b
    ld c, $16
    db $10
    and b
    rlca
    jr nz, jr_01c_4bb5

    jr nz, jr_01c_4ba7

    and b
    ld c, $0b
    db $10
    and b
    rlca
    add hl, de
    jr nz, jr_01c_4bb9

    db $10
    and b
    ld c, $14
    db $10
    and b
    rlca

jr_01c_4ba7:
    jr jr_01c_4bc9

    jr jr_01c_4bbb

    and b
    ld c, $09
    db $10
    and b
    rlca
    rla
    jr nz, @+$19

    db $10

jr_01c_4bb5:
    and b
    ld c, $09
    db $10

jr_01c_4bb9:
    and b
    rlca

jr_01c_4bbb:
    jr nz, jr_01c_4bdd

    jr nz, jr_01c_4bcf

    and b
    ld c, $0a
    db $10
    and b
    rlca
    ld hl, $2120
    db $10

jr_01c_4bc9:
    and b
    ld c, $0b
    db $10
    and b
    rlca

jr_01c_4bcf:
    add hl, de
    jr nz, jr_01c_4beb

    db $10
    and b
    ld c, $15
    db $10
    and b
    rlca
    add hl, de
    jr nz, jr_01c_4bf5

    db $10

jr_01c_4bdd:
    and b
    ld c, $14
    db $10
    and b
    rlca
    jr @+$22

    jr jr_01c_4bf7

    and b
    ld c, $11
    db $10

jr_01c_4beb:
    and b
    rlca
    rla
    jr nz, @+$19

    db $10
    and b
    ld c, $12
    db $10

jr_01c_4bf5:
    and b
    rlca

jr_01c_4bf7:
    jr nz, @+$22

    jr nz, @+$12

    pop bc
    ld c, a
    and b
    dec bc
    rla
    jr nz, jr_01c_4c18

    jr nz, jr_01c_4c1a

    jr nz, jr_01c_4c1a

    jr nz, jr_01c_4c1a

    jr nz, jr_01c_4c1c

    jr nz, jr_01c_4c1c

    jr nz, @+$0d

    jr nz, @-$3d

    cpl
    and b
    ld c, $04
    db $10
    and b
    rlca
    rla

jr_01c_4c18:
    jr nz, @+$19

jr_01c_4c1a:
    db $10
    and b

jr_01c_4c1c:
    ld c, $11
    db $10
    and b
    rlca
    rla
    jr nz, jr_01c_4c3b

    db $10
    and b
    ld c, $12
    db $10
    and b
    rlca
    rla
    jr nz, jr_01c_4c45

    db $10
    and b
    ld c, $12
    db $10
    and b
    rlca
    ld d, $20
    ld d, $10
    and d
    ld [bc], a

jr_01c_4c3b:
    and b
    ld a, [bc]
    and b
    inc c
    and e
    ld [$10c2], sp
    rra
    db $10

jr_01c_4c45:
    ld [hl-], a
    db $10
    ld [hl-], a
    db $10
    ld [hl-], a
    db $10
    pop bc
    ld [hl], b
    ld [hl-], a
    db $10
    inc [hl]
    db $10
    jr nc, jr_01c_4c63

    ld [hl-], a
    db $10
    and b
    ld a, [bc]
    ret nz

    cp $2b
    ld b, b
    pop bc
    add b
    and e
    jr nz, jr_01c_4c8b

    ld b, b
    or c
    db $fc

jr_01c_4c63:
    and l
    nop
    and b
    inc c
    and e
    ld [$10c2], sp
    rra
    db $10
    dec hl
    db $10
    dec hl
    db $10
    dec hl
    db $10
    pop bc
    ld [hl], b
    jr nc, @+$12

    ld [hl-], a
    db $10
    inc [hl]
    db $10
    ld [hl], $10
    and b
    ld a, [bc]
    ret nz

    cp $37
    ld b, b
    pop bc
    add b
    and e
    jr nz, jr_01c_4cbf

    ld b, b
    and b
    inc c

jr_01c_4c8b:
    and e
    ld [$10c2], sp
    rra
    db $10
    dec sp
    db $10
    dec sp
    db $10
    dec sp
    db $10
    pop bc
    ld [hl], b
    add hl, sp
    db $10
    scf
    db $10
    ld [hl], $10
    inc [hl]
    db $10
    and b
    ld a, [bc]
    ret nz

    cp $32
    ld b, b
    pop bc
    add b
    and e
    jr nz, jr_01c_4cde

    ld b, b
    and b
    inc c
    and e
    ld [$10c2], sp
    rra
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    pop bc
    ld [hl], b
    ld b, d

jr_01c_4cbe:
    db $10

jr_01c_4cbf:
    ld b, h
    db $10
    ld b, b
    db $10
    ld b, d
    db $10
    and b
    ld a, [bc]
    ret nz

    cp $3b
    ld b, b
    pop bc
    add b
    and e
    jr nz, jr_01c_4d0b

    ld b, b
    and b
    inc c
    and e
    ld [$10c2], sp
    rra
    db $10
    dec hl
    db $10
    dec hl
    db $10
    dec hl

jr_01c_4cde:
    db $10
    pop bc
    ld [hl], b
    add hl, hl

jr_01c_4ce2:
    db $10
    jr nc, jr_01c_4cf5

    dec [hl]

jr_01c_4ce6:
    db $10
    add hl, sp
    db $10
    and b

jr_01c_4cea:
    ld a, [bc]
    ret nz

    cp $37
    ld b, b
    pop bc

jr_01c_4cf0:
    add b
    and e
    jr nz, jr_01c_4d2b

    ld b, b

jr_01c_4cf5:
    and d
    ld bc, $fea3
    db $fd
    cp $c2
    db $10
    and a
    db $10
    pop bc
    jr nc, jr_01c_4d34

    ld [$0834], sp
    or d
    db $fc
    rlca
    ld bc, $00b6

jr_01c_4d0b:
    ld [hl-], a
    jr nz, jr_01c_4cbe

    db $fc
    ld [bc], a
    nop
    rst $38
    rst $38
    ld [bc], a
    nop
    ld [bc], a
    rrca
    cp $fe
    and c
    rrca
    and b
    ld [bc], a
    and e
    rra
    and d
    ld [hl], l
    dec sp
    ld de, $1040
    and d
    ld c, b
    ld b, d
    ld e, a
    or c
    db $fc

jr_01c_4d2b:
    dec b
    nop
    and d
    ld [hl], l
    dec sp
    db $10
    ld b, b
    db $10
    and d

jr_01c_4d34:
    and b

jr_01c_4d35:
    ld b, d
    jr nz, jr_01c_4d73

    db $10
    add hl, sp
    db $10
    and d
    adc a
    scf
    jr nz, jr_01c_4ce2

    and b
    inc [hl]
    jr nz, jr_01c_4ce6

    rst $38
    and e
    dec de
    add hl, sp
    jr nz, jr_01c_4cea

    inc b
    and e
    db $10
    add hl, sp
    jr nz, jr_01c_4cf0

    ld b, $39
    ld e, $1f
    ld [bc], a
    and b
    ld [bc], a
    and e
    rra
    and d
    ld [hl], l
    ld b, b
    db $10
    ld b, d
    db $10

jr_01c_4d5f:
    and d
    ld c, b
    ld b, h
    ld h, b
    or c
    db $fc
    ld [hl+], a
    nop
    and d
    and b
    ld b, b
    db $10
    ld b, d
    db $10
    ld b, h
    jr nz, jr_01c_4db6

    db $10
    ld b, a
    db $10

jr_01c_4d73:
    ld b, [hl]
    db $10
    ld b, h
    db $10
    ld b, d

jr_01c_4d78:
    db $10
    ld b, h
    db $10
    and e
    rra
    and d
    rst $38
    dec sp
    ld b, b
    and e
    db $10
    and b
    inc b
    dec sp
    ld e, $1f
    ld [bc], a

jr_01c_4d89:
    and d
    ld [hl], l
    and b
    ld [bc], a
    and e
    rra
    dec sp
    jr nz, jr_01c_4d35

    cp $a2

jr_01c_4d94:
    rst $38
    ld c, e
    dec sp
    and b
    inc b
    and e
    dec d
    ld c, e
    dec h
    and b
    ld [bc], a
    and e
    rra
    and d
    add b
    ld c, c
    db $10
    ld b, a
    db $10
    ld b, h
    db $10
    ld b, [hl]
    db $10
    ld b, d
    db $10
    ld b, h
    db $10
    and e
    add hl, de
    and d
    jr nc, @+$3d

    jr nz, @+$21

jr_01c_4db6:
    ld bc, $80a2
    ld b, h
    jr nz, jr_01c_4d5f

    cp $a2
    rst $38
    ld d, b

jr_01c_4dc0:
    dec sp
    and b
    inc b
    and e
    ld a, [de]
    ld d, b
    inc h
    and b

jr_01c_4dc8:
    ld [bc], a
    and e
    rra
    and d
    add b
    ld c, e
    db $10
    ld c, c

jr_01c_4dd0:
    db $10
    and d
    adc a
    ld b, a
    jr nz, jr_01c_4d78

jr_01c_4dd6:
    add b
    ld b, [hl]
    db $10
    ld b, h
    db $10
    and d
    jr nc, jr_01c_4e20

    rra
    rra

jr_01c_4de0:
    ld bc, $80a2
    ld b, d
    jr nz, jr_01c_4d89

    cp $a2
    rst $38
    ld d, d
    ld b, b
    and b
    inc b
    and e
    jr jr_01c_4e42

    jr nz, jr_01c_4d94

jr_01c_4df2:
    add b
    and b
    ld [bc], a
    and e
    cp $50
    db $10
    ld c, e
    db $10
    ld c, c
    db $10
    ld b, a
    db $10
    ld b, [hl]
    db $10
    ld b, h
    db $10
    ld b, d
    db $10
    ld b, b
    db $10
    dec sp
    db $10
    add hl, sp
    db $10
    and e
    add hl, de
    and d
    jr c, jr_01c_4e4b

    ld de, $28a2
    ld b, h
    rra
    and d
    jr c, @+$3b

    db $10
    and d
    jr z, jr_01c_4e5e

    jr nz, jr_01c_4dc0

    jr c, jr_01c_4e57

jr_01c_4e20:
    db $10
    and d
    jr z, jr_01c_4e64

    jr nz, jr_01c_4dc8

    jr c, jr_01c_4e5e

    db $10
    and d
    jr z, @+$3d

    jr nz, jr_01c_4dd0

    add b
    inc [hl]
    jr nz, @+$38

    jr nz, jr_01c_4dd6

    rst $38
    scf
    ld b, c
    and b
    inc b
    and e
    inc de
    scf
    jr nz, jr_01c_4de0

    add b
    and b
    ld [bc], a
    and e

jr_01c_4e42:
    add hl, de
    add hl, sp
    db $10
    dec sp
    db $10
    and d
    rst $38
    add hl, sp
    ld b, b

jr_01c_4e4b:
    and b
    inc b
    and e
    inc de
    add hl, sp
    jr nz, jr_01c_4df2

    ld b, $39
    rra
    and d
    inc b

jr_01c_4e57:
    and b
    ld [bc], a
    and c
    ld a, [bc]
    cp $fe
    db $fd

jr_01c_4e5e:
    cp $a0
    ld [bc], a
    and c
    dec bc
    and d

jr_01c_4e64:
    jr jr_01c_4e7d

    ld [$04a0], sp
    rla
    ld [$02a0], sp
    and c

Call_01c_4e6e:
    ld [bc], a
    and d
    inc b
    dec hl
    ld [$06a0], sp
    dec hl
    ld [$02a0], sp
    ld [hl-], a
    ld [$06a0], sp

jr_01c_4e7d:
    ld [hl-], a
    ld [$02a0], sp
    dec hl
    ld [$06a0], sp
    dec hl
    ld [$02a0], sp
    and c
    dec bc
    and d
    jr jr_01c_4ea5

    ld [$04a0], sp
    rla
    ld [$02a0], sp
    and c
    ld [bc], a
    and d
    inc b
    jr nc, @+$0a

    and b
    ld b, $30
    ld [$02a0], sp
    ld [hl-], a
    ld [$06a0], sp

jr_01c_4ea5:
    ld [hl-], a
    ld [$02a0], sp
    jr nc, jr_01c_4eb3

    and b
    ld b, $30
    ld [$fcb9], sp
    and h
    nop

jr_01c_4eb3:
    and b
    ld [bc], a
    and c
    dec bc
    and d
    jr jr_01c_4ed1

    ld [$04a0], sp
    rla
    ld [$02a0], sp
    and c
    ld [bc], a
    and d
    inc b
    dec hl
    ld [$06a0], sp
    dec hl
    ld [$02a0], sp
    ld [hl-], a
    ld [$06a0], sp

jr_01c_4ed1:
    ld [hl-], a
    ld [$02a0], sp
    dec hl
    ld [$06a0], sp
    dec hl
    ld [$02a0], sp
    and c
    dec bc
    and d
    jr jr_01c_4ef7

    ld [$04a0], sp
    dec d
    ld [$02a1], sp
    and d
    inc b
    and b
    ld [bc], a
    add hl, hl
    ld [$06a0], sp
    add hl, hl
    ld [$02a0], sp
    jr nc, @+$0a

jr_01c_4ef7:
    and b
    ld b, $30
    ld [$02a0], sp
    add hl, hl
    ld [$06a0], sp
    add hl, hl
    ld [$02a0], sp
    and c
    dec bc
    and d
    jr jr_01c_4f21

    ld [$04a0], sp
    rla
    ld [$02a0], sp
    and c
    ld [bc], a
    and d
    inc b
    dec hl
    ld [$06a0], sp
    dec hl
    ld [$02a0], sp
    ld [hl-], a
    ld [$06a0], sp

jr_01c_4f21:
    ld [hl-], a
    ld [$02a0], sp
    dec hl
    ld [$06a0], sp
    dec hl
    ld [$02a0], sp
    and c
    dec bc
    and d
    jr @+$17

    ld [$04a0], sp
    dec d
    ld [$02a1], sp
    and d
    inc b
    and b
    ld [bc], a
    add hl, hl
    ld [$06a0], sp
    add hl, hl
    ld [$02a0], sp
    add hl, hl
    ld [$06a0], sp
    add hl, hl
    ld [$02a0], sp
    add hl, hl
    ld [$06a0], sp
    add hl, hl
    ld [$02a0], sp
    and c
    dec bc
    and d
    jr jr_01c_4f71

    ld [$04a0], sp
    rla
    ld [$02a0], sp
    and c
    ld [bc], a
    and d
    inc b
    dec hl
    ld [$06a0], sp
    dec hl
    ld [$02a0], sp
    ld [hl-], a
    ld [$06a0], sp

jr_01c_4f71:
    ld [hl-], a
    ld [$02a0], sp
    dec hl
    ld [$06a0], sp
    dec hl
    ld [$02a0], sp
    and c
    dec bc
    and d
    jr jr_01c_4f97

    ld [$04a0], sp
    dec d
    ld [$02a1], sp
    and d
    inc b
    and b
    ld [bc], a
    add hl, hl
    ld [$06a0], sp
    add hl, hl
    ld [$02a0], sp
    jr nc, @+$0a

jr_01c_4f97:
    and b
    ld b, $30
    ld [$02a0], sp
    add hl, hl
    ld [$06a0], sp
    add hl, hl
    ld [$02a0], sp
    and c
    dec bc
    and d
    jr @+$14

    ld [$04a0], sp
    ld [de], a
    ld [$02a0], sp
    and c
    ld [bc], a
    and d
    inc b
    ld h, $08
    and b
    ld b, $26
    ld [$02a0], sp
    ld [hl-], a
    ld [$06a0], sp
    ld [hl-], a
    ld [$02a0], sp
    ld h, $08
    and b
    ld b, $26
    ld [$02a0], sp
    and c
    dec bc
    and d
    jr jr_01c_4fe7

    ld [$04a0], sp
    dec d
    ld [$02a0], sp
    and c
    ld [bc], a
    and d
    inc b
    add hl, hl
    ld [$06a0], sp
    add hl, hl
    ld [$02a0], sp
    jr nc, @+$0a

jr_01c_4fe7:
    and b
    ld b, $30
    ld [$02a0], sp
    add hl, hl
    ld [$06a0], sp
    add hl, hl
    ld [$02a0], sp
    and c
    dec bc
    and d
    jr jr_01c_5011

    ld [$04a0], sp
    rla
    ld [$02a0], sp
    and c
    ld [bc], a
    and d
    inc b
    dec hl
    ld [$06a0], sp
    dec hl
    ld [$02a0], sp
    ld [hl-], a
    ld [$06a0], sp

jr_01c_5011:
    ld [hl-], a
    ld [$02a0], sp
    dec hl
    ld [$06a0], sp
    dec hl
    ld [$02a0], sp
    and c
    dec bc
    and d
    jr jr_01c_5039

    ld [$04a0], sp
    rla
    ld [$02a1], sp
    and d
    inc b
    and b
    ld [bc], a
    jr nc, @+$0a

    and b
    ld b, $30
    ld [$02a0], sp
    ld [hl-], a
    ld [$06a0], sp

jr_01c_5039:
    ld [hl-], a
    ld [$02a0], sp
    jr nc, @+$0a

    and b
    ld b, $30
    ld [$fcb1], sp
    add h
    ld bc, $02a0
    and c
    dec bc
    and d
    jr jr_01c_5065

    ld [$04a0], sp
    rla
    ld [$101f], sp
    or b
    db $fc
    ld [bc], a
    nop
    rst $38
    rst $38
    rst $38
    rlca
    ld [bc], a
    ld a, [bc]
    nop
    db $fd
    cp $a2
    ld [bc], a
    and b

jr_01c_5065:
    inc b
    pop bc
    ld [de], a
    rra
    inc b
    ld [hl+], a
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    dec h
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    dec hl
    ld a, [bc]
    daa
    ld a, [bc]
    dec hl
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    jr nc, jr_01c_5088

    add hl, hl
    ld a, [bc]
    jr nc, jr_01c_508c

    ld [hl+], a
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    dec h
    ld a, [bc]

jr_01c_5088:
    ld a, [hl+]
    ld a, [bc]
    inc h
    ld a, [bc]

jr_01c_508c:
    jr nc, jr_01c_5098

    add hl, hl
    ld a, [bc]
    jr nc, jr_01c_509c

    ld [hl+], a
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    ld h, $0a

jr_01c_5098:
    add hl, hl
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]

jr_01c_509c:
    add hl, hl
    ld a, [bc]
    ld h, $0a
    add hl, hl
    ld a, [bc]
    daa
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    jr nc, jr_01c_50b4

    ld [hl+], a
    ld a, [bc]
    jr nc, jr_01c_50b8

    add hl, hl
    ld a, [bc]
    jr nc, jr_01c_50bc

    ld [hl+], a
    ld a, [bc]

jr_01c_50b4:
    dec hl
    ld a, [bc]
    daa
    ld a, [bc]

jr_01c_50b8:
    dec hl
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]

jr_01c_50bc:
    dec hl
    ld a, [bc]
    daa
    ld a, [bc]
    dec hl
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    jr z, jr_01c_50d2

    ld a, [hl+]
    ld a, [bc]
    ld hl, $290a
    ld a, [bc]
    inc h
    ld a, [bc]
    add hl, hl
    ld a, [bc]

jr_01c_50d2:
    ld [hl+], a
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    inc h
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    ld hl, $290a
    ld a, [bc]
    inc h
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    dec de
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    ld hl, $290a

jr_01c_50e9:
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    dec h
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    dec hl
    ld a, [bc]
    daa
    ld a, [bc]
    dec hl
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    jr nc, jr_01c_5108

    add hl, hl
    ld a, [bc]
    jr nc, jr_01c_510c

    ld [hl+], a
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    dec h
    ld a, [bc]

jr_01c_5108:
    ld a, [hl+]
    ld a, [bc]
    add hl, de
    ld a, [bc]

jr_01c_510c:
    inc h
    ld a, [bc]
    jr nz, jr_01c_511a

    inc h
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    ld h, $0a
    add hl, hl
    ld a, [bc]

jr_01c_511a:
    ld [hl+], a
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    ld h, $0a
    add hl, hl
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    ld h, $0a
    add hl, hl
    ld b, $a2
    ld bc, $09a3
    and b
    ld [$60c3], sp
    dec h
    rra
    and b
    inc c
    pop bc
    jr nc, jr_01c_515e

    dec e
    jp $a336


    ld [bc], a
    daa
    ld h, h
    and b
    dec c
    jp Jump_000_2950


    rra
    pop bc
    jr nc, jr_01c_50e9

    rrca
    add hl, hl
    dec e
    and b
    add hl, bc
    jp Jump_000_2750


    ld b, [hl]
    and e
    nop
    pop bc
    ld a, a
    daa
    ld e, $b1
    db $fc
    ld l, b
    nop
    xor a
    rlca

jr_01c_515e:
    and d
    ld [bc], a
    and b
    ld a, [bc]
    and c
    nop
    pop bc
    ld [de], a
    ld [hl-], a
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    dec [hl]
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    dec sp
    ld a, [bc]
    scf
    ld a, [bc]
    dec sp
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    ld b, b
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    ld b, b
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    ld a, [hl-]
    ld a, [bc]
    dec [hl]
    ld a, [bc]
    ld a, [hl-]
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    ld b, b
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    ld b, b
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    ld [hl], $0a
    add hl, sp
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    ld [hl], $0a
    add hl, sp
    ld a, [bc]
    scf
    ld a, [bc]
    ld a, [hl-]
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    ld b, b
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    ld b, b
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    ld b, b
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    dec sp
    ld a, [bc]
    scf
    ld a, [bc]
    dec sp
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    dec sp
    ld a, [bc]
    scf
    ld a, [bc]
    dec sp
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    ld a, [hl-]
    ld a, [bc]
    jr c, jr_01c_51ce

    ld a, [hl-]
    ld a, [bc]
    ld sp, $390a
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    add hl, sp
    ld a, [bc]

jr_01c_51ce:
    ld [hl-], a
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    ld sp, $390a

jr_01c_51d9:
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    dec hl
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    ld sp, $390a
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    dec h
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    dec hl
    ld a, [bc]
    daa
    ld a, [bc]
    dec hl
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    jr nc, jr_01c_5204

    add hl, hl
    ld a, [bc]
    jr nc, jr_01c_5208

    ld [hl+], a
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    dec h
    ld a, [bc]

jr_01c_5204:
    ld a, [hl+]
    ld a, [bc]
    add hl, de
    ld a, [bc]

jr_01c_5208:
    inc h
    ld a, [bc]
    jr nz, jr_01c_5216

    inc h
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    ld h, $0a
    add hl, hl
    ld a, [bc]

jr_01c_5216:
    or d
    db $fc
    reti


    nop
    and d
    ld bc, $09a3
    and b
    ld [$60c3], sp

jr_01c_5222:
    dec h

jr_01c_5223:
    rra
    and b
    inc c
    pop bc
    jr nc, jr_01c_524e

    dec e
    and e
    ld [bc], a
    jp Jump_000_2736


    ld h, h
    and b
    dec c
    jp Jump_000_2950


    rra
    pop bc
    jr nc, jr_01c_51d9

    rrca
    add hl, hl
    dec e
    and b
    ld a, [bc]
    jp Jump_000_2750


    ld b, [hl]
    and e
    nop
    pop bc
    ld a, a
    daa
    ld e, $b1
    db $fc
    ldh [rP1], a
    and b
    rlca

jr_01c_524e:
    and d
    ld [bc], a
    jp $a345


    nop
    rra
    dec b
    ld [hl-], a
    inc d
    add hl, sp
    inc d
    and b
    dec b
    ret nz

    cp $37
    jr z, jr_01c_5222

    ld [hl], b
    scf

jr_01c_5263:
    inc d
    and b
    rlca
    jp Jump_000_3545


    ld a, [bc]
    inc [hl]
    ld a, [bc]
    ld [hl-], a
    inc d
    jr nc, jr_01c_527a

    ld a, [hl+]
    ld a, [bc]
    jr nc, jr_01c_527e

    add hl, hl
    ld a, [bc]
    inc [hl]
    inc d
    and b
    dec b

jr_01c_527a:
    ret nz

    cp $32
    ld d, b

jr_01c_527e:
    pop bc
    ld [hl], b
    ld [hl-], a
    jr z, jr_01c_5223

    rlca
    jp Jump_000_3945


    inc d
    ld b, b
    inc d
    and b
    dec b
    ret nz

    cp $3b
    jr z, @-$3d

    ld [hl], b
    dec sp
    inc d
    and b
    rlca
    jp $3745


    ld a, [bc]
    dec [hl]
    ld a, [bc]
    inc [hl]
    inc d
    dec [hl]
    ld a, [bc]
    scf
    ld a, [bc]
    and b
    dec b
    ret nz

    cp $39
    ld a, b
    pop bc
    ld d, b
    add hl, sp
    inc hl
    rra
    and b
    ret nz

    cp $a0
    rlca
    and d
    ld bc, $1409
    and b
    inc bc
    pop bc
    ld a, a
    add hl, bc
    inc d
    and b
    rlca
    ret nz

    cp $12
    jr z, jr_01c_5263

    dec b
    ld [de], a
    inc a
    pop bc
    ld a, a
    and b
    ld [bc], a
    ld [de], a
    inc d
    or b
    nop
    rst $38
    rlca
    ld [bc], a
    ld a, [bc]
    nop
    db $fd
    cp $a0
    ld a, [bc]
    pop bc
    cpl
    ld [hl+], a
    ld a, [bc]
    pop bc
    db $10
    add hl, hl
    ld a, [bc]
    dec h
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    pop bc
    cpl
    ld [hl+], a
    ld a, [bc]
    pop bc
    db $10
    dec hl
    ld a, [bc]
    daa
    ld a, [bc]
    dec hl
    ld a, [bc]
    pop bc
    cpl
    ld [hl+], a
    ld a, [bc]
    pop bc
    db $10
    jr nc, jr_01c_5301

    add hl, hl
    ld a, [bc]
    jr nc, jr_01c_5305

    pop bc
    cpl
    ld [hl+], a
    ld a, [bc]
    pop bc
    db $10

jr_01c_5301:
    ld a, [hl+]
    ld a, [bc]
    dec h
    ld a, [bc]

jr_01c_5305:
    ld a, [hl+]
    ld a, [bc]
    pop bc
    cpl
    inc h
    ld a, [bc]
    pop bc
    db $10
    jr nc, jr_01c_5319

    add hl, hl
    ld a, [bc]
    jr nc, jr_01c_531d

    pop bc
    cpl
    ld [hl+], a
    ld a, [bc]
    pop bc
    db $10

jr_01c_5319:
    add hl, hl
    ld a, [bc]
    ld h, $0a

jr_01c_531d:
    add hl, hl
    ld a, [bc]
    pop bc
    cpl
    ld [hl+], a
    ld a, [bc]
    pop bc
    db $10
    add hl, hl
    ld a, [bc]
    ld h, $0a
    add hl, hl
    ld a, [bc]
    pop bc
    cpl
    daa
    ld a, [bc]
    pop bc
    db $10
    ld a, [hl+]
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    jr nc, jr_01c_5341

    pop bc
    cpl
    ld [hl+], a
    ld a, [bc]
    pop bc
    db $10
    jr nc, jr_01c_5349

    add hl, hl
    ld a, [bc]

jr_01c_5341:
    jr nc, jr_01c_534d

    pop bc
    cpl
    ld [hl+], a
    ld a, [bc]
    pop bc
    db $10

jr_01c_5349:
    dec hl
    ld a, [bc]
    daa
    ld a, [bc]

jr_01c_534d:
    dec hl
    ld a, [bc]
    pop bc
    cpl
    ld [hl+], a
    ld a, [bc]
    pop bc
    db $10
    dec hl
    ld a, [bc]
    daa
    ld a, [bc]
    dec hl
    ld a, [bc]
    pop bc
    cpl
    ld [hl+], a
    ld a, [bc]
    pop bc
    db $10
    ld a, [hl+]
    ld a, [bc]
    jr z, jr_01c_536f

    ld a, [hl+]
    ld a, [bc]
    pop bc
    cpl
    ld hl, $c10a
    db $10
    add hl, hl
    ld a, [bc]

jr_01c_536f:
    inc h
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    pop bc
    cpl
    ld [hl+], a
    ld a, [bc]
    pop bc
    db $10
    add hl, hl
    ld a, [bc]
    inc h
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    pop bc
    cpl
    ld hl, $c10a
    db $10
    add hl, hl
    ld a, [bc]
    inc h
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    pop bc
    cpl
    dec de
    ld a, [bc]
    pop bc
    db $10
    add hl, hl
    ld a, [bc]
    pop bc
    cpl
    ld hl, $c10a
    db $10
    add hl, hl
    ld a, [bc]
    pop bc
    cpl
    ld [hl+], a
    ld a, [bc]
    pop bc
    db $10
    add hl, hl
    ld a, [bc]
    dec h
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    pop bc

jr_01c_53a8:
    cpl
    ld [hl+], a
    ld a, [bc]
    pop bc
    db $10
    dec hl
    ld a, [bc]
    daa
    ld a, [bc]
    dec hl
    ld a, [bc]
    pop bc
    cpl
    ld [hl+], a
    ld a, [bc]
    pop bc
    db $10
    jr nc, jr_01c_53c5

    add hl, hl
    ld a, [bc]
    jr nc, jr_01c_53c9

    pop bc
    cpl
    ld [hl+], a
    ld a, [bc]
    pop bc
    db $10

jr_01c_53c5:
    ld a, [hl+]
    ld a, [bc]
    dec h
    ld a, [bc]

jr_01c_53c9:
    ld a, [hl+]
    ld a, [bc]
    pop bc
    cpl
    add hl, de
    ld a, [bc]
    pop bc
    db $10
    inc h
    ld a, [bc]
    jr nz, jr_01c_53df

    inc h
    ld a, [bc]
    pop bc
    cpl
    ld [hl+], a
    ld a, [bc]
    pop bc
    db $10
    add hl, hl
    ld a, [bc]

jr_01c_53df:
    ld h, $0a
    add hl, hl
    ld a, [bc]
    pop bc
    cpl
    ld [hl+], a
    ld a, [bc]
    pop bc
    db $10
    add hl, hl
    ld a, [bc]
    ld h, $0a
    add hl, hl
    ld a, [bc]
    pop bc
    cpl
    ld [hl+], a
    ld a, [bc]
    pop bc
    db $10
    add hl, hl
    ld a, [bc]
    ld h, $0a
    add hl, hl
    ld a, [bc]
    and d
    ld bc, $09a3
    and b
    ld [$70c3], sp
    add hl, hl
    rra

jr_01c_5405:
    pop bc
    jr nc, jr_01c_53a8

    dec c
    add hl, hl
    dec e
    and e
    dec b
    jp $2b40


    ld h, h
    and e
    nop
    jp Jump_000_3060


    rra
    pop bc
    jr nc, @-$5e

    rrca
    jr nc, jr_01c_543a

    and b
    ld a, [bc]
    jp $a350


    dec b
    dec hl
    ld b, [hl]
    and e
    nop
    pop bc
    ld a, a
    dec hl
    ld e, $b1
    db $fc
    sub a
    nop
    xor a
    rlca
    and d
    ld bc, $0fa0
    and c
    nop
    and e
    jr c, @-$3b

jr_01c_543a:
    ld b, b
    ld [hl+], a
    dec d
    add hl, hl
    inc de
    ret nz

    cp $27
    jr z, jr_01c_5405

    ld h, b
    and e
    jr nc, @+$29

    inc d
    ret nz

    cp $a3
    jr c, jr_01c_5473

    ld a, [bc]
    inc h
    ld a, [bc]
    ld [hl+], a
    inc d
    jr nz, jr_01c_545f

    ld a, [de]
    ld a, [bc]
    jr nz, jr_01c_5463

    add hl, de
    ld a, [bc]
    inc h
    inc d
    ld [hl+], a
    ld h, h

jr_01c_545f:
    and b
    ld [$60c1], sp

jr_01c_5463:
    ld [hl+], a
    inc d
    jp $a040


    rrca
    add hl, hl
    dec d
    jr nc, jr_01c_5480

    ret nz

jr_01c_546e:
    cp $2b
    jr z, @-$3d

    ld h, b

jr_01c_5473:
    and e
    jr nc, jr_01c_54a1

    inc d
    and e
    jr c, jr_01c_543a

    cp $27
    ld a, [bc]
    dec h
    ld a, [bc]
    inc h

jr_01c_5480:
    inc d
    dec h
    ld a, [bc]
    daa
    ld a, [bc]
    and e
    ccf
    add hl, hl
    adc h
    and b
    ld [$60c1], sp
    add hl, hl
    inc d
    and d
    ld [bc], a
    and e
    dec [hl]
    jp $a040


    rrca
    ld [de], a
    dec d
    add hl, de
    inc d
    ret nz

    cp $17
    jr z, @-$3d

    ld h, b

jr_01c_54a1:
    and e
    jr nc, jr_01c_54bb

    inc de
    ret nz

    cp $a3
    jr c, jr_01c_54bf

    ld a, [bc]
    inc d
    ld a, [bc]
    ld [de], a
    inc d
    db $10
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    db $10
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    inc d
    dec d
    ld [de], a
    ld h, h

jr_01c_54bb:
    and b
    ld [$60c1], sp

jr_01c_54bf:
    ld [de], a
    inc de
    and d
    ld bc, $09a3
    and b
    ld [$70c3], sp
    add hl, hl
    rra
    pop bc
    jr nc, jr_01c_546e

    dec c
    add hl, hl
    dec e
    and e
    dec b
    jp $2b40


    ld h, h
    and e
    nop
    jp Jump_000_3060


    rra
    pop bc
    jr nc, jr_01c_5480

    rrca
    jr nc, jr_01c_5500

    and e
    dec b
    and b
    ld a, [bc]
    jp $2b50


    ld b, [hl]
    and e
    nop
    pop bc
    ld a, a
    dec hl
    ld e, $b1
    db $fc
    ld a, [$a200]
    ld bc, $30c1
    ld [de], a
    ld a, [bc]
    and d
    ld [bc], a
    jp nz, $1910

jr_01c_5500:
    ld a, [bc]
    dec h
    ld a, [bc]
    add hl, de
    ld a, [bc]
    and d
    ld bc, $30c1
    ld [de], a
    ld a, [bc]
    and d
    ld [bc], a
    jp nz, $1b10

    ld a, [bc]
    daa
    ld a, [bc]
    dec de
    ld a, [bc]
    and d
    ld bc, $30c1
    ld [de], a
    ld a, [bc]
    and d
    ld [bc], a
    jp nz, $2010

    ld a, [bc]
    add hl, hl
    ld a, [bc]
    jr nz, @+$0c

    and d
    ld bc, $30c1
    ld [de], a
    ld a, [bc]
    and d
    ld [bc], a
    jp nz, $1a10

    ld a, [bc]
    dec h
    ld a, [bc]
    ld a, [de]
    ld a, [bc]
    and d
    ld bc, $30c1
    add hl, bc
    ld a, [bc]
    and d
    ld [bc], a
    jp nz, $1410

    ld a, [bc]
    jr nz, jr_01c_554d

    add hl, de
    ld a, [bc]
    and d
    ld bc, $30c1
    ld [de], a
    ld a, [bc]
    and d
    ld [bc], a

jr_01c_554d:
    jp nz, $1910

    ld a, [bc]
    ld h, $0a
    add hl, de
    ld a, [bc]
    and d
    ld bc, $30c1
    ld [de], a
    ld a, [bc]
    and d
    ld [bc], a
    jp nz, $1910

    ld a, [bc]
    ld h, $0a
    add hl, de
    ld a, [bc]
    and d
    ld bc, $30c1
    ld [de], a
    ld a, [bc]
    and d
    ld [bc], a
    jp nz, $1a10

    ld a, [bc]
    daa
    ld a, [bc]
    ld a, [de]
    ld a, [bc]
    and d
    ld bc, $30c1
    ld [de], a
    ld a, [bc]
    and d
    ld [bc], a
    jp nz, $1910

    ld a, [bc]
    dec h
    ld a, [bc]
    add hl, de
    ld a, [bc]
    and d
    ld bc, $30c1
    ld [de], a
    ld a, [bc]
    and d
    ld [bc], a
    jp nz, $1b10

    ld a, [bc]
    daa
    ld a, [bc]
    dec de
    ld a, [bc]
    and d
    ld bc, $30c1
    ld [de], a
    ld a, [bc]
    and d
    ld [bc], a
    jp nz, $1b10

    ld a, [bc]
    daa
    ld a, [bc]
    dec de
    ld a, [bc]
    and d
    ld bc, $30c1
    ld [de], a
    ld a, [bc]
    and d
    ld [bc], a
    jp nz, $1a10

    ld a, [bc]
    jr jr_01c_55bd

    ld a, [de]
    ld a, [bc]
    and d
    ld bc, $30c1
    ld hl, $a20a
    ld [bc], a

jr_01c_55bd:
    jp nz, $1910

    ld a, [bc]
    inc d
    ld a, [bc]
    add hl, de
    ld a, [bc]
    and d
    ld bc, $30c1
    ld [hl+], a
    ld a, [bc]
    and d
    ld [bc], a
    jp nz, $1910

    ld a, [bc]
    inc d
    ld a, [bc]
    add hl, de
    ld a, [bc]
    and d
    ld bc, $30c1
    ld hl, $a20a
    ld [bc], a
    jp nz, $1910

    ld a, [bc]
    inc d
    ld a, [bc]
    add hl, de
    ld a, [bc]
    and d
    ld bc, $30c1

jr_01c_55e9:
    dec de
    ld a, [bc]
    and d
    ld [bc], a
    jp nz, $1910

    ld a, [bc]
    and d
    ld bc, $30c1
    ld hl, $a20a
    ld [bc], a
    jp nz, $1910

    ld a, [bc]
    and b
    rlca
    call nz, Call_000_224f
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    dec h
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    dec hl
    ld a, [bc]

jr_01c_560d:
    daa
    ld a, [bc]
    dec hl
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    jr nc, jr_01c_561f

    add hl, hl
    ld a, [bc]
    jr nc, jr_01c_5623

    ld [hl+], a
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    dec h
    ld a, [bc]

jr_01c_561f:
    ld a, [hl+]
    ld a, [bc]
    add hl, de
    ld a, [bc]

jr_01c_5623:
    inc h
    ld a, [bc]
    daa
    ld a, [bc]
    jr nc, jr_01c_5633

    ld [hl+], a
    ld a, [bc]

jr_01c_562b:
    add hl, hl
    ld a, [bc]
    ld h, $0a
    add hl, hl
    ld a, [bc]
    or d
    db $fc

jr_01c_5633:
    xor l
    ld bc, $00b0
    rst $38
    rlca
    rst $38
    ld [bc], a
    dec b
    db $fd
    cp $a0
    ld [bc], a
    and c
    dec b
    ld b, d
    inc d
    ld c, c
    inc d
    ld b, a
    jr z, jr_01c_55e9

    inc b
    ld b, a

jr_01c_564b:
    inc de
    and b
    ld [bc], a
    ld b, l
    dec bc
    ld b, h
    ld a, [bc]
    ld b, d
    inc d
    ld b, b
    ld a, [bc]
    ld a, [hl-]
    ld a, [bc]
    ld b, b
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    ld b, h
    inc d
    ld b, d
    ld h, h
    and b
    inc b
    ld b, d
    inc de
    and b
    ld [bc], a
    ld c, c
    dec d
    ld d, b
    inc d
    ld c, e
    jr z, jr_01c_560d

    inc b
    ld c, e
    inc de
    and b
    ld [bc], a
    ld b, a
    dec bc
    ld b, l
    ld a, [bc]
    ld b, h
    inc d
    ld b, l
    ld a, [bc]
    ld b, a
    ld a, [bc]
    ld c, c
    adc h
    and b
    inc b
    ld c, c
    inc d
    and b
    ld [bc], a
    ld b, d
    inc d
    ld c, c
    inc d
    ld b, a
    jr z, jr_01c_562b

    inc b
    ld b, a
    inc de
    and b
    ld [bc], a
    ld b, l
    dec bc
    ld b, h
    ld a, [bc]
    ld b, d
    inc d
    ld b, b
    ld a, [bc]
    ld a, [hl-]
    ld a, [bc]
    ld b, b
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    ld b, h
    inc d
    ld b, d
    ld l, [hl]
    and b
    inc b
    ld b, d
    ld a, [bc]
    and c
    dec bc
    and d
    jr nz, jr_01c_564b

    ld [bc], a
    ld [de], a
    ld a, [bc]
    add hl, de
    ld a, [bc]
    ld [hl+], a
    inc d
    add hl, de
    inc d
    and d
    ld d, b
    ld [de], a
    jr z, @+$19

    ld e, $a2
    dec h
    ld [hl+], a
    ld a, [bc]
    rla
    inc d
    and d
    jr nz, jr_01c_56d5

    ld a, [bc]
    add hl, de
    ld a, [bc]
    ld [hl+], a
    inc d
    add hl, de
    inc d
    and d
    ld d, b
    ld [de], a
    jr z, jr_01c_56e6

    ld e, $a2
    dec h
    ld [hl+], a
    ld a, [bc]
    and b

jr_01c_56d5:
    inc b
    rla
    inc d
    or c
    db $fc
    jr c, jr_01c_56dc

jr_01c_56dc:
    xor a
    rlca
    and d
    dec d
    and b
    ld [bc], a
    and c
    dec bc
    and b
    ld [bc], a

jr_01c_56e6:
    and d
    jr nz, jr_01c_56fb

    ld a, [bc]
    add hl, de
    ld a, [bc]
    and d
    rst $38
    ld [hl+], a
    inc d
    and b
    inc b
    ld [hl+], a
    inc d
    and b
    ld b, $22
    inc d
    or c
    db $fc
    ld d, [hl]

jr_01c_56fb:
    nop
    and b
    ld [bc], a
    add hl, de
    inc d
    and b
    ld b, $19
    ld a, [bc]
    and b
    ld [bc], a
    add hl, de
    ld a, [bc]
    ld [de], a
    inc d
    and b
    inc b
    ld [de], a
    inc d
    and b
    ld [bc], a
    and d
    jr nz, jr_01c_5725

    ld a, [bc]
    add hl, de
    ld a, [bc]
    and d
    rst $38
    ld [hl+], a
    inc d
    and b
    inc b
    ld [hl+], a
    inc d
    and b
    ld b, $22
    inc d
    or d
    db $fc
    ld l, e

jr_01c_5725:
    nop
    and b
    ld [bc], a
    and d
    jr nz, jr_01c_5744

    ld a, [bc]
    inc h
    ld a, [bc]
    and d
    rst $38
    add hl, hl
    inc d
    and b
    inc b
    add hl, hl
    inc d
    and b
    ld b, $29
    inc d
    or c
    db $fc
    ld [hl], a
    nop
    and b
    ld [bc], a
    and d
    jr nz, jr_01c_5755

    ld a, [bc]

jr_01c_5744:
    add hl, de
    ld a, [bc]
    and d
    rst $38
    ld [hl+], a
    inc d
    and b
    inc b
    ld [hl+], a
    inc d
    and b
    ld b, $22
    inc d
    and b
    ld [bc], a
    and d

jr_01c_5755:
    jr nz, jr_01c_5769

    ld a, [bc]
    add hl, de
    ld a, [bc]
    and d
    rst $38
    ld [hl+], a
    inc d
    and b
    inc b
    ld [hl+], a
    inc d
    and b
    ld b, $22
    inc d
    and b
    ld [bc], a
    and d

jr_01c_5769:
    rst $38
    add hl, de
    inc d
    and b

jr_01c_576d:
    inc b
    add hl, de
    inc d
    and b
    ld b, $19
    inc d
    and b
    ld [bc], a
    and d
    ld d, b
    add hl, de
    inc d
    and d
    jr nz, jr_01c_578f

    ld a, [bc]
    add hl, de
    ld a, [bc]
    and d
    rst $38
    ld [hl+], a
    inc d
    and b
    inc b
    ld [hl+], a
    inc d
    and b
    ld b, $22
    inc d
    and b
    ld [bc], a
    and d

jr_01c_578f:
    jr nz, jr_01c_57a3

jr_01c_5791:
    ld a, [bc]
    add hl, de
    ld a, [bc]
    ld [hl+], a
    inc d
    add hl, de
    inc d
    and d
    ld d, b
    ld [de], a
    jr z, @+$19

    ld e, $a2
    dec h
    ld [hl+], a
    ld a, [bc]
    rla

jr_01c_57a3:
    inc d
    and d
    jr nz, jr_01c_57b9

    ld a, [bc]
    add hl, de
    ld a, [bc]
    ld [hl+], a
    inc d
    add hl, de
    inc d
    and d

jr_01c_57af:
    ld d, b
    ld [de], a
    jr z, jr_01c_57ca

    ld e, $a2
    dec h
    ld [hl+], a
    ld a, [bc]
    and b

jr_01c_57b9:
    inc b
    rla
    inc d
    or c
    db $fc
    xor d
    nop
    and b
    ld [bc], a
    and d
    rst $38
    and c
    dec b
    ld b, d
    inc d
    ld c, c
    inc d

jr_01c_57ca:
    ld b, a
    jr z, jr_01c_576d

    inc b
    ld b, a
    inc de
    and b
    ld [bc], a
    ld b, l
    dec bc
    ld b, h
    ld a, [bc]
    ld b, d
    inc d
    ld b, b
    ld a, [bc]
    ld a, [hl-]
    ld a, [bc]
    ld b, b
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    ld b, h
    inc d
    ld b, d
    ld h, h
    and b
    inc b
    ld b, d
    inc d
    and b
    ld [bc], a
    ld c, c
    inc d
    ld d, b
    inc d
    ld c, e
    jr z, jr_01c_5791

    inc b
    ld c, e
    inc d
    and b
    ld [bc], a
    ld b, a
    ld a, [bc]
    ld b, l
    ld a, [bc]
    ld b, h
    inc d
    ld b, l
    ld a, [bc]
    ld b, a
    ld a, [bc]
    ld c, c
    adc h
    and b
    inc b
    ld c, c
    inc d
    and b
    ld [bc], a
    ld b, d
    inc d
    ld c, c
    inc d
    ld b, a
    jr z, jr_01c_57af

    inc b
    ld b, a
    inc d
    and b
    ld [bc], a
    ld b, l
    ld a, [bc]
    ld b, h
    ld a, [bc]
    ld b, d
    inc d
    ld b, b
    ld a, [bc]
    ld a, [hl-]
    ld a, [bc]
    ld b, b
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    ld b, h
    inc d
    ld b, d
    ld l, [hl]
    and b
    inc b
    ld b, d
    ld a, [bc]
    or b
    nop
    rst $38

jr_01c_582d:
    rst $38
    inc b
    ld [bc], a
    add hl, bc
    nop
    db $fd
    cp $a0
    ld [$12c2], sp
    dec h
    inc c
    add hl, hl
    inc c
    dec h
    inc c
    add hl, hl
    inc c
    inc h
    inc c

jr_01c_5842:
    add hl, hl
    inc c
    inc h
    inc c
    add hl, hl
    inc c
    ld [hl+], a
    inc c

jr_01c_584a:
    add hl, hl
    inc c
    ld [hl+], a
    inc c
    add hl, hl
    inc c
    jr nz, jr_01c_585e

    daa
    inc c
    jr nz, jr_01c_5862

    daa
    inc c
    dec h
    inc c
    add hl, hl
    inc c
    dec h
    inc c

jr_01c_585e:
    add hl, hl
    inc c
    inc h
    inc c

jr_01c_5862:
    add hl, hl
    inc c
    inc h
    inc c
    add hl, hl
    inc c
    ld [hl+], a
    inc c
    add hl, hl
    inc c
    ld [hl+], a
    inc c
    add hl, hl
    inc c
    jr nz, @+$0e

    daa
    inc c
    jr nz, jr_01c_5882

    and b
    add hl, bc
    pop bc
    ld d, b
    daa
    inc c
    ret nz

    cp $26
    jr nc, jr_01c_5842

    ld [hl], b

jr_01c_5882:
    ld h, $30
    ret nz

    cp $25
    jr nc, jr_01c_584a

    ld [hl], b
    dec h
    jr nc, jr_01c_582d

    inc c
    jp nz, Jump_000_2517

    ld b, $29
    ld b, $32
    inc c
    dec h
    inc c
    add hl, hl
    inc c
    ld [hl-], a
    inc c
    dec h
    inc c
    add hl, hl
    inc c
    ld [hl-], a
    inc c
    inc h
    ld b, $29
    ld b, $34
    inc c
    inc h
    inc c
    add hl, hl
    inc c
    inc [hl]
    inc c
    inc h
    inc c
    add hl, hl
    inc c
    inc [hl]
    inc c
    dec h
    ld b, $29
    ld b, $32
    inc c
    dec h
    inc c
    add hl, hl
    inc c
    ld [hl-], a
    inc c
    dec h
    inc c
    add hl, hl
    inc c
    ld [hl-], a
    inc c
    inc h
    ld b, $27
    ld b, $30
    inc c
    inc h
    inc c
    daa
    inc c
    jr nc, jr_01c_58de

    inc h
    inc c
    daa
    inc c
    jr nz, jr_01c_58e4

    ld [hl+], a
    ld b, $25
    ld b, $2a

jr_01c_58dd:
    inc c

jr_01c_58de:
    ld [hl+], a
    inc c
    dec h
    inc c
    ld a, [hl+]

jr_01c_58e3:
    inc c

jr_01c_58e4:
    ld [hl+], a
    inc c
    dec h
    inc c
    ld a, [hl+]

jr_01c_58e9:
    inc c
    daa
    ld b, $2a
    ld b, $33
    inc c
    daa
    inc c

jr_01c_58f2:
    ld a, [hl+]
    inc c
    ld sp, $210c
    inc c
    daa

jr_01c_58f9:
    inc c
    ld sp, $210c
    ld b, $24
    ld b, $29

jr_01c_5901:
    inc c
    ld hl, $240c
    inc c
    add hl, hl
    inc c
    ld [hl+], a
    inc c
    inc h
    inc c
    add hl, hl
    inc c
    inc h
    ld b, $27
    ld b, $31
    inc c
    inc h
    inc c
    daa
    inc c
    ld sp, $240c
    inc c
    daa
    inc c
    ld sp, $b00c
    nop
    rst $38
    inc b
    ld [bc], a
    dec c

jr_01c_5926:
    nop
    db $fd
    cp $a0
    dec c
    and d
    ld [bc], a

jr_01c_592d:
    and e
    dec bc
    pop bc

jr_01c_5930:
    ld e, a
    ld [hl-], a
    jr @-$5b

    nop
    and b
    dec b

jr_01c_5937:
    ld [hl-], a
    jr jr_01c_58dd

    dec bc
    and b
    dec c
    add hl, sp
    jr jr_01c_58e3

    nop
    and b

jr_01c_5942:
    dec b
    add hl, sp
    jr jr_01c_58e9

    rlca
    and b

jr_01c_5948:
    dec c
    jp nz, Jump_000_377f

    jr @+$37

    jr jr_01c_5984

    jr jr_01c_58f2

    ld c, $30
    jr jr_01c_58f9

    dec bc
    pop bc
    ld e, a
    and b
    dec c
    ld [hl-], a
    jr jr_01c_5901

    nop
    and b
    dec b
    ld [hl-], a
    jr jr_01c_5926

    ld a, a
    and e
    rlca
    and b
    dec c
    ld b, b
    jr jr_01c_592d

    jr nz, jr_01c_59a5

    inc c
    add hl, sp
    inc c
    jp nz, Jump_000_357f

    jr jr_01c_5937

    jr nz, @+$39

    inc c
    dec [hl]
    inc c
    jp nz, $347f

    jr jr_01c_59b0

    jr jr_01c_5942

    cp $a3

jr_01c_5984:
    cp $a0
    inc c
    ld [hl-], a
    sub b
    pop bc
    ld [hl], b
    and e
    add hl, bc
    ld [hl-], a
    jr nc, jr_01c_5930

    rrca
    and d
    ld bc, $45c3

jr_01c_5995:
    and e

jr_01c_5996:
    ld a, [bc]
    rra
    jr jr_01c_59ce

    jr jr_01c_59ce

    jr jr_01c_59d7

    jr jr_01c_59d4

    ld c, b
    pop bc
    ld [hl], b
    and e
    nop

jr_01c_59a5:
    inc [hl]
    jr nc, jr_01c_5948

    rrca
    jp $a345


    ld a, [bc]
    inc [hl]
    jr jr_01c_59e2

jr_01c_59b0:
    jr jr_01c_59eb

    jr jr_01c_59eb

    jr nc, jr_01c_59ea

    jr jr_01c_59e8

    jr jr_01c_59e4

    db $10
    jr nc, jr_01c_59cd

    ld [hl-], a
    db $10
    add hl, hl
    jr jr_01c_59e9

    jr jr_01c_59f4

    jr nc, jr_01c_59ef

    jr jr_01c_59ef

    jr jr_01c_59f3

    inc h
    pop bc
    ld c, a

jr_01c_59cd:
    and e

jr_01c_59ce:
    nop
    add hl, hl
    jr jr_01c_5995

    ld b, l
    and h

jr_01c_59d4:
    jr nz, jr_01c_59ff

    inc c

jr_01c_59d7:
    ld [hl-], a
    inc c
    inc [hl]
    inc c
    and e
    inc c
    add hl, sp
    ld c, b
    pop bc
    jr nc, @-$5b

jr_01c_59e2:
    nop
    add hl, sp

jr_01c_59e4:
    jr jr_01c_5996

    nop
    rst $38

jr_01c_59e8:
    inc b

jr_01c_59e9:
    db $10

jr_01c_59ea:
    ld [bc], a

jr_01c_59eb:
    ld [bc], a
    db $fd
    cp $a1

jr_01c_59ef:
    ld [bc], a
    ld [hl-], a
    inc c
    dec [hl]

jr_01c_59f3:
    inc c

jr_01c_59f4:
    and d
    rra
    and c
    ld a, [bc]
    ld [de], a
    inc c
    and d
    db $10
    and c
    ld [bc], a
    dec [hl]

jr_01c_59ff:
    inc c
    jr nc, jr_01c_5a0e

    inc [hl]
    inc c
    and d
    rra
    and c
    ld a, [bc]
    db $10
    inc c
    and d
    db $10
    and c
    ld [bc], a

jr_01c_5a0e:
    inc [hl]
    inc c
    ld a, [hl+]
    inc c
    ld [hl-], a
    inc c
    and d
    rra
    and c
    ld a, [bc]
    ld a, [bc]
    inc c
    and d
    db $10
    and c
    ld [bc], a
    ld [hl-], a
    inc c
    add hl, hl
    inc c
    jr nc, jr_01c_5a30

    and d
    rra

jr_01c_5a26:
    and c
    ld a, [bc]
    add hl, bc
    inc c

jr_01c_5a2a:
    and d
    db $10
    and c
    ld [bc], a
    jr nc, jr_01c_5a3c

jr_01c_5a30:
    ld [hl-], a
    inc c
    dec [hl]

jr_01c_5a33:
    inc c
    and d
    rra
    and c
    ld a, [bc]
    ld [de], a
    inc c
    and d
    db $10

jr_01c_5a3c:
    and c
    ld [bc], a
    dec [hl]
    inc c

jr_01c_5a40:
    jr nc, jr_01c_5a4e

    inc [hl]
    inc c
    and d
    rra
    and c
    ld a, [bc]
    db $10
    inc c
    and d
    db $10
    and c
    ld [bc], a

jr_01c_5a4e:
    inc [hl]
    inc c
    ld a, [hl+]
    inc c

jr_01c_5a52:
    ld [hl-], a
    inc c
    and d
    rra

jr_01c_5a56:
    and c
    ld a, [bc]
    ld a, [bc]
    inc c
    and d
    db $10
    and c
    ld [bc], a
    ld [hl-], a

jr_01c_5a5f:
    inc c
    add hl, hl
    inc c
    jr nc, jr_01c_5a70

    and d
    rra
    and c
    ld a, [bc]

jr_01c_5a68:
    add hl, bc
    inc c
    and c
    ld [bc], a

jr_01c_5a6c:
    jr nc, jr_01c_5a7a

    and d
    rra

jr_01c_5a70:
    and c
    ld a, [bc]
    ld [de], a
    inc c
    and d

jr_01c_5a75:
    db $10
    and c
    ld [bc], a
    add hl, hl
    inc c

jr_01c_5a7a:
    ld [hl-], a
    inc c
    add hl, hl
    inc c

jr_01c_5a7e:
    or e
    db $fc
    ld b, e
    nop

jr_01c_5a82:
    and d
    jr nc, jr_01c_5a26

    ld a, [bc]
    ld [de], a
    jr jr_01c_5a2a

    ld [bc], a
    and d

jr_01c_5a8b:
    rst $38
    ld [hl-], a
    inc h
    and b
    inc b
    ld [hl-], a
    jr jr_01c_5a33

    ld [bc], a

jr_01c_5a94:
    and d
    db $10
    ld [hl+], a
    inc c

jr_01c_5a98:
    and d
    jr nc, jr_01c_5a3c

    ld a, [bc]
    db $10
    jr jr_01c_5a40

    ld [bc], a
    and d

jr_01c_5aa1:
    rst $38
    jr nc, jr_01c_5ac8

    and b
    inc b
    jr nc, jr_01c_5ac0

    and b
    ld [bc], a

jr_01c_5aaa:
    and d
    db $10
    jr nz, jr_01c_5aba

jr_01c_5aae:
    and d
    jr nc, jr_01c_5a52

    ld a, [bc]
    ld a, [bc]
    jr jr_01c_5a56

    ld [bc], a
    and d

jr_01c_5ab7:
    rst $38
    ld a, [hl+]
    inc h

jr_01c_5aba:
    and b
    inc b
    ld a, [hl+]
    jr jr_01c_5a5f

    ld [bc], a

jr_01c_5ac0:
    and d
    db $10
    ld a, [de]
    inc c

jr_01c_5ac4:
    and d
    jr nc, jr_01c_5a68

    ld a, [bc]

jr_01c_5ac8:
    add hl, bc
    jr jr_01c_5a6c

    ld [bc], a
    and d
    rst $38
    add hl, hl

jr_01c_5acf:
    inc h
    and b
    inc b
    add hl, hl
    jr jr_01c_5a75

    ld [bc], a
    and d
    db $10
    add hl, de
    inc c
    and d
    jr nc, jr_01c_5a7e

    ld a, [bc]
    rlca
    jr jr_01c_5a82

    ld [bc], a
    and d
    rst $38
    daa
    inc h
    and b
    inc b
    daa
    jr jr_01c_5a8b

    ld [bc], a
    and d
    db $10
    rla
    inc c
    and d
    jr nc, jr_01c_5a94

    ld a, [bc]
    inc de
    jr jr_01c_5a98

    ld [bc], a
    and d
    rst $38
    inc hl
    inc h
    and b
    inc b
    inc hl
    jr jr_01c_5aa1

    ld [bc], a
    and d
    db $10
    inc de
    inc c
    and d
    jr nc, jr_01c_5aaa

    ld a, [bc]
    add hl, bc
    jr jr_01c_5aae

    ld [bc], a
    and d
    rst $38
    add hl, hl
    inc h
    and b
    inc b
    add hl, hl
    jr jr_01c_5ab7

    ld [bc], a
    and d
    db $10
    inc h
    inc c
    and d
    jr nc, jr_01c_5ac0

    ld a, [bc]
    add hl, bc
    jr jr_01c_5ac4

    ld [bc], a
    and d
    rst $38
    add hl, hl
    inc h
    and b
    inc b
    add hl, hl
    jr jr_01c_5acf

    db $10
    and b
    ld [bc], a
    add hl, de
    inc c
    or b
    nop
    rst $38
    rst $38
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    db $fd
    cp $a3
    ld sp, $0c1f
    pop bc
    ld h, b
    jr nz, jr_01c_5b4c

    and b
    dec b
    pop bc
    rra
    jr nz, jr_01c_5b4e

    and b
    ld a, [bc]

jr_01c_5b4c:
    pop bc
    ld h, b

jr_01c_5b4e:
    jr nz, jr_01c_5b58

    and b
    dec b
    pop bc
    rra
    jr nz, jr_01c_5b5a

    and b
    add hl, bc

jr_01c_5b58:
    pop bc
    ld h, b

jr_01c_5b5a:
    inc h
    ld [$05a0], sp
    pop bc
    rra
    inc h
    inc b
    and b
    dec bc
    pop bc
    ld h, b
    inc h
    ld [$05a0], sp
    pop bc
    rra
    inc h
    inc b
    or c
    db $fc
    stop
    and b
    dec bc
    pop bc
    ld h, b
    inc h
    ld [$05a0], sp
    pop bc
    rra
    inc h
    inc b
    and b
    ld a, [bc]
    pop bc
    ld h, b
    ld [hl+], a
    ld [$05a0], sp
    pop bc
    rra
    ld [hl+], a
    inc b
    and b
    ld a, [bc]
    pop bc
    ld h, b
    ld hl, $a008
    dec b
    pop bc
    rra
    ld hl, $a004
    ld a, [bc]
    pop bc
    ld h, b
    ld [hl+], a
    ld [$05a0], sp
    pop bc
    rra
    ld [hl+], a
    inc b
    and b
    ld a, [bc]
    pop bc
    ld h, b
    inc h
    ld [$05a0], sp
    pop bc
    rra
    inc h
    inc b
    and b
    ld a, [bc]
    pop bc
    ld h, b
    ld hl, $a008
    dec b
    pop bc
    rra
    ld hl, $a004
    ld a, [bc]
    jp nz, Jump_000_2515

    ld b, $29
    ld [bc], a
    add hl, hl
    ld [bc], a
    add hl, hl
    ld [bc], a
    and b

jr_01c_5bc7:
    dec bc
    ld a, [hl+]
    inc b
    ld a, [hl+]
    inc b
    ld a, [hl+]
    inc b

jr_01c_5bce:
    and b
    inc c
    dec hl
    inc b
    dec hl
    inc b
    dec hl
    inc b
    and b
    add hl, bc
    ld a, [hl+]

jr_01c_5bd9:
    inc b
    ld a, [hl+]
    inc b
    ld a, [hl+]
    inc b
    and b
    ld a, [bc]
    and e
    ld b, $c1
    ld a, a
    add hl, hl
    inc h
    pop bc
    ld d, b
    jr z, jr_01c_5bf6

    pop bc
    ld a, a
    inc h
    inc h
    pop bc
    jr nc, jr_01c_5c15

    inc b
    inc h
    inc b
    daa
    inc b

jr_01c_5bf6:
    pop bc
    ld b, b
    add hl, hl
    inc c
    pop bc
    jr nc, jr_01c_5c1f

jr_01c_5bfd:
    inc b
    ld [hl+], a
    inc b
    ld [hl+], a
    inc b
    pop bc
    ld d, b
    ld h, $0c
    ld h, $0c
    ret nz

    cp $25
    jr jr_01c_5bce

    jr nz, jr_01c_5c33

    inc c
    and d
    nop
    and b
    inc c
    and e

jr_01c_5c15:
    jr nc, jr_01c_5bd9

    db $10
    rra
    jr jr_01c_5c34

    inc b
    add hl, de
    inc b
    add hl, de

jr_01c_5c1f:
    inc b
    ret nz

    cp $19
    inc c
    pop bc
    jr nc, jr_01c_5bc7

jr_01c_5c27:
    ld b, $19
    inc c
    rra
    inc c
    and b
    inc c
    jp nz, Jump_000_2210

    inc b
    ld [hl+], a

jr_01c_5c33:
    inc b

jr_01c_5c34:
    ld [hl+], a
    inc b
    pop bc
    ld b, b
    ld [hl+], a
    ld [$0425], sp
    inc h
    ld [$0422], sp
    jr nz, jr_01c_5c46

    and b
    ld b, $20
    inc b

jr_01c_5c46:
    rra
    inc b
    and b
    inc c
    jp nz, Jump_000_1710

    inc b
    rla
    inc b
    rla
    inc b
    jp Jump_000_1701


    inc c
    and b
    ld b, $c1
    jr nc, @+$19

    jr jr_01c_5bfd

    inc c
    jp nz, $2010

    inc b
    jr nz, @+$06

    jr nz, jr_01c_5c6a

    jp $2001


    inc c

jr_01c_5c6a:
    pop bc
    jr nc, jr_01c_5c8d

    inc c
    and b
    ld a, [bc]
    and e
    jr jr_01c_5c34

    ld [hl], b
    add hl, hl
    jr jr_01c_5c9f

    jr jr_01c_5ca0

    jr jr_01c_5ca1

    jr jr_01c_5ca2

    jr jr_01c_5ca3

    jr jr_01c_5ca4

    jr @+$24

    jr jr_01c_5c46

    jr nc, jr_01c_5c27

    ld c, $1f
    inc c
    dec de
    inc c
    or d

jr_01c_5c8d:
    db $fc
    xor c
    nop
    dec de
    inc c
    or b
    nop
    rst $38
    ld a, [bc]
    nop
    inc c
    nop
    db $fd
    cp $a3
    ld sp, $0c1f

jr_01c_5c9f:
    and b

jr_01c_5ca0:
    dec c

jr_01c_5ca1:
    pop bc

jr_01c_5ca2:
    ld h, b

jr_01c_5ca3:
    add hl, bc

jr_01c_5ca4:
    ld [$05a0], sp
    pop bc
    jr nz, jr_01c_5cb3

    inc b
    and b
    ld a, [bc]
    pop bc
    ld h, b
    add hl, de
    ld [$05a0], sp

jr_01c_5cb3:
    pop bc
    jr nz, jr_01c_5ccf

    inc b
    and b
    ld a, [bc]
    pop bc
    ld h, b
    jr jr_01c_5cc5

    and b
    dec b
    pop bc
    jr nz, @+$1a

    inc b
    and b
    dec c

jr_01c_5cc5:
    pop bc
    ld h, b
    ld [$a008], sp
    inc bc
    pop bc
    jr nz, jr_01c_5cd6

    inc b

jr_01c_5ccf:
    or c
    db $fc
    dec b
    nop
    and b
    inc c
    pop bc

jr_01c_5cd6:
    ld h, b
    add hl, bc
    ld [$05a0], sp
    pop bc
    jr nz, jr_01c_5ce7

    inc b
    and b
    inc c
    pop bc
    ld h, b
    dec bc
    ld [$05a0], sp

jr_01c_5ce7:
    pop bc
    jr nz, @+$0d

    inc b
    and b
    dec c
    pop bc
    ld h, b
    ld de, $a008
    dec b
    pop bc
    jr nz, @+$13

    inc b
    and b
    inc c
    pop bc
    ld h, b
    add hl, bc
    ld [$05a0], sp
    pop bc
    jr nz, jr_01c_5d0b

    inc b
    and b
    dec c
    jp nz, Jump_000_1215

    ld b, $a0
    ld a, [bc]

jr_01c_5d0b:
    dec h
    ld [bc], a
    dec h
    ld [bc], a
    dec h
    ld [bc], a
    and b
    dec bc
    dec h
    inc b
    dec h
    inc b
    dec h
    inc b
    or d
    db $fc
    ccf
    nop
    and b
    ld a, [bc]
    pop bc
    ld h, b
    dec de
    ld [$05a0], sp
    pop bc
    jr nz, jr_01c_5d43

    inc b
    and b
    ld a, [bc]
    pop bc
    ld h, b
    ld [hl+], a
    ld [$05a0], sp
    pop bc
    jr nz, jr_01c_5d56

    inc b
    and b
    ld a, [bc]
    pop bc
    ld h, b
    ld [de], a
    ld [$05a0], sp
    pop bc
    jr nz, jr_01c_5d52

    inc b
    and b
    ld a, [bc]

jr_01c_5d43:
    pop bc
    ld h, b
    inc d
    ld [$05a0], sp
    pop bc
    jr nz, @+$16

    inc b
    and b
    dec c
    pop bc
    ld h, b
    add hl, bc

jr_01c_5d52:
    ld [$05a0], sp
    pop bc

jr_01c_5d56:
    jr nz, jr_01c_5d61

    inc b
    and b
    ld a, [bc]
    pop bc
    ld h, b
    add hl, de
    ld [$05a0], sp

jr_01c_5d61:
    pop bc
    jr nz, jr_01c_5d7d

    inc b
    and b
    ld a, [bc]
    pop bc
    ld h, b
    rla
    ld [$05a0], sp
    pop bc
    jr nz, @+$19

    inc b
    and b
    ld a, [bc]
    pop bc
    ld h, b
    rla
    ld [$05a0], sp
    pop bc
    jr nz, @+$19

    inc b

jr_01c_5d7d:
    and b
    ld a, [bc]
    pop bc
    ld h, b
    ld d, $08
    and b
    dec b
    pop bc
    jr nz, jr_01c_5d9e

jr_01c_5d88:
    inc b
    and b
    ld a, [bc]
    pop bc
    ld h, b
    ld d, $08
    and b
    dec b
    pop bc
    jr nz, jr_01c_5daa

    inc b
    and b
    ld a, [bc]
    pop bc
    ld h, b
    ld [de], a

jr_01c_5d9a:
    ld [$05a0], sp
    pop bc

jr_01c_5d9e:
    jr nz, jr_01c_5db2

    inc b
    and b
    ld a, [bc]
    pop bc
    ld h, b
    ld [de], a
    ld [$05a0], sp
    pop bc

jr_01c_5daa:
    jr nz, jr_01c_5dbe

    inc b
    and b
    ld a, [bc]
    pop bc
    ld h, b
    rla

jr_01c_5db2:
    ld [$05a0], sp
    pop bc
    jr nz, @+$19

    inc b
    and b
    ld a, [bc]
    pop bc
    ld h, b
    rla

jr_01c_5dbe:
    ld [$05a0], sp
    pop bc
    jr nz, @+$19

    inc b
    and b
    ld a, [bc]
    pop bc
    ld h, b
    jr jr_01c_5dd3

    and b

jr_01c_5dcc:
    dec b
    pop bc
    jr nz, jr_01c_5de8

    inc b
    and d
    nop

jr_01c_5dd3:
    and b
    dec c
    and e
    jr nc, jr_01c_5d9a

    db $10
    rra
    jr jr_01c_5dee

    inc b
    ld [de], a
    inc b
    ld [de], a
    inc b
    ret nz

    cp $12
    inc c
    pop bc
    jr nc, jr_01c_5d88

jr_01c_5de8:
    rlca
    ld [de], a
    inc c
    rra
    inc c
    and b

jr_01c_5dee:
    dec c
    jp nz, Jump_000_1710

    inc b
    rla
    inc b

jr_01c_5df5:
    rla
    inc b
    ret nz

    cp $17
    inc c
    pop bc
    jr nc, jr_01c_5d9e

    rlca
    rla
    inc c
    rra
    inc c
    and b
    dec c
    db $c2, $10, $10

    inc b
    db $10
    inc b
    db $10
    inc b
    ret nz

    cp $10
    inc c
    pop bc
    jr nc, @-$5e

    rlca
    db $10
    inc c
    rra
    inc c
    and b
    dec c
    jp nz, Jump_000_1510

    inc b
    dec d
    inc b
    dec d
    inc b
    ret nz

    cp $15
    inc c
    and b
    rlca
    pop bc
    jr nc, jr_01c_5dcc

    dec c
    dec d
    inc c
    and b
    ld a, [bc]
    and e
    jr jr_01c_5df5

    ld [hl], b
    ld h, $18
    dec h
    jr jr_01c_5e5e

    jr jr_01c_5e5f

    jr @+$24

    jr jr_01c_5e61

    jr jr_01c_5e62

    jr jr_01c_5e5f

    jr @-$3d

    jr nc, jr_01c_5de8

    ld c, $1f
    inc c
    add hl, de
    inc c
    rra
    inc c
    jr jr_01c_5e5d

    rra
    inc c
    add hl, de
    inc c
    jr jr_01c_5e63

    or b
    nop
    rst $38
    ld a, [bc]
    db $10
    ld [bc], a

jr_01c_5e5d:
    dec bc

jr_01c_5e5e:
    db $fd

jr_01c_5e5f:
    cp $a0

jr_01c_5e61:
    ld [bc], a

jr_01c_5e62:
    and d

jr_01c_5e63:
    db $10
    and e
    inc b
    inc [hl]
    inc b
    inc [hl]
    inc b
    inc [hl]
    inc b
    and d
    rst $38
    add hl, sp
    inc c
    and b
    inc b
    add hl, sp
    ld [$02a0], sp
    dec sp
    ld [bc], a
    ld b, b
    ld [bc], a
    dec sp
    inc c
    and b
    inc b
    dec sp
    ld [$02a0], sp
    ld b, b
    ld [bc], a
    ld b, d
    ld [bc], a
    ld b, b
    inc c
    and b
    inc b
    ld b, b
    ld [$02a0], sp
    dec sp
    ld [bc], a
    add hl, sp
    ld [bc], a
    dec sp
    inc b
    and b
    inc b
    dec sp
    ld [$02a0], sp
    and d
    jr nz, jr_01c_5ed1

    inc b
    and b
    inc b
    inc [hl]
    inc b
    and b
    ld [bc], a
    and d
    jr jr_01c_5edb

    inc b
    and e
    rla
    add hl, sp
    inc b
    ld b, c
    inc b
    ld b, h
    inc b
    and d
    rst $38
    and e
    ld a, [de]
    ld b, a
    inc d
    and b
    ld b, $47
    inc b
    and b
    ld [bc], a
    and d
    rra
    ld b, a
    inc b
    ld b, l
    inc b
    ld b, h
    inc b
    and d
    rst $38
    and e
    ld e, $42
    inc e
    and b
    ld b, $42
    ld [$02a0], sp
    and d

jr_01c_5ed1:
    inc e
    ld b, d
    inc b
    and d
    rra
    and e
    rla
    ld b, d
    inc b
    ld b, h

jr_01c_5edb:
    inc b
    and e
    ld e, $a2
    rst $38
    ld b, l
    inc e
    and b
    ld b, $45
    ld [$02a0], sp
    and e
    dec e
    and d
    rra
    dec sp
    inc b
    ld b, h
    inc b
    ld b, d
    inc b
    and d
    rst $38
    ld b, b

jr_01c_5ef5:
    inc e
    and b
    ld b, $a3
    ld a, [de]
    ld b, b
    ld [$02a0], sp
    and d
    dec d
    ld b, b
    inc b
    and d
    rra
    ld b, b
    inc b
    ld b, h
    inc b
    and e
    inc d
    and d
    ld b, b
    ld b, d
    ld [$04a0], sp
    ld b, d
    inc b
    and b
    ld [bc], a
    and d
    dec d
    add hl, sp
    inc b
    add hl, sp
    inc b
    add hl, sp
    inc b
    and d

jr_01c_5f1d:
    ld d, b
    and e
    inc de
    add hl, sp
    ld [$04a0], sp
    add hl, sp
    inc b
    and b
    ld [bc], a
    ld b, b
    inc c
    and e
    ld a, [de]
    and d
    rst $38
    ld b, b
    inc d
    and b
    inc b
    ld b, b
    inc b
    and b
    ld [bc], a
    and d
    jr nc, jr_01c_5f74

    inc c
    and d
    inc e
    and e
    cp $a2
    ld d, b
    ld b, h
    inc c
    and d
    rst $38
    ld b, l
    inc e
    and b
    inc b
    ld b, l
    ld [$02a0], sp
    and d
    ld d, b
    add hl, sp
    inc c
    and d
    rst $38
    dec sp
    jr jr_01c_5ef5

    inc b
    dec sp
    ld [$02a0], sp
    and d
    ld b, d
    ld c, c
    inc b
    and d
    ld [hl], b
    ld b, a
    ld [$2fa2], sp
    ld b, l
    inc b
    and d
    rst $38
    and e
    ld c, $44
    inc e
    and b
    inc b
    ld b, h
    ld [$02a0], sp
    and e
    dec c

jr_01c_5f74:
    and d
    ld d, b
    scf
    inc c
    and d
    rst $38
    add hl, sp
    jr jr_01c_5f1d

    inc b
    add hl, sp
    ld [$02a0], sp
    dec sp
    inc b
    ld b, b
    ld [$0442], sp
    and e
    inc sp
    and d
    rra
    ld b, h
    inc b
    ld b, b
    inc b
    ld b, b
    inc b
    ld b, d
    inc b
    and b
    inc b
    ld b, d
    inc b
    and b
    ld [bc], a
    ld b, b
    inc b
    or d
    db $fc
    sbc b
    nop
    ld c, c
    inc b
    ld b, b
    inc b
    ld b, b
    inc b
    ld b, d
    inc b
    and b
    inc b
    ld b, d
    inc b
    and b
    ld [bc], a
    ld b, b
    inc b
    and e
    inc [hl]
    and d
    jr nz, jr_01c_5ff5

    inc b
    and b
    inc b
    ld b, b
    inc b
    and b
    ld [bc], a
    ld b, b
    inc b
    and d
    rst $38
    dec sp
    ld [$20a2], sp
    and b
    inc b
    dec sp
    inc b
    and b
    ld [bc], a
    dec sp
    inc b
    and b
    inc b
    dec sp
    inc b
    and b
    ld [bc], a
    dec sp
    inc b
    and d
    rst $38
    add hl, sp
    ld [$20a2], sp
    and b
    inc b
    add hl, sp
    inc b
    and b
    ld [bc], a
    add hl, sp
    inc b
    and b
    inc b
    add hl, sp
    inc b
    and b
    ld [bc], a
    add hl, sp
    inc b
    and d
    rst $38
    scf
    ld [$20a2], sp
    and b
    inc b
    scf
    inc b
    and b

jr_01c_5ff5:
    ld [bc], a
    scf
    inc b
    and b
    inc b
    scf
    inc b
    and b
    ld [bc], a
    scf
    inc b
    and d
    rst $38
    dec [hl]
    ld [$20a2], sp
    and b
    inc b
    dec [hl]
    inc b
    and e
    inc sp
    and b
    ld [bc], a
    and d
    rst $38
    inc [hl]
    inc c
    and b
    inc b
    inc [hl]
    inc b
    and b
    ld [bc], a
    and d
    ld [bc], a
    rra
    inc b
    inc [hl]
    ld [bc], a
    inc [hl]
    ld [bc], a
    or d
    db $fc
    jp c, $a200

    rst $38
    inc [hl]
    inc b
    and b
    inc b
    inc [hl]
    inc b
    rra
    inc b
    or b
    nop
    rst $38
    rst $38
    ld [$0402], sp
    nop
    db $fd
    cp $a2
    ld [bc], a
    ret nz

    cp $a0
    inc b
    and e
    inc bc
    rra
    dec b
    scf
    db $10
    dec [hl]
    ld [$0833], sp
    dec [hl]
    db $10
    inc sp
    ld [$0832], sp
    inc sp
    db $10
    ld [hl-], a

jr_01c_6051:
    ld [$0830], sp
    ld [hl-], a
    db $10
    jr nc, @+$0a

    ld a, [hl+]
    ld [$02a0], sp
    jr nc, @+$72

    pop bc
    jr nc, @-$5b

    nop
    jr nc, jr_01c_6074

    and b
    inc b
    and e
    inc bc
    ret nz

    cp $40
    db $10
    ld a, [hl-]
    ld [$0838], sp
    ld a, [hl-]
    db $10
    jr c, jr_01c_607c

jr_01c_6074:
    scf
    ld [$1038], sp
    scf
    ld [$0835], sp

jr_01c_607c:
    inc sp
    db $10
    dec [hl]
    db $10
    ld [hl-], a
    dec sp
    and e
    dec b
    and b
    ld [$101b], sp
    and b
    inc b
    and e
    nop
    pop bc
    ld [hl], b
    dec de
    jr nz, jr_01c_6051

    cp $a3
    inc bc
    rra
    dec b
    inc sp
    ld [$0835], sp
    scf
    db $10
    dec [hl]
    ld [$0833], sp
    dec [hl]
    db $10
    inc sp
    ld [$0832], sp
    inc sp
    db $10
    ld [hl-], a
    ld [$0830], sp
    ld [hl-], a
    db $10
    jr nc, jr_01c_60b8

    ld a, [hl+]
    ld [$5030], sp
    pop bc
    jr nc, @-$5b

    nop

jr_01c_60b8:
    jr nc, jr_01c_60c5

    and e
    ld [$0aa0], sp
    pop bc
    ld b, b
    jr nz, @+$0a

    jp nz, $2510

jr_01c_60c5:
    ld [$0829], sp

jr_01c_60c8:
    dec h
    ld [$0823], sp
    daa
    ld [$fcb7], sp
    ld c, h
    nop
    ld [hl+], a
    ld [$0825], sp
    ld [hl+], a
    ld [$0825], sp
    inc hl
    ld [$0827], sp
    inc hl
    ld [$0827], sp
    jr z, @+$0a

    jr nc, jr_01c_60ee

    or e
    db $fc
    ld e, b
    nop
    dec h
    ld [$0830], sp

jr_01c_60ee:
    dec h
    ld [$0830], sp
    ld [hl+], a
    ld [$0828], sp
    ld [hl+], a
    ld [$0828], sp
    inc hl
    ld [$082a], sp
    inc hl
    ld [$0827], sp
    ret nz

    cp $20
    jr jr_01c_60c8

    jr nz, jr_01c_6129

    ld [$01a2], sp
    call nz, Call_000_2920
    ld [$06c4], sp
    add hl, hl
    ld [$0829], sp
    and b
    dec bc
    jp $a320


    ld b, $29
    db $10
    jp $a305


    ld [bc], a
    and b
    dec c
    dec h
    ld [$06c4], sp
    add hl, hl

jr_01c_6129:
    ld [$0830], sp
    dec hl
    ld [$25c3], sp
    and e
    ld b, $1f
    ld [$302b], sp
    or b
    nop
    rst $38
    ld [$0c02], sp
    nop
    db $fd
    cp $a2
    ld [bc], a
    and b
    inc c
    and e
    cp $c1
    ld b, b
    jr nz, @+$0a

    jp nz, Jump_000_2310

    ld [$0827], sp
    inc hl
    ld [$40c1], sp
    jr nz, @+$0a

    jp nz, $2510

    ld [$0829], sp
    dec h
    ld [$40c1], sp
    jr nz, @+$0a

    jp nz, $2710

    ld [$082a], sp
    daa
    ld [$40c1], sp
    ld a, [de]
    ld [$10c2], sp
    ld [hl+], a
    ld [$0827], sp
    ld [hl+], a
    ld [$40c1], sp
    jr nz, @+$0a

    jp nz, Jump_000_2310

    ld [$0827], sp
    inc hl
    ld [$40c1], sp
    jr nz, @+$0a

    jp nz, $2510

    ld [$0829], sp
    dec h
    ld [$40c1], sp
    jr nz, @+$0a

    jp nz, $2710

    ld [$082a], sp
    daa
    ld [$40c1], sp
    jr nz, @+$0a

    jp nz, $2510

    ld [$0829], sp
    dec h
    ld [$40c1], sp
    jr nz, @+$0a

    jp nz, Jump_000_2810

    ld [$0827], sp
    dec h
    ld [$40c1], sp
    jr nz, @+$0a

    jp nz, $2710

    ld [$0825], sp
    inc hl
    ld [$40c1], sp
    jr nz, @+$0a

    jp nz, $2510

    ld [$0823], sp
    ld [hl+], a
    ld [$40c1], sp
    jr jr_01c_61d5

    jp nz, $2010

    ld [$0822], sp
    jr z, @+$0a

jr_01c_61d5:
    pop bc
    ld b, b
    dec de
    ld [$10c2], sp
    ld [hl+], a
    ld [$0827], sp
    dec hl
    ld [$40c1], sp
    jr nz, jr_01c_61ed

    jp nz, Jump_000_2210

    ld [$0825], sp
    jr z, @+$0a

jr_01c_61ed:
    pop bc
    ld b, b
    rra
    ld [$10c2], sp
    ld [hl+], a
    ld [$0827], sp
    dec hl
    ld [$0827], sp
    ld [hl+], a
    ld [$081b], sp
    rla
    ld [$40c1], sp
    jr nz, @+$0a

    jp nz, Jump_000_2310

    ld [$0827], sp
    inc hl
    ld [$40c1], sp
    jr nz, @+$0a

    jp nz, $2510

    ld [$0829], sp

jr_01c_6217:
    dec h
    ld [$40c1], sp
    jr nz, @+$0a

    jp nz, $2710

    ld [$082a], sp
    daa
    ld [$40c1], sp
    ld a, [de]
    ld [$10c2], sp
    ld [hl+], a
    ld [$0827], sp
    ld [hl+], a
    ld [$40c1], sp
    jr nz, @+$0a

    jp nz, Jump_000_2310

    ld [$0827], sp
    inc hl
    ld [$40c1], sp
    jr nz, @+$0a

    jp nz, $2510

    ld [$0829], sp
    dec h
    ld [$40c1], sp
    jr nz, @+$0a

    jp nz, $2710

jr_01c_6250:
    ld [$082a], sp
    daa
    ld [$04a0], sp
    and d
    ld bc, $30c3

jr_01c_625b:
    and e
    ld [bc], a
    rra
    ld [$013b], sp
    and b
    rrca
    jp $4050


    rlca
    jp nz, Jump_000_3715

    ld [$0833], sp
    jp $a340


    ld b, $32
    jr z, jr_01c_6217

    ld [bc], a
    jr nc, @+$0a

    jp nz, Jump_000_3215

    ld [$0833], sp
    call nz, $3525
    ld [$15c2], sp
    scf
    ld [$40c3], sp
    and e
    ld [$2030], sp
    ld b, b
    jr jr_01c_6250

    dec d
    and e
    ld [bc], a
    ld a, [hl-]
    ld [$083a], sp
    jp $a340


    ld [$1042], sp
    call nz, $a320
    dec b
    ld b, e
    ld [$15c2], sp

jr_01c_62a3:
    ld b, b
    ld [$40c3], sp
    and e
    ld b, $37
    db $10
    jp nz, $a315

    ld [bc], a
    jr c, jr_01c_62b9

    jp $a340


    ld b, $38
    jr z, jr_01c_625b

    ld [bc], a

jr_01c_62b9:
    call nz, Call_000_3515
    inc b
    scf
    inc b
    and e
    ld [$40c3], sp
    jr c, @+$2a

    jp $a305


    dec b
    ld b, b
    ld [$15c2], sp
    ld a, [hl-]
    ld [$0838], sp
    jp Jump_000_3805


    ld [$15c2], sp
    scf
    ld [$40c3], sp
    and e
    ld b, $3a
    jr jr_01c_62a3

    dec b
    and e
    ld [bc], a
    scf
    ld [$15c2], sp
    inc sp
    ld [$0830], sp
    call nz, Call_000_3515
    ld [$0ca0], sp
    jp nz, Jump_000_3515

    ld [$0fa0], sp
    dec [hl]
    ld [$40c3], sp
    and e
    ld b, $35
    db $10
    jp $a305


    ld [bc], a
    add hl, hl
    ld [$15c2], sp
    jr nc, @+$0a

    dec [hl]
    ld [$0837], sp
    jp $a340


    ld b, $1f
    ld [$3037], sp
    or b
    nop
    rst $38
    ld [$02ff], sp
    dec b
    db $fd
    cp $a1
    dec b
    and d
    rst $38
    ld b, a
    db $10
    ld b, l
    ld [$0843], sp
    ld b, l
    db $10
    ld b, e
    ld [$0842], sp
    ld b, e
    db $10
    ld b, d
    ld [$0840], sp
    ld b, d
    db $10
    ld b, b
    ld [$083a], sp
    ld b, b
    ld [hl], b
    and b
    inc b
    ld b, b
    db $10
    and b
    ld [bc], a
    ld d, b
    db $10
    ld c, d
    ld [$0848], sp
    ld c, d
    db $10
    ld c, b
    ld [$0847], sp
    ld c, b
    db $10
    ld b, a
    ld [$0845], sp
    ld b, e
    db $10
    ld b, l
    db $10
    ld b, d
    ld h, b
    and b
    inc b
    ld b, d
    db $10
    and b
    ld [bc], a
    ld b, e
    ld [$0845], sp
    ld b, a
    db $10
    ld b, l
    ld [$0843], sp
    ld b, l
    db $10
    ld b, e
    ld [$0842], sp
    ld b, e
    db $10
    ld b, d
    ld [$0840], sp
    ld b, d
    db $10
    ld b, b
    ld [$083a], sp
    ld b, b
    ld d, b
    and b
    nop
    ld b, b
    db $10
    and c
    ld [bc], a
    rra
    jr nz, @-$5e

    ld [bc], a
    and d
    db $10
    jr nc, jr_01c_6394

    inc sp
    ld [$0830], sp
    inc sp
    ld [$082a], sp

jr_01c_6394:
    inc sp
    ld [$082a], sp
    inc sp
    ld [$0829], sp
    inc sp
    ld [$0829], sp
    inc sp
    ld [$0828], sp
    inc sp
    ld [$0828], sp
    inc sp
    ld [$0827], sp
    ld [hl-], a
    ld [$0827], sp
    ld [hl-], a
    ld [$0830], sp
    inc sp
    ld [$0830], sp
    inc sp
    ld [$0835], sp
    jr c, jr_01c_63c6

    dec [hl]
    ld [$0838], sp
    inc sp
    ld [$0838], sp

jr_01c_63c6:
    inc sp
    ld [$0838], sp
    ld [hl-], a
    ld [$0835], sp
    ld [hl-], a
    ld [$0835], sp
    ld a, [hl+]
    ld [$0832], sp
    ld a, [hl+]
    ld [$0832], sp
    ld a, [hl+]
    ld [$0833], sp
    ld a, [hl+]
    ld [$0833], sp
    and d
    ld d, b
    jr z, jr_01c_63fe

    and b
    ld b, $28
    ld [$50a2], sp
    and b
    ld [bc], a
    ld [hl-], a
    ld [$05a2], sp
    ld [hl+], a
    ld [$0829], sp
    jr nc, @+$0a

    and d
    jr nc, jr_01c_642d

    ld [$50a2], sp

jr_01c_63fe:
    ld [hl+], a
    ld [$05a2], sp
    dec [hl]
    ld [$0839], sp
    and d
    dec d
    dec [hl]
    db $10
    and d
    ld d, b
    and b
    ld [bc], a
    dec [hl]
    db $10
    and b
    inc b
    dec [hl]
    ld [$02a0], sp
    and d
    ld d, b
    ld [hl-], a
    ld [$10a2], sp
    dec hl
    ld [$0827], sp
    or b
    nop
    rst $38
    rst $38
    ld [bc], a
    ld bc, $000c
    cp $fe
    pop bc
    ld a, a
    and e

jr_01c_642d:
    inc de
    and b
    ld [$0e19], sp
    inc h
    inc e
    and b
    ld b, $24
    ld c, $a0
    ld [$0e19], sp
    ld h, $1c
    and b
    ld b, $26
    ld c, $a0
    ld [$0e19], sp
    daa
    inc e
    and b
    ld b, $27
    ld c, $a0
    ld [$0e19], sp
    ld h, $1c
    and b
    ld b, $26
    ld c, $b1
    db $fc
    dec b
    nop
    and b
    ld [$0e19], sp
    inc h
    inc e
    and b
    ld b, $24
    ld c, $a0
    ld [$0e17], sp
    inc h
    inc e
    and b
    ld b, $24
    ld c, $a0
    ld [$0e16], sp
    inc h
    inc e
    and b
    ld b, $24
    ld c, $a0
    ld [$0e15], sp
    inc hl
    inc e
    and b
    ld b, $23
    ld c, $a0
    ld [$0e14], sp
    dec de
    inc e
    and b
    ld b, $1b
    ld c, $b3
    db $fc
    cpl
    nop
    call nz, $a010
    ld [$0e09], sp
    inc h
    ld c, $20
    ld c, $24
    ld c, $09
    ld c, $26
    ld c, $22
    ld c, $26
    ld c, $09
    ld c, $27
    ld c, $24
    ld c, $27
    ld c, $09
    ld c, $26
    ld c, $22
    ld c, $26
    ld c, $b3
    db $fc
    jr c, jr_01c_64b8

jr_01c_64b8:
    and d
    ld bc, $0aa0
    db $fd
    cp $c4
    jr nz, @+$22

    rlca
    inc h
    rlca
    jr nz, @+$09

    inc h
    rlca
    add hl, de
    rlca
    inc h
    rlca
    jr nz, @+$09

    inc h
    rlca
    ld h, $07
    ld [hl+], a
    rlca
    jr nz, jr_01c_64dd

    inc h
    rlca
    or c
    db $fc
    ld d, [hl]
    nop
    daa

jr_01c_64dd:
    rlca
    inc h
    rlca
    jr nz, @+$09

    inc h
    rlca
    add hl, de
    rlca
    inc h
    rlca
    jr nz, @+$09

    inc h
    rlca
    ld h, $07
    ld [hl+], a
    rlca
    jr nz, jr_01c_64f9

    inc h
    rlca
    or c
    db $fc
    ld h, h
    nop
    or c

jr_01c_64f9:
    nop
    jr nz, jr_01c_6503

    inc h
    rlca
    jr nz, @+$09

    inc h
    rlca
    add hl, hl

jr_01c_6503:
    rlca
    inc h
    rlca
    jr nz, @+$09

    inc h
    rlca
    jr nz, jr_01c_6513

    inc h
    rlca
    jr nz, @+$09

    inc h
    rlca
    daa

jr_01c_6513:
    rlca
    inc h
    rlca
    jr nz, @+$09

    inc h
    rlca
    jr nz, @+$09

    inc h
    rlca
    jr nz, @+$09

    inc h
    rlca
    ld h, $07
    inc h
    rlca
    jr nz, @+$09

    inc h
    rlca
    jr nz, jr_01c_6533

    inc hl
    rlca
    jr nz, @+$09

    inc hl
    rlca
    add hl, hl

jr_01c_6533:
    rlca
    inc hl
    rlca
    jr nz, jr_01c_653f

    inc hl
    rlca
    ld [hl+], a
    rlca
    inc h
    rlca
    ld [hl+], a

jr_01c_653f:
    rlca
    inc h
    rlca
    dec hl
    rlca
    inc h
    rlca
    ld [hl+], a
    rlca
    inc h
    rlca
    or e
    db $fc
    adc e
    nop
    call nz, $a328
    ld [bc], a
    inc h
    ld c, $1f
    ld c, $24
    ld c, $1f
    ld c, $26
    ld c, $1f
    ld c, $26
    ld c, $1f
    ld c, $27
    ld c, $1f
    ld c, $27
    ld c, $1f
    ld c, $26
    ld c, $1f
    ld c, $26
    ld c, $1f
    ld c, $24
    ld c, $1f
    ld c, $24
    ld c, $1f
    ld c, $26
    ld c, $1f
    ld c, $26
    ld c, $1f
    ld c, $27
    ld c, $1f
    ld c, $27
    ld c, $1f
    ld c, $26
    ld c, $1f
    ld c, $26
    ld c, $1f
    ld c, $a0
    add hl, bc
    call nz, $2428
    ld c, $1f
    ld c, $24
    ld c, $1f
    ld c, $26
    ld c, $1f
    ld c, $26
    ld c, $1f
    ld c, $27
    ld c, $1f
    ld c, $27
    ld c, $1f
    ld c, $26
    ld c, $1f
    ld c, $26
    ld c, $1f
    ld c, $24
    ld c, $1f
    ld c, $24
    ld c, $1f
    ld c, $26
    ld c, $1f
    ld c, $26
    ld c, $1f
    ld c, $27
    ld c, $1f
    ld c, $27
    ld c, $1f
    ld c, $a0
    rrca
    ld [hl], $07
    ld [hl-], a
    rlca
    jr nc, jr_01c_65dd

    add hl, hl
    rlca
    ld h, $07
    jr nz, jr_01c_65e3

    add hl, de

jr_01c_65dd:
    rlca
    jr nz, @+$09

    or b

jr_01c_65e1:
    db $fc
    ld [bc], a

jr_01c_65e3:
    nop
    rst $38
    ld [bc], a
    ld bc, $000f
    db $fd
    cp $a3
    dec b
    jp Jump_000_2920


    adc e
    and e

jr_01c_65f2:
    ld b, $34
    rrca
    ld [hl-], a
    ld c, $30
    ld c, $32
    ld c, $2b
    ld c, $30
    ld c, $a3
    dec b
    add hl, hl
    ld [hl], b
    and e
    nop
    pop bc
    jr nc, @+$2b

    dec c
    rra
    ld bc, $05a3
    jp $2b20


    ld c, $c2
    rrca
    dec sp
    ld c, $2b
    ld c, $a0
    dec b
    dec hl
    ld c, $1f
    ld a, [hl+]
    and b
    rrca
    and e
    dec b
    jp $3420


    adc e
    and e
    ld b, $3b

jr_01c_6628:
    rrca
    add hl, sp
    ld c, $37
    ld c, $39
    ld c, $35
    ld c, $37
    ld c, $a3
    dec b
    inc [hl]
    xor b
    and e
    nop
    pop bc
    ld d, b
    inc [hl]
    jr c, jr_01c_65e1

    dec b
    jp Jump_000_3020


    ld c, $c2
    rrca
    ld [hl-], a
    ld c, $34
    ld c, $30
    ld c, $c3
    jr nz, jr_01c_6680

    ld c, $34
    jr c, jr_01c_65f2

    ld b, $34
    ld c, $c4
    cpl
    and b
    rrca
    dec sp
    inc e
    dec sp
    inc e
    add hl, sp
    inc e
    jp $3720


    ld c, $c2
    rrca
    add hl, sp
    ld c, $c3
    ld b, b
    and e
    ld [$a839], sp
    and e
    nop
    pop bc
    jr nc, jr_01c_66ab

    inc e
    and e
    dec b
    jp Jump_000_3020


    ld c, $c2
    rrca
    ld [hl-], a
    ld c, $34
    ld c, $30

jr_01c_6680:
    ld c, $c3
    cpl
    ld [hl-], a
    ld c, $34
    jr c, jr_01c_6628

    ld [$0e34], sp
    and b
    rrca
    dec sp
    inc e
    and e
    ld b, $c3
    jr nc, jr_01c_66d6

    ld c, $40
    ld c, $3b
    ld c, $39
    ld c, $a3
    dec b
    scf
    ld c, $c2
    rrca
    add hl, sp
    ld c, $c3
    jr nz, @-$5b

    ld [$a839], sp
    and e
    nop

jr_01c_66ab:
    pop bc
    jr nc, @+$3b

    inc e
    and d
    ld bc, $0fa0
    and e
    dec b
    jp Jump_000_2940


    adc h
    inc [hl]
    ld c, $32
    ld c, $30
    ld c, $32
    ld c, $2b
    ld c, $30
    ld c, $29
    ld [hl], b
    and e
    nop
    pop bc
    jr nc, jr_01c_66f5

    ld c, $a3
    dec b
    jp $2b30


    ld c, $c2
    rrca
    dec sp

jr_01c_66d6:
    ld c, $2b
    ld c, $1f
    jr c, @-$3b

    ld b, b
    inc [hl]
    adc h
    dec sp
    ld c, $39
    ld c, $37
    ld c, $39
    ld c, $35
    ld c, $37
    ld c, $34
    xor b
    and e
    nop
    pop bc
    ld d, b
    inc [hl]
    jr c, @-$5b

    dec b

jr_01c_66f5:
    jp $3040


    ld c, $c2
    rrca
    ld [hl-], a
    ld c, $34
    ld c, $30
    ld c, $c3
    ld b, b
    ld [hl-], a
    ld c, $34
    jr c, @-$5e

    ld b, $34
    ld c, $c3
    cpl
    and b
    rrca
    dec sp
    dec d
    and b
    rlca
    dec sp
    rlca
    and b

jr_01c_6716:
    rrca
    dec sp
    dec d
    and b
    rlca
    dec sp
    rlca
    and b
    rrca
    add hl, sp
    dec d
    and b
    rlca
    add hl, sp
    rlca
    and b
    rrca
    jp Jump_000_3740


    ld c, $c2
    rrca
    add hl, sp
    ld c, $c3
    ld b, b
    and e
    ld [$3839], sp
    pop bc
    ld [hl], b
    and e
    nop
    add hl, sp
    inc e

jr_01c_673b:
    and d
    ld bc, $06a3
    call nz, $a040
    ld [$0e27], sp
    jr nc, @+$10

    jp nz, Jump_000_320f

    ld c, $34
    ld c, $c3
    jr nz, @+$39

    ld c, $c2
    rrca
    add hl, sp
    ld c, $c3
    dec b
    add hl, sp
    dec d
    pop bc
    jr nc, jr_01c_6795

    rlca
    and d
    ld bc, $0fa0
    and e
    dec b
    jp $3040


    ld c, $c2
    rrca
    ld [hl-], a
    ld c, $34
    ld c, $30
    ld c, $c3
    ld b, b
    ld [hl-], a
    ld c, $34
    jr c, jr_01c_6716

    ld b, $34
    ld c, $a0
    rrca
    dec sp
    inc e
    and e
    inc bc
    ld b, d
    ld c, $40
    ld c, $3b
    ld c, $39
    ld c, $a3
    dec b
    scf
    ld c, $c2
    rrca
    add hl, sp
    ld c, $c3
    ld b, b
    and e
    ld [$a839], sp

jr_01c_6795:
    pop bc
    jr nc, jr_01c_673b

    nop
    add hl, sp
    inc e
    or b
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    db $fd
    cp $a3
    inc de
    and d
    rst $38
    and c
    add hl, bc
    add hl, hl
    ld c, $a2
    ccf
    and c
    inc c
    jr nc, jr_01c_67ce

    jr nc, @+$10

    and d
    rst $38
    and c
    add hl, bc
    add hl, hl
    ld c, $a2
    ccf
    and c
    inc c
    ld [hl-], a
    inc e
    ld [hl-], a
    ld c, $a2
    rst $38
    and c
    add hl, bc
    add hl, hl
    ld c, $a2
    ccf
    and c
    inc c
    inc [hl]
    inc e

jr_01c_67ce:
    inc [hl]
    ld c, $a2
    rst $38
    and c
    add hl, bc
    add hl, hl
    ld c, $a2
    ccf
    and c
    inc c
    ld [hl-], a
    inc e
    ld [hl-], a
    ld c, $b1
    db $fc
    inc b
    nop
    and d
    rst $38
    and c
    add hl, bc
    add hl, hl
    ld c, $a2
    ccf
    and c
    inc c
    jr nc, jr_01c_680a

    jr nc, jr_01c_67fe

    and d
    rst $38
    and c
    add hl, bc
    daa
    ld c, $a2
    ccf
    and c
    inc c
    jr nc, jr_01c_6818

    jr nc, jr_01c_680c

jr_01c_67fe:
    and d
    rst $38
    and c
    add hl, bc
    ld h, $0e
    and d
    ccf
    and c
    inc c
    jr nc, jr_01c_6826

jr_01c_680a:
    jr nc, jr_01c_681a

jr_01c_680c:
    and d
    rst $38
    and c
    add hl, bc
    dec h
    ld c, $a2
    ccf
    and c
    inc c
    jr nc, jr_01c_6834

jr_01c_6818:
    jr nc, @+$10

jr_01c_681a:
    and d
    rst $38
    and c
    add hl, bc
    inc h
    ld c, $a2
    ccf
    and c
    inc c
    add hl, hl
    inc e

jr_01c_6826:
    add hl, hl
    ld c, $a2
    rst $38
    and c
    add hl, bc
    inc h
    ld c, $a2
    ccf
    and c
    inc c
    jr z, jr_01c_6850

jr_01c_6834:
    jr z, jr_01c_6844

    and d
    rst $38
    and c
    add hl, bc

jr_01c_683a:
    inc h
    ld c, $a2
    ccf
    and c
    inc c
    ld h, $1c
    ld h, $0e

jr_01c_6844:
    and d
    rst $38
    and c
    add hl, bc
    inc h
    ld c, $a2
    ccf
    and c
    inc c
    jr z, jr_01c_686c

jr_01c_6850:
    jr z, @+$10

    and c
    ld a, [bc]
    and d
    rst $38
    add hl, de
    ld c, $a2
    db $10
    and c
    inc bc
    jr nc, jr_01c_686c

    add hl, hl
    ld c, $30
    ld c, $a1
    ld a, [bc]
    and d
    rst $38
    add hl, de
    ld c, $a1
    inc bc
    and d
    db $10

jr_01c_686c:
    ld [hl-], a
    ld c, $29
    ld c, $32
    ld c, $a1
    ld a, [bc]
    and d
    rst $38
    add hl, de
    ld c, $a1
    inc bc
    and d
    db $10
    inc [hl]
    ld c, $30
    ld c, $34
    ld c, $a1
    ld a, [bc]
    and d
    rst $38
    add hl, de
    ld c, $a1
    inc bc
    and d
    db $10
    ld [hl-], a
    ld c, $29
    ld c, $32
    ld c, $b3
    db $fc
    ld e, d
    nop
    and d
    jr nc, jr_01c_683a

    ld a, [bc]
    add hl, de
    ld c, $a2
    jr nz, jr_01c_68b8

    ld c, $1f
    ld a, [hl+]
    add hl, hl
    ld c, $22
    rlca
    inc h
    rlca
    add hl, de
    ld c, $1f
    ld c, $a2
    cpl
    dec de
    ld c, $a0
    ld b, $1b
    ld c, $a0
    ld [bc], a
    jr nz, jr_01c_68c6

jr_01c_68b8:
    and b
    ld b, $20
    ld c, $a0
    ld [bc], a
    ld [hl+], a
    ld c, $a0
    ld b, $22
    ld c, $a0
    ld [bc], a

jr_01c_68c6:
    inc h
    ld c, $a2
    dec [hl]
    add hl, de
    ld c, $a2
    jr nz, @+$1b

    ld c, $1f
    ld a, [hl+]
    add hl, hl
    ld c, $22
    rlca
    inc h
    rlca
    add hl, de
    ld c, $1f
    ld c, $a2
    cpl
    add hl, hl
    ld c, $a0
    ld b, $29
    ld c, $a0
    ld [bc], a
    daa
    ld c, $a0
    ld b, $27
    ld c, $a0
    ld [bc], a
    ld h, $0e
    and b
    ld b, $26
    ld c, $a0
    ld [bc], a
    ld [hl+], a
    ld c, $a2
    dec [hl]
    add hl, de
    ld c, $a2
    jr nz, @+$1b

    ld c, $1f
    ld a, [hl+]
    daa
    ld c, $a2
    jr nc, @+$19

    ld c, $a2
    jr nz, jr_01c_6924

    ld c, $1f
    ld c, $16
    ld c, $a2
    jr nc, jr_01c_6937

    ld c, $29
    ld c, $a2
    jr nz, jr_01c_6938

    ld c, $15
    ld c, $a2
    jr nc, jr_01c_6938

    ld c, $25
    ld c, $a2
    dec d

jr_01c_6924:
    inc d
    rlca
    dec de
    rlca
    inc h
    rlca
    rra
    rlca
    and d
    ld d, b
    add hl, hl
    inc e
    and d
    dec d
    inc d
    rlca
    dec de
    rlca
    inc h

jr_01c_6937:
    rlca

jr_01c_6938:
    rra
    rlca
    and d
    ld d, b
    jr z, jr_01c_695a

    and d
    dec d
    inc d
    rlca
    dec de
    rlca
    inc h
    rlca
    rra
    rlca
    and d
    ld d, b
    ld h, $1c
    and d
    dec d
    inc d
    rlca
    dec de
    rlca
    inc h
    rlca
    rra
    rlca
    and d
    ld d, b
    jr z, @+$1e

jr_01c_695a:
    and d
    jr nc, @-$5d

    inc bc
    jr nc, @+$10

    and d
    jr nz, @+$1b

    ld c, $a2
    jr nc, jr_01c_6997

    ld c, $a2
    jr nz, @+$1b

    ld c, $a2
    jr nc, jr_01c_69a1

    ld c, $a2
    jr nz, @+$1b

    ld c, $a2
    jr nc, jr_01c_69a9

    ld c, $a2
    jr nz, @+$1b

    ld c, $a2
    jr nc, jr_01c_69b3

    ld c, $a2
    jr nz, @+$1b

    ld c, $a2
    jr nc, jr_01c_69bb

    ld c, $a2
    jr nz, @+$1b

    ld c, $a2
    jr nc, jr_01c_69c1

    ld c, $a2
    jr nz, @+$1b

    ld c, $a2
    jr nc, jr_01c_69c9

jr_01c_6997:
    ld c, $a2
    jr nz, @+$1b

    ld c, $a2
    jr nc, jr_01c_69cf

    ld c, $a2

jr_01c_69a1:
    jr nz, @+$1b

    ld c, $a2
    jr nc, jr_01c_69d7

    ld c, $a2

jr_01c_69a9:
    jr nz, @+$1b

    ld c, $a2
    jr nc, jr_01c_69e1

    ld c, $a2
    jr nz, @+$1b

jr_01c_69b3:
    ld c, $a2
    jr nc, jr_01c_69e9

    ld c, $a2
    jr nz, @+$1b

jr_01c_69bb:
    ld c, $a2
    jr nc, jr_01c_69f3

    ld c, $a2

jr_01c_69c1:
    jr nz, @+$1b

    ld c, $a2
    jr nc, jr_01c_69fb

    ld c, $a2

jr_01c_69c9:
    jr nz, @+$1b

    ld c, $a2
    jr nc, jr_01c_6a01

jr_01c_69cf:
    ld c, $a2
    jr nz, @+$1b

    ld c, $a2
    jr nc, jr_01c_6a09

jr_01c_69d7:
    ld c, $a2
    jr nz, @+$1b

    ld c, $a2
    jr nc, jr_01c_6a0f

    ld c, $a2

jr_01c_69e1:
    jr nz, @+$1b

    ld c, $a2
    jr nc, jr_01c_6a17

    ld c, $a2

jr_01c_69e9:
    jr nz, @+$1b

    ld c, $a2
    jr nc, @+$34

    ld c, $a2
    jr nz, @+$1b

jr_01c_69f3:
    ld c, $a2
    jr nc, jr_01c_6a29

    ld c, $a2
    jr nz, @+$1b

jr_01c_69fb:
    ld c, $a2
    jr nc, jr_01c_6a33

    ld c, $a2

jr_01c_6a01:
    jr nz, @+$1b

    ld c, $a2
    jr nc, @+$36

    ld c, $a2

jr_01c_6a09:
    jr nz, jr_01c_6a24

    ld c, $a2
    jr nc, jr_01c_6a41

jr_01c_6a0f:
    ld c, $a2
    jr nz, @+$1b

    ld c, $a2
    jr nc, jr_01c_6a49

jr_01c_6a17:
    ld c, $a2
    jr nz, @+$1b

    ld c, $b1
    db $fc
    rra
    ld bc, $00b0
    rst $38
    rst $38

jr_01c_6a24:
    ld a, [bc]
    ld bc, $000b
    and e

jr_01c_6a29:
    ld [bc], a
    call nz, Call_000_230a
    inc c
    or a
    db $fc
    inc b
    nop
    and d

jr_01c_6a33:
    ld bc, $0ba0
    db $fd
    cp $a3
    ld bc, $15c4
    inc hl
    inc c
    inc hl
    inc c
    daa

jr_01c_6a41:
    inc c
    inc hl
    inc c
    jr nz, @+$0e

    daa
    inc c
    dec h

jr_01c_6a49:
    inc c
    ld a, [de]
    inc c
    inc h
    inc c
    inc h
    inc c
    call nz, $a025
    ld c, $26
    inc b
    daa
    inc b
    dec hl
    inc b
    jr nc, jr_01c_6a60

    ld [hl-], a
    inc b
    inc [hl]
    inc b

jr_01c_6a60:
    jp $a348


    inc bc
    dec [hl]
    inc c
    inc [hl]
    inc c
    ld [hl-], a
    inc c
    inc [hl]
    inc c
    and b
    dec bc
    and e
    ld bc, $15c4
    jr z, jr_01c_6a80

    jr z, jr_01c_6a82

    jr z, @+$0e

    jr nz, jr_01c_6a86

    jr z, @+$0e

    jr z, @+$0e

    add hl, hl
    inc c

jr_01c_6a80:
    add hl, hl
    inc c

jr_01c_6a82:
    call nz, $2b25
    inc c

jr_01c_6a86:
    call nz, $a045
    ld c, $22
    inc b
    daa
    inc b
    dec hl
    inc b
    call nz, Call_000_3025
    inc c
    call nz, Call_000_2245
    inc b
    daa
    inc b
    jr nc, jr_01c_6aa0

    call nz, $2b25
    inc c

jr_01c_6aa0:
    call nz, Call_000_2245
    inc b
    daa
    inc b
    dec hl
    inc b
    add hl, hl
    inc b
    ld [hl+], a
    inc b
    daa
    inc b
    dec hl
    inc b
    ld [hl+], a
    inc b
    daa
    inc b
    call nz, $2315
    inc c
    or l
    db $fc
    ld c, c
    nop
    call nz, $a025
    ld c, $a3
    dec d
    scf
    ld [$0835], sp
    inc sp
    ld [$0837], sp
    dec [hl]
    ld [$0833], sp
    inc sp
    ld [$0831], sp
    dec hl
    ld [$40c3], sp
    ld [hl-], a
    jr @+$2d

    db $10
    and b
    ld b, $2b
    inc b
    and b
    inc c
    ld [hl-], a
    inc b
    and d
    ld bc, $0ca0
    call nz, Call_000_2715
    inc c
    inc hl
    ld b, $30
    ld [bc], a
    inc sp
    ld [bc], a
    scf
    ld [bc], a
    call nz, $4020
    inc c
    call nz, Call_000_2815
    inc c
    or c
    db $fc
    ld h, d
    nop
    call nz, Call_000_1a15
    inc c
    dec h
    ld b, $2a
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    dec [hl]
    ld [bc], a
    call nz, $3a20
    inc c
    call nz, $2415
    inc c
    or c
    db $fc
    ld l, l
    nop
    jr z, jr_01c_6b24

    inc hl
    inc c
    inc hl
    inc c
    jr z, jr_01c_6b2a

    add hl, hl
    inc c
    jr nz, jr_01c_6b2e

    jr nz, jr_01c_6b30

jr_01c_6b24:
    add hl, hl
    inc c
    jp $a040


    rrca

jr_01c_6b2a:
    ld hl, $c414
    dec d

jr_01c_6b2e:
    jr nz, @+$04

jr_01c_6b30:
    ld hl, $c302
    ld b, b
    ld [hl+], a
    inc d
    call nz, $2115
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    jp $2340


    inc d
    call nz, Call_000_2515
    ld [bc], a
    inc hl
    ld [bc], a
    ret nz

    cp $a0
    inc c
    ld [hl+], a
    inc bc
    inc hl
    ld [bc], a
    ld [hl+], a
    ld bc, $0123
    ld [hl+], a
    ld bc, $0123
    and b
    ld a, [bc]
    inc hl
    ld bc, $0122
    inc hl
    ld bc, $09a0
    inc hl
    ld bc, $0122
    inc hl
    ld bc, $0123
    ld [hl+], a
    ld bc, $0123
    and b
    rlca
    inc hl
    ld bc, $0122
    inc hl
    ld bc, $0123
    ld [hl+], a
    ld bc, $0123
    call nz, Call_000_2310
    inc c
    or a
    db $fc
    xor h
    nop
    jr nz, jr_01c_6b90

    or a
    db $fc
    xor a
    nop
    or b
    nop
    rst $38
    ld a, [bc]
    ld bc, $000e
    and e

jr_01c_6b90:
    nop
    call nz, Call_000_270a
    inc c
    or a
    db $fc
    inc b
    nop

jr_01c_6b99:
    and d
    ld bc, $0ea0
    db $fd
    cp $a2
    nop
    and e
    rlca
    ret nz

    cp $32
    inc e
    and e
    nop
    and b
    dec b
    ld [hl-], a
    inc b
    and e
    ld [bc], a
    and b
    ld c, $30
    inc b
    ld [hl-], a
    inc b
    and b
    dec b
    ld [hl-], a
    inc b
    and b
    ld c, $35
    inc b
    ld [hl-], a
    inc b
    and b
    dec b
    ld [hl-], a
    inc b
    and b
    ld c, $30
    inc b
    ld [hl-], a
    inc b
    and b
    dec b
    ld [hl-], a
    inc b
    and b
    ld c, $35
    inc b
    ld [hl-], a
    inc c
    and e
    add hl, bc
    ld a, [hl+]
    ld [$0432], sp
    jr nc, jr_01c_6bdf

    and b
    dec b
    jr nc, @+$06

jr_01c_6bdf:
    and b
    ld c, $c1
    jr nz, jr_01c_6c0b

    inc b
    ret nz

    cp $27
    ld c, b
    and e
    nop
    and b
    ld [$0c27], sp
    and b
    ld c, $a3
    rlca
    dec [hl]
    jr jr_01c_6b99

    nop
    and b
    dec b
    dec [hl]
    ld [$02a3], sp
    and b
    ld c, $33
    inc b
    ld [hl-], a
    inc b
    and b
    dec b
    ld [hl-], a
    inc b
    and b
    ld c, $37
    inc b

jr_01c_6c0b:
    dec [hl]
    inc b
    and b
    dec b
    dec [hl]
    inc b
    and b
    ld c, $33
    inc b
    ld [hl-], a
    inc b
    scf
    inc b
    dec [hl]
    inc b
    and e
    dec b
    pop bc
    ld c, a
    inc sp
    inc c
    ret nz

    cp $32
    ld [$0430], sp
    and e
    add hl, bc
    ld [hl-], a
    ld d, h
    and e
    nop
    and b
    dec b
    ld [hl-], a
    ld [$0fa0], sp
    jp $a310


    ld a, [bc]
    jr nc, jr_01c_6c3b

    inc sp
    ld [bc], a

jr_01c_6c3b:
    jp Jump_000_3740


    inc a
    ld b, b
    inc c
    call nz, $a325
    inc b
    ld b, e
    ld [$0842], sp
    ld b, b
    ld [$083a], sp
    jr c, jr_01c_6c57

    scf
    ld [$22c4], sp
    scf
    ld [$0835], sp

jr_01c_6c57:
    inc sp
    ld [$40c3], sp
    and e
    ld a, [bc]
    dec [hl]
    jr jr_01c_6c97

    inc c
    pop bc
    db $10
    scf
    ld [$10c3], sp
    dec [hl]
    inc b
    and d
    nop
    and b
    rrca
    and e
    inc bc
    jp Jump_000_3310


    inc b
    and b
    dec b
    inc sp
    inc b
    and b
    rrca
    jp nz, Jump_000_3012

    inc b
    jp Jump_000_3001


    inc c
    and b
    ld [$00a3], sp
    jr nc, jr_01c_6c93

    and e
    inc bc
    and b
    rrca
    inc sp
    inc b
    and b
    dec b
    inc sp
    inc b
    and b
    rrca

jr_01c_6c93:
    call nz, $300f
    inc b

jr_01c_6c97:
    or c
    db $fc
    ld [hl], d
    nop
    jp Jump_000_3210


    inc b
    and b
    dec b
    ld [hl-], a
    inc b
    and b
    rrca
    jp nz, Jump_000_2a12

    inc b
    jp Jump_000_2a01


    inc c
    and b
    ld [$0c2a], sp
    and b
    rrca
    ld [hl-], a
    inc b
    and b
    dec b
    ld [hl-], a
    inc b
    and b
    rrca
    call nz, Call_000_2a0f
    inc b
    or c
    db $fc
    adc b
    nop
    jp $3010


    inc b
    and b
    dec b
    jr nc, @+$06

    and b
    rrca
    jp nz, Jump_000_2712

    inc b
    jp $2701


    db $10
    ret nz

    cp $28
    inc b
    dec hl
    inc b
    jr nc, jr_01c_6ce1

    ld [hl-], a
    inc b
    inc sp
    inc b

jr_01c_6ce1:
    jp $a310


    ld [$1835], sp
    ld [hl-], a
    inc c
    dec [hl]
    inc c
    scf
    inc e
    and e
    nop
    and b
    ld [$0837], sp
    and b
    rrca
    call nz, $a210
    ld bc, $0c25
    dec h
    inc c
    dec h
    inc c
    dec h
    inc c
    dec h
    inc c
    daa
    inc c
    daa
    inc c
    jr z, jr_01c_6d15

    jr z, jr_01c_6d17

    add hl, hl
    inc c
    add hl, hl
    inc c
    ld a, [hl+]
    inc c
    ld a, [hl+]
    inc c
    inc hl
    inc c

jr_01c_6d15:
    or a
    db $fc

jr_01c_6d17:
    call nz, $b000
    nop
    rst $38
    ld a, [bc]
    ld [de], a
    ld [bc], a
    inc bc
    add hl, hl
    inc c
    jr nc, @+$0e

    or e
    db $fc
    ld [bc], a
    nop
    and d
    dec h
    and c
    ld b, $fd
    cp $a2
    jr nc, @+$22

    inc c
    and c
    inc bc
    and d
    ld [de], a
    add hl, hl
    inc c
    inc sp
    inc c
    add hl, hl
    inc c
    jr z, jr_01c_6d4a

    jr nc, jr_01c_6d4c

    ld a, [hl+]
    inc c
    and c
    ld a, [bc]
    and d
    jr nc, jr_01c_6d5e

    inc c
    and d
    dec h

jr_01c_6d4a:
    jr nz, jr_01c_6d58

jr_01c_6d4c:
    and c
    inc bc
    and d
    ld [de], a
    jr nc, jr_01c_6d5e

    inc [hl]
    inc c
    inc [hl]
    inc c
    and c
    ld a, [bc]

jr_01c_6d58:
    and d
    dec h
    jr nz, @+$0e

    and c
    inc bc

jr_01c_6d5e:
    and d
    ld [de], a
    jr nc, jr_01c_6d6e

    jr nc, jr_01c_6d70

    and c
    ld a, [bc]
    and d
    jr nc, jr_01c_6d89

    inc c
    and d
    dec h
    ld [hl+], a
    inc c

jr_01c_6d6e:
    and c
    inc bc

jr_01c_6d70:
    and d
    ld [de], a
    ld [hl-], a
    inc c
    jr nc, jr_01c_6d82

    and c
    ld a, [bc]
    and d
    jr nc, jr_01c_6d93

    inc c
    and d
    dec h
    ld [hl+], a
    inc c
    and c
    inc bc

jr_01c_6d82:
    and d
    ld [de], a
    dec [hl]
    inc c
    ld [hl], $0c
    and c

jr_01c_6d89:
    ld a, [bc]
    and d
    jr nc, jr_01c_6da3

    inc c
    and d
    dec h
    rla
    inc c
    and c

jr_01c_6d93:
    inc bc
    and d
    ld [de], a
    daa
    inc c
    daa
    inc c
    and c
    ld a, [bc]
    and d
    jr nc, jr_01c_6dc1

    inc c
    and d
    dec h
    rla

jr_01c_6da3:
    inc c
    and c
    inc bc
    and d
    ld [de], a
    daa
    inc c
    daa
    inc c
    and c
    ld a, [bc]
    and d
    jr nc, jr_01c_6dc8

    inc c
    and d
    dec h

jr_01c_6db4:
    jr nz, jr_01c_6dc2

    and c
    inc bc
    and d
    ld [de], a
    jr nc, jr_01c_6dc8

    ld a, [hl+]
    inc c
    ld a, [hl+]
    inc b
    and b

jr_01c_6dc1:
    inc b

jr_01c_6dc2:
    ld a, [hl+]
    inc b
    and b
    ld [bc], a
    and c
    ld a, [bc]

jr_01c_6dc8:
    and d
    dec h
    rla
    inc b
    jr nz, jr_01c_6dda

    and c
    inc bc
    and d
    jr nz, jr_01c_6dfd

    inc c
    add hl, hl
    inc c
    add hl, hl
    inc b
    and b
    inc b

jr_01c_6dda:
    add hl, hl
    inc b
    and b
    ld [bc], a
    and c
    ld a, [bc]
    and d
    dec h
    rla
    inc b
    jr @+$0e

    and c
    inc bc
    and d
    jr nz, @+$32

    inc c
    and c
    ld a, [bc]
    and d
    dec h
    ld hl, $a10c
    inc bc
    and d
    jr nz, jr_01c_6e22

    inc c
    and c
    ld a, [bc]
    and d
    dec h
    ld [hl+], a

jr_01c_6dfd:
    inc c
    and c
    inc bc
    and d
    jr nz, jr_01c_6e2c

    inc c
    and c
    ld a, [bc]
    and d
    dec h
    rla
    inc c
    and c
    inc bc
    and d
    jr nz, jr_01c_6e41

    inc c
    and d
    jr nz, jr_01c_6db4

    ld a, [bc]
    jr nz, jr_01c_6e22

    and c
    inc bc
    and d
    ld a, [de]
    jr nc, jr_01c_6e24

    and c
    ld a, [bc]
    and d
    jr nz, jr_01c_6e41

    inc b

jr_01c_6e22:
    dec d
    inc c

jr_01c_6e24:
    and c
    inc bc
    and d
    ld a, [de]
    dec h
    ld [$0aa1], sp

jr_01c_6e2c:
    and d
    jr nz, jr_01c_6e44

    inc b
    or c
    db $fc
    ld a, h
    nop
    rla
    inc c
    and c
    inc bc
    and d
    ld a, [de]
    daa
    ld [$0aa1], sp
    and d
    jr nz, jr_01c_6e58

jr_01c_6e41:
    inc b
    jr nz, jr_01c_6e50

jr_01c_6e44:
    and c
    inc bc
    and d
    ld a, [de]
    jr nc, jr_01c_6e52

    and c
    ld a, [bc]
    and d
    jr nz, jr_01c_6e6f

    inc b

jr_01c_6e50:
    or c
    db $fc

jr_01c_6e52:
    adc h
    nop
    dec d
    inc c
    and c
    inc bc

jr_01c_6e58:
    and d
    ld a, [de]
    jr z, jr_01c_6e68

jr_01c_6e5c:
    jr z, jr_01c_6e6a

    and c
    ld a, [bc]
    and d
    jr nc, jr_01c_6e78

    inc c
    and d
    dec h
    ld [de], a
    inc c

jr_01c_6e68:
    and c
    inc bc

jr_01c_6e6a:
    and d
    ld a, [de]
    add hl, hl
    inc c
    add hl, hl

jr_01c_6e6f:
    inc c
    and c
    ld a, [bc]
    and d
    jr nc, jr_01c_6e87

    inc c
    and d
    dec h

jr_01c_6e78:
    rla
    inc c
    and c
    inc bc
    and d
    ld a, [de]
    dec hl
    inc c
    dec hl
    inc c
    and c
    ld a, [bc]
    and d
    jr nc, jr_01c_6e99

jr_01c_6e87:
    inc c
    and d
    dec h
    rla
    inc c
    and c
    inc bc
    and d
    ld a, [de]
    dec hl
    inc c
    dec hl
    inc c
    and c
    ld a, [bc]
    and d
    jr nc, jr_01c_6eb0

jr_01c_6e99:
    inc c
    and d
    jr nz, jr_01c_6ebd

    inc c
    and c
    inc bc
    and d
    ld [de], a
    jr nc, jr_01c_6eb0

    jr nc, jr_01c_6eb2

    jr nc, @+$0e

    jr nc, jr_01c_6eb6

    jr nc, jr_01c_6eb8

    jr nc, @+$0e

    jr nc, jr_01c_6eb8

jr_01c_6eb0:
    and c
    ld a, [bc]

jr_01c_6eb2:
    and d
    jr nz, jr_01c_6ecc

    inc b

jr_01c_6eb6:
    jr nz, jr_01c_6ec4

jr_01c_6eb8:
    and d
    jr nz, jr_01c_6e5c

    ld [bc], a
    daa

jr_01c_6ebd:
    inc c
    and d
    rst $38
    and e
    inc bc
    jr z, jr_01c_6edc

jr_01c_6ec4:
    add hl, hl
    jr @+$2c

    db $10
    ld a, [hl+]
    inc b
    and c
    ld a, [bc]

jr_01c_6ecc:
    and d
    jr nz, @+$19

    inc b
    or b
    nop
    rst $38

jr_01c_6ed3:
    rst $38
    ld [$0b02], sp
    nop
    db $fd
    cp $a0
    dec bc

jr_01c_6edc:
    rra
    db $10
    call nz, Call_000_3405
    ld [$0834], sp
    inc [hl]
    ld [$0830], sp
    ld [hl-], a
    ld [$0832], sp
    ld [hl-], a
    ld [$082b], sp
    jr nc, jr_01c_6efa

    jr nc, jr_01c_6efc

    jr nc, @+$0a

    add hl, hl
    ld [$30c3], sp

jr_01c_6efa:
    dec hl
    db $10

jr_01c_6efc:
    and b
    ld b, $2b
    ld [$0ba0], sp
    daa
    ld [$05c4], sp
    dec [hl]
    ld [$0835], sp
    dec [hl]
    ld [$0832], sp
    inc [hl]
    ld [$0834], sp
    inc [hl]
    ld [$0831], sp
    ld [hl-], a
    ld [$0832], sp
    ld [hl-], a
    ld [$082b], sp
    jp Jump_000_3030


    ld [$06a0], sp
    jr nc, jr_01c_6f2e

    and e
    inc bc
    and b
    dec bc
    inc [hl]
    db $10
    and e
    inc b

jr_01c_6f2e:
    inc [hl]
    jr jr_01c_6f66

    jr z, jr_01c_6ed3

    ld b, $35
    ld [$0ba0], sp
    call nz, $3535
    ld [$0837], sp
    add hl, sp
    ld [$083b], sp

jr_01c_6f42:
    add hl, sp
    ld [$0837], sp
    dec [hl]
    ld [$30c3], sp
    inc sp
    jr jr_01c_6f81

    jr z, @-$5e

    ld b, $34
    ld [$0ba0], sp
    call nz, Call_000_3135
    ld [$0832], sp
    inc [hl]
    ld [$0835], sp
    inc [hl]
    ld [$0832], sp
    ld sp, $c308
    ld b, b

jr_01c_6f66:
    ld sp, $3218
    jr jr_01c_6f90

    db $10
    ld sp, $3218
    jr z, @-$5e

    ld b, $32
    db $10
    and b
    inc c
    jp $2640


    db $10
    daa

jr_01c_6f7b:
    db $10
    ld h, $10
    dec h
    jr nc, jr_01c_6f42

jr_01c_6f81:
    jr nz, @+$27

    db $10
    and b
    dec bc
    call nz, Call_000_3405
    ld [$0834], sp
    inc [hl]
    ld [$0830], sp

jr_01c_6f90:
    ld [hl-], a
    ld [$0832], sp
    ld [hl-], a
    ld [$082b], sp
    jr nc, jr_01c_6fa2

    jr nc, jr_01c_6fa4

    jr nc, @+$0a

    add hl, hl
    ld [$30c3], sp

jr_01c_6fa2:
    dec hl
    db $10

jr_01c_6fa4:
    and b
    ld b, $2b
    ld [$0ba0], sp
    daa
    ld [$05c4], sp
    dec [hl]
    ld [$0835], sp
    dec [hl]
    ld [$0832], sp
    inc [hl]
    ld [$0834], sp
    inc [hl]
    ld [$0831], sp
    ld [hl-], a
    ld [$0832], sp
    ld [hl-], a
    ld [$082b], sp
    jp Jump_000_3030


    ld [$06a0], sp
    jr nc, jr_01c_6fd6

    and e
    inc bc
    and b
    dec bc
    inc [hl]

jr_01c_6fd3:
    db $10
    and e
    inc b

jr_01c_6fd6:
    inc [hl]
    jr @+$37

    jr z, jr_01c_6f7b

    ld b, $35
    ld [$0ba0], sp
    call nz, $3535
    ld [$0837], sp
    add hl, sp
    ld [$083b], sp

jr_01c_6fea:
    add hl, sp
    ld [$0837], sp
    dec [hl]
    ld [$30c3], sp
    inc sp
    jr jr_01c_7029

    jr z, @-$5e

    ld b, $34
    ld [$0ba0], sp
    call nz, Call_000_3135
    ld [$0832], sp
    inc [hl]
    ld [$0835], sp
    inc [hl]
    ld [$0832], sp
    ld sp, $c308
    jr nc, @+$33

    jr @+$34

    jr jr_01c_7038

    db $10
    ld sp, $3218
    jr z, @-$5e

    ld b, $32
    db $10
    and b
    dec bc
    call nz, $252f
    db $10
    jp Jump_000_2530


    jr nz, jr_01c_704b

    jr nc, jr_01c_6fea

jr_01c_7029:
    jr nc, jr_01c_704f

    db $10
    jp Jump_000_2830


    jr nz, jr_01c_6fd3

    ld bc, $35c4
    rra
    ld [$0fa0], sp

jr_01c_7038:
    jr nc, jr_01c_7042

    ld a, [hl+]
    ld [$0828], sp
    and d
    ld bc, $0aa0

jr_01c_7042:
    call nz, Call_000_2735
    ld [$02a2], sp
    and e
    ld [bc], a
    pop bc

jr_01c_704b:
    jr nc, jr_01c_7077

    db $10
    ld a, [hl+]

jr_01c_704f:
    ld [$06a0], sp
    ld a, [hl+]
    ld [$0aa0], sp
    ld a, [hl+]
    db $10
    ld a, [hl+]
    ld [$20c1], sp
    and b
    inc c
    rra
    ld [$0828], sp
    jr z, jr_01c_706c

    jr nc, @+$0a

    and b
    ld c, $30
    ld [$0833], sp

jr_01c_706c:
    inc sp
    ld [$0830], sp
    and b
    ld b, $30
    ld [$0aa0], sp
    pop bc

jr_01c_7077:
    jr nc, @+$2a

    db $10
    jr z, jr_01c_7084

    and b
    ld b, $28
    ld [$0aa0], sp
    jr z, @+$12

jr_01c_7084:
    jr z, jr_01c_708e

    and b
    ld b, $28
    ld [$20c1], sp
    and b
    inc c

jr_01c_708e:
    ld a, [hl+]
    ld [$082a], sp
    ld [hl-], a
    ld [$0da0], sp
    ld [hl-], a
    ld [$0835], sp
    dec [hl]
    ld [$082a], sp
    rra
    ld [$0834], sp
    and b
    dec bc
    inc [hl]
    inc bc
    dec [hl]
    ld [bc], a
    and b
    ld [$0234], sp
    dec [hl]
    ld [bc], a

jr_01c_70ae:
    inc [hl]
    ld [bc], a
    dec [hl]
    ld [bc], a
    and b
    ld b, $34
    ld [bc], a
    dec [hl]
    ld bc, $0aa0
    inc [hl]
    ld [$0837], sp
    scf
    ld [$0834], sp
    and b
    dec bc
    rra
    ld [$0833], sp
    inc sp
    inc bc
    dec [hl]
    ld [bc], a
    and b
    ld [$0233], sp
    dec [hl]
    ld [bc], a
    inc sp
    ld [bc], a
    dec [hl]
    ld [bc], a
    and b
    ld b, $33
    ld [bc], a
    dec [hl]
    ld bc, $0832
    jr nc, jr_01c_70e8

    jr nc, @+$0a

    jr z, @+$0a

    pop bc
    ld a, a
    and b
    ld a, [bc]

jr_01c_70e8:
    ld [hl-], a
    jr nz, @+$32

    jr nz, jr_01c_70ae

    ccf
    and e
    dec b
    rra
    ld [$0825], sp
    add hl, hl
    ld [$0830], sp
    and b
    inc c
    ld [hl-], a
    ld [$0835], sp
    add hl, sp
    ld [$0840], sp
    and b
    dec c
    ld b, d
    ld [$083b], sp
    and b
    inc c
    scf
    ld [$0832], sp
    and b
    ld a, [bc]
    dec hl
    db $10
    or b
    nop
    rst $38
    ld [$0d01], sp

jr_01c_7118:
    nop
    db $fd
    cp $a0
    dec c
    and e
    ld [bc], a
    jp Jump_000_2730


    db $10
    call nz, Call_000_3705
    ld [$0837], sp
    scf
    ld [$0834], sp
    dec [hl]
    ld [$0835], sp
    dec [hl]
    ld [$0832], sp
    inc [hl]
    ld [$0834], sp
    inc [hl]
    ld [$0830], sp
    jp $3230


    db $10
    and b
    ld b, $32
    ld [$0da0], sp
    daa
    ld [$05c4], sp
    add hl, sp
    ld [$0839], sp
    add hl, sp
    ld [$0835], sp
    scf
    ld [$0837], sp
    scf
    ld [$0834], sp
    dec [hl]
    ld [$0835], sp
    dec [hl]
    ld [$0832], sp
    jp Jump_000_3430


    ld [$06a0], sp
    inc [hl]
    ld [$03a3], sp
    and b
    dec c
    scf
    db $10
    and e
    dec b
    jr c, @+$1a

    add hl, sp
    jr z, jr_01c_7118

    ld b, $39
    ld [$0da0], sp
    call nz, Call_000_3935
    ld [$083b], sp
    ld b, b
    ld [$0842], sp

jr_01c_7187:
    ld b, b
    ld [$083b], sp
    add hl, sp
    ld [$30c3], sp
    ld [hl], $18
    scf
    jr z, @-$5e

    ld b, $37
    ld [$0da0], sp
    call nz, Call_000_3435
    ld [$0835], sp
    scf
    ld [$0839], sp
    scf
    ld [$0835], sp
    inc [hl]
    ld [$30c3], sp
    inc [hl]
    jr jr_01c_71e3

    jr @+$2b

    db $10
    inc [hl]
    jr @+$37

    jr z, @-$5e

    ld b, $35
    db $10
    and b
    dec c
    jp Jump_000_2945


    db $10
    dec hl
    db $10
    jr nc, jr_01c_71d3

    ld [hl-], a
    jr z, jr_01c_7187

    jr nc, jr_01c_71fa

    ld [$30c3], sp
    daa
    db $10
    call nz, Call_000_3705
    ld [$0837], sp

jr_01c_71d3:
    scf
    ld [$0834], sp
    dec [hl]
    ld [$0835], sp
    dec [hl]
    ld [$0832], sp
    inc [hl]
    ld [$0834], sp

jr_01c_71e3:
    inc [hl]
    ld [$0830], sp
    jp $3230


    db $10
    and b
    ld b, $32
    ld [$0da0], sp
    daa
    ld [$05c4], sp
    add hl, sp
    ld [$0839], sp
    add hl, sp

jr_01c_71fa:
    ld [$0835], sp
    scf
    ld [$0837], sp
    scf
    ld [$0834], sp
    dec [hl]
    ld [$0835], sp
    dec [hl]
    ld [$0832], sp
    jp Jump_000_3430


    ld [$06a0], sp
    inc [hl]
    ld [$03a3], sp
    and b
    dec c
    scf
    db $10
    and e
    dec b
    jr c, @+$1a

    add hl, sp
    jr z, @-$5e

    ld b, $39
    ld [$0da0], sp
    call nz, Call_000_3935
    ld [$083b], sp
    ld b, b
    ld [$0842], sp
    ld b, b
    ld [$083b], sp
    add hl, sp
    ld [$30c3], sp
    ld [hl], $18
    scf
    jr z, @-$5e

    ld b, $37
    ld [$0da0], sp
    call nz, Call_000_3435
    ld [$0835], sp
    scf
    ld [$0839], sp
    scf
    ld [$0835], sp
    inc [hl]
    ld [$30c3], sp
    inc [hl]
    jr jr_01c_728d

    jr jr_01c_7283

    db $10
    inc [hl]
    jr @+$37

    jr z, @-$5e

    ld b, $35
    db $10
    and b
    dec c
    add hl, hl
    db $10
    dec hl
    db $10
    inc [hl]
    db $10
    call nz, Call_000_3235
    ld [$0830], sp
    dec hl
    ld [$0830], sp
    or d
    db $fc
    xor e
    nop
    jp Jump_000_3225


    jr @-$3d

    ld b, b
    ld [hl-], a
    ld [$01a2], sp

jr_01c_7283:
    and b
    rrca
    jp $a330


    dec b
    ld [hl-], a
    ld [$0833], sp

jr_01c_728d:
    dec [hl]
    ld [$0837], sp
    ld a, [hl-]
    jr jr_01c_72d4

    ld [$0ca3], sp
    jr c, jr_01c_72c9

    pop bc
    jr nc, @-$5b

    nop
    jr c, @+$12

    jp $a330


    dec b
    dec [hl]
    ld [$0837], sp
    jr c, jr_01c_72b1

    ld a, [hl-]
    ld [$1840], sp
    ld b, d
    ld [$08a3], sp

jr_01c_72b1:
    ld a, [hl-]
    jr nc, @-$5b

    nop
    pop bc
    jr nc, jr_01c_72f2

    db $10
    and e
    dec b
    call nz, Call_000_1f0a
    ld [$0840], sp
    ret nz

    cp $a0
    dec c
    ld b, b
    inc bc
    ld b, d
    ld [bc], a

jr_01c_72c9:
    and b

jr_01c_72ca:
    add hl, bc
    ld b, b
    ld [bc], a
    ld b, d
    ld [bc], a
    ld b, b
    ld [bc], a
    ld b, d
    ld [bc], a
    and b

jr_01c_72d4:
    rlca
    ld b, b
    ld [bc], a
    ld b, d
    ld bc, $0ac4
    and b

jr_01c_72dc:
    rrca
    ld b, b
    ld [$083a], sp
    ld a, [hl-]
    ld [$0837], sp
    rra
    ld [$083a], sp
    ret nz

    cp $a0
    dec c
    ld a, [hl-]
    inc bc
    ld b, b
    ld [bc], a
    and b

jr_01c_72f2:
    add hl, bc
    ld a, [hl-]
    ld [bc], a
    ld b, b
    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    ld b, b
    ld [bc], a
    and b
    rlca
    ld a, [hl-]
    ld [bc], a
    ld b, b
    ld bc, $0ac4
    and b
    dec c
    ld a, [hl-]
    ld [$0fa0], sp
    jr c, @+$0a

    jr c, jr_01c_7315

    dec [hl]
    ld [$35c4], sp
    scf
    ld [$0838], sp

jr_01c_7315:
    ld a, [hl-]
    ld [$0840], sp
    ld b, d
    ld [$0840], sp
    ld a, [hl-]
    ld [$0838], sp
    and e
    inc c
    jp Jump_000_3730


    ld h, b
    pop bc
    jr nc, jr_01c_72ca

    ld [$1037], sp
    or b
    nop
    rst $38
    ld [$0220], sp
    ld [bc], a
    db $fd
    cp $a2
    jr nz, jr_01c_72dc

    db $10
    rra
    db $10
    jr nz, @+$12

    or l
    db $fc
    ld b, $00
    rla
    db $10
    or a
    db $fc
    add hl, bc
    nop
    and d
    add hl, de
    jr nz, @+$0a

    and b
    ld b, $20
    ld [$02a0], sp
    and d
    jr nz, jr_01c_7375

    db $10
    and d
    dec h
    dec d
    db $10
    or a
    db $fc
    inc d
    nop
    jr nz, jr_01c_7370

    jr nz, jr_01c_7372

    jr nz, jr_01c_7374

    jr nz, jr_01c_7376

    add hl, de
    db $10
    add hl, de
    db $10
    add hl, de
    db $10
    add hl, de
    db $10
    ld [hl+], a
    db $10

jr_01c_7370:
    ld [hl+], a
    db $10

jr_01c_7372:
    ld [hl+], a
    db $10

jr_01c_7374:
    ld [hl+], a

jr_01c_7375:
    db $10

jr_01c_7376:
    rla
    db $10
    rla
    db $10
    rla
    db $10
    rla

jr_01c_737d:
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    rla
    db $10
    and d
    ld b, b
    jr nc, jr_01c_739c

    dec hl

jr_01c_738d:
    db $10
    and b
    ld b, $2b
    db $10
    and b
    ld [bc], a
    and d

jr_01c_7395:
    jr nz, jr_01c_73b7

    db $10
    or l
    db $fc
    inc sp
    nop

jr_01c_739c:
    rla
    db $10
    or a
    db $fc
    ld [hl], $00
    and d
    add hl, de
    jr nz, @+$0a

    and b
    ld b, $20
    ld [$02a0], sp
    and d
    jr nz, jr_01c_73cf

    db $10
    and d
    dec h
    dec d
    db $10
    or a
    db $fc
    ld b, c

jr_01c_73b7:
    nop
    jr nz, jr_01c_73ca

    jr nz, jr_01c_73cc

    jr nz, jr_01c_73ce

    jr nz, jr_01c_73d0

    add hl, de
    db $10
    add hl, de
    db $10
    add hl, de
    db $10
    add hl, de
    db $10
    ld [hl+], a
    db $10

jr_01c_73ca:
    ld [hl+], a
    db $10

jr_01c_73cc:
    ld [hl+], a
    db $10

jr_01c_73ce:
    ld [hl+], a

jr_01c_73cf:
    db $10

jr_01c_73d0:
    rla
    db $10
    rla
    db $10
    rla
    db $10
    rla
    db $10
    and d
    rst $38
    rla
    jr c, jr_01c_737d

    inc b
    rla
    ld [$02a0], sp
    jr nz, jr_01c_741c

    and b
    inc b
    jr nz, @+$0a

    and b
    ld [bc], a
    dec h
    jr jr_01c_738d

    inc b
    dec h
    ld [$02a0], sp
    ld a, [de]
    jr jr_01c_7395

    inc b
    ld a, [de]
    ld [$70a2], sp
    and b
    ld [bc], a
    and c
    ld [bc], a
    and e
    cp $a2
    add l
    inc hl
    ld [$30a2], sp
    scf
    db $10
    scf
    ld [$85a2], sp
    inc hl
    ld [$30a2], sp
    scf
    db $10
    scf
    ld [$85a2], sp
    dec d
    ld [$15a2], sp
    jr nc, @+$0a

jr_01c_741c:
    jr nc, jr_01c_7426

    inc sp
    ld [$0833], sp
    ld b, b
    ld [$0840], sp

jr_01c_7426:
    jr c, jr_01c_7430

    and d
    add l
    ld a, [de]
    ld [$30a2], sp
    ld [hl-], a
    db $10

jr_01c_7430:
    ld [hl-], a
    ld [$85a2], sp
    ld a, [de]
    ld [$30a2], sp
    ld [hl-], a
    db $10
    ld [hl-], a
    ld [$85a2], sp
    rla
    ld [$15a2], sp
    scf
    ld [$0837], sp
    ld a, [hl-]
    ld [$083a], sp
    ld b, d
    ld [$0842], sp
    scf
    ld [$85a2], sp
    jr nz, jr_01c_745c

    and d
    dec d
    scf
    ld [$0337], sp
    jr c, jr_01c_745e

jr_01c_745c:
    scf
    ld [bc], a

jr_01c_745e:
    jr c, jr_01c_7462

    scf
    ld [bc], a

jr_01c_7462:
    jr c, jr_01c_7466

    scf
    ld [bc], a

jr_01c_7466:
    jr c, jr_01c_7469

    and d

jr_01c_7469:
    add l
    jr nz, @+$0a

    and d
    dec d
    ld b, b
    ld [$0840], sp
    scf
    ld [$85a2], sp
    dec h
    ld [$15a2], sp
    ld b, b
    ld [$04a0], sp
    ld b, b
    inc bc
    ld b, d
    ld [bc], a
    ld b, b
    ld [bc], a
    ld b, d
    ld [bc], a
    ld b, b
    ld [bc], a
    ld b, d
    ld [bc], a
    ld b, b
    ld [bc], a
    ld b, d
    ld bc, $02a0
    and d
    add l
    ld a, [de]
    ld [$15a2], sp
    dec [hl]
    ld [$0835], sp
    ld [hl-], a
    ld [$d0a2], sp
    inc hl
    jr nz, jr_01c_74b9

    jr nz, @-$5c

    jr z, jr_01c_74c7

    ld [$0832], sp
    dec [hl]
    ld [$0839], sp
    dec [hl]
    ld [$0839], sp
    ld b, l
    ld [$0849], sp
    ld c, e
    ld [$0845], sp
    dec sp

jr_01c_74b9:
    ld [$0835], sp
    daa
    db $10
    or b
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop

jr_01c_74c7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
