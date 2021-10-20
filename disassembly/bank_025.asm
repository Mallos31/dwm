; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $025", ROMX[$4000], BANK[$25]

    dec h
    dec sp
    ld b, b
    db $db
    ld b, d
    add l
    ld b, e
    ld [hl], $44
    adc l
    ld b, [hl]
    ld c, d
    ld b, a
    dec bc
    ld c, b
    db $ed
    ld c, d
    push bc
    ld c, e
    ld c, [hl]
    ld c, [hl]
    dec h
    ld c, a
    nop
    ld d, b
    ld c, e
    ld d, l
    ld a, a
    ld d, [hl]
    or h
    ld d, a
    call nc, $e75c
    ld e, l
    db $fc
    ld e, [hl]
    jr nc, jr_025_408c

    ld d, [hl]
    ld h, [hl]
    ld a, [hl]
    ld h, a
    db $d3
    ld l, b
    nop
    ld l, h
    adc a
    ld l, h
    cp h
    ld l, a
    ld d, c
    ld [hl], b
    ldh a, [rSVBK]
    rla
    ld [hl], h
    db $db
    ld [hl], h
    nop
    ld [$800b], sp
    cp a
    adc b
    or d
    ld b, b
    ld e, h
    ld b, b
    call z, Call_025_5360
    adc b
    cp a
    sub b
    sbc [hl]
    ldh [$e6], a
    nop
    inc sp
    nop
    jp $e800


    ld b, b
    xor a
    ld h, $d9
    inc b
    ei
    inc h
    xor d
    nop
    and $00
    ld a, [hl-]
    nop
    call c, $7588
    add hl, de
    and h
    jr nc, @+$4d

    jr z, jr_025_40c1

    inc b
    ld [$e600], a
    ld bc, $49e9
    sub l
    ld a, [bc]
    ld d, [hl]
    ld b, $0f
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    ld d, [hl]
    ld bc, $01fd
    ld a, e
    add b
    sbc [hl]
    add b
    cp a
    sub b
    adc a
    ld b, b
    ld a, h
    ld b, b
    db $d3
    ld b, b
    ld l, h
    add b
    cp [hl]

jr_025_408c:
    add b
    sbc a
    rst $38
    dec bc
    ld d, b
    dec bc
    ld bc, $0179
    db $fd
    add hl, bc
    pop af
    ld [bc], a
    ld a, $02
    rlc d
    ld [hl], $01
    ld a, l
    ld bc, $81f9
    xor [hl]
    adc b
    cp e
    ret nz

    db $dd
    add b
    adc a
    ld b, b
    ld e, a
    ld h, b
    rst $28
    ld b, b
    ld b, e
    add b
    sbc c
    ld bc, $0074
    cp l
    nop
    rst $38
    nop
    db $ed
    nop
    rst $38
    nop
    cp a
    ld [$00d7], sp

jr_025_40c1:
    ld sp, hl
    add c
    ld [hl], l
    ld de, $03dd
    cp e
    ld bc, $02f1
    ld a, [$f706]
    ld [bc], a
    jp nc, $b901

    pop hl
    db $ed
    ld e, $5e
    inc b

jr_025_40d7:
    push hl
    ld c, b
    or d
    jr nc, jr_025_412b

    db $10
    cpl
    nop
    cp [hl]
    nop
    and $f6
    or $09
    ld a, e
    nop
    ld hl, sp+$00
    call c, Call_000_2e11
    inc e
    ld h, e
    jr jr_025_40d7

    ld [$5ad6], sp
    ld e, d
    ld c, [hl]
    ld c, [hl]
    ld h, [hl]
    ld h, [hl]
    daa
    daa
    inc hl
    inc hl
    ld hl, $7621
    db $76
    adc c
    xor c
    ld b, a
    ld b, a
    ld l, l
    ld l, l
    cp d
    cp d
    sub e
    sub e
    xor l
    xor l
    ld b, e
    ld b, e
    dec bc
    db $fc
    ldh a, [$0b]
    ret nc

    nop
    ld a, [hl-]
    ld a, [hl-]
    inc sp
    inc sp
    call $03cd
    inc bc
    dec bc
    db $fc
    ldh a, [$df]
    rst $18
    ld c, d
    ld c, d
    and $e6
    and l
    and l
    add hl, de
    add hl, de
    and $e6

jr_025_412b:
    dec bc
    db $fc
    ldh a, [$b0]
    db $f4
    sbc b
    cp b
    ld d, h
    ld d, h
    ld d, [hl]
    sub $b2
    ld [hl-], a
    and d
    ld [hl+], a
    inc hl
    and e
    ld [hl], e
    di
    ld l, c
    ld l, c
    ld c, l
    ld c, l
    ld b, l
    push bc
    ld b, a
    rst $00
    inc hl
    and e
    xor e
    ld l, e
    xor c
    ld l, c
    jp hl


    add hl, hl
    ld d, l
    push de
    or a
    or a
    or [hl]
    or [hl]
    ld l, [hl]
    xor $4c
    ld c, h
    sub h
    sub h
    sub [hl]
    sub [hl]
    ld a, c
    ld a, c
    sub l
    rst $10
    sbc c
    cp l
    ld d, d
    ld d, d
    ld d, d
    ld d, e
    dec [hl]
    inc [hl]
    dec h
    inc h
    inc h
    dec h
    db $76
    ld [hl], a
    ld l, [hl]
    ld l, [hl]
    jp z, Jump_025_42ca

    ld b, e
    ld h, d
    ld h, e
    inc h
    dec h
    dec l
    ld l, $8d
    adc [hl]
    rst $08
    call z, Call_025_6667
    ld h, l
    ld h, l
    dec [hl]
    dec [hl]
    ld [hl], $37
    ld [hl], d
    ld [hl], d
    reti


    reti


    reti


    reti


    adc $ce
    sub b
    call nc, $020b
    ld de, $3256
    ld [hl-], a
    ld d, d
    ld d, d
    ld c, e
    ld c, e
    ld l, e
    ld l, e
    cp c
    cp c
    db $dd
    db $dd
    ld c, l
    ld c, l
    ld l, a
    ld l, a
    cp e
    cp e
    sbc c
    sbc c
    sbc l
    sbc l
    dec [hl]
    dec [hl]
    ld [hl], $36
    inc sp
    inc sp
    ld [hl], e
    ld [hl], e
    ld l, c
    ld l, c
    cp c
    cp c
    xor l
    xor l
    xor $ee
    rst $08
    rst $08
    dec bc
    ldh [$0c], a
    ld [hl], $b6
    ld b, b
    ld e, l
    add b
    or c
    add b
    adc h
    ld c, h
    ld d, d
    ld h, c
    db $fd
    ld c, h
    ld c, l
    adc b
    sub e
    cp b
    cp e
    adc d
    ld d, d
    ld bc, $218d
    ld d, c
    add d
    ld [hl], d
    ld a, [bc]
    ld l, e
    ld [hl-], a
    or d
    ld bc, $0bd9
    and b
    rst $38
    ld c, l
    dec bc
    rra
    cpl
    ld c, l
    dec bc
    ld a, a
    cpl
    ld c, l
    dec bc
    rst $18
    cpl
    ld c, l
    dec bc
    ccf
    ccf
    ld c, l
    dec bc
    sbc a
    ccf
    ld c, l
    dec bc
    rst $38
    ccf
    ld c, l
    dec bc
    ld e, a
    ld c, a
    ld c, l
    dec bc
    ret nz

    rst $38
    dec l
    xor a
    ld d, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, e
    add h
    add h
    ld a, e
    jp nc, $b92d

    ld b, [hl]
    ld [hl], e
    adc h
    adc c
    db $76
    ld h, a
    sbc b
    ld a, b
    add a
    ld a, a
    add b
    dec a
    jp nz, $7f80

    db $dd
    ld [hl+], a
    sbc l
    ld h, d
    ld [hl], e
    adc h
    or b
    ld c, a
    adc $31
    ld e, [hl]
    and c
    inc h
    db $db
    ld a, b
    add a
    or a
    ld c, b
    adc a
    ld [hl], b
    db $dd
    ld [hl+], a
    jr @-$17

    db $dd
    ld [hl+], a
    add sp, $17
    rst $20
    jr @-$1f

    jr nz, jr_025_425e

    pop hl
    db $fc
    inc bc
    and b
    ld e, h
    ld h, e
    sub e
    rra
    rst $18
    cp a
    ld a, a
    cp a
    ccf
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld de, $e32e
    db $e4
    ld hl, sp-$05
    db $fd
    cp $fd
    db $fc
    db $fc

jr_025_425e:
    db $fd
    cp $ff
    cp $fe
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    cp a
    cp a
    ccf
    sbc a
    ld e, a
    ld c, a
    xor a
    and e
    ld e, e
    adc h
    ld [hl], d
    cp $fe
    cp $ff
    cp $ff
    db $fc
    db $fd
    db $fd
    cp $f9
    ld a, [$ede2]
    inc e
    inc hl
    dec bc
    and b
    ld c, a
    ld c, l
    dec bc
    rst $18
    ld e, a
    ld c, l
    dec bc
    ccf
    ld l, a
    ld c, l
    dec bc
    sbc a
    ld l, a
    ld c, l
    nop
    rst $38
    rra
    pop hl
    ld hl, $00de
    add e
    ld a, b
    ld a, c
    db $fc
    db $fd
    db $fd
    call nz, $b9c4
    ld bc, $c1fd
    db $dd
    ld [c], a
    xor $ea
    ld h, [hl]
    push hl
    ld l, c
    push hl
    ld l, e
    push bc
    rlc l
    dec de
    add b
    ld h, d
    adc [hl]
    ld c, l
    sbc h
    ld e, d
    sbc h
    ld e, d
    ld e, h
    sbc e
    ld e, $dd
    rrca
    xor $00
    rst $38
    adc l
    ld [hl], l
    db $fd
    adc l
    db $fc
    cp $78

Jump_025_42ca:
    ld a, d
    ld bc, $1107
    rst $28
    pop hl
    dec e
    ld bc, $0bfd
    and c
    ld l, a
    ld c, l
    dec bc
    sbc a
    ld a, a
    ld c, l
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $5006
    ld d, c
    ld [bc], a
    ld [bc], a
    ld b, $00
    ld bc, $0108
    ld [$0208], sp
    db $f4
    ld hl, sp+$08
    add hl, bc
    ld d, d
    ld d, e
    ld [bc], a
    ld [hl+], a
    ld b, $10
    ld d, $16
    ld d, $07
    ld bc, $f402
    db $fc
    ld a, [de]
    ld a, [bc]
    dec bc
    dec de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld de, $1717
    rla
    inc b
    ld [bc], a
    inc de
    dec c
    db $10
    ld d, $16
    inc de
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [de], a
    inc c
    inc c
    inc c
    ld [bc], a
    ld [hl-], a
    ld c, $11
    rla
    rla
    inc d
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld d, d
    ld c, $12
    inc c
    jr @+$17

    ld [bc], a
    ld [hl+], a
    ld b, $02
    ld [hl-], a
    ld c, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, h
    inc b
    ld [bc], a
    ld d, d
    ld c, $02
    jr z, jr_025_4340

    ld [bc], a
    ld h, a
    ld bc, $b202

jr_025_4340:
    rrca
    dec b
    ld [bc], a

Call_025_4343:
    add h
    inc b
    ld [bc], a
    jp nc, Jump_000_050f

    ld [bc], a
    and h
    inc b
    ld [bc], a
    or d
    rrca
    dec b
    ld [bc], a
    adc d
    rrca
    rlca
    ld [bc], a
    ld h, d
    ld a, [de]
    ld [bc], a
    or d
    rrca
    ld bc, $4402
    ld b, $02
    ret nc

    rrca
    inc bc
    inc b
    ld [$0601], sp
    ld [bc], a
    xor d
    rrca
    inc b
    ld [$0a0b], sp
    dec bc
    ld a, [bc]
    ld [$0801], sp
    ld bc, $c202
    db $10
    ld [bc], a
    jp nz, $0110

    ld [bc], a
    inc de
    add hl, bc
    ld d, $02
    ldh [$1f], a
    nop
    ld [bc], a
    and b
    ld hl, sp+$00
    ld [bc], a
    ld [bc], a
    ld bc, $5006
    ld d, c
    ld [bc], a
    ld [bc], a
    ld b, $00
    ld bc, $0108
    ld [$0208], sp
    db $f4
    ld hl, sp+$08
    add hl, bc
    ld d, d
    ld d, e
    ld [bc], a
    ld [hl+], a
    ld b, $10
    ld d, $16
    ld d, $07
    ld bc, $f402
    db $fc
    ld a, [de]
    ld a, [bc]
    dec bc
    dec de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld de, $1717
    rla
    inc b
    ld [bc], a
    inc de
    dec c
    db $10
    ld d, $16
    inc de
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [de], a
    inc c
    inc c
    inc c
    ld [bc], a
    ld [hl-], a
    ld c, $11
    rla
    rla
    inc d
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld d, d
    ld c, $12
    inc c
    jr @+$17

    ld [bc], a
    ld [hl+], a
    ld b, $02
    ld [hl-], a
    ld c, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, h
    inc b
    ld [bc], a
    ld d, d
    ld c, $02
    jr z, jr_025_43ea

    ld [bc], a
    ld h, a
    ld bc, $b202

jr_025_43ea:
    rrca
    dec b
    ld [bc], a
    add h
    inc b
    ld [bc], a
    jp nc, Jump_000_050f

    ld [bc], a
    and h
    inc b
    ld [bc], a
    or d
    rrca
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl], b
    ld [hl], c
    ld [bc], a
    jp nc, Jump_000_050f

    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [hl], d
    ld [hl], e
    ld [bc], a
    or d
    rrca
    ld bc, $4402
    ld b, $02
    ret nc

    rrca
    inc bc
    inc b
    ld [$0601], sp
    ld [bc], a
    xor d
    rrca
    inc b
    ld [$0a0b], sp
    dec bc
    ld a, [bc]
    ld [$0801], sp
    ld bc, $c202
    db $10
    ld [bc], a
    jp nz, $0110

    ld [bc], a
    inc de
    add hl, bc
    ld d, $02
    ldh [$1f], a
    nop
    ld [bc], a
    and b
    ld hl, sp+$00
    ld [$7f05], sp
    ld a, a
    rst $28
    add b
    ret z

    and a
    add b
    add b
    ld sp, hl
    add h
    pop bc
    cp h
    pop bc
    cp h
    add b
    add b
    rst $38
    rst $38
    rst $08
    jr nz, jr_025_4456

    rst $20
    nop
    nop
    ld sp, hl
    inc b
    ld bc, $01fc

jr_025_4456:
    db $fc
    nop
    nop
    cp $fe
    db $cd, $23, $09
    rst $20
    ld bc, $f301
    add hl, bc
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    ld bc, $cf01
    and b
    adc b
    rst $20
    adc b
    rst $20
    add b
    add b
    ld hl, sp-$7a
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    add b
    add b
    dec b
    ld [de], a
    nop
    dec b
    inc d
    nop
    db $fc
    ld [bc], a
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    nop
    nop
    rst $08
    ld hl, $e709
    dec b
    inc h
    nop
    rst $38
    ld bc, $7f81
    add c
    ld a, a
    ld bc, $fe01
    add c
    ret nz

    cp a
    dec b
    ld c, $00
    add b
    cp $80
    ret nz

    add b
    ret nz

    rst $38
    rst $38
    ld a, a
    nop
    ld b, b
    ccf
    dec b
    ld h, h
    ld [$037d], sp
    ld b, c
    ccf
    add c
    add c
    rst $38
    rst $38
    add c
    rst $38
    add c
    pop bc
    add c
    pop bc
    rst $38
    rst $38
    adc b
    rst $28
    adc b
    call z, $cc88
    dec b
    ld h, [hl]
    ld b, $08
    rst $28
    ld [$080c], sp
    inc c
    dec b
    ld h, [hl]
    ld b, $09
    rst $28
    add hl, bc
    dec c
    add hl, bc
    dec c
    dec b
    add [hl]
    ld b, $05
    cp [hl]
    inc c
    nop
    dec b
    rst $08
    dec bc
    dec b
    rst $08
    inc c
    dec b
    rst $28
    db $fd
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

jr_025_44ed:
    sbc a
    ld h, b
    rst $20
    jr jr_025_44ed

    inc b
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$05
    inc h
    db $10
    dec sp
    call nz, $c03f
    ld a, a
    add b
    db $fd
    ld [bc], a
    rst $38
    nop
    dec b
    jr nc, jr_025_4529

    dec b
    rst $08
    inc b
    di
    inc c
    rst $28
    db $10
    dec b
    rst $08
    ld [$7f80], sp
    ldh [$1f], a
    ldh a, [rIF]

jr_025_4529:
    adc $31
    cp a
    ld b, b
    dec b
    rst $08
    ld [bc], a
    dec b
    ld [bc], a
    inc d
    dec b
    ld e, b
    inc d
    dec b
    rst $08
    nop
    ld sp, hl
    ld b, $f0
    rrca
    adc a
    ld [hl], b
    dec b
    rst $08
    inc b
    ccf
    ret nz

    inc bc
    db $fc
    dec b
    ret nc

    ld [$fe01], sp
    rlca
    ld hl, sp-$47
    ld b, [hl]
    cp $01
    dec b
    rst $08
    ld [bc], a
    cp [hl]
    ld b, c
    sbc l
    ld h, d
    dec b
    add h
    db $10
    ret c

    daa
    cp $01
    ld hl, sp+$07
    ret nz

    ccf
    dec b
    sub b
    db $10
    rrca
    ldh a, [$bf]
    ld b, b
    ret nz

    ccf
    cp b
    ld b, a
    dec b
    db $ec
    ld bc, $cf05
    dec b
    db $10
    rst $28
    ld a, h
    add e
    dec b
    rst $08
    inc b
    or e
    ld b, b
    ld bc, $00e0
    add b
    dec b
    db $fd
    ld bc, $d005
    inc bc
    rst $30
    ld [$3cc3], sp
    nop
    ccf
    nop
    ld b, $b1
    or c
    set 1, e
    add $c6
    xor a
    xor a
    inc de
    inc de
    and c
    and c
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    dec b
    db $10
    ld [bc], a
    ccf
    cp a
    ret nz

    cp a
    db $db
    sbc c
    rst $28
    adc a
    res 6, e
    dec b
    db $10
    ld [bc], a
    db $fc
    db $fc
    ld [bc], a
    ei
    cp d
    ld [hl-], a
    ld a, [c]
    ld [$3a42], a
    jp $c0bc


    dec b
    ld h, l
    nop
    ret nz

    ld a, a
    ld a, a
    nop
    add b
    add h
    ld [hl], e
    nop
    nop
    add d
    ld a, d
    ld [bc], a
    ld [bc], a
    cp $fe
    ld [bc], a
    ld [bc], a
    db $fc
    db $fc
    nop
    nop
    ld [$00e6], sp
    nop
    dec b
    ld [hl], b
    inc b
    add l
    or $8d
    ret


    adc d
    adc $fa
    ei
    dec b
    ld [hl], b
    inc b
    and b
    ld l, [hl]
    or b
    sub b
    ld d, b
    ld [hl], b
    rst $18
    rst $18
    dec b
    and b
    rst $38
    ld c, l
    dec b
    cp a
    cpl
    ld c, l
    dec b
    rra
    ccf
    ld c, l
    dec b
    ld a, a
    ccf
    ld c, l
    dec b
    rst $18
    ccf
    ld c, l
    dec b
    ccf
    ld c, a
    ld c, l
    dec b
    sbc a
    ld c, a
    ld c, l
    dec b
    ld b, b
    inc c
    dec b
    cp [hl]
    ld c, $05
    ld [de], a
    inc c
    cp $ff
    dec b
    jr nc, @+$5a

    ld a, a
    ld a, a
    rst $38
    dec b
    ccf
    ld e, c
    dec b
    jr nc, jr_025_4680

    rla
    nop
    ld d, l
    ld d, h
    ld d, h
    dec b
    ld a, $58
    ret nz

    push de
    ld d, l
    ld d, l
    dec b
    cp [hl]
    ld c, $05
    add $07
    ld d, l
    dec b
    adc h
    ld d, b
    dec b
    ld b, b
    cpl
    ld c, l
    dec b
    rrca
    ld l, a
    ld c, l
    dec b
    ld l, a
    ld l, a
    ld c, l
    dec b
    ret nc

    rst $38
    dec e
    dec b
    adc $00
    rrca
    ldh a, [rNR10]
    rst $28
    nop
    pop bc
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    dec b
    adc $00
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
    ld h, d
    call c, $b140
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
    ld [bc], a
    adc l
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    nop

jr_025_4680:
    add e
    ld [$f0f7], sp
    rrca
    dec b
    and b
    ld l, a
    ld c, l
    dec b
    sbc a
    ld a, a
    ld c, l
    nop
    ld [bc], a
    ld b, $10
    ld de, $060d
    ld [bc], a
    ld b, $12
    ld b, $01
    ld [bc], a
    ld b, $f4
    ld hl, sp+$13
    inc d
    dec d
    ld d, $11
    dec c
    ld [de], a
    ld de, $0d1c
    ld [de], a
    dec d
    db $10
    ld b, $20
    nop
    dec d
    ld d, $11
    ld b, $f4
    ld hl, sp+$17
    nop
    jr nz, jr_025_46d8

    ld bc, $0601
    ld b, d
    ld [$0e02], sp
    ld b, $f4
    ld hl, sp+$18
    inc bc
    ld [hl+], a
    inc hl
    inc b
    inc b
    ld b, $62
    ld [$1705], sp
    ld b, $f4
    ld hl, sp+$19
    inc bc
    inc h
    dec h
    rlca
    rlca
    ld b, $82
    rlca

