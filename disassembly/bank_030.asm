; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $030", ROMX[$4000], BANK[$30]

Jump_030_4000:
    jr nc, @+$41

Jump_030_4002:
    ld b, b
    ld [$df44], a
    ld b, l
    cp a
    ld c, b
    ld d, c
    ld c, c

Jump_030_400b:
    ld a, d
    ld c, l
    sub b
    ld c, [hl]
    xor d
    ld c, a
    ld b, h
    ld d, e
    ld hl, $0054
    ld d, l
    sbc d
    ld e, b
    ld h, a
    ld e, c
    cp a
    ld e, e
    ld d, c
    ld e, h
    rst $20
    ld e, h
    sbc [hl]
    ld h, e
    db $d3
    ld h, e
    push bc
    ld h, h
    xor l
    ld h, l
    adc $67
    ld h, b
    ld l, b
    add c
    ld l, d
    ld [hl-], a
    ld l, e
    ld h, c
    ld [hl], b
    ld [hl], $71
    ld a, [de]
    ld [hl], l
    ld [bc], a
    db $76
    ld d, h
    ld a, c
    ld e, $7a
    rst $38
    ld a, h
    nop
    ld [$0013], sp
    rst $00
    nop
    ld [$ff00], sp
    nop
    add h
    ld h, b
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
    db $20, $83
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
    inc de
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

jr_030_409d:
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
    jr jr_030_409d

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
    jr c, jr_030_411e

    jr c, jr_030_411e

    ld a, c
    dec b
    ld a, c
    dec b
    jr z, jr_030_4134

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
    jr c, jr_030_4138

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
    ld c, $00
    ld a, a
    inc de
    ld e, h
    nop
    ld bc, $0301
    call $01ff
    db $fd
    inc bc
    pop bc
    ccf
    ld bc, $01ff
    inc de
    ld l, l

jr_030_411e:
    nop
    ld e, a
    nop
    ld a, b
    nop
    ld h, c
    inc de
    ld d, $04
    ld e, [hl]
    ld e, [hl]
    ld bc, $01f9
    add a
    ld bc, $01f9
    ld hl, $2813
    inc b

jr_030_4134:
    ld bc, $0101
    ld a, l

jr_030_4138:
    add hl, sp
    ld b, l
    inc de
    inc b
    db $10
    ld bc, $017d
    ld bc, $bfbf
    nop
    rst $00
    ccf
    nop
    cpl
    ret nz

    ccf
    add b
    ld a, a
    ld b, b
    cp a
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rlca
    rst $10
    ld hl, sp+$04
    add sp, $05
    ld hl, sp+$06
    ld sp, hl
    dec b
    ld hl, sp+$04
    ld sp, hl
    dec b
    ei
    rlca
    ld a, [hl]
    add c
    and l
    ld e, d
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
    inc de
    jr nc, jr_030_4186

    db $eb
    db $f4
    sbc l
    ld e, [hl]
    ld [de], a
    dec hl
    ld bc, $f105
    di
    jp hl


    add hl, de
    sbc a
    ldh [rNR13], a
    ld d, b

jr_030_4186:
    inc d
    adc a
    rst $38
    or e
    db $fc
    ldh [$d0], a
    db $fd
    inc bc
    inc de
    ld h, b
    inc d
    pop af
    rst $38
    call $073f
    dec bc
    rrca
    rst $08
    jr nc, jr_030_41cc

    ld c, a
    ld c, a
    ld d, h
    ld d, h
    and h
    xor a
    and b
    cp e
    inc de
    ld a, d
    db $10
    ldh a, [$f0]
    inc c
    rrca
    ld a, [c]

jr_030_41ac:
    ld a, [c]
    ld c, d
    ld c, d
    ld b, l
    push hl
    dec b
    or l
    inc de
    adc d
    db $10
    ccf
    rst $38
    ld a, a
    ret nz

    sbc $be
    ldh a, [$b0]
    ldh [$af], a

jr_030_41c0:
    ldh [$b8], a
    ldh [$b0], a
    ldh [$b1], a
    db $fc
    rst $38
    cp $03
    inc bc
    dec b

jr_030_41cc:
    inc bc
    ld bc, $f301
    ld bc, $013b
    ld a, e
    inc bc
    ld sp, hl
    nop
    rst $38
    rst $00
    rlca
    add c
    ld a, $1f
    jr nz, jr_030_41c0

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
    jr @-$7e

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
    ret z

    db $10
    rst $38
    rst $38
    dec de
    dec de
    ldh a, [rIE]
    dec c
    adc $63
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
    rst $38
    rst $38
    rst $38
    add b
    inc de
    ld a, [c]
    ld [de], a
    add b
    rst $38
    cp a
    rst $38
    and h
    db $e4
    inc de
    pop af
    db $fc
    ccf
    ret nz

    ccf
    inc de
    rrca
    jr nz, jr_030_41ac

    ld l, a
    ld b, b
    cp a
    add b
    rst $20
    rst $20
    rst $38
    rst $38
    ei
    rlca
    ld hl, sp+$04
    ld hl, sp+$05
    ld hl, sp+$06
    jp hl


    dec b
    ld hl, sp+$04
    sbc a
    sbc a
    rst $38
    rst $38
    rst $30
    ld hl, sp-$6f
    cp $bf
    rst $38
    rst $00
    ld hl, sp-$71
    ldh a, [rNR13]
    ld d, b
    ld [de], a
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
    inc de
    ld h, b
    ld [de], a
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
    inc de
    ld e, d
    ld [hl+], a
    inc de
    ld a, d
    ld [de], a
    and h
    and h
    cp a
    cp a
    nop
    inc de
    ret c

    ld de, $8a13
    ld [de], a
    ld b, l
    ld b, l
    db $fd
    db $fd
    ld bc, $01ff
    ld bc, $ffff
    cp a
    rst $18
    sbc a
    and b
    add b
    adc e
    add b
    sbc a
    inc de
    sub [hl]
    jr nz, @+$42

    ld e, a
    ccf
    cp a
    di
    push af
    db $fd
    ld bc, $c301
    ld bc, $13ff
    and [hl]
    jr nz, jr_030_42b0

    cp $fc

jr_030_42b0:
    db $fd
    ld b, c
    ret


    or b
    inc [hl]
    cp $0e
    rst $38
    inc bc
    nop
    inc de
    ret nc

    stop
    rst $38
    nop
    ld hl, $0165
    sbc l
    ld c, e
    ld c, e
    rst $38
    rst $38
    rst $28
    cpl
    db $e4
    inc h
    db $fd
    dec a
    rst $28
    rrca
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
    sbc a
    sbc h
    rst $18
    call c, $f0f7
    ld e, a
    ld e, a
    rst $18
    sbc $7d
    ld a, d
    db $fd
    jp nz, $b813

    inc h
    rst $38
    rst $38
    inc de
    and a
    ld hl, $8a13
    ld hl, $fffd
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
    inc de
    ld a, [$4510]
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
    inc de
    ld a, [$aa20]
    ld [$efaa], a
    xor d
    db $eb
    xor d
    cp $aa
    ld [$d595], a
    inc de
    ld a, [$9510]
    sub a
    sub l
    sub a
    sub l
    rst $38
    sub l
    rst $38
    sub l
    sub a
    ld l, c
    ld l, e
    inc de
    ld a, [$f420]
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
    jp z, Jump_030_5292

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
    ld hl, sp+$00
    nop
    nop
    ld a, a
    nop
    inc de
    ld l, a
    nop
    ld a, a
    nop
    ld b, b
    nop
    ld e, a
    nop
    ld e, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    cp $02
    cp $13
    sub b
    ld sp, $0a06
    cp $0a
    ld a, [hl]
    nop
    ld e, a
    ccf
    inc de
    add e
    jr nc, jr_030_43aa

    adc e
    ld sp, $a013
    jr nc, jr_030_43a7

    cp $fa
    inc de
    sub e
    jr nc, jr_030_43b6

    sbc e
    ld sp, $b013

jr_030_43a7:
    jr nc, jr_030_43bc

    ret nz

jr_030_43aa:
    rst $38
    ld l, $13
    and l
    scf
    nop
    ld a, a
    rst $38
    rst $38
    inc bc
    cp $03

jr_030_43b6:
    ld b, $0b
    cp $0b
    ld a, [hl]
    dec bc

jr_030_43bc:
    cp $fb
    cp $03
    cp $ff
    cp $a4
    db $fc
    and h
    db $e4
    and h
    db $fc
    inc de
    ld b, $34
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
    ld bc, $13ff
    ret nc

    db $10
    inc de
    cp d
    ld [hl+], a
    rrca
    rst $38

jr_030_43e4:
    ret nc

    rla
    rst $00
    jr jr_030_43e4

    ld h, h
    nop
    rst $38
    db $fd
    ld [bc], a
    inc de
    ld d, d
    ld b, b
    ldh [$ef], a
    dec bc
    add sp, -$0b
    inc c
    db $db
    ld [hl+], a
    ld c, b
    rst $10
    rst $20
    ld l, b
    ldh a, [rSVBK]
    rst $38
    ld a, a
    ld e, b
    ret c

    ret nc

    ret nc

    ei
    ei
    cp $2c
    ld a, [de]
    db $e3
    rst $20
    ld d, $1f
    ld e, $fb
    ld a, [$3332]
    ld de, $3f11
    ccf
    rst $38
    ldh a, [rDIV]
    ei
    inc de
    cp d
    ld [hl+], a
    add b
    ld a, a
    cp $01
    inc de
    adc d
    ld b, b
    inc de
    jp nc, Jump_000_1310

    adc h
    ld b, d
    inc de
    cp d
    ld [hl+], a
    inc de
    cp b
    inc h
    db $10
    rst $28
    inc de
    adc d
    ld c, d
    db $10
    rst $28
    inc de
    sbc d
    ld b, h
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
    inc de
    cp b
    jr nz, jr_030_4460

    ret nc

    ld b, d
    inc de
    ret c

    ld b, h
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

jr_030_4460:
    ld d, b
    xor a
    inc de
    ldh a, [rWY]
    inc de
    ret c

    ld b, [hl]
    inc de
    db $eb
    ld [hl+], a
    ld a, [bc]
    push af
    inc de
    db $10
    ld e, d
    ld d, b
    xor a
    inc de
    add sp, $42
    dec bc
    db $f4
    ld l, b
    sub a
    ld l, a
    sub b
    inc de
    ret c

    ld b, [hl]
    inc de
    jp nc, Jump_000_0a44

    push af
    inc de
    ret z

    ld b, d
    ret nc

    cpl
    ld d, $e9
    or $09
    inc de
    ld a, d
    jr nz, @+$15

    jp nc, $1cff

    rst $38
    rst $28
    db $10
    db $10
    rst $28
    ret nz

    ld bc, $bc3c
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
    ld [bc], a
    add c
    ld a, [bc]
    push af
    ld a, [c]
    dec c
    ld a, [bc]
    push af
    inc de
    and b
    rst $38

Call_030_44d5:
    ld c, l
    inc de
    rra
    ld l, a
    ld c, l
    inc de
    ld a, a
    ld l, a
    ld c, l
    inc de
    rst $18
    ld l, a
    ld c, l
    inc de
    ccf
    ld a, a
    ld c, l
    inc de
    sbc a
    ld a, a
    ld c, l
    nop
    ld [bc], a
    ld de, $1010
    inc b
    dec b
    ld b, $07
    ld de, $0802
    db $10
    db $10
    rst $38
    ld de, $0714
    ld [$0008], sp
    ld bc, $0302
    rra
    cpl
    ld [bc], a
    inc bc
    ld de, $0022
    rla
    jr @+$04

    inc bc
    ld [$1108], sp

Call_030_4510:
    inc d
    ld [$0909], sp
    nop
    ld bc, $3938
    jr nc, jr_030_454b

    ld de, $0228
    daa
    jr z, jr_030_4522

    inc bc
    add hl, bc

jr_030_4522:
    add hl, bc
    ld de, $0814
    ld a, [bc]
    ld a, [bc]
    nop
    ld bc, $3b3a
    ld [hl-], a
    inc sp
    ld de, $0228
    ld de, $0022
    ld a, [bc]
    ld a, [bc]
    ld de, $0814
    dec bc
    dec bc
    inc de
    inc d
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld c, b
    ld c, c
    ld c, b
    ld c, c
    add hl, de
    ld a, [de]
    ld c, h
    ld c, l
    ld e, b
    ld e, c

jr_030_454b:
    dec bc
    dec bc
    ld de, $0a14
    inc hl
    inc h
    ld de, $0088
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    add hl, hl
    ld a, [hl+]
    ld c, a
    ld d, b
    ld e, d
    ld e, e
    ld de, $0c32
    dec d
    ld d, $11
    adc b
    nop
    ld de, $02c4
    ld c, a
    ld d, b
    ld d, b
    ld d, c
    ld de, $0c52
    dec h
    ld h, $11
    xor b

Jump_030_4575:
    nop
    ld de, $02e4
    ld d, d
    ld d, e
    ld d, e
    ld d, h
    ld de, $0c72
    ld de, $02c4
    dec de
    inc e
    dec e
    ld e, $44
    ld b, l
    ld de, $0088
    ld de, $0c92
    ld de, $02e4
    dec hl
    inc l
    dec l
    ld l, $46
    ld b, a
    ld de, $00a8
    ld de, $0c32
    inc [hl]
    dec [hl]
    ld de, $06c4
    ld de, $0088
    ld de, $0c52
    ld [hl], $37
    ld de, $06e4
    ld de, $00a8
    ld de, $0c72
    ld de, $1c42
    ld de, $0a92
    dec bc
    dec bc
    ld de, $1c62
    ld de, $0a92
    ld de, $0500
    dec c
    ld c, b
    ld c, c
    inc c
    ld de, $0102
    ld de, $0a12
    rrca
    ld c, $11
    ld l, d
    inc bc
    rrca
    ld c, d
    ld c, e
    ld de, $12e1
    rrca
    ld c, $11
    inc d
    ld [$0800], sp
    inc bc
    rst $38
    rst $38
    nop
    ld [$ff00], sp
    nop
    add h
    ld h, b
    ld h, b
    xor [hl]
    xor [hl]
    rst $38
    inc bc
    inc c
    ld bc, $f800
    nop
    pop hl
    nop
    ld a, $01
    ld bc, $3434
    ld l, l
    ld l, l
    inc bc
    ld c, $01
    adc a
    nop
    ei
    nop
    jr nz, @-$7b

    add e
    cpl
    cpl
    di
    di
    inc bc
    ld c, $01
    di
    nop
    ccf
    nop
    ld [$9090], sp
    push af
    push af
    inc bc
    inc e
    ld [bc], a
    inc bc
    ld a, $0a
    db $fc
    ld [bc], a
    add b
    ld a, [hl]
    nop
    cp $00
    nop
    rst $08
    jr nz, @+$0a

    rst $20
    nop
    rst $28
    nop
    nop
    inc bc
    ld d, b
    ld bc, $ee00
    nop
    ld [bc], a
    db $ec
    inc bc
    cp $f0
    rst $38
    inc bc
    and b
    rst $38
    ld c, l
    inc bc
    rst $08
    rst $38
    jr nz, @-$7d

    cp c
    or c
    call $d9a1
    or c
    call $f181
    add c
    sbc l
    rst $38
    rst $38
    adc a
    rst $28
    adc a
    rst $28
    add l
    push bc
    add l
    push hl
    add e
    and e
    add a
    or a
    add e
    and e
    adc e
    db $eb
    inc bc
    ret nc

    rst $38
    ld e, $00
    rst $28
    rra
    or b
    ld [hl], b
    ret nz

    ld b, b
    ld b, b
    ret nz

    ld h, b
    ld h, b
    sbc a
    sbc a
    sub c
    sbc c
    rst $38
    nop
    rst $28
    ldh a, [$7f]
    ld a, b
    rla
    db $f4
    ld l, l
    ld l, [hl]
    dec e
    inc e
    ei
    ld a, [$8a0b]
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
    ret nz

    ret nz

    rst $10
    ret z

    and b
    sbc a
    xor d
    sub l
    dec h
    ld e, d
    ld a, [bc]
    ld [hl], l
    dec b
    ld a, d
    xor d
    push de
    ld hl, sp-$08
    db $f4
    inc b
    ld [$a6f0], sp
    ld e, d
    ld d, h
    xor b
    and l
    ld e, c
    ld d, l
    xor c
    and l
    ld e, e
    rst $38
    rra
    db $e3
    inc l
    adc b
    rla
    jp nc, Jump_000_056d

    ld a, [hl-]
    xor d
    sub l
    and l
    sbc d
    xor d
    push de
    add c
    sub e
    inc de
    db $d3
    db $e3
    inc e
    nop
    rst $38
    ld d, l
    xor d
    xor d
    ld d, l
    inc bc
    ret z

    db $10
    and l
    sbc d
    ld c, d
    dec [hl]
    dec d
    ld [$ca03], a
    ld [de], a
    ld [bc], a
    db $fd
    ld sp, hl
    ld b, $51
    xor l
    and l
    ld e, c
    inc bc
    ldh [rNR10], a
    ld d, l
    xor c
    and c
    ld e, l
    add c
    ld a, l
    db $e3
    inc de
    and l
    jp c, $d5aa

    add l
    ld a, [$b58a]
    ld b, l
    ld a, d
    ld l, d
    push de
    ld h, l
    jp c, $556a

    adc e
    xor e
    add c
    sub c
    add a
    sub a
    add e
    db $d3
    add l
    push de
    add a
    or a
    jp Jump_030_7ec3


    ld a, [hl]
    inc bc
    nop
    daa
    rst $30
    add e
    db $e3
    add c
    pop hl
    inc bc
    ret nc

    rst $38
    dec e
    pop de
    reti


    or c
    ld sp, hl
    rst $08
    rst $38
    and b
    xor a
    ld e, a
    rst $18
    ld d, c
    reti


    or c
    ld a, c
    rst $18
    ccf
    rrca
    adc [hl]
    dec de
    sbc [hl]
    rst $20
    cp $0b
    ld [$f4f5], a
    dec c
    adc [hl]
    dec de
    sbc b
    rst $30
    ldh a, [$80]
    add $80
    res 0, b
    ld hl, sp-$80
    call z, $ff80
    rst $38
    rst $38
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld bc, $0163
    db $d3
    ld bc, $011f
    inc sp
    ld bc, $ffff
    rst $38
    ei
    inc b
    ei
    inc b
    dec h
    ld a, [de]
    adc d
    dec [hl]
    ld b, l
    ld a, [$75ca]
    ld b, l
    ld a, [$556a]
    ld h, l
    ld e, d
    xor d
    sub l
    ld d, l
    xor e
    xor c
    ld d, a
    ld d, l
    xor e
    inc bc
    ld [c], a
    db $10
    and c
    ld e, l
    ld d, l
    xor c
    and l
    ld e, c
    and l
    jp c, $e59a

    and l
    jp c, $95aa

    add l
    cp d
    adc d
    or l
    and l
    sbc d
    xor d
    sub l
    inc bc
    add sp, $10
    ld d, e
    xor a
    and d
    ld e, [hl]
    ld d, d
    xor [hl]
    and [hl]
    ld e, d
    inc bc
    xor h
    db $10
    ld b, $d6
    sbc e
    sbc e
    jr nz, jr_030_47d0

    ldh [$e3], a
    ldh [$e6], a
    ld b, b
    ld b, [hl]
    ld b, b
    ld c, h
    rst $38
    rst $38
    ld h, e
    ld h, e
    ld b, c
    ld b, c
    pop bc
    pop de
    add c
    or c
    add e
    and e
    add a
    and a
    rst $18
    sbc $ff
    ld hl, sp+$54
    xor d
    xor b
    ld d, h
    ld d, h
    xor d
    and l
    ld e, b
    ld d, e

jr_030_47d0:
    xor [hl]
    and e
    ld e, a
    inc bc
    xor h
    jr nz, @-$79

    cp d
    inc bc
    or [hl]
    jr nz, jr_030_47df

    cp d
    db $10
    adc d

jr_030_47df:
    or l
    add c
    cp [hl]
    rst $00
    ret z

    ld d, l
    xor c
    and d
    ld e, h
    ld d, c
    xor [hl]
    xor b
    ld d, a
    inc bc
    ret z

    db $10
    ld b, b
    cp a
    sbc a
    ld h, b
    add $c6
    add d
    add d
    add e
    adc e
    add c
    adc l
    pop bc
    push bc
    pop hl
    push hl
    ei
    ld a, e
    rst $38
    rra
    ld h, b
    ld l, e
    reti


    reti


    inc b
    call nz, $c707
    rlca
    ld h, a
    ld [bc], a
    ld h, d
    ld [bc], a
    ld [hl-], a
    rst $38
    rst $38
    add c
    ret


    ret z

    set 4, a
    jr jr_030_481d

    add $12
    nop

