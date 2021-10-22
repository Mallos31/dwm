; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03f", ROMX[$4000], BANK[$3f]

    ccf
    rla
    ld b, b
    ld [hl-], a
    ld b, b
    ld a, a
    ld b, b
    cp c
    ld b, b
    ld a, l
    ld b, d
    pop af
    ld b, d
    dec h
    ld b, e
    di
    ld b, e
    ld d, a
    ld b, l
    ld e, [hl]
    ld b, l
    ld h, l
    ld b, l
    ld b, b
    ld [bc], a
    ld bc, $a001
    rst $38
    ld c, l
    ld bc, $0f5f
    ld c, l
    ld bc, $0fbf
    ld c, l
    ld bc, $1f1f
    ld c, l
    ld bc, $1f7f
    ld c, l
    ld bc, $1fdf
    ld c, l
    ld b, b
    ld [bc], a
    ld [bc], a
    ld bc, $0002
    rrca
    nop
    ld [bc], a
    db $f4
    rst $38
    ld c, l
    ld [bc], a
    inc [hl]
    rrca
    ld a, [hl+]
    dec b
    dec b
    ld [bc], a
    inc sp
    add hl, bc
    dec b
    ld [bc], a
    ret nz

    nop
    ld [bc], a
    and [hl]
    add hl, bc
    dec b
    dec b
    ld [bc], a
    inc [hl]
    add hl, bc
    ld [bc], a
    ret nz

    ld bc, $e102
    add hl, bc
    ld [bc], a
    inc sp
    dec bc
    ld b, $02
    ld [bc], a
    dec de
    ld [bc], a
    ld [hl-], a
    inc c
    rlca
    ld [bc], a
    ld [hl+], a
    dec de
    ld [bc], a
    ld [de], a
    rra
    ld [bc], a
    ld [bc], a
    ld b, b
    nop
    rlca
    rlca
    ld [bc], a
    ld hl, $0211
    ld [hl-], a
    rrca
    ld c, l
    ld [bc], a
    sub d
    rra
    ld c, l
    ld [bc], a
    jp nc, $1b1f

    ld b, b
    ld [bc], a
    nop
    ld bc, $0000
    rrca
    nop
    inc b
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
    and b
    rrca
    rrca
    ld [bc], a
    nop
    ld [bc], a
    dec de
    nop
    sub d
    inc c
    inc bc
    nop
    ld [hl+], a
    dec de
    nop
    ld [de], a
    rra
    dec e
    nop
    sub b
    ld [$8e00], sp
    rrca
    dec b
    nop
    ld h, [hl]
    rra
    dec c
    nop
    add [hl]
    rrca
    ld c, l
    nop
    add $1f
    daa
    and b
    ld [bc], a
    dec b
    rst $38
    ld h, b
    rst $38
    sub b
    rst $08
    adc b
    rst $00
    add h
    db $e3
    ld b, d
    pop af
    ld hl, $10f8
    db $fc
    ld [$0cff], sp
    rst $38
    ld [de], a
    di
    ld [hl+], a
    db $e3
    ld b, d
    rst $00
    add h

jr_03f_40d6:
    adc a
    ld [$101f], sp
    ccf

jr_03f_40db:
    jr nz, jr_03f_40db

    inc b
    dec b
    jr nz, jr_03f_40e9

jr_03f_40e1:
    rst $38
    inc bc
    ld a, a
    ld b, b
    dec b
    jr nc, @+$0a

    rst $38

jr_03f_40e9:
    add b
    rst $38
    rlca
    rst $38
    jr @-$06

    jr nz, jr_03f_40e1

    jr nz, jr_03f_40d6

    ld b, e
    rst $20
    ld b, h
    dec b
    ld c, d
    nop
    rst $38
    ret nz

    rst $38
    jr nc, jr_03f_410d

    ld [$080f], sp
    add a
    add h
    dec b
    ld c, d
    ld [bc], a
    dec b
    ld c, d
    ld [bc], a
    db $e3
    ld b, e
    ldh a, [rNR41]

jr_03f_410d:
    ld hl, sp+$20
    rst $38
    jr @+$01

    rlca
    dec b
    ld c, d
    ld [bc], a
    add a
    add h
    dec b
    ld d, h
    nop
    rst $38
    jr nc, @+$01

    ret nz

    rst $38
    jr c, @+$01

    dec b
    ld e, e
    rlca
    rst $20
    ld b, h
    dec b
    add b
    inc c
    dec b
    ld h, b
    ld [$05fe], sp
    ld l, l
    dec bc
    ccf
    dec b
    ld a, l
    nop
    ld h, b
    rst $38
    sub b
    rst $18
    dec b
    jp $9102


    rst $08
    adc d
    rst $28
    ld c, d
    rst $38
    ld b, $ff
    add hl, bc
    db $fd
    dec b
    db $d3
    ld [bc], a
    adc c
    ld sp, hl
    ld d, c
    ld a, e
    ld d, d
    rst $28
    ld c, d
    rst $28
    ld c, d
    and $44
    ldh a, [rNR41]
    pop af
    ld hl, $22f3
    rst $38
    ld [hl+], a
    rst $38
    inc e
    ld a, e
    ld d, d
    ld a, e
    ld d, d
    inc sp
    ld [hl+], a
    rlca
    inc b
    add a
    add h
    rst $00
    ld b, h
    rst $00
    dec b
    adc a
    nop
    inc bc
    rst $38
    dec b
    ld hl, $800a
    rst $38
    dec b
    ld sp, $0509
    jr nz, @+$11

    ld c, $3c
    rst $38
    ld b, d
    db $e3
    ld b, d
    pop hl
    ld b, c
    pop hl
    ld b, c
    ldh [rLCDC], a
    ldh [rLCDC], a
    and $44
    rst $38
    ld c, $ff
    ld de, $05f9
    ld d, e
    ld [de], a
    sub c
    ld sp, hl
    sub c
    ld a, c
    ld d, c
    and $44
    rst $20
    ld b, [hl]
    rst $20
    ld b, [hl]
    rst $20
    ld b, l
    rst $20
    ld b, l
    dec b
    adc h
    ld [bc], a
    ld a, c
    ld d, c
    add hl, sp
    ld sp, $3139
    sbc c
    ld de, $0181
    pop bc
    add c
    pop bc
    add c
    rst $38
    ld a, [hl]
    dec b
    nop
    dec e
    ret nz

    cp a
    jr nz, jr_03f_41fb

    dec b
    sub e
    rla
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $a005
    ld [de], a
    dec b
    ld a, [hl-]
    inc bc
    nop
    dec b
    db $10
    ld [de], a
    rst $38
    add b
    rst $38
    inc e
    rst $38
    ld [hl+], a
    di
    dec b
    jp $ff17


    nop
    dec b
    ret nc

    ld a, [de]
    dec b
    call nz, $f112
    ld hl, $20f1
    ldh a, [rNR41]
    ldh a, [rNR41]
    rst $38
    rra
    dec b
    ret nc

    inc de
    db $fc
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    db $fc

jr_03f_41fb:
    rst $38
    rlca
    cp $08
    ld hl, sp+$10
    di
    inc hl
    rst $30
    inc h
    rst $30
    inc h
    di
    inc hl
    ldh a, [rNR41]
    rst $38
    ldh [$1f], a
    db $10
    rrca
    ld [$c4c7], sp
    rst $20
    inc h
    rst $38
    jr @+$01

jr_03f_4218:
    ret nz

    ccf
    jr nc, jr_03f_4218

    db $10
    rst $38
    rrca
    rst $38

jr_03f_4220:
    nop
    rst $38
    inc e
    rst $38
    inc hl
    di
    jr nz, jr_03f_4220

    jr @+$01

    rlca
    dec b
    inc d
    jr nz, @+$07

    ld [$e720], sp
    call nz, Call_000_04c7
    rra
    jr @+$01

    ldh [rIE], a
    rra
    rst $38
    jr nz, @-$0e

    jr nz, jr_03f_4245

    ld b, $24
    di
    jr nz, @+$01

jr_03f_4245:
    ld hl, sp-$01
    inc b
    rlca
    inc b
    rst $38
    ld hl, sp+$05
    ret nc

    ld de, $fff0
    ld [$4405], sp
    jr z, @+$07

    db $ec
    db $10
    rrca
    ld [$f0ff], sp
    dec b
    ret nc

    ld de, $5105
    inc h
    add d
    rst $38
    jp nz, $a2ff

    rst $38
    sub d
    rst $38
    adc d
    rst $38
    add [hl]
    rst $38
    add d
    rst $38
    nop
    dec b
    add b
    nop
    rst $38
    add d
    dec b
    sub h
    ld hl, $8f05
    nop
    nop
    nop
    inc b
    dec b
    inc b
    dec b
    nop
    rrca
    nop
    dec b
    db $f4
    rst $38
    ld c, l
    dec b
    ld d, h
    rrca
    ld c, l
    dec b
    or h
    rrca
    ld c, l
    dec b
    inc d
    rra
    ld c, l
    dec b
    ld [hl], h
    rra
    ld c, l
    dec b
    call nc, $4d1f
    dec b
    inc [hl]
    cpl
    ld c, l
    dec b
    sub h
    cpl
    ld c, l
    dec b
    db $d4, $2f, $1f
    ld [bc], a
    ld [bc], a
    dec b
    ld b, d
    ld [hl], $05
    jp nc, $002f

    inc bc
    ld bc, $0101
    ld bc, $0303
    ld bc, $0301
    dec b
    rst $08
    cpl
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld l, c
    ld [hl-], a
    inc bc
    inc bc
    inc bc
    ld bc, $0502
    ld b, [hl]
    jr nc, jr_03f_42d4

    call nc, Call_000_0529
    ld h, l
    inc sp

jr_03f_42d4:
    dec b
    and [hl]
    ld [hl-], a
    dec b
    ld h, [hl]
    ld sp, $d305
    add hl, hl
    dec b
    add h
    jr nc, jr_03f_42e6

    jp nz, $013a

    ld [bc], a
    dec b

jr_03f_42e6:
    call nc, Call_000_0528
    and h
    ld [hl], $05
    and [hl]
    ld [hl], $05
    and b
    ld hl, sp+$00
    inc b
    ld bc, HeaderLogo
    nop
    rrca
    nop
    ld bc, $fff4
    ld c, l
    ld bc, $0f54
    ld c, l
    ld bc, $0fb4
    ld c, l
    ld bc, $1f14
    ld c, l
    ld bc, $1f74
    ld c, l
    ld bc, $ffa0
    ld c, l
    ld bc, $2f53
    ld c, l
    ld bc, $2fb3
    ld c, l
    ld bc, $3f13
    ld c, l
    ld bc, $3f73
    ld c, l
    ld bc, $3fd3
    add hl, de
    nop
    inc b
    rlca
    ld bc, $0007
    rrca
    nop
    rlca
    db $f4
    rst $38
    ld c, l
    rlca
    inc d
    rrca
    inc c
    ld [bc], a
    rlca
    inc d
    ld [$0202], sp
    rlca
    add h
    inc c
    ld [bc], a
    ld b, $07
    inc d
    ld [$0606], sp
    rlca
    and c
    inc bc
    inc bc
    inc bc
    rlca
    adc l
    inc bc
    ld b, $07
    or e
    dec bc
    rlca
    pop bc
    inc bc
    rlca
    ret


    inc bc
    ld [bc], a
    ld b, $07
    jp nc, $070d

    pop bc
    inc b
    rlca
    db $eb
    rrca
    add hl, bc
    rlca
    jp z, $0103

    ld bc, $0007
    db $10
    rlca
    inc d
    rra
    inc b
    rlca
    jp z, $0701

    jr nc, @+$1e

    ld [bc], a
    rlca
    ld h, b
    db $10
    rlca
    jp $0703


    db $ed
    inc bc
    rlca
    or e
    add hl, bc
    rlca
    jr nz, @+$0e

    rlca
    ld [hl], b
    rra
    dec c
    rlca
    ldh a, [$0c]
    rlca
    jr nz, jr_03f_4395

    rlca
    ld [$030f], a
    rlca
    ret nz