jr_025_46d8:
    ld [$1805], sp
    ld b, $f4
    ld hl, sp+$1a
    inc bc
    ld d, e
    ld d, h
    ld d, c
    ld d, c
    ld b, $a2
    ld [$1905], sp
    ld b, $f4
    ld hl, sp+$1b
    ld b, $a1
    ld [bc], a
    ld d, [hl]
    ld e, c
    ld e, c
    ld d, l
    ld b, $ab
    inc b
    ld a, [de]
    ld b, $f4
    ld hl, sp+$0e
    ld b, $a1
    ld [bc], a
    ld e, b
    ld e, d
    ld e, d
    ld d, a
    ld b, $ab
    inc b
    dec de
    ld b, $d4
    dec bc
    ld b, $c7
    inc b
    ld b, $c7
    inc bc
    dec b
    ld b, $53
    add hl, bc
    ld c, $03
    ld b, $e6
    dec b
    ld b, $e7
    inc bc
    ld b, $12
    dec e
    ld b, $c3
    inc c
    ld b, $33
    rra
    ld bc, $e706
    ld [$5306], sp
    add hl, bc
    dec e
    ld b, $a1
    ld c, $1e
    ld b, $f4
    ld hl, sp+$1f
    ld b, $a1
    ld c, $1f
    ld b, $94
    ld a, [de]
    ld d, d
    ld b, $c2
    dec de
    ld b, $b2
    inc e
    ld d, b
    ld b, $e2
    dec de
    ld b, $b2
    ld a, [de]
    nop
    ld [bc], a
    ld b, $10
    ld de, $060d
    ld [bc], a
    ld b, $12
    ld b, $01
    ld [bc], a
    ld b, $f4
    ld hl, sp+$13
    inc d
    dec d
    ld d, $11
    dec c
    ld [de], a
    ld de, $0d1c
    ld [de], a
    dec d
    db $10
    ld b, $20
    nop
    dec d
    ld d, $11
    ld b, $f4
    ld hl, sp+$17
    nop
    ld [hl], b
    ld [hl], c
    ld bc, $2001
    ld hl, $4406
    ld b, $02
    ld c, $06
    db $f4
    ld hl, sp+$18
    inc bc
    ld [hl], d
    ld [hl], e
    inc b
    inc b
    ld [hl+], a
    inc hl
    ld b, $64
    ld b, $05
    rla
    ld b, $f4
    ld hl, sp+$19
    inc bc
    ld e, e
    ld e, h
    rlca
    rlca
    ld b, $82
    rlca
    ld [$1805], sp
    ld b, $f4
    ld hl, sp+$1a
    inc bc
    ld d, e
    ld d, h
    ld d, c
    ld d, c
    ld b, $a2
    ld [$1905], sp
    ld b, $f4
    ld hl, sp+$1b
    ld b, $a1
    ld [bc], a
    ld d, [hl]
    ld e, c
    ld e, c
    ld d, l
    ld b, $ab
    inc b
    ld a, [de]
    ld b, $f4
    ld hl, sp+$0e
    ld b, $a1
    ld [bc], a
    ld e, b
    ld e, d
    ld e, d
    ld d, a
    ld b, $ab
    inc b
    dec de
    ld b, $d4
    dec bc
    ld b, $c7
    inc b
    ld b, $c7
    inc bc
    dec b
    ld b, $53
    add hl, bc
    ld c, $03
    ld b, $e6
    dec b
    ld b, $e7
    inc bc
    ld b, $12
    dec e
    ld b, $c3
    inc c
    ld b, $33
    rra
    ld bc, $e706
    ld [$5306], sp
    add hl, bc
    dec e
    ld b, $a1
    ld c, $1e
    ld b, $f4
    ld hl, sp+$1f
    ld b, $a1
    ld c, $1f
    ld b, $94
    ld a, [de]
    ld d, d
    ld b, $c2
    dec de
    ld b, $b2
    inc e
    ld d, b
    ld b, $e2
    dec de
    ld b, $b2
    ld a, [de]
    nop
    ld [$310f], sp
    cp c
    ld b, b
    ld d, d
    sub b
    or l
    ld h, d
    ei
    adc d
    xor a
    ld [hl], d
    ld a, d
    and l
    or l
    ld a, b
    ld a, [$0a0b]
    ld b, $57
    ld [de], a
    ld e, d
    inc c
    ld l, l
    sub d
    cp e
    adc c
    ret


    ld b, $26
    ld [hl+], a
    dec sp
    sub c

jr_025_482f:
    sub l
    ld h, d
    ld a, d
    call z, $b46c
    dec [hl]
    ld b, h
    or a
    xor b
    ld e, l
    jp nz, $9c2b

    ld h, d
    ld a, [de]
    ld e, d
    call Call_000_32fd
    inc sp
    inc hl
    inc l
    ld d, e
    ld d, h
    and b
    and e
    sub l
    jp c, $9867

    ei
    rlca
    and h
    ld d, l
    ret c

    dec sp
    ldh [$2a], a
    ret z

    ld e, h
    or b
    ld a, c
    jp nz, $e873

    ld l, b
    sbc a
    and b
    ld c, a
    ld d, b
    scf
    cp b
    add hl, bc
    xor [hl]
    daa
    ld [hl], h
    sbc c
    cp d
    ld b, a
    ld e, h
    cpl
    inc l
    add e
    db $eb
    ld b, h
    ld d, l
    jr jr_025_482f

    jr nz, jr_025_48a0

    ld c, b
    call c, Call_025_4a0f
    ld bc, $8369
    and [hl]
    ld b, l
    ld e, [hl]
    ld sp, $0db4
    xor [hl]
    ld h, $77
    sbc l
    cp l
    ld b, [hl]
    ld e, a
    dec l
    ld l, $47
    ld b, a
    ld l, l
    ld l, l
    ld a, [hl-]
    ld a, [hl-]
    inc sp
    inc sp
    call $03cd
    inc bc
    rrca
    db $fc
    ldh a, [rIF]
    add b
    nop
    cp d
    cp d

jr_025_48a0:
    sub e
    sub e
    xor l
    xor l
    ld b, e
    ld b, e
    rrca
    ei
    pop af
    ld d, l
    nop
    xor d
    nop
    push de
    nop
    xor d
    rrca
    and b
    ld bc, $0f7d
    and [hl]
    inc bc
    ld d, l
    nop
    ld a, [$b00f]
    inc bc
    xor d
    rrca
    ret nz

    rst $38
    dec l
    ld a, h
    add e
    rst $18
    jr nz, @+$01

    nop
    ei
    inc b
    ld e, a
    and b
    rrca
    inc b
    db $10
    xor $11
    db $eb
    inc d
    rst $38
    nop
    dec e
    ld [c], a
    cp d
    ld b, l
    db $fd
    ld [bc], a
    ld a, a
    add b
    rst $38
    nop
    rst $28
    db $10
    db $fc
    inc bc
    rst $38
    nop
    ld l, e
    sub h

jr_025_48e7:
    rst $38
    nop
    db $ed
    ld [de], a
    rst $38
    nop
    db $eb
    inc d
    rst $10
    jr z, jr_025_4971

    add b
    db $fd
    ld [bc], a
    rst $10
    jr z, jr_025_48e7

    db $10
    rst $18

jr_025_48fa:
    jr nz, jr_025_48fa

    ld bc, $00ff
    or d
    ld c, l
    ld b, b
    ld d, l
    inc sp
    cp e
    rrca
    inc b
    jr @+$42

    reti


    xor b
    adc d
    rst $38
    nop
    db $fd
    ld [bc], a
    ld l, l
    sub d
    rrca
    ld a, [bc]
    ld [de], a
    ld l, l
    sub c
    db $fd
    ld bc, $2ad6
    xor $12
    db $dd
    ld hl, $0bf5
    db $fd
    inc bc
    or c
    ld c, a
    db $ed
    ld de, $02fe
    dec e
    pop hl
    or [hl]
    ld c, d
    cp $02
    ld l, [hl]
    sub d
    db $fd
    ld bc, $4eb0
    cp h
    jp $a897


    ld e, a
    ld h, b
    ld a, e
    ld b, h
    cp a
    add b
    xor a
    ret nc

    cp e
    add h
    ld c, [hl]
    pop af
    ld e, h
    ld b, e
    ld d, a
    add sp, $7f
    ld b, b
    ld a, e
    ld b, h
    sbc a
    and b
    cp a
    ret nz

    cp e
    add h
    ld l, [hl]
    pop de
    call c, $0f23
    ld [hl+], a
    ld [de], a
    xor l
    ld d, d
    rrca
    ld a, [hl+]
    db $10
    inc sp
    cp e
    ld l, h
    db $ed
    sbc e
    and a
    cp h
    jp $621d


    ccf
    nop
    ld a, [hl]
    pop bc
    ld a, a
    ld b, b
    or a
    ret z

jr_025_4971:
    ld [hl], $b7
    reti


    push hl
    dec a
    jp $46b8


    db $fc
    ld bc, $827e
    cp $03
    db $ed
    inc de
    cp h
    jp $a09f


    rrca
    add h
    db $10
    or a
    adc b
    rrca
    sbc d
    db $10
    ld b, e
    di
    ld a, d
    add d
    ld [$fe17], a
    ld [bc], a
    cp [hl]
    ld b, d
    pop af
    dec c
    ld a, l
    add e
    db $ed
    ld de, $6a22
    rrca
    ldh a, [$fc]
    rst $30
    ld [$8364], sp
    db $db
    nop
    sbc b
    nop
    ld h, [hl]
    jr jr_025_4a11

    db $10
    sbc c
    inc b
    reti


    nop
    cp l
    ld b, c
    db $eb
    rla
    db $fd
    ld bc, $821e
    ld l, [hl]
    ld [bc], a
    ld h, l
    ld bc, $639b
    sbc e
    ld b, e
    ld [hl+], a
    nop
    ld de, $0048
    ld l, d
    nop
    ld h, e
    add b
    dec [hl]
    ret nz

    ld [bc], a
    rrca
    ld a, [hl+]
    db $10
    ld h, l
    ld bc, $026e
    ld c, $02
    ld bc, $0121
    sbc c
    ld b, $b3
    dec b
    add hl, hl
    adc l
    ld de, $9b1b
    and h
    add d
    rrca
    inc b
    jr z, jr_025_49e9

jr_025_49e9:
    dec h
    add h
    add h
    ld a, [c]
    dec bc
    ld a, [de]
    add [hl]
    rrca
    jr jr_025_4a19

    db $10
    ld b, c
    rrca
    inc h
    ld [hl+], a
    jp nz, $fb00

    inc b
    rst $28
    db $10
    ld sp, $3501
    ld bc, $0048
    ld hl, $0285
    sbc [hl]
    ld [bc], a
    cp e
    ld b, $22
    sub a
    dec bc
    dec de

Call_025_4a0f:
    dec de
    and h

jr_025_4a11:
    ld [bc], a
    rrca
    ld b, h
    add hl, hl
    inc h
    add h
    add h
    rst $30

jr_025_4a19:
    ld [$801f], sp
    ld l, l
    ld [bc], a
    ld h, [hl]
    ld bc, $609b
    sbc e
    ld b, b

jr_025_4a24:
    rrca
    jr nz, jr_025_4a53

    ld h, a
    nop
    ld l, l
    ld [bc], a
    dec c
    ld [bc], a
    inc bc
    jr nz, jr_025_4a33

    sbc b
    ld b, $b1

jr_025_4a33:
    dec b
    ld a, [hl+]
    adc l
    ld [de], a
    rst $38
    nop
    rst $00
    jr nz, @+$5d

    add b
    sbc c
    nop
    ld h, [hl]
    jr jr_025_4aa8

    db $10
    sbc b
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    ld a, a
    add b
    jp z, $b705

    nop
    inc sp
    nop

jr_025_4a53:
    call $cd30
    jr nz, jr_025_4a67

    ld h, b
    inc l
    inc sp
    nop
    dec [hl]
    ld [bc], a
    ld c, c
    nop
    ld hl, $0184
    sbc h
    ld [bc], a
    cp c
    rlca

jr_025_4a67:
    jr nz, @-$68

    add hl, bc
    nop
    ld d, h
    ld hl, $4fa1
    ld d, b
    ld e, b
    pop hl
    db $76
    ld b, b
    and [hl]
    add b
    reti


    add $d9
    call nz, $d9d8
    dec h
    ld b, c
    db $db
    nop
    add hl, de
    nop
    ld h, [hl]
    jr jr_025_4aab

    db $10
    sbc c
    jr nz, jr_025_4a24

    nop
    and [hl]
    add b
    db $76
    ld b, b
    ld [hl], b
    ld b, b
    add b
    add h
    add b
    sbc c
    ld h, b
    call $94a0
    or c
    adc b
    ld b, h
    nop
    adc b
    ld [de], a
    nop
    ld d, [hl]
    nop
    add $01
    xor h
    inc bc
    ld b, b
    rst $38
    nop

jr_025_4aa8:
    rst $10
    jr z, @-$41

jr_025_4aab:
    add d
    rst $10
    add sp, -$41
    add b
    ld a, b
    ld b, c
    rrca
    ld [$ef34], sp
    db $10
    ld h, $c1
    rrca
    inc d
    ccf
    add hl, de
    rrca
    and b
    rst $38
    ld c, l
    rrca
    rst $18
    ccf
    ld c, l
    rrca
    ccf
    ld c, a
    ld c, l
    rrca
    sbc a
    ld c, a
    ld c, l
    rrca
    rst $38
    ld c, a
    ld c, l
    rrca
    ld e, a
    ld e, a
    ld c, l
    rrca
    cp a
    ld e, a
    ld c, l
    rrca
    rra
    ld l, a
    ld c, l
    rrca
    ld a, a
    ld l, a
    ld c, l
    rrca
    rst $18
    ld l, a
    ld c, l
    rrca
    ccf
    ld a, a
    ld c, l
    rrca
    sbc a
    ld a, a
    ld c, l
    nop
    ld [bc], a
    inc c
    ld b, $07
    nop
    ld bc, $1710
    ld [$0c09], sp
    ld b, $02
    add hl, de
    ld de, $0100
    ld b, $07
    rst $38
    inc c
    inc d
    rlca
    ld b, $07
    ld [bc], a
    inc bc
    ld a, [de]
    ld e, $0a
    dec bc
    inc c
    ld h, $02
    dec e
    ld a, [de]
    ld [bc], a
    inc bc
    inc c
    ld [de], a
    ld a, [bc]
    inc c
    ld [bc], a
    ld [bc], a
    inc c
    daa
    inc bc
    ld a, [bc]
    inc c
    inc c
    ld [bc], a
    inc c
    inc d
    ld [$220c], sp
    ld [$2a0c], sp
    inc b
    inc c
    inc d
    ld [$2120], sp
    inc c
    ld b, h
    ld b, $0c
    ld c, d
    ld [bc], a
    inc [hl]
    dec [hl]
    inc c
    inc d
    ld [$2322], sp
    inc c
    ld h, h
    ld [$260c], sp
    nop
    ld [hl], $37
    inc c
    ld [hl], h
    ld a, [bc]
    inc c
    and e
    dec bc
    ld a, [bc]
    inc c
    sub d
    rrca
    inc hl
    dec de
    inc d
    dec d
    inc e
    inc c
    db $cc, $0f, $09
    jr @+$15

    ld [de], a
    ld d, $0c
    xor h
    rrca
    ld bc, $1110
    inc c
    ld a, [bc]
    ld [de], a
    add hl, de
    ld de, $1710
    inc c
    daa
    nop
    jr nc, jr_025_4b9e

    db $10
    ld de, $140c
    ld [$1312], sp
    ld [de], a
    rla
    inc c
    inc h
    jr jr_025_4bac

    inc sp
    ld [de], a
    inc de
    inc c
    inc d
    ld [$0504], sp
    db $10
    ld de, $2524
    inc c
    ld b, [hl]
    inc d
    inc c
    ld d, b
    db $10
    inc b
    dec b
    inc c
    inc d
    ld a, [bc]
    ld [de], a
    inc de
    ld h, $27
    inc c
    ld h, $14
    inc c
    ld [hl], b
    db $10
    inc c
    ld [hl-], a
    inc c

jr_025_4b9e:
    inc b
    dec b
    inc l
    dec l
    jr z, jr_025_4bcd

    db $10
    ld de, $1110
    jr z, jr_025_4bd3

    inc l
    dec l

jr_025_4bac:
    inc b
    dec b
    inc c
    ld d, d
    inc c
    ld b, $07
    ld l, $2f
    ld a, [hl+]
    dec hl
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld a, [hl+]
    dec hl
    ld l, $2f
    inc c
    jr nz, jr_025_4bc2

jr_025_4bc2:
    inc c
    inc [hl]
    ld [$0800], sp
    ld b, $7f
    ld a, a
    cp a
    ret nz

    and b

jr_025_4bcd:
    rst $18
    and b
    ret nc

    xor a
    rst $08
    xor b

jr_025_4bd3:
    ret z

    xor b
    res 5, e
    set 7, [hl]
    cp $fd
    inc bc
    dec b
    ei
    dec b
    dec bc
    push af
    ei
    dec d
    dec de
    dec d
    db $db
    sub l
    cp e
    ld d, l
    ld a, e
    ld d, a
    ld a, b
    ld d, b
    ld [hl], a
    ld d, b
    ld [hl], b
    ld c, a
    ld l, a
    ld b, b
    ld h, b
    ld b, b
    ld e, a
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld b, $32
    nop
    rst $38
    nop
    ld b, $36
    nop
    rst $38
    xor d
    jp z, Jump_000_0aea

    ld a, [bc]
    ld [$0a0a], a
    ld a, [c]
    ld a, [c]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [$fcfc]
    rra
    rra
    db $ed
    db $ec
    add [hl]
    call c, $a58f
    adc a
    push de
    ld b, $56

jr_025_4c22:
    ld [bc], a
    ld b, $30
    nop
    ei
    ei
    add l
    and h
    add [hl]
    call nc, Call_025_5a06
    ld b, $06
    ld [hl], b
    ld [bc], a
    ld b, $fa
    ld a, [c]
    ld b, $30
    nop
    rst $18
    rst $18
    scf
    or a
    ld l, l
    dec l
    xor e
    db $eb
    xor l
    db $fd
    xor e
    ei
    ld hl, sp-$08
    ld b, $86
    ld b, $a5
    push af
    xor e

Jump_025_4c4c:
    ei
    ld b, $58
    inc b
    ld b, $58
    inc b
    nop
    ld a, [hl]
    add c
    inc a
    ld b, d
    sbc c
    inc h
    jp $e700


    jr jr_025_4c22

    inc h
    sbc c
    ld b, d
    inc a
    ld b, $9c
    nop
    ld b, $c0
    ld [$d68c], sp
    adc h
    and a
    adc e
    db $d3
    adc b
    and a
    sbc a
    rst $08
    or b
    sub c
    ldh [$aa], a
    rst $38
    ld b, $70
    dec b
    nop
    nop
    nop
    ld d, l
    nop
    xor d
    rst $38
    rst $38
    dec h
    ld [hl], l
    dec hl
    ei
    push bc
    push de
    dec bc
    ei
    push af
    db $fd
    dec bc
    adc a
    dec b
    ld d, a
    ld b, $3e
    nop
    ld b, $00
    ld a, [de]
    ld d, l
    ld a, e
    ld b, $10
    ld a, [de]
    ld b, $e5
    nop
    ld b, $20
    jr @-$01

    ld [bc], a
    rst $18
    jr nz, jr_025_4d1e

    adc b
    db $dd
    ld [hl+], a
    ld [hl], a
    adc b
    xor d
    ld d, l
    ld d, l
    xor d
    ld b, $3a
    inc d
    adc b
    ld [hl], a
    ld [hl+], a
    db $dd
    ld b, $46
    db $10
    ld b, $21
    dec de
    ld b, $2c
    ld de, $df00
    nop
    ld [hl], a
    nop
    db $dd
    nop
    ld [hl], a
    nop
    xor d
    ld b, $ea
    nop
    ld b, $6c
    inc de
    adc b
    nop
    ld [hl+], a
    ld b, $76
    ld de, $ef06
    rst $38
    ld [bc], a
    ret nc

    adc a
    ld b, $94
    db $10
    rst $18
    add b
    ret nz

    and b
    cp a
    ret nz

    ld b, $30
    inc bc
    ld b, $76
    inc bc
    rst $38
    nop
    ld b, $10
    nop
    dec bc
    pop af
    ld b, $b4
    db $10
    ei
    ld bc, $0503
    db $fd

jr_025_4cfa:
    inc bc
    add b
    add b
    ld a, a
    ld a, a
    ld b, c
    ld b, c
    add e
    sbc e
    add [hl]
    or [hl]
    ld c, e
    ld e, e
    ld c, b
    ret c

    sub b
    or b
    ld b, $36
    nop
    or h
    or l
    ret


    db $ed
    ld [hl], $b6
    nop
    ld a, a
    ld b, $78
    ld [bc], a
    rst $38
    rst $38
    dec l
    xor l
    sub e

jr_025_4d1e:
    or a
    ld l, h
    ld l, l
    nop
    cp $06
    ld sp, $0100
    ld bc, $fefe
    add d
    add d
    pop bc
    reti


    ld h, c
    ld l, l
    jp nc, Jump_000_12da

    dec de
    add hl, bc
    dec c
    jp nc, $181e

    ei
    rlca
    rst $20
    inc c
    inc c
    call nc, $9315
    ld e, e
    adc b
    ld l, e
    rlca
    rlca
    ld c, e
    ld a, b
    jr @-$1f

    add sp, -$19
    jr nc, jr_025_4d7e

jr_025_4d4e:
    jr z, jr_025_4cfa

    ret z

    jp c, $d610

    ldh [$e0], a
    rst $08
    jr nz, jr_025_4d61

    rst $20
    ld [$8067], sp
    nop
    xor c
    inc h
    ret


jr_025_4d61:
    inc e
    ld h, l
    adc h
    inc d
    call c, Call_000_20cf
    ld [$09e6], sp
    db $e4
    ld bc, $f500
    inc b
    sub d
    ld a, c
    and [hl]
    ld [hl], c
    jr nz, jr_025_4da9

    ld b, $20
    ld hl, $00e7
    nop
    db $f4
    dec b

jr_025_4d7e:
    sub c
    ld a, d
    and d
    ld [hl], l
    inc hl
    jr nc, jr_025_4d8b

    and b
    rst $38
    ld c, l

jr_025_4d88:
    ld b, $af
    cpl

jr_025_4d8b:
    ld c, l
    ld b, $0f
    ccf
    ld c, l
    ld b, $6f
    ccf
    ld c, l
    ld b, $cf
    ccf
    ld c, l
    ld b, $2f
    ld c, a
    ld c, l
    ld b, $8f
    ld c, a
    ld c, l
    ld b, $f0
    db $fc
    ld b, $40
    inc h
    db $fc
    ld [bc], a
    add b

jr_025_4da9:
    ld a, [hl]
    add b
    ld a, [hl]
    nop
    nop
    db $10
    db $10
    db $10
    jr jr_025_4db9

    inc b
    ld e, b
    nop
    nop
    ccf
    ld b, b

jr_025_4db9:
    ld b, b
    nop
    ld e, h
    ld bc, $0a50
    ld d, b
    inc b
    ld b, e
    ld [$1142], sp
    ld b, $06
    ld d, b
    nop
    ld [bc], a
    jr c, jr_025_4d4e

    db $10
    ld c, d
    nop
    ld a, [hl+]
    ret nz

    ld [de], a
    nop
    jp z, $1142

    ld b, d
    add hl, bc
    ld d, b
    inc b
    ld e, b
    ld [bc], a
    ld d, b
    dec c
    ld b, b
    nop
    nop
    ld a, a
    nop
    nop
    nop
    jp z, $d200

    ld [$1022], sp
    ld c, d
    jr nz, jr_025_4d88

    nop
    ld [bc], a
    nop
    cp $06
    and b
    ld c, a
    ld c, l
    ld b, $bd
    ld e, a
    ld c, l
    ld b, $1d
    ld l, a
    ld c, l
    ld b, $7d
    ld l, a
    ld c, l
    ld b, $dd
    rst $38
    db $10
    rst $38
    rrca
    ldh a, [rNR10]
    rst $28
    nop
    pop bc
    inc a
    cp h
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
    nop
    add e
    ld [$f0f7], sp
    rrca
    ld b, $e6
    ld bc, $4206
    ld a, a
    ld c, l
    ld b, $a2
    ld a, a
    ld c, d
    nop
    ld [bc], a
    ld [de], a
    inc de
    ld [de], a
    nop
    rrca
    nop
    ld [de], a
    db $f4
    ld hl, sp+$14
    ld [de], a
    jr nz, jr_025_4e5d

