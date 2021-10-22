; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02f", ROMX[$4000], BANK[$2f]

    cpl
    ld [hl], c
    ld b, b
    adc e
    ld b, c
    ld e, e
    ld b, d
    ld b, h
    ld b, e
    cp $43
    xor l
    ld b, h
    sub d
    ld b, l
    ld [hl], b
    ld b, [hl]
    inc l
    ld b, a
    xor [hl]
    ld b, a
    inc d
    ld c, b
    jp nz, $a348

    ld c, c
    add l
    ld c, d
    ld c, b
    ld c, e
    push af
    ld c, e
    rst $10
    ld c, h
    adc a
    ld c, l
    ld a, a
    ld c, [hl]
    db $10
    ld c, a
    jr nc, jr_02f_407b

    call nc, $8b50
    ld d, c
    add [hl]
    ld d, d
    dec a
    ld d, e
    di
    ld d, e
    ld e, b
    ld d, h
    db $f4
    ld d, h
    jp c, Jump_02f_7055

    ld d, [hl]
    inc de
    ld d, a
    rst $10
    ld d, a
    dec sp
    ld e, c
    add e
    ld e, d
    add sp, $5a
    sbc a
    ld e, e
    and $5c
    pop de
    ld e, [hl]
    cp $5f
    ld a, d
    ld h, c
    ret nc

    ld h, d
    add l
    ld h, h
    or d
    ld h, l
    sub c
    ld h, a
    ld de, $ef69
    ld l, d
    ld l, l
    ld l, h
    ld e, c
    ld l, l
    ld b, a
    ld l, a
    rst $30
    ld [hl], b
    ld d, $72
    sub [hl]
    ld [hl], e
    ld h, d
    ld [hl], l
    ld d, e
    db $76
    sub e
    ld [hl], a
    xor d
    ld a, c
    ld b, b
    ld bc, $0301
    inc bc
    inc c
    rrca
    ld d, $1f
    dec l

jr_02f_407b:
    dec sp
    ld a, $31
    dec l
    ld [hl-], a
    ld e, l
    ld [hl], d
    ld a, e
    ld e, [hl]
    scf
    ld a, [hl-]
    ld c, e
    ld a, h
    rst $30
    sbc a
    ld l, b
    ld [hl], a
    rra

jr_02f_408d:
    inc e
    ld a, [hl+]
    scf
    ccf
    ld hl, $1f1f
    db $ec
    ld e, h
    ret c

    jr c, jr_02f_408d

    db $fc
    inc h
    db $fc
    ld hl, sp+$48
    inc a
    db $fc
    db $ec
    db $f4
    ld a, b
    ld a, b
    ld bc, $f2fe
    ld e, $1f
    dec l
    inc sp
    ld e, [hl]
    ld [hl], c
    dec a
    ld [hl+], a
    ld l, e
    ld [hl], h
    ld bc, $000e
    dec de
    inc e
    cpl
    ccf
    inc l
    scf
    dec sp
    inc a
    inc a
    cpl
    rra
    rra
    sbc $7a
    db $ec
    ld e, h
    jp nc, $ee3e

    ld a, [$fc3c]
    call nc, $fc6c
    add h
    ld hl, sp-$08
    rlca
    rlca
    add hl, bc
    rrca
    ld [de], a
    rra
    inc h
    ccf
    add hl, hl
    ccf
    ld a, [hl+]
    ccf
    inc sp
    ccf
    ld d, $1d
    ldh a, [$f0]
    adc b
    ld hl, sp+$3c
    db $fc
    or $ca
    cp d
    sbc $fc
    xor h
    ld a, b
    ret z

    db $fc
    inc l
    rra
    inc e
    ld a, [de]
    rla
    rrca
    rrca
    ld a, [bc]
    rrca
    rla
    dec e
    ld a, [de]
    rra
    scf
    cpl
    ld e, $1e
    db $fc
    inc h
    add sp, $18
    ld bc, $0070
    ld a, b
    cp b
    ld e, h
    db $e4
    ld bc, $005c
    nop
    nop
    ldh a, [$f0]
    cp b
    ld hl, sp+$7c
    call z, $bad6
    cp e
    ld l, l
    cp $ce
    ld hl, sp+$08
    ld d, $1d
    ld bc, $0280
    add hl, de
    rra
    inc [hl]
    cpl
    ld e, $13
    rrca

jr_02f_412a:
    rrca
    db $fc
    inc l
    ld bc, $0290
    jr z, jr_02f_412a

    cp h
    call c, $fe72
    db $fc
    db $fc
    inc c
    inc c
    dec de
    rla
    inc a
    cpl
    db $10
    rra
    jr nz, @+$41

    jr nz, jr_02f_4183

    ld [hl], b
    ld a, a
    ldh a, [$bf]
    db $ec
    cp a
    ld [hl], e
    ld a, a
    inc a
    ccf
    ld e, e
    ld [hl], a
    ld a, a
    ld a, h
    ld a, $33
    ld hl, $1f3f
    rra
    scf
    db $fd
    adc $fe
    jr c, @-$06

    call nc, $fcfc
    inc h
    inc e
    ld bc, $032b
    inc e
    inc e
    dec sp
    daa
    inc e
    rra
    ld bc, $0ad6
    inc l
    ccf
    ld l, e
    ld e, a
    dec sp
    inc a
    ld bc, $008c
    rrca
    db $fd
    ld bc, $00f0
    inc a
    db $fc
    ld a, [$fcfe]
    ld c, h

jr_02f_4183:
    add h
    db $fc
    ld bc, $009e
    ld bc, $0a60
    nop
    ld bc, $0009
    nop
    ld [$6c08], sp
    ld l, h
    sbc d
    cp $8a
    cp $ab
    rst $38
    jp c, $92df

    sbc l
    daa
    ld a, [hl-]
    ld [hl+], a
    dec a
    inc h
    ccf
    inc de
    rra
    inc c
    rrca
    inc bc
    inc bc
    ld bc, $0001
    nop
    db $e4
    ld e, h
    ld b, h
    cp h
    inc h
    db $fc
    ret z

    ld hl, sp+$30
    ldh a, [$c0]
    ret nz

    and b
    ldh [rSVBK], a
    ld [hl], b
    add hl, bc
    nop
    nop
    inc c
    inc c
    ld a, [bc]
    ld c, $3a
    ld a, $4b
    ld a, a
    sbc d
    rst $38
    ld a, [c]
    db $fd
    add hl, bc
    cp $f0
    jr nc, @+$32

    ld c, b
    ld a, b
    add h
    db $fc
    add e
    rst $38
    adc c
    rst $38
    cp h
    rst $38
    nop
    nop
    add b
    add b
    add hl, bc
    ld a, [hl+]
    nop
    and b
    ldh [$98], a
    ld hl, sp-$6c
    db $fc
    ld b, $fa
    jp z, $98cf

    sbc a
    jr z, @+$41

    ld c, h
    ld a, a
    ld d, e
    ld [hl], e
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    nop
    nop
    rrca
    push af
    dec b
    ei
    inc hl
    rst $38
    ld e, $fe
    inc c
    db $fc
    ldh a, [$f0]
    add hl, bc
    or $f8
    inc e
    inc e
    inc hl
    ccf
    ld b, c
    ld a, a
    add b
    rst $38
    adc [hl]
    rst $38
    cp b
    rst $38
    ret z

    rst $08
    adc h
    adc a
    inc de
    rra
    inc d
    inc e
    inc d
    inc e
    ld c, $0e
    add hl, bc
    nop
    inc b
    add [hl]
    cp $87
    rst $38
    and d
    rst $38
    jp nc, $a0df

    cp a
    jr nz, jr_02f_4270

    ld [hl+], a
    ccf
    ld [de], a
    rra
    ld c, $0f
    ld [bc], a
    inc bc
    dec b
    rlca
    ld c, $0e
    dec b
    db $fd
    inc b
    db $fc
    ld b, h
    db $fc
    ld c, b
    ld hl, sp+$70
    ldh a, [$c0]
    ret nz

    add b
    add b
    add hl, bc
    cp $f2
    add hl, bc
    inc [hl]
    ld [bc], a
    ld b, a
    ld a, a
    add d
    rst $38
    ld a, [c]
    rst $38
    add hl, bc
    and b
    rst $38
    dec c
    nop
    ld bc, $0505
    rst $38
    db $f4
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    inc e
    rra
    ld [hl+], a
    dec a
    ld [hl], a
    ld a, d
    ld [hl], d

jr_02f_4270:
    ld a, l
    inc l
    ccf
    rla
    rra
    inc c
    rrca

jr_02f_4277:
    inc bc
    inc bc
    ld a, b
    ld hl, sp+$74
    cp h
    xor $5e
    ld c, [hl]
    cp [hl]
    inc [hl]
    db $fc
    add sp, -$08
    jr nc, jr_02f_4277

    ret nz

    ret nz

    dec b
    cp $f8
    inc bc
    inc bc
    ld b, $07
    dec b
    rst $38
    ldh a, [$60]
    ld h, b
    sub b
    ldh a, [$90]
    ldh a, [$88]
    ld hl, sp+$1c
    db $fc
    ld c, $fe
    ld [de], a
    dec e
    daa
    ld a, [hl-]
    ld a, [hl-]
    dec a
    inc a
    ccf
    ccf
    ccf
    jr jr_02f_42ca

    ld [$070f], sp
    rlca
    ld c, b
    cp b
    db $fc
    ld e, h

jr_02f_42b3:
    ld e, h
    cp h
    inc [hl]
    db $fc
    db $e4
    db $fc
    jr c, jr_02f_42b3

    ld [hl], b
    ldh a, [$e0]
    ldh [rNR34], a
    rra
    ld h, $3f
    ld [hl], b
    ld a, a
    ld [hl], c
    ld a, a
    ld hl, $1c3f

jr_02f_42ca:
    rra
    ld e, $1f

jr_02f_42cd:
    rrca
    rrca
    db $10
    ldh a, [rNR10]
    ldh a, [rOBP0]
    cp b
    add sp, $58
    ret z

    cp b
    ld hl, sp-$08
    jr nc, jr_02f_42cd

    ldh [$e0], a
    dec b
    rst $38
    ldh a, [rTMA]
    ld b, $09
    rrca
    add hl, bc
    rrca
    ld de, $381f
    ccf
    ld a, b
    ld a, a
    db $10
    rra
    jr nc, jr_02f_4331

    ld a, [hl-]
    ccf
    add hl, sp
    ccf
    db $10
    rra
    rla
    rra
    rrca
    rrca
    inc bc
    inc bc
    dec b
    add h
    nop
    ld c, b
    cp b
    adc b
    ld hl, sp+$05
    adc d
    nop
    jr nz, @-$1e

    ret nz

    ret nz

    inc e
    rra
    jr nz, jr_02f_434f

    ld [hl], e
    ld a, a
    ld [hl], a
    ld a, a
    inc hl
    ccf
    inc d
    dec b
    dec de
    inc bc
    inc [hl]
    db $fc
    ld c, $fe
    adc [hl]
    cp $34
    db $fc
    ld a, b
    ld hl, sp+$70
    ldh a, [$c0]
    ret nz

    inc de
    rra
    inc sp
    ccf
    inc hl
    ccf
    jr c, jr_02f_436f

    inc a

jr_02f_4331:
    ccf
    inc e
    dec b
    ld e, e
    ld bc, $f838
    adc h
    db $fc
    inc c
    db $fc
    inc b
    db $fc
    ld h, h
    dec b
    reti


    ld bc, $e0e0
    nop
    ld bc, $7001
    ld [hl], b
    adc b
    ld hl, sp-$79
    rst $38
    add [hl]
    db $fd

jr_02f_434f:
    adc a
    ld a, [$7d52]
    ld d, h
    ld a, a
    dec hl
    ccf
    jr jr_02f_4371

    inc h
    inc a
    ld b, a
    ld a, a
    ld b, [hl]

Jump_02f_435e:
    ld a, l
    ld c, a
    ld a, d
    ld bc, $020a
    rra
    rra
    rrca
    ld a, [bc]
    rra
    ld d, $3f
    ld a, [hl+]
    ccf
    ld a, [hl-]
    rlca

jr_02f_436f:
    dec b
    ld [bc], a

jr_02f_4371:
    ld [bc], a
    nop
    nop
    ldh a, [$f0]
    ld hl, sp-$58
    cp $ae
    cp $b2
    db $ec
    db $ec
    ret nz

    ld b, b
    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    rra
    dec d
    ld a, a
    ld [hl], l
    ld a, a
    ld c, l
    scf
    scf
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $002e
    ldh a, [$50]
    ld hl, sp+$68
    db $fc
    ld d, h
    db $fc
    ld e, h
    ldh [$a0], a
    ld b, b
    ld b, b
    nop
    nop
    jr nc, jr_02f_43d5

    ld c, h
    ld a, h
    ld b, a
    ld a, a
    ld b, d
    ld a, a
    inc h
    ccf
    jr z, jr_02f_43ee

    jr jr_02f_43d0

    inc c
    rrca
    ld bc, $f0fc
    ret nz

    ret nz

    ld h, b
    and b
    ldh a, [$50]
    ld c, b
    cp b
    adc b
    ld hl, sp+$78
    ld hl, sp+$1c
    inc e
    inc h
    inc a
    daa
    ccf
    ld [hl+], a
    ccf
    ld bc, $0f68
    dec b
    rrca
    rrca

jr_02f_43d0:
    ld bc, $0a22
    and $e6

jr_02f_43d5:
    cp $ba
    cp $a2
    db $fc
    call c, $b8b8
    ld bc, $0f3a
    rlca
    db $fc
    ld l, h
    ld bc, $0656
    ld bc, $0210
    ld b, h
    ld a, a
    ld b, b
    ld a, a
    ld d, b

jr_02f_43ee:
    ld a, a
    jr nc, jr_02f_4430

    jr jr_02f_4412

    ld h, b
    ld h, b
    sub b
    ldh a, [$8b]
    ei
    add h
    rst $38
    ld bc, $04e8
    nop
    ld bc, $1e04
    ld e, $1d
    inc de
    rrca
    add hl, bc
    ld b, $07
    dec b
    rlca
    dec b
    rlca
    ld a, [bc]
    ld c, $0a
    ld c, $3e

jr_02f_4412:
    ld a, $5c
    ld h, h
    ld hl, sp-$78
    ldh a, [$f0]
    add b
    add b
    inc b
    ld a, [$12f2]
    ld e, $21
    ccf
    ld d, h
    ld l, e
    ld a, [hl]
    ld d, l
    sub h
    db $eb
    and d
    rst $38
    ld e, h
    ld a, a
    ccf
    ccf
    inc b
    db $fc

jr_02f_4430:
    ldh a, [$80]
    add b
    ld b, b
    ret nz

    inc b
    ld [hl], $00
    inc b
    jr jr_02f_443f

    rlca
    rlca
    inc bc
    ld [bc], a

jr_02f_443f:
    ld bc, $0101
    ld bc, $0706
    add hl, bc
    rrca
    inc b
    db $fc
    ldh a, [$8e]
    adc [hl]
    ld d, a
    reti


    xor $f6
    jr c, @-$06

    ret nz

    ret nz

    inc b
    db $fc
    ld a, [c]
    dec c
    dec bc
    ld b, $05
    inc bc
    inc bc
    inc b
    ld a, [$7cf2]
    ld a, h
    cp b
    ret z

    ldh a, [$90]
    ldh [$e0], a
    and b
    ldh [$a0], a
    ldh [$50], a
    ld [hl], b
    ld d, b
    ld [hl], b
    ld c, b
    ld a, b
    add h
    db $fc
    ld a, [bc]
    or $1e
    ld [$f60a], a
    ld [hl+], a
    cp $1c
    db $fc
    ld hl, sp-$08
    inc b
    ld a, [$0df2]
    dec c
    dec sp
    scf
    rrca
    add hl, bc
    rlca
    rlca
    inc b
    ld a, [$f0f2]
    ldh a, [$60]
    and b
    ret nz

    ld b, b
    ret nz

    ret nz

    jr nz, @-$1e

    sub b
    ldh a, [rDIV]
    add b
    nop
    ld [bc], a
    cp $02
    cp $01
    rst $38
    ld bc, $02ff
    cp $fc
    db $fc
    inc b
    and b
    rst $38
    dec l
    nop
    ld bc, $0002
    nop
    ld bc, $0a01
    dec bc
    inc c
    rrca
    dec hl
    cpl
    inc sp
    ccf
    ld [$a0ff], a
    rst $38
    rrca
    rrca
    ld sp, $f93f
    rst $38
    add a
    rst $38
    ld e, d
    cp $2a
    cp $4f
    rst $38
    add hl, bc
    rst $38
    ld c, a
    ld a, a
    ld e, a
    ld a, a
    dec [hl]
    ld a, [hl-]
    rra
    dec d
    dec h
    ld a, [hl-]
    jr z, jr_02f_451b

    rra
    rra

jr_02f_44de:
    nop
    nop
    ld [c], a
    cp $f4
    db $fc
    jr c, jr_02f_44de

    sbc b
    ld a, b
    db $10
    ldh a, [$a0]
    ldh [$c0], a
    ret nz

    nop
    nop
    ld [bc], a
    jr nz, jr_02f_44f3

jr_02f_44f3:
    jr nc, jr_02f_4534

    db $10
    rra
    ld l, d
    ld [hl], l
    sbc a
    ld [$f5aa], a
    ld a, a
    ld a, a
    ld [bc], a
    jr nc, jr_02f_4502

jr_02f_4502:
    ld a, b
    ld hl, sp+$18
    ld hl, sp+$08
    ld hl, sp+$02
    jr c, jr_02f_450f

    nop
    nop
    ld b, b
    ld b, b

jr_02f_450f:
    ret nz

    ret nz

    ret nc

    ret nc

    ld [hl], b
    ldh a, [rOBP0]
    ld hl, sp+$04
    db $fc
    ld b, [hl]
    ld a, a

jr_02f_451b:
    dec h
    ccf
    inc d
    rra
    add hl, bc
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld a, [hl-]
    cp $7e
    cp $e6
    ld a, [$f58f]
    dec b
    ei
    adc c

jr_02f_4534:
    rst $38
    cp $fe
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld [c], a
    cp $82
    cp $05
    ei
    rrca
    push af
    add l
    ei
    ld a, [hl]
    ld a, [hl]
    ld [bc], a
    cp $f0
    ldh a, [$f0]
    adc h
    db $fc
    sbc a

jr_02f_454e:
    rst $38
    pop hl
    rst $38
    ld e, d
    ld a, a
    ld d, h
    ld a, a
    ld [bc], a
    db $fc
    ld a, [c]
    add b
    add b
    ld d, b
    ret nc

    jr nc, jr_02f_454e

    call nc, $ccf4
    db $fc
    ld a, [c]
    rst $38
    sub b
    rst $38
    ld b, e
    ld a, a
    ld [hl+], a
    ccf
    jr jr_02f_458b

    rra
    rra
    inc b
    rlca
    inc bc
    inc bc
    ld d, a
    rst $38
    dec b
    rst $38
    ld a, [hl+]
    cp $a2
    cp $1c
    db $fc
    add sp, -$08
    inc b
    db $fc
    ld hl, sp-$08
    ld [bc], a
    ret nz

    ld [$0303], sp
    nop
    nop
    ld [bc], a
    ret nc

jr_02f_458b:
    ld b, $e2
    cp $fc
    db $fc
    nop
    nop
    nop
    ld bc, $0002
    nop
    ld hl, $7721
    ld d, [hl]
    ld a, c
    ld e, [hl]
    ld a, a
    ld d, a
    ld a, a
    ld d, b
    adc a
    ei
    ld a, a
    ld e, b
    nop
    nop
    ldh a, [$f0]
    ret z

    ld hl, sp+$26
    cp $fc
    call c, $1efe
    rst $38
    and c
    or e
    ld l, l
    cpl
    cpl
    ld b, $07
    ld [$100f], sp
    rra
    inc h
    dec sp
    ld l, $35
    inc d
    dec de
    rrca
    rrca
    di
    db $ed
    ld [hl], e
    db $ed
    cp $f2
    ld e, $fe
    inc h
    call c, $ac74
    jr z, @-$26

    ldh a, [$f0]

jr_02f_45d5:
    and $e6
    ld a, [de]
    cp $c4
    db $fc
    jr z, jr_02f_45d5

    ldh a, [$d0]
    ld [bc], a
    ld a, [de]
    inc b
    ld c, $0f
    jr nc, jr_02f_4625

    ld b, b
    ld a, a
    add h
    ei
    ld l, [hl]
    ld [hl], l
    rra
    rra
    nop
    nop
    ld [bc], a
    jr nc, jr_02f_45f7

    ld hl, $76df
    xor [hl]

jr_02f_45f7:
    ld hl, sp-$08
    ld [bc], a
    cp $f0
    add h
    add h

Jump_02f_45fe:
    xor $6a
    ld a, $fa
    db $fc
    db $d4, $fc, $14
    ld hl, sp-$08
    db $fc
    inc a
    rst $08
    or a
    adc $b7
    ld a, a
    ld c, a
    ld a, b
    ld a, a
    jr nz, jr_02f_4653

    jr nz, jr_02f_4655

    db $10
    rra
    rrca
    rrca
    ld [bc], a
    ld [hl], b
    rrca
    dec b
    add b
    rst $38
    ld h, b
    ld a, a
    ld [bc], a
    ld e, h
    nop

jr_02f_4625:
    nop
    nop
    rlca
    rlca
    add hl, de
    rra
    ld h, b
    ld a, a
    inc sp
    ccf
    ld a, h
    ld a, a
    rst $38
    add h
    call $02b6
    ld [hl], b
    ld [bc], a
    sbc [hl]
    ld a, [$ea1e]
    ld e, $ea
    pop af
    rra
    cp $3a
    db $d4, $f4, $18
    ld hl, sp-$38
    ld hl, sp+$38
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [$e0]
    ldh [$67], a

jr_02f_4653:
    ld h, a
    ld e, b

jr_02f_4655:
    ld a, a
    ld hl, $123f
    rra
    inc c
    rrca
    ld a, h
    ld a, e
    ld [bc], a
    cp h
    nop
    db $d4, $f4, $10
    ldh a, [$c8]
    ld hl, sp+$3e
    cp $01
    rst $38
    ld b, $fe
    ld [bc], a
    ld l, h
    nop
    nop
    ld bc, $0401
    rlca
    ld a, [bc]
    dec c
    rla
    ld a, [de]
    ld h, d
    ld a, l
    add h
    rst $38
    add e
    rst $38
    ld [hl], b
    ld a, a
    rrca
    rrca
    ld bc, $0002
    ld [de], a
    dec e
    inc h
    ccf
    ld b, e
    ld a, a
    ld b, b
    ld a, a
    jr nc, jr_02f_46cf

    rrca
    rrca
    ld bc, $f0fc
    ld b, c
    ld b, c
    db $e3
    and d
    ld b, c
    ld b, c
    ld [$1c08], sp
    inc d
    dec bc
    dec bc
    inc b
    inc b
    ld c, $0a
    inc b
    inc b
    add b
    add b
    nop
    nop
    ld bc, $0030
    call nz, Call_000_20c4
    jr nz, jr_02f_4723

    ld d, b
    ld hl, $0321
    ld [bc], a
    ld b, c
    ld b, c
    db $e3
    and e
    ld b, h
    ld b, a
    ld [$100f], sp
    db $10
    jr c, jr_02f_46ec

    db $10
    db $10

jr_02f_46c6:
    add b
    add b
    ld [bc], a
    ld [bc], a
    rst $00
    push bc
    ld [hl+], a
    ld [c], a
    db $10

jr_02f_46cf:
    ldh a, [rSB]
    jr nz, jr_02f_46e2

    dec l
    inc b
    rlca
    ld [$080f], sp
    rrca
    jr nc, jr_02f_471b

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    jr c, @+$41

jr_02f_46e2:
    rlca
    rlca
    jr nz, jr_02f_46c6

    ld d, b
    or b
    add sp, $58
    ld b, h
    cp h

