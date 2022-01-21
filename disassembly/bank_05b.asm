; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05b", ROMX[$4000], BANK[$5b]

    ld e, e
    ld b, l
    ld b, b
    ret z

    ld b, b
    push af
    ld b, b
    db $fc
    ld b, b
    rrca
    ld b, c
    ld [hl+], a
    ld b, c
    dec [hl]
    ld b, c
    ld c, b
    ld b, c
    ld e, c
    ld b, c
    ld l, h
    ld b, c
    ld a, a
    ld b, c
    rst $08
    ld b, e
    pop de
    ld b, [hl]
    ld c, c
    ld c, b
    ld a, [de]
    ld c, d
    ld d, $4b
    ld [hl], $4c
    rlca
    ld c, a
    xor a
    ld d, c
    ld a, [hl-]
    ld d, h
    ret nz

    ld d, [hl]
    ld a, [de]
    ld e, c
    ld d, l
    ld e, e
    jp c, Jump_000_235b

    ld e, [hl]
    ld e, l
    ld e, [hl]
    ld a, b
    ld e, [hl]
    db $f4
    ld e, [hl]
    ld hl, $a565
    ld h, a
    pop bc
    ld l, [hl]
    ld b, [hl]
    ld [hl], c
    ld d, l
    ld [hl], h
    adc l
    ld a, d
    nop
    ld [bc], a
    ld bc, $a001
    rst $38
    ld c, l
    ld bc, $0f5f
    ld c, l
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld e, $ff
    ld hl, sp-$01
    inc b
    rst $38
    inc c
    rst $38
    ld b, b
    rst $38
    inc a
    rst $38
    nop
    rst $38
    ld [$30ff], sp
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$d001], sp
    ld bc, $ff4a
    db $fc
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld b, d
    ld bc, $01ce
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    ld l, b
    rst $38
    ld c, d
    rst $38
    adc h
    ld bc, $0f60
    ld c, l
    ld bc, $1f5f
    ld c, l
    rst $38
    dec b
    rst $38
    ld b, l
    rst $38
    ld b, h
    rst $38
    jr c, @+$01

    ld h, b
    rst $38
    add b
    rst $38
    add d
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    jr c, @+$01

    nop
    rst $38
    inc a
    rst $38
    ld b, d
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    jr c, @+$01

    dec b
    rst $38
    dec c
    ld bc, $0bd4
    ld b, b
    rst $38
    adc [hl]
    rst $38
    sub b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    ld c, [hl]
    nop
    ld bc, $ff01
    dec b
    rst $38
    dec d
    rst $38
    sub b
    rst $38
    cp h
    rst $38
    adc b
    ld bc, $0108
    ld d, b
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    ld [$3cff], sp
    rst $38
    ld b, d
    rst $38
    sbc d
    rst $38
    inc h
    rst $38
    jr jr_05b_40eb

    and b

jr_05b_40eb:
    rst $38
    ld c, l
    ld bc, $0f7f
    ld c, l
    ld bc, $0fdf
    dec c
    stop
    ld bc, $01ff
    rst $38
    ei
    stop
    ld bc, $00ff
    rst $38
    ld a, $ff
    ld a, a
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld [hl], a
    rst $38
    ld a, $ff
    ld a, [hl+]
    stop
    nop
    rst $38
    ld h, b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    ld h, h
    rst $38
    ld a, [bc]
    rst $38
    inc h
    rst $38
    ld d, b
    rst $38
    jr nz, jr_05b_4133

    nop
    nop
    rst $38
    ldh a, [rIE]
    jr nz, @+$01

    ld b, b
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ld [bc], a
    rst $38
    inc b

jr_05b_4133:
    rst $38
    rrca
    stop
    ld bc, $00ff
    rst $38
    inc a
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    inc c
    rst $38
    jr @+$01

    nop
    rst $38
    jr jr_05b_4159

    nop
    ld bc, $00ff
    rst $38
    inc e
    rst $38
    ld [hl+], a
    rst $38
    ld e, l
    ld bc, $0106
    ld [hl+], a
    rst $38
    inc e

jr_05b_4159:
    stop
    ld bc, $00ff
    rst $38
    ld b, d
    rst $38
    jr @+$01

    inc h
    rst $38
    inc h
    rst $38
    jr @+$01

    ld b, d
    rst $38
    nop
    stop
    ld bc, $00ff
    rst $38
    inc e
    rst $38
    ld [hl], $ff
    ld h, e
    rst $38
    ld [hl], a
    rst $38
    ld [hl], $ff
    ld a, $ff
    ld a, $00
    ld [$0b0b], sp
    rst $38
    pop af
    rrca
    nop
    jr c, jr_05b_4189

jr_05b_4189:
    ldh [rP1], a
    ldh a, [rP1]
    ld a, [hl]
    dec bc
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
    dec bc
    db $fc
    push af
    ld c, $0b
    ld b, $01
    rst $38
    nop
    ld a, a
    dec bc
    cp $f3
    ld bc, $0700
    nop
    inc a
    nop
    ldh a, [$0b]
    db $fc
    push af
    ld bc, $0e01
    ld c, $31
    jr nc, jr_05b_4206

    ld b, b
    or b
    ret nz

    jr nc, jr_05b_41bd

jr_05b_41bd:
    inc bc
    inc bc
    ld a, h
    ld a, h
    add e
    ret nz

    inc a
    nop
    ret nz

    dec bc
    cp $f3
    db $fc
    db $fc
    ld [bc], a

jr_05b_41cc:
    ld b, $f9
    ld b, $09
    ld [$0016], sp
    jr c, jr_05b_41e0

    ld e, b
    ld bc, $0001
    ld bc, $f90b
    ld hl, sp-$10
    rrca
    nop

jr_05b_41e0:
    db $fc
    dec bc
    ld a, [c]
    rst $38
    nop
    inc bc
    nop
    inc c
    dec bc
    ld a, $05
    ld e, $00
    rst $38
    dec bc
    ld e, b
    ld [bc], a
    ld bc, $0406
    dec de
    dec bc
    ld h, b
    nop
    ld c, $f1
    ld c, $11
    inc e
    ld [hl+], a
    jr nc, jr_05b_41cc

    add b
    ld [hl], b
    nop
    add b
    nop
    nop

jr_05b_4206:
    nop
    rlca
    nop
    inc e
    db $10
    jr z, @+$22

    ld d, b
    ld [hl], b
    adc a
    ld a, a
    add b
    nop
    ld a, a
    dec bc
    ld e, b
    dec b
    ld bc, $ff00
    ldh [rNR32], a
    nop
    ldh [$0b], a
    cp $f3
    jr jr_05b_422e

    sbc $05
    dec bc
    ei
    or $01
    ld bc, $0706
    jr jr_05b_4239

jr_05b_422e:
    cp $f4
    rrca
    ld [hl], b
    ld a, h
    add e
    dec bc
    call c, $0f03
    rrca

jr_05b_4239:
    ldh a, [$fc]
    inc bc
    dec bc
    ld d, [hl]
    rlca
    ld hl, sp-$08
    ld b, $1e
    pop hl
    ld c, $11
    inc e
    ld [bc], a
    db $10
    inc l
    nop
    ld [hl], b
    inc e
    inc hl
    jr nc, @+$4e

    ld [hl], b
    adc h
    ld a, h
    add e
    rra
    ld h, b
    nop
    rra
    dec bc
    ld hl, sp-$07
    ld hl, sp+$0b
    ld e, b
    inc bc
    inc c
    nop
    jr nc, jr_05b_426e

    ld a, [c]
    rst $38
    nop
    rlca
    nop
    ccf
    dec bc
    ld a, [hl-]
    dec b
    rlca
    rlca

jr_05b_426e:
    ld a, b
    ld h, b
    sbc a
    dec bc
    sbc $01
    ld bc, $0601
    dec bc
    jr nz, jr_05b_428e

    ld e, $21
    inc a
    ld b, d
    ld [hl], b
    adc h
    ret nz

    dec bc
    ld d, e
    ld [de], a
    dec bc
    dec [hl]
    nop
    ld a, $0b
    sbc $02
    rlca
    jr jr_05b_42a6

jr_05b_428e:
    ld h, a
    ld b, b
    cp b
    dec bc
    ld e, b
    dec b
    dec bc
    ld e, c
    dec de
    inc b
    ld a, [de]
    jr jr_05b_42bf

    jr nc, jr_05b_42e9

    ld a, h
    add e
    ld a, a
    add b
    dec bc
    jr c, jr_05b_42bb

    rlca
    rlca

jr_05b_42a6:
    ld hl, sp-$02
    ld bc, $1ee0
    dec bc
    add sp, $09
    ld bc, $1e01
    jr @-$17

    ret nz

    dec bc
    ld l, e
    nop
    ld bc, $0200
    nop

jr_05b_42bb:
    inc e
    nop
    ldh a, [$0b]

jr_05b_42bf:
    ld e, b
    inc b
    inc a

Jump_05b_42c2:
    ld b, e
    ccf
    ld b, b
    inc a
    ld b, e
    jr c, jr_05b_430d

    ld [hl], b
    adc b
    ld b, b
    or b
    nop
    ret nz

    nop
    add b
    dec bc
    inc c
    ld hl, $8b0b
    ld a, [bc]
    ld [hl+], a
    nop

jr_05b_42d9:
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

jr_05b_42e9:
    ret c

    nop
    or b
    nop
    ldh [rP1], a
    call nz, $9800
    dec bc
    ld a, [hl-]
    inc bc
    ld [bc], a
    nop
    ld b, $00
    ld b, $00
    dec c
    ld bc, $021a
    dec d
    nop
    ld bc, $0300
    nop
    ld b, $04
    ld a, [hl+]
    ld [$88d4], sp
    ld d, h
    db $10

jr_05b_430d:
    xor d
    jr nz, jr_05b_4366

    nop
    inc bc
    nop
    ld [bc], a
    nop
    dec b
    nop
    dec b
    ld bc, $020a
    dec d
    ld [bc], a
    dec d
    inc b
    ld a, [bc]
    ld [hl+], a
    ld d, l
    ld b, h
    xor d
    adc b
    ld d, l
    adc b
    ld d, l
    ld de, $22aa
    ld d, l
    dec bc
    ld [hl], b
    jr nz, @+$22

    ld d, [hl]
    ld b, b
    xor h
    add b
    ld c, b
    add b
    ld e, b
    nop
    or b
    nop
    jr nz, jr_05b_433c

jr_05b_433c:
    ld h, b
    dec bc
    xor $11
    ld bc, $0201
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    ld a, [bc]
    nop
    dec c
    ld [$0b15], sp
    ld [hl], h
    jr z, jr_05b_42d9

    ld d, h
    adc b
    ld d, h
    add b
    ld e, b
    add b
    ld d, b
    nop
    and b
    nop
    ld b, b
    dec bc
    dec a
    dec b
    ld a, [de]
    ld [bc], a
    dec d
    ld [bc], a
    dec [hl]
    inc b
    ld a, [hl+]

jr_05b_4366:
    ld [$0855], sp
    dec d
    db $10
    ld a, [hl+]
    jr nz, jr_05b_43c2

    db $10
    xor b
    jr nz, jr_05b_43c2

    dec bc
    adc h
    ld hl, $130b
    inc hl
    dec bc
    sbc b
    jr nz, jr_05b_4380

    ld a, [bc]
    ld [$1014], sp

jr_05b_4380:
    jr z, jr_05b_438d

    add $00
    ld b, b
    and b
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop

jr_05b_438d:
    ld [$1000], sp
    nop
    stop
    jr nz, jr_05b_43a0

    or [hl]
    ld h, $0b
    rlca
    ccf
    ld c, l
    dec bc
    ld h, a
    ccf
    ld c, l
    dec bc

jr_05b_43a0:
    rst $00
    ccf
    ld c, l
    dec bc
    daa
    ld c, a
    ld c, l
    dec bc
    add a
    ld c, a
    ld c, l
    dec bc

jr_05b_43ac:
    rst $20
    ld c, a
    ld c, l
    dec bc
    ld b, a
    ld e, a
    ld c, l
    dec bc
    and a
    ld e, a
    ld c, l
    dec bc
    rlca
    ld l, a
    ld c, l
    dec bc
    ld h, a
    ld l, a
    ld c, l
    dec bc
    rst $00
    ld l, a

jr_05b_43c2:
    ld c, l
    dec bc
    daa
    ld a, a
    ld c, l
    dec bc
    add a
    ld a, a
    ld c, l
    dec bc
    rst $20
    ld a, a
    dec b
    nop
    ld [$0a0a], sp
    rst $38
    push af
    jr nz, jr_05b_43d7

jr_05b_43d7:
    ld h, b
    jr nz, jr_05b_442a

    jr nz, jr_05b_43ac

    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    ld bc, $0102
    ld b, $02
    inc b
    inc bc
    inc c
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld hl, sp+$04
    cp b
    inc b
    inc e
    ld [bc], a
    adc h
    ld [bc], a
    call nz, Call_05b_6202
    ld bc, $ff0a
    pop af
    add b
    nop
    ret nz

    ld b, b
    and b
    ld b, b
    sub b
    ld b, b
    adc b
    ld b, b
    add [hl]
    inc b
    ld [$1804], sp
    ld [$0810], sp
    jr nc, jr_05b_442f

    jr nz, jr_05b_4433

    ld h, b
    ccf
    ld b, b
    ccf
    ret nz

    or d
    ld bc, $0059
    dec l
    nop
    ld d, $01
    ld [$0503], sp
    ld [bc], a
    add hl, bc
    ld b, $8b
    inc b

jr_05b_442a:
    ld a, [bc]
    ld [hl-], a
    ld bc, $0080

jr_05b_442f:
    ret nz

    add b
    ld b, b
    add b

jr_05b_4433:
    ld b, b
    add b
    ld b, d
    add b
    ld b, d
    inc b
    ld [$0804], sp
    ld b, $0a
    ld [hl], e
    inc bc
    ld [bc], a
    inc c
    ld bc, $200e
    db $10
    db $10
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
    db $c4, $c3, $0c
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
    db $c3, $0a, $14


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

jr_05b_44bc:
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

jr_05b_44cf:
    ld [de], a
    db $ed
    sub [hl]
    ld l, c
    jr jr_05b_44bc

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

jr_05b_44f5:
    ccf
    ld a, [de]
    dec h
    dec c
    ld [de], a
    ld b, $09

Call_05b_44fc:
    ld [bc], a
    dec b
    nop

jr_05b_44ff:
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

Call_05b_4511:
    dec bc
    ld l, $91
    ld l, $d1
    ld e, $e1
    rrca

jr_05b_4519:
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
    jr c, jr_05b_44f5

    jr nc, jr_05b_44ff

    jr jr_05b_4519

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

    jr nz, jr_05b_44cf

    ld b, b
    ld a, [bc]
    rst $38
    push af
    inc a
    inc e
    inc hl
    ld c, $31
    ld b, $19
    db $10
    jr z, jr_05b_4575

    inc h
    ld a, [bc]
    and d
    db $10
    inc l
    ld d, d

jr_05b_4563:
    ld e, h
    and d
    inc c
    ld a, [c]
    inc [hl]
    rrc d
    rst $38
    di
    db $10
    db $10
    jr z, @+$12

    ld l, b
    ld e, b
    and h
    ret c

    inc h

jr_05b_4575:
    inc bc
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
    jr c, @-$37

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
    jr c, jr_05b_4563

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
    inc a
    ld b, e
    ccf
    ld b, b
    inc a
    ld b, e
    jr c, jr_05b_45f7

    ld [hl], b
    adc b
    ld b, b
    or b
    nop
    ret nz

    ld a, [bc]
    inc [hl]
    nop
    nop
    add b
    ld a, [bc]
    db $fc
    ld sp, hl
    inc bc
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
    ld [bc], a
    nop
    inc bc
    ld bc, $0122
    ld a, [hl-]
    jr @+$29

    dec c
    ld [de], a
    inc c
    inc de
    ld [bc], a
    dec a
    nop
    stop
    jr nz, jr_05b_45f5

jr_05b_45f5:
    ldh [rLCDC], a

jr_05b_45f7:
    cp h
    sub b
    ld l, b
    and b
    ld d, b
    nop
    ldh a, [$f0]
    inc c
    inc bc
    inc c
    rrca
    db $10
    rra
    jr nz, jr_05b_4607

jr_05b_4607:
    rst $38
    ld c, $11
    inc e
    inc hl
    jr nc, jr_05b_465d

    ld l, l
    sub d
    call z, $b033
    ld c, [hl]
    jr c, @-$3a

    jr c, @-$3a

    sbc b
    ld h, h
    adc b
    ld [hl], h
    add b
    ld c, h
    add b
    ld b, h
    inc b
    dec de
    ld de, $032e
    ld [hl], h
    ld b, $89
    ld c, $11
    jr jr_05b_4653

    ld [hl], $49
    ld c, l
    or d
    ld l, h
    sub d
    ld l, h
    sub d
    ld a, [bc]
    cp h
    db $10
    ret c

    inc h
    adc b
    ld d, h
    add b
    ld e, b
    nop
    adc b
    ld bc, $033e
    ld l, h
    inc bc
    adc h
    ld [bc], a
    dec e
    ld [$0816], sp
    ld [hl], $10
    ld l, h
    db $10
    ld l, b
    and b
    ld d, c
    jr nz, @-$2e

jr_05b_4653:
    nop
    and b
    ld a, [bc]
    ld [$0000], sp
    ld h, b
    nop
    ld b, b
    nop

jr_05b_465d:
    ld b, b
    ld [bc], a
    dec c

jr_05b_4660:
    inc b
    dec bc
    inc b
    ld a, [de]
    ld [$0014], sp
    jr c, jr_05b_4669

jr_05b_4669:
    jr c, jr_05b_466b

jr_05b_466b:
    ld [hl], b
    nop
    ld h, b
    nop
    inc c
    nop
    ld [$1800], sp
    ld a, [bc]
    ld d, b
    ld hl, $0040
    ld b, b
    nop
    add b
    ld [bc], a
    ld l, l
    inc h
    ld e, d
    inc [hl]
    ld c, d
    jr nc, jr_05b_46d0

    db $10
    xor b
    jr nz, jr_05b_4660

    ld h, b
    sub b
    ld b, b
    and b
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    ld [$1000], sp
    ld a, [bc]
    sub $23
    ld a, [bc]
    nop
    ccf
    ld c, l
    ld a, [bc]
    ld h, b
    ccf
    ld c, l
    ld a, [bc]
    ret nz

    ccf
    ld c, l
    ld a, [bc]
    jr nz, @+$51

    ld c, l
    ld a, [bc]
    add b
    ld c, a
    ld c, l
    ld a, [bc]
    ldh [rVBK], a
    ld c, l
    ld a, [bc]
    ld b, b
    ld e, a
    ld c, l
    ld a, [bc]
    and b
    ld e, a
    ld c, l
    ld a, [bc]
    nop
    ld l, a
    ld c, l
    ld a, [bc]
    ld h, b
    ld l, a
    ld c, l
    ld a, [bc]
    ret nz

    ld l, a
    ld c, l
    ld a, [bc]
    jr nz, jr_05b_4747

    ld c, l

jr_05b_46c9:
    ld a, [bc]

Jump_05b_46ca:
    add b
    ld a, a
    ld c, l
    ld a, [bc]
    ldh [$7f], a

jr_05b_46d0:
    inc c
    nop
    ld [$0002], sp
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    pop bc
    nop
    pop de
    nop
    pop de
    nop
    push de
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc de
    ld [bc], a
    ld d, $01
    ld d, e
    jr nz, jr_05b_4749

    jr nz, jr_05b_46c9

    jr z, @+$04

    ld hl, $2a05
    push de
    ld a, [hl+]
    push de
    jr nz, jr_05b_4755

    ld [bc], a
    jr nc, jr_05b_4701

jr_05b_4701:
    and b
    ld d, a
    and b
    ld d, a
    xor b
    ld [bc], a
    add hl, sp
    ld bc, $2c02
    nop
    ld c, d
    or l
    ld c, c
    or [hl]
    ld h, a
    sbc b
    ld a, a
    add b
    rrca
    ld [hl], b
    nop
    rrca
    xor d
    ld d, l
    xor d
    ld d, l
    ld a, [hl+]
    push de
    and [hl]
    ld e, c
    adc $31
    cp $01
    ld hl, sp+$06

jr_05b_4726:
    nop
    ld hl, sp+$02
    db $f4
    ld sp, hl
    ld b, b
    nop
    ld b, c
    nop
    rst $30
    inc [hl]
    jp z, $3906

    nop
    rlca
    nop
    ld bc, $0700
    nop
    inc a
    nop
    ldh [rP1], a
    jr nz, jr_05b_4741

jr_05b_4741:
    ret nz

    nop
    add b
    nop
    ld h, b
    nop

jr_05b_4747:
    ret nz

    ld [bc], a

jr_05b_4749:
    or $f9
    sub b
    nop
    sub d
    nop
    or d
    jr nz, jr_05b_4726

    or h
    ld c, e
    ld [bc], a

jr_05b_4755:
    ld h, d
    add hl, bc
    add b
    nop
    sub b
    db $fc
    inc bc
    ccf
    ret nz

    rlca
    jr c, @+$03

    ld b, $00
    add hl, bc
    nop
    rla
    nop
    cp h
    nop
    ldh [$80], a
    ld h, b
    nop
    ret nz

    ret nz

    inc a
    add b
    ld [hl], b
    ld [bc], a
    adc b
    dec b
    ld [bc], a
    ld bc, $8800
    nop
    adc b
    nop
    adc c
    nop
    sbc c
    add b
    ld d, d
    add b
    ld d, d
    ld [bc], a
    db $f4
    ld sp, hl
    ld [$1100], sp
    add b
    ld d, d
    add b
    db $76
    and b
    ld d, h
    and b
    ld e, l
    jp hl


    ld d, $fa
    dec b
    ld a, [hl]
    add c
    ld e, l
    and d
    nop
    ld [hl+], a
    nop
    ld h, h
    nop
    ret z

    add b
    stop
    or c
    nop
    ld h, a
    nop
    call z, $b800
    ld [bc], a
    and h
    rlca
    ld [bc], a
    db $fd
    ldh a, [$60]
    ld d, a
    xor b
    ld a, [bc]
    push af
    ld bc, $043e
    adc e
    ld a, [bc]
    or l
    cp h
    ld b, e
    ldh [rNR32], a
    nop
    ldh [rNR41], a
    db $d3
    ret nz

    ld a, $a0
    ld e, b
    ret nz

    ld [bc], a
    add c
    nop
    ld [bc], a
    ei
    db $f4
    ld [bc], a
    di
    ld a, [$0343]
    inc a
    ld c, $11
    add hl, bc
    db $76
    rlca
    jr c, jr_05b_47da

jr_05b_47da:
    rrca
    nop
    inc bc
    nop
    nop
    ld a, [hl+]
    push de
    ld l, d
    sub l
    jp c, $9625

    ld l, c
    dec [hl]
    db $ca, $ed, $12

    add hl, de
    and $00
    ld a, a
    nop
    ld bc, $0500
    nop
    dec b
    ld [$0805], sp
    dec d
    ld [$2a55], sp
    ld d, l
    ld a, [hl+]
    ld [bc], a
    rrca
    nop
    ld [bc], a
    add d
    rra
    ld c, l
    ld [bc], a
    ld [c], a
    rra
    ld c, l
    ld [bc], a
    ld b, d
    cpl
    ld c, l
    ld [bc], a
    and d
    cpl
    ld c, l
    ld [bc], a
    ld [bc], a
    ccf
    ld c, l
    ld [bc], a
    ld h, d
    ccf
    ld c, l
    ld [bc], a
    jp nz, $4d3f

    ld [bc], a
    ld [hl+], a
    ld c, a
    ld c, l
    ld [bc], a
    add d
    ld c, a
    ld c, l
    ld [bc], a
    ld [c], a
    ld c, a
    ld c, l
    ld [bc], a
    ld b, d
    ld e, a
    ld c, l
    ld [bc], a
    and d
    ld e, a
    ld c, l
    ld [bc], a
    ld [bc], a
    ld l, a
    ld c, l
    ld [bc], a
    ld h, d
    ld l, a
    ld c, l
    ld [bc], a

jr_05b_483a:
    jp nz, Jump_05b_4d6f

    ld [bc], a
    ld [hl+], a
    ld a, a
    ld c, l
    ld [bc], a
    add d
    ld a, a
    ld c, l
    ld [bc], a
    ld [c], a
    ld a, a
    ld a, [bc]
    nop
    ld [$0005], sp
    nop
    nop
    inc bc
    ld bc, $0606
    add hl, bc
    rrca
    jr nc, jr_05b_4896

    ld b, b
    rlca
    ld hl, sp+$00
    rlca
    nop
    sbc b
    nop
    ld [hl], b
    nop
    rst $00
    nop
    db $fc
    ldh [rNR10], a
    nop
    rst $38
    add b
    ld b, b
    nop
    ldh a, [rTIMA]
    ld a, [$3cf5]
    nop
    rlca
    nop
    ld bc, $f605
    ld sp, hl
    add b
    nop
    ldh [rLCDC], a
    or b
    jr nc, @+$4a

    jr nc, jr_05b_48cc

    jr jr_05b_48a6

    jr @+$28

    inc e
    ld [hl+], a
    dec b
    ld c, b
    nop
    inc a
    ld b, d
    dec b
    ld a, [$01f5]
    nop
    ld bc, $0201
    ld bc, $3802

jr_05b_4896:
    ld b, [hl]
    jr c, jr_05b_48dd

    ld a, b
    add h
    ld [hl], b
    adc h
    ldh a, [$08]
    ldh [rNR23], a
    ldh [rNR10], a
    ldh [rNR10], a
    dec b

