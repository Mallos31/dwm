; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $013", ROMX[$4000], BANK[$13]

    inc de
    add hl, bc
    ld b, b
    ld d, b
    ld b, b
    xor [hl]
    ld b, b
    ld h, [hl]
    ld [hl], e
    ld a, [$cac0]
    ld hl, $caca
    call Call_000_223b
    ld a, [hl]
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld a, [$da35]
    ld bc, $0129
    call Call_000_1de6
    ld a, l
    add $e6
    ld l, a
    ld a, h
    adc $41
    ld h, a
    push hl
    ld a, [$cac0]
    ld hl, $cb0c
    call Call_000_223b
    ld a, [hl]
    ld b, a
    add a
    pop hl
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, b
    add l
    ld l, a
    ld a, $00

Jump_013_4044:
    adc h
    ld h, a
    ld a, [hl+]
    ldh [$d5], a
    ld a, [hl+]
    ldh [$d6], a
    ld a, [hl+]
    ldh [$d7], a
    ret


    ld a, [$cac0]
    ld hl, $cb0c
    call Call_000_223b
    ld a, [hl]
    or a
    ret z

    ld a, [$cac0]
    ld hl, $caca
    call Call_000_223b
    ld a, [hl]
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld a, [$da35]
    ld bc, $0129
    call Call_000_1de6
    ld a, l
    add $e6
    ld l, a
    ld a, h
    adc $41
    ld h, a
    push hl
    ld a, [$cac0]
    ld hl, $cb0c
    call Call_000_223b
    ld a, [hl]
    dec a
    ld b, a
    add a
    pop de
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, b
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    push de
    ld a, [$cac0]
    ld hl, $cb0e
    call Call_000_223b
    pop de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ret


    ld a, [$cac0]
    ld hl, $caca
    call Call_000_223b
    ld a, [hl]
    ld [$da31], a
    ld hl, $0301
    rst $10
    xor a
    ld [$c8d0], a
    ld a, [$cac0]
    ld hl, $cb0c
    call Call_000_223b
    push hl
    ld a, [$cac0]
    ld hl, $cb0d
    call Call_000_223b
    ld a, [hl]
    dec a
    pop hl
    cp [hl]
    jr nc, jr_013_40e1

    ld a, $01
    ld [$c8d0], a

jr_013_40e1:
    ld a, [$da3c]
    call Call_013_411e
    call Call_013_4163
    ld [$c8ca], a
    ld a, [$da3d]
    call Call_013_411e
    ld [$c8cb], a
    ld a, [$da3e]
    call Call_013_411e
    call Call_013_4163
    ld [$c8cc], a
    ld a, [$da3f]
    call Call_013_411e
    ld [$c8cd], a
    ld a, [$da40]
    call Call_013_411e
    ld [$c8ce], a
    ld a, [$da41]
    call Call_013_411e
    ld [$c8cf], a
    ret


Call_013_411e:
    ld c, $63
    call Call_000_1dbe
    ld a, l
    add $06
    ld l, a
    ld a, h
    adc $67
    ld h, a
    push hl
    ld a, [$cac0]
    ld hl, $cb0c
    call Call_000_223b
    ld a, [hl]
    pop hl
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c8cf], a
    ld a, [$c8d0]
    or a
    jr nz, jr_013_414b

    ld a, [$c8cf]
    ret


jr_013_414b:
    ld a, [$cac0]
    ld hl, $cb0c
    call Call_000_223b
    ld c, [hl]
    ld a, [$c8cf]
    call Call_000_1dbe
    ld a, $64
    call Call_000_1e0d
    ld a, l
    inc a
    ret


Call_013_4163:
    ld [$c8cf], a
    ld [$c8d1], a
    ld a, [$c8d0]
    or a
    jr nz, jr_013_41a1

    ld a, [$cac0]
    ld hl, $cb0c
    call Call_000_223b
    ld a, [hl]
    cp $0e
    jr c, jr_013_41a1

    ld b, $01
    ld c, $13
    ld d, $06
    call Call_013_41a5
    ld b, $0a
    ld c, $14
    ld d, $08
    call Call_013_41a5
    ld b, $14
    ld c, $1e
    ld d, $06
    call Call_013_41a5
    ld b, $32
    ld c, $64
    ld d, $05
    call Call_013_41a5

jr_013_41a1:
    ld a, [$c8cf]
    ret


Call_013_41a5:
    push de
    push bc
    call Call_000_12d0
    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    pop bc
    push bc
    ld a, c
    call Call_000_1e0d
    pop bc
    add b
    ld b, a
    pop de
    push de
    push bc
    ld a, [$cac0]
    ld hl, $cb23
    call Call_000_223b
    pop bc
    pop de
    ld a, [hl]
    cp b
    ret c

    ld a, [$c8d1]
    ld b, a
    ld a, d
    call Call_000_1dfb
    ld a, b
    or a
    jr nz, jr_013_41d9

    inc a

jr_013_41d9:
    ld b, a
    ld a, [$c8cf]
    add b
    jr nc, jr_013_41e2

    ld a, $ff

jr_013_41e2:
    ld [$c8cf], a
    ret


    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    rlca
    nop
    nop
    rrca
    nop
    nop
    ld e, $00
    nop
    ld [hl-], a
    nop
    nop
    ld e, d
    nop
    nop
    adc h
    nop
    nop
    rst $10
    nop
    nop
    ld c, d
    ld bc, $f400
    ld bc, $f800
    ld [bc], a
    nop
    jr c, jr_013_4210

    nop
    ret z

    dec b
    nop

jr_013_4210:
    cp h
    rlca
    nop
    jr z, jr_013_421f

    nop
    inc [hl]
    dec c
    nop
    ld [$0011], sp
    call z, Call_000_0015

jr_013_421f:
    ld h, $1b
    nop
    inc [hl]
    ld hl, $0400
    add hl, hl
    nop
    ld h, h
    ld [hl-], a
    nop
    ld d, h
    dec a
    nop
    call nc, $0049
    db $e4
    ld d, a
    nop
    add h
    ld h, a
    nop
    or h
    ld a, b
    nop
    ld [hl], h
    adc e
    nop
    call nz, Call_000_009f
    and h
    or l
    nop
    inc d
    call $1400
    and $00
    and h
    nop
    ld bc, $1cc4
    ld bc, $3a74
    ld bc, $59b4
    ld bc, $7a84
    ld bc, $9ce4
    ld bc, $c0d4
    ld bc, $e654
    ld bc, $0d64
    ld [bc], a
    ld e, h
    jr c, jr_013_4269

    inc a
    ld h, a

jr_013_4269:
    ld [bc], a
    inc b
    sbc d
    ld [bc], a
    or h
    ret nc

    ld [bc], a
    ld c, h
    dec bc
    inc bc
    call z, Call_000_0349
    inc [hl]
    adc h
    inc bc
    add h
    jp nc, $bc03

    inc e
    inc b
    call c, $046a
    db $e4
    cp h
    inc b
    call nc, Call_000_0512
    xor h
    ld l, h
    dec b
    ld l, h
    jp z, Jump_000_1405

    inc l
    ld b, $bc
    adc l
    ld b, $64
    rst $28
    ld b, $0c
    ld d, c
    rlca
    or h
    or d
    rlca
    ld e, h
    inc d
    ld [$7604], sp
    ld [$d7ac], sp
    ld [$3954], sp
    add hl, bc
    db $fc
    sbc d
    add hl, bc
    and h
    db $fc
    add hl, bc
    ld c, h
    ld e, [hl]
    ld a, [bc]
    db $f4
    cp a
    ld a, [bc]
    sbc h
    ld hl, $440b
    add e
    dec bc
    db $ec
    db $e4
    dec bc
    sub h
    ld b, [hl]
    inc c
    inc a
    xor b
    inc c
    db $e4
    add hl, bc
    dec c
    adc h
    ld l, e
    dec c
    inc [hl]
    call $dc0d
    ld l, $0e
    add h
    sub b
    ld c, $2c
    ld a, [c]
    ld c, $d4
    ld d, e
    rrca
    ld a, h
    or l
    rrca
    inc h
    rla
    db $10
    call z, $1078
    ld [hl], h
    jp c, $1c10

    inc a
    ld de, $9dc4
    ld de, $ff6c
    ld de, $6114
    ld [de], a
    cp h
    jp nz, Jump_013_6412

    inc h
    inc de
    inc c
    add [hl]
    inc de
    or h
    rst $20
    inc de
    ld e, h
    ld c, c
    inc d
    inc b
    xor e
    inc d
    xor h
    inc c
    dec d
    ld d, h
    ld l, [hl]
    dec d
    db $fc
    rst $08
    dec d
    and h
    ld sp, $0016
    nop
    nop
    ld [bc], a
    nop
    nop
    rlca
    nop
    nop
    rrca
    nop
    nop
    ld e, $00
    nop
    ld [hl-], a
    nop
    nop
    ld e, d
    nop
    nop
    adc h
    nop
    nop
    rst $10
    nop
    nop
    ld c, d
    ld bc, $f400
    ld bc, $f800
    ld [bc], a
    nop
    jr c, jr_013_4339

    nop
    ret z

    dec b
    nop

jr_013_4339:
    cp h
    rlca
    nop
    jr z, jr_013_4348

    nop
    inc [hl]
    dec c
    nop
    ld [$0011], sp
    call z, Call_000_0015

jr_013_4348:
    ld h, $1b
    nop
    inc [hl]
    ld hl, $0400
    add hl, hl
    nop
    ld h, h
    ld [hl-], a
    nop
    ld d, h
    dec a
    nop
    call nc, $0049
    db $e4
    ld d, a
    nop
    add h
    ld h, a
    nop
    or h
    ld a, b
    nop
    ld [hl], h
    adc e
    nop
    call nz, Call_000_009f
    and h
    or l
    nop
    inc d
    call $1400
    and $00
    and h
    nop
    ld bc, $1cc4
    ld bc, $3a74
    ld bc, $59b4
    ld bc, $7a84
    ld bc, $9ce4
    ld bc, $c0d4
    ld bc, $e654
    ld bc, $0d64
    ld [bc], a
    ld b, h
    inc a
    ld [bc], a
    db $f4
    ld [hl], d
    ld [bc], a
    ld [hl], h
    or c
    ld [bc], a
    call nz, Call_000_02f7
    db $e4
    ld b, l
    inc bc
    call nc, Call_000_039b
    sub h
    ld sp, hl
    inc bc
    inc h
    ld e, a
    inc b
    add h
    call z, $b404
    ld b, c
    dec b
    db $e4
    or [hl]
    dec b
    inc d
    inc l
    ld b, $44
    and c
    ld b, $74
    ld d, $07
    and h
    adc e
    rlca
    call nc, $0800
    inc b
    db $76
    ld [$eb34], sp
    ld [$6064], sp
    add hl, bc
    sub h
    push de
    add hl, bc
    call nz, $0a4a
    db $f4
    cp a
    ld a, [bc]
    inc h
    dec [hl]
    dec bc
    ld d, h
    xor d
    dec bc
    add h
    rra
    inc c
    or h
    sub h
    inc c
    db $e4
    add hl, bc
    dec c
    inc d
    ld a, a
    dec c
    ld b, h
    db $f4
    dec c
    ld [hl], h
    ld l, c
    ld c, $a4
    sbc $0e
    call nc, Call_000_0f53
    inc b

jr_013_43ee:
    ret


    rrca
    inc [hl]
    ld a, $10
    ld h, h
    or e
    db $10
    sub h
    jr z, jr_013_440a

    call nz, $119d
    db $f4
    ld [de], a
    ld [de], a
    inc h
    adc b
    ld [de], a
    ld d, h
    db $fd
    ld [de], a
    add h
    ld [hl], d
    inc de
    or h
    rst $20

jr_013_440a:
    inc de
    db $e4
    ld e, h
    inc d
    inc d
    jp nc, Jump_013_4414

    ld b, a
    dec d

Jump_013_4414:
    ld [hl], h
    cp h
    dec d
    and h
    ld sp, $d416
    and [hl]
    ld d, $04
    inc e
    rla
    inc [hl]
    sub c
    rla
    ld h, h
    ld b, $18
    sub h
    ld a, e
    jr jr_013_43ee

    ldh a, [rNR23]
    db $f4
    ld h, l
    add hl, de
    inc h
    db $db
    add hl, de
    ld d, h
    ld d, b
    ld a, [de]
    add h
    push bc
    ld a, [de]
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    rlca
    nop
    nop
    rrca
    nop
    nop
    ld e, $00
    nop
    ld [hl-], a
    nop
    nop
    ld e, d
    nop
    nop
    adc h
    nop
    nop
    rst $10
    nop
    nop
    ld c, d
    ld bc, $f400
    ld bc, $f800
    ld [bc], a
    nop
    jr c, jr_013_4462

    nop
    ret z

    dec b
    nop

jr_013_4462:
    cp h
    rlca
    nop
    jr z, jr_013_4471

    nop
    inc [hl]
    dec c
    nop
    ld [$0011], sp
    call z, Call_000_0015

jr_013_4471:
    ld h, $1b
    nop
    inc [hl]
    ld hl, $0400
    add hl, hl
    nop
    inc l
    inc sp
    nop
    xor h
    ccf
    nop
    add h
    ld c, [hl]
    nop
    or h
    ld e, a
    nop
    inc a
    ld [hl], e
    nop
    inc e
    adc c
    nop
    ld d, h
    and c
    nop
    db $e4
    cp e
    nop
    call z, Call_000_00d8
    inc c
    ld hl, sp+$00
    and h
    add hl, de
    ld bc, $3d94
    ld bc, $63dc
    ld bc, $8c7c
    ld bc, $b774
    ld bc, $e4c4
    ld bc, $146c
    ld [bc], a
    ld l, h
    ld b, [hl]
    ld [bc], a
    call nz, Call_000_027a
    ld [hl], h
    or c
    ld [bc], a
    inc c
    db $ec
    ld [bc], a
    adc h
    ld a, [hl+]
    inc bc
    db $f4
    ld l, h
    inc bc
    ld b, h
    or e
    inc bc
    ld a, h
    db $fd
    inc bc
    sbc h
    ld c, e
    inc b
    and h
    sbc l
    inc b
    sub h
    di
    inc b
    ld l, h
    ld c, l
    dec b
    inc l
    xor e
    dec b
    call nc, Call_000_060c
    ld a, h
    ld l, [hl]
    ld b, $24
    ret nc

    ld b, $cc
    ld sp, $7407
    sub e
    rlca
    inc e
    push af
    rlca
    call nz, Call_000_0856
    ld l, h
    cp b
    ld [$1a14], sp
    add hl, bc
    cp h
    ld a, e
    add hl, bc
    ld h, h
    db $dd
    add hl, bc
    inc c
    ccf
    ld a, [bc]
    or h
    and b
    ld a, [bc]
    ld e, h
    ld [bc], a
    dec bc
    inc b
    ld h, h
    dec bc
    xor h
    push bc
    dec bc
    ld d, h
    daa
    inc c
    db $fc
    adc b
    inc c
    and h
    ld [$4c0c], a
    ld c, h
    dec c
    db $f4
    xor l
    dec c
    sbc h
    rrca
    ld c, $44
    ld [hl], c
    ld c, $ec
    jp nc, $940e

    inc [hl]
    rrca
    inc a
    sub [hl]
    rrca
    db $e4
    rst $30
    rrca
    adc h
    ld e, c
    db $10
    inc [hl]
    cp e
    db $10
    call c, Call_000_111c
    add h
    ld a, [hl]
    ld de, $e02c
    ld de, $41d4
    ld [de], a
    ld a, h
    and e
    ld [de], a
    inc h
    dec b
    inc de
    call z, $1366
    ld [hl], h
    ret z

    inc de
    inc e
    ld a, [hl+]
    inc d
    call nz, Call_000_148b
    ld l, h
    db $ed
    inc d
    inc d
    ld c, a
    dec d
    cp h
    or b
    dec d
    ld h, h
    ld [de], a
    ld d, $0c
    ld [hl], h
    ld d, $b4
    push de
    ld d, $5c
    scf
    rla
    inc b
    sbc c
    rla
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    rlca
    nop
    nop
    rrca
    nop
    nop
    ld e, $00
    nop
    ld [hl-], a
    nop
    nop
    ld e, d
    nop
    nop
    adc h
    nop
    nop
    rst $10
    nop
    nop
    ld c, d
    ld bc, $f400
    ld bc, $f800
    ld [bc], a
    nop
    jr c, jr_013_458b

    nop
    ret z

    dec b
    nop

jr_013_458b:
    cp h
    rlca
    nop
    jr z, jr_013_459a

    nop
    inc [hl]
    dec c
    nop
    ld [$0011], sp
    call z, Call_000_0015

jr_013_459a:
    ld h, $1b
    nop
    inc [hl]
    ld hl, $0400
    add hl, hl
    nop
    inc l
    inc sp
    nop
    xor h
    ccf
    nop
    add h
    ld c, [hl]
    nop
    or h
    ld e, a
    nop
    inc a
    ld [hl], e
    nop
    inc e
    adc c
    nop
    ld d, h
    and c
    nop
    db $e4
    cp e
    nop
    call z, Call_000_00d8
    inc c
    ld hl, sp+$00
    and h
    add hl, de
    ld bc, $3d94
    ld bc, $63dc
    ld bc, $8c7c
    ld bc, $b774
    ld bc, $e4c4
    ld bc, $146c
    ld [bc], a
    ld l, h
    ld b, [hl]
    ld [bc], a
    call nz, Call_000_027a
    ld [hl], h
    or c
    ld [bc], a
    db $f4
    rst $28
    ld [bc], a
    ld b, h
    ld [hl], $03
    ld h, h
    add h
    inc bc
    ld d, h
    jp c, $1403

    jr c, jr_013_45f2

    and h
    sbc l
    inc b
    inc b

jr_013_45f2:
    dec bc
    dec b
    inc [hl]
    add b
    dec b
    ld h, h
    push af
    dec b
    sub h
    ld l, d
    ld b, $c4
    rst $18
    ld b, $f4
    ld d, h
    rlca
    inc h
    jp z, Jump_013_5407

    ccf
    ld [$b484], sp
    ld [$29b4], sp
    add hl, bc
    db $e4
    sbc [hl]
    add hl, bc
    inc d
    inc d
    ld a, [bc]
    ld b, h
    adc c
    ld a, [bc]
    ld [hl], h
    cp $0a
    and h
    ld [hl], e
    dec bc
    call nc, Call_000_0be8
    inc b
    ld e, [hl]
    inc c
    inc [hl]
    db $d3
    inc c
    ld h, h
    ld c, b
    dec c
    sub h
    cp l
    dec c
    call nz, $0e32
    db $f4
    and a
    ld c, $24
    dec e
    rrca
    ld d, h
    sub d
    rrca
    add h
    rlca
    db $10
    or h
    ld a, h
    db $10
    db $e4
    pop af
    db $10
    inc d
    ld h, a
    ld de, $dc44
    ld de, $5174
    ld [de], a
    and h
    add $12
    call nc, $133b
    inc b
    or c
    inc de
    inc [hl]
    ld h, $14
    ld h, h
    sbc e
    inc d
    sub h
    db $10
    dec d
    call nz, Call_000_1585
    db $f4
    ld a, [$2415]
    ld [hl], b
    ld d, $54
    push hl
    ld d, $84
    ld e, d
    rla
    or h
    rst $08
    rla
    db $e4
    ld b, h
    jr jr_013_4687

    cp d
    jr jr_013_46ba

    cpl
    add hl, de
    ld [hl], h
    and h
    add hl, de
    and h
    add hl, de
    ld a, [de]
    call nc, Call_000_1a8e
    inc b
    inc b
    dec de
    inc [hl]
    ld a, c
    dec de

jr_013_4687:
    ld h, h
    xor $1b
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    rlca
    nop
    nop
    rrca
    nop
    nop
    ld e, $00
    nop
    ld [hl-], a
    nop
    nop
    ld e, d
    nop
    nop
    adc h
    nop
    nop
    rst $10
    nop
    nop
    ld c, d
    ld bc, $f400
    ld bc, $f800
    ld [bc], a
    nop
    jr c, jr_013_46b4

    nop
    ret z

    dec b
    nop

jr_013_46b4:
    cp h
    rlca
    nop
    jr z, jr_013_46c3

    nop

