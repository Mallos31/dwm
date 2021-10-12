; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05c", ROMX[$4000], BANK[$5c]

    ld e, h
    dec b
    ld b, b
    adc l
    ld b, b
    ld a, [$dd60]
    or a
    ret z

    ld de, $4071
    call Call_05c_40fc
    ld a, [$dd68]
    or a
    jr z, jr_05c_4021

    ld a, [$daa4]

Call_05c_4019:
    cp $03
    jr z, jr_05c_4021

    cp $04
    jr nz, jr_05c_4031

jr_05c_4021:
    ld hl, $ffc3
    inc [hl]
    ld hl, $ffc3
    inc [hl]
    ld hl, $ffc3
    inc [hl]
    ld hl, $ffc3
    inc [hl]

jr_05c_4031:
    ld a, [$dd66]
    ldh [$c8], a
    ld a, [$dd62]
    or a
    jr nz, jr_05c_4041

    ld a, $00
    ld [$dd60], a

jr_05c_4041:
    ld a, [$dd68]
    or a
    ret nz

    ld a, [$daa4]
    cp $03
    jr z, jr_05c_4051

    cp $04
    jr nz, jr_05c_4061

jr_05c_4051:
    ldh a, [$c3]
    cp $d0
    ret c

    ld a, $04
    ld [$dd65], a
    ld a, $01
    ld [$dd68], a
    ret


jr_05c_4061:
    ldh a, [$c3]
    cp $c0
    ret c

    ld a, $00
    ld [$dd60], a
    ld a, $01
    ld [$dd68], a
    ret


    ld c, l
    ld b, c
    ld e, c
    ld b, d
    ld a, h
    ld b, l
    jr jr_05c_40c2

    rla
    ld c, d
    ld e, [hl]
    ld c, e
    ld a, c
    ld c, a
    ld d, d
    ld d, b
    jp $cf52


    ld e, h
    and h
    ld e, [hl]
    ld l, c
    ld h, l
    ld h, h
    ld [hl], h
    add a
    ld a, b
    ld a, $01
    ld [$dd62], a
    ld a, [$dd68]
    or a
    jr z, jr_05c_40aa

    ld a, [$db54]
    cp $07
    jr nc, jr_05c_40e5

    add a
    ld hl, $40ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]

jr_05c_40aa:
    ld hl, $ffc3
    ld a, a
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, [$daa4]
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a

jr_05c_40c2:
    ld a, $00
    ld [hl+], a
    ld a, $01
    ld [$dd60], a
    ld hl, $dd63
    ld a, l
    ld [$d7b4], a
    ld a, h
    ld [$d7b5], a
    ld hl, $0205
    rst $10
    ld hl, $dd62
    ld a, l
    ld [$d7b4], a
    ld a, h
    ld [$d7b5], a
    ret


jr_05c_40e5:
    xor a
    ld [$dd60], a
    xor a
    ld [$dd62], a
    ret


    nop
    nop
    ld d, b
    nop
    jr c, jr_05c_40f4

jr_05c_40f4:
    ld l, b
    nop
    jr nz, jr_05c_40f8

jr_05c_40f8:
    ld d, b
    nop
    add b
    nop

Call_05c_40fc:
    ldh a, [$cb]
    cp $28
    jr nc, jr_05c_414c

    ldh a, [$c7]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ldh a, [$c8]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ldh a, [$cb]
    sla a
    sla a
    ld l, a
    ld h, $c0

jr_05c_411f:
    ld a, [de]
    inc de
    cp $80
    jr z, jr_05c_414c

    ld b, a
    ldh a, [$c5]
    add b
    add $10
    ld [hl+], a
    ld a, [de]
    inc de
    ld b, a

jr_05c_412f:
    ldh a, [$c3]
    add b
    add $08
    ld [hl+], a
    ldh a, [$c9]
    ld b, a
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    inc de
    ld b, a
    ldh a, [$ca]
    xor b
    ld [hl+], a
    ldh a, [$cb]
    inc a
    ldh [$cb], a
    cp $28
    jr c, jr_05c_411f

jr_05c_414c:
    ret


    adc l
    ld b, c
    sub [hl]
    ld b, c
    xor a
    ld b, c
    call z, $f141
    ld b, c
    ld d, $42
    cpl
    ld b, d
    ld c, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d
    ld e, b
    ld b, d

jr_05c_418b:
    ld e, b
    ld b, d
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    ld bc, $8000
    ldh a, [rP1]
    nop
    jr nz, jr_05c_418b

    ld hl, sp+$01
    jr nz, @-$06

jr_05c_419f:
    ld [$2002], sp
    ld hl, sp+$00
    inc bc
    jr nz, jr_05c_419f

    ld hl, sp+$04
    jr nz, @-$06

    ldh a, [rTIMA]
    jr nz, jr_05c_412f

    ld hl, sp-$04
    ld b, $00
    add sp, -$08
    nop
    nop
    add sp, $00
    ld bc, $f000
    ldh a, [rSC]
    nop
    ldh a, [$f8]
    inc bc
    nop
    ldh a, [rP1]
    inc b
    nop
    ldh a, [$08]
    dec b
    nop
    add b
    sbc $f8
    rlca
    nop
    and $f0
    ld [$e600], sp
    ld hl, sp+$09
    nop
    and $00
    ld a, [bc]
    nop
    and $08
    dec bc
    nop
    xor $f8
    inc c
    nop
    xor $00
    dec c
    nop
    xor $08
    ld c, $00
    or $00
    rrca
    nop
    add b
    di
    ld bc, $6007
    db $eb
    add hl, bc
    ld [$eb60], sp
    ld bc, $6009
    db $eb
    ld sp, hl
    ld a, [bc]
    ld h, b
    db $eb
    pop af
    dec bc
    ld h, b
    db $e3
    ld bc, $600c
    db $e3
    ld sp, hl
    dec c
    ld h, b
    db $e3
    pop af
    ld c, $60
    db $db
    ld sp, hl
    rrca
    ld h, b
    add b
    xor $f8
    inc d
    nop
    xor $00
    dec d
    nop
    and $f8
    ld de, $e600
    nop
    ld [de], a
    nop
    and $08
    inc de
    nop
    sbc $00
    stop
    add b
    rst $20
    ld bc, $6014
    rst $20
    ld sp, hl
    dec d
    ld h, b

jr_05c_4237:
    rst $28
    ld bc, $6011
    rst $28
    ld sp, hl
    ld [de], a
    ld h, b
    rst $28
    pop af
    inc de
    ld h, b
    rst $30
    ld sp, hl
    db $10
    ld h, b
    add b
    add sp, -$09
    ld d, $00
    add sp, -$01
    rla
    nop
    ldh a, [$f7]
    jr jr_05c_4254

jr_05c_4254:
    ldh a, [rIE]
    add hl, de
    nop
    add b
    sbc c
    ld b, d
    and d
    ld b, d
    or a
    ld b, d
    call c, $1142
    ld b, e
    ld c, [hl]
    ld b, e
    ld l, a
    ld b, e
    sub b
    ld b, e
    sbc l
    ld b, e
    jp nz, $ff43

    ld b, e
    ld c, h
    ld b, h
    or c
    ld b, h
    ld b, $45
    ld c, a
    ld b, l
    ld a, e
    ld b, l
    ld a, e
    ld b, l
    ld a, e
    ld b, l
    ld a, e
    ld b, l
    ld a, e
    ld b, l
    ld a, e
    ld b, l
    ld a, e
    ld b, l
    ld a, e
    ld b, l
    ld a, e
    ld b, l
    ld a, e
    ld b, l
    ld a, e
    ld b, l
    ld a, e
    ld b, l
    ld a, e
    ld b, l

jr_05c_4291:
    ld a, e
    ld b, l
    ld a, e
    ld b, l
    ld a, e
    ld b, l

jr_05c_4297:
    ld a, e
    ld b, l
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    ld bc, $8000
    ld hl, sp-$05
    inc bc
    jr nz, jr_05c_4297

jr_05c_42a7:
    nop
    nop
    jr nz, @-$06

    di
    dec c
    jr nz, jr_05c_42a7

    inc bc
    dec b
    jr nz, @-$0e

    ld hl, sp+$04
    jr nz, jr_05c_4237

    ldh a, [$f6]
    ld [bc], a
    nop
    add sp, -$07
    nop
    nop
    ld hl, sp-$10
    dec b
    nop
    ld hl, sp+$08
    dec b
    jr nz, @-$0e

    inc bc
    ld [bc], a
    jr nz, @-$0e

    cp $03

jr_05c_42ce:
    nop
    add sp, -$01
    inc b
    nop
    ld hl, sp-$08
    jr jr_05c_42d7

jr_05c_42d7:
    ld hl, sp+$00
    jr jr_05c_42fb

    add b
    ldh a, [$f5]
    ld b, $00
    ldh a, [rTIMA]
    ld [$e800], sp
    di
    ld [bc], a
    nop
    add sp, $03
    inc b
    nop
    ldh [$fc], a
    inc b

jr_05c_42ef:
    nop
    ldh [$f9], a
    ld [bc], a
    nop
    add sp, -$05
    rlca
    nop
    ldh a, [$fd]

jr_05c_42fa:
    dec bc

jr_05c_42fb:
    nop
    ldh a, [$ef]

jr_05c_42fe:
    add hl, bc
    nop
    ld hl, sp+$00
    rrca
    ld h, b
    ld hl, sp-$08
    jr jr_05c_4348

    ld hl, sp+$08

jr_05c_430a:
    ld [de], a
    nop
    ld hl, sp-$10
    rla
    jr nz, jr_05c_4291

    add sp, $03
    ld b, $20
    add sp, -$0d
    ld [$e020], sp

jr_05c_431a:
    dec b
    ld [bc], a
    jr nz, jr_05c_42fe

    push af
    inc b
    jr nz, jr_05c_42fa

    db $fc
    inc b
    jr nz, jr_05c_42fe

jr_05c_4326:
    rst $38
    ld [bc], a
    jr nz, jr_05c_430a

    db $fd
    rlca
    jr nz, @-$16

jr_05c_432e:
    ei

jr_05c_432f:
    dec bc
    jr nz, jr_05c_431a

    add hl, bc

jr_05c_4333:
    add hl, bc
    jr nz, jr_05c_4326

    ld hl, sp+$0f
    ld b, b
    ldh a, [$f0]
    ld [de], a
    jr nz, jr_05c_432e

    ld [$0017], sp
    ldh a, [rP1]
    jr @+$22

    ld hl, sp-$08

jr_05c_4347:
    inc hl

jr_05c_4348:
    nop
    ld hl, sp+$00
    inc hl
    jr nz, jr_05c_42ce

    call nc, $1bfc
    jr nz, jr_05c_432f

    inc b
    inc e
    jr nz, jr_05c_4333

    db $fc
    dec e
    jr nz, @-$22

    db $f4
    ld e, $20
    db $e4
    inc b
    rra
    jr nz, jr_05c_4347

    db $fc
    jr nz, @+$22

    db $e4
    db $f4
    ld hl, $ec20
    db $fc
    ld [hl+], a
    jr nz, jr_05c_42ef

    ret c

    db $fc
    dec de
    nop
    ldh [$f4], a

jr_05c_4375:
    inc e
    nop
    ldh [$fc], a
    dec e
    nop
    ldh [rDIV], a
    ld e, $00
    add sp, -$0c
    rra
    nop
    add sp, -$04
    jr nz, jr_05c_4387

jr_05c_4387:
    add sp, $04

jr_05c_4389:
    ld hl, $f000
    db $fc
    ld [hl+], a
    nop
    add b
    add sp, -$04
    dec h
    jr nz, jr_05c_4375

    db $fc
    inc h
    jr nz, jr_05c_4389

    db $fc
    ld [hl+], a
    jr nz, @-$7e

    ldh a, [$f6]
    ld [bc], a
    nop
    add sp, -$07
    nop
    nop
    ld hl, sp-$10
    dec b
    nop
    ld hl, sp+$08
    dec b
    jr nz, @-$0e

    inc bc
    ld [bc], a
    jr nz, @-$0e

    cp $03
    nop
    add sp, -$01
    inc b
    nop
    ld hl, sp-$08
    jr jr_05c_43bd

jr_05c_43bd:
    ld hl, sp+$00
    jr @+$22

    add b
    ld hl, sp+$05
    ld de, $f800

jr_05c_43c7:
    push af
    rrca
    nop
    ldh a, [$0b]
    add hl, bc
    jr nz, jr_05c_43c7

jr_05c_43cf:
    db $ed
    rla
    jr nz, @-$06

jr_05c_43d3:
    dec c
    inc de
    jr nz, jr_05c_43cf

    db $fd
    jr nz, jr_05c_43da

jr_05c_43da:
    ldh a, [$03]
    inc c
    nop
    ldh a, [$fb]
    jr jr_05c_43e2

jr_05c_43e2:
    add sp, $06
    ld [bc], a
    jr nz, jr_05c_43cf

jr_05c_43e7:
    cp $03
    jr nz, jr_05c_43d3

    or $04
    jr nz, jr_05c_43c7

    db $fd
    inc h
    jr nz, jr_05c_43d3

    db $fd
    dec h
    jr nz, jr_05c_43e7

    di

jr_05c_43f8:
    add hl, bc
    nop
    ldh a, [$ed]
    dec b
    nop
    add b
    ld hl, sp-$0d
    ld de, $f820
    inc bc
    rrca
    jr nz, jr_05c_43f8

    db $ed
    add hl, bc
    nop
    ldh a, [$f5]
    ld a, [bc]
    nop
    ldh a, [$fd]
    dec bc
    nop
    ldh a, [rTIMA]
    inc c
    nop
    ldh a, [$0d]
    dec c
    nop
    add sp, -$07
    ld b, $00
    add sp, $01
    rlca
    nop
    add sp, $09
    ld [$e000], sp
    rst $30
    ld [bc], a
    nop
    ldh [rIE], a
    inc bc
    nop
    ldh [rTAC], a

jr_05c_4431:
    inc b
    nop
    ret c

    ld a, [$0000]
    ret c

    ld [bc], a
    ld bc, $e800
    pop af
    dec b
    nop
    ld hl, sp+$0b
    rla
    nop
    ld hl, sp-$15
    inc de
    nop
    ld hl, sp-$05
    dec d
    nop
    add b
    ldh a, [$fd]
    stop
    ldh a, [rTIMA]
    ld de, $f000
    db $ed
    ld c, $00
    add sp, -$15
    add hl, bc
    nop
    add sp, -$0d
    ld a, [bc]
    nop
    add sp, -$05
    dec bc
    nop
    add sp, $03
    inc c
    nop
    add sp, $0b
    dec c
    nop
    ldh [$f7], a
    ld b, $00
    ldh [rIE], a
    rlca
    nop
    ldh [rTAC], a
    ld [$d800], sp
    push af
    ld [bc], a
    nop
    ret c

    db $fd
    inc bc
    nop
    ret nc

    ld hl, sp+$00
    nop
    ret nc

    nop
    ld bc, $e000
    rst $28
    dec b
    nop
    ldh a, [$f5]
    jr jr_05c_4490

jr_05c_4490:
    ret c

    dec b
    inc e
    jr nz, @-$06

    add sp, $1f
    nop
    ld hl, sp+$08
    ld d, $00
    ld hl, sp-$08
    dec d
    nop
    ld hl, sp-$10
    inc d
    nop
    ld hl, sp+$00

jr_05c_44a6:
    db $10
    jr nz, @-$06

    db $10

jr_05c_44aa:
    ld hl, $f000
    dec c

jr_05c_44ae:
    inc e
    jr nz, jr_05c_4431

    ldh a, [$fb]
    db $10
    jr nz, jr_05c_44a6

    di
    ld de, $f020
    db $eb
    ld [de], a
    jr nz, jr_05c_44ae

    inc bc
    rrca
    jr nz, jr_05c_44aa

jr_05c_44c2:
    push af
    inc c
    jr nz, jr_05c_44ae

jr_05c_44c6:
    db $ed
    dec c
    jr nz, jr_05c_44c2

    add sp, $17
    jr nz, jr_05c_44c6

    ldh a, [rNR23]
    nop
    ld hl, sp+$00
    jr nz, jr_05c_44f5

    ld hl, sp+$08
    inc d
    jr nz, jr_05c_44c2

    db $fd
    jr jr_05c_44fd

    ldh [$f1], a
    ld [bc], a
    nop
    ldh [$f9], a
    inc bc
    nop
    ldh [rSB], a
    inc b
    nop
    ret c

jr_05c_44ea:
    ei

jr_05c_44eb:
    dec h
    nop
    rst $08
    inc bc

jr_05c_44ef:
    nop
    jr nz, jr_05c_44c2

    ei
    inc h
    nop

jr_05c_44f5:
    add sp, $05
    add hl, bc
    jr nz, jr_05c_44ea

    dec bc
    ld e, $00

jr_05c_44fd:
    ld hl, sp+$10
    dec c
    nop
    ld hl, sp-$08
    jr nz, jr_05c_4545

    add b
    db $e4

jr_05c_4507:
    inc bc
    ld b, $20
    db $e4

jr_05c_450b:
    di
    ld [$dc20], sp
    dec b
    ld [bc], a
    jr nz, jr_05c_44ef

    push af
    inc b
    jr nz, jr_05c_44eb

jr_05c_4517:
    db $fc
    inc b
    jr nz, jr_05c_44ef

    rst $38
    ld [bc], a
    nop
    call c, Call_000_07fd
    jr nz, jr_05c_4507

    ei
    dec bc
    jr nz, jr_05c_450b

    add hl, bc
    add hl, bc
    jr nz, jr_05c_4517

    ld hl, sp+$0f
    ld b, b
    db $ec
    ldh a, [rNR12]
    jr nz, @-$12

    ld [$0017], sp
    db $ec
    nop
    jr jr_05c_455a

    db $f4
    db $f4
    rra
    ld b, b
    db $f4
    db $fc
    jr nz, jr_05c_4582

    db $f4
    inc b

jr_05c_4544:
    rra

jr_05c_4545:
    ld h, b
    db $fc
    ld hl, sp+$23
    nop
    db $fc
    nop
    inc hl
    jr nz, @-$7e

    ret nc

    db $fc
    dec de
    jr nz, @-$26

    inc b
    inc e
    jr nz, @-$26

    db $fc
    dec e

jr_05c_455a:
    jr nz, @-$26

    db $f4
    ld e, $20
    ldh [rDIV], a
    rra
    jr nz, jr_05c_4544

    db $fc

jr_05c_4565:
    jr nz, jr_05c_4587

    ldh [$f4], a
    ld hl, $e820
    db $fc
    dec h
    nop
    ldh a, [$fc]
    ld [hl+], a
    nop
    add sp, $03
    ld hl, $e800
    push af
    rra
    nop
    add b
    cp h
    ld b, l
    push hl
    ld b, l
    ld e, $46

jr_05c_4582:
    ld h, a
    ld b, [hl]
    ret nc

    ld b, [hl]
    add hl, sp

jr_05c_4587:
    ld b, a
    and d
    ld b, a
    dec bc
    ld c, b
    ld [hl], h
    ld c, b
    ld a, l
    ld c, b
    sub [hl]
    ld c, b
    cp e
    ld c, b
    ldh [rOBP0], a
    pop af
    ld c, b
    ld [bc], a
    ld c, c
    inc de
    ld c, c
    rla
    ld c, c

jr_05c_459e:
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f8]
    ld bc, $f000
    nop
    ld [bc], a
    nop
    ldh a, [$08]
    inc bc
    nop
    ld hl, sp-$10
    dec d
    nop
    ld hl, sp-$08

jr_05c_45d2:
    ld d, $00
    ld hl, sp+$08
    dec d
    jr nz, @-$06

    nop

jr_05c_45da:
    ld d, $20
    ld hl, sp+$10
    add hl, de
    nop
    ld hl, sp-$18
    add hl, de
    jr nz, jr_05c_4565

    add sp, $08

jr_05c_45e7:
    nop
    jr nz, jr_05c_45d2

    nop
    ld bc, $e820
    ld hl, sp+$02
    jr nz, jr_05c_45da

jr_05c_45f2:
    ldh a, [$03]
    jr nz, @-$0e

    ld [$2010], sp
    ldh a, [rP1]
    ld de, $f020

jr_05c_45fe:
    ld hl, sp+$12
    jr nz, jr_05c_45f2

jr_05c_4602:
    ldh a, [rNR13]
    jr nz, jr_05c_45fe

jr_05c_4606:
    ld hl, sp+$17
    jr nz, jr_05c_4602

    ldh a, [rNR23]
    jr nz, jr_05c_4606

    nop
    rla
    nop
    ld hl, sp+$08
    jr jr_05c_4615

jr_05c_4615:
    ld hl, sp+$10
    ld a, [de]
    nop
    ld hl, sp-$18
    ld a, [de]
    jr nz, jr_05c_459e

    ldh [$f0], a
    nop
    nop
    ldh [$f8], a
    ld bc, $e000
    nop
    ld [bc], a
    nop
    ldh [$08], a
    inc bc
    nop
    add sp, -$10
    stop
    add sp, -$08
    ld de, $e800
    nop
    ld [de], a
    nop
    add sp, $08
    inc de
    nop
    ldh a, [$f0]
    inc b
    nop
    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    ld b, $00
    ldh a, [$08]
    rlca
    nop
    ld hl, sp-$10

jr_05c_4650:
    dec d
    nop
    ld hl, sp-$08
    ld d, $00
    ld hl, sp+$08
    dec d
    jr nz, @-$06

    nop
    ld d, $20
    ld hl, sp+$10
    add hl, de
    nop
    ld hl, sp-$18
    add hl, de
    jr nz, jr_05c_45e7

    ret nc

    ldh a, [rP1]
    nop
    ret nc

    ld hl, sp+$01
    nop
    ret nc

    nop
    ld [bc], a
    nop
    ret nc

    ld [$0003], sp
    ret c

    ldh a, [rNR10]
    nop
    ret c

    ld hl, sp+$11
    nop
    ret c

    nop
    ld [de], a
    nop
    ret c

    ld [$0013], sp
    ldh [$f0], a
    inc b
    nop
    ldh [$f8], a
    dec b
    nop
    ldh [rP1], a
    ld b, $00
    ldh [$08], a
    rlca
    nop
    add sp, -$08
    ld b, $00
    add sp, $00
    add hl, bc
    nop
    add sp, $08
    ld a, [bc]
    nop
    add sp, -$10
    ld [$f000], sp
    ld hl, sp+$09
    nop
    ldh a, [$f0]
    dec bc
    nop
    ldh a, [rP1]
    inc c
    nop
    ldh a, [$08]
    dec c
    nop
    ld hl, sp-$08

jr_05c_46b9:
    rla
    jr nz, @-$06

    ldh a, [rNR23]
    jr nz, @-$06

    nop
    rla
    nop
    ld hl, sp+$08
    jr jr_05c_46c7

jr_05c_46c7:
    ld hl, sp+$10
    ld a, [de]
    nop
    ld hl, sp-$18
    ld a, [de]
    jr nz, jr_05c_4650

    ret nc

    ldh a, [rDIV]
    nop
    ret nc

    ld hl, sp+$05
    nop
    ret nc

    nop
    ld b, $00
    ret nc

    ld [$0007], sp
    ret c

    ld hl, sp+$06
    nop
    ret c

    nop
    add hl, bc
    nop
    ret c

    ld [$000a], sp
    ret c

    ldh a, [$08]
    nop
    ldh [$f8], a
    add hl, bc
    nop
    ldh [$f0], a
    dec bc
    nop
    ldh [rP1], a
    inc c
    nop
    ldh [$08], a
    dec c
    nop
    add sp, -$10
    ld c, $00
    add sp, -$08
    inc c
    nop
    add sp, $00
    rrca
    nop
    add sp, $08
    inc d
    nop
    ldh a, [$f0]
    inc b
    nop
    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    ld b, $00
    ldh a, [$08]
    rlca
    nop
    ld hl, sp-$10

jr_05c_4722:
    dec d
    nop
    ld hl, sp-$08
    ld d, $00
    ld hl, sp+$08
    dec d
    jr nz, @-$06

    nop
    ld d, $20
    ld hl, sp+$10
    add hl, de
    nop
    ld hl, sp-$18
    add hl, de
    jr nz, jr_05c_46b9

    ret nc

    ld hl, sp+$06
    nop
    ret nc

    nop
    add hl, bc
    nop
    ret nc

    ld [$000a], sp
    ret nc

    ldh a, [$08]
    nop
    ret c

    ld hl, sp+$09
    nop
    ret c

    ldh a, [$0b]
    nop
    ret c

    nop
    inc c
    nop
    ret c

    ld [$000d], sp
    ldh [$f0], a
    ld c, $00
    ldh [$f8], a
    inc c
    nop
    ldh [rP1], a
    rrca
    nop
    ldh [$08], a
    inc d
    nop
    add sp, -$10
    inc b
    nop
    add sp, -$08
    dec b
    nop
    add sp, $00
    ld b, $00
    add sp, $08
    rlca
    nop
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    add hl, bc
    nop
    ldh a, [$08]
    ld a, [bc]
    nop
    ldh a, [$f0]
    ld [$f800], sp