jr_05b_48a6:
    ld d, d
    inc b
    ld bc, $0302
    inc b
    rlca
    ld [$110e], sp
    jr c, jr_05b_48f8

    dec b
    ld h, h
    nop
    ldh [rNR23], a
    ret nz

    jr nc, jr_05b_483a

    ld h, b
    nop
    ret nz

    nop
    add b
    dec b
    ld [hl], d
    ld b, $04
    dec de
    db $10
    ld l, $00
    ld a, b
    inc e
    ld h, e
    ld [hl], b
    adc [hl]

jr_05b_48cc:
    ldh [rNR23], a
    add b
    ld [hl], b
    dec b
    adc h
    dec b
    dec b
    rst $38
    pop af
    nop
    inc a
    dec b
    ld a, [$1ef5]
    nop

jr_05b_48dd:
    ld [hl], b
    dec b
    xor d
    rlca
    dec b
    ld d, l
    inc bc
    dec b
    ld e, d
    ld [bc], a
    dec b
    ld a, b
    nop
    ld a, b
    add [hl]
    ld hl, sp+$04
    ld hl, sp+$04
    ldh a, [$0c]
    dec b
    ld l, b
    inc b
    rlca
    jr @+$05

jr_05b_48f8:
    inc b
    ld bc, $0502
    jp nc, $0501

    cp $f1
    ldh a, [$08]
    ldh a, [$0c]
    ld hl, sp+$04
    ld hl, sp+$06
    db $fc
    ld [bc], a
    ld a, h
    add d
    dec b
    ld a, [bc]
    db $10
    dec b
    ld hl, sp-$07
    ld e, $00
    rst $38
    dec b
    ld a, [$0ff5]
    rlca
    ld hl, sp-$01
    nop
    ld bc, $05fe
    ld a, [$c0f5]
    add b
    ld a, b
    ldh a, [$0e]
    db $fc
    inc bc
    dec b
    ld d, h
    inc bc
    ld [bc], a
    nop
    inc c
    nop
    stop
    ld h, b
    nop
    add b
    nop
    rra
    nop
    dec b
    and a
    nop
    dec b
    ld sp, hl
    or $04
    nop
    ld [$ec05], sp
    rst $38
    ld b, $1e
    ld c, $f1
    dec b
    jr nz, @+$1c

    dec b
    ld e, $17
    dec b
    add hl, sp
    jr jr_05b_4958

    or c
    ld [bc], a
    rlca
    nop
    inc e

jr_05b_4958:
    nop
    jr nc, jr_05b_495b

jr_05b_495b:
    rlca
    ld b, $19
    db $10
    ld l, [hl]
    ld b, b
    or b
    dec b
    ld d, h
    inc d
    ldh [rNR34], a
    nop
    ldh [rTIMA], a
    rst $00
    add hl, bc
    ld c, $05
    inc l
    ld a, [bc]
    ldh [rNR23], a
    ld [hl], b
    adc h
    jr c, jr_05b_49ba

    dec b
    ld b, [hl]
    nop
    inc c
    ld [de], a
    inc c
    ld [de], a
    inc b
    ld a, [bc]
    nop
    ld b, $00
    inc c
    nop
    jr jr_05b_4986

jr_05b_4986:
    jr nc, jr_05b_4988

jr_05b_4988:
    jr nz, jr_05b_498a

jr_05b_498a:
    ld b, b
    nop
    add b
    nop
    add b
    nop
    ld c, $00
    inc c
    dec b
    ld [bc], a
    ld hl, $0008
    jr jr_05b_499a

jr_05b_499a:
    stop
    dec b
    ld l, a
    inc b
    dec b
    or c
    ld [bc], a
    ld e, $05
    ld e, $07
    rrca
    dec b
    ld e, $17
    dec b
    dec [hl]
    ld de, $f800
    nop
    ld a, [hl]
    nop
    rrca
    dec b
    ld b, b
    rra
    ld c, $38
    nop
    inc e

jr_05b_49ba:
    nop
    inc c
    nop
    ld c, $00
    ld b, $05
    ld l, b
    inc hl
    dec b
    ld bc, $032c
    nop
    ld [bc], a
    dec b
    ldh a, [$15]
    dec b
    adc e
    nop
    dec b
    ld de, $0e28
    nop
    jr c, jr_05b_49db

    sbc d
    ld hl, $0518
    ld d, d

jr_05b_49db:
    ld de, $c505
    ld a, [bc]
    dec b
    cp b
    cpl
    ld c, l
    dec b
    jr jr_05b_4a25

    ld c, l
    dec b
    ld a, b
    ccf
    ld c, l
    dec b
    ret c

    ccf
    ld c, l
    dec b
    jr c, jr_05b_4a41

    ld c, l
    dec b
    sbc b
    ld c, a
    ld c, l
    dec b
    ld hl, sp+$4f
    ld c, l
    dec b
    ld e, b
    ld e, a
    ld c, l
    dec b
    cp b
    ld e, a
    ld c, l
    dec b
    jr @+$71

    ld c, l
    dec b
    ld a, b
    ld l, a
    ld c, l
    dec b
    ret c

    ld l, a
    ld c, l
    dec b
    jr c, jr_05b_4a91

    ld c, l
    dec b
    sbc b
    ld a, a
    ld c, l
    dec b
    ld hl, sp+$73
    nop
    ld [$1005], sp
    ld l, h
    db $10
    jr z, jr_05b_4a27

    ld [bc], a
    nop
    nop

jr_05b_4a25:
    jr c, jr_05b_4a27

jr_05b_4a27:
    db $10
    dec b
    ld a, [bc]
    nop
    jr c, jr_05b_4a71

    dec b
    db $10
    ld a, [bc]
    dec b
    ld [bc], a
    ld bc, $106c
    ld l, h
    dec b
    db $10
    inc b
    nop
    jr c, jr_05b_4a3c

jr_05b_4a3c:
    jr c, jr_05b_4a43

    ld [bc], a
    ld [bc], a
    dec b

jr_05b_4a41:
    ld [bc], a
    inc bc

jr_05b_4a43:
    dec b
    dec bc
    ld bc, $4005
    ld b, $ff
    nop
    add b
    ld a, a
    cp a
    ld b, b
    and b
    ld e, a
    and b
    ld d, b
    dec b
    ld e, b
    ld [bc], a
    rra
    nop
    db $10
    rrca
    rla
    ld [$0b14], sp
    inc d
    ld a, [bc]
    dec b
    ld l, b
    ld [bc], a
    rst $38
    nop
    nop
    rst $38
    dec b
    ld [hl], b
    nop
    dec b
    ld hl, sp-$0c
    and b
    ld d, b
    jr nz, jr_05b_4a41

jr_05b_4a71:
    ldh [rNR10], a
    nop
    ldh a, [rTIMA]
    ld a, b
    ld b, $05
    sub b
    rrca
    nop
    ld e, a
    cp a
    ld b, b
    add b
    ld a, a
    dec b
    ld [hl], a
    ld [bc], a
    db $10
    xor $54
    xor d
    dec b
    inc e
    ld bc, $056c
    ld b, $03
    nop
    nop

jr_05b_4a91:
    ld [$0800], sp
    nop
    inc c
    nop
    adc $04
    ld a, d
    inc d
    dec hl
    ld c, $11
    db $10
    xor d
    db $10
    xor d
    dec b
    or b
    nop
    dec b
    sub $01
    xor e
    sub $29
    rlca
    ld [$0403], sp
    ld bc, $0002
    dec c
    ld bc, $0002
    ld bc, $fc05
    ldh a, [$39]
    add $d7
    jr z, @+$01

    nop
    cp $01
    cp e
    ld b, h
    ld d, h
    xor e
    db $10
    ld l, h
    jr z, jr_05b_4b1e

    dec b
    and b
    rst $38
    ld c, l
    dec b
    ld e, a
    rra
    ld c, l
    dec b
    cp a
    rra
    ld c, l
    dec b
    rra
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
    ld [$1005], sp
    jr z, jr_05b_4b21

    nop
    nop

jr_05b_4b1e:
    nop
    db $10
    dec b

jr_05b_4b21:
    ld b, $04
    db $10
    ld l, h
    dec b
    nop
    ld [bc], a
    dec b
    ld [de], a
    inc b
    jr z, jr_05b_4b81

    dec b
    jr nz, jr_05b_4b36

    jr c, jr_05b_4b76

    jr c, jr_05b_4b78

    db $10
    xor d

jr_05b_4b36:
    dec b
    jr nc, @+$03

    xor $54
    xor d
    ld d, h
    xor d
    ld l, h
    sub d

jr_05b_4b40:
    jr z, @-$28

    dec b
    ld [de], a
    ld a, [bc]
    dec b
    inc b
    ld [$0605], sp
    inc bc
    sub d
    db $10
    xor h
    jr nc, @-$36

    ld h, b
    sub b
    nop
    ld h, b
    nop
    ret nz

    nop
    add b
    dec b
    db $fd
    ldh a, [rP1]
    ld de, $3100
    nop
    inc sp
    nop
    scf
    ld [bc], a
    ld [hl], l
    ld [hl+], a
    ld e, l
    scf
    ld c, b
    dec b
    ld sp, hl
    di
    ld [$3000], sp
    nop
    ldh [$80], a
    ld b, b
    nop
    add b
    ld c, [hl]

jr_05b_4b76:
    or c
    inc c

jr_05b_4b78:
    jp nc, $9408

    db $10
    dec hl
    jr jr_05b_4ba3

    jr nz, jr_05b_4bd9

jr_05b_4b81:
    nop
    ld h, b
    nop
    add b
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc hl
    nop
    ld h, $00
    ld h, $00
    ld l, $04
    ld l, e
    dec b
    ei
    pop af
    jr nz, jr_05b_4b9a

jr_05b_4b9a:
    jr nz, jr_05b_4b9c

jr_05b_4b9c:
    ld h, d
    nop
    call nz, $cc00
    nop
    ret c

jr_05b_4ba3:
    inc b
    ld a, e
    dec l
    ld d, d
    dec hl
    ld d, h
    ccf
    ld b, b
    ccf
    ld b, b
    inc sp
    call z, $b241
    ld bc, $80c2
    ld [hl], b
    and b
    ld d, c
    ld b, b
    and [hl]
    ret nz

    inc a
    and b
    ld e, b
    ret nz

    jr nc, jr_05b_4b40

    ld a, [hl]
    ret nz

    jr c, jr_05b_4bc7

    add h
    inc bc
    inc b

jr_05b_4bc7:
    rlca
    ld [$0b04], sp
    ld [$0016], sp
    jr c, jr_05b_4bd5

    sbc h
    nop
    add b
    ld h, b
    ld b, b

jr_05b_4bd5:
    cp b
    nop
    ldh [rTIMA], a

jr_05b_4bd9:
    ld l, h
    ld bc, $fb05
    pop af
    cp b
    nop
    ld a, [hl-]
    dec b
    rst $38
    add hl, bc
    inc [hl]
    nop
    ld e, b
    dec b
    rrca
    add hl, de
    dec b
    rra
    rra
    ld c, l
    dec b
    ld a, a
    rra
    ld c, l
    dec b
    rst $18
    rra
    ld c, l
    dec b
    ccf
    cpl
    ld c, l
    dec b
    sbc a
    cpl
    ld c, l
    dec b
    rst $38
    cpl
    ld c, l
    dec b
    ld e, a
    ccf
    ld c, l
    dec b
    cp a
    ccf
    ld c, l
    dec b
    rra
    ld c, a
    ld c, l
    dec b
    ld a, a
    ld c, a
    ld c, l
    dec b
    rst $18
    ld c, a
    ld c, l
    dec b
    ccf
    ld e, a
    ld c, l
    dec b
    sbc a
    ld e, a
    ld c, l
    dec b
    rst $38
    ld e, a
    ld c, l
    dec b
    ld e, a
    ld l, a
    ld c, l
    dec b
    cp a
    ld l, a
    ld c, l
    dec b
    rra
    ld a, a
    ld c, l
    dec b
    ld a, a
    ld a, a
    ld c, l
    dec b
    rst $18
    ld a, a
    dec c
    nop
    ld [$0719], sp
    cp b
    inc bc
    db $e4
    ld b, h
    xor e
    jr z, @+$57

    inc a
    ld b, e
    jr c, jr_05b_4c8b

    jr nz, jr_05b_4c9f

    nop
    ld h, b
    add b
    ld c, h
    nop
    or b
    nop
    ld b, b
    nop
    or b
    nop
    ret nz

    add hl, de
    push af

jr_05b_4c55:
    rst $30
    jr nz, jr_05b_4c58

jr_05b_4c58:
    ld hl, $2201
    inc bc
    inc h
    ld b, $29
    ld c, $b1
    nop
    stop
    jr nc, jr_05b_4c66

jr_05b_4c66:
    ldh [$80], a
    ld b, b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld [c], a
    cp $01
    cp c
    ld b, [hl]
    di
    inc c
    or e
    ld c, h
    sbc e
    ld h, h
    or a
    ld c, b
    ld a, a
    add b
    db $ed
    ld [de], a
    nop
    inc bc
    ld [bc], a
    dec b
    ld b, $09
    ld c, $11
    inc e
    ld [hl+], a

jr_05b_4c8b:
    inc e
    ld [hl+], a
    jr c, jr_05b_4cd3

    ld [hl], b
    adc b
    add hl, de
    ei
    pop af
    ld bc, $0300
    ld bc, $0342
    ld b, h
    inc bc
    call nz, $8807

jr_05b_4c9f:
    add hl, de
    ld d, [hl]
    nop
    jr c, @+$46

    add hl, de
    ld e, h
    nop
    ld h, b
    sub b
    ldh [rNR32], a
    ld hl, sp+$04
    nop
    add hl, de
    ld a, a
    nop
    inc c
    nop
    inc c
    nop
    dec c
    nop
    dec c
    ld [$0815], sp
    rla
    inc bc

jr_05b_4cbd:
    ld b, h
    rlca
    ret z

    rlca
    ret z

    dec c
    sub d
    add hl, bc
    sub [hl]
    dec d
    xor d
    dec d
    xor d
    ld a, [bc]
    ld [hl], l
    ld hl, sp+$04
    ldh a, [$08]
    ldh [rNR10], a
    ret nz

jr_05b_4cd3:
    jr nz, jr_05b_4c55

    ld b, c
    add b
    ld b, [hl]
    nop
    adc h
    nop
    jr c, @+$0c

    dec d
    ld a, [de]
    dec h
    ld [de], a
    dec l
    ld d, $29
    inc d
    dec hl
    ld sp, $334e
    ld c, h
    scf
    ld c, b
    jr jr_05b_4d54

    jr nc, jr_05b_4cbd

    ld [hl], c
    adc [hl]
    ld h, [hl]
    sbc c
    db $ec
    ld [de], a
    ret c

    inc h
    ret nc

    dec hl
    add e
    ld a, h
    nop
    ld h, b
    nop
    ret nz

    nop
    add b
    nop
    inc c
    nop
    jr c, jr_05b_4d07

jr_05b_4d07:
    ldh a, [rNR24]
    ld [hl], $00
    rlca
    ld [$0906], sp
    rlca
    ld [$100f], sp
    add hl, de
    and $02
    rra
    jr nz, jr_05b_4d91

    add a
    ei
    inc b
    rst $30
    ld [$09f6], sp
    db $fc
    ld [bc], a
    ldh a, [$0c]
    add hl, de
    and h
    nop
    ldh [rNR10], a
    add b
    ld h, b
    add hl, de
    ld a, [hl-]
    ld bc, $f919
    di
    rra
    jr nz, @+$20

    ld hl, $423c
    jr c, @+$46

    jr nc, jr_05b_4d83

    nop
    ld [hl], b
    add hl, de
    db $d2, $00, $19

    ld [hl], $01
    add hl, de
    push af
    rst $30
    ld [bc], a
    dec b
    inc b
    ld a, [bc]
    inc b
    ld a, [bc]
    ld [$1014], sp

Jump_05b_4d4f:
    jr z, jr_05b_4d61

    jr z, jr_05b_4d73

    ld d, b

jr_05b_4d54:
    ld b, b
    and b
    nop
    ld [bc], a
    add hl, de
    add b
    ld bc, $0008
    stop
    stop

jr_05b_4d61:
    jr nz, jr_05b_4d63

jr_05b_4d63:
    ld b, b
    ld de, $2b44
    add h
    inc de
    call nz, Call_05b_600f

jr_05b_4d6c:
    ld b, a
    jr c, @-$4f

Jump_05b_4d6f:
    nop
    ld e, a
    nop
    sbc a

jr_05b_4d73:
    ld h, b
    ld sp, hl
    inc b
    ld hl, sp+$03
    push af
    ld [$10ea], sp
    ldh [rNR32], a
    xor b
    ld b, [hl]
    sub h
    ld h, c
    adc b

jr_05b_4d83:
    ld [hl+], a
    dec b
    jr nz, jr_05b_4d91

    ld b, b
    dec b
    ld h, b
    dec bc
    db $10
    rla
    nop
    inc bc
    jr c, @+$19

jr_05b_4d91:
    ld h, b
    ld l, $40
    ld [hl], h
    ld [bc], a
    ldh [$0e], a
    call nz, $e810
    ld bc, $01d0
    and b
    rlca
    ld d, b
    inc b
    and b
    inc b
    add hl, de
    ei
    pop af
    ld [$0800], sp
    nop
    inc c
    nop
    inc b
    nop
    ld b, $00
    ld b, $19
    ld a, [de]
    add hl, bc
    add hl, de
    scf
    nop
    ld b, $02
    dec b
    nop
    inc bc
    nop
    inc bc
    ld bc, $0102
    ld a, [c]
    inc de
    inc l
    rrca
    stop
    ld bc, $0700
    inc b
    ld a, [bc]
    ld [$3834], sp
    call nz, $a219
    nop
    ldh [rNR10], a
    add hl, de
    di
    ld sp, hl
    ld bc, $0300
    add hl, de
    db $e4
    ld [bc], a
    inc e
    inc hl
    jr nc, @+$4e

    ld b, b
    add hl, de
    rla
    ld bc, $10e0
    ret nz

    jr c, jr_05b_4d6c

    ld b, b
    add b
    ld b, b
    nop
    ret nz

    nop
    ld b, b
    nop
    jr nz, jr_05b_4df6

jr_05b_4df6:
    jr nz, jr_05b_4df8

jr_05b_4df8:
    nop
    nop
    add b
    nop
    ret nz

    nop
    ld h, b
    nop
    jr c, @+$0a

    inc d
    inc c
    ld [de], a
    ld b, $09
    add hl, de
    sub h
    ld de, $1918
    jr nc, jr_05b_4e0f

    add hl, de

jr_05b_4e0f:
    add hl, de
    jr nz, jr_05b_4e72

    ld h, b
    sub b
    jr nc, @+$4a

    jr c, @+$48

jr_05b_4e18:
    ld e, $21
    rrca
    db $10
    rlca
    ld [$0807], sp
    inc bc
    inc b
    nop
    jr @+$12

    jr z, @+$32

    ld c, b
    ld [hl], b
    adc c
    ld hl, sp+$07
    db $fc
    ld [bc], a
    ld hl, sp+$04
    ld hl, sp+$19
    adc a
    db $10
    ld b, $00
    jr c, jr_05b_4e38

jr_05b_4e38:
    ldh [rNR24], a
    inc b
    inc d
    add hl, de
    db $ec
    nop
    ccf
    ld b, b
    rrca
    ldh a, [rTMA]
    add hl, bc
    add hl, de
    ld [hl-], a
    stop
    inc e
    ldh [rNR10], a
    ldh a, [$08]
    ldh a, [$08]
    ld hl, sp+$04
    jr c, jr_05b_4e18

    inc c
    ld [hl-], a
    ld b, $09
    inc bc
    inc b
    nop
    inc e
    nop
    jr jr_05b_4e78

    ld [hl], d
    ld hl, $4919
    db $10
    add hl, de
    db $fc
    ldh a, [$03]
    add hl, de
    ld a, [c]
    ld a, [$4080]
    ld b, b
    and b
    jr nz, jr_05b_4ec1

    nop

jr_05b_4e72:
    jr nc, jr_05b_4e74

jr_05b_4e74:
    jr jr_05b_4e76

jr_05b_4e76:
    inc c
    nop

jr_05b_4e78:
    ld [bc], a
    nop
    ld bc, $00ff
    add hl, de
    and b
    ld a, [hl+]
    nop
    ld bc, $0000
    nop
    adc b
    nop
    ld h, [hl]
    ld [hl+], a
    ld d, l
    ld de, $092a
    ld d, $0c
    inc de
    nop
    inc c
    inc b
    jp z, $a946

    ld h, $59
    inc sp
    call z, Call_05b_649b
    db $dd
    ld [hl+], a
    rst $38
    nop
    nop
    ld d, c
    ld de, $51ea
    xor d
    ld e, c
    and [hl]
    ld a, e
    add h
    ei
    inc b
    add hl, de
    and b
    jr nz, jr_05b_4eb6

    ld c, c
    inc bc
    inc [hl]
    ld de, $0e2e

jr_05b_4eb6:
    ld de, $f807
    inc sp
    ld c, h
    dec e
    ld [hl+], a
    rrca
    db $10
    ld a, e
    add h

jr_05b_4ec1:
    rra
    ld h, b
    rlca
    jr jr_05b_4ed5

    ld [hl], b
    ld a, a
    add b
    inc bc
    db $fc
    rrca
    jr nc, jr_05b_4f0d

    ld b, b
    add hl, de
    and b
    rst $38
    ld c, l
    add hl, de
    ld e, a

jr_05b_4ed5:
    ccf
    ld c, l
    add hl, de
    cp a
    ccf
    ld c, l
    add hl, de
    rra
    ld c, a
    ld c, l
    add hl, de
    ld a, a
    ld c, a
    ld c, l
    add hl, de
    rst $18
    ld c, a
    ld c, l
    add hl, de
    ccf
    ld e, a
    ld c, l
    add hl, de
    sbc a
    ld e, a

jr_05b_4eee:
    ld c, l
    add hl, de
    rst $38
    ld e, a
    ld c, l
    add hl, de
    ld e, a
    ld l, a
    ld c, l
    add hl, de
    cp a
    ld l, a
    ld c, l
    add hl, de
    rra
    ld a, a
    ld c, l
    add hl, de
    ld a, a
    ld a, a
    ld c, l
    add hl, de
    rst $18

Jump_05b_4f05:
    ld a, a
    dec c
    nop
    ld [$0111], sp
    ld [bc], a
    rlca

jr_05b_4f0d:
    ld [$100f], sp
    dec sp
    ld b, h
    ld h, a
    jr jr_05b_4f31

    ld h, c
    ld h, c
    sbc d
    ld [bc], a
    ld h, l
    nop
    nop
    ld bc, $0706
    jr jr_05b_4f3a

    ld h, [hl]
    ld h, e
    sub h
    ld b, $39
    jr c, jr_05b_4eee

    jp nz, $0135

    ld b, $06
    add hl, de
    jr jr_05b_4f96

    ld h, b

jr_05b_4f31:
    sbc e
    add e
    ld b, h
    ld de, $001a
    ret nz

    jr nc, jr_05b_4f75

jr_05b_4f3a:
    ld b, h
    rst $30
    ld [$01fe], sp
    ld a, a
    add b
    rst $28
    db $10
    cp l
    ld b, d
    rst $30
    ld [$20df], sp
    adc a
    ld b, b
    inc a
    add e
    di
    inc c
    sbc $21
    ld sp, hl
    ld b, $e7

jr_05b_4f54:
    jr jr_05b_4f54

    ld bc, $c638
    ld de, $ffed
    nop
    inc bc
    ld b, $18
    jr jr_05b_4fc8

    ld h, d
    dec e
    inc c
    ld a, [c]
    jr nc, jr_05b_4fb4

    ret nz

    jr nc, jr_05b_4f6b

jr_05b_4f6b:
    nop
    nop
    jr @+$20

    ldh [$f0], a
    rrca
    rra
    ldh [$f8], a

jr_05b_4f75:
    ld b, $c0
    jr c, jr_05b_4f79

jr_05b_4f79:
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    inc bc
    ld de, $017f
    db $fc
    inc bc
    ret nz

    inc a
    ld de, $0082
    rrca
    ld de, $0189
    pop bc
    inc a
    rra
    ret nz

    cp $01
    add e

jr_05b_4f96:
    ld a, h
    ld a, a
    add b
    ld hl, sp+$03
    add e
    inc a
    rra
    ret nz

    ld hl, sp+$07
    pop bc
    jr c, jr_05b_4fb3

    ret nz

    ld de, $00a4
    inc a
    db $c3, $e1, $1c


    rlca
    ldh [$3e], a
    nop
    ldh a, [$03]
    ret nz

jr_05b_4fb3:
    inc e

jr_05b_4fb4:
    ccf

jr_05b_4fb5:
    nop
    ld hl, sp+$03
    ldh [$0e], a
    add b
    ld [hl], b
    inc bc
    ret nz

    rrca
    nop
    ccf
    ld de, $0081
    nop
    nop
    cp $fc