jr_02f_46ec:
    add h
    db $fc
    ld a, h
    db $fc
    inc c
    db $fc
    ldh a, [$f0]
    ld bc, $00a2
    ld [$110f], sp
    rra
    jr nz, jr_02f_473c

    jr nz, jr_02f_473e

    jr jr_02f_4720

    rlca
    rlca
    ld d, b
    or b
    ldh a, [$50]
    ld d, b
    or b

jr_02f_4709:
    ld [$fcf8], sp
    db $fc
    inc b
    db $fc
    jr jr_02f_4709

    ldh [$e0], a
    ld bc, $00a0
    db $10
    rra
    ld h, b
    ld a, a
    add b

jr_02f_471b:
    rst $38
    add b
    ld bc, $010b

jr_02f_4720:
    ld bc, $00e2

jr_02f_4723:
    db $10
    rra
    jr nz, jr_02f_4728

    and a

jr_02f_4728:
    ld bc, $1c01
    nop
    nop
    ld bc, $0101
    rst $38
    db $f4
    rrca
    rrca
    db $10
    rra
    ld [de], a
    dec e
    rla
    ld a, [de]
    ld [de], a
    dec e

jr_02f_473c:
    inc d
    rra

jr_02f_473e:
    inc de
    rra
    db $10
    rra
    rrca
    rrca
    ld bc, $fcf8

jr_02f_4747:
    rlca
    rlca
    jr jr_02f_476a

    ld [hl+], a
    dec a
    ld b, a
    ld a, d
    ld c, d
    ld a, l
    daa
    ccf
    ld bc, $0e16
    ld bc, $0008
    ld bc, $004a
    ld bc, $f4ff
    ldh a, [$f0]
    ld [$28f8], sp
    ret c

    ld a, b
    xor b
    ld bc, $024a

jr_02f_476a:
    ld bc, $0616
    jr z, jr_02f_4747

    ld c, b
    ld hl, sp+$38
    ld hl, sp+$08
    ld hl, sp-$10
    ldh a, [rSB]
    ld hl, sp-$04
    inc bc
    inc bc
    inc c
    rrca
    jr nc, jr_02f_47bf

    ld bc, $f6fe
    ldh [$e0], a
    jr @-$06

    inc d
    db $ec
    ld b, b
    ld a, a
    ld bc, $00a0
    jr nc, jr_02f_47cf

    ld bc, $0418
    ld a, [hl-]
    sub $52
    xor $3c
    db $fc
    ld bc, $0e76
    ld bc, $0448
    ld bc, $0c60
    ld bc, $0a20
    jr nz, @+$41

    ld bc, $00a0
    jr nz, jr_02f_47ad

    dec [hl]

jr_02f_47ad:
    rlca
    nop
    ld bc, $0101
    rst $38
    or $20
    jr nz, jr_02f_47d7

    jr nz, jr_02f_4809

    ld [hl], b
    inc b
    rlca
    ld a, [bc]
    dec c
    rla

jr_02f_47bf:
    ld a, [de]
    ld [hl+], a
    dec a
    inc h
    ccf
    inc de
    rra
    rrca
    rrca
    nop
    nop
    ld bc, $0210
    rla
    ld a, [de]

jr_02f_47cf:
    ld [de], a
    dec e
    inc d
    rra
    dec bc
    rrca
    rlca
    rlca

jr_02f_47d7:
    inc b
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_02f_481e

    jr nz, jr_02f_4820

    db $10
    ld bc, $031b
    ld bc, $0032
    ld bc, $0244
    ld [$070f], sp
    rlca
    ld b, b
    ret nz

    ld h, b
    and b
    ldh a, [$50]
    ld c, b
    cp b
    adc b
    ld hl, sp+$70
    ldh a, [$e0]
    ldh [rP1], a
    nop
    ld bc, $0250
    ldh a, [$50]
    ld d, b
    or b
    sub b
    ldh a, [$60]

jr_02f_4809:
    ldh [$c0], a
    ret nz

    ld bc, $ffa0
    ld c, l
    ld bc, $0fcf
    dec e
    nop
    ld bc, $0702
    rlca
    ld [$100f], sp
    rra
    db $10

jr_02f_481e:
    rra
    ld [hl+], a

jr_02f_4820:
    dec a
    ld b, a
    ld a, d
    ld b, d
    ld a, l
    ld b, h
    ld a, a
    inc hl
    ccf
    inc e
    rra
    dec de
    rla
    ccf
    ld a, [hl+]
    ccf
    ld a, [hl+]
    ccf
    dec l
    rla
    dec d
    inc bc
    inc bc
    adc b
    ld hl, sp+$70
    ldh a, [$b0]
    ret nc

    ld hl, sp-$58
    ld hl, sp-$58
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    jr nz, @+$22

    ld [bc], a
    stop
    rrca
    dec bc
    rra
    dec d
    ccf
    dec l
    ccf

jr_02f_4851:
    ld a, [hl-]
    rlca
    ld b, $01
    ld bc, $2002
    nop
    ldh [$a0], a
    ldh a, [$50]
    ldh a, [$50]
    ld hl, sp-$58
    ret c

    ret c

    ld [bc], a
    cp $f6
    jr nz, jr_02f_48a7

    ld b, b
    ld a, a
    ld [bc], a
    ld e, d
    nop
    ret nz

    ret nz

    jr nz, jr_02f_4851

    db $10
    ldh a, [rNR10]
    ldh a, [$28]
    ret c

    ld [hl], h
    xor h

jr_02f_4879:
    inc h
    call c, $fc44
    inc e
    db $fc
    jr c, jr_02f_4879

    ret c

    add sp, -$04
    ld d, h
    db $fc
    ld d, h
    db $fc
    or h
    add sp, -$58
    ret nz

    ret nz

    ld [bc], a
    ld [hl], b
    nop
    ldh a, [$d0]
    ld hl, sp-$58
    db $fc
    or h
    db $fc
    ld e, h
    ldh [$60], a
    add b
    add b
    jr nz, jr_02f_48dd

    jr jr_02f_48bf

    rra
    ld [bc], a
    dec d
    rlca
    ld [$30f8], sp

jr_02f_48a7:
    ldh a, [rSC]
    add h
    nop
    ld [bc], a
    jr z, jr_02f_48b2

    ld [bc], a
    sub b
    nop
    rrca

jr_02f_48b2:
    rrca
    ld [bc], a
    ld [hl], $06
    ld [bc], a
    and b
    nop
    ldh [$e0], a
    ld [bc], a
    ld b, [hl]
    ld b, $02

jr_02f_48bf:
    rst $08
    rrca
    dec e
    nop

jr_02f_48c3:
    ld bc, HeaderLogo
    ld bc, $0203
    dec b
    ld b, $75
    db $76
    inc a
    cpl
    ld e, $17
    add hl, bc
    rrca
    db $d2, $dd, $00

    nop
    ldh [$e0], a
    ldh [$a0], a
    ld [hl], b
    or b

jr_02f_48dd:
    cp b
    ld c, b
    ldh a, [$d0]
    jr nz, jr_02f_48c3

    sub [hl]
    db $76
    rst $20
    cp d
    ld b, d
    ld a, l
    rst $10
    rst $38
    cp $ab
    ld l, a
    ld d, e
    ccf
    inc hl
    inc e
    inc e
    nop
    nop
    inc b
    jr nz, jr_02f_48f8

jr_02f_48f8:
    rst $00
    rst $38
    ld [c], a
    cp a
    ld [hl], c
    ld a, a
    cpl
    ccf
    ld a, [hl]
    ld d, [hl]
    jr z, jr_02f_492c

    ld [bc], a
    ld [bc], a
    rlca
    dec b
    dec bc
    dec c
    ld [$79ed], a
    ld e, [hl]
    add hl, sp
    cpl
    adc $f7
    xor h
    rst $18
    nop
    nop
    ret nz

    ret nz

    ret nz

    ld b, b
    ldh [$60], a
    ld [hl], b
    sub b
    ldh [$a0], a
    ret nz

    ret nz

    ld h, b
    and b
    ld [hl], b
    ld a, a
    ld hl, sp-$71
    ld [hl], b
    ld e, a
    ret nc

    cp a

jr_02f_492c:
    xor b
    rst $38
    ld e, b
    ld a, a
    daa
    daa
    nop
    nop
    ldh a, [$50]
    ld c, [hl]
    cp [hl]
    ld a, a
    ld sp, hl
    ld e, e
    rst $30
    inc h
    db $fc
    ld c, b
    ld hl, sp-$50
    or b
    inc b
    db $fc
    ldh a, [rDIV]
    ld d, d
    ld [$c040], sp
    scf
    ccf
    ld a, $29
    dec hl
    scf
    ld a, $3b
    ld [hl], h
    ld e, a
    ld e, e
    ld h, a
    ld l, $31
    rra
    rra
    ld a, [bc]
    or $9d
    db $eb
    add hl, bc
    rst $30
    rrca
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    ld a, [$04fa]
    cp $f2
    inc bc
    ld [bc], a
    ld [hl], l
    db $76
    dec a
    ld l, $1d
    ld d, $0d
    ld a, [bc]
    push de
    sbc $04
    db $10
    inc b
    ld a, b
    adc b
    or b
    ld d, b
    ldh [$60], a
    ld d, [hl]
    or $f4
    cp a
    ld a, d
    ld c, a
    jp hl


    sbc a
    or $cf
    ld l, l
    ld d, e
    ld l, d
    ld [hl], l
    add hl, de
    rra
    ld b, $06
    cp $ab
    ld [hl], a
    ld c, c
    sub $fd
    rst $38
    xor d
    cp [hl]
    db $eb
    ld b, e
    ld a, a
    inc a
    inc a
    inc b
    and b
    cp $00
    ld bc, $0202
    rst $38
    db $f4
    inc c
    inc c
    ld a, [de]
    ld d, $16
    ld a, [de]
    cpl
    ld sp, $191f
    daa
    ld a, [hl-]
    ld a, e
    ld b, l
    ld a, l
    ld c, d
    ld c, a
    ld a, a
    cpl
    inc sp
    dec e
    ld e, $03
    inc bc
    ret c

    cp b
    db $f4
    ld c, h
    xor [hl]
    jp nc, $3ed2

    cp $f2
    call nc, $b8ec
    ld a, b
    ret nz

    ret nz

    ld [bc], a
    db $fc
    ld hl, sp+$3c
    inc a
    rst $20
    db $db
    rla
    add hl, de
    scf
    ld l, $5d
    ld h, d
    ld h, a
    ld e, c
    ld a, e
    ld b, [hl]
    dec l
    dec sp
    dec de
    inc d
    rrca
    rrca
    add sp, -$68
    db $f4
    ld l, h
    sbc [hl]
    ld h, d
    ld a, [c]
    adc [hl]
    add $7a
    adc h
    db $f4
    ld l, b
    sbc b
    ldh a, [$f0]
    ld e, $19
    ld a, [hl-]
    dec h
    ld l, l
    ld d, d
    ld [hl], d
    ld c, a
    ld [hl], l
    ld c, e
    dec l
    ld [hl-], a
    ld e, $19
    rlca
    rlca
    ldh a, [$30]
    cp b
    ld l, b
    ld a, h
    sbc h
    sbc h
    ld h, h
    ld e, h
    db $fc
    ld hl, sp-$08
    ldh a, [$30]
    ld [bc], a
    ld l, $06
    ld c, $0e
    dec de
    dec d
    inc sp
    inc l
    db $76
    ld c, c
    ld [bc], a
    cp $f6
    cp b
    cp b
    ld a, b
    ret z

    ldh a, [rNR10]
    ld d, l
    ld l, d
    daa
    ld a, [hl-]

jr_02f_4a2e:
    inc sp
    ld l, $1f
    inc de
    rra
    dec de
    rrca
    dec c
    rlca
    ld b, $01
    ld bc, $9070
    sub b
    ld [hl], b
    cp b
    ld c, b
    ld a, b
    sbc b
    ld hl, sp+$28
    ret c

    cp b
    ldh a, [$d0]
    ldh [$e0], a
    rra
    jr jr_02f_4a70

    inc a
    ld a, b
    ld b, a
    ld a, l
    ld b, d
    ld e, e

jr_02f_4a53:
    ld h, h
    ld h, $39
    ld [bc], a
    inc e
    nop
    jr jr_02f_4a53

    ld [hl], h
    adc h
    ld l, [hl]
    sub d
    sub d
    ld l, [hl]
    cp [hl]
    ld b, d
    ld d, h
    xor h
    ld [bc], a
    inc l
    nop
    dec d
    ld a, [de]
    ld [hl], $29
    ld e, a
    ld h, b
    ld h, h
    ld e, e

jr_02f_4a70:
    ld a, e
    ld b, h
    dec l
    ld [hl-], a
    ld [bc], a
    ld c, h
    nop
    ret z

    jr c, jr_02f_4a2e

    ld c, h
    ld [bc], a
    call nc, $d600
    ld a, [hl+]
    adc h
    ld [hl], h
    ld [bc], a
    ld e, h
    nop
    nop
    ld bc, $0505
    rst $38
    db $f4
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    dec b
    rst $38
    db $f4
    add b
    add b
    ld c, [hl]
    adc $51
    rst $18
    ld h, l
    rst $38
    jr jr_02f_4abf

    inc h
    dec sp
    ld c, [hl]
    ld [hl], l
    ld b, h
    ld a, e
    ld b, h
    ld a, a
    inc hl
    ccf
    jr @+$21

    rlca
    rlca
    db $fd
    rst $38
    db $fd
    rst $38
    cp $de

jr_02f_4ab4:
    ld a, [hl]
    cp $3e
    cp $c4
    db $fc
    jr jr_02f_4ab4

    ldh [$e0], a
    dec b

jr_02f_4abf:
    ld [bc], a
    ld a, [bc]
    ld [$050f], sp
    ld [de], a
    ld a, [bc]
    call $14ff
    dec de
    ld e, $15
    inc h
    dec sp
    jr nz, jr_02f_4b0f

    ld [hl+], a
    ccf
    ld de, $0c1f
    rrca
    inc bc
    inc bc
    dec b
    ld [hl-], a
    inc b
    ld b, h
    db $fc
    adc b
    ld hl, sp+$30
    ldh a, [$c0]
    ret nz

    sub e
    rst $38
    rst $18
    rst $38
    ld a, a
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ld a, a
    jr nz, jr_02f_4af4

    dec hl
    ld bc, $f8f8
    db $fc

jr_02f_4af4:
    db $fc
    cp $ee
    ld a, [$e2fe]
    cp $04
    dec b
    dec sp
    ld bc, $ff9f
    ld e, a
    ld a, a
    ld a, a
    ld a, a
    cpl
    ccf
    inc hl
    ccf
    db $10
    dec b
    ld l, e
    ld bc, $f8f8

jr_02f_4b0f:
    ld hl, sp-$28
    db $fc
    db $fc
    db $f4
    db $fc
    db $c4, $fc, $08
    dec b
    ld a, e
    ld bc, $ffbf
    cp a
    rst $38
    ld a, a
    ld a, a

jr_02f_4b21:
    ld a, [hl]
    ld a, a
    ld a, h
    dec b
    adc c
    inc bc
    jr jr_02f_4b21

    inc b
    db $fc
    ld [bc], a
    cp $05
    call nc, Call_000_0500
    sbc d
    ld [bc], a
    dec b
    and d
    nop
    dec b
    add $02
    dec b
    xor d
    ld [bc], a
    ld [$08f8], sp
    ld hl, sp+$04
    db $fc
    dec b
    db $f4
    nop
    dec b
    cp d
    ld [bc], a
    nop
    ld bc, $0505
    rst $38
    ldh a, [rSB]
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    rlca
    ld [$120f], sp
    dec e
    daa
    ld a, [hl-]
    ld [hl+], a
    dec a
    inc [hl]
    ccf
    ld c, e
    ld a, a
    ld b, h
    ld a, a
    ld b, a
    ld a, a
    ld d, h
    ld a, h
    jr c, jr_02f_4ba2

    dec b
    inc b
    inc c
    inc h

jr_02f_4b6e:
    ccf
    ld d, e
    ld a, a
    ld c, h
    ld a, a
    adc e
    ei
    adc b
    ld hl, sp-$58
    ld hl, sp-$58
    ld hl, sp+$70
    ld [hl], b
    dec b
    inc b
    ld b, $10
    rra
    jr nz, jr_02f_4bc3

    inc l
    ccf
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_02f_4b6e

    db $10
    ldh a, [$28]
    ret c

    ld [hl], h
    xor h
    inc h
    call c, Call_000_3f22
    ld de, $091f
    rrca
    add hl, de
    rra
    ld hl, $2b3f
    ccf

jr_02f_4ba2:
    ld [hl], $3e
    inc e
    inc e
    adc h
    db $fc
    ld a, b
    ld hl, sp+$30
    ldh a, [$e0]
    ldh [rTIMA], a
    ld hl, sp-$01
    inc bc
    db $10
    rra
    dec b
    rst $38
    ldh a, [rTIMA]
    ld d, b
    ld [$3f20], sp
    daa
    ccf
    ld hl, $103f
    rra
    inc c

jr_02f_4bc3:
    rrca
    ld [$090f], sp
    rrca
    rlca
    rlca
    dec b
    ld e, h
    nop
    adc h
    db $fc
    ld hl, sp-$08
    or b
    ldh a, [rTIMA]
    ld d, d
    nop
    add b
    add b
    dec b
    ld b, b
    ld a, [bc]
    dec b
    call z, Call_000_3000
    ccf
    ld c, h
    ld a, a
    ld b, a
    ld a, a
    jr c, jr_02f_4c1e

    dec b
    cp $f2
    jr nz, @+$41

    ld d, b
    dec b
    inc sp
    ld bc, $3a05
    ld [bc], a
    dec b
    and b
    cp $00
    ld bc, $0004
    nop
    ld bc, $0701
    ld b, $1a
    dec e
    ld e, $15
    rla
    ld a, [de]
    ld [hl], a
    ld a, a
    db $fc
    rst $38
    ld a, [$effd]
    ld a, [$7d4e]
    ld e, a
    ld a, e
    ld b, a
    ld a, h
    dec sp
    ccf
    inc e
    rra
    rlca
    rlca
    ld c, a
    cp a
    rst $30
    ld e, a
    db $76
    cp [hl]

jr_02f_4c1e:
    cp $de
    ld [c], a
    ld a, $f4
    db $fc
    jr c, jr_02f_4c1e

    ldh [$e0], a
    inc b
    cp $ff
    ld bc, $7a5f
    adc [hl]
    db $fd
    sbc a
    ei
    ld a, a
    ld a, h
    dec sp
    ccf
    rrca
    rrca
    ccf
    rst $38
    ld b, a
    cp a
    ld a, [c]
    ld e, [hl]
    ld [hl], a
    cp a
    rst $38
    rst $18
    ld a, [$cc3e]
    db $fc
    ldh a, [$f0]
    nop
    nop
    inc bc
    inc bc
    dec c
    ld c, $0f
    ld a, [bc]
    rra
    rra
    ccf
    inc b
    ld l, d
    ld bc, $8080
    ldh [$60], a
    ld e, b
    cp b
    ld a, b
    xor b
    add sp, $58
    ld hl, sp-$08
    sub h
    db $ec
    inc a
    call nc, $3f2e
    jr nz, jr_02f_4ca9

    jr c, @+$41

    inc a
    ccf
    ld e, $1f
    ld e, $1f
    ld c, $0f
    inc bc
    inc bc
    ld d, d
    xor $62
    cp $7e
    sbc $fe
    ld [c], a
    ld e, $fe
    ld h, h
    db $fc
    ld a, b
    ld hl, sp-$20
    ldh [$5e], a
    ld a, a
    ld b, b
    ld a, a
    ld a, b
    ld a, a
    inc a
    ccf
    ld a, $3f
    ld e, $1f
    rlca
    rlca
    nop
    nop
    inc b
    sub b
    ld b, $6c
    inc b
    ld e, l
    ld bc, $fff9
    db $e3
    rst $38
    ld b, e
    ld a, a
    ld b, c
    ld a, a
    ld e, b
    ld a, a
    inc a
    inc b

jr_02f_4ca9:
    dec de
    ld bc, $ff8f
    rst $08
    rst $38
    add $fe
    adc [hl]
    cp $02
    cp $3c
    inc b
    sbc e
    ld bc, $fffc
    ld sp, hl
    rst $38
    ld h, e
    ld a, a
    add e
    rst $38
    or c
    rst $38
    ld a, b
    ld a, a
    jr c, jr_02f_4ccb

    ld c, l
    ld bc, $ff87

jr_02f_4ccb:
    jp nz, $c7fe

    rst $38
    add a
    rst $38
    ld a, d
    cp $fc
    db $fc
    ldh a, [$f0]
    nop
    ld bc, $0102
    ld bc, $1717
    dec e
    rra
    dec de
    ld d, $1e
    ld de, $171f
    ld a, [de]
    dec e
    daa
    ld a, [hl-]
    ld [bc], a
    cp $fa
    ld a, [hl-]
    dec a
    ld a, [hl+]
    dec a

jr_02f_4cf1:
    ld c, h
    ld a, a
    ld e, a
    ld a, e
    ld b, a
    ld a, h
    ld b, e
    ld a, a
    jr nz, jr_02f_4d3a

    jr jr_02f_4d1c

    rlca
    rlca
    ld b, a
    ld a, d
    adc d
    db $fd
    adc h
    rst $38
    sbc a
    ei
    add a
    db $fc
    ld b, e
    ld a, a
    jr nc, jr_02f_4d4c

    rrca
    rrca
    nop
    nop
    dec bc
    dec bc
    ld c, $0f
    dec c
    dec bc
    rrca
    ld [$0f0f], sp
    db $10

jr_02f_4d1c:
    rra
    db $10
    rra

Jump_02f_4d1f:
    add b
    add b
    add sp, -$18
    cp b
    ld hl, sp-$28
    ld l, b
    jr c, jr_02f_4cf1

    ld hl, sp-$08
    inc d
    db $ec
    inc a
    call nc, Call_000_3f20
    ld [bc], a
    ld h, b
    ld [bc], a
    ld [bc], a
    ld c, h
    nop
    inc c
    rrca
    inc bc

jr_02f_4d3a:
    inc bc
    ld d, d
    xor $62
    cp $7e
    sbc $fe
    ld [c], a
    ld e, $fe
    inc b
    db $fc
    jr @-$06

    ldh [$e0], a
    ld [bc], a

jr_02f_4d4c:
    db $fc
    ldh a, [rSC]
    ld b, d
    inc b
    rra
    rra
    jr nz, jr_02f_4d94

    nop
    nop
    ld [bc], a
    ld d, b
    ld a, [bc]
    ld b, b
    ld a, a
    ld [bc], a
    and b
    ld [bc], a
    ld [bc], a
    ld h, b
    nop
    ld [bc], a
    inc l
    nop
    inc a
    call nc, Call_02f_7002
    ld b, $0c
    db $fc
    ldh a, [$f0]
    ld [bc], a
    nop
    ld b, $1e
    dec e
    inc de
    ld [bc], a
    adc l
    ld bc, $c002
    ld [$3f33], sp
    jr nz, jr_02f_4dbd

    ld [bc], a
    and b
    ld b, $02
    inc l
    nop
    ld b, b
    ld a, a
    add b
    rst $38
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld b, b
    ld [bc], a
    dec sp
    ld bc, $0240
    ld [$08ff], sp

jr_02f_4d94:
    rst $38
    rst $38
    ld c, l
    ld [$0a0f], sp
    ld bc, $6a08
    inc bc
    ld bc, $1ddf
    rst $00
    ld e, l
    xor a
    reti


    ld c, a
    cp c
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld e, a
    ldh [$1f], a
    add b
    ccf
    and b
    cp a
    ld h, a
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    rlca

