; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $034", ROMX[$4000], BANK[$34]

    inc [hl]
    ld d, c
    ld b, b
    rst $28
    ld b, b
    ld a, [de]
    ld b, d
    ld bc, $cd43
    ld b, e
    rra
    ld b, l
    jr c, jr_034_4055

    ld e, a
    ld b, a
    cp c
    ld c, b
    ld bc, $894a
    ld c, e
    inc sp
    ld c, l
    daa
    ld c, [hl]
    db $f4
    ld c, a
    ld l, d
    ld d, c
    ld a, c
    ld d, d
    ld [hl], a
    ld d, e
    ld c, [hl]
    ld d, h
    sbc a
    ld d, l
    ld l, l
    ld d, a
    sbc [hl]
    ld e, b
    ld [hl], e
    ld e, c
    ld a, c
    ld e, d
    ld a, h
    ld e, h
    ld hl, $895e
    ld e, a
    ld d, e
    ld h, c
    cpl
    ld h, e
    rst $38
    ld h, h
    ldh [$66], a
    db $dd
    ld l, b
    cp b
    ld l, d
    pop bc
    ld l, h
    ld h, c
    ld l, [hl]
    add hl, hl
    ld [hl], b
    ld [$b872], sp
    ld [hl], e
    sub l
    ld [hl], h
    sbc e
    db $76
    ld e, d
    ld [hl], a
    ld b, b
    ld [bc], a
    dec b
    rst $38

jr_034_4055:
    dec b
    rst $38
    rst $38
    ld c, l
    dec b
    ld e, a
    rrca
    ld c, l
    dec b
    ld [hl], l
    rrca
    ld bc, $ff01
    ld [bc], a
    rst $38
    inc b
    dec b
    ld [hl], h
    rlca
    pop bc
    rst $38
    ld [hl+], a
    rst $38
    inc d
    rst $38
    ld a, $d5
    ld e, l
    rst $30
    ld a, $05
    ld [hl], h
    ld bc, $ffc0
    jr nz, @+$01

    db $10
    dec b
    ld [hl], h
    rrca
    inc sp
    rst $30
    inc e
    db $e3
    ld a, $c1
    ld a, a
    db $dd
    ld a, a
    rst $38
    ld [hl], $ff
    ld a, [hl+]
    rst $38
    dec e
    or $1e
    dec b
    ld [hl], h
    add hl, bc
    sbc h
    rst $20
    cp h
    dec b
    ld [hl], h
    rrca
    jr nz, jr_034_409e

    cp $03
    rst $38

jr_034_409e:
    inc bc
    rst $38
    ld [bc], a
    dec b
    sbc b
    ld [de], a
    db $f4
    ld a, h
    sbc e
    rst $38
    ld h, l
    db $fd
    ld sp, hl
    cp e
    ld hl, sp+$1f
    db $fc
    inc d
    cp $13
    rst $38
    ld de, $fccf
    sbc a
    db $fc
    rra
    or $27
    ei
    db $d3
    cp $0f
    rst $18
    ld [bc], a
    or a
    add e
    rst $28
    dec b
    ld [hl], h
    inc bc
    add b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    dec b
    ld [hl], h
    rrca
    db $10
    inc b
    dec b
    ldh a, [rNR22]
    dec b
    ld [hl], l
    nop
    db $10
    dec b
    nop
    daa
    dec b
    ld [hl], l
    nop
    ld a, [hl]
    rst $38
    ld [hl+], a
    rst $38
    ld hl, $21ff
    rst $38
    ld bc, $01ff
    dec b
    ld [hl], h
    rrca
    ld de, $0240
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    rst $38
    ld c, l
    add hl, bc
    daa
    rrca
    inc de
    dec c
    cp $77
    jp c, $aaff

    rst $38
    ret nc

    ld a, a
    add hl, bc
    ld h, $03
    add b
    rst $38
    or b
    rst $18
    ldh a, [$bf]
    db $fc
    ld h, a
    db $fc
    add hl, bc
    ld h, $07
    inc bc
    rst $38
    dec b
    rst $38
    ld a, [bc]
    add hl, bc
    ld h, $0f
    db $10
    ld bc, $03fe
    rst $38
    inc bc
    db $fc
    rlca
    rst $38
    rlca
    add hl, bc
    jp nc, $e000

    rst $38
    nop
    ld hl, sp-$3e
    rst $30
    rlca
    rst $30
    jp nz, $80f7

    ld hl, sp+$60
    rst $38
    ret nc

    rst $38
    rra
    ld hl, sp+$3f
    db $fc
    rlca
    ld a, a
    rra
    ld a, h
    inc b

Jump_034_4141:
    ld a, a
    ld a, [hl-]
    rst $38
    ld c, [hl]
    rst $08
    or b
    di
    rst $38
    inc [hl]
    rst $28
    ret c

    rst $18

jr_034_414d:
    jr nc, jr_034_418e

    ldh [$7f], a
    ret nz

    rst $38
    add b
    rst $38
    add b
    ld a, a
    ret nz

    add hl, bc
    ld h, $0f
    ld c, $03
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    dec bc
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    ld [de], a
    ld [$eb7f], a
    ccf
    cp $1e
    rst $38
    pop de
    rst $38
    ld hl, $11ff
    xor $1b
    rst $38
    adc d
    ret nc

    pop af
    ld [hl], b
    rst $38
    and b
    ldh [$c0], a
    ld a, h
    nop
    rst $00
    ldh [rNR24], a
    jr c, jr_034_414d

    adc h
    ld [hl], b
    ld a, a
    ldh a, [$3f]

jr_034_418e:
    ret z

    ld e, a
    ldh a, [$3f]
    ldh [$1f], a

jr_034_4194:
    ld hl, sp+$1f
    db $e4
    cpl
    ld hl, sp+$1f
    ldh a, [$09]
    ld h, $0f
    ld c, $20
    rst $38
    ld hl, $23ff
    rst $38
    inc hl
    rst $38
    daa
    rst $38
    inc h
    rst $28
    jr nc, jr_034_4194

    jr c, @-$0a

    dec c
    db $fc
    ld b, $fa
    add a
    db $fc
    add e
    db $fc
    jp Jump_034_41fe


    xor $11
    adc $31
    call nz, Call_034_603b
    sub e
    jr nc, jr_034_4205

    nop
    add hl, sp
    nop
    sbc a
    add hl, bc
    cp b
    ld de, $1fff
    ld hl, sp+$07
    db $fc
    inc bc
    cp $17
    db $fc
    rra
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    rra
    ld hl, sp+$09
    ld h, $0f
    ld c, $10
    rst $38
    db $10
    rst $38
    ld [$06fd], sp
    ei
    rrca
    rst $38
    inc c
    add hl, bc
    ld h, $00
    cp $01
    db $fc
    inc bc
    ei
    inc b
    db $e3
    ld e, $01
    rst $38
    rst $38
    rst $38
    add hl, bc
    ld h, $00
    nop

Jump_034_41fe:
    rst $38
    ld [bc], a
    rst $38
    ld [hl], d
    rst $08
    ld a, e
    rst $20

jr_034_4205:
    rst $38
    ld a, d
    rst $38
    add $09
    ld h, $00
    cp a
    ldh [$7f], a
    ret nz

    cp a
    ld h, b
    rst $38
    and b
    rst $38
    ld h, b
    add hl, bc
    ld h, $0f
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
    ld e, a
    rrca
    ld c, l
    inc b
    cp a
    rrca
    ld c, l
    inc b
    push bc
    ld bc, $03fc
    ld sp, hl

jr_034_4230:
    ld b, $ff
    nop
    pop af
    rrca
    and $1a
    inc b
    add $01
    dec b
    ld a, [hl]
    cp [hl]
    ld l, c
    jp hl


    call c, $aa5d
    xor e
    ld c, c
    ld c, e
    rst $38
    nop
    rst $38
    ld c, a
    or l
    or l
    dec h
    daa
    inc h
    ld l, a
    sub d
    cp $4b
    sla [hl]
    ld h, $ff
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38

jr_034_425c:
    ldh a, [$bf]
    and b
    sbc a
    sub b
    add e
    db $e4
    ld hl, $04b6
    add $0f
    ld a, [bc]
    jr nz, @+$01

    jr nz, jr_034_425c

    rla
    cp $02
    rst $20
    rra
    rst $08
    ld sp, $21df
    rst $18
    jr nz, jr_034_427d

    add $00
    adc b
    adc e

jr_034_427d:
    inc e
    dec e
    ld a, $3e
    db $dd
    rst $38
    rst $38
    ld a, $dd
    ld e, l
    db $dd
    ld c, c
    rst $38
    ld [hl+], a
    ld hl, sp-$02
    jr nz, jr_034_4230

    ld [hl], c
    ld a, l
    add sp, -$36
    ret z

    ld a, d
    sbc h
    ld l, h

jr_034_4297:
    or h
    ld b, h
    db $e4
    inc e
    ld de, $115a
    ld d, h
    xor h
    xor e
    ld c, $f9
    add hl, de
    cp $ec
    db $eb
    ld b, $fd
    ld c, $fe

jr_034_42ab:
    inc b
    add $05
    dec b
    ld a, [$d12a]
    ld d, e
    adc b
    adc e
    rst $38
    jr nc, jr_034_4297

    ld d, b
    rst $18
    ld d, b
    sbc a
    or b
    rra
    ld d, b
    ccf
    and b
    rrca
    jr nc, jr_034_42ab

    ret c

    inc b
    add $0d
    inc d
    inc b
    add $0a
    swap e
    sbc $22
    ld sp, hl
    rlca
    ld a, [c]
    inc c
    and $19
    xor $11
    inc b
    add $00
    rst $30
    rst $30
    rlca
    ld a, a
    ld a, [$c1fa]
    rst $08
    ccf
    cp a
    inc b
    add $02
    ld b, h
    ld d, h
    inc sp
    ld [hl], a
    ld bc, $1c0e
    di
    adc $f1
    rst $28
    db $10
    inc b
    add $00
    scf
    ld c, b
    rra
    ldh [rDIV], a
    adc d
    ld [de], a
    inc b
    add $02
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    ld c, l
    dec b
    daa
    rrca
    inc de
    ld bc, $07fe
    ld sp, hl
    rrca
    or $1f
    db $ed
    ccf
    dec b
    ld h, $01
    rrca
    ldh a, [rIE]
    rst $08
    rst $38
    ccf
    db $fd
    rst $30
    db $dd
    rst $38
    jr jr_034_432a

    ld h, $03
    add b
    ld a, a
    ret nz

jr_034_432a:
    ld a, a
    ret nz

    rst $38
    add b
    dec b
    ld h, $0f
    ld [de], a
    inc bc
    db $fc
    inc c
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    ldh a, [rSVBK]
    xor b
    ret c

    db $db
    ld a, [hl]
    di
    rst $38

Jump_034_4343:
    inc d
    inc e
    inc h
    inc a
    ld b, h
    ld a, h
    dec b
    ld a, [$c0f5]
    ccf
    jr nc, jr_034_435f

    ld [$0407], sp
    inc bc
    ld [bc], a
    dec b
    ld a, [$0500]
    ld e, [hl]
    rrca
    rla
    dec b
    jr z, jr_034_4371

jr_034_435f:
    ret c

    cp b
    xor b
    ret c

    rst $30
    ld a, a
    ret


    rst $38
    jr c, @+$01

    jr z, jr_034_43a7

    ld c, b
    bit 1, b
    ld a, a
    ld h, b
    ld h, b

jr_034_4371:
    sub b
    ldh a, [$08]
    ret z

    adc c
    cp c
    add a
    rst $20
    call nz, $c2de
    ld a, [c]
    and c
    db $ed
    rlca
    rlca
    jr jr_034_439b

    ld l, a
    ld l, a
    or h
    cp h
    ret


    reti


    inc de
    or d
    ld h, a
    and $9b
    sbc [hl]
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    inc c
    ld [hl], e
    ld [hl], d
    db $dd
    db $dd
    rst $38
    inc sp

jr_034_439b:
    dec b
    inc d
    rra
    inc b
    dec b
    daa
    add hl, bc
    ld c, b
    call z, $f7c4
    db $e4

jr_034_43a7:
    ld l, a
    ld a, [c]
    ld d, $ff
    rrca
    dec b
    ld h, $02
    ldh a, [$fb]
    adc h
    adc [hl]
    ld b, e
    ld b, e
    ccf
    db $fc
    rrca
    cp [hl]
    db $e3
    xor $ff
    inc e
    rst $38
    nop
    rst $20
    db $ec
    rra
    cp b

Jump_034_43c3:
    rst $38
    ldh [rTIMA], a
    ld h, $0f
    ld c, l
    dec b
    ldh [$1f], a
    rla
    ld b, b
    ld [bc], a

Jump_034_43cf:
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    rst $38
    ld c, l
    ld a, b
    rst $38
    add a
    add a
    ld a, [$7fc2]
    jp nz, $e17f

    ccf
    pop hl
    ccf
    ldh a, [$1f]
    add hl, bc
    nop
    ld bc, $ffff
    jr nz, @+$21

    di
    ld a, a
    ld hl, sp+$4f
    db $fc
    and e
    rst $38
    add hl, bc
    nop
    ld bc, $ff80
    ld h, b
    rst $38
    ld hl, sp-$01
    rla
    db $fd

Call_034_43fd:
    ld l, [hl]
    or a
    db $da, $ff, $00

    rst $38
    ld bc, $06ff
    rst $38
    add hl, de
    rst $38
    ld a, $ff
    ret nc

    ld a, a
    rst $28
    ret c

    or a
    rst $38
    nop
    rst $38
    db $fd
    rst $38
    ld b, $fe
    ret


    ldh a, [$3f]
    db $dd
    rst $38
    ld h, l
    rst $38
    adc d
    rst $38
    rst $38
    inc a
    rst $38
    jp nz, $bec3

    add a
    db $fc
    add a
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$1f
    ldh a, [$f8]
    rrca
    db $fc
    rlca
    cp $03
    rst $38
    ld bc, $0009
    inc b
    sbc c
    rst $38
    ld b, a
    rst $38
    jr nz, @+$01

    pop de
    rst $38
    ei
    ld a, $fe
    dec c
    ld hl, sp+$17
    pop af
    ld l, a
    rra
    di
    ccf
    db $ec
    ld a, e
    or $f3
    cp a
    db $db
    ld e, [hl]
    rst $28
    xor l
    rst $38
    jp c, Jump_034_6fff

    pop af
    sbc a
    ld sp, hl
    ld l, a
    cp h
    rst $18
    sbc a
    ei
    or a
    db $f4
    xor $6b
    cp $b7
    rst $38
    db $ed
    ld [hl-], a
    rst $38
    db $c4, $ff, $08
    rst $38
    rla
    rst $38
    cp a
    ld hl, sp-$01
    ld h, b
    ld a, a
    sub b
    rra
    db $ec
    ccf
    ldh [$7f], a
    ret nz

    rst $38
    add b
    add hl, bc
    nop
    add hl, bc
    ld bc, $02ff
    cp $05
    db $fc
    dec bc
    add hl, bc
    jr z, jr_034_449e

    rst $38
    rlca
    pop bc
    cp a
    sbc e
    ld a, [hl]
    daa
    cp $4b
    rst $38
    ccf
    db $fd
    rra
    ld a, [c]
    ccf
    push hl

jr_034_449e:
    rst $38
    ld sp, hl
    ei
    ld a, a
    rst $38
    jp c, $ddff

    ei
    cp [hl]
    db $fd
    xor a
    cp $eb
    rst $38
    ld l, c
    rst $38
    ld l, b
    cp a
    db $fd
    rst $38
    or [hl]
    rst $38
    db $76
    cp a
    ei
    ld a, a
    db $eb
    rst $38
    xor [hl]
    rst $38
    dec l
    rst $38
    dec l
    rrca
    ld a, [c]
    or e
    db $fd
    ret


    cp $a4

Call_034_44c7:
    rst $38
    ld hl, sp+$7f
    ldh a, [$9f]
    ld hl, sp+$4f
    rst $38
    ccf
    add hl, bc
    add b
    inc bc
    ld b, b
    ld a, a
    and b
    add hl, bc
    ld a, b
    db $10
    rst $38
    ret nz

    add hl, bc
    nop
    dec c
    ld bc, $9009
    ld de, $ff02
    inc b
    rst $38
    dec b
    rst $38
    ld b, $ff
    nop
    rst $38
    ld [hl], b
    rst $38
    ld l, b
    rst $38
    xor b
    add hl, bc
    and h
    ld de, $0914
    xor d
    ld de, $091d
    ld e, h
    db $10
    rst $38
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    ld d, c
    rst $38
    ld d, b
    rst $38
    ld d, b
    add hl, bc
    nop
    inc bc
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    add hl, bc
    ld a, [hl]
    rra
    nop
    add hl, bc
    ld bc, $0f0f
    inc c
    add hl, bc
    nop
    dec bc
    ld h, b
    add hl, bc
    nop
    rrca
    dec de
    ld b, b
    ld [bc], a
    ld [$08ff], sp
    rst $38
    rst $38
    ld c, l
    ld [$0f1b], sp
    rlca
    ld bc, $01ff
    ld [$091a], sp
    add b
    ld a, a
    ld b, b
    cp a
    and b
    ld [$0870], sp
    cp $02
    db $fd
    dec b
    ld [$0880], sp
    rst $38
    add b
    ld [$0f1a], sp
    dec d
    adc a

jr_034_4547:
    nop
    daa
    nop
    ld [hl], a
    dec h
    daa
    rlca
    adc a
    inc bc
    rst $18
    ld d, b
    rst $28
    cpl
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    add c
    add c
    ld [bc], a
    inc bc
    ei
    ld a, [bc]
    rst $30
    db $f4
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $0801
    ld [$4000], a
    ret nz

    ld [$021a], sp
    pop af
    nop
    db $e4
    nop
    xor $a4
    db $e4
    ldh [$f1], a
    ld [$03ff], sp
    ld [$0f1a], sp
    rlca
    cp $02
    db $fc

jr_034_4585:
    inc b
    ld [$1432], sp

jr_034_4589:
    cp $02
    cp $06
    add d
    add e
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    inc b
    dec b
    inc b
    rlca
    add hl, bc
    rrca
    dec bc
    ld c, $41
    pop bc
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_034_4585

    jr nz, jr_034_4547

    jr nz, jr_034_4589

    sub b
    ldh a, [$d0]
    ld [hl], b
    ld a, a
    ld b, b
    ccf
    jr nz, @+$0a

    ld h, d
    inc d
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ld [$0f1a], sp
    dec c
    ld sp, hl
    add hl, bc
    rst $38
    rra
    cp $02
    rst $38
    inc bc

Call_034_45c4:
    ld [$007a], sp
    cp $03
    cp $03
    rla
    dec e
    ld h, $3f
    ld c, d
    ld a, a
    sub [hl]
    ei
    inc l
    rst $30
    ld e, h
    rst $20
    sbc e
    rst $28
    or h
    call c, $b8e8
    ld h, h
    db $fc
    ld [hl], d
    sbc $79
    rst $08
    inc a
    rst $20
    ccf
    db $e3
    rst $18
    pop af
    cpl
    add hl, sp
    sbc a
    sub b
    rst $38
    ld hl, sp+$7f
    ld b, b
    rst $38
    ret nz

    ld [$01aa], sp
    ld b, b
    rst $38
    ld b, b
    ld [$0f1a], sp
    dec c
    db $fd
    rlca
    ei
    rrca
    rst $30
    dec e
    rst $28
    dec sp
    db $fc
    scf
    rst $38
    rrca
    ld [$001a], sp
    ld a, b
    cp b
    ld h, e
    db $e3
    sbc a
    sbc a
    ld [hl], b
    ldh a, [$cf]
    ccf
    rst $38
    ldh a, [$08]
    ld a, [de]
    nop
    rra
    inc e
    rst $00
    add $f9
    ld sp, hl
    ld c, $0f
    di
    db $fc
    ld [$12fa], sp
    rst $38
    and b
    rst $38
    ret nc

    rst $38
    xor b
    rst $38
    call nc, Call_000_2cff
    ld [$220a], sp
    ld [$0c1a], sp
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
    ld a, e
    rrca
    rlca
    inc bc
    cp $02
    rst $38
    ld bc, $7a04
    add hl, bc
    add b
    ld a, a
    ld b, b
    inc b
    ld a, d
    rlca
    ld bc, $02fe
    db $fd
    dec b
    inc b
    ld [c], a
    ld [$80ff], sp
    inc b
    ld a, d
    rrca
    ld b, $01
    rst $38
    inc bc
    db $fd
    rlca
    ld sp, hl
    rrca
    ld_long a, $ff0e
    ld h, b
    rst $18
    ldh a, [$af]
    cp b
    rst $30
    db $dd
    ld a, e
    db $eb
    sbc a
    rst $38
    ld h, h
    ld a, h
    ld a, [hl]
    ld a, [hl]
    cp a
    and h
    db $db
    ld e, d
    jp hl


    jp hl


    ld d, h
    or h
    or e
    ld [hl], e
    ld e, h
    cp a
    ldh [rIE], a
    adc a
    rst $38
    ei
    ld c, d
    or a
    or h
    cpl
    ld l, $55
    ld e, e
    sbc e
    sbc l
    ld [hl], l
    ei

jr_034_4699:
    ld c, $fe
    ld [c], a
    cp $ff
    inc c
    rst $30
    ld e, $eb
    ld a, [hl-]
    rst $18
    ld [hl], a
    cp l
    xor a
    di
    rst $38
    ld c, l
    ld a, l
    db $fc
    db $fc
    inc b
    db $e4
    rlca
    ret nz

    ccf
    ldh [$bf], a
    ldh [$f3], a
    rra
    or $3f
    adc $6f
    pop af
    ld sp, $22e2
    add sp, $28
    jp $d743


    ld d, a
    rst $00
    rst $38
    ld c, h
    rst $38
    ccf
    rst $38
    dec sp
    xor $fd
    rst $20
    sbc [hl]
    sub e
    rrca
    add hl, bc
    adc a
    adc b
    ld a, [hl-]
    push af
    push de
    rst $28
    cp a
    rst $38
    ld a, a
    rst $38
    and l
    rst $18
    ld a, d
    push af
    rrca
    rst $38
    pop bc
    cp $b9
    ld e, a
    ld d, [hl]
    rst $28
    ei
    rst $38
    db $fd
    cp $4b
    rst $30
    cp h
    ld e, a
    pop hl
    rst $38
    rst $20
    ld e, $c7
    rst $38
    ld h, h
    rst $38
    ld hl, sp-$01
    cp c
    rst $28
    ld a, [hl]
    adc $f2
    sub d
    pop hl
    ld hl, $23e3
    sbc a
    ldh a, [$df]
    ld hl, sp-$19
    db $ec
    rra
    jr @-$6f

    adc b
    cpl
    jr z, jr_034_4699

    add h
    rst $10
    call nc, Call_034_44c7
    rst $10
    ld d, h
    db $e3
    ld [hl+], a
    db $eb

