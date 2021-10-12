; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05d", ROMX[$4000], BANK[$5d]

Call_05d_4000:
    ld e, l
    dec b
    ld b, b

Call_05d_4003:
Jump_05d_4003:
    or e
    ld b, b
    ld a, [$dd60]
    or a
    ret z

    ld de, $4071
    call Call_05d_4122
    ld a, [$dd68]
    or a
    jr z, jr_05d_4021

    ld a, [$daa4]
    cp $03
    jr z, jr_05d_4021

    cp $04
    jr nz, jr_05d_4031

jr_05d_4021:
    ld hl, $ffc3
    inc [hl]
    ld hl, $ffc3
    inc [hl]
    ld hl, $ffc3
    inc [hl]
    ld hl, $ffc3
    inc [hl]

jr_05d_4031:
    ld a, [$dd66]
    ldh [$c8], a
    ld a, [$dd62]
    or a
    jr nz, jr_05d_4041

    ld a, $00
    ld [$dd60], a

jr_05d_4041:
    ld a, [$dd68]
    or a
    ret nz

    ld a, [$daa4]
    cp $03
    jr z, jr_05d_4051

    cp $04
    jr nz, jr_05d_4061

jr_05d_4051:
    ldh a, [$c3]
    cp $d0
    ret c

    ld a, $04
    ld [$dd65], a
    ld a, $01
    ld [$dd68], a
    ret


jr_05d_4061:
    ldh a, [$c3]
    cp $c0
    ret c

    ld a, $00
    ld [$dd60], a
    ld a, $01
    ld [$dd68], a
    ret


    ld [hl], e
    ld b, c
    ld [hl], e
    ld b, c
    ld [hl], e
    ld b, c
    ld [hl], e
    ld b, c
    ld [hl], e
    ld b, c
    ld [hl], e
    ld b, c
    ld [hl], e
    ld b, c
    ld [hl], e
    ld b, c
    ld [hl], e
    ld b, c
    ld [hl], e
    ld b, c
    ld [hl], e
    ld b, c
    ld [hl], e
    ld b, c
    ld [hl], e
    ld b, c
    ld [hl], e
    ld b, c
    ld [hl], e
    ld b, c
    sbc b
    ld c, b
    inc b
    ld c, d
    xor $4c
    and d
    ld d, d
    sbc l
    ld d, h
    dec h
    ld d, [hl]
    ld h, b
    ld d, a
    ld l, d
    ld e, b
    ld c, e
    ld e, c
    ld e, l
    ld e, h
    ret


    ld e, [hl]
    cp h
    ld h, b
    dec sp
    ld l, b
    sbc a
    ld l, c
    dec bc
    ld l, [hl]
    db $ed
    ld l, [hl]
    sbc l
    ld [hl], e
    ld [bc], a
    ld a, b
    ld a, $01
    ld [$dd62], a
    ld a, [$dd68]
    or a
    jr z, jr_05d_40d0

    ld a, [$db54]
    cp $07
    jr nc, jr_05d_410b

    add a
    ld hl, $4114
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]

jr_05d_40d0:
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


jr_05d_410b:
    xor a
    ld [$dd60], a
    xor a
    ld [$dd62], a
    ret


    nop
    nop
    ld d, b
    nop
    jr c, jr_05d_411a

jr_05d_411a:
    ld l, b
    nop
    jr nz, jr_05d_411e

jr_05d_411e:
    ld d, b
    nop
    add b
    nop

Call_05d_4122:
    ldh a, [$cb]
    cp $28
    jr nc, jr_05d_4172

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

jr_05d_4145:
    ld a, [de]
    inc de
    cp $80
    jr z, jr_05d_4172

    ld b, a
    ldh a, [$c5]
    add b
    add $10
    ld [hl+], a
    ld a, [de]
    inc de
    ld b, a
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
    jr c, jr_05d_4145

jr_05d_4172:
    ret


    or e
    ld b, c
    ld b, h
    ld b, d
    push de
    ld b, d
    ld h, [hl]
    ld b, e
    rlca
    ld b, h
    xor b
    ld b, h
    jp hl


    ld b, h
    ld a, d
    ld b, l
    dec bc
    ld b, [hl]
    sbc h
    ld b, [hl]
    dec l
    ld b, a
    cp [hl]
    ld b, a
    ld c, a
    ld c, b
    sub a
    ld c, b
    sub a
    ld c, b
    sub a
    ld c, b
    sub a
    ld c, b
    sub a
    ld c, b
    sub a
    ld c, b
    sub a
    ld c, b
    sub a
    ld c, b
    sub a
    ld c, b
    sub a
    ld c, b
    sub a
    ld c, b
    sub a
    ld c, b
    sub a
    ld c, b
    sub a
    ld c, b
    sub a
    ld c, b
    sub a
    ld c, b
    sub a
    ld c, b
    sub a
    ld c, b
    sub a
    ld c, b
    ret nc

    ret nc

    inc bc
    nop
    ret c

    cp b
    rrca
    nop
    db $e3
    pop bc
    rrca
    nop
    add sp, -$47
    inc bc
    nop
    ret c

    reti


    inc bc
    nop
    call nc, $03c8
    nop
    db $f4
    call nc, Call_05d_4003
    push af
    jp nz, Jump_05d_4003

    ret nc

jr_05d_41d4:
    or b
    ld [de], a
    nop
    ret nc

jr_05d_41d8:
    ret nz

    ld [de], a
    nop
    ldh [$b4], a
    ld [de], a
    nop
    add sp, -$08
    dec b
    jr nz, jr_05d_41d4

    add sp, $05
    jr nz, @-$26

jr_05d_41e8:
    add sp, $04
    nop
    ldh [$d0], a
    dec b
    nop
    add sp, -$37

jr_05d_41f1:
    dec b
    nop
    add sp, -$28
    rlca
    jr nz, jr_05d_41d8

    ldh a, [rTAC]
    jr nz, jr_05d_41f1

    jr z, jr_05d_4201

    ld h, b
    db $ed
    ld b, b

jr_05d_4201:
    rrca
    ld h, b
    ld [c], a
    scf
    rrca
    ld h, b
    db $dd
    ccf
    inc bc
    ld h, b
    db $ed
    rra
    inc bc
    ld h, b
    pop af
    jr nc, jr_05d_4215

    ld h, b
    pop de
    inc h

jr_05d_4215:
    inc bc
    jr nz, jr_05d_41e8

    ld [hl], $03
    jr nz, @-$09

    ld c, b
    ld [de], a
    ld h, b
    push af
    jr c, jr_05d_4234

    ld h, b
    push hl
    ld b, h
    ld [de], a
    ld h, b
    db $dd
    nop
    dec b
    ld b, b
    push de
    db $10
    dec b
    ld b, b
    db $ed
    db $10
    inc b
    ld h, b
    push hl

jr_05d_4234:
    jr z, jr_05d_423b

    ld h, b
    db $dd
    cpl
    dec b
    ld h, b

jr_05d_423b:
    db $dd
    jr nz, @+$09

    ld b, b
    push hl
    ld [$4007], sp
    add b
    ldh [$bc], a
    rrca
    nop
    ret c

    call nz, $0012
    ldh [$cc], a
    inc bc
    nop
    db $d3
    db $d4, $03, $00
    ld hl, sp-$3a
    inc bc
    ld b, b
    ld hl, sp-$0e
    dec b
    jr nz, @-$16

    db $fc
    ld [$e460], sp
    db $f4
    add hl, bc
    jr nz, @-$0e

    jp hl


    dec b
    ld b, b
    call c, $13b0
    nop
    add sp, -$48
    inc de
    nop
    ld hl, sp-$20
    ld [bc], a
    nop
    db $eb
    ret z

    stop
    ldh a, [$bd]
    ld bc, $e000
    jp hl


    rlca
    nop
    db $dd
    call c, RST_00
    rst $20
    push de
    inc bc
    nop
    ldh a, [$d8]
    ld bc, $e800
    inc a
    rrca
    ld h, b
    ldh a, [$34]
    ld [de], a
    ld h, b
    add sp, $2c
    inc bc
    ld h, b
    push af
    inc h
    inc bc
    ld h, b
    ret nc

jr_05d_429d:
    ld [hl-], a
    inc bc
    jr nz, @-$2e

    ld b, $05
    ld b, b
    ldh [$fc], a
    ld [$e400], sp
    inc b
    add hl, bc
    ld b, b
    ret c

    rrca
    dec b
    jr nz, jr_05d_429d

    ld c, b
    inc de
    ld h, b
    ldh [rLCDC], a
    inc de
    ld h, b
    ret nc

    jr jr_05d_42bd

    ld h, b
    db $dd

jr_05d_42bd:
    jr nc, jr_05d_42cf

    ld h, b
    ret c

    dec sp
    ld bc, $e860
    rrca
    rlca
    ld h, b
    db $eb
    inc e
    nop
    ld h, b
    pop hl
    inc hl
    inc bc

jr_05d_42cf:
    ld h, b
    ret c

    jr nz, jr_05d_42d4

    ld h, b

jr_05d_42d4:
    add b
    di
    call RST_10
    ld hl, sp-$3c
    ld bc, $e800
    pop de
    inc bc
    nop
    ldh a, [$da]
    inc bc
    nop
    add sp, -$04
    ld b, $60
    ldh a, [$f8]
    ld [$f800], sp
    db $f4
    rlca
    nop
    db $e4
    db $f4
    rlca
    nop
    ld hl, sp-$1a
    inc bc
    ld b, b
    db $ec
    ldh a, [rTIMA]
    ld b, b
    add sp, -$20
    ld [bc], a
    nop
    db $e4
    add sp, $07
    nop
    ldh a, [$b7]
    stop
    ret nc

    or b
    ld [de], a
    nop
    ret c

    ldh [rIF], a
    nop
    add sp, -$3f
    stop
    ldh [$ce], a
    ld bc, $f800
    push de
    ld de, $d500

jr_05d_431e:
    dec hl
    db $10
    ld h, b
    ret nc

    inc [hl]
    ld bc, $e060
    daa
    inc bc
    ld h, b
    ret c

    ld e, $03
    ld h, b
    ldh [$fc], a
    ld b, $00
    ret c

    nop
    ld [$d060], sp
    inc b
    rlca
    ld h, b
    db $e4
    inc b
    rlca
    ld h, b
    ret nc

    ld [de], a
    inc bc
    jr nz, jr_05d_431e

    ld [$2005], sp
    ldh [rNR23], a
    ld [bc], a
    ld h, b
    db $e4
    db $10
    rlca
    ld h, b
    ret c

    ld b, c
    db $10
    ld h, b
    ld hl, sp+$48
    ld [de], a
    ld h, b
    ldh a, [rNR23]
    rrca
    ld h, b
    ldh [$37], a
    db $10
    ld h, b
    add sp, $2a
    ld bc, $d060
    inc hl
    ld de, $8060
    add sp, -$0b
    rlca
    nop
    ld hl, sp-$26
    ld bc, $f800
    rl b
    nop
    add sp, -$03
    ld a, [bc]
    ld h, b
    ldh a, [rTIMA]
    ld [$f040], sp
    db $fd
    ld b, $20
    add sp, -$13
    add hl, bc
    nop
    add sp, -$27
    ld [bc], a
    nop
    ld hl, sp-$08
    dec b
    ld b, b
    ld hl, sp+$02
    dec b
    ld b, b
    ldh a, [$f0]
    ld b, $20
    ld hl, sp-$15
    inc bc
    ld b, b
    di
    db $e3
    rrca
    nop
    add sp, -$1f
    rlca
    nop
    ldh [$e7], a
    nop
    nop
    ldh [$d6], a
    inc bc
    nop
    ldh a, [$d5]
    inc bc
    nop
    ldh [$c9], a
    rrca
    nop
    ldh [$03], a
    rlca
    ld h, b
    ret nc

    ld e, $01
    ld h, b
    ret nc

    dec l
    db $10
    ld h, b
    ldh [$fb], a
    ld a, [bc]
    nop
    ret c

    di
    ld [$d820], sp
    ei
    ld b, $40
    ldh [$0b], a
    add hl, bc
    ld h, b
    ldh [$1f], a
    ld [bc], a
    ld h, b
    ret nc

    nop
    dec b
    jr nz, @-$2e

    or $05
    jr nz, @-$26

    ld [$4006], sp
    ret nc

    dec c
    inc bc
    jr nz, @-$29

    dec d
    rrca
    ld h, b
    ldh [rNR22], a
    rlca
    ld h, b
    ret c

    inc hl
    inc bc
    ld h, b
    add sp, $11
    nop
    ld h, b
    add sp, $22
    inc bc
    ld h, b
    add sp, $2f
    rrca
    ld h, b
    ldh a, [rNR30]
    ld b, $00
    ldh a, [$38]
    ld [de], a
    nop
    ret c

    sbc $06
    ld h, b
    ret c

    ret nz

    ld [de], a
    ld h, b
    add b
    ret c

    cp b
    rrca
    nop
    db $e3
    pop bc
    rrca
    nop
    call nc, $03c8
    nop
    ret nc

    or b
    ld [de], a
    nop
    ret nc

    ret nz

    ld [de], a
    nop
    ldh [$b4], a
    ld [de], a
    nop
    ldh a, [rLCDC]
    rrca
    ld h, b
    push hl
    scf
    rrca
    ld h, b
    db $f4
    jr nc, jr_05d_442d

    ld h, b
    ld hl, sp+$48

jr_05d_442d:
    ld [de], a
    ld h, b
    ld hl, sp+$38
    ld [de], a
    ld h, b
    add sp, $44
    ld [de], a
    ld h, b
    ld hl, sp-$05
    inc bc
    ld b, b
    ld hl, sp-$0d
    rrca
    nop
    ldh a, [$f3]
    rlca
    nop
    add sp, $03
    dec b
    nop
    add sp, -$05
    ld [$f840], sp
    dec b
    ld b, $20
    ldh a, [$fb]
    add hl, bc
    nop
    add sp, -$15
    ld [bc], a
    nop
    add sp, $0b
    nop
    ld h, b
    add sp, -$0d
    add hl, bc
    jr nz, @-$0e

    inc bc
    dec b
    jr nz, @-$0e

    dec bc
    ld [$e020], sp
    db $ed
    nop
    nop
    ret nc

    db $fd
    inc bc
    jr nz, @-$2e

    dec b
    rrca
    ld h, b
    ret c

    dec b
    rlca
    ld h, b
    ldh [$f5], a
    dec b
    ld h, b
    ldh [$fd], a
    ld [$d020], sp
    di
    ld b, $40
    ret c

    db $fd
    add hl, bc
    ld h, b
    ldh [rTIMA], a
    add hl, bc
    ld b, b
    ret c

    push af
    dec b
    ld b, b
    ret c

    db $ed
    ld [$e040], sp
    dec c
    ld [bc], a
    ld h, b

jr_05d_4497:
    ret nc

    add sp, $0a
    nop
    ld hl, sp+$10
    ld a, [bc]
    ld h, b
    ld hl, sp+$1a
    ld b, $60
    ret nc

    sbc $06
    nop
    add b
    rst $18
    db $fd
    ld [$df00], sp
    ld b, $07
    ld h, b
    rst $18
    db $f4
    dec b
    nop
    rst $18
    db $eb
    inc bc
    nop
    rst $18
    rrca
    ld [bc], a
    nop
    sub $f4
    dec b
    jr nz, jr_05d_4497

    db $fd
    rlca
    nop
    sub $06

jr_05d_44c6:
    add hl, bc
    ld b, b
    ld a, [c]
    inc b
    dec b
    ld b, b
    jp hl


    ei

jr_05d_44ce:
    ld [$e960], sp
    ld a, [c]

jr_05d_44d2:
    rlca
    nop
    jp hl


    inc b
    dec b
    ld h, b
    jp hl


    dec c
    inc bc
    ld h, b
    ld a, [c]
    ei

jr_05d_44de:
    rlca
    ld h, b
    ld a, [c]
    ld a, [c]
    add hl, bc
    jr nz, jr_05d_44ce

    jp hl


    ld [bc], a
    ld h, b
    add b
    ret nc

jr_05d_44ea:
    ret nc

    dec bc
    jr nz, jr_05d_44c6

    adc $0c
    jr nz, jr_05d_44d2

    call z, Call_000_200b
    add sp, -$34
    inc c
    jr nz, jr_05d_44ea

    adc $0b
    jr nz, @-$06

    ret nc

    inc c
    jr nz, jr_05d_44d2

jr_05d_4502:
    or b
    dec bc
    jr nz, jr_05d_44de

    or b
    inc c
    jr nz, jr_05d_44ea

    or b
    dec bc
    jr nz, @-$16

jr_05d_450e:
    or b
    inc c
    jr nz, jr_05d_4502

    or b
    dec bc
    jr nz, jr_05d_450e

    or b
    inc c
    jr nz, jr_05d_44ea

jr_05d_451a:
    ret nz

    inc c
    jr nz, @-$26

    cp [hl]
    dec bc
    jr nz, jr_05d_4502

    cp h
    inc c
    jr nz, jr_05d_450e

jr_05d_4526:
    cp h
    dec bc
    jr nz, jr_05d_451a

    cp [hl]
    inc c
    jr nz, jr_05d_4526

    ret nz

    dec bc
    jr nz, jr_05d_4502

    jr z, jr_05d_453f

    nop
    ret c

    ld a, [hl+]
    inc c
    nop
    ldh [$2c], a
    dec bc
    nop
    add sp, $2c

jr_05d_453f:
    inc c
    nop
    ldh a, [$2a]
    dec bc
    nop
    ld hl, sp+$28
    inc c
    nop
    ret nc

    ld c, b
    dec bc
    nop
    ret c

    ld c, b
    inc c
    nop
    ldh [rOBP0], a
    dec bc
    nop
    add sp, $48

jr_05d_4557:
    inc c
    nop
    ldh a, [rOBP0]
    dec bc
    nop
    ld hl, sp+$48
    inc c
    nop
    ret nc

    jr c, jr_05d_4570

    nop
    ret c

    ld a, [hl-]
    dec bc
    nop
    ldh [$3c], a
    inc c
    nop
    add sp, $3c

jr_05d_456f:
    dec bc

jr_05d_4570:
    nop
    ldh a, [$3a]
    inc c
    nop
    ld hl, sp+$38
    dec bc
    nop
    add b
    ret nc

jr_05d_457b:
    ret c

    inc c
    jr nz, jr_05d_4557

    sub $0b
    jr nz, @-$1e

    call nc, Call_000_200c
    add sp, -$2c
    dec bc
    jr nz, jr_05d_457b

    sub $0c
    jr nz, @-$06

    ret c

    dec bc
    jr nz, @-$2e

jr_05d_4593:
    ret z

    dec bc
    jr nz, jr_05d_456f

    add $0c
    jr nz, jr_05d_457b

    call nz, Call_000_200b
    add sp, -$3c
    inc c
    jr nz, jr_05d_4593

    add $0b
    jr nz, @-$06

    ret z

    inc c
    jr nz, jr_05d_457b

jr_05d_45ab:
    cp b
    inc c
    jr nz, @-$26

    or [hl]
    dec bc
    jr nz, jr_05d_4593

    or h
    inc c
    jr nz, @-$16

jr_05d_45b7:
    or h
    dec bc
    jr nz, jr_05d_45ab

    or [hl]
    inc c
    jr nz, jr_05d_45b7

    cp b
    dec bc
    jr nz, jr_05d_4593

    jr nz, jr_05d_45d1

    nop
    ret c

    ld [hl+], a
    dec bc
    nop
    ldh [rNR50], a
    inc c
    nop
    add sp, $24
    dec bc

jr_05d_45d1:
    nop
    ldh a, [rNR43]
    inc c
    nop
    ld hl, sp+$20
    dec bc
    nop
    ret nc

    jr nc, jr_05d_45e8

    nop
    ret c

    ld [hl-], a
    inc c
    nop
    ldh [$34], a
    dec bc
    nop
    add sp, $34

jr_05d_45e8:
    inc c
    nop
    ldh a, [$32]
    dec bc
    nop
    ld hl, sp+$30
    inc c
    nop
    ret nc

    ld b, b

jr_05d_45f4:
    inc c
    nop
    ret c

    ld b, d
    dec bc
    nop
    ldh [rLY], a
    inc c
    nop
    add sp, $44

jr_05d_4600:
    dec bc
    nop
    ldh a, [rSCY]
    inc c
    nop
    ld hl, sp+$40
    dec bc
    nop
    add b
    ret nc

jr_05d_460c:
    ldh [$0b], a
    jr nz, jr_05d_45e8

    sbc $0c
    jr nz, jr_05d_45f4

    call c, Call_000_200b
    add sp, -$24
    inc c
    jr nz, jr_05d_460c

    sbc $0b
    jr nz, @-$06

    ldh [$0c], a
    jr nz, jr_05d_45f4

jr_05d_4624:
    ret nc

    inc c
    jr nz, jr_05d_4600

    adc $0b
    jr nz, jr_05d_460c

    call z, Call_000_200c
    add sp, -$34
    dec bc
    jr nz, jr_05d_4624

    adc $0c
    jr nz, @-$06

    ret nc

    dec bc
    jr nz, jr_05d_460c

jr_05d_463c:
    ret nz

    dec bc
    jr nz, @-$26

    cp [hl]
    inc c
    jr nz, jr_05d_4624

    cp h
    dec bc
    jr nz, @-$16

jr_05d_4648:
    cp h
    inc c
    jr nz, jr_05d_463c

    cp [hl]
    dec bc
    jr nz, jr_05d_4648

    ret nz

    inc c
    jr nz, jr_05d_4624

    jr c, jr_05d_4661

    nop
    ret c

    ld a, [hl-]
    inc c
    nop
    ldh [$3c], a
    dec bc
    nop
    add sp, $3c

jr_05d_4661:
    inc c
    nop
    ldh a, [$3a]
    dec bc
    nop
    ld hl, sp+$38
    inc c
    nop
    ret nc

    jr jr_05d_4679

    nop
    ret c

    ld a, [de]
    inc c
    nop
    ldh [rNR32], a
    dec bc
    nop
    add sp, $1c

jr_05d_4679:
    inc c
    nop
    ldh a, [rNR30]
    dec bc
    nop
    ld hl, sp+$18
    inc c
    nop
    ret nc

    jr z, jr_05d_4692

    nop
    ret c

    ld a, [hl+]
    dec bc
    nop
    ldh [$2c], a
    inc c
    nop
    add sp, $2c

jr_05d_4691:
    dec bc

jr_05d_4692:
    nop
    ldh a, [$2a]
    inc c
    nop
    ld hl, sp+$28
    dec bc
    nop
    add b
    ret nc

jr_05d_469d:
    add sp, $0c
    jr nz, jr_05d_4679

    and $0b
    jr nz, @-$1e

    db $e4
    inc c
    jr nz, jr_05d_4691

jr_05d_46a9:
    db $e4
    dec bc
    jr nz, jr_05d_469d

    and $0c
    jr nz, jr_05d_46a9

    add sp, $0b
    jr nz, @-$2e

jr_05d_46b5:
    ret c

    dec bc
    jr nz, jr_05d_4691

    sub $0c
    jr nz, jr_05d_469d

    call nc, Call_000_200b
    add sp, -$2c
    inc c
    jr nz, jr_05d_46b5

    sub $0b
    jr nz, @-$06

    ret c

    inc c
    jr nz, jr_05d_469d

jr_05d_46cd:
    ret z

    inc c
    jr nz, jr_05d_46a9

    add $0b
    jr nz, jr_05d_46b5

    call nz, Call_000_200c
    add sp, -$3c
    dec bc
    jr nz, jr_05d_46cd

    add $0c
    jr nz, @-$06

    ret z

    dec bc
    jr nz, jr_05d_46b5

    jr nc, jr_05d_46f3

    nop
    ret c

    ld [hl-], a
    dec bc
    nop
    ldh [$34], a
    inc c
    nop
    add sp, $34
    dec bc

jr_05d_46f3:
    nop
    ldh a, [$32]
    inc c
    nop
    ld hl, sp+$30
    dec bc
    nop
    ret nc

    jr nz, jr_05d_470a

    nop
    ret c

    ld [hl+], a
    inc c
    nop
    ldh [rNR50], a
    dec bc
    nop
    add sp, $24

jr_05d_470a:
    inc c
    nop
    ldh a, [rNR43]
    dec bc
    nop
    ld hl, sp+$20
    inc c
    nop
    ret nc

    db $10

jr_05d_4716:
    inc c
    nop
    ret c

    ld [de], a
    dec bc
    nop
    ldh [rNR14], a
    inc c
    nop
    add sp, $14

jr_05d_4722:
    dec bc
    nop
    ldh a, [rNR12]
    inc c
    nop
    ld hl, sp+$10
    dec bc
    nop
    add b
    ret nc

jr_05d_472e:
    ldh a, [$0b]
    jr nz, jr_05d_470a

    db $ec
    inc c
    jr nz, jr_05d_4716

    add sp, $0b
    jr nz, jr_05d_4722

