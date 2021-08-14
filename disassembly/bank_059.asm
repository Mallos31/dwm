; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $059", ROMX[$4000], BANK[$59]

    ld e, c
    inc de
    ld b, b
    rst $28
    ld b, b
    adc a
    ld b, l
    add b
    ld b, [hl]
    inc h
    ld c, b
    ret nc

    ld c, b
    db $e4
    ld d, d
    db $eb
    ld d, d
    ld a, [c]
    ld d, d
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call Call_000_12c7
    xor a
    ld hl, $c8da
    ld bc, $0008
    call Call_000_12c7
    xor a
    ld hl, $ffc3
    ld bc, $0012
    call Call_000_12c7
    xor a
    ld hl, $dd62
    ld bc, $0006
    call Call_000_12c7
    xor a
    ld hl, $c500
    ld bc, $0240
    call Call_000_12c7
    call Call_000_1264
    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    xor a
    ld [$dd60], a
    xor a
    ld [$c8ec], a
    ld hl, $9700
    ld de, $0901
    call Call_000_098f
    call Call_059_42c0
    ld hl, $8800
    ld de, $0601
    call Call_000_098f
    xor a
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    call Call_059_52e4
    ld hl, $9700
    ld de, $0901
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld de, $2e00
    ld hl, $8d00
    call Call_000_14cf
    ld hl, $9800
    ld a, l
    ld [$d9f8], a
    ld a, h
    ld [$d9f9], a
    ld hl, $c500
    ld de, $4511
    call Call_059_5cd2
    ld hl, $c500
    ld de, $4546
    call Call_059_5cd2
    call Call_059_42ec
    call Call_059_432d
    ld a, $fc
    call Call_000_1688
    ld a, $07
    ldh [$b5], a
    ld a, $ff
    ldh [$b6], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$b7], a
    call Call_000_122f
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    xor a
    ld [$c892], a
    ld a, $03
    ld [$c8a1], a
    call Call_000_125d
    ld a, $01
    jp Jump_000_11cb


    ld a, [$c850]
    or a
    ret nz

    ld a, [$c843]
    xor $ff
    ld b, a
    ld a, [$c842]
    ld [$c76c], a
    or a
    jr z, jr_059_4104

    and b

jr_059_4104:
    ld [$c76d], a
    ld a, [$c0d8]
    rst $00
    rla
    ld b, c
    ld e, l
    ld b, c
    ld h, l
    ld b, c
    ld l, [hl]
    ld b, c
    ld a, [bc]
    ld b, d
    ld h, b
    ld b, d
    call Call_059_4276
    ld a, [$c76d]
    and $01
    jr nz, jr_059_413c

    ld a, [$c76d]
    and $02
    jr nz, jr_059_4152

    ld a, [$c76d]
    and $c0
    jr nz, jr_059_4130

    ret


jr_059_4130:
    ld a, [$c8da]
    xor $01
    ld [$c8da], a
    call Call_059_432d
    ret


jr_059_413c:
    ld a, [$c8da]
    set 7, a
    ld [$c8da], a
    call Call_059_432d
    ld a, [$c8da]
    and $01
    add $03
    ld [$c0d8], a
    ret


jr_059_4152:
    ld a, $04
    call Call_000_1688
    ld a, $05
    ld [$c0d8], a
    ret


    ld hl, $c0d8
    inc [hl]
    call Call_059_42c0
    ret


    ld a, $04
    ld [$c0d8], a
    call Call_059_42ec
    ret


    call Call_059_4276
    ld a, [$c842]
    and $40
    jr nz, jr_059_419c

    ld a, [$c842]
    and $80
    jr nz, jr_059_41a7

    ld a, [$c842]
    and $20
    jr nz, jr_059_41b2

    ld a, [$c842]
    and $10
    jr nz, jr_059_41bd

    ld a, [$c76d]
    and $01
    jr nz, jr_059_41c8

    ld a, [$c76d]
    and $02
    jr nz, jr_059_41fa

    ret


jr_059_419c:
    ld a, $02
    ld [$dd64], a
    ld a, $00
    ldh [$ca], a
    jr jr_059_41db

jr_059_41a7:
    ld a, $00
    ld [$dd64], a
    ld a, $00
    ldh [$ca], a
    jr jr_059_41db

jr_059_41b2:
    ld a, $01
    ld [$dd64], a
    ld a, $20
    ldh [$ca], a
    jr jr_059_41db

jr_059_41bd:
    ld a, $01
    ld [$dd64], a
    ld a, $00
    ldh [$ca], a
    jr jr_059_41db

jr_059_41c8:
    ld a, [$c0e1]
    ld b, a
    ld a, [$dd64]
    sub b
    ld [$dd64], a
    ld a, [$c0e1]
    xor $03
    ld [$c0e1], a

jr_059_41db:
    ld a, [$c0e1]
    ld b, a
    ld a, [$dd64]
    add b
    ld [$dd64], a
    xor a
    ld [$dd65], a
    ld hl, $dd63
    ld a, l
    ld [$d7b4], a
    ld a, h
    ld [$d7b5], a
    ld hl, $0205
    rst $10
    ret


jr_059_41fa:
    ld a, [$c8da]
    res 7, a
    ld [$c8da], a
    call Call_059_432d
    xor a
    ld [$c0d8], a
    ret


    ld a, [$c76d]
    and $01
    jr nz, jr_059_424a

    call Call_059_4276
    ld a, [$c76d]
    and $02
    jr nz, jr_059_4250

    ld a, [$c842]
    and $20
    jr nz, jr_059_422a

    ld a, [$c842]
    and $10
    jr nz, jr_059_423a

    ret


jr_059_422a:
    ld a, [$c8dc]
    or a
    jr nz, jr_059_4232

    ld a, $d7

jr_059_4232:
    dec a
    ld [$c8dc], a
    call Call_059_42ec
    ret


jr_059_423a:
    ld a, [$c8dc]
    inc a
    cp $d7
    jr c, jr_059_4243

    xor a

jr_059_4243:
    ld [$c8dc], a
    call Call_059_42ec
    ret


jr_059_424a:
    ld a, $01
    ld [$c0d8], a
    ret


jr_059_4250:
    ld a, [$c8da]
    res 7, a
    ld [$c8da], a
    call Call_059_432d
    xor a
    ld [$c0d8], a
    ret


    ld a, $00
    ld [$c88a], a
    xor a
    ld [$c88b], a
    xor a
    ld [$c88c], a
    xor a
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]
    ret


Call_059_4276:
    ld hl, $ffc3
    ld a, $50
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $48
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, [$c0e0]
    add $10
    ld [hl+], a
    inc hl
    ld a, $00
    ld [hl], a
    ld hl, $dd63
    ld a, l
    ld [$d7b4], a
    ld a, h
    ld [$d7b5], a
    ld hl, $0205
    rst $10
    ldh a, [$c8]
    cp $ff
    ret z

    ld hl, $0402
    rst $10
    ld hl, $dd62
    ld a, l
    ld [$d7b4], a
    ld a, h
    ld [$d7b5], a
    ld hl, $0200
    rst $10
    ld a, [$dd62]
    or a
    ret nz

    xor a
    ld [$dd65], a
    ret


Call_059_42c0:
    ld a, [$c8dc]
    ld l, a
    ld [$c0e0], a
    ld h, $00
    add hl, hl
    ld a, l
    add $63
    ld l, a
    ld a, h
    adc $43
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld h, $80
    ld l, $00
    call Call_000_1577
    ld a, [$c8dc]
    ld [$c823], a
    ld a, $05
    ld [$c822], a
    ld hl, $4102
    rst $10
    ret


Call_059_42ec:
    ld a, [$c0e0]
    ld l, a
    ld h, $00
    call $5ba7
    ld hl, $c521
    ld a, [$c0e8]
    add $f0
    ld [hl+], a
    ld a, [$c0e9]
    add $f0
    ld [hl+], a
    ld a, [$c0ea]
    add $f0
    ld [hl+], a
    ld a, [$c8dc]
    ld l, a
    ld h, $00
    call $5ba7
    ld hl, $c708
    ld a, [$c0e8]
    add $f0
    ld [hl+], a
    ld a, [$c0e9]
    add $f0
    ld [hl+], a
    ld a, [$c0ea]
    add $f0
    ld [hl], a
    ld hl, $5005
    rst $10
    ret


Call_059_432d:
    ld hl, $c500
    ld de, $457f
    call Call_059_5cd2
    ld a, [$c8da]
    ld hl, $458b
    and $01
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld a, [$c8da]
    bit 7, a
    jr nz, jr_059_435b

    ld a, $e8
    jr jr_059_435d

jr_059_435b:
    ld a, $e9

jr_059_435d:
    ld [hl], a
    ld hl, $5005
    rst $10
    ret


    ld bc, $022f
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

    jr c, jr_059_438a

    jr c, @+$05

