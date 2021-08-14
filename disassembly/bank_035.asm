; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $035", ROMX[$4000], BANK[$35]

    dec [hl]
    ld d, c
    ld b, b
    ld bc, $1f42
    ld b, e
    xor h
    ld b, h
    ld h, $46
    call c, $9f47
    ld c, c
    ld h, l
    ld c, e
    ld [hl+], a
    ld c, l
    ldh a, [$4e]
    ld l, [hl]
    ld d, b
    ld l, b
    ld d, d
    and [hl]
    ld d, e
    ld de, $f555
    ld d, [hl]
    ld e, l
    ld e, b
    or l
    ld e, c
    call nz, $d25a
    ld e, e
    ld h, b
    ld e, l
    or b
    ld e, [hl]
    db $ed
    ld e, a
    dec d
    ld h, c
    sub e
    ld h, d
    ld c, e
    ld h, h
    rst $30
    ld h, l
    inc sp
    ld h, a
    dec h
    ld l, b
    and h
    ld l, c
    dec d
    ld l, e
    ld h, $6d
    ld l, $6e
    jr z, jr_035_40b2

    ld [de], a

Call_035_4044:
    ld [hl], b
    ret nz

    ld [hl], b
    call z, $ec71
    ld [hl], d
    db $ec
    ld [hl], e
    add $74
    jp Jump_035_4075


    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rrca
    ld b, $fd
    dec b
    db $fc
    inc b
    db $fc
    inc b
    db $fd
    dec b
    db $fd
    dec b
    ld hl, sp+$08
    ld [bc], a
    nop
    inc bc
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    cp a
    and b
    ld [bc], a
    nop
    rrca

Jump_035_4075:
    dec c
    cp $3e

jr_035_4078:
    db $fc
    ld b, d
    rst $28

Call_035_407b:
    jr nc, jr_035_4078

    inc e
    db $fc

Call_035_407f:
    dec h
    rst $18
    ld h, b
    ldh a, [$37]
    rst $38
    rrca
    ld a, a
    add b
    cp a
    add b
    ccf
    and b
    rst $38
    db $10
    rst $38
    ld [$04bf], sp
    ld e, a
    ld [hl+], a
    sbc l
    and e
    ld hl, sp+$08
    ldh a, [rNR10]
    db $e3
    inc hl
    call $d74e
    ld e, e
    db $fc
    ld h, h
    ld sp, hl
    ret z

    ld a, b
    cp b
    cp [hl]
    and b
    cp [hl]
    and d
    cp l
    and [hl]
    rst $18
    ld e, b
    sbc $d0
    sbc l
    db $10

jr_035_40b2:
    rst $28
    cp h
    db $d3
    ld a, e
    rst $38
    ldh a, [$6f]
    sbc b
    rst $18
    jr nc, jr_035_413c

    ldh a, [$7f]
    ld [$309f], sp
    ld a, a
    ld [hl], b
    xor a
    jr jr_035_40c9

    ld d, b
    dec c

jr_035_40c9:
    db $10
    pop hl
    ccf
    cp $1f
    cp $05
    db $fd
    dec bc
    rst $38
    rrca
    cp $03
    rst $38
    inc bc
    ld a, a
    add [hl]
    sbc a
    cp b
    ld l, a
    jr nc, @-$1f

    ldh [$7f], a
    ret nz

    rst $38
    add b
    rst $38
    add d
    cp a
    pop bc
    rst $00
    ld a, a
    ret c

    ld e, e
    rst $20
    cpl
    di
    rla
    db $fc
    ld c, $b6
    rrca
    cp c
    ret


    pop af
    sub c
    add b
    cp $00
    rst $38
    ldh a, [$f3]
    ld e, a
    ld e, a
    adc l
    adc [hl]
    ld h, h
    push hl
    sub [hl]
    rst $10
    ld c, a
    ld a, a
    sbc a
    ldh a, [$7f]
    ldh [$3f], a
    ldh [rIE], a
    ldh [rIE], a
    db $10
    rst $38
    inc e
    ld [hl], e
    sbc [hl]
    dec h
    rst $38
    ld [bc], a
    nop
    rrca
    inc c
    ld bc, $e19f
    jp nz, $bc7f

    rst $38
    ret


    cp a
    pop af
    sbc e
    db $f4
    push af
    cp a
    db $db
    ld a, a
    add b
    ld [hl], l
    push de
    or $96
    ld [hl], b
    ret nc

    jr c, jr_035_419d

    rst $30
    rst $08
    ld hl, sp-$79
    cp $41
    rst $18

jr_035_413c:
    nop
    ld [hl-], a
    ld a, $2c
    inc l
    ld hl, $5f21
    ld a, a
    add c
    cp $07
    ld hl, sp+$3f
    pop bc
    cp $00
    jp $dbee


    cp $df
    ld d, h
    rst $38
    jr nz, @-$03

    ld hl, sp-$05
    add d
    db $fc
    nop
    rst $38
    ld bc, $0002
    dec bc
    ld a, b
    rst $38
    dec c
    rst $38
    dec bc
    db $fc
    rrca
    ld hl, sp+$79
    add $9e
    pop bc
    ld b, c
    ld hl, sp+$38
    push bc
    ld [hl], l
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    ld a, a
    ret nz

    ld a, [hl+]
    ld [hl], l
    db $10
    ld [hl], a
    adc c
    cp e
    rrca
    ld e, $02
    nop
    nop
    ld a, a
    add b
    ccf
    ld b, b
    add b
    rst $38
    add b
    add b
    rst $38
    rst $38
    or a
    scf
    ld [bc], a
    nop
    nop
    di
    inc c
    add h
    ld a, a
    inc bc
    rst $38
    rra
    inc e
    rst $38
    ldh [$f7], a
    ld hl, sp-$01

jr_035_419d:
    ld bc, $827e
    ld a, h
    dec b
    db $e4
    sbc [hl]
    cp b
    adc $c9
    ld l, l
    ld hl, sp+$3c
    ld sp, hl
    dec c
    sbc a
    ret z

    rra
    call c, $3227
    rst $00
    call nz, Call_035_5c5f
    daa
    ld [hl+], a
    adc a
    adc [hl]
    ld a, a
    ld [hl], b
    jp z, $ff4a

    cp a
    rst $38
    ret nz

    ld [bc], a
    nop
    ld b, $47
    ld e, h
    add a
    adc l
    and a
    xor l
    rst $08
    ld c, c
    rst $38
    ld sp, $6e02
    ld [de], a
    rst $28
    rst $38
    rst $18
    rst $38
    ei
    db $db
    cp a
    db $db

jr_035_41da:
    ei
    sbc a
    ei
    sbc c
    rst $38

Jump_035_41df:
    adc h
    rst $38
    nop
    ld e, c
    ld a, d
    ld a, a
    rst $28
    ld a, a
    rst $30
    ld a, a
    jr c, jr_035_41da

    adc [hl]
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    nop

jr_035_41f2:
    ld hl, sp+$0c
    db $fc
    add h
    rst $38
    inc bc
    ld [bc], a
    nop
    rlca
    add b
    rst $38
    add b
    ld [bc], a
    nop
    ld [$0240], sp
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    ld c, l
    dec b
    cpl
    rrca
    dec de
    ld bc, $2e05
    rlca
    jr nc, jr_035_41f2

    ldh a, [$df]
    jr nc, jr_035_421c

    ld l, $0f
    ld [hl+], a
    rlca
    rst $38

jr_035_421c:
    ld [$0cfb], sp
    db $fd
    ld b, $fe
    inc bc
    rst $18

jr_035_4224:
    dec a
    rst $38
    ld [bc], a
    rst $38
    inc b
    ld a, [hl]
    add h
    db $fd
    res 7, [hl]
    ld l, e
    rst $18
    ld a, [hl-]
    xor a
    ld a, [de]
    ld [hl], a
    and d
    rst $08
    nop
    ccf
    ld h, b
    sbc a
    ld bc, $4bfe
    ld a, h
    push de
    ld l, [hl]
    push af
    ld e, [hl]
    ret


    ld e, [hl]
    ldh a, [rTIMA]
    ld l, $03
    add b
    dec b
    ld b, $13
    cp b
    dec b
    ld a, d
    rrca
    ld c, $63
    cp c
    ret nz

    ldh [rNR34], a
    cp $ff
    rst $38
    dec c
    ld a, [c]
    inc de
    pop hl
    ld hl, $4ccc
    or [hl]
    db $db
    ld c, h
    ld a, b
    cp c
    cpl
    rst $20
    xor l
    sub $fe
    jr c, jr_035_4224

    db $d3
    di
    rst $20
    and a
    ld e, l
    rst $20
    xor l
    add hl, de
    sbc d
    ld [hl], a
    or e
    add sp, $65
    ld a, e
    ld d, $1f
    rst $08
    rst $08
    rst $20
    push hl
    rst $18
    db $e4
    ld a, a
    add d
    sbc a
    ld a, h
    ld a, a
    ldh [rIE], a
    or b
    ld c, a
    ret z

    add a
    add h
    inc sp
    ld [hl-], a
    dec b
    ld l, $0f
    ld bc, $01fe
    rst $38
    dec b
    add l
    dec d
    ld e, [hl]
    sbc $ae
    xor [hl]
    adc a
    adc a
    ld e, a
    ld e, e
    ld a, a
    ld [hl], e
    ld a, [hl]
    ld b, d
    cp $82
    cp $02
    ld a, e
    ld a, e
    dec hl
    cpl
    ld [hl], l
    ld d, c
    jp c, Jump_035_57b8

    ld [hl], a
    and $a4
    db $eb
    cp d
    push af
    db $dd
    cp $fe
    db $e4
    db $f4
    xor $ea
    reti


    db $db
    ld [$e5ee], a
    and a
    push de
    ld e, a
    xor e
    cp a
    ld a, d
    ld a, e
    ld [hl], l
    ld [hl], l
    pop af
    pop af
    ld a, [$feda]
    adc $7e
    ld b, d
    ld a, a
    ld b, c
    ld a, a
    ld b, b
    dec b
    ld l, $00
    ld a, a
    dec b
    rlca
    inc d
    dec b
    rlca
    db $10
    dec b
    ld [hl], l
    inc e
    ld [bc], a
    dec b
    add [hl]
    ld de, $fb07
    ld c, $ff
    rrca
    dec b
    ld l, $00
    ld a, l
    ld c, [hl]
    dec hl
    ld [hl+], a
    sbc l
    sbc a
    ld b, [hl]
    rst $00
    pop af
    or c
    rst $38
    ld l, a
    dec b
    ld l, $00
    or d
    ld a, [hl]
    ld b, h
    call nc, $f9b9
    ld h, d
    db $e3
    adc a
    adc l
    rst $38
    or $05
    ret nc

    ld de, $0540
    ld b, $11
    ldh [$df], a
    ld [hl], b
    rst $38
    dec b
    rst $38
    inc b
    dec b
    cpl
    add hl, bc
    ld b, b
    ld [bc], a
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    db $f4
    inc [hl]
    rst $38
    ld a, [de]
    rst $38
    rst $28
    pop af
    ld [hl], e
    ld a, [bc]
    nop
    dec b
    ld a, [bc]
    ld de, $210f
    ld bc, $01ff
    ld a, [bc]
    nop
    dec b
    ld e, b
    rst $38
    or b
    rst $38
    xor $1f
    sbc h
    db $ec
    xor l
    sbc $df
    sbc $5f
    call c, $e0dc
    jr nz, @-$02

    inc e
    ldh a, [rNR10]
    ldh a, [rNR10]
    rst $38
    add b
    rst $38
    add b
    rst $38
    adc a
    ld [hl], b
    cp $20
    ld a, a
    jr nz, jr_035_43dc

    ld de, $103f
    dec a
    rst $38
    nop
    rst $38
    ld b, e
    db $fd
    rst $28
    ldh a, [$df]
    ld a, l
    ld c, a
    inc a
    ld h, [hl]
    ld a, $fa
    ld l, a
    push af
    rst $38
    nop
    rst $38
    add h
    ld a, a
    ld l, a
    ld e, $17
    ld a, h
    ld h, h
    ld a, b
    ld c, b
    ld sp, hl
    cp c
    db $ec
    ld e, h
    cp $03
    cp $03
    cp $e3
    inc e
    sbc [hl]
    ld [$080c], sp
    ld l, h
    db $10
    ld a, b
    db $10
    jr jr_035_4401

    ld l, d
    rst $30
    or $f7
    db $f4
    ld [hl], a
    db $76
    rrca
    ld [$707f], sp
    rra
    db $10
    rra
    db $10
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc b
    cp $02
    ld a, [bc]
    ld c, [hl]
    ld [bc], a
    nop
    add hl, bc
    ld bc, $0401
    dec b
    ld [$300b], sp
    inc sp
    pop hl
    db $e3
    ldh [$27], a
    ldh a, [rNR22]
    ld e, a
    jp z, $f64b

Jump_035_43c2:
    ld h, a
    db $dd
    ld a, $eb
    sbc h
    rst $38
    ld [bc], a
    rst $38
    ld b, c
    rst $38
    ld d, h
    rst $38
    db $f4
    and h
    and l
    db $dd
    call z, $f854
    xor b
    ld [hl], d
    ld a, [c]
    add c
    add c
    inc b
    inc b

jr_035_43dc:
    ld d, h
    ld d, h
    ld a, [bc]
    db $fc
    ldh a, [rLCDC]
    ld b, b
    jr nz, jr_035_4405

    jr jr_035_43ff

    rrca
    rrca
    rrca
    ld [$bc0a], sp
    nop
    ccf
    jr nz, jr_035_4430

    jr nz, jr_035_4472

    ld b, b
    rst $38
    add b
    ld a, [bc]
    db $10
    rrca
    inc bc
    ld hl, sp+$0f
    ld a, [bc]
    jr nc, jr_035_4412

jr_035_43ff:
    dec bc
    db $fc

jr_035_4401:
    rlca
    db $fd
    rlca
    db $fc

jr_035_4405:
    dec b
    dec d
    rst $38
    ld b, c
    rst $38
    sub b
    rst $38
    sub h
    rst $38
    dec h
    rst $38
    dec b
    rst $38

jr_035_4412:
    ld hl, $48ff
    rst $38
    ld d, b
    ld d, b
    inc b
    add h
    ld [de], a
    sub d
    ld d, d
    jp nc, $c848

    ld b, c
    pop bc
    ld [$2408], sp
    inc h
    ld a, [bc]
    ld [de], a
    db $10
    ld a, [bc]
    ld h, b
    ld [de], a
    ld a, a
    ld b, b
    ld a, a
    ld b, b

jr_035_4430:
    rst $38
    ret nz

    ld a, [bc]
    db $10
    rrca
    dec c
    ld hl, sp+$0c
    ldh a, [$1f]
    ldh [$3f], a
    ldh [$3f], a
    ret nz

    ld a, a
    ld a, [bc]
    sbc b
    db $10
    pop bc
    ld a, c
    add hl, bc
    rst $38
    ld bc, $0039
    ldh [rP1], a
    ret nz

    rrca
    rst $08
    ccf
    or b
    rst $38
    ret nz

    cp a
    add b
    ld hl, $0621
    ld b, $0a
    db $fc
    ldh a, [$e0]
    ldh [$f8], a

jr_035_445f:
    jr jr_035_445f

    ld b, $fb
    inc bc
    cp a
    and b
    rra
    db $10
    rrca
    ld [$080f], sp
    rlca
    inc b
    ld a, [bc]
    ret z

    ld [de], a
    ld a, [bc]

jr_035_4472:
    jr c, @+$11

    inc b
    inc bc
    ld a, [bc]
    nop
    inc b
    ldh [rNR41], a
    ldh a, [$f0]
    cp h
    cp h
    jp hl


    jp hl


    rst $38
    cp $ff
    jr nc, @+$0c

    nop
    nop
    ld e, a
    ld b, b
    ld a, [bc]
    ld [de], a
    db $10
    ld a, [bc]
    ld l, [hl]
    ld d, $f4
    inc b
    ld a, [bc]
    jp nz, $ff00

    rlca
    ld a, [bc]
    nop
    inc b
    rrca
    ld [$1e1f], sp
    ld a, e
    ld a, e
    cpl
    cpl
    rst $38
    cp $ff
    jr jr_035_44b1

    db $10
    rlca
    ld a, [bc]
    add hl, de
    dec d
    ld b, b
    ld [bc], a
    add hl, bc
    rst $38
    add hl, bc

jr_035_44b1:
    rst $38
    rst $38
    dec d
    inc bc
    db $fc
    dec c
    pop af
    ld d, a
    and c
    db $ed
    add hl, bc
    nop
    dec b
    ret nz

    rst $38
    add b
    add hl, bc
    ld [hl], $01
    add hl, bc
    rst $38
    rst $38
    rla
    nop
    rst $38
    ld bc, $6c09
    ld bc, $fe03
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$78
    sub b
    ldh a, [$31]
    pop de
    ld a, d
    xor e
    ld b, b
    ld d, d
    ret


    call Call_000_3b32
    ret nc

    dec de
    ld de, $f01d
    ld sp, hl
    db $10
    cp $49
    cp l
    rst $38
    add b
    rst $38
    ld hl, sp+$3f
    and b
    ld a, a
    ld b, b
    rst $38
    add b
    ld a, a
    add hl, bc
    add hl, sp
    nop

jr_035_44f9:
    add hl, bc
    ccf
    rrca
    dec d

Call_035_44fd:
    rlca
    ei
    inc c
    rst $30
    jr jr_035_44f9

    add hl, de
    push af
    dec de
    cp [hl]
    rst $18
    ld [c], a
    ld l, a
    ld sp, hl
    dec sp
    adc $d7
    pop hl
    ld [de], a
    cp $01
    ld h, c
    ld l, l
    sbc [hl]
    sbc [hl]
    ld [$515a], a
    or a
    ld h, [hl]
    and $99
    cp c
    or e
    jp nc, Jump_035_6c5f

    rst $30
    call z, $b9df
    ccf
    jr nz, jr_035_4548

    db $10
    rrca
    ld [$898f], sp
    adc $4a
    adc $4a
    rst $08
    ld c, c
    adc a
    adc b
    add hl, bc
    nop
    ld [bc], a
    ei
    db $fc
    rlca
    rlca
    ld a, b
    ld a, b
    and a
    and a
    ret nc

    ld d, h
    add hl, bc
    nop
    inc b
    ld a, a
    add b

jr_035_4548:
    rst $18
    ldh [$3f], a
    jr nc, @-$2f

    ret z

    ld a, [$ef1e]
    cpl
    rst $38
    jr nc, @+$01

    jr nz, jr_035_4560

    nop
    inc b
    ld a, [de]
    ld a, b
    inc sp
    rst $30
    rst $10
    rst $10
    db $dd

jr_035_4560:
    ld a, l
    rst $20
    ld l, [hl]
    rst $20
    dec l
    rst $20
    scf
    rst $38
    jr c, @-$40

    cp $a4
    inc h
    call nz, Call_035_4044
    ret nz

    jp nz, $81c2

    add c
    add b
    add b
    add b
    add b
    rra
    inc e
    inc de
    inc de
    add hl, bc
    db $fc
    ldh a, [rNR42]
    ld hl, $c0c0
    add hl, bc
    db $fc
    ldh a, [$94]
    sub a
    ld [hl+], a
    dec sp
    ld c, c
    ld e, l
    add l
    or a
    inc bc
    ld a, e
    add e
    cp d
    di
    or $ff
    adc [hl]
    scf
    inc [hl]
    ld a, e
    ld a, [$86ff]
    rst $38
    ld [bc], a
    add hl, bc
    ld e, b
    rrca
    inc bc

jr_035_45a3:
    cp $03
    rst $38
    jr nz, jr_035_45a3

    rlca
    db $ec
    inc e
    di
    inc sp
    call z, $bf4d
    cp a
    rst $18
    db $e3
    db $fc
    rlca
    add b
    add b
    ret nz

    ret nz

    ld b, b
    ld b, b
    and b
    and b
    ld e, h
    call c, $bb93
    add hl, sp
    ld a, c
    ld a, [hl]
    and [hl]
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    dec e
    dec e
    db $e4
    xor $8f
    xor [hl]
    cp [hl]
    di
    rst $38
    add d
    rst $28
    ldh a, [rNR31]
    inc e
    rst $20
    and $19
    reti


    cp $fe
    ld a, l
    ld h, e
    rst $38
    db $10
    add hl, bc
    nop
    rlca
    add b
    rst $38
    ret nz

    cp a
    ld h, b
    add hl, bc
    nop
    inc c
    ei
    dec bc
    db $fd
    rrca
    rst $38
    ld [bc], a
    rst $38
    inc b
    db $fd
    dec b
    rst $38
    ld b, $09
    nop
    ld bc, $df51
    ld l, b
    cp a
    add sp, -$11
    add sp, $09
    adc $14
    db $fd
    rst $00
    ei
    adc l
    cp $0b
    ei
    dec bc
    rst $38
    inc b
    add hl, bc
    nop
    ld [bc], a
    rst $28
    ld l, b
    ld e, a
    ld hl, sp-$01
    and b
    cp a
    ret nc

    rst $18
    ld d, b
    rst $38
    jr nc, jr_035_462c

    nop
    rrca
    ld bc, $0240
    inc b
    rst $38
    inc b
    rst $38