jr_05d_473a:
    add sp, $0c
    jr nz, jr_05d_472e

    db $ec
    dec bc
    jr nz, jr_05d_473a

    ldh a, [$0c]
    jr nz, jr_05d_4716

jr_05d_4746:
    ldh [$0c], a
    jr nz, jr_05d_4722

    call c, Call_000_200b
    ldh [$d8], a
    inc c
    jr nz, jr_05d_473a

jr_05d_4752:
    ret c

    dec bc
    jr nz, jr_05d_4746

    call c, Call_000_200c
    ld hl, sp-$20
    dec bc
    jr nz, jr_05d_472e

jr_05d_475e:
    ret nc

    dec bc
    jr nz, jr_05d_473a

    call z, Call_000_200c
    ldh [$c8], a
    dec bc
    jr nz, jr_05d_4752

    ret z

    inc c
    jr nz, jr_05d_475e

    call z, Call_000_200b
    ld hl, sp-$30
    inc c
    jr nz, jr_05d_4746

    jr z, jr_05d_4783

    nop
    ret c

    inc l
    inc c
    nop
    ldh [$30], a
    dec bc
    nop
    add sp, $30

jr_05d_4783:
    inc c
    nop
    ldh a, [$2c]
    dec bc
    nop
    ld hl, sp+$28
    inc c
    nop
    ret nc

    jr jr_05d_479c

    nop
    ret c

    inc e
    dec bc
    nop
    ldh [rNR41], a
    inc c
    nop
    add sp, $20

jr_05d_479b:
    dec bc

jr_05d_479c:
    nop
    ldh a, [rNR32]
    inc c
    nop
    ld hl, sp+$18
    dec bc
    nop
    ret nc

    ld [$000b], sp
    ret c

    inc c
    inc c
    nop
    ldh [rNR10], a
    dec bc
    nop
    add sp, $10

jr_05d_47b3:
    inc c
    nop
    ldh a, [$0c]
    dec bc
    nop
    ld hl, sp+$08
    inc c
    nop
    add b
    ret nc

jr_05d_47bf:
    ld hl, sp+$0c
    jr nz, jr_05d_479b

    ld hl, sp+$0b
    jr nz, @-$1e

    ld hl, sp+$0c
    jr nz, jr_05d_47b3

jr_05d_47cb:
    ld hl, sp+$0b
    jr nz, jr_05d_47bf

    ld hl, sp+$0c
    jr nz, jr_05d_47cb

    ld hl, sp+$0b
    jr nz, @-$2e

jr_05d_47d7:
    add sp, $0b
    jr nz, jr_05d_47b3

    db $e4
    inc c
    jr nz, jr_05d_47bf

    ldh [$0b], a
    jr nz, jr_05d_47cb

jr_05d_47e3:
    ldh [$0c], a
    jr nz, jr_05d_47d7

    db $e4
    dec bc
    jr nz, jr_05d_47e3

    add sp, $0c
    jr nz, jr_05d_47bf

jr_05d_47ef:
    ret c

    inc c
    jr nz, jr_05d_47cb

    call nc, Call_000_200b
    ldh [$d0], a
    inc c
    jr nz, jr_05d_47e3

    ret nc

    dec bc
    jr nz, jr_05d_47ef

    call nc, Call_000_200c
    ld hl, sp-$28
    dec bc
    jr nz, jr_05d_47d7

    jr nz, jr_05d_4815

    nop
    ret c

    inc h
    dec bc
    nop
    ldh [$28], a
    inc c
    nop
    add sp, $28
    dec bc

jr_05d_4815:
    nop
    ldh a, [rNR50]
    inc c
    nop
    ld hl, sp+$20
    dec bc
    nop
    ret nc

    db $10
    dec bc
    nop
    ret c

    inc d
    inc c
    nop
    ldh [rNR23], a
    dec bc
    nop
    add sp, $18

jr_05d_482c:
    inc c
    nop
    ldh a, [rNR14]
    dec bc
    nop
    ld hl, sp+$10
    inc c
    nop
    ret nc

    nop

jr_05d_4838:
    inc c
    nop
    ret c

    nop
    dec bc
    nop
    ldh [rP1], a
    inc c
    nop
    add sp, $00

jr_05d_4844:
    dec bc
    nop
    ldh a, [rP1]
    inc c
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ret nc

jr_05d_4850:
    xor $0b
    jr nz, jr_05d_482c

    ld [$200c], a
    ldh [$e6], a
    dec bc
    jr nz, jr_05d_4844

    and $0c
    jr nz, jr_05d_4850

    ld [$200b], a
    ld hl, sp-$12
    inc c
    jr nz, jr_05d_4838

    ld a, [bc]
    dec bc
    nop
    ret c

    ld c, $0c
    nop
    ldh [rNR12], a
    dec bc
    nop
    add sp, $12
    inc c
    nop
    ldh a, [$0e]
    dec bc
    nop
    ld hl, sp+$0a
    inc c
    nop
    ret nc

    db $fc
    dec c
    nop
    ret c

    db $fc
    ld c, $00
    ldh [$fc], a
    dec c
    nop
    add sp, -$04
    ld c, $00
    ldh a, [$fc]
    dec c
    nop
    ld hl, sp-$04
    ld c, $00
    add b
    ret c

    ld c, b
    db $dd
    ld c, b
    and $48
    di
    ld c, b
    db $10
    ld c, c
    ld c, c
    ld c, c
    add d
    ld c, c
    jp Jump_000_0349


    ld c, d
    inc bc
    ld c, d
    inc bc
    ld c, d
    inc bc
    ld c, d
    inc bc
    ld c, d
    inc bc
    ld c, d
    inc bc
    ld c, d
    inc bc
    ld c, d
    inc bc
    ld c, d
    inc bc
    ld c, d
    inc bc
    ld c, d
    inc bc
    ld c, d
    inc bc
    ld c, d
    inc bc
    ld c, d
    inc bc
    ld c, d
    inc bc
    ld c, d
    inc bc
    ld c, d
    inc bc
    ld c, d
    inc bc
    ld c, d
    inc bc
    ld c, d
    inc bc
    ld c, d
    inc bc
    ld c, d

jr_05d_48d4:
    inc bc
    ld c, d
    inc bc
    ld c, d
    ret nc

    db $fc
    nop
    nop
    add b
    ret nc

    db $fc
    inc bc
    nop
    ret c

    db $fc
    ld [bc], a
    nop
    add b
    ret nc

    ld hl, sp+$0c
    nop
    ret nc

    nop
    dec c
    nop
    rst $10
    ld bc, $0005
    add b
    ret nc

jr_05d_48f4:
    nop
    ld d, $20
    ret nc

    ld hl, sp+$17
    jr nz, jr_05d_48d4

    nop
    inc e
    nop
    ret c

    ld [$001d], sp
    ldh [$fa], a
    jr jr_05d_4927

    ldh [$f2], a
    add hl, de
    jr nz, jr_05d_48f4

    or $05
    nop
    add b
    ret nc

    ld hl, sp+$06
    nop
    ret nc

    nop
    rlca
    nop
    ret c

    or $08
    nop
    ret c

    cp $09
    nop
    ldh [$f9], a
    ld a, [bc]
    nop
    ldh [rSB], a
    dec bc

jr_05d_4927:
    nop
    add sp, -$0c
    inc c
    nop
    add sp, -$04
    dec c
    nop
    ldh a, [$f4]
    ld c, $00
    ldh a, [$fc]
    rrca
    nop
    ld hl, sp-$07
    stop
    ld hl, sp+$01
    ld de, $f800
    inc b
    ld e, $00
    ld hl, sp-$08
    ld e, $20
    add b
    ret nc

    ld a, [$0012]
    ret nc

    ld [bc], a
    inc de
    nop
    ret c

    db $fd
    inc d
    nop
    ret c

    dec b
    dec d
    nop
    ldh [$fd], a

jr_05d_495b:
    ld d, $00
    ldh [rTIMA], a
    rla
    nop
    add sp, -$03
    jr jr_05d_4965

jr_05d_4965:
    add sp, $05
    add hl, de
    nop
    ldh a, [$fd]
    ld a, [de]
    nop
    ldh a, [rTIMA]
    dec de
    nop
    ld hl, sp-$03
    inc e
    nop
    ld hl, sp+$05
    dec e
    nop
    ld hl, sp+$06
    ld e, $00
    ld hl, sp-$0b
    ld e, $20
    add b
    ret c

    dec bc
    ld [$d820], sp
    inc bc
    add hl, bc
    jr nz, jr_05d_495b

    ld bc, $0018
    ret nc

    add hl, bc
    add hl, de
    nop
    ldh [rTIMA], a
    inc d
    nop
    ldh [$0d], a

jr_05d_4998:
    dec d
    nop
    add sp, $06
    inc c
    nop
    add sp, $0e
    dec c
    nop
    ldh a, [rTIMA]
    ld c, $00
    ldh a, [$0d]
    rrca
    nop
    ld hl, sp+$04
    ld d, $00
    ld hl, sp+$0c
    rla
    nop
    add sp, $03
    dec c
    jr nz, @-$0e

    cp $0c
    nop
    ld hl, sp+$11
    ld e, $00
    ld hl, sp-$03
    ld e, $20
    add b
    ret nc

jr_05d_49c4:
    ld [bc], a
    inc c
    jr nz, jr_05d_4998

    ld a, [$200d]
    ret c

    pop af

jr_05d_49cd:
    ld d, $00
    ret c

    ld sp, hl
    rla
    nop
    ldh [$f7], a
    ld d, $20
    ldh [$ef], a
    rla
    jr nz, jr_05d_49c4

    rst $30
    jr jr_05d_49ff

    add sp, -$11
    add hl, de
    jr nz, @-$0e

jr_05d_49e4:
    rst $30

jr_05d_49e5:
    ld a, [de]
    jr nz, @-$0e

    rst $28
    dec de
    jr nz, jr_05d_49e4

    db $f4
    inc d
    nop
    ld hl, sp-$04
    dec d
    nop
    push hl
    cp $06
    jr nz, jr_05d_49e5

    ld bc, $2005
    ld hl, sp+$01
    ld e, $00

jr_05d_49ff:
    ld hl, sp-$13
    ld e, $20
    add b
    ld b, h
    ld c, d
    ld c, l
    ld c, d
    ld d, [hl]
    ld c, d
    ld h, a
    ld c, d
    ld [hl], h
    ld c, d
    sub c
    ld c, d
    ld a, [hl+]
    ld c, e
    ld l, e
    ld c, e
    ldh a, [rWX]
    ld e, c
    ld c, h
    db $ed
    ld c, h
    db $ed
    ld c, h
    db $ed
    ld c, h
    db $ed
    ld c, h
    db $ed
    ld c, h
    db $ed
    ld c, h
    db $ed
    ld c, h
    db $ed
    ld c, h
    db $ed
    ld c, h
    db $ed
    ld c, h
    db $ed
    ld c, h
    db $ed
    ld c, h
    db $ed
    ld c, h

jr_05d_4a32:
    db $ed
    ld c, h
    db $ed
    ld c, h
    db $ed
    ld c, h
    db $ed
    ld c, h
    db $ed
    ld c, h
    db $ed
    ld c, h
    db $ed
    ld c, h
    db $ed
    ld c, h
    db $ed
    ld c, h
    ret nc

    db $fc
    nop
    nop
    ret nc

    db $fd
    nop
    jr nz, jr_05d_49cd

    ret nc

    ld hl, sp+$01
    nop
    ret nc

    nop
    ld bc, $8020
    ret nc

    db $fc
    nop
    nop
    ret nc

    db $fd
    nop
    jr nz, jr_05d_4a32

    db $fd
    inc bc
    nop
    db $db
    db $fd
    ld [bc], a

jr_05d_4a65:
    nop
    add b
    ret nc

    ld hl, sp+$0c
    nop
    ret nc

    nop
    dec c
    nop
    rst $10
    ld bc, $0005
    add b
    ret nc

jr_05d_4a75:
    nop
    ld d, $20
    ret nc

    ld hl, sp+$17
    jr nz, @-$26

    nop
    jr jr_05d_4aa0

    ret c

    ld hl, sp+$19
    jr nz, jr_05d_4a65

    db $fc

jr_05d_4a86:
    jr jr_05d_4aa8

    ldh [$f4], a
    add hl, de
    jr nz, jr_05d_4a75

    ld hl, sp+$05
    nop
    add b
    ret nc

jr_05d_4a92:
    ld bc, $2006
    ret nc

jr_05d_4a96:
    ld sp, hl
    rlca
    jr nz, @-$26

    inc bc
    ld [$d820], sp
    ei
    add hl, bc

jr_05d_4aa0:
    jr nz, @-$1e

jr_05d_4aa2:
    nop
    ld a, [bc]
    jr nz, jr_05d_4a86

    ld hl, sp+$0b

jr_05d_4aa8:
    jr nz, jr_05d_4a92

jr_05d_4aaa:
    dec b
    inc c
    jr nz, jr_05d_4a96

    db $fd
    dec c
    jr nz, jr_05d_4aa2

jr_05d_4ab2:
    dec b
    ld c, $20
    ldh a, [$fd]
    rrca
    jr nz, jr_05d_4ab2

jr_05d_4aba:
    nop
    db $10
    jr nz, @-$06

    ld hl, sp+$11
    jr nz, jr_05d_4aba

    db $f4
    ld hl, $f820
    ld [bc], a
    ld hl, $d000
    db $10
    ld [hl+], a
    nop
    ret nc

jr_05d_4ace:
    ld [$0022], sp
    ret c

    dec bc
    ld [hl+], a
    nop
    ret c

    db $10
    ld [hl+], a
    nop
    ldh [rNR10], a
    ld [hl+], a
    nop
    ldh [$08], a
    ld [hl+], a
    nop
    add sp, $10
    ld [hl+], a
    nop
    ldh a, [rNR10]
    ld [hl+], a
    nop
    ld hl, sp+$10

jr_05d_4aeb:
    ld [hl+], a
    nop
    ld hl, sp+$0a
    ld [hl+], a
    nop
    ret nc

jr_05d_4af2:
    ldh a, [rNR43]
    jr nz, jr_05d_4ace

    ldh a, [rNR43]
    jr nz, @-$1e

    ldh a, [rNR43]
    jr nz, @-$16

jr_05d_4afe:
    ldh a, [rNR43]
    jr nz, jr_05d_4af2

    ldh a, [rNR43]
    jr nz, jr_05d_4afe

    ldh a, [rNR43]
    jr nz, @-$2e

jr_05d_4b0a:
    add sp, $22
    jr nz, @-$26

    add sp, $22
    jr nz, jr_05d_4af2

    add sp, $22
    jr nz, jr_05d_4afe

jr_05d_4b16:
    add sp, $22
    jr nz, jr_05d_4b0a

    add sp, $22
    jr nz, jr_05d_4b16

    add sp, $22
    jr nz, jr_05d_4b0a

    push af
    ld [hl+], a
    jr nz, jr_05d_4b16

    push af
    ld [hl+], a
    jr nz, jr_05d_4aaa

    ret nc

jr_05d_4b2b:
    ld [bc], a
    inc c
    jr nz, @-$2e

    ld a, [$200d]
    ret c

    pop af
    ld d, $00
    ret c

    ld sp, hl

jr_05d_4b38:
    rla
    nop
    ldh [$f7], a
    ld d, $20
    ldh [$ef], a
    rla
    jr nz, jr_05d_4b2b

    rst $30

jr_05d_4b44:
    jr jr_05d_4b66

    add sp, -$11
    add hl, de
    jr nz, @-$0e

    rst $30
    ld a, [de]
    jr nz, @-$0e

    rst $28
    dec de
    jr nz, jr_05d_4b38

    cp $06
    jr nz, jr_05d_4b44

    ld bc, $2005
    ld hl, sp-$04
    ld e, $00
    ld hl, sp+$04
    rra
    nop
    ld hl, sp-$0c
    ld e, $20

jr_05d_4b66:
    ld hl, sp-$14
    rra
    jr nz, jr_05d_4aeb

    ret c

    dec bc
    ld [$d820], sp
    inc bc
    add hl, bc
    jr nz, jr_05d_4b44

    ld bc, $0018
    ret nc

    add hl, bc
    add hl, de
    nop
    ldh [rTIMA], a
    inc d
    nop
    ldh [$0d], a
    dec d
    nop
    add sp, $06
    inc c
    nop
    add sp, $0e
    dec c
    nop
    ldh a, [rTIMA]
    ld c, $00
    ldh a, [$0d]
    rrca
    nop
    add sp, $03
    dec c
    jr nz, @-$0e

    cp $0c
    nop
    ld hl, sp+$0c
    jr nz, jr_05d_4b9f

jr_05d_4b9f:
    ld hl, sp+$04
    jr nz, jr_05d_4bc3

    ld hl, sp-$04
    ld hl, $d020
    add sp, $22
    nop
    ret c

    add sp, $22
    nop
    ldh [$e8], a
    ld [hl+], a
    nop
    add sp, -$18
    ld [hl+], a
    nop
    ldh a, [$e9]
    ld [hl+], a
    nop
    ld hl, sp-$17
    ld [hl+], a
    nop
    ret nc

    ldh a, [rNR43]
    nop

jr_05d_4bc3:
    ret c

    pop af
    ld [hl+], a
    nop
    ldh [$f2], a

jr_05d_4bc9:
    ld [hl+], a
    nop
    add sp, -$0f
    ld [hl+], a
    nop
    ldh a, [$f3]
    ld [hl+], a
    nop
    ld hl, sp-$0d

jr_05d_4bd5:
    ld [hl+], a
    nop
    ret nc

    ld hl, sp+$22
    nop
    ret c

    ld a, [$0022]
    add sp, -$06
    ld [hl+], a
    nop
    ldh [$fc], a
    ld [hl+], a
    nop
    ret nc

    db $10
    ld [hl+], a
    jr nz, @-$06

    inc d
    rra
    nop
    add b
    ld hl, sp+$00
    rra
    nop
    ret nc

    inc bc
    inc d
    jr nz, jr_05d_4bc9

    ei
    dec d
    jr nz, jr_05d_4bd5

    add hl, bc
    ld a, [bc]
    jr nz, @-$26

    ld bc, $200b
    ld hl, sp+$0f
    ld e, $00
    ld hl, sp+$17
    rra
    nop
    ld hl, sp+$07
    ld e, $20
    ldh [$08], a
    ld d, $40
    ldh [rNR10], a
    rla
    ld b, b
    add sp, $11
    inc c
    jr nz, @-$16

    add hl, bc
    dec c
    jr nz, @-$0e

    db $10
    ld c, $20
    ldh a, [$08]
    rrca
    jr nz, @-$16

    ld a, [$6014]
    add sp, -$0e

jr_05d_4c2e:
    dec d
    ld h, b
    ldh a, [$fa]
    db $10
    jr nz, @-$0e

jr_05d_4c35:
    ld a, [c]
    ld de, $f820
    ldh a, [rNR41]
    jr nz, jr_05d_4c35

    ld hl, sp+$20
    nop
    ld hl, sp+$00
    ld hl, $d800
    ld a, [$0009]
    ldh [$fb], a
    ld a, [bc]
    ld h, b
    ldh [$f3], a
    dec bc
    ld h, b
    db $db
    ld a, [c]

jr_05d_4c52:
    dec e
    ld h, b
    ld hl, sp-$18
    ld hl, $8020
    ret nc

jr_05d_4c5a:
    cp $10
    jr nz, jr_05d_4c2e

    or $11
    jr nz, @-$26

    db $f4
    ld [de], a
    ld b, b
    ret c

jr_05d_4c66:
    db $fc
    inc de
    ld b, b
    ldh [$ed], a
    dec e
    ld h, b
    add sp, -$0a
    db $10
    jr nz, jr_05d_4c5a

    xor $11
    jr nz, jr_05d_4c66

    ldh a, [rNR23]
    jr nz, jr_05d_4c52

    ld b, $14
    nop
    ret c

    ld c, $15
    nop
    ldh [rIF], a
    db $10
    jr nz, jr_05d_4c66

    rlca
    ld de, $e820
    inc b
    ld b, $00
    add sp, $0c
    rlca
    nop
    ldh a, [rSB]
    inc d
    nop
    ldh a, [$09]
    dec d
    nop
    ld hl, sp+$10
    rra
    nop
    ld hl, sp+$01
    ld e, $20
    ld hl, sp+$09
    ld e, $00
    ldh a, [$0c]
    inc b
    nop
    ld hl, sp+$10
    dec b
    jr nz, @-$1e

    ld a, [$2005]
    ldh [$f5], a
    inc e
    ld h, b
    ret nc

    ld [bc], a
    ld [de], a
    nop
    ret nc

jr_05d_4cba:
    ld a, [bc]
    inc de
    nop
    ld hl, sp-$07
    rra
    jr nz, jr_05d_4cba

    db $f4
    jr nz, jr_05d_4cc5

jr_05d_4cc5:
    ld hl, sp-$04
    ld hl, $f800
    db $ec
    jr nz, jr_05d_4ced

    ldh a, [$f8]
    ld [hl+], a
    nop
    ld hl, sp-$1c
    rra
    jr nz, @-$2e

    add sp, $22
    jr nz, @-$26

    add sp, $22
    jr nz, @-$1e

    add sp, $22
    jr nz, @-$2e

    db $10
    ld [hl+], a
    nop
    add sp, -$03
    ld [hl+], a
    nop
    ldh a, [$e8]
    ld c, $00

jr_05d_4ced:
    add b
    ld l, $4d
    ld b, a
    ld c, l
    ld l, b
    ld c, l
    sub l
    ld c, l
    add $4d
    rst $18
    ld c, l
    jr jr_05d_4d4a

    sub c
    ld c, [hl]
    ld [$434e], a
    ld c, a
    db $e4
    ld c, a
    ld h, c
    ld d, b
    sbc $50
    ld e, a
    ld d, c
    ldh [rHDMA1], a
    add hl, de
    ld d, d
    and c
    ld d, d
    and c
    ld d, d
    and c
    ld d, d
    and c
    ld d, d
    and c
    ld d, d
    and c
    ld d, d
    and c
    ld d, d
    and c
    ld d, d
    and c
    ld d, d
    and c
    ld d, d
    and c
    ld d, d
    and c
    ld d, d
    and c
    ld d, d
    and c
    ld d, d
    and c
    ld d, d
    and c
    ld d, d
    ld hl, sp-$08
    ld bc, $f840
    nop
    ld bc, $d060
    ld hl, sp+$01
    nop
    ret nc

    nop
    ld bc, $f020
    cp $05
    ld h, b
    ret c

    ld a, [$0005]
    add b
    ret nc

    db $fc
    nop

jr_05d_4d4a:
    nop
    call nc, Call_000_2bfc
    nop
    ld hl, sp-$04
    nop
    ld b, b
    db $f4
    db $fc
    dec hl
    ld b, b
    rst $20
    db $fc
    nop
    nop
    ld [c], a
    db $fc
    nop
    ld b, b
    call c, Call_000_2ffc
    nop

jr_05d_4d63:
    db $ed
    db $fc
    cpl
    nop
    add b
    db $db
    dec c
    dec e
    nop
    ld [$1407], a
    jr nz, jr_05d_4d63

    ld b, $05
    nop
    db $db
    db $f4
    inc hl
    ld b, b
    add sp, -$08
    ld bc, $e000
    ld hl, sp+$01
    ld b, b
    ldh [rP1], a
    ld bc, $e860
    nop
    ld bc, $ed20
    push af
    inc h
    ld b, b
    db $db
    dec b

jr_05d_4d8e:
    inc e
    nop
    xor $ed
    dec e
    ld h, b
    add b
    add sp, $08
    ld b, $20
    add sp, $00
    ld [bc], a
    ld h, b
    ldh [rP1], a
    inc bc
    nop
    add sp, -$08
    inc l
    nop
    add sp, -$10
    daa
    nop
    call c, $2708
    ld h, b
    ld hl, sp-$04
    ld l, $00
    ldh a, [$fd]
    dec l
    nop
    ldh [$f8], a
    inc l
    ld b, b
    ldh [$f0], a
    dec bc
    jr nz, jr_05d_4d8e

    db $fc
    ld l, $60
    ret c

    ei
    dec l
    ld h, b
    add b
    ldh [$fb], a
    rla
    ld h, b
    ldh [$03], a
    inc d
    ld h, b
    ret c

    inc bc
    db $10
    ld h, b
    add sp, -$03
    rla
    nop
    add sp, -$0b
    inc d
    nop
    ldh a, [$f5]
    stop
    add b
    db $e4

jr_05d_4de0:
    ld hl, sp+$1e
    nop
    db $ec
    ld hl, sp+$1f
    nop
    db $e4
    ldh a, [rNR32]
    nop
    db $ec