jr_05c_478a:
    ld hl, sp+$17
    jr nz, @-$06

    ldh a, [rNR23]
    jr nz, jr_05c_478a

    nop
    rla
    nop
    ld hl, sp+$08
    jr jr_05c_4799

jr_05c_4799:
    ld hl, sp+$10
    ld a, [de]
    nop
    ld hl, sp-$18
    ld a, [de]
    jr nz, jr_05c_4722

    ret nc

    ld hl, sp+$09
    nop
    ret nc

    ldh a, [$0b]
    nop
    ret nc

    nop
    inc c
    nop
    ret nc

    ld [$000d], sp
    ret c

    ldh a, [$0e]
    nop
    ret c

    ld hl, sp+$0c
    nop
    ret c

    nop
    rrca
    nop
    ret c

    ld [$0014], sp
    ldh [$f0], a
    inc b
    nop
    ldh [$f8], a
    dec b
    nop
    ldh [rP1], a
    ld b, $00
    ldh [$08], a
    rlca
    nop
    add sp, -$08
    ld b, $00
    add sp, $00
    add hl, bc
    nop
    add sp, $08
    ld a, [bc]
    nop
    add sp, -$10
    ld [$f000], sp
    ld hl, sp+$09
    nop
    ldh a, [$f0]
    dec bc
    nop
    ldh a, [rP1]
    inc c
    nop
    ldh a, [$08]
    dec c
    nop
    ld hl, sp-$10

jr_05c_47f4:
    dec d
    nop
    ld hl, sp-$08
    ld d, $00
    ld hl, sp+$08
    dec d

jr_05c_47fd:
    jr nz, @-$06

    nop
    ld d, $20
    ld hl, sp+$10
    add hl, de
    nop
    ld hl, sp-$18
    add hl, de
    jr nz, @-$7e

    ret nc

    ldh a, [$0e]
    nop
    ret nc

    ld hl, sp+$0c
    nop
    ret nc

    nop
    rrca
    nop
    ret nc

    ld [$0014], sp
    ret c

    ldh a, [rDIV]
    nop
    ret c

    ld hl, sp+$05
    nop
    ret c

    nop
    ld b, $00
    ret c

    ld [$0007], sp
    ldh [$f8], a
    ld b, $00
    ldh [rP1], a
    add hl, bc
    nop
    ldh [$08], a
    ld a, [bc]
    nop
    ldh [$f0], a
    ld [$e800], sp
    ld hl, sp+$09
    nop
    add sp, -$10
    dec bc
    nop
    add sp, $00
    inc c
    nop
    add sp, $08
    dec c
    nop
    ldh a, [$f0]
    ld c, $00
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    rrca
    nop
    ldh a, [$08]
    inc d
    nop
    ld hl, sp-$08
    rla
    jr nz, @-$06

    ldh a, [rNR23]
    jr nz, @-$06

    nop
    rla
    nop
    ld hl, sp+$08
    jr jr_05c_486b

jr_05c_486b:
    ld hl, sp+$10
    ld a, [de]
    nop
    ld hl, sp-$18
    ld a, [de]
    jr nz, jr_05c_47f4

    ld hl, sp-$08
    dec de
    nop
    ld hl, sp+$00
    dec de
    jr nz, jr_05c_47fd

    ldh a, [$f8]
    inc e
    nop
    ldh a, [rP1]

jr_05c_4883:
    dec e
    nop
    ld hl, sp-$08
    ld e, $00
    ld hl, sp+$00
    rra
    nop
    ld hl, sp+$07

jr_05c_488f:
    daa
    nop
    ld hl, sp-$0f
    ld h, $00
    add b
    add sp, $00
    inc e
    jr nz, jr_05c_4883

    ld hl, sp+$1d
    jr nz, jr_05c_488f

    nop
    ld e, $20
    ldh a, [$f8]
    rra
    jr nz, @-$07

    db $fc
    dec h
    nop
    ldh a, [rTAC]
    ld h, $20
    or $03
    daa
    nop
    db $f4
    db $f4
    ld h, $00
    ldh a, [$f1]
    daa
    jr nz, @-$7e

    db $e4

jr_05c_48bc:
    ld hl, sp+$1c
    nop
    db $e4
    nop
    dec e
    nop
    db $ec
    ld hl, sp+$1e
    nop
    db $ec

jr_05c_48c8:
    nop
    rra
    nop
    di
    db $fc
    dec h
    jr nz, jr_05c_48bc

    pop af
    ld h, $00
    ld a, [c]
    push af
    daa
    jr nz, jr_05c_48c8

    inc b
    ld h, $20
    db $ec
    rlca
    daa
    nop
    add b
    db $e4
    ld hl, sp+$20
    nop
    db $e4
    nop
    ld hl, $ec00
    ld hl, sp+$22
    nop

jr_05c_48ec:
    db $ec
    nop
    inc hl
    nop
    add b
    and $00
    jr nz, jr_05c_4915

    and $f8
    ld hl, $ee20
    nop
    ld [hl+], a
    jr nz, jr_05c_48ec

    ld hl, sp+$23
    jr nz, @-$7e

    add sp, -$08
    jr nz, jr_05c_4906

jr_05c_4906:
    add sp, $00
    ld hl, $f000
    ld hl, sp+$22
    nop
    ldh a, [rP1]
    inc hl
    nop
    add b
    db $ec
    db $fc

jr_05c_4915:
    inc h
    nop
    add b
    ld e, b
    ld c, c
    sbc c
    ld c, c
    jp c, Jump_000_1649

    ld c, d
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ld d, $4a
    ldh a, [$d8]
    nop
    db $10
    ldh a, [$e0]
    ld bc, $f010
    rst $28
    ld [bc], a
    db $10
    ldh a, [rP1]
    inc bc
    db $10
    ldh a, [$08]
    inc b
    db $10
    ldh a, [rNR23]
    dec b
    db $10
    ld hl, sp-$28
    ld b, $10
    ld hl, sp-$20
    rlca
    db $10
    ld hl, sp-$18
    ld [$f810], sp
    ldh a, [$09]
    db $10
    ld hl, sp-$08
    ld a, [bc]
    db $10
    ld hl, sp+$00
    dec bc
    db $10
    ld hl, sp+$08
    inc c
    db $10
    ld hl, sp+$10
    dec c
    db $10
    ld hl, sp+$18
    ld c, $10
    ld hl, sp+$20
    rrca
    db $10
    add b
    ldh a, [$e8]
    nop
    db $10
    ldh a, [$d8]
    db $10
    db $10
    ldh a, [$e0]
    ld de, $f010
    ldh a, [rNR12]
    db $10
    ldh a, [$f8]
    inc de
    db $10
    ldh a, [rP1]
    inc d
    db $10
    ld hl, sp-$28
    dec d
    db $10
    ld hl, sp-$20
    ld d, $10
    ld hl, sp-$18
    rla
    db $10
    ld hl, sp-$10
    jr jr_05c_49d1

    ld hl, sp-$08
    add hl, de
    db $10
    ld hl, sp+$00
    ld a, [de]
    db $10
    ld hl, sp+$08
    dec de
    db $10
    ld hl, sp+$10
    inc e
    db $10

jr_05c_49d1:
    ld hl, sp+$18
    dec e
    db $10
    ld hl, sp+$20
    ld e, $10
    add b
    ldh a, [$f8]
    inc bc
    db $10
    ldh a, [rNR41]
    inc bc
    db $10
    ldh a, [$e0]
    rra
    db $10
    ldh a, [$e8]
    jr nz, jr_05c_49fa

    ldh a, [rNR10]
    ld hl, $f810
    ret c

    ld [hl+], a
    db $10
    ld hl, sp-$20
    inc hl
    db $10
    ld hl, sp-$18
    inc h
    db $10

jr_05c_49fa:
    ld hl, sp-$10
    dec h
    db $10
    ld hl, sp-$08
    ld h, $10
    ld hl, sp+$00
    daa
    db $10
    ld hl, sp+$08
    jr z, jr_05c_4a1a

    ld hl, sp+$10
    add hl, hl
    db $10
    ld hl, sp+$18
    ld a, [hl+]
    db $10
    ld hl, sp+$20
    dec hl
    db $10
    add b
    ld d, a
    ld c, d
    cp b

jr_05c_4a1a:
    ld c, d
    dec b
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ldh [$f0], a
    nop
    db $10
    add sp, -$10
    ld bc, $e810
    ld hl, sp+$02
    db $10
    add sp, $00
    inc bc
    db $10
    add sp, $08
    inc b
    db $10
    ldh a, [$e0]
    dec b
    db $10
    ldh a, [$e8]
    ld b, $10
    ldh a, [$f0]
    rlca
    db $10
    ldh a, [$f8]
    ld [$f010], sp
    nop
    add hl, bc
    db $10
    ldh a, [$08]
    ld a, [bc]
    db $10
    ldh a, [rNR10]
    dec bc
    db $10
    ldh a, [rNR23]
    inc c
    db $10
    ld hl, sp-$18
    dec c
    db $10
    ld hl, sp+$00
    db $10
    db $10
    ld hl, sp+$08
    ld de, $f810
    db $10
    ld [de], a
    db $10
    ld hl, sp+$18
    inc de
    db $10
    ld hl, sp+$20
    inc d
    db $10
    ld hl, sp-$28
    inc hl
    jr nc, @-$16

    add sp, $27
    jr nc, @-$06

    ldh a, [$0e]
    db $10
    ld hl, sp-$08
    rrca
    db $10
    ld hl, sp-$20
    rra
    db $10
    add b
    ldh [rNR23], a
    inc b
    db $10
    ldh a, [$e0]
    ld b, $10
    ld hl, sp+$10
    db $10
    db $10
    ld hl, sp+$18
    ld de, $f010
    ret c

    dec d
    db $10
    ldh a, [$e8]
    ld d, $10
    ldh a, [$f0]
    rla
    db $10
    ldh a, [$f8]
    jr jr_05c_4ae8

    ldh a, [$08]
    add hl, de
    db $10
    ldh a, [rNR10]
    ld a, [de]
    db $10
    ldh a, [rNR23]
    dec de
    db $10
    ld hl, sp-$28
    inc e
    db $10

jr_05c_4ae8:
    ld hl, sp-$20
    dec e
    db $10
    ld hl, sp-$08
    jr nz, jr_05c_4b00

    ld hl, sp+$00
    ld hl, $f810
    ld [$1022], sp
    ld hl, sp+$20
    inc hl
    db $10
    ld hl, sp-$18
    ld e, $10

jr_05c_4b00:
    ld hl, sp-$10

jr_05c_4b02:
    rra
    db $10
    add b
    add sp, $20
    nop
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ldh a, [$e0]
    dec bc
    db $10
    ldh a, [$e8]
    inc c
    db $10
    ldh a, [rNR23]
    add hl, bc
    db $10
    ld hl, sp-$20
    ld [de], a
    db $10
    ldh a, [$08]
    add hl, de
    jr nc, jr_05c_4b02

    jr jr_05c_4b48

    db $10
    add sp, $10

jr_05c_4b27:
    dec h
    db $10
    add sp, $18
    ld h, $10
    ld hl, sp+$08
    jr nz, jr_05c_4b41

    ld hl, sp-$08
    inc hl
    jr nc, @-$0e

    ldh a, [$27]
    db $10
    ldh a, [rNR10]
    jr z, jr_05c_4b4d

    ldh a, [rNR41]
    add hl, hl
    db $10

jr_05c_4b41:
    ld hl, sp-$28
    ld a, [hl+]
    db $10
    ld hl, sp-$18
    dec hl

jr_05c_4b48:
    db $10
    ld hl, sp-$10
    inc l
    db $10

jr_05c_4b4d:
    ld hl, sp+$10
    dec l

jr_05c_4b50:
    db $10
    ld hl, sp+$00
    rra
    db $10
    ld hl, sp+$18
    rrca
    db $10
    ld hl, sp+$20
    ld l, $10
    add b
    sbc [hl]
    ld c, e
    and a
    ld c, e
    ret nc

    ld c, e
    ld bc, $424c
    ld c, h
    jp $804c


    ld c, l
    ld hl, $ae4e
    ld c, [hl]
    rla
    ld c, a
    ld e, b
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ld a, b

jr_05c_4b81:
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ld hl, sp-$50
    inc b
    db $10
    ld hl, sp+$48
    inc b
    jr nc, jr_05c_4b27

    ldh a, [$be]
    nop
    db $10
    ld hl, sp-$4a
    ld bc, $f810
    cp [hl]
    ld [bc], a
    db $10
    ld hl, sp-$3a
    inc bc
    db $10
    ld hl, sp-$32
    add hl, bc
    db $10
    ldh a, [$3a]
    nop
    jr nc, @-$06

jr_05c_4bc0:
    ld b, d
    ld bc, $f830

jr_05c_4bc4:
    ld a, [hl-]
    ld [bc], a
    jr nc, jr_05c_4bc0

    ld [hl-], a
    inc bc
    jr nc, jr_05c_4bc4

    ld a, [hl+]
    add hl, bc
    jr nc, jr_05c_4b50

    ld hl, sp+$2c
    ld bc, $f830
    call z, $1001
    ldh a, [$e4]
    dec b
    db $10
    ld hl, sp-$2c

jr_05c_4bde:
    ld b, $10
    ld hl, sp-$24
    rlca
    db $10
    ld hl, sp-$1c
    ld [$f810], sp
    db $ec
    add hl, bc
    db $10
    ld hl, sp+$24
    ld b, $30
    ld hl, sp+$1c
    rlca
    jr nc, @-$06

    inc d
    ld [$f830], sp
    inc c
    add hl, bc
    jr nc, @-$0e

    inc d
    dec b
    jr nc, jr_05c_4b81

    rst $28
    ld c, $00
    jr nc, jr_05c_4bde

    ld sp, hl
    db $10
    db $10
    ldh [$f8], a
    ld de, $e010
    nop
    ld [de], a
    db $10
    add sp, -$08
    ld hl, $e810
    nop
    ld [hl+], a
    db $10
    ldh a, [$f0]
    inc de
    db $10
    ld hl, sp-$10
    inc hl
    db $10
    ld hl, sp-$08
    inc h
    db $10
    ld hl, sp+$00
    dec h
    db $10
    ld hl, sp+$08
    ld h, $10
    ld hl, sp-$18
    jr nz, jr_05c_4c41

    ld hl, sp+$10
    jr nz, jr_05c_4c65

    ldh a, [rP1]
    dec d
    db $10
    ldh a, [$08]
    ld d, $10
    ldh a, [$f8]
    ld e, $10

jr_05c_4c41:
    add b
    ret nc

    nop
    ld a, [bc]
    db $10
    ret c

    nop
    dec bc
    db $10
    ret c

    rlca
    inc c
    db $10
    ldh [rDIV], a
    ld c, $10
    add sp, $08
    add hl, de
    db $10
    ldh a, [rP1]
    add hl, de
    db $10
    ldh a, [$08]
    add hl, hl
    db $10
    ldh a, [rNR23]
    rla
    db $10
    ld hl, sp+$17
    daa

jr_05c_4c65:
    db $10
    ldh a, [$e0]
    inc d
    db $10
    ldh a, [$e8]
    dec h
    db $10
    ldh [$0c], a
    ld [hl+], a
    db $10
    ret c

    ld hl, sp+$12
    jr nc, @-$26

jr_05c_4c77:
    xor $10
    jr nc, @-$1e

jr_05c_4c7b:
    db $fc
    ld hl, $e810
    ld hl, sp+$13
    db $10
    add sp, $00
    dec d
    jr nc, jr_05c_4c77

    ld hl, sp+$28
    db $10
    ldh a, [$f0]
    jr z, @+$32

    ld hl, sp+$0f
    inc hl
    jr nc, jr_05c_4c7b

    db $10
    jr z, jr_05c_4cc6

    ld hl, sp-$20
    ld a, [de]
    db $10
    ld hl, sp-$18
    dec de
    db $10
    ld hl, sp-$01
    dec de
    db $10
    ld hl, sp+$07
    inc e
    db $10
    ldh a, [rNR10]
    ld e, $30
    ld hl, sp-$10
    ld a, [hl+]
    db $10
    ld hl, sp-$09
    dec bc
    db $10
    ldh [$ef], a
    ld a, [de]
    jr nc, @-$1e

    rst $20
    inc c
    jr nc, @-$16

    pop hl
    ld [hl+], a
    jr nc, @-$16

    jp hl


    jr jr_05c_4cf2

    add b
    add sp, -$18
    inc d

jr_05c_4cc6:
    db $10
    ldh [$e7], a
    ld hl, $e010
    rst $28
    add hl, de
    db $10
    ret c

jr_05c_4cd0:
    jr nz, jr_05c_4ce9

    db $10
    ldh [$1f], a
    daa
    db $10
    ret nc

    call c, $7022
    add sp, $18
    db $10
    ld d, b
    ld hl, sp-$06
    inc e
    db $10
    ldh [$df], a
    dec e
    db $10
    ld hl, sp-$0e

jr_05c_4ce9:
    inc l
    db $10
    ret nc

    db $ec
    inc e
    db $10
    ret c

    ldh [rNR23], a

jr_05c_4cf2:
    db $10
    ret c

    add sp, $19
    db $10
    ret nc

    db $e4
    add hl, hl
    db $10
    ret nc

    db $f4
    add hl, hl
    jr nc, jr_05c_4cd0

jr_05c_4d00:
    db $fc
    inc e
    ld d, b
    ret nc

    inc b
    add hl, de
    ld [hl], b
    ret c

    ldh a, [rNR24]
    ld [hl], b
    ldh [$f7], a
    add hl, hl
    db $10
    ret c

    ld hl, sp+$1c
    db $10
    add sp, -$10
    add hl, hl
    db $10
    ldh a, [$f4]
    add hl, hl
    ld d, b
    ld hl, sp+$02
    ld c, $50
    ldh a, [rDIV]
    ld c, $70
    ret c

    db $10
    add hl, de
    jr nc, jr_05c_4d00

jr_05c_4d28:
    nop
    add hl, de
    ld [hl], b
    ldh [rIE], a
    inc e
    ld d, b
    add sp, -$08
    inc e
    ld d, b
    ret nc

    inc c
    ld c, $10
    ret c

    ld [$1029], sp
    ldh [rTAC], a
    add hl, hl
    jr nc, jr_05c_4d28

jr_05c_4d40:
    nop
    dec de
    db $10
    ret nc

    inc d
    inc e
    db $10
    add sp, $08
    inc e
    db $10
    ldh a, [$fc]
    add hl, hl
    db $10
    ret nc

    inc e
    rrca
    db $10
    ret c

    jr jr_05c_4d6a

    jr nc, jr_05c_4d40

    db $10
    rrca
    db $10
    ldh [rIF], a
    ld a, [hl+]
    ld d, b
    ldh [rNR22], a
    db $10
    ld [hl], b
    ldh a, [$0c]
    jr z, @+$72

    ldh a, [$ec]
    dec bc

jr_05c_4d6a:
    ld d, b
    ld hl, sp-$1e
    dec b
    db $10
    ld hl, sp+$12
    jr nz, jr_05c_4da3

    ld hl, sp+$1a
    ld d, $10
    ld hl, sp-$16
    dec hl
    db $10
    ld hl, sp+$0a
    dec c
    db $10
    add b
    ld hl, sp+$0a
    ld h, $10
    add sp, $19
    db $10
    db $10
    ldh a, [rNR23]
    ld de, $f010
    jr nz, jr_05c_4da1

    db $10
    ld hl, sp+$18
    ld hl, $f810
    jr nz, jr_05c_4db9

    db $10
    ldh [$e8], a
    rla
    db $10
    add sp, -$18
    daa
    db $10
    ret c

jr_05c_4da1:
    ldh a, [rNR23]

jr_05c_4da3:
    db $10
    add sp, -$0c
    jr jr_05c_4db8

    ldh [rP1], a
    jr @+$32

    ldh a, [rP1]
    jr @+$32

    ret nc

    nop
    add hl, de
    db $10
    ret c

    ld hl, sp+$19
    db $10

jr_05c_4db8:
    ret nc

jr_05c_4db9:
    ld hl, sp+$29
    db $10
    add sp, -$04
    ld c, $10
    add sp, $04
    ld [hl+], a
    db $10
    ret nc

jr_05c_4dc5:
    ldh a, [rNR42]
    db $10
    ret c

    db $10
    rla
    jr nc, @-$1e

jr_05c_4dcd:
    db $10
    daa
    jr nc, jr_05c_4da1

jr_05c_4dd1:
    jr nz, jr_05c_4dea

    db $10
    ldh a, [$f0]
    jr z, @+$12

    add sp, -$21
    db $10
    jr nc, jr_05c_4dcd

jr_05c_4ddd:
    ldh [rNR11], a
    jr nc, jr_05c_4dd1

jr_05c_4de1:
    ret c

    ld [de], a
    jr nc, jr_05c_4ddd

    ldh [rNR42], a
    jr nc, jr_05c_4de1

    ret c

jr_05c_4dea:
    inc c
    jr nc, jr_05c_4dc5

    ret c

    dec e
    db $10
    ldh [$28], a
    dec e
    db $10
    ret nc

    ld [$100f], sp
    ldh a, [$f8]
    rra
    db $10
    ldh [$f8], a
    rra
    db $10
    ld hl, sp-$0e
    inc l
    db $10
    ld hl, sp-$06
    dec l
    db $10
    ldh [$f0], a
    ld e, $10
    ret c

    ld [$301e], sp
    ret c

    nop
    add hl, hl
    ld [hl], b
    ld hl, sp+$02
    dec c
    db $10
    ld hl, sp+$28
    rla
    jr nc, @-$06

    ret nc

    rla
    db $10
    add b
    ldh a, [$f0]
    jr jr_05c_4e35

    ldh a, [$f8]
    add hl, de
    db $10
    db $e4
    call nc, Call_000_1010
    db $ec
    inc h
    ld de, $f430

jr_05c_4e32:
    inc e
    daa
    db $10

jr_05c_4e35:
    db $ec

jr_05c_4e36:
    inc e
    jr z, jr_05c_4e49

    db $e4
    inc h
    db $10
    jr nc, jr_05c_4e36

    db $10
    inc c
    db $10
    ret c

    db $10
    rla
    db $10
    ldh [rNR10], a
    daa
    db $10

jr_05c_4e49:
    call c, Call_000_17e8
    jr nc, jr_05c_4e32

    add sp, $27
    jr nc, @-$2e

    ld hl, sp+$0a
    db $10
    ret c

    ld hl, sp+$0b
    db $10
    ret c

    nop
    inc c
    db $10
    ldh [$fc], a
    ld c, $10
    ldh [rDIV], a
    ld [hl+], a
    db $10
    add sp, -$10
    jr z, @+$12

    add sp, -$08
    add hl, hl
    db $10
    add sp, $00
    add hl, de
    db $10
    ldh a, [$08]
    jr z, jr_05c_4ea5

    ret c

    ldh a, [rNR21]
    jr nc, @-$16

    ld [$100f], sp
    ld hl, sp-$18
    ld a, [de]
    db $10
    ld hl, sp-$10
    dec de
    db $10
    ld hl, sp+$08
    inc e
    ld [hl], b
    ld hl, sp-$08

jr_05c_4e8b:
    ld c, $10
    ld hl, sp+$00
    dec l
    db $10
    db $f4
    inc h
    ld e, $30
    ldh a, [rP1]
    add hl, hl
    db $10
    db $ec
    call nc, Call_000_1011
    db $f4
    call c, $3027
    db $ec
    call c, Call_000_3028

jr_05c_4ea5:
    db $f4
    call nc, Call_000_101e
    ldh [$f4], a
    jr jr_05c_4ebd

    add b
    rst $28
    ld c, $00
    jr nc, jr_05c_4e8b

    ld sp, hl
    db $10
    db $10
    ldh [$f8], a
    ld de, $e010
    nop
    ld [de], a

jr_05c_4ebd:
    db $10
    add sp, -$08
    ld hl, $e810
    nop
    ld [hl+], a
    db $10
    ldh a, [$f0]
    inc de
    db $10
    ldh a, [$f8]
    inc d
    db $10
    ldh a, [rP1]
    dec d
    db $10
    ldh a, [$08]
    ld d, $10
    ld hl, sp-$10

