; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01e", ROMX[$4000], BANK[$1e]

    ld e, $34
    nop
    xor l
    ld b, c
    ld c, [hl]
    ld bc, $4212
    ld l, b
    ld [bc], a
    ld e, a
    ld b, d
    inc [hl]
    nop
    add d
    ld b, d
    ld c, [hl]
    ld bc, $42a3
    inc [hl]
    nop
    call nz, Call_01e_4e42
    ld bc, $43e1
    ld l, b
    ld [bc], a
    or h
    ld b, h
    nop
    nop
    add e
    ld b, l
    ld a, [de]
    ld bc, $45a4
    inc [hl]
    nop
    push bc
    ld b, l
    ld c, [hl]
    ld bc, $45d8
    ld l, b
    ld [bc], a
    rst $38
    ld b, l
    inc [hl]
    nop
    jr jr_01e_407f

    ld c, [hl]
    ld bc, $4679
    ld l, b
    ld [bc], a
    jp nc, $0046

    nop
    dec l
    ld b, a
    ld a, [de]
    ld bc, $474a
    nop
    nop
    ld h, a
    ld b, a
    ld a, [de]
    ld bc, $4786
    inc [hl]
    nop
    and l
    ld b, a
    ld c, [hl]
    ld bc, $47d8
    inc [hl]
    nop
    dec bc
    ld c, b
    ld c, [hl]
    ld bc, $484e
    nop
    nop
    sub c
    ld c, b
    ld a, [de]
    ld bc, $48be
    nop
    inc bc
    jp hl


    ld c, b
    nop
    nop
    inc c
    ld c, c
    nop
    nop
    and h
    ld c, c
    nop
    nop
    or a
    ld c, c
    nop
    nop
    jp z, $0049

    inc bc

jr_01e_407f:
    rst $10
    ld c, c
    nop
    nop
    db $e4
    ld c, c
    ld a, [de]
    ld bc, $4a01
    nop
    nop
    adc d
    ld c, d
    nop
    nop
    sub l
    ld c, d
    nop
    nop
    sbc h
    ld c, d
    nop
    nop
    and e
    ld c, d
    inc [hl]
    nop
    call nz, Call_01e_4e4a
    ld bc, $4b0b
    nop
    nop
    and [hl]
    ld c, e
    nop
    inc bc
    or e
    ld c, e
    inc [hl]
    nop
    add $4b
    ld c, [hl]
    ld bc, $4d11
    ld l, b
    inc bc
    ld h, h
    ld c, [hl]
    nop
    nop
    ld [hl], l
    ld c, [hl]
    nop
    nop
    and h
    ld c, [hl]
    nop
    inc bc
    pop bc
    ld c, [hl]
    nop
    nop
    sub $4e
    nop
    inc bc
    db $ed
    ld c, [hl]
    nop
    nop
    ld [bc], a
    ld c, a
    ld a, [de]
    ld bc, $4f2f
    nop
    nop
    ld e, h
    ld c, a
    nop
    inc bc
    ld [hl], l
    ld c, a
    nop
    inc bc
    add h
    ld c, a
    nop
    inc bc
    sbc a
    ld c, a
    nop
    nop
    or d
    ld c, a
    nop
    nop
    pop bc
    ld c, a
    nop
    nop
    cp $4f
    nop
    nop
    add hl, de
    ld d, b
    nop
    nop
    ld [hl-], a
    ld d, b
    nop
    nop
    xor b
    ld d, b
    ld a, [de]
    inc bc
    cp $50
    nop
    nop
    inc c
    ld d, c
    ld a, [de]
    inc bc
    and h
    ld d, c
    nop
    nop
    or d
    ld d, c
    ld a, [de]
    inc bc
    adc h
    ld d, d
    nop
    nop
    sbc d
    ld d, d
    nop
    inc bc
    sub b
    ld d, e
    nop
    nop
    or h
    ld d, e
    ld a, [de]
    inc bc
    and $53
    nop
    inc bc
    ld a, [hl+]
    ld d, h
    nop
    inc bc
    ld b, h
    ld d, h
    nop
    nop
    ld l, h
    ld d, h
    nop
    inc bc
    ld a, [c]
    ld d, h
    nop
    inc bc
    ld e, $55
    nop
    inc bc
    ld [hl], $55
    nop
    inc bc
    ld d, b
    ld d, l
    nop
    ld bc, $556c
    nop
    nop
    add h
    ld d, l
    ld a, [de]
    ld bc, $5598
    nop
    inc bc
    xor h
    ld d, l
    nop
    inc bc
    ret nc

    ld d, l
    nop
    nop
    and $55
    ld a, [de]
    inc bc
    ld a, [de]
    ld d, a
    nop
    inc bc
    ld a, [hl+]
    ld d, a
    nop
    inc bc
    ld b, b
    ld d, a
    nop
    inc bc
    ld l, b
    ld d, a
    nop
    inc bc
    sub h
    ld d, a
    nop
    nop
    call nz, $1a57
    inc bc
    ld c, h
    ld e, b
    nop
    inc bc
    ld h, d
    ld e, b
    nop
    inc bc
    ld [hl], h
    ld e, b
    nop
    inc bc
    sub b
    ld e, b
    nop
    inc bc
    or h
    ld e, b
    nop
    inc bc
    sub $58
    nop
    nop
    ld [bc], a
    ld e, c
    ld a, [de]
    inc bc
    ld b, b
    ld e, c
    nop
    nop
    ld d, [hl]
    ld e, c
    ld a, [de]
    inc bc
    jp z, $0059

    inc bc
    db $e4
    ld e, c
    nop
    inc bc
    db $fc
    ld e, c
    inc [hl]
    nop
    ld l, $5a
    ld c, [hl]
    ld bc, $5b5e
    inc [hl]
    nop
    ld d, h
    ld e, h
    ld c, [hl]
    ld bc, $5f53
    ld l, b
    ld [bc], a
    add $62
    inc b
    nop
    rrca
    nop
    pop bc
    cpl
    inc h
    ld a, [bc]
    and b
    ld b, $24
    inc b
    and b
    rrca
    inc h
    inc b
    inc h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    inc h
    ld [$0824], sp
    inc h
    ld [$0822], sp
    ld [hl+], a
    ld [$0822], sp
    inc h
    ld b, $14
    ld b, $15
    ld b, $17
    ld b, $19
    ld b, $1b
    ld b, $20
    ld b, $22
    ld b, $24
    ld c, $a0
    ld b, $24
    inc c
    and b
    rrca
    dec hl
    inc c
    dec hl
    dec c
    dec hl
    rrca
    jp Jump_000_3440


    inc b
    scf
    inc bc
    inc [hl]
    inc bc
    scf
    inc bc
    or e
    db $fc

jr_01e_41fb:
    inc h
    nop
    and b
    dec c
    inc [hl]
    inc bc
    scf
    inc bc
    or e
    db $fc
    add hl, hl
    nop
    inc [hl]
    inc bc
    scf
    ld [bc], a
    pop bc
    ld a, a
    and b
    ld b, $34
    jr @+$01

    inc b
    nop
    rrca
    nop
    pop bc
    cpl
    daa
    ld a, [bc]
    and b
    ld b, $27
    inc b
    and b
    rrca
    daa
    inc b
    daa
    ld [$0829], sp
    add hl, hl
    ld [$0829], sp
    daa
    ld [$0827], sp
    daa
    ld [$0825], sp
    dec h
    ld [$0825], sp
    daa
    ld b, $20
    ld b, $22
    ld b, $24
    ld b, $25
    ld b, $27
    ld b, $29
    ld b, $2b
    ld b, $30
    ld c, $a0
    ld b, $30
    inc c
    and b
    rrca
    scf
    inc c
    scf
    dec c
    scf
    rrca
    pop bc
    cp $40
    ld d, h
    pop bc
    jr nc, jr_01e_41fb

    ld b, $40
    jr @+$01

    inc b
    rst $38
    ld [bc], a
    inc bc
    jr nz, jr_01e_42c7

    and b
    inc b
    jr nz, @+$1a

    rra
    ld e, c
    and b
    ld [bc], a
    and d
    jr nc, @-$5d

    add hl, bc
    jr nz, jr_01e_4282

    rla
    rrca
    jr nz, jr_01e_4286

    rla
    rrca
    and d
    rst $38
    jr nz, @+$1a

    and b
    ld b, $20
    jr @+$01

jr_01e_4282:
    add hl, bc
    ld [bc], a
    rrca
    nop

jr_01e_4286:
    pop bc
    ld h, b
    inc h
    inc b
    inc d
    inc bc
    dec d
    inc bc
    rla
    inc bc
    add hl, de
    inc bc
    dec de
    inc bc
    jr nz, @+$05

    ld [hl+], a
    inc bc
    jp nz, $2415

    ld b, $2b
    ld b, $c1
    rra
    inc [hl]
    inc c
    rst $38
    add hl, bc
    ld [bc], a
    rrca
    nop
    pop bc
    ld h, b
    daa
    inc b
    jr nz, jr_01e_42b0

    ld [hl+], a
    inc bc
    inc h

jr_01e_42b0:
    inc bc
    dec h
    inc bc
    daa
    inc bc
    add hl, hl
    inc bc
    dec hl
    inc bc
    jp nz, $3015

    ld b, $37
    ld b, $c1
    rra
    ld b, b
    inc c
    rst $38
    dec b
    nop
    dec c

jr_01e_42c7:
    nop
    and b
    rrca
    inc h
    inc b
    and b
    dec c
    inc d
    inc bc
    dec d
    inc bc
    rla
    inc bc
    add hl, de
    inc bc
    dec de
    inc bc
    jr nz, jr_01e_42dd

    ld [hl+], a
    inc bc
    and b

jr_01e_42dd:
    rrca
    inc h
    inc bc
    and b
    dec c
    jr nz, jr_01e_42e7

    ld [hl+], a
    inc bc
    inc h

jr_01e_42e7:
    inc bc
    dec h
    inc bc
    daa
    inc bc
    add hl, hl
    inc bc
    dec hl
    inc bc
    and b
    rrca
    jr nc, jr_01e_42f7

    and b
    dec c
    inc h

jr_01e_42f7:
    inc bc
    dec h
    inc bc
    daa
    inc bc
    add hl, hl
    inc bc
    dec hl
    inc bc
    jr nc, jr_01e_4305

    ld [hl-], a
    inc bc
    and b

jr_01e_4305:
    rrca
    inc [hl]
    inc bc
    and b
    dec c
    inc h
    inc bc
    dec h
    inc bc
    daa
    inc bc
    and b
    rrca
    add hl, hl
    inc bc
    dec hl
    inc bc
    jr nc, jr_01e_431b

    ld [hl-], a
    inc bc
    pop bc

jr_01e_431b:
    cpl
    inc h
    ld a, [bc]
    and b
    ld b, $24
    inc b
    and b
    rrca
    inc h
    inc b
    inc h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    inc h
    ld [$0824], sp
    inc h
    ld [$0822], sp
    ld [hl+], a
    ld [$0822], sp
    and b
    dec c
    pop bc
    cpl
    inc h
    add hl, bc
    and b
    ld b, $24
    inc b
    and b
    rrca
    inc h
    inc b
    inc h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    inc h
    ld [$0824], sp
    inc h
    ld [$0822], sp
    ld [hl+], a
    ld [$0822], sp
    and b
    dec bc
    inc h
    ld [$0820], sp
    inc h
    ld [$0827], sp
    inc h
    ld [$0827], sp
    jr nc, jr_01e_4374

    daa
    ld [$0830], sp
    inc [hl]
    ld [$0830], sp

jr_01e_4374:
    inc [hl]
    ld [$0da0], sp
    pop bc
    cpl
    jr c, jr_01e_4387

    and b

jr_01e_437d:
    ld b, $c1
    rra
    jr c, jr_01e_4386

    and b
    rrca
    jr c, jr_01e_438a

jr_01e_4386:
    pop bc

jr_01e_4387:
    cpl
    jr c, jr_01e_4392

jr_01e_438a:
    inc [hl]
    add hl, bc
    inc [hl]
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    inc sp
    dec bc

jr_01e_4392:
    inc sp
    inc c
    inc sp
    dec c
    dec [hl]
    ld c, $35
    rrca
    dec [hl]
    db $10
    jp Jump_000_3440


    inc b
    scf
    inc b
    inc [hl]
    inc bc
    scf
    inc bc
    inc [hl]
    inc bc
    scf
    inc bc
    inc [hl]
    inc bc
    scf
    inc bc
    or [hl]
    db $fc
    ld [hl], c
    nop
    inc [hl]
    inc bc
    scf
    inc bc
    inc [hl]
    inc b
    scf
    inc bc
    inc [hl]
    inc bc
    scf
    inc bc
    inc [hl]
    inc bc
    scf
    inc bc
    inc [hl]
    inc bc
    scf
    inc bc
    inc [hl]
    inc bc
    scf
    inc bc
    inc [hl]
    inc bc
    scf
    inc bc
    inc [hl]
    inc bc
    scf
    inc bc
    inc [hl]
    inc bc
    scf
    inc b
    pop bc
    ld h, b
    and b
    add hl, bc
    inc [hl]
    jr jr_01e_437d

    inc bc
    inc [hl]
    jr @+$01

    dec b
    nop
    rrca
    nop
    daa
    inc b
    jr nz, jr_01e_43ec

    ld [hl+], a
    inc bc
    inc h

jr_01e_43ec:
    inc bc
    dec h
    inc bc
    daa
    inc bc
    add hl, hl
    inc bc
    dec hl
    inc bc
    jr nc, jr_01e_43fa

    inc h
    inc bc
    dec h

jr_01e_43fa:
    inc bc
    daa
    inc bc
    add hl, hl
    inc bc
    dec hl
    inc bc
    jr nc, jr_01e_4406

    ld [hl-], a
    inc bc
    inc [hl]

jr_01e_4406:
    inc bc
    daa
    inc bc
    add hl, hl
    inc bc
    dec hl
    inc bc
    jr nc, jr_01e_4412

    ld [hl-], a
    inc bc
    inc [hl]

jr_01e_4412:
    inc bc
    dec [hl]
    inc bc
    scf
    inc bc
    jr nc, jr_01e_441c

    ld [hl-], a
    inc bc
    inc [hl]

jr_01e_441c:
    inc bc
    dec [hl]
    inc bc
    scf
    inc bc
    add hl, sp
    inc bc
    dec sp
    inc bc
    pop bc

jr_01e_4426:
    cpl
    daa
    ld a, [bc]
    and b
    ld b, $27
    inc b
    and b
    rrca
    daa
    inc b
    daa

jr_01e_4432:
    ld [$0829], sp
    add hl, hl
    ld [$0829], sp
    daa
    ld [$0827], sp
    daa
    ld [$0825], sp
    dec h
    ld [$0825], sp
    and b
    dec c
    pop bc
    cpl
    daa
    add hl, bc
    and b
    ld b, $27
    inc b
    and b
    rrca
    daa
    inc b
    daa
    ld [$0829], sp
    add hl, hl
    ld [$0829], sp
    daa
    ld [$0827], sp
    daa
    ld [$0825], sp
    dec h
    ld [$0825], sp
    and b
    dec bc
    pop bc
    jr z, jr_01e_4493

    ld [$0824], sp
    daa
    ld [$0830], sp
    daa
    ld [$0830], sp
    inc [hl]
    ld [$0830], sp
    inc [hl]
    ld [$0837], sp
    inc [hl]
    ld [$0837], sp
    pop bc
    jr nz, jr_01e_4426

    dec c
    ld b, b
    dec bc
    and b
    ld b, $c1
    rra
    ld b, b
    inc b
    pop bc
    jr z, jr_01e_4432

    rrca

jr_01e_4493:
    ld b, b
    inc b
    ld b, b
    ld [$2fc1], sp
    scf
    add hl, bc
    scf
    ld a, [bc]
    scf
    ld a, [bc]
    jr c, jr_01e_44ac

    jr c, jr_01e_44af

    jr c, jr_01e_44b2

    ld a, [hl-]
    ld c, $3a
    rrca
    ld a, [hl-]
    db $10
    ret nz

jr_01e_44ac:
    cp $40
    sbc e

jr_01e_44af:
    pop bc
    ld [hl], b
    ld b, b

jr_01e_44b2:
    jr nc, @+$01

    dec b
    rst $38
    ld [bc], a
    inc bc
    jr nz, jr_01e_4503

    and b
    inc b
    jr nz, jr_01e_44d6

    and b
    ld [bc], a
    ld d, b
    inc b
    ld d, d
    inc b
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a

jr_01e_44d6:
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    or d
    db $fc
    ld [de], a
    nop
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d

jr_01e_4503:
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    or e
    db $fc
    jr nz, jr_01e_4510

jr_01e_4510:
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    or d
    db $fc
    ld l, $00
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, d
    ld bc, $10a2
    ld b, e
    dec bc
    and b
    ld b, $43
    inc b
    and b
    ld [bc], a
    ld b, e
    inc b
    and d
    rra
    ld b, e
    ld [$0940], sp
    ld b, b
    ld a, [bc]
    ld b, b
    ld a, [bc]
    ld b, b
    dec bc
    ld b, b
    inc c
    ld b, b

jr_01e_455f:
    dec c
    ld b, d
    ld c, $42
    rrca
    ld b, d
    db $10
    and c
    dec bc
    and d
    ld b, b
    jr nz, @+$13

    rla
    ld de, $1120
    rla
    ld de, $1220
    rla
    ld [de], a
    jr nz, jr_01e_4590

    rla
    dec de
    and d
    ld d, b
    jr nz, @+$1a

    and b
    ld b, $20
    jr @+$01

    inc b
    ld [bc], a
    ld c, $00
    pop bc
    ld d, b
    ld [hl], $0c
    dec [hl]
    inc c
    inc [hl]
    inc c
    ld [hl-], a

jr_01e_4590:
    inc c
    jp nz, $3015

    dec c
    ld h, $0d
    pop bc
    ld a, a
    and b
    dec c
    ld [hl], $18
    and b
    ld b, $c1
    jr nc, jr_01e_45d8

    jr @+$01

    inc b
    ld [bc], a
    rrca
    nop
    pop bc
    ld d, b
    ld b, d
    inc c
    ld b, c
    inc c
    ld b, b
    inc c
    dec sp
    inc c
    jp nz, $3915

    dec c
    ld [hl-], a
    dec c
    pop bc
    ld a, a
    and b
    ld c, $42
    jr jr_01e_455f

    rlca
    pop bc
    jr nc, jr_01e_4605

jr_01e_45c3:
    jr @+$01

    dec b
    nop
    inc c
    nop
    rra
    ld b, b
    ret nz

    cp $29
    ld b, b
    daa
    ld b, b
    and b
    ld [$70c1], sp
    daa
    jr nc, @+$01

jr_01e_45d8:
    dec b
    nop
    rrca

jr_01e_45db:
    nop
    and b
    inc b
    rra
    db $10
    inc d
    db $10
    rla
    db $10
    jr nz, @+$12

    and b
    dec c
    ret nz

    cp $30
    inc a
    and b
    dec b
    pop bc
    jr nz, jr_01e_4621

    inc b
    and b
    dec c
    ret nz

    cp $30
    ld b, b
    and b
    ld [$70c1], sp
    jr nc, @+$32

    rst $38
    dec b
    rst $38
    ld [bc], a
    inc c
    inc h
    db $10

