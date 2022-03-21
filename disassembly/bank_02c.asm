; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02c", ROMX[$4000], BANK[$2c]

    inc l
    ld h, e
    ld b, b
    ld h, e
    ld d, b
    ld h, e
    ld h, b
    inc hl
    ld h, c
    ld l, a
    ld h, c
    dec h
    ld h, d
    push hl
    ld h, d
    sbc d
    ld h, e
    ld h, [hl]
    ld h, h
    ld b, b
    ld h, l
    sub [hl]
    ld h, l
    ld [hl], b
    ld h, [hl]
    ld c, c
    ld h, a
    dec d
    ld l, b
    xor $68
    ret


    ld l, c
    ld hl, $d26a
    ld l, d
    ld d, l
    ld l, e
    ld b, d
    ld l, h
    add hl, de
    ld l, l
    and a
    ld l, l
    ld e, $6e
    and b
    ld l, [hl]
    inc c
    ld l, a
    ld a, [hl]
    ld l, a
    call z, Call_000_346f
    ld [hl], b
    sbc d
    ld [hl], b
    rrca
    ld [hl], c
    adc e
    ld [hl], c
    ret


    ld [hl], c

Jump_02c_4041:
    ld e, $72
    ld l, c
    ld [hl], d
    cp e
    ld [hl], d
    rrca
    ld [hl], e
    or d
    ld [hl], e
    ld h, [hl]
    ld [hl], h
    db $10
    ld [hl], l
    call c, $8c75
    db $76
    pop de
    db $76
    ld [hl], d
    ld [hl], a
    rla
    ld a, b
    sbc d
    ld a, b
    jp z, $b578

    ld a, c
    ld h, l
    ld a, d
    ld hl, sp+$7a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$9f], a
    db $fc
    db $e3
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    sbc a
    nop
    db $e3
    nop
    nop
    nop
    jp $833c


    ld a, h
    inc bc
    db $fc
    rlca
    ld hl, sp+$3f
    ldh [rWX], a
    db $fc
    rst $30
    ld a, [$fb07]
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $00fe
    ld e, $00
    add h
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld a, a
    add b
    rra
    ldh [$e8], a
    rla
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, a
    ccf
    cp a
    rra
    rst $38
    ld [$0c1f], sp
    di
    rrca
    ldh a, [$ef]
    db $10
    adc e
    ld [hl], h
    dec bc
    db $f4
    rst $08
    jr nc, jr_02c_40db

    db $f4
    inc sp
    call z, $f300
    inc bc
    di
    db $e3
    di
    add l
    pop af

jr_02c_40db:
    dec b
    pop af
    pop bc
    pop af
    inc b
    ldh a, [$0c]
    ret nz

    nop
    rst $38
    nop
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
    cp a
    ld b, b
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    ld de, $14ee
    db $eb
    sbc a
    ld h, b
    di
    inc c
    db $f4
    dec bc
    ld hl, sp+$07
    rst $28
    db $10
    add sp, $17
    rrca
    ldh [rIF], a
    ldh [$8f], a
    ldh [$ef], a
    ldh [$e7], a
    ldh [$e8], a
    ldh [$c7], a
    ret nc

    rst $00
    ret nc

    rlca
    ei
    rlca
    ei

jr_02c_4127:
    rrca
    di
    rra
    db $e3
    rlca
    ei
    rlca
    ei
    inc hl
    db $dd
    pop af
    ld c, $fb
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    db $fd
    ld bc, $00fe
    rst $38
    ldh [$f8], a
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    ld hl, sp+$3f
    ldh [$e0], a
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $3f
    jr c, jr_02c_4127

    inc a
    inc bc
    db $fc
    rlca
    ld a, [$fb07]
    rlca
    ei
    rlca
    ei
    rrca
    di
    ccf
    db $c3, $3c, $00


    db $fc
    nop
    ld a, [$fb02]
    inc bc
    ei
    inc bc
    ei
    inc bc
    di
    inc bc
    jp $cf03


    jr nc, jr_02c_41e9

    sbc h
    ccf
    ret nz

    rst $20
    jr @+$01

    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    cp a
    ld b, e
    rst $18
    ccf
    rst $38
    rlca
    rra
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp z, $cc35

    inc sp
    adc e
    ld [hl], h
    inc sp
    call z, Call_000_3dc2
    jp nz, $c2fd

    db $fd
    add d
    db $fd
    rst $00
    ldh a, [$c3]
    ldh a, [$85]
    ldh a, [$0d]
    ret nz

    dec a
    nop
    db $fd
    ret nz

    db $fd
    ret nz

    db $fd
    add b
    ld bc, $00fe
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$1f
    ldh [rSVBK], a
    adc a
    rst $38
    ld hl, sp+$1f
    ldh [$fe], a
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
    nop
    nop
    rlca
    nop
    ccf
    ret nz

    ret nz

    ccf
    cp $01

jr_02c_41e9:
    cp $01
    cp $01
    ld hl, sp+$07
    ldh [$1f], a
    ld hl, sp+$07
    nop
    nop
    ld b, b
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    nop
    nop
    ldh [rP1], a
    ld hl, sp+$00
    rst $08
    inc sp
    rrca
    di
    dec bc
    push af
    add hl, bc
    or $09
    or $08
    rst $30
    inc b
    ei
    rlca

jr_02c_4212:
    ld hl, sp+$03
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0006
    ld b, $00
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ret nz

    ldh [$1f], a
    cp $01
    cp $01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    nop
    nop
    ld h, b
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld [bc], a
    db $fd
    call nz, $88fb
    rst $30
    jr c, jr_02c_4212

    ret z

    scf
    inc c
    di
    dec bc
    db $f4
    ld [$fdf7], sp
    nop
    ei
    ret nz

    rst $30
    add b
    rst $00
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    nop
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fc
    inc bc
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    ccf
    nop
    ld b, c
    ld b, b
    cp h
    ld a, $c0
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    db $fc
    inc bc
    ld bc, $fefe
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    nop
    inc bc
    nop
    cp $07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$7f], a
    add b
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    inc bc
    nop
    nop
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    rra
    ld b, b
    ccf
    add b
    rra
    nop
    cp $01
    pop af
    ld c, $fc
    inc bc
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    nop
    nop
    ldh a, [rP1]
    db $fc
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    rrca
    ldh a, [$9f]
    ld h, b
    ld l, a

jr_02c_42e8:
    sub b
    daa
    ret c

    rla
    add sp, $07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
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
    sbc a
    nop
    xor a
    jr nz, jr_02c_42e8

    db $10
    db $e4
    inc b
    ld sp, hl
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    ret nz

    ccf
    rlca
    ld hl, sp-$08
    rlca
    di
    inc c
    rst $38
    nop
    rst $38
    nop

jr_02c_4331:
    rst $38
    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    rlca
    ldh a, [$fc]
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rla
    add sp, -$11
    db $10
    rra
    ldh [$7f], a
    add b
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    nop

jr_02c_4353:
    inc bc
    ld [$1007], sp

jr_02c_4357:
    rrca
    ldh [$1f], a
    add b
    ld a, a
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    add a
    ld a, b
    add a
    ld a, b
    rst $00
    jr c, jr_02c_4331

    jr c, jr_02c_4353

    jr @-$17

    jr jr_02c_4357

    jr jr_02c_4381

    ldh a, [$78]
    ld a, e
    ld a, b
    ld a, e
    cp b
    cp e
    cp b
    cp e
    ret c

    db $db
    ret c

    db $db
    jr jr_02c_439c

jr_02c_4381:
    ldh a, [$f7]
    ld [hl], b
    adc a
    cp b
    ld [hl], a
    cp h
    ld a, e
    cp h
    ld a, e
    cp [hl]
    ld a, l
    cp [hl]
    ld a, l
    sbc a
    ld a, [hl]
    sbc a
    ld a, [hl]
    adc a
    nop
    ld [hl], a
    ld [hl], b
    ld a, e
    ld a, b
    ld a, e
    ld a, b
    ld a, l

jr_02c_439c:
    ld a, h
    ld a, l
    ld a, h
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    ccf
    rst $18
    cpl
    rst $38
    rlca
    di
    rrca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rst $08
    rst $28
    rst $30
    rst $30
    di
    ei
    ld a, e
    ld a, e
    dec sp
    dec sp
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add b
    ld a, a
    pop bc
    cp [hl]
    ldh a, [$cf]
    db $fc
    di
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38

jr_02c_43f0:
    rst $38
    rst $38
    rst $38
    ld a, a
    nop
    cp a
    add b
    rst $08
    ret nz

    di
    ldh a, [$fc]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    db $fc
    add b
    ld a, a
    jr jr_02c_43f0

    inc e
    db $e3
    add b
    ld a, a
    cp $81
    rst $38
    cp $ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    add c
    add b
    cp $fe
    rst $38
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    rra
    ldh [$f8], a
    rlca
    nop
    rst $38
    nop
    rst $38
    rst $38
    rra
    ldh a, [$ef]
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
    nop
    nop
    ldh [$e0], a
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    inc b
    ei
    inc bc
    db $fc
    ld [bc], a
    db $fd
    inc c
    di
    cp $00
    cp $00
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ld a, [$f900]
    ld bc, $03fb
    ld hl, $e3de
    inc e
    ld c, $f1
    or h
    ld c, e
    ret z

    scf
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    cp $00
    db $fc
    nop
    pop af
    ld bc, $0bcb
    scf
    scf
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f9
    adc a
    adc [hl]
    inc bc
    inc bc
    ld bc, $8001
    add b
    ldh [$e0], a
    ld hl, sp-$08
    cp $fe
    ld sp, hl
    ld hl, sp-$72
    cp $03
    rst $38
    ld bc, $80ff
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    ld c, d
    or l
    add h
    ld a, e
    ldh [$9f], a
    cp $e1
    ld a, a
    ld [hl], b
    inc a
    dec sp
    ld e, $1d
    rrca
    ld c, $ff
    nop
    ld a, a
    nop
    sbc a
    add b
    rst $28
    ldh [rPCM34], a
    ldh a, [$3b]
    ld hl, sp+$1d
    db $fc
    ld c, $fe
    ld [$90f7], sp
    ld l, a
    jr nz, @-$1f

    jr nz, @-$1f

    ld b, b
    cp a
    ld b, b
    cp a
    add b
    ld a, a
    add b
    ld a, a
    rst $30
    rlca
    rst $28
    rrca
    rst $18
    rra
    rst $18
    rra
    cp a
    ccf
    cp a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    adc a
    adc a
    db $fd
    db $fd
    ld hl, sp-$08
    ldh a, [$f0]
    ld hl, sp-$08
    db $fd
    db $fd
    rst $38
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    db $fd
    rst $38
    rst $38
    rst $38
    add b
    ld a, a
    ret nc

    xor a
    ldh [$df], a
    ldh [$df], a
    db $76
    ld l, c
    di
    db $ec
    rst $38
    ldh a, [$f8]
    rst $30
    ld e, a
    nop
    sbc a
    add b
    rst $08
    ret nz

    rst $08
    ret nz

    ld l, a
    ldh [$e7], a
    ldh [$f7], a
    ldh a, [$f0]
    ldh a, [rP1]
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
    ld bc, $fffe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rrca
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ld a, [hl]
    add c
    db $fc
    inc bc
    ldh a, [rIF]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh [$ef], a
    ldh [$ef], a
    ret nz

    rst $18
    add b
    cp [hl]
    nop
    ld a, h
    nop
    ldh a, [$3f]
    rst $38
    ld d, h
    srl b
    and a
    ld e, l
    jp nz, $e47b

    ld e, [hl]
    pop bc
    ld a, a
    ldh [$1f], a
    ldh [$7f], a
    nop
    ccf
    nop
    ld e, a
    nop
    ccf
    nop
    rra
    nop
    ld sp, $0000
    nop
    nop
    nop
    ld a, a
    and b
    ld a, a
    ret nz

    ld l, a
    ret nz

    ld a, c
    add [hl]
    ld d, c
    adc [hl]
    rst $30
    jr z, @+$01

    ld a, a
    ld hl, sp+$07
    ld h, b
    nop
    ld bc, $1f00
    nop
    rra
    nop
    ccf
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc h
    jp $8001


    ld a, a
    rst $38
    ld bc, $7ffe
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
    nop
    nop
    nop
    nop
    ld a, c
    add [hl]
    inc hl
    call c, $f807
    rra
    ldh [$2f], a
    ret nz

    ld a, a
    add b
    sbc a
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $00
    ld sp, hl
    ld bc, $07e7
    rst $18
    rra
    sbc a
    rra
    ld l, a
    ld l, a
    cp a
    cp a
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
    ldh [rP1], a
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, b
    ld a, b
    ccf
    ccf
    cp a
    cp a
    cp a
    cp a
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub b
    ld l, a
    ldh a, [rIF]
    db $fd
    ld [bc], a
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
    ld h, b
    rrca
    add b
    adc a
    ldh a, [$f2]
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    ld a, [hl]
    adc a
    ld a, [hl]
    rrca
    db $fc
    ld c, $fd
    adc [hl]
    ld a, l
    adc $3d
    cp $0d
    rst $38
    inc b
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    db $fc
    nop
    db $fc
    nop
    ld a, h
    add b
    cp h
    ret nz

    call z, $f4f0
    ld a, a
    cp $3f
    db $fc
    dec de
    db $fc
    ld a, $fd
    inc e
    ei
    ld e, h
    cp e
    ld a, b
    rst $20
    ld [$7ff7], sp
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, h
    ld bc, $0378
    ld a, b
    inc bc
    db $10
    rlca
    nop
    rlca
    cp a
    ld a, [hl]
    ccf
    xor $3f
    sbc $3f
    sbc $5f
    cp [hl]
    ld e, a
    cp [hl]
    ld c, a
    cp [hl]
    adc a
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    xor $00
    sbc $00
    sbc $00
    cp [hl]
    nop
    cp [hl]
    nop
    cp [hl]
    nop
    ld a, [hl]
    rst $38
    db $fc
    cpl
    jp nc, $e61f

    or a
    ld c, [hl]

Jump_02c_470b:
    rst $18
    ld l, $6f
    sbc [hl]
    rst $18
    cp [hl]
    ld e, a
    cp [hl]
    db $fc
    nop
    ld hl, sp+$02
    ldh a, [rTMA]
    ldh [$0e], a
    ldh [$0e], a
    ret nz

    ld e, $00
    ld a, $00
    ld a, $fc
    ldh [rIE], a
    db $fc
    ld a, a
    cp $3f
    cp $ce
    inc a
    ld [hl-], a
    call z, $f00e
    ld [bc], a
    db $fc
    inc bc
    db $e3
    nop
    db $fc
    nop
    cp $00
    cp $01
    dec a
    ld bc, $01cd
    pop af
    ld bc, $3ffd
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    or b
    or b
    ret nz

    rst $08
    add b
    cp a
    nop
    ld a, a
    nop
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
    ret nz

    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    cpl
    rlca
    rst $00
    ld bc, $00f9
    cp $00
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $eb
    db $eb
    ret nz

    ret nz

    add b
    cp a

Jump_02c_47b9:
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $fe
    ld bc, $01fe
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    jr c, @+$01

    inc e
    ld hl, sp-$08
    db $fc
    db $fc
    ld a, $3e
    rra
    rst $18
    rrca
    rst $28
    rlca
    rst $30
    inc bc
    dec sp
    ld bc, $e01d
    rra
    rst $30
    ld [$e01f], sp
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
    ld hl, sp+$00
    db $e3
    inc bc
    dec de
    dec de
    ld a, a
    ld a, a
    cp a
    cp a
    cp a
    cp a
    rst $18
    rst $18
    ld a, a
    add b
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
    add b
    nop
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rrca
    nop
    ldh [$e0], a
    ldh a, [$f3]
    db $fc
    db $fc
    cp $fe
    cp $fe
    rst $38
    rst $38
    inc bc
    db $fd
    di
    ld c, $fe
    dec b
    adc h
    ld a, e
    sbc b
    ld [hl], a
    jr nc, @-$0f

    ldh [$5f], a
    ret nz

    ccf
    cp $00
    db $fd
    nop
    ei
    nop
    ld [hl], a
    nop
    ld l, a
    nop
    rst $18
    nop
    ccf
    nop
    ccf
    nop
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    add d
    ld a, h
    call nz, $6438
    sbc b
    ld e, b
    add b
    ret nz

    add b
    ret nz

    nop
    ld bc, $01fd
    db $fd
    ld bc, $037d
    dec sp
    add e
    dec de
    and a
    daa
    ccf
    ccf
    ccf
    ccf
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $fefe
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    cp a
    nop
    rst $38
    nop
    cp $ff
    inc c
    rst $38
    ld c, $ff
    sbc [hl]
    ld sp, hl
    cp $ff
    cp $f9
    cp $ff
    cp $ff
    ld a, [hl]
    ld bc, $000d
    ld c, $00
    sbc [hl]
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    ld a, [hl]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh [rP1], a
    ret nz

    nop
    inc b
    nop
    add l
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    ld a, d
    ld a, d
    cp $00
    ld hl, sp+$00
    ret nz

    nop
    inc b
    nop
    dec b
    nop
    add a
    nop
    cp a
    rlca
    ret nz

    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    ld a, [$79fa]
    ld a, b
    ld b, b
    ld b, b
    nop
    nop
    ldh [$5f], a
    ldh a, [$6f]
    pop af
    ld c, $87
    ld a, b
    nop
    rst $38
    ldh [$1f], a
    rst $38
    rst $38
    nop
    rst $38
    rra
    ld b, b
    rrca
    ld h, b
    rrca
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld bc, $007f
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    db $fc
    db $fd
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    xor $ff
    ld sp, hl
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    sbc a
    ldh [$e3], a
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fd
    cp $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    cp $01
    db $fd
    ld bc, $00fd
    cp $00
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    rlca
    nop
    rst $38
    rlca
    ld hl, sp-$01
    rlca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    nop
    ld hl, sp+$07
    rlca
    rst $38
    rst $38
    ld hl, sp-$08
    nop
    rlca
    nop
    ld hl, sp+$07
    rlca
    rst $38
    rst $38
    rst $38

jr_02c_4a44:
    inc a
    rst $38
    inc a
    rst $38
    ld a, b
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $013d
    dec a
    inc bc
    ld a, e
    rlca
    rst $20
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    ld h, a
    ld l, b
    ld h, a
    cp b
    scf
    ld a, b
    or a
    jr jr_02c_4a44

    rst $38
    db $10
    rst $38
    db $fc
    rlca
    ld hl, sp-$61
    nop
    sbc a
    nop
    rst $08
    nop
    rst $08
    nop
    rst $28
    nop
    rst $28
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld hl, sp+$01
    cp $00
    cp $02
    db $fd
    rlca
    ld hl, sp-$01
    nop
    rst $38
    rra
    ldh [$1f], a
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
    rra
    nop
    nop
    ret nz

    nop
    add b
    ccf
    rst $38
    ld d, h
    srl b
    and a
    ld e, l
    jp nz, $e47b

    ld e, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    add b
    ld a, a
    nop
    ccf
    nop
    ld e, a
    nop
    ccf
    nop
    rra
    nop
    jr nc, jr_02c_4abf

jr_02c_4abf:
    nop
    rrca
    nop
    ccf
    ld a, a
    cp a
    ld e, a
    ld hl, sp+$7b
    db $fc
    ld a, a
    ldh [rIE], a
    nop

jr_02c_4acd:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    jr nz, jr_02c_4adb

jr_02c_4adb:
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $fd
    and $07
    or $07
    ld a, [$fe03]
    ld bc, $00ff
    rst $38
    nop
    rst $38

jr_02c_4af2:
    nop
    cp $00
    ld hl, sp+$00
    ld hl, sp+$00
    inc b
    nop
    nop
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc h
    db $c3, $c1, $00


    rst $38
    rrca
    db $fc
    inc bc
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
    ccf
    nop
    nop
    ret nz

    nop
    ldh a, [rIE]
    ldh a, [rNR34]
    ld bc, $033c
    jr c, jr_02c_4af2

    ld a, b
    add a
    ld [hl], b
    adc a
    ldh a, [rIF]
    ldh [$1f], a
    ldh a, [rTMA]
    pop hl
    inc c
    jp $c718


    db $10
    add a
    jr nc, jr_02c_4acd

    jr nz, @+$11

    ld h, b
    rra
    ld b, b
    rst $38
    ld a, [hl]
    inc de
    call z, $e807
    rrca
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    rst $38
    nop
    ld a, [hl]
    nop
    db $fc
    ld bc, $03f8
    ldh a, [rTAC]
    ldh [rIF], a
    ldh [rIF], a
    ret nz

    rra
    add b
    ccf
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
    nop
    ld a, a
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

