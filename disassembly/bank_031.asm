; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $031", ROMX[$4000], BANK[$31]

    ld sp, $4087
    ld [hl-], a
    ld b, c
    and $41
    and a
    ld b, d
    ld l, l
    ld b, e
    ld c, c
    ld b, h
    jr jr_031_4054

    sbc $45
    xor l
    ld b, [hl]
    sbc b
    ld b, a
    adc c
    ld c, b
    ld e, h
    ld c, c
    dec [hl]
    ld c, d
    jr jr_031_4068

    rst $10
    ld c, e
    xor h
    ld c, h
    sub d
    ld c, l
    ld [hl], h
    ld c, [hl]
    ld b, d
    ld c, a
    ld [de], a
    ld d, b
    rst $20
    ld d, b
    ret


    ld d, c
    ld [c], a
    ld d, d
    sub b
    ld d, e
    ld [hl], c
    ld d, h
    ld c, h
    ld d, l
    inc b
    ld d, [hl]
    ret nz

    ld d, [hl]
    and l
    ld d, a
    sub a
    ld e, b
    ld d, h
    ld e, c
    ccf
    ld e, d
    ld b, $5b
    push af
    ld e, e
    xor $5c
    sub a
    ld e, l
    push de
    ld e, [hl]
    ld d, d
    ld h, b
    sbc l
    ld h, b
    ei
    ld h, b
    ld a, [hl+]
    ld h, d
    add b

jr_031_4054:
    ld h, e
    ld e, $65
    ld [c], a
    ld h, l
    jp nc, $9766

    ld h, a
    ld l, $69
    inc l
    ld l, e
    sub e
    ld l, h
    ld c, $6e
    ld [hl], a
    ld l, a
    cp e

jr_031_4068:
    ld [hl], b
    ld h, [hl]
    ld [hl], d
    ld l, [hl]
    ld [hl], e
    ldh [$74], a
    ld a, l
    db $76
    ld b, l
    ld [hl], a
    ld [bc], a
    ld a, b
    di
    ld a, b
    jr nc, @+$7b

    ld [hl], c
    ld a, c
    rra
    ld a, d
    ld a, $7a
    ld a, d
    ld a, d
    sub h
    ld a, e
    ld c, l
    ld a, h
    sub a
    ld a, h
    nop
    ld bc, $0101
    rst $38
    ld a, [c]
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    dec c
    ld c, $1f
    dec d
    ld bc, $f2ff
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ret c

    jr c, @-$02

    ld d, h
    rla
    add hl, de
    dec c
    ld c, $07

jr_031_40a9:
    rlca
    ld c, $0d
    ld c, $0b
    inc c
    rrca
    rlca
    rlca
    inc bc
    inc bc
    db $f4
    ld c, h
    ret c

    jr c, jr_031_40a9

    ldh a, [$b8]
    ld c, b
    inc e
    db $f4
    ld a, b
    ld hl, sp-$10
    sub b
    ldh [$e0], a
    ld bc, $0600

jr_031_40c7:
    rra
    rra
    rra

jr_031_40ca:
    rra
    ld e, $1b
    ld bc, $f2ff
    ldh [$e0], a
    ld bc, $0116
    jr jr_031_40c7

    ld d, b
    rra
    jr jr_031_40dc

    ld [hl+], a

jr_031_40dc:
    ld [bc], a
    ld e, $13

jr_031_40df:
    rra
    rra
    dec b
    rlca
    rlca
    rlca
    ldh a, [$50]
    ret nc

    jr nc, jr_031_40ca

    ldh [$d0], a
    ld [hl], b
    jr nc, jr_031_40df

    ldh [$e0], a
    ld bc, $003c
    ld bc, $0060
    rrca
    rrca
    dec d
    ld e, $18
    rra
    rrca
    rrca
    rrca
    add hl, bc
    ld bc, $046e
    ldh [$60], a
    ld bc, $003c
    and b
    ldh [$c0], a
    ret nz

    ld bc, $0800
    rrca
    rrca
    rra
    rla
    ld bc, $0810
    ld hl, sp-$08
    db $fc
    db $f4
    rla
    rra
    rrca
    rrca
    ld bc, $0924
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ret c

    jr c, jr_031_413e

    db $fc
    ld bc, $083a
    ld bc, $0fe5
    rlca
    nop
    ld bc, $0101
    rst $38
    ld a, [c]
    dec sp
    ccf
    ld a, a
    ld a, a
    ld c, a
    ld c, a

jr_031_413e:
    dec c
    ld c, $1f
    dec d
    ld bc, $f2ff
    xor $fe
    rst $38
    rst $38
    ld a, c

jr_031_414a:
    ld sp, hl
    ret c

    jr c, jr_031_414a

    ld d, h
    rla
    add hl, de
    dec c
    ld c, $07

jr_031_4154:
    rlca
    dec c
    ld c, $0f
    ld a, [bc]
    rrca
    inc c
    rlca
    rlca
    inc bc
    inc bc
    db $f4
    ld c, h
    ret c

    jr c, jr_031_4154

    ldh a, [rBCPS]
    sbc b
    db $fc
    inc d
    ld a, b
    ld hl, sp-$10
    sub b
    ldh [$e0], a
    ld bc, $0700
    ld e, a

jr_031_4173:
    rra
    rra
    ld e, $1b
    ld bc, $f2ff
    ldh [$e0], a
    ldh a, [$f0]
    ret c

    ld hl, sp-$08
    jr jr_031_4173

    ld d, b
    rra
    jr jr_031_4188

    ld [hl+], a

jr_031_4188:
    nop
    rra
    jr jr_031_41cb

    inc h
    rra
    jr jr_031_41ae

    ld de, $0f0f
    ldh a, [$50]
    ret nc

    jr nc, @-$1e

    ldh [$d0], a
    ld [hl], b
    ldh a, [$30]
    ldh [$60], a
    or b
    ret nc

    ldh [$e0], a
    ld bc, $0060
    rrca
    rrca
    rla
    inc e
    rra
    jr @+$21

    db $10

jr_031_41ae:
    dec a
    inc hl
    rra
    rra
    ld bc, $0270
    ldh [$60], a
    ldh a, [$90]
    ldh [$60], a
    and b
    ldh [$c0], a
    ret nz

    ld bc, $0800
    rrca
    rrca
    rra
    rla
    ld bc, $0610
    ld sp, hl
    ld sp, hl

jr_031_41cb:
    ld hl, sp-$08
    db $fc
    db $f4
    rla
    rra
    rrca
    rrca
    ld bc, $0924
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ld hl, sp+$18
    db $f4
    inc e
    ld bc, $083a
    ld bc, $0fe5
    rlca
    nop
    ld bc, $0001
    nop
    ld c, $0e
    rra
    rra
    ccf
    ccf
    ld a, $3f
    ld a, a
    ld a, h
    ld a, a
    ld d, h
    ld a, a
    ld d, h
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    ld a, h
    db $fc
    ld d, h
    db $fc
    ld d, h
    scf
    jr c, @+$11

jr_031_420c:
    rrca
    inc sp
    ld a, $7b
    ld c, a
    ld a, c
    ld c, a
    ccf
    ccf
    rra
    rra
    ld c, $0e
    ret c

    jr c, jr_031_420c

    ldh a, [$98]
    ld hl, sp-$64
    db $f4
    inc e
    db $f4
    ld hl, sp-$08
    ld d, b
    or b
    ldh [$e0], a
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    ld bc, $0048
    inc e
    rra
    inc e
    nop
    nop
    ld bc, $0014
    db $fc
    db $fc
    db $ec
    db $fc
    db $fc
    xor h
    ld hl, sp-$58
    ld hl, sp+$28
    ld e, $1f
    rrca
    rrca
    jr jr_031_426c

    dec a
    daa
    ld a, $27
    rra
    rra
    ld de, $0f1f
    rrca
    add sp, $18
    ldh a, [$f0]
    jr @-$06

    inc e
    db $fc
    inc c
    db $fc
    ld hl, sp-$08
    or h
    call z, $fcfc
    ld bc, $0060
    inc c
    rrca

jr_031_426c:
    jr jr_031_428d

    jr jr_031_428f

    rrca
    rrca
    ld bc, $066c
    cp h
    db $e4
    ld a, h
    db $e4
    ld bc, $027a
    ld bc, $0400
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld bc, $0710
    db $fc
    db $fc
    db $f4

jr_031_428d:
    db $fc
    db $f4

jr_031_428f:
    ccf
    ccf
    rrca
    rrca
    jr nc, jr_031_42d4

    ld [hl], b
    ld e, a
    ld a, b
    ld bc, $0329
    ld hl, sp-$08
    ld bc, $0172
    ld bc, $0737
    ld bc, $0fe1
    dec bc
    nop
    ld bc, $0001
    nop
    ld c, $0e
    rra
    rra
    ccf
    ccf
    ccf
    ld a, $7f
    ld a, h
    ld a, a
    ld [hl], h
    ld a, a
    ld d, h
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    ld a, h
    db $fc
    ld e, h
    db $fc
    ld d, h
    ld [hl], a
    ld a, b
    ld a, a
    ld a, a
    ld [hl], e
    ld a, [hl]
    ld a, c
    ld c, a
    ld [hl], b
    ld a, a

jr_031_42d4:
    ld h, b
    ld e, a
    ccf
    ld hl, $1f1f
    call c, $fc3c
    db $fc
    sbc h
    db $fc
    inc e
    db $f4
    inc e
    db $fc
    db $ec
    db $fc
    ld e, b
    cp b
    ldh a, [$f0]
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    ld bc, HeaderROMSize
    ccf
    inc a
    nop
    nop
    ld bc, $0014
    db $fc
    db $fc
    db $fc
    db $ec
    db $fc
    xor h
    ld hl, sp+$28
    ld hl, sp+$28
    ld a, $3f
    ccf
    ccf
    jr c, @+$41

    dec a
    daa
    ld a, $2f
    db $10
    rra
    ccf
    jr nz, jr_031_4355

    ccf
    add sp, $18
    ldh a, [$f0]
    jr c, @-$06

    inc d
    db $fc
    inc c
    db $fc
    ld a, b
    cp b
    call nc, $fc6c
    db $fc
    ld bc, $0260
    jr nc, @+$41

    ld [hl], b
    ld a, a
    ld h, b
    ld a, a
    ld e, a

jr_031_4331:
    ld h, b
    ld a, a
    ld a, a
    ld bc, $0070
    jr jr_031_4331

    cp h
    db $e4
    ld a, h
    db $f4
    ld hl, sp+$38
    ret c

    add sp, -$08
    ld hl, sp+$01
    nop
    dec b
    ccf
    ld a, a
    ld bc, $01aa
    ld bc, $0710
    ld bc, $01ba
    ld bc, $02aa
    ld a, a

jr_031_4355:
    ld a, a
    ld e, a
    ld a, a
    ld l, a
    ld bc, $012b
    db $fc
    db $fc
    cp $01
    jp nc, $f401

    db $fc
    db $ec
    db $f4
    ld bc, $023c
    ld bc, $0fe1
    dec bc
    nop
    ld bc, $0701
    rlca
    inc c
    rrca
    rra
    rra
    rra
    rra
    ccf
    ld a, $3f
    inc a
    ld a, a
    ld d, h
    ld a, a
    ld d, h
    ret nz

    ret nz

    ld h, b
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$08
    ld a, b
    db $fc
    ld d, h
    db $fc
    ld d, h
    scf
    jr c, jr_031_43b2

    rra
    ld [hl], a
    ld a, e
    rst $30
    sbc b
    ldh a, [$9f]
    ld h, b
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    call c, $f83c
    ld hl, sp-$2c
    cp h
    adc $3a
    ld c, $fe
    ld a, [hl-]
    cp $d6
    xor $fc
    db $fc
    ld e, $1e

jr_031_43b2:
    dec sp
    ccf
    scf
    ccf
    cpl
    ccf
    ccf
    ccf
    rra
    rra
    rra
    add hl, de
    rra
    jr jr_031_43c1

jr_031_43c1:
    nop
    ld bc, $0016
    db $fc
    db $fc

Call_031_43c7:
    db $fc
    db $ec
    ld hl, sp-$18
    ld hl, sp-$58
    ld hl, sp+$28
    ld c, $0f
    rlca
    rlca
    jr @+$21

    inc a
    daa
    ccf
    daa
    jr @+$21

    jr nz, jr_031_441c

    ccf
    ccf
    add sp, $18
    ldh a, [$f0]

jr_031_43e3:
    ld a, b
    cp b
    ld [hl], h
    sbc h
    inc c
    db $fc
    jr c, jr_031_43e3

    call nc, $fcec
    db $fc
    ld c, $0f
    rrca
    rrca
    jr jr_031_4414

    jr nc, jr_031_4436

    jr nc, jr_031_4438

    jr nz, jr_031_443a

    ld b, c

jr_031_43fc:
    ld a, a
    ld a, a
    ld a, a
    ld bc, $0070

jr_031_4402:
    jr jr_031_43fc

    inc a
    db $e4
    db $fc
    db $e4
    jr c, jr_031_4402

    ret c

    add sp, -$08
    ld hl, sp+$01
    nop
    nop
    dec de
    rra
    dec de

jr_031_4414:
    rra
    dec sp
    ccf
    inc a
    ccf
    ld a, a
    ld e, a
    ld a, a

jr_031_441c:
    ld e, a
    ld bc, $0010
    or b
    ldh a, [$b0]
    ldh a, [$b8]
    ld hl, sp+$78
    ld hl, sp-$04
    db $f4
    db $fc
    db $f4
    ld bc, $0048
    ld h, a
    ld a, b
    ldh a, [$9f]
    ld bc, $0028

jr_031_4436:
    ld b, b
    ld a, a

jr_031_4438:
    ccf
    ccf

jr_031_443a:
    db $fc
    db $fc
    ld hl, sp-$08
    call nz, Call_000_0e3c
    ld a, [$3801]
    inc b
    ld bc, $ffa0
    dec c
    nop
    ld bc, $0001
    nop
    rrca
    rrca
    rra
    rra
    ccf
    dec sp
    ccf
    jr nc, jr_031_44d6

    ld [hl], h
    ld a, a
    ld d, h
    ld a, a
    ld d, c
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$48
    ld hl, sp+$18
    db $fc
    ld e, h
    db $fc
    ld d, h
    db $fc
    inc d
    scf
    dec sp
    rra
    rra
    inc sp
    ld a, $7b
    ld c, a
    ld a, d
    ld c, a
    ccf
    ccf
    rra
    rra
    ld c, $0e
    ret c

    cp b
    ldh a, [$f0]
    ret nc

    ld [hl], b
    ret c

    ld hl, sp+$5c
    db $f4
    ld hl, sp-$08
    ld d, b
    or b
    ldh [$e0], a
    nop
    nop
    rlca
    rlca
    ld bc, $0002
    ld bc, HeaderSGBFlag
    add hl, de
    rra
    jr jr_031_449b

    db $10

jr_031_449b:
    ld [bc], a
    ldh a, [$b0]
    ld hl, sp+$08
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$18
    dec e
    ld e, $0f
    rrca
    jr jr_031_44cb

    dec a
    daa
    ld a, $27
    rra
    rra
    add hl, bc
    rrca
    rlca
    rlca
    ld hl, sp+$38
    ldh a, [$f0]
    ld a, h
    call c, $fc74
    ld d, h
    db $fc
    ld hl, sp-$08
    xor b
    ret c

    ld hl, sp-$08
    ld e, $1f
    rrca
    rrca
    inc c

jr_031_44cb:
    rrca
    jr jr_031_44ed

    jr jr_031_44ef

    rrca
    rrca
    dec d

jr_031_44d3:
    dec de
    rrca
    rrca

jr_031_44d6:
    ld bc, $0070
    jr jr_031_44d3

    cp h
    db $e4
    ld a, h
    db $e4
    ld hl, sp-$08
    sub b
    ldh a, [$f0]
    ldh a, [rSB]
    nop
    inc bc
    ccf
    ccf
    ccf
    ld a, a
    ld a, a

jr_031_44ed:
    ld a, a
    ld e, a

jr_031_44ef:
    ld a, a
    ld e, a
    ld bc, $0310
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    db $fc
    db $f4
    db $fc
    db $f4
    ld bc, $002a
    jr nc, jr_031_4541

    ld [hl], b
    ld e, a
    ld a, b
    ld bc, $0329
    ld hl, sp-$08
    ldh a, [$f0]
    db $10
    ldh a, [rNR23]
    ld hl, sp+$1c
    ld bc, $0539
    ld bc, $0fe1
    dec bc
    nop
    ld bc, $0001
    nop
    rlca
    rlca
    dec bc
    rrca
    rla
    inc e
    rla
    rra
    ccf
    inc a
    ld a, a
    ld d, h
    ld a, a
    ld d, e
    nop
    nop
    ret nz

    ret nz

    and b
    ldh [$d0], a
    ld [hl], b
    ret nc

    ldh a, [$f8]
    ld a, b
    db $fc
    ld d, h
    db $fc
    sub h
    ld a, a
    ld [hl], h
    adc a
    rst $38
    add sp, -$09

jr_031_4541:
    ld hl, sp-$69
    rst $38
    sub b
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    db $fc
    ld e, h
    ld [$2afe], a
    sbc $26
    sbc $e4
    inc e
    db $fc
    db $fc
    ld l, b
    sbc b
    ldh a, [$f0]
    ld bc, $0000
    ld [$100f], sp
    rra
    db $10
    rra
    rra
    rra
    rra
    inc e
    rra
    inc e
    nop
    nop
    ldh [$e0], a
    jr nc, @-$0e

    ld a, b
    ret z

    ld a, b
    ld hl, sp-$08
    add sp, -$08
    xor b
    ld hl, sp+$18
    ld e, $1f
    rrca
    rrca
    jr nc, jr_031_45bf

    ld a, c
    ld c, a
    ld a, [hl]
    ld c, a
    ccf
    ccf
    ld hl, $3f3f
    ccf
    ld hl, sp+$28
    ld hl, sp-$08
    ld b, [hl]
    cp [hl]
    inc hl
    rst $18
    ccf
    jp $fefe


    db $dd
    db $e3
    rst $38
    rst $38
    ld bc, $0060
    ld [hl-], a
    dec a
    ld h, h
    ld a, e
    ld a, h
    ld h, e
    ccf
    ccf
    ld e, l

jr_031_45a6:
    ld h, e
    ld a, a
    ld a, a
    ld bc, $0070
    ld b, $fe
    ld c, a
    ld sp, hl
    ccf
    ld sp, hl
    cp $fe
    jp nz, $fefe

    cp $01
    ld b, b
    ld b, $3c
    ccf
    ld a, a
    ld e, a

jr_031_45bf:
    ld a, a
    ld e, a
    ld bc, $0010
    jr nz, jr_031_45a6

    db $10
    ldh a, [rNR10]
    ldh a, [$78]
    ld hl, sp-$04
    db $f4
    db $fc
    db $f4
    ld a, a
    ld a, a
    ld bc, $0b22
    db $fc
    ld [c], a
    ld bc, $0b33
    ld bc, $0fe1
    dec bc
    nop
    ld bc, $0701
    rlca
    rrca
    inc c
    rrca
    dec bc
    rrca
    inc c
    rra
    db $10
    ccf
    ld hl, $233f
    ld a, a
    ld a, h
    ret nz

    ret nz

    ldh [$60], a
    ldh [$a0], a
    ldh [$60], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp-$78
    db $fc
    ld a, h
    ld a, a
    ld d, h
    scf
    jr c, jr_031_4635

    ccf
    ld h, c
    ld a, a
    ld a, a
    ld e, a
    ld [hl], b
    ld a, a
    ld hl, $3f3f
    ccf
    db $fc
    ld d, h
    ret c

    jr c, @-$16

    ld hl, sp+$08
    ld hl, sp-$08
    ld hl, sp-$18
    ld hl, sp+$58
    cp b
    ld hl, sp-$08
    rra
    rra
    ccf
    ld sp, $203f
    ccf
    ld hl, $323f
    rra
    inc e
    rlca
    inc b
    rlca
    inc b
    nop
    nop
    add b
    add b

jr_031_4635:
    ldh a, [$f0]
    db $fc
    adc h
    cp $02
    rst $38
    dec b
    rst $38
    dec c
    cp $da
    rlca
    inc b
    rlca
    ld b, $09
    rrca
    db $10
    rra
    ccf
    ccf
    ld hl, $403f
    ld a, a
    ld a, a
    ld a, a
    cp $aa
    ld a, [$fc86]
    db $fc
    ld bc, $0036
    ld hl, sp+$38
    call c, $fce4
    db $fc
    ld bc, $0660
    ld b, b
    ld a, a
    add b

jr_031_4666:
    rst $38
    rst $38
    rst $38

jr_031_4669:
    ld bc, $0270
    jr jr_031_4666

    db $fc
    db $e4
    inc a
    db $fc
    ld l, b
    ld hl, sp-$08
    ld hl, sp+$01
    nop
    ld bc, $0f08

jr_031_467b:
    ld [$1c1f], sp
    ccf
    daa
    ccf
    jr nz, jr_031_4702

    ld h, b
    ld bc, $0110
    jr nz, jr_031_4669

    jr nz, jr_031_467b

    ld [hl], b
    ld hl, sp-$38
    ld hl, sp+$08
    db $fc
    inc c
    ld a, a
    ld d, a
    jr c, jr_031_46d5

    jr nz, jr_031_46d7

    ld h, b
    ld bc, $0627
    call nc, $f838
    ld [$3501], sp
    ld bc, $f808
    add sp, -$08
    ld hl, sp-$08
    ld bc, $ffa0
    dec c
    nop
    ld bc, $0909
    rst $38
    ldh a, [$03]
    inc bc
    ld c, $0d
    inc d
    dec de
    inc d
    dec de
    daa
    ccf
    cpl
    inc a
    add hl, bc
    rst $38
    ldh a, [$f0]
    ldh a, [rOBP0]
    cp b
    sub h
    ld a, h
    adc d
    ld a, [hl]
    adc [hl]
    cp $e4
    ld a, h
    ld a, a
    ld [hl], h
    ld d, a
    ld a, e
    ld a, a
    ld a, h
    rst $30

jr_031_46d5:
    sbc h
    db $e3

jr_031_46d7:
    cp $b1
    rst $38
    and b
    rst $38
    ld a, a
    ld a, a
    db $f4
    ld e, h
    jp nc, $e2be

    ld a, [hl]
    jp z, $867e

    cp $06
    cp $f1
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    or a
    ei
    rst $38
    db $fc
    rst $30
    sbc h
    ld [hl], e
    ld a, [hl]
    ld d, c
    ld a, a
    ld e, [hl]
    ld a, a
    ccf
    ccf
    add hl, bc
    jr nc, jr_031_4707

    ld [bc], a

jr_031_4702:
    cp $01
    rst $38
    rst $38
    rst $38

jr_031_4707:
    add hl, bc
    nop
    ld [bc], a
    rrca
    inc c
    db $10
    rra
    inc h
    ccf
    jr c, jr_031_4751

    ld [$090f], sp
    db $10
    ld [bc], a
    db $ec
    inc e
    ld [de], a
    xor $0a
    or $0e
    cp $3c
    db $f4
    ld [$0c0f], sp
    rrca
    add hl, bc
    ld l, b
    nop
    ld a, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $10
    ld e, l
    rst $28
    ccf
    di
    rra
    di
    ld e, $fa
    db $76
    cp $bc
    call z, $f8f8
    ld a, [hl]
    sub $5e
    xor $3e
    ld a, [c]
    rra
    di
    rra
    ei
    dec d
    rst $30
    ld l, l
    rst $38
    ld a, [$09fa]

jr_031_4751:
    rst $38
    ldh a, [rIF]
    rrca
    dec de

jr_031_4756:
    inc d
    dec [hl]
    dec hl
    ld b, [hl]
    ld a, a
    ld a, b
    ld a, a
    jr nz, jr_031_479e

    add hl, bc
    rst $38
    ldh a, [$c0]
    ret nz

    jr nc, jr_031_4756

    adc b
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    jr nz, jr_031_47af

    ld b, b
    ld a, a
    ld e, a
    ld a, a
    ld c, b
    ld a, a
    add hl, bc
    adc b
    inc b
    ld b, $fe
    ld b, $fe
    rlca
    rst $38
    rlca
    db $fd
    rlca
    rst $38
    dec b
    rst $38
    ld [hl], l
    rst $38
    cp $fe
    add hl, bc
    add sp, $00
    rlca
    rst $38
    rrca
    ld sp, hl
    ld c, $fe
    ld a, [bc]
    cp $0a
    cp $fc
    db $fc
    nop
    ld bc, $1500
    dec d
    ld a, a

