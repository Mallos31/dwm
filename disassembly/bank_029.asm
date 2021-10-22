; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $029", ROMX[$4000], BANK[$29]

    add hl, hl
    ld d, c
    ld b, b
    ld b, h
    ld b, c
    adc a
    ld b, [hl]

Call_029_4007:
    db $10
    ld b, a
    sub a
    ld b, a
    ld l, [hl]
    ld c, b
    dec [hl]
    ld c, c
    db $10
    ld c, d
    ld a, e
    ld c, d
    ld b, l
    ld c, e
    ld d, $51
    cp d
    ld d, c
    ld h, a
    ld d, d
    ld sp, hl
    ld d, d
    push bc
    ld d, e
    dec de
    ld e, d
    db $dd
    ld e, d
    pop hl
    ld e, e
    and d
    ld e, h
    add $63
    add h
    ld h, h
    ld c, c
    ld h, l
    jr jr_029_4095

    db $ed
    ld h, [hl]
    pop bc
    ld h, a
    ld a, c
    ld l, b
    dec h
    ld l, c
    jp Jump_029_5d69


    ld l, d
    push af
    ld [hl], c
    or [hl]
    ld [hl], h
    or h
    ld [hl], l
    ld a, c
    ld a, b
    ld a, [bc]
    ld a, c
    ld c, [hl]
    ld a, c
    rst $00
    ld a, c
    ei
    ld a, d
    ld c, h
    ld a, e
    or d
    ld a, e
    db $c4, $7e, $00
    ld [bc], a
    add hl, bc
    ld h, $09
    nop
    ld [bc], a
    inc d
    inc b
    dec b
    rrca
    dec b
    inc d
    add hl, bc
    nop
    inc bc
    rst $38
    add hl, bc
    inc d
    rlca
    add hl, bc
    nop
    inc b
    daa
    jr z, jr_029_4094

    ld a, [hl+]
    add hl, bc
    inc c
    rrca
    ld [bc], a
    add hl, bc
    rlca
    ld bc, $0504
    jr c, jr_029_40b0

    add hl, sp
    ld a, [hl-]
    ld b, $05
    inc b
    dec b
    inc b
    dec b
    inc d
    add hl, bc
    inc sp
    dec bc
    nop
    ld bc, $0100
    nop
    inc bc
    ld [hl], $3b
    dec sp
    scf
    ld [bc], a
    add hl, bc
    ld h, e
    nop
    ld bc, $5209

jr_029_4094:
    ld a, [bc]

jr_029_4095:
    rrca
    dec b
    db $10
    ld de, $3534
    db $10
    inc de
    ld [hl-], a
    jr nc, jr_029_40d1

    inc sp
    ld [de], a
    add hl, bc
    add e
    nop
    ld de, $5209
    ld a, [bc]
    nop
    inc bc
    inc h
    dec h
    ld [hl], $37
    inc h

jr_029_40b0:
    inc hl
    ld sp, $3033
    ld sp, $2122
    ld [hl], $37
    inc h
    dec h
    add hl, bc
    ld d, d
    ld a, [bc]
    db $10
    inc de
    jr nc, jr_029_40f3

    ld sp, $3031
    ld [hl-], a
    ld sp, $0932
    add $00
    ld [hl-], a
    ld sp, $3331
    add hl, bc
    ld d, d

jr_029_40d1:
    ld a, [bc]
    inc h
    inc hl
    ld [hl-], a
    inc sp
    ld [hl-], a
    ld sp, $3132
    jr nc, jr_029_40e5

    push hl
    ld bc, $a809
    nop
    add hl, bc
    ld d, d
    ld a, [bc]
    add hl, bc

jr_029_40e5:
    add $00
    add hl, bc
    call z, $0902
    adc $00
    add hl, bc
    add $00
    add hl, bc
    ld d, d
    ld a, [bc]

jr_029_40f3:
    add hl, bc
    and $01
    inc sp
    add hl, bc
    xor b
    nop
    add hl, bc
    xor b
    nop
    add hl, bc
    and $00
    add hl, bc
    ld [de], a
    inc e
    ld sp, $0931
    ret z

    ld [bc], a
    add hl, bc
    jp z, Jump_000_030f

    add hl, bc
    xor b
    nop
    add hl, bc
    add sp, $02
    add hl, bc
    ld [$030f], a
    rlca
    rra
    rra
    rlca
    rlca
    inc d
    add hl, bc
    ld b, $14
    inc d
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    inc de
    ld c, $14
    add hl, bc
    ld h, $14
    add hl, bc
    inc c
    ld [bc], a
    add hl, bc
    inc d
    dec c
    ld [$1f07], sp
    add hl, bc
    adc a
    db $10
    rra
    rlca
    rlca
    add hl, bc
    rrca
    rrca
    dec b
    add hl, bc
    ldh [rNR24], a
    add hl, bc
    sub h
    ld [$0800], sp
    ld d, e
    inc bc
    ei
    add hl, bc
    xor $27
    ld hl, sp+$49
    or $54
    ld sp, hl
    ld a, [hl-]
    cp d
    ccf
    rst $38
    inc [hl]
    push af
    ret nz

    rst $18
    ret nc

    scf
    db $fc
    rlca
    ld b, h
    cp c
    xor [hl]
    ld e, e
    inc [hl]
    or l
    add h
    sub a
    inc b
    ld d, a
    or e
    ld c, e
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
    rst $00
    ret c

    db $d3
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
    ld bc, $02c5
    or e
    ld a, [bc]
    adc e
    db $10
    ld e, l
    inc [hl]
    ld a, [hl-]
    ld b, d
    ld b, h

jr_029_4193:
    cp b
    call $b8c3
    add b
    or c
    ld d, d
    rst $10
    ld [$2cbb], sp
    ld e, l
    ld b, d
    ld [hl+], a
    dec e
    or e
    jp $c31d


    dec e
    jp $b8b8


    call $4442
    inc [hl]
    cp d
    jr nc, jr_029_41ee

    ld a, d
    ei
    ld c, d
    swap c
    push af
    jp $1d1d


    or e
    ld b, d
    ld [hl+], a
    cpl
    ld e, a
    dec c
    cp l
    ld d, [hl]
    rst $10
    ld b, d
    rst $08
    add h
    and a
    adc b
    jp hl


    pop af
    rst $30
    ld a, a
    ld a, a
    jr c, jr_029_420d

    ldh a, [$fd]
    jr c, jr_029_4206

    ld e, a
    ld e, c
    sbc a
    sbc a
    ldh a, [$fd]
    sbc b
    sbc d
    add a
    rst $00
    call $f8fd
    ld hl, sp-$70
    sub h
    ld [$c76b], sp
    sub a
    ld de, $8f97
    rst $28
    cp $fe
    inc e

jr_029_41ee:
    ld a, h
    rrca
    cp a
    inc e
    call z, $9afa
    ld sp, hl
    db $fd
    ld d, h
    ld d, h

jr_029_41f9:
    adc b
    xor e
    ld hl, $f656
    ld bc, $13e4
    xor $00
    cp l
    ld b, b
    rst $10

jr_029_4206:
    jr z, jr_029_4193

    rst $08
    sub e
    sbc e
    ld [hl], c
    di

jr_029_420d:
    add hl, bc
    db $ed
    add a
    ld h, a
    jp nc, $ed3a

    rra
    ldh [rNR34], a
    pop de
    db $d3
    ret


    jp hl


    adc [hl]
    rst $18
    sub c
    ld a, [c]
    ld l, e
    ld l, h
    xor e
    cp h
    rla
    jr jr_029_4235

    or b
    inc bc
    xor e
    add hl, bc
    ld c, [hl]
    daa
    cp b
    ld c, c
    db $76
    ld d, h
    ld sp, hl
    ld a, [hl-]
    ld a, [hl-]
    ccf
    cp a

jr_029_4235:
    inc [hl]
    ld [hl], l
    ret nz

    jp c, Jump_000_35d0

    db $fc
    ld b, $44
    cp c
    xor [hl]
    ld e, d
    inc [hl]
    or l
    add h
    sub [hl]
    inc b
    ld d, l
    jr nc, jr_029_42ba

    xor b
    xor l
    jr z, jr_029_41f9

    xor b
    ld l, d
    and h
    ld h, [hl]
    inc [hl]
    or [hl]
    ld c, $4e
    ld bc, $06f9
    scf
    inc b
    ld d, [hl]
    ld b, $35
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
    ld c, $ce
    ld bc, $07f9
    inc [hl]
    rlca
    ld d, h
    ld d, e
    inc d
    ld de, $2c94
    cp a
    ld [hl], e
    db $f4
    add e
    cp h
    ld b, e
    ld [hl], h
    add hl, sp
    ld a, [hl-]
    ld d, $d9
    cpl
    or b
    db $10
    ld e, l
    ld c, e
    ld c, d
    ld [hl-], a
    or a
    ld b, b
    ld e, [hl]
    ld b, d
    xor [hl]
    sbc h
    ld e, l
    add sp, $1b
    db $76
    rrca
    adc c
    ld a, e
    cp l
    dec e
    adc [hl]
    ld l, a
    ld b, d
    or d
    ld d, e
    ret nz

    inc b
    rlca
    rst $20
    ld [de], a
    ld_long a, $ff0d
    nop
    cp $e1
    push hl
    ld e, [hl]
    ld e, [hl]
    add a
    and a
    push bc
    db $dd
    ld hl, sp-$08

jr_029_42ba:
    ld h, a
    ld h, a
    ld d, c
    ld d, c
    adc [hl]
    xor [hl]
    ld d, e
    ldh a, [$fc]
    ld sp, $1f77
    ccf
    scf
    or a
    call nz, $eec4
    xor $51
    ld d, c
    adc d
    xor d
    inc b
    db $f4
    ld d, e
    ret nc

    ld [bc], a
    sub b
    di
    ld l, b
    ld l, a
    xor b
    cp a
    db $10
    rra
    nop
    cp a
    ld h, $fe
    add hl, de
    ld sp, hl
    dec bc
    db $eb
    rlca
    rst $30
    ld [bc], a
    cp $04
    db $fd
    ld b, $fe
    inc bc
    rst $38
    rlca
    rlca
    add hl, de
    ld e, $27
    jr c, jr_029_4340

    db $76
    ld d, h
    ld a, c
    ld a, [hl-]
    ld a, [hl-]
    ccf
    ccf
    inc [hl]
    dec [hl]
    ldh [$e0], a
    ret c

Jump_029_4303:
    jr c, @-$02

    inc b
    ld b, [hl]
    cp d
    xor [hl]
    ld e, d
    inc [hl]
    or h
    add h
    sub h
    inc b
    ld d, h
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
    nop
    rst $38
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

jr_029_4340:
    nop
    rst $38
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
    nop
    rst $38
    ld bc, $0163
    db $d3
    ld bc, $011f
    inc sp
    ld bc, $2953
    inc hl
    db $f4
    dec bc
    or a
    ld c, a
    ret


    ld a, [hl-]
    ret nc

    inc [hl]
    db $db
    inc sp
    cp a
    ld [hl], a
    ld d, a
    db $d3
    ld c, c
    ld c, d
    rra
    ldh [$e9], a
    or $96
    ld e, c
    ld c, $29
    db $db
    call z, $eefd
    db $eb
    jp z, $5292

    add a
    sub a
    add b
    sbc h
    add b
    sbc a
    ld b, h
    set 0, e
    ld c, h
    and b
    ld h, e
    ld e, b
    cp b
    ld h, a
    sbc a
    pop hl
    jp hl


    ld bc, $0139
    ld sp, hl
    ld [hl+], a
    db $d3
    jp $0432


    rst $00
    dec de
    inc e
    rst $20
    ld hl, sp+$53
    db $ed
    rst $38
    nop
    adc b
    nop
    nop
    nop
    ld [hl+], a
    ld d, e
    sub b
    dec h
    adc b
    ld d, e
    sbc [hl]
    dec hl
    xor d
    nop
    ld d, l

jr_029_43bf:
    ld d, e
    or b
    add hl, hl
    xor $00
    cp e
    ld d, e
    ret nz

    ld hl, $00ff
    ld [hl], a
    nop
    rst $38
    nop
    db $dd
    ld d, e
    inc l
    jr nz, jr_029_4426

    ret nc

    ld a, [hl+]
    db $10
    rst $28
    ld [bc], a
    db $fd
    ld c, c
    or [hl]
    daa
    ret c

    ld e, [hl]
    and c
    or a
    ld c, b
    ld e, e
    and h
    ld [bc], a
    db $fd
    db $10
    rst $28
    and h
    ld e, e
    ld [hl], b
    adc a
    call $f732
    ld [$42bd], sp
    rst $28
    db $10
    ld l, l
    sub d
    or d
    ld c, l
    jp hl


    ld d, $77

jr_029_43fa:
    adc b
    sbc $21
    ld d, e

Jump_029_43fe:
    pop de
    ld [hl+], a
    cp l
    ld b, d
    jp z, Jump_000_2535

    jp c, $25da

    rst $30
    ld [$01fe], sp
    ld d, e
    dec hl
    jr nz, jr_029_43bf

    ld d, b
    jp c, Jump_000_3425

    set 0, e
    inc a
    or l
    ld c, d
    rst $28
    db $10
    ld d, e
    pop de
    ld [hl+], a
    rst $28
    db $10
    db $fd
    ld [bc], a
    or [hl]
    ld c, c
    ret c

    daa

jr_029_4426:
    ld hl, $c8de
    scf
    and h
    ld e, e
    ld d, e
    ld [hl-], a
    jr nc, jr_029_4487

    xor b
    adc [hl]
    ld [hl], c
    inc sp
    call z, $f708
    ld b, d
    cp l
    ld [$fff7], sp
    nop
    db $fd
    ld [bc], a
    ld d, e
    ld a, [hl+]
    jr nc, jr_029_43fa

    ld c, b
    ld c, c
    or [hl]
    sub d
    ld l, l
    ld b, h
    cp e
    rst $38
    nop
    cp $01
    add sp, $17
    inc sp
    call z, Call_029_708f
    ld d, e
    pop de
    inc h
    cp a
    ld b, b
    jp hl


    ld d, $f7
    ld [$d153], sp
    dec l
    ld d, e
    ret nc

    inc hl
    ld d, e
    ldh a, [$fc]
    add b
    ld e, a
    ret nz

    cpl
    sub b
    ld e, a
    ldh [$7f], a
    sub b
    cp a
    db $10
    sbc a
    and b
    ld a, a
    ret nz

    ld e, a
    and b
    ld a, a
    ld b, b
    rst $08
    and b
    sub a
    ld l, b
    rst $28
    or h
    sbc $c8
    dec h
    sbc $03
    ld a, [hl]
    add b
    inc bc

jr_029_4487:
    db $f4
    ld [bc], a
    rrc c
    push de
    inc hl
    xor d
    inc h
    ld b, d
    dec sp

jr_029_4491:
    and b
    db $fd
    ld b, d
    xor a
    ld d, b
    ld [bc], a
    ei
    dec b
    cp $00
    ld a, [$fb02]
    nop
    or $05
    or $0a
    ld a, [$f90e]
    ld d, e
    ld a, [$de20]
    ld hl, $29d6
    ei
    inc b
    db $db
    inc h
    ld l, [hl]

jr_029_44b2:
    sub c
    xor e
    ld d, h
    rst $18
    jr nz, jr_029_4491

    ld h, $fe
    ld bc, $49b6
    db $db
    inc h
    db $eb
    inc d
    db $ed
    ld [de], a
    ld a, l
    add d
    db $fd
    ld b, $fa
    rlca
    db $fd
    inc bc
    rst $38
    ld bc, $7dfb
    and l
    ld [hl], a
    ld [c], a
    ld a, [hl+]
    ld a, [c]
    scf
    ld d, e
    dec hl
    jr nz, jr_029_4558

    add b
    ld a, a
    nop
    ld d, e
    ld d, $42
    rst $38
    add b
    db $ec
    dec e
    push af
    rlca
    ld sp, hl
    dec bc
    ld [$ea1e], a
    rra
    ld d, e
    jr z, jr_029_452e

    ld sp, hl
    add hl, bc
    sbc l
    cp $25
    ld l, [hl]
    ld b, a
    call nc, Call_029_7cdb
    xor a
    ld [hl], b
    sbc c
    ld e, d
    ld h, [hl]
    ld [hl], a
    sbc c

jr_029_44ff:
    rst $18
    push af
    rlca
    db $fd
    dec b
    ld a, [$fa02]
    ld b, $fd
    ld bc, $03fd
    ld d, e
    inc b
    ld b, b
    cpl
    or b
    ld e, a
    ldh [rHDMA3], a
    ld d, d
    ld b, b
    ld c, a
    ret nc

    cpl
    jr nz, jr_029_44b2

    ret c

    sub a
    or b
    push af
    ld a, e
    call $ca69
    ld e, [hl]
    cp [hl]
    ld a, a
    db $e4
    dec e
    db $f4
    ld c, $f4
    rrca
    db $fc
    rrca

jr_029_452e:
    rst $18
    ld hl, sp+$4b
    ld c, h
    ld c, e
    ld e, h
    set 3, h
    rst $08
    add sp, -$29
    ldh a, [$d7]
    ret c

    ld l, a
    ld h, b
    db $ec
    dec e
    ld [$ea1b], a
    ld e, $e7

Jump_029_4545:
    rla
    push hl
    dec d
    jp hl


    dec bc
    ret nc

    ld [hl], $d1
    dec [hl]
    ld l, a
    ldh a, [$af]
    jr nc, jr_029_457a

    db $eb
    ld d, l
    sbc l
    dec d
    ld [hl], l

jr_029_4558:
    xor [hl]
    rst $08
    adc c
    cp [hl]
    sbc e
    xor h
    ld sp, $c9d5
    rst $28
    xor b
    xor d
    ld [hl], h
    rst $30
    sub h
    ld e, l
    jp nc, $d33a

    scf
    ret


    dec hl
    sbc e
    xor h
    dec bc
    ld a, h
    xor a
    adc b
    sub a
    or b
    ld d, a
    ld e, b
    ld d, a
    ret c

jr_029_457a:
    scf
    cp b
    daa
    jr z, jr_029_44ff

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

jr_029_4592:
    ld e, [hl]
    ld h, c
    ld [hl], $89
    dec de
    and h
    dec bc
    or h
    ld h, l
    ld l, d
    sbc l
    and d
    cp l
    ld b, d
    db $ed
    ld [de], a
    rst $38
    nop
    cp c
    ld b, [hl]
    ld d, e
    db $e4
    jr nc, jr_029_4625

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

jr_029_45b7:
    xor $11
    rst $30
    ld [$48b7], sp
    rst $38
    nop
    rst $20
    inc c
    db $ec
    inc b
    add sp, $03
    db $ec
    inc b
    rst $28
    rlca
    rst $08
    daa
    adc b
    ld b, e
    rst $38
    nop
    rst $08
    jr @+$21

    ld [$e81f], sp
    ccf
    jr z, jr_029_45b7

    ret z

    db $db
    call z, $ea19
    xor h
    inc h
    rst $20
    ld l, a
    rst $20
    ld l, a
    ldh [rOCPD], a
    and h
    inc l
    add a
    ld c, a
    rst $08
    cpl
    rst $38
    nop
    dec a
    inc l
    rst $08
    sbc $cf
    sbc $0f
    cp $2d
    inc a
    ret


    jp c, $f4f3

    rst $38
    nop
    ldh a, [rIF]
    rst $08
    jr nc, jr_029_4592

    ld l, a
    add b
    ld b, c
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $f00f
    db $e3
    db $ec
    pop af
    db $76
    ld [hl], l
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

jr_029_4625:
    xor [hl]
    ld c, l
    adc a
    ld l, [hl]
    rst $00
    scf
    ldh a, [rIF]
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    ld bc, $0982
    or $f3
    inc c
    rrca
    ldh a, [rIE]
    nop
    rst $38
    ld a, a
    ret nz

    ld a, a
    rst $18
    ld a, a
    pop bc
    ld h, c
    pop bc
    ld l, a
    ld d, e
    adc d
    ld d, b
    rst $38
    nop
    rst $38
    cp $03
    cp $fb
    cp $fb
    cp $3b
    ld a, $2b
    ld l, $2b
    ld l, [hl]
    ld d, e
    adc d
    ld d, d
    pop bc
    ld l, a
    ret nz

    ld h, b
    ret nz

    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    dec hl
    ld l, [hl]
    ld d, e
    or b
    ld d, d
    ld a, e
    ld a, [hl]
    inc bc
    cp $ff
    cp $53
    adc [hl]
    ld a, $53
    rst $08
    ld e, a
    ld c, l
    ld d, e
    cpl
    ld l, a
    ld c, l
    ld d, e
    adc a
    ld l, a
    ld c, l
    ld d, e
    rst $28
    ld l, a
    ld c, l
    ld d, e
    ld c, a
    ld a, a
    ld c, l
    ld d, e
    xor a
    ld a, a
    dec a
    nop
    ld [bc], a
    dec b
    jr z, jr_029_4699

    nop
    rrca
    nop
    dec b
    db $f4

jr_029_4699:
    rst $38
    add hl, de
    add hl, hl
    dec b
    ld b, b
    rrca
    nop
    dec b
    inc [hl]
    rrca
    add hl, de
    ld a, [hl+]
    dec b
    add b
    rrca
    nop
    dec b
    db $f4
    ld hl, sp+$2b
    dec b
    and b
    rrca
    nop
    dec b
    sub h
    rrca
    add hl, bc
    ld c, $0f
    ld c, $0f
    dec b
    db $f4
    ld hl, sp+$2c
    dec b
    ldh [$0a], a
    inc b
    ld [de], a
    inc de
    ld [de], a
    inc de
    dec b
    db $f4
    ld hl, sp+$2d
    dec b
    nop
    rla
    nop
    ld bc, $0100
    ld a, $3f
    ld a, $3f
    dec b
    db $f4
    rrca
    inc b
    inc b
    db $10
    ld de, $1110
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld c, a
    dec b
    db $f4
    rrca
    ld bc, $0100
    nop
    inc bc
    dec b
    db $10
    db $10
    dec b
    db $10
    rra
    ld [bc], a
    inc b
    dec bc
    dec bc
    db $10
    ld de, $1310
    dec b
    jr nc, jr_029_470a

    dec b
    jr nc, jr_029_471c

    ld [bc], a
    inc d
    ld [bc], a
    dec b
    ld c, e
    dec d
    dec b
    db $10
    rra
    ld [bc], a
    inc d
    ld [de], a
    dec b

jr_029_470a:
    ld l, e
    dec d
    dec b
    ld [hl], b
    rra
    dec a
    nop
    ld [bc], a
    ld b, $28
    ld b, $00
    rrca
    nop
    ld b, $f4
    rst $38
    add hl, de

jr_029_471c:
    add hl, hl
    ld b, $40
    ld bc, $1d1c
    ld b, $42
    ld b, $29
    add hl, hl
    ld b, $34
    dec c
    inc b
    db $10
    ld de, $1f1e
    dec bc
    dec bc
    db $10
    ld de, $0605
    ld c, a
    dec c
    ld a, [hl+]
    ld a, [hl+]
    ld c, $0f
    ld c, $03
    ld a, $3f
    ld c, h
    ld c, l
    ld a, $3f
    ld a, $3f
    ld [bc], a
    rrca

Call_029_4747:
    ld c, $0f
    ld a, [hl+]
    ld a, [hl+]
    ld b, $f4
    ld hl, sp+$2b
    inc b
    db $10
    ld de, $1310
    ld c, [hl]
    ld c, a
    ld b, $a6
    ld [bc], a
    ld [de], a
    ld de, $1110
    dec b
    dec hl
    ld b, $f4
    ld hl, sp+$06
    add h
    nop
    ld b, $c2
    inc bc
    ld b, $c2
    inc bc
    ld [bc], a
    ld bc, $f406
    ld hl, sp+$12
    ld b, $a5
    dec b
    ld c, [hl]
    ld b, $a6
    inc bc
    ld [de], a
    ld de, $f406
    ld hl, sp+$06
    jp nz, $0605

    ld bc, $0617
    db $f4
    ld hl, sp+$06
    ld [c], a
    dec b
    ld b, $21
    rla
    ld b, $f4
    rrca
    ld c, l
    ld b, $54
    rra
    ld c, l
    ld b, $a0
    ld hl, sp+$00
    ld [bc], a
    inc c
    jr z, jr_029_47a8

    nop
    rrca
    nop
    inc c
    db $f4
    rst $38
    add hl, de
    add hl, hl
    inc c
    ld b, b
    inc bc
    inc e