jr_013_46ba:
    inc [hl]
    dec c
    nop
    ld [$0011], sp
    call z, Call_000_0015

jr_013_46c3:
    ld h, $1b
    nop
    inc [hl]
    ld hl, $0400
    add hl, hl
    nop
    db $f4
    inc sp
    nop
    inc b
    ld b, d
    nop
    inc [hl]
    ld d, e
    nop
    add h
    ld h, a
    nop
    db $f4
    ld a, [hl]
    nop
    add h
    sbc c
    nop
    inc [hl]
    or a
    nop
    inc b
    ret c

    nop
    db $f4
    ei
    nop
    inc b
    inc hl
    ld bc, $4d34
    ld bc, $7a84
    ld bc, $aaf4
    ld bc, $de84
    ld bc, $1534
    ld [bc], a
    inc b
    ld c, a
    ld [bc], a
    db $f4
    adc e
    ld [bc], a
    inc b
    call z, Call_000_3402
    rrca
    inc bc
    add h
    ld d, l
    inc bc
    cp h
    sbc a
    inc bc
    call c, Call_000_03ed
    db $e4
    ccf
    inc b
    call nc, $0495
    xor h
    rst $28
    inc b
    ld l, h
    ld c, l
    dec b
    inc d
    xor a
    dec b
    cp h
    db $10
    ld b, $64
    ld [hl], d
    ld b, $0c
    call nc, $b406
    dec [hl]
    rlca
    ld e, h
    sub a
    rlca
    inc b
    ld sp, hl
    rlca
    xor h
    ld e, d
    ld [$bc54], sp
    ld [$1dfc], sp
    add hl, bc
    and h
    ld a, a
    add hl, bc
    ld c, h
    pop hl
    add hl, bc
    db $f4
    ld b, d
    ld a, [bc]
    sbc h
    and h
    ld a, [bc]
    ld b, h
    ld b, $0b
    db $ec
    ld h, a
    dec bc
    sub h
    ret


    dec bc
    inc a
    dec hl
    inc c
    db $e4
    adc h
    inc c
    adc h
    xor $0c
    inc [hl]
    ld d, b
    dec c
    call c, Call_000_0db1
    add h
    inc de
    ld c, $2c
    ld [hl], l
    ld c, $d4
    sub $0e
    ld a, h
    jr c, jr_013_4777

    inc h
    sbc d
    rrca
    call z, Call_000_0ffb
    ld [hl], h
    ld e, l
    db $10
    inc e
    cp a
    db $10
    call nz, Call_000_1120

jr_013_4777:
    ld l, h
    add d
    ld de, $e414
    ld de, $45bc
    ld [de], a
    ld h, h
    and a
    ld [de], a
    inc c
    add hl, bc
    inc de
    or h
    ld l, d
    inc de
    ld e, h
    call z, $0413
    ld l, $14
    xor h
    adc a
    inc d
    ld d, h
    pop af
    inc d

jr_013_4795:
    db $fc
    ld d, d
    dec d
    and h
    or h
    dec d
    ld c, h
    ld d, $16
    db $f4
    ld [hl], a
    ld d, $9c
    reti


    ld d, $44
    dec sp
    rla
    db $ec
    sbc h
    rla
    sub h
    cp $17
    inc a
    ld h, b
    jr jr_013_4795

    pop bc
    jr jr_013_47b4

jr_013_47b4:
    nop
    nop
    ld [bc], a
    nop
    nop
    rlca
    nop
    nop
    rrca
    nop
    nop
    ld e, $00
    nop
    ld [hl-], a
    nop
    nop
    ld e, d
    nop
    nop
    adc h
    nop
    nop
    rst $10
    nop
    nop
    ld c, d
    ld bc, $f400
    ld bc, $f800
    ld [bc], a
    nop
    jr c, jr_013_47dd

    nop
    ret z

    dec b
    nop

jr_013_47dd:
    cp h
    rlca
    nop
    jr z, jr_013_47ec

    nop
    inc [hl]
    dec c
    nop
    ld [$0011], sp
    call z, Call_000_0015

jr_013_47ec:
    ld h, $1b
    nop
    inc [hl]
    ld hl, $0400
    add hl, hl
    nop
    db $f4
    inc sp
    nop
    inc b
    ld b, d
    nop
    inc [hl]
    ld d, e
    nop
    add h
    ld h, a
    nop
    db $f4
    ld a, [hl]
    nop
    add h
    sbc c
    nop
    inc [hl]
    or a
    nop
    inc b
    ret c

    nop
    db $f4
    ei
    nop
    inc b
    inc hl
    ld bc, $4d34
    ld bc, $7a84
    ld bc, $aaf4
    ld bc, $de84
    ld bc, $1534
    ld [bc], a
    inc b
    ld c, a
    ld [bc], a
    db $f4
    adc e
    ld [bc], a
    inc b
    call z, Call_000_3402
    rrca
    inc bc
    add h
    ld d, l
    inc bc
    and h
    and e
    inc bc
    sub h
    ld sp, hl
    inc bc
    ld d, h
    ld d, a
    inc b
    db $e4
    cp h
    inc b
    ld b, h
    ld a, [hl+]
    dec b
    ld [hl], h
    sbc a
    dec b
    and h
    inc d
    ld b, $d4
    adc c
    ld b, $04
    rst $38
    ld b, $34
    ld [hl], h
    rlca
    ld h, h
    jp hl


    rlca
    sub h
    ld e, [hl]
    ld [$d3c4], sp
    ld [$48f4], sp
    add hl, bc
    inc h
    cp [hl]
    add hl, bc
    ld d, h
    inc sp
    ld a, [bc]
    add h
    xor b
    ld a, [bc]
    or h
    dec e
    dec bc
    db $e4
    sub d
    dec bc
    inc d
    ld [$440c], sp
    ld a, l
    inc c
    ld [hl], h
    ld a, [c]
    inc c
    and h
    ld h, a
    dec c
    call nc, $0ddc
    inc b
    ld d, d
    ld c, $34
    rst $00
    ld c, $64
    inc a
    rrca
    sub h
    or c
    rrca
    call nz, Call_000_1026
    db $f4
    sbc e
    db $10
    inc h
    ld de, $5411
    add [hl]
    ld de, $fb84
    ld de, $70b4
    ld [de], a
    db $e4
    push hl
    ld [de], a
    inc d
    ld e, e
    inc de
    ld b, h
    ret nc

    inc de
    ld [hl], h
    ld b, l
    inc d
    and h
    cp d
    inc d
    call nc, $152f
    inc b
    and l
    dec d
    inc [hl]
    ld a, [de]
    ld d, $64
    adc a
    ld d, $94
    inc b
    rla
    call nz, $1779
    db $f4
    xor $17
    inc h
    ld h, h
    jr @+$56

    reti


    jr @-$7a

    ld c, [hl]
    add hl, de
    or h
    jp $e419


    jr c, jr_013_48e4

    inc d
    xor [hl]
    ld a, [de]
    ld b, h
    inc hl
    dec de
    ld [hl], h
    sbc b
    dec de
    and h
    dec c
    inc e
    call nc, $1c82
    inc b
    ld hl, sp+$1c
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    rlca
    nop

jr_013_48e4:
    nop
    rrca
    nop
    nop
    ld e, $00
    nop
    ld [hl-], a
    nop
    nop
    ld e, d
    nop
    nop
    adc h
    nop
    nop
    rst $10
    nop
    nop
    ld c, d
    ld bc, $f400
    ld bc, $f800
    ld [bc], a
    nop
    jr c, jr_013_4906

    nop
    ret z

    dec b
    nop

jr_013_4906:
    cp h
    rlca
    nop
    jr z, jr_013_4915

    nop
    inc [hl]
    dec c
    nop
    ld [$0011], sp
    call z, Call_000_0015

jr_013_4915:
    ld h, $1b
    nop
    inc [hl]
    ld hl, $0400
    add hl, hl
    nop
    cp h
    inc [hl]
    nop
    ld e, h
    ld b, h
    nop
    db $e4
    ld d, a
    nop
    ld d, h
    ld l, a
    nop
    xor h
    adc d
    nop
    db $ec
    xor c
    nop
    inc d
    call Call_000_2400
    db $f4
    nop
    inc e
    rra
    ld bc, $4dfc
    ld bc, $80c4
    ld bc, $b774
    ld bc, $f20c
    ld bc, $308c
    ld [bc], a
    db $f4
    ld [hl], d
    ld [bc], a
    ld b, h
    cp c
    ld [bc], a
    ld a, h
    inc bc
    inc bc
    sbc h
    ld d, c
    inc bc
    and h
    and e
    inc bc
    sub h
    ld sp, hl
    inc bc
    ld l, h
    ld d, e
    inc b
    inc l
    or c
    inc b
    call nc, Call_000_0512
    ld a, h
    ld [hl], h
    dec b
    inc h
    sub $05
    call z, $0637
    ld [hl], h
    sbc c
    ld b, $1c
    ei
    ld b, $c4
    ld e, h
    rlca
    ld l, h
    cp [hl]
    rlca
    inc d
    jr nz, jr_013_4983

    cp h
    add c
    ld [$e364], sp
    ld [$450c], sp

jr_013_4983:
    add hl, bc
    or h
    and [hl]
    add hl, bc
    ld e, h
    ld [$040a], sp
    ld l, d
    ld a, [bc]
    xor h
    rrc d
    ld d, h
    dec l
    dec bc
    db $fc
    adc [hl]
    dec bc
    and h
    ldh a, [$0b]
    ld c, h
    ld d, d
    inc c
    db $f4
    or e
    inc c
    sbc h
    dec d
    dec c
    ld b, h
    ld [hl], a
    dec c
    db $ec
    ret c

    dec c
    sub h
    ld a, [hl-]
    ld c, $3c
    sbc h
    ld c, $e4
    db $fd
    ld c, $8c
    ld e, a
    rrca
    inc [hl]
    pop bc
    rrca
    call c, $1022
    add h
    add h
    db $10
    inc l
    and $10
    call nc, Call_000_1147
    ld a, h
    xor c
    ld de, $0b24
    ld [de], a
    call z, Call_000_126c
    ld [hl], h
    adc $12
    inc e
    jr nc, jr_013_49e5

    call nz, $1391
    call z, Call_000_126c
    inc d
    ld d, l
    inc d
    cp h
    or [hl]
    inc d
    ld h, h
    jr @+$17

    inc c
    ld a, d
    dec d
    or h

jr_013_49e5:
    db $db
    dec d
    ld e, h
    dec a
    ld d, $04
    sbc a
    ld d, $ac
    nop
    rla
    ld d, h

jr_013_49f1:
    ld h, d
    rla
    db $fc
    jp $a417


    dec h
    jr jr_013_4a46

    add a
    jr jr_013_49f1

    add sp, $18
    sbc h
    ld c, d
    add hl, de
    ld b, h
    xor h
    add hl, de
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    rlca
    nop
    nop
    rrca
    nop
    nop
    ld e, $00
    nop
    ld [hl-], a
    nop
    nop
    ld e, d
    nop
    nop
    adc h
    nop
    nop
    rst $10
    nop
    nop
    ld c, d
    ld bc, $f400
    ld bc, $f800
    ld [bc], a
    nop
    jr c, jr_013_4a2f

    nop
    ret z

    dec b
    nop

jr_013_4a2f:
    cp h
    rlca
    nop
    jr z, jr_013_4a3e

    nop
    inc [hl]
    dec c
    nop
    ld [$0011], sp
    call z, Call_000_0015

jr_013_4a3e:
    ld h, $1b
    nop
    inc [hl]
    ld hl, $0400
    add hl, hl

jr_013_4a46:
    nop
    cp h
    inc [hl]
    nop
    ld e, h
    ld b, h
    nop
    db $e4
    ld d, a
    nop
    ld d, h
    ld l, a
    nop
    xor h
    adc d
    nop
    db $ec
    xor c
    nop
    inc d
    call Call_000_2400
    db $f4
    nop
    inc e
    rra
    ld bc, $4dfc
    ld bc, $80c4
    ld bc, $b774
    ld bc, $f20c
    ld bc, $308c
    ld [bc], a
    db $f4
    ld [hl], d
    ld [bc], a
    ld b, h
    cp c
    ld [bc], a
    ld a, h
    inc bc
    inc bc
    sbc h
    ld d, c
    inc bc
    and h
    and e
    inc bc
    sub h
    ld sp, hl
    inc bc
    ld d, h
    ld d, a
    inc b
    db $e4
    cp h
    inc b
    ld b, h
    ld a, [hl+]
    dec b

Call_013_4a8c:
    ld [hl], h
    sbc a
    dec b
    and h
    inc d
    ld b, $d4
    adc c
    ld b, $04
    rst $38
    ld b, $34
    ld [hl], h
    rlca
    ld h, h
    jp hl


    rlca
    sub h
    ld e, [hl]
    ld [$d3c4], sp
    ld [$48f4], sp
    add hl, bc
    inc h
    cp [hl]
    add hl, bc
    ld d, h
    inc sp
    ld a, [bc]
    add h
    xor b
    ld a, [bc]
    or h
    dec e
    dec bc
    db $e4
    sub d
    dec bc
    inc d
    ld [$440c], sp
    ld a, l
    inc c
    ld [hl], h
    ld a, [c]
    inc c
    and h
    ld h, a
    dec c
    call nc, $0ddc
    inc b
    ld d, d
    ld c, $34
    rst $00
    ld c, $64
    inc a
    rrca
    sub h
    or c
    rrca
    call nz, Call_000_1026
    db $f4
    sbc e
    db $10
    inc h
    ld de, $5411
    add [hl]
    ld de, $fb84
    ld de, $70b4
    ld [de], a
    db $e4
    push hl
    ld [de], a
    inc d
    ld e, e
    inc de
    ld b, h
    ret nc

    inc de
    ld [hl], h
    ld b, l
    inc d
    and h
    cp d
    inc d
    call nc, $152f
    inc b
    and l
    dec d
    inc [hl]
    ld a, [de]
    ld d, $64
    adc a
    ld d, $94
    inc b
    rla
    call nz, $1779
    db $f4
    xor $17
    inc h
    ld h, h
    jr jr_013_4b5f

    reti


    jr @-$7a

    ld c, [hl]
    add hl, de
    or h
    jp $e419


    jr c, jr_013_4b30

    inc d
    xor [hl]
    ld a, [de]
    ld b, h
    inc hl
    dec de
    ld [hl], h
    sbc b
    dec de
    and h
    dec c
    inc e
    call nc, $1c82
    inc b
    ld hl, sp+$1c
    inc [hl]
    ld l, l
    dec e
    ld h, h
    ld [c], a
    dec e
    nop
    nop

jr_013_4b30:
    nop
    dec b
    nop
    nop
    rrca
    nop
    nop
    ld e, $00
    nop
    inc a
    nop
    nop
    ld h, h
    nop
    nop
    or h
    nop
    nop
    jr jr_013_4b46

    nop

jr_013_4b46:
    xor [hl]
    ld bc, $9400
    ld [bc], a
    nop
    add sp, $03
    nop
    ldh a, [rTIMA]
    nop
    ld [hl], b
    ld [$9000], sp
    dec bc
    nop
    ld a, b
    rrca
    nop
    ld d, b
    inc d
    nop
    ld l, b

jr_013_4b5f:
    ld a, [de]
    nop
    jr c, @+$24

    nop
    sbc b
    dec hl
    nop
    ld c, h
    ld [hl], $00
    ld l, b
    ld b, d
    nop
    ld [$0052], sp
    ret z

    ld h, h
    nop
    xor b
    ld a, d
    nop
    xor b
    sub e
    nop
    ret z

    xor a
    nop
    ld [$00cf], sp
    ld l, b
    pop af
    nop
    add sp, $16
    ld bc, $3f88
    ld bc, $6b48
    ld bc, $9a28
    ld bc, $cc28
    ld bc, HeaderROMSize
    ld [bc], a
    adc b
    add hl, sp
    ld [bc], a
    add sp, $74
    ld [bc], a
    ld l, b

jr_013_4b9b:
    or e
    ld [bc], a
    ld [$02f5], sp
    ret z

    add hl, sp
    inc bc
    xor b
    add c
    inc bc
    xor b
    call z, $c803
    ld a, [de]
    inc b
    jp z, $046d

    xor [hl]
    push bc
    inc b
    ld [hl], h
    ld [hl+], a
    dec b
    inc e
    add h
    dec b
    and [hl]
    ld [$1205], a
    ld d, [hl]
    ld b, $60
    add $06
    sub b
    dec sp
    rlca
    sub b
    cp b
    rlca
    ld h, b
    dec a
    ld [$ca00], sp
    ld [$5e70], sp
    add hl, bc
    or b
    ld a, [$d809]
    sbc d
    ld a, [bc]
    add sp, $3e
    dec bc
    ldh [$e6], a
    dec bc
    ret nz

    sub d
    inc c
    adc b
    ld b, d
    dec c
    jr c, @-$08

    dec c
    ret nc

    xor l
    ld c, $50
    ld l, c
    rrca
    cp b
    jr z, jr_013_4bfe

jr_013_4bee:
    ld [$10ec], sp
    ld e, b
    xor a
    ld de, $72a8
    ld [de], a
    ld hl, sp+$35
    inc de
    ld c, b
    ld sp, hl
    inc de
    sbc b

jr_013_4bfe:
    ld l, h
    inc d

jr_013_4c00:
    add sp, $7f
    dec d
    jr c, jr_013_4c48

    ld d, $88
    ld b, $17
    ret c

    ret


    rla
    jr z, jr_013_4b9b

Jump_013_4c0e:
    jr jr_013_4c88

    ld d, b
    add hl, de
    ret z

    inc de
    ld a, [de]
    jr jr_013_4bee

    ld a, [de]
    ld l, b

jr_013_4c19:
    sbc d
    dec de
    cp b
    ld e, l
    inc e
    ld [$1d21], sp
    ld e, b
    db $e4
    dec e
    xor b
    and a
    ld e, $f8
    ld l, d
    rra
    ld c, b
    ld l, $20
    sbc b
    pop af
    jr nz, jr_013_4c19

    or h
    ld hl, $7838
    ld [hl+], a
    adc b
    dec sp
    inc hl
    ret c

    cp $23
    jr z, jr_013_4c00

    inc h
    ld a, b
    add l
    dec h
    ret z

    ld c, b
    ld h, $18
    inc c
    daa

jr_013_4c48:
    ld l, b
    rst $08
    daa
    cp b
    sub d
    jr z, @+$0a

    ld d, [hl]
    add hl, hl
    ld e, b
    add hl, de
    ld a, [hl+]
    xor b
    call c, $002a
    nop
    nop
    dec b
    nop
    nop
    rrca
    nop
    nop
    ld e, $00
    nop
    inc a
    nop
    nop
    ld h, h
    nop
    nop
    or h
    nop
    nop
    jr jr_013_4c6f

    nop

jr_013_4c6f:
    xor [hl]
    ld bc, $9400
    ld [bc], a
    nop
    add sp, $03
    nop
    ldh a, [rTIMA]
    nop
    ld [hl], b
    ld [$9000], sp
    dec bc
    nop
    ld a, b
    rrca
    nop
    ld d, b
    inc d
    nop
    ld l, b

jr_013_4c88:
    ld a, [de]
    nop
    jr c, @+$24

    nop
    sbc b
    dec hl
    nop
    ld c, h
    ld [hl], $00
    ld l, b
    ld b, d
    nop
    ld [$0052], sp
    ret z

    ld h, h
    nop
    xor b
    ld a, d
    nop
    xor b
    sub e
    nop
    ret z

    xor a
    nop
    ld [$00cf], sp
    ld l, b
    pop af
    nop
    add sp, $16
    ld bc, $3f88
    ld bc, $6b48
    ld bc, $9a28
    ld bc, $cc28
    ld bc, HeaderROMSize
    ld [bc], a
    adc b
    add hl, sp
    ld [bc], a
    add sp, $74
    ld [bc], a
    ld l, b
    or e
    ld [bc], a
    ld [$02f5], sp
    ret z

    add hl, sp
    inc bc
    xor b
    add c
    inc bc
    xor b
    call z, $c803
    ld a, [de]
    inc b
    inc b
    ld [hl], l
    inc b
    ld e, h
    db $db
    inc b
    ret nc

    ld c, l
    dec b