jr_031_479e:
    ld a, a
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld [hl], l
    rst $38
    xor b
    rst $38
    xor b
    ld a, a

jr_031_47aa:
    ld [hl], a
    nop
    ld [bc], a
    nop
    ld [hl], a

jr_031_47af:
    ld a, l
    ld a, [c]
    sbc a
    ldh a, [$9f]
    ld a, a
    ld a, a
    ld e, $1f
    rrca
    rrca
    ldh a, [$f0]
    ldh [$e0], a
    ld [hl], b
    ret nc

    jr c, jr_031_47aa

    ld a, $fe
    ei
    db $fd
    xor c

Call_031_47c7:
    ld l, a
    and $e6
    nop
    db $10
    ld bc, $e25d
    cp a
    ldh [rIE], a
    ccf
    ccf
    dec hl
    scf
    ccf
    ccf
    nop
    jr nz, @+$03

    ldh a, [$78]
    ret z

    ld a, b
    ret z

    db $fc
    db $f4
    db $e4
    db $fc
    sbc b
    sbc b
    ld bc, $0101
    ld bc, $0303
    rlca
    rlca
    nop
    ld d, h
    ld [bc], a
    inc bc
    inc bc
    ld d, h
    ld d, h
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    ei
    rst $30
    rst $38
    db $eb
    cp $2a
    cp $36
    nop
    ld d, d
    nop
    ld b, $07
    rrca
    add hl, bc
    rrca
    dec bc
    ld b, $05
    inc b
    rlca
    inc bc
    inc bc
    cp $fe
    db $fc
    db $fc
    ld c, $fa
    ld b, a
    rst $38
    add e
    rst $38
    cp $fe
    db $ed
    di
    rst $38
    rst $38
    nop
    ld d, d
    nop
    nop
    ld [hl], d
    nop
    ld h, [hl]
    ld h, a
    db $d3
    or e
    sbc l
    cp $6f
    ld l, a
    nop
    add b
    nop
    ld b, $fe
    cpl
    ld sp, hl
    rra
    ld sp, hl
    cp $fe
    or c
    ld a, a
    rst $38
    rst $38
    xor b
    xor b
    nop
    add b
    nop
    cp $fe
    cp $fe
    rst $38
    db $fd
    rst $38
    db $fd
    cp $fe
    rrca
    rrca
    inc bc
    inc bc
    inc c
    rrca
    inc e
    rla
    ld a, [hl]
    ld [hl], e
    cp a
    rst $18
    sub e
    di
    ld h, c
    ld h, c
    nop
    and b
    ld [bc], a
    rlca
    db $fd
    rlca
    db $fd
    cp $fe
    call nc, $fcec
    db $fc
    rrca
    rrca
    rlca
    rlca
    nop
    call nz, Call_031_7c00
    ld [hl], a
    cp a
    rst $18
    sub l
    or $67
    ld h, a
    cp $fe
    ld hl, sp-$08
    nop
    call nc, Call_000_0f00
    ld sp, hl
    cp $fe
    ld a, b
    ld hl, sp-$10
    ldh a, [rP1]
    ld bc, $6001
    ld h, b
    ld [hl], a
    ld d, a
    ld a, b
    ld c, a
    ld [hl], b
    ld e, a
    jr nc, @+$41

    jr nz, jr_031_48d7

    inc l
    ccf
    ld h, b
    ld a, a
    inc c
    inc c

jr_031_489e:
    call c, $3cd4
    db $e4
    inc e
    db $f4
    jr jr_031_489e

    ld [$68f8], sp
    ld hl, sp+$08
    ld hl, sp-$10
    sbc a
    rst $38
    cp a
    rst $38
    adc b
    ld a, [hl]
    ld c, c
    jr c, jr_031_48f5

    ccf
    ccf
    rra
    rra
    rrca
    rrca
    inc e
    db $f4
    cp $f2
    cp $0a
    cp $0a
    ld [hl], h
    db $ec
    sbc b
    ld hl, sp+$68
    sbc b
    ldh a, [$f0]
    jr c, jr_031_4906

    ccf
    daa
    ld e, $13
    rra
    ld de, $0f0e
    db $10

jr_031_48d7:
    rra
    db $10
    rra
    ld e, $1f
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc [hl]
    db $fc
    inc b
    db $fc
    rra
    ld de, $0901
    ld bc, $1f22
    ld [de], a
    rra

jr_031_48f5:
    rra
    ld de, $0f1f
    rrca
    ld [$f0f8], sp
    ldh a, [$f8]

Call_031_48ff:
    ld [$8c7c], sp
    sub h
    ld a, h
    ld hl, sp-$08

jr_031_4906:
    or h
    call z, $fcfc
    ld bc, $0a40
    inc de
    ld bc, $0b4f
    add h
    db $fc
    rra
    inc e
    cpl
    jr c, jr_031_4957

    jr nc, jr_031_4939

    ld de, $111e
    rra
    rra
    ld d, $19
    rrca
    rrca
    ret z

    ld a, b
    ld hl, sp+$38
    db $fc
    inc h
    db $fc
    inc b
    db $fc
    db $fc
    ld hl, sp-$08
    call nz, $fcfc
    db $fc
    ld bc, $0600
    ld hl, $233f

jr_031_4939:
    ccf
    ld h, c
    ld bc, $090f
    adc b
    ld hl, sp+$08
    ld hl, sp-$0d
    sbc a
    ld sp, hl
    sbc a
    rst $38
    or a
    db $fd
    sub d
    ld a, a
    ld [hl], b
    ld bc, $022a
    sbc h
    db $f4
    ld a, $f2
    cp $ca
    ld a, h
    adc h

jr_031_4957:
    db $f4
    ld l, h
    ld bc, $023a
    nop
    ld bc, $0001
    nop
    rst $00
    rst $00
    ld a, [$fcbf]
    sbc a
    pop af
    sbc $7c
    ld a, a
    ld a, a
    ld d, a
    ld a, a
    ld [hl], h
    nop
    nop
    add $c6
    cp [hl]
    ld a, [$f27e]
    ld e, $f6
    ld a, h
    db $fc
    db $fc
    call nc, Call_031_5cfc
    sub a
    ld hl, sp-$71
    rst $38
    ld sp, hl
    cp $f3
    sbc a
    rst $38
    cp h
    ld h, b
    ld a, a
    dec a
    ccf
    rra
    rra
    call nc, $e23c
    cp $3e
    cp $8e
    ld a, [$7cfc]
    ld hl, sp-$08
    ld l, b
    sbc b
    ldh a, [$f0]
    jr c, @+$3a

    ccf
    daa
    ld e, $13
    rra
    ld de, $090f
    ld e, $13
    ld e, $17
    ld e, $1f
    nop
    nop
    ldh a, [$f0]
    xor b
    ld hl, sp-$3c
    db $fc
    inc c
    db $f4
    db $e4
    db $fc
    db $fc
    cp h
    ld hl, sp-$58
    ld de, $201f
    ccf
    ccf
    ccf
    ld a, [hl-]
    daa
    rra
    inc de
    rra
    rra
    ld de, $0f1f
    rrca
    ld a, h
    adc h
    ld a, [$0cfe]
    db $f4
    ld a, $fe
    ld a, [$fcce]
    db $fc
    or h
    call z, $fcfc
    inc l
    ccf
    ld c, b
    ld a, a
    ccf
    ccf
    ld sp, $3c3f
    ccf
    rra
    rra

jr_031_49eb:
    ld d, $19
    rra
    rra
    ld a, b
    ret z

    jr c, jr_031_49eb

    db $fc
    db $e4
    ld a, h
    add h
    db $fc
    db $fc
    ld hl, sp-$08
    call nz, $f8fc
    ld hl, sp+$01
    nop
    ld [bc], a
    or $9f
    ld a, [$72df]
    ld a, a
    ld [hl], d
    ld e, a
    ld [hl], d
    ld a, a
    ld bc, $0210
    sbc $f2
    cp [hl]
    or $9c
    db $fc
    sbc h
    db $f4
    sbc h
    db $fc
    sub d
    rst $38
    adc [hl]
    rst $38
    ld sp, hl
    rst $38
    di
    cp a
    db $fc
    sbc a
    ld h, e
    ld bc, $012b
    sub h
    db $fc
    ld bc, $0232
    ld a, h
    db $fc
    ld bc, $023a
    ld bc, $ffa0
    dec c
    nop
    ld bc, $6701
    ld h, a
    ld a, a
    ld a, a
    ld a, h
    ld a, a
    xor a
    cp h
    db $e3
    db $fd
    rst $08
    rst $38
    ld a, a
    ld [hl], h
    ld a, a
    ld h, h
    call z, $fccc
    db $fc
    ld a, h
    db $fc
    ld [$8e7a], a
    ld a, [hl]
    and $fe
    db $fc
    ld e, h
    db $fc
    ld c, h
    scf
    jr c, jr_031_4aaa

    ld a, a
    ld a, e
    ld a, a
    dec a
    ld h, $3b
    ccf
    rra
    inc e
    rla
    inc e
    rra
    rra
    ret c

    jr c, @-$1a

    db $fc
    and h
    db $fc
    ld e, $fa
    or [hl]
    or $f0
    ld d, b
    xor b
    ret c

    ld hl, sp-$08
    dec de
    dec de
    rra
    rra
    rra
    rra
    ld l, $2f
    ld a, $3f
    jr c, jr_031_4ac3

    jr jr_031_4aa5

    dec c
    rrca
    ldh [$e0], a
    ld hl, sp-$08
    db $e4
    db $fc
    call c, $1ce4
    db $ec
    ld a, h
    db $fc
    ld hl, sp-$58
    ld hl, sp+$28
    rrca
    rrca
    ld [$180f], sp
    rra
    ccf
    daa
    jr c, jr_031_4ad1

    rra
    rra
    inc de

jr_031_4aa5:
    ld e, $0f
    rrca
    add sp, $18

jr_031_4aaa:
    db $fc
    db $fc
    call z, Call_000_0cfc
    db $f4
    ret z

    ld hl, sp-$04
    db $fc
    call nc, $fc6c
    db $fc
    rra
    rra
    add hl, hl
    ccf
    add hl, sp
    ccf
    rla
    rra
    dec c
    rrca
    rra

jr_031_4ac3:
    ld e, $15
    dec de
    rrca
    rrca
    add sp, -$08
    db $10
    ldh a, [rNR23]
    ld hl, sp-$04
    db $e4
    db $fc

jr_031_4ad1:
    db $f4
    db $fc
    inc a
    db $e4
    inc a
    db $fc
    db $fc
    ld bc, $0000
    ld a, a
    ld a, a
    cp a
    cp a
    rst $18
    rst $38
    rst $08
    rst $38
    ld c, a
    ld a, a
    ld a, a
    ld a, a
    ld bc, $0010
    db $fc
    db $fc
    ld a, [$f6fa]
    cp $e6
    cp $e4
    db $fc
    db $fc
    db $fc
    ccf
    ccf
    ld c, a
    ld a, a
    ld c, c
    ld a, a
    ld a, e
    ld a, a
    ld a, a
    ld e, h
    ld a, a
    ld c, h
    scf
    inc a
    rra
    rra
    ld bc, $0052
    inc a
    db $fc
    adc [hl]
    ld a, [$76f6]
    ldh a, [rSVBK]
    ld bc, $003c
    ld bc, $ffa0
    dec c
    nop
    ld bc, $1903
    add hl, de
    rra
    ld d, $15
    ld a, [de]
    rra
    rra
    ccf
    ld h, $3f
    jr z, jr_031_4ba7

    ld l, d
    ld [hl], a
    ld e, e
    ld e, e
    ld a, [hl]
    daa
    ccf
    ld e, d
    ld a, a
    ld d, [hl]
    ld a, l
    ld l, [hl]
    ld [hl], l
    sbc a
    rst $38
    or e
    rst $38
    rst $38
    rst $38
    jp c, $ec7e

    db $fc
    ld b, d
    cp $f2
    ld e, [hl]
    cp [hl]
    ld a, [hl]
    jp z, $b5fe

    rst $08
    rst $38
    rst $38
    ld b, $06
    rlca
    dec b
    dec b
    ld b, $07
    rlca
    rrca
    inc c
    rrca
    ld [$101f], sp
    rra
    db $10
    ld h, [hl]
    ld h, [hl]
    cp $9a
    ld l, d
    sub [hl]
    cp $fe
    rst $38
    dec c
    cp $12
    rst $38
    ld hl, $e9ff
    rra
    ld de, $0f0f
    db $10
    rra
    jr jr_031_4b92

    daa
    ccf
    ld b, b
    ld a, a
    add b
    rst $38
    rst $38
    rst $38
    rst $28
    rra
    cp $92
    ld a, h
    db $fc
    inc e
    db $f4
    or $fa
    ld a, $fe
    rst $20
    ei
    rst $38
    rst $38
    inc bc
    ld d, b
    ld [bc], a
    db $10
    rra
    cpl
    ccf

jr_031_4b92:
    inc hl
    ld a, $41
    ld a, a
    inc bc
    ld e, [hl]
    nop
    ld a, [hl]
    sub d
    db $fc
    db $fc
    ld [$f4f8], sp
    db $fc
    sbc $7e
    db $eb
    db $fd
    rst $38
    rst $38

jr_031_4ba7:
    inc bc
    nop
    ld [bc], a
    dec e
    ld a, [de]
    ccf
    daa
    ccf
    jr nz, jr_031_4c30

    ld h, b
    ld a, a
    ld d, b
    ld e, e
    ld a, h
    scf
    ccf
    ld b, b
    ld a, a
    ld [hl], b
    ld a, a
    ld a, a
    ld e, a
    ldh [rIE], a
    inc bc
    ld e, h
    nop
    jp c, $ec3e

    db $fc
    ld [bc], a
    cp $02
    cp $fe
    cp $02
    cp $01
    rst $38
    rst $38
    rst $38
    inc bc
    and b
    rst $38
    dec l
    nop
    ld bc, $1901
    add hl, de
    rra
    ld d, $17
    ld a, [de]
    rra
    rra
    ccf
    ld h, $3f
    ld a, [hl+]
    ld a, a
    ld c, d
    ld [hl], a
    ld e, b
    ld a, e
    ld e, a
    ld a, a
    ld e, h
    ld a, e
    ld e, l
    db $76
    ld e, a
    ld l, a
    ld [hl], a
    ld e, h
    ld l, a
    cp b
    rst $18
    rst $38
    rst $38
    sbc $3a
    cp $f2
    ld l, [hl]
    jp c, $da6e

    or $ee
    ld a, d
    or $ad
    db $db
    rst $38
    rst $38
    ld a, a
    ld e, [hl]
    ld a, a
    ld e, c
    db $76
    ld e, e
    ld a, [hl]
    ld e, a
    ld l, a
    ld [hl], a
    ld e, [hl]
    ld l, a
    or l
    db $db
    ld bc, $081e
    ld a, [hl-]
    or $1d
    ei
    rst $38
    rst $38
    ld b, $06
    rlca
    dec b
    rlca
    dec b
    rlca
    rlca
    rlca
    inc b
    rrca
    ld [$080f], sp
    rra

jr_031_4c30:
    db $10
    ld h, [hl]
    ld h, [hl]
    cp $9a
    sbc [hl]
    ld l, d
    cp $fe
    rst $38
    dec e
    rst $38
    dec hl
    rst $38
    ld l, e
    cp a
    jp Jump_000_101f


    rra
    ld de, $131e
    ld a, $23
    inc a
    daa
    ld a, b
    ld c, a
    pop af
    cp [hl]
    rst $38
    rst $38
    rst $18
    push hl
    ei
    db $fd
    ld l, [hl]
    cp [hl]
    ld h, h
    cp h
    db $fc
    ld a, h
    call c, $a67c
    ld a, [$fefe]
    rra
    ld de, $213f
    ld bc, $0276
    ld [hl], c
    ld e, [hl]
    db $e3
    cp l
    rst $38
    rst $38
    jp c, $ffe6

    db $fd
    ld l, e
    cp l
    and $7e
    db $fc
    ld a, h
    adc h
    db $fc
    ld [de], a
    cp $fe
    cp $01
    nop
    inc bc
    ld a, [de]
    ccf
    daa
    ccf
    jr nz, jr_031_4d06

    ld b, b
    ld bc, $00bc
    ld [hl], a
    ld c, b
    ld [hl], a
    ld c, b
    ld [hl], l
    ld c, d
    ld [hl], l
    ld c, d
    ld [hl], l
    ld l, d
    sbc l
    cp $ff
    rst $38
    ld bc, $00c0
    rst $30
    adc b
    push af
    adc d
    db $ed
    sub d
    db $db
    db $e4
    cp e
    db $fc
    rst $38
    rst $38
    ld bc, $ffa0
    dec c
    nop
    ld bc, $1f09
    rra
    ld [hl+], a
    ccf
    ld a, c
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    pop de
    rst $38
    sub c
    jr nz, jr_031_4ce1

    ret nc

    ldh a, [$b0]
    ret nc

    ld [hl], b
    sub b
    jr nz, @-$1e

    ldh [$e0], a
    ld hl, sp+$78
    db $fc
    add h
    rst $18
    ldh [$7f], a
    ld a, a
    ld c, a
    ld a, e
    ld c, l
    ld a, a
    ccf
    ld sp, $3f27
    ld a, [de]
    dec e
    rrca
    rrca
    db $f4
    db $fc

jr_031_4ce1:
    db $fc
    ld e, h
    db $fc
    ld d, h
    db $ec
    db $fc
    ld hl, sp+$08
    ldh a, [$f0]
    ret nz

    ret nz

    add b
    add b
    add hl, bc
    jr nz, jr_031_4cf2

jr_031_4cf2:
    ld h, a
    ld a, a
    daa
    dec a
    ccf
    dec sp
    cpl
    ccf
    dec d
    dec de
    rrca
    rrca
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    ld b, $05
    rlca
    inc b

jr_031_4d06:
    ld b, $07
    add hl, bc
    ld e, c
    ld [bc], a
    ld hl, sp-$08
    inc d
    db $fc
    add $fe
    ld l, [hl]
    cp $7f
    rst $38
    rst $38
    ei
    cp $fa
    cp $0a
    dec bc
    rrca
    ld c, $0f
    dec de
    dec de
    ld [de], a
    inc de
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld a, d
    or $fc
    call c, Call_031_56fe
    cp d
    cp $fe
    adc [hl]
    cp $fe
    cpl
    pop af
    cp $fe
    add hl, bc
    add b
    nop
    ld a, [$ba5e]
    or $fe
    adc [hl]
    db $fc
    db $fc
    ld a, [c]
    ld e, $fc
    db $fc
    inc b
    inc b
    dec bc
    rrca
    ld c, $0b
    rrca
    dec bc
    add hl, bc
    ld e, c
    nop
    rra
    rra
    ccf
    dec h
    add hl, bc
    ld h, b
    nop
    ld b, $fe
    add [hl]
    cp $cf
    rst $38
    add hl, bc
    cp c
    ld bc, $3ffd
    cpl
    ld a, $3f
    jr c, jr_031_4d9b

    jr c, @+$41

    rra
    ld d, $0e
    rrca
    inc bc
    inc bc
    ld bc, $df01
    rst $38
    ld a, [$72fe]
    cp $22
    cp $fc
    inc b
    db $e4
    db $fc
    ld e, b
    cp b
    ldh a, [$f0]
    add hl, bc
    ret nc

    ld b, $7c
    db $fc
    xor b
    ret c

    ldh a, [$f0]
    add hl, bc
    and b
    db $fc
    nop
    ld bc, $3801
    jr c, @-$20

    sbc $cf
    rst $08

jr_031_4d9b:
    inc e
    rra
    rra
    rra
    dec sp
    inc a
    ccf
    ld [hl], $13
    inc e
    jr c, @+$3a

    or $f6
    and $e6
    ld [hl], b
    ldh a, [$f0]
    ldh a, [$b8]
    ld a, b
    ld hl, sp-$28
    sub b
    ld [hl], b
    ld a, e
    ld a, h
    ld a, a
    ld e, a
    ccf
    dec [hl]
    rra
    rra
    dec e
    ld d, $1f
    inc de
    inc c
    rrca
    rlca
    rlca
    cp h
    ld a, h
    rst $38
    rst $30
    db $fd
    ld e, a
    or $ee
    ld a, h
    call nz, $e4dc
    db $f4
    db $ec
    ld hl, sp-$08
    ld c, $0e
    scf
    scf
    inc sp
    inc sp
    rlca
    rlca
    rrca
    ld bc, $0348
    nop
    nop
    add b
    add b
    ldh a, [$f0]
    add sp, -$08
    db $fc
    db $fc
    call c, $fce4
    or h
    sbc h
    db $e4
    ccf
    ld a, [hl-]
    ccf
    cpl
    rra
    jr jr_031_4e07

    add hl, bc
    ld e, $1f
    rla
    rra
    jr jr_031_4e1e

    rrca
    rrca
    ret c

    add sp, -$02
    cp [hl]
    cp $ee

jr_031_4e07:
    cp $f2
    cp d
    db $76
    db $fc
    db $e4
    call nc, $78ec
    ld a, b
    ccf
    dec sp
    ccf
    ld l, $1b
    rra
    dec sp
    dec a
    ld l, e
    ld e, l
    ld [hl], a
    ld c, a
    ld e, a

jr_031_4e1e:
    ld h, e
    ld a, $3e
    sbc $ee
    cp $fa
    db $fc
    xor h
    ld hl, sp+$78
    db $f4
    inc e
    db $f4
    sbc h
    add sp, -$08
    ldh a, [$f0]
    inc e
    inc e
    ld l, a
    ld l, a
    ld h, a
    ld h, a
    ld bc, $0048
    rra
    rra
    rra
    rra
    rrca
    rrca
    inc e
    inc e
    ld a, e
    ld a, e
    di
    di
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ccf
    ld a, [hl-]
    rst $38
    rst $28
    sbc d
    db $fd
    ld a, d
    ld a, l
    ld a, [hl+]
    dec a
    cpl
    ccf
    daa
    ccf
    rra
    rra
    cp $ae
    cp $fa
    cp h
    ld e, h
    or h
    ld e, h
    db $fc
    db $fc
    ld e, b
    cp b
    ld a, b
    adc b
    ld hl, sp-$08
    ld bc, $ffa0
    dec c
    nop
    ld bc, $0f01
    rrca
    ld de, $131e
    inc e
    ld de, $1f1e
    inc de
    ccf
    inc a
    ccf
    inc [hl]
    ccf
    inc h
    ldh [$e0], a
    db $10
    ldh a, [$90]
    ld [hl], b
    db $10
    ldh a, [$f0]
    sub b
    ld hl, sp+$78

jr_031_4e93:
    ld hl, sp+$58
    ld hl, sp+$48
    rra
    db $10
    cpl
    ccf
    ld a, c
    db $76
    ld a, e
    ld c, h
    add hl, sp
    ld [hl], $2f
    jr nc, jr_031_4ee3

    ccf
    rra
    rra
    ldh a, [rNR10]
    ld hl, sp-$08
    inc [hl]
    call c, $5cb4
    inc l
    call c, $f8f8
    ld l, b
    sbc b

jr_031_4eb5:
    ldh a, [$f0]
    rrca
    rrca
    db $10
    rra
    ld bc, $0042
    ld bc, $0045
    rra
    rra
    rra
    inc e
    ldh a, [$f0]
    jr @-$16

    jr c, jr_031_4e93

    jr jr_031_4eb5

    ld hl, sp+$18

Call_031_4ecf:
    ld hl, sp-$18
    ld hl, sp-$58
    ld hl, sp+$28
    ld e, $1f
    rrca
    rrca
    inc c
    rrca
    ld e, $1b
    rra
    add hl, de
    ld d, $1f
    rra
    rra

jr_031_4ee3:
    rrca
    rrca
    add sp, $18
    ldh a, [$f0]
    cp b
    ld e, b
    db $fc
    adc h
    ld e, h
    xor h
    ld a, b
    ld hl, sp-$4c

