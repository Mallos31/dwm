; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $07b", ROMX[$4000], BANK[$7b]

    add e
    inc e
    inc a
    inc a
    inc bc
    inc e
    sbc h
    ld a, $3e
    ld a, [hl]
    rst $38
    rst $20
    adc $3c
    ld a, e
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    rst $00
    ccf
    ccf
    rst $00
    rst $38
    ld a, [hl]
    ld a, $7e
    ld a, [hl]
    cp $ee
    rst $38
    rst $38
    ld c, $ff
    rst $38
    inc bc
    ret nz

    adc e
    adc $c0
    ret z

    rst $38
    rst $38
    ld bc, $a101
    ld sp, $c111
    inc bc
    rst $38
    add l
    db $fc
    pop af
    ld a, [c]
    ld [c], a
    ld [c], a
    inc bc
    rst $38
    sbc d
    ccf
    adc a
    ld c, a
    ld b, a
    ld b, a
    nop
    inc bc
    rrca
    inc e
    ld sp, $6232
    ld h, d
    nop
    ret nz

    ldh a, [$38]
    adc h
    ld c, h
    ld b, [hl]
    ld b, [hl]
    rlca
    rra
    ccf
    ld a, a
    ld a, a
    inc bc
    rst $38
    add l
    ldh [$f8], a
    db $fc
    cp $fe
    dec de
    rst $38
    ld [$0300], sp
    rst $38
    add l
    db $fc
    ldh a, [$f0]
    ldh [$e0], a
    inc bc
    rst $38
    add c
    inc a
    inc b
    nop
    add d
    rst $38
    rst $38
    inc bc
    nop
    add d
    rst $38
    nop
    inc bc
    rst $38
    adc d
    rlca
    inc bc
    inc bc
    db $e3
    inc hl
    and e
    call $c0c0
    ret z

    inc bc
    ret nz

    add l
    rst $38
    and c
    ld sp, $4101
    inc bc
    ld bc, $ffae
    jp nz, $e2c2

    pop hl
    ldh a, [$fc]
    rst $38
    rst $38
    ld b, e
    ld b, e
    ld b, a
    add a
    rrca
    ccf
    rst $38
    rst $38
    ld b, d
    ld b, d
    ld [hl+], a
    ld hl, $0c10
    inc bc
    nop
    ld b, d
    ld b, d
    ld b, h
    add h
    ld [$c030], sp
    nop
    rst $38
    rst $38
    db $dd
    ei
    db $dd
    ld a, [$fedc]
    rst $38
    rst $38
    rst $30
    cp a
    rst $18
    inc bc
    nop
    add l
    rst $38
    db $fd
    jp hl


    or c
    pop bc
    inc bc
    ld bc, $8188
    sub e
    and a
    adc l
    sbc c
    or c
    and c
    rst $38
    ld [$08fe], sp
    rst $38
    add [hl]
    push bc
    call nz, $c0c7
    ret nz

    ldh [$03], a
    rst $38
    add d
    nop
    rst $38
    inc bc
    nop
    add d
    rst $38
    rst $38
    inc b
    nop
    add c
    inc a
    inc bc
    rst $38
    add l
    rlca
    rlca
    rrca
    rrca
    ccf
    inc b
    rst $38
    add [hl]
    db $fd
    pop hl
    pop de
    ret


    pop bc
    add c
    inc bc
    rst $38
    adc l
    rst $00
    db $d3
    set 0, c
    add c
    rst $38
    db $fd
    pop bc
    pop bc
    pop de
    ret


    pop bc
    add c
    inc bc
    rst $38
    adc c
    push de
    ldh [$d0], a
    ld h, b
    ret nc

    nop
    rst $38
    rst $38
    ld d, l
    dec b
    nop
    sub b
    rst $38
    rst $38
    ld d, c
    ld bc, $0001
    ld bc, $fe00
    or $dc
    cp $dc
    add sp, -$70
    rst $38
    rlca
    nop
    add c
    rst $38
    rlca
    ld bc, $ff89
    ldh [$c0], a
    and b
    ldh [$c0], a
    ret nz

    ldh [$e0], a
    ld [$0801], sp
    nop
    add d
    ldh [$e0], a
    inc b
    ldh a, [$82]
    ldh [$e0], a
    ld [$04a3], sp
    nop
    add a
    inc c
    rrca
    rlca
    rlca
    rst $38
    ld bc, $03fd
    dec b
    cp l
    push bc
    push bc
    rst $38
    rst $38
    cp a
    cp a
    xor a
    xor a
    xor e
    xor e
    rst $38
    rst $38
    db $fd
    db $fd
    push af
    push af
    push de
    push de
    rst $38
    add b
    rst $38
    and b
    cp a
    add sp, -$51
    cp d
    rst $38
    ld bc, $05ff
    db $fd
    rla
    push af
    ld e, l
    rlca
    rra
    ld sp, $596d
    pop af
    and c
    rst $38
    ldh [$f8], a
    adc h
    adc [hl]
    sbc d
    or e
    and c
    rst $38
    rst $38
    rst $18
    or $a0
    ldh [$c0], a
    ret nz

    ldh [rIE], a
    sbc $73
    dec b
    nop
    add e
    rst $38
    di
    cp l
    dec b
    ld bc, $1090
    jr c, jr_07b_421a

    sub $7c
    add hl, sp
    inc de
    dec b
    ld [$3e1c], sp
    ld [hl], a
    ld a, [$b8dc]
    ldh a, [$08]
    nop
    ld [$82c5], sp
    rlca
    rlca
    inc b
    rrca
    add h
    rlca
    rlca
    and e
    and e
    inc bc
    and b
    add a
    cp a
    add b
    rst $38
    ldh [$e0], a
    ldh a, [$30]
    inc b
    nop
    and b
    xor d
    xor e
    xor b
    xor a
    and b
    cp a
    add b
    rst $38
    ld d, l
    push de
    dec d
    push af
    dec b
    db $fd
    ld bc, $ebff
    xor a
    cp a
    rst $28
    cp a
    cp a
    rst $38
    rst $38
    rst $10
    push af
    db $fd
    rst $30
    db $fd
    db $fd
    rst $38
    rst $38
    stop
    adc b
    and b
    ret nz

    ldh [$e0], a
    ret nz

    ldh [$c0], a
    rst $38
    rlca
    nop
    add c
    rst $38
    rlca
    ld bc, $ff9c
    rrca
    rra
    inc a
    ld l, a
    sbc $7c
    jr c, jr_07b_4211

    ldh [$c8], a
    sub h
    ld a, $75
    ld l, $1c
    ld [$cbff], sp
    rst $38
    cp a
    rst $38
    ld a, [hl-]
    rst $38
    ei

jr_07b_4211:
    inc b
    inc b
    inc h
    inc bc
    inc b
    jp z, Jump_000_3e02

    ld [bc], a

jr_07b_421a:
    add hl, sp
    ld hl, $04c2
    add hl, de
    ld bc, $02ff
    add hl, sp
    pop bc
    inc bc

