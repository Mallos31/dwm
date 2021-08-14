; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05a", ROMX[$4000], BANK[$5a]

    ld e, d

Call_05a_4001:
    ld b, c
    ld b, b
    add sp, $41
    ld l, [hl]
    ld b, h
    add e
    ld b, a
    pop de
    ld c, c
    sub a
    ld c, h
    ld a, d
    ld c, a
    xor h
    ld d, b
    sbc c
    ld d, d
    ld e, a
    ld d, l
    ld d, c
    ld d, [hl]
    ld d, l
    ld e, b
    ld h, e
    ld e, d
    or b
    ld e, h
    rst $30
    ld e, [hl]
    ld l, e
    ld h, b
    ld l, l
    ld h, d
    xor d
    ld h, h
    adc l
    ld h, a
    push de
    ld l, b
    jp nz, Jump_05a_5369

    ld l, d
    push hl
    ld l, d
    and l
    ld l, e
    and [hl]
    ld l, h
    and h
    ld l, [hl]
    jp z, $a06f

    ld [hl], d
    ld e, e
    ld [hl], h
    ld e, $77
    ld h, b
    ld a, b
    ld c, e
    ld a, e
    nop
    ld [$000b], sp
    ld bc, $4701
    ld b, $0f
    add hl, bc
    ld e, $13
    inc a
    inc de
    inc a
    ld hl, $685e
    scf
    nop
    ret nz

    ret nz

jr_05a_4057:
    ldh a, [$30]
    ld sp, hl
    ret c

    inc l
    ld l, h
    sub [hl]
    db $e4
    ld a, [de]
    add $39
    sub e
    ld l, h
    nop
    nop
    ld bc, $0200
    ld bc, $0300
    nop
    ld b, $00
    ld c, h
    dec bc
    db $fd
    ldh a, [$b9]
    ld h, [hl]
    dec a
    jp nz, Jump_000_1a7d

    ld c, a
    ld a, [hl-]
    rst $00
    dec hl
    add c
    ld b, a
    nop
    jp Jump_05a_4300


    sub [hl]
    ld l, a
    ld e, h
    and a
    call c, $fe32
    ld a, b
    ld a, [c]
    inc a
    ret nz

    scf
    add b
    ld h, e
    add b
    ld h, b
    ret nz

    nop
    jr nz, jr_05a_4057

    jr nz, @+$42

    db $10
    jr nz, jr_05a_409c

jr_05a_409c:
    stop
    stop
    nop
    nop
    sub b
    nop
    jr c, jr_05a_40a6

jr_05a_40a6:
    inc [hl]
    dec bc
    ld d, [hl]
    ld bc, $1018
    ld [$0b00], sp
    ld e, d
    ld bc, $fa0b
    db $f4
    nop
    ld bc, $0201
    ld bc, $0b82
    di
    ld a, [$0118]
    nop
    ld h, c
    add hl, de
    ld h, a
    ld c, $33
    ld c, $19
    inc de
    inc a
    ld de, $377e
    add sp, -$03
    ld [bc], a
    add b
    ld b, a
    ret nz

    ld a, h
    ldh a, [$39]
    srl h
    rst $00
    jr c, @-$12

    ld [de], a
    cp $03
    rst $20
    jr jr_05a_40e0

jr_05a_40e0:
    nop
    nop
    add b
    ret nz

    jr nz, @-$4e

    dec bc
    ld sp, hl
    db $f4
    or b
    ccf
    ldh a, [rNR23]
    cp a
    ld e, $21
    rrca
    inc e
    rlca
    inc c
    rlca
    add hl, de
    inc e
    db $e3
    jr nc, jr_05a_413b

    ld [c], a
    rra
    db $fc
    inc bc
    sbc $20
    or a
    ld a, b
    di

jr_05a_4103:
    ld e, h
    pop bc
    ld [hl-], a
    ret nz

    ld hl, $8040
    nop
    ldh [$0b], a
    ld hl, sp-$0b
    add b
    add b
    nop
    nop
    add b
    ld b, b
    add b
    ld b, b
    and b
    nop
    ld b, b
    dec bc
    jp hl


    rst $38
    dec b
    ld [bc], a
    ld [$b00b], sp
    nop
    nop
    ld h, c
    add hl, sp
    rst $00
    ld b, $3f
    rlca
    inc c
    add hl, de
    ld c, $39
    ld c, $00
    jr nc, jr_05a_4172

    jr nz, @-$78

    ld [hl], c
    ret z

    db $f4
    jr nc, @-$16

    jr nc, jr_05a_4103

jr_05a_413b:
    add sp, $1e
    adc $39
    dec bc
    rst $30
    or $10
    nop
    nop
    ld h, b
    ld b, b
    add b
    ld c, c
    ld a, $84
    ld c, a
    adc [hl]
    rla
    ld de, $208f
    add hl, de
    jr nz, jr_05a_415f

    ld e, e
    nop
    ld b, b
    ret z

    inc a
    ret c

    jr nc, jr_05a_41d8

    or b
    add $f8

jr_05a_415f:
    ld [bc], a
    call nz, Call_000_0201
    nop
    ld bc, $0380
    nop
    nop
    inc b
    jr @+$04

    inc b
    ld bc, $0006
    inc bc
    ld b, c

jr_05a_4172:
    add d
    ld [hl+], a
    ld e, h
    inc c
    dec bc
    ei
    ld a, [c]
    ld b, $80
    dec c
    ret c

    nop
    ldh a, [$08]
    jr nz, jr_05a_4193

    ld [de], a
    dec b
    inc b
    nop
    inc b
    jr jr_05a_4193

    inc [hl]
    ld bc, $0306
    inc b
    ld b, $88
    inc e
    ld h, b
    nop

jr_05a_4193:
    jr nz, jr_05a_41ad

    inc b
    db $10
    ld [$0c30], sp
    ld hl, sp+$00
    inc c
    sub b
    nop
    call z, Call_05a_4700
    nop
    jr nz, jr_05a_41b0

    and b
    rst $38
    ld c, l
    dec bc
    rst $38
    rra
    ld c, l
    dec bc

jr_05a_41ad:
    ld e, a
    cpl
    ld c, l

jr_05a_41b0:
    dec bc
    cp a
    cpl
    ld c, l
    dec bc
    rra
    ccf
    ld c, l
    dec bc
    ld a, a
    ccf
    ld c, l
    dec bc
    rst $18
    ccf
    ld c, l
    dec bc
    ccf
    ld c, a
    ld c, l
    dec bc
    sbc a
    ld c, a
    ld c, l
    dec bc
    rst $38
    ld c, a
    ld c, l
    dec bc
    ld e, a
    ld e, a
    ld c, l
    dec bc
    cp a
    ld e, a
    ld c, l
    dec bc
    rra
    ld l, a
    ld c, l

jr_05a_41d8:
    dec bc
    ld a, a
    ld l, a
    ld c, l
    dec bc
    rst $18
    ld l, a
    ld c, l
    dec bc
    ccf
    ld a, a
    ld c, l
    dec bc
    sbc a
    ld a, a
    ld c, l
    nop
    ld [$0909], sp
    rst $38
    db $f4
    ld bc, $0121
    ld bc, $1101
    ld bc, $0001
    nop
    nop
    ld [$1209], sp
    ld bc, $0004
    inc b
    nop
    add h
    add b
    adc h
    add hl, bc
    jr jr_05a_4208

    inc c

jr_05a_4208:
    db $10
    inc e
    jr nz, jr_05a_4244

    jr nc, jr_05a_4237

    ld [hl], b
    ld l, c
    ld d, b
    ld l, e
    ld de, $197a
    ld a, [hl]
    dec de
    db $fc
    ld e, $f9
    dec [hl]
    ei
    ld [hl], a
    ei
    ld l, d
    rst $30
    rst $20
    cp $00
    add b
    nop
    add b
    nop
    add h
    nop
    add h
    add b
    call nz, $c600
    add b
    ld c, [hl]
    add h
    ld l, d

jr_05a_4232:
    ld bc, $0181
    add e
    inc bc

jr_05a_4237:
    add e
    inc bc
    jp $c301


    ld bc, $0063
    ld [hl], c

jr_05a_4240:
    jr nz, jr_05a_4293

    db $d3
    cpl

jr_05a_4244:
    reti


    daa
    ld e, h
    and e
    inc l
    db $d3
    add h
    ei
    call $fdf2
    ld [c], a
    ld a, c
    or $b1
    cp $a3
    db $fc
    db $e3
    db $fc
    ld [c], a
    db $fd
    ld h, [hl]
    ld sp, hl
    inc [hl]
    ei
    or h
    ld a, e
    jr @+$01

    jr nz, jr_05a_4240

    jr nc, jr_05a_4232

    or b
    call z, $c6b8
    call c, $ece2
    ld a, [c]
    ld h, h
    ld a, [$fe30]
    inc b
    rlca
    dec b
    ld b, $07
    ld l, $03
    cpl
    inc bc
    ld l, a
    rlca
    ld a, e
    ld l, l
    ld d, e
    ld a, c
    ld b, a
    srl a
    sub a
    ld a, e
    ei
    rst $20
    jp nc, $b6ef

    rst $08
    ld l, l
    sbc [hl]
    ld l, e
    sbc h
    ld b, a
    cp b
    db $10

jr_05a_4293:
    rst $28
    dec de
    db $e4
    adc c
    db $76
    xor h
    ld d, e
    and h
    ld e, e
    or b
    ld c, a
    ld sp, $73ce
    adc h
    sbc e
    rst $20
    ld d, e
    rst $28
    add [hl]
    ld a, a
    adc [hl]
    ld a, a
    ret z

    ccf
    ret c

    scf
    db $f4
    dec sp
    pop hl
    ld a, $00
    ld [c], a
    nop
    add $00
    adc h
    nop
    cp h
    db $10
    add sp, $20
    jp nc, $2ec0

    adc b
    ld [hl], h
    cp c
    rst $00
    sbc c
    and $4c
    ld [hl], a
    ld h, [hl]
    ld a, l
    dec [hl]
    ld a, [hl]
    ld e, $3f
    rrca
    ld a, a
    ld b, $7f
    add e
    db $fc
    db $e3
    sbc h
    rst $30
    ld [$c03f], sp
    sbc a

jr_05a_42db:
    ld h, h
    sbc a
    ld h, [hl]
    ld c, a
    or e
    rrca
    pop af
    rst $38
    nop
    cp $01
    cp $01
    cp $11
    cp $11
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    ldh [$82], a
    db $fd
    sub [hl]
    ld sp, hl
    dec e
    di
    dec sp
    rst $30
    ld a, $f7
    ld a, h
    rst $38
    pop af
    ld l, [hl]

Jump_05a_4300:
    db $e3
    ld e, h
    nop
    ldh a, [rLCDC]
    pop hl
    add b
    and $00
    cp $10
    db $ec
    ld h, b
    sbc b
    ldh [$30], a
    ret nz

    add sp, $01
    daa
    nop
    rra
    ld b, $19
    inc bc
    call z, Call_05a_7f00
    ld b, $3f
    inc bc
    rrca
    nop
    inc bc
    and a
    ret c

    rst $28
    ret c

    add hl, sp
    and $17
    rst $28
    rrca
    rst $38
    cp a
    ld a, b
    rst $28
    ldh a, [$03]
    db $fc
    rst $38
    ld h, b
    add hl, bc
    ld d, b
    ld de, $ff30
    add e
    cp $c7
    db $fd
    ld c, $ff
    ld [$3fc0], sp
    sbc c
    ld h, a
    di
    rrca
    cp a
    ld a, a
    ld hl, sp-$01
    rst $38
    nop
    ldh a, [rIF]
    add b
    ld a, a
    ldh [$dc], a
    add b
    ld hl, sp-$80
    di
    nop
    cp $e0
    jr jr_05a_42db

    ld a, h
    nop
    adc [hl]
    nop
    ld [bc], a
    inc bc
    rst $38
    dec b
    ei
    add h
    ld a, e
    jp nz, $fb3d

    add h
    rst $18
    ldh [$6f], a
    ldh a, [rPCM34]
    ld hl, sp+$00
    stop
    inc e
    ld bc, $000e
    ld b, c
    nop
    inc c
    nop
    jr jr_05a_437d

jr_05a_437d:
    stop
    nop
    rrca
    inc sp
    ld [hl], $cf
    call c, $f83f
    cp $00
    ld hl, sp+$00
    nop
    nop
    jr nz, jr_05a_438f

jr_05a_438f:
    ld b, b
    nop
    stop
    jr jr_05a_4395

jr_05a_4395:
    ld [$0c00], sp
    nop
    inc c
    ld [$181c], sp
    inc a
    jr jr_05a_4414

    add hl, bc
    ld [de], a
    nop
    ld [$0814], sp
    dec d
    inc c
    dec de
    inc c
    dec de
    inc c
    sbc a
    ld b, $8d
    jr nc, jr_05a_442d

    jr nc, @-$12

    ld [hl], b
    jp hl


    ld [hl], b
    db $eb
    ld a, b
    rst $30
    ld a, l
    or e
    rst $30
    add hl, sp
    db $db
    ccf
    nop
    add b
    nop
    and b
    nop
    sub b
    add b
    ret nc

    add b
    ret c

    add b
    ret c

    sub b
    add sp, -$30
    xor d
    rlca
    rst $08

jr_05a_43d1:
    ld bc, $00c7
    ld h, e
    ld sp, $1f7a
    ccf
    rrca
    inc de
    rlca
    jr jr_05a_43de

jr_05a_43de:
    rlca
    rst $30
    jr jr_05a_43d1

    sbc b
    db $eb
    call c, $c9f6
    ld a, a
    pop hl
    rst $38
    or e
    sbc $bf
    db $fc
    ld e, $c0
    ld [hl], d

jr_05a_43f1:
    ret nz

    ld [hl], d
    ld b, b
    and $80
    db $fc
    and b
    call c, $b840
    nop
    ldh [rP1], a
    nop
    ld a, b
    sbc h
    db $10
    ld a, c
    ld de, $163b
    xor [hl]
    jr jr_05a_43f1

    db $10
    jr nc, jr_05a_4415

    sbc h
    db $10
    rra
    ldh [rSB], a
    ld a, $00
    inc bc

jr_05a_4414:
    add hl, bc

jr_05a_4415:
    db $fd

jr_05a_4416:
    rst $30
    add hl, bc
    or c
    inc de
    inc b
    inc c
    inc b
    inc e
    inc c
    inc [hl]
    inc e
    ld h, h
    inc [hl]
    ld c, l
    jr jr_05a_4491

    ld [$003a], sp
    cp [hl]
    inc d
    xor d
    inc e

jr_05a_442d:
    ld [c], a
    jr c, jr_05a_4416

    ld a, b
    or h
    add hl, bc
    and b
    rst $38
    ld c, l
    add hl, bc
    cp a
    cpl
    ld c, l
    add hl, bc
    rra
    ccf
    ld c, l
    add hl, bc
    ld a, a
    ccf
    ld c, l
    add hl, bc
    rst $18
    ccf
    ld c, l
    add hl, bc
    ccf
    ld c, a
    ld c, l
    add hl, bc
    sbc a
    ld c, a
    ld c, l
    add hl, bc
    rst $38
    ld c, a
    ld c, l
    add hl, bc
    ld e, a

jr_05a_4454:
    ld e, a
    ld c, l
    add hl, bc
    cp a

jr_05a_4458:
    ld e, a
    ld c, l
    add hl, bc
    rra
    ld l, a
    ld c, l
    add hl, bc
    ld a, a
    ld l, a
    ld c, l
    add hl, bc
    rst $18
    ld l, a
    ld c, l
    add hl, bc
    ccf
    ld a, a
    ld c, l
    add hl, bc
    sbc a
    ld a, a
    ld c, l
    nop
    ld [$000a], sp
    nop
    nop
    ld e, h
    jr z, @+$38

    inc a
    inc sp
    ld a, h
    ld a, e
    ld e, [hl]
    ld a, c
    ld c, [hl]
    ld a, l
    rst $10

Call_05a_4480:
    db $ec
    nop
    ld [$1408], sp
    nop
    ld [$0000], sp
    nop
    jr jr_05a_448c

jr_05a_448c:
    cp h
    nop
    db $fd
    jr c, jr_05a_4458

jr_05a_4491:
    nop
    nop
    jr nz, jr_05a_4496

    ld h, b

jr_05a_4496:
    inc bc
    ld bc, $0306
    inc b
    inc bc
    adc $87
    ld l, a
    call z, $063f
    ret nz

    ld b, $e0
    sub b
    ld h, b
    sbc b
    ld h, b
    ret c

jr_05a_44aa:
    jr nz, @-$26

    jr nz, jr_05a_44aa

    add d
    cp $c7
    dec d
    ld [$ea95], a
    dec b
    ld a, [$fa85]
    dec b
    ld a, [$fe81]
    db $10
    rst $28
    sub c
    xor $ff
    nop
    ld a, [bc]
    ld d, b
    nop
    cp $01
    adc [hl]
    ld [hl], c
    nop
    rst $38
    ld [hl], c
    adc [hl]
    rst $38
    nop
    rst $00
    jr c, jr_05a_4454

    ld a, [hl]
    jr c, @-$37

    ld a, h
    add e
    ld a, [bc]
    ld d, b
    ld [bc], a
    rst $38
    nop
    xor b
    ld d, a
    xor c
    ld d, a
    xor b
    ld d, a
    ld hl, $00df
    rst $38
    adc c
    ld [hl], a
    ld a, [bc]
    ld [hl], b
    nop
    sub l
    ld [$400a], a
    nop
    inc d
    db $eb
    add h
    ei
    nop
    rst $38
    sub c
    xor $15
    ld [$500a], a
    nop
    ld hl, sp+$07
    ld [hl], b
    adc a
    rlca
    ld hl, sp-$71
    ld [hl], b
    ld a, [bc]
    ld d, b
    nop
    ld a, [bc]
    ld [hl], d
    nop
    and c

jr_05a_450d:
    ld e, a
    jr nz, @-$1f

    ld hl, $80df
    ld a, a
    ld a, [bc]
    ld a, d
    nop
    ld a, [bc]
    ld c, b
    nop
    nop
    rst $38
    sub h
    db $eb
    ld a, [bc]
    ld b, b
    nop
    ld a, [bc]
    ld b, b
    nop
    cp $01
    ld hl, sp+$07
    ld sp, hl
    ld b, $73
    adc h
    inc sp
    call z, Call_05a_7887
    rst $08
    jr nc, @+$01

    nop
    jr z, jr_05a_450d

    add hl, bc
    rst $30
    adc b
    ld [hl], a
    adc c
    ld [hl], a

jr_05a_453c:
    and b
    ld e, a

jr_05a_453e:
    and c
    ld e, a
    and b
    ld e, a
    ld a, [bc]
    ld a, [hl]
    ld [bc], a
    sub b
    rst $28
    db $10
    rst $28
    add l
    ld a, [$b80a]
    ld [bc], a
    ccf
    ret nz

    rra
    ldh [$8f], a
    ld [hl], b
    rst $08
    jr nc, jr_05a_453e

    jr jr_05a_453c

    inc e
    ldh a, [rIF]
    ld sp, hl
    ld b, $97
    db $ec
    sub e
    xor $13
    xor $95
    db $eb
    inc d
    db $eb
    ld a, [bc]
    add b
    ld [bc], a
    ld a, [hl]
    sbc l
    rst $30
    ld a, $eb

jr_05a_4570:
    db $76
    rst $18
    db $e3
    dec a
    jp Jump_000_01fe


    ld a, [bc]
    ld d, b
    nop
    db $db
    inc a
    rst $30
    jr @+$01

    jr nc, jr_05a_4570

    jr nc, @-$1f

    ldh [$df], a
    ldh [$3f], a
    ret nz

    rst $38
    nop
    ld a, a
    rst $28
    ei
    ld a, a
    or c
    ld a, a
    xor c
    ld [hl], a
    adc b
    ld [hl], a
    ld a, [bc]
    ld [hl], d
    nop
    xor c
    ld a, [bc]
    ld [hl], c
    ld bc, $720a
    nop
    adc c
    ld [hl], a
    nop

jr_05a_45a1:
    rst $38
    ld hl, $a8df
    ld d, a
    nop
    inc b
    nop
    ld b, $02
    dec h
    ld bc, $0122
    ld h, [hl]
    inc bc
    ld b, h
    inc bc
    ld b, h
    ld b, c
    and d
    dec d
    ld [$600a], a

jr_05a_45ba:
    ld [de], a
    add h
    ld a, e
    ldh [$1f], a
    pop af
    ld c, $f7
    ld [$20df], sp
    swap h
    and c
    ld e, [hl]
    dec h
    jp c, $9b64

    and $19
    rst $20
    jr jr_05a_45a1

    jr nc, jr_05a_4652

    add c
    ld a, h
    add e
    inc a
    jp $a55a


    ld b, e
    cp h
    ld h, a
    sbc b
    ld l, a
    sub b
    ld l, a
    sub b
    adc b
    ld [hl], a
    xor b
    ld d, a
    and b
    ld e, a
    jr nc, jr_05a_45ba

    add hl, sp
    add $79
    add [hl]
    ld a, c
    add [hl]
    or $09
    nop
    ld b, b
    ld b, b
    and b
    ld h, b
    sub d
    ldh [rNR12], a
    ldh [rNR21], a
    ldh [rNR32], a
    ld b, b
    xor [hl]
    call nz, $002a
    inc bc
    inc bc
    rrca
    inc c
    rra
    inc de
    inc a
    cpl
    ld [hl], b
    cpl
    ld [hl], b
    ld e, a
    ldh [$5f], a
    ldh [$0a], a
    or b
    db $10
    rrca
    inc e
    ld e, $31
    inc a
    ld h, e
    jr nc, jr_05a_468d

    ld a, h
    db $db
    ld e, h

jr_05a_4621:
    db $eb
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    jr c, jr_05a_4621

    inc c
    ld l, h
    sub [hl]
    inc [hl]
    adc $e6
    dec de
    ld l, d
    sbc a
    ld e, [hl]
    rst $38
    daa
    ld a, a
    dec hl
    ld a, a
    add hl, de
    ccf
    rrca
    rra
    inc bc
    rrca
    nop
    inc bc
    nop
    nop
    ld c, $ff

jr_05a_4644:
    ld a, h
    cp $c4
    cp $68
    db $fc
    jr nc, jr_05a_4644

    ret nz

    ldh a, [rP1]
    ret nz

    ld a, [bc]
    rst $38

jr_05a_4652:
    ldh a, [$80]
    ldh [$e0], a
    ld a, e
    inc de
    ccf
    rrca
    inc e
    rrca

jr_05a_465c:
    ld a, [de]
    rra
    inc a
    ld a, a
    or $04
    ld [$1c08], sp
    inc c
    ret c

    ret c

    ldh a, [$f0]
    jr c, jr_05a_465c

    ld e, e
    jp c, $fc6e

    inc a
    rra
    ccf
    inc a
    ccf
    ld l, $7f
    inc hl
    ld l, a
    ld bc, $2023
    ld bc, $0100
    ld bc, $e801
    call c, $fc34
    ld [hl], $fa
    jp nz, $80f1

    ret nz

    add b
    ret nz

jr_05a_468d:
    add b
    add b
    nop
    add b
    nop
    inc a
    jr @+$80

    inc h
    rst $38
    ld e, d
    rst $20
    ld e, d
    rst $20
    inc h
    rst $38
    jr jr_05a_471d

    nop
    inc a
    jr c, @+$7e

    jr nc, jr_05a_471d

    db $10
    jr c, jr_05a_46b8

    jr c, jr_05a_46aa

jr_05a_46aa:
    jr nc, jr_05a_46bc

    jr jr_05a_46ae

jr_05a_46ae:
    db $10
    db $10
    stop
    nop
    nop
    ld bc, $0301
    inc bc

jr_05a_46b8:
    inc bc
    ld b, $46
    ld c, h

jr_05a_46bc:
    xor h
    nop
    ld b, b
    ld a, [bc]
    rst $38
    stop
    jp nz, $e5c2

    ld b, b
    ld h, d
    jr nz, jr_05a_46fa

    db $10
    ld a, [bc]
    ld e, l
    ld hl, $a641
    ld h, c
    sub [hl]
    ld [hl+], a
    ld e, l
    ld [hl-], a
    ld c, l
    ccf
    ld d, c
    ld [hl], a
    sbc b
    ld a, d
    sbc l
    ld c, l
    cp a
    rst $38
    nop
    sbc [hl]
    ld h, c
    sbc $21
    call z, $6533
    sbc e
    jp hl


    sbc a
    xor e
    rst $18
    call $cfff
    jr nc, jr_05a_46fb

    or $00
    or $09
    db $fd
    inc bc
    ld l, l
    sub e
    dec e

jr_05a_46fa:
    di

jr_05a_46fb:
    and a
    ei
    ld e, a
    and b
    ld [hl], l

Call_05a_4700:
    adc d
    ld [hl], l
    adc d
    db $fc
    dec bc
    xor $19
    sbc a
    ld [hl], e
    or [hl]
    ld a, c
    ld l, e
    db $fc
    cp h
    ld b, e
    reti


    ld h, $db
    ld h, $db
    daa
    ld l, c
    or a
    inc a
    di
    push de
    ei
    ld [hl], e
    rst $38

jr_05a_471d:
    call nz, $e43a
    dec de
    or $09
    sbc $21
    ld c, [hl]
    cp c
    cp $99
    call c, $34b3
    ei
    ld a, [bc]
    cp $f1
    ret nz

    nop
    ld h, b
    nop
    inc h
    nop
    ld [hl], $00
    ld [hl], $02
    dec [hl]
    ld [hl+], a
    ld d, l
    ld [hl+], a
    ld d, l
    inc hl
    ld d, h
    ld [hl], e
    adc h
    ld [hl], c
    adc [hl]
    ld a, b
    add a
    ccf
    ld b, b
    daa
    ld e, b
    ld a, [bc]
    and b
    rst $38
    ld c, l
    ld a, [bc]
    ld e, a
    ccf
    ld c, l
    ld a, [bc]
    cp a
    ccf
    ld c, l
    ld a, [bc]
    rra
    ld c, a
    ld c, l
    ld a, [bc]
    ld a, a
    ld c, a
    ld c, l
    ld a, [bc]
    rst $18
    ld c, a
    ld c, l
    ld a, [bc]
    ccf
    ld e, a
    ld c, l
    ld a, [bc]
    sbc a
    ld e, a
    ld c, l
    ld a, [bc]
    rst $38
    ld e, a
    ld c, l
    ld a, [bc]
    ld e, a
    ld l, a
    ld c, l
    ld a, [bc]
    cp a
    ld l, a
    ld c, l
    ld a, [bc]
    rra
    ld a, a
    ld c, l
    ld a, [bc]
    ld a, a
    ld a, a
    ld c, l
    ld a, [bc]
    rst $18
    ld a, a
    dec c
    nop
    ld [$0505], sp
    rst $38
    push af
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    dec b
    cp $f7
    ld b, b
    nop
    ld b, b
    nop
    ld h, b
    nop
    ld a, l
    dec b
    inc b
    inc bc
    ld b, $02
    add l
    nop
    inc bc
    nop
    ld bc, $0100
    dec b
    cp $f9
    dec b
    rst $38
    or $10
    dec b
    rst $38
    pop af
    ld [$0c00], sp
    dec b
    cp $f7
    jr nz, jr_05a_47b6

