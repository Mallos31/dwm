; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $011", ROMX[$4000], BANK[$11]

    db $11 ;ROM Bank

    dw label11_4005
    dw label11_400f

label11_4005:
    call Call_011_406e
    ld de, $407f
    call $0d91
    ret

label11_400f:
    call Call_011_406e
    ld de, $407f
    push af
    push bc
    push de
    push hl
    ldh a, [$cb]
    cp $28
    jr nc, jr_011_4069

    ldh a, [$c7]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ldh a, [$c8]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ldh a, [$cb]
    sla a
    sla a
    ld l, a
    ld h, $c0

jr_011_403c:
    ld a, [de]
    inc de
    cp $80
    jr z, jr_011_4069

    ld b, a
    ldh a, [$c5]
    add b
    add $10
    ld [hl+], a
    ld a, [de]
    inc de
    ld b, a
    ldh a, [$c3]
    add b
    add $08
    ld [hl+], a
    ldh a, [$c9]
    ld b, a
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    inc de
    ld b, a
    ldh a, [$ca]
    xor b
    ld [hl+], a
    ldh a, [$cb]
    inc a
    ldh [$cb], a
    cp $28
    jr c, jr_011_403c

jr_011_4069:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_011_406e:
    ldh a, [$c7]
    ld hl, $412d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ldh a, [$ca]
    or [hl]
    ldh [$ca], a
    ret


    add h
    ld b, c
    or $41
    ld l, b
    ld b, d
    jp c, Jump_011_4c42

    ld b, e
    cp [hl]
    ld b, e
    jr nc, jr_011_40d1

    and d
    ld b, h
    inc d
    ld b, l
    add [hl]
    ld b, l
    ld hl, sp+$45
    ld l, d
    ld b, [hl]
    call c, Call_011_4e46
    ld b, a
    ret nz

    ld b, a
    ld [hl-], a
    ld c, b
    and h
    ld c, b
    ld d, $49
    adc b
    ld c, c
    ld a, [$6c49]
    ld c, d
    sbc $4a
    ld d, b
    ld c, e
    jp nz, $344b

    ld c, h
    and [hl]
    ld c, h
    jr jr_011_4102

    adc d
    ld c, l
    db $fc
    ld c, l
    ld l, [hl]
    ld c, [hl]
    ldh [$4e], a
    ld d, d
    ld c, a
    call nz, $364f
    ld d, b
    xor b
    ld d, b
    ld a, [de]
    ld d, c
    adc h
    ld d, c
    cp $51
    ld [hl], b
    ld d, d
    ld [c], a
    ld d, d
    ld d, h
    ld d, e

jr_011_40d1:
    add $53
    jr c, @+$56

    xor d
    ld d, h
    inc e
    ld d, l
    adc [hl]
    ld d, l
    nop
    ld d, [hl]
    ld [hl], d
    ld d, [hl]
    db $e4
    ld d, [hl]
    ld d, [hl]
    ld d, a
    ret z

    ld d, a
    ld a, [hl-]
    ld e, b
    xor h
    ld e, b
    ld e, $59
    sub b
    ld e, c
    ld [bc], a
    ld e, d
    ld [hl], h
    ld e, d
    and $5a
    ld e, b
    ld e, e
    jp z, $3c5b

    ld e, h
    xor [hl]
    ld e, h
    jr nz, jr_011_415a

    sub d
    ld e, l
    inc b
    ld e, [hl]
    ld l, [hl]

jr_011_4102:
    ld e, [hl]
    ret c

    ld e, [hl]
    ld c, d
    ld e, a
    cp h
    ld e, a
    ld l, $60
    and b
    ld h, b
    ld [de], a
    ld h, c
    add h
    ld h, c
    or $61
    ld l, b
    ld h, d
    jp c, Jump_011_4c62

    ld h, e
    cp [hl]
    ld h, e
    jr nc, jr_011_4181

    and d
    ld h, h
    inc d
    ld h, l
    add [hl]
    ld h, l
    ld hl, sp+$65
    ld l, d
    ld h, [hl]
    call c, Call_011_4e66
    ld h, a
    ret nz

    ld h, a
    ld b, $00
    ld b, $04
    ld [bc], a

jr_011_4132:
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld b, $04
    ld [bc], a
    ld b, $00
    rlca
    dec b
    inc b
    ld [bc], a
    ld [bc], a
    ld b, $05
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc b
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    rlca
    dec b
    rlca
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld b, $02
    inc b
    rlca
    inc b

jr_011_415a:
    dec b
    inc bc
    nop
    rlca
    ld b, $03
    ld bc, $0001
    ld [bc], a
    rlca
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    ld b, $02
    inc bc
    dec b
    nop
    ld [bc], a
    inc b
    rlca
    rlca
    dec b
    dec b
    inc bc
    inc b

jr_011_4176:
    inc b
    inc b
    ld [bc], a
    inc b
    ld b, $01
    inc bc
    ld bc, $0100
    inc b

jr_011_4181:
    nop
    nop
    nop
    sub b
    ld b, c
    and c
    ld b, c
    or d
    ld b, c
    jp $d441


    ld b, c
    push hl
    ld b, c
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]

jr_011_4196:
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    ldh a, [rP1]
    nop

jr_011_41a4:
    jr nc, jr_011_4196

jr_011_41a6:
    ld hl, sp+$01
    jr nc, @-$06

    nop
    ld [bc], a
    jr nc, jr_011_41a6

    ld hl, sp+$03
    jr nc, jr_011_4132

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    ldh a, [$f8]
    ld [$f010], sp
    nop
    add hl, bc
    db $10
    ld hl, sp-$08
    ld a, [bc]
    db $10
    ld hl, sp+$00
    dec bc
    db $10
    add b
    ldh a, [$f8]
    inc c

jr_011_41d7:
    db $10
    ldh a, [rP1]

jr_011_41da:
    dec c
    db $10
    ld hl, sp-$08
    ld c, $10
    ld hl, sp+$00
    rrca
    db $10
    add b
    ldh a, [rP1]
    inc c

jr_011_41e8:
    jr nc, jr_011_41da

    ld hl, sp+$0d
    jr nc, @-$06

    nop
    ld c, $30
    ld hl, sp-$08
    rrca
    jr nc, jr_011_4176

    ld [bc], a
    ld b, d
    inc de
    ld b, d
    inc h
    ld b, d
    dec [hl]
    ld b, d
    ld b, [hl]
    ld b, d
    ld d, a
    ld b, d
    ldh a, [$f8]
    nop

jr_011_4205:
    db $10
    ldh a, [rIE]
    nop
    jr nc, @-$06

    ld hl, sp+$01
    db $10
    ld hl, sp-$01
    ld bc, $8030

jr_011_4213:
    rst $28
    ld hl, sp+$02

jr_011_4216:
    db $10
    rst $28
    rst $38
    ld [bc], a
    jr nc, jr_011_4213

    ld hl, sp+$03
    db $10
    rst $30
    rst $38
    inc bc
    jr nc, jr_011_41a4

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    rst $28
    ld hl, sp+$08
    db $10
    rst $28
    nop
    add hl, bc
    db $10
    rst $30
    ld hl, sp+$0a
    db $10
    rst $30
    nop
    dec bc
    db $10
    add b
    ldh a, [$f8]
    inc c

jr_011_4249:
    db $10
    ld hl, sp-$08
    dec c
    db $10
    ldh a, [rIE]
    inc c
    jr nc, @-$06

    rst $38
    dec c
    jr nc, jr_011_41d7

    rst $28
    ld hl, sp+$0e

jr_011_425a:
    db $10
    rst $30
    ld hl, sp+$0f
    db $10
    rst $28
    rst $38
    ld c, $30
    rst $30
    rst $38
    rrca
    jr nc, jr_011_41e8

    ld [hl], h
    ld b, d
    add l
    ld b, d
    sub [hl]
    ld b, d
    and a
    ld b, d
    cp b
    ld b, d
    ret


    ld b, d
    ld hl, sp-$08
    ld bc, $f000
    ld hl, sp+$00
    nop
    ld hl, sp-$01
    ld bc, $f020
    rst $38
    nop
    jr nz, jr_011_4205

    ldh a, [$f8]
    ld [bc], a

jr_011_4288:
    nop
    ld hl, sp-$08
    inc bc
    nop
    ldh a, [rIE]
    ld [bc], a
    jr nz, @-$06

    rst $38
    inc bc
    jr nz, jr_011_4216

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ld hl, sp-$08
    dec c
    nop
    ldh a, [rIE]
    inc c
    jr nz, @-$06

    rst $38
    dec c
    jr nz, jr_011_4249

    ldh a, [$f8]
    ld c, $00
    ld hl, sp-$08
    rrca
    nop
    ldh a, [rIE]
    ld c, $20
    ld hl, sp-$01
    rrca
    jr nz, jr_011_425a

    and $42
    rst $30
    ld b, d
    ld [$1943], sp
    ld b, e
    ld a, [hl+]
    ld b, e
    dec sp
    ld b, e
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]

jr_011_42ec:
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [rP1]
    nop

jr_011_42fa:
    jr nz, jr_011_42ec

jr_011_42fc:
    ld hl, sp+$01
    jr nz, @-$06

    nop
    ld [bc], a
    jr nz, jr_011_42fc

    ld hl, sp+$03
    jr nz, jr_011_4288

    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]

jr_011_4330:
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [rP1]
    inc c

jr_011_433e:
    jr nz, jr_011_4330

    ld hl, sp+$0d
    jr nz, @-$06

    nop
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, @-$7e

    ld e, b
    ld b, e
    ld l, c
    ld b, e
    ld a, d
    ld b, e
    adc e
    ld b, e
    sbc h
    ld b, e
    xor l
    ld b, e
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    pop af
    nop

jr_011_436b:
    nop
    jr nz, @-$0d

    ld hl, sp+$01
    jr nz, jr_011_436b

    nop
    ld [bc], a
    jr nz, @-$05

    ld hl, sp+$03
    jr nz, jr_011_42fa

    pop af
    ld hl, sp+$04
    nop
    pop af
    nop
    dec b
    nop
    ld sp, hl
    ld hl, sp+$06
    nop
    ld sp, hl
    nop
    rlca
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c

jr_011_439f:
    nop
    ldh a, [rP1]
    dec c

jr_011_43a3:
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    pop af
    nop

jr_011_43af:
    inc c

jr_011_43b0:
    jr nz, jr_011_43a3

    ld hl, sp+$0d
    jr nz, jr_011_43af

    nop
    ld c, $20
    ld sp, hl
    ld hl, sp+$0f
    jr nz, jr_011_433e

    jp z, $db43

    ld b, e
    db $ec
    ld b, e
    db $fd
    ld b, e
    ld c, $44
    rra
    ld b, h
    di
    ld sp, hl
    nop
    nop
    di
    ld bc, $0001
    ei
    ld sp, hl
    ld [bc], a
    nop
    ei
    ld bc, $0003
    add b
    ld a, [c]
    ld sp, hl
    nop

jr_011_43de:
    nop
    ld a, [c]
    ld bc, $0001
    ld a, [$04f9]
    nop
    ld a, [$0501]
    nop
    add b
    ldh a, [$f6]
    ld a, [bc]
    nop
    ldh a, [$fe]
    dec bc
    nop
    ld hl, sp-$0a
    inc c
    nop
    ld hl, sp-$02
    dec c
    nop
    add b
    pop af
    or $0a
    nop
    pop af
    cp $0b
    nop
    ld sp, hl
    cp $0e
    nop
    ld sp, hl
    or $0c
    nop
    add b
    di
    or $06
    nop
    di
    cp $07
    nop
    ei
    cp $08
    nop
    ei
    or $03
    jr nz, jr_011_439f

    ld a, [c]
    or $06
    nop
    ld a, [c]
    cp $07
    nop
    ld a, [$09fe]
    nop
    ld a, [$05f6]
    jr nz, jr_011_43b0

    inc a
    ld b, h
    ld c, l
    ld b, h
    ld e, [hl]
    ld b, h
    ld l, a
    ld b, h
    add b
    ld b, h
    sub c
    ld b, h
    ldh a, [$f8]
    nop
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp-$01
    ld bc, $8020
    pop af
    ld hl, sp+$00
    nop
    pop af
    rst $38
    nop
    jr nz, @-$05

    ld hl, sp+$02
    nop
    ld sp, hl
    rst $38
    ld [bc], a
    jr nz, jr_011_43de

    ldh a, [$f8]
    inc bc
    nop
    ldh a, [rP1]
    inc b
    nop
    ld hl, sp-$08
    dec b
    nop
    ld hl, sp+$00
    ld b, $00
    add b
    pop af
    ld hl, sp+$03
    nop
    pop af
    nop
    inc b
    nop
    ld sp, hl
    ld hl, sp+$07
    nop
    ld sp, hl
    nop
    ld [$8000], sp
    ldh a, [$f8]
    add hl, bc
    nop
    ldh a, [rIE]
    add hl, bc
    jr nz, @-$06

    ld hl, sp+$0a
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    pop af
    ld hl, sp+$09
    nop
    pop af
    rst $38
    add hl, bc
    jr nz, @-$05

    ld hl, sp+$0c
    nop
    ld sp, hl
    nop
    dec c
    nop
    add b
    xor [hl]
    ld b, h
    cp a
    ld b, h
    ret nc

    ld b, h
    pop hl
    ld b, h
    ld a, [c]
    ld b, h
    inc bc
    ld b, l
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, @-$06

    ld hl, sp+$01
    db $10
    ld hl, sp+$00
    ld [bc], a
    db $10
    add b
    pop af
    ld hl, sp+$00

jr_011_44c2:
    db $10
    pop af
    nop
    nop
    jr nc, @-$05

    ld hl, sp+$03
    db $10
    ld sp, hl
    nop
    inc b
    db $10
    add b
    ldh a, [$f8]
    dec b
    db $10
    ld hl, sp-$08
    rlca
    db $10
    ld hl, sp+$00
    ld [$f010], sp
    nop
    ld b, $10
    add b
    pop af
    ld hl, sp+$05
    db $10
    pop af
    nop
    ld b, $10
    ld sp, hl
    ld hl, sp+$09
    db $10
    ld sp, hl
    nop
    ld a, [bc]
    db $10
    add b
    ldh a, [$f8]
    dec bc

jr_011_44f5:
    db $10
    ldh a, [rP1]
    dec bc
    jr nc, @-$06

    ld hl, sp+$0c
    db $10
    ld hl, sp+$00
    dec c
    db $10
    add b
    pop af
    ld hl, sp+$0b

jr_011_4506:
    db $10
    pop af
    nop
    dec bc
    jr nc, @-$05

    ld hl, sp+$0e
    db $10
    ld sp, hl
    nop
    rrca
    db $10
    add b
    jr nz, jr_011_455b

    ld sp, $4245
    ld b, l
    ld d, e
    ld b, l
    ld h, h
    ld b, l
    ld [hl], l
    ld b, l
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld bc, $8020
    ldh a, [$f8]
    ld [bc], a

jr_011_4534:
    nop
    ldh a, [rP1]
    ld [bc], a
    jr nz, @-$06

    ld hl, sp+$03
    nop
    ld hl, sp+$00
    inc bc
    jr nz, jr_011_44c2

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop

jr_011_455b:
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp+$00
    dec c
    jr nz, jr_011_44f5

    ldh a, [$f8]
    ld c, $00
    ldh a, [rP1]
    ld c, $20
    ld hl, sp-$08
    rrca
    nop
    ld hl, sp+$00
    rrca
    jr nz, jr_011_4506

    sub d
    ld b, l
    and e
    ld b, l
    or h
    ld b, l
    push bc
    ld b, l
    sub $45
    rst $20
    ld b, l
    ldh a, [$f8]
    nop
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ld hl, sp-$08
    inc bc

jr_011_45a6:
    nop
    ld hl, sp+$00
    inc b
    nop
    ldh a, [$f9]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, jr_011_4534

    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$08
    rlca
    nop
    ld hl, sp+$00
    ld [$8000], sp
    ldh a, [rP1]
    ld b, $00
    ldh a, [$f8]
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rIE]
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp+$00

jr_011_45e4:
    ld c, $00
    add b
    ld hl, sp+$00
    dec c

jr_011_45ea:
    jr nz, jr_011_45e4

    ld hl, sp+$0e
    jr nz, @-$0e

    ld sp, hl
    rrca
    nop
    ldh a, [rP1]
    rrca
    jr nz, @-$7e

    inc b
    ld b, [hl]
    dec d
    ld b, [hl]
    ld h, $46
    scf
    ld b, [hl]
    ld c, b
    ld b, [hl]
    ld e, c
    ld b, [hl]
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    rst $28
    ld hl, sp+$00

jr_011_4618:
    nop

jr_011_4619:
    rst $28
    nop
    ld bc, $f700
    rst $38
    ld [bc], a
    jr nz, jr_011_4619

    rst $30
    inc bc
    jr nz, jr_011_45a6

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    rst $28
    ld hl, sp+$04
    nop
    rst $28
    nop
    dec b
    nop
    rst $30
    ld hl, sp+$08
    nop
    rst $30
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    rst $28
    ld hl, sp+$0a

jr_011_465c:
    nop
    rst $28
    nop
    dec bc
    nop
    rst $30
    ld bc, $200c
    rst $30
    ld sp, hl
    dec c
    jr nz, jr_011_45ea

    db $76
    ld b, [hl]
    add a
    ld b, [hl]
    sbc b
    ld b, [hl]
    xor c
    ld b, [hl]
    cp d
    ld b, [hl]
    bit 0, [hl]
    ldh a, [$f9]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld sp, hl

jr_011_4680:
    ld bc, $f800
    ld bc, $0002
    add b
    ld hl, sp+$00
    ld bc, $f820
    ld hl, sp+$02
    jr nz, jr_011_4680

    ld sp, hl
    inc bc
    nop
    ldh a, [rP1]
    inc bc
    jr nz, jr_011_4618

    ldh a, [$f5]
    inc b
    nop
    ldh a, [$fd]
    dec b
    nop
    ld hl, sp-$0b
    ld b, $00
    ld hl, sp-$03
    rlca
    nop
    add b
    ldh a, [$fd]
    dec b
    nop
    ld hl, sp-$0b
    ld b, $40
    ldh a, [$f5]
    ld [$f800], sp
    db $fd

jr_011_46b7:
    add hl, bc
    nop
    add b
    ld hl, sp-$08
    dec bc

jr_011_46bd:
    nop
    ld hl, sp+$00
    inc c
    nop
    ldh a, [rIE]