jr_01e_4605:
    daa
    db $10
    jr nc, @+$12

    inc [hl]
    db $10
    dec [hl]
    jr nz, @+$34

    jr nz, @+$36

    ld b, b
    and d
    ld b, b
    and b
    inc b
    inc [hl]
    jr nz, @+$01

    ld bc, $0f00
    nop
    pop bc
    ld h, b
    dec d
    ld [de], a
    pop bc

jr_01e_4621:
    jr nc, jr_01e_45c3

    ld c, $29
    ld de, $1029
    jr nc, jr_01e_4639

    jr nc, @+$10

    ld a, [hl+]
    ld c, $2a
    ld c, $29
    ld c, $a0
    rrca
    pop bc
    ld h, b
    ld [hl+], a
    rrca
    pop bc

jr_01e_4639:
    jr nc, jr_01e_45db

    ld c, $29
    rrca
    add hl, hl
    ld c, $29
    ld c, $29
    ld c, $26
    ld c, $26
    ld c, $26
    ld c, $22
    rlca
    ld a, [de]
    rlca
    jr nz, jr_01e_4657

    ld [hl+], a
    rlca
    inc h
    rlca
    dec h
    rlca
    daa

jr_01e_4657:
    rlca
    add hl, hl
    rlca
    ld a, [hl+]
    rrca
    ld [hl+], a
    db $10
    dec h
    ld de, $1332
    ret nz

    cp $31
    ld a, $a0
    ld [$70c1], sp
    ld sp, $c00e
    cp $a0
    dec c
    inc [hl]
    ld c, h
    pop bc
    ld [hl], b
    and b
    ld [$1c34], sp
    rst $38
    ld bc, $0f00
    nop
    pop bc
    jr nc, @+$21

    ld [de], a
    dec [hl]
    ld de, $1035
    inc [hl]
    rrca
    inc [hl]
    ld c, $32
    ld c, $32
    ld c, $30
    ld c, $a0
    ld [$0f30], sp
    and b
    dec c
    ld [hl-], a
    rrca
    ld [hl-], a
    ld c, $30
    ld c, $30
    ld c, $2a
    ld c, $2a
    ld c, $29
    ld c, $27
    rlca
    ld [hl+], a
    rlca
    inc h
    rlca
    dec h
    rlca
    daa
    rlca
    add hl, hl
    rlca
    ld a, [hl+]
    rlca
    jr nc, @+$09

    ld [hl-], a
    rrca
    ld a, [hl+]
    db $10
    ld [hl-], a
    ld de, $1335
    ret nz

    cp $39
    ld a, $a0
    ld [$70c1], sp
    add hl, sp
    ld c, $c0
    cp $a0
    dec c
    scf
    ld c, h
    pop bc
    ld [hl], b
    and b
    ld [$1c37], sp
    rst $38
    ld bc, $0230
    ld [bc], a
    and d
    ld [hl], b
    and c
    add hl, bc
    dec d
    ld [de], a
    and c
    ld [bc], a
    and d
    jr nc, jr_01e_4711

    ld de, $1030
    dec [hl]
    db $10
    dec [hl]
    ld c, $35
    ld c, $35
    ld c, $35
    ld c, $a1
    add hl, bc
    and d
    ld [hl], b
    ld [hl+], a
    rrca
    and c
    ld [bc], a
    and d
    jr nc, @+$38

    rrca
    ld [hl], $0e
    ld [hl], $0e
    ld [hl], $0e
    ld [hl-], a
    ld c, $32
    ld c, $30
    ld c, $a1
    add hl, bc
    and d
    rst $38
    rla
    ld sp, $04a0
    rla
    rlca
    and b

jr_01e_4711:
    ld [bc], a
    daa
    inc a
    and b
    inc b
    daa
    rlca
    and b
    ld [bc], a
    and d
    ld [hl], b
    add hl, hl
    inc de
    inc h
    ld [de], a
    ld hl, $1912
    dec d
    and d
    rst $38
    jr nz, @+$4e

    and b
    inc b
    jr nz, jr_01e_4748

    rst $38
    rlca
    ld bc, $000f
    jp nz, $301f

    inc b
    dec hl
    inc b
    ld a, [hl+]
    inc b
    jp nz, Jump_000_2915

    ld [$0827], sp
    ld a, [hl+]
    ld [$30c1], sp
    add hl, hl
    inc c
    and b
    ld b, $29

jr_01e_4748:
    inc c
    rst $38
    rlca
    ld bc, $000f
    jp nz, $351f

    inc b
    dec [hl]
    inc b
    dec [hl]
    inc b
    jp nz, Jump_000_3515

    ld [$0833], sp
    scf
    ld [$30c1], sp
    dec [hl]
    inc c
    and b
    ld b, $35
    inc c
    rst $38
    dec b
    nop
    ld c, $00
    pop bc
    ld d, b
    ld [de], a
    inc b
    ld hl, $1104
    inc b
    jr nz, jr_01e_4779

    or e
    db $fc
    inc bc
    nop

jr_01e_4779:
    ld d, $0c
    rla
    ld [bc], a
    jr @+$04

    db $10
    ld [$08a0], sp
    db $10
    inc d
    rst $38
    dec b
    nop
    rrca
    nop
    pop bc
    ld d, b
    ld [bc], a
    inc b
    ld de, HeaderLogo
    inc b
    db $10
    inc b
    or e
    db $fc
    inc bc
    nop
    ld b, $0c
    rlca
    ld [bc], a
    ld [$0002], sp
    ld [$08a0], sp
    nop
    inc d
    rst $38
    dec b
    nop
    ld c, $00
    add hl, sp
    ld [$0438], sp
    add hl, sp
    ld [bc], a
    dec [hl]
    ld [bc], a
    scf
    ld [bc], a
    or e
    db $fc
    dec b
    nop
    dec [hl]
    ld [bc], a
    inc [hl]
    ld [bc], a
    inc sp
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    ld sp, $3002
    ld [bc], a
    dec hl
    ld [bc], a
    ld a, [hl+]
    ld [bc], a
    add hl, hl
    ld [bc], a
    jr z, @+$04

    and b
    ld [$0227], sp
    ld h, $02
    and b
    inc b
    dec h
    ld [bc], a
    inc h
    ld [bc], a
    rst $38
    dec b
    nop
    rrca
    nop
    ld a, [hl+]
    ld [$0432], sp
    ld a, [hl+]
    ld [bc], a
    dec hl
    ld [bc], a
    jr z, jr_01e_47e8

    or e
    db $fc

jr_01e_47e8:
    dec b
    nop
    dec hl
    ld [bc], a
    ld a, [hl+]
    ld [bc], a
    add hl, hl
    ld [bc], a
    jr z, jr_01e_47f4

    daa
    ld [bc], a

jr_01e_47f4:
    ld h, $02
    dec h
    ld [bc], a
    inc h
    ld [bc], a
    inc hl
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    and b
    ld [$0221], sp
    jr nz, jr_01e_4806

    and b
    inc b

jr_01e_4806:
    dec de
    ld [bc], a
    ld a, [de]
    ld [bc], a
    rst $38
    dec b
    nop
    ld c, $00
    add hl, sp
    ld [$0438], sp
    add hl, sp
    ld [bc], a
    dec [hl]
    ld [bc], a
    jr z, jr_01e_481b

    dec hl
    ld [bc], a

jr_01e_481b:
    ld [hl+], a
    ld [bc], a
    dec [hl]
    ld [bc], a
    scf
    ld [bc], a
    dec sp
    ld [bc], a
    ld b, d
    ld [bc], a
    ld b, l
    ld [bc], a
    ld b, a
    ld [bc], a
    or e
    db $fc
    dec c
    nop
    ld b, l
    ld [bc], a
    ld b, h
    ld [bc], a
    ld b, e
    ld [bc], a
    ld b, d
    ld [bc], a
    ld b, c
    ld [bc], a
    ld b, b
    ld [bc], a
    dec sp
    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    add hl, sp
    ld [bc], a
    jr c, @+$04

    and b
    ld b, $37
    ld [bc], a
    ld [hl], $02
    and b
    inc b
    dec [hl]
    ld [bc], a
    inc [hl]
    ld [bc], a
    rst $38
    dec b
    nop
    rrca
    nop
    ld a, [hl+]
    ld [$0432], sp
    ld a, [hl+]
    ld [bc], a
    dec hl
    ld [bc], a
    dec h
    ld [bc], a
    jr z, jr_01e_4860

    dec hl
    ld [bc], a

jr_01e_4860:
    ld [hl-], a
    ld [bc], a
    dec [hl]
    ld [bc], a
    jr c, jr_01e_4868

    dec [hl]
    ld [bc], a

jr_01e_4868:
    dec sp
    ld [bc], a
    jr c, jr_01e_486e

    or e
    db $fc

jr_01e_486e:
    dec c
    nop
    dec sp
    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    add hl, sp
    ld [bc], a
    jr c, jr_01e_487a

    scf
    ld [bc], a

jr_01e_487a:
    ld [hl], $02
    dec [hl]
    ld [bc], a
    inc [hl]
    ld [bc], a
    inc sp
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    and b
    ld b, $31
    ld [bc], a
    jr nc, jr_01e_488c

    and b
    inc b

jr_01e_488c:
    dec hl
    ld [bc], a
    ld a, [hl+]
    ld [bc], a
    rst $38
    dec bc
    nop
    dec b
    nop
    rra
    inc b
    dec [hl]
    ld b, $22
    inc b
    add hl, hl
    inc b
    dec [hl]
    inc b
    inc [hl]
    inc b
    ld hl, $2904
    inc b
    inc [hl]
    inc b
    ld [hl-], a
    inc b
    ld a, [de]
    inc b
    daa
    inc b
    ld [hl-], a
    inc b
    ld sp, $2a04
    dec b
    add hl, hl
    dec b
    jr z, @+$08

    add hl, hl
    ld [bc], a
    jr z, @+$04

    add hl, hl
    jr @+$01

    dec bc
    nop
    rrca
    nop
    dec [hl]
    ld b, $22
    inc b
    add hl, hl
    inc b
    dec [hl]
    inc b
    inc [hl]
    inc b
    ld hl, $2904
    inc b
    inc [hl]
    inc b
    ld [hl-], a
    inc b
    ld a, [de]
    inc b
    daa
    inc b
    ld [hl-], a
    inc b
    ld sp, $2a04
    dec b
    add hl, hl
    dec b
    jr z, @+$08

    add hl, hl
    ld [bc], a
    jr z, @+$04

    add hl, hl
    jr @+$01

    nop
    nop
    dec c
    nop
    ld b, a
    dec b
    and b
    ld [bc], a
    ld b, a
    ld [$0da0], sp
    ld b, e
    dec b
    and b
    ld [bc], a
    ld b, e
    ld [$0da0], sp
    ld b, a
    dec b
    and b
    ld [bc], a
    ld b, a
    ld [$0da0], sp
    ld b, e
    dec b
    and b
    inc bc
    ld b, e
    add hl, bc
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    nop
    jr nc, jr_01e_4914

    inc sp
    ld [bc], a

jr_01e_4914:
    or l
    db $fc
    ld [bc], a
    nop
    and b
    inc bc
    jr nc, jr_01e_491e

    inc sp
    ld [bc], a

jr_01e_491e:
    or l
    db $fc
    rlca
    nop
    and b
    inc b
    jr nc, jr_01e_4928

    inc sp
    ld [bc], a

jr_01e_4928:
    or l
    db $fc
    inc c
    nop
    and b
    dec b
    jr nc, jr_01e_4932

    inc sp
    ld [bc], a

jr_01e_4932:
    or l
    db $fc
    ld de, $a000
    rlca
    jr nc, jr_01e_493c

    inc sp
    ld [bc], a

jr_01e_493c:
    or l
    db $fc
    ld d, $00
    and b
    add hl, bc
    jr nc, jr_01e_4946

    inc sp
    ld [bc], a

jr_01e_4946:
    or l
    db $fc
    dec de
    nop
    and b
    inc c
    jr nc, jr_01e_4950

    inc sp
    ld [bc], a

jr_01e_4950:
    or l
    db $fc
    jr nz, jr_01e_4954

jr_01e_4954:
    and b
    rrca
    ld sp, $3302
    ld [bc], a
    cp d
    db $fc
    dec h
    nop
    and b
    dec c
    ld sp, $3402
    ld [bc], a
    cp d
    db $fc
    ld a, [hl+]
    nop
    ld sp, $3402
    ld [bc], a
    cp d
    db $fc
    ld l, $00
    and b
    add hl, bc
    ld sp, $3402
    ld [bc], a
    or [hl]
    db $fc
    inc sp
    nop
    and b
    rlca
    ld sp, $3402
    ld [bc], a
    or e
    db $fc
    jr c, jr_01e_4984

jr_01e_4984:
    and b
    inc b
    ld sp, $3402
    ld [bc], a
    or l
    db $fc
    dec a
    nop
    and b
    inc bc
    ld sp, $3402
    ld [bc], a
    cp d
    db $fc
    ld b, d
    nop
    and b
    ld [bc], a
    ld sp, $3402
    ld [bc], a
    or l
    db $fc
    ld b, a
    nop
    rst $38
    rst $38
    nop
    ld bc, $370f
    dec de
    ld [bc], a
    rra
    ld bc, $0120
    rra
    ld bc, $0221
    and b
    dec b
    ld hl, $ff03
    nop
    nop
    rlca
    nop
    inc d
    ld [bc], a
    and b
    ld a, [bc]
    ld [de], a
    ld [bc], a
    and b
    rrca
    db $10
    inc b
    and b
    inc b
    db $10
    inc b
    rst $38
    nop
    ld [bc], a
    rrca
    rla
    pop bc
    ld h, b
    add hl, hl
    ld b, $a1
    cpl
    ld b, d
    jr nc, @+$01

    nop
    nop
    rrca
    nop
    inc de
    inc bc
    scf
    ld b, $a0
    inc b
    scf
    ld [bc], a
    rst $38
    nop
    nop
    rrca
    rla
    jr jr_01e_49fc

    and c
    cpl
    ld l, e
    ld [de], a
    and c
    rla
    rra
    ld bc, $1218
    and c
    cpl
    ld l, e
    ld [de], a
    and b
    ld b, $6b
    ld [de], a

jr_01e_49fc:
    and b
    ld [bc], a
    ld l, e
    ld [de], a
    rst $38
    nop
    nop
    inc c
    rla
    dec d
    ld bc, $0117
    add hl, de
    ld bc, $0120
    inc hl
    ld bc, $0125
    daa
    ld bc, $0129
    dec hl
    ld bc, $0130
    inc sp
    ld bc, $0135
    scf
    ld bc, $0139
    dec sp
    ld bc, $0140
    ld b, d
    ld bc, $0144
    ld b, [hl]
    ld bc, HeaderROMSize
    ld c, e
    ld bc, $0150
    ld c, e
    ld bc, HeaderRAMSize
    ld b, a
    ld bc, $0145
    ld b, e
    ld bc, $0141
    dec sp
    ld bc, $0139
    scf
    ld bc, $0135
    inc sp
    ld bc, $0130
    or c
    db $fc
    ld [bc], a
    nop
    and b
    inc b
    ld d, d
    ld bc, $0150
    ld c, e
    ld bc, HeaderRAMSize
    ld b, a
    ld bc, $0145
    ld b, e
    ld bc, $0141
    dec sp
    ld bc, $0139
    scf
    ld bc, $0135
    inc sp
    ld bc, $0130
    and b
    ld [bc], a
    ld d, d
    ld bc, $0150
    ld c, e
    ld bc, HeaderRAMSize
    ld b, a
    ld bc, $0145
    ld b, e
    ld bc, $0141
    dec sp
    ld bc, $0139
    scf
    ld bc, $0135
    inc sp
    ld bc, $0130
    rst $38
    nop
    ld [bc], a
    rrca
    nop
    ld d, a
    ld [bc], a
    and b
    inc bc
    ld d, a
    inc b
    rst $38
    nop
    ld [bc], a
    rrca
    nop
    jr nc, jr_01e_4a9c

    rst $38

jr_01e_4a9c:
    nop
    ld [bc], a
    rrca
    nop
    add hl, hl
    ld bc, $00ff
    nop
    rrca
    nop
    ld d, b
    ld [bc], a
    rra
    ld bc, $0256
    rra
    ld bc, $0250
    rra
    ld bc, $0256
    rra
    ld bc, $05a0
    ld d, b
    ld [bc], a
    rra
    ld bc, $0256
    and b
    ld [bc], a
    ld d, [hl]
    inc b
    rst $38
    nop
    nop
    rlca
    nop
    and d
    nop
    and l
    rrca
    rra
    jr nc, @-$5e

    ld [$0160], sp
    pop bc
    ld a, a
    ld h, c
    ld e, b
    and l
    ldh a, [$a2]
    ld [bc], a
    and b
    ld b, $61
    ld b, b
    rra
    inc hl
    and b
    ld [$0160], sp
    ld h, c
    ld e, b
    rra
    ld a, b
    and l
    rrca
    rra
    ld a, [hl+]
    pop bc
    ld a, a
    ld h, b
    ld bc, $08a0
    ld h, c
    ld b, b
    rra
    ld a, b
    and l
    ldh a, [$60]
    ld bc, $08a0
    pop bc
    ld a, a
    and b
    rlca
    ld h, c
    ld b, b
    rra
    ld c, c
    rra
    sbc b
    or b
    db $fc
    ld [bc], a
    nop
    rst $38
    nop
    nop
    rlca
    nop
    and l
    ldh a, [$a0]
    dec b
    pop bc
    rrca
    ld h, b
    ld bc, $0ea0
    ld h, c
    ld [$011f], sp
    and b
    dec bc
    ld h, c
    ld [$0ca0], sp
    ld h, c
    ld [$09a0], sp
    ret nz

    cp $60
    ld bc, $0fa0
    ld h, c
    jr @-$3d

    ld a, a
    and b
    ld [$4061], sp
    rra
    sub b
    xor [hl]
    db $10
    and l
    rrca
    pop bc
    rrca
    and b
    dec b
    ld e, e
    ld bc, $08a0
    ld h, b
    ld [$011f], sp

jr_01e_4b47:
    and b
    add hl, bc
    ld h, b
    ld [$07a0], sp
    ld h, b
    ld [$06a0], sp
    ret nz

jr_01e_4b52:
    cp $5b
    ld bc, $07a0
    ld h, b
    jr @-$3d

    ld a, a
    and b
    ld b, $60
    ld b, b
    rra
    ld [hl], b
    rra
    ld [hl], b
    xor [hl]
    nop
    and l
    rst $38
    and b
    dec b
    pop bc
    rrca
    ld h, b
    ld bc, $0aa0