jr_05a_47b6:
    jr nc, @+$07

    rst $38
    push af
    add hl, bc
    ld bc, $0112
    ld a, [de]
    inc bc
    ld a, h
    db $10
    db $e3
    ld [$0c35], sp
    inc de
    ld a, [bc]
    sub l
    ld a, [bc]
    sub l
    rra
    and b
    cp c
    ld b, [hl]
    db $10
    db $ed
    nop
    jr jr_05a_47d4

jr_05a_47d4:
    adc b
    nop
    adc b
    ld [$18f5], sp
    db $e4

jr_05a_47db:
    cp h
    ld b, e
    sub $29
    ld [bc], a
    push af
    nop
    inc h
    nop
    add b
    nop
    ret nz

    nop
    jp c, $ad42

    rst $00
    jr c, jr_05a_47db

    ld [de], a
    ld h, b
    sbc a
    nop
    ld [hl], d
    dec b
    rst $38
    di
    add c
    nop
    jp Jump_05a_4e81


    add b
    ld [hl], d
    nop

jr_05a_47fe:
    and b
    nop
    stop
    jr jr_05a_4814

    jr z, jr_05a_4816

    ld l, h
    ld a, b
    add a
    ld e, [hl]
    and c
    jr jr_05a_4873

    nop
    inc e
    nop
    inc c
    nop
    ld c, [hl]
    inc c

jr_05a_4814:
    ld [hl], d
    inc h

jr_05a_4816:
    ld e, e
    ld l, $51
    ccf
    ret nz

    db $10
    jp hl


    nop
    inc sp
    dec b
    rst $38
    push af
    add c
    add c
    ld b, [hl]
    add h
    ld a, e
    nop
    ld a, h
    nop
    nop
    nop
    ld [bc], a
    nop
    add e
    nop
    add b
    nop
    ld hl, sp-$20
    dec e
    jr c, jr_05a_47fe

    nop
    cp h
    dec b
    rst $38
    pop af
    add b
    nop
    ldh [rLCDC], a
    and b
    ld b, b
    or b
    ldh a, [$0c]
    ld [$05f7], sp
    ld d, b
    rrca
    inc b
    dec b
    rst $38
    db $f4
    dec b
    dec c
    jr jr_05a_4872

    nop
    ld sp, $3900
    dec b
    rst $38
    pop af
    ld bc, $2000
    nop
    ld b, b
    dec b
    ld c, b
    inc bc
    dec b
    rst $38
    ld a, [c]
    dec b
    sub c
    nop
    ld h, b
    dec b
    jr jr_05a_486c

    dec b

jr_05a_486c:
    rst $38
    db $f4
    ld [$0c00], sp
    inc b

jr_05a_4872:
    ld l, e

jr_05a_4873:
    nop
    cp h
    nop
    ld [$0400], sp
    nop
    inc b
    nop
    inc e
    inc b
    ld c, d
    inc c
    di
    scf
    ret z

    ld b, d
    cp l
    dec b
    ld [hl-], a
    ld de, $0013
    rla
    ld [bc], a
    dec [hl]
    rla
    xor b
    or e
    ld c, h
    ld b, b
    or e
    db $10
    ld l, a
    jr jr_05a_48fe

    dec a
    ld b, d
    ccf
    ld b, b
    inc sp
    call z, $06f9
    dec b
    ld a, h
    ld bc, $0090
    ld sp, hl
    and b
    ld d, e
    pop hl
    ld d, $d3
    inc l
    jp nc, Jump_000_042d

    di
    nop
    inc h
    dec b
    rst $38
    pop af
    pop bc
    add b
    ld h, c
    ret nz

    ccf
    db $ed
    ld [de], a
    ld l, e
    sub h

jr_05a_48bd:
    dec b
    sbc [hl]
    dec b
    jp nz, $6281

    pop hl
    ld [de], a
    or b
    ld c, [hl]
    ld [$00b7], sp
    ld de, $1900
    nop
    add hl, de
    ld [$0b27], sp
    or h
    sbc h
    ld h, e
    adc $30
    nop
    sbc h
    nop
    add b
    add b
    ld b, b
    add b
    ld h, b
    ret nz

    add hl, sp
    ret nc

    dec l
    ld sp, hl
    ld b, $31
    adc $05
    adc $07
    or b
    add b
    ld a, h
    jr nc, jr_05a_48bd

    nop
    ld a, c
    dec b
    ld d, d
    rlca
    inc h
    nop
    ld b, $04
    dec de
    dec b
    db $fc
    ld sp, hl
    inc c
    nop

jr_05a_48fe:
    ld b, $00
    stop
    stop
    jr nc, jr_05a_4916

    jr z, jr_05a_4918

    jr z, jr_05a_490a

jr_05a_490a:
    jr jr_05a_490c

jr_05a_490c:
    ld [$2000], sp
    dec b
    inc b
    ld [bc], a
    inc b
    inc bc
    ld [bc], a
    dec c

jr_05a_4916:
    rlca
    adc b

jr_05a_4918:
    inc c
    di
    nop
    scf
    ld b, $29
    inc bc
    ld b, h
    inc b
    ld e, e
    ld b, $d9
    adc $31
    ld e, a
    and b
    or e
    ld c, h
    sub b
    ld l, e
    ld [bc], a
    add l
    add d
    ld [hl], l
    ld h, a
    sbc b
    ccf
    ret nz

    ld [hl], e
    adc h
    ld sp, hl
    ld b, $92
    ld l, l
    dec b
    xor $03
    nop
    nop
    and b
    add b
    ld a, b
    ldh a, [$0e]
    ret nc

    inc l
    dec b
    cp $03
    stop
    ld [de], a
    ld bc, $1336
    inc l
    ld hl, $00de
    di
    nop
    jr nz, jr_05a_4957

jr_05a_4957:
    jr nz, jr_05a_4959

jr_05a_4959:
    add hl, sp
    ld de, $1b6e
    db $e4
    ld a, l
    add d
    sbc b
    ld h, l
    nop
    jr jr_05a_4965

jr_05a_4965:
    add h
    nop
    adc [hl]
    ld b, $99
    inc c
    sub e
    adc [hl]
    ld d, c
    ld a, [hl]
    add c
    dec b
    sbc h
    ld de, $0010
    ld [$0e00], sp
    ld [bc], a
    add l
    add l
    ld e, d
    rst $28
    db $10
    ld h, e
    sbc h
    dec b
    sbc [hl]
    dec b
    add d
    nop
    jp Jump_05a_4ca3


    sbc c
    ld h, [hl]
    nop
    ld hl, sp+$05
    ld a, [c]
    ld [bc], a
    nop
    ld h, b
    jr nz, jr_05a_49ef

    ld [hl], b
    adc e
    or b
    ld b, b
    nop
    sub b
    dec b
    and b
    rst $38
    ld c, l
    dec b
    rra
    ccf
    ld c, l
    dec b
    ld a, a
    ccf
    ld c, l
    dec b
    rst $18
    ccf
    ld c, l
    dec b
    ccf
    ld c, a
    ld c, l
    dec b
    sbc a
    ld c, a
    ld c, l
    dec b
    rst $38
    ld c, a
    ld c, l
    dec b
    ld e, a
    ld e, a
    ld c, l
    dec b
    cp a
    ld e, a
    ld c, l
    dec b
    rra
    ld l, a
    ld c, l
    dec b
    ld a, a
    ld l, a
    ld c, l
    dec b
    rst $18
    ld l, a
    ld c, l
    dec b
    ccf
    ld a, a
    ld c, l
    dec b
    sbc a
    ld a, a
    ld c, l
    nop
    ld [$0a0a], sp
    rst $38
    rst $30
    add b
    nop
    ld b, b
    nop
    ld h, b
    nop
    ld h, c
    nop
    ld sp, $a910
    db $10
    xor h
    db $10
    db $ed
    jr c, jr_05a_4a2f

    inc e
    ld h, e
    dec l
    ld [de], a
    nop
    nop
    nop

jr_05a_49ef:
    add d
    nop
    call nz, Call_05a_4480
    nop
    db $ec
    ld c, b
    and [hl]
    ret nz

    inc a
    ret nz

    inc a
    ld a, [bc]
    ld [$8101], sp
    nop
    add e
    nop
    jp $c100


    nop
    ld h, b
    jr nz, jr_05a_4a63

    nop
    ld b, b
    nop
    ld b, b
    nop
    add b
    ld a, [bc]
    cp $f9
    ld [$0800], sp
    nop
    ld e, b
    nop
    ld e, $04
    ld a, [de]
    inc c
    inc de
    rrca
    stop
    inc c
    nop
    rlca
    inc bc
    inc b
    inc bc
    inc b
    ld bc, $0106
    ld c, $01
    sbc [hl]
    inc bc

jr_05a_4a2f:
    sbc h
    add hl, sp
    add $31
    adc $39
    add $bd
    ld b, d
    rst $38
    nop
    ld a, a
    add b
    ld a, [bc]
    ld a, d
    nop
    ret nz

    ld [hl-], a
    ld b, b
    cp [hl]
    and b
    ld e, [hl]
    adc h
    ld [hl], e
    call z, $ec33
    inc de
    db $ec
    inc de
    cp $01
    jr nz, @+$53

    jr nz, jr_05a_4aa6

jr_05a_4a53:
    nop
    ld [hl], a
    ld hl, $62de
    sbc l
    rst $20

jr_05a_4a5a:
    jr jr_05a_4a53

    ld [$0a7f], sp
    ld b, l
    ld [bc], a
    ld b, b
    ld b, b

jr_05a_4a63:
    xor b
    ld h, b
    sbc h
    ld l, b
    sub h
    sbc h
    ld h, d
    sub h
    ld l, d
    nop
    nop
    nop
    ld bc, $b20a
    ld bc, $0013
    sub e
    nop
    ret nz

    nop
    ldh a, [rP1]
    inc c

jr_05a_4a7c:
    nop
    sbc h
    nop
    jr jr_05a_4a8b

    ld d, d
    ld bc, $0000
    jr jr_05a_4a87

jr_05a_4a87:
    ld a, h
    rst $08
    jr nc, jr_05a_4a5a

jr_05a_4a8b:
    jr nc, jr_05a_4a7c

    db $10
    rst $38
    nop

jr_05a_4a90:
    cp a
    ld b, b
    rst $18
    jr nz, jr_05a_4a97

    push af
    nop

jr_05a_4a97:
    db $e4
    cp a
    ld b, b
    and a
    ld e, b
    add $39
    rst $38
    nop
    rst $08
    jr nc, jr_05a_4a90

    ld [de], a
    ld h, b
    sbc a

jr_05a_4aa6:
    nop
    ld [hl], d
    ld a, a
    add b

jr_05a_4aaa:
    rst $30
    ld [$04fb], sp
    ld hl, sp+$07
    ret nz

    ccf
    pop bc
    ld a, $80
    ld [hl], d
    nop
    and b
    adc a
    ld [hl], b
    rst $18
    jr nz, @+$7e

    add e
    jr c, jr_05a_4a87

    ld a, b
    add a
    ld e, [hl]
    and c
    jr @+$69

    nop
    inc e
    call z, $ef33
    db $10
    rst $28
    db $10
    ld a, a
    add b
    ld a, e
    add h
    ld a, e
    add h
    ld de, $01ee
    ld [hl], $82
    ld [hl], l
    add d
    ld a, l
    add e
    ld a, h
    db $e3
    inc e
    rst $38
    nop
    cp h
    ld b, e
    db $10
    db $ed
    nop
    add b
    jr c, jr_05a_4aaa

    ld h, b
    sbc [hl]
    ret nz

    ccf
    ldh [rNR34], a
    ldh [rNR34], a
    ldh a, [$0d]
    jr nc, @-$2f

    nop
    cp h
    ld a, [bc]
    ld b, $03
    ldh [rLCDC], a
    and b
    ld b, b
    or b
    ldh a, [$0c]
    ld [$0af7], sp
    ld [$0a01], sp
    rst $38
    db $f4
    inc c
    nop
    inc b
    ld a, [bc]

jr_05a_4b0e:
    inc b
    dec b
    add c
    nop
    reti


    add b
    ld a, l
    ret


    ld [hl], $00
    nop
    nop
    ld [bc], a

jr_05a_4b1b:
    nop
    add [hl]
    ld [bc], a
    add l
    ld b, e
    adc b
    ld b, e
    cp h
    di
    inc c
    ld h, b
    sbc a
    ld a, [bc]
    inc b
    dec b
    ret nz

    ret nz

    jr nc, jr_05a_4b0e

    db $10
    ldh [rNR23], a
    nop
    ld bc, $440a
    ld bc, $0030
    stop
    jr jr_05a_4b3c

jr_05a_4b3c:
    rrca
    ld [$0a17], sp
    add [hl]
    stop
    ld b, b
    nop
    ld [hl], b
    jr nz, jr_05a_4ba2

    jr nc, jr_05a_4b98

    jr nc, jr_05a_4b1b

    ld a, $c1
    ld a, [bc]
    rst $38
    rst $30
    ld a, [bc]
    ld b, c
    nop
    ldh [rP1], a
    ld [bc], a
    nop
    ld bc, $4100
    nop
    ld de, $1708
    rrca
    jr nc, @+$08

    ld sp, hl
    ld [bc], a
    dec c
    ld b, $19
    ld d, $e9
    rra
    ldh [$7d], a
    add d
    ld a, [hl]
    add c
    ld a, a
    add b
    ld a, [hl]
    add b
    ld [$edf7], sp
    ld [de], a
    rst $38
    nop
    ld a, [bc]
    sub $00
    rst $38
    nop
    rrca
    sub b
    inc bc
    db $fc
    db $10
    rst $20
    ld b, l
    cp d
    ld e, l
    and d
    sbc a
    ld h, b
    sbc a
    ld h, b
    cp a
    ld b, b
    ld sp, hl
    ld b, $10
    rst $28
    nop
    add hl, de
    ldh [rNR10], a
    ldh [rNR34], a

jr_05a_4b98:
    add sp, $17
    db $fc
    inc bc
    cp [hl]
    ld b, c
    ld a, [bc]
    jp c, $0a02

jr_05a_4ba2:
    or b
    ld bc, $020f
    db $fd
    rlca
    ld hl, sp-$11
    db $10
    ld a, [bc]
    db $ec
    nop
    ld b, $09
    rlca
    jr c, jr_05a_4bd2

    ldh [$3b], a
    call nz, $1fe0
    pop hl
    ld e, $0a
    db $fc
    nop

jr_05a_4bbd:
    nop
    jr nc, jr_05a_4bc0

jr_05a_4bc0:
    jr c, @-$7e

    ld b, b
    ret nz

    nop
    add b
    ld c, b
    adc b
    ld [hl], h
    ld a, [bc]
    inc l
    db $10
    ld a, [bc]
    inc b
    dec b
    ld a, [bc]
    and c
    db $10

jr_05a_4bd2:
    ld a, [bc]
    ld c, e
    jr nz, jr_05a_4bbd

    nop
    daa

jr_05a_4bd8:
    nop
    inc sp
    nop
    ld [hl], c
    nop
    ld sp, $1b00
    nop
    adc e
    nop
    ld [bc], a
    nop
    ret nz

    ld a, [bc]
    ld b, h
    ld bc, $0a84
    ld c, d
    ld hl, $00e0
    ld [hl], b
    ld a, [bc]
    rst $38
    rst $30
    jr nc, jr_05a_4bf5

jr_05a_4bf5:
    jr nz, jr_05a_4bf7

jr_05a_4bf7:
    ld b, b
    nop
    add hl, de
    nop
    add hl, de
    nop
    stop
    nop
    nop
    dec b
    nop
    rlca
    nop
    rrca
    nop

jr_05a_4c07:
    rrca
    db $10
    jr z, jr_05a_4c1b

    jr nz, jr_05a_4c0d

jr_05a_4c0d:
    jr nc, jr_05a_4c1f

    add sp, $30
    call z, $8c70
    ld a, b
    add b
    jr nc, jr_05a_4bd8

jr_05a_4c18:
    ld a, [bc]
    rst $38
    pop af

jr_05a_4c1b:
    add c
    nop
    add a
    nop

jr_05a_4c1f:
    add a
    ld l, b
    sub a
    db $10
    ld l, a
    ld bc, $0a36
    jr nc, jr_05a_4c39

    ld b, h
    cp e
    push hl
    ld a, [de]
    rst $38
    nop
    di
    inc c
    ld a, [bc]
    inc a
    ld de, $2060
    ld c, e
    jr nz, jr_05a_4c18

jr_05a_4c39:
    jr nc, jr_05a_4c07

    ld hl, sp+$04
    ld hl, sp+$06
    ld a, [bc]
    ld c, h
    db $10
    inc bc
    inc e
    ld bc, $407e
    ccf
    pop bc
    ld a, $c1
    ld a, $0a
    ld [$d802], a
    jr nz, @-$06

    nop
    db $fc
    nop
    jr c, jr_05a_4c9b

    ld a, b
    add [hl]
    ld e, [hl]
    and b
    dec de
    ld h, h
    nop
    inc e
    ld a, [bc]
    and b
    rst $38
    ld c, l
    ld a, [bc]
    ld c, a
    ccf
    ld c, l
    ld a, [bc]
    xor a
    ccf
    ld c, l
    ld a, [bc]
    rrca
    ld c, a
    ld c, l
    ld a, [bc]
    ld l, a
    ld c, a
    ld c, l
    ld a, [bc]
    rst $08
    ld c, a
    ld c, l
    ld a, [bc]
    cpl
    ld e, a
    ld c, l
    ld a, [bc]
    adc a
    ld e, a
    ld c, l
    ld a, [bc]
    rst $28
    ld e, a
    ld c, l
    ld a, [bc]
    ld c, a
    ld l, a
    ld c, l
    ld a, [bc]
    xor a
    ld l, a
    ld c, l
    ld a, [bc]
    rrca
    ld a, a
    ld c, l
    ld a, [bc]
    ld l, a
    ld a, a
    ld c, l
    ld a, [bc]
    rst $08
    ld a, a
    dec e
    nop
    ld [$1313], sp

jr_05a_4c9b:
    rst $38
    push af
    ldh a, [$30]
    ld c, b
    nop
    jr @+$15

Jump_05a_4ca3:
    ld a, [$07fb]
    nop
    rst $38
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    ld a, b
    nop
    ccf
    ld b, $19
    rlca
    ld hl, sp+$7c
    add e
    nop
    rlca
    nop
    add c
    nop
    ld a, c
    nop
    ccf
    dec c
    ld [de], a
    rrca
    jr nc, jr_05a_4ce4

    ldh [rSVBK], a
    adc [hl]
    nop
    nop
    nop
    ret nz

jr_05a_4ccc:
    add b
    ld h, b
    ret nz

    ld a, [hl-]
    ld [hl], d
    adc c
    cp $01
    inc b
    ei
    nop
    inc de
    ccf
    nop
    inc de
    rst $38
    db $f4
    ld [hl], b
    nop
    inc e
    inc b
    ld a, [bc]
    inc de
    rst $38

jr_05a_4ce4:
    di
    stop
    ld [$0c00], sp
    ld [$13f7], sp
    ld e, $01
    ret nz

    nop
    jr nz, jr_05a_4cf3

jr_05a_4cf3:
    inc sp
    ld bc, $0e1e
    ld de, $fc03
    ld hl, sp+$07
    inc bc
    inc b
    ld bc, $0002

jr_05a_4d01:
    inc bc
    nop
    jp Jump_000_2cc3


    rst $20
    jr jr_05a_4ccc

    inc a
    nop
    rst $00
    nop
    add b
    nop
    ldh a, [$90]
    ld l, h
    ret c

    inc h
    add sp, $16
    cp $01
    jr jr_05a_4d01

    inc de
    ld e, $01
    jr nz, jr_05a_4d1f

jr_05a_4d1f:
    jr nz, jr_05a_4d21

jr_05a_4d21:
    jr nc, jr_05a_4d23

jr_05a_4d23:
    jr nc, jr_05a_4d35

    ld l, b
    db $10
    ld l, h
    ld [$0436], sp
    adc e
    inc b
    ld c, e
    ld [bc], a
    ld b, l
    inc bc
    ld h, h
    inc bc
    ld a, h
    inc hl

jr_05a_4d35:
    call c, $d827
    ld h, a
    sbc b
    add b
    ld b, h
    add b
    ld h, h
    ret nz

Jump_05a_4d3f:
    inc h
    ret nz

    ld l, $e4
    ld a, [de]
    db $e4
    ld a, [de]
    db $f4
    ld a, [bc]
    or $09

jr_05a_4d4a:
    add b
    ld h, [hl]
    nop
    add $00
    cp $18
    db $e4
    ld hl, sp+$05
    ld sp, hl
    ld b, $ff
    nop
    ld a, [hl]
    add c
    ld a, l
    add d
    ld a, l
    add d
    dec sp
    call nz, Call_05a_649b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $30
    ld [$08f7], sp
    ld b, b
    or c
    ld h, b
    sbc e
    ld h, b

Jump_05a_4d6f:
    sbc [hl]
    db $e4
    ld a, [de]
    db $fc
    ld [bc], a
    ldh [rNR32], a
    ret nz

    jr z, jr_05a_4d79

jr_05a_4d79:
    ret nz

    inc de
    rst $38
    pop af
    inc b
    nop
    inc b
    nop
    ld b, $13
    ld [$0210], sp
    dec d
    ld bc, $050e
    ld a, [bc]
    ld b, $29
    ld b, $69
    ld b, $29
    ld a, [bc]
    dec [hl]
    ld c, $11
    ld c, $11
    nop
    add b
    nop
    add b
    inc de
    ld h, d
    inc bc
    stop
    sub b
    nop
    adc b
    nop
    ld hl, sp+$18
    inc h
    ld [$0014], sp
    ld c, $00
    ld [bc], a
    nop
    stop
    inc c
    nop
    nop
    ld b, $19
    ld b, $19
    dec c
    ld [hl-], a
    dec c
    ld [hl-], a
    rrca
    jr nc, jr_05a_4dcd

    db $10
    rlca
    ld [$8906], sp
    adc b
    ld [hl], h
    ret nz

    inc a
    ret nz

    jr nc, jr_05a_4d4a

    ld a, b
    or b
    ld c, b

jr_05a_4dcd:
    or b
    ld c, h
    ld hl, sp+$04
    ldh a, [$0c]
    nop
    ld [$0800], sp
    db $10
    jr z, jr_05a_4dea

    jr nz, jr_05a_4ddc

jr_05a_4ddc:
    stop
    nop
    nop
    add b
    nop
    add h
    nop
    ld [$1800], sp
    nop
    jr @+$12

jr_05a_4dea:
    jr z, jr_05a_4e0c

    ld d, b
    jr nz, @+$52

    jr nz, jr_05a_4e37

    nop
    inc h
    inc e
    ld h, e
    ld a, [hl-]
    push bc
    ld [hl], $c9
    ld [hl], $c9
    scf
    ret z

    dec de
    ld h, h
    ld bc, $003e
    rra
    ld h, $d9
    db $76
    adc c
    ld l, [hl]
    sub c
    adc $31
    ld a, a

jr_05a_4e0c:
    add b
    rst $38
    nop
    ld a, a
    add b
    ld a, $c1
    nop
    inc bc
    nop
    ld bc, $1100
    nop
    ld c, l
    inc b
    dec de
    ld [bc], a
    dec c
    inc bc
    inc b
    nop
    rlca
    ld a, h
    add e
    ld a, h
    add e
    ld a, [hl]
    add c
    ld l, $d1
    ld a, $c1
    ld a, e
    add h
    ld sp, hl
    ld b, $5c
    and e
    rst $38
    nop
    inc de
    ret nz

jr_05a_4e37:
    ld [de], a
    ld a, a
    add b
    dec sp
    call nz, $e21d
    ld e, $e1
    nop
    ld h, b
    nop
    inc b
    nop
    inc c
    nop
    inc e
    ld [$0814], sp
    inc de
    ld h, a
    nop
    nop
    inc bc
    ld c, h
    inc bc
    ld b, h
    ld bc, $4042
    and e
    ld b, b
    and c
    nop
    ld l, c
    nop
    add hl, hl
    nop
    dec c
    sbc e
    ld h, h
    db $db
    inc h
    cp e
    ld b, h
    dec sp
    call nz, Call_000_02fd
    db $fd
    ld [bc], a
    rst $38
    nop
    ei
    inc b
    inc de
    ld h, d
    inc bc
    jr jr_05a_4e87

    ld h, [hl]
    ld bc, $001f
    rst $38
    rlca
    sbc b
    rlca
    ret c

    dec b
    ld a, d
    dec b
    ld a, [hl+]

Jump_05a_4e81:
    inc de
    xor d
    db $10
    inc bc
    inc c
    inc bc

jr_05a_4e87:
    inc c

jr_05a_4e88:
    add b
    ld c, b
    add b
    ld c, h
    add b
    ld e, h
    adc b
    ld [hl], l
    adc b

jr_05a_4e91:
    ld [hl], a
    ret c

jr_05a_4e93:
    ld h, $98
    ld h, [hl]
    ld hl, sp+$04
    nop
    rlca
    ld bc, $0102
    ld b, $01
    ld b, $06
    add hl, de
    rrca
    sub b
    rlca
    cp b
    rlca
    ld hl, sp+$01
    adc $41
    or [hl]
    and e
    ld e, h
    di
    inc c
    db $db
    inc h
    db $eb
    inc d
    ld l, c

jr_05a_4eb5:
    sub [hl]
    jp $d23c


    dec l
    call z, $fc33
    inc bc
    db $dd
    ld [hl+], a
    db $db
    inc h
    ld a, [c]
    dec c
    cp h
    ld b, e
    inc e
    db $e3
    nop
    jr jr_05a_4ecb

jr_05a_4ecb:
    jr nc, jr_05a_4eed

    ret nc

    ret nz

    jr nz, jr_05a_4e91

    jr nz, jr_05a_4e93

    jr nc, jr_05a_4eb5

    jr jr_05a_4ed7

jr_05a_4ed7:
    rst $38
    nop
    ld l, $04
    ld a, [hl-]
    inc c
    ld [hl-], a
    ld b, $19
    ld [bc], a
    dec b
    nop
    add e
    nop
    add d
    nop
    ret nz

    nop
    dec bc
    nop
    add hl, bc
    nop

jr_05a_4eed:
    ld hl, $2100
    nop
    ld h, a
    nop
    ld c, a
    ld b, $69
    rlca
    jr jr_05a_4e88

    ld [hl], b
    adc $31
    xor $11
    cp $01
    ld a, l
    add d
    dec e
    ld [c], a
    call $ef32
    db $10
    ldh a, [$08]
    ldh a, [$09]
    ld hl, sp+$05
    ld hl, sp+$07
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc de
    and c
    db $10
    inc de
    rst $38
    ldh a, [$38]
    nop
    ld c, $06
    add hl, sp
    rra
    ld h, b
    cpl
    ret nc

    dec e
    ld [c], a
    ld e, l
    and d
    ld a, l
    add d
    dec a
    ld b, d
    rra
    jr nz, jr_05a_4f70

    ld b, b
    ld e, $e1
    pop af
    ld c, $fe
    ld bc, $ac13
    jr nz, @-$02

    inc bc
    inc de
    ret nz

    ld [de], a
    add hl, de
    and $13
    and b
    rst $38
    ld c, l
    inc de
    ccf
    ccf
    ld c, l
    inc de
    sbc a
    ccf
    ld c, l
    inc de
    rst $38
    ccf
    ld c, l
    inc de
    ld e, a
    ld c, a
    ld c, l
    inc de
    cp a
    ld c, a
    ld c, l
    inc de
    rra
    ld e, a
    ld c, l
    inc de
    ld a, a
    ld e, a
    ld c, l
    inc de
    rst $18
    ld e, a
    ld c, l
    inc de
    ccf
    ld l, a
    ld c, l
    inc de
    sbc a
    ld l, a
    ld c, l
    inc de
    rst $38