jr_034_471c:
    ld a, [hl+]
    pop af
    ld de, $0fff
    inc b
    ld a, d
    nop
    rst $08
    ld c, b
    rst $08
    ld c, b
    rst $18
    ld d, b
    rst $38
    ld h, b
    inc b
    ld a, d
    inc b
    ldh a, [$3f]
    rst $38
    rrca
    cp $00
    cp $04
    ld a, e
    ld b, $18
    rst $38
    jr nz, jr_034_471c

    nop
    cp a
    nop
    ld a, a
    inc b
    ld a, e
    inc bc
    rst $20
    inc h
    rst $20
    inc h
    rst $30
    inc d
    rst $38
    inc c
    rst $38
    ld bc, $de04
    ld [bc], a
    inc b
    ldh [rNR10], a
    adc a
    adc b
    xor a
    xor b
    rra
    db $10
    rst $38
    ldh [rDIV], a
    ld a, d
    nop
    ld b, b
    ld [bc], a
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld a, [c]
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    add hl, bc
    nop
    inc bc
    add hl, bc
    rst $38
    ldh a, [$80]
    rst $38
    ld b, b
    ld a, a
    and b
    cp a
    ret nc

    add hl, bc
    ld c, $07
    add hl, bc
    ld hl, $090f
    ld bc, $06ff
    ei
    dec c
    rst $30
    add hl, sp
    rst $18
    ld [c], a
    add hl, bc
    ld [de], a
    dec b
    add b
    add hl, bc
    jr nz, @+$11

    inc bc
    rst $18
    xor b
    rst $20
    ld e, h
    rst $00
    ld a, d
    rst $30
    ld a, [hl+]
    ei
    dec d
    ei
    dec c
    db $fd
    ld b, $ff
    inc bc
    add hl, bc
    jr nz, jr_034_47ae

    add b
    rst $38
    ld a, l
    rst $38
    ld bc, $02ff
    cp $0d

jr_034_47ae:
    ld sp, hl
    ld d, $fa
    dec h
    pop af
    ld c, [hl]
    rst $28
    sub c
    rst $10
    ld l, $c7
    inc a
    ccf
    call nz, Call_034_788f
    ld a, a
    sub b
    ccf
    ldh [rIE], a
    ld b, b
    add hl, bc
    ld e, b
    rrca
    dec b
    add hl, bc
    ld a, [bc]
    inc bc
    add hl, bc
    dec bc
    nop
    ld bc, $70ff
    sbc a
    db $fd
    ld a, a
    rst $20
    ld a, [$fc8e]
    push de
    or e
    rst $38
    ld a, d
    rst $38
    ld a, [hl]
    rst $28
    sbc a
    cp $73
    rst $38
    call $a3ff
    and e
    ld [hl], b
    ld d, b
    sbc h
    db $fc
    or d
    ld_long a, $ffe7
    cp a
    ld a, b
    rst $38
    ld hl, sp+$7f
    add a
    adc a
    ld hl, sp-$08
    rst $18
    xor $bd
    rst $30
    cp a
    rst $30
    inc a
    add hl, bc
    inc d
    inc bc
    ld h, b
    ccf
    ret c

    sbc a
    ld h, [hl]
    and a
    reti


    rst $38
    ld a, a
    add hl, bc
    jr nz, jr_034_481a

    cp $03
    cp $03
    add hl, bc
    ld b, $01
    ld [bc], a
    add hl, bc
    nop
    ld [bc], a
    db $dd

jr_034_481a:
    rst $30
    sbc e
    cp a
    rst $08
    ld e, l
    cp $33
    db $fc
    inc b
    ld hl, sp+$08
    ld hl, sp+$18
    ldh a, [$33]
    ld c, e
    xor $fd
    rst $38
    add [hl]
    add a
    ld bc, $00f9
    ld b, $00
    ld bc, $0000
    nop
    ldh a, [$db]
    ld a, [hl]
    set 5, [hl]
    sbc a
    sbc $ef
    or $f7
    xor d
    ld [hl], a
    ld e, c
    ld a, e
    call nc, Call_000_2a3d
    add hl, bc
    add b
    dec bc
    ld b, b
    add hl, bc
    inc l
    rrca
    ld a, [bc]
    ld bc, $02ff
    ldh a, [$37]
    ldh a, [$5c]
    ret nc

    ld a, b
    sub b
    pop af
    ret c

    xor e
    ld e, c
    cp e
    ld a, [hl]
    and [hl]
    ld a, l
    push bc
    nop
    db $fc
    nop
    ld e, $00
    ld c, $00
    rst $00
    nop
    db $e3
    add b
    di
    add b
    di
    ld bc, $3ce5
    ld l, e
    dec a
    ld h, $2d
    ld [hl], $2f
    ld [hl-], a
    ld [hl], e
    ld l, a
    ld a, e
    ld d, l
    ei
    sub l
    ld sp, hl
    rrca
    ld a, a
    ret nz

    ld a, a
    and b
    ld a, a
    sub b
    rra
    add sp, $47
    cp h
    rst $10
    xor h
    di
    ld l, [hl]
    db $fd
    dec de
    add hl, bc
    jr nz, jr_034_48a4

    ld [bc], a
    add hl, bc
    ld a, [hl]
    ld a, [bc]
    ei
    adc e
    rst $30
    inc e
    rst $28
    jr c, @+$01

    jr nc, jr_034_48ad

jr_034_48a4:
    xor d
    inc b
    rlca
    ld b, $ff
    ld hl, sp+$09
    jr nz, jr_034_48b5

jr_034_48ad:
    db $fd
    dec bc
    rst $38
    dec b
    add hl, bc
    ld a, [hl]
    add hl, bc
    rlca

jr_034_48b5:
    add hl, bc
    jr nz, jr_034_48c7

    dec bc
    ld b, b
    ld [bc], a
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    rst $38
    ld c, l
    nop
    rst $38
    inc c
    ei
    ld c, $fd

jr_034_48c7:
    rlca
    cp $03
    rst $38
    ld bc, $0209
    dec b
    ld bc, $02fe
    cp $c2
    ld a, $72
    rst $08
    rst $18
    ldh a, [$36]
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add c
    cp $82
    ld a, [hl]
    jp Jump_034_7d3c


    ld [bc], a
    dec sp
    rst $38
    inc c
    rst $38
    ld b, $ff
    inc bc
    cp $02
    cp $82
    db $fc
    add l
    ld a, c
    ld a, e
    add b
    ld hl, sp+$09
    ld [bc], a
    inc bc
    add c
    cp $87
    ld sp, hl
    sbc e
    rst $20
    xor $1f
    add hl, bc
    sbc a
    nop
    ld h, b
    cp a
    ldh [$7f], a
    add hl, bc
    add e
    nop
    add hl, bc
    inc bc
    rrca
    inc bc
    rrca
    add hl, bc
    ld [bc], a
    rlca
    inc bc
    cp $03
    ld [c], a
    ld [c], a
    ld sp, hl
    add hl, de
    db $fc
    inc b
    cp $02
    cp $32
    xor $3a
    and $2e
    ld a, [$8fba]
    rst $08
    ccf
    jr nc, jr_034_49ae

    ld b, b
    rst $38
    add b
    rst $38
    sbc b
    rst $28
    cp b
    rst $08
    reti


    cp [hl]
    cp d
    rst $38
    ldh [$09], a
    ld [bc], a
    rlca
    add b
    add hl, bc
    cp b
    rrca
    ld b, $09
    inc bc
    dec b
    cp $02
    rst $38
    ld bc, $0fff
    db $fd
    dec b
    rst $38
    inc bc
    db $fd
    dec b
    ei
    dec bc
    rst $38
    ld c, $62
    ld [c], a
    ld [hl+], a
    ld h, d
    ld [bc], a
    inc bc
    add h
    add l
    jr @+$1b

    jr c, @+$2b

    ld [hl], $2e
    sbc a
    sbc l
    adc h
    adc l
    adc c
    cp e
    add c
    or l
    ld b, e
    ld b, e
    ld sp, $39b1
    xor c
    reti


    jp hl


    di
    ld [hl], d
    add hl, bc
    cp b
    ld bc, $09e0
    db $f4
    nop
    ld a, a
    ld b, b
    cp a
    and b
    add hl, bc
    nop
    add hl, de
    add hl, bc
    inc bc
    rrca
    ld [bc], a
    pop af
    ld de, $2ee0
    ret nz

    ld b, e
    ret nz

    ld b, b
    add b
    add hl, bc
    sbc b
    inc de
    db $fd
    or $56
    ld e, a
    add hl, sp
    cp c
    inc e
    call c, Call_034_6a0a
    dec c
    dec l
    rlca
    daa
    ld b, $06
    ld a, a
    rst $18
    call nc, Call_000_38f4
    dec sp
    ld [hl], b
    db $76
    and b

jr_034_49ae:
    xor h
    ld h, b
    ld l, b
    ret nz

    ret z

    ret nz

    ret nz

    rra
    db $10
    rrca
    add sp, $07
    add h
    rlca
    inc b
    inc bc
    ld [bc], a
    add hl, bc
    ret z

    ld [de], a
    add hl, bc
    ld [bc], a
    rrca
    dec c
    ret nz

    ld b, b
    ldh [rNR41], a
    ld hl, sp+$18
    and $26
    pop bc
    ld b, c
    rst $38
    ld a, [hl]
    add hl, bc
    ld [bc], a
    nop
    dec bc
    dec bc
    dec c
    dec c
    dec d
    dec d
    inc hl
    dec hl
    pop bc
    rst $00

Call_034_49df:
    add hl, bc
    ld a, [$a012]
    and b
    ld h, b
    ld h, b
    ld d, b
    ld d, b
    adc b
    xor b
    rlca
    rst $00
    rst $38
    db $fc
    add hl, bc
    ld [bc], a
    nop
    rlca
    inc b
    rrca
    ld [$303f], sp
    rst $08
    ret c

    rlca
    inc c
    add hl, bc
    ld a, [de]
    ld [hl+], a
    add hl, bc
    ld [bc], a
    inc c
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    dec c
    rlca
    ld hl, sp+$0f
    ldh a, [rNR32]
    db $e3
    dec sp
    db $e4
    dec [hl]
    db $e4
    scf
    db $e4
    daa
    db $f4
    dec d
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ld [hl], b
    adc a
    cp b
    ld c, a
    ld e, b
    ld c, a
    ret c

    ld c, a
    ret z

    ld e, a
    ld d, b
    ld [bc], a
    nop
    rrca
    ld c, $02
    rst $38
    rst $38
    inc c
    ld a, [$fe1b]
    rrca
    ld a, [$fa0b]
    dec bc
    db $fd
    dec b
    db $fc
    inc b
    db $fc
    ld b, $fc
    dec b
    cp a
    or b
    rst $38
    ldh [$bf], a
    and b
    cp a
    and b
    ld a, a
    ld b, b
    ld a, a

Call_034_4a4b:
    ld b, b
    ld a, a
    ret nz

    ld a, a
    ld b, b
    ld [bc], a
    ld b, b
    rrca
    ld d, $01
    rst $38
    ld bc, $0002
    add hl, bc
    add b
    ld a, a
    ret nz

    cp a
    ldh [$9f], a
    or b
    db $fc
    rlca
    ld hl, sp+$0c
    ld hl, sp+$0b
    rst $38
    rra
    pop af
    rra
    xor $3f
    ld a, [c]
    ld a, $e4
    ld a, [hl]
    ld a, a
    ret nz

    ccf
    ld h, b
    ccf
    and b
    rst $38
    ldh a, [$1f]
    ldh a, [$ef]
    ld hl, sp-$61
    ld hl, sp+$4f
    db $fc
    ld [bc], a
    nop
    dec b
    inc bc
    db $fd
    rlca
    ei
    ld c, $f3
    ld a, [de]
    ld [bc], a
    nop
    rrca
    inc b
    add hl, de
    rst $20
    dec a
    rst $08
    ld e, a
    reti


    ld e, a
    db $fc
    inc a
    adc a
    cp [hl]
    ret


    ld e, a
    ret z

    rst $08
    jr nc, @+$01

    nop
    rst $38
    add c
    rst $38
    ld b, e
    ld a, a
    db $fc
    db $fc
    call z, $d27c
    db $76

jr_034_4aac:
    pop de
    db $fd
    ldh a, [$fc]
    xor a
    rst $38
    ld e, c
    db $fd
    ld c, a
    rst $38
    adc c
    ld [$7c67], a
    sub a
    db $dd
    ld d, $7f
    ld e, $7f
    ld [$35ff], a
    ld a, a
    push hl
    rst $38
    ld [hl+], a
    xor [hl]
    db $e3
    ld a, [$f427]
    daa
    and $19
    rst $38
    ld bc, $03ff
    rst $38
    add l
    db $fd
    ld a, [hl]
    ld a, [hl]
    ld [bc], a
    nop
    inc bc
    jr nc, jr_034_4aac

    ld a, b
    rst $20
    db $f4
    scf
    db $f4
    ld a, a
    ld a, b
    db $e3
    cpl
    db $e3
    ld [hl+], a
    pop hl
    cpl
    add sp, $2f
    db $fc
    rla
    push af
    dec e
    ld sp, hl
    add hl, bc
    rst $38
    rrca
    ld hl, sp+$08
    db $fc
    db $e4
    rra
    rst $38
    add hl, bc
    db $fd
    rst $00
    rst $38
    ld h, h
    rst $38
    ld [hl], a
    rst $38
    or a
    cp h
    ld e, b
    ld a, h
    ld a, l
    ld a, [hl]
    di
    di
    rra
    sbc a
    rst $00
    rst $00
    ld h, b
    ld h, e
    ldh [$e0], a
    ldh a, [rNR10]
    inc [hl]
    ld a, h
    ld a, h
    db $fc
    sbc a
    sbc a
    pop af
    di
    rst $00
    rst $00
    inc c
    adc l
    rrca
    rrca
    rra
    db $10
    ccf
    ld hl, $4e7f
    pop af
    rst $38
    jr nz, jr_034_4bab

    add $ff
    ld c, l
    rst $38
    db $dd
    rst $38
    db $db
    ld a, e
    adc a
    add sp, -$71
    adc b
    rrca
    add sp, $2f
    add sp, $7f
    ret nc

    ld e, a
    ld [hl], b
    ccf
    jr nz, @+$01

    ldh [$f8], a
    add hl, bc
    db $fc
    dec b
    cp $06
    ld sp, hl
    dec e
    db $e3
    dec sp
    rst $38
    inc a
    ld [bc], a
    nop
    nop
    xor a
    db $ec
    and a
    and $5f
    sbc $3f
    ld [hl], b
    rst $18
    ldh a, [rIE]
    ld [bc], a
    ld [hl], $10
    nop
    rst $38
    rrca
    ld [bc], a
    nop
    dec bc
    ldh [rSC], a
    nop
    ld a, [bc]
    ld [$ca6f], a
    rst $08
    db $f4
    or $f9
    dec e
    rst $30
    rra
    rst $38
    jr jr_034_4b7a

    nop
    nop

jr_034_4b7a:
    ccf
    jr nz, jr_034_4bfc

    ld b, b
    rst $38
    ret nz

    ccf
    ld [hl], b
    adc a
    cp b
    rst $38
    ld a, b
    ld [bc], a
    nop
    nop
    ld b, b
    ld [bc], a
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    rst $38
    inc b
    db $fc
    nop
    di
    nop
    rst $28
    nop
    rst $18
    add hl, bc
    rst $38
    di
    add b
    nop
    ld a, c
    nop
    rst $30
    add hl, bc
    dec de
    inc bc

jr_034_4ba3:
    ret nz

    nop
    rra
    nop
    rst $38
    nop
    rra
    nop

jr_034_4bab:
    rst $20
    nop
    ei
    add hl, bc
    rst $38
    pop af
    ld a, a
    nop
    adc a
    nop
    di
    nop
    db $fd
    nop
    cp $09
    rst $38
    db $fd
    ld a, a
    nop
    cp a
    add hl, bc
    rst $38
    di
    cp $09
    ld h, l
    dec b
    cp a
    ld bc, $03be
    ld a, h
    rlca
    ld hl, sp-$31
    or b
    cp [hl]
    add b
    adc [hl]
    add b
    sbc [hl]
    ld b, b

jr_034_4bd6:
    ld e, [hl]
    cp e
    cp b
    rlca
    ccf
    ld bc, $047f
    ld a, a
    ld a, [bc]
    ld a, a
    ld [de], a
    rst $30
    ld [de], a
    sbc $00
    sbc $ff
    nop
    rst $38
    ldh a, [rIF]
    ld a, a
    add c
    rst $28
    add c

jr_034_4bf0:
    cp a
    ld b, b
    ret c

    jr nz, jr_034_4ba3

    jr jr_034_4bd6

    add hl, bc
    nop
    dec b
    ret nz

    cp a

jr_034_4bfc:
    ldh a, [$8f]
    db $fc
    ld b, a
    ld a, h
    rst $18
    nop
    rst $28
    add hl, bc
    rst $38
    cp $03
    db $fd
    rlca
    cp $06
    cp $06
    cp $02
    rst $38
    ld bc, $7d41
    add d
    cp a
    pop bc
    rst $38
    ld e, a
    ld a, a
    ld a, a
    ld l, d
    ld a, a
    ld [hl], a
    adc b
    rst $38
    adc b
    rst $38
    nop
    jp hl


    add b
    add hl, bc
    ld h, h
    nop
    ld a, a
    add b
    cp a
    ret nz

    rst $38
    ret nz

    rst $18
    jr c, jr_034_4bf0

    inc b
    add a
    ld [bc], a
    ld e, $03
    ld a, a
    dec b
    cp $07
    db $fd
    dec b
    cp $0f
    rst $38
    inc a
    db $fc
    daa
    db $e4
    inc de
    ld a, [$bd89]
    ld c, c
    rst $08
    pop de
    ld e, a
    ld d, d
    ei
    or d
    ei

jr_034_4c4f:
    inc d
    rst $30
    add hl, bc
    nop
    rlca
    add b
    add hl, bc
    ld a, [de]
    ld de, $ff09
    ei
    adc b
    xor e
    call z, $ff4c
    ccf
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    rst $08
    ld c, a
    sub b
    sub b
    rra
    rla
    ccf
    cpl
    call c, Call_000_39fc
    add hl, sp
    ld a, [de]
    ld a, [de]
    rrca
    cpl
    call z, $27fc
    scf
    db $dd
    db $dd
    ld h, [hl]
    ld h, [hl]
    adc h
    adc l
    ccf
    ccf
    ret nz

    db $c3, $00, $0f


    nop
    rra
    ret nz

    rst $38
    sub h
    rst $30
    ld a, c
    ld sp, hl
    ld [hl+], a
    db $eb
    inc h
    rst $28
    call nc, Call_034_49df
    ret


    inc hl
    ld [$ed25], a
    add hl, bc
    ld e, $11
    add hl, bc
    dec de

jr_034_4ca0:
    ld a, [de]
    ld bc, $8209
    dec d
    nop
    rst $38
    nop
    and b
    and a
    jr nz, jr_034_4cdb

    ld b, b
    ld c, a
    add hl, bc
    sub h
    ld [de], a
    ldh [$ef], a
    ret nc

    rst $18
    jr jr_034_4c4f

    ld [$10c8], sp
    ret nc

    db $10
    ret nc

    jr nz, jr_034_4ca0

    add hl, bc
    xor b
    inc de
    ccf
    db $10
    ld e, a
    ld [$08ef], sp

jr_034_4cc8:
    rst $38
    inc b
    rst $30
    ld a, [bc]
    ei
    ld de, $11fd

jr_034_4cd0:
    rst $30
    inc d
    rst $38
    jr jr_034_4cd0

    db $10
    rst $30
    db $10
    rst $30
    db $10

jr_034_4cda:
    rst $38

jr_034_4cdb:
    jr nz, jr_034_4cc8

    jr nz, jr_034_4cda

    ld b, b
    db $d3
    add hl, bc
    ld a, [de]
    db $10
    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    and b
    ccf
    ldh [$09], a
    jp c, $0910

    nop
    inc c
    ldh a, [rPCM34]
    rst $28
    cpl
    ldh a, [rNR22]
    rst $38
    rrca
    add hl, bc
    nop
    inc b
    jr nz, jr_034_4ca0

    ret nc

    ret nc

    ccf
    cp a

jr_034_4d03:
    cp $c6
    add hl, bc
    adc d
    ld [de], a
    rst $38
    nop
    ld h, b
    cp $81
    rst $18
    add [hl]
    cp $18
    jr c, jr_034_4d03

    ldh a, [$f8]
    ld [$07ff], sp
    rst $38
    nop
    add b
    or e
    nop
    inc sp
    ld [bc], a
    ld [hl], e
    ld [de], a
    ld [hl], e
    inc de
    ld d, e
    ld a, a
    ld a, [hl]
    add hl, bc
    ld e, $10
    add hl, bc
    jp c, $3f12

    ldh [rIE], a
    ret nz

    add hl, bc
    nop
    ld [bc], a
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    ld c, l
    dec b

jr_034_4d3c:
    ld e, a
    rrca
    ld c, l
    dec b
    ld a, e
    rrca
    rlca
    jr jr_034_4d3c

    inc e
    di
    ld e, $ff
    nop

