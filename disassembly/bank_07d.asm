; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $07d", ROMX[$4000], BANK[$7d]

    cp a
    nop
    rlca
    jr jr_07d_4029

    jr z, jr_07d_4058

    ld d, c
    ld a, a
    ccf
    ccf
    ld a, a
    rst $38
    xor a
    ld d, a
    ld hl, $003f
    ldh [rNR23], a
    ld b, h
    sub d
    ld a, [bc]
    ld bc, $edc1
    db $ed
    pop af
    ld a, [$926c]
    pop hl
    ccf
    nop
    rlca
    jr jr_07d_4049

    jr z, jr_07d_4078

    ld d, c
    ld a, a

jr_07d_4029:
    ccf
    ccf
    ld a, a
    rst $38
    xor a
    ld d, a
    ccf
    nop
    nop
    ldh [rNR23], a
    ld b, h
    sub d
    ld a, [bc]
    ld bc, $edc1
    db $ed
    pop af
    cp $6a
    sub c
    rst $38
    rlca
    nop
    adc b
    inc a
    ld a, [hl]
    rst $38
    rst $38
    rst $28
    sbc a

jr_07d_4049:
    ld a, l
    ld e, $03
    nop
    or l
    rlca
    jr @+$26

    jr z, jr_07d_40a4

    ld d, c
    ld a, a
    cp a
    rst $18
    rst $38

jr_07d_4058:
    ld a, a
    rst $08
    rla
    ld hl, $003e
    rlca
    jr jr_07d_4085

    jr z, jr_07d_40b4

    ld d, c
    ld a, a
    cpl
    ccf
    ld a, a
    rst $38
    xor a
    ld [hl], a
    jr jr_07d_408c

    nop
    ldh [rNR23], a
    ld b, h
    sub d
    ld a, [bc]
    ld bc, $edc1
    db $ed
    pop af

jr_07d_4078:
    ld a, [$72bc]
    pop hl
    cp a
    nop
    nop
    rlca
    add hl, de
    ld [hl-], a
    inc h
    inc bc
    ld h, h

jr_07d_4085:
    rst $20
    ld h, d
    ld h, c
    ld d, c
    cpl
    ccf
    db $10

jr_07d_408c:
    rra
    nop
    nop
    ldh [rNR23], a
    inc h
    ld [de], a
    ld [bc], a
    ld bc, $1919
    ld b, c
    pop hl
    ld a, [$c2fc]
    ld a, [hl]

jr_07d_409d:
    jr nc, jr_07d_40c7

    rst $20
    xor a
    sbc a
    sbc a
    cp a

jr_07d_40a4:
    rst $38
    ccf
    cpl
    ld e, a
    ld e, [hl]
    dec l
    add hl, de
    inc b
    inc bc
    nop
    ld [hl], b
    call z, $caf2
    push bc
    pop bc

jr_07d_40b4:
    pop af
    ret


    push bc
    add c
    ld a, [bc]
    sub d
    add h
    jr jr_07d_409d

    inc c
    inc d
    daa
    ld c, a
    ld a, a
    rst $18
    cp a
    sbc a
    sbc a
    cp a

jr_07d_40c7:
    rst $38
    ld e, [hl]
    cp l
    cp l
    ld e, h
    inc sp
    rst $38
    rst $38
    add c
    rst $18
    cp l
    sub h
    rst $38
    ld e, h
    ld h, h
    ld a, h
    dec hl
    scf
    dec d
    dec c
    inc bc
    ld bc, $bfff
    ld h, c
    sbc l
    cp a
    db $eb
    cp $77
    ld a, l
    rst $28
    cp e
    cp a
    sbc a
    ld h, b
    cp a
    rst $38
    ld de, $be00
    rlca
    rra
    dec sp
    scf
    ld l, [hl]
    ld l, [hl]
    ld b, b
    ccf
    ld [hl], $5f
    adc a
    rst $18
    ld a, a
    ccf
    ccf
    nop
    ldh [$f8], a
    cp h
    ld l, [hl]
    or $ff
    ccf
    rst $18
    rst $38
    sbc a
    ld c, $9c
    cp $ff
    ccf
    nop
    rlca
    rra
    dec sp
    scf
    ld l, [hl]
    ld l, [hl]
    ld b, b
    ccf
    ld [hl], $5f
    adc a
    rst $18
    ld a, a
    ccf
    nop
    nop
    ldh [$f8], a
    cp h
    ld l, [hl]
    or $ff
    ccf
    rst $18
    rst $38
    sbc a
    ld c, $9e
    rst $38
    rst $38
    rlca
    nop
    adc b
    inc a
    ld b, d
    add c
    add b
    sbc h
    ldh a, [$73]
    ld e, $03
    nop
    or l
    rlca
    rra
    dec sp
    scf
    ld l, [hl]
    ld l, [hl]
    ld b, b
    cp a
    ld d, [hl]
    ld a, a
    rst $38
    rst $08
    rra
    ccf
    ld a, $00
    rlca
    rra
    dec sp
    scf
    ld l, [hl]
    ld l, [hl]
    ld b, a
    jr z, @+$32

    ld h, b
    and b
    ldh a, [$78]
    rra
    rra
    nop
    ldh [$f8], a
    cp h
    ld l, [hl]
    or $ff
    ccf
    rst $18
    ld e, a
    cpl
    ld [hl], $7c
    cp $ff
    cp a
    nop
    nop
    rlca
    ld e, $2d
    dec sp
    inc bc
    ld e, e
    adc [hl]
    ld e, l
    ld e, [hl]
    ld l, [hl]
    ld sp, $1f27
    rra
    nop
    nop
    ldh [$f8], a
    call c, $feee
    inc bc
    rst $38
    sub $bf
    ld e, a
    and $fc
    cp $7e
    jr nc, jr_07d_41c5

    rst $38
    rst $38
    cp $ff
    rst $38
    cp $3f
    scf
    ld h, d
    ld h, e
    scf
    rra
    rlca
    inc bc
    nop
    ld [hl], b
    cp h
    adc [hl]
    or [hl]
    cp e
    cp a
    adc a
    or a
    cp e
    ld a, a
    or $ee
    db $fc
    ld hl, sp-$20
    inc c
    inc e
    ccf
    ld a, a
    ld a, [hl]
    rst $18
    rst $38
    cp $ff
    rst $38
    cp $6d
    rst $00
    rst $00
    ld l, a
    inc sp
    rst $38
    add c
    rst $38
    pop hl
    rst $18
    rst $38
    rst $38
    ld a, h
    ld e, h
    ld a, h

jr_07d_41c5:
    dec sp
    dec l
    rra
    rrca
    inc bc
    ld bc, $4cff

jr_07d_41cd:
    rst $18
    ld h, e
    ld b, e
    sub a
    rst $00
    ld c, [hl]
    ld c, [hl]
    call c, Call_07d_58dc
    ld l, a
    rst $18
    ld c, h
    rst $38
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    sbc a
    inc bc
    dec b
    dec bc
    ld c, e
    ld d, a
    ld e, [hl]
    jr nc, jr_07d_41cd

    ld a, [c]
    ld c, [hl]
    ld b, c
    inc bc
    dec de
    inc h
    ld c, e
    rst $30
    rla
    sub a
    jp z, $a3c1

    add a
    dec b
    add $1f
    inc sp
    ldh a, [rIE]
    add b
    ld b, e
    and a
    inc bc
    xor [hl]
    cp a
    ld c, [hl]
    xor [hl]
    xor $ee
    cp [hl]
    ld d, d
    call nc, Call_000_2078
    ldh [rNR31], a
    inc h
    ld c, e
    rst $30
    rla
    sub a
    jp z, $a0c0

    cp h
    ccf
    db $db
    ld a, [bc]
    dec b
    cp $01
    add b
    ld b, b
    and b
    cp b
    cp h
    cp h
    ld e, h
    ld l, $27
    rst $10
    rst $38
    ld a, [c]
    call nc, $c038
    add b
    dec de
    inc h
    ld c, e
    rst $30
    rla
    sub a
    jp z, $a0c0

    add b
    ld bc, $0ec3
    rrca
    ld sp, hl
    jr nc, @+$65

    ld h, h
    ld a, b
    jr c, jr_07d_4255

    ld c, $00
    or d
    ld bc, $1f0e
    ccf
    ccf
    cp a
    sbc a
    ld a, [hl]
    db $e3
    rst $30
    ld c, [hl]
    ld b, c
    nop

jr_07d_4255:
    inc c
    ld [de], a
    dec h
    jr nz, jr_07d_4282

    ld de, $2122
    ld h, e
    ld [hl], a
    ld d, a
    add $78
    ld [hl], c
    ld [hl], c
    cp [hl]
    ld c, $11
    rst $20
    rrca
    rra
    rrca
    ld b, $c5
    rst $08
    sbc a
    dec d
    ld a, [bc]
    sbc $3a
    ld sp, hl
    ld a, a
    nop
    nop
    rrca
    rra
    ccf
    inc b
    ld a, a
    sbc c
    cp a
    cp a
    ld [hl], e
    db $ec
    ld d, c

jr_07d_4282:
    ld [$0300], sp
    ld a, h
    sub e
    daa
    xor a
    rst $00
    ldh [$c0], a
    and e
    rst $30
    rst $38
    db $eb
    call z, $f83b
    rra
    ret nz

    inc [hl]
    inc bc
    sbc $8b
    xor $2e
    ld e, $5e
    sbc $ca
    ld b, h
    sbc b
    jr nz, jr_07d_42b3

    ldh a, [rTIMA]
    nop
    add e
    ld c, $0f
    ccf
    inc bc
    ld a, a
    add e
    ccf
    rra
    dec bc
    rlca
    nop
    add e

jr_07d_42b3:
    add b
    ld hl, sp-$08
    inc bc
    db $fc
    add e
    ld hl, sp-$08
    ret nz

    ld d, $00
    cp b
    inc bc
    ld b, $0d
    ld c, a
    ld e, l
    ld d, a
    cpl
    rst $38
    rst $38
    ld c, a
    ld b, c
    inc bc
    dec de
    ccf
    ld a, a
    db $fc
    db $fc
    ld a, l
    rst $38
    ld a, a
    sbc $7c
    cp $ff
    rst $38
    rst $28
    rst $18
    rst $38
    add b
    jp $eae5


    xor $ea
    adc $ea
    ld l, [hl]
    ld a, [hl+]
    ld a, [hl]
    cp $fc
    ld hl, sp-$20
    ldh [rNR31], a
    ccf
    ld a, a
    db $fc
    db $fc
    ld a, l
    rst $38
    ld a, a
    rst $18
    ld a, a
    rst $20
    cp $03
    rst $38
    and [hl]
    ld bc, $c080
    ldh [$f8], a
    db $f4
    db $fc
    call nc, $e5ea
    rst $30
    dec a
    ld e, $3c
    ld hl, sp-$40
    add b
    dec de
    ccf
    ld a, a
    db $fc
    db $fc
    ld a, l
    rst $38
    ld a, a
    rst $18
    ld a, a
    rst $38
    cp $ff
    ei
    rst $30
    ccf
    ld a, a
    ld a, h
    ld l, b
    jr z, jr_07d_4330

    ld c, $00
    sbc c
    ld bc, $110f
    jr nz, @+$26

    and b
    sub c
    ld l, a
    rst $38
    rst $38
    ld c, a
    ld b, c
    nop

jr_07d_4330:
    inc c
    ld e, $3b
    ccf
    ccf
    ld e, $3d
    ccf
    ld a, [hl]
    ld e, l
    ld a, l
    rst $38
    inc bc
    ld a, a
    pop bc
    cp [hl]
    ld c, $1f
    rst $38
    ld sp, hl
    ld sp, hl
    ei
    cp $ff
    ld a, e
    pop af
    ei
    cp $fe
    or $e7
    ld a, a
    nop
    nop
    rrca
    ld de, $4020
    ld b, h
    ld b, b
    ld h, b
    or c
    cp a
    ld a, a
    db $ec
    ld d, c
    ld [$0300], sp
    ld a, a
    rst $38
    db $fc
    ld hl, sp+$7f
    ld e, a
    ld a, a
    rst $38
    db $fc
    ld hl, sp-$04
    rst $38
    rst $38
    rst $20
    rra
    ret nz

    db $f4
    ld a, [$7a7e]
    xor $ea
    cp $fa
    cp $7e
    db $fc
    ld hl, sp-$20
    ldh a, [$f0]
    dec b
    nop
    adc c
    ld c, $0f
    ccf
    ld l, a
    ld h, a
    ld l, e
    inc sp
    rra
    dec bc
    rlca
    nop
    adc c

jr_07d_438f:
    add b
    ld hl, sp-$08
    call z, $9c0c
    jr c, jr_07d_438f

    ret nz

    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    adc e
    ld e, $3e
    ld c, $1e
    ld a, a
    rst $38
    ld a, a
    ld e, $0e
    ld a, $1e
    inc bc
    nop
    add a
    inc bc
    rrca
    rra
    ccf
    ld a, a
    ld a, a
    sbc $04
    rst $38
    sbc h
    ld a, a
    ccf
    ld a, a
    ld a, a
    nop
    ldh a, [$fc]
    cp $fe
    rst $38
    cp a
    rst $38
    rst $38
    db $eb
    rst $38
    ld [$fcfe], a
    cp $fe
    nop
    inc bc
    rrca
    rra
    ccf
    ld a, a
    cp a
    rst $18
    ld b, $ff
    xor a
    ld a, a
    jr c, jr_07d_43df

jr_07d_43df:
    ldh [$f8], a
    db $fc
    cp $fe
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    cp $1c
    nop
    inc bc
    rrca
    rra
    ccf
    ld a, a
    ld a, a
    cp $ff
    cp a
    rst $38
    rst $38
    ld a, a
    ccf
    rra
    ld bc, $f000
    db $fc
    cp $fe
    cp a
    ld a, a
    rst $38
    push af
    rst $38
    push af
    cp $fc
    inc bc
    ldh a, [rNR14]
    nop
    adc h
    ld bc, $0402
    add hl, bc
    nop
    ccf
    inc hl
    ld a, a
    add b
    inc c
    call z, Call_000_03e0
    nop
    sbc b
    add b
    ld h, b
    db $10
    ld [$0004], sp
    nop
    ld bc, $0202
    dec b
    dec b
    dec bc
    ccf
    ret nz

    ccf
    ld [hl], b
    ret nz

    ret nz

    add b
    nop
    ld sp, hl
    inc bc
    rst $30
    inc b
    nop
    add h
    inc b
    ldh [$e0], a
    add b
    dec b
    nop
    add e
    rlca
    nop
    inc bc
    inc bc
    nop
    add d
    rra
    rra
    ld [$840b], sp
    ld bc, $0603
    inc b
    inc b
    dec b
    add [hl]
    cp $07
    ld a, e
    add l
    ld [bc], a
    ld bc, $0004
    and [hl]
    pop bc
    rst $38
    ld a, a
    sbc [hl]
    ld h, c
    ld e, $38
    ld a, b
    rst $30
    add sp, -$70
    ld h, b
    add b
    nop
    dec bc
    dec bc
    dec de
    ld l, $5f
    ld e, b
    jr nz, jr_07d_4491

    dec b
    dec b
    dec e
    inc bc
    ld sp, hl
    ld bc, $ff03
    nop
    nop
    ret nz

    and b
    ret nc

    ret nc

    and b
    ret nz

    inc bc
    nop
    adc e
    ld e, $3e
    ld c, $1e
    ld a, a
    rst $38
    ld a, a
    ld e, $0e
    ld a, $1e
    inc bc

jr_07d_4491:
    nop
    call c, $0f03
    rra
    ccf
    ld a, a
    ld a, a
    cp a
    sbc [hl]
    ret z

    rst $38
    rst $38
    ld a, a
    ccf
    ld a, a
    ld a, a
    nop
    ldh a, [$fc]
    cp $fe
    rst $38
    rst $18
    rra
    rra
    scf
    db $e3
    or $fe
    db $fc
    cp $fe
    nop
    inc bc
    rrca
    rra
    ccf
    ld a, a
    rst $38
    cp a
    sbc $c8
    cp $ff
    ld a, a
    rst $38
    ld a, a
    jr c, jr_07d_44c3