jr_05a_4f70:
    ld l, a
    ld c, l
    inc de
    ld e, a
    ld a, a
    ld c, l
    inc de
    cp a
    ld a, a
    dec l
    nop
    ld [$0505], sp
    rst $38
    db $f4
    inc bc
    inc bc
    inc b
    rlca
    jr @+$21

    jr z, @+$41

    dec b
    rst $38
    db $f4
    add b
    add b
    ld b, b
    ret nz

    ld a, h
    db $fc
    and d
    cp $3c
    ccf
    ld h, $3f
    ld b, d
    ld a, a
    ld b, b
    ld a, a
    ld b, h
    ld a, a
    ld h, [hl]
    ld a, a
    ccf
    ccf
    dec e
    dec e
    ld bc, $71ff
    rst $38

jr_05a_4fa7:
    inc de
    rst $38
    rrca
    rst $38
    ld c, $fe
    jr jr_05a_4fa7

    ldh a, [$f0]
    ldh [$e0], a
    dec b
    rst $38
    ldh a, [$3e]
    ld a, $41
    ld a, a
    ldh [rIE], a
    jr nc, @+$01

    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    jr @+$01

    ld [$08ff], sp
    rst $38
    inc e
    rst $38
    rst $38
    rst $38
    di
    di
    dec b
    rst $38
    db $f4
    rst $28
    rst $28
    jr c, jr_05a_4fde

    ld d, e
    ld bc, $4040
    ld h, b

jr_05a_4fde:
    ld h, b
    jr nc, @+$32

    inc l
    inc a
    inc de
    rra
    db $10
    rra
    ld [$090f], sp
    ld c, $00
    nop
    ld b, b
    ld b, b
    ld b, d
    ld b, d
    call z, Call_000_38cc
    ld hl, sp+$10
    ldh a, [$96]
    db $76
    call z, $f93c
    cp $04
    rlca
    ld [$0b0f], sp
    rrca
    dec e
    dec e
    db $10
    db $10
    jr nz, jr_05a_5029

    nop
    nop
    db $e4
    inc e
    adc [hl]
    ld a, [hl]
    db $10
    ldh a, [rBCPS]
    ld hl, sp-$68
    sbc b
    adc h
    adc h
    add d
    add d
    dec b
    rst $38
    ld a, [c]
    ld bc, $b405
    inc bc
    ld de, $1d11
    dec e
    dec b
    xor [hl]
    inc b
    ld [bc], a
    ld [bc], a

jr_05a_5029:
    ld b, $06
    adc h
    adc h
    sub h
    sbc h
    ld bc, $0501
    ld [bc], a
    inc b
    dec b
    ret nc

    nop
    inc bc
    inc bc
    jp z, $a8cf

    rst $28
    ld d, c
    ld a, [hl]
    ld b, a
    ld a, b
    adc a
    ldh a, [$3f]
    ret nz

    sbc a
    ldh [$9f], a
    ldh [$64], a
    db $fc
    ld [$89f8], sp
    ld a, c
    rst $20
    rra
    ld a, [c]
    ld c, $e4
    inc e
    di
    rrca
    ld hl, sp+$07
    dec b
    db $fc
    ld hl, sp-$10
    ldh a, [rLCDC]
    ret nz

    dec b
    and b
    rst $38
    ld c, l
    dec b
    ld l, a
    rra
    ld c, l
    dec b
    rst $08
    rra
    ld c, l
    dec b
    cpl
    cpl
    ld c, l
    dec b
    adc a
    cpl
    ld c, l
    dec b
    rst $28
    cpl
    ld c, l
    dec b
    ld c, a
    ccf
    ld c, l
    dec b
    xor a
    ccf
    ld c, l
    dec b
    rrca
    ld c, a
    ld c, l
    dec b
    ld l, a
    ld c, a
    ld c, l
    dec b
    rst $08
    ld c, a
    ld c, l
    dec b
    cpl
    ld e, a
    ld c, l
    dec b
    adc a
    ld e, a
    ld c, l
    dec b
    rst $28
    ld e, a
    ld c, l
    dec b
    ld c, a
    ld l, a
    ld c, l
    dec b
    xor a
    ld l, a
    ld c, l
    dec b
    rrca
    ld a, a
    ld c, l
    dec b
    ld l, a
    ld a, a
    ld c, l
    dec b
    rst $08
    ld a, a
    dec e
    nop
    ld [$0c0c], sp
    rst $38
    db $f4
    inc bc
    inc bc
    inc b
    rlca
    jr @+$21

    jr z, @+$41

    inc c
    rst $38
    db $f4
    add b
    add b
    ld b, b
    ret nz

    ld a, h
    db $fc
    and d
    cp $3c
    ccf
    ld h, $3f
    ld b, d
    ld a, a
    ld b, b
    ld a, a
    ld b, h
    ld a, a
    ld h, [hl]
    ld a, a
    ccf
    ccf
    dec e
    dec e
    ld bc, $71ff
    rst $38

jr_05a_50d9:
    inc de
    rst $38
    rrca
    rst $38
    ld c, $fe
    jr jr_05a_50d9

    ldh a, [$f0]
    ldh [$e0], a
    inc c
    rst $38
    ldh a, [$3e]
    ld a, $41
    ld a, a
    ldh [rIE], a
    jr nc, @+$01

    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    jr @+$01

    ld [$08ff], sp
    rst $38
    inc e
    rst $38
    rst $38
    rst $38
    di
    di
    inc c
    rst $38
    db $f4
    rst $28
    rst $28
    jr c, jr_05a_5117

    ld d, e
    ld bc, $4040
    ld h, b
    ld h, b
    jr nc, @+$32

    inc l
    inc a
    inc de
    rra

jr_05a_5117:
    db $10
    rra
    ld [$090f], sp
    ld c, $00
    nop
    ld b, b
    ld b, b
    ld b, d
    ld b, d
    call z, Call_000_38cc
    ld hl, sp+$10
    ldh a, [$96]
    db $76
    call z, $f93c
    cp $04
    rlca
    ld [$0b0f], sp
    rrca
    dec e
    dec e
    db $10
    db $10
    jr nz, jr_05a_515b

    nop
    nop
    db $e4
    inc e
    adc [hl]
    ld a, [hl]
    db $10
    ldh a, [rBCPS]
    ld hl, sp-$68
    sbc b
    adc h
    adc h
    add d
    add d
    inc c
    rst $38
    ld a, [c]
    ld bc, $b40c
    inc bc
    ld de, $1d11
    dec e
    inc c
    xor [hl]
    inc b
    ld [bc], a
    ld [bc], a

jr_05a_515b:
    ld b, $06
    adc h
    adc h
    sub h
    sbc h
    ld bc, $0c01
    ld [bc], a
    inc b
    inc c
    ret nc

    nop
    inc bc
    inc bc
    jp z, $a8cf

    rst $28
    ld d, c
    ld a, [hl]
    ld b, a
    ld a, b
    adc a
    ldh a, [$3f]
    ret nz

    sbc a
    ldh [$9f], a
    ldh [$64], a
    db $fc
    ld [$89f8], sp
    ld a, c
    rst $20
    rra
    ld a, [c]
    ld c, $e4
    inc e
    di
    rrca
    ld hl, sp+$07
    inc c
    db $fc
    ld hl, sp-$10
    ldh a, [rLCDC]
    ret nz

    inc c
    rst $38
    db $f4
    ld b, $06
    dec b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    inc c
    cp $f6
    ld bc, $c101
    pop bc
    ld a, $ff
    jr nz, jr_05a_51c8

    jr nz, jr_05a_51ca

    ld h, b
    ld h, b
    and b
    ldh [$a0], a
    ldh [rNR41], a
    inc c
    add hl, sp
    ld de, $fc0c
    ld hl, sp+$0e
    ld c, $34
    inc a
    inc c
    or h
    nop
    pop hl
    pop hl
    sbc a
    rst $38
    ld h, b
    ld a, a
    add hl, de
    ld e, $0c
    inc e

jr_05a_51c8:
    db $10
    inc c

jr_05a_51ca:
    ld [$3f02], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    sbc b
    ld a, b
    rst $00
    ccf
    ldh [$1f], a
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    db $fc
    inc bc
    ret z

    ld hl, sp+$10
    ldh a, [rNR41]

jr_05a_51eb:
    ldh [rLCDC], a
    ret nz

    ldh a, [$f0]
    rrca
    rst $38
    inc e
    db $fc
    ld h, b
    ldh [rP1], a
    nop
    ld bc, $0300
    inc b
    dec c
    ld [de], a
    ld d, $09
    ld a, [de]
    dec h
    dec l
    ld [de], a
    ld [hl], d
    dec c
    ld [de], a
    inc h
    ld l, e
    sub h
    dec l
    jp nc, Jump_05a_5aa5

    sub h
    ld l, e
    ld b, d
    cp l
    jr z, jr_05a_51eb

    add b
    ld a, a
    ld c, d
    add c
    ld l, d
    sub l
    ld l, d
    sub l
    xor d
    ld d, l
    xor d
    ld d, l
    ld [$02f7], sp
    db $fc
    ld b, h
    adc b
    add hl, de
    ld h, [hl]
    ld b, h
    dec sp
    ld [hl], d
    adc l
    adc b
    ld [hl], a
    ld h, d

jr_05a_522f:
    dec e
    jr c, @-$37

    call nz, Call_05a_703b
    rrca
    nop
    rst $38
    ld a, [bc]
    pop af
    nop
    ldh a, [rP1]
    ldh a, [rOBP0]
    add b
    nop
    add b
    ld b, b
    add b
    nop
    ret nz

    jr jr_05a_522f

    pop hl
    ld e, $78
    ld b, $00
    ld a, [hl]
    db $fc
    inc bc
    ld bc, $fa7e
    inc b
    nop
    db $fc
    inc c
    and b
    rst $38
    ld c, l
    inc c
    ld c, a
    cpl
    ld c, l
    inc c
    xor a
    cpl
    ld c, l
    inc c
    rrca
    ccf
    ld c, l
    inc c
    ld l, a
    ccf
    ld c, l
    inc c
    rst $08
    ccf
    ld c, l
    inc c
    cpl
    ld c, a
    ld c, l
    inc c
    adc a
    ld c, a
    ld c, l
    inc c
    rst $28
    ld c, a
    ld c, l
    inc c
    ld c, a
    ld e, a
    ld c, l
    inc c
    xor a
    ld e, a
    ld c, l
    inc c
    rrca
    ld l, a
    ld c, l
    inc c
    ld l, a
    ld l, a
    ld c, l
    inc c
    rst $08
    ld l, a
    ld c, l
    inc c
    cpl
    ld a, a
    ld c, l
    inc c
    adc a
    ld a, a
    ld c, l
    inc c
    rst $28
    ld a, h
    nop
    ld [$0d0d], sp
    rst $38
    db $f4
    inc bc
    inc bc
    inc b
    rlca
    jr @+$21

    jr z, @+$41

    dec c
    rst $38
    db $f4
    add b
    add b
    ld b, b
    ret nz

    ld a, h
    db $fc
    and d
    cp $3c
    ccf
    ld h, $3f
    ld b, d
    ld a, a
    ld b, b
    ld a, a
    ld b, h
    ld a, a
    ld h, [hl]
    ld a, a
    ccf
    ccf
    dec e
    dec e
    ld bc, $71ff
    rst $38

jr_05a_52c6:
    inc de
    rst $38
    rrca
    rst $38
    ld c, $fe
    jr jr_05a_52c6

    ldh a, [$f0]
    ldh [$e0], a
    dec c
    rst $38
    ldh a, [$3e]
    ld a, $41
    ld a, a
    ldh [rIE], a
    jr nc, @+$01

    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    jr @+$01

    ld [$08ff], sp
    rst $38
    inc e
    rst $38
    rst $38
    rst $38
    di
    di
    dec c
    rst $38
    db $f4
    rst $28
    rst $28
    jr c, jr_05a_5305

    ld d, e
    ld bc, $4040
    ld h, b
    ld h, b
    jr nc, @+$32

    inc l
    inc a
    inc de
    rra
    db $10

jr_05a_5305:
    rra
    ld [$090f], sp
    ld c, $00
    nop
    ld b, b
    ld b, b
    ld b, d
    ld b, d
    call z, Call_000_38cc
    ld hl, sp+$10
    ldh a, [$96]
    db $76
    call z, $f93c
    cp $04
    rlca
    ld [$0b0f], sp
    rrca
    dec e
    dec e
    db $10
    db $10
    jr nz, jr_05a_5348

    nop
    nop
    db $e4
    inc e
    adc [hl]
    ld a, [hl]
    db $10
    ldh a, [rBCPS]
    ld hl, sp-$68
    sbc b
    adc h
    adc h
    add d
    add d
    dec c
    rst $38
    ld a, [c]
    ld bc, $b40d
    inc bc
    ld de, $1d11
    dec e
    dec c
    xor [hl]
    inc b
    ld [bc], a
    ld [bc], a

jr_05a_5348:
    ld b, $06
    adc h
    adc h
    sub h
    sbc h
    ld bc, $0d01
    ld [bc], a
    inc b
    dec c
    ret nc

    nop
    inc bc
    inc bc
    jp z, $a8cf

    rst $28
    ld d, c
    ld a, [hl]
    ld b, a
    ld a, b
    adc a
    ldh a, [$3f]
    ret nz

    sbc a
    ldh [$9f], a
    ldh [$64], a

Jump_05a_5369:
    db $fc
    ld [$89f8], sp
    ld a, c
    rst $20
    rra
    ld a, [c]
    ld c, $e4
    inc e
    di
    rrca
    ld hl, sp+$07
    dec c
    db $fc
    ld hl, sp-$10
    ldh a, [rLCDC]
    ret nz

    dec c
    ld [de], a
    inc b
    ld h, b
    ld h, b
    ld d, b
    ld [hl], b
    inc l
    inc a
    inc hl
    ccf
    ld [bc], a
    ld [bc], a
    dec c
    ret z

    nop
    ld b, $06
    ld a, [bc]
    ld c, $12
    ld e, $22
    ld a, $ca
    or $0d
    db $ec
    rst $38
    add hl, bc
    ld c, $0e
    inc [hl]
    inc a
    dec c
    or h
    nop
    pop hl
    pop hl
    ld e, a
    ld a, a
    jr nc, jr_05a_53e9

    add hl, bc
    ld c, $04
    rlca
    ld [bc], a
    inc bc
    ld bc, $bffe
    ret nz

    sbc a
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    sbc b
    ld a, b
    rst $00
    ccf
    ldh [$1f], a
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    db $fc
    inc bc
    ret z

    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    ldh a, [$f0]
    rrca
    rst $38
    inc e
    db $fc
    ld h, b
    ldh [rP1], a
    call z, $aa44
    ld [bc], a
    ld b, l
    nop
    ld [bc], a
    nop

jr_05a_53e9:
    inc c
    inc b
    ld a, [hl+]
    ld [hl+], a
    ld d, l
    nop
    inc hl
    nop
    ld b, h
    ld b, h
    xor d
    ld b, b
    and h
    nop
    ld d, b
    db $10
    ld a, [hl+]
    ld [bc], a
    dec d
    ld [bc], a
    dec b
    nop
    ld [bc], a
    nop
    nop
    nop
    jr @+$1a

    ld h, $00
    ld e, b
    ld b, b
    and [hl]
    ld b, $59
    db $10
    ld l, $00
    stop
    inc b
    inc b
    ld c, d
    inc b
    ld l, d
    jr nz, @+$58

    ld [hl+], a
    ld d, l
    nop
    ld a, [hl+]
    ld [$0014], sp
    ld [$060d], sp
    inc d
    ld [$04f8], sp
    db $fc
    inc bc
    rst $38
    ld a, [c]
    rst $38
    ld a, [bc]
    ld c, $0d
    jr z, jr_05a_5440

    dec c
    ld a, [hl+]
    db $10
    daa
    ccf
    and $ff
    ld c, h
    rst $38
    dec c
    rst $38
    ld a, [c]
    inc b
    inc b
    inc c
    inc c

jr_05a_5440:
    sub h
    sbc h
    ld h, h
    db $fc
    ld b, h
    db $fc
    dec c
    or b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    ld b, $06
    dec c
    rst $38
    ld a, [c]
    dec c
    ld [hl], d
    nop
    jr @+$1a

    ld c, $0e
    rlca
    rlca
    dec c
    ret c

    ld [bc], a
    dec c
    call nz, $0301
    ld [bc], a
    inc bc
    inc bc
    inc bc
    db $fd
    rst $38
    sbc a
    rst $38
    jp Jump_05a_61ff


    ld a, a
    ldh a, [rIE]
    ld e, b
    rst $38
    ld c, h
    rst $38
    ld [hl+], a
    rst $38
    sbc b
    rst $38
    ld [$00ff], sp
    rst $38
    add b
    rst $38
    pop hl
    rst $38
    ld hl, $03ff
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    adc [hl]
    rst $38
    add hl, de
    rst $38
    ld [hl], c
    rst $38
    ret c

    rst $38
    adc h
    rst $38
    add b
    rst $38
    ld c, $fe
    jp hl


    rst $38
    ld de, $0bff
    rst $38
    inc c
    rst $38
    db $10
    rst $38

jr_05a_54a4:
    ldh a, [rIE]
    ret


    rst $38
    inc bc
    inc bc
    inc e
    rra
    ld h, c
    ld a, a
    add a
    rst $38
    inc e
    db $fc
    jr nc, jr_05a_54a4

    ldh [$e0], a
    add b
    add b
    dec c
    rst $38
    ldh a, [rTAC]
    rlca
    dec de
    rra
    db $ec
    db $fc
    db $10
    ldh a, [$60]
    ldh [$80], a
    add b
    jr nc, @+$32

    dec c
    ld a, h
    inc h
    dec c
    rst $38
    ld a, [c]
    ldh [rIE], a
    jr @+$01

    inc c
    rst $38
    ld b, $ff
    ld b, $ff
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    sbc h
    rst $38
    ld [hl+], a
    rst $38
    ld b, c
    dec c
    or a
    ld hl, $4c0d
    jr nz, jr_05a_5507

    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38

jr_05a_54f6:
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    db $fc
    ld [hl], d
    cp $19
    rst $38
    rrca
    rst $38
    ld b, $ff
    db $e4

jr_05a_5507:
    rst $38
    db $10
    rst $38
    jr c, @+$01

jr_05a_550c:
    db $10
    db $10
    ld h, b
    ld h, b
    ret nz

    ret nz

jr_05a_5512:
    ret nz

    ret nz

    jr nz, jr_05a_54f6

    rra
    rst $38
    jr jr_05a_5512

    jr nc, jr_05a_550c

    dec c
    xor [hl]
    inc b
    inc bc
    inc bc
    ld b, $07
    inc c
    rrca
    inc c
    rrca
    dec c
    and b
    rst $38
    ld c, l
    dec c
    ld e, a
    ccf
    ld c, l
    dec c
    cp a
    ccf
    ld c, l
    dec c
    rra
    ld c, a
    ld c, l
    dec c
    ld a, a
    ld c, a
    ld c, l
    dec c
    rst $18
    ld c, a
    ld c, l
    dec c
    ccf
    ld e, a
    ld c, l
    dec c
    sbc a
    ld e, a
    ld c, l
    dec c
    rst $38
    ld e, a
    ld c, l
    dec c
    ld e, a
    ld l, a
    ld c, l
    dec c
    cp a
    ld l, a
    ld c, l
    dec c
    rra
    ld a, a
    ld c, l
    dec c
    ld a, a
    ld a, a
    ld c, l
    dec c
    rst $18
    ld a, a
    dec c
    nop
    ld [$0505], sp
    rst $38
    pop af
    rrca
    nop
    jr c, jr_05a_5569

jr_05a_5569:
    ldh [rP1], a
    ldh a, [rP1]
    ld a, [hl]
    dec b
    rst $38
    pop af
    cp $00
    add a
    nop
    rlca
    nop
    inc c
    nop
    db $10
    dec b
    db $fc
    push af
    ld c, $05
    ld b, $01
    rst $38
    nop
    ld a, a
    dec b
    cp $f3
    ld bc, $0700
    nop
    inc a
    nop
    ldh a, [rTIMA]
    db $fc
    push af
    ld bc, $0e01
    ld c, $31
    jr nc, jr_05a_55e6

    ld b, b
    or b
    ret nz

    jr nc, jr_05a_559d

jr_05a_559d:
    inc bc
    inc bc
    ld a, h
    ld a, h
    add e
    ret nz

    inc a
    nop
    ret nz

    dec b
    cp $f3
    db $fc
    db $fc
    ld [bc], a

jr_05a_55ac:
    ld b, $f9
    ld b, $09
    ld [$0016], sp
    jr c, @+$07

    ld e, b
    ld bc, $0001
    ld bc, $f905
    ld hl, sp-$40
    ccf
    nop
    db $fc
    dec b
    ld a, [c]
    rst $38
    nop
    inc bc
    nop
    inc c
    dec b
    ld a, $05
    ld e, $00
    rst $38
    dec b
    ld e, b
    ld [bc], a
    ld bc, $0406
    dec de
    dec b
    ld h, b
    nop
    ld c, $f1
    ld c, $11
    inc e
    ld [hl+], a
    jr nc, jr_05a_55ac

    add b
    ld [hl], b
    nop
    add b
    nop
    nop

jr_05a_55e6:
    nop
    rlca
    nop
    inc e
    db $10
    jr z, jr_05a_560d

    ld d, b
    ld [hl], b
    adc a
    ld a, a
    add b
    nop
    ld a, a
    dec b
    ld e, b
    dec b
    ld bc, $ff00
    ldh [rNR32], a
    nop
    ldh [rTIMA], a
    cp $f3
    jr jr_05a_5608

    sbc $05
    dec b
    ldh a, [rIF]

jr_05a_5608:
    ld c, l
    dec b
    ld d, b
    rra
    ld c, l

jr_05a_560d:
    dec b
    or b
    rra
    ld c, l
    dec b
    db $10
    cpl
    ld c, l
    dec b
    ld [hl], b
    cpl
    ld c, l
    dec b
    ret nc

    cpl
    ld c, l
    dec b
    jr nc, jr_05a_565f

    ld c, l
    dec b
    sub b
    ccf
    ld c, l
    dec b
    ldh a, [$3f]
    ld c, l
    dec b
    ld d, b
    ld c, a
    ld c, l
    dec b
    or b
    ld c, a
    ld c, l
    dec b
    db $10

jr_05a_5633:
    ld e, a
    ld c, l
    dec b
    ld [hl], b
    ld e, a
    ld c, l
    dec b
    ret nc

    ld e, a
    ld c, l
    dec b
    jr nc, jr_05a_56af

    ld c, l
    dec b
    sub b
    ld l, a
    ld c, l
    dec b
    ldh a, [$6f]
    ld c, l
    dec b
    ld d, b
    ld a, a
    ld c, l
    dec b
    or b
    ld a, a
    inc a
    nop
    ld [$0002], sp
    rrca
    rlca
    jr c, jr_05a_5677

    ld h, c
    ld a, $41
    rra
    ld h, b
    rrca

jr_05a_565f:
    jr nc, jr_05a_5664

    inc e
    nop
    inc bc

jr_05a_5664:
    ccf
    ret nz

    rlca
    ld hl, sp+$20
    rst $18
    jr c, jr_05a_5633

    rra
    ldh [$cf], a
    jr nc, @-$1b

    inc e
    ld a, h
    add e
    rst $38
    nop
    rst $38

jr_05a_5677:
    nop
    ld a, b
    add a
    nop
    rst $38

jr_05a_567c:
    rra
    ldh [$c0], a
    ccf
    rst $38
    nop
    nop
    rst $38
    ld [c], a
    dec e
    inc c
    di
    inc a
    jp $07f8


    db $e3
    inc e
    rra
    ldh [$80], a
    ld a, a
    ld [hl], $c9
    nop
    add b
    nop
    ldh a, [$e0]
    ld e, $7e
    add c
    cp $01
    ldh a, [$0e]
    nop
    ld hl, sp+$02
    db $fc
    pop af
    ld bc, $0e01
    rrca
    db $10
    inc bc
    inc c
    nop
    inc bc
    ld [bc], a

jr_05a_56af:
    db $fd
    ldh a, [rNR10]
    cpl
    jr c, jr_05a_567c

    sbc h
    ld h, e
    jp $f83c


    rlca
    ld c, $f1
    nop
    rrca
    nop
    rra
    cp $01
    nop
    rst $38
    ld a, b
    add a

jr_05a_56c7:
    ccf
    ret nz

    ld bc, $78fe
    add a
    ldh [$1f], a
    ld h, e
    sbc h
    ld e, $e1
    ld hl, sp+$07
    inc bc
    db $fc
    rst $30
    ld [$3fc0], sp
    ld c, $f1
    ldh a, [rIF]
    ret nz

    jr nc, jr_05a_5752

    adc b
    ldh [rNR34], a
    ret nz

    ld a, $00
    ldh a, [rP1]
    add b
    ld [bc], a
    ei
    ld a, [c]
    rra
    ld h, b
    ld hl, $30de
    rst $08
    dec e
    ld h, d
    ld bc, $001e

jr_05a_56f9:
    rlca
    nop
    inc bc
    nop
    rlca
    jr c, jr_05a_56c7

    rrca
    ldh a, [rSVBK]
    adc a
    ld hl, sp+$07
    rst $00
    jr c, jr_05a_56f9

    rrca
    ccf
    ret nz

    nop
    rst $38
    nop
    ld hl, sp+$30
    call z, $e618
    inc a
    jp nz, Jump_000_06f8

    nop
    db $fd
    ldh [$1f], a
    rrca
    ldh a, [rSC]
    or $f7
    ldh a, [rSVBK]
    adc b
    cp b
    ld b, h

jr_05a_5726:
    inc bc
    inc e
    ld c, $31
    ld e, $61
    ld [bc], a
    ld a, [bc]
    ld bc, $0307
    inc e
    add hl, de
    ld h, [hl]
    db $fc
    inc bc
    nop
    rst $38
    ccf
    ret nz

    add a
    ld a, b
    ldh a, [rIF]
    ld a, b
    add a
    inc bc
    db $fc
    ret nz

    ccf
    rlca
    ld hl, sp+$3f
    ret nz

    cp $01
    add b
    ld a, a
    ld e, $e1
    db $fc
    inc bc
    ret nz

    inc a

jr_05a_5752:
    nop
    rst $38
    call c, $b822
    ld b, [hl]
    jr nc, jr_05a_5726

    ret nz

    jr c, jr_05a_575d

jr_05a_575d:
    ldh [rSC], a
    db $fc
    pop af
    ret nz

    nop
    inc bc
    inc bc
    inc a
    rra
    ld h, b
    inc bc
    inc a
    ld [bc], a
    ld e, d
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    ld l, $00
    ld [bc], a
    ld h, [hl]
    nop
    ld a, a
    add b
    inc bc
    ld a, h
    nop
    ld a, a
    ld b, $f9
    db $fc
    inc bc
    ccf
    ret nz

    ret nz

    ccf
    add hl, sp
    add $02
    ld a, [hl+]
    ld [bc], a
    ld [bc], a
    stop
    add e
    ld a, h
    ccf
    ret nz

    ld hl, sp+$07
    nop
    cp $cc
    inc sp
    ld a, $c1
    ld hl, sp+$07
    add b
    ld a, h
    ldh a, [$0e]
    nop
    db $fc
    ld [bc], a
    sbc b
    inc bc
    ldh a, [$e0]
    rra
    ld bc, $021e
    and $02
    ld [bc], a
    ld sp, hl
    db $f4
    di
    inc c
    pop af
    ld c, $fa
    dec b
    ld [bc], a
    jr c, jr_05a_57c7

    ld bc, $0300
    nop
    rra
    rrca
    ldh a, [$e0]
    rra
    ldh [$1f], a
    ld a, e
    add h
    inc a
    jp $f10e


