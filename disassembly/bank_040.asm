; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $040", ROMX[$4000], BANK[$40]

    ld a, [$c6f2]
    rst $28
    ld b, $1b
    inc h
    ld b, b
    and c
    dec e
    adc l
    ld b, b
    ld b, $1b
    and c
    ld b, b
    and c
    dec e
    ret c

    ld b, b
    ld b, $1b
    ld a, [hl+]
    ld b, c
    and c
    dec e
    ld h, h
    ld b, c
    ld b, $1b
    dec e
    ld b, d
    and c
    dec e
    ld a, $42
    call Call_000_1fb1
    call Call_000_1273
    call Call_000_1770
    call Call_040_5197
    ld a, $40
    ld [$c6a1], a
    ld hl, $4271
    ld bc, $8000
    call Call_000_2bcc
    call Call_000_1721
    call Call_000_170e
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ldh [$a0], a
    ldh [$a2], a
    ld a, $d2
    ld [$c627], a
    ld a, $d2
    ld [$c628], a
    ld a, $d2
    ld [$c629], a
    xor a
    ld [$c625], a
    ldh a, [$fd]
    and a
    jr z, jr_040_406a

    ld a, $01
    call Call_000_312a

jr_040_406a:
    ldh a, [$fe]
    and a
    jr nz, jr_040_4074

    call Call_040_51ad
    jr jr_040_4077

jr_040_4074:
    call Call_040_51bc

jr_040_4077:
    call $1d1e
    ld a, $87
    ldh [rLCDC], a
    ld a, $01
    ld [$c6fe], a
    ld a, $78
    ld [$c610], a
    ld hl, $c6f2
    inc [hl]
    ret


    ld hl, $c610
    ld a, [hl]
    and a
    jr z, jr_040_4096

    dec [hl]
    ret


jr_040_4096:
    ld a, [$c60c]
    bit 0, a
    ret z

    ld hl, $c6f2
    inc [hl]
    ret


    call Call_000_1fb1
    call Call_040_5197
    xor a
    ld [$c625], a
    call Call_040_51ce
    ld hl, $cbc0
    xor a
    ld [hl+], a
    ld a, $62
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $1a
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call $1d1e
    ld a, $87
    ldh [rLCDC], a
    ld a, $01
    ld [$c6fe], a
    ld a, $3c
    ld [$c610], a
    ld hl, $c6f2
    inc [hl]
    ret


    ld hl, $c610
    ld a, [hl]
    and a
    jr z, jr_040_40e1

    dec [hl]
    ret


jr_040_40e1:
    call Call_040_40eb
    call Call_040_423f
    call Call_000_1a1d
    ret


Call_040_40eb:
    ld a, [$c60c]
    bit 6, a
    jr nz, jr_040_40fb

    bit 7, a
    jr nz, jr_040_410a

    bit 0, a
    jr nz, jr_040_4119

    ret


jr_040_40fb:
    ld a, [$cbc6]
    and a
    ret nz

    inc a
    ld [$cbc6], a
    ld a, $42
    ld [$cbc1], a
    ret


jr_040_410a:
    ld a, [$cbc6]
    and a
    ret z

    xor a
    ld [$cbc6], a
    ld a, $62
    ld [$cbc1], a
    ret


jr_040_4119:
    ld a, [$cbc6]
    and a
    jr z, jr_040_4124

    ld hl, $c6f2
    inc [hl]
    ret


jr_040_4124:
    ld a, $0c
    ld [$c6f2], a
    ret


    call Call_000_1fb1
    call Call_040_5197
    call Call_000_1770
    xor a
    ld [$c625], a
    call Call_040_51ec
    ld hl, $cbc0
    xor a
    ld [hl+], a
    ld a, $7a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $32
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call $1d1e
    ld a, $87
    ldh [rLCDC], a
    ld a, $01
    ld [$c6fe], a
    ld a, $3c
    ld [$c610], a
    ld hl, $c6f2
    inc [hl]
    ret


    ld hl, $c610
    ld a, [hl]
    and a
    jr z, jr_040_416d

    dec [hl]
    ret


jr_040_416d:
    call Call_040_4177
    call Call_040_423f
    call Call_000_1a1d
    ret


Call_040_4177:
    ld a, [$c60c]
    bit 6, a
    jr nz, jr_040_4187

    bit 7, a
    jr nz, jr_040_4196

    bit 0, a
    jr nz, jr_040_41a5

    ret


jr_040_4187:
    ld a, [$cbc6]
    and a
    ret nz

    inc a
    ld [$cbc6], a
    ld a, $6a
    ld [$cbc1], a
    ret


jr_040_4196:
    ld a, [$cbc6]
    and a
    ret z

    xor a
    ld [$cbc6], a
    ld a, $7a
    ld [$cbc1], a
    ret


jr_040_41a5:
    ld a, [$cbc6]
    and a
    jr z, jr_040_4218

    di
    ldh a, [$a3]
    push af
    ld a, $00
    ldh [$a3], a
    ld [$4100], a
    xor a
    ld hl, $a000
    ld bc, $2000
    call Call_000_1aaf
    pop af
    ldh [$a3], a
    ld [$4100], a
    ldh a, [$a3]
    push af
    ld a, $01
    ldh [$a3], a
    ld [$4100], a
    xor a
    ld hl, $a000
    ld bc, $2000
    call Call_000_1aaf
    pop af
    ldh [$a3], a
    ld [$4100], a
    ldh a, [$a3]
    push af
    ld a, $02
    ldh [$a3], a
    ld [$4100], a
    xor a
    ld hl, $a000
    ld bc, $2000
    call Call_000_1aaf
    pop af
    ldh [$a3], a
    ld [$4100], a
    ldh a, [$a3]
    push af
    ld a, $03
    ldh [$a3], a
    ld [$4100], a
    xor a
    ld hl, $a000
    ld bc, $2000
    call Call_000_1aaf
    pop af
    ldh [$a3], a
    ld [$4100], a
    ei
    jp InitStackPointer


jr_040_4218:
    xor a
    ld [$c6f2], a
    ret


    call Call_000_1fb1
    call Call_040_5197
    call Call_000_1770
    xor a
    ld [$c625], a
    call Call_040_51dd
    call $1d1e
    ld a, $87
    ldh [rLCDC], a
    ld a, $01
    ld [$c6fe], a
    ld hl, $c6f2
    inc [hl]
    ret


    ret


Call_040_423f:
    ld a, [$c626]
    and $0f
    cp $08
    ret nc

    ld hl, $5184
    ld de, $cbc1
    jr jr_040_424f