jr_05d_4dec:
    ldh a, [rNR33]
    nop
    db $e4
    add sp, $1f
    ld b, b
    db $ec
    and $24
    jr nz, @-$0d

    ld [c], a
    dec c
    jr nz, jr_05d_4de0

    nop
    ld e, $60
    call c, Call_000_1f00
    ld h, b
    db $e4
    ld [$601c], sp
    call c, Call_000_1d08
    ld h, b
    db $e4
    db $10
    rra
    jr nz, jr_05d_4dec

    ld [de], a
    inc h
    ld b, b
    rst $10
    ld d, $0d
    ld b, b
    add b
    ld [c], a
    ld hl, sp+$18
    ld h, b
    jp c, Jump_000_19f8

    ld h, b
    pop hl
    ldh a, [rNR30]
    ld h, b
    reti


    ldh a, [rNR31]
    ld h, b
    and $00
    jr jr_05d_4e2c

jr_05d_4e2c:
    xor $00
    add hl, de
    nop
    rst $20
    ld [$001a], sp
    rst $28
    ld [$001b], sp
    add sp, $10
    inc e
    nop
    ldh a, [rNR10]
    dec e
    nop
    jp hl


    jr jr_05d_4e61

    nop
    pop af
    jr @+$18

    ld b, b
    jp hl


    jr nz, @+$22

    nop
    add sp, $28
    add hl, bc
    nop
    pop af
    jr nz, jr_05d_4e74

    nop
    ld hl, sp+$28
    inc e
    nop
    ld hl, sp+$30
    dec d
    nop
    ldh a, [$2a]
    ld [$df00], sp

jr_05d_4e61:
    ldh [rNR34], a
    ld h, b
    rst $10
    ldh [rNR34], a
    nop
    rst $18
    ret c

    jr nz, jr_05d_4ecc

    ldh [$d0], a
    add hl, bc
    ld h, b
    ldh [$e8], a
    inc e
    ld h, b

jr_05d_4e74:
    ret c

    add sp, $1d
    ld h, b
    ret c

    adc $08
    ld h, b
    rst $10
    ret c

    ld hl, $d060
    ret nc

    inc e
    ld h, b
    ret nc

    ret z

    dec d
    ld h, b
    ld hl, sp+$20
    ld e, $60
    ret nc

    ret c

    ld e, $00
    add b
    ret c

    ld [bc], a
    ld [$d820], sp
    ld a, [$2009]
    ldh [$fc], a
    inc d
    nop
    ldh [rDIV], a
    dec d
    nop
    add sp, -$03
    inc c
    nop
    add sp, $05
    dec c
    nop
    add sp, -$06
    dec c
    jr nz, @-$0e

jr_05d_4eae:
    ld [de], a
    ld c, $20
    ldh a, [$0a]
    rrca
    jr nz, jr_05d_4eae

    ld a, [bc]
    add hl, bc
    nop
    ld hl, sp+$1a
    dec bc
    ld b, b
    ld hl, sp+$12
    rrca
    jr nz, @-$06

    ld [bc], a
    jr nz, jr_05d_4ec5

jr_05d_4ec5:
    ldh a, [$f4]
    ld de, $d060
    ld [bc], a
    dec bc

jr_05d_4ecc:
    ld b, b
    ret c

    di
    ld d, $40
    ret nc

    rst $20
    inc e
    ld h, b
    ret nc

    rst $30
    ld [$d020], sp
    rst $28
    add hl, bc
    jr nz, jr_05d_4eae

    rst $18
    ld a, [hl+]
    jr nz, @-$26

    rst $18
    dec b
    nop
    ldh a, [rNR30]
    inc c
    ld h, b
    add b
    ldh a, [$03]
    ld [$f060], sp
    ei
    add hl, bc
    ld h, b
    add sp, -$03
    inc d
    ld b, b
    add sp, $05
    dec d
    ld b, b
    ldh [$fe], a
    inc c
    ld b, b
    ldh [rTMA], a
    dec c
    ld b, b
    ldh [$fb], a
    dec c
    ld h, b
    ret c

    inc de
    ld c, $60
    ret c

    dec bc
    rrca
    ld h, b
    ret c

    ld a, [de]
    inc c
    ld h, b
    ret nc

    dec bc
    add hl, bc
    ld b, b
    ret nc

    dec de
    dec bc
    nop
    ret nc

    inc de

jr_05d_4f1c:
    rrca
    ld h, b
    ret nc

    inc bc

jr_05d_4f20:
    jr nz, jr_05d_4f62

    ret c

    push af

jr_05d_4f24:
    ld de, $f820
    inc bc

jr_05d_4f28:
    dec bc
    nop
    ldh a, [$f4]

jr_05d_4f2c:
    ld d, $00
    ld hl, sp-$18

jr_05d_4f30:
    inc e
    jr nz, @-$06

    ld hl, sp+$08
    ld h, b
    ld hl, sp-$10

jr_05d_4f38:
    add hl, bc
    ld h, b
    ld hl, sp-$20
    ld a, [hl+]
    ld h, b
    ldh a, [$e0]
    dec b
    ld b, b
    add b
    ret nc

    jr nc, jr_05d_4f5e

    jr nz, jr_05d_4f20

    jr nc, jr_05d_4f63

    jr nz, jr_05d_4f1c

    jr z, jr_05d_4f68

    jr nz, jr_05d_4f28

    jr z, @+$1d

    jr nz, jr_05d_4f24

    jr nz, @+$1e

    jr nz, jr_05d_4f30

    jr nz, jr_05d_4f77

    jr nz, jr_05d_4f2c

    jr jr_05d_4f7c

jr_05d_4f5e:
    jr nz, jr_05d_4f38

    jr jr_05d_4f80

jr_05d_4f62:
    ld b, b

jr_05d_4f63:
    ret c

    db $10
    jr nz, jr_05d_4fc7

    reti


jr_05d_4f68:
    ld [$6009], sp
    pop de
    ld b, $08
    ld h, b
    ret nc

    db $10
    ld hl, $e160
    rlca
    dec d
    ld b, b

jr_05d_4f77:
    db $e4
    rst $38
    ld de, $e460

jr_05d_4f7c:
    ld sp, hl
    ld de, $e700

jr_05d_4f80:
    pop af
    dec d
    jr nz, @-$07

    ld a, [c]
    ld [$ef00], sp
    ldh a, [$09]
    nop
    ld hl, sp-$38
    jr @+$42

    ldh a, [$c8]
    add hl, de
    ld b, b
    ld hl, sp-$30
    ld a, [de]
    ld b, b
    ldh a, [$d0]
    dec de
    ld b, b
    ld hl, sp-$28
    inc e
    ld b, b
    ldh a, [$d8]
    dec e
    ld b, b
    ld hl, sp-$20
    ld e, $40
    ldh a, [$e0]
    ld e, $20
    ldh a, [$e8]
    jr nz, jr_05d_4faf

jr_05d_4faf:
    ld hl, sp-$18
    ld hl, $df00
    inc de
    ld [$e000], sp
    dec de
    inc h
    ld h, b
    add sp, $1b
    dec b
    nop
    jp hl


    push hl
    ld [$e860], sp
    db $dd
    inc h
    nop

jr_05d_4fc7:
    ldh [$dd], a
    dec b
    ld h, b
    jp hl


    rlca
    ld [$f860], sp
    dec bc
    ld h, $20
    pop af
    add hl, bc
    dec c
    ld h, b
    rst $18
    pop af
    ld [$d000], sp
    db $ed
    ld h, $40
    rst $10
    rst $28
    dec c
    nop
    add b
    ld [c], a
    nop
    jr jr_05d_5028

    jp c, Jump_000_1900

    ld b, b
    ld [c], a
    ld [$401a], sp
    jp c, $1b08

    ld b, b
    ld [c], a
    db $10
    inc e
    ld b, b
    jp c, $1d10

    ld b, b
    ld [c], a
    jr jr_05d_501d

    ld b, b
    jp c, Jump_000_1f18

    ld b, b
    jp c, $2020

    nop
    ld [c], a
    jr nz, @+$23

    nop
    add sp, $40
    add hl, bc
    ld b, b
    rst $18
    jr nc, @+$20

    nop
    rst $20
    jr nc, jr_05d_5035

    ld h, b
    rst $20
    jr c, jr_05d_503b

    ld b, b
    rst $18

jr_05d_501d:
    jr c, jr_05d_5040

    ld b, b
    sbc $28
    jr jr_05d_5024

jr_05d_5024:
    and $28
    add hl, de
    nop

jr_05d_5028:
    ldh [rLCDC], a
    ld [$f060], sp

jr_05d_502d:
    ld b, b
    dec d
    ld h, b
    ldh a, [rOBP0]
    inc e
    jr nz, jr_05d_502d

jr_05d_5035:
    ld c, b
    add hl, bc
    nop
    ld hl, sp+$40
    ld a, [hl+]

jr_05d_503b:
    ld b, b
    ret c

    jr z, @+$0b

    nop

jr_05d_5040:
    ret nc

    inc l
    rrca
    ld h, b
    ret nc

    inc [hl]
    ld [$ea20], sp
    ld e, $0c
    ld h, b
    ld [$0d16], a
    ld h, b

jr_05d_5050:
    ld a, [c]
    ld e, $0e
    ld h, b
    ld a, [c]
    ld d, $0f
    ld h, b

jr_05d_5058:
    ld hl, sp+$1a
    db $10
    ld h, b

jr_05d_505c:
    ld hl, sp+$12
    ld de, $8060
    and $f8
    jr jr_05d_5085

    xor $f8
    add hl, de
    jr nz, jr_05d_5050

    ldh a, [rNR30]

jr_05d_506c:
    jr nz, jr_05d_505c

    ldh a, [rNR31]

jr_05d_5070:
    jr nz, jr_05d_5058

    add sp, $1c
    jr nz, @-$10

    add sp, $1d
    jr nz, @-$18

    ldh [rNR34], a
    jr nz, jr_05d_506c

    ldh [$1f], a
    jr nz, jr_05d_5070

    ret c

    jr nz, @+$62

jr_05d_5085:
    and $d8
    ld hl, $e060
    cp b
    add hl, bc
    jr nz, @-$15

    ret z

    ld e, $60
    pop hl
    ret z

    ld e, $00
    pop hl
    ret nz

    jr nz, @+$22

    jp hl


    ret nz

    ld hl, $ea20
    ret nc

    jr @+$62

    ld [c], a
    ret nc

    add hl, de
    ld h, b
    add sp, -$48
    ld [$d800], sp

jr_05d_50aa:
    cp b
    dec d
    nop
    ret c

    or b
    inc e
    ld b, b
    ret nc

    or b
    add hl, bc
    ld h, b
    ret nc

    cp b
    ld a, [hl+]
    jr nz, jr_05d_50aa

    ret nc

    add hl, bc
    ld h, b
    ld hl, sp-$34
    rrca
    nop
    ld hl, sp-$3c
    ld [$de40], sp
    db $da, $0c, $00

    sbc $e2
    dec c
    nop
    sub $da
    ld c, $00
    sub $e2
    rrca
    nop
    ret nc

    sbc $10
    nop
    ret nc

    and $11
    nop
    add b
    db $e4

jr_05d_50df:
    nop
    add hl, bc
    jr nz, @-$11

    db $10
    ld e, $60
    push hl
    db $10
    ld e, $00
    push hl
    ld [$2020], sp
    db $ed
    ld [$2021], sp
    xor $18
    jr jr_05d_5156

    db $ec
    nop
    ld [$dc00], sp
    nop
    dec d
    nop
    ld hl, sp+$40
    jr jr_05d_5162

    ldh a, [rLCDC]
    add hl, de
    ld h, b
    ld hl, sp+$38
    ld a, [de]
    ld h, b
    ldh a, [$38]
    dec de
    ld h, b
    ld hl, sp+$30
    inc e
    ld h, b
    ldh a, [$30]
    dec e
    ld h, b
    ld hl, sp+$28
    ld e, $60
    ldh a, [$28]
    rra
    ld h, b
    ldh a, [rNR41]
    jr nz, jr_05d_5142

    ld hl, sp+$20
    ld hl, $e820
    ld hl, sp+$28
    ld h, b
    add sp, -$10
    add hl, hl
    ld h, b
    and $18
    jr z, jr_05d_5192

    sbc $25
    ld a, [de]
    ld h, b
    sbc $1d
    inc h
    ld b, b
    call c, Call_000_1c2d
    ld h, b
    call nc, Call_000_1d2d
    ld h, b

jr_05d_5142:
    call c, Call_000_2235
    ld b, b
    call nc, $2435
    ld b, b
    ret nc

    dec a
    ld e, $40
    ld hl, sp+$48
    db $10
    ld h, b
    ldh a, [$f7]
    ld h, $60

jr_05d_5156:
    ld hl, sp-$0c
    ld h, $00
    db $db
    dec a
    daa
    jr nz, jr_05d_50df

    db $f4
    rr l

jr_05d_5162:
    nop
    db $f4
    jp Jump_000_2024


    ld hl, sp-$45
    ld e, $20
    db $e4
    ld hl, sp+$09
    ld b, b
    db $db
    add sp, $1e
    nop
    db $e3
    add sp, $1e
    ld h, b
    db $e3
    ldh a, [rNR41]
    ld b, b
    db $db
    ldh a, [rNR42]
    ld b, b
    jp c, $18e0

    nop
    call c, Call_000_08f8
    ld h, b
    db $ec
    ld hl, sp+$15
    ld h, b
    ret nc

    cp b
    jr jr_05d_518f

jr_05d_518f:
    ret c

    cp b
    add hl, de

jr_05d_5192:
    nop
    ret nc

    ret nz

    ld a, [de]
    nop
    ret c

    ret nz

    dec de
    nop
    ret nc

    ret z

    inc e
    nop
    ret c

    ret z

    dec e
    nop
    ret nc

    ret nc

    ld e, $00
    ret c

    ret nc

    rra
    nop
    ret c

    ret c

    jr nz, jr_05d_51ef

    ret nc

    ret c

    ld hl, $e040

jr_05d_51b4:
    nop
    jr z, jr_05d_51b7

jr_05d_51b7:
    ldh [$08], a
    add hl, hl
    nop
    ld [c], a
    ldh [$28], a
    nop
    ld [$1ad3], a
    nop
    ld [$24db], a
    jr nz, jr_05d_51b4

    rr h
    nop
    db $ec
    jp $2022


    ret nc

    or b
    stop
    ret c

    ld bc, $0026
    ret nc

    inc b
    ld h, $60
    db $ed
    cp e
    daa
    ld b, b
    add b
    add sp, $00
    ld e, $60
    ldh [rP1], a
    rra
    ld h, b
    ld [$1c08], a
    jr nz, @-$1e

    ld hl, sp+$1e

jr_05d_51ef:
    nop
    add sp, -$08
    rra
    nop
    sbc $f0
    inc e
    ld b, b
    db $dd
    add sp, $1f
    nop
    push de
    and $24
    ld h, b
    ret nc

    ld [c], a
    dec c
    ld h, b
    db $eb
    db $10
    rra
    ld h, b
    di
    ld [de], a
    inc h
    nop
    ld hl, sp+$16
    dec c
    nop
    sub $f0
    dec b
    ld h, b
    ld a, [c]
    ld [$0005], sp
    add b
    ldh [$fc], a
    inc d
    nop
    ldh [rDIV], a
    dec d
    nop
    add sp, -$03
    inc c
    nop
    add sp, $05
    dec c
    nop
    add sp, -$06
    dec c
    jr nz, @-$0e

    ld [de], a
    ld c, $20
    ldh a, [$0a]
    rrca
    jr nz, @-$0e

    add hl, de
    inc c
    ld h, b
    ld hl, sp+$0a
    add hl, bc
    nop
    ld hl, sp+$1a
    dec bc
    ld b, b
    ld hl, sp+$12
    rrca
    jr nz, @-$06

    ld [bc], a
    jr nz, jr_05d_5249

jr_05d_5249:
    ret c

    ld hl, sp+$08
    nop
    ret c

jr_05d_524e:
    nop
    add hl, bc
    nop
    ret c

    rlca
    ld d, $60
    ret nc

    inc de
    inc e
    ld b, b
    ret nc

    inc bc
    ld [$d000], sp
    dec bc
    add hl, bc
    nop
    ret nc

    dec de
    ld a, [hl+]
    nop
    ret c

    dec de
    dec b
    jr nz, @-$26

    add sp, $0e
    ld b, b
    ret c

    ldh a, [rIF]
    ld b, b
    ret c

    pop hl
    inc c
    nop
    ret nc

    ldh a, [$09]
    ld h, b
    ret nc

    ldh [$0b], a
    jr nz, jr_05d_524e

    add sp, $0f
    ld b, b
    ret nc

