; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03a", ROMX[$4000], BANK[$3a]

    ld a, [hl-]
    and e
    ld b, b
    ld [hl], d
    ld b, c
    ld c, c
    ld b, d
    db $fd
    ld b, d
    push de
    ld b, e
    cp l
    ld b, h
    xor e
    ld b, l
    adc l
    ld b, [hl]
    ld e, [hl]
    ld b, a
    inc d
    ld c, b
    dec c
    ld c, c
    ld [c], a
    ld c, c
    reti


    ld c, d
    xor e
    ld c, e
    xor e
    ld c, h
    xor b
    ld c, l
    sbc d
    ld c, [hl]
    ld e, a
    ld c, a
    add hl, sp
    ld d, b
    ld sp, hl
    ld d, b
    and e
    ld d, c
    ld [hl], l
    ld d, d
    ld b, b
    ld d, e
    dec de
    ld d, h
    ei
    ld d, h
    adc e
    ld d, l
    ld l, c
    ld d, [hl]
    ld e, c
    ld d, a
    inc hl
    ld e, b
    or e
    ld e, b
    ld a, [hl]
    ld e, c
    dec bc
    ld e, d
    push de
    ld e, d
    and c
    ld e, e
    ld l, l
    ld e, h
    inc [hl]
    ld e, l
    rla
    ld e, [hl]
    inc bc
    ld e, a
    ld b, $60
    adc h
    ld h, b
    add e
    ld h, c
    ld [hl], e
    ld h, d
    ld l, c
    ld h, e
    ld d, l
    ld h, h
    ld e, $65
    ei
    ld h, l
    rst $08
    ld h, [hl]
    and l
    ld h, a
    sub h
    ld l, b
    ld e, [hl]
    ld l, c
    inc [hl]
    ld l, d
    ld a, [de]
    ld l, e
    ldh a, [rOCPD]
    add sp, $6c
    sbc a
    ld l, l
    sbc [hl]
    ld l, [hl]
    jr jr_03a_40e2

    call z, Call_000_1c6f
    ld [hl], b
    ret nz

    ld [hl], b
    ld b, l
    ld [hl], c
    ld c, $72
    ld a, [hl]
    ld [hl], d
    scf
    ld [hl], e
    sbc b
    ld [hl], e
    rst $38
    ld [hl], e
    add c
    ld [hl], h
    dec l
    ld [hl], l
    add $75
    sbc c
    db $76
    ld [de], a
    ld [hl], a
    call nz, Call_03a_5877
    ld a, b
    ld sp, hl
    ld a, b
    and e
    ld a, c
    jr nz, jr_03a_4113

    adc $7a
    ld [hl], c
    ld a, e
    add hl, sp
    ld a, h
    db $ed
    ld a, h
    ld l, [hl]
    ld a, l
    nop
    ld bc, $2001
    jr nz, @+$76

    ld [hl], h
    ld e, l
    ld a, l
    adc [hl]
    rst $38
    adc h
    ei
    sbc $f5
    ld h, h
    ld a, e
    inc l
    ccf
    ld l, [hl]
    ld a, a
    pop hl
    rst $38
    sub a
    ld a, [$fbff]
    adc h
    db $fc
    or b
    ldh a, [$a0]
    ldh [$e0], a
    ldh [rP1], a
    nop
    adc b
    adc b
    reti


    reti


    xor [hl]
    ld bc, $0707
    and c
    rst $38
    rst $30
    ld a, [$fb8f]
    cp h
    db $fc
    sub b
    ldh a, [$f8]
    ld hl, sp+$00
    nop
    db $10
    db $10
    jr z, @+$3a

jr_03a_40e2:
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
    jr nz, @+$22

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
    jr jr_03a_4121

    ld h, e
    ld a, a
    ld c, h
    ld a, a
    inc sp
    ccf
    ld c, h
    ld a, a
    ld [hl], e
    ld a, a
    ld e, h
    ld e, h
    ret c

    ld hl, sp-$0c
    db $fc
    inc e

jr_03a_4113:
    db $fc
    ldh a, [$50]
    ld hl, sp+$78
    db $d4, $dc, $0c
    inc c
    ld bc, $f0fc
    ld b, h
    ld b, h

jr_03a_4121:
    ld l, h
    ld l, h
    ld d, h
    ld bc, $0547
    ld bc, $0480
    call nz, Call_03a_64fc
    cp h
    ret c

    ld a, b
    ld e, b
    cp b
    ld e, d
    ld a, a
    xor h
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
    call nc, $fafc
    cp $16
    or $f8
    ld e, b
    db $f4
    ld a, h
    jp z, Jump_000_06ce

    ld b, $01
    cp $f6
    adc b
    rst $38
    ret nc

    rst $38
    ld h, b
    ld a, a
    jr nz, jr_03a_419a

    ld h, b
    ld a, a
    ldh [rIE], a
    sub b
    rst $38
    ei
    rst $38
    ld bc, $0c18
    ld bc, $06c8
    and b
    rst $38
    ldh a, [rIE]
    adc e
    rst $38
    ld bc, $0438
    nop
    ld bc, $0705
    rlca
    dec bc
    inc c
    rra
    jr jr_03a_4198

    inc de
    ld a, h
    ld [hl], a
    ld d, a
    ld a, b
    dec hl
    inc a
    ld a, a
    ld a, a
    add h
    add h
    ld c, [hl]
    jp z, Jump_03a_6aee

    xor $2a
    cp $ba
    xor [hl]
    ld a, d

jr_03a_4191:
    ld c, c
    rst $38
    db $dd
    rst $38
    ld e, e
    ld a, h
    ld d, a

jr_03a_4198:
    ld a, a
    ld h, b

jr_03a_419a:
    ld a, a
    jr c, @+$41

    scf
    cpl
    ld l, l
    ld a, l
    add l
    db $fd
    ld a, b
    ld a, b
    ld [hl], l
    rst $38
    or l
    rst $38
    ld a, [de]
    cp $7c
    db $fc
    ldh [$a0], a
    jr nz, jr_03a_4191

    db $10
    ldh a, [$f0]
    ldh a, [$9b]
    db $fc
    sub a
    rst $38
    dec b
    inc h
    nop
    rra
    rla
    ld [de], a
    ld e, $22
    ld a, $3c
    inc a
    dec b
    jr nc, @+$06

    or b
    ret nc

    ret c

    ld hl, sp-$7c
    db $fc
    ld a, b
    ld a, b
    add hl, bc
    add hl, bc
    ld e, $17
    rra
    ld d, $1f
    inc d
    rra
    inc d
    inc e
    rla
    ld h, $3f
    dec l
    ccf
    ldh [$e0], a
    ret nc

    jr nc, @-$06

    ld [$38c8], sp
    xor b
    ld a, b
    ld hl, sp+$08
    add sp, $58
    ldh a, [$30]
    ld a, [hl+]
    ccf
    add hl, hl
    ccf
    ld d, $1f
    inc c
    rrca
    rlca
    rlca
    inc bc
    inc bc
    inc b
    rlca
    inc bc
    inc bc
    db $fc
    call z, $fefa
    ld a, [de]
    cp $ec
    db $fc
    ret nc

    jr nc, jr_03a_420f

    ld e, d
    nop
    ld hl, sp-$08
    dec b