jr_013_4cde:
    ld h, b
    call z, Call_000_0c05
    ld d, a
    ld b, $d4
    db $ed
    ld b, $1c
    sub c
    rlca
    db $e4
    ld b, b
    ld [$f494], sp
    ld [$ac2c], sp
    add hl, bc
    xor h
    ld h, a
    ld a, [bc]
    inc d
    daa
    dec bc
    ld h, h
    ld [$9c0b], a
    or c
    inc c
    cp h
    ld a, h
    dec c
    call nz, $0e4b
    or h
    ld e, $0f
    adc h
    push af
    rrca
    ld c, h
    ret nc

    db $10
    db $f4
    xor [hl]
    ld de, $9184
    ld [de], a
    db $fc
    ld [hl], a
    inc de
    ld e, h
    ld h, d
    inc d
    cp h
    ld c, h
    dec d
    inc e
    scf
    ld d, $7c
    ld hl, $dc17
    dec bc
    jr jr_013_4d63

    or $18
    sbc h
    ldh [rNR24], a
    db $fc
    jp z, $5c1a

    or l
    dec de
    cp h
    sbc a
    inc e
    inc e
    adc d
    dec e
    ld a, h
    ld [hl], h
    ld e, $dc
    ld e, [hl]
    rra
    inc a
    ld c, c
    jr nz, jr_013_4cde

    inc sp
    ld hl, $1dfc
    ld [hl+], a
    ld e, h
    ld [$bc23], sp
    ld a, [c]
    inc hl
    inc e
    db $dd
    inc h
    ld a, h
    rst $00
    dec h
    call c, Call_000_26b1
    inc a
    sbc h
    daa

jr_013_4d59:
    sbc h
    add [hl]
    jr z, jr_013_4d59

    ld [hl], b
    add hl, hl
    ld e, h
    ld e, e
    ld a, [hl+]
    cp h

jr_013_4d63:
    ld b, l
    dec hl
    inc e
    jr nc, jr_013_4d94

    ld a, h
    ld a, [de]
    dec l
    call c, Call_000_2e04
    inc a
    rst $28
    ld l, $9c
    reti


    cpl
    db $fc
    jp Jump_013_5c30


    xor [hl]
    ld sp, $98bc
    ld [hl-], a
    inc e
    add e
    inc sp
    nop
    nop
    nop
    dec b
    nop
    nop
    rrca
    nop
    nop
    ld e, $00
    nop
    inc a
    nop
    nop
    ld h, h
    nop
    nop
    or h
    nop

jr_013_4d94:
    nop
    jr jr_013_4d98

    nop

jr_013_4d98:
    xor [hl]
    ld bc, $9400
    ld [bc], a
    nop
    add sp, $03
    nop
    ldh a, [rTIMA]
    nop
    ld [hl], b
    ld [$9000], sp
    dec bc
    nop
    ld a, b
    rrca
    nop
    ld d, b
    inc d
    nop
    ld l, b
    ld a, [de]
    nop
    jr c, @+$24

    nop
    sbc b
    dec hl
    nop
    ld c, h
    ld [hl], $00
    ld l, b
    ld b, d
    nop
    ld [$0052], sp
    ld e, b
    ld h, [hl]
    nop
    ld e, b
    ld a, a
    nop
    ld [$009d], sp
    ld l, b
    cp a
    nop
    ld a, b
    and $00
    jr c, jr_013_4de5

    ld bc, $42a8
    ld bc, $77c8
    ld bc, $b198
    ld bc, $f018
    ld bc, $3348
    ld [bc], a
    jr z, jr_013_4e60

jr_013_4de5:
    ld [bc], a
    cp b
    rst $00
    ld [bc], a
    ld hl, sp+$18
    inc bc
    add sp, $6e
    inc bc
    adc b
    ret


    inc bc
    ret c

    jr z, jr_013_4df9

    ret c

    adc h
    inc b
    adc b

jr_013_4df9:
    push af
    inc b
    add sp, $62
    dec b
    inc h
    sub $05
    inc a
    ld c, a
    ld b, $30
    rst $08
    ld b, $00
    ld d, e
    rlca
    xor h
    db $dd
    rlca
    inc [hl]
    ld l, [hl]
    ld [$0498], sp
    add hl, bc
    ret c

    and b
    add hl, bc

jr_013_4e16:
    ld [hl], b
    ccf
    ld a, [bc]
    ld h, b
    ldh [$0a], a
    xor b
    add e
    dec bc
    ld c, b
    add hl, hl
    inc c
    ld b, b
    pop de
    inc c
    sub b
    ld a, e
    dec c
    jr c, jr_013_4e52

    ld c, $38
    rst $10
    ld c, $90
    adc b
    rrca
    ld b, b
    inc a
    db $10
    db $10
    di
    stop
    xor l
    ld de, $6a10
    ld [de], a
    ld b, b
    ld a, [hl+]
    inc de
    sub b
    db $ed
    inc de
    ldh [$b0], a
    inc d
    jr nc, jr_013_4ebc

    dec d
    add b
    scf
    ld d, $d0
    ld a, [$2016]
    cp [hl]
    rla

jr_013_4e52:
    ld [hl], b
    add c

jr_013_4e54:
    jr jr_013_4e16

    ld b, h
    add hl, de
    db $10
    ld [$601a], sp
    rr d
    or b
    adc [hl]

jr_013_4e60:
    dec de
    nop
    ld d, d
    inc e
    ld d, b
    dec d
    dec e
    and b
    ret c

    dec e
    ldh a, [$9b]
    ld e, $40
    ld e, a
    rra
    sub b
    ld [hl+], a
    jr nz, jr_013_4e54

jr_013_4e74:
    push hl
    jr nz, @+$32

    xor c
    ld hl, $6c80
    ld [hl+], a
    ret nc

    cpl
    inc hl
    jr nz, jr_013_4e74

    inc hl
    ld [hl], b
    or [hl]
    inc h
    ret nz

jr_013_4e86:
    ld a, c
    dec h
    db $10
    dec a
    ld h, $60
    nop
    daa
    or b
    jp Jump_000_0027


    add a
    jr z, jr_013_4ee5

    ld c, d
    add hl, hl
    and b
    dec c
    ld a, [hl+]
    ldh a, [$d0]
    ld a, [hl+]
    ld b, b
    sub h
    dec hl
    sub b
    ld d, a
    inc l
    ldh [rNR30], a
    dec l
    jr nc, jr_013_4e86

    dec l
    nop
    nop
    nop
    dec b
    nop
    nop
    rrca
    nop
    nop
    ld e, $00
    nop
    inc a
    nop
    nop
    ld h, h
    nop
    nop
    or h

jr_013_4ebc:
    nop
    nop
    jr jr_013_4ec1

    nop

jr_013_4ec1:
    xor [hl]
    ld bc, $9400
    ld [bc], a
    nop
    add sp, $03
    nop
    ldh a, [rTIMA]
    nop
    ld [hl], b
    ld [$9000], sp
    dec bc
    nop
    ld a, b
    rrca
    nop
    ld d, b
    inc d
    nop
    ld l, b
    ld a, [de]
    nop
    jr c, @+$24

    nop
    sbc b
    dec hl
    nop
    ld c, h
    ld [hl], $00

jr_013_4ee5:
    ld l, b
    ld b, d
    nop
    ld [$0052], sp
    ld e, b
    ld h, [hl]
    nop
    ld e, b
    ld a, a
    nop
    ld [$009d], sp
    ld l, b
    cp a
    nop
    ld a, b
    and $00
    jr c, jr_013_4f0e

    ld bc, $42a8
    ld bc, $77c8
    ld bc, $b198
    ld bc, $f018
    ld bc, $3348
    ld [bc], a
    jr z, @+$7d

jr_013_4f0e:
    ld [bc], a
    cp b
    rst $00
    ld [bc], a
    ld hl, sp+$18
    inc bc
    add sp, $6e
    inc bc
    adc b
    ret


    inc bc
    ret c

    jr z, jr_013_4f22

    ret c

    adc h
    inc b
    adc b

jr_013_4f22:
    push af
    inc b
    add sp, $62
    dec b
    ld b, $db
    dec b
    ld [c], a
    ld e, l
    ld b, $7c
    db $eb
    ld b, $d4
    add e
    rlca
    ld [$0826], a
    cp [hl]
    call nc, Call_013_5008
    adc l
    add hl, bc
    and b
    ld d, b
    ld a, [bc]
    ld c, b
    ld d, $0b
    ld c, b
    sbc $0b
    and b
    xor b
    inc c
    ld d, b
    ld [hl], l
    dec c
    ld e, b
    ld b, h
    ld c, $b8
    dec d
    rrca
    ld [hl], b
    jp hl


    rrca
    add b
    cp a

jr_013_4f56:
    db $10
    add sp, -$69
    ld de, $72a8
    ld [de], a
    adc b
    ld d, b
    inc de
    adc b
    ld sp, $a814
    dec d
    dec d
    add sp, -$04
    dec d
    ld c, b
    rst $20
    ld d, $a8
    pop de

jr_013_4f6e:
    rla
    ld [$18bc], sp
    ld l, b
    and [hl]
    add hl, de
    ret z

    sub b
    ld a, [de]
    jr z, jr_013_4ff5

    dec de
    adc b
    ld h, l
    inc e
    add sp, $4f
    dec e
    ld c, b
    ld a, [hl-]
    ld e, $a8
    inc h
    rra
    ld [$200f], sp
    ld l, b
    ld sp, hl
    jr nz, jr_013_4f56

    db $e3
    ld hl, $ce28
    ld [hl+], a
    adc b
    cp b
    inc hl
    add sp, -$5e
    inc h
    ld c, b
    adc l
    dec h
    xor b
    ld [hl], a
    ld h, $08
    ld h, d
    daa
    ld l, b
    ld c, h
    jr z, jr_013_4f6e

    ld [hl], $29
    jr z, jr_013_4fcb

    ld a, [hl+]
    adc b
    dec bc
    dec hl
    add sp, -$0b
    dec hl
    ld c, b
    ldh [$2c], a
    xor b
    jp z, Jump_000_082d

    or l
    ld l, $68
    sbc a
    cpl
    ret z

    adc c
    jr nc, jr_013_4fe9

    ld [hl], h
    ld sp, $5e88
    ld [hl-], a
    add sp, $48
    inc sp
    ld c, b
    inc sp

jr_013_4fcb:
    inc [hl]
    xor b
    dec e
    dec [hl]
    ld [$3608], sp
    nop
    nop
    nop
    dec b
    nop
    nop
    rrca
    nop
    nop
    ld e, $00
    nop
    inc a
    nop
    nop
    ld h, h
    nop
    nop
    or h
    nop
    nop
    jr jr_013_4fea

jr_013_4fe9:
    nop

jr_013_4fea:
    xor [hl]
    ld bc, $9400
    ld [bc], a
    nop
    add sp, $03
    nop
    ldh a, [rTIMA]

jr_013_4ff5:
    nop
    ld [hl], b
    ld [$9000], sp
    dec bc
    nop
    ld a, b
    rrca
    nop
    ld d, b
    inc d
    nop
    ld l, b
    ld a, [de]
    nop

jr_013_5005:
    jr c, @+$24

    nop

Call_013_5008:
    sbc b
    dec hl
    nop
    ld c, h
    ld [hl], $00
    ld l, b
    ld b, d
    nop
    ld [$0052], sp
    add sp, $67
    nop
    ld [$0084], sp
    ld l, b
    and [hl]
    nop
    ld [$00cf], sp
    add sp, -$03
    nop
    ld [$0133], sp
    ld l, b
    ld l, [hl]
    ld bc, $b008
    ld bc, $f7e8
    ld bc, $4608
    ld [bc], a
    ld l, b
    sbc d
    ld [bc], a
    ld [$02f5], sp
    add sp, $55
    inc bc
    ld [$03bd], sp
    ld l, b
    ld a, [hl+]
    inc b
    ld [$049e], sp
    add sp, $17
    dec b
    ld [$0598], sp
    ld l, b
    ld e, $06
    ld e, [hl]

jr_013_504e:
    and l
    ld b, $ea
    inc l
    rlca
    inc c

jr_013_5054:
    or l
    rlca
    call nz, Call_000_083d
    ld [hl], b
    ret z

    ld [$5510], sp
    add hl, bc
    and h
    db $e3
    add hl, bc
    inc l
    ld [hl], h
    ld a, [bc]
    xor b
    ld b, $0b
    jr jr_013_5005

    dec bc
    ld a, h
    ld sp, $d40c
    ret


    inc c
    jr nz, @+$66

    dec c
    ld h, b
    nop
    ld c, $a0
    sbc h
    ld c, $e0
    jr c, jr_013_508c

    jr nz, jr_013_5054

    rrca
    ld h, b
    ld [hl], c
    db $10
    and b
    dec c
    ld de, $a9e0
    ld de, $4620

jr_013_508b:
    ld [de], a

jr_013_508c:
    ld h, b
    ld [c], a
    ld [de], a
    and b
    ld a, [hl]
    inc de
    ldh [rNR30], a
    inc d
    jr nz, jr_013_504e

    inc d
    ld h, b
    ld d, e
    dec d
    and b
    rst $28
    dec d
    ldh [$8b], a
    ld d, $20
    jr z, jr_013_50bb

    ld h, b
    call nz, $a017
    ld h, b
    jr jr_013_508b

    db $fc
    jr jr_013_50ce

    sbc c
    add hl, de
    ld h, b
    dec [hl]
    ld a, [de]
    and b
    pop de
    ld a, [de]
    ldh [$6d], a
    dec de

jr_013_50b9:
    jr nz, jr_013_50c5

jr_013_50bb:
    inc e
    ld h, b
    and [hl]
    inc e
    and b
    ld b, d
    dec e
    ldh [$de], a
    dec e

jr_013_50c5:
    jr nz, @+$7d

    ld e, $60
    rla
    rra
    and b
    or e
    rra

jr_013_50ce:
    ldh [rVBK], a
    jr nz, jr_013_50f2

    db $ec
    jr nz, jr_013_5135

    adc b
    ld hl, $24a0
    ld [hl+], a
    ldh [$c0], a
    ld [hl+], a
    jr nz, @+$5f

    inc hl
    ld h, b
    ld sp, hl
    inc hl
    and b
    sub l
    inc h
    ldh [$31], a
    dec h
    jr nz, jr_013_50b9

    dec h
    ld h, b
    ld l, d
    ld h, $a0
    ld b, $27

jr_013_50f2:
    ldh [$a2], a
    daa
    jr nz, @+$41

    jr z, @+$62

    db $db
    jr z, jr_013_50fc

jr_013_50fc:
    nop
    nop
    dec b
    nop
    nop
    rrca
    nop
    nop
    ld e, $00
    nop
    inc a
    nop
    nop
    ld h, h
    nop
    nop
    or h
    nop
    nop
    jr jr_013_5113

    nop

jr_013_5113:
    xor [hl]
    ld bc, $9400
    ld [bc], a
    nop
    add sp, $03
    nop
    ldh a, [rTIMA]
    nop
    ld [hl], b
    ld [$9000], sp
    dec bc
    nop
    ld a, b
    rrca
    nop
    ld d, b
    inc d
    nop
    ld l, b
    ld a, [de]
    nop
    jr c, @+$24

    nop
    sbc b
    dec hl
    nop
    ld c, h

jr_013_5135:
    ld [hl], $00
    ld l, b
    ld b, d
    nop
    ld [$0052], sp
    add sp, $67
    nop
    ld [$0084], sp
    ld l, b
    and [hl]
    nop
    ld [$00cf], sp
    add sp, -$03
    nop
    ld [$0133], sp
    ld l, b
    ld l, [hl]
    ld bc, $b008
    ld bc, $f7e8
    ld bc, $4608
    ld [bc], a
    ld l, b
    sbc d
    ld [bc], a
    ld [$02f5], sp
    add sp, $55
    inc bc
    ld [$03bd], sp
    ld l, b
    ld a, [hl+]
    inc b
    ld [$049e], sp
    add sp, $17
    dec b
    ld [$0598], sp
    ld l, b
    ld e, $06
    ld b, b
    xor d
    ld b, $90
    dec sp
    rlca
    ld e, b

jr_013_517d:
    jp nc, $9807

    ld l, [hl]
    ld [$0ec0], sp
    add hl, bc
    ret nc

    or d
    add hl, bc
    ret z

    ld e, d
    ld a, [bc]
    xor b
    ld b, $0b
    ld [hl], b
    or [hl]
    dec bc
    jr nz, jr_013_51fd

    inc c

jr_013_5194:
    cp b
    ld hl, $380d
    db $dd
    dec c
    and b
    sbc h
    ld c, $f0
    ld e, a
    rrca
    ld b, b
    inc hl
    db $10
    sub b
    and $10
    ldh [$a9], a
    ld de, $6d30
    ld [de], a
    add b
    jr nc, jr_013_51c2

    ret nc

    di
    inc de
    jr nz, @-$47

    inc d
    ld [hl], b
    ld a, d
    dec d
    ret nz

    dec a
    ld d, $10
    ld bc, $6017
    call nz, $b017

jr_013_51c2:
    add a
    jr jr_013_51c5

jr_013_51c5:
    ld c, e
    add hl, de
    ld d, b
    ld c, $1a
    and b
    pop de
    ld a, [de]
    ldh a, [$94]
    dec de

jr_013_51d0:
    ld b, b
    ld e, b
    inc e
    sub b
    dec de
    dec e
    ldh [$de], a
    dec e
    jr nc, jr_013_517d

    ld e, $80
    ld h, l
    rra
    ret nc

    jr z, jr_013_5202

jr_013_51e2:
    jr nz, jr_013_51d0

    jr nz, jr_013_5256

    xor a
    ld hl, $72c0
    ld [hl+], a
    db $10
    ld [hl], $23
    ld h, b
    ld sp, hl
    inc hl
    or b
    cp h
    inc h
    nop
    add b
    dec h
    ld d, b
    ld b, e
    ld h, $a0
    ld b, $27

jr_013_51fd:
    ldh a, [$c9]
    daa
    ld b, b
    adc l

jr_013_5202:
    jr z, jr_013_5194

    ld d, b
    add hl, hl
    ldh [rNR13], a
    ld a, [hl+]
    jr nc, jr_013_51e2

    ld a, [hl+]
    add b
    sbc d
    dec hl
    push de
    ld e, l
    inc l
    jr nz, jr_013_5235

    dec l
    ld [hl], b
    db $e4
    dec l
    ret nz

    and a
    ld l, $10
    ld l, e
    cpl
    ld h, b
    ld l, $30
    or b
    pop af
    jr nc, jr_013_5225

jr_013_5225:
    nop
    nop
    dec b
    nop
    nop
    rrca
    nop
    nop
    ld e, $00
    nop
    inc a
    nop
    nop
    ld h, h
    nop

jr_013_5235:
    nop
    or h
    nop
    nop
    jr jr_013_523c

    nop

jr_013_523c:
    xor [hl]
    ld bc, $9400
    ld [bc], a
    nop
    add sp, $03
    nop
    ldh a, [rTIMA]
    nop
    ld [hl], b
    ld [$9000], sp
    dec bc
    nop
    ld a, b
    rrca
    nop
    ld d, b
    inc d
    nop
    ld l, b
    ld a, [de]

jr_013_5256:
    nop
    jr c, @+$24

    nop
    sbc b
    dec hl
    nop
    ld c, h
    ld [hl], $00
    ld l, b
    ld b, d
    nop
    ld [$0052], sp
    ld a, b
    ld l, c
    nop
    cp b
    adc b
    nop
    ret z

    xor a
    nop
    xor b

jr_013_5270:
    sbc $00
    ld e, b
    dec d
    ld bc, $53d8
    ld bc, $9a28
    ld bc, $e848
    ld bc, $3e38
    ld [bc], a
    ld hl, sp-$65
    ld [bc], a
    adc b
    ld bc, $e803
    ld l, [hl]
    inc bc
    jr jr_013_5270

    inc bc
    jr @+$63

    inc b
    add sp, -$1b
    inc b
    adc b
    ld [hl], d
    dec b
    ld hl, sp+$06
    ld b, $38
    and e
    ld b, $48
    ld b, a
    rlca
    ld b, [hl]