jr_059_438a:
    jr c, jr_059_4390

    jr c, @+$07

    jr c, jr_059_4396

jr_059_4390:
    jr c, @+$09

    jr c, jr_059_439c

    jr c, @+$0b

jr_059_4396:
    jr c, jr_059_43a2

    jr c, @+$0d

    jr c, jr_059_43a8

jr_059_439c:
    jr c, @+$0f

    jr c, jr_059_43ae

    jr c, @+$11

jr_059_43a2:
    jr c, jr_059_43b4

    jr c, @+$13

    jr c, jr_059_43ba

jr_059_43a8:
    jr c, @+$15

    jr c, jr_059_43c0

    jr c, @+$17

jr_059_43ae:
    jr c, jr_059_43c6

    jr c, @+$19

    jr c, jr_059_43cc

jr_059_43b4:
    jr c, @+$1b

    jr c, jr_059_43d2

    jr c, @+$1d

jr_059_43ba:
    jr c, jr_059_43d8

    jr c, @+$1f

    jr c, jr_059_43de

jr_059_43c0:
    jr c, @+$21

    jr c, jr_059_43e4

    jr c, @+$23

jr_059_43c6:
    jr c, jr_059_43ea

    jr c, @+$25

    jr c, jr_059_43f0

jr_059_43cc:
    jr c, @+$27

    jr c, jr_059_43f6

    jr c, @+$29

jr_059_43d2:
    jr c, jr_059_43fc

    jr c, @+$2b

    jr c, jr_059_4402

jr_059_43d8:
    jr c, @+$2d

    jr c, jr_059_4408

    jr c, @+$2f

jr_059_43de:
    jr c, jr_059_440e

    jr c, @+$31

    jr c, jr_059_4414

jr_059_43e4:
    jr c, @+$33

    jr c, jr_059_441a

    jr c, jr_059_441d

jr_059_43ea:
    jr c, @+$36

    jr c, jr_059_4423

    jr c, jr_059_4426

jr_059_43f0:
    jr c, jr_059_4429

    jr c, jr_059_442c

    jr c, jr_059_442f

jr_059_43f6:
    jr c, jr_059_4432

    jr c, jr_059_4435

    jr c, jr_059_4438

jr_059_43fc:
    jr c, jr_059_443b

    jr c, jr_059_443e

    jr c, jr_059_4441

jr_059_4402:
    jr c, @+$42

    jr c, jr_059_4447

    jr c, jr_059_444a

jr_059_4408:
    jr c, jr_059_444d

    jr c, @+$46

    jr c, jr_059_4453

jr_059_440e:
    jr c, @+$48

    jr c, jr_059_4459

    jr c, jr_059_4414

jr_059_4414:
    add hl, sp
    ld bc, $0239
    add hl, sp
    inc bc

jr_059_441a:
    add hl, sp
    inc b
    add hl, sp

jr_059_441d:
    dec b
    add hl, sp
    ld b, $39
    rlca
    add hl, sp

jr_059_4423:
    ld [$0939], sp

jr_059_4426:
    add hl, sp
    ld a, [bc]
    add hl, sp

jr_059_4429:
    dec bc
    add hl, sp
    inc c

jr_059_442c:
    add hl, sp
    dec c
    add hl, sp

jr_059_442f:
    ld c, $39
    rrca

jr_059_4432:
    add hl, sp
    db $10
    add hl, sp

jr_059_4435:
    ld de, $1239

jr_059_4438:
    add hl, sp
    inc de
    add hl, sp

jr_059_443b:
    inc d
    add hl, sp
    dec d

jr_059_443e:
    add hl, sp
    ld d, $39

jr_059_4441:
    rla
    add hl, sp
    jr jr_059_447e

    add hl, de
    add hl, sp

jr_059_4447:
    ld a, [de]
    add hl, sp
    dec de

jr_059_444a:
    add hl, sp
    inc e
    add hl, sp

jr_059_444d:
    dec e
    add hl, sp
    ld e, $39
    rra
    add hl, sp

jr_059_4453:
    jr nz, jr_059_448e

    ld hl, $2239
    add hl, sp

jr_059_4459:
    inc hl
    add hl, sp
    inc h
    add hl, sp
    dec h
    add hl, sp
    ld h, $39
    daa
    add hl, sp
    jr z, jr_059_449e

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
    jr nc, jr_059_44ae

    ld sp, $3239
    add hl, sp
    inc sp
    add hl, sp
    inc [hl]
    add hl, sp
    dec [hl]

jr_059_447e:
    add hl, sp
    ld [hl], $39
    scf
    add hl, sp
    jr c, jr_059_44be

    add hl, sp
    add hl, sp
    ld a, [hl-]
    add hl, sp
    dec sp
    add hl, sp
    inc a
    add hl, sp
    dec a

jr_059_448e:
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

jr_059_449e:
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

jr_059_44ae:
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

jr_059_44be:
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
    jr jr_059_450f

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
    jr nz, jr_059_451f

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
    jr z, jr_059_452f

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
    jr nc, jr_059_453f

    ld sp, $323a
    ld a, [hl-]
    inc sp
    ld a, [hl-]
    inc [hl]
    ld a, [hl-]
    dec [hl]
    ld a, [hl-]

jr_059_450f:
    ld [hl], $3a
    nop
    nop
    ld a, [$efef]
    rst $28
    ei
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28

jr_059_451f:
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e0], a
    rst $38
    cp $70
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h

jr_059_452f:
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    rst $38
    ret c

    db $fc
    xor $ee
    xor $fd
    db $fc
    xor $ee
    xor $ee