jr_07d_44c3:
    ldh [$f8], a
    db $fc
    cp $fe
    rst $38
    sbc a
    rra
    ccf
    ld l, a
    rst $00
    rst $28
    rst $38
    cp $1c
    nop
    inc bc
    rrca
    rra
    ccf
    ld a, a
    ld a, a
    rst $38
    sbc [hl]
    ret z

    rst $38
    rst $38
    ld a, a
    ccf
    rra
    ld bc, $f000
    db $fc
    cp $fe
    rst $18
    sbc a
    rra
    dec sp
    pop af
    ei
    cp $fc
    inc bc
    ldh a, [rNR10]
    nop
    inc b
    rst $38
    add h
    db $fd
    ei
    rst $30
    cp $03
    rst $38
    add l
    ld a, a
    rst $38
    di
    inc sp
    rra
    inc bc
    rst $38
    sbc b
    cp a
    rst $28
    rst $30
    ei
    rst $38
    rst $38
    cp $fd
    rst $38
    ei
    cp $f6
    db $fc
    cp a
    rst $38
    ret nz

    adc a
    ccf
    ccf
    ld a, h
    pop af
    cp $fc
    ld [$ff03], sp
    add l
    ld bc, $1ff4
    rra
    ld a, a
    rlca
    rst $38
    add [hl]
    db $fc
    rst $30
    ldh a, [$e7]
    rst $18
    sbc a
    ld [$84fc], sp
    push hl
    db $eb
    add $d4
    inc b
    push de
    and a
    cp $07
    ld a, e
    or l
    ld a, d
    db $fd
    rst $38
    rst $38
    ld a, $00
    pop bc
    rst $38
    ld a, a
    sbc [hl]
    ld h, c
    sbc $38
    ld a, b
    rst $30
    db $eb
    sub a
    ld l, a
    cp a
    rst $38
    db $fc
    db $fc
    call c, $e0b1
    rst $20
    cp b
    rst $18
    push de
    push de
    db $dd
    ei
    dec b
    db $fd
    inc bc
    inc bc
    rst $38

jr_07d_4561:
    add [hl]
    rst $18
    xor a
    rst $18
    rst $18
    xor a
    rst $18
    ld [bc], a
    nop
    nop
    sub b
    ld h, c
    ld e, [hl]
    xor d
    cp $ab
    or [hl]
    db $fd
    rst $28
    sub b
    ld b, d
    xor d
    cp $ab
    or [hl]
    db $fd
    rst $28
    inc b
    nop
    add h
    rlca
    ld [$1616], sp
    inc bc
    ld hl, $1184
    rla
    ld [$0507], sp
    nop
    adc h
    inc e
    db $e3
    add b
    or b
    jr nc, jr_07d_4594

    inc bc

jr_07d_4594:
    and [hl]
    sbc h
    db $e3
    ld e, $04
    inc b
    nop
    adc h
    ld bc, $8402
    adc h
    ld [hl], b
    ld b, b
    ld a, b
    rst $08
    push bc
    ld b, d
    ld b, c
    ld b, b
    inc b
    nop
    add h
    ret nz

    jr nc, jr_07d_4616

    ld l, b
    inc bc
    inc b
    add h
    ld [$30c8], sp
    ret nz

    dec b
    nop
    add h
    ld bc, $0502
    dec b
    inc bc
    ld [$0484], sp
    dec b
    ld [bc], a
    ld bc, $0005
    adc h
    ret nz

    jr nz, jr_07d_4561

    adc h

jr_07d_45cb:
    rlca
    nop
    inc c
    ld a, h
    call nc, $c424
    inc b
    inc b
    nop
    add h
    inc e
    ld [hl+], a
    ld e, c
    ld e, c
    inc bc
    add b
    add h
    ld b, a
    ld e, l
    ld [hl+], a
    inc e
    dec b
    nop
    adc h
    inc bc
    inc c
    db $10
    sub [hl]
    ld h, [hl]
    jr nz, jr_07d_45cb

    sub h
    inc de
    inc c
    rlca
    inc b
    inc b
    nop
    call z, Call_07d_6080
    ld de, $0c13
    jr z, jr_07d_4668

    db $d3
    sub c
    ld h, b
    ret nz

    ld b, b
    ld [$3814], sp
    ld a, b
    or b
    sbc b
    ld a, h
    inc l
    inc l
    inc e
    ld a, [de]
    ld d, $2e
    inc l
    ld a, [hl-]
    ld a, [bc]
    ld l, $2c
    ld a, [hl-]
    ld a, [bc]
    ld [$3814], sp

jr_07d_4616:
    ld a, b
    or b
    sbc b
    ld a, h
    inc l
    inc l
    inc e
    ld a, [de]
    ld d, $2c
    inc e
    ld a, [de]
    ld d, $2e
    inc l
    ld a, [hl-]
    ld a, [bc]
    ld [$3814], sp
    ld a, b
    or b
    sbc b
    ld a, h
    inc l
    or b
    sbc b
    ld a, h
    inc l
    inc l
    inc e
    ld a, [de]
    ld d, $2e
    inc l
    ld a, [hl-]
    ld a, [bc]
    ld [$3814], sp
    ld a, b
    jr nz, jr_07d_4641

jr_07d_4641:
    sub b
    ld h, c
    sbc [hl]
    ld d, l
    ld bc, $4954
    ld [bc], a
    db $10
    xor a
    cp l
    ld d, l
    ld bc, $4954
    ld [bc], a
    db $10
    inc b
    nop
    add h
    rlca
    rrca
    add hl, de
    add hl, de
    inc bc
    ccf
    add h
    rra
    rra
    rrca
    rlca
    dec b
    nop
    add l
    inc e
    rst $38
    rst $38
    rst $08
    rst $08

jr_07d_4668:
    dec b
    rst $38
    add d
    rra
    rlca
    inc b
    nop
    add h
    ld bc, $8703
    adc a
    inc bc
    rst $38
    add l
    rst $08
    rst $00
    jp $c0c1


    inc b
    nop
    add h
    ret nz

    ldh a, [$98]
    sbc b

jr_07d_4683:
    inc bc
    db $fc
    add h
    ld hl, sp-$08
    ldh a, [$c0]
    dec b
    nop
    add h
    ld bc, $0603
    ld b, $03
    rrca
    add h
    rlca
    rlca
    inc bc
    ld bc, $0005
    add h
    ret nz

    ldh [rPCM34], a
    ld a, a
    inc b
    rst $38
    add h
    rst $30
    rst $20
    rst $00
    rlca
    inc b
    nop
    add h
    inc e
    ld a, $67
    ld h, a
    inc bc
    rst $38
    add h
    ld a, a
    ld a, a
    ld a, $1c
    dec b
    nop
    adc h
    inc bc
    rrca
    rra
    sbc c
    ld sp, hl
    rst $38
    rst $38
    sbc a
    rra
    rrca
    rlca
    rlca
    inc b
    nop
    add h
    add b
    ldh [$f1], a
    di
    inc bc
    rst $38
    push bc
    di
    pop af
    ldh [$c0], a
    ret nz

    ld [$3010], sp
    ld h, b
    add b
    sub b
    ld [hl], b
    jr nz, @+$22

    jr @+$1a

    db $10
    jr nz, jr_07d_4700

    jr c, jr_07d_46ea

    jr nz, jr_07d_4704

    jr c, @+$0a

    ld [$3010], sp
    ld h, b

jr_07d_46ea:
    add b
    sub b
    ld [hl], b
    jr nz, @+$22

    jr jr_07d_4709

    db $10
    jr nz, jr_07d_470c

    jr @+$12

    jr nz, jr_07d_4718

    jr c, @+$0a

    ld [$3010], sp
    ld h, b
    add b
    sub b

jr_07d_4700:
    ld [hl], b
    jr nz, jr_07d_4683

    sub b

jr_07d_4704:
    ld [hl], b
    jr nz, jr_07d_4727

    jr jr_07d_4721

jr_07d_4709:
    db $10
    jr nz, jr_07d_472c

jr_07d_470c:
    jr c, jr_07d_4716

    ld [$3010], sp
    ld h, b
    ld [hl+], a
    nop
    nop
    nop

jr_07d_4716:
    nop
    nop

jr_07d_4718:
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    add a
    ld [bc], a
    inc bc

jr_07d_4721:
    ld d, $0e
    inc b
    inc b
    inc bc
    rlca

jr_07d_4727:
    nop
    add h
    ld [$fe9c], sp

jr_07d_472c:
    rst $08
    dec c
    nop
    adc b
    ld b, b
    ret nc

    ldh [$f8], a
    jr nc, @+$1a

    jr nc, @+$62

    dec bc
    nop
    add h
    inc bc
    rrca
    rra
    rrca
    inc c
    nop
    add h
    and b
    ldh [$f0], a
    ldh [$0b], a
    nop
    add l
    inc a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    jr c, jr_07d_4768

    nop
    add h
    ld [$473e], sp
    ld bc, $000d
    add a
    ld b, b
    ret nz

    add b
    add b
    ret nz

    ld h, b
    ret nz

    ld a, [bc]
    nop
    add l
    db $10
    inc a
    ld a, h
    ld a, b
    jr c, @+$07

jr_07d_4768:
    nop
    add l
    db $10
    db $10
    jr c, jr_07d_47a6

    db $10
    inc d
    nop
    add d
    ld [hl], b
    ld h, b
    dec bc
    nop
    add h
    db $10
    inc a
    dec bc
    ld [bc], a
    ld b, $00
    add l
    db $10
    db $10
    jr jr_07d_4792

    db $10
    ld a, [hl+]
    nop
    sbc b
    inc b
    inc b
    ld [$2f2d], sp
    daa
    ld [hl], l
    ld a, h
    add hl, hl
    ld sp, $031b

jr_07d_4792:
    nop
    ld [$4c48], sp
    call z, $86c6
    rst $18
    or $63
    ld bc, $0530
    rst $38
    sub b
    nop
    nop
    ld b, b
    ld c, b
    ret z

jr_07d_47a6:
    db $e4
    ld h, [hl]
    cp $bc
    ld a, [hl+]
    ld e, $04
    call z, $c0e0
    add b
    ld [$8800], sp
    inc b
    ld h, $3f
    ld e, h
    ld [hl], b
    jr nz, jr_07d_47cb

    rrca
    ld [$8800], sp
    add b
    adc b
    ld hl, sp+$50
    inc e
    ld [$e018], sp
    ld b, $00
    sbc c
    ld [bc], a

jr_07d_47cb:
    inc b
    rra
    ld a, a
    jp $8081


    add c
    rst $00
    ld a, b
    nop
    nop
    db $10
    db $10
    jr nc, @+$22

    ld h, b
    ret nz

    call nz, $f8c8
    ldh a, [$f0]
    ret nz

    add b
    ld b, $00
    sbc e
    ld bc, $0301
    ld b, $01

jr_07d_47eb:
    jr c, jr_07d_47eb

    rst $38
    rst $38
    ld a, a
    ld a, a
    ld [$1808], sp
    db $10
    sub b
    sbc b
    jr @+$3a

    ld hl, sp-$4d
    ld [hl-], a
    ld h, d
    ld c, [hl]
    inc a
    sub b
    jr nz, jr_07d_4805

    nop
    inc bc
    db $10

jr_07d_4805:
    adc d
    jr c, jr_07d_4840

    ld a, h
    ld a, h
    ld l, h
    jp nz, $8682

    ld b, h
    inc a
    inc bc
    db $10
    adc l
    jr c, jr_07d_483d

    inc l
    ld b, h
    ld b, h
    ld l, b
    jr c, @+$1a

    db $10
    db $10
    jr c, @+$3a

    db $10
    rlca
    nop
    inc bc
    ld [bc], a
    add [hl]
    ld d, $1c
    ld a, l
    adc [hl]
    sbc b
    ld [hl], b
    inc b
    nop
    adc l
    ld [bc], a
    ld [bc], a
    ld b, $16
    ld d, $14
    dec l
    ld bc, $fc74
    ld hl, sp+$60
    nop
    inc bc
    db $10

jr_07d_483d:
    add a
    jr z, jr_07d_4868

jr_07d_4840:
    jr nz, jr_07d_486a

    jr z, jr_07d_485c

    db $10
    ld b, $00
    add d
    stop
    inc bc
    db $10
    add e
    nop
    db $10
    db $10
    add hl, de
    nop
    nop
    nop
    nop
    cp c
    ld hl, sp-$01
    and d
    rst $38
    ld a, a
    ld e, a

jr_07d_485c:
    ld d, h
    ld d, [hl]
    ld e, b
    ld e, a
    ld c, a
    ld a, a
    ld b, b
    ld e, a
    ld d, d
    ld e, c
    nop
    rst $38

jr_07d_4868:
    adc h
    rst $38

jr_07d_486a:
    rst $38
    cp $e2
    adc d
    ld d, d
    cp $fc
    rst $38
    nop
    cp $ca
    ld d, d
    ld d, h
    ld e, a
    ld c, a
    ld a, a
    ld b, b
    ld e, a
    ld d, d
    ld d, l
    ld d, d
    ld e, a
    ld c, a
    ccf
    ld h, h
    cp $83
    cp $22
    cp $fc
    rst $38
    nop
    rst $38

jr_07d_488c:
    ld [hl], l
    jr z, jr_07d_48f1

    inc bc
    rst $38
    and b
    sbc b
    ld b, l
    rst $38
    nop
    ld b, $7d
    ld c, b
    ld d, [hl]
    ld [hl], a
    dec de
    dec c
    ld e, $35
    ld h, a
    ld e, l
    ld h, $1e
    ld [$0000], sp
    jr c, jr_07d_488c

    add $36
    inc e
    or $e3
    ld de, $8549
    ld b, l
    ccf
    ld b, $00
    adc [hl]
    ld a, b
    ld a, h
    ld c, a
    ld c, e
    ld b, l
    ld sp, $5359
    ld d, d
    ld c, d
    ld b, [hl]
    ld h, h
    inc a
    inc c
    ld [$8800], sp
    rst $38
    add e
    rst $38
    ld c, c
    ld e, a
    ld b, l
    ld e, a
    ld c, c
    inc b
    nop
    add h
    db $db
    cp l
    sbc c
    sbc c
    dec b
    rst $38
    sbc e
    rst $20
    rst $38
    rst $38
    ld [hl], c
    ld h, l
    ld [hl], l
    ld d, l
    ld [hl], l
    ld h, c
    ld [hl], c
    ld e, a
    rst $38
    add e
    rst $38
    cpl
    ld hl, $6432
    ld a, b
    rst $38
    rst $38
    jp $f7fb


    rst $38

jr_07d_48f1:
    rst $38
    rst $20
    inc bc
    rst $38
    ld [$9500], sp
    ld b, b
    ld b, b
    ld h, h
    ld [hl-], a
    inc b
    inc d
    jp nz, Jump_000_0832

    db $fc
    ld [$0827], sp
    rst $38
    rst $38
    jp $f7fb


    rst $38
    rst $38
    rst $20
    inc bc
    rst $38
    sub l
    ld c, b
    ld [hl+], a
    sbc b
    rst $00
    nop
    rra
    rst $38
    ld b, l
    rst $38
    cp $fa
    xor d
    ld [$fa9a], a
    ld a, [c]
    cp $02
    ld a, [$9aea]
    jr nz, jr_07d_4927

jr_07d_4927:
    adc c
    ld hl, sp-$71
    db $dd
    rst $38
    ld a, a
    ld [hl], b
    ld a, e
    ld a, c
    ld [hl], a
    inc b
    ld a, a
    adc h
    ld [hl], b
    ld a, l
    halt
    rst $38
    ld [hl], e
    rst $38
    rst $38
    inc bc
    rst $18
    ld [hl], a
    xor a
    inc b
    rst $38
    add h
    inc bc
    rst $30
    xor a
    ld a, e
    inc b
    ld a, a
    adc h
    ld [hl], b
    ld a, l
    ld a, d
    ld a, l
    ld a, a
    ld a, a
    ccf
    ld a, e
    add c
    rst $38
    cp $df
    inc b
    rst $38
    add h
    nop
    cp d
    rst $10
    sbc l
    inc bc
    rst $38
    add l
    ld h, a
    cp d
    rst $38
    nop
    ld b, $03
    ld a, a
    sub e
    ld a, c
    inc e
    ld c, $1f
    ccf
    ld a, [hl]
    ld a, a
    ld a, [hl-]
    ld d, $08