jr_05b_4fc8:
    ld [bc], a
    ld de, $0fd4
    rlca
    nop
    nop
    nop
    rst $38
    ld de, $0080
    ld de, $04f4
    inc bc
    ld [hl], b
    rrca
    add b
    ccf
    nop
    cp $00
    db $fc
    inc bc
    pop af
    inc c
    rst $00
    jr nc, jr_05b_4f75

    ld b, b
    ld b, c
    ld [hl+], a
    db $eb
    inc b
    ld a, [hl]
    add c
    cp $01
    cp h
    ld b, d
    dec a
    ld b, b
    ld a, e
    add b
    rst $28
    db $10
    ld de, $f4f8
    inc b
    inc b
    ld c, $0a
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld a, e
    inc b
    rst $30
    ld [$00bf], sp
    ld a, [hl]
    ld bc, $22dd
    dec sp
    ld b, h
    ld e, [hl]

jr_05b_500f:
    and b
    inc [hl]
    ld b, b
    ld de, $f0fd
    ld bc, $0606
    add hl, bc
    nop
    rrca
    inc bc
    inc c
    inc c
    inc de
    nop
    dec c
    jr @+$69

    ld [hl], a
    adc b
    sbc h
    ld h, e
    ld a, [hl]
    add c
    db $e3
    inc e
    inc c
    di
    ld sp, $c7ce
    jr c, jr_05b_4fb5

    ld c, h
    inc c
    or e
    jr nc, @-$2f

    add $39
    db $fc
    inc bc
    ld h, e
    sbc h
    db $fc
    inc bc
    jr nc, jr_05b_500f

    inc c
    inc sp
    jr nc, @+$4a

    nop
    ld [hl], b
    ld de, $f6f6
    inc e
    inc d
    ld [$1108], sp
    db $fc
    ldh a, [$08]
    ld [$8011], sp
    ld [de], a
    ld de, $1088
    ld de, $1692
    ld [$5908], sp
    ld h, $76
    adc c
    cp l
    ld b, d
    ld e, e
    and h
    ld a, $c1
    dec [hl]
    ld c, d
    ld c, e
    or h
    sub d
    ld l, l
    ld de, $1892
    ld de, $1092
    ld de, $f3f9
    ld de, $00f3
    ld de, $01ce
    ld b, $06
    ld h, c
    ld h, e
    ld e, $7f
    ld h, e
    ld a, a
    inc e
    rra
    rst $38
    ld de, $11c7
    ld h, b
    ldh [$9c], a
    db $fc
    ld [hl], e
    rst $08
    rrca
    ldh a, [rNR11]
    ret z

jr_05b_5095:
    inc d
    ld de, $f0fc
    ret nz

    ret nz

    jr c, jr_05b_5095

    call nz, $f83c
    ld hl, sp+$11
    or $f6
    add h
    add h
    adc $4a
    add h
    add h
    ld de, $f6f6
    ld a, [hl]
    ld a, [hl]
    rst $38
    add c
    ld a, [hl]
    ld a, [hl]
    ld de, $f0fc
    ld b, b
    ld b, b
    and c
    pop hl
    ld b, e
    ld b, d
    ld bc, $1101
    adc b
    db $10
    add hl, bc
    add hl, bc
    nop
    nop
    rlca
    dec b
    ld de, $2230
    ld d, a
    ld [hl], l
    ld d, a
    ld [hl], l
    cpl
    dec a
    cpl
    dec a
    xor a
    cp l
    or a
    db $fd
    ld d, a
    ld a, l
    ld d, e
    ld a, l
    dec hl
    dec a
    dec hl
    dec [hl]
    dec de
    dec d
    rla
    add hl, de
    rla
    add hl, de
    rrca
    add hl, bc
    rrca
    add hl, bc
    dec bc
    dec c
    dec bc
    dec c
    ld de, $2031
    ld [bc], a
    ld de, $00ef
    nop
    ld b, b
    ld b, b
    ldh a, [$b0]
    ld a, h
    ld c, h
    ld a, $32
    rrca
    dec c
    ld de, $205e
    ld b, b
    ld b, b
    ldh [$a0], a
    ld a, b
    ld e, b
    inc [hl]
    inc l
    ld a, [de]
    ld d, $0d
    rrca
    ld [bc], a
    ld [bc], a
    ld d, $1e
    dec bc
    dec c
    jp Jump_05b_71c2


    or c
    db $fc
    call z, $333f
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    rst $00
    push bc
    db $e3
    ld [hl+], a
    cp c
    reti


    inc [hl]
    inc l
    jp c, $fdd6

    dec sp
    ld de, $1284
    sbc h
    sub h
    call c, $da54
    ld d, [hl]
    xor $aa
    ld a, l
    ld e, e
    rst $38
    call z, $333f
    ld c, $0d
    ld bc, $11fe
    ret z

    inc d
    rst $18
    db $ed
    or [hl]
    ld l, l
    reti


    or [hl]
    and l
    ld e, d
    ld de, $14c8
    dec sp
    call nz, Call_05b_704f
    rst $20
    ld hl, sp+$1f
    ldh [rNR11], a
    ret z

    inc d
    db $76
    adc c
    or a
    ld c, b
    ld de, $03f4
    ld de, $01ce
    ret nz

    and b
    ld [hl], b
    or b
    xor b
    ld a, b
    ldh a, [rSVBK]
    ld [hl], b
    ret nc

    ld h, b
    and b
    ldh [rNR41], a
    ret nz

    ret nz

    ld de, $ffa0
    ld c, l
    ld de, $3f5f
    ld c, l
    ld de, $3fbf
    ld c, l
    ld de, $4f1f
    ld c, l
    ld de, $4f7f
    ld c, l
    ld de, $4fdf
    ld c, l
    ld de, $5f3f
    ld c, l
    ld de, $5f9f
    ld c, l
    ld de, $5fff
    ld c, l
    ld de, $6f5f
    ld c, l
    ld de, $6fbf
    ld c, l
    ld de, $7f1f
    ld c, l
    ld de, $7f7f
    ld c, l
    ld de, $7fdf
    dec c
    nop
    ld [$0014], sp
    rst $38
    inc d
    nop
    rrca
    dec b
    ld bc, $03fe
    db $fc
    ld b, $f9

jr_05b_51be:
    inc d
    nop
    nop
    inc c
    di
    jr @-$17

    ret nc

    cpl
    ldh a, [rIF]
    inc d
    nop
    inc c
    ldh a, [rIF]
    inc e
    db $e3
    nop
    ldh a, [$f0]
    inc c
    inc e
    ld [c], a
    inc c
    ld [hl-], a
    jr jr_05b_51be

    ret nc

    jr z, @-$0e

    ld [$f000], sp
    jr jr_05b_5201

    db $10
    inc d
    ld d, c
    ld bc, $7f00
    ld [hl], b
    adc a
    ret z

    scf
    adc a
    ld d, b
    inc d
    inc d
    inc b
    ld b, $f9
    inc b
    ei
    ld [$06f7], sp
    ld sp, hl

jr_05b_51f9:
    ld b, $07
    inc b
    rra
    jr jr_05b_5226

    jr nz, @+$61

jr_05b_5201:
    db $10
    cpl
    jr jr_05b_522c

    ld b, $19
    add hl, bc
    ld c, $14
    nop
    ld a, [bc]
    add b
    ld a, a
    ld h, b
    sbc a
    jr jr_05b_51f9

    inc c
    di
    inc bc
    db $fc
    ld bc, $14fe
    nop
    ld a, [bc]
    add a

jr_05b_521c:
    ld a, a
    call nz, $483c
    cp b
    ld [$02f8], sp
    inc d
    ld h, l

jr_05b_5226:
    ld bc, $e718
    ld h, c
    sbc a
    ld b, c

jr_05b_522c:
    cp a
    add c
    ld a, a
    ld h, d
    sbc [hl]
    ld h, b
    sub b
    add b
    ld h, b
    nop
    add b
    add b
    add b
    inc d
    ld hl, sp-$0a
    add b
    ld a, a
    add b
    ld a, a
    ld hl, sp+$07
    rrca
    ldh a, [rNR14]
    adc b
    inc bc
    add b
    ret nz

    ret nz

    ld h, b
    ldh [rNR41], a
    ldh [$c0], a
    jr nc, jr_05b_52c1

    adc b
    jr nc, jr_05b_521c

    ld h, b
    sub b
    nop
    rra
    ld e, $e1
    db $fc
    ld [bc], a
    call z, Call_000_0832
    call nc, $2418
    jr nc, jr_05b_52ac

    jr jr_05b_528a

    ld [$08f8], sp
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    ld b, $14
    ld h, l
    ld bc, $e719
    inc c
    di
    or b
    rst $08
    ld h, b
    sbc a
    add b
    ld a, a
    ld b, b
    rst $38
    jr nz, jr_05b_52bf

    inc d
    ld a, [de]
    db $10
    ld bc, $0302
    inc b
    ld b, $09
    inc c

jr_05b_528a:
    ld [hl-], a
    jr nc, jr_05b_52d9

    inc d
    ret nz

    ld [bc], a
    nop
    nop
    nop
    ld bc, $1d00
    inc c
    inc de
    inc b
    dec bc
    inc bc
    inc b
    nop
    inc bc
    nop
    nop
    ld b, b
    add b

jr_05b_52a2:
    ld b, b
    and b
    ld b, b
    and b
    jr nz, jr_05b_52f8

    jr nz, jr_05b_5308

    ld a, $41

jr_05b_52ac:
    inc bc
    ld a, h
    nop
    inc bc
    add b
    ld c, a
    ld [$088f], sp
    rrca
    inc d
    ld d, h
    db $10
    dec c
    rrca
    ld b, $06
    nop
    nop

jr_05b_52bf:
    ret nz

    ccf

jr_05b_52c1:
    jr nz, jr_05b_52a2

    inc d
    nop
    nop
    ldh [rIE], a
    jr nz, jr_05b_5309

    inc d
    ld d, h
    ld bc, $fd14
    ldh a, [rSB]
    inc d
    jr nz, jr_05b_52ea

    inc d
    ld [hl], h
    db $10
    ld b, $19

jr_05b_52d9:
    jr jr_05b_5341

    ld h, b
    sbc b
    ld b, b
    and b
    add b
    ld h, b
    ld h, b
    sbc b
    ldh [$e0], a
    ret c

    ld hl, sp+$27
    ccf

jr_05b_52e9:
    db $10

jr_05b_52ea:
    rra
    ld [$040f], sp
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    inc d
    ld a, [de]
    ld [de], a
    ld b, b
    ld a, a

jr_05b_52f8:
    ld b, b
    ld a, a
    ret nz

    rst $38
    add b
    inc d
    ld h, l
    ld de, $1e1d
    inc d
    add h
    jr jr_05b_5306

jr_05b_5306:
    nop
    nop

jr_05b_5308:
    inc bc

jr_05b_5309:
    inc bc
    inc c
    ld c, $11
    nop
    ld c, $14
    ei
    ld a, [c]
    rlca
    ld hl, sp+$0f
    ldh a, [rNR23]
    rst $20
    jr nc, jr_05b_52e9

    ret nz

    ccf
    add b
    ld a, a
    inc d
    nop
    nop
    ld b, b
    and b
    ret nz

    jr nz, jr_05b_5336

    ldh a, [rNR23]
    ld hl, sp+$0c
    db $fc
    ld b, $fe
    ld bc, $01ff
    rst $38
    inc e
    ld [hl+], a
    jr jr_05b_5359

    inc d

jr_05b_5336:
    ld a, [c]
    db $10
    db $10
    ld l, b
    jr nc, jr_05b_5384

    jr nz, jr_05b_538e

    ld h, b
    sub b
    inc d

jr_05b_5341:
    and [hl]
    db $10
    ld h, b
    ld a, a
    jr nc, jr_05b_5386

    inc d
    sbc b
    db $10
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [de], a
    ld a, [c]
    ld a, [de]
    ld a, [$fa0a]
    dec bc
    ei
    dec bc
    ei
    dec b

jr_05b_5359:
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    jr nc, jr_05b_5390

    ret c

    ld hl, sp+$14
    nop
    inc d
    inc d
    inc b
    db $10
    call nz, Call_05b_44fc
    ld a, h
    inc d
    ld [hl-], a
    jr z, jr_05b_53b2

    ld a, [hl]
    ld b, c
    ld a, a
    add c
    rst $38
    add c
    rst $38
    ld bc, $02ff
    cp $14
    ld c, d
    jr nz, jr_05b_5393

    ei
    ld a, [c]
    ld hl, $7121

jr_05b_5384:
    ld [hl], c
    ld d, c

jr_05b_5386:
    ld [hl], c
    ld c, c
    ld a, c
    jp z, $14fb

jr_05b_538c:
    ld [hl], l
    db $10

jr_05b_538e:
    ld c, $0f

jr_05b_5390:
    ld [$780f], sp

jr_05b_5393:
    ld a, a
    inc d
    xor h
    db $10
    inc d
    sbc $06
    jr nc, jr_05b_538c

    db $10

jr_05b_539d:
    inc d
    ld a, c
    ld hl, $8080
    inc d
    ldh [rP1], a
    ld b, b
    ret nz

    ld h, b
    ldh [$30], a
    ldh a, [rNR23]
    ld hl, sp+$08
    ld hl, sp+$30
    ldh a, [rNR41]

jr_05b_53b2:
    ldh [rLCDC], a
    ret nz

    inc d
    add b
    jr nz, jr_05b_53cd

    ei
    ld a, [c]
    jr nz, jr_05b_539d

    db $10
    ldh a, [$08]
    ld hl, sp-$7c
    db $fc
    ld b, h
    ld a, h
    ld [hl+], a
    ld a, $13
    rra
    add hl, bc
    rrca
    inc bc
    inc bc

jr_05b_53cd:
    inc c
    rrca
    jr jr_05b_53f0

    inc d
    and h
    db $10
    inc d
    ld l, d
    ld [hl+], a
    inc d
    ld d, b
    inc b
    inc d
    ld d, h
    ld [de], a
    ld [$200f], sp
    ld d, b
    inc d
    db $fc
    db $10
    ret nz

    jr nz, jr_05b_53e7

jr_05b_53e7:
    ret nz

    inc d
    ei
    ld a, [c]
    add b
    add b
    ld h, b
    ldh [$90], a

jr_05b_53f0:
    ldh a, [$58]
    ld a, b
    adc h
    inc d
    jp hl


    inc de
    inc d
    rst $30
    or $03
    inc bc
    inc e
    rra
    ldh [rNR14], a
    rst $28
    daa
    inc d
    add hl, bc
    ccf
    ld c, l
    inc d
    ld l, c
    ccf
    ld c, l
    inc d
    ret


    ccf
    ld c, l
    inc d
    add hl, hl
    ld c, a
    ld c, l
    inc d
    adc c
    ld c, a
    ld c, l
    inc d
    jp hl


    ld c, a
    ld c, l
    inc d
    ld c, c
    ld e, a
    ld c, l
    inc d
    xor c
    ld e, a
    ld c, l
    inc d
    add hl, bc
    ld l, a
    ld c, l
    inc d
    ld l, c
    ld l, a
    ld c, l
    inc d
    ret


    ld l, a
    ld c, l
    inc d
    add hl, hl
    ld a, a
    ld c, l
    inc d
    adc c
    ld a, a
    ld c, l
    inc d
    jp hl


    ld a, a
    inc bc
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

jr_05b_5467:
    inc de
    rst $38
    rrca
    rst $38
    ld c, $fe
    jr jr_05b_5467

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
    jr c, jr_05b_549e

    ld d, e
    ld bc, $4040
    ld h, b

jr_05b_549e:
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
    jr nz, jr_05b_54e9

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

jr_05b_54e9:
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

Call_05b_5511:
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
    dec b
    ret z

    nop
    ld b, $06
    ld a, [bc]
    ld c, $12
    ld e, $22
    ld a, $ca
    or $05
    db $ec
    rst $38
    add hl, bc
    ld c, $0e
    inc [hl]
    inc a
    dec b
    or h
    nop
    pop hl
    pop hl
    ld e, a
    ld a, a
    jr nc, jr_05b_558a

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
    rst $38
    ret nz

    rst $38
    adc [hl]
    rst $38
    add hl, de
    rst $38
    ld [hl], c

jr_05b_558a:
    rst $38
    ret c

    rst $38
    adc h
    rst $38
    add b
    rst $38
    dec b
    rst $38
    ld a, [c]
    inc b
    inc b
    inc c
    inc c
    sub h
    sbc h
    ld h, h
    db $fc
    ld b, h
    db $fc
    inc bc
    nop
    inc c
    inc bc
    ld de, $270e
    jr @+$51

    jr nc, jr_05b_5608

jr_05b_55a9:
    jr nz, @-$5f

    ld h, b
    cp a
    ld b, b
    dec b
    nop
    dec b
    nop
    inc b
    inc bc
    add hl, bc
    ld b, $13
    inc c
    rlca
    nop
    jr jr_05b_55c3

    ld h, b
    rra
    adc a
    ld [hl], b
    dec b
    ld h, [hl]
    ld [de], a

jr_05b_55c3:
    rst $38
    nop
    rla
    ld [$b605], sp
    db $10
    dec b
    cp b
    ld [de], a
    dec b
    ld [$0510], a
    ld c, l
    ld bc, $f105
    rla
    dec b

jr_05b_55d7:
    cp $f6
    ld bc, $0600
    ld bc, $030c
    dec b
    ld [$0e20], sp
    ld bc, $0f30
    pop bc
    ld a, $87
    ld a, b
    rra
    ldh [$7f], a
    add b
    rra
    nop
    ldh [$1f], a
    nop
    rst $38
    rra
    ldh [rTIMA], a
    ld hl, sp+$1c
    ld bc, $0300
    nop
    ld [bc], a

jr_05b_55fe:
    ld bc, $0304
    add hl, de
    ld b, $33
    inc c
    ld h, a
    jr jr_05b_55d7

jr_05b_5608:
    jr nc, jr_05b_55a9

    ld h, b
    dec b
    ld h, [hl]
    ld [de], a
    inc c
    inc bc
    add hl, bc
    ld b, $11
    ld c, $13
    inc c
    inc hl
    inc e
    daa

jr_05b_5619:
    jr jr_05b_5620

    ld [c], a
    ld [de], a
    dec b
    db $e4
    db $10

jr_05b_5620:
    dec b
    ld [$0512], a
    ld [$2a10], a
    nop
    ld d, l
    nop
    xor d
    dec b
    ld [hl], c
    dec h
    ld d, h
    nop
    jr z, jr_05b_5632

jr_05b_5632:
    ld d, c
    nop

jr_05b_5634:
    ld [$4500], sp
    nop
    sub b
    nop
    ld b, l
    nop
    stop
    ld b, h
    dec b
    rlca
    ld hl, $1405
    inc h
    dec e
    ldh [$7a], a
    dec b
    rra
    dec h
    push af
    nop
    xor d
    nop
    ld d, b
    nop
    add c
    nop
    inc b
    inc bc
    ld [$0507], sp
    ld d, h
    jr nz, jr_05b_5681

    jr jr_05b_5682

    jr jr_05b_56ad

    jr nc, jr_05b_55fe

    ld h, b
    dec b
    ld b, b
    jr nz, jr_05b_56cc

    jr jr_05b_5634

    jr nc, @-$65

    ld h, b
    ld [hl-], a
    ret nz

    ld h, l
    add b
    jp z, Jump_05b_4f05

    dec h
    ld [hl+], a
    inc e
    dec b
    cp b
    ld [hl+], a
    ld c, l
    jr nc, jr_05b_56c5

    jr nc, jr_05b_56c9

    jr nc, jr_05b_5619

    ld h, b
    sub h

jr_05b_5681:
    ld h, b

jr_05b_5682:
    sub d
    ld h, b
    sub h
    ld h, b
    sbc b
    ld h, b
    dec b
    and b
    rst $38
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

jr_05b_56ad:
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
    ld [$0005], sp
    db $10

jr_05b_56c5:
    dec b
    nop
    ld a, [bc]
    db $10

jr_05b_56c9:
    jr z, @+$07

    db $10

jr_05b_56cc:
    ld a, [bc]
    inc a
    jp nz, $8678

    dec b
    jr nz, jr_05b_56dc

    ccf
    ret nz

    ld e, a
    and b
    dec b
    jr nc, jr_05b_56e3

    rst $38

jr_05b_56dc:
    nop
    dec b
    ld b, b
    ld a, [bc]
    inc c
    inc c
    inc d

jr_05b_56e3:
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
    jr c, jr_05b_5746

    dec b
    ei
    ld a, [c]
    rlca
    rlca
    inc c
    rrca
    jr jr_05b_5736

    jr nc, jr_05b_5758

    jr c, jr_05b_575a

    inc l
    ccf
    dec b
    db $fd
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

jr_05b_5736:
    inc bc
    inc bc
    dec b
    db $fd
    ldh a, [$3a]
    cp $e2
    cp $04
    db $fc
    jr @-$06

    ldh [$e0], a
    add b

jr_05b_5746:
    add b
    dec b
    ld sp, hl
    db $f4
    ld bc, $0601
    rlca
    jr jr_05b_576f

    inc a
    ccf
    ld h, $3f
    ld b, b
    ld a, a
    dec b
    db $fd

jr_05b_5758:
    ldh a, [$e0]

jr_05b_575a:
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

jr_05b_576f:
    rlca
    rlca
    dec b
    db $fd
    ldh a, [rLY]
    db $fc
    adc b
    ld hl, sp-$78
    ld hl, sp-$70
    ldh a, [$a0]
    ldh [$c0], a
    ret nz

    dec b
    ei
    ld a, [c]
    ld a, b
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
    ld sp, hl
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
    db $fd
    ldh a, [$c0]
    ret nz

    ldh a, [$f0]
    inc c
    db $fc
    ld [bc], a
    cp $ce
    cp $f0
    ldh a, [rTIMA]
    push af
    ld hl, sp+$03
    inc bc
    inc b
    dec b
    db $eb
    ld bc, $8005
    ld [bc], a
    ld a, h
    ld a, a
    cp b
    rst $38
    db $10
    rst $38
    dec b
    ld sp, hl
    db $f4
    ret nz

    ret nz

    jr nc, @+$07

    scf
    ld de, $0704
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

jr_05b_57eb:
    jr nz, jr_05b_57f2

    ld b, b
    ld bc, $ff80
    ret nz

jr_05b_57f2:
    rst $38
    jr nc, @+$01

    ld bc, $4005
    inc bc
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

    jr nz, jr_05b_57eb

    dec b
    xor b
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
    db $fd
    ldh a, [$3d]
    rst $38
    daa
    rst $38
    ld b, b
    dec b
    jp $e011


    rst $38
    ld a, $3f
    inc bc
    inc bc
    add d
    dec b
    add a
    ld de, $ff43
    ld l, $fe
    ld a, h
    db $fc
    ldh a, [$f0]
    dec b
    db $d4, $00, $20
    dec b
    ld sp, hl
    dec b
    dec b
    ret nz

    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    rlca
    dec b
    ld [hl], b
    ld [de], a

jr_05b_584a:
    jr nz, jr_05b_588b

    jr nz, jr_05b_588d

    ret nz

    ret nz

    jr c, jr_05b_584a

    inc d
    db $fc
    dec bc
    rst $38

jr_05b_5856:
    ld [$10ff], sp
    rst $38
    db $10
    dec b
    add e
    db $10
    dec b
    ld a, [$05f3]
    and b
    db $10
    jr nc, jr_05b_5856

    ld [$40f8], sp
    ld a, a
    ld b, b
    ld a, a
    ldh [rIE], a
    ldh a, [rIE]
    ret z

    rst $38
    push bc
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    ld h, $ff
    jr c, @+$01

    ld h, b
    rst $38
    ret nz

    rst $38
    add b
    dec b
    ld b, b
    inc bc
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $01

jr_05b_588b:
    rst $38
    dec b

jr_05b_588d:
    ld b, [hl]
    ld [hl+], a
    ld b, $fe
    ld [c], a
    rst $38
    ld [hl], e
    ld a, a
    ld [hl], c
    ld a, a
    ld a, c
    ld a, a
    ld h, l
    ld a, a
    ld h, d
    ld a, a
    inc a
    ccf
    jr nz, jr_05b_58e0

    dec b
    ld b, c
    ld [bc], a
    add b
    rst $38
    add c
    rst $38
    add a
    rst $38

jr_05b_58aa:
    ld c, h
    rst $38
    ld a, b
    rst $38
    inc e
    db $fc
    jr c, jr_05b_58aa

    ld a, b
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$60]
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    ldh [rIE], a
    ld [hl], b
    ld a, a
    ld [hl], h

Jump_05b_58c3:
    ld a, a
    inc a
    ccf
    ld e, $1f
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld b, c
    rst $38
    dec b
    sub b
    jr nz, jr_05b_591a

    cp $48
    ld hl, sp-$50
    ldh a, [$c0]
    ret nz

    dec b
    cp d
    ld b, $05
    and a

jr_05b_58e0:
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
    rst $20
    ld c, a
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
    rst $00
    ld l, a
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