jr_03f_4395:
    rra
    dec c
    rlca
    and c
    dec c
    rlca
    pop af
    inc c
    rlca
    and c
    inc c
    rlca
    pop af
    dec c
    rlca
    ld h, h
    rla
    rlca
    dec l
    cpl
    ld [bc], a
    rlca
    ld [c], a
    inc b
    rlca
    ld a, [bc]
    rra
    ld b, $07
    and c
    add hl, bc
    rlca
    ld [hl], b
    cpl
    ld a, [bc]
    rlca
    ld l, e
    inc de
    rlca
    sub h
    cpl
    inc e
    rlca
    ld b, [hl]
    daa
    rlca
    adc $2f
    dec h
    rlca
    add h
    ld a, [de]
    rlca
    inc d
    ccf
    dec bc
    rlca
    or d
    rrca
    inc b
    rlca
    ld c, c
    ccf
    inc b
    dec b
    dec b
    dec b
    inc b
    rlca
    add e
    jr nc, jr_03f_43e2

    rlca
    adc b
    jr nc, jr_03f_43e5

    rlca

jr_03f_43e2:
    add d
    jr nc, @+$07

jr_03f_43e5:
    dec b
    rlca
    inc d
    ld [$8307], sp
    ld sp, $a007
    dec sp
    rlca
    sub h
    ccf
    add hl, sp
    nop
    inc b
    ld [$0801], sp
    nop
    rrca
    nop
    ld [$fff4], sp
    ld c, l
    ld [$0f14], sp
    nop
    ld [bc], a
    ld [bc], a
    ld [$0086], sp
    ld bc, $0301
    ld [$008f], sp
    ld [$0a14], sp
    ld [$018f], sp
    ld [$09a2], sp
    ld [$0814], sp
    ld [$0ea2], sp
    ld [$0fb2], sp
    ld c, l
    ld [$0ff2], sp
    dec de
    ld [$0282], sp
    ld [$1f46], sp
    inc c
    ld [$1663], sp
    inc b
    ld [$108f], sp
    ld [$0f14], sp
    ld bc, $e208
    inc b
    ld [$1f90], sp
    inc hl
    ld [$1665], sp
    ld [$1d90], sp
    inc b
    inc b
    inc b
    ld [$08e2], sp
    ld [$1c90], sp
    ld [$108f], sp
    ld [$09e2], sp
    ld [$2f11], sp
    nop
    ld [$2c40], sp
    ld [$2f34], sp
    add hl, de
    dec b
    ld [$2f80], sp
    nop
    ld [$2f74], sp
    ld c, l
    ld [$2fd4], sp
    add hl, sp
    ld b, $08
    ld b, b
    ccf
    nop
    ld [$3f34], sp
    add hl, de
    rlca
    rlca
    ld [$0ce2], sp
    ld b, $07
    ld [$3a74], sp
    ld [$3ea0], sp
    ld [$3f94], sp
    add hl, sp
    add a
    ld b, h
    ld l, h
    ld b, l
    call c, $9b45
    ld b, [hl]
    jr nz, jr_03f_44d6

    ld [hl], c
    ld b, a
    or $47
    ld b, a
    ld c, b
    or d
    ld c, b
    jp nc, $e649

    ld c, d
    ld d, c
    ld c, e
    ld l, [hl]
    ld c, h
    dec de
    ld c, l
    db $e4
    ld c, l
    ld e, $4e
    ld b, h
    ld c, [hl]
    and d
    ld c, [hl]
    db $dd
    ld c, [hl]
    ld h, e
    ld c, a
    pop hl
    ld c, a
    jr nz, jr_03f_4501

    ld h, l
    ld d, b
    cp b
    ld d, b
    cp $50
    inc sp
    ld d, c
    sbc a
    ld d, c
    db $ed
    ld d, d
    pop hl
    ld d, e
    ld c, d
    ld d, h
    ld [hl], h
    ld d, h
    sbc [hl]
    ld d, h
    ld c, e
    ld d, l
    and a
    ld d, l
    ret nc

    ld d, l
    db $d3
    ld d, [hl]
    inc de
    ld d, a
    cp [hl]
    ld d, a
    ld d, b
    ld e, b
    nop
    ld e, c
    ld h, e

jr_03f_44d6:
    ld e, d
    ld d, h
    ld e, e
    db $76
    ld e, e
    cp $5b
    sub l
    ld e, h
    cp b
    ld e, h
    ld c, $5d
    ld l, d
    ld e, l
    call nc, $305d
    ld e, [hl]
    sbc e
    ld e, [hl]
    cp l
    ld e, [hl]
    ld [de], a
    ld e, a
    xor l
    ld e, a
    ld [bc], a
    ld h, b
    or a
    ld h, b
    ld [$2761], sp
    ld h, d
    ld a, d
    ld h, d
    adc e
    ld h, e
    ld d, h
    ld h, h
    ld l, e
    ld h, h

jr_03f_4501:
    ld a, [hl]
    ld h, h
    adc $64
    pop hl
    ld h, h
    ld l, $65
    ld c, d
    ld h, l
    ld e, a
    ld h, l
    ld [hl], e
    ld h, l
    add [hl]
    ld h, l
    cp b
    ld h, l
    ld l, [hl]
    ld h, [hl]
    xor c
    ld h, [hl]
    db $10
    ld h, a
    push af
    ld h, a
    ld e, c
    ld l, b
    ld c, [hl]
    ld l, c
    ld h, l
    ld l, c
    ret nz

    ld l, c
    rst $28
    ld l, c
    rst $20
    ld l, d
    ld c, a
    ld l, e
    add sp, $6b
    cp $6b
    sub h
    ld l, h
    ld e, c
    ld l, l
    adc d
    ld l, l
    cp c
    ld l, l
    db $e4
    ld l, l
    ld b, l
    ld l, [hl]
    push hl
    ld l, [hl]
    add c
    ld l, a
    db $fd
    ld l, a
    inc sp
    ld [hl], b
    ld [hl], d
    ld [hl], b
    ld a, [$2570]
    ld [hl], c
    ld a, $71
    ld [hl], c
    ld [hl], c
    adc b
    ld [hl], c
    cp h
    ld [hl], c
    rra
    ld [hl], d
    xor h
    ld [hl], d
    ld a, [c]
    ld [hl], d
    ld d, d
    ld [hl], e

Call_03f_4557:
    ld de, $4485
    call Call_000_05b6
    ret


    ld de, $4485
    call Call_000_05f6
    ret


    call Call_03f_4557
    call Call_000_0609
    ret


    ld [$a39f], a
    inc l
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    rst $28
    xor $51
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    scf
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld a, [$eff7]
    xor $2a
    ld a, $51
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld a, $4b
    ld d, [hl]
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld h, e
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, d
    ld c, d
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld c, d
    ld d, [hl]
    ld a, [$eff7]
    xor $44
    ld c, a
    ld a, $4b
    ld b, c
    ld b, c
    ld a, $52
    ld b, h
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    ld e, [hl]
    rst $28
    xor $51
    ld b, l
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld e, a
    ld e, a
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld e, [hl]
    ld h, d
    inc l
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld e, a
    rst $28
    xor $2c
    ld h, d
    ld b, l
    ld b, d
    ld a, $4f
    ld b, c
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld a, [$eff7]
    xor $43
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld c, d
    ld d, [hl]
    rst $28
    xor $44
    ld c, a
    ld a, $4b
    ld b, c
    ld b, c
    ld a, $52
    ld b, h
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    ld c, c
    ld b, d
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    rst $28
    xor $51
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    scf
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld a, [$eff7]
    xor $2a
    ld a, $51
    ld b, d
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    dec h
    ld d, d
    ld d, c
    ld h, e
    ld h, d
    ld a, [hl-]
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, c
    ld c, h
    rst $28
    xor $4a
    ld b, d
    ld h, d
    ld a, $62
    ld b, e
    ld a, $53
    ld c, h
    ld c, a
    ld h, h
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    rst $28
    xor $2a
    ld c, h
    ld c, c
    ld b, c
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, d
    ld b, a
    ld d, d
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $4c
    ld c, e
    ld b, b
    ld b, d
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, e
    rst $28
    xor $36
    ld c, h
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, c
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    add hl, hl
    ld a, $4b
    ld d, c
    ld a, $50
    ld d, c
    ld b, [hl]
    ld b, b
    ld h, e
    rst $28
    xor $2a
    ld c, h
    ld c, c
    ld b, c
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    ld sp, $544c
    ld e, [hl]
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld c, d
    ld a, $56
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    scf
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld a, [$eff7]
    xor $2a
    ld a, $51
    ld b, d
    ld h, d
    ld a, $50
    ld h, d
    ld c, l
    ld c, a
    ld c, h
    ld c, d
    ld b, [hl]
    ld d, b
    ld b, d
    ld b, c
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld d, h
    ld h, d
    ld c, d
    ld b, d
    rst $28
    xor $3e
    ld h, d
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, c
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld e, [hl]
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    ld c, c
    ld b, d
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $52
    ld d, b
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    scf
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld a, [$eff7]
    xor $2a
    ld a, $51
    ld b, d
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, e
    rst $28
    xor $36
    ld c, h
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, c
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    add hl, hl
    ld a, $4b
    ld d, c
    ld a, $50
    ld d, c
    ld b, [hl]
    ld b, b
    ld h, e
    rst $28
    xor $2a
    ld c, h
    ld c, c
    ld b, c
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    ld sp, $544c
    ld e, [hl]
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld c, d
    ld a, $56
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    scf
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld a, [$eff7]
    xor $2a
    ld a, $51
    ld b, d
    ld h, d
    ld a, $50
    ld h, d
    ld c, l
    ld c, a
    ld c, h
    ld c, d
    ld b, [hl]
    ld d, b
    ld b, d
    ld b, c
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld d, h
    ld h, d
    ld c, d
    ld b, d
    rst $28
    xor $3e
    ld h, d
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, c
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld e, [hl]
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    ld c, c
    ld b, d
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $52
    ld d, b
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    scf
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld a, [$eff7]
    xor $2a
    ld a, $51
    ld b, d
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc sp
    ld c, c
    ld b, d
    ld a, $50
    ld b, d
    ld h, d
    ld b, b
    ld a, $4f
    ld b, d
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    rst $28
    xor $4a
    ld d, [hl]
    ld h, d
    ld b, h
    ld c, a
    ld a, $4b
    ld b, c
    ld b, c
    ld a, $52
    ld b, h
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    rst $28
    xor $49
    ld c, h
    ld d, c
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld b, c
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld d, b
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $37
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    or $5e
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, d
    ld b, d
    ld h, h
    ld a, [$eff7]
    xor $30
    ld d, [hl]
    ld h, d
    ccf
    ld c, h
    ld d, b
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld c, c
    ld b, c
    ld h, d
    ld c, d
    ld b, d
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld l, l
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld a, $4b
    rst $28
    xor $3e
    ld c, l
    ld c, l
    ld c, a
    ld b, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, b
    ld b, d
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $01
    nop
    ld h, d
    ld c, d
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld d, [hl]
    ld b, d
    ld a, $4f
    ld d, b
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $50
    ld b, l
    ld c, h
    ld c, l
    ld c, b
    ld b, d
    ld b, d
    ld c, l
    ld b, d
    ld c, a
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $50
    ld b, l
    ld c, h
    ld c, l
    ld h, d
    ld d, b
    ld c, h
    ld c, h
    ld c, e
    ld b, d
    ld c, a
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    jr nc, jr_03f_49b4

    ld h, d
    ld d, h
    ld b, [hl]
    ld d, b
    ld b, l
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    rst $28
    xor $40
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld d, c
    ld c, a
    ld d, d
    ld b, d
    ld h, d
    ld b, [hl]
    ld b, e
    ld a, [$eff7]
    xor $f6
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld d, b
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld sp, $624c
    ld d, h
    ld a, $56
    ld h, e
    ld h, d
    inc l
    ld h, d
    ld b, b
    ld a, $4b
    ld h, a
    rst $28
    xor $50
    ld d, c
    ld a, $4b
    ld b, c
    ld h, d
    ccf
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld a, $4b
    ld a, [$eff7]
    xor $3e
    ld c, l
    ld c, l
    ld c, a
    ld b, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, b