jr_02f_4dbd:
    db $fd
    rlca
    push af
    rrca
    pop af
    inc bc
    ld sp, hl
    rrca
    db $fd
    rrc b
    ld c, $04
    rst $30
    ld [hl], b
    rst $00
    ld [hl], h
    db $eb
    ld [hl], $e5
    dec sp
    ld [$0c0e], sp
    db $fc
    nop
    cp $03
    ld [$01c2], sp
    ld [bc], a
    ld [$026e], sp
    rrca
    ld sp, hl
    add a
    ld c, a
    add hl, sp
    cp a
    ld a, [hl]
    ld b, [hl]
    cp $83
    cp $03
    ld hl, sp+$01
    db $fd
    ld b, $98
    ld e, a
    sub b
    ld e, a
    adc b
    ld l, a
    call nz, $c027
    scf
    add b
    ld a, a
    nop
    rst $38
    inc b
    ei
    dec [hl]
    ei
    dec d
    ei
    add hl, hl
    push af
    ld d, c
    db $ed
    nop
    ld hl, sp+$08
    cp a
    nop
    ld b, b
    cp [hl]
    ldh [$3e], a
    jp nz, $38e4

    ld a, [$c4fc]
    cp $82
    rst $38
    add c
    cp a
    add b
    ld a, a
    ld b, b
    ld a, a
    nop
    rst $38
    add b
    ld [$1312], sp
    ld [$0f0f], sp
    ld [bc], a
    db $fd
    ld b, $fc
    rlca
    ld hl, sp+$01
    ld [$04c8], sp
    rst $38
    nop
    ld c, $f5
    inc b
    ei
    jr @+$01

    db $10
    ldh a, [rP1]
    ld a, b
    ret nz

    rst $18
    ldh a, [$30]
    rst $38
    rrca
    ldh [$5e], a

jr_02f_4e47:
    ld b, b
    cp [hl]
    jr nc, jr_02f_4e47

    db $10
    inc e
    ld bc, $0739
    and $1f
    jr @+$01

    ldh [$7f], a
    ld b, b
    ld a, a
    ld b, b
    cp a
    ld [$1f17], sp
    ld b, $08
    ld c, $0f
    rrca
    db $fc
    inc b
    db $fc
    dec b
    cp $03
    ld [$1438], sp
    rst $38
    nop
    ccf
    jr nz, jr_02f_4eaf

    and b
    rra
    ret nc

    rrca
    ld l, b
    ld a, a
    ld [hl], b
    ld [$0f0e], sp
    ld c, l
    ld [$1fe0], sp
    inc de
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    ld c, l
    dec b
    ld e, a
    rrca
    ld c, l
    dec b
    cp a
    rrca
    ld c, l
    dec b
    db $e3
    rrca
    rrca
    ld bc, $03fe
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ld sp, hl
    nop
    db $fc
    rlca
    cp $0f
    dec b
    ld [c], a
    ld bc, $0580
    ld d, h
    db $10
    ccf
    nop
    rst $38
    ld b, b
    ccf
    ldh [rTIMA], a
    inc c

jr_02f_4eaf:
    rra
    daa
    cp $06
    rst $38
    rlca
    rst $38
    rlca
    sbc $1f
    db $fc
    ld a, a
    add b
    rst $08
    ld h, h
    ei
    ld l, [hl]
    ld [hl], l
    inc b
    ld a, e
    or b
    rst $38
    ld hl, sp-$01
    rla
    ldh a, [$37]
    call nz, $f27f
    rst $38
    cp c
    ld a, [$715d]
    cp a
    add hl, de
    rst $38
    jr c, @+$01

    dec b
    ld [c], a
    dec b
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    ld a, a
    ret nz

    dec b
    ld [c], a
    rrca
    ld c, $07
    rst $38
    inc bc
    rst $38
    ld bc, $e205
    ld b, $df
    rst $38
    rst $00
    rst $18
    add b
    add a
    ret nz

    ret nz

    ldh a, [$30]
    rst $38
    dec b
    ld c, a
    ld de, $fff0
    adc $ff
    rra
    rst $38
    rra
    ld e, $1f
    jr @+$01

    dec b
    ld e, a
    ld [de], a
    ret nz

    rst $38
    add b
    dec b
    ld [c], a
    rrca
    add hl, bc
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld c, l
    nop
    ei
    inc bc
    add sp, $0b
    ldh [$2f], a
    call nz, $d87b
    ld h, a
    ret c

    ld h, a
    db $ec
    inc sp
    rst $38
    nop
    rst $30
    ldh a, [rTIMA]
    db $f4
    ld de, $06ed
    ld sp, hl
    inc bc
    db $fc
    nop
    cp $00
    rst $38
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, a
    nop
    ld a, a
    ld b, b
    ccf
    ldh [$1f], a
    ld [hl], b
    rrca
    jr c, jr_02f_4f47

    ld [bc], a
    ld [bc], a

jr_02f_4f47:
    db $fd

jr_02f_4f48:
    ld bc, $05fc
    ld hl, sp+$0f
    ldh a, [rNR32]
    ldh [$39], a
    rst $38
    nop
    rst $18
    rra
    ld b, b
    ld e, a
    rra
    ld h, b
    ld h, b
    sbc a
    ld [bc], a
    ld bc, $ff02
    nop

jr_02f_4f60:
    cp a
    add b
    cpl
    and b
    rrca
    add sp, $67
    sbc h
    daa
    call c, $fc07
    rrca
    ld hl, sp-$0e
    dec e
    ld sp, hl
    ld c, $fc
    dec b
    db $fd
    ld bc, $0202
    inc b
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    jr nz, jr_02f_4f60

    add b
    rst $38
    ret nz

    ld a, a
    pop af
    ccf
    ld sp, hl
    add hl, bc
    daa
    cp h
    inc de
    sbc a
    db $10
    sbc a
    jr z, jr_02f_4f48

    ld [hl], b
    ld c, a
    db $e4
    sbc e
    ld c, [hl]
    or l
    inc b
    ei
    ret z

    ld a, e
    sub b
    di
    db $10
    di
    ld [$04fb], sp
    db $fd
    ld b, d
    cp a
    pop hl
    ld e, a
    ld b, c
    cp a
    ld bc, $03fe
    db $fc
    nop
    rst $38
    add hl, bc
    rst $30
    di
    ld c, $67
    sbc h
    rra
    ld hl, sp+$3f
    jr nz, @+$21

    ldh a, [$3f]
    ldh [$7f], a
    ld b, b
    ld a, a
    ld [bc], a
    ld bc, $070f
    rlca
    ei
    rrca
    rst $38
    inc c
    rst $38
    dec de
    rst $38
    ld d, $ff
    ld d, $fb
    ld c, $f9
    add hl, bc
    inc c
    rst $38
    ld [$80f8], sp
    ld hl, sp-$40
    ld a, a
    or b
    rst $38
    cp a
    rst $28
    cp a
    xor e
    rst $38
    ld l, d
    ld h, c
    rst $38
    ld hl, $033f
    ld a, $07
    db $fd
    rra
    db $fd
    ei
    xor $fb
    ld e, d
    rst $38
    xor l
    rst $38
    ret nz

    cp a
    ldh [rIE], a
    ld h, b
    rst $38
    or b
    ld a, a
    ret nc

    rst $38
    ret nc

    cp a
    ldh [$3f], a
    jr nz, jr_02f_5006

    ld [bc], a
    rrca

jr_02f_5006:
    ld c, $07
    ld [bc], a
    ld [bc], a
    dec bc
    ld l, l
    rst $38
    xor l
    rst $38
    ld d, $ff
    dec d
    rst $38
    ld [$0202], sp
    inc bc
    ld l, e
    rst $38
    ld l, d
    rst $38
    call nc, Call_02f_50ff
    rst $38
    and b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ret nz

    ld [bc], a
    ld [bc], a
    rrca
    ld c, l
    ld [bc], a
    ldh [$1f], a
    dec bc
    ld b, b
    ld [bc], a
    ld [$08ff], sp
    rst $38
    rst $38
    ld c, l
    ld [$0f2f], sp
    dec de
    ld bc, $2e08
    add hl, bc
    rst $38
    ei
    ld b, $08
    ld d, h
    rrca
    ld a, [hl+]
    ld [$00db], sp
    ld [bc], a
    rst $38
    inc b
    rst $38
    dec b
    cp $77
    cp $9f
    rst $30
    cpl
    xor $5b
    ccf
    pop af
    rst $30
    ld l, h
    db $e3
    sub b
    rst $08
    jr c, jr_02f_507f

    ldh a, [rIE]
    ldh [rIE], a
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ld [$0faa], sp
    inc h
    ld [$052f], sp
    ld a, a
    pop bc
    rst $38
    add b
    ld [$082e], sp
    ld a, a
    ret nz

    cp a
    ldh [$08], a
    ld d, d
    db $10
    rst $18

jr_02f_507f:
    ld [hl], b
    ld [$1258], sp
    ld [$0f4c], sp
    ld sp, $07fe
    ld a, [$ec1d]
    inc sp
    ret c

    ld h, a
    sub c
    xor $81
    cp $9f
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    inc bc
    cp $cd
    inc sp
    call c, $dcaa
    xor e
    ld [$1944], sp
    nop
    ld [$1a42], sp
    ld [$0f2e], sp
    ld de, $ff80
    add b
    db $fc
    ret nz

    ld a, h
    ldh [$3f], a
    ld hl, sp+$1f
    rst $38
    rlca
    ld [$002e], sp
    adc b
    ld [hl], a
    ld b, $ff
    ld [bc], a
    inc bc
    ld bc, $0707
    cp $ff
    ld hl, sp+$08
    ld l, $01
    add b
    ld [$2120], sp
    ld [$0f2f], sp
    ld b, $40
    ld [bc], a
    ld [$08ff], sp
    rst $38
    rst $38
    ld c, l
    ld [$0f5f], sp
    ld c, l
    ld [$0fbf], sp
    ld c, l
    ld [$0fdd], sp
    add hl, bc
    ld b, $ff
    dec b
    ld [$03dc], sp
    ld [bc], a
    rst $38
    dec b
    rst $38
    dec b
    ei
    inc e
    db $e4
    inc a
    ld [$01dc], sp
    rla
    ei
    inc l
    ld hl, sp+$69

Call_02f_50ff:
    and l
    db $dd
    db $e3
    ld a, [hl]
    inc d
    rst $30
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    sub b
    sbc a
    ldh a, [$5f]
    ret nc

    ld e, a
    ret nc

    cp a
    ldh [$bf], a
    and b
    ld [$0fdc], sp
    ld c, $02
    cp $03
    rst $38
    ld bc, $03fe
    db $fc
    ld b, $fc
    inc b
    db $fd
    dec b
    db $fd
    dec b
    cp $ba
    call $187b
    rst $20
    ld bc, $700f
    ld [hl], c
    db $fc
    db $fc
    add e
    add e
    ld c, b
    or b
    ld a, $2b
    ld [$d2de], a
    or [hl]
    ld de, $29f3
    jp hl


    inc b
    ld c, h
    ld [bc], a
    ld b, $c7
    rst $00
    cp a
    and b
    ld a, a
    ret nz

    ld a, a
    ld b, b
    ccf
    ld h, b
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    add b
    ld [$0fdc], sp
    rrca
    cp $02
    db $fc
    rlca
    ld hl, sp+$0f
    ld hl, sp+$0b
    db $fc
    inc b
    rst $38
    inc bc
    ld [$00dc], sp
    db $fc
    ld c, b
    ld c, b
    or [hl]
    adc b
    cp $70
    db $fc
    nop
    nop
    rst $38
    rst $38
    ld [$00dc], sp
    jr nz, @+$25

    rla
    rla
    dec bc
    ld l, d
    rrca
    ld l, h
    rra
    db $10
    rst $38
    ldh [$08], a
    call c, $0801
    call $0c1f
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    ld c, l
    dec b
    rla
    rrca
    inc bc
    ld bc, $02ff
    rst $38
    ld [bc], a
    cp $03
    cp $03
    dec b
    ld d, $05
    add e
    db $fc
    ld b, h
    ld hl, sp+$48
    ei
    ld c, e
    dec b
    ld d, $05
    sbc b
    ld a, a
    ld c, h
    scf
    inc [hl]
    add a
    add h
    dec b
    ld d, $0f
    dec e
    dec b
    ld a, h
    nop
    dec b
    ret nc

    ld [bc], a
    rst $38
    ld bc, $03ff
    db $fc
    rlca
    db $fc
    ld c, h
    ei
    ld c, e
    db $fd
    ld b, [hl]
    db $fd
    ld b, [hl]
    ei
    ld c, a
    ld [hl], b
    rst $10
    push af
    cp $d3
    dec sp
    ld c, a
    ld c, b
    ld a, a
    ld [hl], b
    rst $38
    ret nz

    rst $38
    and b
    ld a, a
    sub b
    ld e, a
    adc b
    rst $18
    ld c, a
    xor a
    adc b
    dec b
    ld d, $09
    add b
    rst $38
    ld b, b
    dec b
    ld d, $0f
    ld c, $03
    cp $02
    rst $38
    ld bc, $02fe
    dec b
    ret c

    ld bc, $ff00
    nop
    ld sp, hl
    cp $0f
    xor a
    inc [hl]
    or l
    ld a, e

jr_02f_5202:
    ld e, a
    ld a, a
    rst $00
    db $fd
    add a
    cp $06
    ld a, [$f80e]
    jr nc, jr_02f_5202

    pop hl
    ld [hl], d
    ldh [$d8], a
    or c
    inc d
    ld hl, sp-$14
    rst $28
    ld b, a
    ld c, a
    dec hl
    ld a, [hl-]
    rst $38
    ld b, b
    ld a, a
    jr nz, jr_02f_5225

    ld h, d
    db $10
    rst $38
    ld b, b
    ld a, a

jr_02f_5225:
    ret nz

    rst $38
    add b
    dec b
    ld c, [hl]
    rrca
    jr jr_02f_522e

    dec b

jr_02f_522e:
    ret nc

    ld [bc], a
    rst $30
    ld e, $eb
    ld a, h
    add l
    db $fc
    ld [bc], a
    cp $d9
    daa
    db $fc
    ld c, e
    db $fc
    ld c, e
    ld c, b
    or a
    pop af
    pop af
    ret z

    ld a, b
    add h
    db $fc
    add e
    rst $38
    dec c
    di
    inc c
    di
    nop
    rst $38
    inc b
    ei
    dec b
    ld a, [bc]
    ld de, $c305
    db $10
    dec b
    pop bc
    ld d, $05
    or e
    rrca
    inc c
    dec b
    sub [hl]
    db $10
    dec b
    ld d, $06
    add b
    ld sp, hl
    ret nz

    pop bc
    nop
    add e
    add b
    rst $38
    ldh [$7f], a
    rst $38
    rra
    dec b
    ld d, $00
    inc c
    ld a, [c]
    add hl, de
    rst $20
    ld h, e
    sbc [hl]
    rrca
    db $fc
    ccf
    ldh a, [rIE]
    ret nz

    dec b
    ld d, $00
    ld a, a
    dec b
    rla
    rrca
    inc c
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld c, l
    ld [bc], a
    ld e, a
    rrca
    ld c, l
    ld [bc], a
    cp a
    rrca
    ld c, l
    ld [bc], a
    db $d3
    ld c, $07
    rst $38
    ld [$09fe], sp
    ld hl, sp+$0f
    rst $38
    rlca
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld bc, $82ff
    cp $83
    rst $38
    add c
    ld [bc], a
    inc a
    ld de, $ff28
    nop
    rst $38
    add b
    rst $38
    ld b, b
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    inc c
    rst $38
    ld [de], a
    di
    ld e, $02
    jp nc, Jump_000_1e0f

    jr z, @+$01

    db $10
    rst $38
    ld bc, $d202
    inc bc
    inc bc
    db $fc
    rrca
    rst $38
    db $10
    rst $38
    add c
    rst $38
    ld b, [hl]
    cp $89
    ld hl, sp+$17
    ld [c], a
    db $fd
    rlca
    ld a, [$fd32]
    rst $38
    inc c
    rst $38
    ldh a, [$9f]
    ld a, b
    rlca
    db $fc
    inc bc
    cp $41
    cp a
    ldh [$5f], a
    ld b, b
    cp a
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld d, b
    rst $38
    jr nz, jr_02f_52fe

    ld d, b
    db $10

jr_02f_52fe:
    ld a, a
    ldh a, [rIF]
    ld hl, sp+$02
    db $d2, $0f, $0d

    ldh a, [$1f]
    db $fc
    rrca
    cp $03
    db $fc
    rlca
    rst $38
    inc bc
    ld [bc], a
    jp nc, $2002

    rst $20
    nop
    ldh [rP1], a
    ld hl, sp+$02
    ld d, c
    db $10
    rst $38
    ld a, a
    ld [bc], a
    jp nc, RST_00

    rst $08
    nop
    rrca
    nop
    ccf
    nop
    rst $38
    rra
    rst $38
    rst $38
    ldh [rSC], a
    jp nc, $0700

    db $fc
    rlca
    db $fc
    rra
    ld hl, sp+$02
    ld a, [de]
    ld [hl+], a
    ld [bc], a
    jp nc, $010f

    ld b, b
    ld [bc], a
    inc b
    rst $38
    inc b
    rst $38
    rst $38
    ld c, l
    inc b
    ld e, a
    rrca
    ld c, l

jr_02f_5349:
    inc b
    adc e
    rrca
    jr jr_02f_5349

    inc bc
    ld sp, hl
    ld a, [de]

jr_02f_5351:
    inc b
    adc h
    ld [$e0ef], sp
    adc a
    ld c, b
    inc b
    adc h
    rrca
    rra
    cp $00
    cp $02
    db $fc
    rlca
    inc b
    ld [hl], $14
    db $e4
    ld a, e
    add b
    rst $38
    nop
    rst $38
    ld b, $f9
    ld h, a
    sbc d
    ld [hl], a
    xor d
    ld [hl], d
    xor l
    jr nz, jr_02f_5351

    rst $00
    inc e
    ld c, e
    sub [hl]
    ld c, l
    sub e
    jr z, @-$07

    nop
    rst $18
    jr nz, @+$01

    inc b
    ld e, d
    db $10
    inc b
    adc h
    inc bc
    add b
    ccf
    nop
    ld a, a
    ret nz

    inc b
    ld l, d
    db $10
    inc b
    adc h
    rrca
    dec c
    db $fc
    rlca
    cp $05
    inc b
    sub d
    db $10
    db $fd
    ld b, $fc
    rlca
    db $fd
    rlca
    ld a, [$c002]
    ld hl, sp-$80
    add c
    nop
    add a
    ld bc, $0cfd
    db $ec
    ld h, b
    ldh [$80], a
    add b
    nop
    nop
    jr nz, @+$01

    ld hl, $20fe
    rst $38
    pop af
    cp $0b
    inc c
    dec b
    ld b, $02
    inc bc
    ld bc, $0401
    ld l, d
    ld [de], a
    inc b
    ret nz

    ld d, $04
    ld [de], a
    rra
    ld c, $02
    rst $38
    ld bc, $8c04
    ld [$fc04], sp
    ldh a, [$80]
    add b
    ret nz

    ld b, b
    ldh a, [$30]
    rst $28
    rra
    inc b
    db $fc
    inc d
    inc bc
    inc bc
    rrca
    inc c
    ld a, a
    ld [hl], b
    cp a
    inc b
    ld l, a
    ld [de], a
    ret nz

    rst $38
    inc b
    ld b, d
    db $10
    inc b
    adc e
    rrca
    ld b, $40
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld c, l
    ld [bc], a
    ld e, a
    rrca
    ld c, l
    ld [bc], a
    cp a
    rrca
    ld c, l
    ld [bc], a
    db $eb
    rrca
    rla
    ld bc, $01ff
    cp $03
    ld [bc], a
    ld [$800b], a
    ld [bc], a
    ld c, $1f
    cpl
    db $fc
    rlca
    ld hl, sp+$0f
    ret c

    rla
    ldh a, [rVBK]
    db $e4
    sbc e
    ld c, [hl]
    or l
    inc b
    ei
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [rNR22], a
    ldh a, [rTAC]
    db $f4
    ld b, e
    cp [hl]
    pop hl
    ld e, a
    ld b, c
    cp a
    ld [bc], a
    ld a, [de]
    rra
    ld hl, $ea02
    ld [$ff18], sp
    db $10
    ld [hl], b
    add b
    ld hl, sp-$40
    ld a, a
    ldh a, [$3f]
    rst $38
    rrca
    ld [bc], a
    ld [$3100], a
    rst $38
    ld de, $031d
    ld a, $07
    db $fc
    rra
    ld hl, sp-$01
    ldh [rSC], a
    ld [$110f], a
    ld b, b
    ld [bc], a
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    rst $38
    ld c, l
    add hl, bc
    ld e, a
    rrca
    ld c, l
    add hl, bc
    add l
    rrca
    ld [de], a
    ei

jr_02f_5469:
    rlca
    db $fc
    inc c
    di
    db $10
    db $ec
    jr nz, jr_02f_5469

    jr nz, @+$0b

    add [hl]
    ld [bc], a
    rst $18
    ldh [$3f], a
    jr nc, jr_02f_5489

    ld [$0407], sp
    rlca
    inc b
    add hl, bc
    add [hl]
    rrca
    inc h
    ld bc, $3609
    ld de, $ff00

jr_02f_5489:
    nop
    ret nc

    ld b, b
    ret nz

    ld b, b
    add d
    add b
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop

jr_02f_5495:
    inc b
    add b
    add e
    ldh [$60], a
    dec bc
    ld [bc], a
    rlca
    ld a, [bc]
    ld b, c
    dec b
    ldh [rSCY], a
    ld b, b
    nop
    nop
    jr nz, jr_02f_54a8

    pop bc

jr_02f_54a8:
    rlca
    ld b, $09
    add [hl]
    inc bc
    add b
    add hl, bc
    ld h, [hl]
    ld de, $8509
    rrca
    jr nz, jr_02f_5495

    ccf
    jp hl


    ccf
    jp nc, $d67f

    ld a, a
    xor d
    rst $38
    ld [$d57f], a
    ld a, a
    or l
    rst $38
    ei
    db $fc
    ld d, a
    db $fc
    xor e
    cp $ab
    cp $ad
    rst $38
    or a
    cp $b7
    db $fc
    db $db
    ld a, [hl]
    add hl, bc
    add [hl]
    rrca
    dec l
    push af
    rst $18
    ei
    ld c, $fb
    ld c, $fd
    rlca
    cp $03
    add hl, bc
    ld a, [hl-]
    ld [de], a
    rst $18
    db $76
    rst $18
    ld [hl], b
    cp a
    ldh [$bf], a
    ldh [rIE], a
    ret nz

    add hl, bc
    add [hl]
    rrca
    inc de
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld c, l
    ld [bc], a
    ld e, a
    rrca
    ld c, l
    ld [bc], a
    add l
    rrca
    ld de, $ff01
    inc bc
    db $fd
    rlca
    ei
    dec c
    ei
    inc a
    ei
    inc l
    ld [bc], a
    add h
    ld bc, $ff38
    ld c, b
    rst $38
    sub b
    rst $18
    inc a
    rst $28
    inc [hl]
    cp a
    ld h, l
    ld [bc], a
    add h
    dec bc
    add b
    ld [bc], a
    add h
    rrca
    ld c, $03
    db $fc
    rlca
    cp $03
    rst $38
    ld bc, $8402
    inc bc
    inc c
    db $db
    db $ec
    ld c, e
    db $f4
    add hl, hl
    ld a, [c]
    dec d
    cp $85
    sbc $d4
    ld [hl], a
    ld [$817f], a
    rst $08
    ccf
    add [hl]
    ld [hl], a
    adc l
    rst $10
    dec l
    ld c, a
    ld a, [de]
    dec l
    ld [hl], d
    ld [hl], e
    ld a, l
    cp a
    adc $1f
    ld [c], a
    ld [bc], a
    ld c, $11
    ldh [rIE], a
    ld b, b
    ld [bc], a
    ld c, $13
    ld h, b
    ld [bc], a
    add h
    rrca
    ld c, $0b
    ld a, [$e41f]
    inc a
    db $f4
    inc e
    db $e4
    inc [hl]
    db $ec
    inc l
    ld a, [c]
    ld a, $f5
    rra
    inc b
    cp e
    ld c, $35
    inc b
    ld a, e
    jr nc, jr_02f_55f4

    jr nz, jr_02f_55de

    nop
    jr nz, jr_02f_557a

jr_02f_557a:
    jr jr_02f_557c