jr_05a_57c7:
    jp Jump_05a_783c


    add a
    ret nz

    ccf
    ld bc, $0ffe
    ldh a, [$fc]
    inc bc
    nop
    cp $7c
    add e
    sbc h
    ld h, e
    add b
    ld a, a
    ld a, a
    add b
    rst $38
    nop
    ldh a, [rIF]
    nop
    ld [bc], a
    rst $08
    inc b
    ret nz

    nop
    ldh a, [$e0]
    jr jr_05a_57ed

    or [hl]
    dec d

jr_05a_57ed:
    ld [bc], a
    ld sp, hl
    db $f4
    jr nz, jr_05a_57f2

jr_05a_57f2:
    inc b
    ld [bc], a
    db $fc
    pop af
    jr nc, jr_05a_57f8

jr_05a_57f8:
    jr c, jr_05a_57fa

jr_05a_57fa:
    ld bc, $2000
    nop
    nop
    nop
    ld h, b
    nop
    ld h, b
    nop
    inc c
    nop
    ld [$9802], sp
    ld bc, $0025
    ld h, h
    ld [bc], a
    ld d, b
    nop
    nop
    inc hl
    ld [bc], a
    and b
    rst $38
    ld c, l
    ld [bc], a
    ld e, e
    cpl
    ld c, l
    ld [bc], a
    cp e
    cpl
    ld c, l
    ld [bc], a
    dec de
    ccf
    ld c, l
    ld [bc], a
    ld a, e
    ccf
    ld c, l
    ld [bc], a
    db $db
    ccf
    ld c, l
    ld [bc], a
    dec sp
    ld c, a
    ld c, l
    ld [bc], a
    sbc e
    ld c, a
    ld c, l
    ld [bc], a
    ei
    ld c, a
    ld c, l
    ld [bc], a
    ld e, e
    ld e, a
    ld c, l
    ld [bc], a
    cp e
    ld e, a
    ld c, l
    ld [bc], a
    dec de
    ld l, a
    ld c, l
    ld [bc], a
    ld a, e
    ld l, a
    ld c, l
    ld [bc], a
    db $db
    ld l, a
    ld c, l
    ld [bc], a
    dec sp
    ld a, a
    ld c, l
    ld [bc], a
    sbc e
    ld a, a
    ld c, l
    ld [bc], a
    ei
    ld [hl], b
    nop
    ld [$0505], sp
    rst $38
    pop af
    rrca
    nop
    jr c, jr_05a_585f

jr_05a_585f:
    ldh [rP1], a
    ldh a, [rP1]
    ld a, [hl]
    dec b
    rst $38
    pop af
    cp $00
    add a
    nop
    rlca
    nop
    inc c
    nop
    db $10
    dec b
    db $fc
    push af
    ld c, $05
    ld b, $01
    rst $38
    nop
    ld a, a
    dec b
    cp $f3
    ld bc, $0700
    nop
    inc a
    nop
    ldh a, [rTIMA]
    rrca

jr_05a_5886:
    ld [bc], a
    inc bc
    db $fc
    ld hl, sp+$07
    rrca
    nop
    ld hl, sp+$07
    rra
    nop
    ld a, h
    inc bc
    rlca
    nop
    rlca
    nop
    ld hl, sp+$00
    rrca
    ldh a, [$e0]
    rra
    jr jr_05a_5886

    ret nz

    ccf
    ld a, a
    add b
    ld bc, $f0fe
    nop
    rrca
    nop
    ldh a, [rP1]
    ccf
    ret nz

    nop
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    pop hl
    ld e, $00
    nop
    ret nz

    nop
    ccf
    nop

jr_05a_58bb:
    ret nz

    nop
    ld a, a
    add b
    nop
    rst $38
    ld b, a
    cp b
    nop
    rst $38
    dec b
    rst $38
    ldh a, [rTIMA]
    ld [hl], d
    inc b
    ld bc, $1cfe
    db $e3
    dec b
    rst $38
    ld a, [c]
    add b
    nop
    ld a, a
    nop
    add b
    nop
    cp $00
    ld bc, $70fe
    rrca
    jr nc, jr_05a_58ef

    rra
    nop
    ldh [$1f], a
    inc a
    inc bc
    rst $00
    nop
    jr c, jr_05a_58ea

jr_05a_58ea:
    rlca
    nop
    nop
    rst $38
    nop

jr_05a_58ef:
    rst $38
    ldh a, [rIF]
    jr c, jr_05a_58bb

    nop
    rst $38
    ldh [$1f], a
    dec b
    ld [hl], h
    nop
    rla
    add sp, $00
    rst $38
    rrca
    ldh a, [$c1]
    ld a, $3c
    jp $ff00


    add b
    ld a, a
    rst $38
    nop
    dec b
    ld e, d
    ld [bc], a
    adc [hl]
    ld [hl], b
    inc sp
    ret nz

    ld sp, hl
    nop
    inc c
    ldh a, [$f9]
    nop
    rra
    ldh [$c3], a
    inc a
    ld a, b
    rlca
    rst $08
    jr nc, jr_05a_5991

    adc a
    sbc a
    ld h, b
    pop hl
    ld e, $3e
    ld bc, $0000
    ldh a, [rP1]
    rra
    ldh [$80], a
    ld a, a
    ldh a, [rIF]
    rra
    ldh [$e0], a
    rra
    ccf
    ret nz

    dec b
    ld h, b
    ld [bc], a
    rra
    ldh [rTIMA], a
    jp z, Jump_05a_7800

    add a
    adc a
    dec b
    sub e
    ld bc, $007e
    add c
    dec b
    ccf
    ld bc, $ff00
    dec b
    ld a, a
    ld bc, $0000
    nop
    db $fc
    nop
    inc bc
    nop
    db $fc
    nop
    rlca
    ld hl, sp-$40
    ccf
    dec b
    rst $38
    ldh a, [rNR41]
    jr nz, @+$06

    inc b
    dec b
    rst $38
    ldh a, [$30]
    jr nc, jr_05a_59a3

    jr c, jr_05a_5974

    ld hl, sp-$20
    rra
    rrca
    ldh a, [$c0]
    ccf

jr_05a_5974:
    rlca
    ld hl, sp-$18
    rla
    dec b
    ld b, d
    nop
    dec b
    ld b, b
    inc b
    di
    nop
    dec c
    nop
    ld [bc], a
    nop
    nop
    dec b
    ld c, a
    dec b
    ld e, $e1
    add b
    ld a, a
    cp $01
    jp $e03c


jr_05a_5991:
    nop
    rra
    nop
    ldh [rTIMA], a
    ld h, l
    ld bc, $00ff
    nop
    rst $38
    pop bc
    ld a, $38
    rlca
    rrca
    nop
    rlca

jr_05a_59a3:
    nop
    jr @+$09

    rrca
    dec b
    cp $f3
    dec b
    ld d, d
    jr jr_05a_59af

    nop

jr_05a_59af:
    nop
    nop
    ld hl, sp+$07
    dec b
    ld d, h
    nop
    dec b
    db $f4
    nop
    db $fc
    inc bc
    dec b
    ld d, b
    nop
    dec b
    cp b
    nop
    dec b
    ret z

    nop
    dec b
    ld a, b
    nop
    pop bc
    ld a, $05
    dec l
    nop
    call nz, $c0c4
    ret nz

    inc e
    inc e
    ld [hl+], a
    ld a, $32
    ld a, $3a
    ld a, $1c
    inc e
    inc bc
    inc bc
    add e
    add e
    inc a
    inc a
    ld b, h
    ld a, h
    cp b
    ld hl, sp-$10
    ldh a, [rSB]
    ld bc, $2323
    dec b
    rst $38
    ldh a, [$3c]
    inc a
    ld b, d
    ld a, [hl]
    ld a, c
    ld a, a
    ld h, l
    ld a, a
    dec sp
    ccf
    inc e
    inc e
    ld c, $0e
    ld [de], a
    ld e, $25
    ccf
    add hl, hl
    ccf
    dec sp
    ccf
    ld a, $3e
    inc e
    inc e
    dec b
    ld [hl-], a
    ld bc, $0020
    nop
    nop
    ld h, b
    nop
    ld h, b
    nop
    inc c
    nop
    ld [$8000], sp
    nop
    nop
    nop
    dec h
    nop
    ld h, h
    dec b
    ld [hl-], a
    ld bc, $df05
    ld de, $1f05
    cpl
    ld c, l
    dec b
    ld a, a
    cpl
    ld c, l
    dec b
    rst $18
    cpl
    ld c, l
    dec b
    ccf
    ccf
    ld c, l
    dec b
    sbc a
    ccf
    ld c, l
    dec b
    rst $38
    ccf
    ld c, l
    dec b
    ld e, a
    ld c, a
    ld c, l
    dec b
    cp a
    ld c, a
    ld c, l
    dec b
    rra
    ld e, a
    ld c, l
    dec b
    ld a, a
    ld e, a
    ld c, l
    dec b
    rst $18
    ld e, a
    ld c, l
    dec b
    ccf
    ld l, a
    ld c, l
    dec b
    sbc a
    ld l, a
    ld c, l
    dec b
    rst $38
    ld l, a
    ld c, l
    dec b
    ld e, a
    ld a, a
    ld c, l
    dec b
    cp a
    ld a, a
    dec l
    nop
    ld [$1515], sp
    rst $38
    push af
    inc a
    inc e
    inc hl
    ld c, $31
    ld b, $19
    nop
    nop
    nop
    jr c, jr_05a_5a8d

    inc h
    jr jr_05a_5a9c

    inc l
    ld d, d
    ld e, h
    and d
    inc c
    ld a, [c]
    inc [hl]
    rl l
    rst $38
    di
    db $10
    db $10
    jr z, jr_05a_5a97

    ld l, b
    ld e, b
    and h
    ret c

    inc h
    inc bc

jr_05a_5a8d:
    db $fc
    ld c, e
    or h
    pop hl
    ld e, $e4
    dec de
    inc l
    db $d3
    add [hl]

jr_05a_5a97:
    ld a, c
    add d
    ld a, l
    ld b, b
    cp a

jr_05a_5a9c:
    jr c, @-$37

    add hl, de
    and $91
    ld l, [hl]
    sub e
    ld l, h
    ld d, [hl]

Jump_05a_5aa5:
    xor c
    dec b
    ld a, [$ce31]
    sub [hl]
    ld l, c
    ret c

    inc h
    sub b
    ld l, [hl]
    adc h
    ld [hl], d
    inc e
    db $e3
    add hl, sp
    add $b3
    ld c, h
    add c
    ld a, [hl]
    and h
    ld e, e
    dec d
    db $fc
    ld sp, hl
    pop bc
    ld b, c
    and d
    dec d
    db $fc
    ld sp, hl
    add b
    add b
    ld b, [hl]
    ld h, e
    sub h
    inc hl
    call c, $ce31
    sub h
    ld l, e
    sub $29
    rst $00
    jr c, jr_05a_5af8

    call c, $cd32
    add h
    ld c, d
    call z, $dc32
    inc hl
    ret c

    daa
    add hl, de
    and $93
    ld l, h
    ld d, $e9
    ld h, h
    sbc e
    nop
    inc c
    inc c
    ld [de], a
    ld e, $61
    ld l, h
    sub e
    ld [hl+], a
    db $dd
    inc sp
    call z, $ae51
    ret c

    daa

jr_05a_5af8:
    dec d
    stop
    jr c, jr_05a_5b43

    ld e, d
    and l
    ld h, a
    sbc b
    dec bc
    db $f4
    dec c
    ld a, [c]
    inc c
    di
    dec d
    rst $38
    pop af
    inc c
    inc c
    jp nc, Jump_000_31ce

    db $e4
    dec de
    ldh a, [rIF]
    ld [hl], b
    adc a
    dec d
    rst $38
    push af
    ld h, b
    ld b, b
    and [hl]
    ld b, d
    or l
    ld bc, $15fe
    cp $f7
    jr nz, jr_05a_5b24

jr_05a_5b24:
    jr nc, jr_05a_5b36

    jr z, jr_05a_5b28

jr_05a_5b28:
    db $10
    dec d
    ld h, $01
    jr z, @+$1a

    inc h
    jr @+$66

    jr c, jr_05a_5b77

    inc a
    ld b, d
    dec d

jr_05a_5b36:
    or $00
    inc c
    ld [hl-], a
    ld c, $11
    ld c, $11
    dec c
    ld [de], a
    dec d
    ld a, [bc]
    db $10

jr_05a_5b43:
    inc a
    ld b, d
    ld e, $e1
    ld c, $f1
    ld d, $e9
    ld a, [de]

jr_05a_5b4c:
    push hl
    ld e, $e1
    adc h
    ld [hl], e
    adc h
    ld [hl], e
    nop
    inc b
    nop
    inc c
    inc b

jr_05a_5b58:
    ld a, [bc]
    inc c
    jp nc, Jump_000_32cc

    ld c, [hl]
    or c
    adc [hl]
    ld [hl], c
    sub h
    ld l, d
    dec c
    ld [de], a
    dec b
    ld a, [de]
    ld bc, $008e
    rst $28
    inc h
    ld e, e
    ld [hl-], a
    ld c, l
    add hl, de
    ld h, [hl]
    ld [$c537], sp
    ld a, [hl-]
    push bc
    ld a, [hl-]

jr_05a_5b77:
    call nz, $e43b

jr_05a_5b7a:
    dec de
    add sp, $17
    ld l, b
    sub a
    ld l, c
    sub [hl]
    ld bc, $18fe
    db $e4
    jr c, jr_05a_5b4c

    jr nc, jr_05a_5b58

    ld h, l
    sbc d
    call c, $cd23
    ld [hl-], a
    add b
    ld a, a
    jr jr_05a_5b7a

    nop
    ldh a, [$60]
    sbc [hl]
    xor $11
    xor $11

jr_05a_5b9b:
    ld h, [hl]
    sbc c
    and b
    ld e, a
    adc b
    ld [hl], a
    ld c, h
    or e
    dec c
    ld [de], a
    dec b
    ld a, d
    ld [hl], c
    adc [hl]
    jr c, @-$37

    inc e
    db $e3
    ld l, [hl]
    sub c
    ld [hl], d
    adc l
    ld a, b
    add a
    nop
    jr c, @+$32

    ret z

    ld h, b
    sub b
    ldh [rNR10], a
    add b
    ld [hl], b
    ld h, b
    sub [hl]
    ld [hl], $c9
    inc de
    db $ec
    dec d
    sub b
    ld bc, $d822
    ld h, $18
    db $e4
    sub b
    ld l, h
    inc d
    ld [$9966], a
    dec d
    ld d, b
    inc bc
    ld [c], a
    jr c, jr_05a_5b9b

    or h
    ld c, d
    adc [hl]
    ld [hl], c
    add b
    ld a, a
    dec d
    rst $38
    push af
    jr @+$1a

    and h
    sbc h
    ld h, d
    call nz, Call_000_153b
    jp nz, $0800

    inc b
    ld [$0404], sp
    ld a, [bc]
    ld a, [bc]

jr_05a_5bf1:
    dec b
    nop
    rrca
    inc c
    inc bc
    inc c
    inc bc
    ld [$0907], sp

jr_05a_5bfb:
    ld b, $09
    ld b, $15
    jp z, Jump_000_0912

    ld b, $15
    rst $38
    di
    ld [$0408], sp
    ld [$0a06], sp
    dec b
    dec bc
    inc b
    dec bc
    inc b

jr_05a_5c11:
    add hl, bc
    ld b, $01
    ld c, $08
    rlca
    inc c
    inc bc
    dec c
    ld [bc], a

Call_05a_5c1b:
    ld bc, $050e
    ld a, [bc]

jr_05a_5c1f:
    dec d
    ld [hl+], a
    ld [bc], a
    nop
    db $10
    db $10
    jr nz, jr_05a_5c3c

    ld [$3020], sp
    ld b, b
    jr nc, jr_05a_5c6d

    ld [hl], b
    add b
    ld [hl], b
    add b
    ld h, b
    sub b
    ld d, b
    and b
    ld [hl], b
    add b
    jr nc, @-$3e

    jr nc, jr_05a_5bfb

    and b

jr_05a_5c3c:
    ld d, b
    and b
    ld d, b
    jr nz, jr_05a_5c11

    jr nz, @-$2e

    db $10
    ldh [rNR10], a
    ldh [$90], a
    ld h, b
    add b
    ld [hl], b
    dec d
    ld [$2000], a
    ld d, b
    dec d
    ld c, $24
    jr nz, jr_05a_5ca5

    db $10
    jr nz, jr_05a_5c68

    and b
    nop
    ldh a, [$a0]
    ld d, b
    jr nc, jr_05a_5c1f

    or b
    ld b, b
    nop
    ldh a, [rNR10]
    ldh [rP1], a
    jr nc, jr_05a_5c7d

jr_05a_5c68:
    db $10
    jr nz, jr_05a_5c9b

    ret nz

    ld b, b

jr_05a_5c6d:
    or b
    ret nz

    jr nc, jr_05a_5bf1

    ld [hl], b
    db $10
    ldh [$15], a
    and b
    rst $38
    ld c, l
    dec d
    cp a
    cpl
    ld c, l
    dec d

jr_05a_5c7d:
    rra
    ccf
    ld c, l
    dec d
    ld a, a
    ccf
    ld c, l
    dec d
    rst $18
    ccf
    ld c, l
    dec d
    ccf
    ld c, a
    ld c, l
    dec d

jr_05a_5c8d:
    sbc a
    ld c, a
    ld c, l
    dec d
    rst $38
    ld c, a
    ld c, l
    dec d
    ld e, a
    ld e, a
    ld c, l
    dec d
    cp a
    ld e, a

jr_05a_5c9b:
    ld c, l
    dec d
    rra
    ld l, a
    ld c, l
    dec d
    ld a, a
    ld l, a
    ld c, l
    dec d

jr_05a_5ca5:
    rst $18
    ld l, a
    ld c, l
    dec d
    ccf
    ld a, a
    ld c, l
    dec d
    sbc a
    ld a, a
    ld c, l
    nop
    ld [$0a0a], sp
    rst $38
    push af
    jr nz, jr_05a_5cb8

jr_05a_5cb8:
    ld h, b
    jr nz, jr_05a_5d0b

    jr nz, jr_05a_5c8d

    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    ld bc, $0102
    ld b, $02
    inc b
    ld bc, $700c
    adc b
    ld [hl], b
    adc b
    ld a, b
    inc b
    jr c, jr_05a_5cd9

    inc e
    ld [bc], a
    adc h
    ld [bc], a

jr_05a_5cd9:
    call nz, Call_05a_6202
    ld bc, $ff0a
    pop af
    add b
    nop
    ret nz

    nop
    and b
    nop
    sub b
    nop
    adc b
    nop
    add [hl]
    nop
    ld [$1800], sp
    nop
    db $10
    ld [$1c30], sp
    jr nz, jr_05a_5d14

    ld h, b
    ccf
    ld b, b
    ccf
    ret nz

    or b
    ld bc, $0058
    inc l
    nop
    ld d, $01
    ld [$0503], sp
    ld [bc], a
    ld bc, $8306
    inc b

jr_05a_5d0b:
    ld a, [bc]
    ld [hl-], a
    ld bc, $0080
    ret nz

    add b
    ld b, b
    add b

jr_05a_5d14:
    ld b, b
    add b
    ld b, d
    add b
    ld b, d
    nop
    ld [$700a], sp
    rlca
    inc c
    nop
    ld c, $00
    stop
    add hl, bc
    ld [$0c05], sp
    inc bc
    inc e
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    ld a, [hl]
    ld bc, $807f
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rra
    ldh [$27], a
    ret c

    dec sp
    call nz, Call_000_0cc3
    rst $20
    ld [$18e7], sp
    and $19
    adc $31
    call z, $8d33
    ld h, d
    adc c
    ld h, [hl]
    add b
    ld b, [hl]
    inc b
    jp z, $d20c

    inc e
    ld [c], a
    cp h
    ld b, d
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    inc a
    jp Jump_000_140a


    nop
    nop
    ld c, $04
    ld a, [de]
    inc c
    ld [hl-], a
    inc e
    ld h, d
    jr c, @-$3a

    ld a, b
    add h
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    rrca
    nop
    rrca
    inc b
    dec bc
    rlca
    ld [$057a], sp
    ld a, b
    add a
    dec de
    db $e4
    inc bc
    db $fc
    ld [hl], e
    adc h
    dec bc
    db $f4
    ld b, d
    cp h
    ld [hl], b
    adc [hl]
    inc e
    db $e3
    ld c, $f1
    ld c, $f1
    add [hl]
    add hl, sp
    ld [bc], a

jr_05a_5d99:
    dec e
    ld [$1807], sp
    rlca
    inc d
    dec bc
    adc d
    ld b, l
    ld [bc], a
    call $8b04
    dec b
    sbc d
    add hl, bc
    sub [hl]
    dec bc
    or h

jr_05a_5dac:
    ld [de], a
    db $ed
    sub [hl]
    ld l, c
    jr jr_05a_5d99

    sub b
    ld l, l
    add b
    ld a, c
    add b
    ld [hl], c
    ld bc, $01e2
    ld [c], a
    ld de, $19e2
    ld [c], a
    ld a, b
    add h
    ld hl, sp+$04
    ldh a, [$08]
    ld a, [bc]
    inc h
    ld [de], a
    ldh [rNR10], a
    ldh [rNR10], a
    inc bc
    inc b
    ld bc, $0046

jr_05a_5dd2:
    ccf
    ld a, [de]
    dec h
    dec c
    ld [de], a
    ld b, $09
    ld [bc], a
    dec b
    nop

jr_05a_5ddc:
    inc bc
    ld a, h
    add e
    cp b
    ld b, a
    or [hl]
    ld c, c
    inc de
    db $ec
    ret


    ld [hl], $e8
    rla
    inc l
    db $d3
    inc b
    ei
    inc [hl]
    dec bc
    ld l, $91
    ld l, $d1
    ld e, $e1
    rrca

jr_05a_5df6:
    ldh a, [$8f]
    ld [hl], b
    add a
    ld a, b
    ld b, e
    cp h
    inc b
    ei
    ld a, b
    add a
    db $fc
    inc bc
    dec a
    jp nz, $a659

    ld b, h
    cp e
    jr c, jr_05a_5dd2

    jr nc, jr_05a_5ddc

    jr jr_05a_5df6

    sub e
    ld l, h
    add a
    ld a, b
    add b
    ld a, a
    ccf
    ret nz

    nop
    rst $38
    db $fc
    inc bc
    nop
    rst $38
    nop
    ld a, [c]
    ret nz

    ld a, $88
    ld [hl], h
    db $10
    add sp, $30
    ret z

    ld h, b
    sub b
    ret nz

    jr nz, jr_05a_5dac

    ld b, b
    ld a, [bc]
    rst $38
    push af
    stop
    stop

jr_05a_5e34:
    jr jr_05a_5e36

jr_05a_5e36:
    jr jr_05a_5e42

    rst $38
    push af
    inc a
    inc e
    inc hl
    ld c, $31
    ld b, $19
    db $10

jr_05a_5e42:
    jr z, jr_05a_5e5c

    inc h
    ld a, [bc]
    or d
    db $10
    inc l

jr_05a_5e49:
    ld d, d
    ld e, h
    and d
    inc c
    ld a, [c]
    inc [hl]
    rrc d
    sub d
    inc d
    db $10
    jr z, @+$12

    ld l, b
    ld e, b
    and h
    ret c

    inc h
    inc bc

jr_05a_5e5c:
    inc c
    inc bc
    inc b
    ld bc, $040e
    dec bc
    inc c
    inc de
    ld b, $19
    ld [de], a
    dec l
    nop
    ccf
    jr c, jr_05a_5e34

    add hl, de
    and $91
    ld l, [hl]
    sub e
    ld l, h
    ld d, [hl]
    xor c
    dec b
    ld a, [$ce31]
    sub [hl]
    ld l, c
    ret c

    inc h
    sub b
    ld l, [hl]
    adc h
    ld [hl], d
    inc e
    ld [c], a
    jr c, jr_05a_5e49

    or b
    ld c, b
    add b
    ld a, h
    and h
    ld e, d
    ld a, [bc]
    db $fc
    ld sp, hl
    pop bc
    ld b, c
    and d
    ld a, [bc]
    db $fc
    ld sp, hl
    add b
    add b
    ld b, [hl]
    ld h, e
    sub h
    inc hl
    ld e, h
    ld sp, $144e
    ld l, e
    ld d, $29
    rlca
    jr c, jr_05a_5ec7

    ld e, h
    ld [hl-], a
    ld c, l
    add h
    ld c, d
    call z, $dc32
    ld [hl+], a
    ret c

    ld h, $18
    db $e4
    sub b
    ld l, h
    db $10
    db $ec
    ld h, h
    sbc d
    ld a, [bc]
    and b
    rst $38
    ld c, l
    ld a, [bc]
    sbc a
    cpl
    ld c, l
    ld a, [bc]
    rst $38
    cpl
    ld c, l
    ld a, [bc]
    ld e, a
    ccf
    ld c, l

jr_05a_5ec7:
    ld a, [bc]
    cp a
    ccf
    ld c, l
    ld a, [bc]
    rra
    ld c, a
    ld c, l
    ld a, [bc]
    ld a, a
    ld c, a
    ld c, l
    ld a, [bc]
    rst $18
    ld c, a
    ld c, l
    ld a, [bc]
    ccf
    ld e, a
    ld c, l
    ld a, [bc]
    sbc a
    ld e, a
    ld c, l
    ld a, [bc]
    rst $38
    ld e, a
    ld c, l
    ld a, [bc]
    ld e, a
    ld l, a
    ld c, l
    ld a, [bc]
    cp a
    ld l, a
    ld c, l
    ld a, [bc]
    rra
    ld a, a
    ld c, l
    ld a, [bc]
    ld a, a
    ld a, a
    ld c, l
    ld a, [bc]
    rst $18
    ld a, a
    dec c
    nop
    ld [$0001], sp
    nop
    nop
    inc e
    inc c
    ld [de], a
    inc c
    jp nc, $ad42

    nop
    ld h, e
    nop
    ld [$0400], sp
    nop
    jr c, @+$3a

    ld b, h
    jr c, jr_05a_5f54

    nop
    inc a
    nop
    nop
    nop
    ld b, $06
    add hl, bc
    nop
    ld b, $00
    ld h, b
    ld h, b
    sub b
    nop
    ld h, b
    nop
    inc e
    inc e
    ld [hl+], a
    inc c
    ld [de], a
    nop
    inc c
    ld bc, $0018
    ld [bc], a
    dec b
    nop
    ld h, a
    ld h, b
    sub b
    ld [hl], b
    adc b
    jr nc, jr_05a_5f7d

    nop
    dec sp
    nop
    inc bc
    nop
    ld b, b
    nop
    ld b, b
    ld b, b
    and h
    ld b, h
    xor d
    ld b, $49
    ld bc, $011c
    nop
    nop
    call z, $aa44
    ld [bc], a
    ld b, l
    nop
    ld [bc], a
    nop
    inc c
    inc b
    ld a, [hl+]
    ld [hl+], a

