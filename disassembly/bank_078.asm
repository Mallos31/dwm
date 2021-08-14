; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $078", ROMX[$4000], BANK[$78]

    inc bc
    nop
    add l
    inc bc
    rlca
    rrca
    rra
    rra
    inc b
    ccf
    add h
    rra
    rra
    rrca
    rlca
    inc bc

jr_078_4010:
    nop
    add e
    ret nz

    pop hl
    di
    ld [$82ff], sp
    di
    db $fd
    inc bc
    nop
    add d
    ld hl, sp-$04
    dec bc
    rst $38
    ld [$8200], sp
    db $10
    jr c, jr_078_402a

    cp $83
    ld a, h

jr_078_402a:
    cp $ee
    ld h, $00
    adc d
    ld a, h
    ld a, [$e5dd]
    db $f4
    ld a, [$d6ee]
    ld d, [hl]
    cp [hl]
    dec b
    nop
    adc e
    rrca
    rra
    ld a, $6d
    rst $08
    sbc a
    cp a
    rst $30
    db $eb
    db $eb
    rst $38
    dec b
    nop
    sub e
    ret nz

    ldh [$30], a
    sub b
    ret c

    db $f4
    ld a, [c]
    ld a, [c]
    pop af
    pop de
    xor l
    rlca
    dec c
    jr jr_078_4069

    jr @+$12

    jr nc, @+$66

    inc bc
    adc b
    adc d
    ld b, b
    ld b, d
    ld [hl+], a
    rra
    rlca
    cp a
    db $e3
    ld sp, hl
    pop bc

jr_078_4069:
    ld bc, $0003
    sub e
    add b
    add c
    add d
    adc e
    dec bc
    scf
    rrca
    rst $38
    jr jr_078_4010

    cp $00
    add b
    nop
    dec hl
    inc l
    ld e, a
    sbc a
    ld a, a
    inc bc
    rst $38
    sub d
    db $fc
    rst $00
    ld b, [hl]
    add d
    ld hl, $a121
    ld [hl], c
    ld [hl], d
    ld a, [$f6fe]
    ld a, [$f6f2]
    sub [hl]
    jp nc, $108a

    nop
    inc bc
    dec c
    add a
    dec de
    dec sp
    ld a, [hl]
    cp $6e
    inc e
    ld [$0006], sp
    add l
    db $db
    rst $38
    ld a, a
    dec a
    ld c, $0b
    nop
    sbc b
    rst $38
    call nz, Call_078_7f7f
    ld b, c
    ld a, a
    ld c, a
    ld a, a
    ld h, b
    ld a, a
    ld hl, $302f
    ccf
    ld hl, $0a3f
    xor $ee
    jp z, $89ca

    cp a
    rst $30

Jump_078_40c4:
    inc bc
    push hl
    add l
    rst $30
    scf
    push af
    push af
    dec d
    ld b, $00
    adc d
    ld a, h
    ld a, [$88d9]
    ld sp, hl
    db $fc
    db $ec
    rst $10
    rst $10
    cp [hl]
    dec b
    nop
    or c
    rlca
    rra
    ld l, $4d
    sbc e
    sbc a
    ccf
    ld [hl], a
    db $eb
    db $eb
    rst $38
    rrca
    ld [de], a
    inc h
    inc h
    dec h
    ld hl, $1f23
    rrca
    ccf
    ld a, [hl]
    ld sp, hl
    ld d, a
    ccf
    inc de
    nop
    rst $38
    db $10
    ld a, [hl]
    ld hl, $0020
    add c
    rst $38
    rst $38
    rst $18
    ccf
    rst $38
    ccf
    ccf
    rra
    rra
    ld bc, $01fe
    ld bc, $7f43
    ld a, [bc]
    rst $38
    sub b
    add $12
    ld de, $fd39
    pop af
    ld a, [c]
    ld a, [c]
    cp $fe
    ld a, [$f2e2]
    ld [$8aca], a
    inc bc
    rra
    add d
    ccf
    ld a, a
    rlca
    rst $38
    add h
    ld a, a
    ccf
    rlca
    nop
    ld [$8aff], sp
    ld hl, sp-$01
    pop af
    rst $28
    ldh a, [rIE]
    ld hl, $ff3f
    rst $38
    inc bc
    cp $03
    db $fc
    adc e
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [$c0], a
    nop
    nop
    ld sp, $f979
    inc bc
    pop af
    sbc h
    ld a, [$fefb]
    db $fd
    ld a, [$e9f5]
    di
    db $ec
    cp e
    add b
    ld h, b
    ret nc

    add sp, -$18
    db $f4
    inc d
    sbc d
    sbc d
    jp c, Jump_078_65cd

    xor l
    ld l, l
    push bc
    dec [hl]
    ld sp, $0379
    ld sp, hl
    sub [hl]
    pop af
    ld a, [$fcfe]
    db $fc
    ld hl, sp-$10
    ldh [$e0], a
    ret nz

    add b
    jr @-$65

    cp $00
    add b
    nop
    dec hl
    inc l
    ld e, a
    sbc a
    ld a, a
    inc bc
    rst $38
    add h
    ret nz

    nop
    ld b, [hl]
    add d
    inc bc
    ld hl, $71a1
    ld [hl], d
    ld a, [$f4fc]
    ld hl, sp-$10
    ldh [$80], a
    nop
    nop
    ld bc, $310f
    ld e, c
    sbc e
    add $ef
    dec sp
    sub b
    ret c

    db $f4
    ld a, [c]
    ld a, [c]
    pop af
    pop de
    xor l
    db $fc
    sbc e
    db $fc
    rst $30
    or a

jr_078_41ab:
    jr nc, jr_078_41b0

    nop
    xor a
    dec e

jr_078_41b0:
    ld e, l
    db $ed
    add sp, -$07
    or $37
    nop
    nop
    ret nz

    jr nz, jr_078_41ab

    ld l, b
    inc [hl]
    inc d
    ld c, $8e
    ld a, [bc]
    ld b, l
    rst $00
    add a
    dec h
    push hl
    ld b, c
    add c
    ld hl, $3121
    ld [hl], c
    ld [hl], d
    ei
    cp $f5
    ld a, [$e9f4]
    di
    inc l
    dec sp
    ld b, c
    add c
    ld de, $3939
    ld a, c
    ld a, c
    db $fd
    inc bc
    cp $83
    db $fc
    ld hl, sp-$20
    dec b
    nop
    add l
    inc bc
    inc b
    dec bc
    dec de
    inc e
    inc b
    ccf
    add h
    rra
    rra
    rrca
    rlca
    inc bc
    nop
    add h
    ret nz

    pop hl
    ld [hl], e
    ld a, a
    rlca
    rst $38
    add d
    di
    db $fd
    inc bc
    nop
    add l
    ld hl, sp-$64
    ld l, a
    ld l, a
    sbc a
    ld [$06ff], sp
    nop
    adc d
    ld a, h
    ld a, [$a5dd]
    and h
    and d
    ld [c], a
    cp $be
    and d
    dec b
    nop
    sbc e
    rrca
    rra
    ld a, $6c
    call z, $8c8c
    adc a
    rst $38
    db $fc
    adc h
    ld bc, $310f
    ld e, c
    sbc e
    add $ef
    dec sp
    db $10
    jr jr_078_423b

    ld a, [bc]
    ld sp, hl
    pop af
    ld de, $150d
    nop
    add a
    jr c, jr_078_42b5

    cp $fe

jr_078_423b:
    cp d
    ld b, a
    ld a, $04
    nop
    add h
    rrca
    ccf
    ld a, a
    ld a, a
    inc bc
    rst $38
    add l
    cp a
    ld a, a
    ld e, a
    jr nc, jr_078_425c

    inc b
    nop
    add h
    add b
    ldh [$f0], a
    ldh a, [$03]
    ld hl, sp-$7b
    add sp, -$18
    sbc h
    ld a, $fc

jr_078_425c:
    inc b
    nop
    adc l
    jr @+$3e

    rra
    rra
    rrca
    ld a, a
    rst $38
    ld a, a
    rra
    rrca
    rra
    ld a, $18
    rlca
    nop
    adc e
    inc bc
    rlca
    inc c
    dec bc
    dec de
    dec de
    inc e
    rla
    ld [$070f], sp
    dec b
    nop
    adc h
    ret nz

    pop hl
    ld h, e
    or d
    sub $56
    rst $10
    or l
    ld a, d
    di
    db $ed
    ld [bc], a
    inc b
    nop
    adc e
    ld hl, sp-$04
    inc e
    xor $f7
    rst $10
    scf
    rst $28
    rra
    rst $38
    rst $38
    add hl, bc
    nop
    adc b
    db $10
    xor b
    add $00
    add d
    ld b, h
    sub d
    xor $27
    nop
    adc c
    inc b
    ld [hl-], a
    ld a, [de]
    ld l, e
    ld [hl], l
    ld a, c
    ld l, l
    dec l
    ld b, c
    rlca
    nop
    adc b
    rlca
    ld e, $39
    ld h, a

jr_078_42b5:
    ld e, a
    ccf
    ld [hl], a
    ld [hl], a
    ld [$9100], sp
    ret nz

    ld h, b
    and b
    ret z

    call z, $cecc
    xor [hl]
    ld d, d
    nop
    ld b, $0f
    rrca
    rlca
    rrca
    rra
    dec sp
    inc bc
    ld [hl], a
    adc d
    ccf
    dec a
    dec e
    nop
    nop
    ld h, b
    inc e
    ld a, $7e
    cp $03
    rst $38
    adc e
    ld a, a
    ld a, a
    ld a, l
    ld a, h
    db $fc
    ld sp, hl
    rst $30
    nop
    rst $38
    ld a, [hl]
    ld bc, $ff03
    adc h
    rst $30
    di
    ldh [$ef], a
    adc a
    ccf
    rst $38
    ret nz

    inc bc
    ccf
    cp b
    ld a, h
    inc bc
    sbc $8b
    adc [hl]
    xor h
    inc a
    ld a, b
    ld hl, sp-$0c
    db $ec
    sbc b
    ld a, b
    db $fc
    db $fc
    stop
    inc bc
    ld b, $86
    ld c, $16
    inc d
    ld h, h
    inc b
    ld [$0007], sp
    add h
    ld c, $4a
    ld [hl-], a
    ld b, $0c
    nop
    add d
    ld a, a
    ld a, a
    ld [$063f], sp
    rra
    adc b
    db $fc
    sbc b
    sbc b
    db $fc
    db $fc
    cp $cc
    call z, $fe03
    add d
    call z, Call_000_03cc
    cp $07
    nop
    adc c
    inc b
    ld h, $77
    ld b, $63
    ld [hl], e
    ld l, b
    inc l
    ld b, c
    rlca
    nop
    sub a
    ld de, $6532
    ld h, e
    rst $00
    adc a
    rla
    scf
    nop
    nop
    dec c
    dec de
    dec de
    ld a, [de]
    ld e, $1c
    ld [bc], a
    ld b, $00
    ccf
    ld b, [hl]
    ld [$0312], sp
    nop
    add c
    rst $28
    inc bc
    rst $18
    add [hl]
    rst $38
    ld a, [hl]
    nop
    ld h, [hl]
    and $c6

jr_078_4363:
    inc bc
    inc b
    adc b
    nop
    nop
    cp $01
    cp $fe
    cp h
    add b
    ld b, $00
    sub h
    ld bc, $0301
    rlca
    jr c, jr_078_4363

    xor $c6
    ld [bc], a
    ld c, $1c
    inc a
    ld a, b
    ld a, b
    db $f4
    db $fc
    call c, Call_000_3cbc
    ld a, h
    dec b
    nop
    sbc b
    ld b, b
    ld b, d
    ld h, d
    ld h, e
    inc bc
    ld c, b
    ld a, h
    ccf
    rlca
    nop
    nop
    ld b, $0e
    dec c
    dec c
    add hl, de
    dec de
    dec de
    inc sp
    scf
    ld l, a
    ld l, a
    rst $18
    rst $18
    inc bc
    rra
    add h
    ld b, $0e
    inc c
    inc c
    inc bc
    jr @-$78

    jr nc, jr_078_43dc

    ld h, b
    ld h, b
    ret nz

    ret nz

    inc bc
    nop
    and d
    adc $86
    ld b, $0e
    ld c, $1e
    dec a
    dec a
    ld a, e
    ld a, e
    rst $30
    rst $38
    rst $18
    cp a
    rra
    rra
    nop
    add b
    ldh [$f0], a
    jr nc, jr_078_4401

    ld hl, sp-$04
    db $e4
    db $e4
    cp $fe
    ld a, [c]
    ld a, [c]
    cp $fe
    adc $86
    inc bc
    ld b, $8e
    ld c, $1c
    inc a
    ld a, b

jr_078_43dc:
    ld a, b
    ldh a, [$e0]
    ret nz

    add b
    nop
    nop
    rst $38
    ld a, [hl]
    ld bc, $ff03
    adc h
    rst $30
    di
    ldh [$ef], a
    adc a
    ccf
    rst $38
    ret nz

    nop
    nop
    cp b
    ld a, h
    inc bc
    sbc $88
    adc [hl]
    xor h
    inc a
    ld a, b
    ld hl, sp-$10
    ldh [$80], a
    dec b

jr_078_4401:
    nop
    sub h
    ld c, $27
    ld h, a
    ccf
    inc e
    call z, $a76f
    set 1, l
    call $aece
    ld d, d
    nop
    ld h, h
    ld a, a
    ld sp, hl
    ret


    rst $08
    rlca
    rst $38
    add e
    rst $18
    rra
    rrca
    inc bc
    nop
    xor d
    ret nz

    add b
    sub b
    ld hl, sp-$08
    ldh a, [$f0]
    db $fc
    cp $f8
    ld hl, sp-$02
    cp $be
    ld a, [hl]
    sbc $de
    adc $8e
    xor l
    dec a
    ld a, e
    ei
    rst $30
    rst $28
    sbc a
    ccf
    rra
    rra
    cp [hl]
    ld a, [hl]

Call_078_443f:
    xor $c6
    add $86
    add [hl]
    ld b, $04
    adc h
    db $fc
    ld hl, sp-$20
    rlca
    nop
    add h
    inc bc
    inc b
    inc c
    rrca
    inc b
    rra
    add e
    rrca
    rrca
    rlca
    dec b
    nop
    add h
    ret nz

    pop hl
    db $e3
    di
    inc b
    rst $30
    add h
    ei
    di
    db $ed
    ld [bc], a
    inc b
    nop
    add h
    ld hl, sp-$64
    sbc h
    cp $07
    rst $38
    ld [$8900], sp
    inc b
    ld [hl-], a
    ld a, d
    ld a, e
    ld a, l
    dec a
    ld bc, $7d41
    rlca
    nop
    sbc c
    rlca
    rra
    ccf
    ld a, a
    ld a, a
    ld a, b
    nop
    rlca
    ld a, a
    nop
    nop
    ld c, $27
    ld h, a
    ccf
    inc e
    call z, $e7ef
    di
    push af
    ld b, $0e
    xor $f2
    ld d, $00
    add c
    jr c, @+$05

    ld a, h
    add c
    ld a, $06
    nop
    add e
    rrca
    ccf
    ccf
    inc b
    ld a, a
    add e
    ccf
    ccf
    rrca
    ld b, $00
    add e
    add b
    ldh [$e0], a
    ld b, $f0
    add c
    db $fc
    ld b, $00
    adc e
    jr jr_078_44c5

    rrca
    rlca
    rrca
    ld a, a
    rra
    rrca
    rlca

jr_078_44c0:
    ld c, $18
    ld b, $00
    nop

jr_078_44c5:
    nop
    nop
    nop
    nop
    add a
    nop
    inc a
    ld e, d
    ld h, [hl]
    ld h, [hl]
    ld e, d
    inc a
    add hl, bc
    nop
    sub b
    rra
    ld e, $1e
    ld c, $1e
    ld e, $02
    ld [bc], a
    rlca
    rrca
    dec e
    dec sp
    dec sp
    ccf
    jr nz, jr_078_4503

    rlca
    nop
    sbc [hl]
    db $10
    jr c, jr_078_44c0

    ld a, h
    cp d
    ld a, h
    add $ba
    ld b, h
    nop
    ret nz

    ldh a, [$38]
    adc h
    ld c, h
    ld b, [hl]
    ld b, [hl]
    ld b, d
    ld b, d
    ld b, h
    add h
    ld [$c030], sp
    nop
    nop
    jr jr_078_453f

jr_078_4503:
    ld h, d
    ld l, d
    inc bc
    push de
    inc bc
    sub l
    adc b
    ld c, d
    ld b, d
    inc h
    jr jr_078_450f

jr_078_450f:
    nop
    inc a
    inc a
    dec b
    inc [hl]
    ld b, $24
    add h
    inc a
    nop
    rst $38
    cp e
    inc bc
    rst $38
    add c
    cp e
    dec bc
    rst $38
    add h
    cp e
    rst $38
    rst $38
    rst $30
    inc b
    rst $38
    add l
    cp e
    rst $38
    ei
    rst $38
    cp e
    dec c
    rst $38
    add e
    ei
    rst $38
    ei
    inc bc
    rst $38
    add l
    cp a
    rst $38
    ei
    rst $38
    cp e
    dec b
    rst $38
    add d

jr_078_453f:
    ei
    rst $18
    inc b
    rst $38
    add c
    cp e
    inc bc
    rst $38
    add c
    cp e
    inc bc
    rst $38
    add l
    cp e
    rst $38
    cp a
    rst $38
    ei
    inc bc
    rst $38
    add c
    rst $00
    inc bc
    and e
    add c
    rst $00
    ld a, [bc]
    rst $38
    add c
    ldh [rTAC], a
    and b
    sub h
    ldh [$f0], a
    cp b
    call c, $fcdc
    inc b
    ld hl, sp+$0e
    add hl, sp
    ld a, a
    cp $b9
    ld b, a
    add hl, sp
    nop
    inc bc
    rlca
    rlca
    inc bc
    inc bc
    nop
    sbc a
    ld bc, $8000
    ret nc

    ldh [$a0], a
    ld l, b
    pop bc
    ld b, b
    sub b
    sbc d
    cp $3f
    ld a, a
    db $eb
    dec b
    ld c, b
    inc b
    nop
    ld de, $df52
    cp $aa
    ld a, h
    ld [hl], b
    ldh a, [rIE]
    rst $38
    push af
    ld h, b
    inc b
    nop
    adc e
    ld e, $3e
    ld a, [de]
    ld e, $7f
    cp d
    ld h, a
    ld a, [de]
    ld a, [de]
    ld a, [hl-]
    ld e, $03
    nop
    rst $38
    inc bc
    rrca
    ld de, $7f38
    ld a, a
    sbc $ff
    rst $38
    rst $30
    ret nz

    ld l, b
    inc hl
    ld a, a
    ld a, a
    nop
    ldh a, [rNR32]
    adc d
    adc $e5
    cp l
    rst $38
    rst $38
    db $eb
    rst $38
    ld a, [hl+]
    cp $e4
    add d
    cp $00
    inc bc
    ld c, $13
    add hl, sp
    ld a, h
    cp a
    rst $18
    rst $38
    rst $38
    rst $30
    pop bc
    add sp, -$5e
    ld e, a
    jr c, jr_078_45d7

jr_078_45d7:
    ldh [$38], a
    inc d
    adc d
    add $e5
    ld a, l
    rst $38
    rst $38
    rst $10
    rst $38
    ld d, a
    dec a
    ld a, [c]
    inc e
    nop
    inc bc
    dec c
    db $10
    ccf
    ld e, a
    ld a, a
    cp $ff
    cp a
    rst $30
    rst $00
    ld h, h
    inc h
    ld e, $01
    nop
    ldh a, [$8c]
    adc $f6
    cp a
    ld a, a
    rst $38
    push af
    rst $18
    sub l
    adc $6c
    jr nc, @+$32

    ldh a, [rP1]
    rlca
    rra
    ld [hl], $7d
    cp a
    db $fd
    ld [hl], d
    rst $18
    cp a
    ld hl, sp-$10
    ld [hl], b
    xor a
    ld e, b
    scf
    nop
    ldh a, [$dc]
    xor d
    rst $18
    push af
    rst $18
    or l
    rst $38
    adc a
    ld e, l
    ld [hl], c
    ld h, c
    and d
    ld a, h
    add b
    sub a
    nop
    db $d3
    rst $10
    set 4, e
    inc de
    ld d, e
    scf
    rst $20
    adc $0e
    inc a
    db $fc
    ld hl, sp-$10
    ldh [$80], a
    inc l
    ld a, h
    ld a, h
    inc l
    ld a, $2e
    inc bc
    inc l
    add a
    ld e, h

jr_078_4642:
    ld a, h
    inc a
    inc [hl]
    ld l, $6f
    rst $28
    ld [$a100], sp
    inc l
    ld a, h
    ld a, h
    inc l
    ld a, $2e
    inc l
    inc l
    nop
    rrca
    dec de
    add hl, sp
    dec e
    rrca
    dec de
    inc a
    ld a, e
    db $eb
    db $eb
    ei
    db $fd
    ld a, a
    ccf
    rrca
    nop
    ld h, b
    ld hl, sp-$4c
    adc b
    jr nc, jr_078_4642

    inc l
    add $03
    db $e3
    adc c
    jp $fc0e


    ldh a, [$7f]
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
    dec c
    dec b
    dec a
    ld [hl], l
    ld a, l
    call $03f9
    cp $03
    nop
    sub c
    ld bc, $0603
    inc c
    add hl, de
    rlca
    ccf
    rst $38
    rst $18
    jr c, jr_078_4704

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
    jr nc, jr_078_46ea

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

jr_078_46ea:
    cp e
    ld [hl], e
    ld h, a
    rst $00
    inc bc
    rst $38
    adc c
    rst $18
    jr c, jr_078_4758

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

jr_078_4704:
    ld e, [hl]
    ld a, a
    ld e, e
    ld a, [hl+]
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
    jp Jump_000_0c05


    jr jr_078_4776

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
    jr jr_078_4741

Call_078_473a:
    ld bc, $38c3
    rlca
    add hl, de
    daa
    ld e, [hl]

jr_078_4741:
    db $fc
    ld hl, sp-$1d
    inc e
    ldh [$88], a
    db $10
    jr nz, jr_078_478a

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

jr_078_4758:
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
    jr jr_078_4776

jr_078_476f:
    ld bc, $f8c3
    rst $38
    add hl, de
    daa
    ld e, [hl]

jr_078_4776:
    db $fc
    ld hl, sp-$1d
    rra
    rst $38
    ld de, $8600
    inc a
    ld h, [hl]
    ld e, [hl]
    ld e, [hl]
    ld l, [hl]
    inc a
    add hl, bc
    nop
    sub b
    rra
    inc de
    inc de

jr_078_478a:
    rrca

jr_078_478b:
    inc de
    rra
    inc bc
    inc bc
    inc b
    ld [$2713], sp
    daa
    jr nz, jr_078_47d5

    rra
    rlca
    nop
    sbc [hl]
    db $10
    jr z, jr_078_478b

    add d
    add $44
    cp d
    cp $44
    nop
    ret nz

    jr nc, jr_078_476f

    ld [hl], h
    db $f4
    ld a, [$fefa]
    cp $fc
    db $fc
    ld hl, sp-$10
    ret nz

    nop
    nop
    jr @+$26

    ld e, [hl]
    ld d, [hl]
    inc bc
    xor a
    inc bc
    rst $28
    adc b
    ld a, [hl]
    ld a, [hl]
    inc a
    jr jr_078_47c2

jr_078_47c2:
    nop
    inc a
    inc h

jr_078_47c5:
    dec b
    inc l
    rlca
    inc a
    add e
    nop
    rst $38
    add e
    inc bc
    sub e
    add c
    add e
    inc bc
    rst $38
    add l
    rst $20

jr_078_47d5:
    rst $00
    rst $20
    rst $20
    jp $ff03


    add l
    add e
    sub e
    di
    rst $00
    add e
    inc bc
    rst $38
    add l
    add e
    sub e
    db $e3
    sub e
    add e
    inc bc
    rst $38
    inc bc
    sub e
    add d
    add c
    di
    inc bc
    rst $38
    add l
    add e
    sbc a
    add e
    di
    add e
    inc bc
    rst $38
    add l
    add e
    sbc a
    add e
    sub e
    add e
    inc bc
    rst $38
    add l
    add e
    di
    db $e3
    rst $08
    rst $08
    inc bc
    rst $38
    add l
    add e
    sub e
    rst $00
    sub e
    add e
    inc bc
    rst $38
    add l
    add e
    sub e
    add e
    di
    add e
    inc b
    rst $38
    inc bc
    rst $08
    inc b
    rst $38
    adc b
    add c
    rst $20
    db $e4
    rst $20
    rst $20
    rst $38
    rst $38
    ldh [rTAC], a
    ld h, b
    sub h
    jr nz, jr_078_483c

    ret z

    db $e4
    db $e4
    inc b
    db $fc
    ld hl, sp+$0e
    rlca
    nop
    add c
    add $7e
    add hl, sp
    nop
    ld [bc], a
    inc b