jr_034_4d4a:
    rst $38
    ld bc, $02ff
    rst $38
    ld b, $fc
    ld e, $e5
    ld h, $c9
    ld c, h
    ret z

    ld c, [hl]
    dec b
    ld a, d
    ld bc, $ff80
    ret nz

    rst $38
    ld [hl], b
    rst $08
    ld c, b
    ld h, a
    inc h
    rst $20
    inc h
    dec b
    ld a, d
    rlca
    jr nc, jr_034_4d4a

    ld [hl], b
    sbc a
    ldh a, [rTIMA]
    ld a, d
    rrca
    dec c
    ld sp, hl
    dec bc
    ld hl, sp+$0d
    db $fc
    ld b, $fc
    ld b, $fe
    ld [bc], a
    cp $7f
    ei
    add a
    sub c
    add e
    add h
    add a
    jp Jump_000_20c3


    and b
    ld b, b
    ld b, b
    dec a
    cp l
    cpl
    ld a, e
    ld c, l
    ei
    call nz, Call_034_43fd
    jp $8786


    ld [$040a], sp
    inc b
    ld a, b
    ld a, d
    add sp, -$43
    ld h, l
    cp a
    ld b, a
    ld a, a
    ccf
    and b
    ccf
    ld h, b
    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    db $fc
    cp a
    jp nz, $8213

    dec b
    ld a, d
    rrca
    dec c
    db $fc
    ld b, c
    rst $20
    ld hl, $11ff
    ei
    add hl, bc
    rst $38
    rlca
    dec b
    ld a, d
    ld bc, $b301
    db $fc
    rrca
    rst $38
    jr nc, @+$01

    ld c, c
    rst $38
    ld c, $ff
    adc b
    rst $38
    rst $38
    rst $38
    nop
    ld a, d
    sbc h
    ld a, a
    db $e4
    rst $38
    ld l, [hl]
    rst $38
    adc l
    rst $38
    rlca
    rst $18
    ccf
    cp h
    db $e3
    ld a, [$bd01]
    rst $38
    add h
    ld l, a
    ret z

    ccf
    ldh a, [$3f]
    ldh [rIE], a
    ret nz

    dec b
    ld a, d
    rrca
    inc d
    ld bc, $01ff
    cp $03
    rst $38
    ld b, $fa
    dec c
    rst $38
    rrca
    dec b
    ld a, d
    nop
    nop
    rst $38
    ldh a, [rIE]
    ccf
    rst $28
    rst $38
    ld b, b
    ld a, a
    and b
    rst $38
    ldh [rTIMA], a
    ld a, d
    nop
    ld bc, $1fff
    rst $38
    ld hl, sp-$11
    rst $38
    inc b
    db $fc
    dec bc
    dec b
    ld a, [$0512]
    ldh a, [rDIV]
    cp a
    ld h, b
    dec b
    ld a, [bc]
    ld [hl+], a
    dec b
    ld a, d
    inc c
    ld b, b
    ld [bc], a
    ld a, [bc]
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc c
    ei
    rrca
    di
    ld e, $ff
    rra
    rst $38
    ld a, [bc]
    rst $38
    ldh a, [$0a]
    dec c
    ld [bc], a
    ld hl, sp-$09
    ld a, $f9
    dec c
    db $fc
    dec [hl]
    db $dc, $77, $0a
    inc c
    rlca
    add b
    rst $38
    add b
    ld a, a
    ret nz

    ld a, [bc]
    inc c
    rlca
    ld a, [bc]
    ld sp, $600e
    rst $18
    ld [hl], b
    ld a, [bc]
    jr nc, jr_034_4e69

    nop
    ld bc, $03fe
    db $fc
    ld b, $fc
    ld b, $f8
    inc c
    ldh a, [rNR24]
    ldh a, [rNR24]
    sbc l

jr_034_4e69:
    rst $30
    add hl, de
    cp a
    add hl, de
    dec a
    add hl, bc
    ld e, e
    add hl, bc
    ld e, a
    inc b
    adc l
    rlca
    rrca
    dec de
    rra
    ccf
    ld h, b
    db $fc
    ret nz

    ei
    set 6, h
    ld d, h
    or b
    ld [hl], b
    ld a, [$f59a]
    rst $18
    ld l, b
    db $ed
    rst $38
    inc b

jr_034_4e8a:
    rst $38
    adc h
    ld a, a
    call z, $b4bf
    ld l, a
    ld [hl], h
    rst $38
    ret


    ld a, a
    rst $18
    or [hl]
    cp a
    rst $08
    ld a, b
    rst $00
    ld l, h
    jp $8166


    db $d3
    add c
    db $d3
    nop
    adc c
    nop
    add h
    ret nz

    call nz, $200a
    ld [$c07f], sp
    ld a, a
    ret nz

    ldh [$31], a
    ldh [$32], a
    ldh [$32], a
    pop hl
    inc sp
    pop bc
    ld h, l
    jp nz, $c267

    ld h, a
    call nz, Call_034_6567
    ld a, [hl]
    ld b, e
    ld [hl], a
    add b
    cp $00
    sbc [hl]
    nop
    or a
    inc bc
    rst $38
    inc d
    rst $38
    ld [$df3f], sp
    ld [hl], a
    jp z, Jump_034_4fe7

    ld e, a

jr_034_4ed5:
    daa
    cpl
    cpl
    ccf
    rst $28
    rst $38
    ld d, b
    ldh a, [rKEY1]
    db $fd
    db $dd
    ld [hl], e
    sbc [hl]
    ccf
    sub b
    db $d3
    jr nz, jr_034_4e8a

    and c
    rst $20
    cp [hl]
    rst $38
    ld d, d
    ld a, a
    sub d
    rst $38
    jr nz, jr_034_4ed5

    jr jr_034_4f6d

    add hl, bc
    db $db
    rrca
    rst $38
    ld c, $cf
    inc c
    ld l, l
    rlca
    rst $38
    rst $28
    rst $38
    ccf

Jump_034_4f00:
    ld h, b
    ccf
    ld h, b
    rst $38
    ld hl, sp-$01
    ldh [$1f], a
    jr nc, jr_034_4f49

    ld a, $ff
    ld hl, sp-$21
    ldh a, [$c4]
    ld h, a
    ret z

    ld l, l
    call nz, $c467
    ld h, a
    adc $6f
    rst $18
    ld [hl], e
    cp $62
    rst $38
    ld h, c
    ld [$087f], sp
    rst $38
    inc [hl]
    rst $30
    inc e
    ld a, a
    ld l, d
    db $eb
    adc l
    adc l
    inc de
    inc de
    inc bc
    inc bc
    ld b, a
    rst $38
    jr nz, @+$01

    scf
    rst $30
    rla
    ld hl, sp+$2f
    rst $38
    rst $38
    ld a, [bc]
    inc d
    db $10
    rst $38
    ld de, $23ff
    rst $38
    ld a, [hl]
    ld a, [hl]
    cp $fe
    db $e3
    rst $38
    inc e

jr_034_4f49:
    db $fc
    inc c
    db $fc
    inc [hl]
    cp $3f
    ccf
    sbc e
    sbc a
    rla
    rla
    daa
    dec h
    rst $00
    push bc
    rst $08
    ret z

    ccf
    jr nc, jr_034_4fbc

    ld d, b
    ld a, [bc]
    jr jr_034_4f75

    sbc a
    or b
    rst $18
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    ld [hl], h
    rst $38
    ld h, a

jr_034_4f6d:
    rst $38
    ccf
    cp $7f
    cp $fa
    db $fc
    rla

jr_034_4f75:
    db $fc
    dec e
    db $fc
    rlca
    jp nz, $c4c2

    push bc
    cp b
    cp a
    nop
    db $eb
    nop
    cp h
    nop
    ld hl, sp+$00
    ret nz

    ccf
    ccf
    sbc a
    rst $38
    ret nz

    rst $38
    cp a
    rst $38
    ld b, b
    rst $38
    ld a, a
    rst $38
    jr nz, jr_034_4fd4

    rst $38
    rst $38
    rst $38
    nop
    ret z

    rst $38

jr_034_4f9b:
    jr jr_034_4f9b

    add sp, -$05
    db $10
    pop af
    pop af
    pop af
    ld a, $fe
    rst $38
    db $e3
    cp $02
    rra
    inc e
    inc hl
    cp [hl]
    ld bc, $01b7
    db $fd
    pop bc
    rst $18
    inc bc
    ld [hl], a
    rst $38
    cp $07
    inc b
    rst $38
    db $10
    ld a, [bc]

jr_034_4fbc:
    jr nc, jr_034_4fc8

    cp $07
    db $fd
    dec b
    cp $02
    db $fd
    dec b
    ld hl, sp+$08

jr_034_4fc8:
    ld hl, sp+$0f
    rst $38
    rlca
    rst $38
    nop
    dec de
    sbc d
    push hl
    push hl
    add hl, bc
    dec bc

jr_034_4fd4:
    add e
    add [hl]
    rlca
    inc a
    ccf
    ld hl, sp-$01
    ld a, [bc]
    cpl
    rrca
    nop
    db $fd
    dec b
    db $fc
    rlca
    rst $38
    inc bc
    ld a, [bc]
    inc c

Jump_034_4fe7:
    ld b, $1b
    ld a, [de]
    ld bc, $8181
    rst $38
    rst $38
    ld a, [hl]
    ld a, [bc]
    jr nc, jr_034_5002

    dec b
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    add hl, hl
    ld bc, $07fe
    ld [bc], a
    nop
    add hl, bc

jr_034_5002:
    ldh [$df], a
    jr c, jr_034_5008

    nop
    rrca

jr_034_5008:
    ld a, [bc]
    ldh a, [$ef]
    ld a, [hl]
    ld [bc], a
    nop
    add hl, bc
    inc bc
    cp $03
    ld [bc], a
    nop
    dec bc
    ret nz

    ei
    inc c
    push af
    dec de
    db $eb
    ld [hl], $ff
    inc h
    rst $10
    ld l, h
    rst $38
    ld c, b
    rst $18
    ld l, c
    cp $4f
    or a
    ld c, h
    db $eb
    or $f5
    dec de
    ld sp, hl
    rrca
    rst $38
    ld b, $ff
    nop
    rst $38
    add b
    rst $38
    add b
    ld [bc], a
    nop
    add hl, bc
    ld e, $ef
    db $fc
    pop af
    ccf
    cp $1f
    rst $38
    rra
    rst $38
    rra
    cp $0f
    db $fd
    rrca
    db $fd
    rrca
    ei
    rrca
    rst $38
    add c
    ld a, a
    pop hl
    sbc a
    ldh a, [rIF]
    ld hl, sp-$09
    db $fc
    set 7, a
    cp l
    cp $79
    cp $3f
    ldh [$1f], a
    sub b
    adc a
    add sp, -$75
    set 1, [hl]
    db $fd
    ld c, [hl]
    ret


    rst $18
    ld [hl], b
    or a
    inc h
    reti


    ld l, a
    pop de
    ld [hl], e
    db $e3
    ld l, $a3
    and [hl]
    rst $20
    ld a, [hl]
    push hl
    daa
    rst $30
    inc e
    db $db
    ld c, b
    rst $38
    inc bc
    db $fc
    rrca
    di
    rra
    pop hl
    ccf
    sbc $7f
    and a
    rst $38
    ld a, e
    rst $38
    dec a
    rst $38
    rra
    ld hl, sp-$01
    ldh a, [rSC]
    ld [de], a
    ld de, $7fe0
    ldh [$7f], a
    ldh [$bf], a
    ldh [$fb], a
    rrca
    cp $0f
    cp $03
    rst $38
    ld bc, $01ff
    ld [bc], a
    nop
    ld [bc], a
    ld a, a
    ld hl, sp-$0d
    db $fc
    rst $38
    ldh a, [$e7]
    ld hl, sp-$01
    ld h, c
    rst $38
    ld hl, $72ce
    rst $38
    ld b, a
    db $d3
    ld h, [hl]
    rst $30
    ld c, a
    db $db
    ld h, c
    ld [c], a
    scf
    di
    rla
    ld hl, sp+$1b
    ld d, a
    cp a
    inc de
    ld e, e
    sub a
    call z, $e4df
    or a
    inc c
    adc a
    ret c

    sbc a
    pop de
    ccf
    or c
    call nc, $91fa
    or l
    db $fd
    ccf
    sbc [hl]
    ld a, a
    cp $1f
    rst $08
    ccf
    rst $38
    dec c
    rst $38
    ld [$9ce7], sp
    rst $38
    call nz, $e0bf
    rst $38
    ldh [rSC], a
    xor [hl]
    dec bc
    ld [bc], a
    rst $38
    ld_long a, $ff45
    ld c, c
    rst $38
    ld c, d
    rst $38
    ld c, h

jr_034_50f8:
    db $dd
    ld l, [hl]
    rst $38
    ld h, $ef
    inc [hl]

jr_034_50fe:
    rst $30
    dec de

jr_034_5100:
    ei
    rst $38
    sbc h
    and a
    rst $18
    ld h, e
    rst $08
    jr nc, jr_034_5100

    ret c

    rst $38
    ccf
    rst $18
    jr nc, jr_034_50fe

    ld hl, sp-$41
    rst $38
    ld [hl], e
    set 6, a
    adc h
    rst $20
    jr jr_034_50f8

    ld [hl], $fb
    db $fc
    rst $30

jr_034_511d:
    jr @-$0f

    ccf
    rst $38
    ld b, h
    rst $38
    inc h
    rst $38
    and h
    rst $38
    ld h, h
    ld [hl], a
    db $ec
    rst $38
    ret z

    rst $28
    ld e, b
    rst $18
    or b
    ld [bc], a
    nop
    rrca
    ld c, $09
    ei
    dec c
    cp $0f
    push af
    rra
    push af
    rra
    rst $38
    dec de
    ld [bc], a
    nop
    nop
    scf
    db $fc
    rst $38
    db $ec
    rst $38
    add b
    ld a, a
    ret nz

    rst $38
    ret nz

    ld [bc], a
    nop
    ld [bc], a
    reti


    ld a, a
    rst $38
    ld l, a
    cp $03
    db $fd
    rlca
    rst $38
    rlca
    ld [bc], a
    jr z, @+$15

    jr nz, jr_034_511d

    ld h, b
    rst $38
    ldh [$5f], a
    ldh a, [$5f]
    ldh a, [rIE]
    ld [bc], a
    rst $08
    rra
    ld [bc], a
    ld b, b
    ld [bc], a
    ld b, $ff
    ld b, $ff
    rst $38
    ld c, l
    ld b, $4b
    rrca
    scf
    rrca
    rst $30
    dec e
    rst $30
    dec e
    ld b, $4a
    rlca
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    ld b, $4a
    rrca
    jr jr_034_51c8

    rst $38
    ld h, b
    rst $18
    ld [hl], b
    ld b, $4a
    rlca
    inc b
    rst $38
    inc c
    rst $30
    inc e
    rst $28
    ld a, [hl-]
    rst $28
    ld a, [hl-]
    rst $18
    ld [hl], l
    ld b, $04
    ld de, $df61
    ld h, c
    rst $38
    ld [hl], $ff
    add b
    rst $38
    add b
    ld b, $4a
    dec c
    dec c
    rst $30
    inc e
    rst $20
    inc a
    rst $08
    ld a, [hl]
    rst $20
    ccf
    ld b, $ae
    ld bc, $837c
    add e
    add [hl]
    cp $da
    ld a, a
    db $e4
    ld a, a
    db $f4
    ld a, a
    cp $8b
    db $eb
    dec sp
    db $e4
    ccf
    ret nc

    rra

jr_034_51c8:
    ldh [$bf], a
    ld h, b
    ld a, a
    ld h, h
    rst $38
    ld a, [hl+]
    cp e
    di
    pop af
    xor a
    cp b
    ld c, a
    ld hl, sp+$17
    pop af
    ld c, $fb
    inc c
    rst $38
    ld c, h
    rst $38
    xor b
    cp a
    sbc a
    rra
    rst $38
    inc d
    rst $38
    ld l, h
    cp e
    rst $28
    ei
    xor $bf
    db $ec
    ld a, a
    call c, $dc7f
    rst $38
    ret nc

    ld b, $14
    ld e, $ff
    ld bc, $01ff
    ld b, $4a
    ld b, $7f
    jp $c57c


    ld a, h
    rst $08
    cp d
    db $eb
    or c
    rst $38
    or e
    cp $df
    ld a, h
    rst $20
    ccf
    ld [hl], $72
    ld [de], a
    ldh a, [rNR14]
    db $f4
    ld c, e
    ld e, e
    push bc
    rst $38
    add l
    cp a
    add h
    rst $38
    add e
    rst $38
    ret c

    sbc a
    sub b
    rra
    ld d, b
    ld e, h
    and l
    or l
    ld b, a
    cp $43
    ld a, [$fe43]
    add e
    cp $ff
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [rIE]
    ldh a, [rIE]
    ld d, b
    ld b, $c8
    inc de
    ld b, $4b
    rrca
    inc c
    ld hl, sp+$1f
    rst $38
    rlca
    cp $02
    cp $02
    db $fc
    dec b
    rst $38
    rrca
    ld b, $4a
    nop
    add b
    rst $38
    nop
    rst $28
    ret nc

    db $d3
    ccf
    rst $38
    rra
    ldh a, [rIE]
    ld hl, sp+$06
    ld c, d
    nop
    inc bc
    cp $01
    rst $28
    ld d, $97
    ld hl, sp-$05
    ldh a, [rNR22]
    rst $38
    ccf
    ld b, $4a
    ld bc, $c906
    db $10
    ret z

    rst $18
    add sp, $5f
    db $e4
    rst $28
    db $f4
    rst $38
    jr jr_034_527d

    ld c, d
    ld c, $40
    ld [bc], a
    inc b
    rst $38

jr_034_527d:
    inc b
    rst $38
    cp $0f
    db $fc
    inc c
    rst $38
    inc bc
    rst $38
    ld bc, $0004
    ld bc, $1904
    nop
    rst $00
    jr c, jr_034_52c8

    rst $10
    rst $10
    inc l
    inc l
    or $f6
    rst $38
    rra
    db $f4
    db $f4
    rst $38
    nop
    rst $38
    or $8f
    adc a
    ld a, b
    ld a, b
    sub a
    sub a
    rst $28
    add sp, -$61
    sub b
    ld c, a
    ld c, a
    inc b
    nop
    ld bc, $ffc0
    ret nz

    inc b
    nop
    rrca
    nop
    inc b
    ld c, c
    rrca
    inc bc
    ld bc, $03ff
    db $fd
    rlca
    db $fd
    rlca
    ei
    ld c, $fb
    ld c, $fb
    rrca
    ld a, [$100f]

jr_034_52c8:
    db $d3
    sbc e
    sbc a
    and $ed
    xor l
    cp d
    adc e
    sbc h
    adc a
    reti


    ld d, l
    sbc $c3
    rst $00
    ld d, c
    rst $10
    sbc e
    db $db
    add $66
    ld l, c
    cp e
    and [hl]
    ld [hl], a
    ld [c], a
    inc sp
    ld b, d
    and $95
    rst $10
    inc b
    ld b, d
    nop
    ccf
    ldh [$df], a
    ldh a, [rIE]
    or b
    rst $38
    add b
    rst $38
    sbc h
    db $e3
    cp $04
    ld c, b
    rrca
    dec c
    ei
    ccf
    db $db
    ld a, [hl]
    or a
    db $fc
    cp a
    add sp, -$01
    ld b, c
    rst $38
    ld bc, $03fe
    cp $03
    ldh [$73], a
    reti


    ld a, c
    or l
    rst $38
    xor l
    rst $38
    ld l, l
    rst $38
    ld [hl], l
    rst $18
    or $9f
    push af
    sbc l
    ld l, $ab
    dec [hl]
    dec [hl]
    xor e
    rst $38
    xor e
    xor $b7
    db $fc
    ld d, a
    ld e, h
    rst $10
    db $fc
    ld d, a
    db $fc
    dec e
    rst $38
    db $fd
    rst $20
    ld a, l
    rst $00
    cp a
    ld [c], a
    rst $38
    ld h, b
    inc b
    ld c, b
    rrca
    inc de
    db $fd
    rlca
    ei
    ld e, $e7
    inc a
    rst $18
    ld a, b
    cp a
    ldh [$bf], a
    ldh [rIE], a
    ld b, b
    rst $38
    nop
    push af
    rra
    xor $3b
    db $ed
    dec a
    ei
    rra
    ei
    rrca
    inc b
    ld a, b
    nop
    db $fd
    rlca
    ld l, a
    ld l, b
    xor a
    cp b
    ld l, a
    ld hl, sp+$5f
    ret nc

    ld e, a
    ldh a, [$df]
    ldh a, [rIE]
    jr nz, jr_034_536a

    ld c, b
    rrca
    ld d, $04

jr_034_536a:
    rla
    rra
    ld [$02ff], sp
    inc b
    ld e, [hl]
    rra
    cpl
    inc b
    ldh [$1f], a
    ld b, a
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld c, l
    ld [bc], a
    dec e
    rrca
    add hl, bc
    inc bc
    cp $03
    ld [bc], a
    inc e
    add hl, bc
    add b
    ld a, a
    ret nz

    ld [bc], a
    ld [hl], b
    ld a, [bc]
    db $fc
    rlca
    ld [bc], a
    add b
    ld a, [bc]
    rst $38
    add b
    ld [bc], a
    inc e
    rrca
    ld c, $01
    ld [bc], a
    inc e
    dec b
    rrca
    di
    ld e, $ff
    inc e
    rst $38
    ldh [rIE], a
    inc sp
    ld hl, sp+$1b
    ldh a, [rNR32]
    db $e3
    jr c, @-$37

    ret nc

    call $cde2
    ld h, c
    rst $38
    rrca
    rst $38
    sbc b
    ccf
    or b
    rra
    ld [hl], b
    adc a
    jr c, @-$37

    rla
    ld h, a
    adc [hl]
    ld h, a
    inc c
    ld [bc], a
    inc e
    rlca
    ldh [$9f], a
    ldh a, [rIE]
    ld [hl], b
    ld [bc], a
    inc e
    rrca
    ld [de], a
    ld bc, $07ff
    ei
    ld c, $fb
    ld c, $ff
    inc c
    rst $38
    nop
    call z, $c762
    ld d, b
    db $e3
    add sp, -$10
    inc d
    ld hl, sp+$08
    cp $06
    ld hl, sp+$09
    ld hl, sp+$1f
    ld h, a
    adc h
    rst $00
    inc d
    adc a
    cpl
    rra
    ld d, c
    ccf
    jr nz, @+$01

    ret nz

    ccf
    jr nz, jr_034_5438

    ldh a, [rSC]
    inc e
    inc bc
    ret nz

    cp a
    ldh [$bf], a

jr_034_5401:
    ldh [rIE], a
    ld h, b
    ld [bc], a
    inc e
    rrca
    rra
    ld [c], a
    ccf
    jp z, $c97e

    ld a, a
    push hl
    daa
    ld a, [c]
    rla
    rst $30
    dec d
    rst $30
    inc d
    rst $30
    inc e
    adc a
    ld hl, sp-$59
    db $fc
    daa
    db $fc
    ld c, a
    ret z

    sbc a
    ret nc

    rst $18
    ld d, b
    rst $18
    ld d, b
    rst $18
    ld [bc], a
    rrca
    rra
    inc de
    ld [bc], a
    cp a
    rrca
    nop
    cp $03
    rst $38
    ld [bc], a
    ld a, a
    ld bc, $38ef
    rst $28

jr_034_5438:
    jr c, jr_034_5401

    ld l, h
    or a
    db $fc
    ld l, a
    ld hl, sp-$01
    or b
    ld [bc], a
    db $fc
    ld d, $db
    ld a, a
    db $ec
    ccf
    rst $38
    dec de
    ld [bc], a
    and b
    rrca
    ld de, $0240
    dec b
    rst $38
    dec b
    rst $38
    ld a, [$0501]
    nop
    inc bc
    jr nz, @+$01

    ld h, b
    rst $38
    and b
    rst $38
    and b
    cp a
    ld l, b
    dec b
    nop
    dec bc
    dec b
    ld hl, $1f0f
    ld bc, $6005
    ld bc, $ff05
    push af
    sbc a
    ld [hl], b
    sbc a
    ld [hl], b
    rst $18
    jr nc, @-$1f

    or b
    rst $18
    or b
    rst $28
    ld e, b
    rst $28
    ld e, b
    rst $38
    ld a, b
    rst $38
    inc b
    ei
    ld a, [bc]
    ei
    ld a, [bc]
    push af
    dec d
    or $16
    rst $28
    cpl
    rst $20
    daa
    rst $28
    cpl
    rst $38
    ld b, b
    cp a
    and b
    cp a
    and b
    ld e, a
    ld d, b
    rst $18
    ret nc

    rst $28
    add sp, -$31
    ret z

    rst $28
    add sp, $05
    nop
    rlca
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc c
    dec b
    jr nz, jr_034_54ba

    dec c
    rst $00
    ld [hl], h
    rst $38
    ld a, [hl]
    db $e3
    ccf
    xor $3f
    rst $30
    rla
    or $16
    rst $30
    dec d