jr_013_52a0:
    xor $07
    ld [hl-], a
    sbc b
    ld [$450c], sp
    add hl, bc
    call nc, Call_000_09f4
    xor b

jr_013_52ac:
    and d
    ld a, [bc]
    adc b
    ld c, [hl]
    dec bc
    ld [hl], h
    ld hl, sp+$0b
    ld l, h
    and b
    inc c
    ld [hl], b
    ld b, [hl]
    dec c
    add b
    ld [$9c0d], a
    adc h
    ld c, $c4
    inc l
    rrca
    ld hl, sp-$36
    rrca
    jr c, jr_013_532f

    db $10
    ld a, b
    inc bc
    ld de, $9fb8
    ld de, $3bf8
    ld [de], a
    jr c, jr_013_52ac

    ld [de], a
    ld a, b
    ld [hl], h
    inc de
    cp b
    db $10
    inc d
    ld hl, sp-$54
    inc d
    jr c, jr_013_5329

    dec d
    ld a, b
    push hl
    dec d
    cp b
    add c
    ld d, $f8
    dec e
    rla
    jr c, @-$44

jr_013_52ec:
    rla
    ld a, b
    ld d, [hl]
    jr @-$46

    ld a, [c]
    jr jr_013_52ec

    adc [hl]
    add hl, de
    jr c, jr_013_5323

    ld a, [de]
    ld a, b
    rst $00
    ld a, [de]
    cp b
    ld h, e
    dec de
    ld hl, sp-$01
    dec de
    jr c, jr_013_52a0

    inc e
    ld a, b
    jr c, jr_013_5325

    cp b
    call nc, $f81d
    ld [hl], b
    ld e, $38
    dec c

jr_013_5310:
    rra
    ld a, b
    xor c
    rra
    cp b
    ld b, l
    jr nz, jr_013_5310

    pop hl
    jr nz, jr_013_5353

    ld a, [hl]
    ld hl, $1a78
    ld [hl+], a
    cp b
    or [hl]
    ld [hl+], a

jr_013_5323:
    ld hl, sp+$52

jr_013_5325:
    inc hl
    jr c, @-$0f

    inc hl

jr_013_5329:
    ld a, b
    adc e
    inc h
    cp b
    daa
    dec h

jr_013_532f:
    ld hl, sp-$3d
    dec h
    jr c, jr_013_5394

    ld h, $78
    db $fc
    ld h, $b8
    sbc b
    daa
    ld hl, sp+$34
    jr z, jr_013_5377

    pop de
    jr z, jr_013_53ba

    ld l, l
    add hl, hl
    cp b
    add hl, bc
    ld a, [hl+]
    ld hl, sp-$5b
    ld a, [hl+]
    jr c, @+$44

    dec hl
    nop
    nop
    nop
    dec b
    nop
    nop

jr_013_5353:
    rrca
    nop
    nop
    ld e, $00
    nop
    inc a
    nop
    nop
    ld h, h
    nop
    nop
    or h
    nop
    nop
    jr jr_013_5365

    nop

jr_013_5365:
    xor [hl]
    ld bc, $9400
    ld [bc], a
    nop
    add sp, $03
    nop
    ldh a, [rTIMA]
    nop
    ld [hl], b
    ld [$9000], sp
    dec bc
    nop

jr_013_5377:
    ld a, b
    rrca
    nop
    ld d, b
    inc d
    nop
    ld l, b
    ld a, [de]
    nop
    jr c, @+$24

    nop
    sbc b
    dec hl
    nop
    ld c, h
    ld [hl], $00
    ld l, b
    ld b, d
    nop
    ld [$0052], sp
    ld a, b
    ld l, c
    nop
    cp b
    adc b

jr_013_5394:
    nop
    ret z

    xor a
    nop
    xor b

jr_013_5399:
    sbc $00
    ld e, b
    dec d
    ld bc, $53d8
    ld bc, $9a28
    ld bc, $e848
    ld bc, $3e38
    ld [bc], a
    ld hl, sp-$65
    ld [bc], a
    adc b
    ld bc, $e803
    ld l, [hl]
    inc bc
    jr jr_013_5399

    inc bc
    inc a
    ld e, e
    inc b
    ld d, h

jr_013_53ba:
    call nc, Call_013_6004
    ld c, a
    dec b
    ld h, b
    call z, Call_013_5405
    ld c, e
    ld b, $3c
    call z, $1806
    ld c, a
    rlca
    add sp, -$2d
    rlca
    xor h
    ld e, d
    ld [$e364], sp
    ld [$71f8], sp
    add hl, bc
    ld l, b
    ld b, $0a
    or h
    and b
    ld a, [bc]
    call c, $0b40
    ldh [$e6], a
    dec bc
    ret nz

    sub d
    inc c
    ld a, h
    ld b, h
    dec c
    inc d
    db $fc
    dec c
    adc b
    cp c
    ld c, $d8
    ld a, h

jr_013_53f1:
    rrca
    db $10
    ld b, h
    db $10
    jr nc, jr_013_5406

    ld de, $de38
    ld de, $b128
    ld [de], a
    nop
    adc b
    inc de
    ret nz

    ld h, d
    inc d
    ld l, b

Call_013_5405:
    ld b, c

jr_013_5406:
    dec d

Jump_013_5407:
    ld hl, sp+$23
    ld d, $70
    ld a, [bc]
    rla
    ret nc

    db $f4
    rla
    jr nc, jr_013_53f1

    jr @-$6e

    ret


    add hl, de
    ldh a, [$b3]
    ld a, [de]
    ld d, b
    sbc l
    dec de
    or b
    adc b
    inc e
    db $10
    ld [hl], e
    dec e
    ld [hl], b
    ld e, l
    ld e, $d0
    ld b, a
    rra
    jr nc, jr_013_545c

    jr nz, @-$6e

    inc e
    ld hl, $06f0
    ld [hl+], a
    ld d, b

jr_013_5432:
    pop af
    ld [hl+], a
    or b
    db $db
    inc hl

jr_013_5437:
    db $10
    add $24
    ld [hl], b
    or b
    dec h
    ret nc

    sbc d
    ld h, $30
    add l
    daa
    sub b
    ld l, a
    jr z, jr_013_5437

    ld e, c
    add hl, hl
    ld d, b
    ld b, h
    ld a, [hl+]
    or b
    ld l, $2b
    db $10
    add hl, de
    inc l
    ld [hl], b
    inc bc
    dec l
    ret nc

    db $ed
    dec l
    jr nc, jr_013_5432

    ld l, $90

jr_013_545c:
    jp nz, $f02f

    xor h
    jr nc, jr_013_54b2

    sub a
    ld sp, $81b0
    ld [hl-], a
    db $10
    ld l, h
    inc sp
    ld [hl], b
    ld d, [hl]
    inc [hl]
    ret nc

    ld b, b
    dec [hl]
    jr nc, jr_013_549d

    ld [hl], $90
    dec d
    scf
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    ld e, $00
    nop
    inc a
    nop

jr_013_5481:
    nop
    ld a, b
    nop
    nop
    call c, RST_00
    ld l, b
    ld bc, $3000
    ld [bc], a
    nop
    ld e, h
    inc bc
    nop
    jr z, @+$07

    nop
    ret nc

    rlca
    nop
    ldh [$0b], a
    nop
    ldh [rNR10], a
    nop

jr_013_549d:
    jr nz, jr_013_54b6

    nop
    ldh a, [rNR34]
    nop
    and b
    jr z, jr_013_54a6

jr_013_54a6:
    ret nc

    inc [hl]
    nop
    ld [hl], b
    ld b, h
    nop
    jr nc, @+$59

    nop
    sbc b
    ld l, h
    nop

jr_013_54b2:
    ret nc

    add h
    nop
    db $10

jr_013_54b6:
    and h
    nop
    jr c, jr_013_5481

    nop
    ld c, b
    xor $00
    ld b, b
    add hl, de
    ld bc, $4820
    ld bc, $7ae8
    ld bc, $b198
    ld bc, $ec30
    ld bc, $2ab0
    ld [bc], a
    jr c, jr_013_5542

    ld [bc], a
    ret z

    cp h
    ld [bc], a
    ld h, b
    db $10
    inc bc
    nop
    ld l, e
    inc bc
    xor b
    call z, $3803
    ld [hl-], a
    inc b
    or b
    sbc e
    inc b
    db $10

jr_013_54e6:
    add hl, bc
    dec b
    ld e, b
    ld a, d
    dec b
    adc b
    rst $28
    dec b
    and b
    ld l, b
    ld b, $a0
    push hl
    ld b, $88
    ld h, [hl]
    rlca
    ld e, b
    db $eb
    rlca
    db $10
    ld [hl], h
    ld [$02a4], sp
    add hl, bc
    inc d
    sub a
    add hl, bc
    ld h, b
    ld sp, $880a
    pop de
    ld a, [bc]
    adc h
    ld [hl], a
    dec bc
    ld l, h
    inc hl
    inc c
    jr z, jr_013_54e6

    inc c
    ret nz

    adc h
    dec c
    inc [hl]
    ld c, d
    ld c, $84
    dec c
    rrca
    and h
    ret c

    rrca
    sub h
    xor e
    db $10
    ld d, h
    add [hl]
    ld de, $68e4
    ld [de], a
    ld b, h
    ld d, e
    inc de
    ld [hl], h
    ld b, l
    inc d
    ld [hl], h
    ccf
    dec d
    ld b, h
    ld b, c
    ld d, $e4
    ld c, d
    rla
    ld d, h
    ld e, h
    jr @-$3a

    ld l, l
    add hl, de
    inc [hl]
    ld a, a
    ld a, [de]
    and h
    sub b
    dec de

jr_013_5542:
    inc d
    and d
    inc e
    add h
    or e
    dec e
    db $f4
    call nz, Call_013_641e
    sub $1f
    call nc, $20e7
    ld b, h
    ld sp, hl

jr_013_5553:
    ld hl, $0ab4
    inc hl
    inc h
    inc e
    inc h
    sub h
    dec l
    dec h
    inc b
    ccf
    ld h, $74
    ld d, b
    daa
    db $e4
    ld h, c
    jr z, @+$56

    ld [hl], e
    add hl, hl
    call nz, $2a84
    inc [hl]
    sub [hl]
    dec hl
    and h
    and a
    inc l
    inc d
    cp c
    dec l
    add h
    jp z, $f42e

    db $db
    cpl
    ld h, h
    db $ed
    jr nc, jr_013_5553

    cp $31
    ld b, h
    db $10
    inc sp
    or h
    ld hl, $2434
    inc sp
    dec [hl]
    sub h
    ld b, h
    ld [hl], $04
    ld d, [hl]
    scf
    ld [hl], h
    ld h, a
    jr c, @-$1a

    ld a, b
    add hl, sp
    ld d, h
    adc d
    ld a, [hl-]
    call nz, $3b9b
    inc [hl]
    xor l
    inc a
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    ld e, $00
    nop
    inc a
    nop

jr_013_55aa:
    nop
    ld a, b
    nop
    nop
    call c, RST_00
    ld l, b
    ld bc, $3000
    ld [bc], a
    nop
    ld e, h
    inc bc
    nop
    jr z, @+$07

    nop
    ret nc

    rlca
    nop
    ldh [$0b], a
    nop
    ldh [rNR10], a
    nop
    jr nz, jr_013_55df

    nop
    ldh a, [rNR34]
    nop
    and b
    jr z, jr_013_55cf

jr_013_55cf:
    ret nc

    inc [hl]
    nop
    ld [hl], b
    ld b, h
    nop
    jr nc, jr_013_562e

    nop
    sbc b
    ld l, h
    nop
    ret nc

    add h
    nop
    db $10

jr_013_55df:
    and h
    nop
    jr c, jr_013_55aa

    nop
    ld c, b
    xor $00
    ld b, b
    add hl, de
    ld bc, $4820
    ld bc, $7ae8
    ld bc, $b198
    ld bc, $ec30
    ld bc, $2ab0
    ld [bc], a
    jr c, @+$72

    ld [bc], a
    ret z

    cp h
    ld [bc], a
    ld h, b
    db $10
    inc bc
    nop
    ld l, e
    inc bc
    xor b
    call z, $2c03
    inc [hl]
    inc b
    adc h
    and c
    inc b
    ret z

    inc d
    dec b
    ldh [$8d], a
    dec b
    call nc, Call_000_060c
    and h
    sub c
    ld b, $50
    inc e
    rlca
    ret c

    xor h
    rlca
    inc a
    ld b, e
    ld [$df7c], sp
    ld [$838c], sp
    add hl, bc
    ld l, h
    cpl
    ld a, [bc]
    inc e
    db $e3

jr_013_562e:
    ld a, [bc]
    sbc h
    sbc [hl]

jr_013_5631:
    dec bc
    db $ec
    ld h, c
    inc c
    inc c
    dec l
    dec c
    db $fc
    rst $38
    dec c
    cp h
    jp c, Jump_013_4c0e

    cp l
    rrca
    xor h
    and a
    db $10
    db $f4
    sub l
    ld de, $8824
    ld [de], a
    inc a
    ld a, [hl]
    inc de
    inc a
    ld a, b
    inc d
    inc h
    db $76
    dec d
    db $f4
    ld [hl], a
    ld d, $ac
    ld a, l
    rla
    ld c, h
    add a
    jr jr_013_5631

    sub h
    add hl, de
    ld b, h
    and [hl]
    ld a, [de]
    or h
    or a
    dec de
    inc h
    ret


    inc e
    sub h
    jp c, $041d

    db $ec
    ld e, $74
    db $fd
    rra
    db $f4
    ld c, $21
    ld d, h
    jr nz, jr_013_5699

    call nz, Call_000_2331
    inc [hl]
    ld b, e
    inc h
    and h
    ld d, h
    dec h
    inc d
    ld h, [hl]
    ld h, $84
    ld [hl], a
    daa
    db $f4
    adc b
    jr z, jr_013_56ee

    sbc d
    add hl, hl
    call nc, Call_000_2aab
    ld b, h
    cp l
    dec hl
    or h
    adc $2c
    inc h
    ldh [$2d], a
    sub h

jr_013_5699:
    pop af
    ld l, $04
    inc bc
    jr nc, @+$76

    inc d
    ld sp, $25e4
    ld [hl-], a
    ld d, h
    scf
    inc sp
    call nz, Call_000_3448
    inc [hl]

jr_013_56ab:
    ld e, d
    dec [hl]
    and h
    ld l, e
    ld [hl], $14
    ld a, l
    scf
    add h
    adc [hl]
    jr c, jr_013_56ab

    sbc a
    add hl, sp
    ld h, h
    or c
    ld a, [hl-]
    call nc, Call_000_3bc2
    ld b, h
    call nc, $b43c
    push hl
    dec a
    inc h
    rst $30
    ld a, $00
    nop
    nop
    ld a, [bc]
    nop
    nop
    ld e, $00
    nop
    inc a
    nop
    nop
    ld a, b
    nop
    nop
    call c, RST_00
    ld l, b
    ld bc, $3000
    ld [bc], a
    nop
    ld e, h
    inc bc
    nop
    jr z, @+$07

    nop
    ret nc

    rlca
    nop
    ldh [$0b], a
    nop
    ldh [rNR10], a

jr_013_56ee:
    nop
    jr nz, jr_013_5708

    nop
    ldh a, [rNR34]
    nop
    and b
    jr z, jr_013_56f8

jr_013_56f8:
    ret nc

    inc [hl]
    nop
    ld [hl], b
    ld b, h
    nop
    jr nc, jr_013_5757

    nop
    sbc b
    ld l, h
    nop
    ret nc

    add h
    nop

jr_013_5707:
    db $10

jr_013_5708:
    and h
    nop
    or b
    call z, $b000
    cp $00
    db $10
    ld a, [hl-]
    ld bc, $7ed0
    ld bc, $ccf0

jr_013_5718:
    ld bc, $2470
    ld [bc], a
    ld d, b
    add l
    ld [bc], a
    sub b
    rst $28
    ld [bc], a
    jr nc, jr_013_5787

    inc bc
    jr nc, jr_013_5707

    inc bc
    sub b
    ld h, [hl]
    inc b
    ld d, b
    or $04
    ld [hl], b
    adc a
    dec b
    ld h, b
    jr nc, jr_013_573a

    sub b
    rst $10
    ld b, $70
    add e
    rlca

jr_013_573a:
    ld [hl], b
    ld [hl-], a
    ld [$e490], sp
    ld [$99d0], sp
    add hl, bc
    jr nc, jr_013_5797

    ld a, [bc]
    or b
    dec c
    dec bc
    jr jr_013_5718

    dec bc
    ld l, b
    sub b
    inc c
    and b
    ld d, a
    dec c

jr_013_5752:
    ret nz

    ld [hl+], a
    ld c, $c8
    pop af

jr_013_5757:
    ld c, $b8
    call nz, $900f
    sbc e
    db $10
    ld d, b
    db $76
    ld de, $54f8
    ld [de], a
    adc b
    scf
    inc de
    nop
    ld e, $14
    ld h, b
    ld [$a815], sp
    or $15
    ret c

    add sp, $16
    ldh a, [$de]
    rla
    ldh a, [$d8]
    jr jr_013_5752

    sub $19
    xor b
    ret c

    ld a, [de]
    ld h, b
    sbc $1b
    nop
    add sp, $1c
    adc b

jr_013_5786:
    push af

jr_013_5787:
    dec e
    ld hl, sp+$06
    rra
    ld l, b
    jr jr_013_57ae

    ret c

    add hl, hl
    ld hl, $3b48
    ld [hl+], a
    cp b
    ld c, h
    inc hl

jr_013_5797:
    jr z, jr_013_57f7

    inc h
    sbc b
    ld l, a
    dec h
    ld [$2681], sp
    ld a, b
    sub d
    daa
    add sp, -$5d
    jr z, jr_013_57ff

    or l
    add hl, hl
    ret z

    add $2a
    jr c, jr_013_5786

jr_013_57ae:
    dec hl

jr_013_57af:
    xor b
    jp hl


    inc l
    jr jr_013_57af

    dec l
    adc b
    inc c
    cpl
    ld hl, sp+$1d
    jr nc, jr_013_5824

jr_013_57bc:
    cpl
    ld sp, $40d8
    ld [hl-], a
    ld c, b
    ld d, d
    inc sp
    cp b
    ld h, e
    inc [hl]
    jr z, jr_013_583e

    dec [hl]
    sbc b
    add [hl]
    ld [hl], $08
    sbc b
    scf
    ld a, b
    xor c
    jr c, jr_013_57bc

    cp d
    add hl, sp
    ld e, b
    call z, $c83a
    db $dd
    dec sp
    jr c, @-$0f

    inc a
    xor b
    nop
    ld a, $18
    ld [de], a
    ccf
    adc b
    inc hl
    ld b, b
    ld hl, sp+$34
    ld b, c
    ld l, b
    ld b, [hl]
    ld b, d
    ret c

    ld d, a
    ld b, e
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop

jr_013_57f7:
    ld e, $00
    nop
    inc a
    nop
    nop
    ld a, b
    nop

jr_013_57ff:
    nop
    call c, RST_00
    ld l, b
    ld bc, $3000
    ld [bc], a
    nop
    ld e, h
    inc bc
    nop
    jr z, @+$07

    nop
    ret nc

    rlca
    nop
    ldh [$0b], a
    nop
    ldh [rNR10], a
    nop
    jr nz, jr_013_5831

    nop
    ldh a, [rNR34]
    nop
    and b
    jr z, jr_013_5821

Call_013_5821:
jr_013_5821:
    ret nc

    inc [hl]
    nop

jr_013_5824:
    ld [hl], b
    ld b, h
    nop
    jr nc, jr_013_5880

    nop
    sbc b
    ld l, h
    nop
    ret nc

    add h
    nop

jr_013_5830:
    db $10

jr_013_5831:
    and h
    nop
    or b
    call z, $b000
    cp $00
    db $10
    ld a, [hl-]
    ld bc, $7ed0