jr_025_4e5d:
    nop
    inc bc
    ld [de], a
    ld h, $03
    ld bc, $2012
    ld [bc], a
    ld [de], a
    push af
    rst $30
    ld d, $12
    ld b, b
    nop
    db $10
    ld d, c
    ld [de], a
    ld b, [hl]
    inc bc
    ld de, $4012
    ld bc, $f412
    ld hl, sp+$17
    ld [de], a
    ld h, b
    nop
    db $10
    ld d, b
    ld d, b
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld d, b
    ld d, b
    ld de, $6012
    ld bc, $f412
    ld hl, sp+$18
    ld [de], a
    add b
    nop
    db $10
    inc hl
    ld [hl+], a
    ld d, h
    ld d, l
    ld d, h
    ld d, l
    inc hl
    ld [hl+], a
    ld de, $8012
    ld bc, $7412
    add hl, bc
    ld [de], a
    dec h
    nop
    inc b
    jr nz, jr_025_4ec8

    ld [de], a
    ld l, b
    nop
    jr nz, jr_025_4ecd

    ld [bc], a
    ld [de], a
    dec hl
    nop
    ld [de], a
    sub e
    ld a, [bc]
    ld [de], a
    ld b, l
    ld bc, $5050
    ld [de], a
    adc b
    nop
    ld d, b
    ld d, b
    ld [de], a
    ld c, d
    ld bc, $9312
    add hl, bc
    inc bc
    inc b
    ld d, b
    ld [de], a
    ld [c], a

jr_025_4ec8:
    dec bc
    ld [bc], a
    inc bc
    ld [de], a
    db $f4

jr_025_4ecd:
    ld hl, sp+$51
    ld d, c
    inc hl
    ld [hl+], a
    dec b
    ld b, $07
    ld [de], a
    ld b, $13
    ld [$2309], sp
    ld [hl+], a
    ld d, c
    ld d, c
    ld [de], a
    db $f4
    ld hl, sp+$50
    ld d, b
    jr nz, jr_025_4f06

    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [de], a
    ld h, $13
    inc c
    inc c
    jr nz, jr_025_4f10

    ld d, b
    ld d, b
    ld [de], a
    inc d
    ld a, [de]
    inc hl
    ld [hl+], a
    ld [de], a
    inc h
    jr jr_025_4f1d

    ld [hl+], a
    ld [de], a
    ld [hl-], a
    inc e
    ld [de], a
    ld [hl+], a
    rra
    inc de
    add hl, de
    ld a, [de]
    ld a, [de]
    dec de

jr_025_4f06:
    ld [de], a
    ld c, h
    rra
    add hl, bc
    inc e
    dec e
    ld e, $1f
    ld [de], a
    inc l

jr_025_4f10:
    rra
    ld b, $0d
    ld c, $12
    add $13
    rrca
    ld [de], a
    ld c, a
    rra
    ld [bc], a
    ld [de], a

jr_025_4f1d:
    push bc
    dec d
    ld c, $0e
    rrca
    ld [de], a
    jr nc, @+$1e

    nop
    ld [bc], a
    ld [de], a
    inc de
    ld [de], a
    nop
    rrca
    nop
    ld [de], a
    db $f4
    ld hl, sp+$14
    ld [de], a
    jr nz, jr_025_4f34

jr_025_4f34:
    nop
    inc bc
    ld [de], a
    ld h, $03
    ld bc, $2012
    ld [bc], a
    ld [de], a
    push af
    rst $30
    ld d, $12
    ld b, b
    nop
    db $10
    ld d, c
    ld [de], a
    ld b, [hl]
    inc bc
    ld de, $4012
    ld bc, $f412
    ld hl, sp+$17
    ld [de], a
    ld h, b
    nop
    db $10
    ld d, b
    ld d, b
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld d, b
    ld d, b
    ld de, $6012
    ld bc, $f412
    ld hl, sp+$18
    ld [de], a
    add b
    nop
    db $10
    inc hl
    ld [hl+], a
    ld d, h
    ld d, l
    ld d, h
    ld d, l
    inc hl
    ld [hl+], a
    ld de, $8012
    ld bc, $7412
    add hl, bc
    ld [de], a
    dec h
    nop
    inc b
    jr nz, jr_025_4f9f

    ld [de], a
    ld l, b
    nop
    jr nz, jr_025_4fa4

    ld [bc], a
    ld [de], a
    dec hl
    nop
    ld [de], a
    sub e
    ld a, [bc]
    db $10
    ld [hl], b
    ld [hl], c
    ld d, c
    ld d, c
    ld d, b
    ld d, b
    ld [de], a
    adc b
    nop
    ld d, b
    ld d, b
    ld [de], a
    ld c, d
    ld bc, $9312
    add hl, bc
    inc bc
    inc b
    ld [hl], d

jr_025_4f9f:
    ld [hl], e
    ld d, b
    ld [de], a
    db $e4
    add hl, bc

jr_025_4fa4:
    ld [bc], a
    inc bc
    ld [de], a
    db $f4
    ld hl, sp+$51
    ld d, c
    inc hl
    ld [hl+], a
    dec b
    ld b, $07
    ld [de], a
    ld b, $13
    ld [$2309], sp
    ld [hl+], a
    ld d, c
    ld d, c
    ld [de], a
    db $f4
    ld hl, sp+$50
    ld d, b
    jr nz, jr_025_4fe1

    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [de], a
    ld h, $13
    inc c
    inc c
    jr nz, jr_025_4feb

    ld d, b
    ld d, b
    ld [de], a
    inc d
    ld a, [de]
    inc hl
    ld [hl+], a
    ld [de], a
    inc h
    jr jr_025_4ff8

    ld [hl+], a
    ld [de], a
    ld [hl-], a
    inc e
    ld [de], a
    ld [hl+], a
    rra
    inc de
    add hl, de
    ld a, [de]
    ld a, [de]
    dec de

jr_025_4fe1:
    ld [de], a
    ld c, h
    rra
    add hl, bc
    inc e
    dec e
    ld e, $1f
    ld [de], a
    inc l

jr_025_4feb:
    rra
    ld b, $0d
    ld c, $12
    add $13
    rrca
    ld [de], a
    ld c, a
    rra
    ld [bc], a
    ld [de], a

jr_025_4ff8:
    push bc
    dec d
    ld c, $0e
    rrca
    ld [de], a
    jr nc, jr_025_501c

Jump_025_5000:
    nop
    ld [$c015], sp
    rst $18
    ldh a, [$f0]
    ld hl, sp-$07
    db $f4
    db $f4
    add sp, -$18
    db $f4
    or $b8
    cp c
    add a
    or a
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    ccf
    nop

jr_025_501c:
    sbc a
    nop
    ld a, a
    nop
    cp a
    dec hl
    dec hl
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    ld a, [$fd00]
    nop
    cp $00
    db $fc
    call nc, Call_000_03d4
    ei
    rrca
    rrca
    rra
    rra
    rrca
    adc a
    rla
    rla
    rra
    ld e, a
    dec c
    adc l
    pop hl
    db $ed
    db $db
    db $db
    ld [bc], a
    or d
    inc bc
    jp $0303


    ld hl, sp-$05
    ld de, $02de
    adc e
    or [hl]
    or a
    rst $38
    rst $38
    inc [hl]
    or e
    ret c

    add $23
    db $db
    add $26
    adc c
    ld l, c
    rst $00
    scf
    ld b, e
    cp a
    pop bc
    pop bc
    ld sp, $0931
    add hl, bc
    db $fd
    db $fd
    ld [$48ea], a
    ld c, b
    rst $28
    rst $28
    ld hl, sp-$01
    add hl, de
    add hl, de
    dec h
    dec a
    ld b, e
    ld [hl], e
    adc a
    xor $5b
    ld e, h
    sbc e
    call c, $ce0d
    rlca
    rst $00
    jr jr_025_509d

    inc h
    dec a
    jp nz, $f1ce

    ld [hl], a
    jp c, $d93a

    dec sp
    or b
    ld [hl], e
    ldh [$e3], a
    ld b, e
    jp Jump_025_4c4c


    ld d, b
    ld d, b
    rst $38
    rst $38
    inc d
    inc d

jr_025_509d:
    dec b
    dec b
    rst $38
    rst $38
    rra
    rst $38
    ldh a, [$f0]
    inc l
    call z, $631b
    call nz, $23db
    inc h
    ld de, $e316
    db $ec
    jp nz, $84fd

    adc h
    add h
    db $e4
    add h
    sub h
    rst $38
    rst $38
    ld hl, $a4e1
    ld h, h
    ld e, c
    reti


    ld a, a
    rst $38
    ld [hl], b
    ld [hl], e
    ld d, c
    ld d, d
    ld c, h
    ld c, l
    ld b, e
    ld b, e
    ld b, b
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    ld b, d
    ld b, e
    ld b, e
    dec bc
    rst $28
    rst $28
    rra
    ld c, [hl]
    cp [hl]
    ld h, $56
    sub d
    xor d
    cp e
    rst $00
    nop
    jr c, @+$01

    rst $38
    inc de
    dec hl
    add d
    add d
    rst $38
    rst $38
    ret z

    ret z

    ei
    ei
    db $d3
    db $d3
    cp e
    cp e
    rst $30
    rst $30
    inc sp
    ld c, e
    ld h, l
    ld h, l
    rst $38
    rst $38
    sub c
    sub c
    xor l
    xor l
    ld a, [c]
    ld a, [c]
    ld [de], a
    ld [de], a
    rst $30
    rst $30
    dec d
    nop
    ld [$f9f8], sp
    dec d
    ld c, $0f
    add hl, de
    ld e, $5f
    inc c
    adc a
    ldh [$ef], a
    add hl, bc
    ld l, c
    ld a, [bc]
    ld c, d
    inc e
    dec e
    ld hl, sp-$05
    db $10
    rla
    ld h, b
    ld l, a
    ld c, a
    ld c, a
    ld [hl], b
    ld [hl], b
    nop
    rst $38
    add b
    cp b
    ld b, b
    ld e, b
    ld bc, $0209
    add e
    inc b
    add $f8
    db $fd
    ld [$000a], sp
    db $fc
    inc bc
    inc bc
    inc a
    ccf
    ret nz

    cp $00
    push af
    nop
    xor e
    ld bc, $ff55
    rst $38
    nop
    nop
    dec d
    ld l, [hl]
    db $10
    dec d
    ld a, [$15f2]
    ld [hl], d
    ld [de], a
    dec d
    ld [hl], d
    dec de
    ccf
    ret nz

    ret nz

    inc a
    db $fc
    inc bc
    ld a, a
    nop
    xor a
    nop
    push de
    add b
    xor d
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $021d
    ld a, [de]
    add b
    sub b
    ld b, b
    pop bc
    jr nz, jr_025_51ce

    rra
    cp a
    db $10
    ld d, b
    adc d
    cp d
    ld e, d
    ld e, d
    ld a, $be
    ld [de], a
    jp nc, $ea0a

    ld b, $f6
    ld a, [c]
    ld a, [c]
    ld c, $0e
    ld b, b
    ld b, b
    ld b, a
    ld b, a
    ld b, h
    ld b, h
    ld b, h
    ld b, a
    ld b, a
    ld b, a
    ld b, b
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    cp a
    add e
    cp e
    dec d
    sbc [hl]
    db $10
    dec d
    ld l, [hl]
    ld [de], a
    rst $38
    rst $38
    db $db
    db $db
    ld a, [c]
    ld a, [c]
    dec d
    db $e4
    ld [bc], a
    dec d
    ld a, [$bbf2]
    cp e
    dec d
    ld a, [c]
    inc b
    dec d
    ld a, [$15f2]
    jr nc, @+$0a

    rrca
    adc a
    db $e3
    db $e3
    nop
    nop
    nop
    ld hl, sp+$00
    add b
    ei
    ei
    db $10
    db $10
    db $10
    ld hl, sp+$10
    sbc b
    or a
    or a
    ld bc, $0101
    pop hl
    ld bc, $bf81
    cp a
    db $10
    db $10

jr_025_51ce:
    db $10
    inc d
    sub b
    sbc b
    rst $10
    rst $10
    nop
    nop
    jr c, jr_025_51d8

jr_025_51d8:
    ld a, h
    nop
    cp $28
    cp $00
    cp $44
    ld a, h
    jr c, jr_025_521b

    nop
    ret nc

    rst $30
    rst $30
    ld hl, sp+$72
    ld a, l
    ld h, h
    ld l, d
    ld c, c
    ld d, l
    db $dd
    db $e3
    nop
    inc e
    rst $38
    rst $38
    ld c, $ce
    adc d
    ld c, d
    ld [hl-], a
    or d
    jp nz, $02c2

    ld [bc], a
    add d
    add d
    ld b, d
    ld b, d
    jp nz, $80c2

    dec d
    ld h, b
    ld hl, $c0c0
    dec d
    ld a, [$80f2]
    add b
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0303
    rlca
    rlca

jr_025_521b:
    dec d
    ld [hl], h
    jr nz, jr_025_521f

jr_025_521f:
    inc c
    nop
    db $76
    ld [hl], b
    ld a, d
    adc b
    adc b
    add b
    add b
    ldh [$e2], a
    ldh a, [$fa]
    cp [hl]
    cp h
    nop
    ld [hl-], a
    nop
    ld l, [hl]
    ld c, $5e
    ld de, $0011
    nop
    rlca
    ld b, a
    rrca
    ld e, a
    ld a, [hl]
    ld a, $2b
    rst $38
    ld l, $ff
    rla

jr_025_5243:
    rst $38
    sbc a
    db $fd
    rst $38
    dec d
    and a
    jr nz, jr_025_5243

    rst $38
    ld hl, sp-$2c
    rst $38
    ld [hl], h
    rst $38
    add sp, -$01
    ld sp, hl
    dec d
    call z, Call_000_1510
    call z, Call_025_7f10
    dec d
    and b
    inc hl
    dec d
    or a
    inc h
    cp $15
    or b
    jr nz, jr_025_52ce

    rst $38
    ld sp, hl
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rra
    ld a, a
    sbc a
    cp $fe
    ret nz

    rst $08
    rst $00
    ret z

    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f7]
    ldh a, [$f7]
    ld a, e
    ld a, e
    inc bc
    di
    db $c3, $33, $0f


    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rrca
    adc a
    rrca
    adc a
    dec d
    nop
    ld bc, $f0f8
    pop af
    add sp, -$18
    ld a, b
    ld a, [$f130]
    rlca
    rst $30
    nop
    ld e, l
    nop
    xor d
    nop
    ld d, l
    nop
    cp [hl]
    nop
    ld d, l
    dec d
    ld [de], a
    ld sp, $15ea
    jr @+$35

    dec d
    inc de
    ld [hl], $15
    ld sp, $f12b
    db $fd
    pop bc
    db $dd
    dec d
    call nc, $0218
    ld [bc], a
    ld [c], a
    ld [c], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [c], a
    ld [c], a
    ld [c], a
    ld [bc], a
    ld [bc], a
    dec d
    call z, $c010
    ret nz

jr_025_52ce:
    dec d
    ld h, b
    jr nz, jr_025_52e7

    ld l, h
    jr nz, @-$3e

    ret nz

    add b
    sub b
    add b
    cp b
    ld bc, $0701
    rlca
    inc bc
    inc bc
    dec d
    ld [hl], h
    jr nz, @+$03

    ld bc, $0400

jr_025_52e7:
    nop
    ld e, $33
    ld a, [hl-]
    cp c
    cp l
    ld a, [hl]
    ld a, [hl]
    ld sp, $db7a
    rst $38
    ld sp, hl
    db $fd
    xor a
    xor a
    dec hl
    ld l, e
    call z, $9e5c
    cp [hl]
    ld a, l
    ld a, l
    adc h
    ld e, [hl]
    db $db
    rst $38
    ld e, a
    ld a, a
    push af
    push af
    call nc, $fcd6
    ei
    db $fc
    ld a, [$f6f8]
    ld hl, sp-$0c
    ld hl, sp-$0c
    add sp, -$14
    ret z

    call z, $e7e7
    rst $38
    ccf
    ld a, a
    cp a
    cpl
    rst $08
    cpl
    rst $08
    cpl
    ld c, a
    rra
    ld a, a
    rla
    ld [hl], a
    rst $20
    rst $20
    cp $fd
    cp $f9
    db $fc
    ei
    db $f4
    ld a, [$faf4]
    db $ec
    ld [$ac15], a
    jr nc, jr_025_53b8

    sbc a
    ccf
    ld e, a
    ccf
    ld c, a
    ccf
    ld c, a
    rra
    cpl
    rra
    cpl
    rla
    scf
    rst $20
    rst $20
    ld hl, sp-$01
    rst $30
    rst $30
    ld hl, sp-$03
    rst $10
    rst $10
    sbc b
    db $dd
    adc a
    rst $08
    ld h, b
    ld [hl], b
    ccf
    ccf
    rra
    sbc a
    rst $28
    rst $28
    rra
    rra
    db $eb
    db $eb

Call_025_5360:
    add hl, de
    dec de
    pop af
    pop af
    ld b, $0e
    db $fc
    db $fc
    rst $20
    jr @+$0e

    di
    ld [c], a
    inc e
    dec a
    ret nz

    add d
    ld a, c
    ld a, [c]
    dec b
    sub h
    ld h, d
    add sp, $12
    or e
    inc c
    ld b, h
    dec de
    sbc $01
    ld h, c
    adc [hl]
    dec hl
    ld b, h
    nop
    cpl
    rrca
    jr nz, jr_025_53a0

    ld b, [hl]
    and $18
    inc c
    ldh a, [$e0]
    add hl, de
    dec sp
    ret nz

    add b
    ld [hl], l
    ldh a, [rDIV]
    sub b
    ld h, h
    add sp, $12
    di
    inc c
    inc h
    db $db
    ld a, [hl]
    ld bc, $6e11

jr_025_53a0:
    cp e
    inc b
    ld d, b
    adc a
    ld c, a
    jr nz, @+$1b

    ld b, [hl]
    ld [c], a
    ld [bc], a
    rst $18
    ccf
    db $10
    rst $30
    rst $38
    rrca
    ld c, $f3
    rst $38
    rrca
    ld d, b
    or a
    rst $38
    ccf

jr_025_53b8:
    ld b, a
    ld b, b
    rst $38
    ld hl, sp+$0c
    adc e
    rst $38
    ldh a, [rSTAT]
    ld a, [hl]
    rst $38
    ldh a, [$0c]
    set 7, a
    db $fc
    add b
    add e
    dec d
    inc d
    ld bc, $003f
    rra
    nop
    rlca
    ldh a, [$f0]
    dec d
    sbc [hl]
    db $10
    dec d
    ld [hl], b
    ld b, a
    dec d
    db $db
    ld de, $7215
    ld de, $d715
    dec d
    ld bc, $00c1
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh [rIF], a
    rrca
    dec d
    ld [hl], d
    ld d, $15
    and a

jr_025_53f6:
    rst $38
    ld b, [hl]
    rst $38
    rst $18
    jr nz, jr_025_541a

    pop hl
    ldh [$1f], a
    ld c, $f1
    pop hl
    ld e, $db
    inc h
    ld [bc], a
    db $fd
    nop
    rst $38
    rst $30
    ld [$f807], sp
    jr jr_025_53f6

    cp $01
    daa
    ret c

    or $09
    dec d
    db $10
    ld d, b
    rst $38
    nop

jr_025_541a:
    ld [bc], a
    db $fd
    sbc a
    ld h, b
    ret nz

    ccf
    db $f4
    dec bc
    pop hl
    ld e, $0f
    ldh a, [$bf]
    ld b, b
    add hl, sp
    add $13
    db $ec
    rst $28
    db $10
    swap h
    dec d
    db $10
    ld d, b
    add [hl]
    ld a, c
    add b
    cp a
    adc a
    or b
    sbc [hl]
    and c
    ret nz

    rst $38
    xor $f1
    sub c
    adc [hl]
    set 0, h
    jp nz, $87cd

    sbc b
    adc a
    ldh a, [$92]
    db $ed
    sbc a
    and b
    ret nz

    rst $18
    sub h
    xor e
    pop bc
    sbc $8f

jr_025_5454:
    or b
    ld bc, $f1f9
    add hl, bc
    ld de, $01ed
    db $fd
    push af
    add hl, bc
    add hl, sp
    push bc
    pop hl
    add hl, de
    add hl, de

jr_025_5464:
    push hl
    and e
    ld e, e
    ld sp, $1dcd
    pop hl
    ld sp, hl
    dec b
    pop bc
    add hl, sp
    inc bc
    di
    pop hl
    add hl, de
    sub c
    ld l, c
    nop
    rst $38
    ld h, [hl]
    sbc c
    ld e, c
    and [hl]
    jr z, jr_025_5454

    inc a
    jp $b34c


    ld b, b
    cp a
    jr nz, jr_025_5464

    dec d
    add b
    ld d, b
    sbc c
    ld h, [hl]
    dec d
    ld [hl], b
    ld c, b
    ld h, [hl]
    sbc c
    sbc d
    ld h, l
    inc d
    db $eb
    inc a
    jp $cd32


    ld [bc], a
    db $fd
    inc b
    ei
    jr nz, @-$1f

    ld b, b
    cp a
    dec d
    adc h
    ld d, b
    dec d
    or b
    ld d, h
    dec d
    ld [hl], b
    ld c, c
    rst $38
    nop
    rst $38
    inc b
    ei
    ld [bc], a
    db $fd
    dec d
    xor h
    ld d, b
    dec d
    ret nc

    ld d, h
    dec d
    or b