jr_078_483c:
    inc b
    inc bc
    dec b
    nop
    adc a
    add b
    ld b, b
    jr nz, jr_078_47c5

    ldh [$80], a
    ld b, b
    sub b
    ld [$22a4], sp
    ld b, b
    sub c
    ld a, d
    dec d
    inc bc
    nop
    adc e
    ld [de], a
    dec d
    ld l, d
    sub [hl]
    inc b
    ld [$0c08], sp
    add hl, bc
    sub e
    ld h, b
    inc b
    nop
    adc e
    ld e, $22
    ld e, $1a
    ld h, e
    rst $00
    ld a, e
    ld e, $1e
    ld h, $1e
    inc bc
    nop
    call c, $0c03
    ld e, $27
    ld e, a
    ld a, a
    cp a
    sbc [hl]
    ret z

    cp a
    cp a
    ld e, a
    ccf
    ld e, [hl]
    ld a, a
    nop
    ldh a, [$ec]
    db $76
    ld [hl-], a
    ei
    db $db
    rra
    rra
    scf
    db $e3
    or $fe
    inc e
    ld a, [hl]
    cp $00
    inc bc
    dec c
    inc e
    ld h, $7f
    rst $38
    cp a
    sbc $c8
    cp [hl]
    cp a
    ld e, a
    rst $38
    ld a, a
    jr c, jr_078_489f

jr_078_489f:
    ldh [$d8], a
    db $ec
    db $76
    ld a, [hl-]
    ei
    sbc e
    dec e
    ccf
    ld l, a
    rst $00
    rst $28
    rst $38
    cp $1c
    nop
    inc bc
    ld c, $1f
    daa
    ld a, a
    ld a, a
    rst $38
    sbc [hl]

Call_078_48b7:
    ret z

    rst $38
    cp h
    ld e, a
    ccf
    rra
    ld bc, $f000
    ld a, h
    ld [hl-], a
    ld a, [$9fdd]
    rra
    dec sp
    pop af
    ei
    ld a, [hl]
    cp h
    inc bc
    ldh a, [$b7]
    nop
    rlca
    dec e
    ccf
    ld c, [hl]
    call nc, Call_078_7fce
    rst $38
    rst $38
    cp a
    cp a
    rst $18
    rst $38
    ld a, a
    scf
    nop
    ldh a, [$ec]
    db $76
    ccf
    sbc e
    ld sp, $ff7b
    rst $38
    di
    rst $28
    rst $38
    cp $fc
    add b
    nop
    ld [hl], e
    ld [hl], l
    ld a, l
    ld a, l
    db $fd
    db $fd
    reti


    add hl, sp
    ld a, [c]
    ld a, [c]
    call nz, $0804
    db $10
    ld h, b
    add b
    inc [hl]
    ld d, h
    ld e, h
    inc [hl]
    ld a, [hl-]
    ld a, [hl-]
    inc bc
    inc [hl]
    add a
    ld [hl], h
    ld d, h
    inc l
    inc a
    ld a, [hl-]
    ld a, c
    or l
    ld [$a100], sp
    inc [hl]
    ld d, h
    ld e, h
    inc [hl]
    ld a, [hl-]
    ld a, [hl-]
    inc [hl]
    inc [hl]
    nop
    rrca
    rla
    ld h, $12
    inc c
    rra
    cpl
    ld e, a

jr_078_4923:
    cp [hl]
    cp [hl]
    sbc [hl]
    add a
    ld b, d
    jr nc, jr_078_4939

    nop
    ld h, b
    cp b
    ld a, h
    ld a, b
    ldh a, [$f8]
    db $f4
    ld a, [$1d03]
    adc c
    dec a
    ld a, [c]
    inc c

jr_078_4939:
    ldh a, [$7f]
    rst $38
    ldh [$c0], a
    rst $00
    ld b, $cf
    adc l
    call z, $ffd7
    rst $38
    ld a, a
    cp $ff
    rlca
    rrca
    rst $38
    rst $28
    rst $30
    rst $30
    inc bc
    rst $38
    add c
    rst $30
    inc bc
    rst $38
    add c
    cp $04
    rst $38
    sub h
    cp $fd
    ei
    or $ff
    ld hl, sp-$40
    jr nz, jr_078_4923

    add e
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

jr_078_4978:
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
    jp nc, Jump_000_18cc

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
    jr nz, jr_078_4978

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
    jr nz, jr_078_4a3a

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
    jr nc, jr_078_4a50

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

jr_078_4a39:
    and c

jr_078_4a3a:
    inc bc
    inc b
    inc bc
    rra
    rst $38
    ld [de], a
    nop
    nop
    cp d
    nop
    nop
    ld bc, $0602
    ld [$7010], sp
    sbc b
    db $ed
    rst $30
    or $e9

jr_078_4a50:
    or a
    ld e, a
    ld a, c
    jr c, jr_078_4a39

    ld e, e
    xor l
    or a
    ld bc, $3e00
    rst $38
    ret nz

    ld a, $7b
    db $fd
    db $fd
    ld a, e
    rst $20
    nop
    ldh a, [rBCPS]
    or b
    ld b, b
    ld e, [hl]
    dec l
    ld [hl], $98
    ret z

    ld e, [hl]
    sbc l
    sub [hl]
    adc b
    jr jr_078_4a81

    ld b, $19
    ld [hl+], a
    cpl
    ld e, a
    ld e, l
    ld d, h
    ld c, [hl]
    ld d, c
    jr nz, jr_078_4a84

    nop
    or b
    sbc h

jr_078_4a81:
    ld a, a
    rst $38
    ld a, a

jr_078_4a84:
    db $e4
    pop de
    xor e
    ld a, [hl]
    ld c, [hl]
    or a
    dec bc
    rra
    cpl
    daa
    db $10
    rrca
    ld a, a
    inc a
    ldh [$1f], a
    cp $ce
    ld e, l
    cp l
    ld a, e
    or $ed
    ret c

    sbc h
    daa
    ld sp, hl
    cp $8d
    add $48
    ld d, b
    ld d, b
    and b
    and e
    cpl
    ld e, h
    ld [hl], e
    inc d
    db $eb
    ld c, c
    rlca
    add c
    pop bc
    dec b
    nop
    adc e
    ld a, h
    jp nz, $c23d

    inc a
    cp $fc
    ldh a, [$e0]
    nop
    nop
    inc bc
    inc bc
    add a
    ld l, a
    db $db
    db $db
    db $fd
    db $fd
    ld a, [$0651]
    nop
    add e
    rst $38
    cp e
    db $fd
    dec b
    rst $38
    and c
    cp $38
    adc a
    ld c, b
    ld l, b
    ldh a, [$60]
    nop
    ld b, b
    or [hl]
    cp a
    db $ed
    db $ec
    cp $fe
    db $fc
    ld a, b
    ld sp, hl
    ret


    add hl, bc
    ld de, $3d19
    ld e, $b0
    ld hl, sp-$24
    cp d
    ld l, [hl]
    rst $38
    or c
    add d
    db $fc
    rlca
    nop
    and b
    sbc h
    ld a, a
    rst $38
    ld a, a
    db $e4
    pop de
    cp e
    ld b, [hl]
    ld b, d
    sbc a
    ccf
    ld a, e
    rst $28
    rst $20
    or b
    rst $08
    adc l
    add $48
    ld d, b
    ld d, b
    and b
    and b
    jr nz, @+$51

    ld a, a
    nop
    rst $28
    ld c, b
    add a
    jp $0841


    nop
    and h
    ret nz

    ldh a, [$38]
    call z, $fb76
    db $fd
    ld a, a
    sbc h
    ld a, a
    rst $38
    ld a, a
    db $e4
    pop de
    cp e
    ld b, [hl]
    ld b, d
    add c
    ld bc, $2f13
    daa
    db $10
    rrca
    rlca
    dec bc
    inc de
    ld a, a
    db $db
    db $db
    db $fd
    db $fd
    ld a, [$1251]
    inc c
    inc b
    nop
    xor h
    adc l
    add $48
    ld d, b
    ld d, b
    and b
    and b
    jr nz, jr_078_4b88

    ld [hl], b
    ld [$72e4], sp
    ld [de], a
    sbc c
    reti


    ld l, b
    ld l, b
    db $e4
    ld a, [c]
    pop af
    db $fd
    db $fc
    cp $7b
    ld sp, hl
    ret


    add hl, bc
    ld de, $3d19
    ld e, $f0
    jr c, jr_078_4b6e

    ld a, [hl-]
    ld b, $07
    add e
    ld d, d
    ld c, h
    inc b
    call nz, $0638
    nop
    add h

jr_078_4b6e:
    inc a
    ld a, [hl]
    jp Jump_000_0481


    nop
    add h
    inc a
    ld a, [hl]
    jp Jump_000_0481


    nop
    xor [hl]
    inc bc
    inc c
    ld de, $2f17
    cpl
    inc l
    add hl, hl
    inc hl
    ld [de], a
    ld a, [bc]
    inc b

jr_078_4b88:
    nop
    nop
    inc h
    ld c, a
    cp a
    ld a, a
    cp $f0
    adc $9f
    rra
    call c, $e6f1
    ld a, b
    ld bc, $0202
    ld a, a
    inc a
    pop af
    rst $08
    ld e, $f9
    rst $30
    adc $98
    ld h, b
    and c
    ld b, b
    db $fc
    rlca
    ld sp, hl
    cp $0a
    nop
    or d
    rlca
    jr jr_078_4bd6

    ld c, a
    ld e, a
    add e
    nop
    nop
    ld bc, $463a
    or e
    ld c, d
    xor h
    adc l
    rst $38
    cp a
    db $db
    ld a, $86
    di
    cp $38
    db $e4
    ld e, e
    db $fc
    add e
    ld bc, $8f7c
    xor a
    adc [hl]
    rst $38
    rst $38
    db $fd
    ld a, c
    inc bc
    add a
    cp c
    push bc
    ld [bc], a

jr_078_4bd6:
    ld [bc], a
    ld bc, $0100
    ld [bc], a
    inc bc
    ld bc, $0102
    inc b
    nop
    ldh [rIE], a
    rrca
    ld [hl], e
    adc b
    dec b
    ld [bc], a
    pop hl
    ld a, [de]
    and $1a
    or $fb
    ld a, l
    ccf
    rlca
    ld [bc], a
    db $fd
    ld hl, sp+$18
    ld a, h
    cp $ee
    ld c, [hl]
    sbc l
    cp l
    cp d
    ld a, e
    db $f4
    ld [hl], h
    rst $20
    call z, $001f
    ld [bc], a
    ld b, $1c
    jr c, jr_078_4c38

    ld h, b
    pop bc
    add e
    ld b, $0c
    inc c
    add hl, de
    inc sp
    ld [hl+], a
    nop
    nop
    inc b
    inc c
    jr @+$32

    ld h, d
    adc $9c
    inc sp
    ld h, e
    ld h, [hl]
    call z, Call_000_1098
    nop
    nop
    inc bc
    rlca
    ld [bc], a
    ld bc, $1f01
    ccf
    ld h, b
    ld c, a
    add hl, sp
    ld e, $3f
    cpl
    ld hl, $1e11
    nop
    jp $3ce7


    ld b, d
    add c

jr_078_4c38:
    add c
    jp $a566


    cp l
    ld b, d
    cp l
    rst $20
    sbc c

jr_078_4c41:
    ld a, h
    inc bc
    ld [bc], a
    add c
    ld bc, $0004
    sbc l
    rra
    ld a, a
    rst $28
    ldh a, [rVBK]
    ccf
    daa
    dec de
    ld a, l
    xor a
    rst $10
    ld [hl], e
    cp l
    ld e, l
    dec l
    ld e, $d7
    db $eb
    dec sp
    call c, Call_078_473a
    sbc a
    cp a
    ld bc, $0f01
    ld [de], a
    ccf
    inc bc
    rra
    cp h
    rrca
    inc b
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    inc bc
    nop
    ccf
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, l
    rst $38
    ld e, a
    ld c, a
    ld [hl], b
    cpl
    jr nz, @-$5e

    jr nz, jr_078_4c41

    inc h
    ld c, a
    cp a
    ld a, a
    cp $f0
    adc $9f
    rra
    call c, $e7f1
    ld a, e
    ld b, $06
    inc c
    ld a, a
    inc a
    pop af
    rst $08
    ld e, $f9
    rst $30
    adc $98
    ld [hl], c
    pop de
    ldh a, [rNR41]
    jr nz, jr_078_4ce7

    sbc a
    dec c
    add hl, bc
    ld a, [bc]
    ld b, $04
    inc b
    add h
    ld [bc], a
    rlca
    dec c
    add hl, bc
    inc bc
    rrca
    and c
    inc b
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $fd
    rst $38
    ld e, a
    rst $08
    ldh a, [$1f]
    ret nc

    ldh [$c0], a
    add b
    adc l
    add $48
    ld d, b
    ld d, b
    and b
    and b
    jr nz, jr_078_4d09

jr_078_4cc9:
    ld b, b
    ld c, [hl]
    or a
    ld c, c

jr_078_4ccd:
    inc b
    ld [c], a
    ld sp, hl
    inc c
    nop
    or h
    add b
    ret nz

    ret nz

    ld h, b
    nop
    nop
    ld bc, $0602
    ld [$7830], sp
    call Call_078_48b7
    rst $28
    and $b6
    ld e, a
    ld a, c

jr_078_4ce7:
    jr c, jr_078_4ccd

    ld e, e
    xor l
    or a
    ld bc, $ff3c
    jp $867c


    dec de
    dec a
    ld a, l
    ld a, e

jr_078_4cf6:
    rst $20
    ld a, a
    inc a
    ldh [$1f], a
    cp $ce
    ld e, l
    cp l
    ld a, e
    or $ed
    ret c

    sub b
    jr nz, jr_078_4ccd

    sbc a
    ld [de], a
    nop

jr_078_4d09:
    cp b
    ld bc, $0703
    rrca
    rra
    ld a, a
    rst $28
    or a
    cp $99
    sbc a
    rst $08
    ld a, a
    ld a, a
    jr c, jr_078_4cf6

    cp e
    ld l, [hl]
    ld a, b
    cp $ff
    rst $38
    pop bc
    ccf
    rst $38
    rst $20
    jp $e783


    rst $38
    nop
    ldh a, [$98]
    ld [hl], b
    ret nz

    sbc $f3
    adc $e8
    ld a, b
    cp $e3
    xor $f8
    ld hl, sp-$02
    ld b, $1f
    dec a
    jr nc, jr_078_4d9d

    ld h, d
    ld l, a

jr_078_4d3f:
    ld a, a
    ld [hl], c
    jr nz, jr_078_4d49

    nop
    xor l
    db $e3
    sbc b
    jr nc, jr_078_4cc9

jr_078_4d49:
    dec de
    ccf
    ld l, a
    rst $38
    rst $30
    cp e
    rrca
    rra
    ccf
    jr c, jr_078_4d73

    rrca
    ld hl, sp-$3d
    rra
    cp $fd
    db $fd
    cp e
    ld a, e
    rst $30
    rst $28
    sbc $bf
    ld a, a
    rst $38
    rst $00
    ld sp, hl
    di
    ld a, [hl]
    ld hl, sp-$10
    ldh a, [$e0]
    db $e3
    db $ec
    db $d3
    rst $28
    rst $28
    inc e
    cp [hl]
    inc bc

jr_078_4d73:
    rst $38
    dec b
    nop
    sub l
    ld a, h
    cp [hl]
    rst $38
    cp $cc
    ld [bc], a
    inc a
    db $10
    ldh [rP1], a
    nop
    inc bc
    inc bc
    ld [bc], a
    ld l, [hl]
    or a
    rst $38
    and a
    xor a
    xor e
    ld d, c
    ld b, $00
    xor c
    cp $67
    inc hl
    ld hl, $de73
    adc h
    cp $f7
    rst $38
    rst $38
    ld a, b
    ld a, b
    sub b

jr_078_4d9d:
    ld h, b
    nop
    rst $38
    ld a, a
    ld a, a
    ld e, e
    ld a, a
    sub e
    or a
    or a
    rst $38
    rst $38

jr_078_4da9:
    rst $08
    rrca
    rra
    rra
    daa
    ld e, $b0
    ret z

    cp h
    and $de
    pop af
    rst $08
    cp $fc
    rlca
    nop
    sub l
    db $e3
    sbc b
    jr nc, jr_078_4d3f

    dec de
    ccf
    ld a, a
    rst $00
    jp $219f


    ld e, a
    rst $38
    cp b
    rst $38
    rst $08
    di
    ld a, [hl]
    ld hl, sp-$10
    ldh a, [$03]
    ldh [$88], a
    rst $08
    ldh a, [rIE]
    rra
    cp a
    db $fc
    rst $38
    rst $38
    ld [$a400], sp
    ret nz

    jr nc, jr_078_4da9

    db $f4
    ld a, [$cf1d]
    ld a, a
    db $e3
    sbc b
    jr nc, @-$7e

    dec de
    ccf
    ld a, a
    rst $00
    jp $0181


    inc de
    ccf
    jr c, jr_078_4e14

    rrca
    rlca
    rrca
    ld e, $7e
    or a
    rst $38
    and a
    xor a
    xor a
    ld e, a
    ld e, $0c
    inc b
    nop
    add l
    di
    ld a, [hl]
    ld hl, sp-$10
    ldh a, [$03]
    ldh [$87], a
    ret nz

    ldh a, [$f8]
    inc e
    adc [hl]
    xor $e7

jr_078_4e14:
    inc bc
    rst $30
    sbc d
    ld a, e
    ld e, l
    ld a, [hl]
    sbc [hl]
    or a
    or a
    rst $38
    rst $38
    rst $08
    rrca
    rra
    rra
    daa
    ld e, $f0
    ld hl, sp-$04
    cp $fe
    db $fd
    ld a, a
    cp [hl]
    cp h
    db $fc
    db $fc
    jr c, jr_078_4e39

    nop
    add e
    inc a
    ld b, d
    add c
    dec b
    nop

jr_078_4e39:
    add e
    inc a
    ld b, d
    add c
    inc b
    nop
    xor [hl]
    inc bc
    rrca
    ld e, $18
    jr nc, jr_078_4e76

    inc sp
    scf
    ccf
    ld e, $0e
    inc b
    nop
    nop
    dec sp
    ld [hl], b
    call z, Call_000_0198
    rrca
    ccf
    ld a, a
    db $fc
    di
    rst $28
    sbc [hl]
    ld a, b
    ld bc, $0303
    ld hl, sp-$3d
    rrca
    ld a, $f9
    rst $30
    rst $08

jr_078_4e65:
    cp a
    ld a, a
    rst $38
    cp [hl]
    ld a, a
    rst $38
    rst $38
    rlca
    ld sp, hl
    ld a, [bc]
    nop
    or d
    rlca
    rra
    add hl, sp
    ld [hl], b
    ld h, b

jr_078_4e76:
    db $fc
    nop
    nop
    ld bc, $7f3b
    rst $38
    ld a, a
    rst $30
    rst $30
    add d
    jp nz, $ffe6

    ld a, a
    ccf
    dec sp
    jr c, jr_078_4e65

    cp e
    ld a, a
    cp $ff
    rst $38
    rst $30
    ld [hl], d
    ld [hl], e
    ld bc, $0301
    add a
    rst $38
    db $fd
    cp $c6
    inc bc
    inc bc
    ld bc, $0100
    inc bc
    inc bc
    ld bc, $0103
    inc b
    nop
    xor a
    jr @-$0e

    db $fc
    adc a
    rlca
    ld [bc], a
    pop hl
    ei
    rst $38
    rst $38
    rrca
    rst $20
    ld b, e
    ccf
    inc b
    inc bc
    ld a, d
    rlca
    rst $38
    rst $38
    db $fd
    db $fd
    cp l
    ld a, e
    ld a, e
    ld [hl], a
    or $ef
    rst $28
    rst $18
    dec sp
    ld hl, sp+$00
    nop
    ld [bc], a
    inc b
    ld [$2010], sp
    ld b, b
    add c
    ld [bc], a
    inc b
    inc b
    ld [$2211], sp
    inc bc
    nop
    and d
    inc b
    ld [$2010], sp
    ld b, d
    adc h
    db $10
    ld hl, $4422
    adc b
    stop
    nop
    inc bc
    inc b
    inc bc
    ld bc, $1f01
    jr nz, jr_078_4f4d

    ld a, a
    ccf
    ld de, $3020
    ccf
    rra
    rra
    nop
    jp $db24


    inc bc
    rst $38
    adc c
    ld a, [hl]
    cp l
    rst $38
    db $db
    rst $38
    ld a, [hl]
    rst $38
    rst $20
    add e
    inc bc
    inc bc
    add c
    ld bc, $0004
    or h
    rra
    ld h, b
    sbc a
    rst $38
    ld [hl], b
    jr nc, jr_078_4f51

    dec de
    add d
    sub $fa
    cp h
    sbc $6e
    ld [hl], $17
    db $db
    cpl
    sbc $ef
    rst $20
    rst $38
    ld hl, sp-$20
    ld bc, $0f01
    rra
    inc h
    rra
    inc d
    dec d
    rrca
    rlca
    inc bc
    inc bc
    dec b
    inc b
    inc bc
    nop
    rst $28
    reti


    pop de
    pop de
    db $d3
    rst $18
    adc $c7
    db $ed
    db $fd
    rst $38
    rst $28
    inc bc
    ldh [$9d], a
    ret nz

    dec sp
    ld [hl], b
    call z, Call_000_0198
    rrca
    ccf
    ld a, a

jr_078_4f4d:
    db $fc
    di
    rst $28
    sbc a

jr_078_4f51:
    ld a, d
    dec b
    dec b
    dec bc
    ld hl, sp-$3d
    rrca
    ld a, $f9
    rst $30
    rst $08
    cp a
    ld a, a
    cp $de
    ccf
    inc bc
    rst $38
    add h
    ld hl, sp+$0b
    rrca
    rrca
    dec b
    rlca
    sbc l
    inc bc
    rlca
    dec bc
    rrca
    rrca
    add hl, bc
    dec bc
    inc b
    rst $28
    reti


    pop de
    sub c
    sub e
    sbc a
    adc [hl]
    add a
    db $ed
    db $fd
    ccf
    rst $38

Call_078_4f7f:
    ldh a, [rNR41]
    ld b, b
    add b
    di
    ld a, [hl]
    ld hl, sp-$10
    ldh a, [$03]
    ldh [$88], a
    ret nz

    ret nz

    adc $79
    cp [hl]
    rst $38
    rst $38
    rra
    inc c
    nop
    or h
    add b
    ld b, b
    ld b, b
    and b
    nop
    nop
    ld bc, $0703
    rrca
    ccf
    ld c, a
    or a
    ld a, [$9f7f]
    sbc a
    rst $08
    ld a, a
    ld a, a
    jr c, @-$22

    cp e
    ld l, [hl]
    ld a, b
    cp $ff
    jp $ff3c


    rst $38
    rst $20
    jp $e783


    rst $38
    ld hl, sp-$3d
    rra
    cp $fd
    db $fd
    cp e
    ld a, e
    rst $30
    rst $28
    sbc $bf
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$12
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    nop
    nop
    inc a
    ld a, a
    rst $38
    or d
    ld c, a
    dec [hl]
    inc b
    inc b
    adc h
    rlca
    dec de
    scf
    ld e, a
    nop
    nop
    ldh a, [$f8]
    db $fc
    call z, $dc2c
    inc b
    sbc h
    and h
    db $fc
    cp $9f
    ld a, a
    db $eb
    ld d, [hl]
    rst $38
    rst $10
    ld sp, hl
    rst $38
    or $e1
    ld b, e
    ld b, a
    db $fc
    ld [hl], a
    ld a, a
    ld e, l
    ld b, h
    dec a
    ld a, $56
    xor [hl]
    cp $be
    rst $38
    rst $38

jr_078_5009:
    rst $18
    sbc l
    di
    ld c, $f2
    ld c, $fc
    ld hl, sp-$08
    dec b
    nop
    adc e
    inc bc
    rrca
    rra
    ccf
    jr nc, jr_078_5082

    ld l, a
    rst $28
    rst $20
    ldh a, [rIE]
    inc b
    nop
    add d
    rst $38
    rst $20
    inc bc
    rst $38
    add a
    ld a, [hl]
    inc a
    and l
    cp l
    inc a

jr_078_502d:
    ld a, [hl]
    rst $38
    inc bc
    nop
    add l
    rlca
    inc e
    jr z, jr_078_5066

    ld d, e
    inc bc
    ld d, a
    add l
    ld d, e
    jr nc, jr_078_5065

    inc e
    rlca
    inc bc
    nop
    add l
    ret nz

    jr nc, @+$4a

    adc b
    add h
    inc bc
    call nz, $8485
    adc b
    ld c, b
    jr nc, @-$3e

    inc bc
    nop
    add h
    rlca
    add hl, de
    ld [hl+], a
    inc h
    dec b
    ld b, a
    add h
    inc h
    ld [hl+], a
    add hl, de
    rlca
    inc bc
    nop
    add l
    ret nz

    jr nc, jr_078_506b

    jr jr_078_5009

jr_078_5065:
    inc bc

jr_078_5066:
    db $e4
    sbc d
    and h
    jr jr_078_5073

jr_078_506b:
    jr nc, jr_078_502d

    db $eb
    ld d, [hl]
    rst $38
    rst $10
    ld sp, hl
    rst $38

jr_078_5073:
    rst $30
    rst $20
    ld b, e
    ld b, a
    rst $38
    ld [hl], a
    ld a, a
    ld e, l
    ld b, h
    dec a
    ld a, $56
    xor [hl]
    cp $be

