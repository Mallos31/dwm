; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02a", ROMX[$4000], BANK[$2a]

    ld a, [hl+]
    ld e, a
    ld b, b
    inc l
    ld b, [hl]
    cp $46
    ret nc

    ld b, a
    and d
    ld c, b
    ld [hl], h
    ld c, c
    ld d, $4a
    call nz, Call_02a_464a
    ld c, e
    dec hl
    ld d, d
    add a
    ld d, e
    or [hl]
    ld d, h
    ld [c], a
    ld d, l
    ld [$0456], a
    ld e, b
    nop
    ld e, c
    ld a, [hl+]
    ld e, d
    ld c, c
    ld e, e
    jr c, jr_02a_4083

    inc l
    ld e, l
    dec hl
    ld e, [hl]
    pop bc
    ld h, h
    or h
    ld h, l
    ld sp, $ff66
    ld h, [hl]
    jp z, $ea67

    ld l, b
    ld a, [bc]
    ld l, d
    rst $28
    ld l, d
    push af
    ld l, e
    cpl
    ld l, l
    ld l, c
    ld l, [hl]
    adc c
    ld l, a
    xor c
    ld [hl], b
    pop de
    ld [hl], e
    and [hl]
    ld [hl], h
    ld a, h
    ld [hl], l
    ld d, d
    db $76
    daa
    ld [hl], a
    jr jr_02a_40c9

    add hl, bc
    ld a, c
    ei
    ld a, c
    db $ec
    ld a, d
    pop bc
    ld a, e
    sub a
    ld a, h
    ld l, h
    ld a, l
    ld b, c
    ld a, [hl]
    nop
    ld [$0025], sp
    ld hl, sp+$03
    db $f4
    rlca
    add sp, $01
    db $ec
    db $10
    db $f4
    db $10
    or $0c
    db $eb
    rrca
    db $fc
    nop
    rst $38
    jr nz, jr_02a_40a5

    rst $30
    rlca
    adc a
    nop
    rst $30
    rlca
    ld a, a
    nop
    ld hl, sp+$04
    ldh [rNR22], a
    nop

jr_02a_4083:
    ccf
    ld b, b
    rra
    ld [hl], b
    ccf
    rst $38
    rrca
    rst $38
    ld hl, sp-$1e
    dec de
    ld a, [hl]
    ld a, [hl]
    inc bc
    rst $38
    rlca
    rst $20
    rrca
    sub b
    jr nc, jr_02a_40e0

    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    dec h
    db $fd
    ldh a, [$e0]
    rst $20
    ldh a, [$09]

jr_02a_40a5:
    inc c
    ld [de], a
    dec h
    ld [hl], $06
    nop
    db $fc
    ld [bc], a
    ld hl, sp+$0e

jr_02a_40af:
    db $fc
    rst $38
    ldh a, [rIE]
    rra
    ld b, a
    ret c

    ld a, [hl]
    ld a, [hl]
    ret nz

    rst $38
    nop
    rst $38
    inc b
    db $f4
    rst $28
    ldh [$f1], a
    nop
    rst $28
    ldh [$fe], a
    nop
    rra
    jr nz, jr_02a_40d0

jr_02a_40c9:
    add sp, $00
    rra
    ret nz

    cpl
    ldh [rNR22], a

jr_02a_40d0:
    add b
    scf
    ld [$082f], sp
    ld l, a
    jr nc, jr_02a_40af

jr_02a_40d8:
    ldh a, [$3f]
    rrca
    rst $28
    db $10
    rst $18
    jr nz, jr_02a_40d8

jr_02a_40e0:
    jr nz, @+$01

    ccf
    rst $38
    inc sp
    db $f4
    inc de
    db $f4
    inc de
    db $f4
    db $fd
    db $fd
    ld a, [bc]
    ld a, [$1d05]
    rlca
    rst $38
    cp $fe
    call z, $cc2c
    dec l
    call z, Call_000_252d
    pop af
    db $fc
    ld e, a
    ld e, a
    or b
    cp a
    ld h, b
    ld a, b
    ldh [rIE], a
    ld a, a
    ld a, a
    inc sp
    inc [hl]
    inc sp
    or h
    inc sp
    or h
    nop
    rst $38
    ld a, a
    ld a, a
    nop
    ld e, b
    ld a, c
    ld b, $3f
    ccf
    ccf
    ld a, a
    cp a
    rst $38
    add b
    rst $38
    nop
    rst $38
    cp $fe
    nop
    ld a, [de]
    sbc [hl]
    ld h, b
    db $fc
    db $fc
    db $fc
    cp $fd
    rst $38
    ld bc, $25ff
    ret nz

    ld [bc], a
    ld e, d
    nop
    ld e, b
    ld bc, $7e00
    db $fd
    db $fc
    add d
    ei
    dec h
    ret nc

    ld [bc], a
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
    rra
    sub b
    inc c
    or d
    inc hl
    db $e4
    inc h
    ld_long a, $ff3f
    dec c
    db $fd
    ld a, [bc]
    ld hl, sp+$08
    ld hl, sp-$61
    jr nz, jr_02a_41d5

    add e
    dec a
    cp l
    sub $d4
    ld l, b
    ld b, d
    add b
    jr z, jr_02a_4167

    and e
    ld e, $1e

jr_02a_4167:
    rst $38
    ld bc, $ffff
    ld d, l
    ld d, l
    xor e
    ld bc, $ab01
    ld bc, $2501
    scf
    nop
    nop
    ld a, a
    dec h
    inc l
    ld de, $3225
    ld d, $fe
    dec h
    ld [hl-], a
    ld a, [de]
    rst $38
    add b
    rst $38
    rst $38
    xor d
    xor d
    push de
    add b
    add b
    push de
    add b
    add b
    dec h
    scf
    nop
    ld sp, hl
    inc b
    sbc $c1
    cp h
    cp l
    ld l, e

jr_02a_4198:
    dec hl
    ld d, $42
    ld bc, $c014
    push bc
    cp b
    cp b
    ld hl, sp+$09
    jr nc, jr_02a_41f2

    call nz, Call_000_2427
    ld e, a
    db $fc
    rst $38
    or b
    cp a
    ld d, b
    rra
    db $10
    rra
    inc de

jr_02a_41b2:
    db $f4
    rla
    rst $30
    jr jr_02a_41b2

    db $10
    rst $30
    jr nc, jr_02a_41b2

    ld e, a
    rst $38
    ld b, b
    rst $18
    ld a, a
    rst $38
    call z, $ec2d
    db $ec
    ld e, $de
    rrca
    rst $28
    rrca
    rst $28
    ld a, [$03fe]
    ei
    cp $fe
    dec h
    pop af
    db $fc
    inc sp

jr_02a_41d5:
    or h
    scf
    scf
    ld a, b
    ld a, e
    ldh a, [$f7]
    ldh a, [$f7]
    ld e, a
    ld a, a
    ret nz

    rst $18
    ld a, a
    ld a, a
    dec h
    pop hl
    rst $38
    dec c
    add b
    add $80
    res 0, b
    ld hl, sp-$80
    call z, Call_000_2580

jr_02a_41f2:
    ld [hl], $00
    rst $38
    cp [hl]
    ld b, c
    ld bc, $0163
    db $d3
    ld bc, $011f
    inc sp
    ld bc, $e925
    ld de, $04fb
    rst $38
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
    dec h
    dec c
    jr nz, jr_02a_4198

    ld a, a
    dec h
    ld hl, sp+$10
    rst $18
    jr nc, @+$1a

    rst $30
    db $10
    dec h
    dec c
    ld hl, $80ff
    dec h
    ld [hl+], a
    ld [hl+], a
    add b
    rst $38
    cp a
    rst $38
    and h
    db $e4
    rst $38
    rst $38
    rst $38
    ld bc, $3225
    ld [hl+], a
    ld bc, $fdff
    rst $38
    ld b, l
    ld b, a
    rst $08
    rst $18
    or b
    or b
    or b
    or [hl]
    adc h
    adc l
    ld b, c
    ld d, c
    ld h, b
    ld l, h
    sbc b
    sbc c
    add a
    and a
    ld sp, hl
    db $fd
    ld b, d
    ld c, d
    ld [bc], a
    ld [hl-], a
    inc c
    call $f7f1
    ld [bc], a
    ld a, [de]
    inc c

jr_02a_4258:
    ld c, l
    ldh a, [$f2]
    dec h
    pop hl
    rst $38
    dec c
    or c
    or e
    rst $38
    rst $38
    adc [hl]
    adc [hl]
    ret nz

    pop de
    jr nz, @-$14

    ld h, c
    ld l, l
    jp Jump_02a_47db


    rst $10
    jp nc, $e3df

    db $e3
    ld [hl], a
    rst $30
    rrca
    rst $08
    jr jr_02a_42d8

    inc c
    inc l
    add [hl]
    or [hl]
    rst $20
    rst $30
    add hl, de
    db $fd
    dec [hl]
    dec [hl]
    or e
    cp e
    di
    ei
    ld [hl-], a
    ei
    ld h, d
    ld l, d
    ld [c], a
    ld a, [c]
    ld b, a
    ld e, a
    ld bc, $0165
    add hl, de
    add e
    add e
    rst $38
    rst $38
    jr c, jr_02a_4258

    db $10
    jr jr_02a_42ad

    ld de, $ffff
    ld a, $ff
    ld b, c
    db $dd
    cp [hl]
    cp a
    pop bc
    db $dd
    sbc h
    sbc [hl]
    cp [hl]
    rst $38
    cp [hl]
    rst $38

jr_02a_42ad:
    db $e3
    db $e3
    cp l
    ld a, [hl]
    ld b, d
    db $db
    cp l
    cp l
    jp $bdc3


    cp l
    jp $bddb


    cp a
    jp Jump_000_31c3


    db $fd
    inc sp
    or e
    ccf
    ccf
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    ld a, h
    ld a, h
    ld a, h

Call_02a_42cd:
    rst $38
    rst $38
    dec h
    ret c

    inc hl
    rst $18
    sbc c
    sbc e
    cp l
    rst $38
    cp l

jr_02a_42d8:
    db $fd
    rst $20
    rst $20
    db $fd
    add e
    dec h
    ld [bc], a
    ld a, [hl+]
    db $fd
    inc bc
    dec h
    ld [de], a
    ld a, [hl+]
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
    dec h
    ld a, [hl+]
    jr nz, jr_02a_433a

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
    dec h
    ld a, [hl-]
    jr nz, jr_02a_4344

    ld e, b
    dec h
    ld b, h
    jr z, @+$42

    ld e, b
    ld bc, $2505
    ld d, h
    jr z, jr_02a_4311

    dec b

jr_02a_4311:
    dec h
    pop hl
    rst $38
    dec c
    ld b, h
    call nc, $ae8e
    adc l
    xor l
    adc a
    xor a
    adc h
    cp h

jr_02a_431f:
    add $f6
    ld b, [hl]
    ld h, [hl]
    jp nz, $33ca

    ei
    inc de
    sbc e
    di
    ei
    di
    rst $38
    ld a, [c]
    or $71
    ld [hl], l
    ld [hl], b
    ld [hl], l
    db $fc
    db $fc
    rst $08
    rst $08
    adc l
    xor l
    sbc c

jr_02a_433a:
    cp c
    sbc a
    cp a
    sub b
    cp a
    ret nc

    ld hl, sp-$2f
    pop af
    rst $18

jr_02a_4344:
    rst $18
    dec h
    db $10
    ld hl, $e7f7
    rst $20
    pop de
    ld [hl-], a
    db $10
    rst $30
    nop
    rst $00
    dec h
    xor $25
    dec h
    rst $10
    dec h
    dec h
    pop af
    db $fc
    rst $38
    rst $38
    nop
    jr @+$27

    dec [hl]
    db $10
    db $10
    sbc a
    db $10
    db $10
    db $10
    db $10
    dec h
    inc l
    ld de, $d325
    dec sp
    dec h
    ld [de], a
    inc hl
    ld sp, $f719
    ld de, $0d25
    jr c, jr_02a_439d

    add hl, bc
    ld b, e
    xor d
    ld [$efaa], a
    xor d
    db $eb
    xor d
    cp $aa
    ld [$d595], a
    dec h
    ld a, [hl+]
    jr nz, jr_02a_431f

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
    dec h
    ld a, [hl-]
    jr nz, jr_02a_43f9

    ld l, l
    or b
    or d
    adc [hl]

jr_02a_439d:
    xor [hl]
    ld b, c
    reti


    ldh [$65], a
    ld e, a
    ld a, a
    rra
    dec d
    dec b
    push bc
    ld [bc], a
    ld e, d
    ld [$01aa], sp
    dec b
    add e
    sbc e
    dec c
    ld c, a
    or $fc
    cp $57
    ld d, b
    ld d, e
    dec h
    pop hl
    rst $38
    dec c
    ld b, e
    db $db
    ld b, e
    db $db
    ld h, c
    ld l, l
    pop hl
    db $ed
    ld b, b
    sbc $48
    ld a, d
    call nz, $96d4
    sub [hl]
    ld l, [hl]
    xor $77
    rst $30
    ld a, l
    ld a, l
    rst $38
    rst $38
    ldh a, [rIE]
    jr c, jr_02a_4410

    sbc h
    call c, $e7e7
    ld h, e
    rst $38
    ld hl, $a1e1
    and c
    cp a
    rst $38
    or b
    rst $38
    ldh a, [$f8]
    ld a, b
    ld a, b
    dec h
    ld c, $23
    dec e
    rst $38
    rst $38
    inc sp
    or h
    db $10
    rst $18
    nop
    rlca
    dec h
    xor $3e

jr_02a_43f9:
    nop
    ld d, l
    nop
    xor d
    nop
    push de
    nop
    xor d
    dec h
    ret nc

    ld b, c
    ld a, l
    dec h
    sub $43
    ld d, l
    nop
    ld a, [$e025]
    ld b, e
    xor d
    dec h

jr_02a_4410:
    pop af
    db $fc
    add c
    db $fd
    add c
    add c
    add c
    add c
    rst $38
    rst $38
    sub b
    rst $18
    sub b
    sbc b
    sub b
    sub b
    rst $38
    rst $38
    ld bc, $01fd
    add c
    dec h
    ld a, [hl+]
    db $10
    db $10
    rst $18
    db $10
    jr @+$27

    db $ec
    jr nc, jr_02a_4456

jr_02a_4431:
    db $10
    ld d, h
    ld de, $11df
    add hl, de
    dec h
    cp h
    jr nz, jr_02a_4460

    pop hl
    rst $38
    dec c
    ldh a, [$f7]
    ld [$04fb], sp
    rra
    inc b
    rst $38
    db $fc
    rst $38
    call z, $c82f
    dec h
    ld e, e
    ld d, c
    add sp, -$11
    jr jr_02a_4431

    ld [$0cef], sp
    rst $28

jr_02a_4456:
    ld a, [$02ff]
    ei
    cp $ff
    inc [hl]
    sra b
    rst $10

jr_02a_4460:
    inc d
    db $eb
    inc l
    db $d3
    dec h
    ld [hl], b
    ld d, h
    nop
    rst $38
    nop
    rst $38
    db $dd
    ld [hl+], a
    xor d
    ld d, l
    ld d, l
    xor d
    cp e
    ld b, h
    dec h
    add b
    ld d, b
    dec h
    adc h
    ld e, [hl]
    ld a, [hl]
    add c
    ld b, d
    cp l
    ld b, e
    cp h
    ld c, a
    or b
    ld c, d
    or l
    ld a, [hl]
    add c
    add hl, de
    and $25
    and b
    ld d, d
    jp nz, $f23d

    dec c
    ld d, d
    xor l
    ld a, [hl]
    add c
    sbc b
    ld h, a
    add hl, de
    and $7e
    add c
    ld c, d
    or l
    ld c, a
    or b
    ld b, e
    cp h
    ld b, d
    cp l
    ld a, [hl]
    add c
    nop
    rst $38
    sbc b
    ld h, a
    ld a, [hl]
    add c
    ld d, d
    xor l
    ld a, [c]
    dec c
    jp nz, Jump_000_253d

    jp z, $2552

    pop bc
    rst $38
    dec l
    and h
    db $fc
    and h
    db $e4
    and h
    db $fc
    dec h
    ld h, $34
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
    dec h
    ld hl, sp+$10
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
    dec h
    add c
    nop
    cp a
    ld b, b
    rra
    ldh [$7e], a
    add c
    dec h
    ld h, b
    ld h, b
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

    inc [hl]
    sra h
    db $d3
    scf
    ret z

    ld a, [hl+]
    push de
    dec d
    ld [$d02f], a
    dec h
    adc h
    ld d, h
    db $f4
    dec bc
    xor b
    ld d, a
    ld d, h
    xor e
    db $ec
    inc de
    dec h
    add b
    ld h, b
    dec h
    add b
    ld d, b
    ld [hl], $c9
    dec hl
    call nc, $ea15
    ld a, [hl+]
    push de
    dec h
    ld [hl], h
    ld d, d
    inc l
    db $d3
    dec h
    sub h
    ld h, h
    dec h
    adc h
    ld d, c

jr_02a_453d:
    dec h
    db $db
    inc [hl]
    dec h
    add hl, sp
    nop
    dec h
    adc l
    ld d, h
    dec h
    ld c, c
    inc d
    dec h
    rst $18
    ld e, a
    ld de, $0718
    daa
    rra
    ld e, a
    ccf
    cp a
    ccf
    cp a
    ld a, a
    dec h
    ld a, [bc]
    ld [hl], c
    nop
    jr jr_02a_453d

    db $e4
    ld hl, sp-$06
    db $fc
    db $fd
    db $fc
    db $fd
    cp $25
    ld a, [de]
    ld [hl], c
    dec h
    ld a, [bc]
    ld [hl], d
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
    dec h
    ld a, [de]
    ld [hl], d
    xor [hl]
    xor [hl]
    ld d, [hl]
    ld d, [hl]
    ld l, $2e
    ld b, $06
    ld a, [$0002]
    rst $38
    ld a, a
    rst $38
    ld b, b
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, h
    db $fc
    ld d, h
    db $f4
    ld d, h
    or $00
    rst $38
    cp $ff
    ld [bc], a
    rst $38
    ld a, [$82ff]
    add a
    add d
    rst $30
    dec h
    ld e, d
    ld [hl], b
    ld d, h
    or $25
    ld h, b
    ld [hl], d
    ld e, [hl]
    cp $40
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    dec h
    ld e, d
    ld [hl], d
    add d
    rst $30
    ld [bc], a
    rlca
    ld [bc], a
    rst $38
    cp $25
    sbc l
    ld e, b
    or a
    ld c, h
    or [hl]
    ld a, h
    cp $4c
    adc $00
    rst $38
    ld a, [hl]
    rst $38
    ld b, d
    rst $38
    jp nz, $c27f

    rst $38
    ld b, d
    ld a, a
    dec h
    sbc d
    ld [hl], b
    ld c, h
    adc $4c
    adc $4f
    rst $08
    ld c, h
    call z, $fc7c
    ld b, b
    ret nz

    dec h
    ld l, h
    ld [hl], b
    ld a, [hl]
    ld a, a
    ld b, d
    ld b, e
    jp nz, Jump_000_02c3

    inc bc
    dec h
    or [hl]
    ld [hl], b
    dec h
    ld a, h
    ld [hl], d
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
    nop
    ld [bc], a
    ld bc, $0121
    nop
    ld bc, $214b
    dec sp
    ld c, e
    ld bc, $0102
    dec sp
    ld bc, $0000
    rst $38
    ld bc, $f7f5
    ld sp, $2241
    inc hl
    ld [hl+], a
    inc hl
    dec hl
    add hl, hl

Call_02a_464a:
    ld a, [hl+]
    jr z, jr_02a_4676

    dec hl
    ld d, c
    jr z, @+$2b

    ld a, [hl+]
    ld d, c
    dec hl
    jr nc, jr_02a_4687

    ld bc, $0a14
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    dec hl
    add hl, sp
    ld a, [hl-]
    jr c, jr_02a_469b

    ld d, c
    ld d, c
    jr c, jr_02a_469f

    ld a, [hl-]
    ld bc, $0e30
    ld b, d
    ld b, e
    ld b, d
    ld b, e
    ld l, $49
    ld c, d
    ld c, b
    ld c, c
    dec hl
    ld l, $48

jr_02a_4676:
    ld c, c
    ld c, d
    dec hl
    ld l, $01
    ld [hl-], a
    inc c
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    ld c, $0f
    ld c, $0f
    ld h, [hl]
    ld h, a

jr_02a_4687:
    ld bc, $028a
    ld bc, $0c32
    ld bc, $008a
    ld e, $1f
    ld e, $1f
    ld bc, $0f8a
    add hl, bc
    ld bc, $08c2

jr_02a_469b:
    ld bc, $0fb2
    rra

jr_02a_469f:
    dec l
    inc l
    ld bc, $1305
    dec l
    ld bc, $0f8e
    inc bc
    inc a
    ld c, e
    ld a, $4b
    ld a, $01
    ld h, $10
    inc a
    ld bc, $008a
    ld d, b
    ld d, c
    ld bc, $1d14
    ld c, l
    ld c, [hl]
    ld bc, $1245
    ld bc, $122d
    dec hl
    ld bc, $1d14
    ld bc, $1346
    ld c, l
    ld bc, $122d
    ld l, $01
    inc [hl]
    rra
    dec bc
    ld h, [hl]
    ld h, a
    ld bc, $1f54
    dec bc
    ld bc, $1b92
    ld sp, $0901
    ld bc, $3b21
    ld bc, $010e
    ld bc, $0009
    dec sp
    ld bc, $0913
    ld d, c
    ld d, c
    ld a, [hl+]
    ld d, c
    dec hl
    dec hl
    ld d, c
    dec hl
    ld bc, $012d
    ld bc, $002d
    ld d, c
    ld a, [hl+]
    ld bc, $1933
    nop
    ld [bc], a
    nop
    ld hl, $0000
    ld bc, $214b
    dec sp
    ld c, e
    nop
    ld [bc], a
    ld bc, $003b
    nop
    nop
    rst $38
    nop
    inc d
    rlca
    ld sp, $2241
    inc hl
    ld [hl+], a
    inc hl
    dec hl
    add hl, hl
    ld a, [hl+]
    jr z, jr_02a_4748

    dec hl
    ld d, c
    jr z, @+$2b

    ld a, [hl+]
    ld d, c
    dec hl
    jr nc, jr_02a_4759

    nop
    inc d
    ld a, [bc]
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    dec hl
    add hl, sp
    ld a, [hl-]
    jr c, @+$3b

    ld d, c
    ld d, c
    jr c, jr_02a_4771

    ld a, [hl-]
    nop
    jr nc, jr_02a_474a

    ld b, d
    ld b, e
    ld b, d
    ld b, e
    ld l, $49
    ld c, d
    ld c, b
    ld c, c
    dec hl
    ld l, $48

jr_02a_4748:
    ld c, c
    ld c, d

jr_02a_474a:
    dec hl
    ld l, $00
    ld [hl-], a
    inc c
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    inc c
    dec c
    ld c, $0f
    ld h, [hl]
    ld h, a

jr_02a_4759:
    nop
    adc d
    ld [bc], a
    nop
    ld [hl-], a
    inc c
    nop
    adc d
    nop
    ld e, $1f
    ld e, $1f
    nop
    adc d
    rrca
    add hl, bc
    nop
    jp nz, RST_08

    or d
    rrca
    rra

jr_02a_4771:
    dec l
    inc l
    nop
    dec b
    inc de
    dec l
    nop
    adc [hl]
    rrca
    inc bc
    inc a
    ld c, e
    ld a, $4b
    ld a, $00
    ld h, $10
    inc a
    nop
    adc d
    nop
    ld d, b
    ld d, c
    nop
    inc d
    dec e
    ld c, l
    ld c, [hl]
    nop
    ld b, l
    ld [de], a
    nop
    dec l
    ld [de], a
    dec hl
    nop
    inc d
    dec e
    nop
    ld b, [hl]
    inc de
    ld c, l
    nop
    dec l
    ld [de], a
    ld l, $00
    inc [hl]
    rra
    dec bc
    ld h, [hl]
    ld h, a
    nop
    ld d, h
    rra
    dec bc
    nop
    sub d
    dec de
    ld sp, $0900
    ld bc, $3b21
    nop
    ld c, $01
    nop
    add hl, bc
    nop
    dec sp
    nop
    inc de
    add hl, bc
    ld d, c
    ld d, c
    ld a, [hl+]
    ld d, c
    dec hl
    dec hl
    ld d, c
    dec hl
    nop
    dec l
    ld bc, $2d00
    nop
    ld d, c
    ld a, [hl+]
    nop
    inc sp
    add hl, de
    nop
    ld [bc], a
    nop
    ld hl, $0000
    ld bc, $214b
    dec sp
    ld c, e