jr_07b_4225:
    add hl, sp
    ld bc, $7e83
    ld [bc], a
    ld [de], a
    ld [de], a
    ld [hl-], a
    ld [hl+], a
    ld bc, $0ef3
    rst $38
    add b
    cp a
    cp b
    or a
    and c
    and b
    and b
    rst $38
    ld bc, $1dfd
    ld c, l
    push bc
    dec b
    dec b
    rst $38
    rst $38
    db $fc
    di
    xor $ed
    db $dd
    db $dd
    rst $38
    rst $38
    ccf
    rst $08
    rst $30
    rst $30
    ei
    ei
    nop
    inc bc
    inc c
    inc de
    ld l, $2d
    ld e, l
    ld e, l
    nop
    ret nz

    jr nc, jr_07b_4225

    db $f4
    db $f4
    ld a, [$10fa]
    rst $38
    add l
    ld hl, sp-$20
    ret nz

    add b
    add b
    inc bc
    nop
    add l
    rra
    rlca
    inc bc
    ld bc, $0b01
    nop
    add hl, bc
    rst $38
    xor a
    add b
    add b
    add e
    adc a
    adc b
    sbc e
    sbc d
    rst $38
    nop
    nop
    db $c3, $ff, $00


    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $3df9
    dec c
    db $ed
    dec h
    and l
    and b
    or d
    or l
    and d
    and b
    cp a
    add b
    rst $38
    dec d
    dec b
    adc l
    dec h
    dec b
    db $fd
    ld bc, $03ff
    db $fd
    add c
    cp $0c
    rst $38
    or b
    ld a, l
    ld a, l
    dec a
    ld a, $1f
    rrca
    inc bc
    nop
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$10
    ret nz

    nop
    rst $38
    add b
    and d
    add h
    and d
    add l
    and e
    add c
    rst $38
    nop
    ld [$2040], sp
    ei
    rst $18
    rst $38
    rst $38
    inc bc
    dec d
    ld c, c
    ld sp, $b1f1
    ld sp, hl
    nop
    inc l
    jr jr_07b_434a

    inc h
    ld a, [bc]
    ld d, [hl]
    nop
    db $10
    rst $38
    and a
    and l
    and h
    or a
    or b
    cp h
    sbc a
    add b
    rst $38
    rst $38
    nop
    rst $38
    nop
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp RST_00


    rst $38
    ld e, c
    reti


    ld de, $c1f1
    ld bc, $ff01
    rst $38
    db $fd
    db $e3
    set 3, e
    db $c3, $bf, $03



    rst $38
    adc $c7
    set 3, e
    jp $ffbf


    db $fd
    jp $cbc3


    db $db
    jp $ffbf


    rst $38
    add b
    xor d
    sbc e
    xor [hl]
    rla
    xor l
    nop
    rst $38
    nop
    xor d
    cp e
    xor $77
    db $dd
    nop
    rst $38
    ld bc, $b9a5
    push hl
    ld a, b
    push de
    nop
    add c
    adc c
    and e
    add b
    and d
    sub l
    ld [$f7ff], a
    rst $38
    rst $38
    add h
    ld b, d
    db $10
    ld [$f1ff], sp
    pop af
    cp c
    add c
    ld b, c
    ld de, $ff09
    sbc a
    xor l
    rst $08

jr_07b_434a:
    sbc e
    and a
    cp a
    sbc e
    sbc e
    db $eb
    db $eb
    add hl, hl
    db $fd
    push af
    db $dd
    ld sp, hl
    ld sp, hl
    inc b
    nop
    add [hl]
    ld [$5522], sp
    cp a
    sbc d
    sbc d
    inc b
    adc d
    add h
    sbc d
    sbc d
    and l
    and l
    inc b
    xor l
    db $f4
    and l
    and l
    nop
    ld a, a
    ld b, b
    ld e, a
    ld d, e
    ld d, b
    ld e, b
    ld e, c
    rst $38
    ld bc, $05fd
    dec [hl]
    push af
    dec h
    and l
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    ld bc, $07ff
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    and b
    cp a
    add sp, -$51
    cp d
    rst $38
    ld bc, $05ff
    db $fd
    rla
    push af
    ld e, l
    ld hl, sp-$20
    ret nz

    add b
    add h
    ld a, [bc]
    ld d, $00
    rra
    rlca
    inc hl
    ld [hl], c
    dec h
    ld [$0056], sp
    rst $38
    and b
    adc c
    rst $00
    add [hl]
    xor a
    cp e
    sbc e
    rst $38
    ld hl, $ef8c
    ld [hl], l
    rst $38
    sbc [hl]
    rst $38

jr_07b_43bc:
    rst $38
    dec c
    ld b, c
    sbc c
    jp hl


    set 7, l
    cp c
    db $ed
    ld b, a
    add e
    add hl, hl
    add c
    jp nz, Jump_07b_7ae4

    rst $30
    ld hl, $88c1
    inc b
    ld hl, $0543
    inc bc
    dec b
    inc bc
    add hl, bc
    inc bc
    dec b
    ld [bc], a
    ld bc, $a5a5
    inc b
    or l
    add h
    and l
    and l
    ld e, c
    ld e, c
    inc b
    ld d, c
    or d
    ld e, c
    ld e, c
    and l
    and h
    xor a
    xor h
    and b
    cp a
    add b
    rst $38
    sbc d
    ld a, [de]
    ld a, [bc]
    db $ca, $fa, $02

    cp $00
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    ld bc, $ebff

jr_07b_440b:
    xor a
    cp a
    rst $28
    cp a
    cp a
    rst $38
    rst $38
    rst $10
    push af
    db $fd
    rst $30
    db $fd
    db $fd
    rst $38
    rst $38
    stop
    or b
    rst $18
    and a
    sbc a
    sbc b
    cp e
    add [hl]
    adc c
    rst $38
    rst $38
    scf
    cp $ff
    adc l
    inc hl
    ld [$d9ff], sp
    db $fd
    reti


    pop hl
    ld a, e
    and c
    ld bc, $50ff
    ldh [$c3], a
    sub b
    jr nz, jr_07b_43bc

    db $c3, $66, $0d


    rla
    dec hl
    ld b, c
    adc d
    ret nc

    pop hl
    ld [hl], e
    rst $38
    set 7, a
    cp a
    rst $38
    ld a, [hl-]
    rst $38
    ei
    ld [bc], a
    nop
    nop
    nop
    add e
    inc e
    inc a
    inc a
    inc bc
    inc e
    xor d
    ld a, $3e
    ld a, [hl]
    rst $38
    rst $20
    adc $3c
    ld a, e
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    rst $00
    ccf
    ccf
    rst $00
    rst $38
    ld a, [hl]
    ld a, $7e
    ld a, [hl]
    cp $ee
    rst $38
    rst $38
    ld c, $88
    inc bc
    cpl
    inc e
    or c
    ld [hl-], a
    ld h, d
    ld h, d
    adc b
    ret nz

    ld a, [c]
    jr c, jr_07b_440b

    ld c, h
    ld b, [hl]
    ld b, [hl]
    inc bc
    rst $38
    add l
    db $fc
    pop af
    ld a, [c]

jr_07b_4488:
    ld [c], a
    ld [c], a
    inc bc
    rst $38
    sbc d
    ccf
    adc a
    ld c, a
    ld b, a
    ld b, a
    nop
    inc bc
    rrca
    inc e
    ld sp, $6232
    ld h, d
    nop
    ret nz

    ldh a, [$38]
    adc h
    ld c, h
    ld b, [hl]
    ld b, [hl]
    rlca
    rra
    ccf
    ld a, a
    ld a, a
    inc bc
    rst $38
    add l
    ldh [$f8], a
    db $fc
    cp $fe
    dec de
    rst $38
    ld [$0300], sp
    rst $38
    dec b
    push hl
    db $dd
    rlca
    rra
    ld sp, $596d
    pop af
    and c
    rst $38
    ldh [$f8], a
    adc h
    adc [hl]
    sbc d
    or e
    and c
    rst $38
    add c
    sub e
    and a
    adc l
    sbc c
    or c
    and c
    rst $38
    jp nz, Jump_000_2242

    ld hl, $0c90
    inc hl
    nop
    ld b, d
    ld b, d
    ld b, [hl]
    add h
    ld [$e230], sp
    nop

