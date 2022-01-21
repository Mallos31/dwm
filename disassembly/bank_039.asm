; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $039", ROMX[$4000], BANK[$39]

    add hl, sp
    sub c
    ld b, b
    db $76
    ld b, c
    ld c, b
    ld b, d
    inc h
    ld b, e
    dec de
    ld b, h
    call nz, $9f44
    ld b, l
    add a
    ld b, [hl]
    ld sp, $ec47
    ld b, a
    db $e3
    ld c, b
    jp $a849


    ld c, d
    adc b
    ld c, e
    inc sp
    ld c, h
    and $4c
    and [hl]
    ld c, l
    sbc d
    ld c, [hl]
    ld d, e
    ld c, a
    ld c, e
    ld d, b
    or $50
    db $d3
    ld d, c
    call z, $b252
    ld d, e
    and [hl]
    ld d, h
    ld h, c
    ld d, l
    inc e
    ld d, [hl]
    cp h
    ld d, [hl]
    sub b
    ld d, a
    add d
    ld e, b
    ld e, b
    ld e, c
    rra
    ld e, d
    call nc, $b45a
    ld e, e
    adc c
    ld e, h
    db $76
    ld e, l
    ld b, l
    ld e, [hl]
    jr jr_039_40ac

    db $e3
    ld e, a
    cp a
    ld h, b
    ld a, b
    ld h, c
    ld l, [hl]
    ld h, d
    ld h, c
    ld h, e
    inc e
    ld h, h
    ld [$e865], sp
    ld h, l
    or c
    ld h, [hl]
    db $76
    ld h, a
    ld b, b
    ld l, b
    db $10
    ld l, c
    ld de, $ec6a
    ld l, d
    sbc d
    ld l, e
    add a
    ld l, h
    add l
    ld l, l
    ld h, [hl]
    ld l, [hl]
    ld h, h
    ld l, a
    ld c, l
    ld [hl], b
    jr z, jr_039_40e8

    db $10
    ld [hl], d
    db $ec
    ld [hl], d
    db $ec
    ld [hl], e
    rst $20
    ld [hl], h
    ret c

    ld [hl], l
    ret nc

    db $76
    xor [hl]
    ld [hl], a
    and d
    ld a, b
    and c
    ld a, c
    ld h, [hl]
    ld a, d
    ld h, a
    ld a, e
    ld c, b
    ld a, h
    dec l
    ld a, l
    nop
    ld bc, $020d
    ld [bc], a
    rra
    rra
    dec bc
    rrca
    db $e4
    rst $20
    sbc d
    rst $38
    ld d, [hl]
    ld a, a
    cpl
    dec sp
    cpl
    inc a
    add b
    add b
    ldh a, [$f0]
    and b
    ldh [rLCDC], a
    ret nz

jr_039_40ac:
    and b
    ldh [$d0], a
    ldh a, [$e8]
    cp b
    db $ec
    ld a, h
    ccf
    jr c, jr_039_4104

    ld a, [hl]
    ld c, e
    ld a, a
    ld b, l
    ld a, a
    inc hl
    ccf
    jr jr_039_40df

    rlca
    rlca
    rrca
    rrca
    ld a, [c]
    ld a, $6a
    cp $be
    cp $7e
    ld [c], a
    db $e4
    sbc h
    ret z

    cp b
    ldh a, [$f0]
    nop
    nop
    rlca
    rlca
    ld b, $07
    ld [bc], a
    inc bc
    ld a, c
    ld a, c

Call_039_40dc:
    ld b, a
    ld a, a
    ld [hl+], a

jr_039_40df:
    ccf
    inc de
    rra
    add hl, bc
    rrca
    ld [hl], b
    ld [hl], b
    cp h
    db $fc

jr_039_40e8:
    add sp, -$08
    sub b
    ldh a, [$50]
    ldh a, [$e8]
    ld hl, sp-$08
    cp b
    db $dc, $e4, $09
    rrca
    pop de
    rst $18
    or b
    rst $38
    ld [hl], b
    ld a, a
    sbc b
    rst $38
    rst $20
    rst $20
    inc c
    dec bc
    rra
    rra

jr_039_4104:
    ld l, [hl]
    ld a, [c]
    inc e
    db $fc
    add a
    rst $38
    ld a, a
    db $fd
    dec b
    rst $38
    ld a, [bc]
    cp $fc
    db $fc
    add b
    add b
    dec c
    ld b, b
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    rlca
    add hl, bc
    rrca
    inc e
    rra
    inc hl
    ccf
    call $88ff
    rst $38
    ld [hl], b
    ld a, a
    ld l, b
    ld a, a
    sub h
    rst $30
    db $e3
    db $e3
    inc bc

jr_039_4130:
    inc bc
    dec c
    ld [hl], b
    nop
    sbc d
    cp $7e
    and $74
    call z, $f888
    ldh a, [$f0]
    ret nz

    ret nz

    dec c
    nop
    inc b
    sbc b
    rst $38
    ld c, b
    ld a, a
    inc h
    ccf
    daa
    ccf
    dec c
    db $10
    inc b
    jr nz, jr_039_4130

    db $10
    ldh a, [$08]
    ld hl, sp-$14
    db $fc
    jr nc, @+$41

    ld b, b
    ld a, a
    dec c
    jp nc, Jump_000_2100

    ccf
    rra
    ld e, $06
    dec b
    rrca
    rrca
    ld [de], a
    cp $0a
    cp $06
    cp $07
    db $fd
    ld c, $fa
    sub h
    db $fc
    ld hl, sp-$08
    dec c
    and b
    cp $00
    ld bc, $3c02
    inc a
    ld d, [hl]
    ld l, d
    cp c
    rst $38
    ld c, a
    ld c, l
    inc c
    rrca
    ld d, a
    ld e, l
    or b
    rst $38
    adc h
    rst $38
    xor d
    rst $38
    cp l
    di
    rst $18
    ret c

    sub a
    sbc h
    ld d, $1d
    inc hl
    ccf
    ld a, [hl+]
    ld a, $1c
    inc e
    nop
    nop
    rra
    rra
    ld l, d
    ld [hl], a
    sbc l
    rst $38
    ld l, e
    ld l, a
    inc de
    rra
    ld [hl], $3f
    db $dd
    rst $38
    xor [hl]
    rst $38
    or d
    rst $38
    cp a
    ld sp, hl
    rst $10
    call c, $5d56
    ld [bc], a
    ld a, [de]
    ld [bc], a
    inc bc
    inc bc
    dec b
    ld b, $0b
    rrca
    dec b
    dec b
    db $fd
    db $fd
    ld b, e
    ld a, [hl]
    scf
    ld a, $12
    rra
    add b
    add b
    ld b, b
    ret nz

    ldh [$60], a
    ret nc

jr_039_41cd:
    ldh a, [$e8]
    jr jr_039_41cd

    ld l, h
    add e
    rst $38
    sub c
    rst $38
    dec bc
    rrca
    rst $38
    db $fc
    adc a
    ldh a, [$7f]
    ld a, b
    add hl, bc
    rrca
    dec de
    rra
    dec h
    ccf
    ccf
    ccf
    call $fbff
    ei
    cp $0e
    ld sp, hl
    rra
    jp $f43f


    db $fc
    inc d
    inc e
    ld [$0208], sp
    ld b, b
    inc b
    ld bc, $2301
    ld [hl+], a
    ld e, e
    ld a, d
    ld b, [hl]
    ld a, a
    ld d, a
    ld a, a
    ld e, a
    ld a, h
    ld a, a
    ld [hl], b
    ld c, a
    ld [hl], b
    sbc c
    rst $38
    ei
    rst $38
    ld [bc], a
    ld l, h
    nop
    ld [bc], a
    cp $f0
    ld l, d
    ld d, [hl]
    cp a
    ei
    ld c, l
    ld c, [hl]
    ld [hl], a
    ld a, b
    sbc e
    db $fc
    add a
    cp $a3
    db $fc
    or [hl]
    ld sp, hl
    sbc $db
    sub h
    sbc a
    inc d
    rra
    ld [bc], a
    ld a, [de]
    ld [bc], a
    ld [bc], a
    and d
    inc b
    rrca
    ld [$1817], sp
    inc sp
    inc a
    call $83fe
    db $fc
    and [hl]
    ld sp, hl
    cp [hl]
    ei
    call nc, Call_039_54df
    ld e, a
    ld [bc], a
    ld a, [de]
    inc b
    ld [bc], a
    pop hl
    rrca
    dec bc
    nop
    ld bc, $0305
    inc bc
    inc b
    rlca
    ld e, $1b
    ld [hl+], a
    dec a
    inc e
    rra
    cpl
    dec sp
    cpl
    inc a
    ld b, a
    ld a, a
    ret nz

    ret nz

jr_039_425d:
    jr nz, @-$1e

    ld a, b
    ret c

    ld b, h
    cp h
    jr c, jr_039_425d

    db $f4
    call c, $3cf4
    ld [$58fe], a
    ld a, a
    ld l, h
    ld [hl], a
    ld [hl], $3b
    ccf
    dec a
    ld a, a
    ld c, l
    rst $38
    or e
    xor $ae
    ret nz

    ret nz

    ld e, $fe
    ld a, $e6
    inc a
    call c, $d0f0
    ld a, b
    ld e, b
    ld a, $2e
    rra
    ld de, $0e0e
    nop
    nop
    ld bc, $0601
    rlca
    ret z

    rst $08
    or a
    rst $38
    ld c, d
    ld a, e
    or h
    rst $30
    call nz, $f0c7
    ldh a, [$08]
    ld hl, sp+$36
    sbc $d1
    rst $28
    ccf
    rst $38
    ld a, $f2
    rra
    rst $38
    ld bc, $08ff
    rrca
    dec b
    ld h, b
    nop
    ld b, $07
    ld bc, $0501
    ld a, [$e6f2]
    cp $72
    sbc $3a
    xor $3e
    xor $ff
    db $ed
    ccf
    dec l
    ld e, $12
    inc c
    inc c
    dec b
    ld b, b
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    rlca
    rlca
    ld [hl], $37
    inc l
    ccf
    inc d
    rra
    jr z, jr_039_4317

    jr c, jr_039_4319

    dec b
    ld h, h
    ld [bc], a
    dec b
    ld l, b
    ld [bc], a
    add $fe
    ld [c], a
    cp [hl]
    ld [c], a
    cp [hl]
    db $ed
    cp l
    rst $30
    ld [hl], a
    rst $38
    ld a, c
    cp $86
    ld a, b
    ld a, b
    dec b
    nop
    nop
    add hl, bc
    rrca
    ld [de], a
    rra
    ld [de], a
    rra
    ld [hl+], a
    ccf
    ld b, c
    ld a, a
    ld b, c
    dec b
    rrca
    ld bc, $f050
    adc b
    ld hl, sp-$74
    db $fc
    add h
    db $fc
    ld b, d
    cp $ba
    cp $41
    ld a, a
    ld h, d
    ld a, a
    inc sp
    ccf
    dec b
    ld h, $06
    ld d, d

jr_039_4317:
    cp $66

jr_039_4319:
    cp $8c
    db $fc
    ldh a, [$f0]
    dec b
    jr c, @+$08

    dec b
    pop af
    ld a, [bc]
    nop
    ld bc, $0101
    rst $38
    ldh a, [rTAC]
    rlca
    rrca
    ld [$101f], sp
    rra
    dec de
    rra
    inc e
    rrca
    ld [$0407], sp
    inc bc
    inc bc
    dec e
    dec e
    inc sp
    ccf
    ld b, a
    ld a, a
    cp b
    rst $38
    sub $df
    add hl, sp
    add hl, sp
    pop hl
    ld hl, $c3c3
    sbc l
    sbc a
    and d
    cp [hl]
    call z, $8afc
    cp $97
    rst $38
    ld hl, sp-$08
    inc bc
    inc bc
    rlca
    inc b
    rrca
    dec bc
    rra
    rra
    rra
    rla
    rra
    rla
    rrca
    dec bc
    rrca
    ld [$c5c5], sp
    ld [$f02f], a
    rst $18
    ld [c], a
    rst $38
    adc h
    rst $38
    ld [c], a
    rst $38
    db $fc
    db $dc, $f0, $10
    nop
    nop
    db $10
    db $10
    jr jr_039_4394

    rra
    rla
    rst $18
    call nc, $f9bf
    ld e, a
    ld a, e
    ld e, a
    ld a, h
    ld a, [bc]
    ld a, [bc]
    ld h, h
    ld l, [hl]
    db $e4
    rst $28
    pop hl
    cpl
    db $e3
    rst $28
    sub $de
    ld hl, sp-$08

jr_039_4394:
    ldh a, [rNR10]
    cpl
    jr c, jr_039_43d0

    inc a
    inc de
    rra
    ei
    rst $38
    ld c, a
    ld a, a
    ld h, $3f
    ld h, $3f
    dec de
    dec de
    ldh a, [$30]
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    ld [hl-], a
    ld a, [c]
    ld c, $fe
    ld [hl-], a
    cp $cc
    call z, $ff01
    ldh a, [$0e]
    ld c, $1f
    inc de
    rra
    inc d
    rst $38
    ld hl, sp+$5f
    ld a, d
    ld c, a
    ld a, c
    ld bc, $f0ff
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc e

jr_039_43d0:
    db $fc
    ld h, h
    ld hl, sp-$78
    ld bc, $0700
    db $10
    rra
    add hl, de
    ld c, $0f
    and c
    and c
    ld d, e
    ld a, [c]
    rrca
    db $fc
    ld e, a
    ldh a, [$3f]
    ldh a, [$5f]
    ld hl, sp+$3f
    dec a
    ld c, $0b
    add b

jr_039_43ed:
    add b
    ret nz

    ld b, b
    ldh a, [$30]
    ld hl, sp+$08
    ld bc, $00d6
    ldh a, [$b0]
    ld [hl], b
    ret nc

    add l
    add a
    jp $bfc3


    rst $38
    ld b, l
    ld a, l
    inc sp
    ccf
    ld d, c
    ld a, a
    jp hl


    rst $38
    rra
    rra
    jr nz, jr_039_43ed

    ldh [$e0], a
    cp b
    cp b
    call z, $e2fc
    cp $1d
    rst $38
    ld l, e
    ei
    sbc h
    sbc h
    nop
    ld bc, $0901
    add hl, bc
    ld d, $1f
    add hl, de
    rra
    ld [hl+], a
    ccf
    rra
    dec e
    db $76
    ld a, a
    db $fc
    sbc a
    db $fd
    xor a
    cp $bf
    ld d, h
    ld e, a
    ld [de], a
    rra
    ld hl, $263f
    ccf
    ld a, [de]
    rra
    dec de
    rla
    inc e
    inc e
    ld a, a
    db $fd
    ld a, [hl+]
    ld a, [$f848]
    add h
    db $fc
    inc b
    db $fc
    ld c, b
    ld hl, sp-$50
    or b
    ld bc, $f6fe
    inc e
    rra
    dec bc
    rrca
    rla
    inc e
    rla
    ld e, $90
    sub b
    ld l, b
    ld hl, sp-$68
    ld hl, sp+$64
    db $fc
    ld a, b
    ret c

    ld l, [hl]
    cp $8f
    ei
    cp a
    push af
    inc de
    ld e, $11
    rra
    db $10
    rra
    db $10
    rra
    inc h
    ccf
    ld a, [hl+]
    ccf
    dec de
    dec e
    rrca
    rrca
    rst $18
    db $fd
    adc d
    ld a, [$f848]
    inc [hl]
    db $fc
    inc b
    db $fc
    ld a, b
    ld hl, sp-$28
    add sp, $38
    jr c, jr_039_4489

    ld d, b

jr_039_4489:
    inc b
    ld de, $221f
    ccf
    ld [hl+], a
    ccf
    dec e
    dec e
    ld bc, $0660
    sbc b
    ld hl, sp-$20
    ld h, b
    ret nz

    ret nz

    ld bc, $0400
    inc a
    ccf
    ld h, h
    ld a, a
    ld [c], a
    cp a
    pop de
    cp a
    ldh a, [$bf]
    ld d, b
    ld e, a
    db $10
    rra
    jr nz, jr_039_44ed

    inc h
    ld bc, $0319
    rrca
    db $fd
    ld a, [bc]
    ld a, [$f808]
    inc b
    db $fc
    inc h
    db $fc
    ld c, b
    ld hl, sp-$10
    ldh a, [rSB]
    and b
    rst $38
    cpl
    nop
    ld bc, $2002
    jr nz, jr_039_4532

    ld l, b
    ld e, l
    ld a, l
    sbc [hl]
    rst $38
    adc b
    rst $38
    db $eb
    db $fd
    sbc e
    sbc h
    add hl, bc
    ld c, $04
    inc b
    add [hl]
    add [hl]
    ld e, d
    sbc $79
    rst $38
    ld de, $d7ff
    cp a
    reti


    add hl, sp
    sub b
    ld [hl], b
    db $10
    rra
    ld [de], a
    rra
    ld [de], a
    rra

jr_039_44ed:
    dec d
    rra
    dec c
    rrca
    dec bc
    dec bc
    ld bc, $0001
    nop
    ld [$08f8], sp
    ld hl, sp+$48
    ld hl, sp+$50
    ldh a, [$50]
    ldh a, [$a0]
    and b
    add b
    add b
    ld [bc], a
    db $fc
    ldh a, [rNR23]
    jr jr_039_4528

    dec e
    ld l, $3f
    jr z, @+$41

    dec hl
    dec a
    dec sp
    inc a
    add hl, hl

jr_039_4515:
    ld l, $00
    nop
    adc h
    adc h
    ld e, h
    call c, $fc74
    inc d
    db $fc
    call nc, $dcbc
    inc a
    sub h
    ld [hl], h
    jr nz, jr_039_4548

jr_039_4528:
    ld [hl], c
    ld [hl], c
    ld e, d
    ld a, e
    adc [hl]
    rst $38
    add h
    rst $38
    ld [c], a
    rst $38

jr_039_4532:
    sbc b
    sbc a
    inc c
    rrca
    ld [bc], a
    db $fc
    ldh a, [$a0]
    and b
    ld [hl], b
    ldh a, [rNR10]
    ldh a, [rSVBK]
    or b
    ld [hl], b
    sub b
    jr nc, jr_039_4515

    nop
    nop
    add hl, de

jr_039_4548:
    add hl, de
    ld d, $1f
    ld d, $02
    ld hl, $1801
    rra
    inc e
    rra
    ld [$0a0f], sp
    rrca
    ld a, [bc]
    rrca
    dec b
    rlca
    dec b
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc l
    rrca
    ld bc, $2020
    ld h, c
    ld h, c
    ld [bc], a
    ld h, h
    ld b, $08
    rrca
    inc b
    inc b
    ld d, $16
    cp d
    cp [hl]
    ld [hl], c
    rst $38
    ld hl, $4fff
    rst $38
    add hl, de
    ld sp, hl
    db $10
    ldh a, [rP1]
    nop
    ld de, $1a11
    dec de
    ld l, $3f
    inc h
    ccf
    ld [hl+], a
    ccf
    jr c, @+$41

    inc l
    cpl
    nop
    nop
    ld [$a808], sp
    xor b
    ld [hl], h
    db $fc
    inc h
    db $fc
    ld b, h
    db $fc
    inc e
    db $fc
    inc [hl]
    db $f4
    ld [bc], a
    and b
    db $fc
    nop
    ld bc, $0401
    inc b
    dec b
    dec b
    ld h, d
    ld h, a
    sub a
    rst $30
    sbc h
    rst $38
    or d
    rst $38
    ld b, a
    ld a, a
    daa
    dec a
    xor h
    xor h
    ld d, d
    ld e, [hl]
    sub d
    sbc $ca
    adc $7a
    cp $8e
    cp $de
    cp $c4
    ld a, h
    ld hl, sp-$01
    inc h
    dec sp
    db $eb
    db $fc
    jr nc, jr_039_4609

    ld e, h
    ld e, a
    ld [hl+], a
    ccf
    inc hl
    ccf
    ld a, $3e
    rra
    rst $38
    ld b, h
    cp h
    sub h
    ld a, h
    inc a
    db $fc
    ld b, d
    cp $7c
    db $fc
    ret nz

    ret nz

    nop
    nop
    jr @+$1a

    ld h, $3e
    ld b, l
    ld a, l
    ld c, a
    ld a, a
    inc l
    ccf
    ld hl, $393f
    ccf
    rla
    rra
    sub b
    sub b
    ld d, b
    ld d, b
    ld h, b
    ld h, b
    ldh [$e0], a
    or b
    ldh a, [rNR23]
    ld hl, sp+$78
    ld hl, sp+$3c
    db $ec
    ccf
    ccf
    inc de
    rra
    dec e
    rra
    add hl, sp

jr_039_4609:
    ccf
    inc c
    rrca
    inc de
    rra
    ld e, $1e
    nop
    nop
    inc a
    db $fc
    ld b, h
    cp h
    inc a
    call nz, $f808
    or b
    ldh a, [$c8]
    ld hl, sp+$44
    ld a, h
    ld a, h
    ld a, h
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld sp, $4b31
    ld a, e
    ld c, h
    ld a, a
    ld c, c
    ld a, a
    dec a
    ccf
    inc de
    ld bc, $0b4f
    cp h
    ld bc, $075f
    dec bc
    rrca
    ld de, $1f1f
    rra
    inc a
    db $fc
    call nz, Call_039_7301
    ld bc, $fcbc
    db $fc
    db $fc
    ld bc, $f4fc
    ld [bc], a
    rlca
    ld [hl], a
    ld [hl], a
    ld c, l
    ld a, a
    ld d, l
    ld a, a
    ld a, c
    ld a, a
    add hl, hl
    ccf
    or [hl]
    or [hl]
    ld c, c
    ld c, a
    adc c
    rst $08
    push bc
    rst $00
    ld a, l
    rst $38
    ld c, d
    cp $3e
    cp $24
    db $fc
    ld sp, hl
    rst $38
    add hl, hl
    ccf
    jp hl


    rst $38
    dec [hl]
    ccf
    ld e, l
    ld e, a
    ccf
    ccf
    inc bc
    inc bc
    nop
    nop
    ccf
    rst $38
    inc h
    db $fc
    scf
    rst $38
    inc l
    db $fc
    ld a, d
    ld a, [$fc44]
    call nz, $78fc
    ld a, b
    nop
    ld bc, $0005
    nop
    ld bc, $0101
    ld bc, $0707
    add hl, de
    rra
    inc hl
    ccf
    jr nz, jr_039_46d7

    ld e, e
    ld a, l
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    ldh [$e0], a
    sbc b
    ld hl, sp-$3c
    db $fc
    inc b
    db $fc
    jp c, Jump_000_05be

    nop
    ld a, [bc]
    ld b, b
    ld a, a
    dec b
    db $10
    ld a, [bc]
    ld [bc], a
    cp $53
    ld a, h
    ld b, b
    ld a, a
    ld e, h
    ld a, e
    cpl
    ld a, [hl-]
    daa
    ccf
    inc de
    ld e, $08
    rrca
    rlca
    rlca
    ld e, b
    ld a, a
    ld d, e
    ld a, a
    ld b, b
    ld a, a
    inc l
    ccf
    inc hl
    ccf
    db $10
    rra
    dec b
    ld c, h
    nop
    inc bc
    inc bc
    inc bc
    inc bc

jr_039_46d7:
    dec b
    inc b
    ld b, $46
    ld a, a
    nop
    nop
    add b
    add b
    dec b
    inc d
    ld b, $1e
    xor $44
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    ld a, a
    jr nz, jr_039_472c

    jr nz, jr_039_46f4

    ld e, c
    inc bc
    ld c, $f2
    ld [bc], a

jr_039_46f4:
    cp $e2
    sbc $fc
    call nc, $fc7c
    jr c, @-$16

    db $10
    ldh a, [$e0]
    ldh [rTIMA], a
    jr nz, @+$0e

    dec b
    xor [hl]
    nop
    dec b
    add h
    ld [$fe1e], sp
    ld [bc], a
    cp $82
    cp $7c
    db $fc
    inc b
    db $fc
    ld [$05f8], sp
    sbc h
    ld [$1f18], sp

jr_039_471b:
    dec b
    add [hl]
    nop
    dec b
    ld l, $06
    jr jr_039_471b

    inc b
    dec b
    dec sp
    ld bc, $ae05
    ld [bc], a
    dec b
    add [hl]

jr_039_472c:
    ld [bc], a
    add hl, bc
    rrca
    rlca
    rlca
    nop
    ld bc, $0101
    rst $38
    ldh a, [rTAC]
    rlca
    add hl, bc
    ld c, $38
    scf
    ld [hl], d
    ld c, l
    ld e, a
    ld a, a
    cpl
    add hl, sp
    rla
    dec de
    ld a, a
    ld [hl], l
    rst $38
    sub e
    ld a, [hl]
    ld h, e
    ld l, $33
    dec a
    ccf

jr_039_474f:
    ccf
    inc hl
    ld e, $1e
    ret nc

    or b
    ld hl, sp+$58
    db $fc
    sub h
    cp $8a
    db $ec
    sbc h
    jr nc, jr_039_474f

    ret nc

    ldh a, [$60]
    ld h, b
    ld bc, $0200
    ld c, $09
    jr nc, jr_039_47a9

    ld [hl], c
    ld c, [hl]
    ld h, h
    ld e, e
    ccf
    ccf
    rla
    jr @+$81

    ld [hl], b
    rst $38
    sub b
    ld a, a
    ld h, b
    cpl
    jr nc, jr_039_4799

jr_039_477b:
    rra
    dec e
    inc de
    ld c, $0e
    ret nc

jr_039_4781:
    jr nc, jr_039_477b

    jr jr_039_4781

    inc d
    cp $0a
    db $ec
    inc e
    ld bc, $042a
    inc bc
    inc bc
    rlca
    inc b
    jr @+$21

    add hl, sp
    ld h, $20
    ccf
    rla
    rra

jr_039_4799:
    dec bc
    inc c
    nop
    nop
    ldh [$e0], a
    sub b
    ld [hl], b
    inc e
    db $ec
    ld c, $f2
    ld a, d
    cp $f4
    sbc h