Call_031_4ef2:
    call z, $fcfc
    ld bc, $0060
    add hl, de
    ld e, $1a
    dec e
    ld [de], a
    dec e
    rrca
    rrca
    ld d, $19
    ld bc, $026e
    ld [$5cf8], sp
    db $f4
    ld a, h
    and h
    ld e, b
    cp b
    db $fc
    db $fc
    db $fc
    db $fc
    ld bc, $0440
    inc e
    ld bc, $0009
    ccf
    ccf
    ccf
    ld bc, $0010
    ld bc, $00b2
    ld [hl], b
    ld bc, $0019
    ld hl, sp-$08
    ld hl, sp+$1f
    rra
    cpl
    ccf
    ld l, b
    ld [hl], a
    ld a, b
    ld d, a
    ld a, b
    ld d, a
    ld bc, $032a
    ldh a, [rSB]
    ld [hl-], a
    nop
    inc [hl]
    call c, $3801
    inc b
    ld bc, $ffa0
    dec c
    nop
    ld bc, $180a
    jr jr_031_4fc6

    ld h, [hl]
    rst $38
    add e
    rst $38
    db $fc
    cpl
    dec sp
    cpl
    inc a
    ld e, a
    ld [hl], h
    ld a, a
    ld h, h
    jr nc, @+$32

    db $fc
    call z, $82fe
    cp $7e
    add sp, -$48
    add sp, $78
    db $f4
    ld e, h
    db $fc
    ld c, h
    sub a
    ld hl, sp-$61
    rst $38
    ld a, e
    ld l, [hl]
    ld l, c
    ld e, a
    db $76
    ld a, a
    ld a, [de]
    rra
    rrca
    rrca
    inc bc
    inc bc

jr_031_4f75:
    jp nc, $f23e

    cp $bc
    db $ec
    jr c, jr_031_4f75

    ld hl, sp-$28
    ldh a, [$90]
    ldh [rNR41], a
    ret nz

    ret nz

    ld bc, $0701
    ld b, $0f
    ld [$1f1f], sp
    db $10
    rra
    db $10
    rra
    jr nz, jr_031_4fd2

    ld hl, $c03f
    ret nz

    ldh a, [rSVBK]
    ld hl, sp+$38
    db $fc
    db $e4
    ld a, h
    call c, $ec7c
    ld hl, sp-$58
    ld hl, sp+$28
    ld b, c
    ld a, a
    ld b, c
    ld a, a
    ld b, e
    ld a, [hl]
    daa
    inc a
    rra
    dec e
    inc bc
    ld [bc], a
    dec b
    rlca
    rlca
    rlca
    ld l, b
    sbc b
    ldh a, [$f0]
    ret c

    ld a, b
    ret z

    ld hl, sp-$30
    ld [hl], b
    ldh [rNR41], a
    ldh a, [$90]
    ld [hl], b
    ld [hl], b
    ld a, [bc]

jr_031_4fc6:
    ld h, b
    nop
    ld b, c
    ld a, a
    inc hl
    ccf
    rra
    inc e
    rlca
    inc b
    rrca
    add hl, bc

jr_031_4fd2:
    ld c, $0e
    ld a, [bc]
    ld [hl], b
    nop
    ld hl, sp-$68
    ld a, b
    ret z

    ldh a, [$f0]
    and b
    ldh [$d0], a
    ldh a, [rSVBK]
    ld [hl], b
    ld a, [bc]
    nop
    inc b
    inc hl
    ccf
    jr nz, jr_031_5029

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld a, [bc]
    db $10
    inc b
    adc b
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    add b
    rst $38
    add b
    rst $38
    ld b, b
    ld a, a
    ld a, b
    ld a, a
    ld [hl], a
    ld a, [bc]
    add hl, hl
    inc bc
    ld [bc], a
    cp $02
    cp $04
    db $fc
    ld a, [bc]
    ld [hl], $06
    ld a, [bc]
    and b
    rst $38
    dec c
    nop
    ld bc, $1900
    add hl, de
    rra
    ld d, $15
    ld a, [de]
    rra
    rra
    ccf
    ld h, $3f
    jr z, @+$81

    ld l, d
    ld [hl], a
    ld e, e
    ld a, e
    ld e, [hl]
    ld a, a
    ld a, a

jr_031_5029:
    ld a, e
    ld c, [hl]
    ld [hl], c
    ld e, a
    ld [hl], c
    ld a, a
    ld [hl], b
    ld e, a
    ld a, a
    ld e, a
    add hl, hl
    cpl
    sbc $7a
    db $f4
    db $fc
    call nz, $8c7c
    db $fc
    inc b
    db $fc
    ld hl, sp-$08
    xor b
    ret c

    ldh a, [$f0]
    nop
    db $10
    ld b, $7f
    ld e, a
    ld [hl], l
    ld e, e
    cpl
    nop
    rra
    rlca
    adc b
    ld hl, sp-$08
    ld hl, sp-$70
    ldh a, [rP1]
    nop
    dec b
    jr nc, jr_031_509a

    jr nz, jr_031_50dc

    ld b, b
    ld a, a
    ld b, e
    sbc b
    sbc b
    ld hl, sp+$68
    xor b
    ld e, b
    ld hl, sp-$08
    db $fc
    inc [hl]
    ld hl, sp+$48
    db $fc
    add h
    db $fc
    and h
    ld a, a
    ld b, h
    ccf
    ld a, $21
    ccf
    ld c, h
    ld a, a
    ld a, b
    ld a, a
    jr nz, jr_031_50bb

    ccf
    ccf
    rra
    rra
    cp [hl]
    ld a, d
    cp $4e
    cp $f2
    ld a, [hl]
    jp c, $fe3e

    ld a, [hl]
    ld a, [$cabe]
    db $fc
    db $fc
    nop
    ld [hl], b
    ld b, $3c
    ccf
    cpl
    inc sp
    ccf
    ccf
    cp h

jr_031_509a:
    ld a, h
    db $fc
    ld c, h
    db $fc
    db $f4
    ld a, h
    call nc, $fc3c
    inc e
    db $f4
    db $fc
    db $fc
    ld hl, sp-$08
    nop
    nop
    ld [bc], a
    dec e
    ld a, [de]
    ccf
    daa

Call_031_50b0:
    ccf
    jr nz, jr_031_5132

    ld h, b
    ld a, a
    ld d, b
    ld a, e
    ld e, h
    ccf
    ccf
    inc l

jr_031_50bb:
    ccf
    ld l, $3b
    ld a, $3f
    db $10
    rra
    rra
    rra
    add hl, bc
    rrca
    sbc $3a
    cp $fe
    ld e, $f2
    ld c, $fa
    ld c, $fe
    cp $fa
    xor [hl]
    jp c, $f4f4

    nop
    ret nz

    ld b, $1f
    rra
    dec d

jr_031_50dc:
    dec de
    rrca
    nop
    rst $08
    rlca
    ld c, $fa
    cp $fa
    sub h
    db $f4
    nop
    ld bc, $0e00
    rrca
    ld e, $11
    add hl, sp
    ld h, $36
    cpl
    add hl, sp
    cpl
    ld l, b
    ld e, a
    ld a, a
    ld d, h
    ld a, a
    ld d, h
    ld [hl], a
    ld e, b
    ld a, a
    ld e, a
    ld [hl], e
    ld a, a
    ld a, c
    ld c, [hl]
    ld a, e
    ld a, a
    ld a, a
    ld e, h
    inc [hl]
    ccf
    ccf
    ccf
    call c, $fc34
    db $f4
    sbc h
    db $f4
    inc c
    db $fc
    cp h
    db $f4
    db $fc
    ld e, h
    xor h
    call c, $f8f8
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp
    nop
    ld [hl], $00
    dec sp
    inc h
    dec sp
    inc h
    ldh a, [$f0]
    ld hl, sp+$08
    db $ec
    inc d
    call nc, $ec3c

jr_031_5132:
    inc a
    call z, $f87c
    ld l, b
    ld hl, sp-$58
    scf
    jr z, jr_031_5173

    add hl, hl
    ld [hl], $2b
    inc d
    rra
    rra
    dec e
    rra
    rla
    inc a
    inc hl

jr_031_5147:
    ccf
    ccf
    ld hl, sp-$78
    ldh a, [$f0]
    jr jr_031_5147

    sbc h
    db $ec
    sbc h
    db $fc
    db $fc
    db $fc
    ld c, h
    db $f4
    db $fc
    db $fc
    ld [hl], a
    ld c, b
    ld l, a
    ld d, c
    cpl
    scf
    ld e, $1f
    dec c
    rrca
    rla
    add hl, de
    ld a, $21
    nop
    ld e, [hl]
    ld [bc], a
    db $10
    ldh a, [$58]
    add sp, -$28
    ld a, b
    db $fc
    db $fc
    sub h

jr_031_5173:
    db $fc
    db $fc
    db $fc
    nop
    nop
    nop
    ccf
    jr nz, jr_031_51bb

    jr nz, jr_031_51fd

    ld b, b
    nop
    sbc b
    ld [bc], a
    ld l, a
    ld d, b
    ld l, l
    ld d, d
    db $ed
    jp nc, $b2ed

    db $fd
    ld a, [$6f57]
    scf
    jr c, @+$11

jr_031_5191:
    rrca
    db $ec
    inc d
    ld l, h
    sub h
    ld l, h
    sub h
    ld l, h
    sbc h
    ld [hl], h
    cp h
    call nc, $f8ec
    jr jr_031_5191

    ldh a, [rP1]
    jr nc, jr_031_51ab

    ccf
    jr nz, jr_031_51a8

jr_031_51a8:
    inc a
    nop
    nop

jr_031_51ab:
    sub b
    rrca
    ld bc, $526d
    ld l, l
    ld [hl], d
    ld e, l
    ld a, d
    ld d, a
    ld l, a
    ccf
    jr nc, @+$21

    rra
    nop

jr_031_51bb:
    or b
    nop
    ld l, [hl]
    sub [hl]
    ld l, [hl]
    sbc d
    ld a, [hl]
    cp [hl]
    call nc, $d8ec
    jr c, jr_031_51a8

    ldh [rP1], a
    ld [bc], a
    dec b
    dec b
    rst $38
    ld a, [$0303]
    dec b
    rst $38
    ld a, [$c0c0]
    call z, $fbcf
    rst $38
    ld l, h
    ld a, a
    inc sp
    ccf
    ld c, h
    ld a, a
    ld l, a
    ld a, a
    ld e, a
    ld a, d
    ld e, a
    ld a, d
    jr nc, @-$0e

    adc b
    ld hl, sp+$34
    db $fc
    call z, Call_000_32fc
    cp $f6
    cp $fa
    ld e, [hl]
    ld a, [$775e]
    ld a, a
    ld e, b
    ld a, a
    rst $18
    rst $38
    or l

jr_031_51fd:
    rst $28
    cp l
    rst $20
    rst $38
    rst $38
    db $e3
    rst $38
    ld a, [hl]
    ld a, [hl]
    xor $fe
    inc de
    rst $38
    db $eb
    db $fd
    sbc a
    ld sp, hl
    or a
    rst $38
    db $db
    rst $28
    cp $86
    db $fc
    db $fc
    dec b
    rst $38
    ld a, [$0101]
    dec b
    rst $38
    ld a, [$e0e0]
    add $c7
    set 1, a
    ret nc

    rst $18
    ld a, h
    ld a, a
    ld [hl], e
    ld a, a

jr_031_522a:
    db $fc
    rst $38
    or a
    cp a
    dec sp
    ccf
    jr jr_031_522a

    inc b
    db $fc
    cp $fe
    ld [bc], a
    cp $f2
    cp $3e
    cp $fc
    call nc, $d47c
    ld e, $1f
    add hl, de
    rra
    jr nz, @+$41

    ld b, e
    ld a, a
    ld b, a
    ld a, h
    adc a
    rst $38
    sbc e
    rst $30
    ld a, a
    ld a, a
    ld a, [hl-]
    cp $82
    cp $7e
    cp $ce
    ld a, [$fc9c]
    xor $f2
    cp $c2
    ld a, h
    ld a, h
    dec b
    and b
    nop
    db $10
    rra
    jr nz, jr_031_52a6

    ld b, b
    ld a, a
    add e
    rst $38
    adc l
    rst $38
    dec b
    xor [hl]
    ld [bc], a
    ld a, h
    db $fc
    and h
    db $fc
    or $9e
    rst $38
    sbc l
    push af
    ei
    ld a, $3e
    dec b
    rst $38
    ld a, [$0707]
    dec b
    ld [hl], b
    inc c
    jr jr_031_52a5

    jr nc, jr_031_52c7

    inc l
    ccf
    inc sp
    ccf
    ld c, [hl]
    ld a, a

jr_031_528e:
    ld h, [hl]
    ld a, a
    ld e, e
    ld a, a
    ld c, d
    ld a, a
    jr c, jr_031_528e

    rra
    rst $38
    ld h, a
    rst $38
    adc $fe
    cp $fe
    ld a, [hl]
    cp $fa
    cp $fe
    cp $69

jr_031_52a5:
    ld a, a

jr_031_52a6:
    db $db
    rst $38
    add a
    rst $38
    adc [hl]
    rst $38
    call c, $78ff
    ld a, a
    ld [hl], b
    ld a, a
    rra
    rra
    sub $fe
    db $db
    rst $38
    pop hl
    rst $38
    ld bc, $03ff
    rst $38
    ld b, $fe
    inc a
    db $fc
    ldh [$e0], a
    dec b
    jr nz, jr_031_52db

jr_031_52c7:
    ld e, h
    ld a, a
    ld a, b
    ld a, a
    ld a, h
    ld a, a
    rlca
    rlca
    dec b
    jr nc, jr_031_52e6

    ld bc, $02ff
    cp $0c
    db $fc
    ld hl, sp-$08
    dec b

jr_031_52db:
    and b
    rst $38
    ld c, l
    dec b
    cp a
    rra
    dec l
    nop
    ld bc, $0702

jr_031_52e6:
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    ld [hl+], a
    dec a
    ld b, a
    ld a, d
    ld b, d
    ld a, l
    ld b, h
    ld a, a
    inc hl
    ccf
    inc e
    rra
    dec de
    rla
    ccf
    ld a, [hl+]
    ccf
    ld a, [hl+]
    ccf
    dec l
    rla
    dec d
    inc bc
    inc bc
    adc b
    ld hl, sp+$70
    ldh a, [$b0]
    ret nc

    ld hl, sp-$58
    ld hl, sp-$58
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    jr nz, @+$22

    ld [bc], a
    stop
    rrca
    dec bc
    rra
    dec d
    ccf
    dec l
    ccf

jr_031_531f:
    ld a, [hl-]
    rlca
    ld b, $01
    ld bc, $2002
    nop
    ldh [$a0], a
    ldh a, [$50]
    ldh a, [$50]
    ld hl, sp-$58
    ret c

    ret c

    ld [bc], a
    cp $f6
    jr nz, jr_031_5375

    ld b, b
    ld a, a
    ld [bc], a
    ld e, d
    nop
    ret nz

    ret nz

    jr nz, jr_031_531f

    db $10
    ldh a, [rNR10]
    ldh a, [$28]
    ret c

    ld [hl], h
    xor h

jr_031_5347:
    inc h
    call c, $fc44
    inc e
    db $fc
    jr c, jr_031_5347

    ret c

    add sp, -$04
    ld d, h
    db $fc
    ld d, h
    db $fc
    or h
    add sp, -$58
    ret nz

    ret nz

    ld [bc], a
    ld [hl], b
    nop
    ldh a, [$d0]
    ld hl, sp-$58
    db $fc
    or h
    db $fc
    ld e, h
    ldh [$60], a
    add b
    add b
    jr nz, jr_031_53ab

    jr jr_031_538d

    rra
    ld [bc], a
    dec d
    rlca
    ld [$30f8], sp

jr_031_5375:
    ldh a, [rSC]
    add h
    nop
    ld [bc], a
    jr z, jr_031_5380

    ld [bc], a
    sub b
    nop
    rrca

jr_031_5380:
    rrca
    ld [bc], a
    ld [hl], $06
    ld [bc], a
    and b
    nop
    ldh [$e0], a
    ld [bc], a
    ld b, [hl]
    ld b, $02

jr_031_538d:
    rst $08
    rrca
    dec e
    nop

jr_031_5391:
    ld bc, HeaderLogo
    ld bc, $0203
    dec b
    ld b, $75
    db $76
    inc a
    cpl
    ld e, $17
    add hl, bc
    rrca
    db $d2, $dd, $00

    nop
    ldh [$e0], a
    ldh [$a0], a
    ld [hl], b
    or b

jr_031_53ab:
    cp b
    ld c, b
    ldh a, [$d0]
    jr nz, jr_031_5391

    sub [hl]
    db $76
    rst $20
    cp d
    ld b, d
    ld a, l
    rst $10
    rst $38
    cp $ab
    ld l, a
    ld d, e
    ccf
    inc hl
    inc e
    inc e
    nop
    nop
    inc b
    jr nz, jr_031_53c6

jr_031_53c6:
    rst $00
    rst $38
    ld [c], a
    cp a
    ld [hl], c
    ld a, a
    cpl
    ccf
    ld a, [hl]
    ld d, [hl]
    jr z, jr_031_53fa

    ld [bc], a
    ld [bc], a
    rlca
    dec b
    dec bc
    dec c
    ld [$79ed], a
    ld e, [hl]
    add hl, sp
    cpl
    adc $f7
    xor h
    rst $18
    nop
    nop
    ret nz

    ret nz

    ret nz

    ld b, b
    ldh [$60], a
    ld [hl], b
    sub b
    ldh [$a0], a
    ret nz

    ret nz

    ld h, b
    and b
    ld [hl], b
    ld a, a
    ld hl, sp-$71
    ld [hl], b
    ld e, a
    ret nc

    cp a

jr_031_53fa:
    xor b
    rst $38
    ld e, b
    ld a, a
    daa
    daa
    nop
    nop
    ldh a, [$50]
    ld c, [hl]
    cp [hl]
    ld a, a
    ld sp, hl
    ld e, e
    rst $30
    inc h
    db $fc
    ld c, b
    ld hl, sp-$50
    or b
    inc b
    db $fc
    ldh a, [rDIV]
    ld d, d
    ld [$c040], sp
    scf
    ccf
    ld a, $29
    dec hl
    scf
    ld a, $3b
    ld [hl], h
    ld e, a
    ld e, e
    ld h, a
    ld l, $31
    rra
    rra
    ld a, [bc]
    or $9d
    db $eb
    add hl, bc
    rst $30
    rrca
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    ld a, [$04fa]
    cp $f2
    inc bc
    ld [bc], a
    ld [hl], l
    db $76
    dec a
    ld l, $1d
    ld d, $0d
    ld a, [bc]
    push de
    sbc $04
    db $10
    inc b
    ld a, b
    adc b
    or b
    ld d, b
    ldh [$60], a
    ld d, [hl]
    or $f4
    cp a
    ld a, d
    ld c, a
    jp hl


    sbc a
    or $cf
    ld l, l
    ld d, e
    ld l, d
    ld [hl], l
    add hl, de
    rra
    ld b, $06
    cp $ab
    ld [hl], a
    ld c, c
    sub $fd
    rst $38
    xor d
    cp [hl]
    db $eb
    ld b, e
    ld a, a
    inc a
    inc a
    inc b
    and b
    cp $00
    ld bc, $bb02
    rst $30
    cp a
    ld sp, hl
    rst $10
    rst $30
    xor e
    ei
    ld l, c
    ld a, c
    ret c

    ld hl, sp+$30
    jr nc, jr_031_5483

jr_031_5483:
    nop
    ld hl, sp-$08
    cp b
    ld hl, sp-$48
    add sp, $1f
    rst $38
    pop hl
    ld a, a
    rst $38
    sbc a
    ld a, [hl]
    ld h, d
    inc e
    inc e
    jp c, $dbbb

    cp d
    res 7, d
    rst $08
    cp [hl]
    ld b, a
    ld a, [hl]
    ld h, a
    ld e, a
    ld [hl], e
    ld e, a
    jr z, @+$41

    ld a, [$4dfe]
    rst $08
    ld b, l
    rst $00
    push bc
    rst $00
    call $facf
    cp $e4
    db $fc
    ld hl, sp-$08
    ld [bc], a
    db $fc
    ldh a, [rNR34]
    ld e, $21
    ccf
    ld h, [hl]
    ld e, a
    rst $08
    cp a
    call $dabf
    cp e
    ld [bc], a
    ld hl, sp-$0c
    add b
    add b
    ld b, b
    ret nz

    ld [hl], b
    ldh a, [$ec]
    db $fc
    nop
    nop
    ld bc, $0601
    rlca

jr_031_54d4:
    add hl, bc
    rrca
    inc de
    rra
    ld d, $1f
    dec h
    ccf
    ld h, $3e
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_031_54d4

    ret z

    ld hl, sp+$34
    db $fc
    call c, $2afc
    ld a, $1a
    ld e, $6e
    ld e, [hl]
    ld l, h
    ld e, h
    ld l, h
    ld e, h
    ld h, a
    ld e, a
    daa
    ccf
    inc sp
    cpl
    ld sp, $403f
    ld a, a
    ld a, [de]
    ld e, $12
    ld e, $34
    inc a
    xor $fe
    sub $f6
    and [hl]
    and $ea
    xor $f4
    db $fc
    ld [bc], a
    ld a, [$01f2]
    ld bc, $7776
    ld sp, hl
    rst $38
    ei
    rst $38
    sub $df
    ld [bc], a
    ld a, [$e0f2]
    ldh [rNR23], a
    ld hl, sp-$0c
    db $fc
    ld a, [bc]
    cp $e6
    cp $97
    sbc a
    inc de
    rra
    ld [de], a
    rra
    add hl, bc
    rrca
    add hl, bc
    rrca
    add hl, de
    rra
    ld h, b
    ld a, a
    sbc d
    rst $38
    dec d
    rra
    dec bc
    rrca
    adc e
    adc a
    adc e
    adc a
    sub d
    sbc [hl]
    and $fe
    call z, Call_000_3d02
    inc bc
    ld [bc], a
    db $e3
    rrca
    add hl, bc
    nop
    ld bc, $0101
    rst $38
    db $f4
    jr nc, jr_031_5584

    ld a, [hl-]
    ld a, [hl+]
    dec l
    scf
    inc e
    rla
    add hl, de
    rra
    inc sp
    ld a, $57
    ld a, h
    ld d, a
    ld a, l
    add a
    db $fd
    sub e
    cp $89
    rst $38
    sbc h
    rst $38
    sbc b
    ld hl, sp-$34
    ld a, h
    ld [$eabe], a
    cp [hl]
    pop hl
    cp a
    ret


    ld a, a
    sub c
    rst $38
    add hl, sp
    rst $38
    jp nz, $c1ff

    rst $38
    xor c
    rst $38
    cp [hl]
    rst $38
    and c
    rst $38

jr_031_5584:
    ld a, a
    ld d, l
    ld a, [hl+]
    ld a, [hl+]
    ld bc, $f8fc
    ld [hl-], a
    ld [hl-], a
    ld e, l
    ld l, a
    inc a
    scf
    jr jr_031_55b2

    inc sp
    ccf
    ld d, l
    ld a, [hl]
    ld d, a
    ld a, a
    add l
    cp $93
    rst $38
    adc b
    rst $38
    sbc h
    rst $38
    ld bc, $0600
    ldh a, [$d0]
    ld d, b
    ldh a, [rNR41]
    ldh [rNR30], a
    rra
    inc [hl]
    ccf
    ld d, c
    ld a, a
    ld d, c
    ld a, a

jr_031_55b2:
    add c
    rst $38
    sub b
    ld bc, $015b
    ld l, b
    ld hl, sp-$04
    sbc h
    ld a, [$fa2e]
    ld l, [hl]
    ld sp, hl
    ld l, a

jr_031_55c2:
    pop af
    sbc a
    ld [hl], c
    rst $38
    add hl, sp
    ld bc, $055f
    nop
    nop
    or b
    or b
    ld l, b
    ret c

    jr nc, jr_031_55c2

    ld bc, $0c70
    ld [$fcf8], sp
    db $fc
    ld a, d
    adc [hl]
    ld a, [$79fe]
    adc a
    pop af
    rst $38
    ld de, $39ff
    rst $38
    inc e
    rla
    jr z, jr_031_5628

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    ld bc, $02c8
    and b
    rst $38
    and b
    rst $38
    adc b
    rst $38
    ld b, b
    ld a, a
    ld d, b
    ld a, a
    ld [hl-], a
    ccf
    rra
    rra
    ld bc, $ffa0
    rrca
    nop
    ld bc, $1c04
    inc e
    add hl, sp
    add hl, sp
    ld a, [hl]
    ld e, a
    ld c, l
    ld a, a
    scf
    ld a, [hl-]
    cpl
    ld a, $47
    ld a, a
    ld e, a
    ld a, d
    ld a, d
    ld l, a
    dec [hl]
    cpl
    ccf
    inc sp
    ld a, b
    ld c, a
    ld a, a
    ld b, a
    dec sp
    inc a
    ld a, a
    ld d, a
    ld a, [hl]
    ld a, [hl]
    ld e, [hl]