jr_025_54b7:
    ld d, b
    ld c, h
    or e
    inc a
    jp $d728


    ld e, c
    and [hl]
    ld h, [hl]
    sbc c
    dec d
    ld [hl], b
    ld c, b
    sbc c
    ld h, [hl]
    dec d
    db $ec
    ld d, b
    dec d
    ret nc

    ld d, b
    ld [hl-], a
    call $c33c
    inc d
    db $eb
    sbc d
    ld h, l
    dec d
    db $ec
    ld d, b
    add c
    ld a, [hl]
    ld b, d
    cp l
    inc d
    db $eb
    jr z, jr_025_54b7

    dec d
    inc d
    ld h, b
    ld b, d
    cp l
    add c
    ld a, [hl]
    dec d
    ld [hl], b
    ld b, [hl]
    add b
    ld a, a
    ld h, b
    sbc a
    dec d
    cp [hl]
    ld e, d
    inc bc
    db $fc
    inc b
    dec d
    jp hl


    inc de
    dec d
    add $ff
    daa
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
    nop
    add e
    add hl, bc
    or $f3
    inc c
    rrca
    ldh a, [$15]
    and c
    ld c, a
    ld c, l
    dec d
    rra
    ld a, a
    ld c, l
    dec d
    ld a, a
    ld a, a
    ld c, l
    dec d
    rst $18
    ld a, a
    dec c
    nop
    ld [bc], a
    inc hl
    ld h, $27
    nop
    ld bc, $0302
    ld hl, $2322
    ld b, $02
    inc hl
    ld [bc], a
    nop
    ld h, $27
    rst $38
    inc hl
    inc d
    rlca
    ld [hl], $37
    inc hl
    ld [bc], a
    inc c
    ld [hl], $37
    inc hl
    inc d
    ld [$2928], sp
    inc hl
    ld [bc], a
    nop
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc hl
    ld [bc], a
    nop
    jr z, jr_025_55a7

    inc hl
    inc d
    ld [$3938], sp
    inc hl
    ld [bc], a
    nop
    inc d
    dec d
    ld d, $17
    jr jr_025_55a5

    ld a, [de]
    dec de
    inc hl
    ld [bc], a
    nop
    jr c, jr_025_55cc

    inc hl
    inc d
    ld [$2b2a], sp
    inc hl
    ld [bc], a
    nop
    inc c
    dec c
    ld b, [hl]
    ld b, a
    ld b, a
    ld c, c
    inc h
    dec h
    inc hl
    ld [bc], a

jr_025_55a5:
    nop
    ld a, [hl+]

jr_025_55a7:
    dec hl
    inc hl
    inc d
    ld [$3b3a], sp
    db $10
    ld de, $1312
    inc e
    dec e
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    inc [hl]
    dec [hl]
    jr nc, jr_025_55cc

    ld [de], a
    jr nz, jr_025_55f8

    dec sp
    inc hl
    inc d
    ld [$2f2e], sp
    ld d, h
    ld d, c
    ld b, b
    ld b, c
    ld e, b
    ld e, c
    inc hl
    rst $00

jr_025_55cc:
    ld bc, $405a
    ld b, c
    ld d, b
    ld d, [hl]
    ld l, $2f
    inc hl
    inc d
    ld [$3f3e], sp
    ld d, l
    ld d, e
    ld b, h
    ld b, l
    ld e, e
    ld e, h
    ld e, h
    ld h, c
    ld h, c
    ld e, h
    ld e, h
    ld e, l
    ld b, h
    ld b, l
    ld d, d
    ld d, a
    ld a, $3f
    inc hl
    inc d
    ld [$0f0e], sp
    ld d, h
    ld d, c
    ld d, b
    ld d, c
    ld e, e
    ld e, h
    ld h, c
    ld e, b

jr_025_55f8:
    ld e, d
    ld h, c
    ld e, h
    ld e, l
    ld d, b
    ld d, c
    ld d, b
    ld d, [hl]
    ld c, $0f
    inc hl
    inc d
    ld [$1f1e], sp
    ld d, l
    ld d, e
    ld d, d
    ld d, e
    ld e, e
    ld e, h
    ld h, c
    ld e, [hl]
    ld h, b
    ld h, c
    ld e, h
    ld e, l
    ld d, d
    ld d, e
    ld d, d
    ld d, a
    ld e, $1f
    inc hl
    inc d
    ld [$3231], sp
    inc hl
    jp nz, Jump_025_5e00

    ld e, a
    ld h, d
    ld h, c
    ld h, c
    ld h, e
    ld e, a
    ld h, b
    inc hl
    adc $00
    ld sp, $2332
    inc [hl]
    ld a, [de]
    inc hl
    ld [c], a
    nop
    inc hl
    inc h
    db $10
    inc hl
    inc l
    db $10
    inc hl
    xor $00
    inc hl
    ld d, d
    inc e
    ld c, $0f
    inc hl
    nop
    db $10
    inc hl
    ld l, b
    db $10
    inc hl
    db $10
    db $10
    ld c, $0f
    inc hl
    ld d, d
    inc e
    ld e, $1f
    inc hl
    jr nz, jr_025_5665

    ld e, e
    ld e, b
    ld e, d
    ld e, l
    inc hl
    jr nc, jr_025_566c

    ld e, $1f
    inc hl
    ld d, d
    inc e
    inc hl
    ret nz

    db $10
    ld d, h

jr_025_5665:
    ld d, c
    ld e, e
    ld e, [hl]
    ld h, b
    ld e, l
    inc hl
    ld d, b

jr_025_566c:
    db $10
    inc hl
    ret nz

    db $10
    inc hl
    or h
    ld e, $55
    ld d, e
    ld e, [hl]
    ld e, a
    ld e, a
    ld h, b
    inc hl
    ld [hl], b
    db $10
    inc hl
    ret nc

    inc e
    nop
    ld [bc], a
    inc hl
    ld h, $27
    nop
    ld bc, $0302
    ld hl, $2322
    ld b, $02
    inc hl
    ld [bc], a
    nop
    ld h, $27
    rst $38
    inc hl
    inc d
    rlca
    ld [hl], $37
    inc hl
    ld [bc], a
    inc c
    ld [hl], $37
    inc hl
    inc d
    ld [$2928], sp
    inc hl
    ld [bc], a
    nop
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc hl
    ld [bc], a
    nop
    jr z, jr_025_56db

    inc hl
    inc d
    ld [$3938], sp
    inc hl
    ld [bc], a
    nop
    inc d
    dec d
    ld d, $17
    jr jr_025_56d9

    ld a, [de]
    dec de
    inc hl
    ld [bc], a
    nop
    jr c, jr_025_5700

    inc hl
    inc d
    ld [$2b2a], sp
    inc hl
    ld [bc], a
    nop
    inc c
    dec c
    ld b, [hl]
    ld b, a
    ld b, a
    ld c, c
    inc h
    dec h
    inc hl
    ld [bc], a

jr_025_56d9:
    nop
    ld a, [hl+]

jr_025_56db:
    dec hl
    inc hl
    inc d
    ld [$3b3a], sp
    db $10
    ld de, $1312
    inc e
    dec e
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    inc [hl]
    dec [hl]
    jr nc, jr_025_5700

    ld [de], a
    jr nz, jr_025_572c

    dec sp
    inc hl
    inc d
    ld [$2f2e], sp
    ld d, h
    ld d, c
    ld b, b
    ld b, c
    ld e, b
    ld e, c
    inc hl
    rst $00

jr_025_5700:
    ld bc, $405a
    ld b, c
    ld d, b
    ld d, [hl]
    ld l, $2f
    inc hl
    inc d
    ld [$3f3e], sp
    ld d, l
    ld d, e
    ld b, h
    ld b, l
    ld e, e
    ld e, h
    ld e, h
    ld h, c
    ld h, c
    ld e, h
    ld e, h
    ld e, l
    ld b, h
    ld b, l
    ld d, d
    ld d, a
    ld a, $3f
    inc hl
    inc d
    ld [$0f0e], sp
    ld d, h
    ld d, c
    ld l, b
    ld l, c
    ld e, e
    ld e, h
    ld h, c
    ld e, b

jr_025_572c:
    ld e, d
    ld h, c
    ld e, h
    ld e, l
    ld d, b
    ld d, c
    ld d, b
    ld d, [hl]
    ld c, $0f
    inc hl
    inc d
    ld [$1f1e], sp
    ld d, l
    ld d, e
    ld l, d
    ld l, e
    ld e, e
    ld e, h
    ld h, c
    ld e, [hl]
    ld h, b
    ld h, c
    ld e, h
    ld e, l
    ld d, d
    ld d, e
    ld d, d
    ld d, a
    ld e, $1f
    inc hl
    inc d
    ld [$3231], sp
    inc hl
    jp nz, Jump_025_5e00

    ld e, a
    ld h, d
    ld h, c
    ld h, c
    ld h, e
    ld e, a
    ld h, b
    inc hl
    adc $00
    ld sp, $2332
    inc [hl]
    ld a, [de]
    inc hl
    ld [c], a
    nop
    ld d, d
    ld d, e
    ld e, e
    ld e, h
    inc hl
    inc l
    db $10
    inc hl
    xor $00
    inc hl
    ld d, d
    inc e
    ld c, $0f
    inc hl
    nop
    db $10
    inc hl
    ld l, b
    db $10
    inc hl
    db $10
    db $10
    ld c, $0f
    inc hl
    ld d, d
    inc e
    ld e, $1f
    inc hl
    jr nz, jr_025_579a

    ld e, e
    ld e, b
    ld e, d
    ld e, l
    inc hl
    jr nc, jr_025_57a1

    ld e, $1f
    inc hl
    ld d, d
    inc e
    inc hl
    ret nz

    db $10
    ld d, h

jr_025_579a:
    ld d, c
    ld e, e
    ld e, [hl]
    ld h, b
    ld e, l
    inc hl
    ld d, b

jr_025_57a1:
    db $10
    inc hl
    ret nz

    db $10
    inc hl
    or h
    ld e, $55
    ld d, e
    ld e, [hl]
    ld e, a
    ld e, a
    ld h, b
    inc hl
    ld [hl], b
    db $10
    inc hl
    ret nc

    inc e
    nop
    ld [$c016], sp
    rst $18
    ldh a, [$f0]
    ld hl, sp-$07
    db $f4
    db $f4
    add sp, -$18
    db $f4
    or $b8
    cp c
    add a
    or a
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    ccf
    nop
    sbc a
    nop
    ld a, a
    nop
    cp a
    dec hl
    dec hl
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    ld a, [$fd00]
    nop
    cp $00
    db $fc
    call nc, Call_000_03d4
    ei
    rrca
    rrca
    rra
    rra
    rrca
    adc a
    rla
    rla
    rra
    ld e, a
    dec c
    adc l
    pop hl
    db $ed
    adc b
    xor d
    adc b
    xor d
    adc b
    xor e
    ld d, $42
    inc bc
    xor d
    adc b
    xor e
    ld de, $0155
    ld b, l
    ld de, $11d5
    dec d
    ld de, $01d5
    dec b
    ld de, $0155
    push bc
    ld d, $00
    ld bc, $f0f8
    pop af
    add sp, -$18
    ld hl, sp-$06
    ld [hl], b
    ld [hl], c
    ld [hl], a
    ld [hl], a
    nop
    add sp, $00
    ld [hl], b
    nop
    ld [$3000], sp
    nop
    add b
    nop
    ld [hl], b
    nop
    xor b
    dec hl
    dec hl
    nop
    rla
    nop
    ld c, $00
    stop
    inc c
    nop
    ld bc, $0e00
    nop
    dec d
    ld d, $2e
    inc bc
    sbc a
    cpl
    cpl
    rla
    rla
    cpl
    ld l, a
    dec e
    sbc l
    pop hl
    db $ed
    adc a
    ldh a, [$ae]
    sub c
    xor [hl]
    sub b
    and c
    sbc h
    sub d
    xor c
    ld d, d
    ld b, l
    sub h
    add d
    sbc b
    and d
    or a
    ld [$045b], sp
    db $db
    inc b
    ld l, h
    add e
    dec l
    ld b, d
    dec c
    ld [hl+], a
    dec c
    ld [hl+], a
    add hl, de
    ld b, [hl]
    add e
    ldh [$ac], a
    add b
    and a
    sub b
    and h
    sub e
    sub b
    and h
    ld d, b
    ld b, h
    sub b
    add h
    sbc b
    and d
    rst $30
    ld [$04fb], sp
    ld [hl], e
    inc c
    xor h
    inc de
    ld c, l
    sub d
    dec e
    jp nz, $421d

    add hl, de
    ld b, [hl]
    inc de
    dec hl
    add d
    add d
    rst $38
    rst $38
    ret z

    ret z

    ei
    ei
    db $d3
    db $d3
    cp e
    cp e
    rst $30
    rst $30
    inc sp
    ld c, e
    ld h, l
    ld h, l
    rst $38
    rst $38
    sub c
    sub c
    xor l
    xor l
    ld a, [c]
    ld a, [c]
    ld [de], a
    ld [de], a

jr_025_58ab:
    rst $30
    rst $30
    ld d, $00
    rrca
    add hl, hl
    rrca
    adc a
    rst $38
    rst $38
    db $db
    db $db
    ld bc, $00f1
    ret nz

    ld bc, $fb01
    ei
    db $10
    call c, $8800
    or a
    or a
    sbc e
    sbc e
    ld bc, $0169
    add c
    ld bc, $ad81
    xor l
    db $10
    inc e
    db $10
    jr jr_025_58ab

    rst $10
    ld d, $00
    ld [bc], a
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    ld a, [bc]
    ld d, $f9
    di
    ld d, $71
    inc bc
    adc h
    adc h
    nop
    jr nc, jr_025_58fd

    ei
    pop af
    ld d, $81
    dec b
    ld bc, $160b
    db $fc
    ldh a, [rNR21]
    sub b
    inc b
    inc d
    inc d
    ld l, b
    ld l, b
    ld d, $fc
    ldh a, [rSC]
    ld [hl-], a

jr_025_58fd:
    sbc a
    rst $38
    sub b
    rst $30
    cp a
    rst $08
    sbc [hl]
    and e
    sbc a
    xor a
    ld d, b
    ld [hl], a
    rst $38
    rst $38
    ld b, e
    ld b, h
    cp $f9
    inc c
    adc e
    cp $f1
    ld a, d
    ld b, l
    cp $f1
    dec c
    jp z, $fef9

    and d
    ld b, d
    ld a, a
    sbc a
    ld [hl], b
    sub a
    cp a
    ld c, a
    sbc [hl]
    ld h, e
    cp a
    ld c, a
    ld d, b
    or a
    rst $38
    ccf
    ld b, e
    ld b, e
    ld sp, hl
    db $fd
    dec c
    adc c
    ld sp, hl
    push af
    ld b, c
    ld a, c
    ei
    di
    add hl, bc
    call $f9f9
    db $db
    db $db
    ld a, [c]
    ld a, [c]
    ld d, $e4
    ld b, $05
    dec b
    cp e
    cp e
    ld d, $f2
    ld [$5757], sp
    ld a, [hl]
    add c
    ld [hl], h
    adc e
    ld a, [hl-]
    call nz, Call_025_609d
    ld [c], a
    add hl, de
    ld a, [c]
    dec b
    db $f4
    ld [bc], a
    adc b
    ld [hl], d
    or c
    ld bc, $1941
    reti


    dec b
    ld h, c
    adc l
    dec l
    ld b, c
    ld bc, $0f2d
    daa
    add hl, de
    ld b, l
    ld [hl], e
    add b
    ld [hl], h
    add c
    inc [hl]
    jp nz, $6295

    ldh [$15], a
    ldh a, [rDIV]
    ldh a, [rDIV]
    add b
    ld a, d
    pop af
    ld bc, $19e1
    ld e, c
    dec h
    or c
    dec c
    db $dd
    ld bc, $8d51
    rra
    ld b, a
    add hl, sp
    dec b
    ld d, $e0
    ld d, $16
    ld a, [$16f2]
    ldh a, [rNR21]
    ld d, $fa
    ld a, [c]
    call nz, $a4cd
    db $ed
    or b
    ret c

    sbc l
    xor l
    ld c, l
    db $fd
    ld c, a
    rst $10
    ld c, l
    push de
    dec h
    xor l
    ld a, h
    ld a, h
    cp $c2
    rst $08
    or c
    adc a
    ld c, c
    rra

jr_025_59b0:
    sbc a
    inc e
    sbc h
    ld e, $9e
    adc l
    call Call_000_3838
    ld e, [hl]
    ld h, [hl]
    add a
    ei
    add a
    pop hl
    adc a
    db $ed
    rst $08
    rst $28
    and h
    or h
    and a
    or a
    ld a, e
    ld a, e
    xor l
    cp [hl]
    ld d, e
    ld e, a
    ld d, a
    db $fc
    ld e, d
    call c, $a829
    xor c
    cp $ff
    rst $38
    sbc $de
    or l
    ld a, l
    jp z, $eafa

    ccf
    ld e, d
    dec sp
    sub h
    dec d
    sub l
    ld a, a
    rst $38
    rst $38
    inc e
    inc e
    ld a, d
    ld h, [hl]
    pop hl
    rst $18
    pop hl
    add a
    pop af
    or a
    di
    rst $30
    dec h
    dec l
    push hl
    db $ed
    ld a, $3e
    ld a, a
    ld b, e
    di
    adc l
    pop af
    sub d
    ld hl, sp-$07
    jr c, jr_025_5a3c

    ld a, b
    ld a, c
    or c

Call_025_5a06:
    or e
    inc hl
    or e
    dec h
    or a
    dec c
    dec de
    cp c
    or l
    or d
    cp a
    ld a, [c]
    db $eb
    or d
    xor e
    and h
    or l
    cp a
    cp a
    xor $ee
    call z, $88cc
    xor b
    ld d, $e6
    jr nz, jr_025_59b0

    xor l
    add l
    or l
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    inc e
    inc e
    ld h, b
    ld h, b
    add b
    add e
    nop
    rlca
    nop
    rlca
    inc bc
    inc bc
    nop
    nop
    ret nz

    ret nz

jr_025_5a3c:
    jr c, jr_025_5a76

    ld b, $06
    ld bc, $00c1
    ldh [rP1], a
    ldh [$fd], a
    db $fd
    ld [hl], a
    ld [hl], a
    inc sp
    inc sp
    ld de, $1615
    ld d, $30
    or c
    or l
    and c
    xor l
    nop
    ldh [rSB], a
    pop bc
    inc bc
    inc bc
    ld c, $0e
    ld hl, sp-$08
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    pop hl
    db $ed
    jp nz, $02cb

    dec de
    ld b, $f7
    rrca
    rrca
    pop af
    pop af
    ld bc, $ff01
    rst $38
    nop

jr_025_5a76:
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld a, [$4016]
    inc sp
    ld d, $4b
    ld [hl-], a
    push de
    ld d, $4a
    inc sp
    ld a, l
    nop
    xor d
    db $e4
    db $ec
    ld [hl+], a
    xor d
    ld [hl+], a
    and d
    inc hl
    and e
    inc hl
    and e
    ld b, a
    ld b, a
    call $9bcd
    sbc e
    add $e6
    ld c, a
    ld l, a
    ret nz

    rst $28
    rrca
    adc a
    ld hl, sp-$06
    ld c, b
    ld c, d
    ld c, a
    ld c, a
    db $fc
    db $fc
    ldh [$f8], a
    rst $08

jr_025_5aad:
    rst $08
    dec e
    sbc [hl]
    push hl
    or $07
    ld d, a
    jr c, jr_025_5b2e

    ld d, $f0
    jr nz, jr_025_5aad

    db $f4
    and b
    rst $20
    or b
    pop de
    rst $38
    rst $38
    dec d
    dec d
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    rst $08
    cpl
    dec b
    rst $20
    dec c
    adc e
    rst $38
    rst $38
    ld d, c
    ld d, c
    ld d, $9a
    ld [hl-], a
    rlca
    rra
    di
    di
    cp b
    ld a, c
    and a
    ld l, a
    ldh [$ea], a
    inc e
    ld e, $16
    nop
    jr nc, jr_025_5b49

    ld h, a
    ld a, [c]
    or $03
    rst $30
    ldh a, [$f1]
    rra
    ld e, a
    ld [de], a
    ld d, d
    ld a, [c]
    ld a, [c]
    ccf
    ccf
    daa
    scf
    ld b, h
    ld d, l
    ld b, h
    ld b, l
    call nz, $c4c5
    push bc
    ld [c], a
    ld [c], a
    or e
    or e
    reti


    reti


    add a
    or a
    ld b, e
    db $d3
    ld b, b
    ret c

    ld h, b
    rst $28
    ldh a, [$f0]

jr_025_5b0f:
    adc a
    adc a
    add b
    add b
    rst $38
    rst $38
    nop
    rlca
    add b
    add e
    ret nz

    ret nz

    ld [hl], b
    ld [hl], b
    rra
    rra
    ld d, $2a
    ld [hl-], a
    add [hl]
    cp c
    add c
    cp [hl]
    sbc l
    and d
    add $f9
    add sp, -$09
    sbc d
    add l

jr_025_5b2e:
    rst $08
    ret nz

    adc $c1
    ld b, $f9
    ld [hl], c
    adc [hl]
    call $fe32
    ld bc, $f708
    sbc d
    ld h, l
    ccf
    ret nz

    ld e, $e1
    nop
    rst $38
    ld e, d
    and l
    rst $18
    jr nz, jr_025_5b0f

jr_025_5b49:
    add hl, sp
    sub l
    ld l, d
    dec sp
    call nz, $847b
    ld a, c

jr_025_5b51:
    add [hl]
    ld bc, $51f9
    xor c
    pop de
    dec l
    pop bc
    dec a
    sub l
    ld l, c
    add hl, sp
    push bc
    and a
    ld b, a
    add hl, sp
    push bc
    nop
    rst $38
    ld h, [hl]
    sbc c
    ld e, c
    and [hl]
    jr z, @-$27

    inc a

jr_025_5b6b:
    jp $b34c


    ld b, b
    cp a
    jr nz, jr_025_5b51

    ld d, $40
    ld b, b
    sbc c
    ld h, [hl]
    nop
    rst $38
    ld d, $56
    ld b, [hl]
    ld h, [hl]
    sbc c
    sbc d
    ld h, l
    inc d
    db $eb
    inc a
    jp $cd32


    ld [bc], a
    db $fd
    inc b
    ei
    jr nz, jr_025_5b6b

    ld b, b
    cp a
    ld c, h
    or e
    inc a
    jp $d728


    ld e, c
    and [hl]
    ld h, [hl]
    sbc c
    ld d, $56
    ld c, b
    sbc c
    ld h, [hl]
    ld d, $7c
    ld b, b
    inc b
    ei
    ld [bc], a
    db $fd
    ld [hl-], a
    call $c33c
    inc d
    db $eb
    sbc d
    ld h, l
    ld d, $7c
    ld b, b
    xor l
    call $a080
    add b
    rst $28
    and b
    rst $08
    xor a
    add b
    xor l
    call $e080
    add b
    rst $28
    sbc [hl]
    sbc [hl]
    nop
    nop
    ld d, $56
    ld b, b
    rst $38
    nop
    ld d, $b0
    ld b, d
    ld [hl], l
    ld [hl], e
    ld bc, $0105
    rst $30
    dec b
    di
    push af
    ld bc, $7375
    ld bc, $0107
    rst $30
    and b
    adc a
    xor a
    ret nz

    ld d, $a0
    ld c, b
    ld d, $b6
    ld b, [hl]
    ld d, $b6
    ld b, d
    dec b
    pop af
    push af
    inc bc
    ld d, $c0
    ld c, b
    add b
    sbc a
    add a
    ld hl, sp-$6d
    db $ec
    sbc h
    and e
    adc $d1
    sbc h
    and e
    pop bc
    sbc $8e
    or c
    ld b, b
    cp a
    ld [hl], a
    adc b
    db $d3
    inc l
    db $fc
    inc bc
    ld a, [hl]
    add c
    inc e
    db $e3
    add c
    ld a, [hl]
    adc $31
    jr c, @-$37

    or a
    ld c, b
    dec b
    ld a, [$8d72]
    jp c, $f825

    rlca
    rst $30
    ld [$3cc3], sp
    inc bc
    ei
    pop de
    dec l
    sbc l
    ld h, c
    add hl, sp
    push bc
    ld h, c
    sbc c
    ld h, e
    sub e
    pop hl
    dec e
    ld [hl], c
    adc c
    ld d, $70
    ld b, b
    ld d, $4c