jr_035_462c:
    ldh a, [$08]
    rst $38
    inc d
    rst $38
    inc h
    rst $38
    inc h
    db $fd
    ld h, $c9
    inc b
    rst $38
    ld a, [c]
    inc b
    rrca
    rrca
    dec l
    jr nz, @+$01

    ld d, b
    rst $38
    ld c, b
    rst $38
    ld c, b
    ld a, a
    ret z

    daa
    nop
    rst $38
    ld [de], a
    db $e4
    nop
    ei
    ld c, l
    db $fd
    and [hl]
    cp $9b
    or a
    rst $08
    ret c

    ld l, [hl]
    add sp, $3f
    inc b
    db $10
    inc bc
    add b
    rst $38
    ld b, b
    ld a, a
    or b
    rst $38
    call z, $b23f
    inc b
    db $10
    rrca
    ld b, $09
    rst $38
    ld a, [bc]
    rst $38
    ld a, [hl+]
    cp $34
    rst $38
    nop
    cp $00
    rst $38
    ld bc, $c2ff
    cp [hl]
    push bc
    db $fd
    sbc e
    cp $e6
    ld hl, sp-$65
    rst $38
    sub b
    ld c, a
    nop
    cp a
    ld h, h
    ld a, a
    jp z, $b2ff

    db $db
    and $37
    db $ec
    cpl
    ld hl, sp-$0c
    dec e
    rst $38
    ld a, a
    db $fc
    ld b, a
    sbc $63
    pop hl
    cpl
    rst $38
    rra
    rst $38
    ld hl, $2fe0
    dec bc
    db $ed
    ld a, [$05fc]
    cp $0d
    xor $f2
    rst $30
    ld [bc], a
    ld a, e
    dec c
    rst $28
    pop af
    rst $30
    rst $38
    nop
    ld a, a
    nop
    rst $38
    adc [hl]
    rst $38
    ld a, c
    db $ed
    inc sp
    db $db
    ld h, [hl]
    ld a, a
    db $e4
    ld a, a
    call nz, $55ff
    rst $38
    ld d, l
    rst $18
    jp hl


    ld a, [c]
    ld l, c
    rst $18
    or b
    rst $38
    ld b, e
    or $83
    db $eb
    db $d3
    and b
    ld l, a
    cp a
    ld a, a
    ld b, b
    rst $38
    ldh [$ef], a
    sbc a
    rst $18
    ld b, c
    db $fd
    and c
    rst $28
    ld a, [hl]
    rst $38
    ld e, a
    ld [hl], b
    rst $38
    db $fc
    ld a, a
    call nz, $8cf7
    rrca
    add sp, -$01
    ldh a, [rIE]
    ld [$e80f], sp
    rst $38
    rra
    db $fd
    ld b, $fe
    add hl, bc
    rst $38
    rrca
    rst $38
    ld [bc], a
    rst $38
    inc bc
    db $fc
    rlca
    cp $07
    ld b, d
    ld e, a
    ld b, h
    or $f9
    db $fd
    ld d, e
    cp e
    cp l
    ld a, a
    push af
    rst $08
    dec hl
    cp a
    sub l
    rst $18
    xor a
    or $de
    db $e3
    jp hl


    rst $00
    ld a, a
    and b
    cp e
    ld [hl], h
    ld l, b
    sbc l
    ld l, $d7
    ld a, c
    add a
    ld e, [hl]
    rst $08
    ld d, c
    rst $38
    or [hl]
    rst $38
    dec d
    db $fd
    sbc d
    ld a, [hl]
    ld a, [hl+]
    ld a, [hl]
    push de
    rst $28
    ld [hl+], a
    sbc $6d
    call $e69d
    ld c, $fb
    rlca
    ld a, e
    add e
    cp [hl]
    rst $20
    rst $38
    xor b
    ei
    jp nc, $fff7

    ldh a, [$7f]
    ret nz

    rst $38
    jr nz, @+$01

    ldh [rIE], a
    add b
    rst $38
    add b
    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    ld c, $f1
    rra
    db $e4
    ld a, $f7
    scf
    rst $38
    add hl, sp
    cp $13
    db $db
    rst $38
    adc h
    xor a
    db $ed
    ld a, d
    add $dd
    inc bc
    add a
    db $10
    rra
    ld d, d
    db $d3
    ld a, [hl]
    ld a, [hl]
    ld e, $61
    rst $08
    jr nc, @-$74

    ld d, l
    jr nc, jr_035_47ed

    cp a
    xor a
    ld a, a
    ld b, b
    inc b
    ld a, h
    db $10
    pop af
    dec c
    and $19
    and e
    ld d, h
    jr jr_035_47e4

    ei
    db $eb
    db $fc
    dec b
    db $fc
    rlca
    cp $06
    or a
    rst $38
    ld h, e
    ld [$bc6f], a
    rst $00
    ld [hl], a
    add b
    jp nz, $f111

    sub l
    sub a
    db $fc
    db $fd
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ldh [$1f], a
    ldh a, [rVBK]
    ld hl, sp-$21
    ret c

    rst $38
    jr c, @+$01

    sub b
    db $fd
    rlca
    db $fc
    rlca
    db $fd
    rlca
    rst $38
    inc bc
    inc b
    db $10
    dec b
    pop bc
    rst $38
    add c
    inc b
    ret nc

    ld de, $0f04
    inc b
    inc b
    push af
    jr jr_035_47cb

    rst $38
    ldh a, [rDIV]
    push hl

jr_035_47cb:
    jr jr_035_47d1

    dec c
    ld hl, $03fe

jr_035_47d1:
    inc b
    db $10
    jr z, jr_035_4854

    ret nz

    inc b
    jr nc, jr_035_47f9

    inc b
    or $16
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    cp $01

jr_035_47e4:
    rst $38
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    inc c
    ld sp, hl
    inc c
    ei

jr_035_47ed:
    ld [$3cf7], sp
    rst $38
    cp b
    ld b, a
    cp $47
    xor h
    rst $28
    jr @-$37

jr_035_47f9:
    inc l
    xor a
    ld e, b
    rst $18
    ld a, $61

Jump_035_47ff:
    pop hl
    dec b
    nop

jr_035_4802:
    add hl, bc
    ld h, b
    sbc a
    db $fc
    dec b
    nop
    rrca
    nop
    dec b
    ld b, c
    rrca
    ld [$00fb], sp
    rst $28
    ld e, c
    rst $18
    ld c, e
    rst $30
    ld c, l
    rst $30
    ld l, $f3
    dec l
    rst $38
    ld b, e
    db $ed
    sbc l
    sbc $b7
    add b
    cp h
    jr jr_035_4802

    cp h
    rst $28
    call nc, $ba5f
    rst $30
    dec a
    db $e3
    cp a
    ld h, b
    db $eb
    ld [hl], h
    db $e3
    sbc d
    ld b, a
    ld [hl], h
    inc hl
    ld a, $39
    and a
    push af
    rst $08
    ei
    rlca
    db $eb
    rla
    ld [c], a
    rla
    dec b
    nop
    dec b
    ret nz

    ccf
    rst $38
    rlca
    ld hl, sp-$01
    rst $38
    dec b
    nop
    ld b, $bf
    add b
    cp a
    jr nz, jr_035_48d1

    sub b
    rst $20

jr_035_4854:
    nop
    rst $10
    nop
    ld e, b
    nop
    ld b, $08
    ld [hl], e
    inc c
    ld b, d
    dec a
    ld [hl], b
    rrca
    adc e
    inc b
    rst $38
    and [hl]
    db $fd
    cp $e7
    rlca
    pop de
    ld b, $36
    ld bc, $40ae
    ld d, a
    adc c
    or l
    inc bc
    rst $38
    ld [hl], h
    cp a
    db $dd
    rst $38
    inc de
    cp a
    ld d, b
    cp a
    jr @+$01

    ld d, b
    db $fc
    and c
    db $fd
    and e
    db $ec
    rra
    ld hl, sp+$1f
    ldh [$bf], a
    ld b, h
    ei
    sbc h
    ld h, e
    ld hl, sp+$06
    pop af
    ld c, $8d
    cp $82
    db $fd
    ld b, a
    ld hl, sp+$47
    ld hl, sp+$5f
    db $fc
    ld e, e
    ld [hl], d
    ld a, $eb
    cp d
    ld l, a
    or l
    ld h, a
    and a
    ret nz

    cp e
    inc c
    db $d3
    nop
    ld d, a
    xor h
    ld [hl], l
    ld c, $a9
    ret nz

    ld l, e
    add $6b
    add $e9
    ld b, $d6
    ld bc, $00d1
    adc $08
    rst $18
    add hl, bc
    cp $13
    ei
    ld h, $f4
    ld c, a
    dec sp
    ld c, $6f
    ld e, [hl]
    sbc a
    dec sp
    ld a, a
    ld l, $7f
    or d
    ei
    ld e, l
    ld e, l
    db $f4

jr_035_48d1:
    db $f4
    cp [hl]
    ld sp, hl
    rst $20
    ei
    sub [hl]
    rst $30
    inc d
    rst $38
    inc d
    rst $30
    inc d
    rst $38
    inc h
    rst $28
    ret


    rst $38
    ld [hl], c
    db $f4
    ld [hl], a
    rst $30
    ld [hl], a
    ld [$eb6a], a
    ld l, e
    xor e
    ei
    set 3, a
    ld c, e
    rst $28
    sbc e
    cp a
    ld [hl], e
    rst $28
    pop hl
    jp nc, $a5e4

    rst $18
    rra
    rst $30
    ld a, h
    rst $10
    or h
    ld a, e
    ld a, h
    ld a, e
    ld l, h
    db $db
    or $fb
    ld [hl], $db
    or $bb
    db $76
    ei
    or $fd
    ld d, [hl]
    db $fd
    ld d, [hl]
    rst $30

jr_035_4912:
    xor h
    sbc a
    ei
    rst $38
    ldh [rTIMA], a
    nop
    ld [$0afe], sp
    db $fd
    dec c
    ei
    ld [de], a
    rst $30
    inc l
    rst $28
    ld a, [hl-]
    rst $38
    dec e
    cp $03
    ld hl, sp+$01
    ld l, $db
    dec [hl]
    cpl
    or $ff
    call c, $bc6d
    rst $30
    ld e, c
    rst $28
    cp d
    rst $08
    db $f4
    sbc l
    sub e
    db $d3
    ld [hl], $ff
    ld h, $b7
    ld c, e
    rst $28
    sub [hl]
    or $3c
    rst $38
    ld b, e
    rst $08
    cp a
    db $fc
    ld a, e
    add sp, -$41
    xor l
    cp a
    xor l
    ld a, a
    ld c, h
    ld a, a
    call z, $9cef
    rst $30
    inc e
    rst $18
    jr c, jr_035_4912

    db $ec
    rst $38
    ld l, b
    rst $28
    ret c

    rst $38
    ld d, b
    rst $18
    or b
    rst $38
    and b
    cp a
    ldh [rIE], a
    ret nz

    dec b
    nop
    inc c
    db $fd
    rlca
    dec b
    ldh a, [rNR12]
    rst $38
    inc bc
    dec b
    nop
    ld [bc], a
    ld [hl], h
    sbc [hl]
    ld sp, hl
    dec de
    ld sp, hl
    rra
    ld sp, hl
    rra
    ld sp, hl
    rrca
    ld sp, hl
    adc a
    db $fc
    dec b
    rst $30
    db $10
    add b
    cp $01
    rst $38
    rra
    ei
    dec b
    ld sp, hl
    ld [de], a
    add b
    rst $38
    ldh [$af], a
    ld a, b
    rst $18
    ldh a, [$7f]
    ldh [rIE], a
    add b
    dec b
    ld b, b
    rrca
    dec b
    ld b, b
    ld [bc], a
    ld d, $ff
    ld d, $ff
    cp $01
    cp $03
    cp $0b
    db $fc
    rrca
    ld hl, sp+$09
    ld hl, sp+$0b
    db $f4
    scf
    rst $38
    cp b
    ld b, a
    ld b, [hl]
    rla
    ld d, h
    rrca
    add sp, $17
    call nc, $a80f
    rra
    sbc $61
    pop hl
    ld d, $00
    add hl, bc
    ld h, b
    sbc a
    sbc h
    ld d, $00
    rrca
    nop
    ld d, $41
    rrca
    ld [$00fb], sp
    jp hl


    ld e, a
    db $db
    ld c, a
    push af
    ld c, a
    rst $30
    ld l, $f3
    dec l
    rst $38
    ld b, e
    db $ed
    sbc l
    sbc $b7
    add b
    add b
    jr jr_035_49ff

    cp h
    xor h
    call nc, $b254
    ld a, [$fd21]
    and b
    ld a, a
    ldh [rOCPD], a
    add e
    ld [c], a
    ld b, a
    ld b, h
    inc hl
    ld [hl+], a
    ld hl, $c539
    push af
    inc bc
    ei

jr_035_49ff:
    inc bc
    db $eb
    ld [bc], a
    ld [c], a
    ld d, $00
    dec b
    ret nz

    ccf
    ccf
    nop
    rlca
    rst $38
    rst $38
    ld d, $00
    ld b, $bf
    add b
    ccf
    and b
    rra
    ld [hl], b
    rst $20
    nop
    rst $00
    db $10
    ld b, b
    jr jr_035_4a2d

    ld c, $08
    ld [hl], h
    dec a
    ld b, b
    dec c
    ld [hl], d
    add [hl]
    add hl, bc
    rst $38
    and [hl]
    db $fd
    cp $07
    rst $20
    nop

jr_035_4a2d:
    pop de
    nop
    ld [hl], $c1
    cpl
    add c
    rla
    add hl, bc
    cp l
    db $f4
    ld a, a
    sbc l
    cp a
    inc de
    rst $38
    db $10
    cp a
    ld e, b
    rst $38
    ld d, b
    rst $38

jr_035_4a42:
    and d
    cp $a1
    db $fd
    inc c
    db $ec
    jr jr_035_4a42

    and b

Jump_035_4a4b:
    ldh [rLCDC], a
    ld b, h
    nop
    sbc h
    nop
    ld hl, sp+$00
    pop af
    adc h
    adc l
    add b
    add d
    ld b, b
    ld b, a
    ld d, b
    ld d, a
    ld e, h
    ld e, a
    jp c, Jump_000_3ed3

    ld a, [hl+]
    ld a, [hl-]
    xor [hl]
    dec [hl]
    and l
    add a
    and b
    ld c, e
    db $fc
    rlca
    call nc, Call_035_5605
    add c
    ld hl, sp-$7d
    cp d
    ld d, e
    ld a, d
    ld d, e
    ld a, d
    and $09
    ret z

    dec d
    ret nz

    ld de, $0ec8
    reti


    rrca
    ld a, [c]
    ld e, $e2
    dec sp
    call nz, Call_000_0a74
    dec sp
    ld c, [hl]
    ld l, a
    dec de
    sbc a
    cpl
    ld a, [hl]
    ccf
    ld [hl], d
    ld e, e
    db $fd
    ld e, l
    ld d, h
    db $f4
    cp [hl]
    pop hl
    ld sp, hl
    di
    sbc d
    rst $30
    inc d
    rst $38
    inc d
    rst $30
    inc d
    rst $30
    inc l
    rst $28
    ret


    rst $38
    ld [hl], c
    db $f4
    ld [hl], h
    rst $30
    ld [hl], a
    ld [$eb6a], a
    ld l, e
    xor e
    xor e
    set 1, e
    ld e, e
    ld e, e
    sbc e
    sbc e
    ld [hl], e
    ld l, a
    pop hl
    jp nc, $a5e4

    rst $18
    rra
    rst $30
    ld a, h
    rst $10
    or h
    ld a, e
    ld a, h
    ld a, e
    ld l, b
    db $d3
    jp c, Jump_035_7ab3

    db $d3
    ld a, [$7ab3]
    di
    ld a, [$7ed5]
    rst $10
    ld a, h
    and a
    db $f4
    sbc a
    sbc e
    rst $38
    ldh [rNR21], a
    nop
    ld [$0afe], sp
    db $fd
    dec c
    ei
    ld [de], a
    rst $30
    inc l
    rst $28
    ld a, [hl-]
    rst $38
    dec e
    cp $02
    ld a, [$2e06]
    jp c, Jump_000_2d35

    or $fe
    call c, $bc6c
    or h
    ld e, c
    ld l, c
    cp d
    jp z, $94f4

    or e
    or e
    ld [hl], $36
    ld h, [hl]
    ld h, [hl]
    ld c, e
    ld c, e
    sub [hl]
    sub [hl]
    inc a
    inc a
    ld b, e
    ld b, e
    cp a
    db $fc
    ld a, a
    ld l, h
    cp a
    xor l
    cp a
    xor l
    ld a, a
    ld c, h
    ld a, a
    ld c, h
    rst $28
    sbc h
    rst $30
    inc d
    db $db
    inc a
    and a
    or h
    ld l, a
    ld hl, sp-$31
    add sp, -$21
    ld [hl], b
    sbc a
    ret nc

    cp a
    ldh [$bf], a
    and b
    rst $38
    ret nz

    ld d, $00
    inc c
    db $fd
    dec b
    ld d, $f0
    ld [de], a
    rst $38
    inc bc
    cp $01
    ld d, $00
    nop
    db $f4
    inc d
    ld sp, hl
    add hl, de
    ld d, $02
    ld hl, $f909
    adc c
    db $fc
    inc b
    rst $38
    inc bc
    rst $38
    add b
    cp $01
    rst $38
    rra
    ei
    inc bc
    ld d, $00
    ld bc, $ff80
    ldh [$af], a
    ld l, b
    rst $18
    ret nc

    ld a, a
    ld h, b
    cp a
    ld d, $df
    dec e
    ld d, $00
    inc b
    ld b, b
    ld [bc], a
    ld [$08ff], sp
    rst $38
    di
    db $fc
    dec e
    pop af
    dec e
    ld hl, sp+$0b
    cp $06
    ld [$0400], sp
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ldh a, [rNR22]
    ld sp, hl
    rst $38
    jr nz, @+$01

    jr nc, @-$0f

    jr c, @-$2f

    ld a, b
    rst $10
    ld a, h
    sub a
    db $dd
    and [hl]
    cp [hl]
    dec hl
    dec sp
    ld [$0610], sp
    rst $28
    ldh a, [$1f]
    jr @+$09

    inc b
    ld [$0000], sp
    db $fd
    ld bc, $0dfc
    ldh a, [$1f]
    pop af
    dec e
    ld [$0048], sp
    rst $18
    inc e
    ld b, a
    call c, $f88f
    rra
    ret nc

    ld a, a
    ld a, b
    adc a
    cp b
    rra
    ldh a, [rIE]
    ldh a, [$f9]
    rrca
    db $fc
    dec b
    rst $38
    inc bc
    cp $02
    rst $38
    ld bc, $0008
    ld [bc], a
    rrca
    add hl, sp
    ld c, $fa
    add $de
    dec b
    db $fd
    add sp, -$08
    sub c
    or c
    db $e3
    ld h, e
    rst $00
    ld b, l
    ld c, l
    ld c, a
    ld e, c
    ld e, a
    sub d
    sbc e
    dec h
    daa
    add hl, bc
    dec c
    inc bc
    ld [bc], a
    ld b, a
    ld b, a
    ld c, c
    ld c, a
    di
    ld a, [c]
    ld a, [$9d4b]
    push af
    db $ed
    db $fd
    push af
    dec [hl]
    push hl
    dec a
    call c, $bb7d
    adc e
    ld [$0248], sp
    jp $e00f


    ld a, $c5
    db $fd
    inc bc
    cp $0f

jr_035_4bff:
    ld a, h
    rra
    ret nc

    rst $38
    ldh [$3f], a
    and b
    rst $38
    ret nz

    rst $38
    add b
    ld [$0710], sp
    ld [$f0ff], sp
    inc bc
    rst $38
    inc b
    rst $38
    inc b
    db $fd
    ld b, $cd
    ld c, c
    rst $28
    cpl
    db $fd
    ld e, $e7
    ld sp, hl
    ld sp, hl
    dec b
    rst $08
    xor a
    ld a, l
    ld sp, hl
    di
    sbc e
    add d
    add e
    rst $00
    add $e9
    xor h
    ld e, a
    cp c
    and a
    ld [hl], b
    cp h
    ld h, a
    ldh [$7c], a
    db $d3
    ld [hl], b
    ei
    cp d
    ld d, a
    inc [hl]
    rst $38
    ld a, b

jr_035_4c3d:
    ld a, a
    ldh [rIE], a
    ret nz

    rst $08
    add c
    ld [hl-], a
    inc bc
    sbc [hl]
    ld [hl+], a
    ld [hl], a
    ld a, b
    ld [$0300], sp
    ret nz

    rst $38
    jr nz, @+$01

    and [hl]
    ld a, c
    ld l, a
    ld [$0bba], sp
    nop
    cp $03
    ld [$0168], sp
    ld bc, $2608
    ld de, $ff00
    nop
    rst $30
    sub l
    or $97
    rst $38
    db $eb
    cp [hl]
    ld a, [c]
    jp c, $ea71

    ld a, c
    xor $ad
    or $3f
    ld c, d
    pop bc
    db $e4
    sbc b
    ld b, b
    jr z, jr_035_4bff

    dec h
    ld e, $df
    dec bc
    rst $08
    ld b, h
    inc [hl]
    ld h, e
    inc bc
    ld b, [hl]
    sub d
    ld c, e
    sub c
    add l
    cp e
    dec b
    inc de
    adc [hl]
    cp e
    sub h
    sbc [hl]
    reti


    db $dd
    ld c, $36
    ld [hl], e
    sbc $63
    ld [hl], d
    adc a
    xor l
    ld a, a
    ld [hl], b
    ccf
    jr nz, jr_035_4c3d

    ret c

    cp a
    xor b
    ld c, a
    ld a, b
    rst $38
    add b
    ld [$0bb8], sp

jr_035_4ca8:
    ld bc, $02fe
    cp $07
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    inc bc
    ld [$0000], sp
    push hl
    push hl
    ld e, b
    jp c, Jump_035_777f

    ld sp, hl
    adc e
    db $fd
    rra
    ei
    sub [hl]
    rst $38
    inc c
    rst $38
    nop
    ld [hl+], a
    xor d
    jp nc, Jump_035_7efc

    ld [hl], b
    ret nc

    pop de
    ld [c], a
    ld a, h
    reti


    nop
    rst $20
    nop
    rst $38
    nop
    add hl, de
    db $e3
    ld [hl], l
    inc bc
    add e
    adc [hl]
    ld a, h
    ld a, a
    ld [hl], a
    inc bc
    adc [hl]
    inc bc
    rst $38
    inc bc
    db $fd
    ld a, a
    ccf
    jr nc, jr_035_4ca8

    and b
    ld e, a
    ret nc

    rst $18
    ret nc

    ld e, a
    ret nc

    ld a, a
    ld h, b
    cp a
    and b
    ld a, a
    ld b, b
    ld [$1c10], sp
    ld [$1fd0], sp
    ld c, $01
    cp $03
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$0d
    db $fc
    ld b, $fa
    ld c, $ff
    rrca
    db $db
    rst $38
    daa
    rst $30
    ld c, a
    call z, $f87f
    rrca
    ld c, b
    ld e, a
    ret nc

    rst $38
    ldh [rIE], a
    nop
    ld [$0db8], sp

Call_035_4d1f:
    ld [$1b11], sp
    ld b, b
    ld [bc], a
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    db $f4
    ld bc, $1fee
    db $fd
    inc sp
    ei
    ld b, c
    ld a, [bc]
    nop
    dec b
    ret nz

    cp a
    ld h, b
    ld e, a
    or b
    ld e, a
    or b
    ld a, [bc]
    nop
    ld bc, $fe03
    inc c
    rst $30
    db $10
    ei
    inc hl
    rst $28
    ld l, a
    rst $30
    call c, Call_000_3fdf
    ld sp, hl
    ldh [$ce], a
    nop
    ld a, a
    rra
    ld [c], a
    ld [c], a
    db $fd
    db $fd
    rst $38
    inc bc
    rst $38