jr_031_5628:
    or $ac
    db $f4
    ld hl, sp-$38
    sbc h
    db $f4
    db $fc
    db $e4
    call nz, $f83c
    ld hl, sp+$78
    ld a, b
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld c, $0f
    ld de, $091f
    rrca
    ld [de], a
    rra
    jr nz, jr_031_5686

    ldh [$e0], a
    ret nz

    ret nz

    ldh a, [$f0]
    ld l, b
    ld hl, sp-$44
    call nc, $f4fc
    xor $ba
    or $ba
    add hl, hl
    ccf
    ld sp, $113f
    rra
    dec de
    ld e, $0b
    ld c, $0f
    rrca
    ld c, $0e
    rlca
    rlca
    jp nc, $ec7e

    cp h
    cp h
    call c, Call_031_7ce4
    db $fc
    inc e
    sbc b
    ld hl, sp+$7c
    ld d, h
    inc a
    inc a
    inc b
    ld d, b
    nop
    ld [de], a
    rra
    dec de
    ld e, $0d
    ld c, $16
    dec de
    rrca
    dec c
    inc b
    ld e, [hl]

jr_031_5686:
    ld b, $b8
    ld e, b
    ld hl, sp-$08
    ld h, $3e
    sbc h
    sbc h
    inc b
    nop
    ld [bc], a
    ld c, h
    ld a, a
    jr nc, jr_031_56d5

    jr nz, jr_031_56d7

    ld d, b
    ld a, a
    jr nz, jr_031_56db

    ld c, b
    ld a, a
    ld d, b
    ld a, a
    inc [hl]
    ccf
    ld a, h
    ld c, a
    ld a, h
    ld b, a
    ld [hl-], a
    ccf
    ld c, l
    ld [hl], l
    ld a, b
    ld a, b
    ld [de], a
    cp $0a
    cp $2c
    db $fc
    inc e
    db $f4
    ld e, h
    db $f4
    ld h, h
    db $fc
    ret z

    inc b
    dec l
    ld bc, $c104
    rrca
    dec hl
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

jr_031_56d5:
    ldh a, [$f0]

jr_031_56d7:
    and b
    ldh [rLCDC], a
    ret nz

jr_031_56db:
    and b
    ldh [$d0], a
    ldh a, [$e8]
    cp b
    db $ec
    ld a, h
    ccf
    jr c, jr_031_5733

    ld a, [hl]
    ld c, e
    ld a, a
    ld b, l
    ld a, a
    inc hl
    ccf
    jr jr_031_570e

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

Call_031_56fe:
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
    ld b, a
    ld a, a
    ld [hl+], a

jr_031_570e:
    ccf
    inc de
    rra
    add hl, bc
    rrca
    ld [hl], b
    ld [hl], b
    cp h
    db $fc
    add sp, -$08
    sub b
    ldh a, [$50]
    ldh a, [$e8]
    ld hl, sp-$08
    cp b
    call c, Call_000_09e4
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

jr_031_5733:
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

jr_031_575f:
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
    jr nz, jr_031_575f

    db $10
    ldh a, [$08]
    ld hl, sp-$14
    db $fc
    jr nc, jr_031_57c6

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
    ld bc, $1c05
    inc e
    ld a, [hl+]
    ld [hl], $3e
    ld a, [hl+]
    ld a, [hl+]
    ld [hl], $1e
    ld e, $0f
    add hl, bc
    jr nc, jr_031_57f5

jr_031_57b6:
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

jr_031_57c2:
    ld l, a
    ld a, h
    ld d, b
    ld e, a

jr_031_57c6:
    rrca
    rrca
    jr c, jr_031_57c2

    sub b
    ld [hl], b
    ld [hl], b
    ldh a, [$d8]
    add sp, -$10
    sub b
    ldh a, [rSVBK]
    jr nz, jr_031_57b6

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

jr_031_57f5:
    inc bc
    inc bc
    ret nc

    ldh a, [$90]

jr_031_57fa:
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
    call c, $6bfc
    rst $30
    ld e, c

jr_031_5818:
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

    jr c, jr_031_5818

    jr nz, jr_031_57fa

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

jr_031_584a:
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
    jr nc, jr_031_584a

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
    jr jr_031_589d

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
    ld bc, $0101
    rst $38
    db $f4

jr_031_589d:
    inc a
    inc a
    ld [hl], a
    ld c, a
    ei
    sbc d
    ei
    cp d
    ld bc, $f6fe
    adc h
    adc h
    sub d
    sbc [hl]
    sub [hl]
    sbc [hl]
    or $b7
    ld sp, hl
    rst $38
    ld l, b
    ld a, a
    xor a
    rst $38
    cp a
    ei
    rst $18
    db $fc
    ld d, e
    ld a, a
    add hl, sp
    ccf
    rst $28
    rst $38
    dec hl
    rst $38
    dec hl
    rst $38
    db $eb
    rst $38

jr_031_58c6:
    db $eb
    cp a
    or $7e
    sub h
    db $fc
    jr c, jr_031_58c6

    ccf
    ccf
    ld b, h
    ld a, a
    ld [hl], a
    ld a, a
    ld l, h
    ld e, h
    db $fc
    db $fc
    ld bc, $f2ff
    ld hl, sp-$08
    ld h, h
    db $fc
    call c, $a4fc
    db $fc
    ld bc, $0448
    ld bc, $f8fc
    ld [hl], b
    ld [hl], b
    ld a, b
    ld c, b
    ld a, l
    ld b, l
    ld a, $37
    rst $38
    ld a, [c]
    cp a
    ei
    ld e, [hl]
    ld a, e
    ld a, $3f
    ccf
    dec a
    ld c, l
    ld a, [hl]
    db $fc
    db $fc
    or [hl]
    ld c, [hl]
    ld l, [hl]
    sbc [hl]
    db $db
    rst $38
    dec [hl]
    rst $38
    dec d
    rst $38
    push af
    rst $38
    or $fe
    ld c, d
    ld a, a
    inc sp
    ccf
    inc e
    rra
    rra
    rra
    ld h, $3f
    inc sp
    ccf
    ld e, d
    ld l, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [$ec3e]
    db $fc
    ld e, b
    ld hl, sp-$10
    ldh a, [$c8]
    ld hl, sp-$68
    ld hl, sp-$48
    add sp, -$04
    db $fc
    or a
    rst $38
    db $f4
    rst $38
    db $fc
    rst $38
    db $e4
    rst $38
    ld a, [c]
    rst $38
    call Call_031_48ff
    ld a, a
    inc a
    ccf
    ld l, l
    rst $28
    sbc a
    rst $38
    rra
    rst $38
    dec d
    rst $38
    dec h
    rst $38
    db $dd
    rst $38
    ld a, [bc]
    cp $1c
    ld bc, $0f59
    nop
    ld bc, $0fe1
    dec bc
    nop
    ld bc, $0106
    ld bc, $0101
    ld [bc], a
    inc bc
    ld h, a
    ld h, h
    ld a, [hl]
    ld e, e
    ccf
    dec hl
    dec hl
    inc a
    scf
    ccf
    ld l, [hl]
    ld e, a
    reti


    xor a
    call c, $b2af
    rst $18
    ld a, b
    ld a, a
    ld a, [hl]
    ld d, a
    daa
    dec sp
    ld e, [hl]
    ld a, a
    db $f4
    inc c
    db $fc
    inc b
    jp c, $5eb6

    cp $3f
    di
    rra
    pop af
    ld sp, hl
    rst $38
    ld l, [hl]
    sbc $7a
    ld h, a
    rst $38
    sbc a
    sbc h
    db $e4
    ld [c], a
    cp $1e
    ld e, $06
    ld a, [$bcf2]
    call nz, $e8d8
    ld a, b
    ld a, b
    cp h
    call nz, $fcfc
    ld b, $f6
    or $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    rst $08
    jp z, $b5ff

    ld a, a
    ld d, l
    ld b, $f8
    db $f4
    inc e
    inc e
    xor [hl]
    or d
    di
    ld l, l
    db $ed
    di
    ld e, a
    ld a, d
    ccf
    daa
    ld a, a
    ld b, d
    ld a, [hl]
    ld b, e
    ld [hl], l
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    rst $38
    add a
    ld e, a
    rst $38
    push de
    rst $38
    push hl
    ccf
    or $1e
    ld e, $fe
    ld a, [c]
    cp $2e
    ld a, [$f2fe]
    cp [hl]
    rst $00
    adc a
    ld sp, hl
    ld a, a
    ld [hl], b
    di
    sbc a
    cp h
    call z, Call_031_665a
    inc a
    inc a
    nop
    nop
    inc a
    db $fc
    ld [hl], b
    ret nc

    sbc b
    add sp, -$70
    ldh a, [$78]
    ld a, b
    sbc h
    db $e4
    ld b, $48
    nop
    cp a
    rst $00
    adc a
    ld hl, sp+$7f
    ld a, b
    dec l
    ld a, $27
    ccf
    inc hl
    ccf
    ld b, $38
    nop
    inc a
    db $fc
    ret nc

    ldh a, [$e0]
    ld h, b
    ld a, b
    ld hl, sp-$48
    ret z

    ld d, b
    or b
    ldh [$e0], a
    ld b, $fe
    or $7f
    ld e, b
    ccf
    jr z, jr_031_5a47

    inc a
    ccf
    ccf
    ld e, a
    ld [hl], b
    ld c, [hl]
    ld a, c
    add $fd
    ld [c], a
    cp a
    pop af
    sbc a
    ret z

    cp a
    ld e, a
    ld a, a
    inc a
    cpl
    ld a, [$fd0e]
    rlca
    db $dd
    scf
    ld [$f636], a
    ld a, [$fe32]
    db $fc
    db $fc
    ld a, b
    add sp, $00
    ld bc, $0808
    rst $38
    ld a, [$0101]

jr_031_5a47:
    inc bc
    ld [bc], a
    dec de
    ld a, [de]
    ccf
    ld h, $3d
    dec hl
    ld [hl], b
    ld a, a
    ldh [$9f], a
    db $f4
    cp a
    ret


    rst $08
    and b
    and b
    ldh a, [$d0]
    ldh a, [$d0]
    ld [hl], b
    ret nc

    ld a, h
    xor h
    inc l
    call nc, $f29e
    db $fc
    db $fc
    ld b, $07

jr_031_5a69:
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
    dec b
    dec b
    rrca
    dec bc
    rra
    inc de
    ld e, $13
    ld a, [hl-]
    cpl
    inc [hl]
    cpl
    inc h
    ccf
    add hl, de
    rra
    ret nc

    ld d, b
    ld hl, sp+$68
    ld hl, sp+$68
    ld hl, sp-$58
    jr c, jr_031_5a69

    inc a
    db $e4
    and h
    db $fc
    ld hl, sp-$08
    ld [$020c], sp
    rlca
    inc b
    rrca
    ld a, [bc]
    dec c
    dec bc
    add hl, bc
    rrca
    ld b, $07
    ret nz

    ret nz

    ld hl, sp+$38
    db $fc
    sub h
    cp h
    call nc, $fc5c
    ld a, d
    and $a2
    cp $7c
    db $fc
    ld [$f2ff], sp
    ld b, b
    ld b, b
    ld [c], a
    and d
    rst $20
    and l
    db $eb
    xor l
    xor $aa
    ld a, e
    ld e, l
    cp $da
    ld a, [$b496]
    call z, Call_031_7808
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    rlca
    dec b
    ld [$00a8], sp
    daa
    dec h
    ld [$f2ff], sp
    jr jr_031_5af2

    jr c, @+$2a

    jr c, jr_031_5b06

    ld l, e
    ld e, e
    ld [hl], a
    ld d, l
    ld [hl], a
    ld d, l
    ld e, a
    ld l, l
    ccf
    dec l
    rra
    inc d
    rra
    db $10
    ld c, $09
    rrca
    add hl, bc
    ld b, $05

jr_031_5af2:
    rst $38
    sbc c
    cp $b2
    db $fc
    inc h
    cp b
    ld c, b
    ldh a, [rNR10]
    rst $38
    rra
    rst $38
    ld bc, $9efe
    ld [$ffa0], sp
    dec c

jr_031_5b06:
    nop
    ld bc, $0101
    rst $38
    or $3c
    inc a
    ld b, d
    ld a, [hl]
    and l
    rst $38
    dec sp
    ccf
    ld c, h
    ld a, a
    ld c, e
    ld a, a
    rst $00
    rst $38
    and h
    rst $38
    db $e3
    rst $38
    sub b
    rst $38
    cp h
    rst $38
    ret nc

    ldh a, [$3c]
    db $fc
    jp nc, $e6fe

    cp $29
    rst $38
    pop de
    rst $38
    rla
    rst $38
    add hl, sp
    rst $38
    ld d, e
    ld e, a
    jr nc, @+$41

    ld c, h
    ld a, a
    ld b, a
    ld a, a
    ld a, h
    ld a, h
    add [hl]
    cp $83
    rst $38
    ld a, l
    ld a, l
    push bc
    rst $38
    ld b, e
    rst $38
    ld [hl+], a
    cp $dc
    db $fc
    ld b, h
    ld a, h
    ld hl, sp-$08
    adc h
    db $fc
    db $fc
    db $fc
    ld bc, $0a00
    sbc c
    rst $38
    nop
    nop
    rlca
    rlca
    ld [$160f], sp
    rra
    dec e
    rra
    add hl, hl
    ccf
    add hl, hl
    ccf
    ld e, $1f
    add a
    rst $38
    pop bc
    rst $38
    cp a
    rst $38
    ld e, [hl]
    cp $44
    db $fc
    inc a
    db $fc
    ld [$90f8], sp
    ldh a, [rNR50]
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
    rlca
    rlca
    inc e
    rra
    ld [hl+], a
    ccf
    db $76
    ld a, a
    ld c, h
    ld a, a
    ld c, h
    ld a, a
    ld c, [hl]
    ld a, a
    ld a, l
    ld a, a
    adc [hl]
    rst $38
    add l
    rst $38
    ld l, l
    ld a, a
    ccf
    ccf
    scf
    ccf
    ld e, a
    ld a, a
    ld b, e
    ld a, a
    dec a
    dec a
    ld l, b
    ld hl, sp-$0c
    db $fc

Jump_031_5bbb:
    inc h
    db $fc
    sbc b
    ld hl, sp+$38
    ld hl, sp-$3c
    db $fc
    inc c
    db $fc
    ldh a, [$f0]
    ld a, [bc]
    rrca
    ccf
    ccf
    ld b, b
    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    and c
    rst $38
    xor [hl]
    rst $38
    cp h
    rst $38
    ld a, h
    db $fc
    adc d
    cp $1f
    rst $38
    ld de, $11ff
    rst $38
    rst $30
    rst $38
    add hl, de
    rst $38
    ld hl, $e1ff
    rst $38
    ld e, $fe
    inc e
    db $fc
    db $e4
    ld bc, HeaderCartridgeType
    call z, $fcfc
    db $fc
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
    jr c, jr_031_5c30

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

jr_031_5c30:
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
    jr nz, jr_031_5c6a

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

    jr c, jr_031_5c82

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

jr_031_5c6a:
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

jr_031_5c82:
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
    jr c, jr_031_5cfe

    jr nc, jr_031_5d00

    jr nz, jr_031_5cc6

    rst $38
    ld a, [c]
    sbc h

jr_031_5cc6:
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
    jr nz, @+$31

    jr nc, jr_031_5cdf

    ld l, h
    nop
    db $fc

jr_031_5cdf:
    inc b
    cp $02
    cp $12
    ld [$ec1e], a
    inc e
    ret z

    jr c, jr_031_5d5b

    ldh a, [$f0]
    ldh a, [rP1]
    ld bc, $0105
    ld bc, $0101
    inc bc
    ld [bc], a
    rlca
    rlca
    add hl, de
    rra
    inc sp

Call_031_5cfc:
    ccf
    ld h, a

jr_031_5cfe:
    ld a, [hl]
    ld [hl], a

jr_031_5d00:
    ld a, a
    dec b
    ld hl, sp-$0a
    ld [bc], a
    inc bc
    inc b
    rlca
    ld [$fd0f], sp
    xor $f7
    cp b
    ld e, a
    ld l, a
    ld [hl], b
    ld a, a
    add b
    rst $38
    inc b
    ei
    ld l, $f5
    inc d
    ei
    db $10
    rra
    db $10
    rra
    jr nz, jr_031_5d5f

    dec b
    inc [hl]
    inc b
    db $10
    rra
    jr @+$01

    rla
    rst $38
    dec de
    db $fc
    daa
    rst $38
    nop
    dec b
    ld b, a
    inc bc
    db $10
    rra
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    dec b
    rst $30
    push af
    dec b
    ld b, a
    inc bc
    ldh a, [rIE]
    rrca
    rrca
    dec b
    db $fc
    ldh a, [rTIMA]
    ld b, b
    nop
    rra
    ldh a, [rTIMA]
    ld b, h
    ld b, $05
    inc e
    nop
    ld [$050f], sp
    jr nc, jr_031_5d56

jr_031_5d56:
    dec b
    add [hl]
    ld [bc], a
    dec b
    add d

jr_031_5d5b:
    nop
    inc b
    rlca
    ld [bc], a

jr_031_5d5f:
    inc bc
    ld bc, $0501
    ld e, d
    ld a, [bc]
    nop
    rst $38
    ret nz

    rst $38
    jr c, jr_031_5daa

    rlca
    rlca
    dec b
    ld hl, sp-$0a
    ld b, $07
    dec b
    add h
    nop
    dec b
    inc [hl]
    nop
    ld b, b
    ld a, a
    dec b
    call nz, $0502
    ld a, [hl-]
    ld [bc], a
    inc c
    rrca
    dec b
    ld d, [hl]
    rlca
    dec b
    ld e, a
    ld bc, $ff80
    ld a, a
    dec b
    rrca
    dec b
    dec b
    ld b, b
    nop
    jr nz, jr_031_5d98

    ld b, a
    dec b
    nop
    rst $38
    nop

jr_031_5d98:
    ld [bc], a
    inc c
    jr nz, jr_031_5ddb

    ld b, e
    ld a, l
    ld c, a
    ld [hl], a
    ld e, c
    ld l, c
    ld d, [hl]
    ld [hl], a
    ld e, c
    ld a, a
    ld h, a
    ld a, a
    ld a, [de]
    dec de

jr_031_5daa:
    sbc $ff
    ld e, c
    rst $38
    ld c, [hl]
    rst $38
    ccf
    ld hl, sp-$31
    ld sp, hl
    cp $ff
    dec sp
    db $fc
    inc e
    di
    ld c, h
    rst $38
    ld hl, sp-$41
    di
    sbc h
    ld a, a
    adc c
    cp $c7
    cp h
    ld a, a
    db $f4
    rrca
    ld c, $f3
    inc a
    call nz, Call_000_18f8
    ldh [$60], a
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld h, b
    ldh [$90], a
    ldh a, [$0c]

jr_031_5ddb:
    ld hl, sp-$0c
    ld bc, $0201
    inc bc
    inc b
    rlca
    dec b
    rlca
    ld h, b
    ld h, b
    ld d, b
    ld [hl], b
    ld e, a
    ld l, a
    dec [hl]
    ccf
    ld a, [$07fd]
    rst $38
    ld de, $fbff
    xor $3f
    ccf
    adc $f2
    inc [hl]
    call z, $b4cc
    db $fc
    call z, $fa26
    sbc $f2
    db $f4
    inc a
    xor $7a
    jp c, $f6be

    ld a, [de]
    push de
    dec a
    ccf
    rst $38
    jp hl


    rst $38
    and a
    rst $38
    sub [hl]
    rst $38
    ld b, $06
    ld e, $1a
    ld a, [hl]
    ld l, a
    ei
    sbc l
    db $e3
    ld a, l
    db $e3
    db $fd
    rst $00
    ld sp, hl
    ld c, $f2
    rrca
    ld a, [bc]
    rlca
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $0c01
    ld hl, sp-$0c

jr_031_5e32:
    pop af
    pop af
    adc a
    rst $38
    ld b, c
    ld a, a
    ld h, $3f
    add hl, de
    rra
    ld h, $3f
    dec de
    inc c
    rrca
    rlca
    cp [hl]
    rst $38
    adc e
    db $fc
    ld e, h
    inc c
    rra
    add hl, bc
    rst $30
    inc c
    dec l
    add hl, bc
    ret nz

    ret nz

    jr nz, jr_031_5e32

    db $10
    ldh a, [$0c]
    ld b, [hl]
    nop
    inc c
    ld [c], a
    nop
    ld b, $07
    add hl, de
    rra
    daa
    ccf
    ld a, [de]
    dec de
    call nz, $a4c7
    rst $20
    sbc h
    rst $38
    add a
    rst $38
    ld b, a
    ld a, l
    dec a
    dec sp
    rrca
    rrca
    nop
    nop
    inc b
    inc c
    sub d
    nop
    rlca
    rlca
    rlca
    rlca
    dec b
    dec c
    dec bc
    rlca
    rlca
    nop
    nop
    rrca
    ld hl, sp+$09
    cp $8e
    ld sp, hl
    db $dd
    ld a, [hl]
    xor $77
    db $dd
    or $ff
    rst $38
    ldh a, [$f0]
    ei
    rlca
    and $1b
    inc e
    rst $20
    or $0f
    dec c
    rst $38
    sbc b
    ld a, a
    push af
    rst $38
    rra
    rra
    db $10
    ldh a, [$08]
    ld hl, sp+$0c
    ld [hl-], a
    ld [de], a
    ldh a, [$f0]
    ret nz

    ld b, b
    ldh [$e0], a
    ccf
    jr z, jr_031_5ed0

    db $10
    rra
    db $10
    rrca
    ld [$0706], sp
    ld bc, $3e01
    ld a, $41
    ld a, a
    rst $38
    inc e
    rst $38
    nop
    inc c
    ld d, d
    db $10
    sbc a
    rst $20
    ld [hl], b
    ld a, a
    rra
    inc e
    cpl
    add hl, sp
    inc c
    and b
    rst $38

jr_031_5ed0:
    ld c, l
    inc c
    cp a
    rra
    dec l
    nop
    ld [bc], a
    inc b
    nop
    nop
    ld bc, $0701
    rlca
    dec b
    rlca
    rrca
    ld a, [bc]
    dec e
    rra
    jr nz, @+$41

    ccf
    ccf
    add d
    add d
    rst $00
    rst $00
    rst $28
    rst $28
    add hl, sp
    rst $38
    cp e
    cp $11
    rst $38
    ld a, h
    rst $38
    sub e
    rst $38
    inc b
    cp $f0
    ret nz

    ret nz

    ld b, b
    ret nz

    ldh [$a0], a
    ld [hl], b
    ldh a, [$08]
    ld hl, sp-$08
    ld hl, sp+$01
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    ld a, [hl]
    ld a, e
    add h
    rst $38
    di
    ld e, a
    push af
    xor a
    sbc l
    rst $38
    db $ed
    rst $38
    push af
    rst $38
    ld a, [de]
    cp $8a
    cp $47
    rst $38
    ldh [rIE], a
    ld a, a
    ld e, a
    add hl, sp
    cpl
    ld h, $3e
    jr @+$1a

    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    ldh [rIE], a
    ldh a, [rIE]
    ld [hl], c
    ld a, a
    and c
    rst $38
    add l
    inc b
    ld h, a
    ld bc, $ff89
    jr nc, jr_031_5f86

    jp nc, $d3ff

    cp a
    ld h, c
    ld a, a
    ld l, a
    ld e, l
    ld [hl-], a
    ld [hl-], a
    inc b
    cp $f0
    sub $ff
    cp $d7
    cp e
    rst $38
    ld b, h
    ld a, h
    ld a, h
    ld d, h
    ld a, h
    ld a, h
    ld a, h
    ld d, h
    jr c, jr_031_5f9c

    inc b
    ld a, [$07f4]
    rlca
    ld [$0e0f], sp
    rrca
    rlca
    dec b
    inc l
    inc l
    ld a, [hl]
    ld a, [hl]
    cp $fe
    db $e3
    rst $38
    jp hl


    cp a
    ld b, l
    rst $38
    rrca
    rst $38
    di
    rst $38
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra

jr_031_5f86:
    rra
    cp e
    cp a
    dec [hl]
    ccf
    add sp, -$01
    call c, Call_000_03ff
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    nop
    rrca
    rrca
    ld a, a
    ld [hl], a
    adc [hl]
    ei

jr_031_5f9c:
    call nz, $99ff
    rst $38
    ld a, c
    rst $38
    sbc c
    rst $38
    jp hl


    rst $38
    di
    inc b
    ld c, c
    inc bc
    ld c, a
    ld a, a
    ld c, c
    ld a, a
    sbc [hl]
    rst $38
    sbc e
    rst $38
    or a
    rst $38
    cp a
    rst $38
    and e
    rst $38
    ret nz

    rst $38
    ld hl, sp-$28
    inc b
    jr z, jr_031_5fbf

jr_031_5fbf:
    sub b
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$bf]
    ld a, a
    ld l, a
    dec e
    rla
    ld a, [hl-]
    ld a, $24
    inc a
    add hl, de
    add hl, de
    inc b
    ld e, h
    ld [bc], a
    pop af
    rst $38
    ld [hl], c
    ld a, a
    and l
    rst $38
    adc c
    rst $38
    adc l
    rst $38
    adc a
    db $fd
    adc e
    rst $38
    ld [bc], a
    rst $38

jr_031_5fe8:
    inc c
    rst $38
    ld e, $ff
    ld c, a
    rst $38
    inc hl
    rst $38
    ld h, e
    rst $38
    ld [c], a
    ld a, a
    and d
    rst $38
    db $fc
    cp h
    ld b, d
    cp $0e
    cp $fc
    db $f4
    jr c, jr_031_5fe8

    ret z

    ld hl, sp-$50
    or b
    add b
    add b
    ld b, h
    rst $38
    ld a, h
    rst $10
    rst $38
    rst $38
    ld a, h
    inc b
    ld b, [hl]
    db $10
    inc b
    adc l
    ld bc, $ff40
    jr nc, @+$01

    ld a, b
    rst $38
    ld a, [c]
    rst $38
    jp nz, $c4ff

    rst $38
    ld b, [hl]
    rst $38
    ld b, a
    cp $07
    rst $38
    adc a
    rst $38
    adc [hl]
    cp $a5
    rst $38
    and c
    rst $38
    sub c
    rst $38
    or c
    rst $38
    pop af
    cp a
    cp d
    rst $38
    ld b, h
    rst $38
    rst $38
    rst $10
    inc b
    ld b, [hl]
    ld d, $04
    cp $f0
    add b
    add b
    ret nz

    ret nz

    ld hl, sp-$48
    call nz, $8c7c
    db $fc
    inc a
    db $f4
    inc b
    and b
    rst $38
    ld c, l
    inc b
    rst $28
    inc e
    nop
    ld bc, $0701
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
    ldh [$e0], a
    ret c

    jr c, jr_031_609e

    call z, $36ca
    ld [hl], $ce
    jp c, $ea3e

    cp $36
    cp $6e
    ld a, e
    ld b, [hl]
    ld a, a
    ld d, e
    ld a, a
    ld c, a
    ld a, [hl]
    sub a
    rst $38
    ld a, [c]
    rst $38
    daa
    ccf
    jr c, jr_031_60bd

    db $76
    sbc $62
    cp $ca
    cp $f5
    ld a, a
    db $e3
    rst $38
    ld [de], a
    cp $9e
    cp $70
    ld [hl], b
    ld bc, $ffa0
    ld c, l
    ld bc, $0f9f
    ld c, l
    nop

jr_031_609e:
    ld bc, $0101
    rst $38
    ldh a, [$0c]
    inc c
    ld [de], a
    ld bc, $0106
    rlca
    rlca
    ld a, [bc]
    rrca
    ld a, [de]
    rra
    ld l, d
    ld a, a
    or e
    rst $18
    or $bd
    or [hl]
    rst $18
    ld a, l
    ld a, a
    ld h, l
    ld a, a
    ld b, e
    ld a, a

jr_031_60bd:
    sbc a
    rst $38
    and d
    rst $38
    jp $44ff


    ld a, a
    dec sp
    ccf
    ld b, h
    ld a, a
    ld c, d
    ld a, a
    ld [hl], a
    ld a, a
    ld bc, $0810
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
    ld a, a
    and e
    rst $38
    rst $38
    rst $38
    ld bc, $f0ff
    ld bc, $0610
    db $fd
    rst $38
    rst $18
    rst $38
    and e
    rst $38
    ld c, a
    rst $38
    ld d, c
    rst $38
    ld bc, $0448
    ld bc, $0f6b
    ld c, l
    ld bc, $0fcb
    ld hl, $0200
    add hl, bc
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    inc bc
    add hl, bc
    ld [bc], a
    nop
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    ld h, b
    ld h, b
    cp b
    ld hl, sp-$5b
    db $fd
    ld d, [hl]
    rst $38
    sbc h
    rst $38
    ld a, d
    rst $28
    rst $38
    sbc a
    xor $fb
    nop
    nop
    add b
    add b
    add b
    add b
    and b
    and b
    and b
    and b
    or a
    or a
    ld hl, sp-$01
    sbc d
    rst $38
    add a
    db $fd
    add a
    db $fd
    ld l, [hl]
    ld a, e
    ld e, a
    ld a, a
    ld e, d
    ld a, a
    cp d
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    ld d, a
    db $fd
    ld [hl], $ff
    ld e, a
    db $eb
    ld a, l
    jp z, $df77

    ld h, b
    rst $38
    inc de
    db $fc
    ret z

    rst $38
    xor e
    rst $28
    db $eb
    rst $28
    set 1, a
    adc e
    adc a
    adc e
    adc a
    adc d
    adc a
    inc c
    rrca
    ld [$c70f], sp
    rst $38
    db $ed
    rst $38
    ld_long a, $ffdf
    rst $20
    ld e, $fb
    ccf
    rst $38
    ld l, h
    rst $38
    rst $18
    db $fc
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    inc e
    rra
    ld a, [hl+]
    ccf
    ccf
    ccf
    rst $38
    db $fc
    ld l, a
    db $ec
    daa
    and $23
    db $e3
    ld h, c
    pop hl
    add hl, bc
    ld [hl+], a
    nop
    add hl, bc
    ld hl, sp-$0a
    inc c
    inc c
    inc [hl]
    inc a
    ld d, [hl]
    ld a, [hl]
    reti


    rst $38
    inc d
    rra
    dec c
    rrca
    rlca
    rlca
    rlca
    inc b
    dec bc
    rrca
    db $10
    rra
    db $10
    rra
    ld de, $e01f
    ldh [rLCDC], a
    ret nz

    ret nz

    ret nz

    add hl, bc
    ld h, $00
    rst $30
    rst $30
    cp b
    rst $38
    ld e, d
    rst $38
    nop
    nop
    ld bc, $0101
    ld bc, $0505
    dec b
    dec b
    db $ed
    db $ed
    rra
    rst $38
    ld e, c
    rst $38
    add hl, bc
    cp $f0
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    ld d, b
    ldh a, [$e8]
    ld hl, sp+$28
    ld hl, sp+$28
    ccf
    inc l
    ccf
    ld e, a
    ld a, a
    ld e, [hl]
    add hl, bc
    scf
    dec b
    ld [hl], a
    db $fd
    or $09
    ld b, e
    add hl, bc
    ld [$6cbf], a
    rst $38
    ld a, [$bed7]
    ld d, e
    xor $fb
    ld b, $ff
    ret z

    ccf
    inc de
    rst $38
    dec d
    db $fd
    rla
    rst $38
    dec a
    rst $38
    ld e, [hl]
    rst $30
    inc e
    rst $30
    sbc a
    ei
    adc $ff
    rst $38
    rst $38
    add hl, bc
    call nc, Call_031_7000
    ldh a, [$90]
    ldh a, [$e0]
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    add b
    add b
    add hl, bc
    ld [hl], b
    ld [bc], a
    rlca
    rlca
    add hl, bc
    ld a, d
    ld [bc], a
    nop
    nop
    rst $38
    db $fc
    cpl
    add hl, bc
    add e
    dec b
    add hl, bc
    and b
    rst $38
    ld c, l
    add hl, bc
    xor e
    rra
    ld b, c
    nop
    ld [bc], a
    dec b
    dec b
    rst $38
    ldh a, [rTAC]
    rlca
    ld [$100f], sp
    rra
    inc de
    rra
    ld h, $3f
    daa
    ccf
    nop
    nop
    ldh [$e0], a
    ld de, $27f1
    rst $20
    sbc $df
    cp d
    xor a
    or b
    cp a
    ldh a, [$df]
    ld b, b
    ld b, b
    and [hl]
    and $29
    rst $28
    inc d
    rst $30
    ld c, $ff
    dec bc
    ei
    ld b, $ff
    inc bc
    rst $38
    sbc [hl]
    rst $38
    sub l
    rst $38
    sub d
    rst $38
    sbc a
    rst $38
    ld d, [hl]
    db $76
    ld d, b
    ld [hl], b
    ld d, c
    ld [hl], c
    ld a, [hl+]
    dec sp
    jp nc, Jump_000_34ff

    rst $38
    ld e, l
    rst $18
    sub a
    sbc a
    ld h, c
    ld a, a
    add b
    rst $38
    ld [$04ff], sp
    rst $38
    ld a, [hl-]
    rst $30
    xor $ff
    or e
    di
    db $10
    ldh a, [$0c]
    db $fc
    ld [bc], a
    cp $21
    rst $38
    ld b, b
    rst $38
    ld bc, $e201
    db $e3
    inc d
    rst $30
    inc l
    rst $28
    ret nc

    rst $18
    or b
    cp a
    and b
    cp a
    pop bc
    rst $38
    nop
    nop
    adc [hl]
    adc [hl]
    ld d, c
    rst $18
    ld l, b
    rst $28
    ld d, $f7
    dec de
    ei
    ld a, [bc]
    ei
    rst $00
    rst $38
    ld c, l
    rst $38
    adc $7b
    ld l, a
    cp a
    or [hl]
    rst $18
    db $eb
    call c, $cebf
    cp l
    rst $00
    push de
    rst $28
    push af
    ld a, [hl]
    rst $10
    db $fc
    db $ed
    ei
    cp d
    ld [hl], a
    sbc $37
    ld a, [$db17]
    scf
    ld [hl], $ef
    jp nc, $35ff

    rst $38
    ld e, e
    rst $18
    sub c
    dec b
    ld b, a
    dec b
    sub $ff
    ld e, c
    rst $38
    ld [hl], h
    rst $30
    db $d3
    di
    dec b
    ld e, b
    inc b
    ld e, d
    ld a, a
    ld d, c
    ld a, a
    cp c
    rst $38
    rst $18
    rst $38
    push bc
    rst $38
    call $bfff
    rst $38
    sub l
    rst $38
    ld e, e
    or $d7
    rst $38
    cpl
    rst $38
    or l
    rst $38
    call z, $b6ff
    rst $08
    cp l
    rst $00
    ld d, [hl]
    db $eb
    sub h
    rst $38
    sub h
    rst $38
    sbc a
    rst $38
    sbc b
    ld hl, sp+$50
    ld [hl], b
    dec b
    ld a, [hl-]
    ld [bc], a
    ld d, e
    db $fd
    push af
    cp $9a
    sbc a
    ld de, $051f
    ld c, b
    inc b
    ld c, l
    ld a, [hl]
    ld c, e
    ld a, h
    sbc e
    db $fd
    sbc [hl]
    rst $38
    sbc h
    rst $38
    sbc [hl]
    rst $38
    sub e
    rst $38
    sub [hl]
    rst $38
    ld h, $ff
    db $e4
    ccf
    ld [hl], h
    sbc a
    or c
    rst $18
    ld a, [c]
    rst $18
    cp c
    rst $08
    cp c
    rst $08
    rst $18
    rst $20
    ld c, [hl]
    rst $38
    ld l, a
    ei
    ld [hl], l
    rst $18
    db $dd
    rst $38
    rst $30
    ld a, e
    rst $38
    add c
    rst $38
    ld h, c
    db $dd
    di
    ld a, [hl+]
    dec sp
    add hl, de
    add hl, de
    jr @+$1a

    ld [$0708], sp
    rlca
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    rlca
    rlca
    rrca
    rst $38
    db $10
    ldh a, [$c8]
    ld hl, sp-$70
    ldh a, [$50]
    ldh a, [$90]
    ldh a, [$a0]
    ldh [$e0], a
    ldh [rTIMA], a
    ld h, b
    nop
    inc e
    rst $38
    jr z, @-$0f

    db $d3
    rst $18
    sbc l
    sbc [hl]
    cp a
    or h
    rst $08
    ld hl, sp+$05
    and b
    rst $38
    ld c, l
    dec b
    cp a
    rra
    dec l
    nop
    ld [bc], a
    inc b
    inc b
    rst $38
    or $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    jr nc, jr_031_63be

    jr c, jr_031_63b8

    inc b
    ld [de], a
    nop
    ld l, b
    ld e, b
    ld [hl], b
    ld d, b
    db $d3
    or e
    pop de
    or c
    ld b, b
    ld b, b
    ld l, a
    ld l, a
    ld e, e
    ld a, a
    dec hl
    ccf
    ccf
    ccf
    dec de
    dec e
    xor c
    cp a
    or $ff
    db $10
    db $10
    jr nc, jr_031_63df

    ret nc

    ldh a, [$e0]
    ldh [$e0], a
    ldh [$c6], a
    add $b9

jr_031_63b8:
    rst $38
    ld a, b
    rst $38
    dec c
    ld a, [bc]
    add hl, bc

jr_031_63be:
    ld c, $07
    ld b, $03
    ld [bc], a
    ld b, $07
    rrca
    rrca
    rra
    rra
    ld a, [hl-]
    ccf
    sbc h
    sbc a
    adc a
    adc a
    cp e
    cp a
    ei
    rst $38
    rst $38
    ld a, a
    and a
    rst $38
    ld c, a
    rst $38
    ld a, a
    rst $38
    call nz, $faff
    rst $38

jr_031_63df:
    rst $38
    rst $38
    rst $28
    rst $38
    sbc c
    rst $38
    ret z

    rst $38
    sbc h
    rst $38
    db $fc
    rst $38
    adc b
    ld hl, sp+$10
    ldh a, [rNR10]
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    inc b
    ld [hl], $00
    ldh [$e0], a
    ld [hl], c
    ld a, a
    ld [hl], c
    ld a, a
    di
    rst $38
    add sp, -$11
    ld l, b
    ld l, a
    ld h, a
    ld h, a
    ld [hl+], a
    inc hl
    ld [de], a
    inc de
    rst $20
    rst $38
    ld h, a
    cp a
    rst $00
    rst $38
    rst $00
    rst $38
    and [hl]
    rst $38
    ld [hl], d
    cp a
    ld h, e
    cp a
    db $e3
    ccf
    and $ff
    and $ff
    ld [c], a
    inc b
    and e
    ld bc, $fff6
    ld a, [$feff]
    rst $38
    ld [hl], b
    ldh a, [rDIV]
    or b
    ld [$f0f0], sp
    cp a
    rst $18
    ld [hl], e
    ld d, e
    ld e, c
    ld l, c
    add hl, sp
    add hl, hl
    add hl, hl
    add hl, sp
    dec de
    dec de
    rrca
    rrca
    rrca
    rrca
    rst $38
    inc b
    ld h, e
    nop
    rst $28
    rst $00
    rst $00
    db $e3
    db $e3
    db $e3
    db $e3
    add c
    add c
    nop
    nop
    ldh a, [rDIV]
    ldh [$03], a
    inc b
    halt
    inc b
    ld [$0400], a
    ld b, b
    inc b
    ld [bc], a
    inc bc
    ld bc, $0301
    inc bc
    ld [bc], a
    inc bc
    inc b
    ld d, b
    nop
    sbc e
    sbc a
    sbc e
    sbc a
    rst $18
    ld e, a
    and a
    cp a
    inc b
    ld e, h
    nop
    inc b
    ld [hl], b
    ld [bc], a
    inc b
    dec d
    ld d, $03
    inc b
    ld sp, hl
    ld bc, $0707
    ld c, $0f
    dec e
    rra
    ld e, $1f
    ld a, [hl-]
    dec sp
    inc b
    sub b
    ld b, $7a
    cp a
    ld h, a
    and a
    db $e3
    inc hl
    inc b
    ldh [rDIV], a
    ld hl, sp+$04
    ld c, b
    inc de
    or c
    pop de
    ld [hl], c
    ld d, c
    inc b
    call nz, $9e08
    sbc [hl]
    adc [hl]
    adc [hl]
    add [hl]
    add [hl]
    add e
    add e
    add c
    add c
    inc b
    ld [$0402], a
    ld [$0400], sp
    jr nz, jr_031_64bf

    inc b
    rst $38
    db $f4
    inc b
    ld b, b
    ld [bc], a
    rst $38
    cp $7e
    ld a, a
    rra
    rra
    inc b
    db $fc
    nop
    cp h

jr_031_64bf:
    cp a
    rst $38
    rst $38
    ei
    rst $38
    inc b
    ld d, [hl]
    ld b, $88
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp-$08
    ld hl, sp-$24
    db $fc
    ld c, $fe
    ld c, $fe
    rlca
    rst $38
    inc b
    jr nz, jr_031_64ea

    inc b
    db $76
    ld [de], a
    inc b
    db $fc
    nop
    ld [bc], a
    inc bc
    rst $20
    rst $20
    ld h, a
    and a
    rst $20
    rst $20
    rst $20
    rst $20

jr_031_64ea:
    and [hl]
    rst $20
    ld [hl], d
    or e
    ld h, e
    and e
    db $e3
    inc hl
    inc b
    and b
    nop
    db $e3
    rst $38
    ld [c], a
    cp $e2
    cp $f6
    cp $fa
    cp $fe
    cp $07
    rst $38
    rlca
    rst $38
    add a
    rst $38
    ld h, a
    ld a, a
    rla
    rra
    ld c, $0e
    ld c, $0e
    inc e
    inc e
    add [hl]
    add [hl]
    add h
    add h
    adc b
    adc b
    adc b
    adc b
    add b
    add b
    inc b
    ld l, d
    ld [de], a
    nop
    ld bc, $030c
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
    ld b, h
    db $f4
    ld l, h
    cp $26
    rla
    jr jr_031_6593

    dec c
    ld b, $05
    rrca
    ld [$0e0f], sp
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    cp $82

jr_031_6593:
    db $ec
    call c, Call_031_50b0
    ld hl, sp+$08
    or b
    ld [hl], b
    ld b, b
    ret nz

    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    dec b
    dec b
    inc bc
    inc bc
    ld b, $05
    dec d
    ld d, $1f
    add hl, de
    dec c
    dec bc
    rra
    ld [de], a
    ldh [$e0], a
    ret z

    ld c, b
    db $fc
    inc [hl]
    call nc, $f82c
    ld [$4cf4], sp
    call nc, $f66c
    ld a, [hl+]
    rla
    jr @+$10

    add hl, bc
    dec bc
    dec c
    rlca
    inc b
    rlca
    rlca
    inc c
    ld a, [$faf2]
    add [hl]
    or h
    call z, $58e8
    add sp, $18
    ld a, h
    add h
    db $fc
    cp h
    and b
    ldh [$c0], a
    ret nz

    inc c
    and b
    rst $38
    dec l
    nop
    ld bc, $1c01
    inc e
    ld l, $32
    dec [hl]
    dec l
    ld l, [hl]
    ld e, a
    ld a, h
    ld e, a
    db $db
    rst $38
    rst $38
    db $ed
    rst $18
    rst $28
    jr nc, jr_031_6627

    ld c, b
    ld a, b
    ld [hl], h
    ld c, h
    and $fe
    ld e, e
    db $fd
    rst $10
    db $fd
    rst $38
    ld e, a
    cp d
    sbc $f2
    cp a
    cp e
    rst $38
    ld l, h
    ld a, a
    ld l, e
    ld e, a
    scf
    ld a, $3f
    ld l, $2b
    dec sp
    ld a, b
    ld a, b
    cp h
    call c, $b0d0
    ret nc

    or b
    xor b
    ld a, b
    ld hl, sp-$08
    ld hl, sp+$68
    xor b
    cp b
    inc a
    inc a
    jr c, @+$3a

jr_031_6627:
    ld a, b
    ld c, b
    db $fd
    sbc l
    cp $bf
    db $f4
    rst $38
    rst $10
    cp a
    cp a
    push af
    ld e, e
    ld [hl], a
    jr nc, @+$32

    ld e, b
    ld l, b
    ld d, h
    ld l, h
    and [hl]
    cp [hl]
    ld e, e
    db $dd
    cp a
    db $fd
    rst $30
    ld a, a
    db $dd
    rst $30
    ld e, d
    ld [hl], a
    scf
    dec sp
    ld d, $1b
    dec hl
    dec a
    ccf
    ld a, $3f
    inc l
    ld bc, $002c
    xor [hl]
    or $d8
    add sp, $68
    ret c

Call_031_665a:
    cp b
    ld hl, sp-$48
    ret c

    ld hl, sp-$18
    ld bc, $043c
    ld sp, hl
    sbc c
    ld a, [$f4bb]
    rst $30
    db $db
    cp a
    xor a
    db $fd
    ld d, a
    ld a, a
    ld bc, $f0fc
    jr c, jr_031_66ac

    db $fc
    call nz, $f68a
    sbc $a2
    or d
    adc $ef
    rst $10
    ld e, [hl]
    ld [hl], a
    ccf
    scf
    ld a, [de]
    rla
    scf
    dec sp
    ccf
    dec a
    ccf
    add hl, hl
    cpl
    ccf
    ld a, b
    ld a, b
    db $fd
    rst $38
    xor a
    push af
    ld a, d
    cp $be
    ld a, [$fc4c]
    ld a, b
    ld bc, $017b
    nop
    nop
    ld c, $0e
    rra
    inc de
    ld a, $27
    ld [hl], $2f
    rst $38
    rst $08
    rst $38
    call $efdf

jr_031_66ac:
    ld bc, $0092
    ld l, h
    ld d, h
    jp nc, Jump_031_7eee

    ld [c], a
    or e
    rst $38
    rst $28
    ld a, l
    db $dd
    ei
    xor $bf
    cp a
    ei
    ld l, [hl]
    ld [hl], e
    ld e, a
    ld a, a
    dec [hl]
    ld a, $3d
    ld bc, $012b
    sbc a
    rst $38
    xor e
    db $fd
    db $76
    ld a, [$b601]
    ld b, $00
    ld bc, $0101
    rst $38
    ld a, [c]
    inc bc
    inc bc
    dec c
    ld c, $1b
    rla
    rla
    rra
    ld l, $3f
    inc e
    inc e
    ld a, $22
    ld d, a
    ld a, l
    db $fd
    rst $38
    ld [hl], a
    rst $28
    cp e
    db $dd
    db $db
    push af
    pop af
    rst $38
    dec l
    ccf
    inc e
    rla
    rrca
    rrca
    ld a, d
    ld [hl], l
    db $ed
    cp e
    rst $38
    sbc a
    sbc h
    ei
    ld l, a
    ld a, a
    ld sp, $daff
    cp $f4
    ld e, h
    ld a, h
    call c, $b2fe
    ld l, a
    db $fd
    rst $38
    or a
    or l
    ld a, a
    rra
    jr jr_031_6734

    rra
    ld a, [hl-]
    daa
    add hl, hl
    scf
    inc e
    rra
    jr z, @+$41

    ld sp, $1e3f
    ld e, $53
    rst $38
    pop af
    rst $28
    ld [hl], d
    xor $e4
    db $fc
    sbc h
    sbc h
    add b
    add b
    add b
    add b
    ld bc, $fbfe
    dec e

