; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $028", ROMX[$4000], BANK[$28]

    jr z, @+$43

    ld b, b
    ld h, [hl]
    ld b, e
    call Call_000_0345
    ld c, c
    pop af
    ld c, h
    and a
    ld c, a
    ld l, [hl]
    ld d, d
    ld c, $55
    ld l, b
    ld d, a
    rst $30
    ld e, b
    dec [hl]
    ld e, h
    ld [hl], h
    ld e, [hl]
    ld e, [hl]
    ld h, d
    ld c, a
    ld h, [hl]
    call c, $7368
    ld l, e
    ld c, a
    ld l, a
    ld b, d
    ld [hl], b
    ld c, e
    ld [hl], c
    ld [hl+], a
    ld [hl], d
    ld bc, $f173
    ld [hl], e
    jp c, $a174

    ld [hl], l
    ld h, d
    db $76
    ld b, [hl]
    ld [hl], a
    inc l
    ld a, b
    dec bc
    ld a, c
    rst $38
    ld a, c

jr_028_403b:
    jr c, jr_028_40b7

    ld l, b
    ld a, d
    ld a, h
    ld a, d
    nop
    ld [$db07], sp
    dec de
    and h
    ld l, l
    ld e, d
    ld h, [hl]
    and c
    sbc a
    ld c, c
    ld e, c
    ld d, d
    db $db
    xor e
    or d
    sbc e
    db $e4
    ld c, h
    xor l
    sub d
    sub $ed
    pop hl
    ld e, h
    ld b, d
    db $10
    xor a
    xor b
    ld [hl], a
    ret nz

    ccf
    jp $9b3c


    cp h
    inc h
    or l
    ld e, e
    ld b, e
    cp c
    add l
    ld c, d
    ld d, b
    ld hl, $00ae
    db $dd
    ld [bc], a
    sbc d
    ld c, l
    adc $b6
    ld a, [c]
    dec h
    dec hl
    ld c, h
    jp nc, Jump_000_0b94

    xor l
    ld [hl], l
    ret z

    ld a, [hl-]
    jp $993c


    cp d
    rlca
    ld [hl+], a
    ld [bc], a
    ld c, b
    ld d, b
    jr nz, jr_028_403b

    add b
    db $dd
    ld [bc], a
    sbc d
    call $b64e
    ld a, [c]
    dec l
    and e
    dec bc
    dec d
    ld de, $082d
    ld a, [$e60a]
    sub l
    add hl, hl
    call c, $d8e2
    db $e4
    set 2, a
    db $eb
    di
    xor $e6
    and [hl]
    xor a
    or h
    or l
    sbc h
    rst $18
    inc d
    sub l
    ld [hl+], a
    ld l, d
    add hl, hl
    ld h, l

jr_028_40b7:
    cp l
    pop af
    push af
    ld sp, hl
    ld h, [hl]
    ld l, d
    ld h, a
    ld [hl], e
    xor b
    cp h
    call nc, $e6dc
    rst $28
    jp nz, Jump_028_42cb

    ld e, d
    ld h, [hl]
    or $2f
    xor a
    ccf
    ld a, a
    db $db
    sbc e
    rlca
    ld [hl], b
    ld [$7266], sp
    xor b
    cp l
    call c, $d8e3
    db $e4
    ld c, e
    ld d, a
    ld l, e
    ld [hl], e
    ld l, [hl]
    ld h, [hl]
    ld h, $af
    or h
    dec [hl]
    inc e
    rst $18
    sub e
    ld d, l
    and e
    dec h
    dec h
    db $e3
    ld [hl], l

jr_028_40ef:
    or c
    ld [hl], c
    dec [hl]
    ld a, d
    ld a, $1b
    ld e, e
    sbc l
    cp l
    ld e, e
    db $db
    and h
    dec l
    rlca
    inc b
    ld bc, $07d9
    ld a, [bc]
    ld [bc], a
    rlca
    ld d, b
    inc c
    sbc b
    ld e, e
    inc h
    xor l
    ld e, b
    ld h, [hl]
    or l
    adc e
    ld c, b
    db $db
    ld d, d
    rst $18
    xor [hl]
    or e
    sbc e
    db $e4
    call $b45d
    ld a, [c]
    ld c, l
    and e
    pop hl
    rla
    add $3e
    ld bc, $0df5
    db $e3
    sub c
    add hl, hl
    adc l
    xor [hl]
    sub b
    push de
    inc h
    add hl, hl
    call z, $f6d2
    ret z

    add l
    cp c
    add h
    sbc h
    ld c, d
    ld l, e
    daa
    ret c

    ld c, l
    ld [hl], d
    ld [hl+], a
    cp [hl]
    nop
    jp c, $f5c2

    daa
    ld a, b
    ld c, c
    and [hl]
    sub b
    ld d, a
    ld hl, $d36a
    inc e
    ld b, a
    xor c
    xor b
    sub $80
    or a
    inc d
    ld a, [hl+]
    adc c
    dec d
    ld b, b
    rst $08
    ld h, $d9
    ld c, h
    ld d, e
    rlca
    inc d
    jr jr_028_40ef

    ld l, d
    inc bc
    db $fc
    rlca
    inc h
    ld [de], a
    nop
    ld a, [hl-]
    add c
    add hl, de
    ld [bc], a
    cp $cb
    dec sp
    ld b, [hl]
    add [hl]
    ld [hl-], a
    ld e, d
    dec l
    push hl
    add hl, de
    push hl
    dec h
    ld e, c
    inc de
    ld [hl], e
    dec b
    res 1, h
    rst $08
    and [hl]
    db $f4
    ld l, d
    ld a, b
    ld e, e
    ld c, c
    ld d, l
    ld h, a
    push bc
    db $dd
    xor a
    and a
    ld [hl], d
    db $76
    xor b
    cp d
    xor $ed
    cp $fd
    ld a, [$f9f8]
    ei
    ld sp, hl
    db $fd
    inc sp
    scf
    inc e
    call c, $b5d1
    or c
    sub l
    ld e, e
    ld a, a
    ld e, e
    db $db
    dec c
    adc l
    dec l
    ld l, l
    rst $18
    rst $18
    or $f6
    xor e
    cp d
    db $ed
    db $ec
    rlca
    ld [hl], h
    rla
    db $fc
    ld c, h
    rrca
    and $b4
    xor d
    cp b
    db $db
    ret


    push de
    rst $20
    rlca
    ld l, d
    ld [de], a
    sbc c
    cp e
    ret


    rst $08
    jp hl


    db $ed
    ld l, d
    ld l, [hl]
    ld a, e
    ld a, [hl]
    or e
    or d
    sub a
    sub [hl]
    db $ed
    db $ec
    rlca
    nop
    inc e
    rlca
    ld d, b
    add hl, de
    rst $30
    ld bc, $07cd
    ret nz

    dec e
    dec hl
    rlca
    jp nc, $c919

    rlca
    ld h, b
    inc c
    rlca
    or b
    inc c
    rlca
    ld h, b
    inc de
    ret


    ld d, l
    rst $00
    ld h, l
    ld a, l
    xor a
    and a
    ld [hl], e
    ld [hl], a
    rlca
    or b
    inc e
    ld e, b
    rst $38
    rlca
    jp nz, $0703

    add hl, bc
    inc bc
    ld [$31af], sp
    ld c, [hl]
    ld e, e
    and h
    inc b
    ld e, e
    nop
    sbc l
    ld hl, $132a
    sub h
    jr @+$01

    rlca
    nop
    rra
    dec c
    nop
    scf
    sub h
    add hl, de
    ld l, [hl]
    or b
    add hl, de
    push hl
    ld b, b
    ld a, [$2b24]
    ld c, $91
    add hl, de
    call nz, $ee08
    ld bc, $28cd
    sbc d
    jr nc, jr_028_4271

    ld e, b
    and l
    jr nz, jr_028_425c

    reti


    ld e, $53
    or h
    jr nz, jr_028_429e

    rlca
    ld [hl+], a
    rla
    dec [hl]
    ld b, b
    rst $38
    rlca
    jr nc, @+$1e

    nop
    sub c
    jr nc, jr_028_428f

    ld e, b
    ld h, $80
    ld h, l
    inc d
    sbc b
    ld c, h
    ld d, d
    inc d
    xor c
    add d
    ld e, e
    call $b65e
    rlca
    di
    add hl, bc
    rlca
    ld b, b
    add hl, de
    add hl, sp
    ld b, d
    sbc $07
    ldh a, [rNR24]
    ld [hl], e

jr_028_425c:
    rrca
    rst $08
    ld h, a
    sbc b
    cp d
    ld b, l
    rst $30
    ld [$24db], sp
    ld l, a
    sub b
    ld a, [$bf05]
    ld b, b
    ei
    inc b
    cp l
    ld b, d
    cp b

jr_028_4271:
    ld b, a
    rst $28
    db $10
    inc a
    jp $18e7


    ld a, a
    add b
    inc [hl]
    set 5, [hl]
    ld de, $6a95
    rst $38

jr_028_4281:
    nop
    ld a, [hl-]
    push bc
    rst $18
    jr nz, @-$09

    ld a, [bc]
    ld c, e
    or h
    cp l
    ld b, d
    adc $31
    sbc e

jr_028_428f:
    ld h, h
    rst $20
    jr @+$5f

    and d
    rst $30
    ld [$43bc], sp
    ld [hl], e
    adc h
    cp a
    ld b, b
    db $eb
    inc d

jr_028_429e:
    rlca
    nop
    jr nc, jr_028_4281

    jr nz, jr_028_428f

    inc d
    ld l, a
    sub b
    rst $38
    nop
    rlca
    inc c
    ld [hl], $fc
    inc bc
    push af
    ld a, [bc]
    xor e
    ld d, h
    db $f4
    dec bc
    adc $31
    xor a
    ld d, b
    rst $30
    ld [$807f], sp
    ei
    inc b
    and l
    ld e, d
    jp nc, $bd2d

    ld b, d
    ld [hl], e

jr_028_42c5:
    adc h
    reti


    ld h, $e7
    jr jr_028_42c5

Jump_028_42cb:
    dec b
    ld a, a
    add b
    dec a
    jp nz, Jump_000_31ce

    db $fd
    ld [bc], a
    sbc a
    ld h, b
    ld e, a
    and b
    push af
    ld a, [bc]
    ld a, a

Jump_028_42db:
    add b
    push hl
    ld a, [de]
    rst $08
    jr nc, @+$01

    nop
    ld a, l
    add d
    rst $00
    jr c, jr_028_42ee

    ld d, b
    ccf
    dec c
    ei
    inc b
    ld e, [hl]
    and c

jr_028_42ee:
    ld sp, hl
    ld b, $70
    adc a
    and c
    ld e, [hl]
    ei
    inc b
    ld l, [hl]
    sub c
    ei
    inc b
    ldh a, [rIF]
    jp $8e33


    ld l, [hl]
    sbc e
    ld e, e
    dec a
    cp l
    scf
    or a
    ld a, e
    ei
    dec a
    cp l
    rrca
    ldh a, [rSCX]
    ld c, h
    pop af
    or $f9
    ld a, [$dddc]
    or h
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76
    or $2d
    xor l
    dec sp
    cp e
    sbc a
    ld e, a
    adc a
    ld l, a
    jp nz, $f032

    rrca
    cp h
    cp l
    sbc $df
    db $ec
    db $ed
    cp h
    cp l
    reti


    jp c, Jump_028_7671

    jp Jump_000_0fcc


    ldh a, [rTAC]
    and b
    rst $38
    ld c, l
    rlca
    ld e, a
    ld c, a
    ld c, l
    rlca
    cp a
    ld c, a
    ld c, l
    rlca
    rra
    ld e, a
    ld c, l
    rlca
    ld a, a
    ld e, a
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
    rlca
    rst $38
    ld l, a
    ld c, l
    rlca
    ld e, a
    ld a, a
    ld c, l
    rlca
    cp a
    ld a, a
    dec l
    nop
    ld [$7b01], sp
    ld a, e
    sub l
    xor h
    cp [hl]
    jp $a29c


    ld e, c
    rst $00
    ld h, b
    db $fc
    sbc h
    db $dd
    rst $18
    or d
    call $f3cd
    ccf
    cp [hl]
    ld h, b
    ld e, $a0
    call z, $21f2
    rst $38
    pop bc
    dec l
    ld a, [c]
    inc de
    ld bc, $0b00
    ld [hl-], a
    ld bc, $0f10
    ld c, $cc
    ld a, [c]
    ld a, $bf
    ld h, c
    rra
    and c
    call $01f3
    ld a, [de]
    nop
    pop af
    ld de, $7c7c
    and $f6
    jp $e7db


    rst $20
    ld a, l
    ld a, l
    ld h, a
    ld h, a
    sbc [hl]
    sbc [hl]
    sbc e
    db $db
    inc d
    sub l
    ld a, [hl+]
    ld [hl-], a
    pop hl
    jp hl


    inc sp
    inc sp
    rst $38
    rst $38
    ld [hl], $36
    inc de
    db $d3
    inc a
    inc a
    ld bc, $0f60
    dec d
    dec a
    db $fd
    ld e, $1e
    ld [hl-], a
    ld [hl-], a
    pop hl
    db $ed
    ld d, $96
    inc hl
    inc hl
    pop hl
    db $ed
    ld sp, $ff35
    rst $38
    ld [hl+], a
    and d
    inc de
    db $d3
    dec a
    dec a
    ld bc, $0d00
    ld bc, $0b51
    ld a, e
    ld a, d
    ld bc, $0a02
    adc $2e
    pop af
    dec a
    ld bc, $0854
    adc h
    jp nz, $9690

    ld h, l
    ld h, l
    sbc d
    and [hl]
    cp l
    jp $c3bd


    add hl, de
    dec h
    ld b, d
    db $db
    ret z

    dec sp
    inc c
    db $fd
    adc d
    adc $74
    ld a, [$aa24]

Jump_028_4407:
    ld b, c
    ld b, l
    ld de, $d3d1
    ld [hl-], a
    inc c
    jp nz, $0110

    inc bc
    rra
    ld a, [de]
    srl e
    ld c, $ff
    adc c
    call $fb75
    dec h
    xor e
    ld b, c
    ld h, l
    ld d, c
    or c
    rst $08
    rrca
    or c
    or l
    ei
    ei
    ld a, a
    ld a, a
    add $d6
    add e
    cp e
    rst $00
    rst $00
    rst $38
    rst $38
    ld a, [hl]
    cp $d8
    db $db
    adc h
    xor h
    rst $38
    rst $38
    ld [hl], c
    ld [hl], l
    jr nz, @+$30

    pop af
    pop af
    sbc a
    sbc a
    cp $fe
    ld bc, $1a60
    cp $01
    ld l, a
    dec e
    ld [hl], c
    ld [hl], l
    ei
    ei
    rst $08
    rst $08
    add [hl]
    or [hl]
    rst $08
    rst $08
    ld sp, hl
    ei
    ld sp, hl
    ld sp, hl
    xor $ee
    reti


    db $db
    adc l
    xor l
    ei
    ei
    ld [hl], c
    ld [hl], l
    ld hl, $f12f
    pop af
    sbc [hl]
    sbc [hl]
    db $fd
    db $fc
    ld bc, $1100
    push hl
    ld bc, $1206
    sbc c
    and l
    ld b, d
    ld e, e
    srl e
    ld c, $fe
    adc e
    rst $08
    ld bc, $1456
    jp nz, $0102

    ret nz

    rra
    dec c
    ld bc, $0460
    cp l
    db $fd
    sbc [hl]
    sbc [hl]
    or d
    or d
    pop hl
    db $ed
    ld d, $97
    ld hl, $0121
    or h
    nop
    cp $fe
    inc hl
    and e
    ld bc, $00bc
    ld bc, $18a0
    ld a, c
    ld a, c
    cp [hl]
    ld a, $01
    or b
    inc e
    ld bc, $0ce0
    call z, $f12c
    dec a
    ld bc, $0814
    ld bc, $12c0
    sub d
    xor d
    ld bc, $14c8
    ld bc, $1710
    ld bc, $105b
    ld c, $01
    ldh [$0b], a
    ld [hl-], a
    ld bc, $2c50
    ld bc, $1f20
    ld [$7b01], sp
    cpl
    ld [bc], a
    ld bc, $0cf0
    ld bc, $1f40
    dec c
    add h
    ld a, e
    jp nc, $b92d

    ld b, [hl]
    ld [hl], e
    adc h
    ld [hl], e
    adc h
    or b
    ld c, a
    adc $31
    ld e, [hl]
    and c
    dec a
    jp nz, Jump_028_7f80

    db $dd
    ld [hl+], a
    sbc l
    ld h, d
    db $dd
    ld [hl+], a
    jr @-$17

    db $dd
    ld [hl+], a
    add sp, $17
    inc h
    db $db
    ld a, b
    add a
    or a
    ld c, b
    adc a
    ld [hl], b
    xor a
    ld d, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, e
    add h
    rst $20
    jr @-$1f

    jr nz, jr_028_452a

    pop hl
    db $fc
    inc bc
    adc c
    db $76
    ld h, a
    sbc b
    ld a, b
    add a
    ld a, a
    add b
    ld h, a
    sbc b
    cp d
    ld b, l
    rst $18
    jr nz, @-$13

    inc d
    ld l, a
    sub b
    rst $38
    nop
    cp a
    ld b, b
    ei
    inc b
    cp l
    ld b, d
    cp b

jr_028_452a:
    ld b, a
    rst $28
    db $10
    db $fc
    inc bc
    push af
    ld a, [bc]
    xor e
    ld d, h
    db $f4
    dec bc
    adc $31
    xor a
    ld d, b
    rst $30
    ld [$807f], sp
    ei
    inc b
    and l
    ld e, d
    jp nc, $bd2d

    ld b, d
    ld [hl], e

jr_028_4546:
    adc h
    reti


    ld h, $e7
    jr jr_028_4546

    dec b
    ld a, a
    add b
    dec a
    jp nz, Jump_000_31ce

    db $fd
    ld [bc], a
    sbc a
    ld h, b
    ld bc, $3c00
    ld bc, $3f50
    dec c
    ld bc, $3c30
    ldh a, [rIF]
    jp $8e33


    ld l, [hl]
    sbc e
    ld e, e
    dec a
    cp l
    scf
    or a
    ld a, e
    ei
    dec a
    cp l
    rrca
    ldh a, [rSCX]
    ld c, h
    pop af
    or $f9
    ld a, [$dddc]
    or h
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76
    or $2d
    xor l
    dec sp
    cp e
    sbc a
    ld e, a
    adc a
    ld l, a
    jp nz, $f032

    rrca
    cp h
    cp l
    sbc $df
    db $ec
    db $ed
    cp h
    cp l
    reti


    jp c, Jump_028_7671

    jp Jump_000_0fcc


jr_028_45a0:
    ldh a, [rSB]
    and b
    rst $38
    ld c, l
    ld bc, $4f5f
    ld c, l
    ld bc, $4fbf
    ld c, l
    ld bc, $5f1f
    ld c, l
    ld bc, $5f7f
    ld c, l
    ld bc, $5fdf
    ld c, l
    ld bc, $6f3f
    ld c, l
    ld bc, $6f9f
    ld c, l
    ld bc, $6fff
    ld c, l
    ld bc, $7f5f
    ld c, l
    ld bc, $7fbf
    dec l
    nop
    ld [$3107], sp
    or a
    ld d, l
    ld l, h
    cp [hl]
    jp $a29c


    ld e, b
    add $60
    cp $10
    ld d, c
    call $88a0
    cp e
    di
    ccf
    cp [hl]
    ld h, b
    ld e, $a0
    inc c
    ld [hl-], a
    nop
    sbc $c0
    inc l
    ldh [rNR11], a
    ld sp, $15b7
    inc l
    cp [hl]
    jp $e29c


    jr jr_028_45a0

    ld bc, $009f
    ld h, c
    call $8c20
    cp l
    pop de
    rra
    cp [hl]
    ld h, b
    ld e, $a1
    inc c
    inc sp
    rlca
    ld a, [de]
    inc bc
    or l
    rlca
    ld [bc], a
    ld bc, $18e2
    and [hl]
    nop
    ld e, $00
    pop hl
    call $8920
    cp d
    ld [c], a
    cpl
    cp [hl]
    ld h, b
    rra
    and c
    adc l
    or e
    ld bc, $c1df
    cpl
    pop hl
    dec d
    ld l, h
    db $ed
    jp nz, $82da

    cp [hl]
    jp Jump_028_7ddb


    ld a, l
    ld h, [hl]
    and $9a
    cp d
    sub c
    push de
    sub b
    ld d, e
    jr nz, jr_028_466a

    pop bc
    db $dd
    ld hl, $f221
    ld a, [c]
    ld a, $3e
    inc de
    db $d3
    dec a
    dec a
    ld l, h
    db $ed
    add d
    sbc d
    rlca
    ld h, h
    inc bc
    ld h, [hl]
    sbc d
    sbc d
    rlca
    ld l, [hl]
    add hl, bc
    cp [hl]
    inc de
    db $d3
    inc a
    inc a
    ld a, h
    ld a, l
    jp nz, $81da

    cp l
    jp Jump_000_25db


    dec h
    rra
    rst $18
    ld [de], a
    ld [de], a

jr_028_466a:
    pop hl
    pop hl
    ld d, $df
    ld hl, $072d
    ld [hl], h
    nop
    db $fd
    db $fd
    ld [hl+], a
    cpl
    inc de
    db $d3
    inc a

jr_028_467a:
    ld a, $07
    ld b, b
    inc bc
    rlca
    rlca
    dec b
    adc c
    cp d
    ld [c], a
    ld l, $bf
    ld h, c
    rlca
    ld d, [hl]
    ld b, $40
    ld c, e
    sub c
    xor h
    cp h
    pop bc
    sbc h
    and d
    ld e, b
    ld h, [hl]
    ld h, b
    db $fc
    rlca

jr_028_4697:
    inc c
    nop
    push bc
    inc h
    jp nz, $9e1f

    ld h, b
    rra
    and c
    dec c
    inc sp
    rlca
    ld e, d
    nop
    ldh [rNR14], a
    adc h
    jp Jump_000_1610


    ld h, b
    add sp, $18
    dec h
    cp h
    jp nz, $c2bc

    jr jr_028_46dc

    ld b, b
    reti


    ret nz

    dec sp
    nop
    pop af
    nop
    ld l, [hl]

jr_028_46be:
    inc c
    sub e
    inc c
    jp nc, $3a04

    nop
    db $dd
    pop bc
    jr nz, @+$0e

    ld [c], a
    nop
    add $00
    sbc c
    jr @+$27

    inc a
    ld b, d
    inc a
    ld b, d
    jr jr_028_467a

    nop
    sbc c
    ret nz

    dec sp
    nop
    push af

jr_028_46dc:
    nop
    ld c, [hl]
    inc c
    sub e
    inc c
    ld d, d
    inc b
    ld a, [hl-]
    nop
    call c, Call_000_1e07
    inc de
    sbc b
    jr jr_028_4711

    inc a
    ld b, c
    inc a
    ld b, d
    jr jr_028_4697

    nop
    sbc c
    jp z, Jump_000_063b

    rst $30
    add hl, bc
    ld l, l
    inc b
    sbc d
    inc b
    sbc d
    nop
    ld l, [hl]
    ld d, c
    or l
    adc $2e
    ldh [$e0], a
    pop af
    pop af
    ld a, a
    ld a, a
    adc a
    adc a
    add [hl]
    and [hl]
    rst $00
    rst $00
    rst $28

jr_028_4711:
    rst $28
    db $fc
    db $fd
    ret z

    ret z

    add h
    and h
    adc [hl]
    adc [hl]
    ld [hl], c
    ld [hl], c
    jr nz, jr_028_46be

    ld [hl], c
    ld [hl], c
    rst $18
    rst $18
    ld a, h
    ld a, l
    rlca
    ld h, b
    ld [de], a
    rst $08
    rst $08
    add [hl]
    add [hl]
    add a
    or a
    rst $08
    rst $08
    ld hl, sp-$07
    ret z

    ret z

    add h
    or l
    adc [hl]
    adc [hl]
    ld a, e
    ld a, e
    jr nz, jr_028_4763

    rlca
    ld a, d
    db $10
    ld a, b
    ld a, c
    ld h, b
    ld h, h
    ld [hl], c
    ld [hl], c
    cp $fe
    sbc $df
    add l
    add l
    ret z

    ret z

    db $fd
    db $fd
    ld b, [hl]
    ld d, [hl]
    ret c

    jp c, $ad8d

    adc e
    adc e
    ld [hl], c
    ld [hl], c
    and c
    and l
    di
    di
    sbc [hl]
    sbc [hl]
    ld a, h

