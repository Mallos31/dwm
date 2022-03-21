; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $037", ROMX[$4000], BANK[$37]

    scf
    ld a, c
    ld b, b
    ld c, $44
    xor e
    ld b, h
    ld h, a
    ld b, l
    push af
    ld b, l
    and h
    ld b, [hl]
    sbc h
    ld b, a
    ld e, e
    ld c, b
    jp c, $8548

    ld c, c
    ld e, c
    ld c, d
    xor $4d
    adc b
    ld c, [hl]
    inc c
    ld c, a
    ret nc

    ld c, a
    sub c
    ld d, b
    inc a
    ld d, c
    ld sp, hl
    ld d, c
    xor e
    ld d, d
    ld l, h
    ld d, e
    jr nz, jr_037_407f

    or l
    ld d, a
    dec h
    ld e, b
    or l
    ld e, b
    dec [hl]
    ld e, c
    xor l
    ld e, c
    dec [hl]
    ld e, d
    xor e
    ld e, d
    ld [de], a
    ld e, e
    and l
    ld e, e
    dec l
    ld e, h
    db $f4
    ld e, [hl]
    or d
    ld e, a
    ld a, h
    ld h, b
    ld d, d
    ld h, c
    inc e
    ld h, d
    ld [c], a
    ld h, d
    xor [hl]
    ld h, e
    ld e, [hl]
    ld h, h
    scf
    ld h, l
    dec c
    ld h, [hl]
    call nc, $9768
    ld l, c
    ld h, [hl]
    ld l, d
    inc l
    ld l, e
    rst $28
    ld l, e
    and $6c
    xor b
    ld l, l
    ld [hl], d
    ld l, [hl]
    ld c, c
    ld l, a
    jr z, jr_037_40d7

    rst $28
    ld [hl], d
    cp h
    ld [hl], e
    and e
    ld [hl], h
    add hl, sp
    ld [hl], l
    rrca
    db $76
    call c, $9876
    ld [hl], a
    ld h, h
    ld a, b
    ld b, l
    ld a, c
    nop
    ld [$7f02], sp
    ld a, a
    adc b

jr_037_407f:
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

jr_037_40a4:
    ld a, $40
    ld a, $38
    jr c, @+$01

    rst $38
    jr jr_037_40a4

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
    jr z, jr_037_40be

jr_037_40be:
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

jr_037_40d7:
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
    jr jr_037_40fe

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

jr_037_40fe:
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
    jp Jump_037_5002


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
    jr nz, jr_037_4142

    ld [de], a
    nop

jr_037_4142:
    sub b
    sub b
    ld [bc], a
    jr jr_037_414b

    rst $18
    jr nc, jr_037_414c

    ld [de], a

jr_037_414b:
    nop

jr_037_414c:
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
    jr jr_037_4161

    ld [bc], a
    db $10
    ld [de], a
    db $10

jr_037_4161:
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


    jr nc, jr_037_41cb

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

jr_037_41a6:
    jr jr_037_41a6

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

jr_037_41bc:
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

jr_037_41cb:
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

jr_037_41e5:
    rra
    add hl, bc
    ret nz

    ret nz

    ld [bc], a
    db $10
    db $10
    jr jr_037_41e5

    jr nc, jr_037_4220

    ld [bc], a
    jr c, jr_037_4208

    ld [bc], a
    pop hl
    inc bc
    ld [bc], a
    ld [$801a], sp
    add b
    ld [bc], a
    jr c, jr_037_4218

    ld [bc], a
    add $00
    ld [bc], a
    ld a, [hl+]
    ld d, $18
    rst $30
    db $10
    db $10

jr_037_4208:
    ld [bc], a
    jr c, jr_037_4225

    ld [$0208], sp
    ld [hl], b
    nop
    ld b, b
    ccf
    ld [bc], a
    ld l, $14
    jr c, jr_037_424f

    cp [hl]

jr_037_4218:
    ld bc, $9f20
    jr nz, jr_037_41bc

    ld [bc], a
    ld l, $14

jr_037_4220:
    ld [bc], a
    ld h, $12
    ret nz

    cp [hl]

jr_037_4225:
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

jr_037_4232:
    ld sp, $0213
    ld c, b
    ld a, [de]
    db $c3, $c3, $02


    ld e, b
    inc d
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

jr_037_424f:
    db $d3
    adc l
    ld [hl], d
    db $e3
    inc e
    rst $00
    jr c, jr_037_4232

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
    dec sp
    call nz, Call_037_48b7
    ret nz

    ccf
    db $db
    inc h
    dec de
    db $e4
    push hl
    ld a, [de]
    di
    inc c
    jp Jump_000_053c


    ld a, [$837c]
    ld a, l
    add d

jr_037_4286:
    ld a, [hl]
    add c
    cp b
    ld b, a
    add e
    ld a, h
    adc a
    ld [hl], b
    ld l, a
    sub b
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
    cp e
    ld b, h
    ret c

    daa
    sbc a
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
    and [hl]
    ld e, c
    ld d, $e9
    cp b
    ld b, a
    jp $df3c


    jr nz, @-$0f

    db $10
    ld [bc], a
    ld b, b
    inc a
    rst $28
    db $10
    rst $28
    db $10
    ld [bc], a
    ld d, h
    jr c, jr_037_4286

    ld b, b
    rst $18
    jr nz, jr_037_42cd

    ld h, h
    inc a

jr_037_42cd:
    cp [hl]
    ld b, c
    ld a, $c1
    ld [bc], a
    ld a, b
    inc [hl]
    ld a, a
    ld a, a
    add b
    rst $38
    sbc a
    rst $18
    and b
    rst $28
    xor a
    rst $38
    xor d
    db $fd
    and l
    or $a2
    di
    cp $fe
    ld bc, $f9ff
    ld sp, hl
    dec b
    db $fd
    add hl, bc
    add hl, bc
    sub c
    sub c
    ld c, c
    reti


    and l
    ld l, l
    and e
    ld a, [c]
    and a
    db $f4
    xor [hl]
    ld sp, hl
    xor a
    rst $38
    and b
    ldh [$9f], a
    rst $18
    add b
    ret nz

    ld a, a
    ld a, a
    and l
    ld h, l
    ld c, c
    ret


    sub c
    sub c
    add hl, bc
    add hl, de
    dec b
    dec c
    ld sp, hl
    ld sp, hl
    ld [bc], a
    ld c, [hl]
    nop

jr_037_4313:
    ld [bc], a
    ret nz

    inc sp
    rst $38
    sub b
    ret nc

    adc c
    ret


    sub e
    jp c, $f4a7

    cp $fe
    ld bc, $fdfd
    db $fd
    dec b
    push af
    push af
    push af
    push de
    dec [hl]
    and l
    ld h, l
    ld b, l
    push bc
    and l
    and $92
    db $d3
    adc c
    ret


    sub b
    ret c

    and b
    ldh a, [rSC]
    ld [$4532], a
    push bc
    and l
    ld h, l
    ld d, l
    or l
    push af
    push af
    dec b
    dec b
    ld [bc], a
    ld a, [$ac3a]
    db $fc
    xor [hl]
    ld a, [$f9af]
    xor e
    db $fc
    ld [bc], a
    db $10
    ld b, b
    ld sp, hl
    ld sp, hl
    dec b
    push af
    dec [hl]
    dec [hl]
    ld [hl], l
    ld d, l
    push de
    or l
    push de
    dec [hl]
    ld [bc], a
    call z, $a130
    pop af
    and h
    or $aa
    ei
    sub c
    pop de
    ld [bc], a
    db $ec
    ld [hl-], a
    ld b, l
    push bc
    add l
    add l
    dec h
    dec [hl]
    ld d, l
    ld e, l
    adc c
    adc c
    ld [bc], a
    db $fc
    inc [hl]
    sub c
    pop de
    xor d
    ei
    and h
    or $a1
    pop af
    ld [bc], a
    ldh [$30], a
    ld [bc], a
    ret nc

    jr nc, jr_037_4313

    adc c
    ld d, l
    ld e, l
    dec h
    dec [hl]
    add l
    add l
    ld [bc], a
    jr nc, jr_037_43d4

    xor [hl]
    ld sp, hl
    xor l
    ei
    xor d
    cp $ac
    db $fc
    ld [bc], a
    add sp, $34
    push de
    dec [hl]
    push af
    sub l
    ld [hl], l
    ld d, l
    dec [hl]
    dec [hl]
    dec b
    dec b
    db $fd
    db $fd
    ld [bc], a
    ld c, [hl]
    nop
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

jr_037_43d4:
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


    jp c, $7671

    db $c3, $cc, $0f


    ldh a, [rSC]
    and b
    rst $38
    ld c, l
    ld [bc], a
    ld e, a
    ld e, a
    ld c, l
    ld [bc], a
    cp a
    ld e, a
    ld c, l
    ld [bc], a
    rra
    ld l, a
    ld c, l
    ld [bc], a
    ld a, a
    ld l, a
    ld c, l
    ld [bc], a
    rst $18
    ld l, a
    ld c, l
    ld [bc], a
    ccf
    ld a, a
    ld c, l
    ld [bc], a
    sbc a
    ld a, a
    ld c, l
    nop
    ld [bc], a
    inc b
    jr z, jr_037_443c

    inc b
    nop
    ld c, $ff
    inc b
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc b
    jr nz, @+$10

    inc b
    inc d
    ld [$2d2c], sp
    ld [$0409], sp
    ld b, d
    inc c
    inc b
    inc d
    ld [$2f2e], sp
    jr jr_037_4449

    inc b
    ld h, d
    inc c
    inc b
    inc [hl]
    ld a, [bc]
    jr nc, jr_037_4469

    inc b
    add d
    inc c
    inc b

jr_037_443c:
    ld d, h
    ld a, [bc]
    ld [hl-], a
    inc sp
    inc b
    and d
    inc c
    inc b
    ld [hl], h
    rrca
    ld bc, $0100

jr_037_4449:
    ld [bc], a
    inc bc
    inc b
    jp z, $0404

    sub h
    rrca
    ld bc, $1110
    ld [de], a
    inc de
    inc b
    ld [$0404], a
    ld [hl], h
    rrca
    ld bc, $0f0e
    inc b
    ld c, d
    rrca
    dec b
    inc b
    and d
    ld [bc], a
    ld e, $1f
    inc b

jr_037_4469:
    ld l, d
    rrca
    dec b
    ld c, b
    ld c, c
    inc b
    inc b
    ld [de], a
    inc b
    add d
    ld [bc], a
    inc a
    dec a
    inc a
    dec a
    inc b
    ld d, h
    ld a, [bc]
    ld c, d
    ld c, e
    inc b
    inc h
    ld [de], a
    inc b
    and d
    ld [bc], a
    ld a, $3f
    ld a, $3f
    inc b
    inc [hl]
    rra
    inc b
    jr nc, jr_037_4491

    add d
    nop
    inc b
    ld b, d

jr_037_4491:
    db $10
    inc b
    ld d, h
    rra
    inc b
    ld [hl-], a
    inc b
    and d
    nop
    inc b
    ld h, d
    db $10
    inc b
    inc [hl]
    rra
    add hl, bc
    inc b
    sub b
    rra
    ld [$a304], sp
    ld bc, $b004
    inc e
    nop
    ld [bc], a
    ld b, $28
    add hl, hl
    ld b, $00
    ld c, $ff
    ld b, $14
    rlca
    ld a, [hl+]
    dec hl
    ld b, $20
    ld c, $06
    inc d
    ld [$0908], sp
    ld b, $40
    ld [bc], a
    ld c, $0f
    ld b, $40
    inc b
    ld [$0609], sp
    inc d
    ld [$1918], sp
    ld b, $60
    ld [bc], a
    ld e, $1f
    ld b, $60
    inc b
    jr jr_037_44f3

    ld b, $14
    ld [$3130], sp
    ld b, $80
    ld [bc], a
    ld c, $0f
    inc a
    dec a
    ld b, $8a
    inc b
    ld b, $14
    ld [$3332], sp
    ld b, $a0
    ld [bc], a
    ld e, $1f

jr_037_44f3:
    ld a, $3f
    ld b, $aa
    inc b
    ld b, $14
    ld [$0302], sp
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $86
    nop
    ld c, b
    ld c, c
    ld b, $80
    inc b
    ld b, $14
    ld [$1312], sp
    ld [de], a
    inc de
    inc d
    dec d
    ld b, $a6
    nop
    ld c, d
    ld c, e
    ld b, $a0
    inc b
    ld b, $34
    inc c
    ld a, [bc]
    dec bc
    ld b, $c6
    rrca
    rlca
    ld b, $60
    nop
    ld a, [de]
    dec de
    ld b, $e6
    rrca
    rlca
    ld b, $8a
    ld [bc], a
    ld b, h
    ld b, l
    ld b, $c8
    rrca
    dec b
    ld b, $aa
    ld [bc], a
    ld b, [hl]
    ld b, a
    ld b, $e8
    rrca
    dec b
    ld b, $80
    ld [bc], a
    ld b, $46
    inc d
    ld c, b
    ld c, c
    nop
    ld bc, $0302
    ld b, $94
    ld c, $06
    ld h, [hl]
    inc d
    ld c, d
    ld c, e
    db $10
    ld de, $1312
    ld b, $74
    rra
    add hl, bc
    inc h
    dec h
    ld b, $12
    ld a, [bc]
    ld b, $a0
    inc e
    ld h, $27
    ld b, $32
    ld a, [bc]
    nop
    ld [bc], a
    nop
    jr z, @+$2b

    nop
    nop
    ld c, $ff
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, @+$10

    nop
    inc d
    ld [$0908], sp
    nop
    ld b, b
    inc c
    inc h
    dec h
    nop
    inc d
    ld [$1918], sp
    nop
    ld h, b
    inc c
    ld h, $27
    nop
    inc d
    ld [$3d3c], sp
    nop
    add b
    nop
    jr nc, jr_037_45c7

    nop
    add [hl]
    ld b, $00
    ld d, d
    ld a, [bc]
    ld a, $3f
    nop
    and b
    nop
    ld [hl-], a
    inc sp
    nop
    and [hl]
    ld b, $00
    ld [hl], d
    ld a, [bc]
    nop
    add [hl]
    ld [$8c00], sp
    rrca
    ld bc, $a600
    ld [$ac00], sp
    rrca
    ld [bc], a
    jr nc, jr_037_45b9

jr_037_45b9:
    jp nz, $0c0f

    ld [hl-], a
    nop
    ld [c], a
    rrca
    inc c
    nop
    pop bc
    rrca
    inc l
    ld [bc], a
    inc bc

jr_037_45c7:
    inc b
    dec b
    jr nc, jr_037_45fc

    ld b, h
    ld b, l
    nop
    add [hl]
    inc b
    ld b, h
    ld b, l
    nop
    ld d, d
    ld a, [bc]
    ld [de], a
    inc de
    inc d
    dec d
    ld [hl-], a
    inc sp
    ld b, [hl]
    ld b, a
    nop
    and [hl]
    inc b
    ld b, [hl]
    ld b, a
    nop
    ld [hl], d
    ld a, [bc]
    jr z, jr_037_4610

    inc l
    dec l
    nop
    add h
    rra
    add hl, bc
    ld a, [hl+]
    dec hl
    ld l, $2f
    nop
    and h
    rra
    add hl, bc
    nop
    ld [bc], a
    inc b
    inc l
    dec l
    ld c, b
    ld c, c

jr_037_45fc:
    jr nc, jr_037_462f

    jr nc, jr_037_4631

    ld c, $0f
    inc b
    inc b
    nop
    jr nc, jr_037_4638

    inc b
    ld [bc], a
    nop
    rst $38
    inc b
    inc d
    rlca
    ld l, $2f

jr_037_4610:
    ld c, d
    ld c, e
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld e, $1f
    inc b
    inc h
    nop
    ld [hl-], a
    inc sp
    inc b
    ld [hl+], a
    nop
    inc b
    inc d
    ld [$0004], sp
    rrca
    add hl, sp
    inc a
    dec a
    inc a
    dec a
    inc b
    db $10
    rrca
    add hl, bc

jr_037_462f:
    ld a, $3f

jr_037_4631:
    ld a, $3f
    inc b
    jr nc, jr_037_4645

    add hl, bc
    ld c, b

jr_037_4638:
    ld c, c
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    inc d
    rrca
    dec b
    ld c, d
    ld c, e

jr_037_4645:
    db $10
    ld de, $1312
    ld [de], a
    inc de
    inc b
    or h
    rrca
    rlca
    ld b, $07
    ld [$0809], sp
    add hl, bc
    inc b
    call nc, $070f
    ld d, $17
    jr jr_037_4676

    jr jr_037_4678

    inc b
    inc [hl]
    rrca
    ld bc, $2120
    inc b
    ld c, $00
    ld b, b
    ld b, c
    inc b
    ld c, [hl]
    db $10
    inc b
    inc d
    rrca
    ld bc, $2322
    inc b
    ld l, $00

jr_037_4676:
    ld b, d
    ld b, e

jr_037_4678:
    inc b
    ld l, [hl]
    db $10
    inc b
    inc [hl]
    inc c
    inc b
    ld c, [hl]
    ld [de], a
    inc b
    add h
    ld d, $04
    inc d
    inc c
    inc b
    ld l, [hl]
    ld [de], a
    inc b
    and h
    ld d, $04
    inc [hl]
    rrca
    ld bc, $0404
    nop
    inc b
    adc $02
    inc b
    db $d2, $0f, $03

    inc b
    inc h
    nop
    inc b
    xor $02
    inc b
    ld a, [c]
    ld a, [bc]
    nop
    ld [bc], a
    ld a, [bc]
    jr nc, jr_037_46da

    ld a, [bc]
    nop
    nop
    ld b, h
    ld b, l
    ld c, $0f
    ld c, b
    ld c, c
    jr nc, jr_037_46e5

    ld c, b
    ld c, c
    inc h
    dec h
    jr z, jr_037_46e3

    rst $38
    ld a, [bc]
    inc d
    rlca
    ld [hl-], a
    inc sp
    ld a, [bc]
    jr nz, jr_037_46c3

jr_037_46c3:
    ld b, [hl]
    ld b, a
    ld e, $1f
    ld c, d
    ld c, e
    ld [hl-], a
    inc sp
    ld c, d
    ld c, e
    ld h, $27
    ld a, [hl+]
    dec hl
    ld a, [bc]
    inc d
    ld [$000a], sp
    inc b
    jr nz, jr_037_46fa

    ld a, [bc]

jr_037_46da:
    ld a, [bc]
    rrca
    dec bc
    ld [hl+], a
    inc hl
    ld a, [bc]
    ld a, [hl+]
    rrca
    add hl, bc

jr_037_46e3:
    inc a
    dec a

jr_037_46e5:
    ld a, [bc]
    nop
    ld [bc], a
    ld c, b
    ld c, c
    ld b, $07
    ld [$0a09], sp
    inc d
    ld c, $3e
    ccf
    ld a, [bc]
    jr nz, jr_037_46f8

    ld c, d
    ld c, e

jr_037_46f8:
    ld d, $17

jr_037_46fa:
    jr jr_037_4715

    ld a, [bc]
    inc d
    ld [$0302], sp
    ld a, [bc]
    ret nz

    ld [bc], a
    inc b
    dec b
    inc a
    dec a
    inc a
    dec a
    ld a, [bc]
    ld a, [bc]
    nop
    jr nc, jr_037_4740

    ld a, [bc]
    inc d
    ld [$1312], sp
    ld a, [bc]

jr_037_4715:
    ldh [rSC], a
    inc d
    dec d
    ld a, $3f
    ld a, $3f
    ld a, [bc]
    ld a, [hl+]
    nop
    ld [hl-], a
    inc sp
    ld a, [bc]
    inc d
    ld [$0908], sp
    ld a, [bc]
    nop
    ld [de], a
    ld a, [bc]
    ld [$4000], sp
    ld b, c
    ld a, [bc]
    inc c
    ld [de], a
    ld a, [bc]
    inc d
    ld [$1918], sp
    ld a, [bc]
    jr nz, @+$14

    ld a, [bc]
    jr z, jr_037_473d

jr_037_473d:
    ld b, d
    ld b, e
    ld a, [bc]

jr_037_4740:
    inc l
    ld [de], a
    ld a, [bc]
    inc d
    ld [$0c0a], sp
    db $10
    ld a, [bc]
    nop
    nop
    ld c, $0f
    jr nc, jr_037_4780

    ld a, [bc]
    inc c
    rra
    ld bc, $2c0a
    db $10
    ld a, [bc]
    jr nz, jr_037_4759