jr_034_54ba:
    rst $38
    inc d
    db $eb
    cpl
    pop af
    ccf
    ldh a, [$fb]
    sub d
    db $fd
    sbc b
    cp a
    xor $ff
    dec [hl]
    dec [hl]
    sbc a
    sbc a
    xor a
    add sp, $1f
    ld hl, sp+$1f
    cp h
    sub e
    ld a, [hl]
    inc hl
    ei
    call z, Call_000_1dff
    rst $18
    di
    ld a, [c]
    rst $38
    inc c
    rst $38
    inc d
    rst $30
    ld a, h
    ei
    adc $ff
    adc d
    ei
    adc [hl]
    rst $30
    inc e
    rst $28
    ld a, b
    dec b
    jr nz, jr_034_54fe

    dec c
    ei
    rrca
    ld a, [$eb3e]
    ccf
    cp $3f
    push af
    dec [hl]
    jp hl


    ld a, c
    xor l
    db $fd

jr_034_54fe:
    rst $38
    rst $28
    ld e, b
    rst $10
    ld l, a
    ldh a, [$ef]
    or d
    cp a
    pop af
    xor a
    ld a, l
    push af
    push bc
    db $ed
    ld [hl], d
    sbc $3b
    dec [hl]
    rst $10
    db $ec
    ld e, $ef
    sbc e
    ld a, [$eb1f]
    ld a, l
    ld e, a
    ld b, a
    ld l, a
    sbc l
    rst $30
    cp c
    cp a
    ldh a, [$bf]
    ld hl, sp-$51
    ld hl, sp-$01
    ld hl, sp+$5f
    ld e, b
    cpl
    inc a
    ld l, e
    ld a, [hl]
    rst $38
    xor $05
    ld c, h
    rrca
    ld b, $05
    rst $38
    db $f4
    ccf

jr_034_5538:
    cp $f1

jr_034_553a:
    rst $28
    ld e, a
    rst $18
    ld hl, sp-$01
    jr z, @+$01

    jr z, jr_034_553a

    inc e
    rst $30
    ld a, $be
    ld a, e
    cp a
    ld hl, sp-$25
    rst $30
    db $dd
    db $76
    rst $38
    ccf
    rst $30
    rra
    db $fd
    ld b, $ff
    inc bc
    ei
    cp l
    ld a, [$b73f]
    rst $18
    ld [hl], a
    call c, $f8ff
    rst $18
    ldh a, [$7f]
    ret nz

    rst $38
    add b
    rst $38
    jr z, jr_034_5538

    or $fb
    ld a, l
    rst $38
    or a
    rst $18
    ld l, b
    rst $28
    ld a, b
    rst $38
    ld d, b
    rst $38
    ld d, b
    dec b
    ld d, b
    ld c, $fe
    inc bc
    dec b
    ld h, h
    ld [$cefb], sp
    db $dd
    cp a
    rst $38
    db $e3
    dec b
    ld b, h
    rrca
    dec c
    cp $03
    rst $38
    inc bc
    dec b
    nop
    ld [bc], a
    cp a
    ldh [$bf], a
    ldh a, [$7f]
    ret z

    rst $10
    db $fc
    db $eb
    ld [hl], $ff
    ld e, $05
    jr nz, jr_034_55ad

    ld bc, $0240
    inc b
    rst $38
    inc b
    rst $38
    rst $38
    ld bc, $fc03
    rlca
    ld hl, sp+$0e
    pop af

jr_034_55ad:
    dec e
    db $ed
    dec a
    push de
    ld [hl], l
    inc b
    nop
    inc bc
    add b
    rst $38
    add b
    inc b
    nop
    ld bc, $0401
    ld a, [hl+]
    ld [bc], a
    cp $03
    cp $02
    rst $38
    ld bc, $3a04
    ld bc, $2304
    ld bc, $c07f
    ccf
    ldh [$1f], a
    ld [hl], b
    ld l, a
    ld a, b
    ld d, a
    ld e, h
    inc b
    nop
    rrca
    ld [bc], a
    inc b
    dec [hl]
    nop
    inc bc
    db $fd
    rlca
    db $fd
    rlca
    ei
    rrca
    and l
    push hl
    xor d
    ld [$da4a], a
    rst $38
    rst $38
    di
    sbc e
    ldh a, [$3b]
    rst $38
    cpl
    ld_long a, $ff36
    ld bc, $82ff
    rst $38
    sbc d
    db $fd
    call nc, Call_034_78fb
    and c
    add $d6
    rst $38
    dec h
    cpl
    rst $38
    ld bc, $82fe
    cp $b2
    ld a, a
    ld d, a
    cp a
    dec a
    ld a, [bc]
    rst $00
    rst $10
    rst $38
    ld c, b
    add sp, $4b
    ld c, [hl]
    xor e
    xor [hl]
    and l
    or a
    cp $ff
    sbc [hl]
    or e
    rra
    cp c
    rst $38
    jp hl


    cp a
    reti


    inc b
    jr nz, @+$08

    ld a, a
    ret nz

    ld a, a
    ret nz

    cp a
    ldh [$fb], a
    ld c, $f7
    inc e
    rst $30
    inc e
    rst $28
    inc [hl]
    rst $28
    inc sp
    xor $31
    rst $28
    scf
    rst $18
    ld h, l
    ld a, [c]
    cp $ec
    sbc $ec
    db $db
    xor $d9
    ld l, a
    call nc, $d26e
    ld a, $db
    and [hl]
    rst $38
    ld [hl-], a
    inc hl
    dec de
    inc d
    ld l, l
    db $ec
    adc e
    rst $08
    push bc
    cp a
    ld a, h
    rst $08
    ld [hl], d
    di
    rst $18
    ld e, [hl]
    sbc b
    adc b
    or b
    ld d, b
    ld l, h
    ld l, a
    and d
    rst $20
    ld b, a
    ld a, [$e67c]
    sbc h
    sbc a
    or $f5
    sbc a
    cp $6d
    or $6d
    or [hl]

jr_034_5672:
    db $ed
    ld [hl], $ec
    ld d, a

jr_034_5676:
    db $ec
    sub a
    ld sp, hl
    or a
    set 7, a
    cp a
    ldh [$df], a
    ld [hl], b
    rst $18
    jr nc, jr_034_5672

    jr @-$0f

    jr jr_034_5676

    ret c

    rst $28
    jr c, @-$07

    inc l
    rst $18
    ld h, h
    rst $18
    ld h, d
    rst $18
    ld h, h
    rst $18
    ld l, c
    rst $18
    ld l, c
    rst $18
    ld l, b
    rst $28
    jr c, @-$0f

jr_034_569b:
    jr c, jr_034_569b

    ld [hl], a
    ei
    cpl
    call c, $1ff3
    rst $20
    rst $38
    ld d, d
    db $fd
    cp a
    rst $38
    ld h, l
    cp $06
    pop de
    ld a, a
    rst $08
    rst $28
    ld d, b
    rst $38
    rst $08
    ld l, a
    ret c

    rst $28
    adc $f7
    ccf
    ld hl, $700b
    ld d, $fd
    rst $20
    rst $28
    inc d
    rst $38
    rst $20
    db $ed
    scf
    xor $e7
    rst $18
    ld sp, hl
    add hl, bc
    and b
    inc e
    rst $38
    call c, $e8bf
    ld [hl], a
    sbc [hl]
    pop af
    rst $08
    rst $38
    sub l
    ld a, a
    ld a, [$4cff]
    rst $38
    add b
    rst $30
    ld c, h
    rst $30
    adc h
    rst $30
    ld c, h
    rst $30
    inc l
    inc b
    db $76
    db $10
    inc b
    inc l
    db $10
    inc b
    inc l
    db $10
    rst $38
    jr nc, jr_034_56f4

    add h
    inc de
    db $10
    rst $38

jr_034_56f4:
    db $10
    ld hl, sp+$09
    ldh a, [rNR13]
    di
    inc e
    rst $30
    jr @+$01

    ld [$05fe], sp
    rst $38
    inc bc
    cp $03
    inc a
    ret nz

    rst $38
    nop
    rst $38
    rra
    rst $38
    ld h, b
    inc b
    or [hl]
    ld [bc], a
    rst $38
    ld b, b
    ld a, b
    rlca
    cp $01
    rst $38
    ld hl, sp-$01
    inc c
    ld sp, hl
    rrca
    ei
    ld c, $fb
    rrca
    ld hl, sp+$08
    ld a, a
    ld b, b
    ccf
    and b
    cp a
    ld h, b
    rst $38
    jr nz, @+$01

    inc b
    and c
    stop
    rst $38
    ldh [rDIV], a
    add b
    ld de, $0418
    call nc, Call_000_1013
    inc b
    call c, $0413
    rst $38
    rst $30
    db $fd
    ld b, $f8
    ld a, b
    xor a
    ldh a, [$df]
    rst $28
    rst $38
    or b
    inc b
    ret z

    inc de
    add b
    ld a, a
    ld h, b
    sbc a
    ld [hl], b
    rst $38
    add sp, -$01
    jr @+$06

    nop
    ld [bc], a
    rst $30
    jr @+$01

    cpl
    rst $38
    jr nc, @+$06

    nop
    ld b, $5f
    ldh a, [$bf]
    ld [hl], b
    rst $38
    ret nc

    inc b
    inc d
    daa
    inc b
    rst $18
    dec de
    ld b, b
    ld [bc], a
    ld [$08ff], sp
    rst $38
    rst $38
    dec de
    inc bc
    ld [$0428], sp
    db $fd
    rrca
    di
    ld [hl], $c7
    call c, Call_034_780f
    ld [$0300], sp
    add b
    ld [$0f00], sp
    inc e
    ld [$f5ff], sp
    db $fc
    inc b
    db $fc
    dec b
    ld hl, sp+$09
    ld hl, sp+$0b
    rst $30
    rla
    ld hl, sp+$18
    ldh a, [$30]
    rst $28
    cpl
    ld e, a
    ldh a, [$3f]
    ldh [$08], a
    sub d
    nop
    rst $18
    ldh a, [$3f]
    jr nc, jr_034_57c7

    jr @-$0f

    add sp, -$01
    nop
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    ld [HeaderNewLicenseeCode], sp
    ld b, b
    rst $38
    ld b, b
    ld [$0f46], sp
    ld [$fc03], sp

jr_034_57c7:
    inc e
    ldh [rNR41], a
    rst $18
    ld e, a
    ld [$f37f], a
    ccf
    pop hl
    ccf
    ldh a, [$37]
    rst $38
    rst $38
    nop
    nop
    rst $00
    rst $00
    cp c
    cp $53
    ld a, l
    ld d, c
    cp $a7
    add sp, $1f
    ld hl, sp+$08
    ld [c], a
    nop
    add $c6
    dec sp
    rst $38
    sub h
    ld a, l
    dec d
    rst $38
    jp z, $ff2e

    inc d
    rst $38
    sub h
    ld a, a
    ld l, b
    ccf
    jr z, @-$07

    call nc, $fcff
    sbc a
    ldh a, [$9f]
    ldh a, [$08]
    nop
    rrca
    dec c
    cp $1f
    db $f4
    rla
    ld hl, sp+$09
    cp $06
    rst $38
    add hl, de
    rst $38
    dec d
    rst $38
    inc de
    or $1a
    ld e, e
    rst $30
    cpl
    ld hl, sp+$27
    rst $30
    ld [de], a
    cp e
    adc a
    cp a
    add l
    cp d
    ld b, d
    ld e, h
    and c
    xor $b5
    db $dd
    jp hl


    dec hl
    ret z

    rst $18
    sub b
    cp e
    db $e3
    rst $38
    ld b, e
    cp a
    add h
    ld a, a
    dec bc
    rst $38
    rst $38
    ld [hl], b
    rst $18
    ret nc

jr_034_5839:
    ccf
    ldh [rIE], a
    ret nz

    rst $38
    jr nc, @+$01

    ld d, b
    rst $38
    sub b
    rst $18
    or b
    ld [$0f00], sp
    ld c, $09
    ld_long a, $ff0d
    dec b
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    ld [$0000], sp
    ld d, b
    ld [hl], a
    and e
    cp a
    ld e, b
    ld a, a
    daa
    ccf
    jr @+$21

    rlca
    rlca
    add b
    add b
    pop bc
    ld b, c
    dec d
    rst $38
    adc d
    rst $38
    dec [hl]
    db $fd
    ret


    ld sp, hl
    ld sp, $c1f1
    pop bc
    inc bc
    ld [bc], a
    rlca
    inc b
    rst $38
    jr nz, jr_034_5839

    ld h, b
    ld [$0fb6], sp
    ld a, [bc]
    ld [$ffff], sp
    inc c
    jp $e342


    ld [hl+], a
    rst $30
    inc d
    rst $38
    inc c
    rst $38
    inc b
    ld [$0200], sp
    add a
    add h
    adc a
    adc b
    rst $18
    ld d, b
    rst $38
    ld [$10c3], sp
    ld [$ffff], sp
    ld [de], a
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld c, l
    ld [bc], a
    dec e
    rrca
    add hl, bc
    inc a
    rst $38
    rra
    ld [bc], a
    inc e
    inc bc
    ret nz

    cp a
    di
    call $d37e
    ld a, h
    rst $20
    jr c, jr_034_58bc

    inc e
    inc bc

jr_034_58bc:
    ld b, $fb
    sbc [hl]
    rst $20
    ld a, h
    rst $30
    inc e
    rst $38
    add hl, bc
    ld [bc], a
    inc e
    add hl, bc
    ld a, b
    rst $38
    ldh a, [rSC]
    inc e
    rrca
    ld c, $0f
    rst $38
    rra
    rst $38
    dec d
    rst $38
    add hl, bc
    rst $38
    db $10
    rst $38
    rra
    db $fd
    ld b, $fe
    inc bc
    rst $20
    cp b
    rst $28
    db $fc
    dec hl
    cp $93
    ei
    rst $10
    db $fd
    ld [hl], e
    cp a
    ldh a, [$9a]
    ld_long $ff3b, a
    dec bc
    rst $38
    ld l, a
    cp c
    rst $28
    sub e
    cp a
    rst $10
    ld a, [hl]
    sbc e
    db $fd
    rla
    cp d
    xor [hl]
    cp c
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld d, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ldh a, [$7f]
    ret nz

    rst $38
    add b
    ld [bc], a
    inc e
    rrca
    ld c, $01
    ld [bc], a
    ld l, $10
    cp $07
    rst $38
    dec bc
    ei
    dec c
    db $fd
    ld b, $fd
    ld b, $c5
    db $fd
    and l
    db $fd
    sbc h
    cp h
    ld e, e
    rst $08
    rst $38
    cpl
    cp b
    ld c, a
    rst $18
    ld h, a
    db $f4
    cp a
    ld b, a
    ld a, a
    ld c, a
    ld a, d
    ld a, e
    ld [hl], e
    or a
    db $e4
    rst $38
    jp hl


    dec sp
    push hl
    push af
    adc $5e
    ei
    ld [bc], a
    add b
    inc b
    rst $38
    and b
    cp a
    ld h, b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld [bc], a
    inc e
    rrca
    ld c, $03
    ld [bc], a
    jr z, jr_034_596a

    ld [bc], a
    sbc e
    db $10
    rrca
    db $fc
    rlca
    ei
    rra
    pop hl
    ld l, e
    sbc a
    sbc $ff
    ldh [rSC], a
    ld c, $11
    pop hl
    ld a, a
    ret nz

    rst $38
    ld [bc], a
    dec c

jr_034_596a:
    jr jr_034_596e

    rrca
    rra

jr_034_596e:
    rrca
    ld [bc], a
    rst $18
    rra
    ld c, d
    ld b, b
    ld [bc], a
    inc b
    rst $38
    inc b
    rst $38
    rst $38
    ld c, l
    inc b
    rla
    rrca
    inc bc
    inc c
    rst $38
    ld a, [de]
    di
    rra
    db $fc
    rrca
    cp $02
    rst $38
    ld b, $ff
    dec bc
    ld sp, hl
    rrca
    rst $30
    ld e, $ef
    add hl, sp
    xor $2b
    cp $bf
    ld [c], a
    ei
    inc b
    ld d, $01
    ld b, $f9
    rst $08
    add hl, sp
    rst $28
    dec de
    cp $db
    cp $d7
    rst $30
    inc b
    ld d, $01
    jr nc, @-$1f

    ld l, b
    sbc a
    ldh a, [$bf]
    ld hl, sp-$41
    ldh [$bf], a
    db $ec
    inc b
    ld d, $0f
    ld c, $01
    rst $38
    dec c
    ld a, [$f917]
    rrca
    rst $38
    rra
    rst $20
    ld a, a
    adc d
    db $fd
    sbc b
    ld sp, hl
    sbc [hl]
    rst $38
    ld [hl], c
    ld sp, hl
    and a
    or a
    xor [hl]
    rst $38
    xor b
    cp a
    ld l, d
    ld a, h
    ret z

    ld hl, sp+$17
    rst $30
    ld e, b
    rst $38
    ld d, a
    rst $30
    ld a, a
    ld sp, hl
    ld b, [hl]
    sbc $92
    sbc a
    xor e
    xor a
    ret


    rst $08
    ld h, h
    and a
    or a
    cp d
    ld [hl], a
    db $fc
    adc a
    cp $7f
    ld [hl], b
    rst $38
    add [hl]
    ei
    db $fd
    dec de
    cp $5f
    scf
    inc b
    ld d, $0f
    dec c
    ld hl, sp+$61
    rst $38
    rlca
    rst $38
    ld h, c
    sbc $bf
    pop bc
    ld a, a
    rst $38
    cp $ff
    ld bc, $03fe
    and $e5
    jp $a542


    and l
    ld c, c
    ret


    adc $ce
    pop hl
    cpl
    db $fd
    rst $38
    add c
    ld a, a
    or e
    db $d3
    ld h, h
    and l
    call nz, Call_000_2bc4
    dec hl
    db $e4
    rst $28
    ld de, $ce77
    cp $58
    ld a, e
    rra
    db $10
    rst $38
    ldh a, [$cf]
    call c, $ee23
    ld [hl], e
    cp $0f
    db $fc
    rst $18
    xor b
    adc a
    adc b
    inc b
    ld d, $0f
    dec c
    cp $02
    cp $04
    rst $08
    nop
    inc b
    rla
    dec b
    ld a, $7e
    dec a
    ld h, a
    ei
    adc $f7
    inc e
    rst $30
    inc a
    rst $08
    ld a, b
    rst $38
    ld l, b
    rst $38
    ld d, b
    ld b, a
    rst $38
    push de
    call Call_034_45c4
    and $27
    cp $03
    inc b
    sub h
    ld [de], a
    adc a
    ld hl, sp-$01
    ld [hl], b
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    add b
    inc b
    ld d, $0f
    ld c, l
    inc b
    ldh [$1f], a
    ld bc, $0240
    ld [$00ff], sp
    rst $38
    inc bc
    db $fc
    rlca
    db $fc
    dec b
    ld a, [$fb0a]
    dec bc
    ei
    dec bc
    ld_long a, $ff0a
    inc b
    rst $38
    ld b, $ff
    add e
    cp $83
    ld a, a
    pop bc
    ld a, a
    ret nz

    ccf
    ld h, b
    sbc a
    cp b
    rst $38
    ld [$f0ff], sp
    nop
    rst $38
    ret nz

    ld a, a
    cp h
    sub e
    ei
    ldh [$7e], a
    ldh [$af], a
    ld [$0120], sp
    ld bc, $07fe
    db $fd
    ld a, e
    sub e
    cp [hl]
    rrca
    ld a, h
    rrca
    ld [$40ff], a
    rst $38
    pop bc
    cp $83
    cp $83
    db $fc
    ld b, $fd
    rlca
    ld sp, hl
    dec c
    ld a, [c]
    dec sp
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ld b, b
    cp a
    ldh [$08], a
    ld e, b
    ld [bc], a
    cp $1e
    ld a, [$f51a]
    dec d
    or $16
    ld [$eb2e], a
    cpl
    db $eb
    cpl
    ld [$c72e], a
    sbc $a1
    and a
    cp [hl]
    cp [hl]
    ld [hl], b
    ldh a, [rNR41]
    ld h, b
    ld b, h
    ld e, h
    add h
    sbc h
    adc c
    sbc c
    ldh a, [$df]
    di
    rst $30
    ld e, e
    ld e, [hl]
    ld d, [hl]
    db $76
    or a
    or l
    ld e, e
    ld e, e
    db $f4
    push af
    ld c, $0e
    rra
    or $9f
    rst $38
    or l
    rst $30
    push de
    db $dd
    db $dd
    ld a, l
    or l
    cp l
    ld b, a
    ld l, a
    ret


    rst $28
    add $f7
    ld a, [bc]
    rst $08
    ei
    rst $38
    inc e
    db $fc
    add hl, bc
    ld hl, sp+$47
    push af
    ld b, e
    ei
    ld [hl+], a
    ccf
    rst $38
    ldh a, [$bf]
    or b
    ld e, a
    ld [hl], b
    rst $18
    ldh a, [$af]
    ld hl, sp+$08
    cp b
    ld [bc], a
    push de
    ld e, l
    ld [$02c0], sp
    and l
    cp l
    xor d
    cp e
    ld [$00ca], sp
    sub d
    sub [hl]
    jp $86d7


    sub [hl]
    add l
    sub a
    add l
    add a
    adc b
    adc a
    ld c, b
    rst $08
    ld b, h
    rst $00
    ld [bc], a
    inc bc
    inc bc
    inc bc
    db $fd
    db $fd
    sub d
    sub d
    inc c
    inc c
    ldh a, [$f0]
    ld d, b
    ret nc

    ld a, b
    ld hl, sp-$6f
    sbc a
    ld h, c
    ld a, a
    add c
    cp a
    ld bc, $017d
    db $fd
    ld [bc], a
    ei
    inc b
    ld [hl], a
    inc c
    rrca
    sub e
    sbc a
    add a
    sbc a
    jp Jump_034_43cf


    rst $08
    ld b, e
    rst $00
    ld [hl+], a
    rst $28
    inc h
    rst $28
    ld b, h
    rst $08
    ld d, a
    db $fc
    ld [$1210], sp
    ld c, e
    cp $ab
    ld [$1119], sp
    xor d
    cp e
    and [hl]
    cp a
    and $7f
    and $7f
    ld [c], a
    ld a, a
    ld a, [c]
    ccf
    di
    ccf
    pop af
    rra
    add h
    adc a
    add d
    adc e
    rst $10
    rst $18
    cp e
    cp [hl]
    add a
    adc h
    ld b, a
    call z, $cc47
    cp a
    db $fc
    cpl
    rst $28
    ld l, d
    ld [$a3e3], a
    db $f4
    dec [hl]
    add sp, $28
    ret c

    ld e, b
    call nz, $8344
    add e
    ld hl, sp-$01
    xor h
    cp a
    adc a
    cp e
    ld e, a
    ld hl, sp+$2f
    ld l, b
    scf
    ld a, a
    ld b, h
    ld a, a
    add d
    cp [hl]
    ld b, d
    rst $10
    add d
    sbc a
    sub $df
    cp d
    cp a
    jp nz, $c44f

    ld c, a
    push bc
    rst $08
    ld a, e
    rst $38
    xor e
    cp $cb
    cp $cf
    db $fc
    rst $08
    db $fc
    adc a
    db $fc
    sbc a
    ld hl, sp-$61
    ld hl, sp+$1f
    ldh a, [$f1]
    rra
    ei
    rrca
    ei
    ld c, $ff
    ld b, $ff
    ld b, $ff
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $e4e7
    db $e3
    ld h, $e9
    dec hl
    db $eb
    dec hl
    ei
    dec de
    db $fd
    rrca
    rst $38
    ld b, $ff
    nop
    add d
    adc d
    add a
    xor a
    add a
    and [hl]
    bit 1, [hl]
    di
    ld [hl], $e7
    ld h, $fd
    rra
    ei
    dec bc
    and d
    cp [hl]
    and c
    cp a
    and c
    cp a
    sub c
    sub a
    jp $e347


    ld h, e
    jp $e746


    ld l, h
    ld c, a
    ld e, a
    adc a
    cp a
    dec hl
    ld a, [hl]
    xor e
    cp $b7
    or $77
    ld [hl], h
    rst $30
    call nc, $15f7
    rra
    ldh a, [$08]
    ld e, b
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    ld [$0320], sp
    ld [$1fdf], sp
    ld [$0ffd], sp
    pop af
    inc de
    ld a, [$fd1f]
    dec a
    rst $38
    ld bc, $03fe
    rst $38
    inc bc
    rst $38
    nop
    rst $18
    ld e, h
    rst $00
    call z, $fdff
    add a
    cp h
    inc bc
    ld a, [hl]
    sub l
    cp a
    ld a, a
    ld l, d
    push af
    dec d
    rst $30
    ld [hl], h
    adc a
    adc b
    rst $38
    ldh a, [$08]
    jr nz, @+$05

    add b
    ld a, a
    ld [$1ddf], sp
    ld b, b
    ld [bc], a
    inc b
    rst $38
    inc b
    rst $38
    rst $38
    ld c, l
    inc b
    add hl, bc
    inc b
    inc bc
    db $fc
    rlca
    ld hl, sp+$0c
    ldh a, [rNR24]
    inc b
    ld [$3001], sp
    rst $18
    ldh a, [$1f]
    ldh a, [rIF]
    ld a, a
    dec de
    cp h
    inc a
    daa
    inc b
    ld [$c007], sp
    ccf
    ld [hl], b
    rst $08
    cp b
    inc b

