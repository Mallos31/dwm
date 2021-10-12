; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $024", ROMX[$4000], BANK[$24]

    inc h
    dec a
    ld b, b
    ret z

    ld b, h
    dec c
    ld b, [hl]
    add hl, sp
    ld b, a
    sub c
    ld c, h
    jp $fa4d


    ld c, [hl]
    jp z, $b452

    ld d, e
    xor b
    ld d, h
    ld d, $57
    rla
    ld e, b
    jr nz, @+$5b

    inc de
    ld e, h
    di
    ld e, h
    jp c, Jump_000_195d

    ld h, d
    nop
    ld h, e
    db $ed
    ld h, e
    sbc $66
    ld [$d367], a
    ld l, b
    and h
    ld l, e
    db $76
    ld l, h
    ld c, d
    ld l, l
    ld b, d
    ld [hl], c
    adc b
    ld [hl], d
    adc $73
    xor d
    ld a, c
    pop de
    ld a, d
    nop
    ld [$0015], sp
    rst $38
    ld a, a
    ld a, a
    add b
    cp a
    ld a, a
    ld a, a
    cp e
    cp e
    sub c
    sub c
    sub c
    cp e
    cp e
    rst $38
    nop
    rst $38
    rst $38
    dec d
    rrca
    ld bc, $bbbb
    ld de, $1111
    dec d
    dec c
    ld bc, $fefe
    ld bc, $fefd
    cp $15
    jr jr_024_4068

    cp c

jr_024_4068:
    cp e
    rst $38
    xor $ee
    call nz, $c4c4
    xor $ee
    rst $38
    dec d
    ld [$ee04], sp
    xor $44
    ld b, h
    ld b, h
    dec d
    dec [hl]
    ld bc, $1a15
    ld [bc], a
    rst $28
    rst $28
    ld b, l
    ld b, l
    ld b, l
    rst $28
    rst $28

jr_024_4087:
    dec d
    rla
    dec b
    rst $38
    rst $38
    add b
    sbc a
    rst $38
    rst $38
    ld c, b
    ret z

    ld c, b
    ret c

    ld c, b
    rst $18
    ld c, e
    call c, $df48
    dec d
    ld [de], a
    ld [bc], a
    dec d
    db $fc
    ld a, [c]
    cp e
    ld b, h
    dec d
    stop
    ld bc, $fffd
    rst $38
    ld [de], a
    inc de
    ld [de], a
    dec de
    ld [de], a
    ei
    or d
    ld e, e
    ld [de], a
    ei
    ld c, [hl]
    reti


    dec d
    ld l, d
    ld [bc], a
    dec d
    sub b
    inc b
    xor $11
    dec d
    ld a, d
    ld [bc], a
    dec d
    and b
    inc b
    ld a, [c]
    dec d
    adc c
    inc bc
    dec d
    or b
    inc b
    dec d
    sub b
    ld [bc], a
    ld c, a
    rst $18
    ld c, b
    rst $18
    ld c, b
    ret c

    ld c, a
    rst $18
    jr nc, jr_024_4087

    dec d
    and b
    ld [bc], a
    dec d
    ld [de], a
    nop
    nop
    nop

Call_024_40df:
    dec d
    ld [hl], h
    nop
    dec d
    or b
    ld [bc], a
    ld a, [c]
    ei
    ld [de], a
    ei
    ld [de], a
    dec de
    ld a, [c]
    ei
    inc c
    dec c
    dec d
    pop af
    db $fc
    ld bc, $02b7
    ld a, [hl]
    ld b, $6e
    dec bc
    db $eb
    rra
    cp [hl]
    ld a, [hl+]
    ld l, e
    ld a, [hl]
    ld a, a
    call c, $80d3
    or a
    ld b, b
    rst $38
    ld h, b
    db $eb
    ret nc

    ei
    ret z

    ld e, a
    call nz, $f26d
    ld [hl], a
    ld sp, hl
    dec bc
    ld bc, $1115
    dec bc
    ld [hl], b
    ld a, a
    cp $ff
    ld a, [hl+]
    db $eb
    sub $d7
    rst $38
    ei
    ld e, a
    ld e, b
    sbc b
    sbc a
    xor a
    rst $28
    ld [$7ffd], sp
    rst $38
    ld hl, sp+$7b
    rst $28
    ld l, a
    rst $30
    rst $18
    ei
    dec de
    add hl, de
    ei
    push af
    db $fd
    add b
    dec d
    ld de, $150b
    ld d, b
    nop
    ld b, a
    rst $28
    xor $fe
    cp [hl]
    cp a
    rla
    rla
    ld a, [de]
    cp d
    cp h
    db $fc
    ld c, h
    ld c, l
    rst $10
    rst $30
    ld [hl], h
    ld a, l
    ld e, c
    ld e, e
    sub e
    sub a
    and [hl]
    xor $cc
    call c, $b998
    or e
    inc sp
    db $eb
    rst $28
    ld l, $ff
    sbc d
    cp [hl]
    ret


jr_024_4162:
    reti


    ld h, l
    ld l, a
    inc sp

jr_024_4166:
    scf
    add hl, de
    sbc e
    dec d
    ld b, b
    nop
    call nz, Call_024_6eee
    ld a, a
    ld a, e
    ei
    pop de
    pop de
    ld [hl], c
    ei
    dec hl
    cpl
    db $fd
    rst $38
    ld d, [hl]

jr_024_417b:
    ld d, [hl]
    ld h, h
    push hl
    jp hl


    ei
    db $d3
    rst $10
    ld h, [hl]
    ld l, [hl]
    dec d
    ld a, h
    db $10
    jr nc, jr_024_41fc

    ld h, b
    rst $20
    jp $80cc


    sbc a
    ld c, $31
    nop
    ld a, a
    dec sp
    call nz, $ff00
    inc c
    call $e606
    add e
    ld [hl], e
    ld bc, $e0f9
    inc e
    nop
    cp $b8
    ld b, a
    nop
    rst $38
    cp [hl]
    cp $6c
    db $fc
    inc h
    ld h, [hl]
    sub [hl]
    cp a
    set 3, e
    dec d
    adc d
    ld [de], a
    dec d
    or b
    rra
    dec c
    rst $08
    cpl
    db $10
    rst $10
    jr nz, jr_024_4166

    ld l, $ae
    jr nz, jr_024_4162

    dec d

Jump_024_41c3:
    ld b, $22
    ld a, [c]
    push af
    ld [$07eb], sp
    sub h
    ld [hl], h
    rst $38
    ld b, $8d
    ld [hl], h

jr_024_41d0:
    rst $38
    rlca
    adc h
    ld [hl], h
    rst $38
    dec d
    ld [$ae21], sp
    jr nz, jr_024_417b

    ld a, a
    ld a, a
    add b
    add b
    ld a, a
    ld a, a
    nop
    add b
    dec d
    jr jr_024_4207

    sbc h
    inc b
    rlca
    cp $ff
    ld bc, $fe05
    cp $00
    inc bc
    rst $00
    scf
    jr jr_024_41d0

    and b
    jr z, jr_024_4238

    ret nz

    ld e, a
    ld e, a
    ld b, c

jr_024_41fc:
    ld d, c
    ld b, c
    ld e, a
    ld b, b
    ld b, b
    ld a, [c]
    push af
    inc c
    db $ed
    ld [bc], a
    ld a, [bc]

jr_024_4207:
    ld bc, $7d01
    ld a, l
    dec b
    ld b, l
    dec b
    ld a, l
    ld bc, $4001
    ld b, b
    ld d, h
    ld c, h
    ld e, h
    ld e, h
    ret nz

    ret nz

    ld a, a
    ld a, a
    ld b, b
    ld a, a
    ret nz

    ret nz

    ccf
    ccf
    dec d
    ld e, b
    inc h
    rst $38
    rst $38
    ld bc, $01ff
    ld bc, $fefe
    db $eb
    inc de
    dec b
    or $ab
    ld c, l
    inc d
    ld hl, sp-$22
    db $10
    ld l, $f4

jr_024_4238:
    cp [hl]
    inc l
    ld [hl], $a4
    adc $d1
    ldh [$2f], a
    or e
    call nc, $efd8
    ld a, [$ec89]
    or a
    rst $18
    sub h
    call c, Call_000_3697
    and h
    ld a, $a0
    or [hl]
    inc h
    dec d
    and b
    jr nz, jr_024_4294

    xor [hl]
    or b
    jr nz, jr_024_4298

    and b
    sbc $95

jr_024_425d:
    db $fc
    add a

jr_024_425f:
    dec d
    sbc h

jr_024_4261:
    jr nz, jr_024_4261

    add l
    db $fc
    rst $30
    rrca

jr_024_4267:
    inc b
    db $fc
    add a
    ld a, $ac
    ld [hl], $a4
    dec d
    and h
    jr nz, jr_024_42a8

    and h
    cpl
    or b
    cp a
    ccf
    nop
    add b
    cp $b5
    call c, Call_000_1597
    sbc h
    jr nz, jr_024_425f

    sub l
    db $f4
    rrca
    rst $38
    db $fc
    nop
    inc bc
    dec d
    or b
    ld [de], a
    nop
    rra

jr_024_428d:
    ld c, $31
    dec d
    ld a, d
    ld [bc], a
    dec d
    ret nz

jr_024_4294:
    ld [de], a
    nop
    ld hl, sp-$20

jr_024_4298:
    inc e
    dec d
    ld a, d
    ld [bc], a
    add e
    db $eb
    ld b, h
    ld d, l
    jr jr_024_425d

    jr nz, jr_024_42ce

    ld c, b
    call c, $f930

jr_024_42a8:
    ld b, d
    di
    ld l, b
    jp hl


    add d
    and a
    ld b, h
    ld e, a
    jr nc, jr_024_4267

    inc c
    xor a
    ld h, $77
    sbc l
    cp l
    ld b, [hl]
    ld e, a
    inc l
    cpl
    inc bc
    ei
    inc b
    and l
    jr jr_024_431d

    jr nz, jr_024_432e

    ld c, b
    call c, $b930
    ld b, d
    ld [hl], e
    ld l, b
    ld l, b
    add b
    or a

jr_024_42ce:
    ld b, b
    ld e, l
    jr nc, jr_024_428d

    ld [$24aa], sp
    ld [hl], a
    sbc b
    cp c
    ld b, h
    ld e, l

Jump_024_42da:
    inc l
    ld l, $31
    cp c
    ld b, b
    ld d, d
    sub b
    or l
    ld h, d
    ei
    adc d
    xor a
    ld [hl], d
    ld a, d
    and l
    or l
    ld a, b
    ld a, [$0b0a]
    ld b, $57
    ld [de], a
    ld e, d
    inc c
    ld l, l
    sub d
    cp e
    adc c
    ret


    ld b, $26
    ld [hl+], a
    dec sp
    sub c

Call_024_42fd:
    sub l
    ld h, d
    ld a, d
    ld c, h
    db $ec
    inc [hl]
    or l
    inc b
    ld [hl], a
    ld [$02bd], sp
    db $eb
    nop
    cp $1a
    ld e, d
    call Call_000_32fd
    inc sp
    jr nz, jr_024_4343

    ld d, b
    ld d, a
    and b
    and e
    sub b
    rst $18
    nop

jr_024_431b:
    rst $38
    ld b, b

jr_024_431d:
    rst $30
    jr nc, jr_024_431d

    add hl, bc
    ld l, a
    inc d
    or $20
    ld l, d
    ld c, d
    jp nc, $e846

    ld e, h
    di
    nop
    cp [hl]

jr_024_432e:
    jr nz, jr_024_431b

    nop
    and $90
    di
    ld [hl+], a
    dec hl
    ld c, d

Call_024_4337:
    sub $1c
    and b
    xor c
    scf
    and h
    or c
    reti


    jp z, $e4d3

    and a

jr_024_4343:
    sbc b
    inc hl
    or h
    push hl
    sbc [hl]
    jr jr_024_434f

    inc sp
    or h
    sbc b
    ld b, [hl]
    push de

jr_024_434f:
    cpl
    add b
    ld [hl], h
    ld [de], a
    db $db
    adc l
    ld d, e
    inc [hl]
    adc l
    inc b

jr_024_4359:
    rst $20
    jr c, jr_024_439a

    ld b, b
    ld a, d
    jr c, jr_024_4359

    ld b, $6f
    inc c
    xor d
    add d
    sub l
    ld d, e
    ld hl, sp+$47
    call nc, $aa31
    ld b, b
    and $08
    dec de
    add sp, -$46
    or d
    db $db
    db $10
    dec h
    ld c, l
    ld d, e
    ret z

    ld h, $7d
    add e
    add c
    jp z, $f451

    ld d, b
    ret


    xor h
    push af
    inc l
    inc hl
    call nc, Call_000_04b8
    ld [hl], $26
    and c
    nop
    db $dd
    adc e
    ld l, l
    pop hl
    inc bc
    inc [hl]
    ret z

    add e
    ld a, a
    ld h, h
    sub l
    sub [hl]
    add [hl]

jr_024_439a:
    ld a, b
    ld e, l
    ld h, e
    sbc e
    dec c
    xor $9e
    ld d, c
    ld [hl], $af
    ld l, d
    db $db
    and c
    add d
    and e
    push bc
    cp h
    ret nz

    add $d9
    ldh a, [$37]
    cp c
    ld c, d
    db $ec
    ld [hl], l
    sub [hl]
    ld a, [de]
    call $ab09
    call $615f
    cp d
    call c, $86a5
    ld d, d
    ld h, e
    ld a, [hl+]
    or a
    sub a
    jr jr_024_43d3

    call $8363
    nop
    ld hl, sp-$45
    db $dd
    push hl

jr_024_43cf:
    ld hl, $4ac6
    sbc h

jr_024_43d3:
    dec h
    ld sp, hl
    ld a, [bc]
    jr nc, jr_024_43cf

    add $c9
    nop
    ccf
    dec d
    and b
    rst $38
    ld c, l
    dec d
    sbc a
    ld c, a
    ld c, l
    nop
    or a
    nop
    ld a, a
    nop
    ld l, e
    nop
    db $eb
    nop
    or a
    nop
    ld a, l
    nop
    ld l, l
    nop
    or $00
    db $fc
    nop
    di
    ld [bc], a
    push hl
    nop
    db $db
    ld [$00b5], sp
    cp h
    ld [bc], a
    reti


    nop
    and e
    nop
    db $fc
    nop
    inc sp
    ld [bc], a
    add l
    dec d
    ld d, $51
    inc a
    ld [bc], a
    add hl, de
    nop
    inc hl
    nop
    ld a, [$6f00]
    nop
    cp c
    inc b
    or d
    nop
    halt
    cp c
    nop
    ld c, a
    nop
    ld [hl], $10
    xor b
    nop
    jp $b502


    db $10
    ld l, e
    nop
    ld a, l
    nop
    cp h
    ld [bc], a
    ld e, c
    nop
    and e
    jr nz, jr_024_448c

    dec d
    ld [hl+], a
    ld e, d
    jr nz, @+$5d

    nop
    scf
    nop
    add a
    dec d
    ld d, $51
    dec a
    nop
    dec de
    nop
    inc hl
    jr nz, jr_024_449f

    nop
    or e
    dec d
    inc h
    ld d, e
    cp h
    nop
    ld e, e
    nop
    and [hl]
    jr nz, jr_024_44a3

    nop
    ld a, [hl+]
    add hl, bc
    sub h
    nop
    xor l
    jr nz, jr_024_44ad

    nop
    ld [hl], l
    inc b
    xor b
    nop
    db $d3
    jr nz, jr_024_44be

    nop
    ld [hl], $00
    adc l
    nop
    xor [hl]
    ld b, b
    inc sp
    ld [$0065], sp
    adc l
    nop
    di
    dec d
    and c
    ld c, a
    ld c, l
    dec d
    rst $38
    ld e, a
    ld c, l
    dec d
    ld e, a
    ld l, a
    ld c, l
    dec d
    ret nz

    rst $38
    cpl
    rrca
    ldh a, [rNR10]
    rst $28
    nop
    pop bc
    inc a
    cp h
    ld a, [hl]
    cp $7e

jr_024_448c:
    ld [c], a
    ld h, d
    call c, $ff00
    ldh [$ef], a
    ldh a, [rPCM34]
    ld [hl], h
    or e
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l

jr_024_449f:
    ld b, b
    or c
    ld b, a
    and [hl]

jr_024_44a3:
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld l, $cd
    rrca
    xor $07
    rst $30

jr_024_44ad:
    nop
    rst $38
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    nop
    add e
    ld [$f0f7], sp
    rrca
    dec d

jr_024_44be:
    ret c

    nop
    dec d
    ld b, c
    ld a, a
    ld c, l
    dec d
    and c
    ld a, a
    ld c, e
    nop
    ld [bc], a
    ld c, $50
    ld d, b
    ld d, b
    ld [hl-], a
    inc sp
    ld d, b
    ld c, $05
    nop
    ld [hl-], a
    inc sp
    ld d, a
    ld d, [hl]
    ld e, c
    ld d, e
    inc [hl]
    dec [hl]
    ld [hl-], a
    inc sp
    ld c, $f4
    ld sp, hl
    jr c, jr_024_451c

    ld c, $10
    nop
    jr c, jr_024_4521

    ld d, b
    inc [hl]
    dec [hl]
    ld d, e
    jr c, jr_024_4527

    ld e, c
    ld [hl], $37
    inc [hl]
    dec [hl]
    ld c, $f3
    ld sp, hl
    ld a, [hl-]
    dec sp
    ld bc, $0101
    ld bc, $3b3a
    ld [bc], a
    ld [hl], $37
    ld d, b
    ld a, [hl-]
    dec sp
    ld d, l
    ld d, d
    ld d, b
    ld [hl], $37
    ld c, $f4
    ld hl, sp+$03
    inc b
    ld c, $61
    inc bc
    dec b
    jr c, jr_024_454d

    ld [hl-], a
    inc sp
    ld d, a
    ld d, l
    ld d, l
    jr c, jr_024_4554

    ld d, b

jr_024_451c:
    ld c, $54
    dec c
    jr c, jr_024_455a

jr_024_4521:
    inc b
    inc b
    dec b
    ld a, [hl-]
    dec sp
    inc [hl]

jr_024_4527:
    dec [hl]
    ld d, b
    ld d, e
    ld d, l
    ld a, [hl-]
    dec sp
    ld c, $73
    ld c, $3a
    dec sp
    inc b
    inc b
    dec b
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_024_4574

    ld d, h
    ld d, l
    db $10
    ld de, $f40e
    ld hl, sp+$06
    rlca
    ld c, $c1
    inc bc
    ld [$3736], sp
    ld d, b
    ld d, b
    ld a, [hl-]

jr_024_454d:
    dec sp
    ld bc, $1312
    inc d
    ld c, $f4

jr_024_4554:
    ld hl, sp+$09
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_024_455a:
    jr nz, jr_024_457d

    jr nz, jr_024_457f

    dec bc
    ld c, $03
    nop
    inc bc
    inc b
    inc b
    ld d, $17
    jr jr_024_4577

    call nc, $240a
    dec h
    ld a, [bc]
    ld [hl+], a
    inc hl
    ld [hl+], a
    ld c, $21
    nop

jr_024_4574:
    ld c, $ec
    nop

jr_024_4577:
    ld d, $1a
    dec de
    inc e
    ld c, $f4

jr_024_457d:
    ld hl, sp+$0c

jr_024_457f:
    dec c
    ld h, $27
    dec c
    dec c
    dec c
    dec c
    ld a, [hl-]
    dec sp
    ld [hl], $37
    ld d, e
    ld d, c
    inc bc
    inc b
    ld a, [de]
    dec de
    ld b, b
    ld b, c
    ld c, $f4
    ld hl, sp+$38
    add hl, sp
    ld d, l
    ld e, b
    jr c, jr_024_45d4

    ld d, b
    ld d, c
    ld e, b
    ld d, l
    ld e, c
    ld d, d
    ld e, c
    ld e, c
    ld b, $07
    ld l, $0a
    ld b, d
    ld b, e
    ld c, $35
    ld a, [bc]
    ld d, h
    ld d, l
    ld a, [hl-]
    dec sp
    ld d, l
    ld e, b
    ld d, l
    ld e, b
    ld d, l
    ld d, h
    ld e, c
    ld d, b
    add hl, bc
    ld a, [bc]
    jr z, @+$2b

    ld a, [bc]
    ld a, [bc]
    ld c, $34
    ld a, [de]
    ld d, a
    ld e, b
    ld d, a
    ld d, h
    ld d, l
    ld e, c
    ld c, $05
    nop
    jr c, jr_024_4605

    add hl, bc
    ld a, [bc]
    jr c, @+$3b

    ld c, $72
    ld a, [de]
    ld a, [hl-]

jr_024_45d4:
    dec sp
    ld d, b
    ld d, b
    ld d, b
    ld d, a
    ld e, b
    ld d, l
    ld d, d
    ld d, e
    ld c, $cc
    nop
    add hl, bc
    ld a, [bc]
    ld a, [hl-]
    dec sp
    ld c, $72
    ld a, [de]
    ld c, $8a
    db $10
    ld c, $8a
    db $10
    ld c, $a7
    db $10
    inc [hl]
    dec [hl]
    ld c, $e0
    nop
    inc h
    dec h
    ld c, $f4
    ld a, [$a00e]
    db $10
    ld c, $60
    db $10
    ld d, [hl]
    ld d, b
    ld [hl], $37
    inc c

jr_024_4605:
    dec c
    dec c
    dec c
    ld h, $27
    ld c, $a0
    ld hl, sp+$00
    ld [bc], a
    rrca
    ld d, b
    ld d, b
    ld d, b
    ld [hl-], a
    inc sp
    ld d, b
    rrca
    dec b
    nop
    ld [hl-], a
    inc sp
    ld d, a
    ld d, [hl]
    ld e, c
    ld d, e
    inc [hl]
    dec [hl]
    ld [hl-], a
    inc sp
    rrca
    db $f4
    ld sp, hl
    ld [hl-], a
    inc sp
    rrca
    stop
    ld d, b
    ld d, b
    ld d, b
    inc [hl]
    dec [hl]
    ld d, e
    ld d, l
    ld d, l
    ld e, c
    ld [hl], $37
    inc [hl]
    dec [hl]
    rrca
    di
    ld sp, hl
    ld bc, $410f
    inc bc
    ld [bc], a
    ld [hl], $37
    ld d, b
    ld d, h
    ld d, l
    ld d, l
    ld d, d
    ld d, b
    ld [hl], $37
    rrca
    db $f4
    ld hl, sp+$03
    inc b
    rrca
    ld h, c
    inc bc
    dec b
    rrca
    ld [$5501], sp
    ld d, l
    ld d, l
    ld d, e
    ld d, b
    rrca
    ld d, h
    rrca
    inc bc
    rrca
    ld hl, $5000
    ld d, e
    ld d, l
    ld d, l
    ld d, l
    rrca
    ld [hl], e
    rrca
    inc b
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld d, b
    ld d, b
    ld d, h
    ld d, l
    db $10
    ld de, $f40f
    ld hl, sp+$06
    rlca
    rrca
    pop bc
    inc bc
    ld [$ac0f], sp
    nop
    nop
    ld bc, $1201
    inc de
    inc d
    rrca
    db $f4
    ld hl, sp+$09
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr nz, jr_024_46b2

    jr nz, @+$23

    dec bc
    rrca
    inc bc
    nop
    inc bc
    inc b
    inc b
    ld d, $17
    jr jr_024_46ad

    call nc, $240a
    dec h
    ld a, [bc]
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    dec bc
    inc [hl]
    dec [hl]
    rrca
    db $ec
    nop

jr_024_46ad:
    ld d, $1a
    dec de
    inc e
    rrca

jr_024_46b2:
    db $f4
    ld hl, sp+$0c
    dec c
    ld h, $27
    dec c
    rrca
    inc h
    db $10
    ld c, $36
    scf
    ld d, e
    ld d, c
    inc bc
    inc b
    ld a, [de]
    dec de
    ld b, b
    ld b, c
    rrca
    db $f4
    ld sp, hl
    ld d, c
    ld [hl], b
    ld [hl], c
    ld d, e
    ld d, b
    ld d, b
    ld d, c
    ld e, b
    ld d, l
    ld e, c
    ld d, d
    ld e, c
    ld e, c
    ld b, $07
    ld l, $0a
    ld b, d
    ld b, e
    rrca
    db $f4
    ld sp, hl
    ld d, a
    ld [hl], d
    ld [hl], e
    ld e, b
    ld d, d
    ld d, l
    ld e, b
    ld d, l
    ld e, b
    ld d, l
    ld d, h
    ld e, c
    ld d, b
    add hl, bc
    ld a, [bc]
    jr z, jr_024_471a

    ld a, [bc]
    ld a, [bc]
    rrca
    db $f4
    ld a, [$5857]
    ld d, a
    ld d, h
    ld d, l
    ld e, c
    rrca
    ld b, $02
    add hl, bc
    ld a, [bc]
    ld a, [hl+]
    dec hl
    rrca
    ld [hl], d

jr_024_4705:
    inc e
    ld d, b
    rrca
    add b
    db $10
    ld d, l
    ld d, d
    ld d, e
    ld d, b
    ld d, b
    jr nc, jr_024_4742

    add hl, bc
    ld a, [bc]
    inc l
    dec l
    rrca
    sub d
    rra
    nop
    ld d, b

jr_024_471a:
    ld d, h
    ld d, a
    rrca
    and a
    db $10
    inc [hl]
    dec [hl]
    rrca
    ldh [rP1], a
    inc h
    dec h
    rrca
    or h
    ld e, $0f
    xor [hl]
    nop
    ld d, [hl]
    ld d, b
    ld [hl], $37
    inc c
    dec c
    dec c
    dec c
    ld h, $27
    rrca
    and b
    ld hl, sp+$00
    ld [$0413], sp
    add a
    inc b
    add h
    db $fc
    db $fc