jr_05b_591a:
    nop
    ld [$030b], sp
    ld [bc], a
    rrca
    ld [$101f], sp
    ld a, a
    ld b, h
    ld a, a
    jr @+$7f

    ld h, c
    ei
    sbc d
    ld h, a
    ld h, l
    nop
    nop
    rlca
    ld b, $1f
    jr @+$81

    ld h, [hl]
    rst $30
    sub h
    ccf
    add hl, sp
    cp $c6
    rst $30
    dec [hl]
    rlca
    ld b, $1f
    add hl, de
    ld a, [hl]
    ld h, [hl]
    ei
    sbc e
    rst $00
    ld b, h
    dec bc
    ld a, [de]
    nop
    ldh a, [$30]
    ld a, a
    ld b, h
    rst $38
    ld [$01ff], sp
    rst $38
    add b
    rst $38
    db $10
    rst $38
    ld b, d
    rst $38
    ld [$20ff], sp
    rst $08
    ld b, b
    cp a
    add e
    rst $38
    inc c
    rst $38
    ld hl, $06ff
    rst $38
    jr @+$01

    ld bc, $c6fe
    inc bc
    inc bc
    ld c, a
    ld [$33bf], sp
    cp $c6
    rst $38
    inc e
    ld a, a
    ld [hl], e
    db $fc
    call z, Call_000_30f0
    nop
    nop
    inc bc
    inc bc
    ld e, $18
    ld a, [hl]
    ld h, [hl]
    ld a, a
    dec e
    cp $f2
    ld a, h
    ld c, h
    dec bc
    ld e, [hl]
    nop
    jr @+$1a

    cp $e0
    rst $38
    rrca
    rst $38
    ldh [$fe], a
    ld b, $f8
    jr c, @+$0d

    db $fc
    ldh a, [$0c]
    ld [$141c], sp
    jr c, jr_05b_59ca

    db $76
    ld d, h
    xor $aa
    call c, $b854
    xor b
    rrca
    inc c
    ccf
    inc sp
    ld a, h
    ld c, h
    ld [hl], c
    ld sp, $200b
    ld [bc], a
    ld a, b

jr_05b_59b6:
    jr jr_05b_59b6

    ld e, $f8
    nop
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ccf
    ldh a, [rP1]
    ld hl, sp+$38
    rst $38
    rlca
    nop
    nop
    ld a, a

jr_05b_59ca:
    ld a, b
    ld a, a
    nop
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ld hl, sp+$3f
    nop
    ld a, a
    ld [hl], c
    cp $fe
    db $fc
    inc b
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    rst $38
    ldh a, [rNR10]
    ld hl, sp-$08
    rst $38
    rlca
    add hl, sp
    add hl, hl
    cp c
    xor c
    cp c
    xor c
    ei
    xor d
    rst $38
    adc d
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    dec bc
    call c, $8801
    rst $38
    xor d
    rst $38
    xor d
    ei
    xor d
    add hl, sp
    jr z, @+$08

    ld b, $0f
    add hl, bc
    rra
    ld de, $121e
    inc a
    inc l
    ld [hl], b
    ld d, b
    ld h, b
    ld h, b
    add b
    add b
    dec bc
    ret nc

    nop
    ld sp, hl
    jp hl


    ei
    xor d
    rst $38
    xor [hl]
    dec bc
    add sp, $00
    rst $38
    adc d
    ld h, e
    ld [hl+], a
    rst $28
    inc b
    rst $38
    add c
    rst $38
    ld bc, $42fe
    ld a, l
    ld b, b
    ei
    add b
    rst $38
    db $10
    ld a, a
    nop
    rst $38
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    jr nz, jr_05b_5abd

    ld b, b
    cp $a0
    ld [hl], h

jr_05b_5a42:
    ld b, b
    ld a, a
    inc b
    rst $38
    ld [$00bf], sp
    ld a, a
    ld bc, $22ff
    ld a, a
    ld b, h
    dec bc
    inc l
    stop
    nop
    ld bc, $0701
    ld b, $0f
    add hl, bc
    rrca
    rrca
    rrca
    inc c
    rra
    inc de
    dec c
    dec c
    ld a, a
    ld h, a
    rst $38
    adc b
    rst $38
    ld h, e
    rst $38
    add c
    rst $38
    inc e
    rst $38
    di
    rst $38
    adc $ff
    jr c, jr_05b_5a42

    ld c, h
    cp a
    or e
    rst $38
    rst $08
    rst $38
    add hl, sp
    rst $38
    inc bc
    rst $38
    sbc h
    rst $38
    inc bc
    cp $ce
    ccf
    inc sp
    ld a, b
    ld c, b
    ld [hl], b
    ld [hl], b
    dec bc
    or $f6
    ld a, a
    ld h, $ff
    add hl, bc
    rst $38
    ld b, e
    rst $38
    and [hl]
    rst $38
    pop bc
    ld a, [hl]
    ld e, d
    db $fc
    or h
    ld hl, sp+$68
    dec hl
    ld a, [hl+]
    ld a, a
    ld d, [hl]
    rst $38
    add l
    rst $30
    dec h
    cp $4a
    ld a, a
    ld b, d
    rst $38
    add h
    rst $38
    sub b
    ld a, a
    ld h, $ff
    adc c
    rst $38
    ld b, d
    rst $38
    and h
    rst $38
    pop bc
    ld a, a
    ld c, d
    rst $38
    or h
    rst $38
    ld l, l
    rst $38
    and b

jr_05b_5abd:
    cp a
    add hl, hl
    ld a, [hl]
    ld e, d
    ld a, [hl]
    ld d, d
    db $ec
    and h
    db $ec
    and h
    ret z

    ld c, b
    ret nz

    ld b, b
    dec bc
    db $fc
    ldh a, [rSB]
    ld bc, $0606
    dec de
    jr jr_05b_5b42

    ld h, c
    or [hl]
    add [hl]
    ret z

    ld [$c80b], sp
    ld [de], a
    ret c

    jr jr_05b_5aeb

    db $fc
    nop
    dec bc
    or $f7
    inc bc
    dec bc
    sub b
    nop
    dec bc
    ld e, h

jr_05b_5aeb:
    nop
    inc bc
    ld [bc], a
    rlca
    dec b
    ld c, $0a
    dec bc
    add h
    nop
    ld [hl], b
    ld d, b
    ldh [$a0], a
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    dec bc
    ldh a, [rNR10]
    dec bc
    ld a, [c]
    db $10
    dec bc
    db $f4
    db $10
    dec bc
    add h
    nop
    dec bc
    ld hl, sp+$10
    dec bc
    ld a, [$0b10]
    db $fc
    db $10
    dec bc
    cp [hl]
    ld [de], a
    dec bc
    inc hl
    cpl
    ld c, l
    dec bc
    add e
    cpl
    ld c, l
    dec bc
    db $e3
    cpl
    ld c, l
    dec bc
    ld b, e
    ccf
    ld c, l
    dec bc
    and e
    ccf
    ld c, l
    dec bc
    inc bc
    ld c, a
    ld c, l
    dec bc
    ld h, e
    ld c, a
    ld c, l
    dec bc
    jp Jump_05b_4d4f


    dec bc
    inc hl
    ld e, a
    ld c, l
    dec bc
    add e
    ld e, a
    ld c, l
    dec bc
    db $e3
    ld e, a
    ld c, l
    dec bc

jr_05b_5b42:
    ld b, e
    ld l, a
    ld c, l
    dec bc
    and e
    ld l, a
    ld c, l
    dec bc
    inc bc
    ld a, a
    ld c, l
    dec bc
    ld h, e
    ld a, a
    ld c, l
    dec bc
    jp Jump_000_297f


    nop
    ld [$0202], sp
    rst $38
    rst $30
    ld bc, $0a02
    ld bc, $ff02
    ldh a, [rLCDC]
    ld b, b
    ldh a, [rSVBK]
    ld hl, sp-$08
    db $fc
    sbc h
    cp $8c
    cp $01
    inc bc
    ld bc, $1f1f
    ccf
    ccf
    ld a, a
    ld e, $7f
    nop
    ccf
    ld [bc], a
    rst $38
    ldh a, [$84]
    sbc $04
    adc $00
    adc h
    nop
    add h
    nop
    add b
    ld [bc], a
    and b
    rst $38
    ld c, l
    ld [bc], a
    sbc c
    rrca
    ld c, l
    ld [bc], a
    ld sp, hl
    rrca
    ld c, l
    ld [bc], a
    ld e, c
    rra
    ld c, l
    ld [bc], a
    cp c
    rra
    ld c, l
    ld [bc], a
    add hl, de
    cpl
    ld c, l
    ld [bc], a
    ld a, c
    cpl
    ld c, l
    ld [bc], a
    reti


    cpl
    ld c, l
    ld [bc], a
    add hl, sp
    ccf
    ld c, l
    ld [bc], a
    sbc c
    ccf
    ld c, l
    ld [bc], a
    ld sp, hl
    ccf
    ld c, l
    ld [bc], a
    ld e, c
    ld c, a
    ld c, l
    ld [bc], a
    cp c
    ld c, a
    ld c, l
    ld [bc], a
    add hl, de
    ld e, a
    ld c, l
    ld [bc], a
    ld a, c
    ld e, a
    ld c, l
    ld [bc], a
    reti


    ld e, a
    ld c, l
    ld [bc], a
    add hl, sp
    ld l, a
    ld c, l
    ld [bc], a
    sbc c
    ld l, a
    ld c, l
    ld [bc], a
    ld sp, hl
    ld l, a
    ld c, l
    ld [bc], a
    ld e, c
    ld a, a
    ld c, l
    ld [bc], a
    cp c
    ld a, a
    inc sp
    jr nc, @+$05

    ld a, [bc]
    ld [bc], a
    ld a, [$ee09]
    daa
    ld hl, sp+$49
    or $54
    ld sp, hl
    ld a, [hl-]
    cp d
    ccf
    rst $38
    inc [hl]
    push af
    rlca
    rlca
    db $d3
    inc sp
    db $fd
    dec b
    ld b, l
    cp c
    xor a
    ld e, e
    scf
    or a
    add a
    sub a
    rlca
    ld d, a
    or d
    ld c, d
    ret


    ld l, $a7
    ld a, b
    ld c, c
    or $d4
    ld a, c
    cp d
    ld a, [hl-]
    cp a
    ld a, a
    or h
    ld [hl], l
    rlca
    jr @-$2b

    inc [hl]
    db $fd
    ld b, $45
    cp b
    xor a
    ld e, d
    dec [hl]
    or h
    add l
    sub [hl]
    dec b
    ld d, [hl]
    db $fd
    db $fd
    ld a, [$eafb]
    db $eb
    ret nc

    db $dd
    or h
    cp d
    ld b, d
    ld b, h
    cp b
    call $b8c3
    sbc a
    sbc a
    ld d, a
    rst $10
    dec bc
    cp e
    dec l
    ld e, l
    ld b, d
    ld [hl+], a
    dec e
    or e
    jp $c31d


    dec e
    nop
    nop
    add b
    cp a
    add b
    add b
    or l
    or l
    add b
    add b
    or [hl]
    or [hl]
    add b
    add b
    xor d
    xor d
    nop
    nop
    ld bc, $01ff
    ld bc, $b5b5
    ld bc, $ad01
    xor l
    ld bc, $d501
    push de
    add b
    add b
    rst $38
    rst $38
    jp c, $d626

    ld a, [hl+]
    ld a, [$da06]
    ld h, $66
    sub [hl]
    and c
    ld e, l
    ld bc, $ff01
    rst $38
    ld e, [hl]
    ld h, c
    ld [hl], $89

jr_05b_5c75:
    dec de
    and h
    dec bc
    or h
    ld h, l
    ld l, d
    sbc l
    and d
    ld d, h
    ld d, h
    adc b
    xor e
    ld hl, $f656
    ld bc, $13e4
    xor $00
    cp l
    ld b, b
    rst $10
    jr z, jr_05b_5cb8

    ld a, [hl+]
    ld de, $84d5
    ld l, d
    ld l, a
    add b
    daa
    ret z

    ld [hl], a
    nop
    cp l
    ld [bc], a
    db $eb
    inc d
    ld a, [c]
    ld a, [c]
    ret


    adc $a7
    cp b
    ld c, c
    db $76
    ld d, h
    ld a, c
    cp d
    cp d
    cp a
    cp a
    or h
    or l
    rrca
    rrca
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    rst $38
    ld a, [bc]
    ldh [$0e], a
    sbc c
    rst $38

jr_05b_5cb8:
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    cp l
    rst $38
    jp $f130


    xor b
    xor l
    jr z, jr_05b_5c75

    xor b
    ld l, d
    and h
    ld h, [hl]
    inc [hl]
    or [hl]
    ld c, $4e
    ld bc, $07f9
    scf
    rlca
    ld d, a
    dec b
    scf
    rlca
    inc d
    dec b
    sub [hl]
    dec l
    cp h
    ld [hl], e
    ldh a, [$83]
    cp h
    ldh a, [$31]
    add sp, $2d
    add sp, $2c
    xor b
    ld l, d
    and h
    ld h, $34
    db $76

jr_05b_5cef:
    ld c, $ce
    ld bc, $07f9
    inc [hl]
    rlca
    ld d, h
    ld b, $35
    rlca
    inc d
    dec b
    sub h
    inc l
    cp a
    ld [hl], e
    db $f4
    add e
    cp h
    rst $30
    ld [$42bd], sp
    sbc $21
    sub $29
    ei
    inc b
    db $db
    inc h
    ld l, [hl]
    sub c
    xor e
    ld d, h
    rst $18
    jr nz, jr_05b_5cef

    ld h, $fe
    ld bc, $49b6
    db $db
    inc h
    db $eb

jr_05b_5d1e:
    inc d
    db $ed
    ld [de], a
    ld a, l
    add d
    cp l
    ld b, d
    db $ed
    ld [de], a
    rst $38
    nop
    cp c
    ld b, [hl]
    ld a, [bc]
    ld b, h
    db $10
    ld a, e
    add h
    ld l, l
    sub d
    ld [hl], a
    adc b
    db $db
    inc h
    ld l, d
    sub l
    xor [hl]
    ld d, c
    cp a
    ld b, b
    xor $11
    rst $30
    ld [$48b7], sp
    ld a, [bc]
    ldh [rDIV], a
    rst $30
    ld a, [bc]
    ldh [$0b], a
    rst $30
    ld a, [bc]
    adc b
    add hl, de
    rst $28
    rst $28
    rst $10
    rst $00
    rst $28
    rst $28
    ld a, [bc]
    sbc h
    jr jr_05b_5d1e

    ld a, [bc]
    xor c
    add hl, de
    ld a, [bc]
    sub [hl]
    inc e
    ld a, [bc]
    ldh [$0c], a
    ld a, [bc]
    or [hl]
    ld e, $0a
    ret c

    rra
    dec c
    ld a, [bc]
    db $eb
    rra
    ld bc, $fffc
    ldh [$0a], a
    ldh [$03], a
    cp $ff
    ldh [rIE], a
    nop
    ld a, [bc]
    add hl, sp
    ld hl, $e00a
    ld [bc], a
    ld a, [bc]
    ld a, [hl-]
    ld [hl+], a
    nop
    rst $38
    ld a, a
    add b

jr_05b_5d83:
    ld a, [bc]
    inc [hl]
    jr nz, jr_05b_5d83

    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add c
    cp $03
    db $fc
    add b
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$1f
    ldh [$7f], a
    ld a, [bc]
    ld h, b
    jr nz, jr_05b_5da1

jr_05b_5da1:
    rlca
    ld hl, sp+$3f
    ret nz

    ld a, [bc]
    ld b, l
    dec h
    nop
    rst $38
    nop

jr_05b_5dab:
    ld a, [bc]
    ld d, d
    jr nz, jr_05b_5dab

    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [$0a]
    adc c
    ld hl, $f807
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, [bc]
    ld l, d
    ld [hl+], a
    ld a, [bc]
    and b
    add hl, hl
    ld a, [bc]
    ld b, c
    add hl, hl
    cp $01
    ld a, [bc]
    ldh [rSC], a
    ld a, a
    rst $38
    rlca
    ld a, [bc]
    add hl, sp
    add hl, hl
    ld a, [bc]
    ldh [rSC], a
    ccf
    rst $38
    rlca
    rst $38
    ldh [$1f], a
    db $fc
    inc bc
    ld a, [bc]
    ld [hl], h
    jr z, jr_05b_5dea

    rst $38

jr_05b_5dea:
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    cp $0a
    ldh a, [rNR41]
    nop
    ld a, [bc]
    call nz, Call_000_3f20
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add c
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    ld a, [bc]
    ld [bc], a
    jr nc, @+$41

    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    ld a, [bc]
    add hl, hl
    ld sp, $0040
    ld bc, $ff01
    pop af
    inc bc
    nop
    rrca
    rlca
    jr jr_05b_5e3d

    ld de, $130c
    nop
    ld c, $00
    ld [bc], a
    nop
    jr jr_05b_5e39

jr_05b_5e39:
    ld [hl], b
    nop
    ldh [rP1], a

jr_05b_5e3d:
    ldh [rP1], a
    ret nz

    nop
    add b
    ld bc, $f1ff
    jr jr_05b_5e5f

    inc h
    ld bc, $0224
    db $10
    inc l
    db $10
    ld [$0810], sp
    nop
    stop
    stop
    nop
    ld bc, HeaderTitle
    nop
    nop
    nop
    jr nc, jr_05b_5e5f

jr_05b_5e5f:
    ld bc, $ff01
    di
    jr jr_05b_5e7d

    inc h
    jr jr_05b_5e8c

    nop
    jr jr_05b_5e6c

    rst $38

jr_05b_5e6c:
    db $f4
    ld [$1c00], sp
    nop
    ld [$fa01], sp
    ld sp, hl
    ld bc, $041a
    ret nc

    nop
    ld [bc], a
    ld [bc], a
    rst $38

jr_05b_5e7d:
    di
    jr jr_05b_5e98

    inc h
    jr jr_05b_5ea7

    nop
    jr jr_05b_5e88

    cp $f5

jr_05b_5e88:
    ld [$1408], sp
    nop

jr_05b_5e8c:
    ld [$fb02], sp
    ld hl, sp+$02
    dec de
    add hl, bc
    ld [bc], a
    rst $38
    ld a, [c]
    rlca
    nop

jr_05b_5e98:
    rra
    inc bc
    ld a, h
    ld [bc], a
    rst $38
    di
    rra
    nop
    rst $38
    rlca
    ld hl, sp+$7f
    add b
    rst $38
    nop

jr_05b_5ea7:
    nop
    ld bc, $0300
    nop
    rlca
    ld bc, $030e
    inc e
    rlca
    jr c, jr_05b_5ebb

    ld a, b
    rrca
    ld [hl], b
    rrca
    ldh a, [$3f]
    ret nz

jr_05b_5ebb:
    rst $38
    nop
    ld [bc], a
    ld h, h
    rrca
    rlca
    ld [bc], a
    cp $f5
    inc bc
    nop
    rrca
    nop
    rra
    ld bc, $023e
    jr c, jr_05b_5ed0

    ld [bc], a
    ld c, b

jr_05b_5ed0:
    nop
    ld [bc], a
    ld h, d
    ld [bc], a
    nop
    ld a, a
    nop
    rst $38
    rrca
    ldh a, [rSC]
    db $76
    dec bc
    ld [bc], a
    ld d, c
    ld bc, $0700
    nop
    rrca
    ld bc, $070e
    ld a, b
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld [bc], a
    ld c, h
    nop
    ld [bc], a
    ld a, h
    nop
    nop
    ld [$fe05], sp
    dec b
    nop
    ld bc, $fdfc
    db $fc
    cp $fc
    db $fc
    ld hl, sp-$08
    ei
    ei
    ld d, l
    ld d, l
    xor d
    xor d
    dec b
    db $10
    ld [$ffff], sp
    rst $38
    rst $38
    ld a, a
    ld a, a
    dec a
    dec a
    sub b
    sub b
    db $e3
    db $e3
    dec b
    jr nz, jr_05b_5f1b

jr_05b_5f1b:
    dec b
    ld [hl+], a
    nop
    ld a, l
    ld a, l
    ld hl, $8521
    add l
    adc e
    adc e
    dec b
    jr nz, jr_05b_5f29

jr_05b_5f29:
    db $dd
    db $dd
    xor $ee
    dec b
    ld b, b
    ld [bc], a
    rst $28
    rst $28
    rst $30
    rst $30
    rst $30
    rst $30
    dec b
    inc l
    ld [bc], a
    dec b
    ld d, b
    ld b, $f0
    ldh a, [$50]
    ld d, b
    rlca
    rlca
    ld c, a
    ld c, a
    ld e, a
    ld e, a
    rst $18
    rst $18
    dec b
    jr nz, jr_05b_5f4d

    or a
    or a

jr_05b_5f4d:
    rst $28
    rst $28
    rst $10
    rst $10
    dec b
    ld d, b
    inc b
    db $76
    db $76
    ld a, $3e
    ld d, $16
    dec de
    ld e, e
    sub a
    rst $10
    adc e
    adc e
    adc l
    xor l
    set 1, e
    ld a, a
    ld a, a
    ld a, a
    rst $38
    dec b
    sub b
    nop
    ccf
    ccf
    ccf
    ld a, a
    cp a
    rst $38
    ccf
    ccf
    push af
    push af
    ld a, [$f5fa]
    push af
    ldh a, [$f0]
    pop af
    ld sp, hl
    ld a, [c]
    ld a, [c]
    di
    ei
    or $f6
    dec b
    ld d, b
    ld b, $bf
    cp a
    db $dd
    db $dd
    db $eb
    db $eb
    ldh [$e0], a
    db $e4
    and $e4
    push hl
    and $e7
    and $05
    ret z

    ld bc, $e7e7
    ld a, a
    dec b
    ret nc

    ld bc, $3f3f
    ccf
    cp a
    ccf
    cp a
    rra
    sbc a
    rra
    rst $18
    ei
    ei
    xor a
    xor a
    ld e, l
    ld e, l
    xor e
    xor e
    dec b
    jr jr_05b_5fb9

    ei
    ei
    dec b
    ldh a, [rP1]
    rst $28

jr_05b_5fb9:
    rst $28
    ei
    ei
    rst $30
    rst $30
    ei
    ei
    ret nz

    ret nz

    jp nz, $cec2

    adc $8e
    adc [hl]
    sbc [hl]
    sbc [hl]
    ld e, $1e
    rrca
    rrca
    rlca
    rlca
    rst $30
    rst $30
    ld [hl], e
    ld [hl], e
    ld a, b
    ld a, b
    ld a, h
    ld a, h
    ld a, $3e
    ld e, [hl]
    ld e, [hl]
    ld a, [hl+]
    ld a, [hl+]
    sub h
    sub h
    rst $38
    rst $38
    sbc a
    sbc a
    ccf
    ccf
    cp $fe
    ld a, b
    ld a, b
    jr jr_05b_6004

    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    inc l
    inc b
    rst $18
    rst $18
    rst $20
    rst $20
    ld [hl], b
    ld [hl], b
    ld a, e
    ld a, e
    rst $38
    rst $38
    sbc $de
    push hl
    push hl
    rst $38
    rst $38
    rst $28

jr_05b_6004:
    rst $28
    sbc a
    sbc a
    scf
    scf
    di
    di
    ld a, a
    ld a, a
    dec b
    ld b, [hl]

Call_05b_600f:
    db $10
    rst $30
    rst $30
    cp b
    cp b
    rst $00
    rst $00
    rst $38
    rst $38
    cp $fe
    dec b
    or [hl]
    ld [bc], a
    ld l, a
    ld l, a
    rst $20
    rst $20
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    dec b
    ldh a, [rP1]
    ld sp, hl
    ld sp, hl
    db $f4
    db $f4
    ld [$d4ea], a
    call nc, $a8a8
    ld d, b
    ld d, b
    rst $00
    rst $20
    rst $00
    rst $10
    rst $20
    rst $20
    db $e3
    db $eb
    di
    ei
    ld hl, sp-$06
    db $fc
    db $fd
    cp $fe
    sbc a
    cp a
    adc a
    sbc a
    ld b, e
    ld c, e
    or c
    or c
    call z, $e3cc
    db $e3
    ld h, a
    ld h, a
    scf
    rst $30
    db $eb
    ei
    push hl
    push hl
    jp z, Jump_05b_46ca

    ld b, [hl]
    ld c, [hl]
    ld c, [hl]
    sub a
    sub a
    ld e, a
    ld e, a
    xor a
    xor a
    di
    di
    ei
    ei
    ld [hl], l
    ld [hl], l
    ld a, e
    ld a, e
    cp l
    cp l
    ld e, [hl]
    ld e, [hl]
    adc [hl]
    adc [hl]
    ld h, [hl]
    ld h, [hl]
    db $e3
    db $e3
    db $e3
    db $eb
    dec b
    jp nz, $f310

    di
    pop af
    push af
    dec b
    db $ca, $10, $0f

    ld c, a
    rrca
    ld l, a
    rrca
    cpl
    add a
    and a
    add a
    or a
    add a
    add a
    add a
    sub a
    add a
    and a
    dec b
    inc a
    ld [bc], a
    rst $38
    rst $38
    ld a, l
    ld a, l
    dec b
    ld [de], a
    ld [bc], a
    db $ed
    db $ed
    ei
    ei
    dec b
    ldh a, [rNR10]
    and $e6
    push af
    push af
    ld [$f5ea], a
    push af
    add d
    add d
    and b
    and b
    jr nc, jr_05b_60e3

    sub c
    sub c
    adc [hl]
    adc [hl]
    ret nz

    ret nz

    dec b
    ld l, [hl]
    db $10
    add b
    add b
    inc bc
    inc bc
    ld [hl], e
    ld [hl], e
    jr c, jr_05b_60fc

    inc e
    inc e
    add b
    add b
    ret nz

    ret nz

    rst $38
    rst $38
    inc b
    inc b
    cpl
    cpl
    ccf
    ccf
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    dec b
    jr nz, jr_05b_60db

jr_05b_60db:
    add hl, de
    add hl, de
    ld [$8008], sp
    add b
    ld b, b
    ld b, b

jr_05b_60e3:
    cp a
    cp a
    ccf
    ccf
    dec b
    ret nc

    nop
    ld hl, sp-$08
    ld [$0e08], sp
    ld c, $10
    db $10
    adc h
    adc h
    ret nz

    ret nz

    ldh a, [$f0]
    rst $38
    rst $38
    db $fc
    db $fc