jr_040_424f:
    ld a, [de]
    add $10
    ldh [$b2], a
    inc e
    inc e
    ld a, [de]
    add $08
    ldh [$b3], a
    inc e
    ld a, [de]
    ldh [$b4], a
    inc e
    ld a, [de]
    ldh [$b5], a
    ld a, [$c600]
    ldh [$b1], a
    call Call_000_04ce
    ldh a, [$b1]
    ld [$c600], a
    ret


    ret z

    ld bc, $0301
    ld [bc], a
    ld [hl], $35
    ld l, e
    ld e, l
    ld a, a
    ld c, c
    db $76
    ret


    ld a, [hl]
    pop bc
    ld [hl], a
    bit 7, a
    ret z

    ld l, e
    call c, $fe49
    inc [hl]
    rst $38
    inc bc
    rst $38
    nop
    ld l, a
    nop
    rlca
    nop
    nop
    rst $18
    rst $18
    cp a
    ld h, b
    pop de
    ccf
    rst $18
    ccf
    ld d, l
    cp e
    and c
    rst $38
    ld a, [hl]
    cp $dd
    db $e3
    pop bc
    rst $38
    cp $7e
    ld a, [$4246]
    cp $fc
    db $fc
    nop

jr_040_42ad:
    db $fc
    nop
    ld hl, sp+$00
    nop
    ldh [$e0], a
    ret nc

    jr nc, jr_040_42c7

    ldh a, [$e0]
    ldh [$7f], a
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

jr_040_42c7:
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

jr_040_42d5:
    nop
    ld a, a
    nop
    ld b, a
    nop
    db $d3
    ld bc, $fefe
    rst $38
    ld [bc], a
    rst $38
    cp d
    ld b, a
    ld d, l
    xor $ab
    ld a, h
    rst $10
    jr c, jr_040_42d5

    inc e
    adc a
    ld [hl], b
    ld [hl], c
    cp $8e
    ld a, a

jr_040_42f1:
    and c
    ld a, [hl]
    db $dd
    ld a, $83
    ld a, h
    ld [hl], c
    cp $8e
    ld a, a
    rst $10
    jr c, jr_040_42ad

    ld [hl], b
    xor a
    ld [hl], b
    ld e, e
    db $e4
    ld d, l
    xor $b5
    adc $82
    rst $38
    cp $ff
    push af
    ld c, $b5
    ld c, [hl]
    ld c, e
    db $fc
    xor e
    ld a, h
    rst $10
    jr c, jr_040_42f1

    inc a
    dec h
    cp $db
    db $e4
    add e
    ld a, h
    ld a, l
    cp $a3
    ld a, h
    ld hl, $fefe
    rst $38
    ld hl, $a1fe
    ld a, [hl]
    cp [hl]
    ld a, a
    ld e, a
    ldh [rLCDC], a
    inc bc
    rst $38
    rst $38
    ld hl, $aaff
    ld [hl], a
    push de
    ld a, $d3
    inc a
    rst $10
    jr c, @+$01

    nop
    add a
    ld a, b
    ld a, e
    db $fc
    adc e
    ld a, h
    db $eb
    inc e
    db $eb
    inc e
    add hl, bc
    cp $fe
    rst $38
    add c
    ld a, [hl]
    ld a, [hl]
    rst $38
    add d
    ld a, a
    add d
    ld a, a
    ld a, [hl]
    rst $38
    add d
    ld a, a
    add d
    ld a, a
    ld a, [hl]
    rst $38
    ld a, l
    cp $01
    cp $fe
    rst $38
    ld [bc], a
    rst $38
    ld a, [$fa07]
    rlca
    add l
    ld a, [hl]
    ld a, e
    db $fc
    cp e
    ld b, h
    ld d, l
    xor $55
    xor $55
    xor $65
    cp $95
    ld l, [hl]
    srl h
    or a
    ld a, b
    rst $10
    jr c, @-$67

    ld a, b
    ld d, a
    ld hl, sp+$55
    ld_long a, $ff52
    ld d, d
    rst $38
    ld d, l
    cp $9b
    db $fc
    ld e, a
    ldh [$5d], a
    ld [c], a
    ld e, d
    rst $20
    ld e, d
    rst $20
    ld d, l
    xor $55
    xor $4b
    db $fc
    ld [hl], a
    ld hl, sp-$7f
    ld a, [hl]
    ld a, [hl]
    rst $38
    ld b, d
    rst $38
    ld e, d
    rst $20
    ld e, d
    rst $20
    ld e, d
    rst $20
    ld b, d
    rst $38
    ld a, [hl]
    rst $38
    ld bc, $fefe
    rst $38
    add d
    rst $38
    rst $38
    cp d
    rst $00
    ld [hl], l
    adc [hl]
    push af
    ld c, $8b
    ld a, h
    ld [hl], a
    ld hl, sp+$01
    cp $fe
    rst $38
    ld [bc], a
    rst $38
    add d
    ld a, a
    ld a, l
    cp $85
    ld a, [hl]
    adc e
    ld a, h
    ld [hl], a
    ld hl, sp+$1f
    ldh [$ed], a
    ld a, [c]
    ld a, [de]
    rst $20
    ld a, [$fa07]
    rlca
    push af
    ld c, $0b
    db $fc
    rst $30
    ld hl, sp-$2b
    cpl
    dec h
    rst $38
    db $fc
    rst $38
    dec h
    cp $a5
    ld a, [hl]
    ld d, l
    xor $55
    xor $ab
    call c, Call_040_7fa5
    dec h
    rst $38
    db $fc
    rst $38
    db $d3
    inc a
    ld de, $fefe
    rst $38
    add hl, bc
    cp $eb
    inc e
    add l
    ld a, a
    ld a, a
    rst $38
    ld b, d
    rst $38
    cp d
    rst $00
    ld [hl], l
    adc [hl]
    push af
    ld c, $cb
    inc a
    or a
    ld a, b
    or l
    ld c, a
    ld b, l
    rst $38
    ld a, [hl]
    rst $38
    ld c, c
    cp $ab
    call c, $9c6b
    rst $10
    jr c, jr_040_448a

    ldh a, [$f5]
    rrca
    dec b
    rst $38
    db $fc
    rst $38
    dec b
    cp $f5
    ld c, $f5
    ld c, $05
    cp $fd
    cp $55
    rst $28
    ld b, l
    rst $38
    sbc l
    cp $ff
    ld b, l
    cp $55
    xor $b5
    ld c, [hl]
    srl h
    or a
    ld a, b
    dec d
    rst $28
    push hl
    rst $38
    ld a, [de]
    rst $20
    ld [$1af7], a
    rst $20
    push af
    ld c, $05
    cp $fb
    db $fc
    dec b
    inc bc
    rst $38
    rst $38
    ld [bc], a
    rst $38
    push af
    ld c, $eb
    inc e
    db $db
    inc a
    dec h
    cp $da
    rst $20
    ld d, l
    rst $28
    ld b, l
    rst $38
    cp $ff
    ld b, e
    cp $55
    xor $5b
    db $e4
    ld b, c
    cp $7e
    rst $38
    ld [hl], l
    adc a
    or l
    rst $08
    cp d
    rst $00
    ld e, d
    rst $20
    cp d
    ld b, a
    push af
    ld c, $0b
    db $fc
    rst $30
    ld hl, sp-$7b
    ld a, a
    ld a, a
    rst $38
    ld b, d
    rst $38
    add d
    rst $38
    dec a
    cp $c5
    ld a, $cb