jr_024_4742:
    rst $38
    rst $38
    jr nz, jr_024_4705

    and b
    or b
    cp a
    cp a
    rst $38
    rst $38
    ld de, $11df
    add hl, de
    ld de, $1319
    ld b, $00
    ccf
    ccf
    ldh a, [$fe]
    nop
    ld hl, sp-$71
    adc a
    sub c
    sbc a
    db $10
    jr @+$01

    rst $38
    add b
    rst $38
    add b
    ret nz

    db $fc
    db $fc
    rlca
    rst $30
    nop
    add b
    rst $38
    rst $38
    ld hl, sp-$08
    rst $28
    rst $28
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld h, c
    ld h, c
    rst $38
    rst $38
    inc de
    ldh a, [$fc]
    rra
    rra
    db $ed
    db $ec
    add [hl]
    call c, $a58f
    adc a
    push de
    inc de
    ld d, [hl]
    ld [bc], a
    rst $38
    rst $38
    rst $38
    nop
    ei
    ei
    add l
    and h
    add [hl]
    call nc, Call_024_5a13
    ld b, $13
    ld [hl], b
    ld [bc], a
    inc de
    ld a, [$13f2]
    ld h, b
    nop
    rst $18
    rst $18
    scf
    or a
    ld l, l
    dec l
    xor e
    db $eb
    xor l
    db $fd
    xor e
    ei
    ld hl, sp-$08
    inc de
    add [hl]
    ld b, $a5
    push af
    xor e
    ei
    inc de
    ld e, b
    inc b
    inc de
    ld e, b
    inc b
    inc de
    ldh a, [$fc]
    inc de
    sbc h
    nop
    inc de
    ret nz

    ld [$d68c], sp
    adc h
    and a
    adc e
    db $d3
    adc b
    and a

jr_024_47cd:
    sbc a
    rst $08
    or b
    sub c
    ldh [$aa], a
    rst $38
    inc de
    ld [hl], b
    dec b
    nop
    nop
    nop
    ld d, l
    nop
    xor d
    rst $38
    rst $38
    dec h
    ld [hl], l
    dec hl
    ei
    push bc
    push de
    dec bc
    ei
    push af
    db $fd
    dec bc
    adc a
    dec b
    ld d, a
    rst $38
    rst $38
    add b
    add b
    and a
    and b
    ld e, b
    ld b, b
    and l
    add h
    ld b, c
    nop
    ld c, h
    nop
    sub d
    nop
    and h
    jr nz, @+$03

    ld bc, $05e5
    ld a, [de]
    ld [bc], a
    and l
    ld hl, $0082
    ld [hl-], a
    nop
    ld c, c
    nop
    dec h
    inc b
    adc c
    nop
    sub d
    nop
    ld c, c
    nop
    ld d, [hl]
    db $10
    and b
    add b
    ld e, b
    ld b, b
    and a
    and b
    add b
    add b
    sub c
    nop
    ld c, c
    nop
    sub d
    nop
    ld h, d
    nop
    dec b
    ld bc, $021a
    push hl
    dec b
    ld bc, $1301
    nop
    ld [de], a
    and h
    add h
    ld b, c
    ld bc, $0a13

jr_024_4838:
    db $10
    add c
    nop
    nop
    nop
    inc de
    ld [de], a
    db $10
    dec h
    ld hl, $8082
    inc de
    ld a, [de]
    db $10
    add c
    nop
    xor d
    jr z, jr_024_47cd

    nop
    ld d, d
    nop
    ld c, h
    nop
    and d
    add d
    inc de
    ld a, [hl+]
    db $10
    and b
    and b
    ld d, l
    inc d
    add c
    nop
    ld c, d
    nop
    ld [hl-], a
    nop
    ld b, l
    ld b, c
    inc de
    ld a, [hl-]
    stop
    nop
    inc de
    nop
    inc d
    ld b, a
    inc de
    ld sp, $ad11
    inc de
    rrca
    dec d
    ld [c], a
    inc de
    ld hl, $b511
    inc b
    adc l
    inc de
    ld hl, $5711
    db $10
    and c
    inc de
    add hl, hl
    ld de, $0000
    or c
    inc de
    ld sp, $e211
    nop
    add l
    inc de
    add hl, sp
    ld de, $fc13
    ldh a, [rNR13]
    ld [bc], a
    ld [de], a
    ld b, d
    inc de
    add hl, bc
    ld de, $1391
    ld c, a

jr_024_489b:
    inc de
    and l
    ld hl, $1342
    add hl, de
    ld de, $0089
    xor d
    jr nz, jr_024_4838

    nop
    ld d, e
    nop
    ld c, l
    nop
    inc de
    xor b
    inc d
    ld d, l
    inc b
    adc c
    nop
    jp z, $b200

    inc de
    or a
    dec d
    db $10
    jr jr_024_48db

    rra
    ldh a, [$f8]
    sub b
    ret nc

    db $e3
    ldh [rNR32], a
    add b
    ld h, d
    nop
    adc b
    nop
    ld a, $20
    ldh [$80], a
    cp a
    ccf
    rrca
    cpl
    ld [$fc0b], sp
    cp $04
    or $07
    rlca
    cp $fe

jr_024_48db:
    add e
    ei
    add d
    jp nz, $f8fb

    inc c
    ldh [rNR10], a
    inc de
    dec bc
    ld hl, $000c
    or a
    add a
    ld b, c
    dec c
    add c
    ld bc, $3f3f
    dec b
    push af
    dec b
    dec b
    rst $38
    rst $38
    add d
    ld hl, sp-$7c
    ret nz

    ld hl, sp-$10
    ld [de], a
    ret nz

    jr nz, jr_024_4901

jr_024_4901:
    ld c, b
    nop
    add b
    nop
    and b
    nop
    ld h, $00
    ld c, e
    inc bc
    sub c
    dec b
    ld hl, $7f01
    ccf
    add l
    dec [hl]
    inc de
    inc a
    jr nz, jr_024_489b

jr_024_4917:
    add h
    ld a, [$84f8]
    ldh a, [$e4]
    ldh [$29], a
    ldh [$29], a
    jr nz, jr_024_4955

    jr nz, jr_024_4917

    ldh [$bf], a
    sbc a
    ld b, c
    dec e
    ld b, c
    ld bc, $0141
    rst $38
    ld a, a
    add b
    ld a, $00
    ld b, b
    nop
    ld b, b
    ld [de], a
    add b
    ld [de], a
    add b
    jp hl


    ldh [$09], a
    ldh [rDIV], a
    add b
    db $fc
    ld hl, sp-$7e
    ld hl, sp-$80
    ret nz

    inc b
    rlca
    inc b
    inc b
    db $fc
    ld a, h
    rst $38
    ld a, a
    ld h, b
    ccf
    ldh [$b0], a
    rst $38
    cp a
    cp a

jr_024_4955:
    sbc a
    inc h
    add b
    ld [de], a
    nop
    ld a, d
    ld h, b
    ret


    ldh [rLY], a
    ldh [$fa], a
    ld hl, sp+$01
    ldh a, [rP1]
    add b
    inc b
    ld [hl], a
    inc de
    sub d
    inc h
    ld h, b
    jr nc, @+$41

    rra
    sbc a
    adc a
    adc b
    nop
    ld h, d
    nop
    db $10
    add b
    db $ec
    ldh [$93], a
    ret nc

    ldh a, [$f8]
    rra
    rra
    inc de
    inc h
    nop
    dec b
    ld [hl], l
    dec b
    dec b
    ccf
    ccf
    add b
    ld c, $40
    nop
    or b
    add b
    inc c
    nop
    inc de
    ret nz

    jr nz, jr_024_49b0

    add b
    db $e3
    ldh [$90], a
    inc de
    ret


    inc hl
    inc de
    ldh a, [$fc]
    ld [$f818], sp
    ld hl, sp+$0f
    rst $28
    add hl, bc
    add hl, bc
    rst $00
    rlca
    jr c, jr_024_49ab

    ld b, [hl]

jr_024_49ab:
    nop
    ld de, $7c00
    inc b

jr_024_49b0:
    rlca
    ld bc, $fcfd
    ldh a, [$f4]
    db $10
    ret nc

    ccf
    ld a, a
    jr nz, jr_024_4a2b

    ldh [$e0], a
    ld a, a
    ld a, a
    pop bc
    rst $18
    ld b, c
    ld b, e
    rst $18
    rra
    jr nc, jr_024_49cf

    ld [$1300], sp
    inc c
    jr nc, @+$32

    nop

jr_024_49cf:
    db $ed
    pop hl
    add d
    ldh a, [$81]
    ret nz

    db $fc
    db $fc
    and b
    cp a
    and b
    or b
    rst $38
    rst $38
    ld b, c
    dec e
    ld hl, $1f01
    rrca
    ld c, b
    ld [bc], a
    inc b
    nop
    ld [de], a
    nop
    ld bc, $0500
    nop
    ld h, h
    nop
    jp nc, $89c0

    and b
    add h
    add b
    cp $fc
    and c
    xor h
    and b
    and b
    rst $38
    rst $38
    ld hl, $5f21
    rra
    ld hl, $270f
    rlca
    sub h
    rlca
    sub h
    inc b
    ld c, h
    inc b
    ld c, a
    rlca
    db $fd
    ld sp, hl
    add d
    cp b
    add d
    add b
    add d
    add b
    rst $38
    cp $81
    db $fc
    add b
    ret nz

    add b
    ret nz

    ld c, b
    inc bc
    ld c, b
    nop
    sub a
    rlca
    sub b
    ld b, $20
    nop
    ccf
    rra
    ld b, c
    dec e

jr_024_4a2b:
    ld bc, $e001
    cp $e0
    ldh a, [$3f]
    cp [hl]
    rst $38
    cp $86
    db $f4
    add a
    push bc
    add a
    push bc
    db $fd
    ld sp, hl
    inc h
    ld bc, $0048
    ld e, [hl]
    ld b, $93
    rlca
    ld [hl+], a
    inc bc
    ld e, a
    rra
    add b
    ccf
    nop
    ld bc, $ee20
    jr nz, jr_024_4a71

    ccf
    ld a, $ff
    cp $06
    db $fc
    ld b, $0c
    db $fc
    ld hl, sp-$07
    pop af
    ld de, $4600
    nop
    ld [$3701], sp
    rlca
    ret


    dec c
    rrca
    rrca
    ld hl, sp-$02
    ld [$3fec], sp
    ccf
    jr nz, @+$40

jr_024_4a71:
    jr nz, jr_024_4aa3

    db $fc
    db $fc
    ld bc, $02f0
    nop
    db $ed
    pop hl
    jr nc, jr_024_4a7d

jr_024_4a7d:
    inc de
    ret nz

    jr nc, @+$3a

    nop
    rst $00
    rlca
    add hl, bc
    dec c
    rrca
    adc a
    ld hl, sp-$01
    ld [$13ec], sp
    ldh a, [$fc]
    inc de
    and b
    inc d
    ld hl, $d800
    ld b, b
    add a
    nop
    and b
    inc de
    xor a
    dec d
    add h
    nop
    jr jr_024_4aa0

jr_024_4aa0:
    ld [c], a
    nop
    ld a, [bc]

jr_024_4aa3:
    nop
    and b
    nop
    add a
    nop
    ret c

    ld b, b
    dec h
    inc b
    inc de
    ld [$0a14], sp
    nop
    ld [c], a
    nop
    jr jr_024_4ab5

jr_024_4ab5:
    and h
    jr nz, jr_024_4acb

    jr jr_024_4ace

    inc de
    ld h, b
    inc d
    ld [hl+], a
    ld [bc], a
    inc de
    ld a, [bc]
    ld b, d
    ld d, c
    db $10
    inc de
    ld [hl], d
    ld [de], a
    ld b, h
    ld b, b
    inc de
    ld a, [de]

jr_024_4acb:
    ld b, d
    nop
    nop

jr_024_4ace:
    rst $00
    nop
    ld e, b
    ld b, b
    and l
    inc de
    daa
    ld b, e
    add h
    nop
    nop
    nop
    db $e3
    nop
    ld a, [de]
    ld [bc], a
    and l
    inc de
    scf
    ld b, e
    ld hl, $a900
    jr nz, jr_024_4afa

    ld [hl+], a
    inc de
    nop
    ld e, b
    ld b, b
    rst $00
    nop
    nop
    nop
    sub l
    inc b
    inc de
    ld [hl-], a
    inc de
    nop
    ld a, [de]
    ld [bc], a
    db $e3
    inc de

jr_024_4afa:
    ei
    pop af
    inc de
    ld h, d
    ld b, b
    and h
    inc b
    inc de
    ld c, b
    ld d, $13
    ld [hl], d
    ld b, b
    dec h
    jr nz, jr_024_4b1d

    ld e, b
    dec e
    ld [bc], a
    inc de
    adc d
    ld b, d
    inc de
    ld [hl], b
    dec d
    ld b, b
    inc de
    sbc d
    ld c, b
    and l
    inc b
    inc de
    ret z

    ld d, $13

jr_024_4b1d:
    ld [hl], d
    ld b, d
    inc de
    ret c

    dec e
    inc de
    adc c
    ld b, e
    inc de
    ldh a, [$15]
    inc de
    sbc c
    ld b, e
    add b
    add b
    inc de
    ld h, d
    ld b, d
    inc de
    adc b
    inc d
    inc de
    ld [hl], b
    ld b, h
    inc de
    sbc b
    ld [de], a
    or c
    inc de
    rst $38
    dec [hl]
    inc de
    ld [$b554], sp
    inc de
    sub c
    ld b, c
    ld [c], a
    inc de
    rla
    ld d, l
    inc de
    ldh [rIE], a
    dec c
    ld [hl], c
    ld d, c
    set 1, e
    cp d
    bit 2, c
    ld [hl], c
    ld [hl], c
    ld d, c
    ld [hl], c
    ld d, c
    ld c, a
    ld a, a
    and b
    cp a
    rst $00
    ld b, l
    inc l
    inc l
    db $eb
    inc l
    ld b, l
    rst $00
    rst $00
    ld b, l
    rst $00
    ld b, l
    cp c
    ccf
    add d
    ld a, [hl]
    ld e, $9e
    ld bc, $0201
    inc bc
    sbc [hl]
    sbc [hl]
    inc sp
    or h
    inc e
    dec e
    rst $08
    rst $08
    inc bc
    db $e3
    cp h
    ld a, h
    ld b, c

jr_024_4b7f:
    pop bc
    and c
    ld h, c
    dec a
    cp l
    and $16
    sbc a
    ld e, a
    cp $fe
    db $fd
    db $fd
    nop
    jr nz, jr_024_4b8f

jr_024_4b8f:
    jr nz, jr_024_4bb1

    ld d, c
    inc de
    pop bc
    ld d, b
    inc de
    adc b
    ld d, b
    ld [hl], c
    ld d, c
    nop
    add d
    nop
    add d
    add d
    ld b, l
    inc de
    pop de
    ld d, b
    inc de
    sbc b
    ld d, b
    rst $00
    ld b, l
    nop
    nop
    nop
    ld b, c
    nop
    ld h, c
    inc de
    add $57

jr_024_4bb1:
    nop
    nop
    inc b
    nop
    add [hl]
    inc de
    sub $56

jr_024_4bb9:
    inc de
    nop
    rrca
    dec l
    ld a, a
    ld c, a
    ld a, b
    ld e, a
    ld h, c
    ld b, b
    ld h, a
    ld b, b
    inc de
    ld b, b
    ld h, h
    ld sp, hl
    ld a, [$fa01]
    ld d, c
    ld [bc], a
    ld sp, hl
    ld [bc], a
    inc de
    ld d, b
    ld h, h
    inc de
    ld b, b
    ld h, [hl]
    ld e, b
    ld e, a
    ld b, c
    ld b, b
    rlca
    nop
    inc de
    ld d, b
    ld h, [hl]
    nop
    ld a, [$0250]
    ld hl, sp+$00
    nop
    nop
    ccf
    ld b, b

jr_024_4be9:
    ld b, b
    nop
    ld e, h
    ld bc, $0a50
    ld d, b
    inc b
    ld b, e
    ld [$1142], sp
    nop
    nop
    db $fc
    ld [bc], a
    nop
    ld [bc], a
    jr c, jr_024_4b7f

    db $10
    ld c, d
    nop
    ld a, [hl+]
    ret nz

    ld [de], a
    nop
    jp z, $1142

    ld b, d
    add hl, bc
    ld d, b
    inc b
    ld e, b
    ld [bc], a
    ld d, b
    dec c
    ld b, b
    nop
    nop
    ld a, a
    nop
    nop
    nop
    jp z, $d200

    ld [$1022], sp
    ld c, d
    jr nz, jr_024_4bb9

    nop
    ld [bc], a
    nop
    cp $00
    nop
    rlca
    add a
    inc b
    add a
    db $fc
    cp $08
    xor $0f
    rrca
    cp a
    ccf
    ldh [$80], a
    ld a, $20
    ldh [$fe], a
    jr nz, jr_024_4be9

    ccf
    ccf
    db $10
    rra
    ldh a, [$f8]
    db $fd
    db $fc
    rlca
    ld bc, $047c
    inc de
    ldh [rIE], a
    dec c
    inc bc
    rrca
    rrca
    jr nc, @+$12

    ld l, a
    nop
    ld b, c
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld h, d
    ld [c], a
    call c, $b080
    ldh [$ec], a
    ldh a, [rPCM12]
    ld [hl], h
    or d
    ld [hl], d
    or l
    ld [hl], d
    or l
    db $e3
    ld h, l
    inc bc
    adc l
    ret nz

    or c
    rst $00
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld l, $4d
    rrca
    ld l, [hl]
    rlca
    scf
    ld bc, $470d
    dec sp
    ld a, [hl]
    add $7e
    ld a, a
    inc a
    dec a
    nop
    add d
    ld [$f0f6], sp
    inc c
    ret nz

    ldh a, [rNR13]
    and b
    rst $38
    ld c, l
    inc de
    sbc a
    ld a, a
    ld c, l
    nop
    ld [bc], a
    ld [bc], a
    ld h, b
    ld h, c
    ld [bc], a
    nop
    nop
    jr nz, jr_024_4cb3

    ld d, e
    ld c, [hl]
    ld c, a
    ld c, d
    dec d
    jr nc, jr_024_4ca4

    nop
    ld [bc], a

jr_024_4ca4:
    ld [bc], a
    db $f4
    ld hl, sp+$62
    ld h, e
    ld h, d
    ld h, e
    ld [hl+], a
    db $10
    ld de, $551a
    ld d, b
    ld d, c
    ld c, h

jr_024_4cb3:
    rla
    db $10
    ld de, $0232
    jr nz, jr_024_4cba

jr_024_4cba:
    ld [bc], a
    db $f4
    ei
    inc d
    dec d
    ld [de], a
    inc de
    ld hl, $0002
    nop
    ld sp, $1312
    jr jr_024_4ce3

    ld [bc], a
    ld de, $240d
    ld d, $17
    inc hl
    dec b
    ld b, $07
    rlca
    rlca
    rlca
    ld [$3309], sp
    ld a, [de]
    dec de
    inc [hl]
    ld [bc], a
    ld [hl-], a
    dec bc
    jr jr_024_4cfb

    dec h

jr_024_4ce3:
    ld e, h
    ld e, l
    ld a, [bc]
    ld a, [bc]
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    inc c
    inc c
    ld e, h
    ld e, l
    dec [hl]
    jr jr_024_4d0b

    ld [bc], a
    inc de
    add hl, bc
    ld h, $1a
    dec de
    ld h, e
    ld e, b
    ld e, c

jr_024_4cfb:
    ld a, [bc]
    ld a, [bc]
    ld l, d
    ld l, e
    ld l, d
    ld l, e
    inc c
    inc c
    ld e, b
    ld e, c
    ld h, d
    ld a, [de]
    dec de
    ld [hl], $02
    db $f4

jr_024_4d0b:
    ld hl, sp+$18
    add hl, de
    daa
    ld h, c
    ld e, d
    ld e, e
    ld [bc], a
    add [hl]
    inc b
    ld e, d
    ld e, e
    ld h, b
    scf
    inc d
    dec d
    ld [bc], a
    db $f4
    ld hl, sp+$40
    ld b, c
    ld [bc], a
    jr nz, jr_024_4d23

jr_024_4d23:
    ld [bc], a
    and [hl]
    inc b
    ld [bc], a
    jr nz, jr_024_4d29

jr_024_4d29:
    ld b, h
    ld b, l
    ld [bc], a
    db $f4
    ld hl, sp+$42
    ld b, e
    ld [bc], a
    nop
    nop
    ld a, [bc]
    dec c
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    rrca
    inc c
    ld [bc], a
    nop
    nop
    ld b, d
    ld b, e
    ld [bc], a
    db $f4
    ld hl, sp+$12
    inc de
    add hl, hl
    ld h, e
    ld e, h
    ld e, l
    dec c
    ld c, $66
    ld h, a
    ld h, [hl]
    ld h, a
    ld c, $0f
    ld e, h
    ld e, l
    ld h, d
    add hl, sp
    ld [de], a
    inc de
    ld [bc], a
    db $f4
    ld hl, sp+$28
    inc d
    dec d
    ld h, c
    ld e, b
    ld e, c
    ld [bc], a
    nop
    ld [bc], a
    ld h, b
    ld [bc], a
    ld b, e
    db $10
    jr @+$1b

    jr c, jr_024_4d6d

    inc d
    add hl, bc

jr_024_4d6d:
    ld d, $17
    dec hl
    ld e, d
    ld e, e
    ld [bc], a
    jr nz, jr_024_4d75

jr_024_4d75:
    ld [bc], a
    jr nz, jr_024_4d78

jr_024_4d78:
    ld e, d
    ld e, e
    dec sp
    ld a, [de]
    dec de
    ld [bc], a
    inc sp
    ld a, [bc]
    ld a, [hl+]
    jr @+$1b

    dec l
    ld bc, $4602
    inc d
    nop
    dec a
    jr @+$1b

    ld a, [hl-]
    ld [bc], a
    inc de
    dec bc
    ld a, [de]
    dec de
    jr jr_024_4dad

    ld l, h
    ld [bc], a
    ld h, a
    ld [de], a
    ld l, l
    db $10
    ld de, $1b1a
    ld [bc], a
    ld [hl-], a
    dec c
    inc l
    ld a, [de]
    dec de
    db $10
    ld de, $4b4a
    ld b, [hl]
    ld b, a
    ld d, d
    add hl, de
    ld [de], a
    inc de

jr_024_4dad:
    inc a
    ld [bc], a
    ld de, $000f
    ld h, d
    ld l, $12
    inc de
    ld c, h
    ld c, l
    ld c, b
    ld c, c
    ld d, h
    dec de
    ld a, $02
    ld h, a
    ld de, $a002
    ld hl, sp+$00
    ld [bc], a
    ld [bc], a
    ld h, b
    ld h, c
    ld [bc], a
    nop
    nop
    jr nz, jr_024_4de5

    ld d, e
    ld c, [hl]
    ld c, a
    ld c, d
    dec d
    jr nc, jr_024_4dd6

    nop
    ld [bc], a

jr_024_4dd6:
    ld [bc], a
    db $f4
    ld hl, sp+$62
    ld h, e
    ld h, d
    ld h, e
    ld [hl+], a
    db $10
    ld de, $551a
    ld d, b
    ld d, c
    ld c, h

jr_024_4de5:
    rla
    db $10
    ld de, $0232
    jr nz, jr_024_4dec

jr_024_4dec:
    ld [bc], a
    db $f4
    ei
    inc d
    dec d
    ld [de], a
    inc de
    ld hl, $0002
    nop
    ld sp, $1312
    jr jr_024_4e15

    ld [bc], a
    ld de, $240d
    ld d, $17
    inc hl
    dec b
    ld b, $07
    rlca
    rlca
    rlca
    ld [$3309], sp
    ld a, [de]
    dec de
    inc [hl]
    ld [bc], a
    ld [hl-], a
    dec bc
    jr jr_024_4e2d

    dec h

jr_024_4e15:
    ld e, h
    ld e, l
    ld a, [bc]
    ld a, [bc]
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    inc c
    inc c
    ld e, h
    ld e, l
    dec [hl]
    jr jr_024_4e3d

    ld [bc], a
    inc de
    add hl, bc
    ld h, $1a
    dec de
    ld h, e
    ld e, b
    ld e, c

jr_024_4e2d:
    ld a, [bc]
    ld a, [bc]
    ld l, d
    ld l, e
    ld l, d
    ld l, e
    inc c
    inc c
    ld e, b
    ld e, c
    ld h, d
    ld a, [de]
    dec de
    ld [hl], $02
    db $f4

jr_024_4e3d:
    ld hl, sp+$18
    add hl, de
    daa
    ld h, c
    ld e, d
    ld e, e
    ld [bc], a
    add [hl]
    inc b
    ld e, d
    ld e, e
    ld h, b
    scf
    inc d
    dec d
    ld [bc], a
    db $f4
    ld hl, sp+$40
    ld b, c
    ld [bc], a
    jr nz, jr_024_4e55

jr_024_4e55:
    ld [bc], a
    and [hl]
    inc b
    ld [bc], a
    jr nz, jr_024_4e5b