jr_05b_60fc:
    ld [$2308], sp
    inc hl
    db $e3
    db $e3
    add e
    add e
    ld a, [bc]
    ld a, [bc]
    dec a
    dec a
    dec b
    ld e, h
    db $10
    ld a, h
    ld a, h
    ld [bc], a
    ld [bc], a
    ld h, [hl]
    ld h, [hl]
    dec a
    dec a
    sbc c
    sbc c
    call nz, $f9c4
    ld sp, hl
    nop
    nop
    inc bc
    inc bc
    ld e, a
    ld e, a
    cpl
    cpl
    sub a
    sub a
    xor a
    xor a
    rst $10
    rst $10
    rst $28
    rst $28
    ret nc

    ret nc

    adc b
    adc b
    dec b
    db $10
    ld [$9b9b], sp
    sbc l
    cp l
    rst $08
    rst $18
    pop hl
    pop hl
    dec b
    ld l, h
    db $10
    dec b
    nop
    nop
    rst $18
    rst $18
    rst $28
    rst $28
    dec b
    inc l
    ld [bc], a
    dec b
    jr z, jr_05b_6168

    ld e, a
    ld e, a
    add a
    add a
    and a
    and a
    db $d3
    db $d3
    xor c
    xor c
    pop de
    pop de
    ld sp, hl
    ld sp, hl
    push af
    push af
    ld sp, hl
    ld sp, hl
    dec b
    inc l
    ld [bc], a
    db $fd
    dec b
    add $21
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    dec b
    halt

jr_05b_6168:
    dec b
    ld c, d
    ld [bc], a
    db $eb
    db $eb
    dec b
    ret c

    jr nz, jr_05b_6176

    ld b, b
    db $10
    call c, $b8dc

jr_05b_6176:
    cp b
    or b
    or d
    ld sp, $2335
    inc hl
    ld h, e
    ld l, e
    rrca
    rrca
    dec b
    ld h, $20
    dec b
    ld d, b
    db $10
    dec b
    inc l
    ld [bc], a
    pop af
    push af
    ldh [$e0], a
    ldh [$e4], a
    ldh [$e2], a
    ldh [$e4], a
    ldh [$ea], a
    ldh [$e4], a
    ret nz

    ret z

    rlca
    rlca
    cpl
    cpl
    ld l, e
    ld l, e
    rst $00
    rst $00
    and e
    or e
    dec b
    ld a, [$ee00]
    xor $3b
    dec sp
    sub e
    sub e
    ld c, e
    ld c, e
    dec b
    ld [de], a
    ld b, $f3
    di
    rst $30
    rst $30
    rst $20
    rst $20
    rst $20
    rst $20
    rst $28
    rst $28
    dec b
    and d
    ld [hl+], a
    cp b
    dec b
    ld b, b
    ld sp, $3c3c
    cp h
    cp h
    ld a, [hl]
    ld a, [hl]
    cp a
    cp a
    ld a, a
    ld a, a
    di
    di
    ld sp, hl
    ld sp, hl
    pop af

jr_05b_61d2:
    pop af
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    jr nc, jr_05b_6209

    jr c, jr_05b_6213

    jr c, jr_05b_6215

    dec b
    or [hl]
    ld [bc], a
    ld e, a
    rra
    cp a
    cp a
    dec b
    ld d, b
    ld b, $fb
    ei
    pop af
    push af
    dec b
    ld a, [c]
    nop
    dec b
    ld d, b
    inc bc
    dec b
    ld c, a
    dec c
    dec b
    ld d, b
    inc b
    dec b
    and d
    jr nz, jr_05b_6235

    ld a, [hl-]
    inc e
    inc e
    adc d
    adc d
    add l
    add l

Call_05b_6202:
    set 1, e
    pop bc
    pop bc
    ret


    ret


    pop hl

jr_05b_6209:
    pop hl
    push af
    push af
    jp hl


    jp hl


    pop af
    pop af
    db $eb
    db $eb
    db $d3

jr_05b_6213:
    db $d3
    db $eb

jr_05b_6215:
    db $eb
    rst $00
    rst $00
    rst $28
    rst $28
    nop
    nop
    jr c, jr_05b_621e

jr_05b_621e:
    ld a, h
    nop
    cp $28
    cp $00
    cp $44
    ld a, h
    jr c, jr_05b_6261

    nop
    dec b
    ld a, [c]
    ld [bc], a
    dec b
    db $fc
    nop
    dec b
    ld c, [hl]
    nop
    rst $30
    rst $30

jr_05b_6235:
    rst $00
    rst $10
    rst $00
    rst $00
    dec b
    ldh [$32], a
    dec b
    jp c, $0510

    ld [c], a
    jr nc, jr_05b_61d2

    xor a
    adc a
    adc a
    rrca
    ld c, a
    rra
    sbc a
    rra
    rra
    ccf
    cp a
    ccf
    ccf
    pop bc
    pop de
    add e
    add e
    add e
    add e
    add a
    add a
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rla
    rla
    dec b

jr_05b_6261:
    and b
    jr nz, @-$20

    sbc $be
    cp [hl]
    ld e, [hl]
    ld e, [hl]
    cp h
    cp h
    ld a, l
    ld a, l
    cp e
    cp e
    push af
    push af
    db $eb
    db $eb
    db $fc
    db $fc
    ldh a, [$f0]
    ld hl, $8a21
    adc d
    dec b
    ld c, b
    nop
    ld d, a
    ld d, a
    xor a
    xor a
    ld a, a
    ld a, a
    rrca
    rrca
    ld b, a
    ld b, a
    and a
    and a
    ld h, e
    ld h, e
    ei
    ei
    cp a
    cp a
    ld e, a
    ld e, a
    dec b
    ld b, b
    ld b, b
    sbc a
    sbc a
    rst $18
    rst $18
    rst $08
    rst $08
    rst $08
    rst $08
    inc a
    inc a
    ld a, $3e
    inc a
    inc a
    cp d
    cp d
    cp [hl]
    cp [hl]
    cp l
    cp l
    cp a
    cp a
    dec b
    ld c, h
    jr nc, jr_05b_62b4

    jp nc, $3f03

    rra
    rra

jr_05b_62b4:
    rra
    rra
    rrca
    rrca
    dec b
    jr nz, jr_05b_62bb

jr_05b_62bb:
    cp $fe
    db $fc
    db $fc
    ld sp, hl
    ld sp, hl
    ld a, [$f9fa]
    ld sp, hl
    ld a, [c]
    ld a, [c]
    rst $38
    rst $38
    add a
    add a
    ld d, c
    ld d, c
    ld sp, hl
    ld sp, hl
    db $fc
    db $fc
    dec b
    nop
    ld [bc], a
    dec b
    jr nz, jr_05b_62d7

jr_05b_62d7:
    add c
    add c
    jr jr_05b_62f3

    ld a, [hl]
    ld a, [hl]
    dec b
    or $22
    dec b
    ld d, d
    jr nc, jr_05b_62d7

    di
    db $e3
    db $e3
    rst $20
    rst $20
    dec b
    ld c, h
    ld b, b
    sbc a
    sbc a
    dec b
    ret nz

    inc a
    dec b
    ret nz

jr_05b_62f3:
    inc a
    ld a, [c]
    ld a, [c]
    dec b
    jp c, Jump_000_0522

    db $fc
    nop
    dec b
    call nz, $e720
    rst $20
    and e
    and e
    and e
    and e
    or e
    or e
    or c
    dec b
    add sp, $41
    ld sp, $0531
    ld [hl], d
    db $10
    pop af
    pop af
    ldh a, [$f0]
    pop af
    pop af
    db $ed
    db $ed
    pop bc
    pop bc
    jp nc, $2ed2

    ld l, $0c
    inc c
    jr jr_05b_633a

    or c
    or c
    add d
    add d
    add l
    add l
    adc d
    xor d
    adc l
    adc l
    ld [hl], a
    ld [hl], a
    dec b
    jr nz, jr_05b_6331

jr_05b_6331:
    ld l, a
    ld l, a
    rst $28
    rst $28
    ld h, a
    ld h, a
    dec b
    ld [hl], $30

jr_05b_633a:
    dec b
    sbc d
    ld [hl-], a
    dec b
    ld c, d
    nop
    rst $20
    rst $20
    dec b
    ld [hl-], a
    jr nc, @+$07

    ret nz

    inc a
    rst $00
    rst $00
    jp $e3c3


    dec b
    ld b, h
    ld d, c
    di
    dec b
    ld c, d
    ld d, c
    ld d, c
    ld d, c
    or c
    or c
    ld b, b
    ld b, b
    ld [de], a
    ld [de], a
    dec b
    db $10
    inc b
    adc a
    adc a
    adc a
    adc a
    rst $08
    rst $08
    dec b
    ld h, d
    ld d, [hl]
    dec b
    ret nz

    inc a
    dec b
    cp b
    nop
    cp a
    cp a
    sub a
    sub a
    sbc a
    sbc a
    set 1, e
    ret


    ret


    db $ed
    db $ed
    dec b
    ret nz

    inc a
    rra
    rra
    dec b
    ld [hl+], a
    db $10
    dec b
    ld b, h
    ld b, d
    cpl
    cpl
    sbc a
    sbc a
    jp $81d3


    adc c
    and c
    and l
    pop bc
    ret


    ld [hl], c
    ld [hl], l
    jr nc, jr_05b_63c7

    ld a, b
    ld a, b
    jr c, jr_05b_63d3

    dec b
    ret nz

    inc a
    rst $18
    dec b
    ret nc

    ld d, c
    dec b
    jr nz, jr_05b_63a3

jr_05b_63a3:
    dec b
    ld c, h
    ld b, b
    rst $38
    rst $38
    ld de, $1115
    ld de, $e005
    ld d, h
    nop
    ld [bc], a
    nop
    inc b
    sub b
    sub b
    cp h
    cp h
    ld a, [$d4fa]
    call nc, Call_000_2929
    ld d, c
    ld d, c
    rrca
    rrca
    ld a, a
    ld a, a
    adc d
    xor d
    adc h
    adc h

jr_05b_63c7:
    adc b
    xor b
    adc b
    adc b
    adc c
    xor c
    adc c
    adc c
    ld [bc], a
    ld b, d
    ld [bc], a

jr_05b_63d2:
    ld [hl+], a

jr_05b_63d3:
    db $eb
    db $eb
    rst $18
    rst $18
    cp e
    cp e
    cp a
    cp a
    ld a, e
    ld a, e
    rst $30
    rst $30
    dec b
    jr nc, jr_05b_6412

    rst $30
    rst $30
    dec b
    ld c, b
    ld d, b
    dec b
    ld [hl+], a
    ld h, d
    pop af
    pop af
    pop hl
    pop hl
    dec b
    ret nz

    inc a
    dec b
    jr nc, jr_05b_6430

    dec b
    ld l, h
    ld [hl], $fb
    ei
    dec b
    and h
    ld b, b
    dec b
    ld h, h
    ld d, h
    rst $00
    rst $00
    and a
    and a
    rst $00
    rst $00
    rst $00
    rst $00
    dec b
    ret nz

    inc a
    push hl
    push hl
    push af
    push af
    pop af
    pop af
    pop af
    pop af

jr_05b_6412:
    dec b
    ld a, b
    inc [hl]
    dec b
    ret nz

    inc a
    dec b
    xor h
    ld d, b
    rrca
    rrca
    rst $18
    rst $18
    dec b
    ld a, d
    jr nz, jr_05b_63d2

    xor a
    rst $00
    rst $00
    ld e, b
    ld e, b
    add hl, sp
    add hl, sp
    ld e, h
    ld e, h
    cp h
    cp h
    ret c

    ret c

jr_05b_6430:
    sbc b
    sbc b
    ld sp, hl
    ld sp, hl
    sub c
    sub c
    dec b
    ret nz

    inc a
    rst $28
    rst $28
    rst $20
    rst $20
    ld h, a
    ld h, a
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    add hl, sp
    add hl, sp
    add hl, de
    add hl, de
    sbc h
    sbc h
    nop
    ld [bc], a
    add b
    add d
    add b
    add [hl]
    add b
    add d
    ret nz

    ret nz

    sub b
    sub l
    ret nz

    jp nz, $6160

    dec b
    inc l
    inc b
    dec b
    or $64
    inc b
    ld b, h
    ld bc, $0121
    ld h, c
    ld bc, $0341
    inc bc
    add hl, bc
    xor c
    inc bc
    ld b, e
    ld b, $86
    dec b
    inc [hl]
    jr nc, jr_05b_6478

    xor b
    ld b, b
    adc l
    adc l
    sbc l

jr_05b_6478:
    sbc l
    adc c
    adc c
    add hl, de
    add hl, de
    dec b
    inc l
    ld h, b
    pop af
    pop af
    db $e3
    db $e3
    db $d3
    db $d3
    rst $20

jr_05b_6487:
    rst $20
    db $d3
    db $d3
    db $e3
    db $e3
    inc a
    inc a
    ld a, d
    ld a, d
    dec b
    cp h
    jr nz, jr_05b_6487

    ei
    di
    di
    pop af
    ld sp, hl
    ldh a, [$f1]

Call_05b_649b:
    dec b
    inc b
    nop
    ld sp, hl
    ld sp, hl
    pop af
    di
    db $e3
    db $eb
    rst $08
    rst $18
    ld e, $1e
    dec a
    dec a
    ld h, l
    push hl
    push hl
    push hl
    rst $18
    rst $18
    adc a
    adc a
    cp h
    cp l
    ld [hl], b
    db $76
    pop bc
    pop de
    add a
    add a
    rst $20
    rst $20
    rst $28
    rst $38
    rst $08
    rst $08
    sbc a
    dec b
    add hl, sp
    ld hl, $8c05
    ld l, a
    ld bc, $c005
    inc a
    dec b
    ret c

    jr nz, jr_05b_64d4

    or b
    db $10
    di
    di
    db $eb

jr_05b_64d4:
    db $eb
    pop af
    pop af
    ld sp, hl
    ld sp, hl
    xor $ee
    cp $fe
    xor $ee
    db $fc
    dec b
    and [hl]
    ld [hl], b
    db $fd
    ld hl, sp-$07
    ld hl, sp-$07
    ld de, $3331
    ld [hl], e
    inc sp
    or e
    ld h, e
    db $e3
    ld h, a
    dec b
    cp b
    ld [hl], c
    dec b
    ld l, $5e
    sbc h
    sbc h
    call z, $eccc
    db $ec
    dec b
    ld [bc], a
    ld bc, $fefc
    cp $bd
    cp l
    db $10
    ld [de], a
    ld [$3409], sp
    inc [hl]
    ld a, [hl+]
    ld a, [hl+]
    inc d
    inc d
    ld a, [hl-]
    ld a, [hl-]
    cp l
    cp l
    ld e, d
    ld e, d
    dec b
    ret nc

    inc bc
    cp a
    ccf
    ld a, a
    ccf
    cp a
    rra
    ld e, a
    sbc a
    sbc a
    nop
    inc bc
    ld [bc], a
    ld [$1048], sp
    sub b
    inc l
    inc l
    ld d, h
    ld d, h
    jr z, jr_05b_6556

    ld e, h
    ld e, h
    inc a
    inc a
    ld e, b
    ld e, b
    ld hl, $1321
    inc de
    dec hl
    dec hl
    ld [hl], e
    ld [hl], e
    ld a, e
    ld a, e
    ld [hl], a
    ld [hl], a
    ld a, e
    ld a, e
    inc sp
    inc sp
    jp $a3c3


    and e
    ld [bc], a
    jr nz, jr_05b_654f

    ld b, e
    ld b, e
    and e
    and e

jr_05b_654f:
    ld hl, sp-$06
    ld hl, sp-$08
    pop af
    pop af
    jp hl


jr_05b_6556:
    jp hl


    rst $20
    rst $20
    rst $38
    ld [bc], a
    ld a, [hl-]
    ld bc, $7b7b
    rst $30
    rst $30
    db $fc
    db $fc
    cp b
    cp c
    ret nc

    jp nc, $a7a3

    ld b, a
    ld b, a
    adc a
    adc a
    sbc a
    sbc a
    ccf
    cp a
    ccf
    ccf
    ld a, a
    ld a, a
    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    db $fd
    db $fd
    ld a, [$fdfa]
    db $fd
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    pop bc
    pop bc
    adc b
    adc b
    dec [hl]
    dec [hl]
    ld a, [hl]
    ld a, [hl]
    db $fd
    db $fd
    cp $fe
    ld [bc], a
    ld l, [hl]
    nop
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    cp a
    cp a
    rra
    rra
    rst $00
    rst $00
    ld h, a
    ld h, a
    xor $ee
    cp $fe
    xor $ee
    ld [bc], a
    ld h, d
    nop
    db $fc
    db $fd
    ld hl, sp-$07
    ld hl, sp-$07
    ld de, $3331
    ld [hl], e
    inc sp
    or e
    ld h, e
    db $e3
    ld h, a
    ld [bc], a
    xor b
    ld bc, $e7e7
    ld [bc], a
    ld l, d
    nop
    ld [bc], a
    ld l, d
    nop
    ld [bc], a
    ld e, b
    ld b, $f1
    pop af
    di
    di
    db $e3
    db $e3
    rst $20
    rst $20
    rst $08
    rst $08
    rst $08
    rst $08
    sbc [hl]
    sbc [hl]
    ld b, e
    ld b, e
    and a
    and a
    ld d, a
    ld d, a
    ld [bc], a
    jp nc, $e700

    rst $20
    rst $10
    rst $10
    rst $20
    rst $20
    db $eb
    db $eb
    rst $30
    rst $30
    ld [bc], a
    ldh [rP1], a
    ei
    ei
    pop af
    pop af
    ld sp, hl
    ei
    pop af
    pop af
    ei
    ei
    ld [bc], a
    ld l, b
    ld [bc], a
    ld [bc], a
    ld h, [hl]
    nop
    db $fc
    cp $fc
    cp $ff
    rst $38
    rst $10
    rst $10
    add c
    add c
    db $c3, $db, $18


    inc h
    sbc c
    and l
    jr @+$26

    add c
    cp l
    ld [bc], a
    ld a, [hl-]
    nop
    db $eb
    db $eb
    add c
    adc c
    jp $02d3


    ld d, $12
    ld [$d0ea], a
    ret nc

    and b
    and a
    ret nz

    rst $18
    dec b
    ld a, [hl-]
    adc a
    or b
    ld a, [bc]
    dec [hl]
    add b
    cp a
    xor e
    xor e
    rlca
    rlca
    ld bc, $03e1
    ei
    ld h, b
    sbc h
    pop af
    dec c
    and b
    ld e, h
    ld bc, $fffd
    rst $38
    ld a, [$e0fa]
    ldh [$d0], a
    ret nc

    ret nz

    push bc
    add b
    adc e
    ret nz

    rst $00
    add b
    adc e
    rst $38
    rst $38
    xor a
    xor a
    rlca
    rlca
    dec bc
    adc e
    inc bc
    db $d3
    ld bc, $03e9
    di
    ld bc, $55e9
    ld d, l
    xor d
    xor d
    ld d, a
    ld d, a
    xor c
    xor c
    rst $38
    rst $38
    cp a
    cp a
    ld [hl], a
    ld [hl], a
    xor a
    xor a
    ld [bc], a
    ld h, b
    db $10
    rst $18
    rst $18
    db $76
    db $76
    rst $18
    rst $18
    rst $38
    rst $38
    db $dd
    db $dd
    ld a, a
    ld a, a
    ld d, l
    ld d, l
    ld [$b7ea], a
    or a
    ld a, a
    ld a, a
    ld [bc], a
    or [hl]
    inc b
    ld d, l
    ld d, l
    and d
    and d
    ld d, h
    ld d, h
    ld [$bfea], a
    cp a
    ei
    ei
    ld [bc], a
    add d
    nop
    ei
    ei
    xor a
    xor a
    ld e, l
    ld e, l
    xor e
    xor e
    ld [bc], a
    ld h, b
    db $10
    ld [bc], a
    ld h, b
    db $10
    ld [bc], a
    ld a, [hl-]
    nop
    db $dd
    db $dd
    rst $38
    rst $38
    ld a, l
    ld a, l
    ld [bc], a
    xor d
    ld [de], a
    ld e, $1e
    sbc h
    sbc l
    inc a
    dec a
    cp h
    cp h
    ld e, h
    ld e, [hl]
    sbc b
    sbc b
    add hl, hl
    add hl, hl
    sbc c
    sbc c
    ld [bc], a
    call nz, $f300
    di
    db $eb
    db $eb

Call_05b_66cd:
    ei
    ei
    ld [bc], a
    jp nc, $f710

    rst $30
    pop af
    di
    ld [hl], c
    ld [hl], l
    ld [hl], c
    ld [hl], e
    ld [hl], c
    ld [hl], l
    ld sp, $7833
    ld a, d
    cp l
    cp l
    ld e, h
    ld e, h
    ld [bc], a
    db $fc
    nop
    ld sp, hl
    db $fd
    ei
    ei
    di
    di
    and a
    and a
    ld b, a
    ld b, a
    rrca

jr_05b_66f2:
    rrca
    nop
    nop
    ld [bc], a
    ld h, b
    db $10
    rst $30
    rst $30
    ld [bc], a
    ld e, b
    inc b
    push de
    push de
    ld [bc], a
    ld e, b
    inc b
    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    ld [bc], a
    nop

jr_05b_6707:
    ld [hl+], a
    rst $10
    rst $10
    ld a, l
    ld a, l
    ld [bc], a
    ld a, [de]
    jr z, jr_05b_6707

    rst $30
    sbc $de
    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    ld b, b
    ld b, b
    ld [bc], a
    xor [hl]
    ld [de], a
    ld [bc], a
    jr jr_05b_6744

    ld [bc], a
    ld b, d
    ld a, [hl+]
    ld [bc], a
    ld h, b
    stop
    nop
    and d
    and d
    ld [bc], a
    xor h
    inc d
    ld [bc], a
    sub b
    stop
    nop
    xor b
    xor b
    ld [bc], a
    ld h, b
    db $10
    push af
    push af
    ld [$02ea], a
    ld h, b
    db $10
    ld b, l
    ld b, l
    jr z, jr_05b_6768

    nop
    nop
    add b
    add b

jr_05b_6744:
    ld b, b
    ld b, b
    ld [bc], a
    db $76
    jr nz, jr_05b_66f2

    xor b
    ld b, l
    ld b, l
    nop
    nop
    inc d
    inc d
    nop
    nop
    dec b
    dec b
    ld [bc], a
    xor d
    ld [de], a
    ld d, l
    ld d, l
    ld a, [bc]
    ld a, [bc]
    ld de, $8211
    add d
    ld [bc], a
    xor h
    ld [de], a
    ld [bc], a
    ld a, [hl]
    ld [hl+], a
    ld [bc], a
    xor b

jr_05b_6768:
    inc d
    ld e, b
    ld e, b
    add hl, sp
    add hl, sp
    ld e, h
    ld e, h
    cp h
    cp h
    ret c

    ret c

    sbc b
    sbc b
    ld sp, hl
    ld sp, hl
    sub c
    sub c
    rst $30
    rst $30
    rst $20
    rst $20
    rst $20
    rst $20
    rst $28
    ld [bc], a
    sub $21
    ld [bc], a
    ld a, [hl-]
    nop
    xor [hl]
    xor [hl]
    rst $18
    rst $18
    rst $08
    rst $08
    rst $20
    rst $20
    jp hl


    jp hl


    ldh a, [$f0]
    add sp, -$18
    push af
    push af
    dec a
    dec a
    rst $38
    rst $38
    ld [bc], a
    ret z

    nop
    rst $18
    rst $18
    ccf
    ccf
    ld a, $3e
    ld a, h
    ld a, h
    nop
    ld [$ff13], sp
    inc de
    rst $38
    ei
    inc de
    rst $28
    rst $38
    ld c, $55
    nop
    xor d
    inc de
    jr nc, jr_05b_67bf

    nop
    ld a, [hl+]
    ld a, [hl+]
    inc e
    inc e
    ld a, a
    ld a, a
    ld a, $3e

jr_05b_67bf:
    inc de
    ld b, [hl]
    nop
    ld d, l
    ld d, l
    dec d
    dec d
    ld e, a
    ld e, a
    cp a
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    xor d
    xor d
    ld d, l
    ld d, l
    ld d, h
    ld d, h
    ld hl, sp-$08
    cp $fe
    db $fc
    db $fc
    rst $38
    rst $38
    cp $fe
    xor e
    xor e
    ld d, h
    ld d, h
    inc de
    rst $38
    rst $30
    cp [hl]
    nop
    adc b
    nop
    ret nz

    inc de
    rst $38
    push af
    ld [hl], a
    nop
    ld b, a
    nop
    rrca
    inc de
    rst $38
    pop af
    db $fd
    nop
    db $fc
    inc de
    ld [hl-], a
    ld bc, $000a
    add h
    nop
    pop hl
    nop
    cp $00
    cp $00
    push de
    nop
    ld l, b
    nop
    ld [bc], a
    nop
    ld de, $7f00
    inc de
    rst $38
    pop af
    ld a, [hl]
    nop
    dec [hl]
    nop
    ld c, d
    nop
    ld bc, $4f00
    inc de
    rst $38
    pop af
    rst $18
    nop
    sbc $00
    ret nz

    nop
    ld hl, $0a00
    nop
    ld [bc], a
    nop
    dec d
    nop
    ld [hl+], a
    nop
    cp a
    nop
    ccf
    nop
    ld h, [hl]
    nop
    ldh a, [rP1]
    stop
    add e
    nop
    ld d, h
    nop
    and d
    jr jr_05b_6858

    jr nz, jr_05b_6862

    push af
    push af
    db $eb
    db $eb
    cp $fe
    ld a, a
    ld a, a
    cp a
    cp a
    rst $28
    rst $28
    nop
    ld b, d
    jr nc, jr_05b_6882

    ret c

    ret c

    dec d
    dec d
    ld a, e
    ld a, e