jr_059_453f:
    xor $ee
    xor $ee
    xor $fd
    reti


    and b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add b
    add c
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ld a, [$efef]
    rst $28
    ei
    ret c

    cp $e0
    add d
    add e
    add h
    add l
    rst $38
    cp $e0
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    db $fc
    xor $ee
    xor $fd
    reti


    and c
    ld bc, $d8ef
    ldh [$d8], a
    ldh [$d8], a
    ldh [$d8], a
    xor $d9
    pop bc
    ld bc, $0201
    xor a
    ld hl, $c827
    ld bc, $0012
    call Call_000_12c7
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call Call_000_12c7
    ld hl, $99c1
    ld a, l
    ld [$c83e], a
    ld a, h
    ld [$c83f], a
    call Call_000_1264
    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    xor a
    ld [$dd60], a
    xor a
    ld [$c8ec], a
    call Call_059_5d0f
    ld de, $2e00
    ld hl, $8d00
    call Call_000_14cf
    ld hl, $9700
    ld de, $0401
    call Call_000_098f
    ld a, $00
    ld [$c823], a
    ld a, $01
    ld [$c822], a
    call Call_059_52f2
    ld hl, $96c0
    ld de, $0401
    call Call_000_098f
    ld a, $00
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    ld hl, $4c02
    rst $10
    ld hl, $97c0
    ld de, $0401
    call Call_000_098f
    ld a, $01
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    ld hl, $4c02
    rst $10
    ld hl, $8800
    ld de, $0401
    call Call_000_098f
    ld a, $05
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    ld hl, $4c02
    rst $10
    ld hl, $8b00
    ld de, $1202
    call Call_000_098f
    call Call_059_5d27
    ld de, $5e2f
    ld hl, $c500
    call Call_059_5cd2
    ld a, $fc
    call Call_000_1688
    ld hl, $9800
    ld a, l
    ld [$d9f8], a
    ld a, h
    ld [$d9f9], a
    ld hl, $5005
    rst $10
    ld a, $07
    ldh [$b5], a
    ld a, $ff
    ldh [$b6], a
    ld a, $d8
    ldh [$bb], a
    ld a, $00
    ldh [$b7], a
    call Call_000_122f
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    xor a
    ld [$c892], a
    ld a, $03
    ld [$c8a1], a
    call Call_000_125d
    ld a, $01
    jp Jump_000_11cb


    ld a, [$c0d9]
    rst $00
    dec b
    ld b, a
    dec sp
    ld b, a
    rrca
    ld b, a
    ld c, l
    ld b, a
    dec h
    ld b, a
    call c, $8546
    ld b, a
    ei
    ld b, [hl]
    sub [hl]
    ld b, a
    ei
    ld b, [hl]
    push hl
    ld b, [hl]
    dec h
    ld b, a
    call c, $a746
    ld b, a
    ei
    ld b, [hl]
    push hl
    ld b, [hl]
    dec h
    ld b, a
    dec h
    ld e, h
    dec h
    ld b, a
    call c, $b846
    ld b, a
    ei
    ld b, [hl]
    push hl
    ld b, [hl]
    dec h
    ld b, a
    db $fc
    ld e, e
    rrca
    ld b, a
    ld c, [hl]
    ld e, h
    dec h
    ld b, a
    call c, $c946
    ld b, a
    ei
    ld b, [hl]
    push hl
    ld b, [hl]
    dec h
    ld b, a
    ld [hl], a
    ld e, h
    dec h
    ld b, a
    call c, $da46
    ld b, a
    ei
    ld b, [hl]
    db $eb
    ld b, a
    ei
    ld b, [hl]
    push hl
    ld b, [hl]
    dec h
    ld b, a
    db $fc
    ld b, a
    ld b, $48
    call Call_059_5cf7
    ret nz

    ld hl, $c0d9
    inc [hl]
    ret


    call Call_059_5d03
    ret nz

    ld a, $01
    ld [$c823], a
    ld a, $01
    ld [$c822], a
    call Call_059_52f2
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c850]
    or a
    ret nz

    ld hl, $c0d9
    inc [hl]
    ret


    call Call_059_5ca0
    ld hl, $c0da
    inc [hl]
    ld a, [$c0da]
    cp $0f
    ret nz

    ld hl, $c0d9
    inc [hl]
    xor a
    ld [$c0da], a
    ret


    call Call_059_5ca0
    ld hl, $c0da
    inc [hl]
    ld a, [$c0da]
    cp $28
    ret nz

    ld hl, $c0d9
    inc [hl]
    xor a
    ld [$c0da], a
    ret


    ld a, $02
    ld [$c823], a
    ld a, $01
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $01
    ld [$c823], a
    ld a, $01
    ld [$c822], a
    call Call_059_52f2
    call Call_059_5d27
    ld de, $5e9a
    ld hl, $c500
    call Call_059_5cd2
    ld hl, $c621
    ld [hl], $e8
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    xor a
    ld [$c0db], a
    ld hl, $5005
    rst $10
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, $00
    ld [$c823], a
    xor a
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, $01
    ld [$c823], a
    xor a
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, $02
    ld [$c823], a
    xor a
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, $03
    ld [$c823], a
    xor a
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, $04
    ld [$c823], a
    xor a
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, $05
    ld [$c823], a
    xor a
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, $06
    ld [$c823], a
    xor a
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, $04
    call Call_000_1688
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c850]
    or a
    ret nz

    ld a, $00
    ld [$c88a], a
    ld a, $00
    ld [$c88b], a
    ld a, $00
    ld [$c88c], a
    ld a, $00
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]
    ret


    xor a
    ld hl, $c827
    ld bc, $0012
    call Call_000_12c7
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call Call_000_12c7
    xor a
    ld hl, $d9f4
    ld bc, $0008
    call Call_000_12c7
    xor a
    ld hl, $c8da
    ld bc, $0008
    call Call_000_12c7
    xor a
    ld hl, $c8e2
    ld bc, $0008
    call Call_000_12c7
    ld hl, $99c1
    ld a, l
    ld [$c83e], a
    ld a, h
    ld [$c83f], a
    ld hl, $9800
    ld a, l
    ld [$d9f8], a
    ld a, h
    ld [$d9f9], a
    ld a, l
    ld [$d9ea], a
    ld a, h
    ld [$d9eb], a
    call Call_000_1264
    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    xor a
    ld [$dd60], a
    xor a
    ld [$c8ec], a
    call Call_059_5d0f
    call Call_059_513c
    ld de, $2e00
    ld hl, $8d00
    call Call_000_14cf
    call Call_059_4ec6
    call Call_059_5087
    ld a, $fc
    call Call_000_1688
    ld a, $07
    ldh [$b5], a
    ld a, $ff
    ldh [$b6], a
    ld a, $00
    ldh [$b7], a
    ld a, $00
    ldh [$bb], a
    call Call_000_122f
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    xor a
    ld [$c892], a
    ld a, $03
    ld [$c8a1], a
    call Call_000_125d
    ld a, $01
    jp Jump_000_11cb


    ld a, [$c850]
    or a
    ret nz

    ld a, [$c843]
    xor $ff
    ld b, a
    ld a, [$c842]
    ld [$c76c], a
    or a
    jr z, jr_059_48e5

    and b

jr_059_48e5:
    ld [$c76d], a
    ld a, [$c0d8]
    rst $00
    cp $48
    cp [hl]
    ld c, c
    ld l, d
    ld c, d
    ld l, c
    ld c, e
    rst $08
    ld c, e
    jp nc, Jump_059_734c

    ld c, l
    ld b, b
    ld c, [hl]
    ld a, a
    ld c, [hl]
    ld a, [$c8df]
    or a
    jr z, jr_059_4912

    ld hl, $c8df
    inc [hl]
    ld a, [$c8df]
    cp $08
    ret c

    xor a
    ld [$c8df], a

jr_059_4912:
    call Call_059_5279
    ld a, [$c76d]
    and $01
    jr nz, jr_059_4933

    ld a, [$c76c]
    and $c0
    jr nz, jr_059_495a

    ld a, [$c76c]
    and $30
    jr nz, jr_059_497b

    ld a, [$c76d]
    and $02
    jp nz, Jump_059_499c

    ret


jr_059_4933:
    xor a
    ld [$c8e0], a
    ld a, $01
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8da]
    set 7, a
    ld [$c8da], a
    ld a, $02
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ld a, $01
    ld [$c0d8], a
    ret


jr_059_495a:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8da]
    xor $01
    ld [$c8da], a
    ld a, $02
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


jr_059_497b:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8da]
    xor $02
    ld [$c8da], a
    ld a, $02
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


Jump_059_499c:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, $02
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    xor a
    ld [$c0d9], a
    ld a, $04
    ld [$c0d8], a
    ret


    ld a, [$c0d9]
    rst $00
    ret z

    ld c, c
    db $dd
    ld c, c
    ld a, [c]
    ld c, c
    xor a
    ld [$d9f6], a
    ld a, $01
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c8da]
    and $03
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$c8da]
    res 7, a
    cp $01
    jr z, jr_059_4a1e

    cp $03
    jr z, jr_059_4a59

    ld [$c8da], a
    xor a
    ld [$c0d8], a
    ld [$c0d9], a
    xor a
    ld [$d9f6], a
    xor a
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


jr_059_4a1e:
    ld a, [$ca8d]
    cp $02
    jr nc, jr_059_4a3f

    ld a, $02
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    xor a
    ld [$d9f6], a
    ld a, $02
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


jr_059_4a3f:
    ld a, $05
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    xor a
    ld [$d9f6], a
    ld a, $04
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


jr_059_4a59:
    ld [$c8da], a
    xor a
    ld [$c8e1], a
    ld a, $04
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    ret


    ld a, [$c8df]
    or a
    jr z, jr_059_4a7e

    ld hl, $c8df
    inc [hl]
    ld a, [$c8df]
    cp $08
    ret c

    xor a
    ld [$c8df], a

jr_059_4a7e:
    call Call_059_5279
    ld a, [$c76d]
    and $01
    jr nz, jr_059_4aa0

    ld a, [$c76c]
    and $40
    jr nz, jr_059_4ac7

    ld a, [$c76c]
    and $80
    jp nz, Jump_059_4aee

    ld a, [$c76d]
    and $02
    jp nz, Jump_059_4b15

    ret


jr_059_4aa0:
    xor a
    ld [$c8e0], a
    ld a, $01
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8db]
    set 7, a
    ld [$c8db], a
    ld a, $02
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ld a, $03
    ld [$c0d8], a
    ret


jr_059_4ac7:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8db]
    or a
    jr z, jr_059_4adc

    dec a
    jr jr_059_4ade

jr_059_4adc:
    ld a, $03

jr_059_4ade:
    ld [$c8db], a
    ld a, $02
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


Jump_059_4aee:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8db]
    cp $03
    jr z, jr_059_4b04

    inc a
    jr jr_059_4b05

jr_059_4b04:
    xor a

jr_059_4b05:
    ld [$c8db], a
    ld a, $02
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


Jump_059_4b15:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$ca8d]
    cp $02
    jr c, jr_059_4b4a

    ld a, [$c8e3]
    res 7, a
    ld [$c8e3], a
    xor a
    ld [$d9f6], a
    ld a, $04
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ld a, $05
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    ret


jr_059_4b4a:
    ld a, [$c8da]
    res 7, a
    ld [$c8da], a
    xor a
    ld [$c0d8], a
    ld [$c0d9], a
    ld [$c8db], a
    ld [$d9f6], a
    ld [$d9f5], a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


    ld a, [$c0d9]
    rst $00
    ret z

    ld c, c
    ld [hl], e
    ld c, e
    adc d
    ld c, e
    ld a, [$c8db]
    and $03
    add $04
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$c8db]
    and $03
    cp $03
    jr z, jr_059_4bb6

    res 7, a
    ld [$c8db], a
    ld a, $02
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    ld [$d9f6], a
    ld a, $02
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