jr_02f_557c:
    rlca
    ld b, a
    cp c
    ld [c], a
    ld e, l
    ld b, b
    cp a
    jr @+$01

    ld [$00cf], sp
    rrca
    nop
    ccf
    ld bc, $fff9
    and b
    rst $38
    or b
    ld a, a
    ret z

    ld a, a
    ret nc

    ld e, a
    add sp, $6f
    ld hl, sp-$41
    ret c

    ld e, a
    ldh a, [rSC]
    add h
    rrca
    ld c, $1f
    ld sp, hl
    ld c, $fc
    dec d
    rst $38
    dec e
    rst $38
    ld a, [bc]
    rst $38
    inc c
    ld [bc], a
    add h
    nop
    ret nz

    ret nz

    ldh a, [$30]
    ld e, a
    ccf
    ccf
    and b
    rst $38
    and b
    rst $38
    ret nz

    ld [bc], a
    add h
    nop
    rlca
    rlca
    ld e, $19
    push af
    ld hl, sp-$07
    dec bc
    rst $38
    ld a, [bc]
    rst $38
    ld b, $02
    add h
    ld bc, $7ff0
    and b
    ld a, a
    ld d, b
    rst $38
    ld [hl], b
    rst $38
    and b
    ld [bc], a
    ld l, [hl]
    rra
    inc bc
    ld b, b
    ld [bc], a
    dec b
    rst $38

jr_02f_55de:
    dec b
    rst $38
    rst $38
    ld c, l
    dec b
    ld e, a
    rrca
    ld c, l
    dec b
    cp a
    rrca
    ld c, l
    dec b
    db $e3
    rrca
    rrca
    ld bc, $02ff
    rst $38

jr_02f_55f2:
    ld [bc], a
    rst $38

jr_02f_55f4:
    inc b
    rst $38
    inc b
    ld a, [$fd09]
    ld [$e205], sp
    ld bc, $ff80
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ld h, b
    cp a
    jr nz, jr_02f_560f

    ld c, $1f
    dec h
    cp $03

jr_02f_560f:
    cp $04
    rst $38
    inc b
    db $fd
    ld b, $ff
    inc sp
    rst $20
    call z, Call_000_1bad
    rst $08
    ld a, [bc]
    dec e
    xor c
    rra
    and h
    rla
    dec de
    jr c, jr_02f_5698

    rst $18
    cp b
    rst $00
    ld a, [hl]
    ld l, c
    or l
    ld [$67b1], a
    jr nz, jr_02f_55f2

    ld a, c
    sub h
    pop af
    ld a, $18
    dec b
    ld [c], a
    inc bc
    dec b
    ld d, l
    inc de
    ld a, a
    ld b, b
    dec b
    ld [c], a
    rrca
    dec c
    db $fc
    ld b, $fe
    ld [bc], a
    rst $38
    ld bc, $e205
    ld b, $5f
    sbc a
    rst $20
    rlca
    dec de
    ret nz

    adc b
    sub h
    and b
    dec l
    rst $28
    rrca
    dec b
    ld [c], a
    nop
    db $f4
    pop af
    ret nz

    res 1, l
    ld h, c
    inc bc
    ld a, [de]
    dec bc
    add sp, -$11
    ldh [rTIMA], a
    ld [c], a
    nop
    ld a, a
    ret nz

    rst $38
    add b
    dec b
    ld [c], a
    rrca
    add hl, bc
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld c, l
    ld [bc], a
    ld e, a
    rrca
    ld c, l
    ld [bc], a
    cp a
    rrca
    ld c, l
    ld [bc], a
    pop hl
    rrca
    dec c
    inc b
    ei
    ld c, $02
    ld b, d
    db $10
    ldh [rDIV], a
    pop af
    rra
    pop hl
    ccf
    db $c2, $7e, $02

    ldh [$03], a
    rlca
    rst $38
    add hl, de

jr_02f_5698:
    db $fc
    daa
    db $e3
    rst $08
    xor a
    sbc h
    ld [bc], a
    ldh [$03], a
    add b
    rst $38
    ld b, b
    rst $38
    and b
    rst $18
    ldh a, [$bf]
    ldh a, [rSC]
    ldh [rIF], a
    ld c, $01
    cp $03
    db $fd
    ld b, $f9
    ld c, $e0
    rlca
    ldh a, [$1f]
    ld [bc], a
    sbc d
    db $10
    and d
    sbc $c4
    inc a
    add a
    ld a, a
    rla
    rst $28
    ccf
    sub $13
    db $eb
    add c
    cp l
    ret nz

    sbc $d7
    sub h
    sub e
    di
    pop hl
    pop hl
    ret nz

    ret nz

    jp nz, $e9c2

    jp hl


    add a
    add a
    ld sp, hl
    ld sp, hl
    ld [bc], a
    ld l, h
    db $10
    ld a, a
    ldh [$bf], a
    and b
    rst $38
    ret nz

    rst $38
    add b
    ld [bc], a
    ldh [rIF], a
    ld de, $07e0
    ld hl, sp+$0b
    db $fc
    dec b
    rst $38
    inc bc
    ld [bc], a
    ldh [rDIV], a
    ld a, a
    rst $38
    ld c, $ce
    nop
    rst $38
    nop
    ccf
    ret nz

    ret nz

    rst $38
    ccf
    ld [bc], a
    ldh [rP1], a
    jp nz, Jump_000_03c2

    ld h, d
    rlca
    db $c4, $1f, $18
    ld a, a
    ld h, b
    ld [bc], a
    jp z, $131f

    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld c, l
    ld [bc], a
    ld e, a
    rrca
    ld c, l
    ld [bc], a
    ld a, l
    rrca
    add hl, bc
    ld bc, $03fe
    ld [bc], a
    ld a, h
    inc bc
    inc bc
    db $fd
    ld e, $e6
    ld a, c
    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    ld a, h
    inc bc
    ldh [$9f], a
    ld [hl], b
    ccf
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld [bc], a
    ld a, h
    rrca
    dec e
    db $fc
    rlca
    ld hl, sp+$0f
    di
    inc d
    db $d3
    dec a
    db $e3
    dec l
    pop hl
    ld l, $e6
    cpl
    and $2e
    ld bc, $01fe
    cp $30
    rst $08
    cp b
    ld d, a
    cp b
    ld d, a
    db $10
    rst $28
    nop
    rst $20
    nop
    dec b
    cp a
    ld h, b
    sbc a
    ld [hl], b
    ld c, a
    cp b
    inc hl
    ret nc

    daa
    call c, $fc07
    rrca
    db $fc
    add a
    ld a, a
    ld [bc], a
    ld a, h
    rrca
    dec e
    ret nc

    ld [hl], $f0
    inc de
    ld hl, sp+$08
    cp $06
    rst $38
    ld bc, $7c02
    ld [bc], a
    ld bc, $051a
    cp $04
    rst $30
    inc b
    dec b
    cp $fe
    pop bc
    ld b, c
    cp $3e
    db $fc
    inc b
    inc b
    ld [bc], a
    ld a, h
    nop
    di
    ld [$18eb], sp
    rra
    ld hl, sp-$11
    ldh a, [$97]
    ldh a, [$97]
    rst $38
    add b
    ld [bc], a
    ret nz

    jr jr_02f_57aa

    cp $0f

jr_02f_57aa:
    rra
    ld hl, sp+$0b
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0a
    db $fd
    dec b
    rst $38
    ld [bc], a
    rst $18
    ld bc, $bc02
    db $10
    ld a, b
    bit 7, b
    ret


    ld a, l
    ld b, l
    rst $38
    add e
    ld [bc], a
    ld a, h
    nop
    ccf
    ldh a, [rIF]
    ld hl, sp-$71
    ld hl, sp+$7f
    ldh a, [$1f]
    db $10
    rst $38
    ldh [rSC], a
    ld a, h
    rrca
    ld bc, $0240
    ld [$08ff], sp
    rst $38
    rst $38
    dec d
    inc bc
    rst $38
    inc b
    rst $38
    inc b
    db $fc
    rlca
    ld [$0500], sp
    add b
    ld a, a
    ret nz

    ld [$003a], sp
    ld [$0f00], sp
    ld d, $08
    rst $38
    db $fc
    ld bc, $7808
    ld bc, $ff03
    inc bc

jr_02f_57fd:
    db $fd
    ld a, $c7
    ld a, a
    adc b
    ld hl, sp+$10
    ldh a, [rNR13]
    di
    rla
    db $f4
    rrca
    db $eb
    rst $38
    add b
    ld a, a
    ld hl, sp-$39
    db $fc
    inc hl
    ld a, $11
    rra
    sub c
    sbc a
    pop de
    ld e, a
    pop hl
    xor a
    ld [$0b00], sp
    add b
    ld [$0f5e], sp
    ld a, [bc]
    inc bc
    ei
    rlca
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    cp $03
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    sbc l
    or $fd
    ld h, [hl]
    rst $38
    inc hl
    ld a, a
    sbc a
    ldh [rIE], a
    jr c, jr_02f_57fd

    ld a, h
    ld a, l
    cp $ff
    ld [hl], e
    sbc $7f
    call z, $89fe
    db $fd
    di
    ccf
    rst $38
    dec e
    ld [$0176], sp
    rst $38
    add b
    ld [$1000], sp
    ei
    db $fc
    rst $38
    cp $08
    ret c

    nop
    ld a, a
    rst $38
    ld [$0aa2], sp
    cp a
    ret nz

    rst $38
    rlca
    ld [$1320], sp
    inc bc
    cp $03
    db $fc
    ld b, $fc
    ld b, $f8
    ei
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [$bf]
    cp b
    ccf
    ld hl, sp+$7f
    ld a, c
    ld a, a
    cp $e3
    db $fc
    jp hl


    ld a, h
    db $e3
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld e, b
    rst $38
    rst $10
    rst $28
    ccf
    ldh a, [$71]
    adc l
    ld [hl], e
    xor a
    ld [hl], l
    adc a
    inc b
    rst $38
    inc c
    rst $38
    inc [hl]
    rst $38
    sub $ef
    ld sp, hl
    rra
    cp a
    rst $38
    sbc a
    sbc a
    rst $08
    rst $28
    rst $20
    rst $30
    inc bc
    rst $38
    nop
    ld hl, sp+$07
    rst $30
    rrca
    ld sp, hl
    rst $38
    ret nz

    ld [$1370], sp
    ld [$1001], sp
    ret nz

    rst $38
    ret nz

    db $fc
    ld b, $fc
    inc b
    ld [$1282], sp
    ld a, [$fe06]
    ld [bc], a
    rst $38
    ld bc, $3208
    db $10
    ld h, b
    ld a, a
    nop
    rra
    nop
    rrca
    ld bc, $0705
    rlca
    rrca
    rrca
    rrca
    ld [$0500], sp
    ldh a, [$f7]
    db $fc
    db $fd
    rst $38
    rst $38
    ldh [$08], a
    ld h, $01
    ld [$1125], sp
    ld [$0100], sp
    rrca
    ld sp, hl
    rrca
    rst $38
    rlca
    rst $30
    add a
    ld sp, hl
    add a
    ld sp, hl
    inc b
    ld sp, hl
    inc c
    ldh [rNR24], a
    add e
    ld [$1570], sp
    ret nz

    rst $38
    add b
    ld a, a
    ld [$ffff], sp
    nop
    sbc a
    sbc a
    rst $18
    ld e, a
    rst $38
    ccf
    rst $28
    rra
    ei
    ld [$042f], sp
    ld [$2300], sp
    cp $fe
    ccf
    cp a
    ld [$0000], sp
    nop
    ld a, h
    add c
    add c
    add c
    add c
    inc bc
    inc bc
    inc bc
    inc bc
    db $fd
    cp $08
    nop
    nop
    ld [hl], e
    ld b, [hl]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$11
    ldh a, [$bf]
    ld [$0f3f], sp
    inc b
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    dec d
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    dec b
    nop
    add hl, bc
    add b
    rst $38
    add b
    dec b
    nop
    rrca
    ld d, $05
    rla
    rrca
    nop
    cp $02
    cp $02

jr_02f_595c:
    db $fc
    inc c
    rst $38
    db $10
    rst $38
    rra
    ldh [$6c], a
    add c
    cp c
    ld b, e
    ld [hl], d
    db $e3
    or e
    ld h, e
    ld a, [c]
    ld a, a
    ld h, b
    rst $38
    db $10
    rst $38
    ldh a, [rIF]
    ld l, h
    inc bc
    ld a, [hl-]
    add l
    sbc l
    adc [hl]
    sbc d
    adc h
    sbc [hl]
    dec b
    jr nc, jr_02f_598e

    dec e
    cp $0e
    rst $38
    dec bc
    db $fd
    ld c, $fe
    ld [bc], a
    cp $03
    ei
    inc bc
    add sp, $0b

jr_02f_598e:
    ldh [$2f], a
    ld a, a
    call c, $80ff
    add b
    ld h, b
    ccf
    ld b, b
    rst $38
    dec b
    nop
    inc bc
    db $fc
    db $76
    rst $38
    inc bc
    inc bc
    inc c
    ld hl, sp+$04
    cp $ff
    ld bc, $0005
    ld bc, $e0ff
    rst $38
    and b
    ld a, a
    ldh [rTIMA], a
    inc a
    nop
    cp a
    add b
    cpl
    and b
    rrca
    add sp, $05
    inc d
    rrca
    inc bc
    db $fc
    nop
    cp $03
    ld hl, sp+$01
    db $fc
    ld b, $fc
    ld b, $c0
    ld a, a
    sbc b
    rst $20
    jr nc, jr_02f_595c

    ld h, b
    sbc a
    ld b, b
    ccf
    add b
    ccf
    add b
    ccf
    ld bc, $1c3f
    db $e3
    sbc h
    db $eb
    ld e, h
    db $e3
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld e, b
    rst $38
    rst $10
    rst $28
    ccf
    ldh a, [rSVBK]
    adc a
    ld [hl], d
    xor a
    ld [hl], h
    adc a
    inc b
    rst $38
    inc c
    rst $38
    inc [hl]
    rst $38
    sub $ef
    ld sp, hl
    rra
    rlca
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    cp $05
    rst $38
    ld a, [c]
    ld b, $f9
    dec b
    nop
    ld [bc], a
    ld a, a
    nop
    rst $38
    add b
    ccf
    nop
    ld a, a
    ret nz

    ld a, a
    ret nz

    db $fc
    inc b
    dec b
    add b
    inc d
    dec b
    ld a, h
    nop
    rst $38
    ld bc, $3f00
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    nop
    rrca
    dec b
    nop
    ld a, [bc]
    ld a, a
    ldh [rTIMA], a
    nop
    dec bc
    ld b, $f9
    nop
    cp $00
    cp $06
    ld hl, sp+$06
    ld sp, hl
    inc b
    ld sp, hl
    inc c
    ldh [rNR24], a
    add e
    dec b
    ld a, h
    db $10
    dec b
    ld a, h
    db $10
    ccf
    nop
    rst $38
    add b
    ld a, a
    dec b
    rst $38
    rst $38
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh a, [$30]
    db $fc
    inc c
    rst $38
    inc bc
    dec b
    nop
    ld [bc], a
    nop
    rrca
    dec b
    ld a, [$80f2]
    add b
    rst $38
    ld a, a
    dec b
    db $fc
    ld de, $05fc
    ld a, [$03f2]
    inc bc
    rst $38
    db $fc
    dec b
    nop
    nop
    inc sp
    ld b, $07
    inc b
    rra
    jr @+$81

    ld h, b
    dec b
    ld a, $0f
    dec b
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    ld c, l
    dec b
    ld e, a
    rrca
    ld c, l
    dec b
    cp a
    rrca
    ld c, l
    dec b
    db $eb
    rrca
    rla
    ld bc, $01ff
    cp $02
    dec b
    ld [$800b], a
    dec b
    ld c, $1f
    cpl
    db $fc
    inc b
    add sp, $18
    ld hl, sp+$30
    ldh a, [rLCDC]
    db $e4
    add b
    ld c, [hl]
    inc b
    inc b
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cpl
    jr nc, @+$21

    jr @+$09

    inc b
    ld b, e
    ld [bc], a
    pop hl
    ld b, c
    ld b, c
    ld bc, $1a05
    rra
    ld hl, $ea05
    ld [$1800], sp
    nop
    rra
    add b
    add a
    ret nz

    ld b, b
    ldh a, [$30]
    rst $28
    rra
    dec b
    ld [$0100], a
    ld sp, $f101
    inc bc
    jp nz, $0407

    rra
    jr @-$0f

    ldh a, [rTIMA]
    ld [$110f], a
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    ld c, l
    dec b
    ld e, a
    rrca
    ld c, l
    dec b
    cp a
    rrca
    ld c, l
    dec b
    db $d3
    ld c, $07
    ld hl, sp+$0f
    ld hl, sp+$0c
    ld hl, sp+$08
    rst $38
    rlca
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld bc, $83fe
    cp $82
    rst $38
    add c
    dec b
    inc a
    db $10
    rst $28
    jr z, @+$01

    nop
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    inc c
    di
    ld e, $f3
    ld [de], a
    dec b
    jp nc, Jump_000_1d0f

    rst $28
    jr z, @+$01

    db $10
    rst $38
    ld bc, $d205
    inc bc
    inc bc
    db $fc
    inc c
    rst $38
    db $10
    rst $38

jr_02f_5b3a:
    add c
    ld a, a
    ld b, [hl]
    db $fc
    adc d
    ld hl, sp+$10
    ld [c], a
    ldh [rTAC], a
    ld [bc], a
    ld [bc], a
    jr nc, @+$01

    inc c
    rst $38
    ldh a, [$9f]
    ld e, b
    rlca
    inc b
    inc bc
    ld [bc], a
    ld b, c
    ld bc, $40e0
    ld b, b
    dec b
    db $d3
    nop
    jr nz, jr_02f_5b3a

    ld d, b
    rst $38
    jr nz, @+$07

    ld d, b
    ld de, $0f70
    ld [$d205], sp
    rrca
    dec c
    ldh a, [rNR10]
    db $fc
    inc c
    cp $02
    db $fc
    inc b
    rst $38
    inc bc
    dec b
    db $d2, $02, $00

    jr c, jr_02f_5b78

jr_02f_5b78:
    rra
    nop
    rlca
    nop
    nop
    add b
    add b
    rst $38
    ld a, a
    dec b
    db $fc
    ld de, $0030
    ldh a, [rP1]
    ret nz

    nop
    nop
    rra
    rra
    rst $38
    ldh [rTIMA], a
    jp nc, $0700

    inc b
    rlca
    inc b
    rra
    jr @+$07

    ld a, [de]
    ld [hl+], a
    dec b
    jp nc, $010f

    ld b, b
    ld [bc], a
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    rst $38
    dec d
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    add hl, bc
    nop
    add hl, bc
    add b
    rst $38
    add b
    add hl, bc
    nop
    rrca
    ld d, $09
    rla
    rrca
    ld bc, $ff03
    inc bc
    db $fc
    inc c
    rst $38
    db $10
    rst $38
    rra
    di
    ld a, a
    rst $00
    rst $18
    rst $00
    or $ef
    cp a
    ld l, a
    cp $7f
    ld h, b
    rst $38
    db $10
    rst $38
    ldh a, [$9f]
    db $fc
    rst $00
    or $c7
    rst $18
    rst $28
    ei
    db $ed
    rst $38
    add hl, bc
    jr nc, @+$11

    ld e, $0f
    rst $38
    dec bc
    db $fd
    ld c, $fe
    ld [bc], a
    cp $03
    rst $30
    rrca
    ld hl, sp+$18
    ldh [rNR41], a
    ld a, a
    call c, $80ff
    add b
    ld h, b
    ccf
    ld b, b
    rst $38
    rst $38
    add hl, bc
    ld a, [$fdf2]
    ld [hl], a
    rst $38
    inc bc
    inc bc
    inc c
    ld hl, sp+$04
    cp $ff
    ld bc, $0901
    db $fc
    pop af
    ldh [rIE], a
    and b
    ld a, a
    ldh [$09], a
    inc a
    nop
    rst $18
    ldh [$3f], a
    jr nc, jr_02f_5c2a

    ld [$1409], sp
    rrca
    inc bc
    db $fd
    inc bc
    cp $02
    ld a, [$fd06]
    dec b
    db $fd
    dec b

jr_02f_5c2a:
    ret nz

    ld b, b
    sbc b
    add b
    ld [hl], b
    ld b, b
    ld h, b
    nop
    ret nz

    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    pop bc
    pop bc
    ld [$9c14], sp
    adc b
    ld c, b
    ld d, h
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    ld e, b
    ld a, b
    rst $10
    rst $28
    ccf
    jr nc, jr_02f_5c6b

    ld d, b
    ld [hl], d
    ld [hl+], a
    inc h
    ld d, h
    inc b
    inc b
    inc c
    inc c
    inc [hl]
    inc a
    sub $ee
    ld sp, hl
    add hl, de
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $0901
    ld a, [$0002]
    nop
    ld b, $09
    rst $38
    di
    ld a, a
    add b

jr_02f_5c6b:
    rst $38
    add b
    cp a
    ret nz

    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    rlca
    add hl, bc
    add b
    ld [de], a
    ei
    inc bc
    ei
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $c0c0
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    rst $38
    rst $38
    rrca
    rrca
    add hl, bc
    db $f4
    ld hl, sp-$80
    add b
    ldh [$e0], a
    add hl, bc
    ld a, [c]
    ld a, [$0006]
    add hl, bc
    ld h, h
    db $10
    rlca
    ld bc, $0006
    ld b, $02
    ld e, $12
    ld a, l
    ld h, l
    add hl, bc
    ld a, h
    db $10
    add hl, bc
    ret nc

    ld [de], a
    cp a
    ret nz

    add hl, bc
    ld a, $0f
    ld [bc], a
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $28
    rra
    ei
    rlca
    add hl, bc
    nop
    ld [bc], a
    ldh a, [$f0]
    rst $38
    add hl, bc
    ld [bc], a
    inc hl
    ccf
    cp a
    add hl, bc
    nop
    nop
    inc bc
    inc bc
    add hl, bc
    ld [bc], a
    inc h
    ld sp, hl
    ld a, [$0009]
    nop
    ei
    jp z, $fcff

    rst $38
    ld hl, sp-$11
    ldh a, [$bf]
    ret nz

    add hl, bc
    nop
    rrca
    inc bc
    ld b, b

Call_02f_5ce7:
    ld [bc], a
    dec c
    rst $38
    dec c
    rst $38
    ldh a, [rSB]
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$1bf7], sp
    rst $38
    inc d
    dec c
    nop
    ld bc, $fff0
    inc c
    rst $38
    inc bc
    rst $38
    nop
    rst $28
    ldh a, [$fb]
    inc e
    dec c
    ld [bc], a
    inc bc
    ld [bc], a
    db $fd
    ld e, $ff
    db $e4
    rst $08
    ld a, h
    ei
    inc a
    dec c
    nop
    ld bc, $ff80