jr_05b_6858:
    rst $38
    inc de
    ld a, [$0001]
    rst $00
    nop
    ld d, e
    nop
    ld l, b

jr_05b_6862:
    nop
    ld [hl], b
    nop
    ld a, $00
    ld e, h
    ld bc, $0229
    ld [de], a
    nop
    push de
    nop
    adc e
    nop
    ld b, h
    ld bc, $8109
    and c
    add a
    add a
    ld e, a
    ld e, a
    rst $38
    rst $38
    nop
    ei
    nop
    rst $30
    nop
    and d

jr_05b_6882:
    add b
    add l
    ld b, b
    ld c, d
    cp b
    cp b
    adc a
    adc a
    sub h
    sub h
    ld bc, $0117
    ld c, a
    add c
    sbc l
    ld bc, $013b
    dec d
    ld b, c
    ld c, c
    ret nz

    ret nz

    ld h, b
    ld h, b
    nop
    or a
    add b
    or e
    add b
    ret nc

    add b
    xor b
    ret nz

    call nc, $a1a1
    push de
    push de
    ld l, d
    ld l, d
    nop
    ld h, l
    nop
    adc d
    nop
    dec d
    nop
    xor d
    ld bc, $4355
    ld c, e

jr_05b_68b8:
    xor a
    xor a
    ld d, a
    ld d, a
    nop
    rst $38
    nop
    cp a
    nop
    ld c, d
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    add l
    nop
    ld d, b
    nop
    inc hl
    ldh a, [$30]
    ldh a, [$30]
    ld hl, sp+$38
    ld hl, sp+$18
    ld hl, sp+$18
    cp $1e
    cp $0e
    rst $38
    rlca
    ld a, a
    ld [hl], b
    ld a, a
    ld a, b
    cp a
    cp [hl]
    ld c, a
    ld c, a
    inc sp
    inc sp
    dec e
    dec e
    sbc b
    sbc b
    ld c, b
    ld c, b
    inc de
    adc a
    ld bc, $ef02
    db $10
    cp d
    ld b, l
    rst $28
    db $10
    sbc $21
    ld l, e
    sub h
    cp $01
    inc de
    nop
    nop
    ld e, l
    and d
    xor a
    ld d, b
    ld d, l
    xor d
    ld a, [hl+]
    push de
    dec d
    ld [$00ff], a
    rst $10
    jr z, jr_05b_68b8

    ld d, l
    push de
    ld a, [hl+]
    xor d
    ld d, l
    ld d, l
    xor d
    and d
    ld e, l
    ld bc, $13fe
    nop
    inc b
    cp e
    ld b, h
    rst $38
    nop
    inc de
    sbc h
    db $10
    rst $38
    rra
    db $fd
    dec e
    cp $1e
    ld a, [$fd1a]
    dec e
    db $fd
    dec e
    inc de
    ret nc

    db $10
    add [hl]
    add [hl]
    adc h
    adc h
    add [hl]
    add [hl]
    jp nz, Jump_05b_42c2

    ld b, d
    ld b, d
    ld b, d
    ld h, b
    ld h, b
    jr nz, jr_05b_6962

    ld [$1408], sp
    inc d
    inc c
    inc c
    inc b
    inc b
    inc c
    inc c
    inc d
    inc d
    ld c, $0e
    ld b, $06
    ld c, e
    ld c, e
    or l
    or l
    jp c, $edda

    db $ed
    rst $10
    rst $10
    inc de
    ld e, b
    nop
    sub [hl]
    sub [hl]
    inc de

jr_05b_6962:
    ld d, [hl]
    nop
    xor a
    xor a
    sub $d6
    xor e
    xor e
    ld b, h
    ld b, h
    add c
    add c
    ld b, b
    ld b, b
    ld [$d5eb], a
    push de
    ei
    ei
    rst $38
    rst $38
    ld [hl], l
    ld [hl], l
    xor e
    xor e
    ld d, c
    ld d, c
    nop
    nop
    db $10
    db $10
    dec bc
    dec hl
    add a
    sub a
    ld b, d
    ld h, d
    ld b, c
    ld b, c
    xor l
    xor l
    ld a, d
    ld a, d
    dec h
    and l
    ld a, l
    ld a, l

jr_05b_6992:
    ei
    ei
    xor l
    xor l
    rst $30
    rst $30
    xor e
    xor e
    ld a, l
    ld a, l
    xor d
    xor d
    ld d, h
    ld d, h
    ld l, e
    ld l, e
    ld d, l
    ld d, l
    or a
    or a
    rst $28
    rst $28
    rst $08
    rst $08
    inc de
    ld d, [hl]
    nop
    pop af
    pop af
    inc b
    dec b
    sub d
    sub d
    db $eb
    db $eb
    rst $30
    rst $30
    ld e, l
    ld e, l
    ld [$d7ea], a
    rst $10
    rst $38
    cp h
    rst $38
    inc bc
    rst $38
    inc de
    and c
    ld de, $0013
    inc b
    db $e4
    db $e4
    ld a, [$f8fa]
    ld a, b
    cp $3e
    rst $38
    rra
    rst $38
    rlca
    inc de
    ld [hl], b
    jr nz, jr_05b_6992

    ld b, l
    db $fd
    ld [bc], a
    or [hl]
    ld c, c
    db $fd
    ld [bc], a
    xor $11
    inc de
    nop
    ld [bc], a
    inc de
    cp b
    db $10
    inc de
    cp b
    db $10
    cp e
    ld b, h
    rst $18
    jr nz, jr_05b_6a6e

    add b
    inc de
    sbc [hl]
    ld [hl+], a
    cp d
    ld b, l
    inc de
    and d
    jr nz, jr_05b_6a76

    add d
    rst $28
    db $10
    db $fd
    ld [bc], a
    cp l
    ld b, d
    ld d, a
    xor b
    xor [hl]
    ld d, c
    inc de
    or d
    ld [hl+], a
    db $eb
    inc d
    ld [hl], a
    adc b
    daa
    rst $08
    ld b, h
    xor l
    db $ed
    dec e
    ld d, d
    and a
    or a
    ld c, a
    ld l, e
    sbc a
    and l
    ld e, a
    ei
    rrca
    or b
    or b
    sub b
    ret c

    ld d, b
    ld a, [c]
    jr jr_05b_6a80

    ret nc

    ld a, [$f968]
    jr c, @+$80

    ret c

    ret c

    inc de
    db $fc
    db $10
    ld [bc], a
    ld [bc], a
    ld b, $46
    ld [bc], a
    add d
    ld b, $56
    nop
    jr nz, jr_05b_6a3b

    add d
    rst $38

jr_05b_6a3b:
    rra
    rst $38
    rrca
    inc de
    ld [bc], a

jr_05b_6a40:
    jr nc, jr_05b_6a40

    ld c, $fd
    dec c
    cp $0e
    rst $38
    rra
    db $fd
    db $fd
    ld a, a
    ld a, a
    xor [hl]
    xor [hl]
    ld e, e
    ld e, e
    cp a
    cp a
    ld c, e
    ld c, e
    or d
    or d
    ld d, $16
    ld a, l
    ld a, l
    jp c, $beda

jr_05b_6a5e:
    cp [hl]
    ld a, d
    ld a, d
    cp h
    cp h
    jr jr_05b_6a7d

    ld e, b
    ld e, b
    inc [hl]
    inc [hl]
    ld bc, $0221
    ld b, d
    add hl, hl

jr_05b_6a6e:
    add hl, hl
    sub $d6
    rst $28
    ld l, a
    rst $38
    inc e
    inc de

jr_05b_6a76:
    nop
    nop
    and [hl]
    and [hl]
    rst $38
    rst $38
    ld e, l

jr_05b_6a7d:
    ld e, l
    cp a
    cp [hl]

jr_05b_6a80:
    rst $38
    ld a, [$70ff]
    inc de
    nop
    nop
    pop bc
    pop bc
    pop bc
    pop bc
    jp hl


    jp hl


    db $e4
    db $e4
    add sp, $68
    db $e4
    ld h, h
    ld a, [c]
    ld [hl], d
    db $f4
    inc [hl]
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    inc de
    ld h, h
    ld [hl-], a
    ld a, a
    ld b, b
    rst $38
    ldh [rNR13], a
    nop
    ld bc, $817e
    sub c
    add b
    xor $00
    ld [hl], a
    inc de
    rst $38
    ldh a, [rNR13]
    nop
    inc bc
    add a
    ld a, b
    ld e, b
    jr nz, jr_05b_6a5e

    nop
    sbc a
    nop
    rst $38
    inc de
    ld [bc], a
    ld [hl-], a
    rst $38
    rst $08
    ld [hl], $36
    dec d
    sub l
    ld [bc], a
    rlc b
    rst $28
    xor b
    xor b
    ld e, b
    ld e, b
    add b
    add b
    ldh a, [$f0]
    ld hl, sp-$08
    jr jr_05b_6aee

    inc l
    inc l
    inc b
    add h
    ld b, $c6
    inc bc
    cp e
    inc bc
    di
    inc bc
    db $eb
    ld [bc], a
    or $01
    ld sp, hl
    nop
    db $f4
    nop
    rst $38
    add b
    add b
    cp [hl]
    cp [hl]

jr_05b_6aee:
    ld [hl], a
    ld [hl], a
    jp hl


    jp hl


    add b
    adc b
    nop
    ld h, $80
    db $dd
    nop
    ccf
    inc de
    db $fc
    ldh a, [$80]
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    jr nz, jr_05b_6b25

    jr jr_05b_6b1f

    ld [$00c8], sp
    ld a, [$e900]
    nop
    ret z

    nop
    inc d
    nop
    ld a, [bc]
    nop
    ld d, h
    inc bc
    inc hl
    xor a
    xor a
    inc c
    db $ec
    ld b, $e6
    ld b, $d6

jr_05b_6b1f:
    inc bc
    db $e3
    ld [bc], a
    ld d, d
    ld b, $a6

jr_05b_6b25:
    ld c, $ee
    dec c
    call $1efe
    rst $38
    rra
    rst $30
    scf
    ei
    dec sp
    db $fd
    db $fd
    db $fc
    db $fc
    ld hl, sp-$08
    ld a, b
    ld a, b
    adc h
    adc h
    add $c6
    adc l
    adc l
    add [hl]
    add [hl]
    ld b, a
    ld b, a
    and e
    and e
    ld [hl], c
    ld [hl], c
    sbc c
    sbc c
    db $10
    db $10
    jr z, @+$2a

    nop
    nop
    ld [$0208], sp
    ld [bc], a
    db $10
    db $10
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc l
    ld d, h
    ld d, h
    xor e
    xor e
    cp $fe
    push af
    push af
    rst $38
    rst $38
    ld e, a
    ld e, a
    xor a
    xor a
    inc bc
    inc bc
    or a
    or a
    rst $18
    rst $18
    cp d
    cp d
    ld [hl], l
    ld [hl], l
    ld a, [$d6fa]
    sub $2a
    ld a, [hl+]
    ld bc, $c311

jr_05b_6b7c:
    jp $ffff


    xor l
    xor l
    ld d, a
    ld d, [hl]
    rst $28
    xor $3f
    ld a, $3f
    ld a, $ff
    cp $ff
    db $fc
    rst $20
    and $f7
    or $e9
    ld l, c
    pop af
    ld sp, $18f8
    db $fc
    inc c
    inc de
    ld l, $20
    inc de
    ld l, $20
    ld [$1808], sp
    jr jr_05b_6bb7

    ld a, b

jr_05b_6ba5:
    ld b, b
    inc de
    inc c
    jr nc, jr_05b_6ba5

    dec de
    db $fd
    dec e
    ei
    dec de
    push af
    dec d
    ei
    dec de
    rst $30
    scf
    ld hl, sp-$08

jr_05b_6bb7:
    ret nc

    ret nc

    sub h
    sub h
    jr c, jr_05b_6bf5

    ld c, h
    ld c, h
    inc b
    inc b
    ld [$1108], sp
    ld de, $1414
    jr z, jr_05b_6bf1

    inc e
    dec a
    ld [$138a], sp
    jr nc, jr_05b_6bd4

    ld c, $0e
    rra
    rra

jr_05b_6bd4:
    inc c
    ld c, l
    ld de, $00bb
    ld d, h
    inc de
    ld [hl-], a
    inc bc
    rst $08
    nop
    add a
    inc de
    ld h, [hl]
    ld de, $0084
    ld [de], a
    nop
    inc b
    nop
    xor b
    inc de
    ldh [$34], a
    ld bc, $0109
    ld d, l

jr_05b_6bf1:
    inc de
    db $ec
    jr nc, jr_05b_6b7c

jr_05b_6bf5:
    add a
    rst $38
    rst $38
    db $fd
    db $fd
    sub $d6
    cp l
    cp l
    jp nc, $a8d2

    xor b
    ld b, b
    ld b, b
    rlca
    rlca
    rla
    sub a
    dec e
    ld e, l
    rrca
    adc a
    ld e, $1e
    xor [hl]
    xor [hl]
    ld hl, sp-$08
    add b
    add b
    jr z, jr_05b_6c3e

    inc de
    ld a, d
    ld b, b
    inc de
    db $fc
    ldh a, [$e0]
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$78]
    ld a, b
    ld e, b
    ld e, b
    inc l
    inc l
    ld e, [hl]
    ld e, [hl]
    ld l, $2e
    ld c, $0e
    inc de
    db $fc
    db $10
    ld b, $06
    ld c, $0e
    ld e, $1e
    inc e
    inc e
    ld a, [bc]
    ld a, [bc]
    inc d
    inc d
    inc de

jr_05b_6c3e:
    jr z, jr_05b_6c90

    ld e, a
    ld e, a
    and [hl]
    and [hl]
    ld c, [hl]
    ld c, [hl]
    inc h
    inc h
    ld c, [hl]
    ld c, [hl]
    inc b
    inc b
    inc de
    inc l
    ld b, b
    inc [hl]
    inc [hl]
    ld e, h
    ld e, h
    xor h
    xor h
    ld e, b
    ld e, b
    xor h
    xor h
    inc de
    xor d
    jr nc, @+$1a

    jr jr_05b_6cbe

    ld e, h
    ccf
    inc a
    inc de
    ld d, b
    ld d, b
    ld a, a
    ld a, h
    ccf
    inc a
    ld l, a
    ld l, [hl]
    ccf
    ld a, $fe
    ld c, $fe
    ld b, $13
    adc d
    ld hl, $6713
    ld d, e
    ld [$1c08], sp
    inc e
    inc c
    inc c
    inc de
    ld [hl], d
    ld d, d
    inc de
    ld [hl+], a
    ld d, b
    xor $2e
    db $fc
    ld a, h
    db $fc
    ld a, h
    ld hl, sp+$78
    ld hl, sp-$08
    ldh a, [$f0]
    pop af

jr_05b_6c90:
    pop af
    jp hl


    jp hl


    ld [hl+], a
    ld [hl+], a
    db $10
    db $10
    inc sp
    inc sp
    ld h, e
    ld h, e
    and e
    and e
    rst $20
    rst $20
    and [hl]
    and [hl]
    call nz, $00c4
    ld [hl], h
    nop
    xor b
    nop
    ld d, b
    ld bc, $00a1
    ld d, b
    ld [bc], a
    ld [hl+], a
    ld b, $86
    dec c
    dec c
    inc de
    ld sp, hl
    di
    inc de
    dec b
    ld d, c
    nop
    dec d
    nop
    add d
    inc de

jr_05b_6cbe:
    ei
    pop af
    inc b
    nop
    adc d
    nop
    stop
    ld b, d
    nop
    dec d
    nop
    adc d
    ld [$100c], sp
    scf
    inc c
    ld c, [hl]
    ld bc, $0e35
    adc a
    dec d
    ccf
    inc c
    ld l, [hl]
    inc bc
    scf
    ld de, $0031
    add l
    ld de, $0339
    and a
    ld [bc], a
    ld d, e
    nop
    xor d
    ld [bc], a
    rla
    ld [bc], a
    cp a
    rst $18
    call c, $bc97
    daa
    ld a, h
    dec hl
    cp h
    dec hl
    ld a, h
    inc [hl]
    ld a, e
    db $eb
    db $fc
    adc h
    db $db
    db $dd
    db $dd
    db $eb
    db $eb
    db $fd
    ld a, l
    ld a, [$f47a]
    inc [hl]
    cp $3e
    or $36
    cp $1e
    ld a, [bc]
    ld a, [bc]
    ld d, $16
    inc c
    inc c
    ld d, $16
    ld a, [hl+]
    ld a, [hl+]
    inc d
    inc d
    ld a, $3e
    inc de
    ld [hl], d
    ld d, d
    jr z, jr_05b_6d46

    inc e
    inc e
    jr c, @+$3a

    jr jr_05b_6d3c

    inc de
    inc h
    ld h, b
    inc de
    ld h, b
    ld sp, $6313
    ld [hl-], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [$2e]
    ld l, $1c
    inc e
    inc de
    ld b, b
    ld h, b
    inc h
    inc h
    inc e

jr_05b_6d3c:
    inc de
    ld c, d
    ld h, c
    ld l, a
    ld l, [hl]
    or a
    or [hl]
    xor a
    xor [hl]
    sbc e

jr_05b_6d46:
    sbc e
    rst $08
    rst $08
    add l
    add l
    ld b, e
    ld b, e
    and e
    and e
    inc de
    ld h, [hl]
    ld d, c
    rlca
    cp $06
    db $fc
    inc c
    db $fc
    inc e
    ld hl, sp-$48
    ldh a, [$f0]
    inc de
    ld [hl+], a
    ld d, b
    ld c, $0e
    inc e
    inc e
    inc de
    ld c, h
    ld d, b
    inc l
    inc l
    inc e
    inc e
    db $d3
    db $d3
    di
    di
    rst $20
    rst $20
    rst $28
    ld l, a
    rst $38
    ld a, a
    ei
    ld a, e
    push af
    ld [hl], l
    ld a, [c]
    ld [hl], d
    adc b
    adc b
    add b
    add b
    inc de
    ld l, $20
    db $10
    db $10
    jr jr_05b_6d9e

    jr jr_05b_6da0

    inc de
    ld [hl], d
    ld b, b
    nop
    nop
    nop
    ld bc, $0800
    nop
    inc b
    inc de
    cp d
    ld d, c
    and d
    nop
    ld d, l
    inc de
    xor [hl]
    ld h, c
    jr z, jr_05b_6d9e

jr_05b_6d9e:
    nop
    nop

jr_05b_6da0:
    add h
    nop
    ld b, b
    nop
    add b
    nop
    ld d, l
    nop
    xor b
    nop
    ld b, l
    nop
    ld [$4000], sp
    inc de
    ld a, [$01f2]
    ld c, l
    nop
    sbc d
    db $10
    dec [hl]
    ld [$1058], sp
    ld [de], a
    db $10
    jr c, jr_05b_6dbf

jr_05b_6dbf:
    ld [bc], a
    nop
    nop
    ld b, d
    ld h, a
    dec b
    rst $10
    ld bc, $427f
    rst $28
    ld b, e
    ld [hl], e
    add b
    push bc
    ld b, b
    ld d, d
    add b
    add b
    rst $10
    db $fc
    ld e, e
    sbc $d5
    cp $5e
    rst $18
    ld l, e
    rst $38
    sub l
    rst $18
    jp hl


    rst $38
    rst $18
    rst $18
    rlca
    rlca
    ld b, $06
    dec b
    dec b
    ld [bc], a
    add d
    ld bc, $0309
    add e
    ld bc, $0253
    ld a, [bc]
    add [hl]
    add [hl]
    adc [hl]
    adc [hl]
    adc h
    adc h
    sbc h
    sbc h
    jr jr_05b_6e14

    jr nc, jr_05b_6e37

    jr nc, jr_05b_6e72

    ld h, c
    ld l, c
    ccf
    jr nc, jr_05b_6e84

    ld [hl], b
    inc de
    jr nz, jr_05b_6e7a

    jr c, @+$61

    ld e, b
    ccf
    jr c, jr_05b_6e4e

    jr c, jr_05b_6e90

    ld [hl], b
    inc de
    ld [hl+], a

jr_05b_6e14:
    ld [hl], e
    inc de
    ld hl, $1373
    ld a, b
    ld b, b
    inc de
    sub [hl]
    ld h, b
    inc de
    sub [hl]
    ld h, b
    inc de
    db $fc
    ldh a, [rHDMA1]
    ld d, c
    jr nc, @+$32

    inc [hl]
    inc [hl]
    ld a, [de]
    ld a, [de]
    ld e, $1e
    rrca
    rrca
    rra
    rra
    rrca
    rrca
    db $c2, $c2, $00

jr_05b_6e37:
    nop
    jr jr_05b_6e52

    jr nc, jr_05b_6e6c

    ld h, b
    ld h, b
    ldh [$e0], a
    pop bc
    pop bc
    jp Jump_000_3cc3


    inc a
    ld e, h
    ld e, h
    inc de
    ld [hl], b
    ld [hl], h
    cp h
    cp h
    ld e, h

jr_05b_6e4e:
    ld e, h
    push af
    ld [hl], l
    ei

jr_05b_6e52:
    ld a, e
    rst $30
    ld [hl], a
    rst $30
    ld [hl], a
    cp $7e
    or $76
    db $fd
    db $fd
    db $fd
    db $fd
    inc d
    inc d
    jr nz, jr_05b_6e83

    ld b, h
    ld b, h
    ld b, b
    ld b, b
    add h
    add h
    ld [$0c08], sp

jr_05b_6e6c:
    inc c
    ld [$1308], sp
    inc a
    ld [bc], a

jr_05b_6e72:
    inc de
    xor [hl]
    ld h, c
    inc de
    inc sp
    ld bc, $f013

jr_05b_6e7a:
    db $10
    inc de
    ld a, b
    ld b, b
    inc de
    ld a, b
    ld h, d
    jr jr_05b_6e9b

jr_05b_6e83:
    nop

jr_05b_6e84:
    ld e, b
    ld bc, $6a21
    ld l, d
    push de
    push de
    rst $28
    rst $28
    ld a, a
    ld a, a
    rst $38

jr_05b_6e90:
    cp a
    rst $38
    ld a, a
    nop
    ld a, [bc]
    nop
    add l
    ld b, b
    ld h, b
    ldh a, [$f4]

jr_05b_6e9b:
    ld hl, sp-$28
    ld a, [$fdca]
    adc l
    rst $38
    rlca
    nop
    xor d
    nop
    ld d, b
    nop
    and h
    nop
    nop
    add hl, bc
    add hl, bc
    or a
    or a
    inc de
    inc e
    db $10
    rrca
    rrca
    rla
    rla
    ld c, l
    ld c, l
    cp e
    cp e
    ld d, a
    ld d, a
    rst $38
    rst $38
    inc de
    ld h, b
    ld b, b
    db $10
    inc bc
    add hl, bc
    nop
    add l
    nop
    jr z, jr_05b_6ec9

jr_05b_6ec9:
    ld bc, $0400
    nop
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    sub h
    sub h
    pop hl
    push hl
    ld h, b
    ld l, c
    jp $42e3


    ld b, a
    and c
    xor e
    ld h, a
    ld h, a
    rst $10
    rst $10
    ld h, [hl]
    ld h, [hl]
    dec b
    dec b
    rlca
    rlca
    ld c, $0e
    ld d, $16
    jr jr_05b_6f06

    add hl, bc
    ei
    ld a, [c]
    add [hl]
    add [hl]
    ld [$0108], sp
    ld bc, $4747
    cpl
    cpl
    ld e, a
    ld e, h
    cp a
    cp b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    rst $38
    ldh [rIE], a

jr_05b_6f06:
    ret nz

    rst $38
    add b
    rst $38
    nop
    add hl, bc
    ld c, b
    ld [bc], a
    ld b, b
    ld b, b
    and b
    and b
    add hl, bc
    ld d, b
    nop
    ld h, b
    ld h, b
    jr nz, @+$22

    jr nc, jr_05b_6f4b

    jr nc, jr_05b_6f4d

    db $db
    db $db
    rst $28
    rst $28
    di
    di
    ld c, l
    ld c, l
    call Call_05b_66cd
    ld h, [hl]
    pop bc
    pop bc
    ld h, d
    ld h, d
    rst $38
    ld bc, $7009
    ld bc, $0903
    db $76
    ld bc, $fe07
    ld b, $fb
    ei
    sbc $de
    cp $fe
    cp $fe
    db $fc
    db $fc
    sub $d6
    db $fc
    db $fc
    ld sp, hl
    ld sp, hl
    jr jr_05b_6f63

jr_05b_6f4b:
    jr jr_05b_6f65

jr_05b_6f4d:
    jr c, jr_05b_6f87

    jr nc, jr_05b_6f81

    ld [hl], d
    ld [hl], d
    ld h, d
    ld h, d
    or $f6
    and $e6
    nop
    ld d, l
    nop
    and d
    add hl, bc
    ld a, [$a8f3]
    nop
    ld d, l

jr_05b_6f63:
    nop
    xor d

jr_05b_6f65:
    jr c, jr_05b_6f9f

    ld a, b
    ld a, b
    jr c, jr_05b_6fa3

    ld e, b
    ld e, b
    jr c, jr_05b_6fa7

    ld e, h
    ld e, h
    cp h
    cp h
    ld e, h
    ld e, h
    rst $38
    ld a, a
    rst $38
    rst $38
    db $db
    jp c, $aeaf

    ld e, a
    ld e, h
    cpl
    inc l