jr_05d_5282:
    ld hl, sp+$20
    ld h, b
    ld hl, sp-$1a
    inc e
    jr nz, jr_05d_5282

    push af
    ld [$f860], sp
    xor $09
    ld h, b
    ld hl, sp-$22
    ld a, [hl+]
    ld h, b
    ldh a, [$de]
    dec b
    ld b, b
    rst $28
    rst $30
    add hl, bc
    nop
    pop af
    rst $28
    ld hl, $8060
    ld [c], a
    ld d, d
    db $eb
    ld d, d
    nop
    ld d, e
    dec h
    ld d, e
    ld e, d
    ld d, e
    sbc e
    ld d, e
    db $e4
    ld d, e
    dec h
    ld d, h
    ld e, d
    ld d, h
    ld a, a
    ld d, h
    sub h
    ld d, h
    sbc h
    ld d, h
    sbc h
    ld d, h
    sbc h
    ld d, h
    sbc h
    ld d, h
    sbc h
    ld d, h
    sbc h
    ld d, h
    sbc h
    ld d, h
    sbc h
    ld d, h
    sbc h
    ld d, h
    sbc h
    ld d, h
    sbc h
    ld d, h
    sbc h
    ld d, h
    sbc h
    ld d, h
    sbc h
    ld d, h
    sbc h
    ld d, h
    sbc h
    ld d, h
    sbc h
    ld d, h
    sbc h
    ld d, h
    sbc h
    ld d, h
    sbc h
    ld d, h
    sbc h
    ld d, h
    ret nc

    stop
    nop
    ret c

    db $10
    ld bc, $8000
    ret c

    ld [$0001], sp
    ret nc

    ld [$0000], sp
    jp nc, Jump_000_0210

    nop
    jp c, $0310

    nop
    ld [c], a
    db $10
    inc b
    nop
    add b
    ret nc

    nop
    nop
    nop
    ret c

    nop
    ld bc, $d200
    ld [$0002], sp
    jp c, Jump_000_0308

    nop
    ld [c], a
    ld [$0004], sp
    call nc, $0510
    nop
    call c, $0610
    nop
    db $e4
    db $10
    rlca
    nop
    db $ec
    db $10
    ld [$8000], sp
    ret nc

    ld hl, sp+$00
    nop
    ret c

    ld hl, sp+$01
    nop
    jp nc, $0200

    nop
    jp c, Jump_000_0300

    nop
    ld [c], a
    nop
    inc b
    nop
    call nc, $0508
    nop
    call c, Call_000_0608
    nop
    db $e4
    ld [$0007], sp
    db $ec
    ld [$0008], sp
    sub $10
    add hl, bc
    nop
    sbc $10
    ld a, [bc]
    nop
    and $10
    dec bc
    nop
    xor $10
    inc c
    nop
    add b
    ret nc

    ldh a, [rP1]
    nop
    ret c

    ldh a, [rSB]
    nop
    jp nc, $02f8

    nop
    jp c, Jump_000_03f8

    nop
    ld [c], a
    ld hl, sp+$04
    nop
    call nc, Call_000_0500
    nop
    call c, Call_000_0600
    nop
    db $e4
    nop
    rlca
    nop
    db $ec
    nop
    ld [$d600], sp
    ld [$0009], sp
    sbc $08
    ld a, [bc]
    nop
    and $08
    dec bc
    nop
    xor $08
    inc c
    nop
    ldh [rNR10], a
    dec c
    nop
    add sp, $10
    ld c, $00
    ldh a, [rNR10]
    rrca
    nop
    add b
    ret nc

    add sp, $00
    nop
    ret c

    add sp, $01
    nop
    jp nc, Jump_000_02f0

    nop
    jp c, $03f0

    nop
    ld [c], a
    ldh a, [rDIV]
    nop
    call nc, $05f8
    nop
    call c, Call_000_06f8
    nop
    db $e4
    ld hl, sp+$07
    nop
    db $ec
    ld hl, sp+$08
    nop
    sub $00
    add hl, bc
    nop
    sbc $00
    ld a, [bc]
    nop
    and $00
    dec bc
    nop
    xor $00
    inc c
    nop
    ldh [$08], a
    dec c
    nop
    add sp, $08
    ld c, $00
    ldh a, [$08]
    rrca
    nop
    ld [$1010], a
    nop
    ld a, [c]
    db $10
    ld de, $8000
    ld [$1008], a
    nop
    ld a, [c]
    ld [$0011], sp
    ldh [rP1], a
    dec c
    nop
    add sp, $00
    ld c, $00
    ldh a, [rP1]
    rrca
    nop
    jp nc, Jump_000_02e8

    nop
    jp c, $03e8

    nop
    ld [c], a
    add sp, $04
    nop
    call nc, $05f0
    nop
    call c, $06f0
    nop
    db $e4
    ldh a, [rTAC]
    nop
    db $ec
    ldh a, [$08]
    nop
    sub $f8
    add hl, bc
    nop
    sbc $f8
    ld a, [bc]
    nop
    and $f8
    dec bc
    nop
    xor $f8
    inc c
    nop
    add b
    call nc, $05e8
    nop
    call c, $06e8
    nop
    db $e4
    add sp, $07
    nop
    db $ec
    add sp, $08
    nop
    sub $f0
    add hl, bc
    nop
    sbc $f0
    ld a, [bc]
    nop
    and $f0
    dec bc
    nop
    xor $f0
    inc c
    nop
    ldh [$f8], a
    dec c
    nop
    add sp, -$08
    ld c, $00
    ldh a, [$f8]
    rrca
    nop
    ld [$1000], a
    nop
    ld a, [c]
    nop
    ld de, $8000
    sub $e8
    add hl, bc
    nop
    sbc $e8
    ld a, [bc]
    nop
    and $e8
    dec bc
    nop
    xor $e8
    inc c
    nop
    ldh [$f0], a
    dec c
    nop
    add sp, -$10
    ld c, $00
    ldh a, [$f0]
    rrca
    nop
    ld [$10f8], a
    nop
    ld a, [c]
    ld hl, sp+$11
    nop
    add b
    ldh [$e8], a
    dec c
    nop
    add sp, -$18
    ld c, $00
    ldh a, [$e8]
    rrca
    nop
    ld [$10f0], a
    nop
    ld a, [c]
    ldh a, [rNR11]
    nop
    add b
    ld [$10e8], a
    nop
    ld a, [c]
    add sp, $11
    nop
    add b
    db $dd
    ld d, h
    ld c, $55
    ld c, a
    ld d, l
    add b
    ld d, l
    pop bc
    ld d, l
    ld [c], a
    ld d, l
    inc bc
    ld d, [hl]
    inc d
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    inc h
    ld d, [hl]
    add sp, -$10
    nop
    nop
    add sp, -$08
    ld bc, $e800
    nop
    nop
    nop
    add sp, $08
    ld bc, $f000
    ldh a, [rSC]
    nop
    ldh a, [$f8]
    inc bc
    nop
    ldh a, [rP1]
    ld [bc], a
    nop
    ldh a, [$08]
    inc bc
    nop
    ld hl, sp-$10
    inc b
    nop
    ld hl, sp-$08
    dec b
    nop
    ld hl, sp+$00
    inc b
    nop
    ld hl, sp+$08
    dec b
    nop
    add b
    ldh [$f0], a
    ld b, $00
    ldh [$f8], a
    rlca
    nop
    ldh [rP1], a
    ld b, $00
    ldh [$08], a
    rlca
    nop
    add sp, -$10
    ld [$e800], sp
    ld hl, sp+$09
    nop
    add sp, $00
    ld [$e800], sp
    ld [$0009], sp
    ldh a, [$f0]
    ld a, [bc]
    nop
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rP1]
    ld a, [bc]
    nop
    ldh a, [$08]
    dec bc
    nop
    ld hl, sp+$00
    inc c
    nop
    ld hl, sp+$08
    dec c
    nop
    ld hl, sp-$10
    inc c
    nop
    ld hl, sp-$08
    dec c
    nop
    add b
    ret c

    ldh a, [rP1]
    nop
    ret c

    ld hl, sp+$01
    nop
    ret c

    nop
    nop
    nop
    ret c

    ld [$0001], sp
    ldh [rP1], a
    ld [bc], a
    nop
    ldh [$08], a
    inc bc
    nop
    ldh [$f0], a
    ld [bc], a
    nop
    ldh [$f8], a
    inc bc
    nop
    add sp, $00
    inc b
    nop
    add sp, $08
    dec b
    nop
    add sp, -$10
    inc b
    nop
    add sp, -$08
    dec b
    nop
    add b
    ret nc

    nop
    ld b, $00
    ret nc

    ld [$0007], sp
    ret nc

    ldh a, [rTMA]
    nop
    ret nc

    ld hl, sp+$07
    nop
    ret c

    nop
    ld [$d800], sp
    ld [$0009], sp
    ret c

    ldh a, [$08]
    nop
    ret c

    ld hl, sp+$09
    nop
    ldh [rP1], a
    ld a, [bc]
    nop
    ldh [$08], a
    dec bc
    nop
    ldh [$f0], a
    ld a, [bc]
    nop
    ldh [$f8], a
    dec bc
    nop
    add sp, $00
    inc c
    nop
    add sp, $08
    dec c
    nop
    add sp, -$10
    inc c
    nop
    add sp, -$08
    dec c
    nop
    add b
    ret nc

    ldh a, [rSC]
    nop
    ret nc

    ld hl, sp+$03
    nop
    ret nc

    nop
    ld [bc], a
    nop
    ret nc

    ld [$0003], sp
    ret c

    nop
    inc b
    nop
    ret c

    ld [$0005], sp
    ret c

    ldh a, [rDIV]
    nop
    ret c

    ld hl, sp+$05
    nop
    add b
    ret nc

    ldh a, [$0a]
    nop
    ret nc

    ld hl, sp+$0b
    nop
    ret nc

    nop
    ld a, [bc]
    nop
    ret nc

    ld [$000b], sp
    ret c

    ldh a, [$0c]
    nop
    ret c

    ld hl, sp+$0d
    nop
    ret c

    nop
    inc c
    nop
    ret c

    ld [$000d], sp
    add b
    ret nc

    ldh a, [rDIV]
    nop
    ret nc

    ld hl, sp+$05
    nop
    ret nc

    nop
    inc b
    nop
    ret nc

    ld [$0005], sp
    add b
    ret nc

    ldh a, [$0c]
    nop
    ret nc

    ld hl, sp+$0d
    nop
    ret nc

    nop
    inc c
    nop
    ret nc

    ld [$000d], sp
    add b
    ld h, l
    ld d, [hl]
    ld l, d
    ld d, [hl]
    ld a, a
    ld d, [hl]
    and h
    ld d, [hl]
    pop de
    ld d, [hl]
    or $56
    dec bc
    ld d, a
    inc d
    ld d, a
    ld sp, $4a57
    ld d, a
    ld d, a
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    push hl
    push af
    nop
    nop
    add b
    ldh [$f0], a
    nop
    nop
    add sp, -$10
    ld [bc], a
    nop
    add sp, -$08
    inc bc
    nop
    ldh [$f8], a
    dec b
    nop
    db $dd
    dec b
    nop
    nop
    add b
    ret c

    nop
    nop
    nop
    ldh [rP1], a
    ld [bc], a
    nop
    ldh [$08], a
    inc bc
    nop
    ret c

    ld [$0001], sp
    db $ed
    dec b
    nop
    nop
    ldh [$f0], a
    ld bc, $e400
    ld hl, sp+$04
    nop
    add sp, -$08
    ld bc, $e700
    ld a, [c]
    inc b
    nop
    add b
    ret c

    nop
    ld bc, $dc00
    ld [$0004], sp
    ldh [$08], a
    ld bc, $df00
    ld [bc], a
    inc b
    nop
    and $f2
    dec b
    nop
    ldh [$f8], a
    dec b
    nop
    db $e4
    db $f4
    inc b
    nop
    add sp, $00
    nop
    nop
    ldh a, [rP1]
    ld [bc], a
    nop
    ldh a, [$08]
    inc bc
    nop
    add sp, $08
    ld bc, $8000
    ldh [$f0], a
    ld bc, $d800
    ld [$0001], sp
    sbc $02
    ld bc, $dc00
    inc b
    inc b
    nop
    add sp, $00
    ld bc, $f000
    ld [$0001], sp
    rst $28
    ld [bc], a
    inc b
    nop
    db $ec
    ld [$0004], sp
    and $f7
    ld bc, $8040
    ret c

    nop
    ld bc, $e800
    ld [$0001], sp
    xor $02
    ld bc, $ec00
    inc b
    inc b
    nop
    sbc $07
    dec b
    ld b, b
    add b
    add sp, $00
    ld bc, $ee00
    rlca
    ld bc, $8040
    and $f2
    ld bc, $e000
    ld hl, sp+$01
    nop
    db $e4
    db $f4
    inc b
    nop
    add sp, $00
    nop
    nop
    add sp, $08
    ld bc, $f000
    nop
    ld [bc], a
    nop
    ldh a, [$08]
    inc bc
    nop
    add b
    ldh [$f0], a
    ld bc, $e800
    nop
    ld bc, $f000
    ld [$0001], sp
    and $f7
    ld bc, $ec40
    ld [$0004], sp
    rst $28
    ld [bc], a
    inc b
    nop
    add b
    xor $02
    ld bc, $e800
    ld [$0001], sp
    db $ec
    inc b
    inc b
    nop
    add b
    add sp, $00
    ld bc, $ee00
    rlca
    ld bc, $8040
    and b
    ld d, a
    xor c
    ld d, a
    cp d
    ld d, a
    db $d3
    ld d, a
    ldh a, [$57]
    ld de, $3258
    ld e, b
    ld c, e
    ld e, b
    ld e, b
    ld e, b
    ld h, l
    ld e, b
    ld l, c
    ld e, b
    ld l, c
    ld e, b
    ld l, c
    ld e, b
    ld l, c
    ld e, b
    ld l, c
    ld e, b
    ld l, c
    ld e, b
    ld l, c
    ld e, b
    ld l, c
    ld e, b
    ld l, c
    ld e, b
    ld l, c
    ld e, b
    ld l, c
    ld e, b
    ld l, c
    ld e, b
    ld l, c
    ld e, b
    ld l, c
    ld e, b
    ld l, c
    ld e, b
    ld l, c
    ld e, b
    ld l, c
    ld e, b
    ld l, c
    ld e, b
    ld l, c
    ld e, b
    ld l, c
    ld e, b
    ld l, c
    ld e, b
    ld l, c
    ld e, b
    ld [$0102], a
    nop
    ldh [$f8], a
    ld [bc], a
    nop
    add b
    ldh [$0b], a
    ld bc, $eb00
    xor $01
    nop
    ld [$0202], a
    nop
    ldh [$f8], a
    inc bc
    nop
    add b
    ldh a, [rNR10]
    ld bc, $db00
    rst $28
    ld bc, $e000
    dec bc
    ld [bc], a
    nop
    db $eb
    db $ec
    ld [bc], a
    nop
    ld [$0302], a
    nop
    ldh [$f8], a
    inc b
    nop
    add b
    jp c, Jump_000_01fe

    nop
    db $dd
    ld hl, sp+$00
    nop
    db $db
    rst $28
    ld [bc], a
    nop
    ldh a, [rNR10]
    ld [bc], a
    nop
    ldh [$0b], a
    inc bc
    nop
    db $eb
    db $ec
    inc bc
    nop
    ld [$0402], a
    nop
    add b
    sub $fa
    nop
    nop
    rst $20
    ld bc, $0000
    ld [c], a
    add sp, $01
    nop
    db $eb
    rst $38
    ld bc, $e000
    dec bc
    inc b
    nop
    db $eb
    db $ec
    inc b
    nop
    ldh a, [rNR10]
    inc bc
    nop
    db $db
    rst $28
    inc bc
    nop
    add b
    ld [c], a
    nop
    nop
    nop
    db $dd
    inc c
    nop
    nop
    add sp, -$16
    nop
    nop
    ld [c], a
    inc de
    ld bc, $ef00
    rst $20
    ld bc, $e200
    and $02
    nop
    ldh a, [rNR10]
    inc b
    nop
    db $db
    rst $28
    inc b
    nop
    add b
    reti


    xor $00
    nop
    push hl
    rst $20
    nop
    nop
    db $ec
    rrca
    nop
    nop
    db $ed
    inc c
    ld bc, $d800
    jp hl


    ld bc, $e200
    rst $20
    inc bc
    nop
    add b
    db $d4, $ec, $00
    nop
    jp hl


    inc de
    ld bc, $e100
    add sp, $04
    nop
    add b
    ret c

    rst $28
    nop
    nop
    sbc $e8
    ld bc, $e000
    rst $30
    ld bc, $8000
    ret c

    ld [$0001], a
    add b
    xor d
    ld e, b
    xor a
    ld e, b
    or h
    ld e, b
    cp c
    ld e, b
    cp [hl]
    ld e, b
    jp $d458


    ld e, b
    db $fd
    ld e, b
    ld d, $59
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    ld c, d
    ld e, c
    add sp, -$04
    nop
    nop
    add b
    rst $20
    db $fd
    nop
    nop
    add b
    db $e4
    ld a, [$0000]
    add b
    pop hl
    rst $38
    ld bc, $8000
    db $dd
    or $01
    nop
    add b
    ret c

    ld hl, sp+$02
    nop
    ret c

    nop
    inc bc
    nop

jr_05d_58cb:
    ldh [$f8], a
    inc b
    nop
    ldh [rP1], a
    dec b
    nop
    add b
    reti


    or $06
    nop
    reti


    ld [bc], a

jr_05d_58da:
    ld b, $20
    pop hl
    or $07
    nop
    pop hl
    cp $08
    nop
    sub $f8
    ld [bc], a
    nop
    sub $00
    inc bc
    nop
    sbc $f8
    inc b
    nop
    sbc $00

jr_05d_58f2:
    dec b
    nop
    pop hl
    ld [bc], a
    rlca
    jr nz, jr_05d_58da

    ld a, [$2008]
    add b
    ret c

    db $f4
    ld b, $00
    ret c

    inc b
    ld b, $20
    ldh [$f4], a
    rlca
    nop
    ldh [$fc], a
    ld [$e000], sp
    inc b
    rlca
    jr nz, jr_05d_58f2

    db $fc
    ld [$8020], sp
    db $d2, $fc, $00

    nop
    ret c

    add sp, $06
    nop
    ret c

    ld a, [c]
    ld b, $00
    ldh [$e8], a
    rlca
    nop
    ldh [$f0], a
    ld [$e000], sp
    ld a, [c]
    rlca
    nop
    ldh [$fa], a
    ld [$e000], sp
    db $10
    rlca
    jr nz, @-$1e

    ld [$2008], sp
    ret c

    db $10
    ld b, $20
    ldh [$fe], a
    ld [$d820], sp
    ld b, $06
    jr nz, @-$1e

    ld b, $07
    jr nz, jr_05d_58cb

    adc e
    ld e, c
    inc d
    ld e, d
    sbc c
    ld e, d
    ld c, $5b
    ld a, a
    ld e, e
    add sp, $5b
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h

jr_05d_5974:
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ldh a, [$e8]
    ld a, [bc]
    ld h, b
    ret c

    ldh a, [$0a]
    nop
    ret c

    ld hl, sp+$10
    ld b, b
    ret c

    add sp, $05
    jr nz, jr_05d_5974

    ldh [$0a], a
    ld h, b
    ret c

    nop
    ld de, $d840
    ret c

    ld c, $00
    ldh a, [$f0]
    ld bc, $e800
    add sp, $17
    ld h, b
    add sp, -$10
    ld d, $00
    ldh [rP1], a
    ld d, $00
    ldh [$08], a
    ld d, $60
    ldh [rNR10], a
    inc c
    ld b, b
    ldh [rNR23], a
    rrca
    nop
    ld hl, sp+$00
    rla
    nop
    ld hl, sp-$08
    inc c
    jr nz, @-$0e

    ldh [rNR11], a
    jr nz, @-$06

    ldh a, [rNR10]
    ld b, b
    ld hl, sp-$18
    rrca
    ld h, b
    ldh [$f0], a
    nop
    nop
    ldh [$f8], a
    nop
    nop
    ret nc

    ldh a, [rNR10]
    ld b, b
    ret nc

    add sp, $0f
    ld h, b
    ret nc

    ld hl, sp+$11
    ld b, b
    ldh a, [$08]
    dec b
    ld b, b
    ldh a, [rNR10]
    ld b, $40
    ldh a, [rNR23]
    rlca
    ld b, b
    add sp, $00
    inc c
    ld b, b
    ldh a, [rP1]
    ld d, $60
    add sp, $08
    rrca
    nop
    ldh a, [$f8]
    nop
    nop
    add sp, -$08
    nop
    nop
    ldh [$e0], a
    ld a, [bc]
    ld h, b
    ldh [$e8], a
    nop
    nop
    add b
    ld hl, sp+$00
    rla
    nop
    ld hl, sp-$10
    add hl, de
    jr nz, @-$06

    ld hl, sp+$16
    nop
    ldh a, [$f0]
    ld a, [bc]
    ld h, b
    ldh a, [$f8]
    ld bc, $f000
    add sp, $0e
    nop
    ldh a, [$08]
    ld d, $60
    ldh a, [rP1]
    nop
    nop
    ldh a, [rNR10]
    inc c
    ld b, b
    ldh a, [rNR23]
    dec c
    ld b, b
    add sp, $08
    rlca
    ld b, b
    add sp, -$18
    add hl, de
    jr nz, @-$16

    ldh a, [$15]
    jr nz, @-$16

    nop
    rla
    nop
    add sp, -$08
    nop
    nop
    ret c

    ld [$4011], sp
    ldh [$08], a
    ld d, $60
    ret c

    nop
    ld a, [bc]
    nop
    ldh [rP1], a
    nop
    nop
    ret c

    ld hl, sp+$16
    nop
    ldh [$f8], a
    add hl, bc
    jr nz, @-$26

    ldh a, [rNR23]
    ld h, b
    ldh [rNR10], a
    rla
    nop
    ret c

    db $e4
    inc bc
    nop
    ret c

    call c, $2007
    ldh [$e8], a
    rrca
    nop
    ret nc

    ldh a, [$0a]
    nop
    ret nc

    nop
    rlca
    ld b, b
    ret nc

    ld hl, sp+$18
    nop
    ret nc

    add sp, $17
    ld h, b
    ldh [rNR23], a
    inc bc
    nop
    ldh a, [$d8]
    ld de, $f020
    ldh [$0e], a
    nop
    add b
    add sp, -$18
    ld a, [bc]
    ld h, b
    add sp, $00
    dec b
    ld b, b
    add sp, $08
    ld b, $40
    add sp, $10
    rlca
    ld b, b
    ret nc

    nop
    ld de, $e840
    ldh a, [rSB]
    nop
    add sp, -$08
    ld d, $60
    ldh [$e8], a
    rla
    ld h, b
    ldh a, [rP1]
    rla
    nop
    ldh a, [$f8]
    inc c
    jr nz, @-$06

    ld hl, sp+$00
    nop
    ld hl, sp+$00
    ld bc, $f800
    ldh a, [rNR13]
    jr nz, @-$0e

    ldh a, [rIF]
    ld h, b
    ld hl, sp+$08
    inc d
    nop
    ret c

    nop
    ld d, $60
    ret c

    ld [$400c], sp
    ret c

jr_05d_5ade:
    db $10
    rrca
    nop
    ret nc

    ld hl, sp+$0a
    nop
    ret nc

    add sp, $0a
    ld h, b
    ret nc

    ldh [$0e], a
    nop
    ret c

    ld hl, sp+$00
    nop
    ret c

    add sp, $07
    jr nz, jr_05d_5ade

    ret c

    ld de, $e820
    ldh [$0e], a
    nop
    ret c

    ldh a, [rNR22]
    ld h, b
    ldh [$f0], a
    nop
    nop
    ldh [$f8], a
    ld [$d000], sp
    ldh a, [rNR21]
    nop
    add b
    add sp, -$08
    ld d, $60
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$10
    rla
    ld h, b
    ldh a, [$f8]
    add hl, de
    jr nz, @-$0e

    ldh a, [$03]
    ld h, b
    rst $30
    jp hl


    ld c, $00
    add sp, -$10
    jr @+$62

    ldh [$f8], a
    ld a, [bc]
    nop
    ldh [$f0], a
    ld b, $20
    ldh [$e8], a
    rlca
    jr nz, @-$1e

    nop
    inc bc
    ld b, b
    ret c

    nop
    ld bc, $d800
    ldh a, [$03]
    ld h, b
    ret c

    ld hl, sp+$02
    ld h, b
    ret nc

    nop
    ld b, $40
    ret nc

jr_05d_5b4b:
    ld [$4007], sp
    ret c

    ld [$0017], sp
    ret nc

    ld hl, sp+$19
    jr nz, @-$2e

    ldh a, [$03]
    ld h, b
    ret nc

jr_05d_5b5b:
    db $ec
    rlca
    nop
    ret nc

    db $e4
    inc bc
    jr nz, jr_05d_5b4b

jr_05d_5b63:
    nop
    inc d
    nop
    ldh a, [rP1]
    dec d
    ld b, b
    ld hl, sp+$00
    ld b, $40
    add sp, -$18
    rlca
    jr nz, jr_05d_5b5b

    ldh [rTAC], a
    nop
    add sp, -$28
    inc bc
    jr nz, jr_05d_5b63

    ld [$6007], sp
    add b
    ldh a, [$08]
    ld a, [bc]
    ld b, b
    ldh a, [rP1]
    ld bc, $f020
    db $10
    ld de, $e000
    nop
    ld a, [bc]
    ld b, b
    ldh [$08], a
    stop
    add sp, $00
    rla
    ld b, b
    ret nc

jr_05d_5b98:
    nop
    db $10
    ld h, b
    ret nc

jr_05d_5b9c:
    ld [$0019], sp
    ldh a, [$f8]
    ld b, $60
    ldh a, [$f0]
    rlca
    ld h, b
    ldh [$f8], a
    ld d, $20
    ld hl, sp-$08
    rla
    jr nz, @-$06

    nop
    inc c
    nop
    ld hl, sp+$08
    ld de, $f840
    add sp, $10
    ld b, b
    ret c

jr_05d_5bbc:
    ld hl, sp+$19
    jr nz, jr_05d_5b98

    nop
    dec d
    jr nz, jr_05d_5b9c

    ld [$0000], sp
    ret c

    db $10
    ld [de], a
    nop
    ldh [$f0], a
    inc c
    ld h, b
    ldh [$e8], a
    rrca
    jr nz, jr_05d_5bbc

    ld hl, sp+$19
    ld h, b
    ld hl, sp-$20
    inc bc
    ld h, b
    ld hl, sp-$10
    rlca
    ld b, b
    ldh a, [$e0]
    rlca
    ld h, b
    ldh a, [$e8]
    inc bc
    ld b, b
    add b
    ldh [$f8], a
    ld d, $00
    ld hl, sp+$00
    ld [$f800], sp
    ldh a, [$0e]
    ld h, b
    ld hl, sp-$08
    ld [bc], a
    ld h, b
    ld hl, sp-$18
    inc bc
    ld h, b
    ldh a, [$08]
    rla
    ld b, b
    ldh a, [rP1]
    ld d, $40
    add sp, -$08
    ld [bc], a
    nop
    add sp, $00
    inc bc
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f0]
    ld b, $20
    ldh a, [$e8]
    rlca
    jr nz, @-$16

    ldh a, [$09]
    jr nz, @-$1e

jr_05d_5c1d:
    nop
    dec b
    ld b, b
    ldh [rNR10], a
    inc bc
    nop
    ldh [$08], a
    ld [bc], a
    nop
    ldh [$e8], a
    db $10
    jr nz, @-$1e

    ldh a, [rTMA]
    jr nz, @-$1e

    ldh [rTAC], a
    jr nz, @-$26

    ld hl, sp+$00
    nop
    ret c

    nop
    rla
    nop
    ret c

    ld [$0003], sp
    ret c

    add sp, $06
    jr nz, jr_05d_5c1d

    ldh [rTAC], a
    jr nz, @-$26

    ldh a, [rNR21]
    nop
    ret nc

    ld [$4007], sp
    ret nc

    ld hl, sp+$10
    ld h, b
    ret nc

    nop
    db $10
    ld h, b
    ret nc

    ldh a, [$03]
    ld h, b
    add b
    sbc l
    ld e, h
    xor [hl]
    ld e, h
    db $d3
    ld e, h
    inc b
    ld e, l
    ld l, l
    ld e, l
    ld a, [c]
    ld e, l
    ld d, a
    ld e, [hl]
    cp b
    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    ret z

    ld e, [hl]
    add sp, -$08
    nop
    nop
    add sp, $00
    ld bc, $f000
    ld hl, sp+$02
    nop
    ldh a, [rP1]
    inc bc
    nop
    add b
    ld [c], a
    di
    nop
    nop
    ld [c], a
    ei
    inc b
    nop
    ld [c], a
    inc bc
    ld bc, $ea00
    di
    ld b, $00
    ld [$07fb], a
    nop
    ld [$1403], a
    nop
    ld a, [c]
    di
    ld a, [bc]
    nop
    ld a, [c]
    ei
    dec bc
    nop
    ld a, [c]
    inc bc
    inc c
    nop
    add b
    ld [c], a
    ldh a, [$0d]
    nop
    ld [c], a
    ld hl, sp+$0e
    nop
    ld [c], a
    nop
    rrca
    nop
    ld [c], a
    ld [$0010], sp
    ld [$11f0], a
    nop
    ld [$12f8], a
    nop
    ld [$1300], a
    nop
    ld [$1408], a
    nop
    ld a, [c]
    ldh a, [$15]
    nop
    ld a, [c]
    ld hl, sp+$16
    nop
    ld a, [c]
    nop
    rla
    nop
    ld a, [c]
    ld [$0018], sp
    add b
    call nc, Call_000_0dec
    nop
    call nc, Call_000_0ef4
    nop
    call nc, Call_000_0ffc
    nop
    call nc, Call_000_0e04
    nop
    call nc, $100c
    nop
    db $dc, $ec, $11
    nop
    call c, Call_000_12f4
    nop
    call c, $13fc
    nop
    call c, $1204
    nop
    call c, $1a0c
    nop
    db $e4
    db $ec
    dec de
    nop
    db $e4
    db $f4
    inc e
    nop
    db $e4
    db $fc
    dec e
    nop
    db $e4
    inc b
    dec e
    nop
    db $e4
    inc c
    ld e, $00
    ld [c], a
    inc d
    add hl, bc
    nop
    db $ec
    db $ec
    rra
    nop
    db $ec
    db $f4
    jr nz, jr_05d_5d4c

jr_05d_5d4c:
    db $ec
    db $fc
    inc de
    nop
    db $ec
    inc b
    ld [de], a
    nop
    db $ec
    inc c
    ld hl, $f400
    db $ec
    dec d
    nop
    db $f4
    db $f4
    ld d, $00
    db $f4
    db $fc
    rla
    nop
    db $f4
    inc b
    ld [hl+], a
    nop
    db $f4
    inc c
    inc hl
    nop
    add b
    ret nc

    add sp, $0d
    nop
    ret nc

    ldh a, [$0e]
    nop
    ret nc

    ld hl, sp+$01
    nop
    ret nc

    db $10
    ld bc, $e800
    db $10
    ld bc, $d000
    nop
    nop
    nop
    add sp, $08
    nop
    nop
    ldh a, [$08]
    ld [bc], a
    nop
    ldh a, [rNR10]
    inc bc
    nop
    ret c

    ld hl, sp+$23
    nop
    ret nc

    ld [$0004], sp
    ret c

    nop
    ld b, $00
    ret c

    ld [$0007], sp
    ret c

    ldh a, [rTAC]
    nop
    ret c

    add sp, $11
    nop
    ldh a, [$e8]
    ld de, $f000
    ldh a, [rNR12]
    nop
    ldh a, [$f8]
    inc de
    nop
    ldh a, [rP1]
    inc d
    nop
    ld hl, sp-$18
    dec d
    nop
    ld hl, sp-$10
    ld d, $00
    ld hl, sp-$08
    rla
    nop
    ld hl, sp+$00
    jr jr_05d_5dc9

jr_05d_5dc9:
    add sp, -$18
    dec c
    nop
    add sp, -$10
    ld c, $00
    add sp, -$08
    rrca
    nop
    add sp, $00
    stop
    ret c

    db $10
    inc d
    nop
    ldh [rP1], a
    ld a, [bc]
    nop
    ldh [$08], a
    dec bc
    nop
    ldh [rNR10], a
    inc c
    nop
    ldh [$e8], a
    dec d
    nop
    ldh [$f0], a
    jr jr_05d_5df1