jr_078_5082:
    inc bc
    rst $38
    adc b
    ld a, a
    ccf
    ld a, a
    db $fd
    inc a
    cp $fb
    ld hl, sp+$07
    nop
    add d
    ldh [$f0], a
    inc bc
    ld hl, sp-$67
    add sp, $14
    db $f4
    db $e4
    db $eb
    ld d, [hl]
    rst $38
    rst $10
    ld sp, hl
    rst $38
    rst $30
    rst $20
    ld b, e
    ld b, a
    rst $38
    ld [hl], a
    ccf
    dec e
    inc de
    inc de
    ld a, $56
    xor [hl]
    cp $be
    inc bc
    rst $38
    and d
    ld a, a
    ccf
    ld a, a
    db $fd
    db $fc
    cp $ff
    db $fc
    ld bc, $0202
    ld bc, $0502
    dec b
    inc b
    ld [bc], a
    ld bc, $3f0f
    ld a, a
    ld a, a
    add hl, sp
    nop
    ld bc, $0202
    ld bc, $0502
    dec b
    inc b
    ld [bc], a
    ld bc, $0006
    and b
    db $eb
    ld d, [hl]
    rst $38
    rst $10
    ld sp, hl
    rst $38
    or $e0
    ld b, c
    ld b, a
    db $fc
    ld [hl], a
    ld a, a
    ld e, l
    ld b, h
    dec a
    ld a, $56
    xor [hl]
    cp $be
    rst $38
    ccf
    rst $08
    cp l
    ld [hl], e
    ld c, $f2
    ld c, $fc
    ld hl, sp-$08
    rlca
    nop
    add e
    ret nz

    inc a
    ld a, d
    inc bc
    cp l
    add e
    cp d
    jp c, Jump_000_05fd

    nop
    adc e
    inc bc
    rrca
    rra
    ld a, $3b
    ld a, a
    ld a, c
    ldh a, [rIE]
    rst $38
    db $fc
    inc b
    nop
    add d
    rst $38
    rst $20
    inc bc
    rst $38
    or h
    ld a, [hl]
    cp l
    ld b, d
    inc a
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    cp e
    add $fa
    ld b, d
    ld a, $3f
    rst $38
    dec a
    ld a, l
    cp d
    or d
    call nz, Call_078_68f8
    jr z, jr_078_516c

    inc a
    ld a, $7f
    ld a, a
    ld a, e
    ld h, $ff
    ccf
    ld a, a
    cp l
    cp c
    jp nz, Jump_078_68fc

    jr z, jr_078_5141

    ld [bc], a

jr_078_5141:
    ld [bc], a
    ld bc, $0502
    dec c
    inc e
    ld a, $3f
    ld l, $11
    ld c, $03
    nop
    sub l
    db $fd
    xor l
    db $d3
    rst $38
    ei
    rst $38
    or $e1
    ld b, c
    ld b, a
    rst $38
    ld [hl], h
    ccf
    dec e
    inc b
    dec b
    cp h
    ld d, [hl]
    xor [hl]
    cp $bf
    inc b
    rst $38
    add a
    db $fd
    ei

jr_078_5169:
    rrca
    rst $38
    db $fc

jr_078_516c:
    ld hl, sp-$08
    inc b
    nop
    xor h
    ret nz

    inc a
    ld a, [hl]
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, [hl-]
    add h
    ld hl, sp+$28
    jr z, jr_078_5169

    ld d, [hl]
    rst $38
    rst $10
    ld sp, hl
    rst $38
    or $e0
    ld b, c
    ld b, a
    db $fc
    ld [hl], a
    rst $38
    db $dd
    db $e4
    ld a, l
    db $eb
    ld d, [hl]
    rst $38
    rst $10
    ld sp, hl
    rst $38
    or $e0
    ld b, c
    ld b, a
    db $fc
    ld [hl], a
    ld a, a
    ld a, l
    db $fc
    push hl
    inc b
    nop
    adc h
    ld bc, $7f3b
    db $fd
    db $fc
    or [hl]
    add l
    ld c, [hl]
    ccf
    rla
    cpl
    ld a, a
    inc b
    nop
    adc h
    ldh a, [$fc]
    cp $8f
    rra
    ld h, a
    rst $20
    ld c, [hl]
    cp $fc
    adc $bf
    inc bc
    dec bc
    sbc l
    add hl, bc
    dec bc
    ld [$0c0b], sp
    dec b
    rlca
    rra
    ccf
    ld a, [de]
    cpl
    ld c, e
    ld a, a
    ld e, e
    ld e, e
    ld c, e
    ld a, c
    ei
    ld hl, sp-$45
    ld c, h
    dec a
    rlca
    rra
    ccf
    ld a, [de]
    cpl
    ld c, e
    ld a, a
    inc bc
    db $fc
    adc l
    ld hl, sp+$6c
    nop
    rst $38
    nop
    cp $df
    db $dd
    di
    rra
    cp e
    xor d
    ei
    inc bc
    ld a, l
    sbc b
    dec l
    ld a, l
    cp $bb
    push bc
    ld a, [hl-]
    call z, $3cde
    ld a, [c]
    db $ed
    di
    rst $38
    ei
    rst $10
    cp e
    call Call_078_4f7f
    ld [hl], $2a
    ld d, $0d
    inc bc
    dec b
    nop
    add c
    cp l
    dec b
    rst $38
    add [hl]
    cp l
    add c
    cp l
    jp $ff00


    inc c
    nop
    and c
    inc a
    ld a, [hl]
    rst $38
    db $fd
    db $fd
    ei
    ld h, [hl]
    inc a
    jr z, jr_078_5244

    inc d
    ld [de], a
    ld a, [bc]
    dec b
    db $fd
    ld a, [bc]
    inc c
    call z, Call_000_3ede
    ld a, [c]
    db $ed
    di
    rst $38
    ld bc, $253e
    inc sp
    dec e
    rrca
    rlca
    inc bc
    ld bc, $0007
    adc e
    sbc a
    cp $7d
    ld a, [hl]
    rst $38
    ccf
    sbc a
    cp d
    ret


    ret nc

jr_078_5244:
    ld h, b
    dec b
    nop
    adc e
    ld hl, sp-$10
    dec hl
    ret nz

    ccf
    ret nz

    db $fd
    db $fd
    ccf
    jp $053d


    nop
    adc h
    ld a, b
    call z, $ff3a
    ld a, c
    ei
    ei
    push hl
    cp [hl]
    call nz, $f078
    inc b
    nop
    adc b
    rlca
    rra
    ccf
    ccf
    inc a
    ld d, b
    ld h, c
    and a
    inc bc
    xor a
    sub l
    and a
    ld h, c
    ld d, b
    jr c, jr_078_5284

    db $eb
    set 7, e
    jp hl


    db $eb
    sbc b
    dec de
    inc c
    adc l
    adc a
    adc a
    rrca
    ld a, [de]
    sbc a
    ld l, e

jr_078_5284:
    rst $38
    ld [hl+], a
    nop
    add [hl]
    inc a
    ld b, e
    add d
    rst $08
    ld a, a
    scf
    dec b
    rlca
    adc c
    inc e
    jr c, jr_078_5304

    nop
    nop
    ldh a, [$08]
    inc b
    inc [hl]
    ld b, $f4
    adc e
    db $fc
    ld b, $79
    db $fd
    ld d, a
    rst $38
    rst $38
    xor a
    rlca
    nop
    add hl, de
    inc b
    rst $38
    sub l
    ld c, a
    ld h, a
    ld a, a
    ld a, a
    daa
    ld a, [$f2ba]
    cp $c2
    ld bc, $f9f1
    di
    rst $28
    rst $38
    rst $38
    di
    add a
    rst $38
    rst $38
    dec b
    nop
    adc e
    inc bc
    inc c
    db $10
    cpl
    ccf
    ld a, b
    ld [hl], h
    or b
    cp b
    cp a
    cp a
    inc b
    nop
    adc h
    rst $38
    inc a
    jr jr_078_52ed

    rst $20
    jp Jump_078_7ee7


    ld a, [hl]
    rst $20
    rst $20
    jp Jump_000_0003


    add l
    rlca
    rra
    ccf
    ccf
    ld a, h
    inc bc
    ld a, b
    add l
    ld a, h
    ccf
    ccf
    rra
    rlca

jr_078_52ed:
    inc bc
    nop
    add l
    ret nz

    ldh a, [$f8]
    ld hl, sp-$04
    inc bc
    cp h
    add l
    db $fc
    ld hl, sp-$08
    ldh a, [$c0]
    inc bc
    nop
    add h
    rlca
    rra
    ccf
    ccf

jr_078_5304:
    dec b
    ld a, h
    add h
    ccf
    ccf
    rra
    rlca
    inc bc
    nop
    add l
    ret nz

    ldh a, [$f8]
    ld hl, sp+$7c
    inc bc
    inc a
    and l
    ld a, h
    ld hl, sp-$08
    ldh a, [$c0]
    ld d, a
    rst $38
    rst $38
    xor a
    rlca
    ld bc, $fc1a
    rst $38
    cp $fc
    ld c, a
    ld h, a
    ld a, a
    ld a, a
    daa
    ld a, [$f2ba]
    cp $c2
    pop af
    ld c, l
    add e
    ld hl, sp-$20
    jp nz, $fffe

    add a
    rst $38
    rst $38
    rlca
    nop
    add [hl]
    ldh [$90], a
    ld c, b
    jr z, jr_078_534b

    jr jr_078_5348

    db $fc
    cp d
    ld d, a

jr_078_5348:
    rst $38
    rst $38
    xor a

jr_078_534b:
    rlca
    ld bc, $fc1a
    rst $38
    cp $fc
    ld c, a
    daa
    rra
    ld e, $1e
    ld a, [$f2ba]
    cp $c2
    pop af
    ld c, l
    add e
    ld hl, sp-$20
    jp nz, $fffe

    rst $38
    ld c, a
    ld c, a
    ld bc, $0303
    ld bc, $0603
    rlca
    rlca
    inc bc
    ld bc, $310f
    ld b, b
    ld d, [hl]
    add hl, sp
    nop
    ld bc, $0303
    ld bc, $0603
    rlca
    rlca
    inc bc
    ld bc, $0006
    add a
    ld d, a
    rst $38
    rst $38
    xor a
    rlca
    nop
    add hl, de
    inc b
    rst $38
    sub l
    ld c, a
    ld h, a
    ld a, a
    ld a, a
    daa
    ld a, [$f2ba]
    cp $c2
    ld bc, $f9f1
    jp $ff8f


    rst $38
    di
    add a
    rst $38
    rst $38
    rlca
    nop
    add e
    ret nz

    db $fc
    and $03
    jp $c683


    and $c3
    dec b
    nop
    adc e
    inc bc
    inc c
    ld de, $2c27
    ld c, a
    ld e, a
    sbc a
    sbc a
    sub b
    db $e3
    inc b
    nop
    cp c
    rst $38
    inc a
    jr jr_078_53dc

    jp $dbe7


    rst $38
    rst $38
    jp $8181


    or l
    db $fd
    cp d
    add [hl]
    ld a, [hl]
    ld [hl+], a
    ld hl, $e3e1
    jp $cec6


    db $fc
    ld hl, sp-$08
    ret c

jr_078_53dc:
    inc h
    inc l
    ld [hl-], a
    ld c, c
    ld d, c
    ld e, l
    ld a, [hl-]
    ld sp, hl
    pop hl
    pop hl
    db $d3
    rst $00
    cp $fc
    ld hl, sp-$28
    ld bc, $0303
    ld bc, $0603
    rrca
    rla
    dec hl
    add hl, hl
    scf
    rra
    ld c, $03
    nop
    add a
    add e
    db $d3
    rst $38
    rst $38
    sub a
    ld b, $1d
    inc b
    rst $38
    sub l
    ld c, a
    daa
    rra
    rlca
    rlca
    db $fc
    cp d
    ld a, [c]
    cp $c3
    add hl, sp
    db $fd
    push de
    ld e, l
    ld a, e
    rst $20
    rst $38
    di
    add a
    rst $38
    rst $38
    inc b
    nop
    sub e
    ret nz

    db $fc
    ld [c], a
    ld sp, hl
    adc c
    push bc
    add l
    add $fc
    ld hl, sp-$08
    ret c

    ld d, a
    rst $38
    rst $38
    xor a
    rlca
    nop
    add hl, de
    inc b
    rst $38
    adc h
    rst $08
    rst $20
    ld a, a
    sbc a
    ld a, a
    ld d, a
    rst $38
    rst $38
    xor a
    rlca
    nop
    add hl, de
    inc b
    rst $38
    add l
    ld c, a
    ld h, a
    ld e, a
    add a
    sbc a
    inc b
    nop
    adc h
    ld bc, $443a
    add [hl]
    add a
    rst $08
    rst $38
    ld a, a
    ccf
    jr jr_078_5486

    ld h, b
    inc b
    nop
    adc [hl]
    ldh a, [$0c]
    ld [bc], a
    ld [hl], c
    ld sp, hl
    db $fd
    db $fd
    ld a, [$0cf2]
    ld [hl-], a
    ld a, l
    ld c, $0e
    ld b, $0f
    sbc e
    ld b, $04
    ld e, $27
    rra
    ld [hl], $76
    ld a, a
    ld l, [hl]
    ld l, [hl]
    ld a, a
    ld c, a
    adc a
    adc a
    rst $18
    ld a, a
    ld a, $04
    ld e, $27
    rra
    ld [hl], $76
    ld a, a
    ld c, a
    ld c, a
    cp a

jr_078_5486:
    dec b
    rst $38
    adc b
    ld bc, $3e20
    rst $38
    rst $38
    ld l, d
    ld a, e
    ei
    inc bc
    jp $f398


    jp $e782


    rst $38
    cp $3c
    ld [hl-], a
    db $ec
    cp $b3
    xor l
    rst $38
    and a
    cp a
    rst $38
    or $7b
    ld a, l
    ccf
    ccf
    rra
    rrca
    inc bc
    dec b
    nop
    add [hl]
    jp $e7ff


    ld h, [hl]
    cp l
    jp $ff06


    rrca
    nop
    sbc [hl]
    ld [bc], a
    ld [bc], a
    inc b
    jr jr_078_54bf

jr_078_54bf:
    ret c

    call c, $eeec
    or $fb
    rst $38
    cp $fc
    inc a
    ld [hl-], a
    xor $fe
    or e
    xor l
    rst $38
    ld bc, $3b3f
    ccf
    rra
    inc c
    ld b, $03
    ld bc, $0007
    adc e
    sbc a
    ld h, a
    jp $c0c1


    ld [c], a
    ld [hl], a
    ld l, e
    ld sp, hl
    ldh a, [$60]
    dec b
    nop
    add c
    ld a, a
    inc b
    rst $38
    add [hl]
    ccf
    inc bc
    jp $ffff


    dec a
    dec b
    nop
    adc h
    ld hl, sp-$04
    or $e7
    rst $08
    ld e, a
    ld e, a
    rst $38
    cp $7c
    ld hl, sp-$10
    inc b
    nop
    adc b
    rlca
    jr jr_078_5528

    dec hl
    ccf
    ld a, a
    ld a, a
    ld sp, hl
    inc bc
    pop af
    adc d
    ld sp, hl
    ld a, a
    ld a, a
    ccf
    rrca
    ld e, $fe
    ld a, a
    cpl
    rst $28
    inc bc
    rst $38
    adc b
    ld a, [hl]
    ld a, h
    ld a, [hl]
    rst $38
    rst $38
    or $f6
    rst $38
    ld [hl+], a
    nop
    nop

jr_078_5528:
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    sub l
    jr jr_078_5547

    inc de
    inc d
    db $10
    ld [$0008], sp
    rra
    ccf
    rrca
    inc e
    dec hl
    dec sp
    ld a, a
    ld a, c
    ld c, [hl]
    ld l, a
    add a
    inc bc
    ld bc, $0003
    adc a

jr_078_5547:
    add b
    rst $38
    db $db
    ld a, [hl]
    and l
    and l
    cp l
    ld a, [hl]
    db $db
    ld h, [hl]
    sbc c
    rst $38
    rst $38
    ld a, [hl]
    jr @+$06

    nop
    xor c
    ld bc, $3f1e
    ld a, c
    ld d, [hl]
    rla
    scf
    jr z, jr_078_5589

    daa
    inc de
    stop
    rlca
    ccf
    ld c, [hl]
    sbc [hl]
    ld a, [hl]
    jp hl


    sbc [hl]
    or $74
    ld c, e
    di
    ld c, a
    rst $38
    rst $38
    ld a, [c]
    nop
    ret nz

    add b
    ldh a, [$88]
    and $61
    ld h, b
    ldh [$c0], a
    ret nz

    add b
    add b
    ld b, $00
    adc h
    jr @+$26

    ld b, h
    sub h

jr_078_5589:
    or h

Jump_078_558a:
    inc b
    ld b, $03
    add b
    jr c, jr_078_5594

    ld [bc], a
    dec bc
    nop
    add [hl]

jr_078_5594:
    add b
    ret nz

    ld h, b
    jr nc, jr_078_55a9

    jr jr_078_55a6

    nop
    sub e
    rlca
    dec de
    ld a, l
    ld a, $4e
    dec b
    inc b
    inc c
    ld [de], a

jr_078_55a6:
    ld de, $1719

jr_078_55a9:
    ld de, $2419
    ld b, d
    ld [hl], b
    ld c, $01
    ld a, [bc]
    nop
    adc b
    add hl, sp
    daa
    jr nz, jr_078_55d7

    db $10
    add hl, bc
    add hl, bc
    inc de
    inc bc
    nop
    adc e
    rrca
    ld a, e
    db $fd
    ld e, [hl]
    rst $28
    ccf
    rlca
    add hl, de
    rrca
    add a
    ld bc, $0003

jr_078_55cb:
    adc [hl]
    jr nc, jr_078_5606

    inc e
    rra
    rla
    dec bc
    ld c, $1d
    dec l
    ld l, $17

jr_078_55d7:
    inc de
    ld [$0307], sp

jr_078_55db:
    nop
    adc l
    jr nc, jr_078_55db

    cp $ff
    rst $28
    rst $30
    push af
    ld a, [c]
    ld [c], a
    inc b
    ld [$8070], sp
    dec b
    nop
    and e
    rra
    ccf
    ld a, c
    ld d, b
    ld d, $17
    scf
    jr z, jr_078_561d

    daa
    inc de
    stop
    rra
    ccf
    ld a, [hl]
    cp [hl]
    ld a, [hl]
    jp hl


    sbc [hl]
    db $76
    ld [hl], h
    ld c, e
    di
    ld c, a

jr_078_5606:
    rst $38
    rst $38
    ld a, [c]
    jr jr_078_561c

    ld sp, $2222
    ld h, [hl]
    ld b, [hl]
    dec b
    ld b, h
    add h
    ld b, [hl]
    ld h, d
    ld [hl+], a
    ld [hl+], a
    inc bc
    nop
    adc d
    ccf
    ld a, a

jr_078_561c:
    daa

jr_078_561d:
    dec sp
    ld a, a
    ld l, c
    ld b, [hl]
    ld h, a
    add e
    ld bc, $0005
    sub [hl]
    rst $38
    ld a, [hl]
    cp l
    db $db
    rst $20
    cp l
    ld a, [hl]
    db $db
    ld h, [hl]
    sbc c
    rst $38
    ld a, [hl]
    jr jr_078_5635

jr_078_5635:
    nop
    ld bc, $403e
    ld c, h
    inc h
    db $10
    inc c
    inc b
    ld [bc], a
    add c
    inc bc
    inc bc
    ld bc, $8081
    rlca
    nop
    inc bc
    jr nz, jr_078_55cb

    jr nc, jr_078_564f

jr_078_564c:
    db $10
    add l
    sbc b

jr_078_564f:
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0009
    add l
    ld b, b
    ld h, b
    jr nz, @+$22

    jr nc, jr_078_5661

    db $10
    sub c
    sub b

jr_078_5661:
    db $10
    ld [$1224], sp
    ld [bc], a
    ld a, [hl]
    ld b, b
    inc sp
    ld de, $4031
    ld b, b
    ld d, b
    ld b, h
    ld e, e
    ld h, b
    rlca
    nop
    add l
    inc b
    ld [hl], h
    ld c, b
    ld b, b
    jr nc, jr_078_567e

    ld de, $0804
    adc b

jr_078_567e:
    ld de, $001e
    add $00
    ld b, h
    jr c, jr_078_564c

    inc b
    rst $38
    add a
    cp $7c
    nop
    nop
    add e
    ld a, h
    nop
    inc b
    inc de
    adc d
    ld de, $0809
    inc b
    inc b
    ld [$1011], sp
    rla
    jr jr_078_56a5

    nop
    adc b
    add b
    add b
    ret nz

    jr nz, @+$11

jr_078_56a5:
    add e
    ldh [$1f], a
    rlca
    nop
    xor h
    ld a, $7f
    ldh [$ce], a
    rst $18
    ld e, a
    ld e, a
    ld c, [hl]
    jr nz, @+$41

    rla
    inc de
    nop
    rlca
    ccf
    ld e, [hl]
    cp [hl]
    cp $e1
    ld e, [hl]
    db $76
    ld [hl], h
    ld c, e
    ld [hl], e
    rst $08
    rst $38
    rst $38
    ld a, [c]
    nop
    nop
    ld bc, $0402
    ld [$2111], sp
    ld [hl+], a
    ld b, b
    ld b, b
    ld b, h
    adc b
    adc b
    add b
    add b
    ld [$9300], sp
    rrca
    ld [hl], b
    add b
    nop
    inc a
    ldh a, [$e0]
    add b
    inc sp
    ld de, $0819
    ld [$1210], sp
    inc d
    ld de, $1816
    ld [$8900], sp
    add b
    nop
    nop
    jr @+$11

    pop hl
    jr c, jr_078_5707

    ld bc, $000c
    add h
    rst $38
    nop
    nop
    rst $38
    inc b
    nop
    add a
    ld de, $0819
    inc c

jr_078_5707:
    ld b, $03
    ld bc, $000a
    adc [hl]

jr_078_570d:
    add b
    ret nz

    ld h, b
    jr nc, jr_078_572a

    add [hl]
    pop hl
    jr c, jr_078_5720

    ld a, [bc]
    ld [$0a09], sp
    inc c
    ld [$8600], sp
    rlca
    nop

jr_078_5720:
    nop
    ccf
    ld b, b
    add b
    dec b
    nop
    adc c
    ld bc, $0e03

jr_078_572a:
    jr c, jr_078_570d

    rlca
    inc e
    ldh a, [$80]
    rrca
    nop
    and l
    ret nz

    cp a
    add b
    adc b
    ld b, b
    jr c, jr_078_573a

jr_078_573a:
    rrca
    rra
    jr c, jr_078_5775

    cpl
    cpl
    ld l, a
    ld l, a
    ld d, a
    ld l, b
    add a
    dec c
    rla
    inc e
    nop
    nop
    add b
    rst $38
    ld a, e
    cp [hl]
    push de
    push de
    db $dd
    cp [hl]
    db $db
    ld h, a
    sbc c
    rst $38
    rst $38
    jr jr_078_575c

    nop
    adc l
    add b

jr_078_575c:
    ret nz

    ldh a, [$fe]
    call c, Call_000_26d6
    jp nz, $e106

    or b
    add sp, $38
    inc bc
    nop
    xor d
    rlca
    inc c
    dec de
    ld d, $0c
    ld c, $1e
    ld a, b
    db $fd
    ccf

jr_078_5775:
    inc e
    ld a, $9b
    adc a
    nop
    nop
    ret nz

    ld h, b
    or b
    ret nc

    ld h, b
    ldh [$f0], a
    ld a, $7d
    ld sp, hl
    ld [hl], c
    db $fd
    push af
    pop af
    ld e, e
    jr z, jr_078_579f

    add hl, hl
    inc l
    cpl
    scf
    ld d, a
    adc e
    or l
    ld c, h
    inc bc
    inc b
    nop
    adc h
    ld [$c04c], a
    ld h, b
    ldh a, [$78]
    cp b

jr_078_579f:
    call c, $e8ec
    ldh a, [$80]
    inc e
    nop
    sbc l
    jr jr_078_57e7

    scf
    ccf
    dec sp
    ld [hl], $1c
    jr jr_078_57cf

    ccf
    ld a, a
    ccf
    ccf
    ld a, h
    ld l, l
    sbc $df
    ei
    cp $fe
    rlca
    ld bc, $8000
    add b
    rst $38
    rst $38
    rst $20
    rst $20
    inc bc
    ld a, [hl]
    adc b
    rst $20
    rst $20
    rst $38
    rst $38
    db $db
    rst $38
    rst $38
    ld h, [hl]

jr_078_57cf:
    inc bc
    nop
    xor e
    ld bc, $3f1f
    ld a, a
    rst $38
    ld sp, hl
    db $fc
    ld a, b
    ld a, a
    ld a, a
    ld a, [hl]
    ccf
    dec sp
    rlca
    ccf
    ld a, a
    db $fd
    ld sp, hl
    or c
    ccf
    rst $38

jr_078_57e7:
    rst $28
    rst $08
    rst $38
    rst $38
    ei
    sbc $fc
    db $fc
    ret nz

    ldh [$f0], a
    ld hl, sp-$02
    rst $38
    rst $30
    or c
    ldh a, [$60]
    ret nz

    add b
    ret nz

    add b
    inc b
    nop
    adc l
    jr jr_078_583e

    ld a, [hl]
    cp $ee
    adc $9e
    rlca
    inc bc
    ld [hl], b
    inc b
    ld [bc], a
    ld bc, $000a
    add a
    add b
    ret nz

    ldh [rSVBK], a
    jr c, jr_078_582e

    sbc h
    ld a, [bc]
    nop
    sub l
    rlca
    rra
    ld a, h
    cp $7f
    ei
    rrca
    dec c
    inc e
    dec sp
    dec [hl]
    add hl, sp
    ld [hl], $36
    ld a, $6f
    rst $18
    pop af
    ld a, [hl]

jr_078_582d:
    rrca

jr_078_582e:
    ld bc, $0006
    xor d
    ld bc, $3900
    ld a, a
    ld h, a
    ld l, b
    ld l, h
    ld sp, $1a1a
    inc [hl]
    nop