jr_05a_5f54:
    ld d, l
    nop
    inc hl
    nop
    ld b, h
    ld b, h
    xor d
    ld b, b
    and h
    nop
    ld d, b
    db $10
    ld a, [hl+]
    ld [bc], a
    dec d
    ld [bc], a
    dec b
    nop
    ld [bc], a
    nop
    jr jr_05a_5f82

    ld h, h
    nop
    jr jr_05a_5f6e

jr_05a_5f6e:
    ld [bc], a
    ld [bc], a
    ld h, l
    ld h, b
    sbc d
    ld [$0174], sp
    inc c
    nop
    inc b
    ld c, d
    inc b
    ld c, d
    ld b, b

jr_05a_5f7d:
    and [hl]
    ld b, d
    and l
    nop
    ld c, d

jr_05a_5f82:
    ld [$0014], sp
    ld [$0000], sp
    nop
    ld b, c
    ld b, b
    and b
    nop
    ld c, [hl]
    ld c, $31
    nop
    ld c, $00
    ld h, b
    nop
    nop
    ld bc, $0080
    nop
    ld d, h
    nop
    db $10
    db $10
    jr z, jr_05a_5fa1

    xor b

jr_05a_5fa1:
    nop
    nop
    ld [de], a
    jr nc, jr_05a_5ff0

    ld h, b
    inc d
    ld h, b
    sbc d
    ret nz

    inc l
    ret nz

    ld a, [hl+]

jr_05a_5fae:
    ldh [rNR33], a
    ld a, b
    add [hl]
    inc a
    ld b, d
    inc e
    ld [hl+], a
    inc e
    inc bc
    jr c, jr_05a_6000

    ld [hl], b
    adc l
    ldh [rNR30], a
    ldh [rNR14], a
    ld h, b
    sbc d
    jr nc, jr_05a_6010

    rst $20
    jr jr_05a_5fae

    jr jr_05a_602f

    sbc c
    inc a
    ld b, d
    inc a
    nop
    ld h, [hl]
    jr jr_05a_6037

    sbc c
    jp $c324


    inc h
    rst $20
    jr jr_05a_6057

    add c
    inc a
    ld b, d
    jr jr_05a_5fde

jr_05a_5fde:
    jr jr_05a_5fe0

jr_05a_5fe0:
    inc a
    ld b, d
    ld a, [hl]
    add c
    nop
    ld [bc], a
    ld [bc], a
    dec b
    nop
    ld h, d
    ld h, b
    sbc b
    ld a, b
    add h
    ld a, b
    add h

jr_05a_5ff0:
    ld bc, $0172
    ld b, b
    ld b, b
    and h
    nop
    ld b, b
    nop
    inc a
    inc a
    ld b, d
    ld a, $41
    ld e, $21

jr_05a_6000:
    nop
    ld e, $01
    jr nz, jr_05a_6008

    ld a, $3e
    pop bc

jr_05a_6008:
    ld a, [hl]
    add c
    inc e
    ld h, d
    nop
    inc e
    nop
    nop

jr_05a_6010:
    nop
    ld a, b
    ld a, b
    add h
    ld a, h
    add d
    ld bc, $130a
    ld bc, $f1ff
    inc e
    ld h, d
    ld a, [hl]
    add c
    ld bc, $151a
    ld bc, $1f40
    ld c, l
    ld bc, $1fa0
    ld c, l
    ld bc, $2f00
    ld c, l

jr_05a_602f:
    ld bc, $2f60
    ld c, l
    ld bc, $2fc0
    ld c, l

jr_05a_6037:
    ld bc, $3f20
    ld c, l
    ld bc, $3f80
    ld c, l
    ld bc, $3fe0
    ld c, l
    ld bc, $4f40
    ld c, l
    ld bc, $4fa0
    ld c, l
    ld bc, $5f00
    ld c, l
    ld bc, $5f60
    ld c, l
    ld bc, $5fc0
    ld c, l

jr_05a_6057:
    ld bc, $6f20
    ld c, l
    ld bc, $6f80
    ld c, l
    ld bc, $6fe0
    ld c, l
    ld bc, $7f40
    ld c, l
    ld bc, $7fa0
    ld c, h
    nop
    ld [$420b], sp
    cp l
    ld h, [hl]
    sbc c
    inc a
    ld b, d
    nop
    inc a
    dec bc
    ld hl, sp-$0c
    cpl
    ret nc

    cpl
    ret nc

    scf
    ret z

    dec de
    ld h, h
    inc c
    ld [hl], e
    rlca
    jr c, jr_05a_6086

jr_05a_6086:
    rra
    nop
    rlca
    db $10
    jr z, jr_05a_6097

    jr nz, jr_05a_608e

jr_05a_608e:
    nop
    jr c, jr_05a_6091

jr_05a_6091:
    db $10

jr_05a_6092:
    dec bc
    jr z, jr_05a_6097

    jr z, @+$56

jr_05a_6097:
    dec bc
    jr nc, jr_05a_609a

jr_05a_609a:
    jr c, @+$46

    dec bc
    jr nz, @+$04

    db $10
    jr z, jr_05a_60ba

    inc h
    ld [$0834], sp
    inc d
    jr jr_05a_60cd

    dec bc
    jr nz, jr_05a_60ac

jr_05a_60ac:
    ld [$0414], sp
    ld a, [bc]
    inc b
    ld a, [bc]
    ld [$0814], sp
    inc d
    db $10
    jr z, jr_05a_60b9

jr_05a_60b9:
    inc e

jr_05a_60ba:
    nop
    inc b
    nop
    ld [$0800], sp
    nop
    ld bc, $0100
    ld bc, $0202
    dec b
    ld [bc], a
    dec b
    dec bc
    ld d, b
    nop

jr_05a_60cd:
    db $10
    jr z, @-$3e

    jr nz, jr_05a_6092

    jr nz, @-$1e

    db $10
    ld d, b
    xor b
    ld c, b
    or h
    ld b, h
    xor d
    ld b, h
    xor d
    jr z, jr_05a_6133

    ld [$0814], sp
    ld d, $04
    ld a, [hl-]
    ld [bc], a
    dec [hl]
    ld bc, $0012
    ld hl, $4100
    nop
    nop
    inc c
    ld [de], a
    ld b, $09
    ld b, $09
    ld c, $11
    inc e
    ld [c], a
    ld hl, sp+$06
    add sp, $16
    ld b, h
    xor e
    dec bc
    ld d, b
    ld [bc], a
    jr @+$27

    jr jr_05a_612b

    inc e
    ld [hl+], a
    ld e, $21
    rra
    jr nz, jr_05a_612d

    ld e, b
    ld b, b
    xor h
    ld b, b
    and [hl]
    add b
    ld b, [hl]
    ret nz

    ld [hl+], a
    ld b, b
    and [hl]

jr_05a_6118:
    add b
    ld c, h
    nop
    add b
    nop
    inc bc
    nop
    ld b, $00
    inc b
    nop
    ld b, $00
    ld [bc], a
    dec bc
    jp nz, Jump_000_0001

    ld [hl], b

jr_05a_612b:
    adc b
    ld h, b

jr_05a_612d:
    sub b
    jr nz, @+$52

    dec bc
    ld c, d
    inc b

jr_05a_6133:
    ld b, $09
    dec bc
    ld sp, hl
    di
    rlca
    rlca
    ld [$1708], sp
    ld [$0717], sp
    ld [$3906], sp
    ld a, $41
    ld c, h
    or d
    add h
    ld c, d
    inc c
    sub d
    dec bc
    ld d, h
    nop
    jr nc, jr_05a_6118

    rra
    ldh [rTAC], a
    jr jr_05a_6157

    dec d
    inc bc

jr_05a_6157:
    inc d
    ld bc, $011a
    ld a, [bc]
    nop
    add hl, bc
    nop
    ld bc, $8100
    nop
    sbc [hl]
    ret nz

    jr c, @+$32

    call z, $a21c
    or b
    ld c, h
    ldh [rNR10], a
    ret nz

    jr nz, jr_05a_6172

    add d

jr_05a_6172:
    ld bc, $0162
    ld [hl], $03
    inc d
    rlca
    jr @+$03

    ld h, $01
    ld [hl+], a
    ld bc, $0002
    add b
    nop
    add b
    nop
    ret nz

    add b
    ld a, h
    nop
    sbc e
    nop
    adc b
    add b
    ld c, [hl]
    add b
    ld b, b
    inc c
    ld [de], a
    ld c, $11
    inc de
    inc l
    ld de, $202a
    ld d, c
    ld b, b
    and b
    ld b, b
    cp b
    jr c, jr_05a_61e4

    dec bc
    ei
    pop af
    ret nz

    ret nz

    jr nc, jr_05a_6217

    adc b
    jr c, jr_05a_61ee

    dec bc
    ld e, d
    db $10
    inc c
    inc sp
    rlca
    ld [$100f], sp
    jr @+$29

    jr nc, jr_05a_6200

    ld h, c
    sub [hl]
    ld b, a
    xor b
    ld c, h
    or e
    ld [hl], b
    adc b
    ldh a, [$08]
    db $10
    add sp, $08
    inc d
    inc b
    ld a, [$04f8]
    nop
    ld hl, sp+$00
    ld [hl], b
    ld d, b
    xor h
    ld h, b
    sub b
    jr nc, jr_05a_621f

    inc e
    inc hl
    rlca
    jr c, jr_05a_61d9

    ld b, [hl]

jr_05a_61d9:
    inc bc
    add h
    ld b, $89
    nop
    jr c, jr_05a_61eb

    ld e, h
    ld bc, $0b08

jr_05a_61e4:
    jr nc, jr_05a_61f7

    add b
    nop
    call c, $120c

jr_05a_61eb:
    dec bc
    ld b, [hl]
    ld [bc], a

jr_05a_61ee:
    jr jr_05a_6214

    jr jr_05a_6216

    inc h
    ld e, d
    ld h, $59
    nop

jr_05a_61f7:
    ld a, b
    nop
    jr nc, jr_05a_61fb

jr_05a_61fb:
    ld e, $0b
    or $f6

Jump_05a_61ff:
    ld [hl+], a

jr_05a_6200:
    ld d, l
    inc sp

Call_05a_6202:
    ld c, h
    inc de
    inc l
    rla
    jr z, jr_05a_6227

    nop
    rra
    jr nz, jr_05a_623c

    ld c, a
    ld h, b
    sub b
    nop
    nop
    dec bc
    jr nc, jr_05a_6224

jr_05a_6214:
    add b
    ld b, b

jr_05a_6216:
    add b

jr_05a_6217:
    ld b, b
    nop
    add b
    dec bc
    ld sp, hl
    di
    inc b
    nop

jr_05a_621f:
    jr jr_05a_6231

    ld l, b
    ld h, b
    sbc h

jr_05a_6224:
    ret nz

    jr nc, @-$1e

jr_05a_6227:
    ld e, $00
    ldh [$0b], a
    and b
    rst $38
    ld c, l
    dec bc
    ld c, a
    cpl

jr_05a_6231:
    ld c, l
    dec bc
    xor a
    cpl
    ld c, l
    dec bc
    rrca
    ccf
    ld c, l
    dec bc
    ld l, a

jr_05a_623c:
    ccf
    ld c, l
    dec bc
    rst $08
    ccf
    ld c, l
    dec bc
    cpl
    ld c, a
    ld c, l
    dec bc
    adc a
    ld c, a
    ld c, l
    dec bc
    rst $28
    ld c, a
    ld c, l
    dec bc
    ld c, a
    ld e, a
    ld c, l
    dec bc
    xor a
    ld e, a
    ld c, l
    dec bc
    rrca
    ld l, a
    ld c, l
    dec bc
    ld l, a
    ld l, a
    ld c, l
    dec bc
    rst $08
    ld l, a
    ld c, l
    dec bc
    cpl
    ld a, a
    ld c, l
    dec bc
    adc a
    ld a, a
    ld c, l
    dec bc
    rst $28
    ld a, h
    nop
    ld [$3e0b], sp
    pop bc
    ld l, e
    sub h
    inc e
    ld h, e
    nop
    ld a, $0b
    ld hl, sp-$0c
    scf
    ret z

    ld h, l
    sbc d
    dec sp
    call nz, Call_05a_6b14
    dec a
    ld b, d
    rla
    jr z, jr_05a_628a

    dec e
    nop

jr_05a_628a:
    rlca
    db $10
    jr z, jr_05a_6299

    jr nz, jr_05a_6290

jr_05a_6290:
    nop
    jr c, jr_05a_6293

jr_05a_6293:
    db $10

jr_05a_6294:
    dec bc
    jr z, jr_05a_6299

    jr z, @+$56

jr_05a_6299:
    dec bc
    jr nc, jr_05a_629c

jr_05a_629c:
    jr c, @+$46

    dec bc
    jr nz, @+$04

    db $10
    jr z, jr_05a_62bc

    inc h
    ld [$0834], sp
    inc d
    jr jr_05a_62cf

    dec bc
    jr nz, jr_05a_62ae

jr_05a_62ae:
    ld [$0414], sp
    ld a, [bc]
    inc b
    ld a, [bc]
    ld [$0814], sp
    inc d
    db $10
    jr z, jr_05a_62bb

jr_05a_62bb:
    inc e

jr_05a_62bc:
    nop
    inc b
    nop
    ld [$0800], sp
    nop
    ld bc, $0100
    ld bc, $0202
    dec b
    ld [bc], a
    dec b
    dec bc
    ld d, b
    nop

jr_05a_62cf:
    db $10
    jr z, @-$3e

    jr nz, jr_05a_6294

    jr nz, @-$1e

    db $10
    ld d, b
    xor b
    ld c, b
    or h
    ld b, h
    xor d
    ld b, h
    xor d
    jr z, jr_05a_6335

    ld [$0814], sp
    ld d, $04
    ld a, [hl-]
    ld [bc], a
    dec [hl]
    ld bc, $0012
    ld hl, $4100
    nop
    nop
    inc c
    ld [de], a
    ld b, $09
    ld b, $09
    ld c, $11
    inc e
    ld [c], a
    ld hl, sp+$06
    add sp, $16
    ld b, h
    xor e
    dec bc
    ld d, b
    ld [bc], a
    jr @+$27

    jr jr_05a_632d

    inc e
    ld [hl+], a
    ld e, $21
    rra
    jr nz, jr_05a_632f

    ld e, b
    ld b, b
    xor h
    ld b, b
    and [hl]
    add b
    ld b, [hl]
    ret nz

    ld [hl+], a
    ld b, b
    and [hl]

jr_05a_631a:
    add b
    ld c, h
    nop
    add b
    nop
    inc bc
    nop
    ld b, $00
    inc b
    nop
    ld b, $00
    ld [bc], a
    dec bc
    jp nz, Jump_000_0001

    ld [hl], b

jr_05a_632d:
    adc b
    ld h, b

jr_05a_632f:
    sub b
    jr nz, @+$52

    dec bc
    ld c, d
    inc b

jr_05a_6335:
    ld b, $09
    dec bc
    ld sp, hl
    di
    rlca
    rlca
    ld [$1708], sp
    ld [$0717], sp
    ld [$3906], sp
    ld a, $41
    ld c, h
    or d
    add h
    ld c, d
    inc c
    sub d
    dec bc
    ld d, h
    nop
    jr nc, jr_05a_631a

    rra
    ldh [rTAC], a
    jr jr_05a_6359

    dec d
    inc bc

jr_05a_6359:
    inc d
    ld bc, $011a
    ld a, [bc]
    nop
    add hl, bc
    nop
    ld bc, $8100
    nop
    sbc [hl]
    ret nz

    jr c, @+$32

    call z, $a21c
    or b
    ld c, h
    ldh [rNR10], a
    ret nz

    jr nz, jr_05a_6374

    add d

jr_05a_6374:
    ld bc, $0162
    ld [hl], $03
    inc d
    rlca
    jr @+$03

    ld h, $01
    ld [hl+], a
    ld bc, $0002
    add b
    nop
    add b
    nop
    ret nz

    add b
    ld a, h
    nop
    sbc e
    nop
    adc b
    add b
    ld c, [hl]
    add b
    ld b, b
    inc c
    ld [de], a
    ld c, $11
    inc de
    inc l
    ld de, $202a
    ld d, c
    ld b, b
    and b
    ld b, b
    cp b
    jr c, jr_05a_63e6

    dec bc
    ei
    pop af
    ret nz

    ret nz

    jr nc, jr_05a_6419

    adc b
    jr c, jr_05a_63f0

    dec bc
    ld e, d
    db $10
    inc c
    inc sp
    rlca
    ld [$100f], sp
    jr @+$29

    jr nc, jr_05a_6402

    ld h, c
    sub [hl]
    ld b, a
    xor b
    ld c, h
    or e
    ld [hl], b
    adc b
    ldh a, [$08]
    db $10
    add sp, $08
    inc d
    inc b
    ld a, [$04f8]
    nop
    ld hl, sp+$00
    ld [hl], b
    ld d, b
    xor h
    ld h, b
    sub b
    jr nc, jr_05a_6421

    inc e
    inc hl
    rlca
    jr c, jr_05a_63db

    ld b, [hl]

jr_05a_63db:
    inc bc
    add h
    ld b, $89
    nop
    jr c, jr_05a_63ed

    ld e, h
    ld bc, $0b08

jr_05a_63e6:
    jr nc, jr_05a_63f9

    add b
    nop
    call c, $120c

jr_05a_63ed:
    dec bc
    ld b, [hl]
    ld [bc], a

jr_05a_63f0:
    jr jr_05a_6416

    jr jr_05a_6418

    inc h
    ld e, d
    ld h, $59
    nop

jr_05a_63f9:
    ld a, b
    nop
    jr nc, jr_05a_63fd

jr_05a_63fd:
    ld e, $0b
    or $f6
    ld [hl+], a

jr_05a_6402:
    ld d, l
    inc sp
    ld c, h
    inc de
    inc l
    rla
    jr z, jr_05a_6429

    nop
    rra
    jr nz, @+$32

    ld c, a
    ld h, b
    sub b
    nop
    nop
    dec bc
    jr nc, jr_05a_6426

jr_05a_6416:
    add b
    ld b, b

jr_05a_6418:
    add b

jr_05a_6419:
    ld b, b
    nop
    add b
    dec bc
    db $fc
    ldh a, [$50]
    xor c

jr_05a_6421:
    ret nc

    inc l
    ld hl, sp+$06
    or h

jr_05a_6426:
    ld c, e
    and a
    ld e, b

jr_05a_6429:
    ld c, b
    or a
    ld b, h
    cp e
    nop
    db $fc
    nop

jr_05a_6430:
    nop
    nop
    stop
    ldh [$80], a
    ld b, b
    nop
    or b
    nop
    ret nz

    dec bc
    call c, $ac11
    call nc, $f42b
    ld a, [bc]
    ld l, h
    sub e
    ld e, a
    and b
    jr jr_05a_6430

    inc h
    db $db
    nop
    db $fc
    nop
    ldh [rP1], a
    add b
    nop
    ld c, $00
    ldh a, [$0b]
    ld a, [$f011]
    nop
    nop
    ld e, [hl]
    nop
    ld d, [hl]
    nop
    ld [hl], e
    nop
    daa
    nop
    xor [hl]
    nop
    xor h
    nop
    or [hl]
    nop
    ld [hl], $0b
    and b
    rst $38
    ld c, l
    dec bc
    adc [hl]
    cpl
    ld c, l
    dec bc
    xor $2f
    ld c, l
    dec bc
    ld c, [hl]
    ccf
    ld c, l
    dec bc
    xor [hl]
    ccf
    ld c, l
    dec bc
    ld c, $4f
    ld c, l
    dec bc
    ld l, [hl]
    ld c, a
    ld c, l
    dec bc
    adc $4f
    ld c, l
    dec bc
    ld l, $5f
    ld c, l
    dec bc
    adc [hl]
    ld e, a
    ld c, l
    dec bc
    xor $5f
    ld c, l
    dec bc
    ld c, [hl]
    ld l, a
    ld c, l
    dec bc

Call_05a_649b:
    xor [hl]
    ld l, a
    ld c, l
    dec bc
    ld c, $7f
    ld c, l
    dec bc
    ld l, [hl]
    ld a, a
    ld c, l
    dec bc
    adc $7f
    ld e, $00
    ld [$541b], sp
    xor d
    ld l, h
    sub d
    ld d, h
    xor d
    jr c, jr_05a_64f9

    nop
    jr c, jr_05a_64d3

    ld a, [$37f2]
    ret z

    ld h, l
    sbc d
    dec sp
    call nz, Call_05a_6b14
    dec a
    ld b, d
    rla
    jr z, jr_05a_64c9

    dec e
    nop

jr_05a_64c9:
    rlca
    nop
    rlca
    ld [bc], a
    dec e
    dec bc
    inc [hl]
    rrca
    ld [hl], b
    scf

jr_05a_64d3:
    ld c, b
    rra
    ldh [$7f], a
    add b
    ccf
    ret nz

jr_05a_64da:
    nop
    rst $20

jr_05a_64dc:
    ld b, a
    cp b
    sbc $21
    cp $01
    db $fc
    ld [bc], a
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    jr @+$26

    ld [$0834], sp
    inc d
    jr jr_05a_6516

    db $10
    jr z, jr_05a_6505

    jr z, jr_05a_64ff

    inc d
    inc b

jr_05a_64f9:
    ld a, [bc]
    inc b
    ld a, [bc]
    ld [$0814], sp

jr_05a_64ff:
    inc d
    db $10
    jr z, jr_05a_6503

jr_05a_6503:
    inc e
    nop

jr_05a_6505:
    inc b
    nop
    ld [$0800], sp
    nop
    ld bc, $0100
    ld bc, $0202
    dec b
    ld [bc], a
    dec b
    dec de
    ld d, b

jr_05a_6516:
    nop
    db $10
    jr z, jr_05a_64da

    jr nz, jr_05a_64dc

    jr nz, @-$1e

    db $10
    ld d, b
    xor b
    ld c, b
    or h
    ld b, h
    xor d
    ld b, h
    xor d
    jr z, jr_05a_657d

    ld [$0814], sp
    ld d, $04
    ld a, [hl-]
    ld [bc], a
    dec [hl]
    ld bc, $0012
    ld hl, $4100
    nop
    nop
    inc c
    ld [de], a
    ld b, $09
    ld b, $09
    ld c, $11
    inc e
    ld [c], a
    ld hl, sp+$06
    add sp, $16
    ld b, h
    xor e
    dec de
    ld d, b
    ld [bc], a
    jr @+$27

    jr jr_05a_6575

    inc e
    ld [hl+], a
    ld e, $21
    rra
    jr nz, jr_05a_6577

    ld e, b
    ld b, b
    xor h
    ld b, b
    and [hl]
    add b
    ld b, [hl]
    ret nz

    ld [hl+], a
    ld b, b
    and [hl]

jr_05a_6562:
    add b
    ld c, h
    nop
    add b
    nop
    inc bc
    nop
    ld b, $00
    inc b
    nop
    ld b, $00
    ld [bc], a
    dec de
    jp nz, Jump_000_0001

    ld [hl], b

jr_05a_6575:
    adc b
    ld h, b

jr_05a_6577:
    sub b
    jr nz, @+$52

    dec de
    ld c, d
    inc b

jr_05a_657d:
    ld b, $09
    dec de
    ld sp, hl
    di
    rlca
    rlca
    ld [$1708], sp
    ld [$0717], sp
    ld [$3906], sp
    ld a, $41
    ld c, h
    or d
    add h
    ld c, d
    inc c
    sub d
    dec de
    ld d, h
    nop
    jr nc, jr_05a_6562

Jump_05a_659a:
    rra
    ldh [rTAC], a
    jr jr_05a_65a1

    dec d
    inc bc

jr_05a_65a1:
    inc d
    ld bc, $011a
    ld a, [bc]
    nop
    add hl, bc
    nop
    ld bc, $8100
    nop
    sbc [hl]
    ret nz

    jr c, @+$32

    call z, $a21c
    or b
    ld c, h
    ldh [rNR10], a
    ret nz

    jr nz, jr_05a_65bc

    add d

jr_05a_65bc:
    ld bc, $0162
    ld [hl], $03
    inc d
    rlca
    jr @+$03

    ld h, $01
    ld [hl+], a
    ld bc, $0002
    add b
    nop
    add b
    nop
    ret nz

    add b
    ld a, h
    nop
    sbc e
    nop
    adc b
    add b
    ld c, [hl]
    add b
    ld b, b
    inc c
    ld [de], a
    ld c, $11
    inc de
    inc l
    ld de, $202a
    ld d, c
    ld b, b
    and b
    ld b, b
    cp b
    jr c, jr_05a_662e

    dec de
    ei
    pop af
    ret nz

    ret nz

    jr nc, jr_05a_6661

    adc b
    jr c, jr_05a_6638

    dec de
    ld e, d
    db $10
    inc c
    inc sp
    rlca
    ld [$100f], sp
    jr @+$29

    jr nc, @+$4b

    ld h, c
    sub [hl]
    ld b, a
    xor b
    ld c, h
    or e
    ld [hl], b
    adc b
    ldh a, [$08]
    db $10
    add sp, $08
    inc d
    inc b
    ld a, [$04f8]

jr_05a_6613:
    nop
    ld hl, sp+$00
    ld [hl], b
    nop
    add b
    add b
    ld b, e
    jp Jump_05a_7e2c


    add c
    jr nc, jr_05a_666f

    jr c, jr_05a_666a

    ccf
    ld b, b
    ld a, $41
    jr @+$28

    nop
    jr jr_05a_6647

    pop af
    ei

jr_05a_662e:
    ret nz

    ret nz

    ld a, $3e
    pop bc
    inc sp
    call z, Call_000_32c1
    add b

jr_05a_6638:
    ld b, c
    nop
    add b
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    dec b
    nop
    inc b

jr_05a_6647:
    dec de
    call z, RST_00
    jp Jump_000_2403


    ld b, $19
    dec c
    ld [de], a
    ld [$9895], sp
    ld h, l
    ret nc

    jr z, jr_05a_66c9

    adc b
    nop
    ldh a, [rP1]
    add b
    dec de
    ld c, $11

jr_05a_6661:
    adc a
    dec de
    xor [hl]
    ld de, $0000
    ldh [$e0], a
    db $10

jr_05a_666a:
    jr nc, @-$35

    jr jr_05a_6613

    adc l

jr_05a_666f:
    ld d, d
    rst $00
    jr z, @+$48

    xor c
    ld h, [hl]
    sbc c
    ld [hl+], a
    ld d, l
    inc hl
    call nc, $d423
    daa
    ret c

    jr z, @+$59

    db $10
    jr z, jr_05a_6683

jr_05a_6683:
    stop
    nop
    nop
    ld h, b
    ld h, b
    sub b
    sub b
    ld l, h
    adc h
    ld d, e
    add e
    ld c, h
    inc bc
    add h
    ld b, $09
    inc c
    ld [de], a
    ld [$1814], sp
    db $e4
    ldh a, [$08]
    ldh a, [$08]
    ldh [rNR10], a
    nop
    ldh [rNR31], a
    ei
    pop af
    ld [bc], a
    nop
    ld h, [hl]
    nop
    inc e
    nop
    db $10
    db $10
    inc l
    jr @-$17

    rst $38
    nop
    ret z

    scf
    nop
    call z, Call_05a_5c1b
    ld bc, $0018
    ld a, b
    nop
    ld c, b
    nop
    ld d, b
    nop
    db $10
    ld d, b
    xor h
    ld h, b
    sub b
    jr nc, jr_05a_6714

    inc e