jr_01e_4b6f:
    ld h, c
    ld [$011f], sp
    and b
    ld [$0861], sp
    and b
    ld a, [bc]
    ld h, c
    ld [$09a0], sp
    ret nz

    cp $60
    ld bc, $0ca0
    ld h, c
    jr jr_01e_4b47

    ld a, a
    and b
    ld [$4061], sp
    rra
    ld [hl], b
    and l
    rrca
    and b
    add hl, bc
    ret nz

    cp $60
    ld bc, $08a0
    ld h, c
    add hl, de
    pop bc
    ld a, a
    and b
    rlca
    ld h, c
    ld b, b
    rra
    jr nc, jr_01e_4b52

    db $fc
    ld [bc], a
    nop
    rst $38
    nop
    ld [bc], a
    rrca
    rla
    ld [hl+], a
    ld [bc], a
    and c
    ld d, $1f
    inc bc
    daa
    inc b
    rst $38
    nop
    nop
    rrca
    nop
    ld d, c
    ld [bc], a
    rra
    ld bc, $0223
    rra
    ld [bc], a
    dec d
    ld [bc], a
    and b
    inc b
    dec d
    dec b
    rst $38
    nop
    ld [bc], a
    rrca
    nop
    and e
    jr nz, jr_01e_4b6f

    ld [bc], a
    and b
    dec b
    and l
    rst $38
    rra
    ld [$0158], sp
    ld e, c
    ld bc, $015a
    ld e, e
    ld bc, $0160
    ld e, e
    ld bc, $0158
    ld e, c
    ld bc, $015a
    ld e, e
    ld bc, $0160
    ld e, e
    ld bc, $015a
    ld e, c
    ld bc, $0158
    ld d, a
    ld bc, $0156
    ld d, l
    ld bc, $0154
    ld d, e
    ld bc, $0152
    ld d, c
    ld bc, $0150
    ld c, e
    ld bc, HeaderDestinationCode
    ld c, c
    ld bc, $f0a5
    rra
    db $10
    ld e, d
    ld bc, $015b
    ld h, b
    ld bc, $015b
    ld e, d
    ld bc, $015b
    ld h, b
    ld bc, $0161
    ld h, d
    ld bc, $0161
    ld e, c
    ld bc, $0160
    ld h, c
    ld bc, $0162
    ld h, e
    ld bc, $0162
    ld h, d
    ld bc, $0160
    ld e, e
    ld bc, $015a
    ld e, c
    ld bc, $0158
    ld d, a
    ld bc, $0156
    ld d, l
    ld bc, $0154
    ld d, e
    ld bc, $0152
    ld d, c
    ld bc, $0150
    ld c, e
    ld bc, HeaderDestinationCode
    ld c, c
    ld bc, HeaderROMSize
    rra
    ld [hl+], a
    and l
    rrca
    ld h, h
    ld bc, $0163
    ld h, d
    ld bc, $0161
    ld h, b
    ld bc, $015b
    ld e, d
    ld bc, $0159
    ld h, b
    ld bc, $015b
    ld h, d
    ld bc, $0161
    ld h, c
    ld bc, $015b
    ld e, b
    ld bc, $0157
    ld d, [hl]
    ld bc, $0155
    ld d, h
    ld bc, $0153
    ld d, d
    ld bc, $0151
    ld d, b
    ld bc, HeaderOldLicenseeCode
    ld c, d
    ld bc, HeaderRAMSize
    rra
    inc e
    and l
    ldh a, [$62]
    ld bc, $0161
    ld h, b
    ld bc, $015b
    ld e, d
    ld bc, $0159
    ld d, [hl]
    ld bc, $0155
    ld d, h
    ld bc, $0153
    ld d, d
    ld bc, $0151
    ld d, d
    ld bc, $0153
    ld d, h
    ld bc, $0155
    ld d, [hl]
    ld bc, $0157
    ld d, [hl]
    ld bc, $0155
    ld d, h
    ld bc, $0153
    ld d, d
    ld bc, $0150
    ld c, e
    ld bc, HeaderDestinationCode
    ld c, c
    ld bc, HeaderROMSize
    rra
    dec e
    and d
    ld bc, $0aa0
    and l
    ldh a, [rBCPS]
    ld bc, $0169
    ld l, d
    ld bc, $016b
    ld l, d
    ld bc, $0169
    ld l, b
    ld bc, $0167
    ld h, [hl]
    ld bc, $0165
    ld h, h
    ld bc, $0163
    ld h, d
    ld bc, $0161
    ld h, b
    ld bc, $015b
    ld e, d
    ld bc, $0159
    ld e, b
    ld bc, $0157
    ld d, [hl]
    ld bc, $0155
    ld d, h
    ld bc, $0153
    ld d, d
    ld bc, $0151
    ld d, b
    ld bc, HeaderOldLicenseeCode
    ld c, d
    ld bc, HeaderRAMSize
    ld c, b
    ld bc, HeaderROMSize
    or b
    db $fc
    inc bc
    nop
    rst $38
    nop
    ld [bc], a
    rrca
    nop
    and d
    ld [bc], a
    and b
    rrca
    and l
    rst $38
    ld e, b
    ld bc, $0159
    ld e, d
    ld bc, $015b
    ld h, b
    ld bc, $015b
    ld e, b
    ld bc, $0159
    ld e, d
    ld bc, $015b
    ld h, b
    ld bc, $015b
    ld e, d
    ld bc, $0159
    ld e, b
    ld bc, $0157
    ld d, [hl]
    ld bc, $0155
    ld d, h
    ld bc, $0153
    ld d, d
    ld bc, $0151
    ld d, b
    ld bc, HeaderOldLicenseeCode
    ld c, d
    ld bc, HeaderRAMSize
    and l
    ldh a, [$1f]
    db $10
    ld e, d
    ld bc, $015b
    ld h, b
    ld bc, $015b
    ld e, d
    ld bc, $015b
    ld h, b
    ld bc, $0161
    ld h, d
    ld bc, $0161
    ld e, c
    ld bc, $0160
    ld h, c
    ld bc, $0162
    ld h, e
    ld bc, $0162
    ld h, d
    ld bc, $0160
    ld e, e
    ld bc, $015a
    ld e, c
    ld bc, $0158
    ld d, a
    ld bc, $0156
    ld d, l
    ld bc, $0154
    ld d, e
    ld bc, $0152
    ld d, c
    ld bc, $0150
    ld c, e
    ld bc, HeaderDestinationCode
    ld c, c
    ld bc, HeaderROMSize
    rra
    ld [hl+], a
    and b
    dec c
    and l
    rrca
    ld h, h
    ld bc, $0163
    ld h, d
    ld bc, $0161
    ld h, b
    ld bc, $015b
    ld e, d
    ld bc, $0159
    ld h, b
    ld bc, $015b
    ld h, d
    ld bc, $0161
    ld h, c
    ld bc, $015b
    ld e, b
    ld bc, $0157
    ld d, [hl]
    ld bc, $0155
    ld d, h
    ld bc, $0153
    ld d, d
    ld bc, $0151
    ld d, b
    ld bc, HeaderOldLicenseeCode
    ld c, d
    ld bc, HeaderRAMSize
    rra
    inc e
    and b
    rrca
    and l
    ldh a, [$62]
    ld bc, $0161
    ld h, b
    ld bc, $015b
    ld e, d
    ld bc, $0159
    ld d, [hl]
    ld bc, $0155
    ld d, h
    ld bc, $0153
    ld d, d
    ld bc, $0151
    ld d, d
    ld bc, $0153
    ld d, h
    ld bc, $0155
    ld d, [hl]
    ld bc, $0157
    ld d, [hl]
    ld bc, $0155
    ld d, h
    ld bc, $0153
    ld d, d
    ld bc, $0150
    ld c, e
    ld bc, HeaderDestinationCode
    ld c, c
    ld bc, HeaderROMSize
    rra

jr_01e_4e10:
    add hl, bc
    and b
    inc c
    and l
    rrca
    ld e, d
    ld bc, $015b
    ld h, b
    ld bc, $0161
    ld h, d
    ld bc, $0163
    ld h, h
    ld bc, $0165
    ld h, [hl]
    ld bc, $0165
    ld h, h
    ld bc, $0163
    ld h, d
    ld bc, $0161
    ld h, b
    ld bc, $0160
    ld e, e
    ld bc, $015a
    ld e, c
    ld bc, $0158
    ld d, a
    ld bc, $0156
    ld d, l

Call_01e_4e42:
    ld bc, $0154
    ld d, e
    ld bc, $0152
    ld d, c

Call_01e_4e4a:
    ld bc, $0150
    ld c, e
    ld bc, HeaderDestinationCode
    ld c, c
    ld bc, HeaderROMSize
    ld b, a
    ld bc, HeaderSGBFlag
    ld b, l
    ld bc, HeaderNewLicenseeCode
    rra
    jr jr_01e_4e10

    db $fc
    inc bc
    nop
    rst $38
    nop
    nop
    rrca
    nop
    and e
    ld a, [hl-]
    ld hl, $3060
    ld h, b

jr_01e_4e6e:
    ld hl, $b044
    db $fc
    inc bc
    nop
    rst $38
    nop
    nop
    rrca
    rra
    ld b, h
    inc bc
    ld b, e
    inc bc
    ld b, d
    inc bc
    ld b, h
    inc bc
    and c
    ld e, $47
    ld [bc], a
    and b
    ld b, $47
    inc bc
    rra
    dec b
    and b
    rrca
    and c
    daa
    inc [hl]
    ld [bc], a
    ld [hl-], a
    inc bc
    rra
    ld [bc], a
    ld b, c
    inc bc
    rra
    ld [bc], a
    and b
    ld b, $41
    inc bc
    rra
    inc bc
    and b
    inc bc
    ld b, c
    inc bc
    rst $38
    nop
    ld bc, $000f
    jp nz, $ae40

    db $10
    jr nc, @+$07

    xor [hl]
    nop
    inc sp
    dec b
    ld sp, $3405
    dec b
    ld [hl-], a
    dec b
    dec [hl]
    dec b
    ld [hl], $05
    and b
    inc b
    ld [hl], $0a
    rst $38
    nop
    nop
    rrca
    nop
    ld [de], a
    ld [bc], a
    rra
    ld [bc], a
    rst $00
    jr nc, jr_01e_4edc

    jr jr_01e_4e6e

    rlca
    db $10
    db $10
    and b
    dec b
    db $10
    jr nz, @+$01

    nop
    ld bc, $000f
    ld b, l
    ld [bc], a

jr_01e_4edc:
    ld b, [hl]
    ld [bc], a
    ld b, h
    ld [bc], a
    ld b, l
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    ld b, h
    ld [bc], a
    and b
    rlca
    ld b, [hl]
    ld [bc], a
    ld b, h
    ld [bc], a
    rst $38
    nop
    nop
    rrca
    nop
    inc sp
    ld [bc], a
    ld h, d
    inc bc
    rra
    ld bc, $0242
    ld d, c
    ld [bc], a
    rra
    ld bc, $fcb0
    ld [bc], a
    nop
    rst $38
    nop
    ld [bc], a
    rrca
    nop
    db $10
    inc bc
    rla
    inc bc
    jr nz, jr_01e_4f0f

    ld [hl+], a
    ld [bc], a
    inc h

jr_01e_4f0f:
    ld [bc], a
    dec h
    ld [bc], a
    daa
    ld [bc], a
    add hl, hl
    ld [bc], a
    ld a, [hl+]
    ld [bc], a
    jr nc, jr_01e_4f1c

    ld [hl-], a
    ld [bc], a

jr_01e_4f1c:
    inc [hl]
    ld [bc], a
    dec [hl]
    ld [bc], a
    scf
    ld [bc], a
    add hl, sp
    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    pop bc
    jr nc, jr_01e_4f69

    dec d
    and b
    dec b
    ld b, b
    db $10
    rst $38
    nop
    ld [bc], a
    dec b
    nop
    rra
    inc bc
    db $10
    inc bc
    rla
    inc bc
    jr nz, jr_01e_4f3e

    ld [hl+], a
    ld [bc], a
    inc h

jr_01e_4f3e:
    ld [bc], a
    dec h
    ld [bc], a
    daa
    ld [bc], a
    add hl, hl
    ld [bc], a
    ld a, [hl+]
    ld [bc], a
    jr nc, jr_01e_4f4b

    ld [hl-], a
    ld [bc], a

jr_01e_4f4b:
    inc [hl]
    ld [bc], a
    dec [hl]
    ld [bc], a
    scf
    ld [bc], a
    add hl, sp
    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    pop bc
    ld b, b
    and e
    dec c
    ld b, b
    dec h
    rst $38
    nop
    ld bc, $000f
    ld [hl-], a
    ld [bc], a
    dec hl
    ld [bc], a
    inc sp
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    dec hl

jr_01e_4f69:
    ld [bc], a
    inc sp
    ld [bc], a
    and b
    rlca
    inc sp
    ld [bc], a
    dec hl
    ld [bc], a
    inc sp
    ld [bc], a
    rst $38
    nop
    nop
    rrca
    nop
    ld d, b
    inc b
    ld d, c
    inc b
    ld h, c
    inc bc
    and b
    inc bc
    ld d, b
    inc bc
    rst $38
    nop
    nop
    rrca
    nop
    ld b, a
    inc b
    rra
    ld [bc], a
    ld b, e
    inc bc
    rra
    ld [bc], a
    ld b, a
    inc b
    rra
    ld [bc], a
    ld b, e
    inc b
    rra
    ld [bc], a
    ld b, h
    inc b
    rra
    ld [bc], a
    inc [hl]
    inc b
    rst $38
    nop
    nop
    rrca
    nop
    ld d, b
    ld [bc], a
    inc sp
    ld b, $50
    ld [bc], a
    inc sp
    ld b, $50
    ld [bc], a
    inc sp
    ld b, $60
    inc bc
    rst $38
    nop
    ld [bc], a
    rrca
    nop
    dec sp
    inc b
    add hl, sp
    inc b
    dec [hl]
    inc b
    and b
    rlca
    dec [hl]
    dec b
    rst $38
    nop
    ld bc, $000f
    ld b, l
    ld [bc], a
    ld c, c
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, h
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, h
    ld [bc], a
    ld c, c
    ld [bc], a
    ld d, b
    ld [bc], a
    and b
    dec bc
    ld b, l
    ld [bc], a
    ld c, c
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, h
    ld [bc], a
    and b
    add hl, bc
    ld d, b
    ld [bc], a
    ld d, h
    ld [bc], a
    ld c, c
    ld [bc], a
    ld d, b
    ld [bc], a
    and b
    dec b
    ld b, l
    ld [bc], a
    ld c, c
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, h
    ld [bc], a
    and b
    inc bc
    ld d, b
    ld [bc], a
    ld d, h
    ld [bc], a
    ld c, c
    ld [bc], a
    ld d, b
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    rrca
    ld h, $a0
    inc c
    ld a, [bc]
    inc d
    and c
    nop
    pop bc
    ccf
    and b
    ld c, $ae
    db $10
    dec d
    inc d
    and b
    inc b
    dec d
    inc b
    and b
    ld [bc], a
    dec d
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    rrca
    ld l, $47
    dec b
    ld b, h
    rlca
    and b
    inc c
    ld b, b
    ld b, $38
    ld b, $a0
    ld a, [bc]
    dec [hl]
    ld b, $33
    ld b, $a0
    rlca
    dec hl
    dec b
    rst $38
    nop
    ld [bc], a
    rrca
    rra
    jr c, jr_01e_503b

    and c
    rla
    and b

jr_01e_503b:
    ld c, $33
    inc bc
    rra
    ld bc, $0ea0
    and c
    rra
    jr c, jr_01e_5049

    and c
    rla
    and b

jr_01e_5049:
    inc c
    inc sp
    inc bc
    rra
    ld bc, $0da0
    and c
    rra
    jr c, jr_01e_5057

    and c
    rla
    and b

jr_01e_5057:
    dec bc
    inc sp
    inc bc
    rra
    ld bc, $0ca0
    and c
    rra
    jr c, jr_01e_5065

    and c
    rla
    and b

jr_01e_5065:
    ld a, [bc]
    inc sp
    inc bc
    rra
    ld bc, $0aa0
    and c
    rra
    jr c, jr_01e_5073

    and c
    rla
    and b

jr_01e_5073:
    ld [$0333], sp
    and b
    ld [$1fa1], sp
    jr c, jr_01e_507f

    and c
    rla
    and b

jr_01e_507f:
    ld b, $33
    inc bc
    and b
    ld b, $a1
    rra
    jr c, jr_01e_508b

    and c
    rla
    and b

jr_01e_508b:
    dec b
    inc sp
    inc bc
    and b
    inc b
    and c
    rra
    jr c, jr_01e_5097

    and c
    rla
    inc sp

jr_01e_5097:
    inc bc
    and b
    ld [bc], a
    and c
    rra
    jr c, jr_01e_50a1

    and c
    rla
    inc sp

jr_01e_50a1:
    inc bc
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rrca
    inc hl
    xor [hl]
    db $10
    add hl, de
    ld bc, $00ae
    ld d, $01
    xor [hl]
    db $10
    add hl, de
    ld bc, $00ae
    ld d, $02
    and b
    inc c
    xor [hl]
    db $10
    add hl, de
    ld bc, $00ae
    ld d, $01
    and b
    ld a, [bc]
    xor [hl]
    db $10
    add hl, de
    ld bc, $00ae
    ld d, $02
    and b
    add hl, bc
    xor [hl]
    db $10
    add hl, de
    ld bc, $00ae
    ld d, $02
    and b
    rlca
    xor [hl]
    db $10
    add hl, de
    ld bc, $00ae
    ld d, $02
    xor [hl]
    db $10
    and b
    inc b
    add hl, de
    ld bc, $00ae
    ld d, $01
    xor [hl]
    db $10
    jr jr_01e_50f3

    xor [hl]

jr_01e_50f3:
    db $10
    dec de
    ld bc, $0117
    ld d, $01
    xor [hl]
    nop
    rst $38
    rst $38
    nop
    nop
    rrca
    nop
    daa
    ld [bc], a
    daa
    ld [bc], a
    and b
    dec b
    daa
    ld [$ffff], sp
    nop
    nop
    rrca
    inc hl
    xor [hl]
    db $10
    add hl, de
    ld bc, $00ae
    ld d, $01
    xor [hl]
    db $10
    add hl, de
    ld bc, $00ae
    ld d, $02
    and b
    inc c
    xor [hl]
    db $10
    add hl, de
    ld bc, $00ae
    ld d, $01
    and b
    ld a, [bc]
    xor [hl]
    db $10
    add hl, de
    ld bc, $00ae
    ld d, $02
    and b
    add hl, bc
    xor [hl]
    db $10
    add hl, de
    ld bc, $00ae
    ld d, $02
    and b
    rlca
    xor [hl]
    db $10
    add hl, de
    ld bc, $00ae
    ld d, $02
    xor [hl]
    db $10
    jr jr_01e_514e

    xor [hl]
    nop

jr_01e_514e:
    add hl, de
    ld [bc], a
    xor [hl]
    db $10
    jr nz, jr_01e_5156

    rra
    dec d

jr_01e_5156:
    and d
    ld bc, $1da1
    and b
    rrca
    inc hl
    ld bc, $0121
    ld [hl+], a
    ld bc, $0239
    scf
    ld [bc], a
    ld [hl], $02
    dec [hl]
    ld [bc], a
    inc [hl]
    ld [bc], a
    inc sp
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    ld sp, $3102
    ld [bc], a
    dec sp
    ld [bc], a
    ld a, [hl+]
    ld [bc], a
    add hl, hl
    ld [bc], a
    jr z, jr_01e_517e

    daa
    ld [bc], a