jr_078_583e:
    nop
    rrca
    ld a, a
    db $fc
    cp $eb
    di
    cp $7e
    ccf
    db $dd
    rrca
    add d
    add b
    add b
    nop
    jr nc, jr_078_5878

    inc d
    inc de
    jr @+$0e

    add hl, bc
    ld [de], a
    ld [hl-], a

jr_078_5857:
    ld sp, $1c18
    rrca
    rlca
    inc bc
    nop
    adc l
    jr nc, jr_078_582d

    ld [bc], a
    ld bc, $0911
    dec bc
    ld c, $1e
    db $fc
    ld hl, sp-$10
    add b
    inc b
    nop
    and e
    rrca
    ccf
    ld a, a
    rst $38
    rst $38
    ld a, c
    inc a
    ld a, b
    ld a, a

jr_078_5878:
    ld a, a
    ld a, [hl]
    ccf
    dec sp
    rra
    ccf
    ld [hl], c
    pop hl
    pop hl
    and c
    cp a
    rst $38
    rst $28
    rst $08
    rst $38
    rst $38
    ei
    sbc $fc
    db $fc
    add hl, sp
    ld [hl-], a
    ld [hl], d
    ld h, h
    ld h, h
    add sp, $07
    ret z

    xor h
    db $e4
    ld h, h
    ld h, h
    nop
    nop
    ccf
    ld a, a
    rst $38
    ld a, a
    ld l, l
    sbc $df
    rst $38
    cp $e6
    ld bc, $0000
    add b
    nop
    rst $38
    rst $38
    add c
    jp Jump_078_7ee7


    ld a, [hl]
    rst $20
    rst $20
    rst $38
    rst $38
    db $db
    rst $38
    ld h, [hl]
    nop
    ld bc, $7f3f
    rst $18
    jp nc, $376a

    dec e
    ld c, $03
    ld b, $81
    rlca
    inc bc
    inc bc
    add l
    add $80
    nop
    jr nz, jr_078_58ed

    rlca
    ld b, b
    inc bc
    jr nz, jr_078_5857

    and b
    ld [bc], a
    ld [bc], a
    ld bc, $0801
    nop
    adc c
    inc b
    inc b
    ld [$6019], sp
    ld [hl], b
    jr nc, jr_078_5912

    cp b
    inc bc
    sbc b
    sub d
    jr jr_078_5900

    inc l
    ld d, $2b
    inc bc
    ld a, a

jr_078_58ed:
    ld a, [hl]
    ld [hl], h
    ld [hl-], a
    ld [hl], d
    pop bc
    ret nc

    add sp, -$2c
    rst $18
    ei
    ld h, b
    ld b, $00
    add l
    ld a, a
    db $fd
    ret z

    db $db
    ld [hl], e

jr_078_5900:
    inc b
    ld [hl], $8c
    dec de
    dec de
    add hl, de
    ld e, $35
    ccf
    ld e, $ff
    rst $38
    cp $ff

jr_078_590e:
    add hl, sp
    inc b
    nop
    add a

jr_078_5912:
    ld bc, $ff83
    ld a, h
    add e
    rst $38
    ld a, h
    inc b
    inc [hl]
    adc h
    ld [hl-], a
    ld a, [de]
    add hl, de
    dec c
    inc c
    jr jr_078_595a

    inc [hl]
    scf
    ccf
    jr jr_078_5928

jr_078_5928:
    dec b
    add b

jr_078_592a:
    adc c
    ld b, b
    ld b, b
    jr nz, jr_078_590e

    jr nc, @-$72

    db $e3
    rst $38
    rra
    dec b
    nop
    and [hl]
    ld a, $7f
    rst $38
    rst $38
    ld sp, hl
    ldh [$e0], a
    ld h, b
    ld [hl], c
    ld a, a
    ld a, a
    ccf
    ccf
    rlca
    ccf
    ld a, a
    ei
    pop af
    and c
    cp a
    rst $38
    rst $28
    rst $08
    rst $38
    rst $38
    ei
    sbc $fc
    db $fc
    nop
    nop
    ld bc, $0603
    inc c

jr_078_595a:
    jr jr_078_598c

    jr nc, jr_078_5961

    ld h, b
    inc b
    ret nz

jr_078_5961:
    ld [$8400], sp
    rrca
    ld a, a
    ldh a, [$80]
    inc b
    nop
    adc h
    ld [hl], h
    ld [hl-], a
    ld a, [hl-]
    add hl, de
    jr jr_078_59a3

    dec [hl]
    ld a, [hl-]
    dec [hl]
    scf
    ld a, $18
    ld b, $00
    adc e
    add b
    ld b, b
    jp Jump_000_0001


    db $10
    and $f8
    ccf
    rrca
    ld bc, $0008
    adc b
    rst $38
    ld a, [hl]
    nop
    nop

jr_078_598c:
    cp $00
    rst $38
    rst $38
    inc bc
    nop
    adc b
    ld [hl-], a
    ld a, [hl-]
    add hl, de
    inc e
    ld c, $07
    inc bc
    ld bc, $000b
    adc l

jr_078_599e:
    add b
    ld b, b
    jr nz, jr_078_592a

    ld [c], a

jr_078_59a3:
    ld hl, sp+$39
    add hl, de
    ld a, [de]
    add hl, de
    dec de
    ld e, $0c
    inc b
    nop
    add c
    rlca
    inc bc
    nop
    sub h
    ccf
    nop
    ccf
    ld a, a
    ret nz

    add b
    nop
    nop
    ld b, $1c
    jr c, jr_078_599e

    add c
    ld b, $19
    rst $20
    rra
    db $fc
    ldh a, [$80]
    dec c
    nop
    sbc h
    ret nz

    rst $38
    cp a
    pop bc
    or [hl]
    call z, Call_000_0f78
    rra
    ccf
    ld a, a
    ld a, b
    ld [hl], b
    ld [hl], d
    ldh a, [$f0]
    ld hl, sp-$01
    rst $20
    rrca
    rra
    ld a, $9c
    add b
    rst $38
    rst $38
    rst $20
    ld h, a
    inc bc
    ld a, $c4
    ld h, a
    ld h, a
    rst $38
    rst $38
    db $db
    rst $38
    ld h, [hl]
    nop
    nop
    add b
    ret nz

    ldh a, [$fe]
    ld a, a
    cp [hl]
    dec sp
    ei
    rst $38
    rst $08
    rst $20
    ldh a, [$f8]
    ld a, h
    add hl, sp
    nop
    nop
    rlca
    dec bc
    rla
    rra
    rrca
    rrca
    dec de
    ld a, a
    cp [hl]
    rst $38
    rst $30
    db $e3
    push af
    ld hl, sp+$00
    nop
    ret nz

    and b
    ret nc

    ldh a, [$e0]
    ldh [$b0], a
    cp $fb
    rst $38
    rst $18
    rst $08
    sbc a
    rra
    ld a, h
    cpl
    inc e
    ld [hl], $33
    ld sp, $7838
    db $fc
    cp $4f
    inc bc
    inc b
    nop
    adc h
    ld l, $cc
    ld b, b
    and b
    db $10
    adc b
    ret z

    ld h, h
    inc [hl]
    jr c, @+$72

    add b
    ld d, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b
    jr @+$3e

    ld a, h
    ld h, [hl]
    inc bc
    rlca
    dec bc
    ld e, $2f
    scf
    cpl
    dec de
    rra
    ld h, $2a
    ld a, [de]
    rrca
    jr nc, jr_078_5aa7

    pop af
    inc bc
    ld [hl], a
    adc l
    adc e
    inc bc
    rst $18
    push bc
    rst $38
    dec bc
    ld h, a
    pop af
    sbc [hl]
    jr @-$42

    cp $e7
    sub e
    ret nc

    or b
    ldh a, [$d0]
    or b
    add sp, $28
    ld a, b
    sbc b
    ret z

    ld d, b
    ld b, $02
    inc bc
    nop
    nop
    ld [hl], b
    db $fc
    rst $38
    ld a, a
    ccf
    rra
    ld d, $0d
    ld b, $00
    nop
    ld h, b
    rst $00
    add hl, sp
    inc hl
    dec hl
    add hl, hl
    ld [hl], h
    ld a, b
    rst $18
    rst $28
    ld [hl], b
    rst $18
    rst $28
    or e
    cp a
    ld e, a
    ldh [rP1], a
    nop
    ret nz

    ldh [$f0], a
    add sp, -$18
    rst $08
    sbc a
    dec [hl]
    db $f4
    adc $3b
    ld a, [$06e6]

jr_078_5aa7:
    nop
    adc l
    ld a, $ff
    rst $38
    cp $fc
    ld hl, sp+$68
    db $10
    ldh [rP1], a
    ld b, $02
    inc bc
    inc b
    nop
    adc c
    rlca
    rrca
    rra
    rra
    ld [hl], $7d
    rst $38
    rst $38
    ld a, h
    rlca
    nop
    jp hl


    ldh [$f0], a
    ld hl, sp-$08
    db $fc
    ld l, [hl]
    rra
    rst $38
    cp $3d
    ld c, $7f
    rst $38
    rst $28
    ld l, [hl]
    scf
    rra
    dec a
    ccf
    ld a, e
    ld e, a
    cpl
    add hl, de
    ld bc, $7803
    ldh [$fe], a
    rst $38
    rst $28
    ld c, [hl]
    sbc h
    ld hl, sp+$78
    db $fc
    cp d
    db $f4
    db $e4
    ret c

    ret nz

    add b
    dec a
    ld c, $1f
    rra
    cpl
    ld l, $77
    rst $38
    db $fd
    ld a, a
    ld a, e
    ld e, [hl]
    dec l
    add hl, de
    inc bc
    inc bc
    ld a, b
    ldh [$f0], a
    ldh a, [$e8]
    ld c, h
    sbc [hl]
    rst $38
    ld a, a
    cp $ba
    inc [hl]
    db $e4
    ret c

    add b
    nop
    dec a
    ld e, $3f
    ld a, a
    cp $ee
    ld [hl], a
    rla
    ld a, a
    rst $38
    db $d3
    ld a, a
    cpl
    daa
    ld a, e
    ld [hl], c
    ld a, b
    ldh a, [$f8]
    cp $ff
    ld l, a
    ld e, [hl]
    call c, $fefc
    sub [hl]
    db $fc
    add sp, -$38
    cp h
    inc e
    stop
    cp c
    ld b, $1e
    rra
    rla
    add hl, bc
    ld b, $01
    rlca
    rrca
    rra
    rra
    ld d, $0d
    ld b, $00
    nop
    ld h, b
    rst $00
    add hl, sp
    and e
    db $eb
    jp hl


    ld [hl], h
    ld hl, sp-$21
    rst $28
    ld [hl], b
    rst $18
    rst $28
    or e
    cp a
    ld e, a
    ldh [rP1], a
    ld bc, $e3c3
    rst $30
    xor $ed
    rst $08
    sbc a
    dec [hl]
    db $f4
    adc $3b
    ld a, [$3ee6]
    cp $fe
    ld a, [$98e4]
    ld h, b
    ldh [$f0], a
    inc bc
    ld hl, sp-$7d
    ld l, b
    db $10
    ldh [$0b], a
    nop
    add [hl]
    ld a, c
    cp $c7
    rst $08
    sub c
    dec [hl]
    rlca
    nop
    adc c
    rrca
    jr nc, jr_078_5bcd

    ldh a, [rTAC]
    rst $38
    ld c, e
    or [hl]
    xor [hl]
    ld [$a100], sp
    add b
    ret nz

    db $fc
    cp $d6
    rst $30
    inc sp
    cp b
    nop
    jr jr_078_5bcf

    ld a, h
    ld l, l
    rlca
    ld c, $1f
    cpl
    scf
    cpl
    dec de
    rra
    ld h, $2a
    ld a, [de]
    rrca
    jr nc, jr_078_5bf1

    pop af
    ld bc, $0373
    daa
    xor a
    inc bc
    rst $38
    pop bc
    dec bc
    ld h, a
    pop af
    sbc [hl]
    nop
    or b
    ld hl, sp-$04
    sbc [hl]
    sub $f0
    ldh a, [$d0]
    or b
    add sp, $28
    ld a, b
    sbc b
    ret z

    ld d, b
    db $d3
    db $ec
    add hl, bc
    inc de
    rla
    daa
    inc l
    ld c, c
    ld b, a
    ld c, a
    sub a
    cp a
    db $fd

jr_078_5bcd:
    ld a, l
    ld l, a

jr_078_5bcf:
    ld a, $ff
    ld a, a
    ld hl, sp-$1f
    rst $00
    ccf
    db $fd
    db $fd
    rst $38
    ld [hl], a
    ld [hl], a
    rst $38
    rst $18
    db $fc
    ldh [rP1], a
    ldh [$3c], a
    ld [bc], a
    rst $38
    rst $30
    rst $38
    sbc $dc
    ld hl, sp+$70
    ld h, b
    ret nz

    add b
    dec b
    nop
    adc [hl]
    ld [hl], b

jr_078_5bf1:
    sbc b
    ld d, b
    ld c, [hl]
    ld b, c
    or a
    xor b
    adc h
    ld e, d
    dec sp
    ld [hl+], a
    inc de
    ld c, $01
    rlca
    nop
    adc c
    add b
    ld h, b
    ldh a, [$28]
    db $f4
    ld [$d69a], a
    db $fc
    stop
    adc b
    or $bd
    cp [hl]
    ld e, a
    ld c, a
    daa
    ld [de], a
    inc c
    ld [$9900], sp
    ld a, l
    rst $38
    cp $79
    rst $38
    ld l, e
    cp [hl]
    sbc [hl]
    sbc [hl]
    ld c, l
    dec l
    ld a, [hl+]
    ld a, [hl+]
    inc [hl]
    ld l, b
    ld [hl], b
    rst $28
    cp l
    ld a, c
    pop af
    ld [c], a
    ld [c], a
    call nz, $b0c8
    rlca
    nop
    ldh a, [$7d]
    rst $38
    cp $79
    rst $38
    sbc [hl]
    sbc [hl]
    ld c, l
    dec l
    ld a, [hl+]
    ld a, [hl+]
    inc [hl]
    ld l, b
    ld [hl], b
    nop
    nop
    ld sp, $172f
    ld a, [de]
    dec h
    inc l
    dec e
    ld h, a
    rst $38
    db $fd

jr_078_5c4e:
    ld e, c
    ld [hl-], a
    ld a, h
    ld a, b
    jr nc, jr_078_5c54

jr_078_5c54:
    xor [hl]
    rst $28
    rla
    add sp, $07
    ld [hl], c
    cp $e6
    db $dd
    add hl, sp
    ld h, d
    cp a
    rst $18
    rst $20
    cp a
    ld e, a
    jr c, jr_078_5c4e

    db $db
    ccf
    rst $18
    rst $08
    ld e, a
    rst $38
    push af
    rst $28
    dec de
    ei
    rst $20
    sbc l
    db $fd
    di
    jr c, jr_078_5cf2

    ld a, h
    db $fc
    db $fc
    add sp, -$04
    sbc $ff
    cp $9c
    sbc [hl]
    ld b, a
    ccf
    ld b, $00
    ld a, [hl]
    db $fd
    dec a
    add hl, de
    inc de
    dec a
    ld [hl], h
    ld a, b
    rst $18
    rst $28
    ld [hl], b
    rst $18
    rst $28
    or e
    cp a
    ld e, a
    ld a, [hl]
    db $fd
    dec a
    sbc c
    di
    db $fd
    ld [hl], h
    ld hl, sp-$21
    rst $28
    ld [hl], b
    rst $18
    rst $28
    or e
    cp a

jr_078_5ca3:
    ld e, a
    dec bc
    nop
    add l
    ld b, $1b
    dec l
    ld d, [hl]

jr_078_5cab:
    xor h
    rlca
    nop
    adc c
    ld [hl], b
    sbc b
    ld e, a
    ld h, [hl]
    cp [hl]
    or a
    ld c, h
    jr c, jr_078_5cbf

    add hl, bc
    nop
    add a
    add e
    ld [hl], a
    ld c, l
    pop af

jr_078_5cbf:
    jp z, $f894

    jr nc, jr_078_5cc4

jr_078_5cc4:
    jp z, Jump_000_3c18

    ld a, h
    ld h, [hl]
    inc bc
    rlca
    dec c
    rra
    ld sp, $3d38
    rla
    rra
    ccf
    ccf
    rra
    rrca
    ccf
    ld [hl], c
    rst $38
    rst $38
    adc a
    cp $ff
    db $fc
    ld hl, sp+$74
    rst $38
    db $fc
    sbc a
    ld c, $7f
    jr jr_078_5ca3

    cp $e7
    di
    ldh a, [rSVBK]
    ldh a, [$30]
    ld [hl], b
    ld hl, sp-$08
    ret z

jr_078_5cf2:
    add sp, -$08
    ldh a, [rTAC]
    inc bc
    inc bc
    nop
    nop
    ld [hl], b
    adc h
    add a
    ld c, b
    jr nc, jr_078_5d11

    dec de
    rrca
    ld b, $00
    nop
    rst $38
    rst $38
    ccf
    ccf
    ld [hl], $37
    ld e, e
    ld e, a
    rst $28
    ldh a, [$03]
    rst $38

jr_078_5d11:
    adc l
    db $fc
    rst $38
    ld a, a
    ldh [rP1], a
    nop
    ret nz

    jr nz, jr_078_5cab

    sbc b
    sbc b
    ccf
    ld a, [hl]
    inc b
    rst $38
    add d
    cp $fe
    ld b, $00
    adc l
    ld a, $e1
    ld de, $0c0a
    adc b
    ret c

    ldh a, [$e0]
    nop
    rlca
    inc bc
    inc bc
    inc b
    nop
    adc c
    rlca
    ld [$1110], sp
    dec sp
    ld c, a
    add [hl]
    add e
    ld a, h
    rlca
    nop
    jp hl


    ldh [rNR10], a
    ld [$8c08], sp
    jp c, $e1f1

    cp $3d
    rrca
    ld [hl], l
    sub e
    cp h
    ld a, c
    dec a
    rra
    ld h, $27
    ld e, h
    ld l, a
    ld [hl], $19
    ld bc, $7802
    ldh [$5e], a
    ld de, $faf9
    db $fc
    ld hl, sp-$38
    call z, $ec76
    inc a
    ld e, b
    ld b, b
    add b
    dec a
    rrca
    dec d
    inc de
    inc a
    add hl, sp
    ld e, l
    cp a
    and [hl]
    ld h, a
    ld e, h
    ld l, a
    dec [hl]
    add hl, de
    ld [bc], a
    inc bc
    ld a, b
    ldh [$50], a
    db $10
    ld hl, sp-$04
    ld a, [c]
    pop af
    ret


    adc $76
    db $ec
    ld a, h
    ld e, b
    add b
    nop
    dec a
    inc de
    add hl, hl
    ld h, a
    cp c
    cp e
    ld a, a
    rra
    ld a, [hl]
    sbc a
    cp h
    ld a, a
    inc a
    ld a, $4a
    ld [hl], c
    ld a, b
    sub b
    jr z, jr_078_5dae

    sbc c
    ld sp, hl
    ld a, [c]
    ld [hl], h
    ld a, h
    ld a, [c]
    ld a, d
    db $fc
    ld a, b
    ld hl, sp-$5c
    inc e
    stop

jr_078_5dae:
    sbc d
    rlca
    rra
    inc de
    jr jr_078_5dc2

    rlca
    ld bc, $0807
    db $10
    ld de, $0f1b
    ld b, $00
    nop
    rst $38
    rst $38
    ccf

jr_078_5dc2:
    cp a
    db $76
    scf
    db $db
    rst $18
    rst $28
    ldh a, [$03]
    rst $38
    adc l
    db $fc
    rst $38
    ld a, a
    ldh [rP1], a
    ld bc, $22c2
    sub h
    sbc c
    sbc e
    ccf
    ld a, [hl]
    inc b
    rst $38
    sub c
    cp $fe
    ld a, $c2
    ld [bc], a
    ld b, $1c
    ld a, b
    ldh [$e0], a
    db $10
    ld [$8808], sp
    ret c

    ldh a, [$e0]
    dec bc
    nop
    add [hl]
    ld a, c
    rst $38
    rst $00
    ret z

    sbc [hl]
    ld l, $07
    nop
    adc c
    rrca
    ccf
    ld [hl], c
    rst $38
    rst $38
    adc a
    db $fc
    ld a, c
    ld [hl], c
    ld [$e500], sp
    add b
    ret nz

    db $fc
    cp $f6
    scf
    db $d3
    ret z

    nop
    jr jr_078_5e4c

    ld a, h
    ld l, l
    rlca
    rrca
    inc de
    ld sp, $3d38
    rla
    rra
    ccf
    ccf
    rra
    rrca
    ccf
    ld [hl], c
    rst $38
    rst $38
    adc a
    rst $38
    rst $38
    cp $f8
    ld [hl], h
    rst $38
    db $fc
    sbc a
    ld c, $7f
    nop
    or b
    ld hl, sp-$04
    cp $f6
    ldh a, [rNR10]
    jr nc, jr_078_5ea7

    ld hl, sp-$08
    ret z

    add sp, -$08
    ldh a, [$bf]
    rst $28
    ld c, $1c
    jr @+$3a

    inc sp
    ld [hl], a
    ld a, a
    ld a, d
    ld a, [$dae5]
    ld l, d
    ld d, l

jr_078_5e4c:
    ld a, $ff
    add b
    rlca
    rra
    ld a, $fd
    jp z, Jump_078_558a

    xor d
    xor d
    ld d, l
    xor e
    sbc h
    ldh [rP1], a
    ldh [$fc], a
    cp $ff
    add hl, hl
    ld d, l
    xor d
    xor h
    ld e, b
    or b
    and b
    ld b, b
    add b
    dec b
    nop
    adc [hl]
    ld [hl], b
    add sp, $70
    ld a, [hl]
    ld a, a
    sbc $df
    rst $30
    ld [hl], a
    dec [hl]
    dec a
    rra
    rrca
    ld bc, $0007
    adc c
    add b
    ldh [$50], a
    add sp, -$44
    db $76
    ld a, [hl]
    ld l, [hl]
    db $fc
    stop
    adc b
    rst $30
    rst $28
    rst $20
    ld [hl], e
    ld a, c
    dec a
    ld e, $0c
    ld [$9900], sp
    add e
    rst $38
    rst $38
    add a
    rst $38
    ld [hl], a
    rst $38
    pop hl
    pop hl
    ld [hl], e
    inc sp
    ld [hl], $36
    inc l
    ld e, b
    ld [hl], b
    rst $28
    rst $30

jr_078_5ea7:
    rst $28
    rst $18
    cp [hl]
    cp [hl]
    db $fc
    ld hl, sp-$50
    rlca
    nop
    and [hl]
    add e
    rst $38
    rst $38
    add a
    rst $38
    pop hl
    pop hl
    ld [hl], e
    inc sp
    ld [hl], $36
    inc l
    ld e, b
    ld [hl], b
    nop
    nop
    ld l, $30
    add hl, de
    rra
    ld a, $3f
    rra
    ld h, a
    sbc e
    add e
    ld h, a
    ld l, $4c
    ld c, b
    jr nc, jr_078_5ed1

jr_078_5ed1:
    ld [hl], c
    ldh a, [$f8]
    rra
    rst $38
    cp $03
    rst $38
    sub c
    ccf
    ld a, a
    rst $38
    rst $38
    ld hl, sp-$01
    ld a, a
    ret z

    jr jr_078_5f1f

    db $ec
    add sp, -$06
    rst $30
    rst $20
    rst $08
    rra
    inc bc
    rst $38
    sbc l
    ld a, a
    rst $38
    rst $38
    jr c, jr_078_5f37

    ld b, h
    call nz, Call_000_1804
    inc a
    jp nc, Jump_000_0231

    db $e4
    ld [c], a
    ld a, c
    add hl, sp
    ld b, $00
    rst $38
    rst $38
    ccf
    rra
    ld e, $3f
    ld e, e
    ld e, a
    rst $28
    ldh a, [$03]
    rst $38
    adc l
    db $fc
    rst $38
    ld a, a
    rst $38
    rst $38
    ccf
    sbc a
    ld a, [hl]
    ccf
    db $db
    rst $18
    rst $28
    ldh a, [$03]
    rst $38
    add e
    db $fc

jr_078_5f1f:
    rst $38
    ld a, a
    dec bc
    nop
    add l
    ld b, $1d
    inc sp
    ld l, [hl]
    call c, Call_000_0007
    adc c
    ld [hl], b
    add sp, $7f
    ld a, l
    rst $18
    db $db
    ld a, e
    ccf
    rlca
    add hl, bc
    nop

jr_078_5f37:
    add a
    add e
    push af
    cp e
    rst $38
    db $76
    db $fc
    ld hl, sp+$32
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    nop
    ld a, [hl]
    rst $38
    pop hl
    ld c, a
    ld a, h
    ld a, [$fe06]
    db $fc
    db $fd
    ld sp, hl
    ld [c], a
    inc e
    ldh [rP1], a
    nop
    db $10
    jr c, @+$3a

    ld a, c
    ld [hl], l
    ld a, d
    ldh [$c1], a
    sub e
    and a
    and a
    ld c, a
    ld a, a
    add e
    jr nz, jr_078_5fd9

    ld [hl], c
    di
    rst $30
    rst $30
    rst $08
    adc $00
    db $fc
    cp $fe
    or $cd
    add hl, de
    ld sp, hl
    ld b, b
    ldh [$a0], a
    and b
    ld b, c
    ld b, a
    ld e, a
    ld a, [hl]
    db $fd
    sbc c
    ld [bc], a
    ld [de], a
    res 1, e
    inc bc
    ld bc, $0004
    add h
    ret nz

    ldh [rLCDC], a
    add b
    inc bc
    nop
    sbc e
    ld a, [hl]
    rst $38
    and $d8
    and b
    jr nz, jr_078_6008

    ld [hl], c
    di
    rst $30
    rst $30
    rst $08
    adc $00
    db $fc
    cp $fe
    or $cd
    add hl, de
    ld sp, hl
    and b
    ret nz

    ld a, h
    ld a, a
    ccf
    dec e
    dec b
    nop
    xor e
    rlca
    rlca
    ld b, $05
    ccf
    jr c, jr_078_5fc2

    ld [bc], a
    add c
    ldh [$fd], a
    db $fd
    dec b
    ld a, d
    ld a, d
    ld [hl], l
    ei
    rst $20
    rst $08