jr_07b_44e0:
    jp nz, $e2c2

    pop hl
    ldh a, [$fc]
    rst $38
    rst $38
    ld b, e
    ld b, e
    ld b, a
    add a
    rrca
    ccf
    rst $38
    rst $38
    ld b, d
    ld b, d
    ld [hl+], a
    ld hl, $0c10
    inc bc
    nop
    ld b, d
    ld b, d
    ld b, h
    add h
    ld [$c030], sp
    nop
    ld b, b
    add b
    nop
    add b
    ld b, b
    add b
    jr nz, jr_07b_4488

    jr c, jr_07b_4566

    ld a, [hl-]
    sbc h
    add hl, sp
    ld e, h
    ld a, [hl-]
    inc e
    ld d, l
    ld d, l
    db $dd
    ld bc, $03dd
    ld d, l
    sub b
    rst $38
    add b
    cp a
    cp a
    rst $38
    ld [$fbfb], sp
    db $10
    ld b, d
    xor d
    cp $ab
    or [hl]
    db $fd
    rst $28
    ld [$05ff], sp
    push hl
    add d
    db $fd
    pop hl
    inc b
    rst $38
    add h
    ldh [$e0], a
    rst $38
    ldh [rDIV], a
    rst $38
    add h
    dec b
    dec b
    db $fd
    ld bc, $ff03
    adc c
    push de
    ldh [$d0], a
    ld h, b
    ret nc

    nop
    rst $38
    rst $38
    ld d, l
    dec b
    nop
    xor b
    rst $38
    rst $38
    ld d, c
    ld bc, $0001
    ld bc, $8b00
    inc bc
    rrca
    ld a, e
    di
    inc bc
    daa
    rlca
    jr c, jr_07b_44e0

    ld b, [hl]
    ld a, h
    cp b
    add b
    ld a, [c]
    ld hl, sp-$78
    nop

jr_07b_4566:
    jr nz, @+$3a

    adc h
    inc bc
    inc hl
    ld bc, $2088
    ld h, d
    ret nz

    adc b
    nop
    ld [bc], a
    ld [hl], b
    ld [$8800], sp
    ldh [$c0], a
    and b
    ldh [$c0], a
    ret nz

    ldh [$e0], a
    ld [$0301], sp
    rst $38
    adc l
    push hl
    push hl
    db $fd
    pop hl
    rst $38
    nop
    ld a, a
    ld b, b
    ld b, b
    nop
    rst $30
    inc b
    inc b
    ld [$9d00], sp
    rst $38
    rst $30
    add b
    ret z

    call c, $87ce
    jp $afff


    ld bc, $3911
    ld [hl], c
    pop hl
    pop bc
    rst $38
    rst $38
    db $dd
    ei
    db $dd
    ld a, [$fedc]
    rst $38
    rst $38
    rst $30
    cp a
    rst $18
    inc bc
    nop
    add l
    rst $38
    db $fd
    jp hl


    or c
    pop bc
    inc bc
    ld bc, $ff03
    add l
    db $fc
    pop af
    ld a, [c]
    ld [c], a
    ld [c], a
    inc bc
    rst $38
    add a
    ccf
    adc a
    ld c, a
    ld b, a
    ld b, a
    rst $38
    rst $38
    inc bc
    ret nz

    sbc [hl]
    adc $c0
    ret z

    rst $38
    rst $38
    ld bc, $a101
    ld sp, $c111
    ret z

    ld h, b
    ld h, d
    ld h, b
    add hl, sp
    inc sp
    ld a, [hl]
    rst $38
    rst $38
    rst $18
    or $a0
    ldh [$c0], a
    ret nz

    ldh [rIE], a
    sbc $73
    dec b
    nop
    add e
    rst $38
    di
    cp l
    dec b
    ld bc, $1090
    jr c, jr_07b_4676

    sub $7c
    add hl, sp
    inc de
    dec b
    ld [$3e1c], sp
    ld [hl], a
    ld a, [$b8dc]
    ldh a, [$08]
    nop
    sbc b
    jp $cec7


    sbc h
    ret z

    ret nz

    ret nz

    rst $38
    pop bc
    pop hl
    ld [hl], c
    add hl, sp
    ld de, $0101
    rst $38
    cp $f6
    call c, $dcfe
    add sp, -$70
    rst $38
    rlca
    nop
    add c
    rst $38
    rlca
    ld bc, $ff95
    jp nz, $e2c2

    pop hl
    ldh a, [$fc]
    rst $38
    rst $38
    ld b, e
    ld b, e
    ld b, a
    add a
    rrca
    ccf
    rst $38
    rst $38
    call $c0c0
    ret z

    inc bc
    ret nz

    add l
    rst $38
    and c
    ld sp, $4101
    inc bc
    ld bc, $ff86
    nop
    rst $38
    ld [hl+], a
    ld d, l
    adc b
    inc bc
    nop
    adc b
    and b
    ret nz

    ldh [$e0], a
    ret nz

    ldh [$c0], a
    rst $38
    rlca
    nop
    add c
    rst $38
    rlca
    ld bc, $ff9c
    rrca
    rra
    inc a
    ld l, a
    sbc $7c
    jr c, jr_07b_467a

    ldh [$c8], a
    sub h
    ld a, $75
    ld l, $1c
    ld [$cbff], sp
    rst $38
    cp a

jr_07b_4676:
    rst $38
    ld a, [hl-]
    rst $38
    ei

jr_07b_467a:
    inc b
    inc b
    inc h
    inc bc

jr_07b_467e:
    inc b
    jp z, Jump_000_3e02

    ld [bc], a
    add hl, sp
    ld hl, $04c2
    add hl, de
    ld bc, $02ff
    add hl, sp
    pop bc
    inc bc
    add hl, sp
    ld bc, $7e83
    ld [bc], a
    ld [de], a
    ld [de], a
    ld [hl-], a
    ld [hl+], a
    ld bc, $0ef3
    ld [hl], a
    rst $38
    call c, Call_07b_6ef3
    db $ed
    db $dd
    db $dd
    ld [hl], a
    rst $38
    dec a
    rst $08
    rst $30
    rst $30
    ei
    ei
    nop
    inc bc
    inc c
    inc de
    ld l, $2d
    ld e, l
    ld e, l
    nop
    ret nz

    jr nc, jr_07b_467e

    db $f4
    db $f4
    ld_long a, $fffa
    rst $38
    db $fc
    di
    xor $ed
    db $dd
    db $dd
    rst $38
    rst $38
    ccf
    rst $08
    rst $30
    rst $30
    ei
    ei
    db $10
    rst $38
    add l
    ld hl, sp-$20
    ret nz

    add b
    add b
    inc bc
    nop
    add l
    rra
    rlca
    inc bc
    ld bc, $0b01
    nop
    add hl, bc
    rst $38
    add d
    add c
    add e
    dec b
    add l
    sbc a
    ld hl, sp-$20
    ret nz

    add b
    add h
    ld a, [bc]
    ld d, $00
    rra
    rlca
    inc hl
    ld [hl], c
    dec h
    ld [$0056], sp
    nop
    inc l
    jr jr_07b_476a

    inc h
    ld a, [bc]
    ld d, [hl]
    nop
    ld a, l
    db $fd
    db $fd
    cp $7f
    rst $38
    rst $18
    inc bc
    rst $38
    add c
    db $fd
    inc bc
    rst $38
    sub d
    db $dd
    rst $38
    ld a, l
    ld a, l
    dec a
    ld a, $1f
    rrca
    inc bc
    nop
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$10
    ret nz

    nop
    inc bc
    db $fd
    add c
    cp $0c
    rst $38
    sub l
    cp a
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $18
    ld a, a
    rst $00
    and e
    push bc
    ld h, e
    add $a3
    push bc
    db $e3
    sbc c
    sbc c
    ld de, $dd01
    inc bc
    sbc c
    sub b
    rst $38
    ret nz

    cp a
    cp a
    rst $38
    inc c
    ei
    ei
    rst $28
    cp l
    ld d, l
    ld bc, $4954
    ld [bc], a
    db $10
    ld [$05ff], sp
    add l
    add h
    sbc l
    and c
    rst $38
    rst $38
    inc b
    add b
    db $eb
    sbc a
    and b
    rst $38
    rst $38
    ld bc, $0503
    dec b
    db $fd
    ld bc, $ffff
    add b
    xor d
    sbc e
    xor [hl]
    rla
    xor l
    nop