jr_028_475f:
    ld a, l
    rlca
    nop
    inc e

jr_028_4763:
    srl d
    ld b, $f7
    ld [$056d], sp
    sbc e
    dec b
    sbc e
    ld bc, $516f
    or l
    adc $2f
    rlca
    nop
    inc e
    rlca
    ld d, b
    db $10
    ld [$076c], sp
    sub $16
    rlca
    ld h, b

jr_028_4780:
    inc c
    ld d, $d7
    rlca
    or d
    ld a, [bc]
    ldh [$ee], a
    pop af
    push af
    rlca
    ld h, h
    ld de, $07b6
    ld l, d
    db $10
    ld a, b
    ld a, c
    rlca
    or b
    inc de
    ld [hl], l
    and c
    xor l
    rlca
    cp d
    ld [de], a
    rlca
    ldh [$0c], a
    ret nz

    dec l
    ret nz

    ld e, $9c
    ld h, e
    ld e, $a1
    rlca
    jr jr_028_47ad

    ld bc, $0007

jr_028_47ad:
    rra
    dec c
    ld bc, $19d2
    and h
    inc a

jr_028_47b4:
    ld b, c
    inc e
    ld h, d
    jr jr_028_475f

    nop
    cp l
    nop
    ld b, e
    push bc
    jr z, jr_028_4780

    inc sp
    ret nz

    inc c
    adc h
    ld d, d
    rlca
    ld d, $05
    ld bc, $e00e
    inc b
    jp nz, Jump_028_4407

    ld de, $2907
    jr @+$09

    dec d

jr_028_47d5:
    inc d
    call c, Call_000_20c1
    ld de, $39a2
    ld b, h
    rlca
    add h
    inc hl
    sbc l
    nop
    ld h, e
    call Call_000_0720
    ldh a, [$0c]
    rlca
    ld b, b
    dec d
    rlca
    add hl, hl
    db $10
    rlca
    ld c, l
    inc de
    rlca
    db $f4
    jr jr_028_47b4

    ld b, b
    db $ed
    ld [de], a
    rst $38
    nop
    or l
    ld c, d
    rst $38
    nop
    rst $28
    db $10
    ld a, [$bf05]
    ld b, b
    xor a
    ld d, b
    rst $38
    nop
    ld a, e
    add h
    rst $28
    db $10
    cp $01
    cp a
    ld b, b
    db $fd
    ld [bc], a
    rst $28
    db $10
    rst $28
    db $10
    ld a, l
    add d
    rst $38
    nop
    db $db
    inc h
    ld a, a
    add b
    rst $30
    ld [$21de], sp
    ei
    inc b
    ei
    inc b
    rst $18
    jr nz, @+$01

    nop
    db $76
    adc c
    rst $38
    nop
    rlca

jr_028_482f:
    ld [hl-], a
    jr nc, jr_028_482f

    ld [bc], a
    ld e, a
    and b
    push af
    ld a, [bc]
    ld a, a
    add b
    push hl
    ld a, [de]
    rst $08
    jr nc, @+$01

    nop
    ld a, l
    add d
    rst $00
    jr c, @+$09

    nop
    jr nc, @+$80

    add c
    xor c
    ld d, [hl]
    ldh a, [rIF]
    ld h, c
    sbc [hl]
    rlca
    inc c
    jr nc, jr_028_47d5

    ld a, h
    ld b, a
    cp b
    push af
    ld a, [bc]
    rst $18
    jr nz, @+$7d

    add h
    xor $11
    ret c

    daa
    db $fc
    inc bc
    ei
    inc b
    ld e, [hl]
    and c
    ld sp, hl
    ld b, $70
    adc a
    and c
    ld e, [hl]
    ei
    inc b
    ld l, [hl]
    sub c
    ei
    inc b
    rlca
    ld b, b
    inc a
    cp l
    ld b, d
    cp b
    ld b, a
    rst $28
    db $10
    db $fc
    inc bc
    push af
    ld a, [bc]
    xor e
    ld d, h
    db $f4
    dec bc
    adc $31
    xor a
    ld d, b
    rst $30
    ld [$807f], sp
    ei
    inc b
    and l
    ld e, d
    jp nc, $bd2d

    ld b, d
    ld [hl], e
    adc h
    rlca
    ld [hl], b
    inc a
    ldh a, [rIF]
    jp $8e33


    ld l, [hl]
    sbc e
    ld e, e
    dec a
    cp l
    scf
    or a
    ld a, e
    ei
    dec a
    cp l
    rrca
    ldh a, [rSCX]
    ld c, h
    pop af
    or $f9
    ld a, [$dddc]
    or h
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76
    or $2d
    xor l
    dec sp
    cp e
    sbc a
    ld e, a
    adc a
    ld l, a
    jp nz, $f032

    rrca
    cp h
    cp l
    sbc $df
    db $ec
    db $ed
    cp h
    cp l
    reti


    jp c, Jump_028_7671

    jp Jump_000_0fcc


    ldh a, [rTAC]
    and b
    rst $38
    ld c, l
    rlca
    ld e, a
    ld c, a
    ld c, l
    rlca
    cp a
    ld c, a
    ld c, l
    rlca
    rra
    ld e, a
    ld c, l
    rlca
    ld a, a
    ld e, a
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
    rlca

jr_028_48f8:
    rst $38
    ld l, a
    ld c, l
    rlca
    ld e, a
    ld a, a
    ld c, l
    rlca
    cp a
    ld a, a
    dec l
    nop
    ld [$7b12], sp
    ld a, e
    add h
    cp l
    add d
    cp $89
    or a
    ld b, b
    rst $18
    ld h, b
    jp hl


    and b
    xor a
    add b
    rst $30
    call $33cd
    rst $38
    inc h
    cp d
    ld b, b
    ld e, [hl]
    ld bc, $090d
    push de
    nop
    db $fc
    add b
    ld l, [hl]
    ld [de], a
    nop
    ld bc, $81be
    sbc l
    ld b, b
    ld e, b
    ld h, b
    ld l, [hl]
    nop
    dec e
    ld [bc], a
    sbc d
    call $33cd
    di
    jr nz, jr_028_48f8

    ld c, b
    ld d, [hl]
    nop
    inc e
    nop
    ld [hl], a
    ld [$108d], sp
    rst $18
    ld a, e
    ld a, e
    add h
    sub l
    add d
    cp [hl]
    add b
    sbc h
    ld h, h
    ld a, e
    ld b, b
    ld e, l
    inc b
    db $fc
    ld [bc], a
    rst $28
    call Call_000_32cc
    ld a, [c]
    ld hl, $09bf
    rla
    ld bc, $013d
    db $eb
    ld bc, $01ef
    cp c
    call nz, $c6c4
    sub $c2
    jp c, $eae2

    and $e6
    and a
    and a
    or a
    or a
    sbc e
    db $db
    inc d
    sub l
    ld [hl+], a
    ld a, [hl+]
    ld hl, $3565
    ld [hl], c
    ld sp, $3235
    ld [hl-], a
    rla
    ld d, a
    sbc h
    sbc h
    call nc, $e6d4
    rst $30
    jp nz, Jump_028_42db

    ld b, d
    ld h, [hl]
    and $27
    and a
    ccf
    ld a, a
    ld [de], a
    ld l, [hl]
    nop
    xor d
    ld [hl-], a
    and c
    add hl, hl
    ld sp, $31b1
    ld sp, $7232
    inc de
    ld d, e
    sbc l
    sbc l
    ld d, h
    ld d, h
    and $f6
    jp nz, $c2da

    jp nz, Jump_028_6666

    daa
    daa
    ccf
    ccf
    sbc e
    db $db
    ld de, $2191
    ld hl, $a521
    dec [hl]
    or e
    ld [de], a
    ld a, b
    nop
    ld [de], a
    sbc h
    nop
    ld [de], a
    ld b, b
    ld bc, $80bf
    cp [hl]
    ld b, b
    rst $18
    ld h, d
    db $eb
    add b
    adc $a0
    rst $10
    ld [de], a
    ld d, b
    ld bc, $01ff
    sbc a
    ld bc, $01bd
    ei
    ld bc, $41ff
    db $dd
    ld h, b
    ld h, e
    add h
    cp l
    sub b
    xor $8d
    or e
    ld [de], a
    ld [$8000], sp
    call $f681
    dec c
    db $ec
    ld [hl-], a
    ld a, [c]
    ld hl, $41ef
    rst $18
    add hl, bc
    or l
    ld [de], a
    ld e, d
    ld bc, $80bd
    cp a
    add b
    adc l
    ld h, b
    ld l, a
    add h
    sbc e
    adc b
    or a
    add c

jr_028_4a05:
    cp l
    add b
    sbc h
    ld b, d
    ld l, e
    nop
    db $fd
    ld b, b
    ld e, e
    ld [hl+], a
    cp d
    nop
    ret nc

    nop
    db $f4
    ld bc, $017b
    rst $28
    sub b
    ld d, a
    jr nz, jr_028_4a05

    db $10
    db $dd
    ld bc, $806f
    cp $80
    or e
    nop
    jr c, jr_028_4a28

    add hl, de

jr_028_4a28:
    ld b, d
    adc $00
    ld sp, hl
    ld b, d
    cp d
    dec b
    ld h, c
    nop
    ld [hl], d
    nop
    db $db
    nop
    db $fc
    ld bc, $004f
    rst $20
    nop
    db $fc
    nop
    rst $28
    add h
    cp d
    nop
    inc e
    nop
    rst $28
    nop
    cp h
    ld bc, $4219
    ld d, d
    inc bc
    db $e3
    ld b, $c7
    ld de, $0151
    db $ed
    ld bc, $01fd
    ld a, c
    inc de
    ld [hl], e
    rrca
    rst $08
    sub e
    sub a
    sub e
    sub a
    reti


    reti


    reti


    reti


    db $dd
    db $dd
    db $ed
    db $ed
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    sbc h
    cp l
    call z, $fccd
    db $fc
    ld a, h
    ld a, h
    ld a, c
    ld a, c
    cp c
    cp c
    sub a
    sub a
    cp $fe
    sub c
    sub l
    sub c
    sub c
    ld e, e
    ld e, e
    db $db
    db $db
    call Call_000_12cd
    ld l, d
    db $10
    cp $fe
    sbc b
    cp e
    ret z

    jp z, $f8f8

    ld [hl], c
    ld [hl], l
    ld hl, $b321
    or e
    rst $10
    rst $10
    ld [de], a
    ld a, [hl]
    ld [de], a
    db $db
    db $db
    ld [de], a
    add [hl]
    db $10
    push hl
    push hl
    rst $38
    rst $38
    xor $ee
    sbc c
    cp e
    ret


    ret


    ld sp, hl
    ei
    ld a, c
    ld a, c
    ld [hl], c
    ld [hl], l
    or e
    or e
    sub [hl]
    sub [hl]
    db $fd
    db $fc
    add b
    db $fd
    add d
    adc [hl]
    ld b, b
    ld c, [hl]
    add b
    cp a
    add b
    rst $38
    add c
    rst $38
    add b
    cp h
    ld b, d
    ld e, e
    inc hl
    sub e
    ld b, $e7
    sub c
    or l
    ld bc, $01af
    rst $38
    ld bc, $11fd
    pop af
    ld c, $ce
    or b
    rst $08
    add d
    cp [hl]
    ld b, b
    ld c, l
    ld [de], a
    add $10
    adc c
    push af
    sub b
    xor h
    ld b, d
    ld e, e
    ld [de], a
    ld d, b
    ld [de], a
    ld b, c
    and l
    ld hl, $01dd
    ld a, l
    ld de, $0e51
    adc $c4
    db $f4
    add $d6
    jp nz, $c2d2

    jp z, $6812

    inc b
    ld de, $259d
    dec hl
    ld hl, $31af
    or l
    ld [de], a
    cp b
    inc b
    sub e
    sub e
    sub e
    sub a
    ld e, c
    ld e, l
    reti


    reti


    ld [de], a
    adc b
    ld [de], a
    ld a, [hl]
    cp $9d
    cp a
    call $fdcd
    db $fd
    ld a, c
    ld a, c
    dec hl
    dec hl
    cp e
    cp e
    or $f6
    db $fc
    db $fd
    ld [hl], b
    ld [hl], b
    add h
    sub l
    add b
    cp h
    add c
    sbc l
    ld b, b
    db $db
    ld h, b
    jp hl


    and b
    xor l
    add b
    rst $30
    ld [$01cf], sp
    ld a, [hl]
    inc c
    di
    nop
    ld e, a
    nop
    sbc l
    jr nz, jr_028_4b6b

    db $10
    sub a
    jr @+$01

    ld [de], a
    nop
    inc d
    add b
    cp a
    add b
    sbc b
    add c
    add c
    ld b, h
    push bc
    nop
    db $fd
    ld [bc], a
    ld a, [$3412]
    inc de
    ld a, a
    ld bc, $024d
    jp c, $3900

    nop
    sbc a
    nop
    ld a, [$fd01]
    ld b, b
    ld hl, sp+$20
    cpl
    nop
    dec e
    nop
    sbc c

jr_028_4b6b:
    ld [$01ec], sp
    db $fd
    nop
    ld a, [$5408]
    nop
    db $fd
    jr nz, jr_028_4ba6

    jr @-$1f

    db $10
    rst $30
    ld [de], a
    ld b, b
    db $10
    add b
    cp [hl]
    ld [$0474], sp
    db $eb
    db $10
    ld [hl], $81
    sbc l
    ld b, d
    ld e, e
    ld [de], a
    ld [hl], b
    dec h
    cp e
    nop
    ld [hl], b
    ld bc, $0239
    ld a, [c]
    nop
    pop af
    nop
    ld e, a
    ld [$0176], sp
    db $ed
    nop
    sbc b
    ld b, b
    ld c, [hl]
    nop
    dec e
    ld [bc], a
    sbc e
    ld [de], a
    ld d, b

jr_028_4ba6:
    ld [bc], a
    ld b, c
    ld e, a
    ld bc, $013d
    ld l, e
    ld [de], a
    ld e, h
    nop
    ld [de], a
    ld b, b
    db $10
    adc b
    or [hl]
    nop
    ld a, h
    ld [$00e7], sp
    or $01
    dec a
    ld b, d
    db $db
    dec bc
    db $eb
    ld [de], a
    ld d, d
    ld de, $01e5
    ld l, l
    ld bc, $1371
    ld d, e
    rrca
    rst $08
    ld h, a
    sbc b
    cp d
    ld b, l
    rst $30
    ld [$24db], sp
    ld l, a
    sub b
    ld a, [$bf05]
    ld b, b
    ei
    inc b
    cp l
    ld b, d
    cp b
    ld b, a
    rst $28
    db $10
    inc a
    jp $18e7


    ld a, a
    add b
    inc [hl]
    set 5, [hl]
    ld de, $6a95
    rst $38

jr_028_4bf0:
    nop
    ld a, [hl-]
    push bc
    rst $18
    jr nz, @-$09

    ld a, [bc]
    ld c, e
    or h
    cp l
    ld b, d
    adc $31
    sbc e

jr_028_4bfe:
    ld h, h
    rst $20
    jr jr_028_4c5f

    and d
    rst $30
    ld [$43bc], sp
    ld [hl], e
    adc h
    cp a
    ld b, b
    db $eb
    inc d
    ld [de], a
    nop
    jr nc, jr_028_4bf0

    jr nz, jr_028_4bfe

    inc d
    ld l, a
    sub b
    rst $38
    nop
    ld [de], a
    inc c
    ld [hl], $fc
    inc bc
    push af
    ld a, [bc]
    xor e
    ld d, h
    db $f4
    dec bc
    adc $31
    xor a
    ld d, b
    rst $30
    ld [$807f], sp
    ei
    inc b
    and l
    ld e, d
    jp nc, $bd2d

    ld b, d
    ld [hl], e

jr_028_4c34:
    adc h
    reti


    ld h, $e7
    jr jr_028_4c34

    dec b

jr_028_4c3b:
    ld a, a
    add b
    dec a
    jp nz, Jump_000_31ce

    db $fd
    ld [bc], a
    sbc a
    ld h, b
    nop
    ld a, $38
    ld b, h
    ld b, h
    cp d
    nop
    rst $28
    nop
    add e
    nop
    add $80
    ld l, a
    ld b, a
    cp b
    nop
    inc c
    nop
    ld b, $00
    rlca
    nop
    dec l
    nop
    ld sp, hl

jr_028_4c5f:
    inc e
    ld h, e
    daa
    ld e, b
    ld bc, $18e6
    ld h, a
    jr nc, jr_028_4cb1

    jr nz, jr_028_4c3b

    nop
    ldh [rP1], a
    ld [hl], b
    ld b, b
    cp b
    ld [hl], b
    adc l
    db $10
    ld l, a
    add b

jr_028_4c76:
    ld b, e
    ld b, b
    and b
    nop
    ld a, b
    nop
    cpl
    nop
    ld [hl], a
    ld [hl], e
    adc h
    jr @-$17

    inc b
    jr jr_028_4c76

    rrca
    jp $8e33


    ld l, [hl]
    sbc e
    ld e, e
    dec a
    cp l
    scf
    or a
    ld a, e
    ei
    dec a
    cp l
    rrca
    ldh a, [rSCX]
    ld c, h
    pop af
    or $f9
    ld a, [$dddc]
    or h
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76
    or $2d
    xor l
    dec sp
    cp e
    sbc a
    ld e, a
    adc a
    ld l, a

jr_028_4cb1:
    jp nz, $f032

    rrca
    cp h
    cp l
    sbc $df
    db $ec
    db $ed
    cp h
    cp l
    reti


    jp c, Jump_028_7671

    jp Jump_000_0fcc


    ldh a, [rNR12]
    and b
    rst $38
    ld c, l
    ld [de], a
    ld e, a
    ld c, a
    ld c, l
    ld [de], a
    cp a
    ld c, a
    ld c, l
    ld [de], a
    rra
    ld e, a
    ld c, l
    ld [de], a
    ld a, a
    ld e, a
    ld c, l
    ld [de], a
    rst $18
    ld e, a
    ld c, l
    ld [de], a
    ccf
    ld l, a
    ld c, l
    ld [de], a
    sbc a
    ld l, a
    ld c, l
    ld [de], a
    rst $38
    ld l, a
    ld c, l
    ld [de], a
    ld e, a
    ld a, a
    ld c, l
    ld [de], a
    cp a
    ld a, a
    dec l
    nop
    ld [$3f09], sp
    rst $38
    ld b, a
    ret c

    jr jr_028_4d20

    and b
    reti


    inc hl
    ld b, h
    call z, $70b2
    ld [$3c43], sp
    db $fc
    rst $38
    ld [c], a
    ld a, [de]
    add hl, de
    ld h, l
    call nz, Call_000_0622
    adc b
    ld a, [de]
    inc h
    ld h, d
    sub h
    add d
    ld e, h
    ccf
    rst $38
    ld b, a
    ld e, b
    sbc b
    and [hl]
    add hl, bc
    ld b, $00
    ld c, h
    ld [hl-], a
    add hl, bc

jr_028_4d20:
    inc c
    rrca
    inc d
    dec de
    add hl, de
    ld h, l
    push bc
    inc hl
    rlca
    adc c
    dec de
    dec h
    ld h, e
    sub l
    add e
    ld e, l
    sbc a
    and b
    and b
    db $dd
    xor c
    jp nc, $c4b2

    and l
    jp z, $a09f

    ld b, b
    ld d, e
    ld a, a
    rst $38
    ld hl, sp+$04
    sub h
    dec hl
    ld [hl+], a
    ld c, l
    jp nz, $8215

    dec l
    db $fc
    inc bc
    ld bc, $fffd
    rst $38
    add hl, bc
    ld h, b
    nop
    add hl, hl
    ld d, d
    ld [hl-], a
    ld b, h
    add hl, bc
    ld l, b
    nop
    ret nz

    rst $08
    rst $38
    rst $38
    ld sp, hl
    dec b
    sub l
    dec hl
    dec h
    ld c, e
    push bc
    inc de
    add l
    dec hl
    ld sp, hl
    dec b
    inc bc
    ei
    add hl, bc
    ld a, [hl]
    rrca
    dec bc
    ld [bc], a
    ld_long a, $fffe
    add hl, bc
    nop
    nop
    add hl, bc
    inc h
    ld [bc], a
    call z, $f0b2
    adc b
    add hl, bc
    ld c, $04
    add hl, bc
    ld d, [hl]
    ld b, $ff
    rst $38
    rst $00
    add hl, bc
    jp Jump_000_0903


    ld a, [hl+]
    ld [bc], a
    rst $38
    rst $38
    db $e3
    add hl, bc
    ld d, e
    add hl, bc
    adc $b1
    ld a, c
    ld b, $e6
    sbc c
    add hl, sp
    ld b, [hl]
    cp h
    jp nz, $e198

    add b
    cp a
    call nc, $06dd
    ld a, b
    sub d
    ld l, h
    ld b, d
    xor h
    inc c
    sub d
    inc [hl]
    ld c, d
    ret c

    ld h, $01
    db $fd
    ld e, e
    ld e, e
    ld c, [hl]
    ld sp, $0679
    ld h, [hl]
    add hl, de
    add hl, sp
    ld b, [hl]
    inc a
    ld b, d
    add hl, bc
    ld a, [bc]
    db $10
    jp nz, $09ca

    db $10
    jr jr_028_4dc6

jr_028_4dc6:
    db $fc
    pop de
    pop de
    add hl, bc
    jr nz, @+$1c

    ret z

    call Call_028_7907
    sub e
    ld l, l
    ld b, e
    xor l
    dec c
    sub e
    dec [hl]
    ld c, e
    reti


    daa
    ld bc, $57fd
    ld d, a
    ld b, b
    ret nz

    ld b, h
    reti


    ld e, b
    db $e3
    ld [hl], b
    adc $69
    call nc, $e952
    ld b, h
    jp nc, $b939

    ret nz

    ret nz

    add h
    xor b
    ret z

    sub e
    pop de
    and h
    jp nz, $c0a9

    add [hl]
    add e
    cp h
    call $01cd
    ld bc, $fa00
    and d
    ld d, h
    jp nz, $8228

    ld d, l
    ld b, $a9
    db $fc
    ld [bc], a
    rra
    rra
    add hl, bc
    ld [hl], b
    inc e
    inc bc
    inc bc
    nop
    cp $09
    add h
    ld [de], a
    inc b
    xor c
    ld hl, sp+$06
    rra
    rra
    add d
    add e
    adc d
    or e
    or d
    rst $00
    ld [c], a
    sbc a
    jp nc, $a6ab

    db $d3
    adc d
    and a
    db $fc
    db $fd
    add hl, bc
    nop
    ld a, [de]
    ret nz

    add hl, bc
    ld c, a
    dec de
    cpl
    cpl
    add hl, bc
    jr nz, jr_028_4e4a

    add hl, bc
    call nz, $071f
    ld e, e
    ld e, e
    add hl, bc
    ld h, b
    inc c
    add hl, bc
    or b
    inc c
    add hl, bc
    ld h, b
    inc e
    add hl, bc

jr_028_4e4a:
    or b
    inc e
    ret nz

    ret nz

    add a
    sbc b
    add hl, bc
    call nz, $7004
    ld [$bcc3], sp
    rlca
    rlca
    pop hl
    add hl, de
    jr jr_028_4ec1

    add hl, bc
    ld d, $06
    add hl, bc
    ldh [rNR32], a
    add hl, bc
    db $10
    dec d
    ld c, b
    ret c

    inc h
    ld bc, $57f9
    ld d, a
    ldh [$e0], a
    add hl, bc
    ld [c], a
    nop
    jr nz, jr_028_4ecd

    add hl, bc
    jr z, jr_028_4e7b

    rlca
    rlca
    add hl, bc
    ld a, [c]

jr_028_4e7b:
    nop
    add hl, bc
    ld d, [hl]
    ld a, [hl+]
    add hl, bc
    inc h
    ld [de], a
    jr jr_028_4ee5

    add hl, bc
    ld l, h
    inc l
    nop
    ld hl, sp+$51
    ld d, c
    add hl, bc
    ld b, b
    jr nz, jr_028_4ea7

    ld h, $09
    add [hl]
    inc l
    add hl, bc
    ld d, [hl]

jr_028_4e95:
    ld b, $09
    and b

jr_028_4e98:
    inc l
    add hl, bc
    ldh a, [rNR32]
    ldh [$1f], a
    add c
    ld a, [hl]
    rlca
    ld hl, sp+$1c
    db $e3
    rst $20
    jr @+$0e