jr_030_481d:
    rst $38
    cp $01
    add e
    add e
    ld a, h
    ld a, l
    or e
    ld c, h
    inc bc
    ld b, [hl]
    ld [hl], $10
    rst $10
    ld a, [c]
    ld a, [c]
    inc hl
    inc hl
    ld sp, $1035
    ld d, [hl]
    db $10
    jp nc, $be3c

    rst $38
    rst $38
    jr nz, jr_030_4865

    dec d
    ld d, l
    inc b
    ld h, h
    dec c
    ld l, l
    adc l
    cp l
    add [hl]
    or [hl]
    inc bc
    inc a
    inc [hl]
    rst $00
    jr c, jr_030_484e

    add $12
    dec d

jr_030_484e:
    ld [$35ca], a
    rst $38
    ld hl, sp-$39
    inc [hl]
    ld de, $abe8
    ld d, [hl]
    ld d, b
    xor h
    inc bc
    xor d
    ld [de], a
    inc bc
    ld [$c530], sp
    ld a, [$754a]

jr_030_4865:
    ld b, l
    ld a, d
    ld l, d
    ld d, l
    inc bc
    cp h
    db $10
    inc bc
    and b
    inc l
    inc bc
    and b
    rrca
    ld c, l
    inc bc
    rra
    ld c, a
    ld c, l
    inc bc
    ld a, a
    ld c, a
    ld c, l
    inc bc
    rst $18
    rst $38
    ld de, $0203
    ld d, b
    add b
    ld a, a
    cp $01
    inc bc
    ld a, [bc]
    ld d, b
    inc bc
    ld c, h
    jr nc, jr_030_4890

    inc c
    ld d, d
    inc bc

jr_030_4890:
    ld [bc], a
    ld d, d
    inc bc
    nop
    ld d, h
    db $10
    rst $28
    inc bc
    ld a, [bc]
    ld e, d
    db $10
    rst $28
    inc bc
    ld a, [de]
    ld d, e
    inc bc
    ld b, b
    ld e, a
    ld c, l
    inc bc
    and b
    ld e, a
    ld c, l
    inc bc
    nop
    ld l, a
    ld c, l
    inc bc
    ld h, b
    ld l, a
    ld c, l
    inc bc
    ret nz

    ld l, a
    ld c, l
    inc bc
    jr nz, jr_030_4935

    ld c, l
    inc bc
    add b
    ld a, a
    ld c, l
    inc bc
    ldh [$7f], a
    inc c
    nop
    ld [bc], a
    rlca
    inc b
    stop
    ld bc, $0302
    rlca
    ld [bc], a
    ld [bc], a
    db $10
    inc b
    rlca
    dec c
    ld [bc], a
    rst $38
    rlca
    inc d
    rlca
    inc b
    ld de, $0511
    dec b
    rlca
    ld [hl+], a
    inc bc
    ld de, $0d07
    rrca
    ld bc, $2121
    dec b
    dec b
    rlca
    ld b, d
    inc bc
    ld hl, $0d07
    rrca
    ld [bc], a
    jr nz, jr_030_48f5

    ld b, $07
    ld h, d
    inc bc
    rlca
    inc l

jr_030_48f5:
    rrca
    inc bc
    dec d
    ld d, $50
    ld d, c
    rlca
    add h
    ld [bc], a
    rlca
    ld c, h

jr_030_4900:
    rrca
    inc bc
    dec h
    ld h, $52
    ld d, e
    rlca
    and h
    ld [bc], a
    rlca
    ld l, h
    rrca
    rlca
    dec de
    inc e
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    rlca
    adc h
    rrca
    rlca
    dec hl
    inc l
    ld [hl], $37
    ld [hl], $37
    rlca
    inc l
    rrca
    inc bc
    rla
    jr jr_030_4974

    ld d, c
    add hl, hl
    ld a, [hl+]
    rlca
    adc b
    rrca
    rlca
    daa
    jr z, jr_030_4980

    ld d, e
    rra
    cpl
    rlca
    xor b
    rrca
    rlca

jr_030_4935:
    rlca
    ld [bc], a
    rra
    ld c, l
    rlca
    ld [hl+], a
    rra
    inc c
    rlca
    ld bc, $1004
    ld d, b
    ld d, c
    rlca
    inc c
    rrca
    inc bc
    rlca
    ld b, d
    inc bc
    ld de, $5352
    rlca
    ld c, h
    rrca
    ld bc, $0800
    dec c
    nop
    rst $00
    nop
    ld [$ff00], sp
    nop
    add h
    ld h, b
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

jr_030_4974:
    nop
    ld [hl], b
    nop
    adc a
    nop
    ei
    nop
    jr nz, jr_030_4900

    add e
    cpl
    cpl

jr_030_4980:
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

jr_030_49af:
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
    jr jr_030_49af

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
    jr c, jr_030_4a30

    jr c, jr_030_4a30

    ld a, c
    dec b
    ld a, c
    dec b
    jr z, jr_030_4a46

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
    jr c, jr_030_4a4a

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

jr_030_4a30:
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

jr_030_4a46:
    ld bc, $0101
    ld a, l

jr_030_4a4a:
    add hl, sp
    ld b, l
    dec c
    inc b
    db $10
    ld bc, $017d
    ld bc, $bfbf
    nop
    nop
    nop
    ld a, a
    nop
    dec c
    ld l, a
    nop
    ld a, a
    nop
    ld b, b
    nop
    ld e, a
    nop
    ld e, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    cp $02
    cp $0d
    jr nz, @+$13

    ld b, $0a
    cp $0a
    ld a, [hl]
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
    ld b, h
    inc d
    ccf
    ret nz

    rst $38
    rst $38
    nop
    cp $0d
    ld b, h
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
    ld a, [hl]
    add c
    and l
    ld e, d
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
    ld [hl], b
    db $10
    db $eb
    db $f4
    sbc l
    ld e, [hl]
    ld [de], a
    dec hl
    ld bc, $f105
    di
    jp hl


    add hl, de
    sbc a
    ldh [$0d], a
    sub b
    inc d
    adc a
    rst $38
    or e
    db $fc
    ldh [$d0], a
    db $fd
    inc bc
    dec c
    and b
    inc d
    pop af
    rst $38
    call $073f
    dec bc
    rst $38
    rst $38
    rst $38

jr_030_4ade:
    add b
    dec c
    or d
    ld [de], a
    add b
    rst $38
    cp a
    rst $38
    and h
    db $e4
    rst $38
    rst $38
    rst $38
    ld bc, $c20d
    ld [de], a
    ld bc, $fdff
    rst $38
    ld b, l
    ld b, a
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
    jr nz, jr_030_4b29

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
    xor d
    ld [$efaa], a
    xor d
    db $eb
    xor d
    cp $aa
    ld [$d595], a
    dec c
    cp d
    db $10
    dec c
    ldh a, [$fd]
    ld e, a
    ccf

jr_030_4b29:
    dec c
    inc de
    db $10
    dec c
    dec de
    ld de, $100d
    jr nz, jr_030_4b3d

    cp $fa
    dec c
    inc hl
    db $10
    dec c
    dec hl
    ld de, $200d

jr_030_4b3d:
    jr nz, jr_030_4ade

    and b
    adc h
    ld [c], a
    adc h

Call_030_4b43:
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
    ld b, h
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
    jr c, @-$3f

    ret nc

    rst $18
    sub b
    cp a
    ld h, b
    rst $38
    rst $30
    ld hl, sp-$6f
    cp $bf
    rst $38
    rst $00
    ld hl, sp-$71
    ldh a, [$0d]
    sub b
    ld [de], a
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
    and b
    ld [de], a
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
    sbc d
    ld [hl+], a
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
    cp d
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
    jp z, $8c10

    jp z, Jump_030_5756

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
    ld hl, sp-$6b
    sub a
    sub l
    sub a
    sub l
    rst $38
    sub l
    rst $38
    sub l
    sub a
    ld l, c
    ld l, e
    dec c
    jp z, Jump_000_0f10

    rst $08
    jr nc, jr_030_4c33

    ld c, a
    ld c, a
    ld d, h
    ld d, h
    and h
    xor a
    and b
    cp e
    dec c
    ld a, [bc]
    jr nc, @-$0e

    ldh a, [$0c]
    rrca
    ld a, [c]
    ld a, [c]
    ld c, d
    ld c, d
    ld b, l
    push hl
    dec b
    or l
    dec c
    ld a, [de]
    jr nc, jr_030_4c2b

    ld a, [bc]
    ld [hl-], a
    and h
    and h
    cp a
    cp a
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    dec c

jr_030_4c2b:
    ld a, [de]
    ld [hl-], a
    ld b, l
    ld b, l
    db $fd
    db $fd
    dec c
    rst $00

jr_030_4c33:
    ld de, $ff0d
    ld e, $0d
    jp nc, $1cff

    and h
    db $fc
    and h
    db $e4
    and h
    db $fc
    dec c
    or [hl]
    inc h
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
    ld bc, $0dff
    ld b, b
    db $10
    dec c
    ld d, $26
    nop
    ld a, a
    rst $38
    rst $38
    inc bc
    cp $03
    ld b, $0b
    cp $0b
    ld a, [hl]
    dec bc
    cp $fb
    cp $03
    cp $ff
    cp $00
    dec c
    ld a, $00
    rst $38
    rst $38
    nop
    rlca
    rst $38
    dec de
    db $fc
    cpl
    ldh a, [$33]
    db $f4
    dec c
    ret nz

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
    ld b, h
    ld de, $9f04
    call nc, $cc2f
    cpl
    or h
    ld [hl], a
    call nc, Call_000_08df
    dec c
    ld b, h
    inc de
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
    dec c
    ret nz

    inc [hl]
    dec c
    ld b, l
    dec d
    rst $38
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
    jr nc, jr_030_4d16

    dec c
    jr jr_030_4d15

    dec c
    ld b, l
    ld [de], a
    ld a, [bc]
    push af
    dec c
    ld d, b
    ld c, d
    ld d, b
    xor a
    dec c
    jr z, jr_030_4d1e

    dec bc
    db $f4
    ld l, b
    sub a
    ld l, a
    sub b
    dec c
    jr @+$48

    dec c
    ld [de], a
    ld b, h
    ld a, [bc]
    push af
    dec c
    ld [$d042], sp
    cpl
    ld d, $e9
    or $09
    nop
    rst $38
    inc b
    ei
    dec c
    ld b, h
    ld [de], a
    add b
    ld a, a
    cp $01
    dec c
    sbc d
    ld b, b
    nop
    rst $38
    dec c
    sbc d
    ld b, h
    dec c
    ld b, h
    ld [de], a
    dec c
    xor b
    ld b, h
    db $10
    rst $28
    dec c
    sbc d
    ld c, d
    db $10
    rst $28
    dec c
    xor d

jr_030_4d15:
    ld b, e

jr_030_4d16:
    dec c
    jp nc, $1cff

    ldh a, [rIF]
    rst $28
    db $10

jr_030_4d1e:
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
    adc $2d
    adc $2d
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
    ldh a, [$0d]
    and b
    rst $38
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
    ld [bc], a
    jr nz, @+$12

    db $10
    inc b
    dec b
    ld b, $07
    jr nz, @+$04

    ld [$1010], sp

jr_030_4d88:
    rst $38
    jr nz, @+$16

jr_030_4d8b:
    rlca
    ld [$0008], sp
    ld bc, $0302
    dec de
    inc e
    dec de
    inc e
    jr nz, jr_030_4dba

    nop
    jr nc, jr_030_4dcc

    ld [bc], a
    inc bc
    ld [$2008], sp
    inc d
    ld [$0909], sp
    nop
    ld bc, $1211
    dec hl
    inc l
    dec hl
    inc l
    jr nz, jr_030_4dd0

    nop
    ld [hl-], a

jr_030_4db0:
    inc sp
    ld [bc], a
    inc bc
    add hl, bc
    add hl, bc
    jr nz, @+$16

    ld [$0a0a], sp

jr_030_4dba:
    nop
    ld bc, $2221
    rra

jr_030_4dbf:
    cpl
    rra
    cpl
    jr nz, @+$24

    nop
    jr nz, jr_030_4de9

    nop
    ld a, [bc]
    ld a, [bc]
    jr nz, jr_030_4de0

jr_030_4dcc:
    ld [$0b0b], sp
    rla

jr_030_4dd0:
    jr jr_030_4e0c

    dec sp
    jr c, jr_030_4e0e

    jr c, jr_030_4e10

    dec e
    ld e, $20
    adc d
    ld [bc], a
    dec bc

jr_030_4ddd:
    dec bc
    jr nz, jr_030_4df4

jr_030_4de0:
    ld a, [bc]
    daa
    jr z, jr_030_4e2f

    ld c, h
    jr nz, jr_030_4d8b

    nop
    dec l

jr_030_4de9:
    ld l, $20
    xor d
    ld [bc], a
    jr nz, @+$34

jr_030_4def:
    inc c
    add hl, de
    ld a, [de]
    ld c, c
    ld c, d

jr_030_4df4:
    ld b, b
    ld b, c
    inc a
    dec a
    ld b, c
    ld b, c

jr_030_4dfa:
    ld b, c
    ld b, d
    jr nz, jr_030_4d88

    nop
    jr nz, jr_030_4e53

    inc c
    add hl, hl
    ld a, [hl+]
    ld c, e
    ld c, h

jr_030_4e06:
    ld b, e
    ld b, h
    ld a, $3f
    ld b, h
    ld b, h

jr_030_4e0c:
    ld b, h
    ld b, l

jr_030_4e0e:
    jr nz, jr_030_4dba

jr_030_4e10:
    nop
    jr nz, jr_030_4e85

    inc c
    dec e
    ld e, $49
    ld c, d
    ld b, e
    ld b, h
    inc de
    inc d
    dec d
    ld d, $44
    ld b, l
    jr nz, jr_030_4db0

    rrca
    ld bc, $2e2d
    jr nz, jr_030_4e0c

    nop
    inc hl
    inc h
    dec h
    ld h, $20
    db $ec

jr_030_4e2f:
    ld [bc], a
    jr nz, @+$34

    inc c
    jr nz, jr_030_4dbf

    nop
    ld b, e
    ld b, h
    jr nz, jr_030_4e81

    ld de, $4945
    ld c, d
    ld c, c
    ld c, d
    jr nz, jr_030_4e94

    inc c

jr_030_4e43:
    jr nz, jr_030_4def

    nop
    ld b, [hl]
    ld b, a
    jr nz, jr_030_4eb1

    ld de, $2048
    and h
    nop
    jr nz, jr_030_4e43

    ld c, $20

jr_030_4e53:
    ld [bc], a
    db $10
    jr nz, jr_030_4ddd

    ld d, $20
    sub d
    ld a, [bc]
    dec bc
    dec bc
    jr nz, @-$54

    nop
    jr nz, jr_030_4e06

    ld [bc], a
    jr nz, @-$5a

    ld [bc], a
    jr nz, jr_030_4dfa

    ld a, [bc]
    db $10
    db $10
    rlca
    inc b
    rlca
    inc b
    rlca
    dec c
    ld c, c
    ld c, d
    inc c
    inc b
    jr nz, jr_030_4e7c

    ld [bc], a
    jr nz, jr_030_4e8c

    ld a, [bc]
    rrca

jr_030_4e7c:
    ld c, $03
    nop
    inc bc
    nop

jr_030_4e81:
    inc bc
    rrca
    ld c, e
    ld c, h

jr_030_4e85:
    ld c, $00
    jr nz, jr_030_4ef6

    ld bc, $0f00

jr_030_4e8c:
    ld c, $20
    inc d
    ld [$0200], sp
    jr nz, @+$12

jr_030_4e94:
    db $10
    inc b
    dec b
    ld b, $07
    jr nz, @+$04

    ld [$1010], sp

jr_030_4e9e:
    rst $38
    jr nz, @+$16

jr_030_4ea1:
    rlca
    ld [$0008], sp
    ld bc, $0302
    dec de
    inc e
    dec de
    inc e
    jr nz, jr_030_4ed0

    nop
    jr nc, jr_030_4ee2

jr_030_4eb1:
    ld [bc], a
    inc bc
    ld [$2008], sp
    inc d
    ld [$0909], sp
    nop
    ld bc, $1211
    dec hl
    inc l
    dec hl
    inc l
    jr nz, jr_030_4ee6

    nop
    ld [hl-], a

jr_030_4ec6:
    inc sp
    ld [bc], a
    inc bc
    add hl, bc
    add hl, bc
    jr nz, @+$16

    ld [$0a0a], sp

jr_030_4ed0:
    nop
    ld bc, $2221
    rra

jr_030_4ed5:
    cpl
    rra
    cpl
    jr nz, @+$24

    nop
    jr nz, jr_030_4eff

    nop
    ld a, [bc]
    ld a, [bc]
    jr nz, jr_030_4ef6

jr_030_4ee2:
    ld [$0b0b], sp
    rla

jr_030_4ee6:
    jr jr_030_4f22

    dec sp
    jr c, jr_030_4f24

    jr c, jr_030_4f26

    dec e
    ld e, $20
    adc d
    ld [bc], a
    dec bc

jr_030_4ef3:
    dec bc
    jr nz, jr_030_4f0a

jr_030_4ef6:
    ld a, [bc]
    daa
    jr z, jr_030_4f45

    ld c, h
    jr nz, jr_030_4ea1

    nop
    dec l

jr_030_4eff:
    ld l, $20
    xor d
    ld [bc], a
    jr nz, @+$34

jr_030_4f05:
    inc c
    add hl, de
    ld a, [de]
    ld c, c
    ld c, d

jr_030_4f0a:
    ld b, b
    ld b, c
    inc a
    dec a
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    jr nz, jr_030_4e9e

jr_030_4f14:
    nop
    jr nz, jr_030_4f69

    inc c
    add hl, hl
    ld a, [hl+]
    ld c, e
    ld c, h
    ld b, e
    ld b, h

jr_030_4f1e:
    ld a, $3f
    ld b, h

jr_030_4f21:
    ld b, h

jr_030_4f22:
    ld b, h
    ld b, l

jr_030_4f24:
    jr nz, jr_030_4ed0

jr_030_4f26:
    nop
    jr nz, jr_030_4f9b

    inc c
    dec e
    ld e, $49
    ld c, d
    ld b, e
    ld b, h
    inc de
    inc d
    dec d
    ld d, $44
    ld b, l
    jr nz, jr_030_4ec6

    rrca
    ld bc, $2e2d
    jr nz, jr_030_4f22

    nop
    inc hl
    inc h
    dec h
    ld h, $20
    db $ec

jr_030_4f45:
    ld [bc], a
    jr nz, jr_030_4f7a

    inc c
    jr nz, jr_030_4ed5

    nop
    ld b, e
    ld b, h
    jr nz, @+$49

    ld de, $4945
    ld c, d
    ld c, c
    ld c, d
    jr nz, @+$54

    inc c

jr_030_4f59:
    jr nz, jr_030_4f05

    nop
    ld b, [hl]
    ld b, a
    jr nz, @+$69

    ld de, $2048
    and h
    nop
    jr nz, jr_030_4f59

    ld c, $20

jr_030_4f69:
    ld [bc], a
    db $10
    jr nz, jr_030_4ef3

    inc d
    ld d, b
    ld d, c
    jr nz, @-$6c

    ld a, [bc]
    dec bc
    dec bc
    jr nz, jr_030_4f21

    nop
    jr nz, jr_030_4f1e

jr_030_4f7a:
    ld [bc], a
    jr nz, jr_030_4f21

    nop
    ld d, d
    ld d, e
    jr nz, jr_030_4f14

    ld a, [bc]
    db $10
    db $10
    rlca
    inc b
    rlca
    inc b
    rlca
    dec c
    ld c, c
    ld c, d
    inc c
    inc b
    jr nz, jr_030_4f96

    ld [bc], a
    jr nz, jr_030_4fa6

    ld a, [bc]
    rrca

jr_030_4f96:
    ld c, $03
    nop
    inc bc
    nop

jr_030_4f9b:
    inc bc
    rrca
    ld c, e
    ld c, h
    ld c, $00
    jr nz, jr_030_5010

    ld bc, $0f00

jr_030_4fa6:
    ld c, $20
    inc d
    ld [$0800], sp
    ld [de], a
    nop
    rst $00
    nop
    ld [$ff00], sp
    nop
    add h
    ld h, b
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
    jr nz, jr_030_4f59

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
    ld [de], a
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

jr_030_5008:
    rlca
    db $fc
    db $fc
    nop
    nop
    ld [bc], a
    add l
    cp [hl]