jr_013_583e:
    ld bc, $ccf0
    ld bc, $2470
    ld [bc], a
    ld d, b
    add l
    ld [bc], a
    sub b
    rst $28
    ld [bc], a
    jr nc, jr_013_58b0

    inc bc
    jr nc, jr_013_5830

    inc bc
    sub b
    ld h, [hl]
    inc b
    ld d, b
    or $04
    ld [hl], b
    adc a
    dec b
    ldh a, [$31]
    ld b, $d0
    db $dd
    ld b, $10
    sub e
    rlca
    or b
    ld d, c
    ld [$19b0], sp
    add hl, bc
    db $10
    db $eb
    add hl, bc
    ret nc

    push bc
    ld a, [bc]
    ret nc

    cp a
    dec bc
    db $10
    reti


    inc c
    sub b
    ld de, $500e
    ld l, c
    rrca
    ld d, b
    ldh [rNR10], a
    sub b
    db $76

jr_013_5880:
    ld [de], a
    db $10
    inc l
    inc d
    ret nc

    nop
    ld d, $90
    push de
    rla
    ld d, b
    xor d
    add hl, de
    db $10
    ld a, a
    dec de
    ret nc

    ld d, e
    dec e
    sub b
    jr z, @+$21

    ld d, b
    db $fd
    jr nz, jr_013_58aa

    jp nc, $d022

    and [hl]
    inc h
    sub b
    ld a, e
    ld h, $50
    ld d, b
    jr z, jr_013_58b6

    dec h
    ld a, [hl+]
    ret nc

    ld sp, hl

jr_013_58aa:
    dec hl
    sub b
    adc $2d
    ld d, b
    and e

jr_013_58b0:
    cpl
    db $10
    ld a, b
    ld sp, $4cd0

jr_013_58b6:
    inc sp
    sub b
    ld hl, $5035
    or $36
    db $10
    srl b
    ret nc

    sbc a
    ld a, [hl-]
    sub b
    ld [hl], h
    inc a
    ld d, b
    ld c, c
    ld a, $10
    ld e, $40
    ret nc

    ld a, [c]
    ld b, c
    sub b
    rst $00
    ld b, e
    ld d, b
    sbc h
    ld b, l
    db $10
    ld [hl], c
    ld b, a
    ret nc

    ld b, l
    ld c, c
    sub b
    ld a, [de]
    ld c, e
    ld d, b
    rst $28
    ld c, h
    db $10
    call nz, $d04e
    sbc b
    ld d, b
    sub b
    ld l, l
    ld d, d
    ld d, b
    ld b, d
    ld d, h
    db $10
    rla
    ld d, [hl]
    ret nc

    db $eb
    ld d, a
    sub b
    ret nz

    ld e, c
    ld d, b
    sub l
    ld e, e
    db $10
    ld l, d
    ld e, l
    ret nc

    ld a, $5f
    sub b
    inc de
    ld h, c
    ld d, b
    add sp, $62
    db $10
    cp l
    ld h, h
    ret nc

    sub c
    ld h, [hl]
    sub b
    ld h, [hl]
    ld l, b
    ld d, b
    dec sp
    ld l, d
    db $10
    db $10
    ld l, h
    ret nc

    db $e4
    ld l, l
    sub b
    cp c
    ld l, a
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    ld e, $00
    nop
    inc a
    nop
    nop
    ld a, b
    nop
    nop
    call c, RST_00
    ld l, b
    ld bc, $3000
    ld [bc], a
    nop
    ld e, h
    inc bc
    nop
    jr z, @+$07

    nop
    ret nc

    rlca
    nop
    ldh [$0b], a
    nop
    ldh [rNR10], a
    nop
    jr nz, jr_013_595a

    nop
    ldh a, [rNR34]
    nop
    and b
    jr z, jr_013_594a

jr_013_594a:
    ret nc

    inc [hl]
    nop
    ld [hl], b
    ld b, h
    nop
    jr nc, jr_013_59a9

    nop
    sbc b
    ld l, h
    nop
    ret nc

    add h
    nop
    db $10

jr_013_595a:
    and h
    nop
    inc d
    call $dc00
    rst $38
    nop
    ld l, b
    inc a
    ld bc, $82b8
    ld bc, $d4c0
    ld bc, $3280
    ld [bc], a
    ld hl, sp-$65
    ld [bc], a
    jr z, jr_013_5984

    inc bc
    jr z, @-$70

    inc bc
    ld hl, sp+$12
    inc b
    sbc b
    sbc a
    inc b
    ld [$0534], sp
    ld c, b
    ret nc

    dec b
    ld [hl], b

jr_013_5984:
    ld [hl], b
    ld b, $80
    inc d
    rlca

jr_013_5989:
    ld a, b
    cp h
    rlca
    ld e, b
    ld l, b
    ld [$1820], sp
    add hl, bc
    ret nc

    rrc c
    ld l, b
    add e
    ld a, [bc]
    add sp, $3e
    dec bc
    ld d, b
    cp $0b
    and b
    pop bc
    inc c
    ret c

    adc b
    dec c
    ld hl, sp+$53
    ld c, $00
    inc hl

jr_013_59a9:
    rrca
    ldh a, [$f5]
    rrca
    ret z

jr_013_59ae:
    call z, $8810
    and a
    ld de, $8630
    ld [de], a
    ret nz

    ld l, b
    inc de
    jr c, jr_013_5a0a

    inc d
    sbc b
    add hl, sp
    dec d
    ldh [$27], a
    ld d, $10
    ld a, [de]
    rla
    jr z, jr_013_59d7

    jr jr_013_59f1

    ld a, [bc]
    add hl, de
    db $10
    ld [$e01a], sp
    add hl, bc
    dec de
    sbc b
    rrca
    inc e
    jr c, jr_013_59ef

    dec e

jr_013_59d7:
    ret nz

    ld h, $1e
    jr nc, jr_013_5a14

    rra
    and b
    ld c, c
    jr nz, jr_013_59f1

    ld e, e
    ld hl, $6c80
    ld [hl+], a
    ldh a, [$7d]
    inc hl
    ld h, b
    adc a
    inc h
    ret nc

    and b
    dec h

jr_013_59ef:
    ld b, b
    or d

jr_013_59f1:
    ld h, $b0
    jp $2027


    push de
    jr z, jr_013_5989

    and $29
    nop
    ld hl, sp+$2a
    ld [hl], b
    add hl, bc
    inc l
    ldh [rNR30], a
    dec l
    ld d, b
    inc l
    ld l, $c0
    dec a
    cpl

jr_013_5a0a:
    jr nc, jr_013_5a5b

    jr nc, jr_013_59ae

    ld h, b
    ld sp, $7210
    ld [hl-], a
    add b

jr_013_5a14:
    add e
    inc sp
    ldh a, [$94]
    inc [hl]
    ld h, b
    and [hl]
    dec [hl]
    ret nc

    or a
    ld [hl], $40
    ret


    scf
    or b
    jp c, $2038

    db $ec
    add hl, sp
    sub b
    db $fd
    ld a, [hl-]
    nop
    rrca
    inc a
    ld [hl], b
    jr nz, @+$3f

    ldh [$31], a
    ld a, $50
    ld b, e
    ccf
    ret nz

    ld d, h
    ld b, b
    jr nc, jr_013_5aa2

    ld b, c
    and b
    ld [hl], a
    ld b, d
    db $10
    adc c
    ld b, e
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    ld e, $00
    nop
    inc a
    nop
    nop
    ld a, b
    nop
    nop
    call c, RST_00
    ld l, b
    ld bc, $3000
    ld [bc], a
    nop

jr_013_5a5b:
    ld e, h
    inc bc
    nop
    jr z, @+$07

    nop
    ret nc

    rlca
    nop
    ldh [$0b], a
    nop
    ldh [rNR10], a
    nop
    jr nz, jr_013_5a83

    nop
    ldh a, [rNR34]
    nop
    and b
    jr z, jr_013_5a73

jr_013_5a73:
    ret nc

    inc [hl]
    nop
    ld [hl], b
    ld b, h
    nop

jr_013_5a79:
    jr nc, jr_013_5ad2

    nop
    sbc b
    ld l, h
    nop
    ret nc

    add h
    nop
    db $10

jr_013_5a83:
    and h
    nop
    ret nc

    rst $08
    nop
    db $10
    ld [$d001], sp
    ld c, h
    ld bc, $9e10
    ld bc, $fbd0
    ld bc, $6160
    ld [bc], a
    ret nz

    adc $02
    ldh a, [rSCX]
    inc bc
    ldh a, [$c0]
    inc bc
    ret nz

    ld b, l

jr_013_5aa2:
    inc b
    ld h, b
    jp nc, $d004

    ld h, [hl]
    dec b
    db $10
    inc bc
    ld b, $20
    and a
    ld b, $00
    ld d, e
    rlca
    or b
    ld b, $08
    jr nc, jr_013_5a79

    ld [$8580], sp
    add hl, bc
    and b
    ld d, b
    ld a, [bc]
    sub b
    inc hl
    dec bc
    ld d, b
    cp $0b
    ldh [$e0], a
    inc c
    ld b, b
    rrc l
    adc b
    cp c
    ld c, $b8
    xor e
    rrca
    ret nc

    and c

jr_013_5ad2:
    db $10
    ret nc

    sbc e
    ld de, $99b8
    ld [de], a
    adc b
    sbc e
    inc de
    ld b, b
    and c
    inc d
    ldh [$aa], a
    dec d
    ld l, b
    cp b
    ld d, $d8
    ret


    rla
    jr nc, @-$1f

    jr jr_013_5b5c

    ld hl, sp+$19
    sbc b
    dec d
    dec de
    xor b
    ld [hl], $1c
    and b
    ld e, e
    dec e
    add b
    add h
    ld e, $48
    or c
    rra
    ld hl, sp-$1f
    jr nz, @-$6e

    ld d, $22
    db $10
    ld c, a
    inc hl
    sub b
    add a
    inc h
    db $10
    ret nz

    dec h
    sub b
    ld hl, sp+$26
    db $10
    ld sp, $9028
    ld l, c
    add hl, hl
    db $10
    and d
    ld a, [hl+]
    sub b
    jp c, $102b

    inc de
    dec l
    sub b
    ld c, e
    ld l, $10
    add h
    cpl
    sub b
    cp h
    jr nc, jr_013_5b38

    push af
    ld sp, $2d90
    inc sp
    db $10
    ld h, [hl]
    inc [hl]
    sub b
    sbc [hl]
    dec [hl]
    db $10
    rst $10
    ld [hl], $90
    rrca

jr_013_5b38:
    jr c, jr_013_5b4a

    ld c, b
    add hl, sp
    sub b
    add b
    ld a, [hl-]
    db $10
    cp c
    dec sp
    sub b
    pop af
    inc a
    db $10
    ld a, [hl+]
    ld a, $90
    ld h, d

jr_013_5b4a:
    ccf
    db $10
    sbc e
    ld b, b
    sub b
    db $d3
    ld b, c
    db $10
    inc c
    ld b, e
    sub b
    ld b, h
    ld b, h
    db $10
    ld a, l
    ld b, l
    sub b
    or l

jr_013_5b5c:
    ld b, [hl]
    db $10
    xor $47
    sub b
    ld h, $49
    db $10
    ld e, a
    ld c, d
    sub b
    sub a
    ld c, e
    db $10
    ret nc

    ld c, h
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    ld e, $00
    nop
    inc a
    nop
    nop
    ld a, b
    nop
    nop
    call c, RST_00
    ld l, b
    ld bc, $3000
    ld [bc], a
    nop
    ld e, h
    inc bc
    nop
    jr z, @+$07

    nop
    ret nc

    rlca
    nop
    ldh [$0b], a
    nop
    ldh [rNR10], a
    nop
    jr nz, jr_013_5bac

    nop

jr_013_5b96:
    ldh a, [rNR34]
    nop
    and b
    jr z, jr_013_5b9c

jr_013_5b9c:
    ret nc

    inc [hl]
    nop
    ld [hl], b
    ld b, h
    nop
    jr nc, jr_013_5bfb

    nop
    sbc b
    ld l, h
    nop

jr_013_5ba8:
    ret nc

    add h
    nop
    db $10

jr_013_5bac:
    and h
    nop
    ldh a, [$d2]
    nop
    ld [hl], b
    ld de, $9001
    ld e, a
    ld bc, $b580
    ld bc, $1340
    ld [bc], a
    ret nc

    ld a, b
    ld [bc], a
    jr nc, jr_013_5ba8

    ld [bc], a
    ld h, b
    ld e, e
    inc bc
    ld h, b
    ret c

    inc bc
    jr nc, @+$5f

    inc b
    ret nc

    jp hl


    inc b
    ld b, b
    ld a, [hl]
    dec b
    add b
    ld a, [de]
    ld b, $a8
    cp d
    ld b, $b8
    ld e, [hl]
    rlca
    or b
    ld b, $08
    sub b
    or d
    ld [$6258], sp
    add hl, bc
    ld [$0a16], sp
    and b
    call $200a
    adc c

jr_013_5bec:
    dec bc
    adc b
    ld c, b
    inc c
    ret c

    dec bc
    dec c
    db $10
    db $d3
    dec c
    jr nc, jr_013_5b96

    ld c, $38
    ld l, l

jr_013_5bfb:
    rrca
    jr z, jr_013_5c3e

    stop
    rla
    ld de, $f1c0
    ld de, $d068
    ld [de], a
    ld hl, sp-$4e
    inc de
    ld [hl], b
    sbc c
    inc d
    ret nc

    add e
    dec d
    jr nc, jr_013_5c81

    ld d, $90
    ld e, b
    rla
    ldh a, [rSCY]

Call_013_5c19:
    jr @+$52

    dec l
    add hl, de
    or b
    rla
    ld a, [de]
    db $10
    ld [bc], a
    dec de
    ld [hl], b
    db $ec
    dec de
    ret nc

    sub $1c
    jr nc, jr_013_5bec

    dec e
    sub b

jr_013_5c2d:
    xor e
    ld e, $f0

Jump_013_5c30:
    sub l
    rra
    ld d, b
    add b
    jr nz, @-$4e

    ld l, d
    ld hl, $5510
    ld [hl+], a
    ld [hl], b
    ccf
    inc hl

jr_013_5c3e:
    ret nc

    add hl, hl
    inc h
    jr nc, jr_013_5c57

    dec h
    sub b
    cp $25
    ldh a, [$e8]
    ld h, $50
    db $d3
    daa
    or b
    cp l
    jr z, jr_013_5c61

    xor b
    add hl, hl
    ld [hl], b
    sub d
    ld a, [hl+]
    ret nc

jr_013_5c57:
    ld a, h
    dec hl
    jr nc, jr_013_5cc2

    inc l
    sub b
    ld d, c
    dec l
    ldh a, [$3b]

jr_013_5c61:
    ld l, $50
    ld h, $2f
    or b
    db $10
    jr nc, jr_013_5c79

    ei
    jr nc, @+$72

    push hl
    ld sp, $cfd0
    ld [hl-], a
    jr nc, jr_013_5c2d

    inc sp
    sub b
    and h
    inc [hl]
    ldh a, [$8e]

jr_013_5c79:
    dec [hl]
    ld d, b
    ld a, c
    ld [hl], $b0
    ld h, e
    scf
    db $10

jr_013_5c81:
    ld c, [hl]
    jr c, @+$72

    jr c, jr_013_5cbf

    ret nc

    ld [hl+], a
    ld a, [hl-]
    jr nc, jr_013_5c98

    dec sp
    sub b
    rst $30
    dec sp
    ldh a, [$e1]
    inc a
    ld d, b
    call z, Call_000_003d
    nop
    nop

jr_013_5c98:
    ld a, [bc]
    nop
    nop
    ld e, $00
    nop
    inc a
    nop
    nop
    ld a, b
    nop
    nop
    call c, RST_00
    ld l, b
    ld bc, $3000
    ld [bc], a
    nop
    ld e, h
    inc bc
    nop
    jr z, @+$07

    nop
    ret nc

    rlca
    nop
    ldh [$0b], a
    nop
    ldh [rNR10], a
    nop
    jr nz, jr_013_5cd5

    nop

jr_013_5cbf:
    ldh a, [rNR34]
    nop

jr_013_5cc2:
    and b
    jr z, jr_013_5cc5

jr_013_5cc5:
    ret nc

    inc [hl]
    nop
    ld [hl], b
    ld b, h
    nop
    jr nc, @+$59

    nop
    sbc b
    ld l, h
    nop
    ret nc

    add h
    nop
    db $10

jr_013_5cd5:
    and h
    nop
    ldh a, [$d2]
    nop
    ld [hl], b
    ld de, $9001
    ld e, a
    ld bc, $b968
    ld bc, $1ef8
    ld [bc], a
    ld b, b
    sub b
    ld [bc], a
    ld b, b
    dec c
    inc bc
    ld hl, sp-$6b
    inc bc
    ld l, b
    ld a, [hl+]
    inc b
    sub b
    jp z, Jump_013_7004

    db $76
    dec b
    ld [$062e], sp

jr_013_5cfb:
    ld e, b
    pop af
    ld b, $90
    cp b
    rlca
    or b
    add e
    ld [$52b8], sp
    add hl, bc
    xor b
    dec h
    ld a, [bc]
    add b
    db $fc
    ld a, [bc]
    ld b, b
    rst $10
    dec bc
    add sp, -$4b
    inc c
    ld a, b
    sbc b
    dec c
    ldh a, [$7e]
    ld c, $50
    ld l, c
    rrca
    or b
    ld d, e
    db $10
    db $10
    ld a, $11
    ld [hl], b
    jr z, jr_013_5d37

    ret nc

    ld [de], a

jr_013_5d27:
    inc de
    jr nc, jr_013_5d27

    inc de
    sub b
    rst $20
    inc d
    ldh a, [$d1]
    dec d
    ld d, b
    cp h
    ld d, $b0
    and [hl]
    rla

jr_013_5d37:
    db $10
    sub c
    jr jr_013_5d93

    ld a, a
    add hl, de
    adc b
    ld [hl], c
    ld a, [de]
    and b
    ld h, a

jr_013_5d42:
    dec de
    and b
    ld h, c
    inc e
    adc b
    ld e, a

jr_013_5d48:
    dec e
    ld e, b
    ld h, c
    ld e, $10
    ld h, a
    rra
    or b
    ld [hl], b
    jr nz, jr_013_5d8b

    ld a, [hl]
    ld hl, $8fa8
    ld [hl+], a
    jr jr_013_5cfb

    inc hl
    adc b
    or d
    inc h
    ld hl, sp-$3d

jr_013_5d60:
    dec h
    ld l, b
    push de
    ld h, $d8
    and $27
    ld c, b
    ld hl, sp+$28
    cp b
    add hl, bc
    ld a, [hl+]
    jr z, jr_013_5d8a

    dec hl
    sbc b
    inc l
    inc l
    ld [$2d3e], sp
    ld a, b
    ld c, a
    ld l, $e8
    ld h, b
    cpl
    ld e, b
    ld [hl], d
    jr nc, jr_013_5d48

    add e
    ld sp, $9538
    ld [hl-], a
    xor b
    and [hl]
    inc sp
    jr jr_013_5d42

jr_013_5d8a:
    inc [hl]

jr_013_5d8b:
    adc b
    ret


    dec [hl]
    ld hl, sp-$26
    ld [hl], $68
    db $ec

jr_013_5d93:
    scf
    ret c

    db $fd
    jr c, jr_013_5de0

    rrca
    ld a, [hl-]
    cp b
    jr nz, @+$3d

    jr z, jr_013_5dd1

    inc a
    sbc b
    ld b, e
    dec a
    ld [$3e55], sp
    ld a, b
    ld h, [hl]
    ccf
    add sp, $77
    ld b, b
    ld e, b
    adc c
    ld b, c
    ret z

    sbc d
    ld b, d
    jr c, jr_013_5d60

    ld b, e
    xor b
    cp l
    ld b, h
    jr @-$2f

    ld b, l
    adc b
    ldh [rDMA], a
    nop
    nop
    nop
    ld h, h
    nop
    nop
    inc l
    ld bc, $5800
    ld [bc], a
    nop
    or b
    inc b
    nop
    sbc b
    ld [$1000], sp

jr_013_5dd1:
    ld c, $00
    ldh [$15], a
    nop
    sbc b
    ld hl, $9000
    inc sp
    nop
    jr nz, jr_013_5e2c

    nop
    ret nz

jr_013_5de0:
    halt
    ret nz

    xor b
    nop
    ld b, b
    rst $20
    nop
    ld h, b
    dec [hl]
    ld bc, $8d44
    ld bc, $eeec
    ld bc, $547c
    ld [bc], a
    call c, $02c1