jr_024_4e5b:
    ld b, h
    ld b, l
    ld [bc], a
    db $f4
    ld hl, sp+$42
    ld b, e
    ld [bc], a
    nop
    nop
    ld a, [bc]
    dec c
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    rrca
    inc c
    ld [bc], a
    nop
    nop
    ld b, d
    ld b, e
    ld [bc], a
    db $f4
    ld hl, sp+$12
    inc de
    add hl, hl
    ld h, e
    ld e, h
    ld e, l
    dec c
    ld c, $66
    ld h, a
    ld h, [hl]
    ld h, a
    ld c, $0f
    ld e, h
    ld e, l
    ld h, d
    add hl, sp
    ld [de], a
    inc de
    ld [bc], a
    db $f4
    ld hl, sp+$28
    inc d
    dec d
    ld h, c
    ld e, b
    ld e, c
    ld [hl], b
    ld [hl], c
    ld [bc], a
    nop
    ld [bc], a
    ld e, b
    ld e, c
    ld h, b
    jr jr_024_4eb5

    jr c, jr_024_4ea0

    inc d
    add hl, bc

jr_024_4ea0:
    ld d, $17
    dec hl
    ld e, d
    ld e, e
    ld [hl], d
    ld [hl], e
    ld [bc], a
    jr nz, jr_024_4eaa

jr_024_4eaa:
    ld h, d
    ld h, e
    ld e, d
    ld e, e
    dec sp
    ld a, [de]
    dec de
    ld [bc], a
    inc sp
    ld a, [bc]
    ld a, [hl+]

jr_024_4eb5:
    jr jr_024_4ed0

    dec l
    ld bc, $0002
    ld [bc], a
    ld h, b
    ld h, c
    nop
    dec a
    jr jr_024_4edb

    ld a, [hl-]
    ld [bc], a
    inc de
    dec bc
    ld a, [de]
    dec de
    jr jr_024_4ee3

    ld l, h
    ld [bc], a
    ld l, c
    ld de, $6d62

jr_024_4ed0:
    db $10
    ld de, $1b1a
    ld [bc], a
    ld [hl-], a
    dec c

jr_024_4ed7:
    inc l
    ld a, [de]
    dec de
    db $10

jr_024_4edb:
    ld de, $4b4a
    ld b, [hl]
    ld b, a
    ld d, d
    add hl, de

jr_024_4ee2:
    ld [de], a

jr_024_4ee3:
    inc de

jr_024_4ee4:
    inc a
    ld [bc], a
    ld de, $000f
    ld h, d
    ld l, $12
    inc de
    ld c, h
    ld c, l
    ld c, b
    ld c, c
    ld d, h
    dec de
    ld a, $02
    ld l, c
    ld de, $a002
    ld hl, sp+$00
    ld [$0012], sp
    rst $38
    nop
    rst $38
    ccf
    ret nz

    jr nz, jr_024_4ee4

    jr nz, jr_024_4ed7

    inc hl
    call nc, $d420
    jr nz, jr_024_4ee2

    ld [de], a
    nop
    nop
    rst $38
    ld [de], a
    rst $38
    ldh a, [rNR12]
    ld d, $00
    ld [de], a

jr_024_4f18:
    ld d, $02

jr_024_4f1a:
    ld [de], a
    inc de
    dec c
    db $fc
    inc bc
    inc b
    ei
    inc b
    dec bc
    call nz, Call_000_042b
    dec hl
    inc b
    xor e
    add b
    ld [$4012], a
    ld a, [bc]
    inc b
    xor e
    inc b
    xor e
    rlca
    xor b
    nop
    xor a
    nop
    and b
    rra
    and b
    nop
    add b
    ld a, a
    add b
    ld [de], a
    db $10
    inc c
    jr nz, jr_024_4f18

    jr nz, jr_024_4f1a

    ldh [$15], a
    nop
    push af
    nop
    dec b
    ld hl, sp+$05
    nop
    ld bc, $01fe
    ld bc, $1257
    add b
    ld a, [bc]
    rst $38
    ld [de], a
    inc de
    inc bc
    nop
    ld [de], a
    sub b
    ld bc, $0000
    rst $00
    rst $10
    or b
    or [hl]
    adc h
    adc l
    ld b, c
    ld d, c
    ld h, b
    ld l, h
    sbc b
    sbc c
    add a
    and a
    ld b, b
    ld e, b
    pop af
    push af
    ld [bc], a
    ld [hl-], a
    inc c
    call $f7f1
    ld [bc], a
    ld a, [de]
    inc c
    ld c, l
    ldh a, [$f2]
    ld bc, $3c05
    jp $8777


    di
    inc e
    rst $28
    jr nc, jr_024_4ff8

    and b
    or e
    ld [hl], h
    xor h
    ld l, h
    ld h, b
    and a
    sbc [hl]
    ld h, c
    db $ec
    db $e3
    jp z, $f63d

    dec c
    rst $30
    inc b
    rst $08
    inc l
    scf
    inc [hl]
    rlca
    db $e4
    ld [hl], $d6
    ld [hl], e
    sub h
    jp hl


    ld a, [bc]
    xor $1e
    ld c, b
    cp e
    sbc c
    ld l, d
    xor c
    ld e, d
    ld [hl], c
    sub d
    ld l, [hl]
    ld l, c
    call z, $922b
    ld d, l
    db $76
    ld a, c
    rra
    ret nc

    sbc a
    ld d, b
    sub a
    ld e, b
    adc a
    ld c, b
    ld [de], a
    ld [hl], b
    nop
    ld [de], a
    nop
    jr jr_024_4fc7

jr_024_4fc7:
    nop
    ccf
    ld b, b
    nop
    ld b, b
    rrca
    ld d, b
    nop
    ld d, b
    inc bc
    ld d, h
    nop
    ld d, a
    ld bc, $0057
    nop
    db $fc
    ld [bc], a
    nop
    ld [bc], a
    ldh a, [$0a]
    nop
    ld a, [bc]
    ret nz

    ld a, [hl+]
    nop
    ld [de], a
    ld c, l
    inc bc
    ld [de], a
    jr nc, @+$1a

    add b
    ld [$ea81], a
    add b
    add sp, -$79
    add sp, -$80
    ldh [$9f], a
    ldh [$80], a
    ld [de], a
    sub b

jr_024_4ff8:
    ld b, $12
    dec de
    inc bc
    ld [de], a
    ld c, [hl]
    rra
    rrca

Jump_024_5000:
    ld bc, $8157
    ld d, a
    ld bc, $e117
    rla
    ld bc, $f907
    rlca
    ld bc, $9012
    nop
    ld [de], a
    adc a
    dec d
    ld [de], a
    sub l
    ld [bc], a
    ld h, b
    ld l, l
    or b
    or d
    adc [hl]
    xor [hl]
    ld b, c
    reti


    ldh [$65], a
    ld e, a
    ld a, a
    rra
    dec d
    dec b
    push bc
    ld [bc], a
    ld e, d
    ld [$01aa], sp
    dec b
    add e
    sbc e
    dec c
    ld c, a
    or $fc
    cp $57
    ld d, b
    ld d, e
    ld d, b
    or e
    ld l, [hl]
    sbc [hl]
    ld [hl], l
    adc [hl]
    xor l
    ld e, [hl]
    sub l
    db $76
    jp nc, $b332

    ld d, h
    add hl, hl
    jp c, $cd0a

    ld [hl], h
    ld a, e
    and c
    ld a, [hl]
    or a
    ld a, b
    xor a
    ld l, b
    ld c, a
    ld c, b
    rst $08
    jr z, @-$67

    ld e, b
    ld a, e
    cp h
    inc h
    db $ed
    ld d, c
    or $64
    ld a, l
    sub c
    or [hl]
    ld l, h
    ld [hl], l
    add hl, de
    sbc $04
    push af
    sbc $3d
    inc h
    or a
    adc d
    ld l, a
    ld h, $be
    adc c
    ld l, l
    ld [hl], $ae
    sbc c
    ld a, d
    daa
    xor b
    inc a
    jp $827d


    ld sp, hl
    ld b, $e3
    inc e
    ld b, a
    cp b
    sub a
    ld l, a
    cp e
    ld e, h
    ld l, a
    or b
    sbc [hl]
    ld h, c
    db $ec
    inc de
    ld a, [c]
    dec c

jr_024_508c:
    or $09
    rst $28
    db $10
    rst $38
    ldh [$df], a
    jr c, jr_024_508c

    inc c
    ld [hl], e
    or h
    ld h, b
    cp c
    ld l, e
    or h
    or a
    ld a, b
    xor l
    ld l, [hl]
    db $eb
    dec sp
    sub b
    ld a, a
    ld a, $c1
    adc $2d
    inc b
    sbc a
    push de
    ld l, $cf
    inc l
    or a
    ld [hl], h
    rst $10
    call c, $fc0b
    ccf
    ret nz

    inc a
    jp $8e7f


    rst $38
    rra
    rst $38
    ccf
    ld a, a
    cp a
    rst $38
    ld a, a
    rst $38
    ld e, a
    ld a, a
    rst $18
    sbc [hl]
    ld h, c
    db $ec
    di
    ld a, [c]
    db $fd
    cp $f9
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $f4
    rst $38
    db $f4
    ld a, a
    cp a
    ld a, a
    adc a
    ld [hl], b
    cp a
    ldh a, [$5f]
    ld hl, sp+$4f
    rst $38
    ccf
    cp a
    ld e, a
    ld a, $ce
    cp $f9
    db $f4
    ei
    add hl, de
    cp $1f
    db $f4
    rra
    db $f4
    rst $38
    ld hl, sp+$5f
    or b
    rst $38
    ldh [$3f], a
    rst $00
    ld a, a
    adc h
    rst $38
    ld [$18ef], sp
    ld e, a
    cp h
    cp a
    ld h, a
    cp a
    ld h, b
    ld a, a
    ldh [$de], a
    pop hl
    db $ec
    ld [hl], e
    ld a, [c]
    dec l
    or $29
    rst $38
    ld [hl], b
    rst $38
    ret z

    rst $38
    ld [$0cff], sp
    ld a, a
    rst $10
    ld a, b
    cp a
    ld h, b
    cp a
    ldh [$7f], a
    rst $38
    ld e, a
    ldh a, [$7f]
    and c
    ld a, a
    ccf
    rst $38
    cp $d5
    inc a
    ei
    add hl, bc
    cp $0f
    ld hl, sp-$01
    ld hl, sp+$0f
    ld hl, sp-$11
    ld hl, sp-$01
    ld hl, sp+$3c
    jp $877f


    ld hl, sp+$0f
    ldh a, [$1f]
    ld d, b
    cp a
    cp h
    ld [de], a
    ld c, e
    inc h
    db $d3
    ld [hl-], a
    db $ed
    ld d, $f9
    rra
    ldh a, [$7f]
    ld hl, sp+$12
    ld e, h
    ld hl, $8fff
    rst $38
    add sp, -$09
    ld hl, sp-$69
    rst $38
    sub b
    rst $38
    ld a, a
    cp a
    ld a, a
    ccf
    rst $18
    cp $fd
    ld [c], a
    rst $38
    dec hl
    sbc $27
    sbc $e7
    inc e
    rst $38
    db $fc
    ld l, a
    sbc b
    rst $38
    ldh a, [$7c]
    db $e3
    ld a, a
    rst $10
    ld hl, sp+$4f
    ldh a, [$5f]
    ld [hl], b
    cp a
    and c
    ld a, a
    and e
    ld a, a
    ld h, c
    rst $38
    sbc [hl]
    ld l, l
    db $fc
    rst $10
    ld a, $e5
    ld e, $f5
    rra
    ld hl, sp+$0f
    ld hl, sp-$71
    ld hl, sp+$0f
    ld hl, sp-$0d
    sbc a
    ld sp, hl
    sbc a
    rst $38
    or a
    db $fd
    sub d
    rst $38
    ld [hl], b
    ld [de], a
    ld l, d
    jr nz, @+$41

    rst $08
    sbc [hl]
    push af
    ld a, $f3
    rst $38
    jp z, $8c7f

    rst $30
    ld l, h
    sbc a
    ld hl, sp+$12
    db $fc
    jr nz, jr_024_51ed

    rst $00
    ld a, h
    adc a
    ei
    rra
    ei
    rra
    ld a, e
    ld [de], a
    ret


    inc hl
    sbc $e1
    ld l, h
    di
    or d
    db $fd
    or [hl]
    ld sp, hl
    cp a
    ld hl, sp+$12
    jp c, $bf23

    ld a, a
    sbc a
    ld h, a
    ld hl, sp-$10
    sbc a
    ldh a, [$9f]
    ldh [$7f], a
    ret nz

    ld [de], a

jr_024_51d3:
    xor l
    jr nz, jr_024_51d3

    db $fc
    ei
    push bc
    ld a, $0f
    ld a, [$fe0f]
    dec sp
    cp $d7
    xor $ff
    db $fc
    ld [de], a
    and b
    rst $38
    ld c, l
    ld [de], a
    rst $18
    ccf
    ld c, l
    ld [de], a

jr_024_51ed:
    ccf
    ld c, a
    ld c, l
    ld [de], a
    sbc a
    ld c, a
    ld c, l
    nop
    rst $38
    adc b
    ld [hl], a
    nop
    rst $38
    ld de, $6cee
    sub e
    db $10
    rst $28
    xor b
    ld d, a
    nop
    rst $38
    nop
    ld bc, $8b00
    nop
    inc bc
    nop
    rla
    inc b
    ld h, e
    nop
    rra

jr_024_5210:
    ld [$00a7], sp
    rra
    nop
    rra
    ld [$00b7], sp
    ccf
    db $10
    ld l, a
    ld l, h
    inc de
    ld [de], a
    ld a, [bc]
    ld d, e
    add b
    add b
    ld c, b
    nop
    ret nz

    nop
    pop af
    ld h, b
    adc h
    db $10
    ldh [$a0], a
    ld d, b
    nop
    ld hl, sp+$00
    ld hl, sp-$78
    ld [hl], h
    nop
    db $fc
    db $10
    xor $6c
    sub d
    ld [de], a
    ld a, [bc]
    ld d, d
    ld [de], a
    ld c, a
    ld e, h
    ld [de], a
    nop
    ld h, $93
    ld l, h
    cp c
    ld b, [hl]
    ld a, h
    add e
    add [hl]
    ld a, c
    ld [de], a
    ld [de], a
    inc h
    rst $18
    jr nz, jr_024_5210

    ld b, b
    rra
    ldh [$7e], a
    add c
    ld [de], a
    add b
    ld d, b
    cp b
    ld b, a
    sub e
    ld l, h
    pop bc
    ld a, $ac
    ld d, e
    ld a, $c1
    ld l, [hl]
    sub c
    db $f4
    dec bc
    pop af
    ld c, $f7
    ld [$18e7], sp
    rst $28
    db $10
    adc a
    ld [hl], b
    ccf
    ret nz

    ld [de], a
    and c
    ld c, a
    ld c, l
    ld [de], a
    rst $38
    ld e, a
    ld c, l
    ld [de], a
    ld e, a
    ld l, a
    ld c, l
    ld [de], a
    ret nz

    rst $38
    cpl
    rrca
    ldh a, [rNR10]
    rst $28
    nop
    pop bc

jr_024_5289:
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $ff00
    ldh [$ef], a
    ldh a, [rPCM34]

jr_024_5297:
    ld [hl], h
    or e
    ld [hl], d
    or l
    ld [hl], d

jr_024_529c:
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l
    ld b, b
    or c
    ld b, a
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld l, $cd
    rrca
    xor $07
    rst $30
    nop
    rst $38
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    nop
    add e
    ld [$f0f7], sp
    rrca
    ld [de], a
    add hl, de
    ld bc, $4212
    ld a, a
    ld c, l
    ld [de], a
    and d
    ld a, a
    ld c, d
    nop
    ld [bc], a
    jr c, jr_024_52d7

jr_024_52ce:
    jr c, jr_024_52d0

jr_024_52d0:
    inc bc
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    jr c, jr_024_52d7

jr_024_52d7:
    inc b
    jr c, jr_024_52ce

    ld hl, sp+$19
    jr c, jr_024_52fe

    inc bc
    jr c, jr_024_52e9

    nop
    jr c, @+$22

    inc b
    jr c, @-$0a

    ld hl, sp+$0a

jr_024_52e9:
    dec bc

jr_024_52ea:
    jr c, @+$42

    ld [bc], a
    ld d, c
    ld d, b
    ld d, b

jr_024_52f0:
    ld d, e
    jr c, jr_024_5333

    inc b
    jr c, jr_024_52ea

    ld hl, sp+$1a
    dec de

jr_024_52f9:
    jr c, jr_024_535b

    ld [bc], a
    ld d, d
    ld d, b

jr_024_52fe:
    ld d, b
    ld d, h
    jr c, jr_024_5362

    inc b
    jr c, jr_024_52f9

    ld hl, sp+$50
    jr c, jr_024_5289

    rrca
    nop
    jr c, @+$76

    rrca
    add hl, de
    ld [bc], a
    inc bc
    jr c, jr_024_5297

    dec c
    ld bc, $f438
    ld hl, sp+$12
    inc de
    jr c, jr_024_529c

    inc c
    db $10
    ld de, $f438
    ld hl, sp+$04
    dec b
    ld b, $06
    jr c, @-$3e

    ld b, $00
    ld bc, $0606
    rlca
    ld [$f438], sp
    ld hl, sp+$14

jr_024_5333:
    dec d
    ld d, $16
    jr c, @-$1e

    ld b, $10
    ld de, $1616
    rla
    jr jr_024_5378

    db $f4
    ld hl, sp+$0c
    dec c
    ld d, [hl]
    ld d, a
    jr c, jr_024_5348

jr_024_5348:
    db $10
    jr c, jr_024_5391

    ld [de], a
    rlca

jr_024_534d:
    ld [$5756], sp
    inc c
    dec c

jr_024_5352:
    jr c, jr_024_5348

    ld hl, sp+$1c

jr_024_5356:
    dec e
    ld e, b
    ld e, c
    jr c, @+$22

jr_024_535b:
    db $10
    jr c, jr_024_53c4

    ld [de], a
    rla
    jr jr_024_53ba

jr_024_5362:
    ld e, c
    inc e
    dec e
    jr c, jr_024_535b

jr_024_5367:
    ld hl, sp+$0e
    rrca
    ld d, [hl]
    ld d, a
    jr c, jr_024_52f0

    ld a, [de]
    ld c, $0f
    jr c, jr_024_5367

jr_024_5373:
    ld hl, sp+$1e
    rra
    jr nz, jr_024_5399

jr_024_5378:
    inc h
    dec h
    jr nz, jr_024_539d

    inc l

jr_024_537d:
    dec l

jr_024_537e:
    jr nc, jr_024_53b1

    jr nz, jr_024_53a3

    jr z, @+$2b

    inc [hl]
    dec [hl]
    ld e, $1f
    jr c, jr_024_537e

    ld hl, sp+$56
    ld d, a
    ld [hl+], a
    inc hl
    ld h, $27

jr_024_5391:
    ld [hl+], a
    inc hl
    ld l, $2f

jr_024_5395:
    ld [hl-], a
    inc sp
    ld [hl+], a
    inc hl

jr_024_5399:
    ld a, [hl+]
    dec hl
    ld [hl], $37

jr_024_539d:
    ld d, [hl]
    ld d, a
    jr c, jr_024_5395

    ld hl, sp+$58

jr_024_53a3:
    ld e, c
    jr nc, jr_024_53d7

    jr c, jr_024_5356

    db $10
    jr c, jr_024_534d

    db $10
    jr c, jr_024_5352

    ld [de], a
    ld e, b
    ld e, c

jr_024_53b1:
    jr c, @-$5e

    ld hl, sp+$00
    ld [bc], a
    jr c, jr_024_53c1

jr_024_53b8:
    jr c, jr_024_53ba

jr_024_53ba:
    inc bc
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    jr c, jr_024_53c1

jr_024_53c1:
    inc b
    jr c, jr_024_53b8

jr_024_53c4:
    ld hl, sp+$19
    jr c, jr_024_53e8

    inc bc
    jr c, jr_024_53d3

    nop
    jr c, @+$22

    inc b
    jr c, @-$0a

    ld hl, sp+$0a

jr_024_53d3:
    dec bc

jr_024_53d4:
    jr c, @+$42

    ld [bc], a

jr_024_53d7:
    ld d, c
    ld d, b
    ld d, b
    ld d, e
    jr c, @+$42

    inc b
    jr c, jr_024_53d4

    ld hl, sp+$1a
    dec de

jr_024_53e3:
    jr c, jr_024_5445

    ld [bc], a
    ld d, d
    ld d, b

jr_024_53e8:
    ld d, b
    ld d, h
    jr c, jr_024_544c

    inc b
    jr c, jr_024_53e3

    ld hl, sp+$50
    jr c, jr_024_5373

    rrca
    nop
    jr c, @+$76

    rrca
    add hl, de
    ld [bc], a
    inc bc
    jr c, jr_024_537d

    inc b
    ld [hl], b
    ld [hl], c
    jr c, @-$70

    inc bc
    ld bc, $f438
    ld hl, sp+$12
    inc de
    jr c, @-$7e

    inc b

jr_024_540c:
    ld [hl], d
    ld [hl], e
    jr c, @-$7e

    ld [bc], a
    db $10
    ld de, $f438
    ld hl, sp+$04
    dec b
    ld b, $06
    jr c, @-$3e

    ld b, $00
    ld bc, $0606
    rlca
    ld [$f438], sp
    ld hl, sp+$14
    dec d
    ld d, $16
    jr c, jr_024_540c

    ld b, $10
    ld de, $1616
    rla
    jr jr_024_546c

    db $f4
    ld hl, sp+$0c
    dec c
    ld d, [hl]
    ld d, a
    jr c, jr_024_543c

jr_024_543c:
    db $10
    jr c, jr_024_5485

    ld [de], a
    rlca

jr_024_5441:
    ld [$5756], sp
    inc c

jr_024_5445:
    dec c

jr_024_5446:
    jr c, jr_024_543c

    ld hl, sp+$1c

jr_024_544a:
    dec e
    ld e, b

jr_024_544c:
    ld e, c
    jr c, @+$22

jr_024_544f:
    db $10
    jr c, @+$68

    ld [de], a
    rla
    jr jr_024_54ae

    ld e, c
    inc e
    dec e
    jr c, jr_024_544f

jr_024_545b:
    ld hl, sp+$0e
    rrca
    ld d, [hl]
    ld d, a
    jr c, @-$7c

    ld a, [de]
    ld c, $0f
    jr c, jr_024_545b

    ld hl, sp+$1e
    rra
    jr nz, jr_024_548d

jr_024_546c:
    inc h
    dec h
    jr nz, jr_024_5491

    inc l
    dec l

jr_024_5472:
    jr nc, jr_024_54a5

    jr nz, jr_024_5497

    jr z, @+$2b

    inc [hl]
    dec [hl]
    ld e, $1f
    jr c, jr_024_5472

    ld hl, sp+$56
    ld d, a
    ld [hl+], a
    inc hl
    ld h, $27

jr_024_5485:
    ld [hl+], a
    inc hl
    ld l, $2f

jr_024_5489:
    ld [hl-], a
    inc sp
    ld [hl+], a
    inc hl

jr_024_548d:
    ld a, [hl+]
    dec hl
    ld [hl], $37

jr_024_5491:
    ld d, [hl]

jr_024_5492:
    ld d, a
    jr c, jr_024_5489

    ld hl, sp+$58

jr_024_5497:
    ld e, c
    jr nc, jr_024_54cb

    jr c, jr_024_544a

    db $10
    jr c, jr_024_5441

    db $10
    jr c, jr_024_5446

    ld [de], a
    ld e, b
    ld e, c

jr_024_54a5:
    jr c, @-$5e

    ld hl, sp+$00
    ld [$0006], sp
    rst $38
    nop

jr_024_54ae:
    rst $38
    ccf
    ret nz

    jr nz, jr_024_5492

    jr nz, jr_024_5485

    inc hl
    call nc, $d420
    jr nz, @-$29

    ld b, $00
    nop
    rst $38
    ld b, $ff
    ldh a, [rTMA]
    ld d, $00
    ld b, $16
    ld [bc], a

jr_024_54c8:
    ld b, $13
    dec c

jr_024_54cb:
    db $fc
    inc bc
    inc b
    ei
    inc b
    dec bc
    call nz, Call_000_042b
    dec hl
    inc b
    xor e
    add b
    ld [$4006], a
    ld a, [bc]
    inc b
    xor e
    inc b
    xor e
    rlca
    xor b
    nop
    xor a
    nop
    and b
    rra
    and b
    nop
    add b
    ld a, a
    add b
    ld b, $10
    inc c
    jr nz, @-$29

    jr nz, jr_024_54c8

    ldh [$15], a
    nop
    push af
    nop
    dec b
    ld hl, sp+$05
    nop
    ld bc, $01fe
    ld bc, $0657
    add b
    ld a, [bc]
    ld sp, $7bf5
    jp z, $ef34

    inc h
    db $ed
    ld [de], a
    ei
    ld [de], a
    rst $30
    inc d
    pop af
    inc d
    pop af
    adc h
    xor a
    sbc $53
    inc l
    rst $30
    inc h
    or a
    ret z

    ld e, a
    ret z

    ld l, a
    xor b
    rrca
    xor b
    rrca

Call_024_5524:
    xor b
    inc c
    xor e
    ld [$0bac], sp
    ld b, $ac
    ld bc, $b706
    ld bc, $3530
    ld l, b
    jp hl


    rst $20
    or a
    rst $10
    sbc b
    and b
    ret nc

    sbc a
    and b
    ld b, b
    ld b, b
    ccf
    cp a
    adc b
    jr z, jr_024_5559

    sub a
    rst $20
    db $ed
    db $eb
    add hl, de
    dec b
    dec bc
    ld sp, hl
    dec b
    ld [bc], a
    ld [bc], a
    db $fd
    db $fc
    call nc, Call_000_34f1
    ld sp, $d114
    ld b, $9c
    nop

jr_024_5559:
    ld b, $9c
    nop
    sub h
    ld [hl], c
    nop
    nop
    rst $38
    rst $38
    or h
    or l
    ret


    db $ed
    ld [hl], $b6
    nop
    ld a, a
    ld b, $13
    nop
    ld b, $70
    nop
    ld b, $00
    jr jr_024_5574