jr_039_47a9:
    ld hl, sp+$18
    rrca
    ld [$0a0f], sp
    rra
    ld de, $1817
    inc c
    rrca
    dec bc
    rrca
    rlca
    rlca
    nop
    nop
    ld hl, sp+$28
    db $f4
    sbc h
    ld a, [$fc4e]
    call z, $f838
    call c, $38e4
    jr c, jr_039_47ca

jr_039_47ca:
    nop
    rrca
    ld [$090f], sp
    rra
    ld [de], a
    rra
    ld a, [de]
    ccf
    daa
    ld bc, $004c
    nop
    nop
    ld hl, sp-$58
    db $f4
    inc e
    ld a, [$fc8e]
    adc h
    inc e
    db $fc
    ld a, [c]
    cp $1c
    inc e
    ld bc, $ffa0
    cpl
    nop
    ld bc, $0001
    nop
    ld a, $3e
    ld hl, $203f
    ccf
    ld de, $3e1f
    ccf
    ld a, e
    ld c, [hl]
    ld a, d
    ld c, a
    ld bc, $0000
    ld b, d
    ld a, [hl]
    add d
    cp $c4
    db $fc
    cp b
    ld a, b
    db $e4
    cp h
    and h
    ld a, h
    inc sp
    ccf
    inc h
    ccf
    ld a, $3f
    ld c, $0b
    rla
    rra
    ld [de], a
    ld e, $1c
    inc e
    nop
    nop
    ld [c], a
    cp $32
    cp $1e
    cp $38
    add sp, $78
    ld hl, sp-$0c
    db $ec
    ld l, [hl]
    ld d, d
    ld a, [hl]
    ld a, [hl]
    rlca
    rlca
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0141
    inc b
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp-$74
    db $fc
    or $fa
    sbc $f6
    sub [hl]
    ld a, [$0707]
    ld b, $07
    rrca
    dec bc
    rra
    db $10
    dec e
    ld [de], a
    rra
    inc de
    ld e, $1e
    nop
    nop
    xor [hl]
    cp $62
    cp $e2
    cp [hl]
    db $e4
    inc a
    cp b
    ld a, b
    ld hl, sp-$38
    ld a, h
    ld b, h
    ld a, h
    ld a, h
    ld bc, $0440
    rrca
    rrca
    rra
    inc de
    rra
    ld de, $131f
    adc h
    adc h
    ld [hl], h
    db $fc
    inc d
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    or $fa
    sbc [hl]
    or $16
    ld a, [$0f0e]
    ld b, $07
    rlca
    rlca
    dec bc
    ld c, $09
    rrca
    rrca
    rrca
    ld bc, $f0fe
    ld l, $01
    ld [hl], c
    ld bc, $1cf4
    ld hl, sp+$18
    db $fc
    add h
    db $fc
    add h
    db $fc
    db $fc
    nop
    nop
    ld a, h
    ld a, h
    ld b, d
    ld a, [hl]
    ld b, c
    ld a, a
    inc hl
    ccf
    ld e, $1f
    dec h
    ld a, $3f
    ccf
    ld bc, $00c0
    add h
    db $fc
    inc b
    db $fc
    adc b
    ld hl, sp+$7c
    db $fc
    cp [hl]
    ld [hl], d
    xor $f2
    ld a, [hl]
    ld c, l
    ld [hl], l
    ld c, d
    ld a, d
    ld a, l
    ld d, $19
    dec d
    ld a, [de]
    dec sp
    daa
    ld a, $22
    ld a, $3e
    cp h
    ld c, h
    call nc, $fc3c
    inc a
    db $10
    ldh a, [$b8]
    ld c, b
    ld hl, sp-$38
    ld a, b
    ld a, b
    nop
    nop
    nop
    ld bc, $0700
    rlca
    dec de
    inc e
    inc l
    inc sp
    ld d, e
    ld l, h
    ld l, h
    ld [hl], e
    ld e, e
    ld a, h
    ld d, a
    ld a, a
    ld l, h
    ld a, a
    ld l, [hl]
    ld a, e
    ld b, [hl]
    ld a, a
    sub e
    rst $38
    adc a
    cp $b7
    rst $38
    ld d, b
    ld e, a
    ld d, $1f
    dec c
    dec c
    db $76
    sbc $6a
    cp $c9
    rst $38
    push af
    ld a, a
    and $fe
    ld [hl-], a
    cp $5a
    sbc $84
    add h
    nop
    stop
    ld d, e
    ld a, a
    nop
    ld d, $00
    ld h, d
    ld a, a
    daa
    ccf
    add hl, sp
    add hl, sp
    db $76
    sbc $62
    cp $ca
    cp $f5
    ld a, a
    rst $20
    rst $38
    inc h
    db $fc
    inc [hl]
    db $fc
    ret z

    ret z

    nop
    nop
    ld a, [bc]
    ld c, b
    ld a, a
    ret nz

    ret nz

    or b
    ld [hl], b
    ld l, b
    sbc b
    sub h
    ld l, h
    ld l, h
    sbc h
    or h
    ld a, h
    call nz, $e6fc
    cp $48
    ld a, a
    ld h, b
    ld a, a
    adc b
    rst $38
    sub b
    rst $38
    or d
    rst $38
    ld [hl], e
    ld a, a
    dec d
    dec e
    add hl, de
    add hl, de
    ld [hl], e
    db $dd
    scf
    rst $38
    adc [hl]
    cp $79
    rst $38
    dec b
    rst $38
    daa
    rst $38
    ld l, b
    ld hl, sp-$48
    cp b
    nop
    ld [hl], b
    nop
    ld c, b
    ld a, a
    adc b
    rst $38
    or d
    rst $38
    and $ff
    daa
    ccf
    jr c, jr_039_49b0

    nop
    add b
    nop
    adc h
    db $fc
    ld a, d
    cp $06
    cp $24
    db $fc
    cp h
    db $fc
    ldh [$e0], a
    nop
    nop
    ld a, [bc]
    ld b, b
    ld a, a
    ld b, b
    nop
    sub c
    ld bc, $ff91
    sub d
    nop
    ld a, c
    ld bc, $1818
    ld [bc], a
    cp $0a
    cp $45
    rst $38
    inc hl
    rst $38
    ld a, [hl-]
    cp $2a
    xor $24
    db $e4
    ret nz

    ret nz

    nop
    ret nz

    ld [bc], a
    adc c
    rst $38
    or d
    rst $38
    ld h, [hl]

jr_039_49b0:
    nop
    dec sp
    ld bc, $fe02
    ld [bc], a
    cp $09
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    db $76
    cp $5c
    call c, $8080
    nop
    ld bc, $0001
    nop
    dec c
    dec c
    inc de
    rra
    ld l, c
    ld a, a
    ld d, l
    ld [hl], a
    dec h
    daa

jr_039_49d2:
    ld h, l
    ld h, [hl]
    rst $38
    sbc h
    ret nz

    ret nz

    jr c, jr_039_49d2

    ld b, h
    db $fc
    sbc d
    cp $25
    rst $20
    dec sp
    ei
    and h
    ld h, h
    ld a, [$fd3a]
    sub d
    ld a, a
    ld d, d
    ccf
    inc h
    dec [hl]
    cpl
    cpl
    scf
    ld a, [hl-]
    dec a
    ld a, a
    ld b, a
    ld a, h
    ld a, h
    cp h
    ld c, h
    cp $4a
    cp $26
    xor h
    db $f4
    db $f4
    db $ec
    xor h
    ld e, h
    ldh a, [$f0]
    nop
    nop
    inc bc
    inc bc
    inc e
    rra
    ld [hl+], a
    ccf
    ld e, c
    ld a, a
    and h
    rst $20
    call c, Call_039_74df
    ld [hl], a
    ld a, h
    ld c, a
    nop
    nop
    ldh [$e0], a
    sub b
    ldh a, [rBCPS]
    ld hl, sp-$2c
    call c, $8c8c
    add b
    add b
    ret nz

    ret nz

    ld a, a
    ld c, b
    ccf
    inc [hl]
    ccf
    add hl, hl
    ccf
    ld hl, $322d
    ld [hl], $39
    rrca
    rrca
    nop
    nop
    ld h, b
    and b
    ldh [$a0], a
    ldh a, [rNR10]
    or b
    ldh a, [$f0]
    ldh a, [$f0]
    ld [hl], b
    ld hl, sp-$78
    ld a, b
    ld a, b
    ld bc, $0840
    inc h
    daa
    inc e
    rra
    nop
    nop
    add b
    add b
    ldh [$e0], a
    db $10
    ldh a, [$d0]
    ldh a, [$a8]
    cp b
    sbc h
    sbc h
    ret nz

    ret nz

    ccf
    jr c, jr_039_4adf

    ld c, b
    ld a, a
    ld c, c
    ccf
    ld sp, $322d
    ld a, $3d
    ccf
    inc hl
    ld a, $3e
    ld bc, $0870
    ldh [$e0], a
    ld bc, $0a3e
    dec h
    ld h, $5d
    ld e, [hl]
    nop
    nop
    cp b
    cp b
    call nz, $9afc
    cp $a5
    rst $20
    and e
    db $e3
    and [hl]
    ld h, [hl]
    cp a
    ld a, c
    ccf
    jr nc, jr_039_4b0b

    ld d, b
    ld a, a
    ld h, b
    scf
    jr z, jr_039_4abd

    inc [hl]
    dec [hl]
    ld a, [hl-]
    ld bc, $006c
    rst $38
    add hl, bc
    cp $0a
    db $fc
    inc b
    xor h
    ld d, h
    and h
    ld e, h
    ld a, h
    sbc h
    cp $e2
    ld a, $3e
    nop
    ld bc, $0c00
    inc c
    ld a, [de]
    ld e, $05
    rlca
    inc b
    rlca
    inc b
    rlca
    jr @+$21

    inc l
    ccf
    ld d, a
    ld a, l
    ld [hl], b
    ld [hl], b

jr_039_4abd:
    adc b
    ld hl, sp+$36
    cp $4f
    ret


    ld c, e
    call $fe7e
    ld h, h
    db $fc
    ld a, [$577e]
    ld a, a
    ld d, e
    ld a, [hl]
    ld e, b
    ld a, a

jr_039_4ad1:
    xor b
    rst $28
    add $c7
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    xor d
    xor $a4
    db $e4

jr_039_4adf:
    jr nc, jr_039_4ad1

    sbc b
    ld hl, sp+$68
    ld hl, sp+$54
    call c, $dc54
    sbc b
    sbc b
    ld c, $0e
    ld de, $6c1f
    ld a, a
    ld a, [c]
    sub e
    jp nc, Jump_039_72b3

    ld [hl], e
    inc bc
    inc bc
    inc b
    rlca
    jr nc, jr_039_4b2d

    ld e, b
    ld a, b
    and b
    ldh [rNR41], a
    ldh [$3c], a
    db $fc
    ld [hl], d
    sbc $3d
    rst $38
    inc sp
    db $d3

jr_039_4b0b:
    ld a, e
    ld a, a
    ld b, h
    ld a, a
    inc a
    ccf
    add hl, de
    rra
    ld d, $1f
    ld a, [hl+]
    dec sp
    ld a, [hl+]
    dec sp
    add hl, de

jr_039_4b1a:
    add hl, de
    or b
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld b, b
    ret nz

    ret nz

    ret nz

    nop
    ld b, b

jr_039_4b2d:
    nop
    inc e
    rra
    ld [bc], a
    inc bc
    ld a, $3f
    ld b, d
    ld a, a
    cp b
    rst $38

jr_039_4b38:
    and [hl]
    rst $20
    jr c, jr_039_4b74

jr_039_4b3c:
    ld c, h
    ld a, h
    cp h
    db $f4
    inc a
    db $e4
    jr c, jr_039_4b3c

    ld [hl], b
    ret nc

    jr nc, jr_039_4b38

    jr nc, jr_039_4b1a

    ld b, h
    ld b, a

jr_039_4b4c:
    nop
    ld b, $00
    inc b

jr_039_4b50:
    rlca
    ld [bc], a
    inc bc
    nop
    ld a, [hl+]
    ld [bc], a
    jr c, jr_039_4b50

    ld d, $fe
    add hl, bc
    rst $38
    adc [hl]
    cp $00
    jr c, jr_039_4b6f

    ld a, [hl]
    ld a, a
    daa
    ccf
    ld e, [hl]

jr_039_4b66:
    ld a, a
    nop
    ld d, b
    inc b
    jr nz, jr_039_4b4c

    jr jr_039_4b66

    ld d, h

jr_039_4b6f:
    db $fc
    ld a, [bc]
    cp $54
    ld [hl], a

jr_039_4b74:
    daa
    daa
    inc c
    rrca
    nop
    ld h, [hl]
    ld b, $2a
    cp $8a
    cp $1a
    cp $15
    rst $30
    ld h, e
    db $e3
    nop
    ld a, d
    ld [bc], a
    nop
    ld bc, $0001
    nop
    add hl, de
    add hl, de
    ld d, $1f
    ld d, d
    ld e, a
    xor b
    rst $38
    ld b, e
    ld a, a
    inc h
    ccf
    ld d, $1f
    dec de
    dec e
    rra
    ld a, [de]
    add hl, hl
    ccf
    ld [hl], a
    ld e, a
    ld a, l
    ld e, [hl]
    dec sp
    scf
    rra
    ld de, $0f0f
    call c, $febc
    ld e, d
    sbc [hl]
    ld a, [$fcec]
    ldh a, [rNR10]
    ldh a, [$f0]
    ld hl, sp-$08
    ld a, b
    ld a, b
    ld bc, $f0fe
    rrca
    rrca
    ld d, $1f
    ld a, [hl-]
    ccf
    inc l
    ccf
    db $10
    rra
    jr c, @+$41

    nop
    nop
    ldh [$e0], a
    and b
    ldh [$b0], a
    ldh a, [$88]
    ld hl, sp+$38
    ld hl, sp+$44
    db $fc
    ld h, h
    db $fc
    ld b, [hl]
    ld a, a
    ccf
    add hl, sp
    rrca
    add hl, bc
    ld b, $07
    rlca
    inc b
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    cp b
    ret c

    ld a, h
    and h
    sbc h
    db $fc
    ld a, b
    ld hl, sp-$24
    inc a
    db $ec
    db $f4
    db $fc
    call nz, Call_039_7878
    ld b, b
    ld a, a
    scf
    ccf
    rrca

Call_039_4bff:
    inc c
    rlca
    inc b
    rrca
    rrca
    inc de
    rra
    rla
    add hl, de
    ld bc, $045e
    ldh a, [$f0]
    ld d, b
    or b
    ld bc, $042a
    ld bc, $0002
    ld [hl], d
    ld a, a
    adc b
    rst $38
    ld b, h
    ld a, a
    ld sp, $463f
    ld a, a
    ld h, d
    ld a, a
    jr c, jr_039_4c62

    cpl
    ld bc, $0715
    ld b, [hl]
    cp $1a
    cp $fe
    ld bc, $0b25
    ld bc, $0fc3
    add hl, hl
    nop
    ld bc, $1e01
    ld e, $6f
    ld a, a
    ld h, a
    ld a, a
    ccf
    ccf
    ld [hl], a
    ld a, a
    dec a
    ccf
    ld [$3c0f], sp
    dec sp
    db $fc
    db $fc
    adc $fe
    db $f4
    db $fc
    cp $fe
    cp $fe
    or h
    db $fc
    sbc b
    ld hl, sp+$3c
    call c, Call_039_7d47
    cp a
    rst $38
    rst $08
    call z, $3f34
    ld b, e
    ld a, [hl]
    ld e, c
    ld a, a

jr_039_4c62:
    xor d
    xor $cc
    call z, $bee2
    db $fd
    rst $38
    di
    inc sp
    inc l
    db $fc
    ld [c], a
    ld a, [hl]
    cp d
    cp $aa
    xor $e6
    and $3f
    ccf
    ld [hl], e
    ld a, a
    cpl
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    dec l
    ccf
    add hl, de
    rra
    ld [$780f], sp
    ld a, b
    or $fe
    and $fe
    db $fc
    db $fc
    xor $fe
    cp h
    db $fc
    db $10
    ldh a, [$d0]
    or b
    ld e, $1f
    jr nz, jr_039_4cd9

    ld e, l
    ld a, a
    or c
    rst $38
    ret nz

    rst $38
    ld c, l
    ld a, a
    ld d, l
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], b
    ret nc

    ldh a, [$f0]
    ldh a, [rNR10]
    inc e
    db $fc
    ld a, [c]
    sbc [hl]
    ld a, [$55fe]
    ld [hl], a
    inc sp
    inc sp
    ld bc, $0640
    dec a
    ccf
    add hl, bc
    rrca
    ld a, [hl-]
    ccf
    ld bc, $0a50
    ld e, h
    db $fc
    ld b, b
    ld a, a
    cp d
    rst $38
    jp z, $30cf

    ccf
    ld b, c
    ld a, a
    ld e, l
    ld a, a
    ld d, l
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld b, d
    cp $5d
    rst $38
    inc de

jr_039_4cd9:
    di
    inc c
    db $fc
    ld [bc], a
    cp $9a
    ld bc, $017b
    ld bc, $ffa0
    dec l
    nop
    ld bc, $0a01
    ld a, [bc]
    rrca
    rrca
    rlca
    rlca
    ld [bc], a
    inc bc
    inc b
    rlca
    daa
    daa
    ld e, d
    ld a, a
    adc b
    rst $38
    ld d, b
    ld d, b
    ldh a, [$f0]
    ldh [$e0], a
    ld b, b
    ret nz

    jr nz, @-$1e

    ldh [$e0], a
    ld d, b
    ldh a, [rNR10]
    ldh a, [$d5]
    rst $30
    ld c, l
    ld a, a
    ld [hl], $3f
    rrca
    rrca
    ld bc, $0006
    dec b
    rlca
    inc bc
    inc bc
    and [hl]
    and $b9
    rst $38
    ld h, [hl]
    cp $f8
    ld hl, sp+$5c
    db $fc
    inc h
    db $fc
    call nz, $b8fc
    cp b
    ld d, $16
    rra
    rra
    rrca
    rrca
    ld b, $07
    inc b
    rlca
    inc h
    daa
    ld d, h
    ld [hl], a
    adc h
    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ld bc, $0016
    ld bc, $001c
    call nc, Call_039_4ef7
    ld a, a
    daa
    ccf
    dec de
    rra
    dec c
    rrca
    db $10
    rra
    inc de
    rra
    dec e
    dec e
    ld h, b
    ld bc, $011b
    ldh a, [$f0]
    ld b, b
    ret nz

    ldh [$e0], a
    sub b
    ldh a, [$f0]
    ldh a, [rSB]
    ld b, b
    ld b, $01
    ld c, b
    inc b
    ld e, [hl]
    ld a, a
    ld b, a
    ld a, a

jr_039_4d6e:
    dec sp
    ccf
    ld a, [bc]
    rrca
    inc c
    rrca
    rla
    rra
    rrca
    rrca
    ld bc, $0470
    add sp, -$08
    ld c, b
    ld hl, sp+$10
    ldh a, [$e0]
    ldh [rSB], a
    nop
    ld b, $24
    daa
    ld e, b
    ld bc, $090d
    jr nz, jr_039_4d6e

    db $10
    ld bc, $035d
    scf
    ld bc, $0725
    ld h, $e6
    ld a, c
    rst $38
    and $fe
    ld hl, sp-$08
    sbc b
    ld hl, sp+$01
    ld a, [hl-]
    ld [bc], a
    ld bc, $fca0
    nop
    ld bc, $1000
    db $10
    jr c, @+$2a

    add hl, sp
    add hl, hl
    ld a, $2f

jr_039_4db1:
    add hl, de
    rra
    cpl
    ccf
    cpl
    add hl, sp
    ld l, $3f

jr_039_4db9:
    ret nz

    ret nz

    ldh [$a0], a
    ld [hl], b
    ret nc

    jr nc, jr_039_4db1

    ld c, b
    ld hl, sp+$78
    ld hl, sp+$78
    ret z

    jr nc, jr_039_4db9

    ld a, [hl-]
    ccf
    ld a, d
    ld c, a
    ld a, [hl]
    ld e, a
    ld l, $3f
    nop

jr_039_4dd2:
    ld a, [bc]
    nop
    ld a, $31
    rra
    rra

jr_039_4dd8:
    jr c, jr_039_4dd2

    inc a
    db $e4
    inc a
    db $e4
    jr c, jr_039_4dd8

    ld d, b
    ldh a, [$78]
    ld hl, sp-$3c
    db $fc
    ld a, h
    ld a, h
    ldh [$e0], a
    ldh a, [$90]
    ld a, b
    ret z

    ld a, $f6
    ld c, h
    db $fc
    nop
    ld a, [de]
    ld a, [bc]
    dec l
    ccf

jr_039_4df7:
    cpl
    ccf

jr_039_4df9:
    ld sp, $1f3f
    rra
    jr z, jr_039_4df7

    jr z, jr_039_4df9

    inc a
    db $f4
    inc a
    db $f4
    nop
    ld a, [de]
    nop
    cp h
    call nz, Call_039_7c7c
    rlca
    rlca
    rra
    add hl, de
    ld a, $23
    db $fd
    rst $00
    ld a, $3f
    dec bc
    rrca
    dec bc
    ld c, $09
    rrca
    ret c

    ret c

    ld hl, sp-$18
    jr c, @-$16

    ld hl, sp-$18
    ld e, b
    ld hl, sp-$28
    ld hl, sp-$30
    ld [hl], b
    or b
    ldh a, [rNR23]
    rra
    add hl, sp
    cpl
    add hl, sp

jr_039_4e31:
    cpl
    inc e

jr_039_4e33:
    rra
    rlca
    rlca
    ld a, [de]
    rra
    ld a, [de]
    rla
    rra
    rra
    ret nc

    ldh a, [$f0]
    jr nc, jr_039_4e31

    jr nc, jr_039_4e33

    ldh a, [rBCPS]
    ld hl, sp-$38
    ld hl, sp-$48
    ld hl, sp-$08
    ld hl, sp+$07
    rlca
    rrca
    add hl, bc
    ld e, $13
    dec e
    rla
    ld a, $2f
    dec sp
    cpl
    dec de
    ld e, $09
    rrca
    ld [$090f], sp
    rrca
    add hl, bc
    rrca
    inc b
    rlca
    dec b
    rlca
    ld c, $0f
    ld c, $0f
    rrca
    rrca
    call c, $fefc
    ld [hl-], a
    cp $32
    db $fc
    db $fc
    ld a, b
    ld hl, sp-$08
    ret z

    cp h
    call nz, $fcfc
    inc bc
    inc bc
    rlca
    dec b
    nop
    pop bc
    nop
    rla
    dec e
    rra
    dec e
    ld e, $17
    inc c
    rrca
    nop
    or b
    nop
    rra
    ld de, $273f
    dec de
    rra
    ld e, $1f
    ld e, $13
    inc c
    rrca
    nop
    ld bc, $0005
    nop
    ld bc, $0a01
    dec bc
    rra
    ld d, $1f
    rla
    ld a, [hl+]
    dec sp
    inc a
    cpl
    dec sp
    cpl
    call z, $dccc
    ld d, h
    cp d
    xor d
    rst $10
    push af
    push af
    rst $10
    ld a, [hl]
    ld a, [$fe36]
    call c, Call_000_15f4
    ld e, $17
    dec e
    rla
    dec e
    dec d
    ld e, $0b
    rrca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    ld b, $06
    dec c
    dec bc
    rra
    ld e, $37
    dec hl
    ld a, $3d
    ld l, a
    ld e, a
    dec sp
    dec [hl]
    rrca
    rrca
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ldh [$a0], a
    ldh [$e0], a
    ret nc

    ld [hl], b
    adc b
    ld hl, sp+$0c
    db $fc
    ld [bc], a
    inc bc
    dec b
    ld d, b
    nop
    inc bc
    inc bc
    ld bc, $0501

Call_039_4ef7:
    db $fc
    ld a, [c]
    ld d, $fa
    ld e, $f6
    ld e, $f6
    ld d, $fa
    inc c
    db $fc
    call nz, Call_000_38fc
    jr c, jr_039_4f08

jr_039_4f08:
    nop
    jr jr_039_4f23

    rra
    rla
    dec c
    ld a, [bc]
    rrca
    rrca
    dec sp
    dec [hl]
    ld l, a
    ld e, [hl]
    ccf
    ccf
    dec e
    dec de
    dec b
    cp $f0
    dec b
    ld b, d
    ld [bc], a
    ld d, b
    ldh a, [rTIMA]
    ld c, h

jr_039_4f23:
    nop
    ld [hl], $2f
    ld a, [de]
    dec de
    dec b
    ld d, h
    ld [$0005], sp
    nop
    dec bc
    ld a, [bc]
    ld e, $17
    rra
    ld d, $2b
    dec sp
    inc a
    cpl
    jr c, jr_039_4f3f

    rrca
    inc bc
    rst $30
    push de
    push de

jr_039_4f3f:
    rst $30
    ld a, [hl]
    jp c, $fe36

    inc e
    db $f4
    db $10
    rra
    dec b
    ret nz

    ld [bc], a
    ld [$2905], sp
    inc bc
    dec b
    rst $08
    rrca
    dec e
    nop
    ld bc, $4c06
    ld c, h
    rst $28
    xor e
    cp $bf
    ld a, h
    ld c, a
    inc a
    ccf
    ld b, a
    ld a, a
    ld h, a
    ld a, l
    ld b, a
    ld a, a
    nop
    nop
    sbc a
    sbc a
    ld a, a
    pop hl
    ld a, $ee
    inc a
    db $fc
    ld [c], a
    cp [hl]
    and $fe
    ld [c], a
    cp [hl]
    ccf
    ld a, $7c
    ld h, a