jr_05d_5df1:
    add b
    ret nc

    add sp, $00
    nop
    ret nc

    ldh a, [rSB]
    nop
    ldh a, [$08]
    nop
    nop
    ldh a, [rNR10]
    ld bc, $ea00
    add sp, $00
    nop
    ld [$01f8], a
    nop
    ld hl, sp+$08
    ld [bc], a
    nop
    ld hl, sp+$10
    inc bc
    nop
    ret c

    ldh a, [$03]
    nop
    ld [$04f0], a
    nop
    ret nc

    ld [$0004], sp
    ret nc

    db $10
    ld bc, $d800
    nop
    ld a, [bc]
    nop
    ld a, [$0ae8]
    nop
    ret c

    ld [$000b], sp
    ret c

    db $10
    inc c
    nop
    ld a, [$0bf0]
    nop
    ld a, [$0cf8]
    nop
    ret c

    add sp, $11
    nop
    ldh [$e8], a
    ld a, [bc]
    nop
    ldh [$f0], a
    ld a, [bc]
    jr nz, @-$2e

    nop
    ld a, [bc]

jr_05d_5e49:
    ld b, b
    ld a, [c]
    add sp, $06
    nop
    ld a, [c]
    ldh a, [rTAC]
    nop
    ld a, [c]
    ld hl, sp+$14
    nop
    add b
    add sp, -$08
    nop
    nop
    add sp, $00
    ld bc, $cc00
    rlca
    nop
    nop
    call z, $010f
    nop
    call $00e7
    nop
    call $01ef
    nop
    ldh a, [$e8]
    nop
    nop

jr_05d_5e73:
    ldh a, [$f0]

jr_05d_5e75:
    nop
    jr nz, jr_05d_5e73

    ld de, $6000
    ldh [rNR10], a
    nop
    jr nz, @-$2a

    rlca
    ld [bc], a
    nop
    call nc, Call_000_030f
    nop

jr_05d_5e87:
    ldh a, [$f8]
    ld [bc], a
    nop
    ldh a, [rP1]
    inc bc
    nop
    ld hl, sp-$18
    inc bc
    jr nz, jr_05d_5e87

    ld de, $0001
    rst $20
    rrca
    inc c
    nop
    push de
    rst $20
    inc c
    jr nz, jr_05d_5e75

    rst $28
    nop
    ld h, b
    ei
    add hl, bc
    ld a, [bc]
    nop
    add sp, $08
    ld a, [bc]
    nop
    db $f4
    add hl, bc
    ld a, [bc]
    ld b, b
    ldh [$08], a
    ld a, [bc]
    ld b, b
    ld hl, sp-$10
    ld de, $8020
    db $eb
    ei
    nop
    nop
    db $eb
    inc bc
    ld bc, $f300
    inc bc
    nop
    ld h, b
    di
    ei
    inc c
    jr nz, jr_05d_5e49

    add hl, bc
    ld e, a
    sbc d
    ld e, a
    sbc d
    ld e, a
    sbc d
    ld e, a
    sbc d
    ld e, a
    sbc d
    ld e, a
    sbc d
    ld e, a
    dec hl
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    ret nc

    add sp, $00
    nop
    ret nc

    ldh a, [rSB]
    nop
    ret nc

    ld hl, sp+$02
    nop
    ret nc

    nop
    inc bc
    nop
    ret nc

    ld [$0004], sp
    ret nc

    db $10
    dec b
    nop
    ret c

    add sp, $06
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

    ld [$000a], sp
    ret c

    db $10
    dec bc
    nop
    ldh [$e8], a
    ld bc, $e000
    ldh a, [rSC]
    nop
    ldh [$f8], a
    inc bc
    nop
    ldh [rP1], a
    inc c
    nop
    ldh [$08], a
    dec b
    nop
    ldh [rNR10], a
    nop
    nop
    add sp, $10
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp+$10
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ldh a, [$08]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    add sp, -$18
    rlca
    nop
    add sp, -$10
    ld [$e800], sp
    ld hl, sp+$0d
    nop
    add sp, $00
    nop
    nop
    add sp, $08
    dec bc
    nop
    ldh a, [$e8]
    ld [bc], a
    nop
    ldh a, [$f0]
    ld c, $00
    ldh a, [$f8]
    rrca
    nop
    ldh a, [rP1]
    stop
    ld hl, sp-$10
    ld de, $f800
    add sp, $0b
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ret nc

    add sp, $50
    nop
    ret nc

    ldh a, [rHDMA1]
    nop
    ret nc

    ld hl, sp+$52
    nop
    ret nc

    nop
    ld d, e
    nop
    ret nc

    ld [$0054], sp
    ret nc

    db $10
    ld d, l
    nop
    ret c

    add sp, $60
    nop
    ret c

    ldh a, [$61]
    nop
    ret c

    ld hl, sp+$62
    nop
    ret c

    nop
    ld h, e
    nop
    ret c

    ld [$0064], sp
    ret c

    db $10
    ld h, l
    nop
    ldh [$e8], a
    ld [hl], b
    nop
    ldh [$f0], a
    ld [hl], c
    nop
    ldh [$f8], a
    ld [hl], d
    nop
    ldh [rP1], a
    ld [hl], e
    nop
    ldh [$08], a
    ld [hl], h
    nop
    ldh [rNR10], a
    ld [hl], l
    nop
    add sp, -$18
    add b
    nop
    add sp, -$10
    add c
    nop
    add sp, -$08
    add d
    nop
    add sp, $00
    add e
    nop
    add sp, $08
    add h
    nop
    add sp, $10
    add l
    nop
    ldh a, [$e8]
    sub b
    nop
    ldh a, [$f0]
    sub c
    nop
    ldh a, [$f8]
    sub d
    nop
    ldh a, [rP1]
    sub e
    nop
    ldh a, [$08]
    sub h
    nop
    ldh a, [rNR10]
    sub l
    nop
    ld hl, sp-$18
    and b
    nop
    ld hl, sp-$10
    and c
    nop
    ld hl, sp-$08
    and d
    nop
    ld hl, sp+$00
    and e
    nop
    ld hl, sp+$08
    and h
    nop
    ld hl, sp+$10
    and l
    nop
    add b
    ret c

    add sp, $50
    nop
    ret c

    ldh a, [rHDMA1]
    nop
    ret c

    ld hl, sp+$52
    nop
    ret c

    nop
    ld d, e
    nop
    ret c

    ld [$0054], sp
    ret c

    db $10
    ld d, l
    nop
    ldh [$e8], a
    ld h, b
    nop
    ldh [$f0], a
    ld h, c
    nop
    ldh [$f8], a
    ld h, d
    nop
    ldh [rP1], a
    ld h, e
    nop
    ldh [$08], a
    ld h, h
    nop
    ldh [rNR10], a
    ld h, l
    nop
    add sp, -$18
    ld [hl], b
    nop
    add sp, -$10
    ld [hl], c
    nop
    add sp, -$08
    ld [hl], d
    nop
    add sp, $00
    ld [hl], e
    nop
    add sp, $08
    ld [hl], h
    nop
    add sp, $10
    ld [hl], l
    nop
    ldh a, [$e8]
    add b
    nop
    ldh a, [$f0]
    add c
    nop
    ldh a, [$f8]
    add d
    nop
    ldh a, [rP1]
    add e
    nop
    ldh a, [$08]
    add h
    nop
    ldh a, [rNR10]
    add l
    nop
    ld hl, sp-$18
    sub b
    nop
    ld hl, sp-$10
    sub c
    nop
    ld hl, sp-$08
    sub d
    nop
    ld hl, sp+$00
    sub e
    nop
    ld hl, sp+$08
    sub h
    nop
    ld hl, sp+$10
    sub l
    nop
    ret nc

    add sp, -$78
    nop
    ret nc

    ldh a, [$88]
    nop
    ret nc

    ld hl, sp-$78
    nop
    ret nc

    nop
    adc b
    nop
    ret nc

    ld [$0088], sp
    ret nc

    db $10
    adc b
    nop
    add b
    db $fc
    ld h, b
    dec b
    ld h, c
    ld e, $61
    cpl
    ld h, c
    ld [hl], h
    ld h, c
    ret


    ld h, c
    ld a, [de]
    ld h, d
    adc a
    ld h, d
    inc e
    ld h, e
    sub c
    ld h, e
    ld d, $64
    and e
    ld h, h
    inc h
    ld h, l
    and l
    ld h, l
    ld [bc], a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    inc b
    ld h, a
    ld [hl], l
    ld h, a
    ld a, [$3a67]
    ld l, b
    ld a, [hl-]
    ld l, b
    ld a, [hl-]
    ld l, b
    ld a, [hl-]
    ld l, b
    ld a, [hl-]
    ld l, b
    ld a, [hl-]
    ld l, b
    ld a, [hl-]
    ld l, b
    ld a, [hl-]
    ld l, b
    ld a, [hl-]
    ld l, b
    ld a, [hl-]
    ld l, b
    ld a, [hl-]
    ld l, b
    ld a, [hl-]
    ld l, b
    ld a, [hl-]
    ld l, b
    ret nc

    ld bc, $002e
    ret c

    ld bc, $602e
    add b
    ldh [$fc], a
    ld l, $00
    add sp, -$04
    ld l, $60
    ldh a, [$f7]
    ld l, $00
    ld hl, sp-$09
    ld l, $60
    ret nc

    ld bc, $002e
    ret c

    ld bc, $602e
    add b
    ldh a, [$f7]
    ld l, $00
    ld hl, sp-$09
    ld l, $60
    add sp, -$04
    cpl
    ld h, b
    ldh [$fc], a
    cpl
    nop
    add b
    ret nc

    ret c

    nop
    nop
    call nc, Call_000_02ec
    nop
    ret nc

    ld hl, sp+$04
    nop
    ldh [$d8], a
    ld [bc], a
    nop
    ret nc

    ld [$0000], sp
    call nc, Call_000_021c
    ld h, b
    ret nc

    jr z, jr_05d_614e

    ld b, b
    ret nc

    cp b
    nop

jr_05d_614e:
    nop
    ret nc

    jr c, @+$04

    nop
    call c, $01f4
    nop
    ldh [$32], a
    nop
    nop
    call nc, Call_000_02c9
    ld h, b
    ret c

    rlca
    ld [bc], a
    nop
    ldh [rTMA], a
    nop
    nop
    call c, $01c8
    nop
    ret c

    daa
    nop
    nop
    ret nc

    inc d
    inc bc
    nop
    add b
    ldh [$d8], a
    ld [bc], a
    nop
    db $e4
    jp hl


    ld [bc], a
    nop
    db $ec
    pop af
    ld bc, $f000
    inc b
    ld [bc], a
    nop
    ldh [rTMA], a
    ld bc, $e800

jr_05d_6189:
    dec b
    ld bc, $e400
    rst $00
    ld [bc], a
    ld h, b
    db $ec
    add $01
    nop
    ldh [$b6], a
    nop
    nop
    ret c

    rst $10
    nop
    nop
    ldh [$36], a
    ld [bc], a
    nop
    ldh a, [$30]
    nop
    jr nz, @-$1e

    ld [de], a
    inc bc
    ld b, b
    ldh [rNR52], a
    inc bc
    nop
    add sp, $25
    ld [bc], a
    nop
    db $e4
    ld a, [de]
    ld bc, $e060
    push af
    inc b
    jr nz, jr_05d_6189

    add sp, $0c
    nop
    ret c

    inc h
    ld de, $d000
    jr z, @+$12

    nop
    ret nc

    jr nz, jr_05d_61d6

    nop
    add b
    add sp, $1c
    ld [bc], a
    ld h, b
    db $e4
    dec bc
    ld [bc], a
    ld h, b
    call c, $0103
    ld h, b
    ret c

jr_05d_61d6:
    ldh a, [rSC]
    ld h, b
    add sp, -$12
    ld bc, $e060
    rst $28
    ld bc, $e460

jr_05d_61e2:
    dec l
    ld [bc], a
    nop
    call c, $012e
    ld h, b
    ldh a, [rNR33]
    nop
    ld h, b
    add sp, -$42
    ld [bc], a
    ld h, b
    ret c

    call nz, Call_05d_4000
    add sp, -$1e
    inc bc
    jr nz, jr_05d_61e2

    adc $03
    ld h, b
    ldh [$cf], a
    ld [bc], a
    ld h, b
    db $e4
    db $da, $01, $00

    add sp, -$01
    inc b
    ld b, b
    ret nc

    ret nc

    add hl, bc
    nop
    ret nc

    ret c

    ld a, [bc]
    nop
    ret nc

    nop
    ld a, [de]
    nop
    ret nc

    ld [$001b], sp
    add b
    ldh a, [$d6]
    ld [bc], a
    nop
    db $f4
    rst $20
    ld [bc], a
    nop
    ld hl, sp+$03
    ld bc, $e800
    push de
    nop
    jr nz, @-$0e

jr_05d_622b:
    inc [hl]
    ld [bc], a
    nop
    ld hl, sp+$23
    ld [bc], a
    nop
    db $f4
    jr jr_05d_6236

    ld h, b

jr_05d_6236:
    ldh a, [$f3]
    inc b
    jr nz, jr_05d_622b

    inc h
    inc b
    nop
    ldh a, [rNR10]
    inc bc
    nop
    ldh a, [rDIV]
    ld [bc], a
    nop
    ldh a, [$b4]
    ld [bc], a
    nop
    db $f4
    push bc
    ld bc, $e800
    inc e
    ld de, $e000
    jr nz, jr_05d_6265

    nop
    ldh [rNR23], a
    rrca
    nop
    ret c

    jr jr_05d_626a

    nop
    ret c

    jr nz, jr_05d_626f

    nop
    ldh [$e0], a
    inc c

jr_05d_6265:
    nop
    ret c

    ldh [$0b], a
    nop

jr_05d_626a:
    ret c

    call nz, $0011
    ret nc

jr_05d_626f:
    ret z

    stop
    ret nc

    ret nz

    rrca
    nop
    ret nc

    ld c, b
    inc c
    nop
    ret nc

    ret c

    inc bc
    nop
    ret c

    ldh a, [rSB]
    ld h, b
    ret c

    ld b, b
    ld [bc], a
    nop
    ldh [$30], a
    inc b
    nop
    ret nc

    db $10
    ld [bc], a
    nop
    add b
    ldh a, [rNR31]
    ld [bc], a
    ld h, b
    db $ec
    ld a, [bc]
    ld [bc], a
    ld h, b
    add sp, -$12
    ld bc, $f860
    inc e
    nop
    ld b, b
    ldh a, [$bd]
    ld [bc], a
    ld h, b
    db $ec
    reti


    ld bc, $f000
    cp $04
    ld b, b
    ldh a, [$cd]
    inc b
    ld h, b
    ldh a, [$e1]
    inc bc
    ld h, b
    ldh a, [$ed]
    ld [bc], a
    ld h, b
    db $ec
    inc l
    ld bc, $e060
    ld hl, sp+$1a
    nop
    ldh [rP1], a
    dec de
    nop
    ret c

    ld hl, sp+$17
    nop
    ret c

    nop
    jr jr_05d_62cb

jr_05d_62cb:
    ret c

    ld [$0019], sp
    ret nc

    ld hl, sp+$14
    nop
    ret nc

    nop
    dec d
    nop
    ret nc

    ld [$0016], sp
    add sp, -$38
    add hl, bc
    nop
    add sp, -$30
    ld a, [bc]
    nop
    ldh [$c8], a
    rlca
    ld b, b
    ldh [$d0], a
    ld [$d040], sp
    jr nc, jr_05d_6311

    nop
    ret nc

    jr c, jr_05d_6316

    nop
    ret c

    jr nc, jr_05d_631b

    nop
    ret c

    ldh [rTAC], a
    nop
    ret c

    add sp, $08
    nop
    ret nc

    ldh [rTIMA], a
    nop
    ret nc

    add sp, $06
    nop
    ret c

    jr jr_05d_630a

jr_05d_630a:
    ld b, b
    ret nc

    jr z, jr_05d_630f

    ld h, b

jr_05d_630f:
    ret nc

    ret c

jr_05d_6311:
    ld [bc], a
    ld h, b
    ret c

    ret nz

    ld [bc], a

jr_05d_6316:
    ld h, b
    ldh [$b0], a
    inc b
    ld b, b

jr_05d_631b:
    add b
    ld hl, sp+$14
    ld de, $f000
    jr jr_05d_6333

    nop
    ldh a, [rNR10]
    rrca
    nop
    add sp, $10
    dec c
    nop
    add sp, $18
    ld c, $00
    ldh a, [$d8]
    inc c

jr_05d_6333:
    nop
    add sp, -$28
    dec bc
    nop
    add sp, -$44
    ld de, $e000
    ret nz

    stop
    ldh [$b8], a
    rrca
    nop
    ret c

    cp b
    dec c
    nop
    ret c

    ret nz

    ld c, $00
    add sp, $3c
    inc c
    nop
    ldh [$3c], a
    dec bc
    nop
    ret nc

    db $10
    dec hl
    nop
    ret nc

    jr jr_05d_6387

    nop
    ret nc

    jr nz, @+$2f

    nop
    ret c

    ret nc

    ld a, [de]
    nop
    ret c

    ret c

    dec de
    nop
    ret nc

    ret nc

    rla
    nop
    ret nc

    ret c

    jr jr_05d_6370

jr_05d_6370:
    ret nc

    ldh [rNR24], a
    nop
    ldh [$e0], a
    ld bc, $e000
    db $10
    inc bc
    nop
    add sp, -$10
    inc b
    nop
    ret nc

    inc a
    ld [bc], a
    nop
    ldh a, [$b0]
    nop

jr_05d_6387:
    nop
    ldh a, [$28]
    ld bc, $d000
    nop
    ld [bc], a
    nop
    add b
    ldh a, [$f0]
    ld a, [de]
    nop
    ldh a, [$f8]
    dec de
    nop
    add sp, -$10
    rla
    nop
    add sp, -$08
    jr jr_05d_63a1

jr_05d_63a1:
    add sp, $00
    add hl, de
    nop
    ldh [$f0], a
    inc d
    nop
    ldh [$f8], a
    dec d
    nop
    ldh [rP1], a
    ld d, $00
    ret c

    db $f4
    ld [de], a
    nop
    ret c

    db $fc
    inc de
    nop
    ld hl, sp-$44
    rlca
    ld b, b
    ld hl, sp-$3c
    ld [$f040], sp
    inc h
    dec h
    nop
    add sp, $24
    inc hl
    nop
    add sp, $2c
    inc h
    nop
    ldh [$28], a
    ld hl, $e000
    jr nc, jr_05d_63f6

    nop
    ret c

    jr nc, jr_05d_63f8

    nop
    ret c

    jr z, jr_05d_63fb

    nop
    ret nc

    ld a, [hl+]
    dec e
    nop
    ret nc

    ld [hl-], a
    ld e, $00
    add sp, -$28
    rlca
    nop
    add sp, -$20
    ld [$e000], sp
    ret c

    dec b
    nop
    ldh [$e0], a
    ld b, $00
    ret nc

jr_05d_63f6:
    ret nz

    inc bc

jr_05d_63f8:
    nop
    add sp, -$38

jr_05d_63fb:
    ld bc, $e000
    inc e
    inc bc
    nop
    ret c

    ld c, b
    ld [bc], a
    nop
    ld hl, sp+$48
    ld bc, $f800
    ld [$0000], sp
    ld hl, sp-$20
    inc bc
    nop
    ret nc

    ld [$0002], sp
    add b
    ld hl, sp+$08
    dec c
    nop
    ld hl, sp+$10
    ld c, $00
    ld hl, sp-$2c
    inc c
    nop
    ldh a, [$d4]
    dec bc
    nop
    ld hl, sp-$4c
    ld de, $f000
    cp b
    stop
    ldh a, [$b0]
    rrca
    nop
    add sp, -$50
    dec c
    nop
    add sp, -$48
    ld c, $00
    ld hl, sp+$30
    dec bc
    nop
    ldh [$08], a
    dec hl
    nop
    ldh [rNR10], a
    inc l
    nop
    ldh [rNR23], a
    dec l
    nop
    ret c

    ld [$0028], sp
    ret c

    db $10
    add hl, hl
    nop
    ret c

    jr jr_05d_647f

    nop
    ret nc

    db $10
    ld h, $00
    ret nc

    jr @+$29

    nop
    add sp, -$38
    ld a, [de]
    nop
    add sp, -$30
    dec de
    nop
    ldh [$c8], a
    rla
    nop
    ldh [$d0], a
    jr jr_05d_646e

jr_05d_646e:
    ldh [$d8], a
    add hl, de
    nop
    ret c

    ret z

    inc d
    nop
    ret c

    ret nc

    dec d
    nop
    ret c

    ret c

    ld d, $00
    ret nc

jr_05d_647f:
    call z, $0012
    ret nc

    db $d4, $13, $00
    ldh a, [$08]
    inc bc
    nop
    ld hl, sp-$10
    inc b
    nop
    add sp, -$24
    ld bc, $e800
    jr nc, @+$04

    nop
    ldh [$f8], a
    inc bc
    nop
    ret c

    or b
    ld bc, $e000
    ld b, b
    nop
    nop
    add b
    ld hl, sp-$1c
    ld [de], a
    nop
    ld hl, sp-$14
    inc de
    nop
    ld hl, sp+$18
    ld hl, $f800
    jr nz, @+$24

    nop
    ldh a, [rNR41]
    jr nz, jr_05d_64b7

jr_05d_64b7:
    ldh a, [rNR23]
    rra
    nop
    add sp, $1a
    dec e
    nop
    add sp, $22
    ld e, $00
    ldh [rNR43], a
    inc e
    nop
    ld hl, sp-$30
    rlca
    nop
    ld hl, sp-$28
    ld [$f000], sp
    ret nc

    dec b
    nop
    ldh a, [$d8]
    ld b, $00
    ret c

    ldh [$2b], a
    nop
    ret c

    add sp, $2c
    nop
    ret c

    ldh a, [$2d]
    nop
    ret nc

    ldh [$28], a
    nop
    ret nc

    add sp, $29
    nop
    ret nc

    ldh a, [$2a]
    nop
    ret nc

    ld b, b
    add hl, bc
    nop
    ret nc

    ld c, b
    ld a, [bc]
    nop
    ld hl, sp-$40
    ld bc, $f800
    inc c
    inc bc
    nop
    ldh a, [$38]
    ld [bc], a
    nop
    ret nc

    jr nc, jr_05d_6509

    nop
    ret c

    cp b

jr_05d_6509:
    inc bc
    nop
    ret c

    ld [$0004], sp
    ldh [$d8], a
    nop
    nop
    add sp, -$50
    ld bc, $f000
    ld c, b
    ld bc, $e800
    ldh a, [rP1]
    nop
    ldh [rLCDC], a
    ld [bc], a
    nop
    add b
    ld hl, sp-$50
    ld c, $00
    ld hl, sp-$40
    ld a, [de]
    nop
    ld hl, sp-$38
    dec de
    nop
    ldh a, [$c0]
    rla
    nop
    ldh a, [$c8]
    jr jr_05d_6538

jr_05d_6538:
    ldh a, [$d0]
    add hl, de
    nop
    add sp, -$40
    inc d
    nop
    add sp, -$38
    dec d
    nop
    add sp, -$30
    ld d, $00
    ldh [$c4], a
    ld [de], a
    nop
    ldh [$cc], a
    inc de
    nop
    ldh a, [rP1]
    dec hl
    nop
    ldh a, [$08]
    inc l
    nop
    ldh a, [rNR10]
    dec l
    nop
    add sp, $00
    jr z, jr_05d_6560

jr_05d_6560:
    add sp, $08
    add hl, hl
    nop
    add sp, $10
    ld a, [hl+]
    nop
    ldh [$08], a
    ld h, $00
    ldh [rNR10], a
    daa
    nop
    ret nc

    add sp, $0c
    nop
    ret c

    inc h
    ld de, $d000
    jr z, jr_05d_658b

    nop
    ret nc

    jr nz, jr_05d_658e

    nop
    ldh a, [$f0]
    inc bc
    nop
    ld hl, sp+$28
    ld [bc], a
    nop
    ldh a, [$38]
    nop

jr_05d_658b:
    nop
    ldh [$b8], a

jr_05d_658e:
    inc b
    nop
    ret nc

    cp b
    nop
    nop
    ret c

    ret nc

    ld [bc], a
    nop
    add sp, -$20
    inc bc
    nop
    ret nc

    ld [$0001], sp
    ldh [$30], a
    nop
    nop
    add b
    ld hl, sp+$06
    inc e
    nop
    add sp, -$28
    dec hl
    nop
    add sp, -$20
    inc l
    nop
    add sp, -$18
    dec l
    nop
    ldh [$d8], a
    jr z, jr_05d_65b9

jr_05d_65b9:
    ldh [$e0], a
    add hl, hl
    nop
    ldh [$e8], a
    ld a, [hl+]
    nop
    ret c

    ldh [rNR52], a
    nop
    ret c

    add sp, $27
    nop
    ldh [$38], a
    add hl, bc
    nop
    ldh [rLCDC], a
    ld a, [bc]
    nop
    ret c

    jr c, jr_05d_65d9

    nop
    ret c

    ld b, b
    ld b, $00