jr_030_5010:
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
    jr jr_030_5008

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
    jr c, jr_030_5089

    jr c, jr_030_5089

    ld a, c
    dec b
    ld a, c
    dec b
    jr z, jr_030_509f

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
    jr c, jr_030_50a3

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
    ld c, $00
    ld a, a
    ld [de], a
    ld e, h
    nop
    ld bc, $0301
    call $01ff
    db $fd
    inc bc
    pop bc
    ccf
    ld bc, $01ff
    ld [de], a
    ld l, l

jr_030_5089:
    nop
    ld e, a
    nop
    ld a, b
    nop
    ld h, c
    ld [de], a
    ld d, $04
    ld e, [hl]
    ld e, [hl]
    ld bc, $01f9
    add a
    ld bc, $01f9
    ld hl, $2812
    inc b

jr_030_509f:
    ld bc, $0101
    ld a, l

jr_030_50a3:
    add hl, sp
    ld b, l
    ld [de], a
    inc b
    db $10
    ld bc, $017d
    ld bc, $bfbf
    ld [de], a
    nop
    inc b
    ld h, e
    ld h, e
    cp a
    cp a
    rst $38
    ldh [$f7], a
    ldh [rNR12], a
    db $10
    inc b
    adc c
    adc c
    cp $fe
    rst $38
    inc bc
    rst $30
    inc bc
    ret nz

    ret nz

    rst $10
    ret z

    and b
    sbc a
    xor d
    sub l
    dec h
    ld e, d
    ld a, [bc]
    ld [hl], l
    dec b
    ld a, d
    xor d
    push de
    ld hl, sp-$08
    db $f4
    inc b
    ld [$a6f0], sp
    ld e, d
    ld d, h
    xor b
    and l
    ld e, c
    ld d, l
    xor c
    and l
    ld e, e
    add l
    ld a, [$95aa]
    add l
    cp d
    xor d
    sub l
    and l
    sbc d
    adc d
    or l
    add c
    cp [hl]
    rst $00
    ret z

    ld d, l
    xor c
    and d
    ld e, h
    ld d, c
    xor [hl]
    xor b
    ld d, a
    ld d, l
    xor d
    xor d
    ld d, l
    ld b, b
    cp a
    sbc a
    ld h, b
    add c
    ret


    ret z

    set 4, a
    jr jr_030_510b

jr_030_510b:
    rst $38
    ld [de], a
    ld l, b
    stop
    rst $38
    cp $01
    add e
    add e
    ld a, h
    ld a, l
    or e
    ld c, h
    ld [de], a
    db $76
    ld d, $e3
    add sp, $1d
    call c, Call_000_3ec2
    add hl, bc
    push af
    ld d, l
    xor e
    xor c
    ld d, a
    dec b
    ld sp, hl
    ld bc, $04f9
    ei
    rst $38
    rst $38
    rst $38
    add b
    ld [de], a
    and h
    inc d
    add b
    rst $38
    nop
    ld [de], a
    inc c
    nop
    ld bc, $b412
    inc d
    ld bc, $a4ff
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
    add b
    rst $38
    cp a
    rst $38
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
    ld bc, $fdff
    rst $38
    ld e, $c1
    inc d
    inc bc
    inc e
    jp $8000


    ld [de], a
    ld [$4b04], sp
    dec hl
    inc e
    ld e, h
    jr nz, jr_030_519f

    ret nz

    cp $12
    jr jr_030_517b

    and l
    sbc d
    ld c, d
    dec [hl]

jr_030_517b:
    sub l
    ld l, d
    ld a, [hl+]
    push de
    ld [de], a
    ld l, b
    db $10
    ld bc, $f8fe
    rlca
    rra
    ret nz

    rra
    nop
    rra
    ret nz

    rra
    add b
    ld a, a
    ld h, b
    cp a
    and b
    rst $38
    ldh [$fe], a
    pop hl
    rst $38
    inc bc
    cp $02
    db $fc
    ld bc, $02fe
    di

jr_030_519f:
    rrca
    ld [bc], a
    ld [bc], a
    ld [hl], e
    dec bc
    ld h, a
    rla
    and l
    sbc d
    jp z, Jump_030_4575

    ld a, [$3212]
    jr nz, jr_030_521a

    ld d, l
    and l
    sbc d
    xor d
    push de
    ld [de], a
    sbc b
    db $10
    ld d, l
    xor e
    and l
    ld e, c
    ld d, c
    xor l
    and c
    ld e, l
    ld d, l
    xor c
    and l
    ld e, c
    add $c6
    and d
    and d
    add e
    adc e
    add c
    adc l
    pop bc
    push bc
    pop hl
    push hl
    ei
    ld a, e
    rst $38
    rra
    ld h, b
    ld l, e
    reti


    reti


    inc b
    call nz, $c707
    rlca
    ld h, a
    ld [bc], a
    ld h, d
    ld [bc], a
    ld [hl-], a
    rst $38
    rst $38
    db $10
    rst $10
    ld a, [c]
    ld a, [c]
    inc hl
    inc hl
    ld sp, $1035
    ld d, [hl]
    db $10
    jp nc, $be3c

    rst $38
    rst $38
    jr nz, @+$2d

    dec d
    ld d, l
    inc b
    ld h, h
    dec c
    ld l, l
    adc l
    cp l
    add [hl]
    or [hl]
    ld [de], a
    ld l, h
    jr nz, jr_030_524b

    rst $30
    rst $00
    rst $00
    adc c
    adc c
    adc e
    xor a
    add e
    cp e
    jp $cff3


    xor $f7
    ldh a, [rNR12]
    and d
    ld d, $12
    call z, $a410

jr_030_521a:
    db $e4
    ld [de], a
    or d
    ld d, $12
    call c, Call_030_4510
    ld b, a
    xor d
    ld [$efaa], a
    xor d
    db $eb
    xor d
    cp $aa
    ld [$d595], a
    ld [de], a
    call z, $9510
    sub a
    sub l
    sub a
    sub l
    rst $38
    sub l
    rst $38
    sub l
    sub a
    ld l, c
    ld l, e
    ld [de], a
    call c, Call_000_1210
    and b
    rst $38
    ld c, l
    ld [de], a
    ccf
    ccf
    ld c, l
    ld [de], a
    sbc a

jr_030_524b:
    ccf
    ld c, l
    inc b
    ei
    rst $38
    nop
    ld [de], a
    ld [bc], a
    ld b, b
    add b
    ld a, a
    cp $01
    ld [de], a
    ld a, [bc]
    ld b, b
    ld [de], a
    ld a, h
    db $10
    ld [de], a
    inc c
    ld b, d
    ld [de], a
    ld [bc], a
    ld b, d
    ld [de], a
    jr jr_030_52ab

    db $10
    rst $28
    ld [de], a
    ld a, [bc]
    ld c, d
    db $10
    rst $28
    ld [de], a
    ld [bc], a
    ld b, e
    rst $08
    add a
    ret c

    sbc [hl]
    sbc $98
    ret c

    ld [de], a
    ld b, b
    ld b, h
    ld b, $fc
    cp $04
    xor [hl]
    xor h
    ld b, $04
    ld [de], a
    ld d, b
    ld b, h
    and h
    db $fc
    and h
    db $e4
    and h
    db $fc
    ld [de], a
    add $14
    rst $38
    rst $38
    ld d, l

Jump_030_5292:
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
    ld bc, $12ff
    ld a, $01
    ld [de], a
    add d
    ld c, a
    ld c, l
    ld [de], a
    db $e3
    rst $38
    dec bc
    ld e, h

jr_030_52ab:
    nop
    di
    nop
    ld [$2707], sp
    rrca
    ld l, a
    sbc a
    rst $18
    ccf
    ccf
    ccf
    cp a
    nop
    ld [hl-], a
    nop
    ret nz

    nop
    dec de
    ldh [$e4], a
    pop af
    push af
    ld hl, sp-$06
    db $fd
    rst $38
    db $fc
    db $fc
    ld a, a
    rst $38
    ld [de], a
    jr nz, jr_030_531e

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
    ld a, [$0002]
    rst $38
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
    call c, $ff00
    rst $20
    add sp, -$0d
    ld [hl], h
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
    ld l, $cd
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

jr_030_531e:
    inc a
    dec a
    nop
    add e
    dec bc
    db $f4
    rst $30
    ld [$f00f], sp
    ld [de], a
    and c
    ld c, a
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
    ld [bc], a
    inc bc
    db $10
    db $10
    ld b, $07
    ld b, $07
    inc b
    dec b
    inc bc
    ld [bc], a
    ld b, $10
    db $10
    inc bc
    db $f4
    ld hl, sp+$08
    ld [$2b2a], sp
    inc bc
    ld [hl+], a
    ld [bc], a
    nop
    ld bc, $1211
    inc bc
    ld [hl+], a
    nop
    ld [$0308], sp
    db $f4
    ld hl, sp+$09
    add hl, bc
    inc e
    dec e
    inc bc
    ld b, d
    ld [bc], a
    ld [bc], a
    ld bc, $2221
    inc bc
    ld b, d
    nop
    add hl, bc
    add hl, bc
    inc bc
    db $f4
    ld hl, sp+$0a
    ld a, [bc]
    inc l
    dec l
    inc bc
    ld h, d
    ld [bc], a
    ld [bc], a
    ld bc, $1f1e
    inc bc
    ld h, d
    nop
    ld a, [bc]
    ld a, [bc]
    inc bc
    db $f4
    ld hl, sp+$0b
    dec bc
    ld b, [hl]
    ld b, a
    inc bc
    add d
    ld [bc], a
    ld b, b
    ld b, c
    ld b, b
    ld b, c
    inc bc
    add d
    nop
    dec bc
    dec bc
    inc bc
    inc d
    ld a, [bc]
    ld b, d
    ld b, e
    inc bc
    and d
    ld a, [bc]
    inc bc
    ld [hl-], a
    inc c
    ld b, b
    ld b, c
    ld a, [de]
    dec de
    inc bc
    call nz, Call_000_0300
    jp nz, Jump_030_4002

    ld b, c
    inc bc
    ld d, d
    inc c
    ld b, d
    ld b, e
    inc bc
    ld [hl+], a
    ld [bc], a
    inc bc
    ld [c], a
    ld [bc], a
    ld b, d
    ld b, e
    inc bc
    ld [hl], d
    inc c
    ld b, b
    ld b, c
    inc bc
    ld b, d
    ld [bc], a
    inc bc
    ld [bc], a
    ld [de], a
    ld b, b
    ld b, c
    inc bc
    sub d
    ld c, $03
    ld h, d
    ld [bc], a
    inc bc
    ld [hl+], a
    ld [de], a
    inc bc
    or b
    rrca
    ld bc, $8403
    inc b
    inc bc
    add [hl]
    ld [bc], a
    inc bc
    jp nc, $030e

    and d
    ld a, [bc]
    inc bc
    ld a, [c]
    ld c, $03
    add d
    ld a, [de]
    inc bc
    sub d
    ld a, [bc]
    dec bc
    dec bc
    inc bc
    and d
    inc c
    inc bc
    sub d
    ld a, [bc]
    db $10
    db $10
    ld b, b
    ld b, c
    inc c
    inc b
    inc b
    dec b
    ld b, $03
    add $12
    dec c
    ld b, b
    ld b, c
    inc bc
    ld [de], a
    ld a, [bc]
    rrca
    ld c, $42
    ld b, e
    ld c, $00
    nop
    ld bc, $0302
    and $12
    rrca
    ld b, d
    ld b, e
    rrca
    ld c, $03
    and b
    ld hl, sp+$00
    ld [bc], a
    ld de, $1010
    ld b, h
    ld b, l
    ld b, $07
    inc b
    dec b
    ld de, $0404
    ld b, h
    ld b, l
    db $10
    db $10
    ld de, $f8f4
    ld [$4408], sp
    ld b, l
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0302
    nop
    ld [bc], a
    inc bc
    inc bc
    nop
    ld bc, $4544
    ld [$1108], sp
    db $f4
    ld hl, sp+$09
    add hl, bc
    ld de, $0622
    ld d, b
    ld d, c
    ld de, $002e
    add hl, bc
    add hl, bc
    ld de, $f8f4
    ld a, [bc]
    ld a, [bc]
    ld b, h
    ld b, l
    inc de
    inc d
    ld de, $0126
    ld bc, $5352
    inc de
    inc d
    ld b, h
    ld b, l
    ld a, [bc]
    ld a, [bc]
    ld de, $f8f4
    dec bc
    dec bc
    ld b, h
    ld b, l
    inc hl
    inc h
    ld b, b
    ld b, c
    ld de, $0286
    inc hl
    inc h
    ld b, h
    ld b, l
    dec bc
    dec bc
    ld de, $0c14
    inc hl
    inc h
    ld b, d
    ld b, e
    ld de, $02a6
    ld de, $008e
    ld de, $0c32
    ld b, b
    ld b, c
    dec d
    ld d, $17
    jr jr_030_54b1

    rla
    rla
    inc d
    ld b, b
    ld b, c
    dec d
    inc h
    ld b, b
    ld b, c
    ld de, $0c52
    ld b, d
    ld b, e
    dec h
    ld h, $28
    ld h, $27
    ld h, $27
    add hl, hl

jr_030_54af:
    ld b, d
    ld b, e

jr_030_54b1:
    dec h
    add hl, hl
    ld b, d
    ld b, e
    ld de, $0c72
    ld de, $0486
    ld de, $0486
    ld de, $0c92
    ld de, $04a6
    ld de, $04a6
    ld de, $0eb2
    ld de, $1a02
    ld de, $0ed2
    ld de, $1a22
    ld de, $0ff2
    dec de
    dec bc
    dec bc
    ld de, $1c22
    ld de, $0a92
    db $10
    db $10
    ld de, $0306
    dec c
    ld b, b
    ld b, c
    inc c
    ld de, $0106
    ld de, $0a12
    rrca
    ld c, $00
    ld de, $0167
    ld [bc], a
    rrca
    ld b, d
    ld b, e
    ld de, $12e1
    rrca
    ld c, $11
    and b
    ld hl, sp+$00
    ld [$0012], sp
    rst $00
    nop
    ld [$ff00], sp
    nop
    add h
    ld h, b
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

Call_030_5524:
    ld [hl], b
    nop
    adc a
    nop
    ei
    nop
    jr nz, jr_030_54af

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
    ld [de], a
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

jr_030_555e:
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
    jr jr_030_555e

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
    jr c, jr_030_55df

    jr c, jr_030_55df

    ld a, c
    dec b
    ld a, c
    dec b
    jr z, jr_030_55f5

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
    jr c, jr_030_55f9

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
    ld c, $00
    ld a, a
    ld [de], a
    ld e, h
    nop
    ld bc, $0301
    call $01ff
    db $fd
    inc bc
    pop bc
    ccf
    ld bc, $01ff
    ld [de], a
    ld l, l

jr_030_55df:
    nop
    ld e, a
    nop
    ld a, b
    nop
    ld h, c
    ld [de], a
    ld d, $04
    ld e, [hl]
    ld e, [hl]
    ld bc, $01f9
    add a
    ld bc, $01f9
    ld hl, $2812
    inc b

jr_030_55f5:
    ld bc, $0101
    ld a, l

jr_030_55f9:
    add hl, sp
    ld b, l
    ld [de], a
    inc b
    db $10
    ld bc, $017d
    ld bc, $bfbf
    ld [de], a
    nop
    inc b
    ld h, e
    ld h, e
    cp a
    cp a
    rst $38
    ldh [$f7], a
    ldh [rNR12], a
    db $10
    inc b
    adc c
    adc c
    cp $fe
    rst $38
    inc bc
    rst $30
    inc bc
    ret nz

    ret nz

    rst $10
    ret z

    and b
    sbc a
    xor d
    sub l
    dec h
    ld e, d
    ld a, [bc]
    ld [hl], l
    dec b
    ld a, d
    xor d
    push de
    ld hl, sp-$08
    db $f4
    inc b
    ld [$a6f0], sp
    ld e, d
    ld d, h
    xor b
    and l
    ld e, c
    ld d, l
    xor c
    and l
    ld e, e
    add l
    ld a, [$95aa]
    add l
    cp d
    xor d
    sub l
    and l
    sbc d
    adc d
    or l
    add c
    cp [hl]
    rst $00
    ret z

    ld d, l
    xor c
    and d
    ld e, h
    ld d, c
    xor [hl]
    xor b
    ld d, a
    ld d, l
    xor d
    xor d
    ld d, l
    ld b, b
    cp a
    sbc a
    ld h, b
    add c
    ret


    ret z

    set 4, a
    jr jr_030_5661

jr_030_5661:
    rst $38
    ld [de], a
    ld l, b
    stop
    rst $38
    cp $01
    add e
    add e
    ld a, h
    ld a, l
    or e
    ld c, h
    ld [de], a
    db $76
    ld d, $e3
    add sp, $1d
    call c, Call_000_3ec2
    add hl, bc
    push af
    ld d, l
    xor e
    xor c
    ld d, a
    dec b
    ld sp, hl
    ld bc, $04f9
    ei
    rst $38
    rst $38
    rst $38
    add b
    ld [de], a
    and h
    inc d
    add b
    rst $38
    nop
    ld [de], a
    inc c
    nop
    ld bc, $b412
    inc d
    ld bc, $a4ff
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
    add b
    rst $38
    cp a
    rst $38
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
    ld bc, $fdff
    rst $38
    ld e, $c1
    inc d
    inc bc
    inc e
    jp $8000


    ld [de], a
    ld [$4b04], sp
    dec hl
    inc e
    ld e, h
    jr nz, jr_030_56f5

    ret nz

    cp $12
    jr jr_030_56d1

    and l
    sbc d
    ld c, d
    dec [hl]

jr_030_56d1:
    sub l
    ld l, d
    ld a, [hl+]
    push de
    ld [de], a
    ld l, b
    db $10
    ld bc, $f8fe
    rlca
    rra
    ret nz

    rra
    nop
    rra
    ret nz

    rra
    add b
    ld a, a
    ld h, b
    cp a
    and b
    rst $38
    ldh [$fe], a
    pop hl
    rst $38
    inc bc
    cp $02
    db $fc
    ld bc, $02fe
    di

jr_030_56f5:
    rrca
    ld [bc], a
    ld [bc], a
    ld [hl], e
    dec bc
    ld h, a
    rla
    and l
    sbc d
    jp z, Jump_030_4575

    ld a, [$3212]
    jr nz, jr_030_5770

    ld d, l
    and l
    sbc d
    xor d
    push de
    ld [de], a
    sbc b
    db $10
    ld d, l
    xor e
    and l
    ld e, c
    ld d, c
    xor l
    and c
    ld e, l
    ld d, l
    xor c
    and l
    ld e, c
    add $c6
    and d
    and d
    add e
    adc e
    add c
    adc l
    pop bc
    push bc
    pop hl
    push hl
    ei
    ld a, e
    rst $38
    rra
    ld h, b
    ld l, e
    reti


    reti


    inc b
    call nz, $c707
    rlca
    ld h, a
    ld [bc], a
    ld h, d
    ld [bc], a
    ld [hl-], a
    rst $38
    rst $38
    db $10
    rst $10
    ld a, [c]
    ld a, [c]
    inc hl
    inc hl
    ld sp, $1035
    ld d, [hl]
    db $10
    jp nc, $be3c

    rst $38
    rst $38
    jr nz, @+$2d

    dec d
    ld d, l
    inc b
    ld h, h
    dec c
    ld l, l
    adc l
    cp l
    add [hl]
    or [hl]

Jump_030_5756:
    ld [de], a
    ld l, h
    jr nz, jr_030_57a1

    rst $30
    rst $00
    rst $00
    adc c
    adc c
    adc e
    xor a
    add e
    cp e
    jp $cff3


    xor $f7
    ldh a, [rNR12]
    and d
    ld d, $12
    call z, $a410

jr_030_5770:
    db $e4
    ld [de], a
    or d
    ld d, $12
    call c, Call_030_4510
    ld b, a
    xor d
    ld [$efaa], a
    xor d
    db $eb
    xor d
    cp $aa
    ld [$d595], a
    ld [de], a
    call z, $9510
    sub a
    sub l
    sub a
    sub l
    rst $38
    sub l
    rst $38
    sub l
    sub a
    ld l, c
    ld l, e
    ld [de], a
    call c, Call_000_1210
    and b
    rst $38
    ld c, l
    ld [de], a
    ccf
    ccf
    ld c, l
    ld [de], a
    sbc a