jr_03f_49b4:
    ld b, d
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld bc, $ef00
    xor $4a
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld d, [hl]
    ld b, d
    ld a, $4f
    ld d, b
    ld h, e
    ld h, d
    inc h
    ld c, a
    ld b, h
    ld b, l
    ld e, a
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld h, d
    ld d, h
    ld a, $50
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $3e
    ld b, e
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    inc l
    ld h, d
    ld c, a
    ld b, d
    ld a, $49
    ld b, [hl]
    ld d, a
    ld b, d
    ld b, c
    ld a, [$eff7]
    xor $25
    ld b, d
    ld d, c
    ld d, c
    ld d, [hl]
    ld h, d
    ld d, h
    ld a, $50
    ld h, d
    ld a, $40
    ld d, c
    ld d, d
    ld a, $49
    ld c, c
    ld d, [hl]
    rst $28
    xor $3e
    ld h, d
    ld h, $4c
    ld c, l
    ld d, [hl]
    ld h, $3e
    ld d, c
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc h
    ld h, d
    ld h, $4c
    ld c, l
    ld d, [hl]
    ld h, $3e
    ld d, c
    ld h, d
    ld c, e
    ld b, d
    ld b, d
    ld b, c
    ld d, b
    rst $28
    xor $50
    ld c, h
    ld c, d
    ld b, d
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, b
    ld c, h
    ld c, l
    ld d, [hl]
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld d, c
    ld h, d
    ld c, d
    ld b, d
    ld a, $4b
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $46
    ld d, b
    ld h, d
    ld a, $62
    dec h
    ld b, d
    ld d, c
    ld d, c
    ld d, [hl]
    ld a, [$eff7]
    xor $50
    ld c, h
    ld c, d
    ld b, d
    ld d, h
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld e, a
    ld e, a
    ld e, a
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $3e
    ld h, d
    ld c, a
    ld b, d
    ld a, $49
    ld h, d
    dec h
    ld b, d
    ld d, c
    ld d, c
    ld d, [hl]
    ld a, [$eff7]
    xor $50
    ld c, h
    ld c, d
    ld b, d
    ld d, h
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ld c, h
    ld c, e
    ld h, d
    ld a, $ef
    xor $47
    ld c, h
    ld d, d
    ld c, a
    ld c, e
    ld b, d
    ld d, [hl]
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld b, d
    ld a, $4f
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, a
    ld b, d
    ld a, $49
    ld h, d
    dec h
    ld b, d
    ld d, c
    ld d, c
    ld d, [hl]
    rst $28
    xor $4b
    ld c, h
    ld d, h
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld e, a
    ld e, a
    ld e, a
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld d, h
    ld a, $50
    rst $28
    xor $3e
    ld h, d
    ld c, a
    ld b, d
    ld a, $49
    ld h, d
    dec h
    ld b, d
    ld d, c
    ld d, c
    ld d, [hl]
    ld a, [$eff7]
    xor $50
    ld c, h
    ld c, d
    ld b, d
    ld d, h
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ld c, h
    ld c, e
    ld h, d
    ld a, $ef
    xor $47
    ld c, h
    ld d, d
    ld c, a
    ld c, e
    ld b, d
    ld d, [hl]
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, a
    ld b, d
    ld a, $49
    ld h, d
    dec h
    ld b, d
    ld d, c
    ld d, c
    ld d, [hl]
    rst $28
    xor $4b
    ld c, h
    ld d, h
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld l, h
    ld b, d
    ld h, d
    ccf
    ld b, d
    ld b, d
    ld c, e
    rst $28
    xor $49
    ld c, h
    ld c, h
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $3f
    ld c, h
    ld c, h
    ld c, b
    ld e, [hl]
    ld h, d
    or [hl]
    ld h, d
    inc l
    ld h, d
    ld b, e
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $46
    ld d, c
    ld h, d
    ld a, $51
    ld h, d
    ld c, c
    ld a, $50
    ld d, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld d, c
    ld l, b
    ld h, d
    ld b, b
    ld a, $49
    ld c, c
    ld b, d
    ld b, c
    rst $28
    xor $37
    ld b, l
    ld b, d
    ld h, d
    ld [hl], $42
    ld b, b
    ld c, a
    ld b, d
    ld d, c
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $36
    ld d, c
    ld a, $4f
    ld c, a
    ld d, [hl]
    ld h, d
    scf
    ld c, h
    ld d, d
    ld c, a
    ld c, e
    ld a, $4a
    ld b, d
    ld c, e
    ld d, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld d, c
    ld h, d
    ld d, b
    ld a, $56
    ld d, b
    ld h, d
    ld d, h
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, c
    ld c, h
    ld c, d
    ld l, b
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, b
    ld d, c
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $4a
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld d, b
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld c, h
    ld c, e
    ld b, d
    ld l, b
    rst $28
    xor $54
    ld b, [hl]
    ld d, b
    ld b, l
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $48
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, c
    ld c, h
    ld c, d
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld d, b
    rst $28
    xor $51
    ld c, a
    ld d, d
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    jr nc, @+$58

    ld h, d
    ld d, h
    ld b, [hl]
    ld d, b
    ld b, l
    ld h, d
    ld b, b
    ld a, $4a
    ld b, d
    rst $28
    xor $51
    ld c, a
    ld d, d
    ld b, d
    ld h, d
    ld d, h
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    inc l
    ld a, [$eff7]
    xor $43
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ccf
    ld c, h
    ld c, h
    ld c, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld d, c
    ld h, d
    ld d, b
    ld a, $56
    ld d, b
    ld h, d
    ld d, h
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld d, c
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4a
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    rst $28
    xor $48
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, c
    ld c, h
    ld c, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld d, b
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld c, h
    ld c, e
    ld b, d
    ld l, b
    rst $28
    xor $54
    ld b, [hl]
    ld d, b
    ld b, l
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $48
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, c
    ld c, h
    ld c, d
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld d, b
    rst $28
    xor $51
    ld c, a
    ld d, d
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld b, e
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    rst $28
    xor $3f
    ld c, h
    ld c, h
    ld c, b
    ld h, d
    or [hl]
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld b, c
    ld c, a
    ld b, d
    ld a, $4a
    ld a, [$eff7]
    xor $40
    ld a, $4a
    ld b, d
    ld h, d
    ld d, c
    ld c, a
    ld d, d
    ld b, d
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    jr z, jr_03f_4d73

    ld b, d
    ld c, e
    ld h, d
    ld a, $43
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $36
    ld d, c
    ld a, $4f
    ld c, a
    ld d, [hl]
    ld h, d
    ld sp, $4446
    ld b, l
    ld d, c
    ld e, [hl]
    ld a, [$eff7]
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld a, $4f
    ld b, d
    rst $28
    xor $50
    ld d, c
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $37
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld d, b
    ld h, e
    rst $28

jr_03f_4d73:
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld sp, $544c
    ld e, [hl]
    ld h, d
    ld d, b
    ld d, c
    ld a, $4f
    ld d, c
    ld h, d
    ld a, $ef
    xor $47
    ld c, h
    ld d, d
    ld c, a
    ld c, e
    ld b, d
    ld d, [hl]
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $4b
    ld b, d
    ld d, h
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, [hl-]
    ld b, l
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, d
    ld a, $4f
    ld b, d
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld b, h
    ld c, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $4f
    ld b, d
    ld d, b
    ld b, d
    ld a, $4f
    ld b, b
    ld b, l
    ld h, d
    ld d, c
    ld c, h
    ld b, c
    ld a, $56
    ld h, h
    rst $28
    xor $f0
    db $eb
    sbc a
    and e
    ld h, $4c
    ld c, e
    ld b, h
    ld c, a
    ld a, $51
    ld d, d
    ld c, c
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld d, b
    rst $28
    xor $4c
    ld c, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld d, e
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld h, e
    ld a, [$eff7]
    xor $2c
    ld d, c
    ld l, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld d, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    jr nc, @+$44

    ld b, c
    ld a, $49
    ld h, d
    jr nc, @+$40

    ld c, e
    rst $28
    xor $50
    ld a, $46
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4b
    ld h, d
    ld c, l
    ld a, $50
    ld d, b
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld h, d
    ld b, l
    ld b, d
    ld a, $4f
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld d, d
    ld c, a
    ld c, e
    ld a, $4a
    ld b, d
    ld c, e
    ld d, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    daa
    ld b, [hl]
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    rst $28
    xor $50
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, b
    ld c, a
    ld b, d
    ld d, c
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $2a
    ld c, a
    ld b, d
    ld a, $51
    scf
    ld c, a
    ld b, d
    ld b, d
    ld h, h
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, c
    ld e, [hl]
    ld h, d
    ld d, h
    ld b, d
    ld c, c
    ld c, c
    ld e, a
    ld h, d
    inc a
    ld c, h
    ld d, d
    rst $28
    xor $54
    ld c, h
    ld c, e
    ld h, d
    ccf
    ld d, d
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, d
    ld c, e
    ld c, h
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $4c
    ld b, e
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ccf
    ld d, d
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld d, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld l, d
    ld h, d
    ld a, $62
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $4b
    ld a, $4a
    ld b, d
    ld c, a
    ld e, a
    ld h, d
    jr nc, jr_03f_4f4d

    ld h, d
    ld b, a
    ld c, h
    ccf
    ld h, d
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $51
    ld c, h
    ld h, d
    ld b, b
    ld b, l
    ld a, $4b
    ld b, h
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $4b
    ld a, $4a
    ld b, d
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    add hl, sp
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld d, c
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld d, h
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, b
    ld b, l
    ld a, $4b
    ld b, h
    ld b, d
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, e
    ld a, $4a

jr_03f_4f4d:
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc a
    ld e, a
    ld e, a
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, e
    rst $28
    xor $3c
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    cpl
    ld c, h
    ld c, h
    ld c, b
    ld e, [hl]
    ld h, d
    inc l
    ld h, [hl]
    ld c, c
    rst $28
    xor $44
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld a, $62
    ld c, a
    ld b, d
    ld d, h
    ld a, $4f
    ld b, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl+]
    ld c, h
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, $4f
    ld b, d
    ld c, e
    ld a, $5f
    rst $28
    xor $36
    ld c, h
    ld c, d
    ld b, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, h
    ld c, h
    ld c, h
    ld b, c
    ld h, [hl]
    ld c, c
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld h, d
    ld d, h
    ld a, $46
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, [hl]
    ld a, $5f
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl+]
    ld c, h
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, $4f
    ld b, d
    ld c, e
    ld a, $5f
    rst $28
    xor $36
    ld c, h
    ld c, d
    ld b, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, h
    ld c, h
    ld c, h
    ld b, c
    ld h, [hl]
    ld c, c
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld h, d
    ld d, h
    ld a, $46
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, [hl]
    ld a, $5f
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld b, c
    ld d, d
    ld b, c
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld b, b
    ld b, l
    ld a, $4b
    ld b, h
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $4b
    ld a, $4a
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    rst $28
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, [hl]
    ld a, $5f
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld c, h
    ld h, d
    dec hl
    ld c, h
    ld h, d
    dec hl
    ld c, h
    ld e, a
    ld h, d
    inc l
    ld h, d
    ld c, d
    ld a, $41
    ld b, d
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld [hl], $42
    ld c, a
    ld d, e
    ld a, $4b
    ld d, c
    ld a, [$eff7]
    xor $40
    ld a, $4f
    ld b, d
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    scf
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ccf
    ld c, h
    ld c, h
    ld c, b
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $43
    ld d, d
    ld c, e
    ld h, e
    ld h, d
    dec hl
    ld c, h
    ld h, d
    dec hl
    ld c, h
    ld h, d
    dec hl
    ld c, h
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    inc l
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld [hl], $51
    ld a, $4f
    ld c, a
    ld d, [hl]
    rst $28
    xor $31
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld a, $49
    ld c, a
    ld b, d
    ld a, $41
    ld d, [hl]
    ld a, [$eff7]
    xor $4c
    ld d, e
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    ld c, e
    ld c, h
    ld h, e
    ld h, d
    inc l
    rst $28
    xor $4c
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld c, c
    ld b, d
    ld c, l
    ld d, c
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld sp, $5442
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ld d, h
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $3f
    ld c, h
    ld c, a
    ld c, e
    ld h, d
    ld c, h
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $36
    ld d, c
    ld a, $4f
    ld c, a
    ld d, [hl]
    ld h, d
    ld sp, $4446
    ld b, l
    ld d, c
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    jr nc, jr_03f_518e

    ld h, d
    ld b, e
    ld c, c
    ld a, $4a
    ld b, d
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld a, $4a
    ld b, d
    rst $28
    xor $4a
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld d, b
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld a, $4b
    ld a, [$eff7]
    xor $52
    ld d, b
    ld d, d
    ld a, $49
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld c, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $50
    ld d, c
    ld a, $4f
    ld d, b
    ld h, d
    ld d, b
    ld b, l
    ld a, $4f
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $4d