jr_011_46c4:
    ld a, [bc]
    jr nz, jr_011_46b7

    ld hl, sp+$0a
    nop
    add b
    ld hl, sp-$01
    dec bc

jr_011_46ce:
    jr nz, @-$06

    rst $30
    inc c
    jr nz, jr_011_46c4

    ld hl, sp+$0d
    nop
    ldh a, [rIE]
    dec c
    jr nz, jr_011_465c

    add sp, $46
    ld sp, hl
    ld b, [hl]
    ld a, [bc]
    ld b, a
    dec de
    ld b, a
    inc l
    ld b, a
    dec a
    ld b, a
    pop af
    ld hl, sp+$00
    db $10
    pop af
    nop
    nop
    jr nc, @-$05

    ld hl, sp+$01
    db $10
    ld sp, hl
    nop
    ld bc, $8030
    ldh a, [$f8]
    ld [bc], a
    db $10
    ldh a, [rP1]
    ld [bc], a
    jr nc, @-$06

    ld hl, sp+$03
    db $10
    ld hl, sp+$00
    inc bc
    jr nc, @-$7e

    pop af
    ld hl, sp+$04
    db $10
    pop af
    nop
    dec b
    db $10
    ld sp, hl
    ld hl, sp+$06
    db $10
    ld sp, hl
    nop
    rlca
    db $10
    add b
    ldh a, [$f8]
    ld [$f010], sp
    nop
    add hl, bc
    db $10
    ld hl, sp-$08
    ld a, [bc]
    db $10
    ld hl, sp+$00
    dec bc
    db $10
    add b
    pop af
    ld hl, sp+$0c
    db $10
    pop af
    nop
    inc c
    jr nc, @-$05

    ld hl, sp+$0d
    db $10
    ld sp, hl
    nop
    dec c
    jr nc, jr_011_46bd

    ldh a, [$f8]
    ld c, $10
    ldh a, [rP1]
    ld c, $30
    ld hl, sp-$08
    rrca
    db $10
    ld hl, sp+$00
    rrca
    jr nc, jr_011_46ce

    ld e, d
    ld b, a
    ld l, e
    ld b, a
    ld a, h
    ld b, a
    adc l
    ld b, a
    sbc [hl]
    ld b, a
    xor a
    ld b, a
    ldh a, [$f8]
    nop
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ldh a, [$f8]
    nop

jr_011_476e:
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$03
    nop
    ld hl, sp+$00
    inc b
    nop
    add b
    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$08
    rlca
    nop
    ld hl, sp+$00
    ld [$8000], sp
    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$08
    add hl, bc
    nop
    ld hl, sp+$00
    ld a, [bc]
    nop
    add b
    ldh a, [$f8]
    dec bc

jr_011_47a1:
    nop
    ldh a, [rIE]
    dec bc
    jr nz, @-$06

    ld hl, sp+$0c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rIE]
    dec bc
    jr nz, @-$06

    ld hl, sp+$0e
    nop
    ld hl, sp+$00
    rrca
    nop
    add b
    call z, $dd47
    ld b, a
    xor $47
    rst $38
    ld b, a
    db $10
    ld c, b
    ld hl, $f048
    ld hl, sp+$00
    nop

jr_011_47d0:
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop

jr_011_47dc:
    add b
    xor $00
    nop

jr_011_47e0:
    jr nz, jr_011_47d0

    ld hl, sp+$01
    jr nz, jr_011_47dc

    nop
    ld [bc], a
    jr nz, jr_011_47e0

    ld hl, sp+$03
    jr nz, jr_011_476e

    pop af
    ld hl, sp+$08
    nop
    pop af
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    rst $28
    ld hl, sp+$04
    nop
    rst $28
    nop
    dec b

jr_011_4806:
    nop
    rst $30
    ld hl, sp+$06
    nop
    rst $30
    nop
    rlca
    nop
    add b
    pop af
    nop

jr_011_4812:
    inc c
    jr nz, jr_011_4806

    ld hl, sp+$0d
    jr nz, jr_011_4812

    nop
    ld c, $20
    ld sp, hl
    ld hl, sp+$0f
    jr nz, jr_011_47a1

    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ld a, $48
    ld c, a
    ld c, b
    ld h, b
    ld c, b
    ld [hl], c
    ld c, b
    add d
    ld c, b
    sub e
    ld c, b
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ld hl, sp-$08
    inc b

jr_011_4852:
    nop
    ld hl, sp+$00
    dec b
    nop
    ldh a, [$f7]
    nop
    nop
    ldh a, [rIE]
    ld bc, $8000
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f9]
    ld b, $00
    ldh a, [rSB]
    rlca
    nop
    ld hl, sp-$07
    ld a, [bc]
    nop
    ld hl, sp+$01
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c
    nop
    ld hl, sp-$08

jr_011_488c:
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ld hl, sp+$00
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, jr_011_488c

    rst $30
    inc c
    nop
    ldh a, [rIE]
    dec c
    nop
    add b
    or b
    ld c, b
    pop bc
    ld c, b
    jp nc, $e348

    ld c, b
    db $f4
    ld c, b
    dec b
    ld c, c
    ldh a, [$f8]
    nop

jr_011_48b3:
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b

jr_011_48c1:
    rst $28
    nop
    nop
    jr nz, @-$0f

    ld hl, sp+$01
    jr nz, jr_011_48c1

    nop
    ld [bc], a
    jr nz, @-$07

    ld hl, sp+$03
    jr nz, jr_011_4852

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    rst $28
    ld hl, sp+$08
    nop
    rst $28
    nop
    add hl, bc
    nop
    rst $30
    ld hl, sp+$0a
    nop
    rst $30
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c

jr_011_48f7:
    nop
    ldh a, [rP1]
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b

jr_011_4905:
    rst $28
    nop
    inc c

jr_011_4908:
    jr nz, @-$0f

    ld hl, sp+$0d
    jr nz, jr_011_4905

    nop
    ld c, $20
    rst $30
    ld hl, sp+$0f
    jr nz, @-$7e

    ld [hl+], a
    ld c, c
    inc sp
    ld c, c
    ld b, h
    ld c, c
    ld d, l
    ld c, c
    ld h, [hl]
    ld c, c
    ld [hl], a
    ld c, c
    ld hl, sp-$08
    ld bc, $f800
    nop
    ld [bc], a
    nop
    ldh a, [$f9]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, jr_011_48b3

    ldh a, [$fa]
    nop

jr_011_4936:
    nop
    ldh a, [rSB]
    nop
    jr nz, @-$06

    ld sp, hl
    inc bc
    nop
    ld hl, sp+$01
    inc b
    nop
    add b
    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$08
    rlca
    nop
    ld hl, sp+$00
    ld [$8000], sp
    ldh a, [$f7]
    dec b
    nop
    ldh a, [rIE]
    ld b, $00
    ld hl, sp-$09
    add hl, bc
    nop
    ld hl, sp-$01
    ld a, [bc]
    nop
    add b
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    ld c, $00
    ldh a, [$f9]

jr_011_4970:
    dec bc
    nop
    ldh a, [rP1]

jr_011_4974:
    dec bc
    jr nz, jr_011_48f7

    ld hl, sp+$00
    dec c

jr_011_497a:
    jr nz, jr_011_4974

    ld hl, sp+$0e
    jr nz, jr_011_4970

    ld hl, sp+$0b
    nop
    ldh a, [rIE]
    dec bc
    jr nz, jr_011_4908

    sub h
    ld c, c
    and l
    ld c, c
    or [hl]
    ld c, c
    rst $00
    ld c, c
    ret c

    ld c, c
    jp hl


    ld c, c
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]

jr_011_499a:
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [rP1]
    nop
    jr nz, jr_011_499a

jr_011_49aa:
    ld hl, sp+$01
    jr nz, @-$06

    nop
    ld [bc], a
    jr nz, jr_011_49aa

    ld hl, sp+$03
    jr nz, jr_011_4936

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]

jr_011_49de:
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [rP1]
    inc c
    jr nz, jr_011_49de

    ld hl, sp+$0d
    jr nz, @-$06

    nop
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, jr_011_497a

    ld b, $4a
    rla
    ld c, d
    jr z, jr_011_4a4a

    add hl, sp
    ld c, d
    ld c, d
    ld c, d
    ld e, e
    ld c, d
    ld hl, sp-$08
    ld [bc], a
    nop
    ld hl, sp+$00
    inc bc
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $8000
    ldh a, [$f8]
    nop

jr_011_4a1a:
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$04
    nop
    ld hl, sp+$00
    dec b
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp+$00
    ld [$f800], sp
    ld hl, sp+$04
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [bc], a
    nop
    ld hl, sp+$00
    add hl, bc
    nop
    add b

jr_011_4a4a:
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]

jr_011_4a5e:
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ld a, b
    ld c, d
    adc c
    ld c, d
    sbc d
    ld c, d
    xor e
    ld c, d
    cp h
    ld c, d
    call $f04a

jr_011_4a79:
    ld hl, sp+$00
    db $10
    ldh a, [rIE]
    nop
    jr nc, jr_011_4a79

    ld hl, sp+$01
    db $10
    ld hl, sp+$00
    ld [bc], a
    db $10
    add b
    ld hl, sp-$01
    ld bc, $f830
    rst $30
    ld [bc], a
    jr nc, @-$0e

    ld hl, sp+$03
    db $10
    ldh a, [rIE]
    inc bc
    jr nc, jr_011_4a1a

    ldh a, [$f8]
    inc b

jr_011_4a9d:
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    ldh a, [$f8]
    ld [$f010], sp
    nop
    add hl, bc
    db $10
    ld hl, sp-$08
    ld a, [bc]
    db $10
    ld hl, sp+$00
    dec bc
    db $10
    add b
    ldh a, [$f8]
    inc c
    db $10
    ldh a, [rIE]
    inc c
    jr nc, @-$06

    ld hl, sp+$0d
    db $10
    ld hl, sp+$00

jr_011_4aca:
    ld c, $10
    add b
    ld hl, sp-$01
    dec c
    jr nc, jr_011_4aca

    rst $30
    ld c, $30
    ldh a, [$f8]
    rrca
    db $10
    ldh a, [rIE]
    rrca
    jr nc, jr_011_4a5e

    ld [$fb4a], a
    ld c, d
    inc c
    ld c, e
    dec e
    ld c, e
    ld l, $4b
    ccf
    ld c, e
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [rP1]
    ld bc, $f800
    nop
    inc bc
    nop
    ldh a, [$f8]
    inc b
    nop
    ld hl, sp-$08
    dec b
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp+$00

jr_011_4b16:
    ld [bc], a
    jr nz, @-$06

    ld hl, sp+$03
    jr nz, jr_011_4a9d

    ldh a, [$f8]
    ld b, $00
    ld hl, sp-$08
    inc bc
    jr nz, jr_011_4b16

    nop
    ld [$f800], sp
    nop
    dec b
    jr nz, @-$7e

    ldh a, [$f8]
    add hl, bc
    nop
    ldh a, [rP1]
    ld a, [bc]
    nop
    ld hl, sp-$08
    dec bc
    nop
    ld hl, sp+$00
    inc c
    nop
    add b
    ldh a, [$f8]
    add hl, bc
    nop
    ldh a, [rP1]
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ld e, h
    ld c, e
    ld l, l
    ld c, e
    ld a, [hl]
    ld c, e
    adc a
    ld c, e
    and b
    ld c, e
    or c
    ld c, e
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$04
    nop
    ld hl, sp+$00
    dec b
    nop
    add b
    ld hl, sp-$08
    ld [$f000], sp
    ld sp, hl
    ld b, $00
    ldh a, [rSB]
    rlca
    nop
    ld hl, sp+$00
    dec b
    nop
    add b
    ld hl, sp-$08
    add hl, bc
    nop
    ldh a, [$f9]
    ld b, $00
    ldh a, [rSB]
    rlca
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]

jr_011_4bb4:
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    adc $4b
    rst $18
    ld c, e
    ldh a, [rWX]
    ld bc, $124c
    ld c, h
    inc hl
    ld c, h
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$04
    nop
    ld hl, sp+$00
    dec b
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [$f8]
    inc c

jr_011_4c26:
    nop
    ldh a, [rP1]
    dec c
    nop
    ld hl, sp+$01
    ld c, $20
    ld hl, sp-$07
    rrca
    jr nz, jr_011_4bb4

    ld b, b
    ld c, h
    ld d, c
    ld c, h
    ld h, d
    ld c, h
    ld [hl], e
    ld c, h
    add h
    ld c, h
    sub l
    ld c, h
    ldh a, [$f8]

Jump_011_4c42:
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    nop

jr_011_4c54:
    nop
    ldh a, [rP1]
    inc b
    nop
    ld hl, sp-$08
    dec b
    nop
    ld hl, sp+$00
    ld b, $00
    add b

Jump_011_4c62:
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp+$00
    ld [$f800], sp
    ld hl, sp+$05
    nop
    add b
    ldh a, [$f8]
    nop
    nop
    ld hl, sp-$08
    ld [bc], a
    nop
    ldh a, [rP1]
    add hl, bc
    nop
    ld hl, sp+$00
    ld a, [bc]
    nop
    add b
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rP1]
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    ld hl, sp-$08
    ld [$8020], sp
    ldh a, [rP1]
    inc c
    nop
    ldh a, [$f8]
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    ld hl, sp-$08
    ld a, [bc]
    jr nz, jr_011_4c26

    or d
    ld c, h
    jp $d44c


    ld c, h
    push hl
    ld c, h
    or $4c
    rlca
    ld c, l
    ldh a, [$f8]
    nop
    nop
    ldh a, [rIE]

jr_011_4cb8:
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ldh a, [rP1]
    nop
    jr nz, jr_011_4cb8

    ld sp, hl
    nop
    nop
    ld hl, sp+$00
    ld bc, $f820
    ld hl, sp+$02
    jr nz, jr_011_4c54

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rIE]
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp+$00

jr_011_4d04:
    ld c, $00
    add b
    ld hl, sp+$00
    dec c
    jr nz, jr_011_4d04

    ld hl, sp+$0e
    jr nz, @-$0e

    nop
    rrca
    jr nz, jr_011_4d04

    ld sp, hl
    rrca
    nop
    add b
    inc h
    ld c, l
    dec [hl]
    ld c, l
    ld b, [hl]
    ld c, l
    ld d, a
    ld c, l
    ld l, b
    ld c, l
    ld a, c
    ld c, l
    ldh a, [$f8]
    nop
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ldh a, [$f8]
    nop
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$03
    nop
    ld hl, sp+$00
    inc b
    nop
    add b
    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$08
    rlca
    nop
    ld hl, sp+$00
    ld [$8000], sp
    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$08
    add hl, bc
    nop
    ld hl, sp+$00
    ld a, [bc]
    nop
    add b
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rIE]
    dec bc
    jr nz, @-$06

    ld hl, sp+$0c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rIE]
    dec bc
    jr nz, @-$06

    ld hl, sp+$0e
    nop
    ld hl, sp+$00
    rrca
    nop
    add b
    sub [hl]
    ld c, l
    and a
    ld c, l
    cp b
    ld c, l
    ret


    ld c, l
    jp c, $eb4d

    ld c, l
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ld sp, hl
    ld hl, sp+$04
    nop
    ld sp, hl
    nop
    dec b
    nop
    pop af
    ld hl, sp+$00
    nop
    pop af
    nop
    ld bc, $8000
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    pop af
    ld hl, sp+$06
    nop
    pop af
    nop
    rlca
    nop
    ld sp, hl
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    add b
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rP1]
    inc c
    nop
    ld hl, sp-$08
    dec c
    nop
    ld hl, sp+$00
    ld c, $00
    add b
    pop af
    ld hl, sp+$0b

jr_011_4dee:
    nop
    pop af
    nop
    inc c
    nop
    ld sp, hl
    nop
    rrca
    nop
    ld sp, hl
    ld hl, sp+$0d
    nop
    add b
    ld [$194e], sp
    ld c, [hl]
    ld a, [hl+]
    ld c, [hl]
    dec sp
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld e, l
    ld c, [hl]
    ld hl, sp-$08
    ld [bc], a
    nop
    ld hl, sp+$00
    inc bc
    nop
    ldh a, [$f8]

jr_011_4e12:
    nop
    nop
    ldh a, [rP1]

jr_011_4e16:
    ld bc, $8000
    ld hl, sp-$01
    ld [bc], a
    jr nz, jr_011_4e16

    rst $30
    inc bc
    jr nz, jr_011_4e12

    rst $38
    nop
    jr nz, jr_011_4e16

    rst $30
    ld bc, $8020
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]

Call_011_4e46:
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]

jr_011_4e52:
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [rIE]
    inc c

jr_011_4e60:
    jr nz, jr_011_4e52

    rst $30
    dec c
    jr nz, @-$06

Call_011_4e66:
    rst $38
    ld c, $20
    ld hl, sp-$09
    rrca
    jr nz, jr_011_4dee

    ld a, d
    ld c, [hl]
    adc e
    ld c, [hl]
    sbc h
    ld c, [hl]
    xor l
    ld c, [hl]
    cp [hl]
    ld c, [hl]
    rst $08
    ld c, [hl]
    di
    ld hl, sp+$00
    nop
    di
    nop
    ld bc, $fb00
    ld hl, sp+$02
    nop
    ei

jr_011_4e87:
    nop
    inc bc
    nop
    add b

jr_011_4e8b:
    ei
    nop
    ld [bc], a
    jr nz, jr_011_4e8b

    ld hl, sp+$03
    jr nz, jr_011_4e87

    ld hl, sp+$04
    nop
    di
    nop
    dec b
    nop
    add b
    di
    ld hl, sp+$06
    nop
    di
    nop
    rlca
    nop
    ei
    ld hl, sp+$08
    nop

jr_011_4ea8:
    ei
    nop
    add hl, bc
    nop
    add b
    di
    ld sp, hl
    ld b, $00
    ei
    ld sp, hl
    add hl, bc
    jr nz, jr_011_4ea8

    ld bc, $0007
    ld a, [$0801]
    jr nz, @-$7e

    di
    ld hl, sp+$0a
    nop
    di
    nop
    dec bc
    nop
    ei
    ld hl, sp+$0c
    nop
    ei
    nop
    dec c
    nop
    add b
    di
    ld hl, sp+$0e
    nop
    di
    nop
    rrca
    nop