jr_01e_517e:
    ld h, $02
    dec h
    ld [bc], a
    inc h
    ld [bc], a
    inc hl
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld hl, $2002
    ld [bc], a
    ld a, [de]
    ld [bc], a
    and b
    ld b, $18
    ld [bc], a
    ld d, $02
    inc d
    ld [bc], a
    ld [de], a
    ld [bc], a
    db $10
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    ld [$0602], sp
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    nop
    daa
    ld [bc], a
    daa
    ld [bc], a
    and b
    dec b
    daa
    ld b, $ff
    rst $38
    nop
    nop
    rrca
    inc hl
    xor [hl]
    db $10
    jr nz, jr_01e_51bb

    xor [hl]

jr_01e_51bb:
    nop
    add hl, de
    ld bc, $10ae
    jr nz, jr_01e_51c3

    xor [hl]

jr_01e_51c3:
    nop
    add hl, de
    ld [bc], a
    xor [hl]
    db $10
    ld [hl+], a
    ld bc, $00ae
    ld [hl+], a
    ld bc, $10ae
    add hl, de
    ld bc, $00ae
    ld d, $02
    and b
    add hl, bc
    xor [hl]
    db $10
    add hl, de
    ld bc, $00ae
    ld d, $02
    and b
    rlca
    xor [hl]
    db $10
    add hl, de
    ld bc, $00ae
    ld d, $02
    and d
    ld bc, $1da1
    and b
    rrca
    xor [hl]
    nop
    ld h, $01
    xor [hl]
    db $10
    inc h
    ld bc, $00ae
    inc h
    ld bc, $10ae
    ld [hl+], a
    ld bc, $00ae
    jr nz, jr_01e_5206

    xor [hl]
    db $10

jr_01e_5206:
    inc h
    ld bc, $00ae
    ld [hl+], a
    ld bc, $00ae
    ld [hl+], a
    ld bc, $10ae
    jr nz, jr_01e_5215

    xor [hl]

jr_01e_5215:
    nop
    add hl, de
    ld [bc], a
    xor [hl]
    db $10
    jr nz, jr_01e_521d

    xor [hl]

jr_01e_521d:
    nop
    ld [hl+], a
    ld bc, $10ae
    jr nz, jr_01e_5225

    xor [hl]

jr_01e_5225:
    nop
    ld [hl+], a
    ld [bc], a
    xor [hl]
    nop
    ld d, $02
    xor [hl]
    nop
    ld [hl+], a
    ld [bc], a
    xor [hl]
    nop
    add hl, de
    ld [bc], a
    xor [hl]
    nop
    ld [hl+], a
    ld [bc], a
    xor [hl]
    nop
    add hl, de
    ld [bc], a
    xor [hl]
    nop
    ld [hl+], a
    ld [bc], a
    xor [hl]
    nop
    add hl, de
    ld [bc], a
    xor [hl]
    db $10
    inc d
    ld bc, $00ae
    db $10
    ld [bc], a
    xor [hl]
    db $10
    inc d
    ld bc, $00ae
    db $10
    ld [bc], a
    xor [hl]
    db $10
    inc d
    ld bc, $00ae
    db $10
    ld [bc], a
    xor [hl]
    db $10
    inc d
    ld bc, $00ae
    db $10
    ld [bc], a
    xor [hl]
    db $10
    inc d
    ld bc, $00ae
    db $10
    ld [bc], a
    and b
    add hl, bc
    xor [hl]
    db $10
    inc d
    ld bc, $00ae
    db $10
    ld [bc], a
    xor [hl]
    db $10
    inc d
    ld bc, $00ae
    db $10
    ld [bc], a
    xor [hl]
    db $10
    inc d
    ld bc, $00ae
    db $10
    ld [bc], a
    xor [hl]
    db $10
    ld b, $02
    rst $38
    rst $38
    nop
    nop
    rrca
    nop
    scf
    ld [bc], a
    scf
    ld [bc], a
    and b
    ld [$0637], sp
    rst $38
    rst $38
    nop
    ld bc, $1d0f
    and d
    ld bc, $1da1
    xor [hl]
    db $10
    jr nz, jr_01e_52a7

    xor [hl]

jr_01e_52a7:
    nop
    add hl, de
    ld bc, $10ae
    jr nz, jr_01e_52af

    xor [hl]

jr_01e_52af:
    nop
    add hl, de
    ld [bc], a
    xor [hl]
    db $10
    ld [hl+], a
    ld bc, $00ae
    ld [hl+], a
    ld bc, $10ae
    add hl, de
    ld bc, $00ae
    ld d, $02
    and b
    add hl, bc
    xor [hl]
    db $10
    add hl, de
    ld bc, $00ae
    ld d, $02
    and b
    rlca
    xor [hl]
    db $10
    add hl, de
    ld bc, $00ae
    ld d, $02
    and b
    rrca
    xor [hl]
    nop
    ld h, $01
    xor [hl]
    db $10
    inc h
    ld bc, $00ae
    ld h, $01
    xor [hl]
    db $10
    inc h
    ld bc, $00ae
    ld h, $02
    xor [hl]
    db $10
    inc h
    ld bc, $00ae
    ld h, $01
    xor [hl]
    nop
    ld [hl+], a
    ld bc, $10ae
    inc h
    ld bc, $00ae
    ld h, $02
    xor [hl]
    db $10
    inc h
    ld bc, $00ae
    ld h, $01
    xor [hl]
    db $10
    inc h
    ld bc, $00ae
    ld h, $02
    xor [hl]
    nop
    jr z, jr_01e_5316

    xor [hl]
    nop

jr_01e_5316:
    daa
    ld [bc], a
    xor [hl]
    nop
    jr z, jr_01e_531e

    xor [hl]
    nop

jr_01e_531e:
    daa
    ld [bc], a
    xor [hl]
    nop
    jr z, jr_01e_5326

    xor [hl]
    nop

jr_01e_5326:
    daa
    ld [bc], a
    xor [hl]
    nop
    add hl, hl
    ld [bc], a
    xor [hl]
    db $10
    jr z, jr_01e_5331

    xor [hl]

jr_01e_5331:
    nop
    add hl, hl
    ld [bc], a
    xor [hl]
    db $10
    jr z, jr_01e_5339

    xor [hl]

jr_01e_5339:
    nop
    add hl, hl
    ld [bc], a
    xor [hl]
    db $10
    jr z, jr_01e_5341

    xor [hl]

jr_01e_5341:
    nop
    add hl, hl
    ld [bc], a
    xor [hl]
    db $10
    jr z, jr_01e_5349

    xor [hl]

jr_01e_5349:
    nop
    add hl, hl
    ld [bc], a
    xor [hl]
    db $10
    jr z, jr_01e_5351

    xor [hl]

jr_01e_5351:
    nop
    add hl, hl
    ld [bc], a
    rra
    ld bc, $09a0
    xor [hl]
    db $10
    ld a, [hl+]
    ld bc, $00ae
    dec hl
    ld [bc], a
    xor [hl]
    db $10
    jr z, jr_01e_5365

    xor [hl]

jr_01e_5365:
    nop
    add hl, hl
    ld [bc], a
    xor [hl]
    db $10
    jr z, jr_01e_536d

    xor [hl]

jr_01e_536d:
    nop
    add hl, hl
    ld [bc], a
    xor [hl]
    db $10
    jr z, jr_01e_5375

    and b

jr_01e_5375:
    inc bc
    xor [hl]
    db $10
    dec h
    ld bc, $00ae
    ld h, $02
    xor [hl]
    db $10
    dec h
    ld bc, $00ae
    ld h, $02
    xor [hl]
    db $10
    dec h
    ld bc, $00ae
    ld h, $02
    rst $38
    rst $38
    nop
    nop
    rrca
    nop
    ld de, $4502
    inc bc
    dec d
    ld bc, $0350
    ld b, l
    inc bc
    ld d, $01
    ld b, l
    ld [bc], a
    ld d, l
    ld [bc], a
    inc d
    ld bc, $0245
    ld b, l
    ld b, $a0
    ld b, $45
    dec b
    and b
    inc b
    ld b, l
    dec b
    rst $38
    rst $38
    nop
    nop
    rrca
    rla
    and b
    ld [$0223], sp
    inc h
    ld [bc], a
    dec h
    ld [bc], a
    ld h, $02
    and b
    dec bc
    daa
    ld [bc], a
    jr z, jr_01e_53ca

    add hl, hl
    ld [bc], a

jr_01e_53ca:
    ld a, [hl+]
    ld [bc], a
    and b
    dec c
    dec hl
    ld [bc], a
    jr nc, @+$04

    ld sp, $3202
    ld [bc], a
    inc sp
    inc bc
    inc [hl]
    ld [bc], a
    dec [hl]
    ld [bc], a
    and b
    add hl, bc
    dec [hl]
    ld [bc], a
    and b
    rrca
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    nop
    rrca
    nop
    rra
    jr nz, @+$13

    ld [bc], a
    ld b, l
    inc bc
    dec d
    ld bc, $0350
    ld b, l
    inc bc
    ld d, $01
    ld b, l
    ld [bc], a
    ld d, l
    ld [bc], a
    inc d
    ld bc, $0245
    ld b, l
    ld b, $a0
    dec bc
    ld b, l
    dec b
    ld b, l

jr_01e_5407:
    dec b
    and b
    ld c, $55
    ld [bc], a
    inc d
    ld bc, $0245
    ld b, l
    ld b, $a0
    ld b, $45
    dec b
    ld b, l
    dec b
    and b
    ld [$0255], sp
    inc d
    ld bc, $0245
    ld b, l
    ld b, $45
    dec b
    and b
    inc b
    ld b, l
    dec b
    rst $38
    rst $38
    nop
    nop
    rrca
    nop
    jp Jump_000_2107


    dec b
    inc hl
    dec b
    ret nz

    cp $23
    dec b
    ld [hl+], a
    ld [$0722], sp
    and b
    ld [$30c7], sp
    ld [hl+], a
    jr nz, @+$01

    rst $38
    nop
    nop
    rrca
    nop
    ld de, $1306
    inc b
    ld [hl+], a
    inc bc
    inc hl
    inc b
    inc hl
    rlca
    ld [hl+], a
    rlca
    ld [de], a
    rlca
    ld de, $a018
    dec bc
    ld de, $a010
    ld c, $11
    db $10
    and b
    ld a, [bc]
    ld de, $c108
    jr nz, jr_01e_5407

    ld b, $11
    jr nz, @+$01

    rst $38
    nop
    nop
    rrca
    inc d
    xor [hl]
    db $10
    jr nc, jr_01e_5476

    dec hl
    inc bc

jr_01e_5476:
    rra
    ld [bc], a
    jr z, jr_01e_547d

    dec hl
    inc bc
    rra

jr_01e_547d:
    ld [bc], a
    dec hl
    inc b
    rra
    ld [bc], a
    jr z, jr_01e_5486

    ld a, [de]
    inc bc

jr_01e_5486:
    cpl
    ld bc, $031a
    rra
    ld [bc], a
    add hl, hl
    ld bc, $0218
    rra
    ld [bc], a
    daa
    ld bc, $0217
    ld h, $01
    dec h
    ld [bc], a
    inc h
    ld bc, $0223
    rra
    ld bc, $0122
    ld hl, $2002
    ld bc, $011b
    ld a, [de]
    ld bc, $0119
    jr jr_01e_54af

    rla

jr_01e_54af:
    ld bc, $011f
    ld d, $01
    dec d
    ld bc, $0114
    and b
    ld [$011f], sp
    dec d
    ld bc, $0117
    add hl, de
    ld bc, $06a0
    rra
    ld [bc], a
    jr jr_01e_54c9

    dec de

jr_01e_54c9:
    ld bc, $0117
    ld a, [de]
    ld bc, $0118
    dec de

jr_01e_54d1:
    ld [bc], a
    inc d
    ld bc, $04a0
    rra
    ld [bc], a
    jr jr_01e_54db

    dec de

jr_01e_54db:
    ld bc, $0118
    rra
    ld [bc], a
    ld a, [de]
    ld bc, $0118
    rra
    ld [bc], a
    inc d
    ld bc, $0119
    dec de
    ld bc, $0119
    ld a, [de]
    ld bc, $ffff
    nop
    nop
    rrca
    nop
    ld hl, $3108
    dec b
    jr nz, jr_01e_5501

    db $10
    inc bc
    jr nz, jr_01e_5504

    ld b, b

jr_01e_5501:
    dec b
    ld b, b
    dec b

jr_01e_5504:
    jr nc, jr_01e_5509

    inc hl
    dec b
    ld b, b

jr_01e_5509:
    ld b, $21
    ld [$0430], sp
    ld hl, $3005
    dec b
    ld hl, $2002
    rlca
    and b
    ld [$20c1], sp
    jr nz, jr_01e_5524

    rst $38
    rst $38
    nop
    nop
    rrca
    nop
    jr nz, @+$09

jr_01e_5524:
    ld [de], a
    ld [$0811], sp
    rra
    ld bc, $0450
    ld h, b
    db $10
    rst $00
    jr nz, jr_01e_54d1

    ld b, $60
    jr nz, @+$01

    rst $38
    nop
    nop
    rrca
    nop
    ld b, l
    ld [bc], a
    ld de, $1f02
    ld bc, $20c3
    ld b, l
    db $10
    jr nc, jr_01e_554f

    rst $00
    jr nc, jr_01e_5599

    ld b, $43
    ld [$2060], sp
    rst $38

jr_01e_554f:
    rst $38
    nop
    ld [bc], a
    rrca
    dec d
    ld [$0906], sp
    inc b
    db $10
    inc bc
    add hl, bc
    dec b
    and b
    ld b, $10
    dec b
    ld [$0904], sp
    dec b
    and b
    inc b
    add hl, bc
    dec b
    dec bc
    inc bc
    rst $38
    rst $38
    nop
    ld [bc], a
    rrca
    cpl
    ld [de], a
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [de], a
    inc bc
    ld a, [de]
    dec b
    db $10
    dec b
    and b
    ld [$0410], sp
    and b
    ld b, $10
    dec b
    rst $38
    rst $38
    nop
    ld bc, $000f
    and e
    inc d
    ld c, c
    ld bc, $024a
    ld c, c
    ld [bc], a
    and b
    ld b, $c7
    jr nz, jr_01e_55e0

    dec h
    rst $38
    rst $38
    nop

jr_01e_5599:
    ld bc, $000f
    and e
    inc d
    ld c, e
    ld bc, HeaderRAMSize
    ld c, d
    ld [bc], a
    ld c, e
    db $10
    rst $00
    jr nz, jr_01e_55f4

    db $10
    rst $38
    rst $38
    nop
    nop
    rrca
    nop
    rst $00
    jr nc, @+$52

    ld [bc], a
    and b
    rrca
    ld b, b
    ld [bc], a
    ld [de], a
    ld [$0230], sp
    ld [de], a
    add hl, bc
    ld b, b
    ld [bc], a
    ld [de], a
    ld [$0fa0], sp
    ld b, b
    ld [bc], a
    rra
    ld bc, $0c12
    and b
    ld b, $12
    db $10
    rst $38
    rst $38
    nop
    nop
    rrca
    nop
    ld b, e
    ld [bc], a
    ld d, b
    ld [bc], a
    rra
    ld bc, $0742
    and b
    ld [$0742], sp

jr_01e_55e0:
    and b
    inc b
    ld b, d
    rlca
    rst $38
    rst $38
    nop
    nop
    rrca
    inc hl
    xor [hl]
    db $10
    jr nz, jr_01e_55ef

    xor [hl]

jr_01e_55ef:
    nop
    add hl, de
    ld bc, $10ae

jr_01e_55f4:
    jr nz, jr_01e_55f7

    xor [hl]

jr_01e_55f7:
    nop
    add hl, de
    ld [bc], a
    xor [hl]
    db $10
    ld [hl+], a
    ld bc, $00ae
    ld [hl+], a
    ld bc, $10ae
    add hl, de
    ld bc, $00ae
    ld d, $02
    and b
    add hl, bc
    xor [hl]
    db $10
    add hl, de
    ld bc, $00ae
    ld d, $02
    and b
    rlca
    xor [hl]
    db $10
    add hl, de
    ld bc, $00ae
    ld d, $02
    and d
    ld bc, $1da1
    and b
    rrca
    xor [hl]
    nop
    ld h, $01
    jr z, jr_01e_562b

    xor [hl]

jr_01e_562b:
    db $10
    inc h
    ld bc, $0129
    xor [hl]
    nop
    ld h, $01
    jr z, jr_01e_5637

    xor [hl]

jr_01e_5637:
    db $10
    inc h
    ld bc, $00ae
    ld h, $02
    jr z, jr_01e_5641

    xor [hl]

jr_01e_5641:
    db $10
    inc h
    ld bc, $0129
    xor [hl]
    nop
    ld h, $01
    jr z, jr_01e_564d

    xor [hl]

jr_01e_564d:
    nop
    ld [hl+], a
    ld bc, $10ae
    inc h
    ld bc, $0128
    xor [hl]
    nop
    ld h, $02
    xor [hl]
    db $10
    inc h
    ld bc, $0128
    xor [hl]
    nop
    ld h, $01
    xor [hl]
    db $10
    inc h
    ld bc, $0128
    xor [hl]
    nop
    ld h, $02
    xor [hl]
    nop
    jr z, jr_01e_5674

    jr z, jr_01e_5675

jr_01e_5674:
    xor [hl]

jr_01e_5675:
    nop
    daa
    ld [bc], a
    xor [hl]
    nop
    jr z, jr_01e_567e

    jr z, jr_01e_567f

jr_01e_567e:
    xor [hl]

jr_01e_567f:
    nop
    daa
    ld [bc], a
    xor [hl]
    nop
    jr z, jr_01e_5688

    jr z, jr_01e_5689

jr_01e_5688:
    xor [hl]

jr_01e_5689:
    nop
    daa
    ld [bc], a
    xor [hl]
    nop
    add hl, hl
    ld [bc], a
    jr z, jr_01e_5693

    xor [hl]

jr_01e_5693:
    db $10
    jr z, jr_01e_5697

    add hl, hl

jr_01e_5697:
    ld bc, $00ae
    add hl, hl
    ld [bc], a
    jr z, jr_01e_569f

    xor [hl]

jr_01e_569f:
    db $10
    jr z, jr_01e_56a3

    xor [hl]

jr_01e_56a3:
    nop
    add hl, hl
    ld [bc], a
    jr z, jr_01e_56a9

    xor [hl]

jr_01e_56a9:
    db $10
    jr z, jr_01e_56ad

    add hl, hl

jr_01e_56ad:
    ld bc, $00ae
    add hl, hl
    ld [bc], a
    jr z, jr_01e_56b5

    xor [hl]

jr_01e_56b5:
    db $10
    jr z, jr_01e_56b9

    xor [hl]

jr_01e_56b9:
    nop
    add hl, hl
    ld [bc], a
    jr z, jr_01e_56bf

    xor [hl]

jr_01e_56bf:
    db $10
    jr z, jr_01e_56c3

    add hl, hl

jr_01e_56c3:
    ld bc, $00ae
    add hl, hl
    ld [bc], a
    jr z, jr_01e_56cb

    rra

jr_01e_56cb:
    ld bc, $10ae
    jr z, jr_01e_56d1

    add hl, hl

jr_01e_56d1:
    ld bc, $00ae
    add hl, hl
    ld [bc], a
    jr z, jr_01e_56d9

    and b

jr_01e_56d9:
    add hl, bc
    xor [hl]
    db $10
    ld a, [hl+]
    ld bc, $0128
    xor [hl]
    nop
    dec hl
    ld [bc], a
    xor [hl]
    db $10
    jr z, jr_01e_56e9

    xor [hl]