jr_035_4d57:
    nop
    rst $08
    ret nc

    sbc e
    inc e
    rst $18
    ld b, $eb
    pop af
    jr jr_035_4d7c

    ld b, [hl]
    ld b, [hl]
    and c
    and c
    adc b
    adc b
    ld a, [bc]
    nop
    dec b
    add b
    ld a, a
    ret nz

    ccf
    and b
    cp a
    and b
    pop hl
    sub e

jr_035_4d74:
    sbc $9e
    ld hl, sp-$17
    ldh a, [rNR22]
    ldh a, [rNR34]

jr_035_4d7c:
    ldh a, [rNR34]
    ldh a, [rNR21]
    ld hl, sp+$09
    rra
    ldh a, [$1f]
    pop de
    ld e, $d3
    ld a, $a2
    ld a, l
    ld b, l
    ld a, [$748b]
    ld [hl], a
    inc c
    adc [hl]
    xor a
    ld hl, sp+$2f
    cp b
    cpl
    jr c, jr_035_4e08

jr_035_4d99:
    ld hl, sp+$77
    ld e, h
    ld [hl], e
    ld d, [hl]
    ld sp, hl
    adc e
    db $fc
    add l
    ld a, [bc]
    nop
    ld bc, $fd07
    dec bc
    ei
    ld d, $fe
    inc h
    call nc, $03ee
    di
    call nc, $e854
    jr z, jr_035_4d99

    and h
    ldh a, [$d0]
    ldh a, [$30]
    ld hl, sp+$1b
    ld [hl], h
    rla
    jr nc, jr_035_4d57

    ld e, a
    ld [hl], b
    ccf
    jr nc, jr_035_4d74

    cp b
    ld e, a
    ld e, b
    cp a
    cp b
    rrca
    ld [$a82f], sp
    rra
    ret c

    cp $06
    db $fd
    inc bc
    ld a, [bc]
    nop
    dec b
    nop
    rst $38
    nop
    jr c, jr_035_4e1a

    ret c

    xor $f0
    rra
    di
    inc e
    or $19
    push af
    dec de
    di
    ld e, $fa
    ld c, $ff
    add e
    rst $38
    add b
    ld a, a
    ld h, e
    ld e, $de
    ret


    jp hl


    db $ec
    cpl
    ld a, e
    rra
    ld d, a
    inc a
    ld bc, $fe01
    rst $38
    cp [hl]
    xor e
    ld [hl], a
    ld h, l
    ld h, [hl]
    cp $fc
    or l
    rst $08
    ld a, a

jr_035_4e08:
    sub b
    cp $94
    rst $38
    and b
    push af
    db $fc
    cp $92
    xor a
    ld l, h
    sbc [hl]
    jp nc, Jump_000_2137

    ei
    pop bc
    push af

jr_035_4e1a:
    cpl
    add sp, $0f
    ret z

    ld d, a
    ret c

    ccf
    ldh a, [$1f]
    sub b
    rst $28
    ldh a, [$bf]
    ld h, b
    rst $38
    ld hl, sp+$0a
    call nz, $0a08
    sub b
    inc bc
    dec b
    rst $38
    rrca
    ld sp, hl
    add hl, bc
    or $16
    ld sp, hl
    add hl, de
    or $17
    add sp, $2b
    ld e, e
    cp a
    xor l
    ld a, [hl]
    ld d, a
    ld hl, sp-$41
    ldh [$7f], a
    ret nz

    cp $c1
    ld a, c
    push bc
    rst $10
    rst $28
    add b
    rst $18
    ld l, h
    rst $38
    or [hl]
    ld a, e
    jp c, $f633

    dec de
    inc l
    rst $18
    call nz, $3add
    ld a, $47
    ld a, [hl]
    ld c, a
    ld a, e
    adc a
    xor h
    ld e, $53
    dec hl
    cp l
    dec h
    ld a, $73
    ld a, a
    ld [$c79f], a
    ld h, h
    ld a, a
    cp b
    rst $20
    db $f4
    db $db
    ld a, d
    rst $00
    db $f4
    or e
    ld a, [c]
    ld c, e
    ld [$f6a7], a
    ld a, [bc]
    jr nz, jr_035_4e9c

    di
    scf
    db $e4
    dec h
    ret


    ld c, e
    db $d3
    ld d, d
    rst $20
    ld h, h
    rst $28

jr_035_4e8b:
    ld l, b
    rst $08
    ld c, b
    rst $18
    ld d, b
    ld l, a
    ld sp, hl
    rst $38
    sub c
    ld a, [bc]
    call nz, $1708
    ld e, l
    ccf
    jr z, jr_035_4e8b

jr_035_4e9c:
    ret c

    sbc a
    ldh a, [rIE]
    ldh [$0a], a
    nop
    ld [bc], a
    ld sp, hl
    adc e
    push af
    rrca
    db $fc
    dec b
    db $fc
    dec b
    ld a, [$fe06]
    ld [bc], a
    ld a, [bc]
    jp z, Jump_035_5310

    ld a, [c]
    ld c, e
    jp c, $faab

    and a
    and $97
    or [hl]
    ld d, e
    ld a, [c]
    ld c, e
    jp z, Jump_035_4a4b

    ld a, [bc]
    jr nz, jr_035_4ee2

    rst $18
    ld d, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, jr_035_4ed9

    jr nz, jr_035_4eee

    ld a, [bc]
    ld sp, hl
    rra
    inc b
    ld a, [bc]
    jp z, $0a12

jr_035_4ed9:
    jp z, $fc10

    inc b
    db $fd
    dec b
    rst $38
    ld b, $4f

jr_035_4ee2:
    ld c, h
    ld c, a
    ld c, b
    ld c, a
    ld c, b
    ld e, a
    ld d, b
    rst $18
    ret nc

    rst $38
    and b
    ld a, [bc]

jr_035_4eee:
    nop
    nop
    ld b, b
    ld [bc], a
    ld [$08ff], sp
    rst $38
    rst $38
    ld de, $fe01
    ld [bc], a
    cp $7a
    and $26
    ld a, [c]
    ld e, $fd
    rrca
    rst $38
    nop
    rst $38
    add b
    rst $38
    sbc b
    rst $28
    xor b
    ld c, a
    ld c, b
    ld c, a
    ld c, a
    ld d, e
    ld a, [c]
    ld l, a
    db $fc
    ld [$0700], sp
    add b
    ld [$0f00], sp
    ld [de], a
    ld [$fcff], sp
    inc bc
    rst $38
    inc bc
    db $fd
    dec b
    db $fc
    ld b, $fc
    ld c, $f0
    rra
    ldh [$3f], a
    add $7f
    rst $38
    ldh a, [$7f]
    ld h, b
    ld e, a
    ret nc

    rra
    or b
    rra
    cp b
    rlca
    db $fc
    inc bc
    cp $30
    ld [$083f], sp
    ld [$0f57], sp
    jr @-$02

    rlca
    ld hl, sp+$0f
    ld hl, sp+$0f

Jump_035_4f49:
    ld hl, sp+$0b
    db $fc
    inc b
    ld c, $3f
    sbc [hl]
    rst $30
    ld a, $eb
    ld a, a
    rst $30
    dec a
    cp $7f
    ret nz

    ld a, a
    ret nc

    dec sp
    xor h
    add hl, sp
    rst $38
    inc a
    rst $30
    ld a, $eb
    rst $38
    rst $30
    sbc $3f
    rst $38
    and c
    rst $38
    ld [bc], a
    ei
    rlca
    ld [$0130], sp
    ret nz

    ccf
    ldh [$1f], a
    ret nc

    rra
    ret nc

    sbc a
    sub b
    ccf
    jr nz, jr_035_4f84

    cp [hl]
    rrca
    rlca
    db $fc
    rlca
    db $fc

jr_035_4f82:
    rrca
    rst $30

jr_035_4f84:
    rra
    rst $30
    rrca
    ld hl, sp+$3e
    ret nz

    rst $38
    inc b
    push hl
    jr @-$63

    ld h, b
    ld h, a
    jr nz, jr_035_4f82

    db $10
    rst $38
    ld d, $1f
    ld sp, hl
    rst $38
    daa
    and a
    ld [hl], b
    ld hl, sp-$30
    sbc a
    ld [hl], b

jr_035_4fa0:
    rst $38
    jr jr_035_4f82

    inc l
    rst $20
    cp $06
    ld [hl], a
    adc a
    xor c
    reti


    ld [hl], d
    ld [hl], d
    ld bc, $0107
    rst $38
    ld [bc], a
    cp $07
    db $fd
    rst $30
    ld hl, sp+$0e
    rrca
    add c
    pop bc
    ret z

    ld a, d
    add h
    db $fd
    inc bc
    ld a, a
    inc bc
    rst $38
    ld bc, $08fd
    ld b, [hl]
    ld [bc], a
    ld a, a
    ld b, b
    ccf
    and b
    sbc a
    ret nc

    ccf
    ldh a, [$5f]
    ld hl, sp-$06
    rra
    db $f4
    rra
    jp hl


    dec a
    rst $30
    ld a, $ef
    jr c, @+$01

    jr nc, jr_035_4fe7

    nop
    nop
    db $10
    rst $18
    ld h, b
    ld l, a
    ret nz

    rst $18

jr_035_4fe7:
    ret nz

    ld e, a
    ldh [$2f], a
    ldh a, [rNR13]
    db $fc
    dec c
    cp $16
    ld a, $ff
    rlca
    push af
    dec b
    db $fd
    ld [bc], a
    ld [$0000], sp
    ccf
    nop
    add b
    jr nz, jr_035_4fa0

    dec d
    db $fd
    ld a, [$38eb]
    ccf
    inc l
    rst $30
    ld d, $fb
    ld c, $ff
    nop
    nop
    inc bc
    inc bc
    ld bc, $01fd
    db $fd
    ld bc, $01f9
    pop af
    inc bc
    jp nz, $0407

    ccf
    jr c, jr_035_509e

    ld a, b
    cpl
    ld l, b
    sub a
    or h
    rst $08
    ld l, h
    rst $28
    inc a
    rst $30
    inc e
    rst $38
    inc c
    ld [$041e], sp
    ld [$0800], sp
    rst $30
    ei
    ld a, e
    adc h
    call z, $f0d5
    scf
    rst $38

jr_035_503b:
    ld [$002f], sp
    nop
    rst $38
    nop
    rra
    rra
    rst $28
    ld hl, sp-$39
    inc a
    rra
    sbc b
    rra
    ld [hl], b
    rst $38
    ldh a, [$08]
    nop
    nop
    db $fc
    db $fc
    rst $30
    rra
    db $e3
    inc a
    cp $1f
    ldh a, [rNR34]
    cp $1e
    ld [$0000], sp
    ld a, a
    ld l, b
    xor a
    rst $18
    or [hl]
    ld a, c
    rlca

jr_035_5066:
    rst $20
    rst $30
    ld [$210b], sp
    ld [$0e44], sp
    ld b, b
    ld [bc], a
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    db $f4
    jr nc, jr_035_5066

    ccf
    push af
    rra
    db $fc
    inc c
    ei
    rlca
    cp $1d
    db $f4
    ld [hl+], a
    add sp, $45
    push af
    rst $18
    ld d, l
    push af
    ld l, $6f
    cp [hl]
    or e
    rst $38
    rst $00
    jr c, jr_035_503b

    sub $d6
    jr c, jr_035_50cd

    cp e
    cp e
    rst $00
    ld b, l
    add d
    add e
    xor d
    xor e
    cp a
    ret nz

jr_035_509e:
    rst $38
    ld [hl], b

jr_035_50a0:
    ld e, a
    adc b
    cpl
    ld b, h
    ld e, a
    or $55
    ld e, a
    jp hl


    db $ed
    ld a, [$0a9a]
    nop
    dec b
    jr jr_035_50a0

    ld hl, sp+$5f
    ldh a, [$7f]
    ld h, b
    ld a, [bc]
    nop
    dec b
    ld a, [bc]
    rst $38
    db $f4
    inc bc
    ld a, [bc]
    ld d, b
    dec bc
    push bc
    db $fd
    rlca
    cp $0e
    rst $38
    dec bc
    db $fd
    dec b
    cp $06
    rst $38
    inc bc

jr_035_50cd:
    rst $38

jr_035_50ce:
    ld bc, $7d55
    ld b, l
    ld a, l
    add d
    add $39
    cp e
    rst $38
    rst $38
    ld d, h
    ld a, h
    ld b, l
    ld d, l
    xor e
    xor e
    rst $38
    ld b, a
    ld a, a
    pop bc
    rst $38
    pop hl
    rst $38
    and c
    ld a, a
    ld b, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ldh [$5f], a
    ld d, h
    ld e, e
    ld e, e
    ld e, d
    ld e, d
    sub $d6
    or l
    rst $38
    xor d
    rst $38
    or h
    cp $ff
    jr @-$0f

    xor b
    ld c, a
    ld c, b
    ld e, a
    ld d, b
    cp a
    and b
    rst $38
    ret nz

    ld a, a
    ld b, b
    ld a, [bc]
    sbc h
    ld bc, $f10e
    rra
    db $e4
    scf
    ld [c], a
    dec sp
    ret


    ld l, c
    call nc, $1b74
    dec de
    rst $38
    ld bc, $d00a
    nop
    cp a
    pop bc
    ld l, a
    ldh [rIF], a
    rst $28
    rst $20
    db $fc
    ld e, e
    ld e, h
    cp e
    cp e
    ld b, l
    rst $00

jr_035_5130:
    jr c, jr_035_5130

    ld b, d
    adc l
    jp nz, $e6ad

    sbc c
    scf
    ld c, b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    rlca
    rst $38
    sbc b
    rst $38
    db $fd
    ld a, [hl]
    rrca
    jr c, jr_035_50ce

    sbc e
    ld h, e
    db $fc
    inc bc
    rst $38
    rst $18
    ldh a, [$bf]
    call nz, $9b75
    db $db
    dec h
    and l
    jp z, $29ce

    ld a, c
    db $fd
    push af
    rst $38
    add b
    rst $38
    ret nz

    ccf
    ldh [$9f], a
    sub b
    ld c, a
    ld c, b
    and a
    and h
    rst $10
    call nc, Call_035_5253
    xor a
    xor h
    xor a
    xor b
    cp a
    or b
    cp a
    and b
    cp a
    and b
    rst $38
    ld a, [bc]
    rst $28
    nop
    nop
    sbc a
    ret c

    rst $28
    ld a, b
    rst $38

jr_035_5180:
    jr jr_035_5180

    add hl, bc
    cp $09
    cp $08
    cp $05
    rst $38
    inc b
    rst $18
    jr nz, @+$0c

    nop
    nop
    rst $30
    ld [$08f3], sp
    rst $30
    inc c
    ld a, l
    ld b, $7a
    rst $00
    cp $01
    ld a, [bc]
    ld d, b
    ld [de], a
    db $fc
    ld bc, $01f6
    cp $11
    rst $08
    jr nc, @+$48

    cp e
    ld e, $a1
    ld e, a
    ldh [$9f], a

jr_035_51ae:
    ldh [$9f], a
    ldh [$5f], a
    ldh [rVBK], a

jr_035_51b4:
    ldh a, [$67]
    ld hl, sp-$55
    xor d
    xor e
    xor d
    ld [hl], a
    sub $37
    db $f4
    scf
    db $f4
    ccf
    add sp, $3f
    ldh [$3f], a
    and b
    ld a, [bc]
    ld d, b
    dec c
    inc b
    rst $38
    inc b
    db $fd
    ld b, $fe
    inc bc
    cp $02
    rst $38
    ld bc, $000a
    nop
    and d
    ld a, a
    sbc a
    ld a, l
    rst $08
    jr c, jr_035_51ae

    jr jr_035_51f0

    add sp, $1f
    jr nc, jr_035_51b4

    add sp, -$71
    add sp, $2f
    ldh a, [$ef]
    ldh a, [$a7]
    ld hl, sp-$1a
    ld a, b

jr_035_51f0:
    db $e4
    inc sp
    db $f4
    add hl, de
    ei
    rra
    ld sp, hl
    dec e
    ld [hl], d
    db $dd
    ld [hl], b
    rst $10
    ld a, b
    call $c77e
    cp $82
    rst $38
    add e
    ld a, [bc]
    sbc b
    db $10
    ccf
    and b
    ccf
    jr nz, @+$0c

    sbc b
    nop
    ld a, a
    ret nz

    ld a, a
    ld b, b
    ld a, a
    ret nz

    cp a
    ldh [$0a], a
    ld d, b
    rlca
    ld a, [bc]
    pop de
    nop
    ld a, [bc]
    rst $20
    inc de
    cp $73
    rst $38
    cp a
    add sp, $5e
    pop de
    ld sp, hl
    rst $38
    ld a, [hl]
    rst $18
    ret nc

    rra
    db $d3
    cp [hl]
    and a
    dec a
    xor e
    ld a, e
    ld a, a
    rlca
    inc [hl]
    rst $28
    ld [$1eff], a
    db $eb
    dec sp
    push hl
    and a
    ld [hl], h
    db $f4
    ld a, [hl]
    ld e, a
    ret nc

    ld sp, hl
    or $36
    rst $38
    ld e, c
    rst $38
    ld [hl], b
    rst $38
    ld bc, $03ff
    db $fd
    add a
    ld hl, sp-$66
    ld l, a
    rst $38

Call_035_5253:
    rst $18
    or h
    ld e, a
    ld a, h
    rst $38
    ldh a, [$3f]
    ld h, b
    sbc a
    or b
    ld c, a
    ld a, h
    rst $08
    jp z, Jump_000_3efb

    rst $38
    ld b, $0a
    nop
    nop
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld c, l

jr_035_5270:
    ld [bc], a
    dec hl
    rrca
    jr jr_035_5270

    inc bc
    ld sp, hl
    ld a, [bc]
    ld [bc], a
    inc l
    ld [$f0f7], sp
    rlca
    db $f4
    ld [bc], a
    inc l
    rrca
    ld [hl+], a
    ld bc, $03fe
    db $fc
    ld b, $fd
    rlca
    cp $03
    rst $38
    ld bc, $13fd
    di
    ld l, $c6
    db $fc
    ld h, h
    sbc l
    pop bc
    rst $08
    ccf
    ccf
    sub c
    sub c
    ld [c], a
    ld a, [$fe83]
    ld c, l
    rst $38
    dec c
    ld a, a
    xor $fb
    sub a
    db $fd
    daa
    db $ec
    inc bc
    cp $01
    cp a
    ld [bc], a
    call nc, $fd00
    rlca
    ld a, [$7c8f]
    rst $38
    rst $30
    rst $38
    ld [$e63e], a
    ld a, $df
    ret nz

    rra
    ret nc

    adc a
    ld hl, sp+$1f
    db $fc
    ld a, a
    ldh [$9f], a
    sub b
    ld l, a
    ld a, b
    rla
    ld a, h
    ld [bc], a
    adc b
    ld bc, $ff0c
    inc d
    rst $30
    inc l
    adc a
    jr @+$01

    ld d, b
    rst $38
    ld d, c
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$0e
    ei
    rrca
    ld sp, hl
    ld a, [bc]
    db $fc
    dec b
    db $fc
    ld a, l
    ret z

    cp e
    jp $877e


    db $fc
    sbc a
    ld hl, sp-$13
    ldh [$c4], a
    jr nc, jr_035_52fb

    pop hl
    rlca

jr_035_52f8:
    cp $1e
    ld sp, hl

jr_035_52fb:
    inc c
    ld [hl-], a
    ld c, $71
    ld b, $79
    nop
    ld a, a
    call nc, $d8bf
    ccf
    jr nz, jr_035_52f8

    ret nz

    rst $18
    di
    sub e
    dec sp
    ld a, [bc]
    ld e, a

Jump_035_5310:
    db $e4
    ccf
    ldh [$1f], a
    ret nc

    rla
    ld hl, sp+$0f
    add sp, $0b
    db $fc
    rlca
    inc a
    rst $30
    db $f4
    rst $38
    inc c
    rst $38
    inc b
    ld [bc], a
    inc l
    dec b
    ld d, d
    rst $38
    ld d, l
    sbc a
    ld a, [bc]
    rst $38
    inc l
    rst $38
    inc d
    rst $38
    ld a, [de]
    rst $38
    dec l
    rst $38
    dec l
    ld [hl], b
    rst $30
    ldh a, [$9f]
    ret nz

    rrca
    pop hl
    ccf
    ldh [$3c], a
    db $e3
    ld a, $c3
    ld c, $f3
    ld [de], a
    ccf
    rst $20
    ld a, b
    ld sp, hl
    db $fc
    add a
    or [hl]
    ld a, e
    xor $7b
    or [hl]
    ei
    call c, $b8e7
    rst $38
    nop
    sbc a
    nop
    cp a
    nop
    ccf
    ld [bc], a
    or h
    ld de, $001e
    sub b
    nop
    add b
    rlca
    db $f4
    rlca
    db $e4
    rlca
    db $e4
    rlca
    call nz, $8407
    rrca
    ld [$101f], sp
    ld a, a
    ld h, b
    ld [bc], a
    inc l
    inc c
    ld sp, hl
    dec hl
    ei
    ld d, $ff
    inc c
    ld [bc], a
    add d
    rlca
    ld a, [bc]
    cp $04
    db $fd
    dec sp
    ei
    ld b, [hl]
    rst $00
    ld a, h
    rst $38
    jr c, jr_035_538d

    inc l
    nop

jr_035_538d:
    add b
    add b
    add b
    add b
    rst $38
    rst $38
    ld [bc], a
    inc l
    ld b, $03
    inc bc
    ld a, l
    ld a, [hl]
    cp a
    ret nz

    ld [bc], a
    inc l
    ld b, $02
    inc d
    jr z, jr_035_53a5

    inc l
    rrca

jr_035_53a5:
    ld bc, $0240
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $08
    nop
    sbc $00
    di
    nop
    pop bc
    ld [$3c81], sp
    ld a, [bc]
    nop
    nop
    ld a, [bc]
    db $10
    ld [bc], a
    rst $18
    nop
    cp a
    nop
    ccf
    ld a, [bc]
    ld de, $0a05
    jr nz, jr_035_53d9

    dec h
    adc b
    inc d
    xor b
    rlca
    xor $00
    call z, $8712
    nop
    and h
    add hl, bc
    ldh [$0c], a