jr_040_448a:
    inc a
    or a
    ld a, b
    adc l
    ld a, a
    ld [hl], l
    rst $38
    ld [$feff], sp
    rst $38
    add hl, bc
    cp $eb
    inc e
    rst $10
    jr c, @-$4f

    ld [hl], b
    and l
    ld e, a
    ld d, l
    rst $38
    ld d, d
    rst $38
    ld d, d
    rst $38
    xor d
    ld d, a
    push af
    ld c, $8b
    ld a, h
    ld [hl], a
    ld hl, sp-$7b
    ld a, a
    ld a, a
    rst $38
    add b
    ld a, a
    cp $ff
    add hl, bc
    cp $eb
    inc e
    srl h
    or a
    ld a, b
    and l
    ld a, a
    and l
    ld a, a
    xor d
    ld [hl], l
    or c
    ld a, [hl]
    xor [hl]
    ld a, a
    and c
    ld a, [hl]
    xor a
    ld [hl], b
    xor a
    ld [hl], b
    rst $38
    nop
    rst $38
    rst $38
    nop
    jp $bd3c


    ld a, [hl]
    push bc
    ld a, $bd
    ld a, [hl]
    push bc
    ld a, $bd
    ld a, [hl]
    push hl
    rra
    push de
    ccf
    xor d
    ld e, l
    ld d, l
    xor $55
    xor $ba
    rst $00
    cp d
    rst $00
    ld a, d
    add a
    ld [hl], l
    adc a
    and l
    rst $18
    sbc d
    db $fd
    rst $20
    ld hl, sp-$61
    ldh [$bf], a
    ret nz

    add c
    cp $7e
    rst $38
    dec b
    rst $38
    db $fd
    rst $38
    inc b
    rst $38
    push af
    ld c, $eb
    inc e
    db $eb
    inc e
    sub a
    ld a, b
    ld l, a
    ldh a, [$f5]
    rrca
    push bc
    ccf
    or d
    ld a, l
    ld c, e
    db $fc
    or l
    adc $7a
    add a
    db $fd
    inc bc
    cp $01
    push de
    ccf
    dec d
    rst $38
    cp $ff
    ld de, $93fe
    ld a, h
    ld d, l
    cp $52
    rst $38
    sub d
    rst $38
    ld [$d517], a
    ccf
    xor d
    ld e, a
    ld d, l
    xor $55
    xor $ba
    rst $00
    cp d
    rst $00
    ld a, d
    add a
    ld a, d
    add a
    and l
    rst $18
    sbc d
    rst $38
    rst $20
    ld hl, sp-$61
    ldh [$bf], a
    ret nz

    add c
    cp $7e
    rst $38
    ld [bc], a

jr_040_454f:
    rst $38
    rst $38
    db $fd
    rst $38
    ld b, $ff
    push af
    ld c, $eb
    inc e
    db $eb
    inc e
    sub a
    ld a, b
    ld l, a
    ldh a, [$fa]
    rlca
    push bc
    ccf
    or d
    ld a, a
    ld c, c
    cp $b5
    adc $7a
    add a
    db $fd
    inc bc
    cp $01
    jp nc, Jump_000_153f

    rst $38
    cp $ff
    ld de, $13fe
    db $fc
    ld d, l
    cp $52
    rst $38
    sub d
    rst $38
    rst $38
    nop
    rst $38
    nop
    add e
    ld a, h
    ld a, l
    cp $85
    ld a, [hl]
    push de
    ld a, $93
    ld a, h
    ld l, a
    ldh a, [rIE]
    nop
    rst $38
    nop
    ei
    inc b
    push hl
    ld e, $9b
    ld a, h
    ld l, e
    db $fc
    adc e
    ld a, h
    db $eb
    inc e
    rst $38
    nop
    rst $28
    db $10
    sub e
    ld a, h
    ld a, l
    cp $45
    cp $b5
    ld c, [hl]
    srl h
    or a
    ld a, b
    rst $38
    nop
    rst $38
    nop
    add e
    ld a, h
    ld a, l
    cp $93
    ld a, h
    rst $10
    jr c, jr_040_454f

    ld a, h
    ld a, l
    cp $ff
    nop
    rst $30
    ld [$7c8b], sp
    ld a, l
    cp $8b
    ld a, h
    db $db
    inc a
    xor e
    ld a, h
    ld c, e
    db $fc
    rst $38
    sbc [hl]
    nop
    rst $38
    nop
    xor a
    ld d, b
    ld d, e
    db $fc
    ld d, l
    cp $a5
    ld e, [hl]
    srl h
    or a
    ld a, b

jr_040_45e0:
    rst $38
    nop
    db $db
    inc a
    cp l
    ld h, [hl]
    rst $38
    ld b, d
    rst $38
    ld b, d
    cp l
    ld h, [hl]
    db $db
    inc a
    rst $38
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

jr_040_45fa:
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, d
    nop
    rst $38
    rst $38
    nop
    cp e
    ld a, h
    ld l, l
    sbc $f7
    adc $ff
    add $df
    and $6d
    or $bb
    ld a, h
    rst $38
    nop
    rst $38
    jr @+$01

    jr c, jr_040_45fa

    jr c, @+$01

    jr @+$01

    jr @+$01

    jr jr_040_45e0

    ld a, [hl]
    rst $38
    nop
    rst $38
    ld a, h
    rst $10
    xor $7f
    adc [hl]
    rst $38
    inc a
    rst $30
    ld a, b
    rst $28
    ldh a, [rIE]
    cp $ff
    nop
    rst $38
    ld a, [hl]
    rst $38
    inc c
    rst $38
    jr @+$01

    inc a
    rst $30
    ld c, $b7
    adc $ff
    ld a, h
    rst $38
    nop
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    ld l, h
    rst $38
    call z, $feff
    rst $38

jr_040_4651:
    inc c
    rst $38
    inc c
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    ret nz

    rst $38
    db $fc
    rst $30
    ld c, $ff
    ld b, $b7
    adc $ff
    ld a, h
    rst $38
    nop
    rst $38
    inc a
    rst $28
    ld [hl], b
    rst $18
    ldh [rIE], a
    db $fc
    rst $10
    xor $d7
    xor $ff
    ld a, h
    rst $38
    nop
    rst $38
    cp $ff
    add $ef
    inc e
    rst $18
    jr c, @+$01

    jr nc, @+$01

    jr nc, @+$01

    pop de
    jr nc, @+$01

    nop
    rst $38
    ld a, h
    rst $10
    xor $d7
    xor $ff
    ld a, h
    rst $10
    xor $d7
    xor $ff