jr_029_47a8:
    dec e
    inc c
    ld c, b
    ld b, $0c
    inc [hl]
    ld c, $04
    dec bc
    db $10
    ld de, $680c
    ld b, $0c
    db $f4
    ld hl, sp+$2a
    inc c
    add b
    nop
    inc b
    ld [bc], a
    inc bc
    ld a, $3f
    inc c
    adc b
    ld [bc], a
    ld d, h
    ld d, l
    ld [bc], a
    rrca
    inc c
    db $f4
    ld hl, sp+$2b
    inc c
    and b
    nop
    inc d
    ld [de], a
    ld de, $4f4e
    inc c
    xor b
    ld [bc], a
    ld d, [hl]
    ld d, a
    ld [de], a
    inc c
    ld [hl], e
    add hl, bc
    nop
    ld bc, $0100
    inc l
    inc d
    ld [bc], a
    inc bc
    rlca
    ld b, $0c
    adc b
    inc b
    ld [bc], a
    inc bc
    inc c
    db $f4
    ld hl, sp+$0c
    ld l, b
    nop
    dec b
    ld b, $12
    ld de, $1405
    inc c
    xor b
    inc b
    inc c
    or d
    ld a, [bc]
    inc c
    adc $02
    ld [bc], a
    inc bc
    rlca
    dec de
    ld [$0706], sp
    add hl, bc
    ld [$0c07], sp
    ret nc

    inc c
    inc c
    xor $02
    ld [de], a
    ld de, $2d05
    ld d, $17
    add hl, de
    ld a, [de]
    ld d, $14
    inc c
    ldh a, [rIF]
    ld bc, $880c
    nop
    dec d
    dec l
    inc c
    ld c, c
    ld de, $c50c
    nop
    ld a, [bc]
    inc c
    inc d
    inc e
    inc c
    xor b
    nop
    ld e, $1f
    dec sp
    inc a
    dec bc
    dec b
    inc a
    dec b
    ld [de], a
    ld de, $1a15
    inc c
    inc [hl]
    rra
    ld bc, $4d4c
    inc c
    ld [bc], a
    inc de
    ld a, [bc]
    ld a, [de]
    dec l
    inc c
    ld d, h
    rra
    ld bc, $200c
    inc d
    dec d
    rlca
    dec l
    inc c
    sub e
    add hl, de
    inc c
    adc b
    inc b
    inc c
    adc $02
    rlca
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    inc c
    or d
    ld a, [de]
    inc c
    and b
    ld a, [de]
    dec d
    ld a, [bc]
    rla
    ld a, [de]
    inc c
    or d
    ld a, [de]
    nop
    ld [bc], a
    ld [$0828], sp
    nop
    rrca
    nop
    ld [$fff4], sp
    add hl, de
    add hl, hl
    ld [$0340], sp
    inc e
    dec e
    ld [$0648], sp
    ld [$0e34], sp
    inc b
    dec bc
    db $10
    ld de, $6808
    ld b, $08
    db $f4
    ld hl, sp+$2a
    ld [$0080], sp
    inc b
    ld [bc], a
    inc bc
    ld a, $3f
    ld [$0288], sp
    ld d, h
    ld d, l
    ld [bc], a
    rrca
    ld [$f8f4], sp
    dec hl
    ld [$00a0], sp
    inc d
    ld [de], a
    ld de, $4f4e
    ld [$02a8], sp
    ld d, [hl]
    ld d, a
    ld [de], a
    ld [$0973], sp
    nop
    ld bc, $0100
    inc l
    inc d
    ld [$0686], sp
    ld a, $3f
    ld [bc], a
    inc bc
    ld [$f8f4], sp
    ld [$0068], sp
    dec b
    ld b, $08
    and [hl]
    ld b, $4e
    ld c, a
    ld [$0ab2], sp
    ld [$02ce], sp
    ld [$0086], sp
    dec d
    ld b, $08
    ld [$0812], sp
    jp nc, Jump_000_080a

    xor $02
    ld [$00a6], sp
    ld a, [de]
    ld d, $08
    jr z, jr_029_48fd

    ld [$0ef2], sp
    ld [$0288], sp
    ld a, [hl-]
    dec a
    ld [$1048], sp
    ld [bc], a
    inc bc
    rlca
    ld a, [bc]
    ld [$1c14], sp

jr_029_48fd:
    ld [$02a8], sp
    dec sp
    inc a
    ld [$1068], sp
    ld [de], a
    ld de, $1a15
    ld [$1f34], sp
    inc bc
    ld [$1202], sp
    rlca
    ld a, [bc]
    ld a, [de]
    dec l
    ld [$1f54], sp
    inc bc
    ld [$1222], sp
    dec d
    rlca
    dec l
    ld [$1993], sp
    ld [$1a80], sp
    rlca
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld [$1ab2], sp
    ld [$1aa0], sp
    dec d
    ld a, [bc]
    rla
    ld a, [de]
    ld [$1ab2], sp
    nop
    ld [bc], a
    ld bc, $012d
    nop
    nop
    inc d
    ld [bc], a
    inc bc
    ld a, $3f
    ld bc, $0608
    ld bc, $f8f4
    ld l, $2e
    cpl
    inc b
    dec bc
    dec bc
    ld [de], a
    inc de
    ld c, [hl]
    ld c, a
    ld bc, $0628
    ld bc, $f8f4
    ld [hl-], a
    jr nc, @+$31

    inc d
    inc h
    dec h
    ld bc, $0808
    ld bc, $0a12
    inc sp
    inc [hl]
    dec [hl]
    inc d
    ld h, $27
    ld bc, $0828
    ld bc, $0a32
    cpl
    ld l, $2f
    inc d
    ld bc, $0a46
    ld bc, $0a12
    jr c, jr_029_49ae

    inc [hl]
    inc d
    ld bc, $0a66
    ld bc, $0a32
    ld [hl], $2f
    ld sp, $0806
    ld b, $01
    ld b, $0f
    rlca
    ld sp, $3732
    inc c
    add hl, de
    rla
    ld bc, $0f26
    rlca
    jr c, @+$39

    dec [hl]
    inc sp
    cpl
    ld bc, $0305
    ld d, b
    ld d, c
    ld bc, $0e0e
    ld [hl], $37
    jr nc, jr_029_49d9

    jr nc, @+$16

    ld bc, $0226
    ld d, d

jr_029_49ae:
    ld d, e
    ld bc, $0e2e
    scf
    ld [hl-], a
    jr nc, @+$39

    ld bc, $02c2
    ld bc, $1048
    ld bc, $0f8e
    nop
    ld bc, $1060
    ld bc, $01e3
    ld bc, $1068
    ld bc, $0fee
    nop
    jr c, @+$3a

    jr c, jr_029_4a08

    ld [hl-], a
    cpl
    inc c
    ld b, $08
    ld b, $08
    add hl, bc

jr_029_49d9:
    ld bc, $1347
    ld bc, $0bd4
    ld bc, $1081
    ld [hl], $0c
    add hl, de
    rla
    add hl, de
    add hl, de
    inc d
    ld bc, $1268
    ld bc, $1b54
    scf
    ld [hl], $01
    and b
    db $10
    scf
    ld [hl], $01
    add l
    ld de, $0609
    rlca
    add hl, bc
    ld bc, $1a14
    ld sp, $0136
    and d
    db $10
    ld bc, $1381

jr_029_4a08:
    rla
    add hl, de
    rla
    rla
    add hl, de
    ld bc, $f8a0
    nop
    ld [bc], a
    ld bc, $3f3e
    ld bc, $0e00
    ld bc, $f8f4
    ld c, [hl]
    ld c, a
    ld bc, $0e20
    ld bc, $fff4
    ld c, l
    ld bc, $0f54
    ld c, l
    ld bc, $0fb4
    ld b, a
    ld e, b
    ld e, c
    ld bc, $0fd0
    dec bc
    ld e, d
    ld e, e
    ld bc, $0cb0
    ld [bc], a
    inc bc
    ld bc, $1080
    ld bc, $04c0
    ld bc, $1280
    ld bc, $08b4
    ld [de], a
    inc de
    ld bc, $10a0
    ld bc, $04e0
    ld bc, $12a0
    ld bc, $08b4
    ld [$0609], sp
    rlca
    add hl, bc
    ld b, $01
    add b
    ld [de], a
    ld [bc], a
    inc bc
    rlca
    ld b, $07
    ld [$0a09], sp
    ld bc, $08b4
    rla
    add hl, de
    add hl, de
    rla
    add hl, de
    inc d
    ld bc, $12a0
    ld [de], a
    inc de
    dec d
    rla
    add hl, de
    rla
    add hl, de
    rla
    ld bc, $f8a0
    nop
    ld [bc], a
    ld bc, $3f3e
    ld bc, $0600
    ld [bc], a
    inc bc
    dec d
    dec l
    ld bc, $000f
    ld bc, $f8f4
    ld c, [hl]
    ld c, a
    ld bc, $0620
    ld [de], a
    inc de
    dec d
    dec l
    ld l, $2e
    ld l, $2e
    ld bc, $fff4
    ld [$332e], sp
    inc [hl]
    inc sp
    ld [hl-], a
    ld bc, $0f14
    ld [$2f32], sp
    cpl
    inc [hl]
    dec [hl]
    ld bc, $fff4
    ld [$3433], sp
    cpl
    ld l, $2f
    ld bc, $0f14
    ld [$2f2e], sp
    cpl
    ld [hl-], a
    inc sp
    ld bc, $fff4
    ld [$3137], sp
    ld [hl-], a
    ld bc, $0ab2
    ld bc, $0c60
    jr c, @+$3a

    scf
    ld bc, $0953
    ld bc, $0b00
    ld [hl], $37
    scf
    jr c, jr_029_4b11

    ld bc, $0f14
    ld [$3838], sp
    scf
    ld [hl], $36
    ld bc, $fef4
    ld [bc], a
    inc bc
    ld bc, $1046
    rlca
    ld [$300d], sp
    ld [hl], $32
    ld [hl], $01
    inc de
    rra
    nop
    ld [de], a
    inc de
    ld bc, $1066
    rla
    dec c
    jr c, @+$3a

    ld bc, $102f
    ld bc, $f8f4
    ld bc, $1446
    rlca
    ld [$0a09], sp
    dec c
    jr nc, @+$33

    ld [hl-], a
    ld [hl], $01

jr_029_4b11:
    ld de, $011b
    ld h, [hl]
    inc de
    rla
    ld a, [bc]
    dec c
    inc c
    ld bc, $116d
    ld bc, $106e
    ld bc, $f8f4
    ld [$0a09], sp
    ld bc, $1089
    inc c
    ld bc, $108c
    jr nc, jr_029_4b65

    scf
    jr nc, jr_029_4b63

    jr nc, jr_029_4b6a

    scf
    ld bc, $f8f4
    rla
    add hl, de

jr_029_4b3a:
    add hl, de
    rla
    add hl, de
    ld bc, $124e
    scf
    ld bc, $1fac
    ld bc, $0800
    dec c
    ld b, $f6
    ld sp, $54b7
    ld c, h
    ld l, h
    ld h, d
    sub c
    sub h
    sbc c
    and [hl]
    ld b, [hl]
    ld [hl], c
    ld a, [hl+]
    dec l
    db $ec
    rst $28
    ld [de], a
    rst $30
    ld c, d
    xor e
    inc e
    ld e, h
    jp z, $9d12

jr_029_4b63:
    ld h, c
    add hl, bc

jr_029_4b65:
    push de
    add $26
    dec l
    or d

jr_029_4b6a:
    ld d, e
    ld l, h
    ld b, c
    ld d, d
    add [hl]
    adc c
    xor l
    ld a, [c]
    xor e
    or h
    ld d, c
    ld e, h
    ld b, c
    and $8c
    ld d, l
    jp c, $8226

    ld c, d
    ld l, c
    sbc c
    or l
    ld c, a
    push de
    dec l
    jp nz, $8212

    ld l, a
    jr jr_029_4b65

    ld b, c
    ld e, l
    inc l
    ld d, e
    rst $38
    nop
    or [hl]
    ld c, c
    jr jr_029_4b3a

    nop
    db $ed
    nop
    ld b, e
    ld h, b
    ld h, d
    adc c
    xor l
    sub c
    db $dd
    ld [$44ee], a
    ld b, a
    xor [hl]
    cp a
    sub e
    db $d3
    ld l, [hl]
    xor $20
    add hl, hl
    adc b
    cp d
    ld d, a
    ld d, a
    ld h, d
    ld [hl], d
    or l
    or l
    ld c, b
    ld c, l
    call nz, Call_000_33f6
    dec sp
    ld b, $46
    ld b, c
    ld d, c
    adc c
    cp e
    ld d, a
    ld d, a
    ld [hl+], a
    ld h, d
    ld [hl], l
    db $fd
    ret


    db $db
    db $76
    ld [hl], a
    ld a, [hl]
    add c
    and l
    ld e, d
    db $db
    inc h
    and [hl]
    ld e, a
    xor a
    ld e, c
    db $db
    inc l
    and l

jr_029_4bd5:
    ld e, [hl]
    ld a, [hl]
    adc c
    ld a, [hl]
    add c
    cp l
    ld a, [hl]
    ld b, e
    db $db
    add b
    sub [hl]
    ret nz

    rst $18
    and b
    dec hl
    jr nz, jr_029_4bd5

    ret nz

    rst $18
    dec c
    sub b
    nop
    jp nz, $01db

    rst $28
    nop
    ld a, [$6f00]
    nop
    rst $38
    nop
    ld l, d
    dec c
    add b
    nop
    or e
    ld a, h
    ld a, l
    jp z, $cabd

    db $d3
    cp h
    cp l
    jp z, $f9ce

    dec c
    add b
    nop
    rst $18
    daa
    cp c
    ld a, d
    ld c, b
    call nc, $a080
    adc a
    rst $08
    sub a
    sbc b
    dec c
    add b
    nop
    db $eb
    db $f4
    sbc l
    ld e, [hl]
    ld [de], a
    dec hl
    ld bc, $f105
    di
    jp hl


Call_029_4c23:
    add hl, de
    sbc a
    ldh [$0d], a
    ldh [rDIV], a
    adc a
    rst $38
    or e
    db $fc
    ldh [$d0], a
    db $fd
    inc bc
    dec c
    ldh a, [rDIV]
    pop af
    rst $38
    call $073f
    dec bc
    dec c
    ld b, b
    nop
    ld a, a
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld e, a
    ld a, a
    dec c
    ld b, b
    nop
    cp $ff
    inc bc
    cp $02
    rst $38
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    ld a, [$3fff]
    rst $38
    ld a, a
    ret nz

    sbc $be
    ldh a, [$b0]
    ldh [$af], a
    ldh [$b8], a
    ldh [$b0], a
    ldh [$b1], a
    db $fc
    rst $38
    cp $03
    inc bc
    dec b
    inc bc
    ld bc, $f301
    ld bc, $013b
    ld a, e
    inc bc
    ld sp, hl
    ld hl, sp+$04
    ret nz

    inc hl
    sub b
    ld e, l
    ld b, b
    ld a, [c]
    db $10
    ld d, h
    add b
    sbc d
    ld c, b
    db $ed
    and d
    dec hl
    rst $08
    ret nc

    inc de
    call nc, $aa09
    ld [bc], a
    ld e, e
    ld de, $49b5
    ret


    dec b

jr_029_4c95:
    ld d, l
    ld h, $6f
    dec c
    ldh [rIE], a
    dec c
    ld a, c
    adc a
    or [hl]
    ld a, [hl]
    ld c, h
    di
    sbc b
    rst $20
    rst $00
    ld hl, sp-$48
    cp e
    add a
    or a
    add b
    xor d
    add b
    sbc e
    add b
    adc h
    ld b, c
    ld b, c
    ld a, $be
    jr nz, jr_029_4c95

    sbc [hl]
    ld h, c
    pop bc
    sbc $3f
    cp a
    nop
    cp $01
    add hl, de
    add $c6
    jr c, jr_029_4d03

    pop af
    ld c, $06
    ld sp, hl
    di
    dec bc
    db $fc
    db $fc
    or [hl]
    or c
    dec h
    ld e, [hl]
    ld [de], a
    rst $28
    add hl, sp
    rst $00
    jp $1d3f


    rst $18
    pop hl
    db $eb
    ld bc, $f7a9
    ld hl, sp-$6f
    cp $bf
    rst $38
    rst $00
    ld hl, sp-$71
    ldh a, [$0d]
    ldh [rSC], a
    rst $38
    rrca
    jp hl


    rra
    db $fd
    rst $38
    di
    rrca
    ld sp, hl
    rlca
    dec c
    ldh a, [rSC]
    add b
    rst $08
    add b
    cp a
    add a
    rst $38
    adc a
    rst $28
    ldh a, [$f0]
    db $db
    inc h
    and l

jr_029_4d03:
    ld e, d
    ld a, [hl]
    add c
    ld bc, $01f3
    db $fd
    pop hl
    rst $38
    pop af
    rst $30
    rrca
    rrca
    dec c
    ld [$5112], a
    ld a, h
    ret nc

    rst $38
    ld e, a
    ld a, a
    ld b, b
    ld a, a
    rst $18
    rst $38
    dec c
    nop
    ld [hl+], a
    adc d
    ccf
    ld a, [bc]
    cp $fb
    rst $38
    ld [bc], a
    cp $fb
    rst $38
    dec c
    db $10
    ld [hl+], a
    cp a
    rst $18
    sbc a
    and b
    add b
    adc e
    add b
    sbc a
    dec c
    ld h, $20
    ld b, b
    ld e, a
    ccf
    cp a
    di
    push af
    db $fd
    ld bc, $c301
    ld bc, $0dff
    ld [hl], $20
    ld [bc], a
    cp $fc
    db $fd
    ld a, h
    db $fc
    rla
    ld d, a
    and b
    xor d
    ld h, c
    rst $30
    cp c
    cp c
    rst $18
    rst $38
    ld h, h
    ld l, l
    sbc a
    ld e, a
    cp d
    cp d
    pop hl
    db $eb
    ld d, c
    ld d, l

jr_029_4d61:
    ld b, $a6
    dec a
    cp a
    set 3, e
    and [hl]
    xor [hl]
    ld sp, hl
    ld a, [$a00d]
    rst $38
    ld c, l
    dec c
    ret nz

    rst $38
    dec l
    rst $30
    ld [$42bd], sp
    sbc $21
    sub $29

jr_029_4d7b:
    ei
    inc b
    db $db
    inc h
    ld l, [hl]
    sub c
    xor e
    ld d, h
    rst $18
    jr nz, jr_029_4d61

    inc h
    rst $38
    ld bc, $4bb6
    sbc $27
    db $fd
    rrca
    pop af
    rra
    ld h, c
    cp a
    dec c
    nop
    inc sp
    xor c
    ei
    call nz, $f87f
    ld d, a
    sbc $8d
    adc a
    rst $18
    jr nz, jr_029_4d7b

    ld h, $fe
    ld bc, $49b6
    db $db
    inc h
    db $eb
    inc d
    db $ed
    ld [de], a
    db $fd
    add d
    cp l
    ld b, d
    rst $28
    db $10
    rst $38
    inc bc
    cp a
    ld b, h
    rst $18
    add hl, hl
    rst $38
    add hl, bc
    ld a, a
    sub e
    ld a, a
    sub e
    pop bc
    ld a, a
    pop bc
    rst $38
    add c
    rst $38
    add c
    dec c
    scf
    ld hl, $ff00
    nop
    rst $38
    ld b, a
    rst $10
    ld b, [hl]
    sub $83
    sbc e
    ld b, d
    jp z, $8981

    ld b, c
    ret


    and c
    pop hl
    ret nz

    ret nz

    ld [hl], a
    ret z

    rst $38
    ldh [$de], a
    ld sp, hl
    ld l, a
    ld a, h
    scf
    ld a, $2f
    xor [hl]
    sub l
    db $dd
    sbc c
    db $db
    rst $30
    ld a, [de]
    cp e
    ld c, [hl]
    db $db
    ld l, $fe
    rra
    rst $30
    ld a, l
    xor [hl]
    db $fd
    sbc $f7
    rst $38
    ld a, a
    add e
    rst $38
    adc d
    cp $89
    rst $38
    ret nc

    ld a, a
    ret nc

    ld a, a
    ldh a, [$bf]
    cp a
    rst $08
    call c, $b8ef
    ld hl, sp-$2c
    db $f4
    ld a, [hl-]
    ld a, [hl-]
    adc l
    adc l
    ld b, d
    jp nz, $ee22

    pop hl
    rst $38
    jr nc, @+$01

    sub c
    sub e
    and e
    and [hl]
    rst $20
    db $ec
    cp $f9
    rst $18
    call c, $ea6b
    or a
    or $7f
    ld a, h
    cp $25
    rst $38
    ld e, e
    rst $38
    ld [hl], h
    rst $38

jr_029_4e34:
    jr jr_029_4e34

    ld bc, $29d6
    ld a, e
    add h
    ld l, l
    sub d
    xor $b6
    ld a, e
    rst $18
    rst $38
    rst $00
    xor $13
    cp l
    ld b, a
    rst $28
    ld d, $f7
    ld [$48b7], sp
    jr c, @+$01

    pop de
    db $fd
    ld [hl], b
    ld e, [hl]
    ld e, [hl]
    rst $28
    rst $28
    or c
    db $fd
    ld e, $7f
    add e
    ld l, a
    sub b
    ld e, a
    ld hl, sp+$37
    db $fc
    rst $08
    call c, $fe07
    pop bc
    db $fd
    ld sp, hl
    dec sp
    rst $38
    rst $00
    rst $38
    ld a, $ff
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ret nc

    ccf
    ldh [$2f], a
    pop hl
    inc hl
    pop af
    ld de, $6ee8
    rst $38
    inc bc
    db $fc
    adc a
    ld [hl], b
    rst $38
    nop
    db $fd
    ld b, b
    ld a, a
    add b
    rst $38
    add b
    or [hl]
    sub b
    sbc a
    rst $38
    adc $31
    rst $30
    nop
    ld [hl], a
    nop
    rst $38
    ld [$04eb], sp
    scf
    inc b
    db $fd
    inc c
    db $fc
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ret c

    daa
    cp h
    rlca
    cp h
    rlca
    inc a
    inc bc
    ld h, d
    add b
    add a
    add b
    add d
    add h
    add h
    jp nz, $f742

    ld [hl], a
    ld sp, hl
    add hl, sp

jr_029_4eb9:
    db $fc
    inc b
    rst $38
    inc bc
    ld [hl], b
    rst $30
    jr jr_029_4eb9

    ld a, a
    ld a, a
    and $f7
    add d
    set 3, b
    cp $cc
    xor $cb
    rst $38
    jr c, @-$06

    nop
    pop af
    sbc b
    sbc e
    db $76
    db $76
    ld hl, $18a9
    ld a, [$7531]
    db $d3
    rst $38
    ld de, $1151
    sub c
    ld h, e
    db $eb
    rst $00
    or $f3
    ld a, [c]
    rst $00
    add $9f
    sbc h
    rst $38
    ld hl, sp-$01
    ld bc, $33fe
    adc $7b
    add h
    rst $30
    cp l
    db $e3
    rst $28
    ld e, l
    rst $38
    ld d, l
    rst $38
    ld d, e
    rrca
    reti


    ld d, [hl]
    sub $58
    ei
    rst $08
    rst $28
    bit 7, h
    jp z, $88f8

    cp h
    ld b, l
    or $f0
    sbc e
    ld l, b
    ld l, e
    ld a, [de]
    rst $18
    di
    rst $30
    db $d3
    ld a, $53
    rra
    ld de, $a03d
    ld l, l
    rst $38
    add b
    ld a, a
    call z, $de73
    cpl
    pop hl
    cp a
    push bc
    rst $10
    cp d
    rst $38
    xor d
    rst $38
    ld [$2ffc], a
    ldh a, [rNR34]
    rst $30
    rra
    db $e3
    ld a, a
    rst $38
    rst $38
    db $fc
    rra
    pop hl
    ld a, a
    sbc $3f
    ld h, e
    ld a, e
    add b
    rst $28
    nop
    db $fd
    ld [$3fe8], sp
    rst $38
    ld [hl], e
    di
    sbc h
    rst $18
    ld [hl], c
    rst $38
    db $c2, $db, $1a

    ld a, [$fd25]
    ld [bc], a
    ld a, [hl]
    jp nz, $39c6

    ccf
    ret nc

    db $d3
    cp a
    rst $38
    ccf
    db $f4
    rrca
    ld a, b
    ld c, a
    ld a, b

jr_029_4f63:
    rst $00
    call c, $9e93
    ld a, c
    ld a, e
    daa
    rst $38
    di
    db $fc
    dec c
    and b
    cpl
    ld c, l
    dec c
    ret nz

    ld [bc], a
    sbc d
    ld a, l
    xor l
    ld [hl], d
    sub e
    ld d, h
    add [hl]
    ld d, [hl]
    jr nz, jr_029_4f63

    dec c
    add b
    nop
    ei
    db $e4
    reti


    ld a, $35
    adc $c9
    ld a, [hl+]
    ld h, c
    ld [hl], d
    inc b
    sub a
    inc [hl]
    pop af
    xor a
    ccf
    sbc b
    ld e, e
    and l
    ld b, d
    dec c
    add d
    nop
    dec c
    db $ec
    db $10
    inc c
    xor a
    push af
    db $fc
    add hl, de
    jp c, $860d

    ld d, [hl]
    ld b, b
    rst $38
    ld e, a
    rst $38
    ld d, c
    db $fc
    ret nc

    ld a, a
    rst $18
    ld a, a
    ret nz

    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    dec c
    inc e
    db $10
    adc d
    ccf
    ld a, [bc]
    rst $38
    ld a, [$03ff]
    cp $ff
    cp $ff
    nop
    ld [hl], b
    ld a, [c]
    adc [hl]
    ld l, [hl]
    pop bc
    dec a
    and b
    ld e, [hl]
    and b
    ld e, b
    ret c

    inc h
    and h
    ld e, d
    ld a, [hl]
    add c
    nop
    sbc d
    nop
    adc e
    ldh [$ea], a
    cp a
    cp a
    add b
    add b
    sub b
    or [hl]
    ld d, c
    ld d, e
    add hl, sp
    cp c
    nop
    sub c
    nop
    ld b, b
    rrca
    xor a
    pop af
    push af
    ld bc, $1305
    rst $10
    inc c
    ld c, h
    jr nc, @+$35

    ld c, $6f
    ld [hl], c
    db $76
    add e
    cp h
    dec b
    ld a, d
    dec b
    ld a, [de]
    dec de
    inc h
    dec h
    ld e, d
    ld a, [hl]
    add c
    ld a, $c1
    sbc l
    ld h, d
    pop hl
    ld e, $ed
    ld [de], a
    xor $11
    add [hl]
    ld a, c
    ld [hl], l
    adc d
    ld a, e
    add h
    ld a, [hl-]
    push bc
    push de
    ld a, [hl+]
    xor $11
    xor $11
    or $09
    ld a, e
    add h
    cp a
    ld b, b
    di
    inc c
    or a
    ld c, b
    jp $dd3c


    ld [hl+], a
    cp [hl]
    ld b, c
    db $dd
    ld [hl+], a
    pop hl
    ld e, $0d
    inc h
    ld h, b
    db $ed
    ld [de], a
    rst $18
    jr nz, @-$0f

    db $10
    ld [hl], e
    adc h
    rst $38
    nop
    rst $28
    db $10
    rst $18
    jr nz, jr_029_5080

    ret nz

    dec c
    nop
    ld a, $0d
    ld [hl-], a
    jr c, jr_029_50c6

    add d
    cp l
    ld b, d
    db $ed
    ld [de], a
    rst $38
    nop
    cp c
    ld b, [hl]
    dec c
    inc b
    jr nc, @+$0f

    call z, Call_029_7730
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
    dec c
    db $dc, $30, $0d
    add b
    ld [bc], a
    and l
    ld e, d
    dec c
    adc b
    ld d, h
    dec c
    add b
    ld l, a
    dec l
    rlca