jr_03f_518e:
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld c, d
    ld b, d
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    or $5e
    rst $28
    xor $3a
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $26
    ld c, h
    ld c, e
    ld b, h
    ld c, a
    ld a, $51
    ld d, d
    ld c, c
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld d, b
    rst $28
    xor $4c
    ld c, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld d, e
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    dec l
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld e, [hl]
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    jr nc, @+$40

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    scf
    ld a, $4a
    ld b, d
    ld c, a
    rst $28
    xor $4c
    ld c, e
    ld b, b
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld d, h
    ld c, h
    ld c, e
    ld h, d
    ld a, $62
    ld d, e
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    rst $28
    xor $b6
    ld h, d
    ld b, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld b, d
    ld b, c
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld b, l
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld h, d
    ld d, h
    ld b, l
    ld a, $51
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld d, b
    ld a, $54
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    dec h
    ld d, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, h
    ld a, $56
    ld e, [hl]
    rst $28
    xor $f6
    ld e, [hl]
    ld h, d
    ld d, c
    ld c, h
    ld b, c
    ld a, $56
    ld l, b
    ld a, [$eff7]
    xor $49
    ld b, d
    ld b, b
    ld d, c
    ld d, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld e, a
    ld e, a
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    rst $28
    xor $51
    ld b, l
    ld a, $51
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld b, b
    ld c, a
    ld b, d
    ld a, $51
    ld b, d
    ld b, c
    ld a, [$eff7]
    xor $4c
    ld c, e
    ld c, c
    ld d, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld c, a
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    rst $28
    xor $3f
    ld c, a
    ld b, d
    ld b, d
    ld b, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    ld a, [$eff7]
    xor $3a
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    rst $28
    xor $ff
    ldh a, [$ea]
    sbc a
    and e
    dec l
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld e, [hl]
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    jr nc, jr_03f_5344

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    scf
    ld a, $4a
    ld b, d
    ld c, a
    rst $28
    xor $4c
    ld c, e
    ld b, b
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld d, h
    ld c, h
    ld c, e
    ld h, d
    ld a, $62
    ld d, e
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld h, d
    or [hl]
    rst $28
    xor $42
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld b, d
    ld b, c
    ld h, d
    ld b, [hl]

jr_03f_5344:
    ld c, e
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $50
    ld b, l
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    dec h
    ld d, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, h
    ld a, $56
    ld e, [hl]
    rst $28
    xor $f6
    ld e, [hl]
    ld h, d
    ld d, c
    ld c, h
    ld b, c
    ld a, $56
    ld l, b
    ld a, [$eff7]
    xor $49
    ld b, d
    ld b, b
    ld d, c
    ld d, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld e, a
    ld e, a
    ld e, a
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    rst $28
    xor $51
    ld b, l
    ld a, $51
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld b, b
    ld c, a
    ld b, d
    ld a, $51
    ld b, d
    ld b, c
    ld a, [$eff7]
    xor $4c
    ld c, e
    ld c, c
    ld d, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld c, a
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    rst $28
    xor $3f
    ld c, a
    ld b, d
    ld b, d
    ld b, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    ld a, [$eff7]
    xor $3a
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld e, [hl]
    ld h, d
    ld b, [hl]
    ld d, c
    ld l, b
    ld h, d
    ld a, $ef
    xor $33
    ld b, l
    ld c, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld d, l
    ld h, e
    ld h, d
    inc l
    ld d, c
    ld h, d
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld d, b
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld a, $62
    dec h
    ld c, c
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld b, c
    ld d, [hl]
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld b, d
    ld h, e
    rst $28
    xor $2c
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $4f
    ld b, d
    ld d, h
    ld a, $4f
    ld b, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    dec hl
    ld b, d
    ld c, a
    ld b, d
    ld l, b
    rst $28
    xor $26
    ld b, l
    ld b, d
    ld a, $51
    ld b, d
    ld c, a
    dec h
    ld l, $5f
    ld a, [$eff7]
    xor $38
    ld d, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, b
    ld b, d
    ld c, c
    ld d, [hl]
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld l, d
    ld h, d
    ld d, b
    ld a, $51
    ld b, [hl]
    ld d, b
    ld b, e
    ld b, [hl]
    ld b, d
    ld b, c
    ld e, a
    rst $28
    xor $f6
    ld e, [hl]
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $53
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, h
    ld c, h
    rst $28
    xor $3f
    ld a, $40
    ld c, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $40
    ld a, $50
    ld d, c
    ld c, c
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld e, a
    ld e, a
    ld e, a
    ccf
    ld b, d
    ld b, e
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    inc l
    ld h, d
    ld b, h
    ld c, h
    ld e, [hl]
    rst $28
    xor $2c
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld a, [$eff7]
    xor $3a
    ld b, l
    ld b, [hl]
    ld d, c
    ld b, d
    ld l, $46
    ld c, e
    ld b, h
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, d
    ld b, l
    ld b, d
    ld a, $4f
    ld b, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, l
    ld a, $50
    ld h, d
    ld a, $ef
    xor $3f
    ld c, c
    ld c, h
    ld c, h
    ld b, c
    ld b, b
    ld d, d
    ld c, a
    ld b, c
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, b
    ld a, $52
    ld d, b
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld d, b
    rst $28
    xor $57
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, d
    ld c, h
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld h, e
    ld h, d
    inc l
    ld d, c
    ld l, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $24
    ld h, d
    ld a, [hl-]
    ld b, l
    ld b, [hl]
    ld d, c
    ld b, d
    ld l, $46
    ld c, e
    ld b, h
    ld h, e
    ld h, d
    dec hl
    ld c, h
    ld d, h
    ld a, [$eff7]
    xor $50
    ld a, $41
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld b, d
    ld h, e
    rst $28
    xor $2c
    ld h, [hl]
    ld c, c
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $4f
    ld b, d
    ld d, h
    ld a, $4f
    ld b, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    dec hl
    ld b, d
    ld c, a
    ld b, d
    ld l, b
    rst $28
    xor $26
    ld c, h
    ld c, d
    ld b, d
    ld b, c
    ld d, [hl]
    dec h
    ld l, $5f
    ld a, [$eff7]
    xor $38
    ld d, b
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, b
    ld b, d
    ld c, c
    ld d, [hl]
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld [hl-], a
    ld c, e
    ld b, b
    ld b, d
    ld h, d
    ld a, $62
    ld b, e
    ld a, $4a
    ld c, h
    ld d, d
    ld d, b
    rst $28
    xor $4a
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld c, h
    ld c, c
    ld b, c
    ld h, d
    ld c, d
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc h
    ld h, d
    ld c, b
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    rst $28
    xor $42
    ld d, e
    ld b, d
    ld c, e
    ld d, c
    ld d, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $3e
    ld h, d
    ld c, e
    ld c, h
    ccf
    ld c, c
    ld b, d
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $43
    ld c, h
    ld c, c
    ld c, c
    ld c, h
    ld d, h
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, l
    ld a, $51
    ld b, l
    ld a, [$eff7]
    xor $51
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld c, a
    ld c, h
    ld c, e
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld c, h
    ld c, e
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $51
    ld b, [hl]
    ld d, c
    ld c, c
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld a, [$eff7]
    xor $40
    ld c, a
    ld b, d
    ld a, $51
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    ld e, a
    ld e, a
    ld e, a
    ld d, h
    ld b, l
    ld a, $51
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    rst $28
    xor $3e
    ccf
    ld c, h
    ld d, d
    ld d, c
    ld h, h
    ld h, d
    inc l
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    ld a, [$eff7]
    xor $50
    ld d, d
    ld b, b
    ld b, b
    ld b, d
    ld d, b
    ld d, b
    ld h, h
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    jr c, jr_03f_572a

    ld d, d
    ld e, a
    ld e, a
    ld h, d
    ld d, [hl]
    ld a, $54
    ld c, e
    ld h, e
    rst $28
    xor $3a
    ld b, l
    ld c, h
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $9f
    and e
    ld [hl-], a
    ld b, l
    ld e, [hl]
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld h, d
    jr nc, @+$40

    ld b, a
    ld b, d
    ld d, b
    ld d, c
    ld d, [hl]
    ld e, a
    rst $28
    xor $5f
    ld e, a
    ld e, a
    ld h, d
    ld d, [hl]
    ld a, $54
    ld c, e
    ld h, e
    ld h, d
    ld d, d
    ld d, d
    ld d, d
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld c, a
    ld d, d
    ld c, d
    ld c, h
    ld c, a
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $41
    ld c, a

jr_03f_572a:
    ld b, d
    ld a, $41
    ld b, e
    ld d, d
    ld c, c
    ld h, d
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $54
    ld a, $50
    ld h, d
    ld a, $40
    ld d, c
    ld d, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld d, b
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld d, c
    ld l, b
    ld h, d
    ld d, b
    ld d, d
    ld c, a
    ld c, l
    ld c, a
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $51
    ld b, l
    ld a, $51
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, e
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $3e
    ld b, h
    ld a, $46
    ld c, e
    ld d, b
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    ld h, d
    ld a, $62
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, c
    ld c, c
    ld b, d
    rst $28
    xor $3f
    ld c, a
    ld c, h
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld c, h
    ld c, h
    ld e, a
    rst $30
    ldh a, [$eb]
    jr nc, jr_03f_57ff

    ld d, [hl]
    and e
    daa
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $51
    ld b, l
    ld b, [hl]
    ld c, e
    ld c, b
    ld h, d
    daa
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, d
    ld b, h
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $49
    ld c, h
    ld c, h
    ld c, b
    ld d, b
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld a, $56
    and e
    ld e, a
    ld e, a
    ld e, a
    ld c, d
    ld c, h

jr_03f_57ff:
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $51
    ld b, l
    ld a, $51
    ld h, d
    ld d, d
    ld d, b
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, e
    ld c, c
    ld d, [hl]
    ld a, [$eff7]
    xor $4c
    ld d, e
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, e
    ld a, $4f
    ld c, d
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld a, $56
    and e
    inc l
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld h, d
    ld b, [hl]
    ld b, e
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld d, [hl]
    ld l, c
    ld b, d
    ld h, d
    ld c, a
    ld b, d
    ld c, c
    ld a, $51
    ld b, d
    ld b, c
    ld h, h
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc a
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ccf
    ld b, [hl]
    ld b, h
    ld h, d
    ld d, b
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld c, h
    ld d, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld [hl], $52
    ld b, b
    ld b, l
    ld h, d
    ld a, $62
    ld c, l
    ld c, a
    ld b, d
    ld d, c
    ld d, c
    ld d, [hl]
    rst $28
    xor $44
    ld b, [hl]
    ld c, a
    ld c, c
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    jr nc, jr_03f_58ec

    ld h, d
    ld b, l
    ld d, d
    ld d, b
    ccf
    ld a, $4b
    ld b, c
    ld h, d
    ld d, h
    ld a, $50
    rst $28
    xor $50
    ld c, h
    ld h, d
    ld b, l
    ld a, $4d
    ld c, l
    ld d, [hl]
    ld h, d
    ld c, h
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $36
    ld d, c
    ld a, $4f
    ld c, a
    ld d, [hl]
    ld h, d
    ld sp, $4446
    ld b, l
    ld d, c
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, d
    ld c, a
    ld b, d
    ld a, $49
    ld b, [hl]
    ld d, a
    ld b, d
    ld b, c
    ld h, d
    inc l
    rst $28
    xor $50
    ld b, l
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, d
    ld d, c