jr_040_4694:
    ld a, h
    rst $38
    nop
    rst $38
    ld a, h
    rst $10
    xor $d7
    xor $ff
    ld a, [hl]
    rst $30
    ld c, $ef
    inc e
    cp a
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add e
    ld a, h
    ld a, l
    cp $83
    ld a, h
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $f6
    rrca
    or $0f
    db $ed
    ld e, $eb
    inc e
    rst $10
    jr c, jr_040_4651

    ld [hl], b
    ld l, a
    ldh a, [$c3]
    inc a
    cp l

jr_040_46c8:
    ld a, [hl]
    ld b, d
    rst $38
    or d
    ld c, a
    db $ed
    ld e, $d3

jr_040_46d0:
    inc a
    rst $20
    jr @-$23

    inc a
    db $10
    rst $38
    stop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_040_4694

    ld a, b
    cp e
    ld a, h
    ld h, l
    cp $bd
    ld a, [hl]
    ld l, d
    rst $38
    sub d
    rst $38
    ld h, l
    cp $ff
    nop
    or e
    ld c, h
    ld d, l
    xor $5a
    rst $20
    ld e, d
    rst $20
    ld b, d
    rst $38
    ld d, l
    ld a, [$70af]
    rst $00
    jr c, jr_040_46c8

    ld a, h
    jp $9d3c


    ld a, [hl]
    ld h, d

jr_040_4713:
    rst $38
    sbc d
    ld h, a
    push bc
    ld a, $bb
    ld a, h
    rst $00
    jr c, @-$43

    ld a, h
    rst $00
    jr c, jr_040_479e

    cp $8b
    ld a, h
    rst $10
    jr c, jr_040_46d0

    ld a, [hl]
    ld d, [hl]
    rst $28
    db $dd
    ld [hl+], a
    and d
    ld a, a
    cp d
    ld a, a
    ld h, c
    cp $bd
    ld a, [hl]
    ld h, d
    rst $38
    xor d
    rst $30
    ld h, l
    cp $f7
    ld [$3ccb], sp
    dec h
    cp $f2
    rst $38
    ld c, d
    rst $38
    ld c, c
    cp $ab
    call c, $f837
    rst $28
    db $10
    sub a
    ld a, b
    ld a, l
    cp $89
    ld a, [hl]
    cp [hl]

jr_040_4753:
    ld a, a
    add l
    ld a, [hl]
    ld b, e
    db $fc
    cp l
    rst $38
    ld a, [hl]
    ei
    inc b
    push af
    ld c, $eb
    inc e
    rst $10
    jr c, jr_040_4713

    ld [hl], b
    rst $10
    jr c, jr_040_4753

    inc e
    push af
    ld c, $fb
    inc b
    and l
    ld e, [hl]
    ld e, [hl]
    rst $38
    ld b, l
    cp $55
    xor $55
    xor $a5
    ld a, [hl]
    db $eb
    inc e
    rst $38
    nop
    jp $bd3c


    ld a, [hl]
    jp nz, $f53f

    ld c, $bb
    ld b, h
    ld b, c
    cp $be
    ld a, a
    rst $28
    db $10
    sub e
    ld a, h
    ld a, l
    cp $8b
    ld a, h
    push af
    ld c, $b5
    ld c, [hl]
    ld b, e
    db $fc
    cp l
    ld a, [hl]
    cp a
    ld b, b
    ld e, a

jr_040_479e:
    ldh [$5f], a
    ldh [$5f], a
    ldh [$5f], a
    ldh [$5b], a
    db $e4
    ld b, l
    cp $bb
    ld a, h
    rst $30
    ld [$7e89], sp
    ld a, [hl]
    rst $38
    adc c
    ld a, [hl]
    cp e
    ld a, h
    xor e
    ld a, h
    sbc e
    ld a, h
    ld [hl], a
    ld hl, sp-$09
    ld [$48bf], sp
    ret


    ld a, [hl]
    ld a, [hl]
    rst $38
    ret


    cp $49
    cp $40
    rst $38
    cp l
    ld a, [hl]
    db $dd
    ld [hl+], a
    xor d
    ld [hl], a
    xor d
    ld [hl], a
    add l
    ld a, [hl]
    ld a, [hl]
    rst $38
    sub c
    ld a, [hl]
    and c
    ld a, [hl]
    rst $38
    sbc $3f

jr_040_47dc:
    rst $38
    nop
    rst $38
    nop
    or a
    ld c, b
    ld c, e
    db $fc
    cp l
    ld a, [hl]
    ld h, l
    cp $93
    ld a, h
    rst $10
    jr c, jr_040_47dc

    db $10
    sub a
    ld a, b
    ld a, l
    cp $a1
    ld a, [hl]
    ld c, [hl]
    rst $38
    ld b, c
    cp $91
    cp $ae
    rst $18
    rst $28
    db $10
    sub e
    ld a, h
    ld a, l
    cp $a3
    ld a, h
    ld e, l
    cp $62
    rst $38
    add d
    ld a, a
    db $dd
    ld a, $ff
    nop
    jp Jump_000_3d3c


    cp $c2
    rst $38
    ld a, [hl-]
    rst $00
    ld a, [$c507]
    ld a, $bb
    ld a, h
    ld sp, hl
    ld b, $c6
    ccf
    dec a
    cp $cb
    db $fc
    rla
    ld hl, sp-$29
    jr c, @-$15

    ld e, $f6
    rrca
    cp a
    ld b, b
    ld e, l
    ld [c], a
    ld d, d
    rst $28
    xor l
    ld a, [hl]
    or e
    ld a, h
    ld c, a
    ldh a, [rSTAT]
    cp $be
    ld a, a
    rst $18
    jr nz, jr_040_4868

    or $f6
    rst $38
    ld c, c
    or $45
    cp $9d
    cp $26
    rst $38
    reti


    ld a, $ff
    nop
    and c
    ld e, [hl]
    ld e, [hl]
    rst $38
    ld b, c
    cp $5f
    ldh [rBGP], a
    ld hl, sp+$49
    rst $38
    cp $b6
    ld l, a
    rst $30
    ld [$5cab], sp
    ld c, e
    db $fc
    ld e, l
    cp $6a
    rst $38

jr_040_4867:
    or a