jr_037_4759:
    ld e, $1f
    ld [hl-], a
    inc sp
    ld a, [bc]
    inc l
    rra
    dec b
    ld a, [bc]
    inc c
    db $10
    ld a, [bc]
    ld c, b
    db $10
    jr nc, jr_037_479a

    nop
    ld bc, $c00a
    nop
    ld a, [bc]
    ld d, h
    inc e
    ld a, [bc]
    inc l
    db $10
    ld a, [bc]
    ld l, b
    db $10
    ld [hl-], a
    inc sp
    db $10
    ld de, $e00a
    nop
    ld a, [bc]
    or h

jr_037_4780:
    ld a, [bc]
    inc b
    dec b
    ld a, [bc]
    ld b, h
    inc d
    jr nc, jr_037_47b9

    ld a, [bc]
    stop
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    and $00
    ld a, [bc]
    ld h, h
    inc d
    ld [hl-], a
    inc sp
    ld a, [bc]
    jr nc, jr_037_4799

jr_037_4799:
    ld a, [bc]

jr_037_479a:
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    ld b, $28
    add hl, hl
    inc l
    dec l
    jr nc, jr_037_47d6

    ld b, h
    ld b, l
    jr nc, jr_037_47da

    ld b, $08
    ld [bc], a
    ld b, h
    ld b, l
    inc h
    dec h
    rst $38
    ld b, $14
    rlca
    ld a, [hl+]
    dec hl
    ld l, $2f
    ld [hl-], a

jr_037_47b9:
    inc sp
    ld b, [hl]
    ld b, a
    ld [hl-], a
    inc sp
    ld b, $28
    ld [bc], a
    ld b, [hl]
    ld b, a
    ld h, $27
    ld b, $14
    ld [$0006], sp
    rrca
    dec l
    ld [$0a09], sp
    dec bc
    ld b, $04
    rrca
    add hl, bc
    jr @+$1b

jr_037_47d6:
    ld a, [de]
    dec de
    ld b, $24

jr_037_47da:
    rrca
    add hl, bc
    ld b, b
    ld b, c
    ld b, $c0
    ld [bc], a
    ld b, $08
    rrca
    dec b
    ld b, d
    ld b, e
    ld b, $e0
    ld [bc], a
    ld b, $28
    rrca
    dec b
    ld b, $08
    inc b
    ld b, $08
    rrca
    dec b
    ld b, $28
    inc b
    ld b, $a8
    rrca
    dec c
    ld b, b
    ld b, c
    ld b, h
    ld b, l

Call_037_4800:
    ld b, $c0
    ld [bc], a
    ld b, $d2
    rrca

Jump_037_4806:
    inc bc
    ld b, d
    ld b, e
    ld b, [hl]
    ld b, a
    ld b, $e0
    ld [bc], a
    ld b, $32
    ld a, [bc]
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    jr nc, jr_037_484a

    ld c, b
    ld c, c
    ld b, h
    ld b, l
    inc a
    dec a
    ld b, $08
    nop
    ld b, $12
    ld a, [bc]
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    dec d
    ld [hl-], a
    inc sp
    ld c, d
    ld c, e
    ld b, [hl]
    ld b, a
    ld a, $3f
    ld b, $28
    nop
    ld b, $32
    inc c
    ld b, $00
    ld [bc], a
    ld b, $88
    db $10
    ld c, b
    ld c, c
    nop
    ld bc, $0302
    jr z, jr_037_4870

    ld b, $14
    ld a, [bc]

jr_037_484a:
    ld b, $20
    ld [bc], a
    ld b, $a8
    db $10
    ld c, d
    ld c, e
    db $10
    ld de, $1312
    ld a, [hl+]
    dec hl
    ld b, $14
    ld [$0200], sp
    nop
    inc l
    dec l
    ld c, b
    ld c, c
    jr nc, jr_037_4895

    nop
    inc b
    ld [bc], a
    inc h
    dec h
    jr z, @+$2b

    nop
    ld c, $00
    rst $38
    nop

jr_037_4870:
    inc d
    rlca
    ld l, $2f
    ld c, d
    ld c, e
    ld [hl-], a
    inc sp
    nop
    inc h
    ld [bc], a
    ld h, $27
    ld a, [hl+]
    dec hl
    nop
    ld l, $00
    nop
    inc d
    ld [$0000], sp
    ld [$0706], sp
    ld [$0009], sp
    ld c, [hl]
    nop
    nop
    inc d
    rrca
    dec b
    ld d, $17

jr_037_4895:
    jr jr_037_48b0

    nop
    ld l, [hl]
    nop
    nop
    inc [hl]
    ld a, [bc]
    nop
    inc b
    inc b
    nop
    add d
    ld b, $00
    inc d
    ld a, [bc]
    nop
    inc h
    inc b
    nop
    and d
    ld b, $00
    ld [hl], h
    rrca
    ld b, e

jr_037_48b0:
    ld b, b
    ld b, c
    nop
    ld a, [bc]
    inc d
    nop
    sub h

Call_037_48b7:
    rrca
    inc bc
    ld b, d
    ld b, e
    nop
    ld a, [hl+]
    inc d
    nop
    ld [hl], h
    rrca
    ld c, l
    nop
    ld d, h
    rra
    add hl, de
    jr z, jr_037_48f1

    ld [bc], a
    inc bc
    nop
    jp nz, $001c

    inc d
    ld [$2b2a], sp
    ld [de], a
    inc de
    nop
    ld [c], a
    inc e
    nop
    inc d
    ld [$0200], sp
    nop
    jr z, jr_037_4908

    inc l
    dec l
    jr nc, jr_037_4914

    jr nc, jr_037_4916

    ld c, $0f
    nop
    inc b
    nop
    inc h
    dec h
    jr z, jr_037_4917

    jr z, jr_037_4919

    rst $38

jr_037_48f1:
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld e, $1f
    nop
    inc h
    nop
    ld h, $27
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    nop

jr_037_4908:
    inc d
    ld [$0908], sp
    ld a, [bc]
    dec bc
    nop
    inc b
    rrca
    add hl, bc
    jr jr_037_492d

jr_037_4914:
    ld a, [de]
    dec de

jr_037_4916:
    nop

jr_037_4917:
    inc h
    rrca

jr_037_4919:
    add hl, bc
    nop
    inc b
    nop
    nop
    inc b
    ld b, $06
    rlca
    ld [$0809], sp
    add hl, bc
    nop
    inc d
    ld [$2400], sp
    nop
    nop

jr_037_492d:
    inc h
    ld b, $16
    rla
    jr jr_037_494c

    jr @+$1b

    nop
    ld [hl], h
    rrca
    ld bc, $2120
    nop
    add b
    inc b
    jr nc, jr_037_4971

    nop
    sub h
    rrca
    ld bc, $2322
    nop
    and b
    inc b
    ld [hl-], a
    inc sp
    nop

jr_037_494c:
    inc d
    ld [$4140], sp
    nop
    nop
    ld e, $00
    inc d
    ld [$4342], sp
    nop
    jr nz, jr_037_4979

    nop
    ld [hl], h
    rrca
    ld bc, $8000
    inc b
    inc a
    dec a
    inc a
    dec a
    nop
    sub h
    rrca
    ld bc, $a000
    inc b
    ld a, $3f
    ld a, $3f

jr_037_4971:
    nop
    inc [hl]
    rra
    add hl, sp
    ld [bc], a
    inc bc
    nop
    ret nz

jr_037_4979:
    ld e, $00
    inc d
    ld [$1312], sp
    nop
    ldh [rNR34], a
    nop
    inc d
    ld [$0200], sp
    nop
    jr z, jr_037_49b3

    jr z, @+$2b

    inc l
    dec l
    jr nc, jr_037_49c1

    ld c, b
    ld c, c
    ld b, h
    ld b, l
    ld c, b
    ld c, c
    inc h
    dec h
    nop
    nop
    nop
    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld l, $2f
    ld [hl-], a
    inc sp
    ld c, d
    ld c, e
    ld b, [hl]
    ld b, a
    ld c, d
    ld c, e
    ld h, $27
    nop
    jr nz, jr_037_49b2

jr_037_49b2:
    nop

jr_037_49b3:
    inc d
    ld [$0000], sp
    ld a, [bc]
    ld b, $07
    ld [$2409], sp
    dec h
    nop
    inc d
    rrca

jr_037_49c1:
    rlca
    ld d, $17
    jr jr_037_49df

    ld h, $27
    nop
    inc d
    ld [$0908], sp
    ld [$0a09], sp
    dec bc
    nop
    ld b, $04
    jr nc, jr_037_4a07

    ld c, h
    ld c, l
    nop
    ld d, d
    ld a, [bc]
    jr jr_037_49f6

    jr @+$1b

jr_037_49df:
    ld a, [de]
    dec de
    nop
    ld h, $04
    ld [hl-], a
    inc sp
    ld c, [hl]
    ld c, a
    nop
    ld [hl], d
    ld a, [bc]
    jr nc, jr_037_4a1e

    nop
    ret nz

    ld [bc], a
    ld c, b
    ld c, c
    ld b, b
    ld b, c
    nop
    adc h

jr_037_49f6:
    nop
    jr nc, jr_037_4a2a

    nop
    ld d, d
    ld a, [bc]
    ld [hl-], a
    inc sp
    nop
    ldh [rSC], a
    ld c, d
    ld c, e
    ld b, d
    ld b, e
    nop
    xor h

jr_037_4a07:
    nop
    ld [hl-], a
    inc sp
    nop
    ld [hl], d
    ld a, [bc]
    ld b, b

Call_037_4a0e:
    ld b, c
    ld b, b
    ld b, c
    nop
    ret nz

    ld b, $00
    adc $0e
    ld b, d
    ld b, e
    ld b, d
    ld b, e
    nop
    ldh [rTMA], a

jr_037_4a1e:
    nop
    xor $0e
    inc a
    dec a
    nop
    ld b, b
    ld d, $48
    ld c, c
    nop
    adc h

jr_037_4a2a:
    nop
    nop
    ld d, d
    ld a, [bc]
    ld a, $3f
    nop
    ld h, b
    ld d, $4a
    ld c, e
    nop
    xor h
    nop
    nop
    ld [hl-], a
    rra
    rlca
    nop
    ld c, d
    stop
    ld d, b
    rra
    add hl, bc
    nop
    ld l, d
    stop
    ldh a, [$0c]
    ld [bc], a
    inc bc
    nop
    ret nz

    inc e
    nop
    ld [de], a
    ld a, [bc]
    ld [de], a
    inc de
    nop
    ldh [rNR32], a
    nop
    ld [hl-], a
    ld a, [bc]
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

jr_037_4a84:
    ld a, $40
    ld a, $38
    jr c, @+$01

    rst $38
    jr jr_037_4a84

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
    jr z, jr_037_4a9e

jr_037_4a9e:
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
    jr jr_037_4ade

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

jr_037_4ade:
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
    jp Jump_037_5002


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
    jr nz, jr_037_4b22

    ld [de], a
    nop

jr_037_4b22:
    sub b
    sub b
    ld [bc], a
    jr jr_037_4b2b

    rst $18
    jr nc, jr_037_4b2c

    ld [de], a

jr_037_4b2b:
    nop

jr_037_4b2c:
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
    jr jr_037_4b41

    ld [bc], a
    db $10
    ld [de], a
    db $10

jr_037_4b41:
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


    jr nc, jr_037_4bab

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

jr_037_4b86:
    jr jr_037_4b86

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

jr_037_4b9c:
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

jr_037_4bab:
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

jr_037_4bc5:
    rra
    add hl, bc
    ret nz

    ret nz

    ld [bc], a
    db $10
    db $10
    jr jr_037_4bc5

    jr nc, jr_037_4c00

    ld [bc], a
    jr c, jr_037_4be8

    ld [bc], a
    pop hl
    inc bc
    ld [bc], a
    ld [$801a], sp
    add b
    ld [bc], a
    jr c, jr_037_4bf8

    ld [bc], a
    add $00
    ld [bc], a
    ld a, [hl+]
    ld d, $18
    rst $30
    db $10
    db $10

jr_037_4be8:
    ld [bc], a
    jr c, jr_037_4c05

    ld [$0208], sp
    ld [hl], b
    nop
    ld b, b
    ccf
    ld [bc], a
    ld l, $14
    jr c, jr_037_4c2f

    cp [hl]

jr_037_4bf8:
    ld bc, $9f20
    jr nz, jr_037_4b9c

    ld [bc], a
    ld l, $14

jr_037_4c00:
    ld [bc], a
    ld h, $12
    ret nz

    cp [hl]

jr_037_4c05:
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

jr_037_4c12:
    ld sp, $0213
    ld c, b
    ld a, [de]
    db $c3, $c3, $02


    ld e, b
    inc d
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

jr_037_4c2f:
    db $d3
    adc l
    ld [hl], d
    db $e3
    inc e
    rst $00
    jr c, jr_037_4c12

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
    dec sp
    call nz, Call_037_48b7
    ret nz

    ccf
    db $db
    inc h
    dec de
    db $e4
    push hl
    ld a, [de]
    di
    inc c
    jp Jump_000_053c


    ld a, [$837c]
    ld a, l
    add d

jr_037_4c66:
    ld a, [hl]
    add c
    cp b
    ld b, a
    add e
    ld a, h
    adc a
    ld [hl], b
    ld l, a
    sub b
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
    cp e
    ld b, h
    ret c

    daa
    sbc a
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
    and [hl]
    ld e, c
    ld d, $e9
    cp b
    ld b, a
    jp $df3c


    jr nz, @-$0f

    db $10
    ld [bc], a
    ld b, b
    inc a
    rst $28
    db $10
    rst $28
    db $10
    ld [bc], a
    ld d, h
    jr c, jr_037_4c66

    ld b, b
    rst $18
    jr nz, jr_037_4cad

    ld h, h
    inc a

jr_037_4cad:
    cp [hl]
    ld b, c
    ld a, $c1
    ld [bc], a
    ld a, b
    inc [hl]
    ld a, a
    ld a, a
    add b
    rst $38
    sbc a
    rst $18
    and b
    rst $28
    xor a
    rst $38
    xor d
    db $fd
    and l
    or $a2
    di
    cp $fe
    ld bc, $f9ff
    ld sp, hl
    dec b
    db $fd
    add hl, bc
    add hl, bc
    sub c
    sub c
    ld c, c
    reti


    and l
    ld l, l
    and e
    ld a, [c]
    and a
    db $f4
    xor [hl]
    ld sp, hl
    xor a
    rst $38
    and b
    ldh [$9f], a
    rst $18
    add b
    ret nz

    ld a, a
    ld a, a
    and l
    ld h, l
    ld c, c
    ret


    sub c
    sub c
    add hl, bc
    add hl, de
    dec b
    dec c
    ld sp, hl
    ld sp, hl
    ld [bc], a
    ld c, [hl]
    nop

jr_037_4cf3:
    ld [bc], a
    ret nz

    inc sp
    rst $38
    sub b
    ret nc

    adc c
    ret


    sub e
    jp c, $f4a7

    cp $fe
    ld bc, $fdfd
    db $fd
    dec b
    push af
    push af
    push af
    push de
    dec [hl]
    and l
    ld h, l
    ld b, l
    push bc
    and l
    and $92
    db $d3
    adc c
    ret


    sub b
    ret c

    and b
    ldh a, [rSC]
    ld [$4532], a
    push bc
    and l
    ld h, l
    ld d, l
    or l
    push af
    push af
    dec b
    dec b
    ld [bc], a
    ld a, [$ac3a]
    db $fc
    xor [hl]
    ld a, [$f9af]
    xor e
    db $fc
    ld [bc], a
    db $10
    ld b, b
    ld sp, hl
    ld sp, hl
    dec b
    push af
    dec [hl]
    dec [hl]
    ld [hl], l
    ld d, l
    push de
    or l
    push de
    dec [hl]
    ld [bc], a
    call z, $a130
    pop af
    and h
    or $aa
    ei
    sub c
    pop de
    ld [bc], a
    db $ec
    ld [hl-], a
    ld b, l
    push bc
    add l
    add l
    dec h
    dec [hl]
    ld d, l
    ld e, l
    adc c
    adc c
    ld [bc], a
    db $fc
    inc [hl]
    sub c
    pop de
    xor d
    ei
    and h
    or $a1
    pop af
    ld [bc], a
    ldh [$30], a
    ld [bc], a
    ret nc

    jr nc, jr_037_4cf3

    adc c
    ld d, l
    ld e, l
    dec h
    dec [hl]
    add l
    add l
    ld [bc], a
    jr nc, jr_037_4db4

    xor [hl]
    ld sp, hl
    xor l
    ei
    xor d
    cp $ac
    db $fc
    ld [bc], a
    add sp, $34
    push de
    dec [hl]
    push af
    sub l
    ld [hl], l
    ld d, l
    dec [hl]
    dec [hl]
    dec b
    dec b
    db $fd
    db $fd
    ld [bc], a
    ld c, [hl]
    nop
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

jr_037_4db4:
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


    jp c, $7671

    db $c3, $cc, $0f


    ldh a, [rSC]
    and b
    rst $38
    ld c, l
    ld [bc], a
    ld e, a
    ld e, a
    ld c, l
    ld [bc], a
    cp a
    ld e, a
    ld c, l
    ld [bc], a
    rra
    ld l, a
    ld c, l
    ld [bc], a
    ld a, a
    ld l, a
    ld c, l
    ld [bc], a
    rst $18
    ld l, a
    ld c, l
    ld [bc], a
    ccf
    ld a, a
    ld c, l
    ld [bc], a
    sbc a
    ld a, a
    ld c, l
    nop
    ld [bc], a
    ld b, $28
    add hl, hl
    ld b, $00
    ld c, $ff
    ld b, $14
    rlca
    ld a, [hl+]
    dec hl
    ld b, $20
    ld c, $06
    inc d
    ld [$2d2c], sp
    ld [$0609], sp
    ld b, d
    inc c
    ld b, $14
    ld [$2f2e], sp
    jr @+$1b

    ld b, $62
    inc c
    ld b, $34
    ld a, [bc]
    inc a
    dec a
    ld b, $82
    inc c
    ld b, $54
    ld a, [bc]
    ld a, $3f
    ld b, $a2
    inc c
    ld b, $34
    ld a, [bc]
    ld c, b
    ld c, c
    ld b, $84
    rrca
    dec bc
    ld c, d
    ld c, e
    ld b, $a4
    rrca
    dec c
    ld c, b
    ld c, c
    nop
    ld bc, $0504
    jr nc, jr_037_4e6b

    ld b, $0a
    inc d
    ld b, $d4
    inc c
    ld c, d
    ld c, e
    db $10
    ld de, $1514
    ld [hl-], a
    inc sp
    ld b, $2a
    inc d
    ld b, $f4
    ld c, $24
    dec h
    inc l
    dec l
    ld b, $0a
    ld [de], a
    ld b, b
    ld b, c
    ld b, b
    ld b, c
    ld b, $14
    ld e, $26
    daa
    ld l, $2f
    ld b, $2a
    ld [de], a
    ld b, d
    ld b, e
    ld b, d
    ld b, e
    ld b, $34
    rra
    add hl, bc

jr_037_4e6b:
    nop
    ld bc, $0302
    ld b, $54
    rra
    add hl, bc
    db $10
    ld de, $1312
    ld b, $34
    rra
    add hl, bc
    inc h
    dec h
    ld b, $12
    ld a, [bc]
    ld b, $60
    inc e
    ld h, $27
    ld b, $32
    ld a, [bc]
    nop
    ld [bc], a
    nop
    jr z, jr_037_4eb6

    nop
    nop
    ld c, $ff
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_037_4ea7

    nop
    inc d
    ld [$0908], sp
    nop
    ld b, b
    ld c, $00
    inc d
    ld [$1918], sp
    nop

jr_037_4ea7:
    ld h, b
    ld c, $00
    inc d
    ld [$3d3c], sp
    inc a
    dec a
    jr nc, @+$33

    nop
    add h
    ld b, $00

jr_037_4eb6:
    add b
    nop
    nop
    inc d
    ld [$3f3e], sp
    ld a, $3f
    ld [hl-], a
    inc sp
    nop
    and h
    ld b, $00
    and b
    nop
    nop
    ld [hl], h
    inc c
    nop
    ret nz

    inc c
    nop
    sub h
    inc c
    nop
    ldh [$0c], a
    nop
    inc d
    ld [$8400], sp
    ld [$8400], sp
    inc b
    nop
    inc d
    ld [$a400], sp
    ld [$a400], sp
    inc b
    nop
    inc d
    ld [$4140], sp
    nop
    ld b, b
    ld e, $00
    inc d
    ld [$4342], sp
    nop
    ld h, b
    ld e, $00
    inc d
    ld [$0302], sp
    nop
    add b
    ld e, $00
    inc d
    ld [$1312], sp
    nop
    and b
    ld e, $00
    inc d
    ld [$0000], sp
    rrca
    dec l
    nop
    ld [bc], a
    inc c
    jr z, jr_037_4f3a

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
    ld [$0908], sp
    inc c
    ld b, b
    inc c
    inc h
    dec h
    inc c
    inc d
    ld [$1918], sp
    inc c
    ld h, b
    inc c
    ld h, $27
    inc c
    inc d
    ld [$3d3c], sp
    inc c
    add b
    ld a, [bc]
    ld b, h