Jump_02a_47db:
    nop
    ld [bc], a
    ld bc, $003b
    nop
    nop
    rst $38
    nop
    inc d
    rlca
    ld sp, $2241
    inc hl
    ld [hl+], a
    inc hl
    dec hl
    add hl, hl
    ld a, [hl+]
    jr z, jr_02a_481a

    dec hl
    ld d, c
    jr z, @+$2b

    ld a, [hl+]
    ld d, c
    dec hl
    jr nc, jr_02a_482b

    nop
    inc d
    ld a, [bc]
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    dec hl
    add hl, sp
    ld a, [hl-]
    jr c, @+$3b

    ld d, c
    ld d, c
    jr c, jr_02a_4843

    ld a, [hl-]
    nop
    jr nc, jr_02a_481c

    ld b, d
    ld b, e
    ld b, d
    ld b, e
    ld l, $49
    ld c, d
    ld c, b
    ld c, c
    dec hl
    ld l, $48

jr_02a_481a:
    ld c, c
    ld c, d

jr_02a_481c:
    dec hl
    ld l, $00
    ld [hl-], a
    inc c
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    ld c, $0f
    inc c
    dec c
    ld h, [hl]
    ld h, a

jr_02a_482b:
    nop
    adc d
    ld [bc], a
    nop
    ld [hl-], a
    inc c
    nop
    adc d
    nop
    ld e, $1f
    ld e, $1f
    nop
    adc d
    rrca
    add hl, bc
    nop
    jp nz, RST_08

    or d
    rrca
    rra

jr_02a_4843:
    dec l
    inc l
    nop
    dec b
    inc de
    dec l
    nop
    adc [hl]
    rrca
    inc bc
    inc a
    ld c, e
    ld a, $4b
    ld a, $00
    ld h, $10
    inc a
    nop
    adc d
    nop
    ld d, b
    ld d, c
    nop
    inc d
    dec e
    ld c, l
    ld c, [hl]
    nop
    ld b, l
    ld [de], a
    nop
    dec l
    ld [de], a
    dec hl
    nop
    inc d
    dec e
    nop
    ld b, [hl]
    inc de
    ld c, l
    nop
    dec l
    ld [de], a
    ld l, $00
    inc [hl]
    rra
    dec bc
    ld h, [hl]
    ld h, a
    nop
    ld d, h
    rra
    dec bc
    nop
    sub d
    dec de
    ld sp, $0900
    ld bc, $3b21
    nop
    ld c, $01
    nop
    add hl, bc
    nop
    dec sp
    nop
    inc de
    add hl, bc
    ld d, c
    ld d, c
    ld a, [hl+]
    ld d, c
    dec hl
    dec hl
    ld d, c
    dec hl
    nop
    dec l
    ld bc, $2d00
    nop
    ld d, c
    ld a, [hl+]
    nop
    inc sp
    add hl, de
    nop
    ld [bc], a
    nop
    ld hl, $0000
    ld bc, $214b
    dec sp
    ld c, e
    nop
    ld [bc], a
    ld bc, $003b
    nop
    nop
    rst $38
    nop
    inc d
    rlca
    ld sp, $2241
    inc hl
    ld [hl+], a
    inc hl
    dec hl
    add hl, hl
    ld a, [hl+]
    jr z, jr_02a_48ec

    dec hl
    ld d, c
    jr z, @+$2b

    ld a, [hl+]
    ld d, c
    dec hl
    jr nc, jr_02a_48fd

    nop
    inc d
    ld a, [bc]
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    dec hl
    add hl, sp
    ld a, [hl-]
    jr c, @+$3b

    ld d, c
    ld d, c
    jr c, jr_02a_4915

    ld a, [hl-]
    nop
    jr nc, jr_02a_48ee

    ld b, d
    ld b, e
    ld b, d
    ld b, e
    ld l, $49
    ld c, d
    ld c, b
    ld c, c
    dec hl
    ld l, $48

jr_02a_48ec:
    ld c, c
    ld c, d

jr_02a_48ee:
    dec hl
    ld l, $00
    ld [hl-], a
    inc c
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    inc c
    dec c
    inc c
    dec c
    ld h, [hl]
    ld h, a

jr_02a_48fd:
    nop
    adc d
    ld [bc], a
    nop
    ld [hl-], a
    inc c
    nop

Call_02a_4904:
    adc d
    nop
    ld e, $1f
    ld e, $1f
    nop
    adc d
    rrca
    add hl, bc
    nop
    jp nz, RST_08

    or d
    rrca
    rra

jr_02a_4915:
    dec l
    inc l
    nop
    dec b
    inc de
    dec l
    nop
    adc [hl]
    rrca
    inc bc
    inc a
    ld c, e
    ld a, $4b
    ld a, $00
    ld h, $10
    inc a
    nop
    adc d
    nop
    ld d, b
    ld d, c
    nop
    inc d
    dec e
    ld c, l
    ld c, [hl]
    nop
    ld b, l
    ld [de], a
    nop
    dec l
    ld [de], a
    dec hl
    nop
    inc d
    dec e
    nop
    ld b, [hl]
    inc de
    ld c, l
    nop
    dec l
    ld [de], a
    ld l, $00
    inc [hl]
    rra
    dec bc
    ld h, [hl]
    ld h, a
    nop
    ld d, h
    rra
    dec bc
    nop
    sub d
    dec de
    ld sp, $0900
    ld bc, $3b21
    nop
    ld c, $01
    nop
    add hl, bc
    nop
    dec sp
    nop
    inc de
    add hl, bc
    ld d, c
    ld d, c
    ld a, [hl+]
    ld d, c
    dec hl
    dec hl
    ld d, c
    dec hl
    nop
    dec l
    ld bc, $2d00
    nop
    ld d, c
    ld a, [hl+]
    nop
    inc sp
    add hl, de
    nop
    ld [bc], a
    ld a, [bc]
    ld hl, $000a
    rrca
    nop
    rst $38
    ld a, [bc]
    push af
    rst $30
    ld sp, $2441
    dec h
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    jr nc, jr_02a_49ba

    ld a, [bc]
    inc d
    ld a, [bc]
    inc [hl]
    dec [hl]
    ld a, [bc]
    ld b, d
    ld a, [bc]
    ld a, [bc]
    ld [hl-], a
    inc c
    ld b, h
    ld b, l
    ld a, [bc]
    ld h, d
    ld a, [bc]
    ld a, [bc]
    ld [hl-], a
    inc c
    ld h, [hl]
    ld h, a
    ld d, a
    ld e, c
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld e, c
    ld d, a
    ld h, [hl]
    ld h, a
    ld a, [bc]
    ld [hl], d
    rrca
    ld bc, $1110
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    ld a, [bc]
    adc [hl]

jr_02a_49ba:
    rrca
    dec b
    ld [$6c09], sp
    ld l, h
    ld l, h
    ld l, h
    dec bc
    ld d, l
    ld a, [bc]
    adc [hl]
    rrca
    dec b
    jr jr_02a_49e3

    ld l, l
    ld l, l
    ld l, l
    ld l, l
    dec de
    ld d, [hl]
    ld a, [bc]
    adc [hl]
    rrca
    dec b
    ld a, [bc]
    dec b
    dec d
    ld a, [bc]
    adc a
    dec c
    ld d, c
    ld d, d
    ld h, [hl]
    ld h, a
    ld l, b
    ld e, b
    ld e, b
    ld e, b
    ld l, c

jr_02a_49e3:
    ld e, c
    ld e, c
    ld l, d
    ld e, b
    ld e, b
    ld e, b
    ld l, e
    ld a, [bc]
    sub b
    inc c
    dec hl
    ld d, d
    ld h, [hl]
    ld h, a
    ld a, [bc]
    ld b, d
    db $10
    ld d, a
    ld a, [bc]
    dec c
    ld de, $420a
    db $10
    ld a, [bc]
    ld [de], a
    ld e, $0a
    ld b, h
    rra
    add hl, bc
    ld a, [bc]
    ld b, d
    ld [de], a
    ld a, [bc]
    ld h, [hl]
    rra
    daa
    ld hl, $0a40
    ld b, d
    rra
    dec bc
    ld a, [bc]
    add b
    nop
    ld a, [bc]
    ld b, h
    rra
    add hl, bc
    nop
    ld [bc], a
    ld a, [bc]
    ld hl, $000a
    rrca
    nop
    rst $38
    ld a, [bc]
    push af
    rst $30
    ld sp, $2441
    dec h
    ld a, [bc]
    ld [hl+], a
    ld b, $44
    ld b, l
    inc h
    dec h
    jr nc, jr_02a_4a60

    ld a, [bc]
    inc d
    ld a, [bc]
    inc [hl]
    dec [hl]
    ld a, [bc]
    ld b, d
    ld b, $70
    ld [hl], c
    inc [hl]
    dec [hl]
    ld a, [bc]
    ld [hl-], a
    inc c
    ld b, h
    ld b, l
    ld a, [bc]
    ld h, d
    ld b, $72
    ld [hl], e
    ld b, h
    ld b, l
    ld a, [bc]
    ld [hl-], a
    inc c
    ld h, [hl]
    ld h, a
    ld d, a
    ld e, c
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld e, c
    ld d, a
    ld h, [hl]
    ld h, a
    ld a, [bc]
    ld [hl], d
    rrca
    ld bc, $1110

jr_02a_4a60:
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    ld a, [bc]
    adc [hl]
    rrca
    dec b
    ld [$6c09], sp
    ld l, h
    ld l, h
    ld l, h
    dec bc
    ld d, l
    ld a, [bc]
    adc [hl]
    rrca
    dec b
    jr jr_02a_4a91

    ld l, l
    ld l, l
    ld l, l
    ld l, l
    dec de
    ld d, [hl]
    ld a, [bc]
    adc [hl]
    rrca
    dec b
    ld a, [bc]
    dec b
    dec d
    ld a, [bc]
    adc a
    dec c
    ld d, c
    ld d, d
    ld h, [hl]
    ld h, a
    ld l, b
    ld e, b
    ld e, b
    ld e, b
    ld l, c

jr_02a_4a91:
    ld e, c
    ld e, c
    ld l, d
    ld e, b
    ld e, b
    ld e, b
    ld l, e
    ld a, [bc]
    sub b
    inc c
    dec hl
    ld d, d
    ld h, [hl]
    ld h, a
    ld a, [bc]
    ld b, d
    db $10
    ld d, a
    ld a, [bc]
    dec c
    ld de, $420a
    db $10
    ld a, [bc]
    ld [de], a
    ld e, $0a
    ld b, h
    rra
    add hl, bc
    ld a, [bc]
    ld b, d
    ld [de], a
    ld a, [bc]
    ld h, [hl]
    rra
    daa
    ld hl, $0a40
    ld b, d
    rra
    dec bc
    ld a, [bc]
    add b
    nop
    ld a, [bc]
    ld b, h
    rra
    add hl, bc
    nop
    ld [bc], a
    nop
    ld sp, $6641
    ld h, a
    nop
    ld [bc], a
    nop
    ld d, a
    ld e, c
    ld e, c
    ld d, a
    nop
    ld [bc], a
    ld [bc], a
    jr nc, jr_02a_4b08

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
    and b
    rrca
    rrca
    ld e, d
    ld e, e
    nop
    ld [bc], a
    stop
    adc b
    nop
    nop
    ld [bc], a
    ld [de], a
    nop
    sub d
    inc c
    ld e, h
    ld e, l
    nop
    ld [hl+], a
    stop
    adc b
    nop
    nop
    ld [hl+], a
    ld [de], a
    nop
    ld a, [c]
    ld c, $74
    ld [hl], l
    nop
    ld b, $14

jr_02a_4b08:
    ld a, b
    ld a, c
    nop
    db $10
    rra
    ld bc, $7776
    nop
    ld h, $14
    ld a, d
    ld a, e
    nop
    jr nc, jr_02a_4b37

    ld bc, $0400
    rra
    ld a, [hl+]
    ld sp, $4b3b
    ld hl, $4b3b
    ld b, b
    nop
    adc b
    nop
    jr nz, jr_02a_4b4a

    nop
    jp Jump_000_3110


    nop
    sub e
    add hl, bc
    ld d, c
    dec hl
    jr z, @+$2b

    ld a, [hl+]
    jr z, jr_02a_4b60

jr_02a_4b37:
    ld d, d
    nop
    adc b
    nop
    ld d, b
    ld d, c
    dec hl
    ld a, [hl+]
    jr z, jr_02a_4b6a

    ld d, c
    ld d, c
    nop
    sub h
    ld [$0800], sp
    inc d
    ccf

jr_02a_4b4a:
    ret nz

    dec de
    and h
    db $10
    ld d, a
    add b
    jp z, Jump_02a_5710

    and b
    ld [$d690], a
    jr nz, jr_02a_4bc5

    sbc h
    ld h, e
    nop
    sbc $42
    ld e, d
    ld b, h

jr_02a_4b60:
    ld d, h
    ld b, h
    ld d, l
    add b
    or c
    adc b
    xor d
    adc b
    xor d
    ccf

jr_02a_4b6a:
    ret nz

    jr @+$25

    add b
    reti


    add d
    sbc $81
    db $ed
    sub c
    or a
    ld [$882e], sp
    cp e
    cp c
    ld b, l
    ld [de], a
    ld l, $25
    dec d
    dec h
    ld e, l
    inc bc
    db $eb
    ld bc, $01ad
    or l
    ld b, d
    ld d, [hl]
    sbc c
    and [hl]
    ld b, b
    ld e, e
    ld b, d
    ld c, d
    jp nz, $e2ca

    ld [$ede1], a
    ld h, c
    ld h, l
    ld h, c
    ld l, l
    db $fc
    inc bc
    ret c

    dec h
    ld [$00ea], sp
    ld h, e
    ld [$046a], sp
    ld [hl], a
    ld [$046a], sp
    scf
    ld sp, hl
    ld b, $60
    sbc e
    ld b, b
    ld l, [hl]
    adc b
    sbc l
    ret nz

    pop de
    add h
    adc l
    ld b, b
    ld c, d
    ld b, b
    ld b, [hl]
    inc d
    ld d, b
    nop
    ld [bc], a
    ld a, [hl-]
    ld b, l
    ld d, l
    ld h, l
    ld a, l
    inc hl
    xor e
    ld [hl+], a

jr_02a_4bc5:
    cp d
    ld bc, $628d
    ld l, d
    inc d
    ld b, [hl]
    nop
    pop bc
    call $6561
    ld [hl], c
    ld [hl], l
    and b
    and h
    or b
    or h
    ld [$00f9], sp
    ld h, c
    ld [$006a], sp
    ld [hl], d
    ld [$046b], sp

jr_02a_4be2:
    dec [hl]
    adc b
    xor c
    adc h
    cp h
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
    ld bc, $80cd
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


    jr nz, jr_02a_4be2

    ld [bc], a
    jp c, $6c00

    ld bc, $8027
    or [hl]
    add h
    sub a
    ld b, b
    ld e, e
    ld b, b
    ld e, c
    inc bc
    xor a
    ld bc, $03d5
    jp $eb0b


    ld b, $66
    ld b, $66
    inc bc
    inc sp
    inc bc
    inc sp
    sub c
    sub l
    and c
    db $ed
    sub c
    sub l
    jr nz, @+$6e

    sub d
    sub [hl]
    ld d, d
    ld e, [hl]
    ld b, d
    ld b, [hl]
    and b
    xor l
    nop
    inc h
    ld de, $015d
    add hl, hl
    inc bc
    ld c, e
    inc bc
    xor e
    ld bc, $0559
    push de
    inc b
    ld d, l
    add h
    sub a
    nop
    ld a, [de]
    ld b, b
    ld e, a
    nop
    adc a
    jr nz, jr_02a_4c98

    nop
    ld c, l
    nop
    ld b, [hl]
    add c
    adc l
    ld [c], a
    ld a, [$e9e1]
    ld b, l
    ld d, l
    ld bc, $0395
    ld l, e
    ld [bc], a
    sbc d
    inc bc
    di
    dec b
    ld l, l
    and b
    and h
    or b
    or [hl]
    or b
    or h
    sub b
    sub [hl]
    ld d, b
    ld d, l
    sub b
    sub d
    add b
    and e
    adc b
    adc d
    adc b

jr_02a_4c98:
    xor c
    adc h
    cp a
    add h
    and l
    nop
    inc sp
    ld c, b
    ld a, c
    ld c, b
    ld a, c
    ld b, b
    ld [hl], b
    inc b
    or h
    nop
    add l
    ld [$080d], sp
    ld c, c
    adc b
    xor c
    ld b, h
    ld h, l
    call nz, $40d4
    ld d, b
    ld b, h
    call c, $fb23
    ld bc, $13cd
    ld e, a
    ld bc, $0165
    db $ed
    dec bc
    rst $28
    ld [bc], a
    or d
    dec b
    or l
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

jr_02a_4cd8:
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

    call nz, Call_02a_42cd
    ld c, d
    ld h, d
    ld a, [hl]
    ld bc, $8195
    pop af
    add d
    ld [$7545], a
    ld c, d
    ld l, d
    jr nz, jr_02a_4d66

    jr nz, jr_02a_4cd8

    nop
    adc l
    db $10
    ld d, [hl]
    nop
    and [hl]
    nop
    and a
    ld [$00bb], sp
    ld d, e
    inc bc
    sub e
    ld bc, $2399
    cp e
    ld de, $12d9
    jp c, Jump_02a_6909

    dec bc
    ld l, e
    ld bc, $00b1
    rst $38
    inc d
    nop
    ld hl, $00f1
    ret nz

    inc d
    db $fc
    ldh a, [rIE]
    inc d
    ld bc, $1422
    ld bc, $3122
    inc d
    inc c
    jr nz, @-$28

    sub $a3
    and e
    db $e4
    db $e4
    ld e, b
    ld e, b
    ld l, d

jr_02a_4d66:
    ld l, d
    ld b, l
    ld b, l
    add $c6
    adc e
    adc e
    inc d
    db $10
    daa
    inc d
    ld bc, $8b21
    adc e
    sub e
    sbc e
    ld [hl], c
    ei
    add hl, bc
    db $db
    add [hl]
    and [hl]
    ld bc, $40ab
    jp nc, $d900

    adc h
    xor $f8
    db $fc
    db $ec
    db $ed
    inc hl
    inc hl
    ld [hl], a
    ld [hl], a
    adc d
    adc d
    ld d, c
    ld d, c
    jr c, jr_02a_4dcb

    pop hl
    push hl
    ld e, [hl]
    ld e, [hl]
    add h
    and h
    call nz, Call_02a_78dc
    ld a, b
    ld [hl+], a
    ld [hl+], a
    ld b, c
    ld b, c
    add b
    add d
    pop de
    pop de
    ret


    reti


    adc [hl]
    rst $18
    sub b
    rst $10
    ld h, b
    ld l, a
    add b
    cp a
    nop
    ld a, a
    nop
    rst $38
    ld b, $5e
    add hl, bc
    add hl, hl
    dec bc
    ld c, e
    ld b, a
    rst $10
    ld [bc], a
    xor [hl]
    inc b
    inc c
    ld h, $6e
    inc bc
    xor a
    adc b
    jp hl


    pop af
    rst $30
    ld a, a
    ld a, a
    jr c, jr_02a_4e09

jr_02a_4dcb:
    ldh a, [$fd]
    jr c, jr_02a_4e02

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
    adc b
    cp c
    jp hl


    rst $28
    rst $00
    rst $10
    add a
    or a
    call Call_02a_70cd
    ld [hl], b
    ld c, c
    ld c, c
    add [hl]
    sbc [hl]
    dec d
    sbc c
    sub a
    rst $30
    db $e3
    db $eb
    pop hl
    db $ed
    or e
    or e
    ld c, $0e
    sub d
    sub d
    ld h, c

jr_02a_4e02:
    ld a, c
    rrca
    cp a
    add hl, de
    ld e, c
    pop hl
    db $e3

jr_02a_4e09:
    or e
    cp a
    rra
    rra
    add hl, bc
    add hl, hl
    db $10
    sub $e3
    jp hl


    ld de, $8f97
    rst $28
    cp $fe
    inc e
    ld a, h
    rrca
    cp a
    inc e
    call z, $9afa
    ld sp, hl
    ld sp, hl
    ld h, b
    ld a, d
    sub b
    sub h
    ret nc

    jp nc, $ebe2

    ld b, b
    ld [hl], l
    jr nz, jr_02a_4e5f

    ld h, h
    db $76
    ret nz

    push af
    nop
    jr @+$01

    rst $38
    rst $38
    cp h
    jp c, $bde3

    jp $c0be


    add [hl]
    pop bc
    add d
    cp b
    ld b, b
    ld e, c
    rst $38
    rst $38
    add a
    ld bc, $8db7
    ld a, e
    add a
    ei
    rlca
    jp $8307


    dec sp
    cp c
    db $fd
    call nz, $93c4
    and e
    ret nz

    rst $08
    ld [hl], b
    ld [hl], b
    ccf
    ccf

jr_02a_4e5f:
    rra
    sbc a
    nop
    ret nz

    dec sp
    ld a, a
    ld b, l
    ld b, l
    or e
    adc e
    inc bc
    di
    ld c, $0e
    db $fc
    db $fc
    ld hl, sp-$07
    nop
    inc bc

jr_02a_4e73:
    nop
    jr nc, jr_02a_4e73

    db $fd
    db $e4
    adc e
    jp z, $c5b8

    cp l
    ret nz

    or l
    ret


    and d
    res 2, b
    nop
    call z, $ffff
    ld c, a
    sbc c
    ld d, e
    db $dd
    db $e3
    db $fd
    add e
    call $dd6b
    sub a
    dec h
    jp $a09c


    rst $08
    sub c
    pop hl
    inc d
    ld h, $36
    sub l
    ld h, a
    dec c
    jp hl


    di
    rst $38
    inc d
    ld [hl], $37
    nop
    rst $38
    rst $38
    rst $38
    add b
    pop bc
    cp c
    push bc
    or [hl]
    call z, $c8a8
    and c
    ret z

    and e
    inc d
    add b
    ld sp, $c301
    db $dd
    and e

jr_02a_4ebb:
    dec l
    inc sp

jr_02a_4ebd:
    ld d, l
    dec de
    db $ed
    dec de
    db $ed
    ret nc

    cp c
    xor b
    call z, $e794
    pop bc
    call $2814
    inc [hl]
    dec c
    db $eb
    ld sp, $a3d5
    cpl
    db $c3, $d3, $14


    jr c, jr_02a_4f0c

    ld h, b
    ld a, a
    sub b
    sbc a
    ret nc

    rst $18
    ldh [$ef], a
    ld b, b
    ld e, a
    jr nz, @+$41

    ld h, b
    ld a, a
    ret nz

    rst $38
    ld sp, $1f77
    ccf
    scf
    or a
    call nz, $eec4
    xor $51
    ld d, c
    adc d

jr_02a_4ef5:
    adc d
    inc e
    inc e
    inc d

jr_02a_4ef9:
    ld [hl], b
    inc hl
    db $db
    ld h, c
    ld h, l
    add b
    push de
    ld [bc], a
    ld c, e
    nop
    sbc e
    add hl, bc
    ld c, l
    ld l, $6e
    jr nc, jr_02a_4ebd

    jr nz, jr_02a_4ebb

jr_02a_4f0c:
    ld b, b
    rst $18
    ld b, b
    ld a, a
    add b
    cp a
    add b
    rst $38
    jr nz, jr_02a_4ef5

    inc c
    di
    ld e, e
    and h
    ld b, $f9
    dec hl
    call nc, $619e
    inc sp
    call z, $807f
    db $10
    rst $28
    add d
    ld a, l
    jr nc, jr_02a_4ef9

    and $19
    rst $38
    nop
    ld a, c
    add [hl]
    rst $18
    jr nz, @+$01

    nop
    ld bc, $acfe
    ld d, e
    ld a, [hl]
    add c
    di
    inc c
    cp a
    ld b, b
    inc d
    ld bc, $0822
    rst $30
    ld hl, $80de
    ld a, a
    jp c, $a025

    ld e, a
    jp $f83c


    rlca
    or [hl]
    ld c, c
    ld c, a
    or b
    dec sp
    call nz, Call_02a_718e
    inc sp
    call z, $fb04
    ld b, c
    cp [hl]
    inc d
    nop
    jr nz, @+$01

    nop
    cp a
    ld b, b
    push hl
    ld a, [de]
    rra
    ldh [rNR44], a
    call c, $fb04
    db $10
    rst $28
    inc d
    dec c
    ld [hl+], a
    cp $01
    or e
    ld c, h
    ret z

    scf
    ld bc, $14fe
    ld e, h
    ld b, b
    db $fd
    ld [bc], a
    adc $31
    or $09
    sbc c
    ld h, [hl]
    inc h
    db $db
    ld d, b
    xor a
    ld [bc], a
    db $fd
    db $10
    rst $28
    and h
    add l
    ld b, d
    ld b, h
    ld b, c
    ld [de], a
    ld d, h