jr_040_4868:
    rst $38
    xor d
    rst $38
    ld c, l
    cp $ff
    nop
    or e
    ld c, h
    ld c, l
    cp $d2
    rst $38
    ld h, d
    rst $38
    ld c, a
    rst $38
    jp z, Jump_040_4dff

    cp $ff
    nop
    jp $bd3c


    ld a, [hl]
    ld h, d
    rst $38
    xor d
    rst $30
    xor d
    rst $30
    xor d
    rst $30
    ld d, l
    xor $fb
    inc b
    ld b, l
    cp [hl]
    cp [hl]
    rst $38
    add l
    cp $a5
    sbc $9d
    cp $a6
    rst $38
    sbc c
    cp $df
    jr nz, jr_040_48cb

    db $f4
    push hl
    cp $56
    rst $28
    or l
    adc $b5
    adc $8b
    db $fc
    ld [hl], a
    ld hl, sp-$31
    jr nc, jr_040_4867

    ld a, b
    srl h
    and a
    ld e, b
    ld d, l
    ld a, [$dfaa]
    adc d
    rst $38
    dec [hl]
    ld a, [$00ff]
    rst $38
    nop
    rst $08
    jr nc, @-$47

    ld a, b
    ld c, e
    db $fc
    or l
    adc $7a
    add a

jr_040_48cb:
    db $fd
    ld [bc], a
    ld h, c
    sbc [hl]
    sbc [hl]
    rst $38
    and l
    sbc $9e
    rst $38
    and l
    sbc $9d
    cp $ff
    and [hl]
    rst $38
    ld e, c
    cp $ff
    nop
    rst $38
    nop
    rst $28
    db $10
    sub a
    ld a, b
    ld e, e
    db $fc
    ld [hl], l
    cp $5d
    cp $93
    ld a, h
    jp $bd3c


    ld a, [hl]
    srl h
    cp l
    ld a, [hl]
    srl h
    cp e
    ld a, h
    ld c, l
    cp $b3
    ld a, h
    add a
    ld a, b
    ld a, e
    db $fc
    sub e
    ld a, h
    and l
    ld a, [hl]
    ld a, l
    cp $a6
    rst $38
    push de
    xor $2b
    call c, Call_000_20df
    dec hl
    db $f4
    push af
    cp $2a
    rst $30
    ld l, l
    ld a, [c]
    xor d
    rst $30
    ld b, d
    rst $38
    cp l
    ld a, [hl]
    rst $30
    ld [$5cab], sp
    ld e, l
    cp $6a
    rst $38
    jp nc, $b2ff

    rst $38
    xor d
    rst $30
    push de

jr_040_492d:
    ld l, [hl]
    rst $28
    db $10
    sub a
    ld a, b
    ld a, e
    db $fc
    and a
    ld a, b
    ld a, c
    cp $aa
    ld [hl], a
    and d
    ld a, a
    db $dd
    ld a, $f7
    ld [$5cab], sp
    ld e, l
    cp $6a
    rst $38
    jp nz, Jump_000_25ff

    cp $ab
    ld [hl], h
    rst $10
    jr c, @-$0f

    db $10
    ld d, e
    cp h
    sbc l
    cp $b2
    rst $38
    jp nc, $92ff

    rst $38
    rst $38
    ld d, l
    cp [hl]
    xor e
    ld [hl], h
    rst $28
    db $10
    db $d3
    inc a
    db $dd
    ld a, $d3
    inc a
    sub a
    ld a, b
    ld a, e
    db $fc
    sub l
    cp $6b
    db $f4
    rst $00
    jr c, jr_040_492d

    ld a, h
    jp $ad3c


    ld a, [hl]
    ld d, d
    rst $38
    ld l, d
    rst $30
    add d
    ld a, a
    db $dd
    ld a, $df
    jr nz, jr_040_492d

    ld [hl], h
    ld d, l
    xor $55
    xor $65
    cp $95
    ld l, [hl]
    srl h
    or a
    ld a, b
    add e
    ld a, h
    ld a, l
    cp $8b
    ld a, h
    sbc l

jr_040_4996:
    ld a, [hl]
    ld h, d
    rst $38
    sbc d
    rst $38
    ld a, [hl+]
    rst $38
    db $dd
    ld a, $f3
    inc c
    xor l
    ld e, [hl]
    ld d, l
    cp $d5
    cp $65
    cp $55
    xor $d5
    xor $5a
    rst $20
    db $e3
    inc e
    sbc l
    ld a, [hl]
    ld l, e
    db $fc
    sub e
    ld a, h
    dec a
    cp $c2
    rst $38
    ld [hl+], a
    rst $18
    db $dd
    ld a, $ff
    nop
    or e
    ld c, h
    ld c, l
    cp $d2
    rst $38
    ld l, d

jr_040_49c8:
    rst $30
    ld e, d
    rst $20
    jp nc, Jump_040_4def

    cp $ef
    db $10
    sub e
    ld a, h
    ld a, l

jr_040_49d4:
    cp $a1
    ld a, [hl]
    db $76
    rst $38
    rst $38
    sbc c
    ld a, [hl]
    and c
    ld a, [hl]
    cp [hl]
    ld a, a
    rst $28
    db $10
    rst $10
    jr c, jr_040_49d4

    jr nc, jr_040_4996

    ld [hl], b
    rst $30
    ld a, b
    ld c, l
    ld a, [$dfaa]
    xor l
    sbc $f5
    rrca
    jp c, $2525

    cp $f2
    rst $38
    ld a, [hl+]
    rst $38
    ld c, c
    cp $8b
    db $fc
    scf
    ld hl, sp-$1b
    rra
    sub d
    ld a, l
    ld a, l
    cp $89
    ld a, [hl]