jr_02f_5d17:
    add b
    ld a, a
    pop af
    rst $38
    ld c, [hl]
    rst $20
    ld a, h
    cp a
    ld a, b
    dec c
    nop
    ld bc, $ff1f
    ld h, b
    rst $38
    add b
    rst $38
    nop
    rst $28
    rra
    cp a
    ld [hl], b
    dec c
    nop
    ld bc, $330d
    nop
    ld b, b
    rst $38
    jr nz, jr_02f_5d17

    or b
    rst $38
    ld d, b
    rst $30
    inc e
    rst $30
    inc e
    ei
    ld c, $fd
    rlca
    cp $03
    rst $38
    inc b
    dec c
    ld [$fe00], sp
    cpl
    db $db
    ld [hl], l
    sub [hl]
    ld sp, hl
    db $fd
    inc de
    ld a, [bc]
    rst $00
    push hl
    ld a, $e8
    ccf
    or $39
    rst $38
    dec de
    rst $30
    adc h
    rst $30
    call nz, $e7b4
    dec de
    di
    adc h
    ld a, b
    rlca
    db $fc
    inc bc
    rst $38
    cp $b1
    ld e, a
    db $e3
    ld e, a
    add $5b
    rst $08
    or b
    sbc a
    ld h, b
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    rst $38
    add sp, -$21
    inc [hl]
    sub e
    ld a, [hl]
    ccf
    pop de
    rst $00
    and b
    ld b, b
    rst $30
    cpl
    ld hl, sp+$1f
    ld hl, sp-$21
    ld [hl], b
    rst $18
    ld [hl], b
    cp a
    ldh [$7f], a
    ret nz

    rst $38
    add b
    ld a, a
    ret nz

    dec c
    ld e, b
    nop
    ld sp, hl
    ld c, $ff
    db $10
    ldh a, [$1f]
    rst $38
    ld de, $3fe2
    and $3c
    rst $28
    add hl, sp
    rst $18
    ld [hl], c
    db $ec
    inc sp
    ret c

    ld b, a
    ret nc

    rst $28
    sub b
    xor a
    and b
    rst $18
    jr nz, @+$61

    dec c
    rst $38
    ld a, [c]
    inc e
    db $e3
    sbc h
    db $eb
    ld e, h
    db $e3
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld e, b
    rst $38
    rst $10
    rst $28
    nop
    rst $38
    ld [hl], b
    adc a
    ld [hl], d
    xor a
    ld [hl], h
    adc a
    inc b
    rst $38
    inc c
    rst $38
    inc [hl]
    rst $38
    sub $ef
    ld [$04ff], sp
    rst $30
    ld b, $fe
    inc bc
    ei
    ld [bc], a
    rst $38
    nop
    db $fc
    ld bc, $01ff
    rst $38
    ccf
    ldh [$1f], a
    ldh a, [$1f]
    db $10
    rra
    ldh a, [$8f]
    adc b
    rst $08
    ld c, b
    ld l, a
    xor b
    rst $10
    inc [hl]
    db $fd
    ld h, e
    ld sp, hl

jr_02f_5df9:
    ld b, a
    di
    ld l, l
    rst $10
    ld e, c
    db $ed
    dec hl
    db $e4
    ld l, $e6
    dec hl
    rst $30
    add hl, de
    ld bc, $500d
    inc bc
    nop
    ld a, a
    nop
    ld a, a
    add b
    rst $38
    add b
    cp a
    ccf
    ldh a, [rIF]
    dec c
    ld sp, $0d14
    nop
    ld bc, $1ff9
    ldh [$0d], a
    ld b, e
    add hl, de
    ld bc, $19ff
    rst $20
    add hl, de
    rst $20
    ld bc, $01ff
    db $fd
    jr nc, jr_02f_5df9

    ld [hl-], a
    rst $08
    inc hl
    db $db
    sbc a
    ld l, h
    daa
    call c, $bc4f
    sub a
    ld [hl], h
    cpl
    add sp, $4f
    add sp, -$71
    xor b
    rra
    or b
    or $19
    or $19
    cp $09
    cp $09
    cp $05
    cp $05
    cp $03
    rst $38
    ld bc, $ffc0
    ret nz

    ld e, a
    and b
    ld a, a
    or b
    ld a, a
    xor b
    ld a, a
    adc h
    ld b, l
    sbc a
    ld d, e
    sbc h
    ld d, e
    dec c
    ld b, h
    jr jr_02f_5e65

jr_02f_5e65:
    ld a, a
    dec c
    ld d, d
    ld [de], a
    ld bc, $0dfe
    rst $38
    di
    db $fd
    ld c, $ff
    ld h, [hl]
    sbc a
    add $35
    adc d
    ld a, l
    ld a, [de]
    db $fd
    ld a, [hl+]
    db $fd
    ld c, d
    ld a, l
    and d
    push bc
    ld d, e
    or l
    rra
    or b
    rra
    or b
    ccf
    and b
    ccf
    and b
    ld a, a
    ret nz

    dec c
    or [hl]
    nop
    dec c
    ld b, e
    add hl, de
    dec c
    rst $38
    pop af
    sub c
    sbc $c3
    ld b, h
    xor $29
    ld sp, hl
    dec e
    cp $0e
    rst $38
    dec c
    jr nc, jr_02f_5eb3

    sbc a
    ld a, a
    rlca
    rst $30
    inc sp
    or h
    adc e
    sub h
    dec bc
    ld d, h

jr_02f_5eac:
    set 2, h
    db $db
    jr jr_02f_5eac

    inc bc
    db $f4

jr_02f_5eb3:
    ei
    ret


    sub $1a
    reti


    inc bc
    db $d3
    nop
    call nc, $d707
    scf
    or b
    cp a
    add b
    sub e
    db $76
    rlca
    call nz, $e82f
    ccf
    ld [hl], b
    rst $38
    dec c
    ld d, d
    ld a, [de]
    dec c
    ld b, h
    dec d
    ld b, b
    ld [bc], a
    inc c
    rst $38
    inc c
    rst $38
    rst $38
    ld c, l
    inc c
    dec a
    rrca
    add hl, hl
    rrca
    db $fc
    ld a, [hl]
    inc c
    inc a
    add hl, bc
    ldh a, [rIE]
    ret nz

    inc c
    inc a
    rrca
    nop
    rra
    cp $7f
    ld sp, hl
    rra
    db $fc
    rlca
    cp $03
    cp $03
    rst $38
    ld bc, $aa0c
    nop
    rrca
    db $fc
    di
    cp $09
    rst $38
    ld [de], a
    ei
    dec e
    db $fd
    ld [hl], $ff
    rst $38
    ld bc, $02fe
    db $fc
    rlca
    db $fd
    dec b
    ld sp, hl
    dec bc
    ei
    adc a
    ld a, l
    rst $18
    or c
    rst $30
    or e
    ei
    ld h, a
    db $f4
    sbc a
    ret c

    rra
    sub b
    rra
    sub c
    sbc [hl]
    sub d
    ld a, l
    push af
    ld a, [de]
    sbc d
    inc c
    ret nz

    nop
    ldh [$60], a
    sbc a
    sbc a
    jr nz, jr_02f_5f4f

    sub b
    sub b
    ld [hl], b
    ld [hl], b
    reti


    reti


    inc c
    xor d
    ld bc, $3ffc
    jr nc, jr_02f_5fbb

    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $200c
    ld de, $3d0c
    dec b
    ld b, h
    rst $38
    add sp, -$01

jr_02f_5f4f:
    ei
    rra
    rst $38
    ld c, $ff
    dec bc
    inc c
    jr nz, jr_02f_5f6a

    and c
    cp l
    pop de
    rst $38
    ld b, c
    db $db
    add c
    rst $38
    pop hl
    ld [hl], l
    ld [hl], c
    sbc a
    cp c
    rst $18
    and a
    rst $30
    ld a, [bc]
    adc d

jr_02f_5f6a:
    ld d, $9e
    dec b
    dec b
    inc bc
    add d
    rrca
    adc l
    dec e
    sub e
    dec sp
    scf
    jp z, Jump_02f_45fe

    ld b, l
    cpl
    cpl
    cp a
    or c
    rst $38
    ldh [rIE], a
    and b
    inc c
    inc a
    ld bc, $1d0c
    db $10
    inc c
    dec a
    rrca
    dec bc
    inc bc
    rst $38
    inc bc
    db $fd
    rlca
    rst $38
    dec c
    inc c
    db $ca, $00, $0c

    ld [c], a
    nop
    ret nz

    ld hl, sp+$40
    db $eb
    ld b, b
    ld a, a
    ld b, b
    jp c, Jump_02f_6f28

    ld a, l
    rst $30
    sbc d
    di
    adc h
    db $fd
    ld b, $6e
    dec b
    or l
    dec b
    push hl
    inc b
    and h
    jr z, @-$16

    ld a, h
    call c, $92b2
    ld h, d
    ld h, d
    rst $38
    add b

jr_02f_5fbb:
    ld a, a
    ld b, b
    ld a, a
    ldh [$0c], a
    ld a, [de]
    ld de, $c10c
    db $10
    ld b, b
    inc c
    inc a
    rrca
    dec c
    db $fc
    dec b
    db $fd
    ld a, [de]
    rst $38
    dec c
    rst $38
    ld b, $0c
    inc a
    inc b
    ret nz

    ld a, [hl]
    ld a, [$f7bf]
    rra
    db $fc
    ld [$04ff], sp
    rst $38
    inc bc
    inc c
    inc a
    nop
    ld b, $07
    cp a
    cp c
    rst $18
    ldh a, [$7f]
    jr nz, @+$01

    inc c
    add hl, de
    stop
    rst $38
    nop
    ccf
    ld [hl], b
    ld a, a
    ldh [$0c], a
    xor [hl]
    rrca
    ld [bc], a
    inc c
    dec a
    inc bc
    ld b, b
    ld [bc], a
    inc b
    rst $38
    inc b
    rst $38
    rst $38
    ld c, l
    inc b
    dec bc
    ld b, $02
    rst $38
    inc bc
    cp $02
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld sp, $31ff
    xor $3b
    ld [$fb3b], a
    cp e
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    adc b
    rst $38
    sbc b
    rst $28
    xor b
    inc b
    ld a, [bc]
    rrca
    inc b
    ld bc, $02fe
    db $fd
    dec c
    or $37
    db $db
    db $dd
    inc b
    ld a, [bc]
    inc bc
    ret nz

    cp a
    and b
    rst $18
    ret nc

    ccf
    ldh a, [$df]
    cp b
    rst $38
    ld bc, $c004
    dec b
    inc b
    dec bc
    ld bc, $7f64
    or c
    cp e
    ld l, d
    ld a, e
    and h
    xor [hl]
    ld e, e
    ld e, a
    rst $18
    push af
    jp z, $c0ea

    ld e, a
    rst $18
    ret nc

    cp a
    or b
    rst $18
    ret nc

    cp a
    cp h
    ld d, a
    ld d, [hl]
    ld a, e
    ei
    ld h, [hl]
    cp $71
    ld c, e
    inc b
    ret nz

    nop
    cp $02
    db $fd
    dec b
    rst $38
    rlca
    db $fd
    add l
    ld a, [$768b]
    ld d, [hl]
    and a
    cp d
    ld c, a
    ld h, h
    sbc a
    add sp, -$61
    ret z

    ccf
    ret nc

    ccf
    sub b
    ld a, a
    and b
    ld a, a
    and b
    rst $38
    ld l, [hl]
    rst $38
    inc e
    inc b
    ld a, [bc]
    rrca
    add hl, bc
    ldh [$75], a
    pop af
    ccf
    rst $38
    ld l, $ff
    dec [hl]
    xor $2e
    xor $64
    or c
    rst $38
    adc $fe
    ld hl, sp-$09
    adc [hl]
    ld hl, sp-$79
    db $fc
    add a
    call nz, $bebf
    jp $03fe


    jp nz, $bc3f

    cp $ff
    ld b, a
    rst $38
    ld b, c
    rst $38
    jr nz, jr_02f_6124

    cp c
    ld a, c
    and [hl]
    ld a, $a1
    ld h, a
    cp b
    ld a, d
    ld a, a
    and b
    rst $38
    and b
    ld a, a
    ld h, b
    sbc a

jr_02f_60cd:
    or b
    rst $08
    ret c

    scf
    db $fc
    dec bc
    ld a, [hl]
    add a
    cp [hl]
    inc b

jr_02f_60d7:
    sub [hl]
    rrca
    nop
    inc bc
    cp $02
    db $fd
    rrca
    ldh a, [rNR31]
    pop hl
    ld a, $e7
    jr nc, jr_02f_60cd

    dec sp
    add l
    or a
    ld c, c
    call $ff3e
    ld b, h
    ld a, [hl]
    push bc
    push bc
    cp $3f
    rst $30
    ld a, e
    db $fd
    adc [hl]
    ld c, a
    ld a, h
    adc a
    add sp, $1f
    ret c

    ccf
    jr c, jr_02f_60d7

    add sp, -$01
    nop
    ei

jr_02f_6104:
    db $fc
    or $0f
    push hl
    dec a
    db $e3
    cpl
    ldh a, [$37]
    ld hl, sp+$3b
    rst $10
    cpl
    cp $01
    cp a
    ld a, a
    rst $18
    ldh [rSCX], a
    db $db
    inc h
    ld h, a
    ld hl, sp-$02
    ld b, l
    db $fd
    ld b, [hl]
    ld b, a
    rst $38
    ld hl, sp-$21

jr_02f_6124:
    cp h
    ld a, a
    db $e3
    rst $38
    nop
    inc b
    add [hl]
    nop
    ld a, a
    ldh [$1f], a
    or b
    rrca
    ld hl, sp-$31
    jr jr_02f_6104

    cp b
    rst $20
    jr nc, @-$1b

    inc a
    di
    add hl, de
    rst $28
    ccf
    rst $38
    ld a, [hl]
    rst $38
    jr z, jr_02f_6147

    ld a, [bc]
    nop
    di
    sbc a

jr_02f_6147:
    ldh [$bf], a
    db $e3
    rst $38
    rst $38
    ld a, $04
    ld_long $ff12, a
    nop
    rst $38
    inc b
    nop
    jr nz, jr_02f_60d7

    inc b
    ld a, [bc]
    rlca
    rst $38
    cp $ff
    rst $38
    inc bc
    inc b
    ld a, [bc]
    ld b, $9f

jr_02f_6163:
    ld a, [c]
    rrca
    ld_long a, $ff8f
    rst $38
    ld sp, hl
    inc b
    ld hl, sp+$14
    rst $08
    jr @-$6f

    ld a, b
    sbc a
    jr nc, jr_02f_6163

    ld hl, sp-$01
    db $fc
    inc b
    ld [$4012], a
    ld [bc], a
    inc c
    rst $38
    inc c
    rst $38
    rst $38
    dec b
    inc b
    ei
    ld [$0bff], sp
    rst $38
    ld a, [bc]
    inc c
    nop
    rlca
    ret nz

    rst $38
    ld b, b
    rst $38
    add b
    inc c
    db $10
    rlca
    ld [hl-], a
    rst $38
    dec l
    rst $38
    dec d
    inc c
    nop
    rrca
    ld b, $0c
    rst $38
    ld_long a, $ff03
    inc b
    rst $38
    dec bc
    cp $0a
    db $fc
    dec d
    rst $38
    add hl, bc
    ei
    inc [hl]
    rst $38
    call Call_000_35f7
    rst $00
    db $dd
    rlca
    ld a, l
    rlca
    db $fd
    rlca
    db $fd
    cp a
    and b
    inc c
    inc l
    add hl, bc
    nop
    rst $18
    ld e, c
    db $fd
    ld [hl+], a
    rst $38
    dec de
    cp $0b
    inc c
    sub [hl]
    ld [bc], a
    ld_long a, $ff17
    ret nz

    rst $38
    inc a
    rst $38
    jp $bc3f


    inc bc
    ei
    nop
    cp $0c
    rst $38
    ldh a, [$0c]
    nop
    ld bc, $7f80
    inc c
    dec hl
    nop
    and b
    rst $38
    and b
    ld a, a
    ld d, b
    db $fc
    rla
    ld hl, sp+$2b
    ld hl, sp+$2f
    ldh a, [$57]
    ldh a, [$5f]
    ldh a, [$5f]
    pop hl
    xor a
    db $e3
    cp [hl]
    dec b
    cp $02
    ei
    ld bc, $00fd
    db $fc
    nop
    cp $00
    cp $e0
    cp $f9
    rra
    rst $38
    ret nz

    cp a
    ld a, a
    ld a, a
    add b
    rst $30
    sbc b
    xor a
    ldh a, [$7f]
    ld h, c
    db $fd
    add a
    ld a, [$f407]
    rst $28
    ld a, b
    adc a
    add sp, $1f
    ret nc

    ccf
    ldh a, [$1f]
    ret z

    ccf
    add sp, $1f
    ld l, b
    sbc a
    inc c
    rst $38
    or $1f
    rst $38
    ld a, a
    ldh [rIE], a
    add b
    ld a, a
    ret nc

    ccf
    xor b
    ccf
    add sp, $1f
    call nc, $f41f
    rrca
    ld [$fa8f], a
    rst $00
    ld [hl], h
    rst $20
    cp h
    rst $08
    ld e, b
    rst $08
    ld e, b
    rst $28
    jr z, @+$01

    jr nc, @+$01

    db $10
    rst $38
    db $10
    rst $38
    ld [$07fd], sp
    cp $03
    rst $38
    ld bc, $01ff
    cp $03
    rst $38
    ld [bc], a
    db $fd
    rlca
    rst $38
    ld b, $fe
    dec hl
    ld d, a
    ld a, a
    db $fd
    rst $30
    ld a, e
    or l
    sbc $53
    call c, $fed7
    ld [hl], a
    or $3d
    add hl, sp
    rst $08
    add hl, hl
    rst $18
    dec sp
    adc $3b
    adc $3f
    rst $30
    ld c, a
    ld a, [$bd77]
    rst $38
    ld c, d
    inc c
    nop
    dec b
    add b
    ld a, a
    ld b, b
    inc c
    or d
    nop
    rst $20
    inc [hl]
    rst $20
    inc [hl]
    rst $28
    jr c, @+$01

    jr @+$01

    jr jr_02f_62a1

    ld a, [hl+]
    ld de, $ff0c
    di
    push af
    dec b
    ld a, [$d735]
    rst $28
    push hl

jr_02f_62a1:
    ld a, [hl+]
    ld a, [$1f0c]
    dec b
    ld a, a
    ld b, b
    rst $38
    ldh a, [$7f]
    rst $38
    rst $38
    add a
    rst $38
    ld a, [de]
    rst $38
    ld [de], a
    rst $38

jr_02f_62b3:
    dec b
    db $fd
    rlca
    ei
    ld c, $f7
    ld a, $ff
    ld hl, sp-$01
    ret nz

    ei
    adc c
    rst $38
    add h
    inc c
    nop
    add hl, bc
    inc c
    add l
    rlca
    inc c
    jp z, Jump_02f_4d1f

    inc c
    nop
    rrca
    ld bc, $0240

jr_02f_62d2:
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    add hl, bc
    ld bc, $03fe
    dec b
    nop
    ld bc, $df20
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld a, h
    and e
    ld a, [$ed0f]
    rst $38
    jr c, jr_02f_62b3

    ld a, a
    di
    xor [hl]
    rst $30
    ld a, h
    rst $30
    xor h
    rst $30
    ld a, h
    di
    rst $28
    inc de
    ld e, $05
    nop
    add hl, bc
    add b
    rst $38
    ld h, b
    dec b
    nop
    rrca
    ld a, [bc]

Jump_02f_6303:
    dec b
    add hl, de
    ld bc, $0005
    ld bc, $ff03
    inc c
    rst $30
    jr c, jr_02f_62d2

    ld b, h
    ld sp, hl
    add d
    rst $38
    ld hl, sp-$19
    scf
    rst $38
    ld a, h
    or d
    rst $00
    sbc a
    daa
    ret c

    jr @-$0f

    ld h, b
    rst $38
    add b
    set 1, [hl]
    ld l, c
    rst $28

jr_02f_6326:
    and h
    rst $20
    ld a, a
    rst $38
    and $81
    add hl, sp
    ld b, b
    add [hl]
    ld [$02f1], sp
    rst $18
    ldh a, [$cf]
    ret c

    cpl
    xor a
    inc hl

jr_02f_6339:
    rst $28
    rst $28
    db $ec
    ld e, e
    db $db
    and l
    ld [hl], l
    ld [hl+], a
    ld a, d
    dec b
    ld c, b
    inc bc
    jr nz, jr_02f_6326

    db $76
    db $db
    ld a, [hl]
    rst $10
    ld e, h
    rst $08
    ret z

    rst $38
    ld bc, $02fe
    rst $38
    ld [bc], a
    rst $38
    inc b
    dec b
    add $00
    ld sp, hl
    ld a, [bc]
    db $fc
    ld l, b
    db $fd
    ld bc, $221f
    rst $00
    inc c
    ld hl, sp+$08
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    ld a, a
    sub b
    ld bc, $fc02
    nop
    rst $38
    nop
    rra
    jr nz, jr_02f_6339

    inc b
    ld hl, sp+$05
    rst $38
    pop af
    db $fc
    ld bc, $403e
    adc a
    db $10
    db $e3
    inc b
    ld sp, hl
    ld [bc], a
    ld a, h
    add c
    rra
    ld hl, $09c7
    and e
    dec sp
    ld h, l
    xor a
    jr nz, jr_02f_6410

    call nz, $c37e
    ld a, a
    add b
    db $f4
    nop
    call c, $fd01
    rst $00
    ld c, h
    cp e
    cp [hl]
    ld a, a
    ld b, [hl]
    cp a
    and b
    sbc a
    sub b
    dec b
    ld d, $10
    ld a, a
    ld h, b
    db $db
    ld a, h
    xor e
    db $ec

jr_02f_63ae:
    reti


    jp c, Jump_000_2ce8

    db $e4
    daa
    call nc, $9cd7
    sbc l
    cp $66
    ld de, $fc12
    jr nz, jr_02f_63ae

    jr nc, jr_02f_63e8

jr_02f_63c1:
    ld hl, sp+$21
    ld l, $20
    rst $30
    jr nz, jr_02f_63c1

    db $10
    cp $ff
    nop
    ld a, a
    add b
    rrca
    db $10
    ldh [rSB], a
    ldh a, [$0e]
    dec b
    rst $38
    pop af
    ld a, a
    ld a, [c]
    rlca
    ld a, [c]
    dec bc
    call nz, Call_000_043f
    cp $08
    ccf
    ld [$10cf], sp
    rst $38
    db $10
    ei

jr_02f_63e8:
    ld bc, $01b9
    jp hl


    ld bc, $01f9
    ld sp, hl
    ld [bc], a
    cp d
    inc bc
    di
    ld [bc], a
    jp nc, Jump_02f_6303

    ccf
    jr nz, @-$5f

    sub b
    rra
    db $10
    rst $38
    ldh a, [rIE]
    add b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    ret nz

    cp $03
    dec b
    ld [hl], b
    inc bc
    dec b
    rst $38
    di

jr_02f_6410:
    db $10
    rla
    ld [$88fb], sp
    db $fc
    call nz, $f267
    ccf
    db $fd
    rrca
    rst $38
    inc bc
    rst $38
    nop
    nop
    add a
    nop
    dec b
    ld [$3f00], a
    nop
    ret nz

    nop
    rst $38
    add b
    cp a
    ldh a, [rSVBK]
    db $10
    rst $38
    db $10
    rra
    db $10
    db $fd
    ld a, [bc]
    sbc [hl]
    add hl, bc
    ld a, c
    inc b
    db $e4
    inc bc
    sbc a
    ld b, $77
    ld [bc], a
    jp nz, $c3c3

    inc hl
    and e
    cpl
    xor $33
    ld a, [hl]
    rst $08
    call c, Call_02f_703f
    ld l, a
    add sp, -$01
    add b
    rst $38
    add b
    dec b
    ld d, b
    rrca
    db $10
    dec b
    push af
    db $10
    dec b
    rst $38
    pop af
    rst $28
    ld l, a
    ldh a, [$90]
    jp hl


    add hl, hl
    rst $20
    ld [hl], a
    ldh a, [$98]
    cp a
    rst $28
    ld_long $ff7f, a
    rra
    db $fd
    rst $38
    ld a, a
    ld b, d
    rst $38
    add b
    rst $28
    db $ec
    ccf
    ld a, $ff
    cp $9f
    call c, $e0ff
    rst $30
    call c, $0cff
    dec b
    nop
    rrca
    add hl, bc
    ld b, b
    ld [bc], a
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    rst $38
    ld c, l
    add hl, bc
    dec d
    rrca
    ld bc, $ff30
    inc a
    ei
    ld a, [de]
    pop af
    rla
    ld hl, sp+$0f
    ld hl, sp+$0c
    add hl, bc
    inc d
    add hl, bc
    add b
    ld a, a
    adc $09
    inc d
    rlca
    ld bc, $02fe
    db $fc
    dec b
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    dec c
    ldh a, [$37]
    ret nz

    jp Jump_000_3d00


    ld h, b
    sbc l
    sub c
    ld l, e
    rst $38
    ldh [rIE], a
    ldh a, [$7f]
    ld [hl], b
    ccf
    and b
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    add b
    add hl, bc
    inc d
    ld bc, $090f
    sub [hl]
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$05fc], sp
    db $fc
    ld b, $fe
    jp nz, Jump_02f_7bff

    cp $96
    db $fc
    rrca
    ldh a, [$15]
    ld a, [$3318]
    ld a, [hl]
    ld l, a
    db $fc
    sbc a
    ldh a, [$2f]
    ei
    inc h
    db $ec
    ld l, b
    db $eb
    jr c, @+$01

    db $10
    rst $30
    ld sp, hl
    ld a, [bc]
    di
    dec d
    di
    dec d