jr_024_5574:
    nop
    ccf
    ld b, b
    nop
    ld b, b
    rrca
    ld d, b
    nop
    ld d, b
    inc bc
    ld d, h
    nop
    ld d, a
    ld bc, $0057
    nop
    db $fc
    ld [bc], a
    nop
    ld [bc], a
    ldh a, [$0a]
    nop
    ld a, [bc]
    ret nz

    ld a, [hl+]
    nop
    ld b, $4d
    inc bc
    ld b, $30
    jr @-$7e

    ld [$ea81], a
    add b
    add sp, -$79
    add sp, -$80
    ldh [$9f], a
    ldh [$80], a
    rst $38
    ld b, $13
    inc bc
    ld b, $19
    dec b
    ld b, $4e
    rra
    rrca
    ld bc, $8157
    ld d, a
    ld bc, $e117
    rla
    ld bc, $f907
    rlca
    ld bc, $ffff
    rst $38
    ld b, $e6
    inc b
    ld b, $e6
    inc b
    ld b, $b6
    ld b, $06
    or [hl]
    ld [bc], a
    xor c
    ld b, $af
    dec de

jr_024_55ce:
    db $10
    ld d, l
    ld l, b
    ld l, c

jr_024_55d2:
    ld b, $c4
    ld [$2b89], sp
    rla
    sub a
    push hl
    ld b, $d5
    rlca
    ld d, h

jr_024_55de:
    ld sp, $e006
    ld a, [de]
    ld b, $f0
    nop
    dec l
    xor l
    sub e
    or a
    ld l, h
    ld l, l
    nop
    cp $06
    inc de
    nop
    db $f4
    ld de, $0006
    ld a, [hl+]
    xor a
    ld [$1006], sp
    ld a, [hl+]
    inc d
    pop af
    inc [hl]
    pop de
    sub h
    ld [hl], c
    ld b, $22
    jr nz, jr_024_5658

    or c
    or h
    ld d, c
    ld d, h
    or c
    xor b
    rrca
    xor d
    dec c
    ld b, $30

jr_024_560f:
    ld [hl+], a
    xor l
    ld a, [bc]
    xor d
    dec c
    xor l
    ld a, [bc]
    ld b, $2c
    jr nz, jr_024_55ce

    ld d, c
    ld [hl], h
    sub c
    call nc, $0631

jr_024_5620:
    ld b, [hl]
    jr nz, @-$0a

    ld de, $3c06
    jr nz, jr_024_55d2

    dec c
    xor a
    ld [$0aad], sp
    ld b, $10
    jr nz, jr_024_55de

    ld a, [bc]
    ld b, $4c
    jr nz, jr_024_563c

    nop
    ld h, $94
    ld [hl], c
    xor b
    rrca

jr_024_563c:
    xor [hl]
    add hl, bc
    ld b, $10
    ld h, $ae
    add hl, bc
    ld b, $ec
    nop
    call nc, $0631
    ld c, h
    jr nz, jr_024_5620

    ld sp, $e606
    inc b
    inc [hl]
    pop de
    ld [hl], h
    sub c
    db $f4
    ld de, $9174

jr_024_5658:
    ld b, $9c
    ld [de], a
    xor h
    dec bc
    ld b, $72
    jr nz, jr_024_560f

    add hl, bc
    ld b, $b4
    ld b, $a9
    ld c, $ab
    inc c
    xor e
    inc c
    xor c
    ld c, $06
    xor h
    nop
    db $10
    sub l
    ld b, $c2
    ld d, $c0
    ret nz

jr_024_5677:
    cp a
    cp a
    adc b
    add hl, hl
    ld d, $96
    ld b, $d4
    inc d
    inc bc
    inc bc
    db $fd
    db $fd
    ld b, $9c
    nop
    ld b, $60
    ld h, $74
    sub c
    ld b, $70
    ld a, [hl+]
    xor d
    dec c
    ld b, $a0
    rst $38
    ld c, l
    ld b, $5f
    ccf
    ld c, l
    ld b, $bf
    ccf
    ld c, l
    ld b, $1f
    ld c, a
    ld c, l
    ld b, $7f
    ld c, a
    ld c, l
    ld b, $e0
    rst $38
    ld c, $7e
    add c
    inc a
    ld b, d
    sbc c
    inc h
    jp $e700


    jr jr_024_5677

    inc h
    sbc c
    ld b, d
    inc a
    ld b, $a1
    ld c, a
    ld c, l
    ld b, $6f
    ld e, a
    ld c, l
    ld b, $cf
    ld e, a
    ld c, l
    ld b, $2f
    ld l, a
    ld c, l
    ld b, $8f
    ld l, a
    ld c, l
    ld b, $f0
    cp $0f
    ldh a, [rNR10]
    rst $28
    nop
    pop bc
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $ff00
    ldh [$ef], a
    ldh a, [rPCM34]
    ld [hl], h
    or e
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l
    ld b, b
    or c
    ld b, a
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld l, $cd
    rrca
    xor $07
    rst $30
    nop
    rst $38
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    nop
    add e
    ld [$f0f7], sp
    rrca
    ld b, $19
    ld bc, $4206
    ld a, a
    ld c, l
    ld b, $a2
    ld a, a
    ld c, d
    nop
    ld [bc], a
    ld d, $09
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, de
    ld a, [de]
    add hl, bc
    ld a, [bc]
    add hl, hl
    cpl
    jr z, jr_024_573f

    ld d, $02
    ld [bc], a
    add hl, bc
    ld a, [bc]
    ld d, $f4
    ld hl, sp+$19
    ld a, [de]
    ld d, $20
    ld [bc], a
    ld d, $00
    ld [bc], a
    add hl, de
    dec hl
    ld l, $27
    ld h, $2a
    ld d, $f4
    ld hl, sp+$29

jr_024_573f:
    daa
    ld h, $2a
    ld d, $06
    nop
    ld l, $27
    jr z, jr_024_575f

    dec h
    ld bc, $2016
    nop
    ld d, $14
    dec bc
    dec hl
    ld d, $48
    ld [bc], a
    add hl, de
    dec hl
    ld l, $2f
    ld h, $2a
    ld d, $50
    inc c
    inc c

jr_024_575f:
    dec c
    inc c
    dec l
    add hl, de
    dec bc
    inc c
    dec c
    ld d, $86
    ld [bc], a
    ld c, $1a
    inc l
    dec c
    inc c
    dec c
    ld d, $f4
    ld hl, sp+$0f
    rra
    rrca
    rra
    add hl, de
    dec de
    ld d, $a0
    nop
    ld d, $a0
    nop
    ld e, $1a
    ld d, $a0
    nop
    ld d, $14
    dec bc
    dec bc
    inc c
    dec e
    ld d, b
    ld d, $c6
    inc bc
    inc e
    dec c
    ld c, $16
    ld d, c
    dec bc
    ld [hl+], a
    inc hl
    ld [hl+], a
    dec de
    rrca
    rra
    ld d, $c6
    inc b
    rrca
    rra
    ld e, $23
    ld [hl+], a
    inc hl
    ld d, $74
    dec bc
    ld d, $c5
    dec b
    ld d, $ca
    ld [bc], a
    ld d, $92
    ld c, $16
    inc b
    jr jr_024_57c8

    or b
    inc c
    ld [bc], a
    ld d, $40
    db $10
    inc bc
    ld d, $c6
    inc b
    nop
    ld b, $01
    ld bc, $0101
    ld d, $f4
    ld hl, sp+$17
    rla
    rla

jr_024_57c8:
    rla
    ld [de], a
    inc de
    ld d, $c6
    inc b
    db $10
    ld de, $6016
    db $10
    ld d, $94
    inc c
    inc b
    dec b
    ld b, $16
    ld b, l
    ld de, $0600
    rlca
    ld [$b016], sp
    inc c
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    inc d
    dec d
    ld d, $64
    ld [de], a
    db $10
    ld de, $1817
    ld d, $a0
    db $10
    ld d, $f4
    ld hl, sp+$24
    dec h
    inc h
    dec h
    rrca
    rra
    inc b
    ld d, $a7
    ld [de], a
    ld [$1f0f], sp
    ld d, $c0
    db $10
    ld d, $f4
    ld hl, sp+$20
    ld hl, $e016
    db $10
    ld d, $c6
    inc d
    ld d, $e0
    ld [de], a
    ld d, $a0
    ld hl, sp+$00
    ld [bc], a
    ld d, $09
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, de
    ld a, [de]
    add hl, bc
    ld a, [bc]
    add hl, hl
    cpl
    jr z, jr_024_5840

    ld d, $02
    ld [bc], a
    add hl, bc
    ld a, [bc]
    ld d, $f4
    ld hl, sp+$19
    ld a, [de]
    ld d, $20
    ld [bc], a
    ld d, $00
    ld [bc], a
    add hl, de
    dec hl
    ld l, $27
    ld h, $2a
    ld d, $f4
    ld hl, sp+$29

jr_024_5840:
    daa
    ld h, $2a
    ld d, $06
    nop
    ld l, $27
    jr z, jr_024_5860

    dec h
    ld bc, $2016
    nop
    ld d, $14
    dec bc
    dec hl
    ld d, $48
    ld [bc], a
    add hl, de
    dec hl
    ld l, $2f
    ld h, $2a
    ld d, $50
    inc c
    inc c

jr_024_5860:
    dec c
    inc c
    dec l
    add hl, de
    dec bc
    inc c
    dec c
    ld d, $86
    ld [bc], a
    ld c, $1a
    inc l
    dec c
    inc c
    dec c
    ld d, $f4
    ld hl, sp+$0f
    rra
    rrca
    rra
    add hl, de
    dec de
    ld d, $a0
    nop
    ld d, $a0
    nop
    ld e, $1a
    ld d, $a0
    nop
    ld d, $14
    dec bc
    dec bc
    inc c
    dec e
    ld d, b
    ld d, $c6
    inc bc
    inc e
    dec c
    ld c, $16
    ld d, c
    dec bc
    ld [hl+], a
    inc hl
    ld [hl+], a
    dec de
    rrca
    rra
    ld d, $c6
    inc b
    rrca
    rra
    ld e, $23
    ld [hl+], a
    inc hl
    ld d, $74
    dec bc
    ld d, $c5
    dec b
    ld d, $ca
    ld [bc], a
    ld d, $92
    ld c, $16
    inc b
    jr jr_024_58c9

    or b
    inc c
    ld [bc], a
    ld d, $40
    db $10
    inc bc
    ld d, $c6
    nop
    ld [hl], b
    ld [hl], c
    ld d, b
    ld d, b
    nop
    ld b, $01
    ld bc, $0101
    ld d, $f4

jr_024_58c9:
    ld hl, sp+$17
    rla
    rla
    rla
    ld [de], a
    inc de
    ld d, $c6
    nop
    ld [hl], d
    ld [hl], e
    ld d, b
    ld d, b
    db $10
    ld de, $6016
    db $10
    ld d, $94
    inc c
    inc b
    dec b
    ld b, $16
    ld b, l
    ld de, $0600
    rlca
    ld [$b016], sp
    inc c
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    inc d
    dec d
    ld d, $64
    ld [de], a
    db $10
    ld de, $1817
    ld d, $a0
    db $10
    ld d, $f4
    ld hl, sp+$24
    dec h
    inc h
    dec h
    rrca
    rra
    inc b
    ld d, $a7
    ld [de], a
    ld [$1f0f], sp
    ld d, $c0
    db $10
    ld d, $f4
    ld hl, sp+$20
    ld hl, $e016
    db $10
    ld d, $c6
    inc d
    ld d, $e0
    ld [de], a
    ld d, $a0
    ld hl, sp+$00
    ld [$8f0e], sp
    push de
    adc a
    and l
    ld c, $00
    ld [$f5a5], sp
    xor e
    ei
    ld c, $10
    ld [$d68c], sp
    adc h
    and a
    adc e
    db $d3
    adc b
    and a
    sbc a
    rst $08
    or b
    sub c
    ldh [$aa], a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld c, $2f

jr_024_5946:
    ld bc, $c0c0
    nop
    ld d, l
    nop
    ld c, $2d
    rlca
    nop
    nop
    ld c, $3a
    ld [bc], a
    dec h
    ld [hl], l
    dec hl
    ei
    push bc
    push de
    dec bc
    ei
    push af
    db $fd
    dec bc
    adc a
    dec b
    ld d, a
    rst $38
    rst $38
    nop
    rst $18
    nop
    call c, Call_000_3504
    ret z

    ld l, $11
    pop de
    ld [hl+], a
    ld [c], a
    ld h, $a6
    ld b, [hl]
    add $00
    rlca
    ld [$3ceb], sp
    rst $38
    call nz, Call_024_40df
    ld a, a
    add b
    or a
    adc b
    xor e
    ld d, h
    ld a, a
    nop
    ldh [rNR10], a
    rst $10
    inc a
    rst $38
    inc hl
    ei
    ld [bc], a
    cp $01
    db $ed
    ld de, $2ad5
    cp $00
    ei
    nop
    dec sp
    jr nz, jr_024_5946

    inc de
    ld [hl], h
    adc b
    adc e
    ld b, h
    ld b, a
    ld h, h
    ld h, l
    ld h, d
    ld h, e
    ld c, h
    ld c, h
    ld c, h
    ld l, h
    sbc l
    cp l
    sbc c
    cp c
    sbc e
    db $db
    ld c, $a8
    nop
    sbc [hl]
    sbc $57
    rst $10
    inc [hl]
    ld [hl], l
    db $10
    ld d, e
    ld l, d
    ld l, d
    adc c
    adc e
    ld [$0538], sp
    ld [hl], a
    inc bc
    inc bc
    ld [$2ceb], a
    xor [hl]
    ld [$56ca], sp
    ld d, [hl]
    sub c
    pop de
    db $10
    inc e
    and b
    xor $c0
    ret nz

    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl], $b9
    cp l
    sbc c
    sbc l
    reti


    db $db
    ld c, $d8
    nop
    ld a, c
    ld a, e
    sub [hl]
    sub [hl]
    ld d, [hl]
    ld d, [hl]
    ld e, a
    rst $18
    ld e, a
    rst $18
    ld e, c
    db $dd
    ld [hl-], a
    cp a
    ld [hl-], a
    cp $13
    rst $18
    jp nz, Jump_024_41c3

    ld d, c
    jr nz, @+$2e

    jr nc, @+$32

    adc h
    db $dd
    jr z, jr_024_5a68

    xor b
    xor b
    ld d, b
    ld d, b
    ld b, e
    jp $8a82


    inc b
    inc [hl]
    inc c
    inc c
    ld sp, $14bb
    ld d, [hl]
    dec d
    dec d
    ld a, [bc]
    ld a, [bc]
    ld l, c

Call_024_5a13:
    ld l, c
    ld l, d
    ld l, d
    ld a, [$fafb]
    ei
    sbc d
    cp e
    ld c, h
    db $fd
    ld c, h
    ld a, a
    ret z

    ei

jr_024_5a22:
    ld [de], a
    cp $11
    ccf
    ret nz

jr_024_5a27:
    ccf
    ld hl, $07df

jr_024_5a2b:
    rst $38
    add hl, bc
    add hl, sp
    sub c
    ld [hl], a
    jr nc, jr_024_5a22

    ld c, l
    ld c, l
    add [hl]
    add a
    pop af
    pop af
    and l
    or l
    ld c, l
    ld l, l
    jp nc, Jump_000_20d2

    jr nz, jr_024_5a41

jr_024_5a41:
    rlca
    or d
    or d
    ld h, c
    pop hl
    adc a
    adc a
    and l
    xor l
    or d
    or [hl]
    ld c, e
    ld c, e
    inc b
    inc b
    nop
    ldh [rOBP0], a
    ld a, a
    adc b
    db $fc
    inc bc
    db $fc
    add h
    ei
    ldh [rIE], a
    sub b
    sbc h
    adc c
    xor $0c
    rrca
    ld [de], a
    sbc $18
    dec sp
    rst $00
    daa

jr_024_5a68:
    inc l
    call z, $d514
    inc de
    dec de
    ret z

    dec bc
    rlca
    rst $00
    ld c, b
    ld a, e
    jr @-$22

    db $e3
    db $e4
    inc [hl]
    inc sp
    jr z, jr_024_5a27

    ret z

    ret c

    inc de
    ret nc

    ldh [$e3], a
    nop
    cp e
    nop
    ei
    nop
    ld a, b
    add a
    jr c, jr_024_5a2b

    ld l, a
    ret z

    rra
    ld h, h
    adc [hl]
    rla
    call c, $de00
    nop
    sbc $01
    inc e
    pop hl
    jr jr_024_5aa0

    db $f4
    ld [de], a
    ld sp, hl
    ld h, $71

jr_024_5aa0:
    ldh [$33], a
    nop
    db $dd
    nop
    db $dd
    nop
    rra
    ldh [rNR34], a
    inc b
    push af
    ld de, $22fa
    dec [hl]
    db $e3
    jr nc, jr_024_5ac1

    and b
    rst $38
    ld c, l
    ld c, $0f
    cpl
    ld c, l
    ld c, $6f
    cpl
    ld c, l
    ld c, $cf
    cpl

jr_024_5ac1:
    ld c, l
    ld c, $2f
    ccf
    ld c, l
    ld c, $8f
    ccf
    ld c, l
    ld c, $ef
    ccf
    ld c, l
    ld c, $4f
    ld c, a
    ld c, l
    ld c, $af
    rst $38
    ld a, $0e
    and c
    db $10
    dec e
    ld [c], a
    add hl, bc
    inc d
    ld [c], a
    add hl, bc
    db $e4
    ld [de], a
    add hl, bc
    db $e4
    inc de
    nop
    cp e
    nop
    cp e
    nop
    cp b
    ld b, a
    sub b
    jr z, jr_024_5b35

    sub b
    daa
    ld c, b
    sub b
    daa
    ret z

    nop
    rst $30
    ld [$c413], sp
    add hl, hl
    ld [hl+], a
    call nc, $ea01
    ld [$c415], sp
    add hl, de
    nop
    db $dd
    nop
    rst $28
    db $10
    ret z

    inc hl
    sub h
    ld b, h
    dec hl
    add b
    ld d, a
    db $10
    xor b
    inc hl
    sbc b
    nop
    cp e
    nop
    nop
    ld h, [hl]
    nop
    ld e, c
    nop
    jr z, jr_024_5b1c

jr_024_5b1c:
    inc a
    nop
    ld c, h
    nop
    ld b, b
    nop
    jr nz, jr_024_5b24

jr_024_5b24:
    ld c, $40
    ld d, b
    sbc c
    ld c, $f3
    ld sp, hl
    ld h, [hl]
    nop
    sbc d
    nop
    inc d
    nop
    inc a
    nop
    ld [hl-], a
    nop

jr_024_5b35:
    ld [bc], a
    nop
    inc b
    nop
    jr nz, jr_024_5b3b

jr_024_5b3b:
    ld b, b
    ld c, $4b
    ld d, c
    ld c, $70
    ld d, h
    ld c, $f0
    db $fc
    inc b
    nop
    ld [bc], a
    ld c, $6b
    ld d, c
    ld c, $90
    ld d, h
    ld c, $70
    ld d, b
    ld c, h
    nop
    inc a
    nop
    jr z, jr_024_5b57

jr_024_5b57:
    ld e, c
    nop
    ld h, [hl]
    ld c, $f3
    ld sp, hl
    sbc c
    ld c, $ab
    ld d, c
    ld c, $90
    ld d, b
    ld [hl-], a
    nop
    inc a
    nop
    inc d
    nop
    sbc d
    ld c, $ab
    ld d, c
    add b
    rst $08
    add a
    ret c

    sbc [hl]
    sbc $98
    ret c

    ld c, $d0
    ld d, h
    ld b, $fc
    cp $04
    xor [hl]
    xor h
    ld b, $04
    ld c, $e0
    ld d, h
    ld c, $d0
    ld e, d
    ld hl, sp-$08
    ld c, $e0
    ld d, [hl]
    rst $38
    dec b
    xor a
    xor l
    rlca
    rlca
    ld c, a
    rst $28
    ld e, a
    ret nz

    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld h, b
    ld h, b
    sbc a
    and b
    ld a, a
    ld a, a
    nop
    add b
    ld c, $2f
    nop
    nop
    ld c, $45
    ld bc, $310e
    nop
    nop
    ld c, $32
    ld bc, $240e
    ld l, b
    ld a, [c]
    rst $30
    ld a, [$0203]
    ld a, [$fa02]
    ld b, $06
    ld sp, hl
    dec b
    cp $fe
    nop
    ld bc, $a10e
    ld c, a
    ld c, l
    ld c, $b0
    rst $38
    dec a
    inc bc
    rrca
    rrca
    jr nc, @+$12

    ld l, a
    nop
    ld b, c
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld h, d
    ld [c], a
    call c, $b080
    ldh [$ec], a
    ldh a, [rPCM12]
    ld [hl], h
    or d
    ld [hl], d
    or l
    ld [hl], d
    or l
    db $e3
    ld h, l
    inc bc
    adc l
    ret nz

    or c
    rst $00
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld l, $4d
    rrca
    ld l, [hl]
    rlca
    scf
    ld bc, $470d
    dec sp
    ld a, [hl]
    add $7e
    ld a, a
    inc a
    dec a
    nop
    add d
    ld [$f0f6], sp
    inc c
    ret nz

    ldh a, [$0e]
    and b
    ld l, a
    ld c, l
    ld c, $9f
    ld a, a
    ld c, l
    nop
    ld [bc], a
    ld a, [de]
    nop
    nop
    add hl, de
    jr jr_024_5c1b

jr_024_5c1b:
    nop
    ld d, h
    ld d, l
    ld a, [de]
    rlca
    ld bc, $0156
    ld bc, $1819
    ld bc, $1a01
    db $f4
    ld a, [$1716]
    nop
    nop
    ld d, a
    ld e, b
    ld a, [de]
    daa
    ld bc, $0159
    ld bc, $1716
    ld a, [de]
    ld [de], a
    inc c
    ld d, b
    ld d, c
    ld a, [de]
    inc h
    ld [$5150], sp
    ld a, [de]
    ld [de], a
    inc c
    ld d, d
    ld d, e
    nop
    nop
    ld e, d
    ld e, e
    ld a, [de]
    ld h, a
    ld bc, $015c
    ld bc, $5352
    ld a, [de]
    ld [de], a
    inc c
    add hl, de
    jr jr_024_5c5a

jr_024_5c5a:
    ld [bc], a
    inc bc
    inc b
    ld e, l
    ld e, [hl]
    ld e, l
    ld e, [hl]
    inc b
    inc b
    dec b
    ld a, [de]
    rrca
    rrca
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    inc b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    inc b
    inc b
    inc b
    dec b
    ld a, [de]
    jr nc, jr_024_5c86

    ld bc, $c21a
    nop
    ld d, a
    ld e, b
    ld e, b
    ld e, c
    ld a, [de]
    jp nz, Jump_000_1a02

    ld d, d
    ld c, $1a

jr_024_5c86:
    ld [c], a
    nop
    ld a, [de]
    ret z

    nop
    ld a, [de]
    ld [c], a
    ld [bc], a
    ld a, [de]
    ld [de], a
    dec bc
    ld a, [de]
    and h
    nop
    inc b
    inc b
    ld a, [de]
    add a
    inc bc
    ld a, [de]
    inc bc
    db $10
    dec b
    ld a, [de]
    inc de
    add hl, bc
    ld a, [de]
    ld bc, $1a13
    and a
    inc b
    ld a, [de]
    ld c, $11
    ld a, [de]
    ld [hl], $0a
    ld b, $07
    ld [$1a09], sp
    add $04
    ld a, [de]
    ld b, d
    ld [de], a
    ld a, [de]
    ld d, [hl]
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld a, [de]
    and $04
    ld a, [de]
    ld h, d
    ld [de], a
    ld a, [de]
    ld [hl], $0a
    ld c, $0f
    db $10
    ld de, $c61a
    inc b
    ld a, [de]
    add d
    ld [de], a
    ld a, [de]
    ld d, [hl]
    ld a, [bc]
    ld [de], a
    inc de
    inc d
    dec d
    ld a, [de]
    and $04
    ld a, [de]
    and d
    ld [de], a
    ld a, [de]
    ld [hl], $0a
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld a, [de]
    add $04
    ld a, [de]
    jp nz, Jump_000_1a12

    sub $0e
    ld a, [de]
    and $08
    ld a, [de]
    ld [hl], d
    ld a, [de]
    nop
    ld [bc], a
    ld a, [de]
    nop
    nop
    add hl, de
    jr jr_024_5cfb

jr_024_5cfb:
    nop
    ld d, h
    ld d, l
    ld a, [de]
    rlca
    ld bc, $0156
    ld bc, $1819
    ld bc, $1a01
    db $f4
    ld a, [$1716]
    nop
    nop
    ld d, a
    ld e, b
    ld a, [de]
    daa
    ld bc, $0159
    ld bc, $1716
    ld a, [de]
    ld [de], a
    inc c
    ld d, b
    ld d, c
    ld a, [de]
    inc h
    nop
    ld [hl], b
    ld [hl], c
    ld a, [de]
    ld a, [hl+]
    ld [bc], a
    ld d, b
    ld d, c
    ld a, [de]
    ld [de], a
    inc c
    ld d, d
    ld d, e
    nop
    nop
    ld e, d
    ld e, e
    ld [hl], d
    ld [hl], e
    ld e, e
    ld e, e
    ld e, e
    ld e, h
    ld bc, $5201
    ld d, e
    ld a, [de]
    ld [de], a
    inc c
    add hl, de
    jr jr_024_5d41