jr_039_4f7a:
    ld a, [hl]
    ld e, a
    ld a, a
    ld l, e
    ccf
    dec hl
    ld a, a
    ld l, c
    rst $38
    adc h
    rst $38
    rst $38
    db $fc
    db $fc
    jr nc, jr_039_4f7a

    ld a, b
    add sp, -$04
    call nc, Call_039_54fc
    xor $aa
    rst $38
    sbc c
    rst $38
    rst $38
    ld c, $0e
    rra
    ld de, $0c0f
    inc bc
    inc bc
    rrca
    rrca
    rra
    db $10
    ccf
    daa
    add hl, sp
    add hl, hl
    ld [hl], b
    ld [hl], b
    ld a, h
    ld e, h
    ld [$e1fe], a
    ccf
    ld sp, hl
    rst $38
    adc a
    db $fd
    rst $00
    rst $38
    add a
    rst $38
    dec sp
    ld a, [hl+]
    inc sp
    ld [hl-], a
    inc bc
    ld [bc], a
    ld b, $64
    nop
    rlca
    dec b
    rlca
    dec b
    rrca
    rrca
    rst $38
    ld a, l
    and c
    cp a
    xor d
    cp [hl]
    db $fc
    call c, $d4fc
    ld b, $3a
    ld [bc], a
    nop
    nop
    dec e
    dec e
    rra
    inc de
    rrca
    dec c
    inc bc
    ld [bc], a
    ld de, $3b11
    ld a, [hl+]
    ccf
    dec l
    ldh [$e0], a
    db $fc
    inc e
    ld [$e17e], a
    rst $38
    ld sp, hl
    ld a, a
    ld b, $5a
    ld [bc], a
    rra
    ld de, $0e0e
    ld bc, $0101
    ld bc, $6606
    ld bc, $0704
    rlca
    rst $38
    db $fd

Call_039_4fff:
    pop hl
    cp a
    ld [$fe7e], a
    ld e, [hl]
    rst $38
    reti


    cp a
    sbc l
    rst $38
    ret


    ld b, $7e
    nop
    ld sp, hl
    ld sp, hl
    cp $87
    ld a, h
    ld [hl], a
    dec a
    ccf
    ld b, [hl]
    ld a, a
    ld h, [hl]
    ld a, a
    ld b, a
    ld a, a
    ld [hl-], a
    ld [hl-], a
    rst $30
    push de
    ld a, a
    db $fd
    ld a, $f2
    cp h
    db $fc
    ld h, d
    cp $66
    cp $e2
    cp $3d
    ccf
    inc c
    rrca
    ld e, $17
    ccf
    dec hl
    ccf
    ld a, [hl+]
    ld [hl], a
    ld d, l
    ld b, $3c
    nop
    cp h
    db $fc
    ld a, $e6
    ld a, $fa
    cp $d6
    db $fc
    call nc, $96fe
    rst $38
    ld sp, $ffff
    nop
    ld bc, $0202
    rst $38
    ldh a, [$03]
    inc bc
    ld a, a
    ld a, h
    ld a, a
    ld c, h
    rst $38
    sbc e
    rst $38
    add sp, -$01
    adc h
    ld a, e
    ld a, e
    add hl, bc
    add hl, bc
    dec e
    dec e
    inc sp
    ccf
    ld b, [hl]
    ld a, a
    cp b
    rst $38
    sub $df
    add hl, sp
    add hl, sp
    ld bc, $e301
    ld [c], a
    rst $30
    sub h
    rst $38
    adc e
    ld a, a
    ld c, a
    ld a, a
    ld a, e
    rst $38
    ret


    rst $38
    sbc h
    ld a, a
    ld a, a
    ld [bc], a
    ld [de], a
    ld a, [bc]
    ld [bc], a
    rst $38
    ldh a, [rIF]
    rrca
    rra
    db $10
    rra
    db $10
    ccf
    cpl
    ccf
    jr nz, jr_039_50af

    stop
    nop
    inc e
    inc e
    ld a, $22
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ld d, c
    rst $38
    ld c, a
    rst $38
    db $e3
    rrca
    rrca
    ld b, $06
    ld e, $1e
    ld [bc], a
    ld d, $06
    sbc $de
    sub b
    sub b
    cp b

jr_039_50af:
    cp b
    call z, $62fc
    cp $1d
    rst $38
    ld l, e
    ei
    sbc h
    sbc h
    nop
    nop
    jr @+$1a

    ccf
    cpl
    ld a, a
    ld d, b
    ld a, a
    ld e, a
    ccf
    cpl
    ccf
    cpl
    ld [bc], a
    ld c, [hl]
    nop
    rra
    rra
    ccf
    ld hl, $c3ff
    rst $38
    call Call_039_58f8
    cp $46
    rst $38
    pop hl
    ld [bc], a
    nop
    ld b, $fe
    sbc e
    cp $e9
    rst $38
    adc l
    ld [bc], a
    db $10
    rrca
    inc b
    ret z

    ld a, a
    ld l, b
    ld a, [hl]
    ld a, l
    cp $cb
    rst $38
    sbc l
    ld [bc], a
    db $10
    inc c
    ld [bc], a
    and b
    rst $38
    dec c
    nop
    ld bc, $3001
    jr nc, jr_039_5144

    ld a, b
    sub e
    di
    xor l
    xor $bc
    di
    or a
    rst $28
    ld a, b
    ld c, a
    ld e, e
    ld l, a
    ld d, h
    ld a, a
    xor h
    rst $38
    xor [hl]
    rst $38
    ld e, e
    ld a, a
    ld l, e
    ld a, a
    or l
    rst $38
    or l
    rst $38
    ld l, e
    ld l, e
    ret nz

    ret nz

    and b
    ldh [rHDMA3], a
    ld [hl], e
    ld e, l
    ld a, [hl]
    cp h
    di
    or l
    ld [$efb7], a
    ret c

    rst $28
    rst $00
    rst $38
    cp l
    rst $38
    ld e, e
    ld a, a
    and d
    rst $38
    cp l
    rst $38
    ld d, l
    ld a, a
    ld e, d
    ld a, a
    dec l
    dec l
    ld bc, $f0fc
    inc bc
    inc bc
    dec c
    rrca
    rla
    add hl, de
    ld [hl], $2b

jr_039_5144:
    ld [hl], d
    ld c, a
    ld c, [hl]
    ld [hl], e
    ld bc, $0000
    sub b
    ldh a, [$30]
    ldh a, [$58]
    add sp, -$44
    call z, $fe92
    db $fc
    cp h
    ld l, l
    ld [hl], e
    ld e, l
    ld a, a
    xor e
    rst $38
    sbc c
    rst $38
    ld l, d
    ld a, a
    ld d, l
    ld a, a
    or l
    rst $38
    ld l, [hl]
    ld l, [hl]
    ld d, d
    cp $79
    rst $38
    ld c, c
    rst $38
    or a
    rst $38
    ld e, d
    cp $69
    rst $38
    xor l
    rst $38

jr_039_5175:
    ld d, [hl]
    ld d, [hl]
    ld bc, $0240
    ld a, l
    ld a, [hl]
    adc [hl]
    ld sp, hl
    and [hl]
    rst $38
    ld sp, hl
    rst $18
    ld c, h
    ld [hl], a
    ld bc, $f0fc
    ldh [$e0], a
    ldh a, [$30]
    jr jr_039_5175

    inc [hl]
    call z, Call_039_7c8c
    jp nc, Jump_039_6ebe

    ld [hl], a
    ld e, l
    ld a, a
    sub e
    rst $38
    or l
    rst $38
    ld b, l
    ld a, a
    cp d
    rst $38
    sub l
    rst $38
    ld a, d
    ld a, d
    xor h
    db $fc
    ld a, [hl]
    cp $55
    rst $38
    adc d
    cp $56
    cp $da
    cp $55
    rst $30
    or e
    or e
    ld bc, $0600
    or l
    ld [$4e71], a
    ld d, [hl]
    ld l, e
    ld d, l
    ld a, a
    xor l
    rst $38
    xor [hl]
    rst $38
    ld e, d
    ld a, a
    ld l, d
    ld bc, $0f19
    nop
    or c
    xor $d4
    db $eb
    rst $18
    ld a, [$01a5]
    inc sp
    add hl, bc
    nop
    ld bc, $0303
    rst $38
    ld a, [c]
    add hl, sp
    add hl, sp
    daa
    ld a, $17
    inc e
    rra
    dec de
    inc e
    rla
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    add b
    add b
    adc $ce
    ld a, [c]
    cp [hl]
    db $f4
    inc e
    db $fc
    ld l, h
    sbc h
    db $f4
    dec e
    rla
    inc a
    daa
    ld a, a
    ld b, e
    ld l, a
    ld d, b
    ld d, a
    ld a, b
    scf
    jr c, jr_039_520e

    rrca
    rrca
    rrca
    ld e, [hl]
    ld a, [c]
    dec e
    di
    ld sp, hl
    rst $20
    rst $38
    rlca
    db $fc
    inc b
    db $f4

jr_039_520e:
    inc c
    ld [$fcf8], sp
    db $fc
    inc bc
    rst $38
    ldh a, [rNR32]
    inc e
    inc de
    rra
    add hl, bc
    rrca
    dec c
    rrca
    scf
    ld a, [hl-]
    ld a, a
    ld b, b
    inc c
    inc c
    inc e
    inc e
    jr nz, jr_039_5248

    ret nz

    ret nz

    ld b, b
    ret nz

    ldh [rNR41], a
    ldh a, [rSVBK]
    sub b
    ldh a, [rIE]
    add b
    sbc a
    ld hl, sp-$11
    ldh a, [$2f]
    jr nc, @+$29

    jr c, jr_039_5260

    inc a
    db $10
    rra
    ccf
    ccf
    xor h
    db $fc
    adc d
    cp $f4
    ld a, h

jr_039_5248:
    ld hl, sp+$08
    ld hl, sp+$08
    add sp, $18
    inc e
    db $fc
    ldh a, [$f0]
    inc bc
    rst $38
    ldh a, [$0e]
    ld c, $09
    rrca
    inc b
    rlca
    ld b, $07
    rlca
    dec b
    rrca

jr_039_5260:
    ld [$8203], sp
    nop
    ld d, $16
    ldh [$e0], a
    and b
    ldh [$f0], a
    sub b
    ld hl, sp+$38
    ret z

    ld a, b
    rra
    db $10
    ccf
    inc h
    ccf
    inc h
    daa
    inc a
    dec sp
    inc a
    ld de, $081e
    rrca
    rlca
    rlca
    call nc, $c47c
    ld a, h
    db $fc
    inc a
    db $fc
    inc b
    db $fc
    inc b
    db $f4
    inc l
    ret z

    ld hl, sp-$10
    ldh a, [rTMA]
    ld b, $06
    ld b, $01
    ld bc, $7373
    ld c, a
    ld a, h
    cpl
    jr c, jr_039_52dc

    jr nc, jr_039_52de

    jr nz, jr_039_52a4

    rst $38
    ld a, [c]
    sbc h

jr_039_52a4:
    sbc h
    db $e4
    ld a, h
    add sp, $38
    ld hl, sp+$18
    ld hl, sp+$08
    ld e, a
    ld h, b
    adc a
    ldh a, [$bf]
    ldh [rIE], a
    ldh [$3f], a
    jr nz, jr_039_52e7

    jr nc, jr_039_52bd

    ld l, h
    nop
    db $fc

jr_039_52bd:
    inc b
    cp $02
    cp $12
    ld [$ec1e], a
    inc e
    ret z

    jr c, jr_039_5339

    ldh a, [$f0]
    ldh a, [rP1]
    ld bc, $1c06
    inc e
    ld a, [hl+]
    ld [hl], $3e
    ld a, [hl+]
    ld a, [hl+]
    ld [hl], $de
    sbc $fa
    cp d
    ld [hl], a

jr_039_52dc:
    ld e, l
    ld l, e

jr_039_52de:
    ld [hl], h
    rst $28
    sub b
    ld l, a
    ld [hl], a
    dec e
    rla
    dec a
    scf

jr_039_52e7:
    ld l, a
    ld d, e
    rst $38
    ldh [$30], a
    ccf
    rrca
    rrca
    cp $02
    db $fc
    call c, $d878
    ld a, [hl]
    sbc $ff
    add e
    rst $00
    ccf
    inc a
    db $fc
    ldh [$e0], a
    ld b, $10
    nop
    dec a
    scf
    ld l, l
    ld d, a
    rst $38
    db $e3
    jr c, jr_039_5349

    rrca
    rrca
    nop
    nop
    ld b, $20
    nop
    ld a, [hl]
    sbc $6f
    db $d3
    rst $20
    sbc a
    ld b, $2c
    nop
    ld b, $fa
    ld a, [c]
    rlca
    rlca
    rlca
    dec b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0701
    rlca
    jr c, jr_039_5363

    ld d, h
    ld l, h
    ld a, h
    ld d, h
    ld d, h
    ld l, h
    cp b
    cp b
    cp b
    xor b
    ld hl, sp+$68
    db $fc
    and h

jr_039_5339:
    rrca
    ld [$0707], sp
    inc bc
    inc bc
    inc c
    rrca
    inc sp
    inc a
    ld a, a
    ld b, b
    ld hl, sp-$01
    rlca
    ccf

jr_039_5349:
    db $fc
    inc b
    cp $9e
    ld [hl-], a
    sbc $fb
    rrca
    add hl, sp
    rst $08
    rst $38
    rlca
    ccf
    pop bc
    cp $fe
    rra
    db $10
    rrca
    rrca
    add hl, de
    ld e, $66

jr_039_5360:
    ld a, c
    rst $38
    ret nz

jr_039_5363:
    ldh a, [rIE]
    rrca
    ld a, a
    nop
    nop
    ld hl, sp+$08
    db $fc
    inc a
    and $3e
    ld [hl], d
    sbc [hl]
    cp $0e
    ld a, [hl]
    add d
    db $fc
    db $fc
    ld b, $fe
    di
    ld [hl+], a
    ld b, $06
    ld [bc], a
    ld a, a
    ld d, l
    ld l, l
    ld [hl], d
    ld a, a
    ld b, b
    dec a
    ld a, [hl-]
    dec e
    ld a, [de]
    ld a, a
    ld [hl], b
    ld sp, hl
    add $e0
    rst $38
    inc a
    ccf
    rlca
    rlca
    ld a, a
    add c
    or [hl]
    ld c, [hl]
    jr c, jr_039_5360

    ld e, h
    xor h
    ld e, $ea
    rlca
    rst $38
    inc c
    db $fc
    ldh a, [$f0]
    ld b, $c0
    nop
    ld b, $c6
    ld b, $00
    nop
    ld b, $d0
    nop
    ld b, $d6
    ld b, $00
    nop
    nop
    ld bc, $0202
    rst $38
    ldh a, [$03]
    inc bc
    inc c
    rrca
    inc de
    rra
    daa
    inc a
    dec hl
    ld a, $6f
    ld a, d
    cp $9f
    db $fd
    and e
    ld [hl], a
    ld a, b
    rst $38
    xor a
    rst $30
    ld hl, sp+$7f
    ld e, a
    ld a, a
    ld l, b
    ccf
    ccf
    db $fd
    push af
    ld e, a
    or a
    ld a, e
    ei
    db $dd
    or a
    ld a, a
    rst $38
    cp d
    xor $77
    rst $18
    db $fc
    db $fc
    ld [bc], a
    cp $f2
    ld bc, $0601
    rlca
    add hl, bc
    rrca
    ld [de], a
    rra
    inc [hl]
    ccf
    ld [bc], a
    cp $f2
    ret nz

    ret nz

    jr nc, @-$0e

    ld hl, sp-$08
    inc c
    db $fc
    ld b, $fe
    add hl, sp
    cpl
    ld a, d
    ld a, a
    ld a, h
    ld l, a
    ld a, b
    ld l, a
    ld a, c
    ld a, a
    ld e, [hl]
    ld [hl], a
    ccf
    ld [hl-], a
    rra
    rra
    rst $30
    db $fd
    ld c, $fe
    rlca
    db $fd
    rst $20
    db $fd
    rst $30
    rra
    xor $ba
    cp [hl]
    ld [$2e02], a
    ld [bc], a
    ldh [$e0], a
    ld e, b
    ld hl, sp-$7c
    db $fc
    sbc d
    cp $b6
    xor $ff
    push hl
    ld d, c
    ld a, a
    ld a, e
    ld l, [hl]
    rst $10
    rst $38
    db $eb
    db $fd
    cp [hl]
    rst $38
    db $fd
    rst $10
    ld l, a
    db $76
    ccf
    ccf
    sbc a
    ld sp, hl
    rst $38
    ld h, a
    cp [hl]
    cp $3f
    push hl
    ld a, a
    rst $38
    rst $28
    cp l
    cp $b6
    db $fc
    db $fc
    xor [hl]
    cp a
    rst $38
    push af
    xor e
    rst $38
    cp a
    push af
    sbc e
    rst $38
    ld c, h
    ld a, a
    dec a
    scf
    rra
    rra
    ld a, [hl-]
    cp $46
    cp $83
    rst $38
    ld bc, $19ff
    rst $38
    or $ee
    rst $38
    dec h
    rst $38
    rst $38
    ld [bc], a
    nop
    inc b
    db $10
    rra
    jr nz, jr_039_54b1

    daa
    ccf
    ld l, b
    ld a, a
    cp c
    xor a
    ld a, [$dcef]
    rst $18
    cp c
    rst $28
    sbc $ff
    ld h, c
    ld a, a
    ld [hl], b
    ld e, a
    ccf
    ccf
    rst $28
    cp a
    ld [hl], b
    ld a, a
    ldh [$bf], a
    rst $20
    cp a
    add sp, -$01
    ld [hl], c
    ld e, a
    ld [hl], b
    ld e, a
    cpl
    cpl
    call c, Call_039_5cf4
    db $f4
    ld e, b
    ld hl, sp-$64
    db $f4
    sbc h
    db $fc
    ld e, $fa
    inc a
    db $ec
    ld hl, sp-$08
    nop
    ld bc, $0801
    ld [$0404], sp
    scf
    scf
    ld a, c
    ld c, a

jr_039_54b1:
    ld l, c
    ld e, a
    ld c, h
    ld a, a
    ccf
    inc sp
    rra
    inc d
    ccf
    ld a, [hl-]
    ld a, a
    ld c, a
    rst $38
    sbc h
    rst $30
    or a
    db $eb
    db $ec
    inc e
    rra
    rra
    rra
    ld a, [bc]
    ld a, [bc]
    ld bc, $0a00
    ld a, a
    ld d, h
    rst $38
    sbc d
    rst $38
    sbc a
    rst $20
    and h
    rst $00
    rst $00
    dec bc
    inc c
    ld bc, $021a
    inc bc
    inc bc
    nop
    nop

Call_039_54df:
    rlca
    rlca
    rrca
    add hl, bc
    dec c
    dec bc
    add hl, bc
    rrca
    rlca
    ld b, $07
    inc b
    nop
    nop
    add b
    add b
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$08
    ld a, b
    ld hl, sp-$78
    rrca

Call_039_54fc:
    ld c, $0f
    dec bc
    rrca
    add hl, bc
    rrca
    inc c
    rlca
    rlca
    inc c
    rrca

jr_039_5507:
    rra
    rra
    rrca
    rrca
    ldh a, [$50]
    ldh [$e0], a
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$a0], a
    jr nc, jr_039_5507

    ld hl, sp-$08
    ldh a, [$f0]
    ld bc, $0840
    rra
    ld e, $3f
    inc h
    ld bc, $0c50
    ccf
    ld h, $1f
    inc de
    rrca
    ld a, [bc]
    rlca
    rlca
    rlca
    inc b
    ld bc, $0b6a
    jr nz, jr_039_5535

    ld a, d

jr_039_5535:
    ld [bc], a
    ld bc, $0200
    ld c, c
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    jr nc, jr_039_5580

    jr jr_039_5562

    dec sp
    ccf
    ld a, a
    ld c, h
    rst $38
    sbc a
    rst $30
    or h
    db $eb
    rst $28
    ld bc, $081a
    ld bc, $04c6
    ld a, b
    ld e, a
    ei
    sbc a
    ld bc, $0014
    rst $08
    db $cc, $1b, $1f
    ld bc, $021a
    nop

jr_039_5562:
    ld bc, $0202
    rst $38
    ld a, [c]
    inc c
    inc c
    ld [hl], d
    ld [hl], d
    adc [hl]
    cp $b3
    rst $08
    ld [hl], h
    ld c, a
    ld c, [hl]
    ld a, e
    ld c, d
    ld a, l
    add hl, sp
    ccf
    ld d, $1f
    inc l
    scf
    ld [hl+], a
    ccf
    dec e
    dec e
    ld [bc], a

jr_039_5580:
    ld [bc], a
    ld [bc], a
    ld [hl], $36
    ld c, d
    ld a, d
    ld d, [hl]
    ld l, [hl]
    ld d, e
    ld l, a
    ld b, h
    ld a, a
    ld l, $3b
    ld a, [hl+]
    dec a
    add hl, sp
    ccf
    rla
    rra
    dec e
    rla
    ld d, $1f
    dec bc
    dec bc
    ld [bc], a
    db $fc
    or $01
    ld bc, $7878
    add a
    rst $38
    add b
    rst $38
    ld e, c
    ld h, a
    ld [bc], a
    rst $38
    ld a, [c]
    adc b
    adc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ldh a, [$f0]
    ld [$5af8], sp
    ld h, a
    ld b, d
    ld a, a
    ld a, $3f
    ld b, c
    ld a, a
    ld c, c
    ld [hl], a
    inc hl
    ccf
    inc e
    inc e
    nop
    nop
    inc [hl]
    call c, $ee16
    inc e
    db $fc
    inc h
    db $fc
    ld b, d
    cp $e2
    cp $3c
    inc a
    ld [bc], a
    rst $38
    ld a, [c]
    dec e
    dec e
    ld [hl+], a
    ld a, $2d
    inc sp
    inc l
    inc sp
    ld hl, $123f
    rra
    ld [bc], a
    ld d, d
    ld a, [bc]
    inc [hl]
    db $dc, $12, $1f
    ld e, $1f
    add hl, bc
    rrca
    dec d
    dec de
    inc de
    rra
    ld c, $0e
    ld [bc], a
    rst $38
    ldh a, [rSC]
    ld [hl], d
    nop
    inc a
    db $fc
    ld e, [hl]
    ld [bc], a
    ld a, c
    rlca
    ld [bc], a
    ld [bc], a
    ld [$4f71], sp
    ld b, d
    ld a, a
    ld b, [hl]
    ld a, a
    dec sp
    ccf
    ld [de], a
    rra
    dec hl
    ld [bc], a
    add hl, de
    rrca
    nop
    ld b, c
    ld a, a
    ld h, $3f
    ld l, $3f
    ld [bc], a
    call nc, $0200
    ld [hl], $06
    nop
    ld bc, $1801
    jr jr_039_564e

    inc [hl]
    inc [hl]
    inc l
    ld bc, $0002
    xor b
    cp b
    cp c
    xor c
    ld a, [hl]
    ld a, [hl]
    ld [bc], a
    inc bc
    dec e
    rra
    ccf
    inc hl
    cpl
    ld sp, $1d1f
    inc sp
    ccf
    ld hl, $1f3f
    rra
    inc a
    db $fc
    cp $62
    ld a, [$76c6]
    adc $3c
    db $fc
    ldh a, [rSB]
    ld a, [hl+]
    ld bc, $6060

jr_039_564e:
    ret nc

    or b
    or b
    ret nc

    ld bc, $0032
    ld d, h
    ld [hl], h
    ld [hl], h
    ld d, h
    ld a, b
    ld a, b
    inc d
    rra
    dec de
    rra
    rla
    inc e
    dec d
    ld e, $0e
    rrca
    dec c
    rrca
    rla
    rra
    rrca
    rrca
    ret nz

    ret nz

    ldh [$a0], a
    ldh a, [$50]
    ldh a, [$30]
    ldh a, [$30]
    ret z

    ld hl, sp-$78
    ld hl, sp-$10
    ldh a, [rSB]
    nop
    ld b, $28
    jr c, jr_039_56bc

    dec hl
    inc a
    inc a
    ld a, [bc]
    rrca
    dec c
    rrca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    ld a, [de]
    rra
    ld h, $01
    dec de
    ld bc, $f0f0
    ld hl, sp-$78
    db $fc
    add h
    db $fc
    call nz, $f878
    ld [hl], b
    ldh a, [$d0]
    ldh a, [$f0]
    ldh a, [rSC]
    inc bc
    rra
    rra
    inc a
    daa
    inc l
    scf
    dec e
    rra
    ld bc, $051a
    ld a, [c]
    sbc d
    or $96
    cp $5c
    ld bc, $0329
    ld bc, $ffa0
    dec a

jr_039_56bc:
    nop
    ld bc, $0909
    rst $38
    ld a, [c]
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    rlca
    add hl, bc
    rst $38
    ldh a, [$c0]
    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [$d0]
    ldh a, [$30]
    rra
    add hl, de
    scf
    add hl, hl
    dec sp
    daa
    ld b, a
    ld a, a
    ld a, [hl]
    ld b, l
    db $76
    ld c, c
    ld l, $31
    rra
    rra
    ld hl, sp-$08
    inc e
    db $fc
    inc e
    db $f4
    cp $f2
    db $db
    dec [hl]
    or a
    ld a, c
    call $06cb
    ld b, $09
    inc b
    inc bc
    add hl, bc
    add hl, bc
    nop
    add hl, bc
    dec bc
    nop
    dec b
    add hl, bc
    inc d
    inc bc
    ret nc

    ldh a, [$09]
    ld e, b
    nop
    ret nc

    ldh [rNR41], a
    add hl, bc
    cp $f8
    dec b
    rlca
    ld [$090f], sp
    rst $38
    ldh a, [$3c]
    inc a
    cp $c2
    ld a, a
    adc c
    cp a
    ld c, l
    rst $38
    daa
    sbc $de
    ld [$0c0f], sp
    rrca
    rra
    dec de
    dec sp
    dec l
    ld e, h
    ld l, e
    xor $9d
    cp [hl]
    rst $18
    ld [hl], c
    ld [hl], c
    add b
    add b
    ldh a, [$f0]
    cp b
    ld c, b
    and h
    call c, $e4dc
    xor h
    ld d, h
    cp b
    ld c, b
    ldh a, [$f0]
    add hl, bc
    ld h, d
    ld [$0904], sp
    ld l, l
    ld bc, $7409
    ld bc, $bf8d
    ld c, a
    db $fc
    inc h
    call c, Call_039_40dc
    ret nz

    add hl, bc
    rst $38
    ldh a, [rNR23]
    jr @+$3e

    inc h
    ld a, [hl]
    ld b, d
    add hl, bc
    ret z

    nop
    ld a, a
    ld e, a
    add hl, bc
    call nz, $7e06
    ld b, d
    ld e, d
    ld h, [hl]
    ld e, a
    ld a, a
    rrca
    inc c
    dec de
    inc d
    dec l
    ld [hl-], a
    ld l, a
    ld d, e
    or h
    rst $08
    db $db
    xor d
    pop af
    sub c
    ld h, b
    ld h, b
    ld a, b
    sbc b
    ld l, h
    sub h
    ld e, h
    and h
    cp $c2
    and d
    ld a, [hl]
    ld e, [hl]
    and d
    db $ec
    sub h
    ld a, b
    ld a, b
    nop
    ld bc, $1c05
    inc e
    ld a, [hl+]
    ld [hl], $3e
    ld a, [hl+]
    ld a, [hl+]
    ld [hl], $1e
    ld e, $0f
    add hl, bc
    jr nc, jr_039_57e0