jr_02f_64fb:
    db $e4
    xor e
    ld b, a
    ld c, b
    jr nz, jr_02f_6580

    jr nc, jr_02f_64fb

    db $10
    or h
    ld de, $a3eb
    sub $c7
    xor h
    add a
    ld e, h
    rrca
    ret c

    rst $08
    jr jr_02f_6521

    ret c

    rra
    or b
    add hl, bc
    inc d
    rrca
    inc b
    ld bc, $03ff
    rst $38
    ld [bc], a
    add hl, bc
    inc d
    nop

jr_02f_6521:
    or $1f
    xor $70
    db $fd
    add l
    ei
    ld a, [$0bfb]
    rst $38
    dec c
    cp $03
    cp $03
    ret nc

    rst $38
    jp nc, $e61f

    ld a, e
    rst $38
    push bc
    rst $38
    rst $38
    cpl
    dec a
    inc de

jr_02f_653e:
    db $10
    dec bc
    ld c, d
    jr jr_02f_653e

    adc [hl]
    adc $45
    push de
    ld h, h
    rst $38
    ld h, a
    or $66
    rst $20
    rst $10
    push de
    bit 5, c
    rra
    jr nc, jr_02f_6593

    ldh [$df], a
    ld hl, sp+$07
    call c, $ae43
    and e
    ld d, [hl]
    ld b, e
    or [hl]
    ld b, a
    xor h
    add hl, bc
    inc d
    rrca
    ld c, $01
    add hl, bc
    inc d
    ld a, [bc]
    dec bc
    sbc d
    adc e
    ld a, [$75df]
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    sbc a
    or b
    rst $38
    ldh [rIE], a
    ldh [$eb], a
    ld e, [hl]
    add hl, bc
    or b
    db $10
    db $fd
    dec l

jr_02f_6580:
    or $2f
    db $fd
    inc de
    rst $38
    ld c, $ff
    nop
    add a
    db $ec
    adc a
    sbc b
    sbc a
    ldh a, [$df]
    db $fc
    ld e, a
    ld a, a
    rst $18

jr_02f_6593:
    pop af
    rst $18
    ld d, b
    rst $38
    jr c, @+$0b

    add d
    ld [$1409], sp
    rrca
    ld [de], a
    ldh [rIE], a
    ldh [$df], a
    ld b, b
    add hl, bc
    inc d
    rrca
    ld [$0938], sp
    jr nz, @+$22

    rst $18
    db $10
    add hl, bc
    inc d
    rrca
    dec b
    ld b, b
    ld [bc], a
    ld de, $11ff
    rst $38
    db $f4
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ld de, $0300
    add b
    ld de, $0116
    add c
    rst $38
    add c
    rst $38
    jr nc, @-$2f

    ld a, b
    rst $08
    ld a, b
    sbc a
    ldh a, [$9f]
    ldh a, [$9f]
    or b
    ld e, a
    ld [hl], b
    ld e, a
    ld [hl], e
    ld de, $0100
    inc e
    ei
    ld a, [bc]
    db $fd
    dec b
    cp $0a
    push af
    dec [hl]
    ei
    ld a, [$00ff]
    rst $38
    ld h, b
    sbc a
    or b
    sbc a
    or b
    sbc a
    cp b
    ld e, a
    ld hl, sp-$51
    ld hl, sp-$01
    ld a, b
    ld de, $0500
    ld de, $f4ff
    ld [bc], a
    rst $38
    ld [bc], a
    db $fd
    ld b, $11
    ld h, h
    ld b, $fe
    add d
    cp $82
    db $fd
    add l
    ei
    adc e
    ei
    adc e
    or $96
    ld [$ecaa], a
    xor h
    rst $18
    pop af
    rst $18
    di
    ld c, [hl]
    ld e, d
    ld b, a
    ld c, l
    ld l, $2f
    ld [hl], h
    ld [hl], a
    sub h
    rst $30
    sub h
    push de
    add [hl]
    cp a
    ld h, c
    ld h, a
    reti


    ld sp, hl
    ld c, $ff
    ld a, [bc]
    adc a
    dec bc
    rrca
    dec a
    dec a
    dec b
    dec b
    rst $38
    ld [$847f], sp
    rst $38
    inc b
    adc a
    ld [hl], d
    ld [hl], a
    ei
    cp h
    xor a
    ret nz

    db $ec
    inc sp
    pop hl
    ld de, $0500
    add b
    ld a, a
    ret nz

    ld a, a
    ldh [rIE], a
    ret nc

    db $fd
    ld b, $fc
    rlca
    cp $03
    cp $03
    rst $38
    ld de, $02c7
    ld b, $d5
    push de
    sub $57
    db $e4
    ld h, a
    xor $6f
    pop af
    ld a, a
    ld a, [hl]
    rst $08
    ld a, a
    and l
    cp l
    rst $20
    sub l
    rst $30
    inc e
    cp a
    ld a, $e3
    ccf
    and c
    cpl
    or b
    daa
    jr c, jr_02f_66cb

    ld e, a
    set 1, [hl]
    inc de
    sbc a
    and a
    rst $38
    rrca
    cp b
    cp a
    or b
    cp $41
    ld e, h
    db $e3
    pop af
    cp a
    ld a, [$1f0e]
    ld a, [hl]
    add c
    cp l
    rst $38
    cp $47
    db $ec
    ld b, a
    db $ec
    and e
    rst $38
    ld b, a
    ld c, a
    ld l, a
    ld l, e
    rst $28
    ld hl, sp-$01
    xor b
    rst $38
    ld l, h
    rst $38
    ld l, h
    cp a
    db $ec
    rst $38
    call nc, $d47f
    rst $38
    call nc, $07fe
    cp $07
    db $fd
    dec b
    ld de, $1324
    dec c
    cp $0e
    and l
    rst $38
    ld a, [hl]
    rst $00
    ld c, $fb
    cp $fb
    ld d, a
    ld d, a
    ld a, d
    ld a, d
    add a
    rst $38
    ret nz

    rst $08
    daa
    or h

jr_02f_66cb:
    daa
    cp h
    daa
    inc l
    dec e
    ld e, $55
    ld d, [hl]
    cp [hl]
    cp a
    ld [c], a
    ei
    ld [hl], c
    db $fd
    db $fc
    dec b
    db $fc
    rlca
    db $fc
    ld b, $f7
    rrca
    push af
    dec c
    rst $28
    rra
    ld c, b
    cp e
    db $10
    rst $30
    cp h
    or a
    or l
    cp a
    or [hl]
    cp a
    ld a, a
    ld e, a
    cp $9b
    rst $38
    dec de
    cp $8b
    cp $eb
    ld de, $101a
    rst $30
    xor h
    rst $38
    xor b
    rst $28
    cp b
    rst $28
    cp b
    cp a
    ldh a, [$bf]
    ldh a, [$fb]
    dec de
    rst $30
    dec d
    rst $28
    add hl, hl
    rst $38
    ld sp, $0011
    inc b
    ldh [rNR41], a
    ld sp, hl
    add hl, de
    rst $38
    ld de, $04c3
    inc b
    rst $38
    inc b
    add b
    cp $04
    rst $28
    inc b
    push de
    inc b
    ld [hl], h
    ld [$1f28], sp
    rst $18
    rst $38
    ldh a, [$9f]
    ld [hl], b
    pop hl
    rst $28
    nop
    rra
    inc b
    db $fd
    inc c
    inc c
    ld a, a
    ld [hl], e
    rst $38
    add b
    ld de, $0000
    rra
    pop af
    rrca
    ld a, c
    rrca
    reti


    rrca
    ld c, b
    rrca
    db $fc
    rst $38
    db $f4
    sbc a
    db $e4
    rst $08
    db $f4
    ld a, a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld de, $12ba
    ld de, $1fd8
    ld [bc], a
    inc b
    rst $38
    ld b, $f9
    rra
    db $e4
    dec [hl]
    db $dd
    ld a, l
    cp $63
    rst $38
    ld bc, $00ff
    ccf
    ldh [$7f], a
    ldh [$bf], a
    ldh [$5f], a
    ret nc

    ld l, a
    ld hl, sp-$01
    sbc b
    ld de, $0402
    ld de, $01c6
    ld de, $f3ff
    cp a
    cp [hl]
    add hl, bc
    ld l, e
    db $e3
    rst $28
    db $fd
    rra
    ld de, $2616
    ld de, $00b8
    rst $38
    ret nz

    ld de, $0400
    ld b, b
    ld [bc], a
    inc c
    rst $38
    inc c
    rst $38
    rst $38
    ld c, l
    inc c
    dec c
    ld [$fe01], sp
    rlca
    inc c
    inc c
    add hl, bc
    ldh a, [$7f]
    ldh [$0c], a
    ld l, b
    ld [bc], a
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    cp $07
    inc c
    ld l, [hl]
    ld bc, $df10
    db $10
    scf
    ld [hl-], a
    rst $30
    call nc, $acec
    db $fd
    or l
    cp e
    ld [$0c0c], a
    inc bc
    ld [$10df], sp
    rst $38
    ldh [rIE], a
    ld b, b
    rst $38
    add b
    inc c
    inc c
    inc c
    ld hl, sp+$0b
    pop af
    dec de
    pop hl
    scf
    db $e3
    scf
    ret nz

    ld a, e
    ret nz

    ld l, h
    ret nz

    ld a, l
    ret nz

    ld [hl], a
    inc c
    xor [hl]
    dec b
    ret nz

    ccf
    rst $38
    nop
    ld [hl], $00
    ret nz

    rst $38
    dec bc
    ei
    rrca
    rst $38
    dec e
    db $fd
    ld [hl], a
    rst $10
    ld a, a
    ld sp, hl
    ld sp, hl
    ld [hl+], a
    rst $38
    ld b, e
    db $76
    ld [hl], a
    push de
    ld a, a
    jp c, $b4ff

    rst $38
    xor b
    rst $38
    ld l, [hl]
    pop af
    ld d, a
    ldh a, [$5d]
    and b
    rst $30
    inc c
    inc c
    rlca
    add b
    ld a, a
    ret nz

    ccf
    inc c
    ld a, a
    ld [bc], a
    inc c
    dec c
    rlca
    ldh [$3e], a
    ldh a, [$2b]
    ld hl, sp+$17
    rst $38
    add hl, bc
    cp $07
    cp $03
    cp $03
    cp $02
    nop
    rst $38
    dec a
    db $fd
    jp nz, Jump_000_02f7

    cp a
    dec b
    rst $28
    inc b
    ld a, a
    ld [$08dd], sp
    ld a, a
    add e
    sbc $03
    cp $01
    xor a
    pop bc
    ei
    ld hl, $d0ff
    rst $38
    jr z, @+$01

    ld d, $7f
    ldh [$bf], a
    ldh [$bd], a
    ret nz

    ld [hl], a
    pop bc
    ld a, a
    jp nz, $856f

    ld a, a
    ld [bc], a
    rst $30
    inc [hl]
    rst $38
    rra

jr_02f_6857:
    or a
    jr jr_02f_6857

    ld [$88ff], sp
    db $fd
    ld b, h
    cp $87
    rst $28
    inc b
    rst $38
    ld [$0cbe], sp
    ld [$7f12], sp
    ld b, b
    ld a, a
    ld b, b
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [$0c]
    add [hl]
    ld bc, $0c03
    add b

jr_02f_6879:
    inc b
    cp $03
    ld a, h
    dec a
    jp $fcff


    ld a, a
    jp $81f3


    rst $38
    ld b, $d7
    jr jr_02f_6909

    ld h, $ff
    inc [hl]
    rst $38
    ret nz

    rst $38
    nop
    db $fd
    nop
    adc a
    jr nz, jr_02f_68ed

    ld [hl], b
    xor a
    jr nz, jr_02f_6879

    nop
    ld a, a
    ld d, $ff
    ld bc, $007f
    rst $38
    nop
    ret c

    ld [bc], a
    ld [hl], l
    rlca
    ld a, [$fd02]
    nop
    rst $38
    ld e, $df
    pop hl
    rst $38
    ld e, $ff
    ld h, e
    db $ed
    ld a, a
    ld b, d
    ccf
    cp $0f
    db $fd
    inc sp
    ld a, [hl]
    rrca
    cp b
    rrca
    add sp, $0f
    ld a, b
    rrca
    add sp, -$71
    ld c, b
    rst $38
    inc d
    rst $38
    xor h
    rst $38
    ld a, b
    cp $02
    cp $02
    rst $38
    dec b
    rst $38
    ld b, $ff
    ld bc, $0c0c
    ld [bc], a
    dec sp
    rst $38
    rra
    dec h
    rst $38
    ld a, [bc]
    rst $38
    or l
    rst $38
    adc $0c
    inc c
    ld [bc], a
    pop bc
    ld e, a
    ld a, b
    cp e
    xor a
    rst $08
    db $db

jr_02f_68ed:
    ld h, e
    rst $30
    jr c, @+$01

    rrca
    inc c
    inc c
    nop
    ld b, c
    db $fd
    rrca
    xor $fa
    ld sp, hl
    db $ed
    db $e3
    rst $30
    ld c, $ff
    ld hl, sp+$0c
    inc c
    ld bc, $7f4e
    ret nz

    rst $38
    and b

jr_02f_6909:
    rst $38
    ld d, b
    rst $38
    jr nc, jr_02f_691a

    inc c
    rrca
    inc bc
    ld b, b
    ld [bc], a
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld hl, sp+$01
    rst $38

jr_02f_691a:
    ld bc, $000a
    ld bc, $ff02
    inc bc
    rst $38
    inc hl
    rst $38
    ld [hl-], a
    ld sp, hl
    ld a, [hl+]
    db $ec
    or a
    ld a, [bc]
    nop
    inc bc
    ld [$08ff], sp
    rst $38
    sbc c
    ei
    sub d
    xor l
    ld [hl], $0a
    nop
    dec b
    add b
    rst $38
    sub b
    rst $38
    or b
    ld a, a
    ld d, h
    ld a, [bc]
    nop
    add hl, bc
    nop
    rst $38
    ld b, b
    ld a, [bc]
    ld b, b
    dec bc
    nop
    rst $38
    add hl, bc
    db $fc
    inc c
    cp $64
    db $fd
    ld d, [hl]
    ld hl, sp+$2b
    ld a, [$f517]
    dec de
    ld a, [$ce0d]
    ld d, e
    ld h, [hl]
    xor e
    or a
    reti


    sbc e
    db $ed
    db $db
    ld l, l
    ld l, l
    or [hl]
    ld l, l
    or [hl]
    or a
    jp c, Jump_000_36ad

    ld l, l
    or [hl]
    ld l, a
    or l
    ld a, [bc]
    add h
    nop
    cp a
    push de
    cp a
    push de
    cp [hl]
    rst $10
    xor a
    call $d3ba
    ld a, [bc]
    ld a, d
    nop
    db $db
    ld l, l
    or $5a
    db $fc
    ld d, l
    xor c
    ld a, [c]
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ldh a, [$8f]
    cp h
    jp $fc4f


    rst $38
    ei
    add e
    rst $30
    db $e4
    ld a, [bc]
    nop
    rlca
    add b
    ld a, a
    ret nz

    cp a
    ldh [$fd], a
    ld b, $fe
    inc bc
    db $fc
    inc b
    rst $38
    dec b
    rst $38
    ld [bc], a
    cp $03
    ld a, [bc]
    ld c, $00
    or [hl]
    db $db
    db $db
    ld l, l
    ld l, l
    or a
    or [hl]
    db $db
    ld d, h
    cp $ac
    ld a, l
    ld d, h
    cp h
    reti


    db $eb
    rst $38
    ld d, [hl]
    rst $28
    ld a, a
    add d
    rrc a
    cpl
    ccf
    or b
    ld a, a
    ret nz

    cp a
    pop bc
    ld a, a
    add b
    ei
    xor l
    or $5f
    xor e
    db $fd
    db $76
    db $db
    db $fd
    xor $f3
    ld a, l
    xor $93
    sbc h
    ld h, a
    ld l, a
    xor b
    rst $18
    ld [hl], c
    cp a
    ldh [rIE], a
    ld b, b
    cp a
    ldh [$1f], a
    ld [hl], b
    adc a
    cp b
    add a
    sbc h
    rst $38
    and b
    rst $18
    jr nc, @+$01

    sub b
    rst $28
    ld e, b
    rst $08
    ld a, b
    rst $38
    jr z, @-$07

    inc l
    rst $30
    inc e
    rst $38
    nop
    rst $38
    dec c
    ld a, [c]
    ld d, $f9
    cpl
    db $fc
    ccf
    db $f4
    dec d
    and $37
    rst $38
    ld e, l
    jp hl


    ld sp, hl
    ld d, [hl]
    ld a, [hl]
    ld l, c
    ld a, a
    ld l, e
    ld a, l
    rst $08
    db $fc
    adc e
    xor $71
    rst $38
    ld d, a
    ret c

    rrca
    ldh a, [$e7]
    ld hl, sp+$50
    rst $38
    ld a, c
    ld e, a
    sub $ce
    jp hl


    dec hl
    db $fc
    push de
    cp a
    ld l, e
    ld a, b
    adc c
    ld sp, hl
    add hl, de
    db $76
    cp [hl]
    or h
    db $fc
    ld h, e
    rst $28
    ld sp, $4ef7
    cp $d6
    rst $28
    rst $00
    call z, $f633
    ld c, e
    cp $9f
    or $3f
    ld a, [hl]
    dec hl
    xor $67
    xor $ff
    cp d
    rst $38
    inc d
    ld a, [bc]
    ld [hl], b
    ld [de], a
    rst $30
    inc e
    rst $38
    jr jr_02f_6a62

    ld a, d
    ld de, $fe67
    ld [bc], a
    ld a, [bc]
    ld c, $03
    ld a, [bc]
    add hl, bc

jr_02f_6a62:
    ld bc, $9897
    rrca
    ld [$3706], sp
    pop bc
    db $dd
    pop hl
    inc hl
    cp $1e
    db $fc
    dec c
    ld sp, hl
    ei
    rst $18
    ld [hl], $ef
    add hl, de
    or $0f
    rra
    and b
    db $e3
    rst $38
    ld a, h
    rst $18
    db $fc
    push bc
    rst $38
    inc bc
    cp c
    ret


    ld a, b
    adc b
    add sp, $18
    ld a, h
    db $fc
    adc e
    rst $30
    ld c, $f1
    dec e
    db $e3
    scf
    adc $e7
    cp $03
    cp $07
    ld a, h
    rlca
    ld a, h
    rrca
    jr c, @+$01

    ldh a, [$df]
    ret nc

    rst $08
    ld a, b
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    ld h, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    cp $07
    rst $38
    add hl, bc
    rst $38
    ld c, $ff
    dec bc
    rst $38
    ld [bc], a
    ld a, [bc]
    nop
    ld [bc], a
    ld h, c
    ld l, a
    adc a
    rst $38
    rst $38
    ld [hl], b
    rst $38
    ret nz

    ld a, [bc]
    jr nc, @+$09

    ld b, b
    rst $38
    ret nz

    ld a, [bc]
    ld c, [hl]
    rlca
    ld hl, sp-$01
    inc bc
    cp $06
    rst $38
    add hl, bc
    rst $38
    rrca
    rst $38
    ld [$000a], sp
    nop
    add a
    xor h
    inc sp
    ld [hl], a
    ld a, c
    set 7, a
    adc $ff
    inc bc
    ld a, [bc]
    or b
    ld [$020a], sp
    ld h, $40
    ld [bc], a
    dec bc
    rst $38
    dec bc
    rst $38
    rst $38
    rla
    ld [$0aff], sp
    push af
    rra
    dec bc
    nop
    rrca
    jr @+$0d

    rst $38
    rst $38
    add hl, bc
    ld bc, $03fe
    db $fc
    rlca
    db $fc
    rlca
    ld hl, sp+$0f
    push af
    ccf
    push af
    ccf
    call Call_000_06ff
    rst $38
    ld b, $ff
    dec b
    rst $38
    dec b
    rst $38
    ld b, $ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [$9f], a
    sub b
    adc a
    adc e
    ld b, l
    rst $10
    ld b, a
    rst $10
    add d
    sbc d
    dec bc
    nop
    rlca
    pop bc
    ld a, a
    di
    db $dd
    dec bc
    adc a
    nop
    dec bc
    rst $38
    ld a, [c]
    db $fc
    ld h, a
    and $8f
    cp b
    rra
    ld [hl], b
    dec bc
    nop
    inc c
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh a, [$3f]
    ldh a, [$5f]
    ld hl, sp+$5f
    db $fc
    sub a
    db $fc
    and a
    inc b
    dec bc
    adc c
    inc bc
    ld b, $ff
    ld [bc], a
    rst $38
    inc hl
    rst $38
    ld hl, $c2ff
    db $db
    ld b, d
    db $db
    ld b, c
    call $eda1
    pop hl
    push hl
    sub c
    sub c
    ld c, l
    call $e363
    ld [hl], $be
    inc e
    db $dd
    dec bc
    sub c
    nop
    jp Jump_02f_7ffc


    ld b, e
    cp a
    cp h
    rst $18
    ld d, b
    ccf
    ldh [$7f], a
    and b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    dec bc
    ld l, h
    ld [$240b], sp
    inc de
    inc bc
    rst $38
    ld a, [hl]
    cp $a3

jr_02f_6b94:
    rst $38
    and c
    rst $38
    jr nz, jr_02f_6b94

    inc h
    cp a
    ld h, h
    cp l
    ld h, [hl]
    cp d
    ld h, a
    di
    ld c, a
    ld b, c
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    ldh [$3f], a
    ld [hl], b
    cp a
    inc e
    rst $38
    ld d, c
    pop af
    ret nc

    di
    ld e, b
    ei
    ld [hl], h
    rst $38
    ld e, h
    rst $18
    ld b, [hl]
    rst $20
    ld b, d
    ei
    ld b, d
    rst $38
    rst $08
    ld c, b
    rst $28
    ld hl, sp+$27
    cp h
    inc de
    cp $0d
    rst $38
    ld [bc], a
    rst $38
    ld a, c
    rst $38
    dec l
    rst $20
    dec bc
    nop
    rlca
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    rst $38
    and h
    rst $38
    ld hl, sp-$01
    dec hl
    rst $38
    ld e, h
    rst $38
    ld h, b
    dec bc
    ld [hl+], a
    ld de, $770e
    call z, Call_02f_5ce7
    rst $28
    ld e, b
    rst $28
    ret c

    rst $38
    ld d, b
    rst $38
    sub b
    rst $28
    sbc b
    rst $00
    ld a, $cb
    rst $38
    cp $3f
    rst $38
    ld bc, $000b
    ld b, $84
    rst $38
    sbc h
    rst $38

jr_02f_6c05:
    ld [c], a
    db $e3
    rst $00
    ld e, l
    rst $20
    inc a
    rst $28
    jr c, jr_02f_6c05

    inc e
    ei
    ld h, a
    rra
    di
    inc c
    rst $38
    ld [hl], b
    rst $38
    add sp, -$51
    rst $20
    daa
    ldh a, [rNR10]
    ldh a, [rNR10]
    rst $38
    adc a
    rst $38
    ld b, b
    rst $38
    ld hl, sp+$07
    db $e4
    inc bc
    ld a, [$faeb]
    ld [hl], e
    ld e, d
    ccf
    inc l
    rra
    db $10
    rst $38
    dec d
    rst $38
    ld e, $ff
    dec b
    rst $38
    add hl, bc
    rst $38
    ld a, [bc]
    rst $38
    inc c
    dec bc
    nop
    ld bc, $ff09
    ccf
    rst $38
    ret nz

    dec bc
    nop
    rrca
    rlca
    db $fc
    sub e
    cp $fd
    rst $38
    inc bc

Call_02f_6c4f:
    dec bc
    nop
    rlca
    rst $00
    ld a, a
    push hl
    cp a
    ld a, [c]
    rst $18