jr_059_4bb6:
    ld a, $06
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    ld [$d9f6], a
    ld a, $05
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


    ld a, [$c0d9]
    rst $00
    db $db
    ld c, e
    ld bc, $a34c
    ld c, h
    or h
    ld c, h
    xor a
    ld [$c8e2], a
    xor a
    ld [$d9f6], a
    ld a, $03
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ld a, $08
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c8df]
    or a
    jr z, jr_059_4c15

    ld hl, $c8df
    inc [hl]
    ld a, [$c8df]
    cp $08
    ret c

    xor a
    ld [$c8df], a

jr_059_4c15:
    call Call_059_5279
    ld a, [$c76d]
    and $01
    jr nz, jr_059_4c2e

    ld a, [$c76c]
    and $c0
    jr nz, jr_059_4c59

    ld a, [$c76d]
    and $02
    jr nz, jr_059_4c7f

    ret


jr_059_4c2e:
    xor a
    ld [$c8e0], a
    ld a, $01
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8e2]
    set 7, a
    ld [$c8e2], a
    ld a, $01
    ld [$d9f6], a
    ld a, $03
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ld hl, $c0d9
    inc [hl]
    ret


jr_059_4c59:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8e2]
    xor $01
    ld [$c8e2], a
    ld a, $01
    ld [$d9f6], a
    ld a, $03
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


jr_059_4c7f:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    xor a
    ld [$d9f6], a
    xor a
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    xor a
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    ret


    ld a, [$c8e2]
    and $01
    jr nz, jr_059_4c7f

    ld a, $04
    call Call_000_1688
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c850]
    or a
    ret nz

    ld a, $00
    ld [$c88a], a
    ld a, $00
    ld [$c88b], a
    ld a, $00
    ld [$c88c], a
    ld a, $00
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]
    ret


    ld a, [$c8df]
    or a
    jr z, jr_059_4ce6

    ld hl, $c8df
    inc [hl]
    ld a, [$c8df]
    cp $08
    ret c

    xor a
    ld [$c8df], a

jr_059_4ce6:
    call Call_059_5279
    ld a, [$c76d]
    and $01
    jr nz, jr_059_4cff

    ld a, [$c76c]
    and $c0
    jr nz, jr_059_4d26

    ld a, [$c76d]
    and $02
    jr nz, jr_059_4d47

    ret


jr_059_4cff:
    xor a
    ld [$c8e0], a
    ld a, $01
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8e3]
    set 7, a
    ld [$c8e3], a
    ld a, $01
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ld a, $07
    ld [$c0d8], a
    ret


jr_059_4d26:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8e3]
    xor $01
    ld [$c8e3], a
    ld a, $01
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


jr_059_4d47:
    ld a, [$c8da]
    res 7, a
    ld [$c8da], a
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    xor a
    ld [$d9f6], a
    xor a
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    xor a
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    ret


    ld a, [$c8df]
    or a
    jr z, jr_059_4d87

    ld hl, $c8df
    inc [hl]
    ld a, [$c8df]
    cp $08
    ret c

    xor a
    ld [$c8df], a

jr_059_4d87:
    call Call_059_5279
    ld a, [$c76d]
    and $01
    jr nz, jr_059_4da7

    ld a, [$c76c]
    and $40
    jr nz, jr_059_4dce

    ld a, [$c76c]
    and $80
    jr nz, jr_059_4df5

    ld a, [$c76d]
    and $02
    jr nz, jr_059_4e1a

    ret


jr_059_4da7:
    xor a
    ld [$c8e0], a
    ld a, $01
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8e4]
    set 7, a
    ld [$c8e4], a
    ld a, $01
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ld a, $08
    ld [$c0d8], a
    ret


jr_059_4dce:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8e4]
    or a
    jr z, jr_059_4de3

    dec a
    jr jr_059_4de5

jr_059_4de3:
    ld a, $02

jr_059_4de5:
    ld [$c8e4], a
    ld a, $01
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


jr_059_4df5:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8e4]
    inc a
    cp $03
    jr c, jr_059_4e0a

    xor a

jr_059_4e0a:
    ld [$c8e4], a
    ld a, $01
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


jr_059_4e1a:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    xor a
    ld [$d9f6], a
    ld a, $02
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ld a, $02
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    ret


    ld a, [$c0d9]
    rst $00
    ret z

    ld c, c
    ld c, d
    ld c, [hl]
    ld h, c
    ld c, [hl]
    ld a, [$c8e3]
    and $03
    add $09
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $02
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    ld [$d9f6], a
    ld a, $02
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


    ld a, [$c0d9]
    rst $00
    ret z

    ld c, c
    adc c
    ld c, [hl]
    and b
    ld c, [hl]
    ld a, [$c8e4]
    and $03
    add $0b
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$c8e4]
    res 7, a
    ld [$c8e4], a
    ld a, $06
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    ld [$d9f6], a
    ld a, $05
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


Call_059_4ec6:
    ld a, [$d9f4]
    or a
    ret nz

    ld a, [$d9f5]
    rst $00
    db $db
    ld c, [hl]
    jr nz, @+$51

    ld [hl-], a
    ld c, a
    ld [hl], a
    ld c, a
    ret


    ld c, a
    inc c
    ld d, b
    ld a, [$d9f6]
    rst $00
    push hl
    ld c, [hl]
    db $eb
    ld c, [hl]
    db $eb
    ld c, [hl]
    call Call_059_5d4f
    call Call_059_5060
    ld de, $608f
    ld hl, $c500
    call Call_059_5cd2
    ld a, [$c8da]
    and $0f
    ld hl, $52d0
    call Call_059_5bf1
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld a, l
    ld [$c8dd], a
    ld a, h
    ld [$c8de], a
    ld a, [$c8da]
    bit 7, a
    jr z, jr_059_4f1b

    ld [hl], $e9
    jp Jump_059_504d


jr_059_4f1b:
    ld [hl], $e8
    jp Jump_059_504d


    call Call_059_5d4f
    call Call_059_5060
    ld de, $5dc4
    ld hl, $c500
    call Call_059_5cd2
    jp Jump_059_504d


    ld a, [$d9f6]
    rst $00
    inc a
    ld c, a
    ld b, d
    ld c, a
    ld b, d
    ld c, a
    call Call_059_5d4f
    call Call_059_5060
    ld de, $611d
    ld hl, $c500
    call Call_059_5cd2
    ld a, [$c8db]
    and $0f
    ld hl, $52d8
    call Call_059_5bf1
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld a, l
    ld [$c8dd], a
    ld a, h
    ld [$c8de], a
    ld a, [$c8db]
    bit 7, a
    jr z, jr_059_4f72

    ld [hl], $e9
    jp Jump_059_504d


jr_059_4f72:
    ld [hl], $e8
    jp Jump_059_504d


    ld a, [$d9f6]
    rst $00
    ld a, a
    ld c, a
    adc [hl]
    ld c, a
    call Call_059_5d4f
    call Call_059_5060
    ld de, $5dc4
    ld hl, $c500
    call Call_059_5cd2
    ld de, $5f1c
    ld hl, $c500
    call Call_059_5cd2
    ld a, [$c8e2]
    and $0f
    ld hl, $52e0
    call Call_059_5bf1
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld a, l
    ld [$c8dd], a
    ld a, h
    ld [$c8de], a
    ld a, [$c8e2]
    bit 7, a
    jr z, jr_059_4fbd

    ld [hl], $e9
    jr jr_059_4fbf

jr_059_4fbd:
    ld [hl], $e8

jr_059_4fbf:
    ld a, [$d9f6]
    or a
    jp nz, Jump_059_5056

    jp Jump_059_504d


    ld a, [$d9f6]
    rst $00
    pop de
    ld c, a
    rst $10
    ld c, a
    call Call_059_5d4f
    call Call_059_5060
    ld de, $60d7
    ld hl, $c500
    call Call_059_5cd2
    ld a, [$c8e3]
    and $0f
    add $02
    ld hl, $52d8
    call Call_059_5bf1
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld a, l
    ld [$c8dd], a
    ld a, h
    ld [$c8de], a
    ld a, [$c8e3]
    bit 7, a
    jr z, jr_059_5008

    ld [hl], $e9
    jr jr_059_504d

jr_059_5008:
    ld [hl], $e8
    jr jr_059_504d

    ld a, [$d9f6]
    rst $00
    inc d
    ld d, b
    ld a, [de]
    ld d, b
    call Call_059_5d4f
    call Call_059_5060
    ld de, $5f41
    ld hl, $c500
    call Call_059_5cd2
    ld a, [$c8e4]
    and $0f
    add $01
    ld hl, $52d8
    call Call_059_5bf1
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld a, l
    ld [$c8dd], a
    ld a, h
    ld [$c8de], a
    ld a, [$c8e4]
    bit 7, a
    jr z, jr_059_504b

    ld [hl], $e9
    jr jr_059_504d

jr_059_504b:
    ld [hl], $e8

Jump_059_504d:
jr_059_504d:
    ld hl, $8b00
    ld de, $1202
    call Call_000_098f