jr_05c_4ed8:
    inc hl
    db $10
    ld hl, sp-$08
    inc h
    db $10
    ld hl, sp+$00
    dec h
    db $10
    ld hl, sp+$08
    ld h, $10
    ld hl, sp-$18
    jr nz, @+$12

    ld hl, sp+$10
    jr nz, jr_05c_4f1e

    ldh a, [$d4]
    ld de, $f010
    call c, Call_000_1012
    add sp, -$28
    ld a, [bc]
    jr nc, @-$0e

    inc h
    ld de, $f030
    inc e
    ld [de], a
    jr nc, @-$16

jr_05c_4f03:
    jr nz, jr_05c_4f0f

    db $10
    ld hl, sp+$24
    dec bc
    jr nc, jr_05c_4f03

    inc e
    inc c
    jr nc, @-$06

jr_05c_4f0f:
    call nc, Call_000_100b
    ld hl, sp-$24
    inc c
    db $10
    add b
    rst $30

jr_05c_4f18:
    ld [$1000], a
    ldh a, [rNR32]
    rla

jr_05c_4f1e:
    db $10
    ld hl, sp+$1c
    daa
    db $10
    ldh a, [$dc]
    rla
    jr nc, @-$06

jr_05c_4f28:
    call c, $3027
    ldh [rIE], a
    db $10
    jr nc, jr_05c_4f18

    nop
    ld de, $e830
    ld hl, sp+$12
    jr nc, jr_05c_4f28

jr_05c_4f38:
    nop
    ld hl, $f030
    ld hl, sp+$22
    jr nc, jr_05c_4f38

jr_05c_4f40:
    ld [$3013], sp
    ld hl, sp+$00
    inc d
    jr nc, jr_05c_4f40

jr_05c_4f48:
    ld hl, sp+$15
    jr nc, @-$06

    ldh a, [rNR21]
    jr nc, jr_05c_4f48

    call nc, Call_000_101d
    ld hl, sp+$24
    dec e
    jr nc, jr_05c_4ed8

    add sp, -$08
    rla
    db $10
    ld hl, sp-$08
    inc h
    db $10
    ld hl, sp-$18
    ld d, $10
    ld hl, sp-$10
    ld [hl+], a
    jr nc, @-$06

    nop
    ld [hl+], a
    db $10
    ld hl, sp+$08
    dec e
    db $10
    ldh a, [$f8]
    ld de, $f010
    cp $1e
    ld [hl], b
    add b
    cp c
    ld c, a
    jp z, $db4f

    ld c, a
    db $fc
    ld c, a
    dec l
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld [c], a
    ld hl, sp+$00
    nop
    ld [c], a
    nop
    ld bc, $ea00
    ld hl, sp+$02
    nop
    ld [$0300], a

jr_05c_4fc8:
    nop
    add b
    db $e4

jr_05c_4fcb:
    ld hl, sp+$07
    nop
    db $e4
    nop
    ld [$ec00], sp
    ld hl, sp+$09
    nop
    db $ec
    nop
    ld a, [bc]
    nop
    add b
    add sp, $08
    nop
    jr nz, jr_05c_4fc8

    nop
    ld bc, $f020
    ld [$2002], sp
    ldh a, [rP1]
    inc bc
    jr nz, jr_05c_4fcb

    pop af
    nop
    nop
    rst $18
    ld sp, hl
    ld bc, $e700
    pop af
    ld [bc], a
    nop
    rst $20
    ld sp, hl
    inc bc
    nop
    add b
    ld [c], a
    nop
    rrca
    nop
    ld [c], a
    ld [$0010], sp
    jp c, Jump_000_0c00

    nop
    jp c, Jump_000_0bf8

    nop
    ld [$0eff], a
    ld h, b
    ld [$0ff7], a
    ld h, b
    ld [$10ef], a
    ld h, b
    ld [$0d07], a
    ld h, b
    ld a, [c]
    rst $30
    inc c
    ld h, b
    ld a, [c]
    rst $38
    dec bc
    ld h, b
    ld [c], a
    ld hl, sp+$0e
    nop
    ld [c], a
    ldh a, [$0d]
    nop
    add b
    rst $18
    ld b, $01

jr_05c_5030:
    nop
    rst $20
    cp $02

jr_05c_5034:
    nop
    rst $20
    ld b, $03
    nop
    rst $18
    cp $00
    nop
    and $ef
    ld bc, $ee20
    rst $28
    inc bc
    jr nz, jr_05c_5034

    rst $38
    ld [bc], a
    jr nz, jr_05c_5030

    rst $30
    inc b
    nop
    xor $f7
    dec b
    nop
    add b
    sub d
    ld d, b
    di
    ld d, b
    inc [hl]
    ld d, c
    ld b, l
    ld d, c
    ld l, d
    ld d, c
    sbc e
    ld d, c
    db $ec
    ld d, c
    dec l
    ld d, d
    ld h, d
    ld d, d
    jp nz, $c252

    ld d, d
    jp nz, $c252

    ld d, d
    jp nz, $c252

    ld d, d
    jp nz, $c252

jr_05c_5073:
    ld d, d
    jp nz, $c252

    ld d, d
    jp nz, $c252

    ld d, d
    jp nz, $c252

    ld d, d
    jp nz, $c252

    ld d, d
    jp nz, $c252

    ld d, d
    jp nz, $c252

    ld d, d
    jp nz, $c252

    ld d, d
    jp nz, $d052

    add sp, $19
    nop
    ret nc

    ldh a, [rNR30]
    nop
    ret nc

    ld hl, sp+$1b
    nop
    ret nc

    db $10
    add hl, de
    jr nz, jr_05c_5073

jr_05c_50a3:
    ld [$201a], sp
    ret nc

jr_05c_50a7:
    nop
    dec de
    jr nz, jr_05c_50a3

    add sp, $19
    ld b, b
    ld hl, sp-$10
    ld a, [de]
    ld b, b
    ld hl, sp-$08
    dec de
    ld b, b
    ld hl, sp+$10
    add hl, de
    ld h, b
    ld hl, sp+$08
    ld a, [de]
    ld h, b
    ld hl, sp+$00
    dec de
    ld h, b
    ret c

    add sp, $1c
    nop
    ret c

    ldh a, [rNR33]
    nop
    ret c

    db $10
    inc e
    jr nz, jr_05c_50a7

    ld [$201d], sp
    ldh a, [rNR10]
    inc e
    ld h, b
    ldh a, [$08]
    dec e
    ld h, b
    ldh a, [$e8]
    inc e
    ld b, b
    ldh a, [$f0]
    dec e
    ld b, b
    ldh [$e8], a

jr_05c_50e4:
    ld e, $00
    add sp, -$18
    ld e, $40
    ldh [rNR10], a
    ld e, $20
    add sp, $10

jr_05c_50f0:
    ld e, $60
    add b
    call c, $19f0
    nop
    call c, $1af8
    nop
    db $e4
    ldh a, [rNR32]
    nop
    db $e4
    ld hl, sp+$1d
    nop
    call c, Call_000_1908
    jr nz, jr_05c_50e4

jr_05c_5108:
    nop
    ld a, [de]
    jr nz, jr_05c_50f0

    ld [$201c], sp
    db $e4
    nop
    dec e
    jr nz, jr_05c_5108

    ld [$6019], sp
    db $f4
    nop
    ld a, [de]
    ld h, b
    db $ec
    ld [$601c], sp
    db $ec
    nop
    dec e
    ld h, b
    db $f4
    ldh a, [rNR24]
    ld b, b
    db $f4
    ld hl, sp+$1a
    ld b, b
    db $ec
    ldh a, [rNR32]
    ld b, b
    db $ec
    ld hl, sp+$1d
    ld b, b
    add b
    db $ec
    ld hl, sp+$19
    ld b, b
    db $ec
    nop
    add hl, de
    ld h, b
    db $e4
    nop
    add hl, de
    jr nz, @-$1a

    ld hl, sp+$19
    nop
    add b
    rst $18
    ld b, $01

jr_05c_5148:
    nop
    rst $20
    cp $02

jr_05c_514c:
    nop
    rst $20
    ld b, $03
    nop
    rst $18
    cp $00
    nop
    and $ef
    ld bc, $ee20
    rst $28
    inc bc
    jr nz, jr_05c_514c

    rst $38
    ld [bc], a
    jr nz, jr_05c_5148

    rst $30
    inc b
    nop
    xor $f7
    dec b
    nop
    add b
    ld [c], a
    nop

jr_05c_516c:
    rrca
    nop
    ld [c], a
    ld [$0010], sp
    jp c, Jump_000_0c00

    nop
    jp c, Jump_000_0bf8

    nop
    ld [$0eff], a
    ld h, b
    ld [$0ff7], a

jr_05c_5181:
    ld h, b
    ld [$10ef], a
    ld h, b
    ld [$0d07], a
    ld h, b
    ld a, [c]
    rst $30
    inc c
    ld h, b
    ld a, [c]
    rst $38
    dec bc
    ld h, b
    ld [c], a
    ld hl, sp+$0e
    nop
    ld [c], a
    ldh a, [$0d]
    nop
    add b
    add sp, $08
    nop
    jr nz, @-$16

    nop
    ld bc, $f020

jr_05c_51a4:
    ld [$2002], sp
    ldh a, [rP1]
    inc bc
    jr nz, jr_05c_5181

    ld sp, hl

jr_05c_51ad:
    nop
    nop
    push de
    ld bc, $0001
    db $dd
    ld sp, hl
    ld [bc], a
    nop
    db $dd
    ld bc, $0003
    db $e4
    rlca
    ld [bc], a
    nop
    db $e4
    rrca
    inc bc
    nop
    call c, $0011
    jr nz, jr_05c_51a4

    add hl, bc
    ld bc, $df20
    xor $00
    nop

jr_05c_51cf:
    rst $18
    or $01
    nop
    rst $20
    xor $02
    nop
    rst $20
    or $03
    nop
    rst $28
    db $fd
    nop
    jr nz, jr_05c_51cf

    push af
    ld bc, $f720
    db $fd
    ld [bc], a
    jr nz, @-$07

    push af
    inc bc
    jr nz, jr_05c_516c

    ldh a, [$fb]
    rlca
    nop
    ldh a, [$03]
    ld [$f800], sp
    ei
    add hl, bc
    nop
    ld hl, sp+$03
    ld a, [bc]
    nop
    db $e3

jr_05c_51fd:
    add sp, $07
    nop
    db $e3
    ldh a, [$08]
    nop
    db $eb

jr_05c_5205:
    add sp, $09
    nop
    db $eb

jr_05c_5209:
    ldh a, [$0a]
    nop
    db $ec

jr_05c_520d:
    db $10
    rlca
    jr nz, jr_05c_51fd

    ld [$2008], sp
    db $f4
    db $10
    add hl, bc
    jr nz, jr_05c_520d

    ld [$200a], sp
    ret c

    ld b, $07
    jr nz, @-$26

    cp $08
    jr nz, jr_05c_5205

    ld b, $09
    jr nz, jr_05c_5209

jr_05c_5229:
    cp $0a
    jr nz, jr_05c_51ad

    jp c, $00ef

    nop
    jp c, $01f7

    nop
    ld [c], a
    rst $28
    ld [bc], a
    nop
    ld [c], a
    rst $30
    inc bc
    nop
    rst $20
    dec b
    ld [bc], a
    nop
    rst $20

jr_05c_5242:
    dec c
    inc bc
    nop
    rst $18
    rrca
    nop
    jr nz, jr_05c_5229

    rlca
    ld bc, $f420
    ld a, [$0003]
    db $f4
    ld a, [c]
    inc bc
    jr nz, jr_05c_5242

    ld a, [$0006]
    db $ec
    ld a, [c]
    ld bc, $ef20
    ld bc, $2002
    add b
    ret c

    ld sp, hl
    rrca
    nop
    ret c

    ld bc, $0010
    ret nc

    ld sp, hl
    inc c
    nop
    ret nc

    pop af
    dec bc
    nop
    ldh [$f8], a
    ld c, $60
    ldh [$f0], a
    rrca
    ld h, b
    ldh [$e8], a
    db $10
    ld h, b
    ldh [rP1], a
    dec c
    ld h, b
    add sp, -$10
    inc c
    ld h, b
    add sp, -$08
    dec bc
    ld h, b
    ret c

    pop af
    ld c, $00
    ret c

    jp hl


    dec c
    nop
    add sp, $09
    rrca
    nop
    add sp, $11
    stop
    ldh [$09], a
    inc c
    nop
    ldh [rSB], a
    dec bc
    nop
    ldh a, [$08]
    ld c, $60
    ldh a, [rP1]
    rrca
    ld h, b
    ldh a, [$f8]
    db $10
    ld h, b
    ldh a, [rNR10]
    dec c
    ld h, b
    ld hl, sp+$00
    inc c
    ld h, b
    ld hl, sp+$08
    dec bc
    ld h, b
    add sp, $01
    ld c, $00
    add sp, -$07
    dec c
    nop
    add b
    inc bc
    ld d, e
    and h
    ld d, e
    dec h
    ld d, h
    or [hl]
    ld d, h
    rst $00
    ld d, h
    add sp, $54
    ld l, l
    ld d, l
    ld c, $56
    sub e
    ld d, [hl]
    jr nz, jr_05c_532e

    sbc c
    ld d, a
    ld a, [hl+]
    ld e, b
    or e
    ld e, b
    inc a
    ld e, c
    or c
    ld e, c
    ld a, $5a
    or a
    ld e, d
    ld c, b
    ld e, e
    pop de
    ld e, e
    ld e, d
    ld e, h
    adc $5c
    adc $5c
    adc $5c
    adc $5c
    adc $5c
    adc $5c
    adc $5c
    adc $5c
    adc $5c
    adc $5c
    adc $5c
    adc $5c
    ld hl, sp+$48
    add hl, de
    ld h, b
    ret nc

jr_05c_5308:
    ld c, b
    add hl, de
    jr nz, @-$16

    ld b, h
    dec de
    ld b, b
    ldh a, [rLCDC]
    dec de
    ld b, b
    ldh [rLY], a
    dec de
    nop
    ret c

    ld b, b
    dec de
    nop
    ld hl, sp-$50
    add hl, de
    ld b, b
    ret nc

    or b
    add hl, de
    nop
    ret c

    cp b
    dec de
    jr nz, jr_05c_5308

    or h
    dec de
    jr nz, @-$0e

    cp b
    dec de

jr_05c_532e:
    ld h, b
    add sp, -$4c
    dec de
    ld h, b
    ret nc

    ldh [rNR30], a
    nop
    ret nc

    ret nc

    ld a, [de]
    nop
    ret nc

    ret nz

    ld a, [de]
    nop
    ld hl, sp-$20
    ld a, [de]
    ld b, b
    ld hl, sp-$30
    ld a, [de]
    ld b, b
    ld hl, sp-$40
    ld a, [de]
    ld b, b
    ret nc

    jr z, jr_05c_5368

    jr nz, @-$06

jr_05c_5350:
    jr z, jr_05c_536c

    ld h, b
    ret nc

    jr @+$1c

    jr nz, jr_05c_5350

jr_05c_5358:
    jr @+$1c

    ld h, b
    ret nc

    jr c, jr_05c_5378

    jr nz, jr_05c_5358

    jr c, @+$1c

    ld h, b
    ret c

jr_05c_5364:
    jr nc, jr_05c_537f

    jr nz, jr_05c_5358

jr_05c_5368:
    jr nc, jr_05c_5383

    ld h, b
    ret c

jr_05c_536c:
    ret z

    add hl, de
    nop
    ldh a, [$c8]
    add hl, de
    ld b, b
    call c, $1bc0
    jr nz, jr_05c_5364

jr_05c_5378:
    ret nz

jr_05c_5379:
    dec de
    ld h, b
    call c, $1b38
    nop

jr_05c_537f:
    db $ec
    jr c, jr_05c_539d

    ld b, b

jr_05c_5383:
    ldh [$cc], a
    dec de
    jr nz, @-$16

    call z, Call_05c_601b
    add sp, $2c
    dec de
    ld b, b
    ldh [$2c], a
    dec de
    nop
    ret nc

    ldh a, [rNR32]
    nop
    ret nc

    ld [$201c], sp
    ld hl, sp-$10

jr_05c_539d:
    inc e
    ld b, b
    ld hl, sp+$08
    inc e
    ld h, b
    add b
    ret nc

jr_05c_53a5:
    db $10
    ld a, [de]
    jr nz, jr_05c_5379

    jr nz, jr_05c_53c5

    jr nz, jr_05c_53a5

jr_05c_53ad:
    db $10
    ld a, [de]
    ld h, b
    ld hl, sp+$20
    ld a, [de]
    ld h, b
    ret nc

    add sp, $1a
    nop
    ret nc

    ret c

    ld a, [de]
    nop
    ld hl, sp-$18
    ld a, [de]
    ld b, b
    ld hl, sp-$28
    ld a, [de]
    ld b, b
    ret nc

jr_05c_53c5:
    ret nc

    add hl, de
    nop
    ret c

    ret nc

    dec de
    jr nz, jr_05c_53ad

jr_05c_53cd:
    call nc, $201b
    ldh a, [$d0]
    dec de
    ld h, b
    add sp, -$2c
    dec de
    ld h, b
    ld hl, sp-$30
    add hl, de
    ld b, b
    ld hl, sp+$28
    add hl, de
    ld h, b
    ret nc

    jr z, jr_05c_53fc

    jr nz, jr_05c_53cd

    inc h
    dec de
    ld b, b
    ldh a, [$28]
    dec de
    ld b, b
    ldh [rNR50], a
    dec de
    nop
    ret c

    jr z, jr_05c_540e

    nop
    ret nc

    ld hl, sp+$1c
    nop
    ld hl, sp+$00
    inc e
    ld h, b

jr_05c_53fc:
    ld hl, sp-$08
    inc e
    ld b, b
    ret nc

    nop
    inc e
    jr nz, @-$26

jr_05c_5405:
    call c, $0019
    ldh a, [$dc]
    add hl, de
    ld b, b
    ldh [$e0], a

jr_05c_540e:
    dec de
    jr nz, @-$16

    ldh [rNR31], a
    ld h, b
    ldh a, [rNR32]
    add hl, de
    ld h, b
    ret c

    inc e

jr_05c_541a:
    add hl, de
    jr nz, jr_05c_5405

    jr jr_05c_543a

    ld b, b
    ldh [rNR23], a
    dec de
    nop
    add b
    ldh a, [$e8]
    add hl, de
    ld b, b
    ret c

    add sp, $19
    nop
    ldh [$e8], a
    dec de
    jr nz, jr_05c_541a

    add sp, $1b
    ld h, b
    ret c

jr_05c_5436:
    nop
    inc e
    jr nz, @-$26

jr_05c_543a:
    ld [$201a], sp
    ret c

    ld hl, sp+$1c
    nop
    ret c

    ldh a, [rNR30]
    nop
    ldh a, [rP1]
    inc e
    ld h, b
    ldh a, [$f8]
    inc e
    ld b, b
    ldh a, [$f0]
    ld a, [de]
    ld b, b
    ret c

    db $10
    add hl, de
    jr nz, jr_05c_5436

    db $10
    dec de
    nop
    ldh a, [rNR10]
    add hl, de
    ld h, b
    add sp, $10
    dec de
    ld b, b
    ld hl, sp+$18
    add hl, de
    ld h, b
    ld hl, sp-$20
    add hl, de
    ld b, b
    ret nc

    ldh [rNR24], a
    nop
    ret nc

    ld [$201a], sp
    ret nc

    ldh a, [rNR30]
    nop
    ld hl, sp-$10
    ld a, [de]
    ld b, b
    ld hl, sp+$08
    ld a, [de]
    ld h, b
    ret nc

jr_05c_547e:
    jr @+$1b

    jr nz, @-$1e

    ldh a, [rNR30]
    nop
    add sp, -$10
    ld a, [de]
    ld b, b
    ldh [$08], a
    ld a, [de]
    jr nz, jr_05c_547e

    ld [$601a], sp
    add sp, $08
    ld a, [de]
    ld h, b
    call c, $1be0
    jr nz, @-$12

    ldh [rNR31], a
    ld h, b
    call c, $1b18
    nop
    db $ec
    jr @+$1d

    ld b, b
    call nc, Call_000_19d4
    nop
    db $f4
    call nc, Call_05c_4019
    call nc, Call_000_1924

jr_05c_54b0:
    jr nz, @-$0a

    inc h
    add hl, de

jr_05c_54b4:
    ld h, b
    add b
    add sp, -$08
    add hl, de
    ld b, b
    add sp, $00
    add hl, de
    ld h, b
    ldh [rP1], a
    add hl, de
    jr nz, @-$1e

    ld hl, sp+$19
    nop
    add b
    add sp, $00
    ld [bc], a
    jr nz, jr_05c_54b4

    ld hl, sp+$03
    jr nz, jr_05c_54b0

    ld hl, sp+$02
    ld b, b
    ldh [rP1], a

jr_05c_54d5:
    inc bc
    ld b, b
    sbc $08

jr_05c_54d9:
    jr z, jr_05c_54db

jr_05c_54db:
    sbc $10
    add hl, hl
    nop
    reti


    di
    ld hl, $ef00
    ei
    jr nz, @+$62

    add b
    add sp, -$10
    dec l
    jr nz, jr_05c_54d5

    add sp, $2e
    jr nz, jr_05c_54d9

    nop
    inc l
    nop
    add sp, $08
    dec l
    nop
    add sp, $10
    ld l, $00
    add sp, -$08
    dec hl
    nop
    ldh [$e8], a
    ld [hl+], a
    nop
    ldh [$f0], a
    inc hl
    nop
    ldh [$f8], a
    inc h
    nop
    ldh [rP1], a
    dec h
    nop
    ldh [$08], a
    ld h, $00
    ldh [rNR10], a
    daa
    nop
    db $db
    jr jr_05c_5543

    nop
    db $db
    jr nz, jr_05c_5548

    nop
    ret c

    add sp, $21
    nop
    ret c

    ldh a, [$2f]
    nop
    ret c

    ld hl, sp+$1d
    nop
    ret c

    nop
    ld e, $00
    ret c

    ld [$001f], sp
    ldh a, [rNR10]
    ld [hl+], a
    ld h, b
    ldh a, [$08]
    inc hl
    ld h, b
    ldh a, [rP1]
    inc h
    ld h, b
    ldh a, [$f8]
    dec h

jr_05c_5543:
    ld h, b
    ldh a, [$f0]
    ld h, $60

jr_05c_5548:
    ldh a, [$e8]
    daa
    ld h, b
    ld hl, sp+$10
    ld hl, $f860
    ld [$602f], sp
    ld hl, sp+$00
    dec e
    ld h, b
    ld hl, sp-$10
    rra
    ld h, b
    push af
    ldh [$28], a
    ld h, b
    push af
    ret c

    add hl, hl
    ld h, b
    ld hl, sp-$08
    ld e, $60
    ret nc

    nop
    jr nz, jr_05c_556c

jr_05c_556c:
    add b
    ldh [$f0], a
    dec d
    nop
    ldh [$f8], a
    ld d, $00
    ldh [rP1], a
    rla
    nop
    ldh [$08], a
    jr jr_05c_557d

jr_05c_557d:
    ret c

    push af
    ld de, $d800

jr_05c_5582:
    db $fd
    ld [de], a
    nop
    add sp, $08
    dec d
    ld h, b
    add sp, $00
    ld d, $60
    add sp, -$08
    rla
    ld h, b
    add sp, -$10
    jr jr_05c_55f5

    ldh a, [$03]
    ld de, $f060

jr_05c_559a:
    ei
    ld [de], a
    ld h, b
    ldh [$e8], a
    rrca
    ld b, b
    ret c

    rst $20
    ld c, $20
    ret c

    rst $18
    rrca
    jr nz, @-$1e

    ldh [$0e], a
    ld b, b
    ret nc

    rst $20
    dec bc
    jr nz, jr_05c_5582

jr_05c_55b2:
    rst $18
    inc c
    jr nz, @-$26

jr_05c_55b6:
    ret c

    db $10
    jr nz, jr_05c_559a

jr_05c_55ba:
    ret c

    dec c
    ld b, b
    ldh a, [$eb]
    rlca
    nop
    ldh a, [$f3]
    ld [$f800], sp
    db $eb
    add hl, bc
    nop
    ld hl, sp-$0d
    ld a, [bc]
    nop
    ldh [rNR42], a
    rrca
    ld b, b
    ldh [$29], a
    db $10
    ld b, b
    ret c

    jr nz, jr_05c_55e6

    jr nz, jr_05c_55b2

    jr @+$11

    jr nz, jr_05c_55b6

    db $10
    db $10
    jr nz, jr_05c_55ba

    jr z, jr_05c_55f1

    jr nz, jr_05c_55b6

jr_05c_55e6:
    jr jr_05c_55f4

    jr nz, jr_05c_55ba

    jr nz, jr_05c_55f7

    jr nz, @-$1e

    add hl, de
    ld c, $40

jr_05c_55f1:
    ldh [rNR11], a
    dec c

jr_05c_55f4:
    ld b, b