jr_078_5fc2:
    adc a
    sbc [hl]
    jr jr_078_603e

    sbc b
    ld e, b
    pop de
    ld a, l
    ld l, [hl]
    ld e, [hl]
    cp $fe
    db $fd
    db $fd
    ld a, [$18c4]
    ldh [$a0], a
    ret nz

    ld a, h
    ld a, a
    ccf

jr_078_5fd9:
    dec e
    ld a, [bc]
    nop
    adc b
    jr c, jr_078_5feb

    ld b, $83
    pop hl
    ld hl, sp-$03
    ld b, $05
    inc bc
    adc [hl]
    rlca
    rrca
    rrca

jr_078_5feb:
    nop
    nop
    ld a, a
    rst $38
    pop bc
    cp [hl]
    ld a, h
    ld hl, sp-$5a
    cp [hl]
    cp [hl]
    dec b
    cp l
    ld [$9400], sp
    inc a
    ld a, [hl]
    rst $20
    db $d3
    jp Jump_078_7ee7


    inc a
    ld c, $39
    ld a, a
    cp $b9

jr_078_6008:
    ld b, a
    add hl, sp
    nop
    inc bc
    rlca
    rlca
    inc bc
    inc bc
    nop
    sbc a
    ld bc, $8000
    ret nc

    ldh [$a0], a

Call_078_6018:
    ld l, b
    pop bc
    ld b, b
    sub b
    sbc d
    cp $3f
    ld a, a
    db $eb
    dec b
    ld c, b
    inc b
    nop
    ld de, $df52
    cp $aa
    ld a, h
    ld [hl], b
    ldh a, [rIE]
    rst $38
    push af
    ld h, b
    inc bc
    nop
    add a
    rlca
    dec bc
    dec d
    inc d
    ld [de], a
    ld [$0807], sp
    nop
    sbc d

jr_078_603e:
    db $e4
    xor $7f
    rst $38
    ld a, a
    rlca
    nop
    rst $38
    cp b
    sbc a
    ld e, a
    ld c, a
    inc hl
    jr jr_078_6054

    nop
    jr c, jr_078_605c

    ld [hl+], a
    pop af
    ld hl, sp-$01

jr_078_6054:
    ld a, [hl]
    add b
    ld a, a
    add b
    inc b
    rst $38
    sbc l
    nop

jr_078_605c:
    rst $38
    jr jr_078_60d7

    sbc b
    ld e, b
    pop de
    ld a, l
    ld l, [hl]
    sbc [hl]
    ld a, [hl]
    db $fc
    db $fd
    ld sp, hl
    ld a, [c]
    adc h
    jr nc, @-$3e

    ld a, [hl]
    rst $08
    sub $28
    ld b, $3f
    add [hl]
    add sp, -$2a
    rst $08
    ld a, $05
    nop
    adc e
    ld a, b
    cp h
    ret c

    jr nz, jr_078_6098

    ld a, h
    sbc b
    and b
    ret c

    cp h
    ld hl, sp+$05
    nop
    adc c
    ccf
    ld [hl], $3e
    jr c, jr_078_60ce

    ld d, d
    ld c, h
    ld hl, $071e
    nop
    add a
    dec e
    dec a
    ld [hl-], a

jr_078_6098:
    ld c, h
    ld [hl], b
    add b
    add b
    dec bc
    nop
    or [hl]
    db $10
    ld a, $3f
    ld a, a
    rst $38
    rst $38
    cp a
    cp [hl]
    db $dd
    and b
    cp [hl]
    ld c, a
    ld a, a
    add e
    jr nz, jr_078_611f

    ld [hl], c
    di
    rst $30
    rst $30
    rst $28
    ld c, [hl]
    ld b, b
    ld a, h
    ld a, $9e
    ld e, [hl]
    dec a
    ld sp, hl
    ld sp, hl
    rlca
    rlca
    ld a, $36
    ld [hl], $3e
    inc a
    db $fc
    db $ec
    add sp, $50
    ld [hl+], a
    inc l
    ld de, $000e
    dec a

jr_078_60ce:
    ld a, [hl-]
    ld e, d
    ld d, h
    ld d, h
    ld c, b
    ld d, b
    ld h, b
    inc bc
    ld b, b

jr_078_60d7:
    add d
    add b
    add b
    dec bc
    nop
    add d
    ld bc, $0501
    inc bc
    cp d
    dec b
    ld bc, $0403
    dec b
    dec bc
    ld [hl], e
    add e
    add e
    rst $00
    db $e3
    ldh a, [$f4]
    rst $10
    sub e
    cp b
    rst $38
    ld [$fd08], sp
    cp $47
    ccf
    dec de
    add hl, bc
    inc b
    rlca
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $6000
    adc e
    inc e
    ld a, a
    db $fc
    ei
    ldh [$c0], a
    ccf
    ldh [$1f], a
    rst $38
    rst $38
    ld a, a
    add d
    ld a, l
    db $e4
    xor $7f
    rst $38
    ld a, a
    rlca
    nop
    rst $38
    add b
    inc bc
    ld e, a
    inc bc

jr_078_611f:
    cp a
    adc e
    sbc a
    jr c, @+$0e

    ld [hl+], a
    pop af
    ld hl, sp-$01
    ld a, [hl]
    add b
    ld a, a
    add b
    ld b, $ff
    adc d
    jr jr_078_61a9

    sbc b
    ld e, b
    pop de
    ld a, l
    ld l, [hl]
    sbc [hl]
    ld a, [hl]

jr_078_6138:
    db $fc
    dec b
    db $fd
    add a
    ld sp, hl
    ld e, a
    ld c, a
    cpl
    inc hl
    jr jr_078_614a

    ld a, [bc]
    nop
    inc b
    rst $38
    add e
    nop
    nop

jr_078_614a:
    rst $38
    add hl, bc
    nop
    add a
    ld a, [$f4f2]
    call nz, Call_078_6018
    add b
    dec bc
    nop
    adc b
    ld a, [hl]
    rst $38
    ld h, c
    ld e, [hl]
    ld a, h
    cp b
    ld b, [hl]
    cp $06
    db $fd
    adc c
    rla
    cpl
    cpl
    ld e, a
    ld e, a
    sbc a
    rst $20
    jr @+$09

    rlca
    nop
    add d
    db $fd
    db $fd
    inc bc
    ld a, [$f484]
    ret z

    jr nc, jr_078_6138

    rlca
    nop
    adc e
    jr jr_078_61f5

    sbc b
    ld e, b
    pop de
    db $fd
    xor $de
    cp [hl]
    cp $7e
    dec b
    db $fd
    ld h, b
    nop
    inc bc
    rst $38
    cp l
    pop bc
    sbc a
    di

jr_078_6190:
    rst $00
    db $fd
    ld sp, hl
    ld bc, $0303
    rlca
    ld e, $fc
    ldh [rP1], a
    nop
    db $10
    jr z, jr_078_61c7

    ld c, c
    ld c, l
    ld b, a
    sbc a
    cp a
    rst $28
    sbc $de
    ld a, [hl]
    ld a, a

jr_078_61a9:
    rst $38
    jr nz, @+$52

    ld d, c
    sub d
    sub h
    inc d
    jr c, jr_078_61eb

    rst $38
    rst $38
    rlca
    rst $00
    rst $08
    ld a, $fe
    cp $40
    and b
    ld h, b
    ld h, b
    pop bc
    add $d8
    pop hl
    jp $fee7


    xor $37

jr_078_61c7:
    db $76
    db $fc
    cp $04
    nop
    add h
    ret nz

    jr nz, jr_078_6190

    add b
    inc bc
    nop
    sbc e
    ld a, [hl]

jr_078_61d5:
    add c
    ld e, $38
    ld h, b
    jr nz, jr_078_622b

    ld d, c
    sub d
    sub h
    inc d
    jr c, jr_078_621a

    rst $38
    rst $38
    rlca
    ld h, a
    ld l, a
    ld a, $fe
    cp $df
    rst $38

jr_078_61eb:
    ld a, a
    ld b, a
    inc hl
    dec e
    dec b
    nop
    add l
    rlca
    inc b
    dec b

jr_078_61f5:
    rlca
    ccf
    inc b
    rst $38
    and d
    ld a, a
    ld e, $fe
    ld b, $7d
    ld c, l
    ld e, e
    rst $20
    ld e, [hl]
    cp h
    ld a, b
    ld a, c
    rst $38
    rst $28
    rst $28
    xor a
    cp a
    db $d3
    pop af
    pop hl
    add c
    add c
    inc bc
    inc bc
    ld b, $3c
    ld hl, sp-$20
    rst $18
    rst $38
    ld a, a
    ld b, a

jr_078_621a:
    inc hl
    dec e
    ld a, [bc]
    nop
    inc b
    rst $38
    add h
    ld a, a
    rra
    cp $07
    dec b
    inc bc
    add e
    dec b
    add hl, bc
    dec c

jr_078_622b:
    inc bc
    rst $38
    adc b
    add c
    ccf
    jp Jump_078_7fc7


    ld a, c
    ld h, c
    ld h, c
    dec b
    ld h, e
    ld [$8200], sp
    inc a
    ld b, d
    inc b
    add c
    adc [hl]
    ld b, d
    inc a
    ld c, $07
    nop
    add c
    add $7e
    add hl, sp
    nop
    ld [bc], a
    inc b
    inc b
    inc bc
    dec b
    nop
    adc a
    add b
    ld b, b
    jr nz, jr_078_61d5

    ldh [$80], a
    ld b, b
    sub b
    ld [$22a4], sp
    ld b, b
    sub c
    ld a, d
    dec d
    inc bc
    nop
    adc e
    ld [de], a
    dec d
    ld l, d
    sub [hl]
    inc b
    ld [$0c08], sp
    add hl, bc
    sub e
    ld h, b
    inc bc
    nop
    add a
    rlca
    ld c, $1b
    dec de
    dec e
    rrca
    rlca
    ld [$9000], sp
    rst $38
    dec sp
    or c
    db $fc
    add a
    ld hl, sp-$01
    rst $38
    rst $00
    ldh [$60], a
    ld [hl], b
    inc a
    rra
    rlca
    nop
    inc bc
    rst $38
    add a
    rst $18
    adc a
    ld a, h
    add c
    rst $38
    rst $38
    ld a, a
    inc b
    nop
    inc bc
    rst $38
    sbc d
    rst $28
    rst $28
    xor a
    cp a
    db $d3
    pop af
    pop hl
    add c
    inc bc
    inc bc
    rlca
    ld c, $7c
    ldh a, [$c0]
    cp $f1
    xor $d8
    cp $c1
    cp $d8
    xor $f1
    ld a, $05
    nop
    adc e
    ld hl, sp-$3c
    cp b
    ldh [$f8], a
    add h
    ld hl, sp-$20
    cp b
    call nz, $05f8
    nop
    adc c
    ld [hl+], a
    dec l
    dec l
    ccf
    ld a, a
    ld l, l
    ld [hl], e
    ccf
    ld e, $07
    nop
    add a
    di
    db $e3
    xor $fc
    ldh a, [$80]
    add b
    dec bc
    nop
    sub [hl]
    db $10
    ld a, $21
    ld b, b
    sbc b
    sbc b
    ret nz

    pop bc
    ld [c], a
    rst $38
    rst $18
    ld a, a
    ld a, a
    rst $38
    jr nz, jr_078_633b

    ld d, c
    sub d
    sub h
    call nc, $f978
    inc bc
    rst $38
    add d
    ld a, a
    cp a
    inc bc
    cp $83
    ld b, $06
    dec a
    inc bc
    dec l
    sub d
    dec sp
    ei
    sbc e
    sbc a
    ld a, a
    dec a
    inc sp
    rra
    ld c, $00
    db $e3
    and $e6
    db $ec
    db $ec
    ld hl, sp-$10
    ldh [$03], a
    ret nz

    add d
    add b
    add b
    dec bc
    nop
    and b
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    inc bc
    rlca
    ld bc, $0702
    rlca
    ld c, $7e
    cp $fe
    db $fc
    ld a, h
    ccf
    dec sp
    jr c, jr_078_63ab

    ld a, a
    rst $38
    rrca
    rrca
    rst $38
    add a
    ld a, a
    ld h, $1f
    ld c, $03
    rlca

jr_078_633b:
    sbc e
    ld b, $03
    inc bc
    ld bc, $ff00
    db $fc
    rst $30
    di
    sbc a
    and h
    rst $18
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    nop
    add d
    rst $38
    ld a, l
    rst $38
    dec sp
    or c
    db $fc
    add a
    ld hl, sp+$03
    rst $38
    inc bc
    ld h, b
    inc bc
    ret nz

    add c
    ldh [$03], a
    rst $38
    add a
    rst $18
    adc a
    ld a, h
    add c
    rst $38
    rst $38
    ld a, a
    ld b, $00
    adc c
    rst $38
    rst $28
    rst $28
    xor a
    cp a
    db $d3
    pop af
    pop hl
    add c
    ld b, $03
    add a
    rlca
    ld h, b
    ld [hl], b
    jr nc, jr_078_63b9

    rra
    rlca
    ld c, $00
    inc bc
    rst $38
    add hl, bc
    nop
    add a
    ld b, $0e
    inc c
    inc a
    ld hl, sp-$20
    add b
    add hl, bc
    nop
    inc bc
    rst $38
    add a
    pop bc
    sbc a
    db $e3
    rst $00
    rst $38
    cp c
    ld bc, $0306
    add e
    ld hl, sp-$10
    ldh a, [$03]

jr_078_63a0:
    ldh [$83], a
    ld hl, sp+$1f
    rlca
    rlca
    nop
    add d
    inc bc
    inc bc
    inc bc

jr_078_63ab:
    ld b, $84
    inc c
    jr c, jr_078_63a0

    ret nz

    rlca
    nop
    adc e
    rst $38
    rst $28
    rst $28
    xor a
    cp a

jr_078_63b9:
    sub e
    or c
    pop hl
    pop bc
    add c
    add c
    dec b
    inc bc
    ld h, d
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    add a
    inc bc
    ld b, $05
    ld a, $31
    dec hl
    ld d, $03
    nop
    add c
    ld bc, $0203
    sbc c
    ld bc, $c702
    jr c, jr_078_63fb

    rra
    rst $18
    cpl
    cpl
    nop
    ld h, b
    ldh [$62], a
    ld h, d
    scf
    ccf
    add a
    ld l, [hl]
    adc h
    sbc h
    ret nc

    ld h, a
    jr c, @+$32

    ld h, a
    inc bc
    nop
    adc l
    ld b, b
    sub b
    ldh [$f8], a
    ldh a, [$38]
    inc de

jr_078_63fb:
    sbc l
    cp a
    rst $08
    ld h, $1f
    rst $18
    add hl, bc
    nop
    add a
    add b
    add b
    cp b
    call z, $9ec4
    db $eb
    inc bc
    nop
    add c
    ld bc, $0203
    adc c
    ld bc, $c807
    ld a, $1f
    rra
    rst $18
    cpl
    cpl
    inc bc
    nop
    add c
    ld bc, $0203
    sbc c
    ld bc, $0702
    jr jr_078_6445

    rra
    rra
    cpl
    rst $28
    nop
    ld h, b
    ldh [$62], a
    ld h, d
    scf
    ccf
    add a
    ld l, [hl]
    adc h
    ld e, h
    or b
    rst $20
    cp b
    or b
    rst $20
    inc bc
    nop
    adc l
    ld b, b
    sub b
    ldh [$f8], a
    ldh a, [$38]
    db $10

jr_078_6445:
    sbc h
    cp a
    rst $08
    ld h, $1f
    sbc $0b
    nop
    add l
    add b
    ret nz

    ret nz

    ld a, b
    ld c, h
    ld a, [bc]
    nop
    add [hl]
    jr jr_078_6488

    ld l, h
    ld sp, hl
    rst $38
    db $76
    rlca
    nop
    sub d

jr_078_645f:
    ld bc, $3f1b
    ccf
    ld [hl], l
    rst $38
    rst $38
    ld l, [hl]
    ld sp, $0100
    inc bc
    dec b
    add hl, bc
    ld [$900f], sp
    rst $28
    dec b
    rst $38
    sub d
    ld h, b
    ld hl, sp+$00
    add b
    add b
    adc c
    adc d
    rst $18
    cp a
    ld c, a
    xor h
    db $db
    rst $30
    rst $38
    cp a
    scf
    ld [hl], a
    di
    inc b
    nop

jr_078_6488:
    add a
    ld b, b
    add b
    ldh a, [$e0]
    jr nc, jr_078_645f

    rst $28
    inc bc
    rst $38
    add d
    ld [$09cd], a
    nop
    sub c
    ret nz

    ld hl, sp-$04
    ld a, h
    call c, $e3fe
    ld [hl], a
    ld h, a
    ld e, a
    ccf
    rrca
    rlca
    inc c
    inc c
    ld [$031c], sp
    ccf
    sbc l
    ld a, [de]
    rrca
    nop
    or a
    ld sp, hl
    db $eb
    rst $08
    sub a
    rst $18
    ld a, a
    ccf
    ccf
    ld l, a
    rst $00
    rst $08
    ld c, a
    rst $08
    ccf
    ccf
    rst $08
    rst $38
    rst $10
    sub b
    adc b
    rst $08
    or e
    and [hl]
    jp nz, $06d7

    rst $38
    adc e
    cp $fc
    or a
    ld a, e
    rst $38
    rst $00
    nop
    add [hl]
    rst $00
    db $ed
    ldh [$03], a
    ldh a, [$bc]
    rst $38
    rst $38
    ld sp, $fa3e
    db $fc
    db $fc
    call nz, Call_000_3272
    ld [de], a
    add d
    adc $7f
    ld a, a
    rst $38
    cp $3c
    rra
    inc sp
    dec hl
    ld de, $c964
    sbc e
    ld d, e
    daa
    ld h, a
    ld b, a
    ld d, a
    dec sp
    rlca
    nop
    nop
    or a
    ld sp, hl
    db $eb
    rst $08
    sub a
    rst $18
    rst $38
    sbc a
    ccf
    ld b, a
    ld h, a
    ccf

jr_078_6508:
    cp a
    sbc e
    ld h, h
    ccf
    rst $08
    rst $38
    rst $10
    sub b
    adc b
    rst $08

jr_078_6512:
    or e
    and [hl]
    jp nz, $03d7

    rst $38
    cp d
    cp a
    ld a, a
    rst $38
    db $fd
    ld hl, sp-$42
    ld a, a
    rst $38
    rst $00
    ld [bc], a
    sbc h
    cp $df
    rst $18
    call $dce2

jr_078_652a:
    rst $38
    rst $38
    inc b
    sbc $6b
    pop af
    ld a, [$1cfc]
    ret z

    ld c, b
    db $10
    jr nc, jr_078_6508

    jr nz, jr_078_652a

    ldh a, [rNR10]
    inc b
    sbc $6b
    pop af
    ld a, [$1cfc]
    ret z

    ld c, h
    inc d
    inc [hl]
    call nz, $fa1e
    ld [c], a

jr_078_654b:
    ld a, [bc]
    ld l, a
    dec hl
    dec de
    add hl, bc
    inc c
    inc b
    inc bc
    add hl, bc
    nop
    sbc c
    or a
    ld sp, hl
    rst $28
    ret nc

    sbc [hl]
    ld a, a
    rst $38
    ccf
    ld e, a
    adc a
    add a
    add a
    adc a
    ld c, a
    ccf
    ccf
    adc b
    db $fc
    rst $10
    ld hl, sp-$21
    set 6, d
    ld [c], a
    rst $20
    rlca
    rst $38
    adc e
    ld e, $7d
    or [hl]
    ld a, d
    adc $84
    nop
    add $c7
    db $ec
    ldh [$03], a
    ldh a, [$8c]
    pop hl
    rst $38
    dec e
    cp $0a
    inc c
    ld [$1008], sp
    jr nz, jr_078_654b

    ld b, b
    inc bc
    jr nz, jr_078_6512

    ld b, b
    ldh [rNR41], a
    stop
    adc e
    daa
    jr nc, jr_078_65d3

    rra
    dec d
    ld [$0504], sp
    dec de
    jr c, @+$81

    dec b
    nop
    adc e
    rst $38

jr_078_65a4:
    ccf
    ret nz

    cp $ff
    ld de, $e8bf
    ret z

    ld c, b
    ld hl, sp+$05
    nop
    adc e
    ld a, [c]

jr_078_65b2:
    db $fd
    rst $38
    jr nz, jr_078_65b2

    inc b
    or $9c
    ld e, l
    ld b, e
    ld a, a
    dec b
    nop
    add l
    ret nc

    sub b
    jr nz, jr_078_65e3

    ld b, b
    inc bc
    add b
    add e
    ret nz

    ret nz

    ldh [rTIMA], a
    nop
    adc b

Jump_078_65cd:
    sub c
    and $ec
    ld c, l
    jr z, @+$13

jr_078_65d3:
    add hl, bc
    ld b, $08
    nop
    add l
    call nz, Call_078_7ff8
    ld b, h
    rst $38
    dec bc
    nop
    adc c
    daa
    dec sp
    dec d

jr_078_65e3:
    ld [$1310], sp
    dec de
    jr c, jr_078_6668

    rlca
    nop
    adc c
    rst $38
    ret nz

    rst $38
    ld de, $90bf
    ret z

    ld c, b
    ld hl, sp+$07
    nop
    adc c
    ld a, [c]
    rst $38
    db $fc
    inc b
    di
    ld l, $5d
    ld b, e
    ld a, a
    rlca

jr_078_6602:
    nop

jr_078_6603:
    adc c
    ret nc

    jr nz, jr_078_6647

    ld b, b
    jr nz, jr_078_662a

    ret nz

    ret nz

    ldh [rTAC], a
    nop
    add a
    ei

jr_078_6611:
    cp $00
    ld [$01fe], sp
    ld bc, $0009
    adc b
    jr nc, jr_078_65a4

    push de
    rst $20
    ld h, $0c
    jr jr_078_6602

    ld [$a000], sp
    or a
    ld sp, hl
    db $eb
    rst $08
    sub a

jr_078_662a:
    rst $18
    rst $38
    sbc a
    ccf
    ld b, a
    ld h, a
    ccf
    cp a
    sbc e
    ld h, h
    cp a
    inc b
    sbc $6b
    pop af
    ld a, [$1cfc]
    ret z

    ld c, b
    db $10
    jr nc, jr_078_6611

    jr nz, jr_078_6603

    add b
    add b
    add hl, de
    nop

jr_078_6647:
    add a
    inc bc
    dec b
    rlca
    ccf
    ld l, $3c
    add hl, de
    inc bc
    nop
    add c
    ld bc, $0303
    sbc c
    ld bc, $c703
    rst $38
    rst $38
    di
    ld sp, $f9f9
    nop
    ld h, b
    and b
    and d
    and d
    rst $10
    rst $38
    rst $38
    sbc a

jr_078_6668:
    ld a, a
    rst $38
    ld a, a
    cp a
    rst $38
    rst $28
    rst $18
    inc bc
    nop
    adc l
    ld b, b
    sub b
    ldh [$f8], a
    ldh a, [$f8]
    di
    ld a, [hl]
    ld l, a
    ldh a, [rIE]
    ld sp, hl
    di
    add hl, bc
    nop
    add a
    add b
    add b
    cp b
    ld [hl], h
    db $fc
    cp $1d
    inc bc
    nop
    add c
    ld bc, $0303
    adc c
    ld bc, $cf07
    rst $38
    pop af
    ldh a, [$30]
    ld hl, sp-$07
    inc bc
    nop
    add c
    ld bc, $0303
    sbc c
    ld bc, $0703
    rra
    rra
    inc de
    ld de, $f939
    nop
    ld h, b
    and b
    and d
    and d
    rst $10
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    ld a, a
    cp a
    rst $38
    rst $28
    rst $18
    inc bc
    nop
    adc l
    ld b, b
    sub b
    ldh [$f8], a
    ldh a, [$f8]
    ldh a, [$7c]
    ld l, a
    ldh a, [rIE]
    ld sp, hl
    di
    dec bc
    nop
    add l
    add b
    ld b, b
    ret nz

    ld hl, sp-$0c
    ld a, [bc]
    nop
    add [hl]
    ld [$2410], sp
    ld [$0201], sp
    rlca
    nop
    sbc a
    ld bc, $241a
    inc h
    ld l, d
    sub b
    add b
    ld [hl], c
    ccf
    nop
    ld bc, $0602
    ld c, $0f
    rrca
    sbc a
    ld a, a
    ld [hl], b
    ld h, d
    ldh [$90], a
    db $10
    rst $38
    rst $38
    nop
    add b
    add b
    adc c
    adc d
    ld e, a
    inc bc
    rst $38
    add a
    ld a, a
    inc a
    jr c, jr_078_6773

    ld hl, sp-$08
    call c, Call_000_0004
    adc h
    ld b, b
    add b
    ldh a, [$e0]
    ldh a, [$f0]
    ccf
    sbc c
    rrca
    add hl, bc
    dec e
    ld a, $09
    nop
    or e
    ret nz

    jr c, jr_078_673f

    call nz, Call_000_022c
    rra
    ld a, e
    ld e, [hl]
    ld a, d
    scf
    rrca
    dec b
    dec bc
    dec bc
    rrca
    rla
    inc hl
    jr nz, jr_078_6750

    rla
    rrca
    nop
    rst $38
    cp $3c
    ld a, a
    ld hl, sp-$02
    db $e3
    add sp, -$0d
    db $fc
    ei
    ld [hl], b
    ldh a, [$f0]
    jr c, jr_078_6766