jr_03a_420f:
    add b
    ld b, $01
    ld bc, $0302
    ld bc, $f801
    ret z

    ldh a, [$f0]
    db $10
    ldh a, [$c8]
    ld hl, sp-$10
    ld [hl], b
    ld a, b
    ld hl, sp+$14
    db $fc
    ld hl, sp-$08
    ld hl, $7221
    ld d, e
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld d, h
    ld a, a
    ld a, a
    ld [hl], b
    ld a, a
    sbc b
    rst $38
    and h
    rst $38
    dec b
    ld [hl], b
    ld bc, $3818
    ret z

    cp $fe
    ld [bc], a
    cp $04
    db $fc
    ld c, $fe
    dec b
    and b
    rst $38
    dec c
    nop
    ld bc, $f202
    ld a, [c]
    ld a, e
    ld a, e
    rst $38
    rst $38
    ccf
    dec a
    ccf
    ccf
    rrca
    rrca
    rra
    rra
    rst $30
    rst $30
    and a
    and a
    rrca
    rrca
    rrca
    rrca
    inc de
    inc de
    nop
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0101
    ret nz

    ret nz

    ld [hl], d
    ld [hl], d
    dec sp
    dec sp
    ld a, a
    ld a, a
    rra
    dec e
    ld [bc], a
    ld [$3f00], sp
    ccf
    rst $20
    rst $20
    ld [bc], a
    db $10
    ld b, $01
    ld bc, $0100
    db $fc
    db $fc
    ld a, $3e
    ld a, a
    ld a, a
    ld [bc], a
    ld a, [bc]
    nop
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $4040
    ld h, b
    ld h, b
    ldh a, [$f0]
    ldh a, [$d0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    rst $28
    rst $28
    inc bc
    inc bc
    rrca
    rrca
    rlca
    rlca
    rrca
    rrca
    nop
    inc a
    jr nc, @+$72

    ld b, b
    ld h, b
    nop
    nop
    push bc
    push bc
    ret nz

    ret nz

    add b
    add b
    ld [bc], a
    db $f4
    ld hl, sp+$7c
    ld a, h
    sbc a
    sbc a
    ld [bc], a
    ld [$0200], sp
    ld c, d
    ld c, $02
    ld e, d
    nop
    inc bc
    inc bc
    ld [bc], a
    ld h, h
    nop
    ld b, $06
    nop
    inc c
    inc c
    inc c
    nop
    inc c
    ld b, $06
    adc $ce
    adc d
    adc d
    ld [bc], a
    db $f4
    rst $38
    nop
    ccf
    ld [bc], a
    ld [$ef00], sp
    rst $28
    cp a
    cp a
    ld [bc], a
    ld h, h
    nop
    ld [bc], a
    inc d
    rrca
    ld [bc], a
    rra
    ld [bc], a
    ld [$7f00], sp
    ld a, a
    ld d, a
    ld d, a
    ld [bc], a
    ret nc

    ld b, $02
    inc a
    nop
    nop
    ld bc, $0201
    ld [bc], a
    rrca
    dec c
    rra
    inc d
    rra
    db $10
    ccf
    ld h, $19
    rra

jr_03a_430c:
    dec a
    ccf
    ld a, [hl-]
    ccf
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$48
    ldh a, [rNR10]
    ld hl, sp-$38
    jr nc, jr_03a_430c

    ld hl, sp+$78
    ld hl, sp-$48
    inc a
    ccf
    ld b, a
    ld a, l
    ld c, a
    ld a, a
    ccf
    ccf
    ld [de], a
    ld e, $21
    ccf
    ld e, $1e
    nop
    nop
    ld b, h
    db $fc
    db $e4
    db $fc
    ld hl, sp+$78
    ldh a, [$f0]
    and b
    ldh [$90], a
    ldh a, [$e0]
    ldh [rP1], a
    nop
    ld b, $06
    rra
    add hl, de
    ccf
    inc h
    rra
    db $10
    ccf
    daa
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    add b
    add b
    ldh [$60], a
    ldh a, [$50]
    ld bc, $0016
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld e, a
    ld a, a
    ld c, a
    ld a, b
    ccf
    ccf
    rra
    rra
    ld [hl+], a
    ld a, $01
    ld a, [hl+]
    ld [bc], a
    db $f4
    db $fc
    ld hl, sp+$38
    ldh [$e0], a
    ldh [$e0], a
    ret nc

    ldh a, [$c8]
    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rra
    ld [de], a
    rrca
    ld [$101f], sp
    rrca
    inc c
    rra
    rra
    inc a
    ccf
    ld b, b
    ld b, b
    ldh a, [$b0]
    ld hl, sp+$28
    ld hl, sp+$08
    ld hl, sp+$68
    sub b
    ldh a, [rSVBK]
    ret nc

    ldh a, [$b0]
    cpl
    ccf
    daa
    ccf
    db $10
    rra
    inc e
    rra
    ccf
    ccf
    ld l, $3f
    dec e
    dec e
    nop
    nop
    db $10
    ldh a, [$e0]
    and b
    ldh [$e0], a
    ret nz

    ret nz

    and b
    ldh [rNR10], a
    ld bc, $013b
    cpl
    ccf
    ld hl, $193f
    rra
    scf
    ccf
    ld c, a
    ld a, a
    inc hl
    ccf
    inc e
    inc e
    ld bc, $06ae
    ldh a, [$f0]
    ret z

    ld hl, sp-$10
    ldh a, [rSB]
    and b
    rst $38
    rrca
    nop
    ld bc, $1c01
    nop
    daa
    inc bc
    inc b
    rlca
    ld a, b
    ld a, a
    ld a, d
    ld a, a
    ld a, [hl-]
    ccf
    ld sp, $233f
    ccf
    ld h, [hl]
    ld a, a
    ld d, b
    ld a, a
    ld c, a
    ld a, a
    ld [hl], c
    cp a
    ld a, e
    ld a, h
    ld a, a
    ld a, [hl]
    ccf
    ld e, [hl]
    inc de
    inc l
    nop
    nop
    jr jr_03a_43fc

jr_03a_43fc:
    daa
    inc bc
    ld a, h
    ld e, a
    ld a, b
    ld a, a
    ld a, [hl-]
    ccf
    ld bc, $000a
    ld h, e
    ld a, a
    ld h, [hl]
    ld a, a
    ld d, b
    rst $38

jr_03a_440d:
    cp a
    ld a, a
    ei
    ld a, h
    ld a, a
    cp $9f
    ld a, h
    ld h, e
    sbc h
    inc bc
    nop
    rlca
    ld [bc], a
    dec b
    rlca
    inc a
    ccf
    inc a
    ccf
    ld e, $1f
    ld e, $1f
    dec de
    rra
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_03a_440d

    db $10
    ldh a, [$50]
    ldh a, [$50]
    ldh a, [$08]
    ld hl, sp+$1c
    db $fc
    add hl, de
    rra
    add hl, sp
    ccf
    inc a
    ccf
    ld a, [hl]
    cp a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld e, a
    inc de
    inc l
    inc [hl]
    db $fc
    ld [$f0f8], sp
    ldh a, [rNR32]
    ld a, [$fcc4]
    db $fc
    ld a, [$f5fa]
    sub h
    ld l, d
    nop
    nop
    ld [bc], a
    nop
    rlca
    ld [bc], a
    dec a
    dec sp
    inc a
    ccf
    inc e
    rra
    ld e, $1f
    ld a, [de]
    rra
    ld bc, $f0fc
    ld bc, $0852
    ld bc, $0260
    ld a, $7f
    rst $38
    ld a, a
    ld a, a
    rst $38
    sbc a
    ld a, a
    ld h, h
    sbc e
    inc e
    db $fc
    inc [hl]
    db $fc
    adc b
    ld hl, sp+$78
    db $fc
    add $fc
    ld hl, sp-$02
    ld a, [c]
    db $fc
    ld c, h
    or d
    ld bc, $0400
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    cpl
    scf
    dec hl
    ld [hl], l
    ld c, d
    ld e, a
    ld h, b
    ld c, e
    ld [hl], h
    ld hl, $2b5e
    ld d, h
    inc e
    ld h, e
    inc hl
    ld e, h
    db $10
    dec hl
    ld bc, $0320
    ld bc, $03c7
    dec hl
    scf
    ld l, d
    ld [hl], l
    ld e, d
    ld h, l
    ld e, d
    push hl
    xor a
    ld d, b
    sub l
    ld l, d
    dec de
    db $e4
    adc h
    ld [hl], e
    ld h, b
    sbc [hl]
    nop
    ld bc, $0401
    inc b
    rrca
    dec bc
    ld l, $2b
    dec a
    ld a, [hl-]
    scf
    jr z, @+$1d

    inc d
    rra
    inc de
    rrca
    ld [$4040], sp
    ldh [$a0], a
    ld hl, sp-$48
    ld hl, sp+$28
    db $fc
    inc d
    ld a, h
    and h
    db $fc
    inc h
    ret c

    ld l, b
    rlca
    inc b
    rlca
    rlca
    rrca
    ld [$131f], sp
    inc e
    ld bc, $010b
    rlca
    rlca
    or b
    ret nc

    ldh [rNR41], a
    ret nz

    ret nz

    jr nc, jr_03a_4526

    ld hl, sp-$38
    db $fc
    inc a
    call nz, Call_000_04c4
    inc b
    rla
    inc e
    ccf
    daa
    add hl, sp
    add hl, hl
    ld a, $27
    rra
    db $10
    rrca
    rrca
    ld bc, $f0fc
    ret c

    add sp, $70
    ret nc

    ld hl, sp-$68
    db $fc
    inc h
    rst $30
    ei
    ld c, $0e
    ld bc, $f2fa
    rrca
    rrca
    dec a
    inc sp
    ld [hl], d
    ld c, l
    ld a, a
    ld e, [hl]
    pop de
    or c

jr_03a_4526:
    pop hl
    and c
    ldh [$a0], a
    adc b
    adc b
    db $fc
    ld [hl], h
    db $dd
    ld [hl], l
    rst $28
    rla
    ei
    dec b
    xor $92
    cp $0a
    db $fc
    call nz, $d8b8
    ld e, a
    ld h, a
    scf
    jr c, jr_03a_454f

    rrca
    rra
    inc de
    ccf
    inc a
    inc hl
    inc hl
    jr nz, jr_03a_456a

    inc [hl]
    inc l
    sbc b
    sbc b
    ld h, b

jr_03a_454f:
    ldh [$f0], a
    db $10
    ld hl, sp-$38
    ld hl, sp-$38
    ldh a, [rNR10]
    ldh [$e0], a
    sbc $be
    ld h, a
    ld e, c
    ld a, e
    ld c, h
    ld [hl], a
    ld l, h
    ld e, a
    ld [hl], c
    ld e, [hl]
    ld a, [hl]
    ldh [$a0], a
    ret nz

    ret nz

jr_03a_456a:
    inc [hl]
    inc l
    jr @+$1a

    add b
    add b
    add b
    add b
    ld bc, $f4f8
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    ld e, $1f
    rra
    ld de, $203f
    dec sp
    ld h, $2c
    scf
    ld a, [de]
    rla
    jr nz, @+$22

    ldh a, [$d0]
    ld [hl], h
    call nc, Call_03a_5cbc
    db $ec
    inc d
    ld hl, sp+$08
    ld hl, sp+$08
    ldh a, [rNR10]
    ld bc, $08d0
    add sp, $18
    ldh a, [$f0]
    add sp, $18
    db $fc
    db $e4
    sbc h
    sub h
    ld a, h
    db $e4
    ld hl, sp+$08
    ldh a, [$f0]
    ld bc, $f0a0
    nop
    ld bc, $0103
    ld bc, $0707
    inc b
    rlca
    inc c
    rrca
    dec bc
    rrca
    inc e
    rra
    ld [hl], b
    ld a, a
    ld [hl], c
    ld e, a
    ldh [$e0], a
    db $10
    ldh a, [rNR41]
    ldh [$30], a
    ldh a, [$d8]
    ld hl, sp+$34
    db $fc
    ld c, $fe
    adc [hl]
    ld_long a, $ffaf
    add [hl]
    db $fd
    di
    sbc a
    rst $10
    db $fc
    rst $30
    sbc e
    adc a
    ei
    ld h, a
    ld a, h
    rra
    rra
    rlca
    rlca
    ld [$030f], sp
    inc b
    nop
    dec de
    rra
    inc l
    ccf
    ld [hl], b
    ld a, a
    ld [hl], b
    ld e, a
    add b
    add b
    ldh [$e0], a
    inc bc
    inc d
    nop
    ret nc

    ldh a, [$38]
    ld hl, sp+$0e
    cp $0e
    ld_long a, $ffa0
    push hl
    sbc a
    rst $30
    rst $18
    rst $10
    db $fd
    or $db
    res 7, h
    ld h, h
    ld a, a
    rra
    rra
    ld [hl], b
    ld [hl], b
    sbc b
    ld hl, sp+$48
    ld a, b
    ld b, h
    ld a, h
    rst $08
    rst $38
    adc h
    rst $38
    sub b
    rst $38
    sbc c
    rst $38
    inc bc
    ld hl, sp-$0c
    ret nz

    ret nz

    inc bc
    ld c, d
    nop
    sbc [hl]
    ld_long a, $ff8f
    ld b, [hl]
    ld a, l
    ld d, e
    ld a, a
    scf
    inc a
    scf
    dec sp
    rra
    dec de
    rrca
    inc c
    rlca
    rlca
    ld h, b
    ld h, b
    and b
    ldh [$90], a
    ldh a, [$8e]
    cp $83
    rst $38
    call z, $d0ff
    rst $38
    ret nc

    inc bc
    ld l, a
    dec bc
    ld c, $fa
    ld h, b
    ld a, a
    ld h, l
    ld a, a
    scf
    ccf
    scf
    dec a
    ld d, $1b
    dec de
    inc e
    inc c
    rrca
    rlca
    rlca
    inc bc
    nop
    inc b
    ld [$380f], sp
    ccf
    ld a, b
    ld a, a
    ld d, b
    ld a, a
    inc bc
    db $10
    ld [bc], a
    ld [hl], b
    ldh a, [$58]
    ld hl, sp+$04
    db $fc
    ld b, $fe
    ld [bc], a
    cp $80
    rst $38
    add b
    rst $38
    ret nz

    cp a
    ret nz

    rst $38
    jp nz, $82bf

    rst $38
    inc bc
    ld e, h
    nop
    inc bc
    ld [c], a
    ld [bc], a
    ret nz

    rst $38
    jp nz, $c2ff

    cp a
    inc bc
    ld e, h
    nop
    nop
    ld bc, $0702
    rlca
    inc a
    ccf
    ld e, e
    ld a, a
    add h
    rst $38
    add a
    rst $38
    ld d, a
    ld a, l
    cpl
    ccf
    ld l, b
    ld a, a
    ldh [$e0], a
    inc a
    db $fc
    jp c, Jump_000_21fe

    rst $38
    pop hl
    rst $38
    ld [$f4be], a
    db $fc
    rla
    rst $38
    db $e4
    cp a
    di
    sbc a
    ldh [rIE], a
    inc a
    ccf
    dec bc
    rrca
    inc b
    rlca
    inc c
    rrca
    ccf
    ccf
    daa
    db $fd
    rst $08
    ld sp, hl

jr_03a_46c4:
    scf
    rst $38
    ld c, $fe
    db $f4
    db $fc
    jr jr_03a_46c4

    ld h, b
    ldh [$80], a
    add b
    ld [bc], a
    nop
    nop

jr_03a_46d3:
    ld c, h
    ld a, a
    add d
    rst $38
    sub e
    rst $38
    ld c, a
    ld a, a
    jr nc, jr_03a_471c

    jr nc, jr_03a_471e

    ldh [$e0], a
    jr nc, jr_03a_46d3

    ret nc

    ldh a, [$28]
    ld hl, sp-$08
    ld hl, sp-$08
    cp b

jr_03a_46eb:
    ldh a, [$f0]
    db $10
    ldh a, [rNR44]
    ccf
    ld d, a
    ld a, h
    ld c, a
    ld a, l
    ld [hl], a
    ld a, a
    add hl, hl
    ccf
    jr @+$21

    ld b, $07
    ld bc, $2801
    ld hl, sp-$38
    ld hl, sp-$78
    ld hl, sp+$30
    ldh a, [$c0]
    ret nz

    jr nz, jr_03a_46eb

    db $10
    ldh a, [$fc]
    db $fc
    ld [bc], a
    ld h, b
    ld [bc], a
    ld h, a
    ld a, a
    ld de, $101f
    rra
    ld hl, $7e3f
    ld a, [hl]

jr_03a_471c:
    ld [bc], a
    ld [hl], b

jr_03a_471e:
    inc b
    ldh [$e0], a
    ld b, b
    ret nz

    add b
    add b
    ld [bc], a
    cp $f4
    adc b
    rst $38
    add h
    rst $38
    ld d, e
    ld a, a
    jr c, jr_03a_476f

    ld c, a
    ld [bc], a
    rrca
    inc bc
    ld de, $21ff
    rst $38
    jp z, $0cfe

    db $fc
    jp nc, $84fe

    rst $38
    add e
    rst $38
    ld h, b
    ld a, a
    jr c, jr_03a_4785

    rrca
    rrca
    inc b
    rlca
    ld [$3f0f], sp
    ccf
    ld hl, $c1ff
    rst $38
    ld c, $fe
    ld [hl-], a
    cp $c4
    ld [bc], a
    add hl, sp
    inc bc
    ld [bc], a
    and b
    rst $38
    dec c
    nop
    ld bc, $0101
    rst $38
    ldh a, [rIF]
    rrca
    db $10
    rra
    ld hl, $533f
    ld a, [hl]
    db $76
    ld a, l
    ld d, a

jr_03a_476f:
    ld e, h
    inc e
    inc e
    ld [de], a
    ld e, $9d
    sub e
    ld e, a
    db $dd
    di
    di
    pop af
    ld sp, $58b8
    ld hl, sp-$08
    rla
    rra
    db $10
    rra
    db $10

jr_03a_4785:
    rra
    ret nc

    rst $18
    and e
    rst $38
    ld b, b
    ld a, a
    ld hl, $1e3f
    ld e, $24
    db $fc
    inc h
    db $fc
    ld d, h
    db $fc
    ret c

    ld hl, sp+$10
    ldh a, [rSVBK]
    ldh a, [$90]
    sub b
    nop
    nop
    ld bc, $0220
    db $10
    rra
    inc de
    rra
    jr nz, jr_03a_47e8

    cpl
    ccf
    jr nc, jr_03a_47dd

    ld bc, $0400
    jr nz, jr_03a_47f1

    ld d, c
    ld a, a
    ld [hl], e
    ld a, [hl]
    ld d, e
    ld e, a
    ld bc, $0410
    ei
    ei
    ld sp, hl
    add hl, sp
    cp b
    ld e, b
    db $e4
    db $fc
    ld bc, $0242
    ret nc

    rst $18
    and b
    ld bc, $0329
    inc b
    db $fc
    ld [$18f8], sp
    ld bc, $0183
    ld l, b
    add sp, -$78
    adc b
    nop
    nop
    ld bc, $0242

jr_03a_47dd:
    ld bc, $0022
    ld bc, $024a
    jr c, jr_03a_481d

    ld c, b
    ld a, b
    cp c

jr_03a_47e8:
    ret


    ld a, [$cebb]
    rst $08
    adc h
    adc a
    jr jr_03a_4810

jr_03a_47f1:
    jr @+$21

    ld bc, $f0ff
    ldh a, [$f0]
    ld [$04f8], sp
    db $fc
    ld [hl-], a
    cp $0e
    cp $0a
    ld a, [$3f20]
    jr nz, jr_03a_4845

    jr z, jr_03a_4847

    jr jr_03a_4829

    ld [$0e0f], sp
    rrca
    add hl, bc
    add hl, bc

jr_03a_4810:
    ld bc, $ffa0
    rra
    nop
    ld bc, $0102
    ld bc, $0303
    inc b
    rlca

jr_03a_481d:
    ld a, a
    ld a, a
    xor a
    jp c, $8dfe

    db $fd
    sbc [hl]

jr_03a_4825:
    di
    sbc a
    sbc b
    sbc b

jr_03a_4829:
    db $fc
    db $e4
    jr z, jr_03a_4825

    db $fc
    db $fc
    ldh a, [$50]
    ld h, b
    and b
    cp a
    ld a, a
    rst $18
    pop af
    rst $38
    cp [hl]
    pop af
    cp a
    ld e, b
    ld e, a
    ld a, [hl-]
    dec a
    ld [hl], b
    ld a, a
    ld l, d
    ld a, a
    inc l
    ccf

jr_03a_4845:
    rra
    rra

jr_03a_4847:
    ei
    ld [hl], l
    sbc e
    push af
    rra
    pop af
    ld c, [hl]
    cp d
    ld c, $fe
    ld d, [hl]
    cp $34
    db $fc
    ld hl, sp-$08
    ld hl, sp-$41
    ld a, [$58bd]
    ld e, a
    ld [hl-], a
    ccf
    ld e, h
    ld a, a
    adc a
    rst $38
    sbc d
    cp $7e
    ld a, [hl]
    dec de
    push af
    ld e, e
    or l
    rra
    pop af

jr_03a_486d:
    ld c, [hl]
    ld a, [$fe3e]
    pop af
    rst $38
    ld e, c
    ld a, a
    ld a, [hl]
    ld a, [hl]
    add hl, de
    add hl, de
    scf
    cpl
    inc e
    rla
    ccf
    ccf
    dec bc
    inc c
    db $fd
    cp $fd

jr_03a_4884:
    adc [hl]
    sbc $af
    add b
    add b
    ret nz

    ret nz

    jr nz, jr_03a_486d

    ld hl, sp-$08
    and b
    ldh [$6c], a
    xor h
    or h
    ld a, h
    ld [hl], h
    db $fc
    db $db
    xor a
    db $fc
    adc a
    ld a, a
    ld e, l
    scf
    inc a
    rla
    rra
    inc de
    rra
    inc de
    rra
    ld c, $0e
    jp z, $81f6

    rst $38
    and l
    rst $38
    or c
    rst $38
    ld l, $ee
    sub b
    ldh a, [$90]
    ldh a, [rSVBK]
    ld [hl], b
    ld [bc], a
    add b
    inc b
    ld h, a
    ld a, a
    ld c, a
    ld a, a
    jr c, jr_03a_48f8

    nop
    nop
    ld [bc], a
    ld [hl], b
    inc b
    ret c

    jr c, jr_03a_4884

    ld [hl], h
    or [hl]
    ld a, [hl]
    ld a, e
    db $fd
    db $dd
    or e
    sbc $bf
    ld hl, sp-$71
    ld [hl], d
    ld e, a
    ld [hl-], a
    ccf
    ld c, a
    ld a, a
    ld c, l
    ld a, a
    ld a, $3e
    cp l
    bit 6, [hl]
    ld a, [$fa16]
    adc d
    cp $4c
    db $fc
    ld [hl], d
    cp $b2
    cp $7c
    ld a, h
    db $dd
    or d
    rst $18
    cp a
    db $fc
    adc a
    ld a, b
    ld e, a
    ld [hl-], a
    ccf
    ld [hl-], a

jr_03a_48f8:
    ccf
    dec hl
    ccf
    rra
    rra
    cp l
    ld c, e
    or $fa
    ld [hl], $fa
    ld a, [de]
    cp $8c
    db $fc
    ld c, h
    db $fc
    ld d, h
    db $fc
    ld hl, sp-$08
    nop
    ld bc, $1100
    ld de, $1a1b
    rra
    ld d, $1e
    dec d
    ld e, $11
    rst $38
    rst $38
    sbc [hl]
    rst $38
    ld c, b
    ld a, a
    db $10
    db $10
    or b
    or b
    db $f4
    ld d, h
    ld a, [hl]
    sbc d
    ld a, a
    sub c
    push af
    ei
    sbc $fe
    ld l, $fa
    daa
    ccf
    ld b, a
    ld a, a
    ld c, h
    ld a, a
    ld e, a
    ld [hl], e
    ld e, a
    ld [hl], b
    ld e, a
    ld [hl], b
    sbc a
    rst $38
    ldh a, [$f0]
    xor $fe
    rst $10
    ld sp, hl
    ld [hl], e
    db $fd
    xor $be
    xor $3a
    nop
    jr c, jr_03a_494d

jr_03a_494d:
    cp $fe
    nop
    jr nz, jr_03a_4961

    ld [$2efa], sp
    ld a, [hl-]
    ld a, $3e
    nop
    nop
    ld bc, $1f14
    db $10
    rra
    db $10
    ld a, a

jr_03a_4961:
    ld a, a
    ld c, h
    ld a, a
    inc h
    ccf
    nop
    stop
    ldh a, [$50]
    sub h
    ld [hl], h
    sbc [hl]
    ld a, d
    rst $38
    pop af
    push af
    ei
    cpl
    rst $28
    dec h
    ccf
    ld b, l
    ld a, a
    ld b, [hl]
    ld a, a
    add a
    db $fd
    adc a
    ld hl, sp-$71
    ld hl, sp-$61
    rst $38
    ldh [$e0], a
    xor $ea
    adc $ce
    ld e, l
    db $d3
    ld sp, hl
    or a
    cp $3e
    xor $2a
    cp $1a
    cp $fe
    nop
    add b
    ld [bc], a
    adc a
    ld sp, hl
    adc a
    ld hl, sp-$79
    db $fc
    nop
    adc h
    add hl, bc
    ld e, $fe
    ld a, d
    adc [hl]
    adc d
    ld c, $0e
    nop
    ld h, b
    inc bc
    inc de
    rra
    rra
    ldh [rIE], a
    ld b, a
    ld a, a
    ld l, h
    ld a, a
    adc b
    adc b
    ret c

    ld e, b
    ld hl, sp+$28
    ld hl, sp-$38
    ld hl, sp-$08
    rlca
    rst $38
    pop hl
    rst $38
    ld a, [hl-]
    cp $30
    ccf
    jr nz, jr_03a_4a07

    jr nz, jr_03a_4a09

    ld b, b
    ld a, a
    nop
    and $00
    add c
    rst $38
    cp $fe
    inc b
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $00
    db $f4
    nop
    ld bc, $fdff
    rst $38
    inc bc
    inc bc
    nop
    ld bc, $0001
    nop
    rlca
    rlca
    ld c, $0f
    rrca
    rrca
    inc de
    dec e
    rla
    rra
    ld a, $3f
    ld c, b
    ld a, a
    ld e, $1e
    rst $38
    db $ed
    rst $38
    pop hl
    rst $38
    di
    sbc $3a
    cp $fa
    sbc $fa
    xor $3a
    ld l, a
    ld a, a

jr_03a_4a07:
    rst $30
    sbc a

jr_03a_4a09:
    db $fc
    sbc a
    ld h, a
    ld h, a
    rrca
    inc c
    ccf
    inc sp
    ccf
    ccf
    nop
    nop
    adc $fe
    rst $18
    ld sp, hl
    ld l, e
    db $ed
    sbc $d6
    ld sp, hl
    rst $38
    sbc $be
    ld l, b
    sbc b
    ld hl, sp-$08
    ld bc, $0420
    dec de
    rra
    add hl, hl
    scf
    ld d, a
    ld l, a
    ld a, b
    ld a, b
    adc $fe
    rst $38
    ld sp, hl
    ld l, e
    db $ed
    cp $f6
    cp c
    rst $38
    sbc [hl]
    cp $60
    ld h, b
    nop
    nop
    rrca
    rrca
    ld e, $1f
    rra
    rra
    jr nz, jr_03a_4a87

    inc hl
    ccf
    inc hl
    ccf
    inc e
    rra
    dec sp
    ccf
    ld e, $1e
    cp a
    xor l
    cp a
    and c
    cp [hl]
    or d
    sbc h
    sub h
    ld bc, $0078
    call c, Call_03a_4bd4
    ld a, a
    ld b, h
    ld a, a
    ld a, a
    ld a, a
    dec d
    rra
    dec de
    rra
    ccf
    ld a, $4f
    ld a, h
    ld a, a
    ld a, a
    db $fc
    db $fc
    ld a, h
    db $e4
    db $f4
    db $ec
    ld a, $3a
    cp [hl]
    and d
    db $fc
    ld a, h
    ldh [rNR41], a
    ldh [$e0], a
    sub a
    rst $38
    adc b
    rst $38
    rst $38
    rst $38
    dec de
    rra

jr_03a_4a87:
    ld a, a
    ld a, a
    ei
    adc e
    ei
    ei
    nop
    nop
    ld hl, sp-$08
    ld hl, sp-$38
    add sp, -$28
    db $fc
    db $f4
    db $fc
    db $e4
    db $fc
    inc e
    ld hl, sp-$08
    nop
    nop
    ld a, b
    ld a, b
    rst $38
    or a
    rst $38
    add a
    rst $38
    rst $08
    ld a, h
    ld e, a
    ld a, b
    ld e, a
    ld a, c
    ld e, a
    db $76
    ld e, a
    nop
    nop

jr_03a_4ab1:
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    jr jr_03a_4ab1

    ld [$dcf8], sp
    db $fc
    ld [hl-], a
    cp $6e
    cp $66
    cp $3c
    db $fc
    ld bc, $00d2
    add sp, -$28
    db $e4
    db $fc
    cp b
    cp b
    ld bc, $04e0
    ld hl, sp-$08
    ld [hl], h
    ld c, h
    add d
    cp $7c
    ld a, h
    nop
    ld bc, $0100
    ld bc, $3e3f
    ld e, h
    ld h, a
    db $fc
    sbc a
    ldh a, [rIE]
    sbc a
    rst $38
    sub a
    ld a, [$fdea]
    add b
    add b
    call z, $2e4c
    ld [$fa3e], a
    rrca
    db $fd
    rst $38
    db $fd
    rst $28
    ld e, l
    ld e, a
    cp a
    xor a
    rst $38
    push af
    cp [hl]
    ei
    cp a
    sbc a
    ldh a, [$9f]
    ei
    ld [hl], h
    ld a, h
    add d
    cp $7c
    ld a, h
    ld sp, hl
    rst $38
    xor c
    ld a, a
    sbc $fe
    ld a, [$f40e]
    call nc, $f0b0
    adc b
    ld hl, sp+$78
    ld a, b
    nop
    nop
    add hl, bc
    ld hl, sp+$00
    ld c, $00
    db $fc
    ld a, h
    ld a, [hl-]
    and $3f
    ld sp, hl
    rrca
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    ld e, a
    ld d, [hl]
    cp [hl]
    xor a
    db $f4
    ei
    or [hl]
    db $ed
    cp e
    sbc a
    ldh a, [$9e]
    rst $38
    ld l, a
    ld l, a
    ld de, $0f1f
    rrca
    cp $fa
    cp [hl]
    ld [hl], d
    call c, $e8f4
    ld hl, sp-$10
    jr nc, @-$46

    ld hl, sp+$04
    db $fc
    ld hl, sp-$08
    ld bc, $3701
    ld [hl], $74
    ld d, a
    call c, $f0bf
    cp a
    rst $38
    cp a
    sub a
    ld hl, sp-$66
    db $fd
    add h
    add h
    xor $6a
    ld l, $ea
    dec sp
    db $fd
    nop
    jr jr_03a_4b6c

jr_03a_4b6c:
    ei
    ld e, a
    ld d, c
    cp a
    ld e, a
    ld l, h
    ld a, e
    db $76
    sbc l
    ei
    sbc a
    ldh a, [$6f]
    ld l, e
    dec de
    rra
    jr nz, @+$41

    rra
    rra
    ld sp, hl
    rst $38
    xor a
    ld a, a
    call $f2ff
    ld a, [c]
    ld b, b
    ret nz

    ldh a, [$f0]
    ld c, b
    ld hl, sp-$10
    ldh a, [rP1]
    ld b, b
    ld a, [bc]
    jp hl


    cp $00
    db $10
    add hl, bc
    dec e
    sbc a
    ld a, a
    xor a
    rst $38
    rst $30
    cp b
    ld sp, hl
    cp [hl]
    nop
    ld h, $08
    jp hl


    rra
    sbc [hl]
    ld a, [hl]
    nop
    ld [hl], $06
    nop
    ld bc, $0102
    ld bc, $1e1f
    ccf
    ld [hl+], a
    ld [hl], l
    ld c, [hl]
    ld l, e
    ld e, a
    ld e, a
    ld a, l
    cp a
    rst $30
    sbc $b7
    jr nc, jr_03a_4bf0

    ret z

    ld hl, sp+$6c
    call nc, $fe66
    cp e
    db $fd
    rst $00
    ld a, l
    xor $fe
    or h
    db $fc
    ld a, a
    ld [hl], a
    ld e, h
    ld [hl], a
    ld e, d
    ld a, a

Call_03a_4bd4:
    dec a
    ccf
    inc d
    rra
    inc e
    rla
    ccf
    ccf
    nop
    nop
    or [hl]
    ld a, [$fa76]
    xor h
    db $f4
    ld a, h
    db $f4
    ld e, b
    ld hl, sp+$78
    ret z

    ret z

    ld hl, sp+$7c
    ld a, h
    add hl, sp
    add hl, sp

jr_03a_4bf0:
    ld a, a
    ld c, [hl]
    db $ed
    sbc [hl]
    db $dd
    cp [hl]
    ei
    rst $38
    rst $10
    cp l
    cp a
    rst $38
    ld e, d
    ld a, a
    nop
    nop
    or b
    or b
    ld e, b
    add sp, $44
    db $fc
    or h
    db $ec
    ld_long a, $ff7e
    db $dd
    rst $30
    rst $18
    nop
    nop
    ld a, e
    ld a, e
    ld a, h
    ld b, a
    ld l, $33
    rla
    dec de
    dec bc
    rrca
    ld e, $1f
    ld [hl], $3b
    dec de
    rra
    inc d
    rra
    rrca
    rrca
    inc c
    rrca
    ld d, $1f
    ld e, $02
    dec hl
    ld bc, $1c1c
    rra
    inc de
    rla
    add hl, de
    dec bc
    dec c
    rrca
    rrca
    dec bc
    dec c
    dec e
    rra
    ld h, $3f
    rra
    rra
    db $10
    rra
    rrca
    rrca
    ld e, $1f
    inc de
    rra
    rrca
    add hl, bc
    ld de, $1f1f
    rra
    inc c
    inc c
    inc de
    rra
    ld [hl], $2b
    ld h, [hl]
    ld a, a
    call c, $e2bf
    cp a
    ld [hl], a
    ld a, a
    inc l
    ccf
    add b
    add b
    ld hl, sp+$78
    cp h
    ld l, h
    cp [hl]
    ld [hl], d
    sbc [hl]
    ld a, [hl]
    and d
    ld a, [hl]
    rst $30
    rst $38
    dec de
    rst $38
    ld l, h
    ld e, a
    ld l, a
    ld e, a

jr_03a_4c70:
    inc [hl]
    cpl
    ld a, $2f
    ld a, [de]
    rra
    ld e, $13
    inc de
    rra
    ld a, $3e
    ld e, $fe

jr_03a_4c7e:
    ld a, [$1afe]
    cp $3c
    db $fc
    jr z, jr_03a_4c7e

    jr c, jr_03a_4c70

    db $fc
    db $fc
    ld [bc], a
    db $fc
    ldh a, [$0d]
    dec c
    ld a, [de]
    rla
    ld [hl+], a
    ccf
    inc a
    ccf
    ld h, d
    ld a, a
    or a
    rst $38
    db $ec
    rst $38
    sbc h
    sbc h
    cp $72
    or a
    ld a, c
    cp e
    ld a, l
    sbc a
    ld a, a
    and e
    ld a, a
    push af
    rst $38
    ld a, [de]
    cp $00
    ld bc, $0309
    inc bc
    ld bc, $0f01
    ld c, $1f
    ld [de], a
    dec hl
    inc l
    inc de
    dec e
    rra
    inc de
    ccf
    ld [hl-], a
    add b
    add b
    ret nc

    ld d, b
    ldh [$60], a
    ld [hl], b
    sub b
    db $f4
    inc d
    db $fc
    ld c, h
    ld hl, sp+$68
    db $fc
    inc h
    scf
    jr z, @+$21

    add hl, de
    rlca
    dec b
    dec c
    ld a, [bc]
    rlca
    inc b
    ld b, $05
    inc bc
    inc bc
    nop
    nop
    db $f4
    adc h
    add sp, -$28
    ldh a, [$50]
    ld hl, sp+$08
    ld a, b
    add sp, -$70
    sub b
    ld b, b
    ret nz

    ret nz

    ret nz

    ld [$0b08], sp
    dec bc
    ld c, $0d
    rrca
    ld [$0605], sp
    dec hl
    dec l
    dec a
    inc sp
    ccf
    ld [hl+], a
    add b
    add b
    ret nz

    ld b, b
    cp b
    ld a, b
    cp b
    ld l, b
    ld a, [$fc0a]

jr_03a_4d09:
    ld b, h
    call nc, $fe6c
    ld h, $17
    jr jr_03a_4d20

    dec c
    ld b, $05
    rrca
    ld [$0e0f], sp
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    cp $82

jr_03a_4d20:
    db $ec
    call c, Call_03a_50b0
    ld hl, sp+$08
    or b
    ld [hl], b
    ld b, b
    ret nz

    ret nz

    ld b, b
    add b
    add b
    db $10
    db $10
    or b
    or b
    ldh a, [$d0]
    ld h, b
    and b
    ret nc

    jr nc, jr_03a_4d09

    ld [hl], b
    ret nc

    ldh a, [$d8]
    xor b
    add sp, $38
    ldh a, [rSVBK]
    ldh [$60], a
    and b
    ld h, b
    ldh a, [rNR10]
    ldh a, [$f0]
    add b
    add b
    nop
    nop
    add b
    add b
    and b
    and b
    ldh [$60], a
    ldh [rNR41], a
    add sp, $28
    ldh a, [$50]
    ld d, b
    ldh a, [$f8]
    sbc b
    ld hl, sp+$28
    ldh a, [rSVBK]
    ret nz

    ld b, b
    ldh [rNR41], a
    ret nz

    ret nz

    add hl, bc
    ld a, [$01f2]
    ld bc, $0203
    dec e
    ld e, $1d

jr_03a_4d72:
    ld d, $5f
    ld d, b
    dec a
    ld [hl+], a
    dec l
    ld [hl-], a
    ld a, e
    ld h, h
    db $10
    db $10
    ret nc

    ret nc

    ld [hl], b
    or b
    ldh a, [rNR10]
    and b
    ld h, b
    call nc, Call_000_3c34
    call z, $04fc
    ld a, l
    ld b, d
    inc [hl]
    dec sp
    dec c
    ld a, [bc]
    rra
    db $10
    dec c
    ld c, $02
    inc bc
    add hl, bc
    ld l, d
    nop
    add sp, $18
    ldh a, [$30]
    ld h, b
    and b
    jr nc, jr_03a_4d72

    add hl, bc
    or d
    nop
    add hl, bc
    sbc h
    nop
    nop
    ld bc, $2005
    jr nz, jr_03a_4e1e

    ld d, b
    ld hl, sp-$78
    ld [hl], c
    ld d, c
    daa
    ld h, $0e
    add hl, bc
    dec bc
    inc c
    ld b, $07
    dec b
    ld a, [$86f2]
    add [hl]
    rst $28
    ld l, c
    db $76
    sub [hl]
    ret nc

    jr nc, jr_03a_4e27

    ldh [rIF], a
    ld [$161b], sp
    ld a, $21
    dec a
    ld h, $1f
    inc de
    ld l, $2f
    ld [hl], d
    ld d, e
    ld hl, $f021
    db $10
    ret c

    ld l, b
    ld a, h
    add h
    cp h
    ld h, h
    ld hl, sp-$38
    ld [hl], b
    ldh a, [rLCDC]
    ret nz

    add b
    add b
    ld bc, $0701
    ld b, $0f
    add hl, bc
    ld a, [bc]
    dec c
    ld h, l
    ld h, [hl]
    or $97
    ld h, a
    ld h, h
    rrca
    ld [$8080], sp
    db $e4
    ld h, h
    cp $9a
    ld e, a
    or c
    cp [hl]
    ld a, d
    ld h, h
    db $e4
    ldh [rNR41], a
    ldh a, [rNR10]
    dec de
    ld d, $1e
    ld de, $161d
    rrca
    dec bc
    ld b, $07
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    ret c

    ld l, b
    ld a, b
    adc b
    cp b
    ld l, b

jr_03a_4e1e:
    ldh a, [$d0]
    ld h, h
    db $e4
    ld c, [hl]
    jp z, $8484

    dec b

jr_03a_4e27:
    ld a, [$05f4]
    ld b, $06
    dec c
    ld a, [bc]
    rra
    db $10
    ccf
    jr nz, @+$31

    jr nc, jr_03a_4e4c

    jr jr_03a_4e44

    ld c, $03
    inc bc
    nop
    nop
    ldh a, [rNR10]
    cp b
    ld l, b
    db $ec
    inc d
    cp h
    ld h, h

jr_03a_4e44:
    db $fc
    inc e
    call nc, $fa3c
    cp $04
    inc b

jr_03a_4e4c:
    add b
    add b
    ldh [$60], a
    ldh a, [$90]
    ld d, b
    or b
    and h
    ld h, h
    ld l, [hl]
    ld [$24e4], a
    ldh a, [rNR10]
    rra
    db $10
    rra
    db $10
    rla
    jr jr_03a_4e6e

    inc c
    ld h, $27
    ld [hl], c
    ld d, c
    jr nz, jr_03a_4e8a

    nop
    nop
    ld a, b
    ret z

jr_03a_4e6e:
    ret c

    jr z, @-$46

    ld l, b
    ret c

    jr c, @+$2a

    ld hl, sp-$18
    ld hl, sp+$10
    stop
    nop
    or b
    ld d, b
    ld hl, sp+$08
    db $fc
    inc b
    db $f4
    inc c
    add sp, $18
    or h
    ld [hl], h
    adc $ca

jr_03a_4e8a:
    inc b
    inc b
    ld hl, sp+$08
    ld hl, sp+$08
    add sp, $18
    dec b
    inc e
    nop
    add b
    add b
    dec b
    and b
    ldh a, [rP1]
    ld bc, $0308
    inc bc
    dec b
    ld b, $07
    inc b
    dec b
    ld b, $0e
    add hl, bc
    ld l, $2b
    add hl, de
    ld e, $1f
    inc e
    ccf
    cpl
    dec a
    ld l, $3f
    cpl
    ld a, [hl]
    ld d, a
    ld a, a
    ld a, [hl]
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $fc01
    db $f4
    cp h
    ld [hl], h
    db $fc
    db $f4
    ld a, [hl]
    ld [$fe7e], a
    ld b, b
    ret nz

    or b
    ld [hl], b
    ret nz

    ret nz

    ccf
    cpl
    dec [hl]
    cpl
    ccf
    dec l
    ccf
    ld l, $13
    inc de
    ld [$041a], sp
    xor h
    db $f4
    db $fc
    or h
    db $fc
    ld [hl], h
    call z, $08cc
    ld a, [hl+]
    ld [bc], a
    ld [$f6f6], sp
    inc b
    inc b
    ld b, $06
    rlca
    rlca
    ld h, b
    ld h, b
    or b
    ret nc

    db $fc
    adc h
    ld a, [c]
    adc [hl]
    cp a
    pop bc
    ld a, l
    ld b, a
    ld c, e
    ld [hl], a
    rst $30
    ld sp, hl
    ld [bc], a
    inc bc
    ld [$001c], sp
    ld bc, $c101
    pop bc
    ld a, [hl]
    ld a, a
    scf
    jr c, jr_03a_4f1b

    rrca
    xor $7e
    ld a, [$fea6]
    cp [hl]
    ldh a, [$50]
    ldh a, [$f0]
    ldh [rNR41], a
    ld b, b
    ret nz

jr_03a_4f1b:
    add b
    add b
    ld [$0e70], sp
    cp $ae
    cp $ae
    ld a, [$6eb6]
    xor $08
    adc d
    ld [bc], a
    ld [$0700], sp
    add hl, hl
    add hl, de
    rra
    rra
    ld e, $1f
    ld d, $33
    ld l, $3d
    ld l, $7f
    ld d, [hl]
    ld [$0418], sp
    ld a, b
    add sp, -$34
    ld [hl], h
    cp h
    ld [hl], h
    ld [$0626], sp
    rra
    ld d, $1b
    ld d, $3d
    ld l, $3f
    ld l, $13
    ld [de], a
    ld [$04ca], sp
    ret c

    ld l, b

jr_03a_4f56:
    inc a
    db $f4
    ld a, h
    db $f4
    ld c, b
    ret z

    ld [$024a], sp
    nop
    ld bc, $0002
    nop
    inc bc
    inc bc
    inc d
    rla
    dec a
    ld l, $3f
    dec hl
    rra
    db $10
    rra
    ld d, $1d
    dec de
    ldh a, [$f0]
    jr nz, jr_03a_4f56

    ld e, b
    ret c

    ld a, b
    add sp, -$10
    sub b
    ldh a, [$30]
    db $fc
    call c, $927e
    rrca
    inc c
    dec de
    ld e, $3f
    jr z, jr_03a_4fc8

    dec sp
    rrca
    ld a, [bc]
    rra
    dec d
    ccf
    inc hl
    inc a
    inc a
    db $fc
    inc [hl]
    ld e, b
    add sp, $70
    sub b

jr_03a_4f98:
    ldh a, [$d0]
    ldh a, [$50]
    ldh [$a0], a
    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    inc b
    rlca
    ld a, [de]
    dec de
    ld e, $17
    rrca
    add hl, bc
    rrca
    inc c
    ccf
    ld a, [hl-]
    ccf
    dec h
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_03a_4f98

    or b
    ld [hl], b
    ldh a, [$d0]
    ld hl, sp+$08
    ld hl, sp+$68
    ld hl, sp-$58
    rra
    ld [de], a
    rrca
    ld [$6202], sp

jr_03a_4fc8:
    ld [bc], a
    rlca
    inc b
    inc bc
    inc bc
    nop
    nop
    ldh a, [$50]
    or b
    ld [hl], b
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$90]
    ldh a, [rSVBK]
    ld hl, sp-$38
    ld a, b
    ld a, b
    nop
    nop
    ld bc, $0201
    ld b, h
    inc b
    rrca
    ld a, [bc]
    rrca
    add hl, bc
    ld a, b
    ld a, b
    sub b
    ldh a, [rSC]
    ld d, h
    ld [$0c0f], sp
    rra
    db $10
    ccf
    ld h, $3f
    jr c, jr_03a_5009

    ld [$0607], sp
    rrca
    add hl, bc
    rrca