jr_011_4ed7:
    ei
    nop
    inc c
    jr nz, jr_011_4ed7

    ld hl, sp+$0d
    jr nz, jr_011_4e60

    db $ec
    ld c, [hl]
    db $fd
    ld c, [hl]
    ld c, $4f
    rra
    ld c, a
    jr nc, @+$51

    ld b, c
    ld c, a
    ldh a, [$f8]
    nop
    db $10
    ldh a, [$fe]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    ld hl, sp-$08
    inc b
    db $10
    ld hl, sp+$00
    dec b
    db $10
    ldh a, [rSB]
    ld bc, $f010
    ld a, [$3001]
    add b
    ldh a, [$f8]
    ld b, $10
    ldh a, [rP1]
    rlca
    db $10
    ld hl, sp+$00

jr_011_4f18:
    add hl, bc
    db $10
    ld hl, sp-$08
    ld [$8010], sp
    ld hl, sp+$00
    ld a, [bc]
    db $10
    ld hl, sp-$08
    inc bc
    jr nc, jr_011_4f18

    ld sp, hl
    ld b, $10
    ldh a, [rSB]
    rlca
    db $10
    add b
    ld hl, sp+$00
    inc bc
    db $10
    ldh a, [$f9]
    dec bc
    db $10
    ldh a, [rIE]
    inc c
    db $10
    ld hl, sp-$08
    dec c
    db $10
    add b
    ldh a, [rSB]
    inc c
    db $10
    ldh a, [$fa]
    inc c
    jr nc, @-$06

    ld hl, sp+$0e
    db $10
    ld hl, sp+$00
    rrca
    db $10
    add b
    ld e, [hl]
    ld c, a
    ld l, a
    ld c, a
    add b
    ld c, a
    sub c
    ld c, a
    and d
    ld c, a
    or e
    ld c, a
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    ldh a, [$f8]
    inc b

jr_011_4f72:
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    ld hl, sp-$08
    ld [$f810], sp
    nop
    add hl, bc
    db $10
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $8010
    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld a, [bc]
    db $10
    ld hl, sp+$00

jr_011_4f9f:
    dec bc
    db $10
    add b
    ld hl, sp-$08
    dec c

jr_011_4fa5:
    db $10
    ld hl, sp+$00
    ld c, $10
    ldh a, [rP1]

jr_011_4fac:
    nop
    jr nc, jr_011_4f9f

    ld hl, sp+$0c
    db $10
    add b
    ld hl, sp+$00
    dec c

jr_011_4fb6:
    jr nc, @-$06

    ld hl, sp+$0e
    jr nc, jr_011_4fac

    nop
    inc b
    jr nc, @-$0e

    ld hl, sp+$0f
    db $10
    add b
    ret nc

    ld c, a
    pop hl
    ld c, a
    ld a, [c]
    ld c, a
    inc bc
    ld d, b
    inc d
    ld d, b
    dec h
    ld d, b

jr_011_4fd0:
    rst $28
    ld hl, sp+$00
    db $10
    rst $28
    nop
    nop
    jr nc, jr_011_4fd0

    ld hl, sp+$01
    db $10
    rst $30
    nop
    ld bc, $8030
    ldh a, [$f8]
    ld [bc], a
    db $10
    ldh a, [rP1]
    ld [bc], a
    jr nc, @-$06

    ld hl, sp+$03
    db $10
    ld hl, sp+$00
    inc bc
    jr nc, jr_011_4f72

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    pop af
    ld hl, sp+$08
    db $10
    pop af
    nop
    add hl, bc
    db $10
    ld sp, hl
    ld hl, sp+$0a
    db $10
    ld sp, hl
    nop
    dec bc
    db $10
    add b
    ldh a, [$f8]
    inc c

jr_011_5017:
    db $10
    ldh a, [rP1]
    inc c
    jr nc, @-$06

    ld hl, sp+$0d
    db $10
    ld hl, sp+$00
    dec c
    jr nc, jr_011_4fa5

    pop af
    ld hl, sp+$0e

jr_011_5028:
    db $10
    pop af
    nop
    ld c, $30
    ld sp, hl
    ld hl, sp+$0f
    db $10
    ld sp, hl
    nop
    rrca
    jr nc, jr_011_4fb6

    ld b, d
    ld d, b
    ld d, e
    ld d, b
    ld h, h
    ld d, b
    ld [hl], l
    ld d, b
    add [hl]
    ld d, b
    sub a
    ld d, b
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    rst $28
    ld hl, sp+$00

jr_011_5056:
    db $10
    rst $28
    nop
    ld bc, $f710
    ld hl, sp+$04
    db $10
    rst $30
    nop
    dec b
    db $10
    add b
    ldh a, [$f8]
    ld b, $10
    ldh a, [rP1]
    rlca
    db $10
    ld hl, sp-$08
    ld [$f810], sp
    nop
    add hl, bc
    db $10
    add b
    rst $28
    ld hl, sp+$06
    db $10
    rst $28
    nop
    rlca
    db $10
    rst $30
    ld hl, sp+$0a
    db $10
    rst $30
    nop
    dec bc
    db $10
    add b
    ldh a, [$f8]
    inc c

jr_011_5089:
    db $10
    ldh a, [rP1]
    dec c
    db $10
    ld hl, sp+$00
    ld [bc], a
    jr nc, @-$06

    ld hl, sp+$03
    jr nc, jr_011_5017

    rst $28
    ld hl, sp+$0c

jr_011_509a:
    db $10

jr_011_509b:
    rst $28
    nop
    dec c
    db $10
    rst $30
    nop
    inc b
    jr nc, jr_011_509b

    ld hl, sp+$05
    jr nc, jr_011_5028

    or h
    ld d, b
    push bc
    ld d, b
    sub $50
    rst $20
    ld d, b
    ld hl, sp+$50
    add hl, bc
    ld d, c
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld bc, $8020
    xor $f8
    ld [bc], a

jr_011_50c8:
    nop
    xor $00
    ld [bc], a
    jr nz, @-$08

    ld hl, sp+$03
    nop
    or $00
    inc bc
    jr nz, jr_011_5056

    pop af
    ld hl, sp+$04
    nop
    pop af
    nop
    dec b
    nop
    ld sp, hl
    ld hl, sp+$06
    nop
    ld sp, hl
    nop
    rlca
    nop
    add b
    rst $28
    ld hl, sp+$08
    nop
    rst $28
    nop
    add hl, bc
    nop
    rst $30
    ld hl, sp+$0a
    nop
    rst $30
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp+$00
    dec c
    jr nz, jr_011_5089

    xor $f8
    ld c, $00
    xor $00
    ld c, $20
    or $f8
    rrca
    nop
    or $00
    rrca
    jr nz, jr_011_509a

    ld h, $51
    scf
    ld d, c
    ld c, b
    ld d, c
    ld e, c
    ld d, c
    ld l, d
    ld d, c
    ld a, e
    ld d, c
    ld sp, hl
    ld hl, sp+$02
    nop
    ld sp, hl
    nop
    inc bc
    nop
    pop af
    ld hl, sp+$00
    nop
    pop af
    nop
    ld bc, $8000
    pop af
    ld hl, sp+$00

jr_011_513a:
    nop
    pop af
    nop

jr_011_513d:
    ld bc, $f900
    rst $38
    ld [bc], a
    jr nz, jr_011_513d

    rst $30
    inc bc
    jr nz, jr_011_50c8

    pop af
    ld hl, sp+$08
    nop
    pop af
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    pop af
    ld hl, sp+$08
    nop
    pop af
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0c
    nop
    ld sp, hl
    nop
    dec c
    nop
    add b
    ld sp, hl
    ld hl, sp+$06

jr_011_516d:
    nop
    ld sp, hl
    nop
    rlca
    nop
    pop af
    ld hl, sp+$04
    nop
    pop af
    nop
    dec b
    nop
    add b
    pop af
    ld hl, sp+$04

jr_011_517e:
    nop
    pop af
    nop
    dec b
    nop
    ld sp, hl
    rst $38
    ld b, $20
    ld sp, hl
    rst $30
    rlca
    jr nz, @-$7e

    sbc b
    ld d, c
    xor c
    ld d, c
    cp d
    ld d, c
    bit 2, c
    call c, $ed51
    ld d, c
    ldh a, [$f8]
    nop
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp-$01
    ld bc, $8020
    ldh a, [$f8]
    ld [bc], a
    nop
    ldh a, [rIE]
    ld [bc], a
    jr nz, @-$06

    ld hl, sp+$03
    nop
    ld hl, sp-$01
    inc bc
    jr nz, jr_011_513a

    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c

jr_011_51df:
    nop
    ldh a, [rIE]
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp-$01
    dec c
    jr nz, jr_011_516d

    ldh a, [$f8]
    ld c, $00
    ldh a, [rIE]
    ld c, $20
    ld hl, sp-$08
    rrca
    nop
    ld hl, sp-$01
    rrca
    jr nz, jr_011_517e

    ld a, [bc]
    ld d, d
    dec de
    ld d, d
    inc l
    ld d, d
    dec a
    ld d, d
    ld c, [hl]
    ld d, d
    ld e, a
    ld d, d
    ldh a, [$f8]
    nop

jr_011_520d:
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    pop af
    ld hl, sp+$00

jr_011_521e:
    nop
    pop af
    nop
    ld bc, $f900
    ld hl, sp+$04
    nop
    ld sp, hl
    nop
    dec b
    nop
    add b
    rst $28
    ld hl, sp+$06

jr_011_522f:
    nop
    rst $28
    nop
    rlca
    nop
    rst $30
    ld hl, sp+$08
    nop
    rst $30
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c
    nop
    ld hl, sp+$00
    ld [bc], a
    jr nz, @-$06

    ld hl, sp+$03
    jr nz, jr_011_51df

    pop af
    ld hl, sp+$0c
    nop
    pop af
    nop
    ld c, $00
    ld sp, hl
    nop
    rrca
    nop
    ld sp, hl
    ld hl, sp+$05
    jr nz, @-$7e

    ld a, h
    ld d, d
    adc l
    ld d, d
    sbc [hl]
    ld d, d
    xor a
    ld d, d
    ret nz

    ld d, d
    pop de
    ld d, d
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    ld [bc], a
    jr nz, jr_011_520d

    pop af
    ld hl, sp+$03

jr_011_5290:
    nop
    pop af
    nop
    inc b
    nop
    ld sp, hl
    ld hl, sp+$05
    nop
    ld sp, hl
    nop
    dec b
    jr nz, jr_011_521e

    pop af
    ld hl, sp+$06
    nop
    pop af
    nop
    rlca
    nop
    ld sp, hl
    ld hl, sp+$08
    nop
    ld sp, hl
    nop
    ld [bc], a
    jr nz, jr_011_522f

    ldh a, [$f8]
    add hl, bc
    nop
    ldh a, [rP1]
    ld a, [bc]
    nop
    ld hl, sp-$08
    dec bc
    nop
    ld hl, sp+$00
    dec b
    jr nz, @-$7e

    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    ld c, $20
    ldh a, [$f8]
    inc c

jr_011_52cb:
    nop
    ldh a, [rP1]
    dec c
    nop
    add b
    ld sp, hl
    ld hl, sp+$0f

jr_011_52d4:
    nop
    ld sp, hl
    nop
    rrca
    jr nz, jr_011_52cb

    ld hl, sp+$0c
    nop
    pop af
    nop
    dec c
    nop
    add b
    xor $52
    rst $38
    ld d, d
    db $10
    ld d, e
    ld hl, $3253
    ld d, e
    ld b, e
    ld d, e
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    pop af
    nop

jr_011_5301:
    nop
    jr nz, @-$0d

    ld hl, sp+$01
    jr nz, jr_011_5301

    nop
    ld [bc], a
    jr nz, @-$05

    ld hl, sp+$03
    jr nz, jr_011_5290

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    pop af
    ld hl, sp+$04
    nop
    pop af
    nop
    dec b
    nop
    ld sp, hl
    ld hl, sp+$08
    nop
    ld sp, hl
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]

jr_011_5335:
    nop
    ldh a, [rP1]
    dec bc

jr_011_5339:
    nop
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    pop af
    nop

jr_011_5345:
    ld a, [bc]

jr_011_5346:
    jr nz, jr_011_5339

    ld hl, sp+$0b
    jr nz, jr_011_5345

    nop
    inc c
    jr nz, @-$05

    ld hl, sp+$0d
    jr nz, jr_011_52d4

    ld h, b
    ld d, e
    ld [hl], c
    ld d, e
    add d
    ld d, e
    sub e
    ld d, e
    and h
    ld d, e
    or l
    ld d, e
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    pop af
    ld hl, sp+$00
    db $10
    pop af
    nop
    ld bc, $f910
    nop
    inc bc
    db $10
    ld sp, hl
    ld hl, sp+$04
    db $10
    add b
    ldh a, [$f8]
    dec b
    db $10
    ldh a, [rP1]
    ld b, $10
    ld hl, sp-$08
    rlca
    db $10
    ld hl, sp+$00
    ld [$8010], sp
    pop af
    ld hl, sp+$05
    db $10
    pop af
    nop
    ld b, $10
    ld sp, hl
    nop
    ld [$f910], sp
    ld hl, sp+$09
    db $10
    add b
    ldh a, [$f8]
    ld a, [bc]
    db $10
    ldh a, [rP1]
    dec bc
    db $10
    ld hl, sp-$08
    inc c
    db $10
    ld hl, sp+$00
    rlca
    jr nc, jr_011_5335

    pop af
    ld hl, sp+$0a
    db $10
    pop af
    nop
    dec bc
    db $10
    ld sp, hl
    ld hl, sp+$0c
    db $10
    ld sp, hl
    nop
    add hl, bc
    jr nc, jr_011_5346

    jp nc, $e353

    ld d, e
    db $f4
    ld d, e
    dec b
    ld d, h
    ld d, $54
    daa
    ld d, h
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    xor $f8
    nop
    db $10
    xor $00
    ld bc, $f610
    ld hl, sp+$04
    db $10
    or $00
    dec b
    db $10
    add b
    pop af
    ld hl, sp+$06
    db $10
    pop af
    nop
    rlca
    db $10
    ld sp, hl
    nop
    add hl, bc
    db $10
    ld sp, hl
    ld hl, sp+$0a
    db $10
    add b
    rst $28
    ld hl, sp+$06
    db $10
    rst $28
    nop
    rlca
    db $10
    rst $30
    ld hl, sp+$08
    db $10
    rst $30
    nop
    add hl, bc
    db $10
    add b
    ld hl, sp-$08
    inc c
    db $10
    ld hl, sp+$00
    dec c
    db $10
    ldh a, [$f8]
    ld b, $10
    ldh a, [rP1]
    dec bc
    db $10
    add b
    ld sp, hl
    ld hl, sp+$0e

jr_011_542a:
    db $10
    ld sp, hl
    nop
    rrca
    db $10
    pop af
    ld hl, sp+$06
    db $10
    pop af
    nop
    dec bc
    db $10
    add b
    ld b, h
    ld d, h
    ld d, l
    ld d, h
    ld h, [hl]
    ld d, h
    ld [hl], a
    ld d, h
    adc b
    ld d, h
    sbc c
    ld d, h
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    pop af
    ld hl, sp+$00
    nop
    pop af
    nop
    ld bc, $f900
    ld hl, sp+$04
    nop
    ld sp, hl
    nop
    dec b
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    pop af
    ld hl, sp+$06
    nop
    pop af
    nop
    rlca
    nop
    add b
    pop af
    ld hl, sp+$0c

jr_011_548b:
    nop
    pop af
    nop

jr_011_548e:
    dec c
    nop
    ld sp, hl
    ld hl, sp+$0e
    nop
    ld sp, hl
    nop
    rrca
    nop
    add b
    ldh a, [rP1]
    inc c

jr_011_549c:
    jr nz, jr_011_548e

    ld hl, sp+$0d
    jr nz, @-$06

    nop
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, jr_011_542a

    or [hl]
    ld d, h
    rst $00
    ld d, h
    ret c

    ld d, h
    jp hl


    ld d, h
    ld a, [$0b54]
    ld d, l
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    pop af
    ld hl, sp+$00

jr_011_54ca:
    nop
    pop af
    nop
    ld bc, $f900
    ld hl, sp+$04
    nop
    ld sp, hl
    nop
    dec b
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    pop af
    ld hl, sp+$06
    nop
    pop af
    nop
    rlca
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c
    nop
    ld hl, sp+$00
    ld c, $00
    ld hl, sp-$08
    inc bc
    jr nz, jr_011_548b

    pop af
    ld hl, sp+$0c

jr_011_550e:
    nop
    pop af
    nop
    dec c
    nop
    ld sp, hl
    nop
    rrca
    nop
    ld sp, hl
    ld hl, sp+$05
    jr nz, jr_011_549c

    jr z, jr_011_5573

    add hl, sp
    ld d, l
    ld c, d
    ld d, l
    ld e, e
    ld d, l
    ld l, h
    ld d, l
    ld a, l
    ld d, l
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b

jr_011_5539:
    rst $28
    nop
    nop
    jr nz, @-$0f

    ld hl, sp+$01
    jr nz, jr_011_5539

    nop
    ld [bc], a
    jr nz, @-$07

    ld hl, sp+$03
    jr nz, jr_011_54ca

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    rst $28
    ld hl, sp+$08

jr_011_555e:
    nop
    rst $28
    nop
    add hl, bc
    nop
    rst $30
    ld hl, sp+$0a
    nop
    rst $30
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c

jr_011_5573:
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b

jr_011_557d:
    rst $28
    nop
    inc c
    jr nz, @-$0f

    ld hl, sp+$0d
    jr nz, jr_011_557d

    nop
    ld c, $20
    rst $30
    ld hl, sp+$0f
    jr nz, jr_011_550e

    sbc d
    ld d, l
    xor e
    ld d, l
    cp h
    ld d, l
    call $de55
    ld d, l
    rst $28
    ld d, l
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00

jr_011_55a8:
    inc bc
    db $10
    add b
    ld hl, sp-$01
    ld [bc], a
    jr nc, jr_011_55a8

    rst $30
    inc bc
    jr nc, @-$0e

    ld hl, sp+$04
    db $10
    ldh a, [rP1]
    dec b
    db $10
    add b
    ldh a, [$f8]
    ld b, $10
    ld hl, sp-$08
    rlca
    db $10
    ldh a, [rP1]
    ld bc, $f810
    nop
    inc bc
    db $10
    add b
    ldh a, [$f8]
    ld [$f810], sp
    ld hl, sp+$09
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp+$00
    ld [bc], a
    jr nc, jr_011_555e

    ldh a, [$f7]
    ld a, [bc]
    db $10
    ldh a, [rIE]
    dec bc
    db $10
    ld hl, sp-$09