jr_034_5ca5:
    ld [$0707], sp
    ld sp, hl
    inc e
    and $3b
    inc b
    ld [$1801], sp
    rst $30
    ld e, $f1
    rra
    ldh [$fd], a
    or b
    ld a, d
    ld a, b
    ret


    inc b
    ld [$8005], sp
    ld a, a
    ret nz

    ccf
    ld h, b
    rra
    jr nc, jr_034_5ca5

    ld sp, $32e0
    pop bc
    ld h, e
    pop bc
    ld h, l
    pop hl
    push hl
    rst $30
    sbc a
    rst $38
    add hl, bc
    cp $02
    ld c, a
    ld e, a
    or a
    db $fd
    ld b, e
    and $8f
    xor a
    db $10
    ld [hl], $f0
    rst $38
    add b
    rst $38
    nop
    cp $77
    xor [hl]
    ld d, l
    rst $28
    adc b
    rst $38
    ret nc

    rst $38
    and h
    rst $28
    jp c, $a9ff

    cp a
    sub [hl]
    rst $10
    db $dd
    db $eb
    ld d, l
    rst $28
    inc hl
    cp $17
    rst $38
    ld c, d
    cp $b6
    rst $38
    ld a, [hl+]
    ei
    jp nc, $e4d6

    push af
    jp c, $857e

    rst $08
    db $e3
    db $eb
    ld de, $1fd9
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    rrca
    jr jr_034_5d26

    sbc b
    rlca
    adc h
    rlca
    ld c, h
    rrca
    ld c, [hl]
    rst $18
    ld a, [c]
    rst $38
    jr nz, @+$01

    add b
    cp $03

jr_034_5d26:
    db $fc
    dec b
    inc b
    ld [hl+], a
    ld [de], a
    rst $38
    rlca
    ld sp, hl
    rrca
    rst $38
    dec bc
    inc c
    rst $38
    jp nz, Jump_000_2ef3

    rst $28
    ld a, $f2
    rst $38
    rst $20
    dec a
    push hl
    cp c
    ld a, c
    ret z

    ld a, b
    ld d, a
    ld a, l
    ld a, [hl+]
    xor e
    ld d, l
    rst $30
    ld c, e
    rst $38
    adc a
    db $fc
    add e
    rst $38
    add b
    rst $38
    pop bc
    rst $38
    call nc, $a87d
    xor e
    ld d, h
    rst $18
    and h
    cp $e3
    ld a, a
    add e
    rst $38
    inc bc
    rst $38
    ld b, $fe
    ld h, b
    rst $38
    add [hl]
    sbc a
    add sp, -$15
    ld hl, sp-$65
    cp $cf
    ld a, c
    ld c, a
    dec sp
    dec a
    daa
    dec a
    inc b
    cp b
    nop
    inc b
    ld [hl], d
    ld [de], a
    rst $38
    ret nz

    ccf
    ldh [rIE], a
    and b
    db $fd
    rrca
    ld_long a, $ff0e
    dec bc
    rst $38
    inc c
    inc b
    ld [$ac04], sp
    or h
    jr c, jr_034_5dc4

    ld hl, sp-$28
    db $e4
    inc h
    call nz, $c244
    ld b, d
    ret nz

    ld b, b
    ldh [rNR41], a
    ld h, [hl]
    ld a, [hl]
    ld e, b
    ld e, e
    jr nz, jr_034_5dd4

    db $10
    inc e
    inc c
    ld c, $03
    inc bc
    nop
    nop
    add b
    add b
    call z, $34fc
    or h
    ld [$10d8], sp
    ld [hl], b
    ld h, b
    ldh [$80], a
    add b
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld l, e
    ld e, e
    jr c, jr_034_5df4

    ccf
    scf
    ld c, a
    ld c, b
    ld b, a
    ld b, a
    add h
    add h

jr_034_5dc4:
    rlca
    rlca
    rrca
    ld [$e07f], sp
    cp a
    ldh [rIE], a
    and b
    rst $38
    ld h, b
    rst $38
    add b
    ld a, a
    ld b, b

jr_034_5dd4:
    cp a
    and b
    rst $38
    ld [hl], b
    inc b
    ld [$0103], sp
    inc b
    and $11
    nop
    rst $38
    nop
    ld hl, sp+$18
    pop af
    ld [hl], c
    add e
    add d
    ld b, e
    ld b, d
    cp a
    cp h
    rst $38
    ld hl, sp+$04
    ld [$f000], sp
    ldh a, [$fc]

jr_034_5df4:
    inc c
    inc b
    dec bc
    ld de, $0904
    inc bc
    ld e, $1e
    ld a, a
    ld h, c
    inc b
    db $db
    nop
    inc b
    ld [$3f04], sp
    jr nc, jr_034_5e27

    inc e
    add e
    add d
    add l
    add l
    ei
    ld a, e
    rst $38
    ccf
    inc b
    ld [$cf00], sp
    ret z

    sub a
    sub h
    db $d3
    ld d, d
    rst $08
    ld c, h
    rst $38
    jr c, jr_034_5e23

    ld [$4002], sp
    ld [bc], a

jr_034_5e23:
    ld b, $ff
    ld b, $ff

jr_034_5e27:
    rst $38
    add hl, sp
    ld bc, $01ff
    ld b, $00
    ld bc, $ff04
    jr @+$01

    ld l, b
    rst $38
    sub b
    cp a
    ld d, b
    ld a, a
    and b
    ld b, $00
    rrca
    ld [de], a
    inc bc
    db $fc
    dec c
    push af
    ccf
    add sp, $7d
    and b
    ld hl, sp-$7f
    or e
    ld b, $00
    ld bc, $ff80
    ldh [$3f], a
    cp b
    ld e, a
    ld d, b
    rst $28
    xor h
    ld h, a
    and l
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    inc e
    rst $38
    jr z, @+$01

    ld d, b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    ret nz

    ld b, $32
    rrca
    inc c
    ld bc, $0fff
    ld a, [c]
    ccf
    pop de
    db $fd
    xor d
    rst $28
    db $ed
    push bc
    xor a
    jp nz, $d8ae

    ld [bc], a
    rst $28
    ld bc, $00b9
    ld h, b
    inc a
    ld a, h
    or $da
    xor b
    ld [hl], b
    ld hl, sp-$7c
    db $fd
    ld a, e
    jp $8f42


    adc l
    ld c, $0b
    inc e
    rla
    inc a
    cpl
    ld a, b
    ld e, a
    push af
    cp a
    ld_long $ff6e, a
    add b
    ld a, a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    ld [hl], a
    db $fc
    sbc a
    sbc h
    rrca
    ret z

    rrca
    add sp, $06
    inc a
    ld c, $fe
    ld [bc], a
    ld b, $22
    inc d
    ld b, $4e
    nop
    ld a, l
    ld l, e
    ld a, $ff
    rrca
    ld a, a
    inc e
    rst $38
    ld [hl+], a
    ld a, a
    ld bc, $017f
    ccf
    add b
    sbc b
    cp a
    adc $f1
    inc de
    ldh [$e7], a
    jr nz, jr_034_5ef6

    ldh [$e7], a
    db $10
    ld [hl], b
    ld e, $fe
    ld sp, $caf1
    rst $08
    inc c
    dec c
    db $fc
    db $fd
    adc [hl]
    cp $81
    rst $38
    nop
    ccf
    nop
    inc d
    nop
    nop
    rlca
    call nz, $e407
    rlca
    call nz, $8407
    rrca
    adc b
    rrca
    adc b
    rra
    db $10
    ccf

jr_034_5ef6:
    jr nz, jr_034_5efe

    ld [hl-], a
    rrca
    add hl, bc
    cp $02
    rst $38

jr_034_5efe:
    inc bc
    db $e3
    ld h, e
    rst $38
    ccf
    adc $7b
    sbc h
    db $f4
    cp e
    rst $28
    ld [hl], b
    ld e, a
    rst $38
    cp a
    ret nz

    ld [hl], b
    ccf
    ld l, $ff
    push af
    rrca
    adc $0f
    ld a, [$be87]
    ld h, c
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ldh [$e0], a
    sbc a
    sbc a
    sbc b
    sbc b
    pop hl
    pop hl
    add b
    add a
    nop
    rst $38
    rlca
    rst $38
    ld a, b
    ld hl, sp-$21
    ret nc

    rrca
    ld [$3c37], sp
    rst $00
    db $fc
    rra
    ld hl, sp-$19
    db $e4
    rlca
    ld [hl], h
    rlca
    db $f4
    ld b, $00
    dec c
    ld [bc], a
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    inc d
    rst $28
    jr c, @+$01

    jr nc, jr_034_5f54

    nop
    nop
    add c
    pop hl
    rlca
    ld [hl], a

jr_034_5f54:
    rst $38
    ld b, $f4
    db $10
    ld a, a
    rst $38
    rst $38
    ld b, $00
    ld bc, $069f
    sub d
    ld bc, $ffc0
    ret nz

    rst $38
    add b
    ld b, $00
    nop
    ldh a, [$91]
    cp $0e
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    ld b, $00
    nop
    rrca
    db $ec
    rra
    ret c

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp+$06
    nop
    rrca
    ld bc, $0240
    ld [$08ff], sp
    rst $38
    rst $38
    add hl, bc
    ld bc, $1c08
    inc bc
    ld e, $ff
    ld h, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld de, $2aff
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    ld d, b
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    cp h
    ld [$0912], sp
    rlca
    rst $38
    ld a, [bc]
    ld [$0700], sp
    ret nz

    cp a
    ldh [$df], a
    ld [hl], b
    ld [$0b16], sp
    ld bc, $06ff
    db $fd
    ld a, a
    rst $38
    add a
    db $fc
    inc b
    cp $02
    rst $38
    rlca
    ld a, a
    add b
    cp a
    ret nz

    rst $38
    and h
    rst $38
    ld d, c
    rst $38
    ld l, d
    rst $18
    rst $38
    xor $ca
    rst $38
    or l
    rst $38
    adc [hl]
    rst $38
    ld [hl], c
    rst $38
    xor a
    rst $30
    ld e, h
    rst $38
    call c, $e467
    rst $28
    ld l, b
    rst $28
    xor c
    rst $28
    add hl, hl
    rst $18
    pop de
    rst $38
    ld a, e
    rst $38
    sbc [hl]
    rst $30
    rra
    rst $20
    inc a
    rst $20
    cp a
    ld [hl], l
    sbc a
    add hl, de
    rst $38
    sbc a
    ld a, [c]
    rst $38
    ret nc

    rst $38
    ld l, b
    rst $38
    add sp, -$01
    add sp, $7f
    call nc, $d47f
    rst $38
    sub h
    rst $38
    sub h
    cp $02
    cp $02
    db $fd
    dec b
    db $fd
    dec b
    ld sp, hl
    add hl, bc
    di
    ld [de], a
    rst $20
    inc h
    rst $00
    ld b, h
    rst $18
    rst $20
    ret z

    rst $38
    jr z, @+$01

    ld sp, $13ff
    cp $8b
    ld a, [hl]
    rst $00
    ld a, $c7
    ld a, $ff
    ret nz

    ld a, a
    call nz, $ea7b
    ld sp, hl
    sbc c
    rst $38

Call_034_603b:
    rlca
    db $fc
    rla
    rst $28
    ccf
    rst $20
    ld a, $dd
    ld d, e
    ld a, [$e767]
    ld a, a
    rst $38
    ld a, b
    rst $38
    db $e3
    db $fc
    rrca
    ld hl, sp-$01
    rst $28
    rst $38
    ld a, a
    push hl
    rst $38
    call $1ff7
    ld [$877b], a
    rst $38
    inc b
    db $fd
    inc b
    db $fc
    ei
    ei
    ld a, a
    ld l, b
    rst $38
    add sp, $3f
    db $ec

jr_034_6068:
    sbc e
    cp $87
    db $fc
    daa
    db $fc
    ld d, a
    db $f4
    dec hl
    ld a, [hl+]
    rst $08
    ld c, b
    adc a
    adc b
    adc a
    adc [hl]
    sbc a
    sub c
    sbc a
    sub b
    rst $18
    ld d, b
    rst $18
    ld d, b
    rst $38
    jr nc, jr_034_6068

    rra
    rst $28
    dec de
    rst $38
    db $10
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld [$0028], sp
    rst $30
    inc e
    rst $38
    sub a
    cp $f3
    cp $33
    rst $18
    add hl, sp
    xor a
    ld e, c
    ld e, a
    cp a
    db $fd
    ld a, a
    sbc a
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [rNR44], a
    db $fc
    ld c, a
    ldh a, [rBGP]
    ld hl, sp-$20
    rst $38
    sbc a
    rst $38
    cp $6e
    rst $38
    ld sp, $28ff
    rst $38
    inc l
    rst $38
    ld a, [bc]
    rst $38
    ld [de], a
    dec e
    rst $30
    db $e4
    rst $38
    sbc a
    sbc [hl]
    rst $38
    ldh a, [$df]
    ld d, b
    rst $38
    jr nz, jr_034_60d2

    nop
    inc bc
    add b
    rst $38
    db $10
    ld [$001c], sp

jr_034_60d2:
    cp $03
    ld [$1486], sp
    rst $38
    add h
    cp $59
    cp l
    ld h, e
    sbc a
    cp $4f
    ld a, [c]
    ccf
    db $fc
    rra
    ld hl, sp+$3f
    pop hl
    ld d, h
    db $dd
    db $e4
    db $fd
    jp nz, $c17e

    ld a, a
    add b
    rst $38
    db $e3
    rst $38
    sub h
    rst $38
    inc b
    rst $08
    ld b, a
    db $fc
    ld b, e
    rst $38
    ld b, c
    rst $38
    add a
    rst $38
    add hl, bc
    rst $38
    sub b
    rst $38
    ld d, b
    db $fc
    ld c, c
    ld a, c
    ret z

    ld a, a
    ldh a, [rIE]
    ld a, a
    rst $08
    ld [$0028], sp
    ld a, a
    ret nz

    ld [$0128], sp
    ld [$10c9], sp
    ret nz

    ld [$0600], sp
    cp $03
    rst $38
    inc bc
    ld [$0800], sp
    cp $c3
    ld [$1ae2], sp
    inc d
    sub h
    rst $20
    rst $20
    ret nz

    ld b, c
    ldh [rNR41], a
    ldh a, [$30]
    db $ec
    inc l
    rst $28
    cpl
    rst $38
    jr nc, @+$49

    ld a, a
    add c
    db $fd
    ld bc, $62f1
    ld h, d
    sub a
    or a
    sbc a
    cp b
    rst $18
    ret nc

    rst $38
    jr nz, @+$0a

    add $12
    ld a, a
    ld b, b
    ld [$18d4], sp
    ld [$0800], sp
    ld b, b
    ld [bc], a
    inc b
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    or c
    rst $38
    ld c, b
    rst $18
    ld l, h
    rst $38
    ld [hl], $fd
    dec e
    ld hl, sp+$08
    rst $38
    nop
    rst $38
    ldh a, [$ef]
    inc e
    rst $20
    sbc d
    push bc
    ld e, e
    push bc
    ld b, e
    add l
    add d
    add c
    add d
    rst $38
    inc b
    rst $38
    ldh a, [rDIV]
    ld hl, $6002
    cp a
    ldh [$bf], a
    ldh [rDIV], a
    jr nz, @+$09

    ld bc, $3a04
    ld bc, $2104
    ld b, $80
    ld a, a
    ldh [$1f], a
    ld hl, sp+$04
    jr nz, jr_034_619b

    inc b
    ld hl, $f401
    inc e
    ld a, [c]
    ld a, [de]

jr_034_619b:
    db $e3
    ld sp, $34e3
    db $e3
    inc [hl]
    pop bc
    ld h, [hl]
    ret z

    ld h, a
    db $cd, $63, $0d
    ld c, $3f
    ld [hl], $19
    rra
    sbc b
    sbc a
    ei
    ld l, a
    rst $30
    cp [hl]
    rst $38
    cp c
    bit 7, [hl]
    inc b
    inc l
    nop
    cp a
    ldh a, [$3f]
    db $ec
    dec sp
    xor $bf
    and $fd
    ld d, a
    db $fd
    rst $10
    inc b
    ld a, [hl-]
    inc bc
    ld bc, $03fe
    cp $03
    cp $23
    db $fd
    daa
    rlca
    db $fc
    inc bc
    cp $01
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    inc b
    ld b, h
    dec b
    ret nz

    ccf
    ldh [$3f], a
    ldh [$1f], a
    ldh a, [$c5]
    ld l, e
    rst $00
    ld l, d
    adc e
    add $9b
    add $9f
    push bc
    inc b
    ret z

    ld [bc], a
    push bc
    ld a, a
    add [hl]
    rst $38
    add l
    rst $38
    adc l
    ei
    rrca
    ld sp, hl
    rra
    ldh a, [$1f]
    ldh a, [rNR22]
    ld sp, hl
    ld a, l
    rst $10
    ld a, h
    call $ebbe
    sbc $77
    rst $28
    dec a
    rst $30
    rst $38
    ld a, [$fd9f]
    rlca
    cp $66
    sbc $ff
    sbc $f3
    db $dd
    rst $30
    ld e, [hl]
    add d
    ld a, a
    or e
    call $4ffd
    db $ed
    ld b, b
    rst $38
    ld b, b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    db $e3
    rst $38
    sub a
    db $fc
    ld a, a
    sbc b
    ld a, a
    adc b
    rra
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    add a
    db $fc
    rst $20
    ld a, h
    di
    ld e, $fb
    ld c, $04
    ret z

    ld [bc], a
    rst $18
    ld b, l
    rst $18
    ld b, l
    rst $18
    ld b, h
    rst $08
    ld b, d
    rst $28
    ld [hl+], a
    db $10
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    ld hl, sp+$1f
    ldh a, [$bf]
    ldh [$bf], a
    pop hl
    rst $38
    ld h, d
    ld e, $e3
    rst $28
    di
    call c, $fcf7
    scf
    db $fc
    dec d
    cp $ea
    rst $38
    add hl, de
    cp $05
    adc a
    rst $20
    ld a, l
    db $fd
    and d
    rst $28
    ld e, [hl]
    rst $38
    jr z, @+$01

    inc d
    inc e
    db $eb
    rst $38
    add l
    rst $28
    ld a, a
    ret z

    ld e, a
    ld h, h
    cpl
    or d
    ld a, a
    reti


    ld a, a
    ld c, c
    db $fd
    sub e
    ei
    ld d, $f7
    inc l
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    ld [bc], a
    inc b
    jr nz, jr_034_62a5

    rst $28
    ld [hl+], a
    rst $28
    ld [hl+], a
    rst $30
    ld [de], a

jr_034_62a5:
    rst $30
    ld [de], a
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    ld b, d
    rst $38
    ld b, e
    cp $0f
    rst $38
    inc sp
    rst $38
    inc e
    ldh a, [$1f]
    db $ec
    ccf
    ei
    ccf
    rst $38
    ld [de], a
    rst $08
    ld sp, hl
    rst $28
    cp b
    ld a, e
    call c, $9fbc
    rra
    ld [hl], e
    ld e, $f3
    ld e, $f3
    adc [hl]
    db $db
    sbc a
    push de
    rst $38
    ld h, l
    rst $38
    ld a, [bc]
    ld a, a
    add c
    sbc a
    ldh [$67], a
    ld hl, sp+$7b
    call c, $d8ef
    rst $38
    jr nc, @+$61

    or b
    sbc a
    di
    db $ed
    ld a, [hl]
    rst $30
    rst $38
    cp e
    sbc $fd
    ld h, a
    inc b
    jr nz, @+$05

    ldh [rIE], a
    ld a, [$0eff]
    rst $38
    ld e, $ff
    jp z, Jump_000_03ff

    inc b
    ld a, $09
    nop
    rst $30
    ld e, h
    rst $38
    jr @+$01

    sub b
    inc b
    jr nz, jr_034_6311

    pop hl
    inc b
    ld d, b
    ld a, [bc]
    dec l
    cp $c0