jr_05b_6f81:
    rlca
    ld b, $0f
    rrca
    add hl, bc
    ld [hl], h

jr_05b_6f87:
    ld bc, $fd07
    dec c
    or $16
    pop hl
    ld hl, $e1e1
    jp nz, $ffc2

    rst $38
    push af
    push af
    ld a, [hl]
    ld a, [hl]
    jp hl


    jp hl


    jp $8bc3


    adc e

jr_05b_6f9f:
    cpl
    ld l, $7f
    ld a, b

jr_05b_6fa3:
    rst $38
    ld hl, sp+$7f
    ld a, b

jr_05b_6fa7:
    cp a
    or b
    ld a, a
    ld h, b
    add hl, bc
    ld b, h
    inc b
    ld b, $06
    ld c, $0e
    inc c
    inc c
    inc e
    inc e
    jr jr_05b_6fd0

    add hl, bc
    ld e, h
    nop
    ld h, b
    ld h, b
    ccf
    jr c, jr_05b_6fc9

    db $10
    ld [de], a
    cpl
    jr z, jr_05b_7044

    ld a, b
    ld l, a
    ld l, b
    ccf

jr_05b_6fc9:
    jr c, jr_05b_6fd5

    ld a, [bc]
    dec [hl]
    dec [hl]
    cpl
    cpl

jr_05b_6fd0:
    ld e, a
    ld e, a
    ld c, a
    ld c, a
    rst $18

jr_05b_6fd5:
    sbc $df
    call c, $9c9f
    add hl, bc
    ld b, d
    ld bc, $4509
    rlca
    ld a, a
    ld h, b
    ld a, [hl]
    ld h, c
    add hl, sp
    ld [hl], $3c
    inc sp
    and d
    or l
    nop
    xor d
    add hl, bc
    xor h
    ld [bc], a
    inc a
    inc a
    inc e
    add hl, bc
    ld d, h
    ld de, $090c
    ld e, d
    ld de, $6262
    ld [hl], e
    ld [hl], e
    ld d, e
    ld d, e
    ld hl, $1321
    inc de
    ld sp, $2231
    ld [hl+], a
    ld hl, $0921
    ld [hl], b
    inc c
    rst $30
    rst $30
    rst $28
    rst $28
    db $d3
    db $d3
    db $eb
    db $eb
    rst $10
    rst $10
    and e
    and e
    db $e3
    db $e3
    rst $20
    rst $20
    sbc $de
    db $ec
    db $ec
    call nc, $8cd4
    adc h
    add h
    add h
    ret z

    ret z

    call nz, $ccc4
    call z, $9080
    jr jr_05b_7048

    sbc b
    sbc b
    sbc h
    sbc h
    adc h
    adc h
    adc $ce
    add $c6
    ld h, e
    ld h, e
    ei
    ei
    rst $28
    rst $28
    ld b, a
    ld b, a
    ld h, a
    add hl, bc

jr_05b_7044:
    or [hl]
    ld de, $3737

jr_05b_7048:
    cp a
    cp a
    add hl, bc
    or $f7
    add d
    add hl, bc

Call_05b_704f:
    xor h
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld l, b
    ld l, b
    ld h, b
    ld h, b
    inc [hl]
    inc [hl]
    ld [hl], $36
    ld [de], a
    ld [de], a
    ret nc

    ret nc

    ld h, b
    ld h, b
    ldh a, [$f0]
    jr nz, jr_05b_7089

    ld [hl], b
    ld [hl], b
    jr z, @+$2a

    ld d, b
    ld d, b
    jr c, @+$3a

    and e
    and e
    jp $a3c3


    and e
    ld b, a
    ld b, a
    daa
    daa
    ld l, a
    ld l, a
    rrca
    ld c, $7f
    ld a, [hl]
    ldh [$e0], a
    ld h, b
    ld h, b
    ret nz

    ret nz

    add hl, bc
    ld d, h

jr_05b_7089:
    ld [bc], a
    add hl, bc
    ldh [rNR10], a
    cpl
    inc l
    ld [hl], a
    db $76
    ld e, a
    ld e, [hl]
    scf
    ld [hl], $8b
    adc d
    rst $08
    rst $08
    add a
    add a
    jp Jump_05b_58c3


    and a
    add b
    ld a, e
    nop
    push de
    nop
    xor d
    add hl, bc
    inc h
    ld hl, $0055
    xor d
    add hl, bc
    ld c, b
    nop
    db $dd
    ld [hl+], a
    ld l, [hl]
    sub c
    nop
    ld a, a
    add hl, bc
    ld c, d
    ld [de], a
    add hl, bc
    jr nz, jr_05b_70e6

    add hl, bc
    ld e, d
    db $10
    add hl, bc
    sub b
    nop
    db $10
    db $10
    db $10
    db $10
    add hl, bc
    push af
    ld hl, sp+$04
    inc b
    inc b
    inc b
    add hl, bc
    inc b
    db $10
    add hl, bc
    db $10
    inc e
    cpl
    jr z, jr_05b_7133

    ld d, b
    ccf
    ld [hl], b
    xor d
    or l
    ld e, a
    ldh [$a5], a
    ld a, [$506f]
    or l
    jp z, $81fe

    ld d, l
    xor d
    rst $38

jr_05b_70e6:
    add b
    ld [$fd95], a
    ld [bc], a
    add hl, bc
    ld c, b
    ld [bc], a
    ld h, e
    ld h, e
    inc sp
    inc sp
    inc de
    inc de
    inc bc
    inc bc
    ld de, $0911
    and [hl]
    jr nz, jr_05b_70fe

    ld [bc], a
    rst $08

jr_05b_70fe:
    rst $08
    rst $08
    rst $08
    rst $00
    rst $00
    rst $00
    rst $00
    set 1, e
    push bc
    push bc
    ld b, d
    ld b, d
    and l
    and l
    rst $38
    add b
    add hl, bc
    ret nz

    ld hl, $3309
    db $10
    ret nz

    rst $38
    ldh [$7f], a
    ld h, b
    add hl, bc
    call z, Call_05b_4511
    nop
    jr z, jr_05b_7121

jr_05b_7121:
    nop
    nop
    add b
    nop
    ld b, b
    add hl, bc
    xor d
    ld bc, $00a8
    ld b, l
    add hl, bc
    db $fc
    pop af
    add hl, bc
    dec b
    nop
    sub d

jr_05b_7133:
    add hl, bc
    call z, Call_05b_5511
    nop
    ld a, [bc]
    nop
    ld de, $0200
    nop
    ld bc, $0900
    ld b, a
    dec b
    add hl, bc
    ld c, b
    inc b
    nop
    dec b
    dec b
    dec b
    rst $38
    rst $38
    ld b, $03
    rlca
    ld [$201f], sp
    ccf
    ld b, b
    dec b
    rst $38
    ldh a, [rTAC]
    ld [$403f], sp
    rst $38
    nop
    dec b
    jr z, jr_05b_7160

jr_05b_7160:
    cp $00
    nop
    rrca
    ld a, a
    add b
    dec b
    jr z, jr_05b_716b

    ldh [rNR11], a

jr_05b_716b:
    add b
    dec b
    rst $38
    ldh a, [$80]
    ldh [rNR23], a
    db $fc
    ld [bc], a
    dec b
    jr z, jr_05b_7179

    ccf
    ld b, b

jr_05b_7179:
    rra
    jr nz, jr_05b_7181

    rst $38
    di
    add b
    add b
    nop

jr_05b_7181:
    add b
    ld b, b
    add b
    ld b, b
    ret nz

    dec b
    ld c, a
    inc b
    dec b
    rst $38
    ld a, [c]
    ld bc, $0201
    dec b
    ld l, h
    nop
    rlca
    ld [$100f], sp
    ccf
    nop
    dec b
    ld [hl-], a
    inc b
    dec b
    jr z, jr_05b_71a0

    db $fc
    ld [bc], a

jr_05b_71a0:
    ld hl, sp+$04
    ldh a, [$08]
    ldh [rNR10], a
    ld hl, sp+$00
    ldh [rP1], a
    add b
    dec b
    rra
    ld bc, $ff05
    rst $38
    inc bc
    rra
    dec b
    xor a
    ld [bc], a
    jr nz, jr_05b_71d7

    jr nz, jr_05b_71f9

    nop
    ccf
    ld b, b
    ld a, a
    add b
    ret nz

    jr nz, jr_05b_71c7

Jump_05b_71c2:
    ret nz

    ld [bc], a
    add b
    ld b, b
    adc b

jr_05b_71c7:
    ld b, b
    adc b
    ld b, b
    ld [$0590], sp
    rst $38
    ei
    ld bc, $0403
    dec b
    ld [hl], h
    nop
    dec b
    cp b

jr_05b_71d7:
    nop
    ld a, a
    dec b
    ld a, c
    dec bc
    cp $01
    cp $00
    db $fc
    ld [bc], a
    dec b
    add $00
    add b
    nop
    nop
    dec b
    inc a
    ld bc, $ff05
    rst $38
    ld [bc], a
    ld bc, $0001
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    dec b

jr_05b_71f9:
    inc e
    nop
    dec b
    ld [hl-], a
    nop
    cp $01
    dec b
    adc b
    inc b
    add b
    ld b, b
    ld bc, $1080
    adc b
    db $10
    jr nz, jr_05b_723c

    nop
    jr nz, @+$52

    ld h, b
    db $10
    ld h, b
    dec b
    cp a
    ld bc, $0001
    ld bc, $0302
    nop
    inc bc
    inc b
    rlca
    nop
    rlca
    ld [$000f], sp
    rrca
    db $10
    dec b
    ld a, h
    ld [$8405], sp
    ld bc, $6f05
    ld [de], a
    ld [bc], a
    cp $01
    dec b
    ld hl, sp+$01
    ld bc, $d805
    dec b
    db $fc
    rst $38
    nop
    nop

jr_05b_723c:
    ldh a, [rP1]
    nop
    dec b
    ld [hl], d
    nop
    rra
    jr nz, jr_05b_72c3

    add c
    ldh a, [$0c]
    nop
    ret nz

    dec b
    rst $38
    ldh a, [$fc]
    ld [bc], a
    ldh a, [$0c]
    ret nz

    jr nz, jr_05b_7259

    ld b, $13
    ld bc, $0601

jr_05b_7259:
    ld bc, $0502
    ldh [rSC], a
    ld e, $21
    ld a, $c0
    dec b
    adc b
    nop
    dec b
    ld e, d
    nop
    nop
    add b
    dec b
    ld b, $1e
    ld e, $1e
    scf
    scf
    ld h, e
    ld h, e
    ld a, a
    ld a, a
    rrca
    db $10
    dec b

jr_05b_7278:
    or b
    nop
    ccf
    jr nz, jr_05b_7278

    ld hl, sp+$7d
    ld a, h
    ld a, a
    ld h, [hl]
    ld a, a
    ld h, [hl]
    dec b
    jr z, jr_05b_7288

    ld h, b

jr_05b_7288:
    rst $38
    ld h, b
    rst $38
    ld e, $fd
    ld l, h
    rst $38
    rst $20
    ei
    ld h, e
    dec b
    ld a, h
    inc b
    ld a, a
    ld h, e
    rst $38
    rst $00
    rst $38
    add e
    ld a, a
    inc bc
    nop
    add b
    dec b
    ld e, h
    nop
    ldh a, [$0c]
    rst $28
    ld h, e
    rst $30
    rst $30
    ld e, a
    dec de
    rst $28
    dec bc
    dec b
    ld l, b
    ld [bc], a
    rlca
    jr c, jr_05b_7321

    rst $38
    db $fd
    ld sp, hl
    ld a, a
    ld sp, $3fff
    rlca
    jr jr_05b_72db

    ld h, b
    dec b
    ld [hl-], a
    nop
    cp a
    jr c, @+$01

jr_05b_72c3:
    db $ed
    rst $38
    di
    ei
    cp a
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rNR10], a
    pop bc
    ld hl, $f7f7
    cp e
    ei
    dec de
    sbc e
    ei
    ei
    dec b
    rst $38
    ld a, [c]

jr_05b_72db:
    ld b, $06
    rst $28
    rst $28
    db $76
    db $76
    ld [hl], $36
    ld [hl], $36
    dec b
    rst $38
    db $f4
    jr c, @+$3a

    ld h, h
    ld h, h
    ld [hl], b
    ld [hl], b
    jr c, jr_05b_7328

    ld h, b
    ld h, b
    ld [hl], c
    ld [hl], c
    ccf
    ccf
    ld e, $1e
    dec b
    rst $38
    db $f4
    dec b
    db $ec
    db $10
    ld a, a
    ld h, [hl]
    rst $30
    rst $30
    rrca
    db $10
    rlca
    ld [$0807], sp
    inc bc
    inc b
    ei
    ld h, e
    db $fd
    ld h, l
    cp $6c
    cp $fe
    dec b
    ld a, h
    dec b
    add e
    cp a
    add e
    rst $38
    jp $e3ef


    rst $38
    inc bc
    rst $38
    rlca
    dec b

jr_05b_7321:
    jr z, jr_05b_7323

jr_05b_7323:
    rst $28
    dec bc
    ld a, a
    dec de
    rst $38

jr_05b_7328:
    di
    ld e, a
    ld b, a
    rst $38
    nop
    rst $38
    ret nz

    dec b
    jr z, @+$03

    jr nc, @+$01

    jr c, @+$01

    rra
    cp $8e
    dec b
    ld hl, sp+$00
    ld hl, sp+$04
    ldh [rNR10], a
    rst $38
    rra
    rst $38
    adc a
    db $ed
    db $fd
    ld hl, sp+$78
    dec b
    sbc d
    ld [de], a
    nop
    nop
    inc bc
    inc bc
    dec bc
    dec bc
    sbc e
    sbc e
    rst $30
    rst $30
    dec b
    rst $38
    db $f4
    dec b
    ld e, h
    jr nz, jr_05b_7393

    scf
    cp e
    cp e
    dec b
    rst $38
    db $f4
    inc e
    inc e
    ld c, h
    ld c, h
    ld b, h
    ld b, h
    cp b
    cp b
    dec b
    ld h, l
    dec b
    ld [bc], a
    nop
    dec b
    ld a, a
    inc d
    dec b
    ld hl, $0500
    ld b, a
    ld [bc], a
    ret nz

    rrca
    jr nc, jr_05b_737c

jr_05b_737c:
    inc bc
    dec b
    rst $38
    ldh a, [rTIMA]
    ld a, h
    ld b, $00
    db $fc
    dec b
    rst $38
    ldh a, [$3c]
    dec b
    rst $30
    ld bc, $0cf0
    add b
    ld h, b
    dec b
    ld h, a
    inc bc

jr_05b_7393:
    dec b
    sub e
    dec bc
    sbc h
    dec b
    rst $38
    ei
    ld [hl], b
    nop
    ldh [rTIMA], a
    adc h
    db $10
    dec b
    rst $38
    rst $38
    ld b, $e0
    nop
    rrca
    nop
    ld c, $00
    inc c
    dec b
    sub e
    scf
    rst $38
    dec b
    rst $38
    ei
    inc a
    nop
    inc a
    nop
    ld a, $00
    ld [hl], $00
    inc sp
    nop
    inc sp
    nop
    ld sp, $3000
    nop
    ld bc, $bf05
    dec [hl]
    add c
    nop
    add c
    nop
    pop bc
    nop
    adc h
    dec b
    rst $08
    dec sp
    jr c, jr_05b_73d2

jr_05b_73d2:
    jr jr_05b_73d4

jr_05b_73d4:
    inc c
    nop
    ld c, $00
    ld b, $00
    inc bc
    nop
    inc bc
    dec b
    cp a
    inc sp
    inc bc
    nop
    ld b, $00
    ld c, $00
    inc e
    nop
    cp b
    nop
    ld hl, sp+$00
    ret nz

    dec b
    ld b, $1b
    rrca
    dec b
    rrca
    ld c, e
    dec b
    ld [hl], b
    db $10
    dec b
    push bc
    db $10
    dec b
    inc h
    ld b, h
    jr nc, jr_05b_7404

    cpl
    ld c, e
    ld sp, hl
    nop
    ld a, c

jr_05b_7404:
    nop
    ld a, l
    nop
    dec a
    nop
    ccf
    dec b
    xor a
    ld bc, $000f
    adc a
    dec b
    ld c, a
    ld c, e
    dec b
    ld c, b
    inc [hl]
    dec b
    inc h
    db $10
    dec b
    ld hl, sp+$30
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    cp $00
    cp a
    dec b
    ld c, e
    ld b, c
    rlca
    dec b
    rst $38
    rst $30
    dec b
    push bc
    db $10
    ret nz

    dec b
    ld a, e
    ld c, e
    dec b
    inc l
    ld [hl-], a
    dec b
    rst $38
    ld hl, sp+$05
    jr nc, jr_05b_747c

    dec b
    inc b
    ld c, d
    dec b
    sub d
    ld c, d
    adc a
    nop
    rrca
    dec b
    rst $38

jr_05b_7447:
    ld sp, hl
    jr c, jr_05b_744a

jr_05b_744a:
    ld [hl], b
    dec b
    rst $38
    ld sp, hl
    rlca
    dec b
    jr z, jr_05b_7484

    dec b
    or $45
    nop
    ld [$ff0a], sp

jr_05b_7459:
    ld a, [bc]
    rst $38
    rst $38
    ld [$07f8], sp
    ld a, [c]
    dec c
    ld a, [bc]
    nop
    ld [$807f], sp
    sbc a
    ld h, b
    ld a, [bc]
    nop
    inc b
    cp $01
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $20
    jr jr_05b_7447

    ld l, $b8
    ld b, a
    ld a, h
    add e

jr_05b_747b:
    db $fc

jr_05b_747c:
    inc bc
    ld hl, sp+$07
    rst $30
    ld [$906f], sp
    rst $38

jr_05b_7484:
    rrca
    cp $10

jr_05b_7487:
    jr c, jr_05b_7459

    jr jr_05b_747b

    ld a, [bc]
    ld d, [hl]
    ld [bc], a
    sbc b
    ld [hl], b
    rst $38
    ld e, $fb
    sub e
    ei

jr_05b_7495:
    sub d
    cp $94
    db $fd
    sbc c
    or e
    jp nc, $fcdf

    jr nc, jr_05b_74df

    rst $38
    rra
    rst $38
    jr nz, jr_05b_7495

    and b
    rst $38
    sbc a
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    add b
    ret nz

    add b
    rst $38
    ld hl, sp-$01
    inc b
    rlca
    inc b
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    cp $fd
    ld bc, $0101
    ld a, [bc]
    ld a, b
    inc b
    ld a, [bc]
    sub [hl]
    nop
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    inc a
    rst $30
    and $b7
    dec h
    dec a
    add hl, hl
    dec sp
    inc sp
    scf
    ld [hl], $fb
    ld a, [$22e3]
    rst $38
    nop
    rst $38
    jr nc, @+$01

jr_05b_74df:
    ld c, h
    rst $08
    add d
    add e
    add c
    pop hl
    ld h, c
    di
    ld [de], a
    rst $38
    inc c
    ld a, [bc]
    nop
    ld bc, $fc07
    ld [$c60a], sp
    nop
    ld hl, sp+$10
    jr jr_05b_7487

    rst $38
    rlca
    rst $38
    ld a, [bc]
    ret


    nop
    sub b
    ld hl, sp-$70
    ldh a, [$a0]
    pop hl
    pop bc
    db $e3
    jp nz, $80ff

    rst $38
    rst $38
    cp $0a
    ei
    pop af
    ldh a, [$f0]
    ldh a, [rNR10]
    ldh a, [rNR10]
    rst $38
    nop
    rst $38
    rra
    rst $38
    and b
    ldh a, [$0a]
    push af
    ld bc, $9efe
    cp $82
    rst $38
    nop
    rst $38
    db $fc
    ei
    ld [bc], a
    inc bc
    ld a, [bc]
    dec b
    ld de, $3c3f
    ccf
    jr nz, @+$01

    nop
    rst $38
    ccf
    rst $38
    ld b, b
    ldh [$0a], a
    dec d
    ld de, $3fff
    rst $00
    jr z, jr_05b_7549

    nop
    db $10
    di
    ld a, [bc]
    dec b
    inc de
    add a
    add h
    add a
    add h

jr_05b_7549:
    rst $38
    inc a
    ei
    ld b, d
    db $e3
    ld a, [bc]
    inc sp
    ld [de], a
    ld b, e
    ld a, [bc]
    ld d, $10
    or $09
    jp hl


    ld d, $d8
    daa
    ret nc

    cpl
    add b
    ld a, a
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [$3f]
    rst $00
    jr c, jr_05b_7568

jr_05b_7568:
    rst $38
    ld b, $f9
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rNR22]
    add sp, $3e
    pop bc
    ld a, [bc]

jr_05b_7576:
    jr z, jr_05b_757a

    ccf
    ret nz

jr_05b_757a:
    cp a
    ld b, b
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    sbc a
    ld h, b
    rst $18
    jr nz, jr_05b_7576

    db $10
    xor $11
    or $09
    ei
    inc b
    db $fc
    inc bc
    cp $01
    sbc b
    ld [hl], b

jr_05b_7594:
    sbc b
    ld [hl], b
    jr c, jr_05b_7568

    ld e, b
    or b
    ld a, [bc]
    add d
    db $10
    ld a, b
    sub b
    ld a, b
    sub b
    inc a
    rrca
    ld c, $03
    add e
    add c
    pop hl
    pop hl
    or d
    di
    adc a
    db $fc
    add a
    ld hl, sp-$7d

jr_05b_75b0:
    db $fc
    ret nz

    add b
    ld a, a
    rst $38
    ld b, $f9
    nop
    rst $38
    inc bc
    rst $38
    sbc a
    ld a, h
    db $fc
    jr nz, jr_05b_75b0

    jr nz, @+$03

    ld bc, $c2c3
    ld h, e
    jp nz, $87c4

    add h
    rlca
    ld [$160f], sp
    add hl, de
    ld h, e
    ld a, h
    ld a, [bc]
    ld h, $04
    ld a, a
    rst $38
    ld a, [bc]
    sub h
    ld [bc], a
    db $e3
    ld [hl+], a
    di
    ld a, [bc]
    pop de
    ld [de], a
    ld [c], a
    ld [c], a
    ld a, [bc]
    ld b, $10
    ld [bc], a
    cp $01
    db $fc
    nop
    ld sp, hl
    ld [bc], a
    push af
    ld bc, $02eb
    inc e
    adc h
    ld d, b
    jr nc, jr_05b_7594

    ld h, b
    ld sp, $e121
    ld b, c
    jp $8382


    ld [bc], a
    rlca
    inc b
    rrca
    ld [$111e], sp
    ld h, [hl]
    ld a, c
    rst $38
    inc a
    ld a, [bc]
    nop
    ld bc, $ff03
    inc a
    cp $40
    ld h, b
    ret nz

    ld h, b
    ret nz

    pop af
    ld hl, $41f1
    db $e3
    add e
    jp $8702


    inc b
    ld [$100f], sp
    rra
    ld h, b
    ld a, a
    rst $38
    ld [bc], a
    ld a, [bc]
    jr nz, jr_05b_764b

    ld a, [hl]
    ld a, [bc]
    sub h
    ld [bc], a
    ccf
    jr nz, jr_05b_766d

    ld hl, $203c
    jr c, jr_05b_7656

    inc sp
    ccf
    inc bc
    jr jr_05b_7639

jr_05b_7639:
    ld [hl], b
    nop
    ldh [$8f], a
    db $10
    dec e
    inc hl
    dec sp
    ld b, [hl]
    rlca
    db $fc
    ld a, $f8
    ld hl, sp-$40
    ret nz

    add b
    pop bc

jr_05b_764b:
    add c
    rst $00
    add h
    ret z

    rrca
    adc b
    rrca
    dec b
    ld b, $03
    ld [bc], a

jr_05b_7656:
    ld b, c
    ld b, c
    and c
    pop hl
    ld de, $e0f1
    ld b, b
    ld h, b

jr_05b_765f:
    ret nz

    ld h, e
    jp Jump_000_340a


    inc de
    ld b, d
    db $e3
    ld b, d
    jr c, jr_05b_7679

    inc c
    rlca
    add h

jr_05b_766d:
    add a
    call $b9ce
    ld a, [hl]

jr_05b_7672:
    and b
    ld e, a
    ld a, [hl-]
    push bc
    ld a, e
    add h
    inc a

jr_05b_7679:
    jp $c639


    db $db
    inc h
    db $e3
    inc e
    rst $20
    jr jr_05b_7672

    db $10
    rra
    ldh [$0a], a
    ld l, $06
    ld a, [bc]
    nop
    rrca
    dec b
    jr c, jr_05b_765f

    ccf
    rst $08
    sbc a
    ld h, b
    db $dd
    ld [hl+], a
    ret


    ld [hl], $e3
    inc e
    rst $30
    ld [$08f7], sp
    add e
    db $fc
    add c
    ld a, [hl]
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    pop af
    ld hl, $1ffe
    ld hl, sp+$07
    ldh a, [rIF]
    ld l, b
    sub a
    ld a, a
    sbc a
    ccf
    ldh [$30], a
    ldh [$83], a
    db $fc
    ld bc, $0afe
    rst $38
    ld a, [c]
    rst $38
    rst $38