jr_011_55e8:
    inc c
    db $10
    ld hl, sp-$01

jr_011_55ec:
    dec c
    db $10
    add b
    ld hl, sp+$00
    inc c

jr_011_55f2:
    jr nc, jr_011_55ec

    ld hl, sp+$0d
    jr nc, jr_011_55e8

    rst $30
    ld c, $10
    ldh a, [rIE]
    rrca
    db $10
    add b
    inc c
    ld d, [hl]
    dec e
    ld d, [hl]
    ld l, $56
    ccf
    ld d, [hl]
    ld d, b
    ld d, [hl]
    ld h, c
    ld d, [hl]
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ld hl, sp-$08
    ld c, $00
    ldh a, [rP1]

jr_011_5638:
    ld [$f800], sp
    nop

jr_011_563c:
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    dec c

jr_011_5642:
    jr nz, jr_011_563c

    ld hl, sp+$0f
    jr nz, jr_011_5638

    nop
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]

jr_011_5656:
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [rIE]
    inc c
    jr nz, jr_011_5656

    rst $30
    dec c
    jr nz, @-$06

    rst $38
    ld c, $20
    ld hl, sp-$09
    rrca
    jr nz, jr_011_55f2

    ld a, [hl]
    ld d, [hl]
    adc a
    ld d, [hl]
    and b
    ld d, [hl]
    or c
    ld d, [hl]
    jp nz, $d356

    ld d, [hl]
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    nop
    jr nz, @-$06

    ld hl, sp+$09
    nop
    ld hl, sp+$00
    ld a, [bc]
    nop
    add b
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$08

jr_011_56b7:
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    ldh a, [$f8]
    dec b
    jr nz, jr_011_5642

    ldh a, [rP1]
    nop
    jr nz, jr_011_56b7

    ld hl, sp+$01
    jr nz, @-$06

    nop
    ld c, $00
    ld hl, sp-$08
    add hl, bc
    nop
    add b
    ldh a, [rP1]
    inc b
    jr nz, @-$0e

    ld hl, sp+$05
    jr nz, @-$06

    nop
    rrca
    nop
    ld hl, sp-$08
    inc c
    nop
    add b
    ldh a, [rRP]
    ld bc, $1257
    ld d, a
    inc hl
    ld d, a
    inc [hl]
    ld d, a
    ld b, l
    ld d, a
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    pop af
    ld hl, sp+$00

jr_011_5704:
    nop
    pop af
    nop
    nop
    jr nz, @-$05

    ld hl, sp+$03
    nop
    ld sp, hl
    nop
    inc b
    nop
    add b
    rst $28
    ld hl, sp+$05
    nop
    rst $28
    nop
    ld b, $00
    rst $30
    ld hl, sp+$07
    nop
    rst $30
    nop
    ld [$8000], sp
    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$08
    add hl, bc
    nop
    ld hl, sp+$00
    ld a, [bc]
    nop
    add b
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rP1]
    dec bc
    jr nz, @-$06

    ld hl, sp+$0c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    pop af
    ld hl, sp+$0b

jr_011_5748:
    nop
    pop af
    nop
    dec bc
    jr nz, @-$05

    ld hl, sp+$0e
    nop
    ld sp, hl
    nop
    rrca
    nop
    add b
    ld h, d
    ld d, a
    ld [hl], e
    ld d, a
    add h
    ld d, a
    sub l
    ld d, a
    and [hl]
    ld d, a
    or a
    ld d, a
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02

jr_011_576d:
    nop
    ld hl, sp+$00
    inc bc

jr_011_5771:
    nop
    add b
    ld sp, hl
    nop
    ld [bc], a

jr_011_5776:
    jr nz, jr_011_5771

    ld hl, sp+$03
    jr nz, jr_011_576d

    nop
    nop
    jr nz, jr_011_5771

    ld hl, sp+$01
    jr nz, jr_011_5704

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    pop af
    ld hl, sp+$08
    nop
    pop af
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c

jr_011_57a9:
    nop
    ldh a, [rP1]
    dec c

jr_011_57ad:
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    pop af
    nop

jr_011_57b9:
    inc c

jr_011_57ba:
    jr nz, jr_011_57ad

    ld hl, sp+$0d
    jr nz, jr_011_57b9

    nop
    ld c, $20
    ld sp, hl
    ld hl, sp+$0f
    jr nz, jr_011_5748

    call nc, $e557
    ld d, a
    or $57
    rlca
    ld e, b
    jr jr_011_582a

    add hl, hl
    ld e, b
    ldh a, [$f8]
    nop
    nop
    ld hl, sp-$08
    ld bc, $f000
    rst $38
    nop
    jr nz, @-$06

    rst $38
    ld bc, $8020
    rst $28
    ld hl, sp+$02

jr_011_57e8:
    nop

jr_011_57e9:
    rst $30
    ld hl, sp+$03
    nop
    rst $28
    rst $38
    ld [bc], a
    jr nz, jr_011_57e9

    rst $38
    inc bc
    jr nz, jr_011_5776

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    rst $28
    ld hl, sp+$08
    nop
    rst $28
    nop
    add hl, bc
    nop
    rst $30
    ld hl, sp+$0a
    nop
    rst $30
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c

jr_011_581b:
    nop
    ldh a, [rIE]
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp-$01
    dec c
    jr nz, jr_011_57a9

    rst $28

jr_011_582a:
    ld hl, sp+$0e

jr_011_582c:
    nop
    rst $30
    ld hl, sp+$0f
    nop
    rst $28
    rst $38
    ld c, $20
    rst $30
    rst $38
    rrca
    jr nz, jr_011_57ba

    ld b, [hl]
    ld e, b
    ld d, a
    ld e, b
    ld l, b
    ld e, b
    ld a, c
    ld e, b
    adc d
    ld e, b
    sbc e
    ld e, b
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rIE]
    nop
    jr nc, @-$06

    ld hl, sp+$01
    db $10
    ld hl, sp-$01
    ld bc, $8030
    pop af
    ld hl, sp+$02

jr_011_585a:
    db $10
    pop af
    rst $38
    ld [bc], a
    jr nc, @-$05

    ld hl, sp+$03
    db $10
    ld sp, hl
    rst $38
    inc bc
    jr nc, jr_011_57e8

    rst $28
    ld hl, sp+$04
    db $10
    rst $28
    nop
    dec b
    db $10
    rst $30
    ld hl, sp+$06
    db $10
    rst $30
    nop
    rlca
    db $10
    add b
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    ldh a, [$f8]
    ld [$f010], sp
    nop
    dec b
    db $10
    add b
    ldh a, [$f8]
    add hl, bc
    db $10
    ldh a, [rIE]
    add hl, bc
    jr nc, @-$06

    ld hl, sp+$0a
    db $10
    ld hl, sp-$01
    ld a, [bc]
    jr nc, jr_011_581b

    pop af
    ld hl, sp+$0b

jr_011_589e:
    db $10
    pop af
    rst $38
    dec bc
    jr nc, @-$05

    ld hl, sp+$0c
    db $10
    ld sp, hl
    rst $38
    inc c
    jr nc, jr_011_582c

    cp b
    ld e, b
    ret


    ld e, b
    jp c, $eb58

    ld e, b
    db $fc
    ld e, b
    dec c
    ld e, c
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02

jr_011_58c3:
    nop
    ld hl, sp+$00
    inc bc

jr_011_58c7:
    nop
    add b
    ld sp, hl
    nop
    ld [bc], a

jr_011_58cc:
    jr nz, jr_011_58c7

    ld hl, sp+$03
    jr nz, jr_011_58c3

    nop
    nop
    jr nz, jr_011_58c7

    ld hl, sp+$01
    jr nz, jr_011_585a

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    pop af
    ld hl, sp+$08
    nop
    pop af
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c

jr_011_5903:
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    pop af
    nop

jr_011_590f:
    inc c

jr_011_5910:
    jr nz, jr_011_5903

    ld hl, sp+$0d
    jr nz, jr_011_590f

    nop
    ld c, $20
    ld sp, hl
    ld hl, sp+$0f
    jr nz, jr_011_589e

    ld a, [hl+]
    ld e, c
    dec sp
    ld e, c
    ld c, h
    ld e, c
    ld e, l
    ld e, c
    ld l, [hl]
    ld e, c
    ld a, a
    ld e, c
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, @-$06

    ld hl, sp+$01
    db $10
    ld hl, sp+$00
    ld [bc], a
    db $10
    add b

jr_011_593b:
    rst $28
    ld hl, sp+$00
    db $10
    rst $28
    nop
    nop
    jr nc, jr_011_593b

    nop
    ld bc, $f730
    ld hl, sp+$02
    jr nc, jr_011_58cc

    rst $28
    ld hl, sp+$03

jr_011_594f:
    db $10
    rst $28
    nop
    inc b
    db $10
    rst $30
    ld hl, sp+$05
    db $10
    rst $30
    nop
    ld b, $10
    add b
    ldh a, [$f8]
    inc bc

jr_011_5960:
    db $10
    ld hl, sp-$08
    ld [$f810], sp
    nop
    add hl, bc
    db $10
    ldh a, [rP1]
    inc b
    db $10
    add b
    ldh a, [$f8]
    ld a, [bc]
    db $10
    ldh a, [rP1]
    ld a, [bc]
    jr nc, @-$06

    ld hl, sp+$0b
    db $10
    ld hl, sp+$00
    inc c
    db $10
    add b

jr_011_597f:
    rst $28
    ld hl, sp+$0a

jr_011_5982:
    db $10

jr_011_5983:
    rst $28
    nop
    ld a, [bc]
    jr nc, jr_011_597f

    nop
    dec bc
    jr nc, jr_011_5983

    ld hl, sp+$0c
    jr nc, jr_011_5910

    sbc h
    ld e, c
    xor l
    ld e, c
    cp [hl]
    ld e, c
    rst $08
    ld e, c
    ldh [$59], a
    pop af
    ld e, c
    ldh a, [$f8]
    nop

jr_011_599f:
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    nop

jr_011_59b0:
    nop
    ld hl, sp+$00
    inc bc
    nop
    ldh a, [rP1]
    inc b
    nop
    ld hl, sp-$08
    dec b
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp+$00

jr_011_59c8:
    ld [bc], a
    jr nz, @-$06

    ld hl, sp+$03
    jr nz, jr_011_594f

    ldh a, [rP1]
    rlca

jr_011_59d2:
    nop
    ld hl, sp-$08
    inc bc
    jr nz, jr_011_59c8

    ld hl, sp+$08
    nop
    ld hl, sp+$00
    dec b
    jr nz, jr_011_5960

    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [$f8]
    inc c

jr_011_59f4:
    nop
    ldh a, [rP1]
    dec c
    nop
    ld hl, sp-$08
    dec bc
    nop
    ld hl, sp+$00
    ld [bc], a
    jr nz, jr_011_5982

    ld c, $5a
    rra
    ld e, d
    jr nc, jr_011_5a62

    ld b, c
    ld e, d
    ld d, d
    ld e, d
    ld h, e
    ld e, d
    ld hl, sp-$08
    ld [bc], a
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    nop
    ld [bc], a
    jr nz, jr_011_599f

    pop af
    ld hl, sp+$03

jr_011_5a22:
    nop
    pop af
    nop
    inc b
    nop
    ld sp, hl
    ld hl, sp+$05
    nop
    ld sp, hl
    nop
    dec b
    jr nz, jr_011_59b0

    ld hl, sp-$08
    ld [$f800], sp
    nop
    ld [$f020], sp
    ld hl, sp+$06
    nop
    ldh a, [rP1]
    rlca
    nop
    add b
    pop af
    ld hl, sp+$09
    nop
    pop af
    nop
    ld a, [bc]
    nop
    ld sp, hl
    ld hl, sp+$0b
    nop
    ld sp, hl
    nop
    dec bc
    jr nz, jr_011_59d2

    ld hl, sp-$08
    ld [$f800], sp
    nop
    ld [$f020], sp
    ld hl, sp+$0c
    nop
    ldh a, [rP1]
    dec c
    nop

jr_011_5a62:
    add b
    pop af
    ld hl, sp+$0e

jr_011_5a66:
    nop
    pop af
    nop
    rrca
    nop
    ld sp, hl
    ld hl, sp+$0b
    nop
    ld sp, hl
    nop
    dec bc
    jr nz, jr_011_59f4

    add b
    ld e, d
    sub c
    ld e, d
    and d
    ld e, d
    or e
    ld e, d
    call nz, $d55a
    ld e, d
    pop af
    ld hl, sp+$00

jr_011_5a83:
    db $10
    pop af
    nop
    nop
    jr nc, @-$05

    ld hl, sp+$01
    db $10
    ld sp, hl
    nop
    ld bc, $8030
    ld hl, sp-$08
    ld bc, $f810
    nop
    ld bc, $f030
    ld hl, sp+$02
    db $10
    ldh a, [rP1]
    ld [bc], a
    jr nc, jr_011_5a22

    pop af
    ld hl, sp+$03
    db $10
    pop af
    nop
    inc b
    db $10
    ld sp, hl
    ld hl, sp+$05
    db $10
    ld sp, hl
    nop
    ld b, $10
    add b
    ld hl, sp-$08
    dec b
    db $10
    ld hl, sp+$00
    ld b, $10
    ldh a, [rP1]
    rlca
    db $10
    ldh a, [$f8]
    inc bc
    db $10
    add b
    pop af
    ld hl, sp+$08
    db $10
    pop af
    nop
    ld [$f930], sp
    ld hl, sp+$09
    db $10
    ld sp, hl
    nop
    add hl, bc
    jr nc, @-$7e

    ldh a, [$f8]
    ld [$f010], sp
    nop
    ld [$f830], sp
    ld hl, sp+$09
    db $10
    ld hl, sp+$00
    add hl, bc
    jr nc, jr_011_5a66

    ld a, [c]
    ld e, d
    inc bc
    ld e, e
    inc d
    ld e, e
    dec h
    ld e, e
    ld [hl], $5b
    ld b, a
    ld e, e
    ldh a, [$f8]
    nop
    nop
    ld hl, sp-$08
    ld bc, $f800
    nop

jr_011_5afc:
    ld [bc], a
    nop
    ldh a, [rIE]
    nop
    jr nz, jr_011_5a83

    ld hl, sp+$00
    ld bc, $f820
    ld hl, sp+$02
    jr nz, jr_011_5afc

    ld sp, hl
    inc bc
    nop
    ldh a, [rP1]
    inc bc
    jr nz, @-$7e

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rIE]
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp+$00

jr_011_5b44:
    ld c, $00
    add b
    ld hl, sp+$00
    dec c

jr_011_5b4a:
    jr nz, jr_011_5b44

    ld hl, sp+$0e
    jr nz, @-$0e

    nop
    rrca
    jr nz, jr_011_5b44

    ld sp, hl
    rrca
    nop
    add b
    ld h, h
    ld e, e
    ld [hl], l
    ld e, e
    add [hl]
    ld e, e
    sub a
    ld e, e
    xor b
    ld e, e
    cp c
    ld e, e
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rIE]
    nop
    jr nc, @-$06

    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    ldh a, [$f9]
    ld bc, $f010
    nop
    ld bc, $f830
    ld sp, hl
    inc b
    db $10
    ld hl, sp+$01
    dec b
    db $10
    add b
    ldh a, [$f8]
    ld b, $10
    ldh a, [rP1]
    rlca
    db $10
    ld hl, sp-$08
    ld [$f810], sp
    nop
    add hl, bc
    db $10
    add b
    ldh a, [rP1]
    rlca
    db $10
    ldh a, [$f8]
    ld a, [bc]
    db $10
    ld hl, sp-$08
    dec bc
    db $10
    ld hl, sp+$00
    inc c
    db $10
    add b
    ldh a, [$f8]
    dec c

jr_011_5bab:
    db $10
    ldh a, [rIE]
    dec c
    jr nc, @-$06

    ld hl, sp+$0e
    db $10
    ld hl, sp+$00
    rrca
    db $10
    add b
    ld hl, sp+$00
    ld c, $30
    ld hl, sp-$08
    rrca
    jr nc, @-$0e

    ld sp, hl
    dec c
    db $10
    ldh a, [rP1]
    dec c
    jr nc, jr_011_5b4a

    sub $5b
    rst $20
    ld e, e
    ld hl, sp+$5b
    add hl, bc
    ld e, h
    ld a, [de]
    ld e, h
    dec hl
    ld e, h
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld bc, $8020
    pop af
    ld hl, sp+$02

jr_011_5bea:
    nop
    pop af
    nop
    ld [bc], a
    jr nz, @-$05

    ld hl, sp+$03
    nop
    ld sp, hl
    nop
    inc bc
    jr nz, @-$7e

    pop af
    ld hl, sp+$08
    nop
    pop af
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    rst $28
    ld sp, hl
    inc b
    nop
    rst $28
    ld bc, $0005
    rst $30
    ld sp, hl
    ld b, $00
    rst $30
    ld bc, $0007
    add b
    ld a, [c]
    ld hl, sp+$0c

jr_011_5c1d:
    nop
    ld a, [c]
    nop
    inc c
    jr nz, jr_011_5c1d

    ld hl, sp+$0d
    nop
    ld a, [$0d00]
    jr nz, jr_011_5bab

    rst $28
    ld hl, sp+$0e

jr_011_5c2e:
    nop
    rst $28
    nop
    ld c, $20
    rst $30
    ld hl, sp+$0f
    nop
    rst $30
    nop
    rrca
    jr nz, @-$7e

    ld c, b
    ld e, h
    ld e, c
    ld e, h
    ld l, d
    ld e, h
    ld a, e
    ld e, h
    adc h
    ld e, h
    sbc l
    ld e, h
    pop af
    ld hl, sp+$00
    nop
    pop af
    nop
    nop
    jr nz, @-$05

    ld hl, sp+$01
    nop
    ld sp, hl
    nop
    ld bc, $8020
    ldh a, [$f8]
    ld [bc], a
    nop
    ldh a, [rP1]
    ld [bc], a
    jr nz, @-$06

    ld hl, sp+$03
    nop
    ld hl, sp+$00
    inc bc
    jr nz, jr_011_5bea

    pop af
    ld hl, sp+$04
    nop
    pop af
    nop
    dec b
    nop
    ld sp, hl
    ld hl, sp+$06
    nop
    ld sp, hl
    nop
    rlca
    nop
    add b
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    add b
    pop af
    ld hl, sp+$0c
    nop
    pop af
    nop
    inc c
    jr nz, @-$05

    ld hl, sp+$0d
    nop
    ld sp, hl
    nop
    dec c
    jr nz, jr_011_5c1d

    ldh a, [$f8]
    ld c, $00
    ldh a, [rP1]
    ld c, $20
    ld hl, sp-$08
    rrca
    nop
    ld hl, sp+$00
    rrca
    jr nz, jr_011_5c2e

    cp d
    ld e, h
    bit 3, h
    call c, $ed5c
    ld e, h
    cp $5c
    rrca
    ld e, l
    pop af
    ld hl, sp+$00
    nop
    pop af
    nop
    ld bc, $f900
    ld hl, sp+$02
    nop
    ld sp, hl
    nop