jr_039_57a1:
    ld b, [hl]
    ld a, a
    add hl, sp
    ccf
    inc de
    inc e
    inc e
    rra
    scf
    cpl
    ld e, [hl]
    ld [hl], e

jr_039_57ad:
    ld l, a
    ld a, h
    ld d, b
    ld e, a
    rrca
    rrca
    jr c, jr_039_57ad

    sub b
    ld [hl], b
    ld [hl], b
    ldh a, [$d8]
    add sp, -$10
    sub b
    ldh a, [rSVBK]
    jr nz, jr_039_57a1

    ret nz

    ret nz

    dec b
    nop
    nop
    dec a
    cpl
    ld a, [hl+]
    dec a
    inc d
    dec de
    ld [de], a
    rra
    rla
    rra
    cpl
    ccf
    rla
    rra
    inc de
    rra
    add hl, hl
    ccf
    ld a, e
    ld e, h
    db $ec
    sub a
    ld e, a
    ld a, e
    inc h
    daa

jr_039_57e0:
    inc bc
    inc bc
    ret nc

    ldh a, [$90]

jr_039_57e5:
    ldh a, [$28]
    ld hl, sp-$44
    ld [hl], h
    ld h, [hl]
    jp c, $bcf4

    ld a, [de]
    cp $e6
    and $05
    or $f6
    ld bc, $0201
    inc bc
    ld b, $07
    dec b
    nop
    inc b
    call c, Call_039_6bfc
    rst $30
    ld e, c

jr_039_5803:
    rst $20
    adc l
    rst $38
    ld [$0a0f], sp
    rrca
    ld b, $07
    ld [hl], h
    ld [hl], a
    adc l
    rst $38
    ldh [rIE], a
    sub c
    sbc [hl]
    rrca
    rrca
    db $fc
    db $e4
    ld b, h
    db $fc
    cp b
    ld hl, sp+$1c
    db $e4
    ld a, h
    and h
    ret c

    jr c, jr_039_5803

    jr nz, jr_039_57e5

    ret nz

    ld [hl], b
    ld [hl], b
    xor [hl]
    sbc $f9
    xor a
    or a
    reti


    push af
    ei
    sub d
    cp $24
    db $fc
    ret c

jr_039_5835:
    ld hl, sp+$04
    rlca
    ld b, $07
    inc b
    rlca
    ld c, $0f
    ld de, $201f
    ccf
    inc l
    ccf
    inc sp
    inc sp
    inc h
    db $fc
    sub $ba
    rst $28
    cp c
    ld a, e
    db $dd
    ret


    cp a
    db $76
    or $d0
    jr nc, jr_039_5835

    ldh [rNR32], a
    inc e
    ld [hl+], a
    ld a, $05
    jp nc, $1e00

    ld e, $09
    rrca
    inc [hl]
    ccf
    ld d, b
    ld a, a
    ld [hl-], a
    ccf
    jr jr_039_5888

    inc sp
    ccf
    ld a, d
    ld a, a
    adc b
    rst $38
    ld [c], a
    rst $38
    sub b
    sbc a
    rrca
    rrca
    ld e, b
    ld hl, sp+$30
    ldh a, [rTIMA]
    ldh a, [rP1]
    dec b
    ld d, b
    nop
    dec b
    inc l
    nop
    nop
    ld bc, $1801
    jr jr_039_589c

jr_039_5888:
    inc e
    dec bc
    rrca
    jr c, @+$41

    ld e, e
    ld e, a
    db $fc
    rst $30
    cp h
    cp a
    sbc a
    sub e
    jr jr_039_58af

    jr z, jr_039_58d1

    ret nc

    ldh a, [rNR32]

jr_039_589c:
    db $fc
    jp c, Jump_000_3ffa

    rst $28
    dec a
    db $fd
    ld sp, hl
    ret


    inc a
    daa
    ccf
    daa
    ld e, $13
    rra
    dec e
    ccf
    inc hl

jr_039_58af:
    ld a, $3e
    ld bc, $f0fc
    inc a
    db $e4
    db $fc
    db $e4
    ld a, b
    ret z

    ldh a, [$b0]
    ret nz

    ret nz

    ld bc, $f8fa
    ld a, b
    ld a, a
    db $db
    rst $18
    ld e, h
    ld d, a
    inc e
    rra
    rra
    inc de
    ld bc, $0210
    ld e, $fe
    db $db

jr_039_58d1:
    ei
    ld a, [hl-]
    ld [$f838], a
    ld hl, sp-$38
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    dec b
    rlca
    ld b, $07
    rlca
    dec b
    ld c, $0f
    ld de, $011f
    ld hl, sp-$0c
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [$30]
    ldh a, [$28]
    ccf
    ld b, l
    ld a, a
    ld b, a

Call_039_58f8:
    ld a, a
    adc d
    cp $9f
    db $fd
    rst $38
    rst $38
    ld hl, sp-$78
    ld hl, sp-$08
    ld_long a, $ffca
    push hl
    sbc a
    sub c
    ld c, a
    ld c, a
    ld bc, $f4f8
    ld bc, $0280
    adc e
    rst $38
    sbc h
    db $fc
    cp $f2
    rra
    ld de, $1f1f
    ld bc, $0290
    rst $28
    rst $28
    add b
    add b
    ld b, b
    ld b, b
    ld bc, $f8fc
    ld d, b
    ld e, a
    ldh a, [rIE]
    cp b
    cp a
    sbc a
    sbc a
    ld bc, $0440
    ret nc

    rst $18
    ld d, b
    ld e, a
    jr @+$21

    rra
    rra
    jr c, jr_039_596b

    ccf
    cpl
    inc e
    rla
    rra
    rra
    ld a, $23
    ccf
    ccf
    ld bc, $f0fc
    inc e
    db $f4
    db $fc
    db $f4
    jr c, @-$16

    ld hl, sp-$08
    ld b, b
    ret nz

    add b
    add b
    ld bc, $f0a0
    nop
    ld bc, $0001
    nop
    jr @+$1a

    inc h
    inc a
    ld a, [hl+]
    ld a, [hl-]
    ld [de], a
    ld [de], a
    rlca
    rlca
    ld c, [hl]
    ld c, e
    ld a, d
    ld a, a

jr_039_596b:
    nop
    nop
    ld h, b
    ld h, b
    sub b
    ldh a, [$f0]
    ldh a, [$84]
    add h
    call z, $facc
    cp d
    and d
    ld [c], a
    xor h
    xor a
    sbc [hl]
    sbc e
    dec sp
    ccf
    inc [hl]
    ccf
    ld d, e
    ld e, a
    ld e, b
    ld e, a
    sub a
    sub a
    nop
    nop
    ld a, b
    ld hl, sp-$1c
    and h
    or h
    db $f4
    ld e, d
    ld a, [$f898]
    inc h
    db $e4
    ret nz

    ret nz

    ld bc, $fafe
    dec hl
    cpl
    inc a
    ccf
    ld bc, $0410
    adc b
    adc b
    ret c

    ret c

    or h
    db $f4
    ld h, h
    db $e4
    ld l, e
    ld l, a
    ld d, h
    ld e, a
    dec [hl]
    ld bc, $0325
    rst $10
    rst $10
    nop
    nop
    cp b
    ld hl, sp+$54
    db $f4
    ld d, h
    ld bc, $0135
    inc [hl]
    db $f4
    ld bc, $023c
    ld bc, $f6f8
    inc a
    inc a
    ld d, a
    ld a, a
    nop
    nop
    inc c
    inc c
    ld [de], a
    ld e, $1e
    ld e, $10
    db $10
    ld a, b
    ld a, b
    db $f4
    sbc h
    sub h
    db $fc
    jp nc, $cbff

    rst $38
    and a
    rst $38
    sub l
    rst $38
    adc $fe
    ld a, [hl]
    ld a, [hl]
    inc b
    inc b
    nop
    nop
    ld a, h
    db $fc
    rst $30
    rst $18
    ld l, b
    ld a, b
    inc [hl]
    inc a
    inc l
    inc l
    db $10
    db $10
    ld bc, $f2fc
    ld b, $06
    add hl, bc
    rrca
    dec d
    rla
    ld [de], a
    ld [de], a
    ld bc, $089a
    sbc c
    rst $38
    rst $08
    rst $38
    ld a, l
    ld a, l
    ld bc, $00ba
    ld h, h
    db $fc
    db $f4
    call c, $b8a8
    ld d, h
    ld e, h
    ld c, h
    ld c, h
    jr nz, jr_039_5a3a

    sub b
    sub b
    ld bc, $fea0
    nop
    ld bc, $3c05
    inc a
    ld b, d
    ld b, d
    rrca
    rrca
    ld a, [de]
    rla
    ld d, $1f
    ld c, $0f
    inc b
    rlca
    dec bc
    rrca
    rlca
    inc b
    inc sp
    inc sp
    ld a, [hl+]
    dec sp
    db $76
    ld a, a

jr_039_5a3a:
    ld c, c
    ld c, a
    ld e, [hl]
    ld e, a
    ld d, h
    ld d, a
    ld d, e
    ld d, e
    ld e, $1e
    ld [hl+], a
    ld [hl+], a
    dec b
    inc b
    ld a, [bc]
    inc bc
    inc bc
    ld a, [de]
    dec de
    ld a, $3f
    dec [hl]
    ccf
    ld a, $3f
    ld d, h
    ld d, a
    ld b, e
    ld b, e
    ld c, $0e
    ld de, $1811
    jr jr_039_5a92

    inc l
    inc l
    inc a
    ld e, h
    ld a, h
    ld b, d
    ld a, [hl]
    add a
    rst $38
    inc bc
    inc bc
    ld c, $0f
    ld e, $13
    ccf
    dec sp
    daa
    ccf
    ld [de], a
    rra
    rrca
    rrca
    ld [bc], a
    ld [bc], a
    ld c, a
    ld a, c
    cp [hl]
    cp [hl]
    ld l, b
    ld hl, sp+$2f
    rst $38
    db $d3
    rst $38
    dec c
    db $fd
    pop af
    pop af
    ld bc, $1c01
    inc e
    ld [de], a
    ld [de], a
    dec b
    ld b, h
    ld [$0000], sp
    rrca
    rrca

jr_039_5a92:
    inc e
    rla
    ld a, $3f
    dec b
    ld e, b
    ld b, $3e
    ld a, $e8
    ld hl, sp+$24
    db $fc
    adc $fe
    inc de
    rst $38
    rst $38
    rst $38
    ld bc, $0501
    nop
    inc b
    inc d
    rra
    inc c
    rrca
    inc b
    rlca
    ld [$040f], sp
    rlca
    inc sp
    inc sp
    dec l
    ld a, $77
    ld a, l
    ld c, a
    ld c, c
    dec b
    ld a, [de]
    ld a, [bc]
    dec b
    xor b
    ld b, $03
    inc bc
    dec h
    ld h, $5f
    ld a, l
    ld l, a
    ld a, c
    ld e, [hl]
    ld e, a
    inc l
    cpl
    dec hl
    dec hl
    dec b
    and b
    rst $38
    dec c
    nop
    ld bc, $0303
    rst $38
    ld a, [c]
    dec [hl]
    dec [hl]
    ld a, [hl-]
    cpl
    dec de
    rra
    daa
    inc a
    rra
    ld a, [de]
    cpl
    jr c, jr_039_5b06

    add hl, de
    rra
    inc de
    ccf
    ld [hl-], a
    scf
    jr c, jr_039_5b46

    ld a, b
    ld a, e
    ld l, h
    scf
    scf
    inc bc
    rst $38
    ldh a, [rTIMA]
    dec b
    ld l, d
    ld l, a
    ld a, b
    ld e, a
    ld hl, $163f
    rra
    dec h
    ccf
    inc de
    inc bc
    dec bc

jr_039_5b06:
    ld bc, $303f
    ld e, a
    ld [hl], c
    ccf
    ld [hl+], a
    ld e, e
    ld a, h
    cpl
    cpl
    inc bc
    rst $38
    ld a, [c]
    call z, $f4cc
    cp h
    ld a, [c]
    cp [hl]
    db $76
    ld e, [hl]
    ld [hl], c
    ld e, a
    inc bc
    rst $38
    ld a, [c]
    ld bc, $0201
    ld [bc], a
    ld c, $0e
    rra
    ld de, $3b27
    ld a, e
    ld l, a
    db $e4
    sbc a
    ld a, e
    ld b, a
    db $f4
    adc e
    ld a, l
    ld h, d
    ld a, a
    ld d, b
    ccf
    dec [hl]
    dec bc
    dec bc
    cpl
    ld sp, $f3cf
    sub a
    db $eb
    ld e, [hl]
    and [hl]
    ld a, [hl]
    add d
    rst $38

jr_039_5b46:
    ld bc, $56fe
    add sp, -$18
    inc bc
    rst $38
    ldh a, [rTAC]
    rlca
    ld a, d
    ld a, [hl]
    ld [hl], a
    ld e, a
    ld [hl], b
    ld e, a
    ld l, c
    ld e, a
    ld a, b
    ld l, a
    inc bc
    db $fc
    or $80
    add b
    ld [bc], a
    ld [bc], a
    add d
    add d
    ld h, l
    ld e, a
    ld [hl], h
    ld l, a
    ld [hl], e
    ld c, a
    jr c, jr_039_5ba2

    ld a, $21
    rra
    jr jr_039_5b7f

    ld a, [bc]
    dec b
    dec b
    ld c, $0e
    or a
    cp c
    rst $08
    di
    rla
    jp hl


    cp [hl]
    ld c, [hl]
    cp $02

jr_039_5b7f:
    cp $ae
    ldh a, [$f0]
    inc bc
    nop
    ld b, $1f
    rla
    scf
    jr c, jr_039_5ba6

    inc e
    ccf
    inc [hl]
    rra
    jr jr_039_5bcc

    inc l
    rla
    jr jr_039_5bd0

    inc l
    ld e, l
    ld [hl], a
    ld l, d
    ld a, a
    inc bc
    ld e, $06
    ld a, a
    ld e, a
    ccf
    inc h
    rla

jr_039_5ba2:
    jr @+$2d

    inc a
    inc bc

jr_039_5ba6:
    db $ec
    nop
    rra
    jr jr_039_5be2

    jr c, @+$55

    ld a, h
    ld a, [hl+]
    ccf

jr_039_5bb0:
    ld d, l
    ld a, a
    cpl
    cpl
    nop
    ld bc, $0202
    rst $38
    ld a, [c]
    ld bc, $0101
    ld bc, $0303
    ld b, $07
    dec a
    ccf
    nop
    nop
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

jr_039_5bcc:
    ld b, b
    ret nz

    jr nz, jr_039_5bb0

jr_039_5bd0:
    and b
    ldh [$78], a
    ld hl, sp+$52
    ld e, a
    inc l
    ccf
    ldh a, [rIE]
    and e
    cp a
    ld h, l
    ld a, a
    or a
    cp a
    ld e, a
    ld e, a

jr_039_5be2:
    and d
    and d
    jr nc, jr_039_5c25

    db $e3
    rst $38
    and l
    cp a
    rst $30
    rst $38
    ld a, a
    ld a, a
    sbc d
    sbc d
    jr z, @+$2a

    jr nz, jr_039_5c14

    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    and b
    ldh [$a0], a
    ldh [$90], a
    ldh a, [$9a]
    ld_long a, $ffe7
    ld [bc], a
    ld a, [$80f8]
    add b
    ldh [$e0], a
    sbc d
    rst $38
    and l
    rst $38
    ld e, d
    ld a, a
    ld a, [$27ff]

jr_039_5c14:
    ccf
    ld e, l
    ld e, l
    ld a, [hl+]
    ld a, [hl+]
    ld [$b008], sp
    ldh a, [$28]
    ld hl, sp+$44
    db $fc
    add d
    cp $81
    rst $38

jr_039_5c25:
    ld h, e
    ld a, a
    ld e, [hl]
    ld e, [hl]
    ld c, c
    ld c, c
    ld [bc], a
    rst $38
    ldh a, [rNR41]
    jr nz, jr_039_5c51

    jr nz, jr_039_5c83

    ld [hl], b
    ld d, b
    ld [hl], b
    sbc c
    ld sp, hl
    sbc a
    ld [bc], a
    ld c, a
    add hl, bc
    ld b, b
    ld b, b
    ldh a, [$f0]
    ld [$95ff], a
    rst $38
    xor l
    rst $38
    ld l, d

jr_039_5c47:
    ld a, a
    cp d
    cp a
    scf
    scf
    dec d
    dec d
    inc b
    inc b
    xor b

jr_039_5c51:
    ld [bc], a
    ld [hl], e
    inc bc

Call_039_5c54:
    db $e3
    rst $38
    ld a, $3e
    dec h
    dec h
    add b
    add b
    ld [bc], a
    nop
    ld a, [bc]
    inc a
    ld [bc], a
    rrca
    dec b

jr_039_5c63:
    ret nz

    ret nz

    jr nz, jr_039_5c47

    ldh [$e0], a
    jr jr_039_5c63

    ld d, a
    ld e, a
    jr c, jr_039_5cae

    rst $20
    rst $38
    or b
    cp a
    ld l, a
    ld a, a
    or b
    ld [bc], a
    dec hl
    ld bc, $3f2f
    ldh a, [rIE]
    xor a
    cp a
    jr nc, jr_039_5cc0

    rst $38
    rst $38

jr_039_5c83:
    ld a, d
    ld a, d
    xor b
    xor b
    jr nz, jr_039_5ca9

    nop
    ld bc, $0005
    nop
    jr nc, jr_039_5cc0

    ld c, b
    ld a, b
    dec hl
    dec sp
    cpl
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    ld c, $0f
    dec c
    dec sp
    ld a, $5d
    ld a, a
    sub d
    rst $38
    and d
    rst $38
    ld h, [hl]
    ld a, a
    ld [de], a

jr_039_5ca9:
    rra
    dec c
    dec c
    dec b
    ld [bc], a

jr_039_5cae:
    ld [bc], a
    daa
    dec b
    add hl, bc
    dec b
    dec de
    ld e, $2d
    ccf
    ld [hl-], a
    ccf
    ld [hl-], a
    ccf
    ld a, [de]
    rra
    ld c, $0f
    ld [bc], a

jr_039_5cc0:
    inc bc
    ld bc, $1f01
    rra
    jr nz, jr_039_5d06

    ld e, $1f
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rst $18
    rst $18
    cpl
    cpl
    ret nz

    ret nz

    and b
    ldh [$50], a
    ldh a, [$78]
    ld hl, sp+$3c
    db $fc
    cp $fe
    cp $fa
    rst $18
    push af
    inc sp
    inc sp
    sbc $df
    ld h, [hl]
    ld h, a
    ld a, $3f
    jr jr_039_5d0c

    inc de
    rra
    inc c
    inc c
    nop
    nop
    adc [hl]

Call_039_5cf4:
    ld a, [$fe7e]
    ld c, c
    rst $38
    ld c, c
    rst $38
    ret


    rst $38
    ld [de], a
    cp $fc
    db $fc
    dec b
    cp $f0
    inc a
    inc a

jr_039_5d06:
    ld b, e
    ld a, a
    ld e, h
    ld a, a
    ld [hl+], a
    inc hl

jr_039_5d0c:
    dec b
    ld c, b
    nop
    rra
    rra
    dec b
    cp $f0
    dec b
    ld d, b
    nop
    dec b
    ld d, [hl]
    inc b
    rrca
    rrca
    ld [hl], e
    ld [hl], e
    sbc [hl]
    sbc a
    inc b
    rlca
    ld a, h
    ld a, a
    sub c
    sbc a
    ld l, $3f
    ld sp, $df31
    push af
    adc [hl]
    ld a, [$fefe]
    ret


    rst $38
    adc c
    rst $38
    sub d
    cp $26
    cp $f8
    ld hl, sp+$60
    ld h, b
    sub b
    ldh a, [$a8]
    ld hl, sp+$6b
    ld a, e
    daa
    ccf
    rla
    rra
    dec b
    ld a, [bc]
    nop
    rra
    rra
    cpl
    ccf
    ld b, a
    ld a, a
    ld c, e
    ld a, a
    dec hl
    ccf
    ld a, [de]
    rra
    ld b, $07
    ld bc, $0001
    nop
    ld h, b
    ld h, b
    sub e
    di
    xor a
    rst $38
    ld h, a
    ld a, a
    dec b
    adc h
    nop
    dec b
    ret nc

    nop
    ld d, a
    ld a, a
    ld h, a
    ld a, a
    dec hl
    ccf
    ld [de], a
    rra
    ld c, $0f
    dec b
    sbc $00
    nop
    ld bc, $0001
    nop
    inc b
    inc b
    ld b, $06
    ld b, $06
    ld [hl], d
    ld [hl], d
    rst $38
    adc a
    rst $28
    sub e
    ld a, [hl]
    ld b, a
    ld a, $3f
    inc c
    rrca
    dec sp
    scf
    ld l, a
    ld d, a
    ld a, [$758b]
    ld [hl], l
    inc b
    inc b
    ld [$0108], sp
    nop
    nop
    ld [hl], $36
    ld a, [hl]
    ld c, [hl]
    ld a, d
    ld c, d
    ld l, a
    ld d, a
    ld a, a
    ld b, e
    ld a, $37
    ld c, $0f
    inc b
    rlca
    dec bc
    rrca
    ld d, $1b
    ccf
    daa
    inc a
    inc a
    ld bc, $021c
    nop
    nop
    jr c, jr_039_5df3

    ld a, h
    ld b, h
    scf
    dec hl
    ccf
    jr nz, @+$41

    jr c, @+$81

    ld b, a
    nop
    nop
    db $10
    db $10
    jr @+$1a

    jr jr_039_5de5

    ld [$b808], sp
    cp b
    call z, $cc7c
    db $fc
    dec [hl]
    dec hl
    ld e, $1f
    ld hl, $263f
    ld a, $1a
    ld a, [de]
    ld a, [bc]
    ld a, [bc]
    ld de, $0011
    nop

jr_039_5de5:
    ld b, h
    db $fc
    inc l
    db $fc
    jr z, @-$06

    ret c

    ret c

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_039_5e13

jr_039_5df3:
    nop
    nop
    inc c
    inc c
    ld e, $12
    rra
    ld de, $151b
    rra
    db $10
    rrca
    ld [$0607], sp
    rlca
    rlca
    ld bc, $0450
    adc b
    adc b
    ld bc, $025a
    dec e
    dec de
    ld [hl], $2b

jr_039_5e11:
    ld a, l
    ld b, a

jr_039_5e13:
    ld a, $01
    ld h, a
    add hl, bc
    jr c, jr_039_5e11

    ret nz

    ret nz

    ld bc, $0478
    ld bc, $f2fc
    inc c
    inc c
    ld bc, $0308
    ld b, c
    ccf
    ccf
    rrca
    dec c
    ld a, $33
    ld l, [hl]
    ld bc, $0717
    nop
    nop
    jr nc, jr_039_5e65

    ld a, h
    ld c, h
    ld bc, $0228
    ccf
    ld sp, $0f0f
    rlca
    dec b
    ld c, $0b
    ld bc, $0636
    nop
    ld bc, $7201
    ld [hl], d
    xor l
    rst $18
    db $fd
    xor a
    cp b
    rst $18
    ld [hl], b
    ld a, a
    ld hl, $613e
    ld a, [hl]
    and c
    cp $4e
    ld c, [hl]
    or l
    ei
    cp a
    push af
    dec e
    ei
    ld c, $fe
    add h
    ld a, h
    add [hl]

jr_039_5e65:
    ld a, [hl]
    add l
    ld a, a
    ld h, c
    ld a, [hl]
    inc hl
    inc a
    scf
    jr c, jr_039_5eed

    ld c, l
    ei
    sub a
    db $fc
    rst $38
    ccf
    inc hl
    inc a
    inc a
    add [hl]
    ld a, [hl]
    call nz, $ec3c
    inc e
    ld a, [hl]
    or d
    rst $18
    jp hl


    ccf
    rst $38
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    ld a, [bc]
    dec c
    rrca
    ld a, [bc]
    ld a, [bc]
    dec c
    rlca
    rlca
    ld [$080f], sp
    rrca
    db $10
    rra
    nop
    nop
    ldh a, [$f0]
    sbc b
    ld hl, sp-$7c
    db $fc
    inc b
    db $fc
    ld b, $fa
    ld b, $fa
    ld c, $f2
    db $10
    rra
    ld de, $131f
    ld e, $27
    inc a
    cpl
    add hl, sp
    rra
    rra
    ld bc, $f0fc
    ld c, $f2
    sbc a
    rst $28
    sub c
    rst $38
    sbc a
    rst $38
    ld hl, $feff
    cp $6e
    ld [hl], d
    ccf
    ccf
    ld bc, $0a40
    ld [$010f], sp
    ld d, b
    rrca
    add hl, bc
    ld c, $09
    rra
    rra
    ld bc, $0870
    add b
    add b
    add b
    add b
    ld [hl], d
    ld [hl], d
    adc l
    rst $38
    sbc b
    rst $38
    or b
    rst $38
    ld h, b
    ld a, a
    jr nz, @+$41

    ld h, b
    ld a, a
    and b
    rst $38
    ld c, [hl]
    ld c, [hl]