jr_05d_65d9:
    add sp, -$50
    inc bc
    nop
    ldh [$28], a
    inc bc
    nop
    ret nc

    db $10
    ld [bc], a
    nop
    ldh a, [$c8]
    ld bc, $d000
    ld hl, sp+$00
    nop
    ret nc

    ret nc

    nop
    nop
    ld hl, sp+$20
    inc bc
    nop
    ldh a, [$e8]
    inc b
    nop
    add sp, $10
    ld [bc], a
    nop
    ldh a, [rLCDC]
    ld bc, $8000
    add sp, $1c
    ld de, $e000
    jr nz, jr_05d_6619

    nop
    ldh [rNR23], a
    rrca
    nop
    ret c

    jr jr_05d_661e

    nop
    ret c

    jr nz, jr_05d_6623

    nop
    ldh [$e0], a
    inc c

jr_05d_6619:
    nop
    ret c

    ldh [$0b], a
    nop

jr_05d_661e:
    ret nc

    ld c, b
    inc c
    nop
    ret c

jr_05d_6623:
    call nz, $0011
    ret nc

    ret z

    stop
    ret nc

    ret nz

    rrca
    nop
    ld hl, sp-$08
    jr z, jr_05d_6632

jr_05d_6632:
    ld hl, sp+$00
    add hl, hl
    nop
    ld hl, sp+$08
    ld a, [hl+]
    nop
    ldh a, [rP1]
    ld h, $00
    ldh a, [$08]
    daa
    nop
    ld hl, sp-$48
    inc d
    nop
    ld hl, sp-$40
    dec d
    nop
    ld hl, sp-$38
    ld d, $00
    ldh a, [$bc]
    ld [de], a
    nop
    ldh a, [$c4]
    inc de
    nop
    ldh [$08], a
    ld [bc], a
    nop
    ldh [$f0], a
    nop
    nop
    ldh a, [rNR50]
    inc bc
    nop
    ld hl, sp-$50
    inc bc
    nop
    add sp, $48
    ld [bc], a
    nop
    ld hl, sp+$38
    ld bc, $d000
    nop
    nop
    nop
    add sp, -$30
    ld [bc], a
    nop
    add b
    ldh [$f8], a
    ld a, [de]
    nop
    ldh [rP1], a
    dec de
    nop
    ret c

    ld hl, sp+$17
    nop
    ret c

    nop
    jr jr_05d_6687

jr_05d_6687:
    ret c

    ld [$0019], sp
    ret nc

    ld hl, sp+$14
    nop
    ret nc

    nop
    dec d
    nop
    ret nc

    ld [$0016], sp
    ret nc

    jr nc, jr_05d_66bd

    nop
    ret nc

    jr c, @+$26

    nop
    ret c

    jr nc, jr_05d_66c7

    nop
    ret c

    ldh [rTAC], a
    nop
    ret c

    add sp, $08
    nop
    ret nc

    ldh [rTIMA], a
    nop
    ret nc

    add sp, $06
    nop
    ld hl, sp-$30
    dec hl
    nop
    ld hl, sp-$28
    inc l
    nop
    ld hl, sp-$20

jr_05d_66bd:
    dec l
    nop
    ldh a, [$d0]
    jr z, jr_05d_66c3

jr_05d_66c3:
    ldh a, [$d8]
    add hl, hl
    nop

jr_05d_66c7:
    ldh a, [$e0]
    ld a, [hl+]
    nop
    add sp, -$28
    ld h, $00
    add sp, -$20
    daa
    nop
    ldh a, [$30]
    add hl, bc
    nop
    ldh a, [$38]
    ld a, [bc]
    nop
    add sp, $30
    dec b
    nop
    add sp, $38
    ld b, $00
    ldh a, [rNR23]
    inc b
    nop
    ldh [rNR41], a
    inc bc
    nop
    ldh a, [$b8]
    ld [bc], a
    nop
    ld hl, sp-$08
    ld bc, $d900
    cp b
    nop
    nop
    pop de
    ret nc

    nop
    nop
    ret c

    ld b, b
    ld bc, $f800
    ld b, b
    nop
    nop
    add b
    ld hl, sp+$14
    ld de, $f000
    jr jr_05d_671b

    nop
    ldh a, [rNR10]
    rrca
    nop
    add sp, $10
    dec c
    nop
    add sp, $18
    ld c, $00
    ldh a, [$d8]
    inc c

jr_05d_671b:
    nop
    add sp, -$28
    dec bc
    nop
    ldh [rOBP0], a
    inc c
    nop
    ret c

    ld c, b
    dec bc
    nop
    ldh a, [$b8]
    ld de, $e800
    cp h
    stop
    add sp, -$4c
    rrca
    nop
    ldh [$b4], a
    dec c
    nop
    ldh [$bc], a
    ld c, $00
    ret nc

    db $10
    dec hl
    nop
    ret nc

    jr jr_05d_676f

    nop
    ret nc

    jr nz, jr_05d_6774

    nop
    ret c

    ret nc

    ld a, [de]
    nop
    ret c

    ret c

    dec de
    nop
    ret nc

    ret nc

    rla
    nop
    ret nc

    ret c

    jr jr_05d_6758

jr_05d_6758:
    ret nc

    ldh [rNR24], a
    nop
    ld hl, sp+$00
    inc b
    nop
    ldh [$f8], a
    ld bc, $f800
    ret nz

    nop
    nop
    add sp, $30
    ld [bc], a
    nop
    ld hl, sp-$18
    inc bc

jr_05d_676f:
    nop
    ret nc

    ldh a, [rSB]
    nop

jr_05d_6774:
    add b
    ld hl, sp-$30
    ld h, $00
    ld hl, sp-$28
    daa
    nop
    ld hl, sp+$28
    dec b
    nop
    ld hl, sp+$30
    ld b, $00
    ldh a, [$f0]
    ld a, [de]
    nop
    ldh a, [$f8]
    dec de
    nop
    add sp, -$10
    rla
    nop
    add sp, -$08
    jr jr_05d_6795

jr_05d_6795:
    add sp, $00
    add hl, de
    nop
    ldh [$f0], a
    inc d
    nop
    ldh [$f8], a
    dec d
    nop
    ldh [rP1], a
    ld d, $00
    ret c

    db $f4
    ld [de], a
    nop
    ret c

    db $fc
    inc de
    nop
    ldh a, [rNR50]
    dec h
    nop
    add sp, $24
    inc hl
    nop
    add sp, $2c
    inc h
    nop
    ldh [$28], a
    ld hl, $e000
    jr nc, @+$24

    nop
    add sp, -$28
    rlca
    nop
    add sp, -$20
    ld [$e000], sp
    ret c

    dec b
    nop
    ldh [$e0], a
    ld b, $00
    ret c

    ld [hl-], a
    jr nz, jr_05d_67d5

jr_05d_67d5:
    ret c

    ld a, [hl+]
    rra
    nop
    ret nc

    inc l
    dec e
    nop
    ret nc

    inc [hl]
    ld e, $00
    ldh a, [$b8]
    nop
    nop
    ldh a, [rLCDC]
    inc b
    nop
    ldh [$c8], a
    inc bc
    nop
    ld hl, sp+$08
    ld [bc], a
    nop
    ldh [rNR23], a
    ld bc, $d000
    inc b
    ld [bc], a
    nop
    add b
    ld hl, sp-$1c
    ld [de], a
    nop
    ld hl, sp-$14
    inc de
    nop
    ld hl, sp+$18
    ld hl, $f800
    jr nz, @+$24

    nop
    ld hl, sp-$30
    rlca
    nop
    ld hl, sp-$28
    ld [$f000], sp
    ret nc

    dec b
    nop
    ldh a, [$d8]
    ld b, $00
    ldh a, [rNR43]
    jr nz, jr_05d_681e

jr_05d_681e:
    ldh a, [rNR30]
    rra
    nop
    add sp, $1c
    dec e
    nop
    add sp, $24
    ld e, $00
    ldh [rNR50], a
    inc e
    nop
    ldh a, [$08]
    ld bc, $f000
    cp b
    inc bc
    nop
    ldh a, [$f4]
    ld [bc], a
    nop
    add b
    ld a, e
    ld l, b
    adc h
    ld l, b
    xor l
    ld l, b
    jp c, Jump_000_0b68

    ld l, c
    inc a
    ld l, c
    ld l, l
    ld l, c
    sub d
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    sbc [hl]
    ld l, c
    ret nc

    ld a, [c]
    rla
    nop
    ret nc

    ld a, [$0018]
    ret nc

    ld [bc], a
    add hl, de
    nop
    ret nc

    ld a, [bc]
    ld a, [de]
    nop
    add b
    ret nc

    ld a, [c]
    inc de
    nop
    ret nc

    ld a, [$0014]
    ret nc

    ld [bc], a
    dec d
    nop
    ret c

    ld a, [c]
    rla
    nop
    ret c

    ld a, [$0018]
    ret c

    ld [bc], a
    add hl, de
    nop
    ret nc

    ld a, [bc]
    ld d, $00
    ret c

    ld a, [bc]
    ld a, [de]
    nop
    add b
    ret c

    ld a, [c]
    stop
    ret c

    ld a, [$0011]
    ret c

    ld [bc], a
    ld [de], a
    nop
    ldh [$f2], a
    inc de
    nop
    ldh [$fa], a
    inc d
    nop
    ldh [rSC], a
    dec d
    nop
    ldh [$0a], a

jr_05d_68c7:
    ld d, $00
    add sp, -$0e
    rla
    nop
    add sp, -$06
    jr jr_05d_68d1

jr_05d_68d1:
    add sp, $02
    add hl, de

jr_05d_68d4:
    nop
    add sp, $0a
    ld a, [de]
    nop
    add b
    jp hl


    ld hl, sp+$06
    nop
    jp hl


    nop
    rlca
    nop
    add sp, -$0e
    dec c
    jr nz, jr_05d_68c7

    ld [$2000], a
    pop hl
    ld hl, sp+$04
    nop
    pop hl
    nop

jr_05d_68f0:
    dec b
    nop
    ldh [$f2], a
    inc c
    jr nz, jr_05d_68d4

    ld a, [$0003]
    call c, $0202
    nop
    db $e4
    ld b, $0c
    nop
    db $ec
    ld b, $0d
    nop
    db $db
    ld a, [bc]
    ld bc, $8000
    ret c

    ld a, [c]
    inc bc
    nop
    db $eb
    db $eb
    ld c, $40
    db $eb
    di
    rrca
    ld b, b
    sbc $e8
    nop
    jr nz, jr_05d_68f0

    ld b, $02
    nop
    db $e4
    db $10
    ld c, $60
    db $e4
    ld [$600f], sp
    jp c, $0110

    nop
    sbc $f8
    inc b
    nop
    sbc $00
    dec b
    nop
    and $f8
    ld b, $00
    and $00
    rlca
    nop
    add b
    ld [c], a
    db $10
    ld bc, $f220
    db $10
    inc c
    ld h, b
    ld [$0d10], a
    ld h, b
    call c, Call_000_020a
    ld b, b
    ldh [$ed], a
    inc bc
    ld b, b
    and $e8
    ld bc, $f800
    db $eb
    inc c
    ld b, b
    ldh a, [$eb]
    dec c
    ld b, b
    and $fa
    ld [$e600], sp
    ld [bc], a
    add hl, bc
    nop
    xor $fa
    ld a, [bc]
    nop
    xor $02
    dec bc
    nop
    add b
    ld hl, sp-$15
    dec c

jr_05d_6970:
    ld h, b
    ld hl, sp+$10
    inc c
    ld b, b
    ldh a, [rNR10]
    dec c
    ld b, b
    db $ec
    add sp, $02
    nop
    ld [c], a
    stop
    jr nz, jr_05d_6970

    db $fc
    inc b
    nop
    xor $04
    dec b
    nop
    or $fc
    ld b, $00
    or $04
    rlca
    nop
    add b
    ld hl, sp+$10
    dec c
    ld h, b
    ld hl, sp-$03
    inc b
    nop
    ld hl, sp+$05
    dec b
    nop
    add b
    rst $18
    ld l, c
    db $e4
    ld l, c
    pop af
    ld l, c
    ld a, [bc]
    ld l, d
    dec hl
    ld l, d
    ld d, h
    ld l, d
    ld a, l
    ld l, d
    and [hl]
    ld l, d
    db $d3
    ld l, d
    db $fc
    ld l, d
    dec h
    ld l, e
    ld h, [hl]
    ld l, e
    bit 5, e
    ld c, b
    ld l, h
    cp c
    ld l, h
    ld [de], a
    ld l, l
    ld l, a
    ld l, l
    and h
    ld l, l
    cp l
    ld l, l
    jp nc, Jump_000_0a6d

    ld l, [hl]
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld l, [hl]
    ld hl, sp-$50
    ld [hl+], a
    db $10
    add b
    ld hl, sp-$50
    jr nz, @+$12

    ld hl, sp-$48
    ld hl, $f810
    ret nz

    ld [hl+], a
    db $10
    add b
    ld hl, sp-$3d
    jr nz, @+$12

    ld hl, sp-$35
    ld hl, $f810
    db $d3
    ld [hl+], a
    db $10
    ld hl, sp-$4d
    db $10
    db $10
    ld hl, sp-$45
    ld de, $f810
    xor e
    ld de, $8010
    ld hl, sp-$28
    jr nz, @+$12

    ld hl, sp-$20
    ld hl, $f810
    add sp, $22
    db $10
    ld hl, sp-$38
    ld de, $f810
    ret nc

    ld de, $f810
    ret nz

    ld [de], a
    db $10
    ld hl, sp-$50
    ld [bc], a
    db $10
    ld hl, sp-$48
    ld [bc], a
    db $10
    add b
    ld hl, sp-$49
    nop
    db $10
    ld hl, sp-$41
    ld bc, $f810
    rst $00
    ld [bc], a
    db $10
    ld hl, sp-$31
    ld [bc], a
    db $10
    ld hl, sp-$21
    db $10
    db $10
    ld hl, sp-$19
    ld de, $f810
    rst $10
    ld de, $f810
    rst $28
    jr nz, @+$12

    ld hl, sp-$09
    ld hl, $f810
    rst $38
    ld [hl+], a
    db $10
    add b
    ld hl, sp-$30
    nop
    db $10
    ld hl, sp-$28
    ld bc, $f810
    ldh [rSC], a
    db $10
    ld hl, sp-$18
    ld [bc], a
    db $10
    ld hl, sp-$10
    ld de, $f810
    ld hl, sp+$12
    db $10
    ld hl, sp+$00
    ld de, $f810
    ld [$1020], sp
    ld hl, sp+$10
    ld hl, $f810
    jr jr_05d_6a9d

    db $10
    add b
    ld hl, sp-$15
    nop
    db $10
    ld hl, sp-$0d
    ld bc, $f810
    ei
    ld [bc], a
    db $10
    ld hl, sp+$03
    ld [bc], a
    db $10
    ld hl, sp+$0b
    db $10
    db $10
    ld hl, sp+$13
    ld de, $f810
    dec de
    ld de, $f810
    inc hl
    jr nz, @+$12

jr_05d_6a9d:
    ld hl, sp+$2b
    ld hl, $f810
    inc sp
    ld [hl+], a
    db $10
    add b
    ld hl, sp+$08
    nop
    db $10
    ld hl, sp+$10
    ld bc, $f810
    jr @+$04

    db $10
    ld hl, sp+$20
    ld [bc], a
    db $10
    ld hl, sp+$30
    ld de, $f810
    jr c, jr_05d_6ace

    db $10
    ld hl, sp+$28
    ld [de], a
    db $10
    ld hl, sp+$40
    jr nz, jr_05d_6ad6

    ld hl, sp+$48
    ld hl, $f010
    ret nc

    rla
    db $10

jr_05d_6ace:
    or $d8
    dec c
    db $10
    add b
    ld hl, sp+$19
    nop

jr_05d_6ad6:
    db $10
    ld hl, sp+$21
    ld bc, $f810
    add hl, hl
    ld [bc], a
    db $10
    ld hl, sp+$31
    ld [bc], a
    db $10
    ld hl, sp+$39
    ld [de], a
    db $10
    ld hl, sp+$41
    ld de, $f810
    ld c, c
    ld de, $f810
    ret z

    inc de
    db $10
    push af
    sla a
    db $10
    db $ed
    ret z

    dec c
    db $10
    add b
    ld hl, sp+$2c
    nop
    db $10
    ld hl, sp+$34
    ld bc, $f810
    inc a
    ld [bc], a
    db $10
    ld hl, sp+$44
    ld [bc], a
    db $10
    ld hl, sp+$4c
    ld [de], a
    db $10
    rst $28
    ret nc

    inc de
    db $10
    rst $30
    ret nc

    inc hl
    db $10
    di
    db $db
    inc h
    db $10
    db $ed
    db $d3
    daa
    db $10
    push hl
    ret nc

    dec c
    db $10
    add b
    ld hl, sp+$41
    nop
    db $10
    ld hl, sp+$49
    ld bc, $f810
    add $03
    db $10
    ld hl, sp-$22
    ld [$f050], sp
    sub $15
    db $10
    ld hl, sp-$2a
    ld h, $10
    ld hl, sp-$1a
    ld h, $10
    ld hl, sp-$32
    dec h
    db $10
    ld hl, sp+$06
    rla
    db $10
    ldh a, [$ee]

jr_05d_6b4b:
    dec c
    jr nc, @-$06

    xor $0e
    jr nc, @-$0e

    and $0b
    db $10
    add sp, -$18
    inc d
    db $10
    ld hl, sp-$0a
    inc d
    db $10
    add sp, -$20

jr_05d_6b5f:
    dec e
    db $10
    ldh a, [$de]
    rra
    ld [hl], b
    add b
    ret c

    ld b, $13
    db $10
    ld hl, sp-$32
    inc bc
    db $10
    ld hl, sp-$2a
    inc b
    db $10
    ld hl, sp-$22
    dec b
    db $10
    ld hl, sp-$12
    ld b, $10
    ld hl, sp-$0a
    rlca
    db $10
    ld hl, sp-$02
    ld [$f010], sp
    cp $08
    ld [hl], b
    ld hl, sp-$1a
    ld h, $10
    ret c

jr_05d_6b8b:
    cp $25
    jr nc, jr_05d_6b5f

    or $0d
    db $10
    ret c

    or $0e
    db $10
    add sp, -$0a
    rrca
    jr nc, jr_05d_6b8b

    jp nc, Jump_000_100d

    ldh [rTMA], a
    jr jr_05d_6c12

    add sp, $06
    add hl, de
    jr nc, @-$0e

    ld c, $1f
    db $10
    ld hl, sp+$0e
    cpl
    db $10
    add sp, $0e
    inc e
    db $10
    add sp, -$02
    dec de
    db $10
    ldh [$fe], a
    dec de
    jr nc, @-$0e

    ld b, $2d
    db $10
    ld hl, sp+$06
    ld l, $50
    ldh a, [$f6]
    rra
    jr nc, @-$0e

    db $e4
    dec e
    jr nc, jr_05d_6b4b

    ld hl, sp+$28
    ld [hl+], a
    db $10
    ld hl, sp-$48
    inc de
    db $10
    ldh a, [$c2]
    rla
    db $10
    ldh a, [$c8]
    dec h
    db $10
    add sp, -$11
    daa
    ld d, b
    ld hl, sp+$30
    jr z, jr_05d_6c33

    ret c

    ldh a, [rNR23]
    db $10
    ldh [rDIV], a
    inc c
    db $10
    ret c

    ld [$100a], sp
    ret c

jr_05d_6bf0:
    db $10
    dec bc
    db $10
    ret nc

    ld a, [bc]
    add hl, bc
    db $10
    ret nc

    ld a, [c]
    add hl, de
    ld d, b
    add sp, -$30
    dec c
    jr nc, jr_05d_6bf0

    ret nc

    ld c, $30
    ld hl, sp-$40
    jr jr_05d_6c57

    ld hl, sp-$30
    dec d
    db $10
    ret c

    ldh [rNR14], a
    db $10
    ld hl, sp-$28
    inc d

jr_05d_6c12:
    db $10
    ld hl, sp-$38
    dec de
    db $10
    ret c

    nop
    dec l
    ld [hl], b
    ret c

    ld hl, sp+$2e
    ld [hl], b
    ret nc

    ld a, [$301b]
    add sp, $26
    ld a, [de]
    db $10
    ldh a, [rNR41]
    inc d
    db $10
    ld hl, sp+$18
    dec e
    db $10
    ld hl, sp+$38
    inc e
    db $10

jr_05d_6c33:
    ldh a, [rNR52]
    ld a, [hl+]
    db $10
    ld hl, sp+$20
    dec hl
    db $10
    ret nc

    ld [bc], a
    rra
    ld d, b
    ldh [$0b], a
    ld a, [de]
    ld d, b
    ldh [$f4], a

jr_05d_6c45:
    jr z, jr_05d_6c57

    add b
    rst $28
    jr jr_05d_6c5e

    db $10
    rst $30
    jr jr_05d_6c72

    db $10
    ld hl, sp-$48
    inc de
    db $10
    di

jr_05d_6c55:
    inc hl
    inc h

jr_05d_6c57:
    db $10
    ld hl, sp-$38
    ld [$d810], sp
    ret z

jr_05d_6c5e:
    ld d, $30
    db $ed

jr_05d_6c61:
    dec de
    daa
    db $10
    push hl
    jr @+$0f

    db $10
    ret nc

    ret c

    dec c
    jr nc, jr_05d_6c45

    ret c

    ld c, $30
    ret c

    ret nc

jr_05d_6c72:
    rrca
    jr nc, jr_05d_6c55

jr_05d_6c75:
    rst $10
    add hl, de
    jr nc, jr_05d_6c61

    ret c

    add hl, hl
    jr nc, jr_05d_6c75

    ldh a, [$28]
    ld d, b
    ldh a, [$c7]
    ld a, [bc]
    db $10
    ldh [$c7], a
    inc l
    db $10
    ldh [$cf], a
    dec de
    db $10
    ld hl, sp-$18
    dec hl
    jr nc, @-$06

jr_05d_6c91:
    ldh [$2c], a
    jr nc, @-$06

    ret c

    dec l
    jr nc, jr_05d_6c91

jr_05d_6c99:
    ret nc

    ld l, $30
    ldh a, [$c0]
    rra
    jr nc, jr_05d_6c99

    ret nz

    cpl
    jr nc, @-$16

    cp a
    inc e
    jr nc, jr_05d_6c99

    rst $18
    dec e
    jr nc, @-$0e

    rst $08
    ld e, $30
    add sp, -$38
    dec de
    jr nc, @-$16

    ret nc

    ld l, $50
    add b
    ldh a, [$30]
    inc de
    db $10
    ld hl, sp-$1c
    inc bc
    db $10
    ld hl, sp-$38
    inc de
    jr nc, @-$06

    db $fc
    ld [$f550], sp
    ret nc

    daa
    db $10
    ld hl, sp-$14
    dec h
    db $10
    ldh a, [$28]
    dec h
    jr nc, @-$06

    db $f4
    ld h, $10
    ld hl, sp+$04
    ld h, $10
    ldh a, [$f4]
    dec d
    db $10
    ldh a, [$0c]
    ld d, $10
    db $ed
    jp z, Jump_000_100d

    add sp, $20
    dec c
    db $10
    ldh a, [rDIV]
    dec bc
    db $10
    ldh a, [rNR41]
    ld c, $10
    ld hl, sp+$0c
    ld c, $30
    ld hl, sp+$30
    jr @+$72

    ld hl, sp+$20
    jr z, jr_05d_6d51

    add sp, $06
    inc d
    db $10
    add sp, -$02
    dec e
    db $10
    ld hl, sp+$28
    dec de
    jr nc, @-$0e

    db $fc
    rra
    ld [hl], b
    add b
    ld hl, sp+$28
    ld [$d830], sp
    jr z, @+$18

    db $10
    ret nc

    jr jr_05d_6d2a

    db $10
    ret c

    jr @+$10

    db $10
    ret c

    jr nz, jr_05d_6d34

    db $10
    ldh [rNR24], a
    add hl, de
    db $10

jr_05d_6d2a:
    add sp, $18
    add hl, hl
    db $10
    ldh a, [$29]
    ld a, [bc]
    db $10
    ld hl, sp+$00

jr_05d_6d34:
    jr z, jr_05d_6da6

    ld hl, sp+$30
    cpl
    db $10
    ldh a, [$31]
    rra
    db $10
    add sp, $28
    dec de
    db $10
    add sp, $30
    inc e
    db $10
    ldh a, [rNR42]
    ld e, $10
    ld hl, sp+$08
    dec hl
    db $10
    ld hl, sp+$10
    inc l