jr_013_5df7:
    inc c
    scf
    inc bc
    inc c
    or h
    inc bc
    call c, Call_000_0438
    ld a, h
    push bc
    inc b
    db $ec
    ld e, c
    dec b
    inc l
    or $05
    ld d, h
    sub [hl]
    ld b, $64
    ld a, [hl-]
    rlca
    ld e, h
    ld [c], a
    rlca
    inc a
    adc [hl]
    ld [$3e04], sp
    add hl, bc
    or h
    pop af
    add hl, bc
    ld c, h
    xor c
    ld a, [bc]
    call z, Call_000_0b64
    inc [hl]
    inc h
    inc c
    add h
    rst $20
    inc c
    call nc, Call_000_0daa
    inc h
    ld l, [hl]

jr_013_5e2c:
    ld c, $74
    ld sp, $c40f
    db $f4
    rrca
    inc d
    cp b
    db $10
    ld h, h
    ld a, e
    ld de, $3eb4
    ld [de], a
    inc b
    ld [bc], a
    inc de
    ld d, h
    push bc
    inc de
    and h
    adc b
    inc d
    add sp, $4d
    dec d
    jr nz, jr_013_5e5f

    ld d, $4c
    sbc $16
    ld l, h
    xor c
    rla
    add b
    db $76
    jr @-$76

    ld b, l
    add hl, de
    add h
    ld d, $1a
    ld [hl], h
    jp hl


    ld a, [de]
    ld e, b
    cp [hl]

jr_013_5e5f:
    dec de
    jr nc, jr_013_5df7

    inc e
    db $e4
    ld [hl], c
    dec e
    ld [hl], h
    ld d, h
    ld e, $e0
    inc a
    rra
    jr z, @+$2d

    jr nz, jr_013_5ebc

    rra
    ld hl, $194c
    ld [hl+], a
    jr z, jr_013_5e90

    inc hl
    ldh [rNR34], a
    inc h
    ld [hl], h
    ld a, [hl+]
    dec h
    db $e4
    dec sp
    ld h, $54
    ld c, l
    daa
    call nz, Call_000_285e
    inc [hl]
    ld [hl], b
    add hl, hl
    and h
    add c
    ld a, [hl+]
    inc d
    sub e
    dec hl

jr_013_5e90:
    add h
    and h
    inc l
    db $f4
    or l

jr_013_5e95:
    dec l
    ld h, h
    rst $00
    ld l, $d4
    ret c

    cpl
    ld b, h
    ld [$b430], a
    ei
    ld sp, $0d24
    inc sp
    sub h
    ld e, $34
    inc b
    jr nc, jr_013_5ee0

    ld [hl], h
    ld b, c
    ld [hl], $e4
    ld d, d
    scf
    ld d, h
    ld h, h
    jr c, jr_013_5e95

    and c
    add hl, sp
    inc [hl]
    add a
    ld a, [hl-]
    and h
    sbc b

jr_013_5ebc:
    dec sp
    inc d
    xor d
    inc a
    add h
    cp e
    dec a
    db $f4
    call z, Call_013_643e
    sbc $3f
    call nc, $40ef
    ld b, h
    ld bc, $b442
    ld [de], a
    ld b, e
    inc h
    inc h
    ld b, h
    sub h
    dec [hl]
    ld b, l
    inc b
    ld b, a
    ld b, [hl]
    ld [hl], h
    ld e, b
    ld b, a
    db $e4
    ld l, c

jr_013_5ee0:
    ld c, b
    ld d, h
    ld a, e
    ld c, c
    call nz, Call_013_4a8c
    nop
    nop
    nop
    ld h, h
    nop
    nop
    inc l
    ld bc, $5800
    ld [bc], a
    nop
    or b
    inc b
    nop
    sbc b
    ld [$1000], sp
    ld c, $00
    ldh [$15], a
    nop
    sbc b
    ld hl, $9000
    inc sp
    nop
    jr nz, jr_013_5f55

    nop
    ret nz

    halt
    ret nz

    xor b
    nop
    ld b, b
    rst $20
    nop
    ld h, b
    dec [hl]
    ld bc, $9708
    ld bc, $0c38
    ld [bc], a

jr_013_5f1a:
    ld [$0291], sp
    sub b
    ld hl, $d003
    cp l
    inc bc
    ldh [$61], a
    inc b
    ret c

    add hl, bc
    dec b
    cp b
    or l
    dec b
    adc h
    ld h, e
    ld b, $54
    inc de
    rlca
    db $10
    push bc
    rlca
    ret nz

    ld a, b
    ld [$2e64], sp
    add hl, bc
    db $fc
    push hl
    add hl, bc
    adc b
    sbc a
    ld a, [bc]
    ld [$0b5b], sp
    ld a, h
    jr @+$0e

    db $e4
    rst $10
    inc c
    ld b, b
    sbc c
    dec c
    sub b
    ld e, h
    ld c, $d4
    ld hl, $0c0f
    jp hl


jr_013_5f55:
    rrca
    jr c, @-$4c

    db $10
    ld e, b
    ld a, l
    ld de, $4a6c
    ld [de], a
    ld [hl], h
    add hl, de
    inc de
    ld [hl], b
    ld [$6013], a
    cp l
    inc d
    ld b, h
    sub d
    dec d
    inc e
    ld l, c
    ld d, $e8
    ld b, c
    rla
    xor b
    inc e
    jr jr_013_5fd1

    ld sp, hl
    jr jr_013_5f7c

    ret c

    add hl, de
    and b
    cp b

jr_013_5f7c:
    ld a, [de]
    jr nc, jr_013_5f1a

    dec de
    or h
    ld a, a
    inc e
    inc l
    ld h, [hl]
    dec e
    sbc b
    ld c, [hl]
    ld e, $f8
    jr c, @+$21

    jr z, @+$2d

    jr nz, jr_013_5fb8

    dec h
    ld hl, $26f8
    ld [hl+], a
    sbc b
    jr nc, jr_013_5fbb

    ld [$2442], sp
    ld c, b
    ld e, e
    dec h
    ld e, b
    ld a, h
    ld h, $38
    and l
    daa
    add sp, -$2b
    jr z, jr_013_6010

    ld c, $2a
    add sp, $46
    dec hl
    ld l, b
    ld a, a
    inc l
    add sp, -$49
    dec l
    ld l, b
    ldh a, [$2e]
    add sp, $28

jr_013_5fb8:
    jr nc, @+$6a

    ld h, c

jr_013_5fbb:
    ld sp, $99e8
    ld [hl-], a
    ld l, b
    jp nc, $e833

    ld a, [bc]
    dec [hl]
    ld l, b
    ld b, e
    ld [hl], $e8
    ld a, e
    scf
    ld l, b
    or h
    jr c, @-$16

    db $ec
    add hl, sp

jr_013_5fd1:
    ld l, b
    dec h
    dec sp
    add sp, $5d
    inc a
    ld l, b
    sub [hl]
    dec a
    add sp, -$32
    ld a, $68
    rlca
    ld b, b
    add sp, $3f
    ld b, c
    ld l, b
    ld a, b
    ld b, d
    add sp, -$50
    ld b, e
    ld l, b
    jp hl


    ld b, h
    add sp, $21
    ld b, [hl]
    ld l, b
    ld e, d
    ld b, a
    add sp, -$6e
    ld c, b
    ld l, b
    bit 1, c
    add sp, $03
    ld c, e
    ld l, b
    inc a
    ld c, h
    add sp, $74
    ld c, l
    ld l, b
    xor l
    ld c, [hl]

Call_013_6004:
    add sp, -$1b
    ld c, a
    ld l, b
    ld e, $51
    add sp, $56
    ld d, d
    ld l, b
    adc a
    ld d, e

jr_013_6010:
    nop
    nop
    nop
    ld h, h
    nop
    nop
    inc l
    ld bc, $5800
    ld [bc], a
    nop
    or b
    inc b
    nop
    sbc b
    ld [$1000], sp
    ld c, $00
    ldh [$15], a
    nop
    sbc b
    ld hl, $9000
    inc sp
    nop
    jr nz, jr_013_607e

    nop
    ret nz

    halt
    ret nz

    xor b
    nop
    ld b, b
    rst $20
    nop
    ld h, b
    dec [hl]
    ld bc, $9708
    ld bc, $0c38
    ld [bc], a
    ld [$0291], sp
    sub b
    ld hl, $d003
    cp l
    inc bc
    ret z

    ld h, l
    inc b
    sub b
    dec d
    dec b
    jr z, @-$31

    dec b
    sub b
    adc h
    ld b, $e0
    ld c, a
    rlca
    inc h
    dec d
    ld [$dc5c], sp
    ld [$a588], sp
    add hl, bc
    xor b

jr_013_6065:
    ld [hl], b
    ld a, [bc]
    cp h
    dec a
    dec bc
    call nz, $0c0c
    ret nz

    db $dd
    inc c
    or b
    or b
    dec c
    sub h
    add l
    ld c, $6c
    ld e, h
    rrca
    jr c, jr_013_60b0

    db $10
    ld hl, sp+$0f

jr_013_607e:
    ld de, $ecac
    ld de, $cb54
    ld [de], a
    ldh a, [$ab]
    inc de
    add b
    adc [hl]
    inc d
    inc b
    ld [hl], e
    dec d
    ld a, h
    ld e, c
    ld d, $e8
    ld b, c
    rla
    ld c, b
    inc l
    jr @-$56

    ld d, $19
    ld [$1a01], sp
    ld l, b
    db $eb
    ld a, [de]
    ret z

    push de
    dec de
    jr z, jr_013_6065

    inc e
    adc b
    xor d
    dec e
    add sp, -$6c
    ld e, $48
    ld a, a
    rra
    xor b

jr_013_60b0:
    ld l, c
    jr nz, jr_013_60bb

    ld d, h
    ld hl, $4250
    ld [hl+], a
    add b
    inc [hl]
    inc hl

jr_013_60bb:
    sbc b
    ld a, [hl+]
    inc h
    sbc b
    inc h
    dec h
    add b
    ld [hl+], a
    ld h, $50
    inc h
    daa
    ld [$282a], sp
    xor b
    inc sp
    add hl, hl
    jr nc, jr_013_6110

    ld a, [hl+]
    and b
    ld d, d
    dec hl
    db $10
    ld h, h
    inc l
    add b
    ld [hl], l
    dec l
    ldh a, [$86]
    ld l, $60
    sbc b
    cpl
    ret nc

    xor c
    jr nc, jr_013_6123

    cp e
    ld sp, $ccb0
    ld [hl-], a
    jr nz, @-$20

    inc sp
    sub b
    rst $28
    inc [hl]
    nop
    ld bc, $7836
    ld [de], a
    scf
    ldh [rNR44], a
    jr c, jr_013_6148

    dec [hl]
    add hl, sp
    ret nz

    ld b, [hl]
    ld a, [hl-]
    jr nc, jr_013_6157

    dec sp
    and b
    ld l, c
    inc a
    db $10
    ld a, e
    dec a
    add b
    adc h
    ld a, $f0
    sbc l
    ccf
    ld h, b
    xor a
    ld b, b

jr_013_610f:
    ret nc

jr_013_6110:
    ret nz

    ld b, c
    ld b, b
    jp nc, $b042

    db $e3
    ld b, e
    jr nz, jr_013_610f

    ld b, h
    sub b
    ld b, $46
    nop
    jr jr_013_6168

    ld [hl], b
    add hl, hl

jr_013_6123:
    ld c, b
    ldh [$3a], a
    ld c, c
    ld d, b
    ld c, h
    ld c, d

jr_013_612a:
    ret nz

    ld e, l
    ld c, e
    jr nc, jr_013_619e

    ld c, h
    and b
    add b
    ld c, l
    db $10
    sub d
    ld c, [hl]
    add b
    and e
    ld c, a
    nop
    nop
    nop
    ld h, h
    nop
    nop
    inc l
    ld bc, $5800
    ld [bc], a
    nop
    or b
    inc b
    nop

jr_013_6148:
    sbc b
    ld [$1000], sp
    ld c, $00
    ldh [$15], a
    nop
    sbc b
    ld hl, $9000
    inc sp
    nop

jr_013_6157:
    jr nz, @+$50

    nop
    ret nz

    halt
    ld [hl], b
    xor l
    nop
    ret nz

    di
    nop
    or b
    ld c, c
    ld bc, $b328

jr_013_6168:
    ld bc, $3028
    ld [bc], a
    sbc b
    call nz, Call_013_7802
    ld [hl], b
    inc bc
    ret z

    inc sp
    inc b
    jr @-$07

    inc b
    ld l, b
    cp d
    dec b
    cp b
    ld a, l
    ld b, $08
    ld b, c
    rlca
    ld e, b
    inc b
    ld [$c99c], sp
    ld [$90d4], sp
    add hl, bc
    nop
    ld e, d
    ld a, [bc]
    jr nz, jr_013_61b4

    dec bc
    inc [hl]
    ld a, [c]
    dec bc
    inc a
    pop bc
    inc c
    jr c, jr_013_612a

    dec c
    jr z, jr_013_6200

    ld c, $0c
    ld a, [hl-]

jr_013_619e:
    rrca
    db $e4
    db $10
    db $10
    or b
    jp hl


    db $10
    ld [hl], b
    call nz, $2411
    and c
    ld [de], a
    call z, Call_000_137f
    ld l, b
    ld h, b
    inc d
    ld hl, sp+$42
    dec d

jr_013_61b4:
    ld a, h
    daa
    ld d, $f4
    dec c
    rla
    ld h, b
    or $17
    ret nz

    ldh [rNR23], a
    inc d
    call Call_013_5c19
    cp e
    ld a, [de]
    sbc b
    xor e
    dec de
    ret z

    sbc l
    inc e
    db $ec
    sub c
    dec e
    inc b
    adc b
    ld e, $10
    add b
    rra
    db $10
    ld a, d
    jr nz, jr_013_61dd

    db $76
    ld hl, $73ec

jr_013_61dd:
    ld [hl+], a
    or b
    ld [hl], a
    inc hl
    ld d, b
    add c
    inc h
    call z, $2590
    inc h
    and [hl]
    ld h, $58
    pop bc
    daa
    ld l, b
    ld [c], a
    jr z, jr_013_6245

    add hl, bc
    ld a, [hl+]
    inc e
    ld [hl], $2b
    ret nz

    ld l, b
    inc l
    ld b, b
    and c
    dec l
    ret nz

    reti


    ld l, $40

jr_013_6200:
    ld [de], a
    jr nc, @-$3e

    ld c, d
    ld sp, $8340
    ld [hl-], a
    ret nz

    cp e
    inc sp
    ld b, b
    db $f4
    inc [hl]
    ret nz

    inc l
    ld [hl], $40
    ld h, l
    scf
    ret nz

    sbc l
    jr c, jr_013_6258

    sub $39
    ret nz

    ld c, $3b
    ld b, b
    ld b, a
    inc a
    ret nz

    ld a, a
    dec a
    ld b, b
    cp b
    ld a, $c0
    ldh a, [$3f]
    ld b, b
    add hl, hl
    ld b, c
    ret nz

    ld h, c
    ld b, d
    ld b, b
    sbc d
    ld b, e
    ret nz

    jp nc, Jump_013_4044

    dec bc
    ld b, [hl]
    ret nz

    ld b, e
    ld b, a
    ld b, b
    ld a, h
    ld c, b
    ret nz

    or h
    ld c, c
    ld b, b
    db $ed
    ld c, d
    ret nz

jr_013_6245:
    dec h
    ld c, h
    ld b, b
    ld e, [hl]
    ld c, l
    ret nz

    sub [hl]
    ld c, [hl]
    ld b, b
    rst $08
    ld c, a
    ret nz

    rlca
    ld d, c

jr_013_6253:
    ld b, b
    ld b, b
    ld d, d
    ret nz

    ld a, b

jr_013_6258:
    ld d, e
    ld b, b
    or c
    ld d, h
    ret nz

    jp hl


    ld d, l
    ld b, b
    ld [hl+], a
    ld d, a
    nop
    nop
    nop
    ld h, h
    nop
    nop
    inc l
    ld bc, $5800
    ld [bc], a
    nop
    or b
    inc b
    nop
    sbc b
    ld [$1000], sp
    ld c, $00
    ldh [$15], a
    nop
    sbc b
    ld hl, $9000
    inc sp
    nop
    jr nz, @+$50

    nop
    ret nz

    halt
    ld [hl], b
    xor l
    nop
    ret nz

    di
    nop
    or b
    ld c, c
    ld bc, $b328
    ld bc, $3028
    ld [bc], a
    sbc b
    call nz, Call_013_7802
    ld [hl], b
    inc bc
    ret z

    inc sp
    inc b
    jr @-$07

    inc b
    ld l, b
    cp d
    dec b
    cp b
    ld a, l

jr_013_62a6:
    ld b, $08
    ld b, c
    rlca
    ld e, b
    inc b
    ld [$c99c], sp

jr_013_62af:
    ld [$90d4], sp
    add hl, bc
    nop
    ld e, d
    ld a, [bc]
    jr nz, jr_013_62dd

    dec bc
    inc [hl]
    ld a, [c]
    dec bc
    inc a
    pop bc
    inc c
    jr c, jr_013_6253

    dec c
    jr z, jr_013_6329

    ld c, $0c
    ld a, [hl-]
    rrca
    db $e4
    db $10
    db $10
    or b
    jp hl


    db $10
    ld [hl], b
    call nz, $2411
    and c
    ld [de], a
    call z, Call_000_137f
    ld l, b
    ld h, b
    inc d
    ld hl, sp+$42
    dec d

jr_013_62dd:
    ld a, h
    daa
    ld d, $f4
    dec c
    rla
    ld h, b
    or $17
    ret nz

    ldh [rNR23], a
    ld [$19cf], sp
    jr c, jr_013_62af

    ld a, [de]
    ld d, b
    or a
    dec de
    ld d, b
    or c
    inc e
    jr c, jr_013_62a6

    dec e
    ld [$1eb1], sp
    ret nz

    or [hl]
    rra
    ld h, b
    ret nz

    jr nz, @-$16

    call Call_013_5821
    rst $18
    ld [hl+], a
    or b
    db $f4
    inc hl
    ldh a, [$0d]
    dec h
    jr jr_013_633a

    ld h, $28
    ld c, h
    daa
    jr nz, jr_013_6386

    jr z, jr_013_6317

jr_013_6317:
    sbc d
    add hl, hl
    ret z

    add $2a
    ld a, b
    rst $30
    dec hl
    db $10
    inc l
    dec l
    sub b
    ld h, h
    ld l, $10
    sbc l
    cpl
    sub b

jr_013_6329:
    push de
    jr nc, @+$12

    ld c, $32
    sub b
    ld b, [hl]
    inc sp
    db $10
    ld a, a
    inc [hl]
    sub b
    or a
    dec [hl]
    db $10
    ldh a, [$36]

jr_013_633a:
    sub b
    jr z, jr_013_6375

    db $10
    ld h, c
    add hl, sp
    sub b
    sbc c
    ld a, [hl-]
    db $10
    jp nc, $903b

    ld a, [bc]
    dec a
    db $10
    ld b, e
    ld a, $90
    ld a, e
    ccf
    db $10
    or h
    ld b, b
    sub b
    db $ec
    ld b, c
    db $10
    dec h
    ld b, e
    sub b
    ld e, l
    ld b, h
    db $10
    sub [hl]
    ld b, l
    sub b
    adc $46
    db $10
    rlca
    ld c, b
    sub b
    ccf
    ld c, c
    db $10
    ld a, b
    ld c, d
    sub b
    or b
    ld c, e
    db $10
    jp hl


    ld c, h
    sub b
    ld hl, $104e
    ld e, d

jr_013_6375:
    ld c, a
    sub b
    sub d
    ld d, b
    db $10
    bit 2, c

jr_013_637c:
    sub b
    inc bc
    ld d, e
    db $10
    inc a
    ld d, h
    sub b
    ld [hl], h
    ld d, l
    db $10