jr_035_53d9:
    ld a, [c]
    nop
    rra
    add b
    ld a, a
    inc bc
    rst $38
    ld b, $fd
    rlca
    dec a
    rlca
    ld a, $83
    scf
    add c
    rlca
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, d
    ld a, a
    and [hl]
    cp a
    sbc $77
    and $9d
    pop af
    ld a, [bc]
    db $10
    inc bc
    jr nz, @+$01

    ld h, b
    rst $38
    and b
    rst $38
    and b
    ld a, a
    and b
    ld a, [bc]
    jr nz, jr_035_5419

    dec e
    ld b, a
    db $10
    rst $20
    nop
    di
    nop
    db $fd
    ld a, [bc]
    ld de, $e102
    cp $9b
    adc a

jr_035_5419:
    ld sp, hl
    add a
    db $fd
    sbc a
    db $e4
    rst $08
    ld [hl], d
    rst $38
    ld [hl+], a
    rst $18
    rst $38
    ld a, a
    sub b
    ld a, a
    ldh [$7f], a
    sub b
    ld a, a
    adc a
    sbc l
    push hl
    db $eb
    db $76
    db $db
    scf
    jp c, $9336

    rst $38
    ld d, a
    cp $0a
    db $10
    ld bc, $fe80
    ld b, b
    cp $c2
    inc a
    daa
    ret c

    rst $18
    ldh a, [$3e]
    ld a, [bc]
    db $10
    inc bc
    ldh a, [rIF]
    ld hl, sp+$37
    cp h
    ld a, a
    ld c, h
    rst $38
    add h
    ld a, [bc]
    jr nz, jr_035_5462

    rst $20
    rst $38
    jr @+$01

    ld b, $ff
    ld bc, $00ff
    rst $38
    ld bc, $360a

jr_035_5462:
    ld de, $fe80
    ld bc, $07f8
    add c
    rst $38
    rst $38
    cp $f7
    inc d
    rst $38
    jr @+$01

    jr jr_035_54ee

    cp $55
    rst $10
    and l
    and a
    add sp, -$12
    call nc, $cafc
    sbc $e5
    ld h, a
    push af
    rla
    pop hl
    ccf
    pop hl
    dec a
    jp nz, $c37f

    ld a, [$ba83]
    add e
    cp d
    add l
    sub [hl]
    add a
    add h
    rst $38
    ld [$200a], sp
    rrca
    inc e
    ld [$04ff], sp
    rst $38
    ld bc, $81ff
    rst $38
    jp $ffbc


    ret z

    ld a, a
    ldh a, [$37]
    ld a, [c]
    ld [hl], e
    adc d
    ei
    ld b, $f7
    ld b, $f7
    push bc
    rst $00
    dec [hl]
    rst $30
    dec c
    db $ed
    dec b
    push af
    adc a
    adc a
    sub b
    sbc a
    ld h, b
    ld a, a
    add b
    jp $8100


    ld [hl], e
    ld [hl], e
    adc a
    db $fc
    rlca
    db $fc

jr_035_54c7:
    ld a, [bc]
    add b
    ld [bc], a
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    call nz, $e4bf
    rst $18
    ld a, b
    ld a, [bc]
    jr nz, jr_035_54e6

    ld [bc], a
    ld [bc], a
    rst $38
    inc bc
    ld a, [bc]
    ld [hl], $11
    nop
    rst $38
    nop
    ldh a, [rNR32]
    rst $30
    rra
    rst $28

jr_035_54e6:
    jr c, jr_035_54c7

    ldh a, [$3f]
    ldh [rIE], a
    ret nz

    ld a, [bc]

jr_035_54ee:
    nop
    nop
    ld [bc], a
    ld a, e
    ld [bc], a
    ld a, [de]
    add [hl]
    add [hl]
    rst $38
    ld a, c
    ld a, [bc]
    db $10
    inc b
    inc bc
    cp $01
    rst $00
    dec e
    rra
    ld a, $23
    rst $38
    pop bc
    ld a, [bc]
    db $10
    inc bc
    jr nc, @+$01

    nop
    rst $38
    db $10
    rst $38
    ld a, [bc]
    rlca
    dec h
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    ld bc, $ff02
    inc bc
    cp $05
    rla
    nop
    ld [bc], a
    rst $38
    ld bc, $01ff
    cp $03
    db $fc
    rlca
    ld hl, sp-$31
    add hl, sp
    rst $38
    rra
    or $1f
    ld a, [$e7fe]
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    rst $20
    jr c, @+$01

    ldh a, [$df]
    ldh a, [$be]
    rst $38
    rst $08
    dec b
    nop
    ld bc, $0580
    ld b, h
    dec b
    dec b
    rst $38
    rst $38
    inc bc
    inc b
    rst $38
    ld a, [bc]
    dec b
    ld h, [hl]
    ld bc, $fd15
    rst $28
    cp $03
    db $fd
    rlca
    ld hl, sp+$0f
    ld hl, sp+$0f
    pop af
    dec [hl]
    or $76
    sbc $5e
    di
    inc sp
    sbc a
    ei
    inc h
    rst $38
    ld c, b
    cp $51
    ld a, a
    jp Jump_035_47ff


    ld [hl], l
    rst $18
    ld a, [$ecef]
    ld a, [c]
    cp a
    ld c, c
    rst $38
    inc h
    rst $38
    inc d
    db $fd
    add a
    rst $38
    call nz, $f65c
    cp [hl]
    rst $28
    ld l, a
    dec b
    ld [hl-], a
    ld bc, $3fe0
    ldh [$1f], a
    ld e, b
    rst $18
    call c, $f5f7
    sbc a
    sbc c
    dec b
    nop
    ld bc, $ff40
    and b
    dec b
    or [hl]
    ld bc, $7f50
    xor $ff
    sub d
    db $fd
    ld h, a
    ei
    ld c, $ff
    ld c, $f3
    ld e, $e7
    scf
    di
    ld a, a
    db $fd
    dec e
    pop hl
    and c
    ld [hl], e
    di
    or c
    pop af
    ld [$cadb], a
    xor e
    cp e
    dec sp
    db $ed
    inc c
    dec e
    ld h, e
    sub e
    sbc [hl]
    ld de, $129f
    cp [hl]
    inc d
    db $fd
    ld [$86db], sp
    cp a
    pop bc
    ld a, c
    ld [c], a
    ccf
    sub e
    di
    ld de, $91f3
    ei
    ld d, b
    ld a, a
    jr nz, @-$47

    ld b, e
    ei
    ld b, a
    db $fc
    adc a
    cp c
    rrca
    ld a, [bc]
    sbc l
    sbc a
    dec de
    ld e, $af
    or [hl]
    and a
    xor d
    cp e
    cp c
    ld l, a
    ld h, c
    ld [hl], c
    adc l
    rst $38
    sub d
    ld a, a
    call z, $e0bf
    rst $38
    ldh [$9f], a
    ldh a, [$df]
    ldh a, [$8f]
    ld hl, sp+$7f
    ld [hl], b
    ld a, [c]
    scf
    db $eb
    ccf

Call_035_5605:
    rst $28
    inc a
    rst $08
    ld l, b
    rst $10
    ld a, h
    rst $10
    ld a, h
    cp e
    xor $bf
    and $bf
    ld a, $fb
    jp c, $1eff

    rst $38
    dec a
    ei
    ccf
    db $fd
    dec a
    ld sp, hl
    add hl, de
    pop af
    ld de, $5db1
    ld hl, sp-$54
    ld [$f4ba], a
    or l
    cp h
    rst $38
    ld a, [hl]
    rst $38
    or [hl]
    or a
    scf
    scf
    dec de
    ld [hl], h
    ccf
    ld l, d
    xor a
    cp d
    ld e, a
    ld e, e
    ld a, e
    rst $38
    db $fd
    rst $38
    db $db
    db $db

jr_035_563f:
    reti


    reti


    ld a, [$bff9]
    or a

jr_035_5645:
    rst $38
    ldh a, [rIE]
    ld a, b
    cp a
    ld hl, sp+$7f
    ld a, b
    ccf
    jr nc, jr_035_566f

    db $10
    rst $28
    xor b
    rst $28
    jr c, jr_035_5645

    jr c, jr_035_563f

    inc l
    dec b
    jr z, jr_035_566e

    ei
    adc $bf
    ldh [$bf], a
    ldh [rIE], a
    ld b, b
    dec b
    nop
    ld b, $f1
    ld de, $13f3
    db $e3
    inc hl
    db $eb

jr_035_566e:
    dec hl

jr_035_566f:
    rst $28
    cpl
    adc $4e
    sbc [hl]
    sbc [hl]
    sbc [hl]
    sbc [hl]
    inc sp
    inc sp
    inc sp
    inc sp
    ld e, c
    ld e, c
    ld e, b
    ld e, b
    ld e, h
    ld e, h
    xor $ee
    rst $28
    rst $28
    rst $30
    rst $30
    sbc c
    sbc c
    sbc c
    sbc c
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld [hl], l
    ld [hl], l
    xor $ee
    xor $ee
    sbc $de
    rra
    db $10
    sbc a
    sub b
    adc a
    adc b
    xor a
    xor b
    rst $28
    add sp, -$19
    db $e4
    di
    ld a, [c]
    di
    ld a, [c]
    ei
    ld c, $fb
    ld c, $ff
    inc b
    dec b
    ld c, [hl]
    rrca
    inc b
    nop
    rst $38
    nop
    sbc $5e
    cp $7e
    cp [hl]
    cp d
    cp $e2
    rst $38
    ld b, e
    db $fc
    rlca
    rst $38
    rlca
    rst $38
    nop
    cp e
    cp e
    inc a
    inc a
    ld a, a
    ld e, a
    rst $38
    cp a
    di
    set 5, a
    ld a, l
    rst $18
    or b
    rst $38
    ldh [$ba], a
    cp d
    ld a, b
    ld a, b
    db $fc
    db $f4
    cp $fa
    sbc a
    and a
    rst $28
    ld a, h
    rst $30
    dec de
    rst $38
    ld c, $f7
    db $f4
    rst $38
    db $fc
    ei
    cp d
    rst $38
    adc [hl]
    rst $38
    add h
    ld a, a
    ret nz

    rst $38

jr_035_56f1:
    ret nz

    dec b
    nop
    ld c, $40
    ld [bc], a
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld hl, sp+$03
    rst $38
    ld bc, $0009
    add hl, bc
    nop
    rst $38
    add b
    add hl, bc
    nop
    rlca
    jr jr_035_56f1

    inc a
    db $e3
    ei
    add hl, bc
    nop
    add hl, bc
    jr nc, @+$01

    ld [hl], b
    add hl, bc
    nop
    add hl, bc
    ld bc, $03ff
    add hl, bc
    ld [de], a
    dec c
    ld bc, $4c09
    nop
    db $fc
    rrca
    ldh a, [rNR32]
    rst $20
    scf
    ret


    ld l, c
    jp nc, Jump_035_7f73

    ret nz

    ld a, a
    jp Jump_035_633e


    ld e, $d3
    ld c, $6b
    ld b, $d6
    ld h, d
    cp $aa
    cp [hl]
    db $e3
    rst $28
    jp Jump_035_41df


    ld e, c
    ld b, c
    db $dd
    nop
    sbc h
    nop
    cp h
    nop
    cp [hl]
    db $10
    rst $30
    rst $38
    ei
    call c, Call_035_44fd
    push af
    ld [$08ba], sp
    cp $00
    or $00
    db $f4
    db $10
    sbc $fd
    rlca
    db $fd
    add a
    ld sp, hl
    adc l
    ldh a, [$97]
    ldh [$ac], a
    pop bc
    rst $10
    adc l
    rst $38
    xor d
    add hl, bc
    cpl
    ld [bc], a
    add b
    ld a, a
    ldh [$1f], a
    ld [hl], b
    rst $08
    ret c

    daa
    inc l
    sub a
    sbc h
    and d
    db $e3
    and l
    rst $20
    or l
    or a
    db $fd
    call $85fd
    rst $38
    add e
    add hl, bc
    inc c
    nop
    sbc d
    sbc e
    ld e, $1e
    ld a, h
    ld [hl], h
    db $fc
    sub l
    db $fc
    rlca
    ld hl, sp+$0e
    ld hl, sp+$0f
    ld hl, sp+$0d
    rrca
    rst $28
    rra
    pop af
    rra
    ret nc

    rla
    cp b
    dec bc
    ld a, h
    add a
    rst $18
    add b
    cp a
    add b
    cp e
    ldh [$ef], a
    ldh a, [rNR34]
    ldh a, [rNR22]
    ret nc

    add hl, sp
    and b
    ld a, l
    ret nz

    db $fc
    ld a, [bc]
    sbc $0a
    ld a, [hl]
    or d
    or e

Jump_035_57b8:
    pop af
    pop af
    ld a, l
    ld e, l
    ld a, a
    ld d, e
    ld a, a
    pop bc
    ccf
    and c
    ccf
    pop hl
    ccf
    ld h, c
    adc e
    adc [hl]
    ld c, e
    adc $5b
    jp c, Jump_035_667f

    ld a, a
    ld b, d
    rst $38
    add d
    add hl, bc
    ld e, $09
    add hl, bc
    rst $38
    di
    ld hl, sp-$74
    pop af
    add hl, de
    ld a, [c]
    ld a, [de]
    ld a, [c]
    ld e, $f2
    ld e, $f9
    dec c
    ld sp, hl
    dec bc
    db $fc
    inc b
    add h
    or a
    add h
    rst $20
    add h
    push af
    add h
    db $e4
    add h
    sub h
    ld b, d
    ld b, d
    ld [hl+], a
    ld a, [hl+]
    and d
    and e
    dec b
    cp a
    ld b, h
    rst $38
    ld b, h
    rst $18
    ld b, h
    ld e, [hl]
    ld b, h
    ld [hl], h
    ld c, c
    ld l, c
    ld c, c
    db $dd
    ld c, b
    jp z, $223f

    sbc a
    ret nc

    sbc a
    ldh a, [$9f]
    ldh a, [$9f]
    ret nc

    ccf
    and b
    ccf
    jr nz, @+$01

    ret nz

    add hl, bc
    ld e, $1e
    add hl, bc
    db $10
    ld a, [bc]
    cp $02
    add hl, bc
    ld h, b
    ld bc, $ff09
    push af
    and h
    or l
    ld c, h
    ld e, l
    ld c, h
    ld c, h
    jp z, $aaca

    xor d
    rst $30
    push de
    rst $30
    sub h
    rst $38
    inc c
    ld h, h
    db $76
    ld h, h
    db $fc
    inc h
    or h
    dec l
    xor l
    dec l
    dec l
    ccf
    ld a, [hl-]
    cp a
    xor d
    cp a
    and b
    rst $38
    ret nz

    rst $38
    add b
    add hl, bc
    inc e
    rra
    ld bc, $c609
    rra
    ld d, $04
    add hl, bc
    db $10
    dec bc
    add hl, bc
    pop bc
    db $10
    add hl, bc
    rst $00
    rra
    jr jr_035_589e

    ld [bc], a
    rlca
    rst $38
    rlca
    rst $38

jr_035_5863:
    rst $38
    dec d
    ld bc, $2807
    nop
    db $fc
    rlca
    rst $38
    or $80
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld h, e
    rlca
    nop
    rrca
    ld d, $00
    rst $38
    ld bc, $03fe
    cp $02
    rlca
    nop
    inc bc
    jr nz, jr_035_5863

    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    pop af
    rrca
    db $fd
    rst $38
    ld [bc], a
    rlca
    add b
    ld bc, $ff06
    ld l, e
    rst $38
    ld e, d
    rst $38
    db $ec
    ld l, [hl]
    or l
    rst $38
    ld l, a
    rst $38
    sub b
    rst $38

jr_035_589e:
    and b
    rst $38
    ldh [rIE], a
    xor h
    rst $38
    or h
    rst $38
    ld l, a
    db $ed
    ld e, e
    rlca
    nop
    ld bc, $fb04
    ld c, $fb
    ld l, [hl]
    sbc e
    cp $c3
    ld e, a
    ldh [$2f], a
    rlca
    nop
    rlca
    add b
    ld a, a
    ret nz

    ld a, a
    ld b, b
    rst $38
    ld bc, $0007
    ld a, [bc]
    add e
    cp $9f
    db $dd
    cp a
    add sp, -$41
    push hl
    sbc [hl]
    or e
    call $e05f
    ld l, $f9
    rra
    jp nc, $fdff

    dec a
    pop de
    db $fd
    ld l, c
    rst $38
    ld h, l
    rst $38
    add b
    cp [hl]
    ret z

    cp $3c
    ld a, a
    sub a
    cp $7f
    ld a, c
    rla
    ld a, [hl]
    dec l
    rst $38
    ld c, h
    rst $38
    inc bc
    ei
    ld h, $fe
    ld a, c
    db $fd
    di
    rra
    di
    ld a, [de]
    rst $20
    ld [hl], h
    adc a
    add sp, -$41
    or b
    ld a, a
    call z, $f07f
    ccf
    ldh [rTAC], a
    ld a, [hl-]
    ld bc, $ff07
    rst $38
    ld [$cffb], sp
    ld sp, hl
    dec a
    db $fd
    dec e
    pop af
    dec e
    rst $30
    ld a, a
    pop af
    dec e
    db $fd
    dec e
    ld hl, sp+$3c
    ld e, $ff
    sbc a
    ei
    rrca
    push hl
    dec [hl]
    pop af
    cp b
    ei
    rra
    rst $10
    rrca
    ld_long $ff87, a
    pop af
    rst $38
    di
    cp a
    pop hl
    ld c, a
    ld e, c
    rra
    dec sp
    cp a
    pop af
    rst $10
    pop hl
    xor a
    jp nz, $bffe

    and $3f
    ld a, b
    ld a, a
    ld [hl], b
    rra
    ld [hl], b
    rst $18
    db $fc
    rra
    ld [hl], b
    ld a, a
    ld [hl], b
    ccf
    ld a, b
    rlca
    nop
    rrca
    dec c
    ld a, [$fcca]
    ld b, $fc
    inc c
    cp $12
    rst $38
    ld bc, $02ff
    rst $38
    dec b
    rst $38
    ld bc, $ff90
    and b
    cp a
    ld c, b
    ld a, [hl]
    ld sp, $113f
    add hl, de
    adc l
    adc l
    daa
    and a
    rra
    rst $18
    ld [de], a
    cp $0a
    ld_long a, $ff27
    jr @+$01

    db $10
    dec sp
    ld [hl], l
    ld [hl], a
    call c, $fcdd
    db $e4
    ld a, a
    and $7f
    ret nc

    ld a, a
    ld a, b
    rst $08
    add sp, -$61
    ret nc

    ccf
    and b
    rra
    jr nc, @+$11

    jr jr_035_5997

    ld [$100f], sp
    rlca
    daa
    inc bc

jr_035_5996:
    rlca

jr_035_5997:
    nop
    ld [bc], a
    cpl
    ld a, [hl+]
    rst $08
    jp z, Jump_035_680f

    daa
    or h
    ld [hl], a
    ld d, h
    rst $38
    adc h
    rlca
    nop
    nop
    cp $b2
    rst $38
    sub e
    rlca
    nop
    ld [$707f], sp
    rlca
    db $10
    rra
    dec bc
    ld b, b
    ld [bc], a
    ld b, $ff
    ld b, $ff
    rst $38
    ld c, l
    ld b, $2f
    rrca
    dec de
    ld bc, $2e06
    inc bc
    jr c, jr_035_5996

    ld c, b
    sbc a
    sub b
    cp a
    and b
    ld a, a
    ld b, b
    ld b, $2e
    rrca
    ld hl, $03fd
    cp $07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    and b
    ld a, a
    rst $38
    ld bc, $be3e
    add d
    cp [hl]
    ld [bc], a
    and $0a
    ld [$f707], a
    ld b, $2f
    nop
    ld a, a
    ld b, b
    ld sp, hl
    ld a, [$fb83]
    add b
    adc $a0
    xor a
    ret nz

    rst $18
    ld b, $2f
    nop
    ld b, $2e
    nop
    ld a, a
    add b
    rst $38
    ret nz

    ccf
    jr nz, jr_035_5a25

    sub b
    rrca
    adc b
    dec bc
    call z, Call_000_2e06
    rrca
    dec c
    ret nz

    ld a, a
    ld b, b
    rst $20
    nop
    dec de
    add b
    push de
    adc b
    rst $18
    add h
    rst $38
    add [hl]
    rst $38
    add l
    ld b, $2e
    ld bc, $ef20
    rra
    rst $38

jr_035_5a25:
    dec bc
    db $fd
    rlca
    db $fc
    inc bc
    rst $30
    nop
    ei
    ld b, $2f
    nop
    ld [$f0ef], sp
    rst $38
    and b
    ld a, a
    ret nz

    ld a, a
    add b
    rst $18
    ld bc, $07bf
    call nz, $f635
    dec c
    xor h
    dec bc
    ld c, d
    dec hl
    xor d
    ld b, e
    ld b, d
    jp Jump_035_43c2


    jp nz, Jump_000_2e06

    rrca
    dec c
    add a
    cp $03
    ld a, [hl-]
    ld b, e
    ei
    pop bc
    ld a, l
    and c
    ld a, l
    ldh [$3e], a
    ret nc

    ccf
    ldh a, [rNR22]
    ret nz

    db $fc
    ldh a, [$b7]
    rst $10
    rlca
    xor l
    ld a, e
    ld a, a
    rst $38
    ld hl, sp-$21
    cp [hl]
    rst $10
    ld e, a
    push af
    rlca
    ld a, [hl]
    rra
    jp c, $c1d7

    ld l, e
    cp l
    db $fd
    rst $38
    ld a, $f6
    ld a, [$f4d6]
    ld e, [hl]
    jp $85c2


    add h
    add l
    add [hl]
    rlca
    inc b
    dec bc
    inc c
    rrca
    ld [$1817], sp
    rra
    db $10
    ld b, $2e
    rrca
    dec c
    ld hl, sp+$0b
    db $fc
    dec b
    cp $02
    ld b, $8e
    dec b
    nop
    ccf
    push af
    rrca
    rst $28
    nop
    ld a, a
    add b
    sbc a
    ld [hl], b
    ldh a, [$cf]
    cpl
    ld b, $ec
    ld de, $e05c
    add sp, $00
    ldh a, [$03]
    jp Jump_000_1e1d


    rst $20
    add sp, $06
    db $fc
    ld de, $7f20
    ld b, b
    rst $38
    add b
    ld b, $2e
    rrca
    rlca
    ld b, b
    ld [bc], a
    dec bc
    rst $38
    dec bc
    rst $38
    rst $38
    ld c, l
    dec bc
    dec l
    rrca
    ld a, [de]
    rst $18
    ccf
    dec bc
    ld l, $0a
    ld a, a
    dec bc
    dec l
    rrca
    inc hl
    ld bc, $02fe
    ld hl, sp+$01
    db $fc
    rlca
    ldh a, [rSC]
    ld hl, sp+$0e
    ldh [$63], a
    add b
    add a
    nop
    nop
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld h, b
    inc bc
    ld b, e
    inc e
    rra
    ld a, a
    ld b, b
    ccf
    and b
    rla
    jr jr_035_5b0b

    inc c
    ld [bc], a
    ld [hl], e
    ld bc, $e039
    pop hl
    inc a
    ld a, h
    dec bc
    ld l, $07
    add b
    ld a, a
    ret nz