jr_05d_6d51:
    db $10
    ld hl, sp+$18
    dec l
    db $10
    ld hl, sp+$20
    ld l, $10
    ldh [$29], a
    inc l
    jr nc, @-$1e

    ld hl, $301b
    ldh a, [rNR12]
    dec e
    db $10
    ld hl, sp-$08
    ld a, [hl+]
    ld d, b
    add sp, $20
    ld l, $50
    add b
    ld hl, sp+$0c
    ld [hl+], a
    db $10
    ldh a, [$f7]
    inc de
    db $10
    ld hl, sp+$04
    inc b
    jr nc, @-$06

    db $fc
    rlca
    jr nc, @-$06

    ret nc

    rla
    db $10
    add sp, -$0b
    inc d
    db $10
    ldh a, [rDIV]
    inc d
    db $10
    ld hl, sp+$14
    inc d
    db $10
    ld hl, sp-$14
    dec hl
    db $10
    ld hl, sp-$0c
    inc l
    db $10
    add sp, $0a
    ld a, [de]
    db $10
    ldh a, [$0a]
    ld a, [hl+]
    db $10
    ldh a, [$fc]
    dec e
    jr nc, @-$7e

    rst $28
    nop

jr_05d_6da6:
    inc de
    db $10
    rst $30
    nop
    inc hl
    db $10
    di
    dec bc
    inc h
    db $10
    ldh a, [$e5]
    daa
    db $10
    db $ed
    inc bc
    daa
    db $10
    push hl
    nop
    dec c
    db $10
    add b
    ldh a, [$f8]
    rla
    db $10
    ld hl, sp-$09
    daa
    db $10
    ld hl, sp-$10
    dec c
    db $10
    add sp, $08
    dec c
    jr nc, @-$06

    ld [$1014], sp
    add b
    ld hl, sp-$3a
    inc bc
    db $10
    ld hl, sp-$22
    ld [$f050], sp
    sub $15
    db $10
    ld hl, sp-$2a
    ld h, $10
    ld hl, sp-$1a
    ld h, $10
    ld hl, sp-$32
    dec h
    db $10
    ld hl, sp+$06
    rla
    db $10
    ldh a, [$ee]
    dec c
    jr nc, @-$06

    xor $0e
    jr nc, @-$0e

    and $0b
    db $10
    add sp, -$18
    inc d
    db $10
    ld hl, sp-$0a
    inc d
    db $10
    add sp, -$20
    dec e
    db $10
    ldh a, [$de]
    rra
    ld [hl], b
    add b
    ld c, e
    ld l, [hl]
    ld e, h
    ld l, [hl]
    add l
    ld l, [hl]
    or d
    ld l, [hl]
    bit 5, [hl]
    ldh [$6e], a
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    db $ec
    ld l, [hl]
    ret c

    inc bc
    nop
    nop
    ret c

    dec bc
    ld bc, $d000
    inc bc
    ld [bc], a
    nop
    ret nc

    dec bc
    inc bc
    nop
    add b
    call c, RST_00
    nop
    call c, $0108
    nop
    call nc, $0200
    nop
    call nc, Call_000_0308
    nop
    call z, $0404
    nop
    db $e4
    ld hl, sp+$00
    ld h, b
    db $e4
    ldh a, [rSB]
    ld h, b
    db $ec
    ld hl, sp+$02
    ld h, b
    db $ec
    ldh a, [$03]
    ld h, b
    db $f4
    db $f4
    inc b
    ld h, b
    add b
    ldh a, [$fb]
    dec b
    ld h, b
    ldh a, [$f3]
    ld b, $60
    add sp, $03
    rlca
    ld h, b
    add sp, -$05
    ld [$e860], sp
    di
    add hl, bc
    ld h, b
    ldh [$03], a
    ld a, [bc]
    ld h, b
    ldh [$fb], a
    dec bc
    ld h, b
    ldh [$f3], a
    inc c
    ld h, b
    ret c

    rlca
    dec c
    ld h, b
    ret c

    rst $38
    ld c, $60
    ret nc

    ld [$600f], sp
    add b
    ldh a, [$f3]
    ld de, $e800
    ld hl, sp+$11
    nop
    ldh [$fe], a
    ld de, $d800
    inc bc
    ld de, $d000
    ld [$0011], sp
    ld hl, sp-$12
    ld de, $8000
    ldh a, [$f3]
    ld de, $e800
    ld hl, sp+$11
    nop
    ld hl, sp-$12
    ld de, $e000
    cp $12
    nop
    ret c

    inc bc
    ld [de], a
    nop
    add b
    ld hl, sp-$12
    ld [de], a
    nop
    ldh a, [$f3]
    ld [de], a
    nop
    add sp, -$08
    ld [de], a
    nop
    add b
    dec l
    ld l, a
    ld a, $6f
    ld h, a
    ld l, a
    sub b
    ld l, a
    pop bc
    ld l, a
    ld [c], a
    ld l, a
    ei
    ld l, a
    ld [$1570], sp
    ld [hl], b
    ld [hl], $70
    ld e, e
    ld [hl], b
    xor b
    ld [hl], b
    push af
    ld [hl], b
    ld d, [hl]
    ld [hl], c
    or a
    ld [hl], c
    inc b
    ld [hl], d
    ld h, c
    ld [hl], d
    jp z, Jump_000_3b72

    ld [hl], e
    ld a, h
    ld [hl], e
    sbc h
    ld [hl], e
    sbc h
    ld [hl], e
    sbc h
    ld [hl], e
    sbc h
    ld [hl], e
    sbc h
    ld [hl], e
    sbc h
    ld [hl], e
    sbc h
    ld [hl], e
    sbc h
    ld [hl], e
    sbc h
    ld [hl], e
    sbc h
    ld [hl], e
    sbc h
    ld [hl], e
    sbc h
    ld [hl], e
    ret c

    inc bc
    inc e
    nop
    ret c

    dec bc
    dec e
    nop
    ret nc

    inc bc
    ld e, $00
    ret nc

    dec bc
    rra
    nop
    add b
    call c, Call_000_1c00
    nop
    call c, Call_000_1d08
    nop
    rst $08
    ld bc, $0026
    call nc, $1e00
    nop
    call nc, Call_000_1f08
    nop
    db $e4
    ld hl, sp+$1c
    ld h, b
    db $e4
    ldh a, [rNR33]
    ld h, b
    pop af
    rst $30
    ld h, $60
    db $ec
    ld hl, sp+$1e
    ld h, b
    db $ec
    ldh a, [$1f]
    ld h, b
    add b
    ret nc

    nop
    jr nz, jr_05d_6f6b

jr_05d_6f6b:
    ret nc

    ld [$0021], sp
    ret c

    db $fc
    ld [hl+], a
    nop
    ret c

    inc b
    inc hl
    nop
    ldh [$f8], a
    inc h
    nop
    ldh [rP1], a
    dec h
    nop
    add sp, -$10
    ld h, $00
    add sp, -$08
    daa
    nop
    ldh a, [$f4]
    jr z, jr_05d_6f8b

jr_05d_6f8b:
    ld hl, sp-$10
    add hl, hl
    nop
    add b
    ret c

    inc bc
    ld hl, $e000

jr_05d_6f95:
    rst $30
    ld [hl+], a
    nop
    ldh [rIE], a
    inc hl
    nop
    add sp, -$05
    dec h
    nop
    ldh a, [$eb]
    ld h, $00
    ldh a, [$f3]
    daa
    nop
    ld hl, sp-$11
    jr z, jr_05d_6fac

jr_05d_6fac:
    ret nc

    ld [$002a], sp
    ret c

    ei
    ld a, [hl+]
    nop
    add sp, -$0d
    ld a, [hl+]
    nop
    ldh [$eb], a
    dec hl
    nop
    ret nc

    nop
    dec hl
    nop
    add b
    ret nc

    ld [$002c], sp
    ret c

    inc bc
    inc l
    nop
    ldh [$fe], a
    inc l
    nop
    add sp, -$08
    inc l
    nop
    ldh a, [$f3]
    inc l
    nop
    ld hl, sp-$12
    inc l
    nop
    ldh a, [$eb]
    ld a, [hl+]
    nop
    ldh [$f6], a
    dec hl
    nop
    add b
    add sp, -$08
    inc l
    nop
    ldh a, [$f3]
    inc l
    nop
    ld hl, sp-$12
    inc l
    nop
    ret c

    inc bc
    dec l
    nop
    ldh [$fe], a
    dec l
    nop
    add sp, -$10
    jr nz, jr_05d_6ffa

jr_05d_6ffa:
    add b
    add sp, -$06
    dec l
    nop
    ldh a, [$f5]
    dec l
    nop
    ld hl, sp-$10
    dec l
    nop
    add b
    ldh a, [$fc]
    daa
    nop
    ld hl, sp-$04
    jr z, jr_05d_7010

jr_05d_7010:
    add sp, -$04
    inc h
    jr nz, jr_05d_6f95

    add sp, -$04
    ld [bc], a
    nop
    ldh a, [$fc]
    daa
    jr nz, @-$06

    db $fc
    daa
    nop
    ldh [$fc], a
    ld hl, $f820
    db $f4
    ld hl, $f000
    ldh a, [rNR41]
    nop
    ld hl, sp+$04
    ld hl, $f020
    ld [$2020], sp
    add b
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
    jr jr_05d_7056

jr_05d_7056:
    ld hl, sp+$00

jr_05d_7058:
    jr @+$22

    add b
    ld hl, sp+$05
    ld de, $f800

jr_05d_7060:
    push af
    rrca
    nop
    ldh a, [$0b]
    add hl, bc
    jr nz, jr_05d_7058

jr_05d_7068:
    inc bc
    ld a, [bc]
    jr nz, @-$0e

jr_05d_706c:
    ei
    dec bc
    jr nz, jr_05d_7060

    di
    inc c
    jr nz, @-$0e

    db $eb
    dec c
    jr nz, jr_05d_7060

    rst $38
    ld b, $20
    add sp, -$09
    rlca
    jr nz, jr_05d_7068

jr_05d_7080:
    rst $28
    ld [$e020], sp
    ld bc, $2002
    ldh [$f9], a
    inc bc
    jr nz, jr_05d_706c

    pop af
    inc b
    jr nz, jr_05d_7068

    cp $00
    jr nz, jr_05d_706c

jr_05d_7094:
    or $01
    jr nz, jr_05d_7080

jr_05d_7098:
    rlca
    dec b
    jr nz, jr_05d_7094

jr_05d_709c:
    db $ed
    rla
    jr nz, jr_05d_7098

    dec c

jr_05d_70a1:
    inc de
    jr nz, jr_05d_709c

    db $fd
    add hl, de
    nop
    add b
    ld hl, sp-$0d
    ld de, $f820
    inc bc
    rrca
    jr nz, jr_05d_70a1

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
    ld hl, sp-$0c
    inc d
    nop
    ld hl, sp-$04
    dec d
    nop
    ld hl, sp+$04
    ld d, $00
    ldh a, [$fd]
    stop
    ldh a, [rTIMA]
    ld de, $f000
    dec c
    ld [de], a
    nop
    ldh a, [$ed]
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
    jr jr_05d_7149

jr_05d_7149:
    ld hl, sp+$0c
    ld a, [de]
    nop
    ld hl, sp-$14
    inc de
    nop
    ret c

    dec b

jr_05d_7153:
    dec c
    nop
    add b
    ld hl, sp+$0c
    inc de
    jr nz, jr_05d_7153

    inc b
    inc d
    jr nz, @-$06

jr_05d_715f:
    db $ec
    rla
    jr nz, jr_05d_7153

jr_05d_7163:
    ei
    db $10
    jr nz, @-$0e

jr_05d_7167:
    di
    ld de, $f020

jr_05d_716b:
    db $eb
    ld [de], a
    jr nz, jr_05d_715f

jr_05d_716f:
    dec bc
    ld c, $20
    ldh a, [$03]
    rrca
    jr nz, jr_05d_715f

jr_05d_7177:
    dec c
    add hl, bc
    jr nz, jr_05d_7163

    dec b
    ld a, [bc]
    jr nz, jr_05d_7167

    db $fd
    dec bc
    jr nz, jr_05d_716b

    push af

jr_05d_7184:
    inc c
    jr nz, jr_05d_716f

    db $ed
    dec c
    jr nz, jr_05d_716b

jr_05d_718b:
    ld bc, $2006
    ldh [$f9], a
    rlca
    jr nz, @-$1e

    pop af
    ld [$d820], sp
    inc bc
    ld [bc], a
    jr nz, @-$26

    ei
    inc bc
    jr nz, jr_05d_7177

    di
    inc b
    jr nz, @-$2e

    nop
    nop
    jr nz, jr_05d_7177

jr_05d_71a7:
    ld hl, sp+$01
    jr nz, jr_05d_718b

    add hl, bc
    dec b
    jr nz, jr_05d_71a7

    db $f4
    jr jr_05d_71b2

jr_05d_71b2:
    ld hl, sp-$04
    ld de, $8000
    ld hl, sp-$10
    ld de, $f820
    add sp, $13
    nop
    ld hl, sp-$08
    dec d
    nop
    ld hl, sp+$08
    rrca
    jr nz, @-$0e

    add sp, $09
    nop
    ldh a, [$f0]
    ld a, [bc]
    nop
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [$08]
    inc c
    nop
    ld hl, sp+$10
    inc de
    jr nz, @-$0e

    db $10
    add hl, bc
    jr nz, @-$06

    nop
    dec bc
    nop
    ldh a, [rP1]
    rlca
    nop
    add sp, -$0c
    ld [bc], a
    nop
    add sp, -$04
    inc bc
    nop
    add sp, $04
    inc b
    nop
    ldh [$f7], a
    nop
    nop
    ldh [rIE], a
    ld bc, $e800
    dec bc
    inc h
    nop
    add sp, -$13
    inc b
    jr nz, jr_05d_7184

    ld hl, sp+$05
    ld de, $f800

jr_05d_7209:
    push af
    rrca
    nop
    ld hl, sp-$13
    rla
    jr nz, jr_05d_7209

jr_05d_7211:
    dec c
    inc de
    jr nz, @-$06

jr_05d_7215:
    db $fd
    add hl, de
    nop
    ldh a, [$f8]
    dec bc
    jr nz, @-$0e

    ldh a, [$0c]
    jr nz, jr_05d_7211

    add sp, $0d
    jr nz, jr_05d_7215

    ld [$200a], sp
    ldh a, [rP1]
    add hl, de
    nop
    add sp, -$10
    rlca
    jr nz, @-$16

jr_05d_7231:
    add sp, $08
    jr nz, jr_05d_7215

jr_05d_7235:
    ld a, [c]
    inc bc
    jr nz, @-$1e

    ld [$2004], a
    ret c

    rst $28
    ld bc, $e820
    ld [$2006], sp
    add sp, $00
    add hl, bc
    nop
    add sp, -$08

jr_05d_724a:
    add hl, bc
    jr nz, jr_05d_7235

    db $10
    dec c
    nop
    ldh [rDIV], a
    ld [$e020], sp
    inc c
    dec b
    jr nz, jr_05d_7231

    ld b, $04
    nop
    ldh a, [rNR10]

jr_05d_725e:
    ld a, [de]
    nop
    add b
    ld hl, sp-$18
    rla
    jr nz, jr_05d_725e

    ldh a, [rNR23]
    nop
    ld hl, sp-$08
    ld de, $f800

jr_05d_726e:
    db $10
    inc de
    jr nz, @-$06

    ld [$2014], sp
    ld hl, sp+$00
    add hl, de
    nop
    ldh a, [$f0]
    ld de, $f020
    db $10
    ld c, $20
    ldh a, [$08]
    rrca
    jr nz, jr_05d_726e

jr_05d_7286:
    db $10
    add hl, bc
    jr nz, @-$0e

    add sp, $0e
    nop
    add sp, -$18
    add hl, bc
    nop
    add sp, -$10
    inc b
    nop
    ldh a, [rP1]
    inc b
    jr nz, @-$16

    ld [$0002], sp
    ldh a, [$f8]
    ld [bc], a
    jr nz, @-$1e

    inc c
    daa
    jr nz, @-$2e

    rlca

jr_05d_72a7:
    inc h
    jr nz, @-$26

    inc c

jr_05d_72ab:
    ld [hl+], a
    jr nz, jr_05d_7286

    inc b
    inc hl
    jr nz, @-$1e

    db $ec
    daa
    nop
    ret nc

    pop af
    inc h
    nop
    ret c

    db $ec

jr_05d_72bb:
    ld [hl+], a
    nop
    ret c

    db $f4
    inc hl
    nop
    ret nc

    add sp, $2b
    nop
    ret nc

    db $10
    dec hl
    jr nz, jr_05d_724a

    ret c

    inc c
    ld [hl+], a
    jr nz, jr_05d_72a7

    inc b
    inc hl
    jr nz, jr_05d_72ab

jr_05d_72d3:
    db $ec
    ld [hl+], a
    nop
    ret c

    db $f4
    inc hl
    nop
    add sp, $10
    ld c, $20
    ldh a, [rNR10]
    inc de
    jr nz, jr_05d_72d3

    add sp, $13
    nop
    ldh a, [$f0]
    inc d
    nop
    ld hl, sp-$10
    ld a, [de]
    jr nz, @-$06

    ld hl, sp+$0a
    nop
    ld hl, sp+$00
    inc c
    nop
    ld hl, sp+$08
    ld [de], a
    nop
    ldh a, [rP1]

jr_05d_72fc:
    add hl, bc
    nop
    ldh a, [$08]
    ld a, [bc]
    nop
    add sp, $08
    dec b
    nop

jr_05d_7306:
    ldh [$08], a
    dec c
    jr nz, @-$1e

jr_05d_730b:
    db $10
    add hl, bc
    jr nz, @-$16

    add sp, $0e
    nop
    add sp, -$10
    dec b
    jr nz, @-$1e

    ldh a, [$0d]
    nop
    ldh [$e8], a
    add hl, bc
    nop
    ldh a, [$f8]

jr_05d_7320:
    add hl, bc
    jr nz, jr_05d_730b

    nop

jr_05d_7324:
    ld h, $00
    add sp, -$08
    jr nz, jr_05d_732a

jr_05d_732a:
    ldh [rP1], a
    ld hl, $e000
    ld hl, sp+$21
    jr nz, jr_05d_7306

    nop
    jr nz, jr_05d_7336

jr_05d_7336:
    db $d3
    ld hl, sp+$20
    jr nz, jr_05d_72bb

    db $e4

jr_05d_733c:
    inc bc
    ld b, $20
    db $e4

jr_05d_7340:
    di
    ld [$dc20], sp
    dec b
    ld [bc], a
    jr nz, jr_05d_7324

    push af
    inc b
    jr nz, jr_05d_7320

jr_05d_734c:
    db $fc
    inc b
    jr nz, jr_05d_7324

    rst $38
    ld [bc], a
    jr nz, @-$22

jr_05d_7354:
    db $fd
    rlca
    jr nz, jr_05d_733c

    ei
    dec bc
    jr nz, jr_05d_7340

    add hl, bc
    add hl, bc
    jr nz, jr_05d_734c

    ld hl, sp+$0f
    ld b, b
    db $ec
    ldh a, [rNR12]
    jr nz, jr_05d_7354

    ld [$0017], sp
    db $ec
    nop
    jr jr_05d_738f

    db $f4
    ei
    add hl, de
    nop
    db $f4
    inc bc
    ld a, [de]
    nop
    db $f4
    di
    ld a, [de]
    jr nz, jr_05d_72fc

    ld hl, sp-$04
    dec de
    nop
    ldh [$fc], a
    inc h
    nop
    add sp, -$04
    inc bc
    nop
    ldh a, [rDIV]
    ld [de], a
    nop
    ldh a, [$fc]
    inc c

jr_05d_738f:
    jr nz, @-$0e

    db $f4
    dec c
    jr nz, @-$16

    db $f4
    ld [hl+], a
    nop
    add sp, $04
    inc hl
    nop
    add b
    db $dd
    ld [hl], e
    xor $73
    rrca
    ld [hl], h
    jr c, jr_05d_7419

    ld l, c
    ld [hl], h
    adc d
    ld [hl], h
    and e
    ld [hl], h
    or b
    ld [hl], h
    pop de
    ld [hl], h
    ld [bc], a
    ld [hl], l
    ccf
    ld [hl], l
    ld a, b
    ld [hl], l
    xor c
    ld [hl], l
    ld b, d
    db $76
    add e
    db $76
    ld [$7177], sp
    ld [hl], a
    ld bc, $0178
    ld a, b
    ld bc, $0178
    ld a, b
    ld bc, $0178
    ld a, b
    ld bc, $0178
    ld a, b
    ld bc, $0178
    ld a, b
    ld bc, $0178
    ld a, b
    ld bc, $0178
    ld a, b
    ld bc, $d878
    inc bc
    jr nz, jr_05d_73e1

jr_05d_73e1:
    ret c

    dec bc
    ld hl, $d000
    inc bc
    ld [hl+], a
    nop
    ret nc

    dec bc
    inc hl
    nop
    add b
    call c, Call_000_2000
    nop
    call c, $2108
    nop
    call nc, Call_000_2200
    nop
    call nc, $2308
    nop
    db $e4
    ld hl, sp+$20
    ld h, b
    db $e4
    ldh a, [rNR42]
    ld h, b
    db $ec
    ld hl, sp+$22
    ld h, b

jr_05d_740a:
    db $ec
    ldh a, [rNR44]
    ld h, b
    add b
    ret nc

    nop
    inc h
    nop
    ret nc

    ld [$0025], sp
    ret c

    db $fc

jr_05d_7419:
    ld h, $00
    ret c

    inc b
    daa
    nop
    ldh [$f8], a
    jr z, jr_05d_7423

jr_05d_7423:
    ldh [rP1], a
    add hl, hl
    nop
    add sp, -$10
    ld a, [hl+]
    nop
    add sp, -$08
    dec hl
    nop
    ldh a, [$f4]
    inc l
    nop
    ld hl, sp-$10
    dec l
    nop
    add b
    ret c

    ei
    inc h
    nop
    ret c

    inc bc
    dec h
    nop
    ldh [$f7], a
    ld h, $00
    ldh [rIE], a
    daa
    nop
    add sp, -$0d
    jr z, jr_05d_744c

jr_05d_744c:
    add sp, -$05
    add hl, hl
    nop
    ldh a, [$eb]
    ld a, [hl+]
    nop
    ldh a, [$f3]
    dec hl
    nop
    ld hl, sp-$11
    inc l
    nop
    ret nc

    ld [$0005], sp
    ret nc

    nop
    inc h
    nop
    add sp, -$15
    ld [de], a
    nop
    add b
    ld hl, sp-$12
    ld l, $00
    ldh a, [$f3]
    ld l, $00
    add sp, -$08
    ld l, $00
    ldh [$fe], a
    ld l, $00
    ret c

    inc bc
    ld l, $00
    ret nc

    ld [$002e], sp
    ldh a, [$eb]
    ld de, $e020
    or $0b
    jr nz, jr_05d_740a

    add sp, -$10
    inc h
    nop
    ldh a, [$f3]
    ld l, $00
    add sp, -$08
    ld l, $00
    ldh [$fe], a
    cpl

jr_05d_7499:
    nop
    ret c

    inc bc
    cpl
    nop
    ld hl, sp-$12
    ld l, $00
    add b
    ld hl, sp-$10
    cpl
    nop
    ldh a, [$f5]
    cpl
    nop
    add sp, -$06
    cpl
    nop
    add b
    add sp, -$08
    dec b
    nop
    add sp, $00
    inc de
    nop
    ldh [rP1], a
    inc c
    ld h, b
    ldh [$f8], a
    dec bc
    jr nz, jr_05d_7499

    di
    ld bc, $ee20
    ld a, [c]
    nop
    ld h, b
    db $ed
    rlca
    ld bc, $dd40
    inc b
    nop
    nop
    add b
    add sp, -$08
    inc bc
    nop
    add sp, -$10
    ld [bc], a
    nop
    ldh [rP1], a
    inc bc
    ld h, b
    ldh [$08], a
    ld [bc], a
    ld h, b
    ldh [$f8], a
    dec c
    nop
    add sp, $00
    dec c
    nop
    ldh a, [rP1]
    dec b
    nop
    ret c

    ld hl, sp+$05
    ld h, b
    sub $f0
    nop
    jr nz, @-$28

    ld [$0001], sp
    ld a, [c]
    ldh a, [rSB]
    ld h, b
    ld a, [c]
    ld [$4000], sp
    add b
    db $ec
    ldh a, [$08]
    nop
    db $ec
    ld hl, sp+$09
    nop
    db $ec

jr_05d_750b:
    ld [$600c], sp
    db $ec
    nop
    dec c
    ld h, b
    call c, Call_000_0ef0
    ld b, b
    call c, Call_000_0ff8
    ld b, b
    call c, Call_000_1800
    ld b, b
    call c, Call_000_1908
    ld b, b
    db $e4
    ld hl, sp+$10
    nop
    db $e4

jr_05d_7527:
    nop
    ld de, $d400
    inc bc
    dec b
    ld h, b
    db $f4
    dec bc
    ld [bc], a
    jr nz, jr_05d_7527

    inc bc
    inc bc