jr_05a_66c9:
    inc hl
    rlca
    jr c, jr_05a_66ce

    ld b, [hl]

jr_05a_66ce:
    inc bc
    add h
    ld b, $89
    nop
    jr c, jr_05a_66f0

    ld e, h
    ld bc, $1b08
    jr nc, jr_05a_66ec

    add b
    nop
    call c, $120c
    dec de
    ld b, [hl]
    ld [bc], a

jr_05a_66e3:
    jr jr_05a_6709

    jr jr_05a_670b

    inc h
    ld e, d
    ld h, $59
    nop

jr_05a_66ec:
    inc bc
    nop
    inc bc
    inc bc

jr_05a_66f0:
    inc b
    rlca
    ld l, b
    ld [$00b7], sp
    sbc b
    dec de
    xor [hl]
    db $10
    ld [hl+], a
    ld d, l
    inc sp
    ld c, h
    inc de
    inc l
    rla
    jr z, jr_05a_6722

    nop

jr_05a_6704:
    rra
    jr nz, jr_05a_6737

    ld c, a
    ld h, b

jr_05a_6709:
    sub b
    nop

jr_05a_670b:
    nop
    dec de
    jr nc, jr_05a_671f

    add b
    ld b, b
    add b
    ld b, b
    dec de

jr_05a_6714:
    jp c, Jump_000_1b13

    pop bc
    dec de
    dec de
    ld e, d
    ld [de], a
    jr c, jr_05a_6762

    db $10

jr_05a_671f:
    ld l, h
    dec de
    ld c, b

jr_05a_6722:
    nop
    db $10
    jr z, jr_05a_67a5

    add b
    rst $38
    nop
    rst $18
    jr nz, jr_05a_66e3

    ld c, b
    rrca
    ldh a, [$0b]
    inc [hl]
    inc bc
    inc e
    ld bc, $3006
    ld c, [hl]

jr_05a_6737:
    jr nc, jr_05a_6704

    db $10
    xor c
    db $10
    db $eb
    nop
    ld a, b
    nop
    jr nc, jr_05a_6742

jr_05a_6742:
    jr nz, jr_05a_6744

jr_05a_6744:
    ld h, b
    nop
    jr nc, jr_05a_6748

jr_05a_6748:
    db $10
    dec de
    ld [c], a
    inc hl
    dec de
    ei
    pop af
    dec de
    cp d
    ld [hl+], a
    dec de
    ldh a, [rNR52]
    dec de
    and b
    rst $38
    ld c, l
    dec de
    ld e, a
    ccf
    ld c, l
    dec de
    cp a
    ccf
    ld c, l
    dec de

jr_05a_6762:
    rra
    ld c, a
    ld c, l
    dec de
    ld a, a
    ld c, a
    ld c, l
    dec de
    rst $18
    ld c, a
    ld c, l
    dec de
    ccf
    ld e, a
    ld c, l
    dec de
    sbc a
    ld e, a
    ld c, l
    dec de
    rst $38
    ld e, a
    ld c, l
    dec de
    ld e, a
    ld l, a
    ld c, l
    dec de
    cp a
    ld l, a
    ld c, l
    dec de
    rra
    ld a, a
    ld c, l
    dec de
    ld a, a
    ld a, a
    ld c, l
    dec de
    rst $18
    ld a, a
    dec c
    nop
    ld [$0203], sp
    ld b, b
    ld a, [hl+]
    ld b, b
    ld l, d
    ld b, c
    dec hl
    ld d, c
    ld a, [hl+]
    ld b, l
    ld l, a
    ld b, l
    ld l, e
    ld b, l
    ld l, a
    ld b, l
    ld l, l
    ld d, l
    dec a
    ld d, l
    ld a, h

jr_05a_67a5:
    ld d, l
    jr c, jr_05a_67fc

    ld a, h
    ld d, h
    ld h, b
    ld d, h
    nop
    ld b, b
    db $10
    ld de, $0000
    jr nz, jr_05a_67b4

jr_05a_67b4:
    jr nz, jr_05a_67f6

    jr nz, @+$03

    jr nz, jr_05a_67ba

jr_05a_67ba:
    jr nz, jr_05a_6800

    ld [hl+], a
    db $10
    ld h, [hl]
    ld b, l
    ld [hl+], a
    db $10
    ld h, $04
    ld h, d
    ld d, l
    ld h, $54
    ld [hl], a
    ld d, l
    ld d, $55
    ld d, e
    ld d, l
    rra
    ld d, l
    ld a, [de]
    dec d
    dec bc
    ld d, l
    ld e, $15
    ld [$0855], sp
    inc b
    ld [$0011], sp
    ld b, h
    nop
    inc bc
    rra
    nop
    inc b
    jr nz, jr_05a_6825

    jr nz, jr_05a_67f8

    jr nz, jr_05a_67e9

jr_05a_67e9:
    ld [hl+], a
    add b
    ld [hl+], a
    db $10
    ld [hl+], a
    ld b, h
    ld h, [hl]
    ld b, l
    dec sp
    ld d, l
    ld l, [hl]
    ld d, l
    ld a, a

jr_05a_67f6:
    ld d, l
    dec a

jr_05a_67f8:
    ld d, l
    ld a, l
    inc bc
    ld l, c

jr_05a_67fc:
    ld bc, $5558
    dec c

jr_05a_6800:
    ld d, l
    inc e
    dec d
    add hl, de
    ld d, l
    ld c, h
    ld b, h
    ld c, b
    ld d, c
    ld [$0844], sp
    ld de, $4408
    nop
    nop
    inc bc
    ld c, [hl]
    nop
    inc bc
    rst $28
    db $fd
    inc b
    inc bc
    add d
    nop
    inc bc
    jr z, jr_05a_6820

    ld [hl+], a
    ld b, h

jr_05a_6820:
    ld [hl+], a
    db $10
    ld l, $05
    ld a, [hl+]

jr_05a_6825:
    inc d
    ld a, [hl+]
    ld bc, $542e
    ld a, [hl]
    ld d, h
    ld a, [hl-]
    dec d
    ccf
    ld d, l
    add hl, sp
    dec d
    add hl, hl
    ld d, l
    inc a
    dec d
    jr z, jr_05a_688d

    jr z, jr_05a_683a

jr_05a_683a:
    jr z, jr_05a_684d

    jr z, jr_05a_6882

    inc bc
    ld c, d
    ld bc, $8303
    ld b, $04
    nop
    ld b, b
    inc bc
    ld c, [hl]
    nop
    ld [bc], a
    nop
    ld [bc], a

jr_05a_684d:
    db $10
    ld [bc], a
    ld d, h
    ld a, [hl+]
    db $10
    ld a, [hl+]
    ld b, c
    ld a, [hl+]
    inc d
    ld a, [hl-]
    db $10
    ld a, [hl-]
    ld d, c
    ld l, e
    ld d, l
    dec h
    ld d, l
    inc [hl]
    dec d
    jr nc, jr_05a_68b7

    ld d, h
    ld d, h
    ld b, b
    ld d, b
    inc bc
    call nc, Call_05a_4001
    inc bc
    sbc b
    ld bc, $fc03
    ldh a, [rLCDC]
    nop
    ld bc, $0000
    inc bc
    and h
    nop
    ld [hl+], a
    ld b, l
    dec hl
    ld d, l
    inc a
    inc d
    ld c, h
    ld d, l
    ld b, h
    ld b, b

jr_05a_6882:
    inc b
    ld de, $4004
    inc bc
    add d
    rrca
    inc b
    inc bc
    ld [hl-], a
    rra

jr_05a_688d:
    ld c, l
    inc bc
    sub d
    rra
    ld c, l
    inc bc
    ld a, [c]
    rra
    ld c, l
    inc bc
    ld d, d
    cpl
    ld c, l
    inc bc
    or d
    cpl
    ld c, l
    inc bc
    ld [de], a
    ccf
    ld c, l
    inc bc
    ld [hl], d
    ccf
    ld c, l
    inc bc
    jp nc, Jump_05a_4d3f

    inc bc
    ld [hl-], a
    ld c, a
    ld c, l
    inc bc
    sub d
    ld c, a
    ld c, l
    inc bc
    ld a, [c]
    ld c, a
    ld c, l
    inc bc

jr_05a_68b7:
    ld d, d
    ld e, a
    ld c, l
    inc bc
    or d
    ld e, a
    ld c, l
    inc bc
    ld [de], a
    ld l, a
    ld c, l
    inc bc
    ld [hl], d
    ld l, a
    ld c, l
    inc bc
    jp nc, Jump_05a_4d6f

    inc bc
    ld [hl-], a
    ld a, a
    ld c, l
    inc bc
    sub d
    ld a, a
    ld c, l
    inc bc
    ld a, [c]
    ld a, c
    nop
    ld [$0001], sp
    ld b, b
    ld b, b
    and b
    nop
    ld b, b
    nop
    inc b
    inc b
    ld a, [bc]
    ld bc, $0208
    ld bc, $f1fc
    ld [$1408], sp
    nop
    ld [$0200], sp
    ld [bc], a
    dec h
    ld [hl+], a
    ld d, l
    inc b
    ld c, d
    ld b, h
    xor d
    inc b
    ld c, d
    inc b
    ld a, [bc]
    ld bc, $0320
    ld c, d
    ld [bc], a
    dec h
    ld [bc], a
    dec h
    jr nz, jr_05a_6957

    jr nz, jr_05a_6957

    ld bc, $0436
    ld b, h
    xor d
    ld bc, $0040
    ld b, b
    and h
    ld b, b
    and b
    ld b, b
    and c
    nop
    ld b, b
    nop
    nop
    ld bc, $0036
    nop
    jr nz, jr_05a_691f

jr_05a_691f:
    nop
    nop
    add b
    add b
    ld b, b
    nop
    add b
    ld bc, $f7f7
    nop
    and b
    ld b, b
    ld b, b
    nop
    ld [bc], a
    ld bc, $0012
    nop
    inc d
    ld [$0108], sp
    ld hl, sp-$0b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld b, l
    ld [bc], a
    and l
    ld b, d
    ld b, l
    ld [bc], a
    dec b
    ld [bc], a
    ld bc, $0272
    ld bc, $0074
    ld bc, $0072
    inc d
    ld [$8801], sp
    ld [bc], a

jr_05a_6957:
    ld bc, $0088
    ld bc, $00a8
    and d
    ld b, b
    ld bc, $009c
    ld bc, $04b0
    ld c, b
    nop
    and b
    ld b, b
    ld bc, $02be
    ld b, b
    ld bc, $075f
    ld bc, $f2fb
    ld bc, $0a72
    ld bc, $0fe5
    ld c, l
    ld bc, $1f45
    ld c, l
    ld bc, $1fa5
    ld c, l
    ld bc, $2f05
    ld c, l
    ld bc, $2f65
    ld c, l
    ld bc, $2fc5
    ld c, l
    ld bc, $3f25
    ld c, l
    ld bc, $3f85
    ld c, l
    ld bc, $3fe5
    ld c, l
    ld bc, $4f45
    ld c, l
    ld bc, $4fa5
    ld c, l
    ld bc, $5f05
    ld c, l
    ld bc, $5f65
    ld c, l
    ld bc, $5fc5
    ld c, l
    ld bc, $6f25
    ld c, l
    ld bc, $6f85
    ld c, l
    ld bc, $6fe5
    ld c, l
    ld bc, $7f45
    ld c, l
    ld bc, $7fa5
    ld b, a
    nop
    ld [$0005], sp
    jr nz, jr_05a_69e8

    ld d, b
    ld [hl], b
    adc b
    jr nz, jr_05a_6a1d

    nop
    jr nz, jr_05a_69d5

    db $fc
    pop af
    ld bc, $f805

jr_05a_69d5:
    push af
    db $10
    db $10
    jr z, jr_05a_69da

jr_05a_69da:
    stop
    nop
    ld bc, $0302
    inc b
    ld bc, $0002
    ld bc, $1805
    inc b

jr_05a_69e8:
    nop
    add b
    add b
    ld b, b
    nop
    add b
    dec b
    jr jr_05a_69f1

jr_05a_69f1:
    jr c, jr_05a_6a37

    dec b
    ld a, [de]
    ld bc, $0105
    add hl, bc
    dec b
    rrca
    ld b, $05
    jr z, jr_05a_6a04

    dec b
    ld h, b
    rrca
    ld c, l
    dec b

jr_05a_6a04:
    ret nz

    rrca
    ld c, l
    dec b
    jr nz, @+$21

    ld c, l
    dec b
    add b
    rra
    ld c, l
    dec b
    ldh [$1f], a
    ld c, l
    dec b
    ld b, b
    cpl
    ld c, l
    dec b
    and b
    cpl
    ld c, l
    dec b
    nop

jr_05a_6a1d:
    ccf
    ld c, l
    dec b
    ld h, b
    ccf
    ld c, l
    dec b
    ret nz

    ccf
    ld c, l
    dec b
    jr nz, jr_05a_6a79

    ld c, l
    dec b
    add b
    ld c, a
    ld c, l
    dec b
    ldh [rVBK], a
    ld c, l
    dec b
    ld b, b
    ld e, a
    ld c, l

jr_05a_6a37:
    dec b
    and b
    ld e, a
    ld c, l
    dec b
    nop
    ld l, a
    ld c, l
    dec b
    ld h, b
    ld l, a
    ld c, l
    dec b
    ret nz

    ld l, a
    ld c, l
    dec b
    jr nz, jr_05a_6ac9

    ld c, l
    dec b
    add b
    ld a, a
    ld c, l
    dec b
    ldh [$7f], a
    inc c
    nop
    ld [$0101], sp
    rst $38
    push af
    ld c, $04
    ld c, $00
    ld c, $01
    rst $38
    ld a, [c]
    jr nz, @+$72

    ld [hl], b
    ld d, b
    jr nz, @+$72

    ld bc, $f6ff
    jr jr_05a_6a84

    inc [hl]
    inc l
    inc h
    inc a
    jr @+$1a

    ld bc, $f2ff
    jr c, @+$3a

    ld [hl], h
    ld c, h

jr_05a_6a79:
    ld [hl], h
    ld c, h
    ld b, h
    ld a, h
    jr c, @+$3a

    ld bc, $f0ff
    inc a
    inc a

jr_05a_6a84:
    ld b, d
    ld a, [hl]
    cp c
    rst $00
    ld bc, $0044
    add c
    rst $38
    ld b, d
    ld a, [hl]
    inc a
    inc a
    ld bc, $ffa0
    ld c, l
    ld bc, $0faf
    ld c, l
    ld bc, $1f0f
    ld c, l
    ld bc, $1f6f
    ld c, l
    ld bc, $1fcf
    ld c, l
    ld bc, $2f2f
    ld c, l
    ld bc, $2f8f
    ld c, l
    ld bc, $2fef
    ld c, l
    ld bc, $3f4f
    ld c, l
    ld bc, $3faf
    ld c, l
    ld bc, $4f0f
    ld c, l
    ld bc, $4f6f
    ld c, l
    ld bc, $4fcf
    ld c, l
    ld bc, $5f2f
    ld c, l

jr_05a_6ac9:
    ld bc, $5f8f
    ld c, l
    ld bc, $5fef
    ld c, l
    ld bc, $6f4f
    ld c, l
    ld bc, $6faf
    ld c, l
    ld bc, $7f0f
    ld c, l
    ld bc, $7f6f
    ld c, l
    ld bc, $7fcf
    dec e
    nop
    ld [$0002], sp
    nop
    jr c, jr_05a_6b24

    ld [hl], h
    ld c, h
    ld [hl], h
    ld c, h
    ld b, h
    ld a, h
    jr c, jr_05a_6b2c

    ld [bc], a
    cp $f0
    inc a
    inc a
    ld b, d

jr_05a_6afa:
    ld a, [hl]
    cp c
    rst $00
    ld [bc], a
    inc d
    nop
    add c
    rst $38
    ld b, d
    ld a, [hl]
    inc a
    inc a
    ld [bc], a
    db $fc
    ld a, [c]
    rlca
    rlca
    ld [$160f], sp
    add hl, de
    cpl
    jr nc, jr_05a_6b41

    jr nc, jr_05a_6b16

Call_05a_6b14:
    db $fc
    ld a, [c]

jr_05a_6b16:
    ret nz

    ret nz

    jr nz, jr_05a_6afa

    db $10
    ldh a, [$08]
    ld hl, sp+$28
    ret c

    ld h, $39
    jr nz, jr_05a_6b63

jr_05a_6b24:
    db $10
    rra
    ld [$070f], sp
    rlca
    ld [bc], a
    db $fc

jr_05a_6b2c:
    ld a, [c]
    ld [bc], a
    inc a
    nop
    ret nc

    jr nc, @+$22

    ldh [$c0], a
    ret nz

    ld [bc], a
    ld hl, sp-$0a
    ld bc, $0c07
    rra
    jr nc, jr_05a_6bbd

    ld h, b
    ld a, b

jr_05a_6b41:
    ld h, b
    ldh a, [$60]
    ld hl, sp+$30
    cp $0e
    ld a, a
    ld bc, $001f
    inc bc
    ld [bc], a
    rst $30
    rst $30
    add b
    ret nz

    ldh [rP1], a
    ld hl, sp+$02
    and b
    rst $38
    ld c, l
    ld [bc], a
    rst $20
    rrca
    ld c, l
    ld [bc], a
    ld b, a
    rra
    ld c, l
    ld [bc], a
    and a

jr_05a_6b63:
    rra
    ld c, l
    ld [bc], a
    rlca
    cpl
    ld c, l
    ld [bc], a
    ld h, a
    cpl
    ld c, l
    ld [bc], a
    rst $00
    cpl
    ld c, l
    ld [bc], a
    daa
    ccf
    ld c, l
    ld [bc], a
    add a
    ccf
    ld c, l
    ld [bc], a
    rst $20
    ccf
    ld c, l
    ld [bc], a
    ld b, a
    ld c, a
    ld c, l
    ld [bc], a
    and a
    ld c, a
    ld c, l
    ld [bc], a
    rlca
    ld e, a
    ld c, l
    ld [bc], a
    ld h, a
    ld e, a
    ld c, l
    ld [bc], a
    rst $00
    ld e, a
    ld c, l
    ld [bc], a
    daa
    ld l, a
    ld c, l
    ld [bc], a
    add a
    ld l, a
    ld c, l
    ld [bc], a
    rst $20
    ld l, a
    ld c, l
    ld [bc], a
    ld b, a
    ld a, a
    ld c, l
    ld [bc], a
    and a
    ld a, a
    ld b, l
    nop
    ld [$0001], sp
    ld d, l
    nop
    xor d
    ld bc, $0f00
    ld [$01a0], sp
    nop
    ld bc, $0050
    and b
    nop
    ld d, h
    nop
    xor b
    nop
    ld b, b

jr_05a_6bbd:
    nop
    nop
    nop
    ld d, h
    nop
    and b
    ld bc, $f9f4
    ld bc, $0f03
    add hl, bc
    ld bc, $0023
    ld bc, $021b
    ld b, b
    nop
    xor b
    nop
    ld d, b
    nop
    add b
    nop
    nop
    ld bc, $0168
    ld bc, $f8f5
    ld bc, $0025
    ld d, b
    nop
    xor b
    ld bc, $0128
    ld bc, $0025
    ld bc, $028b
    ld bc, $0685
    ld bc, $005f
    ld bc, $006b
    ld d, h
    ld bc, $0302
    ld bc, $f6f7
    ld bc, $0065
    add b
    ld bc, $0126
    ld bc, $0033
    ld bc, $0403
    ld bc, $f6f7
    ld b, b
    ld bc, $0132
    ld bc, $0ccb
    ld bc, $0085
    ld bc, $0873
    ld bc, $0cab
    ld bc, $0287
    ld bc, $0877
    ld bc, $0603
    ld bc, $0029
    ld bc, $0087
    ld bc, $1427
    ld bc, $0023
    ld bc, $0067
    ld bc, $00a9
    ld bc, $04a9
    add b
    ld bc, $0384
    ld bc, $1447
    nop
    nop
    add d
    ld bc, $0d10
    ld bc, $00bd
    ld bc, $00db
    ld bc, $00a9
    ld bc, $f2fb
    ld bc, $1077
    xor b
    ld bc, $09ac
    ld bc, $127b
    ld bc, $08cf
    ld bc, $1faa
    ld c, l
    ld bc, $2f0a
    ld c, l
    ld bc, $2f6a
    ld c, l
    ld bc, $2fca
    ld c, l
    ld bc, $3f2a
    ld c, l
    ld bc, $3f8a
    ld c, l
    ld bc, $3fea
    ld c, l
    ld bc, $4f4a
    ld c, l
    ld bc, $4faa
    ld c, l
    ld bc, $5f0a
    ld c, l
    ld bc, $5f6a
    ld c, l
    ld bc, $5fca
    ld c, l
    ld bc, $6f2a
    ld c, l
    ld bc, $6f8a
    ld c, l
    ld bc, $6fea
    ld c, l
    ld bc, $7f4a
    ld c, l
    ld bc, $7faa
    ld b, d
    nop
    ld [$0505], sp
    rst $38
    db $f4
    inc bc
    inc bc
    inc b
    rlca
    jr @+$21

    jr z, jr_05a_6cf3

    dec b
    rst $38
    db $f4
    add b
    add b
    ld b, b
    ret nz

    ld a, h
    db $fc
    and d
    cp $3c
    ccf
    ld h, $3f
    ld b, d
    ld a, a
    ld b, b
    ld a, a
    ld b, h
    ld a, a
    ld h, [hl]
    ld a, a
    ccf
    ccf
    dec e
    dec e
    ld bc, $71ff
    rst $38

jr_05a_6cd3:
    inc de
    rst $38
    rrca
    rst $38
    ld c, $fe
    jr jr_05a_6cd3

    ldh a, [$f0]
    ldh [$e0], a
    dec b
    rst $38
    ldh a, [$3e]
    ld a, $41
    ld a, a
    ldh [rIE], a
    jr nc, @+$01

    ld de, $00ff
    rst $38
    dec b
    rst $38
    db $f4
    ldh [$e0], a

jr_05a_6cf3:
    sbc b
    ld hl, sp+$0c
    db $fc
    rlca
    rst $38
    dec b
    jr nz, jr_05a_6d00

    ld b, b
    ld a, a
    ld h, d
    ld a, a

jr_05a_6d00:
    inc a
    ccf
    inc e
    rra
    nop
    dec b
    ld c, l
    nop
    dec b
    ld [hl], c
    ld bc, $ff24
    jr @+$01

    ld [$04ff], sp
    rst $38
    ld [$7105], sp
    ld bc, $ff30
    add hl, de
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    dec b
    jr jr_05a_6d22

jr_05a_6d22:
    ld h, b
    ldh [$60], a
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    dec b
    rst $38
    ldh a, [rTMA]
    rlca
    rlca
    rlca
    inc bc
    inc bc
    dec b
    cp $f6
    inc c
    rst $38
    ld e, $ff
    rst $38
    rst $38
    rst $30
    rst $30
    dec b
    and h
    inc b
    ld e, $fe
    inc a
    db $fc
    ldh a, [$f0]
    ret nz

    ret nz

    add b
    add b
    dec b
    cp $f6
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld e, $1f
    ld hl, $403f
    ld a, a
    dec b
    rst $38
    ldh a, [$e7]
    rst $20
    add hl, sp
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld c, $ff
    ld de, $7cff
    ld a, h
    add d
    cp $07
    rst $38
    inc c
    rst $38
    adc b
    rst $38
    nop
    rst $38
    ld bc, $4d05
    inc bc
    ret nz

    ret nz

    jr nz, @-$1e

    jr @-$06

    inc d
    db $fc
    add d
    cp $42
    cp $05
    ld h, [hl]
    nop
    inc l
    ccf
    ld sp, $603f
    ld a, a
    ld h, b
    ld a, a
    ld [hl], d
    ld a, a
    inc a
    ccf
    jr nz, @+$01

    dec b
    jr nz, jr_05a_6da9

    dec b
    add sp, $00
    dec b
    ld [hl], b
    nop
    inc c
    dec b
    ld [hl], c
    dec b
    dec b
    ld [hl], b
    nop
    ld bc, $81ff

jr_05a_6da9:
    rst $38
    ld b, c
    rst $38
    add c
    rst $38
    ld [bc], a
    cp $3c
    db $fc
    ld h, h
    db $fc
    ld b, d
    cp $02
    cp $02
    cp $1c
    rra
    rlca
    rlca
    ld b, $07
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0501
    rst $38
    ldh a, [$98]
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr c, @+$01

    db $fc
    rst $38
    rst $28
    rst $28
    dec b
    ld e, b
    db $10
    ld b, [hl]
    rst $38
    jr c, @+$01

    db $10
    rst $38
    jr nc, @+$01

    ld a, b
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28

jr_05a_6de6:
    ret nz

    ret nz

    ld b, [hl]
    cp $3c
    db $fc
    jr c, jr_05a_6de6

    dec b
    sub [hl]
    ld b, $05
    ld a, [hl+]
    ld [de], a
    ld [de], a
    rst $38
    db $10
    rst $38
    add hl, bc
    dec b
    scf
    inc de
    ld bc, $02ff
    cp $8c
    db $fc
    ld a, [hl]
    cp $07
    rst $38
    ld [$10ff], sp
    dec b
    ld e, a
    rlca
    ld h, h
    ld a, a
    ld a, $3f
    rra
    rra
    dec b
    jr nz, jr_05a_6e2d

    inc b
    rst $38
    jr jr_05a_6e1e

    ld [hl], c
    ld bc, $ff40
    ld b, b

jr_05a_6e1e:
    rst $38
    ld [hl+], a
    rst $38
    inc e
    dec b
    ld [hl], c
    dec b
    jr nz, @+$01

    add hl, de
    rst $38
    rlca
    rst $38
    add e
    rst $38

jr_05a_6e2d:
    ld h, [hl]
    cp $7c
    db $fc
    ld b, $07
    inc c
    rrca
    inc c
    rrca
    ld [hl-], a
    ccf
    ld h, c
    dec b
    add hl, de
    inc de
    ldh a, [rTIMA]
    ld hl, $601b
    ldh [$b0], a
    ldh a, [rNR10]
    ldh a, [$3c]
    db $fc
    ld h, [hl]
    cp $42
    cp $05
    and b
    db $10
    dec b
    ld h, b
    ld a, [de]
    nop
    nop
    ld bc, $03ff
    rst $38
    add [hl]
    cp $7e
    cp $fc
    db $fc
    ldh a, [$f0]
    dec b
    ret z

    ld [$4705], sp
    cpl
    ld c, l
    dec b
    and a
    cpl
    ld c, l
    dec b
    rlca
    ccf
    ld c, l
    dec b
    ld h, a
    ccf
    ld c, l
    dec b
    rst $00
    ccf
    ld c, l
    dec b
    daa
    ld c, a
    ld c, l
    dec b
    add a
    ld c, a
    ld c, l
    dec b

jr_05a_6e81:
    rst $20
    ld c, a

jr_05a_6e83:
    ld c, l
    dec b
    ld b, a
    ld e, a
    ld c, l
    dec b
    and a
    ld e, a
    ld c, l
    dec b
    rlca
    ld l, a
    ld c, l
    dec b
    ld h, a
    ld l, a
    ld c, l
    dec b

jr_05a_6e95:
    rst $00
    ld l, a