jr_07d_4972:
    nop
    nop
    jr c, jr_07d_4972

    cp $fe
    db $fc
    cp $7f
    inc bc
    rst $38
    add d
    ld a, a
    ccf
    ld b, $00
    adc b
    ld a, b
    ld c, h
    ld [hl], e
    ld a, l
    ld a, a
    ccf
    ld a, a
    ld a, a
    inc bc
    ld a, [hl]
    add e
    ld a, h
    inc a
    inc c
    ld [$8800], sp
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, [hl]
    inc b
    nop
    add c
    db $db
    inc bc
    rst $20
    adc b
    rst $38
    nop
    rst $38
    add c
    rst $38
    rst $38
    jr jr_07d_49c3

    dec b
    ld a, a
    adc h
    ld a, [hl]
    ld a, [hl]
    ld a, a
    rst $38
    db $fc
    rst $38
    ccf
    ccf
    ld l, $5c
    ld a, b
    ld e, d
    inc bc
    ld a, [hl]
    add a
    ld e, d
    ld e, $18
    rst $38
    rst $38
    nop

jr_07d_49c3:
    rst $38
    ld [$8e00], sp
    ld b, b
    ld b, b
    jr nz, @+$22

    inc b
    inc d
    jp nz, Jump_000_0822

    call c, $2708
    nop
    ld e, d
    inc bc
    ld a, [hl]
    sub l
    ld e, d
    ld e, $18
    rst $38
    rst $38
    nop
    rst $38
    ld c, b
    nop
    jr @-$37

    nop
    rra
    pop af
    cp e
    rst $38
    cp $8e
    cp $9e
    xor $04
    cp $83
    adc [hl]
    cp [hl]
    xor $22
    nop
    nop
    or d
    nop
    nop
    rrca
    rra
    ccf
    ccf
    ld a, a
    rst $38
    sbc a
    add b
    rst $38
    rst $38
    ld [hl], c
    ld a, b
    ld h, $01
    ld a, [bc]
    ccf
    rst $38
    rst $38
    ld [$e0ef], a
    cp $bf
    inc bc
    rst $38
    cp $df
    call z, $f008
    rlca
    adc a
    sbc $f2
    ld [c], a
    ld l, $92
    ld d, d
    ld e, $12
    ld [de], a
    ld a, $c2
    ld [hl+], a
    add hl, de
    rlca
    ld bc, $033b
    ld c, a
    add a
    inc hl
    ld [hl], c
    db $fc
    and $cf
    ld c, $06
    inc b
    nop
    add c
    ld_long a, $ff03
    sub d
    ld a, [$f0ff]
    ldh a, [$38]
    sbc h
    ld c, h
    and $ff
    ld a, e
    ld [hl], e
    di
    ld [hl], e
    di
    ld [hl], e
    ld h, $2c
    jr c, jr_07d_4a57

    nop
    cp b
    ld bc, $2f07
    ld a, a
    db $fd
    ld sp, hl
    ld sp, hl
    ld a, a

jr_07d_4a57:
    ld a, c
    add b
    ld a, a
    rst $38
    ld sp, hl
    ld a, c
    db $10
    rrca
    rrca
    sbc a
    ld a, [c]
    ld a, [c]
    cp $fa
    ld a, [$faf6]
    ld a, [bc]

jr_07d_4a69:
    cp $fa
    ld a, [$bfd1]
    ret nz

    jr c, jr_07d_4a69

    add sp, -$28
    ret z

    ld a, b

jr_07d_4a75:
    xor b
    xor b
    jr c, jr_07d_4aa1

    jr z, jr_07d_4af3

    adc b
    adc b
    ld c, b
    jr c, jr_07d_4a87

    jr z, jr_07d_4af3

    ld a, a
    di
    rst $38
    sbc a
    cp a

jr_07d_4a87:
    inc b
    ld a, a
    push bc
    ccf
    rra
    rrca
    nop
    ld hl, sp-$7c
    add $ef
    cp $ff
    add e
    rst $38
    cp $e0
    rst $28
    ld_long $ffff, a
    ccf
    ld a, [bc]
    nop
    dec b
    cpl

jr_07d_4aa1:
    ld a, a
    db $fd
    ld hl, sp-$08
    ld [hl], c
    and b
    add b
    ld a, [hl]
    ld a, [hl]
    ld a, h
    jr z, jr_07d_4ac5

    rlca
    nop
    rrca
    rst $18
    or $f6
    ld l, [hl]
    add $26
    ld a, $06
    ld b, $1e
    add [hl]
    ld h, [hl]
    ld sp, $01cf
    inc bc
    rlca
    ccf
    ld e, a
    ld b, e
    ld b, c

jr_07d_4ac5:
    ldh a, [$e8]
    rst $28
    ld c, a
    ld c, $04
    nop
    nop
    ld bc, $03fa
    rst $38
    adc h
    ld a, [$f0ff]
    ldh [rSVBK], a
    jr c, jr_07d_4a75

    and $ff
    cp $66
    db $ec
    ld [de], a
    nop
    or b
    rrca
    db $10
    ld l, $2e
    ld l, [hl]
    ret nc

    rst $28
    rst $38
    rst $38
    sbc [hl]
    ld e, a
    ld e, a
    daa
    ld bc, $350a
    push de
    push de

jr_07d_4af3:
    ld a, a
    ld [hl], b
    ld a, a
    rst $38
    jp $fffd


    ld [hl], e
    ld a, e
    db $fc
    ld hl, sp-$10
    rlca
    adc c
    ld d, d
    ld l, [hl]
    sbc $f2
    ld a, [hl]
    cp [hl]
    ld a, [c]
    cp $fe
    ld [c], a
    cp $3e
    rra
    rlca
    ld bc, $033a
    ld [hl], l

jr_07d_4b13:
    add a
    ld a, $7f
    sbc a
    and a
    ret


    ld a, [bc]
    ld b, $04
    nop
    sub [hl]
    ld a, [$cd1d]

jr_07d_4b21:
    db $cd, $cf, $18
    rst $38
    ccf
    rst $18
    rst $28
    ld [hl], a
    cp a
    sbc a
    ld a, l
    ld a, l
    sbc l
    ld a, l
    sbc l
    ld a, l
    ld a, [hl-]
    inc [hl]
    jr c, @+$0c

    nop
    add h
    ld bc, $2a06
    ld e, e
    inc bc
    rst $28
    call Call_07d_7659
    rst $38
    ld a, a
    xor a
    xor a
    ld l, a
    rra
    rrca
    rrca
    sub c
    xor $9e
    ld l, d
    ld l, [hl]
    ld l, [hl]
    sbc d
    xor $fe
    ld a, [$6e2e]
    ld a, a
    rst $38
    ret nz

    jr c, jr_07d_4b21

    jr jr_07d_4b13

    cp b
    ret z

    ld a, b
    ld a, b
    add sp, -$08
    ld hl, sp-$28
    ld hl, sp-$08
    ld a, b
    jr c, @+$09

    cpl
    ld e, a
    ld e, a
    sub d
    rst $38
    rst $38
    ldh [rLCDC], a
    ld b, b
    ld b, h
    ld b, b
    jr nz, jr_07d_4b85

    rrca
    nop
    ld hl, sp-$04
    ld a, [hl]
    ld a, e
    ld [hl], e
    rst $38
    db $fd
    add e
    ld a, a
    ccf
    jr nc, jr_07d_4bc2

    ld d, l
    push de

jr_07d_4b85:
    dec [hl]
    ld a, [bc]
    nop
    dec b
    ld a, [hl+]
    ld e, d
    inc bc
    rst $28
    cp c
    ld e, a
    rst $38
    rst $38
    ld a, a
    ld d, a
    ld [hl], a
    ccf
    rra
    rlca
    nop
    rrca
    pop de
    xor d
    xor d
    jp nc, $fafa

    ld [c], a
    ld a, [$e2fa]
    ld_long a, $fffa
    rst $08
    ld bc, $0703
    ccf
    ld h, h
    ld a, [hl]
    ld a, a
    rst $38
    adc a
    xor a
    ld c, c
    ld a, [bc]
    inc b
    nop
    nop
    ld bc, $9dfa
    adc l
    adc l
    rrca
    jr @+$01

    ld a, a
    cp a
    rst $18
    rst $20

jr_07d_4bc2:
    rst $38
    cp a
    sbc d
    ld a, d
    inc [hl]
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    di
    nop
    ccf
    ld l, e
    ld [hl], l
    ld l, d
    ld d, l
    ld l, e
    ld [hl], l
    ld l, d
    ld d, l
    ld l, e
    ld [hl], l
    ld l, d
    ld d, l
    ld l, e
    ld [hl], l
    nop
    rst $38
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    ld l, e
    ld [hl], l
    ld l, d
    ld d, l
    ld l, e
    ld [hl], l
    ld l, d
    ld d, l
    ld l, e
    ld [hl], l
    ld l, d
    ld d, l
    ld l, e
    ld [hl], l
    ld l, d
    ld d, l
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    ld a, a
    ld a, a
    ret nz

    cp a
    ld a, a
    ld [hl], a
    ld [hl], e
    ld a, b
    ld l, a
    ld [hl], c
    ld a, a
    ccf
    ld a, a
    ld h, c
    ld a, a
    nop
    sbc c
    rst $38
    ld a, [hl]
    sbc c
    rst $38
    and l
    and l
    db $db
    jr jr_07d_4c66

    ld e, d
    rst $20
    inc h
    rst $38
    rst $38
    nop
    inc h
    inc h
    nop
    inc h
    inc h
    nop
    inc h
    inc h
    nop
    inc h
    inc h
    nop
    inc h
    inc h
    nop
    inc h
    nop
    rrca
    ccf
    ld [$837f], sp
    inc a
    dec sp
    rlca
    inc bc
    nop
    ret z

    ret nz

    ldh [$fe], a
    or $de
    jp z, $e6fe

    cp $f8
    ldh [$e0], a
    ret nz

    nop
    nop
    rst $38
    rst $38
    add c
    rst $38
    sbc c
    ld b, d
    inc h
    nop
    inc h
    inc h
    nop

jr_07d_4c66:
    inc h
    inc h
    nop
    inc h
    inc h
    ld b, b
    ld a, a
    ld a, a
    pop bc
    cp [hl]
    ld a, a
    ld c, a
    ld h, b
    ld e, a
    ld h, d
    ld a, [hl]
    ld a, a
    ld h, b
    ld a, a
    nop
    nop
    inc a
    ld a, [hl]
    sbc c
    db $db
    ld a, [hl]
    cp l
    rst $20
    db $db
    jr jr_07d_4cc1

    db $db
    ld h, [hl]
    rst $38
    rst $38
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    add hl, bc
    dec bc
    inc de
    daa
    cpl
    inc bc
    ld c, a
    add h
    daa
    inc hl
    jr jr_07d_4ca2

    dec c
    nop

jr_07d_4c9d:
    add e
    dec de
    dec a
    ld b, e
    add hl, bc

jr_07d_4ca2:
    nop
    add a
    ld bc, $c203
    and c
    jr nz, jr_07d_4c9d

    ld l, [hl]
    stop
    jp Jump_07d_7f3f


    db $fd
    cp $ff
    cp $fd
    cp $ff
    cp $fd
    cp $ff
    cp $fd
    cp $ff
    rst $38
    ld b, d

jr_07d_4cc1:
    add c
    ld b, d
    add c
    ld b, d
    add c
    ld b, d
    add c
    ld b, d
    add c
    ld b, d
    add c
    ld b, d
    add c
    db $fd
    cp $ff
    cp $fd
    cp $ff
    cp $fd
    cp $ff
    cp $fd
    cp $ff
    cp $42
    add c
    ld b, d
    add c
    ld b, d
    add c
    ld b, d
    add c
    ld b, d
    add c
    ld b, d
    add c
    ld b, d
    add c
    ld b, d
    add c
    rst $38
    ret nz

    cp a
    ld [$89ff], sp

jr_07d_4cf4:
    ld [hl], l
    rst $38
    cp $ff
    rst $38
    rst $20
    ld h, [hl]
    sbc c
    rst $20
    inc bc
    rst $38
    sbc h
    rst $20
    rst $20
    jp $ffe7


    rst $38
    inc a
    rst $38
    rst $38
    inc a
    inc a
    nop
    inc a
    inc a
    nop
    inc a
    inc a
    nop
    inc a
    inc a
    nop
    inc a
    inc a
    nop
    inc a
    rrca
    ccf
    ld a, a
    rlca
    rst $38
    sbc b
    cp h
    ld e, e
    ld b, a
    jr c, jr_07d_4d2b

    nop
    ret nz

    ldh [$fe], a
    rst $38
    rst $28
    rst $20

jr_07d_4d2b:
    rst $30
    db $e3
    rst $38
    ld sp, hl
    and $f8
    ret nc

    jr nz, jr_07d_4cf4

    nop
    rst $38
    add c
    inc bc
    rst $38
    adc a
    ld a, [hl]
    inc a
    nop
    inc a
    inc a
    nop
    inc a
    inc a
    nop
    inc a
    inc a
    rst $38
    rst $38
    pop bc
    cp [hl]
    dec bc
    rst $38
    sbc d
    nop
    jp $e781


    ld a, [hl]
    and l
    db $db
    rst $38
    rst $20
    rst $20
    jp $ffe7


    inc a
    rst $38
    rst $38
    nop
    inc bc
    inc bc
    rlca
    rlca
    ld c, $0c
    inc e
    jr c, jr_07d_4d96

    inc bc
    ld [hl], b
    add h
    jr c, jr_07d_4da7

    rra
    rlca
    dec c
    nop
    add e
    dec de
    ld h, $7c
    add hl, bc
    nop
    add a
    ld bc, $c302
    ld h, c
    ldh [$f3], a
    ld e, l
    ld [de], a
    nop
    nop
    and l
    add hl, de
    rra
    rrca
    ld e, a
    ld a, a
    ccf
    ld a, a
    rst $08
    rst $38
    rra
    ld a, $75
    ei
    cp a
    ld e, a
    ccf
    add b
    add b
    ldh [$e0], a
    ret nz

jr_07d_4d96:
    ret nz

    add $cf
    cp $bf
    ld a, [hl]
    xor $ec
    db $f4
    ld a, d
    ld a, h
    ld [hl+], a
    ld a, l
    adc l
    ld d, b
    dec hl
    dec bc

jr_07d_4da7:
    nop
    add h
    xor h
    sub e
    ld d, b
    jr z, jr_07d_4dba

    nop
    add [hl]
    inc bc
    inc b
    ld [$2713], sp
    daa
    dec b
    ld c, a
    adc [hl]
    cpl

jr_07d_4dba:
    daa
    ld de, $030c
    add b
    add b
    ldh [$e0], a
    ret nz

    add $cf
    sbc $ff
    inc bc
    cp $ff
    db $fc
    ld hl, sp+$10
    jr nz, @-$7e

    add b
    ldh [$e0], a
    ret nz

    add $cf
    cp $ff
    adc $8e
    adc h
    db $fc
    add sp, $10
    jr nz, @+$1b

    rra
    rrca
    rst $18
    di
    ld a, e
    inc sp
    ccf
    ld a, a
    rst $38
    ld a, [hl]
    db $fd
    cp a
    ld e, a
    ccf
    ld [$c706], sp
    rst $30
    ld l, d
    ccf
    dec de
    ld e, $25
    ei
    cp $6d
    dec a
    add hl, sp
    ld [hl], b
    call c, $18ef
    jr c, jr_07d_4e79

    call nc, $beda
    cp l
    ld a, a
    rst $38
    rst $38
    xor a
    rst $38
    xor [hl]
    cp $e4
    jp nz, Jump_000_0300

    dec c
    rla
    cpl
    dec [hl]
    ld d, l
    ld [hl], c
    ld a, [hl]
    ld [hl], d
    ld d, l
    dec a
    add hl, hl
    db $10
    inc c
    inc bc
    jr jr_07d_4e58

    ld a, b
    call nc, $beda
    push de
    ld a, a
    rst $10
    rst $38
    ei
    di
    ld [c], a
    and $fc
    ldh a, [rP1]
    jr jr_07d_4e69

    ld a, h
    jp c, $bdde

    cp a
    ld d, a
    rst $38
    rst $10
    rst $38
    cp $fe
    db $e4
    jp nz, $0700

    dec de
    cpl
    ld e, l
    ld c, l
    add e
    sbc h
    rst $38
    rst $38
    cp $95
    rst $08
    ld b, [hl]
    ld h, e
    ccf
    rrca
    nop
    ret nz

    or b
    add sp, $14
    ld [hl], h
    ld a, [de]
    cp $7e

jr_07d_4e58:
    sbc $a2
    db $fc
    or h
    add sp, -$50
    ret nz

    stop
    and l
    add hl, de
    rra
    rrca
    ld d, b
    db $76
    ccf
    ld d, l