jr_039_5eed:
    or c
    rst $38
    add hl, de
    rst $38
    dec c
    rst $38
    ld b, $fe
    inc b
    db $fc
    ld b, $fe
    dec b
    ld bc, $01c7
    inc hl
    ccf
    ld [hl], a
    ld e, a
    cp $9f
    ldh a, [rIE]
    rrca
    rrca
    nop
    nop
    ld bc, $00d8
    call nz, $eefc
    ld a, [$f97f]
    ld a, a
    rst $38
    call c, Call_039_7ee4
    ld a, [hl]
    nop
    ld bc, $2001
    jr nz, @+$74

    ld [hl], d
    ld e, d
    ld a, d
    adc [hl]
    cp $8d
    ei
    call c, $64f7
    ld a, e
    inc hl
    ccf
    ld a, a
    ld a, l
    rst $28
    rst $38
    sub a
    db $fd
    ei
    rst $38
    adc h
    rst $38
    cp e
    ei
    and b
    ldh [$e0], a
    ldh [rP1], a
    nop
    adc d
    adc d
    jp c, $aeda

    ld bc, $0707
    xor a
    db $fd
    rst $38
    rst $38
    adc h
    rst $38
    or e
    di
    sbc b
    ld hl, sp-$08
    ld hl, sp+$00
    nop
    db $10
    db $10
    jr z, @+$3a

    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld b, a
    ld a, a
    ld l, h
    ld a, a
    jr c, @+$41

    inc h
    ccf
    jr nz, jr_039_5f85

    ld d, b
    ld [hl], b
    adc b
    ld hl, sp-$78
    ld hl, sp-$38
    ld hl, sp+$68
    cp b
    ret nc

    ld [hl], b
    ld e, b
    cp b
    ld d, $1f
    jr jr_039_5f96

    ld h, e
    ld a, a
    ld c, h
    ld a, a
    inc sp
    ccf

jr_039_5f7d:
    ld c, h
    ld a, a
    ld [hl], e
    ld a, a
    ld e, h
    ld e, h
    jr jr_039_5f7d

jr_039_5f85:
    ld [hl], h
    call c, $fc7c
    ld [hl], b
    ret nc

    cp b
    ld hl, sp-$2c
    call c, $0c0c
    ld bc, $f0fc
    ld b, h
    ld b, h

jr_039_5f96:
    ld l, h
    ld l, h
    ld d, h
    ld bc, $0547
    ld bc, $0480
    call nz, Call_039_64fc
    cp h
    ret c

    ld a, b
    ld e, b
    cp b
    ld e, d
    ld a, a
    xor l
    rst $28
    jp nc, $2ddf

    ccf
    ld d, d
    ld [hl], e
    and l
    rst $20
    push hl
    rst $20
    ld b, $06
    inc d
    db $fc
    ld a, [$76de]
    or $f8
    ret c

    or h
    db $fc
    jp z, Jump_000_06ce

    ld b, $01
    cp $f6
    adc c
    rst $38
    ret nc

    rst $38
    ld h, b
    ld a, a
    jr nz, jr_039_600f

    ld h, b
    ld a, a
    ldh [rIE], a
    sub b
    rst $38
    ld hl, sp+$01
    rla
    dec c
    ld bc, $06c8
    and b
    rst $38
    ldh a, [rSB]
    dec [hl]
    rlca
    nop
    ld bc, $7008
    ld [hl], b
    ld a, [hl]
    ld c, [hl]
    ld a, [hl]
    ld b, [hl]
    ld a, $22
    dec e
    inc de
    ld a, [hl]
    ld a, a
    or $8f
    ld a, h
    ld a, a
    ld a, [de]
    rra
    cpl
    add hl, sp
    ld a, b
    ld d, a
    di
    sbc h
    db $fc
    sbc e
    ld h, l
    ld h, a
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld b, $06
    ld h, d
    ld h, d
    sbc $be
    rst $38

jr_039_600f:
    db $e3
    cp $8f
    ld a, [hl]
    ld a, a
    inc d
    rra
    ld a, [hl-]
    ccf
    ld l, a
    ld e, c
    ld hl, sp-$69
    or e
    db $fc
    call z, Call_000_05cb
    rlca
    ld [$001c], sp
    ld b, $06
    rrca
    add hl, bc
    rrca
    add hl, bc
    rlca
    inc b
    ld h, a
    ld h, h
    db $d3
    or d
    cp e
    bit 7, [hl]
    ld h, a
    ld [$f2fa], sp
    add [hl]
    add [hl]
    add l
    add l
    cp h
    cp h
    sbc $fe
    sbc $fe
    ld a, [de]
    rra
    dec e
    rra
    ld [hl], $2d
    ld a, h
    ld c, a
    ld a, l
    ld c, [hl]
    ld [hl], l
    ld d, [hl]
    ld h, e
    ld h, d
    ld bc, $4a01
    cp $e2
    cp $74
    sbc h
    adc b
    ld a, b
    jr c, @-$36

    ld c, b
    cp b
    ld e, b
    cp b
    db $fc
    db $fc
    ld [$f0fc], sp
    jr c, jr_039_609f

    inc a
    inc h
    ld a, $22
    rla
    add hl, de
    ld a, l
    ld a, a
    cp $8f
    ld [$f2fa], sp
    ld b, $06
    dec b
    dec b
    inc a
    inc a
    ld [$005c], sp
    ld e, d
    ld h, a
    dec a
    ccf
    ld a, [hl]
    ld h, l
    db $ec
    sbc a
    ld [hl], l
    db $76
    dec b
    ld b, $03
    ld [bc], a
    ld [$0e6e], sp
    ld [$0800], sp
    rst $38
    add a
    ld [hl], a
    ld a, c
    ld c, $0f
    rla
    ld a, [de]
    inc a
    daa
    ld a, e
    ld c, h
    ld a, h
    ld e, e

jr_039_609f:
    dec h
    daa
    ld [$021c], sp
    ld h, [hl]
    ld h, [hl]
    sub d
    ld a, [c]
    ld [$fbfa], a
    sbc e
    cp $87
    ld a, a
    ld h, e
    dec e
    dec de
    ld a, [hl]
    ld a, a
    rst $38
    add d
    db $fc
    adc a
    ld [hl], e
    ld a, h
    inc c
    dec bc
    ld [$023a], sp
    nop
    ld bc, $8401
    add h
    ret


    ret


    ld [hl], l
    ld a, l
    ld e, $1f
    ld [bc], a
    inc bc
    ld d, $17
    ld a, [bc]
    rrca
    ld [hl-], a
    ccf
    ld [hl], h
    ld a, a
    sbc [hl]
    ei
    adc l
    rst $38
    adc h
    rst $38
    sbc e
    rst $38
    and $ff
    ld b, e
    ld a, a
    ccf
    ccf
    ld d, b
    ldh a, [$e8]
    cp b
    ld a, h
    db $fc
    ld b, h
    db $fc
    add h
    db $fc
    add h
    db $fc
    adc b
    ld hl, sp-$10
    ldh a, [rSB]
    ld hl, sp-$0c
    ld [bc], a
    ld [bc], a
    dec l
    cpl
    inc d
    rra
    dec hl
    ccf
    ld a, [bc]
    ld a, [bc]
    ld c, d
    ld c, d
    db $76
    ld a, [hl]
    ld c, h
    ld a, h
    ld d, b
    ld [hl], b
    and b
    ldh [$a0], a
    ldh [rNR41], a
    ldh [$5f], a
    ld a, a
    ld d, c
    ld a, a
    sub b
    rst $38
    sub b
    rst $38
    sbc b
    rst $38
    ld h, a
    ld a, a
    ld a, $3f
    rra
    rra
    ret nc

    ld [hl], b
    sbc b
    ld hl, sp-$1c
    db $fc

jr_039_6123:
    and h
    db $fc
    db $f4
    db $fc
    sbc h
    db $fc
    jr jr_039_6123

    ldh a, [$f0]
    ld e, e
    ld a, a
    ld b, h
    ld a, a
    add l
    rst $38
    adc e
    rst $38
    pop af
    rst $38
    sbc a
    rst $38
    add a
    rst $38
    ld a, a
    ld a, a
    ret nc

    ld [hl], b
    sub b
    ldh a, [$f0]
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp-$78
    ld hl, sp-$08
    ld hl, sp+$01
    nop
    ld b, $17
    rla
    ld a, [bc]
    rrca
    dec [hl]
    ccf
    ld [hl], a
    ld a, a
    sbc d
    rst $38
    sub c
    rst $38
    sub c
    rst $38
    sbc c
    rst $38
    push hl
    ld bc, $011b
    ret nc

    ldh a, [$b8]
    ld hl, sp+$1c
    db $fc
    inc d
    db $fc
    inc [hl]
    db $fc
    ld [hl], h
    db $fc
    ld hl, sp+$01
    dec l
    rlca
    ld bc, $0fc7
    dec h
    nop
    ld bc, $0301
    inc bc
    inc b
    rlca
    dec b
    rlca
    rlca
    ld b, $03
    ld [bc], a
    ld h, e
    ld h, e
    ld e, e
    ld a, d
    inc h
    ccf
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    add b
    add b
    adc h
    adc h
    or h
    cp h
    ld c, b
    ld hl, sp+$66
    ld a, a
    sbc e
    db $fd
    adc e
    rst $38
    xor a
    cp $9b
    rst $38
    db $fc
    rst $38
    ld d, e
    ld [hl], e
    ldh a, [$f0]
    call z, $bcfc
    ld a, h
    cp [hl]
    cp $c4
    db $fc
    and [hl]
    cp $c4
    db $fc
    adc b
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    inc e
    rra
    ld [hl-], a
    ccf
    ld c, a
    ld a, a
    ld l, b
    ld a, b
    sub a
    rst $30
    push af
    rst $30
    sub d
    di
    add b
    add b
    ld h, b
    ldh [$30], a
    ldh a, [rSVBK]
    ret nc

    ld hl, sp-$18
    jr jr_039_61ef

    db $fc
    db $f4
    ld b, d
    cp $ff
    rst $38
    or h
    rst $38
    call c, $acff
    rst $38
    and [hl]
    rst $38
    ld l, a
    ld a, a
    ld c, [hl]
    ld a, [hl]
    ld a, b
    ld a, b
    adc [hl]
    cp $5c
    db $f4

jr_039_61ef:
    ld l, $fe

jr_039_61f1:
    ld h, $fa
    ld a, $fe
    jp nc, $cefe

    cp $78
    ld a, b
    rlca
    rlca
    jr jr_039_621e

    ld [hl], $3f
    ld c, c
    ld a, c

jr_039_6203:
    ret nc

    ldh a, [$b6]
    or $d5
    rst $30
    or d
    di
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_039_61f1

    jr nc, jr_039_6203

    ldh a, [$d0]
    ld [hl], b
    ld d, b
    xor b
    xor b
    ld a, h
    db $f4
    sbc $ff
    or c

jr_039_621e:
    rst $38
    ret c

    rst $38
    or a
    rst $38
    ld d, e
    ld a, a
    ld d, a
    ld a, a
    ld [hl-], a
    ccf
    dec a
    dec a
    ld b, d
    cp $ce
    cp $fc
    db $f4
    ld e, $fe
    ld c, $fa
    inc c
    db $fc
    adc h
    db $fc
    db $fc
    db $fc
    ld bc, $0000
    ld bc, $00c2
    inc bc
    inc bc
    ld h, d
    ld h, e
    ld e, e
    ld a, e
    ld bc, $040e
    ld b, b
    ld bc, $0517
    ld h, a
    ld a, a
    ret c

    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rst $10
    rst $38
    call c, Call_039_4bff
    ld a, e
    ldh a, [$f0]
    call c, Call_000_2cfc
    db $fc
    db $f4
    db $fc
    ld l, $fe
    xor h
    db $fc
    ld h, [hl]
    cp $f8
    ld hl, sp+$70
    ld [hl], b
    nop
    ld bc, $0101
    rst $38
    ldh a, [$37]
    scf
    ld c, h
    ld c, a
    ld a, [de]
    rra
    ld l, d
    ld a, a
    or e
    rst $18
    or $bd
    or [hl]
    rst $18
    db $fd
    rst $38
    rst $18
    rst $38
    and e
    rst $38
    ld c, a
    ld a, a
    ld d, c
    ld a, a
    and e
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    ld a, b
    ld a, a
    sbc h
    sbc a
    ld bc, $040a
    ld a, l
    ld a, a
    ld c, a
    ld a, a
    cp a
    rst $38
    rst $00
    rst $38
    sbc d
    rst $38
    and a
    rst $38
    ld b, d
    ld bc, $011b
    ld bc, $f0ff
    ld c, $0e
    add hl, bc
    rrca
    add hl, sp
    ccf
    ld c, d
    ld a, a
    ld d, d
    ld a, a
    ld d, h
    ld a, a
    nop
    nop
    inc c
    inc c
    ld [c], a
    ld [c], a
    add hl, de
    ld sp, hl
    dec b
    db $fd
    ld [hl], d
    cp $ae
    sbc $fe
    xor d
    ld c, h
    ld a, a
    cp [hl]
    rst $38
    adc l
    rst $38
    and h
    rst $38
    sub e
    rst $38
    ld d, c
    ld a, a
    ld c, c
    ld a, a
    ccf
    ccf
    xor a
    rst $18
    ld a, l
    rst $38
    ret


    rst $38
    add [hl]
    cp $0b
    rst $38
    sub c
    rst $38
    ld h, c
    ld a, a
    ld a, $3e
    nop
    nop
    rrca
    rrca
    add hl, bc
    rrca
    ld a, [hl-]
    ccf
    ld c, d
    ld a, a
    ld d, h
    ld a, a
    call c, $f6ff
    rst $38
    db $fc
    db $fc
    ld a, [de]
    ld a, [$fe06]
    ld bc, $025a
    ld bc, $0070
    sbc l
    rst $38
    adc d
    rst $38
    adc l
    rst $38
    and a
    rst $38
    and [hl]
    cp $92
    cp $52
    ld a, [hl]
    ld a, $3e
    pop af
    rst $38
    adc [hl]
    cp $06
    cp $1f
    rst $38
    and e
    rst $38
    ld b, e
    ld a, a
    ld [hl+], a
    ld a, $3c
    inc a
    ld bc, $f0ff
    ld [hl], a
    ld [hl], a
    adc b
    adc a
    ld [de], a
    rra
    ld h, a
    ld a, a
    xor b
    rst $38
    rst $30
    cp a
    xor b
    rst $38
    rst $30
    rst $38
    ret c

    rst $38
    and d
    rst $38
    ld b, h
    ld a, a
    ld b, h
    ld a, a
    ld l, b
    ld a, a
    rra
    rra
    ld bc, $0020
    sub d
    sbc a
    ld bc, $00ca
    ldh a, [$bf]
    xor a
    rst $38
    ld [hl], b
    ld a, a
    ld l, a
    ld a, a
    cp b
    rst $38
    jp nc, $a2ff

    rst $38
    and h
    rst $38
    ld b, h
    ld a, a
    ld h, h
    ld a, a
    rra
    rra
    nop
    ld bc, $0102
    ld bc, $0607
    ld l, l
    ld l, [hl]
    ld e, l
    ld a, [hl]
    ld l, $3f
    cpl
    ccf
    ei
    cp $f8
    adc a
    ld [hl], a
    ld e, a
    dec [hl]
    ccf
    jr jr_039_6399

    rrca
    rrca
    inc e
    inc d
    jr jr_039_6398

    ld [bc], a
    db $fc
    db $fc
    dec de
    ld e, $78
    ld a, a
    rst $30
    sbc a
    ld a, l
    ld a, a
    ld [bc], a
    inc d
    nop
    ld c, $0a
    inc c
    inc c
    ld [bc], a
    ld a, [$03f4]
    inc bc
    dec b

jr_039_6398:
    rlca

jr_039_6399:
    inc b
    rlca
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld b, a
    daa
    dec sp
    ld b, $06
    cp $fa
    db $ec
    db $f4
    db $f4
    db $fc
    ld hl, sp-$08
    ld a, b
    ld hl, sp+$58
    ld hl, sp-$7c
    db $fc
    dec e
    rla
    inc c
    rrca
    ld a, [bc]
    rrca
    rra
    inc de
    inc e
    inc d
    ld [$0208], sp
    db $fc
    ldh a, [$78]
    ld hl, sp-$50
    ldh a, [$60]
    ldh [$c0], a
    ret nz

    ld [bc], a
    or $f8
    ld [bc], a
    ld b, h
    ld [bc], a
    ld b, $07
    ld b, $07
    ld a, e
    ld a, a
    ld [bc], a
    ld d, b
    ld a, [bc]
    call nz, $adfc
    rst $10
    ld a, h
    ld a, a
    ld a, [bc]
    rrca
    dec c
    dec bc
    ld c, $0a
    ld b, $06
    ld [bc], a
    db $fc
    ldh a, [$38]
    ld hl, sp-$10
    ldh a, [rNR41]
    ld [bc], a
    ld [hl], l
    rlca
    ld [bc], a
    nop
    nop
    ld l, a
    ld l, a
    ld e, a
    ld a, a
    cpl
    ccf
    cpl
    ccf
    rst $38
    rst $38
    rst $38
    add e
    ld l, e
    ld d, l
    ccf
    ccf
    inc d
    rra
    rrca
    dec bc
    ld [bc], a
    jr jr_039_6412

    ld [bc], a
    db $c4, $04, $1f
    rra
    ld a, a
    ld a, a
    rst $18

jr_039_6412:
    and c
    ld [hl], a
    ld l, e
    inc e
    rra
    rrca
    dec bc
    ld [bc], a
    jr c, jr_039_6420

    nop
    ld bc, $0801

jr_039_6420:
    ld [$545c], sp
    ei
    or a
    db $db
    cp a
    pop hl
    cp a
    ld a, [$c5bd]
    rst $38
    add l
    rst $38
    inc d
    inc d
    ld a, $2a
    sbc $ea
    db $db
    db $fd
    add a
    db $fd
    ld e, e
    cp l
    and a
    db $fd
    and e
    rst $38
    add [hl]
    rst $38
    sbc a
    pop af
    ld a, a
    ld [hl], b
    sub h
    ei
    adc a
    db $fc
    add a
    rst $38
    ld b, h
    ld a, h
    jr c, jr_039_6487

    ld h, e
    rst $38
    ld sp, hl
    adc a
    pop af
    rra
    ld sp, $d2df
    ld a, $cc
    db $fc
    add h
    db $fc
    ld a, h
    ld a, h
    nop
    nop
    db $10
    db $10
    jr c, jr_039_648d

    dec a
    dec h
    scf
    dec hl
    scf
    dec hl
    inc [hl]
    cpl
    jr c, jr_039_649e

    ld b, b
    ld b, b
    ldh [$a0], a
    call c, $debc
    cp $06
    cp $ca
    or $47
    rst $38
    daa
    rst $38
    ld a, c
    ld l, a
    cp b
    rst $28
    sbc h
    rst $38
    add a
    rst $38

jr_039_6487:
    or b
    rst $38
    ld c, a
    ld c, a
    inc b
    rlca

jr_039_648d:
    inc bc
    inc bc
    ld [hl-], a
    cp $bc
    call z, $e29e
    ld a, [bc]
    cp $04
    db $fc
    inc c
    db $fc
    add d
    cp $fc

jr_039_649e:
    db $fc
    ld bc, $f0fe
    inc e
    inc d
    ld bc, $0046
    ld [hl], a
    ld c, c
    ld l, [hl]
    ld d, e
    ld l, h
    ld d, a
    ld bc, $0c50
    ld a, h
    ld d, a
    inc a
    ccf
    ld a, [bc]
    rrca
    dec e
    rra
    ld h, b
    ld a, a
    sbc h
    rst $38
    ld d, d
    ld [hl], e
    inc hl
    inc hl
    or d
    cp $7c
    call z, $e25e
    sbc d
    and $0c
    db $f4
    inc a
    db $fc
    inc d
    db $fc
    ld hl, sp-$08
    ld bc, $0200
    ld sp, hl
    sbc a
    sub $af
    db $dd
    and a
    add sp, -$61
    xor l
    rst $10
    ld bc, $0210
    sbc l
    di
    ccf
    pop hl
    ld l, e
    push de
    db $eb
    sub l
    db $eb
    push de
    ld l, l
    ld d, a
    ld a, h
    ld d, a
    ld a, [hl-]
    ccf
    ld [de], a
    rra
    jr z, jr_039_6533

    ld b, a
    ld a, a
    ld bc, $002c
    ld a, a
    push de
    xor e

Call_039_64fc:
    rst $38
    sub c
    rst $38
    sbc c
    rst $38
    ld l, $fe
    ret z

    ld hl, sp+$01
    inc a
    nop
    nop
    ld bc, $0005
    nop
    ld bc, $0301
    ld [bc], a
    add e
    add d
    ld e, e
    ld e, d
    push hl
    db $fd
    ld [hl], e
    ld a, a
    pop af
    cp $e0
    ldh [$f0], a
    db $10
    ld hl, sp+$68
    sub c
    sub c
    jp c, $e75a

    ld a, a
    adc $fe
    adc a
    ld a, a
    cpl
    jr c, jr_039_658d

jr_039_652e:
    ld l, l
    ld a, h
    ld b, a
    db $fc
    sub a

jr_039_6533:
    rst $38
    sub e
    rst $38
    adc b
    ld c, e
    ld a, a
    ld a, h
    ld a, h
    db $fc
    inc e
    cp $b6
    ld [hl], $ea
    ccf
    push hl
    rst $38
    push bc
    db $fd
    rra
    adc [hl]
    cp $f0
    ldh a, [rP1]
    nop
    jr c, jr_039_6587

    ld a, h
    ld b, h
    cp $92
    rst $28
    xor e
    ld c, a
    ld c, e
    rst $38
    ei
    dec sp
    ccf
    dec b

jr_039_655c:
    ld a, [$80f4]
    add b
    ld b, b
    ret nz

    jr c, jr_039_655c

    jr c, jr_039_652e

    ld a, l
    ld a, a
    dec de
    inc e
    ccf
    jr c, jr_039_657c

    ld [$080f], sp
    dec bc
    inc c
    inc b
    rlca
    inc bc
    inc bc
    cp h
    call nz, $ccfc
    ld a, [c]
    ld c, [hl]

jr_039_657c:
    ld a, [c]
    ld l, $fc
    sbc h
    xor b
    ret c

    ld c, b
    ld hl, sp+$05
    ld a, $00

jr_039_6587:
    ldh [$e0], a
    ldh a, [$90]
    ld a, b
    ld l, b

jr_039_658d:
    dec a
    dec h
    rra
    rla
    rst $30
    dec b
    ld c, l
    rrca
    rlca
    ld a, [bc]
    rrca
    ld a, [bc]
    dec bc
    ld c, $06
    dec b
    ld l, l
    dec b
    or d
    ld l, [hl]
    cp h
    ld e, h
    db $fc
    ld d, h
    ld h, h
    db $fc
    ld hl, sp-$08
    rlca
    rlca
    rrca
    ld [$161f], sp
    add hl, bc
    add hl, bc
    dec de
    ld a, [de]
    rst $30
    cp $3b
    ld a, $7f
    ld a, [hl]
    dec b
    ld d, [hl]
    nop
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret c

    ld e, b
    xor a
    cp a
    call c, $befc
    cp $3f
    ld a, $7f
    ld h, [hl]
    ld l, a
    ld d, c
    rst $38
    and b
    rst $28
    or b
    cp a
    ld hl, sp+$71
    ld a, a
    rrca
    rrca
    db $f4
    db $fc
    ld a, [$fe66]
    ld b, d
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld de, $fed2
    ld a, $3e
    nop
    ld bc, $0004
    nop
    ld [$cf08], sp
    rst $08
    ld a, a
    ld a, a
    ld [hl], l
    ld a, d
    db $fd
    or a
    ld d, l
    ld a, d
    scf
    ccf
    ld a, [hl+]
    ld a, [hl+]
    xor d
    xor d

Jump_039_65ff:
    sbc h
    sbc h
    ret c

    ret c

    ld a, h
    db $fc
    ld hl, sp+$78
    ld a, b
    add sp, $58
    ld hl, sp+$1a
    rra
    jr jr_039_662e

    ccf
    ccf
    ccf
    ccf
    ld bc, $0401
    db $fc
    ld a, [c]
    add sp, -$18
    ret z

    ret z

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    inc b
    db $fc
    ld a, [c]
    inc b
    jr nz, jr_039_6628

jr_039_6628:
    inc b
    ld b, e
    nop
    inc c
    inc c
    inc b

jr_039_662e:
    ld a, [hl+]
    ld b, $e0
    ldh [$e0], a
    ldh [rDIV], a
    ld a, [$54f4]
    ld d, h
    ld d, l
    ld d, l
    add hl, sp
    add hl, sp
    dec de
    dec de
    ccf
    ccf
    inc b
    ld b, e
    ld bc, $001f
    nop
    db $10
    db $10
    di
    di
    cp $fe
    cp $fe
    rst $38
    db $fd
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    inc b
    jr c, jr_039_6664

    inc b
    add b
    nop
    inc b

jr_039_6664:
    add b
    nop
    jr nc, jr_039_6698

    inc b
    ld a, [$02f4]
    ld [bc], a
    dec b
    dec b
    dec bc
    dec bc
    rlca
    rlca
    inc b
    jr z, jr_039_6676

jr_039_6676:
    ld b, $06
    inc b
    cp $f0
    jr nz, jr_039_669d

    jr nc, jr_039_66af

    ld a, h
    ld a, h
    and $fe
    add $fa
    adc $f6
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    inc b
    xor h
    nop
    inc b
    jr z, jr_039_6695

    add $fa

jr_039_6695:
    jp hl


    rst $38
    sub [hl]

jr_039_6698:
    cp $fc
    cp $ff
    rst $38

jr_039_669d:
    and $e6
    ld b, b
    ld b, b
    inc b
    adc $02
    or $fe
    call c, $fcfe
    cp h
    ld hl, sp-$08
    inc a
    inc a
    inc b