jr_037_4f3a:
    ld b, l
    inc c
    ld d, d
    ld a, [bc]
    ld a, $3f
    inc c
    and b
    ld a, [bc]
    ld b, [hl]
    ld b, a
    inc c
    ld [hl], d
    inc c
    ld b, h
    ld b, l
    nop
    ld bc, $0302
    inc c
    add $02
    inc b
    dec b
    inc c
    sub b
    ld c, $46
    ld b, a
    db $10
    ld de, $1312
    inc c
    and $02
    inc d
    dec d
    inc c
    or b
    inc c
    jr nc, jr_037_4f97

    ld b, h
    ld b, l
    ld b, $07
    inc c
    ld b, b
    inc b
    ld a, [bc]
    dec bc
    inc c
    sub b
    inc c
    ld [hl-], a
    inc sp
    ld b, [hl]
    ld b, a
    ld d, $17
    inc c
    ld h, b
    inc b
    ld a, [de]
    dec de
    inc c
    or b
    inc c
    ld b, b
    ld b, c
    inc c
    ld b, b
    db $10
    jr nc, jr_037_4fb8

    inc c
    ld b, [hl]
    inc d
    inc c
    sub b
    inc c
    ld b, d
    ld b, e
    inc c
    ld h, b
    db $10
    ld [hl-], a
    inc sp
    inc c
    ld h, [hl]
    inc d

jr_037_4f97:
    inc c
    or b
    inc c
    inc c
    call z, Call_037_4800
    ld c, c
    nop
    ld bc, $0504
    inc c
    ld c, d
    rra
    inc bc
    inc c
    db $ec
    nop
    ld c, d
    ld c, e
    db $10
    ld de, $1514
    inc c
    ld l, d
    rra
    inc bc
    jr z, jr_037_4fdf

    inc l
    dec l

jr_037_4fb8:
    ld c, b
    ld c, c
    inc h
    dec h
    inc l
    dec l
    inc c
    ld c, d
    rra
    inc bc
    ld a, [hl+]
    dec hl
    ld l, $2f
    ld c, d
    ld c, e
    ld h, $27
    ld l, $2f
    inc c
    ld l, d
    rra
    inc bc
    nop
    ld [bc], a
    inc b
    inc l
    dec l
    ld c, b
    ld c, c
    ld c, b
    ld c, c
    inc h
    dec h
    inc l
    dec l
    jr nc, jr_037_5010

jr_037_4fdf:
    inc b
    ld a, [bc]
    nop
    inc h
    dec h
    jr z, jr_037_500f

    rst $38
    inc b
    inc d
    rlca
    ld l, $2f
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    ld h, $27
    ld l, $2f
    ld [hl-], a
    inc sp
    inc b
    ld a, [hl+]
    nop
    ld h, $27
    ld a, [hl+]
    dec hl
    inc b
    inc d
    ld [$0004], sp

Jump_037_5002:
    inc c
    ld b, $07
    ld [$0409], sp
    inc d
    rrca
    add hl, bc
    ld d, $17
    jr jr_037_5028

jr_037_500f:
    inc b

jr_037_5010:
    inc [hl]
    ld a, [bc]
    inc b
    ld c, h
    ld [bc], a
    ld a, [bc]
    dec bc
    inc b
    ld a, [bc]
    ld [bc], a
    inc a
    dec a
    inc a
    dec a
    inc b
    inc d
    ld a, [bc]
    inc b
    ld l, h
    ld [bc], a
    ld a, [de]
    dec de
    inc b
    ld a, [hl+]

jr_037_5028:
    ld [bc], a
    ld a, $3f
    ld a, $3f
    inc b
    ld [hl], h
    ld c, $04
    db $c2, $06, $04

    sub b
    rrca
    inc bc
    inc b
    ld [c], a
    ld b, $04
    or b
    rrca
    dec b
    nop
    ld bc, $0302
    inc b
    ld a, [bc]
    inc d
    inc b
    call nc, $010f
    db $10
    ld de, $1312
    inc b
    ld a, [hl+]
    inc d
    inc b
    or h
    rrca
    ld bc, $5004
    nop
    inc b
    ld c, d
    inc d
    inc b
    call nc, $010f
    inc b
    ld [hl], b
    nop
    inc b
    ld l, d
    inc d
    inc b
    inc [hl]
    inc c
    inc b
    ld a, [bc]
    nop
    ld b, b
    ld b, c
    inc b
    adc b
    ld d, $04
    inc d
    inc c
    inc b
    ld a, [hl+]
    nop
    ld b, d
    ld b, e
    inc b
    xor b
    ld d, $04
    ld [hl], h
    rra
    ld bc, $c204
    inc b
    inc b
    ld [$0410], sp
    sub h
    rra
    ld bc, $e204
    inc b
    inc b
    jr z, jr_037_509e

    inc b
    inc d
    ld [$0200], sp
    ld b, $28
    add hl, hl
    ld b, $00
    ld c, $ff
    ld b, $14
    rlca
    ld a, [hl+]

jr_037_509e:
    dec hl
    ld b, $20
    ld c, $06
    inc d
    ld [$0908], sp
    ld b, $40
    ld c, $06
    inc d
    ld [$1918], sp
    ld b, $60
    ld c, $06
    inc d
    ld [$3d3c], sp
    ld b, $80
    ld [bc], a
    ld b, h
    ld b, l
    jr nc, @+$33

    ld b, $8a
    inc b
    ld b, $14
    ld [$3f3e], sp
    ld b, $a0
    ld [bc], a
    ld b, [hl]
    ld b, a
    ld [hl-], a
    inc sp
    ld b, $aa
    inc b
    ld b, $74
    ld c, $44
    ld b, l
    ld b, $88
    rrca
    dec bc
    ld b, [hl]
    ld b, a
    ld b, $a8
    rrca
    dec b
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $c6
    ld b, $00
    ld bc, $0302
    ld b, $14
    ld [$1312], sp
    ld [de], a
    inc de
    inc d
    dec d
    ld b, $e6
    ld b, $10
    ld de, $1312
    ld b, $34
    inc c
    ld a, [bc]
    dec bc
    ld b, $c6
    ld b, $24
    dec h
    ld b, $12
    ld a, [bc]
    ld b, $60
    nop
    ld a, [de]
    dec de
    ld b, $e6
    ld b, $26
    daa
    ld b, $32
    ld a, [bc]
    ld b, b
    ld b, c
    ld b, $80
    ld [de], a
    ld b, $48
    rra
    dec b
    ld b, d
    ld b, e
    ld b, $a0
    ld [de], a
    ld b, $68
    rra
    dec b
    ld b, $02
    db $10

jr_037_512b:
    ld b, $8a
    nop
    ld b, $48
    rra
    dec b
    ld b, $22
    db $10
    ld b, $aa
    nop
    ld b, $68
    rra
    dec b
    nop
    ld [bc], a
    jr nz, @+$2a

jr_037_5140:
    add hl, hl
    inc l
    dec l
    ld c, b
    ld c, c
    inc h
    dec h

jr_037_5147:
    inc l
    dec l
    jr nc, jr_037_517c

    jr nz, jr_037_5157

    nop
    ld b, h
    ld b, l
    inc h
    dec h
    rst $38
    jr nz, jr_037_5169

    rlca
    ld a, [hl+]

jr_037_5157:
    dec hl
    ld l, $2f
    ld c, d
    ld c, e
    ld h, $27
    ld l, $2f
    ld [hl-], a
    inc sp
    jr nz, @+$2c

    nop
    ld b, [hl]
    ld b, a
    ld h, $27

jr_037_5169:
    jr nz, jr_037_517f

    ld [$0908], sp

jr_037_516e:
    ld a, [bc]
    dec bc
    jr nz, jr_037_5176

    rrca
    add hl, bc
    jr jr_037_518f

jr_037_5176:
    ld a, [de]
    dec de
    jr nz, jr_037_519e

    rrca
    add hl, bc

jr_037_517c:
    jr nz, @+$0c

    ld [bc], a

jr_037_517f:
    jr nz, jr_037_5187

    ld b, $20
    add h
    nop
    jr nz, jr_037_519b

jr_037_5187:
    ld [$2a20], sp
    ld [bc], a
    jr nz, jr_037_51b3

    ld b, $20

jr_037_518f:
    and h
    nop
    jr nz, jr_037_5207

    rrca
    add hl, sp
    ld [bc], a
    inc bc
    inc b
    dec b
    ld c, b

jr_037_519a:
    ld c, c

jr_037_519b:
    ld b, $07
    ld a, [bc]

jr_037_519e:
    dec bc
    jr nz, jr_037_512b

    rrca
    inc bc
    ld [de], a
    inc de
    inc d
    dec d
    ld c, d
    ld c, e
    ld d, $17
    ld a, [de]
    dec de
    jr nz, @-$54

    rrca
    inc bc
    jr nz, jr_037_51b3

jr_037_51b3:
    ld [bc], a
    jr nz, jr_037_5140

    inc b
    jr nz, jr_037_5147

    ld c, $20
    jr nz, jr_037_51bf

    jr nz, jr_037_5169

jr_037_51bf:
    inc b
    jr nz, jr_037_51f0

    rra
    dec b
    inc c
    dec c
    ld b, h
    ld b, l
    ld c, b
    ld c, c
    nop
    ld bc, $0504
    jr nz, @+$12

    rrca
    inc bc
    inc e
    dec e
    ld b, [hl]
    ld b, a
    ld c, d
    ld c, e
    db $10
    ld de, $1514
    jr nz, @+$32

    inc c
    jr nz, jr_037_51e1

jr_037_51e1:
    ld [bc], a
    ld c, $0f
    jr nz, jr_037_516e

    db $10
    jr nz, @+$08

    nop
    jr nz, jr_037_51fc

    rrca
    inc bc
    ld e, $1f

jr_037_51f0:
    jr nz, jr_037_519a

    db $10
    jr nz, jr_037_521b

    nop
    jr nz, jr_037_5228

    inc c
    nop
    ld [bc], a
    inc b

jr_037_51fc:
    inc l
    dec l
    ld c, b
    ld c, c
    jr nc, jr_037_5233

    inc b
    inc b
    ld b, $24
    dec h

jr_037_5207:
    jr z, jr_037_5232

    rst $38
    inc b
    inc d
    rlca
    ld l, $2f
    ld c, d
    ld c, e
    ld [hl-], a
    inc sp
    inc b
    inc h
    ld b, $26
    daa
    ld a, [hl+]
    dec hl
    inc b

jr_037_521b:
    inc d
    ld [$0004], sp
    inc c
    ld b, $07
    ld [$0409], sp
    inc d
    rrca
    add hl, bc

jr_037_5228:
    ld d, $17
    jr @+$1b

    inc b
    inc [hl]
    rrca
    ld bc, $3d3c

jr_037_5232:
    inc b

jr_037_5233:
    adc b
    ld b, $04
    inc d
    rrca
    ld bc, $3f3e
    inc b
    xor b
    ld b, $04
    inc [hl]
    rrca
    inc bc
    nop
    ld bc, $0302
    inc b
    db $cc, $02, $04
    inc d
    rrca
    inc bc
    db $10
    ld de, $1312
    inc b
    db $ec
    ld [bc], a
    inc b
    inc [hl]
    rrca
    inc bc
    ld c, $0f
    ld [$0409], sp
    inc c
    ld [de], a
    inc b
    inc d
    rrca
    inc bc
    ld e, $1f
    jr jr_037_5280

    inc b
    inc l
    ld [de], a
    inc b
    db $f4
    rrca
    dec b
    inc b
    inc b
    nop
    ld b, b
    ld b, c
    ld b, b
    ld b, c
    inc b
    inc d
    rra
    dec b
    inc b
    inc h
    nop
    ld b, d
    ld b, e
    ld b, d
    ld b, e

jr_037_5280:
    inc b
    db $f4
    rrca
    dec b
    ld c, h
    ld c, l
    inc b
    inc b
    ld [bc], a
    inc b
    inc d
    rra
    dec b
    ld c, [hl]
    ld c, a
    inc b
    inc h
    ld [bc], a
    inc b
    inc d
    ld [$2928], sp
    inc b
    call z, $0404
    ret nz

    ld d, $04
    inc d
    ld [$2b2a], sp
    inc b
    db $ec
    inc b
    inc b
    ldh [rNR21], a
    inc b
    inc d
    ld [$0200], sp
    nop
    jr z, @+$2b

    inc l
    dec l
    jr nc, @+$33

    nop
    inc b
    ld b, $24
    dec h
    jr z, @+$2b

    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    ld l, $2f
    ld [hl-], a
    inc sp
    nop
    inc h
    ld b, $26
    daa
    ld a, [hl+]
    dec hl
    nop
    inc d
    ld [$0908], sp
    ld a, [bc]
    dec bc
    nop
    inc b
    ld [$0706], sp
    ld [$0009], sp
    inc d
    ld [$1918], sp
    ld a, [de]
    dec de
    nop
    inc h
    ld [$1716], sp
    jr jr_037_5301

    nop
    inc d
    ld [$3d3c], sp
    nop
    add b
    ld c, $00
    inc d
    ld [$3f3e], sp
    nop
    and b
    ld c, $00
    inc d
    ld [$0302], sp
    nop
    ret nz

    nop
    inc b

jr_037_5301:
    dec b
    ld b, h
    ld b, l
    ld b, b
    ld b, c
    nop
    db $ca, $04, $00

    inc d
    ld [$1312], sp
    nop
    ldh [rP1], a
    inc d
    dec d
    ld b, [hl]
    ld b, a
    ld b, d
    ld b, e
    nop
    ld [$0004], a
    inc [hl]
    ld a, [bc]
    nop
    nop
    db $10
    ld a, [bc]
    dec bc
    ld b, h
    ld b, l
    nop
    adc d
    rrca
    inc bc
    jr @+$1b

    nop
    jr nz, jr_037_533d

    ld a, [de]
    dec de
    ld b, [hl]
    ld b, a
    nop
    xor d
    rrca
    inc bc
    nop
    jp z, Jump_037_4806

    ld c, c
    nop
    inc b
    inc b

jr_037_533d:
    nop
    inc d
    ld [$ea00], sp
    ld b, $4a
    ld c, e
    nop
    inc h
    inc b
    nop
    inc d
    ld [$0400], sp
    ld b, $48
    ld c, c
    nop
    call z, $010f
    nop
    inc h
    ld b, $4a
    ld c, e
    nop
    db $ec
    rrca
    ld bc, $c000
    ld [bc], a
    nop
    ret nz

    ld a, [de]
    nop
    db $d4, $0e, $00
    ldh [rNR30], a
    nop
    inc d
    ld [$0200], sp
    nop
    jr z, @+$2b

    inc l
    dec l
    ld c, b
    ld c, c
    ld c, $0f
    ld b, h
    ld b, l
    ld c, b
    ld c, c
    inc h
    dec h
    inc l
    dec l
    ld b, h
    ld b, l
    inc h
    dec h
    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    ld l, $2f
    ld c, d
    ld c, e
    ld e, $1f
    ld b, [hl]
    ld b, a
    ld c, d
    ld c, e
    ld h, $27
    ld l, $2f
    ld b, [hl]
    ld b, a
    ld h, $27
    nop
    inc d
    ld [$0908], sp
    ld a, [bc]
    dec bc
    nop
    inc b
    rrca
    add hl, bc
    jr jr_037_53c1

    ld a, [de]
    dec de
    nop
    inc h
    rrca
    add hl, bc
    inc a
    dec a
    inc a
    dec a
    ld c, b
    ld c, c
    jr nz, jr_037_53d7

    nop
    ld [$050f], sp
    ld a, $3f
    ld a, $3f
    ld c, d
    ld c, e
    ld [hl+], a

jr_037_53c1:
    inc hl
    nop
    jr z, jr_037_53d4

    dec b
    ld b, b
    ld b, c
    nop
    ret nz

    inc b
    nop
    ld a, [bc]
    rrca
    inc bc
    ld b, d
    ld b, e
    nop
    ldh [rDIV], a

jr_037_53d4:
    nop
    ld l, d
    rrca

jr_037_53d7:
    rlca
    nop
    nop
    ld [de], a
    nop
    adc d
    rrca
    rlca
    nop
    jr nz, jr_037_53f4

    nop
    ld a, [hl+]
    rrca
    inc bc
    jr nc, jr_037_5419

    nop
    ld b, b
    ld d, $06
    rlca
    ld a, [bc]
    dec bc
    nop
    db $10
    inc c
    ld [hl-], a
    inc sp

jr_037_53f4:
    nop
    ld h, b
    ld d, $16
    rla
    ld a, [de]
    dec de
    nop
    or b
    rrca
    rlca
    nop
    ret nz

    inc b
    nop
    db $d2, $0f, $05

    nop
    ldh [rDIV], a
    nop
    ld [hl-], a
    ld a, [bc]
    ld [bc], a
    inc bc
    nop
    ret nz

    inc e
    jr z, @+$2b

    nop
    inc d
    ld [$1312], sp
    nop

jr_037_5419:
    ldh [rNR32], a
    ld a, [hl+]
    dec hl
    nop
    inc d
    ld [$0800], sp
    ld [bc], a
    ld a, a
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

jr_037_544b:
    ld a, $40
    ld a, $38
    jr c, @+$01

    rst $38
    jr jr_037_544b

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
    jr z, jr_037_5465

jr_037_5465:
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
    jr jr_037_54a5

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

jr_037_54a5:
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
    jp Jump_037_5002


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
    jr nz, jr_037_54e9

    ld [de], a
    nop

jr_037_54e9:
    sub b
    sub b
    ld [bc], a
    jr jr_037_54f2

    rst $18
    jr nc, jr_037_54f3

    ld [de], a

jr_037_54f2:
    nop

jr_037_54f3:
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
    jr jr_037_5508

    ld [bc], a
    db $10
    ld [de], a
    db $10

jr_037_5508:
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


    jr nc, jr_037_5572

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

jr_037_554d:
    jr jr_037_554d

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

jr_037_5563:
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

jr_037_5572:
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

jr_037_558c:
    rra
    add hl, bc
    ret nz

    ret nz

    ld [bc], a
    db $10
    db $10
    jr jr_037_558c

    jr nc, jr_037_55c7

    ld [bc], a
    jr c, jr_037_55af

    ld [bc], a
    pop hl
    inc bc
    ld [bc], a
    ld [$801a], sp
    add b
    ld [bc], a
    jr c, jr_037_55bf

    ld [bc], a
    add $00
    ld [bc], a
    ld a, [hl+]
    ld d, $18
    rst $30
    db $10
    db $10

jr_037_55af:
    ld [bc], a
    jr c, jr_037_55cc

    ld [$0208], sp
    ld [hl], b
    nop
    ld b, b
    ccf
    ld [bc], a
    ld l, $14
    jr c, jr_037_55f6

    cp [hl]

jr_037_55bf:
    ld bc, $9f20
    jr nz, jr_037_5563

    ld [bc], a
    ld l, $14

jr_037_55c7:
    ld [bc], a
    ld h, $12
    ret nz

    cp [hl]

jr_037_55cc:
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

jr_037_55d9:
    ld sp, $0213
    ld c, b
    ld a, [de]
    db $c3, $c3, $02


    ld e, b
    inc d
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

jr_037_55f6:
    db $d3
    adc l
    ld [hl], d
    db $e3
    inc e
    rst $00
    jr c, jr_037_55d9

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
    dec sp
    call nz, Call_037_48b7
    ret nz

    ccf
    db $db
    inc h
    dec de
    db $e4
    push hl
    ld a, [de]
    di
    inc c
    jp Jump_000_053c


    ld a, [$837c]
    ld a, l
    add d

jr_037_562d:
    ld a, [hl]
    add c
    cp b
    ld b, a
    add e
    ld a, h
    adc a
    ld [hl], b
    ld l, a
    sub b
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
    cp e
    ld b, h
    ret c

    daa
    sbc a
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
    and [hl]
    ld e, c
    ld d, $e9
    cp b
    ld b, a
    jp $df3c


    jr nz, @-$0f

    db $10
    ld [bc], a
    ld b, b
    inc a
    rst $28
    db $10
    rst $28
    db $10
    ld [bc], a
    ld d, h
    jr c, jr_037_562d

    ld b, b
    rst $18
    jr nz, jr_037_5674

    ld h, h
    inc a