jr_034_6311:
    rst $38
    rst $38
    ld c, a
    ei
    and [hl]
    ei
    rst $28
    db $ed
    ccf
    rst $38
    ld a, [de]
    rst $38
    nop
    cp $43
    rst $38
    add e

Jump_034_6322:
    rst $38
    ld [bc], a
    inc b
    ld a, $07
    and [hl]
    rst $38
    ld b, d
    rst $38
    add b
    inc b
    jr nz, jr_034_6335

    ld b, b
    ld [bc], a
    dec d
    rst $38
    dec d
    rst $38

jr_034_6335:
    ld a, [$1561]
    nop
    ld bc, $fc03
    inc c
    ldh a, [rNR10]
    rst $28
    cpl
    rst $38
    ldh a, [$3f]
    ldh [$15], a
    nop
    ld bc, $3fc0
    jr nc, @+$11

    ld [$8487], sp
    jp $e443


    inc h
    dec d
    nop
    ld bc, $f807
    jr @-$1e

    jr nz, @-$3b

    ld b, e
    add a
    add h
    ld c, a
    ld c, b
    dec d
    nop
    ld bc, $7f80
    ld h, b
    rra
    db $10
    rst $28
    add sp, -$01
    ld e, $f9
    rrca
    dec d
    nop
    dec bc
    inc c
    rst $38
    ld d, c
    rst $38
    inc l
    rst $38
    inc de
    rst $38
    dec c
    rst $38
    ld [bc], a
    rst $38
    add hl, de
    rst $38
    inc d
    rst $38
    ld a, [bc]
    ccf
    ld h, b
    rst $38
    ret nz

    rst $38
    add c
    cp $4f
    cp $bf
    db $fc
    ld c, a
    db $fc
    or a
    cp $4b
    ldh [$60], a
    sub b
    sub b
    inc de
    inc de
    ld [de], a
    sub e
    inc hl
    db $e3
    inc l
    db $ec
    daa
    db $e3
    ld de, $0ff5
    inc c
    inc de
    ld [de], a
    sub c
    sub c
    sub b
    sub e
    adc b
    adc a
    ld l, b
    ld l, a
    ret z

    adc a
    db $10
    ld e, a
    ld sp, hl
    dec bc
    rst $38
    ld b, $ff
    inc bc
    rst $38
    push hl
    rst $38
    ld a, [$e57f]
    ld a, a
    jp c, $a4ff

    rst $38
    inc d
    rst $38
    ld l, b
    rst $38
    sub b
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    jr nc, @+$01

    ld d, b
    rst $38
    and b
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $0015
    dec b
    ld bc, $65f7
    di
    ld a, [c]
    ld sp, hl
    ld a, c
    db $fc
    sbc h
    cp $6c
    cp a
    or c
    sbc a
    sbc e
    rlca
    rlca
    rst $08
    rst $38
    ei
    ld hl, sp-$08
    db $fc
    ld [hl], l
    db $76
    adc d
    adc d
    and a
    and a
    ld d, d
    ld d, d
    and a
    and a
    rst $20
    rst $38
    cp a
    ld a, $3f
    ld a, a
    ld e, h
    call c, $a2a2
    ld c, e
    ld c, e
    sub l
    sub l
    set 1, e
    rst $18
    ld c, l
    sbc a
    sbc [hl]
    ccf
    dec a
    ld a, a
    ld [hl], d
    rst $38
    ld l, h
    ei
    ld a, [de]
    di
    or d
    pop bc
    pop bc
    rst $38
    ld b, b
    rst $38
    add b
    dec d
    nop
    ld [$02fe], sp
    cp $02
    db $fc
    inc b
    ld hl, sp+$08
    ld hl, sp+$08
    ldh a, [rNR10]
    rst $30
    rla
    rst $38
    add hl, sp
    inc b
    rlca
    rrca
    ld [$101f], sp
    dec de
    ld d, $37
    inc a
    ld a, b
    ld a, a
    ld hl, sp-$01
    db $fc
    ld a, a
    ld l, c
    jp hl


    ld e, $fe
    db $db
    ccf
    ld sp, hl

jr_034_644b:
    rra
    or $16
    ld [hl], b
    sub b
    ret nc

    jr c, jr_034_6463

    rst $38
    cpl
    cpl
    ldh a, [rIE]
    inc sp
    db $fc
    scf
    ld hl, sp-$21
    pop de
    rra
    jr nc, jr_034_6480

    ldh a, [rNR21]

jr_034_6463:
    ld sp, hl
    nop
    nop
    ret nz

Call_034_6467:
    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ret nc

    jr nc, jr_034_644b

    cp h
    sbc a
    di
    rst $18
    ldh a, [rIE]
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    jr nz, @+$41

    jr nz, jr_034_649e

    db $10

jr_034_6480:
    rst $18
    ret nc

    rst $38
    jr c, @+$01

    ld bc, $c415
    inc bc
    ld [bc], a
    rst $38
    ld b, $fb
    rrca
    ld a, [$fe0e]
    ei
    scf
    dec [hl]
    add a
    add h
    add a
    add h
    rst $08
    ld c, h
    rst $20
    ld h, h
    add e
    add d

jr_034_649e:
    ld b, a
    ld b, [hl]
    jr nz, @+$01

    ldh [rIE], a
    ldh [$3f], a
    ldh [$3f], a
    pop hl
    ccf
    rst $20
    ld a, $ff
    jr c, @+$01

    jr nz, @+$0b

    rst $38
    dec bc
    rst $38
    add hl, bc
    rst $38
    rrca
    cp $0f
    ld hl, sp-$31
    ld hl, sp-$01
    jr c, @+$01

    ld [$e0ff], sp
    rst $38
    or $fb
    ld a, [$72f3]
    and a
    and h
    dec d
    sub h
    db $10
    rst $00
    ld b, h
    dec d
    nop
    dec bc
    nop
    ld sp, hl
    rrca
    rst $38
    rlca
    dec d
    nop
    ld [$181f], sp
    rst $38
    dec d
    rra
    ld [bc], a
    dec d
    push af
    rra
    inc d
    rst $00
    ld b, h
    db $eb
    ld l, d
    pop bc
    ld b, c
    add d
    add d
    ldh [$e0], a
    rst $38
    rra
    dec d
    nop
    ld bc, $ff40
    ld h, b
    rst $18
    ldh a, [$5f]
    ld [hl], b
    sbc a
    ldh a, [$15]
    ld a, [c]
    ld [de], a
    ld b, b
    ld [bc], a
    inc b
    rst $38
    inc b
    rst $38
    rst $38
    rlca
    ld bc, $00ff
    rst $38
    inc bc
    inc b
    ld d, $03
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $08
    or h
    rst $30
    adc b
    sbc h
    inc b
    nop
    inc bc
    add c
    cp $8f
    rst $30
    rst $30
    ld e, d
    rst $18
    ld [hl+], a
    ld [hl], e
    inc b
    nop
    inc bc
    ldh [$1f], a
    ldh a, [rIF]
    rst $38
    nop
    rst $18
    nop
    ld de, $0004
    add hl, bc
    ret nz

    ccf
    ldh a, [rDIV]
    nop
    add hl, bc
    inc bc
    db $fc
    rra
    db $fc
    rlca
    ld hl, sp+$0f
    ei
    rrca
    ldh a, [rNR34]
    push hl
    ccf
    ret


    ld a, l
    ld sp, hl
    ld sp, hl
    rlca
    rst $38
    ld b, b
    adc $a6
    xor a
    and a
    cp l
    jp nz, $83f3

    sub a
    or h
    cp l
    ld c, h
    ld a, a
    sub e
    rst $10
    dec b
    push hl
    call $caed
    ld a, [hl]
    add [hl]
    sbc [hl]
    add e
    db $d3
    ld e, d

Call_034_6567:
    ld a, e
    ld h, l
    db $fd
    sub d
    rst $10
    nop
    rst $38
    ld [bc], a
    rst $08
    or e
    or e
    cp $ef
    cp [hl]
    db $e3
    rst $18
    pop af
    ccf
    pop af
    rst $38
    db $d3
    rra
    ldh a, [$7f]
    ld hl, sp-$01
    adc b
    rrca
    db $fc
    rst $38
    inc a
    rst $08
    db $fc
    dec bc
    ld a, d
    set 5, d
    db $e3
    ccf
    db $ed
    dec a
    jp hl


    add hl, sp
    db $eb
    dec sp
    call nc, $db77
    ld a, a
    call nc, $c47c
    ld a, h
    ld a, c
    rst $38
    ld b, l
    rst $00
    inc b
    jp nc, Jump_000_2500

    rst $20
    db $dd
    rst $38
    dec h
    ccf
    add hl, hl
    ccf
    call nc, $adf6
    ld a, l
    scf
    rst $38
    ld a, b
    rst $28
    rst $38
    or a
    ld e, a
    db $fd
    or [hl]
    or $dc
    ld a, h
    ld d, a
    rst $18
    ld l, a
    ld a, c
    db $db
    db $fc
    dec a
    xor $fa
    rst $18
    rst $30
    ld a, c
    sub $db
    db $76
    ld a, e
    xor $3a
    sbc $7a
    cp [hl]
    ld [$c5ff], a
    rst $38
    ld b, l
    ld a, a
    add $ff
    adc $f7
    call c, Call_034_4a4b
    ld d, e
    ld d, d
    or e
    or d
    di
    ld a, [hl]
    di
    ld a, [hl]
    ld d, e
    sbc $4f
    call z, $b8ff
    jp c, $d57e

    ld [hl], a
    jp nc, $e973

    add hl, sp
    add sp, $38
    db $f4
    inc e
    ei
    rrca
    db $fc
    rlca
    ld d, l
    ld [hl], a
    and l
    rst $20
    ld b, l
    rst $00
    adc d
    adc a
    dec d
    dec e
    ld l, h
    ld a, h
    sbc a
    rst $30
    ld a, b
    rst $38
    or $3e
    rst $18
    dec a
    rst $18
    rst $30
    jr c, @+$01

    rst $00
    rst $30
    ccf
    ccf
    add d
    add d
    ld b, d
    jp nz, $fbd6

    push af
    ld a, a
    push af
    rst $18
    jr c, @+$01

    rst $00
    rst $18
    ld a, [$85fa]
    add l
    sbc a
    sbc a
    xor [hl]
    db $fd
    sbc $f9
    cpl
    jp hl


    db $dd
    db $d3
    dec e
    inc de
    dec a
    inc hl
    ld a, [$fac7]
    ld b, $ff
    add b
    rst $38
    add b
    inc b
    ld e, d
    ld bc, $1fe0
    ldh a, [$1f]
    ldh a, [rVBK]
    ld hl, sp+$04
    ld e, $03
    inc b
    rst $38
    push af
    pop hl
    cp a
    add $7f
    ret nz

    ld a, [hl]
    pop bc
    ld e, l
    db $e3
    ld l, a
    rst $18
    ld a, [hl]
    xor $30
    pop af
    jr c, @+$24

    and d
    ld a, $3e
    ld a, [hl]
    ld b, d
    cp $82
    cp $42
    ld a, [hl]
    ld b, d
    rst $38
    ld b, c
    rst $38
    ret nz

    adc e
    adc h
    adc c
    adc [hl]
    add h
    add a
    add h
    add a
    add e
    add e
    call $33cd
    ld [hl-], a
    rst $08
    db $cc, $f3, $0f
    call nz, Call_000_063c
    cp $0b
    db $fd
    add hl, de
    ld a, [$f7ff]
    rst $38
    ld l, h
    reti


    ld e, a
    ld c, a
    ld a, b
    rra
    db $10
    ccf
    jr nz, @+$01

    ldh [rIE], a
    ld b, b
    rst $38
    ldh [rIE], a
    db $10
    rst $38
    ldh a, [rIE]
    ld bc, $07ff
    ld hl, sp+$0a
    ei
    rrca
    rst $38
    ld d, $ff
    rra
    inc b
    nop
    ld bc, $9bff
    xor $7f
    ld b, l
    ccf
    db $e3
    cp a
    db $fc
    rst $38
    ret nz

    inc b
    nop
    ld bc, $bf60
    ldh [rDIV], a
    ld a, [$0413]
    rst $38
    ld a, [c]
    jr nc, @+$06

    nop
    ld a, [bc]
    ld a, [c]
    ld a, $fc
    inc c
    cp $02
    inc b
    ld a, [de]
    ld bc, $ff04
    pop af
    cpl
    add sp, $6f
    ld a, h
    rst $38
    or h
    rst $38
    db $fc
    inc b

jr_034_66de:
    nop
    inc b
    ld b, b
    ld [bc], a
    ld [de], a
    rst $38
    nop
    rst $38
    jr @-$0f

    ccf
    db $f4
    ld [hl], a
    jp c, $eb7e

    ld l, a
    or e
    ld a, [$dc9f]
    rst $38
    ld [de], a
    rst $38
    ldh a, [rP1]
    rst $38
    add b
    rst $38
    sbc b
    rst $38
    jr nc, jr_034_66de

    ld [hl], b
    adc a
    ld hl, sp+$12
    db $10
    inc bc
    ld [de], a
    inc de
    ld [bc], a
    add b

jr_034_6709:
    rst $38
    ret nz

    ld [de], a
    jr nz, jr_034_6715

    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $12
    db $10

jr_034_6715:
    ld bc, $fe01
    inc bc
    cp $32
    rst $38
    add hl, de
    rst $30
    inc e
    db $e3
    ld a, $ff
    nop
    rst $38
    jr nc, jr_034_6715

    ld hl, sp+$5f
    call c, $fcb7
    xor a
    db $ec
    sbc e
    cp [hl]
    di
    db $76
    rst $30
    ld a, h
    rst $28
    dec h
    ld [$ea27], a
    ld h, a
    db $dd
    ld e, a
    ret nz

    ld c, [hl]
    ret nz

    ld c, [hl]
    ldh a, [$37]
    xor a
    ld hl, sp+$27
    cp a
    ld a, h
    ld a, h
    pop af
    pop af
    ret nz

    ret nz

    xor b
    db $ec
    ld d, h
    or $72
    rst $18
    cp a
    and b
    sbc $d6
    reti


    reti


    jr nc, jr_034_6709

    sub [hl]
    cp $66
    ld l, h
    add e
    db $e3
    pop hl
    push af
    ei
    ld a, [bc]
    rst $30
    rst $10
    ld [hl], $36
    add hl, de
    dec de
    jp nc, $ccfe

    ld l, h
    add d
    adc [hl]
    ld c, $5f
    db $eb
    ld a, $c9
    ei
    ld a, h
    ld a, l

jr_034_6777:
    ld e, $1f
    rlca
    rlca
    ld a, [hl+]
    ld l, [hl]
    ld d, h
    sbc $9c
    rst $30
    rst $18
    ld a, h
    rst $28
    ld c, b
    xor a
    ret z

    xor a
    call z, $f477
    rlca
    db $e4
    rlca
    db $e4
    rra
    ret c

    cp $1f
    db $e3
    inc sp
    ld [de], a
    jp nz, $c700

    ld h, a
    rst $00
    ld h, a
    add $67
    add $67
    ld [$f1bf], a
    rst $30
    ld sp, $12b7
    call nc, Call_000_2800
    xor e
    inc b
    dec b
    rla
    rla
    sbc l
    rst $30
    ld a, b
    sub b
    ei
    inc a
    rst $00
    ld [hl], a
    ret nz

    rst $38
    jr nz, jr_034_6777

    and b
    rst $38
    db $10
    ld a, a
    ld [hl], d
    rst $18
    dec a
    inc de
    cp a
    ld a, c
    rst $00
    db $dd
    rlca
    rst $38
    ld [$0a7b], sp
    rst $38
    ld de, $aefd
    ei
    rra
    rst $18
    add hl, de
    db $db
    ld [de], a
    inc b
    db $10
    add hl, hl
    xor e
    ld b, b
    ld b, c
    ret nc

    pop de
    rst $38
    ldh a, [$8f]
    sbc b
    ld [de], a
    ld [de], a
    db $10
    rst $00
    call z, Call_000_1812
    ld [de], a
    add $67
    adc [hl]
    rst $08
    sbc [hl]
    db $d3
    cp [hl]
    db $e3
    cp $c3
    cp $c3
    cp $83
    cp $83
    rla

jr_034_67fb:
    rla
    scf
    scf
    scf
    scf
    ccf
    ccf
    ccf
    ccf
    ld a, h
    ld a, h
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, c
    jr z, jr_034_67fb

    daa
    ld a, a
    and b
    ldh [$f4], a
    rst $38
    xor e
    db $db
    db $f4
    call $f67c
    dec sp
    ccf
    add hl, hl
    rst $28
    ret


    db $fd
    dec bc
    rrca
    ld e, a
    rst $38
    xor e
    or a
    ld e, [hl]
    ld h, [hl]
    ld a, h
    sbc $b8
    ld sp, hl
    ret nc

    pop de
    ret c

    reti


    ret c

    reti


    ld hl, sp-$07
    ld hl, sp-$07
    ld a, h
    ld a, l
    inc e
    dec e
    inc c
    dec c
    rst $00
    call z, $e6e3
    di
    sub [hl]
    ei
    adc [hl]
    rst $38
    add [hl]
    rst $38
    add [hl]
    rst $38
    add d
    rst $38
    add d
    cp $83
    cp $03
    cp $03
    rst $38
    inc bc
    ld [de], a
    ld a, [hl-]
    ld bc, $ff00
    nop
    ld b, b
    ld c, a
    ld b, b
    ld e, [hl]
    add c
    cp a
    add d
    cp [hl]
    add d
    cp [hl]
    jp $fd7f


    dec a
    ld hl, sp+$0a
    ld d, h
    ld d, a
    or b
    or a
    sub a
    sub b
    ld [hl], a
    ld [hl], b
    di
    call nc, $10f7
    ld a, [$fd09]
    add h
    ld d, h
    push de
    ld a, [de]
    jp c, Jump_000_13d3

    call c, $9e1c
    ld d, [hl]
    rst $18
    ld de, $21bf
    ld a, [hl]
    ld b, d
    inc b
    push hl
    inc b
    push af
    ld [bc], a
    ei
    add e
    ei
    add e
    ld a, [$fc87]
    ld a, a
    ld a, b
    ccf
    and b
    rst $38
    add d
    ld [de], a
    ld a, [hl+]
    ld bc, $d312
    ld [de], a
    ld [de], a
    ld hl, $0006
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $00ff
    ldh a, [rNR13]
    pop hl
    cpl
    jp $c75e


    db $ec
    and a
    db $fc
    ld c, a
    ld e, b
    rst $38
    ldh a, [rIE]
    nop
    cp $82
    ld [de], a
    db $ec
    db $10
    ld [de], a
    jr nz, jr_034_68ca

    cp $83
    ld [de], a
    ld [bc], a
    ld a, [hl+]
    rra

jr_034_68ca:
    sub b
    rrca
    add sp, -$79
    db $f4
    rst $00
    ld l, [hl]
    bit 7, a
    push hl
    dec [hl]
    rst $38
    rra
    ld [de], a
    call c, Call_000_1219
    db $db
    ld de, $0240
    ld bc, $00ff
    rst $38
    rlca
    rst $38
    add hl, de
    rst $20
    ld a, [hl-]
    rst $20
    ld e, a
    rst $38
    ld c, a
    rst $38
    sbc a
    sbc a
    db $fc
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    sub b
    rst $38
    xor b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld bc, $f0ff
    ld bc, $0f21
    rla
    inc bc
    ld bc, $0c20
    sbc a
    cp $ff
    sbc a
    rst $38
    adc a
    rst $38
    ld d, e
    rst $38
    ld h, c
    rst $38
    inc hl
    cp $03
    cp $03
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    adc a
    rst $38
    ld a, $c9
    rst $38
    ld b, l
    ld a, a
    and b
    cp a
    rst $00
    ld c, a
    ld a, [$f43e]
    inc a
    add sp, $28
    ld bc, $0010
    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    pop hl
    cp [hl]
    and $78
    ld l, b
    ld d, b
    ld d, b
    db $fc
    inc b
    ei
    dec bc
    ld a, [$fa0b]
    dec bc
    db $f4
    rst $30
    inc d
    rla
    inc [hl]
    scf
    ld [hl], h
    ld [hl], a
    rst $38
    add b
    ld a, a
    ld b, b
    rst $38
    ld bc, $0095
    ldh [$1f], a
    ldh a, [$1f]
    ldh a, [$2f]
    ld hl, sp-$03
    rlca
    ld bc, $00c0
    ei
    ld c, $ff
    ld c, $fb
    ld c, $ff
    inc e
    rst $20
    dec a
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ld sp, hl
    add hl, de
    and $3e
    push hl
    db $fd
    ret nz

    ret nz

    ld a, a
    ld a, a
    ld e, [hl]
    ld a, a
    ld b, b
    ld e, a
    and b
    and e
    pop hl
    ld h, e
    sbc $fe
    adc b
    ei
    ldh [$a0], a
    ld h, c
    pop hl
    ld b, c
    pop bc
    ld d, e
    db $d3
    ei
    db $eb
    or l
    push af
    add hl, de
    rst $38
    nop
    rst $38
    call nc, $94f7
    rst $10
    or h
    or a
    db $f4
    rst $30
    ld c, d
    ld l, e
    ld a, d
    ei
    ld c, d
    db $eb
    ld a, [$5ffb]
    ld hl, sp+$57
    db $f4
    ld d, a
    db $f4
    ld d, e
    ld a, [c]
    ld bc, $1016
    dec hl
    ld a, [$fa2b]
    ld [$fc7e], a
    ld a, h
    call c, $dc7c
    call c, $f6b2
    rst $18
    db $fd
    cp a
    ldh a, [rIE]
    ldh a, [rLY]
    ld a, l
    ld b, h
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ccf
    ccf
    rra
    jr @+$01

    ldh [rIE], a
    inc bc
    db $fc
    ccf
    ld [$08fb], sp
    db $eb
    inc e
    db $dd
    ld a, $3e
    rst $38
    rst $38
    rst $38
    ld a, a
    db $dd
    sbc $e6
    db $fc
    ld bc, $0121
    cp $07
    ld [hl], a
    cp $ff
    ld sp, hl
    ei
    ld h, d
    xor $cd
    ld a, l
    ld a, [hl+]
    xor e
    ld a, l
    ld a, l