jr_039_66af:
    and b
    cp $00
    ld bc, $0001
    nop
    ld a, [bc]
    ld a, [bc]
    dec c
    rrca
    ld [bc], a
    inc bc
    rlca
    rlca
    ld [$130f], sp
    rra
    ld [hl], $3d
    push de
    rst $38
    or [hl]
    db $fd
    ld e, e
    ld a, a
    and [hl]
    rst $38
    or [hl]
    rst $38
    ld d, [hl]
    ld a, a
    ld e, d
    ld a, a
    dec l
    dec l
    dec l
    ccf
    or $fd
    xor a
    rst $38
    ld l, c
    ld a, a
    ld e, e
    ld a, a
    or a
    rst $38
    jp z, $01ca

    cp $f0
    ret c

    ret c

    and h
    db $fc
    ld e, b
    ld a, b
    and a
    rst $38
    ld hl, sp-$01
    jr nc, jr_039_6730

    ld hl, HeaderManufacturerCode
    ld a, [$80f4]
    add b
    ld b, b
    ret nz

    ldh [$e0], a
    and b
    ld h, b
    ld h, a
    ld a, a
    ld e, l
    ld a, a
    sub e
    rst $38
    or l
    rst $38
    ld b, l
    ld a, a
    cp d
    rst $38
    sub l
    rst $38
    ld a, d
    ld a, d
    ld a, b
    ld hl, sp-$5a
    ld a, [hl]
    push de
    rst $38
    adc d
    cp $56
    cp $da
    cp $55
    rst $30
    or e
    or e
    ld l, e
    ld a, a
    ld e, l
    ld a, a
    xor e
    rst $38
    cp c
    rst $38
    ld c, e
    ld a, a
    cp d
    rst $38
    call $00cd
    nop
    ld a, h
    db $fc

jr_039_6730:
    xor d
    ld a, [hl]
    push af
    rst $38
    sub l
    rst $38
    ld l, e
    rst $38
    xor d
    cp $76
    db $76
    ld bc, $f8fe
    ld a, [bc]
    rrca
    dec d
    rra
    jr nc, jr_039_6784

    ret nc

    rst $38
    or h
    rst $38
    ld bc, $0814
    ld d, $fe
    ld e, d
    cp $b4
    db $fc
    jp z, $dafe

    cp $d4
    db $fc
    or h
    db $fc
    ld l, b
    ld l, b
    ld a, [hl+]
    ccf
    push af
    rst $38
    xor l
    ld bc, $0725
    xor b
    ld hl, sp+$5e
    cp $6a
    cp $2c
    db $fc
    or h
    db $fc
    jp c, $a6fe

    and [hl]
    ld bc, $ffa0
    rrca
    nop
    ld bc, $1802
    jr jr_039_6788

    inc c
    ld h, a
    ld h, a
    inc a
    ccf
    add hl, bc
    ld c, $0b

jr_039_6784:
    dec c
    dec sp
    dec a
    ld c, c

jr_039_6788:
    ld c, [hl]
    inc b
    rlca
    rrca
    rrca
    ld [de], a
    rra
    jr nz, jr_039_67d0

    inc d
    rra
    dec bc
    rrca
    inc e
    inc e
    nop
    nop
    jr nz, @-$1e

jr_039_679b:
    ldh a, [$f0]
    ld c, b
    ld hl, sp+$04
    db $fc
    jr z, jr_039_679b

    ret nc

    ldh a, [$50]

jr_039_67a6:
    ld [hl], b
    jr c, jr_039_67e1

    inc c
    rrca
    inc de
    ld [bc], a
    dec d
    inc bc
    ld a, [bc]
    ld c, $02
    inc e
    nop
    jr nc, jr_039_67a6

    ret z

    ld [bc], a
    dec h
    inc bc
    jr c, jr_039_67f4

    ld [bc], a
    db $fc
    ldh a, [rTMA]
    ld b, $01
    ld bc, $6363
    inc a
    ccf
    ld [$020f], sp
    ld e, b
    nop

jr_039_67cc:
    jr c, jr_039_680d

    ld [bc], a
    db $fc

jr_039_67d0:
    ldh a, [$c0]

jr_039_67d2:
    ret nz

    jr nz, @-$1e

    ld [hl], b
    sub b
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ld [hl], b
    sub b
    ld h, h
    ld h, a
    ld [bc], a
    ld [de], a

jr_039_67e1:
    ld [bc], a
    ld hl, $1b3f
    rra
    dec bc
    rrca
    rlca
    rlca
    jr nz, jr_039_67cc

    ret nz

    ret nz

    ld b, b
    ret nz

    jr nz, jr_039_67d2

    ld [bc], a
    add b

jr_039_67f4:
    ld [bc], a
    ldh [$e0], a
    ld l, h
    ld l, a
    ld [bc], a
    ld [hl-], a
    nop
    ld de, $0d1f

Call_039_67ff:
    rrca
    inc b
    rlca
    rlca
    rlca
    ld [bc], a
    ld e, $00
    ld [bc], a
    ld h, h
    nop
    ld [bc], a
    add b
    nop

jr_039_680d:
    add b
    add b
    ret nz

    ret nz

    ld [bc], a
    cp $f6
    ld [bc], a
    ld e, d
    ld [bc], a
    ld c, b
    ld c, a
    inc b
    rlca
    ld c, $02
    inc de
    inc bc
    ld a, [bc]
    rrca
    ld [bc], a
    ld a, [de]
    nop
    jr nz, @-$1e

    ld [hl], b
    ld [bc], a
    inc hl
    inc bc
    ld d, b
    ldh a, [$f8]
    ld hl, sp+$00
    nop
    inc c
    ld [bc], a
    db $c3, $05, $1f


    rra
    ld [bc], a
    db $fc
    ldh a, [$30]
    ld [bc], a
    db $d3
    dec b
    ld [bc], a
    ld c, b
    ld [bc], a
    nop
    ld bc, $0201
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    add hl, bc
    rrca
    ld a, [bc]
    dec c
    inc a
    ccf
    ccf
    cpl
    ld l, a
    ld [hl], h
    sbc [hl]
    ei
    rst $38
    ld a, [$acf7]
    db $fd
    sbc a
    ld a, a
    ld e, d
    rst $28
    sbc a
    ldh a, [$f0]
    ld bc, $fffe
    ld bc, $bbfe
    rst $28
    cp d
    ld [hl], a
    ld e, h
    ld a, l
    ld e, a
    rst $28
    sbc e
    ld a, a
    ld a, [hl]
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0002
    ld c, $0f
    inc c
    rrca
    inc l
    cpl
    ld [hl], l
    ld d, a
    ld bc, $f0fc
    add b
    add b
    ret nz

    ret nz

    ld h, b
    ldh [$a0], a
    ld h, b
    or b
    ldh a, [$f8]
    ld a, b
    rst $10
    or a
    cp c
    rst $38
    or $bf
    ld e, a
    ld [hl], l
    ld e, a
    ld [hl], l
    ei
    and [hl]
    rst $18
    cp h
    rst $30
    rst $30
    ld a, h
    and h
    ld a, [$face]
    adc $6f
    pop af
    rst $38
    db $ed
    ld a, [$5ee6]
    sbc $80
    add b
    ld bc, $f0fe
    ld bc, $0242
    ld c, [hl]
    ld c, a
    db $ec
    xor a
    xor h
    rst $28
    ld bc, $f2fa
    ld bc, $0654
    push hl
    and a
    cp a
    rst $38
    ld d, a
    ld a, l
    ld e, l
    ld a, [hl]
    sbc $b7
    cp a
    db $f4
    ei
    rst $20
    ld a, $3e
    ld hl, sp+$78
    ld bc, $0070
    cp d
    adc $ef
    pop af
    rst $38
    ld l, l
    cp d
    and [hl]
    ld e, $1e
    ld bc, $0400
    rrca
    rrca
    ccf
    ccf
    ld l, a
    ld e, a
    scf
    cpl
    ld a, h
    ld a, a
    db $eb
    sbc h
    db $fc
    rst $38
    rst $30
    xor a
    ei
    sbc l
    ld a, a
    ld e, h
    db $eb
    sbc e
    ld bc, $081e
    ld bc, $03c8
    ccf
    ld c, h
    ld a, a
    ld a, e
    ld e, h
    ld a, h
    ld e, a
    rst $28
    sbc a
    ei
    db $fd
    ld c, a
    ld a, h
    ld a, e
    ld a, e
    nop
    ld bc, $1900
    add hl, de
    ccf
    ld l, $2f
    ld a, [hl-]
    ei
    cp $7e
    ld c, c
    rst $30
    xor $f5
    sbc a
    rst $18
    or $bf
    add sp, -$01
    and [hl]
    db $fd
    cp a
    rst $38
    rst $00
    rst $38
    call nz, $333f
    ld a, h
    ld b, h
    ld a, b
    ld a, b
    ld a, [$fe3e]
    jp z, $ea7e

    cp $fe
    ld a, [$f04a]
    sub b
    ld hl, sp-$08
    ld a, b
    ld a, b
    ld e, a
    ld a, h
    ld a, a
    ld d, e
    ld a, [hl]
    ld d, a
    ld a, [hl]
    ld a, a
    ld e, a
    ld d, e
    rrca
    add hl, bc
    rra
    rra
    ld e, $1e
    db $fd
    rla
    rst $38
    ld h, l
    cp a
    db $fd
    ccf
    db $e3
    ld a, a
    db $e3
    db $fc
    call z, Call_000_223e
    ld e, $1e
    rrca
    rrca
    rra
    db $10
    inc sp
    dec l
    ld h, a
    ld e, e
    ld h, [hl]
    ld e, e
    rst $00
    cp d
    db $dd
    or a
    rst $18
    or a
    add e
    add e
    rst $20
    push hl
    cp $1a
    cp $0a
    db $f4
    adc h
    db $fc
    ld e, h
    cp $16
    cp a
    ld sp, hl
    ld a, l
    ld d, [hl]
    ld a, l
    ld d, [hl]
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $38
    sbc d
    ld a, a
    ld a, c
    scf
    ccf
    ccf
    ccf
    rst $18
    pop hl
    rst $38
    ld a, l
    xor a
    rst $30
    ld hl, sp+$18
    ld hl, sp+$48
    ld hl, sp-$68
    ld a, h
    add h
    db $fc
    db $fc
    rlca
    rlca
    rra
    add hl, de
    ld l, $37
    ld d, a
    ld l, a
    xor h
    rst $18
    xor e
    sbc $dd
    xor a
    ei
    xor a
    cp $af
    rst $38
    xor d
    rst $38
    rst $28
    rst $38
    add sp, -$09
    cp b
    db $fc
    and a
    ld a, a
    ld [hl], e
    ld e, $1e
    rst $18
    pop hl
    rst $38
    dec a
    rst $28
    ccf
    db $f4
    db $ec
    cp $b2
    db $fc
    db $fc
    ret z

    ld hl, sp-$08
    ld hl, sp+$19
    add hl, de
    ccf
    ld h, $37
    ld a, [hl+]
    ld [hl], a
    ld c, e
    ld h, a
    ld e, c
    ld a, e
    ld d, l
    ei
    sub l
    res 6, a
    jp c, $fab7

    cp a
    db $ed
    cp a
    rst $28
    cp [hl]
    db $db
    or $7d
    ld h, l
    ld hl, sp-$78
    ldh a, [$f0]
    or [hl]
    jp c, $fabe

    cp $ea
    cp $ea
    cp $de
    db $fc
    inc a
    nop
    inc l
    nop
    nop
    ret nz

    nop
    ld a, a
    ld b, d
    ld [hl], a

jr_039_6a08:
    ld c, e
    push hl
    sbc e
    rst $30
    sbc c
    rst $30
    cp c
    rst $10
    xor e
    nop
    ld bc, $0105
    ld bc, $0302
    inc b
    rlca
    inc b
    rlca
    ld [$0f0f], sp
    rrca
    rst $38
    cp $67
    ld a, l
    ldh a, [$f0]
    jr nz, jr_039_6a08

    rst $00
    rst $00
    ld b, a
    push bc
    cpl
    rst $28
    db $fc
    db $f4
    cp $fe
    call z, $297c
    ld a, $7c
    ld a, a
    ld a, e
    ld e, a
    dec a
    daa
    inc e
    rla

jr_039_6a3e:
    ld c, $0f
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    jr z, jr_039_6a3e

    ld [hl], b
    ldh a, [$b0]
    ldh a, [$78]
    ret c

    ld a, h
    call nz, $fcfc
    ret nz

    ret nz

    add b
    add b
    rra
    rra
    ld [$060f], sp
    rlca
    dec b
    inc b
    nop
    rlca
    rlca
    ld a, a
    ld a, a
    add hl, sp
    ccf
    nop
    nop
    add b
    add b
    ld b, a
    rst $00
    daa
    push hl
    rra
    rst $38
    db $f4
    db $fc
    rst $38
    rst $18
    db $76
    cp [hl]
    inc c
    rrca
    ld b, $07
    inc bc
    inc bc
    ld [bc], a
    dec b
    ld h, l
    ld bc, $0303
    ld [bc], a
    ld [bc], a
    inc [hl]
    call c, $f878
    sbc h
    db $fc
    cp [hl]
    ld [c], a
    ld a, h
    call z, $fcfc
    jr jr_039_6aa7

    nop
    nop
    dec b
    ld h, b
    ld b, $01
    ld bc, $0101
    nop
    nop
    dec b
    ld [hl], b
    nop
    sbc [hl]
    cp $bc
    db $ec

jr_039_6aa1:
    ld a, h
    call nz, $f27e
    adc [hl]
    adc [hl]

jr_039_6aa7:
    add b
    add b
    rrca
    rrca
    inc b
    rlca
    db $e3
    db $e3
    ld [c], a
    and e
    db $f4
    rst $30
    ld l, $3f
    ld a, e
    ld a, a
    jr nz, jr_039_6af8

    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    jr nz, jr_039_6aa1

    db $10
    ldh a, [$38]
    ld hl, sp-$11
    rst $38
    ld [bc], a
    cp $1c
    rra
    dec sp
    ccf
    inc a
    cpl
    inc e
    rla
    ld c, $0b
    ld b, $07
    dec b

jr_039_6ad6:
    adc b
    nop
    inc e
    db $fc
    add sp, -$08
    jr jr_039_6ad6

    inc e
    db $f4
    ld a, $e2
    ld a, $fe
    and b
    ldh [rLCDC], a
    ld b, b
    dec b
    and b
    rst $38
    dec c
    nop
    ld bc, $0002
    nop
    inc b
    inc b
    set 1, a
    ld a, a
    ld a, b
    ccf

jr_039_6af8:
    ld [hl-], a
    dec d
    rra
    ld a, [hl+]
    dec a
    dec sp
    ccf
    ld a, l
    ld c, a
    inc a
    ccf
    ccf
    daa
    ld a, $27
    ld a, [de]
    dec de
    ld bc, $0201
    cp $f0
    ld a, h
    db $f4
    ld a, b
    ret z

    ld hl, sp-$38
    or b
    or b
    add b
    add b
    ld [bc], a
    ld a, [$0bf6]
    rrca
    rrca
    ld [$f2ff], sp
    ld [hl], l
    ld a, a
    ld a, [hl+]
    dec a
    ld a, e
    ld a, a
    ld [bc], a
    cp $f0
    inc e
    inc e
    ld c, $0e
    rlca
    ld [bc], a
    ld c, b
    ld bc, $0303
    nop
    nop
    jr nz, jr_039_6b58

    ld e, b
    ld a, b
    db $f4
    adc h
    cp $06
    ld a, [$661e]
    cp d
    pop af
    cp a
    ld [bc], a
    db $fc
    ld a, [c]
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld c, l
    ld bc, $0000
    rst $38
    rst $08
    rst $30
    db $dd
    rst $28
    cp c
    ld a, [hl]
    cp $b8

jr_039_6b58:
    cp b
    ld [bc], a
    db $f4
    ld a, [$3d3d]
    rra
    rra
    rrca
    rrca
    ld bc, $fa01
    adc $b6
    cp $fa
    adc [hl]
    or $ce
    ld a, $32
    inc c
    inc c
    ld [bc], a
    db $fc
    ld sp, hl
    inc a
    ld e, a
    ld a, [hl]
    ld a, a
    ld e, [hl]
    ccf
    ld [hl-], a
    rra
    db $10
    rra
    jr jr_039_6bac

    ld a, [hl-]
    daa
    ld a, $1b
    ld a, [de]
    ld [bc], a
    ld a, [de]
    ld [bc], a
    ldh a, [rNR10]
    add sp, $38
    ret z

    ld a, b
    ld [bc], a
    ld h, $0f
    nop
    ld hl, sp+$7f
    ld [bc], a
    xor e
    ld bc, $a002
    rst $38
    dec c
    nop
    ld bc, $3302
    inc sp
    ld c, [hl]
    ld a, l
    ld l, h
    ld [hl], a
    ld b, [hl]
    ld a, a
    ld [hl], c
    ld a, a
    sbc a
    rst $38
    ld e, a
    ld l, [hl]
    ld h, a

jr_039_6bac:
    ld a, l
    ld c, a
    ld a, l
    sbc a
    cp $7b
    ld a, a
    ld b, [hl]
    ld a, a
    or $dd
    or l
    rst $38
    xor $ff
    dec sp
    dec sp
    ld [hl], b
    ld [hl], b
    sbc c
    ld sp, hl
    ld e, [hl]
    ld l, a
    ld h, [hl]
    ld a, l
    add l
    rst $38
    ld a, [hl]
    ld a, a
    sbc a
    rst $28
    ld h, a
    ld a, l
    adc a
    db $fd
    ld a, a
    ld a, [hl]
    ld a, c
    ld a, a
    ld h, d
    ld e, a
    sub [hl]
    db $fd
    ld h, h
    ld a, a
    ld a, $3f
    ld bc, $0201
    nop
    nop
    ld l, l
    ld [bc], a
    dec b
    ld bc, $ff9c
    ld e, a
    ld l, a
    ld h, b
    ld a, a
    ret nz

    ret nz

    ld l, h
    xor h
    or d
    cp $69
    rst $30
    pop bc
    rst $38
    ld e, [hl]
    cp $fc
    db $e4
    cp $da
    ld c, [hl]
    ld a, a

Call_039_6bfc:
    sbc a
    rst $38
    ld [bc], a
    inc d
    ld [bc], a
    or h
    ld [bc], a
    dec de
    ld bc, $da7e
    db $fc
    db $e4
    cp a
    rst $38
    ld a, c
    rst $30
    ld l, [hl]
    cp [hl]
    ld h, $fe
    ld [hl], d
    cp $dc
    call c, $2002
    inc b
    add h
    rst $38
    ld a, [hl]
    ld a, a
    sbc c
    rst $28
    ld h, e
    ld a, a
    inc c
    inc c
    sub d
    sbc [hl]
    ld h, l
    ei
    ld l, c
    cp a
    ld l, $fe
    ld a, h
    db $fc
    ld [bc], a
    ld e, h
    nop
    adc [hl]
    rst $38
    ld a, h
    ld a, a
    add hl, sp
    ccf
    ld [bc], a
    ld [hl], $00
    ld h, l
    ld [bc], a
    dec sp
    ld bc, $7002
    nop
    cp h
    db $fc
    ld h, d
    cp $65
    cp e
    xor a
    rst $38
    ld [hl], d
    cp $9c
    sbc h
    inc sp
    inc sp
    ld c, h
    ld a, a
    ld [bc], a
    inc b
    nop
    ld [hl], d
    ld a, a
    sbc l
    rst $38
    ld e, [hl]
    ld l, a
    ld h, d
    ld a, a
    ld c, c
    ld a, a
    sbc [hl]
    rst $38
    ld a, c
    ld a, a
    ld b, l
    ld a, a
    rst $30
    rst $18
    or a
    rst $38
    db $ec
    db $fc
    jr c, jr_039_6ca2

    ld [bc], a
    jr nz, jr_039_6c6f

    ld h, h
    ld a, a

jr_039_6c6f:
    add [hl]
    rst $38
    ld a, c
    ld a, a
    sbc [hl]
    rst $28
    ld h, c
    ld a, a
    adc [hl]
    rst $38
    ld a, l
    ld a, a
    ld a, c
    ld a, a
    ld h, e
    ld e, a
    sub [hl]
    rst $38
    ld h, l
    ld a, l
    inc a
    inc a
    nop
    nop
    nop
    ld bc, $6001
    ld h, b
    ld e, b
    ld a, b
    ld h, [hl]
    ld a, [hl]
    ld a, c
    ld a, a
    or b
    rst $38
    cp d
    rst $38
    rst $08
    db $fd
    call z, $baff
    rst $38
    pop af
    rst $38
    sbc [hl]
    rst $38
    cp e
    rst $38

jr_039_6ca2:
    db $76
    ld a, a
    inc de
    rra
    dec hl
    ccf

jr_039_6ca8:
    inc a
    inc a
    or [hl]
    cp $12
    cp $1e
    cp $b2
    cp $f6
    cp $dc
    db $fc
    jr nc, jr_039_6ca8

    ldh [$e0], a
    jp c, $91ff

    rst $38
    cp $ff
    sub e
    rst $38
    ld e, [hl]
    ld a, a
    ld [hl], a
    ld a, a
    add hl, de
    rra
    ld c, $0e
    cp d
    cp $1e
    cp $12
    cp $ba
    cp $dc
    db $fc
    sub b
    ldh a, [$a8]
    ld hl, sp+$78
    ld a, b
    inc bc
    inc bc
    ld c, $0f
    ld [de], a
    rra
    ld a, [hl+]
    ccf
    add hl, hl
    ccf
    ld e, l
    ld a, a
    ld d, l
    ld a, a
    ld d, [hl]
    ld a, a
    nop
    nop
    add b
    add b
    ldh a, [$f0]
    ld c, b
    ld hl, sp-$74
    db $fc
    inc [hl]
    db $fc
    cp b
    add sp, $48
    ld hl, sp-$54
    rst $38
    xor l
    rst $38
    cp e
    rst $38
    ld e, c
    ld e, a
    cpl
    ccf
    inc l
    ccf
    ld e, c
    ld a, a
    rst $28
    rst $28
    ld l, b
    ld hl, sp-$50
    ldh a, [$38]
    ld hl, sp-$1c
    db $fc
    inc [hl]
    db $fc
    sbc h
    db $fc
    xor b
    ld hl, sp-$08
    ld hl, sp-$5a
    rst $38
    xor a
    rst $38
    xor l
    rst $38
    cp c
    rst $38
    ld h, [hl]
    ld a, a
    ld e, h
    ld a, a
    xor d
    rst $28
    rst $08
    rst $08
    ld l, b
    ld hl, sp+$30
    ldh a, [$d0]
    ldh a, [$90]
    ldh a, [$d0]
    ldh a, [$f8]
    ld hl, sp+$54
    db $fc
    db $fc
    db $fc
    ld h, b
    ld h, b
    ld a, b
    ld a, b
    ld d, [hl]
    ld a, [hl]
    ld c, l
    ld a, a
    and h
    rst $38
    xor e
    rst $38
    xor c
    rst $38
    xor c
    rst $38
    and l
    rst $38
    sub [hl]
    rst $38
    ld d, a
    ld a, a
    ld e, d
    ld a, a
    ld e, [hl]
    ld a, a
    ld [hl-], a
    ccf
    ld bc, $001c
    ld c, d
    cp $d2
    cp $d6
    cp $b6
    cp $74
    db $fc
    inc a
    db $fc
    sbc b
    ld hl, sp-$10
    ldh a, [$ab]
    rst $38
    xor h
    rst $38
    cp a
    rst $38
    or d
    rst $38
    db $fc
    rst $38
    ld l, b
    ld a, a
    inc sp
    ccf
    ld e, $1e
    xor d
    cp $6a
    cp $fa
    cp $9a
    cp $fc
    ld bc, $0349
    nop
    ld bc, $1c01
    inc e
    inc hl
    ccf
    ld c, l
    ld a, a
    ld e, h
    ld a, a
    ld a, [hl+]
    cpl
    ld l, e
    ld l, l
    db $fc
    rst $38
    cp a
    cp e
    jr c, jr_039_6dd2

    call nz, $b2fc
    cp $3a
    cp $54
    db $f4
    sub $b6
    ccf
    rst $38
    db $fd
    db $dd
    cpl
    inc a
    ld c, a
    ld a, a
    ld b, h
    ld a, a
    ld h, h
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    inc a
    inc a
    ld [hl], b
    ld [hl], b
    ld a, [$f13e]
    rst $38
    dec e
    rst $38
    ccf
    rst $38
    cp $fe
    ld hl, sp-$08
    inc a
    inc a
    nop
    nop
    rlca
    rlca
    ld [$130f], sp
    rra

jr_039_6dce:
    dec d
    rra
    ld c, h
    ld c, a

jr_039_6dd2:
    xor $ef
    ld a, [$b1ff]
    cp a
    add b
    add b
    ldh [$e0], a
    jr nc, jr_039_6dce

    db $10
    ldh a, [$50]
    ldh a, [rBCPS]
    cp b
    ld [hl], b
    ldh a, [$f8]
    cp b
    jr nz, @+$41

    ld [hl+], a
    ccf
    ld [hl-], a
    ccf
    inc a
    ccf
    rra
    rra
    rra
    rra
    rrca
    rrca
    ld e, $1e
    ld hl, sp-$38
    ld a, b
    ld hl, sp+$18
    ld hl, sp+$08
    ld hl, sp+$18
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$78]
    ld a, b
    ld bc, $0a40
    and c
    ld bc, $0d4f
    ld b, b
    ld a, a
    adc b
    rst $38
    sbc b
    rst $38
    ld a, h
    ld a, a
    ld bc, $006a
    rrca
    rrca
    rlca
    rlca
    ld bc, $0470
    db $10
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$f0], a
    ldh a, [rSB]
    nop
    nop
    ld c, a
    ld a, a
    ld e, a
    ld a, a
    cpl
    cpl
    ld l, a
    ld l, a
    rst $38
    rst $38
    cp e
    cp a
    ld bc, $0010
    ld a, [c]
    cp $fa
    cp $f4
    db $f4
    or $f6
    rst $38
    rst $38
    db $dd
    db $fd
    ld e, h
    ld a, a
    add [hl]
    rst $38
    or b
    rst $38
    pop af
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    ld bc, $003c
    inc a
    db $fc
    ld h, d
    cp $0a
    cp $8e
    cp $fe
    cp $fc
    db $fc
    inc a
    inc a
    ld c, $0e
    nop
    ld bc, $0001
    nop
    dec de
    dec de
    dec d
    rra
    inc c
    rrca
    ld [$140f], sp
    rra
    ld [de], a
    rra
    scf
    dec sp
    inc b
    inc b
    xor $ea
    ld e, [hl]
    ld a, [$fc1c]
    ld a, [bc]
    cp $1a
    cp $2a
    cp $fa
    xor $5b
    ld a, [hl]
    ld [hl], a
    ld a, a
    ld d, b
    ld a, a
    ld h, b
    ld a, a
    jr nz, jr_039_6ed2

    ccf
    ccf
    ld d, $19
    rrca
    rrca
    rst $28
    ccf
    ld sp, hl
    rst $38
    ld c, c
    rst $38
    ld c, a
    rst $38
    ld a, [bc]
    cp $fa
    cp $fc
    db $fc
    ld hl, sp-$08
    ld d, a
    ld a, h
    adc a
    rst $38
    ld [c], a
    rst $38
    sub d
    rst $38
    sub b
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    sbc $7e
    ld a, [c]
    cp $12