jr_029_5074:
    rst $30
    and b
    ld e, a
    dec c
    add h
    ld l, b
    jp nz, $05cd

    ld a, [$840d]

jr_029_5080:
    ld l, a
    add hl, bc
    rst $38
    nop
    rst $20

jr_029_5085:
    inc c
    db $ec
    inc b
    db $eb
    inc b
    db $ec
    inc b
    rst $28
    rlca
    rst $28
    inc b
    db $eb
    inc b
    rst $38

jr_029_5093:
    nop
    rst $00
    db $10
    rla
    nop
    rst $30
    nop
    scf
    jr nz, jr_029_5074

    ret nz

    rst $18
    ld [$08ff], sp
    dec c
    ld [$e770], sp
    inc c
    ldh [$0b], a
    db $e4
    inc c
    rst $20
    rrca
    call nz, $ff27
    nop
    ccf
    jr z, jr_029_5093

    ret z

    rst $08
    jr jr_029_50c7

    ld hl, sp+$2f
    jr c, jr_029_5085

    sbc $2b
    db $ec
    rst $38
    nop
    jr nz, @+$29

    and b
    sub $03

jr_029_50c6:
    cp e

jr_029_50c7:
    rrca
    rst $28
    ld e, a
    sbc a
    ccf
    rst $38
    cp a
    ccf
    ccf
    cp a
    nop
    ldh a, [$7f]
    ld a, a
    rst $38
    dec c
    ld d, h
    ld [hl], a
    nop
    rrca
    cp $fe
    dec c
    ld d, h
    ld a, b
    ld a, [de]
    sbc $00
    ld l, c
    ret nz

    sub $f1
    push af
    ld sp, hl
    ld a, [$fefc]
    db $fc
    db $fd
    db $fc
    db $fd
    ccf
    ccf
    ccf
    cp a
    ccf
    dec c
    add b
    ld [hl], b
    cp a
    ccf
    dec c
    adc c
    ld [hl], b
    ccf
    dec c
    ld d, h
    ld a, b
    dec c
    ld d, h
    ld [hl], b
    db $fd
    db $fc
    db $fc
    db $fc
    db $fc
    db $fd
    db $fc
    db $fc
    db $fd
    db $fd
    dec c
    ld a, h
    ld [hl], b
    db $fc
    dec c
    rst $38
    ld c, a
    ld a, $00
    ld [bc], a
    ld [$0400], sp
    ld [$0201], sp
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld [$0301], sp
    ld bc, $f508
    ld hl, sp+$02
    inc bc
    ld b, $08
    ld [hl+], a
    nop
    rlca
    ld a, b
    ld a, c
    ld a, c
    ld a, d
    dec b
    ld [$0122], sp
    ld [bc], a
    inc bc
    ld [$0a14], sp
    inc d
    dec d
    inc d
    dec d
    ld h, h
    ld h, l
    ld [$0246], sp
    ld [$0042], sp
    ld [$0c32], sp
    inc h
    dec h
    inc h
    dec h
    ld h, [hl]
    ld h, a
    ld [$0266], sp
    ld [$0062], sp
    ld [$0c32], sp
    ld [$0446], sp
    ld [$0446], sp
    ld [$0c32], sp
    ld [$0466], sp
    ld [$0466], sp
    ld [$0f72], sp
    inc bc
    ld [$0642], sp
    ld [$0f92], sp
    inc bc
    ld [$0662], sp
    dec b
    rlca
    ld [$0fb4], sp
    dec bc
    ld h, h
    ld h, l
    ld [$0fd4], sp
    dec bc
    ld h, [hl]
    ld h, a
    ld [$0f74], sp
    dec bc
    nop
    ld [$0b13], sp
    ld [$0fa2], sp
    dec c
    ld [$0042], sp
    ld [$0244], sp
    ld [$1282], sp
    ld [$0f52], sp
    ld bc, $6408
    ld [bc], a
    ld [$12a2], sp
    ld [$0b32], sp
    ld [$0301], sp
    ld [$17c1], sp
    ld [$0933], sp
    ld [$022c], sp
    ld [$19e1], sp
    ld [$09f3], sp
    nop
    ld [bc], a
    ld [$0400], sp
    ld [$0201], sp
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld [$0301], sp
    ld bc, $f508
    ld hl, sp+$02
    inc bc
    ld b, $08
    ld [hl+], a
    nop
    rlca
    ld a, b
    ld a, c
    ld a, c
    ld a, d
    dec b
    ld [$0122], sp
    ld [bc], a
    inc bc
    ld [$0a14], sp
    inc d
    dec d
    inc d
    dec d
    ld h, h
    ld h, l
    ld [$0246], sp
    ld [$0042], sp
    ld [$0c32], sp
    inc h
    dec h
    inc h
    dec h
    ld h, [hl]
    ld h, a
    ld [$0266], sp
    ld [$0062], sp
    ld [$0c32], sp
    ld [$0446], sp
    ld [$0446], sp
    ld [$0c32], sp
    ld [$0466], sp
    ld [$0466], sp
    ld [$0f72], sp
    inc bc
    jr nc, jr_029_5245

    ld [hl-], a
    inc sp
    ld [$0f8c], sp
    add hl, bc
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld [$0266], sp
    dec b
    rlca
    ld [$0f74], sp
    ld bc, $3938
    ld a, [hl-]
    dec sp
    ld [$0446], sp
    ld [$0f94], sp
    ld bc, $3d3c
    ld a, $3f
    ld [$0466], sp
    ld [$0f74], sp
    dec bc
    nop
    ld [$0b13], sp
    ld [$0fa2], sp
    dec c

jr_029_5245:
    ld [$0042], sp
    ld [$1882], sp
    ld [$0f52], sp
    ld bc, $a208
    jr jr_029_525b

    ld [hl-], a
    dec bc
    ld [$0301], sp
    ld [$17c1], sp

jr_029_525b:
    ld [$0933], sp
    ld [$022c], sp
    ld [$19e1], sp
    ld [$09f3], sp
    nop
    ld [bc], a
    ld [$0400], sp
    ld [$0201], sp
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld [$0301], sp
    ld bc, $f508
    ld hl, sp+$02
    inc bc
    ld b, $08
    ld [hl+], a
    ld bc, $7978
    ld a, c
    ld a, d
    ld [$0222], sp
    ld [bc], a
    inc bc
    ld [$0a14], sp
    ld h, b
    ld h, c
    ld [$0a42], sp
    ld [$0c32], sp
    ld h, d
    ld h, e
    ld [$0a62], sp
    ld [$0f32], sp
    inc bc
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld [$0f4c], sp
    add hl, bc
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld [$0f6c], sp
    add hl, bc
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld [$0f4c], sp
    ld bc, $0705
    ld [$0262], sp
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld [$0262], sp
    dec b
    rlca
    ld [$f8f5], sp
    ld [$0c42], sp
    ld [$0042], sp
    ld [$f8f5], sp
    ld [$0c62], sp
    ld [$0062], sp
    ld [$f9f4], sp
    ld bc, $0408
    dec e
    ld [$0b13], sp
    ld [$0f62], sp
    inc de
    ld [$0f48], sp
    ld h, $08
    ld bc, $0803
    pop bc
    rla
    ld [$0ad3], sp
    ld [$0222], sp
    ld [$18e1], sp
    ld [$09f3], sp
    nop
    ld [bc], a
    inc d
    nop
    inc b
    inc d
    ld bc, $1008
    ld de, $1110
    inc b
    ld bc, $f514
    ld hl, sp+$02
    inc bc
    ld b, $14
    ld [hl+], a
    rlca
    jr nz, jr_029_5333

    jr nz, jr_029_5335

    ld [bc], a
    inc bc
    inc d
    inc d
    ld a, [bc]
    inc c
    dec c
    inc c
    dec c
    ld l, b
    ld l, c
    inc d
    ld b, [hl]
    ld [bc], a
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    inc d
    ld [hl-], a
    inc c
    inc e
    dec e
    inc e
    dec e
    ld l, d
    ld l, e
    inc d
    ld h, [hl]
    ld [bc], a
    inc d

jr_029_5333:
    ld b, [hl]
    nop

jr_029_5335:
    inc d
    ld [hl-], a
    inc c
    ld c, $0f
    ld c, $0f
    ld l, b
    ld l, c
    ld d, [hl]
    ld d, a
    ld d, [hl]
    ld d, a
    inc d
    ld b, [hl]
    ld [bc], a
    inc d
    ld [hl-], a
    inc c
    ld e, $1f
    ld e, $1f
    ld l, d
    ld l, e
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    inc d
    ld h, [hl]
    ld [bc], a
    inc d
    ld [hl-], a
    inc c
    inc d
    ld l, d
    ld [bc], a
    ld [$0a09], sp
    dec bc
    inc d
    adc h
    rrca
    ld bc, $0705
    inc d
    ld h, [hl]
    ld [bc], a
    jr jr_029_5383

    ld a, [de]
    dec de
    inc d
    xor h
    rrca
    ld bc, $4614
    inc b
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld [hl], b
    ld [hl], c
    inc d
    ld l, [hl]
    ld c, $14
    ld h, [hl]
    inc b
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a

jr_029_5383:
    ld [hl], d
    ld [hl], e
    inc d
    xor [hl]
    ld c, $00
    ld bc, $4614
    ld [bc], a
    inc d
    adc b
    nop
    ld l, c
    ld l, c
    ld l, b
    ld l, c
    ld [de], a
    inc de
    inc d
    or d
    rrca
    ld bc, $a614
    ld b, $22
    inc hl
    inc d
    ld [hl-], a
    inc c
    inc d
    ld b, [hl]
    inc b
    inc d
    ld b, [hl]
    ld [bc], a
    inc d
    ld d, b
    rra
    dec b
    inc d
    ld h, [hl]
    inc b
    inc d
    ld [hl], b
    dec e
    inc d
    ld bc, $1409
    ld bc, $1401
    db $d3
    ld a, [bc]
    inc d
    ld [hl+], a
    ld [$2214], sp
    ld [bc], a
    rlca
    inc d
    and b
    ld hl, sp+$00
    ld [$e713], sp
    rst $20
    rst $28
    rst $28
    ldh a, [$f7]
    rst $08
    ret nc

    rst $00
    ret c

    ldh [$e7], a
    rst $08
    rst $08
    ldh a, [$f7]
    rst $20
    rst $20
    rst $30
    rst $30
    rrca
    rst $28
    di
    dec bc
    db $e3
    dec de
    rlca
    rst $20
    di
    di
    rrca
    rst $08
    rst $38
    rst $38
    rrca
    rrca
    ldh a, [$f7]
    ld c, a
    ld d, b
    rst $00
    ret c

    ld h, b
    ld h, a
    rst $08
    rst $08
    jr nc, jr_029_542f

    rst $38
    rst $38
    ldh a, [$f0]
    rrca
    rst $28
    ld a, [c]
    ld a, [bc]
    db $e3
    dec de
    ld b, $e6
    di
    di
    inc c
    call z, $f114
    ld [hl], h
    sub c
    inc d
    pop af
    call nc, $d431
    ld sp, $4413
    nop
    ld [hl], h
    sub c
    xor b
    rrca
    xor [hl]
    add hl, bc
    inc de
    ld d, b
    ld [bc], a
    xor e
    inc c
    inc de
    ld d, b
    nop
    rst $38
    inc de
    ld h, b
    ld bc, $5555
    rst $38
    rst $38
    ld bc, $ff01
    rst $38

jr_029_542f:
    jr jr_029_5449

    inc de
    ld h, b
    ld [bc], a
    ld a, d
    ld a, d
    rst $38
    rst $38
    add c
    add c
    rst $38
    rst $38
    jr nc, jr_029_546e

    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    rst $00
    nop
    nop
    nop

jr_029_5449:
    cp $00
    nop
    nop
    rst $28
    inc de
    adc b

Call_029_5450:
    dec bc
    rst $08
    rst $20
    rst $20
    db $e3
    db $e3
    rst $20
    rst $20
    ret nz

    ret nz

    rst $20
    rst $20
    push bc
    push bc
    inc de
    ld h, b
    nop
    rst $20
    rst $20
    rlca
    rlca
    rst $20
    rst $20
    inc bc
    inc bc
    rst $20
    rst $20
    and e
    and e
    inc de

jr_029_546e:
    ld h, b
    nop
    ld b, c
    ld e, c
    and d
    xor d
    ld c, b
    call c, $f232
    xor a
    ld c, a
    jp $ae3b


    ld d, c
    ccf
    ret nz

    ld [hl+], a
    ld [hl+], a
    and h
    and h
    and d
    and d
    or c
    or c
    ld e, l
    ld e, l
    sbc d
    sbc d
    ld a, d
    ld a, d
    rst $00
    rlca
    sbc a
    sbc a
    pop af
    or $c6
    reti


    sbc c
    and [hl]
    adc h
    or e
    jp $e0dc


    db $e3
    rst $18
    rst $18
    ld sp, hl
    ld sp, hl
    dec c
    db $ed
    ld [hl], e
    adc e
    and c
    ld e, l
    add hl, sp
    push bc
    ld h, c
    sub c
    rlca
    rst $00
    ei
    ei
    rst $28
    rst $28
    ldh [$e0], a
    ldh a, [$f7]
    rst $38
    rst $38
    ret c

    reti


    rst $28
    rst $28
    db $e3
    db $ec
    ldh a, [$f3]
    rst $30
    rst $30
    rlca
    rlca
    rrca
    rst $28
    di
    di
    rra
    sbc a
    rst $30
    rst $30
    rst $00
    scf
    rrca
    rst $08
    ld l, a
    ld l, a
    ldh [$e0], a
    inc de
    ld l, $00
    jr jr_029_54f2

    rst $28
    rst $28
    inc hl
    inc l
    inc de
    ld c, $10
    inc b
    inc b
    rrca
    rst $28
    pop af
    pop af
    rra
    sbc a
    or $f6
    call nz, $0f34
    rst $08
    ldh a, [$35]
    add sp, $69

jr_029_54f2:
    rst $20
    or a
    rst $10
    sbc b
    and b
    ret nc

    sbc a
    and b
    ret nz

    ret nz

jr_029_54fc:
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
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    jr c, @+$3a

    inc de
    ld l, b
    ld [bc], a
    db $10
    db $10
    inc de
    ld l, b
    ld a, [de]
    jr nc, @+$32

    rst $38
    rst $38
    db $fd
    ld bc, $7d81
    add c
    ld d, l
    inc de
    ld l, d
    nop
    nop
    db $fd
    ld hl, sp-$01
    inc de
    add b
    jr jr_029_5534

jr_029_5533:
    ld a, a

jr_029_5534:
    ccf
    rst $38
    inc de
    ld h, b
    ld [de], a
    inc de
    ld l, [hl]
    nop
    inc de
    ld h, [hl]
    nop
    inc de
    ld h, b
    nop
    inc de
    ld h, d
    db $10
    inc de
    ld l, [hl]
    db $10
    xor e
    xor e
    inc de
    ld h, b
    nop
    jr nz, jr_029_54fc

    jr nz, jr_029_55ba

    nop
    ld b, c
    db $10
    ld d, l
    adc b
    adc b
    adc l
    sbc l
    adc $ce
    di
    ldh a, [rTIMA]
    sub l
    ld b, e
    db $db
    ld [hl+], a
    ld a, e
    dec e
    ld e, [hl]
    scf
    jr c, jr_029_5533

    db $f4
    ld a, l
    add d
    or $09
    jp c, $88da

    xor b
    ld c, b
    ld e, c
    ld b, h
    push de
    ld b, h
    ld c, l
    add b
    adc d
    and b
    xor d
    xor b
    xor h
    di
    ei
    ld h, [hl]
    ld h, [hl]
    ld b, a
    ld c, a
    ld b, d

jr_029_5584:
    ld c, d
    ld [bc], a
    adc d
    ld [$0ba8], sp
    xor e
    rrca
    cpl
    rst $08
    ccf
    or c
    db $76
    ld b, [hl]
    inc de
    push hl
    ld bc, $0813
    nop
    db $dd
    db $dd
    di
    db $fc
    dec c
    adc $72
    inc de
    push af
    rlca
    nop

jr_029_55a3:
    nop
    rst $38
    add b
    ret nz

    add b
    ret nz

    or l
    ret nz

    cp a
    jp z, $d5b5

    xor d
    db $ca, $b5, $13

    adc c
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld d, b
    ld [bc], a

jr_029_55ba:
    ld hl, sp-$56
    ld d, b
    ld d, d
    xor b
    xor d
    ld d, b
    inc de
    inc l
    jr nz, jr_029_55d8

    ld b, b
    jr z, jr_029_55db

    inc a
    jr nz, jr_029_55de

    ld d, b
    jr z, jr_029_55a3

    xor d
    ret nz

    cp a
    rst $38
    add b
    rst $38
    rst $38
    ld b, b
    ld b, b

jr_029_55d7:
    ld b, b

jr_029_55d8:
    ld a, a
    ld e, a
    ld a, a

jr_029_55db:
    ld [hl], b
    ld [hl], b
    ld d, d

jr_029_55de:
    xor b
    ld [bc], a
    ld hl, sp-$01
    ld bc, $ffff
    ld [bc], a
    ld [bc], a
    ld [bc], a
    cp $fa
    cp $0e
    ld c, $7d
    add d
    add a
    ld b, a
    add c
    ld a, $1f
    jr nz, jr_029_55d7

    xor $bc
    cp a
    add a
    rst $00
    add c
    add c
    ld a, a
    ld a, a
    add b
    sbc a
    rst $20
    jr jr_029_5584

    ld a, a
    rst $38
    nop
    nop
    rst $38
    ld a, [$70fa]
    ld [hl], b
    rst $38
    rst $38
    nop
    rst $38
    cp $01
    ld [hl], b
    adc a
    inc de
    sbc b
    jr nz, @+$01

    rst $38
    ei

jr_029_561b:
    ei
    rst $38
    ldh a, [$0c]
    rst $08
    ld h, e
    sub d
    inc sp
    set 4, c
    add hl, de
    rrca
    rst $08
    or e
    or e
    ld a, e
    ld a, e
    ld b, c
    ret


    or b
    inc [hl]
    ld c, $fe
    ccf
    jp $ae51


    ret nz

    ccf
    sub a
    ld l, b
    jr nz, jr_029_561b

    ld hl, $0165
    sbc l
    ld c, e
    ld c, e
    rst $38
    rst $38
    xor a
    ld l, a
    ld h, h
    and h
    ld a, l
    cp l
    adc a
    ld l, a
    add hl, bc
    ld l, c
    nop
    inc [hl]
    nop
    inc b
    rst $38
    rst $38
    xor h
    xor a
    sbc [hl]
    sbc l
    db $dd
    sbc $f7
    ldh a, [$5f]
    ld e, a
    rst $18
    sbc $7a
    ld a, l
    db $f4
    rlc b
    rst $38
    sbc e
    ld h, h
    ld b, b
    cp a
    rra
    ldh [rIE], a
    rst $38
    db $fd
    add c
    add c
    db $fd
    add c
    push de
    inc de
    ld a, d
    nop
    cp l
    cp l
    add c
    xor c
    inc de
    ld h, b
    ld [bc], a
    ld d, a
    ld d, a
    inc de
    ld l, b
    ld [bc], a
    ld b, $06
    inc de
    ld h, b
    ld [bc], a
    ld a, h
    ld a, a
    ldh a, [$f7]
    db $fc
    rst $38
    ld c, $0e
    nop
    ldh [rNR13], a
    ld h, b
    nop
    ldh a, [$f3]
    inc b
    push de
    nop
    ldh [rP1], a
    ld hl, sp+$01
    ld d, c
    inc de
    xor c
    jr nz, jr_029_56a3

jr_029_56a3:
    ldh [rP1], a
    db $fc
    nop
    ldh a, [$0a]
    ld a, [bc]
    ld d, a
    ld d, a
    xor b
    xor c
    ret nc

    db $d3
    rst $38
    rst $38
    jr nz, @+$30

    ld b, b
    ld e, a
    add b
    cp a
    nop
    ld a, a
    nop
    ccf
    nop
    adc d
    ld d, b
    push de
    rst $38
    rst $38
    ld a, [bc]
    ld a, [bc]
    ld d, $f6
    ld [de], a
    ld a, [c]
    inc d
    push de
    jr nc, jr_029_5703

    or b
    cp a
    ld d, b
    ld d, b
    inc de
    ld h, b
    inc bc
    push de
    rra
    rst $38
    ld b, $f6
    inc bc
    inc bc
    nop
    inc e
    inc de
    ld h, b
    ld [bc], a
    inc de
    add b
    jr c, @+$15

    ld [bc], a
    ld [hl], $80
    db $fd
    ld hl, sp-$01
    ld hl, $c221
    jp nc, Jump_029_4545

    ld [$7fea], a
    ld a, a
    db $fd
    db $fd
    add $d6
    push bc
    db $dd
    ret nz

    ret c

    call nz, $bcc4
    cp h
    sbc b
    sbc b
    inc b
    ld h, h

jr_029_5703:
    ld b, $76
    ld [bc], a
    ld_long a, $ff03
    daa
    daa
    ld b, b
    ld b, b
    ld b, b
    ld e, [hl]
    adc b
    cp a
    inc c
    ld a, a
    rrca
    cpl
    dec de
    rra
    ld de, $fc1f
    rst $38
    ld d, b
    ld d, a
    pop hl
    rst $28
    ret nz

    cp $81
    db $fd
    ld [bc], a
    ld e, d
    ld b, $a6
    inc b
    ld d, h
    ld bc, $823b
    or d
    ld c, l
    ld l, l
    or a
    or a
    ld l, [hl]
    ld l, [hl]
    sub b
    sub a
    jr nc, jr_029_5776

    ret nz

    cp $2f
    cpl
    ld c, c
    ld c, c
    sbc a
    sbc a
    jr c, @+$3a

    rra
    rra
    adc h
    adc h
    add a
    add a
    add [hl]
    add [hl]
    inc de
    ld h, b
    ld a, [de]
    ld d, b
    ld d, b
    db $f4
    rst $30
    jr jr_029_5771

    ldh a, [rIE]
    jr nc, jr_029_5788

Jump_029_5756:
    ldh [$e1], a
    ld c, b
    ld c, d
    push af
    push af
    db $db
    db $db
    nop
    rst $20
    nop
    rst $18
    nop
    cp a
    nop
    ld a, b
    nop
    ld [hl], b
    nop
    and $00
    db $ec
    nop
    db $ec
    nop
    rst $20
    nop

jr_029_5771:
    ei
    nop
    db $fd
    nop
    inc e

jr_029_5776:
    db $10
    ld a, [de]
    jr jr_029_5796

    ld [$9809], sp
    sbc h
    ld [hl], b
    ld [hl], a
    ld b, b
    ld c, a
    ld b, b
    ld e, [hl]
    ld b, b
    ld c, l
    ld b, b
    ld c, e

jr_029_5788:
    nop
    inc hl
    inc d
    dec [hl]
    inc e
    ld a, l
    ld a, [hl+]
    ld [$f535], a
    ld a, [de]
    jp c, $df1f

jr_029_5796:
    ld e, $fe
    dec b
    add l
    ld c, $8e
    ld e, d
    ld e, d
    inc de
    xor h
    ld [bc], a
    db $c4, $c4, $13
    and h

jr_029_57a5:
    ld [bc], a
    ret nz

    ret nz

    inc de
    xor h
    ld [bc], a
    ld h, e
    ld h, e
    inc de
    or h
    ld [bc], a
    daa
    daa
    ccf
    ccf
    rrca
    rrca
    rlca
    rlca
    and $e7
    ld e, [hl]
    ld e, a
    cp b
    cp c
    or $f6
    ldh [$e1], a
    inc de
    ld a, b
    ld [bc], a
    sub b
    sub b
    rst $38
    rst $38
    ld l, a
    rst $28
    ld sp, $1ff1
    ld a, a
    add $de
    rst $00
    rst $38
    jp $87f3


    rst $10
    and e
    or e
    or e
    or e
    adc e
    adc e
    rst $38
    rst $38
    ld bc, $01fd
    ld a, c
    ld bc, $0471
    ld [hl], l
    ld c, $2f
    rrca
    cpl
    sbc a
    cp a
    rst $38
    rst $38
    ldh a, [$fa]
    ld h, b
    ld h, b
    jr nc, jr_029_57a5

    db $10
    sub b
    dec c
    ld l, l
    ld a, [bc]
    ld e, d
    dec e
    dec e
    rst $38
    rst $38
    ld [$38a8], sp
    jr c, jr_029_583d

    cp c
    ld d, e
    db $d3
    ld [hl], a
    rst $30
    ld [hl], $36
    db $fc
    db $fd
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    cp $c0
    add sp, -$60
    or h
    ld de, $1fd9
    sbc a
    ld a, [bc]
    ld c, d
    rst $38
    rst $38
    sub a
    sub a
    db $e3
    db $e3
    push de
    push de
    db $eb
    db $eb
    push af
    push af
    ld l, e
    ld l, e
    push de
    push de
    inc de
    cp d
    db $10
    ld c, $0e
    ldh a, [$f6]
    ld d, b
    ld e, [hl]
    ldh [$ef], a
    jr nz, jr_029_5878

    ldh [$fc], a
    ld h, b