jr_035_5b0b:
    ccf
    ld h, b
    dec bc
    ld l, $0f
    dec c
    ldh a, [rNR32]
    pop hl
    ld hl, $53c3
    push bc
    ld [hl], a
    bit 1, a
    and $26
    ld_long a, $ff1b
    ld l, [hl]
    ld h, b
    ld l, a
    add a
    xor b
    rrca
    and b
    ccf
    add c
    cp a
    rlca
    ld sp, hl
    rrca
    di
    ld e, $7f
    ccf
    ld a, [de]
    cp [hl]
    adc l
    ccf
    or $0e
    db $ed
    dec b
    db $e3
    rst $10
    dec [hl]
    ld [c], a
    sub a
    ld hl, sp-$02
    pop hl
    ccf
    jr nz, @+$41

    jr nz, jr_035_5bc5

    ld d, b
    rst $38
    xor h
    rst $38
    ld h, d
    rst $28
    sub h
    rst $38
    inc d
    rst $18

jr_035_5b50:
    jr c, @+$0d

    ld l, $0f
    ld c, $88
    db $ed
    ld d, d
    di
    ld e, [hl]
    rst $38
    ld l, h
    cp $05
    db $fd
    ld [$18f3], sp
    di
    jr jr_035_5be4

    inc b
    ld a, a
    adc e
    db $fc
    ld c, $fc
    ld e, $fc
    ld b, $fc
    dec b
    db $fc
    inc b
    cp a
    ld b, e
    ei
    ld b, l
    db $fd
    and b
    ld a, [hl]
    ldh a, [$7f]
    ret nz

    ld a, a
    ret nz

    ld a, e
    call nz, Call_035_407b
    ld a, [$3f80]
    ldh [rIE], a
    ret nz

    rst $38
    ld b, b
    ld e, a
    ld h, b
    ld a, a
    jr nz, @+$81

    jr nz, jr_035_5b50

    ld h, b
    ccf
    ldh [$0b], a
    db $10
    rra
    ld c, $1b
    ld hl, sp+$0d
    rst $38
    rlca
    cp $09
    rst $38
    ld b, $ff
    inc bc
    dec bc
    ld l, $00
    sbc a
    jr nz, jr_035_5bb0

    or b
    add b
    rst $10

jr_035_5bac:
    ld a, a
    rst $38
    cp a
    ld [hl], b

jr_035_5bb0:
    rst $38
    ret nz

    dec bc
    inc l
    ld de, $c00a
    dec [hl]
    rlca
    ld l, a
    ld sp, hl
    cp $fb
    inc e
    rst $38
    rlca
    dec bc
    sbc d
    ld bc, $ffc0

jr_035_5bc5:
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    dec bc
    ld hl, $0b20
    dec l
    rrca
    nop
    ld b, b
    ld [bc], a
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    rst $38
    ld c, l
    ld a, [bc]
    dec d
    rrca
    ld bc, $fe07
    inc bc
    ld a, [bc]
    db $76
    ld [bc], a

jr_035_5be4:
    ld a, [hl]
    ld a, a
    ld a, [bc]
    inc d
    ld bc, $01fe

jr_035_5beb:
    db $fd
    jr nz, jr_035_5bac

    db $10
    sbc $19
    rst $38
    db $dd
    push af
    ld a, [bc]
    inc d
    ld bc, $f00f
    scf
    jp nz, $e4de

    cp a
    xor $3b
    ld [hl], $92
    ld a, [bc]
    inc d
    ld bc, $0ff8
    ld hl, sp+$1f
    ret nc

    ccf

jr_035_5c0b:
    and b
    ccf
    jr nz, jr_035_5c0b

    db $fd
    ld a, [bc]
    inc d
    inc c
    ei
    rlca
    db $ec
    rra
    ldh a, [$3f]
    cp $0e
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $03fe
    ld bc, $007d
    cp $3e
    cp [hl]
    ld bc, $01f9
    ld a, l
    add c
    cp c
    rst $00
    rst $00
    jr c, @-$06

    push af
    cp l
    rst $38
    xor a
    sbc c
    sbc d
    rst $10
    ld hl, sp-$52
    jr nz, jr_035_5beb

    jr nc, jr_035_5ca9

    pop af
    cp c
    pop de
    rla
    cp a
    rst $28
    db $fc
    sbc c
    ld e, l
    db $eb
    rra
    ld [hl], a
    dec b
    dec [hl]
    rrca
    sub a
    adc [hl]
    sbc [hl]
    adc h
    ld bc, $bcfd
    cp l
    ret nz

    rst $08
    nop
    ccf
    nop
    ld a, a
    add b
    cp h

Call_035_5c5f:
    di
    ld [hl], e
    ld c, a
    ld c, l
    cp a
    ret nz

    ld l, a
    ldh a, [$1f]
    ld hl, sp+$3f
    ldh [$7f], a
    ld b, b
    rst $38
    add b
    rst $38
    ldh [$7f], a
    sub b
    rst $38
    ld c, $ff
    inc de
    di
    rra
    ld a, [$fe3f]
    ld c, a
    db $f4
    ld c, a
    db $e4
    ld e, [hl]
    call z, Call_035_407f
    sbc $87
    rst $38
    jr @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    nop
    ld a, a
    nop
    cp $00
    ldh a, [$9c]
    cp b
    sbc a
    rst $10
    ld d, a
    ld d, h
    ld a, $be
    ld de, $2195
    dec a
    ld b, d
    ld a, a
    add d
    cp e
    inc a
    dec d
    ld d, a
    dec sp
    or d
    ld a, [c]

jr_035_5ca9:
    ld a, h
    db $ed
    sbc b
    reti


    ld [$0ce8], sp
    db $ec
    rrca
    ei
    add e

jr_035_5cb4:
    cp a
    pop hl
    rst $28
    jr jr_035_5cb4

    ld b, $0a
    ret z

    ld bc, $7f00
    nop
    rra
    rra
    db $fc
    rst $38
    ld a, [c]
    db $d3
    cp [hl]
    ld e, a
    db $fc
    ccf
    db $ec
    ccf
    ld [hl], d
    rra
    or d
    dec bc
    cp $f8
    ccf
    ld sp, hl
    rrca
    cp $0f
    ld a, [bc]
    inc d
    ld b, $07
    add a
    ld hl, sp-$01
    cp $11
    cp $11
    rst $38
    ld l, b
    rst $38
    sub h
    call c, $ffb7
    ld l, e
    add h
    db $fd
    add h
    rst $38
    add h
    cp a
    add h
    cp a
    ld b, h
    rst $18
    ld b, b
    sla b
    pop hl
    ldh a, [$d0]
    inc c
    rst $38
    dec bc
    db $fc
    dec bc
    db $ec
    add hl, bc
    xor $1c
    rst $10
    rra
    sub e
    ccf
    dec h
    ld a, a
    ld b, d
    rst $00
    rst $00
    ccf
    ld hl, sp-$11
    inc e
    rst $10
    ld a, [hl-]
    ccf
    xor $ff
    push hl
    cp a
    reti


    cp a
    ret


    adc a
    sbc h
    cp a
    jr c, jr_035_5d29

    inc d
    add hl, bc
    ld bc, $02ff
    rst $38
    inc b
    db $fd
    ld b, $fe

jr_035_5d29:
    inc bc
    ld a, [bc]
    ld h, a
    ld [de], a
    rst $28
    rst $30
    pop af
    ld e, a
    cp a
    ld l, a
    cp b
    ld [hl], a
    daa
    rst $38
    rst $38
    ret c

    ld a, [bc]
    inc d
    nop
    ld hl, sp+$08
    db $fd
    dec b
    rst $38
    ld [bc], a
    rst $38
    add b
    ld a, [bc]
    inc d
    dec b
    add b
    rst $38
    ld bc, $670a
    ld [de], a
    ld a, [bc]
    inc d
    ld [bc], a
    sub c
    rst $38
    ei
    ld a, [hl]
    ld l, a
    or $df
    pop hl
    pop bc
    ld a, a
    rst $38
    ld a, $0a
    inc d
    rrca
    ld bc, $0240
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    rst $38
    ld c, l
    add hl, bc
    rra
    rrca
    dec bc
    ld a, b
    add hl, bc
    ld e, $0f
    inc e
    inc a
    add hl, bc
    ld e, $0f
    nop
    dec b
    rst $38
    dec b
    rst $38
    dec c
    ei
    ld c, $f9
    dec bc
    cp $07
    rst $38
    ld bc, $e0bf
    ld a, a
    ret nz

    ld a, a
    jp nz, $a63f

    sbc e
    sbc $83
    cp $1f
    db $fc
    sbc a
    pop de
    add hl, bc
    ld e, $09
    ld a, a
    and b
    rst $18
    add hl, bc
    ld e, $09
    db $fc
    dec bc
    rst $30
    ei
    ld c, $fd
    rlca
    db $fd
    add a
    ld sp, hl
    res 6, e
    or $83

jr_035_5daa:
    rst $38
    ldh a, [$7f]
    di
    rla
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    cp a
    ldh [$3f], a
    and b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld c, $f7
    rra
    jp hl


    ccf
    db $d3
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld b, b
    add hl, bc
    ld e, $00
    cp a
    ld [c], a
    cp [hl]
    push hl
    cp a
    and $9d
    push de
    adc l

jr_035_5dd7:
    xor l
    call nz, $e05c
    dec h
    ldh a, [rNR13]
    sbc h
    ld h, e
    ld [hl], e
    adc h
    sbc h
    ld h, e
    and b
    rst $18
    ld a, a
    rst $38
    ld b, d
    rst $08
    ld [hl], b
    push af
    jr c, jr_035_5dd7

    add hl, bc
    ld b, d
    db $10
    ld [hl], e
    adc h
    dec bc
    rst $30
    cp $ff
    ld [bc], a
    ld h, e
    jr @+$5f

    jr c, jr_035_5daa

    ei
    adc [hl]
    ei
    ld c, a
    ei
    rst $08
    ld [hl], e
    ld d, [hl]
    ld h, e
    ld l, d
    ld b, a
    ld [hl], h
    rrca
    ld c, b
    rra
    sub b
    rst $38
    ldh [$df], a
    ldh a, [$2f]
    ld hl, sp-$69
    db $fc
    rst $38
    ld a, h
    rst $38
    inc b
    add hl, bc
    ld e, $0b
    ld bc, $8a09
    db $10
    db $fc
    dec c
    db $fc
    dec b
    ei
    dec bc
    ld a, [c]
    db $76
    add c
    ei
    ld bc, $26f1
    or [hl]
    ld l, c
    jp hl


    inc [hl]
    ld h, a
    inc e
    ccf
    inc h
    ld a, $95
    call nc, Call_035_7e1d
    ld l, [hl]
    ld a, a
    sub a
    rst $38
    ld [$58db], sp
    call $f970
    ld c, c
    ld sp, hl
    ld d, d
    ld d, a
    ld [hl], c
    db $fd
    db $ed
    db $fd
    jp nc, Jump_000_21fe

    or a
    ld a, a
    ld h, b
    ld a, a
    ld b, b
    cp a
    and b
    sbc a
    call c, $be03
    ld bc, $c91f
    db $db
    dec l
    cpl
    add hl, bc
    ld e, $0d
    ld bc, $01ff
    cp $02
    rst $38
    rlca
    add hl, bc
    ld e, $04
    ld a, e
    db $db
    ld [hl], a
    ld d, l
    rst $38
    cp c
    cp $03
    db $fc
    ld b, $ff
    rrca
    add hl, bc
    ld e, $00
    rlca
    add a
    rra
    ret c

    rra
    or b
    cpl
    jr c, @+$79

    ld d, h
    rst $38
    adc h
    add hl, bc
    ld e, $00
    pop bc
    jp $37f1


    pop af
    dec de
    add sp, $39
    call c, $ff54
    ld h, e
    add hl, bc
    ld e, $00
    cp l
    or a
    db $dd
    ld d, l
    cp $3a
    rst $38
    add c
    ld a, a
    ret nz

    rst $38
    ldh [$09], a
    ld e, $05
    add b
    add hl, bc
    inc e
    ld de, $1f09
    ld bc, $0240
    ld [bc], a
    rst $38
    ld [bc], a

jr_035_5eb5:
    rst $38
    rst $38
    ld c, l
    ld [bc], a
    rra
    rrca
    dec bc
    inc bc
    rst $38

jr_035_5ebe:
    nop
    rst $38
    ld bc, $31ff
    xor $3b
    and $2f
    ld a, [c]
    ld d, $f2
    sub $39
    db $eb
    rst $38
    ret nz

    ld a, a
    ld [bc], a
    sub c
    nop
    ld b, b
    rst $38
    add b
    rst $38
    cp b
    rst $18
    ldh a, [$bf]
    rst $20
    ld [bc], a
    ld e, $0b
    add b
    ld [bc], a
    ld e, $0f
    dec c
    db $fc
    rrca
    ldh a, [rNR32]
    db $e3
    dec sp
    rst $20
    inc [hl]
    rst $28
    jr c, jr_035_5ebe

    ld l, b
    rst $18
    ld [hl], b
    rst $18
    ld [hl], e
    add hl, de
    ei
    ld a, [bc]
    ld a, e
    inc c
    ccf
    call nz, $e2df
    cpl
    ld a, [c]
    rla
    ld hl, sp-$17
    sbc h
    db $dd
    jr c, jr_035_5eb5

    ld [hl], b
    rst $18
    ld h, b
    ld a, h
    ld b, e
    ld [hl], e
    add a
    db $e4
    sbc a
    ret c

    ccf
    ld l, $73
    rst $30
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld a, b
    rlca
    inc a
    jp $e3de


    ld l, $f3
    ld e, $f7
    sbc h
    ld [bc], a
    ld e, $0f
    ld b, $01
    rst $38
    ld bc, $1e02
    nop
    rst $28
    jr c, @-$0f

    add hl, sp
    sbc $73
    cp [hl]
    xor $7f
    bit 7, l
    db $d3
    ei
    sbc h
    rst $38
    inc b
    call $0bee
    db $fc
    ld h, a
    ld a, h
    db $e3
    and [hl]
    db $dd
    ld e, a
    ld [c], a

jr_035_5f49:
    rst $28
    call $a6b3
    ld d, l
    ld h, a
    xor $a1
    ld a, a
    call z, $8e7d
    jp z, $f577

    adc a
    rst $28
    ld h, a
    sbc d
    bit 2, h
    rst $30
    inc e
    rst $30
    inc e
    di
    sbc [hl]
    ei
    xor $fd
    and a
    ld a, l
    sub a
    cp a
    ld [hl], d
    rst $38
    ld b, b

jr_035_5f6e:
    ld [bc], a
    ld e, $0f
    ld c, $06
    ei
    inc c
    db $fc
    dec bc
    push af
    ld a, [de]
    di
    jr jr_035_5f6e

    jr @-$0a

    ld e, $fa
    rrca
    ld a, a
    adc d
    db $db
    ld [hl], $ff
    ld [hl], d
    rst $38
    ld l, h
    rst $38
    ld d, b
    rst $38
    ld l, $7f
    dec bc
    xor a
    db $10
    db $fd
    and d
    or a
    ret c

    cp $9c
    rst $38
    ld l, h
    rst $38
    inc d
    cp $b8
    db $fc
    ldh [$ea], a
    ld de, $c0ff
    cp a
    ld h, b
    ld a, a
    jr nz, @+$61

    jr nc, jr_035_5f49

    jr nc, @-$5f

    jr nc, jr_035_600d

    ldh a, [$bf]
    ldh [rSC], a
    ld e, $0f
    dec c
    cp $07
    db $fd
    dec bc
    db $fc
    dec bc
    rst $38
    ld b, $fe
    add hl, bc
    rst $38
    rrca
    ld [bc], a
    ld e, $00
    ld d, b
    db $ec
    and $f8
    rst $38
    sbc a
    db $76
    rst $18
    rst $38
    cp c
    ld [bc], a
    ld e, $02
    inc d
    ld l, a
    rst $08
    ccf
    cp $f3
    db $dd
    or $fe
    dec sp
    ld [bc], a
    ld a, [hl+]
    ld [de], a
    rst $38
    ret nz

    ld a, a
    and b
    ld a, a
    and b
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    ld [bc], a
    rst $08
    rra
    ld [bc], a
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    dec bc
    ld bc, $0002
    add hl, bc
    ret nz

    ld a, a
    ret nz

    ld [bc], a
    nop
    rrca
    inc c
    ld [bc], a
    ld sp, $0e0f

Call_035_6004:
    cp $03
    cp $03
    rst $38
    ld bc, $03ff
    db $fc

jr_035_600d:
    ld [hl], a
    jp hl


    dec a
    di
    ld a, [de]
    rst $30
    inc e
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ret nz

    cp a
    ldh [$1f], a
    ldh a, [$8f]
    cp b
    and a
    db $ec
    di
    rst $10
    ld [bc], a
    nop
    dec bc
    adc h
    ld [bc], a
    nop
    inc bc
    ld e, $e1
    ccf
    rst $08
    ld a, [hl]
    sbc a
    or b
    cp a
    ldh [rSC], a
    ld b, $0f
    dec c
    rst $30
    inc e
    rst $30
    ld a, a
    db $ed
    ccf
    sbc $f3
    ccf
    push hl
    db $ed
    rst $38
    jp nc, $ec5f

    ld l, l
    ldh a, [rNR13]
    ldh [rNR51], a
    ldh [$e3], a
    ld [hl], b
    db $f4
    ldh [$a1], a
    ld l, b
    ld l, e
    di
    or a
    ret nz

    ld [c], a
    ld [hl], a
    db $fc
    cpl
    ld a, b
    rrca
    add sp, $0f
    call c, $fa1b
    dec sp
    xor $f1
    push af
    ld sp, hl
    ld a, a
    cp a
    ldh [$bf], a
    ldh [$df], a
    ld [hl], c
    xor $3b
    push af
    rra
    push af
    rra
    ei
    adc [hl]
    ld a, e
    adc $02
    nop
    ld bc, $ff80
    add b
    ld [bc], a
    nop
    rrca
    dec b
    rst $30
    rla
    rst $38
    jr jr_035_6089

    nop
    dec b

jr_035_6089:
    rlca
    ld hl, sp+$0f
    ld hl, sp-$47
    ld hl, sp+$09
    db $fc
    inc b
    db $fd
    dec b
    ld hl, sp+$69
    call c, $e45c
    and h
    ld [hl], d
    jp nc, Jump_035_4f49

    ld a, b
    adc $31
    db $fd
    add d
    ei
    ld b, c
    rst $00
    ld b, c
    ld sp, hl
    ld b, d
    jp Jump_035_7e3c


    scf
    ld [hl], h
    adc a
    adc b
    rst $38
    ldh a, [rIE]
    cp h
    ld b, e
    cp $39
    ei
    ld a, l
    ld b, a
    rst $38
    ld [$3002], a
    rrca
    dec c
    rst $30
    rra
    rst $38
    jr @+$01

    db $10
    ld [bc], a
    nop
    ld b, $21
    ld h, c
    and d
    and d
    pop hl
    ld h, c
    ld [c], a
    inc hl
    ret c

    ld e, b
    or h
    db $f4
    cp $ca
    rst $38
    ld bc, $3d01
    cp $fe
    jp nz, Jump_000_27c2

    push hl
    ld e, $7a
    ld c, $3a
    ld c, $7a
    rla
    db $fd
    rla
    db $fc
    rrca
    jr c, jr_035_613d

    ld l, b
    sbc a
    ret nc

    rst $28
    ld hl, sp-$01
    sbc b

jr_035_60f5:
    rst $38
    add b
    ld a, a
    ld h, b
    ld [bc], a
    ld b, b
    rrca
    rra
    db $fc
    ld b, $fc
    rlca
    rst $38
    inc bc
    ld [bc], a
    nop
    inc b

jr_035_6106:
    ld [hl], a
    ld a, h
    rst $38
    adc h
    ld [bc], a
    add d
    ld [bc], a
    rst $38
    ld [bc], a
    xor a
    ld [bc], a
    ld [bc], a
    cpl
    rrca
    inc c
    ld b, b
    ld [bc], a
    inc b
    rst $38
    inc b
    rst $38
    rst $38
    add hl, bc
    jr jr_035_6106

    inc l
    inc b
    nop
    rrca
    ld a, [bc]
    jr nc, jr_035_60f5

    ld e, b
    inc b
    nop
    nop
    ld hl, sp+$00
    ldh a, [rTAC]
    rst $20
    ld [$4804], sp
    nop
    ldh a, [rTAC]
    inc b
    nop
    ld [bc], a
    ld a, a
    nop
    ccf
    add b
    inc b

jr_035_613d:
    ld e, b
    nop
    ld a, a
    inc b
    rst $38
    db $fd
    rst $20
    inc l
    db $e3
    ld l, $f3
    ld d, $f1
    rla
    ld hl, sp+$0b
    db $fc
    dec b
    cp $3a
    add $7e
    rst $38
    jr jr_035_613d

    dec l
    rst $20
    dec l
    and $ae
    ld h, h
    ld l, l
    nop
    cp c
    ld [hl-], a
    rst $38
    jr nc, jr_035_61e0

    adc a
    xor b
    ccf
    ld [hl], b
    ccf
    jr nz, jr_035_61e9

    ldh a, [$8f]
    cp c
    sbc [hl]
    cp $20
    rst $28
    ld hl, $f8f1
    nop
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    jp z, $6a3f

    ccf
    ld [$4b7f], a
    cp $89
    inc b
    nop
    rlca
    ret nz

    rst $38
    ld b, b
    rst $38
    add b
    inc b
    nop
    inc c
    ld a, [c]
    db $76
    db $fc
    inc c
    ld a, [c]
    ld a, $e6
    ld [hl], $ff
    dec e
    rst $38
    ld [bc], a
    cp $0f
    rst $38
    inc de
    jr nc, jr_035_621b

    and h
    or a
    ld c, b
    ld a, l
    ld c, b
    ld e, l
    and b
    ldh [$df], a
    ld e, a
    ld h, a
    jr c, jr_035_6207

    db $fd
    ld b, a
    sub $09
    xor a
    ld bc, $836d
    ei
    adc a
    cp l
    rst $18
    jp nc, $e733

    rst $10
    cp $fb