jr_07b_476a:
    rst $38
    nop
    xor d
    cp e
    xor $77
    db $dd
    nop
    rst $38
    ld bc, $b9a5
    push hl
    ld a, b
    push de
    nop
    ld [hl], l
    di
    adc a
    ld [hl], a
    adc e
    ei
    rst $10
    rst $30
    ld b, a
    cp e
    ld b, l
    dec sp
    add a
    sbc a
    db $ed
    rst $30
    ld [hl], a
    rst $38
    rst $20
    db $db
    ld [hl], l
    ld a, [$fdda]
    ld [hl], a
    cp a
    ld e, l
    cp a
    ld [hl], a
    rst $38
    adc l
    ld a, a
    ld [hl], a
    rst $38
    db $dd
    rst $38
    ld [hl], a
    rst $38
    db $dd
    rst $38
    sbc a
    xor l
    rst $08
    sbc e
    and a
    cp a
    sbc e
    sbc e
    db $eb
    db $eb
    add hl, hl
    db $fd
    push af
    db $dd
    ld sp, hl
    ld sp, hl
    rst $38
    add c
    add e
    add l
    add l
    sbc l
    and c
    rst $38
    rst $38
    add b
    cp a
    cp a
    rst $38
    ld [$fbfb], sp
    inc b
    nop
    rst $38
    ld [$5522], sp
    cp a
    rst $38
    adc b
    cp $b7
    and e
    or c
    ld hl, sp-$54
    rst $38
    ld d, c
    push af
    ld l, l
    push bc
    add a
    dec c
    dec e
    rst $38
    add b
    and d
    add h
    and d
    add l
    and e
    add c
    rst $38
    nop
    ld [$2040], sp
    ei
    rst $18
    rst $38
    rst $38
    inc bc
    dec d
    ld c, c
    ld sp, $b1f1
    ld sp, hl
    rst $38
    rst $38
    db $fc
    di
    xor $ed
    db $dd
    db $dd
    rst $38
    rst $38
    ccf
    rst $08
    rst $30
    rst $30
    ei
    ei
    rst $38
    add b
    cp a
    cp b
    or a
    and c
    and b
    and b
    rst $38
    ld bc, $1dfd
    ld c, l
    push bc
    dec b
    dec b
    ld [hl], a
    ld e, a
    ld e, l
    ld e, a
    and l
    cp d
    ld a, [hl]
    rst $38
    rst $38
    and b
    adc c
    rst $00
    add [hl]
    xor a
    cp e
    sbc e
    rst $38
    ld hl, $ef8c
    ld [hl], l
    rst $38
    sbc [hl]
    rst $38
    rst $38
    dec c
    ld b, c
    sbc c
    jp hl


    set 7, l

jr_07b_4830:
    cp c
    db $ed
    ld b, a
    add e
    add hl, hl
    add c
    jp nz, Jump_07b_7ae4

    rst $30
    ld hl, $88c1
    inc b
    ld hl, $0543
    inc bc
    dec b
    inc bc
    xor l
    add hl, bc
    inc bc
    dec b
    ld [bc], a
    ld bc, $88bc
    or b
    pop hl
    or e
    sbc a
    adc b
    rst $38
    add hl, sp
    dec e
    adc l
    rst $00
    push hl
    ld a, l
    and c
    rst $38
    add c
    adc c
    and e
    add b
    and d
    sub l
    ld [$f7ff], a
    rst $38
    rst $38
    add h
    ld b, d
    db $10
    ld [$f1ff], sp
    pop af
    cp c
    add c
    ld b, c
    ld de, $ff09
    inc bc
    db $fd
    add c
    cp $0c
    rst $38
    sub l
    and b
    or d
    or l
    and d
    and b
    cp a
    add b
    rst $38
    dec d
    dec b
    adc l
    dec h
    dec b
    db $fd
    ld bc, $00ff
    nop
    ld d, l
    xor d
    ld d, l
    inc bc
    rst $38
    or b
    rst $18
    and a
    sbc a
    sbc b
    cp e
    add [hl]
    adc c
    rst $38
    rst $38
    scf

jr_07b_489b:
    cp $ff
    adc l
    inc hl
    ld [$d9ff], sp
    db $fd
    reti


    pop hl
    ld a, e
    and c
    ld bc, $50ff
    ldh [$c3], a
    sub b
    jr nz, jr_07b_4830

    db $c3, $66, $0d


    rla
    dec hl
    ld b, c
    adc d
    ret nc

    pop hl
    ld [hl], e
    rst $38
    set 7, a
    cp a
    rst $38
    ld a, [hl-]
    rst $38
    ei
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and d
    rst $38
    rst $30
    add b
    ret z

    call c, $87ce
    jp $afff


    ld bc, $3911
    ld [hl], c
    pop hl
    pop bc
    nop
    ld b, b
    jr nc, jr_07b_491e

    add hl, de
    inc de
    dec d
    rra
    add b
    add d
    adc h
    ld a, h
    jr jr_07b_48f1

    jr z, jr_07b_4963

    nop
    ld e, $07
    nop
    adc a
    rst $38

jr_07b_48f1:
    ccf
    ld a, a
    rra
    ccf
    ccf
    ld b, b
    nop
    ld a, b
    jr nz, jr_07b_489b

    sub b
    ret nc

    jr nz, @+$22

    add hl, bc
    nop
    sub c
    ld a, a
    ld b, b
    ld b, b
    ld bc, $03f3
    rlca
    rlca
    rra
    ld a, d
    ld a, [$c0f0]
    or b
    ld b, b
    ldh [$c0], a
    rlca
    nop
    sbc c
    ld a, a
    ld b, b
    nop
    nop
    rla
    inc b
    inc b
    ld c, e

jr_07b_491e:
    ld hl, $1000
    db $10
    ldh [rNR23], a
    inc e
    inc hl
    or $6e
    inc c
    inc c
    add h
    ld a, b
    sbc $06
    inc c
    dec b
    nop
    add c
    ld bc, $0005
    sbc h
    inc bc
    nop
    nop
    jp $cec7


    sbc h
    ret z

    ret nz

    ret nz

    rst $38
    pop bc
    pop hl
    ld [hl], c
    add hl, sp
    ld de, $0101
    rst $38
    ldh [rNR11], a
    inc de
    add hl, de
    ccf
    jr nc, jr_07b_4990

    nop
    rlca
    inc bc
    ld [$7496], sp
    adc h
    add d
    add b
    nop
    rla
    ld [$1109], sp
    inc de
    ld [$0008], sp
    rst $28