jr_030_57a1:
    ccf
    ld c, l
    inc b
    ei
    rst $38
    nop
    ld [de], a
    ld [bc], a
    ld b, b
    add b
    ld a, a
    cp $01
    ld [de], a
    ld a, [bc]
    ld b, b
    ld [de], a
    ld a, h
    db $10
    ld [de], a
    inc c
    ld b, d
    ld [de], a
    ld [bc], a
    ld b, d
    ld [de], a
    jr jr_030_5801

    db $10
    rst $28
    ld [de], a
    ld a, [bc]
    ld c, d
    db $10
    rst $28
    ld [de], a
    ld [bc], a
    ld b, e
    rst $08
    add a
    ret c

    sbc [hl]
    sbc $98
    ret c

    ld [de], a
    ld b, b
    ld b, h
    ld b, $fc
    cp $04
    xor [hl]
    xor h
    ld b, $04
    ld [de], a
    ld d, b
    ld b, h
    and h
    db $fc
    and h
    db $e4
    and h
    db $fc
    ld [de], a
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
    ld bc, $12ff
    ld a, $01
    ld [de], a
    add d
    ld c, a
    ld c, l
    ld [de], a
    db $e3
    rst $38
    dec bc
    ld e, h

jr_030_5801:
    nop
    di
    nop
    ld [$2707], sp
    rrca
    ld l, a
    sbc a
    rst $18
    ccf
    ccf
    ccf
    cp a
    nop
    ld [hl-], a
    nop
    ret nz

    nop
    dec de
    ldh [$e4], a
    pop af
    push af
    ld hl, sp-$06
    db $fd
    rst $38
    db $fc
    db $fc
    ld a, a
    rst $38
    ld [de], a
    jr nz, jr_030_5874

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
    ld a, [$0002]
    rst $38
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
    call c, $ff00
    rst $20
    add sp, -$0d
    ld [hl], h
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
    ld l, $cd
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

jr_030_5874:
    inc a
    dec a
    nop
    add e
    dec bc
    db $f4
    rst $30
    ld [$f00f], sp
    ld [de], a
    and c
    ld c, a
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
    ld [bc], a
    ld de, $1010
    ld b, $07
    ld b, $07
    inc b
    dec b
    ld de, $0604
    db $10
    db $10
    ld de, $f8f4
    ld [$2a08], sp
    dec hl
    ld de, $0a22
    ld [$1108], sp
    db $f4
    ld hl, sp+$09
    add hl, bc
    inc e
    dec e
    ld de, $0a42
    add hl, bc
    add hl, bc
    ld de, $f8f4
    ld a, [bc]
    ld a, [bc]
    inc l
    dec l
    ld de, $0a62
    ld a, [bc]
    ld a, [bc]
    ld de, $f8f4
    dec bc
    dec bc
    ld b, [hl]
    ld b, a
    ld de, $0a82
    dec bc
    dec bc
    ld de, $0a14
    ld b, d
    ld b, e
    ld de, $0aa2
    ld de, $0c32
    ld a, [de]
    dec de
    ld de, $02c2
    ld b, b
    ld b, c
    ld b, b
    ld b, c
    ld de, $00c2
    ld de, $0c52
    ld de, $0422
    ld de, $00a2
    ld de, $0022
    ld de, $0c72
    ld de, $0442
    ld de, $00ca
    ld de, $0042
    ld de, $0c92
    ld de, $0462
    ld de, $00a2
    ld de, $0062
    ld de, $0c32
    ld de, $0482
    ld de, $00ca
    ld de, $0082
    ld de, $0c52
    ld de, $0ca2
    ld de, $0c72
    ld d, h
    ld d, l
    ld de, $00ca
    ld de, $1684
    ld de, $0a92
    dec bc
    dec bc
    ld d, [hl]
    ld d, a
    ld de, $0aa2
    ld de, $0a92
    db $10
    db $10
    ld de, $0306
    inc b
    ld b, $0d
    ld b, b
    ld b, c
    inc c
    inc b
    rlca
    inc b
    ld de, $0a12
    rrca
    ld c, $00
    ld bc, $0302
    nop
    ld bc, $0002
    ld [bc], a
    rrca
    ld b, d
    ld b, e
    ld c, $00
    inc bc
    ld de, $10df
    ld de, $17f4
    nop
    ld [$000a], sp
    rst $00
    nop
    ld [$ff00], sp
    nop
    add h
    ld h, b
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
    jr nz, @-$7b

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
    ld a, [bc]
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

jr_030_59c5:
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
    jr jr_030_59c5

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
    jr c, jr_030_5a46

    jr c, jr_030_5a46

    ld a, c
    dec b
    ld a, c
    dec b
    jr z, jr_030_5a5c

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
    jr c, jr_030_5a60

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
    ld c, $00
    ld a, a
    ld a, [bc]
    ld e, h
    nop
    ld bc, $0301
    call $01ff
    db $fd
    inc bc
    pop bc
    ccf
    ld bc, $01ff
    ld a, [bc]
    ld l, l

jr_030_5a46:
    nop
    ld e, a
    nop
    ld a, b
    nop
    ld h, c
    ld a, [bc]
    ld d, $04
    ld e, [hl]
    ld e, [hl]
    ld bc, $01f9
    add a
    ld bc, $01f9

jr_030_5a58:
    ld hl, $280a
    inc b

jr_030_5a5c:
    ld bc, $0101
    ld a, l

jr_030_5a60:
    add hl, sp
    ld b, l
    ld a, [bc]
    inc b
    db $10
    ld bc, $017d
    ld bc, $bfbf
    ld a, [bc]
    inc c
    nop
    ld a, [bc]
    db $10
    jr jr_030_5a7e

    db $fc
    or e
    ld a, h
    ld c, h
    db $d3
    sub c
    xor $98
    and a
    rst $08
    ret nc

    or b

jr_030_5a7e:
    or a
    add a
    and a
    jr nc, jr_030_5ac2

    db $ec
    rra
    ld a, [de]
    rst $20
    rst $00
    add hl, sp
    ld h, l
    sbc e
    adc e
    ld [hl], a
    add hl, bc
    jp hl


    ld hl, $9235
    cp e
    ld [hl], b
    ld a, c
    ld e, h
    ld e, l
    ld c, e
    db $eb
    ld c, b
    add sp, $48
    ld l, b
    ld c, b
    ld l, e
    jr nc, jr_030_5a58

    ld bc, $2695
    or [hl]
    ld a, [hl-]
    cp d
    jp nc, $12d7

    rla
    ld [de], a
    ld d, $12
    or $0c
    db $ed
    ld a, [bc]
    and b
    rst $38
    ld c, l
    ld a, [bc]
    cp a
    rra
    ld c, l
    ld a, [bc]
    rra
    cpl
    ld c, l
    ld a, [bc]
    ld a, a
    cpl
    ld c, l
    ld a, [bc]

jr_030_5ac2:
    rst $18
    cpl
    ld c, l
    ld a, [bc]
    ccf
    ccf
    ld c, l
    ld a, [bc]
    sbc a
    ccf
    ld c, l
    inc b
    ei
    rst $38
    nop
    ld a, [bc]
    ld [bc], a
    ld b, b
    add b
    ld a, a
    cp $01
    ld a, [bc]
    ld a, [bc]
    ld b, b
    nop
    rst $38
    ld a, [bc]
    ld a, [bc]
    ld b, h
    ld a, [bc]
    ld [bc], a
    ld b, d
    ld a, [bc]
    jr jr_030_5b2a

    db $10
    rst $28
    ld a, [bc]
    ld a, [bc]
    ld c, d
    db $10
    rst $28

jr_030_5aed:
    ld a, [bc]
    ld [bc], a
    ld b, d
    ld [$0af7], sp
    ld [bc], a
    ld b, d
    add a
    ld a, a
    ld a, [$ed1d]
    ld [hl-], a
    db $d3
    inc d
    ld a, [bc]
    db $10
    ld b, h
    ldh [rIE], a
    rst $18
    jr c, jr_030_5b3c

    call z, Call_000_28cb
    ld b, [hl]
    sub [hl]
    ldh [rNR51], a
    db $f4
    ld sp, $3faf
    jr jr_030_5aed

    add $21
    ld a, [bc]
    ld a, [bc]
    ld b, b
    ld h, b
    ld [hl], e
    ld b, $95
    ld c, $ad
    db $f4
    db $fd
    ld e, b
    sbc e
    rst $20
    ld a, [bc]
    dec de
    ld b, d
    ld a, [bc]
    add b
    ld c, a
    ld c, l
    ld a, [bc]

jr_030_5b2a:
    ld [c], a
    rst $38
    inc c
    add b
    sbc b
    rlca
    daa
    rra
    ld e, a
    ccf
    cp a
    ccf
    cp a
    ld a, a
    ld a, [bc]
    ld a, [bc]
    ld d, c
    inc bc

jr_030_5b3c:
    dec de
    ldh [$e4], a
    ld hl, sp-$06
    db $fc
    db $fd
    db $fc
    db $fd
    cp $0a
    ld a, [de]
    ld d, c
    ld a, [bc]
    ld a, [bc]
    ld d, d
    ld l, d
    ld l, d
    ld d, l
    ld d, l
    ld a, d
    ld a, d
    ld h, b
    ld h, b
    ld e, a
    ld b, b
    ld a, [bc]
    ld a, [de]
    ld d, d
    xor [hl]
    xor [hl]
    ld d, [hl]
    ld d, [hl]
    ld l, $2e
    ld b, $06
    ld a, [$3002]
    rst $08
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
    call c, $f30c
    and $e9
    di
    ld [hl], h
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
    ld a, [bc]
    and b
    ld c, a
    ld c, l
    ld a, [bc]
    rst $18
    ld e, a
    ld c, l
    ld a, [bc]
    ccf
    ld l, a
    ld c, l
    ld a, [bc]
    sbc a
    ld l, a
    ld c, l
    ld a, [bc]
    rst $38
    ld l, a
    ld c, l
    ld a, [bc]
    ld e, a
    ld a, a
    ld c, l
    ld a, [bc]
    cp a
    ld a, a
    dec l
    nop
    ld [bc], a
    inc c
    ld de, $0410
    dec b
    ld b, $07
    inc b
    dec b
    db $10
    ld de, $090c
    ld b, $ff
    inc c
    inc d
    rlca
    ld de, $0008
    ld bc, $0302
    nop
    ld bc, $0c08
    add hl, bc
    rrca
    dec b
    add hl, bc
    inc c
    ld [hl+], a
    nop
    ld d, b
    ld d, c
    add hl, bc
    inc c
    add hl, bc
    rrca
    dec b
    ld a, [bc]
    inc c
    ld [hl+], a
    nop
    ld d, d
    ld d, e
    inc c
    jr z, jr_030_5c03

    ld b, $0b
    ld b, b
    ld b, c
    inc c
    add d
    nop
    inc c
    ld c, b
    rrca
    ld b, $08
    ld b, d
    ld b, e
    inc c

jr_030_5c03:
    and d
    nop
    inc c
    jr z, jr_030_5c17

    rlca
    ld b, b
    ld b, c
    ld b, h
    ld b, l
    inc c
    add [hl]
    rrca
    ld [$420a], sp
    ld b, e
    ld b, [hl]
    ld b, a
    ld b, d

jr_030_5c17:
    ld b, e
    ld a, [bc]
    inc c
    ld l, c
    rrca
    ld [$1312], sp
    ld b, b
    ld b, c
    dec bc
    inc c
    adc c
    rrca
    ld [$1514], sp
    inc c
    and [hl]
    rrca
    ld c, e
    inc c
    add d
    nop
    inc c
    ld [$061f], sp
    dec bc
    inc c
    and d
    ld [bc], a
    inc c
    ld [$061f], sp
    inc c
    ld bc, $0d00
    ld b, b
    ld b, c
    inc c
    ld [$060f], sp
    ld c, $00
    ld bc, $0f02
    ld b, d
    ld b, e
    ld c, $0c
    add hl, bc
    rrca
    inc b
    nop
    ld [bc], a
    inc c
    ld de, $0410
    dec b
    ld b, $07
    inc b
    dec b
    db $10
    ld de, $090c
    ld b, $ff
    inc c
    inc d
    rlca
    ld de, $0008
    ld bc, $0302
    nop
    ld bc, $0c08
    add hl, bc
    rrca
    dec b
    add hl, bc
    inc c
    ld [hl+], a
    nop
    ld d, b
    ld d, c
    add hl, bc
    inc c
    add hl, bc
    rrca
    dec b
    ld a, [bc]
    inc c
    ld [hl+], a
    nop
    ld d, d
    ld d, e
    inc c
    jr z, jr_030_5c95

    ld b, $0b
    ld b, b
    ld b, c
    inc c
    add d
    nop
    inc c
    ld c, b
    rrca
    ld b, $08
    ld b, d
    ld b, e
    inc c

jr_030_5c95:
    and d
    nop
    inc c
    jr z, jr_030_5ca9

    rlca
    ld b, b
    ld b, c
    ld b, h
    ld b, l
    inc c
    add [hl]
    rrca
    ld [$420a], sp
    ld b, e
    ld b, [hl]
    ld b, a
    ld b, d

jr_030_5ca9:
    ld b, e
    ld a, [bc]
    inc c
    ld l, c
    rrca
    ld [$1312], sp
    ld b, b
    ld b, c
    dec bc
    inc c
    adc c
    rrca
    ld [$1514], sp
    inc c
    and [hl]
    rrca
    ld c, c
    ld d, h
    ld d, l
    inc c
    add d
    nop
    inc c
    ld [$061f], sp
    dec bc
    ld d, [hl]
    ld d, a
    inc c
    and d
    nop
    inc c
    ld [$061f], sp
    inc c
    ld bc, $0d00
    ld b, b
    ld b, c
    inc c
    ld [$060f], sp
    ld c, $00
    ld bc, $0f02
    ld b, d
    ld b, e
    ld c, $0c
    add hl, bc
    rrca
    inc b
    nop
    ld [$7f15], sp
    ld a, a
    adc b
    rst $20
    adc b
    rst $20
    ret nc

    ret nc

    cp $81
    ret nz

    cp a
    ret nz

jr_030_5cf7:
    cp a
    ret nz

    ret nz

    rst $38
    rst $38
    ld [$18e7], sp
    rst $30
    jr c, jr_030_5d3a

    ld a, [hl]
    ld bc, $3f40
    ld b, b
    ccf
    add c
    add c
    rst $38
    dec d
    jr nz, @+$0d

    cp $fe
    add hl, bc
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
    ld [hl], a
    sbc c
    inc hl
    call $ef01
    jp Jump_000_3fc3


    pop bc
    inc bc
    db $fd
    ld bc, $83ff
    add e
    inc b
    add a
    inc b
    add h
    db $fc
    db $fc
    rst $38
    rst $38
    jr nz, jr_030_5cf7

    and b
    or b

jr_030_5d3a:
    cp a
    cp a
    rst $38
    rst $38
    ld de, $11df
    add hl, de
    ld de, $1519
    ld d, [hl]
    nop
    ccf
    ccf
    ldh a, [$fe]
    nop
    ld hl, sp-$01
    rst $38
    rst $38
    add b
    dec d
    ld [hl], d
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
    ld bc, $8215
    ld [bc], a
    ld bc, $fdff
    rst $38
    ld b, l
    ld b, a
    xor d
    ld [$efaa], a
    xor d
    db $eb
    xor d
    cp $aa
    ld [$d595], a
    dec d
    ld a, d
    nop
    sub l
    sub a
    sub l
    sub a
    sub l
    rst $38
    sub l
    rst $38
    sub l
    sub a
    ld l, c
    ld l, e
    dec d
    adc d
    nop
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
    jp z, Jump_030_5292

    nop
    nop
    ld a, a
    nop
    ld b, b
    jr nz, @+$5b

    ld b, $46
    add hl, de
    dec d
    sub $02
    nop
    nop
    rst $38
    nop
    nop
    nop
    sbc c
    ld h, [hl]
    ld h, [hl]
    sbc c
    dec d
    and $02
    nop
    nop
    cp $00
    inc bc
    dec b
    sbc e
    ld h, c
    ld h, e
    sbc l
    sbc e
    ld h, l
    dec d
    ld hl, sp+$00
    rst $08
    and b
    dec d
    ld [bc], a
    nop
    pop bc
    pop bc
    ld hl, sp-$7a
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    add b
    add b
    rst $08
    jr nz, jr_030_5de8

    rst $20
    ld [$90e7], sp
    sub b
    cp $01
    add b

jr_030_5de8:
    ld a, a
    add b
    ld a, a
    nop
    nop
    rst $18
    jr nc, @+$17

    ld [de], a
    db $10
    inc bc
    inc bc
    ld a, c
    rlca
    ld b, b
    ld a, $40
    ld a, $00
    nop
    rst $08
    ld hl, $3215
    nop
    ld de, $1511
    jr c, @+$04

    ld bc, $de01
    or c
    adc b
    rst $20
    add b
    rst $28
    dec d
    ld b, $12
    add b
    cp $c3
    jp $8f8f


    sub c
    sbc a
    db $10
    jr jr_030_5e31

    ld [hl], c
    ld bc, $fcc0
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

jr_030_5e31:
    rst $38
    rst $38
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
    dec d
    ld a, d
    nop
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
    dec d
    adc d
    nop
    adc c
    xor l
    add d
    and $82
    and [hl]
    adc c
    cp l
    ld bc, $4831
    ld e, d
    ld c, b
    sbc $28
    cp d
    inc de
    rst $18
    ld [hl+], a
    xor $43
    db $db
    add [hl]
    or [hl]
    rlca
    ld [hl], a
    ld c, $ce
    rst $38
    rst $38
    push de
    push de
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
    ld hl, sp+$40
    daa
    ld a, a
    nop
    add b
    rst $38
    ld a, a
    ld a, a
    ld b, b
    ret nz

    ld b, b
    rst $38
    rlca
    or a
    ld [$0088], sp
    rst $38
    rst $38
    nop
    nop
    rst $38
    dec d
    pop hl
    db $10
    dec d
    db $e4
    ld [de], a
    inc bc
    db $fd
    dec d
    adc b
    nop
    cp $fe
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [c], a
    rst $28
    ld [de], a
    inc de
    rst $38
    nop
    ld e, a
    and b
    push af
    ld a, [bc]
    sbc $21
    ld a, c
    add a
    cp e
    ld b, [hl]
    db $ed
    inc d
    or a
    ld b, l
    rst $38
    nop
    rst $08
    cpl
    ld [hl], e
    db $f4
    and a
    sbc a
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    db $f4
    push af
    rst $38
    nop
    rst $30
    ldh a, [$cd]
    inc l
    db $eb
    rst $30
    db $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    cp e
    cp e
    rst $38
    nop
    ld a, [$af05]
    ld d, b
    ei
    inc b
    sbc $a1
    db $fd
    ld b, d
    ld [hl], a
    xor b
    db $ed
    and d
    rst $28
    dec c
    ld d, l
    sub a
    and h
    dec l
    ld b, e
    jp c, $4d41

    and h
    adc b
    and h
    sub d
    jp nz, $9ef5

    cp [hl]
    ld de, $8013
    and b
    ld c, h
    call z, Call_030_76b2
    xor a
    sbc a
    ld h, e
    ld l, h
    rra
    rra
    ld b, l
    ld c, l
    ld bc, $6101
    ld h, l
    sub e
    or d
    ld c, $0d
    push af
    ld sp, hl
    add $36
    ld hl, sp-$08
    rst $30
    or b
    ld [$a5a9], a
    inc h
    ld b, d
    jp $4646


    adc c
    adc l
    add hl, bc
    dec b
    dec bc
    rlca
    and a
    xor b
    adc b
    or h
    add d
    sbc c
    ld b, c
    ld e, d
    ld b, d
    rst $08
    and c
    daa
    sub b
    ld d, e
    ld l, h
    db $ec
    add b
    ld b, b
    ld h, b
    sub b
    jr c, jr_030_5f98

    inc l
    sub e
    ld d, b
    db $ec
    xor c
    jp nc, $ad56

    ld [bc], a
    cp $00
    nop
    nop
    inc bc
    nop
    ld e, $28
    push de
    ld d, $2b
    adc c
    ld d, a
    jr nz, @+$01

    ld b, b
    ld a, [hl]
    dec c
    ld c, l
    ld b, c
    ld b, c
    ld h, c
    and c
    and d
    ld h, d
    ld b, d
    jp $8485


    add hl, bc
    ld a, [bc]
    ld [hl], $37
    add [hl]
    add [hl]
    sbc c
    sbc c
    ld h, c
    pop hl
    and [hl]
    ld h, [hl]
    ld e, b
    cp e
    cp a
    ld b, b
    db $eb
    inc d
    rst $38
    nop
    nop
    ccf
    add b
    add a
    ldh a, [$f0]
    rra
    rra
    ld [de], a
    jp nc, $e222