jr_03a_5000:
    rrca
    ld [bc], a
    ld [hl], b
    ld b, $e0
    ldh [rP1], a
    nop
    add b

jr_03a_5009:
    add b
    ld [bc], a
    ld b, b
    ld b, $1f
    db $10
    ccf
    inc a
    ld a, a
    ld c, d
    ld [bc], a
    ld d, b
    nop
    jr z, jr_03a_5000

    cp h
    ld [hl], h
    db $fc
    db $d4, $f8, $08
    ld hl, sp+$08
    ld hl, sp-$28
    ccf
    ld a, [hl+]
    ld e, $11
    ld [bc], a
    ld h, h
    ld [$b070], sp
    ld hl, sp+$18
    db $fc
    inc d
    db $fc
    inc e
    ldh a, [rNR10]
    ld hl, sp+$28
    db $fc
    call nz, Call_000_3c3c
    nop
    ld bc, $0602
    ld b, $0e
    ld a, [bc]
    rlca
    dec b
    rlca
    ld b, $0d
    rrca
    ld [hl], a
    ld a, h
    xor e
    sub $f7
    ld [$1c1f], a
    rrca
    dec bc
    ld e, $17
    inc e
    rla
    inc e
    rla
    ld c, $0b
    rlca
    inc b
    inc bc
    inc bc
    ld [bc], a
    cp $f0
    rrca
    add hl, bc
    rrca
    ld c, $05
    rlca
    rrca
    inc c
    dec de
    ld d, $37
    ld a, [hl+]
    cpl
    inc [hl]
    ld e, a
    ld l, e
    ld a, [hl]
    ld d, a
    ld a, h
    ld [hl], a
    ld [bc], a
    jr jr_03a_507a

    jr jr_03a_5090

    jr c, jr_03a_50a2

jr_03a_507a:
    jr c, @+$2a

    rra
    rla
    dec de
    inc e
    rra
    inc de
    cpl
    inc [hl]
    dec a
    ld a, [hl+]
    nop
    nop
    rra
    rra
    rst $38
    pop hl
    rst $38
    ld bc, $01ff

jr_03a_5090:
    cp [hl]
    jp nz, $f26e

    cp d
    ld a, [hl]
    ld a, $2f
    dec a
    inc sp
    ld l, a
    ld d, l
    rst $10
    xor d
    cp a
    rst $10
    ld l, b
    ld a, b

jr_03a_50a2:
    db $10
    stop
    nop
    and $a6
    ldh [$a0], a
    and b
    ld h, b
    ld b, b
    ret nz

    add b
    add b

Call_03a_50b0:
    ld [bc], a
    ld hl, sp-$0a
    rrca
    add hl, bc
    rra
    rla
    dec bc
    inc c
    ld [bc], a
    ld c, d
    rrca
    inc bc
    ld a, [hl-]
    cpl
    ld a, l
    ld l, d
    cp a
    rst $10
    rst $28
    sbc h
    cp a
    db $e3
    ld l, l
    ld d, e
    ld a, a
    ld d, h
    dec hl
    dec hl
    ld [bc], a
    ld [hl], b
    ld [$8080], sp
    add b
    add b
    ld [bc], a
    nop
    ld [bc], a
    ld b, $07
    dec c
    ld c, $02
    ld a, [bc]
    dec b
    inc c
    rla
    inc e
    dec d
    ld e, $1b
    rla
    inc c
    ld [bc], a
    dec de
    rlca
    ld c, $0f
    dec b
    ld b, $02
    ld a, [hl+]
    inc b
    ld d, a
    ld l, h
    ld l, a
    ld e, h
    ld [hl], l
    ld a, [hl]
    ld [bc], a
    ret c

    inc b
    nop
    ld bc, $ef01
    rst $28
    sub h
    rst $30
    rst $28
    rst $38
    sub l
    rst $38
    adc d
    db $fd
    ld c, a
    ld a, d
    ld c, d
    ld a, l
    ld d, d
    ld a, a
    ld [hl], d
    ld a, a
    db $f4
    cp a
    ld h, e
    ld a, a
    daa
    inc a
    rla
    rra
    ld [$070f], sp
    rlca
    inc bc
    inc bc
    rrca
    rrca
    inc b
    rlca
    rst $30

jr_03a_5121:
    rst $30
    sbc l
    rst $38
    ld [$9ffd], a
    ld a, [$fd8a]
    ld bc, $0e0e
    ld [hl], a
    ld [hl], a
    ld c, d
    ld a, e
    ld [hl], a
    ld a, a
    ld c, d
    ld a, a
    ld c, d
    ld a, a
    ld h, $3f
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ldh a, [$f0]
    jr nz, jr_03a_5121

    ldh [$e0], a
    ld h, b
    ldh [$50], a
    or b
    ldh a, [$50]
    ld c, b
    cp b
    inc b
    db $fc
    ld a, [de]
    rra
    inc e
    rla
    jr jr_03a_5172

    jr jr_03a_5174

    inc c
    ld bc, $011b
    nop
    nop
    ld [de], a
    cp $22
    cp $3c
    db $fc
    ld a, h
    call nz, $f878
    ld [$f0f8], sp
    ldh a, [$e0]
    ldh [rTAC], a
    rlca
    ld [bc], a
    inc bc
    ld a, a
    ld a, a
    ld b, [hl]

jr_03a_5172:
    ld a, a
    ld a, d

jr_03a_5174:
    ld bc, $0349
    ld bc, $0500
    rst $38
    ld b, d
    ld a, a
    ld b, d
    ld a, a
    ld b, b
    ld a, a
    ld c, h
    ld a, a
    ldh a, [$bf]
    ld h, c
    ld a, a
    ld hl, $133f
    rra
    dec bc
    ld bc, $091b
    add sp, -$01
    sub h
    rst $38
    adc d
    rst $38
    ld b, b
    ld a, a
    ld b, h
    ld a, a
    add sp, -$41
    ld [hl], c
    ld bc, $07a5
    ld bc, $ffa0
    dec e
    nop
    ld bc, $0505
    rst $38
    ldh a, [$61]
    ld h, c
    ld e, d
    ld a, e
    ld h, $3f
    jp hl


    rst $38
    or d
    rst $38
    ld b, b
    ld a, a
    dec b
    rst $38
    ldh a, [$0c]
    inc c
    or h
    cp h
    ret z

    ld hl, sp+$28
    ld hl, sp-$68
    ld hl, sp+$04
    db $fc
    daa
    dec a
    jr nz, jr_03a_5207

    ld b, a
    ld a, h
    inc h
    ccf
    ld d, e
    ld a, a
    ld a, h
    ld a, a
    inc de
    rra
    inc e
    inc e
    db $c2, $7e, $0e

    cp $c4
    ld a, h
    ld c, b
    ld hl, sp-$6c
    db $fc
    ld a, h
    db $fc
    add b
    add b
    dec b
    cp $f2
    jr nc, @+$32

    dec l
    dec a
    inc de
    rra
    ld [hl], h
    ld a, a
    ld e, b
    ld a, a
    ld b, h
    dec b
    rrca
    ld bc, $8080
    ld b, b
    ret nz

    ld e, b
    ret c

    jr z, @-$06

    db $10
    ldh a, [rNR10]
    ldh a, [rNR41]
    ccf
    jr @+$21

    jr nz, @+$41

    ld a, [de]
    rra

jr_03a_5207:
    dec c
    rrca
    ld a, [bc]
    rrca
    rrca
    rrca
    rlca
    rlca
    ld a, b
    ret c

    ld [$78f8], sp
    ret z

    ld c, b
    ld hl, sp+$30
    ldh a, [rNR10]
    ldh a, [$c8]
    ld hl, sp+$70
    ld [hl], b
    dec b
    ld b, b
    ld b, $14
    rra
    jr jr_03a_5245

    inc [hl]
    ccf
    dec b
    ld d, b
    inc c
    ld b, b
    ld a, a
    ld c, b
    ld a, a
    jr nc, jr_03a_5236

    ld h, l
    ld bc, $0f0b
    inc b

jr_03a_5236:
    rlca
    inc bc
    inc bc
    dec b
    ld [hl], b
    ld [$e060], sp
    ldh a, [$f0]
    dec b
    add b
    ld [$1f19], sp

jr_03a_5245:
    jr z, jr_03a_524c

    adc a
    ld bc, $8686
    ld e, d

jr_03a_524c:
    sbc $64
    db $fc
    sub a
    rst $38
    ld c, l
    rst $38
    ld a, [bc]
    cp $50
    ld a, a
    ld [hl], b
    ld a, a
    jr nz, @+$41

    db $10
    rra
    jr z, jr_03a_529e

    ld a, $3f
    ld bc, $0001
    nop
    inc b
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $04
    db $fc
    ld a, [bc]
    cp $3e
    cp $c8
    ld hl, sp+$38
    jr c, jr_03a_5276

jr_03a_5276:
    ld bc, $1309
    inc de
    ld e, a
    ld e, h
    rst $28
    xor d
    cp a
    call c, $cdbe
    rst $38
    or e
    or h
    rst $28
    ld l, b
    ld e, a
    ld [hl], b
    add hl, bc
    rrca
    ld bc, $5f68
    inc [hl]
    cpl
    ld a, a
    ld [hl], e
    rst $20
    sbc h
    ld a, a
    ld a, a
    ld c, $fa
    add hl, bc
    jr nz, jr_03a_529b

jr_03a_529b:
    rla
    ei
    cpl

jr_03a_529e:
    push af
    db $fd
    set 4, [hl]
    ld a, $f8
    ld hl, sp+$04
    inc b
    rla
    rla
    dec hl
    dec sp
    add hl, sp
    add hl, hl
    ld e, h
    ld h, h
    ld a, a
    ld d, e
    cpl
    inc [hl]
    dec sp
    ld a, [hl+]
    ldh [$e0], a
    ld [hl], b
    sub b
    ld hl, sp+$28
    ld hl, sp+$08
    ld hl, sp-$38
    or b
    ldh a, [$90]
    ldh a, [$b0]
    ret nc

    ld de, $0911
    db $fc
    ldh a, [rSB]
    ld bc, $0101
    inc bc
    inc bc
    dec b
    rlca
    inc bc
    inc bc
    or b
    ret nc

    add hl, bc
    ld h, b
    nop
    ld hl, sp+$58
    call nc, $fc7c
    cp h
    cp $02
    db $fc
    db $fc
    inc b
    inc b
    rlca
    rlca
    inc de
    inc de
    add hl, hl
    add hl, sp
    jr c, jr_03a_5315

    ld e, a
    ld h, a
    ld a, a
    ld d, b
    cpl
    ld [hl], $39
    add hl, hl
    ld de, $0311
    ld [bc], a
    inc bc
    ld [bc], a
    add hl, bc
    ld e, b
    ld bc, $0906
    ld e, [hl]
    inc b
    sub b
    ldh a, [$f8]
    ld l, b
    ld hl, sp+$18
    ld h, h
    db $fc
    ld hl, sp-$08
    inc de
    inc de
    rra
    inc e
    ld l, a
    ld l, b
    rst $18
    cp a
    cp e

jr_03a_5315:
    call z, $a7de
    rst $38
    xor c
    cp a
    db $ed
    ld d, d
    ld a, a
    ld l, l
    ld e, [hl]
    ld e, a
    ld [hl], d
    ld e, e
    ld [hl], l
    dec a
    ld h, $7d
    ld [hl], d
    db $e4
    sbc a
    ld a, e
    ld a, e
    ld c, d
    cp $b6
    ld a, d
    ld a, [$da4e]
    xor [hl]
    cp a
    ld h, l
    cp l
    ld c, e
    ld a, [hl+]
    or $dc
    call c, $a009
    rst $38
    dec e
    nop
    ld bc, $0301
    inc bc
    daa
    daa
    ld a, a
    ld e, b
    ld a, a
    ld e, a
    ld a, a
    ld d, l
    ld a, a
    ld d, l
    ld a, a
    ld e, a
    ld [hl], a
    ld e, a
    ret nz

    ret nz

    ldh [$e0], a
    db $fc
    inc a
    ld hl, sp-$08
    add sp, $58
    db $fc
    ld c, h
    db $f4
    db $fc
    call c, Call_03a_77f4
    ld a, b
    rst $38
    sbc a
    rst $38
    sub b
    rst $38
    rst $38
    ld a, a
    ld [hl], h
    rla
    rra
    ld e, $19
    rrca
    rrca
    db $fc
    inc a
    cp $c2
    jp $dbbd


    and l
    db $db
    and l
    jp $febd


    jp nz, $fcfc

    ldh [$e0], a
    ret nc

    ldh a, [$f0]
    jr nc, @+$03

    ld d, $0f
    ld bc, $1f13
    rra
    rra
    rrca
    rrca

jr_03a_5393:
    rra
    rra
    daa
    ccf
    ld c, a
    ld a, b
    ld e, a
    ld [hl], b
    ld e, a
    ld [hl], c
    rst $38
    db $e3
    ccf
    dec h
    dec sp
    daa
    nop
    nop
    db $e4
    db $e4
    cp $1a
    cp $fa
    cp $2a
    cp $2a
    cp $fa
    cp $fa
    ccf
    ccf
    ld b, a
    ld a, a
    adc a
    ld hl, sp-$01
    ldh a, [$9f]
    sub c
    ccf
    inc hl
    ld bc, $006c
    inc bc
    inc bc
    inc b
    rlca
    jr c, @+$41

    jr jr_03a_53e9

    ld d, $1f
    scf
    add hl, sp
    cpl
    jr c, jr_03a_5410

    jr z, jr_03a_5393

    ret nz

    inc h
    db $e4
    ld e, $fa
    ld e, $fa
    ld d, $fe
    or $ee
    ld a, [$fe0e]
    ld a, [bc]
    dec sp
    inc a
    ld a, a
    ld c, a
    rst $38
    ret z

    rst $38

jr_03a_53e9:
    rst $38
    cp a
    ld_long a, $ff8b
    ld b, a
    ld a, a
    ccf
    ccf
    rlca
    rlca
    ld [$080f], sp
    rrca
    db $10
    rra
    db $10
    rra
    scf
    ccf
    ld bc, $089c
    ld [hl], $ee
    or $ce
    ld bc, $0dac
    ld a, h
    ccf
    ccf
    xor $1e
    rst $38
    ld sp, hl
    rst $38

jr_03a_5410:
    add hl, bc
    rst $38
    rst $38
    cp $2e
    ret z

    ld hl, sp+$78
    ld hl, sp-$10
    ldh a, [rP1]
    ld bc, $0109
    ld bc, $1a1b
    ccf
    ld h, $3f
    ld a, [hl+]
    ld [hl], c
    ld a, a
    ldh [$9f], a
    db $f4
    cp a
    ret


    rst $08
    nop
    nop
    and b
    and b
    ldh a, [$d0]
    ldh a, [$d0]
    ld a, h
    call c, $f42c
    sbc [hl]
    ld a, [c]
    db $fc
    db $fc
    ld b, $07
    inc h
    ccf
    ld l, [hl]
    ld e, l
    db $dd
    or [hl]
    db $db
    or a
    ld l, b
    ld e, a
    inc bc
    inc e
    nop
    rlca
    inc b
    inc b
    rrca
    dec bc
    rra
    inc de
    rra
    inc de
    ld a, [hl-]
    cpl
    inc [hl]
    cpl
    inc h
    ccf
    add hl, de
    rra
    add b
    add b
    ret nc

    ld d, b
    ld hl, sp+$68
    ld hl, sp+$68
    cp b
    ld hl, sp+$3c
    db $e4
    and h
    db $fc
    ld hl, sp-$08
    ld e, $37
    ld [hl], $6d
    ld l, l
    sbc $6b
    rst $18
    scf
    ld l, h
    ld [$0317], sp
    inc b
    add hl, bc
    ld a, [$01f4]
    ld bc, $0302
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    ld b, $3e
    ld a, $ff
    jp $997f


    rst $30
    ccf
    ld a, [$7c3e]
    adc h
    sbc [hl]
    ld [c], a
    ld a, h
    db $fc
    rlca
    inc b
    daa
    inc a
    ld l, l
    ld e, [hl]
    call c, $09b7
    jr z, @+$06

    add hl, bc
    ld h, b
    inc c
    jr c, jr_03a_54e1

    db $fc
    call nz, $967a
    or $3e
    cp [hl]
    ld a, d
    ld a, d
    add [hl]
    sbc h
    db $ec
    ld [hl], b
    ldh a, [$1f]
    inc [hl]
    dec [hl]
    ld l, [hl]
    ld l, h
    rst $18
    add hl, bc
    ld d, [hl]
    ld b, $09
    nop
    nop
    scf
    ld l, $2f
    jr nc, jr_03a_5547

    ld [hl], b
    cp a
    ret nz

    or a
    ld hl, sp-$35
    db $cc, $09, $10
    inc bc
    db $10
    db $fc
    inc c
    db $fc
    inc b
    ld [c], a
    ld a, $fc
    inc a
    inc b
    inc b
    dec bc
    rrca
    rla
    dec de

jr_03a_54e1:
    rla
    jr jr_03a_5513

    jr nc, jr_03a_5515

    jr c, jr_03a_5517

    jr c, jr_03a_5505

    inc e
    add b
    add b
    ld d, b
    ret nc

    add sp, $78
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc b
    db $e4
    inc a
    ld hl, sp+$38
    nop
    ld bc, $0601
    ld b, $05
    rlca
    ld e, $1f
    ld [hl], e

jr_03a_5505:
    ld a, a
    cp a
    push hl
    ld h, c
    ld a, a
    ld [hl-], a
    ccf
    ld a, h
    ld a, a
    add [hl]
    rst $38
    or e
    rst $38
    sbc h

jr_03a_5513:
    rst $38
    ld [hl], b

jr_03a_5515:
    ld a, a
    add d

jr_03a_5517:
    rst $38
    ld a, h
    ld a, a
    inc hl
    ccf
    inc e
    inc e
    ld bc, $0500
    rst $38
    ld bc, $020a
    inc bc
    inc bc
    inc b
    rlca
    ld e, $1f
    db $10
    rra
    inc hl
    ccf
    dec h
    ccf
    inc sp
    ccf
    inc e
    rra
    add b
    add b
    ld b, b
    ret nz

    ldh a, [$f0]
    sbc b
    ld hl, sp-$08
    jr z, @+$0a

    ld hl, sp-$70
    ldh a, [rSVBK]
    ldh a, [rIF]
    rrca

jr_03a_5547:
    ld [$1f0f], sp
    rra
    inc [hl]
    ccf
    inc hl
    ccf
    ccf
    ccf
    inc b
    rlca
    inc bc
    inc bc
    ret nc

    ldh a, [rSVBK]
    ldh a, [$d0]
    ldh a, [$88]
    ld hl, sp+$04
    db $fc
    ld hl, sp-$08
    jr nz, @-$1e

    ret nz

    ret nz

    ld bc, $0540
    ld hl, sp+$01
    ld c, d
    ld [bc], a
    ld bc, $0000
    ld c, $0f
    ld [hl], d
    ld a, a
    and c
    rst $38
    ld h, b
    ld a, a
    jr nc, @+$41

    ld a, h
    ld a, a
    add a
    rst $38
    or b
    rst $38
    sbc h
    rst $38
    ld [hl], d
    ld a, a
    add c
    ld bc, $0319
    ld bc, $ffa0
    ld c, l
    nop
    ld bc, $0001
    nop
    ld [$cc08], sp
    call z, $abef
    cp e
    sbc $9d
    cp $9e
    ei
    ld a, a
    ld a, a
    ld a, a
    ld e, b
    ret z

    rst $38
    ld hl, sp-$41
    rst $08
    cp a
    ld c, d
    ld a, a
    ld a, a
    ld a, a
    ret z

    cp b
    ld hl, sp-$08
    cp $36
    daa
    rst $38
    ld a, $fa
    and $fa
    xor [hl]
    cp $fa
    or $1e
    ld e, $01
    cp $f2
    inc c
    inc c
    rrca
    dec bc
    ei
    cp $fd
    sbc [hl]
    ld e, [hl]
    ld a, e
    ld a, a
    ld a, a
    ld bc, $f0fe
    db $fc
    db $fc
    ld a, [hl]
    ld b, [hl]
    dec hl
    dec a
    ld de, $091f
    rrca
    ld [hl], a
    ld a, a
    nop
    nop
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    db $76
    ld d, [hl]
    sbc $fa
    ld l, h
    db $f4
    cp $de
    pop hl
    rst $38
    sub b
    rst $38
    ret c

    rst $38
    or h
    rst $38
    sbc a
    rst $28
    ld e, b
    ld l, a
    rst $38
    rst $38
    sbc h
    rst $28
    ld a, a
    ld a, a
    cp a
    rst $38
    ld a, c
    rst $38
    cp l
    rst $30
    adc $f6
    ld c, b
    ld hl, sp-$08
    ld hl, sp-$34
    db $f4
    db $fc
    db $fc
    ld bc, $f4fa
    rst $38
    rst $38
    ld e, a
    ld h, c
    scf
    ld a, $1d
    rra
    ld bc, $f0fe
    ld bc, $0052
    or $d6
    ld e, [hl]
    ld a, [$f4ec]
    cp $de
    ld [hl], a
    ld a, a
    sub b
    rst $38
    xor h
    rst $38
    rst $20
    ei
    or a
    ei
    ld a, a
    ld a, a
    ld h, a
    ld a, e
    ld a, a
    ld a, a
    and c
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $18
    ccf
    pop de
    ld sp, $feff
    cp $38
    ret c

    ld hl, sp-$08
    ld bc, $0600
    sbc h
    rst $28
    adc a
    rst $30
    ld a, e
    ld a, a
    ld a, a
    ld e, [hl]
    rst $08
    db $fc
    cp $bd
    adc $bf
    ld c, e
    ld bc, $0419
    ld c, d
    rst $18
    or l
    ld e, [hl]
    cp $66
    ld a, [$01ee]
    add hl, hl
    dec c
    db $fc
    adc a
    ld c, a
    ld [hl], a
    ld a, e
    ld a, a
    nop
    ld bc, $0001
    nop
    add hl, de
    add hl, de
    rra
    ld d, $7f
    ld a, d
    ld a, a
    ld c, [hl]
    ei
    rst $38
    db $fd
    rst $28
    ld d, e
    ld a, a
    ld bc, $0600
    ld a, e
    ld a, a
    db $fd
    rst $28
    db $d3
    rst $38
    ld e, h
    ld a, a
    ld h, a
    ld a, a
    and h
    rst $38
    ld a, a
    ld a, a
    ld e, h
    ld a, a
    ld h, d
    ld a, a
    ld d, l
    ld a, a
    ccf
    ccf
    ld a, [hl]
    cp $82
    cp $1a
    cp $a6
    cp $66
    cp $1d
    rst $38
    ld a, [de]
    cp $fc
    db $fc
    ld c, [hl]
    ld a, a
    ld [hl], e
    ld a, a
    ld d, d
    ld a, a
    ld a, a
    ld a, a
    ld d, b
    ld a, a
    xor b
    rst $38
    ld e, b
    ld a, a
    ccf
    ccf
    ld a, $fe
    pop bc
    rst $38
    dec c
    rst $38
    db $d3
    rst $38
    ld [hl-], a
    cp $4e
    cp $aa
    cp $fc
    db $fc
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld l, a
    ld l, a
    rst $28
    jp hl


    rst $38
    rst $38
    rst $30
    db $fc
    and e
    cp a
    nop
    nop
    jr nc, jr_03a_5709

    ldh a, [$d0]
    ldh a, [$50]
    ldh a, [$d0]
    ld a, b
    ld hl, sp-$58
    ld hl, sp+$1c
    db $fc
    jr nz, jr_03a_5726

    ld h, b
    ld a, a
    and c
    rst $38
    and b
    rst $38
    sub b
    rst $38
    adc h
    rst $38
    ld b, b
    ld a, a
    ccf
    ccf
    or d
    cp $c9
    rst $38
    dec hl
    rst $38
    push af
    rst $38
    ld e, $fe
    ld hl, $55ff
    rst $38
    rst $38
    rst $38
    ld bc, $0260
    cpl

jr_03a_5709:
    cpl
    ld l, a
    ld l, c
    ld bc, $026a
    jr nz, jr_03a_5750

    jr nc, jr_03a_5752

    ld d, b
    ld a, a
    and b
    rst $38
    and b
    rst $38
    sub c
    rst $38
    ld b, d
    ld a, a
    ccf
    ccf
    sbc [hl]
    cp $65
    rst $38
    sub l
    rst $38
    ld a, c

jr_03a_5726:
    rst $38
    rst $28
    rst $38
    inc de
    rst $38
    xor a
    ld bc, $019d
    ld bc, $0302
    ld l, a
    ld hl, sp-$01
    db $fc
    rst $38
    ld c, h
    ld a, a
    ld b, d
    ld a, a
    ld e, [hl]
    ld a, a
    ret


    rst $38
    ld b, l
    ld a, a
    ld b, h
    ld a, a
    or h
    rst $38
    ld d, d
    ld a, a
    ccf
    ccf
    ld [hl+], a
    cp $02
    cp $22
    cp $12