jr_02c_4b8d:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    adc a
    ld [hl], b
    rst $00
    jr c, jr_02c_4b8d

    inc e
    pop af
    ld c, $f9
    ld b, $fc
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    ld a, a
    nop
    ccf
    add b
    rra
    ret nz

    rrca
    ldh [rIF], a
    ldh [rTAC], a
    ldh a, [rTAC]
    ldh a, [rSB]
    cp $07
    ld hl, sp+$7f
    add b
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
    ld a, a
    nop
    ld a, b
    nop
    nop
    rlca
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop af
    ld c, $ff
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
    rra
    ld b, b
    ld bc, $0040
    ld e, [hl]
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
    add b
    ccf
    add b
    ccf
    nop
    rra
    nop
    rst $20
    nop
    ld sp, hl
    nop
    cp $00
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    inc bc
    ld hl, sp+$03
    ld hl, sp+$01
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $00fc
    cp $00
    cp $78
    add b
    ld a, a
    add b
    ld a, h
    add d
    ld a, [hl]
    add c
    ld a, a
    add b
    rra
    add b
    ld a, a
    rst $38
    add b
    ld a, a
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
    nop
    nop
    nop
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
    rst $38
    ld bc, $ff00
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
    cp $00
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    rst $38
    rra
    add b
    ld a, h
    ld c, h
    or [hl]
    ld [hl-], a
    ld l, l
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ldh [rP1], a
    add b
    inc bc
    nop
    ld a, c
    nop
    sbc [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $08
    ldh a, [rTAC]
    ld a, b
    inc hl
    ld e, h
    ld [hl], $6b
    nop
    cp $00
    cp $00
    ld a, $00
    ld c, $10
    ld b, $b8
    ld [bc], a
    cp h
    nop
    sbc h
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    db $fc
    inc bc
    ld a, [c]
    dec c
    ldh a, [rIF]
    db $f4
    add hl, bc
    cp $0f
    ld sp, hl
    ld b, $fe
    ld bc, $d800
    ld b, $d0
    ld c, $e0
    ld c, $e0
    ld c, $e0
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$fe]
    nop
    inc a
    ret nz

    ld c, h
    or e
    rrca
    rst $38
    ld h, $99
    ld a, a
    rst $38

Call_02c_4d0f:
    add b
    ld a, a
    ld a, a
    add b
    ld bc, $433c
    ld [$0070], sp
    ld a, a
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    dec b
    db $fd
    dec b
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    db $fc
    inc b
    ld sp, hl
    ld b, $00
    ld a, [c]
    nop
    ld a, [c]
    rlca
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [rP1]
    di
    nop
    ldh a, [$fc]
    db $fd
    db $fc
    db $fd
    inc c
    dec c
    or h
    ld b, l
    db $fc
    ld bc, $817e
    cp $01
    db $fc
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    ldh a, [rSC]
    ld hl, sp+$02
    ret nz

    ld [bc], a

jr_02c_4d5d:
    add b
    inc a

jr_02c_4d5f:
    nop
    ld a, h
    nop
    ld hl, sp-$01
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    ld a, $c1
    ld e, $e1
    ld c, $f1
    ld b, $f9
    nop
    db $fc
    ld [bc], a
    ld [bc], a
    cp [hl]
    cp [hl]
    sbc $de
    db $dd
    db $dd
    db $ed
    db $ed
    push af
    push af
    ld sp, hl
    ld sp, hl
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
    cp $01
    db $fc
    inc bc
    ldh [$1f], a
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
    cp $00
    db $fc
    nop
    ldh [$ef], a
    ld d, $df
    inc l
    db $db
    inc l
    sbc a
    ld l, b
    ld a, a
    sbc b
    rra
    ldh [rIF], a
    ldh a, [$1f]
    ldh [rTMA], a
    ldh [$0c], a
    pop bc
    inc c
    pop bc
    ld [$1883], sp
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rrca
    cp $05
    or $07
    or $07
    ld a, [$e603]
    rlca
    and $07
    cp $7f
    add b
    ld a, a
    ld b, $f0
    ld [$18e0], sp
    ret nz

    inc e
    ret nz

    jr c, jr_02c_4d5d

    jr c, jr_02c_4d5f

    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld a, b
    add a
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02c_4df8:
    rst $38
    ld a, a
    ld a, a
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0efe
    pop af
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop

jr_02c_4e22:
    nop
    rlca
    ld hl, sp+$0c
    di
    jr nc, jr_02c_4df8

    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$07
    ldh a, [$f4]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld a, a
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    ld b, $f9
    rrca
    rst $30
    jr nc, jr_02c_4e22

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    nop
    nop
    nop
    nop
    rra
    ldh [$f7], a
    ld [$9966], sp
    ld h, e
    sbc l
    ld b, e
    cp l
    ld b, a
    cp e
    ld b, a
    cp e
    ld b, h
    cp e
    nop
    ld c, $00
    ld b, $40
    inc b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    inc bc
    ld a, a
    add b
    sbc a
    ld h, e
    ld hl, sp+$07
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ld hl, sp+$00
    ld a, b
    nop
    jr jr_02c_4ea2

jr_02c_4ea2:
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fefe
    nop
    cp a
    ld e, a
    and b
    ld e, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $06fe
    ld hl, sp+$1e
    pop hl
    rst $38
    nop
    rra
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rra
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    ld a, a
    cp a
    call nc, Call_000_384b
    and a
    ld e, l
    jp nz, $e47b

    ld e, d
    push bc
    ld a, a
    rst $38
    nop
    rst $38
    ccf
    nop
    ccf
    nop
    ld e, a
    nop
    ccf
    nop
    rra
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    and $9b
    db $e4
    dec de
    ret c

    daa
    db $fc
    ccf
    cp b
    ld a, a
    ld a, [$ee3d]
    rst $10
    nop
    rst $38
    add d
    nop
    jp nz, $e600

    nop
    cp $00
    cp $00
    cp $00
    jr c, jr_02c_4f21

jr_02c_4f21:
    nop
    nop
    sbc a
    ld l, a
    sub b
    ld l, a
    ld d, b
    cpl
    ret z

    scf
    jr z, @-$27

    inc h
    db $db
    inc d
    db $eb
    ld [de], a
    db $ed
    rrca
    nop
    rrca
    nop
    adc a
    nop
    add a
    nop
    rst $00
    nop
    jp $e300


    nop
    pop hl
    nop
    ld a, c
    add [hl]
    dec h
    jp c, $fb04

    ld a, [bc]
    push af
    ld bc, $03fe
    db $fd
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rst $38
    nop
    nop
    nop
    nop
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    add c
    ld a, a
    ld b, b
    cp a
    jr nz, @-$1f

    sub e
    ld l, h
    rst $18
    xor a
    ld c, b
    or a
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    ld l, a
    rst $10
    daa
    sbc b
    rla
    adc b
    dec d
    adc d
    inc sp
    call z, $e41b
    ld a, [de]
    db $e4
    ld b, $f8
    ld b, a
    nop
    ld b, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld h, c
    nop
    ld [hl], c
    nop
    ld [hl], c
    nop
    ld a, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_02c_4fd9:
    nop
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
    ld a, [$9a65]
    dec b
    ld a, [$9a65]
    ld [hl], l
    adc d
    add hl, de
    add [hl]
    ld a, e
    push af
    ld a, [bc]
    push af
    ld a, b
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld [hl], b
    nop
    nop
    nop
    nop
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
    cp $01
    ldh a, [rIF]
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
    cp $01
    pop af
    rrca
    adc a
    ccf
    cp a
    ccf
    cp a
    jr nc, jr_02c_4fd9

    dec l
    and d
    dec sp
    and h
    ld a, [hl+]
    and l
    ccf
    cp a
    nop

Call_02c_5032:
    rst $38
    nop
    ld b, b
    nop
    ld b, b
    rrca
    ld b, b
    rra
    ld b, b
    rra
    ld b, b
    rra
    ld b, b
    nop
    ld b, b
    nop
    nop
    db $fc
    db $fd
    or h
    add l
    ld b, b
    add hl, sp
    cp h
    ld a, c
    inc e
    ld sp, hl
    inc e
    db $fd
    db $ec
    push de
    nop
    rst $38
    nop
    ld [bc], a
    ld a, b
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    jr c, jr_02c_5063

    nop
    nop

jr_02c_5063:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    ld hl, sp-$0e
    db $e3
    db $ed
    adc [hl]
    inc hl
    ld [hl], h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$04
    ld hl, sp-$10
    cp b
    ret nz

    rst $38
    rst $38
    cp $f8
    db $eb
    ret


    adc l
    ld c, $3f
    and b
    ld [hl], c
    adc [hl]
    adc $31
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    db $fc
    ret nc

    ldh [$c0], a
    nop
    ld c, $0e
    jr nc, jr_02c_50f1

    nop
    nop
    rst $38
    rst $38
    ccf
    rlca
    push hl
    db $d4, $e9, $1c
    inc e
    db $e3
    ldh a, [rIF]
    rra
    ldh [rTAC], a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    inc sp
    rrca
    inc b
    inc bc
    ldh [$e0], a
    rrca
    rrca
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rrca
    add a
    db $e3
    push hl
    ld de, $06fd

jr_02c_50f1:
    call $ff33
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rra
    dec bc
    rlca
    ld [bc], a
    ld bc, $3030
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    ld c, a
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    ld sp, hl
    rst $38
    ld hl, sp-$03
    ld a, [$f9ff]
    rst $38
    ld sp, hl
    db $fc
    ld sp, hl
    db $fc
    ld a, [$f8ff]
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fc
    cp $fc
    cp $fd
    cp $ff
    db $fc
    rst $38
    db $fc
    ld h, l
    sub b
    ld h, a
    sbc c
    rlca
    jp hl


    dec h
    ldh a, [$27]
    pop hl
    rlca
    pop hl
    add e
    pop hl
    rla
    ld a, b
    dec bc
    rlca
    dec bc
    rlca
    dec de
    rlca
    inc de
    rrca
    ld [de], a
    rrca
    ld [de], a
    rrca
    ld d, $0f
    adc e
    rlca
    ld hl, sp-$0d
    ld sp, hl
    ei
    db $fd
    db $fd
    rst $18
    adc l
    rst $38
    ld a, e
    rst $30
    dec a
    rst $20
    adc h
    rst $18
    or [hl]
    cp b
    rst $00
    add sp, -$09
    ld hl, sp-$01
    cp $ff
    rst $20
    rra
    di
    rrca
    db $e3
    rra
    rst $08
    ccf
    ret


    adc c
    pop hl
    add c
    or l
    add c
    cp l
    add c
    db $dd
    pop bc
    db $dd
    ld b, c
    db $eb
    and c
    ei
    db $ed
    db $76
    add c
    ld a, [hl]
    add c
    inc a
    jp $c33c


    inc e
    db $e3
    sbc h
    db $e3
    adc $f1
    or $f9
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    add h
    add hl, sp
    ld l, a
    ld a, a
    or c
    ret


    ld h, a
    ld h, [hl]
    ld h, [hl]
    push hl
    cp $00
    rst $38
    rst $38
    inc bc
    rst $38
    ccf
    ret nz

    add b
    nop
    rlca
    nop
    sub l
    dec bc
    ld [c], a

jr_02c_5260:
    rra
    cp $ff
    rst $38
    cp $fd
    db $fc
    rst $38
    ld hl, sp-$03
    di
    ld a, [c]
    rst $30
    pop af
    and $f6
    push hl
    rst $30
    ret nz

    rst $38
    rst $38
    cp $ff
    db $fd
    cp $fa
    db $fc
    db $fc
    ld hl, sp-$0c
    ld hl, sp-$0f
    ld sp, hl
    add sp, -$10
    and [hl]
    ld a, c
    reti


    ld h, a
    inc [hl]
    call z, $9869
    or c
    ld d, h
    ld b, d
    xor b
    rst $20
    jr nz, jr_02c_5260

    inc de
    ld b, b
    add b
    add b
    nop
    inc bc
    nop
    rlca
    nop
    ld c, h
    ld b, e
    sbc c
    add a
    ld [de], a
    rrca
    scf
    inc c
    inc de
    ldh a, [$27]
    db $10
    dec de
    ld b, b
    ld b, b
    inc bc
    cpl
    inc c
    cp c
    ld bc, $1f9e
    ld [hl], c
    ld [hl], c
    rrca
    nop
    ldh a, [rIF]
    rst $00
    ccf
    inc a
    rst $38

jr_02c_52bb:
    rst $08
    ldh a, [$3e]
    ret nz

    ldh [rP1], a
    adc a
    nop
    call z, $810f
    rrca
    sub b
    nop
    ld a, [c]
    add b
    add h
    ld [bc], a
    or l
    call z, $fb04
    pop hl
    add [hl]
    ldh a, [rP1]
    ld c, $f0
    db $fc
    rst $38
    adc a
    ld a, a
    cp $01
    inc bc
    nop
    nop
    nop
    ld hl, sp+$00
    rst $08
    jr nc, @+$01

    nop
    daa
    cp b
    ld c, e
    cpl
    ld sp, $9019
    inc b
    adc b
    add c
    add $40
    jr nc, jr_02c_5325

    nop
    nop
    ret nz

    nop
    jr nc, jr_02c_52bb

    sbc $e0
    and a
    ld a, b
    ld e, l
    ld a, $2f
    rra
    ld b, d
    cp $81
    ld a, a
    sbc a
    ld h, b
    rst $00
    ld hl, sp-$01
    rst $38
    nop
    nop
    nop
    adc a
    ldh a, [rP1]
    ld a, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    adc a
    ld [hl], b
    nop
    rst $38
    ld [de], a
    ld l, [hl]

jr_02c_5325:
    ld l, [hl]
    ld a, [hl]
    nop
    rst $38
    cp e
    ld a, h
    ld [hl], b
    rst $38
    nop
    nop
    nop
    sbc h
    rrca
    nop
    ld a, [hl]
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    db $fc
    inc bc
    nop
    rst $38
    nop
    ccf
    ld h, b
    ld a, a
    ld h, a
    sbc b
    db $e3
    inc e
    rra
    rst $38
    nop
    ld b, $00
    ld a, [hl]
    nop
    nop
    ccf
    ret nz

    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $01
    ld a, [hl]
    add c
    nop
    rst $38
    ld [$fef8], sp
    rst $38
    pop bc
    ld a, $e0
    rra
    nop
    rst $38
    nop
    ret nz

    nop
    rrca
    ld [hl], l
    rlca
    ld hl, sp+$07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop

jr_02c_537f:
    rrca
    ldh a, [rTAC]
    ld hl, sp-$02
    db $fc
    db $fd
    ei
    cp $fe
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld hl, sp-$03
    ld sp, hl
    rst $38
    ld_long a, $ffff
    db $fc

jr_02c_5396:
    ei
    ei
    db $fc
    db $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    dec bc
    ret nz

    or a
    jr nc, jr_02c_53cb

    ld c, h
    ei
    jr z, jr_02c_537f

    ld [hl+], a
    db $ca, $04, $15

    add [hl]
    sub $00
    ei
    rlca
    di
    rst $08
    inc sp
    rst $38
    rst $38
    rra
    add a
    ld l, a
    or $33
    ld d, a
    cp h
    db $db
    cp h
    cp a
    xor $f1
    and c
    rst $20
    db $10
    rst $00
    adc b

jr_02c_53cb:
    ccf
    ld h, b
    jr c, jr_02c_5396

    ld [hl], b
    adc a
    inc [hl]
    inc bc
    sbc b
    ld a, a
    ld [hl], d
    db $fc
    ret c

    ldh [$90], a
    ldh [$c0], a
    add b
    add a
    rlca
    rrca
    rrca
    add e
    ld a, e
    adc $47
    ret c

    ld e, h
    cp [hl]
    add c
    rst $38
    nop
    inc bc
    db $fc

jr_02c_53ed:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, h
    rst $38
    ld h, l
    jp Jump_02c_4041


    nop
    nop
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    ret c

    cp d
    cp l
    or a
    add hl, hl
    ld a, l
    cp l
    cp a
    jr jr_02c_53ed

    dec a
    ld l, a
    sbc d
    ld a, $c6
    and e
    ld b, a
    ld [c], a
    ld b, a
    rst $10
    rst $28
    xor $7e
    ld [hl], l
    add hl, sp
    ld [hl-], a
    dec de
    sbc h
    adc a
    db $c4, $cf, $01
    inc b
    cp c
    cp b
    ret


    inc sp
    dec [hl]
    ret nz

    ld [hl], c
    add b
    dec a
    db $e4
    and b
    ld h, b
    push hl
    xor h
    rra
    ei
    ld h, l
    rst $00
    scf
    or l
    res 1, a
    ld b, e
    sbc a
    sub a
    dec de
    or e
    ccf
    ccf
    ld [hl], e
    dec e
    ld b, $fa
    ld a, [bc]
    or $74
    db $ec
    add hl, hl
    ret c

    ld d, e
    or b
    daa
    pop hl
    adc $c3
    sbc h
    dec c
    cp $3f
    db $fc
    rst $38
    ld hl, sp-$02
    ldh a, [$fc]
    ldh [$f8], a
    ret nz

    ldh a, [rP1]
    ldh [rP1], a
    rst $08
    ret z

    jp nz, $e59e

    adc e
    cp $b9
    db $fc
    cp d
    or d
    sbc [hl]
    sbc e
    rla
    adc e
    sub a
    ldh [$f0], a
    pop af
    ldh [$d0], a
    ldh [$e0], a
    ret nz

    pop hl
    ret nz

    ldh [$c1], a
    pop hl
    ret nz

    pop hl
    ret nz

    ld b, b
    jp nz, Jump_02c_470b

    and c
    inc bc
    sub $04
    ld c, b
    ld b, $b6
    ld d, $19
    rra
    rst $08
    ld e, c
    dec hl
    inc e
    call nc, $9438
    ld a, b
    and c
    ld a, b
    add hl, hl
    ldh a, [$79]
    ldh [$f1], a
    ldh [$71], a
    ldh [$e7], a
    cp $d7
    db $e4
    cp [hl]
    db $d3
    ld e, [hl]
    adc [hl]
    ld hl, sp-$62
    xor c
    cp l
    ldh [$2f], a
    ret nz

    dec de
    db $e3
    pop hl
    ret nc

    ret z

    or c
    add b
    ld b, c
    daa
    ld b, a
    ld c, a
    and d
    ld a, a
    ld d, a
    sbc b
    db $fd
    cp [hl]
    rst $38
    dec e
    db $fd
    ld b, $3b
    ld sp, $e8c5
    db $eb
    db $fc
    ld a, [de]
    jr jr_02c_551b

    ld c, e
    ld b, l
    ld d, [hl]
    push af
    push hl
    inc d
    ld [$36f0], sp
    db $10
    db $e3
    ld de, $e4f9
    add hl, de
    db $f4
    ld c, h
    ld a, [$834c]
    ld h, b
    or e
    ret


    ld a, [de]
    daa
    nop
    sbc a
    adc d
    ld [hl], d
    rst $00
    adc b
    rst $18
    and b
    db $fd
    push bc
    rla
    rrca
    rlca
    nop
    ret nz

    nop
    ld h, b
    add b
    cp l
    ret nz

    ldh a, [rIE]
    rst $18
    ldh [$fd], a
    ld [c], a
    ldh a, [rP1]
    db $fd
    cp $6e
    sbc a
    ld c, $f1
    ld [$a20e], a
    add d
    ld sp, hl
    ld bc, $9273
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop

jr_02c_551b:
    pop af
    nop
    ld b, d
    db $fd
    cp $00
    di
    inc c
    inc e
    inc e
    rst $08
    jr nc, jr_02c_552d

    ld a, [$c739]
    ld a, a
    ld a, a

jr_02c_552d:
    and a
    daa
    rst $28
    rst $28
    ld c, e
    ld sp, $ffe3
    rst $38
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    daa
    ret c

    stop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    ei
    inc b
    adc h
    rst $38
    ret nz

    ret nz

    or e
    rst $38
    sbc [hl]
    sbc a
    ld c, b
    ld a, h
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    ld h, b
    nop
    ld a, a
    add b
    db $10
    db $10
    rst $38
    nop
    rst $38
    nop
    inc a
    jp $3f23


    jp nc, $00df

    rst $38
    ld a, [c]
    ldh a, [$ef]
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    rst $18
    jr nz, jr_02c_5580