jr_02a_4f93:
    ld d, e
    ld h, c
    ld c, d
    adc b
    ld d, $83
    ret nc

    add hl, bc
    ld h, $12

jr_02a_4f9d:
    xor d
    add d
    ld c, l
    inc [hl]
    rst $08
    ld b, $61
    xor a
    ld d, b
    ld a, c
    add h
    rst $18
    jr nz, jr_02a_5029

    add c
    ld c, c
    ld l, d
    xor h
    ld d, d
    ld e, [hl]
    ld hl, $04f3
    cp a
    ld b, b
    ld sp, hl
    ld b, $14
    inc e
    ld b, b
    ld [bc], a
    sbc d
    ld sp, $a052
    ld h, b
    add hl, de
    db $e3
    and d
    ld [de], a
    ret nz

    ld c, $6c
    sub h
    and h
    ld de, $1b44
    inc hl
    adc b
    and h
    dec sp
    ld hl, $5442
    ld e, c
    ld de, $8872
    adc c
    sbc d
    sbc d

jr_02a_4fdb:
    rst $20
    jr jr_02a_4f9d

    ld b, b
    push hl
    ld [de], a
    ccf
    and b
    inc hl
    ld e, h
    inc c
    xor e
    ld d, d
    ld l, [hl]
    add d
    sub d
    rst $38
    nop
    db $db
    inc h
    cp $01
    or e
    ld c, b
    ret z

    inc [hl]
    ld bc, $5492
    ld l, l
    add d
    sub d
    ld sp, hl
    inc b
    ld b, c
    and a
    or h
    ld a, [bc]
    sub c
    ld l, b
    or d
    sub [hl]
    ld d, c
    and e
    ld a, [bc]
    ld c, b
    sub h
    and l
    pop hl
    ld e, $0c
    di
    rst $20
    jr jr_02a_4f93

    ld a, [hl]
    ld a, $c1
    add b
    ld a, a
    xor $11
    inc e
    db $e3
    dec de
    db $db
    dec h
    and [hl]
    ld b, a
    ld a, b
    ld b, c
    ld a, [hl]
    ld a, [hl]
    ld b, c
    nop
    ccf
    xor [hl]
    pop de

jr_02a_5029:
    call c, $dda3
    db $dd
    jr nz, jr_02a_4fdb

    db $fd
    ld [bc], a
    inc d
    ld b, $56
    dec sp
    cp e
    add h
    or l
    ccf
    ret nz

    inc d
    ld b, $56
    ret c

    db $db
    add h
    ld d, l
    ld a, [$8207]
    ld a, [hl]
    ld a, $c2
    add h
    ld a, b
    db $ed
    inc de
    rra
    pop hl
    and c
    sbc $8c
    or e
    ld h, a
    ld e, b
    add c
    cp [hl]
    cp [hl]
    pop bc
    add b
    rst $38
    ld c, $31
    ld e, h
    db $e3
    pop hl
    rra
    dec c
    pop af
    and $1a
    add c
    ld a, l
    dec a
    jp Jump_02a_7f81


    db $ec
    db $10
    ld a, [de]
    rst $20
    ld b, c
    sbc $8c
    or e
    add a
    cp b
    inc d
    ld d, $54
    sbc h
    db $e3
    ld [c], a
    ld a, [de]
    inc c
    push af
    ld [c], a
    dec de
    inc d
    ld b, [hl]
    ld d, b
    add b
    ld a, h
    db $ed
    inc de
    dec e
    db $e3
    add b
    rst $08
    add a
    ret c

    sbc [hl]
    sbc $98
    ret c

    inc d
    sub b
    ld d, h
    ld b, $fc
    cp $04
    xor [hl]
    xor h
    ld b, $04
    inc d
    and b
    ld d, h
    ld bc, $0c7e
    di
    ld h, a
    jr jr_02a_50a5

    ld a, [hl]

jr_02a_50a5:
    ld a, $c1
    nop
    rst $38
    ld l, $51
    sbc h
    and e
    pop hl
    dec e
    inc c
    ldh a, [$e4]
    ld a, [de]
    add b
    inc d
    rlca
    ld d, d
    db $10
    jr @-$1a

    rlca
    ld e, b
    inc d
    ld b, $06
    inc d
    nop
    db $10
    ld [c], a
    ld a, [de]
    inc d
    db $76
    ld b, $14
    ld [hl], b
    db $10
    inc d
    ldh a, [$fc]
    jr nz, jr_02a_50fc

    sub b
    db $d3
    nop
    inc e
    add a
    rst $20
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    db $fd
    nop
    add b
    inc d
    inc c
    ld h, b
    inc d
    inc d
    ld h, h
    nop
    call z, Boot
    inc d
    inc d
    ld l, b
    dec b
    sub l
    ld bc, $0259
    ld a, [bc]
    pop hl
    pop hl
    db $fc
    db $fc
    inc d
    inc d
    ld l, b
    push af

jr_02a_50fc:
    push af
    ld [$d0ea], a
    ret nc

    add b
    add b
    inc d
    ld c, l
    ld b, b
    inc d
    inc c
    ld h, b
    ld d, l
    ld d, l
    xor d
    xor d
    inc d
    ld a, [bc]
    ld hl, $4f14
    ld h, e
    ld d, a
    ld d, a
    xor e
    xor e
    dec b
    dec b
    inc d
    ld e, h
    ld h, b
    inc b
    ld d, l
    nop
    inc de
    nop
    jr z, jr_02a_512a

    daa
    rrca
    ld l, a
    rra
    ld e, a
    ccf
    ccf

jr_02a_512a:
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
    ld a, a
    rst $38
    inc d
    sub b
    ld h, b
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
    ld_long a, $ff02
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
    inc d
    cp d
    ld h, b
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
    inc d
    cp d
    ld h, d
    pop bc
    ld l, a
    ret nz

    ld h, b
    ret nz

    inc d
    sub b
    ld h, b
    nop
    dec hl
    ld l, [hl]
    inc d
    ldh [$62], a
    ld a, e
    ld a, [hl]
    inc bc
    inc d
    and b
    ld h, b
    nop
    nop
    rst $38
    ld bc, $fe01
    add c
    ret nz

    cp [hl]
    ld b, d
    ccf
    ld b, l
    ld [hl], $54
    dec sp
    db $ca, $94, $00

    rst $38
    cp $fe
    ld a, [hl]
    nop
    add d
    db $fc
    ld b, d
    ld e, h
    ld [de], a
    sub h
    dec bc
    jp hl


    ld b, a
    sub l
    ld l, b
    dec [hl]
    or a
    ret c

    inc d
    ld h, h

jr_02a_51b8:
    jr c, jr_02a_51bf

    or a
    add hl, bc
    db $ed
    inc d
    ld [hl], h

jr_02a_51bf:
    jr c, @+$16

    ld bc, $f722
    rlca
    rst $20
    jr z, jr_02a_51b8

    ld c, b
    ld c, a
    cpl
    rst $18
    sbc a
    inc d
    rrca
    inc hl
    ldh a, [$c7]
    inc [hl]
    inc bc
    ld e, $01
    rlca
    ret


    rst $08
    and a
    rst $00
    sbc b
    and h
    and a
    add sp, -$7d
    or e
    ld c, h
    call z, Call_02a_7393
    pop hl
    add hl, de
    rst $38
    nop
    pop hl
    db $ed
    inc sp
    ld c, e
    sub l
    ld d, l
    ccf
    ccf
    and $e7
    jr c, jr_02a_5234

    jp $ffdc


    nop
    ccf
    ccf
    ld c, h
    ld [hl], e
    inc d
    ld [hl], d
    ld a, b
    db $fc
    db $fc
    ld [hl-], a
    adc $14
    add d
    ld a, b
    ld c, h
    ld [hl], e
    ld c, h
    ld [hl], d
    ld c, l
    ld [hl], c
    ld c, d
    db $76
    ld b, h
    ld a, h
    ld c, b
    ld l, b
    ld d, b
    ld d, d
    ld h, b
    ld l, c
    ld [hl-], a
    adc $32
    ld c, [hl]
    or d
    adc [hl]
    ld d, d
    ld l, [hl]
    ld [hl+], a
    ld a, $12
    sub [hl]
    ld a, [bc]
    ld c, d
    ld b, $66
    inc d
    and b
    rst $38
    dec a
    nop
    ld [bc], a
    ld [bc], a
    add hl, hl
    ld a, [hl+]
    dec hl
    dec l
    ld l, $2a

jr_02a_5234:
    add hl, hl
    ld h, $2d
    ld a, [hl+]
    dec hl
    dec l
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2c
    dec l
    ld [bc], a
    db $f4
    ld hl, sp+$2a
    dec hl
    ld a, [hl+]
    inc l
    dec l
    add hl, hl
    dec hl
    ld l, $2b
    add hl, hl
    ld a, [hl+]
    ld l, $2d
    dec h
    ld h, $25
    dec a
    ld a, $02
    ld [de], a
    dec bc
    ld l, $2c
    dec l
    add hl, hl
    inc l
    dec l
    ld l, $3e
    dec h
    add hl, hl
    inc l
    ld l, $2f
    add hl, hl
    dec l
    add hl, hl
    ld a, [hl+]
    ld l, $3e
    ld [bc], a
    db $f4
    ld hl, sp+$24
    dec h
    ld h, $3d
    ld a, $25
    dec a
    ld a, $1c
    dec e
    inc h
    dec h
    ld a, $1f
    jr jr_02a_5289

    inc h
    ld a, $3e
    ld a, [bc]
    ld [bc], a
    db $f4
    ld hl, sp+$0e
    rrca

jr_02a_5289:
    ld [$0c09], sp
    dec c
    ld a, [bc]
    dec bc
    ld [$0e0a], sp
    rrca
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $17
    ld [$0209], sp
    db $f4
    ld hl, sp+$1e
    rra
    jr @+$1b

    inc e
    dec e
    ld a, [de]
    dec de
    jr @+$0f

    ld c, b
    ld b, c
    ld c, d
    ld c, e
    ld c, b
    ld c, d
    ld c, e
    rra
    inc e
    dec e
    ld [bc], a
    db $f4
    ld hl, sp+$48
    ld c, e
    inc e
    dec bc
    ld [$0e09], sp
    rrca
    ld [$4d4c], sp
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, l
    ld b, l
    ld b, d
    ld c, d
    ld c, e
    ld [bc], a
    sub e
    add hl, bc
    ld c, d
    ld b, b
    ld c, d
    ld c, e
    jr jr_02a_52ea

    ld [hl], a
    ld a, b
    jr jr_02a_52ee

    ld a, [de]
    dec de
    ld [hl], a
    ld a, b
    ld c, h
    ld c, l
    ld c, l
    ld c, h
    ld c, e
    ld c, b
    ld [bc], a
    db $f4
    ld hl, sp+$4d
    ld c, [hl]
    ld c, [hl]
    ld c, a
    ld [$7909], sp
    ld a, d

jr_02a_52ea:
    ld h, b
    ld h, c
    ld h, d
    ld h, e

jr_02a_52ee:
    ld a, c
    ld a, d
    ld [$0a09], sp
    dec bc
    ld c, h
    ld c, c
    ld [bc], a
    db $f4
    ld hl, sp+$1c
    dec e
    ld [bc], a
    and b
    nop
    ld a, [de]
    dec de
    ld h, h
    ld h, l
    ld h, l
    ld h, [hl]
    jr @+$1b

    jr jr_02a_5321

    ld a, [de]
    ld c, b
    ld c, c
    ld b, d
    ld [bc], a
    db $f4
    ld hl, sp+$08
    add hl, bc
    inc c
    dec bc
    ld d, c
    ld d, e
    ld d, d
    ld d, d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, d
    ld d, h
    ld [$0e09], sp
    ld c, h

jr_02a_5321:
    ld c, [hl]
    ld c, a
    ld [bc], a
    db $f4
    ld hl, sp+$18
    add hl, de
    inc e
    dec de
    ld d, l
    ld [bc], a
    ld c, b
    db $10
    ld [bc], a
    ld c, b
    db $10
    ld d, [hl]
    jr jr_02a_534d

    ld e, $02
    or c
    dec bc
    inc c
    dec c
    inc c
    rrca
    ld e, c
    ld e, d
    inc b
    dec b
    nop
    ld bc, $0706
    ld e, e
    ld e, h
    ld [bc], a
    ld c, $10
    ld [bc], a
    sub d
    ld a, [bc]
    inc e

jr_02a_534d:
    dec e
    inc e
    rra
    ld e, c
    ld e, d
    inc d
    dec d
    db $10
    ld de, $1716
    ld e, l
    ld e, [hl]
    ld [bc], a
    add sp, $00
    jr jr_02a_5378

    ld [bc], a
    inc [hl]
    dec de
    dec c
    ld e, c
    ld e, d
    inc c
    dec c
    ld [bc], a
    ld c, $10
    ld [bc], a
    adc h
    nop
    ld c, b
    ld c, c
    ld c, c
    ld c, d
    ld [bc], a
    ld d, h
    dec de
    dec e
    ld e, c
    ld e, d
    inc e

jr_02a_5378:
    dec e
    ld [bc], a
    add sp, $00
    ld a, [de]
    dec de
    inc e
    dec e
    ld c, h
    ld c, a
    ld b, a
    ld b, b
    ld [bc], a
    and b
    ld hl, sp+$00
    ld [bc], a
    ld bc, $2e2a
    inc l
    dec l
    add hl, hl
    inc l
    dec l
    ld l, $2b
    add hl, hl
    add hl, hl
    ld a, [hl+]
    inc l
    dec l
    ld l, $3c
    inc hl
    ld b, h
    ld b, a
    ld b, a
    ld bc, $f8f4
    dec h
    dec h
    dec a
    dec a
    ld l, $2a
    dec h
    ld h, $29
    dec hl
    dec l
    dec h
    dec h
    dec a
    daa
    inc hl
    ld bc, $002f
    ld bc, $f8f4
    ld a, $24
    ld a, [hl+]
    ld l, $26
    ld a, $38
    add hl, sp
    add hl, hl
    dec l
    ld l, $3e
    ld l, $2d
    inc a
    ld bc, $0d2f
    jr jr_02a_53d5

    ld a, [de]
    dec de
    jr jr_02a_53dd

    ld a, [hl-]
    dec sp
    inc h
    dec a
    ld a, $2e

jr_02a_53d5:
    ld bc, $000d
    ld bc, $0c30
    inc c
    dec c

jr_02a_53dd:
    ld c, $1b
    ld [$6709], sp
    ld l, b
    ld c, $0f
    ld d, e
    ld d, h
    ld l, $27
    inc hl
    inc hl
    ld b, h
    ld b, d
    ld b, e
    ld bc, $0933
    inc e
    dec e
    ld e, $1f
    jr jr_02a_5410

    ld l, c
    ld l, d
    ld e, $1f
    ld d, b
    ld d, [hl]
    ld bc, $012e
    ld b, h
    ld b, [hl]
    ld bc, $0913
    ld [$0a09], sp
    dec bc
    ld d, c
    ld d, d
    ld d, b
    ld d, b
    ld d, d
    ld d, d
    ld d, b

jr_02a_5410:
    ld d, [hl]
    ld bc, $012f
    ld bc, $0c51
    add hl, de
    ld a, [de]
    dec de
    ld d, l
    ld d, b
    ld bc, $01e5
    ld e, b
    ld b, d
    ld b, c
    ld b, e
    ld bc, $0d2f
    ld b, d
    ld c, e
    inc c
    dec c
    ld e, c
    ld e, d
    inc b
    dec b
    ld b, $07
    ld b, $07
    ld b, a
    ld b, h
    ld b, h
    ld bc, $01ee
    ld bc, $f8f4
    ld c, a
    ld c, a
    inc e
    dec e
    ld e, c
    ld e, d
    inc d
    dec d
    ld d, $17
    ld c, $0f
    ld bc, $012f
    ld b, b
    ld b, c
    ld b, d
    ld bc, $0ab4
    ld c, $0f
    ld e, c
    ld e, d
    inc c
    dec c
    ld c, $0f
    ld a, [bc]
    dec bc
    ld bc, $01ad
    ld b, a
    ld b, h
    ld b, h
    ld bc, $0ad4
    ld e, $1f
    ld e, c
    ld e, d
    inc e
    ld c, b
    ld c, e
    ld c, b
    ld c, d
    ld c, d
    ld b, d
    ld bc, $02ee
    ld bc, $0933
    ld bc, $00c0
    ld e, c
    ld e, d
    ld [$4c0e], sp
    ld c, l
    ld c, [hl]
    ld c, [hl]
    ld b, [hl]
    ld b, a
    ld bc, $0fce
    inc bc
    ld e, c
    ld e, d
    ld bc, $00e0
    ld e, $1f
    ld bc, $122c
    ld b, e
    ld b, e
    ld bc, $0a74
    ld bc, $1182
    add hl, bc
    ld bc, $1148
    ld b, b
    ld b, d
    ld b, c
    ld b, d
    ld b, [hl]
    ld b, a
    ld bc, $0b93
    ld bc, $10a2
    db $10
    ld de, $1514
    ld c, h
    ld c, c
    ld b, h
    ld b, a
    ld b, l
    ld b, l
    ld b, h
    ld b, a
    ld bc, $0a32
    nop
    ld [bc], a
    ld bc, $0908
    ld a, [bc]
    dec bc
    ld e, c
    ld e, d
    inc c
    dec c
    ld bc, $0000
    ld a, [bc]
    dec bc
    jr jr_02a_54e1

    ld c, b
    ld c, e
    jr jr_02a_54e5

    ld bc, $f8f4
    jr @+$1b

    ld a, [de]
    dec de
    ld e, c
    ld e, d
    inc e
    dec e
    ld bc, $0020
    ld a, [de]
    dec de
    inc c
    ld c, b
    ld b, c
    ld c, d
    ld c, e

jr_02a_54e1:
    ld c, b
    ld bc, $faf4

jr_02a_54e5:
    ld c, $0f
    ld e, c
    ld e, d
    ld [$0809], sp
    ld l, a
    ld [hl], b
    rrca
    ld [$4c09], sp
    ld c, l
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, l
    ld bc, $0a14
    ld e, $1f
    ld e, c
    ld e, d
    jr jr_02a_5519

    jr jr_02a_5573

    ld [hl], d
    rra
    jr jr_02a_551f

    jr @+$1b

    ld bc, $000c
    ld bc, $f8f4
    inc c
    dec c
    ld bc, $0002
    ld a, [bc]
    dec bc
    ld [$0e0a], sp
    rrca

jr_02a_5519:
    ld [$010a], sp
    ld b, b
    nop
    inc c

jr_02a_551f:
    dec c
    ld bc, $f8f4
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld e, c
    ld e, d
    ld a, [de]
    dec de
    jr jr_02a_5547

    ld e, $1f
    jr jr_02a_554b

    ld bc, $0060
    inc e
    dec e
    ld bc, $f8f4
    ld c, d
    ld c, [hl]
    ld c, [hl]
    ld c, a
    ld bc, $0084
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld [$5109], sp

jr_02a_5547:
    ld d, e
    ld d, d
    ld d, e
    ld d, d

jr_02a_554b:
    ld d, e
    ld bc, $f8f4
    ld c, a
    rrca
    ld bc, $0002
    ld a, [de]
    dec de
    ld h, h
    ld h, l
    ld h, l
    ld h, [hl]
    jr jr_02a_5575

    ld d, l
    ld d, b
    ld bc, $00ef
    ld bc, $0c74
    ld d, l
    ld d, b
    ld d, d
    ld d, d
    ld bc, $00ef
    ld bc, $1206
    ld bc, $0af2
    inc e
    dec e

jr_02a_5573:
    ld a, [de]
    dec de

jr_02a_5575:
    ld bc, $02ee
    ld bc, $1625
    ld bc, $f9f4
    ld a, [bc]
    ld c, $0f
    ld bc, $1724
    ld d, [hl]
    ld b, $07
    ld [bc], a
    inc bc
    ld bc, $0914
    ld a, [de]
    ld e, $1f
    ld bc, $1724
    ld e, b
    ld d, $17
    ld [de], a
    inc de
    ld bc, $0e74
    inc b
    dec b
    ld [bc], a
    inc bc
    ld b, $07
    ld e, e
    ld e, h
    nop
    rlca
    ld a, [bc]
    dec bc
    ld [$0109], sp
    inc d
    inc e
    ld e, c
    ld e, d
    inc d
    dec d
    ld [de], a
    inc de
    ld d, $17
    ld e, l
    ld e, [hl]
    db $10
    rla
    ld a, [de]
    dec de
    ld bc, $0a12
    ld bc, $0088
    ld bc, $0004
    ld c, $0f
    ld [$0809], sp
    dec bc
    ld a, [bc]
    ld c, b
    ld c, c
    ld c, c
    ld c, d
    ld c, e
    ld bc, $1c54
    ld bc, $0024
    ld e, $01
    ld l, e
    nop
    dec de
    ld a, [de]
    ld c, h
    ld c, a
    ld b, a
    ld b, b
    ld c, d
    ld bc, $f8a0
    nop
    ld [bc], a
    ld bc, $0d0c
    ld c, $0f
    ld e, c
    ld e, d
    ld c, $0f
    ld [$0a09], sp
    dec bc
    inc hl
    ld bc, $030c
    ld bc, $f8f4
    ld c, e
    dec e
    ld e, $1f
    ld e, c
    ld e, d
    ld e, $1f
    jr jr_02a_561b

    ld a, [de]
    dec de
    ld bc, $0f0c
    ld bc, $4942
    ld c, d
    ld c, e
    ld e, c
    ld e, d
    ld a, [bc]
    dec bc
    ld bc, $0000
    ld d, d
    ld d, h
    ld bc, $0e0e
    ld c, l
    ld c, [hl]
    ld c, a

jr_02a_561b:
    ld c, e
    ld e, c
    ld e, d
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld d, b
    ld d, [hl]
    inc hl
    inc hl
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld bc, $f8f4
    ld bc, $0008
    ld d, l
    ld d, b
    ld d, d
    ld d, d
    ld d, e
    ld d, e
    ld d, d
    ld d, e
    ld d, b
    ld e, b
    inc hl
    inc hl
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld bc, $f8f4
    ld bc, $0028
    ld d, l
    ld d, b
    ld bc, $03a5
    ld d, [hl]
    ld bc, $0e0e
    ld d, d
    ld bc, $0089
    ld bc, $0fa5
    ld [$c401], sp
    dec b
    ld bc, $00a5
    ld e, b
    ld bc, $0fce
    ld b, $56
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld b, b
    ld b, e
    ld bc, $0fd0
    inc b
    ld e, b
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    ld b, h
    ld b, a
    ld bc, $0c10
    ld bc, $1008
    ld bc, $100a
    ld [$0109], sp
    nop
    nop
    ld bc, $0e0e
    ld bc, $1028
    ld bc, $102a
    jr jr_02a_56ac

    inc e
    dec e
    ld bc, $000a
    ld b, b
    ld b, d
    ld b, e
    ld bc, $0913
    ld a, [bc]
    ld c, b
    ld c, c
    ld c, e
    inc c
    dec c
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    ld [$1c09], sp
    rrca

jr_02a_56ac:
    inc hl
    ld b, h
    ld b, a
    ld b, l
    ld bc, $0a72
    ld c, e
    ld c, c
    ld b, d
    ld c, d
    ld c, e
    dec d
    ld a, [de]
    dec de
    inc e
    ld a, [de]
    jr @+$1b

    ld e, $1f
    ld bc, $000c
    ld b, h
    ld b, [hl]
    ld bc, $0934
    ld c, l
    ld c, [hl]
    ld c, a
    ld c, a
    add hl, bc
    ld a, [bc]
    dec bc
    ld [$0c09], sp
    dec bc
    ld bc, $040a
    ld bc, $f8f4
    ld c, a
    rra
    ld a, [de]
    dec de
    ld bc, $0028
    jr @+$1b

    inc e
    dec de
    inc e
    ld bc, $1f4d
    nop
    nop
    ld [bc], a
    ld bc, $0b0a
    ld a, [bc]
    dec bc
    ld e, c
    ld e, d
    ld [$0c09], sp
    dec c
    ld [$0a19], sp
    dec bc
    ld [$0c0b], sp
    dec c
    ld c, $0f
    ld bc, $f8f4
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld e, c
    ld e, d
    jr jr_02a_5725

    inc e
    dec e
    jr jr_02a_5758

Jump_02a_5710:
    ld c, c
    ld c, c
    ld c, d
    ld c, d
    ld c, e
    dec e
    ld e, $48
    ld bc, $f8f4
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld e, c
    ld e, d
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    dec bc