jr_028_4ea7:
    di
    ld h, b
    sbc a
    nop
    rst $38

jr_028_4eac:
    jr jr_028_4e95

    jp $9c3c


    ld h, e
    ldh a, [rIF]
    add b
    ld a, a
    rlca
    ld hl, sp+$38
    rst $00
    nop
    rst $38
    ld bc, $09fe
    ld a, [bc]
    ld [hl-], a

jr_028_4ec1:
    add hl, bc
    ld a, [de]
    jr nc, jr_028_4eac

    jr @-$66

    ld h, a
    add b
    ld a, a
    inc bc
    db $fc
    add hl, bc

jr_028_4ecd:
    ld b, $30
    jr c, jr_028_4e98

    ret nz

    ccf
    nop
    rst $38
    inc bc
    db $fc
    ldh [$1f], a
    nop
    rst $38
    add hl, bc
    ld b, d
    jr nc, jr_028_4f3f

    sbc a
    add hl, bc
    ld [hl-], a
    jr nc, jr_028_4eed

    ld b, d

jr_028_4ee5:
    jr nc, jr_028_4ef0

    ld a, [de]
    ld [hl-], a
    nop
    rst $38
    add [hl]
    ld a, c

jr_028_4eed:
    add hl, bc
    ld b, d
    ld [hl-], a

jr_028_4ef0:
    add hl, bc
    ld b, d
    jr nc, @+$03

    cp $1c
    db $e3
    add hl, bc
    ld b, b
    jr nc, jr_028_4f04

    ld c, h
    jr nc, jr_028_4f07

    ld a, [de]
    jr nc, jr_028_4f0a

    ld a, [hl-]
    jr nc, jr_028_4f04

jr_028_4f04:
    rst $38
    ld b, $f9

jr_028_4f07:
    nop
    rst $38
    pop hl

jr_028_4f0a:
    ld e, $0f
    ldh a, [$78]
    add a
    add hl, bc
    ld a, [hl-]
    jr nc, jr_028_4f21

    pop af
    add hl, bc
    add h
    jr nc, jr_028_4f21

    ld b, b
    ld [hl-], a
    ld b, e
    cp h
    ld e, $e1
    ld [hl], b
    adc a
    add hl, bc

jr_028_4f21:
    inc a
    jr nc, @+$0c

    push af
    add hl, bc
    ld h, $30
    ld a, $c1
    ld bc, $07fe
    ld hl, sp+$1e
    pop hl
    ld a, b
    add a
    ld e, $e1
    ldh a, [rIF]
    adc a
    ld [hl], b
    ld a, h
    add e
    add hl, bc
    ld d, $36
    inc bc
    di

jr_028_4f3f:
    ld c, $ee
    dec de
    db $db
    dec a
    cp l
    scf
    or a
    ld a, e
    ei
    dec a
    cp l
    nop
    rst $38
    ld b, b
    ld c, a
    ldh a, [$f7]
    ld hl, sp-$05
    call c, $b4dd
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76
    or $2d
    xor l
    dec sp
    cp e
    rra
    rst $18
    rrca
    rst $28
    ld [bc], a
    ld a, [c]
    nop
    rst $38
    cp h
    cp l
    sbc $df
    db $ec
    db $ed
    cp h
    cp l
    ret c

    db $db
    ld [hl], b
    ld [hl], a
    ret nz

    rst $08
    nop
    rst $38
    add hl, bc
    and b
    rst $38
    ld c, l
    add hl, bc
    ld e, a
    ld c, a
    ld c, l
    add hl, bc
    cp a
    ld c, a
    ld c, l
    add hl, bc
    rra
    ld e, a
    ld c, l
    add hl, bc
    ld a, a
    ld e, a
    ld c, l
    add hl, bc
    rst $18
    ld e, a
    ld c, l
    add hl, bc
    ccf
    ld l, a
    ld c, l
    add hl, bc
    sbc a
    ld l, a
    ld c, l
    add hl, bc
    rst $38
    ld l, a
    ld c, l
    add hl, bc
    ld e, a
    ld a, a
    ld c, l
    add hl, bc
    cp a
    ld a, a
    dec l
    nop
    ld [$7f02], sp
    ld a, a
    adc b
    rst $20
    adc b
    rst $20
    ret nc

    ret nc

    ld hl, sp-$7a
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    ret nz

    ret nz

    rst $38
    rst $38
    ld [$08e7], sp
    rst $20
    jr @+$1a

    cp $01
    add b
    ld a, a
    add b
    ld a, a
    nop
    nop
    ld [bc], a
    db $10
    ld [bc], a
    nop
    nop
    ld a, b
    ld b, $40

jr_028_4fd2:
    ld a, $40
    ld a, $38
    jr c, @+$01

    rst $38
    jr jr_028_4fd2

    ld [$01e7], sp
    ld bc, $1802
    ld [bc], a
    db $10
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    add b
    add b
    ld [bc], a
    jr z, jr_028_4fec

jr_028_4fec:
    ld b, c
    ccf
    ld bc, $fe01
    cp $09
    rst $20
    add hl, bc
    rst $20
    inc bc
    inc bc
    rst $38
    ld bc, $7f81
    add c
    ld a, a
    add e
    add e
    cp $81

Jump_028_5002:
    ret nz

    cp a
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    or b
    or b
    sub b
    sub b
    sub b
    ret c

    ld a, a
    nop
    ld b, b
    ccf
    ld [bc], a
    ld h, h
    ld [bc], a
    db $10
    db $10
    db $10
    jr jr_028_502c

    jr @+$04

    ld [hl], b
    ld c, $00
    ld a, a
    ld [bc], a
    ld [hl], h
    rrca
    add hl, bc
    ld a, l
    inc bc
    ld b, c
    ccf
    add c
    add c

jr_028_502c:
    ld [bc], a
    ld h, [hl]
    nop
    ld de, $1111
    add hl, de
    ld de, $0219
    nop
    ld [bc], a
    ret nz

    ret nz

    ld [bc], a
    ld [$c302], sp
    jp Jump_028_5002


    ld [bc], a
    ld bc, $0201
    ld e, b
    ld [bc], a
    add c
    add c
    rst $08
    and b
    ld [bc], a
    ld [bc], a
    nop
    jp $f9c3


    add a
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    rst $08
    ld hl, $5202
    nop
    add c
    add c
    ld [bc], a
    ld e, b
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ldh [rSC], a
    pop bc
    pop bc
    ld [bc], a
    ld [$8002], sp
    add b
    rst $08
    jr nz, jr_028_5070

    ld [de], a
    nop

jr_028_5070:
    sub b
    sub b
    ld [bc], a
    jr jr_028_5079

    rst $18
    jr nc, jr_028_507a

    ld [de], a

jr_028_5079:
    nop

jr_028_507a:
    inc bc
    inc bc
    ld a, c
    rlca
    ld [bc], a
    ld a, [hl+]
    nop
    nop
    nop
    ld [bc], a
    db $10
    ld [de], a
    nop
    nop
    ld [bc], a
    jr jr_028_508f

    ld [bc], a
    db $10
    ld [de], a
    db $10

jr_028_508f:
    db $10
    ld [bc], a
    ld c, b
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ldh a, [rSC]
    ld de, $0211
    ld e, b
    ld [bc], a
    ld bc, $b001
    ld hl, sp-$01
    rst $38
    add b
    cp b
    add b
    ldh [$80], a
    ret nz

    add b
    ret nz

    add c
    pop bc
    ld a, a
    ld a, a
    ld sp, $ff39
    rst $38
    add c
    cp a
    add c
    pop hl
    add c
    pop bc
    add c
    pop bc
    add e
    jp $ffff


    jr nc, jr_028_50f9

    rst $38
    rst $38
    add b
    cp [hl]
    ld [bc], a
    ld h, [hl]
    ld d, $02
    add b
    ld a, [de]
    ld [bc], a
    ld a, [hl]
    inc e
    rst $38
    rst $38
    inc de
    dec de
    ld [bc], a
    ld [hl], d

jr_028_50d4:
    jr jr_028_50d4

    cp $02
    ldh [rSC], a
    ld [bc], a
    add $04
    add c
    add c
    ld [bc], a
    ldh a, [rP1]
    add hl, de
    rst $30
    ld sp, $0231
    ld e, b
    inc d
    ld [bc], a

jr_028_50ea:
    ret nz

    ld a, [de]
    add b
    add b
    ld [bc], a
    ldh a, [rSC]
    add hl, sp
    add hl, sp
    ld [bc], a
    ld e, b
    inc d
    cp $81
    add b

jr_028_50f9:
    rst $38
    ld [bc], a
    ld h, h
    ld [bc], a
    ld [bc], a
    ld l, h
    nop
    sub b
    ret c

    ccf
    ld b, c
    ld bc, $027f
    or h
    ld [$6002], sp
    ld de, $8502
    rla
    inc sp
    dec sp
    ld [bc], a
    or d

jr_028_5113:
    rra
    add hl, bc
    ret nz

    ret nz

    ld [bc], a
    db $10
    db $10
    jr jr_028_5113

    jr nc, jr_028_514e

    ld [bc], a
    jr c, jr_028_5136

    ld [bc], a
    pop hl
    inc bc
    ld [bc], a
    ld [$801a], sp
    add b
    ld [bc], a
    jr c, jr_028_5146

    ld [bc], a
    add $00
    ld [bc], a
    ld a, [hl+]
    ld d, $18
    rst $30
    db $10
    db $10

jr_028_5136:
    ld [bc], a
    jr c, jr_028_5153

    ld [$0208], sp
    ld [hl], b
    nop
    ld b, b
    ccf
    ld [bc], a
    ld l, $14
    jr c, jr_028_517d

    cp [hl]

jr_028_5146:
    ld bc, $9f20
    jr nz, jr_028_50ea

    ld [bc], a
    ld l, $14

jr_028_514e:
    ld [bc], a
    ld h, $12
    ret nz

    cp [hl]

jr_028_5153:
    ret c

    ret c

    rst $18
    ld sp, $5202
    nop
    add e
    add e
    ld [bc], a
    ld hl, sp+$05
    ld [bc], a
    ld sp, $0213
    ld c, b
    ld a, [de]
    jp Jump_000_02c3


    ld e, b
    inc d
    di
    inc c
    jp Jump_000_053c


    ld a, [$837c]
    ld a, l
    add d
    ld a, [hl]
    add c
    cp b
    ld b, a
    add e
    ld a, h
    rst $28
    db $10
    rst $28

jr_028_517d:
    db $10
    adc h
    ld [hl], e
    db $10
    rst $28
    rst $30
    ld [$04fb], sp
    ei
    inc b
    ld h, c
    sbc [hl]
    cp a
    ld b, b
    rst $18
    jr nz, @-$5f

    ld h, b
    inc c
    di
    ld h, b
    sbc a
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    dec b
    ld a, [$817e]
    cp [hl]
    ld b, c
    ld a, $c1
    cp b
    ld b, a
    jp $df3c


    jr nz, @-$0f

    db $10
    ld [bc], a
    nop
    inc a
    adc a
    ld [hl], b
    ld l, a
    sub b
    ld [bc], a
    inc d
    jr c, @-$43

    ld b, h
    ret c

    daa

jr_028_51b8:
    ld [bc], a
    inc h
    inc a
    and [hl]
    ld e, c
    ld d, $e9
    ld [bc], a
    jr c, jr_028_51f6

    sbc l
    ld h, d
    cp h
    ld b, e
    dec c
    ld a, [c]
    ld [hl], c
    adc [hl]
    db $76
    adc c
    ld c, $f1
    xor $11
    db $ed
    ld [de], a
    db $e3
    inc e
    inc l
    db $d3
    adc l
    ld [hl], d
    db $e3
    inc e
    rst $00
    jr c, jr_028_51b8

    inc h
    add hl, sp
    add $d6
    add hl, hl
    inc de
    db $ec
    ld d, a
    xor b
    ld e, b
    and a
    adc e
    ld [hl], h
    ld h, a
    sbc b
    ld l, a
    sub b
    or a
    ld c, b
    adc b
    ld [hl], a
    adc $31
    or h
    ld c, e

jr_028_51f6:
    dec sp
    call nz, $48b7
    ret nz

    ccf
    db $db
    inc h
    dec de
    db $e4
    push hl
    ld a, [de]
    ldh a, [rIF]
    jp $8e33


    ld l, [hl]
    sbc e
    ld e, e
    dec a
    cp l
    scf
    or a
    ld a, e
    ei
    dec a
    cp l
    rrca
    ldh a, [rSCX]
    ld c, h
    pop af
    or $f9
    ld a, [$dddc]
    or h
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76
    or $2d
    xor l
    dec sp
    cp e
    sbc a
    ld e, a
    adc a
    ld l, a
    jp nz, $f032

    rrca
    cp h
    cp l
    sbc $df
    db $ec
    db $ed
    cp h
    cp l
    reti


    jp c, Jump_028_7671

    jp Jump_000_0fcc


    ldh a, [rSC]
    and b
    rst $38
    ld c, l
    ld [bc], a
    ld e, a
    ld c, a
    ld c, l
    ld [bc], a
    cp a
    ld c, a
    ld c, l
    ld [bc], a
    rra
    ld e, a
    ld c, l
    ld [bc], a
    ld a, a
    ld e, a
    ld c, l
    ld [bc], a
    rst $18
    ld e, a
    ld c, l
    ld [bc], a
    ccf
    ld l, a
    ld c, l
    ld [bc], a
    sbc a
    ld l, a
    ld c, l
    ld [bc], a
    rst $38
    ld l, a
    ld c, l
    ld [bc], a
    ld e, a
    ld a, a
    ld c, l
    ld [bc], a
    cp a
    ld a, a
    dec l
    nop
    ld [$7f02], sp
    ld a, a
    adc b
    rst $20
    adc b
    rst $20
    ret nc

    ret nc

    ld hl, sp-$7a
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    ret nz

    ret nz

    rst $38
    rst $38
    ld [$08e7], sp
    rst $20
    jr @+$1a

    cp $01
    add b
    ld a, a
    add b
    ld a, a
    nop
    nop
    ld [bc], a
    db $10
    ld [bc], a
    nop
    nop
    ld a, b
    ld b, $40

jr_028_5299:
    ld a, $40
    ld a, $38
    jr c, @+$01

    rst $38
    jr jr_028_5299

    ld [$01e7], sp
    ld bc, $1802
    ld [bc], a
    db $10
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    add b
    add b
    ld [bc], a
    jr z, jr_028_52b3

jr_028_52b3:
    ld b, c
    ccf
    ld bc, $fe01
    cp $09
    rst $20
    add hl, bc
    rst $20
    inc bc
    inc bc
    rst $38
    ld bc, $7f81
    add c
    ld a, a
    add e
    add e
    cp $81
    ret nz

    cp a
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    or b
    or b
    sub b
    sub b
    sub b
    ret c

    ld a, a
    nop
    ld b, b
    ccf
    ld [bc], a
    ld h, h
    ld [bc], a
    db $10
    db $10
    db $10
    jr jr_028_52f3

    jr @+$04

    ld [hl], b
    ld c, $00
    ld a, a
    ld [bc], a
    ld [hl], h
    rrca
    add hl, bc
    ld a, l
    inc bc
    ld b, c
    ccf
    add c
    add c

jr_028_52f3:
    ld [bc], a
    ld h, [hl]
    nop
    ld de, $1111
    add hl, de
    ld de, $0219
    nop
    ld [bc], a
    ret nz

    ret nz

    ld [bc], a
    ld [$c302], sp
    jp Jump_028_5002


    ld [bc], a
    ld bc, $0201
    ld e, b
    ld [bc], a
    add c
    add c
    rst $08
    and b
    ld [bc], a
    ld [bc], a
    nop
    jp $f9c3


    add a
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    rst $08
    ld hl, $5202
    nop
    add c
    add c
    ld [bc], a
    ld e, b
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ldh [rSC], a
    pop bc
    pop bc
    ld [bc], a
    ld [$8002], sp
    add b
    rst $08
    jr nz, jr_028_5337

    ld [de], a
    nop

jr_028_5337:
    sub b
    sub b
    ld [bc], a
    jr jr_028_5340

    rst $18
    jr nc, jr_028_5341

    ld [de], a

jr_028_5340:
    nop

jr_028_5341:
    inc bc
    inc bc
    ld a, c
    rlca
    ld [bc], a
    ld a, [hl+]
    nop
    nop
    nop
    ld [bc], a
    db $10
    ld [de], a
    nop
    nop
    ld [bc], a
    jr jr_028_5356

    ld [bc], a
    db $10
    ld [de], a
    db $10

jr_028_5356:
    db $10
    ld [bc], a
    ld c, b
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ldh a, [rSC]
    ld de, $0211
    ld e, b
    ld [bc], a
    ld bc, $b001
    ld hl, sp-$01
    rst $38
    add b
    cp b
    add b
    ldh [$80], a
    ret nz

    add b
    ret nz

    add c
    pop bc
    ld a, a
    ld a, a
    ld sp, $ff39
    rst $38
    add c
    cp a
    add c
    pop hl
    add c
    pop bc
    add c
    pop bc
    add e
    jp $ffff


    jr nc, jr_028_53c0

    rst $38
    rst $38
    add b
    cp [hl]
    ld [bc], a
    ld h, [hl]
    ld d, $02
    add b
    ld a, [de]
    ld [bc], a
    ld a, [hl]
    inc e
    rst $38
    rst $38
    inc de
    dec de
    ld [bc], a
    ld [hl], d

jr_028_539b:
    jr jr_028_539b

    cp $02
    ldh [rSC], a
    ld [bc], a
    add $04
    add c
    add c
    ld [bc], a
    ldh a, [rP1]
    add hl, de
    rst $30
    ld sp, $0231
    ld e, b
    inc d
    ld [bc], a

jr_028_53b1:
    ret nz

    ld a, [de]
    add b
    add b
    ld [bc], a
    ldh a, [rSC]
    add hl, sp
    add hl, sp
    ld [bc], a
    ld e, b
    inc d
    cp $81
    add b

jr_028_53c0:
    rst $38
    ld [bc], a
    ld h, h
    ld [bc], a
    ld [bc], a
    ld l, h
    nop
    sub b
    ret c

    ccf
    ld b, c
    ld bc, $027f
    or h
    ld [$6002], sp
    ld de, $8502
    rla
    inc sp
    dec sp
    ld [bc], a
    or d

jr_028_53da:
    rra
    add hl, bc
    ret nz

    ret nz

    ld [bc], a
    db $10
    db $10
    jr jr_028_53da

    jr nc, jr_028_5415

    ld [bc], a
    jr c, jr_028_53fd

    ld [bc], a
    pop hl
    inc bc
    ld [bc], a
    ld [$801a], sp
    add b
    ld [bc], a
    jr c, jr_028_540d

    ld [bc], a
    add $00
    ld [bc], a
    ld a, [hl+]
    ld d, $18
    rst $30
    db $10
    db $10

jr_028_53fd:
    ld [bc], a
    jr c, jr_028_541a

    ld [$0208], sp
    ld [hl], b
    nop
    ld b, b
    ccf
    ld [bc], a
    ld l, $14
    jr c, jr_028_5444

    cp [hl]

jr_028_540d:
    ld bc, $9f20
    jr nz, jr_028_53b1

    ld [bc], a
    ld l, $14

jr_028_5415:
    ld [bc], a
    ld h, $12
    ret nz

    cp [hl]

jr_028_541a:
    ret c

    ret c

    rst $18
    ld sp, $5202
    nop
    add e
    add e
    ld [bc], a
    ld hl, sp+$05
    ld [bc], a
    ld sp, $0213
    ld c, b
    ld a, [de]
    jp Jump_000_02c3


    ld e, b
    inc d
    di
    inc c
    jp Jump_000_053c


    ld a, [$837c]
    ld a, l
    add d
    ld a, [hl]
    add c
    cp b
    ld b, a
    add e
    ld a, h
    rst $28
    db $10
    rst $28

jr_028_5444:
    db $10
    adc h
    ld [hl], e
    db $10
    rst $28
    rst $30
    ld [$04fb], sp
    ei
    inc b
    ld h, c
    sbc [hl]
    cp a
    ld b, b
    rst $18
    jr nz, @-$5f

    ld h, b
    inc c
    di
    ld h, b
    sbc a
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    dec b
    ld a, [$817e]
    cp [hl]
    ld b, c
    ld a, $c1
    cp b
    ld b, a
    jp $df3c


    jr nz, @-$0f

    db $10
    ld [bc], a
    nop
    inc a
    adc a
    ld [hl], b
    ld l, a
    sub b
    ld [bc], a
    inc d
    jr c, @-$43

    ld b, h
    ret c

    daa
    ld [bc], a
    inc h
    inc a
    and [hl]
    ld e, c
    ld d, $e9
    ld [bc], a
    jr c, jr_028_54bd

    inc bc
    nop
    rrca
    nop
    inc a
    nop
    pop af
    nop
    add $00
    jr jr_028_5495

jr_028_5495:
    ld h, b
    nop
    add b
    ld [bc], a
    add a
    dec [hl]
    ld [bc], a
    add b
    inc [hl]
    ld [bc], a
    add b
    ccf
    dec c
    ldh a, [rIF]
    jp $8e33


    ld l, [hl]
    sbc e
    ld e, e
    dec a
    cp l
    scf
    or a
    ld a, e
    ei
    dec a
    cp l
    rrca
    ldh a, [rSCX]
    ld c, h
    pop af
    or $f9
    ld a, [$dddc]
    or h

jr_028_54bd:
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76
    or $2d
    xor l
    dec sp
    cp e
    sbc a
    ld e, a
    adc a
    ld l, a
    jp nz, $f032

    rrca
    cp h
    cp l
    sbc $df
    db $ec
    db $ed
    cp h
    cp l
    reti


    jp c, Jump_028_7671

    jp Jump_000_0fcc


    ldh a, [rSC]
    and b
    rst $38
    ld c, l
    ld [bc], a
    ld e, a
    ld c, a
    ld c, l
    ld [bc], a
    cp a
    ld c, a
    ld c, l
    ld [bc], a
    rra
    ld e, a
    ld c, l
    ld [bc], a
    ld a, a
    ld e, a
    ld c, l
    ld [bc], a
    rst $18
    ld e, a
    ld c, l
    ld [bc], a
    ccf
    ld l, a
    ld c, l
    ld [bc], a
    sbc a
    ld l, a
    ld c, l
    ld [bc], a
    rst $38
    ld l, a
    ld c, l
    ld [bc], a
    ld e, a
    ld a, a
    ld c, l
    ld [bc], a
    cp a
    ld a, a
    dec l
    nop
    ld [$7f06], sp
    rst $38
    cp a
    ret nz

    call $dead
    or c
    ret nc

    cp a
    call z, $d0a3
    cp a
    jp $ffac


    rst $38
    rst $38
    nop
    ld b, b
    ld d, a
    ld a, [hl]
    add c
    nop
    rst $38
    db $fc
    inc bc
    nop
    rst $38
    db $e3
    inc e
    ld b, $10
    nop
    nop
    rla
    ld b, $16
    dec bc
    or h
    ld b, $16
    ld a, [bc]
    ld [bc], a
    ld [$1606], a
    ld b, $fe
    rst $38
    ld sp, hl
    dec b
    or l
    or e
    ld a, l
    adc e
    dec c
    ei
    push af
    inc bc
    dec b
    di
    push hl
    inc de
    db $ed
    adc l
    rst $38
    add b
    add b
    cp a
    rst $38
    rst $38
    add b
    cp $80
    ret nz

    add b
    ret nz

    rst $38
    rst $38
    ld b, b
    ld d, l
    rst $38
    nop
    nop
    rst $38
    ld b, $66
    ld b, $00
    ld b, e
    ld b, $72
    dec bc
    call c, Call_028_7206
    dec bc
    db $d3
    ld b, $72
    ld a, [bc]
    inc b
    jp z, Jump_000_07f9

    ld bc, $fefd
    cp $81
    rst $38
    add c
    pop bc
    add c
    pop bc
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    add b
    ret z

    xor e
    rst $10
    cp b
    ld b, $08
    inc b
    cp $ff
    ld sp, hl
    rlca
    dec b
    and e
    db $ed
    dec de
    dec b
    di
    db $fd
    dec bc
    dec b
    di
    push hl
    dec de
    ret nz

    xor a
    jp $c0ac


    cp a
    adc $b1
    ret nz

    cp a
    call z, $c0a3
    cp a
    jp Jump_000_06ac


    ld e, h
    nop
    dec b
    di
    ld [hl], l
    adc e
    dec b
    di
    push af
    ld b, $db
    ld [bc], a
    ld b, $e9
    ld bc, $b8c7
    ret nz

    xor a
    ld b, $ea
    nop
    adc $a1
    ld b, $18
    ld [bc], a
    rst $30
    ld [$1806], sp
    ld [bc], a
    rst $20
    jr jr_028_55dd

    db $10
    rra
    dec e
    dec b
    di
    push af