jr_02c_5580:
    nop
    rrca
    nop
    rst $38
    ld sp, hl
    ei
    ld sp, hl
    db $fd
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld hl, sp-$02
    ld hl, sp-$01
    ld hl, sp-$05
    ld sp, hl
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    sbc c
    ld [de], a
    db $d3
    db $10
    xor $62
    xor $61
    db $ed
    ld b, e
    db $fc
    add b
    sub b
    or l
    ret nz

    ld a, e
    jp c, $d9fd

    rst $38
    ld a, [c]
    rst $38
    push af
    cp $e6
    db $fc
    db $db
    db $ec
    and $c8
    ret


    add l
    ld d, [hl]
    dec b
    ld [hl-], a
    or b
    ld h, b
    db $fc
    ldh [$fe], a
    nop
    ld c, a
    ld [hl], b
    and a
    ld bc, $469e
    sbc b
    adc h
    cp $cb
    rlca
    add e
    ld bc, $0001
    ldh [$30], a
    ld hl, sp+$70
    jr nc, jr_02c_5641

    and b
    add c
    ld bc, $51f8
    jp $ace4


    add l
    ld e, l

jr_02c_55eb:
    inc b
    db $fc
    inc bc
    rst $38
    db $e3
    inc e
    jr jr_02c_55f9

    xor $e7
    xor a
    jr nc, jr_02c_55eb

    ret nz

jr_02c_55f9:
    ld h, d
    add b
    ld bc, $0303
    inc bc
    ld bc, $c103
    jr nz, jr_02c_567c

    ld a, [bc]
    dec sp
    ld l, $7b
    inc [hl]
    adc l
    add l
    ld c, l
    ld b, d
    rst $38
    ld h, e
    rrca
    ld c, b
    dec de
    db $e4
    add h
    rlca
    jp nz, $a7c7

    ld h, e
    ld h, e
    inc sp
    or e
    ld de, $9001
    or c
    db $10
    push bc
    call nc, $a479
    reti


    dec b
    di
    add hl, bc
    pop hl
    ld l, l
    and $e0
    and [hl]
    ldh [$09], a
    sub l
    pop bc
    xor l
    rst $28
    ld [hl], e
    ld l, a
    di
    db $eb
    rst $30
    adc a
    di
    adc l
    di
    db $ed
    sub e
    ld e, a
    db $e3

jr_02c_5641:
    rst $28
    ld d, e
    rlca
    cp b
    inc bc
    ld a, h
    nop
    ld [hl], b
    nop
    and $14
    add sp, $00
    ld h, h
    ld bc, $6071
    ld c, a
    ret nz

    nop
    add b
    nop
    adc c
    ld b, $12
    add hl, bc
    inc bc
    ld d, $92
    add hl, bc
    ld c, b
    add [hl]
    ldh [$f0], a
    call z, $9d94
    add $b8
    push hl
    xor e
    sub $8d
    ld [de], a
    cp [hl]
    and b
    sbc h
    or d
    ld [c], a
    adc $a2
    pop bc
    ld [c], a
    add c
    jp $e180


    add b
    and c

jr_02c_567c:
    ret nz

    add c
    ret nz

    pop hl
    ret nz

    pop de
    ldh [$da], a
    ld l, $d3
    ld hl, $43dd
    ld l, h
    ld a, $e5
    ld e, c
    sub a
    rla
    pop hl
    add hl, bc
    ld c, b
    inc c
    ld d, c
    pop hl
    ld e, a
    ldh [$5f], a
    ldh [$7f], a
    ret nz

    ld e, [hl]
    ldh [$78], a
    ldh [$2e], a
    ldh a, [$2f]
    ldh a, [$ec]
    inc sp
    ret nz

    dec a
    add sp, -$37
    ldh [$fd], a
    or [hl]
    cp [hl]
    ld e, b
    add h
    rst $10
    add $df
    jp $bf9e


    ld a, $9f
    or a
    rra
    db $db
    rrca
    add hl, bc
    ld b, a
    ld e, e
    daa
    sub [hl]
    cp c
    sbc a
    cp h
    inc bc
    ld [$ce0d], a
    inc de
    rst $38
    inc bc
    call $fccf
    ld a, a
    ld a, b
    dec sp
    ld l, b
    xor $60
    db $fc
    ld e, $32
    db $fc
    ld [$fcf6], a
    ldh [$34], a
    call $fb88
    add e
    rst $00
    adc b
    rra
    rst $38
    ldh [$f1], a
    sub $f6
    and [hl]
    rst $10
    ld h, $fc
    db $e4
    rst $10
    ld [$c5df], a
    rst $38
    pop hl
    rst $38
    rst $38
    rst $20
    ld hl, sp-$27
    ldh [$d9], a
    ldh [$3c], a
    jp Jump_02c_47b9


    sbc [hl]
    ld h, e
    cp a
    ld b, d
    rst $38
    nop
    or $79
    call Call_02c_7a0c
    cp c
    ld [hl], h
    ld [hl], b
    rst $38
    inc a
    ld [bc], a
    db $fc
    cp a
    add b
    rst $38
    rst $38
    rst $38
    nop
    di
    nop
    rst $00
    nop
    ld [hl], b
    adc a
    jp $ffff


    nop
    add b
    ld a, a
    rst $38
    nop
    add l
    sbc l
    ccf
    ccf
    ld e, b
    ld a, a
    and b
    xor $c7
    nop
    inc hl
    rra
    rst $38
    nop
    rst $38
    rst $38
    sbc l
    ld h, d
    ret nz

    nop
    add b
    nop
    ldh [$1f], a
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    add $39
    rst $38
    rst $38
    cp a
    cp a
    inc [hl]
    inc a
    rst $38
    nop
    pop af
    rst $38
    adc h
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld b, b
    nop
    inc a
    jp $ffff


    rst $38
    nop
    ld [hl], b
    rst $38
    rst $38
    nop
    adc h
    rst $38
    sub a
    rst $30
    ld d, $f6
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, h
    inc e
    add sp, $0a
    rst $38
    rst $38
    rst $38
    nop
    ld [$0900], sp
    nop
    nop
    rst $38
    rst $38
    rst $38
    inc e
    db $e3
    add hl, bc
    rst $30
    push af
    pop af
    rst $38
    ldh a, [$ea]
    ld [$faf7], a
    rst $38
    call nz, $ccdc
    sbc $c4
    cp $99
    ei
    rst $38
    di
    rst $38
    cp $f7
    xor $f7
    and $ff
    and $ff
    db $ec
    rst $38
    db $dd
    xor $fd
    ld b, b
    ld a, l
    ld b, c
    ld a, h
    ld b, l
    inc h
    ret c

    ld b, d
    dec a
    nop
    ld a, a
    or h
    ld c, e
    jr c, jr_02c_57fa

    ld [bc], a
    add h
    nop
    add [hl]
    inc bc
    add d
    sbc c
    dec de
    cp l
    inc a
    cp a
    ccf
    adc e
    dec bc
    add a
    rlca
    jp $ed04


    ld a, [c]
    inc bc
    and d
    ld b, b
    ld a, l
    rrca
    ld [hl], b
    ret nc

    rlca
    add $20
    jr c, @-$37

    inc [hl]
    ld [$0c16], sp
    jp c, $8307

    nop
    ret nz

    add b
    jr z, jr_02c_584f

    db $10
    rrca
    rst $00
    rst $00
    ld sp, $e8c0
    dec d
    ld a, [bc]
    pop bc
    add $09
    ld hl, sp+$06
    ldh [rNR23], a
    ld [hl+], a
    ld h, c
    nop
    rst $38
    ld c, $00
    ld b, $08
    inc [hl]
    jr jr_02c_580a

jr_02c_57fa:
    ldh [rSB], a
    nop
    rlca
    inc bc
    ld h, l
    sbc c
    rst $38
    rst $38
    jp $912d


    ld c, [hl]
    ld hl, $411e

jr_02c_580a:
    ld a, $a8
    rst $10
    ret c

    daa
    inc [hl]
    sla b
    rst $00
    inc c
    inc e
    ld l, $1e
    adc $2e
    cp [hl]
    ld e, [hl]
    rst $10
    sub a
    daa
    daa
    jp $cbc3


    db $d3
    ld h, b
    xor b
    ld [hl], h
    xor h
    ld hl, $a2ac
    ld l, c
    rra
    rst $10
    sbc b
    scf
    db $dd
    ld [hl], c

jr_02c_5831:
    rst $08
    ld l, h
    bit 6, a
    xor a
    ld [hl], e
    db $fc
    ld [hl], e
    cp a
    ld [hl], b
    ld e, b
    jr nc, jr_02c_58b5

    jr @+$3b

    ld e, $3f
    rra
    ld [hl], c
    ld b, e
    jr jr_02c_5847

jr_02c_5847:
    ld sp, $4e40
    xor [hl]
    rra
    and a
    add a
    ld e, b

jr_02c_584f:
    ld b, c
    ld [hl], $e8
    add [hl]
    ld_long a, $fffc
    rst $38
    adc $bf
    sbc [hl]
    ld bc, $00c0
    ld h, b
    add b
    cp b
    ret nz

    rst $30
    ld hl, sp-$04
    db $d3
    rst $08
    ldh [rIE], a
    ret c

    ld a, [c]
    db $dd
    rst $20
    db $e4
    pop af
    ld [c], a
    ld a, [$f7f7]
    rst $30
    ret nz

    ldh [$d0], a
    ldh [$f0], a
    ldh [$e8], a
    ldh a, [$f0]
    ld hl, sp-$0c
    ld hl, sp-$0c
    ld hl, sp-$04
    ld hl, sp-$6f
    ret nc

    ld [de], a
    and b
    jr jr_02c_5831

    adc b
    db $ec
    nop
    call nc, Call_000_3cd2
    pop de
    jr c, @+$49

    and b
    ld e, a
    jr nz, jr_02c_5905

    db $10
    ld l, a
    db $10
    ld h, a
    jr jr_02c_58d3

    ld [$000f], sp
    add hl, bc
    ld b, $11
    ld c, $7f
    inc bc
    dec hl
    nop
    rst $08
    ld c, [hl]
    add h
    ld [hl], h
    ld a, b
    add hl, de
    dec sp
    ld hl, $1705
    ld d, d
    rla
    rst $18
    ccf

jr_02c_58b5:
    rst $30
    rra
    pop de
    ccf
    ldh [$1f], a
    cp $07
    sbc $07
    ld hl, sp+$07
    ld a, [$f505]
    pop hl
    reti


    ld bc, $05a5
    add a
    add e
    ld d, a
    pop hl
    dec l
    ld [hl], c
    ld d, [hl]
    dec [hl]
    ld c, d
    sbc a

jr_02c_58d3:
    ld hl, sp-$01
    ldh [rIE], a
    call nz, Call_02c_5efb
    pop hl
    ld e, $e1
    rrca
    ldh a, [rDMA]
    cp c
    ld h, d
    sbc l
    ld l, [hl]
    ld l, c
    db $e3
    call c, $f1db
    rst $10
    db $ed
    add $c4
    ei
    ld hl, sp+$3f
    db $dd
    add d
    ld d, c
    ld [hl], $c3
    and [hl]
    ld b, e
    xor d
    ld b, a
    sbc d
    ld h, a
    sbc [hl]
    ld h, e
    and a
    ld b, d
    and a
    ld b, d
    xor d
    ld b, a
    ld a, a
    ret nz

jr_02c_5905:
    ld [hl], a
    add b
    ldh [$c7], a
    ld [hl], h
    ld c, a

jr_02c_590b:
    rst $20
    ld b, a
    ld [hl], e
    ld d, e
    db $fd
    ld e, h
    db $fd
    ld a, [hl]
    cp a
    ld a, a
    cp b

jr_02c_5916:
    ld a, a
    or a
    ld a, b
    jr z, jr_02c_590b

    xor b
    ld [hl], b
    cp a
    ld h, b
    or b
    ld h, e
    sub e
    ld h, c
    rst $38
    nop
    xor [hl]
    jr nz, jr_02c_5928

jr_02c_5928:
    adc $80
    rst $38
    adc e
    rst $38
    nop
    ld sp, hl
    ld_long a, $ff08
    rst $38
    rst $38
    rst $38
    jr nz, jr_02c_5916

    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    add hl, bc
    rst $30
    rst $38
    rst $38
    rst $38
    nop
    sbc c
    and b
    call nz, RST_30
    rst $38
    rst $20
    rst $20
    jr nc, jr_02c_598b

    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    add [hl]
    ld a, a
    ldh a, [rIF]
    nop
    nop
    jr jr_02c_595d

jr_02c_595d:
    inc a
    jp $ffff


    rst $38
    rst $38
    rst $38
    nop
    add e
    ld [hl+], a
    nop
    rst $38
    nop
    rst $38
    ldh [$e0], a
    ld d, $40
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    rst $38
    nop
    nop
    nop
    rra
    nop
    ld b, b
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    sbc b
    adc [hl]
    sbc b
    rst $28
    db $f4
    adc $f5

jr_02c_598b:
    rst $30
    ld [hl], l
    db $fc
    inc h
    add a
    jp nc, $9ace

    db $dd
    xor $cd
    cp $ed
    sbc [hl]
    db $ed
    sbc [hl]
    db $dd
    adc [hl]
    sub $8f
    cp $8f
    or a
    rst $08
    ld b, c
    cp h
    dec b

jr_02c_59a6:
    ld hl, sp+$5c
    and c
    ld bc, $42fd
    cp l
    ld c, h
    or b
    and l
    sbc b
    dec sp
    ld h, a
    inc a
    ld a, $7a
    ld a, d
    ld [hl+], a
    ld [hl+], a
    ld a, d
    ld a, d
    add hl, sp
    ld a, [hl-]
    or d
    inc sp
    ret c

    dec de
    ld b, a
    add l
    nop
    rst $38
    jr nz, jr_02c_59a6

    ret nz

    ccf
    inc l
    db $d3
    ld h, b
    ld e, a
    jr nz, @-$5f

    ld a, c
    add $c4
    ld a, e
    rst $38
    rst $38
    rst $18
    rst $18
    ccf
    ccf
    inc de
    inc de
    sbc a
    rra
    rst $18
    rra
    add [hl]
    ld b, $bb
    dec sp
    nop
    rst $38
    nop

jr_02c_59e6:
    rst $38
    nop
    rst $38
    dec b
    ld a, [$fe01]
    ld bc, $83fe
    ld a, h
    ld [bc], a
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$fefa]
    cp $fe
    cp $7c
    ld a, h
    db $fc
    db $fc
    ld c, h
    xor e
    ld a, h
    xor e
    sbc h
    ld c, e
    and h
    ld c, e
    ld d, b
    rst $08
    jr z, jr_02c_59e6

    ld e, c
    sub [hl]
    rst $28
    add b
    sub e
    sub e
    and e
    sub e
    inc de
    inc sp
    inc de
    inc sp
    daa
    scf
    ld [hl], a
    daa
    ld h, $66
    db $10
    ld h, b
    inc a
    pop bc
    ld e, a
    add sp, -$41
    ld c, $9f
    jr z, jr_02c_5a88

    add sp, $1b
    res 7, l
    rst $10
    daa
    ld [hl], d
    cp c
    sbc [hl]
    cp [hl]
    sbc a
    ld l, a
    rra
    ld l, a
    rra
    ld a, $1f
    rra
    inc a
    ld e, c
    ld a, $ff
    inc l
    xor d
    adc [hl]
    rst $38
    nop
    rst $38
    nop
    res 5, b
    nop
    ld [bc], a
    ld bc, $c2f4
    jr nz, @-$6f

    dec h
    adc [hl]
    ld [hl], c
    nop
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld bc, $f3ff
    rrca
    rst $28
    rra
    sbc l
    ld a, [hl]
    ld hl, sp-$08
    db $fc
    ld a, [$f8fc]
    db $fc
    ld sp, hl
    cp $f9
    cp $fd
    cp $f8
    cp $f8
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    cp $fd
    cp $fd
    cp $f9
    cp $fc
    rst $38
    db $fc
    rst $38
    ld h, a
    ld [de], a
    ld l, e
    add hl, de
    ld l, e

jr_02c_5a88:
    add hl, de
    ld [hl+], a
    ld e, b
    dec hl
    ld e, a
    add hl, hl
    ld e, l
    dec hl
    ld e, a
    inc hl
    ld d, l
    adc c
    ld b, $83
    ld b, $83
    ld b, $82
    rlca
    add l
    ld [bc], a
    add a
    ld [bc], a
    add l
    ld [bc], a
    adc l
    ld [bc], a
    dec de

jr_02c_5aa4:
    dec d
    db $c3, $c4, $12


jr_02c_5aa8:
    inc d
    jp c, Jump_000_3a08

    jr z, jr_02c_5aa8

    add sp, $12
    inc d
    ld h, $04
    ei
    inc b
    dec hl
    inc d
    ei
    inc b
    di
    inc b
    db $d3
    inc b
    inc de
    inc b
    ei
    inc b
    db $eb
    inc d
    dec l
    rst $18
    db $eb
    ei
    ld a, [de]
    rra
    call z, $eb8f
    db $db
    pop de
    push de
    ld a, [$f7f6]
    rst $30
    jr nc, jr_02c_5aa4

    sbc h
    ld h, a
    xor b
    ld [hl], a
    ld d, h
    dec sp
    inc hl
    inc e
    ld sp, $080e
    rlca
    dec c
    ld [bc], a
    or $52
    rst $28
    ld l, c
    cp $65
    ld a, [$f364]
    ld d, c
    cp a
    ld e, l
    cp $7c
    xor $68
    xor h
    ld b, e
    or a
    ld b, d
    cp [hl]
    ld b, e
    cp e
    ld b, a
    xor d
    ld b, a
    and [hl]
    ld b, e
    and a
    ld b, e
    or a
    ld b, e
    pop hl
    ld h, c
    ld [hl], e
    and c
    ld sp, hl
    cp c
    ld c, c
    add hl, sp
    ld l, e
    add hl, sp
    ld e, c
    add hl, de
    ld a, e
    add hl, sp
    ld h, e
    and c
    adc l
    ld [hl], e
    call $d573
    ld h, e
    ld d, l
    db $e3
    ld d, l
    db $e3
    ld [hl], a
    db $e3
    ld d, l
    db $e3
    ld c, l
    di
    rst $38
    rst $38
    db $fc
    db $fc
    add h
    add hl, sp
    ld l, a
    ld a, a
    or [hl]
    adc a
    rst $18
    ld e, a
    ccf
    ccf
    ccf
    nop
    rst $38
    rst $38
    inc bc
    rst $38
    ccf
    ret nz

    add b
    nop
    ret nz

    nop
    ldh [$80], a
    ld e, a
    ldh [rIE], a
    ld a, a
    ccf
    ld l, a
    ret c

    ld a, [bc]
    sbc a
    ld b, $87
    ld b, c
    add a
    ld [hl], b
    ret nz

    add hl, sp
    ret nc

    ld l, $e6
    add hl, de
    or b
    ld a, a
    ld [hl], d
    dec a
    ld l, a
    rra
    ld [hl], $0f
    dec c
    inc bc
    rlca
    nop
    ld hl, $1820
    jr @+$01

    rst $30
    nop
    ld a, a
    rst $38
    nop
    ret nz

    ret nz

    rst $38
    ccf
    ld a, h
    jr nc, jr_02c_5bca

    rra
    cp a
    add b
    nop
    rst $38
    ld a, a
    add b
    rst $38
    rst $38
    nop
    rst $38
    ld b, b
    add b
    cp a
    ret nz

    and e
    ld a, h
    ld a, a

jr_02c_5b82:
    rra
    rst $00
    jp nz, $8b83

    adc e
    adc e
    sbc e
    cp l
    push hl
    sbc l
    rst $08
    sub h
    cp $f2
    push af
    jp c, $cfb7

    rst $38
    rst $00
    rst $30
    rst $00
    rst $20
    jp $c3e3


    jp $c1e1


    pop hl
    pop af
    ldh [$72], a
    ld e, [hl]
    rst $10
    inc d
    rst $18
    adc c
    rst $38
    ld l, d
    db $fd
    jr nz, jr_02c_5b82

    sub a
    ldh [$ce], a
    push af
    ld h, b
    jp hl


    adc c
    sbc e
    ldh [$ee], a
    or $fc
    ei
    rst $30
    xor $f7
    ld hl, sp-$10
    rst $38
    cp $ff
    pop de
    ld l, $fc