jr_02a_5725:
    ld [$4c0a], sp
    ld c, a
    ld c, h
    ld b, l
    ld b, d
    ld c, c
    ld c, d
    ld b, d
    ld bc, $f8f4
    ld c, d
    ld c, [hl]
    ld c, [hl]
    ld c, a
    ld e, c
    ld e, d
    ld bc, $0020
    jr jr_02a_5756

    ld a, [de]
    dec de
    jr jr_02a_578d

    ld c, l
    ld c, [hl]
    ld c, a
    ld c, h
    ld bc, $f8f4
    ld c, a
    rrca
    ld bc, $0002
    inc c
    dec c
    ld a, [bc]
    dec bc
    jr nc, jr_02a_5784

    ld bc, $000c

jr_02a_5756:
    ld a, [bc]
    dec bc

jr_02a_5758:
    ld bc, $0f12
    ld bc, $1d1c
    inc c
    dec c
    ld [hl-], a
    inc sp
    ld a, [de]
    dec de
    jr @+$0d

    ld a, [de]
    dec de
    ld e, $1f
    ld bc, $f8f4
    ld c, $0f
    ld [$0301], sp
    ld bc, $0b0a
    ld h, a
    ld l, b
    ld a, [bc]
    dec bc
    ld a, [de]
    dec de
    ld d, c
    ld d, e
    ld d, d
    ld d, d
    ld bc, $f8f4
    ld e, $1f

jr_02a_5784:
    jr jr_02a_5787

    inc hl

jr_02a_5787:
    ld bc, $1b1a
    ld l, c
    ld l, d
    ld a, [de]

jr_02a_578d:
    dec de
    inc c
    dec c
    ld d, l
    ld d, b
    ld d, b
    ld d, b
    ld bc, $f8f4
    inc c
    dec c
    inc c
    rrca
    ld d, l
    ld d, b
    ld d, e
    ld d, d
    ld d, e
    ld d, d
    ld d, b
    ld d, b
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld d, b
    ld bc, $0bf1
    inc e
    dec e
    inc e
    rra
    ld bc, $00f0
    ld bc, $1825
    ld bc, $f8f4
    ld [$0809], sp
    dec bc
    ld bc, $00f0
    ld [hl], e
    ld [hl], h
    ld bc, $1f2a
    inc bc
    jr @+$1b

    jr jr_02a_57e4

    ld bc, $00f0
    ld [hl], l
    db $76
    ld bc, $1f2a
    inc bc
    ld bc, $1200
    ld bc, $1825
    ld bc, $0a12
    ld bc, $1e20
    ld bc, $0fb2
    ld bc, $0302

jr_02a_57e4:
    ld b, $07
    ld [bc], a
    inc bc
    ld e, e
    ld e, h
    ld b, $07
    ld [bc], a
    rlca
    ld a, [bc]
    dec bc
    ld bc, $0ed4
    ld [de], a
    inc de
    ld d, $17
    ld [de], a
    inc de
    ld e, l
    ld e, [hl]
    ld d, $17
    ld [de], a
    rla
    ld a, [de]
    dec de
    ld bc, $f8a0
    nop
    ld [bc], a
    ld bc, $0d4b
    ld c, $0f
    ld [$0e09], sp
    rrca
    ld [$340e], sp
    dec [hl]
    ld c, $0b
    inc hl

Jump_02a_5816:
    ld bc, $010e
    ld bc, $f8f4
    ld c, l
    ld c, d
    ld c, c
    ld c, d
    ld c, e
    add hl, de
    ld e, $1f
    jr jr_02a_5844

    ld [hl], $37
    ld e, $1b
    ld bc, $0e0e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld bc, $0200
    ld h, a
    ld l, b
    ld c, $0f
    ld d, e
    ld d, h
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld bc, $f8f4
    jr jr_02a_585c

    ld a, [de]

jr_02a_5844:
    dec de
    inc e
    dec e
    ld e, $1f
    jr jr_02a_5864

    ld l, c
    ld l, d
    ld e, $1f
    ld d, b
    ld d, [hl]
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld bc, $f8f4
    ld c, $0b
    ld a, [bc]
    dec bc

jr_02a_585c:
    ld [$0a09], sp
    dec bc
    ld d, c
    ld d, e
    ld d, b
    ld d, b

jr_02a_5864:
    ld d, d
    ld d, e
    ld d, b
    ld d, b
    ld d, e
    ld d, h
    ld bc, $0a12
    ld e, $1b
    ld a, [de]
    dec de
    ld bc, $0060
    ld d, l
    ld d, b
    ld bc, $03a9
    ld d, [hl]
    ld bc, $0a12
    ld d, d
    ld bc, $03c0
    ld bc, $04a9
    ld d, b
    ld d, b
    ld d, e
    ld d, e
    ld bc, $f8f4
    ld bc, $06c8
    ld bc, $06c8
    ld bc, $0fd4
    add hl, bc
    ld [bc], a
    inc bc
    ld b, $07
    ld bc, $0fd4
    add hl, bc
    ld [de], a
    inc de
    ld d, $17
    ld bc, $0fd4
    rlca
    ld [bc], a
    inc bc
    ld c, $0f
    ld c, $0f
    ld bc, $0fd4
    rlca
    ld [de], a
    inc de
    ld e, $1f
    ld e, $1f
    ld bc, $f8f4
    inc b
    dec b
    ld b, $07
    ld bc, $1280
    ld [bc], a
    inc bc
    inc b
    rlca
    ld [$0a0f], sp
    dec bc
    ccf
    ld bc, $0913
    inc d
    dec d
    ld d, $17
    ld bc, $12a0
    ld [de], a
    inc de
    inc d
    rla
    jr jr_02a_58f7

    ld a, [de]
    ccf
    ld bc, $0a12
    ld bc, $0084
    inc c
    dec c
    ld c, $0f
    inc c
    dec c
    ld a, [bc]
    dec bc
    inc c
    dec bc
    ld [$3f0b], sp
    ld bc, $0b11
    ld bc, $0460
    inc e
    dec e
    ld a, [de]
    dec de

jr_02a_58f7:
    inc e
    dec de
    jr jr_02a_58fc

    dec l

jr_02a_58fc:
    ld bc, $a001
    ld hl, sp+$00
    ld [bc], a
    ld bc, $0f0e
    inc c
    dec bc
    ld e, c
    ld e, d
    inc c
    ld a, [bc]
    inc c
    add hl, bc
    add hl, bc
    ld a, [de]
    ld c, $0f
    ld [$0c09], sp
    dec c
    ld [$0109], sp
    db $f4
    ld hl, sp+$1e
    rra
    inc e
    dec de
    ld e, c
    ld e, d
    inc e
    ld a, [de]
    inc e
    add hl, de
    add hl, de
    add hl, bc
    ld e, $1f
    jr jr_02a_5943

    inc e
    dec e
    jr jr_02a_5947

    ld bc, $f8f4
    ld [$010b], sp
    ld [bc], a
    nop
    ld [$080a], sp
    add hl, bc
    ld h, a
    ld l, b
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    inc c
    rrca
    inc c

jr_02a_5943:
    ld a, [bc]
    ld bc, $f8f4

jr_02a_5947:
    jr jr_02a_5964

    ld bc, $0022
    jr jr_02a_5968

    jr @+$1b

    ld l, c
    ld l, d
    ld a, [de]
    dec de
    inc e
    ld a, [de]
    inc e
    rra
    inc e
    ld a, [de]
    ld bc, $f8f4
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld d, l
    ld d, b
    ld d, e

jr_02a_5964:
    ld d, e
    ld d, e
    ld d, d
    ld d, b

jr_02a_5968:
    ld bc, $0085
    ld bc, $018c
    ld bc, $f8f4
    ld a, [de]
    dec de
    inc e
    dec e
    ld d, l
    ld d, b
    ld bc, $0aa5
    ld bc, $faf4
    ld c, $0f
    ld e, c
    ld e, d
    inc b
    dec b
    dec b
    ld b, $02
    inc bc
    ld bc, $00c4
    ld bc, $00a4
    ld bc, $0a14
    ld e, $1f
    ld e, c
    ld e, d
    inc d
    dec d
    dec d
    ld d, $12
    inc de
    ld bc, $00e4
    ld bc, $0cd0
    inc c
    dec c
    ld bc, $0102
    dec c
    ld bc, $004a
    ld e, c
    ld e, d
    ld [$0409], sp
    dec b
    ld [bc], a
    inc bc
    ld bc, $f8f4
    inc e
    dec e
    ld bc, $0122
    dec e
    ld bc, $006a
    ld e, c
    ld e, d
    jr jr_02a_59da

    inc d
    dec d
    ld [de], a
    inc de
    ld bc, $0a74
    ld d, c
    ld d, e
    ld d, b
    ld d, b
    ld bc, $0188
    ld bc, $0089
    ld d, h
    inc c
    dec c
    ld a, [bc]
    dec bc
    ld bc, $0a94

jr_02a_59da:
    ld bc, $09a4
    ld d, [hl]
    inc e
    dec e
    ld a, [de]
    dec de
    ld bc, $0af4
    ld bc, $02a4
    ld l, e
    ld l, h
    ld bc, $126a
    inc c
    dec c
    ld c, $0f
    ld bc, $1a14
    ld bc, $02a4
    ld l, l
    ld l, [hl]
    ld bc, $01a5
    ld e, b
    inc e
    dec e
    ld e, $1f
    ld bc, $faf4
    ld [$010b], sp
    db $10
    db $10
    ld b, $07
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0109], sp
    ld d, d
    ld a, [de]
    ld e, $1f
    jr jr_02a_5a27

    ld bc, $1030
    ld d, $17
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1b

jr_02a_5a27:
    ld bc, $1a72
    nop
    ld [bc], a
    ld bc, $0f0e
    inc c
    dec bc
    ld e, c
    ld e, d
    inc c
    ld a, [bc]
    inc c
    add hl, bc
    add hl, bc
    ld a, [de]
    ld c, $0f
    ld [$0c09], sp
    dec c
    ld [$0109], sp
    db $f4
    ld hl, sp+$1e
    rra
    inc e
    dec de
    ld e, c
    ld e, d
    inc e
    ld a, [de]
    inc e
    add hl, de
    add hl, de
    add hl, bc
    ld e, $1f
    jr jr_02a_5a6d

    inc e
    dec e
    jr jr_02a_5a71

    ld bc, $f8f4
    ld [$010b], sp
    ld [bc], a
    nop
    ld [$080a], sp
    add hl, bc
    ld h, a
    ld l, b
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    inc c
    rrca
    inc c

jr_02a_5a6d:
    ld a, [bc]
    ld bc, $f8f4

jr_02a_5a71:
    jr jr_02a_5a8e

    ld bc, $0022
    jr jr_02a_5a92

    jr @+$1b

    ld l, c
    ld l, d
    ld a, [de]
    dec de
    inc e
    ld a, [de]
    inc e
    rra
    inc e
    ld a, [de]
    ld bc, $f8f4
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld d, l
    ld d, b
    ld d, e

jr_02a_5a8e:
    ld d, e
    ld d, e
    ld d, d
    ld d, b

jr_02a_5a92:
    ld bc, $0085
    ld bc, $018c
    ld bc, $f8f4
    ld a, [de]
    dec de
    inc e
    dec e
    ld d, l
    ld d, b
    ld bc, $0aa5
    ld bc, $faf4
    ld c, $0f
    ld e, c
    ld e, d
    inc b
    dec b
    dec b
    ld b, $02
    inc bc
    ld bc, $00c4
    ld bc, $00a4
    ld bc, $0a14
    ld e, $1f
    ld e, c
    ld e, d
    inc d
    dec d
    dec d
    ld d, $12
    inc de
    ld bc, $00e4
    ld bc, $0cd0
    inc c
    dec c
    ld bc, $0102
    dec c
    ld bc, $004a
    ld e, c
    ld e, d
    ld [$0409], sp
    dec b
    ld [bc], a
    inc bc
    ld bc, $f8f4
    inc e
    dec e
    ld bc, $0122
    dec e
    ld bc, $006a
    ld e, c
    ld e, d
    jr jr_02a_5b04

    inc d
    dec d
    ld [de], a
    inc de
    ld bc, $0a74
    ld d, c
    ld d, e
    ld d, b
    ld d, b
    ld bc, $0188
    ld bc, $0089
    ld d, h
    inc c
    dec c
    ld a, [bc]
    dec bc
    ld bc, $0a94

jr_02a_5b04:
    ld bc, $09a4
    ld d, [hl]
    inc e
    dec e
    ld a, [de]
    dec de
    ld bc, $0af4
    ld bc, $02a4
    ld l, e
    ld l, h
    ld bc, $02a5
    ld bc, $0c90
    ld bc, $04a2
    ld l, l
    ld l, [hl]
    ld bc, $0faa
    dec b
    ld [$010b], sp
    db $10
    db $10
    ld b, $07
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld bc, $10c8
    ld bc, $0a14
    jr @+$0f

    ld bc, $1030
    ld d, $17
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    ld bc, $10e8
    ld bc, $f8a0
    nop
    ld [bc], a
    ld bc, $0b0c
    ld [$0a09], sp
    dec bc
    inc c
    dec bc
    inc c
    ld a, [bc]
    ld c, $0f
    ld [$230f], sp
    ld bc, $010e
    ld bc, $f8f4
    inc e
    dec de
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec de
    inc e
    ld a, [de]
    ld e, $1f
    jr @+$21

    ld bc, $0e0e
    ld [$0809], sp
    ld a, [bc]
    ld h, a
    ld l, b
    inc c
    dec c
    ld bc, $0002
    ld [$010b], sp
    ld c, $0e
    jr jr_02a_5b9d

    jr @+$1c

    ld l, c
    ld l, d
    inc e
    dec e
    ld bc, $0022
    jr jr_02a_5baa

    ld bc, $0e0e
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, b
    ld d, [hl]
    ld a, [bc]
    dec bc
    ld [$0e0a], sp

jr_02a_5b9d:
    rrca
    ld a, [bc]
    ld bc, $0f4d
    nop
    ld d, b
    ld bc, $00a0
    ld e, b
    ld a, [de]
    dec de

jr_02a_5baa:
    jr @+$1c

    ld e, $1f
    ld a, [de]
    ld bc, $0f6d
    nop
    ld d, b
    ld d, [hl]
    inc b
    dec b
    ld b, $07
    ld a, [bc]
    ld bc, $0101
    ld bc, $0f0c
    ld bc, $5850
    inc d
    dec d
    ld d, $17
    ld a, [de]
    ld bc, $0121
    ld bc, $0f2c
    ld bc, $0302
    ld bc, $0002
    ld c, $0f
    inc c
    dec c
    ld c, $0f
    ld bc, $0f4c
    ld bc, $1312
    ld bc, $0022
    ld e, $1f
    inc e
    dec e
    ld e, $1f
    ld bc, $0f6c
    ld bc, $0f0c
    inc c
    dec c
    ld a, [bc]
    dec bc
    ld bc, $02c6
    ld bc, $0f8c
    ld bc, $1f1c
    inc e
    dec e
    ld a, [de]
    dec de
    ld bc, $02e6
    ld a, [de]
    dec de
    jr nz, @+$23

    jr nz, @+$23

    ld hl, $0120
    inc [hl]
    inc c
    ld c, $0f
    inc c
    rrca
    ld bc, $0248
    ld [hl+], a
    ld bc, $118e
    ld bc, $0c54
    ld e, $1f
    inc e
    rra
    ld bc, $0268
    ld bc, $1e8e
    ld bc, $0400
    ld bc, $1248
    ld bc, $1e8e
    ld bc, $0420
    ld bc, $1268
    ld bc, $1e8e
    nop
    ld [bc], a
    ld bc, $0b0c
    ld [$0a09], sp
    dec bc
    inc c
    dec bc
    inc c
    ld a, [bc]
    ld c, $0f
    ld [$230f], sp
    ld bc, $010e
    ld bc, $f8f4
    inc e
    dec de
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec de
    inc e
    ld a, [de]
    ld e, $1f
    jr @+$21

    ld bc, $0e0e
    ld bc, $0002
    ld h, a
    ld l, b
    inc c
    dec c
    ld bc, $0002
    ld [$010b], sp
    ld c, $0e
    ld bc, $0022
    ld l, c
    ld l, d
    inc e
    dec e
    ld bc, $0022
    jr jr_02a_5c97

    ld bc, $0e0e
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, b
    ld d, [hl]
    ld a, [bc]
    dec bc
    ld [$0e0a], sp
    rrca
    ld a, [bc]
    ld bc, $0f4d
    nop
    ld d, b
    ld bc, $00a0
    ld e, b
    ld a, [de]
    dec de

jr_02a_5c97:
    jr @+$1c

    ld e, $1f
    ld a, [de]
    ld bc, $0f6d
    nop
    ld d, b
    ld d, [hl]
    inc b
    dec b
    ld b, $07
    ld a, [bc]
    ld bc, $0101
    ld bc, $0f0c
    ld bc, $5850
    inc d
    dec d
    ld d, $17
    ld a, [de]
    ld bc, $0121
    ld bc, $0f2c
    ld bc, $0302
    ld h, a
    ld l, b
    ld a, [bc]
    dec bc
    ld c, $0f
    inc c
    dec c
    ld c, $0f
    ld bc, $0f4c
    ld bc, $1312
    ld l, c
    ld l, d
    ld a, [de]
    dec de
    ld e, $1f
    inc e
    dec e
    ld e, $1f
    ld bc, $0f6c
    ld bc, $0f0c
    ld bc, $0084
    ld bc, $02c6
    ld bc, $0f8c
    ld bc, $1f1c
    ld bc, $00a4
    ld bc, $02e6
    ld a, [de]
    dec de
    jr nz, @+$23

    jr nz, @+$23

    ld hl, $0120
    ld [hl], h
    ld a, [bc]
    ld d, b
    ld d, [hl]
    ld c, $0f
    inc c
    rrca
    ld bc, $0248
    ld [hl+], a
    ld bc, $118e
    ld bc, $0b94
    ld e, b
    ld e, $1f
    inc e
    rra
    ld bc, $0268
    ld bc, $1e8e
    ld bc, $02c2
    ld bc, $0200
    ld a, [bc]
    ld bc, $1f8d
    nop
    ld bc, $02e2
    ld bc, $0220
    ld a, [de]
    ld bc, $1fad
    nop
    nop
    ld [bc], a
    ld bc, $0b0c
    ld [$0a09], sp
    dec bc
    inc c
    dec bc
    inc c
    ld a, [bc]
    ld c, $0f
    ld [$230f], sp
    ld bc, $010e
    ld bc, $f8f4
    inc e
    dec de
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec de
    inc e
    ld a, [de]
    ld e, $1f
    jr @+$21

    ld bc, $0e0e
    ld bc, $0002
    ld h, a
    ld l, b
    inc c
    dec c
    ld bc, $0002
    ld [$010b], sp
    ld c, $0e
    ld bc, $0022
    ld l, c
    ld l, d
    inc e
    dec e
    ld bc, $0022
    jr jr_02a_5d8b

    ld bc, $0e0e
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, b
    ld d, [hl]
    ld a, [bc]
    dec bc
    ld [$0e0a], sp
    rrca
    ld a, [bc]
    ld bc, $0f4d
    nop
    ld d, b
    ld bc, $00a0
    ld e, b
    ld a, [de]
    dec de

jr_02a_5d8b:
    jr @+$1c

    ld e, $1f
    ld a, [de]
    ld bc, $0f6d
    nop
    ld d, b
    ld d, [hl]
    inc b
    dec b
    ld b, $07
    ld a, [bc]
    ld bc, $0101
    ld bc, $0f0c
    ld bc, $5850
    inc d
    dec d
    ld d, $17
    ld a, [de]
    ld bc, $0121
    ld bc, $0f2c
    ld bc, $0302
    ld h, a
    ld l, b
    ld a, [bc]
    dec bc
    ld d, c
    ld bc, $0080
    ld d, h
    ld bc, $0f4c
    ld bc, $1312
    ld l, c
    ld l, d
    ld a, [de]
    dec de
    ld d, l
    ld bc, $00a0
    ld d, [hl]
    ld bc, $0f6c
    ld bc, $0f0c
    ld d, b
    ld d, b
    ld bc, $0082
    ld [bc], a
    inc bc
    ld e, c
    ld e, d
    ld bc, $0f8c
    ld bc, $1f1c
    ld bc, $02a0
    ld [de], a
    inc de
    ld e, c
    ld e, d
    ld a, [de]
    dec de
    jr nz, jr_02a_5e0b

    jr nz, @+$23

    ld hl, $0120
    ld [hl], h
    ld a, [bc]
    ld bc, $1046
    ld b, $07
    ld h, a
    ld l, b
    ld e, c
    ld e, d
    ld [$220b], sp
    ld bc, $118e
    ld bc, $0b94
    ld e, b
    ld [de], a
    inc de
    ld d, $17
    ld l, c
    ld l, d
    ld e, c

jr_02a_5e0b:
    ld e, d
    jr @+$1d

    ld bc, $1e8e
    ld bc, $02c2
    inc c
    dec bc
    ld d, l
    ld d, b
    ld bc, $0084
    ld bc, $1e8e
    ld bc, $02e2
    inc e
    ld bc, $1025
    ld e, b
    ld a, [de]
    ld bc, $1fad
    nop
    nop
    ld [$2216], sp
    ld l, $82
    jp z, $aba2

    add b
    ret


    nop
    ld b, c
    db $10
    ld e, e
    add b
    and d
    sub b
    cp d
    ld [$00b9], sp
    and c
    ld [$00aa], sp
    or d
    ld [$046b], sp
    dec [hl]
    adc b
    db $eb
    adc h
    cp [hl]
    ccf

jr_02a_5e4f:
    ret nz

    dec de
    and h
    db $10

jr_02a_5e53:
    ld d, a
    add b
    jp z, Jump_02a_5710

    and b
    ld [$d690], a
    jr nz, jr_02a_5ec2

    sbc h
    ld h, e
    nop
    sbc $42
    ld e, d
    ld b, h
    ld d, h
    ld b, h
    ld d, l
    add b
    or c
    adc b
    xor d
    adc b
    xor d
    jr nz, jr_02a_5e4f

    inc c
    di
    ld e, e
    and h
    ld b, $f9
    dec hl
    call nc, $619e
    inc sp
    call z, $807f
    db $10
    rst $28
    add d
    ld a, l
    jr nc, jr_02a_5e53

    and $19
    rst $38
    nop
    ld a, c
    add [hl]
    rst $18
    jr nz, @+$01

    nop
    ld bc, $acfe
    ld d, e
    ld a, [hl]
    add c
    di
    inc c
    cp a
    ld b, b
    rst $38
    nop
    ld d, $6a
    nop
    ld [$21f7], sp
    sbc $80
    ld a, a
    jp c, $a025

    ld e, a
    jp $f83c


    rlca
    or [hl]
    ld c, c
    nop
    ld a, [hl]
    rlca
    and a
    add hl, bc
    jp c, $b410

    dec de
    or e
    ccf
    rst $30
    ld d, a
    db $d3
    ld c, c
    ld c, d
    nop
    ld a, [hl]
    ldh [$e5], a
    sub b

jr_02a_5ec2:
    ld e, e
    ld [$d82d], sp
    call $effc
    ld [$92cb], a
    ld d, d
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
    nop
    nop
    ld a, a
    nop
    ret nz

    add b
    reti


    and [hl]
    add $b9
    ld d, $c6
    ld [bc], a
    nop
    nop
    cp $00
    ld [bc], a
    nop
    sbc d
    ld h, b
    ld h, d
    sbc b
    ld d, $d6
    ld [bc], a
    ld d, $c8
    inc b
    ld d, $c8
    inc b
    ld d, $d8
    inc b
    ld d, $d8
    inc b
    sub b
    or [hl]
    sub b
    or [hl]
    db $10
    ld [hl], $90
    cp d
    sub b
    or d
    adc b
    xor e
    adc b
    sbc c
    ld b, b
    ld d, l
    add h
    and [hl]
    ld bc, $4173
    ld h, l
    ld b, c
    ld h, l
    ld b, b
    ld h, [hl]
    nop
    inc h
    ld b, b
    ld l, l
    nop
    dec l
    add c
    sub l
    and c
    db $ed
    sub c
    sub l
    jr nz, jr_02a_5fa7

    sub d
    sub a
    ld d, b
    ld e, [hl]
    add hl, de
    ld e, c
    add $c7
    nop
    inc l
    ld de, $0159
    add hl, hl
    inc bc
    ld c, e
    inc bc
    xor e
    ld bc, $84d9
    or l
    dec sp
    cp e
    ld c, a
    or b
    dec sp