jr_024_5d41:
    ld [bc], a
    inc bc
    inc b
    ld e, l
    ld e, [hl]
    ld e, l
    ld e, [hl]
    inc b
    inc b
    dec b
    ld a, [de]
    rrca
    rrca
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    inc b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    inc b
    inc b
    inc b
    dec b
    ld a, [de]
    jr nc, jr_024_5d6d

    ld bc, $c21a
    nop
    ld d, a
    ld e, b
    ld e, b
    ld e, c
    ld a, [de]
    jp nz, Jump_000_1a02

    ld d, d
    ld c, $1a

jr_024_5d6d:
    ld [c], a
    nop
    ld a, [de]
    ret z

    nop
    ld a, [de]
    ld [c], a
    ld [bc], a
    ld a, [de]
    ld [de], a
    dec bc
    ld a, [de]
    and h
    nop
    inc b
    inc b
    ld a, [de]
    add a
    inc bc
    ld a, [de]
    inc bc
    db $10
    dec b
    ld a, [de]
    inc de
    add hl, bc
    ld a, [de]
    ld bc, $1a13
    and a
    inc b
    ld a, [de]
    ld c, $11
    ld a, [de]
    ld [hl], $0a
    ld b, $07
    ld [$1a09], sp
    add $04
    ld a, [de]
    ld b, d
    ld [de], a
    ld a, [de]
    ld d, [hl]
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld a, [de]
    and $04
    ld a, [de]
    ld h, d
    ld [de], a
    ld a, [de]
    ld [hl], $0a
    ld c, $0f
    db $10
    ld de, $c61a
    inc b
    ld a, [de]
    add d
    ld [de], a
    ld a, [de]
    ld d, [hl]
    ld a, [bc]
    ld [de], a
    inc de
    inc d
    dec d
    ld a, [de]
    and $04
    ld a, [de]
    and d
    ld [de], a
    ld a, [de]
    ld [hl], $0a
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld a, [de]
    add $04
    ld a, [de]
    jp nz, Jump_000_1a12

    sub $0e
    ld a, [de]
    and $08
    ld a, [de]
    ld [hl], d
    ld a, [de]
    nop
    ld [$8f15], sp
    push de
    adc a
    and l
    dec d
    nop
    ld [$f5a5], sp
    xor e
    ei
    dec d
    db $10
    ld [$d68c], sp
    adc h
    and a
    adc e
    db $d3
    adc b
    and a
    sbc a
    rst $08
    or b
    sub c
    ldh [$aa], a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    dec d
    cpl
    ld bc, $c0c0
    nop
    ld d, l
    nop
    dec d
    dec l
    rlca
    nop
    nop
    dec d
    ld a, [hl-]
    ld [bc], a
    dec h
    ld [hl], l
    dec hl
    ei
    push bc
    push de
    dec bc
    ei
    push af
    db $fd
    dec bc
    adc a
    dec b
    ld d, a
    dec d
    ld l, $00
    dec d
    ld e, [hl]
    inc c
    rst $08
    jr nz, jr_024_5e2d

    rst $20
    nop
    nop
    ld sp, hl
    inc b
    ld bc, $01fc

jr_024_5e2d:
    db $fc
    nop
    nop
    cp $fe
    call Call_000_0923
    rst $20

jr_024_5e36:
    ld bc, $f301
    add hl, bc
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    ld bc, $cf01
    and b
    adc b
    rst $20
    adc b
    rst $20
    add b
    add b
    ld hl, sp-$7a
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    add b
    add b
    dec d
    ld [hl], d
    nop
    dec d
    ld [hl], h
    nop
    db $fc
    ld [bc], a
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    nop
    nop
    rst $08
    ld hl, $e709
    dec d
    add h
    nop
    rst $38
    ld bc, $7f81
    add c
    ld a, a
    ld bc, $0401
    add a
    inc b
    add h
    db $fc
    db $fc
    rst $38
    rst $38
    jr nz, jr_024_5e36

    and b
    or b
    cp a
    cp a
    rst $38
    rst $38
    ld de, $11df
    add hl, de
    ld de, $1519
    add $00
    ccf
    ccf
    ldh a, [$fe]
    nop
    ld hl, sp-$71
    adc a
    sub c
    sbc a
    db $10
    jr @+$01

    rst $38
    add b
    rst $38
    add b
    ret nz

    db $fc
    db $fc
    rlca
    rst $30
    nop
    add b
    rst $38
    rst $38
    ld hl, sp-$08
    rst $28
    rst $28
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld h, c
    ld h, c
    rst $38
    rst $38
    adc a
    adc a
    dec d
    and $00
    sbc b
    ret c

    or h
    xor h
    sbc b
    sbc b
    rst $38
    rst $28
    ld [de], a
    ld [de], a
    dec d
    ldh a, [rP1]
    ld bc, $19ff
    dec de
    dec [hl]
    dec h
    add hl, de
    add hl, de
    rst $38
    rst $28
    add hl, sp
    add hl, sp
    ld a, [hl-]
    db $eb
    ld [de], a
    sub e
    add hl, sp
    add hl, sp
    ld [hl], h
    ld c, h
    ld a, [$eebf]
    xor e
    cp e
    sub e
    ld l, l
    ld l, l
    ld [hl], l
    ld c, l
    ei
    cp a
    rst $28
    xor e
    cp e
    sub e
    ld l, h
    ld l, l
    nop
    nop
    rst $38
    rst $38
    nop
    cp $1f
    rst $18
    jr nz, jr_024_5f0e

    ld c, a
    ld c, a
    sbc [hl]
    sbc [hl]
    xor d
    xor e
    xor d
    xor a
    xor [hl]
    cp e
    xor [hl]
    cp e
    ld sp, hl
    ld sp, hl
    dec b
    dec b
    ld a, [c]
    ld a, [c]
    ld a, c
    ld a, c
    ld d, l
    push de
    ld d, l
    push af
    ld [hl], l
    db $dd
    ld [hl], l
    db $dd
    dec d
    ld c, h
    db $10
    xor [hl]

jr_024_5f0e:
    cp e
    xor d
    xor [hl]
    cp e
    cp e
    and h
    and h
    add b
    cp a
    rst $38
    rst $38
    dec d
    ld e, h
    db $10
    ld [hl], l
    db $dd
    ld d, l
    ld [hl], l
    db $dd
    db $dd
    dec h
    dec h
    ld bc, $fffd
    rst $38
    rst $30
    dec bc
    cp [hl]
    ld b, a
    db $dd
    ld h, $d6
    cpl
    ld a, [$da07]
    daa
    ld h, [hl]
    add e
    sbc d
    ld d, e
    scf
    ld [$029d], sp
    sbc $01
    sub [hl]
    add hl, bc
    cp e
    inc b
    sbc e
    inc h
    and [hl]
    ld bc, $20b3
    cp a
    ld h, b
    add sp, $37
    sub $1f
    xor d
    ld c, e
    sbc $23
    sub $2b
    ld a, d
    add a
    ld l, [hl]
    sub e
    ld sp, hl
    ld [bc], a
    sub l
    ld l, [hl]
    db $eb
    ld a, b
    sub c
    ld d, $9e
    ld hl, $2996
    cp e
    inc b
    xor l
    ld [de], a
    ld a, $7f
    ld b, d
    db $db
    ld c, c
    push de
    rst $18
    ret nz

    add b
    add a
    and b
    rst $28
    cp a
    add b
    ret nz

    ret nz

    cp h
    ld a, $42
    ei
    or d
    jp z, Jump_000_03fb

    ld bc, $05e1
    rst $30
    db $fd
    ld bc, $0303
    dec d
    ldh [rIE], a
    dec c
    dec d
    and $01
    rst $38
    add b
    add b
    ld a, a
    ld a, a
    ld l, l
    db $ed
    ld b, [hl]
    sub $44
    ld d, l
    dec d
    ld b, h
    ld bc, $15ff
    ld a, [hl-]
    db $10
    ld h, $36
    ld c, d
    db $db
    add [hl]
    sub $15
    db $10
    ld h, $94
    db $e4
    cp d
    jp $81fd


    dec d
    ld [de], a
    db $10
    ld bc, $01ff
    ld bc, $fefe
    or [hl]
    or a
    ld h, e
    ld l, d
    inc hl
    xor d
    add hl, hl
    dec hl
    cpl
    rst $38
    xor b
    ei
    cpl
    rst $38
    jr z, jr_024_6041

    cpl
    rst $38
    add hl, hl
    ld sp, hl
    xor a
    rst $38
    ld a, [bc]
    ld e, e
    dec d
    jr nc, jr_024_5fd6

    ld a, h
    ld a, h

jr_024_5fd6:
    add b
    add e
    db $e3
    db $ec
    ld c, $30
    cp $80
    rst $38
    rst $38
    inc bc
    db $fc
    adc $d0
    dec sp
    jp nz, Jump_000_0ee9

    xor h
    inc sp
    cp [hl]
    pop bc
    sub h
    push de
    db $f4
    rst $38
    push af
    ld a, [hl]
    or a
    call c, Call_000_1cf7
    rst $30
    inc e
    sub a
    ld a, h
    scf
    call c, $bc6c
    ld l, b
    cp e
    ld l, e
    cp h
    xor [hl]
    ld a, b
    xor a
    ld a, [hl]
    rst $28
    jr c, @-$4f

    ld a, b
    dec l
    ld a, [$c33a]
    xor $09
    cp [hl]
    ld hl, $c7b8
    sub e
    ld l, h
    pop bc
    ld a, $ac
    ld d, e
    ld a, $c1
    ld l, [hl]
    sub c
    db $f4
    dec bc
    pop af
    ld c, $f7
    ld [$18e7], sp
    rst $28
    db $10
    adc a
    ld [hl], b
    ccf
    ret nz

    db $76
    sbc l
    ld [hl], h
    sbc a
    ld [hl], l
    sbc [hl]
    or a
    ld e, h
    sub a
    ld a, h
    rst $10
    inc a
    or l
    ld e, [hl]
    inc [hl]
    rst $18
    ld l, a
    cp b
    ld l, d
    cp l
    ld l, a

jr_024_6041:
    cp a
    xor b
    ld a, e
    xor b
    ld a, b
    add sp, $38
    xor a
    ld a, a
    add hl, hl
    xor e
    dec d
    and b
    jr nz, jr_024_6065

    ld b, h
    ld [bc], a
    rst $00
    rst $00
    ccf
    rst $38
    daa
    scf
    ld c, [hl]
    or c
    ld [hl], d
    adc l
    dec d
    ld b, h
    ld [bc], a
    db $e3
    db $e3
    db $fc
    rst $38
    db $e4
    db $ec

jr_024_6065:
    db $76
    sbc l
    db $f4
    rra

jr_024_6069:
    push af
    cp $17
    call c, Call_000_1c17
    rla
    inc e
    push af
    cp $94
    push de
    dec d
    and b
    rst $38
    ld c, l
    dec d
    ld e, a
    ccf
    ld c, l
    dec d
    cp a
    ccf
    ld c, l
    dec d
    rra
    ld c, a
    ld c, l
    dec d
    ld a, a
    ld c, a
    ld c, l
    dec d
    ldh [rIE], a
    dec c
    inc a
    jp $827d


    ld sp, hl
    ld b, $e3
    inc e
    ld b, a
    cp b
    sub e
    ld l, h
    cp c
    ld b, [hl]
    ld a, h
    add e
    add [hl]
    ld a, c
    db $ec
    inc de
    ld a, [c]
    dec c
    or $09
    rst $28
    db $10
    rst $18
    jr nz, jr_024_6069

    ld b, b
    rra
    ldh [$7e], a
    add c
    dec d
    jr nz, jr_024_6102

    cp b
    ld b, a
    dec d
    sbc b

jr_024_60b6:
    cpl
    dec b
    inc c
    di
    ld e, l
    and d
    reti


    ld h, $e3
    inc e
    ld a, [hl]
    add c
    rst $18
    jr nz, jr_024_60b6

    ld c, $6d

jr_024_60c7:
    sub d
    dec d
    db $10
    ld d, b
    cp $01
    or e
    ld c, h
    db $ed
    ld [de], a
    db $dd
    ld [hl+], a
    ld l, l
    sub d
    di
    inc c
    sbc $21
    cp [hl]
    ld b, c
    ld a, [hl]
    add c
    cp c
    ld b, [hl]
    sub e
    ld l, h
    push bc
    ld a, [hl-]
    xor a
    ld d, b
    dec sp
    call nz, $10ef
    cp d
    ld b, l
    rst $20
    jr jr_024_60c7

    ld h, $bb
    ld b, h
    cp e
    ld b, h
    ld b, l
    cp d
    ei
    inc b
    or h
    ld c, b
    ld e, e
    and b
    pop af
    ld b, $c3
    ld l, $74
    sbc l
    or a

jr_024_6102:
    ld e, c
    add sp, $1b
    and c
    ld d, h
    ld e, d
    ld h, l
    sub a
    ld e, b
    ld c, e
    xor h
    and a
    ret nc

    ld a, d
    ld c, l
    cpl
    ret z

    ei
    ld [hl], h
    daa
    ld a, b
    ld a, [c]
    ld a, [bc]
    ld c, l
    add d
    ld d, e
    call nz, Call_024_5524
    db $76
    ld hl, sp-$74
    ld a, l
    ld [hl], c
    adc a
    xor $11
    jp c, $ffe5

    nop
    xor l
    ld d, d
    rst $00
    ld [$ddea], sp
    pop hl
    ld c, $8b
    cp h
    inc sp
    db $fc

jr_024_6137:
    rst $18
    jr nz, jr_024_6137

    ld [bc], a
    ld l, [hl]
    sub c
    ei
    inc b
    and c
    ld d, [hl]
    ld [hl], d
    adc l
    cp a
    ld b, b
    xor $10
    ld l, a
    sub b
    cp e
    ld b, h
    pop hl
    inc d
    sbc $21
    ld a, e
    add h
    xor $11
    cp a
    ld b, b
    ld a, e
    inc b
    sbc b
    ld h, l
    pop hl
    rra
    ld e, [hl]
    and c
    rst $30
    ld [$539c], sp
    ld [hl], e
    adc h
    cp a
    ld b, b
    db $eb
    inc d
    ld h, a
    ld e, b
    sbc [hl]
    pop hl
    ld [hl], e
    add b
    and e
    ld c, d
    call z, $f33f
    inc c
    ld e, l
    and d
    rst $30
    ld [$cf80], sp
    add a
    ret c

    sbc [hl]
    sbc $98
    ret c

    dec d
    nop
    ld h, h
    ld b, $fc
    cp $04
    xor [hl]
    xor h
    ld b, $04
    dec d
    db $10
    ld h, h
    dec d
    nop
    ld l, d
    ld hl, sp-$08
    dec d
    db $10
    ld h, [hl]
    rst $38
    dec b
    xor a
    xor l
    rlca
    rlca
    ld b, h
    ld d, h
    call nz, $c7d4
    rst $10
    cp b
    cp b
    add b
    add b
    dec d
    inc b
    jr nz, @+$01

    rst $38
    ret nz

    rst $08
    dec d
    ld a, [hl-]
    ld de, $fc15
    ld de, $3a15
    db $10
    inc bc
    di
    dec d
    ld d, d
    ld l, d
    ld [hl+], a
    ld a, [hl+]
    inc hl
    dec hl
    db $e3
    db $eb
    dec e
    dec e
    ld bc, $b615
    nop
    ld bc, $5415
    ld h, e
    dec d
    add h
    ld l, a
    ld c, l
    dec d
    db $e4
    rra
    ld a, [bc]
    rrca
    ldh a, [rNR10]
    rst $28
    nop
    pop bc
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $ff00
    ldh [$ef], a
    ldh a, [rPCM34]
    ld [hl], h
    or e
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l
    ld b, b
    or c
    ld b, a
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld l, $cd
    rrca
    xor $07
    rst $30
    nop
    rst $38
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    nop
    add e
    ld [$f0f7], sp
    rrca
    dec d
    ld b, [hl]
    ld bc, $4215
    ld a, a
    ld c, l
    dec d
    and d
    ld a, a
    ld c, d
    nop
    ld [bc], a
    dec b
    ld b, $07
    dec b
    ld bc, $060d
    dec b
    db $f4
    ld sp, hl
    dec bc
    inc c
    inc d
    dec d
    dec c
    inc c
    db $10
    ld de, $2505
    ld [bc], a
    inc d
    dec d
    dec c
    add hl, bc
    dec b
    inc de
    dec bc
    ld c, $16
    rla
    rrca
    ld c, $12
    inc de
    dec b
    ld b, l
    ld [bc], a
    ld d, $17
    rrca
    dec b
    ld [hl-], a
    inc c
    inc c
    dec c
    dec b
    ld h, d
    ld a, [bc]
    dec b
    ld [hl-], a
    inc c
    jr jr_024_626a

    nop
    nop
    ld e, b
    ld e, c
    ld d, h
    ld d, l
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld bc, $5801
    ld e, c
    dec b
    ld [hl-], a
    inc c
    ld a, [de]
    dec de
    nop
    nop
    ld e, d
    ld e, e
    ld d, [hl]
    ld d, a

jr_024_626a:
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld bc, $5a01
    ld e, e
    dec b
    ld [hl-], a
    inc c
    inc e
    dec e
    nop
    nop
    dec b
    adc b
    ld [bc], a
    ld d, h
    ld d, l
    ld bc, $5c01
    ld e, l
    dec b
    ld [hl], d
    rrca
    ld bc, $a805
    ld [bc], a
    ld d, [hl]
    ld d, a
    ld bc, $5e01
    ld e, a
    dec b
    sub d
    rrca
    nop
    ld [bc], a
    inc bc
    inc b
    ld h, b
    ld h, c
    ld h, b
    ld h, c
    inc b
    inc b
    jr nz, @+$23

    ld [hl+], a
    inc hl
    dec b
    or d
    ld c, $02
    inc bc
    inc b
    inc b
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    inc b
    inc b
    inc h
    dec h
    ld h, $27
    dec b
    ld [hl-], a
    inc c
    ld e, h
    ld e, l
    dec b
    adc b
    nop
    dec b
    adc b
    nop
    ld e, b
    ld e, c
    jr z, jr_024_62e9

    ld a, [hl+]
    dec hl
    dec b
    ld [hl-], a
    inc c
    ld e, [hl]
    ld e, a
    dec b
    xor b
    nop
    dec b
    xor b
    nop
    ld e, d
    ld e, e
    inc l
    dec l
    ld l, $2f
    dec b
    ld [hl-], a
    inc c
    dec b
    ld b, h
    inc d
    dec b
    adc d
    nop
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    dec b
    ld [hl-], a
    inc c
    dec b
    ld h, h
    inc d
    dec b
    xor d
    nop

jr_024_62e9:
    ld e, h
    ld e, l
    ld d, [hl]
    ld d, a
    dec b
    ld [hl-], a
    dec bc
    ld a, [bc]
    dec b
    ld bc, $0a0c
    dec b
    inc de
    ld a, [bc]
    dec b
    ld h, d
    inc c
    inc c
    dec c
    dec b
    inc de
    add hl, bc
    nop
    ld [bc], a
    dec b
    ld b, $07
    dec b
    ld bc, $060d
    dec b
    db $f4
    ld sp, hl
    dec bc
    inc c
    inc d
    dec d
    dec c
    inc c
    db $10
    ld de, $2505
    ld [bc], a
    inc d
    dec d
    dec c
    add hl, bc
    dec b
    inc de
    dec bc
    ld c, $16
    rla
    rrca
    ld c, $12
    inc de
    dec b
    ld b, l
    ld [bc], a
    ld d, $17
    rrca
    dec b
    ld [hl-], a
    inc c
    inc c
    dec c
    dec b
    ld h, d
    ld a, [bc]
    dec b
    ld [hl-], a
    inc c
    jr jr_024_6351

    nop
    nop
    ld e, b
    ld e, c
    ld d, h
    ld d, l
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld bc, $5801
    ld e, c
    dec b
    ld [hl-], a
    inc c
    ld a, [de]
    dec de
    nop
    nop
    ld e, d
    ld e, e
    ld d, [hl]
    ld d, a

jr_024_6351:
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld bc, $5a01
    ld e, e
    dec b
    ld [hl-], a
    inc c
    inc e
    dec e
    nop
    nop
    dec b
    adc b
    ld [bc], a
    ld d, h
    ld d, l
    ld bc, $5c01
    ld e, l
    dec b
    ld [hl], d
    rrca
    ld bc, $a805
    ld [bc], a
    ld d, [hl]
    ld d, a
    ld bc, $5e01
    ld e, a
    dec b
    sub d
    rrca
    nop
    ld [bc], a
    inc bc
    inc b
    ld h, b
    ld h, c
    ld h, b
    ld h, c
    inc b
    inc b
    jr nz, jr_024_63a6

    ld [hl+], a
    inc hl
    dec b
    or d
    ld c, $02
    inc bc
    inc b
    inc b
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    inc b
    inc b
    inc h
    dec h
    ld h, $27
    dec b
    ld [hl-], a
    inc c
    ld e, h
    ld e, l
    ld [hl], b
    ld [hl], c
    dec b
    jp z, Jump_024_5000

    ld d, c
    ld e, b
    ld e, c

jr_024_63a6:
    jr z, jr_024_63d1

    ld a, [hl+]
    dec hl
    dec b
    ld [hl-], a
    inc c
    ld e, [hl]
    ld e, a
    ld [hl], d
    ld [hl], e
    dec b
    ld [$5200], a
    ld d, e
    ld e, d
    ld e, e
    inc l
    dec l
    ld l, $2f
    dec b
    ld [hl-], a
    inc c
    dec b
    adc b
    nop
    dec b
    adc b
    ld [bc], a
    ld d, b
    ld d, c
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    dec b
    ld [hl-], a
    inc c
    dec b
    xor b
    nop

jr_024_63d1:
    dec b
    xor b
    ld [bc], a
    ld d, d
    ld d, e
    ld e, h
    ld e, l
    ld d, [hl]
    ld d, a
    dec b

Call_024_63db:
    ld [hl-], a
    dec bc
    ld a, [bc]
    dec b
    ld bc, $0a0c
    dec b
    inc de
    ld a, [bc]
    dec b
    ld h, d
    inc c
    inc c
    dec c
    dec b
    inc de
    add hl, bc
    nop
    ld [$9107], sp
    xor d
    ret nz

    sub b
    adc b
    push bc
    sub d
    sbc [hl]
    ld h, b
    ld d, d
    ld c, d
    ld a, l
    db $f4
    ld a, [$eee0]
    nop
    add hl, sp
    ld [bc], a
    push de
    add d
    ld l, d
    nop
    adc l
    ld h, b
    ld d, $08
    ld a, c
    ld [hl-], a
    or h
    dec b
    db $eb
    nop
    call nz, $bd04
    add hl, de
    jp c, Jump_000_25c8

    inc b
    jp z, Jump_024_7040

    add hl, bc
    rst $00
    ld [bc], a
    ld [hl], d
    ld bc, $0989
    push de
    ld a, [bc]
    sub $06
    rrca
    ld [hl-], a
    ld b, d
    ld a, [bc]
    ld a, [hl]
    ld de, $1115
    dec hl
    add [hl]
    or [hl]
    add b
    xor l
    ret nz

    pop bc
    add b
    adc h
    ld c, h
    ld d, d
    ld h, c
    db $fd
    ld c, h
    ld c, l
    adc b
    sub e
    rst $38
    rlca
    ld d, b
    dec bc
    ld bc, $8985
    ld d, l
    inc bc
    adc e
    ld hl, $8251
    ld [hl], d
    ld a, [bc]
    ld l, e
    ld [hl-], a
    or d
    ld bc, $a0d9
    cp h
    add l
    add [hl]
    add c
    sbc l
    ld b, b
    ld b, [hl]
    ld d, b
    bit 0, h
    ld a, h
    sbc c
    sbc d
    add d
    or l
    rlca
    jr nz, jr_024_6474

    ret


    add hl, bc
    dec [hl]
    ld de, $02c9
    add $22
    dec hl
    jp c, Jump_000_01e6

    ld e, l

jr_024_6474:
    ld bc, $e1e1
    db $ed
    ld e, $5e
    inc b
    push hl
    rlca
    ld d, $04
    nop
    and $f6
    or $09
    ld a, e
    ld b, b
    ld hl, $6400
    nop
    sub [hl]
    nop
    cp c
    nop
    rst $20
    ld [$1bd6], sp
    ld e, e
    ld e, $9e
    ld [hl], $36
    db $e3
    db $eb
    ld h, c
    ld h, c
    ld [hl-], a
    or d
    ld a, [hl]
    ld a, [hl]
    adc c
    xor c
    ld b, a
    ld b, a
    ld l, a
    ld l, a
    cp d
    cp d
    sub c
    sub c
    adc c
    adc c
    db $76
    db $76
    rlca
    db $fc
    ldh a, [$c7]
    rst $00
    ld l, a
    ld l, a
    ld a, [hl-]
    ld a, [hl-]
    ld sp, $c931
    ret


    ld b, $06
    rlca
    db $fc
    ldh a, [$c3]
    jp Jump_024_6565


    rlca
    db $e4
    nop
    pop de
    pop de
    ld c, $0e
    rlca
    db $fc
    ldh a, [$b0]
    db $f4
    sbc b
    cp b
    ld d, b
    ld d, b
    ld d, l
    db $dd
    or d
    ld [hl-], a
    xor [hl]
    ld l, $23
    or e
    ld h, e
    db $eb
    ld [hl], l
    ld [hl], l
    ld l, b
    ld l, b
    ld b, l
    push bc
    ld b, a
    rst $10
    dec l
    xor l
    cp b
    ld a, b
    cp b
    ld a, d
    db $ed
    dec l
    ld d, a
    rst $10
    and e
    db $eb
    or e
    or e
    ld l, [hl]
    xor $4c
    ld l, h
    sub h
    call nc, $9696
    ld a, c
    ld a, c
    and l
    rst $10
    adc l
    xor l
    ld d, d
    ld d, [hl]
    ld [hl-], a
    inc sp
    dec a
    inc a
    ld c, l
    ld c, h
    add [hl]
    sub a
    jp z, Jump_024_76cb

    db $76
    jp nz, Jump_024_42da

    ld b, [hl]
    ld [hl+], a
    and e
    dec [hl]
    ld [hl], h
    ld c, l
    ld c, [hl]
    add l
    sub [hl]
    call Call_024_7ecc
    ld a, a
    add hl, hl
    add hl, hl
    dec h
    or l
    ld b, d
    ld c, e
    ld [c], a
    ld [c], a
    ld a, l
    ld a, l
    add hl, hl
    xor c
    ld b, [hl]
    ld d, [hl]
    ld b, h
    or d
    add hl, bc
    ld a, c
    add [hl]
    and [hl]
    db $ec
    db $ed
    ld b, h
    ld d, l
    ld b, d
    ld a, d
    rst $00
    rst $10
    cp c
    cp c
    adc b
    xor d
    ret nc

    call nc, Call_024_6d61
    ld [hl], d
    ld [hl], d
    sbc [hl]
    sbc [hl]
    adc c
    xor c
    ret nc

    jp nc, $b1b1

    ld a, [de]
    ld e, d
    inc e
    sbc l
    inc [hl]
    inc [hl]
    ld [c], a
    ld [$c807], a
    nop
    ld l, h
    ld l, h
    add $c6
    rlca
    ldh [$0c], a
    ld [hl], $b6
    ld b, b
    ld e, l
    add b
    or c