jr_078_673f:
    ld hl, sp-$04
    ccf
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ld a, l
    ld hl, sp+$0f
    inc bc
    nop
    add l
    rst $38
    ld a, a

jr_078_6750:
    ld a, a
    rst $38
    db $fc
    inc bc
    rst $38
    ld [c], a
    ld a, a
    ccf
    sbc a
    ld e, a
    rst $08
    rrca
    rrca
    rra
    ldh [$cf], a
    cp $c6
    inc a
    db $fc
    db $fc
    adc [hl]

jr_078_6766:
    adc $ee
    cp $fe
    pop af
    pop bc
    pop de
    ld [hl+], a
    db $fc
    rra

jr_078_6770:
    ld l, $3e
    rra

jr_078_6773:
    ld a, e
    or a
    or $7e
    dec a
    ld e, l
    ld a, l
    ld a, l
    ld a, $07
    nop
    nop
    rst $38
    cp $3c
    ld a, a
    ld hl, sp-$02
    db $e3
    ld hl, sp-$05
    rst $38
    call c, $c8cc
    db $ec
    ld a, a
    ccf
    ld hl, sp-$04
    ccf
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    db $fd
    ld a, b
    cpl
    jr nz, jr_078_67fd

    ret nz

    rst $38
    ld a, [hl]
    ld a, a
    rst $30
    ld sp, hl
    cp $ff
    rst $38
    ld a, a
    inc hl
    pop hl
    ld h, c
    di
    ld a, a
    ccf
    rra
    ldh [$fc], a
    ld a, $9d
    rst $38
    ld c, $f4
    db $fc
    jr c, jr_078_6770

    inc bc
    ldh a, [$8d]

jr_078_67bb:
    ldh [$d0], a
    db $10
    ldh a, [$fc]
    ld a, $9d
    rst $38
    ld c, $f4
    db $fc
    jr c, @-$42

    inc bc
    db $fc
    adc e
    ld a, [$1ee6]
    cp $5f
    ld a, $1e
    rrca
    rrca
    rlca
    inc bc
    add hl, bc
    nop
    sbc e
    rst $38
    cp $3f
    ld a, a
    rst $38
    pop hl
    db $ec
    dec l
    ld [hl], c
    db $fc
    ei
    ld hl, sp-$10
    ld [hl], b
    jr c, jr_078_6810

    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    cp a
    cp l
    jr c, jr_078_67bb

    inc b
    nop
    ld [$84ff], sp
    ccf
    cp a
    ld e, a
    rst $18

jr_078_67fd:
    inc bc
    rrca
    adc h
    rra
    cp $ff
    cp $fe
    db $fc
    ld hl, sp-$08
    ldh a, [$e0]
    ret nz

    ret nz

    inc bc
    ldh [$83], a
    ret nz

jr_078_6810:
    and b
    ldh [rNR10], a
    nop
    adc e
    add hl, sp
    cpl
    inc h
    ld de, $0f1e
    rlca
    ld b, $1e
    ccf
    ld a, a
    ld b, $00
    adc d
    ldh [$3f], a
    inc de
    nop
    rst $38
    rst $38
    jr c, jr_078_6863

    ld hl, sp-$08
    dec b
    nop
    adc e
    rrca
    adc d
    ld bc, $03ff
    rst $38
    ld sp, hl
    db $e3
    ld l, e
    ld a, a
    ld a, a
    dec b
    nop
    add l
    ld [hl], b
    ld [hl], b
    ldh [$e0], a
    ret nz

    inc bc
    add b
    add e
    ret nz

    ret nz

    ldh [rTIMA], a
    nop
    adc b
    sbc [hl]
    ei
    ei
    ld [hl], e
    ccf
    rra
    rrca
    ld b, $08
    nop
    add l
    ccf
    rlca
    sub b
    rst $38
    rst $38
    dec bc
    nop
    adc c
    add hl, sp
    inc h
    ld e, $0f

jr_078_6863:
    rra
    inc e
    ld e, $3f
    ld a, a
    ld [$8800], sp
    ld a, a
    inc b
    rst $38
    rst $38
    ld [hl], b
    jr c, @-$06

    ld hl, sp+$07

jr_078_6874:
    nop
    adc c
    rrca
    ld hl, $ff13
    db $fc
    ld sp, $7f6b
    ld a, a

jr_078_687f:
    rlca
    nop
    adc c
    ld [hl], b
    ldh [$c0], a
    ret nz

    ldh [$e0], a
    ret nz

    ret nz

    ldh [rTAC], a
    nop
    add d
    ld b, h
    inc bc
    inc bc
    rst $38
    add d
    ld bc, $0901
    nop
    adc b
    ldh a, [$f8]
    dec a
    sbc a
    cp $fc
    ld hl, sp-$20
    ld [$9900], sp
    rst $38
    cp $3c
    ld a, a
    ld hl, sp-$02
    db $e3
    ld hl, sp-$05
    rst $38
    call c, $c8cc
    db $ec
    ld a, a
    rst $38
    db $fc
    ld a, $9d
    rst $38
    ld c, $f4
    db $fc
    jr c, jr_078_6874

    inc bc
    ldh a, [$84]
    ldh [$c0], a
    add b
    add b
    ld [de], a
    nop
    nop
    nop
    nop
    inc bc
    nop
    adc d
    ld bc, $0602
    add hl, bc
    inc de
    rla
    ld d, $17
    dec hl
    dec hl
    inc bc
    ld d, a
    adc h
    jr nc, @+$72

    ldh [$60], a
    and b
    jr nz, jr_078_687f

    ret c

    and $f9
    ld a, l
    ld a, [hl]
    inc bc
    ld a, a
    cp l
    cp a
    ld a, [bc]
    ld a, [bc]
    ld d, $13
    ccf
    ld b, a
    cp a
    call $89bd
    dec d
    ld a, a
    or a
    xor a
    rst $38
    ld a, e

Call_078_68f8:
    inc b
    ld [$0909], sp

Jump_078_68fc:
    dec d
    ld d, $17
    cpl
    ld l, $6f
    rst $28
    rst $28
    cp $fc
    ld a, e
    sbc l
    ld c, l
    cp $fe
    db $fd
    ei
    cp l
    push de
    cp a
    sbc $4a
    ld b, a
    ld b, l
    ld b, d
    add c
    nop
    add b
    cp [hl]
    xor a
    ld d, a
    dec hl
    inc l
    rla
    dec d
    ld a, [bc]
    dec bc
    dec b
    ld [bc], a
    ld bc, $0004
    sub d

jr_078_6927:
    ld h, a
    sbc a
    rst $38
    rst $28
    rst $20
    ld sp, $5dfe
    rst $08
    rst $10
    ld e, a
    adc $27
    rra
    ld bc, $fa00
    db $fd
    inc bc
    rst $38
    xor e
    inc a
    ld a, e
    rst $38
    rst $38
    rst $30

jr_078_6941:
    rst $28
    db $fd
    ld a, [de]
    db $f4
    jr jr_078_6927

    nop
    ld bc, $0f07
    add hl, de
    rrca
    rrca
    inc e
    jr c, jr_078_6990

    nop
    rlca
    inc b
    inc bc
    ld bc, $7800
    cp $ff
    rlca
    jp $f8f7


    db $10
    jr nz, jr_078_6941

    inc a
    ldh [rP1], a
    add c
    or $7a
    inc bc
    nop
    adc l
    ret nz

    and b
    ld e, b
    or h
    ld c, d
    ld h, l
    ld a, d
    ld a, a
    rra
    rrca
    inc bc
    add b
    ld h, c
    add hl, bc
    nop
    xor c
    add b
    ld h, b
    ret nc

    cp b
    db $fc
    cp $fe
    ld a, a
    rst $38
    ei
    jp hl


    db $fd
    or $fe
    ld a, a
    ccf
    rra
    dec bc
    dec bc
    rlca
    dec b
    ld [bc], a

jr_078_6990:
    ld bc, $0301
    rlca
    rrca
    rlca
    nop
    ld c, $1d
    rrca
    rlca
    rlca
    ld c, $07
    inc bc
    ld bc, $fa00
    db $fd
    inc bc
    rst $38
    adc e
    inc a
    ld a, e
    rst $38
    rst $38
    rst $30
    rst $28
    db $fd
    ld a, [de]
    db $f4
    jr @-$1e

    inc bc
    rst $38
    adc l
    ld a, a
    ld a, a
    rst $38
    ld a, l
    ei
    rst $20
    jp c, $42a2

    add d
    ld bc, $0000
    inc bc
    xor a
    inc bc
    cp a
    xor b
    ld l, a
    rst $18
    sbc $6f
    ld a, a
    ld a, a
    ccf
    dec e
    nop
    nop
    xor [hl]
    ret nc

    reti


    sub a
    add hl, sp
    db $fc
    cp $1e
    ld a, [hl]
    ld c, [hl]
    ld b, h
    ret nz

    ret nz

    ldh [$e0], a
    nop
    ld c, l
    cp $fe
    db $fd
    ei
    cp l
    ld d, l
    ccf
    ld e, $0a
    rlca
    dec b
    ld [bc], a
    ld bc, $0005
    adc d
    ld bc, $0602
    add hl, bc
    inc de
    rla
    ld d, $17
    dec hl
    dec hl
    inc bc
    ld d, a
    sub b
    jr c, jr_078_6a70

    ld sp, hl
    ld l, c
    cp l
    ld a, $bf
    db $fd
    cp $fa
    ld [hl], h
    ld c, b
    or b
    ld b, b
    ld b, b
    and b
    inc bc
    inc bc
    add a
    dec b
    dec b
    dec bc
    dec bc
    rla
    rla
    dec bc
    inc b
    ld a, [bc]
    call z, Call_000_0b0b
    inc c
    sub b
    xor c
    db $dd
    sbc l
    cp $bf
    db $fd
    cp $da
    call nc, $f4e8
    db $f4
    ld a, d
    ld a, d
    ld a, [bc]
    ld a, [bc]
    ld d, $12
    ccf
    ld b, a
    cp a
    rst $08
    cp a
    rl a
    ccf
    ccf
    ld a, a
    rst $10
    ldh a, [$50]
    ld d, b
    ld l, b
    add sp, -$04
    ld a, [c]
    cp l
    or e
    dec a
    ld c, a
    ld h, d
    pop af
    ld sp, hl
    ei
    ld a, [hl-]
    cp $0a
    ld a, [bc]
    rla
    ld de, $211f
    ld e, a
    ld b, a
    cp a
    cp a
    ld a, $76
    ld a, [$b7fa]
    reti


    ld e, l
    ld e, e
    ld a, a
    ld a, a
    rst $30
    db $eb
    db $ed
    ei
    adc l
    ld a, e
    inc bc
    db $fd
    add e
    rst $38
    ld [hl], d
    sbc [hl]
    rlca
    add sp, $04

jr_078_6a70:
    ret nc

    sub b
    and b
    jr nz, jr_078_6ab5

    ld b, b
    add b
    ld a, [bc]
    ld a, [bc]
    ld e, $13
    ccf
    ld b, a
    cp l
    call $bdb9
    ld a, a
    inc bc
    rst $38
    adc l
    cp l
    add c
    ld e, l
    ld e, e
    ld a, a
    rst $08
    rst $38
    db $e3
    cp l
    or e
    sbc l
    cp l
    cp $03
    rst $38
    and d
    cp l
    add c
    nop
    ld h, b
    or b
    sub e
    adc [hl]
    ld e, l
    ld l, d
    ld d, a
    ld e, a
    ld e, h
    ld e, [hl]
    cpl
    cpl
    ld e, $0f
    rrca
    nop
    ld b, $0d
    pop af
    add hl, sp
    rst $18
    dec l
    ld [hl], l
    ld [hl], l
    dec e
    cp d
    ld a, [$5cbc]

jr_078_6ab5:
    ret z

    ldh a, [rTAC]
    inc a
    ld b, $5a
    add e
    sbc c
    sbc c
    cp l
    db $10
    inc a
    ld a, [bc]
    nop
    add e
    ld bc, $0201
    inc bc
    inc b
    inc bc
    xor a
    inc bc
    cp a
    xor a
    ld l, a
    rst $18
    sbc $6f
    ld a, a
    ld a, a
    ccf
    dec e
    nop
    nop
    and b
    ret nc

jr_078_6ada:
    ret nc

    sub b
    jr c, jr_078_6ada

    cp $1e
    ld a, [hl]
    ld c, [hl]
    ld b, h
    ret nz

    ret nz

    ldh [$e0], a
    nop
    sub a
    ld d, [hl]
    ld e, e
    ld c, e
    cpl
    cpl
    daa
    rla
    dec bc
    dec b
    inc b
    dec b
    dec b
    inc bc
    ld bc, $3800
    db $f4
    cp $ff
    adc a
    inc bc
    call nc, $ec89
    ld a, [c]
    rst $38
    ld a, a
    ld [hl], b
    sub b
    ld hl, sp+$78
    ld sp, hl
    inc bc
    rst $38
    adc h
    cp h
    ld a, c
    inc hl
    daa
    daa
    dec de
    dec bc
    rrca
    ld b, $03
    nop
    nop
    inc bc
    rst $38
    adc d
    ld a, a
    ld a, a
    rst $38
    ld a, l
    ld a, [$d8e4]
    and b
    ld b, b
    add b
    inc bc
    nop
    sub b
    rst $38
    db $fc
    db $fc
    pop hl
    rst $08
    sbc a
    ld a, a
    cp $de
    ld e, l
    ld c, [hl]
    ld b, b
    ld b, b
    add b
    nop
    add b
    ld b, $ff
    add h
    db $fd
    ld [hl], d
    inc e
    ldh [rTMA], a
    nop
    add d
    inc a
    ld a, h
    dec b
    ld a, b
    add e
    ld a, h
    inc a
    ld a, $05
    ld e, $9e
    ld a, $c3
    rst $38
    ei
    jp hl


    rst $30
    cp $7e
    ccf
    rla
    dec bc
    dec bc
    dec b
    dec b
    ld b, $03
    ld bc, $040b
    ld [bc], a
    inc bc
    ld b, $0f
    ld e, $1d
    dec sp
    scf
    rla
    rrca
    ld bc, $0003
    adc l
    ret nc

    jr nz, @+$52

    add sp, -$3c
    inc [hl]
    db $f4
    db $ec
    ld [$add1], a
    ld [hl-], a
    ret nz

    ld d, $00
    adc d
    ld bc, $0703
    ld c, $1c
    jr jr_078_6b9e

    jr jr_078_6bbb

    inc [hl]
    inc bc
    ld l, b
    and c
    jr nc, jr_078_6bdd

    and b
    and b
    ld h, b
    ldh [$60], a
    jr c, jr_078_6bb2

    rlca
    add e
    add c
    add b
    ret nz

    ret nz

    ld h, b
    dec c
    dec c
    add hl, de

jr_078_6b9e:
    dec e
    ld a, [hl-]
    ld a, d
    jp nz, $c6f6

    cp $fa
    ldh [$cc], a
    ld hl, sp-$08
    db $fc
    rlca
    inc bc
    rrca
    xor b
    dec de
    add hl, de
    add hl, de

jr_078_6bb2:
    jr nc, jr_078_6be5

    ld [hl], b
    or b
    or b
    or c
    sub e
    ld b, a
    db $e3

jr_078_6bbb:
    cp $e7
    cp e
    ld e, a
    ld l, h
    cp $fe
    or [hl]
    ld e, a
    rst $08
    push bc
    add $c3
    add c
    nop
    add b
    pop bc
    ret nc

    ld l, b
    inc [hl]
    inc sp
    jr @+$1c

    dec c
    inc c
    ld b, $03
    ld bc, $0004
    or a
    rst $20
    ld a, d
    inc b

jr_078_6bdd:
    jr jr_078_6bfe

    adc $1f
    di
    ld a, b
    ld l, h
    rst $28

jr_078_6be5:
    ld sp, hl
    inc a
    ld e, $01
    nop
    ei
    ld b, $00
    ld b, b
    ldh [$e3], a
    call nz, Call_000_09c1
    add hl, de
    inc sp
    rst $20
    xor $0c
    ld hl, sp-$20
    nop
    ld bc, $0806

jr_078_6bfe:
    rla
    ld c, $08
    inc de
    daa
    ccf
    nop
    rlca
    rlca
    ld [bc], a
    ld bc, $7800
    add [hl]
    ld bc, $fcfb
    inc a
    rrca
    inc bc
    rst $38
    add [hl]
    inc hl
    rst $18
    rst $38
    ld a, a
    adc a
    ld a, l
    inc bc
    nop
    adc l
    ret nz

    ld h, b
    cp b
    ld c, h
    or [hl]
    sbc e
    add l
    add b
    ldh [$f0], a
    db $fc
    rst $38
    cp $09
    nop
    rst $00
    add b
    ldh [$30], a
    ld c, b
    inc b
    ld [de], a
    ld e, $ce
    push de
    inc a
    ld e, [hl]
    ld a, [hl]
    cp a
    or a
    ld e, a
    cpl
    rla
    rrca
    rrca
    dec b
    ld b, $03
    ld bc, $0201
    inc b
    ld [$0007], sp
    ld c, $13
    ld [$0704], sp
    add hl, bc
    inc b
    ld [bc], a
    ld bc, $fb00
    ld b, $00
    ld b, b
    ldh [rNR44], a
    ld b, h
    pop bc
    add hl, bc
    add hl, de
    inc sp
    rst $20
    xor $0c
    ld hl, sp-$20
    rst $00
    xor l
    ldh a, [$ce]
    call c, $fbf5
    ld [hl], a
    sbc $bb
    ld h, e
    jp $0183


jr_078_6c72:
    nop
    nop
    inc bc
    ret nc

    inc bc
    add sp, -$58
    ld e, b
    or b
    or c
    ld e, b
    ld c, b
    ld c, h
    ld h, $1d
    nop
    nop
    ld [hl], c
    ccf
    ccf
    ld [hl], a
    ld sp, hl
    inc b
    ld [bc], a
    ld [c], a
    ld a, [c]
    jp z, Jump_078_40c4

    ld b, b
    jr nz, jr_078_6c72

    nop
    cp $e7
    xor e
    ld e, a
    ld l, h
    cp $7e
    ld [hl], $1f
    rrca
    dec b
    ld b, $03
    ld bc, $0005
    adc d
    ld bc, $0703
    ld c, $1c
    jr jr_078_6cc4

    jr jr_078_6ce1

    inc [hl]
    inc bc
    ld l, b
    sbc d
    ccf
    ld e, a
    or a
    or a
    ld h, e
    pop hl
    ld b, c
    inc bc
    ld [bc], a
    ld b, $8c
    cp b
    ldh a, [$c0]
    ret nz

    ld h, b
    inc bc
    ld [bc], a
    ld [bc], a

jr_078_6cc4:
    ld b, $06
    inc c
    inc c
    jr jr_078_6ce2

    inc c
    inc b
    dec c
    call z, $0c0c
    rrca
    sbc a
    or a
    db $e3
    db $e3
    ld b, c
    ld b, c
    inc bc
    ld [bc], a
    ld [hl], $3c
    jr jr_078_6ce9

    inc c
    add [hl]
    add [hl]
    dec c

jr_078_6ce1:
    dec c

jr_078_6ce2:
    add hl, de
    dec e
    add hl, sp
    ld a, d
    jp nz, $c4f4

jr_078_6ce9:
    cp h
    ld hl, sp-$20
    ret z

    ret nc

    ld hl, sp-$01
    or b
    or b
    sbc b
    ld hl, sp+$3c
    ld l, $63
    ld l, a
    di
    db $fd
    sbc a
    rrca
    ld b, a
    daa
    rst $28
    rst $38
    dec c
    dec c
    jr jr_078_6d22

    jr jr_078_6d45

    ld h, c
    ld a, [hl]
    ret c

    pop hl
    ei
    rst $08
    and a
    add a
    rst $08
    ld a, a
    cp [hl]
    cp h
    sbc h
    db $e4
    adc h
    ld e, $1b
    ld a, l
    rst $38
    sub a
    inc b
    inc bc
    add d
    adc a
    rst $38
    rlca
    jr @+$06

jr_078_6d22:
    jr nc, jr_078_6ce9

    ld h, b
    ldh [$c0], a
    ret nz

    add b
    dec c
    dec c
    ld de, $3a1d
    ld a, d
    add $f6
    adc $fe
    jp nz, $8189

    add c
    jp $beff


    cp h
    adc h
    cp h
    ld e, h
    ld e, [hl]
    ld h, e
    ld l, a
    ld [hl], e
    ld a, a
    ld b, e
    sub c

jr_078_6d45:
    add c
    add c
    jp Jump_000_00ff


    ld h, b
    ret nc

    di
    db $fd
    ld a, e
    ld l, a
    ld [hl], a
    ld a, l
    ld a, a
    ld a, a
    ccf
    dec sp
    inc de
    add hl, bc
    ld [$0600], sp
    dec bc
    rst $38
    rst $18
    rst $28
    rst $38
    rst $30
    rst $10
    rst $38
    ld a, [hl]
    ld a, [hl]
    db $ec
    db $e4
    cp b
    db $10
    rlca
    inc h
    ld b, $66
    add e
    rst $20
    rst $20
    jp Jump_000_2410


    ld a, [bc]
    nop
    add e
    ld bc, $0301

jr_078_6d79:
    inc bc
    rlca
    inc bc
    ret nc

    inc bc
    add sp, -$51
    ld e, b
    or b
    or c
    ld e, b
    ld c, b
    ld c, h
    ld h, $1d
    nop
    nop
    ld h, b
    jr nc, jr_078_6dbd

    ld [hl], b
    ld hl, sp+$04
    ld [bc], a
    ld [c], a
    ld a, [c]
    jp z, Jump_078_40c4

    ld b, b
    jr nz, jr_078_6d79

    nop
    add sp, $69
    ld h, h
    db $76
    ld [hl-], a
    inc [hl]
    inc a
    inc e
    ld c, $07
    rlca
    ld b, $06
    ld [bc], a
    ld bc, $f800
    adc h
    ld [bc], a
    ld bc, $037f
    inc a
    adc [hl]
    inc e
    ld c, $c1
    rst $38
    ldh a, [rSVBK]
    adc b
    ld a, b
    sbc a
    jp hl


    or [hl]

jr_078_6dbd:
    and b
    db $e3
    ld h, a
    inc bc
    ccf
    sub h
    rra
    rrca
    ld [$0305], sp
    nop
    nop
    rst $00
    xor l
    ldh a, [$ce]
    call c, $fbf5
    db $76
    call c, $60b8
    ret nz

    add b
    inc bc
    nop
    sbc d
    and a
    jp $9f83


    cp a
    ld hl, sp-$0a
    ld sp, hl
    ld d, c
    db $d3
    adc $c0
    ret nz

    add b
    nop
    add b
    db $e3
    call $fdbd
    push af
    db $fd
    dec de
    adc [hl]
    db $fc
    ldh [rTMA], a
    nop
    add d
    inc h
    ld b, h
    dec b
    ld c, b
    add e
    ld b, h
    inc h
    ld [hl+], a
    dec b
    ld [de], a
    sbc [hl]
    ld [hl+], a
    cp $fc

jr_078_6e05:
    ld a, h
    sbc $be
    or a
    ld e, a
    cpl
    rra
    rrca
    rrca
    rlca
    rlca
    dec b
    ld [bc], a
    ld bc, $070c
    inc bc
    ld [bc], a
    dec b
    ld [$1311], sp
    ld h, $2c
    inc e
    ld c, $01
    inc bc
    nop
    adc l
    jr nc, jr_078_6e05

    or b
    jr jr_078_6e64

    call z, Call_000_1c8c
    ld e, $3f
    ld a, a
    ld a, [c]
    ret nz

    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    add h
    inc c
    ld [de], a
    dec l
    dec l
    inc bc
    nop
    adc l
    rlca
    inc c
    dec de
    ld d, $1c
    ld e, $1e
    ld [$1f0d], sp
    inc l
    ld e, l
    cp a
    inc bc
    nop
    and c
    ret nz

    ld h, b
    or b
    call c, $fc76
    or $3a
    ld a, h
    sbc h
    add sp, -$4c
    ld [$f8f8], a
    rst $38
    rra

jr_078_6e64:
    rst $38
    inc bc
    ld a, c
    cp c
    jp $e33f


jr_078_6e6b:
    inc hl
    and a
    ld a, a
    ld h, b
    ccf
    ld a, a
    ld a, a
    rst $38
    ld hl, sp+$08
    rst $38
    add h
    cp $e8
    jr jr_078_6e6b

    inc bc
    nop
    adc l
    rlca
    inc c
    dec de
    ld d, $0c
    ld c, $1e
    jr c, jr_078_6ec4

    rra
    inc e
    ld a, $5f
    ld [$8500], sp
    inc d
    rra
    ccf
    ld a, e
    ld b, c
    ld [$0300], sp
    ld b, b
    add l
    ldh [$f8], a
    db $fc
    ld l, $06
    inc bc
    nop
    sub h
    db $fd
    rst $38
    rst $38
    ccf
    rst $38
    ld [hl], e
    ld a, c
    cp c
    di
    ld a, a
    rst $38