jr_01e_56e9:
    nop
    add hl, hl
    ld [bc], a

jr_01e_56ec:
    jr z, jr_01e_56ef

    xor [hl]

jr_01e_56ef:
    db $10
    jr z, jr_01e_56f3

    xor [hl]

jr_01e_56f3:
    nop
    add hl, hl
    ld [bc], a
    xor [hl]
    db $10
    jr z, @+$03

    jr z, jr_01e_56fd

    and b

jr_01e_56fd:
    inc bc
    xor [hl]
    db $10
    dec h
    ld bc, $00ae
    ld h, $02
    xor [hl]
    db $10
    dec h
    ld bc, $0128
    xor [hl]
    nop
    ld h, $02
    xor [hl]
    db $10
    dec h
    ld bc, $00ae
    ld h, $02
    rst $38
    rst $38
    nop
    nop
    rlca
    nop
    rra
    inc bc
    jp Jump_01e_7040


    jr nz, jr_01e_56ec

    ld [hl], b
    ld [hl], b
    ld d, b
    rst $38
    rst $38
    nop
    nop
    rrca
    nop
    ld b, b

jr_01e_572f:
    ld [bc], a
    ld h, b
    inc bc
    jr nz, jr_01e_573c

    ld de, $4002
    inc bc
    and b
    ld b, $c7
    db $10

jr_01e_573c:
    ld b, b
    dec b
    rst $38
    rst $38
    nop
    nop
    rrca
    nop
    ld b, b
    dec b
    ld h, b
    dec b
    jr nz, @+$0a

    ld de, $4002
    ld [$06a0], sp
    rst $00
    jr nz, jr_01e_5793

    ld [$021f], sp
    and b
    rrca
    ret nz

    cp $88
    ld [de], a
    ld d, b
    dec b
    ld h, b
    dec b
    ld b, b
    db $10
    rst $00
    db $10
    jr nc, @+$22

    rst $38
    rst $38
    nop
    nop
    rrca
    nop
    ld b, b
    ld [bc], a
    ld h, b
    inc bc
    jr nz, jr_01e_577a

    ld de, $4002
    inc bc
    and b
    ld b, $c7
    db $10

jr_01e_577a:
    ld b, b
    dec b
    ret nz

    cp $20
    rlca
    ld [de], a
    ld [$0811], sp
    rra
    ld bc, $0fa0
    ld d, b
    inc b
    ld h, b
    db $10
    rst $00
    jr nz, jr_01e_572f

    ld b, $60
    jr nz, @+$01

jr_01e_5793:
    rst $38
    nop
    nop
    rrca
    nop
    ld b, b
    ld [bc], a
    ld h, b
    inc bc
    jr nz, jr_01e_57a6

    ld de, $a002
    ld [$0340], sp
    and b
    dec b

jr_01e_57a6:
    rst $00
    db $10
    ld b, b
    ld [$fec0], sp
    and b
    rrca
    jp Jump_000_2107


    dec b
    inc hl
    dec b
    ret nz

    cp $23
    dec b
    ld [hl+], a
    ld [$0722], sp
    and b
    ld [$40c7], sp
    ld [hl+], a
    jr nz, @+$01

    rst $38
    nop
    nop
    rrca
    inc d
    rra
    ld [de], a
    xor [hl]
    db $10
    jr nc, jr_01e_57d0

    dec hl
    inc bc

jr_01e_57d0:
    rra
    ld [bc], a
    jr z, jr_01e_57d7

    dec hl
    inc bc
    rra

jr_01e_57d7:
    ld [bc], a
    dec hl
    inc b
    rra
    ld [bc], a
    jr z, jr_01e_57e0

    ld a, [de]
    inc bc

jr_01e_57e0:
    cpl
    ld bc, $031a
    rra
    ld [bc], a
    add hl, hl
    ld bc, $0218
    rra
    ld [bc], a
    daa
    ld bc, $0217
    ld h, $01
    dec h
    ld [bc], a
    inc h
    ld bc, $0223
    rra
    ld bc, $0122
    ld hl, $2002
    ld bc, $011b
    ld a, [de]
    ld bc, $0119
    jr jr_01e_5809

    rla

jr_01e_5809:
    ld bc, $011f
    ld d, $01
    dec d
    ld bc, $0114
    and b
    ld [$011f], sp
    dec d
    ld bc, $0117
    add hl, de
    ld bc, $06a0
    rra
    ld [bc], a
    jr jr_01e_5823

    dec de

jr_01e_5823:
    ld bc, $0117
    ld a, [de]
    ld bc, $0118
    dec de
    ld [bc], a
    inc d
    ld bc, $04a0
    rra
    ld [bc], a
    jr jr_01e_5835

    dec de

jr_01e_5835:
    ld bc, $0118
    rra
    ld [bc], a
    ld a, [de]
    ld bc, $0118
    rra
    ld [bc], a
    inc d
    ld bc, $0119
    dec de
    ld bc, $0119
    ld a, [de]
    ld bc, $ffff
    nop
    nop
    rrca
    nop
    ld b, b
    ld [bc], a
    ld h, b
    inc bc
    jr nz, jr_01e_585e

    ld de, $4002
    inc bc
    and b
    ld b, $c7
    db $10

jr_01e_585e:
    ld b, b
    dec b
    rst $38
    rst $38
    nop
    nop
    rrca
    nop
    ld h, b
    ld [bc], a
    sbc b
    inc bc
    ld b, e
    ld b, $c1
    db $10
    and b
    ld b, $43
    db $10
    rst $38
    rst $38

jr_01e_5874:
    nop
    nop
    rrca
    nop
    inc hl
    ld [bc], a
    ld sp, $1204
    dec b
    inc de
    dec b
    rst $00
    jr nz, jr_01e_58b3

    dec b
    ret nz

    cp $10
    db $10
    and b
    dec b
    rst $00
    jr nz, jr_01e_58ad

    db $10
    rst $38
    rst $38
    nop
    nop
    rrca
    nop
    ld b, b
    ld [bc], a
    ld h, b
    inc bc
    jr nz, jr_01e_58a2

    ld de, $4002
    inc bc
    and b
    ld b, $c7
    db $10

jr_01e_58a2:
    ld b, b
    dec b
    and b
    rrca
    rra
    inc bc
    jp Jump_01e_7030


    jr nz, jr_01e_5874

jr_01e_58ad:
    jr nc, @+$72

    jr nc, @+$01

    rst $38
    rst $38

jr_01e_58b3:
    rst $38
    nop
    nop
    rrca
    nop
    rst $00
    jr nz, @+$52

    ld bc, $0840
    ld hl, $a008
    ld [$1021], sp
    and b
    rrca
    ld d, e
    dec b
    ld b, [hl]
    ld b, $50
    inc bc
    jr nc, @+$05

    ld b, d
    ld [$20c7], sp
    ld b, d
    jr nz, @+$01

    rst $38
    nop
    nop
    rrca
    nop
    ld h, b
    inc b
    jr nc, jr_01e_58e0

    ld d, b
    ld [bc], a

jr_01e_58e0:
    jr nz, jr_01e_58e4

    ld b, b
    ld [bc], a

jr_01e_58e4:
    rra
    ld bc, $0250
    ld h, b
    inc b
    jr nc, jr_01e_58ee

    ld d, b
    ld [bc], a

jr_01e_58ee:
    jr nz, jr_01e_58f2

    ld b, b
    ld [bc], a

jr_01e_58f2:
    ld h, b
    ld [bc], a
    ld b, b
    dec b
    ld [hl+], a
    rlca
    pop bc
    jr nz, @+$42

    ld [$05a0], sp
    ld b, b
    db $10
    rst $38
    rst $38
    nop
    ld [bc], a
    rrca
    dec h
    ld [de], a
    ld b, $1f
    ld bc, $0612
    rra
    ld bc, $0612
    rra
    ld bc, $10ae
    ld [de], a
    ld b, $1f
    ld bc, $00ae
    dec d
    ld b, $1f
    ld bc, $0615
    rra
    ld bc, $0615
    rra
    ld bc, $10ae
    dec d
    ld b, $1f
    ld bc, $08a0
    dec d
    ld b, $1f
    ld bc, $0615
    rra
    ld bc, $0615
    rra
    ld bc, $0912
    rra
    ld bc, $ffff
    nop
    nop
    rrca
    nop
    rra
    ld d, l
    ld b, b
    inc bc
    ld b, c
    ld b, $70
    dec b
    ld h, b
    ld [hl+], a
    pop bc
    ld d, b
    and b
    rlca
    ld h, b
    db $10
    rst $38
    rst $38
    nop
    nop
    rrca
    ld h, $a0
    ld a, [bc]
    ld h, $03
    daa
    inc bc
    and b
    rrca
    jr z, @+$05

    add hl, hl
    inc bc
    jr nc, jr_01e_596b

    ld sp, $a003

jr_01e_596b:
    inc c
    ld [hl-], a
    inc bc
    inc sp
    inc bc
    and b
    ld a, [bc]
    ld [hl], $03
    scf
    ld [bc], a
    jr c, jr_01e_597a

    add hl, sp
    ld [bc], a

jr_01e_597a:
    and b
    rlca
    jr c, jr_01e_5980

    add hl, sp
    ld [bc], a

jr_01e_5980:
    ld a, [hl-]
    ld [bc], a
    and b
    dec b
    add hl, sp
    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    rra
    ld bc, $0239
    ld a, [hl-]
    ld [bc], a
    rra
    ld [bc], a
    and b
    rrca
    and c
    rla

jr_01e_5994:
    inc de
    inc bc
    ld [de], a

jr_01e_5997:
    inc b
    and c
    dec d
    ld de, $1003
    inc b
    and b
    rlca
    db $10
    inc b
    and b
    rrca
    dec bc
    inc bc
    and b
    ld b, $0b
    inc bc
    and b
    rrca
    ld a, [bc]
    inc bc
    and b
    ld [$030a], sp
    and b
    rrca
    add hl, bc
    inc bc
    and b
    ld [$0309], sp
    and b
    rrca
    add hl, bc
    inc b
    ld [$a006], sp
    ld b, $08
    ld b, $a0
    inc b
    ld [$ff06], sp
    rst $38
    nop
    nop
    rrca
    nop
    jp $117f


    jr nz, jr_01e_5994

    ld b, b
    ld de, $1f20
    ld [bc], a
    ret nz

    cp $a0
    dec b
    ld d, c
    db $10
    pop bc
    ld b, b
    ld d, c
    jr nc, @+$01

    rst $38
    nop
    nop
    rrca

jr_01e_59e7:
    nop
    jp $210a


    inc bc
    inc de
    ld [bc], a
    and b
    rrca
    jr nz, jr_01e_59fb

    ld [de], a
    db $10
    rst $00
    jr nz, jr_01e_5997

    ld [$2012], sp
    rst $38

jr_01e_59fb:
    rst $38
    nop
    nop
    rrca
    nop
    ld d, b
    ld [bc], a
    ld b, d
    ld [bc], a
    and b
    ld a, [bc]
    ld d, b
    ld bc, $0ca0
    ld b, b
    ld [bc], a
    ld b, d
    ld [bc], a
    and b
    rlca
    ld b, b
    ld bc, $0aa0
    ld b, b
    ld [bc], a
    ld b, d
    ld [bc], a
    and b
    dec b
    ld b, b
    ld bc, $0240
    ld b, d
    ld [bc], a
    ld b, b
    ld bc, $03a0
    ld b, b
    ld bc, $0240
    ld b, d
    ld [bc], a
    ld b, b
    ld bc, $ffff
    nop
    ld bc, $000f
    db $fd
    cp $ae
    db $10
    and l
    ldh a, [$cc]
    db $10
    ld h, b
    dec d
    and b
    rrca
    call z, Call_01e_6030
    dec h
    pop bc

jr_01e_5a43:
    jr nc, jr_01e_5aa5

    jr nz, jr_01e_59e7

    ld [$01c3], sp
    ld h, b
    inc b
    and b
    add hl, bc
    ld h, b
    inc b
    and b
    ld a, [bc]
    ld h, b
    inc b
    and b
    add hl, bc
    ld h, b
    inc b
    and b
    ld [$0460], sp
    and b
    ld b, $60
    inc b
    rra
    inc b
    and b
    rlca
    ld h, b
    inc b
    and b
    ld [$0460], sp
    and b
    add hl, bc
    ld h, b
    inc b
    and b
    ld [$0460], sp
    and b
    ld b, $60
    inc b
    rra
    inc b
    and b
    rlca
    ld h, b
    inc b
    and b
    ld [$0460], sp
    and b
    ld b, $60
    inc b
    rra
    inc b
    and b
    rlca
    pop bc
    ld b, b
    ld h, b
    ld b, b
    rra
    add b
    or c
    db $fc
    dec b
    nop
    rra
    jr nz, jr_01e_5a43

    nop
    and l
    rrca
    call z, Call_01e_6110
    dec d
    and b

jr_01e_5a9d:
    rrca
    call z, $6130
    dec h
    pop bc
    add hl, de
    ld h, c

jr_01e_5aa5:
    db $10
    and b
    ld [$01c3], sp
    ld h, c
    inc b
    and b
    add hl, bc
    ld h, c
    inc b
    and b

jr_01e_5ab1:
    ld a, [bc]
    ld h, c
    inc b
    and b
    add hl, bc
    ld h, c
    inc b
    and b
    ld [$0461], sp
    and b
    ld b, $61
    inc b
    rra
    inc b
    and b
    rlca
    ld h, c
    inc b
    and b
    ld [$0461], sp
    and b
    add hl, bc
    ld h, c
    inc b
    and b
    ld [$0461], sp
    and b
    ld b, $61
    inc b
    rra
    inc b
    and b
    rlca
    ld h, c
    inc b
    and b
    ld [$0461], sp
    and b
    ld b, $61
    inc b
    rra
    inc b
    and b
    rlca
    pop bc
    ld b, b
    ld h, c
    ld b, b
    rra
    jr nz, jr_01e_5a9d

    db $10
    and l
    ldh a, [$cc]
    db $10
    ld h, b
    dec d
    and b
    inc c
    call z, Call_01e_6030
    dec d
    pop bc
    jr nz, jr_01e_5b5f

    jr nz, jr_01e_5b20

    jr nz, jr_01e_5ab1

    nop
    call z, Call_01e_6110
    dec d
    and b
    dec c
    call z, $6130
    dec h
    pop bc
    add hl, de
    ld h, c
    db $10
    and b
    dec b
    jp Jump_01e_6101


    inc b
    and b
    rlca
    ld h, c
    inc b
    and b
    ld [$0461], sp

jr_01e_5b20:
    and b
    rlca
    ld h, c
    inc b
    and b
    ld b, $61
    inc b
    and b
    inc b
    ld h, c
    inc b
    rra
    inc b
    and b
    dec b
    ld h, c
    inc b
    and b
    ld b, $61
    inc b
    and b
    rlca
    ld h, c
    inc b
    and b
    ld b, $61
    inc b
    and b
    inc b
    ld h, c
    inc b

jr_01e_5b42:
    rra
    inc b
    and b
    dec b
    ld h, c
    inc b
    and b
    ld b, $61
    inc b
    and b
    inc b
    ld h, c
    inc b
    rra
    inc b
    and b
    dec b
    pop bc
    ld b, b
    ld h, c
    ld b, b
    rra
    jr nz, @-$4e

    nop
    rst $38
    rst $38
    nop

jr_01e_5b5f:
    ld [bc], a
    rrca
    nop
    db $fd
    cp $1f
    ld [hl], b
    xor [hl]
    db $10
    and l
    rrca
    call z, Call_01e_6010
    dec d
    and b
    rrca
    call z, Call_01e_6030
    dec h
    pop bc
    jr nc, jr_01e_5bd7

    ld b, b
    and b
    ld [$241f], sp
    call z, Call_01e_6030
    jr nz, jr_01e_5b42

    ld d, b
    ld h, b
    jr nz, jr_01e_5ba4

    add b
    or c
    db $fc
    ld b, $00
    xor [hl]
    nop
    and l
    ldh a, [$cc]
    db $10
    ld h, c
    dec d
    and b

jr_01e_5b93:
    rrca
    call z, $6130
    dec h
    pop bc
    add hl, de
    ld h, c
    db $10
    and b
    ld [$01c3], sp
    ld h, c
    inc b
    and b
    add hl, bc

jr_01e_5ba4:
    ld h, c
    inc b
    and b

jr_01e_5ba7:
    ld a, [bc]
    ld h, c
    inc b
    and b
    add hl, bc
    ld h, c
    inc b
    and b
    ld [$0461], sp
    and b
    ld b, $61
    inc b
    rra
    inc b
    and b
    rlca
    ld h, c
    inc b
    and b
    ld [$0461], sp
    and b
    add hl, bc
    ld h, c
    inc b
    and b
    ld [$0461], sp
    and b
    ld b, $61
    inc b
    rra
    inc b
    and b
    rlca
    ld h, c
    inc b
    and b
    ld [$0461], sp
    and b

jr_01e_5bd7:
    ld b, $61
    inc b
    rra
    inc b
    and b
    rlca
    pop bc
    ld b, b
    ld h, c
    ld b, b
    rra
    jr nz, jr_01e_5b93

    db $10
    and l
    rrca
    call z, Call_01e_6010
    dec d
    and b
    inc c
    call z, Call_01e_6030
    dec d
    pop bc
    jr nz, jr_01e_5c55

    db $10
    rra
    jr nz, jr_01e_5ba7

    nop
    call z, Call_01e_6110
    dec d
    and b
    dec c
    call z, $6130
    dec h
    pop bc

jr_01e_5c05:
    add hl, de
    ld h, c
    db $10
    and b
    dec b
    jp Jump_01e_6101


    inc b
    and b
    rlca
    ld h, c
    inc b
    and b
    ld [$0461], sp
    and b
    rlca
    ld h, c

jr_01e_5c19:
    inc b
    and b
    ld b, $61
    inc b
    and b
    inc b

jr_01e_5c20:
    ld h, c
    inc b
    rra
    inc b
    and b
    dec b
    ld h, c
    inc b
    and b

jr_01e_5c29:
    ld b, $61
    inc b
    and b

jr_01e_5c2d:
    rlca
    ld h, c
    inc b
    and b
    ld b, $61
    inc b
    and b
    inc b
    ld h, c
    inc b
    rra
    inc b
    and b
    dec b
    ld h, c

jr_01e_5c3d:
    inc b
    and b
    ld b, $61

jr_01e_5c41:
    inc b
    and b
    inc b
    ld h, c
    inc b
    rra
    inc b
    and b

jr_01e_5c49:
    dec b
    pop bc
    ld b, b
    ld h, c

jr_01e_5c4d:
    db $10
    rra
    db $10
    or b

jr_01e_5c51:
    nop
    rst $38
    rst $38
    inc bc

jr_01e_5c55:
    nop
    inc c
    nop
    db $fd
    cp $a0
    inc c
    rra
    jr jr_01e_5c20

    ccf
    and b
    dec c
    dec h
    jr jr_01e_5c05

    inc c
    dec h
    jr jr_01e_5c8b

    jr jr_01e_5c8d

jr_01e_5c6b:
    jr jr_01e_5c87

    jr jr_01e_5c8a

jr_01e_5c6f:
    jr jr_01e_5c91

    jr jr_01e_5c8d

    jr @-$5e

    dec c
    daa
    jr jr_01e_5c19

    inc c
    daa
    jr @+$25

    jr jr_01e_5ca2