jr_03a_5750:
    cp $92

jr_03a_5752:
    cp $12
    cp $26
    cp $fc
    db $fc
    nop
    ld bc, $010c
    ld bc, $0203
    inc bc
    ld [bc], a
    dec b
    ld b, $05
    ld b, $1d
    ld e, $22
    ccf
    ld c, e
    ld a, l
    ld b, h
    ld a, a
    ld c, [hl]
    ld a, a
    ccf
    dec a
    dec b
    ld b, $04
    rlca
    ld b, $07
    inc bc
    inc bc
    ld bc, $0c01
    nop
    ld b, $05
    ld b, $0a
    rrca
    dec de
    dec e
    inc h
    ccf
    ld h, $3f
    daa
    dec a
    dec e
    ld e, $0c
    jr jr_03a_5794

    inc c
    db $f4
    ld hl, sp+$07

jr_03a_5794:
    rlca
    ld [$000f], sp
    nop
    ld [bc], a
    ld [bc], a
    rlca
    dec b
    dec bc
    dec c
    dec bc
    dec c
    inc de
    dec e
    and e
    cp l
    ld b, a
    ld sp, hl
    add hl, bc
    rrca
    rst $28
    rst $28
    cp d
    cp a
    ld [$4bff], a
    ld a, [hl]
    dec sp
    ccf
    ld a, [bc]
    ld c, $04
    inc b
    ld c, $fa
    ld c, [hl]
    or $4c
    db $fc
    ld a, b
    xor b
    ldh a, [rSVBK]
    add b
    add b
    inc c
    ld a, [c]
    ld a, [$4c0c]
    nop
    jp hl


    rst $28
    inc c
    db $fc
    ldh a, [$78]
    ld a, b
    ld c, h
    ld [hl], h
    ld l, $32
    daa
    add hl, sp
    rst $20
    ld sp, hl
    ld c, a
    ld sp, hl
    xor a
    xor a
    ei
    rst $38
    ld e, d
    ld a, a
    ld c, d
    ld a, a
    dec hl
    ld a, $1b
    rra
    inc c
    ld l, h
    nop
    rrca
    push af
    ld c, d
    cp $6e
    ld a, [c]
    ld a, h
    call nc, Call_03a_78f8
    inc c
    ld a, d
    inc b
    inc c
    nop
    nop
    rlca
    ld b, $05
    ld b, $1f
    ld e, $21
    ld a, $4e
    ld a, a
    ld b, h
    ld a, a
    ld c, l
    ld a, a
    ld [hl], $37
    dec b
    rlca
    dec b
    inc c
    dec sp
    inc bc
    inc c
    nop
    ld b, $07
    ld b, $08
    rrca
    ld a, [de]
    rra
    inc [hl]
    ccf
    inc h
    ccf
    dec h
    ccf
    ld e, $1f
    inc c
    sub $04
    nop
    ld bc, $0505
    rst $38
    ldh a, [rSB]
    ld bc, $0101
    ld [bc], a
    inc bc
    rrca
    rrca
    db $10
    rra
    dec l
    inc sp
    ld l, $37
    ld h, $3b
    ld de, $0c1f
    rrca
    inc bc
    inc bc
    ld c, $0f
    db $10
    rra
    rrca
    rrca
    dec b
    inc b
    inc b
    nop
    nop
    dec b
    ld a, [bc]
    nop
    add hl, hl
    scf
    dec b
    db $10
    inc c
    dec b
    nop
    ld [bc], a
    ld hl, $5221
    ld [hl], e
    adc a
    rst $38
    xor b
    rst $38
    sub e
    db $fc
    dec b
    rst $38
    ldh a, [$80]
    add b
    add b
    add b
    ld b, b
    ret nz

    rst $20
    rst $20
    add hl, de
    rst $38
    ld [de], a
    cp $53
    ld a, l
    ld hl, $183e
    rra
    inc b
    rlca
    dec b

Call_03a_5877:
    jr @+$06

    add h
    ld a, h
    call nz, $387c
    ld hl, sp+$20
    ldh [$c0], a
    ret nz

    ld [hl], b
    ldh a, [$08]
    ld hl, sp-$10
    ldh a, [rTIMA]
    inc b
    ld [bc], a
    daa
    daa
    ld d, b
    ld [hl], b
    dec b
    ld c, d
    ld [bc], a
    dec b
    ld d, h
    ld [bc], a
    ldh [$e0], a
    nop
    nop
    dec b
    ld e, d
    rrca
    inc de
    dec b
    nop
    ld [$1f11], sp
    ld [hl+], a
    ccf
    dec b
    adc $00
    ld [de], a
    rra
    ld c, $05
    rla
    rrca
    ld [bc], a
    dec b
    call z, $010f
    nop
    ld bc, $4300
    ld b, e
    ld [hl], h
    ld [hl], a
    ld c, c
    ld a, a
    sub a
    cp $a3
    rst $38
    ld h, b
    ld a, a
    sub e
    rst $38
    sub a
    rst $38
    jp nz, Jump_000_2ec2

    xor $92
    cp $e9
    ld a, a
    push bc
    rst $38
    ld d, $fe
    rst $08
    db $fd
    db $eb
    db $fd
    ld l, a
    ld l, l
    dec b
    ld b, $7a
    ld a, a
    dec sp
    ccf
    inc h
    inc a
    ld h, h
    ld a, h
    add d
    cp $fc
    db $fc
    ld sp, hl
    cp a
    cp c
    ld a, a
    ld h, [hl]
    cp $a6
    cp [hl]
    ld b, c
    ld a, a
    ccf
    ccf
    inc a
    inc a
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld [$bff3], sp
    rst $10
    cp a
    nop
    db $10
    ld [$ffc9], sp
    jp hl


    rst $38
    ld bc, $0b01
    dec bc
    ld c, $0f
    dec bc
    rrca
    inc c
    rrca
    ld de, $171f
    ld e, $0f
    rrca
    ldh [$e0], a

jr_03a_5916:
    db $10
    ldh a, [rSVBK]
    ldh a, [$f0]
    ret nc

    jr z, jr_03a_5916

    sub h
    db $fc
    db $f4
    db $fc
    or h
    ld a, h
    dec c
    rrca
    rlca
    rlca
    ld a, e
    ld a, a
    dec sp
    ccf
    ld h, $3e
    nop
    ld a, [hl+]
    ld [bc], a
    inc d
    db $fc
    cp b
    ld hl, sp-$1c
    db $fc
    and $fe
    nop
    jr c, @+$06

    nop
    ld h, b
    dec bc
    ld c, $00
    ld [hl], b
    ld a, [bc]
    db $f4
    db $fc
    inc c
    rrca
    inc e
    rra
    daa
    ccf
    ld h, a
    ld a, a
    nop
    inc l
    nop
    nop
    inc a
    nop
    ld d, h
    db $fc
    ld a, b
    ld hl, sp-$22
    cp $dc
    db $fc
    ld h, h
    ld a, h
    ld h, $3e
    nop
    jr c, jr_03a_5962

jr_03a_5962:
    nop
    nop
    nop
    ld c, b
    ld a, a
    sub h
    rst $38
    nop
    ld [$9000], sp
    rst $38
    sbc [hl]
    nop
    rrca
    ld bc, $fe12
    add hl, hl
    rst $38
    push bc
    rst $38
    ld b, $fe
    rrca
    db $fd
    ld a, e
    db $fd
    nop
    ld bc, $0101
    rst $38
    ldh a, [$37]
    scf
    ld c, b
    ld a, a
    or a
    rst $38
    xor h
    rst $28
    ld d, h
    ld [hl], a
    inc l
    ccf
    jr z, jr_03a_59d1

    db $10
    rra
    jr nz, jr_03a_59d5

    jr nz, @+$41

    db $10
    rra
    ld [$070f], sp
    rlca
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    dec sp
    ccf
    ld d, a
    ld a, l
    xor [hl]
    rst $38
    xor e
    rst $38
    ld l, l
    ld a, [hl]
    scf
    ccf
    jr jr_03a_59d1

    daa
    ccf
    ld bc, $0814
    ld bc, $f0ff
    inc bc
    inc bc
    dec d
    rla
    cpl
    ccf
    inc d
    rra
    ld a, [hl-]
    ccf
    ld d, l
    ld a, a
    ld bc, $f6fa
    ld hl, sp-$08
    ld b, h
    db $fc
    ld [bc], a
    cp $32
    ccf

jr_03a_59d1:
    add hl, bc
    rrca
    inc c
    rrca

jr_03a_59d5:
    ld [$080f], sp
    rrca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    add d
    cp $42
    cp $c2
    cp $04
    db $fc
    ld [$10f8], sp
    ldh a, [$e0]
    ldh [rSB], a
    cp $ff
    dec d
    ld b, h
    ld a, a
    or d
    rst $38
    sbc h
    rst $38
    ld d, b
    ld a, a
    jr nc, @+$41

    inc hl
    ccf
    inc h
    ccf
    jr z, jr_03a_5a40

    jr z, @+$41

    inc d
    ld bc, $0739
    ld bc, $0fc3
    add hl, hl
    nop
    ld bc, $0707
    rst $38
    ldh a, [$03]
    inc bc
    inc c
    rrca
    jr jr_03a_5a36

    inc h
    ccf
    ld h, b
    ld a, a
    sub [hl]
    ei
    rlca
    rst $38
    ldh a, [$80]
    add b
    ld a, b
    ld hl, sp+$24
    db $fc
    ld [bc], a
    cp $06
    cp $69
    rst $18
    add e
    db $fd
    add b
    rst $38
    ld b, h
    ld a, a
    inc sp
    ccf
    jr nz, jr_03a_5a75

jr_03a_5a36:
    ld de, $0e1f
    ld c, $00
    nop
    pop bc
    cp a
    dec b
    rst $38

jr_03a_5a40:
    ld [hl+], a
    cp $c2
    cp $02
    cp $c4
    db $fc
    jr c, jr_03a_5a82

    rlca
    cp $f2
    ld bc, $1e01

jr_03a_5a50:
    rra
    inc h
    ccf
    ld b, h
    ld a, a
    ld h, d
    ld a, a
    sub b
    rst $38
    rlca
    rst $38
    ldh a, [$c0]
    ret nz

    jr nc, jr_03a_5a50

    ld [$08f8], sp
    ld hl, sp+$04
    db $fc
    inc [hl]
    call c, $ff80
    and b
    rst $38
    ld b, d
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ld a, a
    inc hl
    ccf
    inc e

jr_03a_5a75:
    inc e
    nop
    nop
    ld [de], a
    xor $02
    cp $12
    cp $0c
    db $fc
    inc b
    db $fc

jr_03a_5a82:
    adc b
    ld hl, sp+$70
    ld [hl], b
    rlca
    cp $f2
    dec de
    dec de
    rlca
    ld c, b
    nop
    ld b, d
    ld a, a
    ld h, b
    ld a, a
    add b
    rlca
    ld c, a
    ld bc, $8080
    ld h, b
    ldh [rNR23], a
    rlca
    ld e, c
    inc bc
    and b
    rst $38
    ld b, b
    ld a, a
    ld c, d
    ld a, a
    ld sp, $213f
    ccf
    ld e, $1f
    ld bc, $0701
    ld l, [hl]
    ld [$f808], sp

jr_03a_5ab1:
    ldh a, [$f0]
    rlca
    ld a, $0f
    rlca
    jr jr_03a_5ab1

    inc h
    db $fc
    ld b, $fe
    add hl, bc
    rst $38
    add b
    rst $38
    and h
    rst $38
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld b, h
    rlca
    ld l, c
    inc bc
    ld bc, $21ff
    rst $38
    ld [hl+], a
    cp $1c
    rlca
    ld [hl], a
    dec b
    nop
    ld bc, $0f04
    rrca
    dec a
    ccf
    ld h, e
    ld a, a
    pop bc
    rst $38
    sub l
    rst $38
    and h
    rst $38
    and h
    rst $38
    ld e, e
    ld e, e
    inc b
    ld a, [$78f2]
    ld a, b
    adc h
    db $fc
    ld b, $fe
    adc $7a
    ld a, c
    or a
    add c
    rst $38
    pop bc
    rst $38
    ld a, [de]
    cp $e6
    cp $18
    jr @+$06

    xor $fe
    ld bc, $0201
    inc bc
    ld c, $0f
    add hl, sp
    ccf
    ld h, b
    ld a, a
    ld c, b
    ld a, a
    sub d
    rst $38
    inc b
    ld c, b
    nop
    ld l, l
    ld l, l
    ld bc, $83ff
    rst $38
    pop hl
    rst $38
    ld a, [hl]
    cp $72
    cp $4c
    call z, $8080
    nop
    nop
    ld h, b
    ld a, a
    ld b, [hl]
    ld a, e
    add d
    db $fd
    pop hl
    rst $38
    jp $98ff


    rst $38
    ld h, a
    ld a, a
    jr jr_03a_5b4d

    ld a, h
    db $fc
    add $fe
    add e
    rst $38
    add hl, hl
    rst $38
    dec h
    rst $38
    push af
    rst $38
    jp c, Jump_000_04da

    ld a, [c]
    ld a, [$3e3e]
    ld h, e
    ld a, a
    inc b
    jr nc, jr_03a_5b57

jr_03a_5b4d:
    ld e, $1f
    inc b
    db $f4
    ld hl, sp-$20
    ldh [rNR10], a
    ldh a, [rNR50]

jr_03a_5b57:
    ccf
    inc l
    ccf
    jr c, jr_03a_5b9b

    ld d, $1f
    jr nz, jr_03a_5b9f

    ld b, e
    ld a, a
    jr c, @+$41

    rlca
    rlca
    ld [$64f8], sp
    cp h
    inc [hl]
    call c, $fc0c
    ld a, [de]
    cp $72
    cp $ac
    db $ec
    ldh a, [$f0]
    inc b
    ld hl, sp-$0c
    ld e, $1e
    ld hl, $403f
    ld a, a
    add b
    rst $38
    add [hl]
    rst $38
    add b
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ld h, a
    ld a, a

jr_03a_5b8b:
    add hl, sp
    ccf
    ld c, $0e
    nop
    nop
    jr c, jr_03a_5b8b

    ld h, [hl]
    cp $81
    rst $38
    ld c, $fe
    jr nc, jr_03a_5b8b

jr_03a_5b9b:
    add sp, -$18
    inc d
    inc e

jr_03a_5b9f:
    ld [$0008], sp
    ld bc, $0f04
    rrca
    ccf
    dec a
    ld a, a
    ld h, e
    rst $38
    pop bc
    rst $38
    sub l
    rst $38
    and h
    rst $38
    and h
    ld e, e
    ld e, e
    inc b
    ld a, [$78f2]
    ld a, b
    db $fc
    adc h
    cp $06
    ld a, d
    adc $b7
    ld a, c
    rst $38
    add c
    rst $38
    pop bc
    cp $1a
    cp $e6
    jr @+$1a

    inc b
    xor $fe
    ld bc, $0301
    ld [bc], a
    rrca
    ld c, $3f
    add hl, sp
    ld a, a
    ld h, b
    ld a, a
    ld c, b
    rst $38
    sub d
    inc b
    ld c, b
    nop
    ld l, l
    ld l, l
    rst $38
    ld bc, $83ff
    rst $38
    pop hl
    cp $7e
    ld a, [c]
    ld a, [hl]
    call z, $804c
    add b
    nop
    nop
    ld a, a
    ld h, b
    ld a, e
    ld b, [hl]
    db $fd
    add d
    rst $38
    pop hl
    rst $38
    jp $98ff


    ld a, a
    ld h, a
    jr jr_03a_5c19

    db $fc
    ld a, h
    cp $c6
    rst $38
    add e
    rst $38
    add hl, hl
    rst $38
    dec h
    rst $38
    push af
    jp c, Jump_000_04da

    ld a, [c]
    ld a, [$3e3e]
    ld a, a
    ld h, e
    inc b
    jr nc, jr_03a_5c23

jr_03a_5c19:
    rra
    ld e, $04
    db $f4
    ld hl, sp-$20
    ldh [$f0], a
    db $10
    daa

jr_03a_5c23:
    inc a
    cpl
    inc a
    ccf
    jr c, jr_03a_5c48

    ld d, $3f
    jr nz, @+$81

    ld b, e
    ccf
    jr c, @+$09

    rlca
    ld hl, sp+$08
    cp h
    ld h, h
    call c, $fc34
    inc c
    ld a, [$721e]
    cp $ac
    db $ec
    ldh a, [$f0]
    inc b
    ld hl, sp-$0c
    ld e, $1e
    ccf

jr_03a_5c48:
    ld hl, $407f
    rst $38
    add b
    rst $38
    add [hl]
    rst $38
    add b
    rst $38
    ldh [rIE], a
    add b
    ld a, a
    ld h, a
    ccf
    add hl, sp
    ld c, $0e
    nop
    nop
    ld hl, sp+$38
    cp $66
    rst $38
    add c
    cp $0e
    ldh a, [$30]
    add sp, -$18
    inc e
    inc d
    ld [$0008], sp
    ld bc, $0101
    rst $38
    ld a, [c]
    ccf
    ccf
    ld l, c
    ld d, [hl]
    ld l, c
    ld d, [hl]
    ld a, a
    ld b, b
    ld a, a
    ld a, a
    ld a, a
    ld b, h
    ld a, e
    ld l, [hl]
    ld d, c
    ld a, a
    ld h, h
    ld e, e
    ld l, e
    ld d, h
    ld h, c
    ld e, [hl]
    ld a, a
    ld b, b
    ccf
    ccf
    ld bc, $0004
    ld b, b
    ld a, a
    ld a, a
    ld b, h
    ld a, a
    ld l, [hl]
    ccf
    ccf
    ld a, a
    ld a, c
    ld e, a
    ld a, a
    ld e, h
    ld a, a
    ld h, h
    ld e, a
    ld h, h
    ld e, a
    ld l, h
    ld d, a
    ld h, h
    ld e, a
    ld a, a
    ld b, e
    ld bc, $001e

jr_03a_5cab:
    ld bc, $f0ff
    rlca
    rlca
    jr jr_03a_5cd1

    cpl
    jr nc, jr_03a_5d05

jr_03a_5cb5:
    ld l, a
    ld bc, $000c
    ld bc, $f0ff

Call_03a_5cbc:
    add b
    add b
    ld h, b
    ldh [$d0], a
    jr nc, @+$2a

    ret c

    ld hl, sp+$08
    ld hl, sp-$08
    ld a, a
    ld b, b
    ld l, e
    ld d, h
    ld [hl], e
    ld c, h
    ld l, b
    ld d, a
    ld h, a

jr_03a_5cd1:
    ld e, b
    ld [hl], e
    ld c, h
    ld bc, $001c
    ld hl, sp+$48
    ld a, b
    xor b
    jr c, jr_03a_5cb5

    ld e, b
    xor b
    sbc b
    ld l, b
    jr c, jr_03a_5cab

    ld hl, sp+$08
    ldh a, [$f0]
    rrca
    rrca
    scf
    jr c, jr_03a_5d44

    ld h, a
    ld h, c
    ld e, [hl]
    and a
    reti


    rst $18
    and a
    rst $38
    sbc h
    ld a, a
    ld a, a
    add b
    add b
    ldh [$60], a
    ld d, b
    or b
    add sp, $78
    ld hl, sp-$38
    ld hl, sp-$08
    ldh a, [$f0]

jr_03a_5d05:
    adc h
    db $fc
    ld [c], a
    ld a, [hl]
    ld d, d
    cp [hl]
    add hl, sp
    rst $08
    ld e, c
    xor a
    sbc c
    ld l, a
    add hl, sp
    rst $08
    cp $0e
    ldh a, [$f0]
    ld bc, $0d00
    ld b, b
    ld l, c
    ld d, [hl]
    ld a, c
    ld b, [hl]
    ld bc, $0616
    ld sp, $7b31
    ld c, d
    ld a, a
    ld a, a
    ld bc, $0008
    ld l, c
    ld d, [hl]
    ld bc, $000d
    ld bc, $ffa0
    dec c
    nop
    ld bc, $0301
    inc bc
    inc b
    rlca
    add hl, bc
    ld c, $0b
    ld c, $1f
    jr jr_03a_5d71

    dec sp
    ld a, e

jr_03a_5d44:
    ld c, h
    ld d, a
    ld a, a
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    cp h
    db $fc
    xor [hl]
    ld [hl], d
    xor e
    ld a, l
    ld e, l
    rst $28
    cp a
    call $9ff8
    and a
    db $e4
    xor $af
    cp b
    rst $30
    ld e, a
    ld d, a
    inc [hl]
    inc a
    ld a, [hl]
    ld b, d
    ld a, $3e
    inc de
    di
    db $fc
    inc a
    inc a
    call nz, $fcf4
    ld e, $16

jr_03a_5d71:
    ccf
    ld hl, $1e1e
    ld bc, $f6f6
    rlca
    rlca
    dec bc
    inc c
    ld e, $13
    inc a
    cpl
    jr c, jr_03a_5dba

    ld b, h
    ld a, h
    or d
    adc $ba
    adc $be
    jp nz, $cebe

    ld e, d
    and $bc
    ld a, h
    add hl, sp
    ld a, $07
    inc b
    inc h
    daa
    ld a, a
    ld e, h
    ld [hl], a
    ld c, a
    ld [hl], a
    ld e, c
    ld a, a
    ld e, l
    ld [hl+], a
    ld [hl+], a
    or b
    ld [hl], b
    ld e, b
    ld hl, sp-$18
    ld hl, sp-$18
    ld a, b
    ldh a, [$b0]
    cp b
    ld hl, sp-$04
    inc b
    ld hl, sp-$08
    ld bc, $f2fa
    rrca
    rrca
    add hl, de
    rra
    ld h, $3f
    dec e

jr_03a_5dba:
    ld e, $06
    dec b
    nop
    nop
    inc e
    inc e
    ld [hl+], a
    ld a, $59
    ld h, a
    db $fd
    rst $00
    ld a, a
    pop bc
    rst $18
    ld h, a
    ld l, l
    di
    rlca
    dec b
    rlca
    dec b
    ld c, $0b
    ccf
    dec sp
    ld a, d
    ld b, [hl]
    ld l, $3e
    ld l, $32
    inc e
    inc e
    sbc $5e
    ldh [rNR41], a
    and b
    ldh [$f4], a
    db $f4
    sbc [hl]
    ld a, [$746c]
    ld e, b
    ld l, b
    jr nc, jr_03a_5e1d

    ld bc, $0000
    dec bc
    rrca
    dec c
    ld c, $1f
    jr jr_03a_5e17

    ccf
    ld [hl], a
    ld c, b
    ld d, b
    ld bc, $020f
    ldh [$fc], a
    ld a, h
    ld l, $d2
    db $eb
    dec e
    sbc l
    ld l, a
    ld l, a
    sbc l
    ei
    sbc h
    and h
    rst $20
    ld bc, $0824
    db $d3
    inc sp
    inc a
    db $fc
    ld bc, $0834

jr_03a_5e17:
    nop
    ld bc, $0301
    inc bc
    inc a

jr_03a_5e1d:
    ccf
    ld c, e
    ld a, a
    ld c, b
    ld a, a
    set 7, a
    xor a
    rst $38
    db $e4
    rst $38
    sub e
    rst $38
    ret nz

    ret nz

    jr nz, @-$1e

    call c, $12fc
    cp $d6
    cp $f9
    rst $38
    ld sp, $d7ff
    rst $38
    cp h
    rst $38
    ld d, e
    ld e, a
    inc a
    ccf
    ld b, h
    ld a, a
    ld a, a
    ld a, a
    add [hl]
    cp $83
    rst $38
    ld a, [hl]
    ld a, [hl]
    add hl, sp
    rst $38
    push bc
    rst $38
    ld b, e
    rst $38
    ld [hl+], a
    cp $fc
    db $fc
    ld hl, sp-$08
    inc c
    db $fc
    db $fc
    db $fc
    nop
    nop
    rlca
    rlca
    ld [$160f], sp
    rra
    add hl, de
    rra
    add hl, hl
    ccf
    add hl, hl
    ccf
    ld e, $1f
    inc a
    inc a
    ld [c], a
    cp $9f
    rst $38
    pop bc
    rst $38
    cp a
    rst $38
    ld e, [hl]
    cp $44
    db $fc
    cp h
    db $fc
    inc h
    ccf
    ld h, $3f
    dec de
    rra
    ld h, a
    ld a, a
    sub c
    rst $38
    adc $fe
    ld h, d
    ld a, [hl]
    inc e
    inc e
    ld [hl], b
    ldh a, [$2c]
    db $fc
    ld b, h
    db $fc
    call z, $f8fc
    ld hl, sp+$7e
    ld a, [hl]
    pop af
    rst $38
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    rrca
    rrca
    ld de, $331f
    ccf
    ld l, $3f
    ld h, $3f
    daa
    ccf
    ld a, $3f
    ld bc, $0c50
    ld b, [hl]
    ld a, a
    ld b, e
    ld a, a
    ld [hl], l
    ld a, a
    ccf
    ccf
    scf
    ccf
    ld e, a
    ld a, a
    ld b, c
    ld a, a
    ccf
    ccf
    ld l, b
    ld hl, sp-$0c
    db $fc
    inc h
    db $fc
    sbc b
    ld hl, sp+$38
    ld hl, sp-$3c
    db $fc
    inc c
    db $fc
    ldh a, [$f0]
    inc bc
    inc bc
    rra
    rra
    jr nz, jr_03a_5f12

    ld b, b
    ld a, a
    ret nz

    rst $38
    and b
    rst $38
    ldh [rSB], a
    dec c
    inc bc
    ld hl, sp-$08
    inc b
    db $fc
    ld b, $fe
    add hl, bc
    rst $38
    ld de, $f9ff
    rst $38
    sbc h
    rst $38
    ld [hl], e
    ld a, a
    ld bc, $0224
    jp nz, Jump_000_2b01

    ld bc, $fe26
    ld [c], a
    cp $22
    cp $3d
    rst $38
    pop af
    rst $38
    cp $fe
    ld bc, $003c
    nop
    ld bc, $0300
    inc bc
    dec c
    ld c, $1b
    rla
    rla
    dec e
    ld l, $3f
    ld l, l
    ld a, a