jr_037_5674:
    cp [hl]
    ld b, c
    ld a, $c1
    ld [bc], a
    ld a, b
    inc [hl]
    ld a, a
    ld a, a
    add b
    rst $38
    sbc a
    rst $18
    and b
    rst $28
    xor a
    rst $38
    xor d
    db $fd
    and l
    or $a2
    di
    cp $fe
    ld bc, $f9ff
    ld sp, hl
    dec b
    db $fd
    add hl, bc
    add hl, bc
    sub c
    sub c
    ld c, c
    reti


    and l
    ld l, l
    and e
    ld a, [c]
    and a
    db $f4
    xor [hl]
    ld sp, hl
    xor a
    rst $38
    and b
    ldh [$9f], a
    rst $18
    add b
    ret nz

    ld a, a
    ld a, a
    and l
    ld h, l
    ld c, c
    ret


    sub c
    sub c
    add hl, bc
    add hl, de
    dec b
    dec c
    ld sp, hl
    ld sp, hl
    ld [bc], a
    ld c, [hl]
    nop

jr_037_56ba:
    ld [bc], a
    ret nz

    inc sp
    rst $38
    sub b
    ret nc

    adc c
    ret


    sub e
    jp c, $f4a7

    cp $fe
    ld bc, $fdfd
    db $fd
    dec b
    push af
    push af
    push af
    push de
    dec [hl]
    and l
    ld h, l
    ld b, l
    push bc
    and l
    and $92
    db $d3
    adc c
    ret


    sub b
    ret c

    and b
    ldh a, [rSC]
    ld [$4532], a
    push bc
    and l
    ld h, l
    ld d, l
    or l
    push af
    push af
    dec b
    dec b
    ld [bc], a
    ld a, [$ac3a]
    db $fc
    xor [hl]
    ld a, [$f9af]
    xor e
    db $fc
    ld [bc], a
    db $10
    ld b, b
    ld sp, hl
    ld sp, hl
    dec b
    push af
    dec [hl]
    dec [hl]
    ld [hl], l
    ld d, l
    push de
    or l
    push de
    dec [hl]
    ld [bc], a
    call z, $a130
    pop af
    and h
    or $aa
    ei
    sub c
    pop de
    ld [bc], a
    db $ec
    ld [hl-], a
    ld b, l
    push bc
    add l
    add l
    dec h
    dec [hl]
    ld d, l
    ld e, l
    adc c
    adc c
    ld [bc], a
    db $fc
    inc [hl]
    sub c
    pop de
    xor d
    ei
    and h
    or $a1
    pop af
    ld [bc], a
    ldh [$30], a
    ld [bc], a
    ret nc

    jr nc, jr_037_56ba

    adc c
    ld d, l
    ld e, l
    dec h
    dec [hl]
    add l
    add l
    ld [bc], a
    jr nc, jr_037_577b

    xor [hl]
    ld sp, hl
    xor l
    ei
    xor d
    cp $ac
    db $fc
    ld [bc], a
    add sp, $34
    push de
    dec [hl]
    push af
    sub l
    ld [hl], l
    ld d, l
    dec [hl]
    dec [hl]
    dec b
    dec b
    db $fd
    db $fd
    ld [bc], a
    ld c, [hl]
    nop
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

jr_037_577b:
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


    jp c, $7671

    db $c3, $cc, $0f


    ldh a, [rSC]
    and b
    rst $38
    ld c, l
    ld [bc], a
    ld e, a
    ld e, a
    ld c, l
    ld [bc], a
    cp a
    ld e, a
    ld c, l
    ld [bc], a
    rra
    ld l, a
    ld c, l
    ld [bc], a
    ld a, a
    ld l, a
    ld c, l
    ld [bc], a
    rst $18
    ld l, a
    ld c, l
    ld [bc], a
    ccf
    ld a, a
    ld c, l
    ld [bc], a
    sbc a
    ld a, a
    ld c, l
    nop
    ld [bc], a
    nop
    jr z, jr_037_57e3

    nop
    nop
    ld c, $ff
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, @+$10

    nop
    inc d
    ld [$2d2c], sp
    ld [$0009], sp
    ld b, d
    inc c
    nop
    inc d
    ld [$2f2e], sp
    jr jr_037_57f0

    nop
    ld h, d
    inc c
    nop
    inc [hl]
    ld a, [bc]
    ld b, h
    ld b, l
    ld b, b
    ld b, c
    nop
    add h

jr_037_57e3:
    ld a, [bc]
    nop
    ld d, h
    ld a, [bc]
    ld b, [hl]
    ld b, a
    ld b, d
    ld b, e
    nop
    and h
    ld a, [bc]
    nop
    ld [hl], h

jr_037_57f0:
    inc c
    jr nc, jr_037_5824

    nop
    db $c4, $0a, $00
    sub h
    inc c
    ld [hl-], a
    inc sp
    nop
    db $e4
    ld a, [bc]
    nop
    inc [hl]
    ld a, [bc]
    inc a
    dec a
    nop
    ld [bc], a
    inc e
    nop
    ld d, h
    ld a, [bc]
    ld a, $3f
    nop
    ld [hl+], a
    inc e
    nop
    inc [hl]
    ld a, [bc]
    ld c, b
    ld c, c
    nop
    call nz, $0b0f
    ld c, d
    ld c, e
    nop
    db $e4
    rrca
    dec bc
    nop
    ld b, d
    rra
    ld c, l
    nop
    ld h, d
    rra

jr_037_5824:
    dec bc
    nop
    ld [bc], a
    nop
    jr z, jr_037_5853

    nop
    nop
    ld c, $ff
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_037_5844

    nop
    inc d
    ld [$0908], sp
    nop
    ld b, b
    ld c, $00
    inc d
    ld [$1918], sp
    nop

jr_037_5844:
    ld h, b
    ld c, $00
    inc d
    ld [$4140], sp
    nop
    add b
    ld b, $30
    ld sp, $8c00
    ld [bc], a

jr_037_5853:
    nop
    inc d
    ld [$4342], sp
    nop
    and b
    ld b, $32
    inc sp
    nop
    xor h
    ld [bc], a
    nop
    inc d
    ld [$8c00], sp
    inc b
    jr nc, jr_037_5899

    ld c, b
    ld c, c
    nop
    adc h
    rrca
    ld bc, $ac00
    inc b
    ld [hl-], a
    inc sp
    ld c, d
    ld c, e
    nop
    xor h
    rrca
    ld bc, $3d3c
    nop
    nop
    ld [de], a
    ld b, h
    ld b, l
    nop
    db $ca, $0f, $03

    ld a, $3f
    nop
    jr nz, @+$14

    ld b, [hl]
    ld b, a
    nop
    ld [$030f], a
    nop
    db $c4, $04, $00
    ld [$0010], sp
    nop
    inc d
    nop

jr_037_5899:
    call nc, Call_037_4a0e
    ld c, e
    nop
    jr z, @+$12

    nop
    jr nz, jr_037_58b7

    nop
    inc [hl]
    rra
    dec b
    nop
    db $ca, $04, $00

    ld d, h
    rra
    dec b
    nop
    ld [$0004], a
    ld [hl], h
    rra
    add hl, sp
    nop
    ld [bc], a

jr_037_58b7:
    nop
    jr z, @+$2b

    nop
    nop
    ld c, $ff
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, @+$10

    nop
    inc d
    ld [$0908], sp
    nop
    ld b, b
    inc c
    inc h
    dec h
    nop
    inc d
    ld [$1918], sp
    nop
    ld h, b
    inc c
    ld h, $27
    nop
    inc d
    ld [$3130], sp
    nop
    add b
    ld [$4140], sp
    ld b, b
    ld b, c
    nop
    ld d, d
    ld a, [bc]
    ld [hl-], a
    inc sp
    nop
    and b
    ld [$4342], sp
    ld b, d
    ld b, e
    nop
    ld [hl], d
    rrca
    ld bc, $4d4c
    nop
    add b
    inc b
    ld c, b
    ld c, c
    nop
    sub d
    rrca
    ld bc, $4f4e
    nop
    and b
    inc b
    ld c, d
    ld c, e
    nop
    ld [hl], d
    rrca
    add hl, bc
    nop
    adc $0f
    dec b
    nop
    and b
    ld b, $00
    ldh a, [$0c]
    inc a
    dec a
    nop
    ld b, b
    jr jr_037_5960

    ld b, l
    nop
    ret nc

    inc c
    ld a, $3f
    nop
    ld h, b
    jr jr_037_596c

    ld b, a
    nop
    ldh a, [rIF]
    dec bc
    nop
    ld c, [hl]
    ld e, $00
    and b
    ld a, [bc]
    nop
    ld l, [hl]
    rra
    ccf
    nop
    ld [bc], a
    nop
    inc l
    dec l
    ld c, b
    ld c, c
    jr nc, @+$33

    nop
    inc b
    ld a, [bc]
    rst $38
    nop
    inc d
    rlca
    ld l, $2f
    ld c, d
    ld c, e
    ld [hl-], a
    inc sp
    nop
    inc h
    ld a, [bc]
    nop
    inc d
    ld [$0000], sp
    nop
    ld b, b
    ld b, c
    nop
    ld b, $0f
    dec bc
    ld b, d
    ld b, e
    nop
    ld h, $0f
    dec bc

jr_037_5960:
    nop
    ld b, d
    nop
    nop
    add [hl]
    ld [$1400], sp
    inc c
    nop
    ld h, d
    nop

jr_037_596c:
    nop
    and [hl]
    ld [$3400], sp
    ld c, $00
    add [hl]
    rrca
    dec bc
    nop
    and [hl]
    ld a, [bc]
    nop
    or d
    inc c
    ld b, h
    ld b, l
    nop
    call nz, $0b0f
    ld b, [hl]
    ld b, a
    nop
    db $e4
    rrca
    dec c
    nop
    inc b
    inc b
    inc a
    dec a
    nop
    ld c, h
    ld [de], a
    nop
    inc d
    inc e
    nop
    inc h
    inc b
    ld a, $3f
    nop
    ld l, h
    ld [de], a
    nop
    inc [hl]
    rra
    dec b
    nop
    ld [bc], a
    inc b
    nop
    ld d, h
    rra
    dec b
    nop
    ld [hl+], a
    inc b
    nop
    ld [hl], h
    rra
    add hl, sp
    nop
    ld [bc], a
    nop
    jr nc, jr_037_59e3

    nop
    nop
    nop
    ld c, b
    ld c, c
    ld b, h
    ld b, l
    ld c, b
    ld c, c
    ld c, b
    ld c, c
    nop
    nop
    ld [bc], a
    rst $38
    nop
    inc d
    rlca
    ld [hl-], a
    inc sp
    nop
    jr nz, jr_037_59c9

jr_037_59c9:
    ld c, d
    ld c, e
    ld b, [hl]
    ld b, a
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    nop
    jr nz, jr_037_59d6

    nop
    inc d

jr_037_59d6:
    ld [$0000], sp
    rrca
    dec l
    ld b, b
    ld b, c
    nop
    add b
    nop
    nop
    nop
    ld [bc], a

jr_037_59e3:
    jr nc, jr_037_5a16

    inc a
    dec a
    nop
    adc [hl]
    nop
    nop
    inc d
    ld [$4342], sp
    nop
    and b
    nop
    nop
    jr nz, jr_037_59f7

    ld [hl-], a
    inc sp

jr_037_59f7:
    ld a, $3f
    nop
    xor [hl]
    nop
    nop
    ld [hl], h
    rrca
    rlca
    nop
    add b
    ld [bc], a
    nop
    sub h
    rrca
    rlca
    nop
    and b
    ld [bc], a
    nop
    or h
    rrca
    add hl, sp
    nop
    adc [hl]
    ld [bc], a
    nop
    add [hl]
    rrca
    rlca
    nop

jr_037_5a16:
    xor [hl]
    ld [bc], a
    nop
    and [hl]
    rrca
    rlca
    nop
    nop
    inc b
    nop
    ld b, $00
    ld b, h
    ld b, l
    nop
    ld c, $0f
    rlca
    nop
    ld h, $00
    ld b, [hl]
    ld b, a
    nop
    ld l, $0f
    rlca
    nop
    adc b
    rra
    dec h
    nop
    ld [bc], a
    nop
    jr nc, jr_037_5a6b

    nop
    nop
    ld [$4544], sp
    ld c, b
    ld c, c
    inc h
    dec h
    rst $38
    nop
    inc d
    rlca
    ld [hl-], a
    inc sp
    nop
    jr nz, jr_037_5a54

    ld b, [hl]
    ld b, a
    ld c, d
    ld c, e
    ld h, $27
    nop
    inc d

jr_037_5a54:
    ld [$0000], sp
    rrca
    dec l
    inc a
    dec a
    nop
    add b
    ld b, $44
    ld b, l
    nop
    ld c, $0e
    ld a, $3f
    nop
    and b
    ld b, $46
    ld b, a
    nop

jr_037_5a6b:
    ld l, $0e
    ld b, b
    ld b, c
    nop
    ret nz

    ld b, $00
    adc h
    rrca
    ld bc, $4342
    nop
    ldh [rTMA], a
    nop
    xor h
    rrca
    dec bc
    ld c, b
    ld c, c
    nop
    call z, $0b0f
    ld c, d
    ld c, e
    nop
    xor h
    rrca
    ld bc, $8000
    inc b
    ld c, b
    ld c, c
    nop
    ld a, [bc]
    rra
    inc bc
    nop
    and b
    inc b
    ld c, d
    ld c, e
    nop
    ld a, [hl+]
    rra
    inc bc
    nop
    nop
    ld b, $00
    ld a, [bc]
    rra
    inc bc
    nop
    jr nz, jr_037_5aad

    nop
    ld l, d
    rra
    ld b, e
    nop
    ld [bc], a

jr_037_5aad:
    nop
    inc l
    dec l
    ld b, h
    ld b, l
    jr nc, @+$33

    nop
    inc b
    ld [bc], a
    ld c, b
    ld c, c
    nop
    inc b
    ld [bc], a
    rst $38
    nop
    inc d
    rlca
    ld l, $2f
    ld b, [hl]
    ld b, a
    ld [hl-], a
    inc sp
    nop
    inc h
    ld [bc], a
    ld c, d
    ld c, e
    nop
    inc h
    ld [bc], a
    nop
    inc d
    ld [$0000], sp
    rrca
    ld c, l
    nop
    ld h, b
    rrca
    ld c, l
    nop
    ret nz

    rrca
    dec sp
    ld b, b
    ld b, c
    nop
    ld c, [hl]
    stop
    call nc, $070f
    ld b, d
    ld b, e
    nop
    ld l, [hl]
    stop
    or h
    ld a, [bc]
    inc a
    dec a
    nop
    add d
    inc e
    nop
    call nc, Call_000_3e0a
    ccf
    nop
    and d
    inc e
    nop
    call nc, Call_000_2808
    add hl, hl
    ld [bc], a
    inc bc
    nop
    jp nz, $001c

    call nc, Call_000_2a08
    dec hl
    ld [de], a
    inc de
    nop
    ld [c], a
    inc e
    nop
    call nc, RST_08
    ld [bc], a
    nop
    jr nc, jr_037_5b48

    nop
    nop
    nop
    ld c, b
    ld c, c
    ld c, b
    ld c, c
    ld b, h
    ld b, l
    ld b, h
    ld b, l
    nop
    nop
    ld [bc], a
    rst $38
    nop
    inc d
    rlca
    ld [hl-], a
    inc sp
    nop
    jr nz, jr_037_5b2e

jr_037_5b2e:
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    nop
    jr nz, jr_037_5b3b

    nop
    inc d

jr_037_5b3b:
    ld [$0000], sp
    rrca
    add hl, sp
    inc a
    dec a
    nop
    adc h
    ld [bc], a
    nop
    inc d
    rrca

jr_037_5b48:
    dec b
    ld a, $3f
    nop
    xor h
    ld [bc], a
    nop
    inc [hl]
    rrca
    inc bc
    ld b, b
    ld b, c
    nop
    nop
    ld [bc], a
    nop
    ld [de], a
    rrca
    dec b
    ld b, d
    ld b, e
    nop
    jr nz, jr_037_5b62

    nop
    ld [hl-], a

jr_037_5b62:
    rrca
    inc bc
    ld b, b
    ld b, c
    nop
    ld [$0016], sp
    inc d
    rrca
    ld bc, $4342
    nop
    jr z, jr_037_5b88

    nop
    inc d
    ld [$0800], sp
    jr jr_037_5b79

jr_037_5b79:
    inc c
    rra
    ld bc, $2800
    jr jr_037_5b80

jr_037_5b80:
    inc l
    rra
    ld bc, $8c00
    inc b
    nop
    add b

jr_037_5b88:
    jr jr_037_5b8a

jr_037_5b8a:
    inc d
    ld [$ac00], sp
    inc b
    nop
    and b
    jr jr_037_5b93

jr_037_5b93:
    inc d
    ld [$0302], sp
    nop
    ret nz

    ld e, $00
    inc d
    ld [$1312], sp
    nop
    ldh [rNR34], a
    nop
    inc d
    ld [$0200], sp
    nop
    jr nc, @+$33

    nop
    nop
    inc b
    ld c, b
    ld c, c
    ld b, h
    ld b, l
    ld b, h
    ld b, l
    ld c, b
    ld c, c
    inc h
    dec h
    rst $38
    nop
    inc d
    rlca
    ld [hl-], a
    inc sp
    nop
    jr nz, jr_037_5bc4

    ld c, d
    ld c, e
    ld b, [hl]
    ld b, a

jr_037_5bc4:
    ld b, [hl]
    ld b, a
    ld c, d
    ld c, e
    ld h, $27
    nop
    inc d
    ld [$0000], sp
    rrca
    dec l
    inc a
    dec a
    nop
    add b
    inc b
    nop
    ld a, [bc]
    rrca
    inc bc
    ld a, $3f
    nop
    and b
    inc b
    nop
    ld a, [hl+]
    rrca
    dec c
    jr nc, jr_037_5c16

    nop
    inc c
    rrca
    dec bc
    ld [hl-], a
    inc sp
    nop
    inc l
    rrca
    ld bc, $4140
    nop
    nop
    jr jr_037_5bf5

jr_037_5bf5:
    ld c, $0e
    ld b, d
    ld b, e
    nop
    jr nz, jr_037_5c14

    nop
    xor $0f
    dec c
    ld b, b
    ld b, c
    nop
    db $10
    rra
    dec bc
    ld b, d
    ld b, e
    nop
    ld [hl], b
    rrca
    rlca
    nop
    add h
    inc b
    nop
    sub d
    rrca
    dec b
    nop

jr_037_5c14:
    and h
    inc b

jr_037_5c16:
    nop
    ld [hl-], a
    ld a, [bc]
    ld [bc], a
    inc bc
    nop
    ret nz

    inc e
    jr z, @+$2b

    nop
    inc d
    ld [$1312], sp
    nop
    ldh [rNR32], a
    ld a, [hl+]
    dec hl
    nop
    inc d
    ld [$0800], sp
    ld [bc], a
    ld a, a
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

jr_037_5c58:
    ld a, $40
    ld a, $38
    jr c, @+$01

    rst $38
    jr jr_037_5c58

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
    jr z, jr_037_5c72

jr_037_5c72:
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
    jr jr_037_5cb2

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

jr_037_5cb2:
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
    jp Jump_037_5002


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
    jr nz, jr_037_5cf6

    ld [de], a
    nop

jr_037_5cf6:
    sub b
    sub b
    ld [bc], a
    jr jr_037_5cff

    rst $18
    jr nc, jr_037_5d00

    ld [de], a

jr_037_5cff:
    nop

jr_037_5d00:
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
    jr jr_037_5d15

    ld [bc], a
    db $10
    ld [de], a
    db $10

jr_037_5d15:
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


    jr nc, jr_037_5d7f

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

jr_037_5d5a:
    jr jr_037_5d5a

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

jr_037_5d70:
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

jr_037_5d7f:
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

jr_037_5d99:
    rra
    add hl, bc
    ret nz

    ret nz

    ld [bc], a
    db $10
    db $10
    jr jr_037_5d99

    jr nc, jr_037_5dd4

    ld [bc], a
    jr c, jr_037_5dbc

    ld [bc], a
    pop hl
    inc bc
    ld [bc], a
    ld [$801a], sp
    add b
    ld [bc], a
    jr c, jr_037_5dcc

    ld [bc], a
    add $00
    ld [bc], a
    ld a, [hl+]
    ld d, $18
    rst $30
    db $10
    db $10

jr_037_5dbc:
    ld [bc], a
    jr c, jr_037_5dd9

    ld [$0208], sp
    ld [hl], b
    nop
    ld b, b
    ccf
    ld [bc], a
    ld l, $14
    jr c, jr_037_5e03

    cp [hl]

jr_037_5dcc:
    ld bc, $9f20
    jr nz, jr_037_5d70

    ld [bc], a
    ld l, $14

jr_037_5dd4:
    ld [bc], a
    ld h, $12
    ret nz

    cp [hl]

jr_037_5dd9:
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
    db $c3, $c3, $02


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

jr_037_5e03:
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