Jump_024_6565:
    rlca
    ld b, [hl]
    ld b, $b8
    cp e
    adc d
    ld d, d
    ld bc, $078d
    ld h, [hl]
    ld b, $ff
    nop
    ld a, a
    ld a, a
    nop
    ld e, b
    ld e, d
    nop
    ld e, b
    ld bc, $7e00
    db $fd
    db $fc
    add d
    ei
    rst $38
    nop
    cp $fe
    nop
    ld a, [de]
    ld e, d
    nop
    ld a, [de]
    add b
    nop
    ld a, [hl]
    cp a
    ccf
    ld b, c
    rst $18
    add b
    add $80
    res 0, b
    ld hl, sp-$80
    call z, $ff80
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld bc, $0163
    db $d3
    ld bc, $011f
    inc sp
    ld bc, $e907
    inc de
    ld a, h
    add e
    rst $18
    jr nz, @+$01

    ld bc, $77fb
    rst $08
    ld a, l
    rst $28
    add hl, sp
    rst $38
    db $10
    rst $38
    ld l, $eb
    ld [hl], h
    rst $38
    ldh [rNR33], a
    ld [c], a
    cp [hl]
    db $dd
    push hl
    ld a, [hl]
    rst $28
    jr c, @+$01

jr_024_65ca:
    db $10
    rst $38
    add sp, -$0f
    ld e, a
    db $f4
    sbc a
    ret nc

    cp a
    xor a
    rst $38
    rst $28
    ldh a, [$ef]
    jr nc, jr_024_65ca

    rra
    rst $38
    ccf
    rra
    db $f4
    ld e, a
    ld a, [c]
    rla
    ld a, [$feeb]
    rst $28
    ld e, $ea
    dec e
    rra
    ldh a, [$fa]
    db $fd
    rlca
    and b
    rst $38
    ld c, l
    rlca
    sbc a
    cpl
    ld c, l
    rlca
    rst $38
    cpl
    ld c, l
    rlca
    ld e, a
    ccf
    ld c, l
    rlca
    cp a
    ccf
    ld c, l
    rlca
    rra
    ld c, a
    ld c, l
    rlca
    ld a, a
    ld c, a
    ld c, l
    rlca
    ldh [rIE], a
    dec c
    rlca
    nop
    ld hl, $fb00
    inc b
    rlca
    ld [bc], a
    ld d, d
    xor $11
    db $eb
    inc d
    rst $38
    nop
    dec e

Jump_024_661d:
    ld [c], a
    cp d
    ld b, l
    db $fd
    ld [bc], a
    ld l, a
    sub b
    rst $38
    nop
    rst $28
    db $10
    db $fc
    inc bc
    rst $38
    nop

jr_024_662c:
    rlca
    db $10
    ld d, b
    db $ed
    ld [de], a
    rlca
    ld [hl+], a
    ld d, b
    rst $10
    jr z, @+$71

    sub b
    db $fd
    ld [bc], a
    rst $10

jr_024_663b:
    jr z, jr_024_662c

    db $10
    rst $18
    jr nz, jr_024_663b

    dec b
    rst $38
    nop
    or d
    ld c, l

jr_024_6646:
    rst $18
    jr nz, jr_024_6646

    ld [bc], a
    ld l, [hl]
    sub c
    ei
    inc b
    and c
    ld d, [hl]
    ld [hl], d
    adc l
    cp a
    ld b, b
    xor $10
    ld l, a
    sub b
    cp e
    ld b, h
    pop hl
    inc d
    sbc $21
    ld a, e
    add h
    xor $11
    cp a
    ld b, b
    ld a, e
    inc b
    sbc b
    ld h, l
    pop hl
    rra
    ld e, [hl]

jr_024_666b:
    and c
    rst $30
    ld [$539c], sp
    ld [hl], e
    adc h
    cp a
    ld b, b
    db $eb
    inc d
    ld h, a
    ld e, b
    sbc [hl]
    pop hl
    ld [hl], e
    add b
    and e
    ld c, d
    call z, $f33f
    inc c
    ld e, l
    and d
    rst $30
    ld [$a007], sp
    ld c, a
    ld c, l
    rlca
    rst $18
    ld e, a
    ld c, l
    rlca
    ccf
    ld l, a
    ld c, l
    rlca
    sbc a
    ld l, a
    ld c, l
    ld [hl], b
    adc a
    rst $08
    jr nc, jr_024_666b

    cpl
    add b
    ld b, c
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $f40b
    rst $20
    add sp, -$0f
    db $76
    ld [hl], h
    or e
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l
    ld b, b
    or c
    ld b, a
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    xor [hl]
    ld c, l
    rst $08
    ld l, $e7
    rla
    ret nc

    cpl
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    ld bc, $0a82
    push af
    rst $30
    ld [$0702], sp
    ccf
    cpl
    ld c, l
    rlca
    sbc [hl]
    ld a, a
    ld c, l
    nop
    nop
    ld [bc], a
    dec b
    ld [bc], a
    ld bc, $0902
    ld d, b
    ld d, c
    inc b
    ld [bc], a
    ld bc, $0705
    nop
    add hl, bc
    ld d, h
    ld d, l
    dec b
    ld b, $00
    dec b
    db $f4
    ld hl, sp+$16
    rla
    rla
    inc de
    ld d, d
    ld d, e
    db $10
    ld d, $17
    rla
    ld d, $17
    ld d, $13
    ld d, [hl]
    ld d, a
    db $10
    ld d, $17
    ld d, $05
    db $f4
    ld hl, sp+$17
    rla
    rla
    inc d
    ld d, b
    ld d, c
    ld de, $0517
    ld b, a
    ld bc, $4305
    inc bc
    dec b
    db $f4
    ld hl, sp+$0c
    inc c
    inc c
    dec d
    ld d, d
    ld d, e
    ld [de], a
    inc c
    dec b
    ld h, a
    ld bc, $6305
    inc bc
    dec b
    db $f4
    ld hl, sp+$50
    ld d, c
    ld d, h
    ld d, l
    ld d, b
    ld d, c
    dec b
    add h
    nop
    dec b
    add d
    inc b
    ld d, b
    ld d, c
    dec b
    db $f4
    ld hl, sp+$52
    ld d, e
    ld d, [hl]
    ld d, a
    ld d, d
    ld d, e
    dec b
    and h
    nop
    dec b
    and d
    inc b
    ld d, d
    ld d, e
    dec b
    db $f4
    ld hl, sp+$0a
    ld a, [bc]
    dec bc
    dec de
    ld d, b
    ld d, c
    ld a, [de]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec b
    jp Jump_000_0a01


    dec bc
    dec b
    inc d
    ld a, [bc]
    ld d, $13
    ld d, d
    ld d, e
    nop
    add hl, bc
    rla
    ld d, $17
    rla
    rlca
    add hl, bc
    dec b
    inc h
    ld bc, $3305
    dec c
    ld d, h
    ld d, l
    inc b
    inc bc
    dec b
    ld b, a
    nop
    nop
    inc bc
    dec b
    ld c, [hl]
    rrca
    inc bc
    dec b
    ld l, $00
    dec b
    ld h, a
    nop
    dec b
    ld [c], a
    nop
    dec b
    ld [hl], b
    ld c, $05
    add b
    nop
    ld de, $5014
    ld d, c
    ld [hl], b
    ld [hl], c
    ld de, $0514
    add d
    nop
    ld d, h
    ld d, l
    dec b
    sub h
    ld a, [bc]
    dec b
    and b
    nop
    ld [de], a
    dec d
    ld d, d
    ld d, e
    ld [hl], d
    ld [hl], e
    ld [de], a
    dec d
    dec b
    and d
    nop
    ld d, [hl]
    ld d, a
    dec b
    or h
    add hl, bc
    dec de
    dec b
    adc d
    ld b, $05
    add [hl]
    ld [bc], a
    ld a, [de]
    ld a, [bc]
    dec b
    db $f4
    ld hl, sp+$08
    add hl, bc
    dec b
    xor d
    ld b, $05
    and [hl]
    ld [bc], a
    rlca
    dec b
    inc de
    add hl, bc
    ld [$0501], sp
    call z, Call_000_0b02
    dec b
    rst $00
    nop
    dec b
    jp $0801


    ld bc, $1405
    ld c, $17
    ld d, $16
    ld d, $05
    ldh [rNR14], a
    dec b
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    dec b
    ld bc, $0102
    ld bc, $0502
    inc bc
    dec bc
    dec b
    db $f4
    ld hl, sp+$16
    ld d, $17
    ld d, $17
    rla
    ld d, $17
    inc b
    ld [bc], a
    ld bc, $0509
    ld hl, $1603
    dec b
    db $f4
    ld hl, sp+$17
    dec b
    ld b, b
    inc bc
    inc b
    ld bc, $0302
    dec b
    ld b, b
    inc b
    dec b
    db $f4
    ld hl, sp+$0c
    dec b
    ld h, b
    inc bc
    inc b
    ld [bc], a
    ld bc, $0503
    ld h, b
    inc b
    dec b
    db $f4
    ld hl, sp+$54
    ld d, l
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    inc e
    dec e
    inc b
    ld bc, $0902
    ld d, b
    ld d, c
    dec b
    add b
    ld [bc], a
    dec b
    db $f4
    ld hl, sp+$56
    ld d, a
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld e, $1f
    dec b
    ld l, b
    nop
    ld d, d
    ld d, e
    dec b
    and b
    ld [bc], a
    dec b
    db $f4
    ld hl, sp+$0b
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec b
    pop bc
    nop
    dec b
    inc b
    nop
    dec b
    pop bc
    inc bc
    dec bc
    dec b
    inc [hl]
    add hl, bc
    ld d, $17
    dec b
    jr nz, jr_024_6865

    inc b

jr_024_6865:
    ld [bc], a
    ld bc, $0502
    ld l, $02
    dec b
    ld d, d
    ld a, [bc]
    dec b
    ld b, b
    rlca
    ld bc, $4c05
    rrca
    inc c
    add hl, bc
    dec b
    ld l, h
    rrca
    ld bc, $8c05
    ld [bc], a
    jr nz, jr_024_68a1

    dec b
    ld c, b
    nop
    dec b
    add d
    nop
    dec b
    add b
    nop
    dec b
    db $f4
    ld hl, sp+$05
    xor h
    ld [bc], a
    ld [hl+], a
    inc hl
    dec b
    xor b
    ld [bc], a
    dec b
    xor h
    ld [bc], a
    dec b
    db $f4
    ld hl, sp+$0a
    dec de
    dec b
    ld c, h
    ld [de], a
    dec b
    adc b

jr_024_68a1:
    nop
    dec b
    add b
    ld [bc], a
    ld a, [de]
    ld a, [bc]
    dec b
    db $f4
    ld hl, sp+$08
    add hl, bc
    dec b
    ld l, h
    ld [de], a
    dec b
    ld l, b
    nop
    dec b
    and b
    ld [bc], a
    rlca
    dec b
    inc de
    add hl, bc
    ld [$0a01], sp
    dec bc
    dec b
    ret nz

    nop
    dec b
    ret z

    ld b, $05
    ld [de], a
    dec bc
    dec b
    ldh [rDIV], a
    ld d, $17
    dec b
    db $ed
    ld [bc], a
    ld d, $16
    dec b
    inc sp
    add hl, bc
    nop
    ld [$ef06], sp
    db $10
    ld a, a
    add h
    ld e, a
    xor [hl]
    cp e
    ld e, a
    pop af
    rra
    ld sp, hl
    inc sp
    ldh [$38], a
    ld h, c
    ld sp, hl
    rst $38
    nop
    ld [hl], a
    sbc b
    rst $38
    jr c, @+$6f

    ld a, [$ee55]
    and a
    call c, $fac3
    ld b, e
    ld e, d
    ld d, d
    db $eb
    push bc
    ld a, [hl]
    push bc
    or $88
    rst $28
    sbc d
    sbc l
    ldh a, [$f0]
    ld e, a
    cp a
    ld l, d
    sub l
    inc hl
    ld [$5511], a
    ld de, $0955
    ld l, c
    dec c
    ld l, l
    rlca
    rlca
    db $fd
    cp $df
    jr nz, @+$01

    rst $38
    add b
    ret nz

    ret nz

    sbc a
    add b
    ret


    ret nz

    sbc [hl]
    add b
    ret nz

    ret nz

    sbc [hl]
    add b
    call z, $fcff
    rlca
    inc c
    rrca
    db $e4
    rlca
    xor h
    rrca
    inc b
    ld d, a
    xor h
    rst $38
    ld a, h
    ld b, a
    db $fc
    ld b, $48
    inc bc
    ret z

    ld b, $60
    inc b
    rst $00
    ld a, h
    ld b, a
    db $fc
    rst $38
    ld a, h
    ld a, a
    ret nz

    rst $18
    ld h, b
    ld l, d
    push de
    push de
    ld l, d
    ld e, a
    ldh [rIE], a
    ld b, b
    ld [hl], a
    ret z

    rst $38
    ld b, b
    ld d, l
    ld [$6ad5], a
    ld l, e
    call nc, Call_024_42fd
    ld l, a
    ret nc

    db $ed
    ld d, d
    ld e, a
    ldh [$f9], a
    ld b, [hl]
    ld e, l
    ld [c], a
    ld b, $78
    inc b
    ld b, $64
    inc bc
    ld b, $67
    nop
    pop bc
    ret nz

    sbc a
    add b
    ret z

    ld b, $80
    inc b
    ld a, a
    ld a, a
    nop
    ld [$ff00], sp
    nop
    ld b, d
    ret nz

    add b
    xor d
    push de
    rst $38
    rst $38
    rst $38
    add b
    add b
    add b
    add b
    push de
    push de
    xor d
    rst $38
    rst $38
    nop
    nop
    xor d
    ld d, l
    rst $38
    ld b, $ce
    nop
    nop
    nop
    ld d, l
    ld d, l
    xor d
    rst $38
    rst $38
    rst $28
    db $10
    ld a, e
    add h
    ld d, l
    xor d
    xor e
    ld d, h
    rst $38
    rst $38
    nop
    ld b, d
    nop
    rst $38
    nop
    db $10
    rst $38
    nop
    ld [hl], a
    adc b
    rst $38
    nop
    ld b, $dc
    nop
    nop
    stop
    rst $38
    nop
    add h
    rst $28
    ld [de], a
    ld a, d
    add a
    ld d, a
    xor d
    xor d
    ld d, a
    cp $fe
    ld b, $ea
    ld [bc], a
    ld bc, $037b
    ld bc, $7b01
    inc bc
    ld de, $1406
    ld de, $03fb
    add l
    ld bc, $ab03
    ld b, $d3
    nop
    ld bc, $0101
    ld bc, $5555
    xor e
    rst $38
    rst $38
    ld b, $10
    rla
    ld b, $13
    ld de, $0006
    inc d
    rst $30
    ld a, [bc]
    ld_long a, $ff07
    ld [bc], a
    ld d, [hl]
    xor e
    ld b, $04
    db $10
    rst $38
    ld [bc], a
    cp $03
    cp e
    ld b, [hl]
    sbc $23
    ld d, a
    xor d
    ld l, d
    sub a
    rst $38
    ccf
    ldh [$30], a
    ldh a, [$27]
    ldh [$35], a
    ldh a, [rNR41]
    ld_long $ff35, a
    ld a, $e2
    ccf
    rst $38
    rst $38
    inc bc
    ld bc, $fb01
    inc bc
    sub c
    ld b, $10
    inc de
    ld sp, $06e3
    ld l, l

jr_024_6a25:
    db $10
    ld a, $fe
    inc bc
    cp a
    ld b, d
    ld b, $5a
    db $10
    ld l, [hl]
    sub e
    ld b, $a0
    rst $38
    ld c, l
    ld b, $f0
    db $fc
    jp $9100


    jr z, @+$22

    ret c

    ld d, b
    inc l
    ld b, $04
    jr nz, jr_024_6a43

jr_024_6a43:
    ld hl, sp+$00
    ld [hl], h
    nop
    jr z, jr_024_6a49

jr_024_6a49:
    ld d, b
    add c
    nop
    jp $c300


    db $10
    add c
    ld d, d
    nop
    or c
    add c
    ld a, [hl]
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr c, @+$01

    ld de, $2bef
    add a
    dec b
    add e
    inc bc
    and a
    dec e
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld de, $ff11
    nop
    ldh [rP1], a
    ret nz

    ld a, [bc]
    add b
    nop
    nop
    ld d, l
    nop
    nop
    rst $38
    rst $38
    inc h
    rst $38
    rst $38
    nop
    rrca
    nop
    rlca
    and b
    inc bc
    nop
    ld bc, $0154
    nop
    rst $38
    cp $93
    cp $a7
    dec e
    and h
    inc e
    and l
    ld e, $06
    ld h, h
    jr nz, jr_024_6a25

    ld h, $a5
    ld e, $bf
    ccf
    rst $38
    rst $38
    ld a, a
    ld b, c
    ccf
    cp a
    inc h
    sbc e
    ccf
    cp a
    add hl, hl
    sub [hl]
    nop
    add b
    ld b, $4c
    jr nz, jr_024_6adb

    inc h
    rst $38
    rst $38
    sbc a
    ld b, b
    ld a, [$60e0]
    and b
    ld a, [hl-]
    jr nz, @-$04

    ldh [$93], a
    cp $93
    sub d
    rst $38
    cp $ff
    nop
    xor e
    nop
    ld bc, $ab00
    nop
    xor e
    nop
    ld b, $e0
    inc b
    rst $30
    ld [$04fb], sp

jr_024_6adb:
    cp $01
    ld d, l
    xor d
    ld b, $f0
    inc b
    ld b, $e4
    nop
    db $fd
    ld [bc], a
    xor a
    ld d, b
    ld b, $b8
    ld [hl+], a
    db $fd
    ld [bc], a
    cp e
    ld b, h
    rst $18
    jr nz, @+$57

    xor d
    ld l, d
    sub l
    xor l
    ld d, d
    rst $18
    jr nz, jr_024_6b74

    add [hl]
    db $dd
    ld [hl+], a
    sbc a
    ld h, b
    xor d
    ld d, l
    push de
    ld a, [hl+]
    rst $18
    jr nz, jr_024_6b2d

    ld h, $dd
    db $dd
    ld e, c
    ld e, c
    and d
    and d
    and l
    and l
    ld [de], a
    ld [de], a
    ld d, l
    ld d, l
    xor b
    xor b
    sub d
    sub d
    ld l, c
    ld l, c
    ld b, $e4
    ld h, $49
    ld c, c
    scf
    scf
    jr z, jr_024_6b4b

    ld b, $e4
    inc h
    push de
    ld d, l
    add sp, $28
    ld b, $e0
    add hl, hl

jr_024_6b2d:
    ld d, h
    xor e
    xor b
    ld b, $a0
    rra
    ld c, l
    ldh a, [rIF]
    rst $28
    db $10
    ret nc

    cpl
    add b
    ld b, c
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $f00f
    rst $20
    add sp, -$0d
    ld [hl], h
    ld [hl], l

jr_024_6b4b:
    or d
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l
    ld b, b
    or c
    ld b, a
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    xor [hl]
    ld c, l
    rst $08
    ld l, $e7
    rla
    ldh a, [rIF]
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    ld bc, $0b82
    db $f4
    rst $30
    ld [$f00f], sp

jr_024_6b74:
    ld b, $20
    ccf
    ld c, l
    ld b, $1f
    ld c, a
    ld c, l
    ld b, $7f
    ld c, a
    ld c, l
    ld b, $df
    ld c, a
    ld c, l
    ld b, $3f
    ld e, a
    ld c, l
    ld b, $9f
    ld e, a
    ld c, l
    ld b, $ff
    ld e, a
    ld c, l
    ld b, $5f
    ld l, a
    ld c, l
    ld b, $bf
    ld l, a
    ld c, l
    ld b, $1f
    ld a, a
    ld c, l
    ld b, $7f
    ld a, a
    ld c, l
    ld b, $df
    ld a, a
    dec c
    nop
    ld [bc], a
    add hl, de
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld l, $2f
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    nop
    nop
    nop
    ld bc, $0100
    rst $38
    add hl, de
    inc d
    rlca
    inc l
    dec l
    inc l
    dec l
    add hl, de
    dec b
    inc bc
    ld sp, $2019
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    add hl, de
    inc d
    ld [$2020], sp
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    nop
    nop
    add hl, de
    ld c, b
    ld [bc], a
    jr nz, jr_024_6bfa

    add hl, de
    inc d
    ld [$2121], sp
    inc l
    dec l
    jr nc, @+$1b

    add hl, hl
    inc bc
    add hl, de
    ld l, b
    ld [bc], a
    ld hl, $1921
    inc [hl]
    ld a, [bc]
    add hl, de
    ld b, b
    nop
    add hl, de
    ld c, b
    ld [$5219], sp
    inc c
    add hl, de
    ld h, b
    nop
    add hl, de

jr_024_6bfa:
    ld l, b
    ld [$7219], sp
    ld c, $19
    add b
    inc b
    add hl, de
    ret nz

    inc b
    add hl, de
    sub h
    inc c
    add hl, de
    and b
    inc b
    add hl, de
    ldh [rDIV], a
    add hl, de
    or h
    ld c, $04
    dec b
    add hl, de
    nop
    nop
    ld d, $17
    add hl, de
    adc $0f
    dec b
    ld b, $07
    add hl, de
    jr nz, jr_024_6c21

jr_024_6c21:
    jr jr_024_6c36

    add hl, de
    xor $0e
    nop
    ld bc, $8019
    nop
    ld b, $08
    ld [hl+], a
    inc hl
    inc h
    dec h
    inc d
    inc de
    add hl, de
    adc $0e

jr_024_6c36:
    ld [bc], a
    inc bc
    add hl, de
    ld [hl+], a
    ld de, $2609
    daa
    jr z, jr_024_6c69

    dec d
    add hl, de
    dec l
    rra
    ld [bc], a
    add hl, de
    ld b, b
    db $10
    ld a, [bc]
    dec bc
    ld c, $0f
    ld c, $0f
    db $10
    ld de, $4e19
    rra
    ld bc, $6019
    db $10
    inc c
    dec c
    add hl, de
    and a
    ld de, $1912
    ld l, [hl]
    rra
    inc bc
    add hl, de
    ld b, b
    ld [de], a
    add hl, de
    ret nz

    ld [bc], a
    add hl, de
    db $10

jr_024_6c69:
    inc c
    add hl, de
    jr nc, jr_024_6c6d

jr_024_6c6d:
    add hl, de
    ld h, b
    ld [de], a
    add hl, de
    ldh [rSC], a
    add hl, de
    jr nc, jr_024_6c82

    nop
    ld [bc], a
    add hl, de
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld l, $2f
    add hl, de
    inc b
    ld [bc], a

jr_024_6c82:
    add hl, de
    nop
    nop
    nop
    ld bc, $0100
    rst $38
    add hl, de
    inc d
    rlca
    inc l
    dec l
    inc l
    dec l
    add hl, de
    dec b
    inc bc
    ld sp, $2019
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    add hl, de
    inc d
    ld [$2020], sp
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    nop
    nop
    add hl, de
    ld c, b
    ld [bc], a
    jr nz, jr_024_6ccc

    add hl, de
    inc d
    ld [$2121], sp
    inc l
    dec l
    jr nc, @+$1b

    add hl, hl
    inc bc
    add hl, de
    ld l, b
    ld [bc], a
    ld hl, $1921
    inc [hl]
    ld a, [bc]
    add hl, de
    ld b, b
    nop
    add hl, de
    ld c, b
    ld [$5219], sp
    inc c
    add hl, de
    ld h, b
    nop
    add hl, de

jr_024_6ccc:
    ld l, b
    ld [$7219], sp
    ld c, $19
    add b
    inc b
    add hl, de
    ret nz

    inc b
    add hl, de
    sub h
    inc c
    add hl, de
    and b
    inc b
    add hl, de
    ldh [rDIV], a
    add hl, de
    or h
    ld c, $04
    dec b
    nop
    ld bc, $3938
    ld d, $17
    add hl, de
    adc $0f
    dec b
    ld b, $07
    ld [bc], a
    inc bc
    ld a, [hl-]
    dec sp
    jr jr_024_6d0a

    add hl, de
    xor $0e
    nop
    ld bc, $8019
    nop
    ld b, $08
    ld [hl+], a
    inc hl
    inc h
    dec h
    inc d
    inc de
    add hl, de
    adc $0e