jr_03f_58ec:
    ld c, h
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld b, b
    ld a, $50
    ld d, c
    ld c, c
    ld b, d
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld b, d
    ld c, a
    ld b, d
    ld l, b
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    rst $28
    xor $30
    ld a, $47
    ld b, d
    ld d, b
    ld d, c
    ld d, [hl]
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    inc [hl]
    ld d, d
    ld b, d
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $4c
    ld b, e
    ld h, d
    ld a, [hl+]
    ld c, a
    ld b, d
    ld a, $51
    scf
    ld c, a
    ld b, d
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc sp
    ld c, a
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld c, h
    ld d, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld d, d
    ld b, d
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $4c
    ld b, e
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld h, d
    jr nc, jr_03f_59a1

    ld b, a
    ld b, d
    ld d, b
    ld d, c
    ld d, [hl]
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld [hl], $46
    ld c, e
    ld b, b
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld [hl], $51
    ld a, $4f
    ld c, a
    ld d, [hl]
    rst $28
    xor $31
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld e, [hl]
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld h, d
    jr nc, jr_03f_59ce

    ld b, a
    ld b, d
    ld d, b
    ld d, c
    ld d, [hl]
    ld a, [$eff7]
    xor $45
    ld a, $50
    ld h, d
    ld b, b
    ld b, l
    ld a, $4b

jr_03f_59a1:
    ld b, h
    ld b, d
    ld b, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld [hl], $45
    ld b, d
    ld h, d
    ld d, b
    ld d, c
    ld a, $4f
    ld d, c
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $40
    ld c, h
    ld c, e
    ld d, b
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, a
    ld h, d
    ld c, a
    ld b, d
    ld d, c
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld c, e

jr_03f_59ce:
    ld b, h
    ld a, [$eff7]
    xor $51
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, b
    ld a, $50
    ld d, c
    ld c, c
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, [hl-]
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld h, d
    jr nc, jr_03f_5a32

    ld b, a
    ld b, d
    ld d, b
    ld d, c
    ld d, [hl]
    rst $28
    xor $44
    ld c, h
    ld b, d
    ld d, b
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    rst $28
    xor $45
    ld a, $4d
    ld c, l
    ld d, [hl]
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, h
    ld c, e
    ld b, d

jr_03f_5a32:
    rst $28
    xor $44
    ld c, h
    ld c, h
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld a, [$eff7]
    xor $40
    ld a, $4a
    ld b, d
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    rst $28
    xor $53
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld e, [hl]
    or $63
    rst $30
    ldh a, [$eb]
    jr nc, jr_03f_5aac

    ld c, c
    ld a, $56
    ld c, h
    ld d, d
    and e
    scf
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld e, [hl]
    ld h, d
    ld b, l
    ld c, h
    ld d, h
    rst $28
    xor $3e
    ld c, a
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, h
    ld h, d
    scf
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $34
    ld d, d
    ld b, d
    ld b, d
    ld c, e
    ld h, d
    ld d, b
    ld a, $46
    ld b, c
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld c, h
    ld d, d
    and e
    ld e, a
    ld e, a
    ld e, a
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld l, c

jr_03f_5aac:
    ld b, d
    rst $28
    xor $4a
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld a, [$eff7]
    xor $54
    ld b, d
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld c, h
    ld d, d
    and e
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    ld b, h
    ld c, h
    rst $28
    xor $50
    ld b, d
    ld a, $4f
    ld b, b
    ld b, l
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, d
    ld e, a
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld c, h
    ld d, d
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    rst $28
    xor $54
    ld b, l
    ld a, $51
    ld e, [hl]
    ld h, d
    ld d, h
    ld b, l
    ld d, [hl]
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld d, h
    ld b, d
    ld a, [$eff7]
    xor $3f
    ld c, a
    ld b, d
    ld b, d
    ld b, c
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld c, h
    ld d, d
    and e
    dec h
    ld c, a
    ld b, d
    ld b, d
    ld b, c
    rst $28
    xor $54
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld [hl], $48
    ld b, d
    ld c, c
    ld b, d
    ld d, c
    ld c, h
    ld c, a
    ld h, e
    ldh a, [$eb]
    jr nc, jr_03f_5b9d

    ld c, c
    ld a, $56
    ld c, h
    ld d, d
    and e
    cpl
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ccf
    ld c, a
    ld b, d
    ld b, d
    ld b, c
    rst $28
    xor $4a
    ld d, [hl]
    ld h, d
    ld [hl], $48
    ld b, d
    ld c, c
    ld b, d
    ld d, c
    ld c, h
    ld c, a
    ld h, e
    ldh a, [$eb]
    jr nc, jr_03f_5bbf

    ld c, c
    ld a, $56
    ld c, h
    ld d, d
    and e
    ld sp, $544c
    ld e, [hl]
    ld h, d
    inc l
    rst $28
    xor $54
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ld d, b
    ld b, d
    ld a, $4f
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $43

jr_03f_5b9d:
    ld c, h
    ld c, a
    ld h, d
    ccf
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, e
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld c, h
    ld d, d
    and e
    inc l
    ld h, d

jr_03f_5bbf:
    ld b, l
    ld b, d
    ld a, $4f
    ld b, c
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld a, [$eff7]
    xor $51
    ld b, l
    ld a, $51
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ccf
    ld b, d
    ld c, c
    ld c, h
    ld c, e
    ld b, h
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld a, $4b
    ld d, [hl]
    ld h, d
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    ld c, d
    ld d, [hl]
    ld e, [hl]
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    or $5f
    ld a, [$eff7]
    xor $3a
    ld b, d
    ld c, c
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $35
    ld c, h
    ld c, h
    ld c, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld [hl], $51
    ld c, a
    ld b, d
    ld c, e
    ld b, h
    ld d, c
    ld b, l
    ld a, [$eff7]
    xor $b6
    ld h, d
    inc h
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, [hl+]
    ld c, h
    ld h, d
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $2a
    ld a, $51
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    inc h
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld e, [hl]
    ld a, [$eff7]
    xor $b6
    ld h, d
    ld c, c
    ld b, d
    ld b, e
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    rst $28
    xor $4c
    ld b, e
    ld h, d
    ld [hl], $51
    ld c, a
    ld b, d
    ld c, e
    ld b, h
    ld d, c
    ld b, l
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld e, [hl]
    ld h, d
    or $5e
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    or $62
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $45
    ld b, d
    ld c, a
    ld b, d
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $35
    ld c, h
    ld c, h
    ld c, d
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $35
    ld b, d
    ld b, e
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld e, a
    rst $28
    xor $37
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $35
    ld b, d
    ld b, e
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $4c
    ld d, e
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, [hl+]
    ld c, h
    ld h, d
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $2a
    ld a, $51
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    daa
    ld b, d
    ld c, d
    ld c, h
    ld c, c
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $b6
    ld h, d
    ld c, c
    ld b, d
    ld b, e
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    rst $28
    xor $4c
    ld b, e
    ld h, d
    inc h
    ld c, d
    ccf
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, e
    ld h, d
    jr nc, @+$40

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, [hl+]
    ld c, h
    ld h, d
    ld d, d
    ld c, l
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $2a
    ld a, $51
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld c, d
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    or [hl]
    ld h, d
    ld b, c
    ld c, h
    ld d, h
    ld c, e
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld a, [$eff7]
    xor $4c
    ld b, e
    ld h, d
    ld h, $4c
    ld c, e
    ld d, c
    ld c, a
    ld c, h
    ld c, c
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld c, h
    ld d, h
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, [hl+]
    ld c, h
    ld h, d
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $2a
    ld a, $51
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld [hl], $49
    ld b, d
    ld b, d
    ld c, l
    ld e, [hl]
    ld a, [$eff7]
    xor $2f
    ld b, d
    ld b, e
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    rst $28
    xor $4c
    ld b, e
    ld h, d
    jr z, jr_03f_5e7a

    ld d, c
    ld b, [hl]
    ld c, e
    ld b, b
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld l, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    jr nc, jr_03f_5e88

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $30
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    dec l
    ld c, a
    ld e, a
    ld a, [$eff7]
    xor $24
    ld c, c
    ld c, c
    ld h, d
    ld b, l
    ld a, $46
    ld c, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    cpl
    ld b, d
    ld d, c
    ld h, d
    ld c, d
    ld b, d
    ld h, d
    ld d, c
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $54
    ld b, l
    ld b, d
    ld c, a
    ld b, d

jr_03f_5e7a:
    ld h, d
    ld d, c
    ld b, l
    ld c, h
    ld d, b
    ld b, d
    ld h, d
    ld d, h
    ld b, d
    ld a, $48
    ld a, [$eff7]

jr_03f_5e88:
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, e
    ld b, d
    ld e, a
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    and e
    daa
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld d, h
    ld a, $4b
    ld c, e
    ld a, $ef
    xor $49
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld h, d
    ld [hl], $4b
    ld b, [hl]
    ld d, e
    ld b, d
    ld c, c
    ld e, a
    ld e, a
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl-]
    ld a, $4b
    ld c, e
    ld a, $62
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld d, b
    rst $28
    xor $4c
    ld b, e
    ld h, d
    add hl, sp
    ld b, [hl]
    ld c, c
    ld c, c
    ld a, $44
    ld b, d
    ld c, a
    ld h, d
    or [hl]
    ld a, [$eff7]
    xor $37
    ld a, $49
    ld b, [hl]
    ld d, b
    ld c, d
    ld a, $4b
    ld h, h
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    and e
    dec h
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    rst $28
    xor $4c
    ld b, e
    ld h, d
    add hl, sp
    ld b, [hl]
    ld c, c
    ld c, c
    ld a, $44
    ld b, d
    ld c, a
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, e
    ld b, d
    ld a, [$eff7]
    xor $36
    ld d, c
    ld d, d
    ccf
    ld d, b
    ld d, d
    ld b, b
    ld c, b
    ld d, b
    ld e, [hl]
    rst $28
    xor $2a
    ld c, h
    dec hl
    ld c, h
    ld c, l
    ld c, l
    ld b, d
    ld c, a
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $9f
    and e
    inc h
    ld c, e
    ld d, c
    ld b, d
    ld a, $51
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    or [hl]
    ld h, d
    rst $28
    xor $2a
    ld c, a
    ld b, d
    ld c, d
    ld c, c
    ld b, [hl]
    ld c, e
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld [hl], $4d
    ld c, h
    ld c, h
    ld c, b
    ld d, [hl]
    ld d, b
    ld h, d
    or [hl]
    rst $28
    xor $24
    ld c, a
    ld c, d
    ld d, [hl]
    inc h
    ld c, e
    ld d, c
    ld d, b
    ld a, [$eff7]
    xor $3e
    ld c, a
    ld b, d
    ld h, d
    ccf
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $2a
    ld a, $51
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    scf
    ld a, $49
    ld b, [hl]
    ld d, b
    ld c, d
    ld a, $4b
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl-]
    ld a, $4b
    ld c, e
    ld a, $62
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld d, b
    rst $28
    xor $4c
    ld b, e
    ld h, d
    jr nc, @+$44

    ld c, d
    ld c, h
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    or [hl]
    ld a, [$eff7]
    xor $25
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    and e
    dec h
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    rst $28
    xor $4c
    ld b, e
    ld h, d
    jr nc, jr_03f_605d

    ld c, d
    ld c, h
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, e
    ld b, d
    ld e, [hl]
    ld a, [$eff7]
    xor $2a
    ld c, h
    ld c, h
    ld c, l
    ld b, [hl]
    ld d, b
    ld e, [hl]
    rst $28
    xor $33
    ld b, [hl]
    ld c, c
    ld c, c
    ld c, h
    ld d, h
    dec [hl]
    ld a, $51
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $26
    ld a, $51
    ld a, $4d
    ld b, [hl]
    ld c, c
    ld a, $50
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc sp
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, [hl]
    ld d, b
    ld h, d
    or [hl]