jr_037_5e3e:
    ld [bc], a
    inc h
    inc a
    and [hl]
    ld e, c
    ld d, $e9
    ld [bc], a
    jr c, jr_037_5e7c

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
    jr c, jr_037_5e3e

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

jr_037_5e7c:
    dec sp
    call nz, Call_037_48b7
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


    jp c, $7671

    db $c3, $cc, $0f


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
    ld [bc], a
    inc c
    jr z, jr_037_5f22

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_037_5f13

    inc c
    inc d
    ld [$2d2c], sp
    ld [$0c09], sp
    ld b, d
    ld [bc], a
    ld c, $0f
    inc c
    ld b, d

jr_037_5f13:
    inc b
    inc c
    inc d
    ld [$2f2e], sp
    jr jr_037_5f34

    inc c
    ld h, d
    ld [bc], a
    ld e, $1f
    inc c
    ld h, d

jr_037_5f22:
    inc b
    inc c
    inc [hl]
    ld a, [bc]
    jr nc, jr_037_5f59

    inc c
    add d
    ld [bc], a
    ld c, $0f
    inc c
    add d
    inc b
    inc c
    ld d, h
    ld a, [bc]
    ld [hl-], a

jr_037_5f34:
    inc sp
    inc c
    and d
    ld [bc], a
    ld e, $1f
    inc c
    and d
    inc b
    inc c
    ld [hl], h
    rrca
    add hl, bc
    nop
    ld bc, $0302
    inc c
    sub h
    rrca
    add hl, bc
    db $10
    ld de, $1312
    inc c
    ld [hl], h
    inc c
    inc c
    ret nc

    nop
    ld [bc], a
    inc bc
    inc c
    add b
    ld [bc], a
    inc h

jr_037_5f59:
    dec h
    inc c
    ld [de], a
    ld a, [bc]
    inc c
    and b
    nop
    inc c
    ldh a, [rP1]
    ld [de], a
    inc de
    inc c
    and b
    ld [bc], a
    ld h, $27
    inc c
    ld [hl-], a
    inc c
    inc c
    adc b
    nop
    inc c
    ld b, d
    nop
    ld a, [bc]
    dec bc
    inc c
    add d
    nop
    ld b, $07
    inc c
    ld d, d
    inc c
    inc c
    xor b
    nop
    inc c
    ld h, d
    nop
    ld a, [de]
    dec de
    inc c
    and d
    nop
    ld d, $17
    inc c
    ld [hl], d
    ld c, $0c
    adc d
    ld b, $0c
    adc [hl]
    rrca
    inc bc
    inc c
    xor d
    ld b, $0c
    xor [hl]
    rrca
    inc bc
    inc c
    adc d
    nop
    inc c
    ret nc

    nop
    inc b
    dec b
    inc c
    adc $0f
    inc bc
    inc c
    xor d
    nop
    inc c
    ldh a, [rP1]
    inc d
    dec d
    inc c
    xor $0e
    nop
    ld [bc], a
    inc c
    jr z, @+$2b

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
    ld [$0908], sp
    inc c
    ld b, b
    ld [bc], a
    ld c, $0f
    inc c
    ld b, b
    inc b
    ld [$0c09], sp
    inc d
    ld [$1918], sp
    inc c
    ld h, b
    ld [bc], a
    ld e, $1f
    inc c
    ld h, b
    inc b
    jr jr_037_5ffa

    inc c
    inc d
    ld [$3130], sp
    inc c
    add b
    ld [bc], a
    ld c, $0f
    inc c
    add b
    inc b
    jr nc, @+$33

    inc c
    inc d
    ld [$3332], sp
    inc c
    and b
    ld [bc], a
    ld e, $1f

jr_037_5ffa:
    inc c
    and b
    inc b
    ld [hl-], a
    inc sp
    inc c
    inc d
    ld [$0302], sp
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    add [hl]
    ld [bc], a
    nop
    ld bc, $c00c
    nop
    ld [bc], a
    inc bc
    inc c
    inc d
    ld [$1312], sp
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    and [hl]
    ld [bc], a
    db $10
    ld de, $e00c
    nop
    ld [de], a
    inc de
    inc c
    inc d
    ld [$000c], sp
    nop
    inc l
    dec l
    inc c
    add [hl]
    ld [bc], a
    ld b, $07
    inc c
    ld c, [hl]
    ld c, $0c
    jr nz, jr_037_6038

jr_037_6038:
    ld l, $2f
    inc c
    and [hl]
    ld [bc], a
    ld d, $17
    inc c
    ld l, [hl]
    ld c, $0c
    ld b, b
    nop
    ld a, [bc]
    dec bc
    inc c
    add [hl]
    rrca
    rlca
    inc c
    ld h, b
    nop
    ld a, [de]
    dec de
    inc c
    and [hl]
    rrca
    rlca
    inc c
    add b
    ld [$cc0c], sp
    rrca
    ld bc, $a00c
    ld [$ec0c], sp
    rrca
    ld bc, $ce0c
    ld [bc], a
    ld [bc], a
    inc bc
    inc c
    inc b
    db $10
    inc h
    dec h
    inc c
    ld c, $0e
    inc c
    xor $02
    ld [de], a
    inc de
    inc c
    inc h
    db $10
    ld h, $27
    inc c
    ld l, $0e
    nop
    ld [bc], a
    ld a, [bc]
    jr z, jr_037_60aa

    ld a, [bc]
    nop
    ld c, $ff
    ld a, [bc]
    inc d
    rlca
    ld a, [hl+]
    dec hl
    ld a, [bc]
    jr nz, jr_037_609b

    ld a, [bc]
    inc d
    ld [$0908], sp
    ld a, [bc]
    ld b, b
    nop
    ld c, $0f
    ld a, [bc]
    ld b, b
    ld [bc], a
    ld a, [bc]

jr_037_609b:
    ld b, b
    nop
    inc h
    dec h
    ld a, [bc]
    inc d
    ld [$1918], sp
    ld a, [bc]
    ld h, b
    nop
    ld e, $1f
    ld a, [bc]

jr_037_60aa:
    ld h, b
    ld [bc], a
    ld a, [bc]
    ld h, b
    nop
    ld h, $27
    ld a, [bc]
    inc d
    ld [$3130], sp
    ld a, [bc]
    add b
    nop
    ld c, $0f
    ld a, [bc]
    add b
    ld [bc], a
    ld a, [bc]
    add b
    nop
    ld a, [bc]
    ld d, d
    ld a, [bc]
    ld [hl-], a
    inc sp
    ld a, [bc]
    and b
    nop
    ld e, $1f
    ld a, [bc]
    and b
    ld [bc], a
    ld a, [bc]
    and b
    nop
    ld a, [bc]
    ld [hl], d
    ld a, [bc]
    ld [bc], a
    inc bc
    ld a, [bc]
    ret nz

    nop
    inc l
    dec l
    jr nc, jr_037_610e

    nop
    ld bc, $0302
    inc b
    dec b
    ld a, [bc]
    sub b
    inc c
    ld [de], a
    inc de
    ld a, [bc]
    ldh [rP1], a
    ld l, $2f
    ld [hl-], a
    inc sp
    db $10
    ld de, $1312
    inc d
    dec d
    ld a, [bc]
    or b
    inc c
    ld a, [bc]
    ld b, b
    ld [bc], a
    jr nz, jr_037_611e

    jr nc, jr_037_6130

    ld b, $07
    ld a, [bc]
    ld b, h
    nop
    ld a, [bc]
    sub b
    inc c
    ld a, [bc]
    ld h, b
    ld [bc], a
    ld [hl+], a
    inc hl
    ld [hl-], a
    inc sp

jr_037_610e:
    ld d, $17
    ld a, [bc]
    ld h, h
    nop
    ld a, [bc]
    or b
    inc c
    ld a, [bc]
    adc b
    ld b, $0a
    add d
    inc b
    ld a, [bc]
    sub d

jr_037_611e:
    rrca
    ld bc, $a80a
    inc b
    ld a, [bc]
    ld l, $1e
    ld a, [bc]
    call z, $0a02
    jp z, $0a04

    ld c, $1e
    ld a, [bc]

jr_037_6130:
    db $ec
    ld [bc], a
    ld a, [bc]
    ld [$0a04], a
    ld l, $1e
    jr z, jr_037_6163

    ld a, [bc]
    add $00
    inc h
    dec h
    ld a, [bc]
    ret nz

    ld [de], a
    ld a, [bc]
    ld c, $1e
    ld a, [hl+]
    dec hl
    ld a, [bc]
    and $00
    ld h, $27
    ld a, [bc]
    ldh [rNR12], a
    ld a, [bc]
    ld l, $1e
    nop
    ld [bc], a
    inc c
    inc l
    dec l
    jr nc, jr_037_618a

    ld c, $0f
    jr nc, jr_037_618e

    inc h
    dec h
    jr z, jr_037_618a

    inc c
    nop

jr_037_6163:
    nop
    inc c
    ld [$ff00], sp
    inc c
    inc d
    rlca
    ld l, $2f
    ld [hl-], a
    inc sp
    ld e, $1f
    ld [hl-], a
    inc sp
    ld h, $27
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_037_617a

jr_037_617a:
    inc c
    jr z, jr_037_617d

jr_037_617d:
    inc c
    inc d
    ld [$000c], sp
    rrca
    dec [hl]
    ld b, $07
    ld [$0a09], sp
    dec bc

jr_037_618a:
    inc c
    add [hl]
    ld [bc], a
    inc c

jr_037_618e:
    inc d
    rrca
    ld bc, $1716
    jr jr_037_61ae

    ld a, [de]
    dec de
    inc c
    and [hl]
    ld [bc], a
    inc c
    inc [hl]
    inc c
    jr nz, @+$23

    jr nc, jr_037_61d2

    inc c
    add $08
    inc c
    inc d
    inc c
    ld [hl+], a
    inc hl
    ld [hl-], a
    inc sp
    inc c
    and $08

jr_037_61ae:
    inc c
    inc [hl]
    inc c
    inc c
    add $02
    nop
    ld bc, $0302
    inc c
    inc c
    ld [de], a
    inc c
    inc d
    inc c
    inc c
    and $02
    db $10
    ld de, $1312
    inc c
    inc l
    ld [de], a
    inc c
    inc d
    ld [$2928], sp
    inc c
    inc c
    db $10
    inc b
    dec b

jr_037_61d2:
    inc c
    ld [bc], a
    nop
    ld [$0c09], sp
    ld c, h
    ld [de], a
    inc c
    inc d
    ld [$2b2a], sp
    inc c
    inc l
    db $10
    inc d
    dec d
    inc c
    ld [hl+], a
    nop
    jr jr_037_6202

    inc c
    ld l, h
    ld [de], a
    inc c
    inc [hl]
    ld a, [bc]
    inc c
    ld c, h
    db $10
    inc c
    adc h
    nop
    inc c
    inc b
    nop
    inc c
    adc $0f
    ld bc, $6c0c
    db $10
    inc c
    xor h
    nop

jr_037_6202:
    inc c
    inc h
    nop
    inc c
    xor $0f
    add hl, bc
    inc c
    adc d
    ld [de], a
    inc c
    ld a, [bc]
    db $10
    inc c
    inc d
    rra
    inc bc
    inc c
    xor d
    ld [de], a
    inc c
    ld a, [hl+]
    db $10
    inc c
    inc d
    ld [$0200], sp
    inc c
    jr z, jr_037_624a

    inc c
    nop
    ld [bc], a
    inc l
    dec l
    jr nc, jr_037_6259

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
    jr nz, jr_037_6238

    ld l, $2f

jr_037_6238:
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_037_6241

    inc c
    inc d

jr_037_6241:
    ld [$000c], sp
    ld [$0706], sp
    ld [$0c09], sp

jr_037_624a:
    ld c, [hl]
    nop
    inc c
    inc d
    rrca
    dec b
    ld d, $17
    jr @+$1b

    inc c
    ld l, [hl]
    nop
    inc c
    inc d

jr_037_6259:
    ld [$4e0c], sp
    ld [bc], a
    ld [$0a09], sp
    dec bc
    jr nc, jr_037_6294

    inc c
    adc d
    inc b
    inc c
    inc d
    ld [$6e0c], sp
    ld [bc], a
    jr @+$1b

    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    inc c
    xor d
    inc b
    inc c
    inc d
    ld [$8a0c], sp
    ld b, $30
    ld sp, $0100
    ld [bc], a
    inc bc
    inc c
    adc $00
    inc c
    inc d
    ld [$aa0c], sp
    ld b, $32
    inc sp
    db $10
    ld de, $1312
    inc c
    xor $00
    inc c

jr_037_6294:
    inc d
    ld [$ce0c], sp
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    jr nc, jr_037_62d0

    ld c, $0f
    inc c
    ld c, [hl]
    ld c, $0c
    xor $02
    ld [de], a
    inc de
    inc d
    dec d
    ld [hl-], a
    inc sp
    ld e, $1f
    inc c
    ld l, [hl]
    rrca
    rlca
    ld c, $0f
    inc c
    ld a, [bc]
    db $10
    inc c
    adc [hl]
    rrca
    rlca
    ld e, $1f
    inc c
    ld a, [hl+]
    db $10
    inc c
    xor [hl]
    rrca
    rlca
    inc c
    ld c, b
    rra
    dec b
    inc c
    xor d
    inc b
    inc c
    ld l, b
    rra
    dec b

jr_037_62d0:
    inc c
    inc b
    ld d, $0c
    ld a, [bc]
    nop
    inc c
    adc $0e
    inc c
    inc h
    ld d, $0c
    ld a, [hl+]
    nop
    inc c
    xor $0e
    nop
    ld [bc], a
    nop
    jr z, jr_037_6310

    inc l
    dec l
    jr nc, jr_037_631c

    inc h
    dec h
    nop
    nop
    ld [bc], a
    ld c, $0f
    nop
    inc b
    nop
    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    ld l, $2f
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_037_6306

    ld e, $1f

jr_037_6306:
    nop
    inc h
    nop
    nop
    inc d
    ld [$0908], sp
    ld a, [bc]
    dec bc

jr_037_6310:
    jr nc, jr_037_6343

    ld b, $07
    inc h
    dec h
    nop
    ld a, [bc]
    rrca
    inc bc
    jr jr_037_6335

jr_037_631c:
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld d, $17
    ld h, $27
    nop
    ld a, [hl+]
    rrca
    inc bc
    jr nc, @+$33

    nop
    add b
    ld [bc], a
    nop
    ld c, b
    rrca
    dec b
    ld [hl-], a
    inc sp
    nop
    and b

jr_037_6335:
    ld [bc], a
    nop
    ld l, b
    rrca
    dec b
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    nop
    add [hl]
    rrca

jr_037_6343:
    rlca
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    dec d
    nop
    and [hl]
    rrca
    rlca
    ld [$0009], sp
    ld b, b
    ld [bc], a
    nop
    ld c, b
    ld [bc], a
    inc h
    dec h
    ld [bc], a
    inc bc
    jr z, jr_037_6385

    nop
    ld d, h
    ld a, [bc]
    nop
    ld h, b
    ld [bc], a
    nop
    ld l, b
    ld [bc], a
    ld h, $27
    ld [de], a
    inc de
    ld a, [hl+]
    dec hl
    nop
    ld [hl], h
    rrca
    ld bc, $0706
    nop
    ld c, $00
    ld b, $07
    ld [$0009], sp
    sub d
    rrca
    inc bc
    ld d, $17
    nop
    ld l, $00
    ld d, $17
    jr @+$1b

jr_037_6385:
    nop
    ld [hl], d
    rrca
    inc bc
    nop
    inc c
    ld [bc], a
    nop
    add h
    ld [bc], a
    nop
    sub h
    rrca
    ld bc, $2c00
    ld [bc], a
    nop
    and h
    ld [bc], a
    nop
    or h
    inc c
    nop
    db $c2, $04, $00

    db $c2, $04, $00

    db $d4, $0c, $00
    ld [c], a
    inc b
    nop
    ld [c], a
    inc b
    nop
    inc d
    ld [$0200], sp
    inc b
    inc l
    dec l
    jr nc, @+$33

    inc b
    ld [bc], a
    ld [bc], a
    ld c, $0f
    inc b
    ld [bc], a
    nop
    inc h
    dec h
    jr z, jr_037_63ea

    rst $38
    inc b
    inc d
    rlca
    ld l, $2f
    ld [hl-], a
    inc sp
    inc b
    ld [hl+], a
    ld [bc], a
    ld e, $1f
    inc b
    ld [hl+], a
    nop
    ld h, $27
    ld a, [hl+]
    dec hl
    inc b
    inc d
    ld [$0004], sp
    inc c
    ld b, $07
    ld [$0409], sp
    inc d
    rrca
    add hl, bc
    ld d, $17
    jr jr_037_6400

    inc b
    inc [hl]
    rrca

jr_037_63ea:
    inc bc
    jr nz, @+$23

    inc b
    ld [bc], a
    inc b
    inc b
    inc d
    rrca
    inc bc
    ld [hl+], a
    inc hl
    inc b
    ld [hl+], a
    inc b
    inc b
    inc [hl]
    rrca
    inc bc
    inc b
    ld [bc], a
    ld [bc], a

jr_037_6400:
    nop
    ld bc, $0302
    inc b
    inc d
    rrca
    inc bc
    inc b
    ld [hl+], a
    ld [bc], a
    db $10
    ld de, $1312
    inc b
    inc d
    ld [$2928], sp
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    jr jr_037_6446

    dec l
    inc b
    ld d, d
    ld a, [bc]
    ld a, [hl+]
    dec hl
    ld [de], a
    inc de
    inc b
    ld [hl+], a
    jr jr_037_6454

    cpl
    inc b
    ld [hl], d
    inc c
    ld [$0409], sp
    ld b, d
    jr jr_037_643a

    dec bc
    inc b
    sub d
    inc c
    jr jr_037_644f

    inc b
    ld h, d
    jr jr_037_6454

jr_037_643a:
    dec de
    inc b
    or d
    inc c
    inc a
    dec a
    inc b
    db $c2, $0a, $04

    sub d
    inc c

jr_037_6446:
    ld a, $3f
    inc b
    ld [c], a
    ld a, [bc]
    inc b
    or d
    ld a, [bc]
    inc b

jr_037_644f:
    nop
    inc e
    inc b
    ld [bc], a
    db $10

jr_037_6454:
    inc b
    inc d
    rra
    add hl, bc
    inc b
    ld [hl+], a
    db $10
    inc b
    inc d
    ld [$0200], sp
    inc b
    jr z, jr_037_648c

    jr z, @+$2b

    inc l
    dec l
    jr nc, @+$33

    ld c, $0f
    jr nc, jr_037_649e

    inc h
    dec h
    inc b
    nop
    nop
    jr z, jr_037_649d

    rst $38
    inc b
    inc d
    rlca
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld l, $2f
    ld [hl-], a
    inc sp
    ld e, $1f
    ld [hl-], a
    inc sp
    ld h, $27
    inc b
    jr nz, jr_037_6489

jr_037_6489:
    ld a, [hl+]
    dec hl
    inc b

jr_037_648c:
    inc d
    ld [$0908], sp
    ld [$0a09], sp
    dec bc
    jr nc, @+$33

    jr nz, @+$23

    inc b
    ld b, $00
    inc b
    ld b, b

jr_037_649d:
    nop

jr_037_649e:
    ld [$0409], sp
    inc d
    ld [$1918], sp
    jr @+$1b

    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld [hl+], a
    inc hl
    inc b
    ld h, $00
    inc b
    ld h, b
    nop
    jr jr_037_64ce

    inc b
    inc d
    ld [$3130], sp
    inc b
    add b
    ld b, $04
    ld [$0400], sp
    add b
    nop
    inc b
    inc d
    ld [$3332], sp
    inc b
    and b
    ld b, $04
    jr z, jr_037_64ce

jr_037_64ce:
    inc b
    and b
    nop
    inc b
    inc d
    ld [$0302], sp
    inc b
    ret nz

    ld b, $04
    inc b
    nop
    nop
    ld bc, $0302
    inc b
    inc d
    ld [$1312], sp
    inc b
    ldh [rTMA], a
    inc b
    inc h
    nop
    db $10
    ld de, $1312
    inc b
    inc [hl]
    inc c
    inc b
    nop
    inc d
    inc b
    ld b, h
    nop
    inc b
    inc c
    nop
    inc b
    ld d, h
    inc c
    inc b
    jr nz, jr_037_6515

    inc b
    ld h, h
    nop
    inc b
    inc l
    nop
    inc b
    ld [hl], h
    rrca
    dec b
    inc b
    add b
    nop
    ld b, $07
    inc b
    ld d, d
    ld a, [bc]
    inc b
    and b