jr_07b_4963:
    call c, $b8de
    cp h
    call c, RST_10
    ld hl, sp+$0e
    nop
    sub b
    ld b, $7d
    ld b, h
    add b
    ldh [$90], a
    ret nc

    ld d, b
    add b
    nop
    nop
    inc c
    inc bc
    ld h, c
    pop bc
    jp nz, $0005

    add l
    jr jr_07b_49cf

    ld [$0700], sp
    inc bc
    nop
    sbc l
    inc b
    inc c
    inc d
    rrca
    ld a, e
    ld b, c
    ld b, b

jr_07b_4990:
    nop
    rst $30
    inc b
    inc b
    ld [hl], d
    cp [hl]
    rst $00
    ldh a, [$7f]
    sbc $00
    nop
    ld b, $0e
    ld hl, sp+$00
    ld hl, sp+$60
    nop
    nop
    add b
    rlca
    inc bc
    nop
    sbc e
    scf
    inc b
    inc b
    rlca
    dec e
    ld sp, $4971
    pop bc
    add c
    rst $38
    ldh [$f8], a
    call z, $cad6
    jp $ff81


    db $fd
    pop bc
    pop bc
    pop de
    ret


Jump_07b_49c1:
    pop bc
    add c
    rst $38
    ld de, $8400
    rst $38
    ld [hl+], a
    ld d, l
    adc b
    inc bc
    nop
    adc e
    rst $38

jr_07b_49cf:
    rst $38
    ld a, e
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    rst $38
    rst $38
    cp e
    dec b
    nop
    add h
    rst $38
    rst $38
    cp b
    ld bc, $0005
    add a
    ret nz

    ld b, b
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    stop
    inc bc
    rst $38
    add d
    nop
    rst $38
    dec de
    nop
    sub b
    rst $38
    adc b
    cp $b7
    and e
    or c
    ld hl, sp-$54
    rst $38
    ld d, c
    push af
    ld l, l
    push bc
    add a
    dec c
    dec e
    inc bc
    cp $85
    xor $d4
    ldh a, [$f2]
    nop
    inc bc
    rst $38
    rst $38
    rst $30
    xor e
    rst $08
    adc a
    nop
    inc bc
    ld hl, $bfdf
    rst $20
    rst $08
    rst $18
    sub c
    rst $38
    nop
    ret nz

    add b
    ldh [$c0], a
    ret nz

    cp a
    ret nz

    add a
    rst $18
    ld e, [hl]
    ld l, a
    cpl
    rst $18
    ret nz

    nop
    cp a
    ld d, b
    sub c
    adc b
    ld c, b
    ld d, b
    ld de, $80ff
    cp a
    cp a
    cp $0c
    db $fc
    ld hl, sp-$08
    ldh [$80], a
    nop
    dec c
    ccf
    ld b, b
    add b
    rra
    inc sp

jr_07b_4a46:
    reti


    ld e, b
    jr nc, jr_07b_4a46

    ld b, $2a
    rst $38
    add b
    cp a
    rst $38
    ld a, a
    jr z, jr_07b_4a8e

    dec de
    db $10
    ld b, d
    or c
    ret nz

    add sp, $19
    db $e3
    pop hl
    ret nc

    add hl, bc
    ld de, $0313
    ld b, e
    nop
    ld bc, $1308
    adc [hl]
    adc b
    add b
    add c
    ld b, $f4
    dec [hl]
    dec bc
    dec bc
    rla
    scf
    inc h
    daa
    ld l, a
    cp h
    adc b
    or b
    pop hl
    or e
    sbc a
    adc b
    rst $38
    add hl, sp
    dec e
    adc l
    rst $00
    push hl
    ld a, l
    and c
    rst $38
    cp $f4
    ld hl, sp-$10
    xor $f6
    cp $fe
    ld a, a
    xor a

jr_07b_4a8e:
    db $ed
    rst $08
    sbc a
    rst $38
    rst $28
    rst $38
    rst $38
    inc bc
    ld h, b
    ld h, a
    and [hl]
    adc $cc
    ld h, a
    rlca
    rst $38
    db $10
    inc hl
    ld hl, $4347
    inc hl
    rst $28
    ret nz

    dec b
    ld a, [$e4fb]
    or $fa
    add d
    nop
    rst $30
    inc bc
    rlca
    rlca
    dec bc
    inc bc
    inc bc
    ld sp, hl
    add d
    cp d
    ld [hl], $04
    ld h, b
    nop
    xor d
    nop
    nop
    rlca
    inc bc
    ld b, h
    add d
    ld a, [bc]
    nop
    inc e

jr_07b_4ac6:
    ld b, $e2
    ret nz

    add h
    ld b, $82
    ld b, a
    ld e, a
    ld e, b
    ld e, a
    jr jr_07b_4ad2

jr_07b_4ad2:
    ld a, [bc]
    db $10
    jr z, jr_07b_4ac6

    add h
    cp [hl]
    cp a
    rst $38
    ld [$fbfb], sp
    add c
    ld b, c
    jr z, jr_07b_4af0

    add b
    ld bc, $fff0
    add hl, de
    ldh a, [rTIMA]
    inc de
    ld b, $99
    rlca
    rst $38
    ld c, a
    sbc b
    ccf

jr_07b_4af0:
    ld a, a
    rst $38
    ret z

    ei
    ei
    rst $38
    db $fd
    di
    db $eb
    db $db
    db $c3, $bf, $03



    rst $38
    adc l
    rst $08
    rst $08
    db $db
    jp $ffbf


    db $fd
    jp $cbc3


    db $db
    jp Jump_000_06bf


    rst $38
    sub b
    nop
    rst $38
    nop
    ld a, a
    ld a, a
    ld b, b
    rst $38
    rst $30
    rst $30
    inc b
    rst $38
    nop
    nop
    ld d, l
    xor d
    ld d, l
    inc b
    rst $38
    or h
    add b
    add h
    cp a
    pop de
    ccf
    add h
    ccf
    rst $38
    nop
    ld b, h
    rst $38
    ld de, $44ff
    rst $38
    rst $38
    ld bc, $fd44
    db $10
    db $fc
    ld b, h
    db $fc
    pop de
    ccf
    add h
    ccf
    pop de
    ccf
    add h
    ccf
    ld de, $44ff
    rst $38
    ld de, $44ff
    rst $38
    db $10
    db $fc
    ld b, h
    db $fc
    db $10
    db $fc
    ld b, h
    db $fc
    rst $38
    rst $38
    nop
    rst $38
    nop
    inc bc
    rst $38
    ld a, [de]
    nop
    nop
    add e
    inc e
    inc a
    inc a