jr_078_6eab:
    rst $28
    xor a
    ld a, a
    ld l, h
    ccf
    rst $00
    rst $38
    rst $38
    ld_long a, $ff08
    add h
    cp $e8
    jr jr_078_6eab

    rlca
    nop

jr_078_6ebd:
    adc d
    ccf
    ld d, a
    ld d, a
    ccf
    rla
    rla

jr_078_6ec4:
    rra
    ccf
    ld a, a
    nop
    inc bc
    rst $20
    adc e
    db $db
    inc a
    jp $243c


    rst $20
    inc a
    cp l
    rst $38
    db $db
    ld h, [hl]
    dec bc
    nop
    sub c
    ccf
    ld d, a
    ld d, a
    ccf
    ccf
    ld [hl], b
    inc b
    ld b, $0a
    ld d, a
    rst $20
    ei
    add hl, bc
    dec bc
    ld a, [de]
    dec b
    rlca
    ld b, $00
    sub l
    inc b
    inc b
    inc c
    inc c
    inc d
    inc h
    inc e
    ld a, $5b
    or a
    rst $10
    dec d
    ld h, $3a
    inc bc
    inc bc
    rrca
    rra
    ccf
    ld a, a
    ld a, a
    inc b
    rst $38
    adc a
    ld a, a
    ld a, a
    ccf
    rra
    rrca
    inc bc
    add hl, bc
    rlca
    rlca
    ld b, $09
    add hl, bc
    ld [de], a
    ld [de], a
    db $10
    rlca
    jr nz, jr_078_6ebd

    ld a, a
    add b
    nop
    rlca
    inc c
    dec de
    ld d, $1c
    ld e, $1e
    ld [$1f0d], sp
    inc l
    ld e, l
    cp a
    db $fc
    rla
    dec hl
    call nc, $b068
    call c, $fc76
    or $3a
    ld a, h
    sbc h
    add sp, -$4c
    ld [$0080], a
    nop
    add b
    ld b, b
    ld b, b
    inc bc
    jr nz, jr_078_6f47

    db $10
    adc c
    inc de
    ld c, $05
    inc bc
    dec b

jr_078_6f47:
    inc b
    ld a, [bc]
    ld a, [bc]
    ld [$1007], sp
    sub d
    ccf
    ret nz

    nop
    rlca
    inc c
    dec de
    ld d, $0c
    ld c, $1e
    jr c, @+$3f

    rra
    inc e
    ld a, $5f
    db $fc
    db $fc
    inc bc
    rst $38
    sbc a
    ldh [$ce], a
    call $fce3
    ld [c], a
    ld [c], a
    rst $38
    ld e, a
    jr nz, jr_078_6f8d

    nop
    ld h, b
    sub c
    sbc c
    ret


    ld c, c
    inc h
    ld [de], a
    dec bc
    rlca
    inc bc
    ld bc, $0203
    ld bc, $7c00
    add $bb
    ld l, l
    inc bc
    rst $28
    sub l
    add e
    rst $10
    rst $38
    cp a
    call $faff
    inc b

jr_078_6f8d:
    add h
    nop
    inc c
    ld a, [de]
    ld a, [c]
    ld h, d
    call c, $a090
    ldh [$e0], a
    ret nz

    ret nz

    inc b
    nop
    sub b
    rra
    ld l, a
    rst $08
    ld l, a
    rra
    rra
    ld a, a
    rst $18
    ld l, a
    rra
    rla
    dec de
    ccf
    ld sp, $0000
    ld a, [bc]
    rst $38
    sub h
    inc a
    cp l
    rst $38
    db $db
    rst $20
    ld b, [hl]
    rra
    ld l, $3d
    dec l
    inc e
    ld e, $1f
    ccf
    ld l, $1f
    rla
    dec de
    rrca
    ld bc, $0003
    inc bc
    rst $20
    adc e
    db $db
    inc a
    jp $243c


    rst $20
    inc a
    cp l
    rst $38
    db $db
    ld h, [hl]
    inc b
    nop
    add d
    jr @+$21

    dec b
    rrca
    adc d
    ld a, a
    rst $38
    ld a, a
    ld a, $3f
    ccf
    jr nz, jr_078_7054

    ld a, a
    ld a, a
    inc bc
    rst $38
    sub [hl]
    ei
    rst $28
    cp a
    rst $38
    ld a, h
    ldh a, [$f0]
    ldh [$e0], a
    ccf
    ld h, a
    ld e, a
    ld h, b
    ccf
    jr c, jr_078_7010

    ld d, $09
    ld a, [bc]
    dec b
    ld [bc], a
    ld bc, $0003
    sub h
    ldh a, [$f8]
    rst $38
    rra
    rst $38
    inc bc
    ld a, c
    cp c
    jp $e33f


jr_078_700d:
    inc hl
    and a
    ld a, a

jr_078_7010:
    ld h, b
    ccf
    db $fd
    db $eb
    rst $38
    ld hl, sp+$08
    rst $38
    adc a
    cp $e8
    jr jr_078_700d

    ldh a, [$9c]
    ld [$f51f], a
    rst $30
    and $ee
    db $fc
    ld hl, sp-$20
    dec b
    nop
    adc h
    rra
    inc sp
    cpl
    scf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    ld bc, $0004
    add d
    rst $38
    db $fc
    inc bc
    rst $38
    push bc
    ldh [$ce], a
    call $fce3

jr_078_7044:
    ld [c], a
    ld [c], a
    rst $38
    ld e, a
    jr nz, jr_078_7069

    db $10
    jr jr_078_70b9

    add h
    inc b
    inc b
    dec sp
    ld h, h
    ld h, $22

jr_078_7054:
    pop hl
    sub b
    inc e
    inc b
    ld a, [bc]
    ld a, [hl-]
    nop
    nop
    ld bc, $1c07
    ld h, b
    ld b, b
    ld h, b
    ld d, b
    jr z, jr_078_7079

    ld a, [bc]
    dec b
    dec b
    ld [bc], a

jr_078_7069:
    ld bc, $0000
    ret nz

    ld b, b
    ld b, b
    ld a, a
    rlca
    ld c, $1c
    inc c
    inc bc
    rlca
    ld c, $fc
    ld a, b

jr_078_7079:
    ldh a, [$03]
    inc b
    ld c, $1f
    dec de
    dec sp
    scf
    rra
    rrca
    ld bc, $0006
    adc d
    adc b
    db $e4
    ld [hl], h
    db $f4
    db $ec
    ld [$add1], a
    ld a, [c]
    ret nz

    ld [$0400], sp
    ld bc, $008a
    nop
    ld bc, $0703
    dec bc
    ld [hl], e

jr_078_709d:
    add [hl]
    add hl, de
    ldh [$03], a
    nop
    add h
    ldh [$60], a
    ret nz

    add b
    inc b
    ret nz

    and l
    jr nz, jr_078_7044

    ld b, [hl]
    ld hl, $1f1e
    ld l, a
    adc $6e
    rra
    rra
    ld a, a
    rst $18
    ld l, a
    rra

jr_078_70b9:
    rla
    dec de
    ccf
    ld sp, $0000
    rst $38
    jr jr_078_709d

    db $db
    inc h
    db $db
    rst $38
    and l
    ld a, [hl]
    rst $38
    inc a
    cp l
    rst $38
    db $db
    rst $20
    ld b, [hl]
    inc e
    nop
    add h
    inc c
    ld e, $33
    inc sp
    inc bc
    nop
    add e
    rlca
    dec bc
    rla
    inc bc
    rra
    add a
    dec de
    rrca
    ld c, $1f
    scf
    ld [hl], a
    ld a, [c]
    inc bc
    nop
    sub c
    ret nz

    and b
    ret nc

    db $fc
    ld a, [$baec]
    cp $fc
    db $fc
    sbc b
    ld l, h
    db $76
    rst $38
    rrca
    rst $38
    ldh [$09], a
    rst $38
    add a
    ld a, a
    ld a, a
    ccf
    rst $38
    ret nz

    rst $38
    rlca
    ld [$84ff], sp
    cp $f8
    ld hl, sp-$10
    inc bc
    nop
    adc l
    rlca
    dec bc
    rla
    rra
    rrca
    rrca
    dec de
    ccf
    ld a, $1f
    rla
    inc hl
    ld a, c
    ld a, [bc]
    nop
    add e
    inc b
    ld a, [hl-]
    ld b, b
    dec c
    nop
    add e
    ret nc

    jr z, jr_078_712d

    inc bc
    nop
    and b
    db $fd
    ld b, d
    rst $38

jr_078_712d:
    pop af
    rst $28

jr_078_712f:
    rst $18
    rst $18
    rst $38
    rst $18
    xor a
    or e
    ld a, h
    ei
    ld [hl], a
    ld [hl], a
    ccf
    rst $00
    jr c, @+$01

    add a
    rst $38
    ld a, a
    sbc l
    db $e3
    db $db
    cp e
    or h
    ld l, a
    cp $f8
    ld hl, sp-$10
    rlca
    nop
    adc a
    ccf
    ld l, b
    ld l, b
    ccf
    ld e, $1e
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    inc a
    inc a
    rst $38
    rst $20
    dec b
    rst $38
    add h
    ld a, [hl]
    rst $38
    cp l
    ld h, [hl]
    dec bc
    nop
    sub c
    ccf
    ld l, b
    ld l, b
    ccf
    ccf
    ld a, a
    rlca
    dec b
    dec c
    ld e, b
    cp b
    db $fc
    ld c, $0e
    rra
    rlca
    rlca
    dec b
    nop
    and [hl]
    inc bc
    rlca
    rlca
    dec bc
    dec bc
    dec de
    dec sp
    inc de
    ld hl, $f864
    ret c

    ld a, [de]
    ccf
    dec sp
    inc bc
    inc bc
    inc c
    db $10
    jr nz, jr_078_71d0

    ld b, [hl]
    add h
    adc b
    adc b
    add h
    ld b, [hl]
    ld b, c
    jr nz, @+$12

    inc c
    inc bc
    rrca
    ld b, $05
    ld b, $08
    ld [$1003], sp
    inc bc
    jr nz, jr_078_712f

    jr z, jr_078_71d3

    ld l, $2e
    ld a, a
    add b
    nop
    rlca
    dec bc
    rla
    inc bc
    rra
    sbc l
    dec de
    rrca
    ld c, $1f
    scf
    ld [hl], a
    ld a, [c]
    rst $38
    dec de
    scf
    call c, $d0a8
    db $fc
    ld a, [$baec]
    cp $fc
    db $fc
    sbc b
    ld l, h
    db $76
    add b
    nop
    nop
    add b
    ld b, b
    ld b, b
    inc bc

jr_078_71d0:
    jr nz, jr_078_71d7

    db $10

jr_078_71d3:
    adc b
    ld d, b
    ret nc

    rra

jr_078_71d7:
    dec c
    rlca
    inc bc
    inc b
    inc b
    inc bc
    ld [$1003], sp
    sbc b
    inc d
    ld d, $16
    rla
    ccf
    ret nz

    nop
    rlca
    dec bc
    rla
    rra
    rrca
    rrca
    dec de
    ccf
    ld a, $1f
    rla
    inc hl
    ld a, c
    rst $38
    rlca
    rst $38
    nop
    add hl, bc
    rst $38
    xor a
    ld a, a
    ccf
    rra
    nop
    ld h, b
    pop af
    jp hl


    cp c
    ld a, c
    inc a
    ld e, $0f
    inc b
    ld [bc], a
    ld bc, $0302
    ld bc, $7c00
    cp d
    ld a, l
    rst $38
    sub e
    add hl, sp
    sub e
    rst $38
    xor $ec
    ld a, e
    ld a, e
    ld [hl], e
    ld b, $fc
    db $fc
    nop
    inc c
    ld d, $ee
    cp [hl]
    db $ec
    ldh a, [$e0]
    ld h, b
    ldh [$c0], a
    ret nz

    inc b
    nop
    adc [hl]
    rra
    ld a, [hl]
    cp l
    ld a, l
    inc e
    ld e, $7f
    cp a
    ld a, [hl]
    rra
    rra
    rla
    ld l, $31
    inc bc
    nop
    inc bc
    rst $20
    sub b
    db $db
    inc a
    jp $243c


    rst $20
    rst $38
    ld a, [hl]
    rst $38
    cp l
    and l
    ld b, [hl]
    rra
    ccf
    cpl
    ccf
    inc bc
    rra
    adc c
    cpl
    ccf
    rra
    rra
    rla
    rrca
    ld bc, $0000
    dec bc
    rst $38
    add h
    ld a, [hl]
    rst $38
    cp l
    ld h, [hl]
    inc b
    nop
    add d
    jr jr_078_7280

    dec b
    ld [$70a3], sp
    add c
    ld b, c
    ld [hl+], a
    inc hl
    inc hl
    jr nz, jr_078_72c4

    ld c, a
    ld b, b
    add b
    nop
    rlca
    dec de
    ld l, h
    or b
    jp $904c


    sub b

jr_078_7280:
    jr nz, @+$22

    ccf
    ld a, b
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    inc bc
    ld bc, $0003
    add h
    sbc a
    sbc a
    rst $38
    ldh [$09], a
    rst $38
    add a
    ld a, a
    ld a, a
    ccf
    sub a
    sbc [hl]
    rst $38
    rlca
    ld [$8fff], sp
    cp $f8
    ld hl, sp-$10
    ldh a, [$7c]
    cp $fd
    rst $30
    rst $30
    and $ee
    db $fc
    ld hl, sp-$20
    dec b
    nop
    adc h
    rra
    inc a
    ccf
    jr c, jr_078_72d9

    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    ld bc, $0004
    add h

jr_078_72c4:
    db $e4
    ld h, a
    rst $38
    nop
    add hl, bc
    rst $38
    add e
    ld a, a
    ccf
    rra
    ld [de], a
    nop
    xor b
    ld bc, $1c07
    ld [hl], d
    ld e, d
    ld l, c
    ld a, l
    inc a

jr_078_72d9:
    inc e
    ld c, $07
    rlca
    inc bc
    ld bc, $0000
    ret nz

    ld b, b
    ld b, b
    ld a, a
    dec b
    ld a, [bc]
    inc d
    adc h
    add e
    ld b, l
    ld c, d
    db $f4
    ret z

    ldh a, [rSC]
    rlca
    add hl, bc
    ld de, $2616
    inc l
    inc d
    ld c, $01
    ld b, $00
    adc d
    ld a, b
    inc e
    adc h
    inc c
    inc e
    ld e, $3f
    ld a, a
    ld [hl-], a
    ret nz

    ld [$0400], sp
    ld bc, $008a
    nop
    ld bc, $0402
    rrca
    ld a, [hl]
    rst $38
    ld sp, hl
    ldh [$03], a
    nop
    and e
    ldh [$a0], a
    ret nz

    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    ldh [$f8], a
    ld a, [hl]
    ccf
    ld e, $1f
    ld a, a
    cp a
    ld a, a
    rra
    rra
    ld a, a
    cp a
    ld a, a
    rra
    rra
    rla
    ld l, $31
    nop
    nop
    rst $38
    rst $38
    inc a
    inc a
    rst $38
    rst $20
    dec b
    rst $38
    add l
    ld a, [hl]
    rst $38
    cp l
    and l
    ld b, [hl]
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    adc d
    ld a, a
    ld b, c
    dec l
    dec d
    dec c
    dec d
    dec l
    ld e, l
    dec l
    dec d
    inc bc
    nop
    add d
    inc bc
    ld c, $04
    rra
    sub c
    ccf
    ld l, a
    rst $28
    rst $28
    and $a6
    cp e
    rrca
    scf
    jp Jump_000_0001


    nop
    add b
    call nz, $f3e0
    inc bc
    rst $38
    and e
    rst $18
    rst $18
    dec a
    rst $38
    ldh [$f0], a
    ld hl, sp-$04
    cp $3f
    ccf
    rst $30
    db $e3
    rst $08
    sbc a
    sbc a
    ccf
    ccf
    rst $38
    ret nz

    ld h, b
    jr nc, jr_078_73a2

    inc c
    add [hl]
    inc bc
    inc bc
    add c
    add c
    pop bc
    pop bc
    db $fd
    rst $20
    rst $38
    db $ed
    add hl, bc
    nop
    add e
    db $10
    jr z, jr_078_73c4

    inc b
    jr c, @-$14

    ld h, b
    ld [hl], a
    dec sp

jr_078_73a2:
    jr nc, @+$81

    db $fc
    cp $3e
    jr c, @+$1f

    rra
    ld a, $57
    sbc a
    cp h
    ld a, a
    nop
    ret nz

    and b
    db $10
    ret nc

    ld h, b
    ldh a, [$f8]
    jr c, jr_078_7429

    ldh a, [$f8]
    call nc, $3dfa
    cp $60
    ld [hl], a
    dec sp
    jr nc, jr_078_7443

jr_078_73c4:
    db $fc
    cp $3e
    jr c, @+$1f

    ccf
    ld a, [hl]
    ld d, a
    ld c, a
    ld e, [hl]
    ccf
    nop
    ret nz

    and b
    db $10
    ret nc

    ld h, b
    ldh a, [$f8]
    jr c, @+$72

    ld hl, sp-$04
    db $e4
    ld a, [c]
    ld a, d
    db $fc
    inc c
    ld e, $1e
    dec e
    inc c
    ld [bc], a
    ld bc, $0000
    inc e
    ld a, $3f
    cpl
    daa
    inc hl
    ld sp, $7760
    dec sp
    jr nc, @+$81

    db $fc
    ld a, [hl]
    ld a, $b8
    ld a, l
    rst $30
    ld l, [hl]
    scf
    rla
    ld [$000f], sp
    ld h, b

jr_078_7401:
    or c
    sbc c
    adc c
    ld [hl], l
    inc de
    dec bc
    rlca
    inc bc
    inc bc
    rlca
    add a
    inc bc
    nop
    nop
    ld a, h
    add $bb
    ld l, l
    inc bc
    rst $28
    sub [hl]
    add e
    rst $10
    rst $38
    ei
    call Call_078_7dff
    add d
    ld b, d
    rlca
    dec bc
    dec e
    ld a, $3f
    ld a, a
    ld a, e
    scf
    rra
    rlca

jr_078_7429:
    dec b
    dec b
    ld [bc], a
    inc bc
    nop
    adc h
    jr nz, jr_078_7401

    adc b
    ld l, b
    ld hl, sp-$10
    db $fc
    ld a, [c]
    ld [c], a
    ld sp, hl
    add l
    ld [bc], a
    inc b
    nop
    xor e
    ld [bc], a
    rrca
    rra
    rra
    ld a, a

jr_078_7443:
    ld a, [hl]
    inc a
    ld hl, sp-$04
    db $fc
    ld a, $1f
    ccf
    scf
    daa
    ld [bc], a
    sbc c
    rst $18
    sbc $e1
    rst $18
    ret nz

    ld h, b
    ld h, b
    jr c, jr_078_7490

    ld e, h
    cp a
    rst $30
    xor d
    ld a, l
    ccf
    ld sp, hl
    rst $38
    rst $18
    and b
    rra
    nop
    nop
    ret nz

    ret nz

    ld [$0318], sp
    rst $38
    and d
    rst $18
    ld hl, sp-$01
    rst $38
    or $0f
    cp $0d
    dec bc
    dec c
    ld e, $77
    cp e
    ld a, l
    cp $55
    rst $38
    rst $38
    db $db
    rst $28
    inc de
    db $eb
    rst $30
    or $b4
    ld [hl], h
    add sp, -$64
    ld_long a, $fffd
    ld d, l
    rst $38
    cp $08
    nop

jr_078_7490:
    add d
    jr c, jr_078_750f

    inc bc
    cp $9e
    ld a, h
    jr c, jr_078_74d1

    sbc a
    rst $18
    sbc $e1
    rst $18
    ret nz

    ld h, e
    ld [hl], a
    scf
    ld [hl], $58
    cp a
    rst $30
    xor d
    ld a, l
    ccf
    rst $38
    rst $38
    rst $18
    and b
    rra
    ldh [$f8], a
    db $fd
    dec a
    dec e
    ld [bc], a
    inc bc
    rst $38
    sbc l
    rst $18
    ld hl, sp-$01
    rst $38
    or $0f
    cp $0d
    dec bc
    dec c
    ld e, $77
    cp e
    ld a, l
    cp $55
    rst $38
    rst $38
    inc b
    ld b, $0a
    ld d, a
    rst $20
    ei
    add hl, bc
    dec bc

jr_078_74d1:
    ld a, [de]
    dec b
    rlca
    ld b, $00
    adc a
    inc b
    inc b
    inc c
    inc c
    inc d
    inc h
    inc e
    ld a, $5b
    or a
    rst $10
    dec d
    ld h, $3a
    inc bc
    add hl, bc
    nop
    add a
    inc e
    ld a, $3f
    cpl
    daa
    inc hl
    ld sp, $ff03
    add e
    nop
    rrca
    rra
    inc b
    ccf
    add a
    rra
    ccf
    ccf
    dec de
    nop
    nop
    add hl, sp
    ld [$8719], sp
    add hl, sp
    ld sp, $2723
    cpl
    ccf
    rra
    dec b
    nop
    adc e
    jr nz, jr_078_755f

jr_078_750f:
    ld [hl], b
    ld d, b
    ld e, b
    ld e, h
    db $fc
    db $f4
    db $e4
    call nz, $0384
    nop
    inc bc
    add b
    adc c
    ld b, b
    cp b
    rst $00
    ld a, b
    adc a
    ldh a, [rIE]
    ld a, a
    rrca
    ld a, [bc]
    nop
    and [hl]
    inc e
    rlca
    inc e
    inc e
    rlca
    inc e
    nop
    sbc c
    rst $18
    sbc $e1
    rst $18
    ret nz

    ld h, b
    ld h, b
    jr c, jr_078_7572

    inc d
    cpl
    ccf
    ld a, [hl+]
    rra
    rra
    ld sp, hl
    rst $38
    rst $18
    and b
    rra
    nop
    nop
    ret nz

    ret nz

    add hl, bc
    ld a, [de]
    db $fd
    rst $38
    cp l
    ld [hl], a
    inc bc
    rst $38
    sbc a
    push af
    add hl, bc
    di
    inc bc
    ld [bc], a
    inc bc
    ccf
    rst $18
    rst $28
    rst $30
    ei
    ld d, l
    rst $38

jr_078_755f:
    rst $38
    db $d3
    ld sp, hl
    add a
    ei
    cp l
    ld a, l
    db $ed
    ld e, l
    cp d
    db $e4
    ld hl, sp-$0c
    db $fc
    ld d, h
    db $fc
    ld hl, sp+$00
    dec b

jr_078_7572:
    ld bc, $029f
    ld e, $10
    rla
    ld d, $fe
    add l
    ld c, l
    ld [hl-], a
    inc c
    jr nc, jr_078_75ac

    ld [hl+], a
    add hl, hl
    dec l
    ld [$7474], a
    ld l, b
    ld l, b
    ld d, b
    cp b
    and h
    ld c, h
    ldh a, [$80]
    rlca
    rra
    ccf
    ld a, a
    ld a, a
    ld b, $ff
    add l
    ld a, a
    ld a, a
    ccf
    rra
    rlca
    add hl, bc
    nop
    add a
    jr nc, jr_078_75c8

    dec h
    ld a, [hl+]
    cpl
    jr nz, jr_078_75e4

    add hl, bc
    nop
    adc h
    ld b, d
    and l
    ld e, d
    rst $20

jr_078_75ac:
    rst $38
    nop
    rst $38
    ld e, d
    ld e, d
    ld a, [hl]
    daa
    ld l, $05
    ccf
    and e
    ld l, a
    rst $28
    rst $28
    and $a6
    cp e
    ld a, b
    inc a
    ld e, $3c
    ld a, b
    ldh a, [$fc]
    ld a, [hl]
    rra
    ld c, $1c

jr_078_75c8:
    ld a, h
    ld hl, sp+$7c
    ld a, $1c
    rst $38
    ld hl, sp-$0e
    and $d6
    push hl
    ld d, b
    ld de, $070b
    ld [bc], a
    inc bc
    ld bc, $0003
    sub b
    rst $38
    ld hl, sp-$0e
    and $d6
    push hl
    ld d, b

jr_078_75e4:
    ld de, $770b
    ld a, [c]
    ld a, e
    ld a, a
    rst $38
    rra
    add hl, de
    inc bc
    ld [hl], l
    adc d
    db $76
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    dec e
    ld e, $0f
    rlca
    inc bc
    ld bc, $0019
    adc d
    ld a, a
    ld a, a
    inc sp
    dec de
    dec bc
    dec de
    inc sp
    ld h, e
    inc sp
    dec de
    inc bc
    nop
    adc b
    inc bc
    dec c
    db $10
    inc d
    db $10
    dec e
    ld a, $5f
    inc bc
    sbc a
    adc [hl]
    rst $18

jr_078_7616:
    rst $08
    rrca
    jr c, jr_078_7616

    cp $ff
    rst $38
    ld a, a
    ccf
    ccf
    rrca
    rrca
    cp a
    dec b
    rst $38
    add [hl]
    rra
    rrca
    rlca
    inc bc
    adc c
    ret nz

    inc bc
    cp $96
    ld a, [c]
    ld [c], a
    ld [c], a
    jp nz, $83c3

    ret nz

    and b
    ret nc

    add sp, -$0c
    ld a, [$fdfd]
    ld a, a
    rst $38
    ccf
    ccf
    ld a, a
    sbc e
    add hl, sp
    ld [hl], a
    add hl, bc
    nop
    add c
    db $10
    inc b
    jr c, @+$01

    jr z, jr_078_7676

    ld h, b
    ld d, a
    inc l
    ccf
    ld d, a
    sbc a
    rst $38
    dec sp
    ccf
    ld e, $17
    inc hl
    ld a, c
    ld hl, sp-$19
    ld h, a
    nop
    ret nz

    ld h, b
    ldh a, [$f0]
    ldh [$f0], a
    cp b
    ld hl, sp-$10
    ret nc

    adc b
    inc l
    ld e, $e7
    and $60
    ld d, a
    inc l
    ccf
    ld d, a
    sbc a
    rst $38
    dec sp