jr_02a_5f56:
    call nz, Call_02a_718e
    inc sp
    call z, $fb04
    ld b, c
    cp [hl]
    ld d, $6b
    nop
    rst $38
    nop
    cp a
    ld b, b
    push hl
    ld a, [de]
    rra
    ldh [rNR44], a
    call c, $fb04
    db $10
    rst $28
    ld d, $4e
    db $10
    rst $38
    nop
    cp $01
    or e
    ld c, h
    ret z

    scf
    ld bc, $16fe
    ld e, h
    db $10
    db $fd
    ld [bc], a
    adc $31
    or $09
    sbc c
    ld h, [hl]
    inc h
    db $db
    ld d, b
    xor a
    ld [bc], a
    db $fd
    db $10
    rst $28
    add a
    sub a
    add b
    sbc h
    add b
    sbc a
    ld b, h
    bit 0, e
    call z, $e320
    jr jr_02a_5f56

    rlca
    ld a, a
    pop hl
    jp hl


    ld bc, $0139
    ld sp, hl
    ld [hl+], a

jr_02a_5fa7:
    db $d3
    jp nz, Jump_000_0433

    rst $00
    jr jr_02a_5fcb

    ldh [$fe], a
    add b
    add $80
    res 0, b
    ld hl, sp-$80
    call z, $ff80
    ld d, $5f
    ld de, $01ff
    ld h, e
    ld bc, $01d3
    rra
    ld bc, $0133
    ld d, $a9
    inc de
    ret nz

jr_02a_5fcb:
    cp a
    rst $38
    add b
    add b
    rst $38
    ld a, a
    ld a, a
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, a
    rst $30
    ld c, b
    ret z

    ld [bc], a
    db $fc
    cp $00
    ld bc, $feff
    cp $02
    inc bc
    ld [bc], a
    rst $38
    ldh [$ed], a
    db $10
    ld de, $6b16
    ld bc, $e116
    rla
    sub b
    or d
    ld [hl], h
    db $76
    inc c
    call $f504
    ld [bc], a
    ei
    ld [bc], a
    cp $01
    db $fd
    ld bc, $ad16
    db $10
    db $fd
    ld a, [bc]
    ld a, [$dfd6]
    ld a, [hl+]
    or [hl]
    inc c
    pop de
    ld l, l
    ld [c], a
    dec hl
    ld d, h
    add b
    cp a
    ld d, b
    rst $18
    ld [$2cbb], sp
    ld e, l
    ld b, d
    ld [hl+], a
    dec e
    or e
    jp $c21d


    inc e
    nop
    db $fd
    nop
    adc d
    nop
    and d
    ld b, $47
    rrca
    add hl, de
    ld a, d
    ld [hl], l
    db $ed
    add b
    ret nc

    and [hl]
    ld c, [hl]
    ld c, [hl]
    ld b, b
    ld b, b
    ld [hl], $36
    ld c, b
    ld c, e
    ld [hl], d
    ld [hl], l
    sub l
    sub e
    ret


    xor c
    and [hl]
    sub $88
    adc a
    ld h, c
    ld [hl], a
    sub [hl]
    xor [hl]
    sub b
    and e
    ld c, d
    ld c, l
    ld [hl-], a
    db $f4
    ld l, c
    add hl, bc
    add [hl]
    sub [hl]
    ld de, $8671
    xor [hl]
    ld l, c
    ld [hl], l
    add hl, bc
    dec b
    ld [de], a
    ld d, d
    inc c
    ld e, a
    sub [hl]
    ldh a, [$61]
    ld l, c
    ld [hl], d
    ld [hl], d
    ld [bc], a
    ld [bc], a
    ld l, h
    ld l, h
    ld [de], a
    jp nc, $ae4e

    xor c
    ret


    sub e
    sub l
    ld h, l
    ld l, e
    nop
    rst $38
    nop
    rrca
    nop
    scf
    ld h, b
    db $e3
    ldh a, [$9b]
    ld e, [hl]
    xor a
    or a
    ld bc, $650b
    ld b, $de
    add hl, bc
    jp hl


    dec bc
    ei
    rlca
    rst $30
    ld [bc], a
    xor $04
    db $ec
    ld b, $f6
    inc bc
    ei
    adc b
    jp hl


    pop af
    rst $30
    ld a, a
    ld a, a
    jr c, jr_02a_60d5

    ldh a, [$fd]
    jr c, jr_02a_60ce

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
    adc b
    cp c
    jp hl


    rst $28
    rst $00

jr_02a_60b4:
    rst $10
    add a
    or a
    call Call_02a_70cd
    ld [hl], b
    ld c, c
    ld c, c
    add [hl]
    sbc [hl]
    dec d
    sbc c
    sub a
    rst $30
    db $e3
    db $eb
    pop hl
    db $ed
    or e
    or e
    ld c, $0e
    sub d
    sub d
    ld h, c

jr_02a_60ce:
    ld a, c
    rrca
    cp a
    add hl, de
    ld e, c
    pop hl
    db $e3

jr_02a_60d5:
    or e
    cp a
    rra
    rra
    add hl, bc
    add hl, hl
    db $10
    sub $e3
    jp hl


    ld de, $8f97
    rst $28
    cp $fe
    inc e
    ld a, h
    rrca
    cp a
    inc e
    call z, $9afa
    ld sp, hl
    ld sp, hl
    ld h, b
    ld a, e
    sub b
    sub a
    ret nc

    db $d3
    ldh [$eb], a
    ld b, b
    ld h, l
    jr nz, jr_02a_612e

    ld h, b
    ld [hl], a
    add b
    add a
    ld d, $6b

jr_02a_6101:
    nop
    ld [$10eb], sp
    db $dd
    inc [hl]
    cp d
    ld b, d
    ld b, h
    cp b
    call $b8c3
    inc bc
    di
    rlca
    db $ec
    ld b, $cd
    ld [bc], a
    and [hl]
    rlca
    sub a
    add hl, bc
    ret


    dec bc
    sbc e
    rlca
    rst $00
    jp nz, Jump_000_2592

    ld bc, $0886
    jr c, jr_02a_60b4

    dec c
    ld h, l
    and [hl]
    sub [hl]
    pop hl
    pop hl
    add b
    or a

jr_02a_612e:
    ret


    jp c, Jump_02a_7576

    and h
    inc l
    inc hl
    xor e
    ld d, [hl]
    ld d, [hl]
    cp d
    adc d
    ld c, c
    ld d, c
    jr nc, jr_02a_6174

    ld [hl], c
    rst $30
    ld c, [hl]
    ld d, [hl]
    sub b
    xor b
    ld b, h
    ld d, l
    jr c, jr_02a_6101

    ld [hl+], a
    and d
    ld b, c
    ld c, c
    add b
    and d
    adc [hl]
    rst $28
    ld [hl], d
    ld l, d
    add hl, bc
    dec d
    ld [hl+], a
    xor d
    inc e
    sbc l
    ld b, h
    ld b, l
    add d
    sub d
    ld bc, $9305
    ld e, e
    ld l, [hl]
    xor [hl]
    dec h
    inc [hl]
    call nz, $6ad5
    ld l, d
    ld e, l
    ld d, c
    sub d
    adc d
    inc c
    ld l, h
    ld c, e
    ld b, c
    and h
    add b
    ld h, c
    db $10

jr_02a_6174:
    inc e
    ld [hl], c
    or h
    and d
    ld l, l
    ld h, c
    add a
    add a
    ld bc, $c0ed
    rst $38
    ldh [$3f], a
    ld h, b
    xor a
    ld b, b
    ld [hl], a
    ldh [$ef], a
    sub b
    sub a
    ret nc

    db $db
    ldh [$fb], a
    adc e
    rst $08
    sub e
    sbc e
    ld [hl], c
    di
    add hl, bc
    db $ed
    rlca
    rst $20
    ld [de], a
    ld_long a, $ff0d
    nop
    cp $8c
    xor $f8
    db $fc
    db $ec

jr_02a_61a3:
    db $ed
    inc hl
    inc hl
    ld [hl], a
    ld [hl], a
    adc d
    adc d
    ld d, c
    ld d, c
    jr c, jr_02a_61e6

    pop hl
    push hl
    ld e, [hl]
    ld e, [hl]
    add h
    and h
    call nz, Call_02a_78dc
    ld a, b
    ld [hl+], a
    ld [hl+], a
    ld b, c
    ld b, c
    add b
    add d
    add a
    and a
    ld a, d
    ld a, d
    ld hl, $2325
    dec sp
    ld e, $1e
    ld b, h
    ld b, h
    add d
    add d
    ld bc, $3141
    ld [hl], a
    rra
    ccf
    scf
    or a
    call nz, $eec4
    xor $51
    ld d, c
    adc d
    adc d
    inc e
    inc e
    pop de
    db $d3
    ret


    jp hl


    adc [hl]
    rst $18
    sub b
    di

jr_02a_61e6:
    ld l, b
    ld l, a
    xor b
    cp a
    db $10
    rra
    nop
    cp a
    ld h, e
    sbc h
    db $10
    rst $28
    and [hl]
    ld e, c
    ld [hl], b
    adc a
    call Call_000_3732
    ret z

    db $dd
    ld [hl+], a
    ld [hl], e
    adc h
    nop
    add b
    rrca
    jr nc, jr_02a_61a3

    add h
    or [hl]
    sub d
    ld d, $06
    ld b, b
    sbc a
    cp e
    add h
    cp e
    nop
    ld bc, $02fc
    ld [bc], a
    sub b
    jp c, $1648

    ld d, $40
    cp $6c
    sub h
    ld l, d
    ret nz

    ret nz

    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    sbc b
    ret c

    inc hl
    inc hl
    ld c, h
    call c, $f858
    ld bc, $fe01
    cp $fc
    db $fd
    cp $ff
    add hl, de
    dec de
    call nz, Call_000_22c4
    dec hl
    ld [de], a
    rla
    ld d, $a0
    rst $38
    ld c, l
    ld d, $c0
    rst $38
    dec l
    add $c7
    sbc c
    ld e, c
    ldh a, [$0e]
    cp $16
    cp $10
    ld d, $6b
    ld bc, $bb3b
    add h
    or l
    ccf
    ret nz

    ld d, $e1
    ld d, $03
    sub e
    jr nz, jr_02a_6284

    ld b, [hl]
    ld l, c
    cpl
    ld d, b
    ld l, a
    sub b
    add [hl]
    ld a, c
    ld [hl], l
    adc d
    ld a, e
    add h
    ld b, h
    ld d, h
    and d
    and [hl]
    dec b
    ld l, e
    ld l, [hl]
    sub b
    cp $01
    ld a, e
    add h
    cp a
    ld b, b
    di
    inc c
    ld a, $c1
    sbc l
    ld h, d
    pop hl
    ld e, $ed
    ld [de], a
    xor $11

jr_02a_6284:
    ld d, $0a
    ld d, d
    ld a, [hl-]
    push bc
    push de
    ld a, [hl+]
    xor $11
    xor $11
    or $09
    ld d, $1a
    ld d, d
    or a
    ld c, b
    jp $dd3c


    ld [hl+], a
    cp [hl]
    ld b, c
    db $dd
    ld [hl+], a
    pop hl
    ld e, $16
    ld b, h
    ld d, b
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
    jr nz, jr_02a_62c8

    db $f4
    ld c, b
    ld d, $6a
    ld [bc], a
    nop
    ld a, [hl]
    nop
    and l
    nop
    db $db
    nop
    and l
    ld d, $72
    ld d, e
    ld a, [hl]
    ld e, h
    ld h, d
    ld [hl+], a
    ccf
    ld a, [bc]

jr_02a_62c8:
    ld c, e
    db $10
    db $fd
    inc d
    ld e, d
    ld [bc], a
    inc b
    jr c, jr_02a_631e

    inc bc
    ld a, b
    rra
    jr nz, jr_02a_62e2

    db $d3
    db $eb
    inc d
    ld a, e
    add h
    ld sp, $6ece
    ld de, $10af
    pop af

jr_02a_62e2:
    ld c, $00
    sbc c
    dec bc
    ld c, b
    ld [$1c0e], sp
    sbc l
    ld hl, $4c24
    ld d, e
    ld b, d

jr_02a_62f0:
    jp c, Jump_000_3434

jr_02a_62f3:
    adc a
    ld d, b
    ccf
    add b
    sbc [hl]
    and c
    adc l
    ld d, d
    add e
    ld a, h
    inc sp
    call z, Call_02a_7e01

jr_02a_6301:
    nop
    rst $38
    ld a, [hl]
    add c
    ld a, d
    add l
    ld a, e
    add h
    scf
    ret z

    adc $31
    call nz, $983b

jr_02a_6310:
    ld h, a
    dec a
    jp nz, Jump_02a_5816

    ld d, b
    ld h, [hl]
    sbc c
    jr jr_02a_6301

    dec l
    db $d2, $e1, $1e

jr_02a_631e:
    ld l, h
    sub e
    adc $31
    pop af
    ld c, $7c
    add e
    ld hl, sp+$07
    db $dd
    ld [hl+], a
    pop bc
    ld a, $ce
    ld sp, $7986
    jr nz, jr_02a_6310

    nop
    sbc e
    ret nc

    rla
    db $10
    ld [hl], a
    jr c, jr_02a_62f3

    add h
    inc h
    ld [hl-], a
    ld c, d
    ld b, d
    ld e, e
    inc l
    dec l
    ld bc, $02c5
    or e
    ld a, [bc]
    adc e
    db $10
    ld e, l
    inc [hl]
    ld a, [hl-]
    ld d, $0a
    ld [hl-], a
    ld a, [hl+]
    ld a, [hl+]
    ld de, $84d5
    ld l, d
    ld l, a
    add b
    daa
    ret z

    ld [hl], a
    nop
    cp l
    ld [bc], a
    db $eb
    inc d
    ld d, h
    ld d, h
    adc b
    xor e
    ld hl, $f656
    ld bc, $13e4
    xor $00
    cp l
    ld b, b
    rst $10
    jr z, jr_02a_62f0

    pop af
    ld b, c
    db $ed
    ld d, c
    push de
    ld a, [bc]
    ld d, $15
    dec h
    ld bc, $3836
    dec sp
    db $10
    db $dd
    inc h
    cp d
    db $10
    ld e, l
    ld a, [bc]
    dec bc
    ld [hl-], a
    or a
    ld b, b
    ld e, [hl]
    db $eb
    inc d
    ld [hl], e
    adc h
    dec e
    ld [c], a
    ld a, [hl]
    ld bc, $02fd
    add c
    ld l, [hl]
    dec c
    jp nc, $e1de

    rst $10
    jr z, @-$30

    ld sp, $47b8
    ld a, [hl]
    add b
    cp a
    ld b, b
    add c
    db $76
    or b
    ld c, e
    ld a, e
    add a
    add b
    ld l, h
    inc e
    db $dd
    ld [$24bb], sp
    ld e, l
    ld [$50ba], sp
    ret nc

    ld c, h
    db $ed
    ld [bc], a
    ld a, e
    nop
    db $fc
    nop
    ei
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    ld [hl], b
    adc [hl]
    ldh a, [$0d]
    add b
    ld a, a
    ld a, [hl-]
    ld b, a
    ld b, h
    db $fd
    ld d, b

jr_02a_63ce:
    jp nc, $be08

    jr z, jr_02a_642b

    ld b, b
    ld hl, $b21c
    ld [bc], a
    call c, Call_02a_4904
    add hl, hl
    inc h
    ld h, $27
    add hl, de
    ld e, c
    db $10
    ld d, d
    ld de, $0b95
    xor e
    inc b
    push bc
    add l
    ld a, d
    ld c, d
    and l
    add h
    ld c, e
    nop
    ld b, $80
    and c
    adc b
    adc h
    ld [hl], c
    ld [hl], a
    ld de, $739d
    adc h
    ld c, e
    or h
    dec e
    ld [c], a
    ld [$00f7], sp
    ld e, a
    ld [bc], a
    dec sp
    ld [hl], b
    sub h
    db $10
    ld e, [hl]
    add [hl]
    ld a, c
    or b
    ld c, a
    ld [hl], d
    adc l
    inc sp
    call z, $fe09
    ld [bc], a
    adc $09
    sub l
    sub b
    xor d
    ld [hl], e
    adc h
    ld h, c
    sbc [hl]
    nop
    ld a, e
    ld [bc], a
    sub d
    ld hl, $93ad
    sub e
    ld c, $4e
    nop
    ld sp, $9320

jr_02a_642b:
    inc d
    and [hl]
    ld h, h
    ld h, h
    sbc b
    sbc d
    ld [$886f], sp
    xor [hl]
    ret nc

    sub $20
    and h
    ldh [$1f], a
    rst $08
    jr nc, jr_02a_63ce

    ld l, a
    nop
    pop bc
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $f807
    db $e3
    db $ec
    pop af
    db $76
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
    adc a
    ld l, [hl]
    rst $00
    scf
    ldh [$1f], a
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
    rlca
    ld hl, sp+$00
    ret nz

    inc h
    cpl
    ld c, h
    ld h, h
    jr z, jr_02a_64c4

    ld l, h
    add h
    adc a
    ld h, a
    ld c, a
    and a
    ld [$00c3], sp
    nop
    ld a, [bc]
    sbc $1d
    dec bc
    ld e, $e8
    ld a, $29
    db $db
    call z, $ccdb
    add hl, de
    ld [$24ac], a
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
    cp [hl]
    ld b, c
    dec a
    inc l
    rst $08
    sbc $cf
    sbc $0f
    cp $2d
    inc a
    ret


    jp c, $f4f3

    ccf
    ret nz

    ld d, $80
    ld c, a
    ld c, l
    ld d, $df
    ld a, a
    dec c
    nop
    ld [bc], a
    ld a, [bc]

jr_02a_64c4:
    ld e, $0a
    nop
    inc bc
    inc b
    dec b
    ccf
    rla
    ld a, [bc]
    ld bc, $0a04
    db $f4
    ld sp, hl
    inc b
    ccf
    rlca
    ld e, $1e
    ld e, $14
    dec d
    rla
    ld e, $1e
    jr nc, jr_02a_64ff

    ld hl, $2020
    ld hl, $1514
    ld a, [bc]
    db $f4
    ld hl, sp+$04
    dec b
    rla
    ld e, $60
    ld h, c
    ld h, e
    ld h, d
    ld h, e
    ld h, e
    ld e, $31
    ld [$0a09], sp
    ld c, h
    nop
    ld h, d
    ld d, b
    ld a, [bc]
    db $f4
    ld hl, sp+$17

jr_02a_64ff:
    rla
    ld e, $1e
    ld h, h
    ld h, l
    ld d, h
    ld d, l
    ld h, [hl]
    ld h, a
    ld e, $28
    jr jr_02a_6525

    ld a, [bc]
    ld l, h
    nop
    ld d, h
    ld d, l
    ld a, [bc]
    db $f4
    ld a, [$6160]
    ld d, b
    ld d, e
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld h, d
    ld d, c
    ld [$5709], sp
    ld d, a
    ld [$5209], sp

jr_02a_6525:
    ld d, e
    ld a, [bc]
    db $f4
    ld a, [$640a]
    nop
    ld a, [bc]
    and h
    ld [bc], a
    jr jr_02a_654a

    ld d, a
    ld d, a
    ld a, [bc]
    ld [hl], b
    inc c
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld c, a
    ld a, [bc]
    add [hl]
    nop
    ld a, [bc]
    call nz, $0a08
    db $f4
    ld hl, sp+$56
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld a, [bc]
    and h
    inc b

jr_02a_654a:
    ld a, [bc]
    and h
    inc b
    ld a, [bc]
    db $f4
    ld hl, sp+$02
    inc bc
    inc bc
    ld [hl+], a
    ld e, e
    ld a, [bc]
    push bc
    rrca
    ld [$0100], sp
    nop
    ld [hl-], a
    ld l, d
    ld l, e
    ld a, [bc]
    and $0f
    rlca
    db $10
    ld de, $2210
    ld a, [hl+]
    add hl, hl
    ld e, h
    ld e, l
    ld a, [bc]
    ret z

    rrca
    dec b
    ld [de], a
    inc de
    ld [de], a
    ld [hl-], a
    ld a, [hl-]
    inc [hl]
    ld l, h
    ld l, l
    ld e, e
    ld a, [bc]
    jp hl


    rrca
    inc b
    ld e, $1e
    rra
    add hl, hl
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld e, d
    ld e, e
    ld a, [bc]
    jp z, Jump_000_030f

    ld e, $1e
    ld e, $39
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld l, d
    ld l, e
    ld a, [bc]
    ld l, b
    ld d, $0a
    db $f4
    ld hl, sp+$05
    ld b, $06
    rlca
    jr z, @+$0c

    add e
    ld de, $5958
    ld a, [bc]
    call z, $010f
    dec d
    ld d, $17
    ld a, [bc]
    and c
    inc de
    ld e, d
    ld e, e
    ld a, [bc]
    db $ec
    rrca
    ld bc, $0200
    ld bc, $0605
    rlca
    ld e, $01
    inc bc
    inc b
    inc b
    ccf
    inc d
    dec d
    rla
    inc d
    ccf
    ccf
    ld bc, $f8f4
    dec d
    rla
    ld bc, $0503
    inc d
    dec d
    ccf
    ld bc, $0002
    inc d
    dec d
    ld bc, $f8f4
    ld h, d
    ld h, e
    ld e, $1e
    ld h, b
    ld h, c
    ld h, e
    ld h, d
    ld h, e
    ld h, b
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    rla
    ld bc, HeaderCGBFlag
    ld bc, $f8f4
    ld h, [hl]
    ld h, a
    ld e, $1e
    ld h, h
    ld h, l
    ld d, h
    ld d, l
    ld bc, $0066
    ld bc, $0460
    ld bc, $f8f4
    ld d, d
    ld h, d
    ld h, e
    ld h, b
    ld h, c
    ld d, e
    ld d, d
    ld bc, $0285
    ld l, c
    ld h, d
    ld h, e
    ld e, c
    ld d, e
    ld d, d
    ld d, e
    ld bc, $f8f4
    ld bc, $0266
    ld bc, $0aa0
    ld bc, $0974
    ld bc, $0485
    ld bc, $07c1
    ld bc, $0f94
    ld c, l
    ld bc, $0ff4
    ld c, l
    ld bc, $1f54
    ld c, l
    ld bc, $f8a0
    nop
    ld [bc], a
    ld bc, $0605
    ccf
    rlca
    ld e, $01
    inc b
    inc bc
    inc d
    dec d
    ld d, $17
    ld bc, $0004
    ld bc, $f8f4
    dec d
    ld d, $17
    dec d
    ld bc, $010f
    ld bc, $0304
    inc b
    dec b
    ccf
    dec b
    ld bc, $f8f4
    ld d, b
    ld h, d
    ld h, e
    ld h, e
    ld bc, $0725
    inc d
    dec d
    dec d
    ld d, $15
    ld bc, $f8f4
    ld d, h
    ld d, l
    ld h, [hl]
    ld h, a
    jr c, jr_02a_666d

    dec h

jr_02a_666d:
    rlca
    ld bc, $0c10
    ld d, d
    ld d, e
    ld d, d
    ld h, e
    ld a, $01
    ld l, $00
    ld b, $01
    inc bc
    dec b
    ld bc, $0913
    ld d, h
    ld d, l
    ld d, h
    ld h, a
    cpl
    ld bc, $000b
    dec d
    dec d
    ld bc, $0503
    ld bc, $0a74
    ld bc, $0f62
    dec bc
    ld d, h
    ld d, l
    ld d, h
    ld h, e
    ld l, $01
    ld h, h
    ld b, $04
    dec b
    rlca
    rlca
    ld bc, $0d73
    ld h, c
    ld bc, $0543
    ld bc, $02a6
    ld bc, $0b94
    ld d, l
    ld h, [hl]
    ld h, a
    inc b
    ld bc, $068a
    ld bc, $0e71
    ld d, e
    ld h, e
    ld h, e
    jr c, @+$41

    ld b, $07
    inc b
    ld b, $01
    adc c
    inc b
    ld bc, $1e14
    ld h, e
    ld e, $14
    dec d
    inc d
    ld bc, $0523
    ld bc, $1c34
    ld d, d
    ld h, c
    ld bc, $0942
    ld bc, $1d53
    ld bc, $0060
    jr nz, jr_02a_66ff

    jr nz, jr_02a_6701

    jr nc, @+$22

    ld hl, $6f01
    rra
    inc bc
    ld bc, $14c1
    ld h, [hl]
    ld bc, $00e4
    inc b
    ld bc, $0933
    ld bc, $12a0
    ld bc, $14a0
    inc a
    ld bc, $00a4
    ld bc, $0953

jr_02a_66ff:
    nop
    ld [bc], a