jr_024_6d0a:
    ld [bc], a
    inc bc
    add hl, de
    ld [hl+], a
    ld de, $2609
    daa
    jr z, jr_024_6d3d

    dec d
    add hl, de
    dec l
    rra
    ld [bc], a
    add hl, de
    ld b, b
    db $10
    ld a, [bc]
    dec bc
    ld c, $0f
    ld c, $0f
    db $10
    ld de, $4e19
    rra
    ld bc, $6019
    db $10
    inc c
    dec c
    add hl, de
    and a
    ld de, $1912
    ld l, [hl]
    rra
    inc bc
    add hl, de
    ld b, b
    ld [de], a
    add hl, de
    ret nz

    ld [bc], a
    add hl, de
    db $10

jr_024_6d3d:
    inc c
    add hl, de
    jr nc, jr_024_6d41

jr_024_6d41:
    add hl, de
    ld h, b
    ld [de], a
    add hl, de
    ldh [rSC], a
    add hl, de
    jr nc, jr_024_6d56

    nop
    ld [$aa12], sp
    xor d
    ld e, l
    ld e, l
    xor d
    xor [hl]
    ld e, e
    ld e, a
    or l

jr_024_6d56:
    or c
    ld l, c
    ld h, l
    cp e
    and a
    ld a, c
    ld h, l
    xor d
    xor d
    ld d, l
    ld d, l

Call_024_6d61:
    ld [de], a
    db $10
    ld b, $d5
    push de
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    sub a
    rst $30
    sbc h
    db $fc
    sbc b
    ld hl, sp-$09
    rst $30
    ld [de], a
    jr nz, jr_024_6d7d

    jp hl


    rst $28
    add hl, sp
    ccf

jr_024_6d7d:
    add hl, de
    rra
    adc a
    adc a
    rst $38
    rst $38
    jp hl


    jp hl


    call $efcd
    rst $28
    cp a
    cp a
    add a
    add a
    call z, $dbcc
    db $db
    rst $38
    rst $38
    cp a
    cp a
    sbc l
    sbc l
    add hl, bc
    add hl, bc
    add hl, de
    add hl, de
    cp e
    cp e
    rst $38
    rst $38
    rst $28
    rst $28
    ld h, c
    sub b
    di
    ld b, $f2
    rlca
    ld [hl+], a
    res 0, e
    ld c, e
    add c
    ld d, c
    inc bc
    db $d3
    inc bc
    and e
    sbc $21
    sbc $21
    add $39
    ld de, $7bee
    add h
    dec sp
    call nz, $a659
    ret nz

    ccf
    sbc b
    sbc b
    ld h, e
    ld h, [hl]
    ld [de], a
    ld h, h
    ld [$f6f6], sp
    sbc e
    adc e
    pop bc
    add hl, sp
    ld de, $79ed
    add l
    add hl, sp
    rst $00
    ld e, d
    and [hl]
    jp nz, $123e

    db $10
    ld [bc], a
    rst $38
    rst $38
    rst $38
    sub d
    sub d
    sub d
    rst $38
    rst $38
    sub b
    ldh a, [rNR12]
    and b
    dec b
    ld c, c
    ld c, c
    ld c, c
    rst $38
    rst $38
    add hl, bc
    rrca
    xor d
    xor d
    ld d, a
    ld d, a
    xor a
    xor a
    ld [de], a
    ld [de], a
    ld b, $2a
    ld a, [hl+]
    ld d, l
    ld d, l
    and b
    and b
    ld b, b
    ld b, b
    and b
    and b
    dec d
    dec d
    ld a, [bc]
    ld a, [bc]
    dec d
    dec d
    ld [de], a
    stop
    add b
    add b
    nop
    nop
    add b
    add b
    ld [de], a
    ld [de], a
    nop
    ld d, b
    ld d, b
    xor d
    xor d
    ld e, a
    ld e, a
    cp a
    cp a
    ld e, a
    ld e, a
    ld [de], a
    db $10
    inc b
    cp c
    and l
    ld [hl], c
    ld l, c
    and b
    cp b
    ld h, c
    ld e, c
    ret nz

    db $fc
    ret nz

    ld hl, sp-$13
    db $ed
    ld [de], a
    or $00
    call $8ccd
    sbc h
    call nz, $c4dc
    call c, $dcc0
    db $ec
    db $ec
    rra
    rra
    rlca
    rlca
    db $10
    db $10
    ld [de], a
    db $10
    ld [$0000], sp
    ld b, b
    ld b, b
    xor [hl]
    xor [hl]
    ld e, a
    ld e, a
    ld [de], a

jr_024_6e50:
    ret c

    inc b
    ld [hl], e
    ld [hl], e
    jr c, jr_024_6e8e

    xor h
    xor h
    ld e, $1e
    inc c
    inc c
    ld b, b
    ld b, b
    xor c
    xor c
    ld d, h
    ld d, h
    ld e, a
    ld e, a
    ccf
    ccf
    nop
    nop
    inc e
    inc e
    ld a, $3e
    inc e
    inc e

jr_024_6e6e:
    and d
    and d
    ld d, c
    ld d, c
    inc bc
    inc hl
    ld c, a
    ld l, a
    call $cdcd
    call $cfcf
    rst $38
    rst $38
    rst $18
    ld e, a
    ld a, [hl]
    rst $38
    rst $38
    jr jr_024_6e50

    inc c
    rr h
    rst $08
    ld l, h
    adc $4d
    sbc $df

jr_024_6e8e:
    rst $28
    xor $3c
    rst $38
    and d
    and d
    ld e, l
    ld e, l
    xor d
    cp d
    dec a
    dec l
    and $d6
    ld b, a
    ld [hl], a
    ld [hl], h
    ld [hl], h
    db $fc
    db $fc
    db $fc
    jr jr_024_6e6e

    rrca
    ret


    rra
    call $cd6f
    ld c, l
    rst $18
    rst $18
    rst $28
    rst $28
    dec a
    rst $38
    ld [de], a
    db $10
    ld a, [bc]
    ld [de], a
    ld [de], a
    ld [$5151], sp
    ld [de], a
    call nc, $1202
    ld [de], a
    ld [bc], a
    add d
    add d
    ld bc, $8201
    add d
    ld [de], a
    ld [de], a
    ld [bc], a
    and d
    and d
    ld bc, $a201
    and d
    ld [de], a
    ld [de], a
    ld b, $a2
    and d
    ld b, b
    ld b, b
    ld [de], a
    db $10
    ld [bc], a
    ld [de], a
    xor $00
    ld d, l
    ld d, l
    xor [hl]
    xor [hl]
    ld [de], a
    ld [de], a
    ld b, $61
    sbc [hl]
    db $fd
    ld [bc], a
    cp $01
    ld a, $c1
    sbc a
    ld h, b
    cp a

Call_024_6eee:
    ld b, b
    ld e, $e1
    ld c, c
    or [hl]
    ld [de], a
    ld [hl], b
    inc c
    rrca
    rrca
    jr jr_024_6f12

    jr jr_024_6f17

    ld [hl], d
    ld [hl], l
    jp $8fdc


    or b
    sbc [hl]
    and c
    adc c
    or [hl]
    rst $38
    rst $38
    ret nz

    pop hl
    nop
    inc de
    ld de, $1bae
    db $e4
    ld [de], a
    ld a, d

jr_024_6f12:
    ld [bc], a
    ldh [$e0], a
    ld c, [hl]
    ld e, [hl]

jr_024_6f17:
    sub b
    ld l, a
    ld [de], a
    ld b, $26
    ld [de], a
    jr nc, jr_024_6f4e

    dec c
    jp c, Jump_000_08da

    ld l, b
    add [hl]
    db $76
    inc bc
    di
    ld h, e
    sbc a
    ld sp, $71cd
    adc c
    db $e3
    rra
    or b
    rst $08
    cp h
    jp $a699


    set 6, h
    add c
    sbc [hl]
    add a
    adc b
    adc a
    or b
    and h
    db $db
    rst $28
    db $10
    rst $20
    jr @+$65

    sbc h
    ld [$bdf7], sp
    ld b, d
    sbc l
    ld h, d
    inc c
    di

jr_024_6f4e:
    ret nz

    ccf
    ld [de], a
    nop
    inc l
    ld [de], a
    sub b
    cpl
    dec c
    jp nz, $d122

    ld hl, $9412
    nop
    ld [hl], c
    adc c
    inc bc
    ei
    ld b, a
    and a
    pop bc
    add hl, sp
    ld h, h
    sbc b
    inc sp
    ret z

    pop de
    ld h, $c3
    ld l, $74
    sbc l
    or a
    ld e, c
    ret z

    dec sp
    pop hl
    inc d
    ld e, a
    ld h, b
    sbc [hl]
    ld d, c
    ld c, h
    xor e
    and c

jr_024_6f7d:
    sub $7e
    ld c, c
    dec l
    jp z, Jump_024_74fb

    daa
    ld a, b
    ld [hl], e
    adc h
    rst $30
    ld [$08f7], sp
    ld [hl], a
    adc b
    rlca
    ld hl, sp-$6f
    ld l, [hl]
    adc $31
    ld b, $f9
    rst $30
    ld [$0cf3], sp
    ei
    inc b
    ei
    inc b
    ld a, [$f805]
    rlca
    di
    inc c
    nop
    rst $38
    or e
    call z, $e897
    add l
    cp d
    add e
    sbc h
    add a
    adc b
    add c
    xor [hl]
    adc [hl]
    pop hl
    add [hl]
    ld [de], a
    rrca
    dec a
    ld [de], a
    nop
    ccf
    dec c
    ld [de], a
    nop
    inc a
    di
    dec bc
    pop hl
    dec e
    ld sp, hl
    ld bc, $2dd1
    pop hl
    add hl, de
    ld sp, hl
    ld bc, $0df1
    ld bc, $f3fd
    adc h
    rst $30
    adc b
    rst $30
    adc b
    rst $20
    ret c

    jp $90f8


    ld [c], a
    call c, $fffc
    rst $38
    rst $00
    jr c, jr_024_6f7d

    ld h, h
    cp e
    ld b, h
    cp l
    ld b, d
    inc h
    db $d3
    ld b, h
    db $e3
    ld l, e
    ld l, l
    rst $38
    ld [de], a
    ccf
    dec [hl]
    inc b
    ld sp, hl
    sub b
    ld c, c
    jr nz, jr_024_701f

    db $f4
    db $f4
    ld [de], a
    sub b
    ccf
    dec c
    pop af
    add hl, bc
    ld [de], a
    ld [hl], d
    ld [hl-], a
    ld h, e
    sbc a
    rlca
    rst $38
    rrca
    rst $08
    rst $30
    rst $30
    ld a, [c]
    ld a, [bc]
    rst $08
    nop
    ld d, e
    call nz, Call_024_5524

Call_024_7012:
    db $76
    ld hl, sp-$74
    ld a, l
    ld [hl], c
    adc a
    xor $11
    ret nz

    rst $38
    call $dd32

jr_024_701f:
    ld [hl+], a
    rst $00
    ld [$ddea], sp
    pop hl
    ld c, $8b
    cp h
    inc sp
    db $fc
    rst $38
    rst $38
    ldh [$e0], a
    ret nz

    rst $08
    add d
    cp l
    inc bc
    inc a
    ld [de], a
    ld a, [hl+]
    ld [hl+], a
    inc sp
    inc c
    sub a
    xor b
    dec b
    ld a, [hl-]
    ld [de], a
    ld h, $33

Jump_024_7040:
    and c
    add [hl]
    sbc c
    and h
    sbc b
    or e
    adc b
    sub c
    and [hl]
    jp $b4ee


    sbc l
    rst $30
    reti


    adc b
    cp e
    and c
    sub h
    add e

jr_024_7054:
    jp $e2e9


    jp nc, Jump_024_7bea

    ld a, h
    add [hl]
    cp $d8
    rst $00
    cp $f9
    adc $ce
    rst $38
    rst $38
    db $db
    ldh [$71], a
    add [hl]
    ld h, e
    adc [hl]
    inc [hl]
    db $dd
    or a
    ld e, c
    xor b
    ld e, e
    add c
    ld [hl], h
    xor $ee
    sub e
    ld e, e
    ld c, c
    xor l
    and c
    push de
    ld a, c
    ld c, l
    add hl, hl
    rst $08
    di
    ld a, a
    inc hl
    ld a, a
    ld a, [c]
    ld a, [bc]
    ld c, l
    add d
    ld [de], a
    db $e4
    jr c, jr_024_7054

    push af
    db $dd
    inc hl
    xor c
    ld d, l
    jp nz, $ea0e

    sbc $e2
    ld c, $89
    cp l
    ld sp, $90ff
    ldh a, [rP1]
    nop
    xor d
    ld d, l
    ld [$ab15], a
    ld d, h
    xor [hl]
    ld d, c
    cp d
    ld b, l
    xor d
    ld d, l
    add hl, bc
    rrca
    ld [de], a
    add d
    ld b, b
    ld [de], a
    sub h
    ld b, b
    xor [hl]
    ld d, c
    ld [$ea15], a
    dec d
    xor d

jr_024_70b9:
    ld d, l
    xor e
    ld d, h
    cp d
    ld b, l
    xor [hl]
    ld d, c
    ld [de], a
    add h
    ld b, b
    ld [de], a
    sub h
    ld b, h
    ld [de], a
    sub h
    ld b, h
    ld [de], a
    adc h
    ld b, b
    ld [de], a
    xor b
    ld b, d
    cp [hl]
    ld b, c
    xor d
    ld d, l
    ld [de], a
    and [hl]
    ld [bc], a
    ld [de], a
    xor d
    ld b, d
    ld [$ae15], a
    ld d, c
    ld [de], a
    or [hl]
    ld [bc], a
    ld [de], a
    ldh [rIE], a
    dec c
    ld [de], a
    ld b, b
    jr nz, jr_024_7107

    pop hl
    ld hl, $00de
    add e
    ld a, b
    ld a, c
    db $fc
    db $fd
    db $fd
    call nz, Call_024_7012
    jr nz, jr_024_70b9

    sbc $e3
    rst $28
    db $eb
    ld h, a
    push hl
    ld l, c
    push hl
    ld l, c
    rst $00
    set 0, h
    cp c
    add b
    ld h, d
    adc [hl]

jr_024_7107:
    ld c, l
    sbc h
    ld e, d
    sbc h
    ld e, d
    ld e, h
    sbc e
    ld e, $dd
    rrca
    xor $07
    dec de
    adc l
    ld [hl], l
    db $fd
    adc l
    db $fd
    db $fd
    ld a, c
    ld a, c
    ld bc, $1105
    db $ed
    pop hl
    dec e
    ld [de], a
    and b
    rst $38
    ld c, l
    ld [de], a
    sbc a
    ld e, a
    ld c, l
    ld [de], a
    rst $38
    ld e, a
    ld c, l
    ld [de], a
    ld e, a
    ld l, a
    ld c, l
    ld [de], a
    cp a
    ld l, a
    ld c, l
    ld [de], a
    rra
    ld a, a
    ld c, l
    ld [de], a
    ld a, a
    ld a, a
    ld c, l
    ld [de], a
    rst $18
    ld a, a
    dec c
    nop
    ld [bc], a
    ld e, $0e
    dec de
    nop
    ld bc, $0e0f
    ld a, [de]
    jr jr_024_715a

    ld c, $1a
    ld c, $0f
    ld a, [de]
    jr jr_024_7163

    ld a, [de]
    ld a, [de]
    ld c, $1a
    rst $38

jr_024_715a:
    ld e, $14
    rlca
    inc c
    dec c
    db $10
    ld de, $0f1a

jr_024_7163:
    ld e, $10
    nop
    rrca
    ld c, $0e
    ld a, [de]
    rrca
    dec e
    rrca
    ld c, $1c
    dec c
    ld e, $14
    ld [$0f1e], sp
    nop
    dec e
    ld a, [de]
    ld c, $1b
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld a, [de]
    ld a, [de]
    nop
    ld bc, $181a
    ld e, $14
    ld [$1a1c], sp
    inc e
    ld a, [de]
    rrca
    dec de
    ld c, $0f
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld a, [de]
    dec c
    db $10
    ld de, $0f0f
    ld e, $14
    ld [$180f], sp
    ld a, [de]
    rrca
    jr @+$1e

    ld [hl+], a
    inc hl
    ld b, $07
    jr nz, jr_024_71cd

    jr nz, jr_024_71cf

    ld [$0e09], sp
    inc e
    ld a, [de]
    inc c
    ld e, $14
    ld [$0b0a], sp
    ld a, [bc]
    dec bc
    inc e
    dec c
    ld [hl-], a
    inc sp
    ld d, $17
    jr nc, jr_024_71f4

    jr nc, jr_024_71f6

    ld d, $19
    ld a, [de]
    dec c
    inc e
    ld e, $73
    add hl, bc

jr_024_71cd:
    ld c, b
    ld c, c

jr_024_71cf:
    ld c, b
    ld c, c
    ld b, b
    inc hl
    ld e, $8a
    nop
    ld e, $c6
    ld [bc], a
    ld b, h
    ld b, l
    ld c, $1c
    ld e, $14
    ld [$4b4a], sp
    ld c, d
    ld c, e
    ld b, c
    inc sp
    ld e, $aa
    nop
    ld e, $e6
    ld [bc], a
    ld b, [hl]
    ld b, a
    ld e, $32
    ld a, [bc]
    ld e, $e0
    nop

jr_024_71f4:
    ld b, d
    cpl

jr_024_71f6:
    ld e, $c6
    ld b, $2c
    dec l
    ld e, $12
    ld a, [bc]
    ld c, h
    ld c, l
    ld c, h
    ld c, l
    ld b, e
    ccf
    ld e, $e6
    ld b, $3c
    dec a
    ld e, $b2
    ld a, [bc]
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    jr z, jr_024_723d

    ld l, $2f
    jr nz, jr_024_7239

    ld b, $07
    inc l
    dec l
    inc b
    dec b
    inc e
    dec de
    ld e, $14
    ld [$1312], sp
    ld [de], a
    inc de
    inc d
    dec d
    jr c, jr_024_7264

    ld a, $3f
    jr nc, @+$33

    ld d, $17
    inc a
    dec a
    inc d
    dec d
    ld a, [de]
    ld c, $1e
    inc [hl]

jr_024_7239:
    add hl, bc
    rrca
    ld c, $1b

jr_024_723d:
    jr jr_024_725a

    ld e, $44
    db $10
    ld a, [hl+]
    dec hl
    ld e, $4e
    db $10
    rrca
    ld e, $11
    dec bc
    dec c
    dec c
    ld a, [de]
    rrca
    ld a, [de]
    dec c
    ld e, $64
    db $10
    ld a, [hl-]
    dec sp
    ld e, $6e
    db $10
    inc e

jr_024_725a:
    dec c
    ld e, $92
    ld a, [bc]
    nop
    ld bc, $1d0d
    rrca
    dec de

jr_024_7264:
    ld c, $1b
    inc b
    dec b
    ld e, $c8
    db $10
    ld c, $18
    dec c
    ld c, $00
    ld bc, $141e
    ld [$221e], sp
    ld bc, $181d
    ld c, $14
    dec d
    ld e, $e8
    db $10
    ld c, $0d
    jr jr_024_729d

    db $10
    ld de, $b41e
    jr jr_024_7289

jr_024_7289:
    ld [bc], a
    ld e, $0e
    dec de
    nop
    ld bc, $0e0f
    ld a, [de]
    jr jr_024_72a0

    ld c, $1a
    ld c, $0f
    ld a, [de]
    jr jr_024_72a9

    ld a, [de]
    ld a, [de]

jr_024_729d:
    ld c, $1a
    rst $38

jr_024_72a0:
    ld e, $14
    rlca
    inc c
    dec c
    db $10
    ld de, $0f1a

jr_024_72a9:
    ld e, $10
    nop
    rrca
    ld c, $0e
    ld a, [de]
    rrca
    dec e
    rrca
    ld c, $1c
    dec c
    ld e, $14
    ld [$0f1e], sp
    nop
    dec e
    ld a, [de]
    ld c, $1b
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld d, b
    ld d, c
    ld a, [de]
    ld a, [de]
    nop
    ld bc, $181a
    ld e, $14
    ld [$1a1c], sp
    inc e
    ld a, [de]
    rrca
    dec de
    ld c, $0f
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld d, d
    ld d, e
    ld a, [de]
    dec c
    db $10
    ld de, $0f0f
    ld e, $14
    ld [$180f], sp
    ld a, [de]
    rrca
    jr @+$1e

    ld [hl+], a
    inc hl
    ld b, $07
    jr nz, jr_024_7313

    jr nz, jr_024_7315

    ld [$0e09], sp
    inc e
    ld a, [de]
    inc c
    ld e, $14
    ld [$0b0a], sp
    ld a, [bc]
    dec bc
    inc e
    dec c
    ld [hl-], a
    inc sp
    ld d, $17
    jr nc, jr_024_733a

    jr nc, jr_024_733c

    ld d, $19
    ld a, [de]
    dec c
    inc e
    ld e, $73
    add hl, bc

jr_024_7313:
    ld c, b
    ld c, c

jr_024_7315:
    ld c, b
    ld c, c
    ld b, b
    inc hl
    ld e, $8a
    nop
    ld e, $c6
    ld [bc], a
    ld b, h
    ld b, l
    ld c, $1c
    ld e, $14
    ld [$4b4a], sp
    ld c, d
    ld c, e
    ld b, c
    inc sp
    ld e, $aa
    nop
    ld e, $e6
    ld [bc], a
    ld b, [hl]
    ld b, a
    ld e, $32
    ld a, [bc]
    ld e, $e0
    nop

jr_024_733a:
    ld b, d
    cpl

jr_024_733c:
    ld e, $c6
    ld b, $2c
    dec l
    ld e, $12
    ld a, [bc]
    ld c, h
    ld c, l
    ld c, h
    ld c, l
    ld b, e
    ccf
    ld e, $e6
    ld b, $3c
    dec a
    ld e, $b2
    ld a, [bc]
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    jr z, jr_024_7383

    ld l, $2f
    jr nz, jr_024_737f

    ld b, $07
    inc l
    dec l
    inc b
    dec b
    inc e
    dec de
    ld e, $14
    ld [$1312], sp
    ld [de], a
    inc de
    inc d
    dec d
    jr c, jr_024_73aa

    ld a, $3f
    jr nc, @+$33

    ld d, $17
    inc a
    dec a
    inc d
    dec d
    ld a, [de]
    ld c, $1e
    inc [hl]

jr_024_737f:
    add hl, bc
    rrca
    ld c, $1b

jr_024_7383:
    jr jr_024_73a0

    ld e, $44
    db $10
    ld a, [hl+]
    dec hl
    ld e, $4e
    db $10
    rrca
    ld e, $11
    dec bc
    dec c
    dec c
    ld a, [de]
    rrca
    ld a, [de]
    dec c
    ld e, $64
    db $10
    ld a, [hl-]
    dec sp
    ld e, $6e
    db $10
    inc e

jr_024_73a0:
    dec c
    ld e, $92
    ld a, [bc]
    nop
    ld bc, $1d0d
    rrca
    dec de

jr_024_73aa:
    ld c, $1b
    inc b
    dec b
    ld e, $c8
    db $10
    ld c, $18
    dec c
    ld c, $00
    ld bc, $141e
    ld [$221e], sp
    ld bc, $181d
    ld c, $14
    dec d
    ld e, $e8
    db $10
    ld c, $0d
    jr jr_024_73e3

    db $10
    ld de, $b41e
    jr jr_024_73cf

jr_024_73cf:
    ld [$0116], sp
    add [hl]
    inc bc
    inc c
    rlca
    jr @+$11

    jr nc, jr_024_73f9

    ld h, b
    ld a, $c1
    ld a, h
    add e
    ld hl, sp+$07
    ldh a, [rIF]

jr_024_73e3:
    ldh [$1f], a
    ret nz

    ld a, $80
    ld a, h
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    pop hl
    nop
    jp $dd91


    sub c
    sub c
    rst $38
    rst $38
    add b
    add b

jr_024_73f9:
    add a
    rst $30
    db $fc
    db $fc
    sbc e
    sbc e
    sbc a
    rst $38
    ld de, $11dd
    ld de, $ffff
    nop
    nop
    ldh a, [$f7]
    rra
    rra
    ld l, h
    ld l, h
    ld a, h
    ld a, a
    sub b
    ldh a, [rNR21]
    inc h
    nop
    add b
    add b
    add b
    rst $38
    add b
    add b
    xor d
    xor d
    rst $38
    rst $38
    add h
    add a
    ld d, $34
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    ld d, $4c

jr_024_742d:
    nop
    ld d, $30
    ld [bc], a
    rrca
    cpl
    jr c, jr_024_742d

    or $f6

jr_024_7437:
    ld a, $3e
    ld a, $fe
    ld d, $30
    ld [bc], a
    pop hl
    jp hl


    add hl, sp
    ccf
    rst $18
    rst $18
    db $fd
    db $fd
    ld sp, hl
    ei
    ld d, $30
    ld [bc], a
    inc hl
    inc hl
    ld b, $df
    cp $ff
    ld c, $0f
    ld c, $16
    cpl
    inc bc
    ret nz

    ret nz

    ld h, b
    ld a, a
    ld a, a
    ld a, a
    ld [hl], h
    ld [hl], h
    ld [hl], b
    ld a, e
    ld c, $16
    adc c
    ld bc, $0f0f
    ld d, $58
    inc b
    ld [hl], b
    ld a, a
    ld a, a
    ld a, a
    ld [hl], b
    ld [hl], b
    ldh a, [$f0]
    ld d, $58
    ld a, [bc]
    jr nz, jr_024_7497

    rlca
    rst $10
    ei
    ld hl, sp+$0c
    rrca
    ld [$1508], sp
    call nc, Call_000_1415
    db $fd
    db $fc
    dec h
    inc h
    db $fd
    db $fc
    rst $38
    nop
    ld bc, $01fe
    nop
    ld sp, $31bd
    or c
    ccf
    cp a
    jr nz, jr_024_7437