jr_011_5cc8:
    inc bc
    nop
    add b
    ld hl, sp+$00
    ld [bc], a

jr_011_5cce:
    jr nz, jr_011_5cc8

    ld hl, sp+$03
    jr nz, @-$0e

    ld hl, sp+$04
    nop
    ldh a, [rP1]
    dec b
    nop
    add b
    pop af
    ld hl, sp+$06
    nop
    pop af
    nop
    rlca
    nop
    ld sp, hl
    ld hl, sp+$08
    nop
    ld sp, hl
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]

jr_011_5cf0:
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    ldh a, [$f8]
    ld c, $00
    ldh a, [rP1]
    rrca
    nop
    ld hl, sp-$08
    ld [bc], a
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    pop af
    nop

jr_011_5d11:
    ld c, $20
    pop af
    ld hl, sp+$0f
    jr nz, jr_011_5d11

    nop
    ld [bc], a
    jr nz, @-$05

    ld hl, sp+$03
    jr nz, @-$7e

    inc l
    ld e, l
    dec a
    ld e, l
    ld c, [hl]
    ld e, l
    ld e, a
    ld e, l
    ld [hl], b
    ld e, l
    add c
    ld e, l
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, @-$06

    ld hl, sp+$01
    db $10
    ld hl, sp+$00
    ld bc, $8030
    pop af
    ld hl, sp+$02

jr_011_5d40:
    db $10
    pop af
    nop
    ld [bc], a
    jr nc, @-$05

    ld hl, sp+$03
    db $10
    ld sp, hl
    nop
    inc bc
    jr nc, jr_011_5cce

    rst $28
    ld hl, sp+$04
    db $10
    rst $28
    nop

jr_011_5d54:
    dec b
    db $10
    rst $30
    ld hl, sp+$06
    db $10
    rst $30
    nop
    rlca
    db $10
    add b
    ldh a, [rP1]
    inc b
    jr nc, jr_011_5d54

    ld hl, sp+$05
    jr nc, @-$06

    nop
    ld b, $30
    ld hl, sp-$08
    rlca
    jr nc, jr_011_5cf0

    ldh a, [$f8]
    ld [$f010], sp
    nop
    ld [$f830], sp
    ld hl, sp+$09
    db $10
    ld hl, sp+$00
    add hl, bc
    jr nc, @-$7e

    pop af
    ld hl, sp+$0a

jr_011_5d84:
    db $10
    pop af
    nop
    ld a, [bc]
    jr nc, @-$05

    ld hl, sp+$0b
    db $10
    ld sp, hl
    nop
    dec bc
    jr nc, @-$7e

    sbc [hl]
    ld e, l
    xor a
    ld e, l
    ret nz

    ld e, l
    pop de
    ld e, l
    ld [c], a
    ld e, l
    di
    ld e, l
    pop af
    ld hl, sp+$00
    db $10
    pop af
    nop

jr_011_5da4:
    ld bc, $f910
    ld hl, sp+$02
    db $10
    ld sp, hl
    nop
    inc bc
    db $10
    add b
    ldh a, [rP1]
    nop
    jr nc, jr_011_5da4

jr_011_5db4:
    ld hl, sp+$01
    jr nc, @-$06

    nop
    ld [bc], a
    jr nc, jr_011_5db4

    ld hl, sp+$03
    jr nc, jr_011_5d40

    pop af
    ld hl, sp+$04
    db $10
    pop af
    nop
    dec b
    db $10
    ld sp, hl
    ld hl, sp+$06
    db $10
    ld sp, hl
    nop
    rlca
    db $10
    add b
    ldh a, [$f8]
    ld [$f010], sp
    nop
    add hl, bc
    db $10
    ld hl, sp-$08
    ld a, [bc]
    db $10
    ld hl, sp+$00
    dec bc
    db $10
    add b
    pop af
    ld hl, sp+$0c
    db $10
    pop af
    nop
    dec c
    db $10
    ld sp, hl
    ld hl, sp+$0e
    db $10

jr_011_5dee:
    ld sp, hl
    nop

jr_011_5df0:
    rrca
    db $10
    add b
    ld hl, sp+$00
    ld c, $30
    ld hl, sp-$08
    rrca
    jr nc, @-$0e

    nop
    inc c
    jr nc, jr_011_5df0

    ld hl, sp+$0d
    jr nc, jr_011_5d84

    db $10
    ld e, [hl]
    dec e
    ld e, [hl]
    ld l, $5e
    dec sp
    ld e, [hl]
    ld c, h
    ld e, [hl]
    ld e, l
    ld e, [hl]
    ld a, [c]
    nop
    ld bc, $fa10
    nop
    ld [bc], a
    db $10
    push af
    ld hl, sp+$00
    db $10
    add b
    ldh a, [$f8]
    inc bc
    db $10
    ld hl, sp-$08
    inc b
    db $10
    ld sp, hl
    nop
    dec b
    db $10
    pop af
    nop
    ld bc, $8010
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    ldh a, [$f9]
    ld [$8010], sp
    ld hl, sp-$08
    dec bc
    db $10
    ld hl, sp+$00

jr_011_5e41:
    inc c
    db $10
    ldh a, [$f8]
    add hl, bc
    db $10
    ldh a, [rP1]
    ld a, [bc]
    db $10
    add b
    ldh a, [rP1]
    inc bc
    jr nc, jr_011_5e41

    ld hl, sp+$0d
    db $10
    ld hl, sp-$08
    ld c, $10

jr_011_5e58:
    ld hl, sp+$00
    rrca
    db $10
    add b
    ldh a, [$f8]
    inc bc
    db $10
    ldh a, [rP1]
    dec c
    jr nc, @-$06

    nop
    ld c, $30
    ld hl, sp-$08
    rrca
    jr nc, jr_011_5dee

    ld a, d
    ld e, [hl]
    add a
    ld e, [hl]
    sbc b
    ld e, [hl]
    and l
    ld e, [hl]
    or [hl]
    ld e, [hl]
    rst $00
    ld e, [hl]
    ld a, [c]
    nop
    ld bc, $fa00
    nop
    ld [bc], a
    nop
    push af
    ld hl, sp+$00
    nop

jr_011_5e86:
    add b
    ldh a, [$f8]
    inc bc
    nop
    ld hl, sp-$08
    inc b
    nop
    ld sp, hl
    nop
    dec b
    nop
    pop af
    nop
    ld bc, $8000
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    ldh a, [$f9]
    ld [$8000], sp
    ld hl, sp-$08
    dec bc
    nop
    ld hl, sp+$00

jr_011_5eab:
    inc c
    nop
    ldh a, [$f8]
    add hl, bc
    nop
    ldh a, [rP1]
    ld a, [bc]
    nop
    add b
    ldh a, [rP1]
    inc bc

jr_011_5eb9:
    jr nz, jr_011_5eab

    ld hl, sp+$0d
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [$f8]
    inc bc

jr_011_5eca:
    nop
    ldh a, [rP1]
    dec c
    jr nz, @-$06

    nop
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, jr_011_5e58

    db $e4
    ld e, [hl]
    push af
    ld e, [hl]
    ld b, $5f
    rla
    ld e, a
    jr z, @+$61

    add hl, sp
    ld e, a
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, @-$06

    ld hl, sp+$01
    db $10
    ld hl, sp+$00
    ld bc, $8030
    ldh a, [$f8]
    ld [bc], a

jr_011_5ef8:
    db $10
    ldh a, [rP1]
    ld [bc], a
    jr nc, @-$06

    ld hl, sp+$03
    db $10
    ld hl, sp+$00
    inc bc
    jr nc, jr_011_5e86

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    rst $28
    ld hl, sp+$08
    db $10
    rst $28
    nop

jr_011_5f1d:
    add hl, bc
    db $10
    rst $30
    nop
    ld a, [bc]
    db $10
    rst $30
    ld hl, sp+$06
    db $10
    add b
    ldh a, [rP1]
    nop
    jr nc, jr_011_5f1d

    ld hl, sp+$0b
    db $10
    ld hl, sp-$08
    inc c
    db $10
    ld hl, sp+$00
    inc c
    jr nc, jr_011_5eb9

    rst $30
    ld hl, sp+$0c

jr_011_5f3c:
    db $10
    rst $30
    nop
    inc c
    jr nc, @-$0f

    ld hl, sp+$0d
    db $10
    rst $28
    nop
    dec c
    jr nc, jr_011_5eca

    ld d, [hl]
    ld e, a
    ld h, a
    ld e, a
    ld a, b
    ld e, a
    adc c
    ld e, a
    sbc d
    ld e, a
    xor e
    ld e, a
    pop af
    ld hl, sp+$00
    nop
    pop af
    nop

jr_011_5f5c:
    ld bc, $f900
    ld hl, sp+$02
    nop
    ld sp, hl
    nop
    inc bc
    nop
    add b
    ldh a, [rP1]
    nop

jr_011_5f6a:
    jr nz, jr_011_5f5c

jr_011_5f6c:
    ld hl, sp+$01
    jr nz, @-$06

    nop
    ld [bc], a
    jr nz, jr_011_5f6c

    ld hl, sp+$03
    jr nz, jr_011_5ef8

    pop af
    ld hl, sp+$04
    nop
    pop af
    nop
    dec b
    nop
    ld sp, hl
    ld hl, sp+$06
    nop
    ld sp, hl
    nop
    rlca
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    pop af
    ld hl, sp+$0c
    nop
    pop af
    nop

jr_011_5fa0:
    dec c
    nop
    ld sp, hl
    ld hl, sp+$0e
    nop
    ld sp, hl
    nop
    rrca
    nop
    add b
    ldh a, [rP1]
    inc c

jr_011_5fae:
    jr nz, jr_011_5fa0

    ld hl, sp+$0d
    jr nz, @-$06

    nop
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, jr_011_5f3c

    ret z

    ld e, a
    reti


    ld e, a
    ld [$fb5f], a
    ld e, a
    inc c
    ld h, b
    dec e
    ld h, b
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]

jr_011_5fce:
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    ldh a, [rSB]
    nop
    jr nc, jr_011_5fce

    ld sp, hl
    ld bc, $f830
    ld bc, $3002
    ld hl, sp-$07
    inc bc
    jr nc, jr_011_5f6a

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    ldh a, [$f8]
    ld [$f010], sp
    nop
    add hl, bc
    db $10
    ld hl, sp-$08
    ld a, [bc]
    db $10
    ld hl, sp+$00
    dec bc
    db $10
    add b
    ldh a, [$f8]
    inc c
    db $10
    ldh a, [rP1]

jr_011_6012:
    dec c
    db $10
    ld hl, sp-$08
    ld c, $10
    ld hl, sp+$00
    rrca
    db $10
    add b
    ldh a, [rSB]
    inc c
    jr nc, jr_011_6012

    ld sp, hl
    dec c
    jr nc, @-$06

    ld bc, $300e
    ld hl, sp-$07
    rrca
    jr nc, jr_011_5fae

    ld a, [hl-]
    ld h, b
    ld c, e
    ld h, b
    ld e, h
    ld h, b
    ld l, l
    ld h, b
    ld a, [hl]
    ld h, b
    adc a
    ld h, b
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]

jr_011_6040:
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [rP1]
    nop

jr_011_604e:
    jr nz, jr_011_6040

    ld hl, sp+$01
    jr nz, @-$06

    ld hl, sp+$04
    nop
    ld hl, sp+$00
    dec b
    nop
    add b
    ldh a, [$f9]
    ld b, $00
    ldh a, [rSB]
    rlca
    nop
    ld hl, sp-$08
    inc b
    nop
    ld hl, sp+$00
    dec b
    nop
    add b
    ld hl, sp-$08
    ld [bc], a
    nop
    ld hl, sp+$00
    inc bc
    nop
    ldh a, [$f7]
    ld [$f000], sp
    rst $38
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]

jr_011_6084:
    dec bc
    nop
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    ldh a, [rP1]
    ld a, [bc]

jr_011_6092:
    jr nz, jr_011_6084

    ld hl, sp+$0b
    jr nz, @-$06

    ld hl, sp+$0e
    nop
    ld hl, sp+$00
    rrca
    nop
    add b
    xor h

jr_011_60a1:
    ld h, b
    cp l
    ld h, b
    adc $60
    rst $18
    ld h, b
    ldh a, [$60]
    ld bc, $f061
    ld hl, sp+$00
    jr nc, jr_011_60a1

    rst $38

jr_011_60b2:
    nop
    db $10
    ld hl, sp-$06
    ld bc, $f810
    ld [bc], a
    ld [bc], a
    db $10
    add b
    ldh a, [$f9]
    nop
    jr nc, jr_011_60b2

    nop

jr_011_60c3:
    nop
    db $10
    ld hl, sp-$02
    ld bc, $f830
    or $02
    jr nc, jr_011_604e

    ldh a, [$f9]
    nop
    jr nc, jr_011_60c3

    rst $38
    nop
    db $10
    ld hl, sp-$06
    dec b
    db $10
    ld hl, sp+$02
    ld b, $10
    add b
    ldh a, [rP1]
    nop
    db $10
    ldh a, [$fa]

jr_011_60e5:
    nop
    jr nc, @-$06

    ei
    rlca
    db $10
    ld hl, sp+$03
    ld [$8010], sp
    ldh a, [$f8]
    nop
    jr nc, jr_011_60e5

    rst $38
    nop
    db $10
    ld hl, sp-$08
    inc bc
    db $10
    ld hl, sp+$00
    inc b
    db $10
    add b
    ldh a, [rP1]
    nop

jr_011_6104:
    db $10
    ldh a, [$f9]
    nop
    jr nc, @-$06

    nop
    inc bc
    jr nc, @-$06

    ld hl, sp+$04
    jr nc, jr_011_6092

    ld e, $61
    cpl
    ld h, c
    ld b, b
    ld h, c
    ld d, c
    ld h, c
    ld h, d
    ld h, c
    ld [hl], e
    ld h, c
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$04
    nop
    ld hl, sp+$00
    dec b
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [$f8]
    inc c

jr_011_6176:
    nop
    ldh a, [rP1]
    dec c
    nop
    ld hl, sp-$01
    ld c, $20
    ld hl, sp-$09
    rrca
    jr nz, jr_011_6104

    sub b
    ld h, c
    and c
    ld h, c
    or d
    ld h, c
    jp $d461


    ld h, c
    push hl
    ld h, c
    pop af
    ld hl, sp+$00
    nop
    pop af
    nop
    ld bc, $f900
    ld hl, sp+$02
    nop
    ld sp, hl
    nop
    inc bc
    nop
    add b
    ldh a, [$f8]
    nop

jr_011_61a4:
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$04
    nop
    ld hl, sp+$00
    dec b
    nop
    add b
    pop af
    ld hl, sp+$06
    nop
    pop af
    nop
    rlca
    nop
    ld sp, hl
    ld hl, sp+$08
    nop
    ld sp, hl
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    pop af
    ld hl, sp+$0c
    nop
    pop af
    nop
    dec c
    nop
    ld sp, hl
    ld hl, sp+$0e
    nop
    ld sp, hl
    nop
    rrca
    nop
    add b
    ldh a, [$f8]
    inc c

jr_011_61e8:
    nop
    ldh a, [rP1]
    dec c
    nop
    ld hl, sp+$00
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, jr_011_6176

    ld [bc], a
    ld h, d
    inc de
    ld h, d
    inc h
    ld h, d
    dec [hl]
    ld h, d
    ld b, [hl]
    ld h, d
    ld d, a
    ld h, d
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$01

jr_011_620d:
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ld sp, hl
    nop
    ld bc, $f920
    ld hl, sp+$02
    jr nz, jr_011_620d

    ld hl, sp+$03
    nop
    pop af
    nop
    inc bc
    jr nz, jr_011_61a4

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    pop af
    ld hl, sp+$08
    nop
    pop af
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    inc c
    jr nz, @-$06

    ld hl, sp+$0e
    nop
    ld hl, sp+$00
    rrca
    nop
    add b
    pop af
    ld hl, sp+$0c

jr_011_625a:
    nop
    pop af
    nop
    inc c
    jr nz, @-$05

    nop
    ld c, $20
    ld sp, hl
    ld hl, sp+$0f
    jr nz, jr_011_61e8

    ld [hl], h
    ld h, d
    add l
    ld h, d
    sub [hl]
    ld h, d
    and a
    ld h, d
    cp b
    ld h, d
    ret


    ld h, d
    ldh a, [$f8]
    nop
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ldh a, [$f8]
    nop

jr_011_6288:
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$03
    nop
    ld hl, sp+$00
    inc b
    nop
    add b
    ldh a, [$f8]
    add hl, bc
    nop
    ldh a, [rP1]
    ld a, [bc]
    nop
    ld hl, sp-$08
    dec bc
    nop
    ld hl, sp+$00
    inc c
    nop
    add b
    ldh a, [$f8]
    add hl, bc
    nop
    ldh a, [rP1]
    ld a, [bc]
    nop
    ld hl, sp-$08
    dec c
    nop
    ld hl, sp+$00
    ld c, $00
    add b
    ldh a, [$f8]
    dec b

jr_011_62bb:
    nop
    ldh a, [rP1]
    dec b
    jr nz, @-$06

    ld hl, sp+$06
    nop
    ld hl, sp+$00
    ld b, $20
    add b
    ldh a, [$f8]
    rlca

jr_011_62cc:
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    ld [$f020], sp
    nop
    rlca
    jr nz, jr_011_625a

    and $62
    rst $30
    ld h, d
    ld [$1963], sp
    ld h, e
    ld a, [hl+]
    ld h, e
    dec sp
    ld h, e
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, @-$06

    ld hl, sp+$01
    db $10
    ld hl, sp+$00
    ld bc, $8030
    pop af
    ld hl, sp+$02