jr_02a_6701:
    ld bc, $0605
    ccf
    rlca
    ld e, $01
    inc b
    inc bc
    inc d
    dec d
    ld d, $17
    ld bc, $0004
    ld bc, $f8f4
    dec d
    ld d, $17
    dec d
    ld bc, $010f
    ld bc, $0304
    inc b
    dec b
    ccf
    dec b
    ld bc, $f8f4
    ld d, b
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    ld h, b
    ld h, c
    ld d, b
    ld h, e
    ld h, e
    ld bc, $0307
    dec d
    ld d, $15
    ld bc, $f8f4
    ld d, h
    ld d, l
    ld bc, $0260
    ld h, [hl]
    ld h, a
    ld e, $1e
    jr nc, jr_02a_6763

    ld hl, $2120
    daa
    ld bc, $0a12
    ld d, d
    ld d, e
    ld bc, $0380
    ld h, e
    ld h, c
    ld h, e
    inc c
    dec c
    inc c
    dec c
    dec l
    ld a, $01
    ld [de], a
    ld a, [bc]
    ld bc, $0460
    ld bc, $0060
    ld c, $0f

jr_02a_6763:
    inc e
    dec e
    ld l, $38
    ld bc, $0f72
    inc b
    ld d, e
    ld d, d
    ld d, e
    ld c, $0f
    ld d, d
    ld d, e
    ld h, d
    ld h, e
    ld bc, $0f92
    add hl, bc
    ld bc, $0266
    ld bc, $0fb4
    rlca
    inc c
    dec c
    ld e, [hl]
    ld e, a
    ld bc, $0f92
    rlca
    inc e
    dec e
    inc e
    dec e
    ld l, [hl]
    ld l, a
    ld bc, $0fb2
    rlca
    ld d, d
    ld d, e
    ld e, [hl]
    ld e, a
    ld l, $2f
    ld bc, $0f92
    rlca
    ld d, h
    ld h, [hl]
    ld l, [hl]
    ld l, a
    dec a
    ld bc, $0fb1
    ld [$6952], sp
    inc l
    dec l
    ld bc, $1f50
    dec bc
    ld [hl], $3d
    ld a, $01
    ld de, $010b
    ld b, b
    add hl, de
    ld h, [hl]
    ld bc, $1050
    inc b
    ld bc, $0933
    ld bc, $08a0
    ld h, [hl]
    ld h, a
    inc a
    cpl
    ld bc, $004e
    ld bc, $f8a0
    nop
    ld [bc], a
    ld bc, $011e
    nop
    ld bc, $2928
    ld a, [hl+]
    inc h
    ld e, b
    ld e, c
    ld d, d
    ld d, e
    ld bc, $020c
    ld bc, $f9f4
    inc b
    dec b
    ccf
    ccf
    rlca
    ld e, $39
    scf
    inc h
    ld h, h
    ld h, l
    ld d, h
    ld d, l
    ld bc, $022c
    ld bc, $f8f4
    inc d
    ld d, $15
    ld d, $17
    ld e, $1e
    ld e, $39
    add hl, hl
    ld bc, $0f0a
    inc b
    ld e, $1e
    jr nc, @+$22

    ld hl, $2120
    ld sp, $6424
    ld bc, $032d
    ld bc, $0a32
    ld e, $1e
    ld sp, $0a32
    dec bc
    ld e, [hl]
    ld h, a
    jr z, @+$34

    ld d, b
    ld d, e
    ld d, d
    ld d, e
    ld e, h
    ld e, l
    ld bc, $008e
    ld bc, $0b74
    dec h
    ld a, [de]
    dec de
    ld h, [hl]
    ld h, a
    jr nz, jr_02a_6851

    ld h, l
    ld d, l
    ld d, h
    ld h, [hl]
    ld l, h
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, l
    ld bc, $faf4
    ld e, d
    inc h
    ld a, [bc]
    dec bc
    ld d, e
    ld d, c
    ld d, d
    ld d, e
    ld d, d
    ld e, l
    ld h, [hl]
    ld e, a
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $01
    db $f4
    ld a, [$256a]

jr_02a_6851:
    ld a, [de]
    dec de
    ld d, h
    ld e, l
    ld e, h
    ld l, h
    ld l, l
    ld l, h
    ld l, [hl]
    ld l, a
    inc l
    ld l, $3b
    inc a
    dec a
    inc l
    ld bc, $faf4
    jr z, jr_02a_688f

    ld a, [bc]
    dec bc
    ld d, d
    ld l, [hl]
    scf
    ld [hl-], a
    ld bc, $00d0
    dec a
    inc l
    add hl, hl
    dec h
    inc l
    dec l
    ld bc, $0c74
    ld a, [de]
    dec de
    ld l, h
    ld e, a
    ld l, $3e
    inc hl
    ld l, $25
    ld h, $3e
    ld a, [hl+]
    ld a, [hl+]
    ld l, $37
    dec a
    ld bc, $0cf4
    dec sp
    inc a
    ld a, [hl+]
    dec hl

jr_02a_688f:
    ld a, $1e
    add hl, sp
    ld h, $29
    ld a, $1e
    jr z, jr_02a_68c1

    dec h
    dec a
    ld a, $01
    db $f4
    ei
    add hl, sp
    ld a, [hl-]
    dec a
    ld a, [hl-]
    dec sp
    cpl
    ld e, $1e
    add hl, sp
    ld a, $01
    ld b, l
    nop
    ld a, $1e
    ld e, $01
    db $f4
    db $fc
    add hl, sp
    add hl, hl
    dec l
    ld a, $1e
    inc b
    dec b
    dec b
    ld b, $07
    ld bc, $0200
    ld bc, $fdf4

jr_02a_68c1:
    add hl, sp
    ld a, $1e
    inc d
    dec d
    ld d, $15
    ld bc, $0044
    ld bc, $1c90
    dec b
    ld bc, $138d
    ld bc, $14c2
    inc b
    dec b
    ld b, $05
    ld bc, $f8f4
    ld d, $17
    ccf
    ld bc, $18c2
    inc d
    dec d
    dec d
    ld d, $15
    ld bc, $f8a0
    nop
    ld [bc], a
    ld bc, $011e
    nop
    ld bc, $2928
    ld a, [hl+]
    inc h
    ld e, b
    ld e, c
    ld d, d
    ld d, e
    ld bc, $020c
    ld bc, $f9f4
    inc b
    dec b
    ccf
    ccf
    rlca
    ld e, $39
    scf
    inc h
    ld h, h

Jump_02a_6909:
    ld h, l
    ld d, h
    ld d, l
    ld bc, $022c
    ld bc, $f8f4
    inc d
    ld d, $15
    ld d, $17
    ld e, $1e
    ld e, $39
    add hl, hl
    ld bc, $0f0a
    inc b
    ld e, $1e
    jr nc, @+$22

    ld hl, $2120
    ld sp, $6424
    ld bc, $032d
    ld bc, $0a32
    ld e, $1e
    ld sp, $0a32
    dec bc
    ld e, [hl]
    ld h, a
    jr z, @+$34

    ld d, b
    ld d, e
    ld d, d
    ld d, e
    ld e, h
    ld e, l
    ld bc, $008e
    ld bc, $0b74
    dec h
    ld a, [de]
    dec de
    ld h, [hl]
    ld h, a
    jr c, jr_02a_6976

    ld h, l
    ld d, l
    ld d, h
    ld h, [hl]
    ld l, h
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, l
    ld bc, $faf4
    ld e, d
    inc h
    ld a, [bc]
    dec bc
    ld d, e
    ld h, e
    cpl
    add hl, sp
    ld l, e
    ld l, h
    ld h, [hl]
    ld e, a
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $01
    db $f4
    ld a, [$256a]
    ld a, [de]
    dec de
    ld d, h
    ld h, a
    cpl

jr_02a_6976:
    ld [hl+], a
    ld l, d
    ld l, h
    ld l, [hl]
    ld l, a
    inc l
    ld l, $3b
    inc a
    dec a
    inc l
    ld bc, $faf4
    jr z, jr_02a_69af

    ld a, [bc]
    dec bc
    ld d, d
    ld h, e
    jr c, @+$3b

    ld bc, $00d0
    dec a
    inc l
    add hl, hl
    dec h
    inc l
    dec l
    ld bc, $0c74
    ld a, [de]
    dec de
    ld l, h
    ld e, a
    jr c, jr_02a_69c6

    inc hl
    ld l, $25
    ld h, $3e
    ld a, [hl+]
    ld a, [hl+]
    ld l, $37
    dec a
    ld bc, $0cf4
    dec sp
    inc a
    ld a, [hl+]
    dec hl

jr_02a_69af:
    ld a, $1e
    add hl, sp
    ld h, $29
    ld a, $1e
    jr z, jr_02a_69e1

    dec h
    dec a
    ld a, $01
    db $f4
    ei
    add hl, sp
    ld a, [hl-]
    dec a
    ld a, [hl-]
    dec sp
    cpl
    ld e, $1e

jr_02a_69c6:
    add hl, sp
    ld a, $01
    ld b, l
    nop
    ld a, $1e
    ld e, $01
    db $f4
    db $fc
    jr z, jr_02a_69fc

    dec l
    ld a, $1e
    inc b
    dec b
    dec b
    ld b, $07
    ld bc, $0200
    ld bc, $fdf4

jr_02a_69e1:
    add hl, sp
    ld a, $1e
    inc d
    dec d
    ld d, $15
    ld bc, $0044
    ld bc, $1c90
    dec b
    ld bc, $138d
    ld bc, $14c2
    inc b
    dec b
    ld b, $05
    ld bc, $f8f4

jr_02a_69fc:
    ld d, $17
    ccf
    ld bc, $18c2
    inc d
    dec d
    dec d
    ld d, $15
    ld bc, $f8a0
    nop
    ld [bc], a
    ld bc, $5352
    ld bc, $0e00
    ld bc, $f8f4
    ld d, h
    ld d, l
    ld bc, $0e20
    ld bc, $fff4
    dec bc
    ld e, h
    ld e, l
    ld bc, $0f14
    dec bc
    ld l, h
    ld l, l
    ld bc, $f8f4
    ld e, h
    ld e, h
    ld bc, $0b00
    ld l, c
    dec l
    ld l, $01
    db $f4
    ld hl, sp+$6d
    ld l, h
    ld h, l
    ld bc, $0a21
    ld h, [hl]
    ld l, $2d
    ld bc, $f8f4
    ld a, [hl+]
    scf
    ld e, e
    ld bc, $0b83
    ld a, $3d
    ld bc, $09b4
    dec hl
    ld l, e
    ld l, l
    ld bc, $09a2
    ld h, [hl]
    scf
    ld a, $01
    db $f4
    ld hl, sp+$29
    ld h, $24
    add hl, hl
    ld e, e
    ld bc, $0781
    ld e, [hl]
    ld h, [hl]
    ld l, $2f
    ld bc, $f8f4
    add hl, sp
    inc a
    add hl, hl
    ld [hl-], a
    ld l, e
    ld l, l
    ld l, l
    ld l, [hl]
    ld l, l
    ld l, h
    ld l, [hl]
    ld l, e
    ld l, l
    ld l, h
    ld l, e
    ld l, h
    ld l, h
    ld l, [hl]
    ld l, $01
    di
    add hl, bc
    ld e, $1e
    jr z, jr_02a_6aa9

    dec l
    ld a, [hl+]
    ld a, [hl+]
    add hl, hl
    add hl, hl
    scf
    ld [hl-], a
    ld [hl-], a
    add hl, hl
    ld [hl-], a
    ld l, $2a
    ld a, [hl+]
    dec hl
    ld a, $1e
    ld bc, $1a34
    ld e, $39
    add hl, hl
    ld a, [hl+]
    ld a, [hl-]
    ld a, [hl+]
    ld a, [hl-]
    inc hl
    ld l, $25
    ld a, [hl+]
    ld h, $2c
    ld l, $3a
    dec sp
    ld e, $01
    ld d, e
    add hl, de
    inc b
    dec b

jr_02a_6aa9:
    ld bc, $1140
    ld a, [hl-]
    ld a, $3c
    inc hl
    ld l, $25
    ld h, $2c
    ld l, $2a
    ld a, $01
    ld [hl], d
    ld a, [de]
    inc d
    rla
    ccf
    rlca
    ld e, $39
    dec sp
    ld a, $1e
    jr z, @+$2b

    ld h, $29
    inc a
    dec a
    ld a, $1e
    inc b
    ld b, $05
    ld bc, $1a34
    inc d
    dec d
    rla
    ld e, $01
    push bc
    db $10
    add hl, sp
    ld a, [hl-]
    ld a, $39
    ld a, $1e
    inc b
    ccf
    rla
    dec d
    ld bc, $1b54
    ld bc, $18e0
    inc d
    ld bc, $10c4
    ld bc, $f8a0
    nop
    ld [bc], a
    ld bc, $5352
    ld bc, $0e00
    ld bc, $f8f4
    ld d, h
    ld d, l
    ld bc, $0e20
    ld bc, $fff4
    dec bc
    ld e, h
    ld e, l
    ld bc, $0f14
    dec bc
    ld l, h
    ld l, l
    ld bc, $f8f4
    ld e, h
    ld e, h
    ld bc, $0200
    ld d, a
    ld bc, $0188
    ld d, d
    ld d, e
    ld d, d
    ld l, c
    dec l
    ld l, $01
    db $f4
    ld hl, sp+$6d
    ld l, h
    ld h, l
    ld bc, $0121
    ld bc, $0288
    ld d, h
    ld d, l
    ld d, h
    ld h, [hl]
    ld l, $2d
    ld bc, $f8f4
    ld a, [hl+]
    scf
    ld e, e
    ld bc, $0101
    ld a, [bc]
    dec bc
    ld d, a
    ld d, a
    ld a, [bc]
    dec bc
    ld bc, $008e
    ld a, $3d
    ld bc, $09b4
    dec hl
    ld l, e
    ld l, l
    ld bc, $00a2
    ld a, [de]
    dec de
    ld d, a
    ld d, a
    ld a, [de]
    dec de
    ld bc, $00ae
    scf
    ld a, $01
    db $f4
    ld hl, sp+$29
    ld h, $24
    add hl, hl
    ld e, e
    ld bc, $0381
    ld bc, $0000
    ld e, [hl]
    ld h, [hl]
    ld l, $2f
    ld bc, $f8f4
    add hl, sp
    inc a
    add hl, hl
    ld [hl-], a
    ld l, e
    ld l, l
    ld l, l
    ld l, [hl]
    ld l, l
    ld l, h
    ld l, [hl]
    ld l, e
    ld l, l
    ld l, h
    ld l, e
    ld l, h
    ld l, h
    ld l, [hl]
    ld l, $01
    di
    add hl, bc
    ld e, $1e
    jr z, jr_02a_6baf

    dec l
    ld a, [hl+]
    ld a, [hl+]
    add hl, hl
    add hl, hl
    scf
    ld [hl-], a
    ld [hl-], a
    add hl, hl
    ld [hl-], a
    ld l, $2a
    ld a, [hl+]
    dec hl
    ld a, $1e
    ld bc, $1a34
    ld e, $39
    add hl, hl
    ld a, [hl+]
    ld a, [hl-]
    ld a, [hl+]
    ld a, [hl-]
    inc hl
    ld l, $25
    ld a, [hl+]
    ld h, $2c
    ld l, $3a
    dec sp
    ld e, $01
    ld d, e
    add hl, de
    inc b
    dec b

jr_02a_6baf:
    ld bc, $1140
    ld a, [hl-]
    ld a, $3c
    inc hl
    ld l, $25
    ld h, $2c
    ld l, $2a
    ld a, $01
    ld [hl], d
    ld a, [de]
    inc d
    rla
    ccf
    rlca
    ld e, $39
    dec sp
    ld a, $1e
    jr z, @+$2b

    ld h, $29
    inc a
    dec a
    ld a, $1e
    inc b
    ld b, $05
    ld bc, $1a34
    inc d
    dec d
    rla
    ld e, $01
    push bc
    db $10
    add hl, sp
    ld a, [hl-]
    ld a, $39
    ld a, $1e
    inc b
    ccf
    rla
    dec d
    ld bc, $1b54
    ld bc, $18e0
    inc d
    ld bc, $10c4
    ld bc, $f8a0
    nop
    ld [bc], a
    ld bc, $5352
    ld bc, $0600
    ld h, [hl]
    ld l, c
    ld l, $2f
    ld e, $04
    ccf
    dec b
    ld bc, $f8f4
    ld d, h
    ld d, l
    ld bc, $0620
    ld h, [hl]
    ld h, a
    ld a, $1e
    ld e, $1e
    inc d
    dec d
    ld bc, $f8f4
    ld e, h
    ld e, l
    ld e, h
    ld e, l
    ld d, d
    ld d, e
    ld b, b
    ld b, c
    ld bc, $0000
    ld h, d
    ld h, e
    ld d, b
    ld h, e
    ld h, d
    ld h, e
    ld e, $1e
    ld bc, $f8f4
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, e
    ld h, l
    ld d, l
    ld b, d
    ld b, e
    ld bc, $0320
    ld d, h
    ld h, [hl]
    ld h, a
    ld bc, $0a52
    ld l, $2a
    ld l, $2a
    ld e, c
    ld bc, $0701
    ld e, [hl]
    ld e, a
    ld bc, $0b72
    add hl, hl
    ld a, [hl+]
    ld [hl-], a
    ld h, l
    ld bc, $0221
    ld l, [hl]
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld bc, $0a52
    ld a, $29
    ld a, [hl+]
    ld [hl-], a
    ld e, e
    ld e, h
    ld e, l
    ld e, h
    ld d, d
    ld d, e
    ld h, [hl]
    ld e, a
    add hl, hl
    dec l
    ld l, $35
    ld [hl], $3e
    dec b
    ld b, $01
    db $f4
    ld hl, sp+$1e
    add hl, sp
    ld a, [hl-]
    add hl, hl
    ld l, e
    ld l, h
    ld l, e
    ld l, h
    ld h, l
    ld d, l
    ld h, [hl]
    ld h, e
    ld a, $22
    daa
    ld [hl+], a
    daa
    ld e, $15
    rla
    ld bc, $09d4
    ld e, $28
    add hl, hl
    ld a, [hl+]
    ld h, e
    ld [hl], $37
    ld e, e
    ld d, e
    ld e, [hl]
    ld h, a
    ld sp, $7032
    ld [hl], c
    ld d, c
    ld bc, $0b51
    rlca
    ld e, $31
    ld [hl-], a
    inc sp
    ld l, $35
    ld [hl], $6b
    ld h, l
    ld e, [hl]
    ld l, c
    jr z, jr_02a_6cd5

    ld [hl], d
    ld [hl], e
    ld e, [hl]
    ld l, c
    ld bc, $0a52
    rla
    ld bc, $1001
    dec hl
    dec hl
    inc l
    ld e, d
    ld e, e
    ld e, h
    ld h, a
    ld sp, $6532
    ld e, [hl]
    ld h, [hl]
    ld e, a
    jr c, jr_02a_6cc7

    ld d, e

jr_02a_6cc7:
    add hl, bc
    ld e, $1e
    ld bc, $00e0
    dec sp
    add hl, hl
    ld l, d
    ld l, e
    ld l, h
    ld l, a
    jr z, jr_02a_6cfe

jr_02a_6cd5:
    ld l, d
    ld l, e
    ld l, [hl]
    ld l, a
    ld l, $38
    ld bc, $1b54
    jr z, jr_02a_6d09

    dec hl
    ld a, $28
    ld a, [hl+]
    inc h
    inc l
    ld l, $1e
    add hl, sp
    add hl, hl
    ld a, [hl+]
    ld l, $29
    ld a, $01
    ld d, e
    dec de
    inc b
    ccf
    add hl, sp
    ld a, $1e
    ld sp, $342a
    inc a
    ld a, $1e
    ld e, $28

jr_02a_6cfe:
    ld a, [hl+]
    ld a, [hl+]
    ld l, $01
    ld d, d
    ld a, [de]
    dec b
    ld b, $3f
    ld d, $17

jr_02a_6d09:
    ld bc, $1040
    dec [hl]
    dec a
    cpl
    ld bc, $1080
    dec l
    dec a
    cpl
    inc b
    ld bc, $f8f4
    dec d
    ld d, $17
    ld e, $01
    db $e3
    db $10
    add hl, sp
    add hl, hl
    ld a, $1e
    inc b
    dec b
    rlca
    ld e, $39
    ld a, $1e
    inc d
    ld bc, $f8a0
    nop
    ld [bc], a
    ld bc, $5352
    ld bc, $0600
    ld h, [hl]
    ld l, c
    ld l, $2f
    ld e, $04
    ccf
    dec b
    ld bc, $f8f4
    ld d, h
    ld d, l
    ld bc, $0620
    ld h, [hl]
    ld h, a
    ld a, $1e
    ld e, $1e
    inc d
    dec d
    ld bc, $f8f4
    ld e, h
    ld e, l
    ld e, h
    ld e, l
    ld d, d
    ld d, e
    ld [hl], b
    ld [hl], c
    ld bc, $0000
    ld h, d
    ld h, e
    ld d, b
    ld h, e
    ld h, d
    ld h, e
    ld e, $1e
    ld bc, $f8f4
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, e
    ld h, l
    ld d, l
    ld [hl], d
    ld [hl], e
    ld bc, $0320
    ld d, h
    ld h, [hl]
    ld h, a
    ld bc, $0a52
    ld l, $2a
    ld l, $2a
    ld e, c
    ld bc, $0701
    ld e, [hl]
    ld e, a
    ld bc, $0b72
    add hl, hl
    ld a, [hl+]
    ld [hl-], a
    ld h, l
    ld bc, $0221
    ld l, [hl]
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld bc, $0a52
    ld a, $29
    ld a, [hl+]
    ld [hl-], a
    ld e, e
    ld e, h
    ld e, l
    ld e, h
    ld d, d
    ld d, e
    ld h, [hl]
    ld e, a
    add hl, hl
    dec l
    ld l, $35
    ld [hl], $3e
    dec b
    ld b, $01
    db $f4
    ld hl, sp+$1e
    add hl, sp
    ld a, [hl-]
    add hl, hl
    ld l, e
    ld l, h
    ld l, e
    ld l, h
    ld h, l
    ld d, l
    ld h, [hl]
    ld h, e
    ld a, $22
    daa
    ld [hl+], a
    daa
    ld e, $15
    rla
    ld bc, $09d4
    ld e, $28
    add hl, hl
    ld a, [hl+]
    ld h, e
    ld [hl], $37
    ld e, e
    ld d, e
    ld e, [hl]
    ld h, a
    ld sp, $7032
    ld [hl], c
    ld d, c
    ld bc, $0b51
    rlca
    ld e, $31
    ld [hl-], a
    inc sp
    ld l, $35
    ld [hl], $6b
    ld h, l
    ld e, [hl]
    ld l, c
    jr z, jr_02a_6e0f

    ld [hl], d
    ld [hl], e
    ld e, [hl]
    ld l, c
    ld bc, $0a52
    rla
    ld bc, $1001
    dec hl
    dec hl
    inc l
    ld e, d
    ld e, e
    ld e, h
    ld h, a
    ld sp, $6532
    ld e, [hl]
    ld h, [hl]
    ld e, a
    jr c, jr_02a_6e01

    ld d, e

jr_02a_6e01:
    add hl, bc
    ld e, $1e
    ld bc, $00e0
    dec sp
    add hl, hl
    ld l, d
    ld l, e
    ld l, h
    ld l, a
    jr z, jr_02a_6e38

jr_02a_6e0f:
    ld l, d
    ld l, e
    ld l, [hl]
    ld l, a
    ld l, $38
    ld bc, $1b54
    jr z, jr_02a_6e43

    dec hl
    ld a, $28
    ld a, [hl+]
    inc h
    inc l
    ld l, $1e
    add hl, sp
    add hl, hl
    ld a, [hl+]
    ld l, $29
    ld a, $01
    ld d, e
    dec de
    inc b
    ccf
    add hl, sp
    ld a, $1e
    ld sp, $342a
    inc a
    ld a, $1e
    ld e, $28

jr_02a_6e38:
    ld a, [hl+]
    ld a, [hl+]
    ld l, $01
    ld d, d
    ld a, [de]
    dec b
    ld b, $3f
    ld d, $17