Call_035_61bf:
    sub a
    rst $38
    ld l, h
    rst $38
    ld d, b
    rst $38
    jr nz, @+$01

    ld b, b
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    ld b, b
    inc b
    nop
    rrca
    inc b
    ld bc, $2404
    db $10
    cp $03

jr_035_61d8:
    cp $03
    rst $30
    jr jr_035_61d8

    ld a, b
    and h
    rst $18

jr_035_61e0:
    db $76
    adc e
    cp l
    db $d3
    ld a, h
    xor e
    ld sp, hl
    cpl
    dec [hl]

jr_035_61e9:
    rst $28
    rst $30
    rst $08
    ld a, a
    ret nc

    ld e, a
    rst $28
    xor a
    ldh a, [$9f]
    rst $38
    sbc a
    ldh [rIE], a
    rst $38
    ret nz

    ret nz

    ld a, a
    sbc e
    cp $53
    db $d3
    cp [hl]
    xor e
    ld a, [hl]
    xor $dd
    xor $1c
    ei

jr_035_6207:
    db $fd
    dec e
    dec de
    rst $38
    ld b, b
    rst $38
    ldh a, [rIE]
    adc b
    cp a
    call nz, $f8cf
    rst $38
    and h
    rst $28
    or d
    ld h, a
    cp d
    inc b

jr_035_621b:
    nop
    dec c
    inc bc
    inc b
    inc h
    ld de, $8504
    db $10
    inc b
    rst $38
    pop af
    cp [hl]
    rst $20
    db $ed
    or a
    ld e, l
    or l
    ld d, $de
    dec bc
    cp a
    add b
    db $fd
    sub c
    ei
    or a
    rst $38
    ccf
    rst $38
    ld [de], a
    rst $30
    ld [bc], a
    xor a
    ld [bc], a
    rra
    jp nz, Jump_000_3fc2

    ld a, a
    nop
    rst $10
    nop
    sub $e7
    rst $38
    ld b, l
    ld a, a
    dec b
    xor l
    inc bc
    jp Jump_000_1f1e


    ldh [$ef], a
    ld bc, $01f7
    rst $30
    rst $38
    ld l, $bf
    ld l, b
    rst $30
    ld c, h
    ld d, a
    db $ec
    add a
    cp h
    rrca
    ret c

    ld c, a
    ld hl, sp+$6f
    ld hl, sp+$04
    nop
    rrca
    ld a, [bc]
    inc b
    rst $38
    ldh a, [$c9]
    inc b
    adc b
    inc d
    inc b
    nop
    ld [bc], a
    nop
    rst $38
    nop
    cp e
    sub b
    cp l
    ret c

    ld a, l
    db $fd
    daa
    inc b
    add b
    ld de, $0300
    cp [hl]
    inc bc
    xor [hl]
    ld [hl], a
    ld a, h
    rst $38
    sbc b
    inc b
    nop
    dec b
    ret c

    inc b
    ret nc

    rra
    dec bc
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    dec b
    rlca
    ld hl, sp+$08
    ldh a, [rNR21]
    ldh a, [rNR14]
    rst $38
    nop
    rst $38
    ld bc, $0efe
    ldh a, [rNR11]
    db $e4
    dec h
    ret z

    jp z, $1901

    ld [bc], a
    or [hl]
    rst $38
    nop
    rst $38
    ldh [$1f], a
    db $10
    rrca
    adc b
    daa
    daa
    inc b
    ld c, h
    add b
    add c
    ld [$0548], sp
    nop
    dec b
    add b
    ld a, a
    ld b, b
    ld a, a
    ret nz

    ccf
    and b
    dec b
    nop
    rrca
    ld b, $05
    rst $38
    ld a, [c]
    ld bc, $29e1
    jp nz, $c642

    ld b, [hl]
    db $e4
    inc h
    sub $56

Call_035_62de:
    add a
    add a
    and e
    or e
    ld b, b
    ld c, b
    ld b, b
    ld d, b
    inc b
    add h
    ld [$00d8], sp
    inc h
    add b
    add b
    adc b
    adc d
    ret c

    ret c

    ld a, [hl]
    ld a, [hl]
    inc b
    call nc, $a606
    ld d, $16
    inc l
    dec l
    db $fc
    db $fd
    ld [hl], b
    ld [hl], c
    ld [bc], a
    ld a, [bc]
    ld h, l
    ld h, l
    rra
    jr jr_035_634e

    ld b, h
    daa
    inc [hl]
    inc bc
    ld a, [bc]
    ld b, c
    pop bc
    dec h
    dec h
    inc hl
    ld [hl+], a
    rst $00
    rst $00
    dec b
    ld e, [hl]
    ld c, $05
    inc c
    ld a, [bc]
    inc d
    inc d
    adc [hl]
    adc [hl]
    add a
    add a
    pop de
    ld d, c
    rst $38
    ccf
    rst $38
    dec de
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    ld a, a
    call c, $ccdc
    sbc $a4
    or [hl]
    pop bc
    jp hl


    ret nz

    ld c, l
    ret nc

    ld a, [hl]
    call $fb6f
    ei
    rst $18
    rst $18

Jump_035_633e:
    adc a
    xor a
    sub e
    db $d3
    daa
    rst $28
    rlca
    and l
    rla
    db $fc
    ld h, a
    db $ec
    adc e
    adc e
    ld h, a
    ld h, [hl]

jr_035_634e:
    rst $38
    cp $ff
    db $fc
    rst $38
    ret nz

    rst $38
    add b
    dec b
    ld d, $00
    dec b
    nop
    dec bc
    ret nz

    db $fc
    rrca
    rst $38
    inc de
    db $fc
    rlca
    ei
    rrca
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    ld [bc], a
    ccf
    ldh a, [$8f]
    ld sp, hl
    daa
    db $ed
    sub d
    rst $30
    ret c

    ld a, d
    db $dd
    ld d, l
    rst $38
    ld [c], a
    rst $38
    nop
    adc e
    ei
    add hl, de
    ld sp, hl
    ld d, $bf
    ld e, b
    ld a, a
    rst $18
    rst $30
    push de
    ld a, d
    rst $08

jr_035_638a:
    ld l, e
    call $a36d
    cp [hl]
    ld sp, $d13f
    ei
    inc [hl]
    db $fd
    or $de
    ld d, a
    cp l
    rst $20
    xor h
    ld h, a
    ld l, h
    ld hl, sp+$1f
    db $e3
    ccf
    ret z

    ld l, a
    sub e
    rst $18
    scf
    cp h
    ld [hl], a
    ld d, h
    rst $38
    adc [hl]
    rst $38
    nop
    ld a, a
    ldh [rIE], a
    sub b
    ld a, a
    ret nz

    cp a
    ldh [rIE], a
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld b, b
    dec b
    ld a, [bc]
    ld de, $0705
    rrca
    ld bc, $f80f
    inc c
    di
    dec de
    rst $30
    dec e
    db $e3
    scf
    rst $08
    ld a, e
    adc e
    call c, $df17
    jr nc, jr_035_638a

    ld b, b
    ld a, c
    add b
    ldh a, [$8f]
    rst $28
    sbc [hl]
    sbc $e7
    cp h
    and e
    db $76
    pop de
    rst $30
    jr @-$23

    inc b
    inc a
    inc bc
    rra
    db $e3
    rst $28
    ld [hl], e
    ld d, a
    dec b
    ld a, [de]
    ld [de], a
    ccf
    ldh [$3f], a
    ld h, b
    sbc a
    or b
    rst $18
    ld [hl], b
    adc a
    ret c

    dec b
    ld e, [hl]
    ld c, $fe
    inc bc
    db $fd
    rlca
    rst $38
    ld b, $05
    nop
    inc b
    call $1eef
    rst $18
    ldh a, [$f7]
    rst $30
    rra
    rst $20
    ld [hl], h
    adc a
    jp hl


jr_035_6410:
    rst $38
    pop af
    rst $38
    nop
    ld a, $f6
    jr c, jr_035_6410

    sub e
    db $d3
    adc a
    rst $38
    or a
    db $fc
    ld a, e
    adc $ff
    add [hl]
    rst $38
    nop
    add hl, sp
    ccf
    sbc b
    sbc a
    jp nc, $e3d7

    cp a
    db $db
    ld a, [hl]
    cp l
    rst $20
    rst $38
    jp Jump_000_00ff


    ld h, a
    rst $28
    ldh a, [$f7]
    rra
    rst $18
    rst $18
    ldh a, [$cf]
    ld e, h
    db $e3
    ld l, $ff
    ld e, $05
    ld b, h
    inc bc
    ret nz

    rst $38
    ret nz

    dec b
    nop
    inc b
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    cp $07
    cp $02
    rst $38
    ld bc, $0005
    ld bc, $ff01
    inc bc
    rst $38
    inc bc
    db $fd
    sub l
    ld a, h
    ld [hl], h
    inc l
    inc l
    adc d
    adc d
    and l
    and l
    dec [hl]
    dec [hl]
    ldh a, [$d0]
    rst $38
    inc c
    rst $30
    inc [hl]
    rst $00
    push bc
    adc [hl]
    adc d
    adc l
    adc l
    ld sp, $5331
    ld d, e
    ld c, h
    call z, $0005
    ld bc, $ff80
    add b
    rst $38
    ld a, b
    sbc a
    sub b
    ccf
    jr nz, @+$01

    ret nz

    dec b
    nop
    dec c
    ld bc, $33fe
    xor $3b
    or $1f
    ld a, [$d86f]
    ld a, [hl]
    ldh [$3d], a
    ld hl, sp+$1f
    dec b
    ld b, d
    inc bc
    add b
    rst $38
    or b
    rst $08
    ld hl, sp+$3f
    ldh a, [$7f]
    ret nz

    ldh a, [rNR30]
    ldh a, [rNR34]
    ldh [$3f], a
    ldh [$32], a
    ret nz

    ld a, l
    push bc
    ld a, l
    rst $38
    ld a, d
    sbc d
    jp nc, $8b0f

jr_035_64bb:
    rra
    ret nc

    rra
    ldh a, [$1f]
    ld [hl], b
    rra
    ldh a, [$1f]
    ldh a, [rIE]
    ldh a, [$cf]
    ld e, b
    rst $38
    ld [bc], a
    db $fd
    rlca
    dec b
    and d
    ld bc, $cc37
    ld a, l
    ldh a, [$3e]
    ld hl, sp+$0f
    rst $38
    nop
    rst $38
    jr nc, jr_035_64bb

    ld [hl], b
    cp a
    ldh [$7f], a
    ret c

    ld l, a
    ld hl, sp+$1f
    ldh a, [$7f]
    ldh [$f0], a
    rla
    and $3e
    rst $38
    add hl, sp
    dec b
    ld d, $03
    dec b
    ld b, c
    ld bc, $ce7f
    ld a, l
    push bc
    inc a
    ld h, h
    sbc [hl]
    jp c, $bf8f

    ret nc

    ld d, b
    db $fc
    inc a
    adc l
    rst $38
    sbc b
    ld a, [$6f65]
    ld [hl-], a
    scf
    rst $28
    rst $38
    daa
    scf
    dec [hl]
    dec a
    ld d, l
    ld e, a
    adc a
    ld sp, hl
    adc $fa
    dec a
    or l
    ld a, c
    ld a, c
    and b
    ldh [$39], a
    ld a, c
    ld b, a
    rst $00
    ld b, b
    ret nz

    db $fc
    add a
    ld sp, hl
    adc l
    ei
    ld c, $f3
    jp c, Jump_035_6c67

    add a
    db $f4
    ccf
    jr c, @+$01

    ret nz

    rra
    ldh a, [rIE]
    ldh [rTIMA], a
    nop
    rrca
    nop
    dec b
    rst $38
    push af
    ld sp, hl
    add hl, bc
    rst $30
    ld d, $ff
    add hl, de
    dec b
    ld a, [de]
    ld bc, $1705
    ld bc, $9f97
    adc b
    adc a
    rla
    rla
    or b
    or b
    jr z, jr_035_657a

    call nz, $c9d4
    ld e, c
    push bc
    push af
    ld [hl], d
    ld a, [c]
    adc c
    adc c
    ld b, l
    ld b, l
    rst $00
    rst $00
    and a
    and h
    sub a
    sub h
    dec de
    ld e, d
    rra
    rst $30
    ccf
    jr nz, @+$01

    ldh a, [rTIMA]
    ld b, d
    inc bc
    nop
    rst $38
    ld b, $fb
    ld c, $05
    inc d
    rra
    add hl, bc
    dec b
    ld e, h

jr_035_657a:
    inc bc
    inc bc
    db $fd
    rlca
    rst $38
    ld b, $05
    nop
    inc b
    inc bc
    db $db
    pop bc
    ret


    ldh [rNR42], a
    db $fc
    inc e
    ld hl, sp+$08
    cp $1e
    pop hl
    dec l
    ret nz

    ld a, a
    ld a, a
    ld [hl], b
    rra
    ret nc

    ld l, a
    ld a, b
    rrca
    ld l, a
    db $10
    rst $10
    nop
    rrca
    ld b, b
    ld b, h
    ld hl, $f721
    inc e
    rst $30
    ld a, $c1
    rst $38
    nop
    db $db
    inc h
    ld h, l
    inc a
    cp l
    ld a, l
    ld h, a
    db $fd
    add a
    dec b
    jp z, Jump_000_0504

    ld h, [hl]
    inc de
    dec b
    db $dd
    rra
    ld c, $c0
    ld c, a
    pop bc
    ld a, l
    ret nz

    ld e, a
    ldh [rNR41], a
    db $fd
    dec e
    ei
    ld a, [bc]
    rst $38
    inc e
    rst $38
    nop
    ld a, a
    ld a, [hl]
    rst $38
    ret nz

    ccf
    cp $1d
    dec e
    cp $e2
    rst $38
    rrca
    rst $38
    jr @+$01

    nop

jr_035_65dd:
    ei
    ld c, $fb
    ld c, $fb
    dec bc
    db $fc
    inc b
    rst $38
    add e
    dec b
    nop
    dec b
    ret nz

    ccf
    ld h, b
    rst $38
    ldh [rIE], a
    jr nc, @+$01

    ld [$08ff], sp
    rst $38
    nop
    ld b, b
    ld [bc], a
    inc b

jr_035_65fa:
    rst $38
    inc b
    rst $38
    or $30
    ei
    jr z, jr_035_65dd

    ld [hl-], a
    inc b
    nop
    rlca
    inc b
    rst $38
    or $01
    rst $38
    ld [bc], a
    cp $03
    rst $38
    dec b
    rst $38
    rlca
    db $fc
    rlca
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nz, jr_035_65fa

    ldh a, [$ef]
    cp h
    rst $30
    ld a, [de]
    rst $38
    ld a, [bc]
    ei
    adc [hl]
    inc b
    db $10
    rrca
    ld [bc], a
    inc b
    rst $38
    rst $30
    push af
    inc de
    ld [$f808], a
    add hl, bc
    cp $06
    rst $38
    ld bc, $01ff
    inc b
    nop
    ld [bc], a
    ld a, a
    nop
    rst $38
    add b
    rst $38
    ret nz

    ld a, a

jr_035_6641:
    ret nz

    rst $38
    ldh [$df], a
    ld [hl], b
    rst $28
    jr c, jr_035_6641

    rrca
    pop af
    rla
    ld a, [c]
    rra
    ld a, [c]
    ccf
    di
    ccf
    ld a, [c]
    ccf
    pop af
    rra
    ldh a, [rNR22]
    ld a, a
    call nz, $e4ff
    rra
    ld a, [c]
    rrca
    ld hl, sp-$01
    ld hl, sp-$01
    inc h
    rst $30
    inc c
    rst $28
    sbc h
    inc b
    ld b, b
    rrca
    dec c
    inc b
    db $10
    inc c
    rst $30
    inc e
    ei
    ld c, $fd
    rlca
    cp $03
    inc b
    ld l, d
    inc b
    ld hl, sp+$0f
    db $fc
    inc b
    push de

Jump_035_667f:
    nop
    add c
    ld a, a
    jp $e3be


    sbc $73
    rst $28
    dec sp
    ld [hl], e
    ld a, [c]
    inc bc
    ld a, [$fa1b]
    dec h
    db $fd
    ld b, e
    ld a, a
    pop bc
    rst $38
    pop bc
    rst $38
    ld b, c
    ld a, a
    inc b
    nop
    dec b
    add b
    ld a, a
    ret nz

    rra
    nop
    cp a
    ldh [rDIV], a
    and b
    rrca
    rra
    db $fc
    rrca
    ei
    rla
    db $fc
    rrca
    inc b
    sub $01
    ld bc, $03fe
    pop hl
    db $fd
    db $d3
    db $d3
    ld c, l
    db $ed
    add c
    pop af
    cp c
    db $fd
    ld b, l
    db $fd
    add e
    cp $83
    cp $8f
    add b
    rst $18
    ld [hl], b
    inc b
    ld h, d
    db $10
    rst $38
    ld a, b
    rst $38
    add h
    rst $08
    ld a, b
    cp a
    add h
    inc b
    and b
    rrca
    dec e
    cp $03
    inc b
    ld c, b
    inc d
    cp $03
    cp $02
    rst $38
    rlca
    add e
    cp d
    ld d, a
    ld d, [hl]
    ld l, l
    db $fd
    ld l, $3a
    rst $28
    ld sp, hl
    rst $28
    xor b
    rst $30
    sbc a
    ld [hl], l
    db $76
    rst $38
    and d
    or a
    ld [c], a
    ei
    ld l, [hl]
    rst $08
    db $fc
    ld a, a
    ld [hl], b
    cp a
    and b
    rst $18
    ld d, b
    rst $28
    xor b
    inc b
    and b
    rrca
    dec e
    db $fc
    ld a, [bc]
    db $fc
    ld b, h
    ei
    call c, $ffb7
    bit 7, h
    db $fc
    ccf
    rst $38
    inc bc
    rst $38
    nop
    ld a, [$9dd9]
    and e
    pop af
    db $fc
    ld h, $51
    ld sp, hl
    dec b
    dec b
    db $f4
    rst $30
    ldh a, [rIE]
    nop
    rst $30
    sbc h
    ei
    adc [hl]
    rst $38
    ld b, [hl]
    ld a, a
    ret nz

    rst $38
    ret nz

    inc b
    ld b, b
    rrca
    inc bc
    ld b, b
    ld [bc], a
    ld [$08ff], sp
    rst $38
    rst $38
    dec de
    ld bc, $0008
    dec bc
    add b
    ld [$0f00], sp
    inc e
    nop
    rst $38
    inc bc
    cp $02
    rst $38
    ld bc, $7408
    inc bc
    ld [bc], a
    cp $02
    cp $02
    rst $38
    add d
    db $fd
    ld b, l
    ld a, a
    ld c, d
    rst $30
    ld d, h
    ld a, a
    ld d, h
    rst $28
    xor c
    rst $38
    xor e
    rst $38
    add b
    ld [$003e], sp
    rst $18
    ccf
    push af
    ld h, b
    adc a
    xor a
    ccf
    ld [hl], b
    ld a, a
    ret nz

    rst $38
    nop
    rst $38
    inc e
    rst $30
    ld h, h
    rst $18
    sbc b
    ld a, a
    ld h, b
    ld [$0f3e], sp
    inc d
    dec b
    db $fd
    dec b
    rst $38
    dec b
    cp $06
    db $fd
    rlca
    db $fc
    inc b
    ld a, [$fc0b]
    inc c
    xor $2a
    db $f4
    db $76
    push bc
    ld d, l
    jp hl


    jp hl


    add b
    adc a
    ccf
    cp a
    ld c, h
    ld d, d
    cp a
    ret nz

    rst $38
    rst $00
    ld a, [$bfd8]
    or a
    cpl
    xor h
    ld b, a
    ld d, h
    rrca
    ld c, a
    sub e
    or d
    ld c, e
    db $db
    rst $38
    add $bf
    ld a, [hl-]
    rst $28
    call nz, Call_000_38ff
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    jr nc, @-$2f

    rst $18
    ld [$0f00], sp
    dec c
    push af
    rla
    push af
    rla
    ld sp, hl
    dec de
    ld sp, hl
    dec e
    pop af
    dec d
    push af
    rra
    db $f4
    ld d, $f8
    add hl, de
    ld [hl], e
    nop
    ld l, c
    add b
    call z, $cc0c
    inc c
    ld h, c
    add b
    ld [hl], e
    nop
    cp a
    ret nz

    call z, $afd2
    ld a, $a9
    ld a, c
    pop hl
    inc sp
    push hl
    cpl
    and l
    ld l, a
    and l
    dec [hl]
    ld c, c
    reti


    set 5, d
    pop af
    dec [hl]
    rst $38
    ld c, $08
    nop
    rrca
    add hl, de
    ld a, [$fe0b]
    ld c, $fd
    dec b
    ld [$0172], sp
    ld [$f1ff], sp
    ld a, a
    ld a, a
    sbc [hl]
    sbc [hl]
    ld b, b
    ld h, e
    jp hl


    db $ed
    db $db
    db $db

Jump_035_680f:
    sub a
    sub a
    rst $08
    adc $ff
    ld a, b
    sbc e
    jp c, Jump_000_3437

    ld l, a
    ld l, b
    sbc a
    sub b
    ld [$0fa8], sp
    ld d, $08
    rst $18
    rra
    ld c, h
    ld b, b
    ld [bc], a
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    rst $38
    dec d
    ld h, b
    sbc a
    ldh a, [$bf]
    ldh [$bf], a
    ldh [$09], a
    nop
    rrca
    ld d, $09
    rst $38
    or $07
    ld hl, sp+$0f
    ei
    rrca
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld bc, $01ff
    add hl, bc
    nop
    ld bc, $7f80
    ret nz

    cp a
    db $fc
    or e
    rst $38
    ld a, c
    rst $08
    ld a, c
    set 3, a
    ld a, a
    ldh [$3f], a
    rst $38
    rra
    rst $38
    ld e, $e3
    ld h, e
    ret c

    ret c

    ld a, [de]
    ld a, [de]
    ret nc

    ret nc

    rst $38
    add b
    ld a, a
    cp $17
    ld [hl], h
    rst $08
    ret c

    cpl
    ld hl, sp-$61
    call c, $b2b3
    db $db
    db $db
    add hl, bc
    nop
    rlca
    rrca
    ldh a, [$1f]
    rst $20
    ccf
    add hl, bc
    nop
    rlca
    add b
    ld a, a
    ret nz

    ccf
    ldh [$fe], a
    inc bc
    add hl, bc
    ret nz

    ld bc, $0902
    ld l, [hl]
    inc bc
    nop
    db $fd
    add l
    rst $38
    sbc a
    and $a6
    ld e, c
    reti


    ld c, e
    ld c, e
    ldh [$e0], a
    call $e04d
    jr nz, jr_035_68eb

    ld c, d
    adc a
    adc a
    ret nc

    rst $18
    ld h, b
    ld [hl], b
    ld c, [hl]
    ld h, c
    sbc a
    jp z, $cf9f

    sbc a
    sbc $a1
    and c
    sub h
    sub h
    and d
    and d
    ld e, c
    reti


    daa
    ld h, a
    ld hl, sp-$05
    add $47
    db $ed
    db $ed
    rst $08
    ld e, b
    rst $18
    ldh a, [$df]
    ld hl, sp+$5f
    ldh a, [$df]
    ret nc

    ccf
    ldh a, [$1f]
    sbc b
    ld a, a
    ld h, b
    add hl, bc
    inc l
    nop
    add hl, bc
    db $10
    ld [de], a
    sbc a
    ldh a, [$9f]
    sub b
    rst $38
    ld h, b
    add hl, bc
    nop
    dec c
    rra
    xor $2e
    push bc
    ld [hl], l
    push bc
    ld [hl], l
    sbc h
    db $fc
    cp $e2
    rst $38