jr_07b_4b5f:
    inc bc
    inc e
    rst $08
    ld a, $3e
    ld a, [hl]
    rst $38
    rst $20
    adc $3c
    ld a, e
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    rst $00
    ccf
    ccf
    rst $00
    rst $38
    ld a, [hl]
    ld a, $7e
    ld a, [hl]
    cp $ee
    rst $38
    rst $38
    ld c, $01
    rrca
    inc e
    jr c, jr_07b_4bf7

    ld l, h
    ld c, c
    jp $f080


    ld a, b
    inc a
    ld a, [hl]
    cp $fe
    ei
    inc bc
    inc c
    inc de
    inc l
    ld d, b
    ld d, [hl]
    and [hl]
    and b
    ret nz

    jr nc, jr_07b_4b5f

    inc [hl]
    ld a, [bc]
    ld [bc], a
    ld bc, $0001
    inc bc
    rrca
    inc e
    ld sp, $6232
    ld h, d
    nop
    ret nz

    ldh a, [$38]
    adc h
    ld c, h
    ld b, [hl]
    ld b, [hl]
    rlca
    rra
    ccf
    ld a, a
    ld a, a
    inc bc
    rst $38
    add l
    ldh [$f8], a
    db $fc
    cp $fe
    dec de
    rst $38
    ld c, $00
    add d
    inc bc
    rlca
    dec b
    nop
    add e
    rlca
    rrca
    inc c
    dec b
    nop
    inc bc
    ld bc, $0006
    ret z

    ret nz

jr_07b_4bce:
    ldh a, [$c7]
    ld l, a
    ld a, a
    ld a, a
    ccf

jr_07b_4bd4:
    ld e, $0f
    ld bc, $f2f3
    ld [c], a
    add $0c
    jr jr_07b_4bce

    add b
    and b
    and b
    ld d, b
    ld d, b
    jr z, jr_07b_4bf5

    inc c
    inc bc
    ld bc, $0201
    ld [bc], a
    inc b
    ld [$c030], sp
    ld b, d
    ld b, d
    ld [hl+], a
    ld hl, $0c10

jr_07b_4bf5:
    inc bc
    nop

jr_07b_4bf7:
    ld b, d
    ld b, d
    ld b, h
    add h
    ld [$c030], sp
    nop
    ld bc, $1c0f
    jr nc, jr_07b_4c6a

    ld c, a
    ld c, h
    ret nc

    add b
    ldh a, [$78]
    inc a
    db $76
    ld a, [$0f3a]
    nop
    nop
    inc bc
    ld [$2010], sp
    inc bc
    nop
    add c

jr_07b_4c18:
    ldh a, [$0e]
    nop
    ld [$84ff], sp
    rra
    ld a, a
    rrca
    inc bc
    ld b, $00
    add [hl]
    add b
    add b
    ldh [$38], a
    nop
    nop
    inc bc
    ld bc, $0788
    ld c, $38
    nop
    nop
    ld hl, sp-$20
    ret nz

    ld b, $00
    add e
    ld bc, $03c3
    inc b
    ld b, $c7
    nop
    add b
    jp $f0c8


    ld h, b
    ld h, b
    jr nz, jr_07b_4c4f

    rrca
    ld sp, $347a
    xor e
    ld d, d
    db $e4

jr_07b_4c4f:
    ldh [$bc], a
    ld e, b
    jr nc, jr_07b_4bd4

    ld b, b
    nop
    nop
    and h
    and b
    ld h, b
    nop
    ret nz

    add b
    nop
    nop
    rrca
    add hl, sp
    ld h, b
    ld b, b
    add b
    ret nz

    db $c3, $c2, $00


jr_07b_4c68:
    ret nz

    ld h, b

jr_07b_4c6a:
    jr nc, @+$1a

    ld [$0408], sp
    nop
    inc bc
    ld b, $0c
    jr jr_07b_4c85

    db $10
    jr nz, jr_07b_4c68

    sbc h
    ld b, $02
    ld bc, $c303
    ld b, e
    nop
    adc b
    rst $38
    call z, RST_08

jr_07b_4c85:
    add b
    inc b
    nop
    add c
    inc bc
    inc bc
    inc b
    add c
    ld [$0003], sp
    add c
    ret nz

    inc bc
    jr nz, jr_07b_4c18

    db $10
    rst $38
    rst $38
    inc bc
    ret nz

    sbc e
    adc $c0
    ret z

    rst $38
    rst $38
    ld bc, $a101
    ld sp, $c111
    add b
    ld h, b
    ld a, b
    ld a, $2f
    rla
    inc de
    add hl, bc
    ld bc, $1e06
    ld a, h
    db $f4
    add sp, -$38
    sub b
    inc bc
    inc b
    sub d
    inc c
    ld [de], a
    ld [hl+], a
    ld bc, $2000
    jr nc, jr_07b_4ce1

    jr nz, jr_07b_4d03

    ld b, b
    add b
    nop

jr_07b_4cc6:
    and h
    ldh [$b0], a
    ret nc

    ld b, b
    ld a, [bc]
    nop
    sub l
    stop
    ld bc, $0003
    inc bc
    ld d, $6a
    add sp, $44
    ld h, l
    cpl
    ld c, [hl]
    ld c, h
    ld e, b
    db $10
    jr nc, @+$04

    add d

jr_07b_4ce1:
    db $c2, $23, $03

    inc bc
    add l
    ld b, $40
    ld b, c
    ld b, e
    call nz, $c003
    adc e
    ld h, b
    ld [hl+], a
    and [hl]
    db $f4
    ld [hl], d
    ld [hl-], a
    ld a, [de]
    ld [$390c], sp
    db $fc
    inc b
    cp h
    sub [hl]
    ret nz

    ld a, b
    jr jr_07b_4d10

    jr nc, jr_07b_4d22

    ret nz

jr_07b_4d03:
    ret nz

    nop
    add b
    jr jr_07b_4d10

    inc c
    inc b
    inc bc
    inc bc
    nop
    ld bc, $c0cd

jr_07b_4d10:
    ret nz

    ret z

    inc bc
    ret nz

    add l
    rst $38
    and c
    ld sp, $4101
    inc bc
    ld bc, $ff91
    rrca
    ld e, $1c
    add hl, sp

jr_07b_4d22:
    ld [hl], $78
    ld h, b
    add b
    ldh a, [$78]
    jr c, jr_07b_4cc6

    ld l, h
    ld e, $06
    ld bc, $0028
    and b
    jr nc, @+$12

    jr jr_07b_4d4d

    ld [$040c], sp
    ld b, $06
    inc b
    ld [$4030], sp
    ld b, b
    jr nc, jr_07b_4d4d

    ld h, b
    jr nz, jr_07b_4d54

    inc c
    ld [bc], a
    ld [bc], a
    inc c
    jr nc, jr_07b_4d56

    ld [$1818], sp

jr_07b_4d4d:
    db $10
    jr nc, jr_07b_4d70

    ld h, b
    jr jr_07b_4d53

jr_07b_4d53:
    add e

jr_07b_4d54:
    inc b
    inc b

jr_07b_4d56:
    inc h
    inc bc
    inc b
    jp z, Jump_000_3e02

    ld [bc], a
    add hl, sp
    ld hl, $04c2
    add hl, de
    ld bc, $02ff
    add hl, sp
    pop bc
    inc bc
    add hl, sp
    ld bc, $7e83
    ld [bc], a
    ld [de], a
    ld [de], a
    ld [hl-], a