jr_013_6386:
    xor l
    ld d, [hl]
    sub b
    push hl
    ld d, a
    nop
    nop
    nop
    ld h, h
    nop
    nop
    inc l
    ld bc, $5800
    ld [bc], a
    nop
    or b
    inc b
    nop
    sbc b
    ld [$1000], sp
    ld c, $00
    ldh [$15], a
    nop
    sbc b
    ld hl, $9000
    inc sp
    nop
    jr nz, @+$50

    nop
    ret nz

    halt
    ld [hl], b
    xor l
    nop
    ret nz

    di
    nop
    or b
    ld c, c
    ld bc, $b328
    ld bc, $3028
    ld [bc], a
    sbc b
    call nz, Call_013_7802
    ld [hl], b
    inc bc
    ret z

    inc sp
    inc b
    jr @-$07

    inc b
    ld l, b
    cp d
    dec b
    cp b
    ld a, l
    ld b, $08
    ld b, c
    rlca
    ld e, b
    inc b
    ld [$c99c], sp
    ld [$90d4], sp
    add hl, bc
    nop
    ld e, d
    ld a, [bc]
    jr nz, jr_013_6406

    dec bc
    inc [hl]
    ld a, [c]
    dec bc

jr_013_63e5:
    inc a
    pop bc
    inc c
    jr c, jr_013_637c

    dec c
    jr z, @+$67

    ld c, $0c
    ld a, [hl-]
    rrca
    db $e4
    db $10
    db $10
    or b
    jp hl


    db $10
    ld [hl], b
    call nz, $2411
    and c
    ld [de], a
    call z, Call_000_137f
    ld l, b
    ld h, b
    inc d
    ld hl, sp+$42
    dec d

jr_013_6406:
    ld a, h
    daa
    ld d, $f4
    dec c
    rla
    ld h, b
    or $17
    ret nz

    ldh [rNR23], a

Jump_013_6412:
    ldh a, [$d2]
    add hl, de
    ldh a, [$cc]
    ld a, [de]
    ret nz

    adc $1b
    ld h, b
    ret c

    inc e

Call_013_641e:
    ret nc

    jp hl


    dec e
    db $10
    inc bc
    rra
    jr nz, jr_013_644a

    jr nz, jr_013_6428

jr_013_6428:
    ld c, l
    ld hl, $7db0

jr_013_642c:
    ld [hl+], a
    jr nc, jr_013_63e5

    inc hl
    add b
    or $24
    and b
    ld a, $26
    sub b
    adc [hl]
    daa
    ld d, b
    and $28
    ldh [rLYC], a

Call_013_643e:
    ld a, [hl+]
    ld b, b
    xor l
    dec hl
    ld [hl], b
    inc e
    dec l
    ld [hl], b

jr_013_6446:
    sub e
    ld l, $40
    ld [de], a

jr_013_644a:
    jr nc, jr_013_642c

    sbc b
    ld sp, $1f80
    inc sp
    jr nz, @-$58

    inc [hl]
    ret nz

    inc l
    ld [hl], $60
    or e
    scf
    nop
    ld a, [hl-]
    add hl, sp
    and b
    ret nz

    ld a, [hl-]
    ld b, b
    ld b, a
    inc a
    ldh [$cd], a
    dec a
    add b
    ld d, h
    ccf
    jr nz, jr_013_6446

    ld b, b
    ret nz

    ld h, c
    ld b, d
    ld h, b
    add sp, $43
    nop
    ld l, a
    ld b, l
    and b
    push af
    ld b, [hl]
    ld b, b
    ld a, h
    ld c, b
    ldh [rSC], a
    ld c, d
    add b
    adc c
    ld c, e
    jr nz, jr_013_6493

    ld c, l
    ret nz

    sub [hl]
    ld c, [hl]
    ld h, b
    dec e
    ld d, b
    nop
    and h
    ld d, c
    and b
    ld a, [hl+]
    ld d, e
    ld b, b
    or c
    ld d, h

jr_013_6493:
    ldh [$37], a
    ld d, [hl]
    add b
    cp [hl]
    ld d, a
    jr nz, jr_013_64e0

    ld e, c
    ret nz

    bit 3, d
    ld h, b
    ld d, d
    ld e, h
    nop
    reti


    ld e, l
    and b
    ld e, a
    ld e, a
    ld b, b
    and $60
    ldh [$6c], a
    ld h, d
    add b
    di
    ld h, e
    jr nz, jr_013_652d

    ld h, l
    nop
    nop
    nop
    ld h, h
    nop
    nop
    inc l
    ld bc, $5800
    ld [bc], a
    nop
    or b
    inc b
    nop
    sbc b
    ld [$1000], sp
    ld c, $00
    ldh [$15], a
    nop
    sbc b
    ld hl, $9000
    inc sp
    nop
    jr nz, jr_013_6522

    nop
    ret nz

    halt
    ld [hl], b
    xor l
    nop

jr_013_64db:
    ret nz

    di
    nop
    or b
    ld c, c

jr_013_64e0:
    ld bc, $b328
    ld bc, $3028
    ld [bc], a
    sbc b
    call nz, Call_013_7802
    ld [hl], b
    inc bc
    ret z

    inc sp
    inc b
    jr @-$07

    inc b
    ld l, b
    cp d
    dec b
    cp b
    ld a, l
    ld b, $08
    ld b, c
    rlca
    ld e, b
    inc b
    ld [$cb90], sp
    ld [$96b0], sp
    add hl, bc
    cp b
    ld h, l
    ld a, [bc]
    and b
    jr c, jr_013_6516

    add b
    rrca
    inc c
    ld b, b
    ld [$e80c], a
    ret z

    dec c
    ld a, b
    xor e

jr_013_6516:
    ld c, $f0
    sub c
    rrca
    ld d, b
    ld a, h

jr_013_651c:
    db $10
    sbc b
    ld l, d
    ld de, $5cc8

jr_013_6522:
    ld [de], a
    ldh [rHDMA2], a
    inc de
    ldh [$4c], a
    inc d
    ret z

    ld c, d
    dec d
    sbc b

jr_013_652d:
    ld c, h
    ld d, $50
    ld d, d
    rla
    ldh a, [$5b]
    jr jr_013_65ae

    ld l, c
    add hl, de
    add sp, $7a
    ld a, [de]
    ld b, b
    sub b
    dec de
    add b
    xor c
    inc e
    xor b
    add $1d
    cp b
    rst $20
    ld e, $b0
    inc c
    jr nz, jr_013_64db

    dec [hl]
    ld hl, $6258
    ld [hl+], a
    ld [$2393], sp
    and b
    rst $00
    inc h
    jr nz, jr_013_6558

jr_013_6558:
    ld h, $70
    ld b, b
    daa
    sub b
    adc b
    jr z, jr_013_64e0

    ret c

jr_013_6561:
    add hl, hl
    ld b, b
    jr nc, jr_013_6590

    ret nc

    adc a
    inc l
    jr nc, jr_013_6561

    dec l
    ld h, b
    ld h, [hl]
    cpl
    ld h, b
    db $dd
    jr nc, @+$32

    ld e, h
    ld [hl-], a
    ret nc

    ld [c], a
    inc sp
    ld [hl], b
    ld l, c
    dec [hl]
    db $10
    ldh a, [$36]
    or b
    db $76
    jr c, jr_013_65d1

    db $fd
    add hl, sp
    ldh a, [$83]
    dec sp
    sub b
    ld a, [bc]
    dec a
    jr nc, jr_013_651c

    ld a, $d0
    rla
    ld b, b
    ld [hl], b

jr_013_6590:
    sbc [hl]
    ld b, c
    db $10
    dec h
    ld b, e
    or b
    xor e
    ld b, h
    ld d, b
    ld [hl-], a
    ld b, [hl]
    ldh a, [$b8]
    ld b, a
    sub b
    ccf
    ld c, c
    jr nc, @-$38

    ld c, d
    ret nc

    ld c, h
    ld c, h
    ld [hl], b
    db $d3
    ld c, l
    db $10
    ld e, d
    ld c, a
    or b

jr_013_65ae:
    ldh [$50], a
    ld d, b
    ld h, a
    ld d, d
    ldh a, [$ed]
    ld d, e

jr_013_65b6:
    sub b
    ld [hl], h
    ld d, l
    jr nc, jr_013_65b6

    ld d, [hl]
    ret nc

    add c
    ld e, b
    ld [hl], b
    ld [$105a], sp
    adc a
    ld e, e
    or b
    dec d
    ld e, l
    ld d, b
    sbc h
    ld e, [hl]
    ldh a, [rNR43]
    ld h, b
    sub b
    xor c
    ld h, c

jr_013_65d1:
    jr nc, jr_013_6603

    ld h, e
    ret nc

    or [hl]
    ld h, h
    ld [hl], b
    dec a
    ld h, [hl]
    db $10
    call nz, Call_000_0067
    nop
    nop
    ld h, h
    nop
    nop
    inc l
    ld bc, $5800
    ld [bc], a
    nop
    or b
    inc b
    nop
    sbc b
    ld [$1000], sp
    ld c, $00
    ldh [$15], a
    nop
    sbc b
    ld hl, $9000
    inc sp
    nop
    jr nz, jr_013_664b

    nop
    ret nz

    halt
    ld [hl], b
    xor l

jr_013_6603:
    nop
    ret nz

    di
    nop
    or b
    ld c, c
    ld bc, $b328
    ld bc, $3028
    ld [bc], a
    sbc b
    call nz, Call_013_7802
    ld [hl], b
    inc bc
    ret z

    inc sp
    inc b
    add sp, -$02
    inc b
    ret c

jr_013_661d:
    pop de

jr_013_661e:
    dec b
    sbc b
    xor h
    ld b, $28
    adc a
    rlca
    adc b
    ld a, c

jr_013_6627:
    ld [$67d0], sp
    add hl, bc
    nop
    ld e, d
    ld a, [bc]
    jr @+$52

    dec bc
    jr jr_013_667d

    inc c
    nop
    ld c, b
    dec c
    ret nc

    ld c, c
    ld c, $88
    ld c, a
    rrca
    jr z, jr_013_6698

    db $10
    or b
    ld h, [hl]
    ld de, $7820
    ld [de], a

jr_013_6646:
    ld a, b
    adc l
    inc de
    cp b
    and [hl]

jr_013_664b:
    inc d
    ldh [$c3], a
    dec d
    ldh a, [$e4]
    ld d, $e8
    add hl, bc
    jr jr_013_661e

    ld [hl-], a
    add hl, de
    sub b
    ld e, a
    ld a, [de]
    ld b, b
    sub b
    dec de
    ret c

    call nz, $581c
    db $fd
    dec e
    ret nz

    add hl, sp
    rra
    db $10
    ld a, d
    jr nz, jr_013_66b3

    cp [hl]
    ld hl, $0668
    inc hl
    ld [hl], b
    ld d, d
    inc h
    ld h, b
    and d
    dec h
    jr c, @-$08

    ld h, $f8
    ld c, l
    jr z, jr_013_661d

jr_013_667d:
    xor c
    add hl, hl
    jr nc, jr_013_668a

    dec hl
    xor b
    ld l, h
    inc l
    ld [$2dd4], sp
    ld d, b
    ccf

jr_013_668a:
    cpl
    add b
    xor [hl]
    jr nc, jr_013_6627

    ld hl, $9832
    sbc b
    inc sp
    add b
    inc de
    dec [hl]
    ld d, b

jr_013_6698:
    sub d
    ld [hl], $08
    dec d
    jr c, jr_013_6646

    sbc e
    add hl, sp
    ld c, b
    ld [hl+], a
    dec sp
    add sp, -$58
    inc a
    adc b
    cpl
    ld a, $28
    or [hl]
    ccf
    ret z

    inc a

jr_013_66ae:
    ld b, c
    ld l, b
    jp $0842


jr_013_66b3:
    ld c, d
    ld b, h
    xor b
    ret nc

    ld b, l
    ld c, b
    ld d, a
    ld b, a
    add sp, -$23
    ld c, b
    adc b
    ld h, h
    ld c, d
    jr z, jr_013_66ae

    ld c, e
    ret z

    ld [hl], c
    ld c, l
    ld l, b
    ld hl, sp+$4e
    ld [$507f], sp
    xor b
    dec b
    ld d, d
    ld c, b
    adc h
    ld d, e
    add sp, $12
    ld d, l
    adc b
    sbc c
    ld d, [hl]
    jr z, @+$22

    ld e, b
    ret z

    and [hl]
    ld e, c
    ld l, b
    dec l
    ld e, e
    ld [$5cb4], sp
    xor b
    ld a, [hl-]
    ld e, [hl]
    ld c, b
    pop bc
    ld e, a
    add sp, $47
    ld h, c
    adc b
    adc $62
    jr z, @+$57

    ld h, h
    ret z

    db $db
    ld h, l
    ld l, b
    ld h, d
    ld h, a
    ld [$68e9], sp
    xor b
    ld l, a
    ld l, d
    ld c, b
    or $6b
    add sp, $7c
    ld l, l
    nop
    ld bc, $0001
    ld bc, $0101
    nop
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0000
    ld bc, $0001
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0100
    ld bc, $0000
    ld bc, $0100
    nop
    ld bc, $0001
    ld bc, $0101
    nop
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    ld bc, $0100
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0100
    ld bc, $0000
    nop
    ld bc, $0200
    ld bc, $0003
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0200
    inc bc
    inc bc
    ld bc, $0002
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0200
    inc bc
    inc bc
    ld bc, $0002
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    inc b
    dec b
    inc b
    inc bc
    dec b
    inc b
    inc b
    dec b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0200
    inc bc
    inc bc
    ld bc, $0002
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0100
    ld bc, $0000
    ld bc, $0100
    nop
    ld bc, $0001
    ld bc, $0101
    nop
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    ld bc, $0100
    nop
    nop
    ld bc, $0001
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld bc, $0000
    nop
    ld bc, $0800
    ld b, $09
    dec b
    rlca
    ld a, [bc]
    ld a, [bc]
    ld [$0509], sp
    dec b
    ld [$0906], sp
    ld [$0302], sp
    ld [bc], a
    ld bc, $0200
    inc bc
    inc bc
    ld bc, $0002
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0100
    ld bc, $0000
    ld bc, $0100
    nop
    ld bc, $0001
    ld bc, $0101
    nop
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    ld bc, $0100
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0100
    ld bc, $0000
    nop
    ld bc, $0200
    ld bc, $0003
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0301
    dec b
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    inc b
    dec b
    inc b
    inc bc
    dec b
    inc b
    inc b
    dec b
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    dec b
    dec b
    dec b
    inc bc
    inc b
    inc b
    inc bc
    inc bc
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0200
    inc bc
    inc bc
    ld bc, $0002
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0200
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    dec b
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    inc b
    dec b
    inc b
    inc bc
    dec b
    inc b
    inc b
    dec b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0200
    inc bc
    inc bc
    ld bc, $0002
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0200
    inc bc
    inc bc
    ld bc, $0002
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0200
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    ld [$0906], sp
    dec b
    rlca
    ld a, [bc]
    ld a, [bc]
    ld [$0509], sp
    dec b
    ld [$0906], sp
    ld [$0305], sp
    inc bc
    inc bc
    inc b
    dec b
    inc b
    dec b
    inc b
    inc bc
    dec b
    inc b
    inc b
    dec b
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    dec b
    dec b
    dec b
    inc bc
    inc b
    inc b
    ld bc, $0100
    ld bc, $0000
    ld bc, $0100
    ld bc, $0100
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld bc, $0000
    nop
    ld bc, $0300
    ld [bc], a
    inc bc
    ld bc, $0303
    ld [bc], a
    inc b
    dec b
    inc b
    inc bc
    dec b
    ld bc, $0402
    inc bc
    dec b
    inc bc
    ld bc, $0300
    dec b
    inc b
    ld [bc], a
    inc bc
    nop
    inc b
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0302
    inc b
    inc bc
    ld [$0604], sp
    ld b, $06
    dec b
    inc b
    ld [$0807], sp
    inc b
    dec b
    inc b
    ld b, $08
    ld b, $07
    ld b, $05
    rlca
    ld b, $06
    ld [$0504], sp
    inc b
    ld b, $06
    ld [$0807], sp
    inc b
    ld b, $06
    ld [$0504], sp
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    inc b
    nop
    inc bc
    inc bc
    ld [bc], a
    inc b
    dec b
    inc b
    inc bc
    dec b
    ld bc, $0402
    ld [$0504], sp
    inc b
    ld b, $08
    ld b, $07
    ld b, $05
    rlca
    ld b, $06
    ld [$0504], sp
    inc b
    ld b, $06
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $07
    ld b, $06
    ld b, $06
    rlca
    ld b, $06
    dec b
    inc b
    dec b
    inc b
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc b
    inc b
    inc bc
    inc b
    inc b
    inc b
    inc b
    nop
    inc bc
    ld bc, $0204
    ld [bc], a
    inc bc
    nop
    inc b
    inc b
    inc bc
    inc bc
    inc b
    ld bc, $0302
    dec c
    dec bc
    ld a, [bc]
    rlca
    ld [$0c0a], sp
    dec bc
    rlca
    ld b, $0b
    ld a, [bc]
    inc c
    add hl, bc
    add hl, bc
    ld a, [bc]
    rlca
    dec c
    inc c
    add hl, bc
    ld a, [bc]
    ld [$0b08], sp
    dec bc
    ld b, $04
    dec b
    ld b, $05
    inc b
    inc b
    ld b, $07
    ld b, $05
    rlca
    dec b
    inc b
    ld b, $06
    dec b
    ld b, $04
    inc b
    inc b
    dec b
    dec b
    rlca
    ld b, $07
    inc b
    dec b
    rlca
    ld b, $07
    inc bc
    ld b, $05
    ld b, $04
    inc b
    inc b
    dec b
    rlca
    inc b
    inc b
    inc bc
    inc b
    rlca
    dec b
    dec b
    rlca
    inc b
    ld b, $05
    ld b, $05
    inc b
    inc b
    inc bc
    ld b, $06
    nop
    inc bc
    ld [bc], a
    inc b
    dec b
    inc bc
    inc bc
    ld bc, $0405
    nop
    inc bc
    dec b
    ld bc, $0402
    inc bc
    dec b
    inc bc
    ld bc, $0300
    dec b
    inc b
    ld [bc], a
    inc bc
    nop
    inc b
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, [bc]
    ld a, [bc]
    dec c
    dec bc
    ld a, [bc]
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec c
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    nop
    inc bc
    ld bc, $0004
    inc bc
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc bc
    inc bc
    inc b
    ld bc, $0302
    rlca
    inc b
    inc b
    inc b
    dec b
    ld b, $06
    ld b, $05
    inc b
    rlca
    dec b
    dec b
    rlca
    inc bc
    inc b
    inc b
    dec b
    ld b, $0a
    ld a, [bc]
    dec c
    dec bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    inc c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    inc c
    inc c
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    nop
    ld [bc], a
    ld bc, $0103
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0302
    ld a, [bc]
    ld [$0508], sp
    ld b, $08
    add hl, bc
    add hl, bc
    dec b
    dec b
    ld [$0908], sp
    rlca
    rlca
    ld [$0a05], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    ld b, $04
    inc b
    inc bc
    dec b
    ld b, $05
    ld b, $05
    inc bc
    ld b, $05
    dec b
    ld b, $03
    inc bc
    inc bc
    inc bc
    ld bc, $0200
    inc b
    inc b
    ld bc, $0002
    inc b
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    rlca
    rlca
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    add hl, bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    ld b, $06
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    inc b
    inc bc
    inc b
    dec b
    ld b, $00
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    inc b
    dec b
    inc b
    inc bc
    inc b
    inc b
    inc bc
    dec b
    inc b
    dec b
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    inc b
    dec b
    inc b
    inc bc
    dec b
    inc b
    inc b
    dec b
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    rlca
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $05
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    nop
    dec b
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    inc b
    dec b
    inc b
    inc bc
    dec b
    inc b
    inc b
    dec b
    inc bc
    ld a, [bc]
    ld [$0508], sp
    ld b, $08
    add hl, bc
    add hl, bc
    dec b
    dec b
    ld [$0908], sp
    rlca
    rlca
    ld [$0a05], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [$0707], sp
    rlca
    ld [$0808], sp
    ld [$0808], sp
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    inc b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc b
    inc b
    inc b
    inc b
    nop
    dec b
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    inc b
    dec b
    inc b
    inc bc
    dec b
    inc b
    inc b
    dec b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0200
    inc bc
    inc bc
    ld bc, $0002
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rlca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $06
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $05
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld b, $04
    inc b
    inc bc
    ld b, $06
    dec b
    ld b, $05
    inc bc
    dec b
    dec b
    inc b
    ld b, $04
    ld b, $04
    inc b
    inc bc
    dec b
    ld b, $05
    ld b, $05
    inc bc
    ld b, $05
    dec b
    ld b, $03
    inc b
    inc b
    inc b
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    inc b
    dec b
    inc b
    inc bc
    dec b
    inc b
    inc b
    dec b
    inc bc
    ld a, [bc]
    ld [$0508], sp
    ld b, $08
    add hl, bc
    add hl, bc
    dec b
    dec b
    ld [$0908], sp
    rlca
    rlca
    ld [$0a05], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $07
    rlca
    rlca
    rlca
    nop
    ld [$0906], sp
    dec b
    rlca
    ld a, [bc]
    ld a, [bc]
    ld [$0509], sp
    dec b
    ld [$0906], sp
    ld [$0302], sp
    ld [bc], a
    ld bc, $0607
    ld b, $02
    ld b, $07
    ld b, $06
    ld b, $02
    dec b
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    dec b
    inc bc
    ld a, [bc]
    ld [$0808], sp
    ld [$0a0a], sp
    ld [$0408], sp
    inc b
    inc b
    ld [$0608], sp
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    ld [$0906], sp
    dec b
    rlca
    ld a, [bc]
    ld a, [bc]
    ld [$0509], sp
    dec b
    ld [$0906], sp
    ld [$0305], sp
    inc bc
    inc bc
    inc b
    dec b
    inc b
    dec b
    inc b
    inc bc
    dec b
    inc b
    inc b
    dec b
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    add hl, bc
    add hl, bc
    ld b, $06
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $06
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0400
    inc b
    inc b
    inc b
    inc b
    dec b
    rlca
    ld a, [bc]
    dec c
    nop
    ld [$0906], sp
    dec b
    rlca
    ld a, [bc]
    ld a, [bc]
    ld [$0509], sp
    dec b
    ld [$0906], sp
    ld [$080a], sp
    ld [$0605], sp
    ld [$0909], sp
    dec b
    dec b
    ld [$0908], sp
    rlca
    rlca
    ld [$0a05], sp
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0608], sp
    ld b, $06
    ld b, $06
    ld b, $06
    ld [$0808], sp
    ld [$0808], sp
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $05
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc b
    inc b
    inc b
    nop
    ld [$0906], sp
    dec b
    rlca
    ld a, [bc]
    ld a, [bc]
    ld [$0509], sp
    dec b
    ld [$0906], sp
    ld [$0302], sp
    ld [bc], a
    ld bc, $0200
    inc bc
    inc bc
    ld bc, $0002
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rlca
    dec b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    ld b, $06
    ld b, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0308], sp
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc b
    ld b, $06
    add hl, bc
    rlca
    ld [$0808], sp
    ld [$0008], sp
    ld [$0906], sp
    dec b
    rlca
    ld a, [bc]
    ld a, [bc]
    ld [$0509], sp
    dec b
    ld [$0906], sp
    ld [$0305], sp
    inc bc
    inc bc
    inc b
    dec b
    inc b
    dec b
    inc b