jr_05c_55f5:
    ldh a, [rNR41]

jr_05c_55f7:
    rlca
    ld h, b
    ldh a, [rNR23]
    ld [$e860], sp
    jr nz, jr_05c_5609

    ld h, b
    add sp, $18

jr_05c_5603:
    ld a, [bc]
    ld h, b
    add sp, -$20

jr_05c_5607:
    dec bc
    ld b, b

jr_05c_5609:
    add sp, -$18

jr_05c_560b:
    inc c
    ld b, b
    add b
    add sp, $08
    dec l
    nop
    add sp, $10
    ld l, $00
    add sp, -$08
    inc l
    jr nz, jr_05c_5603

jr_05c_561b:
    ldh a, [$2d]
    jr nz, jr_05c_5607

jr_05c_561f:
    add sp, $2e
    jr nz, jr_05c_560b

    nop
    dec hl
    jr nz, jr_05c_5607

    db $10
    ld [hl+], a
    jr nz, jr_05c_560b

jr_05c_562b:
    ld [$2023], sp
    ldh [rP1], a
    inc h
    jr nz, @-$1e

    ld hl, sp+$25
    jr nz, @-$1e

    ldh a, [rNR52]
    jr nz, jr_05c_561b

    add sp, $27
    jr nz, @-$23

    ldh [$28], a
    jr nz, @-$23

    ret c

    add hl, hl
    jr nz, jr_05c_561f

    db $10
    ld hl, $d820

jr_05c_564b:
    ld [$202f], sp
    ret c

    nop
    dec e
    jr nz, jr_05c_562b

    ld hl, sp+$1e
    jr nz, @-$26

    ldh a, [$1f]
    jr nz, jr_05c_564b

    add sp, $22
    ld b, b
    ldh a, [$f0]
    inc hl
    ld b, b
    ldh a, [$f8]
    inc h
    ld b, b
    ldh a, [rP1]
    dec h
    ld b, b
    ldh a, [$08]
    ld h, $40
    ldh a, [rNR10]
    daa
    ld b, b
    ld hl, sp-$18
    ld hl, $f840
    ldh a, [$2f]
    ld b, b
    ld hl, sp-$08
    dec e
    ld b, b
    ld hl, sp+$08
    rra
    ld b, b
    push af
    jr jr_05c_56ad

    ld b, b
    push af
    jr nz, @+$2b

    ld b, b
    ld hl, sp+$00
    ld e, $40
    ret nc

    ld hl, sp+$20
    jr nz, @-$7e

    ldh [$29], a
    rrca
    nop
    ldh [$31], a
    stop
    add sp, $28
    ld c, $60
    add sp, $20
    rrca
    ld h, b
    add sp, $18
    db $10
    ld h, b
    add sp, $30

jr_05c_56a9:
    dec c
    ld h, b
    ldh a, [rNR41]

jr_05c_56ad:
    inc c
    ld h, b
    ldh [rNR42], a
    ld c, $00
    ldh [rNR24], a
    dec c
    nop
    push hl
    cp $08
    jr nz, jr_05c_56a9

    ld b, $09
    jr nz, jr_05c_56ad

    cp $0a
    jr nz, @-$2e

jr_05c_56c4:
    db $10
    rlca
    jr nz, @-$2e

    ld [$2008], sp
    ret c

    db $10
    add hl, bc
    jr nz, @-$26

    ld [$200a], sp
    ldh a, [$28]
    add hl, bc
    jr nz, @-$19

    ld b, $07
    jr nz, jr_05c_56c4

    ld [$200f], a
    add sp, -$1e
    db $10
    jr nz, @-$0e

    db $eb
    ld c, $40
    ldh a, [$f3]
    rrca
    ld b, b
    ldh a, [$fb]
    db $10
    ld b, b
    ldh a, [$e3]
    dec c
    ld b, b
    add sp, -$0e
    ld c, $20
    add sp, -$06
    dec c
    jr nz, @-$06

    db $eb
    dec bc
    ld b, b
    ld hl, sp-$0d
    inc c
    ld b, b
    ldh [$f2], a
    dec bc
    jr nz, @-$1e

    ld [$200c], a
    ret nc

    jr nc, @+$09

    jr nz, @-$2e

    jr z, jr_05c_571a

    jr nz, @-$26

    jr nc, @+$0b

    jr nz, @-$26

    jr z, jr_05c_5724

jr_05c_571a:
    jr nz, @-$26

    ld [hl+], a
    inc c
    jr nz, @-$7e

    call nc, $012e
    nop

jr_05c_5724:
    call c, $0226
    nop

jr_05c_5728:
    call c, $032e
    nop
    db $d4, $26, $00
    nop
    rst $20
    dec d
    ld bc, $ef20
    dec d
    inc bc
    jr nz, jr_05c_5728

    dec h
    ld [bc], a
    jr nz, jr_05c_5724

    dec e
    inc b
    nop
    rst $28
    dec e
    dec b
    nop
    rst $20
    dec h
    ld bc, $db00
    dec c
    nop
    jr nz, jr_05c_5728

    dec b
    ld bc, $e320
    dec c
    ld [bc], a
    jr nz, @-$1b

    dec b
    inc bc
    jr nz, @-$07

    dec hl
    ld [bc], a
    nop
    rst $30
    inc sp
    inc bc
    nop

jr_05c_5760:
    rst $28
    dec hl
    nop
    nop

jr_05c_5764:
    rst $28
    inc sp
    ld bc, $f000
    rst $38
    nop
    nop

jr_05c_576c:
    ldh a, [rTAC]
    ld bc, $f800
    rst $38
    ld [bc], a
    nop
    ld hl, sp+$07
    inc bc
    nop

jr_05c_5778:
    db $e3
    ld b, b
    rlca
    jr nz, jr_05c_5760

    jr c, jr_05c_5787

    jr nz, jr_05c_576c

    ld b, b
    add hl, bc
    jr nz, @-$13

    jr c, jr_05c_5791

jr_05c_5787:
    jr nz, jr_05c_5764

    dec e
    rlca
    jr nz, @-$23

    dec d
    ld [$e320], sp

jr_05c_5791:
    dec e
    add hl, bc
    jr nz, jr_05c_5778

    dec d
    ld a, [bc]
    jr nz, @-$7e

    db $ec
    jr c, jr_05c_57aa

    ld b, b
    db $ec
    ld b, b
    rrca
    ld b, b
    db $ec
    ld c, b
    db $10
    ld b, b
    db $ec
    jr nc, jr_05c_57b5

    ld b, b
    db $f4

jr_05c_57aa:
    ld b, b
    inc c
    ld b, b
    db $f4
    jr c, @+$0b

    nop
    db $f4
    dec e
    rlca
    ld b, b

jr_05c_57b5:
    db $f4
    dec h
    ld [$ec40], sp
    dec e
    add hl, bc
    ld b, b
    db $ec
    dec h
    ld a, [bc]
    ld b, b
    ldh a, [$08]
    rlca
    nop
    ldh a, [rNR10]
    ld [$f800], sp
    ld [$0009], sp
    ld hl, sp+$10
    ld a, [bc]
    nop
    db $ec
    rla
    ld de, $ec60
    rrca
    ld [de], a
    ld h, b
    call nc, Call_000_1108
    nop
    db $d4, $10, $12
    nop
    call nc, $141c
    nop
    call c, Call_000_1504
    nop
    call c, Call_000_160c
    nop
    call c, $1714
    nop
    call c, $181c
    nop
    db $e4

jr_05c_57f6:
    inc e
    dec d
    ld h, b
    db $e4

jr_05c_57fa:
    inc d
    ld d, $60
    db $e4

jr_05c_57fe:
    inc c
    rla
    ld h, b
    db $e4

jr_05c_5802:
    inc b
    jr jr_05c_5865

    call c, Call_000_072c
    jr nz, @-$22

    inc h
    ld [$e420], sp
    inc l
    add hl, bc
    jr nz, jr_05c_57f6

    inc h
    ld a, [bc]
    jr nz, jr_05c_57fa

    ccf
    ld c, $20
    db $e4
    scf
    rrca
    jr nz, jr_05c_5802

    ld b, a
    dec c
    jr nz, jr_05c_57fe

    ccf
    dec bc
    jr nz, jr_05c_5802

    scf
    inc c
    jr nz, jr_05c_57aa

    ret c

    inc c
    ld [bc], a
    nop

jr_05c_582e:
    ret c

    inc d
    inc bc
    nop

jr_05c_5832:
    ret nc

    inc c
    nop
    nop
    db $e3
    dec h
    ld bc, $eb00
    dec h
    inc bc
    nop

jr_05c_583e:
    db $eb
    dec d
    ld [bc], a
    nop

jr_05c_5842:
    db $e3
    dec e
    inc b
    jr nz, jr_05c_5832

    dec e
    dec b
    jr nz, jr_05c_582e

    dec d
    ld bc, $f320

jr_05c_584f:
    rrca
    ld [bc], a
    jr nz, @-$0b

    rlca
    inc bc
    jr nz, jr_05c_5842

    rlca
    ld bc, $f020
    ld a, [hl+]
    rlca
    jr nz, jr_05c_584f

jr_05c_585f:
    ld [hl+], a
    ld [$f820], sp
    ld a, [hl+]
    add hl, bc

jr_05c_5865:
    jr nz, jr_05c_585f

    ld [hl+], a
    ld a, [bc]
    jr nz, jr_05c_583e

    ld sp, $0000
    db $d3
    add hl, sp
    ld bc, $db00
    ld sp, $0002
    db $db
    add hl, sp
    inc bc
    nop
    rst $10
    inc h
    rlca
    jr nz, @-$27

    inc e
    ld [$df20], sp
    inc h
    add hl, bc
    jr nz, @-$1f

    inc e
    ld a, [bc]
    jr nz, @-$14

    dec l
    ld [bc], a
    nop
    ld [c], a

jr_05c_588f:
    dec l
    cpl
    nop
    ld [c], a
    dec [hl]
    inc b
    nop
    ld [$2d35], a
    ld b, b
    add sp, $3d
    dec b
    nop
    ldh [$3d], a
    inc b
    nop
    add sp, $45
    ld l, $40
    db $eb
    rrca
    inc c
    nop
    ret nc

    inc d
    rlca
    jr nz, jr_05c_588f

    ld b, l
    jr z, jr_05c_58b2

jr_05c_58b2:
    add b
    call c, Call_000_0e40
    nop
    call c, $0f48
    nop
    call c, $0d38
    nop
    call nc, Call_000_0c48
    nop
    db $e4
    ld b, a
    ld c, $60
    db $e4
    ccf
    rrca
    ld h, b
    db $ec
    ld b, a
    dec bc
    ld h, b
    db $ec
    ccf
    inc c
    ld h, b
    call nc, $0b40
    nop
    ldh [$30], a
    ld de, $e020
    jr z, @+$14

    jr nz, @-$06

    ld hl, $4011
    ld hl, sp+$29
    ld [de], a
    ld b, b
    ld hl, sp+$35
    inc d
    ld b, b
    ldh a, [rNR33]
    dec d
    ld b, b
    ldh a, [rNR51]
    ld d, $40
    ldh a, [$2d]
    rla
    ld b, b
    ldh a, [$35]
    jr @+$42

    add sp, $35
    dec d
    jr nz, @-$16

    dec l
    ld d, $20
    add sp, $25
    rla
    jr nz, @-$16

    dec e
    jr jr_05c_592b

    ret c

    inc h
    rlca
    ld b, b
    ret c

    inc l
    ld [$d040], sp
    inc h
    add hl, bc
    ld b, b
    ret nc

    inc l
    ld a, [bc]
    ld b, b
    ldh a, [$0d]
    rlca
    ld b, b
    ldh a, [$15]
    ld [$e840], sp
    dec c
    add hl, bc
    ld b, b
    add sp, $15
    ld a, [bc]
    ld b, b

jr_05c_592b:
    ldh a, [rBGP]

jr_05c_592d:
    rlca
    jr nz, @-$0e

jr_05c_5930:
    ccf
    ld [$f820], sp
    ld b, a
    add hl, bc
    jr nz, jr_05c_5930

    ccf
    ld a, [bc]
    jr nz, @-$7e

    ret nc

jr_05c_593d:
    ld b, e
    ld de, $d020
    dec sp
    ld [de], a
    jr nz, jr_05c_592d

jr_05c_5945:
    inc [hl]
    ld de, $e840
    inc a
    ld [de], a
    ld b, b
    add sp, $48
    inc d
    ld b, b
    ldh [$30], a

jr_05c_5952:
    dec d
    ld b, b
    ldh [$38], a
    ld d, $40
    ldh [rLCDC], a
    rla
    ld b, b
    ldh [rOBP0], a
    jr @+$42

    ret c

    ld c, b
    dec d
    jr nz, jr_05c_593d

    ld b, b
    ld d, $20
    ret c

    jr c, jr_05c_5982

    jr nz, jr_05c_5945

    jr nc, jr_05c_5987

    jr nz, jr_05c_5952

jr_05c_5971:
    inc h
    ld c, $00
    pop hl

jr_05c_5975:
    inc l
    rrca
    nop
    jp hl


    dec hl
    ld c, $60
    jp hl


    inc hl
    rrca
    ld h, b
    pop af
    dec hl

jr_05c_5982:
    dec bc
    ld h, b
    pop af

jr_05c_5985:
    inc hl
    inc c

jr_05c_5987:
    ld h, b
    reti


    inc h
    dec bc
    nop
    ldh [rNR32], a
    dec c
    nop
    ldh [rNR23], a
    rlca
    jr nz, jr_05c_5975

    db $10

jr_05c_5996:
    ld [$e820], sp
    jr jr_05c_59a4

    jr nz, jr_05c_5985

    db $10
    ld a, [bc]
    jr nz, jr_05c_5971

    jr z, jr_05c_59aa

    ld b, b

jr_05c_59a4:
    ret nc

    jr nc, jr_05c_59af

    ld b, b
    ld hl, sp+$2a

jr_05c_59aa:
    add hl, bc
    ld b, b
    ld hl, sp+$32
    ld a, [bc]

jr_05c_59af:
    ld b, b
    add b
    ldh [$d0], a
    rrca
    jr nz, jr_05c_5996

    ret z

    db $10
    jr nz, @-$16

    pop de

jr_05c_59bb:
    ld c, $40
    add sp, -$27
    rrca
    ld b, b
    add sp, -$1f
    db $10
    ld b, b
    add sp, -$37
    dec c
    ld b, b
    ldh a, [$d9]
    inc c
    ld b, b
    ldh [$d8], a
    ld c, $20
    ldh [$e0], a
    dec c
    jr nz, jr_05c_59bb

    ei
    ld [$ed00], sp
    di
    add hl, bc
    nop
    db $ed
    ei
    ld a, [bc]
    nop
    ret nc

    jp hl


    rlca
    nop
    ret nc

    pop af
    ld [$d800], sp
    jp hl


    add hl, bc
    nop
    ret c

    pop af
    ld a, [bc]
    nop
    ldh a, [$d1]
    add hl, bc
    nop
    push hl
    di
    rlca
    nop
    add sp, $0f
    rrca
    nop
    add sp, $17
    stop
    ldh a, [$0e]
    ld c, $60
    ldh a, [rTMA]
    rrca
    ld h, b
    ldh a, [$fe]
    db $10
    ld h, b
    ldh a, [rNR21]
    dec c
    ld h, b
    add sp, $07
    ld c, $00
    add sp, -$01
    dec c
    nop
    ld hl, sp+$0e
    dec bc
    ld h, b
    ld hl, sp+$06

jr_05c_5a1f:
    inc c
    ld h, b
    ldh [rTAC], a
    dec bc
    nop
    ldh [rIF], a
    inc c
    nop
    ret nc

    ret


    rlca
    nop
    ret nc

    pop de
    ld [$d800], sp
    ret


    add hl, bc
    nop
    ret c

    pop de
    ld a, [bc]
    nop
    ret c

    rst $10
    inc c
    nop
    add b
    call nc, $01ca
    jr nz, jr_05c_5a1f

    jp nc, $2002

    call c, $03ca
    jr nz, jr_05c_5a1f

    jp nc, Jump_000_2000

jr_05c_5a4e:
    rst $20
    db $e3
    ld bc, $ef00
    db $e3
    inc bc
    nop
    rst $28
    db $d3
    ld [bc], a
    nop
    rst $20
    db $db
    inc b
    jr nz, jr_05c_5a4e

    db $db
    dec b
    jr nz, @-$17

    db $d3
    ld bc, $db20
    db $eb
    nop
    nop
    db $db
    di
    ld bc, $e300
    db $eb
    ld [bc], a
    nop
    db $e3
    di
    inc bc
    nop
    rst $30
    call $2002

jr_05c_5a7a:
    rst $30

jr_05c_5a7b:
    push bc
    inc bc
    jr nz, @-$0f

    call Call_000_2000
    rst $28
    push bc
    ld bc, $f020
    ld sp, hl
    nop
    jr nz, jr_05c_5a7b

jr_05c_5a8b:
    pop af
    ld bc, $f820
    ld sp, hl
    ld [bc], a
    jr nz, jr_05c_5a8b

    pop af
    inc bc
    jr nz, jr_05c_5a7a

    cp b
    rlca
    nop
    db $e3
    ret nz

    ld [$eb00], sp
    cp b
    add hl, bc
    nop
    db $eb
    ret nz

    ld a, [bc]
    nop
    db $db
    db $db
    rlca
    nop
    db $db
    db $e3
    ld [$e300], sp
    db $db
    add hl, bc
    nop
    db $e3
    db $e3
    ld a, [bc]
    nop
    add b
    db $ec
    jp nz, Jump_05c_600e

    db $ec
    cp d
    rrca
    ld h, b
    db $ec
    or d
    db $10
    ld h, b
    db $ec
    jp z, Jump_05c_600d

    db $f4
    cp d
    inc c
    ld h, b
    db $f4
    jp nz, Jump_000_2009

    db $f4

jr_05c_5ad0:
    db $dd
    rlca
    ld h, b
    db $f4

jr_05c_5ad4:
    push de
    ld [$ec60], sp
    db $dd
    add hl, bc
    ld h, b
    db $ec
    push de
    ld a, [bc]
    ld h, b
    ldh a, [$f2]
    rlca
    jr nz, jr_05c_5ad4

jr_05c_5ae4:
    ld [$2008], a
    ld hl, sp-$0e
    add hl, bc
    jr nz, jr_05c_5ae4

jr_05c_5aec:
    ld [$200a], a
    db $ec
    db $e3
    ld de, $ec40
    db $eb
    ld [de], a
    ld b, b
    call nc, $11f2
    jr nz, jr_05c_5ad0

    ld [$2012], a
    call nc, $14de
    jr nz, @-$22

    or $15
    jr nz, jr_05c_5ae4

    xor $16
    jr nz, @-$22

    and $17
    jr nz, jr_05c_5aec

    sbc $18
    jr nz, @-$1a

    sbc $15
    ld b, b
    db $e4
    and $16
    ld b, b
    db $e4
    xor $17
    ld b, b
    db $e4
    or $18
    ld b, b
    call c, Call_000_07ce
    nop
    call c, Call_000_08d6
    nop
    db $e4
    adc $09
    nop
    db $e4
    sub $0a
    nop
    db $e4
    cp e
    ld c, $00
    db $e4

jr_05c_5b38:
    db $c3, $0f, $00


    db $e4
    or e
    dec c
    nop
    call c, $0bbb
    nop
    call c, Call_000_0cc3
    nop
    add b

jr_05c_5b48:
    ret c

    db $ec
    ld [bc], a
    jr nz, @-$26

    db $e4
    inc bc
    jr nz, @-$2e

    db $ec
    nop
    jr nz, jr_05c_5b38

    db $d3
    ld bc, $eb20
    db $d3
    inc bc
    jr nz, jr_05c_5b48

    db $e3
    ld [bc], a
    jr nz, @-$1b

    db $db
    inc b
    nop
    db $eb
    db $db
    dec b
    nop
    db $e3
    db $e3
    ld bc, $f300
    jp hl


    ld [bc], a
    nop

jr_05c_5b70:
    di
    pop af
    inc bc
    nop
    db $eb
    pop af
    ld bc, $f000
    adc $07
    nop
    ldh a, [$d6]
    ld [$f800], sp
    adc $09
    nop
    ld hl, sp-$2a
    ld a, [bc]
    nop
    db $d3
    rst $00
    nop
    jr nz, @-$2b

    cp a
    ld bc, $db20
    rst $00
    ld [bc], a

jr_05c_5b93:
    jr nz, jr_05c_5b70

    cp a
    inc bc
    jr nz, jr_05c_5b70

jr_05c_5b99:
    db $d4, $07, $00
    rst $10

jr_05c_5b9d:
    call c, RST_08
    rst $18
    db $d4, $09, $00
    rst $18
    db $dc, $0a, $00
    ld [$02cb], a
    jr nz, @-$1c

    sra a
    jr nz, jr_05c_5b93

    jp $2004


    ld [$2dc3], a
    ld h, b
    add sp, -$45
    dec b
    jr nz, jr_05c_5b9d

    cp e
    inc b
    jr nz, @-$16

    or e
    ld l, $60
    db $eb
    jp hl


jr_05c_5bc6:
    inc c
    jr nz, jr_05c_5b99

    db $e4
    rlca
    nop
    ldh [$b3], a
    jr z, jr_05c_5bf0

    add b
    call c, Call_000_0eb8
    jr nz, @-$22

jr_05c_5bd6:
    or b
    rrca
    jr nz, @-$22

    ret nz

    dec c
    jr nz, @-$2a

    or b
    inc c
    jr nz, jr_05c_5bc6

    or c
    ld c, $40
    db $e4
    cp c
    rrca
    ld b, b
    db $ec
    or c
    dec bc
    ld b, b
    db $ec
    cp c
    inc c

jr_05c_5bf0:
    ld b, b
    call nc, $0bb8
    jr nz, jr_05c_5bd6

    ret z

    ld de, $e000
    ret nc

    ld [de], a
    nop
    ld hl, sp-$29
    ld de, $f860
    rst $08
    ld [de], a
    ld h, b
    ld hl, sp-$3d
    inc d
    ld h, b
    ldh a, [$db]
    dec d
    ld h, b
    ldh a, [$d3]
    ld d, $60
    ldh a, [$cb]
    rla
    ld h, b
    ldh a, [$c3]
    jr jr_05c_5c79

    add sp, -$3d
    dec d
    nop
    add sp, -$35
    ld d, $00
    add sp, -$2d
    rla
    nop
    add sp, -$25
    jr jr_05c_5c29

jr_05c_5c29:
    ret c

    call nc, $6007
    ret c

    call z, Call_05c_6008
    ret nc

    call nc, $6009
    ret nc

    call z, Call_05c_600a
    ldh a, [$eb]
    rlca
    ld h, b
    ldh a, [$e3]
    ld [$e860], sp
    db $eb
    add hl, bc
    ld h, b
    add sp, -$1d
    ld a, [bc]
    ld h, b
    ldh a, [$b1]
    rlca
    nop
    ldh a, [$b9]
    ld [$f800], sp
    or c
    add hl, bc
    nop
    ld hl, sp-$47
    ld a, [bc]
    nop
    add b
    ret nc

    or l
    ld de, $d000
    cp l
    ld [de], a
    nop
    add sp, -$3c
    ld de, $e860
    cp h
    ld [de], a
    ld h, b
    add sp, -$50
    inc d
    ld h, b
    ldh [$c8], a
    dec d
    ld h, b
    ldh [$c0], a
    ld d, $60
    ldh [$b8], a
    rla

jr_05c_5c79:
    ld h, b
    ldh [$b0], a
    jr jr_05c_5cde

    ret c

    or b
    dec d
    nop
    ret c

    cp b
    ld d, $00
    ret c

    ret nz

    rla
    nop
    ret c

    ret z

    jr jr_05c_5c8e

jr_05c_5c8e:
    pop hl

jr_05c_5c8f:
    call nc, Call_000_200e
    pop hl
    call z, Call_000_200f
    jp hl


    call $400e
    jp hl


    push de
    rrca
    ld b, b
    pop af
    call $400b
    pop af
    push de
    inc c
    ld b, b
    reti


    call nc, Call_000_200b
    ldh [$dc], a
    dec c
    jr nz, jr_05c_5c8f

    ldh [rTAC], a
    nop
    ldh [$e8], a
    ld [$e800], sp
    ldh [$09], a
    nop
    add sp, -$18
    ld a, [bc]
    nop
    ret nc

    ret nc

    rlca
    ld h, b
    ret nc

    ret z

    ld [$f860], sp
    adc $09
    ld h, b
    ld hl, sp-$3a
    ld a, [bc]
    ld h, b
    add b
    rrca
    ld e, l
    jr @+$5f

    add hl, hl
    ld e, l
    ld b, [hl]
    ld e, l
    ld l, e
    ld e, l
    adc h
    ld e, l
    or l
    ld e, l
    ld [c], a