jr_011_62fa:
    db $10
    pop af
    nop
    ld [bc], a
    jr nc, @-$05

    ld hl, sp+$03
    db $10
    ld sp, hl
    nop
    inc bc
    jr nc, jr_011_6288

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    pop af
    ld hl, sp+$08
    db $10
    pop af
    nop
    add hl, bc
    db $10
    ld sp, hl
    ld hl, sp+$0a
    db $10
    ld sp, hl
    nop
    dec bc
    db $10
    add b
    ldh a, [$f8]
    inc c
    db $10
    ldh a, [rP1]
    inc c
    jr nc, @-$06

    ld hl, sp+$0d
    db $10
    ld hl, sp+$00
    dec c
    jr nc, jr_011_62bb

    pop af
    ld hl, sp+$0e

jr_011_633e:
    db $10
    pop af
    nop
    ld c, $30
    ld sp, hl
    ld hl, sp+$0f
    db $10
    ld sp, hl
    nop
    rrca
    jr nc, jr_011_62cc

    ld e, b
    ld h, e
    ld l, c
    ld h, e
    ld a, d
    ld h, e
    adc e
    ld h, e
    sbc h
    ld h, e
    xor l
    ld h, e
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    pop af
    nop

jr_011_636b:
    nop

jr_011_636c:
    jr nc, @-$0d

    ld hl, sp+$01
    jr nc, jr_011_636b

    nop
    ld [bc], a
    jr nc, @-$05

    ld hl, sp+$03
    jr nc, jr_011_62fa

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    pop af
    ld hl, sp+$04
    db $10
    pop af
    nop
    dec b
    db $10
    ld sp, hl
    ld hl, sp+$08
    db $10
    ld sp, hl
    nop
    add hl, bc
    db $10
    add b
    ldh a, [$f8]
    ld a, [bc]
    db $10
    ldh a, [rP1]
    dec bc

jr_011_63a3:
    db $10
    ld hl, sp-$08
    inc c
    db $10
    ld hl, sp+$00
    dec c
    db $10
    add b
    pop af
    nop

jr_011_63af:
    ld a, [bc]

jr_011_63b0:
    jr nc, jr_011_63a3

    ld hl, sp+$0b
    jr nc, jr_011_63af

    nop
    inc c
    jr nc, @-$05

    ld hl, sp+$0d
    jr nc, jr_011_633e

    jp z, $db63

    ld h, e
    db $ec
    ld h, e
    db $fd
    ld h, e
    ld c, $64
    rra
    ld h, h
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    pop af
    nop

jr_011_63dd:
    nop

jr_011_63de:
    jr nz, @-$0d

    ld hl, sp+$01
    jr nz, jr_011_63dd

    nop
    ld [bc], a
    jr nz, @-$05

    ld hl, sp+$03
    jr nz, jr_011_636c

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    pop af
    ld hl, sp+$08
    nop
    pop af
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c

jr_011_6415:
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    pop af
    nop

jr_011_6421:
    inc c

jr_011_6422:
    jr nz, jr_011_6415

    ld hl, sp+$0d
    jr nz, jr_011_6421

    nop
    ld c, $20
    ld sp, hl
    ld hl, sp+$0f
    jr nz, jr_011_63b0

    inc a
    ld h, h
    ld c, l
    ld h, h
    ld e, [hl]
    ld h, h
    ld l, a
    ld h, h
    add b
    ld h, h
    sub c
    ld h, h
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    pop af
    nop

jr_011_644f:
    nop

jr_011_6450:
    jr nc, @-$0d

    ld hl, sp+$01
    jr nc, jr_011_644f

    nop
    ld [bc], a
    jr nc, @-$05

    ld hl, sp+$03
    jr nc, jr_011_63de

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    pop af
    ld hl, sp+$04
    db $10
    pop af
    nop
    ld [$f910], sp
    ld hl, sp+$09
    db $10
    ld sp, hl
    nop
    ld a, [bc]
    db $10
    add b
    ldh a, [$f8]
    dec bc
    db $10
    ldh a, [rP1]
    inc c

jr_011_6487:
    db $10
    ld hl, sp-$08
    dec c
    db $10
    ld hl, sp+$00
    ld c, $10
    add b
    pop af
    nop

jr_011_6493:
    dec bc

jr_011_6494:
    jr nc, jr_011_6487

    ld hl, sp+$0c
    jr nc, jr_011_6493

    nop
    dec c
    jr nc, @-$05

    ld hl, sp+$0e
    jr nc, jr_011_6422

    xor [hl]
    ld h, h
    cp a
    ld h, h
    ret nc

    ld h, h
    pop hl
    ld h, h
    ld a, [c]
    ld h, h
    inc bc
    ld h, l
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]

jr_011_64b4:
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [rP1]
    nop

jr_011_64c2:
    jr nz, jr_011_64b4

jr_011_64c4:
    ld hl, sp+$01
    jr nz, @-$06

    nop
    ld [bc], a
    jr nz, jr_011_64c4

    ld hl, sp+$03
    jr nz, jr_011_6450

    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]

jr_011_64f8:
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [rP1]
    inc c

jr_011_6506:
    jr nz, jr_011_64f8

    ld hl, sp+$0d
    jr nz, @-$06

    nop
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, jr_011_6494

    jr nz, @+$67

    ld sp, $4265
    ld h, l
    ld d, e
    ld h, l
    ld h, h
    ld h, l
    ld [hl], l
    ld h, l
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    pop af
    nop

jr_011_6533:
    nop

jr_011_6534:
    jr nz, @-$0d

    ld hl, sp+$01
    jr nz, jr_011_6533

    nop
    ld [bc], a
    jr nz, @-$05

    ld hl, sp+$03
    jr nz, jr_011_64c2

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    pop af
    ld hl, sp+$08
    nop
    pop af
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c

jr_011_656b:
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    pop af
    nop

jr_011_6577:
    inc c

jr_011_6578:
    jr nz, jr_011_656b

    ld hl, sp+$0d
    jr nz, jr_011_6577

    nop
    ld c, $20
    ld sp, hl
    ld hl, sp+$0f
    jr nz, jr_011_6506

    sub d
    ld h, l
    and e
    ld h, l
    or h
    ld h, l
    push bc
    ld h, l
    sub $65
    rst $20
    ld h, l
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    pop af
    ld hl, sp+$00
    db $10
    pop af
    nop

jr_011_65a9:
    ld bc, $f910
    nop
    ld [bc], a
    jr nc, jr_011_65a9

    ld hl, sp+$03
    jr nc, jr_011_6534

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    pop af
    ld hl, sp+$04
    db $10
    pop af
    nop
    dec b
    db $10
    ld sp, hl
    ld hl, sp+$08
    db $10
    ld sp, hl
    nop
    add hl, bc
    db $10
    add b
    ldh a, [$f8]
    ld a, [bc]
    db $10
    ldh a, [rP1]
    dec bc

jr_011_65dd:
    db $10
    ld hl, sp-$08
    inc c
    db $10
    ld hl, sp+$00
    dec c
    db $10
    add b
    pop af
    nop

jr_011_65e9:
    ld a, [bc]

jr_011_65ea:
    jr nc, jr_011_65dd

    ld hl, sp+$0b
    jr nc, jr_011_65e9

    nop
    inc c
    jr nc, @-$05

    ld hl, sp+$0d
    jr nc, jr_011_6578

    inc b
    ld h, [hl]
    dec d
    ld h, [hl]
    ld h, $66
    scf
    ld h, [hl]
    ld c, b
    ld h, [hl]
    ld e, c
    ld h, [hl]
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    pop af
    ld hl, sp+$00
    db $10
    pop af
    nop
    ld bc, $f910
    ld hl, sp+$04
    db $10
    ld sp, hl
    nop
    dec b
    db $10
    add b
    ldh a, [$f8]
    ld b, $10
    ldh a, [rP1]
    rlca
    db $10
    ld hl, sp-$08
    ld [$f810], sp
    nop
    add hl, bc
    db $10
    add b
    ld sp, hl
    ld hl, sp+$0a
    db $10
    ld sp, hl
    nop
    dec bc
    db $10
    pop af
    rst $30
    ld b, $10
    pop af
    rst $38
    rlca
    db $10
    add b
    pop af
    ld hl, sp+$0c

jr_011_664b:
    db $10
    pop af
    nop

jr_011_664e:
    dec c
    db $10
    ld sp, hl
    ld hl, sp+$0e
    db $10
    ld sp, hl
    nop
    rrca
    db $10
    add b
    ldh a, [rP1]
    inc c

jr_011_665c:
    jr nc, jr_011_664e

    ld hl, sp+$0d
    jr nc, @-$06

    nop
    ld c, $30
    ld hl, sp-$08
    rrca
    jr nc, jr_011_65ea

    db $76
    ld h, [hl]
    add a
    ld h, [hl]
    sbc b
    ld h, [hl]
    xor c
    ld h, [hl]
    cp d
    ld h, [hl]
    bit 4, [hl]
    ldh a, [$f8]
    nop
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp-$01
    ld bc, $8020
    rst $30
    rst $38
    ld bc, $ef20
    ld hl, sp+$02
    nop
    rst $28
    nop
    inc bc
    nop
    rst $30
    ld hl, sp+$01
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    rst $30
    nop
    rlca
    nop
    rst $28
    ld hl, sp+$08
    nop
    rst $28
    nop
    add hl, bc
    nop
    rst $30
    ld hl, sp+$0a
    nop
    add b
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rIE]
    dec bc
    jr nz, @-$06

    ld hl, sp+$0c
    nop
    ld hl, sp-$01
    inc c
    jr nz, jr_011_664b

    rst $28
    ld hl, sp+$0d

jr_011_66ce:
    nop
    rst $28
    nop
    ld c, $00
    rst $30
    ld hl, sp+$0f
    nop
    rst $30
    rst $38
    rrca
    jr nz, jr_011_665c

    add sp, $66
    ld sp, hl
    ld h, [hl]
    ld a, [bc]
    ld h, a
    dec de
    ld h, a
    inc l
    ld h, a
    dec a
    ld h, a
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]

jr_011_66ee:
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [rP1]
    nop

jr_011_66fc:
    jr nz, jr_011_66ee

jr_011_66fe:
    ld hl, sp+$01
    jr nz, @-$06

    nop
    ld [bc], a
    jr nz, jr_011_66fe

    ld hl, sp+$03
    jr nz, @-$7e

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    inc c

jr_011_672f:
    nop
    ldh a, [rP1]

jr_011_6732:
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [rP1]
    inc c

jr_011_6740:
    jr nz, jr_011_6732

    ld hl, sp+$0d
    jr nz, @-$06

    nop
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, jr_011_66ce

    ld e, d
    ld h, a
    ld l, e
    ld h, a
    ld a, h
    ld h, a
    adc l
    ld h, a
    sbc [hl]

jr_011_6757:
    ld h, a
    xor a
    ld h, a
    ldh a, [rIE]
    nop
    jr nz, jr_011_6757

    ld hl, sp+$01
    nop
    ld hl, sp-$01
    ld bc, $f020
    ld hl, sp+$00
    nop
    add b

jr_011_676b:
    rst $28
    ld hl, sp+$02
    nop
    rst $28
    rst $38
    ld [bc], a
    jr nz, jr_011_676b

    ld hl, sp+$03
    nop
    rst $30
    rst $38
    inc bc
    jr nz, jr_011_66fc

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    rst $28
    ld hl, sp+$04
    nop
    rst $28
    nop
    dec b
    nop
    rst $30
    ld hl, sp+$08
    nop
    rst $30
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rIE]
    ld a, [bc]
    jr nz, @-$06

    ld hl, sp+$0b
    nop
    ld hl, sp-$01
    dec bc
    jr nz, jr_011_672f

jr_011_67af:
    rst $28
    ld hl, sp+$0c
    nop
    rst $28
    rst $38
    inc c
    jr nz, jr_011_67af

    ld hl, sp+$0d
    nop
    rst $30
    rst $38
    dec c
    jr nz, jr_011_6740

    call z, $dd67
    ld h, a
    xor $67
    rst $38
    ld h, a
    db $10
    ld l, b

jr_011_67ca:
    ld hl, $f068

jr_011_67cd:
    ld hl, sp+$00
    nop
    ldh a, [rIE]
    nop
    jr nz, jr_011_67cd

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ldh a, [$f8]
    nop
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$03
    nop
    ld hl, sp+$00
    inc b
    nop
    add b
    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$08
    rlca
    nop
    ld hl, sp+$00
    ld [$8000], sp
    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$08
    add hl, bc
    nop
    ld hl, sp+$00
    ld a, [bc]
    nop
    add b
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rIE]
    dec bc
    jr nz, @-$06

    ld hl, sp+$0c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rIE]
    dec bc
    jr nz, @-$06

    ld hl, sp+$0e
    nop
    ld hl, sp+$00
    rrca
    nop
    add b
    inc a
    ld e, [hl]
    ld e, [hl]
    inc b
    ld a, [hl]
    inc bc
    nop
    sbc c
    jr nc, @+$32

    ld c, b
    add sp, $18
    add b
    ld b, b
    add b
    add b
    nop
    jr nc, @+$72

    add b
    ret nc

    jr nc, jr_011_67ca

    add b
    sbc h
    and h
    db $fc
    nop
    add sp, $18
    ld b, b
    ret nz

    ld [$9800], sp
    dec b
    ld b, $0f
    ld [$0807], sp
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    inc b
    rlca
    ld [$0203], sp
    ld [$9800], sp
    and b
    ld h, b
    ldh a, [$08]
    ld hl, sp+$04
    adc h
    db $10
    add h
    ld a, [bc]
    add [hl]
    ld [$0886], sp
    adc h
    ld [bc], a
    adc [hl]
    ld [hl-], a
    db $fc
    inc b
    ldh a, [rNR10]
    nop
    add b
    inc b
    nop
    adc [hl]
    rst $00
    rst $38
    rra
    db $fc
    rst $38
    pop af
    rst $38
    pop bc
    rst $38
    ld b, e
    cp a
    ccf
    rst $38
    ld a, [hl]
    ld a, [bc]
    rst $38
    ld [$c000], sp
    dec b
    dec b
    ld h, a
    ld h, a
    ld a, a
    ld e, [hl]
    ld a, a
    ld b, c
    ccf
    ld [hl-], a
    ld a, $23
    ccf
    inc a
    cpl
    ccf
    ld [de], a
    rra
    rla
    rra
    dec de
    rra
    ld de, $201f
    ccf
    inc hl
    ccf
    rra
    rra
    rrca
    ld a, [bc]
    or b
    or b
    ldh a, [$d0]
    ldh a, [rNR10]
    ldh a, [$f0]
    cp $0e
    ld a, a
    add c
    sbc a
    ld h, c
    rst $38
    ld_long a, $fffe
    db $f4
    rra
    push af
    sbc a
    db $ed
    ccf
    ret nz

    rst $38
    db $fd

jr_011_68da:
    rst $38
    di
    sbc $f7
    cp h
    inc b
    nop
    sbc d
    ld [bc], a
    inc bc
    inc bc
    inc b
    ld c, $09
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    rlca
    add hl, bc
    rlca
    nop
    ld bc, $0002
    nop
    ld [bc], a
    inc b
    ld b, $01
    rlca
    inc b
    ld bc, $0602

jr_011_68fd:
    nop
    adc b
    ld d, b
    or b
    ldh a, [$08]
    ld a, b
    adc b
    nop
    jr nc, @+$06

    nop
    sub b
    ret nc

    jr nc, jr_011_68fd

    ld [$6478], sp
    ld c, $02
    ld e, $12
    jr c, jr_011_68da

    add sp, $18
    ldh [$e0], a
    dec b
    nop
    sbc c
    ld h, b
    ld h, b
    add b
    ldh [rP1], a
    ld h, b
    sub b
    pop af
    add c
    ld [hl], e
    ld [bc], a
    ld sp, $794a
    ld b, d
    rra
    inc h
    ccf
    jr nz, jr_011_693f

    db $10
    inc e
    ld [de], a
    inc b
    ld [$000a], sp
    sub [hl]
    ld bc, $0203
    ld bc, $8007

jr_011_693f:
    add [hl]
    ld bc, $008e
    call z, $dc42
    nop
    call c, $f404
    inc c
    ld a, b
    adc b
    ld h, b
    db $10
    ld [$9600], sp
    ld [bc], a
    inc bc
    inc bc
    inc b
    rlca
    nop
    rlca
    nop
    inc bc
    inc b
    rlca
    inc b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0302
    ld [bc], a
    ld a, [de]
    nop
    adc d
    add b
    add b
    cp $7e
    rst $30
    dec e
    rst $20
    cp l
    rst $20
    rst $38
    ld b, $00
    xor e
    ldh a, [$f0]
    cp $0e
    ld a, a
    add c
    sbc a
    ld h, c
    cp $fb
    ld a, $ff
    inc b
    rst $38
    dec [hl]
    rst $38
    db $ed
    rst $38
    ret nz

    rst $38
    db $fd
    rst $38
    di
    sbc $f7
    cp h
    rst $00
    rst $38
    ld e, $fd
    db $fd

jr_011_6997:
    di
    db $fd
    jp $c3fd


    ei
    rst $00
    ld b, a
    cp $bf
    ld a, a
    ld a, a
    dec b
    rst $38
    and [hl]
    cp $ff
    ld a, a
    rst $38
    ld a, a
    rst $38
    inc a
    rst $38
    ldh [$fc], a
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    rlca
    inc b
    ld a, a
    nop
    rra
    jr nz, jr_011_69ce

    nop
    rlca
    nop
    rlca
    ld [$000f], sp
    inc c
    ld [de], a
    jr jr_011_69ca

jr_011_69ca:
    jr nc, jr_011_69dc

    ld b, $00

jr_011_69ce:
    add c
    ld bc, $0505
    add e
    inc bc
    inc bc
    rrca
    inc bc
    cpl
    add h
    rla
    rla
    dec bc

jr_011_69dc:
    dec bc
    inc b
    rla
    adc b
    ld b, $16
    inc b
    inc d
    jr z, @+$2a

    jr nz, jr_011_6a08

    ld a, [bc]
    nop
    add d
    add b
    add b
    inc b
    ldh [$84], a
    ret nz

    ret nz

    add b
    add b
    ld b, $c0
    add h
    ld b, b
    ld b, b
    jr nz, jr_011_6a1b

    ld b, $00
    adc e
    jr jr_011_6a00

jr_011_6a00:
    nop
    jr jr_011_6a03