jr_02a_6e43:
    ld bc, $1040
    dec [hl]
    dec a
    cpl
    ld bc, $1080
    dec l
    dec a
    cpl
    inc b
    ld bc, $f8f4
    dec d
    ld d, $17
    ld e, $01
    db $e3
    db $10
    add hl, sp
    add hl, hl
    ld a, $1e
    inc b
    dec b
    rlca
    ld e, $39
    ld a, $1e
    inc d
    ld bc, $f8a0
    nop
    ld [bc], a
    ld bc, $5352
    ld bc, $0600
    ld h, [hl]
    ld l, c
    ld l, $2f
    ld e, $04
    ccf
    dec b
    ld bc, $f8f4
    ld d, h
    ld d, l
    ld bc, $0620
    ld h, [hl]
    ld h, a
    ld a, $1e
    ld e, $1e
    inc d
    dec d
    ld bc, $f8f4
    ld e, h
    ld e, l
    ld e, h
    ld e, l
    ld d, d
    ld d, e
    ld [hl], b
    ld [hl], c
    ld bc, $0000
    ld h, d
    ld h, e
    ld d, b
    ld h, e
    ld h, d
    ld h, e
    ld e, $1e
    ld bc, $f8f4
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, e
    ld h, l
    ld d, l
    ld [hl], d
    ld [hl], e
    ld bc, $0320
    ld d, h
    ld h, [hl]
    ld h, a
    ld bc, $0a52
    ld l, $2a
    ld l, $2a
    ld e, c
    ld bc, $0701
    ld e, [hl]
    ld bc, $0c71
    add hl, hl
    ld a, [hl+]
    ld [hl-], a
    ld h, l
    ld bc, $0721
    ld e, [hl]
    ld l, c
    ld bc, $0a52
    ld a, $29
    ld a, [hl+]
    ld [hl-], a
    ld e, e
    ld e, h
    ld e, l
    ld e, h
    ld bc, $0504
    ld e, a
    inc b
    ld bc, $0913
    ld e, $39
    ld a, [hl-]
    add hl, hl
    ld l, e
    ld l, h
    ld l, e
    ld l, h
    ld bc, $04a4
    ld h, [hl]
    ld h, e
    ld bc, $0a32
    ld e, $1e
    jr z, @+$2b

    ld a, [hl+]
    ld h, e
    ld [hl], $37
    ld e, e
    ld bc, $0101
    ld b, b
    ld b, c
    ld bc, $0c90
    rlca
    ld e, $31
    ld [hl-], a
    inc sp
    ld l, $35
    ld [hl], $6b
    ld h, l
    ld bc, $0020
    ld b, d
    ld b, e
    ld bc, $0cb0
    rla
    ld bc, $1001
    dec hl
    dec hl
    inc l
    ld e, d
    ld bc, $00c4
    ld e, l
    ld e, h
    ld e, [hl]
    ld h, [hl]
    ld e, a
    jr c, jr_02a_6f21

    ld d, e

jr_02a_6f21:
    add hl, bc
    ld e, $1e
    ld bc, $00e0
    dec sp
    add hl, hl
    ld l, d
    ld l, e
    ld l, h
    ld l, [hl]
    ld l, h
    ld l, l
    ld l, e
    ld l, h
    ld l, [hl]
    ld l, a
    ld l, $38
    ld bc, $1b54
    jr z, jr_02a_6f63

    dec hl
    ld a, $28
    ld a, [hl+]
    inc h
    inc l
    ld l, $2e
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    ld l, $29
    ld a, $01
    ld d, e
    dec de
    inc b
    ccf
    add hl, sp
    ld a, $1e
    ld sp, $342a
    inc a
    cpl
    add hl, sp
    ld a, $28
    ld a, [hl+]
    ld a, [hl+]
    ld l, $01
    ld d, d
    ld a, [de]
    dec b
    ld b, $3f
    ld d, $17

jr_02a_6f63:
    ld bc, $1040
    dec [hl]
    dec a
    ld bc, $002e
    jr z, @+$2f

    dec a
    cpl
    inc b
    ld bc, $f8f4
    dec d
    ld d, $17
    ld e, $01
    db $e3
    db $10
    add hl, sp
    add hl, hl
    ld a, $1e
    inc b
    dec b
    rlca
    ld e, $39
    ld a, $1e
    inc d
    ld bc, $f8a0
    nop
    ld [bc], a
    ld bc, $5352
    ld bc, $0600
    ld h, [hl]
    ld l, c
    ld l, $2f
    ld e, $04
    ccf
    dec b
    ld bc, $f8f4
    ld d, h
    ld d, l
    ld bc, $0620
    ld h, [hl]
    ld h, a
    ld a, $1e
    ld e, $1e
    inc d
    dec d
    ld bc, $f8f4
    ld e, h
    ld e, l
    ld e, h
    ld e, l
    ld d, d
    ld d, e
    ld [hl], b
    ld [hl], c
    ld bc, $0000
    ld h, d
    ld h, e
    ld d, b
    ld h, e
    ld h, d
    ld h, e
    ld e, $1e
    ld bc, $f8f4
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, e
    ld h, l
    ld d, l
    ld [hl], d
    ld [hl], e
    ld bc, $0320
    ld d, h
    ld h, [hl]
    ld h, a
    ld bc, $0a52
    ld l, $2a
    ld l, $2a
    ld e, c
    ld bc, $0701
    ld e, [hl]
    ld bc, $0c71
    add hl, hl
    ld a, [hl+]
    ld [hl-], a
    ld h, l
    ld bc, $0721
    ld e, [hl]
    ld l, c
    ld bc, $0a52
    ld a, $29
    ld a, [hl+]
    ld [hl-], a
    ld e, e
    ld e, h
    ld e, l
    ld e, h
    ld bc, $0504
    ld e, a
    inc b
    ld bc, $0913
    ld e, $39
    ld a, [hl-]
    add hl, hl
    ld l, e
    ld l, h
    ld l, e
    ld l, h
    ld bc, $04a4
    ld h, [hl]
    ld h, e
    ld bc, $0a32
    ld e, $1e
    jr z, @+$2b

    ld a, [hl+]
    ld h, e
    ld [hl], $37
    ld e, e
    ld bc, $0101
    ld [hl], b
    ld [hl], c
    ld bc, $0c90
    rlca
    ld e, $31
    ld [hl-], a
    inc sp
    ld l, $35
    ld [hl], $6b
    ld h, l
    ld bc, $0020
    ld [hl], d
    ld [hl], e
    ld bc, $0cb0
    rla
    ld bc, $1001
    dec hl
    dec hl
    inc l
    ld e, d
    ld bc, $00c4
    ld e, l
    ld e, h
    ld e, [hl]
    ld h, [hl]
    ld e, a
    jr c, jr_02a_7041

    ld d, e

jr_02a_7041:
    add hl, bc
    ld e, $1e
    ld bc, $00e0
    dec sp
    add hl, hl
    ld l, d
    ld l, e
    ld l, h
    ld l, [hl]
    ld l, h
    ld l, l
    ld l, e
    ld l, h
    ld l, [hl]
    ld l, a
    ld l, $38
    ld bc, $1b54
    jr z, jr_02a_7083

    dec hl
    ld a, $28
    ld a, [hl+]
    inc h
    inc l
    ld l, $2e
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    ld l, $29
    ld a, $01
    ld d, e
    dec de
    inc b
    ccf
    add hl, sp
    ld a, $1e
    ld sp, $342a
    inc a
    cpl
    add hl, sp
    ld a, $28
    ld a, [hl+]
    ld a, [hl+]
    ld l, $01
    ld d, d
    ld a, [de]
    dec b
    ld b, $3f
    ld d, $17

jr_02a_7083:
    ld bc, $1040
    dec [hl]
    dec a
    ld bc, $002e
    jr z, jr_02a_70ba

    dec a
    cpl
    inc b
    ld bc, $f8f4
    dec d
    ld d, $17
    ld e, $01
    db $e3
    db $10
    add hl, sp
    add hl, hl
    ld a, $1e
    inc b
    dec b
    rlca
    ld e, $39
    ld a, $1e
    inc d
    ld bc, $f8a0
    nop
    ld [$ff0c], sp
    rst $38
    rst $38
    rst $38
    ld d, a
    ld d, a
    ld bc, $01a1
    ld d, c
    ld bc, $0329
    inc bc

jr_02a_70ba:
    inc c
    nop
    nop
    rst $38
    rst $38
    push de
    push de
    nop
    ld l, d
    nop
    ld e, l
    nop
    ld l, $80
    add b
    inc c
    ld c, $02
    rst $10

Call_02a_70cd:
    rst $10
    add c
    and c
    add c
    pop de
    add c
    xor c
    add e
    add e
    inc c
    ld c, $04
    ld bc, $016b
    ld e, l
    ld bc, $812f
    add c
    inc c
    nop
    nop
    db $fd
    ld bc, $01fd
    add c
    ld a, l
    ld bc, $ff01
    rst $38
    nop
    db $fd
    ld hl, sp+$0c
    ccf
    add hl, bc
    ld bc, $3f7f
    inc c
    ccf
    nop
    add c
    db $fd
    add c
    inc c
    ld h, e
    nop
    rst $38
    rst $38
    add b
    inc c
    ld c, l
    dec bc
    inc c
    ld c, $02
    inc c
    ld h, d
    ld b, $0c
    ld a, d
    inc b
    ld d, a
    ld d, a
    nop
    xor b
    ld bc, $0653
    ld c, $0b
    ld [$f3f7], sp
    inc c
    db $10
    ld [bc], a
    rst $38
    rst $38
    cp a
    add b
    cp $3f
    cp $ff
    ld [c], a
    db $e3
    inc c
    nop
    ld [bc], a
    rst $38
    rst $38
    rst $38
    inc bc
    ld a, [hl]
    ld a, h
    ld a, a
    ld a, a
    ld b, a
    ld b, a
    inc c
    db $10
    ld [bc], a
    ret nz

    ld [$3200], a
    ret nz

    db $dd
    ldh a, [$30]
    add sp, -$38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$41
    and [hl]
    ld a, a
    ld e, [hl]
    ld a, e
    ld e, d
    ei
    cp d
    db $eb
    xor d
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rra
    ld a, l
    ld h, l
    ld a, a
    ld a, e
    ld e, a
    ld e, e
    ld e, a
    ld e, l
    ld d, a
    ld d, l
    rst $38
    db $fd
    inc c
    ld b, b
    nop
    pop af
    add hl, bc
    add e
    ld h, e
    rlca
    rlca
    inc c
    ld c, d
    inc b
    add b
    add b
    nop
    rra
    inc c
    ld d, $08
    dec hl
    dec hl
    ld bc, $0cf9
    ld b, $08
    add b
    add b
    add b
    sbc a
    add b
    ld [$dd80], a
    add b
    xor [hl]
    inc c
    inc c
    rra
    inc bc
    inc c
    ld h, d
    ld b, $bd

Call_02a_718e:
    cp l
    add c
    add c
    ret nz

    cp a
    ret nz

    add b
    rst $38
    cp a
    rst $38
    cp a
    ld [c], a
    and d
    rst $38
    cp a
    rst $38
    add b
    rst $38
    rst $38
    ld [$09ea], sp
    add hl, bc
    rst $38
    rst $38
    cp $ff
    ld [hl+], a
    inc hl
    cp $ff
    rst $38
    nop
    rst $38
    rst $38
    db $10
    ld d, a
    sub b
    sub b
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld b, h
    ld b, h
    ld a, a
    ld a, a
    inc c
    ld l, h
    db $10
    inc bc
    db $fd
    inc bc
    ld bc, $fdff
    rst $38
    db $fd
    daa
    dec h
    rst $38
    db $fd
    rst $38
    ld bc, $ffff
    cpl
    daa
    ld e, [hl]
    ld c, [hl]
    ld a, [$bada]
    sbc d
    ld a, [c]
    or d
    inc c
    sbc b
    db $10
    rst $38
    cp a
    ld [hl+], a
    inc hl
    inc c
    and b
    jr @+$01

    rst $38
    ld b, h
    inc c
    or b
    add hl, de
    rst $38
    rst $38
    rst $30
    rst $20
    ld a, e
    ld [hl], e
    ld e, l
    ld e, c
    ld e, l
    ld e, c
    ld c, a
    ld c, l
    inc c
    ret z

    db $10
    rst $38
    db $fd
    db $fd
    add h
    call nz, $ff84
    cp a
    rst $38
    cp [hl]
    jp $ff82


    cp [hl]
    ret nz

    cp a
    rst $38
    rst $38
    cp a
    ld hl, $2123
    rst $38
    db $fd
    ld a, a
    ld a, l
    ld b, e
    ld b, c
    ld a, a
    ld a, l
    inc bc
    db $fd
    inc c
    nop
    nop
    ld sp, hl
    dec b
    pop de
    add hl, hl
    add e
    ld a, e
    inc c
    ld hl, sp+$00
    inc c
    ld c, $02
    inc c
    ld [de], a
    ld e, $0c
    inc b
    ld a, [de]
    xor e
    xor e
    add c
    ld sp, hl
    inc c
    ld h, $02
    ld b, e
    ld b, e
    ccf
    cp a
    rst $38
    rst $38
    add c
    add c
    ld bc, $0c1f
    ld [hl], $02
    add d
    add d
    db $fc
    db $fd
    rst $38
    rst $38
    ccf
    ccf
    rlca
    add a
    dec bc
    xor e
    inc bc
    ld d, e
    inc c
    ld a, [bc]
    inc b
    ret nz

    ret nz

    add b
    sub a
    nop
    ld a, [bc]
    inc c
    jr jr_02a_7264

    inc c
    ld e, [hl]
    inc l
    inc c
    sub h
    nop
    nop
    ld d, e

jr_02a_7264:
    nop
    ld [$0700], sp
    ldh a, [$fc]
    inc c
    and b
    inc b
    nop
    ld a, a
    nop
    ret nz

    rra
    rra
    ld a, a
    ld a, a
    inc c
    or b
    inc b
    nop
    db $fc
    nop
    rlca
    ldh a, [$f0]
    db $fc
    inc c
    ld a, a
    inc hl
    ret nz

    ld [$c200], a
    nop
    dec e
    nop
    ret nz

    rra
    ld a, a
    inc c
    or b
    rst $38
    dec a
    sub l
    ld l, d
    ld a, a
    add b
    db $76
    adc c
    ld a, [hl]
    add c
    ei
    inc b
    cp $01
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    ld a, [hl]
    add c
    ld a, a
    add b
    ld a, a
    add b
    rst $30
    ld [$807f], sp
    inc c
    ld e, $30
    ccf
    ret nz

    adc b
    ld [hl], a
    ld de, $fcee
    inc bc
    ld_long a, $ff05
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    ld de, $f8ee
    rst $38
    and b
    cp b
    rrca
    cpl
    rra
    ld e, a
    ccf
    cp a
    ccf
    cp a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rra
    rst $38
    inc bc
    dec de
    pop af
    push af
    ld sp, hl
    ei
    db $fc
    db $fd
    db $fc
    db $fd
    cp $fe
    cp $fe
    inc c
    ld c, h
    jr nc, jr_02a_7372

    ld a, a
    ld l, d
    ld l, d
    ld [hl], l
    ld [hl], l
    ld l, d
    ld l, d
    ld h, b
    ld h, b
    ld e, a
    ld b, b
    inc c
    ld e, h

jr_02a_7300:
    jr nc, jr_02a_7300

    cp $ae
    xor [hl]
    ld d, [hl]
    ld d, [hl]
    xor [hl]
    xor [hl]
    ld b, $06
    ld a, [$0102]
    add hl, de
    rlca
    daa
    rrca
    ld c, a
    rra
    rst $18
    ccf
    cp a
    ccf
    ccf
    inc c
    ld c, h
    jr nc, jr_02a_7329

    ld e, [hl]
    inc l
    add b
    sbc b
    ldh [$e4], a
    ldh a, [$f2]
    ld hl, sp+$0c
    ld d, a
    dec [hl]

jr_02a_7329:
    inc c
    ld c, $02
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    nop
    nop
    rst $38
    nop
    call z, $cc4e
    ld c, [hl]
    rst $08
    ld c, a
    call z, $fc4c
    ld a, h
    ret nz

    ld b, b
    rst $38
    ld a, a
    rst $38
    nop
    ld a, a
    ld a, [hl]
    ld b, e
    ld b, d
    jp Jump_000_03c2


    ld [bc], a
    inc c
    sub $30
    rst $38
    cp $ff
    nop
    sbc a
    ld h, b
    rst $30
    ld [$02fd], sp
    cp a
    ld b, b
    rst $38
    rlca
    db $fc
    ld b, $fc
    ld a, [hl]
    call z, $ff4e
    nop
    rst $38
    ld a, [hl]
    jp $f30c


jr_02a_736c:
    jr nc, jr_02a_736c

    ld b, e
    ld a, [hl]
    ld b, e
    ld a, [hl]

jr_02a_7372:
    ld b, d
    ld a, a
    call nc, $0c76
    nop
    ld b, d
    sbc $7e
    ret nz

    ld a, a
    inc c
    call z, $8330
    or $0c
    db $10
    ld b, d
    inc bc
    ld b, $03
    cp $0c
    call c, $ff30
    nop
    rst $38
    ld a, a
    ret nz

    ld a, a
    rst $18

Call_02a_7393:
    ld a, a
    rst $18
    ld a, a
    call c, $d47c
    ld [hl], h
    call nc, $ff76
    nop
    rst $38
    cp $03
    cp $fb
    cp $83
    add [hl]
    inc c
    db $10
    ld b, d
    inc c
    and b
    rst $38
    ld c, l
    inc c
    sbc a
    ld c, a
    ld c, l
    inc c
    rst $38
    ld c, a
    ld c, l
    inc c
    ld e, a
    ld e, a
    ld c, l
    inc c
    cp a
    ld e, a
    ld c, l
    inc c
    rra
    ld l, a
    ld c, l
    inc c
    ld a, a
    ld l, a
    ld c, l
    inc c
    rst $18
    ld l, a
    ld c, l
    inc c
    ccf
    ld a, a
    ld c, l
    inc c
    sbc a
    ld a, a
    ld c, l
    nop
    ld [bc], a
    daa
    ld h, $27
    nop
    ld [bc], a
    inc d
    inc b
    dec b
    rrca
    dec b
    inc d
    daa
    nop
    inc bc
    rst $38
    daa
    inc d
    rlca
    daa
    nop
    inc b
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    daa
    inc c
    rrca
    ld [bc], a
    daa
    rlca
    ld bc, $0504
    add hl, de
    ld a, [de]
    dec de
    inc e
    ld b, $27
    ld b, e
    ld bc, $2714
    inc sp
    dec bc
    nop
    ld bc, $0100
    nop
    inc bc
    dec d
    ld d, $17
    jr jr_02a_740e

    daa
    ld h, e

jr_02a_740e:
    nop
    ld bc, $5227
    inc c
    db $10
    ld de, $0e0d
    db $10
    inc de
    jr nc, @+$34

    ld sp, $1232
    daa
    add e
    nop
    ld de, $0506
    daa
    inc [hl]
    ld a, [bc]
    inc h
    dec h
    dec e
    ld e, $20
    inc hl
    ld [hl-], a
    ld sp, $3130
    ld [hl+], a
    ld hl, $1e1d
    inc h
    dec h
    ld [bc], a
    ld bc, $3427
    ld a, [bc]
    daa
    adc b
    nop
    daa
    db $c2, $08, $12

    ld de, $3427
    ld a, [bc]
    daa
    xor b
    nop
    daa
    ld [c], a
    ld [$2522], sp
    daa
    call nc, Call_000_310c
    inc sp
    daa
    ld [bc], a
    jr jr_02a_7488

    ld [hl-], a
    daa
    inc [hl]
    ld a, [bc]
    ld sp, $3033
    daa
    rrca
    db $10
    daa
    dec h
    dec d
    ld [hl-], a
    ld sp, $b427
    rrca
    rlca
    ld b, d
    ld b, e
    daa
    adc b
    nop
    daa
    call nc, $070f
    ld b, b
    ld b, c
    daa
    xor b
    nop
    daa
    inc d
    add hl, bc
    rlca
    rlca
    rlca
    rlca
    daa
    ld bc, $1415
    rlca
    rra
    rlca
    rlca

jr_02a_7488:
    rra
    daa
    inc d
    dec c
    daa
    ld hl, $2715
    inc c
    ld [bc], a
    daa
    inc d
    dec c
    ld [$8f27], sp
    db $10
    daa
    add $11
    daa
    rrca
    rrca
    dec b
    daa
    ldh [rNR24], a
    daa
    inc d
    ld [$0200], sp
    daa
    ld h, $27
    nop
    ld [bc], a
    inc d
    inc b
    dec b
    rrca
    dec b
    inc d
    daa
    nop
    inc bc
    rst $38
    daa
    inc d
    rlca
    daa
    nop
    inc b
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    daa
    inc c
    rrca
    ld [bc], a
    daa
    rlca
    ld bc, $0504
    add hl, de
    ld a, [de]
    dec de
    inc e
    ld b, $27
    ld b, e
    ld bc, $2714
    inc sp
    dec bc
    nop
    ld bc, $0100
    nop
    inc bc
    dec d
    ld d, $17
    jr jr_02a_74e3

    daa
    ld h, e

jr_02a_74e3:
    nop
    ld bc, $5227
    inc c
    db $10
    ld de, $0e0d
    db $10
    inc de
    jr nc, jr_02a_7522

    ld sp, $1232
    ld de, $3534
    db $10
    ld de, $0506
    daa
    inc [hl]
    ld a, [bc]
    inc h
    dec h
    dec e
    ld e, $20
    inc hl
    ld [hl-], a
    ld sp, $3130
    ld [hl+], a
    ld hl, $3736
    inc h
    dec h
    ld [bc], a
    ld bc, $3427
    ld a, [bc]
    daa
    adc b
    nop
    daa
    db $c2, $08, $12
    
    ld de, $3427
    ld a, [bc]
    daa
    xor b
    nop
    daa
    ld [c], a

jr_02a_7522:
    ld [$2522], sp
    daa
    call nc, Call_000_310c
    inc sp
    daa
    ld [bc], a
    jr jr_02a_755e

    ld [hl-], a
    daa
    inc [hl]
    ld a, [bc]
    ld sp, $3033
    daa
    rrca
    db $10
    daa
    dec h
    dec d
    ld [hl-], a
    ld sp, $b427
    rrca
    rlca
    ld b, d
    ld b, e
    daa
    adc b
    nop
    daa
    call nc, $070f
    ld b, b
    ld b, c
    daa
    xor b
    nop
    daa
    inc d
    add hl, bc
    rlca
    rlca
    rlca
    rlca
    daa
    ld bc, $1415
    rlca
    rra
    rlca
    rlca

jr_02a_755e:
    rra
    daa
    inc d
    dec c
    daa
    ld hl, $2715
    inc c
    ld [bc], a
    daa
    inc d
    dec c
    ld [$8f27], sp
    db $10
    daa
    add $11
    daa
    rrca
    rrca
    dec b

Jump_02a_7576:
    daa
    ldh [rNR24], a
    daa
    inc d
    ld [$0200], sp
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
    jr z, jr_02a_75bf

    ld a, [hl+]
    add hl, bc
    inc c
    rrca
    ld [bc], a
    add hl, bc
    rlca
    ld bc, $0504
    jr c, @+$3b

    add hl, sp
    ld a, [hl-]
    ld b, $09
    ld b, e
    ld bc, $0914
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
    inc c
    db $10

jr_02a_75bf:
    ld de, $0e0d
    db $10
    inc de
    jr nc, jr_02a_75f8

    ld sp, $1232
    ld de, $3534
    db $10
    ld de, $0506
    add hl, bc
    inc [hl]
    ld a, [bc]
    inc h
    dec h
    dec e
    ld e, $20
    inc hl
    ld [hl-], a
    ld sp, $3130
    ld [hl+], a
    ld hl, $3736
    inc h
    dec h
    ld [bc], a
    ld bc, $3409
    ld a, [bc]
    add hl, bc
    adc b
    nop
    add hl, bc
    db $c2, $08, $12

    ld de, $3409
    ld a, [bc]
    add hl, bc
    xor b
    nop
    add hl, bc
    ld [c], a

jr_02a_75f8:
    ld [$2522], sp
    add hl, bc
    call nc, Call_000_310c
    inc sp
    add hl, bc
    ld [bc], a
    jr jr_02a_7634

    ld [hl-], a
    add hl, bc
    inc [hl]
    ld a, [bc]
    ld sp, $3033
    add hl, bc
    rrca
    db $10
    add hl, bc
    dec h
    dec d
    ld [hl-], a
    ld sp, $b409
    rrca
    rlca
    ld b, d
    ld b, e
    add hl, bc
    adc b
    nop
    add hl, bc
    call nc, $070f
    ld b, b
    ld b, c
    add hl, bc
    xor b
    nop
    add hl, bc
    inc d
    add hl, bc
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $1415
    rlca
    rra
    rlca
    rlca

jr_02a_7634:
    rra
    add hl, bc
    inc d
    dec c
    add hl, bc
    ld hl, $0915
    inc c
    ld [bc], a
    add hl, bc
    inc d
    dec c
    ld [$8f09], sp
    db $10
    add hl, bc
    add $11
    add hl, bc
    rrca
    rrca
    dec b
    add hl, bc
    ldh [rNR24], a
    add hl, bc
    inc d
    ld [$0200], sp
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
    jr z, jr_02a_7695

    ld a, [hl+]
    add hl, bc
    inc c
    rrca
    ld [bc], a
    add hl, bc
    rlca
    ld bc, $0504
    jr c, @+$3b

    add hl, sp
    ld a, [hl-]
    ld b, $09
    ld b, e
    ld bc, $0914
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
    inc c
    db $10