jr_05c_5cde:
    ld e, l
    inc bc
    ld e, [hl]
    jr jr_05c_5d41

    ld b, c
    ld e, [hl]
    ld l, [hl]
    ld e, [hl]
    adc a
    ld e, [hl]
    and e
    ld e, [hl]
    and e
    ld e, [hl]
    and e
    ld e, [hl]
    and e
    ld e, [hl]
    and e
    ld e, [hl]
    and e
    ld e, [hl]
    and e
    ld e, [hl]
    and e
    ld e, [hl]
    and e
    ld e, [hl]
    and e
    ld e, [hl]
    and e
    ld e, [hl]
    and e
    ld e, [hl]
    and e
    ld e, [hl]
    and e
    ld e, [hl]
    and e
    ld e, [hl]
    and e
    ld e, [hl]
    and e
    ld e, [hl]
    and e
    ld e, [hl]
    and e
    ld e, [hl]
    and $fc
    ld [bc], a
    nop
    and $04
    inc bc
    nop
    add b
    xor $f4
    ld [bc], a
    nop
    xor $fc
    inc bc
    nop
    add sp, -$04
    nop
    nop
    add sp, $04
    ld bc, $8000
    ldh a, [$f4]
    nop
    nop
    ldh a, [$fc]
    ld bc, $de00
    db $f4
    nop
    nop
    sbc $fc
    ld bc, $e500
    push af
    inc c
    nop
    push hl
    db $fd
    dec c
    nop

jr_05c_5d41:
    push hl
    dec b
    ld c, $00
    add b
    call c, $02f4
    nop
    call c, $03fc
    nop
    xor $f4
    nop
    nop
    xor $fc
    ld bc, $e300
    push af
    inc b
    nop
    db $e3
    db $fd
    dec b
    nop
    db $e3
    dec b
    ld b, $00
    ld [$07ed], a
    nop
    db $eb
    push af
    ld [$8000], sp
    sbc $f4
    nop
    nop
    sbc $fc
    ld bc, $f000
    ldh a, [$0c]
    nop
    ldh a, [$f8]
    dec c
    nop
    ldh a, [rP1]
    ld c, $00
    ld [c], a
    or $09
    nop
    ld [c], a
    cp $0a
    nop
    ld [c], a
    ld b, $0b
    nop
    add b
    add sp, -$04
    nop
    nop
    add sp, $04
    ld bc, $dd00
    ldh a, [$0c]
    nop
    db $dd
    ld hl, sp+$0d
    nop
    db $dd
    nop
    ld c, $00
    ldh a, [$f0]
    inc b
    nop
    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$10
    ld [$f700], sp
    add sp, $07
    nop
    add b
    jp c, Jump_000_04f1

    nop
    jp c, Jump_000_05f9

    nop
    jp c, Jump_000_0601

    nop
    ld [c], a
    pop af
    ld [$e100], sp
    jp hl


    rlca
    nop
    ld a, [c]
    xor $0c
    nop
    ld a, [c]
    or $0d
    nop
    ld a, [c]
    cp $0e
    nop
    and $f8
    add hl, bc
    nop
    and $00
    ld a, [bc]
    nop
    and $08
    dec bc
    nop
    add b
    db $db
    ld a, [c]
    add hl, bc
    nop
    db $db
    ld a, [$000a]
    db $db
    ld [bc], a
    dec bc
    nop
    and $f8
    inc b
    nop
    and $00
    dec b
    nop
    and $08
    ld b, $00
    xor $f8
    ld [$ed00], sp
    ldh a, [rTAC]
    nop
    add b
    jp hl


    or $0c
    nop
    jp hl


    cp $0d
    nop
    jp hl


    ld b, $0e
    nop
    ldh [$f8], a
    nop
    nop
    ldh [rP1], a
    ld bc, $8000
    add sp, -$04
    nop
    nop
    add sp, $04
    ld bc, $e400
    di
    inc c
    nop
    db $e4
    ei
    dec c
    nop
    db $e4
    inc bc
    ld c, $00
    ldh a, [$f4]
    inc b
    nop
    ldh a, [$fc]
    dec b
    nop
    ldh a, [rDIV]
    ld b, $00
    ld hl, sp-$0c
    ld [$f700], sp
    db $ec
    rlca
    nop
    add b
    xor $f3
    inc c
    nop
    xor $fb
    dec c
    nop
    xor $03
    ld c, $00
    push af
    ld a, [c]
    add hl, bc
    nop
    push af
    ld a, [$000a]
    push af
    ld [bc], a
    dec bc
    nop
    push hl
    db $f4
    inc b
    nop
    push hl
    db $fc
    dec b
    nop
    push hl
    inc b
    ld b, $00
    db $ed
    db $f4
    ld [$ec00], sp
    db $ec
    rlca
    nop
    add b
    db $e4
    push af
    add hl, bc
    nop
    db $e4
    db $fd
    ld a, [bc]
    nop
    db $e4
    dec b
    dec bc
    nop
    db $ec
    or $04
    nop
    db $ec
    cp $05
    nop
    db $ec
    ld b, $06
    nop
    db $f4
    or $08
    nop
    di
    xor $07
    nop
    add b
    and $f3
    inc c
    nop
    and $fb
    dec c
    nop
    and $03
    ld c, $00
    pop af
    ld bc, $0003
    pop af
    ld sp, hl
    ld [bc], a
    nop
    add b
    db $e4
    ld e, [hl]
    db $fd
    ld e, [hl]
    ld [hl+], a
    ld e, a
    ld l, e
    ld e, a
    call nz, Call_000_3d5f
    ld h, b
    xor [hl]
    ld h, b
    dec hl
    ld h, c
    xor b
    ld h, c
    ld hl, $9a62
    ld h, d
    inc de
    ld h, e
    adc b
    ld h, e
    dec b
    ld h, h
    ld a, d
    ld h, h
    rst $10
    ld h, h
    nop
    ld h, l
    nop
    ld h, l
    nop
    ld h, l
    nop
    ld h, l
    nop
    ld h, l
    nop
    ld h, l
    nop
    ld h, l
    nop
    ld h, l
    ld l, b
    ld h, l
    ld l, b
    ld h, l
    ld l, b
    ld h, l
    ld l, b
    ld h, l
    ld l, b
    ld h, l
    ld l, b
    ld h, l
    ld l, b
    ld h, l
    ld l, b
    ld h, l
    ld hl, sp-$18
    dec de
    nop
    ld hl, sp-$10
    inc e
    nop
    ldh [$e8], a
    dec c
    nop
    add sp, -$18
    ld de, $f000
    add sp, $16
    nop
    ld hl, sp-$0b
    dec e
    nop
    add b
    ret nc

    add sp, $09
    nop
    ld hl, sp-$18
    inc bc
    nop
    ld hl, sp-$10
    inc b
    nop
    ldh a, [$e8]
    dec de
    nop
    ldh a, [$f0]
    inc e
    nop
    ret c

    add sp, $0d
    nop
    ldh [$e8], a
    ld de, $e800
    add sp, $16
    nop
    ld hl, sp-$08
    ld e, $00
    add b
    ld hl, sp-$18
    dec b
    nop
    ld hl, sp-$18
    rlca
    nop
    ld hl, sp-$10
    ld [$f800], sp
    ld hl, sp+$09
    nop
    add sp, -$18
    add hl, de
    nop
    add sp, -$10
    ld a, [de]
    nop
    ldh a, [$e8]
    ld [bc], a
    nop
    ldh a, [$f0]
    inc bc
    nop
    ldh a, [$f8]
    inc b
    nop
    ret nc

    add sp, $0c
    nop
    ret nc

jr_05c_5f4b:
    ldh a, [$0d]
    nop
    ret c

    add sp, $10
    nop
    ret c

    ldh a, [rNR11]
    nop
    ldh [$e8], a
    dec d
    nop
    ldh [$f0], a
    ld d, $00
    add sp, $00
    dec b
    jr nz, jr_05c_5f4b

    ld hl, sp+$06
    jr nz, @-$06

    nop
    rra
    nop
    add b
    ld hl, sp-$18
    ld a, [bc]
    nop
    ld hl, sp-$10
    dec bc
    nop
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    add sp, -$18
    ld bc, $e800
    ldh a, [rSC]
    nop
    add sp, -$08
    inc bc
    nop
    add sp, $00
    inc b
    nop
    ldh a, [$f8]
    ld b, $20
    ldh a, [$f0]
    rlca
    jr nz, @-$0e

jr_05c_5f94:
    add sp, $08
    jr nz, @-$0e

    nop
    add hl, bc
    nop
    ret c

    add sp, $14
    nop
    ret c

    ldh a, [$15]
    nop
    ret c

    ld hl, sp+$16
    nop
    ldh [$f8], a
    jr @+$22

    ldh [$f0], a
    add hl, de
    jr nz, @-$1e

    add sp, $1a
    jr nz, jr_05c_5f94

    nop
    inc e
    nop
    ret nc

jr_05c_5fb8:
    ldh a, [$0e]
    jr nz, @-$2e

    add sp, $0f
    jr nz, jr_05c_5fb8

    ld [$001d], sp
    add b
    ret c

    db $eb
    nop
    nop
    ret c

    di
    ld bc, $d800
    ei
    ld [bc], a
    nop
    ret c

    inc bc
    inc bc
    nop
    ret c

    dec bc
    inc b
    nop
    ldh [$e8], a
    dec b
    nop
    ldh [$f0], a
    ld b, $00
    ldh [$f8], a
    rlca
    nop
    ldh [rP1], a
    ld [$e000], sp

jr_05c_5fe9:
    ld [$0009], sp
    add sp, -$10
    ld a, [bc]
    nop
    add sp, -$08
    dec bc
    nop
    add sp, $00
    inc c
    nop
    add sp, $08
    dec c
    nop
    ldh a, [$f0]
    ld c, $00
    ldh a, [$f8]
    rrca
    nop
    ldh a, [rP1]
    stop

Call_05c_6008:
    ldh a, [$08]

Call_05c_600a:
    ld de, $d000

Jump_05c_600d:
    rrca

Jump_05c_600e:
    rla
    jr nz, @-$2e

    rlca
    jr jr_05c_6034

    ret nc

    rst $38
    add hl, de
    jr nz, jr_05c_5fe9

    rst $30
    ld a, [de]

Call_05c_601b:
    jr nz, @-$2e

jr_05c_601d:
    rst $28
    dec de
    jr nz, @-$2e

    rst $20
    inc e
    jr nz, jr_05c_601d

    jp hl


    ld [de], a
    nop
    ld hl, sp-$0f
    inc de
    nop
    ld hl, sp-$07

jr_05c_602e:
    inc d
    nop
    ld hl, sp+$01

jr_05c_6032:
    dec d
    nop

jr_05c_6034:
    ld hl, sp+$09
    ld d, $00
    ld hl, sp+$10
    ld e, $00
    add b
    add sp, $09
    ld c, $20
    add sp, $01
    rrca
    jr nz, jr_05c_602e

    ld sp, hl
    db $10
    jr nz, jr_05c_6032

    pop af
    ld de, $f820
    ld hl, sp+$18
    nop
    ld hl, sp+$00
    add hl, de
    nop
    ld hl, sp+$08
    ld a, [de]
    nop
    ld hl, sp+$10
    dec de
    nop
    ld hl, sp-$10
    rla
    nop
    ldh a, [$f8]
    inc de
    nop
    ldh a, [rP1]
    inc d
    nop
    ldh a, [$08]
    dec d
    nop
    ldh a, [rNR10]
    ld d, $00
    ldh a, [$f0]
    ld [de], a
    nop
    ldh [$ee], a
    ld a, [bc]
    nop
    ldh [$f6], a
    dec bc
    nop
    ldh [$fe], a
    inc c
    nop
    ldh [rTMA], a
    dec c
    nop
    ret c

    dec b
    dec b
    jr nz, @-$26

    db $fd
    ld b, $20
    ret c

    push af
    rlca
    jr nz, @-$26

    db $ed
    ld [$d820], sp
    push hl
    dec b
    ld b, b
    ret nc

    nop
    nop
    jr nz, @-$2e

    ld hl, sp+$01
    jr nz, @-$2e

jr_05c_60a2:
    ldh a, [rSC]
    jr nz, @-$2e

    add sp, $03
    jr nz, jr_05c_60a2

    add sp, $1f
    jr nz, jr_05c_602e

    ldh a, [$eb]
    rla
    nop
    ldh a, [$f3]
    jr jr_05c_60b6

jr_05c_60b6:
    ldh a, [$fb]
    add hl, de
    nop
    ldh a, [$03]
    ld a, [de]
    nop
    ldh a, [$0b]
    dec de
    nop
    ldh a, [rNR13]
    inc e
    nop
    add sp, -$15
    ld [de], a
    nop
    add sp, -$0d
    inc de
    nop
    add sp, -$05
    inc d
    nop
    add sp, $03
    dec d
    nop
    add sp, $0b
    ld d, $00
    ret nc

jr_05c_60db:
    db $10
    dec b
    jr nz, @-$1e

    ld b, $0e
    jr nz, @-$1e

    cp $0f
    jr nz, @-$1e

    or $10
    jr nz, @-$1e

    xor $11
    jr nz, @-$26

    ld b, $0a
    jr nz, @-$26

    cp $0b
    jr nz, @-$26

    or $0c
    jr nz, @-$26

    xor $0d
    jr nz, @-$2e

    ld [$2006], sp
    ret nc

    nop
    rlca
    jr nz, @-$2e

jr_05c_6107:
    ld hl, sp+$08
    jr nz, jr_05c_60db

    ldh a, [$09]
    jr nz, jr_05c_6107

    db $10
    rra
    nop
    ld hl, sp-$18
    dec e
    nop
    ld hl, sp+$0c
    nop
    jr nz, @-$06

jr_05c_611b:
    inc b
    ld bc, $f820

jr_05c_611f:
    db $fc

jr_05c_6120:
    ld [bc], a
    jr nz, jr_05c_611b

    db $f4
    inc bc
    jr nz, jr_05c_611f

    db $ec

jr_05c_6128:
    inc b
    jr nz, @-$7e

    ldh a, [$0c]
    nop
    jr nz, jr_05c_6120

    inc b
    ld bc, $f020

jr_05c_6134:
    db $fc
    ld [bc], a
    jr nz, jr_05c_6128

jr_05c_6138:
    db $f4
    inc bc
    jr nz, @-$0e

jr_05c_613c:
    db $ec
    inc b
    jr nz, jr_05c_6128

jr_05c_6140:
    rrca
    rla
    jr nz, @-$16

jr_05c_6144:
    rlca
    jr @+$22

    add sp, -$01
    add hl, de
    jr nz, jr_05c_6134

    rst $30
    ld a, [de]
    jr nz, jr_05c_6138

    rst $28
    dec de
    jr nz, jr_05c_613c

    rst $20
    inc e
    jr nz, jr_05c_6138

    rrca
    ld [de], a
    jr nz, jr_05c_613c

    rlca
    inc de
    jr nz, jr_05c_6140

jr_05c_6160:
    rst $38
    inc d
    jr nz, jr_05c_6144

    rst $30
    dec d
    jr nz, @-$1e

jr_05c_6168:
    rst $28
    ld d, $20
    ld hl, sp-$0f
    ld b, $00
    ld hl, sp-$07
    rlca
    nop
    ld hl, sp+$01
    ld [$f800], sp
    add hl, bc
    add hl, bc
    nop
    ret c

    db $f4
    ld c, $00
    ret c

    db $fc
    rrca
    nop
    ret c

    inc b
    stop
    ret c

    inc c
    ld de, $d000
    db $10
    ld a, [bc]
    jr nz, jr_05c_6160

    ld [$200b], sp
    ret nc

jr_05c_6194:
    nop
    inc c
    jr nz, jr_05c_6168

jr_05c_6198:
    ld hl, sp+$0d
    jr nz, jr_05c_6194

    add sp, $1e
    jr nz, jr_05c_6198

    jp hl


jr_05c_61a1:
    dec b
    nop
    ld hl, sp+$10
    dec e
    nop
    add b
    ret c

    rst $20
    ld [de], a
    nop
    ret c

    rst $28
    inc de
    nop
    ret c

    rst $30
    inc d
    nop
    ret c

    rst $38
    dec d
    nop
    ret c

    rlca
    ld d, $00
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    ld hl, sp+$08
    inc c
    nop
    ld hl, sp+$10
    dec c
    nop
    ldh a, [$0b]
    dec b
    jr nz, @-$0e

    inc bc
    ld b, $20
    ldh a, [$fb]
    rlca
    jr nz, @-$0e

    di
    ld [$f020], sp
    db $eb
    add hl, bc
    jr nz, @-$16

    jp hl


    nop
    nop
    add sp, -$0f
    ld bc, $e800
    ld sp, hl
    ld [bc], a
    nop
    add sp, $01
    inc bc
    nop
    add sp, $09
    inc b
    nop
    ldh [$e6], a
    rla
    nop
    ldh [$ee], a
    jr jr_05c_61fc

jr_05c_61fc:
    ldh [$f6], a
    add hl, de
    nop
    ldh [$fe], a
    ld a, [de]
    nop
    ldh [rTMA], a
    dec de
    nop
    ldh [$0e], a
    inc e
    nop
    ret nc

    ld a, [c]
    ld c, $00
    ret nc

    ld a, [$000f]
    ret nc

    ld [bc], a
    stop
    ret nc

    ld a, [bc]

jr_05c_621a:
    ld de, $f800
    ldh a, [rNR34]
    jr nz, jr_05c_61a1

    ldh a, [$f4]
    ld a, [bc]
    nop
    ldh a, [$fc]
    dec bc
    nop
    ldh a, [rDIV]
    inc c
    nop
    ldh a, [$0c]
    dec c
    nop
    add sp, $0c
    dec b
    jr nz, @-$16

    inc b
    ld b, $20
    add sp, -$04
    rlca
    jr nz, @-$16

    db $f4
    ld [$e820], sp
    db $ec
    add hl, bc
    jr nz, @-$1e

    ld [$0000], a
    ldh [$f2], a
    ld bc, $e000
    ld a, [$0002]
    ldh [rSC], a
    inc bc
    nop
    ldh [$0a], a
    inc b
    nop
    ret c

    rst $20
    rla
    nop
    ret c

    rst $28
    jr jr_05c_6261

jr_05c_6261:
    ret c

    rst $30
    add hl, de
    nop
    ret c

    rst $38
    ld a, [de]
    nop
    ret c

    rlca
    dec de
    nop
    ret c

    rrca
    inc e
    nop
    ret nc

    rst $20
    ld [de], a
    nop
    ret nc

    rst $28
    inc de
    nop
    ret nc

    rst $30
    inc d
    nop
    ret nc

    rst $38
    dec d
    nop
    ret nc

    rlca
    ld d, $00
    ld hl, sp+$10
    ld c, $20
    ld hl, sp+$08
    rrca
    jr nz, @-$06

jr_05c_628e:
    nop
    db $10
    jr nz, @-$06

    ld hl, sp+$11
    jr nz, jr_05c_628e

    ldh a, [$1f]
    jr nz, jr_05c_621a

    ld hl, sp+$10
    ld [de], a
    jr nz, @-$06

jr_05c_629f:
    ld [$2013], sp
    ld hl, sp+$00
    inc d
    jr nz, jr_05c_629f

    ld hl, sp+$15
    jr nz, @-$06

    ldh a, [rNR21]
    jr nz, @-$16

jr_05c_62af:
    ld [$200a], sp
    add sp, $00
    dec bc
    jr nz, jr_05c_629f

jr_05c_62b7:
    ld hl, sp+$0c
    jr nz, @-$16

jr_05c_62bb:
    ldh a, [$0d]
    jr nz, jr_05c_62af

    ld [$200e], sp
    ldh a, [rP1]
    rrca
    jr nz, jr_05c_62b7

    ld hl, sp+$10
    jr nz, jr_05c_62bb

jr_05c_62cb:
    ldh a, [rNR11]
    jr nz, jr_05c_62af

    ld [de], a
    dec b
    jr nz, @-$1e

jr_05c_62d3:
    ld a, [bc]
    ld b, $20
    ldh [rSC], a
    rlca
    jr nz, jr_05c_62bb

jr_05c_62db:
    ld a, [$2008]
    ldh [$f2], a
    add hl, bc
    jr nz, jr_05c_62bb

    ldh a, [rP1]
    nop
    ret c

    ld hl, sp+$01
    nop
    ret c

    nop
    ld [bc], a
    nop
    ret c

    ld [$0003], sp
    ret c

    db $10
    inc b
    nop
    ret nc

    ld [de], a
    rla
    jr nz, jr_05c_62cb

    ld a, [bc]
    jr jr_05c_631e

    ret nc

    ld [bc], a
    add hl, de
    jr nz, jr_05c_62d3

    ld a, [$201a]
    ret nc

    ld a, [c]
    dec de
    jr nz, jr_05c_62db

    ld [$201c], a
    ld hl, sp-$18
    dec e
    jr nz, @-$7e

    ldh a, [$e8]
    ld [de], a
    nop
    ldh a, [$f0]
    inc de
    nop
    ldh a, [$f8]
    inc d

jr_05c_631e:
    nop
    ldh a, [rP1]
    dec d
    nop
    ldh a, [$08]
    ld d, $00
    add sp, -$10
    ld c, $00
    add sp, -$08
    rrca
    nop
    add sp, $00
    stop
    add sp, $08
    ld de, $e000
    dec bc
    ld a, [bc]
    jr nz, @-$1e

    inc bc
    dec bc
    jr nz, @-$1e

    ei
    inc c
    jr nz, @-$1e

    di
    dec c
    jr nz, @-$26

    ld hl, sp+$05
    nop
    ret c

    nop
    ld b, $00
    ret c

    ld [$0007], sp
    ret c

    db $10
    ld [$d000], sp
    db $10
    ld bc, $d020
    ld [$2002], sp
    ret nc

jr_05c_6360:
    nop
    inc bc
    jr nz, @-$2e

    ld hl, sp+$04
    jr nz, jr_05c_6360

    rst $30
    add hl, de
    nop
    ld hl, sp-$01

jr_05c_636d:
    ld a, [de]
    nop
    ld hl, sp+$10

jr_05c_6371:
    ld e, $00
    ld hl, sp-$18
    ld e, $20
    ld hl, sp-$19
    rla
    nop
    ld hl, sp-$11

jr_05c_637d:
    jr jr_05c_637f

jr_05c_637f:
    ld hl, sp+$07

jr_05c_6381:
    dec de
    nop
    ld hl, sp+$0f

jr_05c_6385:
    inc e
    nop
    add b
    ret c

jr_05c_6389:
    dec bc
    nop
    jr nz, @-$26

jr_05c_638d:
    inc bc
    ld bc, $d820
    ei
    ld [bc], a
    jr nz, jr_05c_636d

    di
    inc bc
    jr nz, jr_05c_6371

jr_05c_6399:
    db $eb
    inc b
    jr nz, jr_05c_637d

jr_05c_639d:
    ld c, $05
    jr nz, jr_05c_6381

jr_05c_63a1:
    ld b, $06
    jr nz, jr_05c_6385

jr_05c_63a5:
    cp $07
    jr nz, jr_05c_6389

    or $08
    jr nz, jr_05c_638d

    xor $09
    jr nz, jr_05c_6399

jr_05c_63b1:
    ld b, $0a
    jr nz, jr_05c_639d

jr_05c_63b5:
    cp $0b
    jr nz, jr_05c_63a1

jr_05c_63b9:
    or $0c
    jr nz, jr_05c_63a5

jr_05c_63bd:
    xor $0d
    jr nz, jr_05c_63b1

    ld b, $0e
    jr nz, jr_05c_63b5

    cp $0f
    jr nz, jr_05c_63b9

    or $10
    jr nz, jr_05c_63bd

    xor $11
    jr nz, jr_05c_63a1

    rst $20
    rla
    nop
    ret nc

    rst $28
    jr jr_05c_63d8

jr_05c_63d8:
    ret nc

    rst $30
    add hl, de
    nop
    ret nc

    rst $38
    ld a, [de]
    nop
    ret nc

    rlca
    dec de
    nop
    ret nc

jr_05c_63e5:
    rrca
    inc e
    nop
    ld hl, sp+$05
    inc de
    jr nz, jr_05c_63e5

jr_05c_63ed:
    db $fd
    inc d
    jr nz, @-$06

jr_05c_63f1:
    push af
    dec d
    jr nz, jr_05c_63ed

jr_05c_63f5:
    dec c

jr_05c_63f6:
    ld [de], a
    jr nz, jr_05c_63f1

    add sp, $1d
    jr nz, jr_05c_63f5

    db $ed
    ld d, $20
    ld hl, sp+$10
    rra
    nop
    add b
    add sp, $0b
    ld c, $20
    add sp, $03
    rrca
    jr nz, jr_05c_63f6

    ei
    db $10
    jr nz, @-$16

    di
    ld de, $f820
    ldh a, [rNR22]
    nop
    ld hl, sp-$08
    jr jr_05c_641d