jr_02c_5bc6:
    inc hl
    ld h, e
    inc a
    and b

jr_02c_5bca:
    ccf
    add a
    jr c, jr_02c_5be0

    sbc l
    bit 5, a
    ld [hl], e
    rra
    ld c, [hl]
    adc [hl]
    ld b, e
    add e
    ret z

    adc b
    ld c, a
    adc a
    ret nz

    nop
    ldh [rP1], a
    ld [hl], b

jr_02c_5be0:
    add b
    sbc a
    ldh [$c6], a
    add hl, sp
    ld b, $f9
    rlca
    ld hl, sp-$3d
    inc a
    rst $20
    jr jr_02c_5c2d

jr_02c_5bee:
    ret nz

    pop hl
    rst $38
    add hl, bc
    or $38
    jr c, jr_02c_5bee

    ld hl, sp-$08
    ld hl, sp+$3c
    inc a
    jr jr_02c_5c15

    nop
    nop
    nop
    nop
    rst $38
    nop
    adc [hl]
    add hl, sp
    ld b, c
    ld c, d
    ld l, [hl]
    jr nz, jr_02c_5bc6

    inc e
    sbc e
    ld e, e
    ei
    inc sp
    ld c, [hl]
    ld h, l
    ld c, c
    xor e
    ld [hl], b
    ret nz

jr_02c_5c15:
    call $b1f0
    rst $38
    ld a, a
    ccf
    dec sp
    cpl
    rla
    ld c, $a5
    ld e, $fe
    inc e
    inc d
    ld [$8eb1], sp
    jr c, jr_02c_5c50

    ld a, [$fc85]
    inc bc

jr_02c_5c2d:
    cp $81
    ret nz

    ld l, $e8
    scf
    xor e
    ld h, a
    ld [c], a
    ld b, c
    ret nz

    ret nz

    call nz, $8384
    inc bc
    nop
    nop
    inc e
    ld bc, $0022
    rra
    adc b
    ld [hl], h
    ld d, e
    xor b
    rst $00
    inc h
    ld a, [c]
    ld [c], a
    inc e
    inc e
    rst $20
    sub d

jr_02c_5c50:
    ld l, a
    adc c
    ld [hl], $79
    cp $bb
    db $fc
    ld d, a
    jr c, jr_02c_5c6d

    inc c
    dec b
    ld [bc], a
    jp Jump_000_2900


    ld [$8564], sp
    db $fc
    ld hl, sp-$04
    ld sp, hl
    db $fc
    ld sp, hl
    db $fc
    ld sp, hl
    db $fc
    ld sp, hl

jr_02c_5c6d:
    db $fc
    ld sp, hl
    db $fc
    ld sp, hl
    db $fc
    ld hl, sp-$04
    rst $38
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fc
    rst $38
    ld [hl+], a
    ld d, a
    ld c, c
    ld a, c
    ld l, c
    ld a, c
    ld h, c
    ld a, l
    dec l
    ld a, c
    dec c
    ld sp, hl
    inc l
    call c, $5520
    adc h
    inc bc
    add e
    ld b, $83
    ld b, $87
    ld [bc], a
    add a
    ld [bc], a
    add a
    ld [bc], a
    add [hl]
    inc bc
    adc d
    rlca
    jp nc, $c2d4

    ret nc

    jp c, $9cdc

    sbc d
    inc bc
    ld de, $11a3
    and e
    ld bc, $00a3
    dec sp
    inc b
    dec sp
    inc b
    inc sp
    inc b
    ld [hl], e
    inc b
    ld a, [$fa04]
    inc b
    ld [$eb14], a
    inc d
    ld [c], a
    rst $28
    ld h, d
    ld sp, hl
    reti


    sub $91
    or h
    adc e
    and d
    ld d, h
    ld de, $2982
    scf
    dec a
    add hl, de
    ld b, $15
    ld c, $33
    inc c
    ld [hl], a
    ld [$106f], sp
    call c, $9a23
    ld h, l
    ld [hl], a
    ret z

    ld e, e
    ld a, l
    jp c, $bbdd

    db $f4
    sbc a
    call nc, Call_02c_5032
    ld a, a
    ld e, l
    ld a, a
    ld e, l
    ld l, [hl]
    ld e, h
    and [hl]
    ld b, e
    ld h, $43
    dec bc
    ld b, a
    dec hl
    ld b, a
    xor e
    ld b, a
    and [hl]
    ld b, e
    and [hl]
    ld b, e
    and a
    ld b, e
    ld d, c
    dec b
    ld d, e
    dec b
    pop af
    add l
    ld c, c
    dec c
    ld [hl], c
    add c
    ld h, e
    ld bc, $8173
    di
    add a
    ld l, a
    di
    ld l, l
    di
    ld l, a
    di
    rst $20
    di
    ld l, e
    rst $30
    ld a, c
    rst $30
    ld l, c
    rst $30
    ld l, l
    di
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$02
    db $e3
    add hl, bc
    ld e, l
    inc h
    ld d, b
    adc l
    rst $18
    ld b, d
    and e
    pop hl
    ld e, $00
    nop
    nop
    nop
    db $10
    inc c
    or h
    ld [bc], a
    ld a, [bc]
    xor l
    ld [hl-], a
    nop
    db $10
    inc c
    nop
    nop
    sub b
    ld b, e
    ld c, e
    xor e
    and a
    ld d, l
    ld e, l
    xor l
    ld e, b
    xor b
    ld b, d
    cp d
    and $1e
    db $eb
    ld [de], a
    inc a
    rrca
    sbc l
    add [hl]
    ld c, [hl]
    ld b, e
    ld h, $23
    daa
    inc hl
    scf
    ld sp, $1113
    rla
    ld de, $d7f6
    db $e3
    db $e3
    cp $e3
    push af
    ld a, [c]

jr_02c_5d8b:
    ld a, [$fef1]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $e9
    ldh a, [$f5]
    ld hl, sp-$0b
    ld hl, sp-$05
    db $fc
    rst $38
    db $fc
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, l
    dec a
    ld [hl], e
    db $e3
    ld a, [hl]
    add d
    inc a
    ld a, [hl-]
    rlca
    ret nz

    ld [hl], b
    ld a, a
    ld c, a
    rst $38
    sbc c
    sbc [hl]
    cp $ff
    ld a, a
    rst $38
    ld e, a
    rst $28
    ld e, h
    rst $38
    rst $00
    ccf
    adc a
    nop
    add b
    nop
    and b
    ld b, b
    rra
    add b
    ld [bc], a
    nop
    rst $38
    ldh a, [$e7]
    add a
    rst $38
    nop
    or $00
    ld [bc], a
    ld hl, sp-$0a
    ld a, $00

jr_02c_5dd4:
    rst $38
    db $fd
    rst $38

jr_02c_5dd7:
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ld [hl], c
    rst $38
    ld hl, sp+$07
    ld bc, $e000
    jr nz, jr_02c_5d8b

    add l
    ld [hl], a
    inc hl
    cp $fe
    rst $38
    nop
    inc b
    ld [bc], a
    ld [de], a
    ld [hl], e
    cp $ff
    jr nc, jr_02c_5dd4

    adc e
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld [hl], e
    adc h
    nop
    nop
    add hl, bc
    jp z, $3639

    ld a, [$2a97]
    adc b
    rst $38
    ld a, d
    ld e, $0d
    ld a, a
    sbc h
    db $ed
    inc d
    db $fc
    inc a
    ld hl, sp-$04
    ld hl, sp-$04
    cp a
    ld e, h
    rst $38
    db $fc
    cp $ff
    di
    rrca
    dec bc
    rlca
    cp [hl]
    ld b, e
    sub c
    ld l, c
    ld [hl], c
    ret nz

    sbc a
    add b
    ld e, e
    ld d, b
    adc a
    jr nc, jr_02c_5dd7

    ld b, a
    push bc
    add c
    inc bc
    jr z, jr_02c_5e59

    inc d
    inc d
    dec sp
    ld a, a
    ccf
    or h
    rrca
    ret nz

    nop
    cp b
    ret nz

    ei
    rst $38
    xor c
    ld b, [hl]
    db $ed
    ld a, [bc]
    ld sp, hl
    inc b
    db $d3
    inc c
    ld l, [hl]
    add hl, bc
    cp $41
    ld a, a
    cp [hl]
    rst $38
    rst $00
    inc d
    dec [hl]
    inc sp
    pop af
    pop de
    db $e3

jr_02c_5e59:
    ld h, [hl]
    add e
    sbc [hl]
    rlca
    ld l, $1f
    cp a
    ld a, a
    rst $38
    rst $38
    ld hl, sp-$07
    db $fc
    ld sp, hl
    db $fc
    ei
    db $fc
    ld sp, hl
    cp $f9
    cp $f9
    cp $f8
    cp $f8
    db $fd
    cp $fd
    cp $ff
    db $fc
    db $fd
    cp $fd
    cp $fd
    cp $fc
    rst $38
    db $fc
    rst $38
    daa
    ld d, d
    ld c, e
    ld a, e
    ld l, e
    ld a, c
    ld h, b
    ld a, b
    dec hl
    ld a, a
    add hl, bc
    ld a, l
    dec hl
    ld e, a
    inc hl
    ld d, l
    adc c
    ld b, $81
    ld b, $81
    ld b, $82
    rlca
    add l
    ld [bc], a
    add a
    ld [bc], a
    add l
    ld [bc], a
    adc l
    ld [bc], a
    ld b, c
    ld d, e
    ld [hl], d
    ld h, e
    cp b
    dec de
    xor l
    adc l
    cp c
    inc e
    sbc c
    dec de
    add hl, hl
    add hl, de
    ld sp, hl
    add hl, sp
    cp e
    inc b
    sbc d
    dec b
    ld a, [c]
    dec b
    push hl
    ld [de], a
    pop af
    ld b, $f3
    inc b
    db $e3
    inc d
    db $e3
    inc d
    call $b5c9
    adc c
    add hl, hl
    pop de
    pop af
    ld hl, $e8c8
    ret z

    ld [$4181], sp
    ld bc, $6f01
    sub b
    ld l, a
    sub b
    rst $18
    jr nz, @-$3f

    ld b, b
    or $01
    db $76
    add c
    ld a, a
    add b
    ld a, a
    add b
    ld b, a
    ld e, l
    rst $10
    ld c, c
    ld b, a
    ld e, c
    ld h, a
    ld e, l
    ei
    ld e, b
    ld a, e
    ld e, b
    rst $00
    db $dd
    or $e8
    and [hl]
    ld b, e
    and [hl]
    ld b, e
    and [hl]
    ld b, e
    and [hl]
    ld b, e

Call_02c_5efb:
    and e
    ld b, a
    and e
    ld b, a
    ld h, $43
    ld b, $43
    ld c, e
    sbc l
    ld l, e
    dec a
    ld d, c
    ld bc, $0163
    ret


    adc l
    call Call_000_2f99
    dec a
    ld h, c
    pop hl
    ld [hl], l
    db $e3
    ld d, l
    db $e3
    ld l, e
    rst $30
    ld a, c
    rst $30
    ld h, a
    di
    ld [hl], a
    db $e3
    ld d, l
    db $e3
    adc e
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    db $fc
    ld a, a
    ld bc, $4007
    ld e, b
    ld b, b
    ld h, d
    db $fd
    add c
    ld a, [hl]
    ld hl, sp+$04
    ld b, $0f
    ld bc, $9f03
    rst $38
    ld b, e
    cp a
    ld b, e
    cp h
    ld bc, $7e01
    ld a, [hl]
    inc bc
    nop
    cp $01
    di
    ld c, d
    or a
    call nz, $5662
    adc $2d
    ld d, l
    sbc h
    dec sp
    xor c
    rra
    ret nz

    ei
    jp $8107


    call $8983
    add a
    ld a, [de]
    rlca
    or [hl]
    adc a
    ld l, l
    ld e, $bb
    ld a, h
    db $fc
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_02c_5ffe:
    nop
    nop
    nop
    nop
    nop
    push bc
    jr nc, jr_02c_5ffe

    ld [$19eb], sp
    add a
    db $e3
    ccf
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    dec sp
    scf
    inc bc
    rlca
    rrca
    rlca
    ld l, a
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld [bc], a
    inc c
    jr z, jr_02c_6091

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02c_6082

    inc c
    inc d
    ld [$2928], sp
    inc l
    dec l
    ld [$0c09], sp
    ld b, h
    ld [$2524], sp

jr_02c_6082:
    inc c
    inc d
    ld a, [bc]
    ld l, $2f
    jr jr_02c_60a2

    inc c
    ld h, h
    ld [$2726], sp
    inc c
    inc [hl]
    inc c

jr_02c_6091:
    inc [hl]
    dec [hl]
    jr nc, jr_02c_60c6

    jr nc, @+$33

    jr c, jr_02c_60d2

    inc c
    adc d
    ld [bc], a
    inc c
    ld d, d
    ld c, $36
    scf
    ld [hl-], a

jr_02c_60a2:
    inc sp
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    inc c
    xor d
    ld [bc], a
    inc c
    ld [hl], d
    ld a, [bc]
    inc l
    dec l
    ld a, [bc]
    dec bc
    inc c
    add [hl]
    nop
    nop
    ld bc, $0302
    inc c
    db $ca, $02, $0c

    ld [de], a
    ld a, [bc]
    ld l, $2f
    ld a, [de]
    dec de
    inc c
    and [hl]
    nop
    db $10

jr_02c_60c6:
    ld de, $1312
    inc c
    ld [$0c02], a
    ld [hl-], a
    ld a, [bc]
    inc c
    add d
    inc b

jr_02c_60d2:
    ld b, $07
    inc h
    dec h
    inc c
    inc c
    rrca
    ld bc, $a20c
    inc b
    ld d, $17
    ld h, $27
    inc c
    inc l
    rrca
    ld bc, $820c
    inc b
    jr nc, @+$33

    inc c
    ld a, [bc]
    rra
    dec bc
    ld [hl-], a
    inc sp
    inc c
    ld a, [hl+]
    rra
    inc bc
    jr z, jr_02c_611f

    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    adc d
    nop
    inc c
    ld [$0c16], sp
    inc d
    ld a, [bc]
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    xor d
    nop
    inc c
    jr z, @+$18

    inc c
    inc [hl]
    ld a, [bc]
    inc c
    nop
    nop
    inc b
    dec b
    inc c
    ld b, [hl]
    jr jr_02c_6125

    inc d
    ld c, $14
    dec d
    inc c
    ld h, [hl]

jr_02c_611f:
    jr jr_02c_612d

    inc d
    ld [$0200], sp

jr_02c_6125:
    nop
    jr z, jr_02c_6151

    nop
    nop
    ld c, $ff
    nop

jr_02c_612d:
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, @+$10

    nop
    inc d
    ld [$0000], sp
    rrca
    ld c, l
    nop
    ld h, b
    rrca
    inc de
    inc l
    dec l
    ld [$0809], sp
    add hl, bc
    inc h
    dec h
    nop
    ld c, [hl]
    rrca
    dec b
    ld l, $2f
    jr jr_02c_6168

    jr jr_02c_616a

jr_02c_6151:
    ld h, $27
    nop
    xor [hl]
    rrca
    rlca
    jr nc, @+$33

    jr nc, jr_02c_618c

    nop
    db $cc, $0f, $09
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    nop
    db $ec
    rrca
    ld c, l
    nop

jr_02c_6168:
    ld c, h
    rra

jr_02c_616a:
    ld c, l
    nop
    ld l, h
    rra
    ld bc, $0200
    inc c
    jr z, jr_02c_619d

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02c_618e

    inc c
    inc d
    ld [$000c], sp
    ld [bc], a
    inc l
    dec l
    ld [$0c09], sp
    ld c, b

jr_02c_618c:
    nop
    inc h

jr_02c_618e:
    dec h
    inc c
    db $10
    rrca
    inc bc
    ld l, $2f
    jr jr_02c_61b0

    inc c
    ld l, b
    nop
    ld h, $27
    inc c

jr_02c_619d:
    jr nc, jr_02c_61ae

    dec b
    jr nc, jr_02c_61d3

    inc [hl]
    dec [hl]
    jr nc, jr_02c_61d7

    inc c
    ld c, [hl]
    rrca
    rlca
    ld [hl-], a
    inc sp
    ld [hl], $37

jr_02c_61ae:
    ld [hl-], a
    inc sp

jr_02c_61b0:
    inc c
    ld l, [hl]
    rrca
    rlca
    inc [hl]
    dec [hl]
    jr c, jr_02c_61f1

    inc [hl]
    dec [hl]
    ld b, $07
    inc c
    ld c, h
    nop
    inc c
    ld d, h
    rrca
    ld bc, $3736
    ld a, [hl-]
    dec sp
    ld [hl], $37
    ld d, $17
    inc c
    ld l, h
    nop
    inc c
    ld [hl], h
    rrca
    rlca
    inc c

jr_02c_61d3:
    adc d
    ld [bc], a
    inc c
    sub h

jr_02c_61d7:
    rrca
    rlca
    inc c
    xor d
    ld [bc], a
    inc c
    inc [hl]
    ld c, $28
    add hl, hl
    inc b
    dec b
    inc c
    adc b
    nop
    inc c
    db $ca, $00, $0c

    jp nc, $010f

    ld a, [hl+]
    dec hl
    inc d
    dec d

jr_02c_61f1:
    inc c
    xor b
    nop
    inc c
    ld [$0c00], a
    ld a, [c]
    rrca
    inc bc
    ld a, [bc]
    dec bc
    jr nc, jr_02c_6230

    inc c
    inc c
    rra
    add hl, bc
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    inc c
    inc l
    rra
    rlca
    inc c
    add [hl]
    nop
    jr nc, jr_02c_6241

    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc c
    sub d
    rrca
    dec b
    ld [hl-], a
    inc sp
    db $10
    ld de, $1312
    ld [de], a
    inc de
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    ld b, $28
    add hl, hl
    ld b, $00
    ld c, $ff
    ld b, $14

jr_02c_6230:
    rlca
    ld a, [hl+]
    dec hl
    ld b, $20
    ld c, $06
    inc d
    ld [$0006], sp
    ld [bc], a
    inc l
    dec l
    ld [$0609], sp

jr_02c_6241:
    ld c, b
    inc b
    inc h
    dec h
    ld b, $14
    ld c, $2e
    cpl
    jr @+$1b

    ld b, $68
    inc b
    ld h, $27
    ld b, $34
    rrca
    ld bc, $3130
    inc [hl]
    dec [hl]
    jr nc, @+$33

    ld b, $8c
    nop
    ld b, $52
    rrca
    inc bc
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld b, $ac
    nop
    ld b, $72
    rrca
    rlca
    nop
    ld bc, $0504
    ld b, $90
    rrca
    add hl, bc
    db $10
    ld de, $1514
    ld b, $b0
    rrca
    inc bc
    jr z, jr_02c_62aa

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc l
    dec l
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    ld b, $52
    rrca
    ld bc, $2b2a
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld l, $2f
    ld a, [de]
    dec de
    ld [hl], $37
    ld b, $f2
    rrca
    inc bc
    ld b, $46
    nop
    ld a, [bc]
    dec bc
    ld b, $88
    nop
    ld b, $12
    rra

jr_02c_62aa:
    inc bc
    ld b, $66
    nop
    ld a, [de]
    dec de
    ld b, $a8
    nop
    ld b, $72
    rrca
    inc bc
    ld a, [bc]
    dec bc
    jr c, @+$3b

    ld b, $c8
    ld [bc], a
    ld b, $12
    rrca
    ld bc, $2c06
    db $10
    ld a, [hl-]
    dec sp
    ld b, $e8
    ld [bc], a
    ld b, $32
    rrca
    inc bc
    inc [hl]
    dec [hl]
    ld b, $ca
    nop
    ld [bc], a
    inc bc
    ld b, $10
    rrca
    inc bc
    ld l, $2f
    ld [hl], $37
    ld b, $ea
    nop
    ld [de], a
    inc de
    ld b, $30
    inc c
    nop
    ld [bc], a
    ld b, $28
    add hl, hl
    ld b, $00
    ld c, $ff
    ld b, $14
    rlca
    ld a, [hl+]
    dec hl
    ld b, $20
    ld c, $06
    inc d
    ld [$0006], sp
    nop
    inc l
    dec l
    ld [$0609], sp
    ld b, [hl]
    inc b
    inc h
    dec h
    ld b, $12
    ld c, $2e
    cpl
    jr @+$1b

    ld b, $66
    inc b
    ld h, $27
    ld b, $32
    rrca
    ld bc, $3534
    jr nc, jr_02c_634a

    ld b, $88
    ld [bc], a
    ld b, $50
    rrca
    inc bc
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld b, $a8
    ld [bc], a
    ld b, $70
    rrca
    dec b
    ld b, $86
    ld [bc], a
    jr c, jr_02c_6369

    ld b, $90
    rrca
    dec b
    ld b, $a6
    ld [bc], a
    ld a, [hl-]
    dec sp
    ld b, $70
    rrca
    inc bc
    jr nc, jr_02c_6370

    ld b, $c6
    nop
    jr c, jr_02c_637d

    ld b, $8e
    rrca
    dec b
    ld [hl-], a
    inc sp