jr_02a_7695:
    ld de, $3534
    db $10
    inc de
    jr nc, @+$34

    ld sp, $1232
    add hl, bc
    add e
    nop
    ld de, $0506
    add hl, bc
    inc [hl]
    ld a, [bc]
    inc h
    dec h
    ld [hl], $37
    jr nz, jr_02a_76d1

    ld [hl-], a
    ld sp, $3130
    ld [hl+], a
    ld hl, $3736
    inc h
    dec h
    ld [bc], a
    ld bc, $3409
    ld a, [bc]
    add hl, bc
    adc b
    nop
    add hl, bc
    db $c2, $08, $12

    ld de, $3409
    ld a, [bc]
    add hl, bc
    xor b
    nop
    add hl, bc
    ld [c], a
    ld [$2522], sp
    add hl, bc

jr_02a_76d1:
    call nc, Call_000_310c
    inc sp
    add hl, bc
    ld [bc], a
    jr jr_02a_7709

    ld [hl-], a
    add hl, bc
    inc [hl]
    ld a, [bc]
    ld sp, $3033
    add hl, bc
    rrca
    db $10
    add hl, bc
    dec h
    dec d
    ld [hl-], a
    ld sp, $b409
    rrca
    rlca
    ld b, d
    ld b, e
    add hl, bc
    adc b
    nop
    add hl, bc
    call nc, $070f
    ld b, b
    ld b, c
    add hl, bc
    xor b
    nop
    add hl, bc
    inc d
    add hl, bc

jr_02a_76fd:
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $1415
    rlca
    rra
    rlca
    rlca

jr_02a_7709:
    rra
    add hl, bc
    inc d
    dec c
    add hl, bc
    ld hl, $0915
    inc c
    ld [bc], a
    add hl, bc
    inc d
    dec c
    ld [$8f09], sp
    db $10
    add hl, bc
    add $11
    add hl, bc
    rrca
    rrca
    dec b
    add hl, bc
    ldh [rNR24], a
    add hl, bc
    inc d
    ld [$0200], sp
    jr nz, jr_02a_7751

    jr nz, jr_02a_772d

jr_02a_772d:
    ld [bc], a
    inc d
    inc b
    dec b
    rrca
    dec b
    inc d
    jr nz, jr_02a_7736

jr_02a_7736:
    inc bc
    rst $38
    jr nz, jr_02a_774e

    rlca
    jr nz, jr_02a_773d

jr_02a_773d:
    inc b
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    jr nz, @+$0e

    rrca
    ld [bc], a
    jr nz, jr_02a_774f

    ld bc, $0504
    add hl, de
    ld a, [de]
    dec de

jr_02a_774e:
    inc e

jr_02a_774f:
    ld b, $05

jr_02a_7751:
    inc b
    dec b
    inc b
    dec b
    inc d
    jr nz, @+$35

    dec bc
    nop
    ld bc, $0100
    nop
    inc bc
    dec d
    ld d, $17
    jr jr_02a_7766

    jr nz, jr_02a_77c9

jr_02a_7766:
    nop
    ld bc, $5220
    ld a, [bc]
    rrca
    dec b
    db $10
    ld de, $0e0d
    db $10
    inc de
    ld [hl-], a
    jr nc, jr_02a_77a7

    inc sp
    ld [de], a
    jr nz, jr_02a_76fd

jr_02a_777a:
    nop
    ld de, $5220
    ld a, [bc]
    nop
    inc bc
    inc h

jr_02a_7782:
    dec h
    dec e
    ld e, $24
    inc hl
    ld sp, $3033
    ld sp, $2122
    dec e
    ld e, $24

jr_02a_7790:
    dec h
    jr nz, jr_02a_77e5

    ld a, [bc]
    db $10
    inc de
    jr nc, jr_02a_77c9

    ld sp, $3031
    ld [hl-], a
    ld sp, $2032
    add $00
    ld [hl-], a
    ld sp, $3331

jr_02a_77a5:
    jr nz, @+$54

jr_02a_77a7:
    ld a, [bc]
    inc h
    inc hl
    ld [hl-], a

jr_02a_77ab:
    inc sp
    ld [hl-], a
    ld sp, $3132
    jr nc, jr_02a_77d2

    push hl
    ld bc, $a820
    nop
    jr nz, jr_02a_780b

    ld a, [bc]
    jr nz, jr_02a_7782

    nop
    jr nz, @-$32

    ld [bc], a
    jr nz, jr_02a_7790

    nop
    jr nz, @-$38

    nop
    jr nz, jr_02a_781a

    ld a, [bc]

jr_02a_77c9:
    jr nz, @-$18

    ld bc, $2033

jr_02a_77ce:
    xor b
    nop
    jr nz, jr_02a_777a

jr_02a_77d2:
    nop
    jr nz, @-$18

    nop
    jr nz, jr_02a_77ea

    inc e
    ld sp, $3e31
    ccf
    jr nz, jr_02a_77a5

    rrca
    rlca
    jr nz, @-$56

    nop
    inc a

jr_02a_77e5:
    dec a
    jr nz, jr_02a_77ce

    rrca
    rlca

jr_02a_77ea:
    rlca
    rra
    rra
    rlca
    rlca
    inc d
    jr nz, jr_02a_77f8

    inc d
    inc d

jr_02a_77f4:
    rlca
    rlca
    rlca
    rlca

jr_02a_77f8:
    jr nz, jr_02a_780d

    ld c, $14
    jr nz, jr_02a_7824

    inc d
    jr nz, jr_02a_780d

    ld [bc], a
    jr nz, @+$16

    dec c
    ld [$1f07], sp
    jr nz, @-$6f

    db $10

jr_02a_780b:
    rra
    rlca

jr_02a_780d:
    rlca
    jr nz, jr_02a_781f

    rrca
    dec b
    jr nz, jr_02a_77f4

    add hl, de
    jr nz, jr_02a_77ab

    ld [$0200], sp

jr_02a_781a:
    add hl, bc
    ld h, $09
    nop
    ld [bc], a

jr_02a_781f:
    inc d
    inc b
    dec b
    rrca
    dec b

jr_02a_7824:
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
    jr z, jr_02a_785b

    ld a, [hl+]
    add hl, bc
    inc c
    rrca
    ld [bc], a
    add hl, bc
    rlca
    ld bc, $0504
    jr c, jr_02a_7877

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

jr_02a_785b:
    ld a, [bc]
    rrca
    dec b
    db $10
    ld de, $0e0d
    db $10
    inc de
    ld [hl-], a
    jr nc, jr_02a_7898

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
    dec e
    ld e, $24

jr_02a_7877:
    inc hl
    ld sp, $3033
    ld sp, $2122
    dec e
    ld e, $24
    dec h
    add hl, bc
    ld d, d
    ld a, [bc]
    db $10
    inc de
    jr nc, jr_02a_78ba

    ld sp, $3031
    ld [hl-], a
    ld sp, $0932
    add $00
    ld [hl-], a
    ld sp, $3331
    add hl, bc
    ld d, d

jr_02a_7898:
    ld a, [bc]
    inc h
    inc hl
    ld [hl-], a
    inc sp
    ld [hl-], a
    ld sp, $3132
    jr nc, jr_02a_78ac

    push hl
    ld bc, $a809
    nop
    add hl, bc
    ld d, d
    ld a, [bc]
    add hl, bc

jr_02a_78ac:
    add $00
    add hl, bc
    call z, $0902
    adc $00
    add hl, bc
    add $00
    add hl, bc
    ld d, d
    ld a, [bc]

jr_02a_78ba:
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
    ld sp, $3e31
    ccf
    add hl, bc
    add $0f
    rlca
    add hl, bc
    xor b
    nop
    inc a
    dec a
    add hl, bc
    and $0f
    rlca
    rlca

Call_02a_78dc:
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
    ld [$0200], sp
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
    jr z, jr_02a_794c

    ld a, [hl+]
    add hl, bc
    inc c
    rrca
    ld [bc], a
    add hl, bc
    rlca
    ld bc, $0504
    jr c, jr_02a_7968

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

jr_02a_794c:
    ld a, [bc]
    rrca
    dec b
    db $10
    ld de, $3534
    db $10
    inc de
    ld [hl-], a
    jr nc, jr_02a_7989

    inc sp
    ld [de], a
    ld de, $0e0d
    db $10
    ld de, $5209
    ld a, [bc]
    nop
    inc bc
    inc h
    dec h
    ld [hl], $37

jr_02a_7968:
    inc h
    inc hl
    ld sp, $3033
    ld sp, $2122
    dec e
    ld e, $24
    dec h
    add hl, bc
    ld d, d
    ld a, [bc]
    db $10
    inc de
    jr nc, jr_02a_79ac

    ld sp, $3031
    ld [hl-], a
    ld sp, $0932
    add $00
    ld [hl-], a
    ld sp, $3331
    add hl, bc

jr_02a_7989:
    ld d, d
    ld a, [bc]
    inc h
    inc hl
    ld [hl-], a
    inc sp
    ld [hl-], a
    ld sp, $3132
    jr nc, jr_02a_799e

    push hl
    ld bc, $a809
    nop
    add hl, bc
    ld d, d
    ld a, [bc]
    add hl, bc

jr_02a_799e:
    add $00
    add hl, bc
    call z, $0902
    adc $00
    add hl, bc
    add $00
    add hl, bc
    ld d, d
    ld a, [bc]

jr_02a_79ac:
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
    ld sp, $3e31
    ccf
    add hl, bc
    add $0f
    rlca
    add hl, bc
    xor b
    nop
    inc a
    dec a
    add hl, bc
    and $0f
    rlca
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
    ld [$0200], sp
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
    jr z, jr_02a_7a3e

    ld a, [hl+]
    add hl, bc
    inc c
    rrca
    ld [bc], a
    add hl, bc
    rlca
    ld bc, $0504
    jr c, jr_02a_7a5a

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

jr_02a_7a3e:
    ld a, [bc]
    rrca
    dec b
    db $10
    ld de, $3534
    db $10
    inc de
    ld [hl-], a
    jr nc, jr_02a_7a7b

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

jr_02a_7a5a:
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
    jr nc, jr_02a_7a9d

    ld sp, $3031
    ld [hl-], a
    ld sp, $0932
    add $00
    ld [hl-], a
    ld sp, $3331
    add hl, bc
    ld d, d

jr_02a_7a7b:
    ld a, [bc]
    inc h
    inc hl
    ld [hl-], a
    inc sp
    ld [hl-], a
    ld sp, $3132
    jr nc, jr_02a_7a8f

    push hl
    ld bc, $a809
    nop
    add hl, bc
    ld d, d
    ld a, [bc]
    add hl, bc

jr_02a_7a8f:
    add $00
    add hl, bc
    call z, $0902
    adc $00
    add hl, bc
    add $00
    add hl, bc
    ld d, d
    ld a, [bc]

jr_02a_7a9d:
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
    ld sp, $3e31
    ccf
    add hl, bc
    add $0f
    rlca
    add hl, bc
    xor b
    nop
    inc a
    dec a
    add hl, bc
    and $0f
    rlca
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
    ld [$0200], sp
    daa
    ld h, $27
    nop
    ld [bc], a
    inc d
    inc b
    dec b
    rrca
    dec b
    inc d
    daa
    nop
    inc bc
    rst $38
    daa
    inc d
    rlca
    daa
    nop
    inc b
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    daa
    inc c
    rrca
    ld [bc], a
    daa
    rlca
    ld bc, $0504
    add hl, de
    ld a, [de]
    dec de
    inc e
    ld b, $27
    ld b, e
    ld bc, $2714
    inc sp
    dec bc
    nop
    ld bc, $0100
    nop
    inc bc
    dec d
    ld d, $17
    jr jr_02a_7b29

    daa
    ld h, e

jr_02a_7b29:
    nop
    ld bc, $5227
    inc c
    db $10
    ld de, $0e0d
    db $10
    inc de
    jr nc, @+$34

    ld sp, $1232
    daa
    add e
    nop
    ld de, $0506
    daa
    inc [hl]
    ld a, [bc]
    inc h
    dec h
    dec e
    ld e, $20
    inc hl
    ld [hl-], a
    ld sp, $3130
    ld [hl+], a
    ld hl, $1e1d
    inc h
    dec h
    ld [bc], a
    ld bc, $3427
    ld a, [bc]
    daa
    adc b
    nop
    daa
    db $c2, $08, $12

    ld de, $3427
    ld a, [bc]
    daa
    xor b
    nop
    daa
    ld [c], a
    ld [$2522], sp
    daa
    call nc, Call_000_310c
    inc sp
    daa
    ld [bc], a
    jr jr_02a_7ba3

    ld [hl-], a
    daa
    inc [hl]
    ld a, [bc]
    ld sp, $3033
    daa
    rrca
    db $10
    daa
    dec h
    dec d
    ld [hl-], a
    ld sp, $b427
    rrca
    rlca
    ld a, $3f
    daa
    adc b
    nop
    daa
    call nc, $070f
    inc a
    dec a
    daa
    xor b
    nop
    daa
    inc d
    add hl, bc
    rlca
    rlca
    rlca
    rlca
    daa
    ld bc, $1415
    rlca
    rra
    rlca
    rlca

jr_02a_7ba3:
    rra
    daa
    inc d
    dec c
    daa
    ld hl, $2715
    inc c
    ld [bc], a
    daa
    inc d
    dec c
    ld [$8f27], sp
    db $10
    daa
    add $11
    daa
    rrca
    rrca
    dec b
    daa
    ldh [rNR24], a
    daa
    inc d
    ld [$0200], sp
    daa
    ld h, $27
    nop
    ld [bc], a
    inc d
    inc b
    dec b
    rrca
    dec b
    inc d
    daa
    nop
    inc bc
    rst $38
    daa
    inc d
    rlca
    daa
    nop
    inc b
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    daa
    inc c
    rrca
    ld [bc], a
    daa
    rlca
    ld bc, $0504
    add hl, de
    ld a, [de]
    dec de
    inc e
    ld b, $27
    ld b, e
    ld bc, $2714
    inc sp
    dec bc
    nop
    ld bc, $0100
    nop
    inc bc
    dec d
    ld d, $17
    jr jr_02a_7bfe

    daa
    ld h, e

jr_02a_7bfe:
    nop
    ld bc, $5227
    inc c
    db $10
    ld de, $0e0d
    db $10
    inc de
    jr nc, jr_02a_7c3d

    ld sp, $1232
    ld de, $3534
    db $10
    ld de, $0506
    daa
    inc [hl]
    ld a, [bc]
    inc h
    dec h
    dec e
    ld e, $20
    inc hl
    ld [hl-], a
    ld sp, $3130
    ld [hl+], a
    ld hl, $3736
    inc h
    dec h
    ld [bc], a
    ld bc, $3427
    ld a, [bc]
    daa
    adc b
    nop
    daa
    db $c2, $08, $12

    ld de, $3427
    ld a, [bc]
    daa
    xor b
    nop
    daa
    ld [c], a

jr_02a_7c3d:
    ld [$2522], sp
    daa
    call nc, Call_000_310c
    inc sp
    daa
    ld [bc], a
    jr jr_02a_7c79

    ld [hl-], a
    daa
    inc [hl]
    ld a, [bc]
    ld sp, $3033
    daa
    rrca
    db $10
    daa
    dec h
    dec d
    ld [hl-], a
    ld sp, $b427
    rrca
    rlca
    ld a, $3f
    daa
    adc b
    nop
    daa
    call nc, $070f
    inc a
    dec a
    daa
    xor b
    nop
    daa
    inc d
    add hl, bc
    rlca
    rlca
    rlca
    rlca
    daa
    ld bc, $1415
    rlca
    rra
    rlca
    rlca

jr_02a_7c79:
    rra
    daa
    inc d
    dec c
    daa
    ld hl, $2715
    inc c
    ld [bc], a
    daa
    inc d
    dec c
    ld [$8f27], sp
    db $10
    daa
    add $11
    daa
    rrca
    rrca
    dec b
    daa
    ldh [rNR24], a
    daa
    inc d
    ld [$0200], sp
    dec c
    ld h, $0d
    nop
    ld [bc], a
    inc d
    inc b
    dec b
    rrca
    dec b
    inc d
    dec c
    nop
    inc bc
    rst $38
    dec c
    inc d
    rlca
    dec c
    nop
    inc b
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    inc c
    rrca
    ld [bc], a
    dec c
    rlca
    ld bc, $0504
    add hl, de
    ld a, [de]
    dec de
    inc e
    ld b, $0d
    ld b, e
    ld bc, $0d14
    inc sp
    dec bc
    nop
    ld bc, $0100
    nop
    inc bc
    dec d
    ld d, $17
    jr jr_02a_7cd4

    dec c
    ld h, e

jr_02a_7cd4:
    nop
    ld bc, $520d
    inc c
    db $10
    ld de, $3534
    db $10
    inc de
    jr nc, @+$34

    ld sp, $1232
    dec c
    add e
    nop
    ld de, $0506
    dec c
    inc [hl]
    ld a, [bc]
    inc h
    dec h
    ld [hl], $37
    jr nz, jr_02a_7d16

    ld [hl-], a
    ld sp, $3130
    ld [hl+], a
    ld hl, $3736
    inc h
    dec h
    ld [bc], a
    ld bc, $340d
    ld a, [bc]
    dec c
    adc b
    nop
    dec c
    db $c2, $08, $12

    ld de, $340d
    ld a, [bc]
    dec c
    xor b
    nop
    dec c
    ld [c], a
    ld [$2522], sp
    dec c

jr_02a_7d16:
    call nc, Call_000_310c
    inc sp
    dec c
    ld [bc], a
    jr jr_02a_7d4e

    ld [hl-], a
    dec c
    inc [hl]
    ld a, [bc]
    ld sp, $3033
    dec c
    rrca
    db $10
    dec c
    dec h
    dec d
    ld [hl-], a
    ld sp, $b40d
    rrca
    rlca
    ld a, $3f
    dec c
    adc b
    nop
    dec c
    call nc, $070f
    inc a
    dec a
    dec c
    xor b
    nop
    dec c
    inc d
    add hl, bc
    rlca
    rlca
    rlca
    rlca
    dec c
    ld bc, $1415
    rlca
    rra
    rlca
    rlca

jr_02a_7d4e:
    rra
    dec c
    inc d
    dec c
    dec c
    ld hl, $0d15
    inc c
    ld [bc], a
    dec c
    inc d
    dec c
    ld [$8f0d], sp
    db $10
    dec c
    add $11
    dec c
    rrca
    rrca
    dec b
    dec c
    ldh [rNR24], a
    dec c
    inc d
    ld [$0200], sp
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
    jr z, jr_02a_7daf

    ld a, [hl+]
    add hl, bc
    inc c
    rrca
    ld [bc], a
    add hl, bc
    rlca
    ld bc, $0504
    jr c, @+$3b

    add hl, sp
    ld a, [hl-]
    ld b, $09
    ld b, e
    ld bc, $0914
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
    inc c
    db $10

jr_02a_7daf:
    ld de, $3534
    db $10
    inc de
    jr nc, @+$34

    ld sp, $1232
    add hl, bc
    add e
    nop
    ld de, $0506
    add hl, bc
    inc [hl]
    ld a, [bc]
    inc h
    dec h
    ld [hl], $37
    jr nz, jr_02a_7deb

    ld [hl-], a
    ld sp, $3130
    ld [hl+], a
    ld hl, $3736
    inc h
    dec h
    ld [bc], a
    ld bc, $3409
    ld a, [bc]
    add hl, bc
    adc b
    nop
    add hl, bc
    db $c2, $08, $12

    ld de, $3409
    ld a, [bc]
    add hl, bc
    xor b
    nop
    add hl, bc
    ld [c], a
    ld [$2522], sp
    add hl, bc

jr_02a_7deb:
    call nc, Call_000_310c
    inc sp
    add hl, bc
    ld [bc], a
    jr jr_02a_7e23

    ld [hl-], a
    add hl, bc
    inc [hl]
    ld a, [bc]
    ld sp, $3033
    add hl, bc
    rrca
    db $10
    add hl, bc
    dec h
    dec d
    ld [hl-], a

Call_02a_7e01:
    ld sp, $b409
    rrca
    rlca
    ld a, $3f
    add hl, bc
    adc b
    nop
    add hl, bc
    call nc, $070f
    inc a
    dec a
    add hl, bc
    xor b
    nop
    add hl, bc
    inc d
    add hl, bc

jr_02a_7e17:
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $1415
    rlca
    rra
    rlca
    rlca

jr_02a_7e23:
    rra
    add hl, bc
    inc d
    dec c
    add hl, bc
    ld hl, $0915
    inc c
    ld [bc], a
    add hl, bc
    inc d
    dec c
    ld [$8f09], sp
    db $10
    add hl, bc
    add $11
    add hl, bc
    rrca
    rrca
    dec b
    add hl, bc
    ldh [rNR24], a
    add hl, bc
    inc d
    ld [$0200], sp
    jr nz, jr_02a_7e6b

    jr nz, jr_02a_7e47

jr_02a_7e47:
    ld [bc], a
    inc d
    inc b
    dec b
    rrca
    dec b
    inc d
    jr nz, jr_02a_7e50

jr_02a_7e50:
    inc bc
    rst $38
    jr nz, jr_02a_7e68

    rlca
    jr nz, jr_02a_7e57

jr_02a_7e57:
    inc b
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    jr nz, @+$0e

    rrca
    ld [bc], a
    jr nz, jr_02a_7e69

    ld bc, $0504
    add hl, de
    ld a, [de]
    dec de

jr_02a_7e68:
    inc e

jr_02a_7e69:
    ld b, $05

jr_02a_7e6b:
    inc b
    dec b
    inc b
    dec b
    inc d
    jr nz, @+$35

    dec bc
    nop
    ld bc, $0100
    nop
    inc bc
    dec d
    ld d, $17
    jr jr_02a_7e80

    jr nz, jr_02a_7ee3

jr_02a_7e80:
    nop
    ld bc, $5220
    ld a, [bc]
    rrca
    dec b
    db $10
    ld de, $0e0d
    db $10
    inc de
    ld [hl-], a
    jr nc, jr_02a_7ec1

    inc sp
    ld [de], a
    jr nz, jr_02a_7e17

jr_02a_7e94:
    nop
    ld de, $5220
    ld a, [bc]
    nop
    inc bc
    inc h

jr_02a_7e9c:
    dec h
    dec e
    ld e, $24
    inc hl
    ld sp, $3033
    ld sp, $2122
    dec e
    ld e, $24

jr_02a_7eaa:
    dec h
    jr nz, jr_02a_7eff

    ld a, [bc]
    db $10
    inc de
    jr nc, jr_02a_7ee3

    ld sp, $3031

jr_02a_7eb5:
    ld [hl-], a
    ld sp, $2032
    add $00
    ld [hl-], a
    ld sp, $3331
    jr nz, jr_02a_7f13

jr_02a_7ec1:
    ld a, [bc]
    inc h
    inc hl

jr_02a_7ec4:
    ld [hl-], a
    inc sp
    ld [hl-], a

jr_02a_7ec7:
    ld sp, $3132
    jr nc, jr_02a_7eec

    push hl
    ld bc, $a820
    nop
    jr nz, @+$54

    ld a, [bc]
    jr nz, jr_02a_7e9c

    nop
    jr nz, @-$32

    ld [bc], a
    jr nz, jr_02a_7eaa

    nop
    jr nz, @-$38

    nop
    jr nz, @+$54

    ld a, [bc]

jr_02a_7ee3:
    jr nz, @-$18

    ld bc, $2033
    xor b

jr_02a_7ee9:
    nop
    jr nz, jr_02a_7e94

jr_02a_7eec:
    nop
    jr nz, @-$18

    nop
    jr nz, jr_02a_7f04

    inc e
    ld sp, $2031
    ret z

    ld [bc], a
    jr nz, jr_02a_7ec4

    rrca
    inc bc
    jr nz, @-$56

    nop

jr_02a_7eff:
    jr nz, jr_02a_7ee9

    ld [bc], a
    jr nz, @-$14

jr_02a_7f04:
    rrca
    inc bc
    rlca
    rra
    rra
    rlca
    rlca
    inc d
    jr nz, jr_02a_7f14

    inc d
    inc d

jr_02a_7f10:
    rlca
    rlca
    rlca

jr_02a_7f13:
    rlca

jr_02a_7f14:
    jr nz, jr_02a_7f29

    ld c, $14
    jr nz, jr_02a_7f40

    inc d
    jr nz, jr_02a_7f29

    ld [bc], a
    jr nz, @+$16

    dec c
    ld [$1f07], sp
    jr nz, jr_02a_7eb5

    db $10
    rra
    rlca

jr_02a_7f29:
    rlca
    jr nz, jr_02a_7f3b

    rrca
    dec b
    jr nz, jr_02a_7f10

    add hl, de
    jr nz, jr_02a_7ec7

    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop

jr_02a_7f3b:
    nop
    nop
    nop
    nop
    nop

jr_02a_7f40:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02a_7f81:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