jr_02f_6c58:
    cp c
    rst $18
    ld [hl], h
    rst $38
    inc sp
    dec bc
    nop
    nop
    rst $18
    ret nc

    rst $38
    ldh [rIE], a
    ld b, b
    rst $38
    ldh [$bf], a
    ld h, b
    dec bc
    db $f4
    ld [de], a
    ld b, b
    ld [bc], a
    ld [$08ff], sp
    rst $38
    rst $38
    ld c, l
    ld [$0f27], sp
    inc de
    inc bc
    cp $02
    cp $02
    cp $06
    db $fd
    dec b
    rst $38
    nop
    rst $38
    jr @-$0f

    jr z, jr_02f_6c58

    ld c, b
    rst $18
    ret nc

    sbc a
    sub a
    add hl, de
    add hl, de
    db $eb
    ld [$2608], a
    rrca
    dec l
    cp $07
    di
    ld [hl], $ed
    inc l
    ret nc

    rla
    ldh [$3f], a
    db $e3
    dec sp
    rst $38
    rra
    db $fc
    push bc
    rlca
    cp a
    add d
    ld a, [hl]
    add l
    adc a
    ld bc, $217f
    rst $28
    or e
    adc [hl]
    ld l, a
    sub h
    rst $28
    inc b
    rst $38
    add b
    rst $38
    add b
    ld [$0f26], sp
    ld d, $01
    rst $38
    ld bc, $0cff
    ei
    dec bc
    db $fc
    ld a, a
    ret nc

    ld e, a
    rst $28
    ld [hl], b
    jp nc, Jump_02f_6fef

    ld e, a
    sbc a
    ldh a, [$bb]
    and e
    sbc a
    sbc b
    ld [hl], a
    push af
    ld d, $f7
    ld a, [bc]
    ei
    add $3f
    ld l, [hl]
    sbc [hl]
    or l
    rst $18
    add e
    xor $83
    sbc [hl]
    add hl, bc
    rst $30
    ld a, h
    add a
    ld a, [hl]
    rst $00
    ld hl, sp-$32
    dec a
    rst $28
    ld a, a
    ld [$049f], sp
    ld [$1001], sp
    add b
    ld a, a
    ret nz

    ccf
    ld hl, sp+$08
    ld a, [de]
    rra
    inc b
    ld bc, $2608
    inc b
    cp a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld [$1602], sp
    xor c
    cp $c9
    ld a, [hl]
    ret


    ld a, [hl]
    add a
    db $fc
    add l
    cp $82
    ei
    add c
    or c
    pop bc
    ld b, c
    rst $38
    and b
    ld [$0426], sp
    ld a, h
    add e
    add e
    rst $38
    rst $38
    ld a, l
    daa
    db $fc
    inc hl
    cp $23
    cp [hl]
    jp Jump_02f_435e


    jp z, $f4f7

    ld a, a
    ld l, b
    cp a
    db $fc
    ld [$0f26], sp
    dec e
    db $fd
    dec a
    pop af
    ld de, $3ee4
    ld_long a, $ff5f
    ld h, l
    rst $38
    ld b, $08
    add d
    inc b
    rst $38
    add c
    ld [$1602], sp
    rlca
    adc [hl]
    rra
    dec e
    rst $38
    db $e3
    ld [$0f26], sp
    rlca
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    add hl, de
    jr @+$01

    rla
    rst $38
    ret nz

    rst $38
    and b
    rst $18
    ld [hl], b
    rst $18
    ld l, b
    rst $18
    ld l, b
    rst $28
    scf
    db $ec
    push af
    sbc b
    cp b
    rst $38
    ld b, $ff
    ld a, [bc]
    rst $30
    inc e
    rst $28
    inc [hl]
    rst $28
    inc [hl]
    rst $18
    add sp, $5f
    xor $33
    rst $38
    dec b
    nop
    add hl, bc
    jr nc, @+$01

    ret nc

    dec b
    nop
    ld bc, $fe01
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$38
    reti


    ld l, c
    ld sp, hl
    ld a, e
    dec b
    nop
    ld bc, $1fe0
    ld [hl], b
    rrca
    jr c, jr_02f_6db0

    jr jr_02f_6daa

    inc e
    rlca
    inc e
    db $fd
    dec bc
    rst $38
    rlca

jr_02f_6daa:
    db $fc
    inc e
    ld sp, hl
    add hl, sp
    ld hl, sp+$6b

jr_02f_6db0:
    ld sp, hl
    set 7, e
    adc e
    cp $07
    ret nz

    ld a, b
    sub d
    cp $18
    ld e, $94
    sub a
    ret nz

    jp $f0f0


    ld e, a
    rst $28
    ld a, a
    ldh a, [rTAC]
    db $fd
    sub e
    rst $38
    jr nc, @+$01

    ld d, e
    rst $38
    rlca
    cp $1f
    rra
    rst $30
    db $ed
    rst $38
    inc e
    ld a, a
    and b
    rst $38
    ret nz

    ld a, a
    ldh a, [$3f]
    ld hl, sp-$41
    ld l, h
    cp a
    ld h, [hl]
    cp a
    ld [c], a
    rst $38
    ret nz

    di
    rla
    rst $20
    ld l, $d9
    ld a, a
    or a
    db $dd
    xor $ef
    xor $2b
    cp $33
    cp $13
    jp $83ce


    adc [hl]
    inc bc
    ld c, $01
    rrca
    ld bc, $0007
    dec b
    reti


    ld bc, $0ffc
    rst $38
    dec bc
    rst $38
    add hl, de
    rst $38
    ld de, $02fe
    db $fc
    add h
    ld a, c
    reti


    ld h, d
    db $e3
    cpl
    rst $28
    inc l
    db $fc
    cp b
    add sp, -$48
    add sp, $5f
    ld [hl], a
    xor a
    ld hl, sp-$69
    rst $38
    ld e, c
    cp $ef
    add sp, $6f
    ld a, c
    ccf
    ld a, [hl+]
    ccf
    ld a, [hl+]
    rst $38
    call nc, Call_000_28ff
    rst $38
    ret nc

    rst $38
    jr nz, jr_02f_6eb4

    ldh [rIE], a
    and b
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    db $10
    dec b
    nop
    inc bc
    inc de
    cp $06
    ei
    dec de
    db $fc
    ccf
    pop hl
    ld a, a
    jp nz, $e4ff

    ccf
    cp $1f
    ldh [$e3], a
    dec e
    rra
    and $e6
    ld a, h
    db $fc
    xor h
    db $fc
    ld c, h
    db $fc
    ld c, h
    db $fc
    adc d
    ld a, [$8785]
    ld [$0c0f], sp
    rrca
    ld d, e
    ld e, a
    jr nc, jr_02f_6ea9

    xor a
    cp a
    ld h, b
    ld a, a
    ld e, $1f
    scf
    rst $38
    di
    sbc $39
    rst $28
    ld hl, sp-$31
    db $fc
    rra
    ld hl, sp-$11
    ld a, [$fc0f]
    ccf
    rst $38
    sbc $e1
    rst $38
    sbc a
    rst $38
    cp $f9
    rst $10
    cp $6d
    db $db
    ld a, [hl]
    ret


    ld d, a
    db $ed
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [rIE], a
    ldh a, [$df]
    jr c, @-$0f

    inc e
    rst $38
    sub b
    rst $38
    ldh [rIE], a
    ld sp, $01ff
    rst $38
    ld bc, $6005
    ld [bc], a

jr_02f_6ea9:
    dec b
    add d
    db $10
    pop af
    pop af
    or b
    or b
    ld b, b
    ret nz

    add b
    add b

jr_02f_6eb4:
    add b
    add b
    dec b
    db $fc
    ldh a, [rSC]
    ld [bc], a
    adc c
    adc c
    and a
    and a
    or h
    or a
    rst $08
    dec b
    jr nc, jr_02f_6ec5

jr_02f_6ec5:
    rst $38
    rst $18
    rst $38
    ld h, b
    ld a, a
    ret nz

    rst $38
    or e
    rst $38
    ld c, d
    rst $18
    jp c, $6eff

    xor $16
    or $ec
    db $ec
    dec d
    push de
    cp a
    cp $3f
    ld a, [c]
    rrca
    db $fc
    inc bc
    cp $01
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    rlca
    rst $38
    jr nc, @+$07

    nop
    dec b
    add b
    dec b
    jp c, $0511

    add l
    ld [de], a
    rrca
    or $1a
    rst $38
    rra
    dec b
    nop
    nop
    ld bc, $8001
    add b
    pop bc
    pop bc
    ld a, $3e
    jr nc, jr_02f_6f38

    rst $18
    rst $28
    rst $38
    ld a, b
    rst $38
    nop
    ld e, a
    ld a, a

jr_02f_6f10:
    and b
    rst $38
    rst $38
    rst $38
    ld a, a
    ld h, b
    rra
    jr jr_02f_6f10

    db $fc
    rst $38
    inc c
    rst $38
    nop
    ld [$1cea], a
    sbc h
    rst $38
    rst $30
    cp $06
    ld hl, sp+$18

Jump_02f_6f28:
    ldh [$60], a
    cp a
    rst $38
    rst $38
    ret nz

    ld bc, $0107
    rlca
    jp $0fce


    ld c, $73
    ld [hl], e

jr_02f_6f38:
    ld sp, $053f
    ld a, [$0512]
    nop
    inc bc
    ret nz

    ld a, a
    and b
    rst $38
    ldh [rIE], a
    nop
    ld b, b
    ld [bc], a
    db $10
    rst $38
    db $10
    rst $38
    rst $38
    rlca
    ld bc, $02fe
    db $fd
    rlca
    stop
    dec b
    ret nz

    rst $38
    add b
    rst $38
    add e
    db $fc
    add a
    stop
    inc bc
    inc bc
    db $fc
    rrca
    ldh a, [$7c]
    add b
    pop af
    nop
    db $10
    cpl
    nop
    ld h, b
    sbc a
    ldh a, [rIF]
    cp b
    ld l, a
    ld a, b
    ccf
    ldh a, [$2f]
    add sp, $77
    db $fc
    stop
    rrca
    ld [$ff10], sp
    pop af
    db $fc
    rlca
    db $fc
    rlca
    ld sp, hl
    rrca
    pop af
    rra
    push af
    rra
    db $ed
    ccf
    sub $7f
    ret c

    ld a, e
    ei
    adc a
    db $fc
    sbc a
    ldh [$3f], a
    ld e, h
    ld a, a
    ld a, b
    ld l, [hl]
    sub b
    db $dd
    ld bc, $037f
    sbc $c1
    rst $18
    inc sp
    cp $8f
    cp h
    rst $00
    call c, $ec07
    db $e3
    sub $b3
    ld h, [hl]
    di
    ld l, $e7
    cp h
    rst $20
    inc a
    di
    ld e, $f1
    rra
    or $1f
    push af
    rra
    ld [c], a
    ccf
    ld [$103f], a
    nop
    dec b
    add b
    ld a, a
    ret nz

    cp a
    ldh [$5f], a
    ldh a, [rIE]
    ld b, $f9
    rrca
    pop af
    dec e
    or $1b
    xor $33
    db $ed
    scf
    db $dd
    ld l, a
    db $fd
    ld d, a
    cp c
    ei
    ld e, h
    rst $38
    ld d, h
    rst $38
    sub [hl]
    rst $38
    sub l
    rst $38
    ld d, h
    cp a
    ld l, b
    cp a
    ld l, e
    cp h
    inc bc
    ld a, [$be1f]
    scf

Jump_02f_6fef:
    ld [c], a
    ld h, a
    call nz, $85ce
    ld a, c
    rst $18
    ld [hl+], a
    rst $38
    sbc h
    ld a, a
    ei
    ld l, $8f
    ld a, h
    sub a
    ld a, h
    ld h, a
    rst $38

Call_02f_7002:
    sub d
    rst $28
    ld a, b
    add a
    ld a, b
    inc bc
    db $fc
    ld [bc], a
    db $ed
    ccf
    db $ed
    ccf
    call $0dff
    rst $18
    dec [hl]
    ld a, a
    ld b, l
    rst $38

jr_02f_7016:
    add d
    rst $38
    add [hl]
    ei
    ld e, a
    ldh a, [$2f]
    ld hl, sp+$2f
    ld hl, sp+$57
    cp h
    db $10
    ld d, $10
    db $eb
    sbc [hl]
    db $eb

jr_02f_7028:
    sbc [hl]
    db $fd

jr_02f_702a:
    and a
    ld a, [$facf]
    rrca
    db $10
    inc h
    inc d
    ei
    rrca
    ld l, a
    cp b
    rst $28
    jr c, jr_02f_7028

    jr c, jr_02f_702a

    add hl, sp
    cp $1b
    db $fd

Call_02f_703f:
    ld a, [hl]
    cp $9f
    rst $38
    add hl, bc
    push bc
    ld a, $f9
    ld e, $eb
    jr c, jr_02f_7016

    db $fc
    ld b, e
    call c, $f443
    rst $08
    ld h, h
    xor l
    or $fe

Jump_02f_7055:
    ld bc, $01fe
    stop
    ld b, $fe
    ld bc, $f38e
    ld a, [hl]
    db $e3
    ld e, [hl]
    di
    ld c, [hl]
    ei
    rrca
    rst $28
    rst $08
    dec sp
    rst $28
    adc e
    rst $28
    sbc d
    db $10
    inc e
    db $10
    db $10
    ld [hl], b
    ld de, $eb1e
    sbc $eb
    ld a, $ff
    inc e
    ei
    ld c, $fb
    ld c, $ff
    inc c
    rst $38
    inc b
    db $10
    add [hl]
    ld de, $ff10
    ldh a, [$08]
    stop
    ld a, [bc]
    xor $73
    db $fd
    inc de
    db $fd
    dec bc
    rst $30
    dec b
    rst $38
    add hl, bc
    cp $09
    cp $05
    rst $38
    dec b
    ld a, c
    add a
    add a
    rst $38
    rst $38
    ld a, c
    rst $38
    ld bc, $03fe
    cp $83
    rst $38
    add c
    rst $38
    ld bc, $b25f
    ld a, a
    and b
    ld e, a
    ret nz

    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    inc e
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    ld [$d610], sp
    ld de, $0310
    rrca
    ld [$03ff], sp
    stop
    ld [bc], a
    db $fd
    dec bc
    db $fd
    ld [hl], d
    xor $9b
    rst $38
    rst $38
    ei
    ld a, [bc]
    db $10
    adc d
    inc de
    ld [bc], a
    cp $c7
    ei
    ld l, e
    rst $18
    call c, $30ff
    stop
    ld [bc], a
    cp a
    ld e, b
    rst $28
    cp h
    ei
    ld a, [$56df]
    rst $38
    jr nz, @+$12

    nop
    rrca
    inc bc
    ld b, b
    ld [bc], a
    inc b
    rst $38
    inc b
    rst $38
    rst $38
    ld c, l
    inc b
    dec h
    rrca
    ld de, $fd06
    dec c
    ld sp, hl
    dec bc
    db $fd
    dec c
    ldh a, [rNR22]
    ld hl, sp+$1a
    inc b
    inc h
    rlca
    ld bc, $83fe
    cp $83
    inc b
    inc h
    ld [bc], a
    ei
    ld a, b
    cp l
    db $fc
    ld a, [hl]
    add $e7
    add e
    rst $08
    inc b
    sbc a
    inc bc
    inc b
    ld h, b
    rrca
    inc d
    dec b
    cp $02
    ldh a, [rNR22]
    ld hl, sp+$1b
    ldh a, [$15]
    ld hl, sp+$1b
    ldh a, [rNR21]
    ld hl, sp+$1b
    ldh a, [$37]
    ldh [$ae], a
    inc b
    sbc h
    nop
    cp $83
    rst $38
    or c
    rst $18
    ldh a, [$9f]
    sbc c
    ld l, [hl]
    ei
    ld e, h
    push af
    sbc $82
    db $dd
    sub h
    ld l, e
    ld c, b
    ld a, a
    ld h, b
    cp a
    ldh a, [$5f]
    ret z

    rst $18
    add sp, -$31
    db $f4
    inc b
    inc h
    rrca
    ld c, $61
    rst $18
    ld [hl], b
    rst $28
    inc a
    di
    rra
    ldh a, [rNR22]
    db $fc
    dec c
    ld a, [$fd0a]
    rra
    ld [hl], b
    ld [hl], a
    pop hl
    rst $28
    or b
    or h
    ld hl, $ba2d
    cp e
    ld b, h
    rst $28
    ld b, h
    cp $45
    rst $10
    xor l
    rst $28
    ld d, l
    rst $18
    ld l, c
    ld a, e
    sbc b
    rst $38
    inc d
    call c, Call_02f_7d64
    and d
    cp a
    ld b, d
    rst $18
    rst $08
    ld d, h
    rst $08
    ld [hl], h
    rst $08
    ld d, h
    adc a
    db $f4
    rrca
    or h
    rra
    ld l, b
    rra
    add sp, $3f
    ret nc

    inc b
    inc h
    rrca
    ld a, [bc]
    ld bc, $03ff
    db $ec
    dec a
    db $f4
    scf
    db $eb
    dec hl
    rst $38
    ld a, e
    adc [hl]
    rst $08
    sub l
    rst $30
    ld c, a
    ld l, [hl]
    rst $08
    db $fc
    cp d
    rst $38
    ld b, h
    cp $83
    cp e
    ld bc, $bad7
    rst $38
    rst $00
    ld b, l
    add $83
    rst $38
    ld b, a
    ld h, c
    rst $28
    ld d, b
    push de
    xor e
    xor e
    rst $38
    cp [hl]
    rst $28
    ld sp, hl
    ld b, a
    xor $c7
    rst $08
    db $e3
    ld a, $ff
    ldh [$3f], a
    and b
    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh a, [$1f]
    ld hl, sp-$39
    db $fc
    rst $38
    inc a
    inc b
    inc h
    inc c
    db $fd
    rlca
    cp $07
    rst $38
    inc bc
    inc b
    inc h
    ld b, $8f
    ld a, [c]
    ld a, a
    cp [hl]
    rst $38
    ret nz

    inc b
    inc h
    rlca
    jr c, @+$06

    inc h
    ld a, [bc]
    di
    ld e, $f3
    rra
    ldh a, [$3f]
    pop af
    ld c, a
    cp $7d
    inc b
    db $e4
    rla
    ret nz

    cp a
    ldh [$7f], a
    ldh [rIE], a
    ldh [rDIV], a
    inc h
    rrca
    ld bc, $0240
    ld [$08ff], sp
    rst $38
    or $70
    rst $38
    adc h
    adc a
    di
    ld [$0700], sp
    rlca
    cp $0b
    db $f4
    ld e, $08
    nop
    dec b
    ret nz

    ld a, a
    ldh [rIE], a
    xor b
    rst $38
    db $e4
    ld [$0500], sp
    ld b, $fd
    rrca
    cp $2b
    cp $4e
    ld [$0700], sp
    ret nz

    rst $38
    and b
    ld e, a
    pop af
    ld [$0700], sp
    inc e
    rst $38
    ld h, d
    db $e3
    sbc [hl]
    di
    ld c, h
    call nz, $fb7b
    inc h
    push af
    ld a, [hl+]
    cp $11
    db $fd
    ld a, [bc]
    rst $38
    ld b, $ff
    ld bc, $9ef0
    db $fc
    ld l, a
    ld a, l
    sub a
    sbc e
    ld l, [hl]
    ld l, e
    sbc a
    adc c
    ld a, e
    ld e, h
    and l
    ld [c], a
    sbc $ff
    and h
    ld e, a
    ld a, [c]
    sbc a
    ld a, [c]
    rst $38
    ld h, e
    db $fc
    rlca
    ld hl, sp-$32
    ld a, c
    db $eb
    ld d, $f7
    cp $4a
    db $f4
    sbc a
    di
    sbc a
    rst $38
    adc h
    ld a, a
    pop bc
    ccf
    rst $20
    inc a
    xor a
    ret nc

    sbc $1f
    ld a, [c]
    ld a, [hl]
    db $ed
    ld a, l
    jp nc, $ecb3

    xor h
    di
    inc hl
    cp h
    ld [hl], l
    ld c, d
    adc a
    rst $30
    sbc a
    ld h, h
    ld b, a
    cp h
    cp a
    ld c, b
    ld e, a
    xor b
    rst $38
    db $10
    ld a, a
    and b
    rst $38
    ret nz

    ld [$0700], sp
    ld [$f0ff], sp
    inc bc
    rst $38
    inc c
    ei
    dec [hl]
    rst $38
    ld c, $ff
    ld bc, $01ff
    rst $38
    ld c, $fe
    ld [hl], c
    pop af
    adc [hl]
    add a
    ld a, c
    rla
    ld a, l
    sub d
    cp d
    ret nc

    rst $30
    ret c

    db $fd
    call z, $8f6f
    db $eb
    adc a
    db $ed
    adc e
    db $eb
    pop de
    ld a, l
    sub e
    cp d
    rla
    rst $18
    scf
    ld a, a
    ld h, a
    db $ec
    ld [c], a
    xor a
    db $e3
    ld l, [hl]
    and e
    xor a
    cp a
    ld e, b
    rst $38
    ldh [$08], a
    nop
    ld bc, $ffe0
    inc e
    rra
    db $e3
    jp $083c


    cp [hl]
    add hl, bc
    add b
    rst $38
    ld h, b
    db $fc
    inc de
    di
    inc e
    cp $0d
    rst $38
    inc bc
    ld [$0400], sp
    ld l, [hl]
    sub e
    ld [bc], a
    rst $38
    sbc $3f
    cp c
    db $eb
    db $fc
    ld a, l
    db $fc
    inc b
    ei
    dec bc
    rst $38
    inc e
    ld l, e
    jp hl


    inc d
    or a
    inc bc
    dec de
    ld b, b
    ld b, b
    ld hl, sp-$48
    ld a, a
    rst $00
    ld a, [hl]
    ld h, d
    rst $38
    and e
    xor h
    cpl
    ld d, b
    db $db
    add b
    or c
    dec b
    dec b
    ld a, $3b
    db $fc
    add $fd
    adc l
    rst $38
    adc d
    db $ec
    sub e
    add c
    cp $f6
    ld sp, hl
    dec sp
    xor a
    ld a, a
    ld a, h
    ld a, a
    ld b, b
    cp a
    and b
    rst $38
    ld [hl], b
    ld a, a
    sub b
    sbc a
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    add b
    ld [$0bbe], sp
    ld [$f6ff], sp
    jr z, @+$01

    jr nc, jr_02f_735e

    cp [hl]
    ld [$c4fc], sp
    rst $38
    rlca
    db $fc
    inc b

jr_02f_735e:
    rst $38
    rlca
    ld hl, sp+$0c
    rst $38
    rrca
    ld [$10a8], sp
    ld a, a
    ld b, [hl]
    rst $38
    ret nz

    ld a, a
    ld b, b
    rst $38
    ret nz

    ccf
    ld h, b
    rst $38
    ldh [$08], a
    cp b
    db $10
    rst $38
    jr z, @+$01

    jr @+$0a

    ld a, b
    rra
    ld b, $08
    push bc
    rra
    db $10
    ld hl, sp+$0c
    db $fc
    rlca
    ld [$1626], sp
    rst $38
    nop
    ccf
    ld h, b
    ld a, a
    ret nz

    ld [$1f76], sp
    ld [$7908], sp
    dec e
    ld b, b
    ld [bc], a
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld a, [c]
    ld bc, $0009
    inc bc
    add hl, bc
    rst $38