jr_078_7676:
    ccf
    ld e, $27
    ld b, e
    ld a, c
    ld a, h
    ld [hl], e
    inc sp
    nop
    ret nz

    ld h, b
    ldh a, [$f0]
    ldh [$f0], a
    cp b
    ld hl, sp-$10
    ret z

    add h
    inc e
    ld a, $ce
    call z, $120c
    ld [de], a
    inc de
    rrca
    inc bc
    ld bc, $0000
    inc e
    ld [hl+], a
    ld sp, $3c38
    ccf
    ccf
    ld h, b
    ld d, a
    inc l
    ccf
    ld d, a
    sbc a
    ld a, a
    dec sp
    cp a
    sbc $8f
    ld d, e
    add hl, sp
    jr jr_078_76bc

    rrca
    nop
    ld h, b
    pop de
    jp hl


    ld sp, hl
    ld l, l
    rra
    ld c, $04
    ld [bc], a
    ld b, $07
    rlca
    inc bc

jr_078_76bc:
    nop
    nop
    ld a, h
    cp d
    ld a, l
    rst $38
    sub e
    add hl, sp
    sub e
    rst $38
    xor $6c
    ld a, [hl]
    ld a, e
    add hl, sp
    sub b
    add e
    cp $7e
    inc b
    inc c
    ld [de], a
    ld hl, $4221
    ld b, [hl]
    inc l
    inc e
    ld b, $07
    rlca
    ld [bc], a
    inc bc
    nop
    adc h
    ldh [$30], a
    ld a, b
    sbc b
    ld [$1c10], sp
    ld a, $3e
    ld a, a
    add a
    ld [bc], a
    inc b
    nop
    and h
    ld [bc], a
    dec c
    dec d
    db $10
    dec [hl]
    ld b, [hl]
    inc h
    ret z

    inc b
    call z, Call_000_0222
    jr z, jr_078_7710

    dec h
    ld [bc], a
    rst $28
    xor $e1
    cp a
    cp [hl]
    cp a
    ld e, a
    ld e, a
    daa
    ccf
    ld h, a
    jp $ddff


    ld e, a
    ccf
    rst $38
    rst $08

jr_078_7710:
    ldh [$7f], a
    dec b
    rst $38
    add d
    rst $30
    rst $28
    inc b
    rst $38
    and c
    ld hl, sp-$7d
    rlca
    rrca
    db $fc
    ld sp, hl
    rst $38
    cp $fb
    db $fd
    rst $38
    rst $08
    add [hl]
    rst $28
    cp e
    cp e
    rst $38
    ld a, a
    rst $30
    rst $38
    rra
    adc a
    ld c, $6c
    call z, $fc98
    or $13
    rst $28
    cp e
    cp e
    cp $09
    nop
    add c
    jr c, @+$05

    ld b, h
    sub a
    jr c, jr_078_7744

jr_078_7744:
    jr c, @+$01

    ldh [$e1], a
    cp a
    cp [hl]
    cp a
    ld e, a
    ld e, a
    ccf
    ccf
    ld l, a
    rst $00
    rst $38
    db $dd
    ld e, a
    ccf
    rst $38
    ret nz

    ldh [$7f], a
    dec bc
    rst $38
    sbc h
    ld hl, sp-$1d
    rlca
    rrca
    db $fc
    ld sp, hl
    rst $38
    cp $fb
    db $fd
    rst $38
    rst $08
    add [hl]
    rst $28
    cp e
    cp e
    rst $38
    rlca
    dec b
    dec c
    ld e, b
    cp b
    db $fc
    ld c, $0e
    rra
    rlca
    rlca
    dec b
    nop
    sub b
    inc bc
    rlca
    rlca
    dec bc
    dec bc
    dec de
    dec sp
    inc de
    ld hl, $f864
    ret c

    ld a, [de]
    ccf
    dec sp
    inc bc
    add hl, bc
    nop
    adc c
    inc e
    ld [hl+], a
    ld sp, $3c38
    ccf
    ccf
    rst $38
    nop
    inc bc
    rst $38
    adc b
    ldh a, [$e6]
    xor $ed
    db $e3
    ld hl, sp-$1a
    db $e4
    inc bc
    rst $38
    add c
    cpl
    ld [$8717], sp
    cpl
    ccf
    dec a
    dec sp
    scf
    cpl
    rra
    dec b
    nop
    add c
    jr nz, jr_078_77b8

    ld [hl], b
    add a
    ld a, b

jr_078_77b8:
    ld [hl], h
    xor h
    inc e
    inc a
    db $fc
    db $fc
    inc bc
    nop
    inc bc
    add b
    add [hl]
    ret nz

    ld a, b
    ccf
    add a
    ld [hl], b
    rrca
    dec c
    nop
    sbc e
    inc e
    rra
    rlca
    rlca
    rra
    inc e
    nop
    rst $28
    xor $e1
    cp a
    cp [hl]
    cp a
    ld e, a
    ld e, a
    daa
    ccf
    rra
    ld [hl-], a
    ccf
    scf
    rla
    rra
    rst $38
    rst $08
    ldh [$7f], a
    dec b
    rst $38
    xor b
    rst $30
    rst $28
    cp $ff
    ld a, [hl]
    cp $ff
    add e
    inc bc
    rrca
    rst $38
    cp $ff
    rst $38
    cp $ff
    pop af
    jr c, @+$1e

    cp a
    xor $ee
    rst $38
    ld a, a
    rst $38
    db $fd
    rlca
    ld h, e
    jp $f39b


    ld h, [hl]
    db $fc
    ld hl, sp+$4c
    cp h
    db $ec
    db $ec
    ld hl, sp+$00
    dec b
    ld bc, $039a
    rra
    rra
    jr @+$1b

    ld sp, hl
    ei
    ld [hl], e
    ld a, $0c
    jr nc, jr_078_785d

    ld a, $37
    inc sp
    or $8c
    adc h
    sbc b
    sbc b
    or b
    ld a, b
    ld a, h
    db $fc
    ldh a, [$80]
    add hl, de
    nop
    add a
    jr nc, jr_078_786c

    dec a
    scf
    jr nc, jr_078_7877

    ccf
    add hl, bc
    nop
    sub d
    ld b, d
    rst $20
    cp l
    jr jr_078_7841

jr_078_7841:
    rst $38
    rst $38
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ccf
    dec a
    jr nc, jr_078_787e

    jr nc, jr_078_7889

    ld a, $5f
    inc bc
    sbc a
    sub h
    rst $18
    rst $08
    ld c, b
    inc h
    ld [de], a
    inc h
    ld c, b
    sub b
    adc h
    ld h, d
    add hl, de
    ld a, [bc]

jr_078_785d:
    inc d
    ld h, h
    adc b
    ld c, h
    ld [hl+], a
    inc d
    rst $38
    rst $38
    inc b
    cp a
    add a
    ld e, a
    rra
    ld c, $05

jr_078_786c:
    inc bc
    ld [bc], a
    ld bc, $0003
    sub b
    rst $38
    rst $38
    cp a
    cp l
    cp l

jr_078_7877:
    cp a
    ld e, a
    rra
    ld c, $55
    sub e
    ld c, d

jr_078_787e:
    dec b
    jr nc, jr_078_7887

    add hl, bc
    inc bc
    dec bc
    add [hl]
    add hl, bc
    dec b

jr_078_7887:
    dec b
    inc b

jr_078_7889:
    ld [bc], a
    ld bc, $0019
    nop
    nop
    nop
    nop
    nop
    nop
    adc l
    nop
    nop
    ld a, $12
    ld a, [bc]
    ld a, [de]
    ld a, e
    ret nz

    ld a, e
    ld a, [de]
    ld a, [bc]
    ld [de], a
    ld a, $03
    nop
    rst $38
    rlca
    rra
    ccf
    ld a, a
    sbc [hl]
    ld a, a
    sbc $ff
    rst $38
    rst $30
    ret nz

    ld l, b
    inc hl
    ld a, a
    ld a, a
    nop
    ldh a, [$fc]
    cp $fe
    rra
    rst $28
    rst $28
    rst $38
    db $eb
    rst $38
    ld a, [hl+]
    cp $e4
    add d
    cp $00
    inc bc
    rrca
    rra
    ccf
    ld c, a
    cp a
    rst $18
    rst $38
    rst $38
    rst $30
    pop bc
    add sp, -$5e
    ld e, a
    jr c, jr_078_78d4

jr_078_78d4:
    ldh [$f8], a
    db $fc
    cp $1e
    rst $28
    ld l, a
    rst $28
    rst $38
    rst $10
    rst $38
    ld d, a
    dec a
    ld a, [c]
    inc e
    nop
    inc bc
    rrca
    rra
    inc a
    ld a, a
    ld a, a
    cp $ff
    cp a
    rst $30
    rst $00
    ld h, h
    inc h
    ld e, $01
    nop
    ldh a, [$fc]
    ld a, [de]
    xor $af
    ld [hl], c
    rst $38
    push af
    rst $18
    sub l
    adc $6c
    jr nc, jr_078_7932

    ldh a, [rP1]
    rlca
    rra
    ld a, $7d
    cp a
    db $fd
    ld [hl], d
    rst $18
    cp a
    ld hl, sp-$10
    ld [hl], b
    xor a
    ld e, b
    scf
    nop
    ldh a, [$fc]
    cp d
    rst $18
    push af
    rst $18
    or l
    rst $38
    adc a
    ld e, l
    ld [hl], c
    ld h, c
    and d
    ld a, h
    add b
    add c
    nop
    ld b, $14
    adc d
    ccf
    ld e, l
    cpl
    ccf
    ld h, b
    ld a, a
    ccf
    dec sp
    inc e
    rlca

jr_078_7932:
    inc de
    nop
    add d
    db $10
    jr nz, @+$05

    ld b, b
    adc d
    jr nz, jr_078_799c

    and b
    sub d
    sub a
    sub a
    cp [hl]
    cp b
    ld b, b
    ld b, b
    inc bc
    jr nz, jr_078_78d4

    db $10
    dec d
    cpl
    cpl
    ld e, a
    ld e, h
    ld c, b
    ld b, b
    ld b, b
    jr nz, jr_078_7972

    inc b
    ld c, $03
    rrca
    adc b
    ccf
    ld a, l
    ld a, b
    ld [hl], b
    ld h, b
    ld h, b
    jr nz, jr_078_797f

    inc bc
    db $10
    sub b
    ld h, d
    and e
    xor e
    sbc a
    sbc a
    ld c, h
    ld c, b
    jr nz, @+$22

    db $10
    db $10
    ld [de], a
    ld a, [hl+]
    cpl
    ld e, a

jr_078_7971:
    ld e, a

jr_078_7972:
    rlca
    nop
    xor e
    ld bc, $0503
    dec b
    inc c
    db $10
    inc sp
    ld b, b
    ld b, b
    nop

jr_078_797f:
    jr nz, jr_078_79f8

    dec sp
    jr nc, jr_078_7a03

    db $fc
    ld a, [hl]
    ld e, $38
    dec a
    ccf
    ld e, $37
    cpl
    ld e, e
    nop
    nop
    ret nz

    and b
    db $10
    ret nc

    ld h, b
    ldh a, [$f8]
    jr c, jr_078_7a11

    ldh a, [$78]
    db $ec

jr_078_799c:
    db $f4
    jp c, Jump_000_05fc

    inc bc
    rst $38
    adc l
    ld a, a
    ld [hl], e
    ld h, a
    ld l, a
    ld l, a
    ld h, a
    ld a, l
    ld a, a
    ld a, a
    rst $38
    ccf
    rst $38
    nop
    inc bc
    rst $38
    adc e
    ld a, a
    ld [hl], e
    ld h, a
    ld l, a
    ld l, a
    ld h, a
    ld a, l
    ld a, a
    ld a, a
    rst $38
    ccf
    inc b
    nop
    add [hl]
    inc bc
    rlca
    inc b
    inc b
    inc bc
    ld bc, $0007
    adc a
    jr nz, jr_078_7a43

    dec sp
    jr nc, @+$01

    db $fc
    cp $5e
    jr c, jr_078_7971

    ld a, a
    ld a, $17
    rrca
    dec bc
    inc bc
    ld bc, $33b7
    rra
    rrca
    ccf
    rst $38
    ccf
    rra
    rrca
    rra
    rra
    inc sp
    ld bc, $0701
    ccf
    ld d, a
    cp d
    rst $38
    cp d
    ld d, a
    rst $38
    cp a
    ld hl, sp-$10
    ld [hl], b
    cpl
    jr jr_078_79ff

jr_078_79f8:
    nop
    ldh a, [$fc]
    ld_long a, $ffbf
    cp a

jr_078_79ff:
    push af
    rst $38
    push af
    sbc a

jr_078_7a03:
    adc [hl]
    add [hl]
    call nz, $8078
    nop
    nop
    ld h, b
    or c
    sbc c
    adc c
    ld [hl], l
    inc de
    dec bc

jr_078_7a11:
    rlca
    inc bc
    inc bc
    rlca
    add a
    inc bc
    nop
    nop
    ld a, h
    add $bb
    ld l, l
    inc bc
    rst $28
    sub l
    add e
    rst $10
    rst $38
    ei
    call Call_078_7dff
    add d
    ld b, d
    ld [bc], a
    dec b
    ld [$0f0b], sp
    rlca
    rra
    daa
    inc hl
    ld c, a
    ld d, b
    jr nz, @+$06

    nop
    adc l
    ld [hl], b
    add sp, -$24
    ld a, $fe
    rst $38
    rst $28
    or $fc
    ldh a, [$d0]

jr_078_7a43:
    ld d, b
    jr nz, jr_078_7a4b

    nop
    inc b
    ld bc, $0097

jr_078_7a4b:
    nop
    ld bc, $0703
    dec bc
    ld [hl], e
    sub l
    sbc b
    ldh [$fc], a
    ld a, h
    inc e
    ld e, $3e
    ld a, [hl]
    ccf
    rrca
    rlca
    rrca
    rrca
    ld e, $08
    ld a, [bc]
    nop
    add e
    add b
    ret nz

    ld hl, sp+$03
    rst $38
    cp h
    db $e3
    ld b, e
    ld bc, $0703
    rrca
    rrca
    ccf
    ld l, a
    ld [hl], a
    rst $30
    cp e
    cp e
    cp l
    ld e, l
    ld a, [hl]
    ld a, $1f
    rlca
    db $fc
    ld a, l
    set 7, a
    rst $38
    ld a, a
    ld [hl], e
    ld h, a
    ld l, a
    ld l, a
    ld h, a
    ld a, l
    ld a, a
    ld a, a
    rst $38
    ccf
    call c, $e73d
    rst $38
    rst $38
    ld a, a
    ld [hl], e
    ld h, a
    ld l, a
    ld l, a
    ld h, a
    ld a, l
    ld a, a
    ld a, a
    rst $38
    ccf
    ld a, a
    ccf
    ccf
    ld h, b
    ld a, a
    ccf
    dec sp
    inc e
    rlca
    rlca
    nop
    add h
    rrca
    ccf
    ld a, a
    ld a, a
    inc bc
    rst $38
    add hl, bc
    nop
    add d
    add e
    rst $20
    dec b
    rst $38
    adc [hl]
    ld d, a
    dec hl
    dec hl
    dec d
    dec d
    ld a, [bc]
    ld a, [bc]
    inc b
    inc bc
    nop
    rlca
    rra
    ccf
    ccf
    ld b, $7f
    add h
    ccf
    ccf
    rra
    rlca
    ld hl, $8600
    inc bc
    ld [bc], a
    rlca
    rra
    ccf
    ccf
    inc bc
    ld a, a
    adc l
    ld [hl], a
    ld a, a
    ccf
    ccf
    ld c, a
    add a
    db $fc
    ret nz

    ld b, b
    ldh [$f8], a
    db $fc
    db $fc
    inc bc
    cp $86
    xor $fe
    db $fc
    ld a, [c]
    pop hl
    rst $38
    ld a, [bc]
    nop
    add a
    ld [$5434], sp
    ld b, e
    sbc c
    cp l
    ld b, d
    dec b
    nop
    sub c
    inc d
    ld a, $3e
    inc a
    inc a
    ld l, [hl]
    ld h, [hl]
    ld a, [hl]
    inc h
    nop
    nop
    inc bc
    ld [bc], a
    rlca
    rra
    ccf
    ccf
    inc bc
    ld a, a
    adc h
    rst $30
    sbc a
    adc a
    add a
    ld b, a
    ld b, a
    jr c, jr_078_7b1e

    rra
    ccf
    ld a, a
    ld a, a
    ld b, $ff
    add l

jr_078_7b1e:
    ld a, a
    ld a, a
    ccf
    rra
    rlca
    ld [de], a
    nop
    adc e
    ld a, $1e
    ld c, $1e
    ld a, a
    rst $38
    ld a, a
    ld e, $0e
    ld e, $3e
    inc bc
    nop
    call c, Call_000_1f07
    ccf
    ld a, a
    pop hl
    ld a, a
    cp a
    sbc [hl]
    ret z

    cp a
    cp a
    ld e, a
    ccf
    ld e, [hl]
    ld a, a
    nop
    ldh a, [$fc]
    adc $f6
    rst $38
    rst $38
    ccf
    ccf
    scf
    db $e3
    or $fe
    inc e
    ld a, [hl]
    cp $00
    inc bc
    rrca
    rra
    ccf
    ld [hl], b
    rst $38
    cp a
    sbc $c8
    cp [hl]
    cp a
    ld e, a
    rst $38
    ld a, a
    jr c, jr_078_7b64

jr_078_7b64:
    ldh [$f8], a
    db $e4
    ld_long a, $fffe
    cp a
    ccf
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
    dec sp
    ld h, a
    ld e, a
    rst $38
    sbc [hl]
    ret z

    rst $38
    cp h
    ld e, a
    ccf
    rra
    ld bc, $f000
    db $fc
    cp $fe
    rst $38
    sbc a
    rra
    dec sp
    pop af
    ei
    ld a, [hl]
    cp h
    inc bc
    ldh a, [$a1]
    nop
    rlca
    rra
    ccf
    ld c, [hl]
    call nc, Call_078_7fce
    rst $38
    rst $38
    cp a
    cp a
    rst $18
    rst $38
    ld a, a
    scf
    nop
    ldh a, [$fc]
    ld a, [hl]
    ccf
    sbc e
    ld sp, $ff7b
    rst $38
    di
    rst $28
    rst $38
    cp $fc
    add b
    nop
    ld b, $1c
    adc d
    ccf
    ld h, [hl]
    ld [hl], $3f
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rlca
    inc de
    nop
    adc a
    db $10
    jr nc, jr_078_7c37

    ld h, c
    ld [hl], a
    ccf
    ld a, a
    rst $28
    db $dd
    add sp, -$18
    pop bc
    rst $00
    ld a, a
    ld a, a
    inc bc
    ccf
    sbc b
    rra
    ld a, [de]
    jr nc, jr_078_7c0a

    ld h, b
    ld h, e
    ld [hl], a
    ld a, a
    ld a, a
    ccf
    ccf
    inc b
    ld a, [bc]
    add hl, bc
    ld [$3008], sp
    ld d, d
    ld d, a
    ld c, a
    ld e, a
    ld e, a
    ccf
    ccf
    inc bc
    rra
    sub b
    ld a, l
    db $fc
    db $f4
    ldh [$e0], a
    ld [hl], e
    ld [hl], a
    ccf
    ccf
    rra
    rra
    dec e
    dec [hl]
    jr nc, jr_078_7c60

    ld h, b
    rlca
    nop
    or b
    ld bc, $0703
    rlca
    rrca
    rra

jr_078_7c0a:
    inc a
    ld a, b
    ld h, b
    nop
    jr nz, @+$59

    inc l
    ccf
    ld d, a
    sbc a
    ld a, a
    dec de
    ccf
    ld a, $3f
    inc de
    add hl, hl
    jr c, jr_078_7c99

    nop
    nop
    ret nz

    ld h, b
    ldh a, [$f0]
    ldh [$f0], a
    cp b
    ld hl, sp-$08
    ldh a, [$c8]
    sub h
    inc e
    ld a, $ff
    cp $fc
    ld a, a
    nop
    rst $38
    db $fc
    inc bc
    cp $86

jr_078_7c37:
    ld sp, hl
    rst $38
    and $c4
    call nz, Call_000_033f
    rst $38
    add h
    ld a, a
    nop
    rst $38
    db $fc
    inc bc
    cp $86
    ld sp, hl
    rst $38
    and $c4
    call nz, Call_000_043f
    nop
    add [hl]
    inc bc
    inc b
    rlca
    rlca
    inc bc
    ld bc, $0007
    adc a
    jr nz, jr_078_7cb2

    inc l
    ccf
    rst $10
    sbc a
    rst $38

jr_078_7c60:
    db $db
    rst $38
    cp $77
    inc hl
    add hl, de
    ld [$080c], sp
    nop
    add c
    ld b, b
    rlca
    nop
    call z, $3f07
    ld l, a
    rst $00
    sub d
    rst $00
    ld l, a
    rst $38
    rst $38
    cp a
    cp a
    ld e, a
    ccf
    rra
    rlca
    nop
    ldh a, [$fc]
    cp $7f
    cp a
    ld a, a
    ei
    pop af
    ei
    rst $28
    or $fe
    db $fc
    ld hl, sp-$80
    nop
    nop
    ld h, b
    pop de
    jp hl


    ld sp, hl
    ld l, l
    rra
    ld c, $04
    ld [bc], a

jr_078_7c99:
    ld b, $07
    rlca
    inc bc
    nop
    nop
    ld a, h
    cp d
    ld a, l
    rst $38
    sub e
    add hl, sp
    sub e
    rst $38
    xor $6c
    ld a, [hl]
    ld a, e
    add hl, sp
    add e
    cp $7e
    inc bc
    ld b, $0f

jr_078_7cb2:
    inc c
    ld [$1c04], sp
    ld a, $3e
    ld a, a

jr_078_7cb9:
    ld [hl], b
    jr nz, @+$06

    nop
    adc l
    sub b
    jr @+$26

    jp nz, $2142

    ld sp, $1c1a
    jr nc, jr_078_7cb9

    ld [hl], b
    jr nz, jr_078_7cd1

    nop
    inc b
    ld bc, $0097

jr_078_7cd1:
    nop
    ld bc, $0402
    dec c
    ld a, a
    db $fd
    ld a, b
    ldh [$83], a
    ld h, e
    inc de
    ld de, $4121
    jr nc, @+$0e

    inc b
    ld [$1609], sp
    ld [$0003], sp
    sub a
    ldh [$80], a
    db $10
    ldh [$c4], a
    adc c
    reti


    ld a, c
    ccf
    rlca
    add b
    add b
    sbc h
    and d
    ld b, d
    ld bc, $0403
    add hl, bc
    inc c
    ccf
    ld a, a
    ld a, a
    inc b
    rst $38
    adc h
    ld a, a
    ld a, a
    ccf
    rra
    rlca
    rst $38
    adc $fc
    ld a, a
    nop
    rst $38
    db $fc
    inc bc
    cp $8d
    ld sp, hl
    rst $38
    and $c4
    call nz, $ff3f
    and $fc
    ld a, a
    nop
    rst $38
    db $fc
    inc bc
    cp $8f
    ld sp, hl
    rst $38
    and $c4
    call nz, Call_078_443f
    ld h, $3f
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rlca
    rlca
    nop
    add h
    rrca
    ccf
    ld a, a
    ld a, a
    inc bc
    rst $38
    add hl, bc
    nop
    add h
    add e
    db $e4
    add hl, sp
    call c, $ff03
    adc [hl]
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    inc bc
    nop
    rlca
    rra
    ccf
    ccf
    ld b, $7f
    add h
    ccf
    ccf
    rra
    rlca
    ld hl, $9f00
    ld [bc], a
    inc bc
    rlca
    rra
    jr c, jr_078_7d93

    ld h, [hl]
    ld l, [hl]
    ld l, [hl]
    ld a, c
    ld a, h
    inc sp
    ld [hl-], a
    ld a, [hl]
    rst $38
    db $fc
    ld b, b
    ret nz

    ldh [$f8], a
    inc e
    inc c
    ld h, [hl]
    db $76
    db $76
    sbc [hl]
    ld a, $cc
    ld e, [hl]
    ld a, a
    rst $38
    ld a, [bc]
    nop
    add a
    ld [$7c3c], sp
    ld a, a
    rst $20
    jp Jump_000_056e


    nop
    sbc e
    inc d
    ld a, [hl+]
    ld a, [hl+]
    inc h
    inc h
    ld d, d
    ld e, d
    ld e, d
    inc h
    nop

jr_078_7d93:
    nop
    ld [bc], a
    inc bc
    rlca
    rra
    jr c, jr_078_7dca

    ld h, [hl]
    ld l, [hl]
    ld l, [hl]
    ld sp, hl
    db $fc
    ei
    cp $7e
    ld a, a
    jr c, jr_078_7dc7

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_078_7dc7:
    nop
    nop
    nop

jr_078_7dca:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_078_7dff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_078_7ee7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_078_7f7f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_078_7fc7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_078_7fce:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_078_7ff8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