jr_07d_4e69:
    cp [hl]
    ld hl, sp+$11
    dec sp
    ld e, [hl]
    and h
    ldh [$72], a
    inc a
    add b
    add b
    ldh [$e0], a
    ld b, b
    ld b, b
    ld b, [hl]

jr_07d_4e79:
    ld c, c
    db $76
    pop de
    add [hl]
    ld a, [de]
    inc e
    adc h
    add $fc
    ccf
    ld a, a
    rst $38
    ld a, a
    cpl
    dec bc
    nop
    add h
    rst $38
    di
    ld [hl], b
    jr c, @+$0e

    nop
    add [hl]
    inc bc
    rlca
    rrca
    inc e
    jr c, jr_07d_4ecf

    dec b
    ld [hl], b
    call z, Call_000_3830
    ld e, $0f
    inc bc
    add b
    add b
    ldh [$e0], a
    ld b, b
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld sp, $be46
    jp nz, $3884

    ldh a, [$e0]
    add b
    add b
    ldh [$e0], a
    ld b, b
    ld b, [hl]
    ld c, c
    ld a, [hl]
    add l
    ld a, $7a
    ld a, h
    inc d
    jr @-$0e

    ldh [rNR24], a
    rra
    rrca
    jp nc, Jump_07d_6dad

    dec l
    inc sp
    ld e, [hl]
    sbc c
    ld [hl], a
    and d
    ldh [rSVBK], a
    inc a
    rrca

jr_07d_4ecf:
    ld b, $c5
    or l
    ld e, l
    jr nz, @+$19

    rla
    ld a, $ec
    add c
    ld [hl], e
    inc hl
    daa
    ld c, a
    cp e
    rst $28
    jr jr_07d_4f09

    ld e, b
    cp h
    ld a, $7e
    ld a, a
    inc bc
    rst $38
    cp l
    rst $18
    adc a
    sbc $fe
    db $dc, $be, $00
    inc bc
    rrca
    add hl, de
    ld a, $3b
    ld a, a
    ld e, a
    ld c, a
    ld c, l
    ld l, e
    inc hl
    scf
    rra
    rrca
    inc bc
    jr jr_07d_4f29

    ld e, b
    cp h
    ld a, $7e
    ld l, a
    rst $00
    rst $28
    rst $38

jr_07d_4f09:
    rst $30
    rst $28
    sbc $de
    db $fc
    ldh a, [rP1]
    jr jr_07d_4f3a

    ld e, h
    cp [hl]
    ld a, $7f
    ld a, a
    rst $28
    rst $00
    rst $28
    rst $38
    cp $fe
    db $dc, $be, $00
    rlca
    inc e
    jr nc, jr_07d_4f87

    ld [hl], e
    db $fd
    inc bc
    rst $38
    sub [hl]

jr_07d_4f29:
    rst $08
    or $7b
    ld a, a
    ccf
    rrca
    nop
    ret nz

    ld [hl], b
    ld hl, sp-$04
    call c, $e2f6
    add d
    ld [c], a
    ld a, [hl]

jr_07d_4f3a:
    inc a
    ld a, h
    ld hl, sp-$10
    ret nz

    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    adc e
    inc bc
    rra
    inc a
    ld a, $2f
    daa
    ld de, $020c
    ld bc, $0601
    nop
    adc h
    add b
    sbc $7f
    ccf
    cp a
    rst $18
    db $fc
    ld [hl], b
    ld a, b
    ld c, [hl]
    ret nz

    add c
    rlca
    nop
    adc l
    add b
    ld b, b
    and b
    db $10
    jr z, jr_07d_4fe7

    sbc b
    xor b
    inc [hl]
    add d
    add c
    add b
    ld b, b
    inc bc
    ld b, c
    add e
    ld b, b
    ld b, b
    jr nz, jr_07d_4f80

    ld hl, $20a3

jr_07d_4f80:
    jr nz, jr_07d_4fa3

    ld [hl], h
    call nc, $ea52
    sbc d

jr_07d_4f87:
    ld a, [de]
    cp d
    ld [$d452], a
    db $f4
    inc [hl]
    or h
    db $f4
    inc h
    xor b
    inc hl
    ld [hl+], a
    ld hl, $5252
    ld d, e
    ld c, c
    add hl, hl
    dec h
    inc [hl]
    ld a, [de]
    add hl, de
    inc c
    rlca
    inc bc

jr_07d_4fa1:
    nop
    inc bc

jr_07d_4fa3:
    ld l, b
    sbc l
    xor b
    ld c, b
    ret c

    ret c

    ld l, h
    ld l, h
    xor h
    inc l
    inc l
    ret c

    jr jr_07d_4fa1

    ldh [rP1], a
    nop
    inc bc
    rlca
    inc c
    ld c, $02
    inc bc
    ld bc, $2401
    ld a, a
    ld e, e
    ld b, b
    inc hl
    inc e
    inc bc
    nop
    and b
    adc [hl]
    rst $38
    ccf
    ccf
    cp a
    cp a
    rst $18
    db $ec
    ld hl, sp-$04
    ld e, $30
    ldh [rTAC], a
    ld [$2713], sp
    inc hl
    inc hl
    ld d, $13
    inc de
    ld d, $26
    inc hl
    cpl
    ld [hl-], a
    ld b, d
    ld b, c
    add b
    add b
    ret nz

    inc bc
    ld h, b

jr_07d_4fe7:
    sbc l
    jr nz, jr_07d_5066

    ld a, [hl]
    ld a, [hl]
    cp $ff
    ld e, l
    add hl, hl
    ld hl, $1e22
    ld [hl+], a
    ld c, l
    sbc e
    adc l
    adc c
    ld e, d
    ld c, l
    ld c, c
    ld e, d
    sbc [hl]
    adc a
    cp a
    ld a, [c]
    ld b, d
    ld b, c
    nop
    nop
    ret nz

    inc bc
    ld h, b
    add d
    inc a
    ld a, [hl]
    inc b
    rst $38
    add h
    ld a, a
    dec a
    ld hl, $3322
    nop
    adc e
    inc bc
    inc e
    dec hl
    cpl
    ld [hl-], a
    dec sp
    ld e, $0f
    inc bc
    ld bc, $0601
    nop
    adc b
    add b
    ld e, [hl]
    cp c
    ld sp, hl
    db $e3
    db $fc
    di
    cp a
    inc bc
    rst $38
    add c
    cp $07
    nop
    adc l
    add b
    ret nz

    ld h, b
    ldh a, [$d8]
    adc b
    ld l, b
    ld e, b
    call c, $fefd
    rst $38
    ld a, a
    inc bc
    ld a, [hl]
    add e
    ld a, a
    ld a, a
    ccf
    inc bc
    ld a, $a3
    ccf
    ccf
    ld a, $9c
    inc a
    cp [hl]
    ld e, $6e
    xor $4e
    ld e, $be
    inc a
    inc e
    call c, Call_000_1c5c
    db $fc
    ld a, b
    inc a
    dec a
    ld a, $7d
    ld a, l
    ld a, h
    ld a, [hl]
    ld a, $3e
    cpl
    rla
    rla

jr_07d_5066:
    dec bc
    inc b
    inc bc
    nop
    inc bc
    cp b
    sbc l
    ld a, b
    ld hl, sp+$68
    ld l, b
    or h
    or h
    ld [hl], h
    db $f4
    db $f4
    add sp, -$18
    db $10
    ldh [rP1], a
    nop
    inc bc
    inc b
    dec bc
    rrca
    inc bc
    inc bc
    ld bc, $2401
    ld e, e
    ld [hl], l
    ld a, a
    ccf
    inc e
    inc bc
    nop
    adc d
    adc [hl]
    ld [hl], e
    ld sp, hl
    ld sp, hl
    pop hl
    di
    db $fc
    ei
    rst $38
    cp a
    inc bc
    rst $38
    adc d
    rlca
    rrca
    rra
    ld a, [hl-]
    dec a
    ccf
    dec de
    dec e
    rra
    rra
    inc b
    ccf
    add l
    ld a, a
    ld a, a
    add b
    add b
    ret nz

    inc bc
    and b
    sub h
    ldh [$fc], a
    sbc $da
    jp nz, $bfe7

    rst $18
    rst $18
    sbc $1e
    ld a, $7d
    ld [$f9f5], a
    ld l, e
    ld [hl], l
    ld a, c
    ld a, e
    inc b
    rst $38
    add l
    ld a, a
    ld a, a
    nop
    nop
    ret nz

    inc bc
    and b
    adc d
    db $fc
    jp nz, $9981

    sbc c
    add c
    jp $dfff


    sbc $32
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    add a
    add hl, bc
    ld d, $77
    rst $38
    ld l, l
    dec l
    ld [de], a
    dec b
    nop
    sbc l
    inc bc
    inc a
    ld h, [hl]
    di
    rst $30
    xor $f8
    add e
    sbc a
    ld d, [hl]
    dec l
    rrca
    nop
    jr nc, @+$52

    or b
    ld d, b
    sub e
    scf
    dec c
    dec h
    ld de, $c143
    add c
    daa
    xor e
    ldh a, [$60]
    rlca
    nop
    rst $00
    ld [de], a
    dec l
    ld l, l
    rst $38
    db $76
    ld d, $09
    nop
    nop
    jr nc, jr_07d_516a

    or b
    ld d, b
    sub b
    ld [hl], $1e
    ld [hl+], a
    ld [de], a
    ld b, d
    add $82
    ld [de], a
    sbc $76
    jr nz, jr_07d_5129

jr_07d_5129:
    ld bc, $0402
    rra
    jr c, jr_07d_51ac

    ld e, l
    ld l, a
    ld e, a
    ld a, l
    ld e, l
    ld a, a
    xor a
    or b
    rst $08
    ret nz

    ld b, b
    ret nz

    ld b, b
    rst $20
    rst $30
    ld a, l
    ld [hl], l
    ld [hl], c
    jp hl


    jp hl


    ld sp, hl
    xor a
    sub a
    inc [hl]
    ret z

    nop
    jr c, jr_07d_51bf

    ei
    ld a, [$f2fa]
    ld b, l
    cp [hl]
    sbc b
    add e
    sbc a
    ld e, h
    cpl
    inc b
    nop
    add c
    ld bc, $0304
    add a
    ld a, [bc]
    rla
    ld [hl], a
    rst $38
    ld l, l
    dec l
    ld [de], a
    inc bc
    nop
    or h
    ld hl, sp-$0c
    ei

jr_07d_516a:
    di
    ld a, [c]
    di
    rst $20
    inc c
    di
    adc a

jr_07d_5171:
    ccf
    cp a
    ld c, [hl]
    add hl, bc
    ld c, $00
    jr c, jr_07d_5171

    sbc $1e
    ld a, [hl-]
    ld [hl-], a
    ld [de], a
    ld [bc], a
    ld b, c
    pop bc
    add l
    dec bc
    ret nc

    ld a, b
    jr c, jr_07d_5187

jr_07d_5187:
    nop
    inc a
    ld [hl], e
    ld a, [$f9f9]
    ei
    or $f8
    add e
    sbc a
    ld d, [hl]
    dec l
    rrca
    nop
    ld a, a
    ret nz

    sbc a
    cp a
    cp c
    inc bc
    or b
    inc bc
    cp b
    sub l
    cp a
    xor a
    sbc a
    ret nz

    ld a, a
    cp $03
    ld sp, hl
    push af
    db $fd
    dec e
    dec c

jr_07d_51ac:
    dec c
    dec b
    dec a
    ld [hl], l
    ld a, l
    call $03f9
    cp $27
    nop
    add a
    add hl, bc
    rra
    ld a, a
    sub d
    ld a, a
    ccf
    ld [de], a

jr_07d_51bf:
    dec b
    nop
    sbc l
    inc bc
    ccf
    ld e, a
    adc a
    adc $dd
    ld a, a
    ld a, a
    rst $38
    ld [hl], l
    dec hl
    rrca
    nop
    jr nc, jr_07d_5241

    ret nc

    or b
    di
    push af
    rst $38
    rst $18
    rst $28
    rst $38
    cp a
    ld a, a
    db $fd
    ld a, e
    or b
    ld h, b
    rlca
    nop
    xor c
    ld [de], a
    ccf
    ld a, a
    adc c
    ld a, a
    rra
    add hl, bc
    nop
    nop
    jr nc, jr_07d_525d

    ret nc

    or b
    ldh a, [$f6]
    ld a, [$eede]
    cp $be
    ld a, [hl]
    cp $ba
    ld d, [hl]
    jr nz, jr_07d_51fc

jr_07d_51fc:
    ld bc, $0703
    rra
    cpl
    ld b, a
    ld l, a
    ld a, l
    ld a, b
    ld h, a
    ld a, d
    ld [hl], l
    rst $38
    rst $38
    rst $08
    inc b
    ret nz

    sbc d
    rst $20
    sub l
    adc a
    cp a
    cp a

jr_07d_5213:
    rst $38
    ccf
    rst $38
    ld a, l
    rst $38
    db $fc
    ret z

    nop
    jr c, jr_07d_5269

    add a
    rst $20
    rst $20
    adc a
    ld a, [hl]
    db $fd
    ld a, a
    ld a, a
    db $fc
    ld [hl], e
    cpl
    inc b
    nop
    add c
    ld bc, $0204
    add a
    dec bc
    rra
    ld a, a
    sub d
    ld a, a
    ccf
    ld [de], a
    inc bc
    nop
    or h
    ld hl, sp+$0c
    rlca
    ld c, $4f
    rrca
    inc e
    ei

jr_07d_5241:
    rst $38
    ld a, a
    rst $38
    rst $38
    ld c, a
    rrca
    ld c, $00
    jr c, jr_07d_5213

    ld a, $fa
    cp $de
    xor $fe
    rst $38
    cp a
    ld a, a
    ei
    or b
    ld c, b
    jr c, jr_07d_5259

jr_07d_5259:
    nop
    inc a
    ld c, a
    add a

jr_07d_525d:
    and a
    add a
    add [hl]
    call Call_07d_7f7f
    rst $38
    ld [hl], l
    dec hl
    rrca
    nop
    ld a, a

jr_07d_5269:
    ldh [$c0], a
    add b
    add a
    dec b
    adc b
    sub [hl]
    adc e
    adc h
    sub a
    rst $18
    ldh [$7f], a
    cp $07
    inc bc
    dec c
    db $fd
    dec l
    dec d
    dec d
    dec c
    dec a
    ld a, l
    push af
    db $fd
    ei
    rlca
    cp $22
    nop
    nop
    nop
    nop
    dec b
    nop
    adc e
    inc bc
    inc c
    inc de
    cpl
    cpl
    ld b, e
    cp e
    ei
    db $fd
    ld a, e
    ccf
    ld b, $00
    adc d
    inc bc
    inc c
    inc de
    ld hl, $4820
    ld e, [hl]
    ld c, d
    jr nz, jr_07d_52c5

    inc bc
    nop
    add e
    inc bc
    rra
    ccf
    inc bc
    ld a, a

jr_07d_52ae:
    sub a
    ld e, l
    ld h, e
    db $dd
    db $e3
    cp a
    ld b, b
    ccf
    rlca
    jr jr_07d_52e0

    ld e, a
    ld e, a
    or a
    cp e
    cp a
    sbc a
    sbc a
    adc a
    ld b, e
    ld b, b
    jr nz, jr_07d_52dd

jr_07d_52c5:
    rlca
    dec b
    nop
    add a
    ld bc, $0906
    rla
    scf
    ld b, c
    ld e, [hl]
    inc b
    cp a
    inc b
    nop
    add e
    ld a, [hl]
    add c
    ld a, a
    inc b
    rst $38
    sub l
    ld a, [hl]
    inc a

jr_07d_52dd:
    cp l
    rst $38
    rst $38

jr_07d_52e0:
    cp a
    cp a
    sbc a
    sbc a
    ld c, a
    ld b, e
    ld b, b
    jr nz, jr_07d_5309

    db $10
    db $10
    ld [$0204], sp
    ld bc, $0600
    rst $38
    ld [$8200], sp
    add c
    ld a, [hl]
    inc b
    nop
    sbc h
    jr c, @+$7e

    sbc $9b
    ei
    ld h, [hl]
    dec a
    ld a, [de]
    dec c
    inc bc
    ld [bc], a
    ld bc, $8080
    ld h, b