Jump_039_6ebe:
    cp $1e
    cp $14
    db $fc
    db $f4
    db $fc
    ld l, b
    sbc b
    ldh a, [$f0]
    ret nz

    ret nz

    rst $38
    cp a
    ld a, l
    ld e, a
    dec [hl]
    ccf
    ld [hl+], a

jr_039_6ed2:
    ccf
    ld sp, $403f
    ld a, a
    ld hl, $003f
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [$f0]
    ldh a, [$e8]
    cp b
    db $fc
    call nz, Call_000_3f3e
    ld c, h
    ld a, a
    ld b, h
    ld a, a
    ld b, h
    ld a, a
    ld h, d
    ld bc, HeaderOldLicenseeCode
    rra
    rra
    inc a
    db $e4
    jr c, @-$06

    ld c, h
    db $fc
    inc h
    db $fc
    inc a
    db $fc
    add $fe
    or l
    rst $08
    rst $38
    rst $38
    ld a, $3f
    ld c, [hl]
    ld a, a
    ld b, d
    ld a, a
    ld b, c
    ld a, a
    ld e, c
    ld a, a
    daa
    ccf
    dec l
    inc sp
    ld bc, $028e
    inc [hl]
    db $fc
    inc c
    db $fc
    adc h
    db $fc
    cp $fe
    push af
    rst $38
    ei
    ei
    db $10
    db $10
    dec sp
    dec sp
    dec [hl]
    ccf
    inc e
    rra
    jr z, @+$41

    jr nc, @+$41

    scf
    ccf
    jr c, jr_039_6f73

jr_039_6f34:
    nop
    nop
    db $ec
    db $ec
    ld d, h
    db $fc
    jr jr_039_6f34

    ld [$04f8], sp
    db $fc
    db $f4
    db $fc
    ld c, $fe
    ld h, b
    ld a, a
    ld d, b
    ld a, a
    ld c, b
    ld a, a
    ld a, b
    ld a, a
    jr nz, jr_039_6f8d

    ld a, a
    ld a, a
    ld e, c
    ld h, a
    ld a, $3e
    ld a, [bc]
    cp $0f
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    rlca
    rst $38
    cp $fe
    db $fc
    db $fc
    ld a, b
    ld a, b
    nop
    ld bc, $1b01
    dec de
    ld l, a
    ld a, h
    cp a
    ld hl, sp-$13
    ld_long a, $ffa0
    ld [hl], d
    ld a, a

jr_039_6f73:
    ld a, [hl-]
    dec a
    ld c, a
    ld a, b
    ret nz

    ret nz

    ldh [rNR41], a
    db $fc
    inc e
    or h
    ld e, h
    inc b
    db $fc
    ld c, h
    db $fc
    ld e, b
    cp b
    cp $1e
    ld c, l
    ld a, a
    ld a, [hl-]
    ccf
    rrca
    rrca

jr_039_6f8d:
    rla

jr_039_6f8e:
    rra
    ld hl, $223f
    ld a, $3c
    inc a
    ld a, h
    ld a, h
    or l
    rst $38
    ld a, e
    rst $38
    push af
    rst $38
    xor $fe
    jp nz, Jump_000_3efe

    ld a, $1f
    rra
    nop
    nop
    inc bc
    inc bc
    ld [hl], l
    db $76
    xor a
    db $fc
    jp c, $aaff

    rst $38
    ld a, c
    ld a, [hl]
    ld c, a
    ld a, [hl]
    ld c, c
    ld a, a
    ld bc, $0010
    ld [hl], b
    sub b
    jr nc, jr_039_6f8e

    ld [$28f8], sp
    ld hl, sp-$78
    ld a, b
    cp $1e
    ld h, c
    ld a, a
    jr c, jr_039_7009

    rrca
    rrca
    ld c, $0f
    inc c
    rrca
    ld d, $1f
    ld bc, $006b
    or l
    ld a, a
    sbc e
    rst $38
    ld [hl], l
    rst $38
    adc $ce
    ld b, b
    ret nz

    ld b, b
    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    inc bc
    inc bc
    dec b
    ld b, $0f
    inc c
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    add hl, bc
    ld c, $7f
    ld a, [hl]
    xor c
    rst $38
    ld bc, $0250
    ld a, $de
    dec c
    rst $38
    dec hl
    rst $38
    adc l
    ld a, a
    cp $1e
    reti


    rst $38
    xor b
    rst $38
    ld a, [hl]
    ld a, a
    dec c

jr_039_7009:
    rrca
    jr nc, jr_039_704b

    ld sp, $3f3f
    ccf
    inc a
    inc a
    or b
    ld [hl], b
    sub b
    ldh a, [rSVBK]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$30], a
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp+$01
    nop
    ld [bc], a
    rst $28
    ld hl, sp-$59
    ld hl, sp+$77
    ld a, b
    dec sp
    inc a
    ld c, a
    ld a, [hl]
    ld bc, $0210
    db $f4
    inc e
    db $e4
    inc e
    db $ec
    inc e
    ret c

jr_039_7039:
    jr c, jr_039_7039

    ld a, [hl]
    ld c, c
    ld bc, $0161
    ld bc, $0626
    sub l
    rst $38
    dec de
    rst $38
    db $fd
    rst $38
    and $01

jr_039_704b:
    scf
    dec b
    nop
    ld bc, $0002
    nop
    ld [hl-], a
    ld [hl-], a
    ccf
    dec l
    ld e, a
    ld d, l
    cp a
    ld a, [$f8af]
    and a
    cp $ff
    ei
    ld a, h
    ld c, a
    rst $08
    or a
    ld sp, hl
    rst $38
    ld e, e
    ld l, a
    ld e, a
    ld l, h
    dec sp
    inc l
    rra
    dec d
    ld c, $0e
    sub e
    rst $38
    rst $38
    rst $38
    ld c, c
    rst $38
    xor $fe
    cp $16
    db $fc
    db $e4
    sbc h
    sbc h
    add b
    add b
    ld [bc], a
    db $10
    rlca
    cpl
    dec a
    dec [hl]
    dec c
    dec c
    ld [bc], a
    jr nz, jr_039_708b

jr_039_708b:
    dec h
    rst $38
    or $fe
    ld hl, sp+$08
    db $fc
    add h
    ld a, b
    ld c, b
    jr nc, jr_039_70c7

    ld [bc], a
    db $fc
    ld a, [c]
    add hl, bc
    add hl, bc
    dec de
    ld a, [de]
    cpl
    dec a
    daa
    dec a
    ld b, a
    ld a, h
    nop
    nop
    jp $e7c3


    and l
    cp $ba
    cp $de
    ld a, h
    call nc, $f43c
    cp b
    ret c

    ld b, a
    ld a, l
    ld b, a
    ld a, [hl]
    ld c, e
    ld a, e
    ld c, d
    ld a, e
    ld [hl-], a
    inc sp
    ld d, $17
    rlca
    dec b
    inc bc
    inc bc
    call nz, Call_039_7c7c

jr_039_70c7:
    cp h
    jp c, $fcfe

    ld a, h
    cp $46
    cp $42
    db $fc
    ld [hl], h
    ret z

    ret z

    ld [bc], a
    ld [hl], b
    ld b, $12
    inc de
    inc bc
    inc bc
    ld bc, $c401
    ld a, h
    ld a, b
    cp b
    call nc, $fcfc
    ld a, h
    cp $42
    cp $52
    db $ec
    ld l, h
    ldh [$e0], a
    ld [bc], a
    nop
    ld [bc], a
    ccf
    ld [hl], $5f
    ld a, b
    ld e, a
    ld a, b
    adc a
    cp $83
    rst $38
    ret nz

    rst $38
    rst $00
    rst $38
    rst $08
    db $fc
    ld l, a
    ld a, c
    cpl
    add hl, sp
    ccf
    jr nc, jr_039_7126

    ld de, $0e0e
    ld b, b
    ld a, a
    ld b, a
    ld a, a
    ld c, a
    ld a, h
    cpl
    add hl, sp
    ld [bc], a
    ret z

    inc b
    add c
    rst $38
    pop af
    ld a, a
    ld sp, hl
    rra
    ld a, [$fa4e]
    ld c, [hl]
    db $fc
    db $e4
    sbc b
    sbc b
    add b
    add b
    ld [bc], a

jr_039_7126:
    and b
    db $fc
    nop
    ld bc, $1e02
    ld e, $6f
    ld l, a
    ld h, a
    ld h, a
    rrca
    rrca
    rrca
    rrca
    ld e, l
    ld e, a
    cp $bd
    xor $bf
    inc a
    inc a
    ld a, e
    ld a, e
    di
    di
    ld hl, sp-$08
    ld hl, sp+$78
    call c, $bcfc
    call c, $fe3a
    rst $20
    cp [hl]
    ei
    rst $38
    sub [hl]
    rst $38
    sbc a
    rst $38
    ld a, d
    ld a, a
    ld e, a
    ld d, a
    dec l
    inc sp
    rra
    rra
    ld a, [c]
    ld a, $ef
    rst $38
    scf
    db $fd
    ld a, [c]
    cp $3f
    rst $28
    add hl, sp
    jp hl


    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    ld c, $0e
    scf
    scf
    inc sp
    inc sp
    rlca
    rlca
    ld [bc], a
    ld b, $00
    rra
    rra
    jr nz, jr_039_71b9

    nop
    nop
    add b
    add b
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $f4
    cp $fe
    rst $28
    db $dd
    rst $30
    db $ed
    db $10
    rra
    daa
    ccf
    add hl, hl
    ccf
    ld e, e
    ld a, [hl]
    ld a, a
    ld a, a
    sbc c
    sbc a
    db $10
    rra
    rrca
    rrca
    ld a, a
    db $ed
    cp a
    rst $38
    push hl
    rst $38
    or $3e
    db $fc
    db $fc
    cp [hl]
    ld a, [c]
    jp c, Jump_039_7ce6

    ld a, h
    nop
    nop
    rra
    rra
    ld [hl], a
    ld [hl], a
    ld [bc], a
    inc b
    ld [bc], a
    rra
    rra
    ld hl, $023f
    db $fc

jr_039_71b9:
    ldh a, [rSC]
    ld d, h
    ld [bc], a
    db $fc
    db $fc
    db $ec
    call c, $eff7
    jr c, jr_039_7204

    inc hl
    ccf
    ld b, l
    ld a, a
    sbc e
    rst $38
    db $fd
    cp $2f
    scf
    cpl
    ld sp, $1e1e
    ld e, a
    db $ed
    cp $fa
    inc e
    db $f4
    sbc d
    cp $7c
    db $fc
    ld d, h
    db $fc
    db $e4
    db $fc
    ld hl, sp-$08
    ld [bc], a
    nop
    ld b, $5f
    ld e, a
    ldh a, [$bf]
    db $ec
    ld [bc], a
    rrca
    ld b, $f8
    db $fc
    db $fc
    inc b
    db $fc
    ld a, [de]
    cp $e3
    cp a
    ret nz

    rst $38
    add $ff
    rst $18
    rst $38
    ld l, [hl]
    ld l, a
    ld d, e
    ld e, a
    dec e
    inc de
    rrca

jr_039_7204:
    rrca
    ld [c], a
    cp $01
    rst $38
    ld sp, $fdff
    rst $38
    ld [bc], a
    jr c, jr_039_7214

    nop
    ld bc, $0001

jr_039_7214:
    nop
    dec b
    dec b
    dec bc
    rrca
    dec c
    rrca
    rla
    ld e, $29
    ccf
    ld a, a
    ld a, a
    add c
    rst $38
    add b
    add b
    ret nc

    ld d, b
    add sp, -$08
    ld e, h
    db $fc
    ld a, [c]
    cp [hl]
    ret


    rst $38
    rst $30
    rst $38
    rst $28
    ld e, c
    xor l
    rst $38
    xor l
    rst $38
    add l
    rst $38
    sub c
    rst $38
    cp c
    rst $38
    ld e, e
    ld a, a
    inc h
    ccf
    rra
    rra
    rst $38
    rst $28
    rst $38
    ld e, l
    rst $38
    pop hl
    rst $18
    di
    ld a, $fe
    inc a
    db $fc
    and $fe
    cp $fe
    ld bc, $0820
    daa
    ld bc, $022d
    db $fd
    cp a
    ld h, c
    ld bc, $0036
    inc h
    db $fc
    sub $ea
    ld a, [hl]
    ld a, [hl]
    ld bc, $0200
    inc c
    rrca
    dec d
    rra
    ld [hl+], a
    ld bc, $010b
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    or b
    ldh a, [$c8]
    ld a, b
    sbc h
    db $fc
    ld a, h
    db $fc
    cp [hl]
    sub $bf
    ld d, l
    rst $38
    ld sp, hl
    sbc a
    ld l, l
    ld a, e
    ei
    ret z

    ld hl, sp-$50
    ldh a, [$58]
    xor b
    ld hl, sp-$08
    rst $38
    ld a, c
    rst $38
    ld d, l
    rst $38
    db $fd
    ld a, e
    ei
    adc b
    ld hl, sp-$38
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    ld bc, $0200
    rrca
    rrca
    add hl, sp
    ccf
    ld b, h
    ld a, a
    pop bc
    rst $38
    add $01
    rrca
    inc bc
    ld hl, sp-$08
    ld e, h

Jump_039_72b3:
    db $fc
    ld l, d
    cp $69
    rst $38
    push af
    rst $18
    ld a, a
    ld a, c
    rst $38
    cp a
    ldh a, [$9f]
    ld a, a
    ld e, a
    ccf
    ccf
    inc de
    rra
    dec h
    ccf
    ccf
    ccf
    push af
    rrca
    rst $30
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    call nz, Call_000_38fc
    jr c, jr_039_72dc

    ret nz

jr_039_72dc:
    ld b, $1f
    rra
    ld de, $0e1f
    ld c, $01
    ret nc

    ld b, $e4
    db $fc
    jp nc, Jump_039_7efe

    ld a, [hl]
    nop
    ld bc, $1c00
    inc e
    inc sp
    ccf
    ld a, h
    ld a, a
    sbc d
    rst $38
    or a
    db $fd
    sbc a
    rst $38
    rst $20
    ld a, [$f7bf]
    ret c

    rst $38

Call_039_7301:
    ld hl, sp-$01
    rst $20
    rst $38
    ld b, l
    ld a, a
    ld b, a
    ld a, h
    ld a, a
    ld a, h
    xor e
    ld a, [$f1f1]
    ld [hl], $fe
    ld a, $fe
    or $f6
    ld c, d
    ld a, [$f848]
    ld d, b
    ldh a, [$f8]
    ld hl, sp+$78
    ld a, b
    dec sp
    dec sp
    inc a
    ccf
    ld l, d
    ld a, a
    ld [hl], a
    ld a, l
    ld a, a
    ld a, a
    sub l
    ld a, [$f7bf]
    sbc e
    rst $38
    inc c
    inc c
    inc de
    rra
    dec h
    ccf
    ld c, [hl]
    ld a, a
    ld c, [hl]
    ld a, a
    sbc d
    rst $38

jr_039_733b:
    sbc c
    rst $38
    sbc h
    rst $38
    ret nz

    ret nz

    jr c, jr_039_733b

    call z, $34fc
    db $fc
    ld a, d
    xor $3e
    cp $de
    ld [$dc7c], a
    sub a
    rst $38
    or h
    rst $38
    or a
    rst $38
    ret c

    rst $18
    db $10
    rra
    ld h, $3f
    ld sp, $3f3f
    ccf
    and d
    cp $82
    cp $7c
    db $fc
    cp b
    ld hl, sp-$58
    ld hl, sp-$50
    ldh a, [$f8]
    xor b
    ld hl, sp-$08
    ld e, $1e
    ld hl, $443f
    ld a, a
    ld c, d
    ld a, a
    sbc a
    rst $38
    sbc d
    rst $38
    cp d
    rst $38
    xor d
    rst $38
    ldh a, [$f0]
    ld c, b
    ld hl, sp-$2c
    db $fc
    cp d
    xor $fe
    cp $3e
    ld [$dc7c], a
    ld l, $fe
    xor l
    rst $38
    xor d
    rst $38
    jp hl


    rst $38
    xor [hl]
    cp a
    dec de
    rra
    add hl, de
    rra
    scf
    ccf
    ccf
    ccf
    ld [c], a
    cp $e2
    cp $1e
    cp $08
    ld hl, sp+$48
    ld hl, sp-$68
    ld hl, sp+$04
    db $fc
    db $fc
    db $fc
    inc e
    inc e
    daa
    ccf
    ld c, d
    ld a, a
    set 7, a
    sbc c
    rst $38
    sub l
    rst $38
    or l
    rst $38
    and a
    rst $38
    xor h
    rst $38
    xor [hl]
    rst $38
    jp hl


    rst $38
    or $ff
    ld b, e
    ld a, a
    ld h, a
    ld a, a
    adc e
    ei
    pop af
    pop af
    ld l, d
    cp $6a
    cp $ae
    cp $3a
    ld a, [$f8d8]
    sub b
    nop
    dec hl
    ld bc, $1b1b
    ld h, $3f
    ld c, d
    ld a, a
    ld e, e
    ld a, a
    nop
    jp z, $a500

    rst $38
    xor a
    rst $38
    nop
    ld bc, $3104
    ld sp, $5171
    res 7, e
    call Call_039_7cbf
    ld e, a
    ld l, $3f
    ld l, e
    ld a, a
    ld a, l
    ld a, [hl]
    ret nz

    ret nz

    ret nz

    ld b, b
    ldh [$60], a
    ret nc

    ld [hl], b
    sbc b
    ld hl, sp+$3e
    cp $e9
    rst $38
    pop de
    ccf
    ld c, a
    ld a, a
    ld c, b
    ld a, a
    ccf
    ccf
    inc d
    rra
    ld h, $3f
    ld [hl-], a
    ccf
    inc sp
    cpl
    ld a, $3e
    cp $fe
    jp nz, $99fe

    rst $20
    and l
    db $db
    and l
    db $db
    sbc c
    rst $20
    jp nz, $fcfe

    db $fc
    ld bc, $3101
    ld sp, $5373
    call $ccbf
    cp a
    ld a, [hl]
    ld e, a
    ld l, e
    ld a, a
    ld l, l
    ld a, [hl]
    ld a, a
    ld a, a
    ld c, b
    ld a, a
    ld c, a
    ld a, a
    inc [hl]
    ccf
    ld [hl-], a
    ccf
    ld [hl+], a
    ccf
    ccf
    ccf
    nop
    nop
    rlca
    rlca
    rrca
    ld [$171f], sp
    jr jr_039_7476

    db $10
    rra
    ccf
    ccf
    ld h, $3f
    ld b, e
    ld a, a
    db $ec
    db $ec
    cp $1a
    di
    sbc l
    ld [hl], e
    db $dd
    ld a, $fa
    sub h
    db $fc
    or $fe
    ld a, $de
    ldh [$e0], a
    db $fc
    inc e
    cp $9a
    ld [hl], e

jr_039_7476:
    db $dd
    inc sp
    db $fd
    sbc [hl]
    ld a, [$fcf4]
    ld [hl], $de
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    ld b, $0b
    ld c, $17
    ld e, $7b
    ld a, [hl]
    adc c
    rst $38
    adc a
    rst $38
    adc h
    adc h
    adc [hl]
    adc d
    db $d3
    db $dd
    or e
    db $fd
    sbc $fa
    cp h
    db $fc
    ld [hl+], a
    cp $e2
    cp $78
    ld a, a
    ret nc

    rst $38
    rst $38
    rst $38
    add sp, -$01
    call z, Call_039_67ff
    ld a, a
    ld h, h
    ld e, h
    ld a, h
    ld a, h
    ld a, $fe
    ld [de], a
    cp $fc
    db $fc
    inc h
    db $fc
    ld [hl], h
    db $fc
    db $e4
    db $fc
    ld a, h
    ld a, h
    nop
    nop
    add b
    add b
    adc h
    adc h
    adc $ca
    or e
    db $fd
    db $d3
    db $fd
    cp [hl]
    cp $04
    xor h
    ld b, $c8
    rst $38
    call c, Call_039_4fff
    ld a, a
    inc a
    inc a
    nop
    nop
    inc b
    ret nz

    nop
    ld a, [c]
    cp $2c
    db $fc

Call_039_74df:
    ld h, h
    db $fc
    call z, $4cfc
    ld [hl], h
    ld a, h
    ld a, h
    nop
    ld bc, HeaderLogo
    ld bc, $0203
    rlca
    rlca
    dec a
    ld a, [hl-]
    dec hl
    dec a
    dec e
    ld [de], a
    rra
    rla
    ld [hl], $3b
    nop
    nop
    adc [hl]
    adc [hl]
    pop de
    rst $18
    ld [hl], c
    cp a
    or c
    ld a, a
    ld [hl], c
    sbc a
    pop af
    rst $18
    ei
    sbc a
    ld e, a
    ld a, a
    ld [hl], e
    ld e, [hl]
    or c
    rst $38
    rst $38
    cp a
    db $fc
    rst $38
    xor a
    rst $10
    ei
    add a
    ld a, l
    ld a, l
    ld [$eefe], a
    ld e, $fe
    ld [de], a
    or $fa
    inc e
    db $fc
    ld [$f8f8], sp
    ld hl, sp-$10
    ldh a, [$5f]
    ld l, a
    ld a, a
    ld e, [hl]
    ld a, e
    ld b, a
    ld a, a
    ld h, e
    ld l, $33
    inc a
    ccf
    rra
    rra
    rrca
    rrca
    inc b
    jr nc, @+$06

    inc a
    db $fc
    ld [$bed6], a
    jp nz, Jump_039_7c7c

    ld [bc], a
    ld [bc], a
    rlca
    dec b
    rrca
    rrca
    ld d, $1d
    inc de
    ld e, $3e
    add hl, hl
    ccf
    add hl, sp
    ld d, a
    ld l, h
    nop
    nop
    ld [hl], b
    ld [hl], b
    adc b
    ld hl, sp-$38
    ld a, b
    ret z

    ld hl, sp-$5c
    ld a, h
    db $e4
    db $fc
    or h
    db $fc
    ld a, a
    ld b, a
    ld a, a
    ld b, [hl]
    ld a, l
    ld c, a
    ld e, a
    ld h, a
    ld a, $23
    cpl
    inc sp
    dec a
    ccf
    rra
    rra
    ld a, a
    ld b, a
    inc b
    ld b, d
    inc b
    ccf
    ccf
    ld h, h
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    ld [hl], c
    ld [hl], c
    adc e
    ei
    sbc l
    cp $97
    db $fc
    adc e
    db $fc
    adc e
    db $fc
    db $db
    rst $38
    add b
    add b
    ret nz

    ld b, b
    ldh [$e0], a
    call c, $f43c
    inc e
    add sp, $18
    add sp, $18
    db $ec
    db $fc
    ld l, l
    ld a, a
    ld hl, sp-$31
    ld hl, sp-$61
    ld l, a
    ld e, a
    jr c, jr_039_75e9

    ld l, $37
    add hl, sp
    daa
    ld e, $1e
    jp c, $ee36

    or d
    ld l, a
    rst $30
    rst $30
    ld sp, hl
    dec bc
    db $fd
    ld b, $fe
    db $fc
    db $fc
    ld a, b
    ld a, b
    inc b
    ret nz

    ld b, $10
    rra
    inc b
    ld c, h
    nop
    db $fc
    inc d
    cp $82
    db $76
    jp c, $fafe

    inc c
    db $fc
    ld a, [hl-]
    or $ce
    ld a, [c]
    ld a, [hl]
    ld a, [hl]
    nop
    ld bc, $0106
    ld bc, $0203
    inc bc
    ld [bc], a
    dec e
    rra
    dec d
    rra
    dec sp
    ld a, $7f
    ld c, a