jr_05a_6e97:
    ld c, l
    dec b
    daa
    ld a, a
    ld c, l
    dec b
    add a
    ld a, a
    ld c, l
    dec b
    rst $20
    ld a, a
    dec b
    nop
    ld [$0005], sp
    rst $38
    dec b
    nop
    ld a, [bc]
    jr jr_05a_6e95

    jr jr_05a_6e97

    jr nc, jr_05a_6e81

    jr nc, jr_05a_6e83

    ld h, b
    sbc a
    ld h, b
    sbc a
    ret nz

    ccf
    ret nz

    ccf
    ld de, $11ee
    xor $22
    db $dd
    ld [hl+], a
    db $dd
    ld b, h
    cp e
    ld b, h
    cp e
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ldh a, [rIF]
    pop af
    ld c, $e1
    ld e, $e2
    dec e
    jp nz, $c43d

    dec sp
    add h
    ld a, e
    adc b
    ld [hl], a
    add c
    ld a, [hl]
    ld bc, $02fe
    db $fd
    ld [bc], a
    db $fd
    inc b
    ei
    inc b
    ei

jr_05a_6ef8:
    ld [$08f7], sp
    rst $30
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    ld b, $f9
    ld b, $f9
    inc c
    di
    inc c
    di
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    dec b
    ld d, h
    ld [$ef10], sp
    db $10
    rst $28

jr_05a_6f17:
    jr nz, jr_05a_6ef8

    ld hl, $41de
    cp [hl]
    ld b, e
    cp h
    add e
    ld a, h
    add a
    ld a, b
    ld a, a
    add b
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    dec b
    ld a, [hl]
    inc b
    jr nz, jr_05a_6f17

    ld b, b
    cp a
    ld b, b
    cp a
    add b
    ld a, a
    dec b
    and d
    ld a, [bc]
    add b
    ld a, a
    dec b
    ld b, b
    ld b, $c0
    ccf
    dec b
    cp h
    nop
    dec b
    sub b
    ld [$17e8], sp
    add sp, $17
    dec b
    jr nc, jr_05a_6f55

jr_05a_6f55:
    ld c, $f1
    ld e, $e1
    dec e
    ld [c], a
    dec [hl]
    jp z, $d52a

    ld l, b
    sub a
    ret nc

    cpl
    ret nc

    cpl
    and b
    ld e, a
    and b
    ld e, a
    dec b
    xor d
    nop
    dec b
    nop
    nop
    dec b
    ld h, b
    nop
    dec b
    ld d, h
    ld [$af50], sp
    sub b
    ld l, a
    add b
    ld a, a
    dec b
    nop
    rlca
    dec b
    jr nz, @+$21

    ld c, l
    dec b
    add b
    rra
    ld c, l
    dec b
    ldh [$1f], a
    ld c, l
    dec b
    ld b, b
    cpl
    ld c, l
    dec b
    and b
    cpl
    ld c, l
    dec b
    nop
    ccf
    ld c, l
    dec b
    ld h, b
    ccf
    ld c, l
    dec b
    ret nz

    ccf
    ld c, l
    dec b
    jr nz, jr_05a_6ff0

    ld c, l
    dec b
    add b
    ld c, a
    ld c, l
    dec b
    ldh [rVBK], a
    ld c, l
    dec b
    ld b, b
    ld e, a
    ld c, l
    dec b
    and b
    ld e, a
    ld c, l
    dec b
    nop
    ld l, a
    ld c, l
    dec b
    ld h, b
    ld l, a
    ld c, l
    dec b
    ret nz

    ld l, a
    ld c, l
    dec b
    jr nz, jr_05a_7040

    ld c, l
    dec b
    add b
    ld a, a
    ld c, l
    dec b
    ldh [$7f], a
    inc c
    nop
    ld [$0009], sp
    jr nc, jr_05a_6ff0

    ld d, b
    nop
    jr nz, jr_05a_6fd4

jr_05a_6fd4:
    nop
    nop
    inc e
    jr @+$26

    jr jr_05a_6fff

    nop
    jr jr_05a_6fde

jr_05a_6fde:
    inc e
    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    nop
    inc a
    nop
    nop
    nop
    ld h, b
    ld b, b
    and b
    nop
    ld b, b
    nop
    nop
    nop

jr_05a_6ff0:
    jr c, @+$32

    ld c, b
    jr nc, jr_05a_7040

    ld b, d
    or l
    nop
    add $00
    stop
    jr nz, jr_05a_7007

    db $10

jr_05a_6fff:
    ld bc, $1e62
    pop hl
    ld l, $d1
    inc l
    db $d3

jr_05a_7007:
    jr nz, jr_05a_7065

    nop
    ld h, b
    add hl, bc
    stop
    ld a, $41
    ld a, [de]
    ld h, l
    ld b, $79
    ld c, $31
    inc c
    ld [de], a
    nop
    inc c
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0106
    ld b, $02
    dec c
    add hl, bc
    ld e, d
    nop
    nop
    ldh a, [rSVBK]
    adc b
    ld hl, sp+$04
    ld hl, sp+$04
    sbc h
    ld h, d
    call z, $e032
    ld e, $c8
    ld [hl], $02
    dec e

Call_05a_703b:
    ld bc, $031e
    inc e
    rlca

jr_05a_7040:
    jr jr_05a_7042

jr_05a_7042:
    rrca
    add hl, bc
    ei
    ld a, [c]
    cp b
    ld b, [hl]
    ldh [rNR32], a
    ldh a, [$08]
    ret nz

    jr nc, jr_05a_704f

jr_05a_704f:
    ret nz

    add hl, bc
    ei
    ld a, [c]
    ld e, $21
    ld [bc], a
    dec a
    nop
    ccf
    ld bc, $011e
    ld c, $01
    ld b, $00
    inc bc
    nop
    nop
    ld a, h
    add d

jr_05a_7065:
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ld hl, sp+$06
    ldh [rNR32], a
    add b
    ld [hl], b
    add hl, bc
    adc b
    ld bc, $0203
    dec c
    inc c
    inc de
    inc e
    inc hl
    ld a, [hl-]
    ld b, l
    ld a, [de]
    ld h, l
    nop
    ld a, a
    ld b, $79
    inc l
    jp nc, $d428

    ld d, b
    xor b

jr_05a_7087:
    ld b, b
    or b
    jr nz, @-$2e

    nop
    ldh [rP1], a
    ret nz

    nop
    add b
    add hl, bc
    db $f4
    ld sp, hl
    ld bc, $0300

jr_05a_7097:
    add hl, bc
    call c, $0f01
    inc b
    dec de
    ld a, [bc]
    dec [hl]
    ld a, [de]
    push hl
    ld [hl], $c9
    or h
    ld c, e
    ld bc, $0002
    inc bc
    add hl, bc
    ld d, h
    ld [bc], a
    add hl, bc
    or $02
    db $ec
    inc de
    ld [$5e15], a
    and c
    ld e, $e1
    jr nz, jr_05a_7097

    jr nc, jr_05a_7087

    ld [hl], b
    adc b
    ld h, b
    sub b
    inc c
    ld [hl], d
    ld [$1874], sp
    ld h, h
    db $10
    add sp, $09
    ret z

    dec bc
    ld bc, $0700
    inc bc
    inc c
    rlca
    jr c, jr_05a_70e1

    ld [hl], b
    nop
    ld [$3800], sp
    nop
    ld hl, sp+$68
    sub h
    ret c

    inc h
    ret c

    inc h
    cp b
    ld b, h

jr_05a_70e1:
    cp b
    ld b, [hl]
    inc bc
    inc c
    inc bc
    inc c
    dec bc
    inc d
    dec c
    ld [de], a
    inc c
    inc sp
    ld c, $31
    ld c, $31
    ld c, $71
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $18
    jr nz, jr_05a_715d

    and b
    dec sp
    call nz, $e11e
    add b
    ld h, b
    add hl, bc
    ld h, b
    inc d
    nop
    ldh [$c0], a
    jr nz, jr_05a_710d

jr_05a_710d:
    ldh [rNR52], a
    ld e, c
    add hl, bc

jr_05a_7111:
    ld [hl], b
    db $10
    ld [hl], $c9
    dec [hl]
    jp z, $e01f

    rra
    ldh [rNR31], a
    db $e4
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    cp $01
    xor $11
    call z, $9832
    ld h, h
    jr jr_05a_7111

    add b
    ld b, b

jr_05a_712f:
    nop
    add b
    add hl, bc
    adc $08
    ld d, $e9
    nop
    rst $38
    inc bc
    db $fc
    ld e, $e1
    inc a
    jp nz, $cc30

    ld b, b
    or b
    nop
    ret nz

    nop
    ld hl, sp+$00
    ldh a, [$09]
    sub b
    ld de, $d509
    ld [$0007], sp
    rrca
    ld [$1416], sp
    ld a, [hl+]
    inc [hl]
    ld c, d
    ld l, h
    sub d
    add hl, bc
    ld d, d
    nop
    inc bc

jr_05a_715d:
    inc b
    nop
    rrca
    rrca
    stop
    ccf
    nop
    ld a, a
    ld a, [hl]
    add c
    db $ec
    ld [de], a
    inc e
    ld [c], a
    call c, Call_000_3822
    call nz, $44b8
    ld a, b
    add h
    ld a, b
    add h
    ldh a, [$0c]
    rra
    jr nz, jr_05a_718a

    ld [hl], b
    rrca
    ld [hl], b
    ld b, $79
    ld b, $79
    ld b, l
    cp d
    ld b, c
    cp [hl]
    ld b, e
    cp h
    cp b
    ld b, a

jr_05a_718a:
    ld [hl], b
    adc [hl]

jr_05a_718c:
    ld h, h
    sbc d
    db $fc
    ld [bc], a
    ldh a, [$0e]
    ret nz

    inc a
    ld a, b
    add h
    ldh a, [$08]
    db $10
    cpl
    ld de, $116e
    ld l, [hl]
    inc de
    ld l, h
    inc de
    ld l, h
    ld d, [hl]
    xor c
    ld d, l
    xor d
    ld c, a
    or b
    ld hl, sp+$04
    ldh [rNR23], a
    ret nz

    jr c, jr_05a_712f

    ld [hl], b
    nop
    ldh [$80], a
    ld b, b
    add hl, bc
    sub b
    db $10
    inc b
    dec bc
    dec b
    ld a, [de]
    dec b
    ld a, [de]
    inc bc
    inc e
    inc bc
    inc e
    ld d, $29
    ld d, $29
    inc c
    ld [hl-], a
    ldh [rNR10], a
    ret nz

    jr nz, jr_05a_718c

    jr nz, @+$0b

    or h
    ld d, $08
    inc [hl]
    db $10
    ld l, b
    db $10
    ld l, b
    jr nz, jr_05a_7228

    nop
    ld h, b
    nop
    ret nz

    add hl, bc
    call z, $0303
    ld bc, $0306

jr_05a_71e3:
    inc c
    rlca
    jr jr_05a_7206

    jr nz, @+$40

    ld b, c
    ld e, $e1
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_05a_71e3

    inc c
    add hl, bc
    and d
    nop
    db $fc
    ld [bc], a
    ld l, [hl]
    sub c
    add hl, bc
    ret nz

    ld [de], a
    ld [bc], a
    dec c
    rlca
    ld [$8809], sp
    jr nz, jr_05a_7209

jr_05a_7206:
    inc c
    rst $38
    nop

jr_05a_7209:
    rst $38
    nop
    add hl, bc
    add b
    db $10
    ccf
    ret nz

    rst $18
    jr nz, @+$0b

    ld d, h
    db $10
    jr nc, @-$2f

    sbc h
    ld h, e
    adc $31
    add $39
    ld [c], a
    dec e
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld bc, $020e

jr_05a_7228:
    dec b
    ld bc, $0006
    rlca
    nop
    rlca
    add hl, bc
    ldh a, [rSB]
    nop
    rst $30
    ld [$05fa], sp
    ld a, h
    add e
    cp h
    ld b, e
    ld e, b
    and a
    jr z, @-$27

    sub b
    ld l, a
    nop
    ld hl, sp-$40
    ld a, $00
    db $fc
    add hl, bc
    or b
    db $10
    add hl, bc
    jp z, Jump_000_0204

    dec b
    ld [bc], a
    dec b
    inc b
    ld a, [bc]
    add hl, bc
    db $e4
    jr nz, jr_05a_725f

    inc d
    add hl, bc
    ld [$0020], a
    ld [bc], a
    nop
    ld [bc], a

jr_05a_725f:
    nop
    inc b
    add hl, bc
    db $f4
    ld hl, $0908
    ld a, [$0921]
    nop
    ccf
    ld c, l
    add hl, bc
    ld h, b
    ccf
    ld c, l
    add hl, bc
    ret nz

    ccf
    ld c, l
    add hl, bc
    jr nz, jr_05a_72c6

    ld c, l
    add hl, bc
    add b
    ld c, a
    ld c, l
    add hl, bc
    ldh [rVBK], a
    ld c, l
    add hl, bc
    ld b, b
    ld e, a
    ld c, l
    add hl, bc
    and b
    ld e, a
    ld c, l
    add hl, bc
    nop
    ld l, a
    ld c, l
    add hl, bc
    ld h, b
    ld l, a
    ld c, l
    add hl, bc
    ret nz

    ld l, a
    ld c, l
    add hl, bc
    jr nz, jr_05a_7316

    ld c, l
    add hl, bc
    add b
    ld a, a
    ld c, l
    add hl, bc
    ldh [$7f], a
    inc c
    nop
    ld [$3805], sp
    jr c, jr_05a_72ee

    ld a, b
    ld [hl], b
    ld [hl], b
    ld bc, $1c01
    inc e
    ld [hl+], a
    ld a, $ba
    cp [hl]
    ld e, $1e
    inc c
    inc c
    inc d
    inc e
    inc e
    inc e
    nop
    nop
    ld [hl], a
    ld [hl], a
    push de
    rst $30
    sub [hl]
    or $e0
    ldh [rNR34], a
    ld e, $32

jr_05a_72c6:
    ld a, $71
    ld a, a
    ld [hl], c
    ld a, a
    xor e
    rst $38
    xor h
    db $fc
    ret c

    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    inc e
    inc e
    ld h, d
    ld a, [hl]
    pop af
    rst $38
    jp hl


    rst $38
    ld c, [hl]
    ld a, [hl]
    jr c, jr_05a_7319

    dec b
    ld a, [$07f2]
    rlca
    inc c
    rrca
    jr jr_05a_7309

    jr nc, jr_05a_732b

    jr c, jr_05a_732d

jr_05a_72ee:
    inc l
    ccf
    dec b
    db $fc
    ldh a, [$80]
    add b
    ld [hl], b
    ldh a, [rBCPS]
    ld hl, sp+$44
    db $fc
    ld [bc], a
    cp $0a
    cp $36
    ccf
    inc sp
    ccf
    dec de
    rra
    ld a, [de]
    rra
    ld c, $0f

jr_05a_7309:
    inc bc
    inc bc
    dec b
    db $fc
    ldh a, [$3a]
    cp $e2
    cp $04
    db $fc
    jr @-$06

jr_05a_7316:
    ldh [$e0], a
    add b

jr_05a_7319:
    add b
    dec b
    ld hl, sp-$0c
    ld bc, $0601
    rlca
    jr jr_05a_7342

    inc a
    ccf
    ld h, $3f
    ld b, b
    ld a, a
    dec b
    db $fc

jr_05a_732b:
    ldh a, [$e0]

jr_05a_732d:
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp+$24
    db $fc
    inc h
    db $fc
    ld b, h
    db $fc
    ld h, b
    ld a, a
    ld [hl], b
    ld a, a
    ld a, a
    ld a, a
    add hl, sp
    ccf
    dec de
    rra

jr_05a_7342:
    rlca
    rlca
    dec b
    db $fc
    ldh a, [rLY]
    db $fc
    adc b
    ld hl, sp-$78
    ld hl, sp-$70
    ldh a, [$a0]
    ldh [$c0], a
    ret nz

    dec b
    ld a, [$78f2]
    ld a, b
    call nz, $82fc
    cp $82
    cp $c1
    rst $38
    pop hl
    rst $38
    and d
    cp $94
    db $fc
    call c, $d8fc
    ld hl, sp-$50
    ldh a, [$a0]
    ldh [$e0], a
    dec b
    cp c
    inc bc
    rra
    rra
    inc l
    ccf
    ld d, b
    ld a, a
    ld b, e
    ld a, a
    ld a, h
    ld a, a
    inc sp
    ccf
    rrca
    rrca
    dec b
    db $fc
    ldh a, [$c0]
    ret nz

    ldh a, [$f0]
    inc c
    db $fc
    ld [bc], a
    cp $ce
    cp $f0
    ldh a, [rTIMA]
    db $f4
    ld hl, sp+$03
    inc bc
    inc b
    dec b
    xor e
    ld bc, $4005
    ld [bc], a
    ld a, h
    ld a, a
    cp b
    rst $38
    db $10
    rst $38
    dec b
    ld hl, sp-$0c
    ret nz

    ret nz

    jr nc, @+$07

    rst $30
    ld bc, $0704
    ld [$100f], sp
    rra
    db $10
    rra
    cpl
    ccf
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld a, d
    ld a, a
    jr nc, @+$01

    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38

jr_05a_73c2:
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    ld bc, $4505
    ld de, $ff00
    inc hl
    rst $38
    inc l
    rst $38
    db $10
    rst $38
    ld l, h
    rst $38
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    jr nz, jr_05a_73c2

    dec b
    ld l, b
    db $10
    db $10
    ldh a, [$3e]
    ccf
    inc e
    rra
    ld c, $0f
    ld b, $07
    inc bc
    inc bc
    ld bc, $0501
    db $fc
    ldh a, [$3d]
    rst $38
    daa
    rst $38
    ld b, b
    dec b
    add e
    ld de, $ffe0
    ld a, $3f
    inc bc
    inc bc
    add d
    dec b
    ld b, a
    ld de, $ff43
    ld l, $fe
    ld a, h
    db $fc
    ldh a, [$f0]
    dec b
    sub h
    nop
    jr nz, jr_05a_741a

    cp c
    dec b
    dec b
    xor e
    rra

jr_05a_741a:
    ld c, l
    dec b
    dec bc
    cpl
    ld c, l
    dec b
    ld l, e
    cpl
    ld c, l
    dec b
    sra a
    ld c, l
    dec b
    dec hl
    ccf
    ld c, l
    dec b
    adc e
    ccf
    ld c, l
    dec b
    db $eb
    ccf
    ld c, l
    dec b
    ld c, e
    ld c, a
    ld c, l
    dec b
    xor e
    ld c, a
    ld c, l
    dec b
    dec bc
    ld e, a
    ld c, l
    dec b
    ld l, e
    ld e, a
    ld c, l
    dec b
    bit 3, a
    ld c, l
    dec b
    dec hl
    ld l, a
    ld c, l
    dec b
    adc e
    ld l, a
    ld c, l
    dec b
    db $eb
    ld l, a
    ld c, l
    dec b
    ld c, e
    ld a, a
    ld c, l
    dec b
    xor e
    ld a, a
    ld b, c
    nop
    ld [$0909], sp
    rst $38
    ei
    ccf
    add hl, bc
    rst $38
    ld sp, hl

jr_05a_7465:
    ld sp, $ff00
    add hl, bc
    rst $38
    ld hl, sp+$0f
    ldh a, [$50]
    xor a
    add hl, bc
    rst $38
    di
    inc b
    nop
    inc b
    nop
    rrca
    ld bc, $070e
    ld hl, sp+$00
    jr nc, jr_05a_749e

    ld e, $30
    rst $08
    inc e
    db $e3
    ld e, $e1
    ccf
    ret nz

    rst $38
    nop
    pop af
    ld c, $01
    ld a, [bc]
    nop
    ld de, $d100
    nop
    pop af
    add b
    ld a, a
    ld sp, hl
    ld b, $fc
    inc bc
    rst $38
    nop
    nop
    add b
    nop

jr_05a_749e:
    ldh [$80], a
    ld a, b
    ret nz

    ccf
    ld [c], a
    dec e
    cp $01
    cp $01
    ld sp, hl

jr_05a_74aa:
    ld b, $0b
    inc [hl]
    dec c
    ld [hl], d
    ccf
    ld b, b
    ccf
    ret nz

    ld a, a
    add b
    ld l, a
    sub b
    rst $20
    jr jr_05a_74aa

    rrca
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $18
    jr nz, jr_05a_7465

    ld h, b
    ccf
    ret nz

    rra
    ldh [$09], a
    rst $38
    di
    stop
    adc h
    nop
    call z, $ce00
    ld [bc], a
    db $ed
    pop hl
    ld e, $f3
    inc c
    di
    inc c
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    jp hl


    ld d, $c3
    inc a
    nop
    ret nz

    add b
    ld b, h
    add b
    ld a, b
    nop
    ld hl, sp-$20
    jr jr_05a_74fb

    cp b
    nop
    ret nz

    jr nc, jr_05a_7533

    ld b, d
    ld [$00b4], sp

jr_05a_74fb:
    jr jr_05a_7506

    db $fc
    rst $38
    nop
    ld [bc], a
    add hl, bc
    ret c

    ld bc, $0001

jr_05a_7506:
    inc bc
    nop
    inc bc
    ld bc, $010a
    ld c, $03
    inc e
    inc bc
    inc e
    inc bc

jr_05a_7512:
    inc c
    ld bc, $0006
    add b
    nop
    ret nz

    add hl, bc
    ld h, b
    nop
    ret nz

    jr nc, jr_05a_755f

    cp h
    ldh [rNR32], a
    ld hl, sp+$06
    add hl, bc
    rst $38
    or $4d
    or d
    rst $38
    nop
    add hl, bc
    ld l, $07
    nop
    ld h, d
    sbc l
    rst $38
    nop

jr_05a_7533:
    add [hl]
    ld a, c
    add hl, bc
    inc [hl]
    nop
    inc b
    ld [de], a
    nop
    inc bc
    nop
    nop
    adc h
    ld [hl], e
    rst $38
    nop
    inc de
    db $ec
    nop
    jr nz, jr_05a_7547

jr_05a_7547:
    jr nz, jr_05a_7549

jr_05a_7549:
    ld b, b
    nop
    ld b, b
    nop
    ld h, b
    nop
    ld h, b
    jr nz, jr_05a_7512

    nop
    ldh a, [$09]
    rst $38
    push af
    jr nc, jr_05a_7559

jr_05a_7559:
    stop
    nop
    nop
    jr nz, jr_05a_755f

jr_05a_755f:
    ld [$0800], sp
    nop
    jr jr_05a_7565

jr_05a_7565:
    jr c, jr_05a_7567

jr_05a_7567:
    ld a, h
    db $10
    add sp, $30
    call z, $8c70
    add hl, bc
    rst $38
    push af
    stop
    stop
    jr nc, jr_05a_7577

jr_05a_7577:
    ld [hl], b
    add hl, bc
    ld d, d
    ld de, $1018
    jr z, @+$22

    ld d, b
    jr nz, jr_05a_75d2

    jr nz, jr_05a_75ca

    nop
    inc h
    rrca
    db $10
    rrca
    jr nc, @+$1e

    ld h, e
    dec e
    ld h, d
    add hl, bc
    add [hl]
    db $10
    ld b, $39
    ld [bc], a
    dec e
    ld bc, $000e
    rlca
    add hl, bc
    ld c, h
    ld de, $0020
    jr c, jr_05a_75a8

    ld [hl], $0c
    inc de
    nop
    jr nz, jr_05a_75a6

jr_05a_75a6:
    jr nc, jr_05a_75a8

jr_05a_75a8:
    jr nc, jr_05a_75aa

jr_05a_75aa:
    jr jr_05a_75b4

    inc d
    ld [$3874], sp
    ld b, h
    jr c, jr_05a_7577

    inc a

jr_05a_75b4:
    jp $8678


    ldh a, [$0c]
    add hl, bc
    or h
    db $10
    inc [hl]
    jp z, Jump_05a_659a

    sbc [hl]
    ld h, c
    nop
    add b
    nop
    stop
    ld [$4800], sp

jr_05a_75ca:
    nop
    ld c, h
    nop
    ld l, h
    inc b
    ld [$ba44], a

jr_05a_75d2:
    add hl, bc
    ld b, [hl]
    ld de, $0018
    inc e
    ld [$0810], sp
    ld d, $08
    rla
    inc e
    inc hl
    inc bc
    call z, $0807
    inc bc
    inc c
    nop
    rrca
    nop
    inc bc
    nop
    ld bc, $1100
    ld bc, $320e
    call $8976
    cp $01
    db $ec
    inc de
    ldh [rNR34], a
    ldh a, [$0a]
    ret nz

    jr c, @-$3e

    add hl, bc
    and e
    db $10
    rrca
    nop
    ld bc, $3000
    nop
    ld c, $cc
    inc sp
    rst $38
    nop
    and a
    ld e, b
    nop
    ld [$6009], sp
    nop
    nop
    cp $1c
    ld h, e

jr_05a_7618:
    ld c, a
    or b
    rst $18
    jr nz, @+$78

    adc c
    add hl, bc
    rst $38
    pop af
    add hl, bc
    dec [hl]
    db $10
    add sp, -$40
    jr nc, jr_05a_7618

    inc c
    ld [$30f6], sp
    ld c, d
    jr c, jr_05a_7675

    jr jr_05a_7697

    jr @+$68

    ld [$0074], sp
    adc $00
    adc l
    nop
    ld bc, $4c09
    ld de, $0060
    ld h, b
    nop
    ldh [rP1], a
    ld b, b
    add hl, bc
    jr nc, jr_05a_7659

    ld bc, $0201
    ld [bc], a
    dec d
    ld [bc], a
    ld a, l
    inc [hl]
    sla a
    ret c

    rst $28
    db $10
    ld b, a
    cp b
    ld b, b
    cp c

jr_05a_7659:
    ldh [rNR31], a
    ld h, b
    sbc a
    ld sp, $09ce
    add b
    nop
    add hl, bc
    add b
    nop
    nop
    ld e, h
    ld [$1874], sp
    ld h, h
    inc c
    ld [hl-], a
    inc b
    ld a, [bc]
    nop
    ld b, $09
    ld d, $10
    inc d

jr_05a_7675:
    db $eb
    nop
    ld a, d
    nop
    ld h, b
    add hl, bc
    inc [hl]
    ld de, $ff09
    pop af
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc e
    rlca
    jr c, jr_05a_7690

    jr c, jr_05a_7690

    ld a, [hl-]
    dec b
    ld a, [de]
    nop
    rrca

jr_05a_7690:
    jr jr_05a_76f6

    jr jr_05a_76f8

    ld [$0014], sp

jr_05a_7697:
    ld [$1409], sp
    ld [de], a
    add hl, bc
    ld h, [hl]
    inc de
    stop
    jr nc, jr_05a_76b2

    inc l
    inc a
    ld b, e
    inc a
    jp $f00f


    ld b, $19
    inc bc
    inc a
    dec de
    inc h
    dec e
    ld h, d
    add hl, bc

jr_05a_76b2:
    ld [hl], h
    nop
    ld c, a
    or b
    ld h, e
    sbc h
    add b
    ld h, c
    ret nz

    scf
    and b
    ld e, a
    and $19
    and $19
    rst $08

jr_05a_76c3:
    jr nc, @+$01

    nop
    inc e
    db $e3
    inc b
    res 0, e
    ld a, h
    jp $fb3c


    inc b
    ei
    inc b
    add hl, bc
    and [hl]
    nop
    dec sp
    call nz, $7080
    ldh [rNR10], a
    ldh a, [$08]
    add hl, bc
    db $f4
    jr nz, @-$1e

    jr jr_05a_76c3

    stop
    db $fc
    add hl, bc
    and b
    rst $38
    ld c, l
    add hl, bc
    ld e, a
    ccf
    ld c, l
    add hl, bc
    cp a
    ccf
    ld c, l
    add hl, bc
    rra
    ld c, a
    ld c, l