jr_030_5f98:
    and [hl]
    ld h, [hl]
    db $db
    add hl, sp
    nop
    ld hl, sp+$01
    pop hl
    rrca
    rrca
    ld hl, sp-$08
    ld c, b
    ld c, e
    ld b, h
    ld b, a
    ld h, l
    ld h, [hl]
    db $db
    sbc h
    ld h, c
    ld h, c
    sbc c
    sbc c
    add [hl]
    add a
    ld h, a
    ld h, h
    ld e, $d9
    db $fd
    ld [bc], a
    rst $10
    jr z, jr_030_5fd0

    ld [c], a
    stop
    ld hl, sp+$00
    jp $9f00


    nop
    sbc [hl]
    nop
    jr c, jr_030_5fc8

jr_030_5fc8:
    ld sp, $7700
    nop
    nop
    nop
    ccf
    nop

jr_030_5fd0:
    rst $38
    nop
    ret nz

    nop
    rra
    nop
    ld a, a
    nop
    ldh [rP1], a
    rrca
    nop
    rra
    nop
    add [hl]
    nop
    pop hl
    nop
    ccf
    nop
    add b
    nop
    rst $38
    nop
    ld a, a
    nop
    inc bc
    nop
    adc a
    nop
    ld [hl], e
    nop
    ld sp, hl
    nop
    db $fd
    nop
    ld a, $00
    ld e, $00
    adc [hl]
    nop
    adc $00
    or a
    nop
    or a
    nop
    ld [hl], $00
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld l, [hl]
    dec d
    ld c, d
    ld sp, $0075
    ld [hl], h
    nop
    ld h, h
    nop
    ld l, [hl]
    nop
    rst $28
    nop
    rst $20
    nop
    ldh a, [rP1]
    ccf
    nop
    db $ed
    nop
    db $ed
    nop
    ld e, c
    nop
    inc de

jr_030_6021:
    nop
    rst $30
    nop
    rst $00
    nop
    rrca
    nop
    rst $38
    nop
    inc l
    nop
    xor l
    dec d
    ld [hl], d

jr_030_602f:
    inc sp
    inc l
    dec d
    ld c, d
    jr nc, jr_030_603b

    add $1e
    sbc [hl]
    db $10
    sub b
    inc h

jr_030_603b:
    and l
    ld [hl], c
    ld [hl], a
    ld h, [hl]
    ld a, [hl]
    ld b, h
    ld d, l
    adc b
    cp [hl]
    rra
    rra
    and b
    xor a
    nop
    ld a, a
    rrca
    rst $08
    ld [hl], b
    ld a, d
    nop
    rra
    ld [$40c8], sp
    ld c, a
    add d
    sbc d
    ccf
    ccf
    ld [$00e8], sp
    ccf
    ld a, a
    dec d
    dec de
    jr nc, @+$80

    nop
    inc bc
    nop
    adc c
    ld a, b
    ld a, c
    inc c
    ld c, h
    inc c
    db $fd
    add h
    cp h
    ret nz

    ret c

    inc b
    inc e
    jr nz, jr_030_60db

    jr z, jr_030_602f

    jr z, jr_030_6021

    ld c, b
    ld c, d
    ld d, c
    ld [hl], l
    ld d, c
    ld e, l
    ld d, c
    ld d, l
    ld d, c
    ld d, l
    ld c, c
    ld c, a
    ld [hl+], a
    xor d
    ld d, $de
    inc de
    rst $18
    ld bc, $09c5
    ld l, l
    dec de
    ld a, a
    ld de, $905d
    ret c

    ld [de], a
    ld e, d
    ld [de], a
    cp e
    ld [de], a
    cp e
    ld [bc], a
    cpl
    ld c, b
    ld l, h
    adc d
    xor [hl]
    ld [$116c], sp
    ld [hl], l
    ld b, h
    ld d, l
    ld l, b
    ld a, e
    ret z

    ei
    add b
    and e
    sub b
    or [hl]
    ret c

    cp $88
    cp d
    add hl, bc
    dec de
    nop
    ld h, [hl]
    nop
    ld h, h
    nop
    ld h, l
    nop
    ld h, l
    nop
    dec [hl]
    nop
    or [hl]
    dec d
    ld a, [bc]
    ld b, c
    ld a, a
    nop
    ld hl, sp+$00
    di
    nop
    rst $20
    nop
    rst $28
    nop
    xor $00
    db $ec
    nop
    ld h, l
    nop
    pop af
    nop
    ld a, h
    nop
    adc [hl]
    nop
    and $00
    ld [hl-], a

jr_030_60db:
    nop
    ld e, e
    nop
    rlc b
    jp hl


    nop
    xor $00
    xor $00
    and $15
    ld b, [hl]
    ld sp, $4915
    jr nc, jr_030_615a

    nop
    ld h, a
    nop
    ld h, a
    nop
    ld [hl], e
    nop
    ld a, b
    nop
    ccf
    nop
    ccf
    nop
    sbc h
    nop
    add b
    nop
    rlca
    nop
    ldh a, [rP1]
    sbc a
    nop
    ld c, a
    nop
    ldh [rP1], a
    rst $38
    nop
    rra
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld bc, $ff00
    nop
    ld [bc], a
    nop
    ld hl, sp+$00
    rst $38
    nop
    add e
    nop
    ld [hl], b
    nop
    adc $00
    adc $00
    sbc [hl]
    nop
    inc a
    nop
    db $fd
    nop
    ld sp, hl
    nop
    pop hl
    nop
    rlca
    ld b, b
    ld h, e
    ld c, b
    ld e, c
    ld b, [hl]
    ld e, [hl]
    ld h, e
    ld [hl], e
    ld h, b
    ld h, l
    ld hl, $3e2d
    cp [hl]
    inc bc
    jp Jump_000_2f2c


    nop
    ldh a, [rLCDC]
    ld e, [hl]
    ld e, $de
    ld [$c0e8], sp
    rst $18
    ld a, $3e
    xor h
    xor h
    inc bc
    di
    cp h
    cp l
    nop
    ld a, a
    add hl, de
    add hl, de
    ld [bc], a
    ld a, [$7770]

jr_030_615a:
    rra
    rra
    db $eb
    db $eb
    inc de
    rst $18
    ld [hl+], a
    xor [hl]
    inc bc
    dec de
    add [hl]
    or [hl]
    ld b, $76
    inc c
    call z, $f9f8
    ret nc

    db $d3
    and $06
    sbc $1e
    sub b
    db $10
    inc h
    and l
    ld [hl], c
    ld a, a
    ld h, [hl]
    ld a, [hl]
    ld b, h
    ld [hl], l
    adc b
    cp a
    inc bc
    add b
    ld a, c
    ld a, b
    dec d
    or h
    jr c, jr_030_619b

    ld d, b
    ld [bc], a
    adc a

jr_030_6189:
    rst $28
    inc b
    inc [hl]
    add [hl]
    sbc [hl]
    db $e3
    rst $20
    inc sp
    inc sp
    ld de, $39d7
    dec sp
    ld b, l
    ld [hl], l
    add a
    sbc a
    ld b, e

jr_030_619b:
    srl l
    ld a, l
    ret nz

    rst $08
    dec a
    ret nz

    db $eb
    inc d
    or h
    ld c, e
    dec d
    ld [bc], a
    jr nz, jr_030_6189

    jr nz, @+$7c

    add l
    cp a
    ld b, b
    xor $11
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

jr_030_61c1:
    rst $18
    jr nz, jr_030_61c1

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
    or h
    ld c, b
    ld e, e
    and b
    pop af
    ld b, $c3
    ld l, $74
    sbc l
    or a
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
    ld e, $9f
    inc h
    xor [hl]
    db $e4
    db $fd
    rst $00
    or $0c
    cp [hl]
    call z, $38dd
    inc a
    sub e
    ld d, c
    and c
    ccf
    ld hl, $21a1
    ld hl, $ff7f
    inc hl
    xor h
    xor l
    or d
    ld b, a
    ret c

    ld e, a
    ld e, a
    inc b
    add a

jr_030_6223:
    rrca
    adc a
    ldh a, [$fe]
    jr nz, @+$31

    jr nz, jr_030_6223

    ldh [$30], a
    sbc a
    ld a, a
    ret nz

    adc $15
    ld h, b
    nop
    sub c
    sbc c
    ld a, a
    rst $38
    jr nc, jr_030_6270

    ld h, b
    ld a, a
    ret nz

    call nc, Call_030_6343
    inc e
    ld e, l
    inc de
    ld [hl], h
    rrca
    jr c, jr_030_627a

    inc [hl]
    jp $2cda


    ld e, l
    ld a, b
    add a
    rst $38
    nop
    rst $28
    db $10
    ld a, h
    add e
    or c
    ld [hl], a
    ld c, [hl]
    sbc $a0
    adc d
    sub $f3
    ccf
    cp a
    ldh [rNR11], a
    ld a, [hl+]
    and [hl]
    ld l, c
    ld e, e
    adc a
    rst $00
    and d
    sub c
    adc b
    db $e4
    jp nz, $f4db

    or $8f
    ld l, a

jr_030_6270:
    push hl
    rst $28
    sub l
    ret nc

    ld c, d
    ld l, [hl]
    rst $38
    rst $38
    ld [de], a
    ld c, b

jr_030_627a:
    and h
    db $10
    sub d
    db $db
    rst $38
    rst $38
    ccf
    cp h
    ld d, $47
    ret


    push bc
    dec h
    inc de
    ld d, c
    add l
    add [hl]
    ld d, a
    ld e, h
    ld a, a
    pop hl
    cp $44
    rst $20
    cp b
    ld a, h
    adc b
    ld l, b
    ld b, a
    or a
    inc [hl]
    jp z, $ad4a

    inc h
    db $db
    ld e, [hl]
    and c
    cp e
    ld b, h
    rst $30
    ld [$a25d], sp
    rst $30
    ld [$43bc], sp
    ld [hl], e
    adc h
    dec d
    jp z, $e720

    jr @-$44

    ld b, l
    rst $38
    nop

jr_030_62b5:
    xor l
    ld d, d
    rst $18
    jr nz, jr_030_62b5

    inc b
    ld l, l
    sub d
    ei
    inc b
    sbc b
    ld h, l
    pop hl
    rra
    ld e, [hl]
    and c
    rst $30
    ld [$539c], sp
    dec d
    ld a, [bc]
    ld h, d
    ld h, a
    ld e, b
    sbc [hl]
    pop hl

jr_030_62d0:
    ld [hl], e
    add b
    and e
    ld c, d
    call z, $f33f
    inc c
    dec d
    inc b
    ld h, b
    ld a, [c]
    ld a, [bc]
    ld c, l
    add d
    ld d, e
    call nz, Call_030_5524
    db $76
    ld hl, sp-$74

jr_030_62e6:
    ld a, l
    ld [hl], c
    adc a
    xor $11
    jp c, $15e5

    inc d
    ld h, b
    rst $00
    ld [$ddea], sp
    pop hl
    ld c, $8b
    cp h
    inc sp
    db $fc
    ld b, $87
    inc b
    add [hl]
    db $fc
    db $fd
    rst $38
    cp $24
    cp [hl]
    and h
    or l
    cp a
    cp [hl]
    db $fc
    cp $b1
    ccf
    ld sp, $31b9
    add hl, sp
    ld a, a
    dec d
    ld h, a
    ld bc, $fe70
    jr nz, jr_030_62d0

    adc h
    adc l
    sub a
    sbc [hl]
    inc d
    ld e, $fc
    db $fd
    add a
    cp $84
    add $fe
    db $fd
    dec b
    db $f4
    jr nz, jr_030_634a

    ld a, a
    rst $38
    jr c, jr_030_62e6

    cpl
    cpl
    ld a, a
    rst $38
    ld a, $be
    dec d
    ld [hl], h
    ld d, b
    and h
    db $fc
    and h
    db $e4
    and h
    db $fc
    dec d
    db $76
    inc d
    rst $38
    rst $38
    ld d, l

Call_030_6343:
    ld d, a
    ld d, l
    ld d, a
    ld d, l
    ld a, a
    ld d, l
    rst $38

jr_030_634a:
    ld d, l
    ld d, a
    xor c
    xor e
    ld bc, $ffff
    rst $38
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
    dec d
    and b
    rst $38
    ld c, l
    dec d
    ld e, a
    ld a, a
    ld c, l
    dec d
    cp a
    ld a, a
    dec l
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    inc b
    dec b
    ld b, $66
    ld h, a
    dec b
    ld b, $14
    ld bc, $0100
    ld [bc], a
    ld [bc], a
    ld bc, $fef4
    dec d
    ld d, $68
    ld l, c
    dec d
    ld d, $01
    inc c
    rrca
    rlca
    ld bc, $0f06
    ld c, l
    ld bc, $0f66
    ld c, l
    ld bc, $0fc6
    ld c, l
    ld bc, $1f26
    ld c, l
    ld bc, $1f86
    daa
    nop
    ld [bc], a
    ld [bc], a
    ld [de], a
    inc de
    ld [de], a
    ld de, $0412
    dec b
    ld b, $66
    ld h, a
    dec b
    ld b, $14
    ld [de], a
    ld de, $1112
    ld [de], a
    db $10
    ld de, $f402
    ld a, [$0807]
    ld [de], a
    inc b
    dec d
    ld d, $68
    ld l, c
    dec d
    ld d, $14
    ld [de], a
    rlca
    ld [$0807], sp
    ld [bc], a
    ld [de], a
    inc c
    rla
    jr jr_030_6415

    inc b
    ld c, [hl]
    ld c, a
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    inc d
    ld [de], a
    rla
    jr jr_030_6426

    jr jr_030_6413

    ld [de], a
    inc c

jr_030_6413:
    add hl, bc
    ld a, [bc]

jr_030_6415:
    ld [de], a
    inc b
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    inc d
    ld [de], a
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld [bc], a
    ld [de], a
    inc c

jr_030_6426:
    ld l, d
    ld l, e
    ld d, b
    ld d, c
    ld [bc], a
    add h
    inc b
    ld l, d
    ld l, e
    ld l, d
    ld l, e
    ld [bc], a
    ld [de], a
    inc c
    ld h, b
    ld h, c
    ld h, b
    ld h, c
    ld d, d
    ld d, e
    ld [bc], a
    and d
    ld b, $02
    ld [de], a
    inc c
    ld d, h
    ld d, l
    ld d, b
    ld d, c
    ld h, d
    ld h, e
    ld [bc], a
    add h
    nop
    ld [bc], a
    add $02
    ld [bc], a
    ld [de], a
    inc c
    ld h, h
    ld h, l
    ld [bc], a
    and d
    nop
    ld [bc], a
    db $e4
    ld b, $02
    ld [de], a
    inc c
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld [bc], a
    add h
    nop
    dec c
    ld c, $0e
    rrca
    ld d, d
    ld d, e
    ld [bc], a
    sub d
    ld c, $62
    ld h, e
    ld h, d
    ld h, e
    ld [bc], a
    and d
    nop
    dec e
    ld e, $1e
    rra
    ld h, d
    ld h, e
    ld [bc], a
    ld [de], a
    inc c
    ld d, d
    ld d, e
    jr nz, jr_030_64a1

    ld [hl+], a
    inc hl
    ld [bc], a
    add h
    nop
    ld [bc], a
    ld b, $12
    ld [bc], a
    ld [de], a
    inc c
    ld h, d
    ld h, e
    inc h
    dec h
    ld h, $27
    ld [bc], a
    and d
    nop
    ld [bc], a
    ld h, $12
    ld [bc], a
    ld [de], a
    inc c
    dec bc
    inc c
    jr z, jr_030_64c7

    ld a, [hl+]
    dec hl
    ld [bc], a

jr_030_64a1:
    ld b, $12
    ld d, h
    ld d, l
    ld [bc], a
    db $10
    ld e, $1b
    inc e
    inc l
    dec l
    ld l, $2f
    ld [bc], a
    ld h, $12
    ld h, h
    ld h, l
    ld [bc], a
    jr nc, jr_030_64d3

    ld de, $0201
    jp nz, Jump_000_111b

    ld [bc], a
    or e
    dec de
    ld [bc], a
    ldh [rNR32], a
    ld [bc], a
    jp nc, Jump_000_001a

    ld [bc], a

jr_030_64c7:
    ld [bc], a
    ld [de], a
    inc de
    ld [de], a
    ld de, $0412
    dec b
    ld b, $66
    ld h, a
    dec b

jr_030_64d3:
    ld b, $14
    ld [de], a
    ld de, $1112
    ld [de], a
    db $10
    ld de, $f402
    ld a, [$0807]
    ld [de], a
    inc b
    dec d
    ld d, $68
    ld l, c
    dec d
    ld d, $14
    ld [de], a
    rlca
    ld [$0807], sp
    ld [bc], a
    ld [de], a
    inc c
    rla
    jr jr_030_6507

    inc b
    ld c, [hl]
    ld c, a
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    inc d
    ld [de], a
    rla
    jr jr_030_6518

    jr jr_030_6505

    ld [de], a
    inc c

jr_030_6505:
    add hl, bc
    ld a, [bc]

jr_030_6507:
    ld [de], a
    inc b
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    inc d
    ld [de], a
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld [bc], a
    ld [de], a
    inc c

jr_030_6518:
    ld l, d
    ld l, e
    ld d, b
    ld d, c
    ld [bc], a
    add h
    inc b
    ld l, d
    ld l, e
    ld l, d
    ld l, e
    ld [bc], a
    ld [de], a
    inc c
    ld h, b
    ld h, c
    ld h, b
    ld h, c
    ld d, d
    ld d, e
    ld [bc], a
    and d
    ld b, $02
    ld [de], a
    inc c
    ld d, h
    ld d, l
    ld d, b
    ld d, c
    ld h, d
    ld h, e
    ld [bc], a
    add h
    nop
    ld [bc], a
    add $02
    ld [bc], a
    ld [de], a
    inc c
    ld h, h
    ld h, l
    ld [bc], a
    and d
    nop
    ld [bc], a
    db $e4
    ld b, $02
    ld [de], a
    inc c
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld [bc], a
    add h
    nop
    dec c
    ld c, $0e
    rrca
    ld d, d
    ld d, e
    ld [bc], a

jr_030_655c:
    sub d
    ld c, $62
    ld h, e
    ld h, d
    ld h, e
    ld [bc], a
    and d
    nop
    dec e
    ld e, $1e
    rra
    ld h, d
    ld h, e
    ld [bc], a
    ld [de], a
    inc c
    ld [bc], a
    ld b, $12
    ld [bc], a
    add h
    nop
    ld [bc], a
    ld b, $12
    ld [bc], a

Jump_030_6578:
    ld [de], a
    inc c
    ld [bc], a
    ld h, $12
    ld [bc], a
    and d
    nop
    ld [bc], a
    ld h, $12
    ld [bc], a
    ld [de], a
    inc c
    dec bc
    inc c
    ld l, h
    ld l, l
    ld [bc], a
    ld c, d
    inc d
    ld d, h
    ld d, l
    ld [bc], a
    db $10
    ld e, $1b
    inc e
    ld l, [hl]
    ld l, a
    ld [bc], a
    ld l, d
    inc d
    ld h, h
    ld h, l
    ld [bc], a
    jr nc, jr_030_65bb

    ld de, $0201
    jp nz, Jump_000_111b

    ld [bc], a
    or e
    dec de
    ld [bc], a
    ldh [rNR32], a
    ld [bc], a
    jp nc, Jump_000_001a

    ld [$0006], sp
    rst $00
    nop
    ld [$ff00], sp
    nop
    add h
    ld h, b
    ld h, b
    xor [hl]

jr_030_65bb:
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
    jr nz, jr_030_655c

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
    ld b, $1c
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

jr_030_660b:
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
    jr jr_030_660b

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
    jr c, jr_030_668c

    jr c, jr_030_668c

    ld a, c
    dec b
    ld a, c
    dec b
    jr z, jr_030_66a2

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
    ld c, $00
    ld a, a
    ld b, $5c
    nop
    ld bc, $0301
    call $01ff
    db $fd
    inc bc
    pop bc
    ccf
    ld bc, $01ff
    ld b, $6d

jr_030_668c:
    nop
    ld e, a
    nop
    ld a, b
    nop
    ld h, c
    ld b, $16
    inc b
    ld e, [hl]
    ld e, [hl]
    ld bc, $01f9
    add a
    ld bc, $01f9
    ld hl, $2806
    inc b