jr_03f_605d:
    rst $28
    xor $29
    ld a, $46
    ld c, a
    ld d, [hl]
    dec [hl]
    ld a, $51
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld a, $4f
    ld b, d
    rst $28
    xor $30
    ld b, [hl]
    ld c, e
    ld b, [hl]
    daa
    ld c, a
    ld a, $48
    ld d, b
    ld h, d
    or [hl]
    ld a, [$eff7]
    xor $28
    ld d, e
    ld b, [hl]
    ld c, c
    ld [hl], $42
    ld b, d
    ld b, c
    ld d, b
    rst $28
    xor $3f
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $25
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld b, c
    ld b, d
    ld c, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl-]
    ld a, $4b
    ld c, e
    ld a, $62
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld d, b
    rst $28
    xor $4c
    ld b, e
    ld h, d
    inc sp
    ld b, d
    ld a, $40
    ld b, d
    ld h, d
    or [hl]
    ld a, [$eff7]
    xor $25
    ld c, a
    ld a, $53
    ld b, d
    ld c, a
    ld d, [hl]
    ld h, h
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    and e
    dec h
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    rst $28
    xor $4c
    ld b, e
    ld h, d
    inc sp
    ld b, d
    ld a, $40
    ld b, d
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    ld h, d
    dec h
    ld b, [hl]
    ld b, h
    dec [hl]
    ld c, h
    ld c, h
    ld d, b
    ld d, c
    ld d, b
    ld e, [hl]
    rst $28
    xor $36
    ld c, l
    ld c, h
    ld d, c
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $9f
    and e
    ld h, $4c
    ld b, [hl]
    ld c, c
    dec h
    ld b, [hl]
    ld c, a
    ld b, c
    ld d, b
    ld e, [hl]
    rst $28
    xor $27
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld l, $46
    ld b, c
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $26
    ld c, a
    ld b, d
    ld d, b
    ld d, c
    inc sp
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld e, [hl]
    rst $28
    xor $25
    ld c, h
    ld c, e
    ld b, d
    ld [hl], $49
    ld a, $53
    ld b, d
    ld d, b
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    dec hl
    ld c, h
    ld c, a
    ld c, b
    ld d, b
    ld e, [hl]
    rst $28
    xor $24
    ld c, c
    ld c, d
    ld b, [hl]
    ld c, a
    ld a, $47
    ld d, b
    ld h, d
    or [hl]
    ld a, [$eff7]
    xor $25
    ld d, d
    ld c, c
    ld c, c
    dec h
    ld b, [hl]
    ld c, a
    ld b, c
    ld d, b
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    dec h
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $2a
    ld a, $51
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    dec h
    ld c, a
    ld a, $53
    ld b, d
    ld c, a
    ld d, [hl]
    ld e, [hl]
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    rst $28
    xor $27
    ld b, d
    ld c, d
    ld c, h
    ld c, e
    ld b, [hl]
    ld d, c
    ld b, d
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $01
    jr z, jr_03f_624d

    ld b, d
    ld h, $49
    ld c, h
    ld d, h
    ld c, e
    ld d, b
    ld e, [hl]
    rst $28
    xor $29
    ld c, c
    ld c, h
    ld c, a
    ld a, $30
    ld b, d
    ld c, e
    ld e, [hl]
    ld a, [$eff7]
    xor $9f
    and e
    ld [hl], $3e
    ccf
    ld c, a
    ld b, d
    jr nc, @+$44

    ld c, e
    ld h, d
    or [hl]
    ld h, d
    rst $28
    xor $25
    ld b, d
    ld a, $4b
    jr nc, jr_03f_6265

    ld c, e
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl-]
    ld a, $4b
    ld c, e
    ld a, $62
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld a, [$eff7]
    xor $3f

jr_03f_624d:
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld d, b
    rst $28
    xor $4c
    ld b, e
    ld h, d
    ld [hl], $51
    ld c, a
    ld b, d

jr_03f_6265:
    ld c, e
    ld b, h
    ld d, c
    ld b, l
    ld h, d
    or [hl]
    ld h, d
    ld a, [$eff7]
    xor $24
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    and e
    dec h
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    rst $28
    xor $4c
    ld b, e
    ld h, d
    ld [hl], $51
    ld c, a
    ld b, d
    ld c, e
    ld b, h
    ld d, c
    ld b, l
    ld e, [hl]
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    rst $28
    xor $30
    ld d, d
    ld b, c
    daa
    ld c, h
    ld c, c
    ld c, c
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $36
    ld c, b
    ld d, d
    ld c, c
    dec [hl]
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    add hl, hl
    ld a, $46
    ld c, a
    ld d, [hl]
    daa
    ld c, a
    ld a, $48
    ld d, b
    ld e, [hl]
    rst $28
    xor $37
    ld c, a
    ld b, d
    ld b, d
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $48
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    or [hl]
    ld h, d
    ld a, [hl-]
    ld b, [hl]
    ld c, e
    ld b, h
    scf
    ld c, a
    ld b, d
    ld b, d
    ld d, b
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    dec h
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    rst $28
    xor $4c
    ld b, e
    ld h, d
    inc h
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    rst $28
    xor $2a
    ld b, [hl]
    ld a, $4b
    ld d, c
    ld a, [hl-]
    ld c, h
    ld c, a
    ld c, d
    ld d, b
    ld e, [hl]
    ld a, [$eff7]
    xor $2a
    ld b, [hl]
    ld a, $4b
    ld d, c
    ld [hl], $49
    ld d, d
    ld b, h
    ld d, b
    ld e, [hl]
    rst $28
    xor $33
    ld c, h
    ld b, [hl]
    ld d, b
    ld c, h
    ld c, e
    ld b, h
    ld c, h
    ld c, e
    ld d, b
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld h, $3e
    ld d, c
    add hl, hl
    ld c, c
    ld d, [hl]
    ld d, b
    ld e, [hl]
    ld h, d
    jr z, jr_03f_63cc

    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    rst $28
    xor $b6
    ld h, d
    inc sp
    ld d, d
    ld d, c
    ld c, a
    ld b, d
    ld c, l
    ld d, d
    ld c, l
    ld d, b
    ld e, [hl]
    rst $30
    ldh a, [$37]
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld a, $4f
    ld b, d
    rst $28
    xor $49
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld b, d
    ld c, e
    ld b, h
    ld c, a
    ld a, $53
    ld b, d
    ld b, c
    ld a, [$eff7]
    xor $4c
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    dec h
    ld b, d
    ld d, [hl]
    ld c, h
    ld c, e
    ld b, c
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld b, l

jr_03f_63cc:
    ld b, d
    rst $28
    xor $4a
    ld c, h
    ld d, b
    ld d, c
    ld h, d
    ld b, l
    ld c, h
    ld c, c
    ld d, [hl]
    ld h, d
    ld c, l
    ld c, c
    ld a, $40
    ld b, d
    ld a, [$eff7]
    xor $4c
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld [hl], $51
    ld a, $4f
    ld c, a
    ld d, [hl]
    rst $28
    xor $36
    ld b, l
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, d
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld [hl-], a
    ld c, e
    ld c, c
    ld d, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, a
    rst $28
    xor $4a
    ld a, $56
    ld h, d
    ld b, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld c, h
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $36
    ld d, c
    ld a, $4f
    ld c, a
    ld d, [hl]
    ld h, d
    ld sp, $4446
    ld b, l
    ld d, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    sbc h
    ld h, d
    jr nc, @+$40

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    scf
    ld a, $4a
    ld b, d
    ld c, a
    ld e, a
    rst $30
    ldh a, [$9f]
    and e
    or $62
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld b, d
    ld b, c
    rst $28
    xor $46
    ld c, e
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, e
    ld d, c
    ld e, a
    rst $30
    ldh a, [$3a]
    ld c, h
    ld d, h
    ld e, [hl]
    ld h, d
    ld a, $62
    ld [hl], $46
    ld c, a
    ld c, c
    ld c, h
    ld b, [hl]
    ld c, e
    ld h, e
    rst $28
    xor $f7
    ldh a, [$3a]
    ld c, h
    ld d, h
    ld e, [hl]
    ld h, d
    ld b, e
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    ld h, d
    ld a, $ef
    xor $36
    ld b, [hl]
    ld c, a
    ld c, c
    ld c, h
    ld b, [hl]
    ld c, e
    ld h, e
    ld h, d
    dec h
    ld d, d
    ld d, c
    ld h, d
    ld b, b
    ld a, $4b
    ld h, a
    ld a, [$eff7]
    xor $40
    ld a, $4f
    ld c, a
    ld d, [hl]
    ld h, d
    ld a, $4b
    ld d, [hl]
    ld c, d
    ld c, h
    ld c, a
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $f6
    ld h, d
    ld b, h
    ld a, $53
    ld b, d
    ld h, d
    ld d, d
    ld c, l
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $36
    ld b, [hl]
    ld c, a
    ld c, c
    ld c, h
    ld b, [hl]
    ld c, e
    ld e, a
    rst $30
    ldh a, [$2a]
    ld c, h
    ld d, c
    ld h, d
    ld a, $62
    ld a, [hl-]
    ld a, $4f
    ld c, l
    ld a, [hl-]
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    rst $28
    xor $f7
    ldh a, [$29]
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    ld h, d
    ld a, $62
    ld a, [hl-]
    ld a, $4f
    ld c, l
    ld a, [hl-]
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    rst $28
    xor $25
    ld d, d
    ld d, c
    ld h, d
    ld b, b
    ld a, $4b
    ld h, a
    ld h, d
    ld b, b
    ld a, $4f
    ld c, a
    ld d, [hl]
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld d, [hl]
    ld c, d
    ld c, h
    ld c, a
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $f6
    ld h, d
    ld b, h
    ld a, $53
    ld b, d
    ld h, d
    ld d, d
    ld c, l
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $3a
    ld a, $4f
    ld c, l
    ld a, [hl-]
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    rst $30
    ldh a, [$29]
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    ld h, d
    ld bc, $5e00
    nop
    nop
    nop
    ld a, [hl+]
    rst $28
    xor $2a
    ld c, h
    ld d, c
    ld h, d
    ld bc, $5e00
    nop
    nop
    nop
    ld a, [hl+]
    rst $30
    ldh a, [rNR50]
    ld h, d
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, d
    ld a, $4d
    ld c, l
    ld b, d
    ld a, $4f
    ld b, d
    ld b, c
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    ld e, a
    ld e, a
    ld e, a
    ld h, d
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$36]
    ld c, c
    ld c, h
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ccf
    ld b, d
    ld a, $51
    ld b, d
    ld c, e
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    dec hl
    ld c, h
    ld d, h
    ld l, c
    ld b, d
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld b, c
    ld c, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, h
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $2f
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ld b, h
    ld c, h
    ld h, d
    ld b, l
    ld c, h
    ld c, d
    ld b, d
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    cpl
    ld a, $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    or [hl]
    ld h, d
    ld a, [hl+]
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld e, [hl]
    rst $28
    xor $54
    ld b, d
    ld c, c
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld a, [$eff7]
    xor $f6
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld l, b
    ld h, d
    ld a, $ef
    xor $4a
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld e, [hl]
    ld h, d
    ld d, h
    ld b, l
    ld c, h
    ld h, d
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $42
    ld d, l
    ld c, l
    ld b, d
    ld b, b
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    or $ef
    xor $51
    ld c, h
    ld h, d
    ld a, $4d
    ld c, l
    ld b, d
    ld a, $4f
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld c, a
    ld b, d
    ld c, e
    ld a, $62
    ld d, b
    ld c, h
    ld c, h
    ld c, e
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    or $62
    ld a, $40
    ld b, b
    ld b, d
    ld c, l
    ld d, c
    ld b, d
    ld b, c
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld b, b
    ld b, l
    ld a, $49
    ld c, c
    ld b, d
    ld c, e
    ld b, h
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    dec hl
    ld b, d
    ld c, a
    ld b, d
    ld l, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $40
    ld b, l
    ld a, $49
    ld c, c
    ld b, d
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl-]
    ld b, l
    ld c, h
    ld a, $63
    ld h, d
    scf
    ld b, l
    ld b, d
    rst $28
    xor $40
    ld b, l
    ld a, $49
    ld c, c
    ld b, d
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $37
    ld a, $4a
    ld b, d
    ld c, a
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld a, $62
    dec hl
    ld a, $5f
    ld h, d
    or $5e
    rst $28
    xor $50
    ld d, d
    ld c, a
    ld c, l
    ld c, a
    ld b, [hl]
    ld d, b
    ld b, d
    ld b, c
    ld h, h
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld b, b
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld c, e
    ld h, a
    ld h, d
    ld d, b
    ld b, [hl]
    ld d, c
    rst $28
    xor $3f
    ld a, $40
    ld c, b
    ld h, d
    ld d, h
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    inc l
    ld h, d
    ld d, b
    ld a, $54
    ld a, [$eff7]
    xor $54
    ld b, l
    ld a, $51
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld l, h
    ld b, d
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld b, d
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    cpl
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ccf
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    cpl
    ld a, $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    or [hl]
    ld h, d
    ld a, [hl+]
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld e, [hl]
    rst $28
    xor $4d
    ld c, c
    ld b, d
    ld a, $50
    ld b, d
    ld h, d
    ld d, h
    ld b, d
    ld c, c
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld a, [$eff7]
    xor $f6
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc h
    ld d, b
    ld h, d
    ld c, d
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ccf
    ld b, d
    rst $28
    xor $42
    ld d, l
    ld c, l
    ld b, d
    ld b, b
    ld d, c
    ld b, d
    ld b, c
    ld e, [hl]
    ld h, d
    or $fa
    rst $30
    rst $28
    xor $41
    ld c, h
    ld b, d
    ld d, b
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld d, d
    ld c, l
    rst $28
    xor $3e
    ld b, e
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld a, $62
    ld b, b
    ld c, h
    ld d, d
    ld c, l
    ld c, c
    ld b, d
    ld a, [$eff7]
    xor $4c
    ld b, e
    ld h, d
    ld c, c
    ld c, h
    ld d, b
    ld d, b
    ld b, d
    ld d, b
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld a, [hl-]
    ld b, l
    ld a, $51
    ld h, d
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $43
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld d, [hl]
    ld a, [$eff7]
    xor $44
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld d, d
    ld d, b
    ld h, d
    ld c, e
    ld b, d
    ld d, l
    ld d, c
    ld h, e
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld sp, $544c
    ld e, [hl]
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld l, b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    jr nc, jr_03f_6819

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    scf
    ld a, $4a
    ld b, d
    ld c, a
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld a, $62
    dec hl
    ld a, $62
    dec hl
    ld a, $5f
    rst $28
    xor $3c
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4a
    ld b, d
    ld h, d
    ld a, $44
    ld a, $46
    ld c, e
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    dec hl