Jump_013_7004:
    inc bc
    dec b
    inc b
    inc b
    dec b
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$0808], sp
    ld b, $06
    ld [$0808], sp
    ld [$0800], sp
    ld b, $09
    dec b
    rlca
    ld a, [bc]
    ld a, [bc]
    ld [$0509], sp
    dec b
    ld [$0906], sp
    ld [$080a], sp
    ld [$0605], sp
    ld [$0909], sp
    dec b
    dec b
    ld [$0908], sp
    rlca
    rlca
    ld [$0a05], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld b, $06
    ld b, $06
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0409], sp
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $06
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$0808], sp
    ld [$0708], sp
    rlca
    rlca
    rlca
    nop
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    inc b
    dec b
    inc b
    inc bc
    inc b
    inc b
    inc bc
    dec b
    inc b
    dec b
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    inc b
    dec b
    inc b
    inc bc
    dec b
    inc b
    inc b
    dec b
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c
    inc c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $10
    db $10
    db $10
    db $10
    db $10
    db $10
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    dec bc
    db $10
    rrca
    dec bc
    inc de
    ld [de], a
    dec c
    ld c, $0a
    inc d
    nop
    ld [$0906], sp
    dec b
    rlca
    ld a, [bc]
    ld a, [bc]
    ld [$0509], sp
    dec b
    ld [$0906], sp
    ld [$0305], sp
    inc bc
    inc bc
    inc b
    dec b
    inc b
    dec b
    inc b
    inc bc
    dec b
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc bc
    inc b
    inc b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    rrca
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $0b
    inc c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rrca
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld c, $11
    ld a, [bc]
    inc c
    ld [de], a
    inc de
    db $10
    inc d
    ld c, $0e
    nop
    rrca
    dec c
    inc d
    dec bc
    ld de, $1312
    rrca
    ld a, [bc]
    inc c
    rrca
    db $10
    ld c, $0a
    inc d
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    inc b
    inc bc
    dec b
    inc b
    inc b
    dec b
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $0f11
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $10
    db $10
    db $10
    db $10
    db $10
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    ld c, $0f
    inc c
    ld a, [bc]
    db $10
    ld de, $1010
    dec c
    ld de, $0500
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    inc b
    dec b
    inc b
    inc bc
    inc b
    inc b
    inc bc
    dec b
    inc b
    ld a, [bc]
    ld [$0508], sp
    ld b, $08
    add hl, bc
    add hl, bc
    dec b
    dec b
    ld [$0908], sp
    rlca
    rlca
    ld [$0a05], sp
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0f
    rrca
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    ld c, $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld c, $0e
    ld c, $11
    ld a, [bc]
    inc c
    ld [de], a
    inc de
    db $10
    inc d
    ld c, $0e
    nop
    ld [$0906], sp
    dec b
    rlca
    ld a, [bc]
    ld a, [bc]
    ld [$0509], sp
    dec b
    ld [$0906], sp
    ld [$080a], sp
    ld [$0605], sp
    ld [$080a], sp
    dec b
    dec b
    ld [$0909], sp
    ld b, $07
    ld [$0a05], sp
    add hl, bc
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld [de], a
    db $10
    ld a, [bc]
    inc c
    inc d
    rrca
    ld [$0808], sp
    ld [$140c], sp
    inc de
    ld [de], a
    ld b, $0e
    ld a, [bc]
    inc c
    ld [de], a
    inc de
    db $10
    inc d
    ld c, $0e
    ld c, $0e
    rrca
    ld de, $0c15
    dec c
    dec bc
    dec bc
    ld de, $0f10
    dec bc
    inc de
    ld [de], a
    dec c
    ld c, $0a
    dec d
    db $10
    rrca
    inc c
    ld a, [bc]
    db $10
    ld de, $1010
    dec c
    ld de, $0f00
    dec c
    inc d
    dec bc
    ld de, $1312
    rrca
    ld a, [bc]
    inc c
    rrca
    db $10
    ld c, $0a
    inc d
    ld a, [bc]
    ld [$0508], sp
    dec b
    rlca
    add hl, bc
    ld [$0505], sp
    ld b, $08
    add hl, bc
    ld a, [bc]
    rlca
    ld [$0a05], sp
    add hl, bc
    rlca
    ld [$0606], sp
    add hl, bc
    ld [$0d14], sp
    ld de, $0e10
    ld de, $0a10
    inc c
    ld c, $0e
    rrca
    ld de, $0c14
    dec c
    dec bc
    dec bc
    inc d
    ld de, $0c0a
    ld [de], a
    inc de
    db $10
    inc d
    ld c, $0e
    rrca
    rrca
    inc c
    ld a, [bc]
    db $10
    ld de, $1010
    dec c
    ld de, $0f14
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $14
    inc de
    ld [de], a
    ld de, $0f10
    dec bc
    inc de
    ld [de], a
    dec c
    ld c, $0a
    inc d
    nop
    rrca
    dec c
    inc d
    dec bc
    ld de, $1312
    rrca
    ld a, [bc]
    inc c
    rrca
    db $10
    ld c, $0a
    inc d
    rrca
    dec c
    dec c
    ld de, $1411
    inc d
    inc c
    inc c
    dec c
    dec c
    ld c, $10
    inc de
    dec bc
    ld [de], a
    dec c
    db $10
    rrca
    rrca
    db $10
    ld c, $0b
    inc de
    rrca
    ld a, [bc]
    dec bc
    inc c
    dec c
    rrca
    ld de, $1312
    inc d
    ld c, $0e
    rrca
    ld de, $0c14
    dec c
    dec bc
    dec bc
    ld de, $0f10
    dec bc
    inc de
    ld [de], a
    dec c
    ld c, $0a
    inc d
    rrca
    rrca
    inc c
    ld a, [bc]
    db $10
    ld de, $1010
    dec c
    ld de, $0f14
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $14
    inc de
    ld [de], a
    inc d
    ld de, $0c0a
    ld [de], a
    inc de
    db $10
    inc d
    ld c, $0e
    ld a, [$c905]
    rst $00
    ld [hl], b
    ld [hl], e
    db $eb
    ld [hl], e
    push af
    ld [hl], e
    ld b, $4b
    ld a, [$c969]
    or a
    jr nz, jr_013_7381

    ld a, [$c968]
    cp $30
    jr c, jr_013_7381

    ld b, $4d

jr_013_7381:
    ld a, b
    call Call_000_1ae1
    xor a
    ld hl, $c905
    ld bc, $0008
    call Call_000_12c7
    ld hl, $ffb7
    call Call_013_774f
    ld hl, $ffbb
    call Call_013_774f
    ld hl, $c8da
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
    ldh a, [$bb]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ldh a, [$b7]
    rrca
    rrca
    rrca
    add l
    ld l, a
    ld a, h
    adc $98
    ld h, a
    ld a, h
    and $03
    or $98
    ld h, a
    ld a, l
    ld [$c90b], a
    ld a, h
    ld [$c90c], a
    ld hl, $8e60
    ld b, $10

jr_013_73cb:
    ld a, $ff
    call Call_000_1ab9
    dec b
    jr nz, jr_013_73cb

    ld a, $03
    ldh [$d3], a
    ld hl, $c905
    inc [hl]
    call Call_000_12d0
    ld a, [$c899]
    ld b, a
    ld a, $03
    call Call_000_1dfb
    ld [$c906], a
    ret


    ld a, [$c906]
    rst $00
    jr nz, @+$76

    add [hl]
    ld [hl], h
    rst $10
    ld [hl], l
    ld hl, $c8eb
    res 6, [hl]
    xor a
    ld [$c905], a
    ld hl, $170a
    rst $10
    ld a, $04
    call Call_000_1688
    ld a, $02
    ld [$c88a], a
    ld a, $00
    ld [$c88b], a
    ld a, $00
    ld [$c88c], a
    ld a, $00
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]
    ret


    ld a, [$c907]
    rst $00
    jr z, @+$76

    ld a, l
    ld [hl], h
    ld a, [$c908]
    cp $14
    jr nz, jr_013_7434

    ld hl, $c907
    inc [hl]
    ret


jr_013_7434:
    ld a, [$c908]
    ld hl, $0000
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, $09

jr_013_7442:
    push hl
    push bc
    call Call_013_777f
    pop bc
    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_013_7442

    ld a, [$c908]
    ld b, a
    ld a, $13
    sub b
    ld hl, $0020
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, $09

jr_013_7466:
    push hl
    push bc
    call Call_013_777f
    pop bc
    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_013_7466

    ld hl, $c908
    inc [hl]
    ret


    call Call_013_779f
    ret nz

    ld hl, $c905
    inc [hl]
    ret


    ld b, $06

Jump_013_7488:
    ld a, [$c907]
    rst $00
    sub d
    ld [hl], h
    ld [$ce74], a
    ld [hl], l
    push bc
    ld a, [$c908]
    cp $11
    jp c, Jump_013_7537

    cp $23
    jp c, Jump_013_755c

    cp $33
    jp c, Jump_013_7581

    cp $43
    jp c, Jump_013_7598

    cp $51
    jp c, Jump_013_7537

    cp $5f
    jp c, Jump_013_755c

    cp $6b
    jp c, Jump_013_7581

    cp $77
    jp c, Jump_013_7598

    cp $81
    jr c, jr_013_7537

    cp $8b
    jp c, Jump_013_755c

    cp $93
    jp c, Jump_013_7581

    cp $9b
    jp c, Jump_013_7598

    cp $a1
    jr c, jr_013_7537

    cp $a7
    jp c, Jump_013_755c

    cp $ab
    jp c, Jump_013_7581

    cp $af
    jp c, Jump_013_7598

    cp $b1
    jr c, jr_013_7537

    jr jr_013_755c

    push bc
    ld a, [$c908]
    cp $02
    jr c, jr_013_755c

    cp $04
    jr c, jr_013_7537

    cp $08
    jp c, Jump_013_7598

    cp $0c
    jp c, Jump_013_7581

    cp $12
    jr c, jr_013_755c

    cp $18
    jr c, jr_013_7537

    cp $20
    jp c, Jump_013_7598

    cp $28
    jr c, jr_013_7581

    cp $32
    jr c, jr_013_755c

    cp $3c
    jr c, jr_013_7537

    cp $48
    jr c, jr_013_7598

    cp $54
    jr c, jr_013_7581

    cp $62
    jr c, jr_013_755c

    cp $70
    jr c, jr_013_7537

    cp $80
    jr c, jr_013_7598

    cp $90
    jr c, jr_013_7581

    cp $a2
    jr c, jr_013_755c

    jr jr_013_7537

Jump_013_7537:
jr_013_7537:
    or a
    jr nz, jr_013_7545

    ld hl, $0233
    ld a, l
    ld [$c909], a
    ld a, h
    ld [$c90a], a

jr_013_7545:
    ld a, [$c909]
    ld l, a
    ld a, [$c90a]
    ld h, a
    push hl
    call Call_013_777f
    pop hl
    ld a, l
    sub $20
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    jr jr_013_75ad

Jump_013_755c:
jr_013_755c:
    or a
    jr nz, jr_013_756a

    ld hl, $012a
    ld a, l
    ld [$c909], a
    ld a, h
    ld [$c90a], a

jr_013_756a:
    ld a, [$c909]
    ld l, a
    ld a, [$c90a]
    ld h, a
    push hl
    call Call_013_777f
    pop hl
    ld a, l
    sub $01
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    jr jr_013_75ad

Jump_013_7581:
jr_013_7581:
    ld a, [$c909]
    ld l, a
    ld a, [$c90a]
    ld h, a
    push hl
    call Call_013_777f
    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_013_75ad

Jump_013_7598:
jr_013_7598:
    ld a, [$c909]
    ld l, a
    ld a, [$c90a]
    ld h, a
    push hl
    call Call_013_777f
    pop hl
    ld a, l
    add $01
    ld l, a
    ld a, h
    adc $00
    ld h, a

jr_013_75ad:
    ld a, l
    ld [$c909], a
    ld a, h
    ld [$c90a], a
    ld hl, $c908
    inc [hl]
    ld a, [$c908]
    cp $b4
    jr nz, jr_013_75c8

    ld hl, $c907
    inc [hl]
    xor a
    ld [$c908], a

jr_013_75c8:
    pop bc
    dec b
    jp nz, Jump_013_7488

    ret


    call Call_013_779f
    ret nz

    ld hl, $c905
    inc [hl]
    ret


    ld a, [$c907]
    rst $00
    pop hl
    ld [hl], l
    or [hl]
    db $76
    cp e
    db $76
    ld a, [$c908]
    or a
    jr nz, jr_013_75f2

    ld hl, $0000
    ld a, l
    ld [$c909], a
    ld a, h
    ld [$c90a], a

jr_013_75f2:
    ld hl, $772b
    ld a, [$c908]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, [hl]
    ld hl, $773d
    ld a, [$c908]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c909]
    ld e, a
    ld a, [$c90a]
    ld d, a
    call Call_013_76c4

jr_013_7617:
    push hl
    push bc
    call Call_013_777f
    pop bc
    pop hl
    inc hl
    dec b
    jr nz, jr_013_7617

    ld hl, $772b
    ld a, [$c908]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, [hl]
    ld a, [$c909]
    ld l, a
    ld a, [$c90a]
    ld h, a

jr_013_7637:
    push hl
    push bc
    call Call_013_777f
    pop bc
    pop hl
    inc hl
    dec b
    jr nz, jr_013_7637

    push hl
    ld hl, $7734
    ld a, [$c908]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, [hl]
    pop hl
    dec hl

jr_013_7652:
    push hl
    push bc
    call Call_013_777f
    pop bc
    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_013_7652

    ld hl, $7734
    ld a, [$c908]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, [hl]
    ld a, [$c909]
    ld l, a
    ld a, [$c90a]
    ld h, a

jr_013_7679:
    push hl
    push bc
    call Call_013_777f
    pop bc
    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_013_7679

    ld a, [$c909]
    ld l, a
    ld a, [$c90a]
    ld h, a
    ld a, l
    add $21
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ld [$c909], a
    ld a, h
    ld [$c90a], a
    ld hl, $c908
    inc [hl]
    ld hl, $c907
    inc [hl]
    ld a, [$c908]
    cp $09
    ret nz

    ld hl, $c907
    inc [hl]
    ret


    ld hl, $c907
    dec [hl]
    ret


    call Call_013_779f
    ret nz

    ld hl, $c905
    inc [hl]
    ret


Call_013_76c4:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $02
    ld d, a
    ld l, e
    ld h, d
    ret


    ld a, e
    add $e0
    ld e, a
    ld a, d
    adc $01
    ld d, a
    ld l, e
    ld h, d
    ret


    ld a, e
    add $a0
    ld e, a
    ld a, d
    adc $01
    ld d, a
    ld l, e
    ld h, d
    ret


    ld a, e
    add $60
    ld e, a
    ld a, d
    adc $01
    ld d, a
    ld l, e
    ld h, d
    ret


    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $01
    ld d, a
    ld l, e
    ld h, d
    ret


    ld a, e
    add $e0
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld l, e
    ld h, d
    ret


    ld a, e
    add $a0
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld l, e
    ld h, d
    ret


    ld a, e
    add $60
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld l, e
    ld h, d
    ret


    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld l, e
    ld h, d
    ret


    inc d
    ld [de], a
    db $10
    ld c, $0c
    ld a, [bc]
    ld [$0406], sp
    ld [de], a
    db $10
    ld c, $0c
    ld a, [bc]
    ld [$0406], sp
    ld [bc], a
    ret z

    db $76
    db $d3
    db $76
    sbc $76
    jp hl


    db $76
    db $f4
    db $76
    rst $38
    db $76
    ld a, [bc]
    ld [hl], a
    dec d
    ld [hl], a
    jr nz, jr_013_77c6

Call_013_774f:
    ld a, [hl]
    add $04
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl-], a
    ld a, [hl]
    and $f8
    ld [hl], a
    ret


Call_013_775c:
    push af
    ld a, l
    and $e0
    push af
    ld a, l
    inc a
    and $1f
    ld l, a
    pop af
    or l
    ld l, a
    pop af
    ret


Call_013_776b:
    ld a, [$c90b]
    add l
    ld l, a
    ld a, [$c90c]
    adc h
    and $03
    ld h, a
    ld a, [$c90c]
    and $fc
    or h
    ld h, a
    ret


Call_013_777f:
    call Call_013_7788
    ld a, $e6
    call Call_000_1aad
    ret


Call_013_7788:
    push bc
    ld b, l
    ld a, l
    and $e0
    ld l, a
    call Call_013_776b
    ld a, b
    and $1f
    jr z, jr_013_779d

    ld b, a

jr_013_7797:
    call Call_013_775c
    dec b
    jr nz, jr_013_7797

jr_013_779d:
    pop bc
    ret


Call_013_779f:
    ld a, [$ddb4]
    ld hl, $ddce
    and [hl]
    ld hl, $dde8
    and [hl]
    ld hl, $de02
    and [hl]
    cp $ff
    jr z, jr_013_77b6

    ld a, $01
    or a
    ret


jr_013_77b6:
    ld a, $02
    call Call_000_1ae1
    xor a
    or a
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_013_77c6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_013_7802:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