jr_028_55dd:
    inc bc
    dec b
    ld b, $59
    ld bc, $fa06
    nop
    rst $20
    add hl, de
    sub b
    rst $18
    sub b
    ret c

    sub b
    ret c

    rst $38
    rst $38
    add c
    ld sp, hl
    ld b, $ba
    ld [bc], a
    db $10
    rst $18
    db $10
    jr jr_028_5609

    jr @+$01

    rst $38
    nop
    cp $00
    add b
    nop
    add b
    ld b, $6e
    ld d, $06
    ld l, b
    rra
    dec d

jr_028_5609:
    ld de, $11df
    add hl, de
    ld de, $ff19
    rst $38
    ld bc, $01ff
    add c
    ld bc, $ff81
    rst $38
    ret nz

    cp a
    call z, $c0b3
    xor a
    ld b, $06
    ld de, $c306
    db $10
    xor b
    ld b, $50
    dec d
    ei
    ld b, $fa
    dec b
    or e
    ret nz

    cp a
    rst $00
    xor b
    ld b, $e8
    ld bc, $cd06
    db $10
    ld b, $d9
    db $10
    ld b, $d5
    ld [de], a
    inc bc
    dec b
    ei
    push hl
    inc de
    ret nz

    and h
    rst $38
    add b
    add b
    rst $38
    ld a, a
    ld a, a
    ld b, $68
    inc b
    dec b
    and e
    db $fd
    inc bc
    ld b, $b4
    ld [$6006], sp
    inc e
    ld b, $b0
    dec e
    ld b, $e1
    ld [bc], a
    and c
    ld b, $e8
    ld [de], a
    jp Jump_000_06ac


    inc e
    ld [de], a
    ld b, $16
    ld b, $06
    ret z

    inc de
    cp b
    ld b, $00
    inc de
    xor b
    ld b, $10
    ld a, [de]
    rst $28
    db $10
    ld b, $50
    inc l
    ld b, $80
    ld l, $06
    ld [hl], d
    inc l
    ld b, $72
    cpl
    dec bc
    ld b, $f0
    ld bc, $75fb
    add e
    ld b, $d8
    inc d
    ld b, $70
    inc l
    ld b, $d8
    ld [de], a
    ld b, $f2
    ld hl, $5b06
    ld bc, $7b84
    ld a, e
    add h
    add a
    ld a, b
    ld a, e
    add h
    inc b
    ei
    db $db

jr_028_56a4:
    inc h
    inc a
    jp Jump_000_24db


    ld b, $00
    ccf
    dec c
    inc b
    ei
    ld b, $02
    ld a, [hl-]
    ld h, a
    sbc b
    cp d
    ld b, l
    rst $18
    jr nz, jr_028_56a4

    inc d
    ld l, a
    sub b
    rst $38
    nop
    cp a
    ld b, b
    ei
    inc b
    cp l
    ld b, d
    cp b
    ld b, a
    rst $28
    db $10
    db $fc
    inc bc
    push af
    ld a, [bc]
    xor e
    ld d, h
    db $f4
    dec bc
    adc $31
    xor a
    ld d, b
    rst $30
    ld [$807f], sp
    ei
    inc b
    and l
    ld e, d
    jp nc, $bd2d

    ld b, d
    ld [hl], e

jr_028_56e1:
    adc h
    reti


    ld h, $e7
    jr jr_028_56e1

    dec b
    ld a, a
    add b
    dec a
    jp nz, Jump_000_31ce

    db $fd
    ld [bc], a
    sbc a
    ld h, b
    ld b, $40
    inc a
    ld b, $00
    ccf
    dec c
    ld b, $70
    inc a
    ldh a, [rIF]
    jp $8e33


    ld l, [hl]
    sbc e
    ld e, e
    dec a
    cp l
    scf
    or a
    ld a, e
    ei
    dec a
    cp l
    rrca
    ldh a, [rSCX]
    ld c, h
    pop af
    or $f9
    ld a, [$dddc]
    or h
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76
    or $2d
    xor l
    dec sp
    cp e
    sbc a
    ld e, a
    adc a
    ld l, a
    jp nz, $f032

    rrca
    cp h
    cp l
    sbc $df
    db $ec
    db $ed
    cp h
    cp l
    reti


    jp c, Jump_028_7671

    jp Jump_000_0fcc


    ldh a, [rTMA]
    and b
    rst $38
    ld c, l
    ld b, $5f
    ld c, a
    ld c, l
    ld b, $bf
    ld c, a
    ld c, l
    ld b, $1f
    ld e, a
    ld c, l
    ld b, $7f
    ld e, a
    ld c, l
    ld b, $df
    ld e, a
    ld c, l
    ld b, $3f
    ld l, a
    ld c, l
    ld b, $9f
    ld l, a
    ld c, l
    ld b, $ff
    ld l, a
    ld c, l
    ld b, $5f
    ld a, a
    ld c, l
    ld b, $bf
    ld a, a
    dec l
    nop
    ld [$f00c], sp
    ld [$27c0], sp
    adc a
    ld d, b
    rra
    and b
    ccf
    add b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    nop
    rrca
    db $10
    dec de
    db $fc
    push af
    ld b, $fa
    inc bc
    db $fd
    ld bc, $180c
    ld [bc], a
    inc c
    nop
    rrca
    dec l
    inc sp
    and e
    ld sp, $34a5
    and b
    ld [hl], h
    ld [c], a
    ld [hl], h
    ld h, d

jr_028_5796:
    xor h
    ld a, [$da9c]
    xor l
    adc l
    inc [hl]
    dec [hl]
    inc d
    sub l
    sub h
    ld d, l
    sub [hl]
    ld d, a
    sub [hl]
    ld d, [hl]
    sub l
    ld d, l
    sbc c
    ld e, c
    or e
    scf
    inc c
    ld h, b
    rrca

jr_028_57af:
    dec l
    inc c
    nop
    rrca
    dec c
    jr nz, jr_028_5796

    jr nc, jr_028_57af

    rrca
    ret nc

    rra
    and b
    cp a
    inc c
    add hl, bc
    inc bc
    inc b
    rlca
    inc e
    rst $38
    db $f4
    rlca
    inc c
    ld d, $06
    rra
    jr nz, jr_028_57db

    ld d, b
    jr nz, jr_028_5816

    ld sp, $5e09
    ld h, c
    ld l, $a1
    ld a, [hl-]
    cp c
    cpl
    xor a
    ei
    inc bc

jr_028_57db:
    push af
    dec b
    add hl, de
    reti


    pop hl
    pop hl
    ld [bc], a
    ld a, [c]
    inc b
    db $f4
    inc e
    db $dd
    db $f4
    push af
    inc c
    nop
    rra
    dec l
    sbc e
    and e
    adc a
    ret nc

    and c
    add $b1
    adc c
    ld e, a
    ld h, b
    daa
    xor b
    sbc c
    ld e, d
    rst $20
    rla
    jp $c5db


    dec [hl]
    add hl, de
    sbc c
    inc c
    ld d, $10
    add h
    ld [hl], l
    sbc c
    ld e, d
    rst $20
    add sp, $0c
    ld h, b
    rra
    dec l
    inc c
    nop
    rra
    dec l
    inc c
    ld h, b

jr_028_5816:
    rrca
    dec c
    inc c
    ld h, b
    rra
    dec c
    inc c
    ldh [rIF], a
    dec l
    inc c
    ld b, b
    cpl
    ld c, l
    inc c
    nop
    rra
    dec c
    add h
    ld a, e
    ld a, e
    add h
    add a
    ld a, b
    ld a, e
    add h
    inc b
    ei
    db $db

jr_028_5833:
    inc h
    inc a
    jp Jump_000_24db


    inc c
    nop
    ccf
    dec c
    inc b
    ei
    inc c
    ld [bc], a
    ld a, [hl-]
    ld h, a
    sbc b
    cp d
    ld b, l
    rst $18
    jr nz, jr_028_5833

    inc d
    ld l, a
    sub b
    rst $38
    nop
    cp a
    ld b, b
    ei
    inc b
    cp l
    ld b, d
    cp b
    ld b, a
    rst $28
    db $10
    db $fc
    inc bc
    push af
    ld a, [bc]
    xor e
    ld d, h
    db $f4
    dec bc
    adc $31
    xor a
    ld d, b
    rst $30
    ld [$807f], sp
    ei
    inc b
    and l
    ld e, d
    jp nc, $bd2d

    ld b, d
    ld [hl], e

jr_028_5870:
    adc h
    reti


    ld h, $e7
    jr jr_028_5870

    dec b
    ld a, a
    add b
    dec a
    jp nz, Jump_000_31ce

    db $fd
    ld [bc], a
    sbc a
    ld h, b
    inc c
    ld b, b
    inc a
    inc c
    nop
    ccf
    dec c
    inc c
    ld [hl], b
    inc a
    ldh a, [rIF]
    jp $8e33


    ld l, [hl]
    sbc e
    ld e, e
    dec a
    cp l
    scf
    or a
    ld a, e
    ei
    dec a
    cp l
    rrca
    ldh a, [rSCX]
    ld c, h
    pop af
    or $f9
    ld a, [$dddc]
    or h
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76
    or $2d
    xor l
    dec sp
    cp e
    sbc a
    ld e, a
    adc a
    ld l, a
    jp nz, $f032

    rrca
    cp h
    cp l
    sbc $df
    db $ec
    db $ed
    cp h
    cp l
    reti


    jp c, Jump_028_7671

    jp Jump_000_0fcc


    ldh a, [$0c]
    and b
    rst $38
    ld c, l
    inc c
    ld e, a
    ld c, a
    ld c, l
    inc c
    cp a
    ld c, a
    ld c, l
    inc c
    rra
    ld e, a
    ld c, l
    inc c
    ld a, a
    ld e, a
    ld c, l
    inc c
    rst $18
    ld e, a
    ld c, l
    inc c
    ccf
    ld l, a
    ld c, l
    inc c
    sbc a
    ld l, a
    ld c, l
    inc c
    rst $38
    ld l, a
    ld c, l
    inc c
    ld e, a
    ld a, a
    ld c, l
    inc c
    cp a
    ld a, a
    dec l
    nop
    ld [$f714], sp
    rrca
    ld l, b
    sbc e
    ret nc

    ccf
    ldh [$37], a

jr_028_5902:
    jr nz, jr_028_5902

    ret nz

    ld e, e
    ld b, b
    db $e4
    add a
    cp a
    db $db
    db $e4
    cpl
    or b
    rla
    ld hl, sp+$0e
    ld sp, hl
    dec bc
    call c, Call_000_3c07
    dec b
    ld d, $c3
    db $ca, $14, $00

    rlca
    ld a, a
    ld b, b
    or $14
    ld c, $09
    inc [hl]
    dec b
    and $c2
    rl h
    jr nz, jr_028_5934

    rst $30
    inc d
    ld c, $0b
    sub $c3
    ld [c], a
    add b
    rst $38

jr_028_5934:
    add b
    cp a
    ret nz

    db $db
    or b
    or a
    add b
    cp [hl]
    sub c
    sbc l
    ld c, [hl]
    ld c, [hl]
    ld h, h
    push hl
    inc bc
    rst $18
    ld bc, $01e5
    pop af
    ld [de], a
    ld [hl], d
    ld h, d
    ld h, [hl]
    ld [bc], a
    dec de
    ld h, h
    ld h, h
    inc a
    cp l
    add b
    or a
    add b
    sbc c
    ret nz

    jp nz, Jump_028_6614

    ld b, $01
    push af
    ld bc, $01cd
    ld sp, $7111
    ld h, d
    ld h, [hl]
    ld [bc], a
    ld a, [de]
    ld h, [hl]
    ld h, a
    inc a
    cp h
    add b
    cp a
    inc d
    ld h, d
    ld a, [bc]
    ld bc, $14dd
    ld [hl], d
    nop
    inc d
    sub [hl]
    dec b
    cp l
    rst $28
    rla
    ld a, b
    adc e
    ldh a, [$1f]
    ldh [$37], a
    ld h, b
    cp [hl]
    ret nz

    ld a, a
    ret nz

    ld [hl], a
    add a
    cp a
    ei
    call nz, $a03f
    rra
    ldh a, [$0e]
    ld sp, hl
    rrca
    ret c

    rlca
    inc a
    rlca
    db $fc
    jp $83e2


    cp e
    adc h
    sbc a
    sub b
    rst $10
    sub b
    db $d3
    and b
    xor a
    ld h, b
    ld a, a
    ld b, b
    sub $40
    ld a, c
    add d
    or e
    ld [hl+], a
    rst $20
    ld [de], a
    ccf
    ld a, [bc]
    sbc e
    dec bc
    ld [$d405], a
    dec b
    cp $05
    cp h
    adc b
    sbc e
    sub b
    rst $18
    and b
    rst $38
    and b
    or [hl]
    ret nz

    ld sp, hl
    ret nz

    rst $38
    add b
    sbc a
    add b
    cp l
    ld [hl+], a
    cp a
    ld [de], a
    rst $30
    ld a, [bc]
    db $db
    ld a, [bc]
    ei
    ld b, $e6
    rlca
    rst $38
    inc bc
    ei
    inc bc
    ld a, a
    inc d
    nop
    dec e
    xor a
    ld [de], a
    ld a, [c]
    ld a, [bc]
    sbc $0b
    ei
    rlca
    rst $38
    inc bc
    db $db
    inc bc
    db $e3
    ld bc, $88f1
    db $db
    sub b
    rst $18
    and b
    cp a
    inc d
    ld b, $16
    inc hl
    or [hl]
    inc de
    ld a, [c]
    ld a, [bc]
    cp e
    ld a, [bc]
    rlc [hl]
    rst $30
    inc b
    db $fd
    ld [bc], a
    ld l, e
    ld [bc], a
    sub e
    cp [hl]
    ld a, $cf
    cpl
    and $16
    db $f4
    rrca
    ld b, h
    cp a
    xor b
    ld e, l
    jp nz, $9c2b

    ld h, d
    ld a, b
    ld a, d
    ldh a, [$f5]
    ret


    sub $40
    ld a, a
    ld d, l
    ld l, d
    xor d
    push af
    sbc l
    or d
    ld h, a
    sbc b
    ld a, $3e
    rrca
    xor a
    ld h, $d6
    inc b
    rst $38
    ld d, h
    xor a
    xor b
    ld e, l
    ld [c], a
    dec bc
    cp [hl]
    ld b, b
    ld a, b
    ld a, c
    ldh a, [$f3]
    inc d
    ld [hl], h
    ld d, $ef
    db $10
    inc d
    add b
    inc e
    ld a, c
    ld a, d
    di
    db $f4
    rst $08
    ret nc

    ld e, a
    ld h, b
    ld d, [hl]
    ld l, c
    xor e
    db $f4
    sub a
    cp b
    ld l, e
    sub h
    inc d
    nop
    inc d
    ld b, b
    ld a, c
    ld b, b
    ld a, a
    inc d
    ld c, h
    ld de, $13b2
    ld a, [c]
    ld a, [bc]
    rst $18
    ld a, [bc]
    rst $38
    ld b, $ff
    inc b
    db $dd
    ld [bc], a
    db $e3
    ld [bc], a
    di
    add a
    adc a
    adc b
    res 2, b
    rst $38
    and b
    or a
    ld h, b
    ld a, [hl]
    ld b, b
    rst $38
    ld b, b
    ld [hl], a
    add b
    adc a
    jp $23d2


    xor d
    inc de
    ld a, [c]
    dec bc
    ld a, [$dc0d]
    dec b
    ld a, $05
    db $fc
    ld [bc], a
    ei
    inc d
    and b
    dec c
    ld [hl], l
    ld bc, $018f
    push af
    inc d
    or [hl]
    ld b, $14
    ld h, b
    inc e
    inc d
    or b
    inc e
    inc d
    ldh [$03], a
    sub $a0
    xor c
    ldh [rIE], a
    ret nz

    sub $40
    ld a, c
    add c
    or c
    ld hl, $11e5
    cp l
    dec bc
    sbc e
    dec bc
    db $eb
    rlca
    rst $10
    inc bc
    ei
    inc bc
    cp e
    add a
    or a
    adc b
    res 2, b
    sbc a
    and b
    or a
    ldh [rIE], a
    ret nz

    db $ed
    ld b, b
    ld [hl], e
    add b
    adc a
    pop bc
    push de
    ld hl, $11a7
    di
    add hl, bc
    ld l, c
    dec bc
    sbc e
    rlca
    rst $30
    inc bc
    db $eb
    inc bc
    ei
    inc d
    ldh [rTMA], a
    ldh [$fb], a
    ret nz

    add $c0
    jp hl


    add d
    adc d
    ld hl, $11e1
    ld sp, $9909
    inc d
    ld e, b
    jr nz, jr_028_5af2

    rst $38
    inc bc
    cp e
    add a
    sbc a
    inc d
    ld [c], a

jr_028_5af2:
    ld [de], a
    ldh [$fd], a
    ret nz

    cp $c0
    rst $30
    add b
    adc a
    jp $23d7


    xor a
    ld de, $09f5
    ld sp, hl
    dec b
    or l
    dec b
    ld a, l
    inc bc
    db $eb
    inc bc
    di
    add b
    cp a
    add b
    sbc l
    add a
    rst $00
    adc b
    xor e
    ret nc

    rst $18
    ldh [rIE], a
    ret nz

    add $c0
    reti


    inc bc
    or d
    inc bc
    add $c3
    sbc $14
    ld a, [c]
    db $10
    dec c
    call c, $f605
    dec b
    or h
    add a
    cp a
    adc b
    res 2, b
    db $fc
    and b
    xor [hl]
    ldh [$f7], a
    ret nz

    call $e3c0
    add b
    adc a
    jp Jump_000_23ca


    xor [hl]
    inc de
    db $76
    dec bc
    jp c, $2c0d

    dec b
    or $05
    call z, $fa03
    rst $28
    db $10
    ld a, l
    add d
    rst $38
    nop
    db $db
    inc h
    ld a, a
    add b
    rst $30
    ld [$21de], sp
    ei
    inc b
    ei
    inc b
    rst $18
    jr nz, @+$01

    nop
    db $76
    adc c
    rst $38
    nop
    inc d

jr_028_5b65:
    ld [de], a
    jr nc, jr_028_5b65

    ld [bc], a
    cp a
    ld b, b
    db $ed
    ld [de], a
    rst $38
    nop

jr_028_5b6f:
    or l
    ld c, d
    rst $38
    nop

jr_028_5b73:
    rst $28
    db $10
    ld a, [$bf05]
    ld b, b
    xor a
    ld d, b
    rst $38
    nop

jr_028_5b7d:
    ld a, e
    add h
    rst $28
    db $10
    cp $01
    cp a
    ld b, b
    db $fd
    ld [bc], a
    rst $28
    db $10
    call $b732
    ld c, b
    db $fc
    inc bc
    inc d
    ld b, $30
    rst $20
    jr jr_028_5b6f

    dec h
    ld a, a
    add b
    cp a
    ld b, b
    ld sp, hl
    ld b, $d6
    add hl, hl
    inc d
    ld c, b
    jr nc, jr_028_5b7d

    inc h
    rst $38
    nop
    call $f332
    inc c
    xor l
    ld d, d
    rst $38
    nop
    cp c
    ld b, [hl]
    or $09
    inc d
    ld [hl-], a
    jr nc, jr_028_5b73

    ld b, c
    or a
    ld c, b
    cp $01
    ld d, e
    xor h
    db $ed
    ld [de], a
    cp $01
    inc d
    ld b, d
    jr nc, jr_028_5c2f

    sub h
    inc d
    nop
    ccf
    dec l
    ldh a, [rIF]
    jp $8e33


    ld l, [hl]
    sbc e
    ld e, e
    dec a
    cp l
    scf
    or a
    ld a, e
    ei
    dec a
    cp l
    rrca
    ldh a, [rSCX]
    ld c, h
    pop af
    or $f9
    ld a, [$dddc]
    or h
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76
    or $2d
    xor l
    dec sp
    cp e
    sbc a
    ld e, a
    adc a
    ld l, a
    jp nz, $f032

    rrca
    cp h
    cp l
    sbc $df
    db $ec
    db $ed
    cp h
    cp l
    reti


    jp c, Jump_028_7671

    jp Jump_000_0fcc


    ldh a, [rNR14]
    and b
    rst $38
    ld c, l
    inc d
    ld e, a
    ld c, a
    ld c, l
    inc d
    cp a
    ld c, a
    ld c, l
    inc d
    rra
    ld e, a
    ld c, l
    inc d
    ld a, a
    ld e, a
    ld c, l
    inc d
    rst $18
    ld e, a
    ld c, l
    inc d
    ccf
    ld l, a
    ld c, l
    inc d
    sbc a
    ld l, a
    ld c, l
    inc d
    rst $38
    ld l, a
    ld c, l
    inc d
    ld e, a

jr_028_5c2f:
    ld a, a
    ld c, l
    inc d
    cp a
    ld a, a
    dec l
    nop
    ld [$7f06], sp
    rst $38
    cp a
    ret nz

    call $dead
    or c
    ret nc

    cp a
    call z, $d0a3
    cp a
    jp $ffac


    rst $38
    rst $38
    nop
    ld b, b
    ld d, a
    ld a, [hl]
    add c
    nop
    rst $38
    db $fc
    inc bc
    nop
    rst $38
    db $e3
    inc e
    ld b, $10
    nop
    nop
    rla
    ld b, $16
    dec bc
    or h
    ld b, $16
    ld a, [bc]
    ld [bc], a
    ld [$1606], a
    ld b, $fe
    rst $38
    ld sp, hl
    dec b
    or l
    or e
    ld a, l
    adc e
    dec c
    ei
    push af
    inc bc
    dec b
    di
    push hl
    inc de
    db $ed
    adc l
    rst $38
    add b
    add b
    cp a
    rst $38
    rst $38
    add b
    cp $80
    ret nz

    add b
    ret nz

    rst $38
    rst $38
    ld b, b
    ld d, l
    rst $38
    nop
    nop
    rst $38
    ld b, $66
    ld b, $00
    ld b, e
    ld b, $72
    dec bc
    call c, Call_028_7206
    dec bc
    db $d3
    ld b, $72
    ld a, [bc]
    inc b
    jp z, Jump_000_07f9

    ld bc, $fefd
    cp $81
    rst $38
    add c
    pop bc
    add c
    pop bc
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    add b
    ret z

    xor e
    rst $10
    cp b
    ld b, $08
    inc b
    cp $ff
    ld sp, hl
    rlca
    dec b
    and e
    db $ed
    dec de
    dec b
    di
    db $fd
    dec bc
    dec b
    di
    push hl
    dec de
    ret nz

    xor a
    jp $c0ac


    cp a
    adc $b1
    ret nz

    cp a
    call z, $c0a3
    cp a
    jp Jump_000_06ac


    ld e, h
    nop
    dec b
    di
    ld [hl], l
    adc e
    dec b
    di
    push af
    ld b, $db
    ld [bc], a
    ld b, $e9
    ld bc, $b8c7
    ret nz

    xor a
    ld b, $ea
    nop
    adc $a1
    ld b, $18
    ld [bc], a
    rst $30
    ld [$1806], sp
    ld [bc], a
    rst $20
    jr jr_028_5d04

    db $10
    rra
    dec e
    dec b
    di
    push af

jr_028_5d04:
    inc bc
    dec b
    ld b, $59
    ld bc, $fa06
    nop
    rst $20
    add hl, de
    sub b
    rst $18
    sub b
    ret c

    sub b
    ret c

    rst $38
    rst $38
    add c
    ld sp, hl
    ld b, $ba
    ld [bc], a
    db $10
    rst $18
    db $10
    jr jr_028_5d30

    jr @+$01

    rst $38
    nop
    cp $00
    add b
    nop
    add b
    ld b, $6e
    ld d, $06
    ld l, b
    rra
    dec d