jr_05a_76f6:
    add hl, bc
    ld a, a

jr_05a_76f8:
    ld c, a
    ld c, l
    add hl, bc
    rst $18
    ld c, a
    ld c, l
    add hl, bc
    ccf
    ld e, a
    ld c, l
    add hl, bc
    sbc a
    ld e, a
    ld c, l
    add hl, bc
    rst $38
    ld e, a
    ld c, l
    add hl, bc
    ld e, a
    ld l, a
    ld c, l
    add hl, bc
    cp a
    ld l, a
    ld c, l
    add hl, bc
    rra
    ld a, a
    ld c, l
    add hl, bc
    ld a, a
    ld a, a
    ld c, l
    add hl, bc
    rst $18
    ld a, a
    dec c
    nop
    ld [$3c09], sp
    ld b, e
    ccf
    ld b, b
    inc a
    ld b, e
    jr c, jr_05a_776d

    ld [hl], b
    adc b
    ld b, b
    or b
    nop
    ret nz

    nop
    add b
    add hl, bc
    inc c
    ld bc, $f409
    ld hl, sp+$03
    nop
    ld [hl+], a
    nop
    ld h, $00
    daa
    ld bc, $0326
    inc l
    ld [bc], a
    ld l, l
    ld h, $59
    nop
    ld [hl+], a
    nop
    ld b, h
    nop
    ret c

    nop
    or b
    nop
    ldh [rP1], a
    call nz, $9800
    nop
    ldh a, [$09]
    push af
    rst $30
    ld [$1000], sp
    nop
    db $10
    add hl, bc
    ld b, [hl]
    inc bc
    rlca
    ld bc, $0002
    inc bc
    nop
    inc bc
    ld bc, $0006
    ld [bc], a
    nop

jr_05a_776d:
    inc b
    nop
    inc e
    ld [$1074], sp
    db $ec
    ldh a, [$08]
    ldh a, [$0c]
    add sp, $14
    add hl, bc
    ld sp, hl
    di
    ld bc, $0700
    nop
    inc e
    nop
    ld h, b
    nop
    add b
    inc bc
    inc c
    rrca
    jr nc, @+$41

    ld b, b
    rlca
    ld hl, sp+$07
    jr jr_05a_77a0

    jr nc, jr_05a_77b1

    ld h, c
    inc a
    ld b, e
    ldh [rNR34], a
    ldh [rNR24], a
    ldh [rNR23], a
    ldh [rNR23], a
    and b
    ld d, b

jr_05a_77a0:
    jr nz, @-$2e

    nop
    or b
    nop
    jr nc, @+$0b

    ld [hl], d
    inc bc
    ld bc, $0300
    ld bc, $0102
    ld b, $03

jr_05a_77b1:
    inc c
    inc a
    jp nz, $8678

    ld [hl], b
    adc h
    ldh [rNR23], a
    ldh [rNR10], a
    ret nz

    jr nc, @-$7e

    ld h, b
    nop
    ret nz

    add hl, bc
    ld c, h
    ld bc, $0010
    jr jr_05a_77c9

jr_05a_77c9:
    ld [$c809], sp
    inc bc
    add hl, bc
    and e
    rlca
    ld [bc], a
    dec c
    ld [bc], a
    dec c
    ld [hl], b
    adc b
    ld h, b
    sbc b
    add hl, bc
    cp d
    nop
    add b
    ld b, b
    add hl, bc
    db $10
    ld [bc], a
    ld [bc], a
    dec c
    inc b
    dec bc
    inc b
    ld a, [de]
    ld [$0014], sp
    jr c, jr_05a_77eb

jr_05a_77eb:
    jr c, jr_05a_77ed

jr_05a_77ed:
    ld [hl], b
    nop
    ldh [rP1], a
    jr jr_05a_77f3

jr_05a_77f3:
    jr c, jr_05a_77f5

jr_05a_77f5:
    jr nc, jr_05a_77f7

jr_05a_77f7:
    ld h, b
    nop
    add hl, bc
    jp hl


    inc b
    dec b
    inc b
    ld a, [bc]
    inc b

Jump_05a_7800:
    ld a, [bc]
    ld [$1014], sp
    jr z, jr_05a_7816

    jr z, jr_05a_7828

    ld d, b
    ld b, b
    and b
    add hl, bc
    ld h, b
    ld bc, $0904
    ld c, d
    inc bc
    jr nz, jr_05a_7814

jr_05a_7814:
    ld b, b
    add hl, bc

jr_05a_7816:
    and b
    rst $38
    ld c, l
    add hl, bc
    adc a
    rra
    ld c, l
    add hl, bc
    rst $28
    rra
    ld c, l
    add hl, bc
    ld c, a
    cpl
    ld c, l
    add hl, bc
    xor a
    cpl

jr_05a_7828:
    ld c, l
    add hl, bc
    rrca
    ccf
    ld c, l
    add hl, bc
    ld l, a
    ccf
    ld c, l
    add hl, bc
    rst $08
    ccf
    ld c, l
    add hl, bc
    cpl
    ld c, a
    ld c, l
    add hl, bc
    adc a
    ld c, a

Jump_05a_783c:
    ld c, l
    add hl, bc
    rst $28
    ld c, a
    ld c, l
    add hl, bc
    ld c, a
    ld e, a
    ld c, l
    add hl, bc
    xor a
    ld e, a
    ld c, l
    add hl, bc
    rrca
    ld l, a
    ld c, l
    add hl, bc
    ld l, a
    ld l, a
    ld c, l
    add hl, bc
    rst $08
    ld l, a
    ld c, l
    add hl, bc
    cpl
    ld a, a

jr_05a_7858:
    ld c, l
    add hl, bc
    adc a
    ld a, a
    ld c, l
    add hl, bc
    rst $28
    ld a, h
    nop
    ld [$1212], sp
    rst $38
    db $f4
    ld bc, $0120
    nop
    ld bc, $0110
    ld [de], a
    rst $38
    ldh a, [$08]
    ld [de], a
    ld [de], a
    ld bc, $0004

jr_05a_7876:
    inc b
    nop
    add h
    add b
    inc c
    ld [de], a
    jr jr_05a_787f

    inc c

jr_05a_787f:
    db $10
    inc c
    jr nz, jr_05a_789b

    jr nz, jr_05a_789e

    ld h, b
    add hl, de

Call_05a_7887:
    ld b, b
    dec sp
    jr nc, jr_05a_78d6

    jr jr_05a_78f4

    jr jr_05a_7876

    jr c, jr_05a_7858

    ld a, c
    add [hl]
    ld [hl], e
    adc h
    ld a, [c]
    dec c
    and $19
    nop
    add b

jr_05a_789b:
    nop
    add b
    nop

jr_05a_789e:
    add h
    nop
    add h
    add b

jr_05a_78a2:
    ld b, h
    nop
    add $04
    jp z, $ea04

    ld bc, $0380
    ld [de], a
    ld d, c
    nop
    ret nz

    ld bc, $01c2
    ld h, d
    nop
    ld [hl], c

jr_05a_78b6:
    nop
    ld [hl], c
    inc bc
    db $fc
    ld hl, $10de
    rst $28
    sbc b
    ld h, a
    adc $31
    rst $20
    jr @-$1b

    inc e
    ld [hl], e
    adc h
    cp c
    ld b, [hl]
    or d
    ld c, l
    db $f4
    dec bc
    db $f4
    dec bc
    db $76
    adc c
    ld [hl-], a
    call $44bb

jr_05a_78d6:
    sbc c
    ld h, [hl]
    adc h
    ld [hl], b
    ld hl, sp+$04
    jr c, jr_05a_78a2

    sbc h
    ld h, d
    call z, $e432
    ld a, [de]
    ld h, h
    sbc d
    jr nc, jr_05a_78b6

    inc b
    inc bc
    inc b
    inc bc
    ld b, $29
    rlca
    jr z, jr_05a_78f4

    ld l, h
    inc bc
    ld a, h

jr_05a_78f4:
    ld d, e
    inc l
    ld e, c
    ld h, $0b
    db $f4

jr_05a_78fa:
    inc de
    db $ec
    db $e3
    inc e
    ld [$d615], a
    add hl, hl
    xor h
    ld d, e
    xor b
    ld d, a
    and b
    ld e, a
    add b
    ld a, a
    sub e
    ld l, h
    add hl, de
    and $2c
    db $d3
    inc h
    db $db
    inc [hl]
    swap c
    adc $73
    adc h
    add e
    ld a, h
    ld b, e
    cp h
    add a
    ld a, b
    adc [hl]
    ld [hl], c
    call c, $d923
    ld h, $f3
    inc c
    and $19
    nop
    ld [c], a
    nop
    add $00
    adc h
    add b
    inc a
    jr nc, jr_05a_78fa

    ret nz

    jr nc, jr_05a_7935

jr_05a_7935:
    ret nz

    nop
    add e
    cp e
    ld b, h
    sub c
    ld l, [hl]
    ld b, h
    dec sp
    ld h, h
    dec de
    ld a, [hl]
    ld bc, $211e
    rrca
    ld [hl], b
    ld b, $79
    sub e

jr_05a_7949:
    ld l, h
    db $e3
    inc e
    rst $30
    ld [$c03f], sp
    sbc e
    ld h, h
    ld e, c
    and [hl]
    ld l, h
    sub e
    ld l, $d1
    rst $38
    nop
    cp $01
    cp $01
    xor $11
    xor $11
    rst $28
    db $10
    rst $08
    jr nc, jr_05a_7986

    ldh [$84], a
    ld a, e
    sub b
    ld l, a
    add hl, de
    and $3b
    call nz, $c03f
    ld a, [hl]
    add c
    ldh a, [rIF]
    ldh [$1f], a
    nop
    ldh a, [rLCDC]
    and b
    add b
    ld h, c
    nop
    rst $38
    ld a, b
    add [hl]
    ret nz

    jr c, jr_05a_79a5

    ret nc

jr_05a_7986:
    ret nz

    jr z, @+$03

    ld a, $00
    rra
    nop
    rra
    nop
    rrca
    nop
    rst $38
    ld b, $79
    inc bc
    inc c
    nop
    inc bc
    and a
    ld e, b
    rst $28
    db $10
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIE], a
    nop
    rst $28

jr_05a_79a5:
    db $10
    inc bc
    db $fc
    sbc a
    ld h, b
    ld [de], a
    ld d, b
    db $10
    rst $08
    jr nc, @+$01

    nop
    ld [de], a
    ld e, b
    ld [de], a
    ret nz

    ccf
    sbc c
    ld h, [hl]
    rst $30
    ld [$00ff], sp
    db $fc
    inc bc
    db $fc
    inc bc
    ldh a, [rIF]
    add b
    ld a, a
    ret nz

    inc a
    ret nz

    jr c, jr_05a_7949

    ld [hl], e
    nop
    cp $00
    ld hl, sp+$00
    db $fc
    nop
    adc [hl]
    nop
    ld [bc], a
    inc bc
    db $fc
    dec b
    ld a, [$7b84]
    jp nz, $fb3d

    inc b
    ld [de], a
    ld c, d
    db $10
    ld [hl], a
    adc b
    ei
    inc b
    db $eb
    inc d
    db $eb
    inc d
    or $09
    ld a, a
    add b
    ld [de], a
    ld e, b
    db $10
    db $fc
    ld [bc], a
    ld b, b
    or d
    ld b, b
    or d
    ld b, b
    and [hl]
    ret nz

    inc a
    ldh [rNR32], a
    ret nz

    jr c, jr_05a_79ff

jr_05a_79ff:
    ldh [rP1], a
    nop
    ld a, b
    add h
    db $10
    ld l, c
    db $10
    dec hl
    db $10
    xor [hl]
    db $10
    add sp, $00
    jr nc, jr_05a_7a0f

jr_05a_7a0f:
    stop
    nop
    inc a
    ld b, e
    ccf
    ld b, b
    inc a
    ld b, e
    jr c, jr_05a_7a5e

    ld [hl], b
    adc b
    ld b, b
    or b
    nop
    ret nz

    nop
    add b
    ld [de], a
    call z, Call_000_1211
    db $fc
    ld hl, sp+$03
    nop
    ld [hl+], a
    nop
    ld h, $00
    daa
    ld bc, $0326
    inc l
    ld [bc], a
    ld l, l
    ld h, $59
    nop
    ld [hl+], a
    nop
    ld b, h
    nop
    ret c

    nop
    or b
    nop
    ldh [rP1], a
    call nz, $9800
    nop
    ldh a, [rP1]
    nop
    nop
    jr nc, jr_05a_7a4c

jr_05a_7a4c:
    ld h, b
    nop
    ld h, b
    nop
    jr nc, jr_05a_7a62

    add sp, $10
    add hl, hl
    nop
    dec de
    nop
    ld de, $2200
    nop
    ld l, $28

jr_05a_7a5e:
    ld d, h
    jr nc, @+$4a

    db $10

jr_05a_7a62:
    jr z, jr_05a_7a64

jr_05a_7a64:
    jr nc, jr_05a_7a66

jr_05a_7a66:
    and b
    nop
    ld b, h
    nop
    ld h, h
    nop
    ld [hl], $06
    add hl, de
    ld [bc], a
    dec b
    nop
    ei
    dec bc
    inc d
    rlca
    ld [$a200], sp
    nop
    inc l
    jr nz, jr_05a_7ad5

    jr nc, @+$4a

    jr nz, jr_05a_7ad1

    nop
    ld h, b
    ld b, b
    and b
    add b
    ld b, b
    nop
    ld a, b
    nop
    call z, $8600
    nop
    ld b, $04
    ld a, [bc]
    inc b
    adc d
    ld [$0894], sp
    push de
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld [de], a
    jr c, jr_05a_7abe

    nop
    ld h, b
    ld [de], a
    call z, Call_000_1211
    db $d3
    ld [de], a
    ld [bc], a
    ld [de], a
    jr jr_05a_7aab

    inc b

jr_05a_7aab:
    nop
    inc c
    nop
    inc c
    inc c
    ld d, e
    ld c, $51
    inc e
    ld h, d
    jr c, jr_05a_7afb

    jr c, jr_05a_7afd

    jr nc, jr_05a_7b03

    ld h, b
    sub b
    ld h, b

jr_05a_7abe:
    sub b
    ld b, h
    xor d
    ld b, b
    xor h
    ld [de], a
    ld d, $20
    jr nz, jr_05a_7b18

    ld [de], a
    ld d, h
    ld hl, $00c0
    inc c
    nop
    jr jr_05a_7ad1

jr_05a_7ad1:
    stop
    jr nc, jr_05a_7ad5

jr_05a_7ad5:
    jr nz, jr_05a_7ad7

jr_05a_7ad7:
    ld b, b

jr_05a_7ad8:
    nop
    ld b, b
    nop
    add b
    nop
    db $10
    ld [de], a
    ld [de], a
    ld bc, $101a
    ld l, d
    ld h, b
    sub a
    ld h, d
    sub l
    nop
    ld [hl], e
    nop
    nop
    nop
    inc hl
    nop
    ld h, e
    jr nz, jr_05a_7b4b

    jr c, jr_05a_7b38

    jr jr_05a_7b1a

    nop
    sbc h
    nop
    ret nz

    ld [bc], a

jr_05a_7afb:
    adc l
    inc b

jr_05a_7afd:
    ld c, d
    inc b
    ld a, d
    ld [$1034], sp

jr_05a_7b03:
    xor b
    db $10
    xor b
    jr nz, jr_05a_7ad8

    ld b, b
    and b
    ld [de], a
    ld h, h
    ld hl, $000c
    ld [$9412], sp
    dec h
    ld [de], a
    ldh [$2f], a
    ld c, l
    ld [de], a

jr_05a_7b18:
    ld b, b
    ccf

jr_05a_7b1a:
    ld c, l
    ld [de], a
    and b
    ccf
    ld c, l
    ld [de], a
    nop
    ld c, a
    ld c, l
    ld [de], a
    ld h, b
    ld c, a
    ld c, l
    ld [de], a
    ret nz

    ld c, a
    ld c, l
    ld [de], a
    jr nz, @+$61

    ld c, l
    ld [de], a
    add b
    ld e, a
    ld c, l
    ld [de], a
    ldh [$5f], a
    ld c, l
    ld [de], a

jr_05a_7b38:
    ld b, b
    ld l, a
    ld c, l
    ld [de], a
    and b
    ld l, a
    ld c, l
    ld [de], a
    nop
    ld a, a
    ld c, l
    ld [de], a
    ld h, b
    ld a, a
    ld c, l
    ld [de], a
    ret nz

    ld a, a
    inc l

jr_05a_7b4b:
    nop
    ld [$000b], sp
    jr nc, jr_05a_7b63

    jr nz, jr_05a_7b53

jr_05a_7b53:
    nop
    nop
    ld c, c
    nop
    ld [hl], b
    ld h, b
    sub b
    ld h, b
    sbc c
    nop
    ldh [rP1], a
    ld [$5800], sp
    db $10

jr_05a_7b63:
    ld l, b
    jr nz, jr_05a_7bb6

    jr nz, jr_05a_7bba

    ld b, d
    and l
    nop
    ld c, [hl]
    dec bc
    db $fc
    pop af
    ld bc, $3601
    ld b, $d9
    ld [$0016], sp
    ld [$fd0b], sp
    ldh a, [$0c]
    ld [hl], e
    jr nc, @-$30

    ldh [rNR10], a
    nop
    ldh [$0b], a
    ld sp, hl
    db $f4
    jr @+$26

    ld [$0834], sp
    inc d
    jr jr_05a_7bb2

    db $10
    jr z, jr_05a_7ba1

    jr z, jr_05a_7b9b

    inc d
    inc b
    ld a, [bc]
    inc b
    ld a, [bc]
    ld [$0814], sp

jr_05a_7b9b:
    inc d
    db $10
    jr z, jr_05a_7b9f

jr_05a_7b9f:
    inc e
    nop

jr_05a_7ba1:
    inc b
    nop
    ld [$0800], sp
    nop
    ld bc, $0100
    ld bc, $0202
    dec b
    ld [bc], a
    dec b
    dec bc
    ld d, b

jr_05a_7bb2:
    nop
    db $10
    jr z, @-$3e

jr_05a_7bb6:
    jr nz, @-$3e

    jr nz, @-$1e

jr_05a_7bba:
    db $10
    ld d, b
    xor b
    ld c, b
    or h
    ld b, h
    xor d
    ld b, h
    xor d
    jr z, jr_05a_7c19

    ld [$0814], sp
    ld d, $04
    ld a, [hl-]
    ld [bc], a
    dec [hl]
    ld bc, $0012
    ld hl, $4100
    nop
    nop
    inc c
    ld [de], a
    ld b, $09
    ld b, $09
    ld c, $11
    inc e
    ld [c], a
    ld hl, sp+$06
    add sp, $16
    ld b, h
    xor e
    dec bc
    ld d, b
    ld [bc], a
    jr @+$27

    jr jr_05a_7c11

    inc e
    ld [hl+], a
    ld e, $21
    rra
    jr nz, jr_05a_7c13

    ld e, b
    ld b, b
    xor h
    ld b, b
    and [hl]
    add b
    ld b, [hl]
    ret nz

    ld [hl+], a
    ld b, b
    and [hl]

jr_05a_7bfe:
    add b
    ld c, h
    nop
    add b
    nop
    inc bc
    nop
    ld b, $00
    inc b
    nop
    ld b, $00
    ld [bc], a
    dec bc
    jp nz, Jump_000_0001

    ld [hl], b

jr_05a_7c11:
    adc b
    ld h, b

jr_05a_7c13:
    sub b
    jr nz, @+$52

    dec bc
    ld c, d
    inc b

jr_05a_7c19:
    ld b, $09
    dec bc
    ld a, [$07f3]
    rlca
    ld [$1708], sp
    ld [$0717], sp
    ld [$3906], sp
    ld a, $41
    ld c, h
    or d
    add h
    ld c, d
    inc c
    sub d
    dec bc
    ld d, h
    nop
    jr nc, jr_05a_7bfe

    rra
    ldh [rTAC], a
    jr jr_05a_7c3d

    dec d
    inc bc

jr_05a_7c3d:
    inc d
    ld bc, $011a
    ld a, [bc]
    nop
    add hl, bc
    nop
    ld bc, $8100
    nop
    sbc [hl]
    ret nz

    jr c, @+$32

    call z, $a21c
    or b
    ld c, h
    ldh [rNR10], a
    ret nz

    jr nz, jr_05a_7c58

    add d

jr_05a_7c58:
    ld bc, $0162
    ld [hl], $03
    inc d
    rlca
    jr @+$03

    ld h, $01
    ld [hl+], a
    ld bc, $0002
    add b
    nop
    add b
    nop
    ret nz

    add b
    ld a, h
    nop
    sbc e
    nop
    adc b
    add b
    ld c, [hl]
    add b
    ld b, b
    inc c
    ld [de], a
    ld c, $11
    inc de
    inc l
    ld de, $202a
    ld d, c
    ld b, b
    and b
    ld b, b
    cp b
    jr c, jr_05a_7cca

    dec bc
    db $fc
    pop af
    ret nz

    ret nz

    jr nc, jr_05a_7cfd

    adc b
    jr c, jr_05a_7cd4

    dec bc
    ld e, d
    db $10
    inc c
    inc sp
    rlca
    ld [$100f], sp
    jr @+$29

    jr nc, jr_05a_7ce6

    ld h, c
    sub [hl]
    ld b, a
    xor b
    ld c, h
    or e
    ld [hl], b
    adc b
    ldh a, [$08]
    db $10
    add sp, $08
    inc d
    inc b
    ld a, [$04f8]
    nop
    ld hl, sp+$00
    ld [hl], b
    ld d, b
    xor h
    ld h, b
    sub b
    jr nc, jr_05a_7d05

    inc e
    inc hl
    rlca
    jr c, jr_05a_7cbf

    ld b, [hl]

jr_05a_7cbf:
    inc bc
    add h
    ld b, $89
    nop
    jr c, jr_05a_7cd1

    ld e, h
    ld bc, $0b08

jr_05a_7cca:
    jr nc, jr_05a_7cdd

    add b
    nop
    call c, $120c

jr_05a_7cd1:
    dec bc
    ld b, [hl]
    ld [bc], a

jr_05a_7cd4:
    jr jr_05a_7cfa

    jr jr_05a_7cfc

    inc h
    ld e, d
    ld h, $59
    ld e, [hl]

jr_05a_7cdd:
    nop
    ld d, [hl]

jr_05a_7cdf:
    nop
    ld [hl], e
    nop
    daa
    nop
    xor [hl]
    nop

jr_05a_7ce6:
    xor h
    nop
    or [hl]
    nop
    ld [hl], $00
    ld d, b
    xor h
    call nc, $f42b
    ld a, [bc]
    ld l, h
    sub e
    ld e, a
    and b
    jr jr_05a_7cdf

    inc h
    db $db

jr_05a_7cfa:
    nop
    db $fc

jr_05a_7cfc:
    nop

jr_05a_7cfd:
    ldh [rP1], a
    add b
    nop
    ld c, $00
    ldh a, [rP1]

jr_05a_7d05:
    ret nz

    nop
    nop
    nop
    ldh a, [rP1]
    nop
    ld d, b
    xor c
    ret nc

    inc l
    ld hl, sp+$06
    or h
    ld c, e
    and a
    ld e, b
    ld c, b
    or a
    ld b, h
    cp e
    nop
    db $fc
    nop
    nop
    nop
    stop
    ldh [$80], a
    ld b, b
    nop
    or b
    dec bc
    ret c

    ld de, $0700
    cp b
    inc bc
    db $e4
    ld b, h
    xor e
    jr z, jr_05a_7d87

    inc a
    ld b, e
    jr c, jr_05a_7d7c

    jr nz, jr_05a_7d90

    nop
    ld h, b
    add b
    ld c, h
    nop
    or b
    nop
    dec bc
    rst $30
    dec d
    dec bc
    ld a, [$20f3]
    nop
    ld hl, $2201
    inc bc
    inc h
    ld b, $29
    ld c, $b1
    nop
    stop
    jr nc, @+$0d

    db $f4
    ld de, $310b
    stop
    nop
    ld [c], a
    dec bc
    ld e, h

jr_05a_7d5f:
    ld bc, $000c
    inc c
    nop
    adc h
    inc b
    adc d
    dec bc
    ld c, d
    jr nz, jr_05a_7d6b

jr_05a_7d6b:
    ld bc, $2200
    nop
    ld h, $00
    inc l
    db $10
    jr z, jr_05a_7da5

    ld c, b
    jr nz, jr_05a_7dc8

    ld b, b
    and b
    dec bc
    ld b, h

jr_05a_7d7c:
    ld hl, $000c
    inc c
    dec bc
    ld c, d
    ld [hl+], a
    ld b, $89
    inc l
    ld d, d

jr_05a_7d87:
    jr z, jr_05a_7ddd

    jr nc, @+$4a

jr_05a_7d8b:
    jr nc, @+$4a

    jr nz, jr_05a_7d5f

    ld b, b

jr_05a_7d90:
    and b
    ld b, b
    and b
    add b
    ld b, b
    dec bc
    ld h, d
    inc hl
    dec bc
    db $db
    ld bc, $900f
    rrca
    sub b
    ld [hl], b
    adc b
    dec bc
    ret nc

    nop
    dec bc

jr_05a_7da5:
    ld a, d
    inc hl
    dec bc
    add hl, sp
    ld [hl+], a
    dec bc
    rst $30
    or $02
    nop

jr_05a_7daf:
    ld [bc], a
    ld c, $91
    ld c, $91
    inc c
    sub d
    ld [$08d4], sp
    call nc, $a850
    ld h, b
    sub b
    ld h, b
    sub b
    inc b
    ld a, [hl+]
    nop
    ld l, h
    dec bc
    ld [hl], d
    jr nz, @+$22

jr_05a_7dc8:
    ld d, b
    dec bc
    ld e, h
    ld hl, $00c0
    inc e
    nop
    jr jr_05a_7ddd

    jr nc, @+$23

    jr nz, jr_05a_7dd6

jr_05a_7dd6:
    ld b, b
    nop
    ld b, b
    nop
    add b
    ld [bc], a
    dec c

jr_05a_7ddd:
    inc b
    db $db
    inc d
    ld l, d
    ld e, $21
    jr jr_05a_7d8b

    jr nc, jr_05a_7daf

    jr c, jr_05a_7e2f

    ld b, b
    cp b
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    dec bc
    ret nc

    ld hl, $0030
    jr nc, jr_05a_7df8

jr_05a_7df8:
    ld b, b
    dec bc
    and b
    rst $38
    ld c, l
    dec bc
    ld e, a
    ccf
    ld c, l
    dec bc
    cp a
    ccf
    ld c, l
    dec bc
    rra
    ld c, a
    ld c, l
    dec bc
    ld a, a
    ld c, a
    ld c, l
    dec bc
    rst $18
    ld c, a
    ld c, l
    dec bc
    ccf
    ld e, a
    ld c, l
    dec bc
    sbc a
    ld e, a
    ld c, l
    dec bc
    rst $38
    ld e, a
    ld c, l
    dec bc
    ld e, a
    ld l, a
    ld c, l
    dec bc
    cp a
    ld l, a
    ld c, l
    dec bc
    rra
    ld a, a
    ld c, l
    dec bc
    ld a, a
    ld a, a

Jump_05a_7e2c:
    ld c, l
    dec bc
    rst $18

jr_05a_7e2f:
    ld a, a
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_05a_7f00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