jr_01e_5c7f:
    jr @+$25

    jr @+$25

jr_01e_5c83:
    jr jr_01e_5ca5

    jr @+$1b

jr_01e_5c87:
    jr jr_01e_5c29

    dec c

jr_01e_5c8a:
    dec de

jr_01e_5c8b:
    jr jr_01e_5c2d

jr_01e_5c8d:
    inc c
    jr nz, @+$1a

    ld [hl+], a

jr_01e_5c91:
    jr jr_01e_5cae

jr_01e_5c93:
    jr jr_01e_5cb8

    jr @+$29

jr_01e_5c97:
    jr jr_01e_5cb3

    jr jr_01e_5cbb

    jr jr_01e_5c3d

    dec c
    inc h
    jr jr_01e_5c41

    inc c

jr_01e_5ca2:
    inc h
    jr jr_01e_5cbf

jr_01e_5ca5:
    jr jr_01e_5cc1

    jr jr_01e_5c49

    ld a, [bc]
    add hl, de
    jr jr_01e_5c4d

    inc c

jr_01e_5cae:
    ld a, [de]
    jr jr_01e_5c51

    ld c, $1b

jr_01e_5cb3:
    jr jr_01e_5c55

    dec c
    jr nz, jr_01e_5cd0

jr_01e_5cb8:
    and b
    inc c
    dec h

jr_01e_5cbb:
    jr @+$27

    jr jr_01e_5ce1

jr_01e_5cbf:
    jr jr_01e_5ce3

jr_01e_5cc1:
    jr jr_01e_5cdd

    jr jr_01e_5ce0

    jr jr_01e_5ce7

    jr jr_01e_5ce3

    jr jr_01e_5c6b

    dec c
    daa
    jr jr_01e_5c6f

    inc c

jr_01e_5cd0:
    daa
    jr @+$25

    jr jr_01e_5cf8

    jr @+$25

    jr @+$25

    jr jr_01e_5cfb

    jr @+$1b

jr_01e_5cdd:
    jr jr_01e_5c7f

    dec c

jr_01e_5ce0:
    dec de

jr_01e_5ce1:
    jr jr_01e_5c83

jr_01e_5ce3:
    inc c
    jr nz, @+$1a

    ld [hl+], a

jr_01e_5ce7:
    jr jr_01e_5d04

    jr @+$25

    jr jr_01e_5d14

    jr jr_01e_5d09

    jr jr_01e_5d11

    jr jr_01e_5c93

    dec c
    inc h
    jr jr_01e_5c97

    inc c

jr_01e_5cf8:
    inc h
    jr @+$25

jr_01e_5cfb:
    jr jr_01e_5d20

    jr jr_01e_5d21

jr_01e_5cff:
    jr @-$3d

    rra
    and b

jr_01e_5d03:
    dec c

jr_01e_5d04:
    inc hl
    ld [$0823], sp
    inc hl

jr_01e_5d09:
    ld [$50c1], sp
    ld [hl+], a
    jr @+$21

    jr @-$4f

jr_01e_5d11:
    inc bc
    and d
    nop

jr_01e_5d14:
    and b
    dec c
    and c
    nop
    pop bc
    ld d, b
    add hl, hl
    jr @+$1b

    ld [$0820], sp

jr_01e_5d20:
    dec h

jr_01e_5d21:
    ld [$2fc1], sp
    add hl, hl
    jr @+$21

    jr @-$3d

    ld d, b
    dec h
    jr jr_01e_5d4f

    ld [$0825], sp
    ld a, [hl+]
    ld [$2fc1], sp
    ld [hl-], a
    jr @+$21

    jr @-$3d

    ccf
    daa
    jr jr_01e_5d67

    jr jr_01e_5d60

    jr jr_01e_5d6b

    jr jr_01e_5d73

    jr jr_01e_5d6f

    jr jr_01e_5d70

    jr @+$1b

    jr jr_01e_5d6b

    jr @+$1b

    jr jr_01e_5d6f

jr_01e_5d4f:
    jr jr_01e_5d77

    jr jr_01e_5d75

    jr jr_01e_5d77

    jr jr_01e_5d7c

    jr jr_01e_5d7e

    jr jr_01e_5cfb

    dec b
    dec h
    jr jr_01e_5cff

    dec c

jr_01e_5d60:
    ld a, [hl+]
    jr jr_01e_5d03

    dec b
    ld a, [hl+]
    jr @-$5e

jr_01e_5d67:
    dec c
    add hl, hl
    jr @-$5e

jr_01e_5d6b:
    ld [$0523], sp
    dec h

jr_01e_5d6f:
    inc b

jr_01e_5d70:
    inc hl
    inc bc
    dec h

jr_01e_5d73:
    inc bc
    inc hl

jr_01e_5d75:
    inc bc
    dec h

jr_01e_5d77:
    inc bc
    inc hl
    inc bc
    dec h
    inc bc

jr_01e_5d7c:
    inc hl
    inc bc

jr_01e_5d7e:
    dec h
    inc bc
    inc hl
    inc bc
    dec h
    inc bc
    inc hl
    inc bc
    dec h
    inc bc
    inc hl
    inc bc
    pop bc
    ld [hl], b
    and b
    ld a, [bc]
    ld [hl+], a
    inc c
    and b
    dec b
    ld [hl+], a
    jr jr_01e_5db4

    inc c
    and b
    dec c
    pop bc
    ld c, a
    rra
    ld [$081f], sp
    and b
    dec c
    inc hl
    ld [$06a0], sp
    inc hl
    db $10
    and b
    dec c
    inc hl
    ld [$06a0], sp
    inc hl
    db $10
    and b
    dec c
    inc hl
    ld [$06a0], sp

jr_01e_5db4:
    inc hl
    db $10
    and b
    dec c
    inc hl
    ld [$06a0], sp
    inc hl
    db $10
    and b
    dec c
    ld [hl+], a
    ld [$06a0], sp
    ld [hl+], a
    db $10
    and b
    dec c
    ld [hl+], a
    ld [$06a0], sp
    ld [hl+], a
    db $10
    and b
    dec c
    ld [hl+], a
    ld [$06a0], sp
    ld [hl+], a
    db $10
    and b
    dec c
    ld [hl+], a

jr_01e_5dd9:
    ld [$0ca0], sp
    pop bc
    jr nc, jr_01e_5df9

    ld [$05a0], sp
    ld a, [de]
    ld [$0ca0], sp
    ld a, [de]
    ld [$fcb2], sp
    push bc
    nop
    jr nz, jr_01e_5df6

    and b
    dec b
    jr nz, jr_01e_5dfa

    and b
    inc c
    jr nz, jr_01e_5dfe

jr_01e_5df6:
    ld hl, $a008

jr_01e_5df9:
    dec b

jr_01e_5dfa:
    ld hl, $a008
    inc c

jr_01e_5dfe:
    ld hl, $b308
    db $fc
    pop de
    nop
    inc hl
    ld [$05a0], sp
    inc hl
    ld [$0ca0], sp
    inc hl
    ld [$fcb3], sp
    ret c

    nop
    jp nz, $2320

    jr jr_01e_5dd9

    dec d
    ld a, [de]
    ld [$081a], sp
    ld a, [de]
    ld [$0827], sp
    daa
    ld [$0827], sp
    ld a, [hl+]
    ld [$082a], sp
    ld a, [hl+]
    ld [$30c1], sp
    jr z, jr_01e_5e36

    daa
    ld [$0828], sp
    jr nc, jr_01e_5e3c

    and b
    dec b

jr_01e_5e36:
    jr nc, jr_01e_5e40

    and b
    inc c
    jr nc, jr_01e_5e44

jr_01e_5e3c:
    ld a, [hl+]
    ld [$05a0], sp

jr_01e_5e40:
    ld a, [hl+]
    ld [$0ca0], sp

jr_01e_5e44:
    ld a, [hl+]
    ld [$0828], sp
    and b
    dec b
    jr z, jr_01e_5e54

    and b
    inc c
    jr z, jr_01e_5e58

    inc hl
    ld [$05a0], sp

jr_01e_5e54:
    inc hl
    ld [$0ca0], sp

jr_01e_5e58:
    inc hl
    ld [$1823], sp
    daa
    ld [$05a0], sp
    daa
    ld [$0ca0], sp
    daa
    ld [$1823], sp
    inc hl
    ld [$05a0], sp
    inc hl
    ld [$0ca0], sp
    inc hl
    ld [$fcb3], sp
    ld a, [bc]
    ld bc, $0822
    and b
    dec b
    ld [hl+], a
    ld [$0ca0], sp
    ld [hl+], a
    ld [$fcb3], sp
    ld de, $af01
    inc bc
    and d
    nop
    and b
    inc c
    and c
    nop
    pop bc
    jr nc, jr_01e_5eb2

    ld [$05a0], sp
    inc hl
    ld [$0ca0], sp
    inc hl
    ld [$fcb9], sp
    dec e
    ld bc, $0820
    and b
    dec b
    jr nz, @+$0a

    and b
    inc c
    jr nz, jr_01e_5eae

    or c
    db $fc
    inc h
    ld bc, $081a
    and b
    dec b

jr_01e_5eae:
    ld a, [de]
    ld [$0ca0], sp

jr_01e_5eb2:
    ld a, [de]
    ld [$081a], sp
    and b
    dec b
    ld a, [de]
    ld [$0ca0], sp
    ld [hl+], a

jr_01e_5ebd:
    ld [$0823], sp
    and b
    dec b
    inc hl
    ld [$0ca0], sp
    inc hl
    ld [$fcb1], sp
    dec [hl]
    ld bc, $40c1
    inc h
    ld [$0827], sp
    ld a, [hl+]
    ld [$1834], sp
    dec h
    ld [$0829], sp
    jr nc, jr_01e_5ee4

    dec [hl]
    jr @+$24

    ld [$0825], sp
    jr z, @+$0a

jr_01e_5ee4:
    ld [hl-], a
    jr jr_01e_5f0e

    ld [$082a], sp
    ld sp, $3708
    jr jr_01e_5f0f

jr_01e_5eef:
    ld [$0823], sp

jr_01e_5ef2:
    ld h, $08
    jr nc, jr_01e_5f0e

    add hl, de
    ld [$0820], sp
    ld h, $08
    add hl, hl
    jr jr_01e_5f21

    ld [$0825], sp
    dec hl
    ld [$0832], sp

jr_01e_5f06:
    dec hl
    ld [$0825], sp
    ld a, [de]
    ld [$0824], sp

jr_01e_5f0e:
    daa

jr_01e_5f0f:
    ld [$082a], sp
    daa
    ld [$0824], sp
    pop bc
    ld a, a
    and b
    rrca
    dec d
    jr jr_01e_5ebd

    inc c
    rra
    jr jr_01e_5f45

jr_01e_5f21:
    jr jr_01e_5f46

jr_01e_5f23:
    jr jr_01e_5f47

    jr jr_01e_5f4a

    jr jr_01e_5f4c

    jr jr_01e_5f51

    jr jr_01e_5eef

    dec d
    daa
    jr jr_01e_5ef2

    jr nc, @+$25

    ld [$0827], sp
    ld a, [hl+]
    ld [$15c2], sp
    inc sp
    jr @-$3d

jr_01e_5f3d:
    jr nc, jr_01e_5f66

    jr @-$3e

    cp $23
    jr jr_01e_5f06

jr_01e_5f45:
    ld a, a

jr_01e_5f46:
    and b

jr_01e_5f47:
    ld [$1823], sp

jr_01e_5f4a:
    and b
    dec c

jr_01e_5f4c:
    jp nz, $2315

jr_01e_5f4f:
    jr @-$4e

jr_01e_5f51:
    nop
    rst $38
    inc bc
    ld bc, $000f
    db $fd
    cp $a0
    rrca
    and e
    ld [$3fc1], sp
    dec h
    jr jr_01e_5f23

    ld a, a
    ld [hl-], a
    jr jr_01e_5f06

jr_01e_5f66:
    ld [$1232], sp
    and b
    dec c
    jr nc, jr_01e_5f73

    ld a, [hl+]
    ld [de], a
    add hl, hl
    ld b, $2a
    ld [de], a

jr_01e_5f73:
    ld [hl-], a
    ld b, $c0
    cp $a3

jr_01e_5f78:
    rrca
    daa
    jr nc, jr_01e_5f3d

    ld a, a
    and e
    ld [$07a0], sp
    daa
    jr @-$5e

    dec c
    daa
    jr @+$35

jr_01e_5f88:
    jr @-$5e

    ld [$1233], sp
    and b
    dec c
    ld [hl-], a
    ld b, $30
    ld [de], a
    dec hl

jr_01e_5f94:
    ld b, $30
    ld [de], a
    inc sp
    ld b, $c0
    cp $a3
    rrca
    add hl, hl
    jr nc, @-$3d

    ld a, a
    and e
    ld [$07a0], sp
    add hl, hl

jr_01e_5fa6:
    jr @-$5e

    dec c
    dec h
    jr jr_01e_5f4f

jr_01e_5fac:
    cp $35
    jr @-$5e

    ld [$1235], sp
    and b
    dec c
    inc sp
    ld b, $32
    ld [de], a
    inc sp
    ld b, $35
    ld [de], a
    ld [hl], $06

jr_01e_5fbf:
    scf
    jr jr_01e_5ff5

    jr jr_01e_5ff4

    jr jr_01e_5ff8

    ld [de], a
    inc sp
    ld b, $32

jr_01e_5fca:
    jr jr_01e_5ffc

    ld [de], a
    ld a, [hl+]
    ld b, $27
    jr jr_01e_6004

jr_01e_5fd2:
    jr jr_01e_5f94

    cp $30
    jr nc, jr_01e_5f78

    ld b, $c1
    ld h, b
    and e
    ld [$1830], sp
    pop bc
    ld a, a
    and b
    dec c
    dec h
    jr jr_01e_6018

    jr jr_01e_5f88

    ld [$1232], sp
    and b
    dec c
    jr nc, jr_01e_5ff5

    ld a, [hl+]
    ld [de], a
    add hl, hl
    ld b, $2a

jr_01e_5ff4:
    ld [de], a

jr_01e_5ff5:
    ld [hl-], a
    ld b, $a3

jr_01e_5ff8:
    rrca
    ret nz

    cp $27

jr_01e_5ffc:
    jr nc, jr_01e_5fbf

    ld a, a

jr_01e_5fff:
    and e
    ld [$07a0], sp
    daa

jr_01e_6004:
    jr jr_01e_5fa6

    dec c
    daa
    jr @+$35

    jr jr_01e_5fac

    ld [$1233], sp
    and b

Call_01e_6010:
    dec c
    ld [hl-], a
    ld b, $30
    ld [de], a
    dec hl

jr_01e_6016:
    ld b, $30

jr_01e_6018:
    ld [de], a
    inc sp
    ld b, $a3
    rrca
    ret nz

    cp $29
    jr nc, @-$5b

    ld [$7fc1], sp
    and b
    rlca
    add hl, hl
    jr jr_01e_5fca

    dec c
    dec h
    jr @-$5b

    cp $35

Call_01e_6030:
    jr jr_01e_5fd2

    ld [$1235], sp
    and b
    dec c
    inc sp
    ld b, $32
    ld [de], a
    inc sp
    ld b, $35
    ld [de], a
    ld [hl], $06
    scf
    jr jr_01e_6077

    jr jr_01e_6076

    jr @+$34

    ld [de], a
    inc sp
    ld b, $32
    jr @+$32

    ld [de], a
    ld a, [hl+]
    ld b, $27
    jr @+$2b

    jr jr_01e_6016

    cp $a3
    rrca
    ld a, [hl+]
    jr nc, jr_01e_5fff

    ld [$06a0], sp
    pop bc
    ld h, b
    ld a, [hl+]
    ld [de], a
    and b
    dec c
    pop bc

jr_01e_6066:
    ld a, a
    ld a, [hl+]
    ld b, $29
    ld [de], a
    ld a, [hl+]
    ld b, $af
    inc bc
    and d
    ld bc, $0da0
    and c
    nop
    pop bc

jr_01e_6076:
    ld b, b

jr_01e_6077:
    and e
    ld [$1830], sp
    dec h
    ld [$0829], sp
    jr nc, jr_01e_6089

jr_01e_6081:
    dec [hl]
    inc c
    and b
    ld b, $35
    ld b, $a0
    dec c

jr_01e_6089:
    pop bc
    ld [hl], b
    jr nc, @+$08

    ld a, [hl+]
    ld [de], a
    jr nc, jr_01e_6097

    ld [hl-], a
    jr jr_01e_60b9

    ld [$082a], sp

jr_01e_6097:
    ld [hl-], a

jr_01e_6098:
    ld [$0c35], sp
    and b
    ld b, $35
    ld b, $a0
    dec c
    pop bc
    ld [hl], b

jr_01e_60a3:
    ld [hl-], a
    ld b, $30
    ld [de], a
    ld [hl-], a
    ld b, $a3
    cp $33
    ld [de], a

jr_01e_60ad:
    ld [hl-], a
    ld b, $33
    ld [de], a
    dec [hl]
    ld b, $37
    ld [de], a
    ld [hl], $06
    scf
    ld [de], a

jr_01e_60b9:
    ld a, [hl-]
    ld b, $39
    jr @+$39

    jr jr_01e_6081

    ld d, b
    and b
    dec bc
    dec [hl]
    jr jr_01e_6066

    dec c
    pop bc
    ld a, a
    dec h
    jr @-$3e

    cp $a3
    ld [$3026], sp
    pop bc
    ld a, a
    and e
    cp $33
    jr @+$34

    jr @+$32

    jr @+$2c

    jr jr_01e_6107

    jr @+$2c

    jr jr_01e_60a3

    ld d, b
    daa
    ld [de], a
    pop bc
    ld a, a
    daa
    ld b, $33
    jr jr_01e_60ad

    ld d, b
    dec h
    ld [de], a
    pop bc
    ld a, a
    and b
    dec c
    dec h
    ld b, $33
    jr jr_01e_6098

    add hl, bc
    jr nc, jr_01e_6100

    ld [hl-], a
    inc b
    jr nc, @+$05

    ld [hl-], a

jr_01e_6100:
    inc bc

Jump_01e_6101:
    jr nc, @+$05

    ld [hl-], a
    inc bc
    jr nc, @+$05

jr_01e_6107:
    ld [hl-], a
    inc bc
    jr nc, @+$05

    ld [hl-], a
    inc bc
    jr nc, @+$05

    ld [hl-], a

Call_01e_6110:
    inc bc
    jr nc, @+$05

    ld [hl-], a
    inc bc
    jr nc, jr_01e_611a

    pop bc
    ld [hl], b
    and b

jr_01e_611a:
    ld a, [bc]
    ld a, [hl+]
    inc c
    and b
    rlca
    ld a, [hl+]
    jr jr_01e_6141

    inc c
    and b
    dec c
    pop bc
    jr nc, jr_01e_6147

    db $10
    daa
    ld [$08a0], sp
    daa
    ld [$081f], sp
    and b
    dec c
    daa
    ld [$08a0], sp
    daa
    ld [$081f], sp
    and b
    dec c
    daa
    ld [$08a0], sp

jr_01e_6141:
    daa
    ld [$081f], sp
    and b

jr_01e_6146:
    dec c