jr_03a_5f12:
    db $f4
    sbc a
    rst $18
    xor a
    sbc h
    sbc h
    ld a, [hl]
    ld [c], a
    rst $38
    pop bc
    push de
    ld a, a
    rst $38
    rst $38
    ld [hl], a
    db $ed
    ld e, e
    db $fd
    ld a, [c]
    cp $ae
    reti


    ld [hl], c
    ld a, a
    sbc $ff
    rst $30
    xor a
    cp a
    call nz, $467b
    ld d, a
    ld l, a
    inc a
    inc a
    sub d
    cp $5c
    xor h
    xor b
    ld e, b
    ld hl, sp-$08
    xor h
    ld e, h
    inc [hl]
    db $fc
    call nz, Call_03a_78fc
    ld a, b
    ld c, a
    ld [hl], b
    jr nz, jr_03a_5f89

    dec e
    inc de
    rra
    rra
    dec [hl]
    ld a, [hl-]
    inc l
    ccf
    inc hl
    ccf
    ld e, $1e
    ld d, l
    ei
    adc $be
    cp e
    ld e, a
    rst $28
    push af
    db $fd
    inc hl
    sbc $62
    ld [$3cf6], a
    inc a
    rrca
    rrca
    ld a, [de]
    dec d
    add hl, sp
    scf
    ccf
    ccf
    scf
    dec hl
    ld e, [hl]
    ld h, a
    cp [hl]
    jp $dfbd


    sbc [hl]
    sbc [hl]
    rst $28
    ld [hl], c
    xor a
    pop af
    rst $30
    ld a, l
    cp a
    rst $38
    ld a, l
    di
    dec l
    di
    db $ca, $f6, $0f

    rrca
    dec de

jr_03a_5f89:
    dec d
    dec sp
    scf
    inc a
    ccf
    inc sp
    inc a
    ld l, a
    ld [hl], b
    ld e, l
    ld h, e
    ld e, a
    ld h, e
    ldh a, [$f0]
    ld [hl], b
    ret nc

    ld hl, sp+$28
    ld hl, sp+$08
    sub $3e
    ld a, e
    push af
    or a
    ld sp, hl

jr_03a_5fa4:
    rst $28
    rst $38
    add hl, sp
    add hl, sp
    ld a, [hl]
    ld b, a
    db $fc
    adc e
    cp b
    rst $38
    ld a, [c]
    db $dd
    db $f4
    sbc e
    rst $08
    cp [hl]
    ld b, e
    ld a, a
    ret nz

    ret nz

    or b
    ld [hl], b
    jr jr_03a_5fa4

    adc b
    ld a, b
    inc h
    call c, Call_03a_6e9e
    ld d, a
    cp c
    rst $38
    pop af
    ld b, e
    ld a, [hl]
    dec hl
    ld [hl], $17
    inc e
    rra
    rra
    dec e
    inc de
    ccf
    ld hl, $352a
    ccf
    ccf
    ld [hl], a
    db $db
    or c
    ld a, a
    ld e, c
    cp a
    cp $fe
    ld d, [hl]
    xor [hl]
    dec de
    rst $38
    pop af
    rst $38
    ld a, $3e
    db $ed
    jp c, $fb94

    sbc [hl]
    pop af
    ld a, a
    ld a, a
    ld l, d
    ld [hl], l
    ret c

    rst $38
    adc a
    rst $38
    ld a, h
    ld a, h
    add d
    cp $d4
    ld l, h

Jump_03a_5ffa:
    add sp, $38
    ld hl, sp-$08
    cp b
    ret z

    db $fc
    add h
    ld d, h
    xor h

jr_03a_6004:
    db $fc
    db $fc
    nop
    ld bc, $0101
    rst $38
    ld hl, sp-$20
    ldh [rNR23], a
    ld hl, sp+$40
    ld a, a
    or b
    rst $38
    cp e
    rst $28
    xor $f5
    or l
    rst $38
    ld e, a
    ld a, a
    ld l, d
    ld a, a
    rra
    rra
    ld b, b
    ret nz

    jr nz, jr_03a_6004

    and b
    ldh [$a0], a
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    ret nz

    ret nz

    nop
    nop
    db $10
    rra
    jr nz, jr_03a_6073

    ld bc, $0032
    ld hl, $143f
    rra
    dec de
    rra
    rlca
    rlca
    db $10
    ldh a, [$28]
    ld hl, sp+$08
    ld hl, sp+$48
    ld hl, sp-$58
    ld hl, sp+$50
    ldh a, [$30]
    ldh a, [$c0]
    ret nz

    ld b, [hl]
    ld a, a
    add e
    rst $38
    add c
    cp $80
    rst $38
    adc d
    rst $38
    ld b, a
    ld a, a
    ld h, d
    ld a, a
    rra
    rra
    ret nz

    ret nz

    and b
    ldh [$e0], a
    ldh [$60], a
    ldh [$60], a
    ldh [$c0], a
    ld bc, $012b
    ld b, b
    ld a, a
    add c
    rst $38
    add c
    rst $38

jr_03a_6073:
    add b
    rst $38
    adc c
    cp $58
    ld a, a
    ld l, h
    ld bc, $031d
    ldh [$e0], a
    ld bc, $0062
    ld bc, $022a
    ld bc, $0f8f
    ld c, l
    ld bc, $0cef
    nop
    ld bc, $8601
    add [hl]
    set 1, a
    xor e
    rst $28
    reti


    rst $38
    sbc $ff
    rst $30
    db $fd
    ld c, a
    ld a, a
    ld l, [hl]
    ld a, a
    jp nz, $a6c2

    and $aa
    xor $36
    cp $f6
    cp $de
    ld a, [hl]
    cp $f2
    di
    db $ed
    sub h
    rst $38
    ld h, a
    ld a, a
    ld a, c
    ld a, a
    ld h, b
    ld a, a
    inc h
    ccf
    cpl
    ccf
    ld d, h
    ld a, h
    ld a, h
    ld a, h
    ld d, d
    cp $ce
    cp $3a
    cp $6a
    cp $56
    cp $ea
    cp $7c
    ld a, h
    nop
    nop
    sub h
    rst $38
    rst $20
    rst $38
    cp c
    rst $38
    xor h
    rst $38
    call nc, $afff
    rst $38
    ld bc, $003c
    ld d, d
    cp $cc
    db $fc
    inc a
    db $fc
    inc c
    db $fc
    ld c, b
    ld hl, sp-$18
    ld hl, sp+$01
    inc l
    nop
    ld hl, sp-$08
    ld h, l
    ld a, l
    dec sp
    ccf
    dec h
    ccf
    ld a, $3f
    ld c, $0f
    rra
    rra
    daa
    ccf
    jr nc, jr_03a_612f

    add sp, -$08
    db $f4
    db $fc
    or d
    cp $9a
    cp $fc
    db $f4
    sbc [hl]
    cp $1e
    cp $40
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
    cp c
    rst $28
    ld a, e
    rst $28
    dec e
    rst $38
    rrca
    rst $38
    call z, Call_03a_66fc
    cp $ea
    cp $fe
    ld bc, $017f

jr_03a_612f:
    add $ff
    and d
    rst $38
    and a
    rst $38
    ld [hl], e
    ld a, a
    ld d, l
    ld a, a
    ccf
    ccf
    ld bc, $0290
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
    ld bc, $0000
    xor a
    rst $28
    rst $18
    rst $38
    rst $08
    rst $38
    rst $10
    rst $38
    ld a, e
    ld a, a
    ld e, [hl]
    ld bc, $010f
    ld [$f6ee], a
    cp $e6
    cp $d6
    cp $be
    cp $f2
    cp $ec
    rst $38
    call nz, $88ff
    rst $38
    adc c
    rst $38
    jp hl


    rst $38
    ld c, e
    ld a, a
    sbc d
    cp $fc
    db $fc
    ld l, [hl]
    cp $46
    cp $84
    db $fc
    ld c, h
    db $fc
    sub $fe
    adc $01
    dec sp
    ld bc, $0100
    nop
    ld h, a
    ld h, a
    ld hl, sp-$01
    ld a, a
    ld a, a
    ccf
    ccf
    ld c, l
    ld a, a
    adc e
    db $fd
    ld e, c
    ld l, [hl]
    inc a
    scf
    and $e6
    rra
    rst $38
    cp $fe
    db $fc
    db $fc
    or d
    cp $d5
    cp a
    sbc l
    ld a, a
    dec [hl]
    ei
    ld e, a
    ld a, e
    adc h
    rst $38
    adc c
    rst $38
    add [hl]
    rst $38
    jp nz, Jump_03a_61ff

    ld a, a
    ld b, b
    ld a, a
    ccf
    ccf
    pop hl
    rst $38
    dec sp
    rst $38
    sbc a
    rst $38
    jp hl


    ld a, a
    ld c, a
    rst $38
    cp d
    cp $4a
    cp $ff
    rst $38
    nop
    jr nz, @+$04

    add a
    cp $82
    rst $38
    ld e, l
    ld a, a
    and d
    rst $38
    rst $38
    rst $38
    nop
    jr nc, jr_03a_61d8

    ld l, c
    rst $38

jr_03a_61d8:
    ld c, a
    rst $38
    adc d
    cp $0a
    cp $fe
    cp $03
    inc bc
    inc b
    rlca
    ld [$130f], sp
    inc e
    cpl
    jr c, jr_03a_6202

    inc e
    rla
    ld e, $15
    dec de
    ldh [$e0], a
    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    or $7e
    ld [$e276], a
    ld a, [hl]
    ld a, [c]

Jump_03a_61ff:
    ld a, $30
    ccf

jr_03a_6202:
    dec hl
    ccf
    ld c, [hl]
    ld a, a
    ld d, d
    ld a, a
    ld c, [hl]
    ld a, a
    ld a, [hl+]
    ccf
    ld c, d
    ld a, a
    ld a, a
    ld a, a
    xor h
    db $fc
    add h
    db $fc
    call z, Call_000_36fc
    ld a, [$fe12]
    ld c, $fe
    add hl, de
    rst $38
    rst $38
    rst $38
    jr nc, @+$41

    ld c, e
    ld a, a
    nop
    add h
    nop
    ld l, $3f
    ld a, [de]
    rra
    ld a, [hl+]
    ccf
    ccf
    ccf
    xor h
    db $fc
    inc b
    nop
    sub e
    inc bc
    ld a, h
    db $fc
    adc h
    db $fc
    db $fc
    db $fc
    ld h, e
    ld h, e
    db $fc
    rst $38
    ld [hl], b
    ld a, a
    jr nz, @+$41

    ld b, b
    ld a, a
    add b
    rst $38
    ld c, h
    ld a, a
    jr nc, jr_03a_628a

    add $c6
    ccf
    rst $38
    ld c, $fe
    inc b
    db $fc
    ld [bc], a
    cp $03
    rst $38
    dec [hl]
    rst $38
    dec c
    rst $38
    ret nz

    rst $38
    add b
    nop
    pop hl
    ld bc, $ffc0
    ld h, b
    nop
    dec hl
    ld bc, $ff03
    ld bc, $f100
    inc bc
    ld a, [hl-]
    cp $45
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0208
    ld [bc], a
    dec h
    daa
    ld d, l
    ld [hl], a
    ld l, h
    ld a, a
    ld c, d
    ld a, a
    add hl, sp
    ld a, $4e
    ld c, a
    ld l, a
    ld l, l
    ei
    cp $fd
    rst $38

jr_03a_628a:
    reti


    sbc $a0
    cp a
    ld h, l
    ld a, [hl]
    ld [hl-], a
    ccf
    ld b, a
    ld a, a
    ld a, $3e
    rst $18
    ld a, a
    cp a
    rst $38
    sbc e
    ld a, e
    dec b
    db $fd
    and h
    ld a, h
    ld c, b
    ld hl, sp-$04
    db $fc
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld [hl], $35
    dec hl
    dec a
    dec h
    ccf
    cpl
    dec a
    ld e, [hl]
    ld e, l
    ld l, e
    ld l, [hl]
    ld [$f0fc], sp
    ld bc, $4408
    ld bc, $0404
    ld e, $1e
    ccf
    ccf
    ret nz

    ret nz

    and b
    ldh [$50], a
    ldh a, [$28]
    ld hl, sp+$0e
    or $d1
    rst $38
    ld a, [hl]
    ld c, [hl]

jr_03a_62d1:
    cp [hl]
    ld [c], a
    inc hl
    inc hl
    inc b
    rlca
    ret z

    rst $08
    or b
    rst $38
    ld b, h
    ld a, a
    ccf
    ccf
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc e
    db $fc
    inc h
    db $fc

jr_03a_62e7:
    inc e
    db $f4
    ld a, h
    db $e4
    inc e
    db $f4
    jr jr_03a_62e7

    jr nz, jr_03a_62d1

    ldh a, [$f0]
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    add hl, bc
    add hl, bc
    ld c, $0e
    rra
    rra
    ret nz

    ret nz

    or a
    rst $30
    ld c, c
    rst $38
    ld a, [bc]
    or $84
    db $fc
    ld hl, sp-$28
    ld a, h
    ld c, h
    xor [hl]
    ld a, [c]
    inc de
    inc de
    ld b, $08
    ld h, e
    inc bc
    ld a, $3f
    inc c
    rrca
    rrca

jr_03a_631e:
    rrca
    ld [$0470], sp
    inc a
    db $e4
    jr c, jr_03a_631e

    ld l, b
    ld hl, sp-$04
    db $fc
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    dec [hl]
    scf
    inc l
    ccf
    inc h
    ccf
    jr z, jr_03a_6375

    ld e, [hl]
    ld e, a
    ld l, b
    ld l, a
    ld b, b
    ld b, b
    and b
    ldh [$ac], a
    db $ec
    inc [hl]
    db $fc
    inc h
    db $fc
    inc d
    db $fc
    ld a, d
    ld a, [$f616]
    db $fc
    rst $38
    cp $ff
    ret c

    rst $18
    xor b
    cp a
    ld h, h
    ld a, a
    ld [$001a], sp
    inc a
    inc a
    ccf
    rst $38
    ld a, a
    rst $38
    dec de
    ei
    dec d
    db $fd
    inc [hl]
    db $fc
    ld l, b
    ld hl, sp+$3c
    db $fc
    ldh [$e0], a
    nop
    ld bc, $6001
    ld h, b
    ld [hl], e
    ld d, e
    ld a, a
    ld c, a
    ld a, a
    ld l, a
    ld a, a

jr_03a_6375:
    ld e, [hl]
    ld a, a
    ld c, a
    cp c
    rst $38
    cp a
    db $eb
    db $fc
    rst $38
    rst $28
    sbc e
    rst $28
    sbc h
    adc a
    rst $38
    ld a, a
    ld [hl], d
    ld e, a
    ld [hl], l
    ld hl, $1f3f
    rra
    ld a, d
    or $ee
    or [hl]
    reti


    ld l, a
    rst $30
    rst $18
    ld sp, hl
    adc a
    and $5e
    ld [$f0f8], sp
    ldh a, [$bc]
    rst $18
    xor a
    db $db
    ld [hl], a
    ld a, h
    rst $28
    sbc a
    rst $28
    sbc d
    adc a
    db $fd
    ld [hl], c
    ld a, a
    rra
    rra
    ld a, [hl]
    or $e9
    cp a
    rst $10
    ld a, a
    ld sp, hl
    rst $08
    or $8e
    db $e4
    ld e, h
    ld bc, $002c
    ld bc, $0300
    ld h, a
    ld a, a
    ld e, a
    ld a, a
    ld b, a
    ccf
    ccf
    ld [hl], a
    ld c, a
    or e
    rst $08
    cp b
    rst $00
    cp a
    ret nz

    sbc a
    ldh [$5f], a
    ld h, b
    ld c, a
    ld [hl], b
    jr nz, jr_03a_6414

    ccf
    ccf
    ld bc, $0000
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    rst $18
    cp a
    rst $30
    cp a
    rst $08
    or a
    rst $08
    or e
    rst $08
    sbc b
    rst $20
    ld e, a
    ld h, b
    ld bc, $0068
    daa
    jr c, jr_03a_6402

    rra
    ccf
    ccf
    ld [hl], b
    ld [hl], b
    ld bc, $0154
    ld d, a
    ld a, a
    ld c, a
    ccf
    daa
    ccf
    ccf

jr_03a_6401:
    ccf

jr_03a_6402:
    ccf
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$d0]
    ldh a, [$f0]
    jr nc, jr_03a_6401

    ldh a, [rSVBK]
    daa

jr_03a_6414:
    ccf
    ld c, a
    ld a, [hl]
    ld b, a
    ld a, a

jr_03a_6419:
    ld l, l
    ld a, e
    ld a, [hl]
    ld [hl], c
    cpl
    jr nc, @+$12

    rra
    rra
    rra
    ld e, $fe
    rst $30
    ld sp, hl
    rst $30
    add hl, sp
    pop af
    rst $38
    ld a, [hl]
    sbc $f4
    cp h
    jr z, jr_03a_6419

    ldh a, [$f0]
    ccf
    ccf
    scf
    ld l, $69
    ld e, a
    ld [hl], e
    ld e, a
    ld [hl], c
    ld e, a
    ccf
    ld a, $01
    cp h
    nop
    db $10
    ldh a, [$e0]
    ldh [$ee], a
    ld l, $f7
    ld sp, hl
    ld [hl], a
    reti


    pop af
    cp a
    ld l, $ee
    ldh a, [$f0]
    ld bc, $fca0
    nop
    ld bc, $1004
    db $10
    ld [hl-], a
    ld [hl-], a
    ld [hl], d
    ld [hl], d
    ld e, l
    ld a, a
    adc c
    cp $ee
    rst $38
    push de
    rst $38
    add a
    db $fd
    rst $10
    db $fd
    rst $30
    ld a, [$b9a7]
    dec l
    ld a, $4a
    ld a, e
    ld [hl], d
    ld [hl], e
    inc bc
    ld [bc], a
    ld bc, $0801
    ld [$1a1a], sp
    ld a, [hl-]
    ld a, [hl-]
    inc b
    ld b, $00
    ld l, h
    ld a, a
    ld d, [hl]
    ld a, a
    add l
    rst $38
    ld d, [hl]
    ld a, e
    ld [hl], a
    ld a, c
    ld h, a
    ld a, b
    inc b
    ld d, $08
    jr jr_03a_64aa

    ld a, [hl-]
    ld a, [hl-]
    dec a
    ccf
    ld a, b
    ld a, a
    ld a, [hl]
    ld a, a
    db $fd
    rst $38
    ld hl, sp-$01
    nop
    nop
    jr nz, jr_03a_64c2

    jr nz, @+$22

    ret c

    ld hl, sp-$42
    adc $21
    rst $38

jr_03a_64aa:
    rra
    rst $38
    ld l, b
    ret c

    push af
    rst $30
    or [hl]
    or a
    and h
    and a
    ld [bc], a
    inc bc
    inc c
    rrca
    add hl, de
    rla
    ld c, $0e
    nop
    nop
    ld a, b
    add sp, $2c
    db $f4

jr_03a_64c2:
    ld a, b
    ld hl, sp+$08
    ld hl, sp+$64
    db $fc
    cp h

jr_03a_64c9:
    cp h
    inc b
    db $fc
    ldh a, [rSC]
    ld [bc], a
    inc c
    inc c
    ld e, $1e
    dec e
    rra
    jr c, jr_03a_6516

    ld a, $3f
    ld a, l
    ld a, a
    ld a, b
    ld a, a
    inc b
    ld d, b
    ld [$df3f], sp
    ld e, [hl]
    ld [c], a
    ld [hl], l
    ld [hl], a
    ld d, [hl]
    ld d, a
    ld b, h
    ld b, a
    inc b
    ld h, [hl]
    ld b, $3c
    db $fc
    jr z, jr_03a_64c9

    inc b
    ld [hl], h
    ld [$0004], sp
    ld [bc], a
    ld a, l
    ld a, a
    ld hl, sp-$01
    db $fd

Call_03a_64fc:
    rst $38
    cp $ff
    cp $ff
    db $f4
    rst $38
    ldh a, [rIE]
    xor d
    cp a
    ld l, $3f
    inc b
    jr jr_03a_6516

    inc b
    ld b, [hl]
    nop
    ld a, l
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    ld [hl], h

jr_03a_6516:
    ld a, a
    ld [hl], b
    ld a, a
    ld l, d
    ld a, a
    inc b
    sub $06
    nop
    ld bc, $0004
    nop
    ld bc, $f301
    di
    adc l
    rst $38
    ld e, a
    ld a, d
    ld a, [hl-]
    dec [hl]
    ld a, a
    ld a, a
    rst $38
    sub a
    ret nz

    ret nz

    ret nz

    ld b, b
    rst $18
    ld e, a
    pop af
    ld a, a
    ld a, [c]
    sbc [hl]
    db $f4
    inc e
    db $f4
    call c, $9cfc
    rst $18
    cp b
    ld l, a
    ld a, a
    ld c, c
    ld a, a
    ld e, a
    ld [hl], d
    ld e, l
    ld [hl], e
    ld e, a
    ld [hl], b
    sbc a
    rst $38
    pop af
    pop af
    cp $32
    or $fa
    ld e, $fe
    ld a, [c]
    sbc [hl]
    ld [hl], d
    cp [hl]
    ret


    rst $38
    db $fd
    add a
    rst $38
    rst $38
    nop
    nop
    ldh [$e0], a
    ld e, b
    ld a, b
    daa
    ccf
    ld hl, $133f
    ld e, $13
    ld e, $13
    rra
    ld h, b
    ld h, b
    ld [hl], b
    ld d, b
    ldh a, [$d0]
    db $fc
    sbc h
    cp $16
    or $8a
    cp $fe
    cp $3a
    inc de
    rra
    inc de
    ld e, $12
    rra
    inc hl
    ccf
    ld hl, $433f
    ld a, a
    ld b, a
    ld a, h
    rst $38
    rst $38
    db $fc
    call nz, Call_03a_7cfc
    ld hl, sp+$48
    ld hl, sp-$68
    db $fc
    inc d
    db $fc
    adc h
    db $fc
    ld b, h
    db $fc
    db $fc
    inc b
    ld h, b
    ld [bc], a
    inc de
    rra
    inc hl
    ld a, $23
    ld a, $41
    ld a, a
    ld a, a
    ld a, a
    inc b
    ld [hl], b
    ld [bc], a
    db $fc
    sbc h
    db $fc
    inc d
    db $fc
    inc e
    cp $62
    cp $fe
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ei
    ld_long a, $ff8f
    ld b, b
    ld a, a
    jr nz, jr_03a_6606

    jr c, jr_03a_6608

    inc hl
    ccf
    nop
    nop
    add b
    add b
    sbc a
    sbc a

jr_03a_65d1:
    pop af
    rst $38
    ld [bc], a
    cp $0c
    db $fc
    jr c, jr_03a_65d1

    adc [hl]
    cp $60
    ld a, a
    ld b, b
    inc b
    pop bc
    inc bc
    add b
    rst $38
    add a
    rst $38
    ld sp, hl
    ld sp, hl
    rrca
    ld sp, hl
    rlca
    db $fd
    ld [bc], a
    cp $02
    cp $62
    cp $91
    rst $38
    rst $38
    rrca
    ld sp, hl
    ld sp, hl
    inc b
    and b
    rst $38
    dec c
    nop
    ld bc, $6305
    ld h, e
    ld d, a
    ld [hl], h
    ld c, a
    ld a, c
    ld h, $3f

jr_03a_6606:
    ld [hl], $3f

jr_03a_6608:
    ld a, a
    ld l, l
    cp l
    xor $9c
    rst $30
    add $c6
    ld [$f22e], a
    sbc [hl]
    ld h, h
    db $fc
    ld l, h
    db $fc
    cp $b6
    cp l
    ld [hl], a
    add hl, sp
    rst $28
    ld c, a
    ld a, e
    cp [hl]
    rst $38
    sbc l
    rst $30
    sbc a
    db $f4
    sbc a
    ld a, [c]
    cp a
    pop hl
    ld a, a
    ld e, h
    ccf
    ccf
    ld a, [c]
    sbc $7d
    rst $38
    cp c
    rst $28
    ld sp, hl
    cpl
    ld sp, hl
    ld c, a
    db $fd
    add a
    cp $02
    db $fc
    db $fc
    nop
    nop
    ld bc, $0301
    ld [bc], a
    dec b
    ld b, h
    nop
    ld bc, $0701
    rlca
    ld [$f00f], sp
    ldh a, [$b8]
    add sp, -$22
    ld a, [hl]
    call $ed7f
    ccf
    rst $38
    dec sp
    ei
    cp l
    ld sp, hl
    rst $18
    db $10
    rra
    jr jr_03a_6680

    daa
    ccf
    ld hl, $433f
    ld a, [hl]
    add e
    cp $87
    db $fc
    ld a, a
    ld a, a
    ld a, $e6
    ld a, d
    sbc $f6
    sbc [hl]
    cp $12
    cp $0a
    cp $06
    cp $0e
    rst $38
    rst $38
    dec b
    ld b, b
    rrca

jr_03a_6680:
    inc de
    ld b, c
    ld a, a
    add a
    cp $8f
    ld hl, sp-$61
    ldh a, [rTIMA]
    ld l, [hl]
    ld [$04fc], sp
    db $fc
    inc e
    cp $fe
    ld h, c
    ld h, c
    ld d, [hl]
    ld [hl], a
    ld c, b
    ld a, a
    jr nc, @+$41

    jr jr_03a_66bb

    ld h, h
    ld a, a
    add e
    rst $38
    ld b, c
    ld a, a
    add [hl]
    add [hl]

jr_03a_66a4:
    ld l, d
    xor $12
    cp $0c
    db $fc
    jr jr_03a_66a4

    ld h, $fe
    pop bc
    rst $38
    add d
    cp $62
    ld a, a
    ld e, h
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    dec b

jr_03a_66bb:
    and $00
    ldh a, [rIE]
    ccf
    ccf
    ld b, [hl]
    cp $3a
    cp $02
    dec b
    di
    ld bc, $fe72
    ld a, [$fcfe]
    db $fc
    nop
    ld bc, $8004
    add b
    call $f2cd
    cp a
    call $febe
    sub e
    ld a, a
    ld d, l
    ld a, a
    ld a, a
    rst $10
    cp e
    ld bc, $b301
    or e
    ld c, a
    db $fd
    or e
    ld a, l
    ld a, a
    ret


    cp $aa
    db $fc
    db $fc
    add sp, -$28
    ld c, a
    ld a, e
    ret c

    cp a
    ei
    db $fd
    dec d
    rra
    dec de
    rra