jr_030_66a2:
    ld b, $fe
    inc c
    ld bc, $0101
    ld a, l
    add hl, sp
    ld b, l
    ld b, $14
    db $10
    ld bc, $017d
    ld bc, $3e06
    ld bc, $2206
    rra
    ld c, l
    ld b, $82
    rra
    ld c, l
    ld b, $e2
    rra
    ld c, l
    ld b, $42
    cpl
    ld c, l
    ld b, $a2
    cpl
    ld c, l
    ld b, $02
    ccf
    ld c, l
    ld b, $62
    ccf
    ld c, l
    ld b, $a4
    rst $38
    ld c, d
    inc b
    ei
    rst $38
    nop
    ld b, $22
    ld b, b
    add b
    ld a, a
    cp $01
    ld b, $2a
    ld b, b
    nop
    rst $38
    ld b, $2a
    ld b, h
    ld b, $22
    ld b, d
    ld b, $38
    ld b, h
    db $10
    rst $28
    ld b, $2a
    ld c, d
    db $10
    rst $28
    ld b, $3a
    ld b, e
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
    jr z, @+$6a

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
    ld bc, $6006
    ld b, b
    ld [$085f], sp
    ld c, l
    dec hl
    ld l, c
    ld [de], a
    ld a, a
    nop
    ld d, b
    nop
    ld d, e
    ld b, $70
    ld b, b
    inc b
    xor $04
    and [hl]
    ld c, h
    ld c, $48
    ld a, [hl]
    jr z, jr_030_6781

    inc d
    ld e, $00
    ld h, [hl]
    nop
    ld d, h
    jr @+$7a

    ld [$0748], sp
    ld e, a
    nop
    ld a, a
    ld b, $8c
    ld b, b
    jr jr_030_6784

    inc d
    ld e, $18
    ld e, $74
    ld a, [hl]
    add sp, -$02
    nop
    ld b, $d9
    ld b, b
    ld b, $9f
    ld b, b
    ld a, a
    db $10
    ld h, a
    ld [bc], a
    ld h, h
    jr nz, @+$61

    nop
    ld e, a
    nop
    ld a, h
    nop

jr_030_6781:
    ld a, e
    ld b, $70

jr_030_6784:
    ld b, b
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
    ld b, $8c
    ld b, b
    sub b
    ld a, [hl]
    ld c, b
    ld l, $84
    db $76
    inc b
    or [hl]
    inc b
    ld h, [hl]
    ld hl, sp+$06
    db $db
    ld b, d
    ld b, $20
    ld e, a
    ld c, l
    ld b, $80
    ld e, a
    ld c, l
    ld b, $e0
    ld e, a
    ld c, l
    ld b, $40
    ld l, a
    ld c, l
    ld b, $a0
    ld l, a
    ld c, l
    ld b, $00
    ld a, a
    ld c, l
    ld b, $60
    ld a, a
    ld c, l
    ld b, $c0
    ld a, a
    inc l
    nop
    ld [bc], a
    inc c
    db $10
    ld de, $0504
    ld b, $07
    inc b
    dec b
    ld de, $0c10
    add hl, bc
    ld b, $ff
    inc c
    inc d
    rlca
    db $10
    dec bc
    nop
    ld bc, $0302
    nop
    ld bc, $0c08
    add hl, bc
    rrca
    dec b
    ld [$220c], sp
    ld [bc], a
    add hl, bc
    inc c
    add hl, bc
    rrca
    dec b
    add hl, bc
    inc c
    ld [hl+], a
    ld [bc], a
    ld a, [bc]
    inc c
    add hl, bc
    rrca
    dec b
    ld a, [bc]
    ld b, d
    ld b, e
    inc c
    add d
    nop
    dec bc
    inc c
    add hl, bc
    rrca
    ld b, $44
    ld b, l
    inc c

jr_030_680f:
    and d
    nop
    inc c
    jr z, jr_030_6823

    rlca
    inc c
    add d
    ld [bc], a
    inc c
    ld c, b
    rrca
    rlca
    inc c
    and d
    ld [bc], a
    inc c
    ld l, b
    rrca
    rlca

jr_030_6823:
    ld b, [hl]
    ld b, a
    ld c, d
    ld c, e
    ld c, [hl]
    ld c, a
    inc c
    adc b
    rrca
    rlca
    ld c, b
    ld c, c
    ld c, h
    ld c, l
    ld d, b
    ld d, c
    inc c
    xor b
    rrca
    dec bc
    ld de, $0c04
    ld [$060f], sp
    inc c
    pop hl
    ld bc, $680c
    ld [$720c], sp
    ld c, $11
    ld b, $0c
    ld [$0c08], sp
    sub d
    ld c, $0c
    ld h, [hl]
    ld a, [de]
    inc c
    ld d, d
    inc c
    inc c
    add [hl]
    ld a, [bc]
    inc c
    ld [hl], b
    ld c, $0c
    and [hl]
    ld a, [bc]
    inc c
    db $10
    inc c
    nop
    ld [$0006], sp
    rst $00
    nop
    ld [$ff00], sp
    nop
    add h
    ld h, b
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
    jr nz, jr_030_680f

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
    ld b, $1c
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

jr_030_68be:
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
    jr jr_030_68be

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
    jr c, jr_030_693f

    jr c, jr_030_693f

    ld a, c
    dec b
    ld a, c
    dec b
    jr z, jr_030_6955

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
    ld c, $00
    ld a, a
    ld b, $5c
    nop
    ld bc, $0301
    call $01ff
    db $fd
    inc bc
    pop bc
    ccf
    ld bc, $01ff
    ld b, $6d

jr_030_693f:
    nop
    ld e, a
    nop
    ld a, b
    nop
    ld h, c
    ld b, $16
    inc b
    ld e, [hl]
    ld e, [hl]
    ld bc, $01f9
    add a
    ld bc, $01f9
    ld hl, $2806
    inc b

jr_030_6955:
    ld b, $fe
    inc c
    ld bc, $0101
    ld a, l
    add hl, sp
    ld b, l
    ld b, $14
    db $10
    ld bc, $017d
    ld bc, $3e06
    ld bc, $2206
    rra
    ld c, l
    ld b, $82
    rra
    ld c, l
    ld b, $e2
    rra
    ld c, l
    ld b, $42
    cpl
    ld c, l
    ld b, $a2
    cpl
    ld c, l
    ld b, $02
    ccf
    ld c, l
    ld b, $62
    ccf
    ld c, l
    ld b, $a4
    rst $38
    ld c, d
    inc b
    ei
    rst $38
    nop
    ld b, $22
    ld b, b
    add b
    ld a, a
    cp $01
    ld b, $2a
    ld b, b
    nop
    rst $38
    ld b, $2a
    ld b, h
    ld b, $22
    ld b, d
    ld b, $38
    ld b, h
    db $10
    rst $28
    ld b, $2a
    ld c, d
    db $10
    rst $28
    ld b, $3a
    ld b, e
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
    jr z, @+$6a

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
    ld bc, $6006
    ld b, b
    ld [$085f], sp
    ld c, l
    dec hl
    ld l, c
    ld [de], a
    ld a, a
    nop
    ld d, b
    nop
    ld d, e
    ld b, $70
    ld b, b
    inc b
    xor $04
    and [hl]
    ld c, h
    ld c, $48
    ld a, [hl]
    jr z, jr_030_6a34

    inc d
    ld e, $00
    ld h, [hl]
    nop
    ld d, h
    jr jr_030_6a86

    ld [$0748], sp
    ld e, a
    nop
    ld a, a
    ld b, $8c
    ld b, b
    jr jr_030_6a37

    inc d
    ld e, $18
    ld e, $74
    ld a, [hl]
    add sp, -$02
    nop
    ld b, $d9
    ld b, b
    ld b, $9f
    ld b, b
    ld a, a
    db $10
    ld h, a
    ld [bc], a
    ld h, h
    jr nz, jr_030_6a8e

    nop
    ld e, a
    nop
    ld a, h
    nop

jr_030_6a34:
    ld a, e
    ld b, $70

jr_030_6a37:
    ld b, b
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
    ld b, $8c
    ld b, b
    sub b
    ld a, [hl]
    ld c, b
    ld l, $84
    db $76
    inc b
    or [hl]
    inc b
    ld h, [hl]
    ld hl, sp+$06
    db $db
    ld b, d
    ld b, $20
    ld e, a
    ld c, l
    ld b, $80
    ld e, a
    ld c, l
    ld b, $e0
    ld e, a
    ld c, l
    ld b, $40
    ld l, a
    ld c, l
    ld b, $a0
    ld l, a
    ld c, l
    ld b, $00
    ld a, a
    ld c, l
    ld b, $60
    ld a, a
    ld c, l
    ld b, $c0
    ld a, a
    inc l
    nop
    ld [bc], a
    inc c
    db $10
    inc c

jr_030_6a86:
    nop
    nop
    ld de, $0504
    ld b, $07
    inc b

jr_030_6a8e:
    dec b
    ld de, $000c
    ld bc, $1010
    rst $38
    inc c
    inc d
    rlca
    inc c
    nop
    ld bc, $000b
    ld bc, $0302
    nop
    ld bc, $0c08
    dec c
    rrca
    dec b
    ld [$260c], sp
    ld [bc], a
    add hl, bc
    inc c
    dec c
    rrca
    dec b
    add hl, bc
    inc c
    ld h, $02
    ld a, [bc]
    inc c
    dec c
    rrca
    dec b
    ld a, [bc]
    ld b, d
    ld b, e
    inc c
    add [hl]
    nop
    dec bc
    inc c
    dec c
    rrca
    ld b, $44
    ld b, l
    inc c
    and [hl]
    nop
    inc c
    inc l
    rrca
    ld [bc], a
    ld de, $0605
    rlca
    ld de, $860c
    ld [bc], a
    inc c
    ld c, h
    rrca
    ld [bc], a
    inc c
    ld b, l
    nop
    rrca
    inc c
    and [hl]
    ld [bc], a
    inc c
    ld l, h
    rrca
    ld [bc], a
    inc c
    pop hl
    ld bc, $4746
    ld c, d
    ld c, e
    ld c, [hl]
    ld c, a
    inc c
    adc h
    rrca
    ld [bc], a
    inc c
    ld h, l
    nop
    rrca
    ld c, b
    ld c, c
    ld c, h
    ld c, l
    ld d, b
    ld d, c
    inc c
    inc l
    rrca
    ld [bc], a
    inc c
    add l
    inc bc
    inc c
    ret z

    rrca
    ld b, $0c
    and l
    inc bc
    inc c
    add sp, $0f
    rlca
    inc c
    ld b, d
    ld d, $0c
    inc c
    rra
    inc bc
    inc c
    ld h, d
    ld d, $0c
    xor h
    rrca
    inc bc
    inc c
    ld b, $00
    ld b, $11
    ld b, d
    ld b, e
    ld de, $0c04
    inc c

jr_030_6b27:
    rrca
    ld b, $0c
    and e
    ld bc, $8c0c
    inc b
    inc c
    ld [de], a
    ld a, [bc]
    nop
    ld [$0621], sp
    or $31
    or a
    ld d, h
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

    ld h, c
    add hl, bc

jr_030_6b52:
    push de
    add $26
    dec l
    or d
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
    jr jr_030_6b52

    ld b, c
    ld e, l
    inc l
    ld d, e
    rst $38
    nop
    or [hl]
    ld c, c
    jr jr_030_6b27

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
    ld hl, $fcf0
    jr nz, jr_030_6bba

jr_030_6bba:
    jr nz, jr_030_6bdc

    ld [hl], c
    ld d, c
    ld hl, $0294
    set 1, e
    cp d
    res 0, d
    nop
    add d
    add d
    rst $00
    ld b, l
    ld hl, $02a4
    inc l
    inc l
    db $eb
    inc l
    ld hl, $f8f4
    add b
    add b
    add b
    add b
    jp c, $eaba

jr_030_6bdc:
    ld a, [$abba]
    cp b
    xor c
    or e
    and [hl]
    or c
    and h
    or l
    and b
    cp h
    xor c
    dec l
    ld l, $2b
    cpl
    cpl
    db $eb
    rrca
    set 4, [hl]
    ld [hl-], a
    add $12
    sub $02
    ld e, $ca
    or h
    ld [hl], h
    call nc, $f4f4
    rst $10
    ldh a, [$d3]
    ld h, a
    ld c, h
    ld h, e
    ld c, b
    ld l, e
    ld b, b
    ld a, b
    ld d, e
    ld e, e
    ld e, l
    ld d, a
    ld e, a
    ld e, l
    push de
    dec e
    sub l
    call $8d65
    dec h
    xor l
    dec b
    dec a
    sub l
    ld hl, $00bc
    add e
    add e
    adc a
    adc h
    sub l
    sbc e
    sbc [hl]
    sub d
    sub [hl]
    sbc d
    sub e
    sbc l
    ld hl, $02b8
    ret nz

    ld b, b
    add b
    add b
    inc e
    inc e
    ld h, $3a
    db $ec
    db $f4
    ld hl, $f0fc
    ld h, b
    ld h, b
    or b
    ret nc

    ld e, b
    ld l, b
    ld e, h
    ld h, h
    ld l, $32
    scf
    add hl, sp
    ld hl, $1220
    ld [hl], b
    ld d, b
    ld e, b
    ld l, b
    inc l
    inc [hl]
    ld h, $3a
    ld [hl], e
    ld a, l
    ld hl, $f1fc
    ld b, $0e
    ld a, [bc]
    ld a, [de]
    ld d, $34
    inc l
    ld h, h
    ld e, h
    adc $be
    ld hl, $1240
    dec c
    dec bc
    ld a, [de]
    ld d, $3a
    ld h, $74
    ld c, h
    db $ec
    sbc h
    ld hl, $f0fc
    ld bc, $0301
    ld [bc], a

jr_030_6c73:
    ld bc, $3801
    jr c, @+$66

    ld e, h
    scf
    cpl
    ld bc, $0101
    ld bc, $c1c1
    pop af
    ld sp, $d9a9
    ld a, c
    ld c, c
    ld l, c
    ld e, c
    ret


    cp c
    ld hl, $f4f8
    inc bc
    inc bc
    inc e
    inc e
    inc hl
    inc l
    ld e, a
    ld h, b
    ld d, c
    ld [hl], c
    ld hl, $0094
    ld c, a
    ld a, a
    and b
    cp a
    ld e, $fe
    ld sp, hl
    rlca
    or $0e
    ld b, l
    rst $00
    ld hl, $00a4
    cp c
    ccf
    add d
    ld a, [hl]
    cp h
    ld a, a
    rst $08
    ld [hl], b
    or e
    inc a
    ld hl, $f4f8
    ret nz

    ret nz

    jr c, jr_030_6c73

    db $e4
    inc d
    ld a, [$b806]
    xor l
    cp d
    xor [hl]
    cp b
    xor h
    xor d
    cp d
    cp e
    cp e
    sub $ef
    cp a
    ret nz

    cp e
    rst $38
    ld c, $da
    ld l, $3b
    ld c, $1b
    ld a, [hl+]
    ld a, $ef
    rst $28
    or l
    ld a, e
    cp $01
    xor $ff
    ld [hl], b
    ld e, e
    ld [hl], h
    call c, $d870

jr_030_6ce5:
    ld d, h
    ld a, h
    rst $30
    rst $30
    xor l
    sbc $7f
    add b

jr_030_6ced:
    ld [hl], a
    rst $38
    dec e
    or l
    ld e, l
    ld [hl], l
    dec e
    dec [hl]
    ld d, l
    ld e, l
    db $dd
    db $dd
    ld l, e
    rst $30
    db $fd
    inc bc
    db $dd
    rst $38
    ret


    adc $fc
    cp l
    cp h
    jp nz, $e0e3

    sbc h
    sbc e
    rst $30
    rst $28
    db $db
    cp h
    rst $30
    rst $28
    sub a
    ld a, e
    and $11
    dec sp
    ld b, h
    rst $38
    nop
    rra
    ldh [$f3], a
    db $fc
    db $ec
    rra
    rst $30
    ei
    rla
    jr jr_030_6ced

    call z, Call_030_7fb8
    and $1f
    rst $18
    jr c, jr_030_6ce5

    ld h, a
    ld l, h
    call c, $b0d0
    cp a
    ret nz

    cp $bb
    sbc $be
    ld l, [hl]
    sbc $b5
    ld a, a
    set 1, l
    dec bc
    ld [$0707], sp
    db $fd
    inc bc
    ld a, a
    db $dd
    ld a, e
    ld a, l
    db $76
    ld a, e
    xor l
    cp $d3
    or e
    ret nc

    db $10
    ldh [$e0], a
    add sp, $18
    db $d3
    inc sp
    dec e
    cp $67
    ld hl, sp-$05
    inc e
    db $dd
    and $36
    dec sp
    dec bc
    dec c
    jp hl


    sbc $67
    adc b
    call c, $ff22
    nop
    ld hl, sp+$07
    rst $08
    ccf
    scf
    ld hl, sp-$11
    rst $18
    sub e
    ld [hl], e
    ccf
    cp l
    dec a
    ld b, e
    rst $00
    rlca
    add hl, sp
    reti


    rst $28
    rst $30
    db $db
    dec a
    rst $28
    rst $30
    cp a
    ret nz

    rst $18
    ldh [$87], a
    adc b
    sub b
    xor c
    sbc a
    and b
    xor a
    sub b
    xor [hl]
    add c
    adc h
    ld [c], a
    ldh a, [rNR13]
    add sp, $09
    di
    rrca
    ld a, a
    add b
    ret nz

    inc hl
    rst $38
    nop
    ld hl, $209a
    add a
    ld h, h
    rrc b
    rst $20
    ld hl, sp-$02
    ld bc, $c403
    ld hl, $229a
    db $fd
    inc bc
    ei
    rlca
    pop hl
    ld de, $9509
    db $ed
    ld de, $19e5
    ld [hl], l
    adc e
    ld [hl], l
    dec bc
    db $fd
    db $e4
    rst $18
    call nz, $c6dd
    call $cad4
    db $d3
    and d
    cp e
    and d
    cp e
    ld [c], a
    ld [$13df], a
    db $fd
    ld de, $31dd
    reti


    dec d
    xor c
    ld h, l
    and e
    ld l, a
    inc hl
    rst $28
    inc hl
    xor e
    ei
    ret z

    cp a
    adc b
    cp e
    adc h
    sbc e
    xor b
    sub l
    and [hl]
    push bc
    or $c4
    rst $30
    call nz, $bfd5
    daa
    ei
    inc hl
    cp e
    ld h, e
    or e
    dec hl
    ld d, e
    bit 0, l
    db $dd
    ld b, l
    db $dd
    ld b, a
    ld d, a
    db $10
    xor e
    ld [$8455], sp
    xor c
    ld b, h
    ld l, d
    ld b, d
    ld d, l
    inc hl
    inc [hl]
    inc hl
    inc a
    ld h, c
    ld l, [hl]
    add h
    ld l, d
    adc c
    ld d, l
    sub e
    ld c, e
    sub d
    ld [hl+], a
    and [hl]
    ld d, [hl]
    db $e4
    dec c
    db $e4
    rra
    jp nz, Jump_000_203a

    dec l
    ld [hl+], a
    xor d
    ld h, a
    ld l, a
    daa
    xor a
    daa
    xor a
    ld h, l
    ld l, l
    dec h
    xor l
    dec h
    xor a
    add b
    ld e, d
    and b
    ld a, [hl+]
    ld a, [c]
    ld a, d
    ldh a, [$7b]
    ret nc

    ld e, e
    jp nc, $d05a

    ld e, d
    ret nc

    ld a, d
    inc h
    xor [hl]
    ld h, h
    ld l, [hl]
    inc h
    xor [hl]
    ld hl, $3640
    sub b
    dec sp
    sub d
    ld a, [hl-]
    sub b
    ld a, [hl-]
    sub b
    ld a, [hl-]
    sub d
    ld a, [hl-]
    sub b
    dec sp
    ld hl, $3050
    and h
    xor [hl]
    sub l
    sbc a
    adc l
    adc l
    add a
    or a
    cp a
    add b
    add b
    cp a
    rst $38
    rst $38
    nop
    rst $38
    sub l
    dec a
    reti


    ld a, c
    ld d, c
    pop de
    pop hl
    db $ed
    db $fd
    ld bc, $fd01
    ld hl, $306c
    adc h
    jp nc, Jump_030_6578

    inc e
    dec e
    dec bc
    dec bc
    add hl, bc
    dec c
    ld b, $06
    ld hl, $f0fc
    ld hl, $209a
    ld a, a
    add b
    sbc a
    ldh [$37], a
    scf
    ld hl, $f2fa
    rst $38
    nop
    cp a
    ld b, b
    cp [hl]
    ld bc, $833d
    xor $ee
    ld hl, $f2fa
    scf
    ld b, c
    ld h, $9e
    ld a, b
    ld hl, sp-$30
    ret nc

    sub b
    or b
    ld h, b
    ld h, b
    ld hl, $f0fc
    sbc l
    sub l
    adc b
    adc b
    add b
    sbc a
    add b
    cp a
    ld hl, $3468
    db $dd
    ld d, l
    adc c
    adc c
    ld bc, $01f9
    db $fd
    ld hl, $3478
    cp e
    xor d
    sub c
    sub c
    ld hl, $38c4
    cp c
    xor c
    ld de, $2111
    call nc, $2138
    and b
    rst $38
    ld c, l
    ld hl, $4f5f
    ld c, l
    ld hl, $ffc0
    dec l
    ld a, [hl]
    add c
    and l
    ld e, d
    db $db
    inc h
    and l
    ld e, d
    ld hl, $5202
    ld a, [hl]
    add c
    and b
    ld h, b
    ldh [$e3], a
    ret nz

    rst $08
    ld b, b
    ld c, a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc e
    add b
    adc [hl]
    nop
    ldh a, [rP1]
    db $fc
    ld hl, $219b
    rst $38
    nop
    ld [hl], a
    nop
    db $dd
    nop
    ld [$0f00], a
    nop
    ccf
    ld hl, $5324
    rst $30
    nop
    cp l
    nop
    ld d, a
    dec b
    ld b, $07
    rst $00
    inc bc
    di
    ld [bc], a
    ld a, [c]
    ld bc, $01f9
    ld a, c
    ld bc, $01d9
    ld [hl], c
    add b
    sbc a
    nop
    ccf
    ld hl, $5052
    add b
    sbc a
    add b
    add a
    ld b, b
    ld b, b
    ldh [$a0], a
    ld hl, $5522
    jp c, Jump_000_2400

    nop
    add b
    nop
    nop
    nop
    rra
    ld hl, $5324
    xor e
    nop
    ld b, h
    nop
    ld bc, $0000
    ld bc, $00f9
    db $fc
    ld hl, $5082
    ld bc, $01f9
    pop hl
    ld [bc], a
    ld [bc], a
    rlca
    dec b
    nop
    nop
    ld h, [hl]
    nop
    ld e, c
    nop
    jr z, jr_030_6f5c