jr_07b_4d70:
    ld [hl+], a
    ld bc, $0ef3
    db $fd
    rst $38
    db $fc
    rst $38
    ld sp, hl
    ld a, [c]
    ld d, l
    db $db
    cp a
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $38
    cp $fb
    rst $38
    rst $38
    db $fc
    ld a, [c]
    rst $28
    jp hl


    reti


    rst $08
    rst $38
    rst $38
    ccf
    rrca
    rst $00
    rst $30
    rst $30
    ei
    rst $38
    rst $38
    db $fc
    di
    xor $ed
    db $dd
    db $dd
    rst $38
    rst $38
    ccf
    rst $08
    rst $30
    rst $30
    ei
    ei
    db $10
    rst $38
    add l
    ld hl, sp-$20
    ret nz

    add b
    add b
    inc bc
    nop
    add l
    rra
    rlca
    inc bc
    ld bc, $0b01
    nop
    dec bc
    rst $38
    sub l
    cp $f8
    rst $30
    db $e4
    sbc b
    rst $38
    ld hl, sp-$5e
    ld [hl], b
    rst $28
    sbc b
    sub b
    inc de
    rst $38
    ccf
    rlca
    ld c, c
    scf
    add d
    adc b
    ld [$ff04], sp
    add [hl]
    ld a, a
    rst $38
    scf
    dec bc
    rst $10
    ld l, a
    inc bc
    rst $38
    sbc e
    cp $ff
    db $fd
    di
    or $e7
    rst $08
    rra
    ld a, a
    rst $38

jr_07b_4de4:
    cp a
    rst $08
    rst $00
    db $e3
    ldh [$f0], a
    cp $ff
    rst $38
    res 0, e
    add a
    rlca
    rrca
    ccf
    rst $38
    rst $38
    inc bc
    db $fd
    add c
    cp $0c
    rst $38
    sub [hl]
    db $fd
    rst $38
    db $fc
    rst $30
    jp hl


    db $d3
    ld e, h
    pop de
    cp a
    rst $38
    ld a, a
    cp a
    ld [hl], a
    ei
    ld a, [hl-]
    ld a, a
    rst $38
    rst $38
    db $fc
    rst $30
    rst $28
    rst $18
    inc bc
    rst $38
    add c
    rrca
    ld b, $ff
    add l
    nop
    cp l
    inc b
    rst $28
    ld h, $0b
    rst $38
    add h
    ld h, b
    add b
    ldh a, [$fc]
    inc b
    rst $38
    sub e
    sbc [hl]
    adc h
    ld b, b
    ld h, b
    inc de
    ret nz

    rst $38
    rst $38
    jr jr_07b_4de4

    or d
    ld b, b
    add c
    rlca
    rst $38
    rst $38
    rlca
    rra
    ccf
    rlca
    rst $38
    add d
    ld a, $fe
    inc b
    db $fd
    add sp, -$01
    rst $38
    ld a, h
    ld [hl], a
    cpl
    cp a
    cp a
    rst $38
    ld hl, sp-$10
    adc $85
    bit 2, h
    xor l
    dec de
    rra
    ld b, e
    and a
    call $ba78
    reti


    db $ec
    ld e, e
    ld e, a
    sbc l
    rst $38
    dec sp
    ld a, h
    ld sp, hl
    ret c

    ldh a, [$c6]
    sbc a
    or b
    ld h, b
    ld a, $38
    dec [hl]
    rst $38
    rra
    adc a
    rst $00
    ld h, a
    inc sp
    sub e
    adc c
    rst $38
    ld hl, sp-$0f
    db $e3
    and $cc
    ret


    sub c
    rrca
    ld h, e
    ld sp, hl
    dec c
    ld b, $7c
    inc e
    xor h
    sbc d
    ld [hl], a
    nop
    inc sp
    rst $30
    cp a
    ld d, $b1
    rst $38
    cp $fe
    db $fc
    ld sp, hl
    ld sp, hl
    di
    or $ff
    ld a, a
    ld a, a
    ccf
    sbc a
    sbc a
    rst $08
    ld l, a
    rst $38
    add b
    cp a
    cp b
    or a
    and c
    and b
    and b
    rst $38
    ld bc, $1dfd
    ld c, l
    push bc
    dec b
    dec b
    inc bc
    rst $38
    add h
    rst $30
    ld sp, hl
    db $fc
    cp $04
    rst $38
    add l
    rst $28
    sbc a
    ccf
    ld a, a
    rst $38
    inc bc
    db $fd
    add e
    db $f4
    xor $de
    inc bc
    rst $38
    db $ec
    xor a
    cp a
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld e, e
    rra
    ld c, l
    ld l, $bf
    pop hl
    db $e4
    ld hl, sp-$24
    or h
    ld l, h
    ret nc

    xor c
    ld b, e
    add a
    rrca
    xor h
    xor b
    ld e, b
    rst $18
    inc e
    add hl, hl
    dec d
    rla
    inc sp
    ld a, [de]
    ld b, b
    ld hl, $2120
    ld h, e
    ld b, a
    call $2464
    call nc, Call_000_2474
    add h
    and b
    or e
    ld h, $24
    dec hl
    ld l, $24
    ld hl, $cc05
    ld e, b
    ld [bc], a
    add h
    inc b
    add h
    add $e2
    add $02
    ld b, e
    ld b, e
    ld b, d
    ld b, d
    ld a, $04
    push bc
    xor h
    ret z

    ld e, c
    jr c, jr_07b_4f4a

    or b
    ld [hl], h
    and e
    dec [hl]
    inc de
    sbc d
    inc e
    ld e, h
    dec c
    ld l, $a0
    or d
    or l
    and d
    and b
    cp a
    add b
    rst $38
    dec d
    dec b
    adc l
    dec h
    dec b
    db $fd
    ld bc, $f9ff
    ld a, [c]
    db $f4
    jp hl


    rst $30
    inc bc
    rst $38
    add h
    sbc a
    rst $08
    rst $28
    rst $30
    inc b
    rst $38
    jr z, jr_07b_4f3a

jr_07b_4f3a:
    cp b
    ld c, [hl]
    ld l, a
    ld b, [hl]
    add h
    or h
    and b
    jp c, Jump_07b_49c1

    and e
    rlca
    rrca
    ccf
    ccf
    rrca

jr_07b_4f4a:
    add e
    sub d
    push bc
    ldh [$f0], a
    db $fc
    db $fc
    ldh a, [$c1]
    ld [hl], d
    or $62
    ld hl, $052d
    ld e, e
    add e
    nop
    db $10
    and h
    inc bc
    rst $28
    cp [hl]
    ei
    rst $38
    ld h, b
    ld h, h
    ld a, b
    ld h, h
    ld b, a
    ld l, l
    cp a
    sbc a
    ld b, $26
    ld e, $26
    ld [c], a
    or [hl]
    db $fd
    ld sp, hl
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add l
    nop
    inc bc
    dec c
    jr nc, jr_07b_4fc2

    inc b
    nop
    sub d
    ld b, $cf
    ld a, h
    ld l, $7e
    ld a, [hl]
    cp h
    nop
    db $10
    or b
    ldh a, [$d8]
    ld hl, sp+$70
    nop
    nop
    ld b, $01
    inc bc
    nop
    sbc b
    ld bc, $0003
    nop
    ldh [$3f], a
    ld b, e
    ld [hl], b
    inc c
    ld bc, $0402
    ld hl, sp+$10
    add b
    add sp, $28
    nop
    nop
    inc b
    ld b, $13
    ld bc, $042e
    nop
    sub e
    ld bc, $fc87
    nop
    jr c, @+$4f

    nop
    ld b, b
    add b
    nop
    nop
    jr c, jr_07b_5002

jr_07b_4fc2:
    ld b, b
    inc bc
    ld b, $07
    inc bc
    ld bc, $0003
    add l
    call nz, $ae74
    cp $fc
    inc bc
    nop
    add l
    inc hl
    ld l, $75
    ld a, a
    ccf
    inc bc
    nop
    add l
    ret nz

    ld h, b
    ldh [$c0], a
    add b
    inc bc
    nop
    add d
    ld a, b
    ret nz

    inc b
    cp h
    add d
    db $fc
    add hl, sp
    inc bc
    nop
    add l
    jr nz, @+$12

    db $10
    jr jr_07b_500e

    inc bc
    nop
    sub d
    inc b
    ld [$1808], sp
    jr c, jr_07b_4ffb