jr_02c_634a:
    ld b, $e6
    nop
    ld a, [hl-]
    dec sp
    ld b, $ae
    rrca
    inc bc
    jr z, jr_02c_637e

    ld [bc], a
    inc bc
    inc b
    dec b
    inc [hl]
    dec [hl]
    nop
    ld bc, $0302
    ld b, $10
    rrca
    inc bc
    ld [de], a
    inc de
    inc d
    dec d
    ld [hl], $37

jr_02c_6369:
    db $10
    ld de, $1312
    ld b, $30
    rrca

jr_02c_6370:
    ld bc, $4206
    nop
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    ld b, $50
    nop
    ld b, $10

jr_02c_637d:
    rrca

jr_02c_637e:
    inc bc
    ld l, $2f
    ld a, [de]
    dec de
    ld [hl], $37
    ld b, $70
    nop
    ld b, $70
    rra
    dec b
    ld b, $c6
    nop
    ld b, $8c
    rra
    add hl, bc
    ld b, $e6
    nop
    ld b, $ac
    rra
    ld bc, $0200
    inc c
    jr z, jr_02c_63c8

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02c_63b9

    inc c
    inc d
    ld [$2d2c], sp
    ld [$0c09], sp
    ld b, d
    ld a, [bc]
    inc h
    dec h
    inc c
    inc d

jr_02c_63b9:
    ld [$2f2e], sp
    jr jr_02c_63d7

    inc c
    ld h, d
    ld a, [bc]
    ld h, $27
    inc c
    inc [hl]
    ld a, [bc]
    jr c, jr_02c_6401

jr_02c_63c8:
    inc c
    add d
    nop
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    inc c
    add d
    ld [bc], a
    inc c
    ld d, d
    inc c
    ld a, [hl-]
    dec sp

jr_02c_63d7:
    inc c
    and d
    nop
    ld [hl], $37
    ld [hl], $37
    inc c
    and d
    ld [bc], a
    inc c
    ld [hl], d
    ld c, $30
    ld sp, $c40c
    ld b, $0c
    sub b
    rrca
    ld bc, $3332
    inc c
    db $e4
    ld b, $0c
    or b
    rrca
    inc bc
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    adc $0f

jr_02c_6401:
    dec b
    db $10
    ld de, $1312
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    xor $0e
    jr z, @+$2b

    inc c
    inc c
    db $10
    ld b, $07
    inc c
    ld b, d
    nop
    ld a, [bc]
    dec bc
    inc c
    inc b
    db $10
    inc c
    ld [de], a
    inc c
    inc c
    inc l
    db $10
    ld d, $17
    inc c
    ld h, d
    nop
    ld a, [de]
    dec de
    inc c
    inc h
    db $10
    inc c
    ld [hl-], a
    ld a, [bc]
    jr z, jr_02c_645a

    inc l
    dec l
    inc c
    adc b
    nop
    inc c
    db $c4, $00, $0c
    adc b
    nop
    inc h
    dec h
    inc c
    ld [de], a
    inc c
    ld l, $2f
    inc c
    xor b
    nop
    inc c
    db $e4
    nop
    inc c
    xor b
    nop
    ld h, $27
    inc c
    ld [hl], d
    inc e
    jr z, jr_02c_647c

    inc c
    ld a, [bc]
    ld [de], a
    inc c
    inc b
    ld [de], a
    inc c

jr_02c_645a:
    db $10
    rrca
    ld bc, $2a0c
    ld [de], a
    inc c
    inc h
    ld [de], a
    inc c
    jr nc, jr_02c_6472

    nop
    ld [bc], a
    inc c
    jr z, jr_02c_6494

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca

jr_02c_6472:
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02c_6485

    inc c
    inc d
    ld [$000c], sp

jr_02c_647c:
    ld b, $2c
    dec l
    ld [$0c09], sp
    ld c, h
    nop
    inc h

jr_02c_6485:
    dec h
    inc c
    inc d
    rrca
    inc bc
    ld l, $2f
    jr jr_02c_64a7

    inc c
    ld l, h
    nop
    ld h, $27
    inc c

jr_02c_6494:
    inc d
    ld [$500c], sp
    nop
    inc c
    ld b, [hl]
    ld [bc], a
    ld a, [bc]
    dec bc
    jr nc, jr_02c_64d1

    jr nc, jr_02c_64d3

    inc [hl]
    dec [hl]
    inc c
    ld d, d
    ld a, [bc]

jr_02c_64a7:
    inc c
    ld [hl], b
    nop
    inc c
    ld h, [hl]
    ld [bc], a
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl], $37
    inc c
    ld [hl], d
    ld a, [bc]
    jr nc, jr_02c_64eb

    ld b, $07
    ld [$0e09], sp
    rrca
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    inc c
    adc [hl]
    ld c, $32
    inc sp
    ld d, $17
    jr @+$1b

    ld e, $1f

jr_02c_64d1:
    ld a, [de]
    dec de

jr_02c_64d3:
    ld [hl], $37
    ld [hl], $37
    inc c
    xor [hl]
    rrca
    ld bc, $3534
    jr c, jr_02c_6518

    jr nz, jr_02c_6502

    inc c
    adc h
    ld [bc], a
    inc c
    adc $0f
    ld bc, $3736
    ld a, [hl-]

jr_02c_64eb:
    dec sp
    ld [hl+], a
    inc hl
    inc c
    xor h
    ld [bc], a
    inc c
    xor [hl]
    ld c, $04
    dec b
    inc c
    ld [bc], a
    db $10
    jr c, jr_02c_6534

    inc c
    adc h
    nop
    nop
    ld bc, $0302

jr_02c_6502:
    ld [bc], a
    inc bc
    inc c
    ld [de], a
    ld a, [bc]
    inc d
    dec d
    inc c
    ld [hl+], a
    db $10
    ld a, [hl-]
    dec sp
    inc c
    xor h
    nop
    db $10
    ld de, $1312
    ld [de], a
    inc de
    inc c

jr_02c_6518:
    ld [hl-], a
    inc c
    inc b
    dec b
    inc c
    ld b, h
    db $10
    inc c
    ld c, h
    db $10
    inc c
    inc c
    rrca
    inc bc
    inc d
    dec d
    inc c
    ld h, h
    db $10
    inc c
    ld l, h
    db $10
    inc c
    inc l
    rrca
    dec b
    inc c
    ld c, [hl]

jr_02c_6534:
    ld [de], a
    inc c
    ld a, [bc]
    rrca
    rlca
    inc c
    ld l, [hl]
    ld [de], a
    inc c
    ld a, [hl+]
    rrca
    inc bc
    nop
    ld [bc], a
    nop
    jr z, jr_02c_656e

    nop
    nop
    ld c, $ff
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_02c_655f

    nop
    inc d
    ld [$0000], sp
    rrca
    dec l
    ld [$0009], sp
    add b
    ld [bc], a
    inc h
    dec h

jr_02c_655f:
    nop
    ld a, [bc]
    rrca
    inc bc
    jr jr_02c_657e

    nop
    and b
    ld [bc], a
    ld h, $27
    nop
    ld a, [hl+]
    rrca
    inc bc

jr_02c_656e:
    jr nc, jr_02c_65a1

    nop
    ret nz

    ld [bc], a
    nop
    adc b
    rrca
    dec b
    ld [hl-], a
    inc sp
    nop
    ldh [rSC], a
    nop
    xor b

jr_02c_657e:
    rrca
    ld b, l
    ld [bc], a
    inc bc
    nop
    ld b, b
    ld [de], a
    nop
    ld [$050f], sp
    ld [de], a
    inc de
    nop
    ld h, b
    ld [de], a
    nop
    jr z, jr_02c_65a0

    ld b, l
    nop
    add b
    rra
    dec l
    nop
    ld [bc], a
    inc c
    jr z, jr_02c_65c4

    inc c
    nop
    ld c, $ff
    inc c

jr_02c_65a0:
    inc d

jr_02c_65a1:
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02c_65b5

    inc c
    inc d
    ld [$000c], sp
    ld [bc], a
    inc l
    dec l
    ld [$0c09], sp
    ld c, b
    inc b
    inc h

jr_02c_65b5:
    dec h
    inc c
    inc d
    ld c, $2e
    cpl
    jr jr_02c_65d6

    inc c
    ld l, b
    inc b
    ld h, $27
    inc c
    inc d

jr_02c_65c4:
    ld [$500c], sp
    nop
    inc c
    ld b, h
    nop
    inc [hl]
    dec [hl]
    inc c
    adc b
    inc b
    inc c
    ld d, d
    ld a, [bc]
    inc c
    ld [hl], b
    nop

jr_02c_65d6:
    inc c
    ld h, h
    nop
    ld [hl], $37
    inc c
    xor b
    inc b
    inc c
    ld [hl], d
    ld a, [bc]
    jr nc, @+$33

    ld b, $07
    ld [$0a09], sp
    dec bc
    inc [hl]
    dec [hl]
    jr nc, jr_02c_661e

    inc c
    db $ca, $00, $0c

    sub b
    inc c
    ld [hl-], a
    inc sp
    ld d, $17
    jr jr_02c_6612

    ld a, [de]
    dec de
    ld [hl], $37
    ld [hl-], a
    inc sp
    inc c
    ld [$0c00], a
    or b
    ld c, $0c
    nop
    inc d
    nop
    ld bc, $0302
    inc c
    inc c
    db $10
    inc c
    ld [de], a
    ld a, [bc]

jr_02c_6612:
    inc c
    ld [$0c02], a
    ld [$1000], a
    ld de, $1312
    inc c
    inc l

jr_02c_661e:
    db $10
    inc c
    ld [hl-], a
    ld a, [bc]
    inc b
    dec b
    jr c, jr_02c_665f

    jr c, jr_02c_6661

    jr nc, @+$33

    jr c, jr_02c_6665

    inc c
    add d
    nop
    inc c
    ld c, $0e
    inc d
    dec d
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    inc c
    and d
    nop
    inc c
    ld l, $0e
    inc l
    dec l
    inc c
    db $ca, $00, $0c

    ld b, h
    db $10
    inc c
    ld c, d
    rra
    inc bc
    ld l, $2f
    inc c
    ld [$0c00], a
    ld h, h
    db $10
    inc c
    ld l, d
    rra
    inc bc
    jr z, @+$2b

    inc c
    inc c
    ld [de], a

jr_02c_665f:
    inc c
    db $10

jr_02c_6661:
    db $10
    inc c
    inc c
    rrca

jr_02c_6665:
    inc bc
    inc c
    inc l
    ld [de], a
    inc c
    jr nc, jr_02c_667c

    inc c
    inc l
    rrca
    ld bc, $0200
    inc c
    jr z, jr_02c_669e

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca

jr_02c_667c:
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02c_668f

    inc c
    inc d
    ld [$2d2c], sp
    ld [$0c09], sp
    ld b, d
    ld a, [bc]
    inc h
    dec h
    inc c
    inc d

jr_02c_668f:
    ld [$2f2e], sp
    jr jr_02c_66ad

    inc c
    ld h, d
    ld a, [bc]
    ld h, $27
    inc c
    inc d
    ld [$0b0a], sp

jr_02c_669e:
    jr nc, jr_02c_66d1

    inc c
    add d
    nop
    inc [hl]
    dec [hl]
    inc c
    add [hl]
    ld [bc], a
    jr nc, jr_02c_66db

    inc c
    ld d, d
    ld a, [bc]

jr_02c_66ad:
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    inc c
    and d
    nop
    ld [hl], $37
    inc c
    and [hl]
    ld [bc], a
    ld [hl-], a
    inc sp
    inc c
    ld [hl], d
    ld a, [bc]
    inc c
    add d
    nop
    nop
    ld bc, $0302
    inc c
    add $00
    inc b
    dec b
    inc c
    adc [hl]
    ld c, $0c
    and d
    nop
    db $10

jr_02c_66d1:
    ld de, $1312
    inc c
    and $00
    inc d
    dec d
    inc c
    xor [hl]

jr_02c_66db:
    rrca
    inc bc
    ld b, $07
    inc c
    ld c, [hl]
    ld [bc], a
    jr z, jr_02c_670d

    inc c
    add $00
    inc c
    ld [de], a
    ld a, [bc]
    inc c
    and d
    nop
    ld d, $17
    inc c
    ld l, [hl]
    ld [bc], a
    ld a, [hl+]
    dec hl
    inc c
    and $00
    inc c
    ld [hl-], a
    ld a, [bc]
    inc c
    call z, Call_000_3400
    dec [hl]
    jr c, jr_02c_673a

    inc c
    ld [bc], a
    inc d
    inc c
    ld d, b
    inc c
    inc c
    db $ec
    nop
    ld [hl], $37
    ld a, [hl-]

jr_02c_670d:
    dec sp
    inc c
    ld [hl+], a
    inc d
    inc c
    ld [hl], b
    inc c
    jr z, jr_02c_673f

    inc b
    dec b
    inc c
    ld b, [hl]
    db $10
    inc c
    ld b, h
    db $10
    inc c
    ld b, [hl]
    db $10
    inc c
    sub b
    inc c
    ld a, [hl+]
    dec hl
    inc d
    dec d
    inc c
    ld h, [hl]
    db $10
    inc c
    ld h, h
    db $10
    inc c
    ld h, [hl]
    db $10
    inc c
    or b
    inc c
    inc c
    nop
    nop
    inc c
    add $02

jr_02c_673a:
    inc c
    db $c4, $14, $0c
    ld [de], a

jr_02c_673f:
    ld c, $0c
    and $02
    inc c
    db $e4
    inc d
    inc c
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    ld c, $28
    add hl, hl
    ld c, $00
    ld c, $ff
    ld c, $14
    rlca
    ld a, [hl+]
    dec hl
    ld c, $20
    ld c, $0e
    inc d
    ld [$2928], sp
    inc l
    dec l
    ld [$0e09], sp
    ld b, h
    nop
    inc h
    dec h
    ld c, $0c
    rrca
    inc bc
    ld l, $2f
    jr jr_02c_6789

    ld c, $64
    nop
    ld h, $27
    ld c, $2c
    rrca
    ld bc, $0908
    ld a, [bc]
    dec bc
    jr nc, jr_02c_67b0

    ld c, $84
    nop
    ld b, $07
    ld c, $4a
    inc b
    ld c, $14

jr_02c_6789:
    ld [$1918], sp
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld c, $a4
    nop
    ld d, $17
    ld c, $6a
    inc b
    ld c, $14
    ld [$840e], sp
    ld [bc], a
    jr nc, jr_02c_67d1

    jr c, jr_02c_67db

    jr c, jr_02c_67dd

    ld c, $8c
    rrca
    ld bc, $a40e
    ld [bc], a
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]

jr_02c_67b0:
    dec sp
    ld c, $ac
    rrca
    inc bc
    inc c
    dec c
    ld c, $c2
    inc b
    ld c, $cc
    rrca
    inc bc
    inc e
    dec e
    ld c, $e2
    inc b
    ld c, $ac
    rrca
    ld bc, $0302
    inc l
    dec l
    inc [hl]
    dec [hl]
    jr c, jr_02c_6808

    inc [hl]
    dec [hl]

jr_02c_67d1:
    inc [hl]
    dec [hl]
    ld c, $8c
    rrca
    ld bc, $1312
    ld l, $2f

jr_02c_67db:
    ld [hl], $37

jr_02c_67dd:
    ld a, [hl-]
    dec sp
    ld [hl], $37
    ld [hl], $37
    ld c, $ac
    rrca
    ld bc, $000e
    nop
    inc b
    dec b
    jr nc, jr_02c_681f

    inc [hl]
    dec [hl]
    nop
    ld bc, $0c0e
    rrca
    dec b
    inc d
    dec d
    ld [hl-], a
    inc sp
    ld [hl], $37
    db $10
    ld de, $2c0e
    rrca
    inc bc
    ld c, $00
    nop
    ld [bc], a
    inc bc
    ld [bc], a

jr_02c_6808:
    inc bc
    ld c, $0a
    rrca
    add hl, bc
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld c, $2a
    rrca
    inc bc
    nop
    ld [bc], a
    nop
    jr z, jr_02c_6843

    nop
    nop
    ld c, $ff
    nop

jr_02c_681f:
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_02c_6834

    nop
    inc d
    ld [$0000], sp
    nop
    inc l
    dec l
    ld [$0009], sp
    ld b, [hl]
    inc b
    inc h

jr_02c_6834:
    dec h
    nop
    ld [de], a
    ld c, $2e
    cpl
    jr jr_02c_6855

    nop
    ld h, [hl]
    inc b
    ld h, $27
    nop
    ld [hl-], a

jr_02c_6843:
    ld a, [bc]
    nop
    ld c, [hl]
    nop
    inc l
    dec l
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    jr nc, jr_02c_6880

    nop
    adc d
    nop
    nop
    ld d, b
    inc c

jr_02c_6855:
    nop
    ld l, [hl]
    nop
    ld l, $2f
    ld [hl], $37
    ld [hl], $37
    ld [hl-], a
    inc sp
    nop
    xor d
    nop
    nop
    ld [hl], b
    inc c
    jr nc, @+$33

    ld b, $07
    ld c, $0f
    nop
    adc b
    nop
    jr c, jr_02c_68aa

    nop
    adc b
    nop
    nop
    ld d, b
    inc c
    ld [hl-], a
    inc sp
    ld d, $17
    ld e, $1f
    nop
    xor b
    nop

jr_02c_6880:
    ld a, [hl-]
    dec sp
    nop
    xor b
    nop
    nop
    or b
    ld c, $30
    ld sp, $0f0e
    jr nc, @+$33

    inc c
    dec c
    nop
    add [hl]
    ld [bc], a
    nop
    ret nc

    ld c, $32
    inc sp
    ld e, $1f
    ld [hl-], a
    inc sp
    inc e
    dec e
    nop
    and [hl]
    ld [bc], a
    nop
    ld [hl], b
    inc c
    inc b
    dec b
    jr nc, jr_02c_68d9

    jr nz, jr_02c_68cb

jr_02c_68aa:
    inc [hl]
    dec [hl]
    inc h
    dec h
    ld [bc], a
    inc bc
    nop
    ld c, d
    stop
    db $10
    inc c
    inc d
    dec d
    ld [hl-], a
    inc sp
    ld [hl+], a
    inc hl
    ld [hl], $37
    ld h, $27
    ld [de], a
    inc de
    nop
    ld l, d
    stop
    jr nc, jr_02c_68d4

    inc l
    dec l
    nop

jr_02c_68cb:
    adc d
    nop
    nop
    ld b, [hl]
    stop
    ld a, [bc]
    rrca
    inc bc

jr_02c_68d4:
    ld l, $2f
    nop
    xor d
    nop

jr_02c_68d9:
    nop
    ld h, [hl]
    stop
    ld a, [hl+]
    rrca
    dec b
    nop
    ld c, d
    ld d, $00
    inc c
    rrca
    inc bc
    nop
    ld l, d
    ld d, $00
    inc l
    rrca
    ld bc, $0200
    inc c
    jr z, jr_02c_691c

    inc c
    nop
    ld c, $ff
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02c_690d

    inc c
    inc d
    ld [$2928], sp
    inc l
    dec l
    ld [$0c09], sp
    ld b, h
    nop
    inc h
    dec h

jr_02c_690d:
    inc c
    inc c
    rrca
    inc bc
    ld l, $2f
    jr jr_02c_692e

    inc c
    ld h, h
    nop
    ld h, $27
    inc c
    inc l

jr_02c_691c:
    rrca
    dec b
    jr nc, jr_02c_6951

    jr c, jr_02c_695b

    jr c, jr_02c_695d

    inc c
    ld c, d
    ld [bc], a
    inc c
    ld b, d
    nop
    inc c
    ld d, h
    inc c
    ld [hl-], a