jr_025_5c34:
    ld b, b
    ld d, $40
    ld d, h
    ld d, $56
    ld c, b
    ld d, $56
    ld b, b
    ld d, $90
    ld b, b
    ld d, $6c
    ld b, b
    ld d, $60
    ld d, h
    ld d, $56
    ld b, [hl]
    add b
    ld a, a

Call_025_5c4c:
    ld h, b
    sbc a
    ld d, $4e
    ld e, d
    inc bc
    db $fc
    inc b
    ei
    add c
    ld a, [hl]
    ld b, d
    cp l
    inc d
    db $eb
    jr z, jr_025_5c34

    ld d, $94
    ld d, b
    ld b, d
    cp l
    add c
    ld a, [hl]
    ld d, $fc
    ldh a, [rNR21]
    ld a, [hl+]
    jr nc, @+$18

    ld d, [hl]
    ld b, h
    ld d, $9c
    jr nc, jr_025_5c87

    and h
    ld e, b
    ld d, $56
    ld b, e
    nop
    rst $38
    rst $38
    ld d, $2a
    ld [hl-], a
    ld d, $d0
    rst $38
    dec e
    ldh a, [rIF]
    rst $28
    db $10
    ret nc

    cpl
    add b

jr_025_5c87:
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
    nop
    add e
    add hl, bc
    or $f3
    inc c
    rrca
    ldh a, [rNR21]
    and b
    rst $38
    ld c, l
    ld d, $9f
    ld l, a
    ld c, l
    ld d, $ff
    ld l, a
    ld c, l
    ld d, $5f
    ld a, a
    ld c, l
    ld d, $bf
    ld a, a
    dec l
    nop
    ld [bc], a
    inc c
    nop
    ld bc, $0302
    inc b
    dec b
    ld h, $27
    jr z, jr_025_5d0a

    ld a, [hl+]
    dec hl
    inc l
    dec l
    inc b
    dec b
    inc c
    nop
    nop
    rst $38
    inc c
    inc d
    rlca
    inc c
    nop
    nop
    inc d
    dec d
    ld [hl], $37
    jr c, jr_025_5d30

    ld a, [hl-]
    dec sp
    inc a
    dec a
    inc d
    dec d
    ld b, $0c
    ld de, $0a0d
    dec bc
    ld b, h
    ld b, l
    ld l, $2f
    ld e, d
    ld e, e
    ld e, e

jr_025_5d0a:
    ld e, d
    jr nc, @+$33

    ld b, l
    ld b, [hl]
    jr nz, jr_025_5d32

    inc c
    ld [de], a
    dec bc
    rlca
    ld a, [de]
    dec de
    ld d, h
    ld d, l
    ld a, $3f
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld [hl-], a
    inc sp
    ld d, l
    ld d, [hl]
    inc e
    dec e
    ld [$530c], sp
    dec bc
    ld b, b
    ld b, d
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld e, c

Call_025_5d30:
jr_025_5d30:
    ld b, h
    ld b, [hl]

jr_025_5d32:
    ld e, c
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld b, c
    ld b, e
    ld [$0c09], sp
    inc d
    ld [$1716], sp
    ld d, b
    ld d, d
    ld b, a
    ld c, b
    ld c, b
    ld c, b
    ld d, a
    ld b, a
    ld c, c
    ld e, b
    ld c, b
    ld c, b
    ld c, b
    ld c, c
    ld d, c
    ld d, e
    jr @+$1b

    inc c
    inc d
    ld [$3534], sp
    ld a, [bc]
    dec bc
    ld b, c
    ld b, d
    ld b, c
    ld b, d
    ld d, h
    ld e, c
    ld e, c
    ld d, [hl]
    inc c
    call nz, Call_000_2000
    ld hl, $3534
    inc c
    inc d
    ld [$3435], sp
    ld a, [de]
    dec de
    ld d, c
    ld d, d
    ld d, c
    ld d, d
    ld d, h
    ld d, l
    ld d, l
    ld d, [hl]
    inc c
    db $e4
    nop
    inc e
    dec e
    dec [hl]
    inc [hl]
    inc c
    or h
    ld a, [bc]
    ld c, $0f
    inc c
    ld [bc], a
    db $10
    ld c, d
    ld c, e
    ld c, e
    ld c, h
    inc c
    ld [bc], a
    ld [de], a
    inc c
    jp nc, Jump_000_1e0c

    rra
    inc c
    ld [hl+], a
    db $10
    ld c, l
    ld c, [hl]
    ld c, [hl]
    ld c, a
    inc c
    ld [hl+], a
    ld [de], a
    inc c
    ld a, [c]
    inc c
    inc h
    dec h
    inc c
    db $c2, $00, $0c

    add sp, $00
    inc c
    adc $00
    inc h
    dec h
    inc c
    jp nc, $0c0c

    ldh [rSC], a
    inc c
    add sp, $02
    inc c
    ldh a, [rP1]
    inc c
    ld a, [c]
    inc c
    inc c
    nop
    ld [de], a
    inc c
    ld [$0c14], sp
    add b
    db $10
    inc c
    ld d, h
    inc e
    inc c
    inc h
    jr jr_025_5dd7

    ld [hl], b
    rra
    ld bc, $420c
    db $10
    inc c
    add sp, $00
    inc c
    ld c, [hl]
    ld [de], a

jr_025_5dd7:
    inc c
    ld d, d
    ld e, $0c
    ldh [rP1], a
    inc c
    add sp, $00
    inc e
    dec e
    inc [hl]
    dec [hl]
    inc c
    ld [hl], b
    inc e
    nop
    ld [bc], a
    inc c
    nop
    ld bc, $0302
    inc b
    dec b
    ld h, $27
    jr z, jr_025_5e1d

    ld a, [hl+]
    dec hl
    inc l
    dec l
    inc b
    dec b
    inc c
    nop
    nop
    rst $38
    inc c
    inc d

Jump_025_5e00:
    rlca
    inc c
    nop
    nop
    inc d
    dec d
    ld [hl], $37
    jr c, jr_025_5e43

    ld a, [hl-]
    dec sp
    inc a
    dec a
    inc d
    dec d
    ld b, $0c
    ld de, $0a0d
    dec bc
    ld b, h
    ld b, l
    ld l, $2f
    ld e, d
    ld e, e
    ld e, e

jr_025_5e1d:
    ld e, d
    jr nc, @+$33

    ld b, l
    ld b, [hl]
    jr nz, jr_025_5e45

    inc c
    ld [de], a
    dec bc
    rlca
    ld a, [de]
    dec de
    ld d, h
    ld d, l
    ld a, $3f
    ld e, h
    ld e, h
    ld e, h

Call_025_5e31:
    ld e, h
    ld [hl-], a
    inc sp
    ld d, l
    ld d, [hl]
    inc e
    dec e
    ld [$530c], sp
    dec bc
    ld b, b
    ld b, d
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld e, c

jr_025_5e43:
    ld b, h
    ld b, [hl]

jr_025_5e45:
    ld e, c
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld b, c
    ld b, e
    ld [$0c09], sp
    inc d
    ld [$1716], sp
    ld d, b
    ld d, d
    ld b, a
    ld c, b
    ld c, b
    ld c, b
    ld d, a
    ld b, a
    ld c, c
    ld e, b
    ld c, b
    ld c, b
    ld c, b
    ld c, c
    ld d, c
    ld d, e
    jr jr_025_5e7e

    inc c
    inc d
    ld [$3534], sp
    ld a, [bc]
    dec bc
    ld b, c
    ld b, d
    ld h, b
    ld h, c
    ld d, h
    ld e, c
    ld e, c
    ld d, [hl]
    ld b, c
    ld b, d
    ld b, c
    ld b, d
    jr nz, jr_025_5e9b

    inc [hl]
    dec [hl]
    inc c
    inc d

jr_025_5e7e:
    ld [$3435], sp
    ld a, [de]
    dec de
    ld d, c
    ld d, d
    ld h, d
    ld h, e
    ld d, h
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, c
    ld d, d
    ld d, c
    ld d, d
    inc e
    dec e
    dec [hl]
    inc [hl]
    inc c
    or h
    ld a, [bc]
    ld c, $0f
    inc c
    ld [bc], a
    db $10

jr_025_5e9b:
    ld c, d
    ld c, e
    ld c, e
    ld c, h
    inc c
    ld [bc], a
    ld [de], a
    inc c
    jp nc, Jump_000_1e0c

    rra
    inc c
    ld [hl+], a
    db $10
    ld c, l
    ld c, [hl]
    ld c, [hl]
    ld c, a
    inc c
    ld [hl+], a
    ld [de], a
    inc c
    ld a, [c]
    inc c
    inc h
    dec h
    inc c
    db $c2, $00, $0c

    add sp, $00
    inc c
    adc $00
    inc h
    dec h
    inc c
    jp nc, $0c0c

    ldh [rSC], a
    inc c
    add sp, $02
    inc c
    ldh a, [rP1]
    inc c
    ld a, [c]
    inc c
    inc c
    nop
    ld [de], a
    inc c
    ld [$0c14], sp
    add b
    db $10
    inc c
    ld d, h
    inc e
    inc c
    inc h
    jr jr_025_5eec

    ld [hl], b
    rra
    ld bc, $420c
    db $10
    inc c
    add sp, $00
    inc c
    ld c, [hl]
    ld [de], a

jr_025_5eec:
    inc c
    ld d, d
    ld e, $0c
    ldh [rP1], a
    inc c
    add sp, $00
    inc e
    dec e
    inc [hl]
    dec [hl]
    inc c
    ld [hl], b
    inc e
    nop
    ld [$0909], sp
    rst $38
    ld a, [c]
    rrca
    rrca
    ld a, [hl-]
    add hl, sp
    ld e, b
    ld e, d
    xor d
    cp b
    ret


    rrc c
    rst $38
    ld a, [c]
    rst $38
    rst $38
    xor d
    ld d, l
    add hl, bc
    ld [de], a
    ld [bc], a
    add hl, bc
    rst $38
    ld a, [c]
    ldh a, [$f0]
    sbc h
    ld e, h
    ld e, d
    ld a, [de]
    dec d
    ld e, l
    db $d3
    sub e
    xor e
    cp c
    ret


    rrc c
    jr nc, @+$0a

    sub l
    db $dd
    db $d3
    sub e
    add hl, bc
    ld b, b
    ld [$b9aa], sp
    ret z

    ret z

    xor b
    cp b
    rst $08
    rst $08
    and b
    or l
    push de
    push de
    ld [$09ea], a
    ld d, $07
    ld d, h
    ld d, h
    ld d, h
    xor d
    xor d
    add hl, bc
    ld d, $07
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    rst $38
    rst $38
    sub l
    ld e, l
    inc de
    inc de
    dec d
    dec e
    di
    di
    dec b
    xor l
    dec bc
    dec bc
    ld d, a
    ld d, a
    rst $38
    rst $38
    ld h, a
    ld h, a
    ld h, e
    ld h, e
    scf
    scf
    ld [hl], $36
    ld e, $1e
    inc e
    inc e
    inc c
    inc c
    inc b
    inc b
    add e
    sub e
    rst $00
    rst $00
    add a
    sub a
    add $c6
    push bc
    push bc
    set 1, e
    ld h, a
    ld h, a
    ld h, l
    ld h, l
    db $e3
    db $eb
    add hl, bc
    or b
    nop
    ld h, e
    ld l, e
    ld [hl], a
    ld a, a
    ld [hl], e
    ld [hl], e
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add l
    sub l
    rst $00
    rst $10
    add l
    sbc l
    jp $c3d3


    set 0, e
    set 4, e
    db $eb
    db $c3, $c3, $0f


    rrca
    rra
    add hl, bc
    jp nc, $3f03

    ccf
    scf
    scf
    scf
    scf
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    db $fd
    db $fd
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    cp $fe
    db $e3
    db $e3
    db $e3
    db $eb
    add hl, bc
    ldh a, [rP1]
    rst $30
    rst $30
    di
    di
    rst $30
    rst $30
    rst $30
    rst $30
    set 1, e
    add a
    sub a
    add e
    or e
    add b
    xor b
    pop bc
    push de
    pop bc
    ret


    add hl, bc
    or b
    nop
    xor e
    xor e
    add a
    add a
    add c
    and e
    add c
    sub l
    add c
    xor a
    add c
    sbc l
    add c
    xor c
    add c
    sbc c
    adc e
    adc e
    add a
    sub a
    jp $c0db


    ret nc

    pop bc
    ret


    pop bc
    ret


    pop bc
    pop bc
    db $e3
    db $eb
    add e
    xor e
    add a
    sub a
    set 1, e
    rst $00
    rst $10
    set 1, e
    and e
    and e
    rst $20
    rst $20
    rst $38
    rst $38
    rst $00
    rst $10
    add e
    sub e
    add e
    sub e
    add e
    sbc e
    add hl, bc
    ld b, [hl]
    db $10
    ld b, c
    ld c, c
    cp c
    ld sp, hl
    add l
    sub l
    rst $00
    rst $00
    add l
    adc l
    add hl, bc
    add $01
    db $db
    add hl, bc
    call z, $c600
    add $ec
    db $ec
    db $fc
    db $fc
    db $ec
    db $ec
    ld hl, sp-$08
    ldh a, [$09]
    ld l, d
    ld de, $7f7f
    ld a, [hl]
    ld a, [hl]
    ld a, l
    ld a, l
    ld a, $3e
    ld a, l
    ld a, l
    cp [hl]
    cp [hl]
    ld a, a
    ld a, a
    ld a, $3e
    ldh [$e0], a
    ldh [$e0], a
    ret c

    ret c

    cp b
    cp b
    add hl, bc
    ld h, d
    ld [de], a
    add $c6
    add hl, bc
    or $fc
    ld [hl], e
    ld [hl], e
    add hl, bc
    sbc $00
    add hl, bc
    db $d2, $00, $0e

    ld c, $0e
    ld c, $0c
    inc c
    ccf
    ccf
    ld a, $3e
    dec e
    dec e
    ld e, $1e
    add hl, bc
    or h
    db $10
    rrca
    rrca
    ld c, $0e
    ld h, a
    ld h, a
    rst $30
    rst $30
    add hl, bc
    ld [c], a
    nop
    ld a, a
    ld a, a
    rst $18
    rst $18
    ld e, a
    ld e, a
    rra
    rra
    add hl, bc
    sub b
    nop
    ld b, e
    ld d, e
    jp $83eb


    sub e
    add e
    xor e
    add e
    cp e
    add e
    sub e
    add hl, bc
    db $10
    db $10
    add e
    xor e
    add c
    xor l
    add c
    cp a
    ld bc, $8339
    or a
    add e

Call_025_609d:
    sbc e
    cp a
    cp a
    cp [hl]
    cp [hl]
    sbc l
    sbc l
    add hl, bc
    or [hl]
    ld d, $03
    inc bc
    add d
    add d
    add d
    adc d
    add d
    xor d
    add d
    sbc d
    add e
    adc e
    inc bc
    inc de
    add c
    sub c
    push de
    push de
    pop hl
    pop hl
    add c
    push bc
    add c
    and l
    add c
    db $ed
    add c
    cp c
    add c
    sub l
    add c
    sub c
    add hl, bc
    call nz, $ff12
    rst $38
    add hl, bc
    db $fc
    nop
    add hl, bc
    db $fc
    nop
    dec sp
    dec sp
    ld a, a
    ld a, a
    cp l
    cp l
    dec sp
    dec sp
    cp l
    cp l
    ld a, a
    ld a, a
    cp a
    cp a
    cp a
    cp a
    and d
    and d
    and $e6
    jp $a3cb


    and e
    ld h, e
    ld l, e
    pop hl
    jp hl


    db $e3
    db $e3
    pop bc
    ret


    ccf
    ccf
    pop af
    pop af
    or b
    or e
    ld a, c
    ld a, d
    ld l, c
    ld l, d
    db $ec
    db $ed
    add $c7
    and $ef
    pop bc
    ret


    pop bc
    reti


    add hl, bc
    ld h, b
    ld hl, $09d9
    add $01
    db $d3
    add a
    add a
    add e
    or e
    add hl, bc
    ld [hl], d
    inc hl
    add e
    add a
    and a
    adc e
    adc e
    rst $08
    rst $08
    add hl, bc
    ld b, b
    ld de, $09ab
    ret c

    ld de, $839b
    sbc e
    xor e
    xor e
    rlca
    rlca
    add c
    and e
    add c
    or a
    add c
    cp a
    add c
    sbc a
    add c
    sbc l
    add c
    sbc c
    add e
    db $db
    add e
    or e
    add e
    cp e
    add hl, bc
    and h
    ld hl, $879b
    sbc a
    rst $00
    rst $08
    pop hl
    jp hl


    and e
    and e
    jp $c3c7


    set 4, e
    rst $20
    db $d3
    db $db
    db $e3
    rst $20
    db $e3
    db $eb
    ld [c], a
    ld a, [$fae2]
    jp nz, $c2d2

    jp nz, $d6c6

    and [hl]
    and [hl]
    db $f4
    db $f4
    xor h
    xor h
    pop bc
    ret


    db $e3
    db $e3
    pop hl
    jp hl


    ld h, e
    ld l, e
    and e
    and e
    jp $e6cb


    and $a2
    and d
    and $ee
    add hl, bc
    ld h, b
    db $10
    ld l, h
    ld l, h
    ld a, b
    ld a, b
    jr nc, @+$32

    jr nc, @+$32

    jr nz, jr_025_61a3

    rst $28
    rst $28
    rst $28
    rst $28
    cp $fe
    xor $ee
    db $fc
    db $fc
    call z, $d8cc
    ret c

    ld hl, sp-$08
    add hl, bc
    inc e
    db $10
    add c
    xor e
    add c
    sbc l
    add c
    cp a
    ld bc, $091d
    xor b
    jr nz, jr_025_61ab

    ret nc

jr_025_61a3:
    inc l
    ld [hl], a
    ld [hl], a
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    add hl, bc

jr_025_61ab:
    or b
    nop
    db $c3, $cb, $09


    jr z, jr_025_61c2

    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    ldh a, [rNR41]
    rst $08
    rst $08
    rst $08
    rst $18
    rst $00
    rst $10
    rst $00
    rst $10
    add c

jr_025_61c2:
    sub c
    add c
    sub l
    add b
    cp b
    add c
    db $ed
    add c
    and l
    add c
    push bc
    pop hl
    pop hl
    push de
    push de
    rst $00
    rst $08
    add a
    adc a
    add hl, bc
    and d
    jr nz, jr_025_61da

    dec d

jr_025_61da:
    pop bc
    ret


    pop hl
    jp hl


    db $d3
    add hl, bc
    ld l, e
    ld hl, $c3c3
    rst $00
    rst $00
    db $eb
    db $eb
    add hl, bc
    jr nc, jr_025_621b

    rst $38
    rst $38
    add a
    add a
    adc a
    adc a
    sbc a
    sbc a
    rst $28
    rst $28
    rst $18
    rst $18
    add hl, bc
    ld h, $20
    rst $38
    rst $38
    add c
    sub c
    add c
    adc c
    pop bc
    pop de
    add hl, bc
    ld h, b
    inc hl
    ret


    db $e3
    db $eb

jr_025_6208:
    add c
    adc e
    add c
    sub a
    pop bc
    set 0, c
    rst $00
    pop hl
    rst $28
    pop bc
    call $aba1
    pop bc
    push bc
    add hl, bc
    ld l, d
    ld [hl+], a

jr_025_621b:
    jp $e2cb


    ld a, [c]
    db $c2, $da, $09

    xor b
    jr nc, jr_025_6208

    rst $20
    pop hl
    jp hl


    pop af
    pop af
    pop hl

jr_025_622b:
    pop hl
    pop af
    pop af
    pop af
    pop af
    db $eb
    db $eb
    di
    di
    add hl, bc
    db $fc
    jr nz, @+$0b

    db $fc
    jr nz, jr_025_622b

    ldh a, [rSVBK]
    ld [hl], b
    ld [hl], b
    ld [hl], b
    jr nz, jr_025_6262

    add hl, bc
    ld h, b
    db $10
    ld a, h
    ld a, h
    add hl, bc
    and $20
    jr c, jr_025_6284

    db $10
    db $10
    db $10
    db $10
    add hl, bc
    or b
    ld [bc], a
    db $e3
    db $eb
    rst $30
    rst $38
    add hl, bc
    ld a, [$f002]
    ldh a, [$09]
    add b
    db $10
    ldh [$e0], a
    ret nz

jr_025_6262:
    add hl, bc
    ld hl, sp+$33
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $ff09
    ldh a, [rNR34]
    ld e, $ff
    rst $38
    di
    di
    db $e3
    db $e3
    add a
    rst $20
    add [hl]
    or $8e
    xor [hl]
    adc [hl]
    adc [hl]

jr_025_6284:
    adc h
    adc h
    adc h
    sbc h
    call z, $ccfc
    call c, Call_025_5c4c
    ld l, b
    add hl, bc
    jp hl


    inc hl
    add hl, bc
    ld [$7820], a
    ld a, b
    ld l, h
    ld l, h
    add hl, bc
    adc h
    db $10
    and $ee
    add hl, bc
    jr nz, jr_025_62ed

    ld d, l
    add hl, bc
    ld a, c
    ld bc, $5209
    ld b, [hl]
    nop
    nop
    add b
    add b
    add hl, bc
    ld h, b
    ld b, b
    ld d, b
    ld d, b
    and b
    and b
    add hl, bc
    ld e, h
    ld b, d
    nop
    nop
    dec b
    dec b
    jr z, @+$2a

    add hl, bc
    ld d, b
    ld c, b
    ld d, h
    ld d, h
    add hl, bc
    ld h, [hl]
    ld b, b
    add hl, bc
    ld h, d
    ld b, b
    nop
    nop
    add hl, bc
    ld d, b
    ld b, d
    ld [hl+], a
    ld [hl+], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    add hl, bc
    rst $38
    ldh a, [$09]
    ld l, d
    nop
    ld d, h
    ld d, h
    xor b
    xor b
    add hl, bc
    ld l, d
    nop
    add hl, bc
    ld a, h
    ld c, a
    ld bc, $0101
    ld a, [bc]
    ld a, [bc]
    dec d
    dec d
    add hl, bc
    sub [hl]
    ld b, b
    add hl, bc