Jump_059_5056:
    ld hl, $5005
    rst $10
    ld a, $01
    ld [$d9f4], a
    ret


Call_059_5060:
    ld a, [$ca8d]
    or a
    jr z, jr_059_507d

    ld hl, $52c2
    ld a, [$ca8d]
    call Call_059_5bf1
    ld d, h
    ld e, l
    ld hl, $c500
    call Call_059_5cd2
    call Call_059_51a8
    call Call_059_5240

jr_059_507d:
    ld de, $5d98
    ld hl, $c500
    call Call_059_5cd2
    ret


Call_059_5087:
    ld hl, $96c0
    ld de, $0401
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $00
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    ld hl, $4c02
    rst $10
    ld hl, $97c0
    ld de, $0401
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $01
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    ld hl, $4c02
    rst $10
    ld hl, $8850
    ld de, $1401
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $03
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    ld hl, $4c02
    rst $10
    ld hl, $8990
    ld de, $0501
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $04
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    ld hl, $4c02
    rst $10
    ld hl, $8800
    ld de, $0501
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $05
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    ld hl, $4c02
    rst $10
    ret


Call_059_513c:
    ld a, [$ca8d]
    or a
    ret z

    xor a
    ld [$c0eb], a
    ld hl, $9700
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0401
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a

jr_059_515b:
    ld a, [$c0eb]
    ld hl, $ca8e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call Call_059_521e
    ld hl, $c0eb
    inc [hl]
    ld a, [$c827]
    ld l, a
    ld a, [$c828]
    ld h, a
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, [$c0eb]
    ld d, a
    ld a, [$ca8d]
    cp d
    jr nz, jr_059_515b

    ld hl, $8b00
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $1202
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_059_51a8:
    xor a
    ld [$c0eb], a

jr_059_51ac:
    ld a, [$c0eb]
    ld hl, $ca8e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call Call_059_51cb
    ld hl, $c0eb
    inc [hl]
    ld a, [$c0eb]
    ld d, a
    ld a, [$ca8d]
    cp d
    jr nz, jr_059_51ac

    ret


Call_059_51cb:
    ld c, $95
    ld b, $00
    call Call_059_5d5b
    push bc
    ld hl, $cb11
    call Call_059_5bec
    call $5ba7
    ld a, [$c0eb]
    ld hl, $52b0
    call Call_059_5bf1
    call Call_059_51ff
    pop bc
    ld hl, $cb15
    call Call_059_5bec
    call $5ba7
    ld a, [$c0eb]
    ld hl, $52b6
    call Call_059_5bf1
    call Call_059_51ff
    ret


Call_059_51ff:
    ld a, [$c0e8]
    ld e, a
    or a
    jr z, jr_059_5209

    add $f0
    ld [hl], a

jr_059_5209:
    inc hl
    ld a, [$c0e9]
    or e
    jr z, jr_059_5216

    ld a, [$c0e9]
    add $f0
    ld [hl], a

jr_059_5216:
    inc hl
    ld a, [$c0ea]
    add $f0
    ld [hl], a
    ret


Call_059_521e:
    ld c, $95
    ld b, $00
    call Call_059_5d5b
    ld hl, $cac2
    add hl, bc
    ld d, h
    ld e, l
    ld hl, $c180
    call Call_000_0c80
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    ret


Call_059_5240:
    xor a
    ld [$c0eb], a
    call Call_059_5248
    ret


Call_059_5248:
    ld hl, $c180
    ld a, $f0
    ld [hl], a
    ld a, [$c0eb]
    ld hl, $52ca
    call Call_059_5bf1
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0301
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
    ret


Call_059_5279:
    ld a, [$c8e1]
    or a
    ret nz

    ld hl, $c8e0
    inc [hl]
    ld a, [$c8e0]
    cp $0a
    jr z, jr_059_528e

    cp $14
    jr z, jr_059_529d

    ret


jr_059_528e:
    ld a, [$c8dd]
    ld l, a
    ld a, [$c8de]
    ld h, a
    ld [hl], $e0
    ld hl, $5005
    rst $10
    ret


jr_059_529d:
    ld a, [$c8dd]
    ld l, a
    ld a, [$c8de]
    ld h, a
    ld [hl], $e8
    ld hl, $5005
    rst $10
    xor a
    ld [$c8e0], a
    ret


    ld h, d
    push bc
    ld l, b
    push bc
    ld l, [hl]
    push bc
    add d
    push bc
    adc b
    push bc
    adc [hl]
    push bc
    nop
    sub a
    ld b, b
    sub a
    add b
    sub a
    ld d, a
    ld h, b
    ld d, a
    ld h, b
    ei
    ld e, a
    ld a, e
    ld e, a
    and b
    adc l
    or b
    adc l
    ret nz

    adc l
    pop bc
    ld bc, $0201
    rst $00
    ld bc, $0207
    ld b, c
    ld bc, $0181
    pop bc
    ld bc, $0201
    cpl
    ld bc, $016f

Call_059_52e4:
    ld de, $52f9
    call Call_000_05b6
    ret


    ld de, $52f9
    call Call_000_05f6
    ret


Call_059_52f2:
    call Call_059_52e4
    call Call_000_0609
    ret


    ld bc, $0f53
    ld d, e
    dec d
    ld d, e
    ld sp, $3353
    ld d, e
    ld d, h
    ld d, e
    ld l, c
    ld d, h
    dec e
    ld d, l
    ld d, d
    ld d, [hl]
    di
    ld d, [hl]
    ld b, d
    ld d, a
    add e
    ld d, a
    adc b
    ld d, a
    adc d
    ld d, a
    and [hl]
    ld d, a
    ei
    ld d, a
    or l
    ld e, b
    ld b, [hl]
    ld e, c
    sbc c
    ld e, c
    adc $59
    nop
    ld e, d
    dec [hl]
    ld e, d
    ld l, a
    ld e, d
    ld a, b
    ld e, d
    or [hl]
    ld e, d
    or $5a
    dec d
    ld e, e
    ld e, h
    ld e, e
    sbc b
    ld e, e
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
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $65
    dec h
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld h, d
    ld [hl], $40
    ld c, a
    ld b, d
    ld b, d
    ld c, e
    ld h, l
    ld e, a
    rst $30
    ldh a, [$9f]
    and e
    ld [hl], $42
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld h, d
    ld h, l
    add hl, hl
    inc l
    ld a, [hl+]
    dec hl
    scf
    ld h, l
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld d, b
    ld d, c
    ld a, $4f
    ld d, c
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
    ld a, [$f0fb]
    rst $28
    xor $3e
    ld d, d
    ld d, c
    ld c, h
    ld c, d
    ld a, $51
    ld b, [hl]
    ld b, b
    ld a, $49
    ld c, c
    ld d, [hl]
    ld e, a
    rst $28
    xor $fa
    ei
    ldh a, [$ef]
    xor $9f
    and e
    ld [hl], $42
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld h, d
    ld h, l
    inc sp
    cpl
    inc h
    ld sp, $6265
    ld d, c
    ld c, h
    rst $28
    xor $50
    ld b, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, l
    ld c, c
    ld a, $4b
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    ld a, [$f0fb]
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ccf
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    rst $28
    xor $42
    ld a, $40
    ld b, l
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld a, [$f0fb]
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
    rst $28
    xor $fa
    ei
    ldh a, [$ef]
    xor $9f
    and e
    ld [hl], $42
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld h, d
    ld h, l
    inc l
    scf
    jr z, jr_059_542a

    ld h, l
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld b, l
    ld b, d
    ld c, c
    ld c, l
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [$f0fb]
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
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $46
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d

jr_059_542a:
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld e, a
    ld a, [$f0fb]
    rst $28
    xor $9f
    and e
    inc h
    ld c, e
    ld b, c
    ld h, d
    ld d, b
    ld b, d
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld h, d
    ld h, l
    dec [hl]
    jr c, jr_059_5477

    ld h, l
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld b, e
    ld c, c
    ld b, d
    ld b, d
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld a, [$f0fb]
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ccf
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld e, a
    rst $28
    xor $f7
    ldh a, [$9f]
    and e
    ld a, [hl-]
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld h, l
    add hl, hl
    inc l
    ld a, [hl+]
    dec hl
    scf
    ld h, l