jr_07d_5309:
    ldh a, [$d8]
    db $cc, $26, $13
    adc c
    ld b, h
    ld [hl+], a
    ld de, $0408
    ld [bc], a
    ld bc, $0004
    adc c
    add b
    ret nz

    ld h, b
    jr nc, jr_07d_52ae

    ld b, b
    nop
    nop
    add b
    inc bc
    nop
    adc l
    jr c, jr_07d_53a3

    sbc $9a
    ld a, [$fe64]
    cp $82
    ld a, h
    ld b, h
    cp $fe
    ld a, [bc]
    sub d
    add c
    add d
    dec a
    nop
    adc e
    inc bc
    rrca
    inc e
    jr nc, jr_07d_536e

    ld a, h
    add $86
    add d
    ld b, h
    ccf
    ld b, $00
    adc d
    inc bc
    rrca
    inc e
    ld a, $3f
    ld [hl], a
    ld h, e
    ld [hl], a
    ccf
    rra
    inc bc
    nop
    sbc l
    inc bc
    inc e
    ld [hl+], a
    ld c, c
    ld b, c
    ld b, c
    ld h, e
    ld a, [hl]
    cp [hl]
    sbc h
    ret nz

    ld a, a
    ccf
    rlca
    rra
    jr c, jr_07d_53cb

    ld h, [hl]
    ret z

    call nz, $e0c0
    ldh [$f0], a
    ld a, h
    ld a, a

jr_07d_536e:
    ccf
    rra
    rlca
    dec b
    nop
    add a
    ld bc, $0e07
    jr @+$3a

    ld a, [hl]
    ld h, c
    inc b
    ret nz

    inc b
    nop
    add h
    ld a, [hl]
    rst $38
    add b
    nop
    inc bc
    rst $20
    sub h
    add c
    jp $0042


    nop
    ret nz

    ret nz

    ldh [$e0], a
    ld [hl], b
    ld a, h
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rlca
    inc bc
    ld bc, $0007
    add hl, bc
    rst $38
    add c
    ld a, [hl]
    inc b
    nop

jr_07d_53a3:
    sbc h
    jr c, jr_07d_5422

    cp [hl]
    rst $38
    cp $7d
    dec sp
    rla
    rrca
    ld [bc], a
    inc bc
    ld bc, $8080
    ldh [$90], a
    xor b
    ld [hl], h
    ld a, [$fefd]
    ld a, a
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $0004
    adc c
    add b
    ld b, b
    and b
    ret nc

    ldh [$e0], a
    ret nz

    add b

jr_07d_53cb:
    add b
    inc bc
    nop
    adc l
    jr c, @+$7e

    cp [hl]
    cp $fe
    ld a, h
    cp $82
    cp $7c
    ld a, h
    cp $92
    ld a, [bc]
    cp $81
    add $3a
    nop
    nop
    nop
    dec b
    nop
    add a
    ld bc, $1906
    ld h, a
    rst $38
    ld a, b
    rlca
    ld [$9a00], sp
    ld e, $ff
    ccf
    xor l
    or e

jr_07d_53f6:
    rst $18
    ld c, l
    jr z, jr_07d_53f6

    inc bc
    nop
    nop
    ld b, b
    ldh [$f0], a
    ldh a, [$f8]
    ld hl, sp-$10
    ld hl, sp-$12
    rst $20
    adc $10
    jr nz, jr_07d_53cb

    ld [$a300], sp
    ld hl, sp+$2e
    rst $10
    sbc $d0
    sub b
    and b
    jr nz, jr_07d_5457

    add b
    ld e, $ff
    ccf
    xor l
    or e
    rst $18
    ld c, l
    inc l
    db $fc
    ld e, l

jr_07d_5422:
    dec l
    ld de, $161a
    ld d, $0c
    nop
    ld c, $fe
    db $f4
    inc b
    ld [$c0b0], sp
    add b
    rlca
    nop
    or b
    ld e, $ff
    ccf
    xor l
    or a
    reti


    ld c, d
    ld [hl], $f6
    ld l, l
    ld b, e
    adc l
    ccf
    rrc e
    ld b, $f8
    rst $00
    di
    dec sp
    rrca
    ld b, $05
    ld [bc], a
    ld bc, $6703
    ld e, h
    ld hl, $001e
    nop
    ldh a, [$f8]
    inc e

jr_07d_5457:
    ld e, h
    inc e
    db $f4
    ld a, [bc]
    pop af
    dec l
    db $ed
    ld e, e
    and l
    ld e, $f6
    inc l
    jr c, @+$42

    nop
    adc b
    rst $38
    rst $28
    rst $38
    and d
    ldh [$e8], a
    rst $18
    rst $38
    ld [$8800], sp
    rst $38
    rst $18
    ld a, a
    inc de
    inc bc
    ld b, e
    ei
    rst $38
    dec e
    nop
    add a
    ld bc, $1e07
    ld a, b
    add a
    ld a, a
    rlca
    ld [$8600], sp
    ld e, $f3
    pop hl
    ld a, e
    ld a, a
    cp a
    inc bc
    rst $38
    sub c
    inc bc
    nop
    nop
    ld b, b
    and b
    sub b
    sub b
    adc b
    ld [$1810], sp
    ld [hl], $f9
    cp $f0
    ldh [$c0], a
    ld [$a300], sp
    ld hl, sp-$0a
    add hl, sp
    ld a, $30
    ld [hl], b
    ld h, b
    ldh [$c0], a
    add b
    ld e, $f3
    pop hl
    ld a, e
    ld a, a
    cp a
    rst $38
    ei
    di
    ld h, e
    inc sp
    rra
    ld e, $1a
    ld a, [de]
    inc c
    nop
    ld c, $f2
    inc c
    db $fc
    ld hl, sp-$10
    ret nz

    add b
    rlca
    nop
    and d
    ld e, $f3
    pop hl
    ld a, e
    ld a, a
    cp a
    db $fd
    ld sp, hl
    ld sp, hl
    ld [hl], e
    ld a, a
    rst $38
    db $fd
    call $060d
    ld hl, sp+$3f
    adc $36
    ld a, [bc]
    rlca
    rlca
    inc bc
    ld bc, $6703
    ld a, a
    ccf
    ld e, $00
    nop
    ldh a, [$08]
    inc bc
    db $e4
    adc e
    inc c
    cp $ff
    di
    di
    rst $20
    rst $18
    ld a, [$34fa]
    jr c, jr_07d_553b

    nop
    adc b
    rst $38
    sub b
    add b
    rst $18
    sbc a
    sbc a
    cp a
    rst $38
    ld [$8300], sp
    rst $38
    ld hl, $0583
    rst $38
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add [hl]
    nop
    nop
    ld bc, $0703
    rra
    inc bc
    ccf
    ret


    ld a, l
    rst $20
    rst $28
    rst $30
    di
    di
    db $e3
    rrca
    rst $38
    ei
    cp l
    cp $cc
    rst $28
    ei
    ei
    ld sp, hl
    rst $28
    rst $18
    rra
    rst $30
    rst $38
    di
    db $fc
    cp $ff
    rrca
    rst $38

jr_07d_553b:
    rst $38
    ldh a, [$f2]
    rst $38
    ccf
    sbc a
    ld h, a
    pop af
    pop af
    ei
    rst $38
    nop
    nop
    add b
    ldh [$f0], a
    db $fc
    xor $7e
    ld a, [de]
    add e
    call $e1e5
    db $e3
    or $fa
    push hl

jr_07d_5557:
    call $8e8c
    adc l
    sbc a
    cp a
    ld l, a
    ld h, d
    ld a, a
    ccf
    rra
    rrca
    rlca
    ld bc, $ff00
    rst $38
    inc bc
    ccf
    db $e3
    inc e
    and b
    db $10
    jr c, jr_07d_5557

    ld bc, $c301
    rst $38
    rst $38
    ccf
    rst $38
    rst $28
    cp $fc
    ld a, b
    ldh [$63], a
    ld c, a
    sbc [hl]
    sbc a
    add a
    rst $38
    rst $38
    db $fc
    rst $38
    sbc $f2
    ld d, $46
    ld a, [hl]
    ccf
    sbc a
    sbc a
    sub a
    ld b, $8e
    inc e
    jr c, jr_07d_55f3

    ldh [$c0], a
    nop
    rlca
    rra
    ld sp, $7f3b
    ld a, a
    db $fc
    rst $38
    cp a
    add a
    call nz, $ffe7
    ld a, a
    rra
    rrca
    ldh [$f8], a
    db $fc
    cp $be
    sbc e
    rst $38
    rst $28
    db $eb
    ei
    ld sp, hl
    jp nz, $8c8e

    ld hl, sp-$10
    ld a, $6f
    rst $38
    rst $28
    sub $ce
    sbc h
    ld h, b
    inc a
    ld d, h
    db $d3
    push af
    jp hl


    ld a, a
    dec a
    rra
    inc a
    ld l, d
    push bc
    and a
    sbc a
    cp [hl]
    ld a, [hl]
    inc a
    ld [$8900], sp
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    add hl, bc
    dec bc
    inc de
    daa
    cpl
    inc bc
    ld c, a
    add h
    daa
    inc hl
    jr jr_07d_55e8

    dec c
    nop

jr_07d_55e3:
    add e
    dec de
    dec a
    ld b, e
    add hl, bc

jr_07d_55e8:
    nop
    add a
    ld bc, $c203
    and c
    jr nz, jr_07d_55e3

    ld l, [hl]
    ld [de], a
    nop

jr_07d_55f3:
    cp [hl]
    ld bc, $0703
    rra
    ccf
    jr c, @+$22

    ld b, d
    sbc b
    sub b
    jp z, $dfce

    rst $38
    rrca
    rst $38
    add a
    jp $f7c3


    or $04
    inc c
    ld a, [hl]
    ld de, $e020
    ld [$fc98], sp
    db $fc
    add [hl]
    jp $80f1


    nop
    rrca
    rrca
    ld bc, $e0c0
    ld hl, sp+$3e
    ld e, $1c
    rra
    nop
    nop
    add b
    ldh [$30], a
    inc e
    ld e, $86
    and $ff
    ld [hl], e
    ld a, e
    ld a, a
    sbc a
    adc $e6
    inc bc
    ei
    adc l
    ld sp, hl
    cp $fe
    rst $20
    ld [hl], e
    ld a, a
    ld a, a
    ccf
    rra
    rrca
    rlca
    ld bc, $0300
    ldh a, [$81]
    db $fc
    dec bc
    rst $38
    add c
    ccf
    inc bc
    rra
    inc bc
    rst $38
    add e
    db $fc
    pop af
    rst $20
    ld b, $ff
    sbc e
    sbc $fe
    cp $be
    sbc [hl]
    rst $18
    ld a, a
    ld a, a
    rst $38
    cp $fe
    db $fc
    ld hl, sp-$20
    ldh [$c0], a
    nop
    rlca
    jr jr_07d_56a8

    inc h
    ld h, c
    ld b, a
    rst $30
    db $fc
    call z, $03fe
    rst $38
    xor e
    ld a, a
    rra
    rrca
    ldh [$98], a
    inc c
    add d
    jp nz, $ffef

    ld a, c
    dec a
    ccf
    rst $38
    cp $fe
    db $fc
    ld hl, sp-$10
    ld a, $53
    sub c
    cp c
    cp $fa
    db $fc
    ld h, b
    inc a
    ld a, h
    cp a
    sbc a
    rst $18
    ld b, a
    inc hl
    rra
    inc a
    ld a, [hl]
    rst $38
    db $fd
    ld sp, hl
    ld [c], a
    ld b, [hl]
    inc a
    ld [$8900], sp
    inc bc
    inc bc
    rlca
    rlca
    ld c, $0c
    inc e

jr_07d_56a8:
    jr c, jr_07d_56da

    inc bc
    ld [hl], b
    add h
    jr c, @+$3e

    rra
    rlca
    dec c
    nop
    add e
    dec de
    ld h, $7c
    add hl, bc
    nop
    add a
    ld bc, $c302
    ld h, c
    ldh [$f3], a

jr_07d_56c0:
    ld e, l
    ld [de], a
    nop
    nop
    nop
    nop
    adc c
    ld [bc], a
    scf
    ld a, $13
    rra
    cpl
    ccf
    ld a, a
    ld a, a
    inc bc
    rst $38
    sbc l
    ld b, b
    daa
    ld b, b
    ld a, a
    ld b, b
    ldh a, [$78]

jr_07d_56da:
    jr jr_07d_56c0

    ld a, $d4
    ld [$d2ef], a

jr_07d_56e1:
    sub d
    ld [hl-], a
    ld [hl], d
    and $01
    rst $38
    nop
    ld [bc], a
    scf
    ld a, $13
    rra
    daa
    ccf
    ld a, a
    inc bc
    rst $38
    sbc [hl]
    add b
    adc a
    ld b, b
    ld a, a
    nop
    ld b, b
    ldh a, [$78]
    jr jr_07d_56e1

    ld a, $d4
    ld [$eaeb], a
    sbc c
    ld a, c
    ld a, [c]
    ld bc, $00ff
    inc a
    ld a, a
    rst $38
    rst $38
    cp l
    ld b, e
    ld a, $4f
    ld a, a
    inc bc
    rst $38
    sub e
    add b
    ld b, b
    ld a, a
    nop
    and b
    ldh a, [$b4]
    adc [hl]
    add h
    ld [hl], d
    sbc a
    ld a, [bc]
    ld a, [c]
    ei
    cp $fd
    ld a, d
    ld [hl], c
    rst $38
    rlca
    nop
    adc c
    jr jr_07d_574a

    rrca
    inc c
    rlca
    rrca
    rrca
    rra
    ccf
    rlca
    nop
    ld a, [c]
    ld b, b
    db $e3
    rst $38
    ld e, $8c
    call nz, $93d6
    jp z, $efff

    ld b, l
    nop
    nop
    ld bc, $0602
    inc bc
    ld [de], a

jr_07d_5749:
    ccf

jr_07d_574a:
    ccf
    dec de
    jr nz, jr_07d_578e

    ld a, a
    call nc, $c4d6
    db $e4
    ld h, [hl]
    db $e4
    ld [hl+], a
    ld [c], a
    ld h, h
    db $e4
    db $e4
    ld [$3dda], a
    ld bc, $00ff
    ld h, c
    ld a, c
    ccf
    ccf
    rra
    rrca
    rra
    rla
    ld a, b
    rst $38
    rst $38
    ld c, a
    dec b
    nop
    nop
    add b
    ret nz

    jp $fee7


    cp [hl]
    call c, Call_07d_6e6c
    rst $00
    add [hl]
    call z, $c7c6
    xor $68
    ld bc, $0001
    ld e, $31
    inc e
    inc bc
    ld bc, $1000
    dec sp
    ccf
    rra
    inc sp
    ld b, b

jr_07d_578e:
    ld a, a
    jr nc, jr_07d_5749

    or b
    sub b
    ret nc

    ret nc

    ld d, b
    ret z

    ret z

    add sp, -$0c
    ld [$ddea], a
    ld bc, $62ff
    ld a, a
    ld a, $3f
    rra
    cpl
    ccf
    ld a, a
    ld a, a
    inc bc
    rst $38
    add h
    ld b, b
    daa
    ld b, b
    ld a, a
    stop
    ldh [rSC], a
    dec [hl]
    cpl
    dec e
    rra
    jr nc, @+$41

    ld c, c
    ld e, e
    or l
    sub h
    rst $38
    ld a, a
    jr c, jr_07d_5840

    ld a, a
    ld b, b
    or b
    add sp, -$08
    inc e
    jp z, Jump_000_36ec

    or l
    xor $ee
    adc $8e
    ld e, $ff
    rst $38
    nop
    ld [bc], a
    dec [hl]
    cpl
    dec e
    rra
    jr c, jr_07d_5819

    ld c, c
    cp e
    sub h
    rst $38
    rst $38
    ldh a, [$7f]
    ld a, a
    nop
    ld b, b
    or b
    add sp, -$08
    inc e
    jp z, Jump_000_36ec

    or l
    or $e7
    add a
    ld c, $ff
    rst $38
    nop
    inc a
    ld b, e
    sub c
    add c
    jp Jump_000_3f7f


    ld [hl], b
    ld a, a
    xor d
    sbc d
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    and b
    ld d, b
    db $f4
    ld a, [$8efc]
    ld h, l
    or $fe
    ld c, l
    xor d
    sbc e
    or $8f
    rst $38
    rlca
    nop
    adc c
    jr jr_07d_582d

    add hl, bc
    dec bc