jr_025_62ed:
    jp nz, Jump_000_2a40

    ld a, [hl+]
    dec b
    dec b
    xor d
    xor d
    dec d
    dec d
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld d, l
    ld [bc], a
    ld [bc], a
    add hl, bc
    sbc b
    ld b, h
    add hl, bc
    nop
    ld b, h
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ret nc

    inc c
    add hl, bc
    ret nc

    inc e
    add b
    add b
    add hl, bc
    ld hl, sp+$34
    add hl, bc
    ld a, [c]
    ld [hl-], a
    add hl, bc
    ld l, d
    db $10
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    xor $ee
    and $e6
    rst $20
    rst $20
    add hl, bc
    or b
    inc a
    add hl, bc
    ldh a, [$38]
    add b
    add b
    add b
    add b
    db $e4
    db $e4
    nop
    ld de, $6e11
    rst $38
    add b
    ccf
    nop
    cp $81
    ld b, a
    jr z, jr_025_63ac

    db $10
    rst $38
    add b
    ld a, a
    nop
    ld h, a
    jr jr_025_6382

    ld b, d
    cp a
    ret nz

    ld a, a
    nop
    db $e3
    sbc h

jr_025_634c:
    ld [hl], a
    ld [$02fd], sp
    sbc h
    ld h, e
    rlca
    cp b
    ccf
    ret nz

    db $fd
    ld [bc], a
    ld d, b
    xor a
    rst $00
    jr c, jr_025_634c

    db $10
    db $fc
    nop
    ld sp, hl
    dec b
    cp c
    dec b
    di
    dec bc
    di
    dec bc
    db $d3
    dec hl
    ld a, e
    add a
    cp c
    dec b
    db $fd
    ld bc, $1be5
    ld de, $b9af
    ld b, l
    ld a, [c]
    ld a, [bc]
    inc sp
    rlc a
    rst $20
    rst $38
    rst $38
    rst $08
    rst $08
    ld hl, sp-$08

jr_025_6382:
    nop
    sbc l
    cp b
    ld b, a
    rst $38
    nop
    rst $38
    nop
    db $e3
    inc e
    ld [hl], a
    adc b
    ld a, $3e
    jp $01c3


    ld sp, hl
    pop hl
    dec d
    ld sp, hl
    dec b
    di
    dec bc
    inc de
    xor e
    cp c
    ld b, l
    jp hl


    dec d
    db $fd
    inc bc
    ld sp, hl
    dec b
    add hl, sp
    ld b, l
    ld a, [$da06]
    ld h, $7f
    add e

jr_025_63ac:
    db $fd
    ld bc, $10ef
    nop
    rst $38
    ei
    inc b
    ei
    inc b
    ld b, b
    cp a
    rst $28
    db $10
    rrca
    ldh a, [$ef]
    db $10
    add hl, bc
    ret nc

    ld e, d
    rst $38
    rst $38
    add hl, bc
    ret nc

    ld e, d
    nop
    nop
    add b
    rst $18
    adc a
    ret nc

    adc a
    ret nc

    add b
    ret nz

    add hl, bc
    nop
    ld h, h
    ld bc, $f1fb
    dec bc
    pop af
    dec bc
    ld bc, $0903
    db $10
    ld h, h
    ld a, h
    ld a, h
    jp $80c3


    sbc a
    add a
    xor b
    sbc a
    and b
    rst $08
    ret nc

    ret z

    push de
    sbc l
    and d
    di
    di
    rra
    rra
    ld bc, $1db9
    pop hl
    db $fd
    ld bc, $01ff
    call nz, $e93a
    dec d
    sub a
    xor b
    cp a
    ret nz

    sbc a
    and b
    sbc h
    and d
    ld e, a
    ld h, b
    ld e, e
    ld h, h
    cp $c1
    cp a
    add b
    rst $38
    ld bc, $21dd
    ei
    rlca
    cp c
    ld b, c
    db $fc
    nop
    cp $00
    add $28
    db $ec
    db $10
    cp a
    add b
    rst $18
    ldh [$dd], a
    ldh [rVBK], a
    ld d, b
    ld c, a
    ld d, b
    ld c, e
    ld d, h
    sbc $e1
    sbc l
    and b
    cp a
    add b
    and a
    ret c

    adc b
    push af
    sbc l
    and d
    ld c, a
    ld d, b
    call z, $e0d3

jr_025_643b:
    rst $20

jr_025_643c:
    rst $38
    rst $38
    rst $38
    nop

jr_025_6440:
    rst $18
    jr nz, jr_025_643b

    dec b

jr_025_6444:
    cp a
    ld b, b
    rst $38
    nop
    cp $01
    rst $00
    jr z, jr_025_643c

    add hl, bc
    ld e, a
    ld h, e
    adc $d1
    rst $08
    ret nc

    set 2, h
    sbc $e1
    sbc l
    and d
    sbc a
    and b
    add a
    ld hl, sp-$68
    push hl
    sbc l
    and d
    rst $08
    ret nc

    ret


    sub $e0
    rst $20
    rst $18
    rst $18
    cp $fe
    add hl, hl
    jr c, jr_025_64cf

    dec de
    ld hl, sp+$03
    cp a
    ld b, b
    ld a, [bc]
    push af
    db $e3
    inc e
    rst $30
    ld [$42bc], sp
    jr c, jr_025_6444

    ldh [rNR33], a
    db $fc
    add hl, bc
    or a
    ld h, l
    ld h, h
    ld h, h
    nop
    sub c
    ld de, $09ee
    xor b
    ld d, b
    add hl, bc
    adc d
    ld h, d
    add hl, bc
    add b
    ld h, d
    and e
    ld e, h
    cp l
    ld b, d
    jr jr_025_6440

    ld b, b
    ld e, d
    add $c6
    cp a
    ld b, b
    db $fd
    ld [bc], a
    rst $28
    db $10
    and l
    ld e, d
    and a
    ld e, b
    nop
    and $08
    ret z

    jr c, jr_025_64e5

    nop
    rst $38
    nop
    rst $38
    dec d
    ld [$d52a], a
    db $10
    rst $28
    ld [hl+], a
    db $dd
    dec d
    ld [$dd22], a
    add hl, bc
    nop
    ld [hl], b
    ld d, h
    xor e
    xor b
    ld d, a
    inc b
    ei
    xor b
    ld d, a
    ld b, h
    cp e
    xor b
    ld d, a
    add hl, bc
    inc c
    ld [hl], b

jr_025_64cf:
    dec d
    ld [$df20], a
    add hl, bc
    inc b
    ld [hl], b
    add hl, bc
    nop
    ld [hl], b
    add hl, bc
    inc e
    ld [hl], b
    ld b, h
    cp e
    ld [$09f7], sp
    inc d
    ld [hl], b
    add hl, bc
    nop

jr_025_64e5:
    ld [hl], b
    add hl, bc
    sub $ff
    dec e
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

jr_025_64f9:
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
    nop
    pop af
    rlca
    and $0e
    db $ed
    ld l, $cd
    ld c, $ed
    cpl
    adc $17
    rst $20
    jr nz, jr_025_64f9

    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    nop
    add e
    ld [$f2f7], sp
    dec c
    add hl, bc
    ld a, $7f
    rra
    add hl, bc
    rst $18
    ld a, a
    dec c
    nop
    ld [bc], a
    add hl, bc
    ld b, a
    ld b, l
    ld b, [hl]
    ld b, a
    ld b, a
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, [hl]
    add hl, bc
    inc b
    nop
    ld c, e
    ld b, b
    ld b, c
    add hl, de
    ld b, a
    ld b, [hl]
    rst $38
    add hl, bc
    inc d
    rlca
    add hl, bc
    dec b
    nop
    add hl, bc
    jr nz, jr_025_6555

    ld c, e
    add hl, de
    add hl, de
    ld b, d
    ld c, l

jr_025_6555:
    ld c, e
    add hl, de
    add hl, bc
    inc d
    ld [$4549], sp
    ld c, e
    ld c, c
    ld c, e
    add hl, bc
    ld b, b
    ld [bc], a
    ld c, e
    ld b, e
    add hl, de
    add hl, bc
    ld c, l
    ld [bc], a
    add hl, bc
    inc d
    ld [$1919], sp
    ld b, b
    ld b, c
    add hl, bc
    ld c, l
    inc bc
    add hl, de
    ld b, h
    add hl, de
    add hl, de
    add hl, de
    ld b, a
    ld b, [hl]
    ld b, [hl]
    ld b, a
    add hl, bc
    inc d
    ld [$1943], sp
    add hl, de
    ld b, d
    add hl, bc
    ld h, h
    inc b
    add hl, de
    add hl, de
    add hl, de
    ld c, h
    add hl, bc
    dec b
    nop
    add hl, bc
    inc d
    ld [$6c09], sp
    nop
    add hl, de
    add hl, bc
    nop
    ld bc, $4746
    ld b, [hl]
    add hl, bc
    adc l
    rrca
    nop
    add hl, bc
    xor d
    nop
    ld b, e
    add hl, bc
    ld b, b
    inc b
    add hl, de
    ld c, l
    ld c, b
    ld c, c
    ld b, l
    ld c, b
    ld c, c
    add hl, bc
    inc [hl]
    add hl, bc
    ld c, e
    add hl, de
    add hl, de
    ld b, h
    nop
    ld bc, $e609
    ld bc, $0902
    ld c, l
    ld bc, $4140
    add hl, bc
    ld d, h
    add hl, bc
    add hl, bc
    xor e
    nop
    inc bc
    ld e, l
    add hl, bc
    ld b, $11
    inc b
    add hl, bc
    ld c, l
    ld [bc], a
    ld b, d
    add hl, bc
    inc d
    ld [$4547], sp
    ld b, l
    ld b, [hl]
    ld c, [hl]
    inc bc
    ld e, l
    ld e, l
    ld [hl], b
    ld [hl], c
    ld e, l
    ld e, l
    inc b
    ld d, c
    add hl, de
    add hl, de
    add hl, bc
    ld c, h
    nop
    add hl, bc
    inc d
    dec bc
    ld c, e
    ld c, a
    inc bc
    ld e, l
    ld e, l
    ld [hl], d
    ld [hl], e
    ld e, l
    ld e, l
    inc b
    ld d, d
    add hl, de
    add hl, de
    ld b, h
    ld b, a
    add hl, bc
    ld [hl], d
    ld a, [bc]
    add hl, bc
    jp z, Jump_025_5000

    inc bc
    ld e, [hl]
    ld e, [hl]
    ld e, a
    ld e, a
    ld e, [hl]
    ld e, [hl]
    inc b
    ld d, e
    add hl, de
    add hl, bc
    call $4b00
    add hl, bc
    ld d, h
    add hl, bc
    ld b, b
    ld b, c
    add hl, de
    ld a, [bc]
    dec b
    ld b, $06
    ld h, b
    ld h, c
    rlca
    rlca
    ld [$092f], sp
    ld c, [hl]
    rrca
    ld bc, $1942
    ld a, [de]
    db $10
    ld [de], a
    ld e, $60
    ld h, c
    add hl, hl
    ld a, [hl+]
    ld de, $0954
    and h
    ld [bc], a
    add hl, bc
    inc d
    ld a, [de]
    ld b, [hl]
    ld b, a
    add hl, de
    ld a, [bc]
    rrca
    inc c
    ld h, b
    ld h, c
    add hl, sp
    ld a, [hl-]
    dec l
    add hl, bc
    adc [hl]
    ld [bc], a
    add hl, bc
    sub e
    add hl, bc
    add hl, bc
    dec b
    ld bc, $1f1a
    inc e
    ld h, b
    ld h, c
    dec hl
    inc l
    dec a
    add hl, de
    ld c, l
    ld b, l
    ld b, l
    ld c, e
    ld c, c
    ld c, b
    add hl, bc
    inc d
    ld [$0200], sp
    add hl, bc
    ld b, a
    ld b, l
    ld b, [hl]
    ld b, a
    ld b, a
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, [hl]
    add hl, bc
    inc b
    nop
    ld c, e

Call_025_6667:
    ld b, b
    ld b, c
    add hl, de
    ld b, a
    ld b, [hl]
    rst $38
    add hl, bc
    inc d
    rlca
    add hl, bc
    dec b
    nop
    add hl, bc
    jr nz, jr_025_667b

    ld c, e
    add hl, de
    add hl, de
    ld b, d
    ld c, l

jr_025_667b:
    ld c, e
    add hl, de
    add hl, bc
    inc d
    ld [$4549], sp
    ld c, e
    ld c, c
    ld c, e
    add hl, bc
    ld b, b
    ld [bc], a
    ld c, e
    ld b, e
    add hl, de
    add hl, bc
    ld c, l
    ld [bc], a
    add hl, bc
    inc d
    ld [$1919], sp
    ld b, b
    ld b, c
    add hl, bc
    ld c, l
    inc bc
    add hl, de
    ld b, h
    add hl, de
    add hl, de
    add hl, de
    ld b, a
    ld b, [hl]
    ld b, [hl]
    ld b, a
    add hl, bc
    inc d
    ld [$1943], sp
    add hl, de
    ld b, d
    add hl, bc
    ld h, h
    inc b
    add hl, de
    add hl, de
    add hl, de
    ld c, h
    add hl, bc
    dec b
    nop
    add hl, bc
    inc d
    ld [$6c09], sp
    nop
    add hl, de
    add hl, bc
    nop
    ld bc, $4746
    ld b, [hl]
    add hl, bc
    adc l
    rrca
    nop
    add hl, bc
    xor d
    nop
    ld b, e
    add hl, bc
    ld b, b
    inc b
    add hl, de
    ld c, l
    ld c, b
    ld c, c
    ld b, l
    ld c, b
    ld c, c
    add hl, bc
    inc [hl]
    add hl, bc
    ld c, e
    add hl, de
    add hl, de
    ld b, h
    nop
    ld bc, $e609
    ld bc, $0902
    ld c, l
    ld bc, $4140
    add hl, bc
    ld d, h
    add hl, bc
    add hl, bc
    xor e
    nop
    inc bc
    ld e, l
    ld e, l
    ld [hl], a
    ld a, b
    ld e, l
    ld e, l
    inc b
    add hl, bc
    ld c, l
    ld [bc], a
    ld b, d
    add hl, bc
    inc d
    ld [$4547], sp
    ld b, l
    ld b, [hl]
    ld c, [hl]
    inc bc
    ld e, l
    ld e, l
    ld a, c
    ld a, d
    ld e, l
    ld e, l
    inc b
    ld d, c
    add hl, de
    add hl, de
    add hl, bc
    ld c, h
    nop
    add hl, bc
    inc d
    dec bc
    ld c, e
    ld c, a
    inc bc
    ld e, l
    ld e, l
    ld [hl], d
    ld [hl], e
    ld e, l
    ld e, l
    inc b
    ld d, d
    add hl, de
    add hl, de
    ld b, h
    ld b, a
    add hl, bc
    ld [hl], d
    ld a, [bc]
    add hl, bc
    jp z, Jump_025_5000

    inc bc
    ld e, [hl]
    ld e, [hl]
    ld e, a
    ld e, a
    ld e, [hl]
    ld e, [hl]
    inc b
    ld d, e
    add hl, de
    add hl, bc
    call $4b00
    add hl, bc
    ld d, h
    add hl, bc
    ld b, b
    ld b, c
    add hl, de
    ld a, [bc]
    dec b
    ld b, $06
    ld h, b
    ld h, c
    rlca
    rlca
    ld [$092f], sp
    ld c, [hl]
    rrca
    ld bc, $1942
    ld a, [de]
    db $10
    ld [de], a
    ld e, $60
    ld h, c
    add hl, hl
    ld a, [hl+]
    ld de, $0954
    and h
    ld [bc], a
    add hl, bc
    inc d
    ld a, [de]
    ld b, [hl]
    ld b, a
    add hl, de
    ld a, [bc]
    rrca
    inc c
    ld h, b
    ld h, c
    add hl, sp
    ld a, [hl-]
    dec l
    add hl, bc
    adc [hl]
    ld [bc], a
    add hl, bc
    sub e
    add hl, bc
    add hl, bc
    dec b
    ld bc, $1f1a
    inc e
    ld h, b
    ld h, c
    dec hl
    inc l
    dec a
    add hl, de
    ld c, l
    ld b, l
    ld b, l
    ld c, e
    ld c, c
    ld c, b
    add hl, bc
    inc d
    ld [$0200], sp
    nop
    ld b, [hl]
    ld b, a
    ld b, l
    ld b, [hl]
    ld [de], a
    ld de, $2028
    ld h, b
    ld h, c
    add hl, hl
    ld a, [hl+]
    jr z, jr_025_67af

    ld hl, $4319
    add hl, de
    add hl, de
    add hl, de
    rst $38
    nop
    inc d
    rlca
    ld b, l
    ld b, l
    ld b, l
    ld c, d
    dec bc
    inc c
    jr c, jr_025_67d1

    ld h, b
    ld h, c
    add hl, sp
    ld a, [hl-]
    jr c, jr_025_67d7

    ld sp, $4419
    add hl, de
    ld b, a
    ld b, [hl]
    nop
    inc d

jr_025_67af:
    add hl, bc
    ld c, b
    ld c, c
    ld c, e
    dec de
    inc e
    ld a, $15
    ld h, b
    ld h, c
    jr c, jr_025_67eb

    ld a, $15
    ld d, $19
    add hl, de
    ld c, l
    ld c, e
    nop
    inc de
    add hl, bc
    ld b, c
    add hl, de
    add hl, de
    add hl, de
    dec c
    ld c, $17
    inc e
    ld h, b
    ld h, c
    ld a, $15

jr_025_67d1:
    rla
    inc e
    jr jr_025_67ee

    nop
    ld l, a

jr_025_67d7:
    nop
    nop
    inc d
    ld [$1942], sp
    ld h, d
    ld h, e
    dec e
    inc sp
    ld [hl+], a
    inc hl
    ld h, b
    ld h, c
    rla
    inc hl
    ld [hl+], a
    inc hl
    inc h
    dec h

jr_025_67eb:
    ld e, d
    ld e, e
    ld b, [hl]

jr_025_67ee:
    ld b, a
    nop
    inc d
    ld [$1919], sp
    ld h, h
    ld h, l
    inc de
    inc d
    ld [hl-], a
    inc sp
    ld h, b
    ld h, c
    ld [hl+], a
    inc hl
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld d, a
    ld e, h
    ld b, l
    ld b, l
    nop
    inc d
    ld [$4647], sp
    ld h, [hl]
    ld l, h
    ld l, l
    ld h, e
    ld h, $27
    ld h, b
    ld h, c
    ld [hl-], a
    inc sp
    ld h, $27
    ld d, l
    ld l, e
    ld l, b
    ld e, b
    nop
    or d
    ld a, [bc]
    ld c, e
    add hl, de
    ld h, a
    ld l, [hl]
    ld l, b
    ld h, l
    ld [hl], $37
    ld h, b
    ld h, c
    ld h, $27
    ld [hl], $37
    ld d, [hl]
    ld d, a
    ld l, b
    ld e, h
    ld b, l
    ld c, e
    nop
    inc d
    ld [$1943], sp
    db $10
    ld de, $6c69
    ld l, l
    ld l, e
    nop
    ld b, $12
    ld d, a
    ld l, b
    ld d, a
    ld e, b
    nop
    ld [de], a
    ld a, [bc]
    ld b, h
    add hl, de
    add hl, bc
    ld a, [bc]
    ld l, d
    ld l, [hl]
    ld l, a
    nop
    dec h
    inc d
    ld l, a
    ld l, a
    ld e, c
    add hl, de
    nop
    sub e
    dec bc
    add hl, de
    ld a, [de]
    db $10
    ld de, $1e12
    jr z, jr_025_6880

    ld e, $28
    add hl, hl
    ld a, [hl+]
    ld de, $2d10
    dec a
    ld c, h
    nop
    or e
    add hl, bc
    ld b, [hl]
    ld b, a
    ld b, [hl]
    add hl, de
    add hl, bc
    ld a, [bc]
    rrca
    inc c
    jr c, jr_025_6896

    inc c
    jr c, jr_025_68b2

    ld a, [hl-]
    dec l
    ld l, $3d
    add hl, de
    ld c, l
    ld c, c

jr_025_6880:
    nop
    inc d
    ld [$4b49], sp
    add hl, de
    ld b, e
    add hl, de
    ld a, [de]
    rra
    inc e
    ld a, $30
    inc e
    ld a, $2b
    inc l
    dec a
    nop
    ld l, a
    dec c
    add hl, de

jr_025_6896:
    add hl, de
    add hl, de
    ld b, h
    add hl, de
    add hl, de
    dec c
    ld [hl+], a
    inc hl
    inc e
    ld [hl+], a
    inc hl
    dec sp
    inc a
    add hl, de
    ld b, a
    nop
    nop
    nop
    nop
    or h
    add hl, bc
    ld b, l
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    dec e
    ld [hl-], a

jr_025_68b2:
    inc sp
    inc sp
    ld [hl-], a
    inc sp
    cpl
    add hl, de
    ld c, h
    ld b, l
    nop
    jr nz, jr_025_68bd

jr_025_68bd:
    nop
    inc d
    dec bc
    ld b, l
    ld b, l
    ld b, l
    inc de
    ld h, $27
    daa
    ld h, $27
    ccf
    add hl, de
    ld c, l
    ld c, c
    ld b, l
    ld c, e
    ld c, c
    nop
    di
    add hl, bc
    nop
    ld [$7f06], sp
    ld a, a
    rst $28
    add b
    ret z

    and a
    add b
    add b
    ld sp, hl
    add h
    pop bc
    cp h
    pop bc
    cp h
    add b
    add b
    rst $38
    rst $38
    rst $08
    jr nz, jr_025_68f3

    rst $20
    nop
    nop
    ld sp, hl
    inc b
    ld bc, $01fc

jr_025_68f3:
    db $fc
    nop
    nop
    cp $fe
    db $cd, $23, $09
    rst $20
    ld bc, $f301
    add hl, bc
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    ld bc, $cf01
    and b
    adc b
    rst $20
    adc b
    rst $20
    add b
    add b
    ld hl, sp-$7a
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    add b
    add b
    ld b, $12
    nop
    ld b, $14
    nop
    db $fc
    ld [bc], a
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    nop
    nop
    rst $08
    ld hl, $e709
    ld b, $24
    nop
    rst $38
    ld bc, $7f81
    add c
    ld a, a
    ld bc, $fe01
    add c
    ret nz

    cp a
    ld b, $0e
    nop
    add b
    cp $80
    ret nz

    add b
    ret nz

    rst $38
    rst $38
    ld a, a
    nop
    ld b, b
    ccf
    ld b, $64
    ld [$037d], sp
    ld b, c
    ccf
    add c
    add c
    rst $38
    rst $38
    add c
    rst $38
    add c
    pop bc
    add c
    pop bc
    rst $38
    rst $38
    adc b
    rst $28
    adc b
    call z, $cc88
    ld b, $66
    ld b, $08
    rst $28
    ld [$080c], sp
    inc c
    ld b, $66
    ld b, $09
    rst $28
    add hl, bc
    dec c
    add hl, bc
    dec c
    ld b, $86
    ld b, $ec
    inc e
    or a
    ld a, b
    ld e, a
    ldh [rIE], a
    add b
    cp a
    ret nz

    sbc a
    and b
    add a
    ret z

    or b
    call z, $3837
    db $ed
    ld e, $fa
    rlca
    rst $38
    ld bc, $03fd
    ld sp, hl