jr_011_6a03:
    jr jr_011_6a05

jr_011_6a05:
    jr jr_011_6a1f

    nop

jr_011_6a08:
    nop
    dec b
    jr jr_011_6997

    ld [$1018], sp
    jr jr_011_6a19

    jr jr_011_6a1b

    db $10
    db $10
    ld [$1918], sp
    nop

jr_011_6a19:
    adc d
    rra

jr_011_6a1b:
    rra
    ccf
    jr nz, jr_011_6a42

jr_011_6a1f:
    inc a
    ld a, h
    ld b, e
    rst $38
    rst $38
    jr jr_011_6a26

jr_011_6a26:
    adc b
    cp $fe
    rst $38
    ld bc, $01ff
    cp $fe
    ld a, [bc]
    nop
    add h
    db $10
    db $10
    db $fd
    db $fd
    inc b
    rst $38
    xor b
    db $76
    rst $38
    ld a, [$fe8f]
    rlca
    rst $38
    ld b, a
    rst $38

jr_011_6a42:
    inc bc
    rst $38
    sbc e
    rst $38
    rst $38
    jr jr_011_6a61

    inc l
    inc a
    inc h
    inc a
    ld [hl], d
    ld a, [hl]
    ld a, [hl]
    ld c, [hl]
    ld e, [hl]
    ld h, d
    ld a, a
    ld b, c
    ld a, a
    ld c, l
    ld a, a
    ld c, a
    ccf
    dec hl
    ccf
    dec l
    rra
    rla
    inc c
    inc c

jr_011_6a61:
    dec de
    nop
    adc c
    jr nc, @-$46

    ret nz

    db $f4
    inc c
    ret nz

    jr nz, jr_011_6a6c

jr_011_6a6c:
    add b
    ld b, $00
    adc d
    ld bc, $0702
    ld [$001f], sp
    inc c
    ld [de], a
    nop
    inc c
    ld [de], a
    nop
    sbc [hl]
    inc d
    ld a, [de]
    ld a, $40
    db $fc
    ld [bc], a
    db $e4
    inc e
    ldh [rNR10], a
    ldh [rNR10], a
    ld [hl], b
    add b
    ldh a, [$80]
    ld [hl], b
    nop
    ld a, b
    ld [$0870], sp
    jr c, jr_011_6ad5

    ld a, b
    ld b, b
    ld a, b
    ld c, b
    jr nc, jr_011_6acb

    rlca
    nop
    add a
    ld bc, $0201
    inc bc
    nop
    ld bc, $0802
    nop
    adc d
    ld bc, $0300
    nop
    inc bc
    inc b
    rlca
    ld [$0606], sp
    inc b
    nop
    sbc h
    add b
    add b
    add sp, $18
    ld hl, sp+$00
    ld e, b
    db $e4
    inc e
    nop
    inc e
    nop
    jr jr_011_6ae7

    jr nc, jr_011_6b0d

    ld [hl], b
    sub b
    ldh [rNR41], a
    ldh [rP1], a

jr_011_6acb:
    cp $06
    ld e, $20
    inc c
    ld [bc], a
    ld a, [bc]
    nop
    sbc b
    inc bc

jr_011_6ad5:
    nop
    rra
    db $10
    ccf
    jr nz, jr_011_6b15

    ld b, $70
    ld c, b
    jr c, jr_011_6b28

    jr nc, jr_011_6b2a

    ld [hl], b
    ld c, b
    ld a, [hl-]
    ld b, $1f

jr_011_6ae7:
    nop
    rlca
    ld [$0303], sp
    ld [$9800], sp
    ret nz

    jr nz, @-$06

    nop
    db $fc
    nop
    ld e, h
    ld h, d
    ld e, $10
    rlca
    add hl, bc
    rrca
    add hl, bc
    ld b, $08
    ld e, h
    ld h, d
    db $fc
    inc b
    ldh [rNR10], a
    ldh [$e0], a
    inc c
    nop
    sub h
    inc bc
    inc bc
    ld [bc], a

jr_011_6b0d:
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a

jr_011_6b15:
    inc bc
    ld [bc], a
    inc bc
    rlca
    rlca
    rrca
    ld [$101f], sp
    ld b, $00
    xor [hl]
    rra

jr_011_6b22:
    rra
    dec a
    ld [hl+], a
    ld [hl], b
    ld c, a
    ld l, a

jr_011_6b28:
    ld d, b
    rst $38

jr_011_6b2a:
    ldh [$7f], a
    rst $38
    ld a, a
    db $e3
    cp $e7
    call c, $88f7
    rst $38
    db $fc
    rst $38
    cp a
    rst $38
    cp a
    db $ed
    cpl
    inc a
    inc hl
    ccf
    ld b, c
    ld a, a
    ld e, a
    ld h, e
    cp a
    pop bc
    ld a, a
    ld b, d
    ld a, a
    ld b, d
    ld a, e
    ld b, l
    ld [hl], $2a
    inc e
    inc e
    ld [$0400], sp
    ld bc, $df90
    ld a, a
    ret nz

    ld a, a
    ld hl, sp+$3f
    rst $38
    scf
    rst $38
    jr nc, @+$01

    ret z

    rst $38
    add a
    rst $38
    rst $08
    inc b
    rst $38
    adc h
    ld a, a
    ld a, a
    ccf
    ccf
    inc a
    inc a
    cp b
    cp b
    ld hl, sp-$08
    db $fc
    db $fc
    inc b
    nop
    sbc h
    ld [bc], a
    inc b
    rlca
    add hl, bc
    inc c
    ld [de], a
    jr jr_011_6b22

    ldh a, [$08]
    ldh [rNR10], a
    ldh a, [rNR10]
    ld [hl], b
    sub b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld b, b
    and b
    ld b, b
    ld b, b
    ld b, $00
    sub d
    jr jr_011_6bae

    rra
    nop
    rrca
    db $10
    dec b
    ld b, $01
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0000
    ld bc, $0000
    inc bc
    rlca
    add e
    nop
    inc bc
    inc b
    add hl, bc

jr_011_6bae:
    nop
    sub a
    ldh [$e0], a
    db $10
    ldh [rNR10], a
    add b
    nop
    ret nz

    ld b, b
    add b
    ld b, b
    ret nz

    nop
    ret nz

    nop
    ret nz

    jr nz, @-$1e

    inc e
    db $fc
    nop
    ld l, b
    db $f4
    add hl, bc
    nop
    sbc c
    inc b
    rrca
    ld bc, $101f
    rrca
    db $10
    rla
    jr jr_011_6bdb

    ld [$090f], sp
    ld c, $09
    rlca
    nop

jr_011_6bdb:
    inc bc
    inc b
    inc bc
    inc b
    rlca
    inc b
    inc bc
    inc bc
    ld b, $00
    sbc b
    ld [bc], a
    ld b, $06
    ld [$8886], sp
    add $48
    rst $28
    add hl, hl
    rst $28
    add hl, bc
    ld a, [hl]
    adc c
    ld e, [hl]
    ld h, c
    ld l, $31
    ld d, $99
    inc c
    adc d
    add b
    add b
    ld b, $00
    adc h
    inc c
    inc c
    inc d
    ld a, [de]
    ld c, $01
    dec bc
    inc c
    dec b
    ld b, $02
    inc bc
    ld d, $00
    sbc d
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    inc bc
    rlca
    inc b
    rrca
    rrca
    inc bc
    inc bc
    rlca
    rlca
    dec bc
    rrca
    ld de, $201f
    ccf
    inc hl
    ccf
    rra
    rra
    rrca
    ld a, [bc]
    ld b, $00
    sbc d
    ldh a, [$f0]
    cp $0e
    ld a, a
    add c
    sbc a
    ld h, c
    cp $fb
    cp $ff
    db $f4
    rra
    push af
    sbc a
    call $c03f
    rst $38
    db $fd
    rst $38
    di
    sbc $f7
    cp h
    ld a, [bc]
    nop
    and d
    ldh [$e0], a
    ld [hl], b
    ret nc

    ld [hl], b
    ret nc

    ld h, b
    ldh [$60], a
    ldh [rSVBK], a
    ldh a, [rSVBK]
    ldh a, [$60]
    ldh [$f0], a
    ldh a, [$f8]
    ld [$7cfc], sp
    rla
    rra
    db $10
    rra
    add hl, bc
    rrca
    rlca
    rlca
    rrca
    ld [$080f], sp
    inc b
    rrca
    inc b
    rlca
    add d
    inc bc
    inc bc
    ld b, $00
    sub h
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    rst $00
    db $fc
    rra
    ld sp, hl
    rst $38
    ei
    rst $38
    ld sp, $71ff
    rst $38
    sub d
    rst $38
    rrca
    rst $38
    sbc [hl]
    ld [$a0ff], sp
    ld a, a
    ld a, a
    ld [hl], a
    ld [hl], a
    di
    di
    rst $38
    rst $38
    add h
    db $fc
    ld [bc], a
    cp $32
    cp $fa
    adc $fe
    ld b, $fe
    adc d
    db $fc
    inc b
    ld a, h
    add h
    cp h
    ld b, h
    ret c

    xor b
    ldh a, [$f0]
    ldh [$e0], a
    inc b
    ret nz

    inc b
    ldh [$98], a
    rrca
    rrca
    rra
    inc e
    cpl
    ld a, [hl-]
    ld b, a
    ld a, h
    add e
    rst $38
    adc a
    rst $38
    ld a, a
    ld a, a
    dec sp
    ccf
    ld e, b
    ld a, a
    ld b, b
    ld a, a
    daa
    ccf
    add hl, de
    add hl, de
    ld [$b000], sp
    pop af
    rst $38
    push de
    ld a, a
    push de
    ld a, a
    or e
    cp $06
    db $fd
    or $fd
    rst $08
    cp $0f
    ld a, [$f31f]
    ld a, a
    ldh a, [rIE]
    sbc l
    rst $38
    ld c, $ff
    add h
    ld a, a
    ld h, [hl]
    rra
    rra
    nop
    nop
    add b
    add b
    di
    di
    rst $38
    ccf
    ccf
    jp $0fff


    rst $38
    rlca
    rst $38
    inc de
    rst $38
    rst $08
    rlca
    rst $38
    add a
    ld a, a
    db $fc
    inc a
    ld hl, sp+$78
    ldh [$e0], a
    ld b, $00
    add [hl]
    ldh [$e0], a
    ldh a, [$f0]
    ret nc

    ret nc

    ld [$8200], sp
    add b
    add b
    inc b
    ret nz

    inc b
    ld b, b
    inc b
    nop
    or b
    rst $38
    rst $38
    ei
    ld [hl], l
    rst $30
    ld c, c
    rst $38
    pop bc
    rst $28
    sub d
    rst $28
    jp nc, $e5ff

    ccf
    rst $20
    rra
    di
    ld a, a
    ldh a, [rIE]
    sbc l
    rst $38
    ld c, $ff
    add h
    ld a, a
    ld h, [hl]
    rra
    rra
    nop
    nop
    add b
    add b
    ldh a, [rSVBK]
    db $fc
    cp h
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    ld [$a4ff], sp
    db $fc
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    nop
    nop
    pop af
    rst $38
    push de
    ld a, a
    rst $10
    ld a, [hl]
    or e
    cp $07
    cp $f7
    cp $cf
    rst $38
    rrca
    ei
    rra
    ldh a, [$7f]
    ld hl, sp-$01
    rst $08
    rst $38
    add e
    ld a, a
    ld h, c
    rra
    rra
    inc b
    nop
    sub d
    jp $ffc3


    inc a
    rst $20
    ld a, b
    rst $08
    ld a, b
    rst $08
    ld a, b
    rst $08
    ld a, b
    rst $20
    inc a
    rst $38
    cp $ff
    ld a, a
    inc bc
    rst $38
    add a
    sbc a
    cp $0e
    ld hl, sp-$68
    ldh [$e0], a
    inc b
    nop
    sbc b
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [$60], a
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ld hl, sp+$18
    db $fc
    db $fc
    cp $7e
    ld a, [$fcfa]
    db $fc
    inc c
    inc c
    inc b
    inc b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    inc d
    nop
    add $ff
    rst $38
    ld hl, $0056
    nop
    ld h, c
    ld h, c
    di
    di
    sbc [hl]
    rst $38
    ld c, $fd
    ld b, $f9
    rst $38
    rst $38
    add h
    ld c, e
    nop
    nop
    adc b
    adc b
    db $fc
    db $fc
    ld [hl], a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp e
    ld b, h
    nop
    rst $38
    xor $11
    nop
    rst $38
    cp e
    ld b, h
    nop
    rst $38
    rst $28
    stop
    rra
    dec bc
    inc [hl]
    nop
    rra
    ld c, $31
    nop
    rra
    dec bc
    inc [hl]
    nop
    rra
    rrca
    jr nc, @+$01

    rst $38
    ld sp, hl
    add l
    add c
    pop hl
    inc b
    rst $38
    sub d
    rst $00
    rst $00
    ld h, [hl]
    ld d, [hl]
    db $76
    ld c, [hl]
    rst $38
    rst $38
    ld sp, hl
    add l
    add c
    pop hl
    rst $38
    rst $38
    jp $ffdb


    rst $38
    inc b
    ld bc, $ff8c
    rst $38
    ld sp, hl
    add l
    add c
    pop hl
    rst $38
    rst $38
    jp $ffdb


    rst $38
    inc b
    add b
    rst $38
    nop
    rst $38
    cp e
    ld b, h
    nop
    rst $38
    xor $11
    rlca
    rst $38
    cp b
    ld e, b
    ld h, a
    rst $20
    sbc a
    sbc a
    nop
    rst $38
    cp e
    ld b, h
    nop
    rst $38
    xor $11
    ldh [rIE], a
    dec de
    inc e
    and $e7

jr_011_6e53:
    ld sp, hl
    ld sp, hl
    sbc a
    sbc a
    ld h, a
    rst $20
    jr jr_011_6e53

    rst $20
    rra
    nop
    rst $38
    cp e
    ld b, h
    nop
    rst $38
    rst $28
    db $10
    ld sp, hl
    ld sp, hl
    and $e7
    jr jr_011_6e8a

    and $f9
    nop
    rst $38
    cp e
    ld b, h
    nop
    rst $38
    rst $28
    db $10
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    jp $f1ff


    xor $6e
    call nc, $e854
    add hl, hl
    rst $38
    ld [$18ff], sp
    rst $30

jr_011_6e8a:
    or h
    ld l, a
    ld l, h
    inc bc
    inc bc
    nop
    inc a
    nop
    rst $38
    nop
    rst $00
    rst $38
    nop
    rst $38
    ld b, $ff
    ld e, $ef
    ld l, h
    rst $10
    call nc, Call_000_282f
    rra
    jr jr_011_6ec3

    sub b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_011_6ec3:
    rst $38
    nop
    rst $38
    and a
    xor d
    rst $38
    rst $38
    sub a
    cp b
    rst $38
    rst $38
    and a
    xor d
    rst $38
    rst $38
    sub a
    cp b
    rst $38
    rst $38
    pop de
    add hl, sp
    rst $38
    rst $38
    push hl
    ld d, l
    rst $38
    rst $38
    pop de
    add hl, sp
    rst $38
    rst $38
    push hl
    ld d, l
    rst $38
    rst $38
    and a
    xor d
    rst $38
    rst $38
    sub e
    sub h
    rst $38
    rst $38
    and d
    and e
    rst $38
    rst $38
    ret nc

    ret nc

    rst $38
    rst $38
    pop de
    add hl, sp
    rst $38
    rst $38
    ld b, l
    push hl
    rst $38
    rst $38
    ld de, $ff91
    rst $38
    ld c, e
    ld c, e
    rst $38
    rst $38
    ld h, [hl]
    ld d, [hl]
    ld b, [hl]
    and $76
    adc $66
    sub $46
    and $76
    adc $66
    sub $46
    and $01
    xor e
    ld bc, $01bb
    rst $38
    ld bc, $01bf
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $80ff
    push de
    add b
    db $dd
    add b
    rst $38
    add b
    db $fd
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    sbc b
    add b
    rst $38
    ld bc, $baff
    ld b, [hl]
    ld [bc], a
    cp $ed
    dec d
    dec b
    db $fd
    cp e
    ld c, e
    dec bc
    ei
    db $eb
    dec de
    ccf
    ccf
    ld a, a
    ld a, a
    cp [hl]
    cp [hl]
    inc b
    ld a, $81
    inc e
    dec b
    sbc h
    ret nc

    db $fc
    db $fc
    cp $fe
    rst $38
    ld a, l
    rst $38
    ld a, h
    rst $38
    ld a, h
    cp $39
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    add b
    rst $38
    ld a, e
    ld b, h
    ld b, b
    ld a, a
    xor [hl]
    or c
    and b
    cp a
    db $db
    call nc, $dfd0
    rst $18
    ret nc

    ldh a, [$33]
    ldh a, [rNR13]
    ldh [$66], a
    ret nc

    sub $e0
    ld h, h
    ldh a, [$34]
    ldh a, [rNR10]
    ld hl, sp+$08
    nop
    add c
    nop
    jr nc, jr_011_6f89