jr_059_5477:
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $50
    ld b, d
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld b, d
    ld b, c
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$f0fb]
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
    ld e, [hl]
    rst $28
    xor $fa
    ei
    ldh a, [$ef]
    xor $9f
    and e
    ld b, b
    ld b, l
    ld c, h
    ld c, h
    ld d, b
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $4c
    ld d, h
    ld c, e
    ld h, d
    ld c, d
    ld c, h
    ld d, e
    ld b, d
    ld d, b
    ld e, a
    ld a, [$f0fb]
    rst $28
    xor $9f
    and e
    inc l
    ld b, e
    ld h, d
    ld d, [hl]
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
    xor $45
    ld a, $53
    ld b, d
    ld l, [hl]
    ld c, d
    ld h, d
    ld c, l
    ld b, d
    ld c, a
    ld b, e
    ld c, h
    ld c, a
    ld c, d
    ld a, [$f0fb]
    rst $28
    xor $40
    ld b, d
    ld c, a
    ld d, c
    ld a, $46
    ld c, e
    ld h, d
    ld c, d
    ld c, h
    ld d, e
    ld b, d
    ld d, b
    rst $28
    xor $40
    ld c, h
    ld c, e
    ld d, b
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, a
    ld e, [hl]
    ld a, [$f0fb]
    rst $28
    xor $9f
    and e
    ld d, c
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $65
    ld c, l
    ld b, d
    ld c, a
    ld d, b
    ld c, h
    ld c, e
    ld a, $49
    ld b, [hl]
    ld d, c
    ld d, [hl]
    ld h, l
    ld h, e
    rst $30
    ldh a, [$9f]
    and e
    ld a, [hl-]
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld h, l
    inc sp
    cpl
    inc h
    ld sp, $6265
    ld b, [hl]
    ld d, b
    rst $28
    xor $50
    ld b, d
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld b, d
    ld b, c
    ld e, [hl]
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, b
    ld b, d
    ld d, c
    ld a, [$f0fb]
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld c, e
    ld b, d
    rst $28
    xor $fa
    ei
    ldh a, [$ef]
    xor $9f
    and e
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ccf
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld e, a
    ld e, a
    rst $28
    xor $fa
    ei
    ldh a, [$ef]
    xor $9f
    and e
    ld h, l
    ld h, $2b
    inc h
    dec [hl]
    ld a, [hl+]
    jr z, jr_059_55da

    ld h, l
    ld h, d
    ld c, d
    ld a, $48
    ld b, d
    ld d, b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, d
    ld h, d
    ld a, $44
    ld c, a
    ld b, d
    ld d, b
    ld d, b
    ld b, [hl]
    ld d, e
    ld b, d
    ld e, [hl]
    ld a, [$f0fb]
    rst $28
    xor $9f
    and e
    ld h, l
    jr nc, jr_059_55c5

    dec sp
    jr z, jr_059_55c3

    ld h, l
    ld h, d
    ld c, d
    ld a, $48
    ld b, d
    ld d, b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, d
    ld h, d
    ld d, b
    ld d, d
    ld c, l
    ld c, l
    ld c, h
    ld c, a
    ld d, c
    ld a, [$f0fb]
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, a
    ld h, d
    ld b, e
    ld c, a
    ld b, [hl]
    ld b, d
    ld c, e
    ld b, c
    ld d, b

jr_059_55c3:
    ld e, a
    ld e, a

jr_059_55c5:
    ld e, a
    rst $28
    xor $fa
    ei
    ldh a, [$ef]
    xor $9f
    and e
    ld h, l
    ld h, $24
    jr c, jr_059_560b

    inc l
    ld [hl-], a
    jr c, jr_059_560e

    ld h, l
    ld h, d

jr_059_55da:
    ld c, d
    ld a, $48
    ld b, d
    ld d, b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, d
    ld h, d
    ld b, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld a, [$f0fb]
    rst $28
    xor $40
    ld a, $52
    ld d, c
    ld b, [hl]
    ld c, h
    ld d, d
    ld d, b
    ld c, c
    ld d, [hl]
    ld e, a
    rst $28
    xor $fa
    ei
    ldh a, [$ef]
    xor $9f
    and e
    dec h
    ld d, [hl]
    ld h, d
    ld d, b
    ld b, d
    ld c, c
    ld b, d

jr_059_560b:
    ld b, b
    ld d, c
    ld b, [hl]

jr_059_560e:
    ld c, e
    ld b, h
    rst $28
    xor $65
    ld h, $32
    jr nc, jr_059_5647

    inc h
    ld sp, $6527
    ld e, [hl]
    ld a, [$f0fb]
    rst $28
    xor $9f
    and e
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, d
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld c, d
    ld a, $4b
    ld b, c
    ld d, b
    ld a, [$f0fb]
    rst $28
    xor $41
    ld b, [hl]
    ld c, a
    ld b, d

jr_059_5647:
    ld b, b
    ld d, c
    ld c, c
    ld d, [hl]
    ld e, a
    rst $28
    xor $ef
    xor $f7
    ldh a, [$9f]
    and e
    dec h
    ld d, [hl]
    ld h, d
    ld d, b
    ld b, d
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $65
    inc l
    scf
    jr z, jr_059_5697

    ld h, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4b
    ld a, [$f0fb]
    rst $28
    xor $45
    ld b, d
    ld c, c
    ld c, l
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
    ld b, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld e, a
    ld e, a
    ld e, a
    ld a, [$f0fb]
    rst $28
    xor $9f

jr_059_5697:
    and e
    ld e, a
    ld e, a
    ld e, a
    ccf
    ld d, [hl]
    ld h, d
    ld d, d
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $46
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld e, [hl]
    ld a, [$f0fb]
    rst $28
    xor $9f
    and e
    ld c, h
    ld c, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ld d, c
    ld a, $4a
    ld b, d
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    ld l, b
    ld a, [$f0fb]
    rst $28
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    rst $28
    xor $fa
    ei
    ldh a, [$ef]
    xor $9f
    and e
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld c, d
    ld b, d
    ld a, $51
    ld h, e
    rst $28
    xor $ef
    xor $f7
    ldh a, [$9f]
    and e
    ld [hl], $42
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld h, d
    ld h, l
    dec [hl]
    jr c, jr_059_5731

    ld h, l
    rst $28
    xor $54
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld a, [$f0fb]
    rst $28
    xor $43
    ld c, c
    ld b, d
    ld b, d
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    rst $28
    xor $fa
    ei
    ldh a, [$ef]
    xor $9f
    and e
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, d
    ld c, e
    ld b, d

jr_059_5731:
    ld c, d
    ld d, [hl]
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
    rst $28
    xor $f7
    ldh a, [$9f]
    and e
    scf
    ld b, l
    ld a, $51
    ld l, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    rst $28
    xor $65
    ccf
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld h, l
    ld e, a
    ld a, [$f0fb]
    rst $28
    xor $9f
    and e
    cpl
    ld b, d
    ld a, $4f
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, a
    ld b, d
    ld d, b
    ld d, c
    rst $28
    xor $4c
    ld c, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld c, h
    ld d, h
    ld c, e
    ld e, a
    rst $30
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, h
    ldh a, [$ed]
    ldh a, [$ed]
    ld a, [hl+]
    ld c, a
    ld a, $4b
    ld b, c
    ld c, l
    ld a, $62
    ld [hl], $3e
    ld c, b
    ld a, $4a
    ld c, h
    ld d, c
    ld c, h
    pop af
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, e
    db $ec
    ldh a, [$36]
    ld b, d
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld h, d
    ld h, l
    add hl, hl
    inc l
    ld a, [hl+]
    dec hl
    scf
    ld h, l
    ld h, d
    or [hl]
    rst $28
    xor $51
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
    ld a, $40
    ld d, c
    ld a, [$f0fb]
    rst $28
    xor $3f
    ld a, $50
    ld b, d
    ld b, c
    ld h, d
    ld c, h
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $4d
    ld c, a
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, h
    ld d, d
    ld d, b
    ld h, d
    ld c, l
    ld c, c
    ld a, $4b
    ld a, [$f0fb]
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld b, l
    ld c, h
    ld d, b
    ld b, d
    ld e, a
    rst $28
    xor $f7
    ldh a, [$36]
    ld b, d
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld h, d
    ld h, l
    inc sp
    cpl
    inc h
    ld sp, $6265
    ld a, $4b
    ld b, c
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ld d, b
    ld b, d
    ld d, c
    ld a, [$f0fb]
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld c, e
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $3f
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld a, $51
    ld b, d
    ld b, h
    ld d, [hl]
    ld e, a
    ld a, [$f0fb]
    rst $28
    xor $37
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
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    rst $28
    xor $40
    ld a, $4f
    ld c, a
    ld d, [hl]
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$f0fb]
    rst $28
    xor $50
    ld d, c
    ld c, a
    ld a, $51
    ld b, d
    ld b, h
    ld d, [hl]
    ld h, d
    ld d, d
    ld c, e
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    rst $28
    xor $51
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
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld a, [$f0fb]
    rst $28
    xor $49
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    rst $28
    xor $40
    ld c, h
    ld c, d
    ld c, d
    ld a, $4b
    ld b, c
    ld d, b
    ld e, a
    rst $30
    ldh a, [$36]
    ld b, d
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld h, l
    inc l
    scf
    jr z, jr_059_58f4

    ld h, l
    rst $28
    xor $3e
    ld c, c
    ld c, c
    ld c, h
    ld d, h
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld a, [$f0fb]
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld d, [hl]
    rst $28
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d