jr_028_5d30:
    ld de, $11df
    add hl, de
    ld de, $ff19
    rst $38
    ld bc, $01ff
    add c
    ld bc, $ff81
    rst $38
    ret nz

    cp a
    call z, $c0b3
    xor a
    ld b, $06
    ld de, $c306
    db $10
    xor b
    ld b, $50
    dec d
    ei
    ld b, $fa
    dec b
    or e
    ret nz

    cp a
    rst $00
    xor b
    ld b, $e8
    ld bc, $cd06
    db $10
    ld b, $d9
    db $10
    ld b, $d5
    ld [de], a
    inc bc
    dec b
    ei
    push hl
    inc de
    ret nz

    and h
    rst $38
    add b
    add b
    rst $38
    ld a, a
    ld a, a
    ld b, $68
    inc b
    dec b
    and e
    db $fd
    inc bc
    ld b, $b4
    ld [$6006], sp
    inc e
    ld b, $b0
    dec e
    ld b, $e1
    ld [bc], a
    and c
    ld b, $e8
    ld [de], a
    jp Jump_000_06ac


    inc e
    ld [de], a
    ld b, $16
    ld b, $06
    ret z

    inc de
    cp b
    ld b, $00
    inc de
    xor b
    ld b, $10
    ld a, [de]
    rst $28
    db $10
    ld b, $50
    inc l
    ld b, $80
    ld l, $06
    ld [hl], d
    inc l
    ld b, $72
    cpl

jr_028_5daa:
    dec bc
    ld b, $f0
    ld bc, $75fb
    add e
    ld b, $d8
    inc d
    ld b, $70
    inc l
    ld b, $d8
    ld [de], a
    ld b, $f2
    ld hl, $5b06
    ld bc, $30cf
    or a
    ld c, b
    ld a, e
    add h
    ld a, b
    add a

jr_028_5dc8:
    or e
    ld c, h
    add $39

jr_028_5dcc:
    db $ed
    ld [de], a
    db $eb
    inc d
    di
    inc c
    db $ed
    ld [de], a
    sbc $21
    ld e, $e1
    call Call_028_6332
    sbc h
    or a
    ld c, b
    rst $10
    jr z, jr_028_5dcc

    inc d
    db $ed
    ld [de], a
    add $39
    or e
    ld c, h
    ld a, b
    add a
    ld a, e
    add h
    or a
    ld c, b
    rst $08
    jr nc, jr_028_5dc8

    jr z, jr_028_5daa

    ld c, b
    ld h, e
    sbc h
    call $1e32
    pop hl
    sbc $21
    db $ed
    ld [de], a
    di
    inc c
    ld b, $00
    ccf
    ld c, l
    ld b, $60
    ccf
    dec c
    ldh a, [rIF]
    jp $8e33


    ld l, [hl]
    sbc e
    ld e, e
    dec a
    cp l
    scf
    or a
    ld a, e
    ei
    dec a
    cp l
    rrca
    ldh a, [rSCX]
    ld c, h
    pop af
    or $f9
    ld a, [$dddc]
    or h
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76
    or $2d
    xor l
    dec sp
    cp e
    sbc a
    ld e, a
    adc a
    ld l, a
    jp nz, $f032

    rrca
    cp h
    cp l
    sbc $df
    db $ec
    db $ed
    cp h
    cp l
    reti


    jp c, Jump_028_7671

    jp Jump_000_0fcc


    ldh a, [rTMA]
    and b
    rst $38
    ld c, l
    ld b, $5f
    ld c, a
    ld c, l
    ld b, $bf
    ld c, a
    ld c, l
    ld b, $1f

jr_028_5e56:
    ld e, a
    ld c, l
    ld b, $7f

jr_028_5e5a:
    ld e, a
    ld c, l
    ld b, $df
    ld e, a
    ld c, l
    ld b, $3f
    ld l, a
    ld c, l
    ld b, $9f
    ld l, a
    ld c, l
    ld b, $ff
    ld l, a
    ld c, l
    ld b, $5f
    ld a, a
    ld c, l
    ld b, $bf
    ld a, a
    dec l
    nop
    ld [$0007], sp
    db $fd
    nop
    rst $10
    ld [$047b], sp
    rst $20
    db $10
    cp c
    ld a, [de]
    db $d3
    jr jr_028_5e56

    inc h
    db $ec
    nop
    ei
    nop
    rst $18
    nop
    db $fd
    nop
    ld a, a
    jr nz, @-$13

    ld d, b
    rst $18
    ld d, b
    ld [hl], a
    adc b
    xor a
    nop
    db $fd
    nop
    rst $18
    nop
    rst $38
    nop
    ld a, e
    db $10
    sub $29
    db $fd
    ld d, b
    jp Jump_000_3d01


    nop
    rst $38
    jr nz, jr_028_5e5a

    ld d, b
    db $fd
    or b
    sub a
    ld [$184e], sp
    adc a
    db $10
    ld b, e
    nop
    ld l, c
    nop
    rst $18
    nop
    ei
    nop
    cp a
    nop
    cp $04
    rst $10
    ld c, d
    ei
    ld [$11ae], a
    ld d, l
    nop
    cp a
    nop
    ei
    nop
    cp $00
    rst $28
    db $10
    push de
    ld [$58db], sp
    jp z, $3724

    ld [bc], a
    ld h, e

jr_028_5ed9:
    rlca

jr_028_5eda:
    ld d, h
    nop
    nop
    db $fd
    ld [$147f], sp
    rst $38
    inc d
    sbc $25
    push af
    ld b, h
    ld d, a
    nop
    ld a, a
    jr nz, jr_028_5eda

    ld d, c
    rst $18
    ld d, c
    ld [hl], l
    adc d
    xor [hl]
    sbc d
    xor e
    inc [hl]
    ld b, l
    ld b, c
    ld e, d
    ld d, h
    ld h, l
    adc d
    rst $28
    sub $92
    ld de, $98d7
    ld d, $2d
    inc hl
    dec [hl]
    ld hl, $4f88
    nop
    ld h, e
    ld h, b
    and [hl]
    ld d, c
    rst $18
    ld d, b
    ld [hl], l
    adc b
    xor a
    xor b
    sbc e
    inc h
    ld d, a
    and b
    ld hl, $76b0
    db $10
    pop af
    ld c, d
    sbc d
    ld b, l
    xor l
    dec h
    rst $00
    jr z, jr_028_5f80

    ld a, [bc]
    ld l, $00
    rst $28
    nop
    rst $38
    jr nz, jr_028_5ed9

    ld d, b
    rst $38
    ld [hl], b
    ld d, [hl]
    xor b
    adc a
    sub h

jr_028_5f33:
    rst $20
    adc b
    xor c
    nop
    ld a, e
    nop
    rst $18
    inc b
    db $fd
    ld [bc], a
    or e
    ld [de], a
    rst $30
    inc d
    ret nc

    dec h
    ld l, e
    dec h
    xor c
    jr nz, @-$40

    ld b, b
    db $eb
    sub b
    rst $10
    adc b
    call Call_000_2b08
    inc b
    xor [hl]
    inc [hl]
    sub l
    ld a, [hl+]
    ld c, e
    ld b, c
    ld e, d
    add b
    or [hl]
    ld sp, $0235
    ld h, d
    inc b
    push af
    inc c
    rst $18
    ld [hl+], a
    and d
    ld d, c
    ld [hl], l
    ld c, b
    ld c, e

jr_028_5f68:
    sub h
    or a
    sub h
    push de
    and d
    xor $23
    cpl
    ld d, c
    ld d, l
    ld b, [hl]
    ld [hl], a
    jr jr_028_5fcf

    inc hl
    and a
    inc bc
    xor d
    ld h, l
    ld c, h
    ld h, h
    ld h, [hl]
    ld a, [bc]
    adc c

jr_028_5f80:
    add hl, bc
    xor $11
    jp c, $da11

    jr jr_028_5f33

    ld c, d
    sub d
    ld b, d
    ld c, $31

jr_028_5f8d:
    ld d, l
    dec h
    add l
    and l
    ld [hl], l
    sub d
    ld d, e
    ld [$026c], sp
    rst $38
    inc bc
    jp c, $fc05

    inc b
    or [hl]
    ld c, d
    ld e, c
    adc c
    adc $11
    ld a, [$d211]
    ld [hl+], a
    inc bc
    sub l
    and a
    ld d, a
    ld b, l
    jp z, $9178

    inc d
    ld d, l
    ld [de], a
    jr nz, jr_028_6016

    jr nz, jr_028_5f68

    jr jr_028_5f8d

    ld d, d
    ret


    ld d, h
    ld h, b

jr_028_5fbc:
    add e
    cp l
    and d
    sbc b
    sbc d
    and a
    ld e, c
    push hl
    db $10
    ld h, $8c
    and l
    ld d, b
    ld [hl], e
    nop
    adc l
    jr nz, jr_028_6035

jr_028_5fce:
    db $10

jr_028_5fcf:
    ld d, c
    ld d, b
    ld [hl], a
    ld [$841a], sp
    push bc
    ld sp, $42a1
    sub $6a
    ld e, e
    ld b, h
    ld [hl], l
    call nz, $88b6
    ld [$8d08], a
    inc b
    push af
    inc d
    xor l
    rlca
    ld [de], a
    ld [de], a
    daa
    add a
    xor l
    ld l, l
    rlca
    inc e
    db $10
    ld d, d
    rst $00
    and e
    sub d
    ld h, l
    call nz, Call_000_3644
    ld a, [bc]
    reti


    dec bc
    xor h
    dec d
    or b
    db $10
    ret c

    inc [hl]
    ld c, a
    ld a, [hl+]
    ld d, e
    ld a, [bc]
    and $85
    ld c, c
    and [hl]
    ld h, [hl]
    ld e, b
    jr jr_028_6017

    db $eb
    jr nc, jr_028_5fce

    db $10
    sbc c
    dec d
    sub [hl]

jr_028_6016:
    ld a, [hl+]

jr_028_6017:
    add sp, $0a
    sbc a
    ld b, b
    ld c, c
    ld bc, $112a
    or d
    dec bc
    bit 1, d
    ld a, e
    ld d, b
    ld [hl], h
    inc de
    sbc c
    and d
    jr z, jr_028_5fbc

    ld d, h
    ld d, l
    ld [de], a
    ld h, b
    ld h, d
    nop
    sbc a
    ld h, d
    rst $30
    ld d, c

jr_028_6035:
    ld b, d
    and c
    sub d
    ld a, [hl+]
    ld e, h

jr_028_603a:
    ld b, $65
    ld d, e
    cp b
    add hl, hl
    and h
    ld l, e
    db $f4
    adc d
    jp c, $8595

    ld b, c
    ld b, e
    reti


    ld e, c
    and d
    ld l, $62
    inc hl
    inc d
    ld d, l
    call nc, Call_028_6a55
    ld c, a
    xor c
    sbc d
    ld bc, $0a32
    ld l, h
    ld h, $65
    ld d, e
    ret c

    add hl, hl
    ld h, h
    jr nz, jr_028_6017

    xor b
    ei
    or h
    and [hl]
    ld b, h
    ld d, l
    call nz, $a24d
    ld h, $6a
    ld a, [hl+]
    db $10
    ld d, e
    ret nc

    ld e, l
    ld b, b
    ld a, [c]
    nop

jr_028_6075:
    and d
    ld [$054a], sp
    push af
    ld [$14a9], sp
    call c, $d51c
    ld [hl+], a
    ld [$0380], a
    jr nz, jr_028_6075

    ld b, b
    db $dd
    add b
    rst $20
    jr nz, jr_028_603a

    ld d, b
    db $db
    ld d, b
    ld [hl], a
    adc b
    xor [hl]
    rlca
    nop
    ld d, $19
    ld e, d
    ld [bc], a
    di
    nop
    sbc $18
    xor e
    ld c, d
    sub e
    rlca
    inc d
    ld [de], a
    ld [$406b], sp
    ld e, l
    nop
    ld h, a
    rlca

jr_028_60a9:
    ld h, b
    inc b
    inc b
    ld [hl], a
    ld a, [bc]
    ei
    ld c, $aa
    ld de, $07dd
    ld [hl], b
    ld b, $aa
    adc [hl]
    sbc d
    xor e
    inc d
    ld h, l
    ld b, [hl]
    rst $08
    ld b, $25
    jp z, $88a8

    call z, Call_000_1314
    inc de
    call c, $b423
    ld [hl-], a
    or h
    inc d
    ld l, l
    adc d
    ld [hl-], a
    adc d
    ld [de], a
    ld h, e
    xor e
    ld c, c
    add hl, bc
    ld c, c
    jp hl


    inc h
    and a
    db $10
    ret c

    ld d, c
    ld a, h
    sub b
    call nc, $f5a5
    inc b
    sub h
    ld b, d
    or $04
    sub b
    dec h
    dec hl
    dec h
    add hl, hl
    jr c, jr_028_60a9

    ld c, b
    xor $90
    push de
    inc b
    inc c
    ld bc, $22e1
    ld a, [hl+]
    ld [hl], b
    ld d, l
    ld l, b
    ld c, c
    ld [hl+], a
    ld [hl], a
    sub c
    jp nz, $d2a1

    ld a, [hl+]
    ld e, h
    ld b, $e5
    rlca
    jp z, $8812

    ret c

    sub h
    add h
    ld c, c
    ld c, e
    pop hl
    ld h, c
    rlca
    ret c

    inc d
    nop
    or c
    ld h, b
    ld a, h
    and b
    xor a
    sub b
    db $dd
    db $10
    ld [hl], a
    add hl, bc
    rst $28
    ld c, d
    sbc d
    ld b, h
    inc l
    rlca
    jr nc, jr_028_612b

    jr z, jr_028_6177

    db $10
    ld b, a

jr_028_612b:
    inc d
    xor a
    ld b, d
    db $eb
    inc de
    ld h, a
    inc de
    and d
    ld bc, $04b8
    sub $8a
    ret


    adc e
    xor h
    ld d, c
    ld [hl], d
    ld c, e
    rlc b
    ld hl, $9181
    ld b, [hl]
    ld b, [hl]
    xor b
    add hl, hl
    sub b
    ld d, b
    ld c, b
    cpl
    ld h, b
    ld h, c
    nop
    cpl
    nop
    rst $28
    nop
    ld a, l
    rlca
    ld b, b
    inc bc
    rst $30
    nop
    sbc $00
    ei
    rlca
    db $10
    ld bc, $007f
    cp $07
    db $10
    ld bc, $00ff
    db $fd
    nop
    cp a
    nop
    db $ed
    nop
    rst $38
    nop
    or l
    nop
    rst $38
    nop
    rst $28
    nop
    ld a, [$bf00]

jr_028_6177:
    nop
    xor a
    rlca
    inc h
    nop
    nop
    rst $28
    nop
    cp $00
    cp a
    nop
    db $fd
    rlca
    ld h, h
    nop
    nop
    ld h, a
    nop
    db $db
    nop
    or l
    nop
    ld a, c
    nop
    inc [hl]
    nop
    ld a, b
    nop
    inc [hl]
    nop
    ld a, l
    nop
    rst $20
    rlca
    ld b, h
    ld sp, $00b9
    ld [hl], h
    rlca
    ld c, h
    ld sp, $0078
    ld d, h
    nop
    jr z, jr_028_61a8

jr_028_61a8:
    ld de, $8100
    nop
    jp $da00


    nop
    and a
    rlca
    ld h, b
    inc sp
    sub c
    rlca
    ld l, b
    inc sp
    rst $20
    rlca
    ld a, $31
    ld a, a
    nop
    rst $18
    nop
    ld a, b
    ld b, $e9
    rrca
    ret nc

    ld [de], a
    xor l
    rlca
    jr jr_028_61fd

    or $00
    ld a, a
    nop
    sbc a
    add b
    ld c, a
    nop
    and a
    add hl, bc
    db $76
    ld b, b
    cp a
    nop
    ld a, l
    nop
    or [hl]
    nop
    call $f200
    rlca
    ld b, h
    nop
    nop
    db $e3
    nop
    ld d, c
    nop
    xor e
    nop
    rst $10
    nop
    ld c, [hl]
    nop
    ccf
    nop
    rst $30
    nop
    cp $00
    rst $38
    inc bc
    di
    ld c, $ee
    dec de
    db $db
    dec a
    cp l
    scf

jr_028_61fd:
    or a
    ld a, e
    ei
    dec a
    cp l
    nop
    rst $38
    ld b, b
    ld c, a
    ldh a, [$f7]
    ld hl, sp-$05
    call c, $b4dd
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76
    or $2d
    xor l
    dec sp
    cp e
    rra
    rst $18
    rrca
    rst $28
    ld [bc], a
    ld a, [c]
    nop
    rst $38
    cp h
    cp l
    sbc $df
    db $ec
    db $ed
    cp h
    cp l
    ret c

    db $db
    ld [hl], b
    ld [hl], a
    ret nz

    rst $08
    nop
    rst $38
    rlca
    and b
    rst $38
    ld c, l
    rlca
    ld e, a
    ld c, a
    ld c, l
    rlca
    cp a
    ld c, a
    ld c, l
    rlca
    rra

jr_028_6240:
    ld e, a
    ld c, l
    rlca
    ld a, a

jr_028_6244:
    ld e, a
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
    rlca
    rst $38
    ld l, a
    ld c, l
    rlca
    ld e, a
    ld a, a
    ld c, l
    rlca
    cp a
    ld a, a
    dec l
    nop
    ld [$0007], sp
    db $fd
    nop
    rst $10
    ld [$047b], sp
    rst $20
    db $10
    cp c
    ld a, [de]
    db $d3
    jr jr_028_6240

    inc h
    db $ec
    nop
    ei
    nop
    rst $18
    nop
    db $fd
    nop
    ld a, a
    jr nz, @-$13

    ld d, b
    rst $18
    ld d, b
    ld [hl], a
    adc b
    xor a
    nop
    db $fd
    nop
    rst $18
    nop
    rst $38
    nop
    ld a, e
    db $10
    sub $29
    db $fd
    ld d, b
    jp Jump_000_3d01


    nop
    rst $38
    jr nz, jr_028_6244

    ld d, b
    db $fd
    or b
    sub a
    ld [$184e], sp
    adc a
    db $10
    ld b, e
    nop
    ld l, c
    nop
    rst $18
    nop
    ei
    nop
    cp a
    nop
    cp $04
    rst $10
    ld c, d
    ei
    ld [$11ae], a
    ld d, l
    nop
    cp a
    nop
    ei
    nop
    cp $00
    rst $28
    db $10
    push de
    ld [$58db], sp
    jp z, $3724

    ld [bc], a
    ld h, e

jr_028_62c3:
    rlca

jr_028_62c4:
    ld d, h
    nop
    nop
    db $fd
    ld [$147f], sp
    rst $38
    inc d
    sbc $25
    push af
    ld b, h
    ld d, a
    nop
    ld a, a
    jr nz, jr_028_62c4

    ld d, c
    rst $18
    ld d, c
    ld [hl], l
    adc d
    xor [hl]
    sbc d
    xor e
    inc [hl]
    ld b, l
    ld b, c
    ld e, d
    ld d, h
    ld h, l
    adc d
    rst $28
    sub $92
    ld de, $98d7
    ld d, $2d
    inc hl
    dec [hl]
    ld hl, $4f88
    nop
    ld h, e
    ld h, b
    and [hl]
    ld d, c
    rst $18
    ld d, b
    ld [hl], l
    adc b
    xor a
    xor b
    sbc e
    inc h
    ld d, a
    and b
    ld hl, $76b0
    db $10
    pop af
    ld c, d
    sbc d
    ld b, l
    xor l
    dec h
    rst $00
    jr z, jr_028_636a

    ld a, [bc]
    ld l, $00
    rst $28
    nop
    rst $38
    jr nz, jr_028_62c3

    ld d, b
    rst $38
    ld [hl], b
    ld d, [hl]
    xor b
    adc a
    sub h

jr_028_631d:
    rst $20
    adc b
    xor c
    nop
    ld a, e
    nop
    rst $18
    inc b
    db $fd
    ld [bc], a
    or e
    ld [de], a
    rst $30
    inc d
    ret nc

    dec h
    ld l, e
    dec h
    xor c
    jr nz, @-$40

Call_028_6332:
    ld b, b
    db $eb
    sub b
    rst $10
    adc b
    call Call_000_2b08
    inc b
    xor [hl]
    inc [hl]
    sub l
    ld a, [hl+]
    ld c, e
    ld b, c
    ld e, d
    add b
    or [hl]
    ld sp, $0235
    ld h, d
    inc b
    push af
    inc c
    rst $18
    ld [hl+], a
    and d
    ld d, c
    ld [hl], l
    ld c, b
    ld c, e

jr_028_6352:
    sub h
    or a
    sub h
    push de
    and d
    xor $23
    cpl
    ld d, c
    ld d, l
    ld b, [hl]
    ld [hl], a
    jr jr_028_63b9

    inc hl
    and a
    inc bc
    xor d
    ld h, l
    ld c, h
    ld h, h
    ld h, [hl]
    ld a, [bc]
    adc c

jr_028_636a:
    add hl, bc
    xor $11
    jp c, $da11

    jr jr_028_631d

    ld c, d
    sub d
    ld b, d
    ld c, $31

jr_028_6377:
    ld d, l
    dec h
    add l
    and l
    ld [hl], l
    sub d
    ld d, e
    ld [$026c], sp
    rst $38
    inc bc
    jp c, $fc05

    inc b
    or [hl]
    ld c, d
    ld e, c
    adc c
    adc $11
    ld a, [$d211]
    ld [hl+], a
    inc bc
    sub l
    and a
    ld d, a
    ld b, l
    jp z, $9178

    inc d
    ld d, l
    ld [de], a
    jr nz, jr_028_6400

    jr nz, jr_028_6352

    jr jr_028_6377

    ld d, d
    ret


    ld d, h
    ld h, b

jr_028_63a6:
    add e
    cp l
    and d
    sbc b
    sbc d
    and a
    ld e, c
    push hl
    db $10
    ld h, $8c
    and l
    ld d, b
    ld [hl], e
    nop
    adc l
    jr nz, jr_028_641f

jr_028_63b8:
    db $10

jr_028_63b9:
    ld d, c
    ld d, b
    ld [hl], a
    ld [$841a], sp
    push bc
    ld sp, $42a1
    sub $6a
    ld e, e
    ld b, h
    ld [hl], l
    call nz, $88b6
    ld [$8d08], a
    inc b
    push af
    inc d
    xor l
    rlca
    ld [de], a
    ld [de], a
    daa
    add a
    xor l
    ld l, l
    rlca
    inc e
    db $10
    ld d, d
    rst $00
    and e
    sub d
    ld h, l
    call nz, Call_000_3644
    ld a, [bc]
    reti


    dec bc
    xor h
    dec d
    or b
    db $10
    ret c

    inc [hl]
    ld c, a
    ld a, [hl+]
    ld d, e
    ld a, [bc]
    and $85
    ld c, c
    and [hl]
    ld h, [hl]
    ld e, b
    jr jr_028_6401

    db $eb
    jr nc, jr_028_63b8

    db $10
    sbc c
    dec d
    sub [hl]

jr_028_6400:
    ld a, [hl+]

jr_028_6401:
    add sp, $0a
    sbc a
    ld b, b
    ld c, c
    ld bc, $112a
    or d
    dec bc
    bit 1, d
    ld a, e
    ld d, b
    ld [hl], h
    inc de
    sbc c
    and d
    jr z, jr_028_63a6

    ld d, h
    ld d, l
    ld [de], a
    ld h, b
    ld h, d
    nop
    sbc a
    ld h, d
    rst $30
    ld d, c

jr_028_641f:
    ld b, d
    and c
    sub d
    ld a, [hl+]
    ld e, h

jr_028_6424:
    ld b, $65
    ld d, e
    cp b
    add hl, hl
    and h
    ld l, e
    db $f4
    adc d
    jp c, $8595

    ld b, c
    ld b, e
    reti


    ld e, c
    and d
    ld l, $62
    inc hl
    inc d
    ld d, l
    call nc, Call_028_6a55
    ld c, a
    xor c
    sbc d
    ld bc, $0a32
    ld l, h
    ld h, $65
    ld d, e
    ret c

    add hl, hl
    ld h, h
    jr nz, jr_028_6401

    xor b
    ei
    or h
    and [hl]
    ld b, h
    ld d, l
    call nz, $a24d
    ld h, $6a
    ld a, [hl+]
    db $10
    ld d, e
    ret nc

    ld e, l
    ld b, b
    ld a, [c]
    nop

jr_028_645f:
    and d
    ld [$054a], sp
    push af
    ld [$14a9], sp
    call c, $d51c
    ld [hl+], a
    ld [$0380], a
    jr nz, jr_028_645f

    ld b, b
    db $dd
    add b
    rst $20
    jr nz, jr_028_6424

    ld d, b
    db $db
    ld d, b
    ld [hl], a
    adc b
    xor [hl]
    rlca
    nop
    ld d, $19
    ld e, d
    ld [bc], a
    di
    nop
    sbc $18
    xor e
    ld c, d
    sub e
    rlca
    inc d
    ld [de], a
    ld [$406b], sp
    ld e, l
    nop
    ld h, a
    rlca