Call_034_6a0a:
    db $fd
    db $dd
    cp l
    and l
    cp [hl]
    cp d
    ld l, $3a
    rst $08
    ld sp, hl
    add a
    db $fd
    dec hl
    ld a, [$fe17]
    dec bc
    cp $07
    cp $83
    cp $83
    cp $43
    ld a, [hl]
    ld b, a
    ld a, [hl]
    ld bc, $0c20
    ret c

    ld e, a
    sbc b
    sbc a
    sbc h
    sbc a
    adc [hl]
    adc [hl]
    add a
    add a
    pop de
    ld d, c
    ld bc, $00d2
    db $dd
    sbc $e3
    db $e3
    ld [hl], b
    ldh a, [$33]
    inc sp
    ldh a, [$f0]
    ei
    dec bc
    ld hl, sp-$78
    ld a, e
    ld c, e
    ld [hl], e
    di
    add a
    add a
    rrca
    rrca
    adc a
    adc a
    rrca
    add hl, bc
    adc a
    adc b
    rra
    db $10
    sbc a
    sub b
    add e
    cp $07
    rst $38
    ld [$1078], sp
    jr nc, jr_034_6a71

    db $10
    ldh [$e0], a
    call nz, $c344
    ld b, e
    and a
    cp [hl]
    rst $18
    call c, Call_034_6467
    ccf
    jr c, @+$41

jr_034_6a71:
    jr nz, @+$41

    jr nz, jr_034_6af4

    ld h, b
    cp a
    and b
    ld bc, $0c20
    ldh [rNR41], a
    jp nc, $8f52

    cp l
    rst $38
    rst $38
    ld bc, $0420
    ld a, h
    ld b, h
    cp a
    db $e3
    ld a, a
    ldh [rIE], a
    add b
    ld bc, $0420
    ccf
    jr nz, jr_034_6a95

    inc d

jr_034_6a95:
    ld bc, $2101
    dec b
    ret nz

    ld b, b
    ret nz

    ld b, b
    jp $ec43


    xor a
    ldh a, [$b1]
    ld hl, sp+$78
    rst $38
    rlca
    ld bc, $200e
    ccf
    jr nz, @+$01

    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$1f
    ld a, b
    rst $38
    ldh [rIE], a
    nop
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    inc bc
    ld bc, $02ff
    rst $38
    push bc
    rst $38
    xor d
    cp h
    ret c

    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    and b
    rra
    db $10
    rst $38
    add sp, $1f
    db $f4
    ld e, a
    ld [$0307], a
    dec b
    ld [de], a
    inc bc
    ld bc, $01ff
    cp $63
    rst $38
    cp a
    or b
    ld a, a
    rst $38
    ccf
    rst $38
    ret nz

    ret nz

    ccf
    sbc a
    ld h, b
    ldh [$df], a
    ccf
    ldh a, [$8f]
    rst $38
    nop

jr_034_6af4:
    rst $30
    rst $38
    ret nz

    rst $38
    jr nc, jr_034_6b19

    db $ec
    rst $20
    ld a, [de]
    rrca
    ld a, [c]
    rst $38
    ld c, $f3
    or $03
    or [hl]
    dec b
    nop
    ld bc, $fc03
    ld c, $f0
    ld e, $e0
    ccf
    ret nz

    ld [hl], a
    ret nz

    ld d, l
    rst $18
    ld [hl], a
    call c, $fe75
    ld a, [c]

jr_034_6b19:
    ld a, a
    rst $38
    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ld h, c
    ccf
    ld h, c
    rst $38
    db $fd
    rlca
    push af
    ccf
    rst $38
    rst $38

jr_034_6b2a:
    ret nz

    rst $38
    nop
    rst $38
    add b
    dec b
    nop
    nop
    ld a, h
    rst $18
    ld a, a
    db $e3
    cp $c3
    cp $03
    cp $03
    rst $38
    add hl, bc
    rst $28
    add hl, de
    rst $30
    jr jr_034_6b43

jr_034_6b43:
    rst $30
    nop
    rst $30
    add b
    rst $30
    nop
    ld [hl], a
    nop
    ld l, a
    nop
    ld l, a
    inc bc
    xor a
    add c
    xor a
    inc bc
    or [hl]
    dec b
    or b
    ld bc, $0376
    db $76
    rlca
    ld [hl], h
    rst $00
    db $f4
    daa
    db $ec
    ret nz

    ld e, l
    ldh [$3f], a
    ldh [$3f], a
    ldh a, [$3b]
    ldh a, [$3b]
    ld hl, sp+$2e
    db $f4
    ld l, $fa
    rla
    rra
    pop af
    add hl, bc
    rst $38
    rlca
    cp a
    ld bc, $00bf
    db $fd
    nop
    push af
    nop
    rst $10
    nop
    sbc $ff
    nop
    rrca
    ldh a, [$f0]
    rst $38
    adc a
    rst $38
    ld h, b
    rst $38
    ld e, $d9
    rlca
    db $fc
    inc bc
    sub $d7
    jr c, jr_034_6b2a

    ld a, b
    inc sp
    db $fd
    db $eb
    db $fd
    ld b, $ff
    ld [bc], a
    rst $38
    add d
    ld a, a
    jp nz, $813f

    xor a
    add b
    xor a
    pop bc
    ld l, a
    ret nz

    ld l, [hl]
    ldh [$2e], a
    ldh [$36], a
    ldh [rPCM12], a
    ldh a, [$95]
    cpl
    add sp, -$31
    add sp, -$61
    ret nc

    rra
    ret nc

    ccf
    and b
    dec b
    ld a, b
    nop
    rst $38
    ret nz

    db $fd
    inc de
    rst $38
    dec d
    cp $09
    db $fc
    inc de
    db $fd
    inc de
    cp $23
    ei
    scf
    db $fc
    ld c, a
    nop
    cp $07
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    cp l
    nop
    or l
    ldh [$f7], a
    ld a, [de]
    rst $38
    ld [hl], c
    push af
    cp $8f
    rst $38
    xor a
    rst $38
    adc a
    ld [hl], b
    rst $38
    nop
    cp l
    nop
    xor l
    nop
    rst $28
    rst $20
    rra
    rst $38
    adc d
    rst $38
    jp nc, $f3fe

    ld e, $bb
    rlca
    cp a
    rlca
    db $ed
    inc bc
    ld l, [hl]
    ret nc

    dec [hl]
    ldh a, [$75]
    ld c, a
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    ld e, a
    rst $38
    ret nz

    rst $38
    dec b
    ld [hl+], a
    nop
    ld a, a
    sub b
    ccf
    ret nc

    dec b
    db $76
    db $10
    ld a, a
    sub b
    ld a, a
    sub b
    ei
    ld c, h
    rst $38
    ld c, b
    rst $38
    cp b
    rst $38
    sbc b
    rst $28
    sbc b
    rst $38
    ld a, h
    rst $18
    ld a, a
    rst $38
    ld h, b
    db $f4
    ld c, $fa
    ld b, $f9
    rlca
    db $fd
    rrca
    rst $38
    ld [bc], a
    rst $38
    ld bc, $e1ff
    rst $38
    dec e
    nop
    ei
    ld bc, $93db
    rst $18
    cp $ff
    db $fc
    rst $28
    cp $03
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rla
    ld a, [hl]
    ld a, a
    cp $83
    rst $38
    rra
    pop hl
    ld a, a
    add c
    dec b
    cp b
    db $10
    di
    adc [hl]
    ldh [$3f], a
    sbc $7f
    ret nz

    ld a, a
    ldh [$3f], a
    rst $38
    rra
    pop af
    dec d
    dec b
    jp z, Jump_034_7f10

    and b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    dec b
    adc d
    ld [bc], a
    rst $38
    nop
    ret nz

    ld a, a
    and h
    rst $38
    db $fc
    rst $38
    jp $a87f


    rst $38
    ldh a, [rIE]
    call nc, $ff7f
    ld a, e
    rra
    db $e3
    inc bc
    db $fc
    dec b
    rst $10
    inc d
    jr @+$01

    rst $38
    rst $20
    rst $38
    inc b
    ei
    adc h
    ei
    ld c, h
    ld a, c
    adc $7e
    rst $00
    ld a, a
    pop bc
    dec b
    adc d
    nop
    rst $28
    inc e
    rra
    ld hl, sp-$01
    ld l, [hl]
    rst $38
    inc bc
    rst $38
    add hl, bc
    ccf
    add $c7
    db $fd
    rst $38
    ccf
    rst $38
    ld c, $05
    nop
    ld bc, $0580
    ld h, l
    ld de, $d905
    inc de
    dec b
    nop
    ld [$0240], sp
    ld [$08ff], sp
    rst $38
    ldh a, [rSB]
    rst $38
    ld bc, $0008
    ld bc, $ff08
    ldh a, [rSVBK]
    rst $38
    jp hl


    ld a, $f7
    inc a
    db $ec
    pop de
    db $db
    pop bc
    ld h, l
    db $e3
    dec sp
    rst $38
    dec e
    rst $38
    add b
    ld a, a
    ldh [$3f], a
    ld [hl], b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld h, b
    rra
    ld [hl], b
    ld [$0508], sp
    ld [$0f31], sp
    rla
    inc c
    ei
    ld a, [bc]
    db $fd
    dec b
    rst $38
    inc bc
    cp $02
    ld [$0304], sp
    ld bc, $02ff
    rst $38
    inc c
    ld sp, hl
    adc [hl]
    ld sp, hl
    adc a
    db $fc
    rst $08
    ld a, e
    rst $18
    rst $38
    ldh a, [rIE]
    sbc h
    cp a
    jp z, Jump_000_21df

    ld d, a
    cp c
    ld a, e
    db $fd
    add a
    cp a
    ld de, $087f
    jr nc, @+$09

    add b
    ld a, a
    ld b, b
    cp a
    and b
    ld [$0f30], sp
    dec c
    cp $02
    rst $38
    inc bc
    db $fd
    dec b
    ld sp, hl
    add hl, de
    ld [c], a
    inc hl
    rst $00
    ld d, a
    push bc
    ld e, a
    add d
    sub e
    ld sp, hl
    db $db
    ld [hl], h
    db $dd
    db $e4
    db $f4
    ld b, [hl]
    xor $c4
    call nc, $b4e4
    db $e4
    ld l, h
    and h
    db $fc
    inc c
    ld l, a
    ccf
    cp e
    ld d, a
    rst $28
    ld l, $f1
    sbc c
    rst $38
    ld a, [hl]
    ld a, a
    ld b, h
    ld a, a
    inc bc
    ld a, a
    rst $18
    ret nc

    rst $28
    add sp, -$49
    db $f4
    sbc e
    ei
    ld e, [hl]
    ld [hl], a
    xor h
    cp a
    db $fc
    rst $30
    sbc [hl]
    ld a, [c]
    ld [$0508], sp
    add a
    ld a, a
    call nz, $457c
    cp [hl]
    and d
    ld [$0508], sp
    ret nz

    rst $38
    jr nc, jr_034_6d8c

    ld hl, sp+$7f
    inc b
    add c
    adc l
    add b
    adc d
    add b
    add h
    add c
    add c
    pop bc
    ld b, c
    pop bc
    ld b, c

jr_034_6d8c:
    pop hl
    ld hl, $19f9
    ld [c], a
    cp $b2
    cp $91
    ei
    inc e
    rst $18
    inc b
    ld b, a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $3b00
    nop
    inc bc
    jr c, jr_034_6dde

    add a
    add a
    ld [hl], b
    pop af
    ld h, b
    ldh [$5f], a
    rst $38
    and b
    cp a
    adc e
    rst $38
    rrca
    call z, Call_000_3c37
    rst $00
    cp $0f
    ld sp, hl
    dec d
    ld sp, hl
    rst $20
    ld hl, sp+$07
    ldh a, [rIE]
    ld d, c
    cp $2a
    cp $16
    ld sp, hl
    dec bc
    ld hl, sp+$09
    db $fc
    add h
    cp $e2
    sbc l
    push af
    rlca
    inc e
    inc bc
    ld e, $0f
    ld [bc], a
    rlca
    ld [bc], a
    sub a
    sub d
    ld a, a
    ld [$663f], a

jr_034_6dde:
    ld a, a
    ld [hl], d
    cp $06
    cp $02
    ld [$026a], sp
    ld [$1082], sp
    cp $02
    adc c
    adc c
    db $10
    ld [$1192], sp
    ld [hl], b
    ld [hl], b
    jr c, jr_034_6e2e

    inc e
    ld [hl], h
    rra
    di
    rra
    rra
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    ld bc, $1310
    rst $28
    ldh a, [rNR34]
    pop af
    ld c, $f9
    inc c
    ei
    add hl, bc
    rst $38
    add hl, bc
    rst $28
    dec bc
    adc a
    sbc a
    sbc [hl]
    adc a
    db $db
    adc a
    sbc b
    rst $08
    ret c

    sbc a
    sub b
    rra
    db $10
    ccf
    jr nz, @+$01

    ldh [rIE], a
    and b
    rst $38
    ret c

    rst $38
    ld h, h

jr_034_6e2e:
    rst $28
    inc [hl]
    rst $38
    ld a, [de]
    rst $38
    ld b, $08
    ld [$0303], sp
    rst $38
    ld [bc], a
    ld [$0830], sp
    ccf
    ld h, b
    rst $38
    ldh [rIE], a
    add b
    ld [$0630], sp
    ldh a, [$f2]
    ldh a, [rNR11]
    ldh [rNR52], a
    pop bc
    ld b, a
    pop bc
    ld c, c
    db $e3
    cp $ff
    inc a
    rst $38
    jr z, @+$01

    ldh a, [rIE]
    add b
    ld [$18f4], sp
    ld [$0f30], sp
    dec c
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld de, $ff20
    db $10
    rst $38
    jr @+$01

    jr z, @+$01

    add hl, hl
    rst $28
    scf
    ld [bc], a
    nop
    ld bc, $ff04
    ld [$18ff], sp
    rst $38

Jump_034_6e7d:
    inc d
    rst $38
    sub h
    ld l, a
    ld [hl], h
    rst $38
    ld c, $fd
    dec b
    db $fd
    inc b
    db $fc
    ld b, $fe
    inc bc
    cp $03
    cp $13
    cp $1b
    ld [bc], a
    nop
    ld bc, $ff80
    ld b, b
    ld a, a
    jr nz, @+$41

    ld h, b
    rra
    ld [hl], b
    ccf
    ld d, b
    rst $38
    nop
    rst $38
    rlca
    ei
    inc c
    cp $09
    rst $38
    rra
    ld hl, sp+$18
    or $16
    di
    inc sp
    rst $38
    ld bc, $03ff
    rst $38
    add $7b
    xor d
    ei
    dec de
    rst $08
    adc a
    ld c, h
    ld c, h
    ld c, h
    ld a, h
    rst $20
    dec sp
    rst $30
    rra
    rst $38
    ld c, l
    rst $38
    sbc $fb
    db $db
    ld [hl], l
    ld [hl], l
    xor d
    xor d
    inc sp
    inc sp
    ld d, a
    db $ec
    cpl
    ld hl, sp+$7f
    or d
    cp a
    ld a, e
    cpl
    ld_long a, $ff67
    jp z, $b2ff

    rst $38
    or $9d
    ld a, [c]
    push de
    ld sp, hl
    ld l, d
    ret c

    ld a, b
    ld hl, sp-$28
    inc e
    db $f4
    ld l, h
    sbc l
    dec l
    call c, Call_000_087f
    ld [bc], a
    or b
    nop
    rst $38
    ld [$10ff], sp
    ld a, a
    sub b
    ccf
    ldh [$7f], a
    ret nz

    push hl
    daa
    db $f4
    dec [hl]
    cp $3e
    db $fd
    dec sp
    or $19
    rst $38
    ld d, $02
    jp z, Jump_034_4f00

    ld a, a
    rst $08
    rst $38
    and l
    cp l
    and l
    cp l
    rst $20
    cp $67
    db $fc
    rst $20
    ld a, h
    rst $20
    ld a, l
    inc a
    inc a
    cp l
    cp l
    db $fd
    db $fd
    di
    ld [hl], e
    rst $28
    cpl
    ld sp, hl
    ld a, c
    ei
    ld a, e
    xor $2e
    ld l, e
    rst $30
    and e
    rst $38
    pop bc
    rst $38
    inc sp
    cp $3f
    call z, $aa53
    inc bc
    cp $8f
    db $fc
    dec c
    db $fc
    jp hl


    db $fc
    sub e
    ldh a, [$b9]
    call c, Call_034_7cda
    xor $7c
    sub $6f
    jp z, $fff7

    ld b, b
    rst $38
    add b
    ld [bc], a
    ld d, h

jr_034_6f54:
    nop
    ld [bc], a
    ld d, $10
    ld a, a
    jr nz, jr_034_6fda

    jr nz, jr_034_6f54

    ld a, [de]
    cp $19
    ld a, [$fa1d]
    rrca
    rst $38
    dec c
    rst $38
    rrca
    ei
    rrca
    rst $38
    ld b, $e7
    ld a, l
    ld d, e
    rst $18
    sub e
    sbc a
    sub e
    sbc a
    ld e, a
    db $d3
    rst $18
    ld d, e
    cp a
    di
    rst $30
    cp d
    ldh a, [$b1]
    ld l, h
    ld l, l
    sub [hl]
    sub [hl]
    sbc a
    sbc a
    rst $38
    rst $38
    db $eb
    db $eb
    db $eb
    db $eb
    db $fc
    db $fc
    push af
    ld a, l
    ld c, a
    cp $98
    rst $38
    ld d, c
    cp [hl]
    sub e
    ld a, h
    db $10
    rst $30
    ld d, h
    or a
    and e
    ld h, a
    rst $30
    cp a
    ld sp, hl
    adc a
    ld a, l
    rst $00
    ld a, a
    rst $08
    ld a, a
    call $cc7f
    rst $38
    adc h
    rst $38
    inc c
    ld [bc], a
    ld e, b
    nop
    ccf
    ld h, b
    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    ld [bc], a
    nop
    nop
    db $fd
    rlca
    cp $03
    rst $38
    ld bc, $0002
    ld b, $f7
    ld l, h
    cp a
    and h
    xor a
    cp b
    rst $18
    add sp, -$01
    ld [hl], b
    ld [bc], a
    nop
    ld [bc], a
    db $fc
    ld a, h
    xor $6e
    ei
    ld a, e
    rst $30
    ld [hl], $ff
    rra

jr_034_6fda:
    rst $38
    rra
    ei
    dec de
    ei
    ld a, [bc]
    inc hl
    xor $57
    call c, $acbf
    rst $08
    ld [hl], h
    xor a
    cp h
    sbc a
    ld hl, sp-$61
    ret z

    adc a
    ret c

    rst $38
    inc c
    ld [bc], a
    ret nz

    ld d, $f3
    nop
    di
    ld d, $02
    nop
    rrca
    ld [de], a
    ld [bc], a
    rst $38

Jump_034_6fff:
    ld hl, sp+$0f
    rst $38
    rrca
    di
    dec de
    di
    ld [hl], $ff
    inc a
    ld [bc], a
    nop
    ld [bc], a
    sbc a
    ret nc

    sbc a
    ret nc

    rst $38
    ldh a, [$9f]
    ldh a, [$8f]
    ret c

    rst $08
    ld h, h
    ld [bc], a
    ld [$f720], sp
    ld a, [de]
    di
    ld e, $f3
    ld [de], a
    ld [bc], a
    ret nz

    ld de, $0208
    nop
    rrca
    ld bc, $0240
    dec bc
    rst $38
    dec bc
    rst $38
    or $01
    cp $03
    db $fc
    rlca
    dec bc
    nop
    dec b
    ld a, b
    adc a
    add sp, $1f
    ret nc

    ccf
    and c
    dec bc
    nop
    dec b
    ld e, $e1
    ld a, a
    cp l
    rst $08
    sub e
    ld [hl], a
    dec bc
    nop
    ld bc, $ef10
    add hl, hl
    rst $00
    ld e, l
    add a
    cp h
    inc bc
    ld [hl], d
    ld bc, $0bb1
    nop
    inc bc
    ldh [$1f], a
    ld hl, sp-$79
    cp $c1
    ld a, l
    ldh [$38], a
    dec bc
    nop
    rlca
    dec bc
    rst $38
    ldh a, [$80]
    ld hl, sp+$0d
    ld hl, sp+$0a
    pop af
    dec d
    ld a, [c]
    ld a, [de]
    ld [c], a
    ld a, [hl-]
    push hl
    dec [hl]
    call nz, $c474
    ld [hl], h
    ld a, a
    ld b, d
    cp $83
    db $fd
    add a
    rst $38
    add l
    ld a, a
    ld sp, hl
    ccf
    pop hl
    rst $38
    pop bc
    sbc a
    ldh [$f1], a
    ld a, a
    and b
    cp a
    dec b
    rst $18
    ld b, $ff
    add h
    rst $38
    inc b
    rst $38
    ld [bc], a
    ld a, a
    add b
    cp a
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    add hl, bc
    db $fd
    ld [$0c28], sp
    ld h, h
    pop af
    cp l
    ld hl, sp-$62
    db $f4
    sbc a
    ld h, d
    ld a, e
    ld [hl], c
    ld [hl], a
    add sp, -$23
    db $f4
    ld c, [hl]
    inc h
    ccf
    rst $38
    ret nz

    ccf
    jr nz, jr_034_70de

    db $10
    rrca
    adc b
    rla
    call nc, $cc8f
    adc a
    xor $4b
    ld l, d
    ret z

    ld l, b
    adc b
    add sp, -$78
    add sp, -$6d
    db $d3
    sub h
    rst $10
    sub l
    rst $10
    sub e
    db $d3
    sub [hl]
    rst $10
    cp a
    pop af
    ld c, a
    ld e, h

jr_034_70de:
    ld b, e
    ld a, d
    scf
    inc [hl]
    rst $08
    db $fc
    sbc e
    cp h
    cp c
    cp [hl]
    inc d
    rra
    ld a, [bc]
    rst $28
    adc h
    xor a
    ret z

    ld c, a
    db $e4
    ld h, $ea
    ld l, d
    ld sp, hl
    add hl, de
    ld h, a
    sbc a
    ld b, e
    cp a
    ld h, l
    push af
    ld [hl], e
    jp c, Jump_034_6e7d

    sbc b
    push af
    ld a, [hl]
    ld d, c
    ld a, a
    ld e, b
    rst $30
    db $f4
    rlca
    inc b
    cp b
    cp l
    ld h, b
    and $79
    ei
    and [hl]
    ld a, a
    or e
    ld a, e
    ei
    dec sp
    ldh a, [$3c]
    cp d
    ld a, a
    ld b, a
    db $e4
    ld b, e
    ld [hl], d
    xor e
    ld a, [$fa6b]
    ld h, a
    db $76
    and a
    or $a7
    or $67
    db $f4
    call c, $ddff
    rst $30
    rst $18
    di
    rst $08
    add sp, -$31
    ld l, b
    rst $08
    ld l, b
    rst $28
    ld a, b
    rst $28
    ld a, b
    or d
    cp e
    set 1, e
    rst $00
    and $c3
    ld h, d
    db $e3
    ld [hl-], a
    rst $38
    dec e
    cp $07
    ld hl, sp+$0f
    inc b
    cp $09
    db $fd
    ld a, [c]
    ei
    ret z

    ld e, a
    push bc
    ld l, a
    add d
    ld a, [$fa02]
    nop
    ld hl, sp+$7f
    ld a, h
    xor a
    rst $38
    ld a, a
    ld sp, hl
    cp a
    or b
    ld e, a
    ld d, b
    rrca
    inc c
    inc bc
    ld [bc], a
    ld bc, $6701
    rst $38
    add a
    rst $30
    rlca
    inc h
    adc a
    adc b
    rst $38
    ld [hl], b
    dec bc
    ld e, d
    ld [bc], a
    ld h, a
    ld [hl], h
    rst $20
    or h
    rst $20
    inc [hl]
    rst $28
    jr c, jr_034_718b

    db $76
    db $10