jr_029_583d:
    ld [hl], b
    xor a
    xor a
    ret


    call $f3d1
    ret nz

    ret nc

    ld b, b
    ld a, l
    nop
    ccf
    ld b, b
    ld a, a
    ret nz

    sbc $01
    pop hl
    db $10
    ldh a, [rNR21]
    or $0c
    ld a, h
    rlca
    ld [hl], a
    nop
    and b
    nop
    ret nz

    ld a, [de]
    ld a, d
    ret z

    jp z, $fdf8

    ld a, b
    ld a, d
    ld [hl], c
    ld [hl], l
    pop af
    pop af
    inc bc
    inc bc
    rra
    rra
    rst $38
    rst $38
    ld a, [bc]
    ld l, d
    dec c
    ld a, l
    ld b, $76
    rlca
    ld [hl], a
    xor a
    xor a

jr_029_5878:
    inc bc
    inc hl
    ld bc, $0369
    ld d, e
    or [hl]
    or [hl]
    ld h, d
    ld h, d
    ld [c], a
    xor $c1
    rst $18
    pop bc
    rst $18
    add b
    sub h
    add b
    and b
    pop bc
    set 4, a
    rst $20
    jp $e7c3


    rst $20
    ldh [$e0], a
    rst $20
    rst $20
    pop hl
    pop hl
    inc de
    and h
    ld [bc], a
    inc de
    or [hl]
    nop
    rlca
    rlca
    rst $30
    rst $30
    inc de
    ld a, d
    ld b, d
    ret nz

    ret z

    sub b
    pop de
    xor c
    xor c
    pop de
    push de
    cp c
    cp e

jr_029_58b1:
    add c
    and l
    add b
    cp [hl]
    add b
    db $fd
    rra
    sbc a
    add hl, bc
    ld c, c
    rra
    rra
    cp b
    cp b
    ld a, a
    ld a, a
    sbc b
    sbc b
    rra
    ccf
    xor [hl]
    xor [hl]

jr_029_58c7:
    pop bc
    ld a, $77
    adc b
    ld d, b
    xor a
    dec l
    db $d2, $ef, $1f

    sub b
    ld d, a
    ld b, a
    sbc b
    ei
    ld h, h
    nop
    rst $38
    or a
    ld c, b
    add hl, bc
    or $b7
    ld c, b
    db $e4
    db $eb
    dec bc
    add sp, -$0c
    dec c
    db $db
    ld [hl+], a
    ld c, b
    rst $10
    ld h, a
    add sp, -$10
    ld [hl], b
    rst $38
    ld a, a
    ret c

    ld e, b
    ret nc

    ret nc

    ei
    ei
    xor $3c
    dec de
    ld [c], a
    and $17
    rra
    ld e, $fa
    ei
    inc sp
    ld [hl-], a
    ld de, $3f11
    ccf
    ei
    db $f4
    ld [hl], e
    ld a, a
    adc c
    xor d
    rst $20
    jr jr_029_58b1

    ld e, h
    ld b, a
    cp b
    sub e
    ld l, h
    cp c
    ld b, [hl]
    ld a, h
    add e
    db $dd
    db $dd
    jr nz, jr_029_58c7

    db $fd
    ld [bc], a
    or $09
    rst $28
    db $10
    rst $18
    jr nz, @-$3f

    ld b, b
    rra
    ldh [$1f], a
    ldh [$e0], a
    rra
    adc [hl]
    ld [hl], c
    ld [hl], e
    adc h
    ld hl, sp+$07
    rlca
    ld hl, sp-$21
    jr nz, @-$3e

    ccf
    ldh [$1f], a
    rst $18
    jr nz, jr_029_593f

    db $fc
    db $fc
    inc bc

jr_029_593f:
    nop
    rst $38
    cp a
    ld b, b
    sbc $21
    ld b, b
    cp a
    scf

jr_029_5948:
    ret z

    ei
    inc b
    nop
    rst $38
    rst $18
    jr nz, @-$1e

    rra
    sbc l
    ld h, d
    ld b, b
    cp a
    db $eb
    inc d
    rlca
    ld hl, sp-$45
    ld b, h
    ld a, h
    add e
    sbc e
    ld h, h
    dec b
    ld a, [$03fc]
    inc bc
    db $fc
    scf
    ret z

    ld [c], a
    ld [c], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl], d
    ld b, $e7
    nop
    ret nz

    inc bc
    add a
    cp a
    cp a
    ld hl, sp-$08
    rlca
    ld h, a
    rrca
    rst $28
    rrca
    rst $08
    rra
    sbc a
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    jr c, jr_029_5948

    inc a
    cp a
    inc a
    cp a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    ld [$d5ea], a
    push de
    call z, $13f3
    ld e, h
    ld h, b
    inc de
    ld [hl], b
    ld h, d
    ld a, [hl+]
    xor d
    ld d, l
    ld d, l
    db $fd
    ld [bc], a
    db $e4
    db $e4
    db $eb
    db $eb
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fd
    cp $13
    adc d
    ld h, c
    adc a
    rst $08
    ld b, l
    ld h, l
    xor $ee
    ld e, d
    ld e, d
    xor l
    xor l
    ld [bc], a
    ld a, [$faf8]
    ld e, $1f
    inc de
    adc d
    ld h, d
    inc de
    adc d
    ld h, b
    xor d
    xor d
    ld d, l
    ld d, l
    cp [hl]
    ld b, c
    ld e, $df
    ld a, $ff
    ld a, $bf
    ld a, [hl]
    cp $7e
    ld a, [hl]
    xor e
    xor e
    ld d, a
    ld d, a
    rst $18
    inc hl
    inc de
    ld e, d
    ld h, b
    inc de
    ld [hl], h
    nop
    push af
    push af
    ld a, d
    ld a, d
    ldh [$e0], a
    rst $18
    ret nz

    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    xor [hl]
    xor [hl]
    ld d, a
    ld d, a
    ld l, $2e
    rlca
    rlca
    ld a, [$bf02]
    cp a
    inc de
    ld e, b
    ld h, d
    inc de
    db $e4
    ld h, h
    db $fd
    db $fd
    inc de
    ret nc

    ld h, d
    inc de
    ret nc

    ld h, d
    cp $13
    adc e
    nop
    inc de
    ld [bc], a
    ld a, a
    ld c, l
    inc de
    ld h, d
    ld a, a
    ld c, l
    inc de
    jp nz, $2a7f

    nop
    ld [bc], a
    ld bc, $0f0e
    ld d, $17
    ld d, $57
    ld d, $17
    ld d, $17
    ld l, [hl]
    ld l, a
    ld d, [hl]
    ld d, $17
    ld d, $39
    add hl, de
    jr jr_029_5a4b

    rst $38
    ld bc, $f7f5
    ld e, $1f
    ld bc, $0002
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld l, h
    ld l, l
    ld bc, $000c
    ld b, [hl]
    rlca
    ld b, $07
    ld bc, $0814

jr_029_5a4b:
    ld bc, $0200
    ld h, b
    ld h, c
    ld bc, $0046
    ld bc, $000c
    ld d, [hl]
    rla
    ld d, $17
    ld bc, $0a14
    ld a, [de]
    dec de
    ld a, [de]
    dec bc
    ld h, d
    ld h, e
    ld bc, $0066
    ld a, [bc]
    dec de
    ld a, [de]
    dec de
    ld bc, $0c50
    ld c, $0f
    ld bc, $0246
    ld bc, $0482
    nop
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0a14
    ld bc, $0266
    ld bc, $04a2
    db $10
    inc de
    ld [de], a
    inc de
    ld bc, $0e74
    ld e, d
    ld e, e
    ld bc, $0482
    inc b
    dec b
    inc b
    dec b
    ld bc, $0e94
    ld e, h
    ld e, l
    ld bc, $04a2
    inc d
    dec d
    inc d
    dec d
    ld bc, $0c74
    ld e, d
    ld e, e
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    ld bc, $06c6
    ld bc, $0c94
    ld e, h
    ld e, l
    inc l
    dec l
    ld l, $2f
    ld bc, $06e6
    ld bc, $0fb4
    add hl, bc
    ld bc, $1f10
    ld bc, $e401
    ld [$3001], sp
    rra
    inc bc
    ld bc, $0a82
    ld bc, $0f94
    add hl, bc
    ld bc, $1e30
    jr nz, jr_029_5af2

    ld bc, $1cc2
    ld bc, $0a14
    ld bc, $1ee0
    ld bc, $0814
    nop
    ld [bc], a
    nop
    jr jr_029_5afb

    jr jr_029_5afd

    jr nc, jr_029_5aee

    add hl, bc
    nop
    dec b
    inc b
    jr nc, jr_029_5aec

jr_029_5aec:
    nop
    nop

jr_029_5aee:
    rst $38
    nop
    inc d
    rlca

jr_029_5af2:
    ld b, $07
    ld b, $07
    nop
    inc b
    ld [$2000], sp

jr_029_5afb:
    nop
    nop

jr_029_5afd:
    inc d
    ld [$1716], sp
    ld d, $17
    add hl, sp
    add hl, de
    nop
    nop
    nop
    nop
    ld b, [hl]
    ld [bc], a
    nop
    ld b, b
    nop
    nop
    inc [hl]
    inc c
    ld b, [hl]
    rlca
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    rlca
    ld b, $47
    nop
    ld d, b
    inc c
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld d, [hl]
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, d
    ld b, e
    ld c, b
    ld c, c
    ld d, a
    nop
    add b
    nop
    nop
    inc d
    ld [$1312], sp
    ld [de], a
    inc de
    ld d, [hl]
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, d
    ld d, e
    ld e, b
    ld e, c
    ld d, a
    nop
    and b
    nop
    nop
    inc d
    ld [$0504], sp
    inc b
    dec b
    ld d, [hl]
    ld a, [hl-]
    dec sp
    inc a
    ld h, h
    ld h, l
    ld l, b
    ld l, c
    dec a
    ld a, $3f
    ld d, a
    nop
    ret nz

    nop
    nop
    inc d
    ld [$1514], sp
    inc d
    dec d
    ld a, [bc]
    ld c, d
    ld c, e
    ld c, h
    ld h, [hl]
    ld h, a
    ld l, d
    ld l, e
    ld c, l
    ld c, [hl]
    ld c, a
    dec bc
    nop
    ldh [rP1], a
    nop
    inc d
    ld [$6160], sp
    nop
    nop
    db $10
    ld [hl+], a
    inc hl
    nop
    nop
    ld [de], a
    nop
    nop
    ld [de], a
    nop
    inc d
    ld [$6362], sp
    nop
    jr nz, jr_029_5b9d

    inc h
    dec h
    nop
    jr nz, jr_029_5ba4

    nop
    jr nz, jr_029_5ba7

    nop
    db $f4
    inc c
    ld [hl+], a
    inc hl
    inc h
    dec h
    nop

jr_029_5b9d:
    ld [bc], a
    ld [de], a
    nop
    ld b, $12
    nop
    inc d

jr_029_5ba4:
    inc e
    ld h, $27

jr_029_5ba7:
    ld h, $27
    nop
    ld [hl+], a
    ld [de], a
    nop
    ld h, [hl]
    ld [de], a
    nop
    db $f4
    ld c, $00
    nop
    ld [de], a
    nop
    ld b, [hl]
    ld [de], a
    nop
    ld [de], a
    rra
    ld bc, $2000
    ld [de], a
    nop
    ld h, [hl]
    ld [de], a
    nop
    ld [hl-], a
    ld a, [de]
    jr nz, jr_029_5be8

    nop
    ret nz

    ld [de], a
    nop
    nop
    stop
    ret nz

    inc d
    nop
    inc d
    ld [$1f1e], sp
    nop
    ldh [rNR12], a
    nop
    jr nz, @+$12

    nop
    ldh [rNR14], a
    nop
    inc d
    ld [$0200], sp
    nop
    jr jr_029_5bff

    jr jr_029_5c01

jr_029_5be8:
    ld d, $17
    ld d, $57
    ld l, [hl]
    ld l, a
    ld d, $17
    jr nc, jr_029_5c2a

    nop
    dec c
    nop
    ld c, $0f
    rst $38
    nop
    inc d
    rlca
    ld b, $07
    ld b, $47

jr_029_5bff:
    nop
    inc b

jr_029_5c01:
    nop
    ld l, h
    ld l, l
    ld a, [de]
    dec de
    nop
    inc c
    ld [bc], a
    ld e, $1f
    nop
    inc d
    ld [$0400], sp
    nop
    nop
    inc b
    nop
    ld h, b
    ld h, c
    ld h, b
    ld h, c
    add hl, sp
    add hl, de
    nop
    nop
    nop
    nop
    ld [de], a
    ld a, [bc]
    nop
    inc b
    nop
    ld a, [de]
    dec de
    ld a, [de]
    dec bc
    ld h, d
    ld h, e
    ld h, d

jr_029_5c2a:
    ld h, e
    ld d, [hl]
    rla
    ld d, $17
    ld d, $17
    nop
    ld [hl-], a
    ld a, [bc]
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $4800
    nop
    nop
    ld c, b
    nop
    nop
    ld l, h
    ld [bc], a
    nop
    ld [de], a
    ld a, [bc]
    ld [de], a
    inc de
    ld [de], a
    ld de, $6800
    nop
    nop
    ld l, b
    rrca
    dec b
    inc b
    dec b
    inc b
    dec b
    nop
    add h
    rrca
    add hl, bc
    inc d
    dec d
    inc d
    dec d
    nop
    and h
    inc b
    ld a, [bc]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    nop
    ld [hl-], a
    ld a, [bc]
    nop
    add h
    inc b
    nop
    nop
    ld d, $00
    ld [de], a
    ld a, [bc]
    nop
    and h
    inc b
    nop
    jr nz, jr_029_5c8c

    nop
    ld a, [c]
    rrca
    dec b
    ld e, d
    ld e, e
    jr z, jr_029_5ca7

    ld a, [hl+]
    dec hl
    ld e, d
    ld e, e
    nop
    ld [de], a
    rra
    dec b
    ld e, h
    ld e, l
    inc l
    dec l
    ld l, $2f

jr_029_5c8c:
    ld e, h
    ld e, l
    nop
    ld a, [c]
    rrca
    dec sp
    jr nz, jr_029_5cb5

    nop
    ret nz

    inc e
    nop
    ld [de], a
    ld a, [bc]
    ld e, $1f
    nop
    ldh [rNR34], a
    nop
    inc d
    ld [$0800], sp
    add [hl]
    ld h, d
    ld l, d

jr_029_5ca7:
    jp nz, $e2ca

    ld [$cdc1], a
    ld h, c
    ld h, l
    ld [hl], c
    ld [hl], l
    and b
    and h
    or b
    or h

jr_029_5cb5:
    ld [$00f9], sp
    ld h, c
    ld [$006a], sp
    ld [hl], d
    ld [$046b], sp
    dec h
    adc b
    xor c
    adc h
    cp h
    add b
    sub e
    add b
    xor e
    add b
    xor d
    add b
    or [hl]
    ld b, b
    ld [hl], l
    add h
    or l
    add h
    or a
    ld b, b
    ld e, d
    nop
    sbc b
    ld [bc], a
    jp c, $cd01

    ld bc, $05e5
    and l
    ld b, h
    ld [hl], h
    jp nz, $e1da

    jp hl


    nop
    ld h, $08
    dec a
    nop
    or c
    inc b
    sub l
    inc b
    ld c, l
    nop
    ld c, d
    nop
    xor d
    ld [$03cd], sp
    dec sp
    ld b, l
    ld d, l
    ld b, a
    ld e, a
    inc bc
    adc e
    ld [hl+], a
    cp d
    ld hl, $23a9
    db $eb
    ld bc, $00cd
    add hl, de
    add d
    sbc d
    nop
    inc l
    add c
    and a
    add b
    sub [hl]
    inc b
    rla
    ld b, b
    ld e, e
    ret nz

    reti


    ld bc, $00ad
    call nc, $c000
    add hl, bc
    db $eb
    ld bc, $0263
    ld h, d
    ld [bc], a
    ld [hl-], a
    inc bc
    inc sp
    add [hl]
    nop
    dec c
    ld [$6301], a
    ld [$056a], sp
    ld h, a
    add hl, bc
    ld l, e

jr_029_5d31:
    inc b
    ld h, $89
    xor c
    adc l
    cp a
    ld b, b
    ld d, l
    adc b
    sbc l
    ret nz

    pop de
    add h
    adc l
    ld b, h
    ld c, l
    ld b, b
    ld b, l
    add b
    and l
    adc b
    call Call_000_3303
    ld b, l
    ld d, l
    ld h, a
    ld a, a
    inc hl
    xor e
    add [hl]
    ld e, b
    inc b
    ld b, c
    ld e, c
    and d
    xor d
    ld c, b
    call c, $f232
    xor a
    ld c, a
    jp $ae3b


    ld d, c
    jr nc, jr_029_5d31

    ld [hl+], a
    ld [hl+], a
    and h
    and h
    and d
    and d
    or c

Jump_029_5d69:
    or c
    ld e, l
    ld e, l
    sbc d
    sbc d
    ld a, d
    ld a, e
    push de
    ld a, [hl+]
    sbc a
    sbc a
    pop af
    or $c6
    reti


    sbc c
    and [hl]
    adc h
    or e
    jp $e0dc


    db $e3
    rst $18
    rst $18
    ld sp, hl
    ld sp, hl
    dec c
    db $ed
    ld [hl], e
    adc e
    and c
    ld e, l
    add hl, sp
    push bc
    ld h, c
    sub c
    rlca
    rst $00
    ei
    ei
    or b
    or h
    ret nc

    sub $50
    ld d, [hl]
    or b
    or d
    sub b
    sub d
    ret z

    db $eb
    adc b
    sbc c
    ld b, b
    ld d, c
    add h
    or h
    ld bc, $413b
    ld a, l
    ld b, c
    ld [hl], l
    ld b, b
    halt
    ld [hl-], a
    ld b, b
    ld a, e
    inc b
    dec [hl]
    ld b, b
    ld e, d
    and d
    xor [hl]
    ld h, d
    ld [hl], a
    and c
    or l
    ret z

    sbc $88
    sbc d
    ret z

    jp c, $9584

    call nz, $42cd
    ld c, d
    ld h, d
    ld a, [hl]
    ld bc, $8195
    pop af
    add d
    ld [$7545], a
    ld c, d
    ld l, d
    nop
    push bc
    ld [$0c69], sp
    ld l, l
    inc b
    dec h
    add h
    or l
    add b
    or c
    ld b, b
    ld d, b
    ld b, b
    ret c

    inc bc
    ld c, a
    ld de, $0375
    ld h, a
    add hl, bc
    ld l, c
    ld a, [bc]
    ld a, [hl-]
    dec b
    or l
    rlca
    or a
    dec b
    sub l
    and b
    cp l
    jr nz, jr_029_5e23

    add b
    adc l
    db $10
    ld d, $80
    and [hl]
    add b
    and a
    adc b
    cp e
    nop

jr_029_5e01:
    ld d, e
    ld bc, $0191
    sbc c
    ld hl, $11b9
    reti


    ld de, $09d9
    ld l, c
    add hl, bc
    ld l, c
    ld bc, $b0b1
    or h
    ret nc

    call nc, Call_029_5450
    or b
    or [hl]
    sub b
    sub [hl]
    ret z

    xor $88
    sbc a
    ld b, b
    ld d, a
    add l

jr_029_5e23:
    or l
    nop
    ld [hl-], a
    ld c, c
    ld a, c
    ld c, d
    ld a, d
    ld b, d
    ld [hl], d
    dec b
    dec [hl]
    ld b, l
    ld a, l
    ld bc, $8431
    push bc
    add h
    and l
    ld b, h
    ld b, l
    add h
    sub l
    add b
    sub c
    and b
    cp c
    and b
    cp c
    ld h, b
    ld l, l
    inc bc
    ld c, a
    ld bc, $0365
    rst $20
    ld bc, $0261
    ld [hl], d
    ld bc, $05b1
    or l
    dec b
    push af
    jr nz, jr_029_5e01

    jr nz, @+$6b

    nop
    ld b, c
    db $10
    ld d, l
    adc b
    adc b
    adc l
    sbc l
    adc $ce
    cp a
    ld b, b
    dec b
    sub l
    ld b, e
    db $db
    ld [hl+], a
    ld a, e
    dec e
    ld e, [hl]
    ld [hl], $39
    set 6, h
    ld l, l
    sub d
    ld b, $f9
    jp c, $88da

    xor b
    ld c, b
    ld e, c
    ld b, h
    push de
    ld b, h
    ld c, l
    add b
    adc d
    and b
    xor d
    xor b
    xor h
    di
    ei
    ld h, [hl]
    ld h, [hl]
    ld b, a
    ld c, a
    ld b, d
    ld c, d
    ld [bc], a
    adc e
    ld [$0ba8], sp
    xor e
    rrca
    cpl
    rst $08
    ccf
    or c
    db $76
    ld b, [hl]
    add [hl]
    push hl
    ld bc, $d8c7
    ldh [$e7], a
    db $dd
    db $dd
    di
    db $fc
    dec c
    adc $72
    add [hl]
    push af
    rlca
    ld [hl], h
    ld [hl], a
    rst $00
    rst $00
    add hl, bc
    ld l, d
    ld [hl], b
    sub h
    cp e
    ld d, e
    rst $38
    scf
    rst $10
    ld d, e
    ld c, c
    ld c, d
    sub h
    call nc, $e1e0
    sub a
    ld e, a
    ld c, $29
    call c, $ffcb
    db $ec
    db $eb
    jp z, $5292

    inc bc
    db $fc
    db $e4
    dec de
    cp e
    ld [hl], a
    dec a
    db $ec
    rst $18
    dec d
    ld [hl], h
    or l
    xor e
    ld a, $f3
    ld d, l

jr_029_5ed8:
    ld [de], a
    db $ed
    dec e
    ld [c], a
    rst $28
    or $de
    dec de
    db $fd
    ld d, h
    sub a
    ld d, [hl]
    ld l, d
    ld a, $d5
    rst $20
    ldh a, [$5f]
    ldh a, [rHDMA5]
    ldh a, [$5f]
    ldh a, [$5a]
    ldh a, [rHDMA5]
    ldh a, [$5a]
    pop af
    ld d, b
    di
    ld d, b
    rlca
    db $fd
    rrca
    ld d, l
    rra

jr_029_5efd:
    push hl
    scf
    add l
    ld l, a
    dec b
    rst $18
    dec b
    cp a
    dec b
    ld [hl], a
    dec b
    rst $00
    jr c, jr_029_5efd

    dec c
    rra
    xor $89
    ld a, c
    db $fd
    dec b
    ld c, $f2
    ld d, d
    xor [hl]
    rst $38
    ld bc, $40bc
    ld bc, $dffd
    ld hl, $f58b
    ld [hl], c
    ld b, c
    and a
    xor c
    ld c, a
    ld [hl], c
    cp a
    ret nz

    ldh a, [$8f]
    add c
    cp $6b
    sub h
    inc bc
    db $fd
    cp $f2
    adc l
    ld a, l
    jp nz, $e13e

    rra
    ld [hl], b
    adc a
    rst $38
    nop
    di
    ld a, h
    sbc h
    sub e
    and b

jr_029_5f41:
    cp a
    ld a, a
    ld b, b
    db $76
    ld c, c
    add b
    rst $38
    dec de
    ldh [$e3], a
    jr jr_029_5ed8

    ld [hl], b
    ld [hl], e
    adc b
    ld hl, sp+$03
    ld b, $fb
    sbc $23
    rst $00
    add hl, sp
    cp b
    ld b, b
    sbc a
    jr nz, @-$2f

    ld [hl], b
    and b
    ccf
    db $10
    rst $18
    jr @+$01

    inc h
    rst $20
    ret c

    db $db
    ld hl, sp-$19
    pop af
    rrca
    pop bc
    ccf
    ld [bc], a
    cp $04
    db $fd
    inc c
    db $fc
    ld [de], a
    ld a, [c]
    dec c
    db $fd
    jr nz, @+$01

    ccf
    ldh [rNR44], a
    db $fc
    inc a
    db $e3
    jr nz, jr_029_5f41

    ld a, a
    ld b, b
    ld a, [hl]
    ld b, c
    ldh [$9f], a
    ld [hl], b
    sub b
    or h
    db $76
    ret nc

    ld d, b
    sub h
    sub [hl]
    sub b
    sub b
    add [hl]
    ld b, $3f
    inc bc
    add a
    sub a
    add b
    sbc h
    add b
    sbc a
    call nz, $c34b
    ld c, h
    ldh [rNR44], a
    ld e, b
    cp b
    ccf
    rst $00
    pop hl
    jp hl


    ld bc, $0139
    ld sp, hl
    inc hl
    jp nc, Jump_000_32c3

    rlca
    db $c4, $19, $1e
    cp $e1
    rst $30
    ld e, b
    ld a, [hl]
    pop de
    db $fc
    ld d, e
    ld sp, hl
    ld d, [hl]
    ld [hl], d
    db $dd
    db $f4
    ld e, e
    ld a, b
    jp nc, Jump_029_5ff0

    daa
    db $dd
    ld b, a
    cp l
    add a
    ld a, l
    rlca
    db $fd
    add [hl]
    ld d, [hl]
    ld sp, $07ad
    db $fd
    sub $70
    db $dd
    ld c, b
    xor a
    scf
    di
    inc [hl]
    rst $28
    ld e, a
    ld a, c
    ld [hl], b
    rst $28
    sbc c
    or $f6
    push hl
    rlca
    call $fa09
    or $e5
    inc d
    rst $30
    ld a, [$8e1e]

Jump_029_5ff0:
    di
    sbc l
    ld l, a
    ld l, a
    jp Jump_000_373d


    ret


    db $fd
    inc bc
    inc b
    ld hl, sp-$24
    ld hl, $1ce1
    sbc c
    ld h, d
    ld b, c
    cp d
    pop hl
    add b
    ld b, b
    sbc [hl]
    add h
    scf
    adc h
    ccf
    add b
    ccf
    add b
    dec sp
    jp $e01f


    rlca
    ld sp, hl
    ld a, a
    add h
    rst $20
    ld [de], a
    db $d3
    ld [hl-], a
    di
    ld [bc], a
    di
    ld [hl+], a
    di
    db $c4, $f7, $18
    rst $18
    rst $20
    sbc b
    sbc e
    db $e4
    db $fc
    add e
    dec sp
    inc b
    ld b, l
    ld a, [$c37c]
    inc hl
    cp h
    scf
    add sp, -$01
    ld bc, $f606
    pop hl
    rrca
    ld bc, $80df
    ccf
    ld a, a
    rst $38