Call_03a_66fc:
    ld h, [hl]
    ld a, a
    call $fcb5
    db $fc
    ld a, [$1fda]
    db $fd
    jp nc, $abbe

    db $fd
    rst $18
    rst $38
    ld l, h
    db $f4
    cp h
    cp h
    nop
    nop
    ld b, b
    ld b, b
    ld [hl], b
    ld [hl], b
    ld l, a
    ld e, a
    dec a
    inc hl
    rla
    add hl, de
    rra
    rra
    ld de, $0c1f
    rrca
    nop
    nop
    jr nc, jr_03a_6756

    jp z, $b7fa

    db $fd
    ld a, c
    rst $08
    ld a, l
    rst $10
    cp $fe
    cp $de
    dec bc
    rrca
    dec c
    ld a, [bc]
    rrca
    dec bc
    dec c
    dec c
    ld [bc], a
    inc bc
    dec c
    rrca
    jr @+$19

    rra
    rra
    ld a, h
    call c, $fcb4
    xor [hl]
    or $c6
    cp $7e
    cp $fc
    db $fc
    call nc, $c85c
    ret z

    inc b
    ld d, b
    ld a, [bc]
    ld a, [hl]

jr_03a_6756:
    sbc $07
    rlca
    dec bc
    ld c, $04
    ld h, d
    ld [bc], a
    inc bc
    inc bc
    rlca
    rlca
    nop
    nop
    inc a
    inc b
    ld [hl], c
    inc bc
    ld a, [$fdfe]
    rst $38
    ld h, a
    ld e, e
    ld a, [hl]
    ld a, [hl]
    inc b
    nop
    ld [bc], a
    jp nc, $e7bf

    sbc a
    ld a, b
    ld e, a
    ld l, h
    ld a, a
    ld [c], a
    cp a
    inc b
    db $10
    ld [bc], a
    ld c, e
    db $fd
    rst $20
    ld sp, hl
    ld e, $fa
    inc [hl]
    db $fc
    ld b, h
    db $fc
    ld d, e
    ld a, a
    jp z, $f7bf

    rst $38
    ld de, $1a1f
    inc b
    add hl, hl
    inc bc
    jp z, Jump_03a_5ffa

    db $fd
    ld a, [c]
    cp $8b
    db $fd
    ld e, a
    inc b
    add hl, sp
    inc bc
    inc b
    rst $28
    inc c
    nop
    ld bc, $2001
    jr nz, jr_03a_67db

    jr nc, jr_03a_67d9

    inc a
    ld [hl], e
    ld e, a
    db $fd
    sbc a
    jp hl


    xor a
    rst $38
    sbc [hl]
    push af
    sbc a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld a, [de]
    ld e, $e4
    db $fc
    ret c

    ld a, b
    call z, $fefc
    cp d
    ld e, a
    ld sp, hl
    rst $20
    cp [hl]
    ei
    rst $38
    sub h
    rst $38
    cp a
    rst $38
    ld [hl], d
    ld a, a
    daa
    ccf
    ld a, [hl]
    ld c, d
    db $76
    db $76
    rst $38

jr_03a_67d9:
    add hl, sp
    rst $28

jr_03a_67db:
    ld sp, hl
    sub [hl]
    ld a, [$fefa]
    xor h
    db $fc
    call nz, Call_03a_6cfc
    ld a, h
    ld a, b
    ld a, b
    inc b
    inc b
    ld b, $06
    dec b
    rlca
    ld [bc], a
    inc bc
    dec b
    rlca
    inc b
    rlca
    rrca
    rrca
    ld [de], a
    rra
    ld bc, $f0fc
    db $ec
    db $ec
    ld e, [hl]
    ld a, [$e9bf]
    rra
    db $fd
    rst $38
    jp hl


    ld e, a
    ld sp, hl
    inc a
    ccf
    ld b, a
    ld a, a
    ld c, h
    ld a, a
    sub l
    rst $38
    sbc a
    rst $38
    ld l, c
    ld l, a
    rra
    rra
    rrca
    rrca
    ld a, a
    call $ffff
    cp $92
    cp $06
    db $fc
    db $fc
    ld c, h
    db $fc
    db $fc
    and h
    ld a, h
    ld a, h
    ld bc, $0f40
    ld bc, $e0e0
    ld d, b
    ldh a, [$b8]
    add sp, $18
    ld hl, sp-$05
    db $eb
    ld e, a
    db $fd
    ld bc, $0060
    ld c, d
    ld a, a
    sbc e
    rst $38
    sbc a
    rst $38
    ld l, b
    ld l, a
    rra
    inc d
    ld bc, $016e
    pop af
    ccf
    db $e3
    ccf
    db $ed
    cp $fa
    xor h
    db $fc
    cp $fe
    sbc [hl]
    sbc [hl]
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    ld e, b
    ld a, b
    daa
    ccf
    jr jr_03a_687d

    jr nc, jr_03a_689f

    ld [hl], a
    ld a, a
    adc b
    rst $38
    inc b
    inc b
    inc c
    inc c
    inc [hl]
    inc a
    adc $fa
    ccf
    ld sp, hl
    rla
    push af
    rst $18
    db $fd
    inc hl
    rst $38
    adc a
    rst $38
    ldh a, [rIE]
    ld h, c
    ld a, a
    ld b, a
    ld a, a
    ld c, c

jr_03a_687d:
    ld a, a
    inc sp
    ccf
    ccf
    dec h
    dec sp
    dec sp
    db $e3
    rst $38
    rra
    rst $38
    add hl, bc
    rst $38
    push bc
    rst $38
    ld h, [hl]
    cp $fa
    cp $36
    ld a, $3c
    inc a
    nop
    ld bc, $1705
    rla
    dec de
    inc e
    rra
    add hl, de
    cpl
    ccf

jr_03a_689f:
    dec a
    cpl
    inc a
    daa
    dec [hl]

jr_03a_68a4:
    ccf
    ld a, a
    ld c, h
    add sp, -$18
    ret c

    jr c, jr_03a_68a4

    sbc b
    db $f4
    db $fc
    cp h
    db $f4
    inc a
    db $e4
    xor h
    db $fc
    cp $32
    ld a, a
    ld l, e
    ccf
    ld h, $1d
    rla
    inc d
    rra
    ccf
    inc sp
    ld a, [hl]
    ld b, e
    ld a, h
    ld e, a
    ccf
    ccf
    cp $d6
    db $fc
    ld h, h
    cp b
    add sp, $28
    ld hl, sp-$08
    ret z

    ld a, h
    call nz, $e23e
    db $fc
    db $fc
    dec b
    db $fc
    ldh a, [rSB]
    ld bc, $0203
    dec b
    ld b, [hl]
    nop
    rlca
    ld b, $0f
    add hl, bc
    cp b
    cp b
    db $fc
    db $e4
    cp $7e
    ei
    ccf
    pop af
    ccf
    pop bc
    ld a, a
    db $e3
    ccf
    rst $18
    or c
    rrca
    inc c
    dec bc
    ld c, $0f
    ld [$0c0b], sp
    inc e
    dec de
    ccf
    ld hl, $437e
    ld a, a
    ld a, a
    cp $76
    xor $3a
    db $e4
    inc a
    cp b
    ld a, b
    ld l, b
    ld hl, sp-$78
    ld hl, sp+$38
    ld hl, sp+$05
    ld a, $0f
    add hl, de
    ld a, a
    ld h, b
    cp $81
    dec b
    ld l, [hl]
    ld [$7cc4], sp
    sbc h
    db $fc
    cp $fe
    dec b
    nop
    ld bc, $2f10
    jr nc, jr_03a_696a

    jr nz, jr_03a_695c

    ld a, $3f
    jr nc, @+$81

    ld b, b
    dec b
    db $10
    ld bc, $f408
    inc c
    db $fc
    inc b
    db $f4
    ld a, h
    db $fc
    inc c
    cp $02
    ld a, a
    ld h, b
    cpl
    jr nc, @+$1d

    inc e
    jr jr_03a_695f

    ccf
    jr nc, jr_03a_69aa

    ld h, b
    dec b
    inc l
    ld bc, $f406
    inc c
    ret c

    jr c, jr_03a_696d

    add sp, -$08
    ld [$04fc], sp
    cp $02

jr_03a_695c:
    db $fc
    db $fc
    nop

jr_03a_695f:
    ld bc, $2801
    jr z, jr_03a_69d0

    ld l, h
    and [hl]
    and $b5
    rst $30
    or [hl]

jr_03a_696a:
    rst $30
    xor c
    rst $38

jr_03a_696d:
    cp c
    rst $38
    or e
    rst $38
    inc d
    inc d
    ld [hl], $36
    ld h, l
    ld h, a
    xor l
    rst $28
    ld l, l
    rst $28
    sub l
    rst $38
    sbc l
    rst $38
    call $b8ff
    rst $38
    cp l
    rst $30
    sbc a
    rst $30
    xor a
    rst $38
    xor l
    rst $38
    ld [hl], e
    ld a, a
    ld hl, $3f3f
    ccf
    dec e
    rst $38
    cp l
    rst $28
    ei
    rst $28
    push af
    rst $38
    add hl, de
    rst $38
    and [hl]
    cp $f8
    ld hl, sp-$20
    ldh [rNR10], a
    db $10
    db $10
    db $10
    jr jr_03a_69bf

    inc d
    inc e
    inc sp

jr_03a_69aa:
    ccf
    ld hl, $203f
    ccf
    ld hl, $903f
    sub b
    ret nc

    ret nc

    ld a, b
    ld a, b
    ret c

    ld hl, sp-$1c
    db $fc
    add $fe
    add $fe

jr_03a_69bf:
    rrca
    rst $38
    and e
    cp a
    and e
    cp a
    db $e3
    rst $38
    sub e
    rst $38
    sub e
    rst $38
    ld d, c
    ld a, a
    jr c, jr_03a_6a0e

    rrca

jr_03a_69d0:
    rrca
    ld h, c
    rst $38
    ccf
    rst $18
    cp $de
    ld h, $fe
    inc e
    db $fc
    ld h, $fe
    jp nz, $fefe

    cp $23
    ccf
    ld bc, $0080
    inc de
    rra
    inc de
    rra
    ld de, $0a1f
    rrca
    ld bc, $066e
    call c, Call_000_28fc
    ld hl, sp+$10
    ldh a, [$f0]
    ldh a, [rSB]
    nop
    ld [bc], a
    sub l
    rst $30
    sub [hl]
    rst $30
    adc l
    rst $38
    add b
    rst $38
    add b
    ld bc, $030f
    xor c
    rst $28
    ld a, c
    rst $38
    or l
    rst $38

jr_03a_6a0e:
    dec b
    rst $38
    dec c
    ld bc, $01ab
    add e
    rst $38
    add b
    rst $38
    call c, $e2ff
    rst $38
    ld l, d
    ld a, a
    ccf
    ccf
    dec d
    rst $38
    dec h
    rst $38
    push bc
    rst $38
    add hl, bc
    rst $38
    ld [de], a
    cp $66
    cp $3a
    cp $c6
    add $01
    and b
    rst $38
    dec c
    nop
    ld bc, $0801
    ld [$0c0c], sp
    ld b, $06
    dec b
    rlca
    ld b, $07
    ld a, c
    ld a, a
    ld e, c
    ld a, a
    or e
    rst $38
    db $10
    db $10
    jr nc, jr_03a_6a7b

    ld h, b
    ld h, b
    and b
    ldh [$64], a
    db $e4
    sbc [hl]
    cp $9b
    rst $38
    call $b8ff
    rst $38
    and a
    rst $38
    sbc b
    rst $38
    xor a
    rst $38
    xor [hl]
    ld sp, hl
    and l
    cp $73
    ld a, a
    rrca
    rrca
    dec e
    rst $38
    push hl
    rst $38
    add hl, de
    rst $38
    pop af
    rst $38
    add hl, sp
    rst $18
    ld h, l
    cp a
    jp nz, $fefe

    cp $01
    jr nz, jr_03a_6a7c

    sbc a

jr_03a_6a7b:
    rst $38

jr_03a_6a7c:
    and [hl]
    db $fd
    ld b, e
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    ld bc, $0230
    push af
    rst $38
    and l
    ld a, a
    set 7, a
    db $fc
    db $fc
    ld bc, $f8f4
    rlca
    rlca
    ld a, [bc]
    rrca
    dec c
    rrca
    sub b
    sub b
    ret nc

    ret nc

    ld a, b
    ld a, b
    ld e, b
    ld a, b
    ld h, h
    ld a, h
    add $fe
    add $fe
    rrca
    rst $38
    adc c
    adc a
    adc c
    adc a
    ret


    rst $08
    cp c
    rst $38
    sub c
    rst $38
    ld d, e
    ld a, a
    inc a
    ccf
    rlca
    rlca
    ld b, c
    rst $38
    ccf
    rst $38
    jp nz, Jump_000_3efe

    cp $1c
    db $fc
    ld h, $fe
    ld bc, $003c
    ld [de], a
    rra
    ld [hl-], a
    ccf
    or e
    cp a
    jp nc, $a7ff

    rst $38
    ld a, h
    ld a, a
    rrca
    rrca
    nop
    nop
    add d
    cp $7e
    cp $84
    db $fc
    ld a, h
    db $fc
    adc [hl]
    cp $49
    rst $38
    rst $38
    rst $38
    ld bc, $f6fe
    rlca
    rlca
    jr c, jr_03a_6b2b

    ld d, b
    ld a, a

Jump_03a_6aee:
    ld h, b
    ld a, a
    ld bc, $0410
    add sp, -$18
    inc a
    db $fc
    ld a, [bc]
    cp $09
    rst $38
    ld b, b
    ld a, a
    ld bc, $00e0
    add c
    rst $38
    sbc h
    rst $38
    and d
    rst $38
    ld [$3fff], a
    ccf
    ld de, $11ff
    rst $38
    ld h, c
    rst $38
    add c
    rst $38
    ld [bc], a
    cp $06
    cp $3a
    cp $c6
    add $00
    ld bc, $6300
    ld h, e
    db $f4
    sub a
    db $f4
    sub a
    ld l, d
    ld l, a
    inc c
    rrca
    jr c, jr_03a_6b68

    ld l, d
    ld a, a

jr_03a_6b2b:
    ld [hl], a
    ld a, a
    ld e, a
    ld a, c
    cp [hl]
    rst $20
    cp [hl]
    rst $38
    rst $38
    push bc
    ld a, a
    ld c, h
    scf
    inc a
    rrca
    ld c, $0b
    dec bc
    inc bc
    inc bc
    ld b, $07
    rrca
    add hl, bc
    rrca
    add hl, bc
    ld c, $00
    add hl, bc
    inc bc
    add b
    add b
    ld h, b
    ldh [$50], a
    ldh a, [$b0]
    ldh a, [$60]
    ldh [$38], a
    ld hl, sp-$54
    db $fc
    db $dc, $fc, $00
    nop
    ld [bc], a
    ld l, b
    ld l, a
    ld [$1e0f], sp
    rra
    inc hl
    ccf
    ld e, c
    ld a, a
    adc h
    adc h

jr_03a_6b68:
    ld e, [hl]
    jp nc, $f27e

    sbc h
    db $fc
    ld h, b
    ldh [rNR41], a
    ldh [$60], a
    ldh [$e0], a
    ldh [rHDMA5], a
    ld a, a
    dec hl
    ld a, $3d
    ccf
    ld e, a
    ld [hl], e
    ld e, a
    ld [hl], h
    ld e, a
    ld a, a
    and c
    pop hl
    ret nz

    ret nz

    ldh a, [$90]
    ldh [$60], a
    and b
    ldh [$f0], a
    sub b
    ldh a, [$90]
    ld [hl], b
    ret nc

    ldh a, [$d0]
    or b
    or b
    nop
    jr nz, jr_03a_6b9f

    nop
    ld c, d
    ld [bc], a
    nop
    jr nc, jr_03a_6b9f

jr_03a_6b9f:
    ld [hl], b
    ldh a, [$90]
    ldh a, [rP1]
    ld e, b
    ld b, $6b
    ld a, [hl]
    ld a, l
    ld a, a
    nop
    ld h, [hl]
    ld [bc], a
    ld h, c
    ld h, c
    ld b, b
    ld b, b
    nop
    ld b, b
    ld b, $3c
    ccf
    ld h, e
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    or e
    rst $38
    cp h
    rst $38
    ldh a, [$df]
    ld h, b
    ld a, a
    inc h
    ccf
    ld c, [hl]
    ld a, a
    ld [hl], e
    ld [hl], e
    inc bc
    inc bc
    inc c
    rrca
    dec d
    rra
    add hl, de
    rra
    nop
    cp b
    inc b
    add b
    add b
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$e0], a
    ld a, b
    ld hl, sp-$74
    db $fc
    inc b
    db $fc
    nop
    ret nz

    inc b
    ld [hl], b
    ld e, a
    inc [hl]
    ccf
    inc d
    rra
    dec bc
    dec bc
    nop
    ld bc, $0802
    ld [$3d3d], sp
    cpl
    ccf
    ld a, l
    ld a, a
    ld l, h
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, a
    ld a, l
    xor e
    rst $38
    jr z, jr_03a_6c2d

    ld l, h
    ld l, h
    db $f4
    db $fc
    ld h, e
    rst $38
    ld a, a
    rst $38
    and $fe
    jp $c37f


    rst $38
    xor [hl]
    db $fd
    sbc l
    cp $73
    ld a, a
    ld h, d
    ld a, a
    ld a, [hl-]
    ccf
    ld h, e
    ld a, a
    ld c, c
    ld a, a
    ld a, [hl]
    ld a, [hl]
    push af
    ld a, a
    push bc
    rst $38
    push bc
    rst $38
    dec l
    rst $38
    sub l
    rst $30

jr_03a_6c2d:
    ld [hl], $f6
    ret z

    ld hl, sp-$08
    ld hl, sp+$00
    nop
    inc bc
    inc bc
    dec b
    rlca
    inc c
    rrca
    rra
    rra
    inc e
    rra
    jr z, jr_03a_6c80

    jr z, jr_03a_6c82

    ret nc

    ret nc

    db $f4
    db $f4
    db $fc
    db $fc
    ld l, [hl]
    cp $e2
    cp $9a
    cp $5e
    or $5e
    cp $33
    ccf
    ld d, c
    ld a, a
    ld d, c
    ld a, a
    ld d, e
    ld a, a
    ld e, b
    ld a, a
    ld hl, sp-$01
    xor a
    rst $38
    rst $38
    rst $38
    or l
    rst $28
    dec sp
    rst $30
    ld a, a
    rst $38
    sbc c
    rst $38
    ret


    rst $38
    sbc [hl]
    cp $04
    db $fc
    db $fc
    db $fc
    ld bc, $0701
    rlca
    dec bc
    rrca
    inc e
    rra
    cpl
    ccf
    ld l, $3f
    ld e, h

jr_03a_6c80:
    ld a, a
    ld e, h

jr_03a_6c82:
    ld a, a
    ld b, b
    ld b, b
    ld h, h
    ld h, h
    ld [bc], a
    ld d, h
    ld [bc], a
    ld e, d
    cp $3e
    or $3e
    cp $5a
    ld a, a
    cp d
    rst $38
    or [hl]
    rst $30
    cp c
    rst $38
    or b
    rst $38
    ld h, h
    ld a, a
    ld [hl], e
    ld a, a
    ld a, [hl]
    ld a, [hl]
    db $f4
    db $ec
    ld a, [hl-]
    or $3e
    cp $44
    db $fc
    add h
    db $fc
    ld [bc], a
    inc a
    nop
    ld hl, sp-$08
    ld [bc], a
    nop
    nop
    scf
    ccf
    dec h
    ccf
    ld l, d
    ld a, a
    ld l, l
    ld a, a
    ld l, l
    ld a, a
    rst $18
    ld [bc], a
    rrca
    dec b
    sbc e
    rst $38
    ld a, d
    cp $7d
    rst $38
    ld a, l
    rst $38
    db $db
    rst $38
    reti


    rst $38
    ld e, [hl]
    ld a, a
    ld d, h
    ld a, a
    ld e, b
    ld a, a
    ld h, c
    ld a, a
    add a
    rst $38
    cp $fe
    sbc l
    rst $38
    ld a, l
    rst $38
    adc l
    rst $38
    adc l
    rst $38
    cp l
    rst $38
    adc [hl]
    cp $24
    db $fc
    db $fc
    db $fc
    nop
    ld bc, $e005
    ldh [$f8], a
    ld hl, sp+$6e
    ld a, [hl]
    ld [hl], l
    ld a, a
    ld d, l
    ld a, a
    ld d, c
    ld a, a
    inc l
    ccf
    ld l, [hl]
    ld a, e
    sbc l

Call_03a_6cfc:
    ei
    or $ff
    ccf
    dec sp
    ld l, $3d
    ld c, a
    ld a, a
    ld b, a
    ld a, l
    ld e, h
    ld a, a
    ld h, e
    ld h, e
    dec b
    nop
    rrca
    ld bc, $3f3b
    dec hl
    inc a
    inc h
    ccf
    inc h
    ccf
    cpl
    ccf
    jr nc, jr_03a_6d4b

    ldh a, [$f0]
    db $fc
    db $fc
    dec sp
    ccf
    dec e
    rra
    ld e, $1f
    rra
    rra
    inc l
    ccf
    ld [hl+], a
    ccf
    dec b
    db $fc
    ldh a, [$b0]
    or b
    ld d, b
    ldh a, [$dc]
    db $fc
    ld [hl+], a
    cp $b1
    rst $38
    ld a, c
    rst $28
    daa
    ccf
    inc d
    rra
    rrca
    rrca
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    rlca
    rlca
    db $76

jr_03a_6d4b:
    xor $d9
    rst $38
    cp a
    rst $28
    ld a, d
    sub $5c
    db $ec
    ld l, $f2
    ld [hl], d
    cp $8e
    adc [hl]
    dec b
    ld h, b
    inc b
    dec b
    add [hl]
    nop
    dec b
    db $fc
    ldh a, [rTIMA]
    ld [hl], b
    nop
    xor a
    rst $38
    ld c, [hl]
    ld a, [c]
    ld [hl+], a
    cp $12
    cp $ae
    xor $60
    ld h, b
    dec b
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, l
    ld a, a
    ld e, l
    ld a, a
    ld a, b
    ld a, a
    jr nz, jr_03a_6dbe

    ld h, d
    ld a, a
    sbc h
    rst $38
    db $eb
    rst $38
    daa
    ccf
    daa
    ccf
    ld b, d
    ld a, a
    ld b, [hl]
    ld a, a
    dec b
    inc e
    inc b
    dec b
    and h
    ld c, $23
    ccf
    ld [hl+], a
    ccf
    ld h, $05
    dec sp
    ld bc, $a005
    rst $38
    dec c
    nop
    ld bc, $c700
    rst $00
    cp $bf
    xor [hl]
    rst $18
    rst $18
    rst $38
    ld a, a
    ld a, [hl]
    dec sp
    ccf
    db $dd
    ei
    sbc a
    or $ff
    cp $79
    ld e, a
    db $e3
    cp l
    rst $38
    db $e3
    cp [hl]
    rst $38
    rst $30
    sbc a

jr_03a_6dbe:
    db $ed
    di
    ld a, $3e
    cp $3e
    db $fc
    call c, $26fe
    cp $26
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ldh a, [$f0]
    ei
    cp $77
    ld a, e
    rst $28
    or e
    rst $38
    and l
    rst $38
    cp $bf
    rst $18
    rst $38
    cp a
    ld a, [hl]
    ld a, [hl]
    cp $3e
    cp $de
    cp $3a
    cp $12
    cp $fa
    sbc $fe
    ld l, h
    sbc h
    ldh a, [$f0]
    rlca
    rlca
    rrca
    dec c
    dec e
    ld e, $1e
    rra
    nop
    ld d, a
    nop
    ld e, $1f
    inc c
    rrca
    ldh [$e0], a
    ret nc

    ldh a, [$e8]
    ld a, b
    ld a, b
    ld hl, sp-$08
    add sp, -$48
    ld hl, sp-$28
    cp b
    ld hl, sp-$18
    rra
    rra
    rrca
    dec bc
    rra
    ld a, [de]
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
    db $fc
    call z, $ffff
    db $d3
    db $fd
    adc $72
    db $fc
    ld c, h
    cp b
    ld hl, sp-$44
    call z, $fcfc
    rra
    rra
    rra
    inc de
    ccf
    ld hl, $537f
    db $ed
    cp a
    rst $20
    cp c
    ld a, [hl]
    ld b, a
    ld a, a
    ld a, a
    rst $38
    rst $08
    or e
    db $fd
    adc $b2
    db $fc
    ld c, h
    ldh a, [$f0]
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
    rst $38
    rst $20
    ccf
    jr nz, jr_03a_6ee2

    ld b, c
    rst $38
    add c
    rst $38
    add b
    ld a, a
    ld c, b
    ld a, a
    ld a, [hl]
    rra
    rra
    cp $ce
    cp $06
    rst $38
    dec b
    rst $38
    inc hl
    rst $38
    sub l
    ei
    adc l
    cp $5e
    ldh [$e0], a
    rst $38
    rst $20
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    rst $38
    adc c
    rst $38
    sub d
    rst $38
    and d
    rst $38
    db $f4
    rrca
    rrca
    cp $ce
    ei
    dec c
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    dec h
    rst $38
    db $fd
    or $f6

Call_03a_6e9e:
    nop
    ld [bc], a
    nop
    jr nc, jr_03a_6ed4

    nop
    nop
    inc c
    inc h
    dec h
    rst $38
    nop
    inc d
    rlca
    ld [hl-], a
    inc sp
    nop
    jr nz, jr_03a_6ebd

    ld h, $27
    nop
    inc d
    ld [$3130], sp
    jr c, jr_03a_6ef3

    nop
    inc b
    rrca

jr_03a_6ebd:
    dec bc
    ld a, [hl-]
    dec sp
    nop
    inc h
    rrca
    dec bc
    nop
    ld b, b
    inc c
    nop
    ld [de], a
    ld c, $00
    ld h, d
    ld a, [bc]
    nop
    ld [hl-], a
    ld c, $00
    jp nz, Jump_000_3400