jr_040_4a08:
    cp [hl]
    ld a, a
    add l
    ld a, [hl]
    ld b, e
    db $fc
    cp l
    ld a, [hl]
    push af
    rrca
    ld a, [c]
    dec c
    db $eb
    inc e
    rst $10
    jr c, jr_040_49c8

    ld [hl], b
    rst $10
    jr c, jr_040_4a08

    inc e
    push af
    ld c, $f5
    rrca
    and b
    ld e, a
    ld e, a
    cp $45
    cp $55
    xor $55
    xor $a5
    ld a, [hl]
    srl h
    push af
    rrca
    jp nz, $bd3d

    ld a, [hl]
    jp nz, $f53f

    ld c, $bb
    ld b, h
    ld b, c
    cp $be
    ld a, a
    push hl
    rra
    sub d
    ld a, l
    ld a, a
    db $fc
    adc e
    ld a, h
    push af
    ld c, $b5
    ld c, [hl]
    ld b, e
    db $fc
    cp l
    ld a, [hl]
    push af
    ld a, [bc]
    xor d
    ld e, a
    ld d, l
    ld [$e05f], a
    ld e, a
    rst $38
    ldh [$5b], a
    db $e4
    ld b, l
    cp $bb
    ld a, h
    push af
    rrca
    adc b
    ld a, a
    ld a, [hl]
    rst $38
    adc c
    ld a, [hl]
    cp e
    ld a, h
    xor e
    ld a, h
    sbc e
    ld a, h
    ld [hl], a
    ld hl, sp-$0b
    rrca
    or d
    ld c, l
    ld c, c
    cp $7e
    rst $38
    ret


    cp $49
    cp $42
    rst $38
    cp l
    ld a, [hl]
    push de
    cpl
    xor b
    ld [hl], a
    xor d
    ld [hl], a
    add l
    ld a, [hl]
    ld a, [hl]
    rst $38
    sub c
    ld a, [hl]
    and c
    ld a, [hl]
    sbc $3f
    push hl
    rra
    sub d
    ld a, l
    ld a, l
    cp $a1
    ld a, [hl]
    ld c, [hl]
    rst $38
    ld b, c
    cp $51
    cp $ae
    rst $18
    push hl
    rra
    sub d
    ld a, l
    ld a, l
    cp $a3
    ld a, h
    ld e, l
    cp $62
    rst $38
    add d
    ld a, a
    db $dd
    ld a, $f5
    rrca
    jp nz, $3d3d

    cp $c2
    rst $38
    ld a, [hl-]
    rst $00
    ld a, [$c507]
    ld a, $bb
    ld a, h
    push af
    rrca
    ret nz

    ccf
    ld a, $ff
    ret


    cp $17
    ld hl, sp-$29
    jr c, @-$15

    ld e, $f6
    rrca
    or l
    ld c, a
    ld e, b
    rst $20
    ld d, d
    rst $28
    xor l
    ld a, [hl]
    rst $38
    or e
    ld a, h
    ld c, a
    ldh a, [rSTAT]
    cp $be
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $10
    jr c, @-$23

    inc a
    or a
    ld a, b
    ld e, e
    db $fc
    or a
    ld a, b
    rst $38
    dec b
    ld b, c
    cp [hl]
    cp [hl]
    rst $38
    add l
    cp $a5
    sbc $9d
    cp $a6
    rst $38
    ld e, c
    cp [hl]
    push de
    cpl
    ld a, [hl+]
    push af
    push hl
    cp $56
    rst $28
    or l
    adc $b5
    adc $8b
    db $fc
    ld [hl], a
    ld hl, sp-$3b
    ccf
    or d
    ld a, l
    srl h
    and a
    ld e, b
    ld d, l
    ld a, [$dfaa]
    adc d
    rst $38
    dec [hl]
    ld a, [$00ff]
    ld [$c51f], a
    ld a, [hl-]
    or a
    ld a, b
    ld c, e
    db $fc
    or l
    adc $7a
    add a
    db $fd
    ld [bc], a
    push hl
    rra
    sbc d
    db $fd
    and l
    sbc $9e
    rst $38
    and l
    sbc $9d
    cp $a6
    rst $38
    ld e, c
    cp $fa
    rlca
    ld b, l
    cp a
    cp [hl]
    rst $38
    add l
    cp $a5
    sbc $9d
    cp $a6
    rst $38
    ld e, c
    cp [hl]
    jp c, $2527

    rst $38
    ld [$57f7], a
    rst $38
    rst $28
    or h
    rst $08
    or l
    adc $8b
    db $fc
    ld [hl], a
    ld hl, sp-$36
    scf
    or l
    ld a, a
    jp z, $a53f

    ld e, d
    ld d, l
    ld a, [$dfaa]
    adc d
    rst $38

jr_040_4b71:
    dec [hl]
    ld a, [$0ef5]
    ld [$c51f], a
    ld a, $b3
    ld a, h
    ld c, e
    db $fc
    or l
    adc $7a
    add a
    db $fd
    ld [bc], a
    ld h, d
    sbc a
    sbc l
    rst $38
    and [hl]

jr_040_4b88:
    rst $18
    sbc [hl]
    rst $38
    and l
    sbc $9d
    cp $a6
    rst $38
    ld e, c
    cp $ff
    nop
    rst $38
    nop
    adc a
    ld [hl], b
    ld [hl], e
    db $fc
    and l
    ld a, [hl]
    cp e
    ld a, h
    ld d, l
    cp $6b
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$5cab], sp
    ld d, l
    xor $55
    xor $ab
    ld [hl], h
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $10
    jr c, @-$47

    ld a, b
    ld c, e
    db $fc
    adc e
    ld a, h
    or a
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_040_4b71

    ld a, b
    ld a, e
    db $fc
    sub a
    ld a, b
    and a
    ld a, b
    ld e, e
    db $fc
    rst $38
    nop
    rst $38
    nop
    adc e
    ld [hl], h
    rst $38
    ld [hl], l
    cp $a3
    ld a, h
    ld a, e
    db $fc
    ld h, l
    cp $6b
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    jr jr_040_4b88

    ld a, h
    ld h, l
    cp $85
    ld a, [hl]
    db $db
    inc a
    ld bc, $fefe
    rst $38
    ld [bc], a
    rst $38
    jp nc, $d53f

    ld a, $ab
    ld [hl], h
    xor a
    ld [hl], b
    ld e, a
    ldh [$fa], a
    rlca

jr_040_4c06:
    push af
    ld c, $cb
    inc a
    scf
    ld hl, sp-$35
    db $fc
    dec hl
    call c, $1ceb
    db $eb
    inc e
    ld de, $fefe
    rst $38
    add d
    rst $38
    cp d
    rst $00
    ld [hl], l
    adc [hl]
    push af
    ld c, $8b
    ld a, h
    ld [hl], a
    ld hl, sp-$7d
    ld a, h
    ld a, l
    cp $93
    ld a, h
    rst $10
    jr c, @-$27

    jr c, jr_040_4c06

    jr c, jr_040_4c42

    cp $fe
    rst $38
    db $eb
    inc e
    dec bc
    db $fc
    cp $ff
    dec bc
    db $fc
    db $db
    inc a
    xor e
    ld a, h
    dec hl
    db $fc

jr_040_4c42:
    set 7, h
    ld hl, $fefe
    rst $38
    ld [hl+], a
    rst $38
    xor d
    ld [hl], a
    xor d
    ld [hl], a
    ld e, d
    rst $20
    ld e, d
    rst $20
    or l
    adc $af
    ld [hl], b
    inc hl
    db $fc
    db $fd
    rst $38
    cp $13
    db $fc
    ld de, $fefe
    rst $38
    add hl, bc
    cp $eb
    inc e
    add c
    ld a, [hl]
    ld a, [hl]
    rst $38
    ld b, d
    rst $38
    cp d
    rst $00
    ld [hl], l
    adc [hl]
    push af
    ld c, $cb
    inc a
    or a
    ld a, b
    ld b, c
    cp $7e

jr_040_4c78:
    rst $38
    ld b, l
    cp $55
    xor $b5
    adc $6b
    sbc h
    srl h
    or a
    ld a, b
    add c
    ld a, [hl]
    ld a, [hl]
    rst $38
    add d
    ld a, a
    ld a, [$fa07]

jr_040_4c8e:
    rlca
    ld a, [$8207]
    ld a, a
    ld a, [hl]
    rst $38
    ld d, l
    xor $45
    cp $fe
    rst $38
    ld b, l
    cp $55
    xor $b5
    ld c, [hl]
    srl h
    or a
    ld a, b
    rra
    ldh [$ed], a
    ld a, [c]
    ld a, [de]
    rst $20
    ld [$1af7], a
    rst $20
    push af
    ld c, $05
    cp $fb
    db $fc
    ld bc, $fefe
    rst $38
    ld [bc], a
    rst $38
    push af
    ld c, $eb
    inc e
    db $db
    inc a
    dec h
    cp $da