jr_059_58f4:
    ld c, a
    ld d, b
    ld h, d
    ld b, c
    ld b, [hl]
    ld c, a
    ld b, d
    ld b, b
    ld d, c
    ld c, c
    ld d, [hl]
    ld e, a
    ld a, [$f0fb]
    rst $28
    xor $24
    ld c, c
    ld d, b
    ld c, h
    ld e, [hl]
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld a, $49
    ld c, c
    ld c, h
    ld d, h
    ld d, b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld b, l
    ld b, d
    ld a, $49
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, h
    ld b, e
    ld a, [$f0fb]
    rst $28
    xor $42
    ld b, [hl]
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld h, d
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    ld c, h
    ld c, a
    rst $28
    xor $43
    ld c, a
    ld b, [hl]
    ld b, d
    ld c, e
    ld b, c
    ld d, b
    ld e, a
    rst $30
    ldh a, [$36]
    ld b, d
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld h, d
    ld h, l
    dec [hl]
    jr c, jr_059_5982

    ld h, l
    rst $28
    xor $54
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld c, a
    ld b, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ld a, [$f0fb]
    rst $28
    xor $54
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, e
    ld c, c
    ld b, d
    ld b, d
    ld e, a
    rst $28
    xor $fa
    ei
    ldh a, [$ef]
    xor $25
    ld d, d
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c

jr_059_5982:
    ld h, d
    ld b, c
    ld c, h
    ld b, d
    ld d, b
    ld c, e
    ld h, a
    rst $28
    xor $3e
    ld c, c
    ld d, h
    ld a, $56
    ld d, b
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld c, b
    ld e, a
    rst $30
    ldh a, [$36]
    ld b, d
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld h, d
    ld h, l
    ld h, $2b
    inc h
    dec [hl]
    ld a, [hl+]
    jr z, @+$65

    ld h, l
    rst $28
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld a, $4b
    ld h, d
    ld a, $44
    ld b, h
    ld c, a
    ld b, d
    ld d, b
    ld d, b
    ld b, [hl]
    ld d, e
    ld b, d
    ld a, [$f0fb]
    rst $28
    xor $50
    ld d, c
    ld c, a
    ld a, $51
    ld b, d
    ld b, h
    ld d, [hl]
    ld e, a
    rst $28
    xor $f7
    ldh a, [$36]
    ld b, d
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld h, d
    ld h, l
    jr nc, jr_059_5a04

    dec sp
    jr z, jr_059_5a02

    ld h, l
    rst $28
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld a, $62
    ld d, b
    ld d, d
    ld c, l
    ld c, l
    ld c, h
    ld c, a
    ld d, c
    ld b, [hl]
    ld d, e
    ld b, d
    ld a, [$f0fb]
    rst $28
    xor $50
    ld d, c
    ld c, a
    ld a, $51
    ld b, d
    ld b, h
    ld d, [hl]
    ld e, a
    rst $28
    xor $f7
    ldh a, [$36]
    ld b, d

jr_059_5a02:
    ld c, c
    ld b, d

jr_059_5a04:
    ld b, b
    ld d, c
    ld h, d
    ld h, l
    ld h, $24
    jr c, @+$39

    inc l
    ld [hl-], a
    jr c, jr_059_5a46

    ld h, l
    rst $28
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld a, $62
    ld d, b
    ld d, c
    ld c, a
    ld a, $51
    ld b, d
    ld b, h
    ld d, [hl]
    ld h, d
    ld d, c
    ld c, h
    ld a, [$f0fb]
    rst $28
    xor $50
    ld a, $53
    ld b, d
    ld h, d
    dec hl
    inc sp
    ld e, a
    rst $28
    xor $f7
    ldh a, [$36]
    ld b, d
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    rst $28
    xor $65
    ld h, $32
    jr nc, jr_059_5a76

jr_059_5a46:
    inc h
    ld sp, $6527
    ld h, d
    ld a, $49
    ld c, c
    ld c, h
    ld d, h
    ld d, b
    ld a, [$f0fb]
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, [hl]
    ld d, b
    ld d, b
    ld d, d
    ld b, d
    rst $28
    xor $40
    ld c, h
    ld c, d
    ld c, d
    ld a, $4b
    ld b, c
    ld d, b
    ld e, a
    rst $30
    ldh a, [$ed]
    jr z, jr_059_5abd

    ld c, h
    ld d, d
    ld b, h
    ld b, l

jr_059_5a76:
    ld h, h
    ldh a, [$36]
    ld b, d
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld h, d
    ld h, l
    inc h
    cpl
    cpl
    ld h, l
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $44
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld a, $62
    ld d, b
    ld d, c
    ld c, a
    ld a, $51
    ld b, d
    ld b, h
    ld d, [hl]
    ld h, d
    ld d, c
    ld c, h
    ld a, [$f0fb]
    rst $28
    xor $3e
    ld c, c
    ld c, c
    ld h, d
    ld d, [hl]
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
    ld e, a
    rst $28
    xor $f7
    ldh a, [$36]
    ld b, d
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld h, d

jr_059_5abd:
    ld h, l
    jr z, jr_059_5ae4

    ld h, $2b
    ld h, l
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld a, $62
    ld d, b
    ld d, c
    ld c, a
    ld a, $51
    ld b, d
    ld b, h
    ld d, [hl]
    ld a, [$f0fb]
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, [hl]
    ld d, e

jr_059_5ae4:
    ld b, [hl]
    ld b, c
    ld d, d
    ld a, $49
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
    rst $30
    ldh a, [$65]
    inc h
    scf
    ld l, $65
    ld h, d
    ld c, d
    ld b, d
    ld a, $4b
    ld d, b
    ld h, d
    ld a, $ef
    xor $4b
    ld c, h
    ld c, a
    ld c, d
    ld a, $49
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld e, a
    rst $30
    ldh a, [$3c]
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ld d, b
    ld b, d
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$f0fb]
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
    ccf
    ld d, [hl]
    rst $28
    xor $50
    ld b, d
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld h, l
    ld [hl], $2e
    inc l
    cpl
    ld h, l
    ld e, a
    rst $30
    ldh a, [$3c]
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld c, d
    ld a, $4b
    ld b, c
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, e
    ld b, d
    ld d, l
    ld d, c
    ld h, d
    ld b, c
    ld b, d
    ld b, e
    ld b, d
    ld c, e
    ld d, b
    ld b, d
    ld a, [$f0fb]
    rst $28
    xor $3f
    ld d, [hl]
    ld h, d
    ld d, b
    ld b, d
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $65
    daa
    jr z, jr_059_5bbd

    ld h, l
    ld e, a
    rst $30
    ldh a, [$ed]
    daa
    ld b, [hl]
    ld c, a
    ld b, d
    ld b, b
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, d
    ld sp, $5f4c
    ldh a, [$af]
    ld [$c0e8], a
    ld [$c0e9], a
    ld [$c0ea], a

jr_059_5bb1:
    ld a, [$c0e8]
    inc a
    ld [$c0e8], a
    ld bc, $ff9c
    add hl, bc
    ld a, h

jr_059_5bbd:
    rlc a
    jr nc, jr_059_5bb1

    ld bc, $0064
    add hl, bc
    ld a, [$c0e8]
    dec a
    ld [$c0e8], a

jr_059_5bcc:
    ld a, [$c0e9]
    inc a
    ld [$c0e9], a
    ld bc, $fff6
    add hl, bc
    ld a, h
    rlc a
    jr nc, jr_059_5bcc

    ld bc, $000a
    add hl, bc
    ld a, [$c0e9]
    dec a
    ld [$c0e9], a
    ld a, l
    ld [$c0ea], a
    ret


Call_059_5bec:
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_059_5bf1:
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


    ld hl, $c621
    ld [hl], $e8
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld hl, $c661
    ld [hl], $e0
    ld hl, $c627
    ld [hl], $e0
    ld hl, $c667
    ld [hl], $e0
    ld hl, $5005
    rst $10
    ld hl, $c0d9
    inc [hl]
    xor a
    ld [$c0db], a
    ret


    ld hl, $c621
    ld [hl], $e0
    ld hl, $c661
    ld [hl], $e8
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld hl, $c627
    ld [hl], $e0
    ld hl, $c667
    ld [hl], $e0
    ld hl, $5005
    rst $10
    ld hl, $c0d9
    inc [hl]
    xor a
    ld [$c0db], a
    ret


    ld hl, $c621
    ld [hl], $e0
    ld hl, $c661
    ld [hl], $e0
    ld hl, $c627
    ld [hl], $e8
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld hl, $c667
    ld [hl], $e0
    ld hl, $5005
    rst $10
    ld hl, $c0d9
    inc [hl]
    xor a
    ld [$c0db], a
    ret


    ld hl, $c621
    ld [hl], $e0
    ld hl, $c661
    ld [hl], $e0
    ld hl, $c627
    ld [hl], $e0
    ld hl, $c667
    ld [hl], $e8
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld hl, $5005
    rst $10
    ld hl, $c0d9
    inc [hl]
    xor a
    ld [$c0db], a
    ret