jr_031_6734:
    ld l, $3f
    nop
    nop
    ld bc, $0010
    rst $10
    db $fd
    ld a, l
    rst $38
    or a
    rst $28
    db $db
    ld a, l
    ei
    push af
    ld bc, $0020
    ld a, a
    ld a, a
    ld [$fdbd], a
    sbc e
    sbc a
    rst $38
    ld l, h
    ld a, e
    cpl
    ccf
    ld sp, $51ff
    rst $38
    ld a, [c]
    sbc $6c
    ld bc, $0537
    ld bc, $0700
    dec d
    ld d, $19
    cpl
    dec a
    ld bc, $f0ff
    inc e
    inc e
    cp $e2
    ld d, a
    db $fd
    db $fd
    ld a, a
    rst $30
    cpl
    ei
    ld a, l
    dec l
    ccf
    ld a, h
    ld [hl], a
    rst $28
    cp a
    ld a, [$019d]
    inc l
    nop
    ld c, h
    ld a, e
    cpl
    ccf
    inc hl
    db $fd
    ld [hl], c
    rst $38
    jp nc, $6cfe

    call c, $b2de
    rst $28
    ld a, l
    ld bc, $069c
    ld bc, $0fe5
    rlca
    nop
    ld [bc], a
    ld b, $1c
    inc e
    ld e, $1e
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    dec b
    rlca
    nop
    nop
    rrca
    rrca
    or b
    cp a
    ldh [rIE], a
    ld b, $17
    inc b
    ld bc, $8301
    add e
    ld l, a
    rst $28
    ccf
    ld b, $17
    ld bc, $fefe
    db $fd
    rst $38
    ret nz

    ld b, $30
    ld bc, $e0a0
    sbc [hl]
    cp $9d
    rst $30
    ld c, a
    ld a, a
    ld [hl+], a
    ld a, $04
    rlca
    rrca
    rrca
    jr c, jr_031_6816

    ld c, h
    ld a, a
    ld b, e
    ld a, a
    jr nc, jr_031_681c

    ld a, h
    ld a, a
    add b
    rst $38
    rst $30
    rst $38
    ld a, [c]
    ld a, a
    rst $38
    rst $38
    sbc a
    ld_long a, $ff15
    rla
    ld hl, sp+$38
    rst $28
    rst $18
    rst $30
    ld a, c
    rst $38
    ld a, a
    rst $30
    db $fc
    rst $38
    ld hl, sp-$11
    ld a, c
    rst $28
    ld [hl], c
    rst $18
    db $e3
    cp a
    jp nz, $367f

    ld a, $a4
    cp h
    ld l, b
    ld hl, sp-$38
    ld hl, sp-$08
    ld hl, sp-$5c
    db $fc
    and h
    db $fc
    call nz, $89fc
    rst $38
    ld [hl], c
    ld a, a
    add e

jr_031_6816:
    rst $38
    adc e
    rst $38
    ld [hl], e
    ld a, a
    ld [de], a

jr_031_681c:
    rra
    ld e, $1f
    ld h, $3f
    rst $10
    ld_long a, $ff4f
    ld c, l
    rst $38
    ld c, d
    db $fd
    ld c, l
    rst $38
    ld h, a
    rst $38
    jr nc, @+$01

    inc l
    rst $38
    ld b, d
    rst $38
    add [hl]
    rst $38
    add l
    rst $38
    adc c
    rst $38
    sub c
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, h
    rst $38
    ld b, h
    db $fc
    ld hl, sp-$08
    ret nc

    ldh a, [rTMA]
    or h
    nop
    sub b
    ldh a, [$b0]
    ldh a, [$b0]
    ldh a, [rNR50]
    ccf
    inc h
    ccf
    ld d, h
    ld a, a
    ld c, [hl]
    ld a, a
    inc hl
    ccf
    ld e, $1f
    inc bc
    inc bc
    nop
    nop
    inc hl
    rst $38
    db $10
    rst $38
    inc c
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ccf
    ccf
    add h
    rst $38
    ld [$03ff], sp
    rst $38
    ld c, $ff
    nop
    rst $38
    rlca
    rst $38
    ld a, b
    ld hl, sp-$80
    add b
    ld b, $bc
    nop
    xor b
    ld hl, sp-$58
    ld hl, sp-$50
    ldh a, [$a0]
    ldh [$a0], a
    ldh [$60], a
    ld h, b
    inc b
    rlca
    dec c
    rrca
    ld [de], a
    rra
    inc sp
    ccf
    ld c, [hl]
    ld a, a
    ld c, d
    ld a, a
    ld [hl], c
    ld a, a
    sub e
    ld b, $4f
    dec b
    ld d, l
    rst $38
    ld d, a
    ld hl, sp-$48
    rst $28
    rst $18
    rst $30
    sub a
    rst $38
    ld [hl], a
    ld a, a
    ld c, a
    ld a, a
    ld c, a
    ld a, a
    ld a, $3f
    ld d, $1f
    ld h, $3f
    inc h
    ccf
    ld b, $34
    inc b
    rst $08
    rst $38
    ld [hl+], a
    ld a, $36
    ld a, $24
    inc a
    ld l, b
    ld a, b
    ret z

    ld hl, sp+$78
    ld b, $79
    inc bc
    call nz, Call_031_78fc
    ld b, $b3
    add hl, bc
    ld b, $f0
    inc b
    ld b, $f4
    ld [bc], a
    ldh [$e0], a
    ld b, $fc
    ldh a, [rIF]
    rrca
    db $10
    rra
    inc h
    ccf
    ld d, d
    ld a, a
    ld c, c
    ld a, a
    and l
    rst $38
    sub d
    rst $38
    ld c, a
    ld a, a
    rst $30
    rst $38
    ld a, [c]
    rst $38
    ld a, a
    rst $38
    rst $38
    ld_long a, $ff35
    scf
    ld hl, sp+$78
    rst $28
    cp a
    rst $30
    ccf
    ccf
    daa
    ccf
    daa
    ccf
    ld h, $06
    sub l
    ld de, $c006
    nop
    sub a
    ld b, $91
    dec bc
    ld b, $f2
    ld a, [$3006]
    ld d, $a2
    cp [hl]
    ld b, $3c
    rra
    ld bc, $f8d8
    ret c

    ld hl, sp+$06
    ld d, h
    ld d, $06
    ld h, b
    inc d
    ld b, $f4
    nop
    ld [hl], b
    ldh a, [$80]
    add b
    ld b, $a0
    ldh a, [rP1]
    ld [bc], a
    ld [bc], a
    jr nc, jr_031_6963

    ld c, b
    ld a, b
    db $fc
    or h
    db $fc
    call z, $fcb4
    ld c, e
    ld a, e
    ld c, e
    ld a, d
    add hl, hl
    add hl, sp
    jr c, jr_031_697b

    inc a
    inc a
    ld a, [hl+]
    ld a, $2a
    ld a, $26
    ld a, $24
    ld a, $1e
    ld e, $16
    ld e, $58
    ret c

    ld e, [hl]
    sub $4f
    ret


    push bc
    add $e4
    rst $20
    ld d, d
    di
    ld d, d
    di
    dec a
    rst $38
    ld [bc], a
    db $fc

jr_031_6963:
    ldh a, [$80]
    add b
    ret nz

    ld b, b
    ld h, b
    and b
    scf
    rst $10
    rra
    rst $28
    adc a
    rst $38
    add hl, de
    add hl, de
    ld a, c
    ld l, c
    db $fd
    sbc l
    or e
    ld a, a
    add hl, sp
    rst $38
    ld b, h

jr_031_697b:
    rst $00
    ld c, [hl]
    rst $08
    or l
    rst $38
    add b
    add b
    ld e, b
    ret c

    ld l, b
    ld hl, sp+$50
    ldh a, [$38]
    ld hl, sp+$08
    ld hl, sp+$30
    ldh a, [$c0]
    ret nz

    cpl
    cp $fb
    rst $38
    or d
    rst $38
    or a
    cp $bf
    cp $b7
    cp $b3
    cp $b3
    cp $fe
    ld a, a
    ld a, a
    sbc a
    sbc e
    rst $38
    ld sp, hl
    rst $38
    rst $18
    cp a
    rst $38
    db $dd
    cp d
    rst $38
    db $db
    ld a, h
    rst $38
    db $fc
    db $fd
    di
    or d
    rst $38
    ccf
    cp $f7
    ld a, [$76ff]
    cp e
    cp $b3
    ld a, [hl]
    db $e4
    cp h
    db $f4
    inc a
    db $fc
    inc a
    db $fc
    inc a
    or h
    ld a, h
    and h
    ld a, h
    and h
    ld a, h
    or h
    ld a, h
    or a
    cp $bc
    rst $38
    cp h
    rst $38
    or h
    rst $38
    ld d, a
    ld a, h
    ld d, a
    ld a, h
    ld d, l
    ld a, [hl]
    ld e, b
    ld a, a
    db $dd
    ld a, [hl]
    rst $28
    ccf
    ld a, [c]
    rra
    ld a, l
    adc [hl]
    cp [hl]
    ld b, e
    rst $38
    ld sp, $75ff
    rst $38
    rst $38
    ld [hl], a
    db $fc
    rst $20
    db $fc
    sbc [hl]
    ld sp, hl
    ld a, [hl]
    pop hl
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp+$7c
    db $fc
    ld l, b
    ld hl, sp+$48
    ld hl, sp-$38
    ld a, b
    add sp, $78
    ld a, b
    ld hl, sp+$78
    ld hl, sp-$38
    ld a, b
    ld e, [hl]
    ld a, c
    ld e, e
    ld a, h
    ld d, a
    ld a, h
    dec hl
    ccf
    ld l, $3f
    ld l, h
    ld a, a
    xor a
    rst $38
    ld hl, sp-$08
    ld_long a, $ffff
    xor a
    rst $38
    rlca
    rst $38
    ret nz

    ld a, a
    rst $38
    ld h, a
    rst $38
    jp $ffff


    rst $38
    rst $38
    ld hl, sp-$01
    xor b
    rst $38
    ld bc, $0ff6
    cp $ff
    sbc h
    rst $38
    rrca
    rst $38
    db $fc
    db $fc
    ret nc

    ld [hl], b
    ret nc

    ldh a, [$f0]
    ldh a, [rNR41]
    ldh [$60], a
    ldh [$d8], a
    ld hl, sp-$5c
    db $fc
    db $fc
    db $fc
    cpl
    ld a, [$f9ff]
    cp [hl]
    ld sp, hl
    cp a
    ld hl, sp-$45
    db $fc
    or e
    db $fc
    or e
    db $fc
    cp e
    db $f4
    ld a, [c]
    ld e, [hl]
    ld a, [$7e9e]
    sbc [hl]
    cp $1e
    jp c, $cb3e

    ccf
    ret


    ccf
    db $dd
    cpl
    cp e
    db $f4
    or c
    cp $b1
    cp $b0
    rst $38
    ld d, d
    ld a, l
    ld e, e
    ld a, h
    ld e, c
    ld a, [hl]
    ld e, l
    ld a, d
    db $dd
    ld a, [hl]
    rst $08
    ld a, a
    ld [c], a
    ccf
    db $fd
    ld e, $fe
    inc bc
    ld a, a
    sbc c
    rst $38
    ld a, [hl-]
    rst $38
    ld a, a
    rst $18
    cpl
    adc a
    ld a, a
    adc l
    ld a, a
    add hl, bc
    rst $38
    ld c, e
    cp a
    jp c, $9e3e

    ld a, [hl]
    cp d
    ld e, [hl]
    ld e, [hl]
    ld a, l
    ld d, a
    ld a, h
    ld e, a
    ld a, [hl]
    dec l
    ccf
    jr z, jr_031_6aac

    jp hl


    inc bc

jr_031_6aac:
    db $fd
    ld a, a
    rst $38
    ld d, a
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    rst $38
    ld [hl], e
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    ld [hl], d
    cp [hl]

jr_031_6abe:
    ld [c], a
    ld a, $f6
    ld a, [hl]
    cp h
    db $fc
    jr jr_031_6abe

    ld a, h
    db $fc
    jp nc, Jump_031_7efe

    ld a, [hl]
    sub a
    rst $38
    ld a, d
    ld a, a
    ld d, e
    ld a, [hl]
    ld d, a
    ld a, [hl]
    ld e, l
    ld a, [hl]
    ld e, l
    ld a, [hl]
    ld d, l
    ld a, [hl]
    ld d, l
    ld a, [hl]
    and $7e
    or h
    db $fc
    ld a, h
    cp h
    db $fc
    inc a
    db $f4
    inc a
    db $e4
    inc a
    db $e4
    inc a
    or [hl]
    ld a, [hl]
    ld d, h
    ld a, a
    ld e, [hl]
    ld a, a
    ld d, d
    ld a, a
    ld e, e
    ld a, [hl]
    dec hl
    ld a, $2f
    ccf
    dec hl
    ccf
    add hl, hl
    ccf
    sbc [hl]
    ld a, [hl]
    ld a, [de]
    cp $12
    cp $72
    sbc [hl]
    ei
    rra
    rst $08
    ccf
    adc l
    ld a, a
    cp c
    ld c, a
    add hl, hl
    ccf
    cpl
    ccf
    dec l
    ccf
    inc d
    rra
    ld d, $1f
    scf
    ccf
    ld d, a
    ld a, a
    ld a, h
    ld a, h
    ld sp, hl
    rrca
    db $fd
    rra
    rst $38
    ccf
    db $e3
    rst $38
    ld h, [hl]
    cp $3c
    db $fc
    ld a, [c]
    cp $fe
    cp $00
    ld [bc], a
    ld [$ff08], sp
    or $07
    rlca
    ld a, [bc]
    ld c, $16
    ld e, $03
    inc bc
    rlca
    dec b
    ld a, [bc]
    rrca
    jr jr_031_6b5f

    ld a, $2f
    add hl, sp
    cpl
    ld [hl], e
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    ldh [$a0], a
    ld [hl], b
    ldh a, [rSVBK]
    ret nc

    or b
    ldh a, [rNR23]
    ld hl, sp-$0c
    db $fc
    sub d
    cp $eb
    rst $38
    ld [$f2ff], sp
    ld bc, $0201
    inc bc

jr_031_6b5f:
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    ld sp, hl
    cp a
    db $fc
    rst $30
    sbc a
    rst $38
    ei
    rst $10
    ld [$967f], a
    rst $38
    inc b
    rst $38
    call z, $9eff
    rst $38
    ld sp, hl
    rst $38
    ld e, [hl]
    rst $38
    rst $30
    db $fd
    ld d, a
    ei
    ld a, d
    db $fd
    ccf
    rst $28
    cp e
    rst $28
    jp hl


    cp a
    db $e3
    cp [hl]
    rst $30
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp a
    xor $ff
    db $f4
    rst $18
    ld h, l
    ld a, a
    cp l
    db $eb
    sbc [hl]
    push af
    rst $38
    ei
    sub $fd
    dec l
    cp $1b
    rst $38
    ld c, h
    rst $38
    call nz, Call_031_72ff
    ld a, [hl]
    ld h, c
    ld a, a
    ld c, h
    ld a, a
    di
    or e
    ldh a, [$f0]
    jr nc, jr_031_6be1

    db $10
    db $10
    db $10
    db $10
    ld h, a
    ld a, a
    inc e
    rra
    add a
    add a
    jp nz, $c143

    pop bc
    ld [$f2ff], sp
    call z, Call_031_71fc
    pop af
    adc $cf
    scf
    db $fd
    rst $08
    rst $38
    ld a, h
    ld a, e
    add hl, bc
    rrca
    ld b, $3e
    sbc h
    db $fc
    inc c
    db $fc
    ld h, h
    db $fc
    cp [hl]
    ld a, [$febe]
    ld e, b
    ret c

    sub b
    sub b
    db $10

jr_031_6be1:
    db $10
    ld [$f6ff], sp
    inc e
    inc e
    ld l, a
    ld a, e
    rst $38
    cp l
    inc bc
    inc bc
    ld b, $07
    ld c, $0b
    rra
    rla
    ccf
    cpl
    inc a
    cpl
    ld a, b
    ld e, a
    ld a, c
    ld e, a
    add sp, -$08
    ret nc

    ldh a, [rRP]
    or $1e
    ld a, [$fc04]
    ld a, h
    ld [$012b], sp
    ld [$0010], sp
    rlca
    rlca
    inc b
    rlca
    inc e
    rra
    rra
    rla
    inc c
    rrca
    inc bc
    inc bc
    db $fc
    rst $38
    cp $d7
    rst $38
    rst $30
    rst $18
    rst $30
    ld e, $f7
    inc a
    rst $30
    ld a, b
    rst $38
    sub c
    rst $38
    sbc [hl]
    rst $38
    ld a, c
    ld [$0953], sp
    rst $00
    rst $38
    rst $38
    cp [hl]
    rst $38
    or [hl]
    rst $38
    or [hl]
    rst $38
    or a
    ld [$0f6a], sp
    inc bc
    ld [$0800], sp
    ld l, d
    ld l, [hl]
    or $be
    ld [hl], a
    ld a, a
    rst $30
    cp a
    db $e3
    rst $38
    sub d
    rst $38
    ld b, b
    ld a, a
    inc sp
    ccf
    ld [hl], a
    ld e, [hl]
    ld a, a
    ld e, [hl]
    ldh [$e0], a
    ldh [$60], a
    ldh [$e0], a
    ld [hl], b
    ldh a, [$f8]
    ld [$0729], sp
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [$013b], sp
    nop
    nop
    rst $38
    or a
    db $fd
    cp a
    db $ec
    cp a
    rst $28
    cp a
    ld b, [hl]
    rst $38
    inc h
    rst $38
    add c
    rst $38
    and $08
    ld c, a
    ld bc, $ffde
    rst $30
    ld a, l
    rst $10
    ei
    ld a, [$5b08]
    ld bc, $bff4
    pop af
    cp a
    ld sp, hl
    cp a
    ld [$1f26], sp
    ld de, $c908
    rra
    inc hl
    nop
    ld [bc], a
    inc b
    inc b
    rst $38
    or $06
    ld b, $03
    inc bc
    ld [bc], a
    inc bc
    inc b
    rst $38
    ldh a, [$08]
    ld [$0c0c], sp
    inc c
    inc c
    dec bc
    rrca
    rst $10
    ret c

    ccf
    db $fc
    inc b
    rst $38
    or $83
    add e
    ld c, h
    rst $08
    di
    ld a, a
    inc b
    rst $38
    or $cc
    call z, $949c
    ld [hl], a
    ld a, a
    ld bc, $0f01
    rrca
    reti


    rst $18
    db $fc
    or a
    ld c, d
    ld a, a
    db $e3
    rst $38
    add $bf
    ld a, e
    ld a, [hl]
    ld a, l
    rst $10
    ei
    xor $67
    sbc h
    rst $38
    db $fd
    cp h
    di
    cp c
    rst $00
    rst $38
    rst $38
    adc a
    rst $38
    daa
    rst $38
    call nc, $d9bf
    cp a
    inc de
    rst $38
    and [hl]
    rst $38
    rst $08
    db $fd
    rla
    ld hl, sp-$41
    ldh a, [$e7]
    cp l
    jp nc, $e6fe

    cp [hl]
    ld a, [$e21e]
    ld e, $44
    cp h
    sbc b
    ld hl, sp+$70
    ldh a, [$36]
    cpl
    jr jr_031_6d1b

    add hl, de
    rra
    ld h, $3f
    ld c, h
    ld a, a
    sbc [hl]
    rst $38
    cp l
    rst $38
    add hl, sp
    cp $fe
    ld a, a
    cp a
    rst $28
    cp l
    rst $10
    cp [hl]
    res 4, l
    sbc $5e

jr_031_6d1b:
    db $e3
    db $fd
    inc hl
    rst $38
    db $10
    cp $f9
    rst $38
    jp hl


    ld a, a
    pop de
    cp $a3
    ld a, a
    adc $ff
    sub c
    ld a, a
    ret nz

    rst $38
    ld b, $b4
    ld a, h
    sub h
    ld a, h
    sbc d
    ld a, [hl]
    sbc c
    ld a, a
    dec e
    rst $38
    sbc h
    rst $38
    sbc $7f
    cp [hl]
    ld a, a
    add hl, sp
    cp $b3
    db $fc
    rst $18
    rst $18
    ld d, c
    ld e, [hl]
    ld l, a
    ld a, a
    dec [hl]
    ccf
    ccf
    ld a, [hl+]
    ccf
    ccf
    rst $38
    inc c
    rst $38
    inc bc
    adc a
    ldh a, [rIE]
    inc bc
    rst $18
    ldh [$3f], a
    rst $38
    and b
    ldh [$c0], a
    ret nz

    ei
    dec c
    or $1b
    xor $77
    cp c
    rst $08
    db $f4
    ccf
    rst $38
    ei
    ld b, $06
    nop
    nop
    jp c, Jump_031_5bbb

    ei
    ld a, [c]
    ld a, [c]
    ret z

    ld a, b
    xor b
    ld hl, sp-$10
    ret nc

    jr nz, jr_031_6d9e

    inc b
    rst $38
    or $80
    inc b
    ld [$0413], sp
    rst $38
    db $f4
    ld [bc], a
    ld [bc], a
    inc b
    inc c
    nop
    ld h, d
    ld h, e
    inc b
    rst $38
    ldh a, [rSB]
    ld bc, $0c04
    nop
    ld b, $07
    set 1, h
    scf
    cp $7e

jr_031_6d9e:
    ld e, a
    cpl
    dec sp
    ld [$c3ff], a
    cp a
    ld h, a
    ld a, l
    ld e, a
    ld a, b
    ld b, d
    ld a, l
    ld hl, $173f
    db $fd
    ld a, [hl+]
    rst $38
    or a
    ld hl, sp-$51
    cp $6f
    rst $30
    sub a
    ei
    set 7, h
    rst $20
    ccf
    inc b
    rst $38
    or $01
    ld bc, $0101
    ld [bc], a
    inc bc
    ld [de], a
    rra
    inc l
    ccf
    ld e, d
    ld a, l
    cp e
    db $fc
    or e
    db $fc
    ld [hl], e
    db $fc
    ld [hl], e
    db $fc
    pop af
    cp $fe
    ccf
    rst $38
    cpl
    db $fd
    sub a
    cp $8b
    ld a, l
    add $be
    ld h, e
    db $fd
    inc bc
    rst $38
    nop
    dec b
    rlca
    dec de
    rra
    rrca
    rrca
    inc b
    rst $38
    or $ef
    rst $38
    di
    db $fc
    rst $28
    rst $38
    ret nc

    rst $38
    inc b
    db $ca, $02, $00

    nop
    rst $18
    ldh [rIE], a
    jr nc, @+$01

    ld [$c4ff], sp
    cpl
    ldh a, [$9b]
    db $fc
    rst $30
    rst $30
    inc b
    and b
    rst $38
    ccf
    nop
    ld [bc], a
    inc b
    inc b
    rst $38
    ld hl, sp+$03
    inc bc
    adc h
    adc a
    inc b
    rst $38
    ld hl, sp-$10
    ldh a, [$0c]
    db $fc
    ld bc, $0101
    ld bc, $ff04
    ldh a, [$0e]
    ld c, $11
    rra
    jr jr_031_6e4b

    inc e
    rra
    and a
    cp e
    ld a, a
    rst $20
    cp a
    rst $18
    ld d, a
    ld a, [hl]
    or a
    cp $dd
    rst $28
    ld l, [hl]
    rst $18
    ccf
    db $ed
    pop af
    rst $38
    xor a
    rst $18
    db $dd
    cp a
    ld h, [hl]
    ld a, a
    inc hl
    ccf
    inc [hl]
    ccf
    ccf

jr_031_6e4b:
    ccf
    ld d, e
    ld a, a
    rst $20
    rst $38
    cp a
    rst $20
    cp a
    rst $38
    or e
    rst $38
    ld c, $ff
    ld e, $ff
    ld [hl-], a
    rst $38
    db $fc
    rst $38
    adc a
    rst $38
    ld [hl], a
    ei
    jp c, $bee6

    ld a, [$fef6]
    call nc, $bcfc
    db $fc
    ld l, d
    cp $02
    inc bc
    dec b
    rlca
    add hl, bc
    rrca
    dec bc
    rrca
    inc de
    rra
    daa
    ccf
    ld l, $3f
    ld c, [hl]
    ld a, a
    set 7, a
    set 7, l
    db $eb
    rst $38
    cp e
    db $ed
    cp e
    rst $28
    ld a, e
    xor l
    ld a, e
    xor a
    rst $30
    inc l
    ld hl, sp+$3f
    scf
    rst $28
    db $f4
    ccf
    rst $30
    db $ec
    rst $30
    db $fc
    scf
    db $ec
    scf
    db $fc
    ei
    call z, $f868