jr_040_4cc4:
    rst $20
    ld e, a
    ldh [rSTAT], a
    cp $fe
    rst $38
    ld b, d

jr_040_4ccc:
    rst $38
    ld d, l
    xor $5b
    db $e4
    ld b, c
    cp $7e
    rst $38
    ld a, a
    add b
    cp l
    jp nz, $baff

    rst $00
    ld e, d
    rst $20
    cp d
    ld b, a
    push af
    ld c, $0b
    db $fc
    rst $30
    ld hl, sp-$01
    nop
    rst $18
    jr nz, jr_040_4c8e

    ld a, h
    ld a, l
    cp $a5
    ld a, [hl]
    xor e
    ld a, h
    rst $10
    jr c, jr_040_4ccc

    jr c, jr_040_4c78

    ld a, [hl]
    ld a, [hl]
    rst $38
    ld b, d
    rst $38
    add d
    rst $38
    dec a
    cp $c5
    ld a, $cb
    inc a
    or a
    ld a, b
    adc l
    ld a, [hl]
    ld [hl], e
    db $fc
    add hl, bc
    cp $fe
    rst $38
    add hl, bc
    cp $eb
    inc e
    rst $10
    jr c, jr_040_4cc4

    ld [hl], b
    xor a
    ld d, b
    ld d, l
    ld_long a, $ff52
    ld d, d
    rst $38
    xor d
    ld d, a
    push af
    ld c, $8b
    ld a, h
    ld [hl], a
    ld hl, sp-$7f
    ld a, [hl]
    ld a, [hl]
    rst $38
    ld bc, $fefe
    rst $38
    add hl, bc
    cp $eb
    inc e
    srl h
    or a
    ld a, b
    xor a
    ld [hl], b
    xor a
    ld [hl], b
    xor a
    ld [hl], b
    or c
    ld a, [hl]
    xor [hl]
    ld a, a
    and c
    ld a, [hl]
    xor a
    ld [hl], b
    xor a
    ld [hl], b
    db $eb
    inc e
    add hl, bc
    cp $fe
    rst $38
    add hl, bc
    cp $eb
    inc e
    db $eb
    inc e
    sub a
    ld a, b
    ld l, a
    ldh a, [$83]
    ld a, h
    ld a, l
    rst $38
    cp $83
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $fefe
    rst $38
    ld bc, $fefe
    rst $38
    ld [bc], a
    rst $38
    and l
    ld a, [hl]
    db $db
    inc a
    db $db
    inc a
    dec h
    cp $da
    rst $20
    ld de, $fefe
    rst $38
    ld [bc], a
    rst $38
    push hl
    ld e, $db
    inc a
    dec [hl]
    cp $d2
    rst $38
    dec d
    ld a, [$07fa]
    ld a, [$fa07]
    rlca
    ld a, [$f507]
    ld c, $f5
    ld c, $8b
    ld a, h
    ld [hl], a
    ld hl, sp-$09
    ld [$1ceb], sp
    or l
    ld c, [hl]
    ld d, l
    xor $5a
    rst $20
    cp d
    rst $00
    cp d
    rst $00
    ld a, d
    add a
    ld a, a
    add b
    and e

jr_040_4daa:
    call c, $fe9d
    db $e3
    db $fc
    sbc a
    ldh [$bf], a
    ret nz

    add c
    cp $7e
    rst $38
    ld bc, $fefe
    rst $38
    ld [bc], a
    rst $38
    ld a, [$f507]
    ld c, $f5
    ld c, $8b
    ld a, h
    ld [hl], a
    ld hl, sp-$01
    nop
    rst $08
    jr nc, @-$47

    ld a, b
    ld c, e
    db $fc
    or l
    adc $7a
    add a
    db $fd
    inc bc
    cp $01
    rst $10
    jr c, @-$60

    ld de, $fefe
    rst $38
    ld de, $93fe
    ld a, h
    ld d, l
    cp $52
    rst $38
    sub d
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $00
    jr c, jr_040_4daa

Jump_040_4def:
    ld a, h
    srl h
    db $eb
    inc e
    adc e
    ld a, h
    ld a, l
    cp $00
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca

Jump_040_4dff:
    inc c
    dec c
    rlca
    rrca
    add [hl]
    ld a, [bc]
    jr jr_040_4e18

    add hl, de
    rla
    ld a, [bc]
    rlca
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca

jr_040_4e18:
    inc c
    dec c
    dec b
    rrca
    adc d
    add hl, de
    add hl, hl
    sub e
    ld a, [bc]
    add d
    and h
    ld a, [bc]
    ld h, c
    ld c, l
    ld a, [hl+]
    dec b
    rrca
    inc c
    dec c
    dec b
    rrca
    adc e
    dec de
    scf
    ld [de], a
    ld c, l
    ld d, $25
    ld de, $0a9d
    ld [hl], b
    ld b, b
    inc b
    rrca
    inc c
    dec c
    dec b
    rrca
    add a
    ld a, [hl+]
    ld de, $235f
    ld de, $1c30
    ld [$0c0f], sp
    dec c
    inc d
    rrca
    inc c
    dec c
    dec b
    rrca
    adc d
    sub e
    ld a, [bc]
    add d
    and h
    ld a, [bc]
    ld h, c
    ld h, l
    adc b
    ld a, [bc]
    ld c, l
    dec b
    rrca
    inc c
    dec c
    dec b
    rrca
    adc b
    db $10
    ld e, $3f
    ld c, l
    rla
    ld c, d
    ld a, [de]
    ld de, $0f07
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    ld a, a
    dec c
    ld a, a
    dec c
    ld a, a
    dec c
    ld c, a
    dec c
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
    ld [$0000], sp
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    rlca
    rrca
    add [hl]
    ld a, [bc]
    jr jr_040_4ec0

    add hl, de
    rla
    ld a, [bc]
    rlca
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca

jr_040_4ec0:
    inc c
    dec c
    inc b
    rrca
    adc l
    add hl, de
    add hl, hl
    sub e
    ld a, [bc]
    add d
    and h
    ld a, [bc]
    ld h, c
    ld h, l
    adc b
    ld a, [bc]
    ld c, l
    ld a, [hl+]
    inc bc
    rrca
    inc c
    dec c
    inc b
    rrca
    adc e
    dec de
    scf
    ld [de], a
    ld c, l
    ld d, $25
    ld de, $0a9d
    ld [hl], b
    ld b, b
    dec b
    rrca
    inc c
    dec c
    inc b
    rrca
    add a
    ld a, [hl+]
    ld de, $235f
    ld de, $1c30
    add hl, bc
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc b
    rrca
    adc l
    sub e
    ld a, [bc]
    add d
    and h
    ld a, [bc]
    ld h, c
    ld h, l
    adc b
    ld a, [bc]
    ld de, $1140
    add hl, hl
    inc bc
    rrca
    inc c
    dec c
    inc b
    rrca
    add a
    sub e
    ld a, [bc]
    add d
    and h
    ld a, [bc]
    ld h, c
    ld c, l
    add hl, bc
    rrca
    inc c
    dec c
    inc b
    rrca
    adc b
    db $10
    ld e, $3f
    ld c, l
    rla
    ld c, d
    ld a, [de]
    ld de, $0f08
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    ld a, a
    dec c
    ld a, a
    dec c
    ld a, a
    dec c
    ld c, a
    dec c
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
    ld [$0000], sp
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    rlca
    rrca
    add [hl]
    ld a, [bc]
    jr jr_040_4f78

    add hl, de
    rla
    ld a, [bc]
    rlca
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca

jr_040_4f78:
    inc c
    dec c
    dec b
    rrca
    adc e
    or b
    ld l, l
    ld a, [bc]
    and d
    sbc l
    ld a, [bc]
    ld [hl], b
    ld a, $18
    dec de
    inc hl
    inc b
    rrca
    inc c
    dec c
    ld b, $0f
    adc d
    ld a, [de]
    ld de, $4f1b
    dec d
    jr c, jr_040_4fc0

    ld b, [hl]
    inc sp
    ld a, [hl-]
    inc b
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    dec b
    rrca
    add h
    or b
    dec [hl]
    inc sp
    ld a, [hl-]
    dec bc
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c

jr_040_4fc0:
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    ld a, a
    dec c
    ld a, a
    dec c
    ld a, a
    dec c
    ld c, a
    dec c
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
    ld [$0000], sp
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    rlca
    rrca
    add [hl]
    ld a, [bc]
    jr jr_040_5005

    add hl, de
    rla
    ld a, [bc]
    rlca
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca

jr_040_5005:
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc bc
    rrca
    adc l
    ld c, l
    ccf
    ld b, e
    ccf
    ld a, $0f
    ld d, $5f
    inc hl
    rla
    ld c, d
    ld a, [de]
    ld de, $0f04
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    ld a, a
    dec c
    ld a, a
    dec c
    ld a, a
    dec c
    ld c, a
    dec c
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
    ld [$0000], sp
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    rlca
    rrca
    add [hl]
    ld a, [bc]
    jr jr_040_5080

    add hl, de
    rla
    ld a, [bc]
    rlca
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca

jr_040_5080:
    inc c
    dec c
    inc bc
    rrca
    sub c
    ld l, $3f
    inc h
    ld [de], a
    ld h, $6d
    ld a, [bc]
    and d
    sbc l
    ld a, [bc]
    ld [hl], b
    ld a, $18
    dec de
    inc hl
    rrca
    rrca
    inc c
    dec c
    inc bc
    rrca
    adc e
    ld a, [de]
    ld de, $4f1b
    dec d
    jr c, jr_040_50cc

    ld b, [hl]
    inc sp
    inc hl
    inc [hl]
    ld b, $0f
    inc c
    dec c
    inc bc
    rrca
    adc b
    scf
    inc a
    dec de
    ld de, $1c4d
    dec d
    inc c
    add hl, bc
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    ld [$830f], sp
    or b
    ld a, [hl+]
    ld de, $0f09
    inc c
    dec c
    inc d

jr_040_50cc:
    rrca
    inc c
    dec c
    ld [$840f], sp
    or b
    ld de, $1311
    ld [$0c0f], sp
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    inc c
    dec c
    inc d
    rrca
    ld a, a
    dec c
    ld a, a
    dec c
    ld a, a
    dec c
    ld c, a
    dec c
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
    ld [$0000], sp
    xor l
    dec [hl]
    rst $38
    ld a, a
    sub $5a
    nop
    nop
    xor l
    dec [hl]
    rst $38
    ld a, a
    sub $5a
    nop
    nop
    xor l
    dec [hl]
    rst $38
    ld a, a
    sub $5a
    nop
    nop
    xor l
    dec [hl]
    rst $38
    ld a, a
    sub $5a
    nop
    nop
    xor l
    dec [hl]
    rst $38
    ld a, a
    sub $5a
    nop
    nop
    xor l
    dec [hl]
    rst $38
    ld a, a
    sub $5a
    nop
    nop
    xor l
    dec [hl]
    rst $38
    ld a, a
    sub $5a
    nop
    nop
    xor l
    dec [hl]
    rst $38
    ld a, a
    sub $5a
    nop
    nop
    nop
    ld a, h
    rst $38
    ld a, a
    sub $5a
    nop
    nop
    nop
    ld a, h
    rst $38
    ld a, a
    sub $5a
    nop
    nop
    nop
    ld a, h
    rst $38
    ld a, a
    sub $5a
    nop
    nop
    nop
    ld a, h
    rst $38
    ld a, a
    sub $5a
    nop
    nop
    nop
    ld a, h
    rst $38
    ld a, a
    xor l
    dec [hl]
    nop
    nop
    nop
    ld a, h
    rst $38
    ld a, a
    xor l
    dec [hl]
    nop
    nop
    nop
    ld a, h
    rst $38
    ld a, a
    xor l
    dec [hl]
    nop
    nop
    nop
    ld a, h
    rst $38
    ld a, a
    xor l
    dec [hl]
    nop
    nop
    add [hl]
    ld d, c
    ldh a, [$08]
    inc b
    nop
    ldh a, [rP1]
    ld [bc], a
    nop
    ldh a, [$f8]
    nop
    nop
    add b
    ld bc, $0040
    ld b, b

Call_040_5197:
    ldh a, [$fe]
    and a
    ret z

    ld a, $40
    ld [$c6a1], a
    ld hl, $5104
    call Call_000_2d56
    ld hl, $5144
    call $2df1
    ret


Call_040_51ad:
    ld hl, $4df9
    ld bc, $9800
    ld a, $40
    ld [$c6a1], a
    call Call_000_2bcc
    ret


Call_040_51bc:
    call Call_000_2f97
    ld hl, $4ea1
    ld bc, $9800
    ld a, $40
    ld [$c6a1], a
    call Call_000_2bcc
    ret


Call_040_51ce:
    ld hl, $4f59
    ld bc, $9800
    ld a, $40
    ld [$c6a1], a
    call Call_000_2bcc
    ret


Call_040_51dd:
    ld hl, $4fe6
    ld bc, $9800
    ld a, $40
    ld [$c6a1], a
    call Call_000_2bcc
    ret


Call_040_51ec:
    ld hl, $5061
    ld bc, $9800
    ld a, $40
    ld [$c6a1], a
    call Call_000_2bcc
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_040_7fa5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