jr_039_75e9:
    call z, $c0b7
    ret nz

    ld h, b
    and b
    ldh [rNR41], a
    call c, $d47c
    db $fc
    db $ec
    cp h
    ld a, [c]
    cp $1e
    cp $4b
    ld a, a
    ld [hl-], a
    ccf
    ccf
    ccf
    inc sp
    ld a, $13
    ld e, $23
    ccf
    ld a, [hl+]
    ld a, $3e
    ld a, $f5
    rst $38
    inc de
    rst $38
    db $fd
    rst $38
    push af
    rra
    db $eb
    ccf
    push af
    rst $38
    ld a, $3e
    nop
    nop
    ld c, e
    ld a, a
    ld [hl], d
    ld a, a
    ld e, a
    ld a, a
    ld d, a
    ld a, h
    ld l, e
    ld a, [hl]
    ld d, a
    ld a, a
    ld b, $3c
    nop
    push af
    rst $38
    ld [de], a
    cp $fe
    cp $e6
    ld a, $e4
    inc a
    ld [c], a
    cp $06
    inc l
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    ld e, $19
    dec bc
    inc c
    rlca
    dec b
    rra
    rra
    ld hl, $f83f
    ld hl, sp-$24
    inc h
    cp $7a
    and [hl]
    cp $9a
    cp $7f
    rst $30
    sbc a
    db $fd
    rla
    db $fd
    ld b, b
    ld a, a
    add b
    rst $38
    and d
    rst $38
    and d
    rst $38
    ld h, d
    ld a, a
    ld c, h
    ld a, a
    xor a
    rst $38
    cp $fe
    cp l
    rst $28
    ld a, e
    rst $28
    dec e
    rst $38
    rrca
    rst $38
    call nz, $62fc
    cp $ea
    cp $fe
    cp $06
    add b
    nop
    add $ff
    and d
    rst $38
    and a
    rst $38
    ld h, c
    ld a, a
    ld d, l
    ld a, a
    ccf
    ccf
    ld b, $90
    ld [bc], a
    sbc a
    rst $38
    inc a
    db $fc
    inc d
    db $fc
    ld d, h
    db $fc
    db $fc
    db $fc
    ld b, $00
    ld [bc], a
    ld e, $1f
    inc sp
    ld a, $7a
    ld e, a
    rst $20
    cp [hl]
    ld l, a
    ld a, a
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    cp h
    ld a, h
    db $e4
    inc a
    xor h
    ld a, h
    ld a, [c]
    cp [hl]
    ld a, d
    cp $56
    ld a, a
    ld h, d
    ld a, a
    ld b, h
    ld a, a
    ld b, h
    ld a, a
    inc [hl]
    ccf
    ld b, l
    ld a, a
    ld c, l
    ld a, a
    ld a, [hl]
    ld a, [hl]
    dec [hl]
    rst $38
    inc hl
    rst $38
    ld b, d
    cp $a6
    cp $eb
    rst $38
    db $e3
    ld b, $3b
    ld bc, $0100
    nop
    jr jr_039_76ed

    rra
    rla
    rra
    rra
    ccf
    daa
    ld h, a
    ld e, e
    rst $20
    cp l
    rst $38
    cp l
    rst $38
    and l
    jr jr_039_76fd

    db $fc
    db $ec
    ld a, $ea
    rra
    ld sp, hl
    rrca
    ld sp, hl

jr_039_76ed:
    cpl
    ld sp, hl
    rst $08
    ld sp, hl
    ld c, $fa
    nop
    ld a, [bc]
    ld bc, $ffbd
    and l
    db $db
    cp l
    ld h, a
    ld e, e

jr_039_76fd:
    dec a
    daa
    rra
    rra
    ld e, $fa
    rst $28
    db $fd
    adc e
    rst $38
    ld a, c
    rst $38
    xor [hl]
    cp $2c
    db $fc
    db $fc
    db $fc
    db $f4
    db $f4
    inc e
    inc e
    cp $ea
    ccf
    jp hl


    nop
    ld d, $02
    adc $fa
    nop
    ld e, $0a
    ccf
    daa
    rra
    rra
    rra
    db $fd
    db $eb
    rst $38
    adc c
    rst $38
    ld a, [hl]
    cp $ac
    db $fc
    ld a, h
    db $fc
    adc h
    db $fc
    ldh a, [$f0]
    ld h, b
    ld h, b
    db $ec
    db $ec
    sbc $fa
    rst $28
    ld sp, hl
    rst $28
    ld sp, hl
    ld l, a
    ld sp, hl
    sbc a
    ld sp, hl
    xor $fa
    xor $fa
    ld a, a
    db $fd
    dec de
    rst $38
    jp hl


    rst $38
    ld e, $fe
    db $ec
    db $fc
    inc e
    db $fc
    db $f4
    db $f4
    ld l, h
    ld l, h
    xor $ea
    rst $18
    ld sp, hl
    nop
    db $76
    ld [bc], a
    sbc [hl]
    ld a, [$faee]
    rst $28
    db $fd
    ld a, e
    rst $38
    add hl, de
    rst $38
    xor $fe
    inc e
    db $fc
    db $ec

jr_039_776b:
    db $fc
    db $fc
    db $fc
    ldh a, [$f0]
    jr jr_039_778a

    ccf
    scf
    ld a, a
    ld d, a
    rst $38
    sbc a
    nop
    or [hl]
    ld [bc], a
    ld a, b
    ld e, a
    jr @+$1a

    ld hl, sp-$18
    jr c, jr_039_776b

    inc e
    db $fc
    ld a, [bc]
    cp $0d
    rst $38
    dec c

jr_039_778a:
    rst $38
    db $ed
    rra
    dec e
    rst $28
    adc l
    ld a, a
    nop
    adc $00
    db $ed
    rra
    ld a, [$00fe]
    xor h
    nop
    jr c, jr_039_77d5

    ld a, a
    ld d, a
    rst $38
    sub a
    nop
    or [hl]
    ld [bc], a
    ld a, a
    ld e, a
    ld a, b
    ld e, a
    nop
    ret nc

    ld [$6c00], sp
    nop
    nop
    ld bc, $1900
    add hl, de
    ld l, $3f
    ld c, b
    ld a, a
    ld e, c
    ld a, a
    sub a
    cp $9f
    ei
    sbc e
    cp $97
    db $fc
    xor a
    ld hl, sp-$59
    db $fc
    cp e
    rst $38
    push bc
    rst $38
    rst $00
    rst $38
    inc sp
    ccf
    ld b, h
    ld a, h
    ld a, b
    ld a, b
    ld a, [$ca3e]
    ld a, [hl]

jr_039_77d5:
    jp z, Jump_039_7efe

    cp $ca
    ld a, [$f090]
    ld hl, sp-$08
    ld a, b
    ld a, b
    nop
    nop
    nop
    jr z, jr_039_7825

    ld e, c
    ld a, a
    ld d, a
    ld a, [hl]
    ld e, a
    ld a, e
    nop
    inc c
    nop
    rrca
    rrca
    db $10
    rra
    ld hl, $423f
    ld a, a
    ld b, d
    ld a, a
    add d
    rst $38
    sub l
    rst $38
    sub a
    rst $38
    ret nz

    ret nz

    or b
    ldh a, [$08]
    ld hl, sp+$64
    db $fc
    ld [hl], h
    call c, $fc5c
    ld a, $e2
    rst $38
    pop bc
    ld d, h
    ld a, a
    ld d, h
    ld a, a
    rst $30
    rst $38
    cp [hl]
    rst $38
    sbc d
    rst $38
    ld a, c
    ld a, a
    scf
    ccf
    ccf
    ccf
    rst $38
    pop af
    ld l, [hl]
    jp c, $febe

jr_039_7825:
    ld [$48f8], sp
    ld hl, sp-$68
    ld hl, sp+$04
    db $fc
    db $fc
    db $fc
    rra
    rra
    ld hl, $463f
    ld a, a
    ld c, b
    ld a, a
    sbc h
    rst $38
    sbc b
    rst $38
    cp l
    rst $38
    xor a
    ei
    ret nz

    ret nz

    jr nc, jr_039_7843

jr_039_7843:
    ld d, e
    add hl, bc
    xor [hl]
    rst $38
    xor d
    rst $38
    rst $28
    rst $38
    ld hl, sp-$01
    and b
    rst $38
    and h
    rst $38
    ld [hl], e
    ld a, a
    ld e, $1e
    rst $38
    pop af
    ld l, $fa
    inc a
    db $fc
    call nc, $b4fc
    db $fc
    ld hl, sp-$08
    ret z

    ld hl, sp-$08
    ld hl, sp+$19
    add hl, de
    ld h, $3f
    ld b, d
    ld a, a
    ld c, e
    ld a, a
    sub l
    rst $38
    sub l
    rst $38
    xor c
    rst $38
    xor e
    rst $38
    xor d
    rst $38
    xor d

Call_039_7878:
    rst $38
    xor l
    rst $38
    xor $ff
    jp nc, Jump_039_65ff

    ld a, l
    adc b
    ld hl, sp-$10
    ldh a, [$aa]
    cp $ba
    cp $aa
    cp $ce
    cp $ce
    cp $1c
    db $fc
    nop
    inc l
    ld [bc], a
    ld h, $3f
    ld a, [hl+]
    ccf
    ld c, e
    ld a, a
    ld e, c
    ld a, a
    ld d, l
    ld a, a
    sub l
    rst $38
    or a
    rst $38
    nop
    ld bc, $c700
    rst $00
    cp [hl]
    rst $38
    adc [hl]
    rst $38
    rst $18
    rst $38
    ld a, [hl]
    ld a, a
    dec sp
    ccf
    db $dd
    ei
    sub [hl]
    rst $38
    cp $ff
    ld e, c
    ld a, a
    and e
    db $fd
    rst $38
    db $e3
    cp [hl]
    rst $38
    rst $30
    sbc a
    db $ed
    di
    ld a, $3e
    ld a, $fe
    call c, $26fc
    cp $26
    cp $ff
    rst $38
    rst $38
    rst $38
    cp $fe
    ldh a, [$f0]
    ld a, [$77ff]
    ld a, e
    xor a
    di
    cp l
    rst $20
    cp $ff
    cp a
    rst $18
    rst $38
    cp a
    ld a, [hl]
    ld a, [hl]
    ld a, $fe
    sbc $fe
    ld a, [hl-]
    cp $12
    cp $fa
    cp $de
    cp $6c
    sbc h
    ldh a, [$f0]
    rlca
    rlca
    dec c
    rrca
    inc e
    rra
    ld e, $1f
    nop
    ld d, a
    nop
    ld e, $1f
    inc c
    rrca
    ldh [$e0], a
    ret nc

    ldh a, [rBCPS]
    ld hl, sp+$78
    ld hl, sp-$18
    ld hl, sp-$48
    ld hl, sp-$28
    cp b
    add sp, -$08
    rra
    rra
    dec bc
    rrca
    ld a, [de]
    rra
    dec [hl]
    ccf
    db $e3
    db $fd
    ld a, a
    ld b, e
    inc a
    ccf
    rra
    rra
    call z, $fffc
    rst $38
    db $d3
    db $fd
    ld c, [hl]
    ld a, [c]
    ld a, h
    call z, $f8b8
    cp h
    call z, $fcfc
    rra
    rra
    inc de
    rra
    ld hl, $533f
    ld a, a
    xor l
    rst $38
    and a
    ld sp, hl
    ld a, [hl]
    ld b, a
    ld a, a
    ld a, a
    rst $08
    rst $38
    or e
    db $fd
    adc $b2
    ld a, h
    call z, $f0f0
    ret nc

    ldh a, [$f8]
    ld a, b
    ld hl, sp-$08
    nop
    nop
    ld [bc], a
    sbc $ff
    ld a, [hl]
    ld a, a
    ld a, $3f
    ld e, [hl]
    ld a, a
    cp a
    rst $38
    rst $20
    rst $38
    jr nz, @+$41

    ld b, c
    ld a, a
    add c
    rst $38
    add b
    rst $38
    ld c, b
    ld a, a
    ld a, [hl]
    ld a, a
    rra
    rra
    adc $fe
    ld b, $fe
    rlca
    db $fd
    inc hl
    rst $38
    sub a
    db $fd
    adc e
    db $fd
    ld e, [hl]
    cp $e0
    ldh [$e7], a
    rst $38
    ld b, b
    ld a, a
    ld b, c
    ld a, a
    adc c
    rst $38
    sub d
    rst $38
    and d
    rst $38
    db $f4
    rst $38
    rrca
    rrca
    adc $fe
    dec bc
    db $fd
    rlca
    db $fd
    inc bc
    rst $38
    inc bc
    rst $38
    daa

jr_039_799c:
    db $fd
    rst $38
    db $fd
    or $f6
    nop
    ld bc, $0105
    ld bc, $0303
    rlca
    rlca
    inc b
    rlca
    rra
    rra
    ccf
    ccf
    ccf
    jr c, @+$7f

    ld d, [hl]
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    jr nz, jr_039_799c

    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    inc a
    ld a, [hl]
    sub $7d
    ld d, d
    rst $38
    sub l
    rst $38
    rst $30
    dec c
    dec bc
    dec c
    dec bc
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    ld a, [hl]
    sub d
    cp $56
    db $fc
    call c, $9878
    ld a, a
    adc a
    ld a, [hl]
    add d
    db $fc
    inc c
    ldh a, [$f0]
    dec b
    jr nz, jr_039_79e9

    rra
    inc de

jr_039_79e9:
    rrca
    ld [$0607], sp
    ld bc, $0501
    ld l, $04
    ldh a, [$90]
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    db $f4
    inc c
    inc c
    dec b
    nop
    add hl, bc
    ld a, $0f
    dec c
    dec b
    db $10
    add hl, bc
    inc e
    call c, $1f6c
    dec d
    rra
    add hl, de
    ccf
    ld a, $ff
    ldh a, [$7f]
    ld b, b
    ccf

jr_039_7a13:
    jr nz, jr_039_7a34

    rra
    nop
    nop
    ret c

    jr z, jr_039_7a13

    ld c, b
    ld hl, sp+$78
    ldh a, [$50]
    sub b
    ld [hl], b
    and b
    ld h, b
    ret nz

    ret nz

    nop
    nop
    dec b
    add b
    nop
    rrca
    ld c, $0f
    ld [$101f], sp
    ccf
    jr nz, jr_039_7a73

jr_039_7a34:
    cpl
    jr nc, jr_039_7a67

    dec b
    nop
    ld a, [bc]
    ld a, a
    ld [hl], b
    dec b
    db $10
    ld a, [bc]
    cp $16
    ld a, a
    ld d, b
    rst $38
    sub b
    rst $38
    ldh a, [rIF]
    ld [$080f], sp
    rlca
    inc b
    dec b
    inc l
    nop
    cp $12
    cp $16
    db $fc
    inc e
    rst $38
    rrca
    cp $02
    db $fc
    inc b
    ld hl, sp-$08
    dec b
    sbc $04
    ldh a, [rNR10]
    dec b
    ld e, b
    inc b
    nop

jr_039_7a67:
    ld bc, $2600
    ld h, $77
    ld d, l
    ld [hl], a
    ld d, l
    rst $38
    xor a
    db $fd
    cp e

jr_039_7a73:
    rst $38
    xor l
    xor [hl]
    rst $38
    reti


    cp $d8
    ret c

    call c, $dc54
    ld d, h
    db $fc
    db $f4
    ld a, [hl]
    cp d
    ld a, [$ee6e]
    cp $3e
    ld a, [c]
    rst $20
    db $fc
    rst $38
    cp a
    push af
    sbc e
    ld a, a
    ld a, a
    ld c, d
    ld a, a
    db $fd
    adc [hl]
    ei
    xor a
    ld a, [hl]
    ld a, [hl]
    adc $7a
    cp $f2
    ld e, h
    cp h
    db $f4
    db $fc
    cp d
    sbc $6e
    cp [hl]
    ret z

    ld hl, sp-$08
    ld hl, sp+$07
    rlca
    rrca
    add hl, bc
    dec e
    rla
    dec a
    cpl
    ld a, [hl-]
    ld l, $7f
    ld e, a
    ld a, e
    ld e, h
    ld a, a
    ld e, a
    ld h, b
    ld h, b
    ld [hl], b
    ld d, b
    jr c, @+$2a

    inc a
    inc a
    cp $f2
    ld e, [hl]
    ld a, [$fefe]
    ccf
    ret


    ld a, d
    ld e, l
    ld a, a
    ld e, a
    ld e, e
    ld a, h
    scf
    ccf
    ld c, e
    ld a, [hl]
    or d
    rst $38
    ld l, c
    ld a, a
    rra
    rra
    rst $30
    sbc c
    cp [hl]
    adc $f0
    ld [hl], b
    ld hl, sp-$08
    call z, $def4
    ld l, d
    cp [hl]
    ld [$fcfc], a
    rlca
    rlca
    rra
    jr jr_039_7b2c

    daa
    ld a, l
    ld e, a
    ld a, d
    ld e, [hl]
    db $eb
    cp a
    db $ed
    cp [hl]
    rst $28
    cp a
    add b
    add b
    ldh [$e0], a
    ldh a, [$d0]
    jr c, @+$2a

    ld a, h
    ld a, h
    cp [hl]
    ld a, [c]
    ld e, [hl]
    ld a, [$fece]
    db $ed
    cp [hl]
    cp a
    db $fc
    ld e, a
    ld e, l
    ld l, a
    ld a, a
    sbc a
    di
    rst $28
    pop af
    ld e, a
    ld [hl], l
    ccf
    ccf
    ld a, a
    pop hl
    rst $18
    ld [hl], c
    cp $7e
    sbc h
    db $fc
    ldh a, [$f0]
    ld c, b
    ld hl, sp-$68
    ld hl, sp-$10
    ldh a, [$36]
    ld [hl], $77

jr_039_7b2c:
    ld d, l
    push af
    sub a
    rst $38
    xor [hl]
    cp $b5
    rst $38
    cp e
    rst $38
    xor l
    rst $38
    xor a
    ret z

    ret z

    call c, Call_039_5c54
    call nc, $eafe
    cp [hl]
    ld l, d
    cp $da
    cp $2a
    cp $ea
    cp $ab
    cp a
    db $eb
    ld l, [hl]
    ld a, e
    ld a, e
    ld a, a
    ld e, [hl]
    ld a, a
    db $fc
    adc a
    nop
    inc l
    nop
    cp $aa
    cp $aa
    ld a, [$ecae]
    cp h
    cp d
    cp $6e
    cp $00
    inc a
    nop
    nop
    ld bc, $1804
    jr jr_039_7b8c

    rla
    inc d
    rra
    jr jr_039_7b91

    ld h, $3f
    rla
    dec e
    inc hl
    ccf
    add hl, de
    rra
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh a, [$30]
    ret z

    ld hl, sp-$30
    ldh a, [$6c]
    cp h
    or d
    ld a, [hl]
    rla
    rra

jr_039_7b8c:
    ld a, $23
    scf
    dec hl
    rra

jr_039_7b91:
    rra
    ld c, $0e
    inc b
    ld a, [$d4f2]
    db $fc
    sbc b
    ld hl, sp-$18
    ld hl, sp-$48
    ret z

    ld a, b
    ld a, b
    inc b
    ld a, [$0cf2]
    inc c
    rrca
    dec bc
    ld a, [bc]
    rrca
    inc c
    rrca
    inc de
    rra
    dec bc
    ld c, $31
    ccf
    ld c, h
    ld a, a
    nop
    nop
    ret nz

    ret nz

    ld h, b
    and b
    ld a, b
    sbc b
    ld h, h
    db $fc
    add sp, -$08
    or h
    call c, $b8d8
    ld bc, $6004
    ld bc, $0303
    ld a, $3f
    ld c, c
    ld a, a
    jp nc, $e1bf

    cp a
    inc b
    ld [de], a
    nop
    ld [hl], b
    ldh a, [$88]
    ld hl, sp+$3c
    db $fc
    dec sp

jr_039_7bdc:
    rst $28
    ld de, $9bff
    rst $38
    and a
    rst $38
    ld e, d
    ld a, a
    rst $38
    adc a
    reti


    cp a
    ld a, [hl]
    ld a, [hl]
    inc b
    ld a, [$c6f2]
    cp $bc
    db $fc
    cp $f2
    ld [hl], $ea
    db $fc
    db $fc
    inc b
    ld hl, sp-$0c
    inc bc
    inc bc
    ld b, $05
    ld e, $19
    inc hl
    ccf
    inc d
    rra
    ld a, [hl+]
    ccf
    ld de, $301f
    jr nc, jr_039_7bdc

    ldh a, [$50]
    ldh a, [$30]
    ldh a, [$88]
    ld hl, sp+$70
    ldh a, [rNR32]
    db $fc
    ld e, $e2
    inc e
    rla
    inc b
    ld [hl+], a
    ld a, [bc]
    call c, $38e4
    ld hl, sp-$18
    ld hl, sp-$38
    ld hl, sp+$04
    jr c, jr_039_7c2d

    inc b
    and b
    nop
    inc bc

jr_039_7c2d:
    ld [bc], a
    rrca
    inc c
    ld de, $0e1f
    rrca
    jr c, jr_039_7c75

jr_039_7c36:
    ld a, b
    ld b, a

jr_039_7c38:
    jr jr_039_7c52

    add sp, -$08
    jr z, jr_039_7c36

    jr jr_039_7c38

    call nz, Call_000_28fc
    ld hl, sp+$54
    db $fc
    adc b
    ld hl, sp+$00
    ld bc, $0404
    rst $38
    ldh a, [rTAC]
    rlca
    ld a, [de]
    dec e

jr_039_7c52:
    cpl
    scf
    ccf
    dec h
    rst $18
    ret c

    cpl
    dec l
    inc b
    rst $38
    ldh a, [$c0]
    ret nz

    or b
    ld [hl], b

jr_039_7c61:
    add sp, -$28

jr_039_7c63:
    ld hl, sp+$48
    ldh a, [$30]
    ldh [$60], a
    ld a, a
    ld a, d
    sbc a
    sbc l
    cpl
    cpl
    ld b, [hl]
    ld b, a
    rlca
    rlca
    dec bc
    rrca

jr_039_7c75:
    rlca
    rlca
    ld a, [bc]
    ld a, [bc]
    add b
    add b
    add b

Call_039_7c7c:
Jump_039_7c7c:
    add b
    ld b, b
    ret nz

    jr nz, jr_039_7c61

    jr nz, jr_039_7c63

    ret c

    ld hl, sp+$64
    ld a, h
    ld e, $1e
    ld bc, $0101

Call_039_7c8c:
    ld bc, $0f0e
    dec sp
    dec sp
    ld a, e
    ld a, e
    dec l
    cpl
    ld d, e
    ld d, e
    nop
    nop
    ld d, b
    ldh a, [$b0]
    ld d, b
    add sp, -$58
    call nc, $92fc
    cp $ea
    xor $c7
    rst $00
    ld h, b
    ld h, b
    inc b
    rst $38
    ldh a, [$03]
    inc bc
    dec b
    rlca
    dec bc
    ld c, $0f
    ld a, [bc]
    dec bc
    dec c

jr_039_7cb6:
    dec b
    ld b, $04
    db $10
    ld [bc], a
    ldh [$a0], a
    ld a, b
    ret c

Call_039_7cbf:
    db $ec
    ld [hl], h
    sbc $e2
    cp $42
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc e
    rra
    db $76
    ld [hl], a
    rst $30
    rst $30
    ld e, e
    ld e, a
    and a
    and a
    nop
    nop
    db $fc

jr_039_7cd6:
    cp h
    cp b
    ret z

    ld a, b
    ld hl, sp+$28
    ld hl, sp+$24
    db $fc
    call nc, $8edc
    adc [hl]
    ret nz

    ret nz

    ld a, [hl]

Jump_039_7ce6:
    sbc $ec
    call c, $e8f8
    call c, $c0dc
    ret nz

    and b
    ldh [$c0], a
    ret nz

    and b
    and b
    inc b
    nop
    dec b
    jr c, jr_039_7d39

    jr z, jr_039_7cd6

jr_039_7cfc:
    db $dd
    cpl
    cpl
    inc b
    db $10
    dec b
    jr c, jr_039_7cfc

    jr z, jr_039_7cb6

    ld [hl], b
    ldh [$e0], a
    ld a, l
    ld a, a
    sbc [hl]
    sbc a
    inc b
    inc h
    nop
    dec b
    rlca
    ld [$2b04], sp
    ld bc, $4004
    inc b
    ld a, d
    ld a, e
    inc l
    inc b
    ld c, e
    ld bc, $f0b0
    and b
    ldh [rBCPS], a
    add sp, $14
    db $fc
    sub d
    cp $6a
    inc b
    ld e, e
    ld bc, $0100
    ld bc, $0000
    rlca
    rlca
    dec bc
    inc c
    ld d, $19
    dec l

jr_039_7d39:
    ld [hl-], a
    dec hl
    inc [hl]
    ld d, $19
    jr jr_039_7d57

    nop
    nop
    ldh [$e0], a
    ld d, b
    or b
    ret z

Call_039_7d47:
    jr c, @-$6a

    ld l, h
    db $f4
    xor h
    ld c, b
    ld hl, sp+$08
    ld hl, sp+$3b
    ccf
    ld h, l
    ld e, [hl]
    ld a, e
    ld c, a
    dec a

jr_039_7d57:
    ld a, [hl-]
    ld c, $09
    dec de
    inc e
    ld de, $1f1f
    rra
    ret c

    ld hl, sp-$58
    ld a, b
    call z, $9cf4
    ld [hl], h
    inc [hl]
    db $fc
    ld a, b
    ret z

    add sp, -$68
    ld [hl], b
    ld [hl], b
    ld bc, $fcfe
    ld bc, $f0fe
    ld bc, $0812
    jr jr_039_7d92

    dec de
    rra
    inc d
    rra
    dec sp
    cpl
    dec a
    ld a, $1e
    inc de
    rla
    add hl, de
    ld c, $0e
    ld [$dcf8], sp
    db $fc
    ld l, $fa
    sbc $f2
    inc a

jr_039_7d92:
    call c, $38d8
    adc b
    ld hl, sp-$08
    ld hl, sp+$1a
    dec e
    inc [hl]
    cpl
    dec sp
    daa
    ld sp, $2b2e
    ld [hl], $39
    ccf
    ld c, [hl]
    ld a, a
    ccf
    ccf
    ld hl, sp-$08
    db $10
    ldh a, [$f8]
    ld hl, sp-$38
    ld a, b
    ret z

    ld a, b
    ldh a, [$f0]
    ldh a, [rNR10]
    ldh [$e0], a
    jr jr_039_7dd2

    inc l
    ccf
    dec sp
    daa
    inc [hl]
    dec hl
    ld l, l
    ld d, e
    db $ec
    sbc a
    rst $38
    add a
    ld a, h
    ld a, h
    ld [$78f8], sp
    ld hl, sp+$01
    sbc d
    nop
    ldh a, [$90]

jr_039_7dd2:
    ld [hl], b
    ldh a, [$88]
    ld hl, sp-$10
    ldh a, [rSB]
    nop
    nop
    ld a, [bc]
    dec c
    inc de
    inc e
    dec l
    ld [hl-], a
    ld a, [hl+]
    dec [hl]
    inc de
    inc e
    db $10
    rra
    rla
    ld e, $38
    ccf
    ld e, c
    db $76
    ld d, [hl]
    ld a, c
    ld bc, $0468
    db $ec
    ld a, h
    ld e, $fa

jr_039_7df6:
    cp $0a
    inc c
    db $fc
    ldh a, [rNR10]
    jr jr_039_7df6

    ld bc, $007c
    ld bc, $f2fe
    ld bc, $04c4
    inc d
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_039_7ee4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_039_7efe:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