jr_025_698f:
    dec b
    pop hl
    rla
    dec de
    push hl
    rst $18
    add b
    sub a
    ret z

    sub a
    xor b
    ld h, a
    ret nc

    ld [hl], e
    db $f4
    ld c, [hl]
    call $6bcb
    or b
    ld a, a
    rst $28
    ld de, $05eb
    db $eb
    dec b
    ld l, d
    sub a
    ld l, [hl]
    rra
    ld a, d
    dec sp
    db $d3
    sub $0d
    cp $73
    adc h
    cp h
    ld b, e
    rst $10
    cpl
    cp c
    ld a, d
    ld c, b
    call nc, $a080
    adc a
    rst $08
    sub a
    sbc b
    db $dd
    ld [hl+], a
    jr c, jr_025_698f

    rst $28
    ldh a, [$9d]
    ld e, [hl]
    ld [de], a
    dec hl
    ld bc, $f105
    di
    jp hl


    add hl, de
    rst $30
    ld hl, sp-$6f
    cp $bf
    rst $38
    rst $00
    ld hl, sp-$71
    ldh a, [$9f]
    ldh [rTMA], a
    ld a, [hl+]
    db $10
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
    db $fd
    inc bc
    ld b, $3a
    db $10
    ld b, $2a
    ld [de], a
    ld b, $2a
    db $10
    adc a
    rst $38
    or e
    db $fc
    ldh [$d0], a
    ld b, $3a
    ld [de], a
    ld b, $3a
    db $10
    pop af
    rst $38
    call $073f
    dec bc
    add b
    rst $08
    add b
    cp a
    add a
    rst $38
    adc a
    rst $28
    ldh a, [$f0]
    ld [bc], a
    db $fd
    cp c
    ld b, [hl]
    ld [hl], e
    adc h
    ld bc, $01f3
    db $fd
    pop hl
    rst $38
    pop af
    rst $30
    rrca
    rrca
    add b
    ld a, a
    db $dd
    ld [hl+], a
    sbc l
    ld h, d
    sbc a
    ldh [$97], a
    ret nz

    sbc a
    ret nz

    rst $38
    ld b, $2b
    db $10
    ld b, $83
    ld de, $01fd
    push af
    ld bc, $01fd
    rst $38
    inc bc
    db $fd
    ld bc, $01fd
    pop af
    dec c
    inc bc
    inc bc
    sbc a
    ldh [$9e], a
    pop bc
    sbc [hl]
    pop bc
    db $f4
    db $e3
    sbc h
    db $e3
    ld b, $6a
    ld [bc], a
    ld [hl], e
    dec bc
    ld h, l
    dec d
    ld c, c
    add hl, hl
    rra
    ld e, a
    ld hl, $c12d
    ld b, $8b
    ld bc, $a006
    rst $38
    ld c, l
    ld b, $1f
    cpl
    ld c, l
    ld b, $7f
    cpl
    ld c, l
    ld b, $df
    cpl
    ld c, l
    ld b, $3f
    ccf
    ld c, l
    ld b, $9f
    ccf
    ld c, l
    ld b, $ff
    ccf
    ld c, l
    ld b, $5f

jr_025_6a80:
    ld c, a

jr_025_6a81:
    ld c, l
    ld b, $c0
    rst $38
    dec l
    ld [hl], e
    adc h
    or b
    ld c, a
    adc $31
    ld e, [hl]
    and c
    inc h
    db $db
    ld a, b
    add a
    or a
    ld c, b
    adc a
    ld [hl], b
    db $dd
    ld [hl+], a
    jr jr_025_6a81

    db $dd
    ld [hl+], a
    add sp, $17
    rst $20
    jr jr_025_6a80

    jr nz, jr_025_6ac1

    pop hl
    db $fc
    inc bc
    xor a
    ld d, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, e
    add h
    add h
    ld a, e
    jp nc, $062d

    ld l, h
    db $10
    adc c
    db $76
    ld h, a
    sbc b
    ld a, b
    add a
    ld a, a
    add b
    dec a
    jp nz, Jump_025_7a06

jr_025_6ac1:
    ld [de], a
    ld b, $00
    ld d, h
    daa
    rst $18
    ld a, e
    sbc h
    xor a

jr_025_6aca:
    ld [hl], b
    or e
    ld [hl], h
    ld b, $10
    ld d, l
    ld hl, sp-$21
    jr c, jr_025_6aca

    dec c
    call z, $a02f
    ld a, c
    ld l, e
    or h
    ld [hl], a
    cp b
    ld l, l
    xor [hl]
    xor e
    ld a, e
    ret nc

    ccf
    ld b, $6c
    db $10
    dec b
    sbc [hl]
    rst $10
    inc l
    call z, $b72f
    ld [hl], h
    push de
    sbc $08
    rst $38
    ld b, $7c
    db $10
    ld b, $a0
    ld [bc], a
    db $fc
    db $fc
    add e
    ei
    add h
    push bc
    adc b
    jp z, $ede9

    ld [$07ec], sp
    rlca
    jr c, jr_025_6b43

    ret nz

    call c, Call_025_6f0f
    ld [hl-], a
    or d
    jp $fac3


    ld a, [$1710]
    ldh [$e4], a
    inc e
    call c, Call_000_3b03
    ldh a, [$f6]
    ld c, h
    call Call_025_4343
    ld e, a
    rst $18
    ld b, $a0
    ld [bc], a
    ccf
    ccf
    ret nz

    sbc $20
    and b
    db $10
    ld d, b
    sub a
    or a
    inc de
    rst $10
    ld [de], a
    rla
    inc de
    ld d, $d3
    rst $10
    sub d
    sub $93
    rst $10
    sub h
    rst $10
    push de
    push de
    ld [hl], a
    adc a
    adc d
    xor [hl]

jr_025_6b43:
    rst $18
    db $db
    ld d, [hl]
    xor [hl]
    adc e
    db $db
    cp $fe
    inc bc
    rst $38
    ld d, d
    ld d, [hl]
    ld l, [hl]
    ld [hl], c
    ld d, c
    push af
    ld a, e
    ld e, e
    ld l, d
    push af
    ld d, c
    ld e, e
    ld a, a
    rst $38
    ld b, b
    ld a, a
    ld d, l
    push de
    ret z

    db $eb
    ld c, b
    ret c

    ret z

    ld e, b

jr_025_6b65:
    set 3, e
    ld c, b
    ld e, e
    ret z

    ret c

    jr z, jr_025_6b65

    dec hl
    ld a, e
    inc d
    call nc, Call_000_1713
    ld [de], a
    ld d, $d2
    sub $93
    rst $10
    sub d
    rst $10
    sub b
    ret nc

    rst $38
    rst $38
    inc bc
    inc bc
    cp $fe
    or a
    daa
    jp c, $ffda

    rst $38
    ld [bc], a
    cp $00
    nop
    rst $38
    rst $38
    ld b, b
    ld b, b
    ld a, a
    rst $38
    ld l, l
    ld h, h
    ld e, e
    db $db
    ld a, a
    ld a, a
    ld b, b
    ld a, a
    ld b, $1c
    ld h, b
    jr z, jr_025_6bdb

    ret z

    ret c

    ld c, b
    ld e, b
    ld c, e
    ld e, e
    ret z

    db $db
    ld c, b
    ret c

    ld [$ff08], sp
    rst $38
    ld b, $10
    inc c
    ld b, $4f
    ld l, a
    ld c, l
    ld b, $af
    rst $38
    ld a, $ff
    rrca
    ldh a, [rNR10]
    rst $28
    nop
    pop bc
    inc a
    cp h
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

jr_025_6bdb:
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
    nop
    add e
    ld [$f0f7], sp
    rrca
    nop
    ld b, $bf
    rra
    ld c, l
    ld b, $9e
    ld a, a
    ld c, l
    nop
    nop
    ld [bc], a
    add hl, bc
    nop
    ld bc, $6464
    ld h, h
    ld h, h
    ld bc, $0109
    ld [$0902], sp
    push af
    ld hl, sp+$03
    dec b
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    add hl, bc
    jr nz, jr_025_6c24

    add hl, bc
    inc d
    ld a, [bc]
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    add hl, bc
    ld b, b
    ld a, [bc]

jr_025_6c24:
    add hl, bc
    inc d
    ld a, [bc]
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    add hl, bc
    ld h, b
    ld a, [bc]
    add hl, bc
    inc d
    ld a, [bc]
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    add hl, bc
    add b
    ld a, [bc]
    add hl, bc
    inc d
    ld a, [bc]
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld b, $08
    add hl, bc
    and d
    ld b, $09
    ld [hl], d
    rrca
    ld bc, $1918
    add hl, bc
    jp nz, $0906

    sub d
    rrca
    ld bc, $1b1a
    add hl, bc
    ld [c], a
    ld b, $09
    ld [hl], d
    rrca
    ld bc, $0209
    jr jr_025_6c67

    sub d
    rrca
    ld bc, $2209
    jr jr_025_6c6e

    ld a, [c]
    rrca

jr_025_6c67:
    ld b, l
    ld d, h
    ld d, l
    inc c
    dec c
    ld d, h
    ld d, l

jr_025_6c6e:
    ld d, b
    ld d, b
    add hl, bc
    ld [de], a
    rra
    dec b
    ld d, [hl]
    ld d, a
    ld c, $0f
    ld d, [hl]
    ld d, a
    add hl, bc
    sub b
    dec e
    inc b
    ld bc, $c209
    dec de
    inc b
    add hl, bc
    inc sp
    add hl, bc
    ld b, $07
    add hl, bc
    pop hl
    dec e
    ld [$a009], sp
    ld hl, sp+$00
    ld [$7f06], sp
    ld a, a
    rst $28
    add b
    ret z

    and a
    add b
    add b
    ld sp, hl
    add h
    pop bc
    cp h
    pop bc
    cp h
    add b
    add b
    rst $38
    rst $38
    rst $08
    jr nz, jr_025_6caf

    rst $20
    nop
    nop
    ld sp, hl
    inc b
    ld bc, $01fc

jr_025_6caf:
    db $fc
    nop
    nop
    cp $fe
    db $cd, $23, $09
    rst $20
    ld bc, $f301
    add hl, bc
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    ld bc, $cf01
    and b
    adc b
    rst $20
    adc b
    rst $20
    add b
    add b
    ld hl, sp-$7a
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    add b
    add b
    ld b, $12
    nop
    ld b, $14
    nop
    db $fc
    ld [bc], a
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    nop
    nop
    rst $08
    ld hl, $e709
    ld b, $24
    nop
    rst $38
    ld bc, $7f81
    add c
    ld a, a
    ld bc, $fe01
    add c
    ret nz

    cp a
    ld b, $0e
    nop
    add b
    cp $80
    ret nz

    add b
    ret nz

    rst $38
    rst $38
    ld a, a
    nop
    ld b, b
    ccf
    ld b, $64
    ld [$037d], sp
    ld b, c
    ccf
    add c
    add c
    rst $38
    rst $38
    add c
    rst $38
    add c
    pop bc
    add c
    pop bc
    rst $38
    rst $38
    adc b
    rst $28
    adc b
    call z, $cc88
    ld b, $66
    ld b, $08
    rst $28
    ld [$080c], sp
    inc c
    ld b, $66
    ld b, $09
    rst $28
    add hl, bc
    dec c
    add hl, bc
    dec c
    ld b, $86
    ld b, $ec
    inc e
    or a
    ld a, b
    ld e, a
    ldh [rIE], a
    add b
    cp a
    ret nz

    sbc a
    and b
    add a
    ret z

    or b
    call z, $3837
    db $ed
    ld e, $fa
    rlca
    rst $38
    ld bc, $03fd
    ld sp, hl

jr_025_6d4b:
    dec b
    pop hl
    rla
    dec de
    push hl
    rst $18
    add b
    sub a
    ret z

    sub a
    xor b
    ld h, a
    ret nc

    ld [hl], e
    db $f4
    ld c, [hl]
    call $6bcb
    or b
    ld a, a
    rst $28
    ld de, $05eb
    db $eb
    dec b
    ld l, d
    sub a
    ld l, [hl]
    rra
    ld a, d
    dec sp
    db $d3
    sub $0d
    cp $73
    adc h
    cp h
    ld b, e
    rst $10
    cpl
    cp c
    ld a, d
    ld c, b
    call nc, $a080
    adc a
    rst $08
    sub a
    sbc b
    db $dd
    ld [hl+], a
    jr c, jr_025_6d4b

    rst $28
    ldh a, [$9d]
    ld e, [hl]
    ld [de], a
    dec hl
    ld bc, $f105
    di
    jp hl


    add hl, de
    rst $30
    ld hl, sp-$6f
    cp $bf
    rst $38
    rst $00
    ld hl, sp-$71
    ldh a, [$9f]
    ldh [rTMA], a
    ld a, [hl+]
    db $10
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
    db $fd
    inc bc
    ld b, $3a
    db $10
    ld b, $2a
    ld [de], a
    ld b, $2a
    db $10
    adc a
    rst $38
    or e
    db $fc
    ldh [$d0], a
    ld b, $3a
    ld [de], a
    ld b, $3a
    db $10
    pop af
    rst $38
    call $073f
    dec bc
    add b
    rst $08
    add b
    cp a
    add a
    rst $38
    adc a
    rst $28
    ldh a, [$f0]
    ld [bc], a
    db $fd
    cp c
    ld b, [hl]
    ld [hl], e
    adc h
    ld bc, $01f3
    db $fd
    pop hl
    rst $38
    pop af
    rst $30
    rrca
    rrca
    add b
    ld a, a
    db $dd
    ld [hl+], a
    sbc l
    ld h, d
    sbc a
    ldh [$97], a
    ret nz

    sbc a
    ret nz

    rst $38
    ld b, $2b
    db $10
    ld b, $83
    ld de, $01fd
    push af
    ld bc, $01fd
    rst $38
    inc bc
    db $fd
    ld bc, $01fd
    pop af
    dec c
    inc bc
    inc bc
    sbc a
    ldh [$9e], a
    pop bc
    sbc [hl]
    pop bc
    db $f4
    db $e3
    sbc h
    db $e3
    ld b, $6a
    ld [bc], a
    ld [hl], e
    dec bc
    ld h, l
    dec d
    ld c, c
    add hl, hl
    rra
    ld e, a
    ld hl, $c12d
    ld b, $8b
    ld bc, $a006
    rst $38
    ld c, l
    ld b, $1f
    cpl
    ld c, l
    ld b, $7f
    cpl
    ld c, l
    ld b, $df
    cpl
    ld c, l
    ld b, $3f
    ccf
    ld c, l
    ld b, $9f
    ccf
    ld c, l
    ld b, $ff
    ccf
    ld c, l
    ld b, $5f

jr_025_6e3c:
    ld c, a

jr_025_6e3d:
    ld c, l
    ld b, $c0
    rst $38
    dec l
    ld [hl], e
    adc h
    or b
    ld c, a
    adc $31
    ld e, [hl]
    and c
    inc h
    db $db
    ld a, b
    add a
    or a
    ld c, b
    adc a
    ld [hl], b
    db $dd
    ld [hl+], a
    jr jr_025_6e3d

    db $dd
    ld [hl+], a
    add sp, $17
    rst $20
    jr jr_025_6e3c

    jr nz, jr_025_6e7d

    pop hl
    db $fc
    inc bc
    xor a
    ld d, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, e
    add h
    add h
    ld a, e
    jp nc, $062d

    ld l, h
    db $10
    adc c
    db $76
    ld h, a
    sbc b
    ld a, b
    add a
    ld a, a
    add b
    dec a
    jp nz, Jump_025_7a06

jr_025_6e7d:
    ld [de], a
    ld b, $00
    ld d, h
    daa
    rst $18
    ld a, e
    sbc h
    xor a

jr_025_6e86:
    ld [hl], b
    or e
    ld [hl], h
    ld b, $10
    ld d, l
    ld hl, sp-$21
    jr c, jr_025_6e86

    dec c
    call z, $a02f
    ld a, c
    ld l, e
    or h
    ld [hl], a
    cp b
    ld l, l
    xor [hl]
    xor e
    ld a, e
    ret nc

    ccf
    ld b, $6c
    db $10
    dec b
    sbc [hl]
    rst $10
    inc l
    call z, $b72f
    ld [hl], h
    push de
    sbc $08
    rst $38
    ld b, $7c
    db $10
    ld b, $a0
    ld [bc], a
    db $fc
    db $fc
    add e
    ei
    add h
    push bc
    adc b
    jp z, $ede9

    ld [$07ec], sp
    rlca
    jr c, jr_025_6eff

    ret nz

    call c, Call_025_6f0f
    ld [hl-], a
    or d
    jp $fac3


    ld a, [$1710]
    ldh [$e4], a
    inc e
    call c, Call_000_3b03
    ldh a, [$f6]
    ld c, h
    call Call_025_4343
    ld e, a
    rst $18
    ld b, $a0
    ld [bc], a
    ccf
    ccf
    ret nz

    sbc $20
    and b
    db $10
    ld d, b
    sub a
    or a
    inc de
    rst $10
    ld [de], a
    rla
    inc de
    ld d, $d3
    rst $10
    sub d
    sub $93
    rst $10
    sub h
    rst $10
    push de
    push de
    ld [hl], a
    adc a
    adc d
    xor [hl]

jr_025_6eff:
    rst $18
    db $db
    ld d, [hl]
    xor [hl]
    adc e
    db $db
    cp $fe
    inc bc
    rst $38
    ld d, d
    ld d, [hl]
    ld l, [hl]
    ld [hl], c
    ld d, c
    push af

Call_025_6f0f:
    ld a, e
    ld e, e
    ld l, d
    push af
    ld d, c
    ld e, e
    ld a, a
    rst $38
    ld b, b
    ld a, a
    ld d, l
    push de
    ret z

    db $eb
    ld c, b
    ret c

    ret z

    ld e, b

jr_025_6f21:
    set 3, e
    ld c, b
    ld e, e
    ret z

    ret c

    jr z, jr_025_6f21

    dec hl
    ld a, e
    inc d
    call nc, Call_000_1713
    ld [de], a
    ld d, $d2
    sub $93
    rst $10
    sub d
    rst $10
    sub b
    ret nc

    rst $38
    rst $38
    inc bc
    inc bc
    cp $fe
    or a
    daa
    jp c, $ffda

    rst $38
    ld [bc], a
    cp $00
    nop
    rst $38
    rst $38
    ld b, b
    ld b, b
    ld a, a
    rst $38
    ld l, l
    ld h, h
    ld e, e
    db $db
    ld a, a
    ld a, a
    ld b, b
    ld a, a
    ld b, $1c
    ld h, b
    jr z, jr_025_6f97

    ret z

    ret c

    ld c, b
    ld e, b
    ld c, e
    ld e, e
    ret z

    db $db
    ld c, b
    ret c

    ld [$ff08], sp
    rst $38
    ld b, $10
    inc c
    ld b, $4f
    ld l, a
    ld c, l
    ld b, $af
    rst $38
    ld a, $ff
    rrca
    ldh a, [rNR10]
    rst $28
    nop
    pop bc
    inc a
    cp h
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

jr_025_6f97:
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
    nop
    add e
    ld [$f0f7], sp
    rrca
    nop
    ld b, $bf
    rra
    ld c, l
    ld b, $9e
    ld a, a
    ld c, l
    nop
    nop
    ld [bc], a
    add hl, bc
    nop
    ld bc, $0109
    dec c
    ld [bc], a
    add hl, bc
    push af
    ld hl, sp+$03
    dec b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    jr nz, jr_025_6fdb

    add hl, bc
    inc d
    rrca
    dec sp
    ld d, b
    ld d, c
    db $10
    ld de, $8009

jr_025_6fdb:
    nop
    ld d, b
    ld d, c
    add hl, bc
    add b
    inc b
    add hl, bc
    inc d
    ld a, [bc]
    ld d, d
    ld d, e
    ld [de], a
    inc de
    add hl, bc
    and b
    nop
    ld d, d
    ld d, e
    add hl, bc
    and b
    inc b
    add hl, bc
    ld [hl], h
    inc c
    inc d
    dec d
    add hl, bc
    add [hl]
    ld b, $09
    call nz, $0900
    sub h
    inc c
    ld d, $17
    add hl, bc
    and [hl]
    ld b, $09
    db $e4
    nop
    add hl, bc
    ld [hl], h
    inc c
    inc c
    dec c
    add hl, bc
    add [hl]
    ld b, $09
    inc b
    db $10
    add hl, bc
    sub h
    inc c
    ld c, $0f
    add hl, bc
    and [hl]
    ld b, $09
    inc h
    db $10
    add hl, bc
    ld [hl], h
    inc c
    add hl, bc
    adc d
    ld [bc], a
    add hl, bc
    ld b, h
    ld d, $09
    sub h
    inc c
    add hl, bc
    xor d
    ld [bc], a
    add hl, bc
    ld h, h
    ld d, $09
    inc [hl]
    rra
    ld [$5050], sp
    ld d, b
    add hl, bc
    ld d, d
    rra
    add hl, bc
    add hl, bc
    adc [hl]
    rra
    nop
    inc b
    add hl, bc
    ld bc, $0400
    add hl, bc
    pop bc
    jr @+$0b

    inc sp
    add hl, bc
    ld b, $07
    add hl, bc
    pop hl
    dec e
    ld [$a009], sp
    ld hl, sp+$00
    ld [bc], a
    add hl, bc
    nop
    ld bc, $0109
    dec c
    ld [bc], a
    add hl, bc
    push af
    ld hl, sp+$03
    dec b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    jr nz, jr_025_7070

    add hl, bc
    inc d
    rrca
    dec sp
    ld [hl], b
    ld [hl], c
    db $10
    ld de, $8009