jr_028_6493:
    ld h, b
    inc b
    inc b
    ld [hl], a
    ld a, [bc]
    ei
    ld c, $aa
    ld de, $07dd
    ld [hl], b
    ld b, $aa
    adc [hl]
    sbc d
    xor e
    inc d
    ld h, l
    ld b, [hl]
    rst $08
    ld b, $25
    jp z, $88a8

    call z, Call_000_1314
    inc de
    call c, $b423
    ld [hl-], a
    or h
    inc d
    ld l, l
    adc d
    ld [hl-], a
    adc d
    ld [de], a
    ld h, e
    xor e
    ld c, c
    add hl, bc
    ld c, c
    jp hl


    inc h
    and a
    db $10
    ret c

    ld d, c
    ld a, h
    sub b
    call nc, $f5a5
    inc b
    sub h
    ld b, d
    or $04
    sub b
    dec h
    dec hl
    dec h
    add hl, hl
    jr c, jr_028_6493

    ld c, b
    xor $90
    push de
    inc b
    inc c
    ld bc, $22e1
    ld a, [hl+]
    ld [hl], b
    ld d, l
    ld l, b
    ld c, c
    ld [hl+], a
    ld [hl], a
    sub c
    jp nz, $d2a1

    ld a, [hl+]
    ld e, h
    ld b, $e5
    rlca
    jp z, $8812

    ret c

    sub h
    add h
    ld c, c
    ld c, e
    pop hl
    ld h, c
    rlca
    ret c

    inc d
    nop
    or c
    ld h, b
    ld a, h
    and b
    xor a
    sub b
    db $dd
    db $10
    ld [hl], a
    add hl, bc
    rst $28
    ld c, d
    sbc d
    ld b, h
    inc l
    rlca
    jr nc, jr_028_6515

    jr z, jr_028_6561

    db $10
    ld b, a

jr_028_6515:
    inc d
    xor a
    ld b, d
    db $eb
    inc de
    ld h, a
    inc de
    and d
    ld bc, $04b8
    sub $8a
    ret


    adc e
    xor h
    ld d, c
    ld [hl], d
    ld c, e
    rlc b
    ld hl, $9181
    ld b, [hl]
    ld b, [hl]
    xor b
    add hl, hl
    sub b
    ld d, b
    ld c, b
    cpl
    ld h, b
    ld h, c
    nop
    cpl
    nop
    rst $28
    nop
    ld a, l
    rlca
    ld b, b
    inc bc
    rst $30
    nop
    sbc $00
    ei
    rlca
    db $10
    ld bc, $007f
    cp $07
    db $10
    ld bc, $00ff
    db $fd
    nop
    cp a
    nop
    db $ed
    nop
    rst $38
    nop
    or l
    nop
    rst $38
    nop
    rst $28
    nop
    ld a, [$bf00]

jr_028_6561:
    nop
    xor a
    rlca
    inc h
    nop
    nop
    rst $28
    nop
    cp $00
    cp a
    nop
    db $fd
    rlca
    ld h, h

jr_028_6570:
    nop
    nop
    ld h, a
    nop
    db $db
    nop
    or l
    nop
    ld a, c
    nop
    inc [hl]
    nop
    ld a, b
    nop
    inc [hl]
    nop
    ld a, l
    nop
    rst $20
    rlca
    ld b, h
    ld sp, $00b9
    ld [hl], h
    rlca
    ld c, h
    ld sp, $0078
    ld d, h
    nop
    jr z, jr_028_6592

jr_028_6592:
    ld de, $8100
    nop
    jp $da00


    nop
    and a
    rlca
    ld h, b
    inc sp
    sub c
    rlca
    ld l, b
    inc sp
    rst $20
    inc hl
    ret nc

    jp nc, $0c1f

    db $ec
    or e
    ccf
    db $e4
    ld h, a
    add hl, de
    reti


    ld b, h
    daa
    add l
    jr nc, jr_028_65e7

    ld c, h
    or h
    ld [hl], e
    ld c, e
    ret z

    jr c, jr_028_6570

    daa
    ld h, h
    ld c, d
    ldh a, [$a0]
    and l
    jr jr_028_663e

    jp z, $3049

    db $f4
    call z, $f24f
    ccf
    ld h, h
    add h
    sbc c
    ld a, b
    inc h
    adc a
    sub d
    ld h, h
    rst $08
    call z, $f231
    ret z

    call Call_000_3ab5
    scf
    call z, $a688
    ld l, e
    ldh a, [$65]
    ld a, [bc]
    nop
    rst $38
    inc bc
    di

jr_028_65e7:
    ld c, $ee
    dec de
    db $db
    dec a
    cp l
    scf
    or a
    ld a, e
    ei
    dec a
    cp l
    nop
    rst $38
    ld b, b
    ld c, a
    ldh a, [$f7]
    ld hl, sp-$05
    call c, $b4dd
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76
    or $2d
    xor l
    dec sp
    cp e
    rra
    rst $18
    rrca
    rst $28
    ld [bc], a
    ld a, [c]
    nop
    rst $38
    cp h

Jump_028_6614:
    cp l
    sbc $df
    db $ec
    db $ed
    cp h
    cp l
    ret c

    db $db
    ld [hl], b
    ld [hl], a
    ret nz

    rst $08
    nop
    rst $38
    rlca
    and b
    rst $38
    ld c, l
    rlca
    ld e, a
    ld c, a
    ld c, l
    rlca
    cp a
    ld c, a
    ld c, l
    rlca
    rra
    ld e, a
    ld c, l
    rlca
    ld a, a
    ld e, a
    ld c, l
    rlca
    rst $18
    ld e, a
    ld c, l
    rlca
    ccf
    ld l, a

jr_028_663e:
    ld c, l
    rlca
    sbc a
    ld l, a
    ld c, l
    rlca
    rst $38
    ld l, a
    ld c, l
    rlca
    ld e, a
    ld a, a
    ld c, l
    rlca
    cp a
    ld a, a
    dec l
    nop
    ld [$d207], sp
    dec l
    adc d
    ld e, b
    inc bc
    or l
    ld b, l
    ld d, e
    ld b, h
    ld c, b
    adc b
    and l
    add d
    and e
    sub c
    sub c
    or $09
    ld [hl], l
    add e

Jump_028_6666:
    ld hl, $0855
    ld l, b
    ld [bc], a
    ld e, e
    dec bc
    ld b, e
    and e
    inc hl
    dec h
    dec h
    rlca
    db $10
    inc c
    jp z, Jump_000_2235

    ld c, b
    ld bc, $44b3
    push de
    inc h

jr_028_667e:
    ld [hl], l
    ld [bc], a
    ld e, d
    add d
    xor d
    sub c
    sub c
    rlca
    jr nc, @+$0e

    db $db
    inc h
    ld b, c
    sub d
    ld b, h
    dec l
    and [hl]
    sla l
    ld b, c
    ld bc, $6127
    db $e3
    ld sp, $0031
    ld e, d
    nop
    ld bc, $a200
    ld b, b
    ld c, h
    nop
    ld [de], a
    nop
    ld d, c
    nop
    dec h
    add b
    and d
    nop
    ld e, $00
    and c
    nop
    ld d, d
    nop
    inc c
    nop
    ld [de], a
    nop
    sub c
    nop
    ld h, c
    nop
    inc de
    nop
    ld a, [de]
    nop
    add c
    nop
    ld h, d
    rlca
    db $76
    inc bc
    ld h, l
    nop
    ld [hl+], a
    rlca
    ld [hl], b
    rrca
    db $10
    and b
    ld [bc], a
    ld d, e
    nop
    inc c
    nop
    db $10
    ld bc, $0191
    ld h, c
    ld [bc], a
    ld [de], a
    rlca
    nop
    inc c
    rlca
    ld d, b
    rrca
    nop
    add c
    nop
    and d
    nop
    rlca
    ld h, a
    nop
    sub c
    nop
    and l
    rlca
    adc [hl]
    ld bc, $00a3
    ld d, b
    rlca
    db $76
    ld b, $51
    ld d, c
    ld [hl], d
    ld a, [$ac2c]
    ld c, b
    ret z

    ld b, b
    ld d, [hl]
    nop
    add hl, bc
    nop
    jr nc, jr_028_667e

    adc c
    ld c, b
    ld c, a
    ld b, $d6
    ld h, l
    ld h, l
    nop
    nop
    nop
    ld b, h
    nop
    inc sp
    nop
    adc h
    nop
    ld h, c
    rlca
    db $10
    dec d
    ld l, h
    nop
    ld de, $8e00
    nop
    ld d, c
    sub e
    sub e
    inc bc
    ld c, a
    ld h, $26
    adc b
    adc b
    nop
    sub e
    nop
    inc c
    nop
    ld [hl-], a
    nop
    ld c, c
    rlca
    jr nc, jr_028_6743

    dec b
    nop
    jr nc, jr_028_6730

jr_028_6730:
    adc c
    inc de
    di
    sub d
    sbc [hl]
    ld c, [hl]
    ld c, a
    inc b
    dec b
    nop
    ret c

    ld bc, $0031
    adc h
    nop
    ld hl, $9480

jr_028_6743:
    nop
    ld a, [de]
    nop
    add l
    ld b, b
    ld h, h
    add b
    sbc d
    ret nz

    ld d, c
    jp $b153


    ld [hl], l
    nop
    ld d, $00
    ld l, e
    nop
    add h
    nop
    ld h, h
    nop
    ld a, [de]
    nop
    pop de
    ld a, [de]
    sbc d
    call $00d3
    inc d
    nop
    sbc d
    nop
    ld b, l
    nop
    inc h
    nop
    ld a, [de]
    inc b
    ld b, h
    rlca
    ld a, h
    ld de, $7107
    rra
    dec c
    inc d
    ld [bc], a
    ld l, d
    nop
    add l
    ld bc, $0364
    ld [de], a
    dec b
    inc b
    add hl, sp
    cp d
    sbc a
    and b
    rlca
    nop
    dec d
    ld d, e
    nop
    inc b
    rlca
    inc c
    db $10
    rlca
    ld d, b
    inc e
    nop
    ld d, h
    rlca
    ld h, d
    stop
    and h
    nop
    ld e, d
    nop
    sub c
    nop
    ld [hl+], a
    nop
    and h
    rlca
    ld [hl], b
    jr jr_028_67a2

jr_028_67a2:
    ld h, c
    nop
    inc hl
    rlca
    ld h, b
    rrca
    nop
    rlca
    or e
    add hl, bc
    rlca
    ld h, b

jr_028_67ae:
    dec e
    rlca
    or c
    dec de
    rlca
    ldh [rIF], a
    nop
    rlca
    ld [hl], e
    ld a, [bc]
    rlca
    pop hl
    rra
    dec c
    rlca
    add c
    rrca
    dec c
    rlca
    add c
    dec d
    nop
    sub c
    nop
    ld h, d
    nop
    inc h
    rlca
    ld [hl], b
    cpl
    db $10
    rlca
    di
    add hl, bc
    rlca
    and b
    cpl
    dec c
    cp a
    ld b, b
    db $ed
    ld [de], a
    rst $38
    nop
    or l
    ld c, d
    rst $38
    nop
    rst $28
    db $10
    ld a, [$bf05]
    ld b, b
    xor a
    ld d, b
    rst $38
    nop
    ld a, e
    add h
    rst $28
    db $10
    cp $01
    cp a
    ld b, b
    db $fd
    ld [bc], a
    rst $28
    db $10
    rst $28
    db $10
    ld a, l
    add d
    rst $38
    nop
    db $db
    inc h
    ld a, a
    add b
    rst $30
    ld [$21de], sp
    ei
    inc b
    ei
    inc b
    rst $18
    jr nz, @+$01

    nop
    db $76
    adc c
    rst $38
    nop
    rlca

jr_028_6810:
    ld [hl-], a
    jr nc, jr_028_6810

    ld [bc], a
    ld a, l
    add d
    rst $20
    nop
    jp $8118


    inc [hl]
    add c
    jr c, jr_028_681f

jr_028_681f:
    ld [hl], h
    nop
    ld a, b
    nop
    inc [hl]
    rlca
    ld b, b
    inc a
    nop
    ld a, b
    nop
    ld d, h
    nop
    jr z, jr_028_67ae

    ld de, $0081
    jp $c200


    add hl, de
    pop bc
    ld h, $07
    ld h, b
    inc a
    rlca
    nop
    inc [hl]
    ldh a, [$08]
    add $29
    adc a
    ld d, b
    ld [de], a
    xor l
    rlca
    db $10
    inc [hl]
    ld e, $61
    rrca
    sub b
    add l
    ld c, d
    inc bc
    and h
    add hl, bc
    db $76
    ld b, b
    cp a
    nop
    ld a, l
    nop
    or [hl]
    nop
    call Call_000_32c0
    ret c

    daa
    ei
    inc b
    ld bc, $01e2
    ld d, b
    nop
    xor e
    nop
    rst $10
    inc bc
    ld c, h
    rrca
    jr nc, jr_028_68ac

    ret nz

    db $fd
    ld [bc], a
    ldh a, [rIF]
    jp $8e33


    ld l, [hl]
    sbc e
    ld e, e
    dec a
    cp l
    scf
    or a
    ld a, e
    ei
    dec a
    cp l
    rrca
    ldh a, [rSCX]
    ld c, h
    pop af
    or $f9
    ld a, [$dddc]
    or h
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76
    or $2d
    xor l
    dec sp
    cp e
    sbc a
    ld e, a
    adc a
    ld l, a
    jp nz, $f032

    rrca
    cp h
    cp l
    sbc $df
    db $ec
    db $ed
    cp h
    cp l
    reti


    jp c, Jump_028_7671

jr_028_68ac:
    jp Jump_000_0fcc


    ldh a, [rTAC]
    and b
    rst $38
    ld c, l
    rlca
    ld e, a
    ld c, a
    ld c, l
    rlca
    cp a
    ld c, a
    ld c, l
    rlca
    rra
    ld e, a
    ld c, l
    rlca
    ld a, a
    ld e, a
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
    rlca
    rst $38
    ld l, a
    ld c, l
    rlca
    ld e, a
    ld a, a
    ld c, l
    rlca
    cp a
    ld a, a
    dec l
    nop
    ld [$d207], sp
    dec l
    adc d
    ld e, b
    inc bc
    or l
    ld b, l
    ld d, e
    ld b, h
    ld c, b
    adc b
    and l
    add d
    and e
    sub c
    sub c
    or $09
    ld [hl], l
    add e
    ld hl, $0855
    ld l, b
    ld [bc], a
    ld e, e
    dec bc
    ld b, e
    and e
    inc hl
    dec h
    dec h
    rlca
    db $10
    inc c
    jp z, Jump_000_2235

    ld c, b
    ld bc, $44b3
    push de
    inc h

jr_028_690b:
    ld [hl], l
    ld [bc], a
    ld e, d
    add d
    xor d
    sub c
    sub c
    rlca
    jr nc, @+$0e

    db $db
    inc h
    ld b, c
    sub d
    ld b, h
    dec l
    and [hl]
    sla l
    ld b, c
    ld bc, $6127
    db $e3
    ld sp, $0031
    ld e, d
    nop
    ld bc, $a200
    ld b, b
    ld c, h
    nop
    ld [de], a
    nop
    ld d, c
    nop
    dec h
    add b
    and d
    nop
    ld e, $00
    and c
    nop
    ld d, d
    nop
    inc c
    nop
    ld [de], a
    nop
    sub c
    nop
    ld h, c
    nop
    inc de
    nop
    ld a, [de]
    nop
    add c
    nop
    ld h, d
    rlca
    db $76
    inc bc
    ld h, l
    nop
    ld [hl+], a
    rlca
    ld [hl], b
    rrca
    db $10
    and b
    ld [bc], a
    ld d, e
    nop
    inc c
    nop
    db $10
    ld bc, $0191
    ld h, c
    ld [bc], a
    ld [de], a
    rlca
    nop
    inc c
    rlca
    ld d, b
    rrca
    nop
    add c
    nop
    and d
    nop
    rlca
    ld h, a
    nop
    sub c
    nop
    and l
    rlca
    adc [hl]
    ld bc, $00a3
    ld d, b
    rlca
    db $76
    ld b, $51
    ld d, c
    ld [hl], d
    ld a, [$ac2c]
    ld c, b
    ret z

    ld b, b
    ld d, [hl]
    nop
    add hl, bc
    nop
    jr nc, jr_028_690b

    adc c
    ld c, b
    ld c, a
    ld b, $d6
    ld h, l
    ld h, l
    nop
    nop
    nop
    ld b, h
    nop
    inc sp
    nop
    adc h
    nop
    ld h, c
    rlca
    db $10
    dec d
    ld l, h
    nop
    ld de, $8e00
    nop
    ld d, c
    sub e
    sub e
    inc bc
    ld c, a
    ld h, $26
    adc b
    adc b
    nop
    sub e
    nop
    inc c
    nop
    ld [hl-], a
    nop
    ld c, c
    rlca
    jr nc, jr_028_69d0

    dec b
    nop
    jr nc, jr_028_69bd

jr_028_69bd:
    adc c
    inc de
    di
    sub d
    sbc [hl]
    ld c, [hl]
    ld c, a
    inc b
    dec b
    nop
    ret c

    ld bc, $0031
    adc h
    nop
    ld hl, $9480

jr_028_69d0:
    nop
    ld a, [de]
    nop
    add l
    ld b, b
    ld h, h
    add b
    sbc d
    ret nz

    ld d, c
    jp $b153


    ld [hl], l
    nop
    ld d, $00
    ld l, e
    nop
    add h
    nop
    ld h, h
    nop
    ld a, [de]
    nop
    pop de
    ld a, [de]
    sbc d
    call $00d3
    inc d
    nop
    sbc d
    nop
    ld b, l
    nop
    inc h
    nop
    ld a, [de]
    inc b
    ld b, h
    rlca
    ld a, h
    ld de, $7107
    rra
    dec c
    inc d
    ld [bc], a
    ld l, d
    nop
    add l
    ld bc, $0364
    ld [de], a
    dec b
    inc b
    add hl, sp
    cp d
    sbc a
    and b
    rlca
    nop
    dec d
    ld d, e
    nop
    inc b
    rlca
    inc c
    db $10
    rlca
    ld d, b
    inc e
    nop
    ld d, h
    rlca
    ld h, d
    stop
    and h
    nop
    ld e, d
    nop
    sub c
    nop
    ld [hl+], a
    nop
    and h
    rlca
    ld [hl], b
    jr jr_028_6a2f

jr_028_6a2f:
    ld h, c
    nop
    inc hl
    rlca
    ld h, b
    rrca
    nop
    rlca
    or e
    add hl, bc
    rlca
    ld h, b

jr_028_6a3b:
    dec e
    rlca
    or c
    dec de
    rlca
    ldh [rIF], a
    nop
    rlca
    ld [hl], e
    ld a, [bc]
    rlca
    pop hl
    rra
    dec c
    rlca
    add c
    rrca
    dec c
    rlca
    add c
    dec d
    nop
    sub c
    nop
    ld h, d

Call_028_6a55:
    nop
    inc h
    rlca
    ld [hl], b
    cpl
    db $10
    rlca
    di
    add hl, bc
    rlca
    and b
    cpl
    dec c
    cp a
    ld b, b
    db $ed
    ld [de], a
    rst $38
    nop
    or l
    ld c, d
    rst $38
    nop
    rst $28
    db $10
    ld a, [$bf05]
    ld b, b
    xor a
    ld d, b
    rst $38
    nop
    ld a, e
    add h
    rst $28
    db $10
    cp $01
    cp a
    ld b, b
    db $fd
    ld [bc], a
    rst $28
    db $10
    rst $28
    db $10
    ld a, l
    add d
    rst $38
    nop
    db $db
    inc h
    ld a, a
    add b
    rst $30
    ld [$21de], sp
    ei
    inc b
    ei
    inc b

jr_028_6a94:
    rst $18
    jr nz, @+$01

    nop
    db $76
    adc c
    rst $38
    nop
    rlca

jr_028_6a9d:
    ld [hl-], a
    jr nc, jr_028_6a9d

    ld [bc], a
    ld a, l
    add d
    rst $20
    nop
    jp $8118


    inc [hl]
    add c
    jr c, jr_028_6aac

jr_028_6aac:
    ld [hl], h
    nop
    ld a, b
    nop
    inc [hl]
    rlca
    ld b, b
    inc a
    nop
    ld a, b
    nop
    ld d, h
    nop
    jr z, jr_028_6a3b

    ld de, $0081
    jp $c200


    add hl, de
    pop bc
    ld h, $07
    ld h, b
    inc a
    inc hl
    ret nc

    jp nc, $0c1f

    db $ec
    or e
    ccf
    db $e4
    ld h, a
    add hl, de
    reti


    ld b, h
    daa
    add l
    jr nc, @+$35

    ld c, h
    or h
    ld [hl], e
    ld c, e
    ret z

    jr c, jr_028_6a94

    daa
    ld h, h
    ld c, d
    ldh a, [$a0]
    and l
    jr jr_028_6b62

    jp z, $3049

    db $f4
    call z, $f24f
    ccf
    ld h, h
    add h
    sbc c
    ld a, b
    inc h
    adc a
    sub d
    ld h, h
    rst $08
    call z, $f231
    ret z

    call Call_000_3ab5
    scf
    call z, $a688
    ld l, e
    ldh a, [$65]
    ld a, [bc]
    ldh a, [rIF]
    jp $8e33


    ld l, [hl]
    sbc e
    ld e, e
    dec a
    cp l
    scf
    or a
    ld a, e
    ei
    dec a
    cp l
    rrca
    ldh a, [rSCX]
    ld c, h
    pop af
    or $f9
    ld a, [$dddc]
    or h
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76
    or $2d
    xor l
    dec sp
    cp e
    sbc a
    ld e, a
    adc a
    ld l, a
    jp nz, $f032

    rrca
    cp h
    cp l
    sbc $df
    db $ec
    db $ed
    cp h
    cp l
    reti


    jp c, Jump_028_7671

    jp Jump_000_0fcc


    ldh a, [rTAC]
    and b
    rst $38
    ld c, l
    rlca
    ld e, a
    ld c, a
    ld c, l
    rlca
    cp a
    ld c, a
    ld c, l
    rlca
    rra
    ld e, a
    ld c, l
    rlca
    ld a, a
    ld e, a
    ld c, l
    rlca
    rst $18
    ld e, a
    ld c, l
    rlca
    ccf
    ld l, a

jr_028_6b62:
    ld c, l
    rlca
    sbc a
    ld l, a
    ld c, l
    rlca
    rst $38
    ld l, a
    ld c, l
    rlca
    ld e, a
    ld a, a
    ld c, l
    rlca
    cp a
    ld a, a
    dec l
    nop
    ld [$fd1d], sp
    ld [bc], a
    rst $10
    jr nz, jr_028_6bf6

    adc b
    push hl
    ld b, $90
    ld a, c
    jp c, $d813

    ld de, $6ca4
    ei
    inc b

jr_028_6b88:
    rst $18
    jr nz, jr_028_6b88

    ld [bc], a
    ld a, a
    add b
    db $eb
    inc h
    ld e, a
    ret nc

    ld d, a
    ld [hl], b
    adc e
    xor h
    db $fd
    ld [bc], a
    rst $18
    jr nz, @+$01

    nop
    ld a, e
    add h
    sub $10
    db $ed
    add hl, sp
    ret nc

    ld b, e
    ld bc, $ff3d
    nop
    xor a
    jr nz, jr_028_6b88

    ld [hl], d
    or a
    sub b
    ld c, $49
    dec de
    adc h
    db $10
    ld b, e

jr_028_6bb4:
    nop
    ld l, c
    rst $18
    jr nz, jr_028_6bb4

    inc b
    cp a
    ld b, b
    cp $01
    rst $10
    inc h
    bit 7, d
    ld [$11ae], a
    ld d, l
    cp a
    ld b, b
    ei
    inc b
    cp $01
    rst $28
    nop
    push de
    ld [de], a
    adc e
    ld e, h
    ld e, d
    ret


    dec h
    ld [hl], $62
    sub e
    ld hl, sp+$07

jr_028_6bda:
    xor $11
    db $fd
    ld [bc], a
    ld a, a
    adc b
    rst $30
    inc e
    call nc, $a51e
    ld [hl], l
    ld b, h
    ld d, a
    nop
    ld a, a
    jr nz, jr_028_6bda

    pop de
    ld e, a
    ld d, c
    ld [hl], l
    adc d
    xor [hl]
    sbc d
    xor e
    inc [hl]
    ld b, l