Jump_029_6040:
    ret nz

    ld b, b
    ld a, a
    rst $38
    nop
    ld [bc], a
    ldh [$e0], a
    ld e, a
    ld e, a
    ld hl, sp-$08
    nop
    cp $ff
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    and b
    rlca
    rlca
    ld a, [$1ffa]
    rra
    add [hl]
    db $dc, $31, $00
    rst $38
    rst $38
    rst $20
    sbc b
    ld a, e
    ld h, h
    sbc h
    sub e
    adc a
    adc b
    dec b
    ld b, $fc
    rst $38
    rlca
    inc b
    rst $38
    db $fc
    nop
    rlca
    ld [bc], a
    pop af
    ldh [$15], a
    jr nz, @-$2a

    and b
    ld d, l
    add [hl]
    ld [$0042], sp
    rst $38
    xor [hl]
    ld d, c
    nop
    rst $38
    ld [$0015], a
    ld a, a
    ld e, l
    ld h, d
    jr nz, jr_029_60cc

    dec a
    ld [hl], d
    nop
    rst $38
    ld l, c
    sub [hl]
    nop
    rst $38
    rst $20
    jr jr_029_6098

jr_029_6098:
    cp $16
    ld [$44bc], a
    ld e, h
    xor [hl]
    and b
    ld b, b
    ret nz

    rrca
    add a
    jr z, jr_029_60aa

    dec hl
    dec b
    xor d
    add [hl]

jr_029_60aa:
    jr c, jr_029_60ee

    add [hl]
    ld [$8644], sp
    ld [$0e44], sp
    add hl, bc
    inc l
    ld l, a
    dec bc
    ld a, [bc]
    add hl, hl
    ld l, c
    add hl, bc
    add hl, bc
    add [hl]
    ld d, [hl]
    ld c, a
    inc bc
    add [hl]
    jr c, jr_029_6107

    add [hl]
    jr c, jr_029_610a

    rst $10
    jr z, jr_029_60d8

    rst $38
    or b
    ld [hl], b

jr_029_60cc:
    ld b, b
    ret nz

    ret nz

    ld b, b
    ld h, b
    ld h, b
    sbc a
    sbc a
    sub c
    sbc c
    add b
    ld a, a

jr_029_60d8:
    ld sp, hl
    and $78
    ld a, a
    rla
    db $f4
    ld l, h
    ld l, a
    dec e
    inc e
    ld a, [$0bfb]
    adc d
    pop de
    reti


    or c
    ld sp, hl
    rst $08
    rst $38
    and b
    xor a

jr_029_60ee:
    ld e, a
    rst $18
    pop de
    ld e, c
    or c
    ld a, c
    ld a, a
    sbc a
    rrca
    adc [hl]
    ld a, [de]
    sbc a
    rst $20
    cp $0a
    db $eb
    rst $30
    db $f4
    inc c
    adc a
    dec de
    sbc h
    db $fd
    ld a, [c]
    nop

jr_029_6107:
    add [hl]
    add sp, $34

jr_029_610a:
    nop
    add [hl]
    ret z

    ld c, a
    inc bc
    ld [hl], e
    ld a, a
    adc c
    xor d
    ld c, $fe
    add [hl]
    add [hl]
    ld h, $dc
    call c, $ac20
    push af
    adc c
    add [hl]
    sub [hl]
    ld h, $86
    ldh [rLCDC], a
    add b
    rst $38
    add [hl]
    and [hl]
    ld h, $dc
    call c, $af23
    db $e4
    db $eb
    add [hl]
    or [hl]
    ld h, $86
    rra
    ld e, h
    add [hl]
    jp nz, $8644

    jp nz, Jump_000_0744

    ld hl, sp-$40
    ccf
    nop
    ldh a, [$95]
    ld d, l
    ld a, [hl+]
    xor d
    ld e, a
    ld e, a
    cp a
    cp a
    rst $38
    rst $38
    sub b
    ld l, a
    add hl, de
    and $01
    ld e, $40
    ld b, a
    or c
    or d
    add sp, -$17
    db $f4
    push af
    cp $ff
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    cp a
    rrca
    rst $08
    add b
    ld [hl], b
    jr nc, @-$2f

    ret nz

    ccf
    db $fd
    db $fc
    cp $ff
    db $fc
    db $fd
    ld sp, hl
    ld a, [$e7e0]
    inc bc
    inc e
    ld [$0df7], sp
    ld a, [c]
    nop
    add b
    nop
    rst $38
    inc bc
    ld a, e
    nop
    ld [hl], b
    db $10
    ld [hl], b
    ld [$0d48], sp
    ld c, l
    ld [hl+], a
    ld l, d
    nop
    ld bc, $fe00
    ldh [$fe], a
    db $10
    ld d, $08
    ld a, [bc]
    sbc h
    sbc [hl]
    and h
    and [hl]
    call nc, Call_000_24c6
    ld h, d
    jr z, jr_029_6207

    dec l
    ld l, a
    inc de
    ld d, a
    ld [$0768], sp
    ld [hl], a
    nop
    ld a, a
    nop
    add b
    inc h
    ld b, [hl]
    inc d
    ld d, $d4
    or $68
    ld [$3630], a
    ldh [$ee], a
    nop
    cp $00
    ld bc, $8086
    ld d, b
    ld [$085f], sp
    ld c, l

jr_029_61c2:
    dec hl
    ld l, c
    ld [de], a
    ld a, a
    nop
    ld d, b
    nop
    ld d, e
    add [hl]
    sub b
    ld d, b
    inc b
    xor $04
    and [hl]
    ld c, h
    ld c, $48
    ld a, [hl]
    jr z, jr_029_6205

    inc d
    ld e, $00
    ld h, [hl]
    nop
    ld d, h
    jr jr_029_6257

    ld [$0748], sp
    ld e, a
    nop
    ld a, a
    add [hl]
    xor h
    ld d, b
    jr jr_029_6208

    inc d
    ld e, $18
    ld e, $74
    ld a, [hl]
    add sp, -$02
    nop
    add [hl]
    ld sp, hl
    ld d, b
    add [hl]
    cp a
    ld d, b
    ld a, a
    db $10
    ld h, a
    ld [bc], a
    ld h, h
    jr nz, @+$61

    nop
    ld e, a

jr_029_6202:
    nop
    ld a, h
    nop

jr_029_6205:
    ld a, e
    add [hl]

jr_029_6207:
    sub b

jr_029_6208:
    ld d, b
    ld [$00f2], sp
    cp $20
    adc $00
    cp $c4
    ld a, [$ba20]
    ld [bc], a
    ld a, c
    ld bc, $0264
    ld c, l
    nop
    ld e, e
    nop
    ld b, h
    inc bc
    ld [hl], e
    add [hl]
    xor h
    ld d, b
    sub b
    ld a, [hl]
    ld c, b
    ld l, $84
    db $76
    inc b
    or [hl]
    inc b
    ld h, [hl]
    ld hl, sp-$7a
    ei
    ld d, c
    rst $38
    nop
    rst $28
    db $10
    rst $28
    db $10
    ld bc, $83fe
    ld a, h
    rst $00
    jr c, jr_029_61c2

    ld a, h
    add hl, sp
    add $86
    ret nc

    ld c, a
    ld bc, $718e
    ld [hl], e
    adc h
    ld hl, sp+$07
    rlca
    ld hl, sp-$21
    jr nz, @-$3e

    ccf
    db $dd
    db $dd
    jr nz, jr_029_6202

    inc bc

jr_029_6257:
    db $fc
    db $fc
    inc bc
    nop
    rst $38
    cp a
    ld b, b
    sbc $21
    ld b, b
    cp a
    nop
    rst $38
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03

jr_029_626d:
    db $fc
    ld bc, $86fe
    ret


    ld b, d
    ld [bc], a
    db $fd
    ld b, $f9
    ld c, $f1
    ld e, $e1
    ld a, $c1
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, h
    add e
    ld a, b
    add a
    ld [hl], b
    adc a
    ld h, b
    sbc a
    add [hl]
    ld a, [hl]
    ld h, b
    add [hl]
    ret


    ld b, b
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    add [hl]
    db $76
    ld h, b
    ld a, a
    add b
    pop bc
    ld a, $a2
    ld e, l
    or h
    ld c, e
    sbc b
    ld h, a
    sbc h
    ld h, e
    cp [hl]
    ld b, c
    rst $38
    nop
    cp $01
    add e
    ld a, h
    ld b, l
    cp d
    add hl, hl
    sub $11
    xor $39
    add $7d
    add d
    add [hl]
    ret z

    ld b, b
    cp [hl]
    ld b, c
    sbc h
    ld h, e
    adc b
    ld [hl], a
    sub h
    ld l, e
    and d
    ld e, l
    add c
    ld a, [hl]
    ld a, a
    add b
    rst $38
    nop
    ld a, l
    add d
    add hl, sp
    add $11

jr_029_62d2:
    xor $29
    sub $45
    cp d
    add e
    ld a, h
    cp $01
    rra

jr_029_62dc:
    ldh [$e0], a
    rra
    add [hl]
    ld h, h
    ld l, b
    ldh [$1f], a
    rst $18
    jr nz, jr_029_626d

    ld [hl], h
    ld l, b
    scf
    ret z

    ei
    inc b
    nop
    rst $38
    rst $18
    jr nz, jr_029_62d2

Jump_029_62f2:
    rra
    sbc l
    ld h, d
    ld b, b
    cp a
    db $eb
    inc d
    rlca
    ld hl, sp-$45
    ld b, h
    ld a, h
    add e
    sbc e
    ld h, h
    dec b
    ld a, [$03fc]
    inc bc
    db $fc
    scf
    ret z

    add [hl]
    ldh [rLCDC], a
    nop
    rst $38
    db $dd
    ld [hl+], a
    rlca
    ld hl, sp-$21
    daa
    inc d
    xor $fc
    ld a, [hl]
    add [hl]
    ld [hl], b
    ld h, b
    ld a, a
    cp $43
    cp $42
    rst $38
    jp Jump_029_43fe


    ld a, [hl]
    ld b, d
    ld a, a
    ld c, h
    adc $cc
    ld c, [hl]
    ld c, h
    adc $cf
    ld c, a
    ld c, h
    call z, $fc7c
    ld b, b
    ret nz

    rst $38
    ld a, a
    ld b, d
    ld a, a
    ld a, a
    ld a, [hl]
    ld b, e
    ld b, d
    jp nz, Jump_000_03c3

    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    rst $38
    cp $f0
    rrca
    rst $08
    jr nc, jr_029_62dc

    ld l, a
    add b
    ld b, c
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $f00f
    db $e3
    db $ec
    pop af
    db $76
    ld [hl], l
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
    adc a
    ld l, [hl]
    rst $00
    scf
    ldh a, [rIF]
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    ld bc, $0982
    or $f3
    inc c
    rrca
    ldh a, [$7f]
    rst $38
    add [hl]
    ret nz

    ld [hl], b
    ld a, d
    ld a, d
    ld [hl], l
    ld [hl], l
    ld a, d
    ld a, d
    ld h, b
    ld h, b
    rst $18
    ret nz

    cp $ff
    cp $ff
    cp $fe
    xor [hl]
    xor a
    ld d, [hl]
    ld d, a
    ld l, $2f
    ld b, $06
    ld a, [$0402]
    ld d, l
    nop
    inc de
    nop
    jr z, jr_029_63b4

    daa
    rrca
    ld l, a
    rra
    ld e, a
    ccf
    ccf

jr_029_63b4:
    ccf
    cp a
    ld b, h
    ld d, h
    ld [hl+], a
    cp d
    nop
    ld [$e5e1], sp
    ldh a, [$f4]
    ld hl, sp-$06
    db $fc
    cp $fc
    db $fc
    nop
    ld [bc], a
    jr nz, @+$10

    rrca
    nop
    ld bc, $0504
    inc b
    dec b
    ld [$0809], sp
    add hl, bc
    ld [bc], a
    inc bc
    ld [$0009], sp
    ld bc, $0302
    rst $38

jr_029_63de:
    jr nz, @+$16

    rlca
    ld e, $1f

jr_029_63e3:
    db $10
    ld de, $1514
    inc d
    dec d
    jr jr_029_6404

    jr jr_029_6406

    ld [de], a
    inc de
    jr @+$1b

    db $10
    ld de, $1312
    jr nz, @+$16

    ld [$0f0e], sp
    ld [bc], a

jr_029_63fb:
    inc bc
    ld b, $07
    ld b, $07
    ld a, [bc]
    dec bc
    ld a, [hl]
    ld a, a

jr_029_6404:
    ld a, [bc]
    dec bc

jr_029_6406:
    ld a, [bc]
    dec bc
    nop
    ld bc, $0100
    jr nz, @+$16

    ld a, [bc]
    ld [de], a

jr_029_6410:
    inc de

jr_029_6411:
    ld d, $17
    ld d, $17
    ld a, [de]
    dec de
    ld a, h
    ld a, l
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    db $10
    ld de, $1110
    jr nz, jr_029_6457

    ld a, [bc]
    jr nz, jr_029_6428

jr_029_6426:
    ld [bc], a
    ld h, [hl]

jr_029_6428:
    ld h, a
    ld [hl], b
    ld [hl], c
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    jr nz, @+$52

    ld c, $20
    ld [hl+], a
    nop
    inc e
    dec e
    ld [hl], d
    ld [hl], e
    jr nz, jr_029_63e3

    ld [bc], a
    inc c
    dec c
    jr nz, jr_029_64b2

    ld c, $06
    rlca
    inc h
    dec h
    ld [hl], b
    ld [hl], c
    jr nz, jr_029_6411

    inc b
    jr nz, jr_029_63de

    ld c, $16
    rla
    inc [hl]
    dec [hl]
    jr nz, jr_029_63fb

    inc b

jr_029_6454:
    jr nz, jr_029_6404

    nop

jr_029_6457:
    jr nz, @-$4a

    ld c, $26
    daa
    jr nz, jr_029_6426

    ld b, $70
    ld [hl], c
    jr nz, @+$16

    ld a, [bc]
    inc c
    dec c
    inc e
    dec e
    ld [hl], $37
    jr nz, jr_029_6454

    ld b, $72
    ld [hl], e
    jr nz, @+$36

    ld a, [bc]
    jr nz, @+$0a

    jr @+$22

    ld c, $1f
    ld bc, $2820
    jr jr_029_649d

    ld l, $1f
    ld c, l
    jr nz, jr_029_6410

    rra
    rra
    nop
    ld [bc], a
    ld c, $04
    dec b
    ld [$0209], sp
    inc bc
    ld c, $02
    ld [bc], a
    ld c, $02
    nop
    nop
    ld bc, $0504
    rst $38
    ld c, $14
    rlca
    inc d
    dec d

jr_029_649d:
    jr @+$1b

    ld [de], a
    inc de
    ld c, $22
    ld [bc], a
    ld c, $22
    nop
    db $10
    ld de, $1514
    ld c, $14
    ld [$0706], sp
    ld a, [bc]
    dec bc

jr_029_64b2:
    ld c, $42
    ld [$0302], sp
    ld b, $07
    ld c, $14
    ld [$1716], sp
    ld a, [de]
    dec de
    ld c, $62
    ld [$1312], sp
    ld d, $17
    ld c, $14
    ld [$0504], sp
    ld h, [hl]
    ld h, a
    ld c, $82
    ld [$100e], sp
    ld c, $72
    ld [hl], e
    ld c, $a2
    ld [$300e], sp
    ld c, $28
    add hl, hl
    ld a, [hl+]
    dec hl
    ld [hl], b
    ld [hl], c
    ld c, $c6
    nop
    ld c, $c2
    nop
    nop
    ld bc, $520e
    ld a, [bc]
    inc e
    dec e
    jr c, jr_029_652a

    ld a, [hl-]
    dec sp
    ld c, $a2
    ld [bc], a
    ld c, $e2
    nop
    inc c
    dec c
    inc e
    dec e
    ld c, $14
    ld [$7170], sp
    inc l
    dec l
    ld l, $2f
    ld c, $c6
    ld [bc], a
    ld c, $02
    inc d
    ld c, $14
    ld [$7372], sp
    inc a
    dec a
    ld a, $3f
    ld c, $a2
    ld [bc], a
    ld c, $22
    inc d
    ld c, $f4
    ld a, [bc]
    ld c, $c6
    nop
    ld e, b
    ld e, c
    ld e, h
    ld e, l
    ld h, b
    ld h, c
    ld c, $c6
    ld [bc], a

jr_029_652a:
    ld c, $12
    inc e
    ld c, $a2
    nop
    ld e, d
    ld e, e
    ld e, [hl]
    ld e, a
    ld h, d
    ld h, e
    ld c, $a2
    inc b
    ld c, $34
    ld e, $0e
    add b
    ld a, [de]
    ld c, $54
    ld e, $0e
    and d
    ld a, [bc]
    ld c, $74
    rra
    add hl, sp
    nop
    ld [bc], a
    ld c, $04
    dec b
    ld [$0209], sp
    inc bc
    ld c, $02
    ld [bc], a
    ld c, $02
    nop
    nop
    ld bc, $0504
    rst $38
    ld c, $14
    rlca
    inc d
    dec d
    jr @+$1b

    ld [de], a
    inc de
    ld c, $22
    ld [bc], a
    ld c, $22
    nop
    db $10
    ld de, $1514
    ld c, $14
    ld [$0706], sp
    ld a, [bc]
    dec bc
    ld c, $42
    ld [$0302], sp
    ld b, $07
    ld c, $14
    ld [$1716], sp
    ld a, [de]
    dec de
    ld c, $62
    ld [$1312], sp
    ld d, $17
    ld c, $14
    ld [$0504], sp
    ld h, [hl]
    ld h, a
    ld c, $82
    ld [bc], a
    ld [hl], h
    ld [hl], l
    ld c, $82
    nop
    ld c, $10
    ld c, $72
    ld [hl], e
    ld c, $a2
    ld [bc], a
    db $76
    ld [hl], a
    ld c, $a2
    nop
    ld c, $30
    ld c, $28
    add hl, hl
    ld a, [hl+]
    dec hl
    ld [hl], b
    ld [hl], c
    ld c, $c6
    nop
    ld c, $c2
    nop
    nop
    ld bc, $520e
    ld a, [bc]
    inc e
    dec e
    jr c, jr_029_65f9

    ld a, [hl-]
    dec sp
    ld c, $a2
    ld [bc], a
    ld c, $e2
    nop
    inc c
    dec c
    inc e
    dec e
    ld c, $14
    ld [$7170], sp
    inc l
    dec l
    ld l, $2f
    ld c, $c6
    ld [bc], a
    ld c, $02
    inc d
    ld c, $14
    ld [$7372], sp
    inc a
    dec a
    ld a, $3f
    ld c, $a2
    ld [bc], a
    ld c, $22
    inc d
    ld c, $f4
    ld a, [bc]
    ld c, $c6
    nop
    ld e, b
    ld e, c
    ld e, h
    ld e, l
    ld h, b
    ld h, c
    ld c, $c6
    ld [bc], a

jr_029_65f9:
    ld c, $12
    inc e
    ld c, $a2
    nop
    ld e, d
    ld e, e
    ld e, [hl]
    ld e, a
    ld h, d
    ld h, e
    ld c, $a2
    inc b
    ld c, $34
    ld e, $0e
    add b
    ld a, [de]
    ld c, $54
    ld e, $0e
    and b
    ld a, [de]
    ld c, $74
    rra
    add hl, sp
    nop
    ld [bc], a
    ld c, $04
    dec b
    ld [$0209], sp
    inc bc
    ld c, $02
    ld [bc], a
    ld c, $02
    nop
    nop
    ld bc, $0504
    rst $38
    ld c, $14
    rlca
    inc d
    dec d
    jr @+$1b

    ld [de], a
    inc de
    ld c, $22
    ld [bc], a
    ld c, $22
    nop
    db $10
    ld de, $1514
    ld c, $14
    ld [$0706], sp
    ld a, [bc]
    dec bc
    ld c, $42
    ld [$0302], sp
    ld b, $07
    ld c, $14
    ld [$1716], sp
    ld a, [de]
    dec de
    ld c, $62
    ld [$1312], sp
    ld d, $17
    ld c, $14
    ld [$0504], sp
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld [hl], h
    ld [hl], l
    ld c, $86
    nop
    ld c, $10
    ld c, $38
    add hl, sp
    ld a, [hl-]
    dec sp
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], e
    db $76
    ld [hl], a
    ld c, $a6
    nop
    ld c, $30
    ld c, $2c
    dec l
    ld l, $2f
    ld [hl], b
    ld [hl], c
    ld c, $c6
    nop
    jr z, jr_029_66b4

    ld a, [hl+]
    dec hl
    nop
    ld bc, $520e
    ld a, [bc]
    inc e
    dec e
    inc a
    dec a
    ld a, $3f
    ld c, $a6
    nop
    ld [hl], d
    ld [hl], e
    ld c, $a2
    nop
    inc c
    dec c
    inc e
    dec e
    ld c, $14
    ld [$c60e], sp
    nop
    ld a, b
    ld a, c
    ld c, $c6
    ld [bc], a
    ld c, $c2
    inc b
    ld c, $14

jr_029_66b4:
    ld [$a60e], sp
    nop
    ld a, d
    ld a, e
    ld c, $e6
    ld [bc], a
    ld c, $e2
    inc b
    ld c, $f4
    inc c
    ld [hl], b
    ld [hl], c
    ld e, b
    ld e, c
    ld e, h
    ld e, l
    ld h, b
    ld h, c
    ld c, $c6
    ld [bc], a
    ld c, $12
    ld e, $72
    ld [hl], e
    ld e, d
    ld e, e
    ld e, [hl]
    ld e, a
    ld h, d
    ld h, e
    ld c, $e6
    ld [bc], a
    ld c, $32
    rra
    ld bc, $800e
    ld a, [de]
    ld c, $54
    ld e, $0e
    and b
    ld a, [de]
    ld c, $74
    rra
    add hl, sp
    nop
    ld [bc], a
    ld c, $04
    dec b
    ld [$0209], sp
    inc bc
    ld c, $02
    ld [bc], a
    ld c, $02
    nop
    nop
    ld bc, $0504
    rst $38
    ld c, $14
    rlca
    inc d
    dec d
    jr @+$1b

    ld [de], a
    inc de
    ld c, $22
    ld [bc], a
    ld c, $22
    nop
    db $10
    ld de, $1514
    ld c, $14
    ld [$0706], sp
    ld a, [bc]
    dec bc
    ld c, $42
    ld [$0302], sp
    ld b, $07
    ld c, $14
    ld [$1716], sp
    ld a, [de]
    dec de
    ld c, $62
    ld [$1312], sp
    ld d, $17
    ld c, $14
    ld [$0504], sp
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld [hl], h
    ld [hl], l
    ld c, $82
    nop
    ld c, $10
    ld c, $38
    add hl, sp
    ld a, [hl-]
    dec sp
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], e
    db $76
    ld [hl], a
    ld c, $a2
    nop
    ld c, $30
    ld c, $2c
    dec l
    ld l, $2f
    ld [hl], b
    ld [hl], c
    ld c, $c6
    nop
    ld c, $c2
    nop
    nop
    ld bc, $520e
    ld a, [bc]
    inc e
    dec e
    inc a
    dec a
    ld a, $3f
    ld c, $a6
    nop
    ld [hl], d
    ld [hl], e
    ld c, $e2
    nop
    inc c
    dec c
    inc e
    dec e
    ld c, $14
    ld [$c60e], sp
    nop
    ld a, b
    ld a, c
    ld c, $c6
    ld [bc], a
    ld c, $04
    inc d
    ld c, $14
    ld [$a60e], sp
    nop
    ld a, d
    ld a, e
    ld c, $e6
    ld [bc], a
    ld c, $24
    inc d
    ld c, $f4
    inc c
    ld [hl], b

Call_029_6798:
    ld [hl], c
    ld e, b
    ld e, c
    ld e, h
    ld e, l
    ld h, b
    ld h, c
    ld c, $c6
    ld [bc], a
    ld c, $12
    ld e, $72
    ld [hl], e
    ld e, d
    ld e, e
    ld e, [hl]
    ld e, a
    ld h, d
    ld h, e
    ld c, $e6
    ld [bc], a
    ld c, $32
    rra
    ld bc, $800e
    ld a, [de]
    ld c, $54
    ld e, $0e
    and b
    ld a, [de]
    ld c, $74
    rra
    add hl, sp
    nop
    ld [bc], a
    jr nz, jr_029_67c5

jr_029_67c5:
    dec b
    ld [bc], a
    inc bc
    ld [$0009], sp
    ld bc, $0504
    ld [$0209], sp
    inc bc
    jr nz, jr_029_67da

    nop
    ld c, $0f
    rst $38
    jr nz, jr_029_67ee

jr_029_67da:
    rlca
    db $10
    dec d
    ld [de], a
    inc de
    jr @+$1b

    db $10
    ld de, $1514
    jr jr_029_6800

    ld [de], a
    inc de
    jr nz, jr_029_6811

    nop
    ld e, $1f

jr_029_67ee:
    jr nz, jr_029_6804

    ld [$0700], sp
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld [bc], a
    inc bc
    ld b, $07
    ld a, [hl]
    ld a, a
    jr nz, @+$46

    ld [bc], a

jr_029_6800:
    jr nz, jr_029_6814

    dec bc
    rla

jr_029_6804:
    ld a, [de]
    dec de

jr_029_6806:
    ld a, [de]
    dec de
    ld [de], a

jr_029_6809:
    inc de
    ld d, $17
    ld a, h

jr_029_680d:
    ld a, l
    jr nz, jr_029_6874

    ld [bc], a

jr_029_6811:
    jr nz, jr_029_6845

    dec bc

jr_029_6814:
    dec b