jr_037_6515:
    ld [$a004], sp
    nop
    ld d, $17
    inc b
    ld [hl], d
    rrca
    rlca
    inc b
    add b
    inc b
    inc b
    ld d, h
    rra
    add hl, bc
    inc b
    or b
    rrca
    add hl, bc
    inc b
    ret nz

    inc b
    inc b
    db $d4, $0f, $05
    inc b
    ldh [rDIV], a
    inc b
    inc d
    ld [$0200], sp
    nop
    jr z, @+$2b

    nop
    nop
    nop
    inc l
    dec l
    jr nc, @+$33

    inc h
    dec h
    nop
    inc b
    inc b
    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_037_6551

jr_037_6551:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    inc h
    inc b
    nop
    inc d
    ld [$0908], sp
    nop
    ld b, b
    nop
    ld c, $0f
    jr nc, jr_037_6597

    ld b, $07
    nop
    ld b, h
    ld [bc], a
    nop
    ld [de], a
    ld a, [bc]
    jr jr_037_6589

    nop
    ld h, b
    nop
    ld e, $1f
    ld [hl-], a
    inc sp
    ld d, $17
    nop
    ld h, h
    ld [bc], a
    nop
    ld [hl-], a
    ld a, [bc]
    jr nc, jr_037_65b2

    nop
    add b
    nop
    nop
    ld b, [hl]
    nop
    nop
    add d

jr_037_6589:
    inc b
    nop
    ld [de], a
    ld a, [bc]
    ld [hl-], a
    inc sp
    nop
    and b
    nop
    nop
    ld h, [hl]
    nop
    nop
    and d

jr_037_6597:
    inc b
    nop
    ld [hl-], a
    ld a, [bc]
    ld [bc], a
    inc bc
    inc b
    dec b
    nop
    ld [$0200], sp
    inc bc
    nop
    ret z

    nop
    nop
    ld c, $0e
    ld [de], a
    inc de
    inc d
    dec d
    nop
    jr z, jr_037_65b1

jr_037_65b1:
    ld [de], a

jr_037_65b2:
    inc de
    nop
    add sp, $00
    nop
    ld l, $0e
    nop
    inc b
    ld [bc], a
    ld c, $0f
    nop
    ld b, b
    ld [bc], a
    ld a, [bc]
    dec bc
    nop
    db $10
    ld c, $00
    ld h, $00
    ld e, $1f
    nop
    ld h, b
    ld [bc], a
    ld a, [de]
    dec de
    nop
    jr nc, jr_037_65e1

    nop
    ld c, $10
    jr nz, jr_037_65f9

    nop
    add b
    ld [bc], a
    nop
    add b
    nop
    nop
    ld d, d
    inc c

jr_037_65e1:
    nop
    ld l, $10
    ld [hl+], a
    inc hl
    nop
    and b
    ld [bc], a
    nop
    and b
    nop
    nop
    ld [hl], d
    rrca
    ld bc, $8000
    jr jr_037_65f4

jr_037_65f4:
    sub d
    rrca
    ld bc, $a000

jr_037_65f9:
    jr jr_037_65fb

jr_037_65fb:
    or d
    inc c
    nop
    ret nz

    inc e
    jr z, jr_037_662b

    nop
    db $d4, $0a, $00
    ldh [rNR32], a
    ld a, [hl+]
    dec hl
    nop
    inc d
    ld [$0800], sp
    ld [bc], a
    ld a, a
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

jr_037_662b:
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

jr_037_6638:
    ld a, $40
    ld a, $38
    jr c, @+$01

    rst $38
    jr jr_037_6638

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
    jr z, jr_037_6652

jr_037_6652:
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
    jr jr_037_6692

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

jr_037_6692:
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
    jp Jump_037_5002


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
    jr nz, jr_037_66d6

    ld [de], a
    nop

jr_037_66d6:
    sub b
    sub b
    ld [bc], a
    jr jr_037_66df

    rst $18
    jr nc, jr_037_66e0

    ld [de], a

jr_037_66df:
    nop

jr_037_66e0:
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
    jr jr_037_66f5

    ld [bc], a
    db $10
    ld [de], a
    db $10

jr_037_66f5:
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


    jr nc, jr_037_675f

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

jr_037_673a:
    jr jr_037_673a

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

jr_037_6750:
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

jr_037_675f:
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

jr_037_6779:
    rra
    add hl, bc
    ret nz

    ret nz

    ld [bc], a
    db $10
    db $10
    jr jr_037_6779

    jr nc, jr_037_67b4

    ld [bc], a
    jr c, jr_037_679c

    ld [bc], a
    pop hl
    inc bc
    ld [bc], a
    ld [$801a], sp
    add b
    ld [bc], a
    jr c, jr_037_67ac

    ld [bc], a
    add $00
    ld [bc], a
    ld a, [hl+]
    ld d, $18
    rst $30
    db $10
    db $10

jr_037_679c:
    ld [bc], a
    jr c, jr_037_67b9

    ld [$0208], sp
    ld [hl], b
    nop
    ld b, b
    ccf
    ld [bc], a
    ld l, $14
    jr c, jr_037_67e3

    cp [hl]

jr_037_67ac:
    ld bc, $9f20
    jr nz, jr_037_6750

    ld [bc], a
    ld l, $14

jr_037_67b4:
    ld [bc], a
    ld h, $12
    ret nz

    cp [hl]

jr_037_67b9:
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
    db $c3, $c3, $02


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

jr_037_67e3:
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

jr_037_681e:
    ld [bc], a
    inc h
    inc a
    and [hl]
    ld e, c
    ld d, $e9
    ld [bc], a
    jr c, jr_037_685c

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
    jr c, jr_037_681e

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

jr_037_685c:
    dec sp
    call nz, Call_037_48b7
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


    jp c, $7671

    db $c3, $cc, $0f


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
    ld [bc], a
    inc [hl]
    jr z, jr_037_6902

    inc [hl]
    nop
    ld c, $ff
    inc [hl]
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc [hl]
    jr nz, jr_037_68f3

    inc [hl]
    inc d
    ld [$2d2c], sp
    ld [$3409], sp
    ld b, d
    ld [bc], a
    ld c, $0f
    inc [hl]
    ld b, d

jr_037_68f3:
    inc b
    inc [hl]
    inc d
    ld [$2f2e], sp
    jr jr_037_6914

    inc [hl]
    ld h, d
    ld [bc], a
    ld e, $1f
    inc [hl]
    ld h, d

jr_037_6902:
    inc b
    inc [hl]
    inc [hl]
    ld a, [bc]
    jr nc, jr_037_6939

    inc [hl]
    add d
    ld [bc], a
    ld c, $0f
    inc [hl]
    add d
    inc b
    inc [hl]
    ld d, h
    ld a, [bc]
    ld [hl-], a

jr_037_6914:
    inc sp
    inc [hl]
    and d
    ld [bc], a
    ld e, $1f
    inc [hl]
    and d
    inc b
    inc [hl]
    ld [hl], h
    inc c
    nop
    ld bc, $0504
    jr nc, jr_037_6957

    jr nz, jr_037_6949

    jr nc, jr_037_695b

    inc c
    dec c
    inc [hl]
    jp nz, Jump_000_3400

    sub h
    inc c
    db $10
    ld de, $1514
    ld [hl-], a
    inc sp
    ld [hl+], a

jr_037_6939:
    inc hl
    ld [hl-], a
    inc sp
    inc e
    dec e
    inc [hl]

jr_037_693f:
    ld [c], a
    nop
    inc [hl]
    ld [hl], h
    inc c
    inc h
    dec h
    inc [hl]
    add b
    inc b

jr_037_6949:
    inc [hl]
    adc d
    nop
    inc h
    dec h
    inc [hl]

jr_037_694f:
    sub h
    inc c
    ld h, $27
    inc [hl]
    and b
    inc b
    inc [hl]

jr_037_6957:
    xor d
    nop
    ld h, $27

jr_037_695b:
    inc [hl]
    db $f4
    ld c, $28
    add hl, hl
    ld [bc], a
    inc bc
    inc [hl]
    add $00
    inc [hl]
    ld c, $1f
    dec b
    ld a, [hl+]
    dec hl
    ld [de], a
    inc de
    inc [hl]
    and $00
    inc [hl]
    ld l, $1f
    inc bc
    ld b, $07
    inc [hl]
    ld b, d
    nop
    ld a, [bc]
    dec bc
    inc [hl]
    inc c
    rra
    dec b
    ld d, $17

jr_037_6981:
    inc [hl]
    ld h, d
    nop
    ld a, [de]
    dec de
    inc [hl]
    inc l
    rra
    dec b
    inc [hl]
    jp nz, $3416

    ld c, $1f
    inc bc
    inc [hl]
    ld [c], a
    ld d, $34
    ld l, $1e
    nop
    ld [bc], a
    jr nz, @+$2a

    add hl, hl
    jr nz, jr_037_699e

jr_037_699e:
    ld c, $ff
    jr nz, @+$16

    rlca
    ld a, [hl+]
    dec hl
    jr nz, jr_037_69c7

    ld c, $20
    inc d
    ld [$0908], sp
    jr nz, @+$42

jr_037_69af:
    ld c, $20
    inc d
    ld [$1918], sp
    jr nz, jr_037_6a17

    ld c, $20
    inc d
    ld [$3130], sp
    jr nz, jr_037_693f

    ld c, $20
    inc d
    ld [$3332], sp
    jr nz, @-$5e

jr_037_69c7:
    ld c, $20
    inc d
    ld [$0504], sp
    jr nz, jr_037_694f

    inc b

jr_037_69d0:
    inc c
    dec c
    jr nc, jr_037_6a05

    nop
    ld bc, $0302

jr_037_69d8:
    ld [bc], a
    inc bc
    jr nz, @+$16

    ld [$1514], sp
    jr nz, jr_037_6981

    inc b
    inc e
    dec e
    ld [hl-], a
    inc sp
    db $10

jr_037_69e7:
    ld de, $1312
    ld [de], a
    inc de
    jr nz, jr_037_6a02

    ld [$2928], sp
    jr nz, @-$2e

    nop

jr_037_69f4:
    jr nz, @-$3e

    nop
    ld c, $0f
    jr nc, jr_037_6a2c

    ld b, $07
    jr nz, @+$52

    inc c

jr_037_6a00:
    ld a, [hl+]
    dec hl

jr_037_6a02:
    jr nz, jr_037_69f4

    nop

jr_037_6a05:
    jr nz, jr_037_69e7

    nop
    ld e, $1f
    ld [hl-], a
    inc sp
    ld d, $17
    jr nz, jr_037_6a80

    inc c
    inc l

jr_037_6a12:
    dec l
    jr nz, jr_037_6a55

    nop
    ld a, [bc]

jr_037_6a17:
    dec bc
    jr nz, jr_037_6a22

    ld [de], a
    jr nz, @-$70

    ld c, $2e
    cpl
    jr nz, @+$62

jr_037_6a22:
    nop
    ld a, [de]
    dec de
    jr nz, @+$2a

    ld [de], a
    jr nz, jr_037_69d8

    ld c, $2c

jr_037_6a2c:
    dec l
    jr nz, jr_037_69af

    inc b
    inc h
    dec h
    jr nz, jr_037_69f4

    nop
    jr nz, jr_037_6a05

    nop
    jr nz, jr_037_6a8e

    ld a, [de]
    jr nz, @-$5e

    inc b

jr_037_6a3e:
    ld h, $27
    jr nz, jr_037_6a22

    nop
    jr nz, @-$10

    nop
    jr nz, jr_037_6abc

    inc e

jr_037_6a49:
    jr nz, @-$30

    ld [bc], a
    jr z, @+$2b

    jr nz, jr_037_69d0

    db $10
    inc h
    dec h
    jr nz, jr_037_6a67

jr_037_6a55:
    ld a, [bc]
    jr nz, @-$5e

    db $10
    jr nz, jr_037_6a49

    ld [bc], a
    ld a, [hl+]
    dec hl

jr_037_6a5e:
    jr nz, jr_037_6a00

    db $10
    ld h, $27
    jr nz, jr_037_6a97

    ld a, [bc]
    nop

jr_037_6a67:
    ld [bc], a
    jr nz, jr_037_6a92

    add hl, hl

jr_037_6a6b:
    jr nz, jr_037_6a6d

jr_037_6a6d:
    ld c, $ff
    jr nz, @+$16

    rlca

jr_037_6a72:
    ld a, [hl+]
    dec hl
    jr nz, jr_037_6a96

    ld c, $20
    inc d
    ld [$0908], sp
    jr nz, jr_037_6abe

    ld a, [bc]
    inc h

jr_037_6a80:
    dec h

jr_037_6a81:
    jr nz, jr_037_6a95

    ld a, [bc]
    jr jr_037_6a9f

    jr nz, @+$62

    ld a, [bc]
    ld h, $27
    jr nz, jr_037_6abf

    ld a, [bc]

jr_037_6a8e:
    jr nc, @+$33

    jr nz, jr_037_6a12

jr_037_6a92:
    ld a, [bc]
    ld b, $07

jr_037_6a95:
    inc h

jr_037_6a96:
    dec h

jr_037_6a97:
    jr nz, jr_037_6aad

    ld [$3332], sp
    jr nz, jr_037_6a3e

    ld a, [bc]

jr_037_6a9f:
    ld d, $17
    ld h, $27
    jr nz, jr_037_6ab9

    ld [$0302], sp
    inc b
    dec b
    jr nc, jr_037_6add

jr_037_6aac:
    nop

jr_037_6aad:
    ld bc, $0302
    jr nz, jr_037_6a72

    ld [bc], a
    jr nc, jr_037_6ae6

    jr nz, jr_037_6a49

    ld a, [bc]
    ld [de], a

jr_037_6ab9:
    inc de
    inc d
    dec d

jr_037_6abc:
    ld [hl-], a
    inc sp

jr_037_6abe:
    db $10

jr_037_6abf:
    ld de, $1312
    jr nz, @-$1e

jr_037_6ac4:
    ld [bc], a
    ld [hl-], a
    inc sp
    jr nz, @-$4c

    ld a, [bc]
    ld [$0a09], sp
    dec bc
    jr nz, jr_037_6a5e

    nop
    jr nz, jr_037_6b1f

    ld [bc], a
    jr nz, @-$3c

    nop
    jr nz, jr_037_6a6b

    ld a, [bc]
    jr jr_037_6af5

jr_037_6adc:
    ld a, [de]

jr_037_6add:
    dec de
    jr nz, jr_037_6a8e

    nop
    jr nz, jr_037_6b4f

    ld [bc], a
    jr nz, @-$1c

jr_037_6ae6:
    nop

jr_037_6ae7:
    jr nz, @-$4c

jr_037_6ae9:
    ld a, [bc]
    jr nz, @-$7a

    ld a, [bc]
    ld c, $0f
    jr nz, @-$2e

    inc c
    jr nz, @-$5a

    ld a, [bc]

jr_037_6af5:
    ld e, $1f
    jr nz, jr_037_6ae9

    inc c
    jr nz, jr_037_6ac4

    inc b
    inc c
    dec c
    jr nz, jr_037_6a81

    nop
    jr nz, jr_037_6b52

    ld e, $20
    add sp, $04
    inc e
    dec e

jr_037_6b0a:
    jr nz, jr_037_6aac

    nop
    jr nz, jr_037_6b7d

    ld e, $20
    nop
    nop
    inc l
    dec l

jr_037_6b15:
    jr nz, jr_037_6ae7

    nop
    jr nz, jr_037_6adc

    nop
    jr nz, jr_037_6b6b

    ld e, $20

jr_037_6b1f:
    jr nz, jr_037_6b21

jr_037_6b21:
    ld l, $2f
    jr nz, jr_037_6b15

    nop
    jr nz, jr_037_6b0a

    nop
    jr nz, jr_037_6b99

    ld e, $00
    ld [bc], a
    inc b
    inc l
    dec l
    jr nc, jr_037_6b64

    inc b
    ld [bc], a
    ld b, $0e
    rrca
    jr nc, jr_037_6b6b

    inc h
    dec h
    rst $38
    inc b
    inc d
    rlca
    ld l, $2f
    ld [hl-], a
    inc sp
    inc b
    ld [hl+], a
    ld b, $1e
    rra
    ld [hl-], a
    inc sp
    ld h, $27
    inc b
    inc d

jr_037_6b4f:
    ld [$0004], sp

jr_037_6b52:
    inc b
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    nop
    nop
    inc b
    ld [de], a
    rrca
    inc bc
    db $10
    ld de, $1312

jr_037_6b64:
    ld [de], a
    inc de
    inc b
    jr nz, jr_037_6b69

jr_037_6b69:
    inc b
    ld [hl-], a

jr_037_6b6b:
    rrca
    inc bc
    ld c, $0f
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc b
    db $10
    rrca
    dec b
    ld e, $1f
    jr jr_037_6b96

jr_037_6b7d:
    jr jr_037_6b98

    ld a, [de]
    dec de
    inc b
    jr nc, jr_037_6b93

    ld bc, $0d0c
    inc b
    inc c
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [de], a
    ld c, $1c
    dec e
    inc b

jr_037_6b93:
    inc l
    ld [bc], a
    inc b

jr_037_6b96:
    ld [hl+], a
    ld [bc], a

jr_037_6b98:
    inc b

jr_037_6b99:
    ld [hl-], a
    ld c, $04
    ld c, $00
    inc b
    ld c, $00
    inc b
    ld c, b
    ld [bc], a
    jr z, jr_037_6bcf

    inc b
    inc d
    inc c
    inc b
    ld l, $00
    inc b
    ld l, $00
    inc b
    ld l, b
    ld [bc], a
    ld a, [hl+]
    dec hl
    inc b
    db $f4
    rrca
    dec b
    ld b, $07
    inc b
    adc d
    nop
    ld [$0409], sp

jr_037_6bc0:
    inc d
    rra
    dec b
    ld d, $17

jr_037_6bc5:
    inc b
    xor d
    nop
    jr jr_037_6be3

    inc b
    db $f4
    rrca
    dec b
    inc b

jr_037_6bcf:
    ld [bc], a
    inc b
    inc b
    inc d
    rra
    dec b
    inc b
    ld [hl+], a
    inc b
    inc b
    db $f4
    rrca
    dec b
    inc b
    call nz, $0400
    ld c, b
    nop
    inc b

jr_037_6be3:
    inc d

jr_037_6be4:
    rra
    dec b
    inc b
    db $e4
    nop
    inc b
    ld l, b
    nop
    inc b
    inc d
    ld [$0200], sp
    jr nz, @+$2e

    dec l
    jr nc, jr_037_6c27

    inc h
    dec h
    jr z, @+$2b

    jr nz, @+$08

    nop

jr_037_6bfd:
    jr nz, jr_037_6bff

jr_037_6bff:
    inc b
    rst $38
    jr nz, jr_037_6c17

    rlca
    ld l, $2f
    ld [hl-], a
    inc sp
    ld h, $27
    ld a, [hl+]
    dec hl
    jr nz, jr_037_6c34

    nop
    jr nz, @+$22

    inc b
    jr nz, @+$16

    ld [$0020], sp

jr_037_6c17:
    nop
    ld b, $07
    ld [$0809], sp
    add hl, bc
    ld c, $0f

jr_037_6c20:
    ld a, [bc]
    dec bc
    jr nz, jr_037_6c66

    nop
    inc h
    dec h

jr_037_6c27:
    jr nz, @+$16

    inc c
    ld d, $17
    jr @+$1b

    jr jr_037_6c49

    ld e, $1f
    ld a, [de]
    dec de

jr_037_6c34:
    jr nz, @+$64

    nop
    ld h, $27
    jr nz, jr_037_6c6f

    inc c

jr_037_6c3c:
    jr nz, jr_037_6bc0

    ld [bc], a
    ld c, $0f
    jr nz, jr_037_6bc5

    ld [bc], a
    jr nz, @+$54

    ld c, $20
    and d

jr_037_6c49:
    ld [bc], a
    ld e, $1f

jr_037_6c4c:
    jr nz, @-$5c

    ld [bc], a

jr_037_6c4f:
    jr nz, @+$74

    ld a, [bc]
    jr z, @+$2b

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    jr nz, jr_037_6be4

    rrca
    dec b

jr_037_6c5e:
    ld a, [hl+]
    dec hl
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    dec d

jr_037_6c66:
    jr nz, @-$56

    rrca
    rlca
    inc l
    dec l
    ld [$2009], sp

jr_037_6c6f:
    ld c, h
    nop
    jr nz, jr_037_6bfd

    nop
    inc c
    dec c
    jr nz, jr_037_6cba

    nop
    jr nz, jr_037_6c4f

    ld a, [bc]
    ld l, $2f
    jr jr_037_6c99

    jr nz, jr_037_6cee

    nop
    jr nz, @-$54

    nop
    inc e
    dec e
    jr nz, @+$64

    nop
    jr nz, @+$16

    ld [$0420], sp
    ld [de], a
    jr nz, @-$78

    inc b
    jr nz, jr_037_6c20

    ld [bc], a
    jr nz, jr_037_6cad