jr_031_6ea0:
    xor b
    ld hl, sp-$2c
    cp h
    call nc, $d2bc
    cp [hl]
    ld sp, hl
    sbc a
    cp c
    rst $18
    cp h
    rst $18
    ld c, a
    ld a, [hl]
    sbc a
    cp $9d
    cp $ad
    xor $c5
    add $4e
    ld c, a
    dec d
    dec de
    ld a, a
    ld a, a
    db $fd
    daa
    db $ec
    scf
    ld [$fd37], a
    inc de
    cp $11
    rst $38
    ld [$e0df], sp
    ccf
    ccf
    rst $28
    jr c, jr_031_6ea0

    jr c, jr_031_6eea

    ld hl, sp-$11
    ldh a, [rIE]
    nop
    ld a, $c1
    db $fd
    inc bc
    rst $38
    rst $38
    cp h
    rst $18
    xor [hl]
    rst $18
    xor [hl]
    rst $18
    xor e
    db $db
    xor c
    reti


    cp c
    ld sp, hl

jr_031_6eea:
    call nc, Call_031_7fec
    ld a, a
    nop
    nop
    add b
    inc b
    ld a, [c]
    inc bc
    inc b
    rst $38
    ld a, [c]
    pop af
    rst $38
    sbc a
    rst $28
    ld l, [hl]
    ld d, a
    ld e, c
    ld l, a
    jr nc, jr_031_6f40

    inc e
    rra
    inc b
    ld c, h
    nop
    rst $28
    rst $38
    db $ed
    rst $38
    ld l, e
    rst $38
    add a
    rst $38
    ret nz

    rst $38
    ld h, a
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    adc a
    rst $38
    ld a, e
    rst $30
    db $76
    jp z, $fcfc

    call nc, $a4fc
    db $fc
    ld c, h
    db $fc
    ld a, [$fcfe]
    ccf
    inc [hl]
    inc b
    sub e
    add hl, bc
    xor b
    inc b
    and c
    dec bc
    pop af
    rst $38
    rst $18
    xor a
    xor e
    rst $18
    db $dd
    cp a
    ld l, [hl]
    ld a, a
    jr nc, @+$41

    ld a, $3f
    ld d, [hl]
    ld a, a

jr_031_6f40:
    rst $20
    rst $38
    ld a, [hl]
    rst $20
    ld h, l
    rst $38
    ld a, [hl]
    rst $38
    ld h, $ff
    ld h, $ff
    ld a, h
    inc b
    ld e, l
    ld bc, $fbb5
    db $eb
    push af
    db $fd
    ei
    rst $10
    rst $38
    and d
    cp $74
    db $fc
    ld c, $fe
    rst $10
    rst $38
    db $db
    inc b
    add e
    add hl, bc
    ld sp, hl
    ccf
    dec [hl]
    rst $28
    or $3f
    rst $30
    db $ed
    inc b
    sbc b
    inc b
    add sp, $04
    and c
    dec bc
    inc b
    and b
    rst $38
    dec a
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0002
    ld bc, $0000
    inc bc
    inc bc
    dec b
    rlca
    ld b, $07
    rrca
    dec c
    nop
    nop
    add b
    add b
    pop hl
    ld h, c
    rst $38
    sbc a
    ld e, h
    ld h, a
    or h
    cp a
    call Call_031_4ecf
    rst $08
    inc bc
    inc bc
    db $e4
    rst $20
    dec de
    rst $38
    rst $20
    cp $f3
    sbc a
    db $fd
    xor a
    ld [hl], e
    rst $38
    dec e
    cp $17
    dec e
    ld [hl], $3f
    jr c, jr_031_6fdd

    add hl, sp
    cpl
    dec [hl]
    ccf
    rla
    rra
    rrca
    add hl, bc
    ld b, $06
    ld a, b
    rst $38
    ld [hl], $ff
    ld a, c
    rst $18
    ld [hl], h
    rst $18
    xor $ff
    ld d, d
    rst $38
    scf
    rst $38
    sbc [hl]
    rst $38
    cpl
    ei
    rst $38
    rst $28
    cp a
    rst $20
    ld [$7ff5], a
    rst $38
    add [hl]
    rst $38
    cp e
    rst $38
    db $fd
    rst $20
    ld a, l
    ld a, a
    ld e, $1f
    dec a

jr_031_6fdd:
    ccf
    ld a, b
    ld a, a
    ei
    rst $28
    cp h
    rst $38
    ld c, b
    ld a, a
    ld c, c
    ld a, a
    ld a, [hl]
    res 7, h
    rst $38
    ld l, e
    db $fd
    cp a
    ei
    ld l, a
    rst $30
    ei
    rst $30
    db $dd
    ld_long a, $ff2f
    ld [hl-], a
    ccf
    cpl
    ccf
    ld [hl+], a
    ccf
    ld d, $1f

Call_031_7000:
    ld l, e
    ld a, a
    db $fc
    cp a
    di
    rst $18
    ld a, h
    ld a, h
    ld [hl], h
    rst $38
    adc e
    adc a
    call nz, Call_031_43c7
    jp $f0b0


    ld d, b
    ldh a, [$f8]
    add sp, $38
    jr c, jr_031_701b

    nop
    inc b

jr_031_701b:
    ld [bc], a
    db $fc
    ldh a, [$03]
    inc bc
    inc b
    rlca
    ld [bc], a
    db $10
    ld b, $34
    ccf
    adc l
    adc a
    ld [bc], a
    ld e, $0e
    ld c, $0f
    rla
    dec e
    rla
    dec e
    rra
    dec de
    rrca
    dec c
    dec bc
    rrca
    dec b
    ld b, $03
    inc bc
    jr c, @+$01

    ld c, [hl]
    rst $38
    jp hl


    cp a
    call z, $9e7f
    rst $38
    ld a, [c]
    rst $38
    rst $30
    ld a, a
    sbc [hl]
    rst $38
    ccf
    ei
    rst $28
    rst $38
    cp a
    rst $28
    rst $38
    rst $20
    ld l, d
    push af
    sbc a
    ld [bc], a
    ld e, e
    rrca
    ld [bc], a
    ld a, a
    ld [bc], a
    ld [hl], c
    ld bc, $fbb7
    ld l, a
    rst $30
    db $fd
    ld_long a, $ffd7
    dec hl
    rst $38
    ld [bc], a
    nop
    ld [bc], a
    inc a
    inc a
    rra
    inc de
    inc c
    rrca
    ld c, $0f
    ld sp, $023f
    db $10
    ld [$024d], sp
    dec e
    dec c
    dec a
    xor $7c
    ld e, a
    ldh a, [$bf]
    db $e4
    rst $38
    add hl, sp
    ccf
    add hl, sp
    cpl
    ccf
    cpl
    ld sp, $2031
    jr nz, jr_031_70c8

    rst $38
    ld e, $ff
    ld a, l
    rst $20
    ld a, h
    rst $30
    ld [bc], a
    ld c, b
    inc b
    ccf
    db $eb
    rst $38
    rst $20
    xor d
    push af
    rst $18
    rst $38
    ld a, c
    ld [bc], a
    ld e, c
    rrca
    inc b
    ld a, a
    res 7, [hl]
    rst $38
    ld e, h
    rst $38
    ldh a, [rIE]
    ld c, [hl]
    rst $38
    ld sp, hl
    rst $38
    sub $ff
    dec hl
    rst $38
    ld [bc], a
    and b
    rst $38
    ld c, l
    nop
    ld [bc], a
    db $10
    rrca
    rrca
    ld a, [de]
    ld d, $34
    inc l
    inc [hl]
    inc l
    ld [hl], d
    ld c, [hl]

jr_031_70c8:
    db $10
    ld [$0102], sp
    db $10
    db $10
    inc bc
    db $10
    ld a, [$7ef2]
    ld a, [hl]
    db $10
    db $fc
    ldh a, [$80]
    add b
    ld h, e
    db $e3
    sbc [hl]
    rst $38
    ld d, e
    ld a, [hl]
    scf
    ccf
    rra
    dec e
    ld a, [hl-]
    ld h, $3a
    ld h, $19
    rla
    add hl, de
    rla
    dec c
    dec bc
    ld c, $0b
    dec b
    rlca
    ld a, [bc]
    rrca
    add c
    rst $38
    ld e, b
    ld a, a
    ld a, $3f
    rra
    rra
    db $fd
    rst $38
    db $f4
    sbc a
    ld a, [hl+]
    rst $38
    ld [hl], e
    rst $38
    xor d
    cp a
    ld d, a
    db $fc
    dec a
    cp $23
    rst $38
    pop bc
    rst $38
    db $e3
    rst $38
    cp $ff
    sub l
    rst $38
    add hl, bc
    ld c, $09
    rrca
    dec b
    rlca
    ld [bc], a
    inc bc
    db $10
    ld d, $04
    xor a
    rst $38
    scf
    rst $30
    daa
    rst $20
    jp nc, Jump_000_34f3

    rst $10
    db $fc
    rst $28
    ld [de], a
    rra
    ld [de], a
    rra
    rst $28
    rst $38
    db $fd
    rst $38
    rst $20
    rst $38
    inc h
    rst $38
    ld a, e
    rst $38
    sub h
    rst $38
    sbc b
    rst $38
    ld l, a
    rst $28
    inc de
    rra
    inc c
    rrca
    add hl, bc
    rrca
    dec c
    rrca
    inc de
    rra
    ld a, h
    ld a, a
    rst $38
    sub e
    db $fc
    db $fc
    add h
    add a
    add a
    add a
    ld b, e
    jp $c040


    or b
    ldh a, [$f8]
    add sp, $18
    jr @+$12

    db $fc
    ldh a, [$03]
    inc bc
    rlca
    inc b
    inc c
    dec bc
    ld [$1e0f], sp
    rra
    ld de, $1011
    jr nz, jr_031_7170

    ret nz

    ld b, b

jr_031_7170:
    ldh [rNR41], a
    ld [hl], b
    sub b
    inc a
    db $fc
    adc $f2
    ld b, e
    ld a, l
    db $10
    db $fc
    ldh a, [rSB]
    ld bc, $c7c6
    ld a, c
    rst $38
    jp z, $ec7e

    db $fc
    ld sp, hl
    cp c
    cp e
    db $fd
    or l
    rst $38
    or l
    rst $38
    db $fd
    rst $38
    ld [hl-], a
    ld a, $7a
    ld a, [hl]
    sub l
    rst $38
    dec d
    rst $38
    ld d, [hl]
    rst $38
    ld [$bc3f], a
    ld a, a
    add $ff
    add e
    rst $38
    rst $00
    rst $38
    ld a, a
    rst $38
    xor c
    rst $38
    ld a, $fe
    ld d, h
    db $fc
    ld c, h
    db $fc
    ret c

    ld hl, sp-$10
    ldh a, [$c0]
    ret nz

    add b
    add b
    add b
    add b
    rst $30
    rst $38
    cp a
    db $10
    add e
    ld bc, $ffde
    add hl, hl
    rst $38

jr_031_71c3:
    add hl, de
    rst $38
    or $f7
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ld b, b
    ret nz

    jr nz, @-$1e

    jr nc, jr_031_71c3

    ld c, b
    ld hl, sp+$48
    ld hl, sp-$55
    ei
    call nc, Call_031_787f
    rst $38
    adc a
    rst $38
    ld de, $a1ff
    cp $e2
    db $fd
    ld l, l
    ld a, [$fe06]
    ld a, [hl-]
    cp $fe
    cp $bc
    db $fc
    jr nc, @-$0e

    ldh a, [$f0]
    ret nc

    ldh a, [$a0]
    ldh [$73], a
    rst $38
    db $10
    ld [hl], b
    ld [bc], a

Call_031_71fc:
    call nc, $3cf7
    rst $18
    ld a, [c]
    rst $38
    ld [de], a
    rra
    sub l
    rst $38
    db $10
    add b
    inc b
    ei
    rst $38
    sub h
    rst $38
    ld e, b
    rst $38
    ld l, l
    ld a, [$f5ff]
    ld a, d
    rst $20
    db $f4
    rst $08
    ld h, c
    sbc $e7
    sbc b
    rst $38
    add c
    ld a, [hl]
    rst $00
    and b
    ldh [$60], a
    and b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [$e0], a
    sub b
    ldh a, [rNR10]
    adc d
    db $10
    inc de
    rra
    inc e
    rra
    db $10
    sub h
    nop
    dec de
    db $10
    sbc c
    inc bc
    rst $28
    rst $28
    call nz, Call_031_47c7
    rst $00
    ld h, e
    db $e3
    db $10
    xor b
    inc b
    rst $38
    rst $38
    ld b, l
    rst $00
    call $9bcf
    sbc a
    ld a, $2f
    ld sp, $1031
    db $fc
    ldh a, [$60]
    ldh [rNR41], a
    ldh [$60], a
    ldh [$b0], a
    ldh a, [$7c]
    db $fc
    cp $92
    db $10
    ld e, $02
    db $10
    pop de
    rra
    dec de
    nop
    ld [bc], a
    ld [bc], a
    ld b, $06
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld a, c
    ld a, c
    ld b, [hl]
    ld a, a
    ld e, e
    ld h, [hl]
    scf
    ld a, [hl+]
    rlca
    rlca
    sbc e
    sbc h
    ld a, a
    ldh a, [$9f]
    ld sp, hl
    ld d, [hl]
    rst $38
    ei
    ld h, a
    db $fd
    db $d3
    or a
    ld hl, sp+$26
    dec sp
    rla
    add hl, de
    rla
    add hl, de
    inc de
    dec e
    dec bc
    dec c
    dec bc
    dec c
    add hl, bc
    rrca
    add hl, bc
    ld c, $99
    cp $57
    ld sp, hl
    db $dd
    or $6a
    rst $38
    cp a
    ld e, l
    ld l, $df
    xor e
    call c, $dbae
    inc b
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    ld [bc], a
    ld b, [hl]
    nop
    inc b
    rlca
    add hl, bc
    ld c, $ed
    jp c, $fefd

    db $e3
    cp $41
    rst $38
    ld h, a
    cp a
    cp $3f
    db $fd
    ld a, $fe
    ccf
    ld l, [hl]
    or a
    ld a, a
    rst $38
    rst $20
    rst $38
    add l
    rst $38
    dec e
    ei
    rst $38
    ld sp, hl
    ld a, [hl]
    ld sp, hl
    rst $38
    ld hl, sp+$09
    ld c, $0b
    dec c
    inc de
    dec e
    ld h, $3b
    ld c, e
    db $76
    ld b, h
    ld a, a
    dec hl
    ccf
    rra
    rra
    rst $28
    ccf
    and $3f
    ld a, [c]
    ccf
    ret c

    ld a, a
    add $7f
    and b
    rst $38
    ld hl, sp-$01
    rrca
    rrca
    ld [bc], a
    ld b, b
    ld [$0605], sp
    dec bc
    inc c

Call_031_72ff:
    ld [bc], a
    ld d, b
    rrca
    add hl, bc
    ld a, a
    ld hl, sp-$01
    ld hl, sp+$0b
    inc c
    inc de
    dec e
    ld h, a
    ld a, c
    adc [hl]
    di
    sbc l
    and $4b
    ld a, l
    inc sp
    ccf
    ld e, $1e
    rst $38
    ccf
    xor $3f
    db $e4
    ld a, a
    ldh a, [$7f]
    adc [hl]
    rst $38
    ld b, b
    rst $38
    ldh a, [rIE]
    rra
    rra
    ld [bc], a
    ld b, b
    nop
    rlca
    ld [bc], a
    ld b, a
    ld bc, $0e0b
    dec bc
    inc c
    rla
    jr jr_031_7337

    ld d, b
    inc b

jr_031_7337:
    rst $20
    ccf
    ld [bc], a
    ld e, d
    ld a, [bc]
    rra
    ld sp, hl
    rst $38
    ld hl, sp+$02
    cp h
    nop
    ld l, a
    ld [hl], b
    sbc a
    pop hl
    rst $38
    add d
    cp a
    call z, Call_031_7977
    ld l, $33
    rra
    rra
    nop
    nop
    rst $38
    ld a, a
    call c, $c67f
    ld a, a
    ldh [rIE], a
    inc a
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ccf
    ccf
    ld [bc], a
    and b
    rst $38
    ld c, l
    ld [bc], a
    adc a
    rra
    ld c, l
    ld [bc], a
    rst $28
    inc e
    nop
    ld [bc], a
    ld bc, $ff01
    ld hl, sp+$0f
    rrca
    inc d
    rra
    jr nz, jr_031_739a

    jr nc, jr_031_73ac

    jr c, jr_031_73b6

    inc e
    inc e
    ld e, $1e
    dec bc
    rrca
    pop af
    rst $38
    inc a
    rst $38
    ld [$1808], sp
    jr jr_031_73c5

    jr c, jr_031_7400

    ld [hl], c
    ld a, [c]
    di
    and h
    rst $20
    rra
    rst $38
    ld a, b
    rst $38
    inc e
    inc e

jr_031_739a:
    ld [hl], b
    ld [hl], b
    sub b
    ldh a, [rNR41]
    ldh [rSB], a
    ld [hl], $00
    ldh [$e0], a
    ld d, b
    ldh a, [rNR24]
    rra
    inc de
    rra
    inc de

jr_031_73ac:
    rra
    rla
    rra
    ld d, $1f
    inc d
    rra
    inc d
    rra
    inc h

jr_031_73b6:
    ccf
    set 7, a
    adc a
    ei
    and a
    rst $38
    ret c

    ld a, a
    rst $20
    cp a
    ld a, b
    rst $18
    ld [hl], a
    rst $38

jr_031_73c5:
    adc e
    db $fc
    ld l, $3f
    dec l
    ccf
    jr z, @+$41

    jr z, jr_031_740e

    ld d, d
    ld a, a
    ld d, h
    ld a, a
    ld d, h
    ld a, a
    ld c, b
    ld a, a
    rlca
    rst $38
    ld a, [bc]
    rst $38
    rst $30
    cp $5a
    db $fd
    ld l, e
    call nc, Call_031_7801
    nop
    dec [hl]
    ld [$7f48], a
    jr z, jr_031_7429

    inc a
    ccf
    inc e
    rra
    ld a, [bc]
    rrca
    rrca
    rrca
    dec d
    rra
    ccf
    ccf
    or [hl]
    jp hl


    sbc e
    db $f4
    ld e, e
    db $f4
    inc l
    ei
    rra
    db $fc

jr_031_7400:
    add a
    rst $38
    ld [hl], b
    rst $38
    rst $28
    rst $28
    set 7, a
    adc a
    db $fd
    ld bc, $0854
    nop

jr_031_740e:
    nop
    db $10
    db $10
    jr nc, @+$32

    jr z, jr_031_744d

    inc h
    inc a
    ld [de], a
    ld e, $f2
    cp $29
    rst $38
    sbc c
    rst $38
    ret


    rst $38

jr_031_7421:
    jp z, $eafe

jr_031_7424:
    cp $6c
    db $fc
    jr z, jr_031_7421

jr_031_7429:
    jr z, @-$06

    inc h
    db $fc
    sbc [hl]
    cp $c9
    rst $38
    ret z

    rst $38
    add sp, -$01
    ld l, e
    rst $38
    inc l
    db $fc
    ld bc, $00cc
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_031_7424

    sub b
    ldh a, [rSVBK]
    ld [hl], b
    jr @+$1a

    ld [$0108], sp

jr_031_744d:
    rst $38
    ld a, [c]
    inc bc
    inc bc
    inc e
    rra
    ld h, b
    ld a, a
    pop af
    rst $38
    ld a, [hl+]
    cp $01
    rst $38
    ld a, [c]
    add b
    add b
    ld h, b
    ldh [rSVBK], a
    ldh a, [$90]
    sub b
    ld [$9c08], sp
    db $fc
    call z, $ccfc
    db $fc
    add sp, -$08
    ld l, b
    ld hl, sp+$01
    jp z, $2002

    jr nz, jr_031_74ae

    jr c, jr_031_74b6

    ld a, $1b
    rra
    ld de, $3c1f
    ccf
    db $eb

jr_031_7480:
    rst $38
    ld c, a
    ei
    ld [$3808], sp
    jr c, jr_031_7480

    ld hl, sp-$4f
    pop af
    ld [de], a
    di
    ld a, h
    rst $38
    xor a
    rst $38
    db $e4
    cp a
    and a
    rst $38
    cp b
    rst $38
    cp a
    rst $28
    cp a
    ld_long $ffd5, a
    ld e, a
    ld_long a, $ff67
    sbc b
    rst $38
    jr nz, @+$22

    ld a, $3e
    inc sp
    ccf
    dec a
    ccf
    ld l, e
    ld a, a
    adc a

jr_031_74ae:
    rst $38
    or b
    rst $38
    cp a
    rst $38
    ld [$f808], sp

jr_031_74b6:
    ld hl, sp-$68
    ld hl, sp+$79
    ld sp, hl
    xor [hl]
    rst $38
    ld [c], a
    rst $38
    dec de
    rst $38
    ld a, [$bfff]
    ld [$efbf], a
    cp a
    rst $38
    cp b
    rst $38
    or b
    rst $38
    ld d, l
    rst $38
    ld e, a
    ld_long a, $ffa7
    jr @+$01

    rrca
    ld bc, $0973
    ld bc, $ffa0
    ld c, l
    ld bc, $1cef
    nop
    ld [bc], a
    ld a, [bc]
    jr c, jr_031_751d

    ld a, h
    ld b, h
    adc $b2
    adc $b2
    cp $8a
    rst $38
    rst $08
    or h
    rst $38
    call nz, $0eff
    ld c, $15
    rra
    rra
    dec de
    dec d
    rra
    ld a, e
    ld [hl], l
    ld e, a
    ld l, d
    push af
    rst $38
    ld l, $f5
    ld a, [bc]
    ld hl, sp-$0c
    ret nz

    ret nz

    ld e, a
    rst $18
    ldh [rIE], a
    add b
    rst $38
    ld a, [bc]
    or $f6
    inc b
    inc b
    push bc
    push bc
    ld h, $e6
    push af
    rst $38
    ld a, l
    ld a, a
    ld [hl], h
    ld a, a

jr_031_751d:
    inc [hl]
    ccf
    ld d, $1f
    rrca
    rrca
    ld c, $0f
    rrca
    dec c
    or l
    ei
    ld l, [hl]
    rst $38
    cp a
    push af
    cp e
    rst $38
    db $db
    db $e4
    rst $38
    sbc a
    ld [$aa7f], a
    rst $38
    or b
    rst $38
    pop de
    rst $38
    and d
    rst $38
    and a
    rst $38
    ld l, d
    cp $fe
    ld a, $ee
    sbc $be
    or $e6
    and $fa
    cp $27
    rst $38
    db $fc
    db $fc
    ld a, [bc]
    ld hl, sp-$0c
    inc bc
    ld [bc], a

jr_031_7554:
    dec b
    rlca
    rrca
    ld c, $0f
    ld [$131c], sp
    rra
    db $10
    dec e
    ld [de], a
    rrca
    add hl, bc
    cp [hl]
    ei
    db $ed
    ei
    rst $38
    jr c, jr_031_7554

    inc a
    rst $10
    inc a
    ld a, a
    sbc h
    rst $30
    ld e, h
    ld a, l
    cp [hl]
    inc c
    rrca
    dec bc
    rrca
    rla
    rra
    ld a, [bc]
    and h
    nop
    inc d
    inc e
    ld [$0808], sp

jr_031_7580:
    ld [$fee5], sp
    rst $20
    cp $f7
    cp $f7
    cp $fa
    ei
    jp c, $09db

    add hl, bc
    ld bc, $0a01
    or $f6
    rra
    rra
    ld h, b
    ld a, a
    ld a, [bc]
    ld l, $08
    ld a, [bc]
    ld h, $00
    jr nz, jr_031_7580

    pop bc
    rst $38
    ld sp, hl
    rst $38
    or h
    rst $38
    add h
    rst $38
    ld c, d
    ld a, a
    scf
    ccf
    ld e, $1f
    rrca
    dec c
    ld h, b
    ldh [$c0], a
    ret nz

    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$50], a
    ld [hl], b
    jr z, @+$3a

    inc d
    inc e
    ld a, [de]
    ld e, $16
    ld d, $86
    add [hl]
    add h
    add h
    ret nz

    ld b, b
    ld a, [bc]
    ld [$8010], sp
    add b
    inc bc
    inc bc
    dec b
    rlca
    rlca
    ld b, $05
    rlca
    ld e, $1d
    rst $10
    jp c, $ff3d

    dec bc
    db $fd
    jr nz, jr_031_7620

    db $10
    rra
    jr jr_031_7604

    ld c, $0f
    dec b
    rlca
    dec b
    rlca
    rlca
    rlca
    dec b
    rlca
    ld l, l
    cp $5b
    rst $38
    cpl
    db $fd
    ld l, $ff
    or [hl]
    ld sp, hl
    rst $38
    rst $20
    cp d
    rst $18
    ld [$0a7f], a
    ld a, [hl+]
    db $10
    inc c