jr_024_7497:
    ccf
    cp a
    rst $38
    ld d, $57
    nop
    add b
    ld d, $30
    ld [bc], a
    ld hl, $e121
    rst $28
    rst $18
    ccf
    ld [hl-], a
    ld a, [c]
    db $10
    dec e
    ld d, $10
    inc c
    ld d, $00
    inc c
    rst $38
    rst $38
    sub a
    sub a
    sub l
    push af
    push af
    rst $30
    sub l
    sub l
    sub l
    rst $30
    ld d, $20
    db $10
    ld d, $9a
    nop
    ld d, h
    ld d, a
    ld d, a
    ld [hl], a
    ld d, h
    ld d, h
    ld d, h
    ld [hl], a
    ld d, $9a
    nop
    ccf
    rst $38
    ld d, $52
    ld a, [bc]
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld bc, $5416
    db $10
    rst $38
    ld bc, $ab01
    xor e
    rst $38
    rst $38
    xor $ee
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    xor $ea
    ld [$2e2a], a
    ld a, $fe
    xor $ee
    ld hl, $ef21
    rst $28
    xor c
    xor c
    xor c
    rst $28
    xor a
    xor a
    xor l

Jump_024_74fb:
    db $ed
    ld sp, hl
    ei
    rst $28
    rst $28
    add hl, bc
    add hl, bc
    ld hl, sp-$01
    jr z, jr_024_752f

    ld d, $a0
    ld [bc], a
    ld c, $ff
    ld d, $80
    db $10
    rra
    rst $38
    db $10

jr_024_7511:
    db $10
    ld d, $b0
    nop
    ld d, $9c
    nop
    ld d, $90
    db $10
    ld [bc], a
    db $fc
    ld d, $a0
    inc d
    inc bc
    ei
    db $fd
    dec b
    db $fd
    ld d, $a1
    dec d
    ld [bc], a
    db $fc
    jp nz, $bedc

    and b
    ccf

jr_024_752f:
    cp a
    rst $30
    rst $30
    jr nz, jr_024_7554

    nop
    rst $18
    rst $38
    rst $38
    inc b
    inc b
    nop
    ei
    ld d, $c4
    nop
    ld d, $d4
    nop
    dec b
    call c, $fcfd
    dec b
    inc b
    dec b
    db $fc
    ld d, $d4
    nop
    ld d, $e4
    nop
    jr nz, jr_024_7511

    ccf
    cp a

jr_024_7554:
    inc h
    and h
    jr nz, @-$43

    ld d, $e4
    nop
    rst $28
    rst $28
    ld d, $c2
    ld a, [de]
    ld d, $20
    ld [bc], a
    and b
    and b
    add b
    rst $18
    rst $38
    rst $38
    add h
    add h
    add b
    ld d, $7f
    inc bc
    ld d, $c2
    ld d, $16
    ldh a, [rDIV]
    ld bc, $ffdf
    rst $38
    dec b
    dec b
    ld bc, $16fb
    ld [$1620], sp
    ld b, h
    ld [$c416], sp
    db $10
    ld d, $54
    ld [$2816], sp
    jr nz, jr_024_75a3

    ld d, h
    jr @+$01

    rst $38
    ld a, a
    ld b, b
    rst $18
    cp a
    ldh [$bf], a
    rst $20
    cp b
    and b
    ret nz

    sbc a
    and b
    ld b, b
    ret nz

    rst $38
    rst $38
    cp $02

jr_024_75a3:
    ei
    db $fd
    rlca
    db $fd
    rst $20
    dec e
    dec b
    inc bc
    ld sp, hl
    dec b
    inc bc
    inc bc
    ld d, $60
    ld a, [hl+]
    ret nz

    ld d, $6f
    dec hl
    ld [bc], a
    inc bc
    inc [hl]
    pop de
    ld [hl], h
    sub c

jr_024_75bc:
    db $f4
    ld de, $a416
    jr nz, jr_024_7616

    or c
    or h
    ld d, c
    ld [hl], h
    sub c
    xor [hl]
    add hl, bc
    xor [hl]
    add hl, bc
    xor h
    dec bc
    xor d
    dec c
    xor d
    dec c
    xor a
    ld [$08af], sp
    xor [hl]
    add hl, bc
    nop
    rst $38
    ld h, b
    sbc a
    ld e, c
    and l
    ld h, $de
    jr z, jr_024_75bc

    ld d, c
    cp [hl]
    ld b, d
    xor e
    ld [hl], $d7
    rra
    rst $38
    db $76
    ld [hl], c
    sbc b
    add [hl]
    inc hl
    db $db
    add $27
    adc b
    ld l, a
    call nz, Call_024_4337
    cp a
    rst $28
    ldh a, [$5f]
    sbc a
    ld [$c478], sp
    db $dd
    cp a
    cp a
    add d
    add d
    adc a
    adc a
    ldh a, [rIE]
    ld hl, sp+$08
    db $f4
    db $fc
    ld b, e
    ld [hl], e
    adc a
    xor $5b
    ld e, h
    sbc e
    call c, $ce0d
    rlca

jr_024_7616:
    rst $00
    ld d, $04
    jr z, jr_024_7631

    inc b
    jr nz, jr_024_7634

    inc d
    jr z, jr_024_7637

    call nz, Call_000_1600
    inc h
    jr z, jr_024_763d

    db $f4
    nop
    rst $38
    rst $38
    add d
    db $fc
    ld d, $32
    jr c, @+$01

jr_024_7631:
    rst $38
    ld d, $a0

jr_024_7634:
    ld d, $16
    and b

jr_024_7637:
    db $10
    ld d, $32
    ld a, [hl-]
    add d
    db $fc

jr_024_763d:
    ccf
    rst $38
    ei
    jp z, Jump_000_2f34

    inc h
    dec l
    ld [de], a
    ei
    ld [de], a
    rla
    or h
    or c
    db $f4
    pop af
    db $fd
    rst $38
    rst $18
    ld d, e
    dec l
    push af
    dec h
    or l
    ret


    ld e, a
    ret


    ld l, c
    xor e
    dec bc
    xor a
    rrca
    cp a
    rst $38
    ei
    jp z, $afb4

    and h
    xor l
    sub d
    ei
    sub d
    sub a

jr_024_7669:
    ld d, $6c
    jr nc, jr_024_7669

    rst $38
    rst $18
    ld d, e
    inc l
    db $f4
    inc h
    or h
    ret z

    ld e, a
    ret z

    ld l, b
    xor d
    ld a, [bc]
    xor a
    rrca
    ldh a, [$35]
    add sp, $69
    rst $20
    or a
    rst $10
    sbc b
    and b
    ret nc

    sbc a
    and b
    ld b, b
    ld b, b
    cp a
    ccf
    adc l
    ld l, $17
    sub [hl]
    rst $20
    db $ed
    db $eb
    add hl, de
    dec b
    dec bc
    ld sp, hl
    dec b
    ld [bc], a
    ld [bc], a
    db $fd
    db $fc
    add hl, sp
    rst $18
    ld d, d
    cp [hl]
    ld b, h
    cp l
    ld a, b
    ei
    ret nc

    rst $10
    ld h, b
    ld l, a
    ld c, a
    ld c, a
    ld [hl], b
    ld [hl], b
    nop
    rst $38
    add b
    cp b
    ld b, b
    ld e, b
    ld bc, $0209
    add e
    inc b
    add $f8
    db $fd
    ld [$000a], sp
    db $fc
    inc bc
    inc bc
    inc a
    ccf
    ret nz

    cp $00
    push af
    nop
    xor e
    ld bc, $1655

Jump_024_76cb:
    inc [hl]
    nop
    ld d, $52
    inc bc
    ld d, $56
    nop
    rst $38
    nop
    nop
    rra
    db $10
    cpl
    ccf
    jp nz, $f1ce

    ld [hl], a
    jp c, $d93a

    dec sp
    or b
    ld [hl], e
    ldh [$e3], a
    rst $30
    rrca
    ld a, [$10f9]
    ld e, $23
    cp e
    db $fd
    db $fd
    ld b, c
    ld b, c
    pop af
    pop af
    rrca
    rst $38
    ld hl, sp-$01
    ld l, [hl]
    adc [hl]
    add hl, de
    ld h, c
    call nz, Call_024_63db
    db $e4
    ld de, $23f6
    db $ec
    db $c2, $fd, $00

    rst $38
    ld b, $f9
    sbc d
    and l
    ld h, h
    ld a, e
    inc d
    db $db
    adc d
    ld a, l
    ld b, d
    push de
    ld l, h
    db $eb
    ld [hl], b
    ld [hl], e
    ld d, c
    ld d, d
    ld c, h
    ld c, l
    ld b, e
    ld b, e
    ld b, b
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    ld b, d
    ld b, e
    ld b, e
    dec bc
    rst $28
    rst $28
    rra
    ld c, [hl]
    cp [hl]
    ld h, $56
    sub d
    xor d
    cp e
    rst $00
    nop
    jr c, @+$01

    rst $38
    ret nc

    rst $30
    rst $30
    ld hl, sp+$72
    ld a, l
    ld h, h
    ld l, d
    ld c, c
    ld d, l
    db $dd
    db $e3
    nop
    inc e
    rst $38
    rst $38
    ld c, $ce
    adc d
    ld c, d
    ld [hl-], a
    or d
    jp nz, $02c2

    ld [bc], a
    add d
    add d
    ld b, d
    ld b, d
    jp nz, $1fc2

    rst $18
    ld h, b
    ld l, a
    or b
    xor a
    ld d, $84
    ld b, [hl]
    db $fd
    db $fc
    dec [hl]
    db $f4
    ld d, l
    call nc, $d757
    ld d, b
    rst $10
    ld e, a
    rst $18
    ld b, b
    rst $08
    ld a, a
    rst $38
    ccf
    cp a
    inc l
    xor a
    ld a, [hl+]
    xor e
    ld [$0aeb], a
    db $eb
    ld a, [$02fb]
    di
    cp $ff
    ld hl, sp-$05
    ld b, $f6
    dec c
    push af
    ld d, $b4
    ld b, [hl]
    nop
    cp $6c

jr_024_778b:
    sub d
    ld d, c
    xor h
    ld hl, $25dc
    call nc, $b952
    ld h, [hl]
    or c
    jr nz, jr_024_778b

jr_024_7798:
    nop
    rst $38
    call z, $3333
    ld c, h
    add b
    ld a, a
    and b
    cpl
    ret z

    rra
    ld h, h
    adc a
    inc d
    rst $18
    nop
    cp $30
    adc $cd
    jr nc, jr_024_77b0

    db $fc

jr_024_77b0:
    dec b
    db $f4
    ld [de], a
    ld sp, hl
    ld h, $f1
    ld d, $ce
    ld b, b
    ld [hl], $c9
    ld e, d
    dec h
    add h
    ld a, e
    and h
    dec hl
    jp z, Jump_024_661d

    adc l
    inc d
    rst $18
    ld d, $f0
    inc a
    nop
    ccf
    ret nz

    ret nz

    inc a
    db $fc
    inc bc
    ld a, a
    nop
    xor a
    nop
    push de
    add b
    ld d, $3d
    jr nz, @+$01

    ld bc, $021d
    ld a, [de]
    add b
    sub b
    ld b, b
    pop bc
    jr nz, @+$65

    rra
    cp a
    db $10
    ld d, b
    sbc h
    ei
    ld c, d
    ld a, l
    ld [hl+], a
    cp l
    ld e, $df
    dec bc
    db $eb
    ld b, $f6
    ld a, [c]
    ld a, [c]
    ld c, $0e
    ld b, b
    ld b, b
    ld b, a
    ld b, a
    ld b, h
    ld b, h
    ld b, h
    ld b, a
    ld b, a
    ld b, a
    ld b, b
    ld b, b
    ld d, $5e
    jr nz, jr_024_7798

    cp a
    add e
    cp e
    ld d, $1e
    ld d, b
    ld d, $ee
    ld [hl-], a
    rst $38
    rst $38
    pop af
    db $fd
    pop bc
    db $dd
    ld d, $54

jr_024_781a:
    ld e, b
    ld [bc], a
    ld [bc], a
    ld [c], a
    ld [c], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [c], a
    ld [c], a
    ld [c], a
    ld [bc], a
    ld [bc], a
    ld d, $5e
    jr nz, jr_024_782e

    db $fd
    ld d, $80

jr_024_782e:
    ld e, d
    ld d, $42
    ld a, [hl-]
    ld [bc], a
    db $fc
    nop
    rst $38
    ld l, h
    sub e
    ld d, e
    xor h
    jr nz, jr_024_781a

    inc h
    push de
    ld d, c
    cp d
    ld h, d
    or l
    inc hl
    ldh a, [rP1]
    rst $38
    inc sp

jr_024_7847:
    call z, Call_000_33cc
    nop
    cp $04
    push af
    ld de, $22fa
    push af
    inc hl
    ldh a, [rNR12]
    sbc $58
    cp e
    ld b, a
    or a
    inc c
    db $ec
    inc d
    push de
    inc de
    sbc e
    ld c, b
    adc e
    daa
    rst $00
    ld c, b
    ld a, e
    jr jr_024_7847

    ldh [$ef], a
    jr nc, jr_024_78a3

    jr z, @-$53

    ret z

    reti


    db $10
    db $d3
    ldh [$e7], a
    ld [de], a
    sbc $18
    ei
    rlca
    rst $30
    ld d, $c6
    ld d, d
    ld [$07cb], sp
    rst $20
    ld c, b
    ld a, e
    ld a, [de]
    db $dd
    ld [c], a
    db $ed
    inc [hl]
    inc sp
    ld d, $d8
    ld d, b
    ld [de], a
    pop de
    db $e4
    db $e3
    ld d, $42

jr_024_7892:
    jr c, jr_024_7892

    nop
    ld d, $30
    ld a, [hl-]
    cp $80
    ld d, $7c
    ld e, [hl]
    ld d, $40
    jr c, jr_024_78b7

    inc c
    ld h, b

jr_024_78a3:
    ld d, $24
    ld l, c
    ld bc, $ffff
    add b
    add e
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rlca
    ldh a, [$f0]

jr_024_78b7:
    ld d, $1e
    ld d, b
    ld d, $60
    ld h, a
    nop

jr_024_78be:
    rst $38
    rst $38
    ld bc, $00c1
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh [rIF], a
    rrca
    ld d, $5e
    jr nz, jr_024_78e8

    ld d, d
    ld bc, $5716
    ld d, l
    jr nz, @-$1f

    ld b, b
    cp a
    ld b, b
    cp a
    jr nz, jr_024_78be

    ld d, $90
    ld h, h
    inc b
    ei
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd

jr_024_78e8:
    inc b
    ei
    ld d, $a0
    ld h, h
    ld d, $90
    ld h, b
    ld c, h
    or e
    inc a
    jp $d728


    ld e, c
    and [hl]
    ld h, [hl]
    sbc c
    nop
    rst $38
    ld d, $a0
    ld h, b
    ld [hl-], a

jr_024_7900:
    call $c33c
    inc d
    db $eb
    sbc d
    ld h, l
    ld d, $bc
    ld h, b
    ld d, $60
    ld h, [hl]
    sbc c
    ld h, [hl]
    ld d, $cc
    ld l, d
    ld d, $60
    ld h, d
    add c
    ld a, [hl]
    ld b, d
    cp l
    inc d
    db $eb
    jr z, @-$27

    ld d, $f4
    ld h, b
    ld b, d
    cp l
    add c
    ld a, [hl]
    inc a
    jp $827d


    ld sp, hl
    ld b, $e3
    inc e
    ld b, a
    cp b
    sub e
    ld l, h
    cp c
    ld b, [hl]
    ld a, h
    add e
    add [hl]
    ld a, c
    db $ec
    inc de
    ld a, [c]
    dec c
    or $09
    rst $28
    db $10
    rst $18
    jr nz, jr_024_7900

    ld b, b
    rra
    ldh [$7e], a
    add c
    ld d, $20
    ld [hl], b
    cp b
    ld b, a
    sub e
    ld l, h
    pop bc
    ld a, $ac
    ld d, e
    ld a, $c1
    ld l, [hl]
    sub c
    db $f4
    dec bc
    pop af
    ld c, $f7
    ld [$18e7], sp
    rst $28
    db $10
    adc a
    ld [hl], b
    ccf
    ret nz

    ld d, $bf
    rst $38
    ld l, $ff
    rrca
    ldh a, [rNR10]
    rst $28
    nop
    pop bc
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $ff00
    ldh [$ef], a
    ldh a, [rPCM34]
    ld [hl], h
    or e
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l
    ld b, b
    or c
    ld b, a
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld l, $cd
    rrca
    xor $07
    rst $30
    nop
    rst $38
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    nop
    add e
    ld [$f0f7], sp
    ld d, $a7
    ld bc, $c116
    ld a, a
    dec hl
    nop
    ld [bc], a
    ld e, d
    nop
    ld bc, $0100
    dec [hl]
    ld e, c
    ld h, b
    ld h, b
    ld h, b
    ld a, [de]
    dec de
    ld h, b
    ld h, b
    ld h, b
    ld e, c
    ld e, b
    ld e, d
    nop
    nop
    rst $38
    ld e, d
    inc d
    rlca
    db $10
    ld de, $1110
    dec [hl]
    ld e, b
    ld [$0c09], sp
    dec c
    ld c, $0f
    ld [$3509], sp
    ld e, b
    ld e, d
    jr nz, jr_024_79d7

jr_024_79d7:
    ld e, d
    inc d
    ld [$0100], sp
    inc sp
    inc [hl]
    ld h, b
    ld h, b
    jr jr_024_79fb

    inc e
    dec e
    ld e, $1f
    jr jr_024_7a01

    ld h, c
    ld h, b
    inc [hl]
    ld h, d
    ld e, d
    ld [de], a
    inc c
    dec [hl]
    ld e, b
    ld hl, $0a22
    dec bc
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld a, [bc]
    dec bc

jr_024_79fb:
    jr nz, jr_024_7a1e

    ld e, d
    ld l, $00
    ld e, d

jr_024_7a01:
    inc d
    ld [$425a], sp
    nop
    ld sp, $2c32
    dec l
    ld l, $2f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    jr nc, jr_024_7a43

    ld e, d
    ld c, [hl]
    nop
    ld e, d
    inc d
    ld [$625a], sp
    nop
    inc h
    dec h
    inc a

jr_024_7a1e:
    dec a
    ld a, $3f
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    inc hl
    inc h
    ld e, d
    ld l, [hl]
    nop
    ld e, d
    sub h
    ld a, [bc]
    ld h, $27
    ld c, h
    ld c, l
    ld b, h
    ld b, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld b, [hl]
    ld b, a
    ld c, [hl]
    ld c, a
    jr z, jr_024_7a66

    ld e, d
    or d
    inc c
    ld [hl], $37
    ld e, h

jr_024_7a43:
    ld e, l
    ld d, h
    ld d, l
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld d, [hl]
    ld d, a
    ld e, [hl]
    ld e, a
    jr c, jr_024_7a89

    ld e, d
    or d
    inc c
    ld a, [hl+]
    dec hl
    ld l, c
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld e, d
    ld b, $11
    ld l, [hl]
    ld l, d
    ld a, [hl+]
    dec hl
    ld e, d
    or d
    inc c
    ld a, [hl-]
    dec sp

jr_024_7a66:
    ld l, c
    ld e, d
    ld b, $10
    ld l, a
    ld l, a
    ld e, d
    rlca
    db $10
    ld l, d
    ld a, [hl-]
    dec sp
    ld e, d
    or d
    ld a, [bc]
    ld e, d
    ld c, [hl]
    nop
    ld e, d
    inc b
    jr jr_024_7aaf

    inc [hl]
    ld h, b
    ld h, h
    ld e, d
    inc d
    ld [$0302], sp
    dec [hl]
    ld e, b
    ld l, e
    ld l, l
    ld e, d

jr_024_7a89:
    ld h, l
    dec d
    ld l, h
    dec [hl]
    ld e, b
    ld b, $07
    ld e, d
    inc d
    ld [$1312], sp
    ld e, d
    ld c, [hl]
    nop
    ld [hl], b
    ld [hl], c
    ld e, d
    add [hl]
    ld [de], a
    ld e, d
    ld d, b
    db $10
    ld d, $17
    ld e, d
    inc d
    ld [$0504], sp
    ld e, d
    ld h, b
    db $10
    ld [hl], d
    ld [hl], e
    ld e, d
    and [hl]
    ld [de], a

jr_024_7aaf:
    ld e, d
    ld [hl], b
    db $10
    inc d
    dec d
    ld e, d
    inc [hl]
    ld a, [bc]
    ld e, d
    add b
    db $10
    ld h, e
    ld e, d
    add $13
    ld e, d
    sub b
    db $10
    ld e, d
    ld [de], a
    inc c
    inc b
    dec b
    jr nz, jr_024_7ae9

    ld e, d
    push hl
    dec d
    ld [hl+], a
    inc d
    dec d
    ld e, d
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    ld e, d
    nop
    ld bc, $0100
    dec [hl]
    ld e, c
    ld h, b
    ld h, b
    ld h, b
    ld a, [de]
    dec de
    ld h, b
    ld h, b
    ld h, b
    ld e, c
    ld e, b
    ld e, d
    nop
    nop
    rst $38
    ld e, d

jr_024_7ae9:
    inc d
    rlca
    db $10
    ld de, $1110
    dec [hl]
    ld e, b
    ld [$0c09], sp
    dec c
    ld c, $0f
    ld [$3509], sp
    ld e, b
    ld e, d
    jr nz, jr_024_7afe

jr_024_7afe:
    ld e, d
    inc d
    ld [$0100], sp
    inc sp
    inc [hl]
    ld h, b
    ld h, b
    jr jr_024_7b22

    inc e
    dec e
    ld e, $1f
    jr jr_024_7b28

    ld h, c
    ld h, b
    inc [hl]
    ld h, d
    ld e, d
    ld [de], a
    inc c
    dec [hl]
    ld e, b
    ld hl, $0a22
    dec bc
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld a, [bc]
    dec bc

jr_024_7b22:
    jr nz, jr_024_7b45

    ld e, d
    ld l, $00
    ld e, d

jr_024_7b28:
    inc d
    ld [$425a], sp
    nop
    ld sp, $2c32
    dec l
    ld l, $2f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    jr nc, jr_024_7b6a

    ld e, d
    ld c, [hl]
    nop
    ld e, d
    inc d
    ld [$625a], sp
    nop
    inc h
    dec h
    inc a

jr_024_7b45:
    dec a
    ld a, $3f
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    inc hl
    inc h
    ld e, d
    ld l, [hl]
    nop
    ld e, d
    sub h
    ld a, [bc]
    ld h, $27
    ld c, h
    ld c, l
    ld b, h
    ld b, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld b, [hl]
    ld b, a
    ld c, [hl]
    ld c, a
    jr z, jr_024_7b8d

    ld e, d
    or d
    inc c
    ld [hl], $37
    ld e, h

jr_024_7b6a:
    ld e, l
    ld d, h
    ld d, l
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld d, [hl]
    ld d, a
    ld e, [hl]
    ld e, a
    jr c, jr_024_7bb0

    ld e, d
    or d
    inc c
    ld a, [hl+]
    dec hl
    ld l, c
    ld l, [hl]
    ld a, b
    ld a, c
    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, d
    ld a, [hl+]
    dec hl
    ld e, d
    or d
    inc c

jr_024_7b8d:
    ld a, [hl-]
    dec sp
    ld l, c
    ld l, [hl]
    ld a, d
    ld a, e
    ld l, [hl]
    ld l, a
    ld l, a
    ld e, d
    ld a, [bc]
    db $10
    ld l, d
    ld a, [hl-]
    dec sp
    ld e, d
    or d
    ld a, [bc]
    ld e, d
    ld c, [hl]
    nop
    ld l, c
    ld l, [hl]
    ld e, d
    add hl, bc
    ld de, $0b5a
    ld de, $3433
    ld h, b
    ld h, h
    ld e, d
    inc d

jr_024_7bb0:
    ld [$0302], sp
    dec [hl]
    ld e, b
    ld l, e
    ld l, l
    ld e, d
    ld h, l
    dec d
    ld l, h
    dec [hl]
    ld e, b
    ld b, $07
    ld e, d
    inc d
    ld [$1312], sp
    ld e, d
    ld c, [hl]
    nop
    ld [hl], b
    ld [hl], c
    ld e, d
    add [hl]
    ld [de], a
    ld e, d
    ld d, b
    db $10
    ld d, $17
    ld e, d
    inc d
    ld [$0504], sp
    ld e, d
    ld h, b
    db $10
    ld [hl], d
    ld [hl], e
    ld e, d
    and [hl]
    ld [de], a
    ld e, d
    ld [hl], b
    db $10
    inc d
    dec d
    ld e, d
    inc [hl]
    ld a, [bc]
    ld e, d
    add b
    db $10
    ld h, e

Jump_024_7bea:
    ld e, d
    add $13
    ld e, d
    sub b
    db $10
    ld e, d
    ld [de], a
    inc c
    inc b
    dec b
    jr nz, jr_024_7c18

    ld e, d
    push hl
    dec d
    ld [hl+], a
    inc d
    dec d
    ld e, d
    ld [hl-], a
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_024_7c18:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_024_7ecc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