jr_02c_692e:
    inc sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    inc c
    ld l, d
    ld [bc], a
    inc c
    ld h, d
    nop
    inc c
    ld [hl], h
    ld c, $34
    dec [hl]
    jr nc, jr_02c_6971

    ld b, $07
    ld c, $0f
    ld [$0a09], sp
    dec bc
    inc [hl]
    dec [hl]
    inc c
    sub h
    ld c, $36
    scf
    ld [hl-], a
    inc sp

jr_02c_6951:
    ld d, $17
    ld e, $1f
    jr jr_02c_6970

    ld a, [de]
    dec de
    ld [hl], $37

jr_02c_695b:
    inc c
    inc [hl]

jr_02c_695d:
    inc c
    inc [hl]
    dec [hl]
    inc c
    inc b
    db $10
    jr nc, jr_02c_6996

    jr nz, jr_02c_6988

    inc c
    db $c4, $00, $0c
    jp nc, $360e

    scf
    inc c

jr_02c_6970:
    inc h

jr_02c_6971:
    db $10
    ld [hl-], a
    inc sp
    ld [hl+], a
    inc hl
    inc c
    db $e4
    nop
    inc c
    ld a, [c]
    inc c
    jr z, jr_02c_69a7

    ld [bc], a
    inc bc
    inc b
    dec b
    jr c, jr_02c_69bd

    inc c
    add $00
    inc c

jr_02c_6988:
    call nz, RST_00
    ld bc, $140c
    inc c
    ld [de], a
    inc de
    inc d
    dec d
    ld a, [hl-]
    dec sp
    inc c

jr_02c_6996:
    and $00
    inc c
    db $e4
    nop
    db $10
    ld de, $340c
    inc e
    inc c
    ld b, b
    inc d
    inc c
    ld c, h
    stop

jr_02c_69a7:
    ld bc, $120c
    rrca
    inc bc
    inc c
    ld h, h
    db $10
    inc c
    ld l, h
    db $10
    db $10
    ld de, $320c
    inc c
    inc c
    nop
    ld b, $02
    inc bc
    ld [bc], a

jr_02c_69bd:
    inc bc
    inc c
    db $10
    rrca
    add hl, bc
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc c
    jr nc, jr_02c_69d5

    nop
    ld [bc], a
    nop
    jr z, jr_02c_69f7

    nop
    nop
    ld c, $ff
    nop
    inc d
    rlca

jr_02c_69d5:
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_02c_69e8

    nop
    inc d
    ld [$0000], sp
    rrca
    scf
    inc l
    dec l
    ld [$0009], sp
    adc h
    ld [bc], a

jr_02c_69e8:
    nop
    inc d
    rrca
    inc bc
    ld l, $2f
    jr jr_02c_6a09

    nop
    xor h
    ld [bc], a
    nop
    ld [hl], h
    rrca
    dec b

jr_02c_69f7:
    jr nc, jr_02c_6a2a

    nop
    db $cc, $02, $00
    sub h
    rrca
    dec b
    ld [hl-], a
    inc sp
    nop
    db $ec
    ld [bc], a
    nop
    or h
    rrca
    ld b, e

jr_02c_6a09:
    jr z, jr_02c_6a34

    ld [bc], a
    inc bc
    nop
    ld c, h
    ld [de], a
    nop
    inc d
    rrca
    dec b
    ld [de], a
    inc de
    nop
    ld l, h
    ld [de], a
    nop
    inc [hl]
    rrca
    ld b, e
    nop
    adc d
    rra
    inc hl
    nop
    ld [bc], a
    inc c
    jr z, jr_02c_6a4f

    inc c
    nop
    ld c, $ff

jr_02c_6a2a:
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02c_6a40

    inc c
    inc d

jr_02c_6a34:
    ld [$000c], sp
    inc b
    inc l
    dec l
    ld [$0c09], sp
    ld c, d
    ld [bc], a
    inc h

jr_02c_6a40:
    dec h
    inc c
    inc d
    rrca
    ld bc, $2f2e
    jr jr_02c_6a62

    inc c
    ld l, d
    ld [bc], a
    ld h, $27
    inc c

jr_02c_6a4f:
    inc [hl]
    inc c
    inc c
    ld c, b
    nop
    ld a, [bc]
    dec bc
    jr nc, jr_02c_6a89

    inc c
    adc d
    ld [bc], a
    ld b, $07
    inc c
    inc d
    inc c
    inc c
    ld l, b

jr_02c_6a62:
    nop
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    inc c
    xor d
    ld [bc], a
    ld d, $17
    inc c
    ld [hl], h
    ld c, $34
    dec [hl]
    inc [hl]
    dec [hl]
    jr nc, jr_02c_6aa6

    inc c
    ret z

    nop
    inc c
    adc d
    nop
    inc c
    sub h
    ld c, $36
    scf
    ld [hl], $37
    ld [hl-], a
    inc sp
    inc c
    add sp, $00
    inc c
    xor d

jr_02c_6a89:
    nop
    inc c
    ld [hl], h
    ld c, $0c
    adc d
    ld [bc], a
    nop
    ld bc, $0302
    inc b
    dec b
    inc c
    jp nc, $010f

    inc c
    xor d
    ld [bc], a
    db $10
    ld de, $1312
    inc d
    dec d
    inc c
    ld a, [c]
    rrca

jr_02c_6aa6:
    rlca
    inc h
    dec h
    inc c
    nop
    nop
    ld [bc], a
    inc bc
    inc c
    inc d
    rra
    dec b
    ld h, $27
    inc c
    jr nz, jr_02c_6ab7

jr_02c_6ab7:
    ld [de], a
    inc de
    inc c
    inc [hl]
    ld c, $02
    inc bc
    inc c
    add [hl]
    db $10
    inc c
    inc c
    rrca
    rlca
    ld [de], a
    inc de
    inc c
    and [hl]
    db $10
    inc c
    inc l
    rrca
    add hl, bc
    inc c
    ld [$250f], sp
    nop
    ld [bc], a
    inc b
    jr z, jr_02c_6b00

    inc b
    nop
    ld c, $ff
    inc b
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc b
    jr nz, jr_02c_6af1

    inc b
    inc d
    ld [$2d2c], sp
    ld [$0409], sp
    ld b, d
    ld a, [bc]
    inc h
    dec h
    inc b
    inc d

jr_02c_6af1:
    ld [$2f2e], sp
    jr jr_02c_6b0f

    inc b
    ld h, d
    ld a, [bc]
    ld h, $27
    inc b
    inc [hl]
    ld a, [bc]
    jr c, jr_02c_6b39

jr_02c_6b00:
    inc b
    add d
    ld a, [bc]
    ld b, $07
    inc b
    ld d, h
    ld a, [bc]
    ld a, [hl-]
    dec sp
    inc b
    and d
    ld a, [bc]
    ld d, $17

jr_02c_6b0f:
    inc b
    inc [hl]
    ld a, [bc]
    jr nc, jr_02c_6b45

    jr nc, jr_02c_6b47

    inc b
    add d
    ld [$3130], sp
    inc b
    ld d, h
    ld a, [bc]
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    inc b
    and d
    ld [$3332], sp
    inc b
    or h
    rrca
    dec sp
    inc b
    add d
    inc c
    nop
    ld bc, $9404
    rrca
    dec bc
    db $10
    ld de, $7404
    rrca

jr_02c_6b39:
    dec bc
    inc b
    ld d, d
    inc c
    inc b
    and d
    inc c
    inc b
    ld [hl], d
    ld a, [bc]
    jr z, jr_02c_6b6e

jr_02c_6b45:
    ld [bc], a
    inc bc

jr_02c_6b47:
    inc b
    jp nz, $041a

    ld [de], a
    inc c
    ld [de], a
    inc de
    inc b
    ld [c], a
    ld a, [de]
    inc b
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    inc b
    jr z, @+$2b

    inc b
    nop
    ld c, $ff
    inc b
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc b
    jr nz, @+$10

    inc b
    inc d
    ld [$2d2c], sp
    ld [$0409], sp

jr_02c_6b6e:
    ld b, d
    inc b
    inc h
    dec h
    inc b
    ld c, $0e
    ld l, $2f
    jr jr_02c_6b92

    inc b
    ld h, d
    inc b
    ld h, $27
    inc b
    ld l, $0f
    ld bc, $3130
    jr nc, jr_02c_6bb7

    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    jr nc, jr_02c_6bbd

    ld c, $0f
    inc b
    ld b, d
    ld [bc], a
    inc b

jr_02c_6b92:
    ld d, h
    ld a, [bc]
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld e, $1f
    inc b
    ld h, d
    ld [bc], a
    inc b
    inc [hl]
    ld a, [bc]
    inc [hl]
    dec [hl]
    jr c, jr_02c_6be3

    inc c
    dec c
    inc b
    add [hl]
    nop
    ld c, $0f
    inc b
    adc b
    nop
    jr nc, jr_02c_6be7

    inc b

jr_02c_6bb7:
    ld d, h
    ld a, [bc]
    ld [hl], $37
    ld a, [hl-]
    dec sp

jr_02c_6bbd:
    inc e
    dec e
    inc b
    and [hl]
    nop
    ld e, $1f
    inc b
    xor b
    nop
    ld [hl-], a
    inc sp
    inc b
    ld [hl], h
    inc c
    inc b
    jp z, $0400

    ld [bc], a
    ld [de], a
    inc b
    adc $0f
    ld bc, $a404
    nop
    ld e, $1f
    inc b
    ld [hl+], a
    ld [de], a
    inc b
    xor $0f
    inc bc
    inc b

jr_02c_6be3:
    adc d
    nop
    jr nc, jr_02c_6c18

jr_02c_6be7:
    jr c, jr_02c_6c22

    jr nz, jr_02c_6c0c

    jr nc, @+$33

    nop
    ld bc, $0302
    inc b
    sub h
    ld c, $04
    ld h, $10
    ld a, [hl-]
    dec sp
    ld [hl+], a
    inc hl
    ld [hl-], a
    inc sp
    db $10
    ld de, $1312
    inc b
    inc d
    ld [$2928], sp
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc l
    dec l

jr_02c_6c0c:
    jr c, jr_02c_6c47

    inc b
    adc b
    db $10
    jr nc, jr_02c_6c44

    inc b
    ld c, h
    nop
    inc b
    inc d

jr_02c_6c18:
    ld a, [bc]
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld l, $2f
    ld a, [hl-]
    dec sp
    inc b

jr_02c_6c22:
    xor b
    db $10
    ld [hl-], a
    inc sp
    inc b
    ld l, h
    nop
    inc b
    ld [hl], h
    ld a, [de]
    inc b
    nop
    ld [bc], a
    inc b
    add d
    db $10
    inc b
    add d
    db $10
    inc b
    db $10
    rrca
    dec b
    inc b
    and d
    db $10
    inc b
    and d
    db $10
    inc b
    jr nc, jr_02c_6c4e

    nop
    ld [bc], a

jr_02c_6c44:
    ld c, $28
    add hl, hl

jr_02c_6c47:
    ld c, $00
    ld c, $ff
    ld c, $14
    rlca

jr_02c_6c4e:
    ld a, [hl+]
    dec hl
    ld c, $20
    ld c, $0e
    inc d
    ld [$000e], sp
    nop
    inc l
    dec l
    ld [$0e09], sp
    ld b, [hl]
    ld [bc], a
    inc h
    dec h
    ld c, $10
    rrca
    ld bc, $2f2e
    jr jr_02c_6c83

    ld c, $66
    ld [bc], a
    ld h, $27
    ld c, $30
    ld c, $2c
    dec l
    ld a, [bc]
    dec bc
    jr c, jr_02c_6cb1

    jr nc, jr_02c_6cab

    jr c, @+$3b

    inc [hl]
    dec [hl]
    ld b, $07
    ld c, $46
    nop

jr_02c_6c83:
    ld c, $14
    ld a, [bc]
    ld l, $2f
    ld a, [de]
    dec de
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    ld [hl], $37
    ld d, $17
    ld c, $66
    nop
    ld c, $74
    inc c
    ld c, $88
    ld [bc], a
    ld c, $86
    nop
    ld c, $cc
    ld [bc], a
    ld c, $94
    inc c
    ld c, $a8
    ld [bc], a
    ld c, $a6

jr_02c_6cab:
    nop
    ld c, $ec
    ld [bc], a
    ld c, $74

jr_02c_6cb1:
    inc c
    inc [hl]
    dec [hl]
    ld c, $c8
    nop
    ld c, $8a
    nop
    jr nc, jr_02c_6ced

    inc c
    dec c
    ld c, $d2
    ld c, $36
    scf
    ld c, $e8
    nop
    ld c, $aa
    nop
    ld [hl-], a
    inc sp
    inc e
    dec e
    ld c, $f2
    inc c
    jr z, jr_02c_6cfb

    inc b
    dec b
    ld c, $cc
    ld [bc], a
    inc [hl]
    dec [hl]
    nop
    ld bc, $2928
    ld [bc], a
    inc bc
    ld c, $14
    inc c
    inc d
    dec d
    ld c, $ec
    ld [bc], a
    ld [hl], $37
    db $10
    ld de, $2b2a

jr_02c_6ced:
    ld [de], a
    inc de
    ld c, $34
    inc c
    ld c, $42
    inc d
    ld c, $4e
    db $10
    ld c, $10
    rrca

jr_02c_6cfb:
    inc bc
    ld c, $64
    ld [de], a
    ld c, $6e
    db $10
    ld c, $30
    rrca
    ld bc, $000e
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld c, $0c
    rrca
    add hl, bc
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld c, $2c
    rrca
    ld bc, $0200
    inc c
    jr z, jr_02c_6d47

    inc c
    nop
    nop
    inc l
    dec l
    jr nc, jr_02c_6d56

    jr nc, jr_02c_6d58

    inc h
    dec h
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc c
    jr nz, jr_02c_6d35

jr_02c_6d35:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_02c_6d42

    inc c
    inc d

jr_02c_6d42:
    ld [$000c], sp
    rrca
    dec l

jr_02c_6d47:
    ld [$0c09], sp
    add b
    nop
    ld a, [bc]
    dec bc
    inc c
    ld [$0600], sp
    rlca
    inc c
    add b
    ld [bc], a

jr_02c_6d56:
    inc c
    inc d

jr_02c_6d58:
    ld [$1918], sp
    inc c
    and b
    nop
    ld a, [de]
    dec de
    inc c
    jr z, jr_02c_6d63

jr_02c_6d63:
    ld d, $17
    inc c
    and b
    ld [bc], a
    inc c
    inc d
    ld [$080c], sp
    nop
    inc c
    ret nz

    inc c
    inc c
    inc d
    ld [$280c], sp
    nop
    inc c
    ldh [$0c], a
    inc c
    or h
    rrca
    add hl, sp
    ld [bc], a
    inc bc
    inc c
    ld b, b
    db $10
    inc b
    dec b
    inc c
    ld [$0000], sp
    ld bc, $400c
    ld [de], a
    inc c
    inc d
    ld [$1312], sp
    inc c
    ld h, b
    db $10
    inc d
    dec d
    inc c
    jr z, jr_02c_6d9a

jr_02c_6d9a:
    db $10
    ld de, $600c
    ld [de], a
    inc c
    inc [hl]
    rrca
    add hl, sp
    inc c
    add b
    rra
    dec l
    nop
    ld [bc], a
    ld b, $28
    add hl, hl
    ld b, $00
    ld c, $ff
    ld b, $14
    rlca
    ld a, [hl+]
    dec hl
    ld b, $20
    ld c, $06
    inc d
    ld [$0006], sp
    rrca
    dec l
    ld [$0609], sp
    add b
    ld c, $06
    inc d
    ld [$1918], sp
    ld b, $a0
    ld c, $06
    inc d
    ld [$3130], sp
    ld b, $c0
    ld c, $06
    inc d
    ld [$3332], sp
    ld b, $e0
    ld c, $06
    or h
    rrca
    add hl, sp
    ld [bc], a
    inc bc
    ld b, $40
    db $10
    inc b
    dec b
    ld b, $c0
    nop
    nop
    ld bc, $4006
    ld [de], a
    ld b, $14
    ld [$1312], sp
    ld b, $60
    db $10
    inc d
    dec d
    ld b, $e0
    nop
    db $10
    ld de, $6006
    ld [de], a
    ld b, $34
    ld c, $2c
    dec l
    ld b, $c0
    nop
    inc h
    dec h
    ld b, $0e
    rrca
    dec b
    ld l, $2f
    ld b, $e0
    nop
    ld h, $27
    ld b, $2e
    rrca
    dec b
    ld b, $86
    rra
    daa
    nop
    ld [bc], a
    nop
    jr z, jr_02c_6e4c

    nop
    nop
    nop
    inc l
    dec l
    jr nc, jr_02c_6e5b

    jr nc, jr_02c_6e5d

    inc h
    dec h
    nop
    nop
    ld [bc], a
    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_02c_6e3a

jr_02c_6e3a:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_02c_6e47

    nop
    inc d

jr_02c_6e47:
    ld [$0000], sp
    rrca
    dec l

jr_02c_6e4c:
    ld [$0009], sp
    add b
    nop
    ld a, [bc]
    dec bc
    nop
    ld [$0600], sp
    rlca
    nop
    add b
    ld [bc], a

jr_02c_6e5b:
    nop
    inc d

jr_02c_6e5d:
    ld [$1918], sp
    nop
    and b
    nop
    ld a, [de]
    dec de
    nop
    jr z, jr_02c_6e68

jr_02c_6e68:
    ld d, $17
    nop
    and b
    ld [bc], a
    nop
    inc d
    ld [$0800], sp
    nop
    nop
    ret nz

    inc c
    nop
    inc d
    ld [$2800], sp
    nop
    nop
    ldh [$0c], a
    nop
    or h
    rrca
    add hl, sp
    ld [bc], a
    inc bc
    nop
    ld b, b
    ld e, $00
    inc d
    ld [$1312], sp
    nop
    ld h, b
    ld e, $00
    inc [hl]
    ld c, $00
    add b
    ld a, [de]
    nop
    inc d
    ld c, $00
    and b
    ld a, [de]
    nop
    ld [hl], h
    rra
    add hl, sp
    nop
    ld [bc], a
    inc b
    jr z, jr_02c_6ece

    inc b
    nop
    nop
    inc l
    dec l
    jr nc, jr_02c_6edd

    jr nc, jr_02c_6edf

    inc h
    dec h
    inc b
    nop
    ld [bc], a
    rst $38
    inc b
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc b
    jr nz, jr_02c_6ebc

jr_02c_6ebc:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    inc b
    jr nz, jr_02c_6ec9

    inc b
    inc d

jr_02c_6ec9:
    ld [$0004], sp
    rrca
    add hl, sp

jr_02c_6ece:
    ld b, $07
    ld [$0409], sp
    adc [hl]
    nop
    inc b
    inc d
    rrca
    dec b
    ld d, $17
    jr jr_02c_6ef6

jr_02c_6edd:
    inc b
    xor [hl]

jr_02c_6edf:
    nop
    inc b
    inc [hl]
    rrca
    dec b
    inc b
    ret z

    inc b
    inc b
    inc d
    rrca
    dec b
    inc b
    add sp, $04
    inc b
    or h
    rrca
    ld b, l
    nop
    ld bc, $0302

jr_02c_6ef6:
    inc b
    ld c, [hl]
    db $10
    inc b
    inc d
    rrca
    dec b
    db $10
    ld de, $1312
    inc b
    ld l, [hl]
    db $10
    inc b
    inc [hl]
    rrca
    ld b, l
    inc b
    adc h
    rra
    ld hl, $0200
    nop
    jr z, jr_02c_6f3a

    nop
    nop
    nop
    inc l
    dec l
    jr nc, jr_02c_6f49

    jr nc, jr_02c_6f4b

    inc h
    dec h
    nop
    nop
    ld [bc], a
    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_02c_6f28

jr_02c_6f28:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_02c_6f35

    nop
    inc d

jr_02c_6f35:
    ld [$0000], sp
    rrca
    dec l

jr_02c_6f3a:
    ld [$0009], sp
    add b
    nop
    ld a, [bc]
    dec bc
    nop
    ld [$050f], sp
    jr jr_02c_6f60

    nop
    and b

jr_02c_6f49:
    nop
    ld a, [de]

jr_02c_6f4b:
    dec de
    nop
    jr z, jr_02c_6f5e

    dec b
    nop
    ld [$0000], sp
    ret nz

    inc b
    nop
    inc c
    rrca
    ld bc, $2800
    nop
    nop