Call_059_5ca0:
    ld hl, $c0db
    inc [hl]
    ld a, [$c0db]
    cp $0a
    jr z, jr_059_5cb0

    cp $14
    jr z, jr_059_5cbf

    ret


jr_059_5cb0:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld [hl], $e0
    ld hl, $5005
    rst $10
    ret


jr_059_5cbf:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld [hl], $e8
    ld hl, $5005
    rst $10
    xor a
    ld [$c0db], a
    ret


Call_059_5cd2:
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    inc de
    ld b, a
    add hl, bc

jr_059_5cd9:
    push hl

jr_059_5cda:
    ld a, [de]
    inc de
    cp $d8
    jr z, jr_059_5cea

    cp $d9
    jr z, jr_059_5cf5

    call Call_000_1aad
    inc hl
    jr jr_059_5cda

jr_059_5cea:
    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_059_5cd9

jr_059_5cf5:
    pop hl
    ret


Call_059_5cf7:
    ld hl, $ffbb
    inc [hl]
    call Call_000_122f
    ldh a, [$bb]
    cp $00
    ret


Call_059_5d03:
    ld hl, $ffbb
    dec [hl]
    call Call_000_122f
    ldh a, [$bb]
    cp $d8
    ret


Call_059_5d0f:
    ld a, $aa
    ld l, a
    ld h, $00
    add hl, hl
    ld a, l
    add $9f
    ld l, a
    ld a, h
    adc $2b
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $9000
    call Call_000_1577
    ret


Call_059_5d27:
    call Call_059_5d4f
    ld de, $5ee2
    ld hl, $9b60
    call Call_059_5cd2
    ld de, $5f11
    ld hl, $c500
    call Call_059_5cd2
    ld de, $5d6c
    ld hl, $c500
    call Call_059_5cd2
    ld de, $5dc4
    ld hl, $c500
    call Call_059_5cd2
    ret


Call_059_5d4f:
    ld a, $e0
    ld hl, $c500
    ld bc, $0240
    call Call_000_12c7
    ret


Call_059_5d5b:
    or a
    jr z, jr_059_5d68

    ld hl, $0000

jr_059_5d61:
    add hl, bc
    dec a
    jr nz, jr_059_5d61

    ld b, h
    ld c, l
    ret


jr_059_5d68:
    ld bc, $0000
    ret


    daa
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ret c

    ld b, $07
    ld [$0a09], sp
    dec bc
    ret c

    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $12d8
    inc de
    inc d
    dec d
    ld d, $17
    ret c

    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ret c

    ld e, $1f
    jr nz, jr_059_5db6

    ld [hl+], a
    inc hl
    reti


    rst $00
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ret c

    ld b, $07
    ld [$0a09], sp
    dec bc
    ret c

    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $12d8
    inc de
    inc d
    dec d
    ld d, $17
    ret c

jr_059_5db6:
    jr jr_059_5dd1

    ld a, [de]
    dec de
    inc e
    dec e
    ret c

    ld e, $1f
    jr nz, jr_059_5de2

    ld [hl+], a
    inc hl
    reti


    and b
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

jr_059_5dd1:
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

jr_059_5de2:
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


    nop
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


    nop
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
    ei
    ret c

    cp $e0
    ld l, h
    ld l, h
    add e
    ld a, h
    ldh [$e0], a
    ld l, l
    ld a, h
    ld l, [hl]
    ldh [rIE], a
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
    ld a, [hl]
    ld a, l
    ld a, a
    add d
    ldh [$e0], a
    add c
    add b
    ld l, a
    ldh [rIE], a
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
    ei
    ret c

    cp $70
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ldh [$e0], a
    rst $38
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e1
    ldh [$f1], a
    ld sp, hl
    ldh [$e0], a
    rst $38
    ret c

    cp $e2
    ldh [$e0], a
    ld a, [c]
    ldh [$e0], a
    rst $38
    reti


    nop
    nop
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
    call nc, $d5e0
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    push de
    push de
    sub $ff
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    ld h, b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add a
    ld a, h
    add b
    sbc h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sbc e
    ld a, l
    sbc l
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc d
    ld a, h
    sbc h
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

    cp $70
    ld [hl], c
    ld [hl], d
    ld [hl], e
    jp c, Jump_059_74e0

    ld [hl], l
    db $76
    ld [hl], a
    db $db
    ldh [$78], a
    ld a, c
    ld a, d
    ld a, e
    call c, $ffe0
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e1
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e1], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e1], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e2
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e2], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e2], a
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
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $70
    ld [hl], c
    ld [hl], d
    ld [hl], e
    jp c, Jump_059_74e0

    ld [hl], l
    db $76
    ld [hl], a
    db $db
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e1
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e1], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e2
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e2], a
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

    cp $70
    ld [hl], c
    ld [hl], d
    ld [hl], e
    jp c, $ffe0

    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e1
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e2
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


    and b
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
    ei
    ret c

    cp $e0
    add l
    add [hl]
    add a
    adc b
    adc c
    ldh [$86], a
    adc c
    adc d
    adc e
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
    ld a, h
    add c
    add b
    ld a, a
    ldh [$e0], a
    ld a, l
    ld a, [hl]
    ld a, a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    and b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sbc d
    add d
    sbc e
    add d
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sub d
    sub e
    sub h
    add h
    sbc h
    rst $38
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
    ei
    ret c

    cp $6c
    ld l, l
    ld l, [hl]
    ld l, a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    jr nz, @+$03

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
    sub [hl]
    adc b
    sub c
    adc l
    add a
    adc d
    ldh [$e0], a
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
    adc e
    add [hl]
    sub h
    adc d
    sub l
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
    sub [hl]
    sub c
    adc [hl]
    adc c
    add [hl]
    sub b
    adc [hl]
    adc h
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
    sub [hl]
    sub b
    adc e
    adc e
    sub c
    adc a
    sub l
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    jr nz, @+$03

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
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
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
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
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
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
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
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
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


    ld h, b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add l
    add [hl]
    add a
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
    ld a, [hl]
    add h
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc b
    add a
    adc c
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    jr nz, @+$03

    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add l
    add [hl]
    add a
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
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    jr nz, @+$03

    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add [hl]
    adc b
    add a
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
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    ld h, b
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
    ei
    ret c

    cp $e0
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
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
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
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
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
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
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    call nc, $d5e0
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    push de
    push de
    sub $ff
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    ld c, b
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
    ld [hl], $37
    jr c, jr_059_63a7

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $ff
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
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
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_059_63a7:
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
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
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
    sbc [hl]
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
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
    add d
    add e
    add h
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
    adc h
    adc l
    adc [hl]
    adc a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub b
    sub c
    sub d
    sub e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub h
    sub l
    sub [hl]
    sub a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sbc b
    sbc c
    sbc d
    sbc e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    dec c
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add l
    add [hl]
    add a
    adc b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc c
    adc d
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    jr nz, @+$03

    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add d
    add e
    add h
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
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    ld h, b
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
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $00
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $d8ff
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

    cp $12
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_059_6536

    ld [hl+], a
    inc hl
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

    cp $24
    dec h
    ld h, $27
    jr z, jr_059_655e

    ld a, [hl+]

jr_059_6536:
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_059_656e

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
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
    xor $ee
    db $fd
    reti


    ret nz

    nop
    ld a, [$efef]
    rst $28

jr_059_655e:
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $9c
    sub $d5
    ldh [$e2], a
    db $e3
    ldh [rIE], a
    ret c

jr_059_656e:
    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    push hl
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld c, $01
    ld a, [$efef]
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    and b
    and c
    and d
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    and e
    and h
    and l
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
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
    ei
    ret c

    cp $e0
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    ld c, b
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
    dec l
    ld l, $2f
    jr nc, jr_059_6615

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld c, c
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
    ld [hl], $37
    jr c, jr_059_6638

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $4a
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

jr_059_6615:
    cp $e0
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, e
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
    ld bc, $effa
    rst $28
    rst $28
    rst $28

jr_059_6638:
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    and [hl]
    and a
    xor b
    xor c
    xor d
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    adc c
    adc d
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ret nz

    nop
    ld a, [$efef]
    rst $28
    rst $28
    ei
    ret c

    cp $6c
    ld l, l
    ld l, [hl]
    ld l, a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    ld h, b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add b
    adc c
    add d
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add h
    add d
    add [hl]
    add c
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add e
    adc d
    add l
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    jr nz, @+$03

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
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
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
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
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
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
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
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_059_734c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_059_74e0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