jr_07d_5819:
    rlca
    inc c
    ld a, [bc]
    inc e
    ccf
    rlca
    nop
    db $db
    ld b, b
    and e
    dec e
    ld [c], a
    db $f4
    ld a, h
    ld l, d
    db $ed
    or $92
    xor e
    ld b, l

jr_07d_582d:
    nop
    nop
    ld bc, $0503
    inc bc
    ld [de], a
    dec l
    dec h
    rra
    ccf
    ld a, a
    ld a, a
    ld l, h
    ld l, d
    db $fc
    db $fc
    ld a, d
    db $fc

jr_07d_5840:
    cp $fe
    ld a, h
    db $fc
    ld a, h
    ld [hl], $e6
    jp $ffff


    nop
    ld h, c
    ld e, c
    ld h, $22
    rla
    ld [$1c10], sp
    ld a, a
    sbc a
    or d
    ld c, e
    dec b
    nop
    nop
    add b
    ld b, b
    ld b, e
    dec h
    ld a, [hl-]
    jp nz, $fce4

    ld a, [c]
    ld sp, hl
    cp $7c
    ld a, d
    ld sp, hl
    cp $78
    ld bc, $0001
    ld e, $2f
    rra
    inc bc
    ld bc, $1000
    dec hl
    dec h
    dec e
    ccf
    ld a, a
    ld a, a
    ldh a, [$c8]
    dec b
    ldh a, [$03]
    ld hl, sp-$6a
    db $ec
    db $76
    ld [hl], $e3
    rst $38
    rst $38
    ld h, d
    ld e, l
    inc sp
    add hl, hl
    inc de
    inc a
    ccf
    ld c, c
    ld e, e
    or l
    sub h
    rst $38
    ld a, a
    jr c, jr_07d_5915

    ld a, a
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    sub c
    ld bc, $0603
    inc c
    add hl, de
    rlca
    ccf
    rst $38
    rst $18
    jr c, jr_07d_5911

    adc b
    scf
    ldh [$fc], a
    sbc a
    inc bc
    inc bc
    nop
    add c
    add b
    inc bc
    nop
    adc b
    add b
    ret nz

    ld h, b
    jr nc, @+$1a

    ldh [$c0], a
    ret nz

    inc bc
    ld h, b
    sbc d
    jr nc, jr_07d_58f7

    ld h, b
    ret


    nop
    ld bc, $7e6b
    ld h, b
    ld b, b
    ret nc

    add h
    ld [$0140], sp
    inc bc
    rlca
    ld c, $1d
    dec a
    ld e, l
    cp d
    cp d

Call_07d_58dc:
    ld [hl], d
    ld h, h
    call nz, $ff05
    add e
    cp $fc
    ld sp, hl
    dec b
    rst $38
    add [hl]
    ld a, a
    ccf
    rra
    ldh [$c0], a
    ret nz

    inc bc
    ldh [$8a], a
    ldh a, [$f0]
    dec e
    dec a
    ld e, l
    cp e

jr_07d_58f7:
    cp e
    ld [hl], e
    ld h, a
    rst $00
    inc bc
    rst $38
    adc c
    rst $18
    jr c, jr_07d_5965

    adc b
    scf
    rst $38
    rst $38
    sbc a
    inc bc
    inc bc
    nop
    or [hl]
    add b
    ret nz

    di
    xor l
    ld [hl], e
    ld l, d
    ld e, l

jr_07d_5911:
    ld e, [hl]
    ld a, a
    ld e, e
    ld a, [hl+]

jr_07d_5915:
    ccf
    ld d, [hl]
    cp e
    xor d
    and $40
    ld [hl-], a
    inc [hl]
    ld l, l
    ld a, c
    ld a, d
    db $f4
    ldh a, [$f0]
    ld l, a
    rst $18
    sub c
    ld a, h
    inc e
    ld [$3216], sp
    ret nz

    ldh a, [$e0]
    db $c3, $05, $0c


    jr jr_07d_5983

    add h
    ld b, h
    ld b, d
    ld [hl+], a
    ld [hl+], a
    ld de, $1d15
    jr @+$0e

    ld b, $03
    ld bc, $0003
    sub l
    add b
    ld h, b
    jr jr_07d_594e

    ld bc, $38c3
    rlca
    add hl, de
    daa
    ld e, [hl]

jr_07d_594e:
    db $fc
    ld hl, sp-$1d
    inc e
    ldh [$88], a
    db $10
    jr nz, jr_07d_5997

    add b
    inc bc
    nop
    sub e
    ld a, [c]
    db $f4
    db $ed
    ld sp, hl
    ld a, [$f0f4]
    ldh a, [$87]
    ld b, a

jr_07d_5965:
    ld b, e
    inc hl
    inc hl
    ld de, $1d15
    ld hl, sp-$04
    cp $05
    rst $38
    add h
    adc a
    rra
    ccf
    ld a, a
    inc b
    rst $38
    sub b
    add b
    ld h, b
    jr jr_07d_5983

    ld bc, $f8c3
    rst $38
    add hl, de
    daa
    ld e, [hl]

jr_07d_5983:
    db $fc
    ld hl, sp-$1d
    rra
    rst $38
    stop
    inc b
    rst $38
    sub h
    cp $fd
    ei
    or $ff
    ld hl, sp-$40
    jr nz, @-$3e

    add e

jr_07d_5997:
    ld de, $ff40
    rra
    ld h, e
    db $fc
    rra
    rst $20
    ld sp, hl
    ld a, $04
    rst $38
    and h
    ld a, a
    cp a
    rst $18
    rst $28
    sub a
    or [hl]
    or [hl]

jr_07d_59ab:
    db $db
    db $db
    db $dd
    db $ed
    xor $1e
    ld [hl-], a
    ldh [rP1], a
    sub h
    ld bc, $b01f
    inc h
    ld a, b
    db $10
    xor l
    db $d2, $cc, $18

    ld sp, $4161
    and c
    ld b, e
    ld b, e
    adc e
    sub a
    scf
    inc b
    rst $38
    add h
    cp $fd
    ei
    or $04
    rst $38
    ret c

    ld a, a
    cp a
    rst $18
    rst $28
    sub a
    or [hl]
    or [hl]
    db $db
    db $db
    db $dd
    db $ed
    xor $61
    ld b, c
    and c
    ld b, e
    ld b, e
    adc e
    sub a
    scf
    rst $38
    ld hl, sp-$40
    jr nz, jr_07d_59ab

    add e
    ld de, $ff40
    rra
    ld h, e
    db $fc
    rra
    rst $20
    ld sp, hl
    ld a, $c0
    or e
    sbc $4c
    ld a, l
    ld a, [hl]
    ld a, a
    ld e, l
    ld l, a
    scf
    jr nz, jr_07d_5a6d

    rst $18
    xor $a6
    ld b, b
    db $ec
    jp hl


    ret nc

    jp nz, $83c1

    add a
    add a
    sub b
    nop
    ld c, [hl]
    inc bc
    and d
    ldh [$c9], a
    adc l
    scf
    dec bc
    add hl, de
    jr nc, jr_07d_5a83

    nop
    ld h, h
    inc h
    ld [hl], a
    or a
    cp e
    db $db
    db $db
    ld l, l
    ld l, c
    ld h, c
    rst $30
    ei
    db $fd
    cp $04
    rst $38
    sub h
    rrca
    sbc a
    rst $20
    ld hl, sp+$3e
    call nz, $fff8
    and $d8
    and c
    inc bc
    inc b
    inc bc
    rra
    rst $38
    ld l, a
    rst $18
    cp a
    ld a, a
    inc b
    rst $38
    sub h
    db $ec
    jp hl


    ret nc

    jp nz, $83c1

    add a
    add a
    ld [hl], a
    or a
    cp e
    db $db
    db $db
    ld l, l
    ld l, c
    ld h, c
    rst $30
    ei
    db $fd
    cp $04
    rst $38
    add h
    ld l, a
    rst $18
    cp a
    ld a, a
    inc b
    rst $38
    sub b
    rrca
    sbc a
    rst $20
    ld hl, sp+$3e
    call nz, $fff8
    and $d8
    and c

jr_07d_5a6d:
    inc bc
    inc b
    inc bc
    rra
    rst $38
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    add l
    nop
    nop
    rlca
    ld bc, $031b

jr_07d_5a7f:
    ccf
    or l
    ld e, $0e

jr_07d_5a83:
    inc bc
    inc b
    dec bc
    dec bc
    inc b
    inc bc
    nop
    nop
    cp [hl]
    reti


    and [hl]
    reti


    rst $30
    rst $38
    rst $38
    jp nz, $e3da

    ld a, a
    ld b, c
    rst $38
    add b
    nop
    nop
    ldh [$80], a
    ld b, [hl]
    rst $08
    rst $18
    cp a
    ld a, $7c
    ldh [$90], a
    ld l, b
    ld l, b
    sub b
    ld a, b
    rst $38
    and b
    sbc a
    ld c, b
    scf
    dec e
    daa
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    rlca
    rlca
    ld [bc], a
    inc bc
    nop
    adc d
    sbc $3a
    ld [c], a
    db $e4
    jr c, jr_07d_5a7f

    jr nz, jr_07d_5b01

    add b
    add b
    ld [$8200], sp
    rlca
    ld bc, $0304
    or h
    ld c, $3e
    ld a, a
    ld a, h
    dec sp
    dec bc
    inc b
    inc bc
    nop
    nop
    ldh [$80], a
    ld b, b
    ret nz

    ret nz

    and b
    jr c, @+$80

    rst $38
    sbc a
    ld l, [hl]
    ld l, b
    sub b
    ld a, b
    rst $38
    and b
    sbc a
    ld c, b
    scf
    dec b
    dec b
    dec e
    daa
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    rlca
    rlca
    ld [bc], a
    nop
    sbc $3a
    ld [c], a
    db $e4
    jr c, jr_07d_5af9

jr_07d_5af9:
    nop
    ret nz

    jr nz, @+$42

    add b
    add b
    inc b
    nop

jr_07d_5b01:
    sub c
    inc bc
    nop
    ld bc, $0502
    ld b, $05
    inc c
    ld a, $7f
    ld a, [hl]
    ccf
    dec l
    inc de
    dec c
    ld bc, $0300
    rst $38
    call z, $ff7e
    rst $30
    ld a, b
    db $fc
    or a
    push af
    push af
    ld c, a
    cp c
    db $fc
    add b
    ldh [rP1], a
    nop
    ld b, b
    and b
    ld h, b
    and b
    jr c, jr_07d_5ba9

    sbc a
    ccf
    cp $5a
    db $e4
    sbc b
    add b
    nop
    nop
    cp $f9
    sub e
    rst $00
    rst $28
    rst $38
    rst $38
    call nz, $fbf6
    ld a, e
    ld d, l
    rst $38
    add b
    nop
    rst $28
    ld a, [hl]
    rst $38
    rst $38
    cp $7c
    and $7d
    ld c, b
    ld hl, sp-$64
    or $95
    ld l, l
    ld [hl-], a
    nop
    nop
    rst $28
    ld a, [hl]
    rst $38
    rst $38

Call_07d_5b58:
    cp $7c
    and $7d
    ld a, h
    ld c, [hl]
    ld a, l
    ld c, l
    dec [hl]
    ld a, [de]
    ld [de], a
    nop
    sub a
    rlca
    ld bc, $261b
    ld [hl+], a
    inc hl
    inc de
    rrca
    inc bc
    rlca
    inc c
    inc c
    rlca
    inc bc
    nop
    nop
    cp [hl]
    rst $20
    ld a, a
    ld a, $58
    ld [hl], h
    rst $08
    inc bc
    cp a
    and c
    rst $38
    rst $38
    add b
    rst $38
    nop
    nop
    ldh [$80], a
    add $49
    ld d, c
    pop hl
    ld [c], a
    db $fc
    ldh [$f0], a
    sbc b
    sbc b
    ldh a, [$f8]

jr_07d_5b93:
    and b
    rst $38
    ldh a, [$7f]
    scf
    rra
    jr c, jr_07d_5bb8

    dec c
    dec c
    dec b
    dec b
    ld [bc], a
    inc bc
    nop
    adc d
    ld a, [hl-]
    and $5e
    call c, $c038

jr_07d_5ba9:
    ldh [$c0], a
    add b
    add b
    ld [$ba00], sp
    rlca
    ld bc, $0203
    ld [bc], a
    inc bc
    rrca
    inc sp

jr_07d_5bb8:
    ld b, e
    ld b, a
    inc a
    inc c
    rlca
    inc bc
    nop
    nop
    ldh [$80], a
    ret nz

    ld b, b
    ld b, b
    ldh [$f8], a
    add $e1
    pop af
    sbc [hl]
    sbc b
    ldh a, [$f8]
    and b
    rst $38
    ldh a, [$7f]
    scf
    rlca

jr_07d_5bd4:
    rlca
    rra
    jr c, jr_07d_5bf5

    dec c
    dec c
    dec b
    dec b
    ld [bc], a
    nop
    ld a, [hl-]
    and $5e
    call c, RST_38
    nop
    ret nz

    ldh [$c0], a
    add b
    add b
    inc b
    nop
    cp e
    inc bc
    nop
    ld bc, $0703
    dec b
    ld b, $0f

jr_07d_5bf5:
    scf
    ld c, a
    ld d, e
    ld hl, $1f33
    dec c
    ld bc, $ff00
    rst $00
    jr z, jr_07d_5b93

    db $10
    jr c, jr_07d_5bd4

    add a
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    inc bc
    ld a, a

jr_07d_5c0d:
    ldh [rP1], a
    nop
    ret nz

    ldh [$a0], a
    ld h, b
    ld hl, sp-$1a
    ld sp, hl
    push hl
    jp nz, $fce6

    sbc b
    add b
    nop
    nop
    cp $87
    rst $28
    ld a, [hl]
    jr c, jr_07d_5c99

    rst $08
    cp a
    cp a
    inc bc
    rst $38
    and d
    sbc h
    rst $38
    nop
    rst $28
    ld d, d
    sub c
    cp c
    sub d
    ld a, h
    cp $45
    ld a, b
    adc b
    db $fc
    sbc d
    db $eb
    ld e, a
    ld [hl-], a
    nop
    nop
    rst $28
    ld d, d
    sub c
    cp c
    sub d
    ld a, h
    cp $45
    ld b, h
    ld a, d
    ld b, e
    ld [hl], e
    cpl
    ld a, [de]

jr_07d_5c4d:
    ld [de], a
    nop
    nop
    nop
    and d
    rlca
    jr jr_07d_5c7c

    ld c, b
    ld d, a
    xor c
    xor d
    adc l
    sbc d
    ld d, h
    ld c, e
    inc h
    jr jr_07d_5c67

    nop
    nop
    add b
    ld h, b
    sub b
    add sp, -$58

jr_07d_5c67:
    ld d, h
    and h
    inc h
    sub h
    ld c, d
    ld sp, $5dac
    sbc d
    ld b, [hl]
    add hl, hl
    rlca
    inc b
    inc b
    dec b
    add d
    inc b
    inc b
    inc bc
    dec b
    sub c

jr_07d_5c7c:
    add [hl]
    nop
    ret nz

    jr nc, jr_07d_5c0d

    nop
    ret nz

    jr nc, jr_07d_5c4d

    db $e4
    ld a, [c]
    ret


    adc a
    inc h
    or h
    or h
    sub d
    inc b
    sbc d
    inc bc
    nop
    cp h
    ld a, a
    ld b, b
    rst $38
    add b
    cp a
    ld e, [hl]
    ld e, h