jr_031_7603:
    rrca

jr_031_7604:
    ld c, $0b
    ld e, $13
    rra
    ld de, $8c0a
    dec b
    cp b
    db $eb
    db $fc
    rst $10
    cp h
    rst $38
    call c, $9c0a
    nop
    ld a, [bc]
    nop
    dec b
    add d
    ld a, h
    ld b, h
    jr c, @+$3a

    nop

jr_031_7620:
    nop
    ld [$040f], sp
    rlca
    rrca
    rrca
    ld a, [bc]
    add [hl]
    ld b, $7d
    rst $18
    or a
    rst $18
    rst $38
    inc e
    rst $10
    inc a
    db $eb
    inc a
    cp $39
    rst $28
    ld a, [hl-]
    cp [hl]
    ld a, l
    ret nc

    ld [hl], b
    ldh a, [$f0]
    ret z

    ld a, b
    add sp, -$08
    xor b
    ld hl, sp-$08
    jr jr_031_7603

    ld c, h
    db $f4
    sub h
    inc d
    rra
    rla
    rra
    cpl
    ccf
    cpl
    ccf
    dec hl
    dec sp
    jr nc, jr_031_7686

    jr nz, jr_031_7678

    jr nz, jr_031_767a

    ld a, [bc]
    or b
    inc b
    sbc $df
    ld a, [de]
    dec de
    ld a, [bc]
    cp h
    nop
    inc d
    ld a, [bc]
    and e
    ld de, $7f5f
    or b
    ldh a, [$0a]
    ld a, [c]
    nop
    nop
    nop
    ld a, [bc]
    or b
    inc b
    ld a, [hl]
    ld a, a
    ld a, [bc]
    cp d

jr_031_7678:
    ld [de], a
    ld a, [bc]

jr_031_767a:
    and b
    rst $38
    dec c
    nop
    ld [bc], a
    ld bc, $3b3b
    dec [hl]
    ld l, $1b
    inc d

jr_031_7686:
    rra
    rra
    ld a, $27
    ld a, a
    ld e, d
    ld l, a
    ld [hl], h
    dec hl
    scf
    ld d, a
    ld a, h
    sbc a
    rst $38
    db $f4
    rst $38
    di
    sbc a
    ret c

    cp a
    rst $38
    rst $38
    or e
    rst $38
    ld a, a
    ld a, a
    ld [$f23e], a
    cp $29
    rst $38
    ret


    rst $38
    dec a
    rst $38
    call $b5ff
    rst $08
    rst $38
    rst $38
    ld b, $06
    rlca
    dec b
    dec b
    ld b, $07
    rlca
    rrca
    inc c
    rrca
    ld [$1e1d], sp
    inc de
    ld e, $66
    ld h, [hl]
    cp $9a
    ld l, d
    sub [hl]
    cp $fe
    push af
    rra
    rst $38
    ld l, e
    cp a
    pop de
    rst $28
    sbc a
    ld de, $0e1f
    rrca
    db $10
    rra
    jr nz, jr_031_7717

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    rst $38
    rst $38
    sbc [hl]
    ld a, [c]
    cp $fe
    inc a
    db $fc
    ld e, $f2
    ld [hl], $fa
    ld a, $fe
    rst $20
    ei
    rst $38
    rst $38
    ld de, $1e1f
    ld bc, $0355
    add c
    rst $38
    add c
    ld bc, $035d
    inc h
    db $fc
    ld a, d
    sbc $f6
    sbc [hl]
    cp $fe
    dec sp
    db $fd
    rst $38
    rst $38
    ld bc, $0200
    add hl, de
    ld d, $2f
    ccf
    ld a, a
    ld b, b
    ld a, a
    ld e, a
    jr nc, jr_031_7754

    ld e, h
    ld a, a

jr_031_7717:
    ld b, e
    ld a, a
    and b
    rst $38
    ldh [rIE], a
    db $e4
    cp a
    call nz, $c4ff
    rst $38
    ld a, a
    ld a, a
    ld a, [hl-]
    cp $c2
    cp $02
    cp $81
    rst $38
    adc c
    rst $38
    ld b, l
    rst $38
    inc hl
    rst $38
    rst $38
    rst $38
    ld bc, $ffa0
    ld c, l
    ld bc, $1f1f
    ld c, l
    ld bc, $1f7f
    ld c, l
    ld bc, $1fdf
    dec c
    nop
    ld bc, $0301
    inc bc
    dec c
    rrca
    dec de
    inc d
    rra
    rra
    ccf
    ld a, [hl+]
    cpl
    ld a, [hl-]

jr_031_7754:
    rra
    inc d
    dec de
    rla
    cpl
    inc a
    dec h
    ld a, $27
    ld a, $29
    ccf
    cpl
    ccf
    ld c, c
    ld a, a
    ld e, a
    ld a, a
    ld a, a
    ld a, a
    add sp, $78
    ld c, b
    ld hl, sp-$38
    ld hl, sp+$28
    ld hl, sp-$1c
    db $fc
    or h
    db $fc
    ld [hl], h
    sbc h
    db $fc
    db $fc
    ld bc, $f0fe
    ld b, $05
    rlca
    rlca
    dec bc
    inc c
    rrca
    ld [$0c0b], sp
    rlca
    rlca
    ldh [$e0], a
    ld e, b
    ld hl, sp-$14
    inc d
    db $fc
    db $fc
    db $fc
    ld d, h
    db $fc
    ld d, h
    cp $2a
    call c, Call_000_08bc
    rrca
    ld [$0c0f], sp
    rrca
    db $10
    rra
    ld bc, $0056
    jr nz, jr_031_77e3

    ccf
    ccf
    db $fc
    call nz, $f42c
    inc a
    db $f4
    ld l, b
    ld hl, sp+$44
    db $fc
    db $fc
    db $fc
    adc $f6
    cp $fe
    ld bc, $0050
    inc d
    rra
    ld [de], a
    ld bc, $0159
    jr nz, @+$41

    ld a, a
    ld a, a
    ld bc, $0260
    inc l
    db $fc
    ld h, h
    db $fc
    ld a, h
    db $fc
    or [hl]
    ld a, [$fefe]
    ld bc, $0200
    dec de
    inc e
    cpl
    scf
    dec l
    ld [hl-], a
    rla
    jr jr_031_77fb

    rra
    inc [hl]
    ccf
    jr nz, jr_031_7820

    jr nc, @+$41

jr_031_77e3:
    inc l
    ccf
    inc hl
    ccf
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ccf
    ccf
    ld d, b
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$28
    ld hl, sp-$3c
    db $fc
    inc b
    db $fc
    inc b
    db $fc

jr_031_77fb:
    ld bc, $002e
    ld bc, $0fc1

Call_031_7801:
    dec hl
    nop
    ld bc, $0303
    rst $38
    ld a, [c]

Call_031_7808:
    add hl, sp
    add hl, sp
    ld a, $3f
    inc e
    rra
    dec de
    rra
    ld d, $1d
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    add b
    add b
    adc $ce
    cp [hl]
    cp $1c
    db $fc
    ld l, h
    db $fc

jr_031_7820:
    or h
    call c, $1e17
    daa
    ccf
    ld b, e
    ld a, a
    ld b, b
    ld a, a
    ld [hl], b
    ld e, a
    ld [hl], $3f
    rrca
    add hl, bc
    rrca
    rrca
    ld a, [c]
    cp [hl]
    pop af
    rst $38
    db $e3
    db $fd
    rlca
    rst $38
    inc b
    db $fc
    inc b

jr_031_783d:
    db $fc
    ld [$fcf8], sp
    db $fc
    inc bc
    rst $38
    ldh a, [rNR32]
    inc e
    rrca
    rrca
    ld c, $0f
    ld c, $0f
    ld [hl-], a
    ccf
    ld b, b
    ld a, a
    inc c
    inc c
    inc e
    inc e
    jr nz, @+$22

    ret nz

    ret nz

    ld b, b
    ret nz

    jr nz, jr_031_783d

    ld [hl], b
    ldh a, [$d0]
    or b
    add b
    rst $38
    ret c

    cp a
    ldh [rIE], a
    jr nz, jr_031_78a8

    inc bc
    ld h, [hl]
    nop
    db $10
    rra
    ccf
    ccf
    db $fc
    call c, $fafe
    ld [hl], h

jr_031_7875:
    db $fc
    ld [$03f8], sp
    halt
    inc e
    db $fc
    ldh a, [$f0]

Call_031_787f:
    inc bc
    rst $38
    ldh a, [$0e]
    ld c, $07
    inc bc
    add [hl]
    ld bc, $0705
    ld [$030f], sp
    add d
    nop
    ld d, $16
    ldh [$e0], a
    jr nz, jr_031_7875

    db $10
    ldh a, [$38]
    ld hl, sp+$68
    ret c

    db $10
    rra
    inc h
    ccf
    inc h
    ccf
    inc l
    scf
    jr c, jr_031_78e4

    db $10
    rra
    add hl, bc

jr_031_78a8:
    rrca
    rlca
    rlca
    ld a, h
    db $ec
    ld a, h
    db $fc
    inc a
    db $fc
    inc b
    db $fc
    ld [hl], h
    db $fc
    db $f4
    sbc h
    add sp, $38
    ldh a, [$f0]
    ld b, $06
    ld b, $06
    ld bc, $7301
    ld [hl], e
    ld a, h
    ld a, a
    jr c, jr_031_7906

    jr nc, jr_031_7908

    jr nz, jr_031_790a

    inc bc

jr_031_78cc:
    rst $38
    ld a, [c]

jr_031_78ce:
    sbc h
    sbc h
    ld a, h
    db $fc
    jr c, jr_031_78cc

    jr jr_031_78ce

    ld [$40f8], sp
    ld a, a
    add b
    rst $38
    ldh [$03], a
    ld h, e
    inc bc
    inc bc
    ld l, h
    nop
    inc b

jr_031_78e4:
    db $fc
    ld [bc], a
    cp $12
    cp $0e
    ld a, [$fc0c]
    ld l, b
    ld hl, sp-$10
    sub b
    ldh a, [$f0]
    nop
    ld bc, $0301
    inc bc
    inc c
    rrca

jr_031_78fa:
    ld d, $1f

Call_031_78fc:
    dec l
    dec sp
    ld a, $31
    dec l
    ld [hl-], a
    ld e, l
    ld [hl], d
    ld a, e
    ld e, h

jr_031_7906:
    ret nz

    ret nz

jr_031_7908:
    jr nc, jr_031_78fa

jr_031_790a:
    ld l, b
    ld hl, sp-$4c
    call c, $8c7c
    or h
    ld c, h
    cp d

jr_031_7913:
    ld c, [hl]
    sbc $3a
    scf
    ld a, $1b
    inc e
    ccf
    ccf
    ld bc, $f6f6
    db $ec

jr_031_7920:
    ld a, h
    ret c

    jr c, jr_031_7920

    db $fc
    ld bc, $ffa0
    ld c, l
    ld bc, $0f95
    ld c, l
    ld bc, $06f5
    nop
    ld bc, $0001
    nop
    ld c, $0f
    ld e, $11
    add hl, sp
    ld h, $36
    cpl
    ld a, c
    ld c, a
    ld l, b
    ld e, a
    ld a, a
    ld d, b
    nop
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    jr c, jr_031_7913

    ret c

    add sp, $3c
    db $e4
    inc l
    db $f4
    call c, Call_031_7f34
    ld d, [hl]
    ld [hl], a
    ld e, b
    cp a
    rst $38
    ret nz

    ret nz

    ld bc, $f4fa
    cp $76
    sbc $32
    db $fd
    rst $38
    inc bc
    inc bc
    ld bc, $ffa0
    ld c, l
    ld bc, $0f97
    ld c, l
    ld bc, $04f7
    nop
    ld bc, $0101
    rst $38
    db $f4

Call_031_7977:
    inc bc
    inc bc
    inc b
    rlca
    dec bc
    inc c
    ld a, [bc]
    dec c
    ld bc, $f6fe
    add b
    add b
    ld h, b
    ldh [$90], a
    ldh a, [rTIMA]
    rlca
    dec bc
    inc c
    rla
    jr @+$18

    add hl, de
    add hl, bc
    rrca
    ld b, $06
    ld bc, $f0ff
    ld l, b
    sbc b
    jr z, @-$06

    ld d, b
    or b
    ret nc

    jr nc, jr_031_79c0

    ldh [$c0], a
    ret nz

    ld bc, $0802
    dec bc
    inc c
    inc e
    rra
    ld [hl+], a
    ccf
    add hl, hl
    ld [hl], $01
    jr jr_031_79b1

jr_031_79b1:
    ld e, b
    ret c

    and h
    ld a, h
    jp c, Jump_000_3a66

    add $e2
    ld e, $8c
    ld a, h
    ld d, e
    ld l, h
    ld d, e

jr_031_79c0:
    ld l, h
    ld e, c
    ld h, [hl]
    inc h
    ccf
    add hl, de
    ld e, $04
    rlca
    inc bc
    inc bc
    nop
    nop
    ld b, d
    cp [hl]
    ld [c], a
    ld e, $ca
    ld [hl], $1a
    and $a4
    ld a, h
    jr c, @-$06

    ld bc, $003a
    jr nc, jr_031_7a0e

    ld c, b
    ld a, b
    or h
    call z, $f8a8
    ld [hl], e
    ld [hl], e
    inc b
    rlca
    inc bc
    ld [bc], a
    inc b
    rlca
    inc c
    inc c
    ld a, [hl-]
    ld [hl], $5d
    ld h, e
    ld e, e
    ld h, l
    dec h
    ccf
    sbc d
    sbc d
    ld b, b
    ret nz

    ld b, b
    ret nz

    inc sp
    inc sp
    ld bc, $0082
    cp h
    db $e4
    sbc d
    cp $42
    ld a, [hl]
    inc h
    inc a
    jr jr_031_7a23

    add b
    add b
    nop

jr_031_7a0e:
    nop
    inc c
    inc c
    ld [de], a
    ld e, $3d
    inc hl
    dec l
    inc sp
    ld [de], a
    ld e, $0c
    inc c
    ld bc, $ffa0
    dec l
    nop
    ld bc, $1801

jr_031_7a23:
    jr jr_031_7a3d

    jr jr_031_7a4b

    inc a
    inc h
    inc a
    ld b, d
    ld a, [hl]
    ld b, d
    ld a, [hl]
    inc h
    inc a
    jr @+$1a

    ld bc, $ffa0
    ld c, l
    ld bc, $0f6f
    ld c, l
    ld bc, $0fcf

jr_031_7a3d:
    dec e
    nop
    ld bc, $0101
    rst $38
    ldh a, [$6c]
    ld l, h
    sub d
    cp $82
    cp $44

jr_031_7a4b:
    ld a, h
    jr z, jr_031_7a86

    db $10
    db $10
    ld bc, $f2fe
    ld [$0408], sp
    inc b
    ld bc, $f0ff
    jr @+$1a

    ld bc, $f2fe
    db $10
    db $10
    jr nz, jr_031_7a83

    ld bc, $061a
    inc b
    inc b
    ld [$0108], sp
    ld hl, sp-$08
    jr nz, jr_031_7a8f

    ld bc, $040e
    ld bc, $0f4d
    ld c, l
    ld bc, $0fad
    ccf
    nop
    ld [bc], a

jr_031_7a7c:
    add hl, bc
    inc bc

jr_031_7a7e:
    inc bc
    dec b
    ld b, $0b
    inc c

jr_031_7a83:
    rla
    jr @+$19

jr_031_7a86:
    jr @+$31

    jr nc, @+$31

    jr nc, jr_031_7adb

jr_031_7a8c:
    ld [hl], b
    ret nz

    ret nz

jr_031_7a8f:
    and b
    ld h, b
    ret nc

    jr nc, jr_031_7a7c

    jr jr_031_7a7e

    jr jr_031_7a8c

    inc c
    db $f4
    inc c
    ld a, [c]
    ld c, $4f
    ld [hl], b
    ld b, a
    ld a, b
    ld b, e
    ld a, h
    jr nz, jr_031_7ae4

    db $10
    rra
    inc c
    rrca
    inc bc
    inc bc
    nop
    nop
    ld a, [c]
    ld c, $e2
    ld e, $c2
    ld a, $04
    db $fc
    ld [$30f8], sp
    ldh a, [$c0]
    ret nz

    add hl, bc
    db $fc
    ld hl, sp+$09
    ld a, [bc]
    ld [bc], a
    ldh [$e0], a
    ld d, b
    or b
    add hl, bc
    ld d, $04
    add hl, bc
    inc e
    nop
    ld b, a
    ld a, b
    ld b, a
    ld a, b
    ld b, c
    ld a, [hl]
    add hl, bc
    ld h, $0a
    add h
    ld a, h
    add hl, bc
    ld [hl], $06
    inc bc
    inc bc

jr_031_7adb:
    dec b
    rlca
    add hl, bc
    inc b
    ld bc, $2f19
    ld [hl-], a
    cpl

jr_031_7ae4:
    ld [hl-], a
    add hl, bc
    ld c, $03
    or b
    add sp, -$68
    add sp, $18
    db $f4
    adc h
    db $f4
    ld c, h
    ld a, [c]
    ld c, [hl]
    add hl, bc
    jr nz, jr_031_7b05

    dec c
    add hl, bc
    add b
    ld [bc], a
    rra
    jr jr_031_7b14

    dec e
    ld l, $33
    dec hl
    ld [hl], $45
    ld a, [hl]
    add hl, bc

jr_031_7b05:
    db $10
    ld bc, $a8f0
    ret c

    ld l, b
    sbc b
    db $f4
    adc h
    ld [hl], h
    call z, $6ed2
    ld c, a
    ld a, d

jr_031_7b14:
    ld c, a
    add hl, bc
    inc hl
    add hl, bc
    ld [c], a
    ld a, $f2
    ld e, [hl]
    jp nz, $847e

    add hl, bc
    scf
    rlca
    add hl, bc
    ld a, [$11f2]
    ld de, $3b2a
    cpl
    ld [hl], $45
    ld a, [hl]
    add hl, bc
    ld a, [$08f2]
    ld [$1818], sp
    or h
    xor h
    ld [hl], h
    call z, Call_031_4ef2
    add hl, bc
    ldh [rIF], a
    dec c
    add hl, bc
    ldh [rSC], a
    ld h, b
    ld a, a
    ldh a, [$9f]
    db $fc
    sbc a
    ld [hl], e
    ld [hl], e
    add hl, bc
    xor $02
    jp c, $bc7e

    db $e4
    ld a, h
    call nz, $c47c
    ld hl, sp-$18
    db $10
    db $10
    add hl, bc
    ld a, [$0cf2]
    inc c
    ld c, $0a
    ld b, $06
    add b
    add b
    add hl, bc
    db $f4
    ld hl, sp+$01
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    jr nc, jr_031_7b9e

    ld a, b
    ld c, b
    ld a, b
    ld c, b
    add hl, sp
    add hl, sp
    add hl, bc
    ld hl, sp-$0c
    ld [$1c08], sp
    inc d
    ld a, $22
    ld a, $22
    inc e
    inc d
    ld [$0908], sp
    or $f6
    inc e
    inc e

jr_031_7b88:
    ld a, $22
    ld a, h
    ld b, h
    ld a, b
    ld e, b
    jr nz, jr_031_7bb0

    add hl, bc
    and b
    rst $38
    dec a
    nop
    ld bc, $0705
    rlca
    ld [$090f], sp
    ld c, $11

jr_031_7b9e:
    ld e, $11
    ld e, $21
    ld a, $27
    jr c, @+$39

    jr c, jr_031_7b88

    ldh [rNR10], a
    ldh a, [$90]
    ld [hl], b
    adc b
    ld a, b
    adc b

jr_031_7bb0:
    ld a, b
    add h
    ld a, h
    db $e4
    inc e
    db $ec
    inc e
    ld sp, $293e
    ld a, $26
    ccf
    ld de, $081f
    rrca
    ld b, $07
    ld bc, $0001
    nop
    adc h
    ld a, h
    sub h
    ld a, h
    ld h, h
    db $fc
    adc b
    ld hl, sp+$10
    ldh a, [$60]
    ldh [$80], a
    add b
    dec b
    ld a, [$01f2]
    ld bc, $1f1e
    ldh [rIE], a
    add b
    rst $38
    cp a
    ret nz

    cp a
    ret nz

    dec b
    db $fc
    ldh a, [$f0]
    ldh a, [$08]
    ld hl, sp+$64
    sbc h
    ld h, d
    sbc [hl]
    db $fd
    inc bc
    db $fd
    inc bc
    add b
    rst $38
    ldh [rIE], a
    sbc [hl]
    rst $38
    add c
    rst $38
    ldh [rIE], a
    ld e, $1f
    dec b

Call_031_7c00:
    inc l
    nop
    ld h, e
    sbc a
    ld h, l
    sbc a
    add hl, bc
    rst $38
    pop af
    rst $38
    ld [bc], a
    cp $04
    db $fc
    ld hl, sp-$08
    dec b
    ld b, b
    ld [bc], a
    ld b, $07
    add hl, de
    dec b
    add hl, bc
    ld bc, $3827
    ld sp, $003e
    nop
    add b
    add b
    ld h, b
    ldh [$98], a
    dec b
    add hl, de
    ld bc, $1ce4
    adc h
    ld a, h
    ld sp, $053e
    jr nz, jr_031_7c30

jr_031_7c30:
    jr jr_031_7c51

    rla
    rra
    ld [$080f], sp
    rrca
    rlca

jr_031_7c39:
    rlca
    adc h
    ld a, h
    dec b
    jr nc, jr_031_7c3f

jr_031_7c3f:
    jr jr_031_7c39

    add sp, -$08
    db $10
    ldh a, [rNR10]
    ldh a, [$e0]
    ldh [rTIMA], a
    and b
    rst $38
    dec l
    nop
    ld bc, $0101

jr_031_7c51:
    rst $38
    ldh a, [rNR23]
    jr jr_031_7c93

    dec h
    cpl
    inc hl
    add hl, de
    add hl, de
    ld l, l
    ld l, l
    or [hl]
    sub b
    ld h, b
    ld h, b
    ret nc

    sub b
    ld hl, sp-$38
    ld a, [hl]
    ld b, $fb
    ld b, c
    rra
    inc bc
    ld e, d
    ld d, d
    sub h
    add h
    cp a
    sub b
    sbc a
    add b
    rst $18
    ret nz

    inc l
    jr nz, jr_031_7c8b

    ld de, $0809
    inc b
    inc b
    rlca
    rlca
    ld a, b
    ld a, b
    ret nc

    db $10
    jr c, jr_031_7c8d

    ld a, h
    ld h, h
    xor h
    and h
    ret c

    ld e, b

jr_031_7c8b:
    ld b, b
    ld b, b

jr_031_7c8d:
    add b
    add b
    ld bc, $ffa0
    ld c, l

jr_031_7c93:
    ld bc, $0f9f
    ld c, l
    nop
    ld bc, $0001
    nop
    nop
    rrca
    ld c, $1f
    rra
    ccf
    inc hl
    ccf
    ld e, $61
    ccf
    ld b, b
    ld h, $5f
    nop
    nop
    nop
    ldh [$d0], a
    jr c, jr_031_7d19

    sbc h
    ld l, h
    sbc [hl]
    db $ec
    sbc [hl]
    db $fc
    sbc [hl]
    ld e, b
    cp [hl]
    ld a, [de]
    ld a, l
    ccf
    ld a, c
    scf
    ld a, c
    ld [hl], $79
    ld d, $39
    dec bc
    inc e
    nop
    rlca
    nop
    nop
    ld h, h
    ld a, [$02fc]
    ld a, b
    add [hl]
    call nz, $f8fc
    db $fc
    ld [hl], b
    ld hl, sp+$00
    ldh a, [rSB]
    and b
    rst $38
    ld c, l
    ld bc, $0f9d
    ld c, l
    nop
    nop
    nop
    nop

Call_031_7ce4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_7d19:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_031_7eee:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_031_7efe:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_031_7f34:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_031_7fec:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