jr_029_6815:
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    jr nz, @+$08

    nop
    ld [hl], b
    ld [hl], c
    ld h, [hl]
    ld h, a
    jr nz, @+$10

    rrca
    ld bc, $3332
    ld [hl-], a
    inc sp
    jr nz, jr_029_6850

    nop

jr_029_682b:
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], e
    jr nz, jr_029_685f

    rrca
    ld bc, $7170
    ld [hl], b
    ld [hl], c
    nop
    ld bc, $2006
    pop bc
    dec b
    jr nz, jr_029_6851

    ld a, [bc]
    inc c
    dec e
    jr nz, jr_029_67ee

    nop

jr_029_6845:
    inc c
    dec c
    inc e
    dec e
    jr nz, jr_029_680d

    nop
    db $10
    ld de, $7020

jr_029_6850:
    inc c

jr_029_6851:
    jr nz, jr_029_6815

    nop
    jr nz, jr_029_6856

jr_029_6856:
    ld d, $20
    ld c, $0e
    jr nz, jr_029_6806

    nop
    jr nz, jr_029_687f

jr_029_685f:
    ld d, $20
    and $00
    jr nz, @-$0c

    rrca
    add hl, bc
    jr nz, jr_029_682b

    nop
    jr nz, jr_029_687e

    rra
    add hl, bc
    jr nz, @-$54

    nop
    jr nz, @+$34

    rra

jr_029_6874:
    ld c, l
    jr nz, jr_029_6809

    rra
    dec de
    nop
    ld [bc], a
    nop
    ld c, $0f

jr_029_687e:
    ld [hl], b

jr_029_687f:
    ld [hl], c
    nop
    ld [bc], a
    inc c
    rst $38
    nop
    inc d
    rlca
    ld e, $1f
    ld [hl], d
    ld [hl], e
    nop
    ld [hl+], a
    inc c
    nop
    inc d
    ld [$0000], sp
    nop
    ld l, h
    ld l, l
    ld l, b
    ld l, c
    nop
    ld b, h
    ld b, $00
    ld [de], a
    ld c, $6e
    ld l, a
    ld l, d
    ld l, e
    nop
    ld h, h
    ld b, $00
    ld [hl-], a
    ld c, $68
    ld l, c
    nop
    ld [bc], a
    ld b, $00
    add h
    nop
    nop
    inc d
    inc c
    ld l, d
    ld l, e
    nop
    ld [hl+], a
    ld b, $00
    and h
    nop
    nop
    inc [hl]
    ld c, $28
    add hl, hl
    ld a, [hl+]
    dec hl
    ld [hl], b
    ld [hl], c
    nop
    add $00
    nop
    ld d, b
    rrca
    inc bc
    jr c, jr_029_6906

    ld a, [hl-]
    dec sp
    ld [hl], d
    ld [hl], e
    nop
    and $00
    nop
    ld [hl], b
    rrca
    inc bc
    inc l
    dec l
    ld l, $2f
    ld [hl], b
    ld [hl], c
    nop
    ld b, $10
    nop
    sub b
    rrca
    inc bc
    inc a
    dec a
    ld a, $3f
    ld [hl], d
    ld [hl], e
    nop
    ld h, $10
    nop
    or b
    rrca
    inc bc
    nop
    ld [bc], a
    ld b, $00
    ld d, b
    rrca
    inc bc
    nop
    ld [hl+], a
    ld b, $00
    ld [hl], b
    rrca
    inc bc
    nop
    ld b, h
    ld [$9200], sp
    rrca

jr_029_6906:
    ld bc, $6400
    ld [$3200], sp
    inc c
    jr nz, jr_029_6930

    nop
    jp nz, $7012

    ld [hl], c
    nop
    db $c2, $14, $00

    inc d
    ld a, [bc]
    nop
    ldh [rNR14], a
    ld [hl], d
    ld [hl], e
    nop
    ldh [rNR14], a
    nop
    inc d
    ld [$0200], sp
    nop
    ld [hl], b
    ld [hl], c
    nop
    nop
    ld c, $ff
    nop
    inc d

jr_029_6930:
    rlca
    ld [hl], d
    ld [hl], e
    nop
    jr nz, jr_029_6944

    nop
    inc d
    ld [$0000], sp
    rrca
    ld c, l
    nop
    ld h, b
    rrca
    rrca
    ld b, d
    ld b, e
    ld c, h

jr_029_6944:
    nop
    call nz, Call_029_4007
    ld b, c
    nop
    ld d, d
    inc c
    jr nc, jr_029_6995

    ld c, l
    nop
    db $e4
    rlca
    ld b, h
    ld b, l
    nop
    ld [hl-], a
    inc c
    ld sp, $6447
    ld h, l
    ld l, b
    ld l, c
    ld h, l
    ld h, l
    ld h, l
    nop
    dec b
    db $10
    ld h, h
    ld b, h
    ld b, [hl]
    nop
    ld d, d
    inc c
    ld sp, $6547
    ld h, l
    ld l, d
    ld l, e
    ld h, l
    ld h, h
    ld h, h
    nop
    dec h
    db $10
    ld h, l
    ld b, h
    ld b, [hl]
    nop
    ld a, [c]
    rrca
    ld bc, $6565
    nop
    jr z, jr_029_6991

    nop
    ld b, [hl]
    stop
    db $10
    rra
    inc bc
    nop
    inc c
    stop
    inc b
    ld [de], a
    nop
    jr nc, @+$21

jr_029_6991:
    inc bc
    nop
    ld h, $15

jr_029_6995:
    nop
    rrca
    rra
    inc b
    nop
    and h
    ld d, $00
    jr nc, jr_029_69bb

    jr nz, jr_029_69c2

    ld c, $21
    jr nz, jr_029_69c6

    jr nz, jr_029_69c8

    nop
    ld [$0010], sp
    call nz, $2010
    rrca
    jr nz, jr_029_69d2

    nop
    ld d, h
    ld [$1f1e], sp
    nop
    ldh [rNR12], a
    ld d, e
    ld d, e

jr_029_69bb:
    ld d, e
    ld d, e
    nop
    ldh [rNR14], a
    nop
    ld d, h

jr_029_69c2:
    ld [$0200], sp
    nop

jr_029_69c6:
    ld [hl], b
    ld [hl], c

jr_029_69c8:
    nop
    nop
    inc c
    ld c, $0f
    rst $38
    nop
    inc d
    rlca
    ld [hl], d

jr_029_69d2:
    ld [hl], e
    nop
    jr nz, jr_029_69e2

    ld e, $1f
    nop
    inc d
    ld [$0000], sp
    rrca
    dec l
    nop
    jr nz, jr_029_69e2

jr_029_69e2:
    ld l, h
    ld l, l
    ld l, b
    ld l, c
    nop
    add h
    ld [bc], a
    nop
    ld c, $0e
    nop
    nop
    nop
    ld l, [hl]
    ld l, a
    ld l, d
    ld l, e
    nop
    and h
    ld [bc], a
    nop
    ld l, [hl]
    rrca
    inc bc
    nop
    add [hl]
    inc b
    ld l, b
    ld l, c
    ld [hl], b
    ld [hl], c
    ld c, b
    ld c, c
    nop
    sub d
    ld c, $00
    and [hl]
    inc b
    ld l, d
    ld l, e
    ld [hl], d
    ld [hl], e
    ld c, d
    ld c, e
    nop
    ld [hl], d
    rrca
    add hl, bc
    ld c, b
    ld c, c
    nop
    ret nc

    rrca
    ld bc, $a400
    ld b, $4a
    ld c, e
    nop
    ldh a, [rIF]
    ld bc, $0000
    inc b
    ld c, b
    ld c, c
    ld d, h
    ld d, l
    nop
    ret nc

    rrca
    ld bc, $2000
    inc b
    ld c, d
    ld c, e

jr_029_6a32:
    ld d, [hl]
    ld d, a
    nop
    jr nc, @+$21

    dec bc
    nop
    ld c, $1f
    inc bc

jr_029_6a3c:
    nop
    ld h, h
    ld d, $00
    ld l, $1e
    jr nz, jr_029_6a65

    nop
    ret nz

    ld [de], a
    ld [hl], b
    ld [hl], c
    nop
    ret nz

    inc d
    nop
    ld [de], a
    ld a, [bc]
    ld e, $1f
    nop
    ldh [rNR12], a
    nop
    jr nc, jr_029_6a57

jr_029_6a57:
    nop
    ldh [rNR14], a
    nop
    inc d
    ld [$0800], sp
    ld [bc], a
    rst $38
    ld [bc], a
    nop
    dec bc
    ld a, [c]

jr_029_6a65:
    db $fc
    ldh [$ee], a
    add sp, -$0e
    add sp, -$0e
    ret nc

    jp z, $ebd1

    sub c
    xor c
    sub l
    push hl
    ld b, a
    ld b, a
    rlca
    rlca
    inc bc
    inc bc
    inc hl
    inc hl
    ld hl, $31a1
    or c
    jr nc, jr_029_6a32

    jr c, jr_029_6a3c

    ld [bc], a
    nop
    ld [bc], a
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    adc a
    rlca
    rst $00
    ld bc, $93f1
    di
    db $d3
    di
    sub $f7
    sub $f7
    adc $ef
    call $ccee
    rst $28
    jp c, Jump_000_37fc

    or a
    rla
    sub a
    rla
    sub a
    inc de
    sub e
    inc de
    sub e
    inc sp
    inc sp
    dec sp
    dec sp
    ld a, e
    ld a, e
    rst $00
    ld [bc], a
    ld h, b
    ld bc, $e7e7
    db $e3
    db $e3
    db $e3
    db $e3
    pop af
    pop af
    ldh a, [$f0]
    db $eb
    rst $30
    jp z, $c5d6

    db $fd
    adc c
    cp c
    sub d
    di
    sub a
    or $a7
    db $e4
    rst $08
    call z, Call_029_4747
    adc a
    adc a
    rrca
    rrca
    rrca
    rrca
    ld e, $9f
    ld e, $bf
    ld [bc], a
    adc d
    nop
    di
    rst $30
    ld [hl], e
    rst $38
    ld [hl], a
    rst $30
    ld [hl], a
    rst $30
    rst $30
    rst $30
    ld [bc], a
    nop
    nop
    cp a
    cp a
    rst $28
    rst $28
    set 1, a
    ld [bc], a
    and d
    nop
    add e
    rst $20
    add l
    rst $20
    add l
    rst $30
    push bc
    scf
    ld a, a
    ld a, a
    ld a, l
    ld a, l
    dec a
    dec a
    cp l
    cp l
    sbc h
    sbc h
    sbc h
    sbc h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    nop
    ret nc

    add b
    ldh [$80], a
    ldh [$c0], a
    pop hl
    ret nz

    jp $c3c0


    ldh [$e7], a
    ldh [$e7], a
    ld a, l
    ld a, l
    ld a, e
    ld a, e
    inc sp
    inc sp
    daa
    daa
    daa
    ld h, a
    cpl
    ld l, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    rst $38

jr_029_6b2d:
    rst $38
    ei
    ei
    ld sp, hl
    ld [bc], a
    db $e4
    ld bc, $f8f8
    db $fc
    db $fc
    ld a, h
    ld a, h
    ld [bc], a
    nop
    inc b
    rst $30
    rst $30
    di
    ld [bc], a
    ld sp, hl
    ld bc, $4c4c
    ld b, [hl]
    ld b, [hl]
    ld h, [hl]
    ld h, [hl]
    or [hl]
    or [hl]
    or [hl]
    or [hl]
    or e
    or e
    or e
    or e
    cp e
    cp e
    db $db
    db $db
    db $dd
    db $dd
    db $dd
    db $dd
    rst $08
    rst $08
    rst $08
    rst $08
    xor $ee
    xor a
    xor a
    and a
    and a
    di
    rst $30
    db $e3
    rst $28
    db $e3
    db $eb
    rst $20
    rst $28
    push hl
    db $ed
    push hl
    db $fd
    push hl
    push af
    add $f6
    jr c, jr_029_6b2d

    inc e
    inc e
    inc e
    ld e, h
    inc e
    ld e, h
    sbc [hl]
    sbc $8e
    adc [hl]
    adc a
    adc a
    rst $08
    rst $08
    rst $28
    rst $28
    rst $28
    rst $28
    rst $08
    rst $08
    rst $18
    rst $18
    sbc a
    ld [bc], a
    ld c, b
    inc de
    inc bc
    dec bc
    or e
    inc sp
    dec de
    ld a, e
    rrca
    rra
    rst $08
    rst $08
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    ld [bc], a
    ld [$f600], a
    or $f6
    or $e7
    rst $20
    rst $20
    rst $20
    rst $08
    rst $18
    adc a
    sbc a
    set 1, h
    ld e, d
    ld e, l
    ld d, d
    ld e, l
    ld [de], a
    dec e
    ld sp, $313e
    ld a, $19
    ld e, $99
    sbc $3e
    cp a
    cp [hl]
    ld a, a
    cp l
    ld a, a
    db $fd
    ccf
    ld [bc], a
    add [hl]
    db $10
    ld a, l
    cp a
    ld a, a
    cp a
    cp a
    cp a
    sbc [hl]
    sbc a
    ld e, $1f
    ccf
    ld a, $3d
    ld a, a
    ld a, [hl]
    ld a, a
    di
    push af
    pop af
    ld a, [c]
    push bc
    scf
    pop bc
    inc sp
    ld b, c
    or e
    ld h, [hl]
    sbc a
    and $9f
    ld l, [hl]
    rst $38
    sbc [hl]
    rst $38
    cp $7f
    cp $ff
    ld a, [$fdfb]
    db $fd
    db $fd
    rst $38
    db $fd
    cp $fd
    cp $ff
    cp $fe
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    jr c, @+$01

    inc a
    rst $38
    sbc a
    rst $18
    rst $18
    rst $38
    rst $18
    ld a, a
    rst $08
    ld l, a
    ld c, [hl]
    adc $5e
    ld e, [hl]
    cp h
    ld [bc], a
    call nc, $bd10
    cp b
    cp c
    cp b
    cp e
    ld sp, hl
    cp $7c
    ld a, h
    ld a, [hl]
    ld a, [hl]
    ld a, $3e
    ld a, $3e
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld h, d
    ld a, e
    ld b, d
    ld e, e
    add h
    sbc l
    add h
    cp l
    add h
    cp a
    add h
    or a
    adc h
    cp a
    ld c, h
    cp $ef
    rst $28
    ld [bc], a
    ld l, b
    db $10
    di
    di
    pop af
    pop af
    ld hl, sp-$06
    ld hl, sp-$05
    ld hl, sp-$07
    pop bc
    add $c0
    pop bc
    ldh [$e0], a
    ldh [$e0], a
    pop hl
    pop hl
    pop af
    pop af
    ld [hl], b
    ld [hl], d
    ld a, b
    ei
    sbc [hl]
    ld e, $40
    cp a
    nop
    ld a, b
    nop
    ld b, $e0
    ldh [$fe], a
    cp $02
    nop
    nop
    rlca
    rst $30
    rra
    rra
    ld hl, sp-$05
    nop
    rrca
    nop
    nop
    ld a, a
    ld a, a
    pop af
    rst $30
    ret nz

    reti


    ret nz

    ret nz

    rst $38
    rst $38
    rra
    rst $18
    db $e3
    inc bc
    jr jr_029_6ce1

    rrca
    nop
    ldh a, [$f1]
    ld a, a
    ld a, a
    ld [bc], a
    nop
    ld [bc], a
    cp $fe
    sbc $de
    sbc h
    sbc h
    sbc b
    reti


    sbc b
    reti


    adc a
    cp a
    rrca
    ccf
    rra
    ccf
    rra
    ld a, a
    ccf
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $28
    sbc l
    cp $cf
    rst $28
    rst $00
    rst $10
    pop af
    db $fd
    ld hl, sp-$05
    or $f6
    cp b
    cp c
    sbc b
    sbc c
    ld a, a
    cp a
    ld [bc], a
    jr nc, jr_029_6cbd

    rst $38
    rst $38
    ccf
    ld e, a

jr_029_6cbd:
    sbc a
    ld a, a
    pop hl
    ld a, [$c9f0]
    or b
    call Call_029_6798
    sbc h
    ld h, e
    ld c, h
    or e
    adc [hl]
    pop af
    add $b9
    cp $1f
    sbc $3f
    sbc $3f
    or l
    ld a, a
    or a
    ld a, l
    db $76
    db $fd
    ld l, d
    db $fd
    db $eb
    db $fd
    cp $ff

jr_029_6ce1:
    ld a, [hl]
    cp $7e
    cp $7f
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $08
    ld a, a
    and a
    ld a, a
    pop de
    ccf
    ld l, b
    sbc a
    ld [hl], a
    rrca
    ld [hl], a
    rrca
    rst $20
    sub a
    rst $28
    rst $18
    ld sp, hl
    cp $fe
    ld hl, sp-$02
    db $fc
    ld a, [hl]
    rst $38
    ccf
    ld a, a
    rst $18
    rst $38
    ld [bc], a
    inc b
    jr nz, @+$81

    ld a, a
    rst $18
    rst $38
    sbc a
    cp a
    cp e
    rst $38
    ld sp, hl
    rst $38
    db $fd
    ei
    push af
    di
    push af
    ei
    ld h, b
    ld h, b
    ld l, c
    ld l, c
    ld l, l
    ld l, l
    ld [hl], d
    ld [hl], d
    ld [hl], b
    ld [hl], e
    ld a, b
    ld a, b
    ld [hl], l
    push af
    ld a, [hl-]
    cp d
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f1]
    pop hl
    rst $20
    db $e3
    db $eb
    rst $00
    rst $00
    rst $08
    rst $18
    rst $08
    rst $08
    ld [$1c28], sp
    call c, Call_029_7c7c
    ld [bc], a
    ld a, [hl+]
    ld [hl+], a
    ld [bc], a
    nop
    nop
    rra
    rra
    ld c, $0e
    ld hl, sp-$07
    ldh a, [$f7]
    ld h, b
    ld l, h
    inc bc
    ei
    rrca
    rst $08
    rra
    rra
    ld bc, $0071
    ret nz

    nop
    nop
    ld [hl], c
    ld a, c
    jp nz, $82da

    or d
    add e
    di
    add e
    db $e3
    rst $28
    rst $38
    rst $28
    rst $38
    rst $20
    rst $20
    rst $30
    rst $38
    di
    ei
    ld a, [c]
    or $f2
    or $f0
    db $f4
    or b
    di
    pop hl
    db $e3
    jp $87c7


    adc a
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ld l, a
    ld a, a
    rst $20
    rst $20
    jp $c1c3


    pop bc
    pop hl
    db $e3
    ldh [$e2], a
    ldh a, [$f3]
    pop af
    ld a, [c]
    pop af
    ld a, [c]
    jr jr_029_6dd4

    inc c
    inc a
    add h
    or h
    add $de
    ret nz

    ret c

    ld h, b
    ld l, l
    ld h, b
    and $23
    and l
    ld a, a
    cp a
    ld a, a
    cp a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, e
    ld a, [hl]
    ei
    db $fd
    di
    db $fc
    db $d3
    call c, $cfb1
    rst $18
    rst $20
    rst $38
    rst $38
    cp $ff
    ld a, a
    rst $38
    rst $18
    cp a
    rst $28

jr_029_6dc7:
    ld [hl], b
    rst $38
    rra
    db $d3
    db $fd
    db $db
    rst $30
    cpl
    rst $30
    rst $28
    rst $18
    inc a
    rst $38

jr_029_6dd4:
    rst $30
    ei
    db $fd
    ld c, $f9
    db $f4
    rst $28
    rst $38
    rst $20
    rst $38
    db $d3
    rst $30
    add sp, -$01
    and $b7
    ei
    inc hl
    ret c

    jr nc, jr_029_6dc7

    ld sp, $efef
    ld [bc], a
    jr nc, jr_029_6df2

    rst $38
    sbc a
    rst $38

jr_029_6df2:
    rst $00
    rst $38
    ld [hl], b
    inc a
    or e
    di
    cp c
    reti


    add hl, sp
    ret


    ld a, h
    sbc h
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    di
    rst $38
    ei
    rst $30
    ei
    ei
    ld [bc], a
    nop
    nop
    ld a, h
    ld a, h
    ld a, b
    ld a, b
    jr nc, @+$35

    ld sp, hl
    ld sp, hl
    di
    di
    di
    di
    rst $00
    rst $10
    rrca
    rra
    rrca
    ccf
    rra
    rst $38
    cp a
    ld a, a
    ld [bc], a
    ld c, b
    ld [de], a
    cp a
    cp a
    cp a
    cp a
    ccf
    ld [bc], a
    add h
    jr nc, jr_029_6e33

    ld c, a
    inc hl

jr_029_6e33:
    ld [bc], a
    nop
    nop
    rst $18
    rst $18
    rst $18
    rst $18
    ld [bc], a
    ld e, b
    db $10
    db $fc
    rst $38
    ldh a, [$f0]
    nop
    nop
    ld bc, $8701
    add a
    cp $fe
    ld a, [hl]
    ld a, a
    rlca
    rst $00
    rlca
    ld b, $0c
    inc c
    inc a
    inc a
    ld sp, hl
    ld sp, hl
    dec sp
    dec sp
    dec a
    cp [hl]
    ccf
    cp h

jr_029_6e5b:
    ldh a, [$f0]
    ldh a, [$f1]
    ldh a, [$f3]
    ldh a, [$f2]
    pop hl
    db $e3
    pop hl
    push hl
    db $e3
    rst $20
    ld [c], a
    and $67
    ld [hl], a
    rst $00
    rst $18
    jp $e3cb


    db $eb
    pop hl
    db $ed
    pop af
    rst $30
    ld a, b
    ld a, a
    jr jr_029_6ed6

    ld [bc], a
    ld a, h
    jr nz, jr_029_6e5b

    db $dd
    call z, $dcdd
    call $e4fc
    ld [$2ff6], a
    and e
    and c
    inc hl
    or e
    ld [hl], e
    sub [hl]
    ld d, a
    sbc h
    ld e, l
    cp c
    ld a, e
    ld [hl], d
    rst $30
    call nz, $88cc
    cp b
    and a
    cp b
    daa
    jr c, jr_029_6ee6

    ld l, b
    rst $08
    and b
    xor $11
    and $18
    ld a, [c]
    inc c
    ld a, b
    add [hl]
    rst $30
    nop
    or e
    ld b, h
    inc sp
    adc b
    dec sp
    inc b
    ld [bc], a
    sub [hl]
    ld b, b
    inc de
    xor h
    rla
    ret z

    sbc c
    ld h, h
    or b
    ld c, c
    ldh a, [$09]
    ldh [$15], a
    ret nz

    inc [hl]
    ret nz

    inc h
    add b
    ld l, [hl]
    inc b
    ld a, [$3ccf]
    swap a
    call z, $c733
    jr z, @+$49

    xor b
    ld b, e
    and h
    inc bc

jr_029_6ed6:
    ld [hl], h
    ld bc, $ec76
    ld a, a
    ld [hl+], a
    rlca
    pop bc
    cpl
    add [hl]
    ld c, c
    rlca
    adc b
    ld b, $99
    adc [hl]

jr_029_6ee6:
    ld d, b
    call z, $3f11
    ccf
    rlca
    rst $00
    ld bc, $c071
    ld hl, sp+$30
    cp [hl]
    rrca
    ccf
    inc e
    ld [c], a
    sbc h
    ld h, d
    inc sp
    inc [hl]
    ld [hl], $39
    sub h
    sbc e
    nop
    ld c, $00
    inc b
    ld bc, $c305
    jp Jump_029_6040


    dec sp
    cp e
    ld [hl], e
    ld [hl], e
    ld [hl], a
    ld [hl], a
    ld [bc], a
    sbc b
    ld [bc], a
    cp $fe
    db $fc
    db $fd
    ld a, c
    ld a, c
    ld sp, $3131
    ld sp, $2521
    ld b, b
    ld b, h
    ld b, b
    ld d, [hl]
    ld b, b
    ld d, e
    ld b, h
    ld e, l
    rst $00
    rst $00
    ld [bc], a
    ld d, $10
    ld [bc], a
    ld a, $12
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    set 1, e
    sbc e
    sbc e
    sbc a
    sbc a
    or a
    or a
    ld [hl], a
    ld [hl], a
    ld [bc], a
    ld c, [hl]
    inc h
    rrca
    rst $08
    add e
    ld [hl], e
    nop
    ret nz

    jr c, jr_029_6f7f

    rst $38
    rst $38
    rst $28

jr_029_6f4a:
    rst $28
    ld e, $de
    jp nz, $c6ca

    adc $c6
    adc $c5
    push de
    add h
    sub h
    ld [bc], a
    ld c, b
    ld d, b
    adc [hl]
    adc [hl]
    inc e
    ld a, a
    inc c
    ld l, l
    ccf
    ld a, a
    rst $38
    rst $38
    add b
    add c
    rst $18
    rst $18
    ld l, d
    ld l, d
    ld a, [hl+]
    ld a, [hl+]
    ld e, $de
    ld hl, sp-$07
    pop hl
    rst $20
    add a
    cp [hl]
    dec sp
    db $fc
    pop bc
    or $29
    sbc $29
    ld e, d
    jr nc, jr_029_6fee

    ld h, b

jr_029_6f7f:
    ret c

    or b
    ret z

    db $10
    jr z, @+$12

    xor b
    ld [de], a
    xor d
    add d
    ld e, d
    add d
    ld e, d
    ld a, [hl]
    add c
    ld [hl], a
    adc b
    ld [hl], c
    adc [hl]
    jr nc, @+$4f

    jr c, jr_029_6fda

    jr c, jr_029_6fde

    ld a, [hl-]
    ld b, h
    ld a, [de]
    ld h, h
    rla
    ret z

    ld b, $d9
    adc [hl]
    ld [hl], c
    call c, Call_029_4c23
    or d
    ld l, h
    ld [de], a
    inc [hl]
    ld c, d

jr_029_6faa:
    inc [hl]
    rrc [hl]

jr_029_6fad:
    pop af
    ld e, $a1
    dec de
    ld h, h
    dec sp
    ld b, h
    inc sp
    ld c, h