jr_030_6f5c:
    inc a
    nop
    ld c, h
    nop
    ld b, b
    nop
    jr nz, jr_030_6f64

jr_030_6f64:
    ld hl, $5090
    sbc c
    ld hl, $f9f3
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
    ld [bc], a
    nop
    inc b
    nop
    jr nz, jr_030_6f7b

jr_030_6f7b:
    ld b, b
    nop
    ld c, h
    nop
    inc a
    nop
    jr z, jr_030_6f83

jr_030_6f83:
    ld e, c
    nop
    ld h, [hl]
    ld hl, $f9f3
    sbc c
    ld hl, $51cb
    inc b
    nop
    ld [bc], a
    nop
    ld [hl-], a
    nop
    inc a
    nop
    inc d
    nop
    sbc d
    ld hl, $5bcb
    ld hl, $ffea
    inc bc
    add b
    sub l
    add b
    adc d
    ret nz

    call nz, $c1c0
    ld h, b
    ldh [$7f], a
    ld a, a
    ldh a, [$f0]
    ret nz

    rst $00
    nop
    ld d, b
    nop
    add b
    ld hl, $519d
    nop
    add b
    add b
    ld [hl], b
    ld [hl], b
    rrca
    adc a
    nop
    ld a, [bc]
    nop
    ld bc, $0400
    ld hl, $1260
    ld c, $0e
    ldh a, [$f1]
    ld bc, $01a9
    ld d, c
    inc bc
    inc hl
    inc bc
    add e
    ld b, $07
    cp $fe
    rrca
    rrca
    inc bc
    db $e3
    cp b
    sbc b
    rst $10
    rst $08
    ld l, h
    ld h, d
    add hl, sp
    ld a, [hl-]
    ld h, a
    ld [hl], a
    sbc b
    and h
    cp h
    jp nz, Jump_030_7f7f

    ld hl, $318c
    rst $38
    ldh a, [rIF]
    rst $08
    ldh a, [$7f]
    ld a, a
    add b
    add b
    nop
    ccf
    ld hl, $6260
    rrca
    ldh a, [$f3]
    rrca
    cp $fe
    ld bc, $0001
    db $fc
    dec e
    add hl, de
    db $eb
    di
    ld [hl], $46
    sbc h
    ld e, h
    and $ee
    add hl, de
    dec h
    dec a
    ld b, e
    cp $fe
    ld hl, $50c0
    ld hl, $509c
    ld hl, $6490
    ld hl, $50e0
    ld hl, $50bc
    ld hl, $64a0
    ld hl, $f2fa
    rlca
    rlca
    dec de
    inc e
    cpl
    jr nc, jr_030_7064

jr_030_7031:
    inc [hl]
    jr nz, jr_030_7055

    cpl
    ld de, $0000
    ldh [$e0], a
    ret c

    jr c, jr_030_7031

    inc c
    call z, $042c
    sbc h
    dec hl
    inc [hl]
    scf
    jr c, jr_030_7073

    inc a
    dec de
    dec de
    ld hl, $f4f8
    call nc, $cc2c
    inc l
    inc [hl]
    inc a
    ret c

    ret c

jr_030_7055:
    ld hl, $4fa0
    ld c, l
    ld hl, $7f47
    ld c, l
    ld hl, $7fa7
    ld b, l
    nop
    ld [bc], a
    ld b, b

jr_030_7064:
    nop
    ld bc, $3130
    jr nc, @+$33

    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    ld b, b

jr_030_7073:
    ld [bc], a
    nop
    nop
    ld bc, $f540
    ld hl, sp+$02
    inc bc
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld b, b
    ld [hl+], a
    nop
    ld [bc], a
    inc bc
    ld b, b
    inc d
    ld a, [bc]
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    inc c
    dec c
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld c, $0f
    ld b, b
    ld b, d
    nop
    ld b, b
    ld [hl-], a
    rrca
    ld bc, $1d1c
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld e, $1f
    ld b, b
    ld c, [hl]
    rrca
    dec b
    inc l
    dec l
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld l, $2f
    ld b, b
    ld c, [hl]
    rrca
    ld bc, $3736
    ld [hl], $37
    inc a
    dec a
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld a, $3f
    ld b, b
    and d
    nop
    ld b, b
    ld [hl-], a
    inc c
    ld d, b
    ld b, b
    jp nz, Jump_030_400b

    or d
    dec c
    ld e, c
    ld e, d
    ld b, b
    db $e4
    rlca
    ld e, e
    ld b, b
    pop de
    ld c, $69
    ld h, b
    ld b, b
    inc b
    ld de, $0908
    ld a, [bc]
    dec bc
    ld l, e
    ld l, h
    ld l, d
    ld b, b
    pop af
    rrca
    ld b, $18
    add hl, de
    ld a, [de]
    dec de
    ld l, l
    ld l, [hl]
    ld b, b
    db $10
    rra
    dec b
    ld l, e
    ld l, h
    jr z, jr_030_7124

    ld a, [hl+]
    dec hl
    ld b, b
    ld c, $1f
    rlca
    ld l, l
    ld l, [hl]
    jr c, jr_030_713e

    ld a, [hl-]
    dec sp
    ld b, b
    ld l, $1f
    ld [bc], a
    ld e, h
    ld e, l
    ld b, b
    add h
    rla
    ld e, [hl]
    ld b, b
    pop de
    ld c, $40
    jp $0b0f


    inc b
    ld b, b
    pop bc
    ld de, $4001
    jp nz, RST_00

    ld b, b
    pop bc
    ld [de], a

jr_030_7124:
    ld b, b
    inc sp
    add hl, bc
    dec b
    ld b, $40
    pop hl

jr_030_712b:
    ld de, $4007
    jp nz, Jump_030_4000

    ldh [rNR14], a
    ld b, b
    and b
    ld hl, sp+$00
    ld [$061d], sp
    or $31
    or a
    ld d, h

jr_030_713e:
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

    ld h, c
    add hl, bc

jr_030_7156:
    push de
    add $26
    dec l
    or d
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
    jr jr_030_7156

    ld b, c
    ld e, l
    inc l
    ld d, e
    rst $38
    nop
    or [hl]
    ld c, c
    jr jr_030_712b

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
    ld bc, $0299
    jp c, $cd01

    ld bc, $06e5
    and [hl]
    ld b, l
    ld [hl], l
    jp $e1db


    jp hl


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

    push bc
    call Call_030_4b43
    ld h, d
    ld a, [hl]
    ld bc, $8195
    pop af
    add e
    db $eb
    ld b, l
    ld [hl], l
    ld c, d
    ld l, d
    call nz, $a0cd
    xor b
    ld b, d
    ld c, d
    and d
    xor d
    and h
    cp h
    call nz, Call_030_44d5
    ld c, l
    and b
    or c
    ld bc, $0531
    cp l
    ld b, d
    jp nc, $9901

    inc hl
    cp e
    ld hl, $02b1
    ld d, d
    inc bc
    ld h, e
    call nz, $80cf
    sub e
    ret z

    jp c, $a680

    add b
    or a
    sub b
    or a
    ld [hl], b
    ld a, l
    ld [$01c8], sp
    and c
    inc de
    or e
    ld de, $1193
    sub l
    ld hl, $21a5
    add hl, hl
    jp z, $b4ca

    or a
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
    push af
    add hl, bc
    cp [hl]
    ld b, d
    call c, $d424
    inc h
    ld hl, sp+$08
    ret


    jr z, @+$75

    sub b
    sub c
    ld d, b
    or a
    adc b
    ld a, l
    ld b, d
    ld a, $21
    ld h, $29
    dec de
    inc d
    sub e
    inc d
    adc $09
    adc e
    ld [$60a1], sp
    and c
    jr nz, jr_030_72df

    ld b, b
    ld c, c
    ld b, b
    sbc a
    add b
    sbc a
    add b
    ret


    ret nz

    pop bc
    ret nz

    add l
    ld b, $85
    inc b
    add d
    ld [bc], a
    sub d
    ld [bc], a
    ld sp, hl
    ld bc, $01f9
    sub e
    inc bc
    add e
    inc bc
    pop bc
    ret nz

    ld b, c
    ld b, b
    ld b, c
    ld b, b
    pop hl
    ld h, b
    dec e
    add [hl]
    db $10
    ld hl, $a3a0
    ld h, b
    add e
    inc bc
    add d
    ld [bc], a
    add d
    ld [bc], a
    add [hl]
    rlca
    add a
    ld b, $87
    ld b, $84
    dec b
    rst $00
    inc b
    or c
    ld [hl], b
    ldh a, [$30]
    ldh a, [$30]
    or b

jr_030_72df:
    ld [hl], b
    rst $38
    ccf
    rst $18
    rra
    ld a, a
    sbc a
    ld a, a
    sbc a
    adc l
    ld c, $0d
    ld c, $0f
    inc c
    dec c
    ld c, $fe
    db $fd
    ld a, [$fbf9]
    db $fc
    db $fd
    ld a, [$401d]
    ld [de], a
    push de
    dec h
    ld sp, hl
    add hl, bc
    sra e
    ld [hl], e
    sub e

jr_030_7303:
    sub a
    ld d, a
    dec e
    ld d, b
    ld [de], a
    and [hl]
    xor c
    sbc e
    sub h
    db $d3
    call nc, $c9ce
    db $eb
    add sp, -$59
    ld h, a
    xor a
    cpl
    ld c, a
    ld c, a
    ld e, a
    ld e, a
    sbc a
    sbc a
    sbc a
    sbc a
    rst $18
    rst $18
    rst $18
    rst $18
    push hl
    and $f5
    db $f4
    ld a, [c]
    ld a, [c]
    ld a, [$f9fa]
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ei
    ei
    ei
    ei
    rst $18
    rst $18
    ld e, a
    ld e, a
    ld c, a
    ld c, a
    rst $28
    ld l, a
    dec e
    ld b, $20
    cpl
    xor a
    and a
    ld h, a
    ei
    ei
    ld a, [$f2fa]
    ld a, [c]
    or $f7
    rst $30
    or $f7
    or $f4
    push af
    rst $20
    db $e4
    or a
    ld [hl], a
    rst $30
    scf
    rst $30
    scf
    dec e
    and [hl]
    ld d, $ed
    xor $ed
    xor $ef
    db $ec
    dec e
    or [hl]
    ld d, $e8
    inc d
    cp l
    ld b, d
    sbc $21
    db $d3
    cpl
    db $f4
    rrca
    db $db
    inc l
    ld l, d
    sbc l
    and h
    ld e, [hl]
    rlca
    jr c, jr_030_7303

    ld l, d
    db $76
    pop hl
    ld l, $59
    db $e3
    inc c
    ld e, e
    or h
    ld l, [hl]
    and c
    xor e
    or h
    sbc d
    ld a, d
    cp b
    ld h, l
    inc [hl]
    adc d
    ld l, a
    ret nc

    rst $08
    ld [hl], b
    adc d
    ld d, l
    or d
    ld l, h
    inc sp
    jp hl


    pop bc
    add $82
    db $db
    jr jr_030_73bf

    db $ed
    inc de
    dec l
    pop de
    add [hl]
    cp e
    ld b, $eb
    sub [hl]
    ld e, e
    ld a, [bc]
    ret c

    ld h, d
    ret z

    jp nz, $96a8

    db $fc
    ld h, l
    rst $28
    jp nc, $d13f

    ld a, $97
    ld a, b
    push bc
    inc hl
    jp hl


    rra
    and $17
    add sp, $1f
    xor $19
    db $eb
    inc e

jr_030_73bf:
    dec e
    sbc d
    jr nz, @-$47

    ld a, b
    rst $10
    ld e, b
    ld c, c
    jp c, $a4a8

    adc c
    xor d
    ld d, e
    ld c, e
    inc hl
    and h
    adc a
    ld l, a
    db $ed
    ld e, $eb
    ld a, [de]
    sub d
    ld e, e
    dec d
    dec h
    sub c
    ld d, l
    jp z, $c4d2

    dec h
    pop af
    or $e8
    inc d
    cp a
    ld b, e
    sbc $23
    jp nc, $f52f

    ld c, $1d
    ld c, d
    inc h
    sbc l
    ld h, d
    db $76
    ld c, c
    xor [hl]
    ld [hl], c
    dec e
    ld e, b
    inc h

jr_030_73f8:
    dec e
    and b
    rst $38
    ld c, l
    dec e
    ccf
    ccf
    ld c, l
    dec e
    sbc a
    ccf
    ld c, l
    dec e
    rst $38
    ccf

jr_030_7407:
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
    ldh [rIE], a
    dec c
    rst $30
    ld [$421d], sp
    jr nz, jr_030_73f8

    add hl, hl
    ei
    inc b
    db $db
    inc h
    ld l, [hl]
    sub c
    xor e
    ld d, h
    rst $18
    jr nz, jr_030_7407

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
    cp l
    ld b, d
    db $ed
    ld [de], a
    rst $38
    nop
    cp c
    ld b, [hl]
    dec e
    inc b
    ld h, b
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
    nop
    rst $38
    nop
    cp e
    nop
    add hl, sp
    nop
    rst $10
    nop
    rst $28
    nop
    rst $10
    nop
    add hl, sp
    nop
    cp e
    nop
    ld a, [hl]
    nop
    and l
    nop
    db $db
    nop
    and l
    dec e
    ld [hl], d
    ld h, e
    ld a, [hl]
    adc b
    ld bc, $b400
    nop
    ld a, a
    nop
    ld [hl], h
    nop
    xor d
    nop
    ld [hl], b
    nop
    dec bc
    nop
    inc hl
    ld [$0010], sp
    and a
    nop
    ei
    nop
    ld b, h
    nop
    xor d
    nop
    ld de, $ff00
    nop
    rst $38
    nop
    add hl, de
    nop
    and h
    nop
    xor $00
    dec d
    nop
    and l
    nop
    ld d, $00
    adc $00
    sub $00
    daa
    nop
    xor e
    nop
    ld [hl], b
    nop
    ld a, [hl+]
    nop
    and l
    nop
    ld e, [hl]
    nop
    dec h
    nop
    adc b
    nop
    rst $38
    dec e
    sub h
    ld h, a
    and h
    ld [$0010], sp
    adc $00
    call nc, $0200
    nop
    ld d, h
    nop
    dec l
    nop
    jp z, $a510

    db $10
    add hl, bc
    nop
    ld [hl], e
    nop
    dec hl
    nop
    ld h, e
    nop
    xor e
    nop
    or e
    nop
    ld l, e
    nop
    and e
    nop
    ld l, e
    nop
    add $00
    push de
    nop
    xor $00
    sub $01
    call nz, $d600
    nop
    call $d400
    dec e
    and b
    ld e, a
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
    inc e
    nop
    ld bc, $0b0a
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    inc c
    dec c
    inc e
    inc b
    nop
    ld a, [bc]
    dec bc
    nop
    ld bc, $f51c
    ld hl, sp+$02
    inc bc
    inc c
    dec c
    inc e
    ld b, $00
    ld c, $0f
    ld c, $0f
    inc e
    ld b, $02
    ld [bc], a
    inc bc
    inc e
    inc d
    ld a, [bc]
    ld [$1c09], sp
    ld [$1400], sp
    dec d
    inc d
    dec d
    inc e
    ld [$1c02], sp
    ld [hl-], a
    inc c
    ld a, [bc]
    dec bc
    inc e
    jr z, jr_030_755a

jr_030_755a:
    ld d, $17
    ld d, $17
    inc e
    jr z, jr_030_7563

    inc e
    ld [hl-], a

jr_030_7563:
    inc c
    inc c
    dec c
    db $10
    ld de, $1110
    jr jr_030_7585

    jr jr_030_7587

    inc e
    add h
    nop
    inc e
    jr nc, @+$10

    ld c, $0f
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    inc e
    and h
    nop
    ld c, $0f
    inc e
    ld [hl-], a

jr_030_7585:
    inc c
    inc h

jr_030_7587:
    dec h
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    inc e
    call nz, Call_000_2400
    dec h
    inc e
    ld [hl-], a
    inc c
    ld h, $27
    ld l, [hl]
    ld h, a
    ld h, [hl]
    inc e
    push hl
    inc b
    ld l, a
    ld h, $27
    inc e
    ld [hl-], a
    inc c
    jr z, jr_030_75d1

    ld l, [hl]
    inc e
    and $05
    ld h, a
    ld l, a
    jr z, jr_030_75d9

    inc e
    ld [hl-], a
    inc c
    ld a, [hl+]
    dec hl
    ld l, e
    ld l, h
    ld l, h
    ld l, h
    inc e
    and $00
    ld l, h
    ld l, h
    ld l, h
    ld l, l
    ld a, [hl+]
    dec hl
    inc e
    ld [hl-], a
    inc c
    ld h, b
    ld h, c
    inc e
    ld b, d
    db $10
    ld l, [hl]
    ld h, [hl]
    ld h, a
    ld l, a
    inc e
    ld b, d
    ld [de], a

jr_030_75d1:
    inc e
    ld [hl-], a
    inc c
    ld h, d
    ld h, e
    inc e
    ld h, d
    db $10

jr_030_75d9:
    ld l, [hl]
    ld h, a
    ld h, [hl]
    ld l, a
    inc e
    ld h, d
    ld [de], a
    inc e
    ld [hl-], a
    rra
    inc a
    inc b
    inc e
    pop bc
    ld de, $1c01
    ld c, b
    stop
    inc e
    pop bc
    ld [de], a
    inc e
    inc sp
    add hl, bc
    dec b
    ld b, $1c
    pop hl
    ld de, $1c07
    ld l, b
    db $10
    inc e
    ldh [rNR14], a
    inc e
    and b
    ld hl, sp+$00
    ld [$620a], sp
    ld l, d
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
    inc bc
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
    ld bc, $41cd
    ld e, c
    ld [hl+], a
    ld a, [hl+]
    adc d
    sbc [hl]
    add b
    add b
    pop hl
    ld h, c
    ld hl, sp+$38
    xor a
    ld e, a
    ccf
    ret nz

    dec b
    sub l
    ld b, e
    db $db
    inc hl
    ld a, e
    rlca
    ld b, a
    rrca
    ld c, $b3
    or b
    db $fd
    ld [c], a
    or $09
    push de
    push de
    add b
    db $ec
    add b
    add b
    rst $38
    rst $38
    sbc a
    rst $18
    xor a
    xor a
    adc a
    rst $28
    adc a
    rst $28
    add hl, hl
    add hl, hl
    nop
    cp c
    nop
    nop
    rst $38
    ld a, [bc]
    db $76
    dec b
    add hl, sp
    ld a, c
    nop
    rst $38
    ld a, [bc]
    ld [hl], h