jr_07d_5c99:
    inc l
    inc h
    inc de
    add hl, bc
    dec b
    inc bc
    dec d
    inc b
    ld [bc], a
    ld [c], a
    ld hl, $1ff1
    ld [hl], b
    ld h, c
    ld a, $c0
    ld a, a
    rrca
    ldh [$1f], a
    nop
    db $e3
    pop af
    ei
    ld a, [hl]
    dec a
    dec de
    or a
    rst $38
    rst $08
    ccf
    cp $fd
    jp $e01c


    nop
    ld a, [hl-]
    ld a, [hl-]
    ld a, d
    ld a, [hl-]
    inc d
    add h
    call nz, $ecec
    jp z, $ba9a

    ld a, [$7e82]
    rlca
    nop
    and e
    ld [$783c], sp
    ldh a, [$f8]
    db $76
    rst $38
    cp $f8
    ld h, b
    ld c, $39
    ld a, a
    cp $b9
    ld b, a
    add hl, sp
    nop
    inc bc
    scf
    scf
    ld d, a
    daa
    rlca
    add hl, bc
    ld b, $00
    add b
    ret nc

    ldh [$a0], a
    ld l, b
    adc $7f
    cp a
    inc b
    rst $38
    and c
    db $eb
    push bc
    ld c, b
    nop
    add b
    ret nc

    ldh [$a0], a
    ld [hl], b
    ret c

    ld a, b
    cp h
    db $fc
    cp $f6
    ld sp, hl
    add sp, -$2c
    ld b, b
    ld [bc], a
    nop
    ld [$6f29], sp
    ld a, a
    ld [hl], l
    ld a, [hl]
    ld a, b
    ld hl, sp-$01
    db $fd
    ld hl, sp+$70
    inc b
    nop
    adc e
    add b
    nop
    add h
    inc e
    jr c, jr_07d_5d94

    rst $28
    cp $de
    db $fc
    ret z

    inc hl
    nop
    and d
    rlca
    rra
    jr c, jr_07d_5da4

    ld l, a
    reti


    db $db
    cp $fd
    ld a, e
    ld a, a
    ccf
    rra
    rlca
    nop
    nop
    add b
    ldh [rSVBK], a
    ret c

    ld hl, sp-$44
    ld a, h
    db $fc
    ld a, h
    cp [hl]

jr_07d_5d43:
    rst $18
    di
    db $e3
    rst $20
    ld a, l
    ld a, $07
    rlca
    inc b
    ld b, $05
    rlca
    sub c
    add [hl]
    nop

jr_07d_5d52:
    ret nz

    ldh a, [$7c]
    nop
    ret nz

    ldh a, [$38]
    inc e
    ld c, $3f
    ld a, a
    call c, $cccc
    xor $04
    and $03
    nop
    sub e
    ld a, a
    ld a, a
    rst $38
    rst $38
    ret nz

    ld h, c
    ld h, e
    inc sp
    dec sp
    rra
    rrca
    rlca

jr_07d_5d72:
    inc bc
    ld d, $07
    inc bc
    db $e3
    pop hl
    pop af
    inc b
    rst $38
    and l
    ccf
    add b
    ldh a, [rIE]
    rra
    nop
    rra
    rrca
    rlca
    add a
    adc $fc
    ld hl, sp-$02
    pop af
    ret nz

    ld bc, $3f03
    db $fc
    ldh [rP1], a
    add $c6

jr_07d_5d94:
    add [hl]
    add $ec
    ld a, h
    inc a
    inc e
    inc e
    cp [hl]
    cp $f6
    and $fe
    ld a, [hl]
    rlca
    nop
    and e

jr_07d_5da4:
    ld [$4834], sp
    sub b
    xor b
    ld d, [hl]
    sbc c
    ld h, [hl]
    ret c

    ld h, b
    ld c, $07
    nop
    add c
    add $7e
    add hl, sp
    nop
    ld [bc], a
    inc b
    ld b, h
    ld [hl], b
    jr z, @+$0a

    ld c, $07
    nop
    add b
    ld b, b
    jr nz, jr_07d_5d43

    ldh [$80], a
    ld e, b
    add b
    inc b
    nop
    sub e
    db $10
    cp d
    dec d
    nop
    add b
    ld b, b
    jr nz, jr_07d_5d52

    add sp, -$80
    ld d, h
    add d
    ld [bc], a
    ld bc, $0209
    dec d
    and b
    db $10
    inc bc
    nop
    adc e
    add hl, bc
    ld a, [bc]
    dec [hl]
    ld c, e
    ld [bc], a
    dec b
    dec b
    ld b, $06
    adc e
    ld [hl], b
    ld b, $00
    adc c
    add h
    db $10
    jr nz, jr_07d_5d72

    ld bc, $2202
    inc h
    ret z

    dec h
    nop
    nop
    sub l
    rst $38
    sub c
    and d
    pop hl
    jp nc, $c1a8

    db $e3
    rst $10
    rst $20
    rst $08
    rst $28
    rst $18
    xor a
    rst $08
    rst $20
    rst $38
    ld a, a
    rst $38
    rlca
    ld a, e
    rlca
    rst $38
    sbc e
    cp $fd
    ei
    rst $38
    db $d3
    ldh [$c0], a
    ldh [$d0], a
    xor c
    jp $dfef


    rst $28
    rst $00
    pop hl
    add sp, -$02
    rst $38
    rst $38
    cp a
    ld e, a
    cp a
    ld e, $ed
    db $eb
    db $eb
    inc b
    rst $38
    rst $20
    ld e, a
    cp a
    add b
    ld e, a
    rst $38
    rst $38
    sub c
    and d
    pop hl
    jp nc, $c1a8

    db $e3
    sub $e5
    call $dced
    xor [hl]
    call $ffe7
    ld a, a
    rst $38
    rlca
    ld a, e
    rst $10
    adc a
    ld h, a
    rst $30
    rst $30
    rst $28
    rst $18
    cp [hl]
    ld a, l
    ei
    rst $38
    rst $38
    sub c
    and d
    pop hl
    jp nc, $c1a8

    db $e3
    rst $10
    and $ce
    xor $dd
    xor [hl]
    rst $08
    rst $20
    rst $38
    ld a, a
    rst $38
    rlca
    ld a, e
    rst $38
    rst $10
    adc a
    daa
    ld l, a
    rst $08
    sbc a
    ld a, $fd
    ei
    rst $38
    ld bc, $1a0f
    add hl, sp
    ld h, [hl]
    ld l, e
    ld d, a
    ld l, a
    ld b, a
    ld [hl], d
    ld d, e
    ld a, d
    ld l, c
    jr c, jr_07d_5e94

    rrca
    add b
    ld a, b
    xor b
    ld e, b
    and h
    ld d, [hl]
    xor e
    ld d, l
    jp hl


    or e
    xor $a4
    ld c, h
    xor b

jr_07d_5e94:
    or b
    ldh [$f7], a
    add h
    ld b, $85
    add d
    rst $38
    nop
    inc bc
    rst $38
    add l
    ei
    rst $38
    cp $ff
    nop
    inc bc
    rst $38
    inc bc
    db $fd
    add d
    cp $10
    ld b, $d0
    ld b, $85
    sub h
    add [hl]
    nop
    cp $f8
    ei
    db $e3
    rst $38
    rst $38
    nop
    nop
    rst $38
    cp $fc
    ld sp, hl
    ei
    rst $38
    nop
    nop
    ret nc

    ld d, b
    inc bc
    ret nc

    adc b
    sub b
    stop
    rst $38
    ld a, a
    rst $38
    rlca
    ld a, e
    inc bc
    rst $38
    adc b
    cp a
    rra
    ccf
    ld a, a
    cp $fd
    ei
    rst $38
    stop
    add l
    rst $38
    xor $dd
    cp $fd
    dec b
    rst $38
    dec b
    rst $30
    add l
    ei
    rst $38
    add b
    nop
    ld hl, sp+$06
    db $fc
    add a
    ld hl, sp-$08
    pop af
    db $e3
    rst $00
    add a
    db $fc
    ld b, $ff
    inc bc
    rst $30
    add d
    ld hl, sp-$02
    inc b
    rst $38
    adc l
    ld b, a
    and [hl]
    ld b, b
    pop hl
    di
    rst $30
    rst $30
    rst $20
    rst $00
    rst $00
    nop
    and b
    ld b, b
    inc b
    rst $38
    add h
    xor $dd
    cp $fd
    inc b
    rst $38
    add e
    cp $f6
    or $03
    rst $30
    add l
    ei
    rst $38
    add b
    nop
    ld hl, sp+$03
    db $fc
    adc [hl]
    sbc h
    inc c
    inc c
    jr jr_07d_5f63

    ld [hl], c
    db $e3
    rst $00
    add a
    rst $38
    xor $dd
    cp $fd
    dec b
    rst $38
    dec b
    rst $30
    add l
    ei
    rst $38
    add b
    nop
    ld hl, sp+$04
    db $fc
    adc [hl]
    call c, Call_000_389c
    ld a, b
    pop af
    db $e3
    rst $00
    add a
    ld bc, $1d0f
    ld a, $7d
    ld a, [hl]
    ld b, $7f
    adc d
    ld a, [hl]
    ccf
    rrca
    rrca
    add b
    ld hl, sp+$58
    cp b
    ld a, h
    cp $04
    rst $38
    adc b
    cp $5c
    cp h
    ld e, b

jr_07d_5f63:
    ldh a, [$e0]
    ld [$0671], sp
    ld [hl], d
    adc l
    nop
    rst $38
    nop
    nop
    jr c, jr_07d_5fac

    cp $ff
    nop
    rst $38
    nop
    nop
    inc e
    inc bc
    ld e, $82
    ld bc, $06ae
    ld l, $05
    ld [hl], d
    sub l
    ld [hl], b
    ld [hl], c
    add b
    rst $38
    ccf
    inc a
    inc e
    nop
    nop
    rst $38
    nop
    ld a, a
    ccf
    rra
    ld c, $04
    nop
    rst $38
    nop
    ld l, $ae
    inc b
    ld l, $86
    xor $10
    rst $38
    add b
    nop
    ld hl, sp+$06
    db $fc
    add [hl]
    ld hl, sp-$08
    pop af
    db $e3
    rst $00
    add a
    ld [de], a
    nop
    nop
    sbc [hl]

jr_07d_5fac:
    nop
    ld bc, $0806
    db $10
    ld e, $3f
    ld l, [hl]
    ld d, c
    db $76
    add b
    ld d, d
    add c
    ld l, e
    inc d
    nop
    nop
    db $fc
    inc bc
    ld hl, sp+$04
    nop
    add c
    jp $bd66


    jp nz, Jump_07d_7fff

    rst $38
    inc b
    nop
    sbc e
    add b
    ld l, h
    ld a, [de]
    dec de
    di
    db $e4
    ei
    inc l
    ld a, a
    ld a, e
    ccf
    rst $38
    ld e, $08
    nop
    ld [bc], a
    dec a
    ld b, c
    sbc l
    ld h, c
    ld h, a
    adc c
    ld d, $0c
    ld a, b
    ldh a, [$c0]
    dec c
    nop
    add [hl]
    jr nc, @+$6a

    db $f4
    db $f4
    add sp, -$10
    ld [$c500], sp
    inc e
    ld [hl+], a
    ld a, c
    ld a, l
    db $fd
    db $fd
    db $c2, $fc, $00

    ld bc, $0806
    db $10
    ld e, $3f
    ld l, [hl]
    ld d, c
    ld e, e
    dec l
    dec de
    dec bc
    dec b
    inc bc
    nop
    nop
    db $fc
    inc bc
    ld hl, sp+$04
    nop
    add c
    jp $fee7


    db $fc
    ld e, b
    ld sp, hl
    db $fc
    rst $20
    ld b, h
    nop
    nop
    add c
    ld l, l
    ld a, [de]
    ld a, [de]
    ld a, [c]
    push hl
    ld hl, sp+$21
    ld e, a
    sbc $20
    ret nz

    nop
    nop
    ld [hl-], a
    ld a, l
    db $fd
    or l
    ld c, c
    or $cc
    ld e, $1e
    ld l, l
    cp $dc
    add b
    rlca
    nop
    sbc c
    inc b
    ld c, $1e
    rra
    ld [hl], e
    ld sp, hl
    ld a, h
    ld h, a
    ld a, [hl-]
    ld a, a
    ld a, e
    jr c, jr_07d_6049

jr_07d_6049:
    ld [bc], a
    dec a
    ld b, c
    sbc l
    ld h, c
    ld h, [hl]
    adc a
    dec e
    add hl, de
    ld l, [hl]

jr_07d_6053:
    db $fc
    ldh a, [rLY]
    nop
    sbc l
    ld bc, $0f07
    rra
    rra
    ld hl, $7f5f
    ld a, c
    rst $38
    ld l, a
    rst $38
    ld a, a
    inc d
    nop
    nop
    db $fc
    rst $38
    rlca
    ei
    rst $38
    rst $38
    ld a, [hl]
    cp l
    rst $18
    rst $38
    rst $38
    add e
    rst $38
    inc b
    nop
    sbc e
    add b
    db $ec
    or $f7
    rst $28
    rra
    db $fc
    rst $38

Call_07d_6080:
    sub $ce
    db $eb
    push hl
    ld d, $08
    nop
    ld [bc], a
    ccf
    ld a, a
    rst $38
    sbc a

jr_07d_608c:
    sbc a
    rst $38
    ld a, [$88f4]
    jr nc, jr_07d_6053

    dec c
    nop
    add [hl]
    jr nc, @+$5a

    adc h
    adc h
    jr jr_07d_608c

    ld [$c500], sp
    inc e
    ld a, $47
    ld b, e
    add e
    add e
    ld a, $fc
    nop
    ld bc, $0f07
    rra
    rra
    ld hl, $7f5f
    ld a, [hl]
    ccf
    inc e
    inc c
    ld b, $03
    nop
    nop
    db $fc
    rst $38
    rlca
    ei
    rst $38
    rst $38
    ld a, [hl]
    cp l
    rst $38
    or e
    rst $38
    ld d, [hl]
    ld a, a
    and e
    ld b, h
    nop
    nop
    add c
    db $ed
    rst $30
    rst $30
    rst $28
    ld e, $ff
    cp $b1
    ld a, $e0
    ret nz

    nop
    nop
    ld [hl-], a
    ld c, a
    sub a
    rst $08
    rst $38
    ld a, $3c
    ld a, [c]
    cp $9f
    ld [hl+], a
    ld e, h
    add b
    rlca
    nop
    sub e
    inc b
    ld a, [bc]
    db $10
    ld de, $8644
    nop
    ld e, c
    ld h, $43
    ld b, h
    jr c, jr_07d_60f4

jr_07d_60f4:
    ld [bc], a
    ccf
    ld a, a
    rst $38
    sbc a
    sbc [hl]
    inc bc
    rst $38
    add e
    sub d
    inc c
    ldh a, [rLYC]
    nop
    nop
    nop
    cp b
    ld a, h
    rst $38
    cp e
    ld b, a
    dec a
    ld a, [hl+]
    dec hl
    ld a, $2f
    ccf
    cpl
    ld a, $2b
    rra
    rra
    ld e, $7f
    rst $38
    ld h, a
    sbc a
    ldh a, [$1f]
    db $fd
    rst $30
    rst $38
    rst $38
    cp a
    nop
    ld b, c
    ld [de], a
    db $fd
    rst $38
    add b
    ldh a, [$e8]
    db $f4
    db $fc
    ld l, [hl]
    add [hl]
    db $eb
    rst $28
    ret z

    ld hl, sp-$54
    db $fc
    xor h
    db $fc
    db $fc
    cp a
    ld e, l
    ccf
    ccf
    scf
    ld l, e
    ld a, h
    ld a, a
    ld [$8800], sp
    rst $38
    ld a, d
    db $fd
    cp $ff
    ld_long a, $ffe1
    ld [$8800], sp
    and b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ldh [rNR10], a
    ldh a, [$08]
    nop
    adc b
    cp a
    ld e, l
    cpl
    ld [hl], a
    ei
    or a
    ret c

    rst $38
    ld [$8800], sp
    rst $38
    ld a, d
    db $fd
    cp $ff
    di
    inc e
    rst $38
    ld [$8800], sp
    cp a
    ld e, l
    ccf
    ccf
    rra
    rra
    jr nz, @+$41

    ld [$8800], sp
    rst $38
    ld [hl], d
    ld sp, hl
    cp $1f
    ld c, $8f
    rst $38
    dec bc
    nop
    add d
    jr nc, jr_07d_61ec

    ld b, $c6
    add d
    ld l, b
    jr nc, jr_07d_6192

    nop
    add [hl]
    ldh [$e7], a
    rst $20
    ccf
    jr c, jr_07d_61ca

jr_07d_6192:
    dec bc
    nop
    add h
    ret nz

    ld b, $00
    jr nc, jr_07d_61a9

    nop
    sub a
    ld h, b
    ret nc

    rst $28
    jp hl


    rst $28
    ret nc

    ld h, b
    nop
    inc bc
    inc bc
    rlca
    dec b
    ld a, [bc]

jr_07d_61a9:
    dec bc
    ld c, $0f
    rlca
    rlca
    ld a, $d7
    ld a, a
    rst $10
    ld a, $10
    nop
    sbc d
    ld a, h
    xor e
    cp $7c
    ld l, $3f
    ccf
    dec l
    inc a
    ld a, $35
    dec h
    ld [hl], $1d
    db $10
    ld de, $807f
    sbc b
    ld h, b