jr_029_6fb6:
    dec [hl]
    jp z, $8a75

    db $76
    adc c
    ld bc, $207a
    dec de
    jr nc, @-$6f

    jr jr_029_6f4a

    sbc b
    ld b, $9c
    ld b, d

jr_029_6fc8:
    call c, $ce23
    ld sp, $22dd
    swap h
    db $eb
    inc d
    rst $20
    jr jr_029_704c

    adc b
    db $76
    adc c
    db $76
    add hl, bc

jr_029_6fda:
    ld a, d
    dec b
    sbc h
    ld h, d

jr_029_6fde:
    sbc b
    ld h, [hl]
    jr jr_029_6fc8

    jr c, jr_029_6faa

    jr c, @-$38

    jr c, jr_029_6fad

    jr nc, jr_029_6fb6

    jr nc, @-$32

    jr nz, jr_029_701e

jr_029_6fee:
    jr nz, jr_029_7028

    db $10
    inc a
    ld [$0c3e], sp
    ccf
    sub h
    xor a
    sub [hl]
    xor a
    sub e
    xor a
    db $fc
    db $fd
    ld a, h
    ld a, h
    inc a
    inc a
    ld e, $1e
    ld c, $0e
    ld [bc], a
    ld a, [hl-]
    nop
    rlca
    rst $00
    ld h, h
    ld a, h
    ld h, [hl]
    ld l, [hl]
    inc hl
    dec hl
    ld sp, $3135
    dec [hl]
    ld [hl], b
    db $76
    ld a, b
    ld a, d
    ld a, b
    ld a, e
    scf
    or a
    scf

jr_029_701e:
    or a
    inc de
    inc de
    sbc e
    sbc e
    adc e
    adc e
    ld [bc], a
    ld d, $10

jr_029_7028:
    ld b, a
    ld b, a
    inc l
    cp [hl]
    inc e
    call c, $6c0c
    ld e, $6e
    ld d, $2e
    sbc a
    and a
    set 2, a
    rst $08
    db $d3
    ld [hl+], a
    cp d
    scf
    rst $38
    rra
    rst $38
    inc bc
    ld a, l
    nop
    ld c, [hl]
    nop
    jr nz, @-$7b

    add e
    cp $fe
    adc a
    ld [bc], a

jr_029_704c:
    ld b, b
    ld h, e
    adc $ce
    sbc $de
    call c, $dcdd
    db $dd
    dec sp
    dec sp
    dec de
    dec de
    dec de
    dec de
    add hl, bc
    ld c, c
    dec b
    ld b, l
    dec b
    push de
    dec b
    sub a
    ld b, l
    ld [hl], a
    ret z

    db $db
    adc b
    adc c
    sbc b
    cp c
    sbc h
    sbc l
    sbc h
    sbc h
    ld e, $1e
    ld [hl-], a
    ld [hl-], a
    inc sp
    scf
    add d
    ld c, d
    jp nz, $432a

    xor a
    ld h, e
    add a
    ld [hl+], a
    sub $20
    ld d, d
    jr nc, jr_029_70ce

    db $10
    ld l, e
    dec de
    ld h, h
    dec de
    ld h, h
    add hl, bc
    ld [hl], $09
    or [hl]
    add hl, bc

Call_029_708f:
    or $0c
    di
    dec b
    cp e
    dec b
    sbc e
    ld h, [hl]
    sbc c
    ld l, a

jr_029_7099:
    sbc a
    cp d
    ld [hl], l
    ld e, e
    db $e4
    sbc e
    db $e4
    sbc e
    db $e4
    ld [bc], a
    add b
    ld h, b
    rlca
    rlca
    rst $38
    rst $38
    ld hl, sp-$05
    ldh [$ef], a
    ld b, b
    ld b, b
    rst $38
    rst $38
    add c
    adc l
    nop
    ldh a, [rSC]
    ld b, b
    jr z, jr_029_7099

    pop hl
    ld hl, sp-$08
    ld a, b
    rlca
    ld hl, sp-$19
    cp e
    ld e, h
    or a
    ld c, h
    or e
    ld c, [hl]
    or d
    ld c, a
    or c
    ld c, l
    or c
    ld c, l
    ld [hl], b
    adc h

jr_029_70ce:
    ldh a, [$0c]
    pop hl
    add hl, de
    add c
    ld a, a
    nop
    cp $40
    cp [hl]
    ret nz

    ld a, [hl-]
    ret nz

    inc sp
    sbc c
    and l
    sbc b
    and h
    inc e
    ld h, e
    inc e
    ld h, e
    ld a, [hl-]
    push bc
    ld [hl-], a
    call $ce31
    ld h, b
    sbc l
    ld b, $66
    add d
    and d
    jp nz, Jump_029_62f2

    ld [hl], d
    inc sp
    inc sp
    ld sp, $19b1
    sbc c
    add hl, de
    reti


    inc de
    ld d, e
    add hl, de
    ld sp, hl
    dec c
    db $ed
    rrca
    rst $28
    rlca
    ld h, a
    ld [bc], a
    ld [$3771], sp
    ld a, h
    ld a, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    cp $ff
    cp $ff
    ld [bc], a
    ld h, h
    db $10
    or $f6
    push hl
    jp hl


    ld a, [c]
    db $fc
    ld sp, hl
    cp $fc
    db $fd
    cp $fe
    sbc a
    sbc a
    adc a
    sub a
    add [hl]
    adc c
    db $fc
    db $fd
    ld hl, sp-$05
    ld [hl], b
    ld [hl], d
    ldh a, [$30]
    dec de
    ld a, e
    adc a
    cp a
    db $e3
    rst $20
    pop af
    pop af
    ret c

    jp c, $dad8

    sbc c
    sbc c
    cp e
    cp e
    cp e
    cp e
    cp [hl]
    cp [hl]
    ld [bc], a
    db $fc
    ld b, b
    ld c, h
    ld a, [hl]
    call z, $88ee
    xor c
    jr jr_029_71a9

    jr jr_029_71ab

    inc e
    db $dd
    inc a
    cp h
    inc a
    cp h
    and c
    and a
    and c
    xor a
    pop hl
    db $ed
    ld b, e
    ld b, e
    ld b, l
    push bc
    ld l, c
    db $eb
    dec sp
    cp a
    inc sp
    rst $30
    inc e
    daa
    inc e
    daa
    adc h
    sub [hl]
    adc h
    sub [hl]
    add h
    or h
    sub b
    and h
    jr @+$2e

    ld a, [de]

jr_029_7177:
    ld l, $03
    db $dd
    inc bc
    call $cf01
    ld hl, $11e7
    rst $30
    ld de, $39f3
    ld c, e
    jr @+$64

    dec de
    ld h, h
    rra
    ld h, b
    ld bc, $8042
    cp h
    inc e
    ld h, d
    dec l
    ld e, [hl]
    ld a, [hl+]
    ld b, e
    and l
    reti


    rrca
    adc a
    ld a, $3f
    ld [hl], e
    ld a, h
    db $fc
    db $e3
    ld [hl], b
    ld c, $43
    or e
    rst $38
    rst $38
    ld hl, sp-$07

jr_029_71a8:
    rst $38

jr_029_71a9:
    rst $38
    ld [hl], c

jr_029_71ab:
    adc l
    add [hl]
    db $76
    jr c, jr_029_71a8

    jp Jump_000_02c3


    ld d, d
    ld [hl+], a
    or c
    ld c, l
    pop af
    dec c
    ld bc, $0385
    ld a, e
    ld [hl], c
    adc l
    ld l, c
    push af
    xor c
    add l
    ld c, d
    scf
    add b
    ld [hl], a
    add b
    ld [hl], a
    nop
    and $08
    adc $10
    sbc [hl]
    db $10
    sbc [hl]
    jr c, jr_029_7177

    jr nc, @+$0e

    ld h, b
    sbc c
    ld h, h
    sbc h
    ld h, a
    sub a
    ld h, e
    sub e
    ld h, d
    inc de
    ld hl, $2351
    ld d, e
    and e
    db $d3
    ld a, [bc]
    jp z, $ea0a

    ld c, $6e
    add h
    add h
    ld b, h
    ld b, h
    inc l
    xor h
    cp b
    ld hl, sp-$68
    ret c

    nop
    inc bc
    ld de, $f6c6
    add [hl]
    or [hl]
    add [hl]
    and [hl]
    adc a
    xor a
    rrca
    ld c, a
    rra
    rst $18
    dec a
    cp l
    dec sp
    cp e
    rrca
    ld de, $0010
    adc a
    rlca
    add a
    rlca
    ld b, a
    add e
    db $e3
    add e
    and e
    jp $41f3


    ld [hl], c
    add a
    rst $00
    rra
    sbc a
    ld a, $3f
    db $fc
    db $fd
    rst $38
    rst $38
    ldh [$e1], a
    rrca
    db $10
    ldh a, [$ec]
    ldh [$d0], a
    add b
    ld hl, sp+$1f
    rst $18
    ld h, b
    ld h, e
    sbc b
    add [hl]
    ldh a, [$08]
    add b
    ld b, b
    db $fc
    db $fd
    ld de, $0040
    ld hl, sp-$07
    ld hl, sp-$05
    ld hl, sp-$06
    ld de, $004a
    ld a, h
    db $fc
    ld a, h
    ld a, h
    db $fc
    db $fc
    cp $fe
    cp $fe
    sbc $de
    rst $18
    rst $18
    rst $18
    rst $18
    ld d, $56
    ld e, $7e
    adc h
    xor h
    adc h
    cp h
    add $f6
    add $fe
    jp nz, $c3fa

    ei
    add hl, hl
    ld e, l
    dec h
    ld b, l
    inc [hl]
    sbc $54
    cp a
    ld b, d
    adc e
    ld b, d
    adc [hl]
    ld h, c
    xor l
    and b
    ld h, [hl]
    inc c
    ld [hl], c
    add d
    sbc l
    add b
    add e
    ldh [$e3], a
    ld a, [hl]
    sbc a
    ld a, $41
    nop
    rra
    ldh [$e0], a
    sbc c
    and l
    ld h, e
    db $e3
    ld e, $9e
    jr z, jr_029_72b5

    jr z, @+$31

    jr nz, jr_029_72b4

    daa
    xor b
    cpl
    ldh a, [$0c]
    dec c
    inc l
    dec l
    ld l, h
    ld l, l
    sbc h
    sbc l
    inc e
    sbc l
    inc a
    dec a
    ld e, h
    ld e, a
    cp b
    cp d
    jp $e1bb


jr_029_72a8:
    sbc c
    ld h, b
    ld e, h
    ld d, b
    ld c, h
    ld h, b
    rst $28
    ld [hl], b
    rst $30
    ld a, b
    ld sp, hl
    ld l, h

jr_029_72b4:
    db $ec

jr_029_72b5:
    ld [hl-], a
    ld c, e
    adc h
    adc a
    ldh a, [$f3]
    jr z, @+$2b

    jr z, jr_029_72a8

    ld [$c889], sp
    dec hl
    add sp, $1e
    ld h, c
    dec e
    add e
    ld [hl], e
    ld [bc], a
    add d
    ld c, $8f
    db $fc
    di
    ld hl, sp+$04
    ld bc, $0ff1
    rrca
    ld [hl+], a
    ld d, d
    ld [hl+], a
    ld d, d
    ld [bc], a
    ld a, [c]
    inc b
    push af
    add h
    push af
    add h
    push hl
    ld [$08ea], sp
    ld [$d0d0], a
    ldh a, [$f0]
    ld h, d
    ld h, d
    ld b, d
    ld b, d
    ld b, [hl]
    ld b, [hl]
    add [hl]
    add [hl]
    add a
    rst $00
    add a
    rst $00
    inc sp
    inc sp
    ld [hl], e
    ld [hl], e
    ld h, a
    ld h, a
    ld b, a
    ld b, a
    rst $08
    rst $08
    adc $ce
    call z, $68cc
    ld l, b
    rst $00
    rst $10
    rst $20
    rst $20
    rst $28
    rst $28
    rst $18
    rst $18
    ccf
    ccf
    inc sp
    inc sp
    ld h, e
    ld h, e
    rst $20
    rst $20
    nop
    ld a, b
    ldh a, [$f0]
    rst $38
    rst $38
    ld a, a
    ld a, a
    rrca
    rst $08
    ld a, a
    ld [hl], b
    ldh a, [$cf]
    nop
    ldh a, [rTAC]
    rlca
    ld a, a
    ld a, a
    db $e3
    db $e4
    rst $18
    ldh [$f0], a
    ldh a, [rIE]
    rrca
    ld [$00f6], sp
    rlca
    ld sp, hl
    ei
    pop af
    pop af
    pop af
    push af
    ld de, $1044
    pop hl
    pop hl
    pop hl
    pop hl
    push hl
    push hl
    db $ec
    db $ec
    xor $ee
    sbc $de
    ld de, $0056
    rst $38
    ld de, $115a
    add e
    cp a
    add e
    cp a
    add c
    xor l
    ld bc, $016f
    ld l, a
    ld bc, $214d
    dec l
    ld [hl+], a
    cpl
    add b
    ld h, a
    nop
    di
    nop
    ldh a, [$03]
    ld e, e
    ld bc, $004f
    ld b, a
    ld b, c
    ld b, [hl]
    ld b, b
    ld b, e
    ccf
    cp a
    rlca
    rst $30
    nop
    cp $80
    add a
    ld hl, sp-$08
    ld a, a
    rst $38
    ld sp, hl
    add hl, sp
    ld a, h
    adc [hl]
    rra
    rra
    pop hl
    pop hl
    rst $38
    rst $38
    rlca
    rst $00
    ld bc, $8f3d
    adc a
    ld sp, hl
    ld sp, hl
    inc e
    inc a
    adc b
    cp d
    ret c

    cp $30
    cp [hl]
    add b
    ld a, h
    nop
    db $e4
    add c
    adc c
    jp Jump_000_3fc3


    cp a
    ld h, a
    rst $38
    ld [hl], c
    ld l, l
    ld d, b
    ld c, h
    ret nc

    call z, $8c90
    sub b
    adc h
    and c
    sbc c
    ld hl, $f119
    pop af
    rrca
    rrca
    ld a, [hl]
    ld a, [hl]
    db $cd, $cd, $1f
    rra
    inc e
    rra
    jr nc, jr_029_73fe

    ld h, b
    ld a, b
    cp $ff
    db $fc
    rst $38
    ld a, b
    ld a, a
    pop hl
    rst $38
    ld bc, $04f1
    add a
    ccf
    jr c, jr_029_744c

    ld h, e
    add hl, bc
    rst $08
    add hl, bc
    rst $18
    add hl, bc
    sbc e
    adc c
    cp c
    dec b
    push hl
    dec b
    push bc
    dec b
    push bc
    inc b
    add l
    add e
    jp Jump_029_4303


    dec bc
    rrc c
    ret


    add hl, bc
    jp hl


    add l
    ld h, l
    add h
    ld h, h
    jp nz, $80b2

    cp b
    ldh [$ee], a
    db $fc
    db $fd
    rst $20
    rst $20
    rst $00
    rst $00
    add a
    add a
    sub a

jr_029_73fe:
    sub a
    inc de
    ld d, e
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rst $08
    adc a
    xor a
    rst $00
    rst $00
    rst $20
    rst $30
    and e
    db $e3
    rst $20
    add sp, -$41
    cp a
    ret nz

    ret c

    ld [hl], e
    ld [hl], h
    rrca
    rst $08
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $08
    cpl
    ei
    ei
    ld b, $36
    sbc h
    ld e, h
    ldh [$e7], a
    ld de, $222a
    ld a, [hl]
    add c
    sbc a
    ldh [$7f], a
    ld a, b
    rst $20
    rra
    ld de, $202c
    ld de, $202c
    ld l, a
    sub b
    ld l, a
    sub e
    cp h
    ld a, l
    rst $08
    ldh a, [rNR11]
    ld c, b
    inc h
    ld de, $2448
    ccf
    ld b, b

jr_029_744c:
    rrca
    sub b
    ret nz

    inc hl
    cp b
    call nz, $4811
    ld [hl+], a
    cp $00
    ld hl, sp+$04
    pop hl
    ld [de], a
    ld b, $89
    dec sp
    ld b, a
    rst $38
    rst $38
    add b
    and b
    jr nz, jr_029_74c4

    ld de, $2684
    rst $38
    rst $38
    inc bc
    dec bc
    add hl, bc
    push af
    ld [$08f4], sp
    db $f4
    add hl, bc
    push af
    ld de, $2094
    ld de, $2884
    ld de, $2084
    ld de, $2498
    ld de, $209a
    ld de, $299c
    ld c, [hl]
    jr nz, jr_029_74e8

    jr nz, jr_029_74a6

    jr nz, jr_029_74db

    ld [$08f5], sp
    ld de, $2295
    push hl
    add hl, bc
    push af
    add hl, bc
    or c
    add hl, bc
    push hl
    nop
    ld d, l
    jr nz, jr_029_74a8

    ld de, $21e0
    dec d
    jr nz, @+$0c

    nop
    nop

jr_029_74a6:
    jr nz, jr_029_74a8

jr_029_74a8:
    ld bc, $0955
    and c
    ld de, $21f0
    ld d, c
    add hl, bc
    and c
    ld bc, $0801
    nop
    nop
    ld [bc], a
    sub h
    sub h
    rst $38
    rst $38
    inc de
    inc d
    ld l, $0b
    nop
    ld de, $0b00

jr_029_74c4:
    sub h
    rst $38
    rst $38
    ld b, $06
    rlca
    ld [$0a09], sp
    ld c, $0c
    dec c
    ld c, $41
    sub h
    rst $38
    rst $38
    inc bc
    ld d, $17
    jr jr_029_74f3

    ld a, [de]

jr_029_74db:
    dec de
    inc e
    dec e
    ld e, $51
    sub h
    dec hl
    rrca
    ld bc, $2541
    ld h, $27

jr_029_74e8:
    jr z, jr_029_7513

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $10
    rrca
    db $10
    sub h

jr_029_74f3:
    rst $38
    cp $34
    dec [hl]
    ld [hl], $37
    jr c, jr_029_7534

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld [de], a
    inc d
    sub h
    rst $38
    cp $44
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    add b

jr_029_7513:
    add c
    sub h
    rst $38
    db $fd
    dec bc
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    sub b
    sub c
    sub h
    rst $38
    db $fd
    db $10
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    and h
    and l
    ld l, h
    ld l, l

jr_029_7534:
    ld l, [hl]
    ld l, a
    ld d, b
    sub h
    or c
    ld c, $11
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    and [hl]
    and a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld h, b
    ld h, c
    sub h
    ld [de], a
    ld e, $84
    add l
    add [hl]
    add a
    adc b
    adc c
    and d
    and e
    adc h
    adc l
    adc [hl]
    adc a
    ld [hl], c
    ld [bc], a
    sub h
    rst $38
    db $fd
    ld d, d
    add h
    ld h, l
    sub [hl]
    sub a
    sbc b
    sbc c
    xor b
    xor c
    sbc h
    sbc l
    sbc [hl]
    sbc a
    sub l
    inc de
    sub h
    inc l
    ld c, $95
    ld a, l
    rra
    cpl
    sub d
    sub e
    xor d
    xor e
    add d
    add e
    adc d
    adc e
    inc bc
    ld d, d
    sub h
    sub c
    ld c, $30
    ld sp, $6362
    ld l, d
    ld l, e
    xor d
    xor e
    sub d
    sub e
    sbc d
    sbc e
    and b
    and c
    ld de, $ff94
    db $fd
    ld b, b
    ld b, c
    ld [hl], d
    ld [hl], e
    ld a, d
    ld a, e
    xor h
    xor l
    ld l, d
    ld l, e
    ld [hl-], a
    inc sp
    ld [hl], b
    inc b
    dec b
    sub h
    rst $38
    cp $20
    ld hl, $2322
    inc h
    xor [hl]
    xor a
    ld a, d
    ld d, e
    ld b, d
    ld b, e
    dec d
    ld bc, $a094
    ld a, [$0800]
    ld b, $ff
    ld b, $00
    dec c
    sbc a
    ret nz

    sbc a
    ret nz

    sbc b
    call nz, $c399
    ld b, $18
    ld [bc], a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld b, $fc
    di
    ld h, h
    ld l, d
    and h
    xor d
    rst $38
    rst $38
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    add hl, de
    inc hl
    ld b, $18
    rlca
    add b
    ld b, $42
    ld [bc], a
    add b
    rst $38
    cp a
    rst $38
    and h
    db $e4
    rst $38
    rst $38
    rst $38
    ld bc, $5206
    ld [bc], a
    ld bc, $fdff
    rst $38
    ld b, l
    ld b, a
    and h
    db $e4
    and h
    rst $38
    and h
    rst $20
    and h
    db $e4
    sbc e
    db $db
    ld b, $4a
    ld [bc], a
    ld b, l
    ld a, a
    ld b, l
    rst $00
    ld b, l
    rst $38
    ld b, l
    ld b, a
    cp c
    cp e
    ld b, $5a
    nop
    ld d, l
    ld d, a
    rst $38
    rst $38
    and b
    rst $18
    and b
    rst $18
    add b
    and b
    ld b, $86
    ld bc, $80a9
    and d
    rst $38
    rst $38
    dec b
    ei
    dec b
    ei
    ld bc, $0605
    sub [hl]
    ld bc, $0195
    ld b, l
    ld a, a
    ld a, a
    rst $38
    add b
    ret nz

    add b
    rst $18
    ld b, $82
    nop
    ld b, $a7
    ld bc, $fefe
    rst $38
    ld bc, $0103
    ei
    ld b, $b5
    dec b
    ret nz

    cp a
    ld b, $48
    nop
    rst $38
    rst $38
    ld b, b
    ld b, b
    ld b, b
    ld a, a
    ld b, a
    ld [hl], a
    ld c, a
    ld c, a
    inc bc
    db $fd
    ld b, $58
    nop
    rst $38
    rst $38
    ld [bc], a
    ld [bc], a
    ld [bc], a
    cp $e2
    xor $f2
    ld a, [c]
    add b
    and h
    add b
    and d

jr_029_7665:
    add b
    xor c
    add b
    and b
    add b
    cp a
    ld b, $c3
    nop
    nop
    add b
    ld bc, $0125
    ld b, l
    ld bc, $0195
    dec b
    ld bc, $06fd
    db $d3
    nop
    nop
    ld bc, $2319
    ld b, $32
    nop
    ld bc, $0303
    rst $38
    db $fd
    db $fd
    ld h, l
    ld l, e
    and l
    xor e
    ld b, $18
    inc b
    ld b, $18
    inc b
    and h
    xor d
    ld b, $2c
    nop
    ld h, h
    ld l, d
    ld b, $2c
    nop
    db $e4
    ld [$d918], a
    sbc b
    db $c4, $06, $12, $00

    add b
    ret nz

    ret nz

    rst $38
    rst $38
    rst $38
    db $e4
    ld [$2e06], a
    nop
    sbc b
    ld e, b
    jr nz, jr_029_7665

    ld b, [hl]
    ld e, a
    adc d
    cp a
    sub b
    cp l
    sub b
    cp l
    and b
    and c
    rst $38
    rst $38
    inc sp
    inc [hl]
    add hl, bc
    ld [$d5c4], a
    and d
    db $eb
    ld [de], a
    ld a, d
    inc de
    ld a, e
    rlca
    dec c
    ldh a, [$df]
    and b
    xor a
    cp $ff
    sub d
    cp a
    add b
    xor l
    add b
    and c
    add b
    cp a
    rst $38
    rst $38
    dec b
    rst $38
    inc bc
    ei
    di
    ei
    sub e
    ei
    rlca
    ld l, l
    dec b
    rrca
    ld [bc], a
    ld_long a, $fffe
    sub c
    or l
    ld c, c
    ld l, a
    xor b
    xor d
    ld [hl], h
    ld [hl], a
    ld e, h
    ld e, l
    sbc [hl]
    cp [hl]
    adc a
    cp a
    ld b, c
    ld c, l
    sbc e
    xor e
    ld a, [bc]
    ld a, d
    xor d
    adc d
    sub [hl]
    or [hl]
    ld e, h
    ld e, h
    ld d, h
    call nc, Call_000_3e36
    and d
    xor d
    jr c, jr_029_774d

    ld h, [hl]
    ld h, [hl]
    ld b, a
    ld d, a
    ld c, l
    ld a, l
    ld c, d
    ld l, d
    adc h
    xor a
    adc b
    db $eb
    db $10
    sub [hl]
    ld h, d
    ld a, d
    inc b
    sub h
    ld b, h
    ld [hl], h
    adc d
    ld [$da12], a
    ld sp, $51bd
    ld d, l
    adc b
    xor h

Call_029_7730:
    or c
    or l
    cp c
    rst $38
    sbc b
    sbc d
    call z, $c6ed
    sub $f1
    ld sp, hl
    sub b
    sub [hl]
    ld l, b
    ld l, e
    rst $00
    rst $10
    rst $08
    rst $18
    adc a
    xor a
    sbc c
    cp a
    ld d, b
    ld e, c
    ld d, [hl]
    sbc $37

jr_029_774d:
    ccf
    or e
    or a
    inc l
    dec l
    xor $ee
    adc $ce
    sbc a

jr_029_7757:
    cp a
    sbc l
    db $dd
    add hl, sp
    ld a, e
    jr c, jr_029_77dc

    sub c
    push de
    ld e, c
    db $dd
    cp h
    inc a
    ld e, [hl]
    sbc [hl]
    ld e, [hl]
    ccf
    inc l
    ld c, l
    xor b
    jp c, $bf89

    sbc c
    xor l
    nop
    sbc c
    nop
    nop
    nop
    inc h
    nop
    sbc c
    nop
    sbc c
    nop
    inc h
    nop
    nop
    ld b, $00
    ld hl, $f306
    ld sp, hl
    and h
    db $fc
    and h
    db $e4
    and h
    db $fc
    ld b, $64
    inc b
    rst $38
    rst $38
    ld d, l
    ld d, a
    ld d, l