jr_035_68eb:
    add c
    rst $38
    nop
    ld a, a
    ld l, e
    cp [hl]
    cp [hl]
    ld c, d
    ld c, d
    inc de
    inc de
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    ld hl, sp-$06
    ld sp, hl
    rrca
    dec b
    dec b
    ld l, d
    ld l, e
    dec h
    dec h
    ld [$980b], sp
    sbc c
    and $ee
    xor c
    db $e3
    ld c, b
    db $e3
    cp a
    or b
    xor a
    cp b
    daa
    inc l
    rst $30
    call c, $dd77
    ld [hl], e
    rst $10
    ld hl, sp-$35
    rst $38
    add a
    add hl, bc
    nop
    inc bc
    ret nz

    ccf
    ldh [$3f], a
    and b
    ld a, a
    ld b, b
    rst $38
    add b
    add hl, bc
    jr nz, jr_035_694b

    ldh [$3f], a
    rst $08
    ld a, a
    rst $08
    ld l, b
    rst $38
    jr nc, @+$0b

    nop
    ld bc, $fe01
    rst $08
    add hl, sp
    rst $38
    jp $fefb


    add hl, bc
    add e
    nop
    ld h, b
    rst $28
    sbc a
    or a
    ld a, h
    jp z, $eaf1

jr_035_694b:
    ld b, l
    xor [hl]
    ret nc

    sub d
    or l
    rst $38
    ld hl, $de6d
    sbc $b7
    db $fd
    and a
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld a, b
    ld a, a
    sub h
    sbc a
    ld [$75ef], a
    rst $38
    ld d, l
    add hl, bc
    nop
    dec bc
    add hl, bc
    ld a, a
    ld e, $02
    rst $38
    ld b, $ff
    ld [$07ff], sp
    add hl, bc
    nop
    inc b
    ld h, e

jr_035_6979:
    cp $ff
    call c, Call_035_61bf
    cp $c3
    add hl, bc
    ret z

    inc b
    ld sp, hl
    xor a
    rst $38
    and a
    rst $38
    or c
    rst $28
    dec de
    db $fd
    or $ff
    inc bc
    add hl, bc
    nop
    ld bc, $ff54
    ld [hl], a
    db $dd
    ld h, e
    rst $38
    ld a, [hl]
    rst $18
    jr nc, @+$01

    add hl, bc
    cpl
    ld bc, $c07f
    add hl, bc
    ld a, [hl]
    ld a, [de]
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    ld c, l
    dec b
    rra
    rrca
    inc c
    ei
    rlca
    rst $30
    inc b
    rst $20
    nop
    rst $38
    db $10
    db $fc
    inc hl
    ei
    daa
    rst $10
    ld l, h
    rst $08
    ld a, d
    cp a
    ret nz

    rst $18
    ld b, b
    rst $08
    nop
    rst $38
    db $10
    ld a, a
    adc b
    cp a
    ret z

    rst $10
    ld l, h
    rst $20
    cp h
    dec b
    jr nz, jr_035_69e2

    ld c, $0f
    rst $38
    db $10
    rst $38
    jr nz, jr_035_6979

    nop
    rst $38
    ld b, b
    cp $41
    reti


    ld h, a
    rst $08

jr_035_69e2:
    ld a, [hl]
    rst $38
    ld h, a
    cp b
    cp a
    adc $4f
    xor a
    ld l, c
    ld [hl], a
    push de
    rst $38
    sbc l
    cp $93
    cp $93
    rst $38
    ld [hl], a
    rst $38
    rst $18
    rst $38
    rst $18
    ld e, h
    or $5c
    ret


    ld l, [hl]
    db $f4
    ld [hl], a
    ld e, e
    ei
    adc h
    rst $38
    db $dd
    cp $f7
    cp $f7
    ld [hl], l
    rst $18
    ld [hl], l
    daa
    db $ed
    ld e, a
    call c, $beb5
    ld h, e
    rst $38
    call $fa3b
    rst $20
    db $e4
    db $eb
    inc l
    db $dd
    ld d, [hl]
    cp $73
    rst $38
    sub e
    rst $38
    sub d
    rst $38
    ldh [rIE], a
    db $10
    rst $38
    ld [$00f3], sp
    rst $38
    inc b
    rst $38
    inc b
    scf
    call z, $fce7
    rst $18
    ld [hl], l
    rst $38
    cpl
    cp $1b
    rst $38
    rlca
    dec b
    jr nz, jr_035_6a42

    adc $83
    cp [hl]
    ld h, e

jr_035_6a42:
    ld a, [hl]
    jp nz, $87ff

    ld sp, hl
    add hl, de
    and $26
    ret c

    ld e, b
    add c
    add c
    db $fc
    add a
    rst $38
    ei
    ld b, [hl]
    add $22
    ld h, e
    sub d
    or e
    ld a, d
    ld a, e
    and l
    and l
    ld c, c
    ld c, c
    ld a, [hl]
    jp $bffe


    call nz, $89c6
    adc l
    sub e
    sbc e
    cp h
    cp h
    ld c, d
    ld c, d
    dec h
    dec h
    rst $20
    add e
    ei
    adc l
    db $fc
    add a
    rst $38
    jp Jump_000_303f


    rst $08
    ret z

    scf
    inc [hl]
    inc bc
    ld [bc], a
    rst $30
    ld e, h
    rst $38
    add sp, -$01
    or b
    rst $38
    ret nz

    dec b
    jr nz, jr_035_6a8e

    ld bc, $01ff
    dec b
    ld a, d

jr_035_6a8e:
    inc d
    db $fc
    nop
    cp $03
    ld a, $3e
    db $fd
    push bc
    db $fc
    inc e
    add sp, $68
    sbc e
    db $db
    ccf
    xor h
    ld a, a
    ld c, c
    cp $83
    sub c
    sub c
    ld de, $2111
    ld hl, $6161
    pop af
    or c
    pop de
    pop de
    add hl, sp
    xor c
    db $f4
    call nc, $1212
    ld de, $0811
    ld [$0c0c], sp
    rra
    dec de
    rla
    ld d, $39
    dec hl
    ld e, [hl]
    ld d, a
    ld sp, hl
    ld sp, hl
    ld a, a
    ld b, a
    ld a, a
    ld [hl], b
    cpl
    inc l
    or e
    or [hl]
    ld sp, hl
    ld l, e
    db $fc
    inc h
    cp $83
    dec b

jr_035_6ad4:
    jr nz, jr_035_6ade

    ld a, a
    nop
    rst $38
    add b
    cp $03
    dec b
    add d

jr_035_6ade:
    dec d
    dec b
    rra
    ld bc, $87fd
    pop af
    ld bc, $0efb
    dec b
    db $f4
    db $10
    rst $38
    inc b
    dec b
    jr nz, jr_035_6af0

jr_035_6af0:
    or $1e
    rst $28
    add hl, sp
    rst $28
    jr c, jr_035_6afc

    inc b
    jr nz, @+$01

    db $10
    dec b

jr_035_6afc:
    jr nz, jr_035_6afe

jr_035_6afe:
    rst $18
    pop af
    dec b
    ld [bc], a
    ld a, [hl+]
    ld a, [hl]
    jp $011f


    cp a
    ldh [rTIMA], a
    inc h
    jr nz, @+$01

    ld b, b
    dec b
    jr nz, jr_035_6b12

    add b

jr_035_6b12:
    dec b
    jr nz, @+$0c

    ld b, b
    ld [bc], a
    inc b
    rst $38
    ld [hl], b
    rst $08
    ld a, a
    ldh a, [$3f]
    jp $857f


    rst $30
    adc c
    rst $28
    sbc c
    sbc l
    sbc e
    sbc d
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    ld b, b
    ccf
    ldh [$3f], a
    ld h, b
    rra
    jr nc, jr_035_6ad4

    cp [hl]
    sub e
    cp [hl]
    rst $38
    nop
    inc b
    jr nz, jr_035_6b4c

    inc c
    ld b, b
    cp a
    rst $20
    sbc b
    rst $38
    sub b
    cp [hl]
    ret nc

    ld e, h
    pop hl
    add hl, sp
    db $e3
    dec sp
    ld [c], a

jr_035_6b4c:
    ld a, [hl+]
    rst $38
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
    ldh [$3f], a
    ldh [$7f], a
    ld b, b
    rst $38
    ld l, h
    rst $38
    nop
    rst $38
    ld bc, $39ff
    and $2f
    db $f4
    ld d, $fc
    ld c, $f9
    dec c
    and e
    cp d
    and a
    db $e4
    ccf
    ld hl, sp+$3f
    and b
    ld a, a
    ld b, b
    inc b
    ld d, [hl]
    ld bc, $0403
    jr nz, jr_035_6b84

    rst $30
    rrca
    db $fc
    ld a, h
    cp $82

jr_035_6b84:
    inc b
    add b
    rlca
    ld hl, sp-$03
    adc [hl]
    cp [hl]
    jp $2fe3


    pop af
    rla
    ldh a, [rNR13]
    ld hl, sp+$09
    cp $0e
    pop af
    dec e
    db $e3
    ld [hl-], a
    rst $38
    inc a
    rst $38
    add b
    inc b
    ld d, b
    ld [bc], a
    ccf
    ldh [rIF], a
    ld b, d
    sbc a
    or [hl]
    adc e
    cp [hl]
    pop hl
    dec b
    di
    ld e, $f3
    ld e, $f3
    ld d, $f3
    ld d, $f1
    rla
    ld hl, sp+$0b
    ld sp, hl
    jp hl


    db $fd
    dec b
    ld a, [$fa0b]
    dec de
    ld a, [$e92b]
    ld e, c
    sub d
    di
    pop hl
    pop hl
    ld a, [hl-]
    dec sp
    rst $38
    ld bc, $1fff
    ldh [$6f], a
    add b
    cp a
    rra
    rst $18
    ld a, a
    ld a, a
    push af
    ei
    dec l
    di
    ld c, a
    ld [hl], c
    pop af
    rst $38
    ld c, $ee
    ld [bc], a
    ld a, [$f7f1]
    db $fc
    db $fd
    ld e, a
    cp a
    ld l, b
    sbc a
    rst $38
    ret nz

    ccf
    jr nz, @+$21

    db $10
    rst $28
    add sp, -$09
    inc d
    ei
    adc e
    ld a, [hl]
    add a
    push af
    adc l
    bit 7, [hl]
    bit 7, d
    rst $08
    ld l, h
    adc a
    add sp, -$61
    ret nc

    rra
    ret nc

    inc b
    halt
    sbc a
    rst $38
    sub b
    cp a
    ldh [$7f], a
    db $e3
    dec sp
    db $e4
    inc a
    rst $20
    ld [hl], a
    xor b
    ei
    sub h
    db $fc
    db $fd
    push bc
    ld a, [hl]
    ld [c], a
    dec e
    di
    dec c
    dec sp
    db $dd
    rst $18
    inc sp
    rst $30
    sbc c
    ei
    sub [hl]
    cp a
    ld e, l
    db $e3
    sbc $e0
    cpl
    jr nc, jr_035_6c87

    ld a, a
    ld b, a
    ld a, a
    jr z, jr_035_6c6b

    rst $38
    cp $09
    rst $38
    ld [hl], l
    adc a
    cp $06
    or $0e
    dec bc
    db $fd
    rst $30
    ld hl, sp-$42
    cp c
    push bc
    rst $38
    ld c, $ef
    ld h, l
    sbc l
    adc c
    ld sp, hl
    db $76
    ld [hl], a
    ld c, $0b
    sbc a
    sub a
    xor c
    cp a
    pop af
    db $fd
    dec bc
    ei
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [$7f]

Jump_035_6c5f:
    ld [hl], b
    xor a
    ld hl, sp+$2f
    cp b
    ld h, a
    ld a, h
    and e

Jump_035_6c67:
    xor $93
    or a
    ret


jr_035_6c6b:
    ld c, e
    jp hl


    ld l, e
    sub h
    rst $10
    or h
    or a
    db $f4
    rst $18
    add sp, -$42
    pop af
    dec a
    adc h
    sbc a
    ld c, b
    ld c, [hl]
    add hl, hl
    dec l
    or d
    cp [hl]
    ld a, [c]
    ei
    or d
    ld a, [$bbb3]
    ld d, d

jr_035_6c87:
    ld e, d
    ld a, [hl-]
    dec sp
    add $ff
    adc [hl]
    cp $93
    ei
    sub l
    or l
    call c, Call_035_62de
    ld h, [hl]
    ld d, e
    ld d, a
    ld [de], a
    sbc $21
    di
    dec l
    rst $28
    dec [hl]
    push af
    ld [de], a
    ld [hl], e
    adc h
    cp a
    call nz, $25de
    ccf
    dec b
    dec a
    jp nz, $22de

    ld l, $32
    cp $53
    rst $10
    ld d, e
    ld d, a
    sub c
    sub a
    jp hl


    ei
    inc de
    db $76
    sub e
    or [hl]
    sbc e
    cp [hl]
    rst $28
    db $fc
    ld c, a
    ld l, h
    ld d, e
    ld e, [hl]
    or e
    ld a, [c]
    rrca
    db $fc
    pop bc
    ld e, c
    rst $00
    ld b, a
    ld hl, sp+$39
    db $fc
    inc e
    db $e3
    cpl
    pop hl
    ld hl, $1eff
    rst $38
    nop
    and d
    cp d
    daa
    push af
    rst $00
    push af
    adc e
    xor e
    sub d
    sub e
    ld_long a, $ffea
    dec b
    rst $38
    nop
    ld sp, $3d37
    ccf
    inc hl
    ccf
    ld b, b
    rst $08
    ld b, b
    ret nz

    ld a, a
    ld a, a
    rst $20
    and l
    rst $38
    add hl, de
    and l
    or a
    ld b, l
    ld h, a
    adc b
    db $eb
    ld a, h
    push af
    cp a
    db $e3
    inc b
    halt
    rst $38
    add b
    jp z, $dd6b

    ld e, a
    ld sp, hl
    db $ed
    dec de
    ei
    rra
    inc d
    rst $38
    ldh [rDIV], a
    jr nz, jr_035_6d16

jr_035_6d16:
    add e
    adc [hl]
    ld [hl], e
    ld a, [c]
    ccf
    db $ec
    rra
    ld [hl], b
    sbc a
    or b
    sbc a
    sub b
    rst $38
    ld h, b
    rst $38
    nop
    ld b, b
    ld [bc], a
    ld b, $ff
    ld b, $ff
    rst $38
    ld c, l
    ld b, $29
    rrca
    ld d, $fd
    ld bc, $03ff
    db $fd
    ld bc, $2a06
    ld b, $7f
    nop
    rst $38
    add b
    ld a, a
    ld b, $29
    rrca
    ld h, $fb
    ld a, h
    rst $00
    ld a, [hl]

jr_035_6d48:
    pop hl
    cpl
    ldh a, [$15]
    rst $38
    ld bc, $e006
    ld bc, $fb07
    dec e
    db $eb
    ld sp, $e14f
    cp a
    add b
    ld b, $2a
    inc bc
    ret nz

    cp a
    ld [hl], b
    xor a
    jr jr_035_6d48

    rrca
    ld a, [$0603]
    ld a, [hl+]
    inc b
    cp a
    ld a, h
    rst $00
    db $fc
    rrca
    add sp, $1f
    ld d, b
    ld b, $2a
    rrca
    dec c
    ld sp, hl
    dec bc
    push af
    rrca
    db $fd
    dec b
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $30
    inc c
    db $fd
    ld [$18ef], sp
    cp a
    ret nz

    ld a, e
    cp b
    rst $00
    ld e, [hl]
    add c
    cp a
    sub b
    rst $30
    sub d
    rst $30
    add b
    rst $38
    add h
    cp a
    ei
    rlca
    cp l
    dec sp
    rst $00
    push af
    inc bc
    ld a, [$de13]
    sub e
    sbc $03
    cp $43
    ld a, [$a03f]
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    ld b, b

jr_035_6daf:
    rst $18
    ld h, b
    ld a, a
    jr nz, @-$0f

    jr nc, jr_035_6dbc

    ld a, [hl+]
    rrca
    dec c
    rst $30
    jr @-$07

jr_035_6dbc:
    jr @+$01

    db $10
    rst $38
    db $10
    di
    jr @+$01

    jr jr_035_6daf

    inc c
    db $ec
    rra
    jp $f05f


    scf
    rst $28
    rra
    cp a
    ld b, b
    cp a
    nop
    rst $38
    ld b, b
    ld e, a
    ldh [$bf], a
    ldh [$87], a
    db $f4
    rra
    ret c

    rst $28
    ldh a, [$fb]
    inc b
    ei
    nop
    ld b, $38
    db $10
    ld a, [$df0f]
    jr nc, jr_035_6df1

    ret nz

    ld [de], a
    sbc a
    jr nc, jr_035_6daf

    ld [hl], b

jr_035_6df1:
    cpl
    ld h, b
    ld l, a
    ldh a, [rTMA]
    cp b
    rrca
    ld c, $0f
    db $fd
    rlca
    rst $38
    inc bc
    cp $03
    rst $38
    ld b, $ff
    inc bc
    ld e, a
    ldh [$87], a
    add sp, $00
    ccf
    ldh [$ea], a
    ld e, a
    rst $38
    cp a
    ldh [rTMA], a
    ld a, [hl+]
    nop
    push af
    rrca
    jp $012f


    ld sp, hl
    ld c, $af
    push af
    rst $38
    ei
    ld c, $06
    inc b
    ld de, $7fe0
    ret nz

    rst $38
    add b
    ld b, $24
    ld hl, $2906
    rrca
    ld [bc], a
    ld b, b
    ld [bc], a
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    rst $38
    ld c, l
    ld a, [bc]
    ld e, a
    rrca
    ld c, l
    ld a, [bc]
    ld a, a
    rrca
    inc c
    cp $00
    db $fc
    nop
    db $fd
    nop
    db $fc
    nop
    cp $0a
    ld a, a
    nop
    ld b, $ff
    dec b
    ld a, $00
    sbc h
    nop
    ld e, l
    nop
    sbc h
    nop
    ld a, $00
    cp a
    ld [c], a
    rst $38
    ld h, e
    rst $18
    ld [hl], l
    ccf
    nop
    sbc a
    nop
    ld e, a
    nop
    sbc a
    nop
    ccf
    nop
    rst $38
    add b
    rst $38
    jr nc, @+$01

    ld d, b
    ld a, [bc]
    add b
    rrca
    ld e, $02
    rst $38
    ld bc, $0fff
    ldh a, [$1f]
    rst $38
    rrca
    rst $38
    ld bc, $4a0a
    db $10
    rst $28
    cp d
    rst $18
    ld h, c
    rst $38
    and d
    cp a
    ret nz

    cp l
    ret nz

    ld a, a
    xor b
    ld l, a
    cp d
    ld a, e
    ld a, [hl]

jr_035_6e8f:
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    ld hl, sp-$01
    add h
    rst $38
    ld hl, sp-$01
    ld b, b
    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, [bc]
    add b
    rrca
    ld d, $01
    cp $06
    ld hl, sp+$09
    pop af
    ld a, [hl-]
    rst $38
    ld bc, $03ff
    cp $0f
    ld a, [c]

jr_035_6eb1:
    ld [hl-], a
    call nz, Call_000_0de7
    or h
    ld l, c
    ld [bc], a
    rst $38
    nop
    ld a, a
    cp $7f
    rst $38
    rst $38
    ld a, a
    db $e3
    ld [hl], a
    rst $00
    ld l, h
    add $6c
    rst $00
    ld a, h
    rst $00
    ld a, h
    ld a, [bc]
    ld l, d
    db $10

jr_035_6ecd:
    rst $38
    jr nz, jr_035_6e8f

    jr nz, jr_035_6eb1

    db $10
    rst $18
    db $10
    cp a
    ld [$04e7], sp
    ld a, [bc]
    adc b

jr_035_6edb:
    ld e, $f0
    rrca
    ret nz

jr_035_6edf:
    ccf
    rst $20
    jr jr_035_6edb

    rlca
    ld a, [bc]
    add b
    ld [bc], a
    jp nz, $c7ec

    ld hl, sp+$3f
    rst $38
    nop
    rst $38
    inc e
    db $e3
    add b
    ld a, a
    ld a, [bc]
    add b
    nop
    rst $18
    ld a, [bc]
    ld a, a
    ld [bc], a
    ldh [$1f], a
    rst $38
    ld h, b
    sbc a
    cp $01
    rst $38
    nop
    rst $38
    jr c, jr_035_6ecd

    jr c, jr_035_6edf

    jr z, @-$1f

    jr nz, @-$1f

    ld a, [bc]
    sub [hl]
    ld de, $d827
    xor a
    ld a, [bc]
    ld b, c
    db $10
    rlca
    ld hl, sp+$7f
    add a
    ld hl, sp+$01
    cp $0a
    add b
    ld [bc], a
    ccf
    ret nz

    rrca
    ldh a, [$1f]
    ldh [$0a], a
    add b
    inc b
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
    sbc c
    rrca
    dec h
    ld bc, $0efe
    ldh a, [$72]
    and b
    push hl
    dec b
    sbc b
    dec b
    ld hl, sp+$07
    cp $01
    ld a, l
    nop
    ld a, l
    dec b
    sbc b
    dec bc
    add b
    dec b
    ret c

    rrca
    rrca
    rst $38
    ld bc, $02fe
    dec b
    ld b, h
    ld [de], a
    db $fd
    rlca
    db $fc