jr_037_6c99:
    ld [$2420], sp
    ld [de], a
    jr nz, @-$58

    inc b
    jr nz, jr_037_6c4c

    ld [bc], a
    jr nz, @+$16

    ld [$8220], sp
    ld [bc], a
    nop
    ld bc, $0302

jr_037_6cad:
    jr nz, jr_037_6caf

jr_037_6caf:
    nop
    jr nz, jr_037_6c3c

    nop
    nop
    ld bc, $1420
    ld [$a220], sp

jr_037_6cba:
    ld [bc], a
    db $10

jr_037_6cbc:
    ld de, $1312
    jr nz, @+$22

    nop
    jr nz, @-$54

    nop
    db $10
    ld de, $1420
    ld [$c220], sp
    nop
    ld [bc], a
    inc bc
    jr nz, @+$0a

    inc b
    jr nz, jr_037_6c5e

    nop
    jr nz, @+$54

    ld a, [bc]
    jr nz, jr_037_6cbc

    nop
    ld [de], a
    inc de
    jr nz, jr_037_6d07

    inc b
    jr nz, @-$54

    nop
    jr nz, jr_037_6d57

    ld a, [bc]
    nop
    ld [bc], a
    ld b, $28
    add hl, hl
    jr z, jr_037_6d16

    inc l

jr_037_6cee:
    dec l
    jr nc, jr_037_6d22

    inc h
    dec h
    ld b, $04
    nop
    ld c, $0f
    ld b, $06
    nop
    rst $38
    ld b, $14
    rlca
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld l, $2f
    ld [hl-], a
    inc sp

jr_037_6d07:
    ld h, $27
    ld b, $24
    nop
    ld e, $1f
    ld b, $26
    nop
    ld b, $14
    ld [$0006], sp

jr_037_6d16:
    rrca
    dec [hl]
    ld c, $0f
    ld a, [bc]
    dec bc
    ld b, $0c
    rrca
    add hl, bc
    ld e, $1f

jr_037_6d22:
    ld a, [de]
    dec de
    ld b, $6c
    rrca
    dec bc
    jr nc, @+$33

    ld b, $8c
    rrca
    dec bc
    ld [hl-], a
    inc sp
    ld b, $2c
    rrca
    ld bc, $0908
    ld [$0609], sp
    adc d
    inc b
    nop
    ld bc, $0406
    ld [bc], a
    ld b, $14
    ld [$1918], sp
    jr jr_037_6d60

    ld b, $aa
    inc b
    db $10
    ld de, $2406
    ld [bc], a
    ld b, $14
    ld [$ca06], sp
    nop
    ld b, $ca

jr_037_6d57:
    nop
    jr nz, jr_037_6d7b

    ld b, $86
    inc b
    ld b, $12
    ld a, [bc]

jr_037_6d60:
    ld b, $ea
    nop
    ld b, $ea
    nop
    ld [hl+], a
    inc hl
    ld b, $a6
    inc b
    ld b, $32
    ld a, [bc]
    inc b
    dec b
    ld b, $40
    inc d
    ld b, $c6
    inc b
    ld b, $12
    ld a, [bc]
    inc d
    dec d

jr_037_6d7b:
    ld b, $60
    inc d
    ld b, $e6
    inc b
    ld b, $32
    ld a, [bc]
    ld b, $04
    nop
    nop
    ld bc, $0302
    ld b, $80
    db $10
    ld b, $08
    ld [de], a
    jr z, jr_037_6dbc

    ld b, $14
    ld [$2406], sp
    nop
    db $10
    ld de, $1312
    ld b, $a0
    db $10
    ld b, $28
    ld [de], a
    ld a, [hl+]
    dec hl
    ld b, $14
    ld [$0200], sp
    inc b
    inc l
    dec l
    jr nc, @+$33

    ld c, $0f
    inc b
    ld [bc], a
    ld b, $24
    dec h
    jr z, jr_037_6de1

    rst $38
    inc b
    inc d
    rlca

jr_037_6dbc:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld e, $1f
    inc b
    ld [hl+], a
    ld b, $26
    daa
    ld a, [hl+]
    dec hl
    inc b
    inc d
    ld [$0004], sp
    nop
    jr nz, jr_037_6df2

    inc b
    ld [bc], a
    ld b, $06
    rlca
    ld [$0409], sp
    inc d
    inc c
    ld [hl+], a
    inc hl
    inc b
    ld [hl+], a
    ld b, $16

jr_037_6de1:
    rla
    jr jr_037_6dfd

    inc b
    inc [hl]
    inc c
    inc b
    add d
    nop
    inc b
    inc b
    inc b
    inc b
    add d
    nop
    inc b
    inc d

jr_037_6df2:
    inc c
    inc b
    and d
    nop
    inc b
    inc h
    inc b
    inc b
    and d
    nop
    inc b

jr_037_6dfd:
    inc d
    ld [$2928], sp
    ld [bc], a
    inc bc
    inc b
    jp nz, $0400

    nop
    inc b
    nop
    ld bc, $0302
    inc b
    inc d
    ld [$2b2a], sp
    ld [de], a
    inc de
    inc b
    ld [c], a
    nop
    inc b
    jr nz, jr_037_6e1e

    db $10
    ld de, $1312

jr_037_6e1e:
    inc b
    inc [hl]
    ld a, [bc]
    ld [$0409], sp
    ld [bc], a
    db $10
    ld a, [bc]
    dec bc
    inc b
    ld c, d
    rrca
    dec b
    jr jr_037_6e47

    inc b
    ld [hl+], a
    db $10
    ld a, [de]
    dec de
    inc b
    ld l, d
    rrca
    dec bc
    inc b
    add d
    nop
    inc b
    ld b, h
    nop
    inc b
    sub b
    rrca
    dec b
    inc b
    and d
    nop
    inc b
    ld h, h
    nop

jr_037_6e47:
    inc b
    or b
    inc c
    inc b
    ld b, b
    jr jr_037_6e52

    add d
    nop
    inc b
    ret nc

jr_037_6e52:
    inc c
    inc b
    ld h, b
    jr @+$06

    and d
    nop
    inc b
    ldh a, [$0c]
    inc b
    ret nz

    inc b
    inc b
    jp nz, $2814

    add hl, hl
    inc b
    ld [de], a
    ld a, [bc]
    inc b
    ldh [rDIV], a
    inc b
    ld [c], a
    inc d
    ld a, [hl+]
    dec hl
    inc b
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    jr z, jr_037_6ea0

    inc c
    nop
    inc b
    inc l
    dec l
    jr nc, jr_037_6eaf

    ld c, $0f
    jr nc, jr_037_6eb3

    inc h
    dec h
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_037_6e91

    ld l, $2f
    ld [hl-], a
    inc sp

jr_037_6e91:
    ld e, $1f
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    inc d
    ld [$0908], sp
    ld [$0e09], sp
    rrca

jr_037_6ea0:
    inc c
    ld b, b
    nop
    ld a, [bc]
    dec bc
    inc c
    inc c
    rrca
    ld bc, $1918
    jr @+$1b

    ld e, $1f

jr_037_6eaf:
    inc c
    ld h, b
    nop
    ld a, [de]

jr_037_6eb3:
    dec de
    inc c
    inc l
    rrca
    ld bc, $3130
    jr nc, @+$33

    jr nz, jr_037_6edf

    inc c
    add b
    nop
    inc c
    add b
    nop
    inc c
    ld c, $0e
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl+], a
    inc hl
    inc c
    and b
    nop
    inc c
    and b
    nop
    inc c
    ld l, $0e
    inc b
    dec b
    inc c
    add [hl]
    inc b
    inc c
    adc d
    rrca
    inc bc

jr_037_6edf:
    inc d
    dec d
    inc c
    and [hl]
    inc b
    inc c
    xor d
    rrca
    inc bc
    inc c
    ld c, d
    nop
    nop
    ld bc, $0302
    inc c
    ld b, $12
    inc c
    ld a, [bc]
    nop
    inc c
    ld [de], a
    ld a, [bc]
    inc c
    ld l, d
    nop
    db $10
    ld de, $1312
    inc c
    ld h, $12
    inc c
    ld a, [hl+]
    nop
    inc c
    ld [hl], d
    ld c, $0c
    ld b, h
    ld [bc], a
    inc c
    ld b, [hl]
    inc b
    ld b, $07
    inc c
    sub h
    inc c
    inc c
    ld h, h
    ld [bc], a
    inc c
    ld h, [hl]
    inc b
    ld d, $17
    inc c
    inc d
    ld [$0a0c], sp
    ld [de], a
    inc a
    dec a
    inc c
    jp nz, $0c08

    inc d
    ld [$2a0c], sp
    ld [de], a
    ld a, $3f
    inc c
    ld [c], a
    ld [$140c], sp
    ld [$000c], sp
    ld [bc], a
    inc c
    ld b, $14
    inc c
    ld b, $12
    inc c
    inc d
    ld c, $0c
    ld h, $14
    inc c
    ld h, $12
    inc c
    inc d
    ld [$0200], sp
    inc c
    inc l
    dec l
    jr nc, jr_037_6f81

    inc h
    dec h
    jr z, jr_037_6f7d

    inc c
    nop
    nop
    ld c, $0f
    inc c
    ld [bc], a
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld l, $2f
    ld [hl-], a
    inc sp
    ld h, $27
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_037_6f6b

jr_037_6f6b:
    ld e, $1f
    inc c
    ld [hl+], a
    ld [bc], a
    inc c
    inc d
    ld [$000c], sp
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c

jr_037_6f7d:
    ld a, [bc]
    ld [bc], a
    ld b, $07

jr_037_6f81:
    inc h
    dec h
    inc c
    inc d
    inc c
    ld d, $17
    jr jr_037_6fa3

    ld a, [de]
    dec de
    inc c
    ld a, [hl+]
    ld [bc], a
    ld d, $17
    ld h, $27
    inc c
    inc [hl]
    inc c
    inc c
    add d
    inc b
    inc c
    inc c
    nop
    inc c
    ld [bc], a
    nop
    inc c
    inc d
    inc c
    inc c

jr_037_6fa3:
    and d
    inc b
    inc c
    inc l
    nop
    inc c
    ld [hl+], a
    nop
    inc c
    inc d
    ld [$2928], sp
    ld [bc], a
    inc bc
    inc c
    jp nz, $2804

    add hl, hl
    inc b
    dec b
    inc c
    sub b
    inc c
    ld a, [hl+]
    dec hl
    ld [de], a
    inc de
    inc c
    ld [c], a
    inc b
    ld a, [hl+]
    dec hl
    inc d
    dec d
    inc c
    or b
    inc c
    inc l
    dec l
    ld [$0c09], sp
    ld [bc], a
    ld [de], a
    inc c
    inc b
    inc b
    inc c
    ld d, d
    inc c
    jr jr_037_6ff2

    inc c
    ld [hl+], a
    ld [de], a
    inc c
    inc h
    inc b
    inc c
    ld [hl], d
    ld a, [bc]
    inc c
    ld c, b
    nop
    inc c
    add d
    ld [bc], a
    inc c
    ld b, h
    inc b
    inc c
    ld d, d
    ld a, [bc]
    inc c
    ld l, b
    nop
    inc c

jr_037_6ff2:
    and d
    ld [bc], a
    inc c
    ld h, h
    inc b
    inc c
    ld [hl], d
    ld a, [bc]
    inc c
    add d
    nop
    nop
    ld bc, $ce0c
    nop
    inc c
    add d
    inc b
    inc c
    ld d, d
    ld a, [bc]
    inc c
    and d
    nop
    db $10
    ld de, $ee0c
    nop
    inc c
    and d
    inc b
    inc c
    ld [hl], d
    ld a, [bc]
    inc c
    ret z

    ld [bc], a
    inc c
    ret nz

    ld a, [bc]
    inc c
    inc d
    ld [$e80c], sp
    ld [bc], a
    inc c
    ldh [$0a], a
    inc c
    inc d
    ld [$0800], sp
    ld [bc], a
    ld a, a
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

jr_037_7053:
    ld a, $40
    ld a, $38
    jr c, @+$01

    rst $38
    jr jr_037_7053

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
    jr z, jr_037_706d

jr_037_706d:
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
    jr jr_037_70ad

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

jr_037_70ad:
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
    jp Jump_037_5002


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
    jr nz, jr_037_70f1

    ld [de], a
    nop

jr_037_70f1:
    sub b
    sub b
    ld [bc], a
    jr jr_037_70fa

    rst $18
    jr nc, jr_037_70fb

    ld [de], a

jr_037_70fa:
    nop

jr_037_70fb:
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
    jr jr_037_7110

    ld [bc], a
    db $10
    ld [de], a
    db $10

jr_037_7110:
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


    jr nc, jr_037_717a

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

jr_037_7155:
    jr jr_037_7155

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

jr_037_716b:
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

jr_037_717a:
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

jr_037_7194:
    rra
    add hl, bc
    ret nz

    ret nz

    ld [bc], a
    db $10
    db $10
    jr jr_037_7194

    jr nc, jr_037_71cf

    ld [bc], a
    jr c, jr_037_71b7

    ld [bc], a
    pop hl
    inc bc
    ld [bc], a
    ld [$801a], sp
    add b
    ld [bc], a
    jr c, jr_037_71c7

    ld [bc], a
    add $00
    ld [bc], a
    ld a, [hl+]
    ld d, $18
    rst $30
    db $10
    db $10

jr_037_71b7:
    ld [bc], a
    jr c, jr_037_71d4

    ld [$0208], sp
    ld [hl], b
    nop
    ld b, b
    ccf
    ld [bc], a
    ld l, $14
    jr c, jr_037_71fe

    cp [hl]

jr_037_71c7:
    ld bc, $9f20
    jr nz, jr_037_716b

    ld [bc], a
    ld l, $14

jr_037_71cf:
    ld [bc], a
    ld h, $12
    ret nz

    cp [hl]

jr_037_71d4:
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
    db $c3, $c3, $02


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

jr_037_71fe:
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

jr_037_7239:
    ld [bc], a
    inc h
    inc a
    and [hl]
    ld e, c
    ld d, $e9
    ld [bc], a
    jr c, jr_037_7277

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
    jr c, jr_037_7239

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

jr_037_7277:
    dec sp
    call nz, Call_037_48b7
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


    jp c, $7671

    db $c3, $cc, $0f


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
    ld [bc], a
    inc c
    jr z, jr_037_731d

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_037_730e

    inc c
    inc d
    ld [$2d2c], sp
    ld [$0c09], sp
    ld b, d
    ld [bc], a
    ld c, $0f
    inc c
    ld b, d

jr_037_730e:
    inc b
    inc c
    inc d
    ld [$2f2e], sp
    jr jr_037_732f

    inc c
    ld h, d
    ld [bc], a
    ld e, $1f
    inc c
    ld h, d

jr_037_731d:
    inc b
    inc c
    inc [hl]
    ld a, [bc]
    jr nc, @+$33

    inc c
    add d
    ld [bc], a
    jr nz, jr_037_7349

    inc c
    add d
    inc b
    inc c
    ld d, h
    ld a, [bc]
    ld [hl-], a

jr_037_732f:
    inc sp
    inc c
    and d
    ld [bc], a
    ld [hl+], a
    inc hl
    inc c
    and d
    inc b
    inc c
    ld [hl], h
    inc c
    nop
    ld bc, $0504
    inc c
    add d
    ld [bc], a
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc c

jr_037_7349:
    sub h
    inc c
    db $10
    ld de, $1514
    inc c
    and d
    ld [bc], a
    db $10
    ld de, $1312
    ld [de], a
    inc de
    inc c
    ld [hl], h
    inc c
    ld b, $07
    inc h
    dec h
    inc c
    ret nc

    nop
    ld [bc], a
    inc bc
    inc c
    ld b, b
    ld [bc], a
    inc c
    sub h
    inc c
    ld d, $17
    ld h, $27
    inc c
    ldh a, [rP1]
    ld [de], a
    inc de
    inc c
    ld h, b
    ld [bc], a
    inc c
    ld [hl], h
    ld c, $06
    rlca
    inc c
    ld b, d
    ld [bc], a
    ld a, [bc]

jr_037_737f:
    dec bc
    inc c
    sub b
    rrca
    inc bc
    ld d, $17
    inc c
    ld h, d
    ld [bc], a
    ld a, [de]

jr_037_738a:
    dec de
    inc c
    or b
    inc c
    jr z, jr_037_73b9

    inc c
    add $04
    inc c
    add d
    inc b
    nop
    ld bc, $140c
    ld a, [bc]
    inc c
    and $04
    inc c
    and d
    inc b
    db $10
    ld de, $740c
    ld a, [de]
    inc c
    ret nz

jr_037_73a8:
    ld b, $0c
    call nz, $2402
    dec h
    inc c

jr_037_73af:
    inc d
    ld a, [bc]
    inc c
    ldh [rTMA], a
    inc c
    db $e4
    ld [bc], a
    ld h, $27

jr_037_73b9:
    inc c

jr_037_73ba:
    inc d
    ld [$0200], sp
    jr nz, @+$2a

    add hl, hl
    jr nz, jr_037_73c3

jr_037_73c3:
    ld c, $ff
    jr nz, jr_037_73db

    rlca
    ld a, [hl+]

jr_037_73c9:
    dec hl
    jr nz, @+$22

    ld c, $20
    inc d
    ld [$0908], sp
    ld [$2409], sp
    dec h
    inc l
    dec l
    jr nz, jr_037_741a

    nop

jr_037_73db:
    jr nz, jr_037_7425

    ld [bc], a
    inc h
    dec h
    jr nz, @+$16

    ld [$1918], sp
    jr jr_037_7400

jr_037_73e7:
    ld h, $27
    ld l, $2f
    jr nz, jr_037_744d

    nop
    jr nz, jr_037_7458

    ld [bc], a
    ld h, $27
    jr nz, jr_037_7409

    ld [$3130], sp
    jr nc, jr_037_742b

    jr nz, @+$46

    nop
    jr nz, jr_037_737f

    nop

jr_037_7400:
    jr nz, jr_037_738a

    ld [bc], a
    jr nz, jr_037_7457

    ld a, [bc]
    ld [hl-], a
    inc sp
    ld [hl-], a

jr_037_7409:
    inc sp
    jr nz, @+$66

    nop
    jr nz, jr_037_73af

    nop
    jr nz, jr_037_73ba

    ld [bc], a
    jr nz, @+$74

    ld a, [bc]
    inc b
    dec b
    jr nc, @+$33

jr_037_741a:
    ld b, $07
    ld a, [bc]

jr_037_741d:
    dec bc
    jr nz, jr_037_73a8

jr_037_7420:
    ld [bc], a
    inc c
    dec c
    jr nz, jr_037_73e7

jr_037_7425:
    nop
    jr nz, @+$16

    ld [$1514], sp

jr_037_742b:
    ld [hl-], a
    inc sp
    ld d, $17
    ld a, [de]
    dec de
    jr nz, jr_037_73db

    ld [bc], a
    inc e
    dec e
    jr nz, jr_037_741a

    nop
    jr nz, jr_037_744f

    ld [$c620], sp
    inc b
    jr nz, jr_037_73c9

    ld [bc], a
    ld c, $0f
    jr nz, @-$7e

    nop
    jr nz, jr_037_745d

    ld [$e620], sp
    inc b

jr_037_744d:
    jr nz, @-$56

jr_037_744f:
    ld [bc], a
    ld e, $1f
    jr nz, @-$5e

    nop
    jr nz, jr_037_74cb

jr_037_7457:
    inc c

jr_037_7458:
    nop
    ld bc, $0302
    ld [bc], a

jr_037_745d:
    inc bc
    jr nz, jr_037_7420

    nop
    jr nz, jr_037_7471

    stop
    ld bc, $9420

jr_037_7468:
    inc c
    db $10
    ld de, $1312
    ld [de], a
    inc de
    jr nz, @-$1e

jr_037_7471:
    nop
    jr nz, jr_037_74a2

jr_037_7474:
    db $10
    db $10
    ld de, $b420
    ld c, $20
    ld b, b
    nop
    jr nz, @-$38

    nop
    jr nz, @+$10

    db $10
    jr nz, @+$54

    ld a, [bc]
    jr nz, jr_037_7468

    ld [bc], a
    jr nz, @+$62

    nop
    jr nz, jr_037_7474

    nop
    jr nz, jr_037_74bf

    db $10
    jr nz, jr_037_7506

    ld a, [bc]
    jr nz, jr_037_741d

    ld [$8c20], sp
    rra
    ld bc, $a620
    ld [$ac20], sp
    rra

jr_037_74a2:
    ld bc, $0200
    nop
    jr z, jr_037_74d1

    nop
    nop
    ld c, $ff
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_037_74c2

    nop
    inc d
    ld [$2928], sp
    inc l
    dec l
    ld [$0009], sp
    ld b, h