jr_01e_6147:
    daa
    ld [$08a0], sp
    daa
    ld [$081f], sp
    and b
    dec c
    jr z, jr_01e_615b

    and b
    ld [$0828], sp
    rra
    ld [$0da0], sp

jr_01e_615b:
    jr z, jr_01e_6165

    and b
    ld [$0828], sp
    rra
    ld [$0da0], sp

jr_01e_6165:
    jr z, jr_01e_616f

    and b

jr_01e_6168:
    ld [$0828], sp
    rra
    ld [$0da0], sp

jr_01e_616f:
    jr z, jr_01e_6179

    and b
    dec b
    jr z, jr_01e_617d

    and b
    dec c
    and e
    ld a, [bc]

jr_01e_6179:
    rra
    db $10
    pop bc
    ld d, b

jr_01e_617d:
    daa
    jr jr_01e_6141

    ld a, a
    daa
    jr @+$2a

    jr jr_01e_6146

    cp $2a
    inc h
    and b

jr_01e_618a:
    ld [$7fc1], sp
    and e
    nop

jr_01e_618f:
    ld a, [hl+]
    inc c
    and b
    dec c

jr_01e_6193:
    and e
    ld [$1827], sp

jr_01e_6197:
    inc hl
    jr jr_01e_61ca

    ld [$082b], sp

jr_01e_619d:
    jr nc, jr_01e_61a7

    inc sp
    jr jr_01e_61d4

jr_01e_61a2:
    jr jr_01e_61d4

    jr jr_01e_6168

    dec d

jr_01e_61a7:
    ld a, [hl+]
    jr @+$25

    ld [$0823], sp
    inc hl
    ld [$082a], sp
    ld a, [hl+]
    ld [$082a], sp
    inc sp
    ld [$0833], sp
    inc sp
    ld [$7fc1], sp
    jr nc, @+$0a

    dec hl
    ld [$0830], sp
    inc sp
    jr @+$34

    jr @+$32

    jr jr_01e_618a

jr_01e_61ca:
    cp $2a
    jr nc, jr_01e_618f

    ld a, a

jr_01e_61cf:
    inc sp
    jr jr_01e_6193

    ld d, b
    scf

jr_01e_61d4:
    jr jr_01e_6197

    ld a, a
    ret nz

    cp $37
    jr nc, jr_01e_619d

    ld a, a
    jr nc, @+$1a

    scf
    jr jr_01e_61a2

    cp $35
    jr nc, jr_01e_61a7

    ld a, a
    and b
    ld [$1835], sp
    and b
    dec c
    dec h
    ld [$0824], sp
    dec h
    ld [$03af], sp
    and d
    ld bc, $0fa0
    and c
    nop
    and e
    ld a, [bc]
    and b
    dec c

jr_01e_61ff:
    daa
    ld [$04a0], sp
    daa
    ld [$0da0], sp
    jr nc, @+$0a

    ret nz

    cp $37
    jr nc, jr_01e_61cf

    ld a, a
    and b
    ld [$1837], sp
    or c
    db $fc
    ld d, l
    ld bc, $0da0
    daa
    ld [$04a0], sp
    daa
    ld [$0da0], sp
    jr nc, @+$0a

    ret nz

    cp $35
    jr nc, @-$3d

    ld a, a
    and b
    ld [$1835], sp
    and b
    dec c
    ld [hl-], a
    ld [$04a0], sp
    ld [hl-], a
    ld [$0da0], sp
    inc sp
    ld [$fec0], sp
    ld a, [hl+]
    jr nc, jr_01e_61ff

    ld a, a
    and b
    ld [$182a], sp
    pop bc
    ld b, b
    and b
    dec c
    jr nc, @+$0a

    inc [hl]
    ld [$0837], sp
    ld b, b
    jr jr_01e_6280

    ld [$0833], sp
    add hl, sp
    ld [$1840], sp
    ld a, [hl+]
    ld [$0832], sp
    dec [hl]
    ld [$183a], sp
    ld a, [hl+]
    ld [$0831], sp
    scf
    ld [$183a], sp
    jr z, jr_01e_6271

    jr nc, @+$0a

    inc sp
    ld [$1838], sp
    ld h, $08

jr_01e_6271:
    add hl, hl
    ld [$0830], sp
    ld [hl], $18
    dec h
    ld [$082b], sp
    ld [hl-], a
    ld [$0835], sp
    ld [hl-], a

jr_01e_6280:
    ld [$082b], sp
    inc h
    ld [$0827], sp
    ld a, [hl+]
    ld [$0834], sp
    ld a, [hl+]
    ld [$0827], sp
    and b
    inc b
    pop bc
    ld d, b
    daa
    jr @-$5e

    dec c
    pop bc
    ld a, a
    dec h
    jr @+$29

    jr jr_01e_62c7

    jr jr_01e_62ca

    jr jr_01e_62cd

    jr @+$32

    jr @+$34

    jr @-$3e

    cp $33
    jr @-$5e

    ld [$1833], sp
    and b
    dec c
    and e
    cp $37
    jr jr_01e_62e9

    jr @-$3d

    ld a, a
    dec [hl]
    db $10
    scf
    db $10
    jr c, jr_01e_62cf

    jp nz, $3915

    jr @-$4e

    nop
    rst $38
    inc bc

jr_01e_62c7:
    ld b, b
    ld [bc], a
    dec bc

jr_01e_62ca:
    db $fd
    cp $a2

jr_01e_62cd:
    ld b, b
    rra

jr_01e_62cf:
    jr jr_01e_62eb

    jr @+$1b

    jr @+$19

    jr @+$17

    jr @+$15

    jr jr_01e_62ed

    jr jr_01e_62ed

    jr @+$15

    jr jr_01e_6301

    jr jr_01e_62fd

    jr @+$1b

    jr @+$19

    jr @+$17

jr_01e_62e9:
    jr @+$19

jr_01e_62eb:
    jr @+$1b

jr_01e_62ed:
    jr @+$17

    jr @+$19

    jr @+$1b

    jr @+$1d

    jr @+$19

jr_01e_62f7:
    jr jr_01e_6319

    jr @+$25

    jr @+$29

jr_01e_62fd:
    jr @+$25

    jr jr_01e_6321

jr_01e_6301:
    jr @+$19

    jr jr_01e_6319

jr_01e_6305:
    jr jr_01e_6327

    jr @+$17

    jr jr_01e_6321

    jr @+$19

    jr @+$1b

    jr jr_01e_632b

    jr @+$1b

    jr @+$19

    jr @+$17

    jr @+$15

jr_01e_6319:
    jr jr_01e_632d

    jr jr_01e_632d

    jr @+$15

    jr jr_01e_6341

jr_01e_6321:
    jr jr_01e_633d

    jr @+$1b

    jr @+$19

jr_01e_6327:
    jr @+$17

    jr @+$19

jr_01e_632b:
    jr @+$1b

jr_01e_632d:
    jr @+$17

    jr @+$19

    jr jr_01e_634c

jr_01e_6333:
    jr jr_01e_6350

    jr @+$19

    jr jr_01e_6359

    jr jr_01e_635e

    jr @+$29

jr_01e_633d:
    jr jr_01e_6362

    jr jr_01e_6361

jr_01e_6341:
    jr jr_01e_6363

    jr @+$17

    jr jr_01e_635c

    jr jr_01e_6363

    jr jr_01e_62ed

    db $10

jr_01e_634c:
    dec d
    ld [$0815], sp

jr_01e_6350:
    dec d

jr_01e_6351:
    ld [$30a2], sp
    ld a, [de]

jr_01e_6355:
    jr jr_01e_62f7

    ld b, $1a

jr_01e_6359:
    jr @-$4f

    inc bc

jr_01e_635c:
    and d

jr_01e_635d:
    ld b, b

jr_01e_635e:
    and b
    ld [bc], a
    and c

jr_01e_6361:
    dec bc

jr_01e_6362:
    and d

jr_01e_6363:
    jr nc, jr_01e_6305

    ld [bc], a
    dec d
    jr jr_01e_6389

    ld [$0825], sp
    add hl, hl
    ld [$1830], sp
    and b
    ld b, $a2
    db $10
    jr nc, @+$1a

    and b
    ld [bc], a
    and d
    jr nc, jr_01e_6395

    jr jr_01e_63a7

    ld [$0832], sp
    dec [hl]
    ld [$183a], sp
    and d
    db $10
    and b

jr_01e_6387:
    ld b, $3a

jr_01e_6389:
    jr jr_01e_632b

    ld [bc], a
    and d
    jr nz, jr_01e_63af

    jr jr_01e_6333

    jr nc, jr_01e_63b3

    jr jr_01e_63b9

jr_01e_6395:
    jr jr_01e_63ab

    jr @+$17

    jr @+$19

    jr jr_01e_63b6

    jr @+$17

    jr jr_01e_63b3

    jr jr_01e_63c5

    jr jr_01e_63cb

    jr jr_01e_63c9

jr_01e_63a7:
    jr @+$19

    jr jr_01e_63d2

jr_01e_63ab:
    jr @+$19

    jr @+$29

jr_01e_63af:
    jr jr_01e_6351

    ld b, $27

jr_01e_63b3:
    jr jr_01e_6355

    ld [bc], a

jr_01e_63b6:
    jr nz, jr_01e_63d0

    and b

jr_01e_63b9:
    ld b, $20
    jr jr_01e_635d

    ld [bc], a
    dec h
    jr jr_01e_63db

    jr @+$17

    jr jr_01e_63df

jr_01e_63c5:
    inc c
    and b
    ld b, $1a

jr_01e_63c9:
    inc c
    and b

jr_01e_63cb:
    ld [bc], a
    and d
    ld c, a
    ld a, [de]
    db $10

jr_01e_63d0:
    jr nz, @+$06

jr_01e_63d2:
    ld [hl+], a
    inc b
    inc hl
    jr jr_01e_63f9

    jr jr_01e_63f9

    jr jr_01e_63f5

jr_01e_63db:
    jr jr_01e_63f5

    jr @+$19

jr_01e_63df:
    jr @+$17

    jr jr_01e_63fd

    jr jr_01e_6387

    ld d, b
    inc de
    ld [$06a0], sp
    inc de
    ld [$02a0], sp
    daa
    ld [$081a], sp
    and b
    ld b, $1a

jr_01e_63f5:
    ld [$02a0], sp
    daa

jr_01e_63f9:
    ld [$0813], sp
    and b

jr_01e_63fd:
    ld b, $13
    ld [$02a0], sp
    daa
    ld [$0823], sp
    and b
    ld b, $23
    ld [$02a0], sp
    jr z, jr_01e_6416

    inc de
    ld [$06a0], sp
    inc de
    ld [$02a0], sp

jr_01e_6416:
    daa
    ld [$081a], sp
    and b
    ld b, $1a
    ld [$02a0], sp
    daa
    ld [$0813], sp
    and b
    ld b, $13
    ld [$02a0], sp
    daa
    ld [$081a], sp
    and b
    ld b, $1a
    ld [$02a0], sp
    daa
    ld [$0818], sp
    and b
    ld b, $18
    ld [$02a0], sp
    jr nc, @+$0a

    or e
    db $fc
    cp b
    nop
    and d
    rra
    rla
    jr jr_01e_6470

    ld [$0827], sp
    daa
    ld [$0833], sp
    inc sp
    ld [$0833], sp
    scf
    ld [$0837], sp
    scf
    ld [$20a2], sp
    jr @+$0a

    and b
    ld b, $18
    ld [$02a0], sp
    inc sp
    ld [$0818], sp
    and b
    ld b, $18
    ld [$02a0], sp
    jr z, @+$0a

jr_01e_6470:
    or c
    db $fc
    ret nc

    nop
    jr @+$0a

    and b
    ld b, $18
    ld [$02a0], sp
    inc sp
    ld [$0817], sp
    and b
    inc b
    rla
    ld [$02a0], sp
    rla
    ld [$1827], sp
    jr nz, jr_01e_6494

    and b
    inc b
    jr nz, @+$0a

    and b
    ld [bc], a
    jr nz, @+$0a

jr_01e_6494:
    jr nc, @+$1a

    dec d
    ld [$06a0], sp
    dec d
    ld [$02a0], sp
    add hl, hl
    ld [$fcb1], sp
    add sp, $00
    jr nz, @+$0a

    and b
    inc b
    jr nz, jr_01e_64b2

    and b
    ld [bc], a
    add hl, hl
    ld [$0815], sp
    and b
    inc b

jr_01e_64b2:
    dec d
    ld [$02a0], sp
    add hl, hl
    ld [$081a], sp
    and b
    inc b
    ld a, [de]
    ld [$02a0], sp
    and d
    dec d
    jr z, jr_01e_64cc

    and d
    jr nz, @+$2a

    ld [$04a0], sp
    jr z, jr_01e_64d4

jr_01e_64cc:
    and b
    ld [bc], a
    jr z, jr_01e_64d8

    rla
    ld [$04a0], sp

jr_01e_64d4:
    rla
    ld [$02a0], sp

jr_01e_64d8:
    and d
    dec d
    dec hl
    ld [$20a2], sp
    dec hl
    ld [$04a0], sp
    dec hl
    ld [$02a0], sp
    dec hl
    ld [$03af], sp
    and b
    ld [bc], a
    and c
    dec bc
    jr nz, jr_01e_64f8

    and b
    inc b
    jr nz, jr_01e_64fc

    and b
    ld [bc], a
    jr nc, jr_01e_6500

jr_01e_64f8:
    jr nc, jr_01e_6502

    and b
    inc b

jr_01e_64fc:
    jr nc, jr_01e_6506

    and b
    ld [bc], a

jr_01e_6500:
    jr nc, jr_01e_650a

jr_01e_6502:
    dec de
    ld [$04a0], sp

jr_01e_6506:
    dec de
    ld [$02a0], sp

jr_01e_650a:
    dec hl
    ld [$082b], sp
    and b
    inc b
    dec hl
    ld [$02a0], sp
    dec hl
    ld [$081a], sp
    and b
    inc b
    ld a, [de]
    ld [$02a0], sp
    ld a, [hl+]
    ld [$082a], sp
    and b
    inc b
    ld a, [hl+]
    ld [$02a0], sp
    ld a, [hl+]
    ld [$0819], sp
    and b
    inc b
    add hl, de
    ld [$02a0], sp
    add hl, hl
    ld [$0829], sp
    and b
    inc b
    add hl, hl
    ld [$02a0], sp
    add hl, hl
    ld [$0818], sp
    and b
    inc b
    jr jr_01e_654c

    and b
    ld [bc], a
    jr z, jr_01e_6550

    jr z, jr_01e_6552

    and b
    inc b

jr_01e_654c:
    jr z, jr_01e_6556

    and b
    ld [bc], a

jr_01e_6550:
    jr z, jr_01e_655a

jr_01e_6552:
    ld [de], a
    ld [$04a0], sp

jr_01e_6556:
    ld [de], a
    ld [$02a0], sp

jr_01e_655a:
    jr z, jr_01e_6564

    jr z, jr_01e_6566

    and b
    inc b
    jr z, jr_01e_656a

    and b
    ld [bc], a

jr_01e_6564:
    jr z, jr_01e_656e

jr_01e_6566:
    rla
    ld [$04a0], sp

jr_01e_656a:
    rla
    ld [$02a0], sp

jr_01e_656e:
    daa
    ld [$0827], sp
    and b
    inc b
    daa
    ld [$02a0], sp
    daa
    ld [$0820], sp
    and b
    inc b
    jr nz, jr_01e_6588

    and b

jr_01e_6581:
    ld [bc], a
    daa
    ld [$0827], sp
    and b
    inc b

jr_01e_6588:
    daa

jr_01e_6589:
    ld [$02a0], sp
    daa
    ld [$0827], sp
    ld a, [hl+]
    ld [$0834], sp
    scf
    jr @+$2b

    ld [$0830], sp
    inc sp

jr_01e_659b:
    ld [$1839], sp
    dec h

jr_01e_659f:
    ld [$0828], sp
    ld [hl-], a
    ld [$1835], sp
    inc hl
    ld [$0827], sp
    ld a, [hl+]
    ld [$1833], sp
    inc hl

jr_01e_65af:
    ld [$0826], sp
    jr nc, @+$0a

    inc sp
    jr jr_01e_65d9

jr_01e_65b7:
    ld [$0826], sp
    add hl, hl
    ld [$1832], sp
    daa
    ld [$04a0], sp
    daa
    ld [$02a0], sp
    daa
    ld [$0aa1], sp
    rla
    jr jr_01e_656e

    dec bc
    jr nc, jr_01e_65d8

    and b
    inc b
    jr nc, jr_01e_65dc

    and b
    ld [bc], a
    jr nc, @+$0a

jr_01e_65d8:
    and c

jr_01e_65d9:
    ld a, [bc]
    jr nz, @+$1a

jr_01e_65dc:
    and d
    rst $38
    dec d
    jr jr_01e_6581

    inc b
    dec d
    jr @-$5e

    ld b, $15
    jr jr_01e_6589

    ld [bc], a
    and d
    ld [hl], b
    and c
    dec bc
    jr nc, jr_01e_6608

    ld a, [hl+]
    jr jr_01e_661a

    jr jr_01e_660e

    jr @+$24

    jr jr_01e_659b

    jr z, jr_01e_661b

    jr jr_01e_659f

    jr nz, @+$22

    ld [$0823], sp
    daa
    ld [$1fa2], sp
    jr nc, jr_01e_6620

jr_01e_6608:
    and d
    jr nz, @+$22

    jr jr_01e_65af

    rst $38

jr_01e_660e:
    dec hl
    jr @-$5e

    inc b
    dec hl
    jr jr_01e_65b7

    jr nz, jr_01e_65b7

    ld [bc], a
    jr nc, jr_01e_6632

jr_01e_661a:
    or b

jr_01e_661b:
    nop
    rst $38
    rst $38
    ld c, $0f

jr_01e_6620:
    nop
    ld bc, $0f0d
    ld a, b
    scf
    ld b, [hl]
    inc e
    dec c
    rrca
    ld [$0d09], sp
    ld b, $0e
    add d
    rrca
    ld a, b

jr_01e_6632:
    inc b
    ld e, h
    add l
    ld a, b
    ld [de], a
    inc de
    ld a, b
    jr nz, jr_01e_6642

    ld a, b
    add d
    ld h, l
    ld c, a
    inc b
    ld e, h
    add d

jr_01e_6642:
    ld a, b
    dec c
    inc bc
    ld c, $83
    ld l, b
    ld a, a
    ld l, c
    inc b
    ld c, $81
    rrca
    inc bc
    ld a, b
    add h
    ld b, [hl]
    ld a, [hl-]
    ld a, b
    dec c
    inc b
    ld c, $8a
    rrca
    ld a, b
    jr c, jr_01e_6694

    ld h, l
    ld h, l
    ld [hl], e
    ld d, d
    ld d, [hl]
    dec c
    ld b, $0e
    add c
    rrca
    add hl, bc
    ld a, b
    add e
    ld c, a
    ld h, l
    ld h, l
    ld b, $78
    add h
    ld c, a
    ld a, b
    ld h, l
    ld h, l
    ld [$8278], sp
    ld h, l
    ld h, l
    ld [$8278], sp
    ld h, l
    ld h, l
    inc b
    ld e, h
    adc e
    dec c
    rrca
    dec e
    rra
    ld a, b
    jr c, jr_01e_66c2

    dec e
    ld e, $1e
    rra
    inc b
    ld a, b
    add h
    ld c, a
    ld a, b
    ld a, b
    dec d
    ld b, $16