jr_025_7070:
    nop
    ld d, b
    ld d, c
    add hl, bc
    add b
    inc b
    add hl, bc
    inc d
    ld a, [bc]
    ld [hl], d
    ld [hl], e
    ld [de], a
    inc de
    add hl, bc
    and b
    nop
    ld d, d
    ld d, e
    add hl, bc
    and b
    inc b
    add hl, bc
    inc d
    ld a, [bc]
    ld d, b
    ld d, c
    inc d
    dec d
    add hl, bc
    ret nz

    nop
    add hl, bc
    adc d
    nop
    add hl, bc
    jp nz, $0902

    inc d
    ld a, [bc]
    ld d, d
    ld d, e
    ld d, $17
    add hl, bc
    ldh [rP1], a
    add hl, bc
    xor d
    nop
    add hl, bc
    ld [c], a
    ld [bc], a
    add hl, bc
    or h
    inc c
    inc c
    dec c
    add hl, bc
    add $06
    add hl, bc
    inc b
    db $10
    add hl, bc
    db $d4, $0c, $0e
    rrca
    add hl, bc
    and $06
    add hl, bc
    inc h
    db $10
    add hl, bc
    or h
    inc c
    add hl, bc
    jp z, $0902

    ld b, h
    ld d, $09
    db $d4, $0c, $09
    ld [$0902], a
    ld h, h
    ld d, $09
    inc [hl]
    rra
    ld [$5050], sp
    ld d, b
    add hl, bc
    ld d, d
    rra
    add hl, bc
    add hl, bc
    adc [hl]
    rra
    nop
    inc b
    add hl, bc
    ld bc, $0400
    add hl, bc
    pop bc
    jr @+$0b

    inc sp
    add hl, bc
    ld b, $07
    add hl, bc
    pop hl
    dec e
    ld [$a009], sp
    ld hl, sp+$00
    ld [$7f05], sp
    ld a, a
    rst $28
    add b
    ret z

    and a
    add b
    add b
    ld sp, hl
    add h
    pop bc
    cp h
    pop bc
    cp h
    add b
    add b
    rst $38
    rst $38
    rst $08
    jr nz, jr_025_7110

    rst $20
    nop
    nop
    ld sp, hl
    inc b
    ld bc, $01fc

jr_025_7110:
    db $fc
    nop
    nop
    cp $fe
    db $cd, $23, $09
    rst $20
    ld bc, $f301
    add hl, bc
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    ld bc, $cf01
    and b
    adc b
    rst $20
    adc b
    rst $20
    add b
    add b
    ld hl, sp-$7a
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    add b
    add b
    dec b
    ld [de], a
    nop
    dec b
    inc d
    nop
    db $fc
    ld [bc], a
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    nop
    nop
    rst $08
    ld hl, $e709
    dec b
    inc h
    nop
    rst $38
    ld bc, $7f81
    add c
    ld a, a
    ld bc, $ff01
    rst $38
    adc b
    rst $28
    adc b
    call z, $cc88
    rst $38
    rst $38
    add b
    cp $80
    ret nz

    add b
    ret nz

    rst $38
    rst $38
    ld [$08ef], sp
    inc c
    ld [$050c], sp
    ld l, b
    ld b, $09
    rst $28
    add hl, bc
    dec c
    add hl, bc
    dec c
    rst $38
    rst $38
    add c
    rst $38
    add c
    pop bc
    add c
    pop bc
    rst $38
    dec b
    sub b
    dec c
    sbc e
    sbc e
    cp a
    cp a
    push hl
    push hl
    rst $38
    rst $38
    sub e
    sub e
    rst $38
    rst $38
    or a
    or a
    rst $38
    rst $38
    ld d, [hl]
    ld d, [hl]
    rst $38
    rst $38
    cp e
    cp e
    db $ed
    db $ed
    cp a
    cp a
    push af
    push af
    dec b
    sub b
    nop
    xor e
    xor e
    ld d, l
    ld d, l
    xor e
    xor e
    rst $38
    rst $38
    cp d
    cp d
    ld d, l
    ld d, l
    cp d
    cp d
    rst $38
    rst $38
    cp a
    cp a
    dec b
    sub b
    nop
    dec b
    jp nc, $0502

    sub b
    nop
    db $db
    db $db
    rst $38
    rst $38
    rst $30
    rst $30
    dec b
    sub b
    ld b, $05
    or d
    nop
    rst $38
    rst $38
    rst $28
    rst $28
    dec b
    sub b
    inc b
    ld d, l
    ld d, l
    db $fd
    db $fd
    ei
    ei
    db $ed
    db $ed
    rst $38
    rst $38
    db $fd
    db $fd
    ld sp, hl
    ld sp, hl
    rst $18
    rst $18
    db $fd
    db $fd
    dec b
    ld a, [bc]
    db $10
    dec b
    sub b
    ld b, $81
    add c
    sub l
    sub l
    dec b
    add $00
    sub b
    sub b
    or l
    or l
    sub d
    sub d
    rst $38
    rst $38
    ld bc, $5501
    ld d, l
    dec hl
    dec hl
    rst $38
    rst $38
    db $10
    db $10
    ld d, l
    ld d, l
    or d
    or d
    dec b
    jr nc, jr_025_7218

    ld de, $5511
    ld d, l
    or e
    or e
    rst $38
    rst $38
    add e
    add e
    dec b
    inc h
    ld [de], a
    cp d
    cp d
    push de
    push de
    dec b
    adc $00
    inc bc
    inc bc

jr_025_7218:
    dec b
    inc [hl]
    ld [de], a
    dec b
    jp z, Jump_000_0504

    ld h, d
    inc d
    cp e
    cp e
    ld d, l
    ld d, l
    cp e
    cp e
    dec b
    ld h, b
    ld [$eaaa], sp
    sub l
    push de
    dec b
    ld [hl], b
    ld [$8c05], sp
    ld [de], a
    dec b
    add d
    ld b, $95
    push de

jr_025_7239:
    xor e
    db $eb
    dec b
    or b
    rst $38
    dec a
    sub d
    ld e, [hl]
    ld a, b
    sbc e
    ld [hl], a
    add a
    ld l, h
    adc h
    sub h
    ld d, l
    sub e

jr_025_724a:
    dec de
    adc b
    ld c, e
    ld h, a
    add a
    ld c, c
    ld a, d
    rra
    ret c

    add sp, -$19
    scf
    jr nc, jr_025_7281

    xor d
    ret z

    reti


    ld de, $e5d2
    ld [c], a
    db $dd
    ld [hl+], a
    jr jr_025_724a

    ld e, l
    ld [hl+], a
    add sp, $17
    and a
    jr z, jr_025_7239

    jr jr_025_72d2

    adc l
    inc d
    rst $18
    ld [hl], d
    adc h
    or b
    ld c, [hl]
    call Call_025_5d30
    and b
    dec h
    call nc, $9972
    and [hl]
    ld [hl], c
    and b
    ld [hl], e
    ld [hl], e
    adc h

jr_025_7281:
    or b
    ld c, a
    adc $31
    ld e, [hl]
    and b
    inc h
    push de
    ld [hl], c
    sbc d
    and d
    ld [hl], l
    and e
    ld [hl], b
    dec b
    and b
    rst $38
    ld c, l
    dec b
    xor a
    cpl
    ld c, l
    dec b
    rrca
    ccf
    ld c, l
    dec b
    ld l, a
    ccf
    ld c, l
    dec b
    ret nc

    rst $38
    dec e
    dec b
    sub b
    rra
    dec c
    dec b

jr_025_72a8:
    jr nz, jr_025_72c9

    ld c, l
    dec b
    and b
    rrca
    ld c, l
    dec b
    nop
    rra
    dec c
    dec b
    ld b, b
    inc hl
    and c
    inc h
    db $db
    ld a, b
    add a
    or a
    ld c, b
    adc a
    ld [hl], b
    dec b
    jr nz, jr_025_72e2

    db $dd
    ld [hl+], a
    add sp, $17
    rst $20
    jr jr_025_72a8

jr_025_72c9:
    jr nz, @+$20

    pop hl
    db $fc

jr_025_72cd:
    inc bc
    xor a
    ld d, b
    ld [hl], a
    adc b

jr_025_72d2:
    ld a, b
    add a
    ld a, e
    add h
    add h
    ld a, e
    jp nc, $b92d

    ld b, [hl]
    ld [hl], e

jr_025_72dd:
    adc h
    adc c
    db $76
    ld h, a
    sbc b

jr_025_72e2:
    ld a, b
    add a
    ld a, a
    add b
    dec a
    jp nz, $7f80

    db $dd
    ld [hl+], a
    sbc l
    ld h, d
    nop
    rst $38
    ld h, [hl]
    sbc c
    ld e, c
    and [hl]
    jr z, jr_025_72cd

    inc a

jr_025_72f7:
    jp $b34c


    ld b, b
    cp a
    jr nz, jr_025_72dd

    dec b
    ld b, b
    ld d, b
    sbc c
    ld h, [hl]
    nop
    rst $38
    dec b
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    sbc c
    sbc d
    ld h, l
    inc d
    db $eb
    inc a
    jp $cd32


    ld [bc], a
    db $fd

jr_025_7314:
    inc b
    ei
    jr nz, jr_025_72f7

    ld b, b
    cp a
    dec b
    ld c, h
    ld d, b
    dec b
    ld [hl], b
    ld d, h
    dec b
    ld d, [hl]
    ld e, b
    dec b
    ld d, [hl]
    ld d, b
    inc b
    ei
    ld [bc], a
    db $fd
    dec b
    ld l, h
    ld d, b
    dec b
    sub b
    ld d, h
    dec b
    ld [hl], b
    ld d, b
    ld c, h
    or e
    inc a
    jp $d728


    ld e, c
    and [hl]
    ld h, [hl]
    sbc c
    dec b
    ld d, [hl]
    ld e, b
    sbc c
    ld h, [hl]
    dec b
    xor h
    ld d, b
    dec b
    sub b
    ld d, b
    ld [hl-], a
    call $c33c
    inc d
    db $eb
    sbc d
    ld h, l
    dec b
    xor h
    ld d, b
    db $ed
    db $ed
    add d
    cp [hl]
    ld c, $71
    sbc [hl]
    pop hl
    and h

jr_025_735c:
    sbc e
    ld a, b
    ld b, a
    ld [hl], a
    ld c, b
    adc a
    ldh a, [$71]
    ld [hl], c
    jr nz, jr_025_7314

    dec b
    inc d
    ld e, b
    and e
    and e
    ld de, $392d
    rst $00
    jr c, @-$38

    add h
    ld a, c
    jp nc, $ba2e

    ld b, a
    ld [hl], c
    adc a
    ld c, a
    ld d, b
    ld d, a
    add sp, $78
    ld b, a
    ld a, e
    ld b, h
    add h
    cp e
    sub d
    db $ed
    cp c
    add [hl]
    ld [hl], e
    call z, Call_025_778b
    ld h, l
    sbc c
    ld a, c
    add l
    ld a, [hl]
    add d
    ld a, $c2
    add d
    ld a, [hl]
    db $dd
    ld hl, $6e90
    dec b
    sub b
    inc c
    inc sp
    ld c, h
    sub b
    rst $28
    ld c, $31
    ld e, $61
    and h
    sbc e
    cp b
    rst $00
    or a
    adc b
    ld b, b
    ld [hl], e
    dec b
    db $10
    ld d, [hl]
    sbc a
    ld h, b
    ld h, a
    sbc b
    jr nz, jr_025_735c

    db $76
    adc c
    or b
    ld c, [hl]
    call Call_025_5e31
    and d
    ld hl, $59dd
    and a
    add l
    ld e, c
    ld [bc], a
    ld l, d
    dec b
    add b
    inc e
    dec b
    and b
    ccf
    ld c, l
    dec b
    rst $08
    ccf
    rra
    rrca
    ldh a, [rNR10]
    rst $28
    nop
    pop bc
    inc a
    cp h
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
    nop
    add e
    ld [$f0f7], sp
    rrca
    nop
    rst $38
    dec b
    and c
    ld l, a
    ld c, l
    dec b
    sbc a
    ld a, a
    ld c, l
    nop
    ld [bc], a
    ld b, $09
    add hl, bc
    add hl, bc
    add hl, bc
    inc bc
    dec b
    rlca
    ld b, $06
    inc bc
    inc bc
    dec b
    ld b, $00
    nop
    ld b, $f4
    rst $38
    rra
    inc hl
    ld [hl+], a
    ld d, h
    ld d, l
    ld d, l
    ld d, [hl]
    inc hl
    ld [hl+], a
    ld b, $0e
    rrca
    dec b
    jr nz, @+$23

    ld d, a
    ld e, b
    ld e, b
    ld e, c
    jr nz, jr_025_7462

    ld b, $0e
    rrca
    inc b
    inc b
    ld bc, $0602
    ld l, b
    nop
    nop
    ld bc, $0604
    ld l, a
    rrca
    inc b
    inc b
    dec b
    ld e, d
    ld e, e
    ld e, e
    ld e, h
    ld b, $a4
    nop
    ld b, $10
    rrca
    ld bc, $1312
    inc bc

jr_025_7462:
    dec b
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    inc bc
    dec b
    ld [de], a
    inc d
    ld b, $b0
    rrca
    inc bc
    jr jr_025_748b

    ld h, e
    ld h, h
    ld h, h
    ld h, l
    jr jr_025_7491

    dec d
    rla
    ld b, $10
    rrca
    ld bc, $0b0a
    ld b, d
    ld b, h
    ld h, [hl]
    ld b, b
    ld b, b
    ld b, c
    ld b, d
    ld b, h
    ld c, $10
    ld b, $10

jr_025_748b:
    rrca
    ld bc, $0909
    ld b, l
    ld b, a

jr_025_7491:
    ld b, d
    ld b, e
    ld b, e
    ld b, h
    ld b, l
    ld b, a
    ld b, $20
    ld [de], a
    ld b, $14
    ld e, $4b
    ld c, l
    ld b, l
    ld b, [hl]
    ld b, [hl]
    ld b, a
    ld c, l
    ld c, c
    ld b, $2e
    rra
    dec b
    ld h, d
    ld h, d
    ld c, b
    ld c, l
    ld c, l
    ld c, c
    ld h, d
    ld c, a
    ld b, $4e
    rra
    rlca
    ld c, e
    ld h, d
    ld h, d
    ld c, a
    ld h, d
    ld h, d
    ld b, $4e
    rra
    rlca
    ld b, $a6
    ld [de], a
    ld b, $2e
    rra
    dec b
    add hl, bc
    add hl, bc
    ld e, l
    ld e, [hl]
    ld e, [hl]
    ld e, a
    ld b, $c0
    inc d
    ld b, $b4
    rra
    ld bc, $5260
    ld d, e
    ld h, c
    ld b, $cc
    rra
    ld bc, $0200
    ld b, $09
    add hl, bc
    add hl, bc
    add hl, bc
    inc bc
    dec b
    rlca
    ld b, $06
    inc bc
    inc bc
    dec b
    ld b, $00
    nop
    ld b, $f4
    rst $38
    rra
    inc hl
    ld [hl+], a
    ld [hl], b
    ld [hl], c
    ld d, l
    ld d, [hl]
    inc hl
    ld [hl+], a
    ld b, $0e
    rrca
    dec b
    jr nz, jr_025_7520

    ld [hl], d
    ld [hl], e
    ld e, b
    ld e, c
    jr nz, jr_025_7526

    ld b, $0e
    rrca
    inc b
    inc b
    ld bc, $5702
    ld e, b
    ld e, b
    ld e, c
    nop
    ld bc, $0604
    ld l, a
    rrca
    inc b
    inc b
    dec b
    ld e, d
    ld e, e
    ld e, e
    ld e, h
    ld b, $a4
    nop

jr_025_7520:
    ld b, $10
    rrca
    ld bc, $1312

jr_025_7526:
    inc bc
    dec b
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    inc bc
    dec b
    ld [de], a
    inc d
    ld b, $b0
    rrca
    inc bc
    jr jr_025_7550

    ld h, e
    ld h, h
    ld h, h
    ld h, l
    jr jr_025_7556

    dec d
    rla
    ld b, $10
    rrca
    ld bc, $0b0a
    ld b, d
    ld b, h
    ld h, [hl]
    ld b, b
    ld b, b
    ld b, c
    ld b, d
    ld b, h
    ld c, $10
    ld b, $10

jr_025_7550:
    rrca
    ld bc, $0909
    ld b, l
    ld b, a

jr_025_7556:
    ld b, d
    ld b, e
    ld b, e
    ld b, h
    ld b, l
    ld b, a
    ld b, $20
    ld [de], a
    ld b, $14
    ld e, $4b
    ld c, l
    ld b, l
    ld b, [hl]
    ld b, [hl]
    ld b, a
    ld c, l
    ld c, c
    ld b, $2e
    rra
    dec b
    ld h, d
    ld h, d
    ld c, b
    ld c, l
    ld c, l
    ld c, c
    ld h, d
    ld c, a
    ld b, $4e
    rra
    rlca
    ld c, e
    ld h, d
    ld h, d
    ld c, a
    ld h, d
    ld h, d
    ld b, $4e
    rra
    rlca
    ld b, $a6
    ld [de], a
    ld b, $2e
    rra
    dec b
    add hl, bc
    add hl, bc
    ld e, l
    ld e, [hl]
    ld e, [hl]
    ld e, a
    ld b, $c0
    inc d
    ld b, $b4
    rra
    ld bc, $5260
    ld d, e
    ld h, c
    ld b, $cc
    rra
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
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10

Call_025_778b:
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [de], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    inc bc
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld c, c
    db $10
    ld c, d
    db $10
    db $10
    db $10
    ld de, $1010
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    ld h, h
    db $10
    ld h, l
    db $10
    ld e, c
    db $10
    ld e, d
    db $10
    db $10
    db $10
    ld de, $1010
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld c, h
    db $10
    db $10
    db $10
    ld de, $1010
    db $10
    inc b
    db $10
    dec b
    db $10
    dec b
    db $10
    dec b
    db $10
    dec b
    db $10
    dec b
    db $10
    dec b
    db $10
    dec b
    db $10
    dec b
    db $10
    dec b
    db $10
    dec b
    db $10
    dec b
    db $10
    dec b
    db $10
    dec b
    db $10
    dec b
    db $10
    dec b
    db $10
    dec b
    db $10
    dec b
    db $10
    dec b
    db $10
    dec b
    db $10
    dec b
    db $10
    ld b, $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld e, e
    db $10
    ld e, h
    db $10
    db $10
    db $10
    ld de, $1010
    db $10
    inc d
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ld d, $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld l, e
    db $10
    ld l, h
    db $10
    db $10
    db $10
    ld de, $1010
    db $10
    inc d
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ld d, $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1010
    db $10
    inc d
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ld d, $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1010
    db $10
    inc d
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ld d, $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1010
    db $10
    inc d
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ld d, $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10

Jump_025_7a06:
    ld de, $1010
    db $10
    inc d
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ld d, $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1010
    db $10
    inc d
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ld d, $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1010
    db $10
    inc d
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ld d, $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1010
    db $10
    inc d
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ld d, $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1010
    db $10
    inc d
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ld d, $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1010
    db $10
    inc d
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ld d, $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1010
    db $10
    inc d
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ld d, $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1010
    db $10
    inc d
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ld d, $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1010
    db $10
    inc d
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ld d, $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1010
    db $10
    inc d
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ld d, $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1010
    db $10
    inc d
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ld d, $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld d, c
    db $10
    ld d, d
    db $10
    ld d, e
    db $10
    ld de, $1010
    db $10
    inc d
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ld d, $10
    db $10
    db $10
    inc de
    db $10
    jr nc, @+$12

    ld sp, $3210
    db $10
    ld h, c
    db $10
    ld h, d
    db $10
    ld h, e
    db $10
    ld de, $1010
    db $10
    inc d
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ld d, $10
    db $10
    db $10
    inc de
    db $10
    ld b, b
    db $10
    ld b, c
    db $10
    ld b, d
    db $10
    rlca
    db $10
    ld [$1010], sp
    db $10
    ld de, $1010
    db $10
    inc h
    db $10
    dec h
    db $10
    dec h
    db $10
    dec h
    db $10
    dec h
    db $10
    dec h
    db $10
    dec h
    db $10
    dec h
    db $10
    dec h
    db $10
    dec h
    db $10
    dec h
    db $10
    dec h
    db $10
    dec h
    db $10
    dec h
    db $10
    dec h
    db $10
    dec h
    db $10
    dec h
    db $10
    dec h
    db $10
    dec h
    db $10
    dec h
    db $10
    dec h
    db $10
    ld h, $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    add hl, bc
    db $10
    ld a, [bc]
    db $10
    rla
    db $10
    jr jr_025_7d94

    db $10
    db $10
    ld de, $1010
    db $10
    db $10
    db $10
    db $10
    db $10
    ld c, l
    db $10
    ld c, [hl]
    db $10
    ld c, a
    db $10

jr_025_7d94:
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    dec bc
    db $10
    inc c
    db $10
    dec c
    db $10
    ld c, $10
    db $10
    db $10
    dec bc
    db $10
    inc c
    db $10
    dec c
    db $10
    rrca
    db $10
    db $10
    db $10
    dec hl
    db $10
    inc l
    db $10
    dec l
    db $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    add hl, de
    db $10
    ld a, [de]
    db $10
    daa
    db $10
    jr z, jr_025_7dd4

    db $10
    db $10
    ld de, $1010
    db $10
    db $10
    db $10
    db $10
    db $10
    ld e, l
    db $10
    ld e, [hl]
    db $10
    ld e, a
    db $10

jr_025_7dd4:
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    dec de
    db $10
    inc e
    db $10
    dec e
    db $10
    ld e, $10
    db $10
    db $10
    dec de
    db $10
    inc e
    db $10
    dec e
    db $10
    rra
    db $10
    db $10
    db $10
    dec sp
    db $10
    inc a
    db $10
    dec a
    db $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    add hl, hl
    db $10
    ld a, [hl+]
    db $10
    scf
    db $10
    jr c, jr_025_7e14

    db $10
    db $10
    ld hl, $2210
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10

jr_025_7e14:
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    ld [hl+], a
    db $10
    inc hl
    db $10
    db $10
    db $10
    add hl, sp
    db $10
    ld a, [hl-]
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc [hl]
    inc d
    dec [hl]
    inc d
    ld [hl], $14
    db $10
    db $10
    db $10
    db $10
    inc [hl]
    inc d
    dec [hl]
    inc d
    ld [hl], $14
    db $10
    db $10
    db $10
    db $10
    inc [hl]
    inc d
    dec [hl]
    inc d
    ld [hl], $14
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10

Call_025_7f10:
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    stop
    nop
    adc h
    ld sp, $6318
    rst $38
    ld a, a
    rst $38
    ld l, a
    cp a
    dec hl
    sub a
    ld a, [bc]
    pop de
    ld bc, $5eff
    rst $38
    dec a
    rra
    nop
    ld de, $7300
    ld c, [hl]
    or l
    ld d, [hl]
    rst $30
    ld e, [hl]
    add hl, hl
    dec h
    nop
    nop
    adc h
    ld sp, $6318
    rst $38
    ld a, a
    rst $38
    ld l, a
    cp a
    dec hl
    sub a
    ld a, [bc]
    pop de
    ld bc, $77bd
    jr @+$65

    sub h
    ld d, d
    db $10
    ld b, d
    ld [hl], e
    ld c, [hl]
    or l
    ld d, [hl]
    rst $30
    ld e, [hl]
    add hl, hl
    dec h
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    db $10
    ld b, d
    ld d, d
    ld c, d
    or l
    ld d, [hl]
    add hl, hl
    dec h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