jr_07d_61ca:
    rrca
    rst $38
    cp $f8
    ldh a, [rSTAT]
    inc b
    rst $38
    sbc d
    cp $00
    add b
    ld [hl], b
    jr jr_07d_61e5

    inc b
    sub d
    ld a, [$dfdd]
    ld hl, sp-$08
    call c, $dc8c
    ld a, h
    inc b

jr_07d_61e5:
    ret nc

    ld [hl], a
    dec l
    daa
    jr z, jr_07d_6247

    ld d, a

jr_07d_61ec:
    ld a, a
    ld [$8800], sp
    inc b
    rst $00

jr_07d_61f2:
    ld h, e
    pop bc
    inc a
    ld b, a
    sbc a
    rst $38
    ld [$8100], sp
    ld h, b
    inc bc
    ret nz

    add h
    ld b, b
    jr nz, jr_07d_61f2

    ldh a, [$08]
    nop
    adc b
    ret nc

    ld [hl], a
    dec a
    ld c, a
    and h
    ret c

    rst $28
    cp a
    ld [$8800], sp
    inc b
    rst $00
    ld h, e
    pop bc
    nop
    inc c
    rst $38
    rst $38
    ld [$8800], sp
    ret nc

    ld [hl], a
    dec l
    daa
    ld de, $3f11
    ccf
    ld [$8800], sp
    inc b
    rst $08
    rst $20
    ld de, $fde8
    cp $ff
    dec bc
    nop
    add e
    jr z, @+$56

    and b
    inc b
    and c
    add e
    and b
    ld d, h
    jr z, @+$0a

    nop
    add [hl]
    and b
    dec b
    and b
    dec l
    nop
    jr z, jr_07d_6250

    nop
    add h

jr_07d_6247:
    and b
    dec b
    nop
    jr z, jr_07d_625b

    nop
    sub a
    ld h, b
    or b

jr_07d_6250:
    rst $38
    or [hl]
    rst $38
    or b
    ld h, b
    nop
    inc bc
    ld [bc], a
    inc b
    ld b, $0f

jr_07d_625b:
    rrca
    dec c
    inc c
    ld b, $05
    dec a
    xor $c5
    db $ec
    add hl, sp
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $ff
    add d
    db $fd
    ld_long a, $ff03
    add l
    cp a
    rst $00
    cp a
    ld l, a
    rst $28
    ld c, $ff
    adc e
    sbc a
    xor e
    db $ec
    pop de
    and a
    rst $28
    call z, Call_07d_5b58
    ld d, e
    cp $03
    rst $38
    xor h
    rlca
    rlca
    di
    di
    ld c, a
    rra
    ccf
    ld a, [hl]
    adc b
    and b
    sbc h
    rst $38
    ld [c], a
    jp $0787


    rrca
    rra
    ld [hl], a
    rst $38
    rst $38
    ld a, a
    rlca
    nop
    add b
    ldh [rIE], a
    rst $38
    db $fc
    db $fd
    ld hl, sp+$74
    inc e
    adc [hl]
    rst $00
    db $e3
    ld c, [hl]
    or $fb
    dec a
    ld e, $07
    pop bc
    jr c, jr_07d_62bb

    nop
    adc l
    add b

jr_07d_62bb:
    ld hl, sp+$27
    ldh a, [$7f]
    rst $38
    ei
    push af
    ei
    ei
    and [hl]
    db $c3, $db, $18


    nop

jr_07d_62c9:
    add d
    ld a, [$04f5]
    db $f4
    adc d
    cp $fe
    rst $18
    rst $18
    db $eb
    rst $28
    ld [hl], a
    rra
    pop hl
    ld [$ff03], sp
    sub d
    db $fd
    ei
    sbc [hl]
    ld hl, sp+$63
    cp a
    or a
    or a
    inc sp
    ld a, d
    ld a, d
    ld a, [c]
    di
    di
    ld [hl], e
    rst $20
    daa
    ld a, [c]
    inc bc
    rst $38
    sbc b
    db $eb
    rst $38
    sbc $ff
    cp $ff
    rst $38
    cp $e8
    rra
    cp a
    ld a, a
    ld [hl], b
    nop
    add e
    rst $38
    ld a, a
    xor $ff
    add e
    ld b, $f8
    ldh [$80], a
    ld [$82ff], sp
    ld hl, sp-$12
    ld b, $ff
    add d
    sbc a
    ld c, $07
    rst $38
    add c
    rst $18
    ld b, $ff
    adc b
    rst $18
    sbc $dc
    db $eb
    rst $20
    and $fb
    rst $20
    dec e
    nop
    add e
    ld bc, $0301
    inc bc
    nop
    add h
    ld a, h
    call nc, $98cc
    dec c
    nop
    adc l
    ld b, b
    ldh a, [$d8]

jr_07d_6335:
    call z, $161f
    ld l, b
    ld [hl], b
    ld d, e
    and $67
    ld c, e
    ld bc, $0003
    cp h
    ld hl, sp+$18
    db $f4
    db $fc
    ret nc

    jr nz, jr_07d_62c9

    ld b, c
    scf
    inc l
    ld e, l
    ccf
    rla
    ld a, [hl+]
    ld c, h
    sub h
    jr z, @+$7a

    ld hl, sp-$20
    nop
    add b
    ld hl, sp+$7f
    add a
    ldh [$7f], a
    rra
    inc bc
    nop
    rlca
    adc c
    ldh [$b0], a
    ret c

    db $ec
    ld a, [hl]
    ld c, $07
    jp Jump_000_38e1


    sbc $3b
    ld a, h
    adc a
    pop af
    cp [hl]
    ld hl, sp-$59
    jr nc, jr_07d_6335

    ld bc, $0e07
    add hl, bc
    dec e
    add hl, hl
    ld e, h
    db $e4
    jr jr_07d_6380

jr_07d_6380:
    sub b
    inc bc
    inc c
    dec b
    rlca
    dec b
    dec c
    rlca
    ld b, $30
    jr c, jr_07d_6398

    inc e
    adc [hl]
    rst $18
    jp hl


    ld [hl], a
    inc bc
    nop
    sub d
    inc bc
    rlca
    sbc [hl]
    ei

jr_07d_6398:
    ld l, h
    adc h
    adc [hl]
    adc $4a
    add a
    add a
    ld c, $0f
    res 1, e
    rra
    ld e, a
    adc [hl]
    inc bc
    nop
    add h
    db $ec
    ld hl, sp-$08
    add c
    inc b
    nop
    sub b
    ld [hl], a
    jr nz, @-$3e

    nop
    adc a
    cp $63
    rst $38
    rst $38
    ld e, $03
    ld a, a
    or $f8
    rst $28
    sub e
    ld [$8300], sp
    ccf
    rra
    inc bc
    dec b
    nop
    add e
    ld e, a
    ld l, b
    ld hl, sp+$05
    nop
    add d
    ldh a, [$e0]
    ld b, $00
    add a
    ldh [$e1], a
    jp $3f73


    daa
    jr c, jr_07d_63f7

    nop
    nop
    adc c
    ld a, l
    dec d
    dec c
    dec c
    dec e
    ld h, l
    db $fd
    ld h, e
    ld e, $07
    nop
    sbc e
    sbc c
    rst $18
    sbc $e1
    rst $18
    ret nz

    ld h, b
    ld h, b
    jr c, @+$1a

    inc b
    rra

jr_07d_63f7:
    dec sp
    jr c, @+$41

    nop
    ld sp, hl
    rst $38
    rst $18
    and b
    rra
    nop
    nop
    ret nz

    ret nz

    ld [$0418], sp
    rst $38
    add [hl]
    nop
    db $fc
    ld sp, hl
    or $0d
    ei
    inc bc
    dec bc
    cp l
    dec b
    ld a, [hl]
    pop af
    ld hl, sp-$40
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    rra
    rst $28
    or $f6
    db $f4
    db $f4
    db $ec
    inc e
    or $03
    ld bc, $ff01
    nop
    sbc c
    rst $18
    sbc $e1
    rst $18
    ret nz

    ld h, b
    ld h, h
    cp h
    ld e, h
    ld h, $13
    db $10
    ld [$0007], sp
    ld sp, hl
    rst $38
    rst $18
    and b
    rra
    nop
    nop
    ret nz

    ret nz

    ld [$ff18], sp
    ld b, b
    add b
    nop
    nop
    db $fc
    di
    ret c

    scf
    rst $28
    inc bc
    cpl
    add l
    rla
    jr jr_07d_6494

    pop hl
    inc bc
    inc bc
    rlca
    add l

jr_07d_645a:
    rst $38
    rst $38
    ld a, a
    cp a
    reti


    inc bc
    pop de
    sbc c
    or c
    ld h, c
    pop bc
    ld a, [c]
    or d
    add h
    jr jr_07d_645a

    ld [hl], c
    ld b, a
    rst $08
    rst $08
    rst $18
    rst $18
    ld a, a
    ld l, a
    cp a
    or a
    ld e, c
    ld c, h
    inc hl
    db $10
    rrca
    nop
    ld hl, sp+$03

jr_07d_647c:
    rst $38
    xor d
    ret nz

    sub b
    jr nz, jr_07d_64a2

    nop
    add b
    rst $38
    nop
    add b
    rst $38
    nop
    nop
    ccf
    rrca
    jp $fce6


    ld a, c
    ld [hl-], a
    inc [hl]
    jr z, jr_07d_647c

jr_07d_6494:
    or b
    jr nc, jr_07d_650f

    add a
    nop
    nop
    rst $38
    add $02
    ld a, c
    add l
    inc bc
    ld [bc], a
    ld [bc], a

jr_07d_64a2:
    inc b
    inc b
    ld [$6010], sp
    add b
    ld [hl-], a
    nop
    adc c
    ld h, e
    dec de
    dec bc
    dec bc
    dec de
    ld a, e
    add e
    ld a, a
    ld e, $07
    nop
    sub h
    rst $28
    xor $e1
    cp a
    cp [hl]
    cp a
    ld e, a
    ld e, a
    daa
    rra
    rlca
    rla
    daa
    daa
    ccf
    nop
    rst $38
    rst $08
    ldh [$7f], a
    dec b
    rst $38
    adc e
    rst $30
    rst $28
    rst $38
    cp $fe
    rst $38
    nop
    add e
    rlca
    rrca
    cp $04
    db $fc
    adc b
    cp $ff
    rst $08
    rlca
    ccf
    ccf
    rst $38
    nop
    inc bc
    rst $38
    adc b
    rra
    ld c, $0e
    inc c
    inc c
    inc e
    db $fc
    cp $04
    rst $38
    sub l
    nop
    rst $28
    xor $e1
    cp a
    cp [hl]
    cp a
    rst $18
    db $db
    db $e3
    ld a, e
    dec a
    rra
    rra
    rrca
    rlca
    nop
    rst $38
    rst $08
    ldh [$7f], a
    dec b
    rst $38
    adc e
    rst $30
    rst $28
    rst $38
    ret nz

    add b

jr_07d_650f:
    nop
    nop
    add e
    rrca
    ccf
    ld hl, sp+$04
    ldh a, [$88]
    ld hl, sp-$01
    rst $38
    pop hl
    ld [bc], a
    inc b
    inc b
    rlca
    inc bc
    rst $38
    add c
    ld a, a
    inc b
    ccf
    adc e
    ld a, a
    rst $38
    rst $38
    ld l, $4e
    ld a, h
    ld hl, sp-$10
    ld a, a
    ld a, a
    rst $38
    inc bc
    cp a
    adc d
    rst $18
    rst $18
    rst $28
    rst $28
    ld [hl], a
    ld a, a
    ccf
    rra
    rrca
    nop
    dec b
    rst $38
    add e
    rst $28
    rst $18
    rst $18
    ld b, $ff
    add e
    nop
    nop
    rst $08
    inc c
    rst $38
    add [hl]
    add a
    nop
    nop
    rst $38
    cp $fe
    inc bc
    rst $38
    adc b
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$10
    ldh [$80], a
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    rst $38
    ld b, $80
    add d
    add l
    rst $38
    inc b
    nop
    add h
    ld b, c
    ldh [rLCDC], a
    rst $38
    inc bc
    add b
    adc l
    add a
    adc a
    add b
    sub b
    rst $38
    ld bc, $0901
    ld de, $0101
    ld h, c
    rst $38
    inc bc
    add b
    xor h
    add c
    add d
    add b
    cp h
    rst $38
    ld bc, $6045
    ld bc, $a860
    ld l, b
    rst $38
    add b
    add e
    add c
    sbc b
    and b
    add b
    ret nz

    rst $38
    nop
    db $10
    adc b
    call z, Call_000_2505
    pop hl
    rst $38
    add b
    add b
    adc a
    add b
    adc c
    adc l
    add h
    rst $38
    nop
    nop
    ldh [rNR10], a
    sub b
    ret z

    ret z

    jr nc, jr_07d_65b6

jr_07d_65b6:
    add e
    sbc b
    and b
    ret nz

    inc bc
    add d
    sub [hl]
    add b
    add h
    nop
    db $10
    ldh [$08], a
    jr jr_07d_65dd

    add hl, sp
    ld bc, $8090
    add b
    sub b
    add b
    adc c
    add b
    sbc a
    ld h, b
    nop
    nop
    ret nz

    inc bc
    nop
    xor e
    db $fc
    ret nz

    add b
    sbc a
    add [hl]
    adc d
    add b

jr_07d_65dd:
    add b
    add h
    ld [$3818], sp
    jr nc, @+$32

    jr nz, jr_07d_6645

    nop
    pop hl
    or a
    ret nz

    ret nz

    and b
    add b
    and c
    rst $38
    pop hl
    ret


    dec e
    ld [$e000], sp
    add b
    cp $98
    and b
    and b
    sub c
    add $b8
    add b
    cp h
    ld de, $0301
    nop
    add e
    ld [$3708], sp
    ld sp, $cf00
    ld a, [hl]
    ld l, h
    ld h, h
    ld [hl], b
    ld [hl], b
    ld a, b
    ld h, b
    nop
    ld b, [hl]
    ld b, $06
    ld [bc], a
    ld bc, $2408
    nop
    cpl
    cpl
    ld c, b
    ld d, b
    ld b, b
    db $10
    jr z, jr_07d_6622

jr_07d_6622:
    ld sp, hl
    di
    inc hl
    pop bc
    rlca
    ld h, a
    sub l
    nop
    ld a, a
    ld a, [hl]
    ld a, l
    ld a, h
    ld a, b
    ld b, b
    nop
    nop
    sbc c
    inc hl
    sub h
    dec de
    nop
    ld [bc], a
    add d
    nop
    ld a, h
    ld [hl], b
    ld l, [hl]
    ld b, a
    nop
    nop
    ld hl, $0e00
    ld [c], a
    ld [hl], h

jr_07d_6645:
    jr nc, jr_07d_6662

    ld b, e
    ld bc, $7b00
    ld h, [hl]
    ld h, b
    ld [hl], b
    ld h, h
    ld h, b
    ld h, b
    nop
    db $76
    ld a, [$0c1a]
    ld c, h
    inc h
    inc h
    jr nc, jr_07d_665b

jr_07d_665b:
    adc c
    ld b, l
    inc e
    nop
    jr jr_07d_66c1

    ld a, b

jr_07d_6662:
    ld a, l
    inc b
    call nz, $0403
    and e
    db $e4
    db $e4
    rst $00
    ld bc, $1921
    ld b, b
    ld hl, $403f
    ld l, [hl]
    rra
    db $10
    ld [c], a
    ld [bc], a
    ld [hl+], a
    ld a, [c]
    and b
    add b
    db $fc
    nop
    ccf
    jr nz, jr_07d_66b9

    ld d, l
    ld l, h
    ld [hl], e
    inc b
    ld [hl+], a
    ld [bc], a
    add d
    add d
    ld b, [hl]
    ret nz

    add c
    inc bc
    nop
    sbc [hl]
    ld [$173f], sp
    ld e, h
    nop
    ld a, a
    ld bc, $0115
    db $d4, $00, $1a
    ld a, h
    cp $22
    ld c, a
    ld c, [hl]
    jr z, jr_07d_66a2

    ld b, a

jr_07d_66a2:
    inc e
    inc a
    ld hl, $36db
    sub $e6
    ld [bc], a
    jp nz, Jump_000_3237

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_07d_66b9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_07d_66c1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_07d_6dad:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_07d_6e6c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_07d_7659:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_07d_7f3f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_07d_7f7f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_07d_7fff:
    nop