jr_011_6f89:
    inc a
    nop
    ld a, [hl]
    nop
    ld c, [hl]
    nop
    adc h
    nop
    add b
    nop
    pop bc
    rra
    ret nc

    rrca
    ret z

    rrca
    ld l, [hl]
    rlca
    ld h, a
    rrca
    ld l, [hl]
    rrca
    ld l, b
    rra
    ret nc

    rra
    ret nc

    stop
    db $10
    rst $38
    xor [hl]
    and a
    xor e
    cp $ff
    sub l
    cp a
    rst $38
    rst $38
    and a
    xor a
    rst $38
    rst $38
    sub a
    cp a
    rst $38
    rst $38
    pop de
    add hl, sp
    rst $38
    rst $38
    ld h, l
    push de
    rst $38
    rst $38
    pop de
    ld sp, hl
    rst $38
    rst $38
    push hl
    push de
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    inc bc
    nop
    add l
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    ld a, [bc]
    nop
    jp $ce76


    ld h, [hl]
    sub $46
    and $76
    adc $7e
    cp $d5
    xor e
    add c
    push hl
    add c
    pop bc
    dec c
    rst $30
    dec c
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    dec c
    rst $38
    ld bc, $01ff
    rst $28
    ld bc, $b0ab
    sbc $b0
    cp $c8
    rst $38
    ret z

    rst $38
    or b
    rst $38
    add b
    rst $38
    add b
    rst $30
    add b
    push de
    dec bc
    ei
    cp e
    ld c, e
    dec bc
    ei
    push hl
    dec e
    dec b
    db $fd
    cp d
    ld b, [hl]
    ld [bc], a
    cp $ed
    inc de
    sbc b
    sbc c
    adc c
    inc bc
    ret


    rst $38
    pop bc
    jp $e3c3


    db $e3
    rst $20
    ld h, a
    ld h, a
    daa
    ccf
    ld a, a
    sbc c
    db $fd
    sub e
    rst $38
    sub e
    cp a
    jp $c7fb


    rst $18
    rst $20
    cp $e6
    db $e4
    db $fc
    ret nc

    rst $18
    db $db
    call nc, $dfd0
    xor [hl]
    or c
    and b
    cp a
    ld e, e
    ld h, h
    ld b, b
    ld a, a
    xor a
    ret nc

    ld hl, sp+$09
    db $f4
    inc d
    ld a, [$f71a]
    rla
    rst $38
    inc a
    rst $38
    jr c, @+$01

    jr nz, @+$01

    nop
    nop
    db $e3
    nop
    rst $38
    nop
    inc a
    nop
    nop
    sbc d
    sbc d
    db $fd
    db $ed
    rst $38
    rst $00
    rst $38
    add d
    rrca
    adc b
    rra
    jr jr_011_70a6

    inc l
    ld d, a
    ld d, h
    rst $38
    cp [hl]
    rst $38
    ld c, $ff
    ld [bc], a
    rst $38
    nop
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rrca

jr_011_70a6:
    nop
    add c
    inc bc
    dec bc
    nop
    or c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    inc bc
    nop
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    inc bc
    nop
    sbc l
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    ld h, [hl]
    sbc c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc c
    sbc c
    ld c, $ff
    sub b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $00
    rst $38
    ld a, h
    ld a, h
    nop
    nop
    dec c
    rst $38
    sub c
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add a
    ld a, b
    nop
    rst $38
    nop
    rst $38
    rst $00
    rst $38
    ld a, h
    ld a, h
    ld b, $00
    add d
    ld a, b
    ld a, b
    rlca
    rst $38
    and c
    ld a, h
    rst $38
    nop
    reti


    rst $38
    and a
    xor [hl]
    add e
    sbc h
    rst $38
    rst $38
    and a
    xor d
    rst $38
    rst $38
    sub a
    cp b
    rst $38
    rst $38
    sbc e
    rst $38
    ld h, l
    push af
    pop bc
    add hl, sp
    rst $38
    rst $38
    pop de
    add hl, sp
    rst $38
    rst $38
    push hl
    ld d, l
    ld [$84ff], sp
    nop
    nop
    rst $38
    rst $38
    rlca
    nop
    and c
    di
    inc c
    pop hl
    ld [de], a
    ret nz

    ld [hl+], a
    add b
    ld hl, $4080
    nop
    ld b, d
    nop
    sub b
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    ld [hl], b
    rlca
    adc b
    ld bc, $0046
    ld bc, $3f00
    ccf
    dec b
    rst $38
    rst $38
    ldh [$7a], a
    add l
    inc d
    db $eb
    nop
    rst $38
    nop
    rst $38
    add b
    add b
    ld hl, sp-$08
    rst $20
    rra
    pop bc
    ccf
    adc b
    ld [hl], a
    nop
    rst $38
    ld hl, $00de
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    inc de
    nop
    inc b
    inc c
    ld b, $3e
    inc bc
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $08
    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
    ld d, l
    rst $28
    xor d
    ld [hl], l
    push bc
    ld a, [hl-]
    ldh a, [rIF]
    rrca
    ldh a, [$f3]
    db $fc
    db $fd
    cp $fe
    rst $38
    or $fb
    xor c
    ld d, [hl]
    ld d, e
    xor h
    rrca
    ldh a, [rIE]
    nop
    jp $bd3c


    ld a, [hl]
    ld a, [hl]
    rst $38
    ld a, [hl]
    cp l
    cp l
    ld b, d
    jp $ff3c


    nop
    inc bc
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld_long a, $ff00
    rlca
    ld hl, sp+$1f
    ldh [$7f], a
    add b
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    rrca
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    rst $38
    nop
    rst $38

jr_011_7248:
    nop
    rst $38
    nop
    rst $38

jr_011_724c:
    nop
    rra
    ldh [rTAC], a
    ld hl, sp+$01
    cp $00
    rst $38
    ld d, h
    xor e
    ld a, [hl+]
    push de
    sub b
    ld l, a
    nop
    rst $38
    ld c, b
    or a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec d
    ld [$f50a], a
    inc d
    db $eb
    ld a, [hl+]
    push de
    ld d, h
    xor e
    jr z, jr_011_7248

    add b
    ld a, a
    jr z, jr_011_724c

    inc bc
    rst $38
    adc l
    rst $00
    rst $38
    or e
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    sbc e
    rst $38
    rst $00
    inc bc
    rst $38
    adc l
    rst $20
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    jp $ff03


    adc l
    add e
    rst $38
    add hl, sp
    rst $38
    pop af
    rst $38
    jp $8fff


    rst $38
    rra
    rst $38
    ld bc, $ff03
    adc l
    add c
    rst $38
    di
    rst $38
    rst $20
    rst $38
    jp $f9ff


    rst $38
    ld a, c
    rst $38
    add e
    inc bc
    rst $38
    adc l
    db $e3
    rst $38
    jp $93ff


    rst $38
    inc sp
    rst $38
    ld bc, $f3ff
    rst $38
    di
    inc bc
    rst $38
    adc l
    inc bc
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld a, c
    rst $38
    add e
    inc bc
    rst $38
    adc l
    jp $9fff


    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add e
    inc bc
    rst $38
    adc l
    ld bc, $39ff
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    inc bc
    rst $38
    adc l
    add e
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add e
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add e
    inc bc
    rst $38
    adc l
    add e
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add c
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rst $00
    inc bc
    rst $38
    adc l
    add hl, sp
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, hl
    rst $38
    ld sp, $31ff
    rst $38
    add hl, sp
    inc bc
    rst $38
    add c
    ccf
    inc bc
    rst $38
    adc c
    inc h
    rst $38
    ld [hl+], a
    rst $38
    ld h, $ff
    ld h, $ff
    ld h, $03
    rst $38
    adc l
    rst $08
    rst $38
    add a
    rst $38
    call z, $49ff
    rst $38
    ld c, b
    rst $38
    ld c, c
    rst $38
    ld c, h
    rlca
    rst $38
    adc c
    ld [hl-], a
    rst $38
    sub c
    rst $38
    inc de
    rst $38
    di
    rst $38
    inc de
    inc bc
    rst $38
    adc l
    cp $ff
    cp $ff
    ld [hl], b
    rst $38
    ld h, $ff
    ld h, $ff
    ld h, $ff
    jr nc, jr_011_7365

    rst $38
    adc l
    ld a, a

jr_011_7365:
    rst $38
    ld a, a
    rst $38
    ld h, c
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld h, c
    inc bc
    rst $38
    adc e
    jp $99ff


    rst $38
    sbc c
    rst $38
    add c
    rst $38
    sbc c
    rst $38
    sbc c
    dec b
    rst $38
    adc e
    add e
    rst $38
    sbc c
    rst $38
    add e
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    add e
    dec b
    rst $38
    adc e
    jp $99ff


    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc c
    rst $38
    jp $ff05


    adc e
    add e
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    add e
    dec b
    rst $38
    adc e
    add c
    rst $38
    sbc a
    rst $38
    add e
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    add c
    dec b
    rst $38
    adc e
    add c
    rst $38
    sbc a
    rst $38
    add e
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    dec b
    rst $38
    adc e
    jp $9fff


    rst $38
    sub c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    pop bc
    dec b
    rst $38
    adc e
    sbc c
    rst $38
    sbc c
    rst $38
    add c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    dec b
    rst $38
    adc e
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    dec b
    rst $38
    adc e
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    jp $ff05


    adc e
    sbc c
    rst $38
    sub e
    rst $38
    adc a
    rst $38
    add a
    rst $38
    sub e
    rst $38
    sbc c
    dec b
    rst $38
    adc e
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    add c
    dec b
    rst $38
    adc e
    cp [hl]
    rst $38
    sbc h
    rst $38
    adc b
    rst $38
    and b
    rst $38
    or h
    rst $38
    cp h
    dec b
    rst $38
    adc e
    cp c
    rst $38
    sbc c
    rst $38
    adc c
    rst $38
    sub c
    rst $38
    sbc c
    rst $38
    sbc l
    dec b
    rst $38
    adc e
    jp $99ff


    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    jp $ff05


    adc e
    add e
    rst $38
    sbc c
    rst $38
    add e
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    dec b
    rst $38
    adc e
    rst $20
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    jp $ff05


    adc e
    add e
    rst $38
    sbc c
    rst $38
    add e
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    dec b
    rst $38
    adc e
    pop bc
    rst $38
    sbc a
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    ld sp, hl
    rst $38
    add e
    dec b
    rst $38
    adc e
    add c
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    dec b
    rst $38
    adc e
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    jp $ff07


    adc c
    rst $00
    rst $38
    sub e
    rst $38
    sbc a
    rst $38
    sub e
    rst $38
    rst $00
    dec b
    rst $38
    adc e
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    ld bc, $ff05
    add e
    rst $20
    rst $38
    rst $20
    dec b
    rst $38
    add e
    rst $20
    rst $38
    rst $20
    dec b
    rst $38
    adc e
    sbc c
    rst $38
    sbc c
    rst $38
    jp $e7ff


    rst $38
    rst $20
    rst $38
    rst $20
    dec b
    rst $38
    adc l
    add c
    rst $38
    ld sp, hl
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    add c
    rst $38
    rst $38
    stop
    sub b
    rst $38
    jp $bdff


    rst $38
    ld h, d
    rst $38
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld h, d
    rst $38
    cp l
    rst $38
    jp $ff03


    adc l
    db $ec
    rst $38
    set 7, a
    db $eb
    rst $38
    db $ec
    rst $38
    rst $28
    rst $38
    db $eb
    rst $38
    db $ec
    inc bc
    rst $38
    adc l
    and $ff
    ld e, e
    rst $38
    ld e, e
    rst $38
    ld h, e
    rst $38
    ld a, e
    rst $38
    ld e, e
    rst $38
    rst $20
    inc bc
    rst $38
    adc l
    rra
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    inc bc
    rst $38
    adc l
    cp l
    rst $38
    ld e, e
    rst $38
    or a
    rst $38
    rst $28
    rst $38
    db $db
    rst $38
    or l
    rst $38
    ld a, e
    nop
    ld a, [$c723]
    cp $06
    ret nz

    ld a, [$d095]
    cp $41
    ret nc

    ld c, a
    xor a
    dec c
    sla c
    adc $00
    sla c
    adc $00
    sla c
    adc $00
    ld b, a
    ld hl, $8c00
    add hl, bc
    ld d, h
    ld e, l
    ldh a, [$fe]
    and a
    ld hl, $7577
    jr nz, jr_011_755c

    ld hl, $7777

jr_011_755c:
    add hl, bc
    ld b, h
    ld c, l
    ld hl, $d230
    ld a, $01
    ld [hl+], a

jr_011_7565:
    ld [hl], d
    inc l
    ld [hl], e
    inc l
    ld a, [bc]
    ld [hl], a
    inc l
    inc e
    inc bc
    ld a, e
    and $07
    jr nz, jr_011_7565

    ld a, $80
    ld [hl], a
    ret


    nop
    nop
    nop
    nop
    nop
    nop

jr_011_757d:
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    ld l, a
    inc e
    db $fd
    ld a, [hl]
    ld h, c
    ld e, $19
    ld b, $0d
    ld b, $0d
    ld b, $15
    ld c, $6d
    ld e, $fd
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $05
    rrca
    ld [$101f], sp
    rra
    rla
    cpl
    ccf
    ccf
    ccf
    ld l, a
    ld e, a
    rst $38
    adc a
    rst $38
    adc a
    or $8f
    cp $87
    ei
    adc a
    rlca
    rlca
    ccf
    jr c, jr_011_757d

    cp $01
    cp $00
    rst $38
    nop
    rst $38
    add b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_011_75cd:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    dec a
    rst $38
    rst $38
    rst $38
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld a, b
    add a
    ld a, h
    add e
    rst $38
    rst $38

jr_011_75e7:
    ldh a, [rIE]
    rst $28
    ldh a, [$df]
    ldh [$bf], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    add b
    add b
    ldh [$60], a
    jr nc, jr_011_75cd

    jr jr_011_75e7

    inc c
    db $f4
    ld b, $fa
    ld b, $fa
    db $e3
    db $fd
    ei
    db $fd
    ld a, a
    db $fd
    ld a, [hl]
    cp $7f
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld sp, hl
    adc a
    rst $38
    adc $ff
    ret nz

    rst $38
    and c
    rst $38
    sbc [hl]
    rst $38
    add b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_011_7649

    jr jr_011_7633

    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    nop

jr_011_7633:
    nop
    nop
    nop
    nop
    ld sp, hl
    rst $38
    rst $38
    rst $08
    rst $38
    ret nz

    rst $38
    ld hl, $1ffe
    ld sp, hl
    rrca
    ld hl, sp+$0f
    ld hl, sp-$31
    db $fc
    rst $00

jr_011_7649:
    ld a, [$f907]
    rrca
    rst $38
    rst $38
    dec c
    rrca
    db $10
    rra
    ld de, $1f1f
    rra
    db $fd
    add e
    db $fd
    inc bc
    ei
    ld b, $ef
    cp $1f
    cp $83
    cp $61
    rst $38
    ld de, $08ff
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    ld b, c
    rst $38
    or c
    rst $38
    ld l, [hl]
    xor $c0
    ret nz

    rst $38
    add a
    ei
    rlca
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld a, [$8406]
    db $fc
    ld hl, sp-$08
    ld h, b
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_011_769b:
    nop
    nop
    inc bc
    inc bc
    ld b, $05
    rrca
    add hl, bc
    rra
    inc de
    rra
    rra
    ccf
    inc hl
    ld a, a
    ld b, c
    rst $38
    add b
    rst $38
    adc h
    rst $38
    adc h
    cp h
    jp $ffc1


    ld a, a
    ld a, h
    rlca
    rlca
    ccf
    jr c, jr_011_769b

    rst $38
    ccf
    ld hl, sp+$7f
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add e
    rst $38
    add e
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    db $e3
    db $fc
    inc e
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    db $fc
    inc bc
    cp $e1
    rst $38
    jr c, @+$01

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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $cf
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    ld [c], a
    cp $fa
    cp $ff
    add a
    rst $38
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ei
    rlca
    add a
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    nop
    rrca
    rrca
    rrca
    nop
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_011_777d:
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1e
    ld h, e
    ld a, a
    db $fd
    add e
    ld h, l
    ld a, e
    dec e
    dec de
    dec c
    dec bc
    dec c
    dec bc
    dec d
    dec de
    ld a, l
    ld h, e
    db $fd
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $05
    rrca
    ld [$101f], sp
    rra
    rla
    cpl
    ccf
    ccf
    ccf
    ld l, a
    ld e, a
    rst $28
    sbc a
    rst $28
    sbc a
    and $9f
    and [hl]
    rst $18
    cp e
    rst $08
    rlca
    rlca
    ccf
    jr c, jr_011_777d

    cp $01
    cp $00
    rst $38
    nop
    rst $38
    add b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_011_77cd:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    dec a
    rst $38
    rst $38
    rst $38
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld a, b
    add a
    ld a, h
    add e
    rst $38
    rst $38

jr_011_77e7:
    ldh a, [rIE]
    rst $28
    ldh a, [$df]
    ldh [$9f], a
    ldh [$9f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    rst $38
    add b
    add b
    add b
    ldh [$60], a
    jr nc, jr_011_77cd

    jr jr_011_77e7

    inc c
    db $f4
    ld b, $fa
    ld b, $fa
    db $e3
    db $fd
    ei
    db $fd
    ld a, a
    db $fd
    ld a, [hl]
    cp $7f
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    sbc c
    rst $28
    rst $18
    xor $de
    pop hl
    pop hl
    cp a
    rst $18
    cp [hl]
    ret nz

    cp a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    jr c, @+$29

    jr jr_011_784a

    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    rst $38
    rst $38
    rst $08
    rst $18
    ldh [$a1], a
    ld a, a
    rra
    cp $09
    rst $38
    ld [$c8ff], sp
    rst $38
    call nz, $0aff

jr_011_784a:
    rst $30
    add hl, de
    rst $28
    rst $38
    rst $38
    ld c, $0d
    inc e
    inc de
    jr jr_011_786c

    rra
    rra
    db $fd
    add e
    ld sp, hl
    rlca
    ld a, [c]
    rrca
    xor $ff
    cp $1f
    ld a, [c]
    adc a
    ld [hl], c
    rst $28
    ld de, $08ff
    rst $38
    inc b
    rst $38
    ld [bc], a

jr_011_786c:
    rst $38
    add d
    rst $38
    ld b, c
    rst $38
    ld sp, $6eff
    xor $c0
    ret nz

    add a
    rst $38
    ld a, e
    add a
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld a, d
    add [hl]
    add h
    db $fc
    ld hl, sp-$08
    ld h, b
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_011_789b:
    nop
    nop
    inc bc
    inc bc
    ld b, $05
    rrca
    add hl, bc
    rra
    inc de
    rra
    rra
    inc hl
    ccf
    ld e, l
    ld h, e
    cp [hl]
    pop bc
    cp [hl]
    call $cdbe
    cp [hl]
    pop bc
    db $db
    rst $20
    ld a, h
    ld a, a
    rlca
    rlca
    ccf
    jr c, jr_011_789b

    rst $38
    jr c, @+$01

    ld h, a
    ld hl, sp-$21
    ldh [$df], a
    ldh [$bf], a
    ret nz

    cp a
    jp $c3bf


    cp a
    ret nz

    rst $18
    ldh [$df], a
    ldh [$e3], a
    db $fc
    inc e
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    db $fc
    inc bc
    cp $e1
    ccf
    ld hl, sp-$31
    ccf
    rst $30
    rrca
    rst $30
    rrca
    ei
    rlca
    ei
    rlca
    ld a, [$fa07]
    rlca
    ld a, [c]
    rrca
    or $0f
    rst $08
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    ld [c], a
    cp $fa
    cp $87
    rst $38
    ld a, e
    add a
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld a, e
    add a
    add a
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