jr_030_7685:
    nop
    cp $0a
    add a
    ld bc, $fffd
    sub a
    sub a
    nop
    db $fc
    ld a, [bc]
    ld [hl], h
    inc b
    ld a, a
    rst $38
    cp a
    rst $38
    add hl, hl
    add hl, hl
    nop
    sbc e
    ld a, [bc]
    ld [hl], h
    ld [bc], a
    db $fd
    ld a, [bc]
    and a
    ld bc, $3f3f
    ld bc, $01ff
    ld bc, $ffff
    pop af
    push af
    ld [hl], c
    ld a, [bc]
    cp c
    ld bc, $f9f9

Call_030_76b2:
    add b
    push hl
    ld a, [bc]
    ld h, h
    nop
    and d
    and d
    add d
    add $a0
    db $e4
    and d
    and d
    or $f6
    nop
    cp h
    ld a, [bc]
    ld [hl], h
    nop
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    ld b, [hl]
    jr nz, @+$66

    ld [hl+], a
    ld [hl+], a
    sbc a
    sbc a
    pop af
    or $c6
    reti


    sbc c
    and [hl]
    adc h
    or e

jr_030_76d8:
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
    ld a, l
    add d
    add a
    ld b, a
    add c
    ld a, $1f
    jr nz, jr_030_76d8

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
    jr jr_030_7685

    ld a, a
    ld a, [bc]
    add e
    nop
    ld a, [$70fa]
    ld [hl], b
    rst $38
    rst $38
    nop
    rst $38
    cp $01
    ld [hl], b
    adc a
    ld a, [bc]
    add e
    ld bc, $1bff
    dec de
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
    pop bc
    ld c, c
    or b
    inc [hl]
    cp $0e
    cp a
    ld b, e
    reti


    ld h, $c2
    dec a
    sbc [hl]
    ld h, c
    ccf
    ret nz

    ld hl, $0165
    sbc l
    ld c, e
    ld c, e
    rst $38
    rst $38
    xor a
    ld l, a
    db $e4
    inc h
    db $fd
    dec a
    adc a
    ld l, a
    adc a
    adc a
    adc a
    xor a
    adc a
    rst $28
    sbc a
    rst $18
    ld a, [bc]
    ld h, d
    db $10
    adc a
    xor a
    adc a
    xor a
    ld a, [bc]
    db $76
    ld b, $01
    rst $00
    ld a, [bc]
    ld a, d
    db $10
    ld sp, hl
    rst $38
    rst $30
    rst $38
    or $ff
    rst $28
    rst $38
    db $ed
    rst $38
    xor $ff
    ldh a, [rIE]
    rst $38
    rst $38
    rst $18
    rst $38
    rst $20
    rst $38
    or e
    rst $38
    ei
    rst $38
    db $db
    rst $38
    inc sp
    rst $38
    rrca
    ld a, [bc]
    db $76
    inc bc
    db $fc
    ld a, [bc]
    and c
    ld de, $0afe
    and e
    ld de, $f1f1
    ld a, [bc]
    cp d
    nop
    pop af
    push af
    ld a, [bc]
    or b
    inc d
    cp $fe
    nop
    adc h
    ld a, [bc]
    call nc, $ff08
    rst $38
    ld bc, $0a4d
    or h
    nop
    inc hl
    inc hl
    inc bc
    ld b, a
    ld hl, $2365
    inc hl
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
    ld a, [bc]
    push hl
    ld bc, $d8c7
    ldh [$e7], a
    db $dd
    db $dd
    di
    db $fc
    dec c
    adc $72
    ld a, [bc]
    push af
    rlca
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
    rst $18
    call c, $f0f7
    ld e, a
    ld e, a
    rst $18
    sbc $7e
    ld a, c
    db $fc
    jp $827d


    ei
    inc b
    ld b, e
    cp h
    rra
    ldh [$59], a
    and l
    xor b
    ld c, e
    ld l, [hl]
    ld h, c
    adc a
    or b
    add c
    sbc [hl]
    ret nz

    jp $c3c3


    ld [c], a
    ld [$fefe], a
    ld bc, $f0f9
    rrca
    rst $38
    nop
    rst $38
    nop
    ld bc, $37fe
    scf
    ld bc, $698d
    sub [hl]
    ld a, [bc]
    jr nz, jr_030_7837

    pop bc
    ld a, $ff
    nop
    rst $38
    rst $38
    ld h, d
    ld l, d
    rst $38
    ld a, a
    ldh [rIE], a
    rrca
    ldh a, [$1f]
    ldh [rIE], a
    nop

jr_030_7837:
    add c
    ld a, a
    ldh a, [$f0]
    ld bc, $ffad
    rst $38
    nop
    ldh [$80], a
    ld a, a
    ld a, [bc]
    ld d, h
    jr nz, jr_030_7837

    rst $38
    dec de
    dec de
    ld h, d
    ld l, d
    cp $f1
    dec e
    ld e, $07
    rst $30
    ld b, c
    cp l
    add c
    ld a, c
    rrca
    rst $08
    dec de
    dec de
    ld bc, $0aad
    ld [bc], a
    ld b, $be
    ld a, $c9
    dec [hl]
    dec sp
    call nz, Call_000_120a
    ld [$bfbf], sp
    rst $08
    jr nc, jr_030_7877

    ld [bc], a
    dec b

jr_030_786f:
    ld [hl], c
    and c
    and c
    rst $38
    rst $38
    rra
    ldh [$0a], a

jr_030_7877:
    ld [de], a
    ld b, $80
    or b
    rst $38
    rst $38
    sbc $21
    ld a, [bc]
    ld [bc], a
    ld [$afaf], sp
    ccf
    ret nz

    ld bc, $0ad5
    inc d
    ld [bc], a

jr_030_788b:
    inc bc
    ld h, e
    dec a
    inc a
    call c, $efe3
    db $10
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
    jr nz, jr_030_786f

    ld b, b
    rra
    ldh [$7e], a
    add c
    ld a, [bc]
    jr nz, jr_030_78e8

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

    ld [hl], e
    ld a, e
    adc c
    xor d
    and a
    ld e, b
    ld a, [bc]
    ld b, $36
    db $dd
    db $dd
    jr nz, jr_030_788b

    db $fd
    ld [bc], a
    ld a, [bc]
    ld d, $36
    ld a, $c1
    ld a, a
    add b

jr_030_78e8:
    sbc $21
    db $ed
    ld [de], a
    rst $28
    rra

jr_030_78ee:
    ret nc

    rla
    rst $00
    jr jr_030_78ee

    ld h, h
    cp $01
    cp a
    ld b, b
    jp hl


    ld d, $f7
    ld [$e8e7], sp
    dec bc
    add sp, -$0b
    inc c
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
    cp $2c
    dec de
    ld [c], a
    rst $20
    ld d, $1f
    ld e, $fb
    ld a, [$3233]
    ld de, $3f11
    ccf
    rst $38
    ldh a, [$0a]
    and b
    rst $38
    ld c, l
    ld a, [bc]
    rst $38
    ccf
    ld c, l
    ld a, [bc]
    ld e, a
    ld c, a
    ld c, l
    ld a, [bc]
    cp a
    ld c, a
    ld c, l
    ld a, [bc]
    rra
    ld e, a
    ld c, l
    ld a, [bc]
    ld a, a
    ld e, a
    ld c, l
    ld a, [bc]
    rst $18
    ld e, a
    ld c, l
    ld a, [bc]
    ccf
    ld l, a
    ld c, l
    ld a, [bc]
    sbc a
    ld l, a
    ld c, l
    ld a, [bc]
    rst $38
    ld l, a
    ld c, l
    ld a, [bc]
    ld e, a
    ld a, a
    ld c, l
    ld a, [bc]
    cp a
    ld a, a
    dec l
    nop
    ld [bc], a
    inc [hl]
    ld c, $0f
    nop
    ld bc, $0234
    ld a, [bc]
    ld c, $0f
    rst $38
    inc [hl]
    inc d
    rlca
    ld e, $1f
    ld [bc], a
    inc bc
    inc [hl]
    ld [hl+], a
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc [hl]
    ld [hl+], a
    nop
    ld e, $1f
    inc [hl]
    inc d
    ld [$0034], sp
    inc b
    ld d, $17
    jr jr_030_7999

    ld a, [de]
    dec de
    inc [hl]
    ld c, $0f
    dec b
    inc b
    dec b
    inc c
    dec c
    inc e
    dec c
    inc e
    dec e
    inc b
    dec b
    inc [hl]
    jr nc, jr_030_79a2

    inc bc
    jr nc, jr_030_79c7

    inc [hl]
    add [hl]
    inc b

jr_030_7999:
    inc [hl]
    db $10
    rrca
    ld bc, $0504
    ld [hl-], a
    inc sp
    inc [hl]

jr_030_79a2:
    and [hl]
    inc b
    inc b
    dec b
    inc [hl]
    ld [hl-], a
    ld c, $34
    add [hl]
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_030_79db

    inc [hl]
    add [hl]
    nop
    inc [hl]
    ld [de], a
    inc c
    inc [hl]
    and h
    ld [bc], a
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    inc [hl]
    and [hl]
    nop
    inc [hl]
    ld [hl-], a
    inc c

jr_030_79c7:
    inc [hl]
    add [hl]
    nop
    db $10
    ld de, $1312
    inc [hl]
    inc b
    inc d
    inc [hl]
    ld [de], a
    inc c
    inc [hl]
    and [hl]
    nop
    inc d
    dec d
    ld [hl+], a
    inc hl

jr_030_79db:
    inc [hl]
    inc h
    inc d
    inc [hl]
    ld a, [c]
    rrca
    ld bc, $3736
    ld [hl], $37
    inc [hl]
    ld b, h
    inc d
    inc [hl]
    ld [de], a
    rra
    ld bc, $3938
    jr c, jr_030_7a2a

    inc [hl]
    ld h, h
    inc d
    inc [hl]
    ld a, [c]
    rrca
    ld bc, $8234
    jr jr_030_7a30

    ld [de], a
    rra
    ld bc, $a234
    jr jr_030_7a37

    ld [hl-], a
    inc c
    jr nz, @+$23

    inc [hl]
    jp nz, Jump_000_3012

    ld sp, $c234
    ld [de], a
    inc [hl]
    ld [de], a
    inc c
    inc [hl]
    ldh [rNR14], a
    inc [hl]
    ldh a, [rP1]
    inc [hl]
    ldh [rNR12], a
    inc [hl]
    inc d
    ld [$0800], sp
    inc d
    ld h, d
    ld l, d
    jp nz, $e2ca

    ld [$cdc1], a
    ld h, c

jr_030_7a2a:
    ld h, l
    ld [hl], c
    ld [hl], l
    and b
    and h
    or b

jr_030_7a30:
    or h
    ld bc, $00ad
    call nc, $c000

jr_030_7a37:
    add hl, bc
    db $eb
    ld bc, $0263
    ld h, d
    ld [bc], a
    ld [hl-], a
    inc bc
    inc sp
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
    inc bc
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
    ld bc, $41cd
    ld e, c
    ld [hl+], a
    ld a, [hl+]
    adc d
    sbc [hl]
    add b
    add b
    pop hl
    ld h, c
    ld hl, sp+$38
    xor a
    ld e, a
    ccf
    ret nz

    dec b
    sub l
    ld b, e
    db $db
    inc hl
    ld a, e
    rlca
    ld b, a
    rrca
    ld c, $b3
    or b
    db $fd
    ld [c], a
    or $09
    ret nz

    ret nz

    rst $10
    ret z

    and b
    sbc a
    xor d
    sub l
    dec h
    ld e, d
    ld a, [bc]
    ld [hl], l
    dec b
    ld a, d
    xor d
    push de
    ld hl, sp-$08
    db $f4
    inc b
    ld [$a6f0], sp
    ld e, d
    ld d, h
    xor b
    and l
    ld e, c
    ld d, l
    xor c
    and l
    ld e, e
    add l
    ld a, [$95aa]
    add l
    cp d
    xor d
    sub l
    and l
    sbc d
    adc d
    or l
    add c
    cp [hl]
    rst $00
    ret z

    ld d, l
    xor c
    and d
    ld e, h
    ld d, c
    xor [hl]
    xor b
    ld d, a
    ld d, l
    xor d
    xor d
    ld d, l
    ld b, b
    cp a
    sbc a
    ld h, b
    rst $38
    nop
    ccf
    rst $08
    or b
    ld [hl], b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ld h, b
    ld h, b
    sbc a
    sbc a
    sub c
    sbc c
    rst $38
    nop
    ld sp, hl
    and $79
    ld a, [hl]
    rla
    db $f4
    ld l, a
    ld l, h
    dec e
    inc e
    ei
    ld a, [$8a0b]
    rst $38
    rst $38
    nop
    nop
    nop
    ld d, l
    nop
    ld a, a
    rst $38
    rst $38
    nop
    ld a, a
    nop
    ld h, e
    inc b
    ld l, a
    rst $38
    rst $38
    ld bc, $0101
    ld d, l
    ld bc, $ffff
    rst $38
    ld bc, $01ff
    adc a
    ld de, $9fbf
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
    add c
    ret


    ret z

    set 4, a
    jr jr_030_7b28

jr_030_7b28:
    rst $38
    inc d
    sbc b
    nop
    nop
    rst $38
    cp $01
    add e
    add e
    ld a, h
    ld a, l
    or e
    ld c, h
    inc d
    ld b, $16
    db $e3
    add sp, $1d
    call c, Call_000_3ec2
    add hl, bc
    push af
    ld d, l
    xor e
    xor c
    ld d, a
    dec b
    ld sp, hl
    ld bc, $10f9
    rst $10
    ld a, [c]
    ld a, [c]
    inc hl
    inc hl
    ld sp, $1035
    ld d, [hl]
    db $10
    jp nc, $be3c

    rst $38
    rst $38
    jr nz, jr_030_7b86

    dec d
    ld d, l
    inc b
    ld h, h
    dec c
    ld l, l
    adc l
    cp l
    add [hl]
    or [hl]
    ld [bc], a
    ld [hl-], a
    rst $38
    rst $38
    ld b, a
    rst $30
    rst $00
    rst $00
    adc c
    adc c
    adc e
    xor a
    add e
    cp e
    jp $cff3


    xor $f7
    ldh a, [$a5]
    sbc d
    jp z, Jump_030_4575

    ld a, [$6214]
    db $10
    ld l, d
    ld d, l
    and l
    sbc d

jr_030_7b86:
    xor d
    push de
    inc d
    jr z, jr_030_7b9b

    ld d, l
    xor e
    and l
    ld e, c
    ld d, c
    xor l
    and c
    ld e, l
    ld d, l
    xor c
    and l
    ld e, c
    add $c6
    and d
    and d

jr_030_7b9b:
    add e
    adc e
    add c
    adc l
    pop bc
    push bc
    pop hl
    push hl
    ei
    ld a, e
    rst $38
    rra
    ld h, b
    ld l, e
    reti


    reti


    inc b
    call nz, $c707
    rlca
    ld h, a
    inc d
    ld a, [de]
    nop
    rst $38
    rst $38
    pop de
    reti


    or c
    ld sp, hl
    rst $08
    rst $38
    and b
    xor a
    rst $18
    ld e, a
    pop de
    ld e, c
    or c
    ld a, c
    ld a, a
    sbc a
    rrca
    adc [hl]
    dec de
    sbc [hl]
    rst $20
    cp $0b
    ld [$f4f7], a
    dec c
    adc [hl]
    dec de
    sbc h
    db $fd
    ld a, [c]
    inc b
    ld l, a
    ld a, [de]
    ld b, a
    ld [de], a
    ld c, a
    ld [hl+], a
    ld a, [hl-]
    rra
    rra
    inc d
    ret z

    nop
    ld de, $117f
    cp a
    ld l, c
    rra
    ld c, c
    ccf
    adc c
    jp hl


    ld [hl], c
    ld [hl], c
    inc d
    ret c

    nop
    ld de, $daff
    jp c, $a888

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
    inc d
    push hl
    ld bc, $d8c7
    ldh [$e7], a
    db $dd
    db $dd
    di
    db $fc
    dec c
    adc $72
    inc d
    push af
    rlca
    ld de, $3b7f
    ld l, [hl]
    dec sp
    ld l, [hl]
    ld a, [hl+]
    dec sp
    ld a, [hl+]
    dec sp
    inc d
    ret nz

    nop
    rst $38
    rst $38
    ld de, $b9ff
    rst $28
    cp c
    rst $28
    xor c
    cp c
    xor c
    cp c
    inc d
    ret nc

    nop
    rst $38
    rst $38
    ld a, $c1
    ld a, a
    add b
    sbc $21
    db $ed
    ld [de], a
    rst $28
    rra

jr_030_7c52:
    ret nc

    rla
    rst $00
    jr jr_030_7c52

    ld h, h
    cp $01
    cp a
    ld b, b
    jp hl


    ld d, $f7
    ld [$e8e7], sp
    dec bc
    add sp, -$0b
    inc c

jr_030_7c66:
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
    cp $2c
    dec de
    ld [c], a
    rst $20
    ld d, $1f
    ld e, $fb
    ld a, [$3233]
    ld de, $3f11
    ccf
    rst $38
    ldh a, [$3c]
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
    jr nz, @-$3f

    ld b, b
    rra
    ldh [$7e], a
    add c
    inc d
    and b
    jr nz, jr_030_7c66

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

    inc d
    and b
    rst $38
    ld c, l
    inc d
    rra
    ccf
    ld c, l
    inc d
    ld a, a
    ccf
    ld c, l
    inc d
    rst $18
    ccf
    ld c, l
    inc d
    ccf
    ld c, a
    ld c, l
    inc d
    sbc a
    ld c, a
    ld c, l
    inc d
    rst $38
    ld c, a
    ld c, l
    inc d
    ld e, a
    ld e, a
    ld c, l
    inc d
    cp a
    ld e, a
    ld c, l
    inc d
    rra
    ld l, a
    ld c, l
    inc d
    ld a, a
    ld l, a
    ld c, l
    inc d
    rst $18
    ld l, a
    ld c, l
    inc d
    ccf
    ld a, a
    ld c, l
    inc d
    sbc a
    ld a, a
    ld c, l
    nop
    ld [bc], a
    inc l
    ld c, $0f
    nop
    ld bc, $022c
    ld a, [bc]
    ld c, $0f
    rst $38
    inc l
    inc d
    rlca
    ld e, $1f
    ld [bc], a
    inc bc
    inc l
    ld [hl+], a
    nop
    inc c
    dec c
    inc c
    dec c
    inc b
    dec b
    inc l
    ld [hl+], a
    nop
    ld e, $1f
    inc l
    inc d
    ld [$002c], sp
    inc b
    inc e
    dec e
    inc e
    dec e
    ld a, [bc]
    dec bc
    inc l
    ld c, $0f
    dec b
    ld b, $07
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    ld a, [de]
    dec de
    inc l
    inc l
    nop
    inc l
    ld [hl-], a
    rrca
    ld bc, $1716
    jr z, jr_030_7d6d

    inc l
    adc b
    nop
    inc l
    ld c, h
    nop
    inc l
    ld [de], a
    ld c, $04
    dec b
    ld d, $17
    ld a, [hl+]
    dec hl
    inc l
    xor b
    nop
    inc l
    ld l, h
    nop
    inc l
    ld [hl-], a
    ld c, $24
    dec h
    ld [$1009], sp
    inc l
    ret z

    ld bc, $1211
    jr z, @+$2b

    inc l
    ld [de], a
    inc c
    inc b
    dec b

jr_030_7d6d:
    ld h, $27
    jr jr_030_7d8a

    inc de
    inc l
    add sp, $01
    inc d
    dec d
    ld a, [hl+]
    dec hl
    inc l
    ld [hl-], a
    inc c
    inc l
    adc b
    nop
    inc h
    dec h
    inc l
    ld b, $14
    inc l
    ret nc

    ld c, $2c
    xor b
    nop

jr_030_7d8a:
    ld h, $27
    inc l
    ld h, $14
    inc l
    ldh a, [rIF]
    inc bc
    inc l
    ld b, d
    jr jr_030_7dc3

    ld [de], a
    rra
    ld bc, $622c
    jr jr_030_7dca

    ld [hl-], a
    rra
    dec a
    jr nz, jr_030_7dc4

    inc l
    jp nz, Jump_000_2812

    add hl, hl
    inc l
    jp nz, Jump_000_2c12

    ld [de], a
    inc c
    inc l
    ldh [rNR14], a
    inc l
    ldh a, [rP1]
    inc l
    ldh [rNR12], a
    inc l
    inc d
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_030_7dc3:
    nop

jr_030_7dc4:
    nop
    nop
    nop
    nop
    nop
    nop

jr_030_7dca:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_030_7ec3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_030_7f7f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_030_7fb8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