jr_05c_641d:
    ld hl, sp+$00
    add hl, de
    nop
    ld hl, sp+$08
    ld a, [de]
    nop
    ld hl, sp+$10
    dec de
    nop
    ret nc

    db $eb
    nop
    nop
    ret nc

    di
    ld bc, $d000
    ei
    ld [bc], a
    nop
    ret nc

    inc bc
    inc bc
    nop
    ret nc

    dec bc
    inc b
    nop
    ret c

    add sp, $05
    nop
    ret c

    ldh a, [rTMA]
    nop
    ret c

    ld hl, sp+$07
    nop
    ret c

    nop
    ld [$d800], sp
    ld [$0009], sp
    ldh [$f0], a
    ld a, [bc]
    nop
    ldh [$f8], a

jr_05c_6457:
    dec bc
    nop
    ldh [rP1], a
    inc c
    nop
    ldh [$08], a
    dec c
    nop
    ldh a, [$f0]
    ld [de], a
    nop
    ldh a, [$f8]
    inc de
    nop
    ldh a, [rP1]
    inc d
    nop
    ldh a, [$08]
    dec d
    nop
    ldh a, [rNR10]
    ld d, $00
    ld hl, sp-$18
    ld e, $20
    add b
    ldh a, [rP1]
    rla
    nop
    ldh a, [$08]
    jr jr_05c_6482

jr_05c_6482:
    ldh a, [rNR10]
    add hl, de
    nop
    add sp, $00
    ld [de], a
    nop
    add sp, $08
    inc de
    nop
    add sp, $10
    inc d
    nop
    ld hl, sp+$10
    ld [bc], a
    jr nz, @-$06

jr_05c_6497:
    ld [$2003], sp
    ld hl, sp+$00
    inc b
    jr nz, @-$1e

    db $10
    rrca
    jr nz, @-$1e

    ld [$2010], sp
    ldh [rP1], a
    ld de, $d820
    ld a, [$000a]
    ret c

    ld [bc], a
    dec bc
    nop
    ret c

    ld a, [bc]
    inc c
    nop
    ret c

    ld [de], a
    dec c
    nop
    ret nc

    dec c

jr_05c_64bc:
    dec b
    jr nz, @-$2e

    dec b
    ld b, $20
    ret nc

    db $fd
    rlca
    jr nz, jr_05c_6497

jr_05c_64c7:
    push af
    ld [$d020], sp

jr_05c_64cb:
    db $ed
    add hl, bc
    jr nz, jr_05c_64c7

    ldh a, [$1f]
    jr nz, jr_05c_64cb

    ld hl, sp+$1d
    jr nz, jr_05c_6457

    add sp, $10
    dec de
    jr nz, jr_05c_64bc

    db $10
    ld d, $20
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp+$10
    dec b
    nop
    ret nc

    ld [$000a], sp
    ret nc

    db $10
    dec bc
    nop
    rst $20
    ld [$201c], sp
    ret c

jr_05c_64f4:
    db $10
    ld de, $f820
    nop
    rra
    jr nz, jr_05c_64f4

    ld [$201d], sp
    add b
    ld hl, sp+$0b
    inc de
    jr nz, @-$06

jr_05c_6505:
    inc bc
    inc d
    jr nz, @-$06

jr_05c_6509:
    ei
    dec d
    jr nz, jr_05c_6505

jr_05c_650d:
    di
    ld d, $20
    ldh a, [$0b]
    ld c, $20
    ldh a, [$03]
    rrca
    jr nz, jr_05c_6509

jr_05c_6519:
    ei
    db $10
    jr nz, jr_05c_650d

jr_05c_651d:
    di
    ld de, $e020

jr_05c_6521:
    rst $20
    dec b
    ld b, b
    add sp, -$10
    ld a, [bc]
    nop
    add sp, -$08
    dec bc
    nop
    add sp, $00
    inc c
    nop
    add sp, $08
    dec c
    nop
    ldh [rDIV], a
    dec b
    jr nz, jr_05c_6519

    db $fc
    ld b, $20
    ldh [$f4], a
    rlca
    jr nz, jr_05c_6519

jr_05c_6541:
    nop
    nop
    jr nz, jr_05c_651d

    ld hl, sp+$01
    jr nz, jr_05c_6521

    ldh a, [rSC]
    jr nz, @-$26

    add sp, $03
    jr nz, jr_05c_6521

    nop
    rla
    jr nz, @-$2e

    ld hl, sp+$18
    jr nz, @-$2e

    ldh a, [rNR24]
    jr nz, @-$2e

    add sp, $1a
    jr nz, jr_05c_6541

    db $ec
    ld [$f820], sp
    ld de, $2012
    add b
    xor c
    ld h, l
    sbc $65
    rla
    ld h, [hl]
    and b
    ld h, [hl]
    jp hl


    ld h, [hl]
    adc d
    ld h, a
    daa
    ld l, b
    ret z

    ld l, b
    ld l, c
    ld l, c
    ld a, [bc]
    ld l, d
    xor e
    ld l, d
    ld c, h
    ld l, e
    db $ed
    ld l, e
    adc [hl]
    ld l, h
    cpl
    ld l, l
    ret nc

    ld l, l
    ld [hl], c
    ld l, [hl]
    ld [de], a
    ld l, a
    or e
    ld l, a
    ld d, h
    ld [hl], b
    push af
    ld [hl], b
    sub [hl]
    ld [hl], c
    scf
    ld [hl], d
    ret c

    ld [hl], d
    ld a, c
    ld [hl], e
    ld a, [de]
    ld [hl], h
    ld d, e
    ld [hl], h
    ld h, e
    ld [hl], h
    ld h, e
    ld [hl], h
    ld h, e
    ld [hl], h
    ld h, e
    ld [hl], h
    ld h, e
    ld [hl], h
    ld hl, sp-$50
    inc b
    nop
    ld hl, sp-$48
    dec b
    nop
    ld hl, sp-$40
    ld b, $00
    ld hl, sp-$38
    rlca
    nop
    ld hl, sp-$30
    ld [$f800], sp
    ret c

    add hl, bc
    nop
    ld a, [c]
    ret nc

    dec b
    nop
    ld a, [c]
    ret c

    ld b, $00
    ld a, [c]
    ret


    inc b
    nop
    ldh a, [$b0]
    ld [$f000], sp
    cp b
    add hl, bc
    nop
    ld hl, sp-$20
    jr nz, jr_05c_65d9

jr_05c_65d9:
    ld hl, sp-$18
    inc e
    ld b, b
    add b
    ld hl, sp-$40
    ld a, [bc]
    nop
    ld hl, sp-$38
    dec bc
    nop
    ld hl, sp-$30
    inc c
    nop
    ld hl, sp-$28
    dec c
    nop
    ldh a, [$b8]
    inc b
    nop
    ldh a, [$c0]
    dec b
    nop
    ldh a, [$c8]
    ld b, $00
    ldh a, [$d0]
    rlca
    nop
    ldh a, [$d8]
    ld [$f000], sp
    ldh [$09], a
    nop
    ld hl, sp-$50
    jr nz, @+$22

    ld hl, sp-$18
    ld hl, $f000
    ldh a, [rNR33]
    nop
    add sp, -$50
    inc e
    nop
    add b
    ret c

    ldh [rDIV], a
    nop
    ret c

    ret nz

    dec b
    nop
    ret c

    ret z

    ld b, $00
    ret c

    ret nc

    rlca
    nop
    ret c

    ret c

    ld [$d800], sp
    ldh [$09], a
    nop
    ldh [$c0], a
    ld a, [bc]
    nop
    ldh [$c8], a
    dec bc
    nop
    ldh [$d0], a
    inc c
    nop
    ldh [$d8], a
    dec c
    nop
    ldh a, [$d0]
    ld a, [bc]
    nop
    ldh a, [$d8]
    dec bc
    nop
    ldh a, [$e0]
    inc c
    nop
    add sp, -$38
    inc b
    nop
    add sp, -$30
    dec b
    nop
    add sp, -$28
    ld b, $00
    add sp, -$20
    rlca
    nop
    ld hl, sp-$30
    stop
    ld hl, sp-$28
    ld de, $f800
    ldh [rNR12], a
    nop
    ld hl, sp-$40
    ld c, $00
    ld hl, sp-$38
    rrca
    nop
    ldh a, [$e8]
    dec c
    nop
    add sp, -$18
    ld [$e800], sp
    ldh a, [$09]
    nop
    ld hl, sp-$18
    rla
    nop
    ld hl, sp-$50
    ld hl, $f820
    ld hl, sp+$21
    nop
    ldh a, [$c0]
    dec e
    jr nz, @-$16

    nop
    inc e
    jr nz, @-$0e

    db $10
    rra
    nop
    ld hl, sp-$10
    inc de
    nop
    ld hl, sp-$48
    inc de
    jr nz, @-$1e

    cp b
    ld e, $00
    add b
    ldh a, [$e4]
    ld a, [bc]
    nop
    ldh a, [$ec]
    dec bc
    nop
    ldh a, [$f4]
    inc c
    nop
    ldh a, [$fc]
    dec c
    nop
    ld hl, sp-$48
    inc b
    nop
    ld hl, sp-$40
    dec b
    nop
    ld hl, sp-$38
    ld b, $00
    ld hl, sp-$30
    rlca
    nop
    ld hl, sp-$28
    ld [$f800], sp
    ldh [rTIMA], a
    nop
    ld hl, sp-$18
    ld b, $00
    ld hl, sp-$10
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    ret nc

    jr nz, jr_05c_66f9

    nop
    add sp, $20
    rra
    nop
    ldh [rNR10], a
    dec e
    nop
    ldh a, [$d8]
    inc e
    nop
    add b
    ld hl, sp-$20
    ld c, $00
    ldh [$08], a
    dec bc
    nop
    ldh [rNR10], a
    inc c
    nop
    ldh [rNR23], a
    dec c
    nop

jr_05c_66f9:
    ret c

    ld [$0005], sp
    ret c

    db $10
    ld b, $00
    ret c

    jr jr_05c_670c

    nop
    jp c, Jump_000_1120

    nop
    jp c, Jump_000_1228

jr_05c_670c:
    nop
    add sp, -$08
    ld a, [bc]
    nop
    add sp, $00
    dec bc
    nop
    add sp, $08
    inc c
    nop
    add sp, $10
    dec c
    nop
    ret nc

    ldh a, [rNR10]
    nop
    ret nc

    ld hl, sp+$11
    nop
    ret nc

    nop
    ld [de], a
    nop
    ret nc

    ldh [$0e], a
    nop
    ret nc

    add sp, $0f
    nop
    ret c

    add sp, $19
    nop
    ret c

    ldh a, [rNR30]
    nop
    ret c

    ld hl, sp+$1b
    nop
    ldh [$f0], a
    dec d
    nop
    ret c

    nop
    inc d
    nop
    ldh [$f8], a
    ld a, [de]
    nop
    ldh [rP1], a
    dec de
    nop
    ldh a, [$e0]
    add hl, de
    nop
    ldh a, [$e8]
    ld a, [de]
    nop
    ldh a, [$f8]
    rrca
    nop
    ldh a, [$f0]
    dec de
    nop
    ret nc

    ld [$0009], sp
    ld hl, sp-$30
    add hl, de
    nop
    ld hl, sp-$28
    ld a, [de]
    nop
    ld hl, sp-$18
    ld a, [de]
    ld h, b
    ld hl, sp-$10
    ld [$f800], sp
    ld hl, sp+$09
    nop
    ldh a, [rP1]
    stop
    ldh a, [$08]
    ld de, $f800
    ret nz

    ld hl, $f820
    ld [$0020], sp
    ret nc

    jr nz, jr_05c_67a4

    nop
    add b
    add sp, -$08
    dec bc
    nop
    add sp, $00
    inc c
    nop
    add sp, $08
    dec c
    nop
    ldh [$d8], a
    inc b
    nop
    ret c

    ldh a, [rNR11]
    nop
    ret c

    ld hl, sp+$12
    nop
    ldh [$e0], a

jr_05c_67a4:
    inc c
    nop
    ldh [$e8], a
    inc d
    nop
    add sp, -$10
    inc d
    nop
    ret c

    ret c

    dec d
    nop
    ret c

    ldh [rNR21], a
    nop
    ret c

    add sp, $17
    nop
    ld hl, sp-$18
    inc c
    nop
    ld hl, sp-$10
    dec c
    nop
    ldh a, [$d8]
    dec b
    nop
    ldh a, [$e0]
    ld b, $00
    ldh a, [$e8]
    rlca
    nop
    ldh a, [$f0]
    inc d
    nop
    ldh a, [$f8]
    rrca
    nop
    ld hl, sp-$08
    rla
    nop
    ldh a, [rP1]
    rla
    nop
    ldh [$f0], a
    ld b, $00
    ldh [$f8], a
    rlca
    nop
    ldh [rP1], a
    ld [$e000], sp
    ld [$0009], sp
    add sp, -$20
    dec d
    nop
    add sp, -$18
    ld d, $00
    ldh a, [$c8]
    dec d
    nop
    ldh a, [$d0]
    ld d, $00
    ret c

    nop
    add hl, bc
    nop
    ld hl, sp-$28
    ld a, [de]
    nop
    ld hl, sp-$20
    dec de
    nop
    ld hl, sp+$10
    jr nz, jr_05c_680e

jr_05c_680e:
    ld hl, sp+$08
    ld hl, $f800
    ret z

    ld hl, $f020
    jr jr_05c_6836

    nop
    ld hl, sp-$40
    inc de
    nop
    ld hl, sp-$30
    inc e
    nop
    add sp, -$40
    inc e
    nop
    add b
    ret nc

    add sp, $05
    nop
    ldh [$dc], a
    dec bc
    nop
    ldh [$e4], a
    inc c
    nop
    ldh [$ec], a
    dec c

jr_05c_6836:
    nop
    ret nc

    ldh a, [rTMA]
    nop
    ret nc

    ld hl, sp+$08
    nop
    ret nc

    ldh [rNR14], a
    nop
    ret nc

    ret nz

    dec d
    nop
    ret nc

    ret z

    ld d, $00
    ret nc

    ret nc

    rla
    nop
    ret nc

    ret c

    ld c, $00
    ret c

    ret z

    add hl, de
    nop
    ret c

    ret nc

    ld a, [de]
    nop
    ret c

    ret c

    inc d
    nop
    ldh [$c4], a
    add hl, de
    nop
    ldh [$cc], a
    ld a, [de]
    nop
    ldh [$d4], a
    dec c
    nop
    ret c

    add sp, $07
    nop
    ret c

    ldh a, [$08]
    nop
    ret c

    ld hl, sp+$09
    nop
    ret c

    ldh [rNR21], a
    nop
    ret nc

    nop
    add hl, bc
    nop
    add sp, -$2c
    dec d
    nop
    add sp, -$24
    ld d, $00
    add sp, -$1c
    rla
    nop
    add sp, -$14
    ld [de], a
    nop
    ldh a, [$e8]
    dec d
    nop
    ldh a, [$f0]
    ld d, $00
    ldh a, [$f8]
    rla
    nop
    ld hl, sp-$10
    dec b
    nop
    add sp, -$0c
    add hl, bc
    nop
    ld hl, sp-$28
    dec d
    nop
    ld hl, sp-$20
    ld d, $00
    ld hl, sp-$18
    rla
    nop
    ld hl, sp-$08
    stop
    ld hl, sp+$00
    ld de, $f800
    ld [$0012], sp
    ld hl, sp-$38
    jr nz, jr_05c_68df

    ldh [$28], a
    inc e
    nop
    ld hl, sp+$18
    jr nz, jr_05c_68c7

jr_05c_68c7:
    add b
    ld hl, sp-$08
    ld c, $00
    ldh [rNR41], a
    dec bc
    nop
    ldh [$28], a
    inc c
    nop
    ldh [$30], a
    dec c
    nop
    ret c

    jr nz, jr_05c_68e0

    nop
    ret c

    jr z, @+$08

jr_05c_68df:
    nop

jr_05c_68e0:
    ret c

    jr nc, jr_05c_68eb

    nop
    jp c, $1138

    nop
    jp c, Jump_000_1240

jr_05c_68eb:
    nop
    add sp, $10
    ld a, [bc]
    nop
    add sp, $18
    dec bc
    nop
    add sp, $20
    inc c
    nop
    add sp, $28
    dec c
    nop
    ret nc

    ld [$0010], sp
    ret nc

    db $10
    ld de, $d000
    jr jr_05c_6919

    nop
    ret nc

    ld hl, sp+$0e
    nop
    ret nc

    nop
    rrca
    nop
    ret c

    nop
    add hl, de
    nop
    ret c

    ld [$001a], sp
    ret c

jr_05c_6919:
    db $10
    dec de
    nop
    ldh [$08], a
    dec d
    nop
    ret c

    jr @+$16

    nop
    ldh [rNR10], a
    ld a, [de]
    nop
    ldh [rNR23], a
    dec de
    nop
    ldh a, [$f8]
    add hl, de
    nop
    ldh a, [rP1]
    ld a, [de]
    nop
    ldh a, [rNR23]
    stop
    ldh a, [rNR41]
    ld de, $f000
    db $10
    rrca
    nop
    ldh a, [$08]
    dec de
    nop
    ret nc

    jr nz, jr_05c_6950

    nop
    ld hl, sp-$18
    add hl, de
    nop
    ld hl, sp-$10
    ld a, [de]
    nop

jr_05c_6950:
    ld hl, sp+$00
    ld a, [de]
    ld h, b
    ld hl, sp+$08
    ld [$f800], sp
    db $10
    add hl, bc
    nop
    ld hl, sp+$20
    ld hl, $f800
    ret c

    ld hl, $e820
    ret nc

    rra
    nop
    add b
    add sp, $10
    dec bc
    nop
    add sp, $18
    inc c
    nop
    add sp, $20
    dec c
    nop
    ldh [$f0], a
    inc b
    nop
    ret c

    ld [$0011], sp
    ret c

    db $10
    ld [de], a
    nop
    ldh [$f8], a
    inc c
    nop
    ldh [rP1], a
    inc d
    nop
    add sp, $08
    inc d
    nop
    ret c

    ldh a, [$15]
    nop
    ret c

    ld hl, sp+$16
    nop
    ret c

    nop
    rla
    nop
    ld hl, sp+$00
    inc c
    nop
    ld hl, sp+$08
    dec c
    nop
    ldh a, [$f0]
    dec b
    nop
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ldh a, [$08]
    inc d
    nop
    ldh a, [rNR10]
    rrca
    nop
    ld hl, sp+$10
    rla
    nop
    ldh a, [rNR23]
    rla
    nop
    ldh [$08], a
    ld b, $00
    ldh [rNR10], a
    rlca
    nop
    ldh [rNR23], a
    ld [$e000], sp

jr_05c_69ca:
    jr nz, jr_05c_69d5

    nop
    add sp, -$08
    dec d
    nop
    add sp, $00
    ld d, $00

jr_05c_69d5:
    ldh a, [$e0]
    dec d
    nop
    ldh a, [$e8]
    ld d, $00
    ret c

    jr jr_05c_69e9

    nop
    ld hl, sp-$10
    ld a, [de]
    nop
    ld hl, sp-$08
    dec de
    nop

jr_05c_69e9:
    ld hl, sp+$28
    jr nz, jr_05c_69ed

jr_05c_69ed:
    ld hl, sp-$28
    jr nz, jr_05c_6a11

    ld hl, sp-$20
    inc de
    nop
    ld hl, sp+$20
    inc de
    jr nz, jr_05c_69ca

    jr c, jr_05c_6a19

    nop
    ld hl, sp-$30
    rra
    nop
    ldh a, [$30]
    ld e, $20
    ret c

    ret z

    ld e, $00
    add b
    ret nc

    ld hl, sp+$05
    nop
    ldh [$ec], a
    dec bc

jr_05c_6a11:
    nop
    ldh [$f4], a
    inc c
    nop
    ldh [$fc], a
    dec c

jr_05c_6a19:
    nop
    ret nc

    nop
    ld b, $00
    ret nc

    ld [$0008], sp
    ret nc

    ldh a, [rNR14]
    nop
    ret nc

    ret nc

    dec d
    nop
    ret nc

    ret c

    ld d, $00
    ret nc

    ldh [rNR22], a
    nop
    ret nc

    add sp, $0e
    nop
    ret c

    ret c

    add hl, de
    nop
    ret c

    ldh [rNR30], a
    nop
    ret c

    add sp, $14
    nop
    ldh [$d4], a
    add hl, de
    nop
    ldh [$dc], a
    ld a, [de]
    nop
    ldh [$e4], a
    dec c
    nop
    ret c

    ld hl, sp+$07
    nop
    ret c

    nop
    ld [$d800], sp
    ld [$0009], sp
    ret c

    ldh a, [rNR21]
    nop
    ret nc

    db $10
    add hl, bc
    nop
    add sp, -$1c
    dec d
    nop
    add sp, -$14
    ld d, $00
    add sp, -$0c
    rla
    nop
    add sp, -$04
    ld [de], a
    nop
    ldh a, [$f8]
    dec d
    nop
    ldh a, [rP1]
    ld d, $00
    ldh a, [$08]
    rla
    nop
    ld hl, sp+$00
    dec b
    nop
    add sp, $04
    add hl, bc
    nop
    ld hl, sp-$18
    dec d
    nop
    ld hl, sp-$10
    ld d, $00
    ld hl, sp-$08
    rla
    nop
    ld hl, sp+$08
    stop
    ld hl, sp+$10
    ld de, $f800
    jr jr_05c_6aaf

    nop
    ld hl, sp+$28
    ld hl, $f800
    ret c

    ld hl, $e820
    ret nc

    rra
    nop
    add b
    ld hl, sp+$00
    ld c, $00

jr_05c_6aaf:
    ldh [$28], a
    dec bc
    nop
    ldh [$30], a
    inc c
    nop
    ldh [$38], a
    dec c
    nop
    ret c

    jr z, jr_05c_6ac3

    nop
    ret c

    jr nc, @+$08

    nop

jr_05c_6ac3:
    ret c

    jr c, jr_05c_6ace

    nop
    jp c, $1140

    nop
    jp c, $1248

jr_05c_6ace:
    nop
    add sp, $18
    ld a, [bc]
    nop
    add sp, $20
    dec bc
    nop
    add sp, $28
    inc c
    nop
    add sp, $30
    dec c
    nop
    ret nc

    db $10
    stop
    ret nc

    jr jr_05c_6af7

    nop
    ret nc

    jr nz, jr_05c_6afc

    nop
    ret nc

    nop
    ld c, $00
    ret nc

    ld [$000f], sp
    ret c

    ld [$0019], sp

jr_05c_6af7:
    ret c

    db $10
    ld a, [de]
    nop
    ret c

jr_05c_6afc:
    jr jr_05c_6b19

    nop
    ldh [rNR10], a
    dec d
    nop
    ret c

    jr nz, @+$16

    nop
    ldh [rNR23], a
    ld a, [de]
    nop
    ldh [rNR41], a
    dec de
    nop
    ldh a, [rP1]
    add hl, de
    nop
    ldh a, [$08]
    ld a, [de]
    nop
    ldh a, [rNR41]

jr_05c_6b19:
    stop
    ldh a, [$28]
    ld de, $f000
    jr jr_05c_6b31

    nop
    ldh a, [rNR10]
    dec de
    nop
    ret nc

    jr z, jr_05c_6b33

    nop
    ld hl, sp-$10
    add hl, de
    nop
    ld hl, sp-$08

jr_05c_6b31:
    ld a, [de]
    nop

jr_05c_6b33:
    ld hl, sp+$08
    ld a, [de]
    ld h, b
    ld hl, sp+$10
    ld [$f800], sp
    jr jr_05c_6b47

    nop
    ld hl, sp+$28
    jr nz, jr_05c_6b43

jr_05c_6b43:
    ld hl, sp-$20
    jr nz, jr_05c_6b67

jr_05c_6b47:
    ld [c], a
    ld b, b
    inc e
    nop
    add b
    add sp, $10
    dec bc
    nop
    add sp, $18
    inc c
    nop
    add sp, $20
    dec c
    nop
    ldh [$f0], a
    inc b
    nop
    ret c

    ld [$0011], sp
    ret c

    db $10
    ld [de], a
    nop
    ldh [$f8], a
    inc c