jr_028_6bf6:
    ld b, c
    ld e, d
    ld d, h
    ld h, l
    adc d
    rst $28
    sub $92
    ld de, $98d7
    ld d, $2d
    inc hl
    dec [hl]
    ld hl, $4f88
    nop
    ld h, e
    ld h, b
    and [hl]
    ld d, c
    rst $18
    ld d, b
    ld [hl], l
    adc b
    xor a
    xor b
    sbc e
    inc h
    ld d, a
    and b
    ld hl, $76b0
    db $10
    pop af
    ld c, d
    sbc d
    ld b, l
    xor l
    dec h
    rst $00
    jr z, jr_028_6c80

    ld a, [bc]
    ld l, $ef
    db $10
    rst $38
    nop
    xor l
    ld [hl], d
    ld d, a
    ld hl, sp+$72
    ld d, l

jr_028_6c30:
    xor e
    adc h
    sub l

jr_028_6c33:
    and $89
    xor b
    ld a, a
    add b
    rst $18
    jr nz, jr_028_6c30

    ld c, $a3
    ld d, d
    ld a, [c]
    rla
    call nc, $2510
    db $eb
    and l
    add hl, hl
    cp [hl]
    ld hl, $64cb
    sub a
    ret c

    adc l
    jp z, $2c0b

    ld b, $ad
    dec [hl]
    sub h
    ld a, [hl+]
    ld c, e
    ld b, c
    ld e, d
    add b
    or [hl]
    ld sp, $0235
    ld h, d
    ld b, h
    or l
    adc h
    ld e, a
    ld [hl+], a
    and d
    ld d, c
    ld [hl], l
    ld c, c
    ld c, d

jr_028_6c68:
    sub l
    or [hl]
    sub h
    push de
    and d
    xor $23
    cpl
    ld d, c
    ld d, l
    ld b, [hl]
    ld [hl], a
    add hl, de
    ld e, b
    inc hl
    and a
    inc bc
    xor d
    ld h, l
    ld c, h
    ld h, h
    ld h, [hl]
    ld a, [bc]
    adc c

jr_028_6c80:
    adc c
    ld l, [hl]
    pop de
    ld a, [de]
    sub c
    ld e, d
    jr jr_028_6c33

    ld c, d
    sub d
    ld b, d
    ld c, $31

jr_028_6c8d:
    ld d, l
    dec h
    add l
    and l
    ld [hl], l
    sub d
    ld d, e
    ld [$026c], sp
    rst $38
    inc bc
    jp c, $fc05

    inc b
    or [hl]
    ld c, d
    ld e, c
    adc c
    adc $11
    ld a, [$d211]
    ld [hl+], a
    inc bc
    sub l
    and a
    ld d, a
    ld b, l
    jp z, $9178

    inc d
    ld d, l
    ld [de], a
    jr nz, jr_028_6d16

    jr nz, jr_028_6c68

    jr jr_028_6c8d

    ld d, d
    ret


    ld d, h
    ld h, b

jr_028_6cbc:
    add e
    cp l
    and d
    sbc b
    sbc d
    and a
    ld e, c
    push hl
    db $10
    ld h, $8c
    and l
    ld d, e
    ld [hl], b
    dec b
    adc d
    daa
    ld l, b
    ld [de], a
    ld d, l
    ld d, e
    ld [hl], h
    ld a, [bc]
    add hl, de
    add l
    call nz, $a131
    ld b, d
    sub $6a
    ld e, e
    ld b, h
    ld [hl], l
    call nz, $88b6
    ld [$8d08], a
    db $e4
    dec d
    inc d
    xor l
    dec e
    ld [de], a
    ld [de], a
    daa
    add a
    xor l
    ld l, l
    dec e
    inc e
    db $10
    ld d, d
    rst $00
    and e
    sub d
    ld h, l
    call nz, Call_000_3644
    ld a, [bc]
    reti


    dec bc
    xor h
    dec d
    or b
    db $10
    ret c

    inc [hl]
    ld c, a
    ld a, [hl+]
    ld d, e
    ld a, [bc]
    and $85
    ld c, c
    and [hl]
    ld h, [hl]
    ld e, b
    jr jr_028_6d17

    db $eb
    inc [hl]
    cp b
    db $10
    sbc c
    dec d
    sub [hl]

jr_028_6d16:
    ld a, [hl+]

jr_028_6d17:
    add sp, $0a
    sbc a
    ld b, b
    ld c, c
    ld bc, $112a
    or d
    rrc e
    ld c, d
    ld a, e
    ld d, b
    ld [hl], l
    inc de
    sbc c
    and d
    jr z, jr_028_6cbc

    ld d, h
    ld d, l
    ld [de], a
    ld h, b
    ld h, d
    rrca
    sub b
    ld h, d
    rst $30
    ld d, c
    ld b, d
    and c
    sub d
    ld a, [hl+]
    ld e, h
    ld b, $65
    ld d, e
    cp b
    add hl, hl
    and h
    ld l, e
    db $f4
    adc d
    jp c, $8595

    ld b, c
    ld b, e
    reti


    ld e, c
    and d
    ld l, $62
    inc hl
    inc d
    ld d, l
    call nc, Call_028_6a55
    ld c, a
    xor c
    sbc d
    ld bc, $0a32
    ld l, h
    ld h, $65
    ld d, e
    ret c

    add hl, hl
    ld h, h
    jr nz, jr_028_6d17

    xor c
    ld a, [$a6b4]
    ld b, h
    ld d, l
    call nz, $a24d
    ld h, $6a
    ld a, [hl+]
    db $10
    ld d, e
    pop de
    ld e, h
    ld b, b
    ld a, [c]
    nop
    and d
    ld [$054a], sp
    push af
    adc b
    add hl, hl
    sub h
    ld e, h
    call c, $a215
    ld l, d
    add e
    nop
    daa
    add sp, $4d
    jp nc, $e887

    dec hl
    and h
    ld d, [hl]
    reti


    ld d, e
    ld [hl], h
    adc d
    xor l
    dec e
    nop
    ld d, $19
    ld e, d
    ld [c], a
    inc de
    call c, Call_000_1b22
    xor b
    ld c, d
    sub e
    dec e
    inc d
    ld [de], a
    ld [$4d6b], sp
    ld d, d
    ld h, a
    adc b
    ld [bc], a
    db $e3
    ldh a, [$0e]
    add sp, $17
    ldh a, [$0d]
    ld h, h
    sub a

jr_028_6db2:
    ld [$8e1b], a
    ld l, d
    sub c
    ld e, l
    dec e
    ld [hl], b
    ld [bc], a
    ld d, c
    rst $18
    ld d, c
    ld [hl], l
    xor d
    adc [hl]
    sbc d
    xor e
    inc d
    ld h, l
    ld b, [hl]
    rst $08
    ld b, $25
    jp z, $88a8

    call z, Call_000_1314
    sub e
    ld e, h
    and e
    inc [hl]
    ld [hl-], a
    or h
    inc d
    ld l, l
    adc d
    ld [hl-], a
    adc d
    ld [de], a
    ld h, e
    xor e
    ld c, c
    add hl, bc
    ld c, c
    jp hl


    inc h
    and a
    db $10
    ret c

    ld d, c
    ld a, h
    sub b
    call nc, $f5a5
    inc b
    sub h
    ld b, d
    or $04
    sub b
    dec h
    dec hl
    dec h
    add hl, hl
    jr c, jr_028_6db2

    ld c, b
    xor $90
    push de
    inc b
    inc c
    ld bc, $22e1
    ld a, [hl+]
    ld [hl], b
    ld d, l
    ld l, b
    ld c, c
    ld [hl+], a
    ld [hl], a
    sub c
    jp nz, $d2a1

    ld a, [hl+]
    ld e, h
    ld b, $e5
    dec e
    jp z, $8812

    ret c

    sub h
    add h
    ld c, c
    ld c, e
    pop hl
    ld h, c
    dec e
    ret c

    inc d
    nop
    or c
    ld h, b
    ld a, h
    and b
    xor a
    sub b
    db $dd
    db $10
    ld [hl], a
    add hl, bc
    rst $28
    ld c, d
    sbc d
    ld b, h
    inc l
    rrca
    ldh a, [$27]
    xor b
    ld d, l
    ld a, [$94b3]
    ld a, [hl+]
    ld c, l
    inc de
    ld b, h
    dec d
    xor [hl]
    ld b, d
    db $eb
    inc de
    ld h, a
    inc de
    and d
    ld bc, $04b8
    sub $8a
    ret


    adc e
    xor h
    ld d, c
    ld [hl], d
    ld c, e
    rlc b
    ld hl, $9181
    ld b, [hl]
    ld b, [hl]
    xor b
    add hl, hl
    sub b
    ld d, b
    ld c, c
    ld l, $60
    ld h, c
    inc bc
    inc l
    cp a
    ld b, b
    dec e
    or b

jr_028_6e61:
    nop
    rst $38
    nop
    cp $01
    dec e
    ld [bc], a
    ld [hl-], a
    cp a
    ld b, b
    dec e
    inc b
    jr nc, @+$1f

    inc b
    jr nc, jr_028_6e61

    db $10
    ei
    inc b
    rst $38
    nop
    rst $30
    ld [$807f], sp
    cp $01
    dec e
    ld [de], a
    ld [hl-], a
    dec e
    ld b, b
    nop
    dec e
    ld e, $30
    dec e
    inc b
    jr nc, jr_028_6ea7

    inc e
    jr nc, jr_028_6eaa

    ld [hl+], a
    nop
    rst $28
    db $10
    dec e
    inc d
    nop
    rst $18
    jr nz, jr_028_6f0f

    add b
    and $09
    rst $08
    db $10
    sbc d
    ld h, l
    dec e
    stop
    rst $38
    nop
    or $09
    ld a, a
    nop

jr_028_6ea7:
    rra
    add b
    adc a

jr_028_6eaa:
    ld h, b
    inc bc
    or h
    add hl, hl
    ld d, [hl]
    ld [hl], h
    adc e
    and d
    ld e, l
    ld c, c
    or [hl]
    or d
    ld c, l
    db $ed
    ld [de], a
    dec e
    ld b, h
    nop
    ld b, c
    xor d
    ld hl, $0554
    jp c, $b403

    or [hl]
    ld c, c
    rst $18
    jr nz, @-$07

    ld [$01fe], sp
    dec e
    nop
    ld [hl], $1d
    ld [de], a
    inc [hl]
    dec e
    adc d
    inc a
    ld a, a
    add b
    dec e
    ld [de], a
    inc [hl]
    dec e
    inc l
    ld [hl-], a
    dec e
    ld [de], a
    ld [hl-], a
    dec e
    jr c, jr_028_6f17

    ldh a, [rIF]
    jp $8e33


    ld l, [hl]
    sbc e
    ld e, e
    dec a
    cp l
    scf
    or a
    ld a, e
    ei
    dec a
    cp l
    rrca
    ldh a, [rSCX]
    ld c, h
    pop af
    or $f9
    ld a, [$dddc]
    or h
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76
    or $2d
    xor l
    dec sp
    cp e
    sbc a
    ld e, a
    adc a
    ld l, a

jr_028_6f0f:
    jp nz, $f032

    rrca
    cp h
    cp l
    sbc $df

jr_028_6f17:
    db $ec
    db $ed
    cp h
    cp l
    reti


    jp c, Jump_028_7671

    jp Jump_000_0fcc


    ldh a, [rNR33]
    and b
    rst $38
    ld c, l
    dec e
    ld e, a
    ld c, a
    ld c, l
    dec e
    cp a
    ld c, a
    ld c, l
    dec e
    rra
    ld e, a
    ld c, l
    dec e
    ld a, a
    ld e, a
    ld c, l
    dec e
    rst $18
    ld e, a
    ld c, l
    dec e
    ccf
    ld l, a
    ld c, l
    dec e
    sbc a
    ld l, a
    ld c, l
    dec e
    rst $38
    ld l, a
    ld c, l
    dec e
    ld e, a
    ld a, a
    ld c, l
    dec e
    cp a
    ld a, a
    dec l
    nop
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_028_6f8c

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
    jr nz, jr_028_6f6b

jr_028_6f6b:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_028_6f78

    inc c
    inc d

jr_028_6f78:
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

jr_028_6f8c:
    inc d
    ld [$2f2e], sp
    jr @+$1b

    jr jr_028_6fad

    ld a, [de]
    dec de
    inc c
    jr z, jr_028_6f99

jr_028_6f99:
    ld d, $17
    inc c
    ld h, d
    nop
    ld h, $27
    inc c
    inc d
    ld [$0b0a], sp
    jr c, jr_028_6fe0

    jr c, jr_028_6fe2

    inc c
    ld [$0c00], sp

jr_028_6fad:
    ld [$0c00], sp
    add d
    nop
    ld b, $07
    inc c
    inc d
    ld [$1b1a], sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    inc c
    jr z, jr_028_6fc0

jr_028_6fc0:
    inc c
    jr z, jr_028_6fc3

jr_028_6fc3:
    inc c
    and d
    nop
    ld d, $17
    inc c
    inc d
    ld [$860c], sp
    inc b
    inc c
    adc h
    ld [bc], a
    inc c
    add d
    ld [bc], a
    inc c
    inc d
    ld [$a60c], sp
    inc b
    inc c
    xor h
    ld [bc], a
    inc c
    and d
    ld [bc], a

jr_028_6fe0:
    inc c
    inc d

jr_028_6fe2:
    ld [$3534], sp
    inc c
    nop
    inc d
    inc c
    jp z, $3804

    add hl, sp
    inc c
    inc d
    ld [$3736], sp
    inc c
    jr nz, jr_028_7009

    inc c
    ld [$3a04], a
    dec sp
    inc c
    inc d
    ld [$0504], sp
    inc c
    nop
    inc e
    nop
    ld bc, $140c
    ld [$1514], sp

jr_028_7009:
    inc c
    jr nz, jr_028_7028

    db $10
    ld de, $140c
    ld [$2928], sp
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc c
    ld b, b
    ld [de], a
    nop
    ld bc, $820c
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

jr_028_7028:
    ld [de], a
    db $10
    ld de, $a20c
    db $10
    inc c
    ld [hl-], a
    ld a, [bc]
    inc c
    nop
    inc b
    inc c
    nop
    db $10
    inc c
    inc c
    rrca
    add hl, bc
    inc c
    jr nz, jr_028_704e

    inc c
    inc l
    rrca
    ld bc, $0200
    inc c
    jr z, jr_028_7070

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_028_707f

jr_028_704e:
    jr nc, jr_028_7081

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
    jr nz, jr_028_705e

jr_028_705e:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_028_706b

    inc c
    inc d

jr_028_706b:
    ld [$020c], sp
    ld [bc], a
    ld a, [bc]

jr_028_7070:
    dec bc
    jr nc, jr_028_70a4

    nop
    ld bc, $000c
    ld [bc], a
    inc c
    ld [de], a
    ld c, $2e
    cpl
    ld a, [de]
    dec de

jr_028_707f:
    ld [hl-], a
    inc sp

jr_028_7081:
    db $10
    ld de, $200c
    ld [bc], a
    inc c
    ld [hl-], a
    ld a, [bc]
    ld [$0809], sp
    add hl, bc
    inc c
    ld b, [hl]
    nop
    inc c
    ld a, [bc]
    inc b
    inc l
    dec l
    ld [$0c09], sp
    inc d
    ld [$1918], sp
    jr @+$1b

    inc c
    ld h, [hl]
    nop
    inc c
    ld a, [hl+]
    inc b

jr_028_70a4:
    ld l, $2f
    jr jr_028_70c1

    inc c
    inc d
    ld [$3534], sp
    inc c
    ret nz

    nop
    inc c
    ld [$0600], sp
    rlca
    ld [$0e09], sp
    rrca
    inc c
    ld b, [hl]
    nop
    inc c
    inc d
    ld [$3736], sp

jr_028_70c1:
    inc c
    ldh [rP1], a
    inc c
    jr z, jr_028_70c7

jr_028_70c7:
    ld d, $17
    jr @+$1b

    ld e, $1f
    inc c
    ld h, [hl]
    nop
    inc c
    or h
    ld a, [bc]
    nop
    ld bc, $0504
    inc c
    ld [$0c00], sp
    ld [$2000], sp
    ld hl, $080c
    nop
    inc c
    call nc, $100a
    ld de, $1514
    inc c
    jr z, jr_028_70ec

jr_028_70ec:
    inc c
    jr z, jr_028_70ef

jr_028_70ef:
    ld [hl+], a
    inc hl
    inc c
    jr z, jr_028_70f4

jr_028_70f4:
    inc c
    inc d
    ld [$0302], sp
    inc c
    nop
    nop
    inc c
    inc b
    db $10
    jr c, jr_028_713a

    jr c, jr_028_713c

    inc c
    ld [$0000], sp
    ld bc, $140c
    ld [$1312], sp
    inc c
    jr nz, jr_028_7110

jr_028_7110:
    inc c
    inc h
    db $10
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    inc c
    jr z, jr_028_711a

jr_028_711a:
    db $10
    ld de, $340c
    inc c
    inc c
    inc b
    nop
    inc c
    call nz, RST_00
    ld bc, $0302
    inc c
    ld b, b
    db $10
    inc c
    inc d
    rrca
    ld bc, $e40c
    nop
    db $10
    ld de, $1312
    inc c
    ld h, b
    db $10

jr_028_713a:
    inc c
    ld [hl], h

jr_028_713c:
    rra
    inc bc
    inc [hl]
    dec [hl]
    inc c
    inc c
    rrca
    add hl, bc
    inc c
    ldh [rP1], a
    inc c
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
    jr nc, jr_028_7188

    jr nc, jr_028_718a

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
    jr nz, jr_028_7167

jr_028_7167:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_028_7174

    inc c
    inc d

jr_028_7174:
    ld [$040c], sp
    nop
    ld [$0a09], sp
    dec bc
    inc [hl]
    dec [hl]
    jr nc, jr_028_71b1

    ld b, $07
    ld [$0c09], sp
    inc c
    nop
    inc c

jr_028_7188:
    inc d
    ld a, [bc]

jr_028_718a:
    ld l, $2f
    jr @+$1b

    ld a, [de]
    dec de
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld d, $17
    jr jr_028_71b1

    inc c
    inc l
    nop
    inc c
    inc d
    ld [$440c], sp
    ld [bc], a
    inc c
    add h
    nop
    inc c
    ld [$3800], sp
    add hl, sp
    inc c
    ld c, h
    nop
    inc c
    inc d
    ld [$640c], sp

jr_028_71b1:
    ld [bc], a
    inc c
    and h
    nop
    inc c
    jr z, jr_028_71b8

jr_028_71b8:
    ld a, [hl-]
    dec sp
    inc c
    ld l, h
    nop
    inc c
    inc d
    ld [$3130], sp
    inc c
    add h
    ld b, $0c
    adc h
    nop
    jr c, @+$3b

    jr nc, jr_028_71fd

    inc c
    inc d
    ld [$3332], sp
    inc c
    and h
    ld b, $0c
    xor h
    nop
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    inc c
    or h
    ld a, [bc]
    inc c
    nop
    inc d
    inc c
    adc $02
    inc c
    ld [$0c00], sp
    call nc, Call_000_0c0a
    jr nz, jr_028_7201

    inc c
    xor $02
    inc c
    jr z, jr_028_71f3

jr_028_71f3:
    inc c
    inc d
    ld [$0302], sp
    inc c
    ld b, b
    db $10
    inc b
    dec b

jr_028_71fd:
    inc c
    adc h
    nop
    nop

jr_028_7201:
    ld bc, $400c
    ld [de], a
    inc c

Call_028_7206:
    inc d
    ld [$1312], sp
    inc c
    ld h, b
    db $10
    inc d
    dec d
    inc c
    xor h
    nop
    db $10
    ld de, $600c
    ld [de], a
    inc c
    inc [hl]
    ld a, [bc]
    inc c
    ld [bc], a
    rrca
    dec l
    inc c
    ld [bc], a
    rrca
    dec hl
    nop
    ld [bc], a
    inc b
    jr z, @+$2b

    inc b
    nop
    nop
    inc l
    dec l
    jr nc, @+$33

    jr nc, jr_028_7261

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
    jr nz, jr_028_723e

jr_028_723e:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc b
    jr nz, jr_028_724b

    inc b
    inc d

jr_028_724b:
    ld [$0404], sp
    nop
    ld [$0a09], sp
    dec bc
    inc b
    ld [$070f], sp
    ld l, $2f
    jr jr_028_7274

    ld a, [de]
    dec de
    inc b
    jr z, @+$11

    dec b

jr_028_7261:
    inc b
    ld b, h
    nop
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    inc b
    ld [$0e00], sp
    rrca
    ld [$0409], sp
    adc [hl]
    nop
    inc b
    inc d

jr_028_7274:
    ld [$6404], sp
    nop
    ld [hl], $37
    ld [hl], $37
    inc b
    jr z, jr_028_727f

jr_028_727f:
    ld e, $1f
    jr @+$1b

    inc b
    xor [hl]
    nop
    inc b
    inc d
    ld [$0804], sp
    nop
    inc [hl]
    dec [hl]
    inc c
    dec c
    inc b
    adc b
    ld [bc], a
    inc b
    ld [$3000], sp
    ld sp, $1404
    ld [$2804], sp
    nop
    ld [hl], $37
    inc e
    dec e
    inc b
    xor b
    ld [bc], a
    inc b
    jr z, jr_028_72a8

jr_028_72a8:
    ld [hl-], a
    inc sp
    inc b
    or h
    ld a, [bc]
    inc b
    add h
    nop
    inc b
    call z, $2002
    ld hl, $8404
    ld [bc], a
    inc b
    call nc, Call_000_040a
    and h
    nop
    inc b
    db $ec
    ld [bc], a
    ld [hl+], a
    inc hl
    inc b
    and h
    ld [bc], a
    inc b
    inc d
    ld [$0302], sp
    inc b
    ld b, b
    db $10
    inc b
    ld b, $02
    inc b
    add h
    nop
    nop
    ld bc, $0302
    inc b
    inc d
    ld [$1312], sp
    inc b
    ld h, b
    db $10
    inc b
    ld h, $02
    inc b
    and h
    nop
    db $10
    ld de, $1312
    inc b
    inc [hl]
    ld a, [bc]
    inc b
    ld [bc], a
    ld b, $04
    ld d, b
    db $10
    inc b
    db $10
    rrca
    add hl, bc
    inc b
    ld [hl], b
    db $10
    inc b
    jr nc, jr_028_730b

    inc b
    ld [bc], a
    rrca
    dec hl
    nop
    ld [bc], a
    inc c
    jr z, @+$2b

    inc c
    nop
    nop
    inc l
    dec l

jr_028_730b:
    jr nc, jr_028_733e

    jr nc, jr_028_7340

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
    jr nz, jr_028_731d

jr_028_731d:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_028_732a

    inc c
    inc d

jr_028_732a:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    jr nc, jr_028_7366

    inc [hl]
    dec [hl]
    ld b, $07
    inc c
    ld b, d
    nop
    inc h
    dec h

jr_028_733e:
    inc c
    inc d

jr_028_7340:
    ld [$2f2e], sp
    jr jr_028_735e

    jr jr_028_7360

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
    ld [$460c], sp
    nop
    inc c
    add d
    ld [bc], a
    inc [hl]

jr_028_735e:
    dec [hl]
    inc c

jr_028_7360:
    adc d
    ld [bc], a
    ld b, $07
    inc c
    inc d

jr_028_7366:
    ld [$660c], sp
    nop
    inc c
    and d
    ld [bc], a
    ld [hl], $37
    inc c
    xor d
    ld [bc], a
    ld d, $17
    inc c
    inc d
    ld [$820c], sp
    ld [bc], a
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    adc b
    ld [bc], a
    inc c
    inc d
    ld [$a20c], sp
    ld [bc], a
    db $10
    ld de, $1312
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    xor b
    ld [bc], a
    inc c
    inc d
    ld [$3938], sp
    inc c
    nop
    db $10
    inc c
    ld c, h
    ld [bc], a
    inc c
    add b
    inc b
    inc c
    inc d
    ld [$3b3a], sp
    inc c
    jr nz, jr_028_73bc

    inc c
    ld l, h
    ld [bc], a
    inc c
    and b
    inc b
    inc c
    inc d
    ld [$0504], sp
    inc c
    nop
    ld [de], a
    jr c, @+$3b