jr_05d_7535:
    jr nz, jr_05d_750b

    push af
    add hl, de
    nop
    db $f4
    db $f4
    dec b
    nop
    add b
    ret nc

    ld hl, sp+$0c
    nop
    ret nc

    nop
    dec c
    nop
    rst $10
    ld bc, $0005
    ld hl, sp-$08
    ld [$f820], sp
    ldh a, [rNR23]
    nop
    ldh a, [$ea]
    dec b
    ld b, b
    ret c

    inc c

jr_05d_7559:
    ld bc, $f800
    add sp, $01
    jr nz, jr_05d_7535

    ldh a, [$08]
    ld h, b
    push de
    add sp, $09
    ld h, b
    db $dd
    ld [$2005], a
    db $f4
    inc b
    ld [bc], a
    ld b, b
    ld hl, sp+$0c
    inc bc
    nop
    db $f4
    db $10
    ld [bc], a
    ld h, b
    add b
    ret nc

jr_05d_7579:
    nop
    ld d, $20
    ret nc

    ld hl, sp+$17
    jr nz, jr_05d_7559

    nop
    jr @+$22

    ret c

    ld hl, sp+$19
    jr nz, @-$1e

    db $fc

jr_05d_758a:
    jr @+$22

    ldh [$f4], a
    add hl, de
    jr nz, jr_05d_7579

    ld hl, sp+$05
    nop
    sbc $e3
    dec bc
    ld h, b
    add sp, -$14

jr_05d_759a:
    ld bc, $f800
    db $10

jr_05d_759e:
    jr jr_05d_75a0

jr_05d_75a0:
    ld hl, sp+$00
    ld bc, $f800
    ld hl, sp+$01
    jr nz, @-$7e

    ret nc

jr_05d_75aa:
    ld bc, $2006
    ret nc

jr_05d_75ae:
    ld sp, hl
    rlca
    jr nz, jr_05d_758a

    inc bc
    ld [$d820], sp
    ei
    add hl, bc
    jr nz, jr_05d_759a

jr_05d_75ba:
    nop
    ld a, [bc]
    jr nz, jr_05d_759e

    ld hl, sp+$0b
    jr nz, jr_05d_75aa

jr_05d_75c2:
    dec b
    inc c
    jr nz, jr_05d_75ae

    db $fd
    dec c
    jr nz, jr_05d_75ba

jr_05d_75ca:
    dec b
    ld c, $20
    ldh a, [$fd]
    rrca
    jr nz, jr_05d_75ca

jr_05d_75d2:
    nop
    db $10
    jr nz, @-$06

jr_05d_75d6:
    ld hl, sp+$11
    jr nz, jr_05d_75d2

    db $f4
    dec e
    jr nz, jr_05d_75d6

    ld [bc], a
    dec e
    nop
    ret nc

    db $10
    dec de
    nop
    ret nc

jr_05d_75e6:
    ld [$001b], sp
    ret c

    dec bc
    dec de
    nop
    ret c

    db $10
    dec de
    nop
    ldh [rNR10], a
    dec de
    nop
    ldh [$08], a
    dec de
    nop
    add sp, $10
    dec de
    nop
    ldh a, [rNR10]
    dec de
    nop
    ld hl, sp+$10
    dec de
    nop
    ld hl, sp+$0a
    dec de
    nop
    ret nc

jr_05d_760a:
    ldh a, [rNR31]
    jr nz, jr_05d_75e6

    ldh a, [rNR31]
    jr nz, @-$1e

    ldh a, [rNR31]
    jr nz, @-$16

jr_05d_7616:
    ldh a, [rNR31]
    jr nz, jr_05d_760a

    ldh a, [rNR31]
    jr nz, jr_05d_7616

    ldh a, [rNR31]
    jr nz, @-$2e

jr_05d_7622:
    add sp, $1b
    jr nz, @-$26

    add sp, $1b
    jr nz, jr_05d_760a

    add sp, $1b
    jr nz, jr_05d_7616

jr_05d_762e:
    add sp, $1b
    jr nz, jr_05d_7622

    add sp, $1b
    jr nz, jr_05d_762e

    add sp, $1b
    jr nz, jr_05d_7622

    push af
    dec de
    jr nz, jr_05d_762e

    push af
    dec de
    jr nz, jr_05d_75c2

    ret nc

jr_05d_7643:
    ld [bc], a
    inc c
    jr nz, @-$2e

    ld a, [$200d]
    ret c

    pop af

jr_05d_764c:
    ld d, $00
    ret c

    ld sp, hl
    rla
    nop
    ldh [$f7], a
    ld d, $20
    ldh [$ef], a

jr_05d_7658:
    rla
    jr nz, jr_05d_7643

    rst $30

jr_05d_765c:
    jr @+$22

    add sp, -$11
    add hl, de
    jr nz, @-$0e

    rst $30
    ld a, [de]
    jr nz, jr_05d_764c

    cp $06
    jr nz, jr_05d_7658

    ld bc, $2005
    ld hl, sp-$04
    ld e, $00
    ld hl, sp+$04
    rra
    nop
    ld hl, sp-$0c
    ld e, $20
    ld hl, sp-$14
    rra
    jr nz, @-$0e

    rst $28
    inc c
    nop
    add b
    ret c

    dec bc
    ld [$d820], sp
    inc bc
    add hl, bc
    jr nz, jr_05d_765c

    ld bc, $0018
    ret nc

jr_05d_7690:
    add hl, bc
    add hl, de
    nop
    ldh [rTIMA], a
    inc d
    nop
    ldh [$0d], a
    dec d
    nop
    add sp, $06
    inc c
    nop
    add sp, $0e
    dec c
    nop
    ldh a, [rTIMA]
    ld c, $00
    ldh a, [$0d]
    rrca
    nop
    add sp, $03
    dec c
    jr nz, @-$0e

    cp $0c
    nop
    ld hl, sp+$0c
    inc e
    nop
    ld hl, sp+$04
    inc e
    jr nz, @-$06

    db $fc
    dec e
    jr nz, jr_05d_7690

    add sp, $1b
    nop
    ret c

    add sp, $1b
    nop
    ldh [$e8], a
    dec de
    nop
    add sp, -$18
    dec de
    nop
    ldh a, [$e9]
    dec de
    nop
    ld hl, sp-$17
    dec de
    nop
    ret nc

    ldh a, [rNR31]
    nop
    ret c

    pop af
    dec de
    nop
    ldh [$f2], a

jr_05d_76e1:
    dec de
    nop
    add sp, -$0f
    dec de
    nop
    ldh a, [$f3]
    dec de
    nop
    ld hl, sp-$0d

jr_05d_76ed:
    dec de
    nop
    ret nc

    ld hl, sp+$1b
    nop
    ret c

    ld a, [$001b]
    add sp, -$06
    dec de
    nop
    ldh [$fc], a
    dec de
    nop
    ret nc

    db $10
    dec de
    jr nz, @-$06

    inc d
    rra
    nop
    add b
    ld hl, sp+$00
    rra
    nop
    ret nc

    inc bc
    inc d
    jr nz, jr_05d_76e1

    ei
    dec d
    jr nz, jr_05d_76ed

    add hl, bc
    ld a, [bc]
    jr nz, @-$26

    ld bc, $200b
    ld hl, sp+$0f
    ld e, $00
    ld hl, sp+$17
    rra
    nop
    ld hl, sp+$07
    ld e, $20
    ldh [$08], a
    ld d, $40
    ldh [rNR10], a
    rla
    ld b, b
    add sp, $11
    inc c
    jr nz, @-$16

    add hl, bc
    dec c
    jr nz, @-$0e

    db $10
    ld c, $20
    ldh a, [$08]
    rrca
    jr nz, @-$16

jr_05d_7741:
    ld a, [$6014]
    add sp, -$0e

jr_05d_7746:
    dec d
    ld h, b
    ldh a, [$fa]
    db $10
    jr nz, @-$0e

jr_05d_774d:
    ld a, [c]
    ld de, $f820
    ldh a, [rNR32]
    jr nz, jr_05d_774d

    ld hl, sp+$1c
    nop
    ld hl, sp+$00
    dec e
    nop
    ldh [$f3], a
    dec bc
    ld h, b
    ld hl, sp-$18
    dec e
    jr nz, jr_05d_7741

    di

jr_05d_7766:
    inc c
    nop
    ret c

    ld a, [$0009]
    ldh [$fb], a

jr_05d_776e:
    ld a, [bc]
    ld h, b
    add b
    ret nc

    cp $10
    jr nz, jr_05d_7746

    or $11
    jr nz, @-$26

jr_05d_777a:
    db $f4
    ld [de], a
    ld b, b
    ret c

    db $fc
    inc de
    ld b, b
    add sp, -$0a
    db $10
    jr nz, jr_05d_776e

    xor $11
    jr nz, jr_05d_777a

    ldh a, [rNR23]
    jr nz, jr_05d_7766

    ld b, $14
    nop
    ret c

jr_05d_7792:
    ld c, $15
    nop
    ldh [rIF], a
    db $10
    jr nz, jr_05d_777a

    rlca
    ld de, $e820
    inc b
    ld b, $00
    add sp, $0c
    rlca
    nop
    ldh a, [rSB]
    inc d
    nop
    ldh a, [$09]
    dec d
    nop
    ld hl, sp+$10
    rra
    nop
    ld hl, sp+$01
    ld e, $20
    ld hl, sp+$09
    ld e, $00
    ldh a, [$0c]
    inc b
    nop
    ld hl, sp+$10
    dec b
    jr nz, jr_05d_7792

    ld [bc], a
    ld [de], a
    nop
    ret nc

jr_05d_77c6:
    ld a, [bc]
    inc de
    nop
    ld hl, sp-$07
    rra
    jr nz, jr_05d_77c6

    db $f4
    inc e
    nop
    ld hl, sp-$04
    dec e
    nop
    ld hl, sp-$14
    inc e
    jr nz, @-$0e

    ld hl, sp+$1b
    nop
    ld hl, sp-$1c
    rra
    jr nz, @-$2e

    add sp, $1b
    jr nz, @-$26

    add sp, $1b
    jr nz, @-$1e

    add sp, $1b
    jr nz, @-$2e

    db $10
    dec de
    nop
    add sp, -$03
    dec de
    nop
    ldh a, [$e8]
    ld c, $00
    ldh [$f6], a
    inc d
    nop
    ldh [$fe], a
    dec d
    nop
    add b
    ld b, d
    ld a, b
    ld d, e
    ld a, b
    ld a, h
    ld a, b
    xor l
    ld a, b
    sbc $78
    inc bc
    ld a, c
    jr @+$7b

    dec h
    ld a, c
    ld c, d
    ld a, c
    ld l, e
    ld a, c
    and b
    ld a, c
    db $dd
    ld a, c
    ld d, $7a
    ld b, a
    ld a, d
    adc b
    ld a, d
    ret


    ld a, d
    ld b, $7b
    ld b, a
    ld a, e
    add b
    ld a, e
    xor l
    ld a, e
    ld a, [c]
    ld a, e
    ld b, a
    ld a, h
    sub h
    ld a, h
    pop de
    ld a, h
    ld [de], a
    ld a, l
    ccf
    ld a, l
    ld e, e
    ld a, l
    ld e, e
    ld a, l
    ld e, e
    ld a, l
    ld e, e
    ld a, l
    ld e, e
    ld a, l
    ld e, e
    ld a, l
    ret c

    inc bc
    jr nz, jr_05d_7846

jr_05d_7846:
    ret c

    dec bc
    ld hl, $d000
    inc bc
    ld [hl+], a
    nop
    ret nc

    dec bc
    inc hl
    nop
    add b
    call c, Call_000_2000
    nop
    call c, $2108
    nop
    db $e4
    ld hl, sp+$20
    ld h, b
    db $e4
    ldh a, [rNR42]
    ld h, b
    ret nc

    inc bc
    cpl
    nop
    call nc, Call_000_2200
    nop
    call nc, $2308
    nop
    ldh a, [$f5]
    cpl
    ld h, b
    db $ec
    ld hl, sp+$22
    ld h, b
    db $ec
    ldh a, [rNR44]
    ld h, b
    add b
    ret c

    db $fc
    ld h, $00
    ret c

    inc b
    daa
    nop
    ret c

    inc c
    jr z, jr_05d_7888

jr_05d_7888:
    ldh a, [$f4]
    ld l, $00
    ld hl, sp-$11
    cpl
    nop
    ret nc

    nop
    inc h
    nop
    ret nc

    ld [$0025], sp
    ldh [$f8], a
    add hl, hl
    nop
    ldh [rP1], a
    ld a, [hl+]
    nop
    ldh [$08], a
    dec hl
    nop
    add sp, -$08
    inc l
    nop
    add sp, $00
    dec l
    nop
    add b
    ldh [$f7], a
    ld h, $00
    ldh [rIE], a
    daa
    nop
    ldh [rTAC], a
    jr z, jr_05d_78b9

jr_05d_78b9:
    ld hl, sp-$11
    ld l, $00
    ret c

    ei
    inc h
    nop
    ret c

    inc bc
    dec h
    nop
    add sp, -$0d
    add hl, hl
    nop
    add sp, -$05
    ld a, [hl+]
    nop
    add sp, $03
    dec hl
    nop
    ldh a, [$f3]
    inc l
    nop
    ldh a, [$fb]
    dec l
    nop
    ret nc

    add hl, bc
    cpl
    nop
    add b
    ret nc

    add hl, bc
    ld l, $00
    ret c

    inc b
    ld l, $00
    ldh [rIE], a
    ld l, $00
    add sp, -$07
    ld l, $00
    ld hl, sp-$0b
    add hl, hl
    ld h, b
    ld hl, sp-$13
    ld a, [hl+]
    ld h, b
    ld hl, sp-$1b
    dec hl
    ld h, b
    ldh a, [$f5]
    inc l
    ld h, b
    ldh a, [$ed]
    dec l
    ld h, b
    add b
    ld hl, sp-$11
    ld l, $00
    ldh a, [$f4]
    ld l, $00
    add sp, -$07
    ld l, $00
    ldh [rIE], a
    cpl
    nop
    ret c

    inc b
    cpl
    nop
    add b
    ld hl, sp-$11
    cpl
    nop
    ldh a, [$f4]
    cpl
    nop
    add sp, -$07
    cpl
    nop
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
    db $dd
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
    ld [$1cf8], a
    nop
    ld [$1d00], a
    nop
    ld [c], a
    ld hl, sp+$1b
    nop
    and $08
    ld e, $00
    and $10
    rra
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
    ld [c], a
    ld hl, sp+$0f
    nop
    ld [c], a
    nop
    stop
    ld [c], a
    ld [$0011], sp
    ld [c], a
    db $10
    ld [de], a
    nop
    ld [$13f8], a
    nop
    ld [$1400], a
    nop
    ld [$150c], a
    nop
    add b
    ld [c], a
    nop
    ld d, $00
    ld [$1900], a
    nop
    jp hl


    ld c, $15
    nop
    ld [c], a
    db $10
    jr jr_05d_79ed

jr_05d_79ed:
    ld [c], a
    ld [$0017], sp
    ld [$1a08], a
    nop
    ldh [$e8], a
    inc e
    nop
    ldh [$f0], a
    dec e
    nop
    ret c

    add sp, $1b
    nop
    jp c, $09f3

    nop
    jp c, Jump_000_0afb

    nop
    jp c, Jump_000_0b03

    nop
    call c, Call_000_1ef8
    nop
    call c, Call_000_1f00
    nop
    add b
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

    add sp, $0f
    nop
    ldh [$e8], a
    inc de
    nop
    ldh [$f0], a
    inc d
    nop
    ldh [$fc], a
    dec d
    nop
    jp hl


    or $0c
    nop
    jp hl


    cp $0d
    nop
    jp hl


    ld b, $0e
    nop
    ret nc

    nop
    nop
    nop
    ret nc

    ld [$0001], sp
    add b
    add sp, -$04
    nop
    nop
    add sp, $04
    ld bc, $f000
    db $f4
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
    ret c

    ldh a, [rNR21]
    nop
    ldh [$f0], a
    add hl, de
    nop
    rst $18
    cp $15
    nop
    ldh [$f8], a
    ld a, [de]
    nop
    ret c

    ld hl, sp+$17
    nop
    ret c

    nop
    jr jr_05d_7a7b

jr_05d_7a7b:
    ret nc

    cp $09
    nop
    ret nc

    ld b, $0a
    nop
    ret nc

    ld c, $0b
    nop
    add b
    xor $f3
    inc c
    nop
    push hl
    db $fc
    dec b
    nop
    push hl
    inc b
    ld b, $00
    ret c

    ld hl, sp+$1c
    nop
    ret c

    nop
    dec e
    nop
    call nc, Call_000_1e08
    nop
    call nc, Call_000_1f10
    nop
    ret nc

    ld hl, sp+$1b
    nop
    push hl
    db $f4
    inc b
    nop
    db $ed
    db $f4
    ld [$ec00], sp
    db $ec
    rlca
    nop
    ldh a, [rNR10]
    dec bc
    nop
    xor $fb
    dec c
    nop
    xor $03
    ld c, $00
    ldh a, [rP1]
    add hl, bc
    nop
    ldh a, [$08]
    ld a, [bc]
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
    ret nc

    nop
    stop
    ret nc

    ld [$0011], sp
    ret nc

    db $10
    ld [de], a
    nop
    ret nc

    ld hl, sp+$0f
    nop
    ret c

    ld hl, sp+$13
    nop
    ret c

    nop
    inc d
    nop
    ret c

    inc c
    dec d
    nop
    ld hl, sp-$12
    inc e
    nop
    ld hl, sp-$0a
    dec e
    nop
    db $f4
    cp $1e
    nop
    db $f4
    ld b, $1f
    nop
    ldh a, [$ee]
    dec de
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
    ret nc

    nop
    ld d, $00
    ret c

    nop
    add hl, de
    nop
    rst $10
    ld c, $15
    nop
    ret nc

    ld [$0017], sp
    ret c

    ld [$001a], sp
    ret nc

    db $10
    jr jr_05d_7b2a

jr_05d_7b2a:
    ldh a, [$f6]
    stop
    ldh a, [$fe]
    ld de, $f000
    ld b, $12
    nop
    ldh a, [$ee]
    rrca
    nop
    ld hl, sp-$12
    inc de
    nop
    ld hl, sp-$0a
    inc d
    nop
    ld hl, sp+$02
    dec d
    nop
    add b
    ldh a, [$f6]
    ld d, $00
    ld hl, sp-$0a
    add hl, de
    nop
    rst $30
    inc b
    dec d
    nop
    ldh a, [$fe]
    rla
    nop
    ld hl, sp-$02
    ld a, [de]
    nop
    ldh a, [rTMA]
    jr jr_05d_7b5f

jr_05d_7b5f:
    add sp, -$10
    add hl, bc
    nop
    add sp, -$08
    ld a, [bc]
    nop
    add sp, $00
    dec bc
    nop
    ret c

    ldh a, [$0c]
    nop
    ret c

    ld hl, sp+$0d
    nop
    ret c

    nop
    ld c, $00
    call c, Call_000_0204
    nop
    call c, Call_000_030c
    nop
    add b
    ldh a, [$e8]
    inc e
    nop
    ldh a, [$f0]
    dec e
    nop
    add sp, -$18
    dec de
    nop
    db $ec
    ld hl, sp+$1e
    nop
    db $ec
    nop
    rra
    nop
    ld hl, sp-$10
    inc c
    nop
    ld hl, sp-$08
    dec c
    nop
    ld hl, sp+$00
    ld c, $00
    call c, $0900
    nop
    call c, $0a08
    nop
    call c, $0b10
    nop
    add b
    add sp, -$10
    stop
    add sp, -$08
    ld de, $e800
    nop
    ld [de], a
    nop
    add sp, -$18
    rrca
    nop
    ldh a, [$e8]
    inc de
    nop
    ldh a, [$f0]
    inc d
    nop
    ldh a, [$fc]
    dec d
    nop
    ld a, [c]
    rst $38
    inc c
    nop
    ld a, [c]
    rlca
    dec c
    nop
    ld a, [c]
    rrca
    ld c, $00
    ldh [$f8], a
    inc e
    nop
    ldh [rP1], a
    dec e
    nop
    call c, Call_000_1e08
    nop
    call c, Call_000_1f10
    nop
    ret c

    ld hl, sp+$1b
    nop
    sub $eb
    ld [bc], a
    nop
    sub $f3
    inc bc
    nop
    add b
    add sp, -$10
    ld d, $00
    ldh a, [$f0]
    add hl, de
    nop
    rst $28
    cp $15
    nop
    ldh a, [$f8]
    ld a, [de]
    nop
    add sp, -$08
    rla
    nop
    add sp, $00
    jr jr_05d_7c0a

jr_05d_7c0a:
    ldh a, [rP1]
    inc b
    nop
    ldh a, [$08]
    dec b
    nop
    ldh a, [rNR10]
    ld b, $00
    ld hl, sp+$00
    ld [$f700], sp
    ld hl, sp+$07
    nop
    ret nc

    db $f4
    add hl, bc
    nop
    ret nc

    db $fc
    ld a, [bc]
    nop
    ret nc

    inc b
    dec bc
    nop
    ret c

    nop
    stop
    ret c

    ld [$0011], sp
    ret c

    db $10
    ld [de], a
    nop
    ret c

    ld hl, sp+$0f
    nop
    ldh [$f8], a
    inc de
    nop
    ldh [rP1], a
    inc d
    nop
    ldh [$0c], a
    dec d
    nop
    add b
    ldh a, [rNR10]
    dec bc
    nop
    ldh a, [rP1]
    add hl, bc
    nop
    ldh a, [$08]
    ld a, [bc]
    nop
    ret c

    add sp, $1c
    nop
    ret c

    ldh a, [rNR33]
    nop
    call nc, Call_000_1ef8
    nop
    call nc, Call_000_1f00
    nop
    ret nc

    add sp, $1b
    nop
    ret c

    nop
    ld d, $00
    ldh [rP1], a
    add hl, de
    nop
    rst $18
    ld c, $15
    nop
    ret c

    ld [$0017], sp
    ldh [$08], a
    ld a, [de]
    nop
    ret c

    db $10
    jr jr_05d_7c7f

jr_05d_7c7f:
    ldh a, [$e8]
    inc c
    nop
    ldh a, [$f0]
    dec c
    nop
    ldh a, [$f8]
    ld c, $00
    add sp, -$08
    ld [bc], a
    nop
    add sp, $00
    inc bc
    nop
    add b
    ldh [$f5], a
    add hl, bc
    nop
    ldh [$fd], a
    ld a, [bc]
    nop
    ldh [rTIMA], a
    dec bc
    nop
    ret nc

    nop
    stop
    ret nc

    ld [$0011], sp
    ret nc

    db $10
    ld [de], a
    nop
    ret nc

    ld hl, sp+$0f
    nop
    ret c

    ld hl, sp+$13
    nop
    ret c

    nop
    inc d
    nop
    ret c

    inc c
    dec d
    nop
    db $f4
    xor $1c
    nop
    db $f4
    or $1d
    nop
    ldh a, [$fe]
    ld e, $00
    ldh a, [rTMA]
    rra
    nop
    db $ec
    xor $1b
    nop
    add b
    ld [c], a
    di
    inc c
    nop
    ld [c], a
    ei
    dec c
    nop
    ld [c], a
    inc bc
    ld c, $00
    ret nc

    nop
    ld d, $00
    ret c

    nop
    add hl, de
    nop
    rst $10
    ld c, $15
    nop
    ret nc

    ld [$0017], sp
    ret c

    ld [$001a], sp
    ret nc

    db $10
    jr jr_05d_7cf5

jr_05d_7cf5:
    db $ec
    or $10
    nop
    db $ec
    cp $11
    nop
    db $ec
    ld b, $12
    nop
    db $ec
    xor $0f
    nop
    db $f4
    xor $13
    nop
    db $f4
    or $14
    nop
    db $f4
    ld [bc], a
    dec d
    nop
    add b
    db $ec
    xor $16
    nop
    db $f4
    xor $19
    nop
    di
    db $fc
    dec d
    nop
    db $ec
    or $17
    nop
    db $f4
    or $1a
    nop
    db $ec
    cp $18
    nop
    ldh [$fd], a
    nop
    nop
    ldh [rTIMA], a
    ld bc, $d800
    ldh a, [$0c]
    nop
    ret c

    ld hl, sp+$0d
    nop
    ret c

    nop
    ld c, $00
    add b
    ldh [$fd], a
    ld [bc], a
    nop
    ldh [rTIMA], a
    inc bc
    nop
    db $d4, $fb, $00
    nop
    call nc, $0103
    nop
    db $f4
    add sp, $0c
    nop
    db $f4
    ldh a, [$0d]
    nop
    db $f4
    ld hl, sp+$0e
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