jr_05c_6b67:
    nop
    ldh [rP1], a
    inc d
    nop
    add sp, $08
    inc d
    nop
    ret c

    ldh a, [$15]
    nop
    ret c

    ld hl, sp+$16
    nop
    ret c

    nop
    rla
    nop
    ld hl, sp+$00
    inc c
    nop
    ld hl, sp+$08
    dec c
    nop
    ldh a, [$f0]
    dec b
    nop
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ldh a, [$08]
    inc d
    nop
    ldh a, [rNR10]
    rrca
    nop
    ld hl, sp+$10
    rla
    nop
    ldh a, [rNR23]
    rla
    nop
    ldh [$08], a
    ld b, $00
    ldh [rNR10], a
    rlca
    nop
    ldh [rNR23], a
    ld [$e000], sp
    jr nz, jr_05c_6bb8

    nop
    add sp, -$08
    dec d
    nop
    add sp, $00
    ld d, $00

jr_05c_6bb8:
    ldh a, [$e0]
    dec d
    nop
    ldh a, [$e8]
    ld d, $00
    ret c

    jr jr_05c_6bcc

    nop
    ld hl, sp-$10
    ld a, [de]
    nop
    ld hl, sp-$08
    dec de
    nop

jr_05c_6bcc:
    ld hl, sp+$20
    ld hl, $f800
    ret c

    ld hl, $f820
    jr z, jr_05c_6bea

    nop
    ld hl, sp-$30
    inc de
    jr nz, @-$0e

    jr nc, jr_05c_6bfc

    nop
    ld hl, sp-$38
    inc e
    nop
    ldh [$e8], a
    ld e, $00
    ldh [$28], a

jr_05c_6bea:
    rra
    nop
    add b
    ret nc

    ld hl, sp+$05
    nop
    ldh [$ec], a
    dec bc
    nop
    ldh [$f4], a
    inc c
    nop
    ldh [$fc], a
    dec c

jr_05c_6bfc:
    nop
    ret nc

    nop
    ld b, $00
    ret nc

    ld [$0008], sp
    ret nc

    ldh a, [rNR14]
    nop
    ret nc

    ret nc

    dec d
    nop
    ret nc

    ret c

    ld d, $00
    ret nc

    ldh [rNR22], a
    nop
    ret nc

    add sp, $0e
    nop
    ret c

    ret c

    add hl, de
    nop
    ret c

    ldh [rNR30], a
    nop
    ret c

    add sp, $14
    nop
    ldh [$d4], a
    add hl, de
    nop
    ldh [$dc], a
    ld a, [de]
    nop
    ldh [$e4], a
    dec c
    nop
    ret c

    ld hl, sp+$07
    nop
    ret c

    nop
    ld [$d800], sp
    ld [$0009], sp
    ret c

    ldh a, [rNR21]
    nop
    ret nc

    db $10
    add hl, bc
    nop
    add sp, -$1c
    dec d
    nop
    add sp, -$14
    ld d, $00
    add sp, -$0c
    rla
    nop
    add sp, -$04
    ld [de], a
    nop
    ldh a, [$f8]
    dec d
    nop
    ldh a, [rP1]
    ld d, $00
    ldh a, [$08]
    rla
    nop
    ld hl, sp+$00
    dec b
    nop
    add sp, $04
    add hl, bc
    nop
    ld hl, sp-$18
    dec d
    nop
    ld hl, sp-$10
    ld d, $00
    ld hl, sp-$08
    rla
    nop
    ld hl, sp+$08
    stop
    ld hl, sp+$10
    ld de, $f800
    jr jr_05c_6c92

    nop
    ld hl, sp+$28
    jr nz, jr_05c_6c85

jr_05c_6c85:
    ld hl, sp-$28
    jr nz, jr_05c_6ca9

    add sp, $40
    dec e
    nop
    add b
    ld hl, sp-$08
    ld c, $00

jr_05c_6c92:
    ldh [rNR41], a
    dec bc
    nop
    ldh [$28], a
    inc c
    nop
    ldh [$30], a
    dec c
    nop
    ret c

    jr nz, jr_05c_6ca6

    nop
    ret c

    jr z, @+$08

    nop

jr_05c_6ca6:
    ret c

    jr nc, jr_05c_6cb1

jr_05c_6ca9:
    nop
    jp c, $1138

    nop
    jp c, Jump_000_1240

jr_05c_6cb1:
    nop
    add sp, $10
    ld a, [bc]
    nop
    add sp, $18
    dec bc
    nop
    add sp, $20
    inc c
    nop
    add sp, $28
    dec c
    nop
    ret nc

    ld [$0010], sp
    ret nc

    db $10
    ld de, $d000
    jr jr_05c_6cdf

    nop
    ret nc

    ld hl, sp+$0e
    nop
    ret nc

    nop
    rrca
    nop
    ret c

    nop
    add hl, de
    nop
    ret c

    ld [$001a], sp
    ret c

jr_05c_6cdf:
    db $10
    dec de
    nop
    ldh [$08], a
    dec d
    nop
    ret c

    jr @+$16

    nop
    ldh [rNR10], a
    ld a, [de]
    nop
    ldh [rNR23], a
    dec de
    nop
    ldh a, [$f8]
    add hl, de
    nop
    ldh a, [rP1]
    ld a, [de]
    nop
    ldh a, [rNR23]
    stop
    ldh a, [rNR41]
    ld de, $f000
    db $10
    rrca
    nop
    ldh a, [$08]
    dec de
    nop
    ret nc

    jr nz, jr_05c_6d16

    nop
    ld hl, sp-$18
    add hl, de
    nop
    ld hl, sp-$10
    ld a, [de]
    nop

jr_05c_6d16:
    ld hl, sp+$00
    ld a, [de]
    ld h, b
    ld hl, sp+$08
    ld [$f800], sp
    db $10
    add hl, bc
    nop
    ld hl, sp-$28
    inc de
    nop
    ld hl, sp+$20
    inc de
    jr nz, @-$2e

    ldh [$1f], a
    nop
    add b
    add sp, $00
    dec bc
    nop
    add sp, $08
    inc c
    nop
    add sp, $10
    dec c
    nop
    ldh [$e0], a
    inc b
    nop
    ret c

    ld hl, sp+$11
    nop
    ret c

    nop
    ld [de], a
    nop
    ldh [$e8], a
    inc c
    nop
    ldh [$f0], a
    inc d
    nop
    add sp, -$08
    inc d
    nop
    ret c

    ldh [$15], a
    nop
    ret c

    add sp, $16
    nop
    ret c

    ldh a, [rNR22]
    nop
    ld hl, sp-$10
    inc c
    nop
    ld hl, sp-$08
    dec c
    nop
    ldh a, [$e0]
    dec b
    nop
    ldh a, [$e8]
    ld b, $00
    ldh a, [$f0]
    rlca
    nop
    ldh a, [$f8]
    inc d
    nop
    ldh a, [rP1]
    rrca
    nop
    ld hl, sp+$00
    rla
    nop
    ldh a, [$08]
    rla
    nop
    ldh [$f8], a
    ld b, $00
    ldh [rP1], a
    rlca
    nop
    ldh [$08], a
    ld [$e000], sp
    db $10
    add hl, bc
    nop
    add sp, -$18
    dec d
    nop
    add sp, -$10
    ld d, $00
    ldh a, [$d0]
    dec d
    nop
    ldh a, [$d8]
    ld d, $00
    ret c

jr_05c_6da4:
    ld [$0009], sp
    ld hl, sp-$20
    ld a, [de]
    nop
    ld hl, sp-$18
    dec de
    nop
    ld hl, sp+$10
    jr nz, jr_05c_6db3

jr_05c_6db3:
    ld hl, sp+$18
    ld hl, $f800

jr_05c_6db8:
    ret z

    jr nz, jr_05c_6ddb

    ld hl, sp-$40
    ld hl, $f820
    jr c, jr_05c_6dde

    jr nz, @-$16

    ret c

    dec e
    jr nz, jr_05c_6db8

    jr jr_05c_6de8

    jr nz, jr_05c_6da4

    ret nc

    rra
    jr nz, @-$7e

    ret nc

    add sp, $05
    nop
    ldh [$dc], a
    dec bc
    nop
    ldh [$e4], a
    inc c

jr_05c_6ddb:
    nop
    ldh [$ec], a

jr_05c_6dde:
    dec c
    nop
    ret nc

    ldh a, [rTMA]
    nop
    ret nc

    ld hl, sp+$08
    nop

jr_05c_6de8:
    ret nc

    ldh [rNR14], a
    nop
    ret nc

    ret nz

    dec d
    nop
    ret nc

    ret z

    ld d, $00
    ret nc

    ret nc

    rla
    nop
    ret nc

    ret c

    ld c, $00
    ret c

    ret z

    add hl, de
    nop
    ret c

    ret nc

    ld a, [de]
    nop
    ret c

    ret c

    inc d
    nop
    ldh [$c4], a
    add hl, de
    nop
    ldh [$cc], a
    ld a, [de]
    nop
    ldh [$d4], a
    dec c
    nop
    ret c

    add sp, $07
    nop
    ret c

    ldh a, [$08]
    nop
    ret c

    ld hl, sp+$09
    nop
    ret c

    ldh [rNR21], a
    nop
    ret nc

    nop
    add hl, bc
    nop
    add sp, -$2c
    dec d
    nop
    add sp, -$24
    ld d, $00
    add sp, -$1c
    rla
    nop
    add sp, -$14
    ld [de], a
    nop
    ldh a, [$e8]
    dec d
    nop
    ldh a, [$f0]
    ld d, $00
    ldh a, [$f8]
    rla
    nop
    ld hl, sp-$10
    dec b
    nop
    add sp, -$0c
    add hl, bc
    nop
    ld hl, sp-$28
    dec d
    nop
    ld hl, sp-$20
    ld d, $00
    ld hl, sp-$18
    rla
    nop
    ld hl, sp-$08
    stop
    ld hl, sp+$00
    ld de, $f800
    ld [$0012], sp
    ld hl, sp-$38
    inc de
    nop
    ld hl, sp+$18
    inc de
    jr nz, @-$16

    jr nc, @+$1e

    ld b, b
    add b
    ld hl, sp-$18
    ld c, $00
    ldh [rNR10], a
    dec bc
    nop
    ldh [rNR23], a
    inc c
    nop
    ldh [rNR41], a
    dec c
    nop
    ret c

    db $10
    dec b
    nop
    ret c

    jr @+$08

    nop
    ret c

    jr nz, jr_05c_6e94

    nop
    jp c, $1128

    nop
    jp c, $1230

jr_05c_6e94:
    nop
    add sp, $00
    ld a, [bc]
    nop
    add sp, $08
    dec bc
    nop
    add sp, $10
    inc c
    nop
    add sp, $18
    dec c
    nop
    ret nc

    ld hl, sp+$10
    nop
    ret nc

    nop
    ld de, $d000
    ld [$0012], sp
    ret nc

    add sp, $0e
    nop
    ret nc

    ldh a, [rIF]
    nop
    ret c

    ldh a, [rNR24]
    nop
    ret c

    ld hl, sp+$1a
    nop
    ret c

    nop
    dec de
    nop
    ldh [$f8], a
    dec d
    nop
    ret c

    ld [$0014], sp
    ldh [rP1], a
    ld a, [de]
    nop
    ldh [$08], a
    dec de
    nop
    ldh a, [$e8]
    add hl, de
    nop
    ldh a, [$f0]
    ld a, [de]
    nop
    ldh a, [$08]
    stop
    ldh a, [rNR10]
    ld de, $f000
    nop
    rrca
    nop
    ldh a, [$f8]
    dec de
    nop
    ret nc

    db $10
    add hl, bc
    nop
    ld hl, sp-$28
    add hl, de
    nop
    ld hl, sp-$20
    ld a, [de]
    nop
    ld hl, sp-$10
    ld a, [de]
    ld h, b
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    ld hl, sp+$10
    ld hl, $f800
    ret z

    ld hl, $e820
    ld c, b
    dec e
    nop
    add b
    add sp, -$08
    dec bc
    nop
    add sp, $00
    inc c
    nop
    add sp, $08
    dec c
    nop
    ldh [$d8], a
    inc b
    nop
    ret c

    ldh a, [rNR11]
    nop
    ret c

    ld hl, sp+$12
    nop
    ldh [$e0], a
    inc c
    nop
    ldh [$e8], a
    inc d
    nop
    add sp, -$10
    inc d
    nop
    ret c

    ret c

    dec d
    nop
    ret c

    ldh [rNR21], a
    nop
    ret c

    add sp, $17
    nop
    ld hl, sp-$18
    inc c
    nop
    ld hl, sp-$10
    dec c
    nop
    ldh a, [$d8]
    dec b
    nop
    ldh a, [$e0]
    ld b, $00
    ldh a, [$e8]
    rlca
    nop
    ldh a, [$f0]
    inc d
    nop
    ldh a, [$f8]
    rrca
    nop
    ld hl, sp-$08
    rla
    nop
    ldh a, [rP1]
    rla
    nop
    ldh [$f0], a
    ld b, $00
    ldh [$f8], a
    rlca
    nop
    ldh [rP1], a
    ld [$e000], sp
    ld [$0009], sp
    add sp, -$20
    dec d
    nop
    add sp, -$18
    ld d, $00
    ldh a, [$c8]
    dec d
    nop
    ldh a, [$d0]
    ld d, $00
    ret c

    nop
    add hl, bc
    nop
    ld hl, sp-$28
    ld a, [de]
    nop
    ld hl, sp-$20
    dec de
    nop
    ld hl, sp+$10
    jr nz, jr_05c_6f96

jr_05c_6f96:
    ld hl, sp-$40
    jr nz, jr_05c_6fba

    ld hl, sp-$38
    inc de
    jr nz, @-$06

    ld [$0013], sp
    add sp, $10
    inc e
    jr nz, @-$16

    ret c

    dec e
    jr nz, @-$2e

    ldh [$1f], a
    jr nz, @-$2e

    jr c, jr_05c_6fcf

    jr nz, @-$7e

    ret nc

    ret c

    dec b
    nop
    ldh [$cc], a
    dec bc

jr_05c_6fba:
    nop
    ldh [$d4], a
    inc c
    nop
    ldh [$dc], a
    dec c
    nop
    ret nc

    ldh [rTMA], a
    nop
    ret nc

    add sp, $08
    nop
    ret nc

    ret nc

    inc d
    nop

jr_05c_6fcf:
    ret nc

    or b
    dec d
    nop
    ret nc

    cp b
    ld d, $00
    ret nc

    ret nz

    rla
    nop
    ret nc

    ret z

    ld c, $00
    ret c

    cp b
    add hl, de
    nop
    ret c

    ret nz

    ld a, [de]
    nop
    ret c

    ret z

    inc d
    nop
    ldh [$b4], a
    add hl, de
    nop
    ldh [$bc], a
    ld a, [de]
    nop
    ldh [$c4], a
    dec c
    nop
    ret c

    ret c

    rlca
    nop
    ret c

    ldh [$08], a
    nop
    ret c

    add sp, $09
    nop
    ret c

    ret nc

    ld d, $00
    ret nc

    ldh a, [$09]
    nop
    add sp, -$3c
    dec d
    nop
    add sp, -$34
    ld d, $00
    add sp, -$2c
    rla
    nop
    add sp, -$24
    ld [de], a
    nop
    ldh a, [$d8]
    dec d
    nop
    ldh a, [$e0]
    ld d, $00
    ldh a, [$e8]
    rla
    nop
    ld hl, sp-$20
    dec b
    nop
    add sp, -$1c
    add hl, bc
    nop
    ld hl, sp-$38
    dec d
    nop
    ld hl, sp-$30
    ld d, $00
    ld hl, sp-$28
    rla
    nop
    ld hl, sp-$18
    stop
    ld hl, sp-$10
    ld de, $f800
    ld hl, sp+$12
    nop
    ld hl, sp+$08
    ld hl, $f800
    cp b
    ld hl, $d020
    nop
    rra
    nop
    add b
    ld hl, sp-$18
    ld c, $00
    ldh [rNR10], a
    dec bc
    nop
    ldh [rNR23], a
    inc c
    nop
    ldh [rNR41], a
    dec c
    nop
    ret c

    db $10
    dec b
    nop
    ret c

    jr @+$08

    nop
    ret c

    jr nz, jr_05c_7077

    nop
    jp c, $1128

    nop
    jp c, $1230

jr_05c_7077:
    nop
    add sp, $00
    ld a, [bc]
    nop
    add sp, $08
    dec bc
    nop
    add sp, $10
    inc c
    nop
    add sp, $18
    dec c
    nop
    ret nc

    ld hl, sp+$10
    nop
    ret nc

    nop
    ld de, $d000
    ld [$0012], sp
    ret nc

    add sp, $0e
    nop
    ret nc

    ldh a, [rIF]
    nop
    ret c

    ldh a, [rNR24]
    nop
    ret c

    ld hl, sp+$1a
    nop
    ret c

    nop
    dec de
    nop
    ldh [$f8], a
    dec d
    nop
    ret c

    ld [$0014], sp
    ldh [rP1], a
    ld a, [de]
    nop
    ldh [$08], a
    dec de
    nop
    ldh a, [$e8]
    add hl, de
    nop
    ldh a, [$f0]
    ld a, [de]
    nop
    ldh a, [$08]
    stop
    ldh a, [rNR10]
    ld de, $f000
    nop
    rrca
    nop
    ldh a, [$f8]
    dec de
    nop
    ret nc

    db $10
    add hl, bc
    nop
    ld hl, sp-$28
    add hl, de
    nop
    ld hl, sp-$20
    ld a, [de]
    nop
    ld hl, sp-$10
    ld a, [de]
    ld h, b
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$38
    inc de
    nop
    ld hl, sp+$10
    inc de
    jr nz, @-$0e

    ldh [rNR34], a
    ld b, b
    add b
    add sp, $00
    dec bc
    nop
    add sp, $08
    inc c
    nop
    add sp, $10
    dec c
    nop
    ldh [$e0], a
    inc b
    nop
    ret c

    ld hl, sp+$11
    nop
    ret c

    nop
    ld [de], a
    nop
    ldh [$e8], a
    inc c
    nop
    ldh [$f0], a
    inc d
    nop
    add sp, -$08
    inc d
    nop
    ret c

    ldh [$15], a
    nop
    ret c

    add sp, $16
    nop
    ret c

    ldh a, [rNR22]
    nop
    ld hl, sp-$10
    inc c
    nop
    ld hl, sp-$08
    dec c
    nop
    ldh a, [$e0]
    dec b
    nop
    ldh a, [$e8]
    ld b, $00
    ldh a, [$f0]
    rlca
    nop
    ldh a, [$f8]
    inc d
    nop
    ldh a, [rP1]
    rrca
    nop
    ld hl, sp+$00
    rla
    nop
    ldh a, [$08]
    rla
    nop
    ldh [$f8], a
    ld b, $00
    ldh [rP1], a
    rlca
    nop
    ldh [$08], a
    ld [$e000], sp
    db $10
    add hl, bc
    nop
    add sp, -$18
    dec d
    nop
    add sp, -$10
    ld d, $00
    ldh a, [$d0]
    dec d
    nop
    ldh a, [$d8]
    ld d, $00
    ret c

    ld [$0009], sp
    ld hl, sp-$20
    ld a, [de]
    nop
    ld hl, sp-$18
    dec de
    nop
    ld hl, sp+$10
    ld hl, $f800
    jr jr_05c_719c

    nop
    ld hl, sp-$38
    jr nz, jr_05c_71a1

    ld hl, sp-$30
    ld hl, $f020
    jr jr_05c_71a5

    nop
    ret nc

    ldh a, [rNR32]
    nop
    ret c

    db $10
    dec e
    nop
    ret c

    jr nc, @+$1e

    nop
    add b
    ret nc

    ldh a, [rTIMA]
    nop
    ldh [$e4], a

jr_05c_719c:
    dec bc
    nop
    ldh [$ec], a
    inc c

jr_05c_71a1:
    nop
    ldh [$f4], a
    dec c

jr_05c_71a5:
    nop
    ret nc

    ld hl, sp+$06
    nop
    ret nc

    nop
    ld [$d000], sp
    add sp, $14
    nop
    ret nc

    ret z

    dec d
    nop
    ret nc

    ret nc

    ld d, $00
    ret nc

    ret c

    rla
    nop
    ret nc

    ldh [$0e], a
    nop
    ret c

    ret nc

    add hl, de
    nop
    ret c

    ret c

    ld a, [de]
    nop
    ret c

    ldh [rNR14], a
    nop
    ldh [$cc], a
    add hl, de
    nop
    ldh [$d4], a
    ld a, [de]
    nop
    ldh [$dc], a
    dec c
    nop
    ret c

    ldh a, [rTAC]
    nop
    ret c

    ld hl, sp+$08
    nop
    ret c

    nop
    add hl, bc
    nop
    ret c

    add sp, $16
    nop
    ret nc

    ld [$0009], sp
    add sp, -$24
    dec d
    nop
    add sp, -$1c
    ld d, $00
    add sp, -$14
    rla
    nop
    add sp, -$0c
    ld [de], a
    nop
    ldh a, [$f0]
    dec d
    nop
    ldh a, [$f8]
    ld d, $00
    ldh a, [rP1]
    rla
    nop
    ld hl, sp-$08
    dec b
    nop
    add sp, -$04
    add hl, bc
    nop
    ld hl, sp-$20
    dec d
    nop
    ld hl, sp-$18
    ld d, $00
    ld hl, sp-$10
    rla
    nop
    ld hl, sp+$00
    stop
    ld hl, sp+$08
    ld de, $f800
    db $10
    ld [de], a
    nop
    ld hl, sp-$30
    ld hl, $f800
    jr nz, jr_05c_7252

    jr nz, @-$06

    or b
    ld e, $20
    add b
    ld hl, sp+$08
    ld c, $00
    ldh [$30], a
    dec bc
    nop
    ldh [$38], a
    inc c
    nop
    ret c

    jr nc, jr_05c_724b

    nop
    ret c

    jr c, @+$08

    nop

jr_05c_724b:
    add sp, $20
    ld a, [bc]
    nop
    add sp, $28
    dec bc

jr_05c_7252:
    nop
    add sp, $30
    inc c
    nop
    add sp, $38
    dec c
    nop
    ret nc

    jr jr_05c_726e

    nop
    ret nc

    jr nz, jr_05c_7273

    nop
    ret nc

    jr z, jr_05c_7278

    nop
    ret nc

    ld [$000e], sp
    ret nc

    db $10
    rrca

jr_05c_726e:
    nop
    ret c

    db $10
    add hl, de
    nop

jr_05c_7273:
    ret c

    jr @+$1c

    nop
    ret c

jr_05c_7278:
    jr nz, jr_05c_7295

    nop
    ldh [rNR23], a
    dec d
    nop
    ret c

    jr z, @+$16

    nop
    ldh [rNR41], a
    ld a, [de]
    nop
    ldh [$28], a
    dec de
    nop
    ldh a, [$08]
    add hl, de
    nop
    ldh a, [rNR10]
    ld a, [de]
    nop
    ldh a, [$28]

jr_05c_7295:
    stop
    ldh a, [$30]
    ld de, $f000
    jr nz, jr_05c_72ad

    nop
    ldh a, [rNR23]
    dec de
    nop
    ret nc

    jr nc, jr_05c_72af

    nop
    ld hl, sp-$08
    add hl, de
    nop
    ld hl, sp+$00

jr_05c_72ad:
    ld a, [de]
    nop

jr_05c_72af:
    ld hl, sp+$10
    ld a, [de]
    ld h, b
    ld hl, sp+$18
    ld [$f800], sp

jr_05c_72b8:
    jr nz, @+$0b

    nop
    ldh [rLCDC], a
    dec c
    nop
    ret c

    ld b, b
    ld [$da00], sp
    ld c, b
    ld de, $f800
    jr nc, @+$15

    nop
    ld hl, sp-$18
    inc de
    jr nz, jr_05c_72b8

    ret c

    rra
    nop
    ret nc

    ldh a, [rNR33]
    nop
    add b
    add sp, $28
    dec bc
    nop
    add sp, $30
    inc c
    nop
    add sp, $38
    dec c
    nop
    ldh [$08], a
    inc b
    nop
    ret c

    jr nz, jr_05c_72fc

    nop
    ret c

    jr z, jr_05c_7301

    nop
    ldh [rNR10], a
    inc c
    nop
    ldh [rNR23], a
    inc d
    nop
    add sp, $20
    inc d
    nop

jr_05c_72fc:
    ret c

    ld [$0015], sp
    ret c

jr_05c_7301:
    db $10
    ld d, $00
    ret c

    jr jr_05c_731e

    nop
    ld hl, sp+$18
    inc c
    nop
    ld hl, sp+$20
    dec c
    nop
    ldh a, [$08]
    dec b
    nop
    ldh a, [rNR10]
    ld b, $00
    ldh a, [rNR23]
    rlca
    nop
    ldh a, [rNR41]