jr_07b_4ffb:
    nop
    db $e4
    inc [hl]
    ld [$040c], sp
    inc b

jr_07b_5002:
    jr nz, @+$42

    nop
    nop
    ld bc, $0003
    sub e
    ld d, b
    jr z, @+$2a

    db $10

jr_07b_500e:
    add h
    ld a, b
    nop
    nop
    ld b, $0c
    add hl, bc
    rlca
    nop
    nop
    ld bc, $4000
    or b
    add b
    inc bc
    nop
    sbc e
    inc bc
    add d
    nop
    ld bc, $0c07
    jr jr_07b_5040

    sbc b
    inc c
    inc c
    ld c, $07
    rlca
    inc bc
    ld bc, $3f1c
    ld c, h
    ld a, h
    jr c, jr_07b_5036

jr_07b_5036:
    add [hl]
    db $e3
    ld h, a
    db $e4
    add b
    ld b, $00
    add c
    ldh [$08], a

jr_07b_5040:
    nop
    sub d
    ld bc, $0002
    ld sp, $312b
    nop
    nop
    add b
    ld b, a
    cp b
    ret nz

    ld h, h
    adc $84
    nop
    ldh [rLCDC], a
    ld b, $00
    adc h
    rlca
    ld [bc], a
    nop
    ld [$2010], sp
    nop
    nop
    inc c
    ld c, $02
    inc bc
    inc b
    nop
    add h
    jr nc, jr_07b_50d8

    ld b, b
    ret nz

    inc b
    nop
    adc d
    inc c
    inc c
    ld [$3018], sp
    ld b, b
    add b
    nop
    rlca
    rlca
    inc b
    nop
    adc b
    ld bc, $8002
    add a
    inc e
    jr nc, @+$62

    ret nz

    inc b
    nop
    xor b
    inc bc
    ld [$2010], sp
    nop
    nop
    jr nz, jr_07b_50ed

    ldh a, [$0c]
    ld b, $03
    ld bc, $3600
    ld e, e
    ld [hl], b
    nop
    nop
    ld h, b
    add b
    nop
    inc a
    nop
    rlca
    dec e
    jr nc, @+$42

    nop
    nop
    ld hl, $f830
    db $ec
    jr nc, jr_07b_50b1

    nop
    nop
    ldh [$80], a
    rrca
    nop
    add l
    ld b, b

jr_07b_50b1:
    ret nz

    jr nc, @+$1a

    ld [$0003], sp
    add [hl]
    dec c
    ld d, $0c
    db $10
    jr nz, jr_07b_50fe

    ld hl, $8d00
    rst $38
    db $fc
    ld a, [c]
    rst $08
    cp l
    db $fd
    db $fd
    cp $ff
    ld sp, hl
    jr nc, @-$7b

    ld b, b
    inc bc
    nop
    jp c, $efff

    ld c, a
    rlca
    inc bc
    inc bc
    rlca

jr_07b_50d8:
    inc bc
    rst $38
    ld sp, hl
    cp $ff
    rst $38
    cp $fc
    ld hl, sp-$01
    rst $38
    rra
    add b
    inc a
    rrca
    inc bc
    nop
    db $fd
    ei
    rlca
    rst $20

jr_07b_50ed:
    ld [hl], e
    inc bc
    jp $fff3


    ei
    adc c
    and b
    sub $81
    ld l, h
    add c
    rst $38
    rst $38
    cp $78
    inc bc

jr_07b_50fe:
    ld bc, $8040
    rst $38
    cp a
    ld a, a
    rst $38
    rst $00
    add e
    daa
    cpl
    add sp, -$17
    ldh [$f4], a
    ld a, [c]
    ld sp, hl
    ld hl, sp-$04
    inc sp
    adc e
    ld d, c
    ld bc, $cf03
    ccf
    ld a, a
    call z, $8ad1
    add b
    ret nz

    di
    db $fc
    cp $17
    sub a
    rlca
    cpl
    ld c, a
    sbc a
    rra
    ccf
    add l
    ccf
    inc bc
    ld b, d
    db $db
    ld b, e
    ld [bc], a
    ld b, [hl]
    ld a, a
    scf
    ld [hl], l
    ld e, d
    ld l, c
    ld l, h
    and [hl]
    and d
    cp $ec
    xor [hl]
    ld e, d
    sub [hl]
    ld [hl], $65
    ld b, l
    ldh a, [$ef]
    dec de
    set 6, a
    ld a, [c]
    ld a, [$11f8]
    rrca
    ld b, c
    ld b, b
    ld b, d
    ld h, a
    cp h
    inc bc
    dec bc
    push bc
    push bc
    ld l, c
    ld bc, $f385
    rlca
    pop af
    ld [c], a
    ldh [$e0], a
    di
    ld hl, sp-$04
    cp $06
    ld [$f946], sp
    ldh [rNR32], a
    cp b
    ld b, c
    ld bc, $0000
    inc bc
    daa
    rlca
    ld h, a
    inc bc
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$10
    ret nz

    add b
    add c
    add b
    ld b, l
    ld a, d
    ld bc, $080c
    dec bc
    ld e, a
    cp a
    ld a, a
    ld a, a
    ccf
    adc a
    di
    dec e
    ld [$9300], sp
    ld hl, sp-$20
    ret


    add d
    ld b, b
    ld [bc], a
    adc l
    jr nz, jr_07b_5214

    jr c, @+$47

    jr nz, @+$0c

    jr nz, jr_07b_51e5

    nop
    ld [c], a
    ld b, a
    db $eb
    ld b, $ff
    xor l
    cp $ff
    rst $30
    rst $28
    rst $18
    rst $38
    rst $38
    db $d3
    pop bc
    push hl
    db $e4
    rst $30
    pop af
    ld hl, sp-$04
    res 0, e
    and a
    daa
    rst $28
    adc a
    rra
    ccf
    ld a, [c]
    di
    push af
    db $e4
    rst $08
    xor [hl]
    ld [hl], b
    db $fc
    ld h, b
    ldh [rP1], a
    and b
    ld c, b
    or $ce
    dec a
    rla
    nop
    inc bc
    rrca
    rra
    ccf
    inc b
    rst $38
    add [hl]
    db $fc
    rst $30
    rst $28
    rst $18
    rst $38
    rst $38
    inc bc
    nop
    and c
    ldh a, [$f8]
    db $fc
    cp $ff
    ld bc, $0800
    jr nc, jr_07b_51e6

jr_07b_51e5:
    dec de

jr_07b_51e6:
    ld a, l
    ld bc, $bd42
    ret nz

    ret nz

    rst $08
    cp a
    rst $38
    rst $38
    ld b, [hl]
    jp $0200


    call $fff3
    rst $38
    dec de
    ld [hl], a
    rst $08
    ccf
    inc b
    rst $38
    ld [$9000], sp
    ld b, b
    rlca
    rrca
    rst $08
    ldh [$f7], a
    ld hl, sp-$01
    ld [hl], b
    and d
    adc c
    sub e
    ld c, a
    sbc a
    ccf
    rst $38
    ld [hl+], a
    nop
    nop

jr_07b_5214:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_07b_6ef3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_07b_7ae4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