jr_035_6f5b:
    rlca
    ld b, b
    jp z, $d940

    ld b, b
    rst $18
    jr nc, jr_035_6f5b

    rra
    ld e, a
    inc h
    ccf
    ld c, c
    ld a, [hl]
    call nc, Call_000_00fc
    cp $38
    rst $38
    ld e, h
    rst $20
    cp d
    add e
    cp e
    rst $28
    ld d, h
    ld de, $2bbb
    ld e, l
    rla
    rst $38
    add b
    dec b
    ld [hl], b
    ld [de], a
    ld a, a
    ret nz

    cp a
    ldh [$df], a
    ld [hl], b
    rst $18
    ld [hl], b
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    inc bc
    dec b
    ld b, b
    db $10
    dec b
    ld [de], a
    dec de
    add b
    rst $38
    pop bc
    cp [hl]
    rst $20
    ld hl, sp+$0d
    ld hl, sp+$08
    db $f4
    inc e
    push af
    dec e
    di
    scf
    pop de
    ld [hl], c
    adc c
    jp hl


    adc c
    ret


    reti


    cp $a9
    cp $b0
    ld hl, sp-$5d
    db $fc
    ld b, e
    db $ec
    ld b, b
    ldh a, [rBGP]
    ld hl, sp-$79
    ld hl, sp-$0a
    rlca
    rst $28
    add hl, bc
    rra
    dec c
    ei
    rrca
    db $fd
    rla
    dec e
    rla
    db $fd
    daa
    rst $38
    ld [hl-], a
    rst $18
    ldh a, [$7f]
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    dec b
    ld e, $1f
    dec b
    jp c, $d27f

    ld a, d
    sub d
    sub d
    xor l
    xor a
    ei
    ld e, l
    cp $fe
    dec b
    sbc b
    nop
    add l
    add l
    ld b, e
    ld b, d
    inc hl
    inc hl
    ld e, l
    ld a, a
    cp e
    db $dd
    rst $20
    rst $20
    dec b
    sbc b
    nop
    rst $08
    ld d, b
    ld b, b
    ldh [$df], a
    pop hl
    ccf
    ld b, e
    db $fd
    cp $4f
    ld c, e
    dec b
    sbc b
    nop
    ld a, a
    ld c, b
    rst $18
    ldh a, [rIE]
    jr nz, jr_035_7011

    sub [hl]
    inc de
    dec b
    sbc c
    rrca

jr_035_7011:
    nop
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
    rst $20
    rrca
    inc de
    jr @+$01

    inc b
    rst $38
    ld [hl], a
    db $ec
    sbc [hl]
    add sp, -$62
    dec b
    ld b, b
    dec d
    jr nz, @+$01

    xor $37
    ld a, c

jr_035_7037:
    rla
    ld a, c
    dec b
    and $0f
    ld e, $03
    cp $07
    rst $38
    add hl, bc
    db $fd
    inc de
    ld sp, hl
    rla
    ld sp, hl
    rla
    di
    ld e, $f3
    ld e, $8c
    cp $de
    ld [hl], e
    ld a, a
    pop hl
    ld a, a
    call nz, $e73b
    ld e, a
    ld hl, sp-$49
    rst $38
    or $78
    ld sp, $7b7f
    adc $fe
    add a
    cp $23
    call c, $fae7
    rra
    db $ed
    rst $38
    ld l, a
    ld e, $ff
    ret nz

    ld a, a
    ldh [rIE], a
    sub b
    cp a
    ret z

    sbc a
    add sp, -$61
    add sp, -$31
    ld a, b
    rst $08
    ld a, b
    dec b
    and $0f
    dec c
    ei
    ld c, $ff
    inc b
    rst $38
    ld bc, $07ff
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    nop
    rst $38
    rra
    ldh a, [$bf]
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ld sp, $40ff
    rst $38
    nop
    rst $38
    ld hl, sp+$0f
    db $fd
    rst $38
    rst $38
    rra
    dec b
    rlca
    jr nz, jr_035_7037

    rst $38
    ld [bc], a
    rst $38
    nop
    rst $18
    ld [hl], b
    rst $38
    jr nz, @+$01

    add b
    rst $38
    ldh [rIE], a
    sub b
    rst $38
    ld b, b
    rst $38
    jr nz, jr_035_70c3

    and $0e
    ld b, b
    ld [bc], a
    dec b

jr_035_70c3:
    rst $38
    dec b
    rst $38
    rst $38
    ld c, l
    dec b
    add hl, bc
    inc b
    ld c, $f1
    rra
    ldh [$3f], a
    ldh [$3f], a
    dec b
    ld [$c007], sp
    ccf
    ldh a, [rIF]
    db $fc
    dec b
    ld [$1803], sp
    rst $38
    ld a, b
    rst $38
    add sp, -$01
    ret z

    rst $38
    inc c
    dec b
    ld [$0c05], sp
    rst $38
    rrca
    rst $38
    dec de
    rst $38
    ld de, $0805
    rlca
    inc bc
    db $fc
    adc a
    ldh a, [$bf]
    dec b
    ld [$7005], sp
    adc a
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    ldh a, [$1f]
    ldh a, [$1f]
    ld hl, sp+$0f
    db $fc
    rlca
    cp $03
    cp $03
    rst $38
    ld bc, $01ff
    inc bc
    dec b
    sub [hl]
    ld bc, $ff12
    ld hl, $40f3
    pop hl
    ld b, b
    pop hl
    ld hl, $fff3
    inc b

jr_035_7122:
    rst $38
    add h
    ld a, a
    rst $00
    inc a
    db $e4
    jr jr_035_7122

    adc b
    ld hl, sp-$76
    ld a, [$f115]
    rst $38
    jr nc, @+$01

    ld hl, $e3fe
    inc a
    daa
    jr jr_035_7159

    ld de, $511f
    ld e, a
    xor b
    adc a
    ret nz

    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld c, b
    rst $38
    add h
    rst $08
    ld [bc], a
    add a
    ld [bc], a
    add a
    add h
    rst $08
    rrca
    ld hl, sp+$0f
    ld hl, sp+$1f
    ldh a, [$3f]
    ldh [$7f], a

jr_035_7159:
    ret nz

    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    add b
    dec b
    ld [$920c], sp
    rst $38
    adc h
    rst $38
    add b
    rst $38
    rst $00
    ld a, a
    ld a, [$e43b]
    ld l, $f2
    rra
    pop hl
    ccf
    rla
    rst $30

jr_035_7175:
    jr c, jr_035_7175

    rst $10
    rst $18
    rra
    ld a, h
    sub a
    push af
    ld e, e
    rst $38
    cp h
    rst $20
    ccf
    db $e3
    add sp, -$11
    inc e
    ld a, a
    db $eb
    ei
    ld hl, sp+$3e
    jp hl


    xor a
    jp c, $3dff

    rst $20
    db $fc
    rst $00
    ld c, c
    rst $38
    ld sp, $01ff
    rst $38
    db $e3
    cp $5f
    call c, Call_035_7427
    ld c, a
    ld hl, sp-$79
    dec b
    ld a, a
    inc b
    dec b
    add hl, bc
    rrca
    ld b, $cc
    ld a, a
    rst $08
    ld a, e
    rst $38
    jr nc, @+$07

    ld [$0506], sp
    ld a, [de]
    ld de, $0905
    rlca
    dec b
    jp z, $0501

    add hl, bc
    rlca
    inc sp
    cp $f3
    sbc $05
    adc [hl]
    rlca
    dec b
    call Call_035_4d1f
    dec b
    rst $18
    dec e
    ld b, b
    ld [bc], a
    add hl, bc

jr_035_71cf:
    rst $38
    add hl, bc
    rst $38
    rst $38
    rrca
    inc bc
    cp $05
    db $f4
    rla
    di
    ld l, $e5
    add hl, sp
    ld sp, hl
    ld [de], a
    db $fc
    rra
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $18
    ld d, b
    sbc a
    add sp, $47
    jr nc, jr_035_726d

    ret nc

    rst $38
    ld [hl], b
    add hl, bc
    nop
    rrca
    db $10
    add hl, bc
    rst $38
    rst $38
    ld a, [bc]
    rst $30
    inc l
    jp z, $f511

    ld l, $fa
    rla
    push hl
    ld [$0bfe], sp
    di
    ld b, $ff
    dec b
    rra
    xor b
    ld h, a
    ret nc

    sbc a
    jr z, jr_035_71cf

    ret nc

    adc a
    ldh [$7f], a
    jr nz, @-$5f

    ret nz

    rst $38
    ld b, b
    add hl, bc
    ld b, b
    rrca
    inc l
    ld bc, $03f9
    cp $09
    pop hl
    ld bc, $02ff
    rst $38
    ld [hl], d
    db $fd
    adc [hl]
    db $fd
    ld b, [hl]
    ccf
    add b
    rst $38
    add hl, bc
    pop af
    inc b
    sbc h
    ld a, a
    ld [c], a
    rst $38
    ld b, l
    add hl, bc
    xor d
    rrca
    inc hl
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    ld [$1ef1], sp
    ld hl, sp-$75
    db $f4
    ld a, b
    sub $d9
    ld [hl], e
    rst $38
    rst $38
    db $fc
    rst $28
    dec sp
    rst $30
    rra
    ld hl, sp+$0f
    cp a
    ld [hl+], a
    rra
    ld a, h
    rla
    rst $30
    sbc l
    cp $ff
    ld a, a
    rst $28
    cp b
    rst $18
    ldh a, [$3f]
    ldh [$09], a
    nop
    inc bc
    add hl, bc
    pop af
    nop
    ld b, b
    rst $38

jr_035_726d:
    jr nz, jr_035_728e

    ldh a, [$09]
    nop
    rrca
    dec c
    ldh a, [$1f]
    add hl, bc
    sub b
    db $10
    ld hl, sp+$0f
    rst $38
    rlca
    add hl, bc
    ld [hl-], a
    ld de, $7807
    adc b
    ccf
    rst $00
    inc e
    rst $20
    inc e
    db $e4
    rrca
    di
    or $fb
    ld c, d

jr_035_728e:
    adc $e7
    rst $20
    inc a
    inc hl
    ld hl, sp-$39
    ld [hl], b
    rst $08
    ld [hl], b
    ld c, a
    pop hl
    sbc a
    rst $18
    cp [hl]
    and l
    rst $20
    rst $08
    rst $08
    add hl, bc
    sub c
    ld de, $5d09
    db $10
    ret nz

    add hl, bc
    nop
    ld bc, $c909
    ld [de], a
    add hl, bc
    rst $38
    rst $38
    ld [$07fc], sp
    cp $07
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    ld a, [hl]
    rst $38
    ld a, a
    add hl, bc
    nop
    nop
    inc e
    call c, $8b0b
    inc e
    call c, $0b0f
    ccf
    jr c, @+$0b

    ret z

    ld [de], a
    ld [hl], b
    ld [hl], a
    and b
    and e
    ld [hl], b
    ld [hl], a
    ldh [$a1], a
    ld hl, sp+$38
    add hl, bc
    sbc b
    ld de, $7f00
    ret nz

    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    rst $38
    db $fc
    add hl, bc
    nop
    rrca
    ld bc, $0240
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
    ld l, e
    ld b, $01
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    rlca
    cp $18
    rst $20
    ld h, b
    ei
    add b
    db $fd
    nop
    call z, $d931
    daa
    rst $38
    nop
    rst $38
    db $fc
    db $db
    inc bc
    ld l, l
    nop
    ld l, l
    nop
    inc bc
    ld l, b
    ld a, b
    ld a, [hl]
    rst $38
    add a
    dec b
    ld l, d
    inc bc
    ret nz

    ld a, a
    jr nc, jr_035_73a6

    jr z, jr_035_73a8

    call nz, $e49f
    dec b
    ld l, d
    rrca
    ld c, $04
    dec b
    jr nz, jr_035_7344

    db $fd
    ld b, $ff
    inc bc
    rst $38
    ld bc, $6a05
    nop
    di
    ld e, $f7
    inc e
    rst $30
    inc a
    rst $10

jr_035_7344:
    ld e, h
    sub a
    sbc h
    ld e, a
    ld e, b
    rst $38
    jr nc, jr_035_7351

    ret z

    ld bc, $4105
    inc d

jr_035_7351:
    dec b
    ld l, e
    ld bc, $e21f
    rrca
    ld a, [c]
    dec b
    ld d, d
    ld [de], a
    adc a
    db $fc
    rst $38
    db $f4
    dec b
    cp $0f
    db $10
    dec b
    pop bc
    add hl, bc
    cp $05
    rst $08

jr_035_7369:
    inc bc
    ei
    ld h, b
    ret z

    add e
    db $e3
    rrca
    cpl
    inc e
    rst $18
    db $10
    rst $38
    nop
    rst $38
    pop af
    rst $18
    rrca
    ld d, a
    ld [bc], a
    ld b, $52
    and $f5
    db $fc
    add hl, de
    db $f4
    ld [hl-], a
    adc a
    adc b
    sbc a
    ld l, b
    rra
    ld l, b
    rra
    sbc b
    rra
    rst $30
    dec [hl]
    ld h, b
    dec h
    or b
    ld [hl], b
    db $fd
    rst $38
    inc bc
    rst $38
    inc b
    cp $04
    db $fd
    dec b
    jp $c410


    cp [hl]
    jr c, @+$6c

    ld bc, $80ff
    rst $38

jr_035_73a6:
    ld b, b
    ld a, a

jr_035_73a8:
    jr nz, jr_035_7369

    jr nz, jr_035_73eb

    ld h, b
    cp a
    jr nz, jr_035_742f

    ret nz

    ld a, a
    ld b, b
    rst $38
    ld [bc], a
    cp $05
    add hl, hl
    inc de
    dec b
    ld l, d
    ld [bc], a
    rst $18
    ld de, $0ebe
    ld [hl], $80
    sub [hl]
    and b
    ldh [rPCM12], a
    rst $38
    rra
    dec b
    ld l, d
    nop
    ldh a, [$c7]
    pop de
    dec bc
    jp $0f1a


    call c, $f0ff
    dec b
    ld l, d
    ld [bc], a
    cp $8f
    dec b
    db $e4
    jr @+$01

    nop
    inc l
    ld b, c
    add e
    rst $28
    rst $38
    ld a, h
    dec b
    ld l, d
    rlca
    add b
    dec b
    ld l, d

jr_035_73eb:
    ld a, [bc]
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
    inc b
    ld a, a
    rrca
    dec bc
    ld bc, $00c7
    sub e
    nop
    cp e
    db $10
    sub e
    nop
    rst $00
    nop
    rst $38
    db $10
    adc a
    ld [$f7e7], sp
    inc b
    ldh [rTAC], a
    ld h, b

jr_035_7411:
    cp a
    ldh [$3f], a
    or b
    inc b
    cp d
    rrca
    inc de
    rst $38
    ld bc, $2004
    inc d
    ld a, [$fc1b]
    cpl
    ld hl, sp-$17
    ret z

    ld a, $f0

Call_035_7427:
    rst $10
    ldh a, [$b1]
    ld hl, sp+$68
    rst $38
    xor a
    db $10

jr_035_742f:
    ei
    jr z, jr_035_7411

    ld b, $0f
    ld h, c
    sub l
    ld h, b
    sbc b
    nop
    ret nz

    inc bc
    inc bc
    db $fc
    rst $38
    ld c, a
    ld hl, sp+$0f
    ret z

    ld b, a
    xor $c1
    ei
    ld b, c
    ld h, a
    add c
    push hl
    ld [bc], a
    rst $38
    add l
    ld a, a
    rst $38
    inc sp
    rst $38
    dec l
    rst $38
    ld a, [hl+]
    rst $38
    ld h, a
    rst $38
    add b
    db $eb
    rst $30
    rst $38
    cp h
    rst $38
    ld l, b
    inc b
    ld a, [hl]
    dec b
    add b
    rst $38
    add b
    inc b
    ld a, [hl]
    rrca
    ld bc, $1ffc
    ld_long a, $ff0f
    rlca
    inc b
    inc h
    ld de, $2704
    ld de, $fc03
    inc b
    ld a, [hl]
    inc b
    ld a, a
    add b
    cp [hl]
    pop bc
    rst $38
    ld a, a
    pop bc
    dec a
    ldh [$37], a
    ldh [$3e], a
    and b
    ld a, e
    ret nz

    ld [hl], h
    ld b, c
    db $fd
    add c
    di
    ld [bc], a
    rst $38
    ld l, a
    sbc b
    rst $38
    ldh a, [rDIV]
    ld a, b
    ld de, $ff80
    ret nz

    ccf
    ldh [$df], a
    ldh a, [rDIV]
    ld a, [hl]
    rrca
    dec e
    ret nz

jr_035_74a2:
    ld a, a
    rst $38
    ld b, b
    rst $18
    ld h, b
    rst $28
    jr nc, jr_035_74a2

    rra
    rst $38
    rlca
    inc b
    ld a, [hl]
    nop
    add l
    ld l, a
    pop bc
    ccf
    db $e3
    ld e, $8f
    ld a, h
    ccf
    ldh a, [rIE]
    ret nz

    inc b
    ld a, [hl]
    ld bc, $ff30
    db $10
    inc b
    ld a, [hl]
    rrca
    add hl, bc
    ld b, b
    ld [bc], a
    ld [$08ff], sp
    rst $38
    rst $38
    ld c, l
    ld [$0f5f], sp
    ld c, l
    ld [$0f79], sp
    dec b
    ld b, $fd
    dec b
    cp $02
    rst $38
    ld bc, $7808
    add hl, bc
    add a
    ld a, b
    ld a, b
    ld [$0778], sp
    ld bc, $c2fe
    dec a
    dec a
    ld [$0578], sp
    ret nz

    ld a, a
    ld b, b
    rst $38

jr_035_74f2:
    add b
    ld [$0f78], sp
    ld a, [bc]
    inc bc

jr_035_74f8:
    rst $38
    rlca
    rst $38
    ld b, $08
    ld a, b
    ld bc, $f80f
    jr jr_035_74f2

    cpl
    rst $18
    pop de
    cp a
    and c
    rst $38
    ld [hl], c
    sbc a
    sbc a
    ret nz

    ld b, b
    adc b
    adc b
    add a
    add a
    ret nz

    ret nz

    ld h, b
    and b
    jr nz, jr_035_74f8

    ldh a, [$f0]
    di
    ld a, [c]
    rlca
    inc b
    inc hl
    inc hl

jr_035_7520:
    jp nz, $07c2

    rlca
    dec c
    dec bc
    add hl, bc
    rrca
    rra
    rra
    ld [$0178], sp
    ldh [$3f], a
    jr nc, jr_035_7520

    add sp, -$09
    rla
    ei
    dec bc
    rst $38
    inc e
    ld [$0778], sp
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld [bc], a
    ld [$0a78], sp
    cp $37
    ld hl, sp+$6f
    ldh a, [$1f]
    pop af
    rra
    pop af
    rra

jr_035_754f:
    ld hl, sp+$0f
    db $fc
    rlca
    ei
    dec bc
    jr jr_035_754f

    scf
    rst $38
    ld a, e
    rst $38
    ld c, h
    rst $08
    di
    di
    call z, Call_000_33cc
    di
    adc h
    db $fc
    jr nc, jr_035_75a6

    ret c

    rst $38
    cp h
    rst $38
    ld h, l
    rst $20
    sbc a
    sbc a
    ld h, [hl]
    ld h, a
    sbc b
    sbc a
    ld h, e
    ld a, a
    rst $38
    ret c

    ccf
    db $ec
    rra
    ldh a, [$08]
    call nz, Call_000_3f10
    ldh [$7f], a
    ret nz

    cp a
    and b
    ld [$1f0c], sp
    inc c
    nop
    ei
    ld a, [bc]
    rst $38
    ld e, $f1
    rra
    ld sp, hl
    ccf
    ret nz

    ld a, a
    rst $38
    ld a, a
    ld [$0078], sp
    di
    ld [hl], e
    db $fc
    inc a
    di
    inc de
    db $fc
    inc c
    rst $38
    add e
    ld [$120c], sp
    sbc a

jr_035_75a6:
    sbc h
    ld a, a
    ld a, b
    sbc a
    sub c
    ld a, a
    ld h, c
    cp $83
    rst $38
    inc bc
    ld [$0078], sp
    cp a
    and b
    rst $38
    ld [$10c7], sp
    ld hl, sp+$07
    db $fc
    rst $38
    db $fc
    ld [$0f78], sp
    ld bc, $0240
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
    inc b
    cp a
    rrca
    ld c, l
    inc b
    rst $18
    rrca
    dec bc
    ld b, $ff
    nop
    rst $38
    inc e
    rst $28
    ld a, [hl-]
    rst $18
    ld [hl], c
    rst $38
    ld h, b
    rst $38
    inc bc
    rst $38
    dec b
    db $fc
    ccf
    rst $38
    nop
    rst $38
    rlca
    cp $0b
    rst $38
    ld de, $e0ff
    rra
    ld hl, sp+$1f
    db $f4
    and a
    db $fd
    inc b
    sbc $01
    add b
    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ret nz

    cp a
    ldh [rDIV], a
    sbc $0f
    ld [bc], a
    ld bc, $02ff
    inc b
    sbc $04
    ei
    rrca
    rst $30
    dec e
    xor $bf
    rst $18
    rst $38
    db $fd
    ld [hl], a
    db $dd
    ld [hl], a
    sbc $73
    cp a
    db $e3
    xor $ff
    di
    rst $38
    cp [hl]
    cp $ed
    rst $38
    db $fd
    rst $38
    ld e, [hl]
    rst $38
    or e
    rst $38
    ldh [rIE], a
    xor a
    ei
    rra
    or $ef
    db $ec
    rla
    rra
    rla
    ld e, $af
    cp [hl]
    cp a
    or e
    ld a, a
    pop bc
    rst $18
    ld [hl], b
    rst $28
    ld a, e
    rst $10
    cp $df
    db $fc
    rst $28
    jr c, @+$06

    ret z

    db $10
    rst $30
    call c, Call_035_6004
    ld [de], a
    inc b
    sbc $0b
    inc bc
    inc b
    add [hl]
    ld d, $bf
    pop hl
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    ld bc, $01ff
    rst $38
    rlca
    inc b
    sbc $00
    ld d, b
    rst $38
    ld l, a
    rst $38
    ld a, a
    db $fc
    ld a, a
    ret nz

    inc b
    call nc, $0415
    push af
    ld [de], a
    ld bc, $de04
    inc b
    ld [hl], a
    call c, $cc7f
    ld a, a
    rst $00
    ld a, a
    pop bc
    rst $38
    ret nz

    rst $38
    ld [hl], b
    inc b
    sbc $0f
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

Jump_035_777f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_035_7ab3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_035_7e1d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_035_7e3c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_035_7efc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_035_7f73:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