jr_05c_731e:
    inc d
    nop
    ldh a, [$28]
    rrca
    nop
    ld hl, sp+$28
    rla
    nop
    ldh a, [$30]
    rla
    nop
    ldh [rNR41], a
    ld b, $00
    ldh [$28], a
    rlca
    nop
    ldh [$30], a
    ld [$e000], sp
    jr c, jr_05c_7344

    nop
    add sp, $10
    dec d
    nop
    add sp, $18
    ld d, $00

jr_05c_7344:
    ldh a, [$f8]
    dec d
    nop
    ldh a, [rP1]
    ld d, $00
    ret c

    jr nc, jr_05c_7358

    nop
    ld hl, sp+$08
    ld a, [de]
    nop
    ld hl, sp+$10
    dec de
    nop

jr_05c_7358:
    ld hl, sp+$38
    jr nz, jr_05c_735c

jr_05c_735c:
    ld hl, sp+$40
    ld hl, $f800
    ld hl, sp+$20
    jr nz, @-$06

    ldh a, [rNR42]
    jr nz, @-$1e

    nop
    rra
    nop
    ld hl, sp-$28
    dec e
    nop
    ret nc

    jr nz, jr_05c_7392

    nop
    ldh [rOBP0], a
    inc e
    nop
    add b
    ret nc

    jr nz, jr_05c_7381

    nop
    ldh [rNR14], a
    dec bc
    nop

jr_05c_7381:
    ldh [rNR32], a
    inc c
    nop
    ldh [rNR50], a
    dec c
    nop
    ret nc

    jr z, jr_05c_7392

    nop
    ret nc

    jr nc, jr_05c_7398

    nop
    ret nc

jr_05c_7392:
    jr jr_05c_73a8

    nop
    ret nc

    ld hl, sp+$15

jr_05c_7398:
    nop
    ret nc

    nop
    ld d, $00
    ret nc

    ld [$0017], sp
    ret nc

    db $10
    ld c, $00
    ret c

    nop
    add hl, de

jr_05c_73a8:
    nop
    ret c

    ld [$001a], sp
    ret c

    db $10
    inc d
    nop
    ldh [$fc], a
    add hl, de
    nop
    ldh [rDIV], a
    ld a, [de]
    nop
    ldh [$0c], a
    dec c
    nop
    ret c

    jr nz, @+$09

    nop
    ret c

    jr z, jr_05c_73cc

    nop
    ret c

    jr nc, jr_05c_73d1

    nop
    ret c

    jr @+$18

jr_05c_73cc:
    nop
    ret nc

    jr c, jr_05c_73d9

    nop

jr_05c_73d1:
    add sp, $0c
    dec d
    nop
    add sp, $14
    ld d, $00

jr_05c_73d9:
    add sp, $1c
    rla
    nop
    add sp, $24
    ld [de], a
    nop
    ldh a, [rNR41]
    dec d
    nop
    ldh a, [$28]
    ld d, $00
    ldh a, [$30]
    rla
    nop
    ld hl, sp+$28
    dec b
    nop
    add sp, $2c
    add hl, bc
    nop
    ld hl, sp+$10
    dec d
    nop
    ld hl, sp+$18
    ld d, $00
    ld hl, sp+$20
    rla
    nop
    ld hl, sp+$30
    stop
    ld hl, sp+$38
    ld de, $f800
    nop
    jr nz, jr_05c_740d

jr_05c_740d:
    ld hl, sp+$48
    jr nz, jr_05c_7431

    ld hl, sp-$10
    inc e
    nop
    add sp, $34
    dec e
    nop
    add b
    ld hl, sp+$40
    ld c, $00
    ret nc

    ld b, b
    ld c, $00
    ret nc

    ld c, b
    rrca
    nop
    ret c

    ld c, b
    add hl, de
    nop
    ldh a, [rLCDC]
    add hl, de
    nop
    ldh a, [rOBP0]
    ld a, [de]

jr_05c_7431:
    nop
    ld hl, sp+$30
    add hl, de
    nop
    ld hl, sp+$38
    ld a, [de]
    nop
    ld hl, sp+$48
    ld a, [de]
    ld h, b
    ld hl, sp+$20
    jr nz, @+$22

    ld hl, sp+$18
    ld hl, $e820
    nop
    inc e
    jr nz, @-$16

    jr z, jr_05c_746c

    nop
    ld hl, sp+$10
    ld e, $20
    add b
    ret nc

    jr nz, jr_05c_7473

    nop
    ret c

    jr c, @+$21

    nop
    ld hl, sp+$48
    inc e
    nop
    ret nc

    ld c, b
    ld e, $00
    add b
    and h
    ld [hl], h
    or l
    ld [hl], h
    sbc $74
    dec bc
    ld [hl], l

jr_05c_746c:
    ld c, h
    ld [hl], l
    adc l
    ld [hl], l
    jp nc, $1775

jr_05c_7473:
    db $76
    ld h, h
    db $76
    xor l
    db $76
    or $76
    dec sp
    ld [hl], a
    adc b
    ld [hl], a
    pop de
    ld [hl], a
    ld c, $78
    dec sp
    ld a, b
    ld h, b
    ld a, b
    ld [hl], l
    ld a, b
    add d
    ld a, b
    add [hl]
    ld a, b
    add [hl]
    ld a, b
    add [hl]
    ld a, b
    add [hl]
    ld a, b
    add [hl]
    ld a, b
    add [hl]
    ld a, b
    add [hl]
    ld a, b
    add [hl]
    ld a, b
    add [hl]
    ld a, b
    add [hl]
    ld a, b
    add [hl]
    ld a, b
    add [hl]
    ld a, b
    add [hl]
    ld a, b
    ld hl, sp-$50
    inc b
    nop
    ld hl, sp-$48
    dec b
    nop
    ldh a, [$b0]
    ld bc, $f000
    cp b

jr_05c_74b2:
    ld [bc], a
    nop
    add b
    ld hl, sp-$3c
    inc de
    jr nz, jr_05c_74b2

    cp h
    inc d
    jr nz, @-$06

    or h
    dec d
    jr nz, jr_05c_74b2

    call nz, $2010
    ldh a, [$bc]
    ld de, $f020
    or h
    ld [de], a
    jr nz, @-$16

    call nz, Call_000_200e
    add sp, -$44
    rrca
    jr nz, @-$0e

    xor h
    inc e
    nop
    ld hl, sp-$54
    dec e
    nop
    add b
    ld hl, sp-$40
    inc d
    nop
    ld hl, sp-$38
    dec d
    nop
    ldh a, [$b8]
    stop
    ldh a, [$c0]
    ld de, $f000
    ret z

    ld [de], a
    nop
    add sp, -$48
    ld c, $00
    add sp, -$40
    rrca
    nop
    ldh a, [$b0]
    ld bc, $f820
    or b
    inc b
    jr nz, @-$06

    ret nc

jr_05c_7504:
    jr jr_05c_7506

jr_05c_7506:
    ld hl, sp-$48

jr_05c_7508:
    ld d, $20
    add b
    ld hl, sp-$3c
    inc d
    jr nz, jr_05c_7508

    cp h
    dec d
    jr nz, jr_05c_7504

    call z, $2010
    ldh a, [$c4]
    ld de, $f020
    cp h
    ld [de], a
    jr nz, jr_05c_7508

    call z, Call_000_200e
    add sp, -$3c
    rrca
    nop
    ldh a, [$b4]
    ld bc, $f820
    or h
    inc b
    jr nz, @-$06

    call nc, RST_08
    ldh a, [$d4]
    ld b, $00
    ldh a, [$dc]
    rlca
    nop
    ld hl, sp-$34
    rla
    jr nz, @-$06

    call c, $0019
    ldh a, [$ac]

jr_05c_7545:
    ld e, $00
    ld hl, sp-$54
    rra
    nop
    add b
    ld hl, sp-$48
    ld [$f820], sp
    or b

jr_05c_7552:
    add hl, bc
    jr nz, jr_05c_7545

jr_05c_7555:
    cp b
    ld b, $20
    ldh a, [$b0]
    rlca
    jr nz, jr_05c_7555

    ret nz

    inc bc
    nop
    ld hl, sp-$38
    inc b
    nop
    ld hl, sp-$30
    dec b
    nop
    ldh a, [$c0]
    nop
    nop
    ldh a, [$c8]
    ld bc, $f000

jr_05c_7571:
    ret nc

    ld [bc], a
    nop
    ld hl, sp-$20
    inc b
    jr nz, jr_05c_7571

    ret c

    dec b
    jr nz, @-$0e

    add sp, $00
    jr nz, jr_05c_7571

jr_05c_7581:
    ldh [rSB], a
    jr nz, @-$0e

    ret c

    ld [bc], a
    jr nz, jr_05c_7581

    add sp, $1a
    nop
    add b
    ld hl, sp-$24
    inc bc
    jr nz, @-$0e

jr_05c_7592:
    call c, Call_000_2000
    ld hl, sp-$0c
    inc de
    jr nz, jr_05c_7592

    db $ec
    inc d
    jr nz, @-$06

    db $e4
    dec d
    jr nz, jr_05c_7592

    db $f4
    db $10
    jr nz, @-$0e

    db $ec
    ld de, $f020
    db $e4
    ld [de], a
    jr nz, @-$16

jr_05c_75ae:
    db $f4
    ld c, $20
    add sp, -$14
    rrca
    jr nz, jr_05c_75ae

    call nc, $2008
    ld hl, sp-$34
    add hl, bc
    jr nz, jr_05c_75ae

jr_05c_75be:
    call nc, Call_000_2006
    ldh a, [$cc]
    rlca
    jr nz, jr_05c_75be

jr_05c_75c6:
    call nz, Call_000_200b
    ld hl, sp-$44
    inc c
    jr nz, jr_05c_75c6

    or h
    dec c
    jr nz, jr_05c_7552

    ld hl, sp-$10
    inc d
    nop
    ld hl, sp-$08
    dec d
    nop
    ldh a, [$e8]
    stop
    ldh a, [$f0]
    ld de, $f000
    ld hl, sp+$12
    nop
    add sp, -$18
    ld c, $00
    add sp, -$10
    rrca
    nop
    ldh a, [$e0]
    ld bc, $f020

jr_05c_75f3:
    ret c

    ld [bc], a
    jr nz, @-$06

jr_05c_75f7:
    ldh [rDIV], a
    jr nz, jr_05c_75f3

    ret c

    dec b
    jr nz, jr_05c_75f7

    nop
    jr jr_05c_7602

jr_05c_7602:
    ld hl, sp-$18
    ld d, $20
    ld hl, sp-$38
    dec bc
    nop
    ld hl, sp-$30
    inc c
    nop
    ld hl, sp-$48

jr_05c_7610:
    dec c
    jr nz, @-$06

    ret nz

jr_05c_7614:
    inc c
    nop
    add b
    ld hl, sp-$0c
    inc d
    jr nz, jr_05c_7614

    db $ec
    dec d
    jr nz, jr_05c_7610

    db $fc
    db $10
    jr nz, jr_05c_7614

    db $f4
    ld de, $f020
    db $ec
    ld [de], a
    jr nz, jr_05c_7614

    db $fc
    ld c, $20
    add sp, -$0c
    rrca
    nop
    ldh a, [$e4]
    ld bc, $f020

jr_05c_7638:
    call c, $2002
    ld hl, sp-$1c
    inc b
    jr nz, jr_05c_7638

    call c, $2005
    ld hl, sp+$04
    ld [$f000], sp
    inc b
    ld b, $00
    ldh a, [$0c]
    rlca
    nop
    ld hl, sp-$04
    rla
    jr nz, @-$06

    call nc, Call_000_200c
    ld hl, sp+$0c
    add hl, de
    nop
    ld hl, sp-$3c
    dec de
    jr nz, @-$06

    call z, Call_000_200b
    add b
    ld hl, sp-$28
    inc c
    jr nz, @-$06

jr_05c_7669:
    ret nc

    dec c
    jr nz, @-$06

    add sp, $08
    jr nz, jr_05c_7669

    ldh [$09], a
    jr nz, @-$0e

jr_05c_7675:
    add sp, $06
    jr nz, jr_05c_7669

    ldh [rTAC], a
    jr nz, jr_05c_7675

    ldh a, [$03]
    nop
    ld hl, sp-$08
    inc b
    nop
    ld hl, sp+$00
    dec b
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f8]
    ld bc, $f000

jr_05c_7691:
    nop
    ld [bc], a
    nop
    ld hl, sp+$10
    inc b
    jr nz, jr_05c_7691

    ld [$2005], sp
    ldh a, [rNR23]
    nop
    jr nz, jr_05c_7691

    db $10

jr_05c_76a2:
    ld bc, $f020
    ld [$2002], sp
    ld hl, sp+$18
    ld a, [de]
    nop
    add b
    ld hl, sp+$0c
    inc bc
    jr nz, jr_05c_76a2

jr_05c_76b2:
    inc c
    nop
    jr nz, @-$06

jr_05c_76b6:
    inc h
    inc de
    jr nz, jr_05c_76b2

    inc e
    inc d
    jr nz, jr_05c_76b6

    inc d
    dec d
    jr nz, jr_05c_76b2

    inc h
    db $10
    jr nz, jr_05c_76b6

    inc e
    ld de, $f020
    inc d
    ld [de], a
    jr nz, jr_05c_76b6

jr_05c_76ce:
    inc h
    ld c, $20
    add sp, $1c
    rrca
    jr nz, jr_05c_76ce

    inc b
    ld [$f820], sp
    db $fc
    add hl, bc
    jr nz, jr_05c_76ce

jr_05c_76de:
    inc b
    ld b, $20
    ldh a, [$fc]
    rlca
    jr nz, jr_05c_76de

jr_05c_76e6:
    db $f4
    dec bc
    jr nz, @-$06

jr_05c_76ea:
    db $ec
    inc c
    jr nz, jr_05c_76e6

    db $e4
    dec c
    jr nz, jr_05c_76ea

    call c, Call_000_200e
    add b
    ld hl, sp+$20
    inc d
    nop
    ld hl, sp+$28
    dec d
    nop
    ldh a, [rNR23]
    stop
    ldh a, [rNR41]
    ld de, $f000
    jr z, @+$14

    nop
    add sp, $18
    ld c, $00
    add sp, $20
    rrca
    nop
    ldh a, [rNR10]
    ld bc, $f020

jr_05c_7717:
    ld [$2002], sp
    ld hl, sp+$10
    inc b
    jr nz, jr_05c_7717

    ld [$2005], sp
    ld hl, sp+$30
    jr jr_05c_7726

jr_05c_7726:
    ld hl, sp+$18
    ld d, $20
    ld hl, sp-$08
    dec bc
    nop
    ld hl, sp+$00
    inc c
    nop
    ld hl, sp-$18

jr_05c_7734:
    dec c
    jr nz, @-$06

    ldh a, [$0c]
    nop
    add b
    ld hl, sp+$24
    inc d
    jr nz, @-$06

    inc e
    dec d
    jr nz, jr_05c_7734

    inc l
    db $10
    jr nz, @-$0e

    inc h
    ld de, $f020
    inc e
    ld [de], a
    jr nz, @-$16

    inc l
    ld c, $20
    add sp, $24
    rrca
    nop
    ldh a, [rNR14]
    ld bc, $f020

jr_05c_775c:
    inc c
    ld [bc], a
    jr nz, @-$06

jr_05c_7760:
    inc d
    inc b
    jr nz, jr_05c_775c

    inc c
    dec b
    jr nz, jr_05c_7760

    inc [hl]
    ld [$f000], sp
    inc [hl]
    ld b, $00
    ldh a, [$3c]
    rlca
    nop
    ld hl, sp+$2c
    rla
    jr nz, @-$06

    inc b
    inc c
    jr nz, @-$06

jr_05c_777c:
    inc a
    add hl, de
    nop
    ld hl, sp-$0c
    dec de
    jr nz, jr_05c_777c

    db $fc

jr_05c_7785:
    dec bc
    jr nz, @-$7e

    ld hl, sp+$08
    inc c
    jr nz, jr_05c_7785

jr_05c_778d:
    nop
    dec c
    jr nz, @-$06

    jr jr_05c_779b

    jr nz, jr_05c_778d

    db $10
    add hl, bc
    jr nz, @-$0e

jr_05c_7799:
    jr jr_05c_77a1

jr_05c_779b:
    jr nz, jr_05c_778d

    db $10
    rlca
    jr nz, jr_05c_7799

jr_05c_77a1:
    jr nz, jr_05c_77a6

    nop
    ld hl, sp+$28

jr_05c_77a6:
    inc b
    nop
    ld hl, sp+$30
    dec b
    nop
    ldh a, [rNR41]
    nop
    nop
    ldh a, [$28]
    ld bc, $f000

jr_05c_77b5:
    jr nc, @+$04

    nop
    ld hl, sp+$40
    inc b
    jr nz, jr_05c_77b5

    jr c, @+$07

    jr nz, @-$0e

    ld c, b
    nop
    jr nz, jr_05c_77b5

jr_05c_77c5:
    ld b, b

jr_05c_77c6:
    ld bc, $f020
    jr c, jr_05c_77cd

    jr nz, jr_05c_77c5

jr_05c_77cd:
    ld c, b

jr_05c_77ce:
    ld a, [de]
    nop
    add b
    ld hl, sp+$3c
    inc bc
    jr nz, jr_05c_77c6

    inc a
    nop
    jr nz, @-$06

jr_05c_77da:
    ld b, h
    dec d
    jr nz, jr_05c_77ce

    ld b, h
    ld [de], a
    jr nz, jr_05c_77da

    inc [hl]
    ld [$f820], sp
    inc l
    add hl, bc
    jr nz, jr_05c_77da

jr_05c_77ea:
    inc [hl]
    ld b, $20
    ldh a, [$2c]
    rlca
    jr nz, jr_05c_77ea

jr_05c_77f2:
    inc h
    dec bc
    jr nz, @-$06

jr_05c_77f6:
    inc e
    inc c
    jr nz, jr_05c_77f2

    inc d
    dec c
    jr nz, jr_05c_77f6

    inc c
    ld c, $20
    add sp, $4c
    jr nz, jr_05c_7805

jr_05c_7805:
    ldh a, [$4c]
    ld hl, $f800
    ld c, h
    ld [hl+], a
    nop
    add b
    ldh a, [rOBP0]
    stop
    add sp, $48
    ld c, $00
    ldh a, [rLCDC]
    ld bc, $f020

jr_05c_781b:
    jr c, jr_05c_781f

    jr nz, @-$06

jr_05c_781f:
    ld b, b
    inc b
    jr nz, jr_05c_781b

    jr c, jr_05c_782a

    jr nz, jr_05c_781f

    ld c, b
    ld d, $20

jr_05c_782a:
    ld hl, sp+$28
    dec bc
    nop
    ld hl, sp+$30
    inc c
    nop
    ld hl, sp+$18
    dec c
    jr nz, @-$06

    jr nz, jr_05c_7845

    nop
    add b
    ldh a, [rLY]
    ld bc, $f020

jr_05c_7840:
    inc a
    ld [bc], a
    jr nz, @-$06

jr_05c_7844:
    ld b, h

jr_05c_7845:
    inc b
    jr nz, jr_05c_7840

jr_05c_7848:
    inc a
    dec b
    jr nz, jr_05c_7844

jr_05c_784c:
    inc [hl]
    inc c
    jr nz, jr_05c_7848

    inc h
    dec de
    jr nz, jr_05c_784c

    inc l
    dec bc
    jr nz, jr_05c_7848

    ld c, h
    inc hl
    nop
    ld hl, sp+$4c

jr_05c_785d:
    inc h
    nop
    add b
    ldh a, [rOBP0]
    ld [bc], a
    jr nz, jr_05c_785d

jr_05c_7865:
    ld c, b
    dec b
    jr nz, @-$06

jr_05c_7869:
    ld b, b
    inc c
    jr nz, jr_05c_7865

    jr nc, jr_05c_788a

    jr nz, jr_05c_7869

    jr c, jr_05c_787e

    jr nz, @-$7e

    ld hl, sp+$44
    inc c
    jr nz, @-$06

    inc a
    dec c
    jr nz, @-$06

jr_05c_787e:
    ld c, h
    dec h
    nop
    add b
    ld hl, sp+$48
    ld c, $20
    add b
    rst $00
    ld a, b
    ret c

jr_05c_788a:
    ld a, b
    push af
    ld a, b
    ld l, $79
    sub e
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30

jr_05c_78ae:
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    rst $30
    ld a, c
    ld hl, sp-$08
    ld [hl+], a
    nop
    ld hl, sp+$00
    inc hl
    nop
    ldh a, [$f8]
    jr nz, jr_05c_78d3

jr_05c_78d3:
    ldh a, [rP1]
    ld hl, $8000
    ld hl, sp-$0c
    dec e
    nop
    ld hl, sp-$04
    ld e, $00
    ld hl, sp+$04
    rra
    nop
    ldh a, [$f4]
    ld a, [de]
    nop
    ldh a, [$fc]
    dec de
    nop
    ldh a, [rDIV]
    inc e
    nop
    add sp, -$04
    add hl, de
    nop
    add b
    ldh a, [$f4]
    dec e
    nop
    ldh a, [$fc]
    ld e, $00
    ldh a, [rDIV]
    rra
    nop
    add sp, -$0c
    ld a, [de]
    nop
    add sp, -$04
    dec de
    nop
    add sp, $04

jr_05c_790b:
    inc e
    nop
    ldh [$fc], a
    add hl, de
    nop
    ld hl, sp-$0c

jr_05c_7913:
    ld [hl+], a
    nop
    ld hl, sp+$04
    inc hl
    nop
    ld hl, sp-$04

jr_05c_791b:
    ld c, $00
    ld hl, sp-$14

jr_05c_791f:
    rra
    jr nz, @-$0e

    db $ec

jr_05c_7923:
    inc e
    jr nz, @-$06

    inc c
    dec e
    jr nz, @-$0e

    inc c
    ld a, [de]
    jr nz, jr_05c_78ae

    ret nc

jr_05c_792f:
    ld hl, sp+$00
    jr nz, jr_05c_790b

jr_05c_7933:
    nop
    ld bc, $d820
    ld hl, sp+$02
    jr nz, jr_05c_791b

jr_05c_793b:
    nop
    inc b
    jr nz, jr_05c_791f

jr_05c_793f:
    ld hl, sp+$05
    jr nz, jr_05c_7923

jr_05c_7943:
    ldh a, [rTMA]
    jr nz, jr_05c_792f

    db $10
    rlca
    jr nz, jr_05c_7933

    ld [$2008], sp
    add sp, $00
    add hl, bc
    jr nz, jr_05c_793b

jr_05c_7953:
    ld hl, sp+$0a
    jr nz, jr_05c_793f

    ldh a, [$0b]
    jr nz, jr_05c_7943

jr_05c_795b:
    add sp, $0c
    jr nz, @-$0e

jr_05c_795f:
    db $10
    dec c
    jr nz, jr_05c_7953

jr_05c_7963:
    ld [$200e], sp
    ldh a, [rP1]
    rrca
    jr nz, jr_05c_795b

    ld hl, sp+$10
    jr nz, jr_05c_795f

jr_05c_796f:
    ldh a, [rNR11]
    jr nz, jr_05c_7963

jr_05c_7973:
    add sp, $12
    jr nz, jr_05c_796f

    db $10
    inc de
    jr nz, jr_05c_7973

jr_05c_797b:
    ld [$2014], sp
    ld hl, sp+$00
    dec d
    jr nz, jr_05c_797b

jr_05c_7983:
    ld hl, sp+$16
    jr nz, @-$06

    ldh a, [rNR22]
    jr nz, jr_05c_7983

    add sp, $18
    jr nz, jr_05c_796f

    inc c
    inc bc
    jr nz, jr_05c_7913

    ret nc

    nop
    nop
    nop
    ret c

    ld hl, sp+$01
    nop
    ret c

    nop
    ld [bc], a
    nop
    ldh [$f8], a
    inc b
    nop
    ldh [rP1], a
    dec b
    nop
    ldh [$08], a
    ld b, $00
    add sp, -$18
    rlca
    nop
    add sp, -$10
    ld [$e800], sp
    ld hl, sp+$09
    nop
    add sp, $00
    ld a, [bc]
    nop
    add sp, $08
    dec bc
    nop
    add sp, $10
    inc c
    nop
    ldh a, [$e8]
    dec c
    nop
    ldh a, [$f0]
    ld c, $00
    ldh a, [$f8]
    rrca
    nop
    ldh a, [rP1]
    stop
    ldh a, [$08]
    ld de, $f000
    db $10
    ld [de], a
    nop
    ld hl, sp-$18
    inc de
    nop
    ld hl, sp-$10
    inc d
    nop
    ld hl, sp-$08
    dec d
    nop
    ld hl, sp+$00
    ld d, $00
    ld hl, sp+$08
    rla
    nop
    ld hl, sp+$10
    jr jr_05c_79f3

jr_05c_79f3:
    ldh [$ec], a
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