jr_02c_6f5e:
    ldh [rDIV], a

jr_02c_6f60:
    nop
    xor h
    rrca
    ld b, c
    ld [bc], a
    inc bc
    nop
    ld b, b
    db $10
    inc b
    dec b
    nop
    ld [$050f], sp
    ld [de], a
    inc de
    nop
    ld h, b
    db $10
    inc d
    dec d
    nop
    jr z, jr_02c_6f88

    ld b, l
    nop
    add b
    rra
    dec l
    nop
    ld [bc], a
    nop
    jr z, jr_02c_6fac

    nop
    nop
    ld c, $ff
    nop

jr_02c_6f88:
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_02c_6f9d

    nop
    inc d
    ld [$0000], sp
    rrca
    dec l
    ld [$0009], sp
    add b
    ld c, $00
    inc d

jr_02c_6f9d:
    ld [$1918], sp
    nop
    and b
    ld c, $00
    inc d
    ld [$3130], sp
    nop
    ret nz

    ld c, $00

jr_02c_6fac:
    inc d
    ld [$3332], sp
    nop
    ldh [$0e], a
    nop
    or h
    rrca
    add hl, sp
    ld [bc], a
    inc bc
    nop
    ld b, b
    ld e, $00
    inc d
    ld [$1312], sp
    nop
    ld h, b
    ld e, $00
    inc [hl]
    rrca
    add hl, sp
    nop
    add b
    rra
    dec l
    nop
    ld [bc], a
    inc b
    jr z, @+$2b

    inc b
    nop
    ld c, $ff
    inc b
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc b
    jr nz, @+$10

    inc b
    inc d
    ld [$0004], sp
    rrca
    inc sp
    inc l
    dec l
    ld [$0409], sp
    adc b
    ld b, $04
    inc d
    ld c, $2e
    cpl
    jr jr_02c_700b

    inc b
    xor b
    ld b, $04
    ld [hl], h
    rrca
    ld bc, $3130
    inc b
    ret z

    ld b, $04
    sub h
    rrca
    ld bc, $3332
    inc b
    add sp, $06
    inc b
    or h
    rrca
    ld b, l

jr_02c_700b:
    nop
    ld bc, $0302
    inc b
    ld c, [hl]
    db $10
    inc b
    db $d4, $0f, $05
    db $10
    ld de, $1312
    inc b
    ld l, [hl]
    db $10
    inc b
    or h
    rrca
    dec b
    inc h
    dec h
    inc b
    ld c, $0f
    dec b
    inc b
    and $02
    ld h, $27
    inc b
    ld l, [hl]
    rrca
    rlca
    inc b
    adc b
    rra
    dec h
    nop
    ld [bc], a
    nop
    jr z, jr_02c_7062

    nop
    nop
    ld c, $ff
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_02c_7053

    nop
    inc d
    ld [$0000], sp
    rrca
    dec l
    ld [$0009], sp
    add b
    ld b, $24
    dec h

jr_02c_7053:
    nop
    ld c, $0e
    jr jr_02c_7071

    nop
    and b
    ld b, $26
    daa
    nop
    ld l, $0e
    jr nc, @+$33

jr_02c_7062:
    nop
    ret nz

    ld b, $00
    adc h
    rrca
    ld bc, $3332
    nop
    ldh [rTMA], a
    nop
    xor h
    rrca

jr_02c_7071:
    ld b, c
    ld [bc], a
    inc bc
    nop
    ld b, b
    db $10
    inc b
    dec b
    nop
    ret z

    rrca
    dec b
    ld [de], a
    inc de
    nop
    ld h, b
    db $10
    inc d
    dec d
    nop
    add sp, $0f
    dec b
    nop
    nop
    ld [bc], a
    inc l
    dec l
    nop
    ret z

    rrca
    dec b
    nop
    jr nz, jr_02c_7096

    ld l, $2f

jr_02c_7096:
    nop
    ld l, b
    rra
    ld b, l
    nop
    ld [bc], a
    nop
    jr z, jr_02c_70c8

    nop
    nop
    nop
    inc l
    dec l
    jr nc, jr_02c_70d7

    jr nc, jr_02c_70d9

    inc h
    dec h
    nop
    nop
    ld [bc], a
    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_02c_70b6

jr_02c_70b6:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_02c_70c3

    nop
    inc d

jr_02c_70c3:
    ld [$0000], sp
    rrca
    add hl, sp

jr_02c_70c8:
    ld b, $07
    ld [$0009], sp
    adc [hl]
    nop
    nop
    inc d
    rrca
    dec b
    ld d, $17
    jr jr_02c_70f0

jr_02c_70d7:
    nop
    xor [hl]

jr_02c_70d9:
    nop
    nop
    inc [hl]
    rrca
    dec b
    nop
    ret z

    inc b
    nop
    inc d
    rrca
    dec b
    nop
    add sp, $04
    nop
    or h
    rrca
    ccf
    jr z, jr_02c_7117

    ld [bc], a
    inc bc

jr_02c_70f0:
    nop
    ld c, b
    ld d, $00
    inc d
    ld c, $2a
    dec hl
    ld [de], a
    inc de
    nop
    ld l, b
    ld d, $00
    inc [hl]
    rra
    ld bc, $8000
    jr jr_02c_7105

jr_02c_7105:
    ld d, h
    rra
    ld bc, $a000
    jr jr_02c_710c

jr_02c_710c:
    ld [hl], h
    rra
    add hl, sp
    nop
    ld [bc], a
    nop
    jr z, jr_02c_713d

    nop
    nop
    nop

jr_02c_7117:
    inc l
    dec l
    jr nc, jr_02c_714c

    jr nc, jr_02c_714e

    inc h
    dec h
    nop
    nop
    ld [bc], a
    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_02c_712b

jr_02c_712b:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_02c_7138

    nop
    inc d

jr_02c_7138:
    ld [$0000], sp
    rrca
    dec l

jr_02c_713d:
    ld [$0009], sp
    add b
    nop
    ld a, [bc]
    dec bc
    nop
    ld [$050f], sp
    jr jr_02c_7163

    nop
    and b

jr_02c_714c:
    nop
    ld a, [de]

jr_02c_714e:
    dec de
    nop
    jr z, jr_02c_7161

    dec b
    nop
    ld [$0000], sp
    ret nz

    inc b
    nop
    inc c
    rrca
    ld bc, $2800
    nop
    nop

jr_02c_7161:
    ldh [rDIV], a

jr_02c_7163:
    nop
    xor h
    rrca
    ld b, c
    ld [bc], a
    inc bc
    nop
    ld b, b
    ld d, $00
    nop
    ld [bc], a
    nop
    ld [de], a
    ld a, [bc]
    ld [de], a
    inc de
    nop
    ld h, b
    ld d, $00
    jr nz, jr_02c_717c

    nop
    ld [hl-], a

jr_02c_717c:
    rrca
    ld bc, $8000
    ld a, [de]
    nop
    inc d
    ld c, $00
    and b
    ld a, [de]
    nop
    ld [hl], h
    rra
    add hl, sp
    nop
    ld [bc], a
    nop
    jr z, jr_02c_71b9

    nop
    nop
    nop
    inc l
    dec l
    jr nc, jr_02c_71c8

    jr nc, jr_02c_71ca

    inc h
    dec h
    nop
    nop
    ld [bc], a
    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_02c_71a7

jr_02c_71a7:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_02c_71b4

    nop
    inc d

jr_02c_71b4:
    ld [$0000], sp
    rrca
    ld c, l

jr_02c_71b9:
    nop
    ld h, b
    rrca
    ld c, l
    nop
    ret nz

    rrca
    ld c, l
    nop
    jr nz, jr_02c_71e3

    ld c, l
    nop
    add b
    rra

jr_02c_71c8:
    dec l
    nop

jr_02c_71ca:
    ld [bc], a
    nop
    jr z, jr_02c_71f7

    nop
    nop
    nop
    inc l
    dec l
    jr nc, jr_02c_7206

    jr nc, jr_02c_7208

    inc h
    dec h
    nop
    nop
    ld [bc], a
    rst $38
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop

jr_02c_71e3:
    jr nz, jr_02c_71e5

jr_02c_71e5:
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld h, $27
    nop
    jr nz, jr_02c_71f2

    nop
    inc d

jr_02c_71f2:
    ld [$0000], sp
    rrca
    ld c, l

jr_02c_71f7:
    nop
    ld h, b
    rrca
    ld c, l
    nop
    ret nz

    rrca
    ld c, l
    nop
    jr nz, jr_02c_7221

    ld c, l
    nop
    ld b, b
    ld [de], a

jr_02c_7206:
    jr z, jr_02c_7231

jr_02c_7208:
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    nop
    ret nz

    inc d
    nop
    ld d, h
    ld e, $2a
    dec hl
    ld [de], a
    inc de
    ld [de], a
    inc de
    nop
    ldh [rNR14], a
    nop
    ld d, h
    jr jr_02c_721f

jr_02c_721f:
    ld [bc], a
    nop

jr_02c_7221:
    jr z, jr_02c_724c

    nop
    nop
    ld c, $ff
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_02c_723d

    nop
    inc d

jr_02c_7231:
    ld [$0000], sp
    ld [bc], a
    inc l
    dec l
    ld [$0809], sp
    add hl, bc
    inc h
    dec h

jr_02c_723d:
    nop
    ld c, $0f
    dec b
    ld l, $2f
    jr jr_02c_725e

    jr @+$1b

    ld h, $27
    nop
    ld l, $0f

jr_02c_724c:
    rlca
    jr nc, jr_02c_7280

    jr nc, @+$33

    nop
    ld c, h
    rrca
    add hl, bc
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    nop
    ld l, h
    rrca
    ld c, l
    nop

jr_02c_725e:
    call z, Call_02c_4d0f
    nop
    inc l
    rra
    ld c, l
    nop
    adc h
    rra
    ld hl, $0200
    nop
    jr z, jr_02c_7297

    nop
    nop
    ld c, $ff
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_02c_7288

    nop
    inc d
    ld [$0000], sp
    rrca

jr_02c_7280:
    dec l
    ld [$0009], sp
    add b
    inc c
    inc h
    dec h

jr_02c_7288:
    nop
    inc d
    ld [$1918], sp
    nop
    and b
    inc c
    ld h, $27
    nop
    inc d
    ld [$3130], sp

jr_02c_7297:
    nop
    ret nz

    inc c
    nop
    sub d
    ld a, [bc]
    ld [hl-], a
    inc sp
    nop
    ldh [$0c], a
    nop
    or d
    rrca
    dec sp
    ld [bc], a
    inc bc
    nop
    ld b, b
    inc e
    nop
    ld [de], a
    ld a, [bc]
    ld [de], a
    inc de
    nop
    ld h, b
    inc e
    nop
    ld [hl-], a
    rrca
    dec sp
    nop
    add b
    rra
    dec l
    nop
    ld [bc], a
    nop
    jr z, jr_02c_72e9

    nop
    nop
    ld c, $ff
    nop
    inc d
    rlca
    ld a, [hl+]
    dec hl
    nop
    jr nz, jr_02c_72da

    nop
    inc d
    ld [$0000], sp
    rrca
    dec l
    inc l
    dec l
    ld [$0009], sp
    add d
    inc c

jr_02c_72da:
    nop
    inc d
    ld [$2f2e], sp
    jr jr_02c_72fa

    nop
    and d
    inc c
    nop
    ld [hl], h
    ld a, [bc]
    jr nc, jr_02c_731a

jr_02c_72e9:
    nop
    db $c2, $0c, $00

    sub h
    ld a, [bc]
    ld [hl-], a
    inc sp
    nop
    ld [c], a
    inc c
    nop
    or h
    rrca
    add hl, sp
    jr z, @+$2b

jr_02c_72fa:
    ld [bc], a
    inc bc
    nop
    ld b, d
    inc e
    nop
    inc d
    ld a, [bc]
    ld [de], a
    inc de
    nop
    ld h, d
    inc e
    nop
    inc [hl]
    rrca
    add hl, sp
    nop
    add b
    rra
    dec l
    nop
    ld [bc], a
    nop
    jr nc, @+$33

    nop
    nop
    ld c, $ff
    nop
    inc d

jr_02c_731a:
    rlca
    ld [hl-], a
    inc sp
    nop
    jr nz, jr_02c_732e

    nop
    inc d
    ld [$3130], sp
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    nop
    nop
    ld [bc], a
    nop
    ld b, h

jr_02c_732e:
    nop
    nop
    ld b, d
    nop
    nop
    inc d
    ld a, [bc]
    ld [hl], $37
    ld [hl], $37
    nop
    jr nz, jr_02c_733e

    nop
    ld h, h

jr_02c_733e:
    nop
    nop
    ld h, d
    nop
    nop
    inc d
    ld [$4400], sp
    ld [bc], a
    nop
    ld b, d
    inc b
    nop
    ld b, h
    ld [bc], a
    nop
    inc d
    ld [$6400], sp
    ld [bc], a
    nop
    ld h, d
    inc b
    nop
    ld h, h
    ld [bc], a
    nop
    inc [hl]
    inc c
    jr c, jr_02c_7398

    nop
    ld c, d
    ld [bc], a
    nop
    db $c4, $02, $00
    ld d, d
    ld c, $3a
    dec sp
    nop
    ld l, d
    ld [bc], a
    nop
    db $e4
    ld [bc], a
    nop
    ld [hl], d
    ld a, [bc]
    nop
    add $04
    nop
    call nz, RST_00
    adc h
    rrca
    ld bc, $e600
    inc b
    nop
    db $e4
    nop
    nop
    xor h
    rrca
    dec b
    nop
    jp nz, RST_00

    adc b
    rrca
    dec b
    nop
    ld h, b
    ld [bc], a
    ld a, [hl-]
    dec sp
    nop
    xor b
    rrca
    rlca
    nop

jr_02c_7398:
    ld c, b
    ld [$0e00], sp
    rrca
    dec b
    nop
    ld l, h
    inc b
    nop
    ld l, $0f
    ld bc, $0000
    ld b, $00
    adc h
    rra
    rlca
    nop
    ld h, [hl]
    ld b, $00
    jr nc, jr_02c_73be

    nop
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    dec bc
    jr nc, @+$33

    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc [hl]
    dec [hl]

jr_02c_73be:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $07
    rst $38
    ld [bc], a
    inc d
    rlca
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [hl], $37
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld d, $17
    ld [bc], a
    inc d
    ld [$0802], sp
    ld b, $02
    ld [$3402], sp
    dec [hl]
    inc [hl]
    dec [hl]
    ld [bc], a
    inc d
    ld [$2802], sp
    ld b, $02
    jr z, jr_02c_73ed

    ld [hl], $37

jr_02c_73ed:
    ld [hl], $37
    ld [bc], a
    inc [hl]
    ld a, [bc]
    ld [bc], a
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    add b
    inc b
    jr c, jr_02c_7433

    jr nc, jr_02c_742d

    ld [bc], a
    ld d, h
    ld a, [bc]
    ld [bc], a
    ld l, [hl]
    ld [bc], a
    ld [bc], a
    and b
    inc b
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    ld [bc], a
    ld [hl], h
    inc c
    ld [bc], a
    add b
    ld b, $38
    add hl, sp
    ld [bc], a
    sub b
    rrca
    ld bc, $a002
    ld b, $3a
    dec sp
    ld [bc], a
    or b
    ld c, $02
    ld c, h
    inc b
    ld [bc], a
    ld b, $02
    ld [bc], a
    sub b
    ld c, $02
    ld l, h
    inc b
    ld [bc], a
    ld h, $02
    ld [bc], a

jr_02c_742d:
    or b
    rrca
    ld bc, $5002
    nop

jr_02c_7433:
    ld [bc], a
    add h
    ld [$9402], sp
    rrca
    ld bc, $a402
    ld [$7402], sp
    ld c, $02
    nop
    ld a, [de]
    ld [bc], a
    sub h
    ld c, $02
    jr nz, @+$1c

    ld [bc], a
    inc d
    ld [$0504], sp
    ld [bc], a
    ld b, d
    ld b, $02
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $1402
    ld [$1514], sp
    ld [bc], a
    ld h, d
    ld b, $02
    ld [hl+], a
    ld [bc], a
    db $10
    ld de, $1402
    ld [$0200], sp
    nop
    ld [$0009], sp
    nop
    nop
    ld a, [bc]
    dec bc
    jr nc, @+$33

    jr nc, jr_02c_74a5

    ld b, $07
    nop
    nop
    ld [bc], a
    rst $38
    nop
    inc d
    rlca
    jr @+$1b

    nop
    jr nz, jr_02c_7482

jr_02c_7482:
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld d, $17
    nop
    jr nz, jr_02c_748f

    nop
    inc d

jr_02c_748f:
    ld [$3130], sp
    jr c, @+$3b

    jr c, jr_02c_74cf

    nop
    ld [$0000], sp
    ld [$0000], sp
    ld b, h
    ld [bc], a
    nop
    inc d
    ld [$3332], sp
    ld a, [hl-]

jr_02c_74a5:
    dec sp
    ld a, [hl-]
    dec sp
    nop
    jr z, jr_02c_74ab

jr_02c_74ab:
    nop
    jr z, jr_02c_74ae

jr_02c_74ae:
    nop
    ld h, h
    ld [bc], a
    nop
    inc [hl]
    inc c
    nop
    ld c, h
    inc b
    nop
    ld c, h
    rrca
    dec b
    nop
    ld l, h
    inc b
    nop
    ld l, h
    rrca
    dec b
    nop
    add d
    ld [bc], a
    nop
    ld b, d
    ld b, $00
    ld d, h
    rrca
    ld bc, $6200
    nop

jr_02c_74cf:
    nop
    ld h, h
    inc b
    nop
    inc [hl]
    ld a, [bc]
    nop
    ld b, b
    ld [$4e00], sp
    rrca
    ld bc, $6000
    ld [$6e00], sp
    rrca
    ld bc, $0000
    inc d
    nop
    db $c2, $04, $00

    ld [de], a
    ld e, $00
    and $04
    nop
    and d
    inc b
    nop
    inc [hl]
    ld e, $00
    ld b, b
    ld d, $00
    db $10
    rra
    ld bc, $6600
    ld b, $00
    ld l, $1f
    dec b
    nop
    ret nz

    ld a, [de]
    nop
    sub h
    rra
    dec b
    nop
    ld h, [hl]
    inc b
    nop
    inc d
    ld [$0200], sp
    ld [bc], a
    inc [hl]
    dec [hl]
    ld [bc], a
    nop
    ld [bc], a
    jr nc, jr_02c_754b

    ld [bc], a
    nop
    inc b
    inc h
    dec h
    rst $38
    ld [bc], a
    inc d
    rlca
    ld [hl], $37
    ld [bc], a
    jr nz, jr_02c_752a

    ld [hl-], a
    inc sp

jr_02c_752a:
    ld [bc], a
    jr nz, jr_02c_7531

    ld h, $27
    ld [bc], a
    inc d

jr_02c_7531:
    ld [$3130], sp
    ld [bc], a
    ld b, b
    nop
    inc [hl]
    dec [hl]
    jr c, @+$3b

    ld [bc], a
    ld b, b
    inc b
    ld [bc], a
    ld [de], a
    ld a, [bc]
    ld [hl-], a
    inc sp
    ld [bc], a
    ld h, b
    nop
    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld [bc], a

jr_02c_754b:
    ld h, b
    inc b
    ld [bc], a
    ld [hl-], a
    rrca
    dec b
    ld [bc], a
    adc b
    ld [bc], a
    inc [hl]
    dec [hl]
    ld b, $07
    ld [bc], a
    ld d, h
    rrca
    inc bc
    ld [bc], a
    xor b
    ld [bc], a
    ld [hl], $37
    ld d, $17
    ld [bc], a
    inc [hl]
    inc c
    ld [bc], a
    nop
    nop
    ld [bc], a
    adc d
    inc b
    ld [bc], a
    ld b, $00
    ld [bc], a
    ld d, h
    inc c
    ld [bc], a
    jr nz, jr_02c_7575