jr_028_73bc:
    inc c
    add d
    inc b
    nop
    ld bc, $140c
    ld [$1514], sp
    inc c
    jr nz, jr_028_73db

    ld a, [hl-]
    dec sp
    inc c
    and d
    inc b
    db $10
    ld de, $140c
    ld [$2928], sp
    inc c
    ret z

    ld [bc], a
    inc c
    ld c, b
    db $10

jr_028_73db:
    inc c
    add $02
    inc c
    ld [de], a
    inc c
    inc c
    add sp, $02
    inc c
    ld l, b
    db $10
    inc c
    and $02
    inc c
    ld [hl-], a
    ld a, [bc]
    inc c
    nop
    rrca
    dec l
    nop
    ld [bc], a
    inc [hl]
    jr z, @+$2b

    inc [hl]
    nop
    nop
    inc l
    dec l
    jr nc, jr_028_742e

    jr nc, @+$33

    inc h
    dec h
    inc [hl]
    nop
    ld [bc], a
    rst $38
    inc [hl]
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc [hl]
    jr nz, jr_028_740d

jr_028_740d:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc [hl]
    jr nz, jr_028_741a

    inc [hl]
    inc d

jr_028_741a:
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld c, $0f
    inc [hl]
    ld [$0e00], sp
    rrca
    inc [hl]
    ld b, d
    nop
    inc h
    dec h
    inc [hl]

jr_028_742e:
    inc d
    ld [$2f2e], sp
    jr jr_028_744d

    jr @+$1b

    ld e, $1f
    inc [hl]
    jr z, jr_028_743b

jr_028_743b:
    ld e, $1f
    inc [hl]
    ld h, d
    nop
    ld h, $27
    inc [hl]
    inc d
    ld [$0b0a], sp
    jr c, jr_028_7482

    jr c, jr_028_7484

    jr nz, jr_028_746e

jr_028_744d:
    inc [hl]
    ld [$2000], sp
    ld hl, $8234
    nop
    ld b, $07
    inc [hl]
    inc d
    ld [$1b1a], sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld [hl+], a
    inc hl
    inc [hl]
    jr z, jr_028_7465

jr_028_7465:
    ld [hl+], a
    inc hl
    inc [hl]
    and d
    nop
    ld d, $17
    inc [hl]
    inc d

jr_028_746e:
    ld [$3130], sp
    inc [hl]
    add d
    nop
    inc [hl]
    ld [$3400], sp
    ld [$3400], sp
    jp nz, Jump_000_3402

    inc d
    ld [$3332], sp

jr_028_7482:
    inc [hl]
    and d

jr_028_7484:
    nop
    inc [hl]
    jr z, jr_028_7488

jr_028_7488:
    inc [hl]
    jr z, jr_028_748b

jr_028_748b:
    inc [hl]
    ld [c], a
    ld [bc], a
    inc [hl]
    or h
    rrca
    add hl, sp
    inc b
    dec b
    inc [hl]
    add d
    nop
    inc c
    dec c
    inc [hl]
    ld [$0c00], sp
    dec c
    inc [hl]
    add d
    nop
    nop
    ld bc, $1434
    ld [$1514], sp
    inc [hl]
    and d
    nop
    inc e
    dec e
    inc [hl]
    jr z, jr_028_74b0

jr_028_74b0:
    inc e
    dec e
    inc [hl]
    and d
    nop
    db $10
    ld de, $1434
    ld [$2928], sp
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc [hl]
    ld b, $04
    inc [hl]
    add d
    db $10
    inc [hl]
    ld [de], a
    inc c
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc [hl]
    ld h, $04
    inc [hl]
    and d
    db $10
    inc [hl]
    ld [hl-], a
    ld a, [bc]
    inc [hl]
    nop
    rrca
    dec l
    nop
    ld [bc], a
    inc c
    jr z, jr_028_7508

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_028_74f9

    inc c
    inc d
    ld [$2928], sp
    inc l
    dec l
    ld [$0c09], sp
    ld b, h
    ld b, $24
    dec h

jr_028_74f9:
    inc c
    ld [de], a
    inc c
    ld l, $2f
    jr @+$1b

    inc c
    ld h, h
    ld b, $26
    daa
    inc c
    ld [hl-], a
    ld a, [bc]

jr_028_7508:
    ld [$0a09], sp
    dec bc
    jr c, jr_028_7547

    inc c
    add h
    ld b, $06
    rlca
    ld [$0c09], sp
    inc d
    ld [$1918], sp
    ld a, [de]
    dec de
    ld a, [hl-]
    dec sp
    inc c
    and h
    ld b, $16
    rla
    jr @+$1b

    inc c
    inc d
    ld [$3130], sp
    inc c
    ret nz

    nop
    inc c
    add h
    ld b, $0c
    ret nz

    nop
    inc c
    inc d
    ld [$3332], sp
    inc c
    ldh [rP1], a
    inc c
    and h
    ld b, $0c
    ldh [rP1], a
    inc c
    or h
    rrca
    rlca
    inc c
    ret nz

jr_028_7547:
    ld [bc], a
    inc c
    call nc, $070f
    inc c
    ldh [rSC], a
    inc c
    inc d
    ld [$0302], sp
    inc b
    dec b
    inc [hl]
    dec [hl]
    inc c
    ret nz

    ld [bc], a
    jr nc, jr_028_758e

    inc [hl]
    dec [hl]
    nop
    ld bc, $0302
    inc c
    inc d
    ld [$1312], sp
    inc d
    dec d
    ld [hl], $37
    inc c
    ldh [rSC], a
    ld [hl-], a
    inc sp
    ld [hl], $37
    db $10
    ld de, $1312
    inc c
    inc [hl]
    inc c
    inc [hl]
    dec [hl]
    inc c
    add h
    ld d, $0c
    ld d, b
    rrca
    ld bc, $3736
    inc c
    and h
    ld d, $0c
    ld [hl], b
    inc c
    inc c
    nop
    nop

jr_028_758e:
    inc c
    ld b, b
    ld [de], a
    inc c
    ld c, [hl]
    ld [de], a
    inc c
    db $10
    rrca
    ld bc, $600c
    ld [de], a
    inc c
    ld l, [hl]
    ld [de], a
    inc c
    jr nc, jr_028_75ad

    nop
    ld [bc], a
    inc c
    jr z, jr_028_75cf

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca

jr_028_75ad:
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_028_75c0

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

jr_028_75c0:
    ld [$2f2e], sp
    jr jr_028_75de

    inc c
    ld h, d
    ld a, [bc]
    ld h, $27
    inc c
    inc d
    ld [$0b0a], sp

jr_028_75cf:
    inc [hl]
    dec [hl]
    inc c
    add d
    ld a, [bc]
    ld b, $07
    inc c
    inc d
    ld [$1b1a], sp
    ld [hl], $37
    inc c

jr_028_75de:
    and d
    ld a, [bc]
    ld d, $17
    inc c
    inc d
    ld [$3130], sp
    jr nc, jr_028_761a

    nop
    ld bc, $0504
    inc c
    add d
    nop
    inc c
    call nz, Call_000_0c00
    ret nz

    nop
    inc c
    inc d
    ld [$3332], sp
    ld [hl-], a
    inc sp
    db $10
    ld de, $1514
    inc c
    and d
    nop
    inc c
    db $e4
    nop
    inc c
    ldh [rP1], a
    inc c
    or h
    inc c
    inc h
    dec h
    inc l
    dec l
    inc c
    add d
    nop
    inc c
    inc b
    db $10
    inc c
    ret nc

    rrca

jr_028_761a:
    ld bc, $2726
    ld l, $2f
    inc c
    and d
    nop
    inc c
    inc h
    db $10
    inc c
    ldh a, [$0c]
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    jr z, jr_028_7657

    inc c
    ld c, $12
    inc h
    dec h
    jr z, jr_028_765e

    inc c
    ld b, b
    db $10
    inc c
    inc d
    ld [$1312], sp
    ld [de], a
    inc de
    ld a, [hl+]
    dec hl
    inc c
    ld l, $12
    ld h, $27
    ld a, [hl+]
    dec hl
    inc c
    ld h, b
    db $10
    inc c
    inc d
    ld [$000c], sp
    ld [bc], a
    inc c
    ld b, [hl]
    ld d, $0c
    db $10
    rrca

jr_028_7657:
    inc bc
    inc c
    ld h, [hl]
    ld d, $0c
    jr nc, @+$0e

jr_028_765e:
    inc c
    add b
    rra
    dec l
    nop
    ld [bc], a
    inc c
    jr z, jr_028_7690

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c

Jump_028_7671:
    jr nz, jr_028_7681

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

jr_028_7681:
    ld [$2f2e], sp
    jr @+$1b

    inc c
    ld h, d
    ld a, [bc]
    ld h, $27
    inc c
    inc d
    ld [$0b0a], sp

jr_028_7690:
    jr c, jr_028_76cb

    inc c
    add d
    inc b
    jr nc, @+$33

    inc c
    adc h
    nop
    ld b, $07
    inc c
    inc d
    ld [$1b1a], sp
    ld a, [hl-]
    dec sp
    inc c
    and d
    inc b
    ld [hl-], a
    inc sp
    inc c
    xor h
    nop
    ld d, $17
    inc c
    inc d
    ld [$8c0c], sp
    nop
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    adc h
    ld [bc], a
    jr nc, jr_028_76f1

    inc c
    inc d
    ld [$ac0c], sp
    nop
    db $10
    ld de, $1312
    ld [de], a

jr_028_76cb:
    inc de
    inc d
    dec d
    inc c
    xor h
    ld [bc], a
    ld [hl-], a
    inc sp
    inc c
    or h
    inc c
    ld b, $07
    inc c
    ld c, [hl]
    ld [bc], a
    inc c
    ret z

    inc b
    inc c
    call nc, Call_000_160c
    rla
    inc c
    ld l, [hl]
    ld [bc], a
    inc c
    add sp, $04
    inc c
    inc d
    ld [$0504], sp
    inc [hl]
    dec [hl]
    inc c

jr_028_76f1:
    adc h
    inc b
    ld [$0a09], sp
    dec bc
    inc c
    jp nz, Jump_000_0c00

    inc d
    ld [$1514], sp
    ld [hl], $37
    inc c
    xor h
    inc b
    jr jr_028_771f

    ld a, [de]
    dec de
    inc c
    ld [c], a
    nop
    inc c
    inc d
    ld [$2928], sp
    inc c
    add $02
    inc c
    ld b, d
    db $10
    inc c
    adc b
    ld [bc], a
    inc c
    ld d, d
    ld a, [bc]
    ld a, [hl+]
    dec hl
    inc c

jr_028_771f:
    and $02
    inc c
    ld h, d
    db $10
    inc c
    xor b
    ld [bc], a
    inc c
    ld [hl], d
    ld a, [bc]
    inc c
    nop
    ld [bc], a
    inc l
    dec l
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    inc c
    call nz, Call_000_0c02
    ld [de], a
    rrca
    ld bc, $2f2e
    ld [hl], $37
    ld [hl], $37
    inc c
    db $e4
    ld [bc], a
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, jr_028_7774

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, @+$10

    inc c
    inc d
    ld [$2d2c], sp
    ld [$0c09], sp
    ld b, d
    inc b
    inc h
    dec h
    inc c
    ld c, $0e
    ld l, $2f
    jr @+$1b

    inc c
    ld h, d
    inc b
    ld h, $27
    inc c
    ld l, $0e
    ld a, [bc]
    dec bc

jr_028_7774:
    jr nc, @+$33

    inc c
    add d
    inc b
    inc c
    ld c, h
    nop
    inc c
    ld b, b
    nop
    inc c
    inc d
    ld [$1b1a], sp
    ld [hl-], a
    inc sp
    inc c
    and d
    inc b
    inc c
    ld l, h
    nop
    inc c
    ld h, b
    nop
    inc c
    inc d
    ld [$820c], sp
    ld b, $0c
    adc d
    nop
    inc l
    dec l
    inc c
    add b
    nop
    inc c
    inc d
    ld [$a20c], sp
    ld b, $0c
    xor d
    nop
    ld l, $2f
    inc c
    and b
    nop
    inc c
    inc d
    ld [$3534], sp
    inc [hl]
    dec [hl]
    inc c
    call nz, Call_000_3808
    add hl, sp
    inc c
    jp nc, $360a

    scf
    ld [hl], $37
    inc c
    db $e4
    ld [$3b3a], sp
    inc c
    ld a, [c]
    ld a, [bc]
    inc b
    dec b
    inc c
    nop
    db $10
    inc c
    ld [bc], a
    ld [de], a
    ld b, $07
    ld a, [bc]
    dec bc
    jr c, @+$3b

    nop
    ld bc, $140c
    ld [$1514], sp
    inc c
    jr nz, jr_028_77ee

    inc c
    ld [hl+], a
    ld [de], a
    ld d, $17
    ld a, [de]
    dec de
    ld a, [hl-]
    dec sp
    db $10
    ld de, $340c
    ld a, [bc]
    inc c
    ld b, d

jr_028_77ee:
    ld [de], a
    inc c
    nop
    db $10
    jr c, jr_028_782d

    inc c
    adc h
    db $10
    inc h
    dec h
    inc c
    ld d, h
    ld a, [bc]
    inc c
    ld h, d
    ld [de], a
    inc c
    jr nz, jr_028_7812

    ld a, [hl-]
    dec sp
    inc c
    xor h
    db $10
    ld h, $27
    inc c
    inc d
    ld [$2928], sp
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc

jr_028_7812:
    inc c
    ld b, b
    ld [de], a
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
    ld [de], a
    db $10
    ld de, $e20c
    db $10
    inc c
    ld [hl-], a
    ld a, [bc]
    nop

jr_028_782d:
    ld [bc], a
    inc c
    jr z, jr_028_785a

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_028_784b

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

jr_028_784b:
    dec h
    inc c
    inc d
    rrca
    ld bc, $2f2e
    jr jr_028_786d

    inc c
    ld l, d
    ld [bc], a
    ld h, $27
    inc c

jr_028_785a:
    inc d
    ld [$4a0c], sp
    inc b
    ld a, [bc]
    dec bc
    jr nc, jr_028_7894

    jr nc, @+$33

    jr c, jr_028_78a0

    jr c, jr_028_78a2

    ld b, $07
    inc c
    inc d

jr_028_786d:
    ld [$6a0c], sp
    inc b
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld d, $17
    inc c
    inc d
    ld [$8a0c], sp
    nop
    inc c
    ret nz

    ld [bc], a
    inc [hl]
    dec [hl]
    inc c
    jp z, Jump_000_0c00

    adc [hl]
    nop
    inc c
    inc d
    ld [$aa0c], sp
    nop

jr_028_7894:
    inc c
    ldh [rSC], a
    ld [hl], $37
    inc c
    ld [$0c00], a
    xor [hl]
    nop
    inc c

jr_028_78a0:
    or h
    ld a, [bc]

jr_028_78a2:
    nop
    ld bc, $0302
    inc c
    inc b
    ld [de], a
    inc b
    dec b
    inc [hl]
    dec [hl]
    inc c
    adc d
    nop
    inc c
    call nc, $100a
    ld de, $1312
    inc c
    inc h
    ld [de], a
    inc d
    dec d
    ld [hl], $37
    inc c
    xor d
    nop

jr_028_78c1:
    inc c
    inc d
    ld [$0302], sp
    inc c
    ld b, h
    ld b, $0a
    dec bc
    inc [hl]
    dec [hl]
    inc c
    ld [bc], a
    db $10
    inc c
    inc d
    ld [$1312], sp
    inc c
    ld h, h
    ld b, $1a
    dec de
    ld [hl], $37
    inc c
    ld [hl+], a
    db $10
    inc c
    inc [hl]
    ld c, $2c
    dec l
    inc c
    ret nz

    inc b

jr_028_78e7:
    inc h
    dec h
    inc c
    ld [de], a
    rrca
    ld bc, $2f2e
    inc c
    ldh [rDIV], a
    ld h, $27
    inc c
    ld [hl-], a
    rrca
    ld bc, $860c
    ld [de], a
    inc c
    ld [bc], a
    db $10
    inc c
    db $10
    rrca
    inc bc
    inc c
    and [hl]
    ld [de], a
    inc c
    ld [hl+], a

Call_028_7907:
    db $10
    inc c
    jr nc, jr_028_7917

    nop
    ld [bc], a
    jr nz, jr_028_7937

    add hl, hl
    jr nz, jr_028_7912

jr_028_7912:
    ld c, $ff
    jr nz, jr_028_792a

    rlca

jr_028_7917:
    ld a, [hl+]
    dec hl

jr_028_7919:
    jr nz, jr_028_793b

    ld c, $20
    inc d
    ld [$2d2c], sp
    ld [$2009], sp
    ld b, d
    nop
    inc h
    dec h
    jr nz, @+$0c

jr_028_792a:
    rrca
    inc bc
    ld l, $2f
    jr @+$1b

jr_028_7930:
    jr nz, @+$64

    nop
    ld h, $27
    jr nz, jr_028_7961

jr_028_7937:
    rrca
    inc bc
    ld a, [bc]
    dec bc

jr_028_793b:
    jr c, jr_028_7976

    jr nz, jr_028_78c1

    nop
    jr nz, jr_028_798a

    inc b
    jr nz, jr_028_7985

    nop
    jr nz, @+$16

    ld [$1b1a], sp
    ld a, [hl-]
    dec sp
    jr nz, @-$5c

    nop
    jr nz, jr_028_79ba

    inc b
    jr nz, jr_028_79b5

    nop
    jr nz, @+$16

    ld [$3130], sp
    jr nc, jr_028_798e

    inc c

jr_028_795e:
    dec c
    jr nz, jr_028_78e7

jr_028_7961:
    inc b
    inc l
    dec l
    ld a, [bc]
    dec bc
    jr nc, @+$33

    jr nz, @+$16

jr_028_796a:
    ld [$3332], sp
    ld [hl-], a
    inc sp
    inc e
    dec e
    jr nz, jr_028_7919

    inc b
    ld l, $2f

jr_028_7976:
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    jr nz, jr_028_7930

    inc c
    ld c, $0f
    jr nc, @+$33

    ld b, $07
    jr nz, @+$44

jr_028_7985:
    nop
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]

jr_028_798a:
    jr nz, jr_028_795e

    ld c, $1e

jr_028_798e:
    rra
    ld [hl-], a
    inc sp
    ld d, $17
    jr nz, @+$64

    nop
    ld a, [de]
    dec de
    ld [hl], $37
    jr nz, jr_028_798e

    ld a, [bc]
    ld [bc], a
    inc bc

jr_028_799f:
    ld [bc], a
    inc bc
    inc l
    dec l
    jr nc, @+$33

    jr nz, @+$12

    db $10
    jr nz, jr_028_796a

    nop
    inc [hl]
    dec [hl]
    nop
    ld bc, $1420
    ld [$1312], sp
    ld [de], a

jr_028_79b5:
    inc de
    ld l, $2f
    ld [hl-], a
    inc sp

jr_028_79ba:
    jr nz, @+$32

    db $10
    jr nz, jr_028_799f

    nop
    ld [hl], $37
    db $10
    ld de, $1420
    ld [$8c20], sp
    ld [bc], a
    jr c, jr_028_7a05

    jr nz, @+$4a

    inc d
    jr nz, @-$78

    nop
    jr nz, jr_028_79e8

    inc c
    ld l, $2f
    ld a, [hl-]
    dec sp
    jr nz, jr_028_7a43

    inc d
    jr nz, @-$58

    nop
    jr nz, jr_028_7a55

    inc e
    jr z, jr_028_7a0d

    inc b
    dec b
    inc [hl]
    dec [hl]

jr_028_79e8:
    jr nz, jr_028_7a3a

    db $10
    jr nz, @+$42

    db $10
    jr nz, @+$14

    rrca
    ld bc, $1514
    ld [hl], $37
    jr nz, jr_028_7a68

    db $10
    jr nz, jr_028_7a5b

    db $10
    jr nz, @+$34

    ld a, [bc]
    ldh [rP1], a
    ld bc, $01ff
    rst $38

jr_028_7a05:
    ei
    ld bc, $fcf0
    ldh a, [rSB]
    rra
    inc bc

jr_028_7a0d:
    ld bc, $0400
    rrca
    ld bc, $032f
    ld bc, $0c00
    ld bc, $0f20
    dec b
    ld bc, $fff8
    dec c
    ld bc, $0430
    ld bc, $0430
    ld bc, $0420
    ld bc, $0420
    ld bc, $0c18
    ld bc, $0c78
    ld bc, $0fa8
    dec b
    ld bc, $04d7
    jr nc, jr_028_7a3a

jr_028_7a3a:
    inc b
    ld b, $06
    dec bc
    dec c
    add hl, de
    rla
    dec hl
    dec [hl]

jr_028_7a43:
    inc hl
    ccf
    ld l, a
    ld d, c
    ld h, [hl]
    ld e, [hl]
    sbc $a2
    inc b
    ld a, [$01f2]
    ld bc, $0101
    ld [bc], a
    inc bc
    inc bc

jr_028_7a55:
    ld [bc], a
    inc bc
    inc bc
    call z, $dcbc

jr_028_7a5b:
    and h
    ld hl, sp-$68
    ld h, b
    ldh [$c0], a
    ld b, b
    add b
    add b
    add b
    add b
    nop
    nop

jr_028_7a68:
    jr nc, jr_028_7a6a

jr_028_7a6a:
    ld bc, $3c00
    inc a
    ld a, [hl]
    ld a, [hl]
    rst $38
    ld bc, $0204
    inc a
    ld a, [hl]
    nop
    inc a
    ld bc, $ffa0
    dec c
    nop
    ld [bc], a
    ld bc, $003c
    ld a, [hl]
    inc a
    rst $38
    ld a, [hl]
    rst $38
    ld h, [hl]
    ld bc, $0f06
    nop
    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    nop
    inc a
    nop
    inc a
    jr jr_028_7b11

    jr jr_028_7b13

    jr c, jr_028_7b15

    jr c, @+$7e

    jr jr_028_7ad9

    ld bc, $0e2b
    ld bc, $f8ff
    ld b, $0f
    ld b, $1f
    ld c, $1e
    inc c
    ld a, $1c
    inc a
    jr jr_028_7b2b

    jr c, @+$81

    jr nc, @+$01

    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld bc, $093f
    ccf
    ld b, $3f
    ld e, $3f
    ld e, $3f
    ld b, $ff
    ld b, $01
    ld d, $06
    ld c, $00
    ld e, $0c
    ld bc, $0050
    ld a, $1c
    ld a, [hl]
    inc a
    ld a, [hl]
    inc a
    cp $6c
    cp $6c
    rst $38

jr_028_7ad9:
    ld l, h
    ld bc, $015a
    inc c
    ld bc, $0082
    ld e, $00
    rst $38
    nop
    ld bc, $015a
    ld h, b
    ldh a, [$60]
    db $fc
    ld h, b
    cp $7c
    ld bc, $0004
    ld a, a
    ld bc, $0973
    ld bc, $0500
    ld bc, $05a9
    ld bc, $0a12
    ld bc, $03a0
    ld bc, HeaderCartridgeType
    rra
    ld c, $1f
    ld bc, $0183
    ld bc, $002c
    ld a, h
    jr c, jr_028_7b89

jr_028_7b11:
    jr nc, jr_028_7b8b

jr_028_7b13:
    jr nc, jr_028_7b8d

jr_028_7b15:
    ld bc, $fbff
    ld bc, $0902
    ld bc, $0abb
    ld bc, $0513
    ld a, a
    ld a, $01
    ld [hl], d
    inc bc
    ld bc, $011b
    rrca
    nop

jr_028_7b2b:
    rrca
    ld b, $1f
    ld bc, $01eb
    ld a, $01
    add l

jr_028_7b34:
    nop
    ld bc, $0223
    jr nc, @-$06

    jr nc, jr_028_7b34

    ld [hl], b
    ld hl, sp+$60
    ldh a, [$60]
    ldh a, [rSB]
    sbc a
    nop
    ld a, d
    rst $38
    ld b, d
    rst $38
    ld [hl], d
    rst $38
    ld b, d
    rst $20
    ld bc, $1069
    nop
    cp $00
    cp $f4
    cp $84
    ld bc, $1072
    rst $38
    add h
    rst $38
    rst $30
    rst $38
    nop
    ld a, b
    nop
    ld a, h
    jr c, jr_028_7be3

    inc h
    ld [hl], a
    ld [hl+], a
    ld [hl], a
    ld [hl+], a
    cp $24
    db $fc
    cp b
    ld hl, sp+$01
    and b
    rst $38
    ld c, l
    ld bc, $1dee
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_028_7b89:
    nop
    nop

jr_028_7b8b:
    nop
    nop

jr_028_7b8d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_028_7be3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_028_7ddb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_028_7f80:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