jr_05b_76c6:
    rst $38
    nop
    nop
    nop
    ld a, [bc]
    sbc d
    nop
    inc b
    ei
    inc b
    ei
    inc c
    di
    inc de
    db $fc
    sbc c
    rst $38
    rst $18
    or [hl]
    dec b
    inc b
    ld a, [$a8f9]
    ld b, [hl]
    ret nc

    dec b
    and b
    dec bc
    ret nz

    sub a
    adc e
    daa
    cpl
    ld [hl], h
    ld b, c
    pop bc
    ld a, $7f
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld b, d
    cp l
    ld b, d
    cp l
    rst $38
    adc a
    rst $38
    ld d, b
    add d
    db $fd
    ld [hl-], a
    call Call_000_220a
    inc [hl]
    ld a, [bc]
    ld [c], a
    nop
    ld sp, $1ee1
    ld a, [bc]
    ld [bc], a
    inc hl
    rlca
    db $fc
    ld b, $fc
    sub [hl]
    db $ec
    ret nz

    cp a
    adc h
    ld [hl], e
    ld a, [bc]
    ld b, d
    ld sp, $ccf3
    ld [hl], e
    ld a, a
    ld a, a
    ld a, $00
    ret nz

    add c
    ld a, [hl]
    db $fd
    ld b, h
    or c
    ld [$10e2], sp
    push bc
    jr nz, @-$73

    ld b, b
    rla
    add b
    cpl
    nop
    ret nz

    ccf
    cp a
    ld a, [bc]
    push bc
    db $10
    ld a, [bc]
    ld h, [hl]
    jr nc, jr_05b_76c6

    ld [hl], c
    adc a
    ld [hl], b
    add $87
    db $fc
    ld a, a
    ld a, [bc]
    rst $38
    ldh a, [rLCDC]
    cp a
    ld a, h
    add e
    ld a, [bc]
    ret z

    db $10
    ret


    add hl, sp
    ld [hl], a
    adc [hl]
    ccf
    ret nz

    rra
    ldh [$7e], a
    ld sp, hl
    ld l, [hl]
    rst $08
    db $ed
    ret


    ld sp, hl
    ld d, c
    ld h, e
    jp nz, Jump_05b_7dbe

    cp [hl]
    ld b, c
    ld a, [hl]
    add c
    ld a, h
    add e

jr_05b_7763:
    db $fd
    ld [bc], a
    db $fd

jr_05b_7766:
    ld [bc], a
    ld sp, hl
    ld b, $77
    adc b

jr_05b_776b:
    ld a, [bc]
    cp h
    jr nz, jr_05b_7766

    ld [$880a], sp
    jr nz, jr_05b_7763

    db $10
    rst $08
    jr nc, jr_05b_776b

    inc c
    ei
    inc b
    ld sp, hl
    ld b, $0a
    sbc d
    jr nc, jr_05b_778b

    ld a, h
    db $10
    cp $01
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a

jr_05b_778b:
    ret nz

    ccf
    sub b
    ld l, a
    ld l, b
    sub a
    call c, $fc23
    inc bc
    jr nc, @-$1e

    ld e, $fe
    inc bc
    cp $1f
    cp $3c
    ldh [$30], a
    ldh [$0a], a
    ret nc

    jr nc, jr_05b_77a5

jr_05b_77a5:
    nop
    ccf
    ccf
    inc l
    inc sp
    ccf
    ccf
    rrca
    ld a, [bc]
    ei
    pop af
    ccf
    ccf
    cp $f0
    ld a, a
    ret nz

    ccf
    pop af
    sbc a
    or $d9
    ld a, a
    ld e, c
    db $76
    ld e, b
    ld h, a
    sbc a
    ldh [$c6], a
    ld a, h
    and [hl]
    call c, $fc06
    adc h
    ld hl, sp-$14
    sbc b
    sbc b
    ld [hl], b
    ld [hl], b
    and b
    ldh [$c0], a
    ld e, b
    ld [hl], b
    ld e, b
    ld [hl], b
    ld c, a
    ld a, a
    ld b, b
    ld a, a
    ld a, b
    ld b, a
    ld b, a
    ld a, b
    rst $38
    add b
    rst $38
    add c
    ld a, [bc]
    and $02
    ld de, $71f1
    and c
    ld [hl], c
    pop bc
    db $e3
    add d
    pop bc
    ld bc, $e89c
    sbc c
    pop af
    or c
    pop hl
    pop hl
    ld hl, $3fdf
    rra
    db $ec
    rst $38
    inc bc
    rst $38
    ld bc, $0001
    ld [bc], a
    nop
    add h
    add c
    ld hl, sp+$62
    ld hl, sp+$0c
    ld hl, sp+$18
    ldh a, [rNR10]
    ld sp, hl
    ld l, c
    ld bc, $015e
    cp [hl]
    ld e, a
    ld a, a
    ld a, a
    ld h, b
    or b
    ldh [$b0], a
    ldh [$f0], a
    and b
    rst $38
    rra
    rra
    ldh [rTAC], a
    ld hl, sp-$01
    cp $ff
    ld bc, $670a
    ld b, d
    rst $38
    cp $0a
    sbc b
    ld bc, $00ff
    rst $38
    ld bc, $03ff
    cp $37
    call z, $e81e
    ld [hl], e
    ld h, d
    ld l, a
    ld l, h
    cp h
    cp a
    add a
    add h
    adc a
    ld [$088f], sp
    rra
    db $10
    inc e
    dec de
    ei
    inc b
    di
    inc c
    ld [hl], a
    adc b
    add a
    ld a, b
    jp $b93c


    ld b, [hl]
    ld a, h
    add e
    cp $01
    rst $18
    jr nz, jr_05b_7867

    and b
    ld b, b
    sbc a
    ld h, b
    cp a
    ld b, b
    ld a, [bc]
    ld l, b
    ld [de], a
    ld a, [bc]

jr_05b_7867:
    inc a
    nop
    ld a, [bc]
    nop
    ld [$817e], sp
    ld a, [bc]
    ld h, l
    jr nc, jr_05b_78b1

    ret nz

    cp b
    ld b, a
    add a
    ld a, b
    ld a, [bc]
    nop
    nop
    ccf
    jp nz, $02ff

    di
    ld c, $0f
    ld a, [c]
    rst $38
    ld a, [bc]
    or c
    ld b, e
    ld sp, $3f2e
    ccf
    rra
    nop
    nop
    nop
    ldh [$0a], a
    add sp, $20
    ld a, [bc]
    inc bc
    ld [hl+], a
    inc e
    db $fc
    ld a, [bc]
    push af
    ld bc, $1fff
    cp $19
    db $fc
    inc sp
    pop bc
    ld bc, $0203
    rlca
    inc b
    rra
    rra
    ld a, a
    ld h, b

jr_05b_78aa:
    add b
    rst $38
    add d

jr_05b_78ad:
    ld a, l
    add $39
    rst $38

jr_05b_78b1:
    ld b, $fe
    jr jr_05b_78ad

    db $10
    ld hl, sp-$10
    ld hl, sp+$10
    rrca
    rst $38
    add hl, sp
    add $45
    cp d
    add b
    nop
    nop
    nop
    jr jr_05b_78de

    inc a
    inc a
    cp $c2
    ld bc, $13ff
    db $ec
    sub h
    ld l, e
    rst $38
    add e
    ld a, a
    ld e, l
    inc a
    jr nz, jr_05b_7907

    jr nz, jr_05b_7911

    jr nc, jr_05b_78aa

    rst $38
    sbc a
    ld h, b

jr_05b_78de:
    inc b
    ei
    reti


    reti


    ld a, [bc]
    ld [bc], a
    ld d, [hl]
    ld a, e
    add h
    ld b, d
    cp l
    ld a, [bc]
    nop
    inc bc
    ld a, [bc]
    db $eb
    jr nz, @+$01

    jp $243c


    db $db
    db $fc
    inc bc
    ld a, [bc]
    nop
    ld bc, $ffc0
    jr nc, jr_05b_793c

    ret z

    sbc a
    ld h, h
    rrca
    or $7c
    or b
    ldh a, [$0a]
    ld c, e

jr_05b_7907:
    ld [hl+], a
    add [hl]
    rst $38
    ld a, [bc]
    bit 0, c
    rrca
    inc c
    inc bc
    ld [bc], a

jr_05b_7911:
    pop bc
    pop bc
    pop hl
    ld hl, $11f1
    cp $0f
    ld a, [bc]
    nop
    nop
    db $fc
    inc bc
    ei
    inc b
    rst $30
    ld [$30cf], sp
    ld a, [bc]
    ld l, d
    ld [de], a
    rst $38
    nop
    ld hl, sp+$27
    ld hl, sp+$27
    ldh [$3f], a
    ldh [$27], a
    ldh a, [rNR13]
    ld hl, sp+$18
    db $fc
    inc c
    rst $38
    inc bc
    xor $11
    cp d

jr_05b_793c:
    ld b, l
    sub d
    ld l, l
    sub d
    ld l, l
    nop
    ld a, [bc]
    db $ec
    jr nz, jr_05b_7946

jr_05b_7946:
    rst $38
    rst $38
    ld b, l
    cp d
    ld a, [bc]
    ret nz

    ld d, b
    add hl, sp
    add $0a
    cp b
    ld d, h
    db $d3
    inc l
    ld [hl], b
    adc a
    inc [hl]
    rl e
    db $ec
    ld a, [bc]
    cp b
    ld d, h
    add h
    ld a, e
    ld b, h
    cp e
    ld b, h
    cp e
    add h
    ld a, e
    ld a, [bc]
    cp b
    ld d, h
    ld b, d
    cp l
    ld a, [bc]
    ld c, h
    ld d, b
    ld a, d
    add l
    ld a, [bc]
    cp b
    ld d, h
    inc hl
    call c, $3fc0
    inc h
    db $db
    inc hl
    call c, $b80a
    ld d, h
    rst $38
    db $fc
    rst $38
    ldh [$0a], a
    sub b
    cpl
    dec c
    ld a, [bc]
    jr nz, jr_05b_79f7

    ld a, [hl-]
    ld a, [bc]
    or c
    ld c, e
    rst $38
    rst $38
    rst $38
    ld c, $0a
    ld [hl], d
    ld l, l
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    ld a, [bc]
    sbc h
    ld bc, $ffe0
    inc e
    rst $38
    add e
    rst $38
    ld a, [bc]
    ld c, d
    db $10
    ret nz

    ld a, [bc]
    ld [de], a
    ld h, l
    add b
    rst $38
    ld h, b
    rst $38
    jr @+$01

    ld b, $0a
    add b
    ld h, a
    ld bc, $01ff
    ld a, [bc]
    jr nz, jr_05b_79dd

    nop
    rst $38
    rlca
    rst $38
    jr c, @+$01

    ret nz

    ld a, [bc]
    inc [hl]
    ld [bc], a
    rst $38
    jr nc, jr_05b_79d3

    ld h, d
    ld d, e
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38

jr_05b_79d3:
    cp $ff
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, [bc]
    ld l, a
    nop
    rra

jr_05b_79dd:
    rst $38
    rlca
    ld a, [bc]
    inc a
    ld b, b
    db $fd
    ld a, [$fcff]
    db $fd
    cp $fe
    rst $38
    rst $38
    cp $0a
    jp hl


    jr nz, @+$01

    rst $38
    ld e, a
    and b
    rst $30
    ld [$bd5e], sp

jr_05b_79f7:
    xor a
    ld e, [hl]
    ld e, [hl]
    xor a
    rrca
    rst $30
    ld d, a
    xor a
    add e
    rst $38
    rst $38
    adc [hl]
    rst $38
    ld d, c
    cp a
    ld [hl], b
    ld e, a
    cp b
    cp a
    ld e, b
    ld e, l
    xor [hl]
    adc [hl]
    ld a, l
    rst $10
    xor [hl]
    ld a, [bc]
    ld h, h
    ld d, d
    rst $38
    inc c
    ld a, a
    jp nz, $71ff

    cp l
    ld a, d
    ld a, d
    ld a, [bc]
    ld c, a
    ld d, h
    nop
    rst $38
    inc a
    rst $38
    ld h, d
    rst $38
    pop hl
    rst $38
    pop hl
    ld a, [bc]
    nop
    add hl, bc
    inc e
    rst $38
    ld a, [bc]
    xor a
    nop
    ld a, [bc]
    rst $38
    ld hl, sp+$38
    ld a, [bc]
    ld [hl], h
    ld l, e
    ld [c], a
    ld a, [bc]
    db $76
    ld l, c
    and $ff
    inc d
    ld a, [bc]
    ld a, d
    ld h, l

jr_05b_7a42:
    ld [bc], a
    rst $38
    db $e4
    rst $38
    inc e
    ld a, [$1f0a]
    nop
    inc bc
    rst $38
    inc b
    rst $38
    ret z

    rst $38
    jr nc, jr_05b_7a42

    ld [hl], d
    or $4f
    rst $18
    xor $ff
    db $e4
    db $fd
    ld d, $fe
    dec e
    rst $38
    jr jr_05b_7abc

    cp l
    push af
    dec de
    cp e
    ld [hl], l
    rst $30
    dec sp
    ld [hl], l
    ld a, [$71fe]
    push af
    db $eb
    db $eb
    push af
    rst $10
    db $eb
    db $eb
    rst $10
    rst $10
    xor a
    xor a
    ld e, a
    ld a, [bc]
    ld a, [de]
    ld [hl], d
    rst $38
    cp $0a
    and $71
    db $fc
    rst $38
    db $fc
    ld a, [bc]
    ldh [$73], a
    ld a, a
    ld a, [bc]
    nop
    ld [hl], c
    rra
    rst $38
    rra
    nop
    ld b, $05
    rst $10
    xor e
    pop bc
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    add [hl]
    rst $38
    db $e3
    sbc $c3
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr c, @+$01

    cp l
    ld e, [hl]
    ld e, $fd
    xor h
    ld e, a
    ld [bc], a
    db $fd
    add b
    rst $38
    add b
    rst $38

jr_05b_7abc:
    add $ff
    rst $00
    rst $38
    ld a, a
    ldh [$ea], a
    ld [hl], l
    ld [hl], a
    ld [$77fa], a
    rst $30
    ld_long a, $ff73
    ld sp, $31ff
    rst $38
    rst $38
    pop bc
    cp $cd
    ld e, l
    xor $ef
    ld [hl], a
    ld [hl], a
    rst $28
    ld l, $f7
    ld [hl-], a
    rst $38
    inc de
    rst $38
    rst $38
    ld b, h
    rst $38
    add e
    ei
    sbc l
    db $fd
    db $db
    db $db
    db $ed
    ld l, h
    rst $18
    ld c, h
    rst $38
    inc h
    rst $38
    rst $38
    xor $ff
    sbc c
    rst $38
    sbc c
    cp l
    db $db
    db $db
    xor l
    xor l
    ei
    or l
    rst $28
    sub l
    rst $38
    rst $38
    ld sp, $4aff
    rst $38
    ld c, d
    rst $18
    ld l, h
    xor $55
    push de
    ld l, a
    push bc
    ld a, a
    pop hl
    ccf
    rst $38
    call $53ff
    rst $38
    ld d, d
    ld [hl], a
    xor $ae
    ld [hl], l
    dec [hl]
    rst $28
    ld c, a
    db $fd
    ld c, c
    rst $38
    rst $38
    ld [hl+], a
    rst $38
    inc d
    rst $38
    dec e
    db $db
    cp l
    cp l
    db $db
    jp c, $b0bd

    rst $38
    ld [hl-], a
    rst $38
    ei
    dec c
    db $fd
    adc e
    db $db
    cp a
    or a
    db $db
    ld a, d
    or l
    or b
    ld a, a
    ld h, b
    rst $38
    inc h
    rst $38
    cp a
    ret z

    res 7, l
    or l
    db $db
    ld d, e
    cp l
    ld [hl], $eb
    ld h, d
    rst $38
    ld [c], a
    rst $38
    ld b, h
    rst $38
    xor $9d
    cp l
    sbc $fa
    db $fd
    ld a, l
    cp d
    or b
    ld a, a
    ld [hl], c
    rst $38
    ld h, c
    rst $38
    ld h, e
    rst $38
    or c
    ld l, [hl]
    ld h, h
    ei
    pop bc
    ld a, [hl]
    ret nz

    rst $38
    adc h
    rst $38
    sbc h
    rst $38
    inc e
    rst $38
    jr @+$01

    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    cp a
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    dec b
    jp hl


    ld bc, $0b05
    ld bc, $fff0
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    db $fc
    rst $38
    cp $ff
    cp $ff
    dec b
    db $10
    ld [de], a
    dec b
    dec de
    db $10
    jr c, @+$01

    jr @+$01

    jr @+$01

    nop
    dec b
    dec h
    dec d
    ld b, e
    rst $38
    ld h, e
    rst $38
    ld hl, $21ff
    rst $38
    ld sp, $30ff
    rst $38
    jr c, @+$01

    ld a, a
    rst $38
    jr @+$01

    sbc b
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    ret z

    rst $38
    db $c4, $05, $1b
    ld de, $ff13
    add hl, bc
    rst $38
    adc b
    rst $38
    call z, $c7ff
    dec b
    dec de
    ld de, $e0ff
    ld h, $ff
    ld h, $ff
    jr nz, @+$01

    ld [hl], c
    dec b
    dec de
    db $10
    sbc $05
    dec h
    db $10
    sub c
    rst $38
    sub c
    dec b
    ld h, d
    nop
    rst $38
    rst $38
    cp $05
    ld l, d
    ld [de], a
    pop hl
    ccf
    db $e3
    dec b
    add c
    ld de, $1eff
    rst $38
    ld e, $05
    dec h
    db $10
    dec b
    ld [hl+], a
    db $10
    inc de
    rst $38
    inc sp
    dec b
    ld e, c
    ld [de], a
    rrca
    rst $38
    nop
    ld [hl-], a
    rst $38
    dec b
    ld h, b
    db $10
    inc h
    rst $38
    db $cc, $05, $1b
    db $10
    ld a, a
    rst $38
    nop
    inc h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ret z

    rst $38
    sbc c
    rst $38
    ld sp, hl
    dec b
    dec de
    ld de, $ff44
    call nz, $8cff
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    jr @+$01

    sbc h
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    add $ff
    add $ff
    adc h
    rst $38
    inc c
    rst $38
    jr @+$01

    jr c, @+$01

    pop af
    rst $38
    jr c, @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld h, c
    rst $38
    ld h, c
    rst $38
    pop hl
    rst $38
    jp $c3ff


    dec b
    ld e, c
    ld [de], a
    dec b
    ld e, c
    ld [de], a
    dec b
    ld [de], a
    ld [de], a
    dec b
    jr z, jr_05b_7c68

jr_05b_7c68:
    dec b
    ld h, $16
    dec b
    ld h, $10
    ld bc, $01ff
    dec b
    dec h
    rla
    dec b
    rst $28
    ld d, $05
    ld [$3800], a
    add e
    dec b
    rst $30
    ld [de], a
    db $fc
    rst $38
    ld hl, sp-$01
    ret nz

    dec b
    inc e
    inc hl
    cp $ff
    ldh a, [rTIMA]
    dec h
    rla
    db $fc
    rst $38
    ldh [rIE], a
    ld bc, $06ff
    rst $38
    add hl, bc
    rst $38
    ld de, $5a05
    ld hl, $1d05
    ld [hl+], a
    nop
    rst $38
    add [hl]
    rst $38
    adc $ff
    cp $ff
    or [hl]
    dec b
    ld h, b
    dec h
    ld a, h
    rst $38
    xor $05
    pop de
    ld de, $6105
    inc h
    and $ff
    and $ff
    or $ff
    sub $05
    ld h, b
    dec h
    ld a, e
    rst $38
    call z, $f0ff
    rst $38
    inc a
    dec b
    ld h, b
    dec h
    rst $38
    rst $38
    call z, $ccff
    rst $38
    rst $08
    dec b
    ld h, b
    dec h
    cp [hl]
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    cp [hl]
    dec b
    inc d
    ld hl, $fffe
    ld bc, $3cff
    rst $38
    ld h, [hl]
    rst $38
    ld a, b
    rst $38
    ld e, $ff
    rst $38
    rst $38
    ld c, $05
    db $fc
    ld bc, $ff40
    jr nz, jr_05b_7cf6

    jp c, Jump_000_0521

    dec de
    db $10

jr_05b_7cf6:
    ccf
    rst $38
    inc bc
    dec b
    dec h
    inc d
    add a
    dec b
    inc hl
    ld h, $1f
    dec b
    and $25
    inc bc
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    inc b
    rst $38
    inc b
    dec b
    dec h
    inc de
    inc e
    rst $38
    sub d
    rst $38
    sbc h
    rst $38
    sub d
    rst $38
    sub d
    dec b
    dec h
    inc de
    ld b, h
    rst $38
    ld l, h
    rst $38
    ld d, h
    rst $38
    ld d, h
    rst $38
    ld b, h
    dec b
    dec h
    inc de
    ld h, e
    rst $38
    sub d
    rst $38
    sub e
    rst $38
    sub d
    rst $38
    ld h, d
    dec b
    dec h
    inc de
    dec b
    rst $10
    jr nz, jr_05b_7d3d

    rst $10
    jr nz, jr_05b_7d7b

    dec b
    dec h

jr_05b_7d3d:
    inc de
    db $e3
    rst $38
    sub d
    rst $38
    db $e3
    rst $38
    add d
    rst $38
    add d
    dec b
    dec h
    inc de
    add [hl]
    rst $38
    ld c, c
    rst $38
    adc c
    rst $38
    ld c, c
    rst $38
    ld b, [hl]
    dec b
    dec h
    inc de
    dec b
    dec bc
    jr nc, jr_05b_7d5e

    rst $38
    inc h
    dec b
    inc hl

jr_05b_7d5e:
    dec d
    pop af
    rst $38
    add d
    rst $38
    ld [c], a
    rst $38
    add d
    rst $38
    pop af
    dec b
    dec h
    inc de
    adc [hl]
    rst $38
    ld b, h
    rst $38
    inc b
    rst $38
    ld b, h
    rst $38
    add h
    rst $38
    nop
    rst $38
    rrca
    rst $38
    db $10
    rst $38

jr_05b_7d7b:
    ld h, $ff
    jr z, @+$01

    jr z, @+$01

    ld h, $ff
    db $10
    dec b
    sbc h
    db $10
    dec b
    ld h, h
    ld sp, $ff49
    ld b, d
    rst $38
    ld b, h
    rst $38
    adc a
    dec b
    dec h
    ld de, $7105
    ld bc, $c405
    ld sp, $0531
    dec h
    ld de, $ff8c
    ld d, d
    dec b
    call nc, $8c33
    dec b
    ld c, [hl]
    ld hl, $e105
    jr nc, @+$07

    pop af
    ld [bc], a
    ldh a, [rIE]
    ldh [$df], a
    ld de, $09cf
    rst $08
    ld [$06e7], sp
    pop hl
    ld bc, $00f0
    db $fc

Jump_05b_7dbe:
    dec b
    ld h, $10
    inc a
    rst $38
    ld b, d
    rst $38
    cp c
    rst $38
    and l
    dec b
    inc b
    ld b, c
    ld b, d
    dec b
    sbc [hl]
    ld hl, $ff10
    ld de, $3305
    ld de, $ff41
    ld b, c
    dec b
    dec h
    inc de
    jp nz, $22ff

    dec b
    inc h
    ld b, e
    dec b
    ld h, $12
    jr c, @+$01

    inc h
    dec b
    inc [hl]
    ld b, c
    inc h
    dec b
    dec h
    inc de
    ldh [rIE], a
    sub b
    dec b
    ld b, [hl]
    ld b, c
    ldh [rTIMA], a
    ld c, $35
    jr nz, @+$01

    jr @+$01

    inc b
    rst $38
    jr c, jr_05b_7e05

    dec h
    inc de
    db $e4
    rst $38
    ld b, h

jr_05b_7e05:
    dec b
    ld h, [hl]
    ld b, c
    ld b, e
    dec b
    dec h
    inc de
    dec b
    add hl, de
    ld [hl-], a
    sub d
    rst $38
    inc e
    dec b
    dec h
    inc de
    ld hl, $22ff
    dec b
    add [hl]
    ld b, c
    ld hl, $0e05
    inc hl
    add c
    rst $38
    ld b, d
    dec b
    cp b
    ld sp, $9d05
    jr nc, jr_05b_7e2e

    ld h, $10
    ld e, $ff
    db $10

jr_05b_7e2e:
    rst $38
    inc e
    rst $38
    db $10
    dec b
    adc d
    ld [de], a
    rst $38
    nop
    rst $38
    ld c, b
    rst $38
    ld l, b
    rst $38
    ld e, b
    rst $38
    ld c, b
    rst $38
    ld c, b
    dec b
    dec h
    inc de
    dec b
    ld b, h
    db $10
    add [hl]
    dec b
    ld b, e
    ld de, $ff00
    or [hl]
    dec b
    ld l, [hl]
    inc h

jr_05b_7e51:
    dec b
    db $fc
    ldh a, [rIE]
    nop
    rst $38
    xor $ff
    ld a, h
    dec b
    call nc, $de49
    rst $38
    adc $05
    call nc, $cc49
    rst $38
    ld a, b
    dec b
    db $f4
    ld c, e
    dec b
    xor a
    inc hl
    dec b
    jp c, Jump_000_3343

    rst $38
    or e
    dec b
    call nc, $6649
    dec b
    sbc [hl]
    ld hl, $fe01
    cp $05
    jp c, $ef42

    jr nz, jr_05b_7e51

    ld b, b
    rst $08
    ld b, b
    sbc a
    add b
    rra
    nop
    ccf
    dec b
    ld h, $11
    dec b
    ld c, a
    ld e, a
    ld c, l
    dec b
    xor a
    ld e, a
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