jr_037_74bf:
    ld [$2524], sp

jr_037_74c2:
    nop
    inc d
    ld a, [bc]
    ld l, $2f
    jr @+$1b

    nop
    ld h, h

jr_037_74cb:
    ld [$2726], sp
    nop
    inc [hl]
    inc c

jr_037_74d1:
    jr nc, jr_037_7504

    nop
    add h
    ld [$5200], sp
    ld c, $32
    inc sp
    nop
    and h
    ld [$7200], sp
    ld a, [bc]
    ld [$0a09], sp
    dec bc
    jr nc, @+$33

    inc c
    dec c
    nop
    db $c4, $06, $00
    ld d, d
    ld a, [bc]
    jr jr_037_750a

    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    inc e
    dec e
    nop
    db $e4
    ld b, $00
    ld [hl], d
    ld a, [bc]
    nop
    add h
    ld [bc], a
    ld c, $0f
    nop
    inc b

jr_037_7504:
    ld d, $00

jr_037_7506:
    ld d, d
    ld a, [bc]
    nop
    and h

jr_037_750a:
    ld [bc], a

jr_037_750b:
    ld e, $1f
    nop
    inc h
    ld d, $00
    ld [hl], d
    ld a, [bc]
    ld [bc], a
    inc bc
    nop
    ld b, b
    stop
    add d
    nop
    nop
    ld a, [bc]
    rra
    inc bc
    ld [de], a
    inc de
    nop
    ld h, b
    stop

jr_037_7525:
    and d
    nop
    nop
    ld a, [hl+]
    rra
    inc bc
    nop
    nop
    ld [bc], a
    nop
    ld b, [hl]
    rra
    rlca
    nop

jr_037_7533:
    jr nz, jr_037_7537

    nop
    ld h, [hl]

jr_037_7537:
    rra
    ld b, a

jr_037_7539:
    nop
    ld [bc], a
    jr nz, jr_037_7565

    add hl, hl

jr_037_753e:
    inc l
    dec l
    jr nc, @+$33

    inc h
    dec h
    jr nz, @+$04

    ld [$20ff], sp
    inc d
    rlca
    ld a, [hl+]
    dec hl
    ld l, $2f
    ld [hl-], a
    inc sp
    ld h, $27
    jr nz, @+$24

jr_037_7555:
    ld [$1420], sp
    ld [$2d2c], sp
    ld a, [bc]

jr_037_755c:
    dec bc
    jr nc, @+$33

    ld b, $07
    ld c, $0f
    jr nz, @+$46

jr_037_7565:
    nop
    jr nz, jr_037_75aa

    nop
    jr nz, @+$14

    ld a, [bc]
    ld l, $2f
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld d, $17
    ld e, $1f
    jr nz, @+$66

    nop
    jr nz, jr_037_75dd

    nop
    jr nz, jr_037_75b0

    inc c
    jr nc, @+$33

    jr nz, @-$7c

    nop
    jr nz, jr_037_75ce

    nop
    jr nz, jr_037_750b

    ld [bc], a
    jr nz, jr_037_75de

    inc c
    ld [hl-], a
    inc sp
    jr nz, jr_037_7533

    nop
    jr nz, jr_037_75fc

    nop
    jr nz, jr_037_7539

    ld [bc], a
    jr nz, jr_037_760c

    ld c, $0c
    dec c
    jr nz, jr_037_7525

    ld [bc], a
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    jr z, jr_037_75d1

    jr nz, jr_037_753e

jr_037_75aa:
    inc c
    inc e
    dec e
    jr nz, jr_037_7555

    ld [bc], a

jr_037_75b0:
    db $10
    ld de, $1312
    ld [de], a
    inc de
    ld a, [hl+]
    dec hl

jr_037_75b8:
    jr nz, jr_037_762e

    inc c
    jr nz, jr_037_7605

    nop
    jr nz, jr_037_7608

    ld [bc], a
    ld [$2009], sp
    ld c, $10
    jr nz, jr_037_755c

    inc c
    jr nz, @+$6a

    nop
    jr nz, jr_037_7636

jr_037_75ce:
    ld [bc], a
    jr jr_037_75ea

jr_037_75d1:
    jr nz, @+$30

    db $10
    jr nz, @-$0a

    rrca

jr_037_75d7:
    dec b

jr_037_75d8:
    jr nz, @-$74

    inc b
    jr nz, jr_037_75f1

jr_037_75dd:
    rra

jr_037_75de:
    dec b
    jr nz, @-$54

    inc b
    jr nz, jr_037_75d8

    rrca

jr_037_75e5:
    ld bc, $2524
    ld [bc], a
    inc bc

jr_037_75ea:
    inc b
    dec b
    jr nz, jr_037_75b8

    ld [bc], a
    jr nz, jr_037_7605

jr_037_75f1:
    rra
    ld bc, $2726
    ld [de], a
    inc de
    inc d
    dec d
    jr nz, jr_037_75e5

    ld [bc], a

jr_037_75fc:
    jr nz, jr_037_7672

    rra
    inc bc

jr_037_7600:
    jr nz, jr_037_7602

jr_037_7602:
    inc b
    jr nz, jr_037_75d7

jr_037_7605:
    ld c, $20
    and h

jr_037_7608:
    ld [de], a
    jr nz, jr_037_762b

    inc b

jr_037_760c:
    jr nz, jr_037_7600

    ld a, [bc]
    nop
    ld [bc], a
    jr nz, jr_037_763f

    dec l
    jr nc, @+$33

    jr nz, jr_037_761a

    ld b, $0e

jr_037_761a:
    rrca
    jr nc, @+$33

jr_037_761d:
    inc h
    dec h
    rst $38
    jr nz, jr_037_7636

    rlca
    ld l, $2f
    ld [hl-], a

jr_037_7626:
    inc sp
    jr nz, @+$24

    ld b, $1e

jr_037_762b:
    rra
    ld [hl-], a
    inc sp

jr_037_762e:
    ld h, $27
    jr nz, jr_037_7646

    ld [$0020], sp
    ld [bc], a

jr_037_7636:
    nop
    ld bc, $0302
    inc b
    dec b
    jr nz, jr_037_764a

    rrca

jr_037_763f:
    rlca
    db $10
    ld de, $1312
    inc d
    dec d

jr_037_7646:
    jr nz, jr_037_7674

jr_037_7648:
    rrca
    rlca

jr_037_764a:
    ld b, $07
    ld [$0a09], sp
    dec bc
    jr nz, @+$0e

    rrca
    rlca
    ld d, $17

jr_037_7656:
    jr @+$1b

    ld a, [de]
    dec de
    jr nz, jr_037_7688

    rrca
    ld bc, $2928
    jr nz, jr_037_76ac

    nop
    jr nz, jr_037_766b

    rrca
    rlca
    ld a, [hl+]

jr_037_7668:
    dec hl
    jr nz, @+$6c

jr_037_766b:
    nop
    jr nz, jr_037_7694

    rrca
    rlca
    jr nz, @-$76

jr_037_7672:
    ld [bc], a
    inc c

jr_037_7674:
    dec c
    jr nz, @+$46

    ld [bc], a
    jr nz, jr_037_767a

jr_037_767a:
    nop
    jr nz, @+$14

    ld a, [bc]
    jr nz, @-$56

    ld [bc], a
    inc e
    dec e
    jr nz, @+$66

    ld [bc], a
    jr nz, @+$22

jr_037_7688:
    nop
    jr nz, @+$34

    ld a, [bc]
    jr nz, jr_037_7696

    ld [$2d2c], sp
    jr nz, jr_037_761d

    nop

jr_037_7694:
    jr nz, @+$14

jr_037_7696:
    ld a, [bc]
    jr nz, jr_037_76c1

    ld [$2f2e], sp
    jr nz, jr_037_7648

    nop
    jr nz, @+$34

    ld a, [bc]

jr_037_76a2:
    ld [bc], a
    inc bc
    jr nz, jr_037_7626

    db $10
    jr nz, jr_037_76a9

jr_037_76a9:
    nop
    ld b, $07

jr_037_76ac:
    jr nz, @-$74

    nop
    jr nz, jr_037_76c1

jr_037_76b1:
    inc c
    ld [de], a
    inc de
    jr nz, jr_037_7656

    db $10
    jr nz, jr_037_76d9

    nop
    ld d, $17
    jr nz, jr_037_7668

    nop
    jr nz, @-$4e

jr_037_76c1:
    ld c, $20
    ret nz

    db $10
    jr nz, jr_037_76c7

jr_037_76c7:
    ld b, $00
    ld bc, $2928
    jr nz, jr_037_76a2

    ld a, [bc]
    jr nz, jr_037_76b1

    db $10
    jr nz, jr_037_76f4

    ld b, $10
    ld de, $2b2a

jr_037_76d9:
    jr nz, jr_037_76ef

    ld [$0200], sp
    inc [hl]
    jr z, @+$2b

    inc [hl]
    nop
    nop
    inc l
    dec l
    jr nc, jr_037_7719

    ld c, $0f
    inc [hl]
    ld [$2402], sp
    dec h

jr_037_76ef:
    rst $38
    inc [hl]
    inc d
    rlca
    ld a, [hl+]

jr_037_76f4:
    dec hl
    inc [hl]
    jr nz, jr_037_76f8

jr_037_76f8:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld e, $1f
    inc [hl]
    jr z, jr_037_7703

    ld h, $27

jr_037_7703:
    inc [hl]
    inc d
    ld [$2d2c], sp
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc [hl]
    ld [$050f], sp
    ld l, $2f
    jr jr_037_772f

    jr jr_037_7731

    ld a, [de]

jr_037_7719:
    dec de
    inc [hl]
    jr z, jr_037_772c

    rlca
    jr nc, jr_037_7751

    inc [hl]
    add d
    ld [bc], a
    inc [hl]
    ld c, d
    rrca
    dec b
    ld [hl-], a
    inc sp
    inc [hl]
    and d
    ld [bc], a

jr_037_772c:
    inc [hl]
    ld l, d
    rrca

jr_037_772f:
    rlca
    nop

jr_037_7731:
    ld bc, $0302
    ld [bc], a
    inc bc
    inc [hl]
    ld b, $04
    inc [hl]
    sub d
    ld c, $10
    ld de, $1312
    ld [de], a
    inc de
    inc [hl]
    ld h, $04
    inc [hl]
    ld [hl], d
    ld c, $06
    rlca
    inc [hl]
    ld b, d
    nop
    inc [hl]
    adc d
    rrca
    rlca

jr_037_7751:
    ld d, $17
    inc [hl]
    ld h, d
    nop
    inc [hl]
    ld l, d
    rrca
    dec c
    jr nz, @+$23

    inc [hl]
    adc h
    rrca
    dec bc
    ld [hl+], a
    inc hl
    inc [hl]
    inc l
    rrca
    ld bc, $2928
    inc b
    dec b
    jr nc, jr_037_779d

    inc c
    dec c
    inc [hl]
    add h
    ld b, $34
    ld [de], a
    inc c
    inc d
    dec d
    ld [hl-], a
    inc sp
    inc e
    dec e
    inc [hl]
    and h
    ld b, $34
    ld [hl], d
    inc e
    inc [hl]
    ld b, $04
    inc [hl]
    call nz, Call_000_3400
    ld b, $00
    inc [hl]
    ld [de], a
    inc c
    inc [hl]
    ld h, $04
    inc [hl]
    db $e4
    nop
    inc [hl]
    ld h, $00
    inc [hl]
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    inc l
    dec l

jr_037_779d:
    jr nc, jr_037_77d0

    ld c, $0f
    jr nc, @+$33

    inc h
    dec h
    jr z, jr_037_77d0

    inc c
    nop
    nop
    inc c
    ld [$ff00], sp
    inc c
    inc d
    rlca
    ld l, $2f
    ld [hl-], a
    inc sp
    ld e, $1f
    ld [hl-], a
    inc sp
    ld h, $27
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_037_77c0

jr_037_77c0:
    inc c
    jr z, jr_037_77c3

jr_037_77c3:
    inc c
    inc d
    ld [$000c], sp
    inc c
    ld b, $07
    ld [$0c09], sp
    inc d
    rrca

jr_037_77d0:
    add hl, bc
    ld d, $17
    jr jr_037_77ee

    inc c
    inc [hl]
    inc c
    inc h
    dec h
    ld [bc], a
    inc bc
    jr z, jr_037_7807

    inc c
    ld a, [bc]
    ld [bc], a
    inc c
    adc [hl]
    nop
    inc c
    inc d
    inc c
    ld h, $27
    ld [de], a
    inc de
    ld a, [hl+]
    dec hl
    inc c

jr_037_77ee:
    ld a, [hl+]
    ld [bc], a
    inc c
    xor [hl]
    nop
    inc c
    inc [hl]
    inc c
    inc c
    ld d, b
    nop
    inc c
    add $00
    ld a, [bc]
    dec bc
    inc c
    adc [hl]
    nop
    nop
    ld bc, $140c
    inc c
    inc c

jr_037_7807:
    ld [hl], b
    nop
    inc c
    and $00
    ld a, [de]
    dec de
    inc c
    xor [hl]
    nop
    db $10
    ld de, $340c
    inc c
    inc c
    ld [bc], a
    ld a, [de]
    inc h
    dec h
    inc c
    inc d
    inc c
    inc c
    ld [hl+], a
    ld a, [de]
    ld h, $27
    inc c
    inc d
    ld [$2928], sp
    ld [bc], a
    inc bc
    inc c
    ld b, d
    ld d, $04
    dec b
    inc c
    ld c, [hl]
    nop
    inc c
    inc d
    ld [$2b2a], sp
    ld [de], a
    inc de
    inc c
    ld h, d
    ld d, $14
    dec d
    inc c
    ld l, [hl]
    nop
    inc c
    inc [hl]
    ld a, [de]
    inc c
    add b
    jr jr_037_7854

    adc h
    ld [bc], a
    inc c
    ld d, h
    ld a, [de]
    inc c
    and b
    jr jr_037_785d

    xor h
    ld [bc], a
    inc c

jr_037_7854:
    ld [hl], h
    rra
    rlca
    inc c
    ld b, b
    ld [de], a
    inc c
    sub h
    rra

jr_037_785d:
    rlca
    inc c
    ld h, b
    ld [de], a
    inc c
    inc d
    ld [$0200], sp
    jr nz, jr_037_7890

    add hl, hl
    jr nz, jr_037_786b

jr_037_786b:
    nop
    inc l
    dec l
    jr nc, jr_037_78a1

    jr nz, jr_037_787a

    ld [bc], a
    inc h
    dec h
    jr z, @+$2b

    rst $38
    jr nz, @+$16

jr_037_787a:
    rlca
    ld a, [hl+]
    dec hl
    jr nz, @+$22

    nop
    ld l, $2f
    ld [hl-], a
    inc sp
    jr nz, jr_037_78ae

    ld [bc], a
    ld h, $27
    ld a, [hl+]
    dec hl
    jr nz, jr_037_78a1

    ld [$0908], sp

jr_037_7890:
    jr nz, @+$42

    nop
    ld a, [bc]
    dec bc
    jr nc, jr_037_78c8

    inc c
    dec c
    jr nz, @+$0a

    nop
    ld b, $07
    ld [$2009], sp

jr_037_78a1:
    inc d
    ld [$1918], sp
    jr nz, @+$62

    nop
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    inc e
    dec e

jr_037_78ae:
    jr nz, @+$2a

    nop
    ld d, $17
    jr jr_037_78ce

    jr nz, @+$16

    ld [$0820], sp
    inc b
    jr nc, @+$33

    ld c, $0f
    jr nz, jr_037_78c9

    inc b
    jr nz, @+$16

    ld [$2820], sp

jr_037_78c7:
    inc b

jr_037_78c8:
    ld [hl-], a

jr_037_78c9:
    inc sp
    ld e, $1f
    jr nz, jr_037_78f6

jr_037_78ce:
    inc b
    jr nz, jr_037_78e5

    ld [$0302], sp
    jr nz, @-$3e

    inc b
    jr nz, jr_037_78df

    nop
    nop
    ld bc, $0302
    inc b

jr_037_78df:
    dec b
    jr nz, jr_037_78f6

    ld [$1312], sp

jr_037_78e5:
    jr nz, jr_037_78c7

    inc b
    jr nz, @+$28

    nop
    db $10
    ld de, $1312
    inc d
    dec d
    jr nz, @+$16

    ld [$0420], sp

jr_037_78f6:
    nop
    jr nz, jr_037_7939

    ld b, $20
    ld d, b
    nop
    ld a, [bc]

jr_037_78fe:
    dec bc
    jr nz, jr_037_7915

    ld a, [bc]
    ld l, $2f
    jr nz, jr_037_7966

    ld b, $20
    ld [hl], b
    nop
    ld a, [de]
    dec de
    jr nz, jr_037_7942

    ld a, [bc]

jr_037_790f:
    jr nz, jr_037_7957

    nop
    jr nz, jr_037_7958

    ld a, [de]

jr_037_7915:
    jr nz, @+$56

    ld a, [bc]
    jr nz, jr_037_7980

    nop
    jr nz, @+$66

    ld a, [de]
    jr nz, jr_037_7994

    ld c, $20
    adc $00
    jr nz, @-$3e

    ld b, $20
    sub h
    ld c, $20
    xor $00
    jr nz, jr_037_790f

    ld b, $20
    or h
    ld c, $20
    nop
    ld [bc], a
    jr nz, jr_037_78fe

    inc d

jr_037_7939:
    jr nz, jr_037_790f

    ld c, $20
    jr nz, jr_037_7941

    jr nz, @-$18

jr_037_7941:
    inc d

jr_037_7942:
    jr nz, jr_037_7958

    ld [$0200], sp
    nop
    jr z, jr_037_7973

    inc l
    dec l
    jr nc, jr_037_797f

    ld c, $0f
    jr nc, jr_037_7983

    inc h
    dec h
    nop
    nop
    ld [bc], a

jr_037_7957:
    inc h

jr_037_7958:
    dec h
    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    ld l, $2f
    ld [hl-], a
    inc sp
    ld e, $1f
    ld [hl-], a

jr_037_7966:
    inc sp
    ld h, $27
    nop
    jr nz, jr_037_796e

    ld h, $27

jr_037_796e:
    nop
    inc d
    ld [$0908], sp

jr_037_7973:
    ld a, [bc]
    dec bc
    nop
    inc b
    ld [bc], a
    ld b, $07
    nop
    ld b, b
    ld [bc], a
    nop
    ld [de], a

jr_037_797f:
    ld a, [bc]

jr_037_7980:
    jr jr_037_799b

    ld a, [de]

jr_037_7983:
    dec de
    nop
    inc h
    ld [bc], a
    ld d, $17
    nop
    ld h, b
    ld [bc], a
    nop
    ld [hl-], a
    ld a, [bc]
    jr nc, jr_037_79c2

    nop
    add b
    nop

jr_037_7994:
    nop
    ld b, $00
    nop
    adc b
    inc b
    nop

jr_037_799b:
    ld [de], a
    ld a, [bc]
    ld [hl-], a
    inc sp
    nop
    and b
    nop
    nop
    ld h, $00
    nop
    xor b
    inc b
    nop
    ld [hl-], a
    ld a, [bc]
    ld [bc], a
    inc bc
    nop
    ret nz

    nop
    jr z, jr_037_79db

    nop
    ret nz

    ld [bc], a
    nop
    db $c2, $02, $00

    inc d
    ld [$1312], sp
    nop
    ldh [rP1], a
    ld a, [hl+]
    dec hl

jr_037_79c2:
    nop
    ldh [rSC], a
    nop
    ld [c], a
    ld [bc], a
    nop
    inc [hl]
    ld a, [bc]
    ld [$0009], sp
    ld a, [bc]
    nop
    nop
    ld b, $18
    nop
    ld d, h
    ld a, [bc]
    jr jr_037_79f1

    nop
    ld a, [hl+]
    nop

jr_037_79db:
    nop
    ld h, $18
    nop
    ld [hl], h
    inc c
    nop
    ld c, d
    nop
    nop
    ld b, [hl]
    ld d, $00
    sub d
    ld c, $00
    ld l, d
    nop
    nop
    ld h, [hl]
    ld d, $00

jr_037_79f1:
    ld [hl-], a
    ld a, [bc]
    inc b
    dec b
    nop
    adc b
    ld b, $00
    add b
    nop
    inc a
    dec a
    nop
    ld [de], a
    ld a, [bc]
    inc d
    dec d
    nop
    xor b
    ld b, $00
    and b
    nop
    ld a, $3f
    nop
    ld [hl-], a
    ld a, [bc]
    nop
    add $08
    nop
    call z, $010f
    nop
    and $08
    nop
    db $ec
    rrca
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