jr_01e_6694:
    add c
    daa
    inc bc
    ld c, $8e
    rrca
    ld [$0d09], sp
    rrca
    ld a, b
    scf
    ld a, [hl-]
    inc e
    dec c
    rrca
    nop
    ld bc, $050d
    ld c, $82
    ld [hl], l
    ld [hl], d
    inc bc
    ld a, b
    adc d
    ld [de], a
    inc de
    ld a, b
    ld a, [de]
    dec de
    ld [de], a
    inc de
    ld a, b
    ld a, b
    ld b, b
    inc b
    ld a, b
    add d
    ld h, l
    ld d, a
    inc b
    ld e, h
    add d
    ld a, b

jr_01e_66c2:
    dec c
    inc bc
    ld c, $83
    ld l, b
    ld a, a
    ld l, c
    inc b
    ld c, $82
    rrca
    ld b, b
    inc bc
    ld a, b
    add e
    ld b, [hl]
    ld a, [hl-]
    dec c
    inc b
    ld c, $81
    rrca
    inc bc
    ld a, b
    add [hl]
    ld h, l
    ld h, l
    ld h, d
    ld h, d
    ld a, d
    dec c
    ld b, $0e
    add a
    rrca
    ld a, h
    ld a, b
    ld a, b
    ld [hl], e
    ld d, c
    ld d, [hl]
    inc bc
    ld a, b
    add e
    ld d, a
    ld h, l
    ld h, l
    inc bc
    ld a, b
    add a
    ld [hl], e
    ld d, c
    ld d, [hl]
    ld d, a
    ld b, b
    ld h, l
    ld h, l
    inc bc
    ld a, b
    sub c
    ld [hl], e
    ld d, c
    ld d, [hl]
    ld b, b
    ld b, b
    ld h, l
    ld h, l
    ld b, b
    ld b, b
    ld a, b
    ld [hl], e
    ld d, c
    ld d, [hl]
    ld a, b
    ld b, b
    ld h, l
    ld h, l
    inc b
    ld e, h
    sub l
    dec c
    rrca
    ld a, b
    ld a, h
    ld a, b
    ld a, [hl-]
    jr c, jr_01e_6792

    ld [hl], e
    ld d, c
    ld d, [hl]
    ld b, b
    ld a, b
    ld b, b
    ld b, b
    ld d, a
    ld [hl], e
    ld d, c
    ld d, [hl]
    ld a, b
    ld h, l
    inc b
    ld a, b
    add c
    ld [hl], b
    inc b
    ld [hl], c
    adc l
    nop
    ld bc, $0f0d
    ld a, b
    scf
    ld b, [hl]
    inc e
    dec c
    rrca
    ld [$0d09], sp
    dec b
    ld c, $95
    ld [hl], l
    ld [hl], d
    ld hl, sp+$78
    jr nz, jr_01e_675e

    dec de
    jr nz, @+$7a

    jr nz, jr_01e_6763

    dec de
    jr nz, jr_01e_676c

    ld c, b
    ld a, b
    ld a, b
    inc h
    dec h
    ld h, l
    inc a
    dec b
    ld a, b
    add c
    dec c
    inc bc
    ld c, $83
    ld l, b
    ld a, a
    ld l, c
    inc b

jr_01e_675e:
    ld c, $82
    rrca
    ld c, b
    inc b

jr_01e_6763:
    ld a, b
    add d
    ld b, [hl]
    dec c
    inc b
    ld c, $81
    rrca
    inc bc

jr_01e_676c:
    ld a, b
    add [hl]
    ld h, l
    ld h, l
    ld h, d
    ld h, d
    ld a, d
    dec c
    ld b, $0e
    add d
    rrca
    db $fd
    ld [$8378], sp
    inc a
    ld h, l
    ld h, l
    ld b, $78
    add h
    inc a
    ld c, b
    ld h, l
    ld h, l
    ld b, $78
    add [hl]
    ld c, b
    ld c, b
    ld h, l
    ld h, l
    ld c, b
    ld c, b
    dec b
    ld a, b
    add e

jr_01e_6792:
    ld c, b
    ld h, l
    ld h, l
    inc b
    ld e, h
    add a
    dec c
    rrca
    ld a, b
    db $fd
    ld a, b
    ld b, [hl]
    inc [hl]
    inc b
    ld a, b
    add l
    ld c, b
    ld a, b
    ld c, b
    ld c, b
    inc a
    inc b
    ld a, b
    add c
    ld h, l
    inc b
    ld a, b
    add c
    ld [hl], b
    inc b
    ld [hl], c
    adc l
    ld [$0d09], sp
    rrca
    ld a, b
    scf
    ld a, [hl-]
    dec b
    cpl
    rrca
    nop
    ld bc, $060d
    ld c, $81
    ld l, $0b
    ld b, $83
    ld l, d
    ld l, e
    ld l, h
    inc bc
    ld b, $88
    rlca
    jr c, jr_01e_680a

    ld h, e
    ld h, e
    ld a, [hl-]
    jr c, @+$0f

    inc bc
    ld c, $83
    ld l, b
    ld a, a
    ld l, c
    inc b
    ld c, $88
    rrca
    jr c, jr_01e_681b

    jr c, jr_01e_681a

    ld a, [hl-]
    jr c, jr_01e_67f2

    inc b
    ld c, $81
    rrca
    inc bc
    ld a, b
    add d
    ld h, l
    ld h, l
    inc bc
    ld a, b
    add c
    dec c

jr_01e_67f2:
    ld b, $0e
    add c
    ld l, $2e
    ld b, $82
    cpl
    ld l, $17
    ld b, $81
    cpl
    inc bc
    ld c, $8e
    ld l, $06
    ld b, $2f
    rrca
    ld a, b
    scf
    ld b, [hl]

jr_01e_680a:
    dec d
    ld d, $17
    ld [$0d09], sp
    ld [de], a
    ld c, $83
    ld l, b
    ld a, a
    ld l, c
    inc bc
    ld c, $88
    rrca

jr_01e_681a:
    dec [hl]

jr_01e_681b:
    ld b, a
    ld a, b
    ld a, b
    ld b, [hl]
    inc [hl]
    dec c
    inc bc
    ld c, $83
    ld l, b
    ld a, a
    ld l, c
    inc b
    ld c, $88
    rrca
    dec [hl]
    ld b, a
    ld a, b
    ld a, b
    ld b, [hl]
    inc [hl]
    dec c
    inc b
    ld c, $81
    rrca
    inc bc
    ld a, b
    add d
    scf
    scf
    inc bc
    ld a, b
    add c
    dec c
    ld d, [hl]
    ld c, $8a
    rrca
    ld a, b
    scf
    ld a, [hl-]
    ld a, b
    ld a, b
    dec l
    nop
    ld bc, $120d
    ld c, $83
    ld l, b
    ld a, a
    ld l, c
    inc bc
    ld c, $88
    rrca
    jr c, jr_01e_6893

    ld a, b
    ld a, b
    ld a, [hl-]
    jr c, jr_01e_686a

    inc bc
    ld c, $83
    ld l, b
    ld a, a
    ld l, c
    inc b
    ld c, $82
    rrca
    ld b, a
    inc b
    ld a, b

jr_01e_686a:
    add d
    ld b, [hl]
    dec c
    inc b
    ld c, $81
    rrca
    inc bc
    ld a, d
    add [hl]
    ld h, l
    ld h, l
    jr c, jr_01e_68b3

    ld a, b
    dec c
    ld d, [hl]
    ld c, $8a
    rrca
    ld [hl], e
    ld d, c
    ld d, [hl]
    dec b
    ld b, $07
    ld [$0d09], sp
    ld [de], a
    ld c, $83
    ld l, b
    ld a, a
    ld l, c
    inc bc
    ld c, $88
    rrca
    dec [hl]
    ld b, a

jr_01e_6893:
    ld a, b
    ld a, b
    ld b, [hl]
    inc [hl]
    dec d
    inc bc
    ld d, $83
    ld l, b
    ld a, a
    ld l, c
    inc b
    ld d, $88
    rla
    ld a, b
    ld a, b
    ld [hl], e
    ld d, e
    ld d, [hl]
    ld a, b
    dec c
    inc b
    ld c, $81
    rrca
    inc bc
    ld a, d
    add [hl]
    ld h, l
    ld h, l
    dec [hl]

jr_01e_68b3:
    ld b, a
    ld a, b
    dec c
    ld d, [hl]
    ld c, $8a
    rrca
    ld a, b
    scf
    ld a, [hl-]
    dec c
    ld c, $0f
    nop
    ld bc, $120d
    ld c, $83
    ld l, b
    ld a, a
    ld l, c
    inc bc
    ld c, $88
    rrca
    ld b, a
    ld [hl], e
    ld d, e
    ld d, [hl]
    ld a, b
    ld b, [hl]
    ld h, l
    inc bc
    ld a, d
    add e
    ld l, l
    ld l, [hl]
    ld l, a
    ld b, $7a
    inc b
    ld h, d
    add d
    ld a, d
    dec c
    inc b
    ld c, $81
    rrca
    inc bc
    ld a, b
    add [hl]
    ld h, l
    ld h, l
    jr c, jr_01e_6924

    ld a, b
    dec c
    ld d, [hl]
    ld c, $8a
    rrca
    ld a, b
    scf
    ld b, [hl]
    dec d
    ld d, $17
    ld [$0d09], sp
    ld [de], a
    ld c, $83
    ld l, b
    ld a, a
    ld l, c
    inc bc
    ld c, $82
    rrca
    ld a, b
    inc b
    ld e, h
    add d
    ld c, a
    ld h, l
    inc c
    ld a, d
    inc b
    ld h, d
    add d
    ld a, d
    dec c
    inc b
    ld c, $86
    rrca
    ld a, b
    jr c, jr_01e_6954

    ld h, l
    ld h, l
    inc bc
    ld a, b
    add c
    dec c
    ld d, [hl]
    ld c, $8a
    rrca
    ld a, b

jr_01e_6924:
    scf
    ld a, [hl-]
    ld a, b
    ld a, b
    dec l
    nop
    ld bc, $120d
    ld c, $83
    ld l, b
    ld a, a
    ld l, c
    inc bc
    ld c, $82
    rrca
    ld a, b
    inc b
    ld e, h
    add d
    ld d, a
    ld h, l
    inc bc
    ld a, b
    adc a
    ld b, b
    ld b, b
    ld [de], a
    inc de
    ld a, b
    ld a, b
    ld [de], a
    inc de
    jr nz, jr_01e_69c1

    ld [de], a
    inc de
    jr nz, jr_01e_696d

    dec c
    inc b
    ld c, $8a
    rrca
    ld a, b
    dec [hl]

jr_01e_6954:
    ld b, a
    ld h, l
    ld h, l
    ld [hl], e
    ld d, e
    ld d, [hl]
    dec c
    ld d, [hl]
    ld c, $8a
    rrca
    ld a, b
    scf
    ld b, [hl]
    dec b
    ld b, $07
    ld [$0d09], sp
    ld [de], a
    ld c, $83
    ld l, b
    ld a, a

jr_01e_696d:
    ld l, c
    inc bc
    ld c, $81
    rrca
    dec b
    ld a, b
    sub h
    inc a
    ld h, l
    inc h
    dec h
    ld a, b
    ld c, b
    ld c, b
    ld a, [de]
    dec de
    jr nz, jr_01e_69a0

    ld a, [de]
    dec de
    jr nz, jr_01e_69a4

    ld a, [de]
    dec de
    jr nz, jr_01e_69a8

    dec c
    inc b
    ld c, $86
    rrca
    ld a, b
    ld a, [hl-]
    jr c, jr_01e_69f6

    ld h, l
    inc bc
    ld a, d
    add c
    dec c
    ld d, [hl]
    ld c, $8a
    rrca
    ld a, b
    scf
    ld a, [hl-]
    dec c
    ld c, $0f

jr_01e_69a0:
    nop
    ld bc, $120d

jr_01e_69a4:
    ld c, $83
    ld l, b
    ld a, a

jr_01e_69a8:
    ld l, c
    inc bc
    ld c, $88
    rrca
    jr c, jr_01e_69ea

    ld h, e
    ld h, e
    ld a, [hl-]
    jr c, jr_01e_69b9

    inc bc
    ld b, $83
    ld l, d
    ld l, e

jr_01e_69b9:
    ld l, h
    dec bc
    ld b, $81
    cpl
    inc b
    ld c, $8a

jr_01e_69c1:
    rrca
    ld a, b
    ld b, [hl]
    inc [hl]
    ld h, l
    ld h, l
    ld h, d
    ld h, d
    ld a, d
    dec c
    ld d, [hl]
    ld c, $8a
    rrca
    ld a, b
    scf
    ld b, [hl]
    dec d
    ld d, $17
    ld [$0d09], sp
    ld b, $0e
    add c
    ld h, $06
    ld d, $81
    daa
    inc b
    ld c, $83
    ld l, b
    ld a, a
    ld l, c
    inc bc
    ld c, $88
    rrca

jr_01e_69ea:
    dec [hl]
    ld b, a
    ld a, b
    ld a, b
    ld b, [hl]
    inc [hl]
    dec c
    inc bc
    ld c, $83
    ld l, b
    ld a, a

jr_01e_69f6:
    ld l, c
    db $10
    ld c, $8a
    rrca
    ld a, b
    jr c, jr_01e_6a36

    ld h, l
    ld h, l
    ld e, h
    ld e, h
    ld a, b
    dec c
    ld d, [hl]
    ld c, $8a
    rrca
    ld a, b
    scf
    ld a, [hl-]
    ld a, b
    ld a, b
    dec l
    ld a, b
    ld a, b
    dec c
    ld b, $0e
    add c
    rrca
    ld b, $78
    add c
    dec c
    inc b
    ld c, $83
    ld l, b
    ld a, a
    ld l, c
    inc bc
    ld c, $88
    rrca
    jr c, jr_01e_6a60

    ld a, b
    ld a, b
    ld a, [hl-]
    jr c, jr_01e_6a37

    inc bc
    ld c, $83
    ld l, b
    ld a, a
    ld l, c
    db $10
    ld c, $81
    rrca
    inc bc
    ld a, d

jr_01e_6a36:
    add [hl]

jr_01e_6a37:
    ld h, l
    ld h, l
    ld e, h
    ld e, h
    ld a, b
    dec c
    ld d, [hl]
    ld c, $8a
    rrca
    ld [hl], e
    ld d, d
    ld d, [hl]
    dec b
    ld b, $07
    ld a, b
    ld a, b
    dec c
    ld b, $0e
    adc b
    rrca
    ld a, b
    ld [hl], e
    ld d, h
    ld d, [hl]
    ld a, b
    ld a, b
    dec d
    inc b
    ld d, $83
    ld l, b
    ld a, a
    ld l, c
    inc bc
    ld d, $88
    rla
    dec [hl]

jr_01e_6a60:
    ld b, a
    ld a, b
    ld a, b
    ld b, [hl]
    inc [hl]
    dec c
    inc bc
    ld c, $83
    ld l, b
    ld a, a
    ld l, c
    db $10
    ld c, $81
    rrca
    inc bc
    ld a, d
    add d
    ld h, l
    ld h, l
    inc bc
    ld a, b
    add c
    dec c
    ld d, [hl]
    ld c, $8a
    rrca
    ld a, b
    scf
    ld a, [hl-]
    dec d
    ld d, $17
    ld a, b
    ld a, b
    dec c
    ld b, $0e
    add c
    rrca
    dec bc
    ld a, c
    add e
    ld l, l
    ld l, [hl]
    ld l, a
    inc bc
    ld a, c
    adc b
    ld h, l
    ld b, a
    ld [hl], e
    ld d, h
    ld d, [hl]
    ld a, b
    ld b, [hl]
    dec c
    inc bc
    ld c, $83
    ld l, b
    ld a, a
    ld l, c
    db $10
    ld c, $81
    rrca
    inc bc
    ld a, b
    add d
    scf
    scf
    inc bc
    ld a, b
    add c
    dec c
    ld d, [hl]
    ld c, $85
    rrca
    ld a, b
    ld a, b
    ld b, [hl]
    inc [hl]
    inc b
    ld a, b
    add c
    dec c
    ld b, $0e
    add c
    rrca
    inc bc
    ld a, b
    add d
    ld [de], a

jr_01e_6ac2:
    inc de
    inc c
    ld a, b
    add d
    ld h, l
    ld c, a
    inc b
    ld e, h
    add d
    ld a, b
    dec c
    inc bc
    ld c, $83
    ld l, b
    ld a, a
    ld l, c
    db $10
    ld c, $81
    rrca
    inc bc
    ld a, b
    add [hl]
    ld h, l
    ld h, l
    ld a, [hl-]
    ld a, [hl-]
    ld a, b
    dec c
    ld d, [hl]
    ld c, $8b
    rrca
    ld a, b
    ld a, b
    ld a, [hl-]
    ld b, [hl]
    ld a, [hl-]
    ld a, b
    dec sp
    ld a, b
    ld a, b
    ld [hl], l
    dec b
    ld c, $8f
    rrca
    ld [de], a
    inc de
    ld hl, $1b1a
    ld [de], a
    inc de
    ld a, b
    jr nz, jr_01e_6b74

    ld a, b
    ld [de], a
    inc de
    ld b, b
    inc bc
    ld a, b
    add d
    ld h, l
    ld d, a
    inc b
    ld e, h
    add d
    ld a, b
    dec c
    inc bc
    ld c, $83
    ld l, b
    ld a, a
    ld l, c
    db $10
    ld c, $8a
    rrca
    ld a, h
    ld a, b
    ld a, b
    ld h, l
    ld h, l
    ld [hl], e
    ld d, h
    ld d, [hl]
    dec c
    ld d, [hl]
    ld c, $8b
    rrca
    inc a
    ld a, b
    ld b, [hl]
    inc [hl]
    ld b, [hl]
    dec sp
    ld b, a
    ld a, b
    ld hl, sp+$75
    dec b
    ld c, $88
    rrca
    ld a, [de]
    dec de
    and d
    jr nz, jr_01e_6b54

    ld a, [de]
    dec de
    inc bc
    jr nz, jr_01e_6ac2

    ld a, b
    ld a, [de]
    dec de
    ld c, b
    ld a, b
    inc h
    dec h
    ld h, l
    inc a
    dec b
    ld a, b
    add c
    dec c
    inc bc
    ld c, $83
    ld l, b
    ld a, a
    ld l, c
    db $10
    ld c, $8a
    rrca
    db $fd
    ld a, b
    ld a, b
    ld h, l

jr_01e_6b54:
    ld h, l
    ld a, [hl-]
    ld a, [hl-]
    ld a, b
    dec c
    ld d, [hl]
    ld c, $81
    ld l, $09
    ld b, $06
    ld c, $81
    ld l, $0b
    ld b, $83
    ld l, d
    ld l, e
    ld l, h
    ld a, [bc]
    ld b, $81
    cpl
    inc bc
    ld c, $83
    ld l, b
    ld a, a
    ld l, c
    db $10

jr_01e_6b74:
    ld c, $81
    ld l, $08
    ld b, $81
    cpl
    ld d, [hl]
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_01e_7030:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_01e_7040:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