jr_03a_6ed4:
    dec [hl]
    nop
    ld c, d
    rrca
    rlca
    nop
    ld [c], a
    nop
    ld [hl], $37
    nop
    ld a, [hl+]
    rrca
    dec b

jr_03a_6ee2:
    inc [hl]
    dec [hl]
    nop
    add $00
    nop
    add $06
    nop
    ld [de], a
    inc c
    ld [hl], $37
    nop
    and $00
    nop

jr_03a_6ef3:
    and $06
    nop
    ld [hl], d
    ld c, $00
    ld b, $18
    nop
    db $10
    rrca
    ld bc, $2600
    jr jr_03a_6f03

jr_03a_6f03:
    ld [hl], b
    rrca
    ld bc, $0000
    stop
    ld [$0b0f], sp
    nop
    add sp, $06
    nop
    ld [hl], b
    rra
    inc bc
    nop
    ld b, $0f
    daa
    nop
    ld [bc], a
    nop
    ld [$0009], sp
    nop
    nop
    ld a, [bc]
    dec bc
    jr nc, jr_03a_6f55

    jr nc, jr_03a_6f57

    ld b, $07
    nop
    nop
    nop
    inc h
    dec h
    rst $38
    nop
    inc d
    rlca
    jr jr_03a_6f4c

    nop
    jr nz, jr_03a_6f36

jr_03a_6f36:
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld d, $17
    nop
    jr nz, jr_03a_6f41

jr_03a_6f41:
    ld h, $27
    nop
    inc d
    ld [$0800], sp
    nop
    nop
    ld b, b
    inc b

jr_03a_6f4c:
    inc [hl]
    dec [hl]
    nop
    ld c, h
    nop
    nop
    ld [de], a
    ld a, [bc]
    nop

jr_03a_6f55:
    jr z, jr_03a_6f57

jr_03a_6f57:
    nop
    ld h, b
    inc b
    ld [hl], $37
    nop
    ld l, h
    nop
    nop
    ld [hl-], a
    rrca
    rlca
    nop
    ld c, d
    nop
    jr c, jr_03a_6fa1

    nop
    ld d, d
    rrca
    rlca
    nop
    ld l, d
    nop
    ld a, [hl-]
    dec sp
    nop
    ld [hl-], a
    rrca
    add hl, bc
    jr c, jr_03a_6fb0

    nop
    ld d, b
    rrca
    dec bc
    ld a, [hl-]
    dec sp
    nop
    ld [hl], b
    rrca
    dec b
    nop
    ld c, h
    nop
    nop
    adc $00
    nop
    sub b
    rrca
    dec b
    nop
    ld l, h
    nop
    nop
    xor $00
    nop
    or b
    rrca
    inc bc
    nop
    adc [hl]
    nop
    jr c, jr_03a_6fd3

    jr nc, jr_03a_6fcd

    nop
    adc $0f
    dec b
    nop

jr_03a_6fa1:
    xor [hl]
    nop
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    nop
    xor $0f
    dec b
    nop
    ld c, b
    stop
    add [hl]

jr_03a_6fb0:
    inc d
    nop
    ld d, d
    rrca
    ld bc, $6800
    stop
    and [hl]
    inc d
    nop
    ld [hl], d
    rrca
    add hl, bc
    nop
    ld [$0000], sp
    sub d
    rrca
    add hl, bc
    nop
    jr z, jr_03a_6fc9

jr_03a_6fc9:
    nop
    ld [hl-], a
    ld a, [bc]
    nop

jr_03a_6fcd:
    ld [bc], a
    ld b, $30
    ld sp, $0006

jr_03a_6fd3:
    inc c
    inc h
    dec h
    rst $38
    ld b, $14
    rlca
    ld [hl-], a
    inc sp
    ld b, $20
    inc c
    ld h, $27
    ld b, $14
    ld [$0006], sp
    rrca
    ld c, l
    ld b, $60
    rrca
    ld c, l
    ld b, $c0
    rrca
    ld c, l
    ld b, $20
    rra
    ld c, l
    ld [bc], a
    inc bc
    ld b, $c0
    db $10
    inc b
    dec b
    ld b, $40
    stop
    ld bc, $c006
    db $10
    jr z, jr_03a_702e

    ld b, $54
    jr jr_03a_701b

    inc de
    ld b, $e0
    db $10
    inc d
    dec d
    ld b, $60
    db $10
    db $10
    ld de, $e006
    db $10
    ld a, [hl+]
    dec hl
    ld b, $54

jr_03a_701b:
    jr jr_03a_701d

jr_03a_701d:
    ld [bc], a
    nop
    inc l
    dec l
    jr nc, jr_03a_7054

    nop
    ld [bc], a
    ld a, [bc]
    inc h
    dec h
    rst $38
    nop
    inc d
    rlca
    ld l, $2f

jr_03a_702e:
    ld [hl-], a
    inc sp
    nop
    ld [hl+], a
    ld a, [bc]
    ld h, $27
    nop
    inc d
    ld [$2d2c], sp
    inc [hl]
    dec [hl]
    nop
    ld [bc], a
    ld b, $34
    dec [hl]
    inc [hl]
    dec [hl]
    nop
    ld [de], a
    inc c
    ld [hl], $37
    nop
    ld [hl+], a
    ld b, $36
    scf
    ld [hl], $37
    nop
    ld [hl-], a
    ld a, [bc]
    ld a, [bc]
    dec bc

jr_03a_7054:
    jr c, jr_03a_708f

    nop
    ld b, d
    nop
    nop
    ld c, [hl]
    nop
    nop
    ld c, [hl]
    nop
    nop
    db $10
    inc c
    ld a, [de]
    dec de
    ld a, [hl-]
    dec sp
    nop
    ld h, d
    nop
    nop
    ld l, [hl]
    nop
    nop
    ld l, [hl]
    nop
    nop
    jr nc, jr_03a_707e

    jr nc, jr_03a_70a5

    jr c, jr_03a_70af

    nop
    add d
    inc b
    nop
    ld c, d
    ld [bc], a
    nop
    ld [de], a

jr_03a_707e:
    ld a, [bc]
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    nop
    and d
    inc b
    nop
    ld l, d
    ld [bc], a
    nop
    or d
    inc c
    inc [hl]
    dec [hl]
    nop

jr_03a_708f:
    db $c2, $02, $00

    adc b
    inc b
    nop
    jp nc, $360c

    scf
    nop
    ld [c], a
    ld [bc], a
    nop
    xor b
    inc b
    nop
    ld [hl-], a
    ld a, [bc]
    inc b
    dec b
    nop

jr_03a_70a5:
    ld b, $12
    nop
    ld c, d
    ld [bc], a
    nop
    adc $0e
    inc d
    dec d

jr_03a_70af:
    nop
    ld h, $12
    nop
    ld l, d
    ld [bc], a
    nop
    xor $0e
    nop
    ld b, b
    rrca
    dec l
    nop
    nop
    rrca
    dec l
    nop
    ld [bc], a
    nop
    ld [$0009], sp
    nop
    nop
    ld a, [bc]
    dec bc
    jr nc, jr_03a_70fd

    jr nc, @+$33

    ld b, $07
    nop
    nop
    nop
    inc h
    dec h
    rst $38
    nop
    inc d
    rlca
    jr jr_03a_70f4

    nop
    jr nz, jr_03a_70de

jr_03a_70de:
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld d, $17
    nop
    jr nz, jr_03a_70e9

jr_03a_70e9:
    ld h, $27
    nop
    inc d
    ld [$3534], sp
    nop
    ld b, b
    inc c
    nop

jr_03a_70f4:
    ld [de], a
    ld a, [bc]
    ld [hl], $37
    nop
    ld h, b
    inc c
    nop
    ld [hl-], a

jr_03a_70fd:
    rrca
    ld bc, $3938
    nop
    add [hl]
    ld [bc], a
    nop
    ld c, [hl]
    rrca
    dec b
    ld a, [hl-]
    dec sp
    nop
    and [hl]
    ld [bc], a
    nop
    ld l, [hl]
    rrca
    rlca
    nop
    ld [$0000], sp
    adc h
    rrca
    add hl, bc
    nop
    jr z, jr_03a_711b

jr_03a_711b:
    nop
    xor h
    rrca
    add hl, bc
    nop
    adc b
    rrca
    dec hl
    nop
    ld b, [hl]
    rrca
    add hl, hl
    nop
    ld [$0000], sp
    add d
    jr jr_03a_712e

jr_03a_712e:
    ld d, d
    inc c
    nop
    jr z, jr_03a_7133

jr_03a_7133:
    nop
    and d
    jr jr_03a_7137

jr_03a_7137:
    ld [hl-], a
    ld a, [bc]
    inc b
    dec b
    nop
    ld b, d
    rrca
    dec bc
    inc d
    dec d
    nop
    ld h, d
    rrca
    dec bc
    nop
    ld [bc], a
    ld b, $0a
    dec bc
    jr nc, jr_03a_717d

    ld b, $02
    ld [$3534], sp
    inc h
    dec h
    rst $38
    ld b, $14
    rlca
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld b, $22
    ld [$3736], sp
    ld h, $27
    ld b, $14
    ld [$3534], sp
    jr c, jr_03a_71a2

    inc [hl]
    dec [hl]
    ld b, $08
    ld b, $38
    add hl, sp
    ld b, $12
    ld a, [bc]
    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld [hl], $37
    ld b, $28
    ld b, $3a

jr_03a_717d:
    dec sp
    ld b, $32
    ld c, $06
    ld b, d
    inc b
    ld b, $40
    ld [bc], a
    ld b, $52
    ld c, $06
    ld h, d
    inc b
    ld b, $60
    ld [bc], a
    ld b, $32
    ld a, [bc]
    ld b, $4c
    ld [bc], a
    ld b, $42
    ld [bc], a
    ld b, $44
    nop
    ld b, $50
    inc c
    ld b, $6c
    ld [bc], a

jr_03a_71a2:
    ld b, $62
    ld [bc], a
    ld b, $64
    nop
    ld b, $70
    inc c
    ld b, $4a
    inc b
    ld b, $42
    ld [bc], a
    ld b, $82
    nop
    ld b, $d2
    inc c
    ld b, $e0
    ld [$a206], sp
    nop
    ld b, $f2
    ld c, $06
    ld [bc], a
    nop
    ld b, $82
    nop
    ld b, $48
    ld [de], a
    ld b, $12
    ld e, $06
    ld [hl+], a
    nop
    ld b, $a2
    nop
    ld b, $68
    ld [de], a
    ld b, $32
    rra
    inc bc
    ld b, $c0
    inc b
    ld b, $50
    rra
    dec b
    ld b, $e0
    inc b
    ld b, $70
    inc c
    ld [bc], a
    inc bc
    ld b, $c0
    db $10
    inc b
    dec b
    ld b, $0e
    nop
    nop
    ld bc, $c006
    db $10
    jr z, jr_03a_7220

    ld b, $14
    ld [$1312], sp
    ld b, $e0
    db $10
    inc d
    dec d
    ld b, $2e
    nop
    db $10
    ld de, $e006
    db $10
    ld a, [hl+]
    dec hl
    ld b, $14
    ld [$0200], sp
    nop
    ld a, [bc]
    dec bc
    jr nc, jr_03a_7246

    nop
    ld [bc], a
    ld a, [bc]
    inc h
    dec h
    rst $38
    nop
    inc d
    rlca
    ld a, [de]
    dec de

jr_03a_7220:
    ld [hl-], a
    inc sp
    nop
    ld [hl+], a
    ld a, [bc]
    ld h, $27
    nop
    inc d
    ld [$0200], sp
    nop
    inc [hl]
    dec [hl]
    nop
    ld b, h
    inc b
    nop
    ld c, $0e
    nop
    ld [hl+], a
    nop
    ld [hl], $37
    nop
    ld h, h
    inc b
    nop
    ld l, $0f
    ld bc, $3534
    jr c, jr_03a_727e

    nop

jr_03a_7246:
    add h
    inc b
    nop
    ld c, h
    nop
    nop
    ld d, d
    inc c
    ld [hl], $37
    ld a, [hl-]
    dec sp
    nop
    and h
    inc b
    nop
    ld l, h
    nop
    nop
    ld [hl], d
    rrca
    ld bc, $0200
    ld [bc], a
    nop
    adc h
    rrca
    rlca
    nop
    ld [hl+], a
    ld [bc], a
    nop
    xor h
    rrca
    ld b, a
    nop
    add [hl]
    rrca
    add hl, hl
    nop
    ld b, d
    rrca
    dec hl
    inc b
    dec b
    nop
    ld [bc], a
    rrca
    dec bc
    inc d
    dec d
    nop
    ld [hl+], a
    rrca
    dec bc

jr_03a_727e:
    nop
    ld [bc], a
    nop
    ld [$0009], sp
    nop
    ld c, $ff
    nop
    inc d
    rlca
    jr jr_03a_72a5

    nop
    jr nz, jr_03a_729d

    nop
    inc d
    ld [$3130], sp
    inc [hl]
    dec [hl]
    jr c, jr_03a_72d1

    nop
    ld b, h
    nop
    jr nc, jr_03a_72ce

jr_03a_729d:
    nop
    ld c, d
    nop
    inc [hl]
    dec [hl]
    jr nc, jr_03a_72d5

    nop

jr_03a_72a5:
    inc d
    ld [$3332], sp
    ld [hl], $37
    ld a, [hl-]
    dec sp
    nop
    ld h, h
    nop
    ld [hl-], a
    inc sp
    nop
    ld l, d
    nop
    ld [hl], $37
    ld [hl-], a
    inc sp
    nop
    inc d
    ld [$4200], sp
    nop
    nop
    ld b, d
    nop
    nop
    ld c, d
    ld [bc], a
    nop
    ld c, h
    ld [bc], a
    nop
    inc d
    ld [$6200], sp
    nop

jr_03a_72ce:
    nop
    ld h, d
    nop

jr_03a_72d1:
    nop
    ld l, d
    ld [bc], a
    nop

jr_03a_72d5:
    ld l, h
    ld [bc], a
    nop
    inc [hl]
    ld a, [bc]
    nop
    ld c, h
    ld [bc], a
    nop
    add $00
    nop
    adc h
    rrca
    ld bc, $6a00
    inc b
    nop
    and $00
    nop
    xor h
    rrca
    dec b
    nop
    db $ca, $06, $00

    ld c, [hl]
    rrca
    ld bc, $6e00
    ld [bc], a
    nop
    ld l, h
    inc b
    nop
    ld [hl], b
    inc c
    nop
    ld c, d
    ld b, $30
    ld sp, $8200
    nop
    nop
    db $10
    rra
    ld bc, $2200
    inc d
    nop
    and d
    nop
    nop
    jr nc, jr_03a_7332

    rlca
    nop
    ld b, h
    nop
    nop
    add h
    ld [bc], a
    nop
    ld d, h
    rra
    inc bc
    nop
    ld h, h
    nop
    nop
    and h
    ld [bc], a
    nop
    inc d
    ld [$0302], sp
    nop
    ret nz

    ld e, $00
    inc d
    ld [$1312], sp
    nop

jr_03a_7332:
    ldh [rNR34], a
    nop
    inc d
    ld [$0200], sp
    inc b
    ld [$0409], sp
    nop
    inc c
    inc h
    dec h
    rst $38
    inc b
    inc d
    rlca
    jr jr_03a_7360

    inc b
    jr nz, jr_03a_7356

    ld h, $27
    inc b
    inc d
    ld [$3130], sp
    inc b
    ld b, b
    inc c
    inc b
    ld [de], a

jr_03a_7356:
    ld a, [bc]
    ld [hl-], a
    inc sp
    inc b
    ld h, b
    inc c
    inc b
    ld [hl-], a
    rrca
    dec c

jr_03a_7360:
    ld b, $07
    inc b
    ld d, h
    rrca
    dec bc
    ld d, $17
    inc b
    inc [hl]
    rrca
    dec bc
    jr nc, @+$33

    inc b
    ld d, h
    rrca
    dec bc
    ld [hl-], a
    inc sp
    inc b
    or h
    rrca
    ld c, e
    nop
    ld bc, $5404
    rrca
    dec bc
    db $10
    ld de, $3404
    rrca
    add hl, sp
    ld [bc], a
    inc bc
    inc b
    ret nz

    inc e
    jr z, jr_03a_73b4

    inc b
    inc d
    ld [$1312], sp
    inc b
    ldh [rNR32], a
    ld a, [hl+]
    dec hl
    inc b
    inc d
    ld [$0200], sp
    nop
    inc l
    dec l
    ld [$0009], sp
    ld [bc], a
    inc c
    rst $38
    nop
    inc d
    rlca
    ld l, $2f
    jr @+$1b

    nop
    ld [hl+], a
    inc c
    nop
    inc d
    ld [$2d2c], sp
    jr nc, jr_03a_73e5

jr_03a_73b4:
    nop
    ld b, d
    inc c
    nop
    inc d
    ld a, [bc]
    ld [hl-], a
    inc sp
    nop
    ld h, d
    inc c
    nop
    inc d
    ld [$0b0a], sp
    nop
    ld b, d
    rrca
    dec bc
    ld a, [de]
    dec de
    nop
    ld h, d
    rrca
    dec bc
    nop
    ld b, d
    ld c, $00
    ld d, d
    ld a, [bc]
    nop
    ld h, d
    ld c, $00
    or d
    rrca
    dec sp
    inc b
    dec b
    nop
    ld b, d
    rrca
    dec bc
    inc d
    dec d
    nop
    ld h, d

jr_03a_73e5:
    rrca
    dec bc
    nop
    ld b, b
    rrca
    dec l
    jr z, jr_03a_7416

    ld [bc], a
    inc bc
    nop
    jp nz, $001c

    inc d
    ld [$2b2a], sp
    ld [de], a
    inc de
    nop
    ld [c], a
    inc e
    nop
    inc d
    ld [$0200], sp
    inc c
    inc l
    dec l
    ld [$0c09], sp
    ld [bc], a
    ld a, [bc]
    inc h
    dec h
    rst $38
    inc c
    inc d
    rlca
    ld l, $2f
    jr jr_03a_742c

    inc c
    ld [hl+], a
    ld a, [bc]

jr_03a_7416:
    ld h, $27
    inc c
    inc d
    ld [$2d2c], sp
    jr nc, jr_03a_7450

    inc c
    ld b, d
    ld a, [bc]
    inc c
    ld [de], a
    inc c
    ld [hl-], a
    inc sp
    inc c
    ld h, d
    ld a, [bc]
    inc c
    ld [hl-], a

jr_03a_742c:
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    ld b, d
    inc c
    ld b, $07
    inc c
    inc d
    ld [$1b1a], sp
    inc c
    ld h, d
    inc c
    ld d, $17
    inc c
    inc d
    ld [$420c], sp
    inc c
    inc c
    ld b, d
    nop
    inc c
    inc d
    ld [$620c], sp
    inc c
    inc c
    ld h, d
    nop

jr_03a_7450:
    inc c
    or h
    rrca
    add hl, sp
    inc b
    dec b
    inc c
    ld b, d
    inc c
    nop
    ld bc, $140c
    ld [$1514], sp
    inc c
    ld h, d
    inc c
    db $10
    ld de, $340c
    rrca
    add hl, sp
    jr z, jr_03a_7494

    ld [bc], a
    inc bc
    inc c
    jp nz, Jump_000_281a

    add hl, hl
    inc c
    inc d
    ld [$2b2a], sp
    ld [de], a
    inc de
    inc c
    ld [c], a
    ld a, [de]
    ld a, [hl+]
    dec hl
    inc c
    inc d
    ld [$0200], sp
    nop
    inc l
    dec l
    ld [$0009], sp
    ld [bc], a
    inc c
    rst $38
    nop
    inc d
    rlca
    ld l, $2f
    jr @+$1b

    nop

jr_03a_7494:
    ld [hl+], a
    inc c
    nop
    inc d
    ld [$2d2c], sp
    jr nc, jr_03a_74ce

    nop
    ld b, d
    ld [$3534], sp
    jr nc, jr_03a_74d5

    nop
    inc d
    ld a, [bc]
    ld [hl-], a
    inc sp
    nop
    ld h, d
    ld [$3736], sp
    ld [hl-], a
    inc sp
    nop
    inc [hl]
    ld c, $38
    add hl, sp
    nop
    ld b, d
    inc b
    jr c, jr_03a_74f3

    inc [hl]
    dec [hl]
    nop
    ld d, h
    ld c, $3a
    dec sp
    nop
    ld h, d
    inc b
    ld a, [hl-]
    dec sp
    ld [hl], $37
    nop
    inc [hl]
    inc c
    nop
    add [hl]
    nop

jr_03a_74ce:
    nop
    sub b
    nop
    nop
    add $04
    nop

jr_03a_74d5:
    ld d, h
    inc c
    nop
    and [hl]
    nop
    nop
    or b
    nop
    nop
    and $04
    nop
    inc [hl]
    ld a, [bc]
    jr c, jr_03a_751e

    nop
    ld [bc], a
    db $10
    inc [hl]
    dec [hl]
    nop
    ld [bc], a
    ld [de], a
    nop
    sub b
    ld c, $3a
    dec sp
    nop

jr_03a_74f3:
    ld [hl+], a
    db $10
    ld [hl], $37
    nop
    ld [hl+], a
    ld [de], a
    nop
    or b
    ld c, $00
    ld b, $16
    nop
    ld [$0010], sp
    ld d, b
    ld c, $00
    ld h, $16
    nop
    jr z, @+$12

    nop
    ldh a, [rIF]
    dec c
    nop
    ld d, b
    rra
    ld bc, $2400
    jr jr_03a_7518

jr_03a_7518:
    ld [hl], b
    rrca
    ld bc, $5000
    nop

jr_03a_751e:
    nop
    call nz, RST_18
    ld d, h
    inc c
    nop
    ld [hl], b
    nop
    nop
    db $e4
    jr jr_03a_752b

jr_03a_752b:
    inc d
    ld [$0200], sp
    ld [bc], a
    inc l
    dec l
    ld [$0209], sp
    ld [bc], a
    ld a, [bc]
    inc h
    dec h
    rst $38
    ld [bc], a
    inc d
    rlca
    ld l, $2f
    jr jr_03a_755a

    ld [bc], a
    ld [hl+], a
    ld a, [bc]
    ld h, $27
    ld [bc], a
    inc d
    ld [$2d2c], sp
    jr nc, jr_03a_757e

    ld [bc], a
    ld b, d
    inc b
    jr c, jr_03a_758b

    ld [bc], a
    ld b, d
    nop
    ld [bc], a
    ld [de], a
    inc c
    ld [hl-], a
    inc sp

jr_03a_755a:
    ld [bc], a
    ld h, d
    inc b
    ld a, [hl-]
    dec sp
    ld [bc], a
    ld h, d
    nop
    ld [bc], a
    ld [hl-], a
    rrca
    ld bc, $3534
    jr c, @+$3b

    ld [bc], a
    add [hl]
    nop
    ld [bc], a
    adc h
    nop
    ld b, $07
    ld [bc], a
    ld d, h
    ld c, $36
    scf
    ld a, [hl-]
    dec sp
    ld [bc], a
    and [hl]
    nop
    ld [bc], a
    xor h

jr_03a_757e:
    nop
    ld d, $17
    ld [bc], a
    inc [hl]
    ld c, $02
    ld c, h
    ld [bc], a
    ld [bc], a
    ld c, h
    ld [bc], a
    inc [hl]

jr_03a_758b:
    dec [hl]
    ld [bc], a
    ld d, h
    ld c, $02
    ld l, h
    ld [bc], a
    ld [bc], a
    ld l, h
    ld [bc], a
    ld [hl], $37
    ld [bc], a
    ld [hl], h
    rrca
    ld bc, $c802
    rrca
    dec bc
    ld [hl], $37
    ld [bc], a
    add sp, $0f
    dec c
    ld [bc], a
    adc b
    ld b, $00
    ld bc, $9402
    rrca
    dec bc
    db $10
    ld de, $3402
    rrca
    dec b
    ld [bc], a
    ld b, $12
    ld [bc], a
    ld d, d
    rrca
    rlca
    ld [bc], a
    ld h, $12
    ld [bc], a
    ld [hl-], a
    rrca
    rlca
    ld [bc], a
    adc h
    rra
    ld hl, $0200
    ld b, $2c
    dec l
    ld [$0609], sp
    ld [bc], a
    inc c
    rst $38
    ld b, $14
    rlca
    ld l, $2f
    jr jr_03a_75f1

    ld b, $22
    inc c
    ld b, $14
    ld [$2d2c], sp
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    jr c, @+$3b

    jr nc, jr_03a_7619

    jr c, @+$3b

    inc [hl]
    dec [hl]
    jr nc, @+$33

    ld b, $4e
    nop

jr_03a_75f1:
    ld b, $14
    ld a, [bc]
    ld [hl], $37
    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld b, $6e
    nop
    ld b, $34
    inc c
    ld b, $4a
    nop
    jr c, jr_03a_7646

    ld b, $88
    ld [bc], a
    ld b, $50
    rrca
    ld bc, $6a06
    nop
    ld a, [hl-]
    dec sp

jr_03a_7619:
    ld b, $a8
    ld [bc], a
    ld b, $70
    ld c, $06
    adc h
    ld [bc], a
    ld b, $82
    ld [bc], a
    ld b, $c6
    nop
    ld b, $52
    inc c
    ld b, $ac
    ld [bc], a
    ld b, $a2
    ld [bc], a
    ld b, $e6
    nop
    ld b, $72
    rrca
    dec b
    ld b, $48
    nop
    ld b, $88
    nop
    inc [hl]
    dec [hl]
    ld b, $94
    rrca
    inc bc
    ld b, $68