jr_02c_7575:
    ld [bc], a
    xor d
    inc b
    ld [bc], a
    ld h, $00
    ld [bc], a
    inc [hl]
    ld a, [bc]
    ld [bc], a
    call nz, $0202
    ret nz

    inc b
    ld [bc], a
    ld b, b
    nop
    ld [bc], a
    ld d, h
    ld a, [bc]
    ld [bc], a
    db $e4
    ld [bc], a
    ld [bc], a
    ldh [rDIV], a
    ld [bc], a
    ld h, b
    nop
    ld [bc], a
    db $f4
    inc c
    ld [bc], a
    adc b
    ld [bc], a
    ld [bc], a
    ld [$0200], sp
    ld b, b
    nop
    nop
    ld bc, $1402
    inc e
    ld [bc], a
    xor b
    ld [bc], a
    ld [bc], a
    jr z, jr_02c_75aa

jr_02c_75aa:
    ld [bc], a
    ld h, b
    nop
    db $10
    ld de, $f402
    inc c
    ld [bc], a
    ld b, b
    ld [bc], a
    ld [bc], a
    adc [hl]
    nop
    ld [bc], a
    ld b, b
    nop
    ld [bc], a
    ld d, d
    inc c
    ld [bc], a
    ld l, $12
    ld [hl-], a
    inc sp
    ld [bc], a
    xor [hl]
    nop
    ld [bc], a
    ld h, b
    nop
    ld [bc], a
    ld [hl-], a
    inc c
    ld [bc], a
    add d
    inc d
    ld [bc], a
    ld c, d
    inc d
    ld [bc], a
    sub d
    rra
    dec b
    ld [bc], a
    ld l, d
    inc d
    ld [bc], a
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    ld b, $30
    ld sp, $3130
    inc [hl]
    dec [hl]
    ld b, $00
    nop
    ld b, $06
    ld b, $ff
    ld b, $14
    rlca
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld b, $20
    nop
    ld b, $26
    ld b, $06
    inc d
    ld [$0606], sp
    ld [$0406], sp
    nop
    ld b, $04
    nop
    ld b, $14
    inc c
    ld b, $26
    inc b
    ld b, $24
    nop
    ld b, $24
    nop
    ld b, $34
    inc c
    ld b, $04
    ld [bc], a
    ld b, $04
    ld b, $06
    inc d
    rrca
    inc bc
    ld b, $24
    ld b, $06
    inc [hl]
    rrca
    dec b
    jr nc, jr_02c_765a

    jr c, jr_02c_7664

    ld b, $10
    rrca
    ld bc, $2606
    ld b, $3a
    dec sp
    ld b, $30
    rrca
    ld bc, $ce06
    nop
    ld b, $04
    inc b
    ld b, $ce
    nop
    ld b, $14
    inc c
    ld b, $ee
    nop
    ld b, $24
    inc b
    ld b, $ee
    nop
    ld b, $34
    rrca
    add hl, bc
    ld b, $d0
    rrca
    add hl, bc
    ld b, $24
    inc b
    ld b, $34

jr_02c_765a:
    ld a, [bc]
    ld b, $04
    jr @+$08

    ld c, $1f
    ld bc, $2406

jr_02c_7664:
    jr jr_02c_766c

    ld l, $1e
    ld [bc], a
    inc bc
    ld b, $c0

jr_02c_766c:
    db $10
    inc b
    dec b
    ld b, $00
    nop
    nop
    ld bc, $c006
    ld [de], a
    ld b, $14
    ld [$1312], sp
    ld b, $e0
    db $10
    inc d
    dec d
    ld b, $20
    nop
    db $10
    ld de, $e006
    ld [de], a
    ld b, $14
    ld [$0200], sp
    nop
    inc l
    dec l
    jr nc, jr_02c_76c4

    nop
    ld [bc], a
    inc c
    rst $38
    nop
    inc d
    rlca
    ld l, $2f
    ld [hl-], a
    inc sp
    nop
    ld [hl+], a
    inc c
    nop
    inc d
    ld [$0000], sp
    rrca
    dec l
    ld a, [bc]
    dec bc
    nop
    ld [bc], a
    rrca
    dec bc
    ld a, [de]
    dec de
    nop
    ld [hl+], a
    rrca
    dec bc
    nop
    ld [bc], a
    ld c, $00
    ld [de], a
    ld a, [bc]
    nop
    ld [hl+], a
    ld c, $00
    or d
    rrca
    dec sp
    inc b
    dec b
    nop

jr_02c_76c4:
    ld [bc], a
    rrca
    dec bc
    inc d
    dec d
    nop
    ld [hl+], a
    rrca
    ld c, e
    nop
    add b
    rra
    dec l
    nop
    ld [bc], a
    nop
    ld a, [bc]
    dec bc
    jr nc, jr_02c_7709

    nop
    ld [bc], a
    inc c
    rst $38
    nop
    inc d
    rlca
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    nop
    ld [hl+], a
    inc c
    nop
    inc d
    ld [$3534], sp
    jr nc, jr_02c_771e

    jr c, jr_02c_7728

    nop
    ld b, h
    ld [bc], a
    nop
    ld b, d
    ld [bc], a
    nop
    ld [de], a
    ld a, [bc]
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    nop
    ld h, h
    ld [bc], a
    nop
    ld h, d
    ld [bc], a
    nop
    ld [hl-], a
    ld c, $00
    ld [bc], a

jr_02c_7709:
    inc b
    nop
    ld c, d
    nop
    nop
    db $10
    inc c
    nop
    ld h, b
    nop
    nop
    ld [hl+], a
    inc b
    nop
    ld l, d
    nop
    nop
    jr nc, jr_02c_772a

    nop
    ret nz

jr_02c_771e:
    nop
    nop
    add h
    ld a, [bc]
    nop
    ld d, h
    ld a, [bc]
    nop
    ldh [rP1], a

jr_02c_7728:
    nop
    and h

jr_02c_772a:
    ld a, [bc]
    nop
    inc d
    ld [$0200], sp
    nop
    nop
    ld b, b
    nop
    nop
    add b
    ld [$1400], sp
    ld [$2200], sp
    nop
    nop
    ld h, b
    nop
    nop
    and b
    ld [$f400], sp
    inc c
    nop
    ld [bc], a
    inc e
    nop
    inc d
    inc e
    nop
    ld [hl+], a
    inc e
    nop
    db $f4
    ld a, [bc]
    nop
    add b
    ld [bc], a
    nop
    inc b
    jr jr_02c_7759

jr_02c_7759:
    inc d
    ld a, [de]
    nop
    and b
    ld [bc], a
    nop
    inc h
    jr jr_02c_7762

jr_02c_7762:
    db $f4
    rrca
    ld bc, $4000
    ld d, $00
    ld [de], a
    rra
    inc bc
    nop
    ld h, b
    ld d, $00
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    nop
    jr nc, jr_02c_77a8

    inc [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    ld b, $02
    nop
    nop
    nop
    ld b, $07
    rst $38
    nop
    inc d
    rlca
    ld [hl-], a
    inc sp
    ld [hl], $37
    nop
    jr nz, jr_02c_778f

jr_02c_778f:
    nop
    ld h, $02
    nop
    jr nz, jr_02c_7795

jr_02c_7795:
    ld d, $17
    nop
    inc d
    ld [$3130], sp
    nop
    nop
    ld [bc], a
    nop
    ld b, [hl]
    inc b
    jr c, jr_02c_77dd

    inc [hl]
    dec [hl]
    nop
    inc d

jr_02c_77a8:
    ld a, [bc]
    nop
    jr nz, jr_02c_77ae

    nop
    ld h, [hl]

jr_02c_77ae:
    inc b
    ld a, [hl-]
    dec sp
    ld [hl], $37
    nop
    inc [hl]
    rrca
    dec b
    jr c, jr_02c_77f2

    nop
    ld c, [hl]
    rrca
    dec bc
    ld a, [hl-]
    dec sp
    nop
    ld l, [hl]
    rrca
    dec bc
    inc [hl]
    dec [hl]
    jr c, @+$3b

    nop
    ld d, b
    rrca
    add hl, bc
    ld [hl], $37
    ld a, [hl-]
    dec sp
    nop
    ld [hl], b
    rrca
    inc bc
    nop
    ld [$0004], sp
    adc $0f
    dec b
    nop
    jr z, jr_02c_77e1

jr_02c_77dd:
    nop
    xor $0f
    inc bc

jr_02c_77e1:
    nop
    nop
    inc b
    nop
    ld d, b
    nop
    nop
    adc h
    nop
    nop
    ld d, h
    inc c
    nop
    jr nz, jr_02c_77f4

    nop
    ld [hl], b

jr_02c_77f2:
    nop
    nop

jr_02c_77f4:
    xor h
    nop
    nop
    inc [hl]
    ld e, $00
    ld c, b
    ld b, $00
    ld d, b
    rrca
    ld bc, $6600
    ld [$3000], sp
    rra
    inc bc
    nop
    ld b, [hl]
    ld b, $00
    ld [bc], a
    nop
    nop
    sub h
    rra
    rlca
    nop
    jr nz, jr_02c_7816

    nop
    inc d

jr_02c_7816:
    ld [$0200], sp
    ld [bc], a
    inc [hl]
    dec [hl]
    jr nc, jr_02c_784f

    ld [bc], a
    ld [bc], a
    ld a, [bc]
    inc [hl]
    dec [hl]
    rst $38
    ld [bc], a
    inc d
    rlca
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld [bc], a
    ld [hl+], a
    ld a, [bc]
    ld [hl], $37
    ld [bc], a
    inc d
    ld [$1002], sp
    nop
    ld [bc], a
    stop
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    ld [bc], a
    ld b, b
    ld [bc], a
    ld [bc], a
    inc d
    ld [$3002], sp
    nop
    ld [bc], a
    jr nc, jr_02c_7848

jr_02c_7848:
    ld [bc], a
    ld h, [hl]
    ld [bc], a
    ld [bc], a
    ld h, b
    ld [bc], a
    ld [bc], a

jr_02c_784f:
    inc [hl]
    ld a, [bc]
    ld [bc], a
    ld b, b
    ld [bc], a
    ld [bc], a
    inc c
    inc b
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld d, h
    ld a, [bc]
    ld [bc], a
    ld h, b
    ld [bc], a
    ld [bc], a
    inc l
    inc b
    ld [bc], a
    ld [hl+], a
    nop
    ld [bc], a
    inc [hl]
    ld c, $38
    add hl, sp
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    add $00
    ld [bc], a
    ld d, b
    rrca
    inc bc
    ld a, [hl-]
    dec sp
    ld [bc], a
    ld [hl+], a
    nop
    ld [bc], a
    and $00
    ld [bc], a
    ld [hl], b
    ld c, $02
    jp nz, Jump_000_2d0f

    ld [bc], a
    add d
    rrca
    ld sp, $4602
    rrca
    daa
    ld [bc], a
    nop
    ld c, $00
    ld bc, $1402
    rrca
    dec bc
    db $10
    ld de, $1402
    ld [$0200], sp
    nop
    jr nc, @+$33

    nop
    nop
    ld c, $ff
    nop
    inc d
    rlca
    ld [hl-], a
    inc sp
    nop
    jr nz, jr_02c_78b9

    nop
    inc d
    ld [$0000], sp
    rrca
    ld c, l
    nop
    ld h, b
    rrca
    ld c, l
    nop
    ret nz

    rrca

jr_02c_78b9:
    ld c, l
    nop
    jr nz, jr_02c_78dc

    ld c, l
    inc b
    dec b
    nop
    ld b, d
    rra
    dec bc
    inc d
    dec d
    nop
    ld [hl+], a
    rra
    dec bc
    nop
    ld [bc], a
    nop
    inc l
    dec l
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    jr nc, jr_02c_7908

    jr nc, jr_02c_790a

    ld b, $07
    nop

jr_02c_78dc:
    ld [bc], a
    nop
    ld [$ff09], sp
    nop
    inc d
    rlca
    ld l, $2f
    jr jr_02c_7901

    jr jr_02c_7903

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
    jr jr_02c_7910

    nop
    inc d
    ld [$2d2c], sp
    inc [hl]
    dec [hl]
    jr c, jr_02c_7939

    inc [hl]

jr_02c_7901:
    dec [hl]
    nop

jr_02c_7903:
    ld [$0000], sp
    ld b, d
    nop

jr_02c_7908:
    nop
    ld b, h

jr_02c_790a:
    nop
    nop
    inc d
    ld a, [bc]
    ld [hl], $37

jr_02c_7910:
    ld a, [hl-]
    dec sp
    ld [hl], $37
    nop
    jr z, jr_02c_7917

jr_02c_7917:
    nop
    ld h, d
    nop
    nop
    ld h, h
    nop
    nop
    inc d
    ld [$0b0a], sp
    inc [hl]
    dec [hl]
    nop
    ld b, [hl]
    ld [bc], a
    nop
    ld c, b
    ld [bc], a
    nop
    ld b, [hl]
    nop
    nop
    inc d
    ld [$1b1a], sp
    ld [hl], $37
    nop
    ld h, [hl]
    ld [bc], a
    nop
    ld l, b

jr_02c_7939:
    ld [bc], a
    nop
    ld h, [hl]
    nop
    nop
    inc d
    ld [$8200], sp
    ld [$8a00], sp
    inc b
    nop
    inc d
    ld [$a200], sp
    ld [$aa00], sp
    inc b
    nop
    inc d
    ld [$c400], sp
    ld b, $38
    add hl, sp
    nop
    add [hl]
    inc b
    nop
    inc d
    ld [$e400], sp
    ld b, $3a
    dec sp
    nop
    and [hl]
    inc b
    nop
    inc d
    ld [$0504], sp
    nop
    add d
    nop
    nop
    ld b, [hl]
    nop
    nop
    ld c, [hl]
    nop
    nop
    ld c, $1e
    inc d
    dec d
    nop
    and d
    nop
    nop
    ld h, [hl]
    nop
    nop
    ld l, [hl]
    nop
    nop
    ld l, $1e
    inc l
    dec l
    nop
    ld a, [bc]
    stop
    ld b, [hl]
    ld [bc], a
    nop
    ld c, [hl]
    nop
    nop
    ld a, [bc]
    stop
    inc d
    ld a, [bc]
    nop
    ld a, [hl+]
    stop
    ld h, [hl]
    ld [bc], a
    nop
    ld l, [hl]
    nop
    nop
    ld a, [hl+]
    stop
    inc [hl]
    inc c
    nop
    ld b, d
    inc d
    nop
    inc c
    rra
    ld bc, $6000
    nop
    nop
    ld h, d
    inc d
    nop
    inc l
    rra
    ld bc, $0200
    ld [bc], a
    ld [$0209], sp
    nop
    nop
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    ld b, $07
    ld [bc], a
    nop
    nop
    inc h
    dec h
    rst $38
    ld [bc], a
    inc d
    rlca
    jr jr_02c_79e9

    ld [bc], a
    jr nz, jr_02c_79d3

jr_02c_79d3:
    ld a, [de]
    dec de
    ld [hl], $37
    ld [hl], $37
    ld d, $17
    ld [bc], a
    jr nz, jr_02c_79de

jr_02c_79de:
    ld h, $27
    ld [bc], a
    inc d
    ld [$3130], sp
    jr c, @+$3b

    ld [bc], a
    ld b, d

jr_02c_79e9:
    nop
    ld [bc], a
    ld [$0200], sp
    ld b, d
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld a, [bc]
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    ld [bc], a
    ld h, d
    nop
    ld [bc], a
    jr z, jr_02c_79fd

jr_02c_79fd:
    ld [bc], a
    ld h, d
    ld [bc], a
    ld [bc], a
    ld [hl-], a
    rrca
    dec c
    ld b, $07
    ld [bc], a
    ld d, h
    rrca
    dec bc
    ld d, $17

Call_02c_7a0c:
    ld [bc], a
    inc [hl]
    ld a, [bc]
    ld [bc], a
    ld b, b
    ld [bc], a
    ld [bc], a
    ld [$0200], sp
    ret z

    inc b
    ld [bc], a
    ld d, h
    ld a, [bc]
    ld [bc], a
    ld h, b
    ld [bc], a
    ld [bc], a
    jr z, jr_02c_7a21

jr_02c_7a21:
    ld [bc], a
    add sp, $04
    ld [bc], a
    or h
    inc c
    ld [bc], a
    ld b, b
    nop
    ld [bc], a
    ret z

    rrca
    add hl, bc
    ld [bc], a
    ld h, b
    nop
    ld [bc], a
    add sp, $0f
    dec bc
    ld [bc], a
    ld b, b
    inc b
    ld [bc], a
    ld b, d
    nop
    nop
    ld bc, $1402
    ld e, $02
    ld h, b
    inc b
    ld [bc], a
    ld h, d
    nop
    db $10
    ld de, $3402
    rra
    ld bc, $4602
    ld d, $02
    ld d, d
    inc c
    ld [bc], a
    ld h, b
    inc e
    ld [bc], a
    ld [hl-], a
    inc c
    ld [bc], a
    ret nz

    inc e
    ld [bc], a
    sub d
    rra
    dec b
    ld [bc], a
    ld h, b
    inc d
    ld [bc], a
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    ld [$3130], sp
    ld [$0c00], sp
    inc h
    dec h
    rst $38
    ld [$0714], sp
    ld [hl-], a
    inc sp
    ld [$0c20], sp
    ld h, $27
    ld [$0814], sp
    jr nc, jr_02c_7ab0

    inc [hl]
    dec [hl]
    ld [$0800], sp
    jr c, jr_02c_7abf

    ld [$0c12], sp
    ld [hl], $37
    ld [$0820], sp
    ld a, [hl-]
    dec sp
    ld [$0c32], sp
    ld [$0c40], sp
    ld b, $07
    ld [$0c14], sp
    ld [$0a62], sp
    ld d, $17
    ld [$0c74], sp
    ld [$0c00], sp
    ld [$0f14], sp
    dec bc
    ld [hl-], a
    inc sp
    ld [$0fb4], sp
    ld b, a

jr_02c_7ab0:
    jr c, jr_02c_7aeb

    jr nc, jr_02c_7ae5

    nop
    ld bc, $1408
    rrca
    rlca
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    db $10

jr_02c_7abf:
    ld de, $b408
    rrca
    dec b
    ld [$104e], sp
    ld [$0e50], sp
    ld [$1a64], sp
    ld [$0c70], sp
    ld [bc], a
    inc bc
    ld [$10c0], sp
    inc b
    dec b
    ld [$0000], sp
    nop
    ld bc, $c008
    db $10
    jr z, jr_02c_7b0a

    ld [$0814], sp
    ld [de], a

jr_02c_7ae5:
    inc de
    ld [$10e0], sp
    inc d
    dec d

jr_02c_7aeb:
    ld [$0020], sp
    db $10
    ld de, $e008
    db $10
    ld a, [hl+]
    dec hl
    ld [$0814], sp
    nop
    ld [bc], a
    ld b, $2c
    dec l
    jr nc, @+$33

    ld b, $02
    inc c
    rst $38
    ld b, $14
    rlca
    ld l, $2f
    ld [hl-], a
    inc sp

jr_02c_7b0a:
    ld b, $22
    inc c
    ld b, $14
    ld [$0006], sp
    ld [$3534], sp
    jr c, jr_02c_7b50

    inc [hl]
    dec [hl]
    ld b, $12
    rrca
    rlca
    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld [hl], $37
    ld b, $32
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    ld b, $50
    nop
    jr nc, jr_02c_7b60

    jr c, @+$3b

    ld b, $8a
    nop
    ld b, $50
    inc c
    ld a, [de]
    dec de
    ld [hl], $37
    ld b, $70
    nop
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    ld b, $aa
    nop
    ld b, $70
    inc c
    ld b, $4a
    nop
    ld b, $4a
    ld [bc], a
    ld b, $8a

jr_02c_7b50:
    ld [bc], a
    ld b, $10
    inc c
    ld b, $6a
    nop
    ld b, $6a
    ld [bc], a
    ld b, $aa
    ld [bc], a
    ld b, $30
    inc c

jr_02c_7b60:
    ld b, $02
    ld [bc], a
    ld b, $c8
    inc b
    ld b, $84
    ld [bc], a
    ld b, $d4
    ld a, [bc]
    ld b, $a6
    ld b, $06
    ld l, [hl]
    ld [bc], a
    ld b, $32
    ld a, [bc]
    inc b
    dec b
    ld b, $06
    ld a, [de]
    ld b, $10
    inc c
    inc d
    dec d
    ld b, $26
    ld a, [de]
    ld b, $30
    ld c, $06
    ld b, h
    inc e
    ld b, $12
    inc c
    ld b, $64
    inc e
    ld b, $32
    ld a, [bc]
    jr z, @+$2b

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $02
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
    ld b, $22
    nop
    db $10
    ld de, $e206
    db $10
    ld [de], a
    inc de
    ld b, $14
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