jr_02f_73a3:
    db $f4
    ret nz

    cp a
    or b
    rst $08
    ld l, h
    db $e3
    ld e, d
    ld sp, hl
    add l
    rst $28
    nop
    rst $00
    db $10
    rst $28
    jr c, jr_02f_73a3

    ld l, h
    sub e
    cp $6d
    ld a, h
    rst $38
    sub $39
    cp e
    add hl, bc
    nop
    inc bc
    rlca
    ei
    ld a, [de]
    rst $20
    ld l, h
    adc a
    or h
    ccf
    ld b, d
    add hl, bc
    ld [$4009], sp
    rst $38
    ld h, b
    add hl, bc
    ld [$090b], sp
    dec b
    ld [bc], a
    ld bc, $02fe
    cp $03
    db $fc
    dec b
    db $fd
    rlca
    ld sp, hl
    dec bc
    add d
    add e
    db $f4
    adc $44
    ld h, a
    ld h, h
    db $ec
    sbc e
    or e
    sub c
    di
    add hl, de
    ld a, l
    ld h, [hl]
    or $82
    rst $38
    ld a, h
    cp $aa
    add e
    sub $92
    ld a, l
    ld a, l
    ld a, l
    add hl, sp
    ld b, l
    ld b, l
    xor $aa
    add e
    add e
    ld e, a
    db $e4
    ld b, a
    call z, Call_02f_6c4f
    cp a
    sub c
    ld e, $93
    ld a, $7e
    jp hl


    jp hl


    rst $38
    ld d, b
    rst $38
    ld [hl], b
    adc a
    xor b
    and a
    db $f4
    sub a
    db $fc
    ld [hl], e
    ld a, [$beeb]
    ld a, l
    ld [hl], l
    add hl, bc
    ld d, b
    inc c
    ei
    rrca
    push af
    rla
    rst $38
    dec de
    cp $1e
    db $e4
    ld l, $e7
    ccf
    rst $20
    dec a
    db $e3
    dec sp
    sub d
    ei

jr_02f_7435:
    call c, $a95f
    xor h
    dec sp
    inc a
    adc a
    cp h
    rst $38
    db $f4
    ld e, e
    sbc $43
    sbc $ba
    sub e
    add $fc
    rst $38
    ld a, b
    rst $08
    ld [hl], b
    rst $20
    ld a, [hl-]
    rst $38
    inc c
    add hl, bc
    nop
    nop
    ld b, a
    rst $20
    inc c
    rst $18
    rst $08
    dec sp
    or $0f
    ldh [$1f], a
    ldh [rTMA], a
    add sp, $38
    rst $28
    ccf
    dec e
    rra
    ld c, b
    ld e, [hl]
    db $fc
    rst $38
    ld a, h
    ld l, a
    ld [hl], h
    ld a, a
    ld b, h
    ld e, a
    add h
    cp l
    ld [bc], a
    dec sp
    rst $38
    nop
    rst $38
    add b
    add hl, bc
    ld [de], a
    db $10
    ld a, a
    ld b, b
    ld a, a
    ret nz

    add hl, bc
    ld a, [de]
    db $10
    call nz, $c45d
    ld a, a
    call nz, $c57f
    ld a, a
    sbc a
    cp [hl]

jr_02f_748a:
    cp a
    and h
    rst $38
    push bc
    cp $c3
    ld b, l
    rst $08
    inc h
    and l
    jr jr_02f_7435

    sub c
    sbc h
    di
    ld [hl], h
    db $e3
    db $fc
    daa
    ld [hl], b
    daa
    cp b
    rst $38
    jr jr_02f_748a

    rst $38
    add hl, bc
    ld [$e408], sp
    ld c, h
    db $e3
    sbc a
    ldh [rNR31], a
    ldh a, [rIF]
    ldh a, [$0a]
    ld hl, sp+$07
    ld a, [$fa07]
    inc bc
    ld [bc], a
    ld a, a
    ld [bc], a
    ld a, a
    jp nz, Jump_000_3adf

    rst $38
    rla
    rst $30
    ld a, [bc]
    cp d
    ld a, [bc]
    ld a, e
    inc b
    rst $28
    ccf
    and b
    ccf
    ld hl, sp+$27
    db $e4
    inc hl
    ld a, [c]
    sub e
    jp c, Jump_02f_7a53

    ld a, e
    cp $ff
    or $fc
    push bc
    db $fc
    add [hl]
    db $fc
    add a
    db $fc
    inc b
    cp $02
    add hl, bc
    ld b, $02
    cpl
    ldh [$27], a
    xor b
    inc de
    inc e
    ld [$061f], sp
    rrca
    add c
    add l
    cp $7e
    db $fc
    inc b
    add hl, bc
    ld [$3e04], sp
    pop bc
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ei
    ld [bc], a
    push af
    ld c, $e7
    inc e
    adc e
    ld a, h
    scf
    ld hl, sp-$2a
    reti


    db $e4
    db $e3
    ldh [rNR44], a
    add a
    ccf
    add a
    ld a, h
    add a
    ld l, h
    rrca
    ld hl, sp+$0f
    cp b
    rra
    ldh a, [$7f]
    ldh [rIE], a
    add b
    rst $38
    ld [hl], $ff
    ld [de], a
    rst $38
    db $10
    add hl, bc
    ld [$0309], sp
    rst $38
    inc b
    rst $38
    rlca
    add hl, bc
    ld [$f804], sp
    ld a, b
    or d
    ld a, [$cfff]
    rst $38
    ld a, b
    add hl, bc
    ld [$8005], sp
    ld a, a
    ldh [rIE], a
    ret nc

    rst $38
    ld [hl], b
    add hl, bc
    ldh [rNR14], a
    rst $20
    daa
    di
    ld [de], a
    di
    ld d, $e1
    dec l
    ret nz

    adc $16
    ld [hl], a
    rst $38
    ld sp, hl
    rst $38
    adc a
    add hl, bc
    ld c, $06
    ld a, a
    ld h, b
    rst $38
    sub b
    add hl, bc
    ld b, $21
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    ld c, l
    dec b
    dec hl
    rrca
    rla
    inc bc
    db $fc
    inc b
    ld hl, sp+$1c
    dec b
    ld a, [hl+]
    rlca
    add b
    ld a, a
    ld b, b
    ccf
    ld [hl], b
    dec b
    ld a, [hl+]
    rrca
    ld [hl+], a
    ld bc, $01ff
    cp $02
    cp $03
    dec b
    jp c, $e400

    ld a, [hl]
    adc $bb
    ld hl, sp+$1b
    ld l, h
    ccf
    ld c, e
    ld c, a
    ld l, a
    ld e, d
    ld b, a
    add $73
    adc $4f
    db $fc
    rst $20
    cp d
    ccf
    or c
    ld l, l
    ld sp, hl
    and h
    db $e4
    db $ec
    or l
    call nz, $9cc7
    rst $20
    dec b
    sub d
    ld b, $05
    ld [$0513], sp
    or l
    rrca
    db $10
    dec b
    ld a, [hl+]
    ld [$25e6], sp
    rst $30
    dec l

jr_02f_75ba:
    or $96
    sbc a
    sub b
    ret nc

    ld d, b
    di
    inc a
    ld hl, sp+$18
    ld hl, sp+$7f
    rst $08
    ld c, c

jr_02f_75c8:
    rst $18
    ld l, c
    rst $18
    jp nc, $12f3

    rla
    inc d
    sbc a
    ld a, b
    rra
    rra
    inc a
    ldh a, [rIE]
    jr jr_02f_75c8

    jr z, jr_02f_75ba

    ld d, b
    rst $38
    ld d, b
    rst $38
    and b
    cp a
    ldh [$3f], a
    ldh [$7f], a
    ret nz

    dec b
    ld l, d
    rrca

jr_02f_75e9:
    rrca
    db $fd
    ld c, $f4
    rra
    db $e3
    inc sp
    rst $20
    jr nz, jr_02f_75e9

    ld de, $0dfe
    rst $38
    inc bc
    adc b
    adc b
    rst $28
    ld [$b878], sp
    rst $08
    ld hl, sp+$08
    add sp, $1f
    ret nc

    ld de, $fed0
    ldh a, [$37]
    add hl, sp
    cp a
    ld a, a
    ld [hl], c
    ld l, a
    ret nz

    ld a, h
    ret nz

    ld a, b
    ld a, b
    ld a, b
    rst $38
    ld b, [hl]
    ld a, a
    ld b, c
    dec b
    ld c, $11
    ret nz

    ld a, a
    ld [hl], b
    cpl
    jr z, @+$01

    inc h
    ld c, a
    db $f4
    add a
    db $fc
    dec b
    ld a, [hl+]
    rrca
    dec e
    ldh [$3f], a
    ldh [rNR41], a
    ldh [$3f], a
    ldh a, [rNR10]
    db $fc
    rrca
    rst $38
    inc bc
    dec b
    ld a, [hl+]
    nop
    ld a, [hl]
    cp $4c
    ld [hl], b
    daa
    ld hl, sp+$1f
    jr c, jr_02f_7651

    rst $18
    rst $30
    ldh a, [rTIMA]
    ld a, [hl+]
    nop
    rrca
    jr c, jr_02f_766a

    db $10
    ccf
    jr nz, @+$01

    dec b
    ld l, a

jr_02f_7651:
    rra
    ld b, $40
    ld [bc], a
    ld [$08ff], sp
    rst $38
    rst $38
    ld c, l
    ld [$0f1d], sp
    add hl, bc
    inc c
    ei
    dec bc
    ld [$031c], sp
    ld bc, $11ff
    rst $38
    ld [hl-], a

jr_02f_766a:
    rst $38
    ld e, l
    rst $30
    ld d, a
    ld [$011c], sp
    add b
    ld a, a
    ret nz

    rst $38
    ret nz

    cp a
    ldh [$3f], a
    ld h, h
    rra
    ld a, $08
    inc e
    dec b
    ld bc, $01ff
    rst $38
    add hl, de
    or $7f
    ld [$051c], sp
    add b
    ld a, a
    cp $ef
    cp h
    ccf
    ldh a, [$08]
    inc e
    add hl, bc
    ld bc, $00ff
    db $fc
    dec b
    cp $02
    cp $1a
    db $f4
    ld d, $f8
    inc c
    ld hl, sp-$08
    inc b
    db $fc
    add l
    add l
    db $fd
    ei
    reti


    or a
    ret c

    or a
    ld [hl], c
    ld e, a
    ld d, d
    ld a, a
    ld b, b
    ld l, e
    add b
    cp $00
    ld e, e
    ccf
    ld [hl-], a
    ld l, a
    ld e, a
    jp z, $90bb

    ld [hl], d
    rra
    rst $38
    ld a, e
    and $e3
    sbc a
    inc e
    db $fc
    xor l
    ei
    ld [hl-], a
    cp a
    ld a, l
    ld a, a
    ld h, e
    ld e, a
    and e
    cp $fb
    ld a, [hl]
    rst $38
    cp $87
    db $fc
    ld l, a
    ld hl, sp-$01
    sbc b
    rst $38
    add b
    ld [$0f1c], sp
    ld b, $01
    pop bc
    ld b, c
    ld hl, sp+$38
    pop hl
    ld hl, $3fff
    sub $79
    jp hl


    cpl
    cp $7e
    and d
    db $e3
    sbc b
    cp e
    cp b
    rst $28
    ld [hl], e
    ld [hl], a
    rlca
    rst $08
    ld b, $ff
    ld a, [de]
    ei
    ld l, c
    ld sp, hl
    call Call_000_38fd
    ld hl, sp+$68
    ret c

    ld [hl], h
    call z, $8cfc
    ld a, [$e21e]
    ld a, $e6
    ld a, [hl]
    xor d
    ld a, d
    adc a
    adc h
    rra
    jr @+$71

    ld a, b
    rrca
    inc e
    db $eb
    ld [$ac2f], a
    rst $08
    ret z

    rra
    jr jr_02f_772a

    inc e
    rrca
    dec c
    di
    ld [hl], e
    di
    ld d, e
    db $ed

jr_02f_772a:
    sbc a
    ld sp, hl
    ld sp, hl
    call $c2bd
    cp [hl]
    cp $fe
    pop hl
    ld e, c
    dec a
    dec a
    rlca
    ld b, $85
    add [hl]
    db $e3
    db $e3
    ld e, a
    ld e, a
    di
    di
    cp a
    rst $28
    rst $38
    ldh [$f1], a
    ld [hl], c
    jp $8643


    add [hl]
    ld e, $1e
    rst $28
    rst $28
    ld a, [hl-]
    ld a, $ff
    rst $08
    rst $38
    ld bc, $343f
    cpl
    ld [hl-], a
    cp a
    cp [hl]
    rst $20
    ld a, [$fa87]
    rst $38
    cp $0f
    inc [hl]
    adc a
    db $fc
    ld [$0f1c], sp
    dec c
    db $e3
    ld a, a
    db $fd
    ld a, l
    pop bc
    ld b, c
    rst $38
    cp a
    rst $38
    xor d
    rst $38
    ld d, h
    ld [$04b2], sp
    rst $38
    ld b, b
    rst $38
    ret nz

    ld [$051c], sp
    inc bc
    rst $38
    dec b
    rst $38
    rlca
    ld [$061c], sp
    ld a, a
    ld a, h
    rlca
    inc b
    rst $38
    ld a, [$f808]
    rla
    ld [$0b1d], sp
    ld b, b
    ld [bc], a
    ld b, $ff
    ld b, $ff
    db $f4
    ld bc, $0806
    inc bc
    jr nc, @+$01

    ld d, b
    rst $38
    and c
    rst $38
    and c
    ld a, a
    pop hl
    rst $38
    cpl
    rst $38
    ld a, [hl+]
    rst $38
    dec h
    rst $38
    ld [hl], h
    rst $18
    ld l, [hl]
    rst $28
    or l
    rst $38
    ld d, d
    rst $30
    ld a, c
    rst $38
    adc c
    ei
    ld e, $ef
    db $fc
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    dec d
    rst $38
    and l
    rst $38
    add $ff
    add [hl]
    rst $30
    call z, $b8ef
    rst $38
    inc c
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    dec b
    cp $07
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    dec b
    ld b, $00
    dec b
    add b
    ld b, $58
    ld bc, $ff40
    ld [bc], a
    rst $38
    ld [bc], a
    ld b, $44
    nop
    rst $38
    dec b
    rst $38
    ld a, [bc]
    ld b, $6a
    ld bc, $ffb9
    sbc b
    ld a, a
    pop de
    ld a, a
    db $d3
    ld a, a
    rst $20
    cp l
    rst $20
    cp e
    db $ed
    cp e
    db $ec
    rst $38
    db $10
    cp a
    ret nc

    ld a, a
    ldh [rIE], a
    adc h
    rst $38
    ld [de], a
    rst $38
    ld h, $ef
    dec [hl]
    rst $38
    sub a
    rst $38
    jr @+$01

    ld e, h
    ei
    adc [hl]
    ei
    adc $ff
    and $ff
    ld d, [hl]
    rst $38
    inc a
    rst $30
    inc c
    ld b, $64
    inc bc
    dec b
    rst $38
    add hl, bc
    cp $0b
    cp $0b
    cp $13
    rst $38
    and b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    xor b
    ld b, $b8
    inc bc
    ld b, $6b
    ld [bc], a
    ld a, [bc]
    rst $38
    dec bc
    cp $17
    rst $38
    ld d, $ff
    ld d, $bf
    rst $28
    cp e
    db $ec

jr_02f_784b:
    rst $30
    ret c

    or $d9
    ld a, a
    sbc a
    rst $30
    jr c, jr_02f_784b

    add hl, de
    rst $38
    ld a, [de]
    rst $30
    ld hl, sp-$25
    inc a
    db $ed
    ld e, $ff
    rst $38
    ld a, h
    add a
    rst $38
    add h
    rst $38
    ld e, h
    rst $38
    dec h
    ei
    add [hl]
    ei
    adc [hl]
    ei
    ld b, a
    ld h, a
    cp [hl]
    db $fd
    ei
    db $fc
    inc de
    db $ec
    sbc e
    cp $09
    db $fc
    daa
    ld hl, sp-$31
    add sp, $1f
    pop de
    ccf
    dec h
    rst $38
    and l
    rst $38
    push bc
    rst $38
    ld c, c
    rst $38
    rst $38
    or h
    ld b, $10
    db $10
    rst $18
    ld [hl], h
    ld b, $16
    db $10
    rst $08
    ld a, d
    rst $08
    ld a, d
    rst $38
    ld d, $fd
    rla
    ld b, $22
    db $10
    db $fc
    rla
    db $fc
    rla
    db $fd
    ld b, $cb
    nop
    ld h, $ff
    inc bc
    rst $38
    ld bc, $f8ef
    rst $38
    ei
    rst $28
    cp l
    rst $20
    ld a, $f1
    ccf
    rst $38
    and l
    rst $38
    ld d, l
    rst $38
    ld c, [hl]
    rst $38
    call nc, $ed3f
    ccf
    ld [$f2bf], a
    rst $38
    rst $30
    or $0d
    or $0d
    or $ed
    and $5d
    ret z

    ld a, a
    rst $30
    cp [hl]
    rst $38
    sbc b
    rst $38
    ret nc

    ld c, c
    rst $38
    ld e, c
    rst $38
    ld e, c
    rst $38
    ld a, c
    rst $28
    db $fd
    rst $20
    cp l
    ld h, a
    rst $18
    inc sp
    rst $08
    dec sp
    rst $08
    ld a, d
    adc a
    ld a, [$7206]
    ld [de], a
    rrca
    ld a, [$fa4f]
    rst $28
    cp d
    rst $38
    ld a, [de]
    rst $38
    inc e
    rst $38
    inc l
    rst $38
    inc l
    rst $38
    ld c, h
    rst $38
    ld d, h
    rst $38
    sub d
    rst $38
    and c
    ei
    inc e
    push af
    ld e, $fb
    rrca
    push hl
    ld e, $c2
    ccf
    pop bc
    ccf
    ld [c], a
    rra
    inc c
    rst $38
    xor $1b
    rst $30
    dec c
    ld a, e
    add a
    db $fd
    cp $fe
    ld bc, $ff01
    cp $ff
    jr nz, @+$01

    rst $38
    and b
    rst $38
    ld h, b
    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld b, $b4
    db $10
    ccf
    ldh [$ef], a
    dec e
    rst $20
    rra
    rst $20
    inc e
    rst $00
    ccf
    push bc
    ccf
    rst $00
    ccf
    adc a
    ld a, c
    adc e
    ld a, h
    rst $28
    ld a, [hl-]
    rst $38
    jp c, $fabf

    rst $18
    ld [hl], h
    rst $38
    db $f4
    ld e, a
    or $db
    cp $fb
    ld l, $06
    or b
    ld bc, $ffa7
    ld e, h
    rst $38
    ld d, a
    rst $38
    ld l, $ff
    dec de
    rst $38
    ld c, $c0
    rst $38
    db $fc
    ccf
    rst $38
    ret z

    ei
    ld [hl], $f7
    rst $08
    rst $18
    dec a
    rst $38
    cp $ff
    nop
    jr nc, @+$01

    ccf
    rst $28
    ld a, [hl]
    rst $00
    rst $38
    add c
    rst $38
    add b
    ld b, $00
    ld [bc], a
    ld a, a
    ldh a, [$8c]
    rst $38
    dec de
    rst $38
    pop hl
    rst $38
    rst $08

jr_02f_7983:
    ld a, [hl]
    rst $38
    jr nc, @+$01

    ld e, a
    rst $38
    ld [hl], b
    jr jr_02f_7983

    inc l
    rst $38
    di
    rst $38
    adc h
    ld a, a
    rst $20
    rra
    rst $38
    sbc c
    rst $38
    rst $20
    rst $38
    inc a
    di
    ld a, $27
    cp $0b
    cp $f7
    db $fc
    ld e, a
    ld hl, sp-$01
    ldh [rIE], a
    ld b, b
    rst $38
    ret nz

    ld b, b
    ld [bc], a
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    rst $38
    dec bc
    ld bc, $0009
    dec bc
    add b
    add hl, bc
    nop
    dec bc
    ret nz

    add hl, bc
    nop
    rrca
    inc c
    add hl, bc
    rst $38
    ld hl, sp+$03
    cp $02
    rst $38
    ld bc, $02fe
    cp $02
    db $fc
    inc b
    db $fc
    inc b
    ld hl, sp+$08
    ld hl, sp-$78
    ld a, b
    ld l, b
    jr @+$1a

    rst $38
    add e
    db $fc
    add h
    ld hl, sp-$78
    ldh a, [$90]
    pop hl
    and c
    ld b, c
    ld b, c
    add c
    add c
    adc [hl]
    adc [hl]
    ld a, a
    ld b, b
    rst $38
    add b
    add hl, bc
    sub d
    ld bc, $ff09
    ldh a, [$f8]
    rlca
    ld b, $09
    ld [de], a
    ld a, [bc]
    cp $02
    add hl, bc
    nop
    inc bc
    inc c
    rst $30
    inc a
    rst $08
    ld a, b
    sbc a
    ldh a, [$bf]
    ld h, b
    add hl, bc
    nop
    ld [$00fc], sp
    pop af
    nop
    sbc a
    sbc a
    ldh [$7c], a
    ld [c], a
    daa
    ld a, [$d843]
    ld [hl], h
    cp $3e
    ld [hl-], a
    ld [hl-], a
    add d
    ld [bc], a
    jr nc, jr_02f_7a4e

    ret nz

    ret nz

    nop
    add b
    ld bc, $c381
    jp nz, $fc3f

    jp $c0fb


    ld b, $03
    inc bc
    rra
    inc e
    ld a, a
    ld h, b
    add hl, bc
    ld l, $03
    add b
    ld a, a
    ldh a, [$fd]
    inc b
    cp $05
    ld hl, sp+$0b
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    pop af
    rla
    pop af
    dec e
    ldh a, [rNR32]
    ld a, a
    ret nz

    add hl, bc
    sub h
    dec b
    add hl, bc

jr_02f_7a4e:
    dec hl
    ld bc, $09eb
    rst $38

Jump_02f_7a53:
    ei
    ld a, [$fd3a]
    inc a
    db $fd
    jr z, jr_02f_7a4e

    ld de, $0eff
    rst $38
    rrca
    db $f4
    ld a, $c8
    ld a, a
    ret z

    ld h, c
    ld_long a, $fff8
    add a
    rst $38
    nop
    rst $38
    cp $77
    adc a
    add hl, de
    rst $38
    ld h, $bf
    rrca
    db $dc, $07, $1a
    and e
    dec b
    ret


    jp Jump_000_2bf0


    ldh a, [$f1]
    sbc b
    push af
    inc [hl]
    pop af
    pop af
    jr @-$0e

    inc e
    pop af
    inc d
    ldh a, [$3c]
    pop af
    cp h
    ret nc

    ld hl, sp-$1f
    db $fc
    or c
    ld sp, hl
    add hl, bc
    sub d
    inc bc
    add hl, bc
    ld [hl], c
    inc d
    add hl, bc
    dec de
    ld [bc], a
    add hl, bc
    ld l, a
    ld bc, $02fe
    rst $38
    ld [bc], a
    rst $38
    ld bc, $fb90
    db $10
    cp $55
    cp h
    ld d, e
    cp [hl]
    ld c, c
    cp a
    inc h
    rst $18
    inc bc
    ld a, a
    add b
    scf
    ld b, h
    ld a, a
    jp $806f


    rst $38
    add b
    or $80
    rst $38
    ld a, a
    rst $38
    inc e
    db $e3
    rst $38
    rst $38
    ld [hl], b
    reti


    xor l
    db $e3
    ld hl, $5af1
    rst $00
    xor h
    rst $08
    pop af
    rst $38
    ld b, $ff
    ld sp, hl
    cp $ab
    ld sp, hl
    dec h
    db $fd
    ld b, a
    cp $43
    ld a, [$caa3]
    ld b, e
    cp d
    add a
    ld [hl], d
    rrca
    db $e4
    add hl, bc
    ld c, $0f
    dec c
    nop
    sbc l
    and b
    add a
    ret z

    ld h, b
    ld a, [c]
    jr c, @+$01

    rrca
    add hl, bc
    ld_long $ff13, a
    nop
    db $db
    nop
    ld a, [hl]
    add b
    nop
    ld e, l
    add b
    rst $38
    rst $38
    add hl, bc
    nop
    nop
    inc b
    ei
    nop
    ld a, a
    nop
    ldh a, [$0a]
    nop
    rst $10
    rrca
    rst $38
    ld hl, sp+$09
    nop
    nop
    rlca
    call z, Call_000_082f
    sbc a
    jr nc, jr_02f_7b9a

    ldh [$09], a
    ld l, $0d
    add hl, bc
    jp hl


    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_02f_7b9a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02f_7bff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02f_7d64:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02f_7ffc:
    nop
    nop
    nop
    nop