jr_03f_6819:
    ld c, h
    ld d, h
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld e, [hl]
    rst $28
    xor $f6
    ld h, h
    ld a, [$eff7]
    xor $24
    ld c, a
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    rst $28
    xor $4b
    ld c, h
    ld d, h
    ld h, h
    ld a, [$eff7]
    xor $9f
    and e
    cpl
    ld b, d
    ld d, c
    ld h, d
    ld d, d
    ld d, b
    ld h, d
    ccf
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    cpl
    ld a, $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    or [hl]
    ld h, d
    ld a, [hl+]
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld h, e
    rst $28
    xor $2b
    ld b, d
    ld h, d
    ld c, d
    ld a, $41
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, e
    ld a, [$eff7]
    xor $f6
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc h
    ld h, d
    ld c, e
    ld b, d
    ld d, h
    ld h, d
    ld c, c
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    rst $28
    xor $45
    ld a, $50
    ld h, d
    ccf
    ld b, d
    ld b, d
    ld c, e
    ld h, d
    ccf
    ld c, h
    ld c, a
    ld c, e
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld d, c
    ld l, b
    ld h, d
    or $63
    rst $28
    xor $f6
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $50
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld b, d
    ld d, b
    ld d, c
    ld h, d
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, e
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    cpl
    ld a, $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, d
    or [hl]
    ld h, d
    ld a, [hl+]
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld h, e
    rst $28
    xor $33
    ld c, c
    ld b, d
    ld a, $50
    ld b, d
    ld h, d
    ld c, l
    ld d, d
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $45
    ld a, $4b
    ld b, c
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld b, h
    ld b, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    rst $28
    xor $f6
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc h
    ld c, e
    ld b, c
    ld h, d
    ld b, h
    ld b, [hl]
    ld d, e
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld d, d
    ld c, l
    rst $28
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    jr nc, jr_03f_6972

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    scf
    ld a, $4a
    ld b, d
    ld c, a
    ld h, e
    rst $28
    xor $f7
    ldh a, [$9f]
    and e
    ld a, [hl-]
    ld c, h
    ld d, h
    ld e, [hl]
    ld h, d
    ld a, $ef
    xor $37
    ld b, [hl]
    ld c, e
    ld d, [hl]
    jr nc, @+$44

    ld b, c
    ld a, $49
    ld h, e
    ld h, e
    rst $30
    ldh a, [$9f]
    and e
    ld a, [hl-]
    ld c, h
    ld d, h
    ld e, [hl]
    ld h, d
    ld a, $62
    scf
    ld b, [hl]
    ld c, e
    ld d, [hl]

jr_03f_6972:
    jr nc, jr_03f_69b6

    ld b, c
    ld a, $49
    rst $28
    xor $54
    ld a, $50
    ld h, d
    ld b, e
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    ld h, e
    ld a, [$eff7]
    xor $25
    ld d, d
    ld d, c
    ld h, d
    ld b, b
    ld a, $4b
    ld h, a
    ld h, d
    ld b, b
    ld a, $4f
    ld c, a
    ld d, [hl]
    rst $28
    xor $3e
    ld c, e
    ld d, [hl]
    ld c, d
    ld c, h
    ld c, a
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    or $62
    ld b, h
    ld a, $53
    ld b, d
    ld h, d
    ld d, d
    ld c, l
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    scf
    ld b, [hl]

jr_03f_69b6:
    ld c, e
    ld d, [hl]
    jr nc, jr_03f_69fc

    ld b, c
    ld a, $49
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld b, l
    ld d, [hl]
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $3f
    ld c, a
    ld b, d
    ld b, d
    ld b, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld c, d
    ld d, [hl]
    ld a, [$eff7]
    xor $29
    ld a, $4b
    ld b, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    rst $28
    xor $f0
    ld [$a39f], a
    ld [hl], $46
    ld c, e
    ld b, b
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d

jr_03f_69fc:
    ld [hl], $51
    ld a, $4f
    ld c, a
    ld d, [hl]
    rst $28
    xor $31
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    inc [hl]
    ld d, d
    ld b, d
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $45
    ld a, $50
    ld h, d
    ld b, b
    ld b, l
    ld a, $4b
    ld b, h
    ld b, d
    ld b, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld [hl], $45
    ld b, d
    ld h, d
    ld d, b
    ld d, c
    ld a, $4f
    ld d, c
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $50
    ld a, $56
    ld h, d
    ld d, b
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld b, h
    ld c, h
    ld a, [$eff7]
    xor $3f
    ld a, $40
    ld c, b
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $40
    ld a, $50
    ld d, c
    ld c, c
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl-]
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld h, d
    jr nc, jr_03f_6ab3

    ld b, a
    ld b, d
    ld d, b
    ld d, c
    ld d, [hl]
    rst $28
    xor $44
    ld c, h
    ld b, d
    ld d, b
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld e, [hl]
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    rst $28
    xor $45
    ld a, $4d
    ld c, l
    ld d, [hl]
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, d
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ccf