jr_03a_7646:
    nop
    ld b, $a8
    nop
    ld [hl], $37
    ld b, $74
    ld c, $06
    jp z, Jump_000_0604

    ld c, d
    ld [bc], a
    ld b, $94
    ld c, $06
    ld [$0604], a
    ld l, d
    ld [bc], a
    ld b, $34
    ld a, [bc]
    ld b, $48
    ld b, $06
    inc c
    rra
    inc bc
    ld b, $68
    ld b, $06
    inc l
    rra
    ld bc, $2928
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $4c
    nop
    nop
    ld bc, $c206
    db $10
    ld [bc], a
    inc bc
    ld b, $14
    ld [$2b2a], sp
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    dec d
    ld b, $6c
    nop
    db $10
    ld de, $e206
    db $10
    ld [de], a
    inc de
    ld b, $14
    ld [$0200], sp
    ld a, [bc]
    inc l
    dec l
    ld [$0a09], sp
    ld [bc], a
    ld a, [bc]
    inc h
    dec h
    rst $38
    ld a, [bc]
    inc d
    rlca
    ld l, $2f
    jr jr_03a_76c6

    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    ld h, $27
    ld a, [bc]
    inc d
    ld [$2d2c], sp
    jr nc, jr_03a_76ea

    ld a, [bc]
    ld b, d
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    inc c
    ld [hl-], a
    inc sp
    ld a, [bc]
    ld h, d
    ld a, [bc]
    ld a, [bc]
    ld [hl-], a

jr_03a_76c6:
    rrca
    dec c
    ld b, $07
    ld a, [bc]
    ld d, h
    rrca
    dec bc
    ld d, $17
    ld a, [bc]
    inc [hl]
    rrca
    dec bc
    jr nc, jr_03a_7707

    ld a, [bc]
    ld d, h
    rrca
    dec bc
    ld [hl-], a
    inc sp
    ld a, [bc]
    or h
    rrca
    ld c, e
    nop
    ld bc, $540a
    rrca
    dec bc
    db $10
    ld de, $340a

jr_03a_76ea:
    rrca
    add hl, sp
    jr z, jr_03a_7717

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    ld a, [bc]
    ld c, [hl]
    ld [de], a
    ld a, [bc]
    jp nz, Jump_000_2810

    add hl, hl
    ld a, [bc]
    inc d
    ld [$2b2a], sp
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    dec d

jr_03a_7707:
    ld a, [bc]
    ld l, [hl]
    ld [de], a
    ld a, [bc]
    ld [c], a
    db $10
    ld a, [hl+]
    dec hl
    ld a, [bc]
    inc d
    ld [$0200], sp
    ld [bc], a
    inc l
    dec l

jr_03a_7717:
    ld [$0209], sp
    ld [bc], a
    inc c
    rst $38
    ld [bc], a
    inc d
    rlca
    ld l, $2f
    jr jr_03a_773d

    ld [bc], a
    ld [hl+], a
    inc c
    ld [bc], a
    inc d
    ld [$2d2c], sp
    jr c, jr_03a_7767

    inc [hl]
    dec [hl]
    jr c, jr_03a_776b

    ld [bc], a
    ld b, [hl]
    nop
    inc [hl]
    dec [hl]
    jr nc, jr_03a_776a

    ld [bc], a
    ld c, [hl]
    nop
    ld [bc], a

jr_03a_773d:
    inc d
    ld a, [bc]
    ld a, [hl-]
    dec sp
    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld [bc], a
    ld h, [hl]
    nop
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld [bc], a
    ld l, [hl]
    nop
    ld [bc], a
    inc [hl]
    ld a, [bc]
    jr nc, jr_03a_7785

    ld [bc], a
    ld b, d
    ld [bc], a
    ld [bc], a
    ld c, h
    inc b
    ld [bc], a
    ld d, d
    inc c
    ld [hl-], a
    inc sp
    ld [bc], a
    ld h, d
    ld [bc], a
    ld [bc], a
    ld l, h
    inc b
    ld [bc], a
    ld [hl], d

jr_03a_7767:
    inc c
    jr c, jr_03a_77a3

jr_03a_776a:
    ld [bc], a

jr_03a_776b:
    add d
    nop
    ld [bc], a
    jp nz, $0200

    adc h
    rrca
    inc bc
    ld a, [hl-]
    dec sp
    ld [bc], a
    and d
    nop
    ld [bc], a
    ld [c], a
    nop
    ld [bc], a
    xor h
    rrca
    dec b
    ld [bc], a
    ld b, d
    inc b
    ld [bc], a
    ld c, h

jr_03a_7785:
    rrca
    dec b
    ld [bc], a
    ld h, d
    inc b
    ld [bc], a
    ld l, h
    rrca
    inc bc
    inc [hl]
    dec [hl]
    ld [bc], a
    ld c, h
    nop
    ld [bc], a
    adc b
    rrca
    rlca
    ld [hl], $37
    ld [bc], a
    ld l, h
    nop
    ld [bc], a
    xor b
    rrca
    rlca
    ld [bc], a
    ld c, [hl]
    ld [bc], a

jr_03a_77a3:
    ld [bc], a
    adc d
    ld b, $02
    sub d
    ld c, $02
    ld l, [hl]
    nop
    ld [bc], a
    xor d
    ld b, $02
    ld [hl], d
    rra
    inc bc
    ld [bc], a
    db $ca, $06, $00

    ld bc, $9402
    rra
    ld bc, $ea02
    ld b, $10
    ld de, $1402
    ld [$0200], sp
    nop
    ld [$0009], sp
    nop
    inc c
    inc h
    dec h
    rst $38
    nop
    inc d
    rlca
    jr jr_03a_77ed

    nop
    jr nz, jr_03a_77e3

    ld h, $27
    nop
    inc d
    ld [$3534], sp
    jr c, jr_03a_7819

    inc [hl]
    dec [hl]
    nop

jr_03a_77e3:
    ld b, h
    nop
    jr nc, jr_03a_7818

    nop
    ld c, d
    ld [bc], a
    nop
    ld [de], a
    ld a, [bc]

jr_03a_77ed:
    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld [hl], $37
    nop

Call_03a_77f4:
    ld h, h
    nop
    ld [hl-], a
    inc sp
    nop
    ld l, d
    ld [bc], a
    nop
    ld [hl-], a
    ld a, [bc]
    jr nc, jr_03a_7831

    nop
    ld b, b
    nop
    nop
    ld b, d
    ld [bc], a
    nop
    ld c, h
    rrca
    ld bc, $3332
    nop
    ld h, b
    nop
    nop
    ld h, d
    ld [bc], a
    nop
    ld l, h
    rrca
    add hl, bc
    nop
    ld b, d

jr_03a_7818:
    nop

jr_03a_7819:
    nop
    adc h
    rrca
    add hl, bc
    nop
    ld h, d
    nop
    nop
    ld l, h
    rrca
    ld bc, $4400
    nop
    nop
    db $c4, $0f, $09
    nop
    ld h, h
    nop
    nop
    db $e4
    rrca

jr_03a_7831:
    dec bc
    nop
    db $c4, $04, $00
    ld a, [bc]
    rra
    dec b
    nop
    db $e4
    inc b
    nop
    ld [$090f], a
    nop
    ld b, [hl]
    rrca
    add hl, bc
    nop
    ld h, b
    inc b
    nop
    ld l, d
    rrca
    rlca
    nop
    ld b, [hl]
    ld [$9000], sp
    rrca
    ld bc, $6600
    ld [$7000], sp
    inc c
    nop
    ld [bc], a
    ld b, $08
    add hl, bc
    ld b, $00
    inc c
    inc h
    dec h
    rst $38
    ld b, $14
    rlca
    jr jr_03a_7881

    ld b, $20
    inc c
    ld h, $27
    ld b, $14
    ld [$3130], sp
    ld b, $40
    ld [bc], a
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    jr c, jr_03a_78b4

    ld b, $4c
    nop
    ld b, $12
    ld a, [bc]

jr_03a_7881:
    ld [hl-], a
    inc sp
    ld b, $60
    ld [bc], a
    ld [hl], $37
    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld b, $6c
    nop
    ld b, $32
    rrca
    inc bc
    ld b, $44
    ld [bc], a
    ld b, $4e
    rrca
    rlca
    ld b, $64
    ld [bc], a
    ld b, $6e
    rrca
    dec bc
    ld b, $8a
    ld [bc], a
    ld b, $92
    rrca
    rlca
    ld b, $aa
    ld [bc], a
    ld b, $b2
    rrca
    add hl, bc
    jr nc, jr_03a_78e2

    ld b, $d0
    rrca

jr_03a_78b4:
    dec bc
    ld [hl-], a
    inc sp
    ld b, $f0
    rrca
    dec c
    inc [hl]
    dec [hl]
    ld b, $12
    rra
    dec bc
    ld [hl], $37
    ld b, $b2
    rrca
    dec bc
    ld b, $50
    rra
    dec bc
    ld b, $68
    nop
    ld b, $32
    ld a, [bc]
    ld [bc], a
    inc bc
    ld b, $c0
    db $10
    inc b
    dec b
    ld b, $40
    nop
    nop
    ld bc, $c006
    db $10
    jr z, jr_03a_790b

jr_03a_78e2:
    ld b, $14
    ld [$1312], sp
    ld b, $e0
    db $10
    inc d
    dec d
    ld b, $60
    nop
    db $10
    ld de, $e006
    db $10
    ld a, [hl+]
    dec hl
    ld b, $14

Call_03a_78f8:
    ld [$0200], sp
    nop

Call_03a_78fc:
    inc l
    dec l
    ld [$0009], sp
    ld [bc], a
    ld a, [bc]
    inc h
    dec h
    rst $38
    nop
    inc d
    rlca
    ld l, $2f

jr_03a_790b:
    jr jr_03a_7926

    nop
    ld [hl+], a
    ld a, [bc]
    ld h, $27
    nop
    inc d
    ld [$2d2c], sp
    jr nc, jr_03a_794a

    nop
    ld b, d
    ld [bc], a
    jr c, @+$3b

    nop
    ld c, d
    ld [bc], a
    nop
    ld [de], a
    inc c
    ld [hl-], a
    inc sp

jr_03a_7926:
    nop
    ld h, d
    ld [bc], a
    ld a, [hl-]
    dec sp
    nop
    ld l, d
    ld [bc], a
    nop
    ld [hl-], a
    ld a, [bc]
    ld a, [bc]
    dec bc
    nop
    ld b, d
    inc b
    nop
    ld b, [hl]
    inc b
    nop
    ld [de], a
    ld a, [bc]
    ld a, [de]
    dec de
    nop
    ld h, d
    inc b
    nop
    ld h, [hl]
    inc b
    nop
    ld [hl-], a
    ld a, [bc]
    nop
    ld c, b
    ld [bc], a

jr_03a_794a:
    nop
    ld b, h
    ld [$1200], sp
    ld a, [bc]
    nop
    ld l, b
    ld [bc], a
    nop
    ld h, h
    ld [$b200], sp
    rrca
    ld bc, $c200
    ld [bc], a
    nop
    ld [$0012], sp
    jp nc, $010f

    nop
    ld [c], a
    ld [bc], a
    nop
    jr z, jr_03a_797c

    nop
    ld [hl-], a
    ld a, [bc]
    inc b
    dec b
    nop
    ld c, d
    inc b
    nop
    ld b, $14
    nop
    ld [de], a
    ld a, [bc]
    inc d
    dec d
    nop
    ld l, d

jr_03a_797c:
    inc b
    nop
    ld h, $14
    nop
    ld [hl-], a
    inc c
    nop
    inc b
    inc d
    nop
    ret nz

    inc b
    nop
    ld [de], a
    inc c
    nop
    inc h
    inc d
    nop
    ldh [rDIV], a
    nop
    ld [hl-], a
    rrca
    dec b
    nop
    ld b, d
    inc b
    nop
    ld d, d
    rrca
    dec b
    nop
    ld h, d
    inc b
    nop
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    ld b, $2c
    dec l
    ld [$0609], sp
    ld [bc], a
    ld a, [bc]
    inc h
    dec h
    rst $38
    ld b, $14
    rlca
    ld l, $2f
    jr jr_03a_79d0

    ld b, $22
    ld a, [bc]
    ld h, $27
    ld b, $14
    ld [$2d2c], sp
    jr nc, jr_03a_79f4

    ld b, $42
    ld a, [bc]
    ld b, $12
    inc c
    ld [hl-], a
    inc sp
    ld b, $62
    ld a, [bc]
    ld b, $32

jr_03a_79d0:
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld b, $42
    rrca
    dec bc
    ld a, [de]
    dec de
    ld b, $62
    rrca
    dec bc
    ld b, $42
    inc c
    ld b, $50
    inc c
    ld b, $62
    inc c
    ld b, $b0
    rrca
    dec a
    inc b
    dec b
    ld b, $42
    rrca
    dec bc
    inc d
    dec d
    ld b, $62

jr_03a_79f4:
    rrca
    dec bc
    ld b, $40
    rrca
    dec l
    jr z, @+$2b

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld b, $40
    ld [de], a
    nop
    ld bc, $c206
    db $10
    jr z, jr_03a_7a33

    ld b, $14
    ld [$2b2a], sp
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld b, $60
    ld [de], a
    db $10
    ld de, $e206
    db $10
    ld a, [hl+]
    dec hl
    ld b, $14
    ld [$0200], sp
    nop
    ld [$0009], sp
    nop
    inc c
    inc h
    dec h
    rst $38
    nop
    inc d
    rlca
    jr jr_03a_7a49

    nop
    jr nz, jr_03a_7a3f

jr_03a_7a33:
    ld h, $27
    nop
    inc d
    ld [$3130], sp
    jr c, jr_03a_7a75

    inc [hl]
    dec [hl]
    nop

jr_03a_7a3f:
    ld b, d
    nop
    jr nc, jr_03a_7a74

    nop
    ld c, d
    ld [bc], a
    nop
    ld [de], a
    ld a, [bc]

jr_03a_7a49:
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    ld [hl], $37
    nop
    ld h, d
    nop
    ld [hl-], a
    inc sp
    nop
    ld l, d
    ld [bc], a
    nop
    ld [hl-], a
    inc c
    nop
    ld b, b
    nop
    nop
    add h
    ld b, $00
    ld d, b
    ld c, $00
    ld h, b
    nop
    nop
    and h
    ld b, $00
    ld [hl], b
    rrca
    ld bc, $4400
    inc b
    nop
    ld b, d
    ld [bc], a
    nop

jr_03a_7a74:
    sub d

jr_03a_7a75:
    ld c, $00
    ld h, h
    inc b
    nop
    ld h, d
    ld [bc], a
    nop
    ld [hl], d
    ld c, $00
    db $c2, $02, $00

    add d
    ld [bc], a
    nop
    sub b
    rrca
    ld bc, $e200
    ld [bc], a
    nop
    and d
    ld [bc], a
    nop
    ld [hl], b
    rrca
    ld bc, $c000
    ld b, $00
    ld c, $1f
    dec b
    nop
    ld [c], a
    inc b
    nop
    ld l, $1f
    rlca
    nop
    db $c2, $02, $00

    add h
    nop
    nop
    ld d, d
    rra
    inc bc
    nop
    ld [c], a
    ld [bc], a
    nop
    and h
    nop
    nop
    ld [hl-], a
    ld a, [bc]
    inc b
    dec b
    nop
    add b
    ld d, $00
    jp nz, Jump_000_3400

    dec [hl]
    nop
    ld [de], a
    ld a, [bc]
    inc d
    dec d
    nop
    and b
    ld d, $00
    ld [c], a
    nop
    ld [hl], $37
    nop
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    nop
    inc l
    dec l
    jr nc, jr_03a_7b06

    nop
    ld [bc], a
    inc b
    inc [hl]
    dec [hl]
    nop
    ld [$ff02], sp
    nop
    inc d
    rlca
    ld l, $2f
    ld [hl-], a
    inc sp
    nop
    ld [hl+], a
    inc b
    ld [hl], $37
    nop
    jr z, jr_03a_7aef

    nop
    inc d

jr_03a_7aef:
    ld [$0000], sp
    ld [$0800], sp
    ld [bc], a
    nop
    ld [de], a
    rrca
    rlca
    nop
    jr z, jr_03a_7aff

    nop
    ld [hl-], a

jr_03a_7aff:
    inc c
    nop
    ld d, b
    nop
    nop
    ld [bc], a
    ld a, [bc]

jr_03a_7b06:
    nop
    inc d
    ld a, [bc]
    nop
    ld [hl], b
    nop
    nop
    ld [hl+], a
    ld a, [bc]
    nop
    inc [hl]
    ld a, [bc]
    jr c, jr_03a_7b4d

    nop
    jp nz, RST_00

    add h
    ld [$1400], sp
    ld a, [bc]
    ld a, [hl-]
    dec sp
    nop
    ld [c], a
    nop
    nop
    and h
    ld [$3400], sp
    inc c
    nop
    add $00
    nop
    call nz, RST_08
    inc d
    inc c
    nop
    and $00
    nop
    db $e4
    ld [$f400], sp
    ld c, $00
    ld a, [bc]
    nop
    nop
    jp nz, RST_00

    ld c, $1f
    dec b
    nop
    ld a, [hl+]
    nop
    nop
    ld [c], a
    nop
    nop
    ld l, $1f

jr_03a_7b4d:
    rlca
    nop
    ld b, [hl]
    inc d
    nop
    sub b
    ld c, $00
    ld h, d
    ld [de], a
    nop
    ld h, [hl]
    inc d
    nop
    or b
    inc c
    jr z, jr_03a_7b88

    ld [bc], a
    inc bc
    nop
    jp nz, $001c

    inc d
    ld [$2b2a], sp
    ld [de], a
    inc de
    nop
    ld [c], a
    inc e
    nop
    inc d
    ld [$0200], sp
    nop
    inc l
    dec l
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    jr nc, jr_03a_7baf

    jr nc, @+$33

    ld b, $07
    nop
    ld [bc], a
    nop
    ld [$ff09], sp

jr_03a_7b88:
    nop
    inc d
    rlca
    ld l, $2f
    jr jr_03a_7ba8

    jr @+$1b

    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld d, $17
    nop
    ld [hl+], a
    nop
    jr jr_03a_7bb7

    nop
    inc d
    ld [$2d2c], sp
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    nop

jr_03a_7ba8:
    ld [$0000], sp
    ld b, [hl]
    ld b, $00
    inc d

jr_03a_7baf:
    ld a, [bc]
    ld [hl], $37
    ld [hl], $37
    nop
    jr z, jr_03a_7bb7

jr_03a_7bb7:
    nop
    ld h, [hl]
    ld b, $00
    inc [hl]
    inc c
    jr c, jr_03a_7bf8

    nop
    ld b, [hl]
    inc b
    nop
    ld b, h
    ld [bc], a
    nop
    ld d, h
    inc c
    ld a, [hl-]
    dec sp
    nop
    ld h, [hl]
    inc b
    nop
    ld h, h
    ld [bc], a
    nop
    inc [hl]
    ld a, [bc]
    nop
    adc h
    nop
    jr c, @+$3b

    nop
    add h
    nop
    nop
    add d
    inc b
    nop
    inc d
    ld a, [bc]
    nop
    xor h
    nop
    ld a, [hl-]
    dec sp
    nop
    and h
    nop
    nop
    and d
    inc b
    nop
    or h
    inc c
    nop
    adc h
    nop
    nop
    ld b, d
    nop
    nop
    add h
    inc b

jr_03a_7bf8:
    nop
    db $d4, $0c, $00
    xor h
    nop
    nop
    ld h, d
    nop
    nop
    and h
    inc b
    nop
    inc [hl]
    inc c
    nop
    add [hl]
    ld b, $00
    adc $0f
    ld bc, $6400
    ld b, $00
    db $ec
    rrca
    inc bc
    nop
    ld b, d
    ld [$8200], sp
    ld [bc], a
    nop
    ld d, h
    rrca
    rlca
    nop
    and d
    ld [bc], a
    nop
    inc d
    ld [$2928], sp
    ld [bc], a
    inc bc
    nop
    jp nz, $001c

    inc d
    ld [$2b2a], sp
    ld [de], a
    inc de
    nop
    ld [c], a
    inc e
    nop
    inc d
    ld [$0200], sp
    inc b
    inc l
    dec l
    jr nc, jr_03a_7c71

    inc b
    ld [bc], a
    ld [$3534], sp
    inc h
    dec h
    rst $38
    inc b
    inc d
    rlca
    ld l, $2f
    ld [hl-], a
    inc sp
    inc b
    ld [hl+], a
    ld [$3736], sp
    ld h, $27
    inc b
    inc d
    ld [$2d2c], sp
    jr c, jr_03a_7c96

    inc b
    inc b
    rrca
    dec bc
    ld a, [hl-]
    dec sp
    inc b
    inc h
    rrca
    dec bc
    inc [hl]
    dec [hl]
    inc b
    ld b, d
    ld [$3534], sp
    ld b, $07
    inc b

jr_03a_7c71:
    inc d
    ld a, [bc]
    ld [hl], $37
    inc b
    ld h, d
    ld [$3736], sp
    ld d, $17
    inc b
    ld [hl], h
    inc c
    inc b
    add d
    nop
    inc b
    add $02
    inc b
    ld c, $00
    inc [hl]
    dec [hl]
    inc b
    sub h
    inc c
    inc b
    and d
    nop
    inc b
    and $02
    inc b
    ld l, $00

jr_03a_7c96:
    ld [hl], $37
    inc b
    or h
    rrca
    ld bc, $0204
    ld [$d404], sp
    rrca
    ld bc, $2204
    ld [$3404], sp
    inc c
    inc b
    call nz, Call_000_3404
    dec [hl]
    inc b
    ld c, $00
    nop
    ld bc, $5404
    inc c
    inc b
    db $e4
    inc b
    ld [hl], $37
    inc b
    ld l, $00
    db $10
    ld de, $3404
    inc c
    inc b
    ld c, b
    ld [de], a
    inc b
    adc b
    inc d
    inc b
    ld d, d
    ld c, $04
    ld l, b
    ld [de], a
    inc b
    xor b
    inc d
    inc b
    ld [hl-], a
    ld a, [bc]
    jr z, jr_03a_7d00

    ld [bc], a
    inc bc
    inc b
    jp nz, Jump_000_281a

    add hl, hl
    inc b
    inc d
    ld [$2b2a], sp
    ld [de], a
    inc de
    inc b
    ld [c], a
    ld a, [de]
    ld a, [hl+]
    dec hl
    inc b
    inc d
    ld [$0200], sp
    inc b
    inc l
    dec l
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    jr nc, jr_03a_7d2b

    jr nc, jr_03a_7d2d

Call_03a_7cfc:
    ld b, $07
    inc b
    ld [bc], a

jr_03a_7d00:
    nop
    inc h
    dec h
    rst $38
    inc b
    inc d
    rlca
    ld l, $2f
    jr jr_03a_7d24

    jr @+$1b

    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld d, $17
    inc b
    ld [hl+], a
    nop
    ld h, $27
    inc b
    inc d
    ld [$2d2c], sp
    inc b
    ld [$0400], sp
    ld b, d

jr_03a_7d24:
    ld [$1204], sp
    inc c
    inc b
    jr z, jr_03a_7d2b

jr_03a_7d2b:
    inc b
    ld h, d

jr_03a_7d2d:
    ld [$3204], sp
    rrca
    dec c
    ld b, $07
    inc b
    ld d, h
    rrca
    dec bc
    ld d, $17
    inc b
    inc [hl]
    rrca
    dec bc
    jr nc, jr_03a_7d71

    inc b
    ld d, h
    rrca
    dec bc
    ld [hl-], a
    inc sp
    inc b
    or h
    rrca
    ld c, e
    nop
    ld bc, $5404
    rrca
    dec bc
    db $10
    ld de, $3404
    rrca
    add hl, sp
    jr z, jr_03a_7d81

    ld [bc], a
    inc bc
    inc b
    jp nz, Jump_000_281a

    add hl, hl
    inc b
    inc d
    ld [$2b2a], sp
    ld [de], a
    inc de
    inc b
    ld [c], a
    ld a, [de]
    ld a, [hl+]
    dec hl
    inc b
    inc d
    ld [$0200], sp
    nop

jr_03a_7d71:
    inc l
    dec l
    jr nc, jr_03a_7da6

    nop
    ld [bc], a
    ld a, [bc]
    ld b, $07
    rst $38
    nop
    inc d
    rlca
    ld l, $2f
    ld [hl-], a

jr_03a_7d81:
    inc sp
    nop
    ld [hl+], a
    ld a, [bc]
    ld d, $17
    nop
    inc d
    ld [$2d2c], sp
    inc [hl]
    dec [hl]
    nop
    ld [bc], a
    nop
    inc [hl]
    dec [hl]
    nop
    ld b, d
    ld [bc], a
    jr c, jr_03a_7dd1

    jr nc, jr_03a_7dcb

    nop
    inc d
    ld a, [bc]
    ld [hl], $37
    nop
    ld [hl+], a
    nop
    ld [hl], $37
    nop
    ld h, d

jr_03a_7da6:
    ld [bc], a
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    nop
    inc [hl]
    ld a, [bc]
    nop
    ld b, [hl]
    nop
    nop
    ld b, h
    ld [bc], a
    nop
    ld [bc], a
    inc b
    nop
    inc d
    inc c
    nop
    ld h, d
    inc b
    nop
    ld [hl+], a
    inc b
    nop
    ld [hl], h
    inc c
    nop
    ld [bc], a
    inc b
    nop
    ld d, b
    nop
    nop
    ld d, b

jr_03a_7dcb:
    ld c, $00
    ld [hl+], a
    ld b, $00
    ld [hl], b

jr_03a_7dd1:
    nop
    nop
    ld [hl], b
    rrca
    inc bc
    jr c, jr_03a_7e11

    nop
    db $cc, $04, $00
    sub b
    rrca
    inc bc
    ld a, [hl-]
    dec sp
    nop
    db $ec
    inc b
    nop
    or b
    rrca
    dec b
    nop
    inc c
    inc d
    nop
    ld b, d
    nop
    nop
    inc d
    rrca
    ld bc, $2c00
    inc d
    nop
    ld h, d
    nop
    nop
    or h
    rrca
    inc bc
    nop
    ld b, d
    nop
    nop
    ld b, d
    ld [bc], a
    nop
    inc d
    rrca
    inc bc
    nop
    ld h, d
    nop
    nop
    ld h, d
    ld [bc], a
    nop
    inc d
    ld [$2928], sp

jr_03a_7e11:
    ld [bc], a
    inc bc
    nop
    jp nz, $001c

    inc d
    ld [$2b2a], sp
    ld [de], a
    inc de
    nop
    ld [c], a
    inc e
    nop
    inc d
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