jr_034_7182:
    rst $18
    ld [hl], b
    rst $18
    ld d, b
    rst $28
    jr c, @+$01

    jr c, jr_034_7182

jr_034_718b:
    inc e
    rst $38
    inc c
    rst $38
    inc b
    dec bc
    nop
    ld [bc], a
    ldh a, [$1f]
    ldh [$3f], a
    dec bc
    sub d
    db $10
    pop af
    rra
    db $fc
    inc c
    rst $38
    inc bc
    cp $03
    db $10
    db $fc
    db $10
    ldh a, [$08]
    ret z

    ccf
    ccf
    rst $38
    ret nz

    ld a, a
    ld b, b
    dec bc
    xor d
    db $10
    ld b, b
    ld e, b
    ld b, b
    ld l, h
    add b
    cp a
    ldh [rIE], a
    ld hl, sp+$1f
    db $fc
    ld c, $f8
    ld c, $f1
    dec e
    ld a, a
    ld b, b
    ccf
    jr nz, jr_034_71d1

    jp nz, Jump_034_7f12

    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld h, b
    rst $38

jr_034_71d1:
    ld h, b
    rst $38
    ret nz

    dec bc
    db $cc, $11, $0b
    reti


    rra
    ld [bc], a
    db $fc
    rlca
    db $fc
    ld a, [hl]
    xor b
    cp [hl]
    jp hl


    jp hl


    rst $38
    ld a, [hl]
    dec bc
    ld e, b
    inc b
    dec bc
    nop
    ld hl, $ff0b
    push af
    jp hl


    dec c
    ld hl, sp+$0e
    ld hl, sp+$0e
    db $fc
    rlca
    dec bc
    ld d, $20
    rst $38
    inc bc
    dec bc
    db $fc
    dec d
    ldh [$5f], a
    ld hl, sp+$57
    ld d, h
    rst $38
    db $fc
    dec bc
    ret c

    ld e, $40
    ld [bc], a
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38

jr_034_720e:
    db $fc
    jr @+$01

    inc c
    ei
    ld c, $fb
    ld c, $f3
    ld e, $f3
    ld a, [de]
    di
    ld a, [de]
    ei
    ld [de], a
    ld a, [bc]
    nop
    ld bc, $ff04
    rlca
    cp $06
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $000a
    inc bc
    ld [hl], $f7
    rst $30
    ld d, l
    rst $10
    ld [hl], a
    ld [hl], a
    db $dd
    db $dd
    ld a, [bc]
    nop
    ld bc, $ff08
    jr c, jr_034_720e

    ret c

    ccf
    jr nc, @+$01

    ldh a, [rIE]
    ldh [$0a], a
    nop
    dec c
    ld a, [bc]
    rst $38
    ei
    rst $30
    ld [hl+], a
    rst $20
    inc [hl]
    rst $00
    ld [hl], h
    rst $00
    ld h, e
    pop bc
    ld h, e
    jp $c766


    ld d, d
    di
    ld a, c
    rst $38
    nop
    rst $38
    ld bc, $63ff
    rst $18
    ret c

    rst $20
    daa
    ld a, [$ef1b]
    rrca
    rst $30
    scf
    db $e3
    db $e3
    db $e3
    rst $30
    db $e3
    ld a, a
    db $dd
    rst $38
    ld d, a
    cp b
    ld hl, $20ee
    jr nz, @+$01

    rst $38
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    adc a
    db $76
    or $56
    rst $18
    or l
    cp a
    push af
    rst $38
    ld a, [bc]
    nop
    dec b
    add b
    rst $38
    add b
    ld a, a
    ld [hl], b
    sbc a
    ret nc

    ld a, [bc]
    nop
    add hl, bc
    ld bc, $03fe
    ei
    dec c
    ei
    rrca
    db $fd
    dec e
    ld sp, hl
    dec sp
    rst $30
    rra
    db $ec
    ld a, a
    sbc d
    rst $38
    ld l, c
    rst $28
    db $d3
    ld [hl], a
    cp e
    ei
    ld [hl], e
    db $eb
    and c
    or l
    ld [hl], e
    ld [hl], d
    rst $10
    rst $00
    db $ed
    db $ed
    ld sp, hl
    ld sp, hl
    adc a
    rst $10
    ld a, c
    ld a, a
    xor [hl]
    or a
    and c
    cp e
    pop af
    rst $38
    and e
    cp e
    xor a
    xor a
    rst $38
    rst $38
    jr nz, jr_034_733d

    ret nz

    ei
    ld h, h
    cp $ff
    rst $38
    adc e
    adc [hl]
    db $eb
    xor $c5
    rst $00
    add l
    add a
    ld a, a
    ldh [$0a], a
    cp b
    nop
    ld a, [bc]
    nop
    ld b, $fc
    rlca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    di
    rra
    di
    ld e, $f7
    inc e
    rst $38
    inc c
    rst $38
    inc c
    add [hl]
    add a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    adc a
    adc [hl]
    jp nz, $c142

    ld b, c
    jp $ec43


    ld l, $c2
    jp nz, $e2e2

    jp nz, $8242

    add d
    add d
    add d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    pop af
    ld [hl], c
    db $fc
    rst $38
    ld a, b
    ld a, a
    ld [hl], d
    ld [hl], l
    ld [hl-], a
    dec [hl]
    ld [de], a
    ld d, l
    ld de, $0952
    adc d
    ld [$4589], sp
    ld b, a
    push bc
    ld b, a
    and d
    inc hl
    and d
    ld h, e
    ld h, d
    and e
    ld h, d
    and e
    ld [hl+], a
    db $e3
    ld b, d
    jp $b40a


    inc b
    ld a, [bc]
    ld [hl], h
    dec d
    inc b
    ld a, [bc]
    nop

jr_034_733d:
    ld a, [bc]
    db $fc

Jump_034_733f:
    ld a, [de]
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$0e
    db $fc
    ld c, $fc
    rrca
    ld a, [$fd0b]
    dec b
    ld hl, $4361
    jp Jump_034_43c3


    jp Jump_034_4343


    jp Jump_034_4141


    ld hl, $2161
    and c
    inc e
    ld e, l
    inc a
    ld a, h
    ld a, h
    ld a, h
    ld a, [hl]
    ld a, [hl]
    ld a, l
    ld a, l
    db $fd
    db $fd
    rst $30
    rst $30
    cp $fe
    ld b, d
    jp Jump_034_6322


    inc [hl]
    or a
    ld d, l
    rst $10
    ld d, l
    ld d, a
    ld h, l
    ld h, a
    ld [hl], l
    ld [hl], a
    cp e
    xor [hl]
    ld a, [bc]
    ld [hl], h
    inc de
    ld a, [bc]
    ld d, c
    rrca
    ld b, $fe
    ld [bc], a
    ld a, [bc]
    ld l, $05
    ld a, [bc]
    rst $38
    pop af
    and a
    rst $20
    sbc a
    db $db
    sbc $72
    rst $18
    ld [hl], a
    ld hl, sp+$38
    rst $38
    ccf
    rst $38
    ld h, b
    rst $38
    nop
    ld a, $22
    sbc a
    pop de
    ld a, a
    pop af
    rst $38
    pop hl
    ld a, [bc]
    inc d
    dec d
    db $ec
    cp a
    or b
    sbc a
    or b
    rst $28
    add sp, -$31
    ret c

    rst $28
    ld l, b
    rst $38
    jr nc, jr_034_73c0

    ld d, b
    ld c, $40
    ld [bc], a
    inc b
    rst $38
    inc b
    rst $38
    rst $38
    ld c, l

jr_034_73c0:
    inc b
    dec hl
    rrca
    rla
    ld bc, $02fe
    rst $38
    rlca
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$18
    ldh [$60], a
    add b
    add b
    ld [bc], a
    ld [bc], a
    ld bc, $f101
    pop af
    rst $38
    nop
    rst $38
    ret nz

    ccf
    jr nz, jr_034_741f

    jr nz, jr_034_7461

    ld b, b
    rst $38
    add b
    inc b
    ld a, [hl+]
    rrca
    ld d, $03
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    cp $0d
    db $fc
    rlca
    ld hl, sp+$0f

jr_034_73f8:
    rst $38
    inc b
    db $e4
    ld bc, $fcfb
    rst $20
    ld hl, sp-$31
    ldh a, [$0d]
    db $fd
    inc bc
    rst $38
    add c
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    rst $28
    rra
    rst $30
    rrca
    inc b
    ld a, [hl+]
    dec b
    add b
    rst $38
    ldh [$bf], a
    ret nc

    cp a
    call c, $2a04
    rrca

jr_034_741f:
    dec c
    cp $05
    rst $38
    dec e
    xor $31
    rst $38
    inc a
    db $fd
    ld b, $fb
    rrca
    ei
    inc c
    db $fd
    ld b, $cf
    ldh a, [$9f]
    ld hl, sp-$29
    db $fd
    rst $28
    jr nc, jr_034_73f8

    ldh a, [rIE]
    rst $28
    sbc [hl]
    rst $38
    ld a, [bc]
    rst $38
    ei
    rlca
    ld sp, hl
    rst $00
    ld a, e
    add $fe
    inc sp
    rst $38
    pop af
    ld a, [$fda5]
    add $ff
    add e
    rst $38
    jp nc, $c6fb

    rst $38
    ld c, $5f
    add sp, -$41
    ldh a, [$3f]
    ldh [$3f], a
    ldh [rIE], a
    ret nz

    inc b

jr_034_7461:
    or h
    rrca
    db $10
    inc b
    dec hl
    add hl, bc
    ret z

    rst $38
    ret z

    ld a, a
    db $ec
    scf
    rst $20
    dec sp
    di
    inc e
    ld sp, hl
    ld c, $fe
    rlca
    rst $38
    ld bc, $81ff
    rst $38
    add b
    inc b
    xor d
    inc bc
    ld bc, $867f
    rst $38
    ld hl, sp-$01
    ld h, b
    cp a
    sub $7f
    adc d
    rst $20
    inc a
    rst $38
    ld a, b
    inc b
    xor d
    rrca

jr_034_7490:
    jr jr_034_7496

    rst $18
    rra
    jr c, jr_034_74d6

jr_034_7496:
    ld [bc], a
    inc b
    rst $38
    ld bc, $03ff
    cp $03
    db $fd
    rlca
    db $fd
    rlca
    ei
    rrca
    ei
    rrca
    or $1f
    rst $38
    ldh a, [$5f]
    add sp, -$21
    add sp, $7f
    add sp, $7f
    add sp, $6f
    db $f4
    ld a, a
    push de
    rst $30
    sbc d
    rst $38
    ld b, $ff
    ld a, [bc]
    rst $38
    inc d
    rst $38
    add hl, hl
    rst $28
    ld e, d
    db $dd
    db $fc
    ei
    ld h, a
    cp $81
    rst $38
    inc e
    rst $30
    inc l
    rst $28
    ret c

    rst $18
    jr nc, jr_034_7490

    ld h, b
    ccf
    ldh [$7f], a
    ret nz

jr_034_74d6:
    rst $38
    add b
    rst $38
    rrca
    ld a, [$fb17]
    rla
    cp $17
    cp $17
    rst $30
    cpl
    rst $38
    dec l
    rst $28
    ld e, l
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ret nz

    cp a
    ldh [$bf], a
    ldh [rIE], a
    ld [hl], b
    rst $38
    ld d, b
    rst $38
    call c, $1ff6
    xor $3b
    inc b
    ld h, d
    nop
    sbc $73
    db $dd
    ld [hl], a
    rst $18
    ld [hl], l
    rst $18
    ld [hl], l
    rst $38
    adc l
    rst $38
    adc h
    rst $38
    adc h
    ei
    adc [hl]
    rst $38
    db $fc
    inc b
    ld d, b
    ld bc, $f79f
    ld bc, $31fb
    db $fd
    ld a, b
    db $ed
    ld sp, hl
    rst $30
    ld a, l
    jp z, Jump_034_733f

    cp $ff
    rst $30
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, c
    ld a, a
    ld [hl+], a
    rst $38
    and l
    ld a, a
    xor l
    rst $30
    ld a, l
    rst $38
    ld d, a
    db $dd
    or [hl]
    xor a
    ld a, [$fbee]
    xor a
    ld a, c
    rst $38
    pop af
    ld a, a
    pop de
    ld a, a
    call $baef
    rst $38
    cp d
    rst $28
    db $76
    ei
    sbc [hl]
    dec sp
    sbc $fb
    xor $7b
    adc $fb
    ld c, [hl]
    rst $18
    ld [hl], l
    db $dd
    ld [hl], a
    db $dd
    ld [hl], a
    db $fd
    ld h, a
    db $fd
    ld h, a
    db $fd
    ld b, a
    rst $38
    ld b, e
    rst $38
    ld b, e
    ld l, d
    cp [hl]
    db $dd
    push af
    db $fd
    dec h
    ei
    dec sp
    xor $5f
    reti


    cp a
    rst $38
    cp $f6
    ld e, c
    ld a, h
    ld l, [hl]
    cp $e9
    ld [hl], a
    rst $08
    db $ed
    sbc a
    db $db
    cp a
    cp a
    ld a, [hl]
    ld e, c
    rst $20
    rst $38
    rst $38
    sbc a
    sbc d
    sbc a
    ld a, [$b53f]
    ld e, a
    cp e
    rst $30
    rst $38
    cp $1e
    rst $20
    ld hl, sp-$01
    ccf
    jp z, $f2f7

    cp a
    cp $4f
    cp $a3
    ld a, a
    ld hl, $61bf
    ld e, a
    pop af
    rst $38
    pop de
    ei
    ld c, [hl]
    inc b
    db $10
    db $10
    ld a, a
    add $ff
    add $7f
    jp nz, $82ff

    rst $38
    add d
    rst $38
    ld bc, $2004
    inc de
    inc b
    rst $38
    ldh a, [rSB]
    rst $38
    rlca
    ld a, a
    rst $38
    ld a, [hl]
    ld c, d
    rst $28
    or l
    rst $30
    ld a, a
    sbc e
    db $fd
    rst $38
    rst $20
    rst $38
    ld b, d
    rst $38
    and d
    ld a, l
    ld a, a
    rra
    pop hl
    ld a, d
    ld sp, hl
    dec [hl]
    inc sp
    sub a
    xor a
    db $fd
    rst $38
    rst $38
    pop bc
    cp $87
    rst $28
    ccf
    ccf
    ldh [$d7], a
    rst $20
    xor e
    or e
    ei
    db $fc
    daa
    ld a, a
    ld a, a
    and b
    rst $28
    db $fc
    cp a
    pop de
    rst $18
    ld sp, $a1ff
    ccf
    ld h, b
    inc b
    inc a
    ld bc, $ff40
    jr nz, jr_034_7602

    sub b
    ld bc, $7104

jr_034_7602:
    rla
    ld hl, sp+$1d
    rst $20
    cpl
    rst $38
    ld a, b
    rst $38
    ret nz

    inc b
    ld [hl+], a
    inc d
    ld a, a
    ld a, e
    rst $00
    rst $28
    rst $38
    ccf
    rst $38
    ret nz

    db $e3
    ccf
    cp a
    ld a, l
    rst $38
    ldh a, [$9f]
    add sp, -$45
    rst $00
    db $ed
    di
    rst $38
    inc a
    rla
    cp $f2
    rst $38
    adc b
    rst $08
    rst $38
    ld a, a
    rst $38
    nop
    ei
    inc e
    or $f9
    rst $38
    rlca
    ld a, [hl-]
    rst $18
    add hl, de
    rst $38
    jp $fffe


    inc a
    rst $38
    nop
    cp a
    ld h, b
    rst $38
    ldh [rIE], a
    sbc b
    ccf
    rst $00
    rst $08
    ld a, [c]
    or $3d
    db $fd
    ccf
    rst $00
    cp $04
    ld [hl], b
    dec d
    add b
    rst $38
    add b
    inc b
    ld [hl], b
    dec d
    inc bc
    rst $38
    ld b, $ff
    dec bc
    rst $38
    rra
    rst $38
    dec b
    rst $38
    rrca
    rst $18
    ld l, b
    rst $28
    inc [hl]
    rst $20
    ei
    ld e, a
    db $fc
    or $ef
    rst $18
    ccf
    rst $38
    pop hl
    inc b
    ld h, $11
    inc b
    sub c
    ld [bc], a
    ld b, b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld bc, $02ff
    rst $38
    inc bc
    rst $38
    ld [bc], a
    inc b
    cp $14
    sbc e
    rst $38
    ei
    ld h, d
    sbc a
    rst $28
    rst $28
    ld a, [$9fff]
    inc b
    jp c, $8015

    rst $38
    ret nz

    inc b
    ld [hl], b
    ld d, $40
    ld [bc], a
    ld bc, $01ff
    rst $38
    rst $38
    ld c, l
    ld bc, $0f5f
    ld c, l
    ld bc, $0fbf
    ld c, l
    ld bc, $0fd9
    dec b
    ld b, $fd
    rlca
    cp $05
    rst $38
    inc b
    ld bc, $00d8
    rst $28
    ld l, $c1
    ld l, e
    add b
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    ld e, [hl]
    di
    ld bc, $03d8
    sbc [hl]
    ld h, c
    ld bc, $01d8
    inc c
    rst $38
    ld bc, $07d8
    add b
    rst $38
    ldh a, [rVBK]
    ld hl, sp+$01
    ret c

    rrca
    dec c
    ei
    ld a, [bc]
    ei
    rrca
    ld a, [c]
    rla
    db $f4
    rra
    db $e4
    ld l, $f2
    rra
    or $3e
    rst $38
    rrca
    sbc a
    pop af
    rrca
    ld hl, sp+$07
    rst $38
    ld b, h
    rst $28
    ld a, [$70ba]
    ld de, $fc6e
    add e
    ld sp, hl
    ld a, [de]
    ei
    adc [hl]
    ei
    adc d
    rst $38
    ld c, [hl]
    ei
    ld c, d
    rst $38
    add l
    rst $38
    add $ff
    rst $00
    db $fd
    ld b, a
    db $fc
    ld b, a
    db $fc
    ld b, e
    rst $18
    inc hl
    db $fd
    daa
    and $3f
    ld hl, sp+$7f
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    ld a, a
    ld bc, $1069
    ld bc, $0fd9
    rlca
    ld a, [bc]
    ei
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $30
    ld a, [de]
    db $fd
    inc a
    rst $38
    inc d
    ld bc, $00d8
    jp nz, $d775

    ld d, d
    jp nc, $ff65

    ccf
    rst $38
    inc h
    rst $38
    jr jr_034_7741

    ret c

jr_034_7741:
    nop
    ld h, a
    ld a, l
    ld a, a
    push hl
    cp $a7
    rst $30
    ld e, e
    rst $38
    ld l, [hl]
    ld bc, $03d8
    ld b, b
    ld a, a
    ret nz

    rst $38
    jr nz, jr_034_77c4

    ld h, b
    ld bc, $0fd8
    dec b
    ld b, b
    ld [bc], a
    ld b, $ff
    ld b, $ff
    rst $38

jr_034_7761:
    ld c, l
    ld b, $2b
    rrca
    rla
    ld bc, $02f3
    ei
    inc e
    ld b, $2a
    rlca
    ret nz

    rst $20
    jr nz, jr_034_7761

    ld b, $8f
    ld [$2b06], sp
    rrca
    ld [$01fd], sp
    ld b, $2a
    rlca
    jr c, jr_034_7787

    inc [hl]
    rst $38
    ld a, [$05ff]
    cp $3e

jr_034_7787:
    rst $18
    ld b, d
    rst $38
    cp l
    rst $38
    dec h
    rst $28
    ld [hl], $ff
    inc e
    cp $14
    ei
    ld a, [bc]
    db $fd
    sub l
    db $fc
    sub h
    cp $57
    ei
    sub $ff
    ld [hl-], a
    rst $38
    inc e
    cp a
    inc d
    rst $28
    jr z, @+$01

    ld l, b
    sbc a
    ld hl, sp+$0f
    ld hl, sp+$06
    ld l, d
    rrca
    rrca
    cp $03
    cp $02
    db $fd
    rlca
    ei
    ld c, $f7
    inc e
    rst $38
    jr @+$01

    db $10
    rst $38
    ld b, l
    rst $38
    adc d
    ei
    ld a, [bc]
    rst $38

jr_034_77c4:
    inc d
    rst $38
    inc d
    rst $30
    inc e
    rst $30
    inc d
    rst $28

jr_034_77cc:
    jr c, jr_034_77cc

    ld c, d
    cp a
    xor e
    rst $38
    and h
    rst $38
    and e
    rst $18
    sub b
    rst $38
    ld l, b
    rst $38
    rla
    db $fd
    dec c
    rrca
    ld hl, sp-$71
    cp b
    rst $38
    ldh a, [$df]
    ld [hl], b
    cp a
    ldh [rIE], a
    and b
    rst $38
    or b
    ld e, a
    ldh a, [rTMA]
    ld a, [hl+]
    rrca
    dec e
    rst $28
    jr c, @+$01

    jr @+$01

    ld [$06f7], sp
    dec hl
    dec b
    ld hl, sp+$08
    rst $30
    rlca
    ei
    rrca
    rst $30
    inc b
    ei
    rrca
    rst $38
    inc b
    rst $38
    rrca
    rst $38
    dec de
    rrca
    ld hl, sp+$0f
    ld a, h

Call_034_780f:
    rst $08
    db $fc
    ld c, e
    ld a, [hl]
    set 7, [hl]
    ld c, c
    ld l, l
    sbc c
    rst $38
    ld h, h
    or $06
    ld a, [hl+]
    ld [$10f7], sp
    xor a
    ld b, $ff
    rrca
    rrca
    ld b, $2b
    dec bc
    ld [$c62e], a
    ld b, [hl]
    cp $fa
    rst $38
    dec e
    rst $38
    ld a, [hl+]
    db $fd
    ld [hl], $06
    ld a, [hl+]
    nop
    cp h
    cp a
    inc a
    scf
    ld a, h
    ld l, l
    cp $9e
    rst $38
    dec hl
    rst $18
    ld b, $0b
    ld hl, $fcff
    add c
    cp h
    rra
    sbc $00
    cp $ff
    rst $38
    ld b, $2a
    ld a, [bc]
    ld a, a
    ld b, $2b
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_034_788f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_034_78fb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_034_7cda:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_034_7d3c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_034_7f10:
    nop
    nop

Jump_034_7f12:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