jr_03f_6ab3:
    ld b, d
    ld h, d
    ld c, h
    ld c, e
    ld b, d
    rst $28
    xor $4c
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld c, h
    ld c, h
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld a, [$eff7]
    xor $43
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    rst $28
    xor $53
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld h, d
    or $5f
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld h, d
    ld b, l
    ld b, d
    ld a, $4f
    ld b, c
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, b
    ld b, l
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld d, c
    ld c, a
    ld d, d
    ld b, d
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, e
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc a
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld d, e
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $42
    ld c, e
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld c, d
    ld b, d
    ld e, [hl]
    ld a, [$eff7]
    xor $f6
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc h
    ld h, d
    ld b, c
    ld b, [hl]
    ld b, e
    ld b, e
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld d, c
    rst $28
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld d, h
    ld a, $50
    ld h, d
    ccf
    ld c, h
    ld c, a
    ld c, e
    ld a, [$eff7]
    xor $51
    ld b, l
    ld c, a
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld a, $4a
    ld b, d
    rst $28
    xor $40
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld c, e
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld h, d
    ld b, [hl]
    ld b, e
    ld h, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $46
    ld d, b
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld a, $52
    ld d, b
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld a, [$eff7]
    xor $54
    ld c, h
    ld c, e
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld [hl-], a
    ld c, a
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld a, $52
    ld d, b
    ld b, d
    rst $28
    xor $4c
    ld b, e
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld b, h
    ld c, h
    ld c, h
    ld b, c
    ld h, d
    ld a, $40
    ld d, c
    ld h, h
    rst $30
    ldh a, [$f6]
    ld h, d
    ld d, c
    ld c, h
    ld d, d
    ld b, b
    ld b, l
    ld b, d
    ld b, c
    ld h, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $43
    ld c, a
    ld c, h
    ld c, e
    ld d, c
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    or $5e
    ld h, d
    ld c, l
    ld c, c
    ld b, d
    ld a, $50
    ld b, d
    rst $28
    xor $54
    ld b, [hl]
    ld c, e
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld c, d
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld d, h
    ld a, $4b
    ld c, e
    ld a, $62
    ccf
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $48
    ld b, d
    ld b, d
    ld c, l
    ld b, d
    ld c, a
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $39
    ld a, $52
    ld c, c
    ld d, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    dec hl
    ld a, $53
    ld b, d
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ccf
    ld c, h
    ld d, b
    ld d, b
    rst $28
    xor $4f
    ld b, d
    ld d, c
    ld b, [hl]
    ld c, a
    ld b, d
    ld b, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc sp
    ld c, c
    ld b, d
    ld a, $50
    ld b, d
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    rst $28
    xor $51
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld a, $4b
    ld d, [hl]
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld a, [$eff7]
    xor $3e
    ccf
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    jr nc, @+$58

    ld h, d
    ccf
    ld c, h
    ld d, b
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld c, c
    ld b, c
    ld h, d
    ld c, d
    ld b, d
    rst $28
    xor $2c
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld a, $4b
    ld a, [$eff7]
    xor $3e
    ld c, l
    ld c, l
    ld c, a
    ld b, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, b
    ld b, d
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld bc, $ef00
    xor $4a
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld d, [hl]
    ld b, d
    ld a, $4f
    ld d, b
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    ld sp, $624c
    ld d, h
    ld a, $56
    ld h, e
    ld h, d
    inc l
    ld h, d
    ld b, b
    ld a, $4b
    ld h, a
    rst $28
    xor $50
    ld d, c
    ld a, $4b
    ld b, c
    ld h, d
    ccf
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld a, $4b
    ld a, [$eff7]
    xor $3e
    ld c, l
    ld c, l
    ld c, a
    ld b, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, b
    ld b, d
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld bc, $ef00
    xor $4a
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld d, [hl]
    ld b, d
    ld a, $4f
    ld d, b
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld d, c
    ld b, l
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld c, d
    ld d, [hl]
    rst $28
    xor $41
    ld c, a
    ld b, d
    ld a, $4a
    ld h, d
    ld d, h
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld a, [$eff7]
    xor $51
    ld c, a
    ld d, d
    ld b, d
    ld h, d
    ld d, h
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    or $ef
    xor $54
    ld c, h
    ld c, e
    ld e, a
    ld e, a
    ld e, a
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    rst $28
    xor $51
    ld c, h
    ld h, d
    ccf
    ld c, a
    ld b, d
    ld b, d
    ld b, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld c, d
    ld d, [hl]
    ld a, [$eff7]
    xor $28
    ld d, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $f0
    ld [$a39f], a
    ld a, [hl-]
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    rst $28
    xor $51
    ld c, h
    ld h, d
    ccf
    ld c, a
    ld b, d
    ld b, d
    ld b, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld c, d
    ld d, [hl]
    ld a, [$eff7]
    xor $3c
    ld b, d
    ld d, c
    ld b, [hl]
    ld h, h
    rst $28
    xor $f0
    ld [$a39f], a
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $3f
    ld c, a
    ld b, d
    ld b, d
    ld b, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld c, d
    ld d, [hl]
    ld a, [$eff7]
    xor $30
    ld b, d
    ld d, c
    ld a, $49
    ld d, [hl]
    ld h, h
    rst $28
    xor $f0
    ld [$a39f], a
    inc a
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    ld h, d
    ld a, $51
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $40
    ld a, $50
    ld d, c
    ld c, c
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $2a
    ld c, a
    ld b, d
    ld a, $51
    scf
    ld c, a
    ld b, d
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld d, c
    ld l, l
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld a, $62
    ld b, h
    ld c, h
    ld c, h
    ld b, c
    rst $28
    xor $46
    ld b, c
    ld b, d
    ld a, $62
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld a, $48
    ld b, d
    ld h, d
    ld a, $fa
    rst $30
    rst $28
    xor $49
    ld c, h
    ld c, h
    ld c, b
    ld h, d
    ld a, $4f
    ld c, h
    ld d, d
    ld c, e
    ld b, c
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld a, [hl-]
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld d, [hl]
    ld l, c
    ld b, d
    rst $28
    xor $49
    ld b, d
    ld b, e
    ld d, c
    ld h, d
    ld c, h
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, e
    ld a, $4f
    ld c, d
    ld e, [hl]
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld d, [hl]
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld c, c
    ld b, d
    ld a, $4f
    ld c, e
    rst $28
    xor $50
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld b, c
    ld b, [hl]
    ld b, c
    ld c, e
    ld h, a
    ld h, d
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    rst $28
    xor $51
    ld b, l
    ld a, $51
    ld h, d
    ld d, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, c
    ld a, [$eff7]
    xor $4f
    ld b, d
    ld b, b
    ld b, d
    ld c, e
    ld d, c
    ld c, c
    ld d, [hl]
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, d
    ld b, b
    ld a, $4b
    ld h, a
    ld h, d
    ld d, b
    ld b, [hl]
    ld d, c
    rst $28
    xor $3f
    ld a, $40
    ld c, b
    ld h, e
    ld h, d
    inc l
    ld h, d
    ld b, h
    ld c, h
    ld d, c
    ld d, c
    ld a, $fa
    rst $30
    rst $28
    xor $44
    ld c, h
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, e
    ld a, $4f
    ld c, d
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld h, d
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    rst $28
    xor $36
    ld h, d
    ld b, b
    ld c, c
    ld a, $50
    ld d, b
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld l, h
    ld b, d
    ld h, d
    ld c, e
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    rst $28
    xor $43
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld a, [$eff7]
    xor $3f
    ld d, d
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld c, d
    ld b, d
    ld a, $4b
    ld d, b
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    ld h, d
    ccf
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $51
    ld b, l
    ld a, $4b
    ld h, d
    ld c, d
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    dec hl
    ld c, h
    ld d, h
    ld h, d
    ld d, b
    ld a, $41
    ld h, e
    ld h, d
    dec h
    ld d, d
    ld d, c
    rst $28
    xor $44
    ld c, h
    ld c, h
    ld b, c
    ld h, d
    ld c, c
    ld d, d
    ld b, b
    ld c, b
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $51
    ld c, h
    ld d, d
    ld c, a
    ld c, e
    ld a, $4a
    ld b, d
    ld c, e
    ld d, c
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld l, h
    ld b, d
    ld h, d
    ld c, e
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    rst $28
    xor $43
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld a, [$eff7]
    xor $3f
    ld d, d
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld c, d
    ld b, d
    ld a, $4b
    ld d, b
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    ld h, d
    ccf
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $51
    ld b, l
    ld a, $4b
    ld h, d
    ld c, d
    ld b, d
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    dec hl
    ld c, h
    ld d, h
    ld h, d
    ld d, b
    ld a, $41
    ld h, e
    ld h, d
    dec h
    ld d, d
    ld d, c
    rst $28
    xor $44
    ld c, h
    ld c, h
    ld b, c
    ld h, d
    ld c, c
    ld d, d
    ld b, b
    ld c, b
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $3f
    ld a, $51
    ld d, c
    ld c, c
    ld b, d
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    dec hl
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $33
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, b
    ld b, [hl]
    ld c, l
    ld a, $49
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld [hl], $40
    ld b, l
    ld c, h
    ld c, h
    ld c, c
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    dec hl
    ld b, d
    ld c, a
    ld b, d
    ld l, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $50
    ld d, c
    ld c, a
    ld a, $4b
    ld b, h
    ld b, d
    ld h, d
    ld b, c
    ld c, h
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $43
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ccf
    ld c, h
    ld d, c
    ld d, c
    ld c, h
    ld c, d
    rst $28
    xor $4c
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, h
    ld b, d
    ld c, c
    ld c, c
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld c, a
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld d, c
    rst $28
    xor $46
    ld d, c
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld e, a
    ld e, a
    ld e, a
    ld h, d
    scf
    ld b, l
    ld b, d
    ld c, e
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, c
    ld e, [hl]
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld c, h
    ld c, e
    ld c, c
    ld d, [hl]
    rst $28
    xor $3f
    ld c, a
    ld c, h
    ld d, d
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld c, h
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4b
    ld h, a
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld a, $ef
    xor $4a
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld c, h
    ld d, d
    ld d, c
    ld a, [$eff7]
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    ld [hl-], a
    ld d, d
    ld c, a
    ld h, d
    ld b, e
    ld a, $53
    ld c, h
    ld c, a
    ld b, [hl]
    ld d, c
    ld b, d
    ld h, e
    rst $28
    xor $2b
    ld b, d
    ld c, a
    ld b, d
    ld l, b
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    jr nc, jr_03f_7164

    ld b, b
    ld c, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    dec hl
    ld b, d
    ld c, a
    ld b, d
    ld l, b
    ld h, d
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    scf
    ld b, d
    ld d, c
    ld c, h
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    dec hl
    ld b, d
    ld c, a
    ld b, d
    ld l, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $51
    ld b, [hl]
    ld c, a
    ld b, d
    ld b, c
    ld h, d
    ld b, h
    ld d, d
    ld d, [hl]
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, a
    ld b, d

jr_03f_7164:
    ld d, b
    ld d, c
    ld a, $52
    ld c, a
    ld a, $4b
    ld d, c
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    dec hl
    ld b, d
    ld c, a
    ld b, d
    ld l, b
    ld h, d
    jr nc, @+$40

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $30
    ld a, $56
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    dec hl
    ld b, d
    ld c, a
    ld b, d
    ld l, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $4a
    ld b, d
    ld b, c
    ld a, $49
    ld h, d
    ld c, c
    ld c, h
    ld d, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $4a
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld e, [hl]
    ld h, d
    jr nc, jr_03f_71f2

    ld b, c
    ld a, $49
    ld h, d
    jr nc, jr_03f_71f4

    ld c, e
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    ld l, $46
    ld c, e
    ld b, h
    and e
    dec hl
    ld c, d
    ld c, d
    ld e, a
    ld h, d
    inc l
    ld d, c
    ld l, b
    ld h, d
    ld a, $4b
    rst $28
    xor $42
    ld d, l
    ld a, $44
    ld b, h
    ld b, d
    ld c, a
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld e, a
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    ccf
    ld d, d
    ld d, b
    ld d, [hl]
    ld e, a
    rst $28
    xor $3c

jr_03f_71f2:
    ld c, h
    ld d, d

jr_03f_71f4:
    ld l, c
    ld b, d
    ld h, d
    ld b, c
    ld b, [hl]
    ld d, b
    ld c, d
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld b, c
    ld e, a
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    dec h
    ld d, d
    ld d, b
    ld d, [hl]
    ld h, e
    ld h, d
    dec h
    ld d, d
    ld d, b
    ld d, [hl]
    ld h, e
    rst $28
    xor $25
    ld d, d
    ld d, b
    ld d, [hl]
    ld h, e
    ld h, d
    rst $30
    ldh a, [$a3]
    cpl
    ld b, d
    ld d, b
    ld d, b
    ld c, h
    ld c, e
    ld h, d
    ld b, $ef
    xor $fa
    rst $30
    rst $28
    xor $a3
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld b, l
    ld a, $51
    ld b, d
    ld b, c
    rst $28
    xor $3f
    ld d, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld a, [$eff7]
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    rst $28
    xor $54
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld a, $51
    ld d, c
    ld a, $40
    ld c, b
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld c, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld a, $62
    ld d, b
    ld d, c
    ld a, $43
    ld b, e
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, a
    ld b, d
    ld a, $41
    rst $28
    xor $54
    ld b, l
    ld a, $51
    ld l, b
    ld h, d
    ld c, e
    ld b, d
    ld d, l
    ld d, c
    ld h, h
    rst $38
    ldh a, [$a3]
    cpl
    ld b, d
    ld d, b
    ld d, b
    ld c, h
    ld c, e
    ld h, d
    rlca
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $a3
    dec [hl]
    ld b, d
    ld d, b
    ld d, c
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    dec hl
    inc sp
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld a, [$eff7]
    xor $54
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    ld e, a
    rst $28
    xor $f7
    ldh a, [$a3]
    cpl
    ld b, d
    ld d, b
    ld d, b
    ld c, h
    ld c, e
    ld h, d
    rlca
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $a3
    dec [hl]
    ld b, d
    ld d, b
    ld d, c
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    dec hl
    inc sp
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld a, [$eff7]
    xor $54
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, h
    ld b, d
    ld d, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $4b
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, a
    ld b, d
    ld a, $41
    rst $28
    xor $54
    ld b, l
    ld a, $51
    ld l, b
    ld h, d
    ld c, e
    ld b, d
    ld d, l
    ld d, c
    ld h, h
    rst $38
    ldh a, [$a3]
    cpl
    ld b, d
    ld d, b
    ld d, b
    ld c, h
    ld c, e
    ld h, d
    ld [$eeef], sp
    ld a, [$eff7]
    xor $a3
    scf
    ld c, h
    ld h, d
    ld d, c
    ld a, $4a
    ld b, d
    ld e, [hl]
    ld h, d
    ld b, b
    ld d, d
    ld c, a
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $4d
    ld c, h
    ld b, [hl]
    ld d, b
    ld c, h
    ld c, e
    ld h, d
    or [hl]
    ld h, d
    ld c, l
    ld a, $4f
    ld a, $49
    ld d, [hl]
    ld d, b
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $4c
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld b, c
    ld b, d
    ld d, b
    ld b, [hl]
    ld c, a
    ld b, d
    ld e, a
    rst $30
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