jr_029_7792:
    ld d, a
    ld d, l
    ld a, a
    ld d, l
    rst $38
    ld d, l
    ld d, a
    xor c
    xor e
    ld b, $d4
    nop
    nop
    ld a, a
    add b
    ld a, $41
    sbc h
    ld [hl+], a
    ret


    inc d
    db $e3
    ld [$14e3], sp
    ret


    ld [hl+], a
    sbc h
    nop
    cp $01
    ld a, h
    add d
    add hl, sp
    ld b, h
    sub e
    jr z, @-$37

    db $10
    rst $00
    jr nz, jr_029_7757

    ld b, b
    dec a
    ld b, $42
    ld a, [hl+]
    ld b, c
    ld a, $06
    ld d, d
    ld h, $28
    sub e
    ld b, h
    add hl, sp
    add d
    ld a, h
    ld b, $40
    ld [hl+], a
    jr nz, @-$33

    rlca
    rst $30
    dec de
    db $fc
    cpl
    ldh a, [$33]
    or h
    ld b, $50
    ld [hl+], a

jr_029_77dc:
    inc b
    db $d3
    ldh [$ef], a
    ret c

    ccf
    db $f4
    rrca
    call z, $a02d
    add hl, sp
    dec hl
    db $f4
    scf
    ld hl, sp+$2d
    xor $2b
    ei
    db $10
    ret nc

    jr nz, jr_029_7792

    ld b, c
    ld a, $05
    sbc h
    call nc, $cc2f
    cpl
    or h
    ld [hl], a
    db $d4, $df, $08
    dec bc
    inc b
    ld a, c
    add d
    ld a, h
    rst $38
    nop
    rst $38
    ld a, [hl]
    jp $c306


    jr nz, jr_029_788e

    jp nz, Jump_000_067e

    jp z, $0620

    ld [hl+], a
    nop
    ld b, $d0
    ld hl, $3fe0
    ld h, b
    ccf
    ld a, [hl]
    inc sp
    ld [hl], d
    cp $7e
    jp nz, $c342

    ld b, e
    ret nz

    ld b, b
    ld b, $e6
    jr nz, @+$01

    ld a, a
    rst $38
    nop
    inc sp
    ld [hl], d
    inc sp
    ld [hl], d
    di
    ld a, [c]
    inc sp
    ld [hl-], a
    ccf
    ld a, $03
    ld [bc], a
    rst $38
    cp $06
    inc h
    ld bc, $0206
    ccf
    ld c, l
    ld b, $62
    ccf
    ld c, l
    ld b, $c2
    ccf
    ld c, l
    ld b, $22
    ld c, a
    ld c, l
    ld b, $82
    ld c, a
    ld c, l
    ld b, $e2
    ld c, a
    ld c, l
    ld b, $42
    ld e, a
    ld c, l
    ld b, $a2
    ld e, a
    ld c, l
    ld b, $02
    ld l, a
    ld c, l
    ld b, $62
    ld l, a
    ld c, l
    ld b, $c2
    ld l, a
    ld c, l
    ld b, $22
    ld a, a
    ld c, l
    ld b, $82
    ld a, a
    ld c, l
    ld b, $e2
    ld a, a
    ld a, [bc]
    nop
    ld [bc], a
    ld [$0100], sp
    ld [bc], a
    ld [$0302], sp
    inc d
    dec d
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    inc b
    dec b
    inc bc
    ld [$faf3], sp

jr_029_788e:
    ld de, $0812
    ld [hl+], a
    inc bc
    ld d, $17
    ld [de], a
    ld [de], a
    ld b, $07
    ld b, $07
    ld de, $1308
    dec bc
    inc h
    dec h
    ld [$0042], sp
    jr nz, @+$23

    ld hl, $2121
    jr nz, jr_029_78cd

    inc hl
    ld [hl+], a
    inc hl
    ld [$0c32], sp
    ld h, $27
    ld [$0062], sp
    ld [$0248], sp
    ld [$0062], sp
    ld [$0f32], sp
    inc b
    ld [$0188], sp
    ld [$0042], sp
    ld [$0f52], sp
    inc bc
    ld [$06a2], sp

jr_029_78cd:
    ld [$0f32], sp
    inc bc
    jr z, @+$2b

    ld a, [bc]
    dec bc
    jr z, @+$2b

    ld [$0f8e], sp
    rlca
    ld a, [hl+]
    dec hl
    inc c
    dec c
    ld a, [hl+]
    dec hl
    ld [$0f6e], sp
    rlca
    ld [$1602], sp
    ld [$0f92], sp
    inc hl
    ld [$1f08], sp
    ld c, l
    ld [$0fa8], sp
    ld b, $13
    ld [$0102], sp
    inc bc
    inc h
    dec h
    ld [$0401], sp
    db $10
    ld [$ffed], sp
    ld bc, $0811
    ld [hl], b
    dec c
    ld [$13f8], sp
    nop
    ld [bc], a
    inc bc
    inc bc
    and b
    rst $38
    ld c, l
    inc bc
    ld e, a
    rrca
    ld c, l
    inc bc
    cp a
    rrca
    ld c, l
    inc bc
    rst $20
    rrca
    inc d
    ld bc, $0302
    ld c, b
    rla
    inc bc
    rst $20
    rrca
    nop
    ld de, $0312
    ld l, b
    rla
    inc bc
    ld d, h
    rra
    ld bc, $2d2c
    inc h
    dec h
    inc bc
    adc d
    inc d
    inc bc
    ld d, h
    rra
    ld bc, $2f2e
    ld h, $27
    inc bc
    xor d
    inc d
    inc bc
    rst $20
    rrca
    nop
    inc de
    inc bc
    ld c, b
    rra
    inc c
    inc bc
    and $1f
    ld b, $00
    ld [bc], a
    inc b
    inc b
    rst $38
    di
    ld de, $2524
    ld de, $ff04
    pop af
    inc e
    dec e
    inc b
    ld a, [c]
    rst $38
    inc bc
    ld h, $27
    inc b
    ld a, [bc]
    ld [bc], a
    ld e, $1f
    inc b
    ld hl, sp-$05
    ld bc, $0202
    ld [$0209], sp
    db $10
    inc h
    dec h
    inc de
    inc b
    ld b, e
    nop
    ld [bc], a
    jr jr_029_7994

    inc bc
    inc b
    ld sp, hl
    ei
    ld [de], a
    ld [de], a
    ld c, $0f
    ld [de], a
    ld [de], a
    ld h, $27
    inc b
    ld h, d
    ld [bc], a
    ld a, [de]
    dec de
    inc b
    ld a, [bc]
    ld [bc], a
    inc b
    cp $f8
    inc b
    add d

jr_029_7994:
    ld a, [bc]
    inc b
    ld [hl], d
    inc c
    ld h, $27
    inc b
    and d
    ld a, [bc]
    inc b
    ld [hl], d
    rrca
    ld c, l
    inc b
    db $d2, $0f, $1b

    inc b
    ld b, [hl]
    nop
    inc b
    db $c4, $0f, $09
    inc b
    ld h, [hl]
    nop
    inc b
    and h
    rrca
    add hl, bc
    inc b
    jp nz, $040c

    ret nc

    inc c
    inc b
    and d
    inc c
    inc b
    jr nc, jr_029_79dc

    inc b
    ret nz

    dec e
    db $10
    inc b
    and b
    rst $38
    ld a, [de]
    nop
    ld [$ff02], sp
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $18
    or b
    sbc b
    rst $30
    sub b
    rst $38
    ld [bc], a
    dec c
    nop
    add c

jr_029_79dc:
    ld a, a
    ld bc, $0502
    nop
    jr nc, jr_029_79fb

    rst $30
    db $10
    ld [bc], a
    dec c
    ld [$1931], sp
    rst $30
    ld de, $0f02
    nop
    db $fd
    add c
    add c
    add c

jr_029_79f3:
    add c
    rst $38
    rst $38
    sub b
    rst $18
    sub b
    sbc b
    sub b

jr_029_79fb:
    sub b
    rst $38
    rst $38
    ld bc, $01fd
    add c
    ld bc, $ff01
    rst $38
    db $10
    rst $18
    db $10
    jr jr_029_7a1b

    db $10
    ld [bc], a
    ld a, $06
    ld de, $11df
    add hl, de
    ld de, $2c02
    nop
    ld [bc], a
    ld e, [hl]
    dec bc
    db $fd

jr_029_7a1b:
    add e
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    db $fd
    inc bc
    ld [bc], a
    ld [de], a
    ld a, [bc]
    ld [bc], a
    add b
    dec b
    ld [bc], a
    add hl, hl
    inc bc
    ld bc, $0165
    add hl, de
    add e
    add e
    rst $38
    rst $38
    jr c, jr_029_79f3

    db $10
    jr jr_029_7a39

    ld e, h
    nop

jr_029_7a39:
    ld bc, $05fd
    add l
    add hl, de
    dec de
    rst $38
    rst $38
    dec sp
    ei
    ld de, $1811
    jr @+$04

    ld a, [hl]
    ld bc, $037d
    db $e3
    rst $38
    rst $38
    ret c

    jr jr_029_7a62

    ld [bc], a
    dec de

jr_029_7a54:
    ld bc, $837d
    ld bc, $017f
    dec e
    rst $38
    rst $38
    scf
    jr nc, @+$12

    sbc a
    db $10

jr_029_7a62:
    rst $18
    ld [bc], a
    ld c, $01
    ld a, c
    ld bc, $fffd
    rst $38
    sub c
    ld d, b
    ld [bc], a
    jp z, $0202

    and b
    rst $38
    ld c, l
    ld [bc], a
    ret nc

    rst $38
    dec e
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
    jr nz, jr_029_7a54

    ld b, b
    rra
    ldh [$7e], a
    add c
    ld [bc], a
    and b
    db $10
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

    ld [bc], a
    jr nz, jr_029_7ad9

    ld c, l
    ld [bc], a
    rra
    cpl
    ld c, l
    ld [bc], a
    ld a, a
    cpl
    ld c, l
    ld [bc], a
    rst $18
    cpl
    ld c, l
    ld [bc], a
    ccf
    ccf
    ld c, l
    ld [bc], a
    sbc a
    ccf
    ld c, l
    ld [bc], a
    rst $38
    ccf
    ld c, l
    ld [bc], a
    ld e, a
    ld c, a
    ld c, l
    ld [bc], a
    cp a

jr_029_7ad9:
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
    ld [bc], a
    ld [bc], a
    ld b, $02
    nop
    rrca
    nop
    rst $38
    ld [bc], a
    inc d
    rlca
    ld [bc], a
    nop
    rrca
    ld c, l
    ld [bc], a
    ld h, b
    rrca
    ld c, l
    ld [bc], a
    and b
    rrca
    ld a, [de]
    ld [$080c], sp
    ld [$0c08], sp
    dec c
    ld [bc], a
    sub h
    rrca
    ld b, $09
    inc b
    ld [bc], a
    ld l, $11
    ld [bc], a
    inc d
    rra
    add hl, hl
    ld a, [bc]
    inc b
    dec bc
    ld [bc], a
    inc sp
    rra
    ld [$1918], sp
    ld [bc], a
    adc [hl]
    db $10
    ld [bc], a
    inc d
    rra
    rlca
    ld a, [de]
    dec de
    ld [bc], a
    xor [hl]
    db $10
    ld [bc], a
    ld [hl], h
    rra
    add hl, bc
    nop
    ld bc, $010e
    ld [bc], a
    sub h
    rra
    add hl, bc
    rlca
    ld [bc], a
    sub c
    dec bc
    nop
    ld [bc], a
    nop
    ld b, $00
    nop
    rrca
    nop
    rst $38
    nop
    inc d
    rlca
    nop
    nop
    rrca
    ld c, l
    nop
    ld h, b
    rrca
    ld c, l
    nop

jr_029_7b61:
    and b
    rrca
    dec c
    ld [$0d08], sp
    ld [$0d0c], sp
    ld [$0808], sp
    nop
    adc c
    rrca
    inc b
    inc b
    ld a, [bc]
    inc b
    nop
    ld [hl+], a
    db $10
    dec bc
    rlca
    nop
    add hl, bc
    rra
    dec b
    nop
    ld b, b
    inc de
    nop
    jr z, @+$21

    ld b, $0b
    inc b
    inc b
    ld a, [bc]
    inc b
    ld a, [bc]
    nop
    ld b, a
    rra
    ld b, $18
    add hl, de
    nop
    add b
    ld [de], a
    nop
    jr z, @+$21

    dec b
    ld a, [de]
    dec de
    nop
    and b
    ld [de], a
    nop
    jr z, jr_029_7bbe

    dec b
    ld bc, $0e01
    ld bc, $0201
    nop
    add [hl]
    rra
    rlca
    nop
    and b
    ld bc, $0009
    and [hl]
    rra
    rlca
    nop
    ld [$000d], sp
    rst $00
    nop
    ld [$ff00], sp
    nop
    add h
    ld h, b

jr_029_7bbe:
    ld h, b
    xor [hl]
    xor [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $10
    nop
    ld hl, sp+$00
    pop hl
    nop
    ld a, $01
    ld bc, $3434
    ld l, l
    ld l, l
    rst $38
    rst $38
    nop
    ld [hl], b
    nop
    adc a
    nop
    ei
    nop
    jr nz, jr_029_7b61

    add e
    cpl
    cpl
    di
    di
    rst $38
    rst $38
    nop
    ld h, b
    nop
    di
    nop
    ccf
    nop
    ld [$9090], sp
    push af
    push af
    dec c
    inc e
    ld bc, $0000
    add a
    ld a, a
    add b
    pop af
    ld c, $1c
    db $e3
    pop hl
    ld e, $00
    rst $00
    rst $00
    rst $00
    nop
    nop
    nop
    ld de, $fc03
    db $fc
    inc bc
    ld a, [hl]
    add c
    db $fd
    ld [bc], a
    nop

jr_029_7c10:
    rlca
    db $fc
    db $fc
    nop
    nop
    ld [bc], a
    add l
    cp [hl]
    ld b, c
    rst $38
    nop
    ld e, $e1
    pop af
    ld c, $00
    add c
    ld a, a
    ld a, a
    nop
    nop
    nop
    inc e
    jr jr_029_7c10

    rst $38
    nop
    ccf
    ret nz

    ret nz

    ccf
    nop
    call c, $3f3f
    ld de, $516d
    dec l
    db $10
    ld l, h
    dec [hl]
    ld c, e
    dec [hl]
    ld c, e
    ld d, l
    dec hl
    ld d, h
    ld a, [hl+]
    ld d, h
    jr z, @+$5f

    ld hl, $0975
    inc [hl]
    ld c, d
    jr c, jr_029_7c91

    jr c, jr_029_7c91

    ld a, c
    dec b
    ld a, c
    dec b
    jr z, jr_029_7ca7

    ld l, b
    ld d, $2c
    ld d, d
    inc c
    ld [hl], d
    inc e
    ld h, b
    dec d
    ld l, c
    add hl, bc
    ld [hl], l
    add hl, hl
    ld d, l
    add hl, hl
    ld d, l
    jr c, @+$48

    inc l
    ld d, d
    inc l
    ld d, d
    inc a
    ld b, b
    ld l, h
    db $10
    ld l, b
    inc d
    add hl, hl
    ld d, a
    add hl, hl
    ld d, l
    nop
    nop
    nop
    ld h, a
    ld h, e
    inc e
    rra
    ld h, b
    ld [hl], c

Call_029_7c7c:
    ld c, $00
    ld a, a
    dec c
    ld e, h
    nop
    ld bc, $0301
    call $01ff
    db $fd
    inc bc
    pop bc
    ccf
    ld bc, $01ff
    dec c
    ld l, l

jr_029_7c91:
    nop
    ld e, a
    nop
    ld a, b
    nop
    ld h, c
    dec c
    ld d, $04
    ld e, [hl]
    ld e, [hl]
    ld bc, $01f9
    add a
    ld bc, $01f9
    ld hl, $280d
    inc b

jr_029_7ca7:
    ld bc, $0eff
    cp $30
    rst $30
    ld c, a
    ldh a, [$bf]
    ret nz

    rst $18
    ldh [$87], a
    adc b
    sub b
    xor c
    rst $38
    rst $38
    nop
    ld a, a
    rst $38
    nop
    dec c
    inc d
    inc d
    ccf
    ret nz

    rst $38
    rst $38
    nop
    cp $0d
    inc d
    ld d, $fc
    inc bc
    add b
    rst $38
    ld [hl], b
    ld a, a
    inc c
    rst $28
    ld a, [c]
    rrca
    db $fd
    inc bc
    ei
    rlca
    pop hl
    ld de, $9509

Call_029_7cdb:
    ldh a, [$09]
    add h
    ld d, b
    ld a, [bc]
    and d
    cp a
    ld [hl], a
    inc hl
    sub l
    ld [hl], h
    dec a
    cp l
    ld d, $68
    add hl, hl
    adc a
    jr nz, @+$23

    ld e, h
    ld e, e
    ld a, d
    adc l
    ld d, l
    sbc e
    cp d
    cp b
    inc de
    ld d, h
    ld b, c
    inc c
    ld b, h
    dec c
    pop bc
    rst $38
    dec l
    rst $38
    rst $38
    rst $38
    add b
    dec c
    and d
    ld [de], a
    add b
    rst $38
    cp a
    rst $38
    and h
    db $e4
    rst $38
    dec c
    cp $00
    dec c
    or e
    ld de, $ff01
    db $fd
    rst $38
    ld b, l
    ld b, a
    and h
    db $e4
    and h
    db $e4
    and h
    rst $38
    and h
    rst $20
    and h
    db $e4
    sbc e
    db $db
    dec c
    xor d
    db $10
    ld b, l
    ld b, a
    ld b, l
    ld a, a
    ld b, l
    rst $00
    ld b, l
    rst $38
    ld b, l
    ld b, a
    cp c
    cp e
    dec c
    cp d
    db $10
    xor d
    ld [$efaa], a
    xor d
    db $eb
    xor d
    cp $aa
    ld [$d595], a
    dec c
    xor d
    db $10
    sub l
    sub a
    sub l
    sub a
    sub l

jr_029_7d4b:
    rst $38
    sub l
    rst $38
    sub l
    sub a
    ld l, c
    ld l, e
    dec c
    cp d
    db $10
    sbc a
    and b
    adc h
    ld [c], a
    adc h
    jp nc, $e578

    inc e
    db $fd
    dec bc
    ei
    add hl, bc
    db $fd
    ld b, $ff
    ret nz

    ld [hl+], a
    dec c
    inc d
    ld [de], a
    ld a, a
    add b
    sbc a
    ldh [$37], a
    or a
    nop
    rst $38
    rlca
    ret z

    cp $00
    cp $00
    cp [hl]
    ld b, c
    cp h
    inc bc
    dec sp
    add a
    db $dd
    rst $18
    nop
    rst $38
    ld sp, hl
    dec b
    ld sp, $3147
    ld c, e
    ld e, $a7
    jr c, jr_029_7d4b

    ret nc

    rst $18
    sub b
    cp a
    ld h, b
    rst $38
    adc h
    jp z, Jump_029_5756

    ld l, e
    ld l, d
    sbc a
    ccf
    add b
    dec a
    add b
    ld e, $c0
    nop
    rst $08
    cpl
    ld h, [hl]
    and d
    call nc, $afd5
    xor [hl]
    ei
    ld a, [$5607]
    dec bc
    xor d
    rla
    inc d
    rst $38
    ld hl, sp+$01
    ld bc, $7d01
    add hl, sp
    ld b, l
    dec c
    ld h, h
    jr nz, jr_029_7dbd

    ld a, l

jr_029_7dbd:
    ld bc, $bf01
    cp a
    dec c
    ld h, b
    rra
    jr nc, jr_029_7dd3

    or b
    add hl, hl
    dec c
    pop bc
    rst $38
    dec l
    inc b
    ei
    dec c
    inc d
    ld [de], a
    add b
    ld a, a

jr_029_7dd3:
    cp $01
    dec c
    ld a, [bc]
    jr nc, jr_029_7dd9

jr_029_7dd9:
    rst $38
    dec c
    ld a, [bc]
    inc [hl]
    dec c
    inc d
    ld [de], a
    dec c
    jr jr_029_7e17

    db $10
    rst $28
    dec c
    ld a, [bc]
    ld a, [hl-]
    db $10
    rst $28
    dec c
    inc d
    ld [de], a
    and h
    db $fc
    and h
    db $e4
    and h
    db $fc
    dec c
    add $14
    rst $38
    rst $38
    ld d, l
    ld d, a
    ld d, l
    ld d, a
    ld d, l
    ld a, a
    ld d, l
    rst $38
    ld d, l
    ld d, a
    xor c
    xor e
    ld bc, $bd0d
    jr nz, @+$01

    ld l, a
    sub b
    ld l, b
    sub a
    dec bc
    db $f4
    ld a, d
    add l
    ld b, d
    cp l
    ld e, [hl]
    and c
    ld d, b
    xor a

jr_029_7e17:
    dec c
    jr jr_029_7e4a

    dec c
    ld [hl], b
    ld [hl-], a
    dec c
    dec d
    inc d
    or $09
    ld d, $e9
    ret nc

    cpl
    ld e, [hl]
    and c
    ld b, d
    cp l
    ld a, d
    add l
    ld a, [bc]
    push af
    ld d, b
    xor a
    dec c
    sub b
    ld a, [hl-]
    dec c
    ld a, b
    ld [hl], $0d
    dec d
    ld [de], a
    ld a, [bc]
    push af
    dec c
    or b
    ld a, [hl-]
    ld d, b
    xor a
    dec c
    adc b
    ld [hl-], a
    dec bc
    db $f4
    ld l, b
    sub a
    ld l, a
    sub b
    dec c

jr_029_7e4a:
    ld a, b
    ld [hl], $0d
    ld [hl], d
    inc [hl]
    ld a, [bc]
    push af
    dec c
    ld l, b
    ld [hl-], a
    ret nc

    cpl
    ld d, $e9
    or $09
    dec c
    call nc, $0736
    rst $38
    dec de
    db $fc
    cpl
    ldh a, [$33]
    db $f4
    dec c
    ld [hl], b
    inc [hl]
    ldh [rIE], a
    ret c

    ccf
    db $f4
    rrca
    call z, Call_000_202f
    ld sp, hl
    dec hl
    db $f4
    scf
    ld hl, sp+$2d
    xor $2b
    ei
    db $10
    dec c
    inc d
    ld de, $9f04
    call nc, $cc2f
    cpl
    or h
    ld [hl], a
    db $d4, $df, $08
    dec c
    inc d
    ld de, $da25
    ld e, d
    and l
    cp l
    ld b, d
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    cp l
    ld b, d
    ld e, d
    and l
    and l
    ld e, d
    dec c
    and b
    rst $38
    ld c, l
    dec c
    sbc a
    ld c, a
    ld c, l
    dec c
    rst $38
    ld c, a
    ld c, l
    dec c
    ld e, a
    ld e, a
    ld c, l
    dec c
    cp a
    ld e, a
    ld c, l
    dec c
    rra
    ld l, a
    ld c, l
    dec c
    ld a, a
    ld l, a
    ld c, l
    dec c
    rst $18
    ld l, a
    ld c, l
    dec c
    ccf
    ld a, a
    ld c, l
    dec c
    sbc a
    ld a, a
    ld c, l
    nop
    ld [bc], a
    ld d, $2b
    ld h, $04
    dec b
    ld b, $07
    ld d, $02
    ld [bc], a
    ld h, $2b
    ld d, $0d
    ld [bc], a
    rst $38
    ld d, $14
    rlca
    dec hl
    ld [$1b1a], sp
    ld d, $22
    nop
    ld [bc], a
    inc bc
    nop
    ld bc, $1608
    dec c
    rrca
    ld bc, $1c09
    dec e
    ld d, $42
    nop
    ld d, $28
    nop
    add hl, bc
    ld d, $0d
    rrca
    ld bc, $1e0a
    rra
    ld d, $62
    nop
    ld d, $28
    nop
    ld a, [bc]
    ld d, $0d
    rrca
    ld bc, $340b
    dec [hl]
    ld d, $82
    nop
    jr nc, @+$33

    jr nc, jr_029_7f40

    dec bc
    ld d, $0d
    rrca
    ld [bc], a
    ld [hl-], a
    inc sp
    ld d, $a2
    inc b
    ld d, $2c
    rrca
    inc bc
    ld [hl], $37
    ccf
    ld b, b
    ccf
    ld b, b
    scf
    jr c, jr_029_7f56

    ld sp, $4c16
    rrca
    inc bc
    add hl, sp
    ld a, [hl-]
    ld b, c
    ld b, d
    ld b, c
    ld b, d
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    ld d, $6c
    rrca
    inc bc
    add hl, sp
    ld a, [hl-]
    db $10
    ld de, $1312
    ld a, [hl-]

jr_029_7f40:
    dec sp
    ld d, $8a
    rrca
    dec b
    add hl, sp
    ld a, [hl-]
    jr nz, @+$23

    ld [hl+], a
    inc hl
    ld d, $e8
    nop
    ld d, $2c
    rrca
    inc bc
    inc a
    dec a
    ld d, $43

jr_029_7f56:
    ld de, $143e
    dec d
    ld d, $4c
    rrca
    inc bc
    ld d, $a2
    inc b
    inc h
    dec h
    ld d, $6c
    rrca
    inc bc
    inc d
    dec d
    ld d, $88
    nop
    inc d
    dec d
    inc d
    dec d
    ld d, $8c
    rrca
    ld [bc], a
    dec bc
    inc h
    dec h
    ld d, $66
    ld [de], a
    inc h
    dec h
    ld d, $8c
    rrca
    ld [bc], a
    ld h, $06
    dec c
    jr nc, jr_029_7fb6

    inc c
    inc b
    ld d, $05
    nop
    ld d, $0c
    rrca
    ld [bc], a
    ld c, $02
    rrca
    ld [hl-], a
    inc sp
    ld c, $00
    inc bc
    nop
    ld bc, $0102
    ld d, $0d
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_029_7fb6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
